# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.15

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /opt/clion-2019.3.2/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /opt/clion-2019.3.2/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/haiyutan/planecalib/3rdparty/eigen-3.2.2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/haiyutan/planecalib/cmake-build-debug/3rdparty/Eigen/Debug/src/Eigen-build

# Include any dependencies generated for this target.
include test/CMakeFiles/meta.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/meta.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/meta.dir/flags.make

test/CMakeFiles/meta.dir/meta.cpp.o: test/CMakeFiles/meta.dir/flags.make
test/CMakeFiles/meta.dir/meta.cpp.o: /home/haiyutan/planecalib/3rdparty/eigen-3.2.2/test/meta.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/haiyutan/planecalib/cmake-build-debug/3rdparty/Eigen/Debug/src/Eigen-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/meta.dir/meta.cpp.o"
	cd /home/haiyutan/planecalib/cmake-build-debug/3rdparty/Eigen/Debug/src/Eigen-build/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/meta.dir/meta.cpp.o -c /home/haiyutan/planecalib/3rdparty/eigen-3.2.2/test/meta.cpp

test/CMakeFiles/meta.dir/meta.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/meta.dir/meta.cpp.i"
	cd /home/haiyutan/planecalib/cmake-build-debug/3rdparty/Eigen/Debug/src/Eigen-build/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/haiyutan/planecalib/3rdparty/eigen-3.2.2/test/meta.cpp > CMakeFiles/meta.dir/meta.cpp.i

test/CMakeFiles/meta.dir/meta.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/meta.dir/meta.cpp.s"
	cd /home/haiyutan/planecalib/cmake-build-debug/3rdparty/Eigen/Debug/src/Eigen-build/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/haiyutan/planecalib/3rdparty/eigen-3.2.2/test/meta.cpp -o CMakeFiles/meta.dir/meta.cpp.s

# Object files for target meta
meta_OBJECTS = \
"CMakeFiles/meta.dir/meta.cpp.o"

# External object files for target meta
meta_EXTERNAL_OBJECTS =

test/meta: test/CMakeFiles/meta.dir/meta.cpp.o
test/meta: test/CMakeFiles/meta.dir/build.make
test/meta: test/CMakeFiles/meta.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/haiyutan/planecalib/cmake-build-debug/3rdparty/Eigen/Debug/src/Eigen-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable meta"
	cd /home/haiyutan/planecalib/cmake-build-debug/3rdparty/Eigen/Debug/src/Eigen-build/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/meta.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/meta.dir/build: test/meta

.PHONY : test/CMakeFiles/meta.dir/build

test/CMakeFiles/meta.dir/clean:
	cd /home/haiyutan/planecalib/cmake-build-debug/3rdparty/Eigen/Debug/src/Eigen-build/test && $(CMAKE_COMMAND) -P CMakeFiles/meta.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/meta.dir/clean

test/CMakeFiles/meta.dir/depend:
	cd /home/haiyutan/planecalib/cmake-build-debug/3rdparty/Eigen/Debug/src/Eigen-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/haiyutan/planecalib/3rdparty/eigen-3.2.2 /home/haiyutan/planecalib/3rdparty/eigen-3.2.2/test /home/haiyutan/planecalib/cmake-build-debug/3rdparty/Eigen/Debug/src/Eigen-build /home/haiyutan/planecalib/cmake-build-debug/3rdparty/Eigen/Debug/src/Eigen-build/test /home/haiyutan/planecalib/cmake-build-debug/3rdparty/Eigen/Debug/src/Eigen-build/test/CMakeFiles/meta.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/meta.dir/depend

