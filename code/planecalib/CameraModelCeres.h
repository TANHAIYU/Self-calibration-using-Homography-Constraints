#ifndef CAMERAMODELCERES_H_
#define CAMERAMODELCERES_H_

#include "CameraModel.h"
#include <ceres/ceres.h>
//#include <ceres/jet.h>

namespace planecalib
{

template<class TDistortionModel>
void CameraModel_<TDistortionModel>::projectFromWorldJacobian(const Eigen::Vector3f &xc, Eigen::Vector3f &ujac, Eigen::Vector3f &vjac) const
{
	typedef ceres::Jet<double, 3> TJet;
  Eigen::Matrix<TJet, 3, 1> x(TJet(static_cast<double>(xc[0]) , 0), TJet(static_cast<double>(xc[1]), 1),
      TJet(static_cast<double>(xc[2]), 2));

	Eigen::Matrix<TJet, 2, 1> p;

	projectFromWorld(x,p);
  ujac[0] = static_cast<float>(p[0].v[0]);
  ujac[1] = static_cast<float>(p[0].v[1]) ;
  ujac[2] = static_cast<float>(p[0].v[2]);
  vjac[0] = static_cast<float>(p[1].v[0]);
  vjac[1] = static_cast<float>(p[1].v[1]);
  vjac[2] = static_cast<float>(p[1].v[2]);
}

}

#endif /* CAMERAMODELCERES_H_ */
