# Install script for directory: /home/haiyutan/planecalib/3rdparty/eigen-3.2.2/unsupported/Eigen

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
   "/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/unsupported/Eigen/AdolcForward;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/unsupported/Eigen/BVH;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/unsupported/Eigen/IterativeSolvers;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/unsupported/Eigen/MatrixFunctions;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/unsupported/Eigen/MoreVectorization;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/unsupported/Eigen/AutoDiff;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/unsupported/Eigen/AlignedVector3;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/unsupported/Eigen/Polynomials;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/unsupported/Eigen/FFT;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/unsupported/Eigen/NonLinearOptimization;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/unsupported/Eigen/SparseExtra;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/unsupported/Eigen/IterativeSolvers;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/unsupported/Eigen/NumericalDiff;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/unsupported/Eigen/Skyline;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/unsupported/Eigen/MPRealSupport;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/unsupported/Eigen/OpenGLSupport;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/unsupported/Eigen/KroneckerProduct;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/unsupported/Eigen/Splines;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/unsupported/Eigen/LevenbergMarquardt")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/unsupported/Eigen" TYPE FILE FILES
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/unsupported/Eigen/AdolcForward"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/unsupported/Eigen/BVH"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/unsupported/Eigen/IterativeSolvers"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/unsupported/Eigen/MatrixFunctions"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/unsupported/Eigen/MoreVectorization"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/unsupported/Eigen/AutoDiff"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/unsupported/Eigen/AlignedVector3"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/unsupported/Eigen/Polynomials"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/unsupported/Eigen/FFT"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/unsupported/Eigen/NonLinearOptimization"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/unsupported/Eigen/SparseExtra"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/unsupported/Eigen/IterativeSolvers"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/unsupported/Eigen/NumericalDiff"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/unsupported/Eigen/Skyline"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/unsupported/Eigen/MPRealSupport"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/unsupported/Eigen/OpenGLSupport"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/unsupported/Eigen/KroneckerProduct"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/unsupported/Eigen/Splines"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/unsupported/Eigen/LevenbergMarquardt"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/haiyutan/planecalib/cmake-build-debug/3rdparty/Eigen/Debug/src/Eigen-build/unsupported/Eigen/src/cmake_install.cmake")

endif()

