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
include test/CMakeFiles/sparse_product_3.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/sparse_product_3.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/sparse_product_3.dir/flags.make

test/CMakeFiles/sparse_product_3.dir/sparse_product.cpp.o: test/CMakeFiles/sparse_product_3.dir/flags.make
test/CMakeFiles/sparse_product_3.dir/sparse_product.cpp.o: /home/haiyutan/planecalib/3rdparty/eigen-3.2.2/test/sparse_product.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/haiyutan/planecalib/cmake-build-debug/3rdparty/Eigen/Debug/src/Eigen-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/sparse_product_3.dir/sparse_product.cpp.o"
	cd /home/haiyutan/planecalib/cmake-build-debug/3rdparty/Eigen/Debug/src/Eigen-build/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sparse_product_3.dir/sparse_product.cpp.o -c /home/haiyutan/planecalib/3rdparty/eigen-3.2.2/test/sparse_product.cpp

test/CMakeFiles/sparse_product_3.dir/sparse_product.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sparse_product_3.dir/sparse_product.cpp.i"
	cd /home/haiyutan/planecalib/cmake-build-debug/3rdparty/Eigen/Debug/src/Eigen-build/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/haiyutan/planecalib/3rdparty/eigen-3.2.2/test/sparse_product.cpp > CMakeFiles/sparse_product_3.dir/sparse_product.cpp.i

test/CMakeFiles/sparse_product_3.dir/sparse_product.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sparse_product_3.dir/sparse_product.cpp.s"
	cd /home/haiyutan/planecalib/cmake-build-debug/3rdparty/Eigen/Debug/src/Eigen-build/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/haiyutan/planecalib/3rdparty/eigen-3.2.2/test/sparse_product.cpp -o CMakeFiles/sparse_product_3.dir/sparse_product.cpp.s

# Object files for target sparse_product_3
sparse_product_3_OBJECTS = \
"CMakeFiles/sparse_product_3.dir/sparse_product.cpp.o"

# External object files for target sparse_product_3
sparse_product_3_EXTERNAL_OBJECTS =

test/sparse_product_3: test/CMakeFiles/sparse_product_3.dir/sparse_product.cpp.o
test/sparse_product_3: test/CMakeFiles/sparse_product_3.dir/build.make
test/sparse_product_3: test/CMakeFiles/sparse_product_3.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/haiyutan/planecalib/cmake-build-debug/3rdparty/Eigen/Debug/src/Eigen-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable sparse_product_3"
	cd /home/haiyutan/planecalib/cmake-build-debug/3rdparty/Eigen/Debug/src/Eigen-build/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sparse_product_3.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/sparse_product_3.dir/build: test/sparse_product_3

.PHONY : test/CMakeFiles/sparse_product_3.dir/build

test/CMakeFiles/sparse_product_3.dir/clean:
	cd /home/haiyutan/planecalib/cmake-build-debug/3rdparty/Eigen/Debug/src/Eigen-build/test && $(CMAKE_COMMAND) -P CMakeFiles/sparse_product_3.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/sparse_product_3.dir/clean

test/CMakeFiles/sparse_product_3.dir/depend:
	cd /home/haiyutan/planecalib/cmake-build-debug/3rdparty/Eigen/Debug/src/Eigen-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/haiyutan/planecalib/3rdparty/eigen-3.2.2 /home/haiyutan/planecalib/3rdparty/eigen-3.2.2/test /home/haiyutan/planecalib/cmake-build-debug/3rdparty/Eigen/Debug/src/Eigen-build /home/haiyutan/planecalib/cmake-build-debug/3rdparty/Eigen/Debug/src/Eigen-build/test /home/haiyutan/planecalib/cmake-build-debug/3rdparty/Eigen/Debug/src/Eigen-build/test/CMakeFiles/sparse_product_3.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/sparse_product_3.dir/depend

