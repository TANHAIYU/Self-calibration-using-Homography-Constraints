/*
 * SlamKeyFrame.cpp
 *
 *  Created on: 8.2.2014
 *      Author: dan
 */

#include "Keyframe.h"

#include <opencv2/imgproc.hpp>
#include <opencv2/features2d.hpp>

#include "Profiler.h"
#include "Map.h"
#include "flags.h"
#include "cvutils.h"
#include "FeatureIndexer.h"

namespace planecalib {

const Feature &FeatureMatch::getFeature() const 
{
	return mSourceMeasurement->getFeature(); 
}

///////////////////////////////////
// TrackingFrame class
///////////////////////////////////
TrackingFrame::TrackingFrame()  //构造函数
{
}

TrackingFrame::~TrackingFrame()  //析沟函数
{
}

void TrackingFrame::initImageData(const cv::Mat3b &imageColor, const cv::Mat1b &imageGray)
//初始化图片数据生成ImagePyramid
{
	mColorImage = imageColor;

	mOriginalPyramid.create(imageGray, FLAGS_PyramidMaxTopLevelWidth);

	//SBI
	mSBI = mOriginalPyramid.getTopLevel();
	while (mSBI.cols > FLAGS_SBIMaxWidth)
	{
		cv::Mat1b temp;
		cv::pyrDown(mSBI, temp);
		mSBI = temp;
	}

  //SBI derivatives SBI求导数
	cvutils::CalculateDerivatives(mSBI, mSBIdx, mSBIdy);
}

Eigen::Vector2f TrackingFrame::warpKey2Img(const Eigen::Vector2f &keyp) //求出点在另一帧的对应点
{
	return eutils::HomographyPoint(mWarpHomography, keyp);
}

void TrackingFrame::createKeypoints(const Eigen::Matrix3fr &warpOpticalHomography,
                                    const CameraModel &camera,
                                    const Eigen::Matrix3fr &warpPose)
//在Keyframe生成Pyramid并且生成Features与Descriptor
{
	ProfileSection s("createWarpKeypoints");
	cv::Mat1b warpedImage;
	mWarpOpticalHomography = warpOpticalHomography;
  mWarpCamera = camera; //好像没用到？？
	mWarpPose = warpPose;

  const Eigen::Matrix3fr T = eutils::GetTranslateHomography(-camera.getPrincipalPoint());  //TOD：What is T&Ti
	const Eigen::Matrix3fr Ti = eutils::GetTranslateHomography(camera.getPrincipalPoint());

	mWarpHomography = Ti*warpPose*T;
	//Warp
	warpedImage.create(mOriginalPyramid[0].size());
	//cv::remap(mOriginalPyramid[0], warpedImage, map, cv::noArray(), cv::INTER_LINEAR, cv::BORDER_CONSTANT, 0);
	cv::warpPerspective(mOriginalPyramid[0], warpedImage, eutils::ToCV(mWarpHomography), mOriginalPyramid[0].size(), cv::WARP_INVERSE_MAP, cv::BORDER_CONSTANT, 0);

	mWarpedPyramid.create(warpedImage, FLAGS_PyramidMaxTopLevelWidth);

  Keyframe::CreateKeypoints(mWarpedPyramid, mWarpedKeypoints, mWarpedDescriptorBuffers, mWarpedDescriptors);
  //在Keyframe生成Pyramid并且生成Features与Descriptor
}

void TrackingFrame::createMatchMap()  //将在mMatches的每个match的（&match.getFeature(),&match）这个pair加入mMatchMap
{
	mMatchMap.clear();
	for (auto &match : mMatches)
		mMatchMap.insert(std::make_pair(&match.getFeature(), &match));
}

///////////////////////////////////
// Keyframe class
///////////////////////////////////
Keyframe::Keyframe() :
		mKeypoints(new std::vector<std::vector<cv::KeyPoint>>())
{
}

Keyframe::Keyframe(const Keyframe &copyFrom) :
		mTimestamp(copyFrom.mTimestamp), mSBI(copyFrom.mSBI), mSBIdx(copyFrom.mSBIdx), mSBIdy(copyFrom.mSBIdy),
		mColorImage(copyFrom.mColorImage), mPyramid(copyFrom.mPyramid), mKeypoints(copyFrom.mKeypoints),
		mPose(copyFrom.mPose), mMeasurements(copyFrom.mMeasurements)
{
}

Keyframe::~Keyframe()
{
}

void Keyframe::init(const cv::Mat3b &imageColor, const cv::Mat1b &imageGray)
//初始化Keyrame 将image生成imagePyramid 并生成关键点
{
	mColorImage = imageColor;
	
	mPyramid.create(imageGray, FLAGS_PyramidMaxTopLevelWidth);

	//SBI
	mSBI = mPyramid.getTopLevel();
	while(mSBI.cols > FLAGS_SBIMaxWidth)
	{
		cv::Mat1b temp;
		cv::pyrDown(mSBI,temp);
		mSBI = temp;
	}

	//SBI derivatives
	cvutils::CalculateDerivatives(mSBI, mSBIdx, mSBIdy);

	createKeypoints();
}

void Keyframe::init(const TrackingFrame &other)
//对于TrackinFrame生成imagePyramid 并生成关键点 并stamp time
{
	mColorImage = other.getColorImage();
	mPyramid = other.getOriginalPyramid();
	mSBI = other.getSBI();
	mSBIdx = other.getSBIdx();
	mSBIdy = other.getSBIdy();
	mTimestamp = other.getTimestamp();

	createKeypoints();
}

void Keyframe::CreateKeypoints(const ImagePyramid1b &pyramid,
                               std::vector<std::vector<cv::KeyPoint>> &keypoints,
                               std::vector<cv::Mat1b> &descriptorBuffers, std::vector<EigenDescriptorMap> &descriptors)
//输入ImagePyramid 输出keypoints descriptorBuffers 描述子
{
	keypoints.clear();
	descriptorBuffers.clear();
	descriptors.clear();

	//Extract key points
	keypoints.resize(pyramid.getOctaveCount());
	descriptorBuffers.resize(pyramid.getOctaveCount());
	descriptors.reserve(pyramid.getOctaveCount());

    //Different opencv version:
        cv::Ptr<cv::ORB> orb = cv::ORB::create(2000, 2, 1);
	    orb->setEdgeThreshold(0);
    //cv::ORB orb(2000, 2, 1, 0);

	for (int octave = 0; octave < pyramid.getOctaveCount(); octave++)
	{
		const int scale = 1 << octave;

		//std::vector<cv::KeyPoint> keypointsAll;
		std::vector<cv::KeyPoint> &keypointsAll = keypoints[octave];
    cv::Mat1b &descriptorsAll = descriptorBuffers[octave];

		//ORB features
        //Different opencv version:
    orb->detectAndCompute(pyramid[octave], cv::noArray(), keypointsAll, descriptorsAll);
    //对所有ImagePyramid图层进行提取ORB Features
        //orb.detect(pyramid[octave], keypointsAll);
        //orb.compute(pyramid[octave], keypointsAll, descriptorsAll);

        //Fix scale features
    for (int i = 0; i < static_cast<int>(keypointsAll.size()); i++)
		{
			auto &keypoint = keypointsAll[i];
			void *descriptor = &descriptorsAll(i, 0);

			keypoint.octave = octave;
			keypoint.pt = scale*keypoint.pt;
			keypoint.size *= scale;
		}

		if (descriptorBuffers[octave].empty())
			descriptorBuffers[octave].create(1, 32);

		//Eigen
    //TODO: WHAT THE FUCK？？？
    descriptors.push_back(EigenDescriptorMap(descriptorBuffers[octave].data,
                                             descriptorBuffers[octave].rows,
                                             descriptorBuffers[octave].cols));
	}
}

void Keyframe::createKeypoints()   //TODO：对所有的产生Keypoints
{
	CreateKeypoints(mPyramid, *mKeypoints, mDescriptors, mDescriptorsEigen);
}

void Keyframe::freeSpace()     //释放空间
{
	mPyramid.release();
	mColorImage.release();
	mSBI.release();
	mSBIdx.release();
	mSBIdy.release();
}

std::unique_ptr<Keyframe> Keyframe::copyWithoutFeatures() const
{
	std::unique_ptr<Keyframe> newFrame(new Keyframe());

	newFrame->mTimestamp = mTimestamp;
	newFrame->mSBI = mSBI;
	newFrame->mSBIdx = mSBIdx;
	newFrame->mSBIdy = mSBIdy;
	newFrame->mColorImage = mColorImage;
	newFrame->mPyramid = mPyramid;
	newFrame->mKeypoints = mKeypoints;
	
	return newFrame;
}

void Keyframe::removeMeasurement(FeatureMeasurement *m)
{
	auto it = mMeasurements.begin(), end = mMeasurements.end();
	for (; it != end; ++it)
	{
		if (*it == m)
			break; //Found!
	}

	if (it != end)
	{
		mMeasurements.erase(it);
	}
	else
	{
		MYAPP_LOG << "Ahhh!!!! Attempted to remove a measurement that is not in the frame.\n";
	}
}


}
