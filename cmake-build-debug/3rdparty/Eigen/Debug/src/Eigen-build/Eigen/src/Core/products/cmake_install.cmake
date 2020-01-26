# Install script for directory: /home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/src/Core/products

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
   "/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/src/Core/products/CoeffBasedProduct.h;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/src/Core/products/GeneralBlockPanelKernel.h;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/src/Core/products/GeneralMatrixMatrix.h;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/src/Core/products/GeneralMatrixMatrixTriangular.h;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/src/Core/products/GeneralMatrixMatrixTriangular_MKL.h;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/src/Core/products/GeneralMatrixMatrix_MKL.h;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/src/Core/products/GeneralMatrixVector.h;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/src/Core/products/GeneralMatrixVector_MKL.h;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/src/Core/products/Parallelizer.h;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/src/Core/products/SelfadjointMatrixMatrix.h;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/src/Core/products/SelfadjointMatrixMatrix_MKL.h;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/src/Core/products/SelfadjointMatrixVector.h;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/src/Core/products/SelfadjointMatrixVector_MKL.h;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/src/Core/products/SelfadjointProduct.h;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/src/Core/products/SelfadjointRank2Update.h;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/src/Core/products/TriangularMatrixMatrix.h;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/src/Core/products/TriangularMatrixMatrix_MKL.h;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/src/Core/products/TriangularMatrixVector.h;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/src/Core/products/TriangularMatrixVector_MKL.h;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/src/Core/products/TriangularSolverMatrix.h;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/src/Core/products/TriangularSolverMatrix_MKL.h;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/src/Core/products/TriangularSolverVector.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/src/Core/products" TYPE FILE FILES
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/src/Core/products/CoeffBasedProduct.h"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/src/Core/products/GeneralBlockPanelKernel.h"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/src/Core/products/GeneralMatrixMatrix.h"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/src/Core/products/GeneralMatrixMatrixTriangular.h"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/src/Core/products/GeneralMatrixMatrixTriangular_MKL.h"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/src/Core/products/GeneralMatrixMatrix_MKL.h"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/src/Core/products/GeneralMatrixVector.h"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/src/Core/products/GeneralMatrixVector_MKL.h"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/src/Core/products/Parallelizer.h"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/src/Core/products/SelfadjointMatrixMatrix.h"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/src/Core/products/SelfadjointMatrixMatrix_MKL.h"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/src/Core/products/SelfadjointMatrixVector.h"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/src/Core/products/SelfadjointMatrixVector_MKL.h"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/src/Core/products/SelfadjointProduct.h"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/src/Core/products/SelfadjointRank2Update.h"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/src/Core/products/TriangularMatrixMatrix.h"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/src/Core/products/TriangularMatrixMatrix_MKL.h"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/src/Core/products/TriangularMatrixVector.h"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/src/Core/products/TriangularMatrixVector_MKL.h"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/src/Core/products/TriangularSolverMatrix.h"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/src/Core/products/TriangularSolverMatrix_MKL.h"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/src/Core/products/TriangularSolverVector.h"
    )
endif()

