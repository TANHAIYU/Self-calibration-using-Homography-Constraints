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
CMAKE_SOURCE_DIR = /home/haiyutan/planecalib/3rdparty/glew_cmake

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/haiyutan/planecalib/cmake-build-debug/3rdparty/glew/Debug/src/glew-build

# Include any dependencies generated for this target.
include CMakeFiles/glew.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/glew.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/glew.dir/flags.make

CMakeFiles/glew.dir/home/haiyutan/planecalib/3rdparty/glew-1.11.0/src/glew.o: CMakeFiles/glew.dir/flags.make
CMakeFiles/glew.dir/home/haiyutan/planecalib/3rdparty/glew-1.11.0/src/glew.o: /home/haiyutan/planecalib/3rdparty/glew-1.11.0/src/glew.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/haiyutan/planecalib/cmake-build-debug/3rdparty/glew/Debug/src/glew-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/glew.dir/home/haiyutan/planecalib/3rdparty/glew-1.11.0/src/glew.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/glew.dir/home/haiyutan/planecalib/3rdparty/glew-1.11.0/src/glew.o   -c /home/haiyutan/planecalib/3rdparty/glew-1.11.0/src/glew.c

CMakeFiles/glew.dir/home/haiyutan/planecalib/3rdparty/glew-1.11.0/src/glew.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glew.dir/home/haiyutan/planecalib/3rdparty/glew-1.11.0/src/glew.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/haiyutan/planecalib/3rdparty/glew-1.11.0/src/glew.c > CMakeFiles/glew.dir/home/haiyutan/planecalib/3rdparty/glew-1.11.0/src/glew.i

CMakeFiles/glew.dir/home/haiyutan/planecalib/3rdparty/glew-1.11.0/src/glew.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glew.dir/home/haiyutan/planecalib/3rdparty/glew-1.11.0/src/glew.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/haiyutan/planecalib/3rdparty/glew-1.11.0/src/glew.c -o CMakeFiles/glew.dir/home/haiyutan/planecalib/3rdparty/glew-1.11.0/src/glew.s

# Object files for target glew
glew_OBJECTS = \
"CMakeFiles/glew.dir/home/haiyutan/planecalib/3rdparty/glew-1.11.0/src/glew.o"

# External object files for target glew
glew_EXTERNAL_OBJECTS =

libglewd.a: CMakeFiles/glew.dir/home/haiyutan/planecalib/3rdparty/glew-1.11.0/src/glew.o
libglewd.a: CMakeFiles/glew.dir/build.make
libglewd.a: CMakeFiles/glew.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/haiyutan/planecalib/cmake-build-debug/3rdparty/glew/Debug/src/glew-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library libglewd.a"
	$(CMAKE_COMMAND) -P CMakeFiles/glew.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/glew.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/glew.dir/build: libglewd.a

.PHONY : CMakeFiles/glew.dir/build

CMakeFiles/glew.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/glew.dir/cmake_clean.cmake
.PHONY : CMakeFiles/glew.dir/clean

CMakeFiles/glew.dir/depend:
	cd /home/haiyutan/planecalib/cmake-build-debug/3rdparty/glew/Debug/src/glew-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/haiyutan/planecalib/3rdparty/glew_cmake /home/haiyutan/planecalib/3rdparty/glew_cmake /home/haiyutan/planecalib/cmake-build-debug/3rdparty/glew/Debug/src/glew-build /home/haiyutan/planecalib/cmake-build-debug/3rdparty/glew/Debug/src/glew-build /home/haiyutan/planecalib/cmake-build-debug/3rdparty/glew/Debug/src/glew-build/CMakeFiles/glew.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/glew.dir/depend

