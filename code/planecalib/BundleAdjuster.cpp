#include "BundleAdjuster.h"
#include "gflags/gflags.h"
#include <opencv2/calib3d.hpp>
#include <ceres/ceres.h>
#include <mutex>
#include "shared_mutex.h"
#include "Profiler.h"
#include "CeresParametrization.h"
#include "PoseTracker.h"
#include "CameraDistortionModel.h"
#include "CameraModelCeres.h"

namespace planecalib
{

////////////////////////////////////////////////////////////////////////////////////////////////////
// P0Regularizer class

class P0Regularizer
{
public:
  P0Regularizer(const double scale, const Eigen::Vector2d &ref) :
    mScale(scale), mRef(ref)
  {
  }

  EIGEN_MAKE_ALIGNED_OPERATOR_NEW

  static const int kResidualCount = 2;

  template<class T>
  bool operator() (const T * const _p0, T *residuals) const;

protected:
  const Eigen::Vector2d mRef;
  const double mScale;
};

template<class T>
bool P0Regularizer::operator() (const T * const _p0, T *residuals) const
{
  T scale(mScale);

  residuals[0] = scale*(T(mRef[0]) - T(_p0[0]));
  residuals[1] = scale*(T(mRef[1]) - T(_p0[1]));

  return true;
}



// ReprojectionError class
class ReprojectionError
{
public:
  typedef CameraModel::TDistortionModel::TParamVector TDistortionParamVector;

  ReprojectionError(const FeatureMeasurement &m):
    ReprojectionError(m.getOctave(), m.getPosition())
  {
  }

  ReprojectionError(const int octave, const Eigen::Vector2f &imgPoint) :
    mScale(1 << octave), mImgPoint(imgPoint)
  {
  }

  static const int kResidualCount = 2;

  template<class T>
  bool operator() (const T * const _p0, const T * const _distortion, const T * const _homography, const T * const _x, T *residuals) const;

