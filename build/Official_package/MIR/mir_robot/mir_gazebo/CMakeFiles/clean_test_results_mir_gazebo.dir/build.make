# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.23

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/inexbot/NSAI_new/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/inexbot/NSAI_new/build

# Utility rule file for clean_test_results_mir_gazebo.

# Include any custom commands dependencies for this target.
include Official_package/MIR/mir_robot/mir_gazebo/CMakeFiles/clean_test_results_mir_gazebo.dir/compiler_depend.make

# Include the progress variables for this target.
include Official_package/MIR/mir_robot/mir_gazebo/CMakeFiles/clean_test_results_mir_gazebo.dir/progress.make

Official_package/MIR/mir_robot/mir_gazebo/CMakeFiles/clean_test_results_mir_gazebo:
	cd /home/inexbot/NSAI_new/build/Official_package/MIR/mir_robot/mir_gazebo && /usr/bin/python3 /opt/ros/noetic/share/catkin/cmake/test/remove_test_results.py /home/inexbot/NSAI_new/build/test_results/mir_gazebo

clean_test_results_mir_gazebo: Official_package/MIR/mir_robot/mir_gazebo/CMakeFiles/clean_test_results_mir_gazebo
clean_test_results_mir_gazebo: Official_package/MIR/mir_robot/mir_gazebo/CMakeFiles/clean_test_results_mir_gazebo.dir/build.make
.PHONY : clean_test_results_mir_gazebo

# Rule to build all files generated by this target.
Official_package/MIR/mir_robot/mir_gazebo/CMakeFiles/clean_test_results_mir_gazebo.dir/build: clean_test_results_mir_gazebo
.PHONY : Official_package/MIR/mir_robot/mir_gazebo/CMakeFiles/clean_test_results_mir_gazebo.dir/build

Official_package/MIR/mir_robot/mir_gazebo/CMakeFiles/clean_test_results_mir_gazebo.dir/clean:
	cd /home/inexbot/NSAI_new/build/Official_package/MIR/mir_robot/mir_gazebo && $(CMAKE_COMMAND) -P CMakeFiles/clean_test_results_mir_gazebo.dir/cmake_clean.cmake
.PHONY : Official_package/MIR/mir_robot/mir_gazebo/CMakeFiles/clean_test_results_mir_gazebo.dir/clean

Official_package/MIR/mir_robot/mir_gazebo/CMakeFiles/clean_test_results_mir_gazebo.dir/depend:
	cd /home/inexbot/NSAI_new/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/inexbot/NSAI_new/src /home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_gazebo /home/inexbot/NSAI_new/build /home/inexbot/NSAI_new/build/Official_package/MIR/mir_robot/mir_gazebo /home/inexbot/NSAI_new/build/Official_package/MIR/mir_robot/mir_gazebo/CMakeFiles/clean_test_results_mir_gazebo.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Official_package/MIR/mir_robot/mir_gazebo/CMakeFiles/clean_test_results_mir_gazebo.dir/depend

