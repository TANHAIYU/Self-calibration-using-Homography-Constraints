cmake_minimum_required(VERSION 3.0)
include(ExternalProject)
ExternalProject_Add(freeglut  SOURCE_DIR /home/haiyutan/planecalib/3rdparty/freeglut_cmake CMAKE_ARGS -DFREEGLUT_ROOT_DIR:STRING=freeglut-2.8.1 -DCMAKE_POSITION_INDEPENDENT_CODE:BOOL=TRUE
                                     INSTALL_DIR "/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr"
                                     CMAKE_ARGS -DCMAKE_PREFIX_PATH:PATH=/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr -DCMAKE_INSTALL_PREFIX:PATH=/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr -Wno-dev -DCMAKE_BUILD_TYPE=Debug -DCMAKE_DEBUG_POSTFIX:STRING=d
                                     CMAKE_CACHE_ARGS -DCMAKE_CXX_FLAGS:STRING=${CMAKE_CXX_FLAGS}\ \${CMAKE_CXX_FLAGS} -DCMAKE_C_FLAGS:STRING=${CMAKE_C_FLAGS}\ \${CMAKE_C_FLAGS} -DEP_PREFIX:PATH=/home/haiyutan/planecalib/cmake-build-debug/3rdparty/usr -DCMAKE_MODULE_PATH:STRING=\\;/home/haiyutan/planecalib/3rdparty/cmake 
                                     PREFIX "/home/haiyutan/planecalib/cmake-build-debug/3rdparty/freeglut/Debug")
