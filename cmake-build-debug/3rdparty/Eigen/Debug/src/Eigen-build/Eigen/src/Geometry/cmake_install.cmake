# Install script for directory: /home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/src/Geometry

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/src/Geometry/AlignedBox.h;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/src/Geometry/AngleAxis.h;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/src/Geometry/EulerAngles.h;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/src/Geometry/Homogeneous.h;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/src/Geometry/Hyperplane.h;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/src/Geometry/OrthoMethods.h;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/src/Geometry/ParametrizedLine.h;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/src/Geometry/Quaternion.h;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/src/Geometry/Rotation2D.h;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/src/Geometry/RotationBase.h;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/src/Geometry/Scaling.h;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/src/Geometry/Transform.h;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/src/Geometry/Translation.h;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/src/Geometry/Umeyama.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/src/Geometry" TYPE FILE FILES
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/src/Geometry/AlignedBox.h"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/src/Geometry/AngleAxis.h"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/src/Geometry/EulerAngles.h"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/src/Geometry/Homogeneous.h"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/src/Geometry/Hyperplane.h"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/src/Geometry/OrthoMethods.h"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/src/Geometry/ParametrizedLine.h"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/src/Geometry/Quaternion.h"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/src/Geometry/Rotation2D.h"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/src/Geometry/RotationBase.h"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/src/Geometry/Scaling.h"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/src/Geometry/Transform.h"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/src/Geometry/Translation.h"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/src/Geometry/Umeyama.h"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/haiyutan/planecalib/cmake-build-debug/3rdparty/Eigen/Debug/src/Eigen-build/Eigen/src/Geometry/arch/cmake_install.cmake")

endif()