  bool operator() (const Eigen::Vector2d &p0, const TDistortionParamVector &distortion, const Eigen::Matrix3dr &homography, const Eigen::Vector2d &x, Eigen::Vector2d &residuals) const
  {
    return (*this)(p0.data(), distortion.data(), homography.data(), x.data(), residuals.data());
  }

protected:
  const int mScale;
  const Eigen::Vector2f mImgPoint;
};

template<class T>
bool ReprojectionError::operator () (const T * const _p0, const T * const _distortion,
                                     const T * const _homography, const T * const _x, T *residuals) const
{
  Eigen::Map<Eigen::Matrix<T, TDistortionParamVector::RowsAtCompileTime, 1>> distortion((T*)_distortion);
  Eigen::Map<Eigen::Matrix<T, 3, 3, Eigen::RowMajor>> homography((T*)_homography);
  Eigen::Map<Eigen::Matrix<T, 2, 1>> x((T*)_x);
  Eigen::Map<Eigen::Matrix<T, 2, 1>> p0((T*)_p0);


  //单应性
  //const Eigen::Matrix<T, 3, 1> p = homography*x.homogeneous();
  Eigen::Matrix<T, 3, 1> xh;
  xh[0] = homography(0, 0) * x[0] + homography(0, 1) * x[1] + homography(0, 2);
  xh[1] = homography(1, 0) * x[0] + homography(1, 1) * x[1] + homography(1, 2);
  xh[2] = homography(2, 0) * x[0] + homography(2, 1) * x[1] + homography(2, 2);

  //Camera model
  const Eigen::Matrix<T, 2, 1> focal(T(1), T(1));
  Eigen::Matrix<T, 2, 1> p;
  CameraModel::ProjectFromWorld(p0, distortion, focal, xh, p);

  //Residuals 残差
  residuals[0] = (T(mImgPoint.x()) - p[0]) / T(mScale);
  residuals[1] = (T(mImgPoint.y()) - p[1]) / T(mScale);
  return true;
}


// BundleAdjusterclass
void BundleAdjuster::setCamera(CameraModel *camera)
{
  mCamera = camera;

  mParamsPrincipalPoint = mCamera->getPrincipalPoint().cast<double>();
  mParamsDistortion = mCamera->getDistortionModel().getParams();
}

void BundleAdjuster::addFrameToAdjust(Keyframe &newFrame)
{
  //Add
  auto itNewFrame=mFramesToAdjust.insert(&newFrame);
  if(itNewFrame.second)  //map<T>::insert returns a pair; you'd know this if you looked up the documentation for that function.
                         // The first member variable in the pair stores an iterator pointing to the element that was just inserted.
                         //The second member variable stores true if the element was actually inserted (and otherwise false).
                         // .second accesses the second member of that pair.
  {
    //New frame!  Add features too
    for(auto itM=newFrame.getMeasurements().begin(),endM=newFrame.getMeasurements().end(); itM!=endM; ++itM)
    {
      Feature &feature = (*itM)->getFeature();

      //我们至少需要两次测量才能进行BA
      if(feature.getMeasurements().size() > 1)
      {
        mFeaturesToAdjust.insert(&feature);
      }
    }
  }
}

bool BundleAdjuster::isInlier(const FeatureMeasurement &measurement)
{
  Eigen::Vector2d residuals;
  ReprojectionError err(measurement);
  err(mParamsPrincipalPoint, mParamsDistortion, measurement.getKeyframe().mParamsPose, measurement.getFeature().mParams, residuals);

  return residuals.squaredNorm() <= static_cast<double>(mOutlierPixelThresholdSq);
}

void BundleAdjuster::getInliers(int &inlierCount, std::vector<FeatureMeasurement *> &outliers)
{
  inlierCount = 0;
  outliers.clear();
  for(auto &mp : mMeasurementsInProblem)
  {
    auto &m = *mp;
    if (isInlier(m))
      inlierCount++;
    else
      outliers.push_back(mp);
  }
}

bool BundleAdjuster::bundleAdjust()
{
  ProfileSection s("bundleAdjust");
  //如果待BA的Frame为0，则返回True
  if (mFramesToAdjust.empty())
    return true;

  //BA ceres problem
  ceres::Solver::Options options;
  if (mOnlyDistortion)
  {
    options.linear_solver_type = ceres::DENSE_QR;
  }
  else
  {
    options.linear_solver_type = ceres::SPARSE_SCHUR;
    //options.linear_solver_type = ceres::DENSE_QR;
    options.preconditioner_type = ceres::SCHUR_JACOBI;
  }


  //options.dense_linear_algebra_library_type = ceres::LAPACK;
  //options.sparse_linear_algebra_library_type = ceres::SUITE_SPARSE;
  options.max_num_iterations = 500;
  options.num_threads = 4;
  //options.num_linear_solver_threads = 4;
  options.logging_type = ceres::SILENT;

  options.minimizer_progress_to_stdout = false;
  options.linear_solver_ordering.reset(new ceres::ParameterBlockOrdering());
  ceres::Problem problem;

  //Read-lock to prepare ceres problem 读锁以准备小问题
  {
    ProfileSection sconstruct("construct");

    shared_lock<shared_mutex> lockRead(mMap->getMutex(), std::defer_lock);
    if (mUseLocks)
      lockRead.lock();

    //assert(mMap->getKeyframes().size() >= 2);
    assert(!mFramesToAdjust.empty());
    assert(!mFeaturesToAdjust.empty());

    //Prepare poses 准备poses
    for (auto &framep : mFramesToAdjust)
    {
      auto &frame = *framep;

      //Create and init params
      auto &params = frame.mParamsPose;

      //Is new, create
      params = frame.getPose().cast<double>();

      //Add pose as parameter block 将poses添加为参数块
      problem.AddParameterBlock(params.data(), 9);
      //problem.AddParameterBlock(params.data(), 9, new Fixed9DNormParametrization(1));
      options.linear_solver_ordering->AddElementToGroup(params.data(), 0);
      if (&frame == mMap->getKeyframes().begin()->get())
      {
        //First key frame in region, scale fixed 该区域的第一个关键帧，比例固定
        //problem.SetParameterBlockConstant(params.data());
      }
      else if (mOnlyDistortion)
      {
        problem.SetParameterBlockConstant(params.data());
      }

    }

    //Prepare features  准备features
    for (auto &featurep : mFeaturesToAdjust)
    {
      auto &feature = *featurep;

      //Create and init params 创建和初始化参数
      auto &params = feature.mParams;

      //Is new, create
      params = feature.getPosition().cast<double>();

      //Add feature as parameter block 将特征添加为参数块
      problem.AddParameterBlock(params.data(), 2);
      if (mOnlyDistortion)
        problem.SetParameterBlockConstant(params.data());
      options.linear_solver_ordering->AddElementToGroup(params.data(), 0);
    }

    //Distortion params 失真参数
    problem.AddParameterBlock(mParamsPrincipalPoint.data(), 2);
    options.linear_solver_ordering->AddElementToGroup(mParamsPrincipalPoint.data(), 0);
    if (mOnlyDistortion)
      problem.SetParameterBlockConstant(mParamsPrincipalPoint.data());

    problem.AddParameterBlock(mParamsDistortion.data(), TDistortionParamVector::SizeAtCompileTime);
    //problem.SetParameterBlockConstant(mParamsDistortion.data());
    options.linear_solver_ordering->AddElementToGroup(mParamsDistortion.data(), 0);

    //Gather measurements 收集测量
    mMeasurementsInProblem.clear();
    mMeasurementsInProblem.reserve(4 * mFeaturesToAdjust.size());
    for (auto &featurep : mFeaturesToAdjust)
    {
      auto &feature = *featurep;

      if (feature.getMeasurements().size() <= 1)
        continue; //如果只有一项测量则跳过

      //Add all measurements as residual blocks  将所有测量值添加为残差块
      for (auto &mPtr : feature.getMeasurements())
      {
        FeatureMeasurement &m = *mPtr;
        mMeasurementsInProblem.push_back(&m);
      }
    }


    //Add measurements to problem  向问题添加度量
    for (auto mp : mMeasurementsInProblem)
    {
      auto &m = *mp;

      Feature &feature = m.getFeature();
      auto &featureParams = feature.mParams;

      Keyframe &frame = m.getKeyframe();
      auto &poseParams = frame.mParamsPose;

      //Is this frame outside of bundle adjustment? 该frame不在BA范围内吗？
      // TODO： 下面的if是我加上去的 有问题就注释掉
      //if (mFramesToAdjust.find(&frame) == mFramesToAdjust.end())
      //{
        //problem.AddParameterBlock(poseParams.data(), 9);
        //problem.SetParameterBlockConstant(poseParams.data());
        //options.linear_solver_ordering->AddElementToGroup(poseParams.data(), 1);
      //}

      ceres::LossFunction *lossFunc_i = NULL;
      lossFunc_i = new ceres::CauchyLoss(mOutlierPixelThreshold);

      problem.AddResidualBlock(
        new ceres::AutoDiffCostFunction<ReprojectionError, ReprojectionError::kResidualCount, 2, TDistortionParamVector::SizeAtCompileTime, 9, 2>(
        new ReprojectionError(m)),
        lossFunc_i, mParamsPrincipalPoint.data(), mParamsDistortion.data(), poseParams.data(), featureParams.data());
    }

    //Add p0 regularizer 添加p0正则化器
    problem.AddResidualBlock(
      new ceres::AutoDiffCostFunction<P0Regularizer, P0Regularizer::kResidualCount, 2>(
      new P0Regularizer(1, mParamsPrincipalPoint)), NULL, mParamsPrincipalPoint.data());
  }

  //Get inliers before
  int inlierCount;
  std::vector<FeatureMeasurement *> outliers;
  getInliers(inlierCount, outliers);
  MYAPP_LOG << "BA inlier count before: " << inlierCount << " / " << mMeasurementsInProblem.size() << "\n";

  //No locks while ceres runs ceres运行时没有锁
  //Non-linear minimization! 非线性最小化！
  ceres::Solver::Summary summary;
  {
    ProfileSection ssolve("solve");
    ceres::Solve(options, &problem, &summary);
  }

  MYAPP_LOG << "BA report:\n" << summary.FullReport();
  MYAPP_LOG << "P0: " << mParamsPrincipalPoint.transpose() << "\n";
  MYAPP_LOG << "Distortion coefficients: " << mParamsDistortion.transpose() << "\n";

  if (summary.termination_type == ceres::FAILURE)
  {
    MYAPP_LOG << "\n\nBA solver failed!!!\n\n"; //<< summary.FullReport();
    return false;
  }

  getInliers(inlierCount, outliers);
  MYAPP_LOG << "BA inlier count after: " << inlierCount << " / " << mMeasurementsInProblem.size() << "\n";

  //Update camera 更新相机
  mCamera->getPrincipalPoint() = mParamsPrincipalPoint.cast<float>();
  mCamera->getDistortionModel().setParams(mParamsDistortion);

  //更新pose
  for (auto &framep : mFramesToAdjust)
  {
    auto &frame = *framep;
    auto &params = frame.mParamsPose;

    frame.setPose(params.cast<float>());
  }

  //更新positions
  for (auto &featurep : mFeaturesToAdjust)
  {
    auto &feature = *featurep;
    auto &params = feature.mParams;

    feature.setPosition(params.cast<float>());
  }

  //移除outliers
  for (auto mp : outliers)
  {
    auto &frameVec = mp->getKeyframe().getMeasurements();
    for (auto it = frameVec.begin(), end = frameVec.end(); it != end; ++it)
    {
      if (*it == mp)
      {
        frameVec.erase(it);
        break;
      }
    }

    auto &featuresVec = mp->getFeature().getMeasurements();
    for (auto it = featuresVec.begin(), end = featuresVec.end(); it != end; ++it)
    {
      if (it->get() == mp)
      {
        featuresVec.erase(it);
        break;
      }
    }
  }
  MYAPP_LOG << "Removed " << outliers.size() << " outliers\n";

  return true;
}

}
