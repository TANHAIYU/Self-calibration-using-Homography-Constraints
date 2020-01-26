# Install script for directory: /home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/src/SparseLU

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
   "/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/src/SparseLU/SparseLU.h;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/src/SparseLU/SparseLUImpl.h;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/src/SparseLU/SparseLU_Memory.h;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/src/SparseLU/SparseLU_Structs.h;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/src/SparseLU/SparseLU_SupernodalMatrix.h;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/src/SparseLU/SparseLU_Utils.h;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/src/SparseLU/SparseLU_column_bmod.h;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/src/SparseLU/SparseLU_column_dfs.h;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/src/SparseLU/SparseLU_copy_to_ucol.h;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/src/SparseLU/SparseLU_gemm_kernel.h;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/src/SparseLU/SparseLU_heap_relax_snode.h;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/src/SparseLU/SparseLU_kernel_bmod.h;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/src/SparseLU/SparseLU_panel_bmod.h;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/src/SparseLU/SparseLU_panel_dfs.h;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/src/SparseLU/SparseLU_pivotL.h;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/src/SparseLU/SparseLU_pruneL.h;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/src/SparseLU/SparseLU_relax_snode.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/src/SparseLU" TYPE FILE FILES
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/src/SparseLU/SparseLU.h"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/src/SparseLU/SparseLUImpl.h"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/src/SparseLU/SparseLU_Memory.h"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/src/SparseLU/SparseLU_Structs.h"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/src/SparseLU/SparseLU_SupernodalMatrix.h"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/src/SparseLU/SparseLU_Utils.h"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/src/SparseLU/SparseLU_column_bmod.h"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/src/SparseLU/SparseLU_column_dfs.h"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/src/SparseLU/SparseLU_copy_to_ucol.h"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/src/SparseLU/SparseLU_gemm_kernel.h"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/src/SparseLU/SparseLU_heap_relax_snode.h"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/src/SparseLU/SparseLU_kernel_bmod.h"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/src/SparseLU/SparseLU_panel_bmod.h"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/src/SparseLU/SparseLU_panel_dfs.h"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/src/SparseLU/SparseLU_pivotL.h"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/src/SparseLU/SparseLU_pruneL.h"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/src/SparseLU/SparseLU_relax_snode.h"
    )
endif()

