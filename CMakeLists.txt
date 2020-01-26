cmake_minimum_required(VERSION 3.0)

project(planecalib CXX)

add_subdirectory(3rdparty)

find_package(GLUT REQUIRED)
find_package(glew REQUIRED)
find_package(OpenCV REQUIRED)
find_package(gflags REQUIRED)
find_package(glog REQUIRED)
find_package(Ceres REQUIRED QUIET PATHS "${EP_PREFIX}")

add_definitions(-DGLOG_NO_ABBREVIATED_SEVERITIES=1)

add_subdirectory(code)
