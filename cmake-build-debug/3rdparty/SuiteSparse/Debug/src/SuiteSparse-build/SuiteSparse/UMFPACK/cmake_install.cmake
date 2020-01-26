# Install script for directory: /home/haiyutan/planecalib/3rdparty/suitesparse-metis-for-windows-1.2.1/SuiteSparse/UMFPACK

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64" TYPE STATIC_LIBRARY FILES "/home/haiyutan/planecalib/cmake-build-debug/3rdparty/SuiteSparse/Debug/src/SuiteSparse-build/lib/libumfpackd.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/suitesparse" TYPE FILE FILES
    "/home/haiyutan/planecalib/3rdparty/suitesparse-metis-for-windows-1.2.1/SuiteSparse/UMFPACK/Include/umfpack.h"
    "/home/haiyutan/planecalib/3rdparty/suitesparse-metis-for-windows-1.2.1/SuiteSparse/UMFPACK/Include/umfpack_col_to_triplet.h"
    "/home/haiyutan/planecalib/3rdparty/suitesparse-metis-for-windows-1.2.1/SuiteSparse/UMFPACK/Include/umfpack_defaults.h"
    "/home/haiyutan/planecalib/3rdparty/suitesparse-metis-for-windows-1.2.1/SuiteSparse/UMFPACK/Include/umfpack_free_numeric.h"
    "/home/haiyutan/planecalib/3rdparty/suitesparse-metis-for-windows-1.2.1/SuiteSparse/UMFPACK/Include/umfpack_free_symbolic.h"
    "/home/haiyutan/planecalib/3rdparty/suitesparse-metis-for-windows-1.2.1/SuiteSparse/UMFPACK/Include/umfpack_get_determinant.h"
    "/home/haiyutan/planecalib/3rdparty/suitesparse-metis-for-windows-1.2.1/SuiteSparse/UMFPACK/Include/umfpack_get_lunz.h"
    "/home/haiyutan/planecalib/3rdparty/suitesparse-metis-for-windows-1.2.1/SuiteSparse/UMFPACK/Include/umfpack_get_numeric.h"
    "/home/haiyutan/planecalib/3rdparty/suitesparse-metis-for-windows-1.2.1/SuiteSparse/UMFPACK/Include/umfpack_get_symbolic.h"
    "/home/haiyutan/planecalib/3rdparty/suitesparse-metis-for-windows-1.2.1/SuiteSparse/UMFPACK/Include/umfpack_global.h"
    "/home/haiyutan/planecalib/3rdparty/suitesparse-metis-for-windows-1.2.1/SuiteSparse/UMFPACK/Include/umfpack_load_numeric.h"
    "/home/haiyutan/planecalib/3rdparty/suitesparse-metis-for-windows-1.2.1/SuiteSparse/UMFPACK/Include/umfpack_load_symbolic.h"
    "/home/haiyutan/planecalib/3rdparty/suitesparse-metis-for-windows-1.2.1/SuiteSparse/UMFPACK/Include/umfpack_numeric.h"
    "/home/haiyutan/planecalib/3rdparty/suitesparse-metis-for-windows-1.2.1/SuiteSparse/UMFPACK/Include/umfpack_qsymbolic.h"
    "/home/haiyutan/planecalib/3rdparty/suitesparse-metis-for-windows-1.2.1/SuiteSparse/UMFPACK/Include/umfpack_report_control.h"
    "/home/haiyutan/planecalib/3rdparty/suitesparse-metis-for-windows-1.2.1/SuiteSparse/UMFPACK/Include/umfpack_report_info.h"
    "/home/haiyutan/planecalib/3rdparty/suitesparse-metis-for-windows-1.2.1/SuiteSparse/UMFPACK/Include/umfpack_report_matrix.h"
    "/home/haiyutan/planecalib/3rdparty/suitesparse-metis-for-windows-1.2.1/SuiteSparse/UMFPACK/Include/umfpack_report_numeric.h"
    "/home/haiyutan/planecalib/3rdparty/suitesparse-metis-for-windows-1.2.1/SuiteSparse/UMFPACK/Include/umfpack_report_perm.h"
    "/home/haiyutan/planecalib/3rdparty/suitesparse-metis-for-windows-1.2.1/SuiteSparse/UMFPACK/Include/umfpack_report_status.h"
    "/home/haiyutan/planecalib/3rdparty/suitesparse-metis-for-windows-1.2.1/SuiteSparse/UMFPACK/Include/umfpack_report_symbolic.h"
    "/home/haiyutan/planecalib/3rdparty/suitesparse-metis-for-windows-1.2.1/SuiteSparse/UMFPACK/Include/umfpack_report_triplet.h"
    "/home/haiyutan/planecalib/3rdparty/suitesparse-metis-for-windows-1.2.1/SuiteSparse/UMFPACK/Include/umfpack_report_vector.h"
    "/home/haiyutan/planecalib/3rdparty/suitesparse-metis-for-windows-1.2.1/SuiteSparse/UMFPACK/Include/umfpack_save_numeric.h"
    "/home/haiyutan/planecalib/3rdparty/suitesparse-metis-for-windows-1.2.1/SuiteSparse/UMFPACK/Include/umfpack_save_symbolic.h"
    "/home/haiyutan/planecalib/3rdparty/suitesparse-metis-for-windows-1.2.1/SuiteSparse/UMFPACK/Include/umfpack_scale.h"
    "/home/haiyutan/planecalib/3rdparty/suitesparse-metis-for-windows-1.2.1/SuiteSparse/UMFPACK/Include/umfpack_solve.h"
    "/home/haiyutan/planecalib/3rdparty/suitesparse-metis-for-windows-1.2.1/SuiteSparse/UMFPACK/Include/umfpack_symbolic.h"
    "/home/haiyutan/planecalib/3rdparty/suitesparse-metis-for-windows-1.2.1/SuiteSparse/UMFPACK/Include/umfpack_tictoc.h"
    "/home/haiyutan/planecalib/3rdparty/suitesparse-metis-for-windows-1.2.1/SuiteSparse/UMFPACK/Include/umfpack_timer.h"
    "/home/haiyutan/planecalib/3rdparty/suitesparse-metis-for-windows-1.2.1/SuiteSparse/UMFPACK/Include/umfpack_transpose.h"
    "/home/haiyutan/planecalib/3rdparty/suitesparse-metis-for-windows-1.2.1/SuiteSparse/UMFPACK/Include/umfpack_triplet_to_col.h"
    "/home/haiyutan/planecalib/3rdparty/suitesparse-metis-for-windows-1.2.1/SuiteSparse/UMFPACK/Include/umfpack_wsolve.h"
    )
endif()

