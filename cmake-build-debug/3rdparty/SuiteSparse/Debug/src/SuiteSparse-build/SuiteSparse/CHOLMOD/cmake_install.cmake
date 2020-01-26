# Install script for directory: /home/haiyutan/planecalib/3rdparty/suitesparse-metis-for-windows-1.2.1/SuiteSparse/CHOLMOD

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

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64" TYPE STATIC_LIBRARY FILES "/home/haiyutan/planecalib/cmake-build-debug/3rdparty/SuiteSparse/Debug/src/SuiteSparse-build/lib/libcholmodd.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/suitesparse" TYPE FILE FILES
    "/home/haiyutan/planecalib/3rdparty/suitesparse-metis-for-windows-1.2.1/SuiteSparse/CHOLMOD/Include/cholmod.h"
    "/home/haiyutan/planecalib/3rdparty/suitesparse-metis-for-windows-1.2.1/SuiteSparse/CHOLMOD/Include/cholmod_blas.h"
    "/home/haiyutan/planecalib/3rdparty/suitesparse-metis-for-windows-1.2.1/SuiteSparse/CHOLMOD/Include/cholmod_camd.h"
    "/home/haiyutan/planecalib/3rdparty/suitesparse-metis-for-windows-1.2.1/SuiteSparse/CHOLMOD/Include/cholmod_check.h"
    "/home/haiyutan/planecalib/3rdparty/suitesparse-metis-for-windows-1.2.1/SuiteSparse/CHOLMOD/Include/cholmod_cholesky.h"
    "/home/haiyutan/planecalib/3rdparty/suitesparse-metis-for-windows-1.2.1/SuiteSparse/CHOLMOD/Include/cholmod_complexity.h"
    "/home/haiyutan/planecalib/3rdparty/suitesparse-metis-for-windows-1.2.1/SuiteSparse/CHOLMOD/Include/cholmod_config.h"
    "/home/haiyutan/planecalib/3rdparty/suitesparse-metis-for-windows-1.2.1/SuiteSparse/CHOLMOD/Include/cholmod_core.h"
    "/home/haiyutan/planecalib/3rdparty/suitesparse-metis-for-windows-1.2.1/SuiteSparse/CHOLMOD/Include/cholmod_gpu.h"
    "/home/haiyutan/planecalib/3rdparty/suitesparse-metis-for-windows-1.2.1/SuiteSparse/CHOLMOD/Include/cholmod_gpu_kernels.h"
    "/home/haiyutan/planecalib/3rdparty/suitesparse-metis-for-windows-1.2.1/SuiteSparse/CHOLMOD/Include/cholmod_internal.h"
    "/home/haiyutan/planecalib/3rdparty/suitesparse-metis-for-windows-1.2.1/SuiteSparse/CHOLMOD/Include/cholmod_io64.h"
    "/home/haiyutan/planecalib/3rdparty/suitesparse-metis-for-windows-1.2.1/SuiteSparse/CHOLMOD/Include/cholmod_matrixops.h"
    "/home/haiyutan/planecalib/3rdparty/suitesparse-metis-for-windows-1.2.1/SuiteSparse/CHOLMOD/Include/cholmod_modify.h"
    "/home/haiyutan/planecalib/3rdparty/suitesparse-metis-for-windows-1.2.1/SuiteSparse/CHOLMOD/Include/cholmod_partition.h"
    "/home/haiyutan/planecalib/3rdparty/suitesparse-metis-for-windows-1.2.1/SuiteSparse/CHOLMOD/Include/cholmod_supernodal.h"
    "/home/haiyutan/planecalib/3rdparty/suitesparse-metis-for-windows-1.2.1/SuiteSparse/CHOLMOD/Include/cholmod_template.h"
    )
endif()

