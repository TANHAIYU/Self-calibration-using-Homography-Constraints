# Install script for directory: /home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen

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
   "/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/Array;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/Cholesky;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/CholmodSupport;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/Core;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/Dense;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/Eigen;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/Eigen2Support;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/Eigenvalues;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/Geometry;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/Householder;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/IterativeLinearSolvers;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/Jacobi;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/LU;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/LeastSquares;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/MetisSupport;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/OrderingMethods;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/PaStiXSupport;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/PardisoSupport;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/QR;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/QtAlignedMalloc;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/SPQRSupport;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/SVD;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/Sparse;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/SparseCholesky;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/SparseCore;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/SparseLU;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/SparseQR;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/StdDeque;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/StdList;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/StdVector;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/SuperLUSupport;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/UmfPackSupport")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen" TYPE FILE FILES
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/Array"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/Cholesky"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/CholmodSupport"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/Core"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/Dense"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/Eigen"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/Eigen2Support"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/Eigenvalues"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/Geometry"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/Householder"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/IterativeLinearSolvers"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/Jacobi"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/LU"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/LeastSquares"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/MetisSupport"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/OrderingMethods"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/PaStiXSupport"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/PardisoSupport"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/QR"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/QtAlignedMalloc"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/SPQRSupport"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/SVD"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/Sparse"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/SparseCholesky"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/SparseCore"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/SparseLU"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/SparseQR"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/StdDeque"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/StdList"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/StdVector"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/SuperLUSupport"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/UmfPackSupport"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/haiyutan/planecalib/cmake-build-debug/3rdparty/Eigen/Debug/src/Eigen-build/Eigen/src/cmake_install.cmake")

endif()

