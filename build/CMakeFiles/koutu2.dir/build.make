# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/yang/project_new/koutu

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/yang/project_new/koutu/build

# Include any dependencies generated for this target.
include CMakeFiles/koutu2.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/koutu2.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/koutu2.dir/flags.make

CMakeFiles/koutu2.dir/koutu2.cpp.o: CMakeFiles/koutu2.dir/flags.make
CMakeFiles/koutu2.dir/koutu2.cpp.o: ../koutu2.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yang/project_new/koutu/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/koutu2.dir/koutu2.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/koutu2.dir/koutu2.cpp.o -c /home/yang/project_new/koutu/koutu2.cpp

CMakeFiles/koutu2.dir/koutu2.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/koutu2.dir/koutu2.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yang/project_new/koutu/koutu2.cpp > CMakeFiles/koutu2.dir/koutu2.cpp.i

CMakeFiles/koutu2.dir/koutu2.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/koutu2.dir/koutu2.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yang/project_new/koutu/koutu2.cpp -o CMakeFiles/koutu2.dir/koutu2.cpp.s

CMakeFiles/koutu2.dir/koutu2.cpp.o.requires:

.PHONY : CMakeFiles/koutu2.dir/koutu2.cpp.o.requires

CMakeFiles/koutu2.dir/koutu2.cpp.o.provides: CMakeFiles/koutu2.dir/koutu2.cpp.o.requires
	$(MAKE) -f CMakeFiles/koutu2.dir/build.make CMakeFiles/koutu2.dir/koutu2.cpp.o.provides.build
.PHONY : CMakeFiles/koutu2.dir/koutu2.cpp.o.provides

CMakeFiles/koutu2.dir/koutu2.cpp.o.provides.build: CMakeFiles/koutu2.dir/koutu2.cpp.o


# Object files for target koutu2
koutu2_OBJECTS = \
"CMakeFiles/koutu2.dir/koutu2.cpp.o"

# External object files for target koutu2
koutu2_EXTERNAL_OBJECTS =

koutu2: CMakeFiles/koutu2.dir/koutu2.cpp.o
koutu2: CMakeFiles/koutu2.dir/build.make
koutu2: /opt/ros/kinetic/lib/libopencv_stitching3.so.3.2.0
koutu2: /opt/ros/kinetic/lib/libopencv_superres3.so.3.2.0
koutu2: /opt/ros/kinetic/lib/libopencv_videostab3.so.3.2.0
koutu2: /opt/ros/kinetic/lib/libopencv_aruco3.so.3.2.0
koutu2: /opt/ros/kinetic/lib/libopencv_bgsegm3.so.3.2.0
koutu2: /opt/ros/kinetic/lib/libopencv_bioinspired3.so.3.2.0
koutu2: /opt/ros/kinetic/lib/libopencv_ccalib3.so.3.2.0
koutu2: /opt/ros/kinetic/lib/libopencv_cvv3.so.3.2.0
koutu2: /opt/ros/kinetic/lib/libopencv_datasets3.so.3.2.0
koutu2: /opt/ros/kinetic/lib/libopencv_dpm3.so.3.2.0
koutu2: /opt/ros/kinetic/lib/libopencv_face3.so.3.2.0
koutu2: /opt/ros/kinetic/lib/libopencv_fuzzy3.so.3.2.0
koutu2: /opt/ros/kinetic/lib/libopencv_hdf3.so.3.2.0
koutu2: /opt/ros/kinetic/lib/libopencv_line_descriptor3.so.3.2.0
koutu2: /opt/ros/kinetic/lib/libopencv_optflow3.so.3.2.0
koutu2: /opt/ros/kinetic/lib/libopencv_plot3.so.3.2.0
koutu2: /opt/ros/kinetic/lib/libopencv_reg3.so.3.2.0
koutu2: /opt/ros/kinetic/lib/libopencv_saliency3.so.3.2.0
koutu2: /opt/ros/kinetic/lib/libopencv_stereo3.so.3.2.0
koutu2: /opt/ros/kinetic/lib/libopencv_structured_light3.so.3.2.0
koutu2: /opt/ros/kinetic/lib/libopencv_surface_matching3.so.3.2.0
koutu2: /opt/ros/kinetic/lib/libopencv_text3.so.3.2.0
koutu2: /opt/ros/kinetic/lib/libopencv_xfeatures2d3.so.3.2.0
koutu2: /opt/ros/kinetic/lib/libopencv_ximgproc3.so.3.2.0
koutu2: /opt/ros/kinetic/lib/libopencv_xobjdetect3.so.3.2.0
koutu2: /opt/ros/kinetic/lib/libopencv_xphoto3.so.3.2.0
koutu2: /opt/ros/kinetic/lib/libopencv_shape3.so.3.2.0
koutu2: /opt/ros/kinetic/lib/libopencv_video3.so.3.2.0
koutu2: /opt/ros/kinetic/lib/libopencv_viz3.so.3.2.0
koutu2: /opt/ros/kinetic/lib/libopencv_phase_unwrapping3.so.3.2.0
koutu2: /opt/ros/kinetic/lib/libopencv_rgbd3.so.3.2.0
koutu2: /opt/ros/kinetic/lib/libopencv_calib3d3.so.3.2.0
koutu2: /opt/ros/kinetic/lib/libopencv_features2d3.so.3.2.0
koutu2: /opt/ros/kinetic/lib/libopencv_flann3.so.3.2.0
koutu2: /opt/ros/kinetic/lib/libopencv_objdetect3.so.3.2.0
koutu2: /opt/ros/kinetic/lib/libopencv_ml3.so.3.2.0
koutu2: /opt/ros/kinetic/lib/libopencv_highgui3.so.3.2.0
koutu2: /opt/ros/kinetic/lib/libopencv_photo3.so.3.2.0
koutu2: /opt/ros/kinetic/lib/libopencv_videoio3.so.3.2.0
koutu2: /opt/ros/kinetic/lib/libopencv_imgcodecs3.so.3.2.0
koutu2: /opt/ros/kinetic/lib/libopencv_imgproc3.so.3.2.0
koutu2: /opt/ros/kinetic/lib/libopencv_core3.so.3.2.0
koutu2: CMakeFiles/koutu2.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/yang/project_new/koutu/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable koutu2"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/koutu2.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/koutu2.dir/build: koutu2

.PHONY : CMakeFiles/koutu2.dir/build

CMakeFiles/koutu2.dir/requires: CMakeFiles/koutu2.dir/koutu2.cpp.o.requires

.PHONY : CMakeFiles/koutu2.dir/requires

CMakeFiles/koutu2.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/koutu2.dir/cmake_clean.cmake
.PHONY : CMakeFiles/koutu2.dir/clean

CMakeFiles/koutu2.dir/depend:
	cd /home/yang/project_new/koutu/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yang/project_new/koutu /home/yang/project_new/koutu /home/yang/project_new/koutu/build /home/yang/project_new/koutu/build /home/yang/project_new/koutu/build/CMakeFiles/koutu2.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/koutu2.dir/depend

