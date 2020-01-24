cmake_minimum_required(VERSION 3.0)

project(planecalib CXX C)

add_subdirectory(3rdparty)

find_package(GLUT REQUIRED)
find_package(glew REQUIRED)
find_package(OpenCV REQUIRED)
find_package(gflags REQUIRED)
find_package(glog REQUIRED)


find_package(Ceres REQUIRED QUIET PATHS "${EP_PREFIX}")

add_definitions(-DGLOG_NO_ABBREVIATED_SEVERITIES=1)

find_package(matio PATHS "3rdparty_new/matio_cmake")
if(matio_FOUND)
    list(APPEND RELEASE_DLL_GLOB_PATTERNS ${MATIO_DLL})
    list(APPEND DEBUG_DLL_GLOB_PATTERNS ${MATIO_DLL})
    add_definitions(-DHAS_MATIO)
else()
    message(STATUS "matio not found. Disabling matlab interaction.")
endif()


add_subdirectory(code)
