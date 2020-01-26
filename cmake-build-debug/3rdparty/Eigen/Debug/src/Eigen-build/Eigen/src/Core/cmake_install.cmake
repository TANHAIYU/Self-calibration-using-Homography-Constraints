# Install script for directory: /home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/src/Core

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
   "/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/src/Core/Array.h;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/src/Core/ArrayBase.h;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/src/Core/ArrayWrapper.h;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/src/Core/Assign.h;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/src/Core/Assign_MKL.h;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/src/Core/BandMatrix.h;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/src/Core/Block.h;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/src/Core/BooleanRedux.h;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/src/Core/CommaInitializer.h;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/src/Core/CoreIterators.h;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/src/Core/CwiseBinaryOp.h;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/src/Core/CwiseNullaryOp.h;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/src/Core/CwiseUnaryOp.h;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/src/Core/CwiseUnaryView.h;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/src/Core/DenseBase.h;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/src/Core/DenseCoeffsBase.h;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/src/Core/DenseStorage.h;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/src/Core/Diagonal.h;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/src/Core/DiagonalMatrix.h;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/src/Core/DiagonalProduct.h;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/src/Core/Dot.h;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/src/Core/EigenBase.h;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/src/Core/Flagged.h;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/src/Core/ForceAlignedAccess.h;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/src/Core/Functors.h;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/src/Core/Fuzzy.h;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/src/Core/GeneralProduct.h;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/src/Core/GenericPacketMath.h;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/src/Core/GlobalFunctions.h;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/src/Core/IO.h;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/src/Core/Map.h;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/src/Core/MapBase.h;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/src/Core/MathFunctions.h;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/src/Core/Matrix.h;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/src/Core/MatrixBase.h;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/src/Core/NestByValue.h;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/src/Core/NoAlias.h;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/src/Core/NumTraits.h;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/src/Core/PermutationMatrix.h;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/src/Core/PlainObjectBase.h;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/src/Core/ProductBase.h;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/src/Core/Random.h;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/src/Core/Redux.h;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/src/Core/Ref.h;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/src/Core/Replicate.h;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/src/Core/ReturnByValue.h;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/src/Core/Reverse.h;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/src/Core/Select.h;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/src/Core/SelfAdjointView.h;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/src/Core/SelfCwiseBinaryOp.h;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/src/Core/SolveTriangular.h;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/src/Core/StableNorm.h;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/src/Core/Stride.h;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/src/Core/Swap.h;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/src/Core/Transpose.h;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/src/Core/Transpositions.h;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/src/Core/TriangularMatrix.h;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/src/Core/VectorBlock.h;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/src/Core/VectorwiseOp.h;/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/src/Core/Visitor.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr/include/eigen3/Eigen/src/Core" TYPE FILE FILES
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/src/Core/Array.h"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/src/Core/ArrayBase.h"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/src/Core/ArrayWrapper.h"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/src/Core/Assign.h"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/src/Core/Assign_MKL.h"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/src/Core/BandMatrix.h"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/src/Core/Block.h"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/src/Core/BooleanRedux.h"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/src/Core/CommaInitializer.h"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/src/Core/CoreIterators.h"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/src/Core/CwiseBinaryOp.h"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/src/Core/CwiseNullaryOp.h"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/src/Core/CwiseUnaryOp.h"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/src/Core/CwiseUnaryView.h"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/src/Core/DenseBase.h"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/src/Core/DenseCoeffsBase.h"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/src/Core/DenseStorage.h"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/src/Core/Diagonal.h"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/src/Core/DiagonalMatrix.h"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/src/Core/DiagonalProduct.h"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/src/Core/Dot.h"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/src/Core/EigenBase.h"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/src/Core/Flagged.h"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/src/Core/ForceAlignedAccess.h"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/src/Core/Functors.h"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/src/Core/Fuzzy.h"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/src/Core/GeneralProduct.h"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/src/Core/GenericPacketMath.h"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/src/Core/GlobalFunctions.h"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/src/Core/IO.h"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/src/Core/Map.h"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/src/Core/MapBase.h"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/src/Core/MathFunctions.h"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/src/Core/Matrix.h"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/src/Core/MatrixBase.h"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/src/Core/NestByValue.h"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/src/Core/NoAlias.h"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/src/Core/NumTraits.h"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/src/Core/PermutationMatrix.h"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/src/Core/PlainObjectBase.h"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/src/Core/ProductBase.h"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/src/Core/Random.h"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/src/Core/Redux.h"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/src/Core/Ref.h"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/src/Core/Replicate.h"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/src/Core/ReturnByValue.h"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/src/Core/Reverse.h"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/src/Core/Select.h"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/src/Core/SelfAdjointView.h"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/src/Core/SelfCwiseBinaryOp.h"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/src/Core/SolveTriangular.h"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/src/Core/StableNorm.h"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/src/Core/Stride.h"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/src/Core/Swap.h"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/src/Core/Transpose.h"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/src/Core/Transpositions.h"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/src/Core/TriangularMatrix.h"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/src/Core/VectorBlock.h"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/src/Core/VectorwiseOp.h"
    "/home/haiyutan/planecalib/3rdparty/eigen-3.2.2/Eigen/src/Core/Visitor.h"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/haiyutan/planecalib/cmake-build-debug/3rdparty/Eigen/Debug/src/Eigen-build/Eigen/src/Core/products/cmake_install.cmake")
  include("/home/haiyutan/planecalib/cmake-build-debug/3rdparty/Eigen/Debug/src/Eigen-build/Eigen/src/Core/util/cmake_install.cmake")
  include("/home/haiyutan/planecalib/cmake-build-debug/3rdparty/Eigen/Debug/src/Eigen-build/Eigen/src/Core/arch/cmake_install.cmake")

endif()

