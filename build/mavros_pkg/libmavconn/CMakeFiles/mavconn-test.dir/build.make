# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.0

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/chengque/catkin_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/chengque/catkin_ws/build

# Include any dependencies generated for this target.
include mavros_pkg/libmavconn/CMakeFiles/mavconn-test.dir/depend.make

# Include the progress variables for this target.
include mavros_pkg/libmavconn/CMakeFiles/mavconn-test.dir/progress.make

# Include the compile flags for this target's objects.
include mavros_pkg/libmavconn/CMakeFiles/mavconn-test.dir/flags.make

mavros_pkg/libmavconn/CMakeFiles/mavconn-test.dir/test/test_mavconn.cpp.o: mavros_pkg/libmavconn/CMakeFiles/mavconn-test.dir/flags.make
mavros_pkg/libmavconn/CMakeFiles/mavconn-test.dir/test/test_mavconn.cpp.o: /home/chengque/catkin_ws/src/mavros_pkg/libmavconn/test/test_mavconn.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/chengque/catkin_ws/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object mavros_pkg/libmavconn/CMakeFiles/mavconn-test.dir/test/test_mavconn.cpp.o"
	cd /home/chengque/catkin_ws/build/mavros_pkg/libmavconn && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/mavconn-test.dir/test/test_mavconn.cpp.o -c /home/chengque/catkin_ws/src/mavros_pkg/libmavconn/test/test_mavconn.cpp

mavros_pkg/libmavconn/CMakeFiles/mavconn-test.dir/test/test_mavconn.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mavconn-test.dir/test/test_mavconn.cpp.i"
	cd /home/chengque/catkin_ws/build/mavros_pkg/libmavconn && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/chengque/catkin_ws/src/mavros_pkg/libmavconn/test/test_mavconn.cpp > CMakeFiles/mavconn-test.dir/test/test_mavconn.cpp.i

mavros_pkg/libmavconn/CMakeFiles/mavconn-test.dir/test/test_mavconn.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mavconn-test.dir/test/test_mavconn.cpp.s"
	cd /home/chengque/catkin_ws/build/mavros_pkg/libmavconn && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/chengque/catkin_ws/src/mavros_pkg/libmavconn/test/test_mavconn.cpp -o CMakeFiles/mavconn-test.dir/test/test_mavconn.cpp.s

mavros_pkg/libmavconn/CMakeFiles/mavconn-test.dir/test/test_mavconn.cpp.o.requires:
.PHONY : mavros_pkg/libmavconn/CMakeFiles/mavconn-test.dir/test/test_mavconn.cpp.o.requires

mavros_pkg/libmavconn/CMakeFiles/mavconn-test.dir/test/test_mavconn.cpp.o.provides: mavros_pkg/libmavconn/CMakeFiles/mavconn-test.dir/test/test_mavconn.cpp.o.requires
	$(MAKE) -f mavros_pkg/libmavconn/CMakeFiles/mavconn-test.dir/build.make mavros_pkg/libmavconn/CMakeFiles/mavconn-test.dir/test/test_mavconn.cpp.o.provides.build
.PHONY : mavros_pkg/libmavconn/CMakeFiles/mavconn-test.dir/test/test_mavconn.cpp.o.provides

mavros_pkg/libmavconn/CMakeFiles/mavconn-test.dir/test/test_mavconn.cpp.o.provides.build: mavros_pkg/libmavconn/CMakeFiles/mavconn-test.dir/test/test_mavconn.cpp.o

# Object files for target mavconn-test
mavconn__test_OBJECTS = \
"CMakeFiles/mavconn-test.dir/test/test_mavconn.cpp.o"

# External object files for target mavconn-test
mavconn__test_EXTERNAL_OBJECTS =

/home/chengque/catkin_ws/devel/lib/libmavconn/mavconn-test: mavros_pkg/libmavconn/CMakeFiles/mavconn-test.dir/test/test_mavconn.cpp.o
/home/chengque/catkin_ws/devel/lib/libmavconn/mavconn-test: mavros_pkg/libmavconn/CMakeFiles/mavconn-test.dir/build.make
/home/chengque/catkin_ws/devel/lib/libmavconn/mavconn-test: gtest/libgtest.so
/home/chengque/catkin_ws/devel/lib/libmavconn/mavconn-test: /home/chengque/catkin_ws/devel/lib/libmavconn.so
/home/chengque/catkin_ws/devel/lib/libmavconn/mavconn-test: /usr/lib/i386-linux-gnu/libboost_system.so
/home/chengque/catkin_ws/devel/lib/libmavconn/mavconn-test: /usr/lib/i386-linux-gnu/libconsole_bridge.so
/home/chengque/catkin_ws/devel/lib/libmavconn/mavconn-test: mavros_pkg/libmavconn/CMakeFiles/mavconn-test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable /home/chengque/catkin_ws/devel/lib/libmavconn/mavconn-test"
	cd /home/chengque/catkin_ws/build/mavros_pkg/libmavconn && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/mavconn-test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
mavros_pkg/libmavconn/CMakeFiles/mavconn-test.dir/build: /home/chengque/catkin_ws/devel/lib/libmavconn/mavconn-test
.PHONY : mavros_pkg/libmavconn/CMakeFiles/mavconn-test.dir/build

mavros_pkg/libmavconn/CMakeFiles/mavconn-test.dir/requires: mavros_pkg/libmavconn/CMakeFiles/mavconn-test.dir/test/test_mavconn.cpp.o.requires
.PHONY : mavros_pkg/libmavconn/CMakeFiles/mavconn-test.dir/requires

mavros_pkg/libmavconn/CMakeFiles/mavconn-test.dir/clean:
	cd /home/chengque/catkin_ws/build/mavros_pkg/libmavconn && $(CMAKE_COMMAND) -P CMakeFiles/mavconn-test.dir/cmake_clean.cmake
.PHONY : mavros_pkg/libmavconn/CMakeFiles/mavconn-test.dir/clean

mavros_pkg/libmavconn/CMakeFiles/mavconn-test.dir/depend:
	cd /home/chengque/catkin_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/chengque/catkin_ws/src /home/chengque/catkin_ws/src/mavros_pkg/libmavconn /home/chengque/catkin_ws/build /home/chengque/catkin_ws/build/mavros_pkg/libmavconn /home/chengque/catkin_ws/build/mavros_pkg/libmavconn/CMakeFiles/mavconn-test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : mavros_pkg/libmavconn/CMakeFiles/mavconn-test.dir/depend

