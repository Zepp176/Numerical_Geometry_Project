# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_SOURCE_DIR = "/home/victor/Documents/Etudes/Numerical Geometry/NGP-master"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/home/victor/Documents/Etudes/Numerical Geometry/NGP-master/build"

# Utility rule file for shaderIncludes.

# Include the progress variables for this target.
include deps/BOV/CMakeFiles/shaderIncludes.dir/progress.make

deps/BOV/CMakeFiles/shaderIncludes: deps/BOV/shaderIncludes/points_vert.h
deps/BOV/CMakeFiles/shaderIncludes: deps/BOV/shaderIncludes/points_geom.h
deps/BOV/CMakeFiles/shaderIncludes: deps/BOV/shaderIncludes/points_frag.h
deps/BOV/CMakeFiles/shaderIncludes: deps/BOV/shaderIncludes/lines_geom.h
deps/BOV/CMakeFiles/shaderIncludes: deps/BOV/shaderIncludes/lines_frag.h
deps/BOV/CMakeFiles/shaderIncludes: deps/BOV/shaderIncludes/curve_geom.h
deps/BOV/CMakeFiles/shaderIncludes: deps/BOV/shaderIncludes/triangles_geom.h
deps/BOV/CMakeFiles/shaderIncludes: deps/BOV/shaderIncludes/triangles_frag.h
deps/BOV/CMakeFiles/shaderIncludes: deps/BOV/shaderIncludes/text_vert.h
deps/BOV/CMakeFiles/shaderIncludes: deps/BOV/shaderIncludes/text_frag.h
deps/BOV/CMakeFiles/shaderIncludes: deps/BOV/shaderIncludes/default_vert.h
deps/BOV/CMakeFiles/shaderIncludes: deps/BOV/shaderIncludes/default_frag.h


deps/BOV/shaderIncludes/points_vert.h: ../deps/BOV/shaders/points_vert.glsl
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir="/home/victor/Documents/Etudes/Numerical Geometry/NGP-master/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "generating build/deps/BOV/shaderIncludes/points_vert.h from shader deps/BOV/shaders/points_vert.glsl"
	cd "/home/victor/Documents/Etudes/Numerical Geometry/NGP-master/build/deps/BOV" && cmake -DIN=/home/victor/Documents/Etudes/Numerical\ Geometry/NGP-master/deps/BOV/shaders/points_vert.glsl -DVAR=points_vert -DOUT=/home/victor/Documents/Etudes/Numerical\ Geometry/NGP-master/build/deps/BOV/shaderIncludes/points_vert.h -P /home/victor/Documents/Etudes/Numerical\ Geometry/NGP-master/deps/BOV/shaders/shaderToString.cmake

deps/BOV/shaderIncludes/points_geom.h: ../deps/BOV/shaders/points_geom.glsl
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir="/home/victor/Documents/Etudes/Numerical Geometry/NGP-master/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "generating build/deps/BOV/shaderIncludes/points_geom.h from shader deps/BOV/shaders/points_geom.glsl"
	cd "/home/victor/Documents/Etudes/Numerical Geometry/NGP-master/build/deps/BOV" && cmake -DIN=/home/victor/Documents/Etudes/Numerical\ Geometry/NGP-master/deps/BOV/shaders/points_geom.glsl -DVAR=points_geom -DOUT=/home/victor/Documents/Etudes/Numerical\ Geometry/NGP-master/build/deps/BOV/shaderIncludes/points_geom.h -P /home/victor/Documents/Etudes/Numerical\ Geometry/NGP-master/deps/BOV/shaders/shaderToString.cmake

deps/BOV/shaderIncludes/points_frag.h: ../deps/BOV/shaders/points_frag.glsl
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir="/home/victor/Documents/Etudes/Numerical Geometry/NGP-master/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "generating build/deps/BOV/shaderIncludes/points_frag.h from shader deps/BOV/shaders/points_frag.glsl"
	cd "/home/victor/Documents/Etudes/Numerical Geometry/NGP-master/build/deps/BOV" && cmake -DIN=/home/victor/Documents/Etudes/Numerical\ Geometry/NGP-master/deps/BOV/shaders/points_frag.glsl -DVAR=points_frag -DOUT=/home/victor/Documents/Etudes/Numerical\ Geometry/NGP-master/build/deps/BOV/shaderIncludes/points_frag.h -P /home/victor/Documents/Etudes/Numerical\ Geometry/NGP-master/deps/BOV/shaders/shaderToString.cmake

deps/BOV/shaderIncludes/lines_geom.h: ../deps/BOV/shaders/lines_geom.glsl
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir="/home/victor/Documents/Etudes/Numerical Geometry/NGP-master/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_4) "generating build/deps/BOV/shaderIncludes/lines_geom.h from shader deps/BOV/shaders/lines_geom.glsl"
	cd "/home/victor/Documents/Etudes/Numerical Geometry/NGP-master/build/deps/BOV" && cmake -DIN=/home/victor/Documents/Etudes/Numerical\ Geometry/NGP-master/deps/BOV/shaders/lines_geom.glsl -DVAR=lines_geom -DOUT=/home/victor/Documents/Etudes/Numerical\ Geometry/NGP-master/build/deps/BOV/shaderIncludes/lines_geom.h -P /home/victor/Documents/Etudes/Numerical\ Geometry/NGP-master/deps/BOV/shaders/shaderToString.cmake

deps/BOV/shaderIncludes/lines_frag.h: ../deps/BOV/shaders/lines_frag.glsl
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir="/home/victor/Documents/Etudes/Numerical Geometry/NGP-master/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_5) "generating build/deps/BOV/shaderIncludes/lines_frag.h from shader deps/BOV/shaders/lines_frag.glsl"
	cd "/home/victor/Documents/Etudes/Numerical Geometry/NGP-master/build/deps/BOV" && cmake -DIN=/home/victor/Documents/Etudes/Numerical\ Geometry/NGP-master/deps/BOV/shaders/lines_frag.glsl -DVAR=lines_frag -DOUT=/home/victor/Documents/Etudes/Numerical\ Geometry/NGP-master/build/deps/BOV/shaderIncludes/lines_frag.h -P /home/victor/Documents/Etudes/Numerical\ Geometry/NGP-master/deps/BOV/shaders/shaderToString.cmake

deps/BOV/shaderIncludes/curve_geom.h: ../deps/BOV/shaders/curve_geom.glsl
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir="/home/victor/Documents/Etudes/Numerical Geometry/NGP-master/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_6) "generating build/deps/BOV/shaderIncludes/curve_geom.h from shader deps/BOV/shaders/curve_geom.glsl"
	cd "/home/victor/Documents/Etudes/Numerical Geometry/NGP-master/build/deps/BOV" && cmake -DIN=/home/victor/Documents/Etudes/Numerical\ Geometry/NGP-master/deps/BOV/shaders/curve_geom.glsl -DVAR=curve_geom -DOUT=/home/victor/Documents/Etudes/Numerical\ Geometry/NGP-master/build/deps/BOV/shaderIncludes/curve_geom.h -P /home/victor/Documents/Etudes/Numerical\ Geometry/NGP-master/deps/BOV/shaders/shaderToString.cmake

deps/BOV/shaderIncludes/triangles_geom.h: ../deps/BOV/shaders/triangles_geom.glsl
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir="/home/victor/Documents/Etudes/Numerical Geometry/NGP-master/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_7) "generating build/deps/BOV/shaderIncludes/triangles_geom.h from shader deps/BOV/shaders/triangles_geom.glsl"
	cd "/home/victor/Documents/Etudes/Numerical Geometry/NGP-master/build/deps/BOV" && cmake -DIN=/home/victor/Documents/Etudes/Numerical\ Geometry/NGP-master/deps/BOV/shaders/triangles_geom.glsl -DVAR=triangles_geom -DOUT=/home/victor/Documents/Etudes/Numerical\ Geometry/NGP-master/build/deps/BOV/shaderIncludes/triangles_geom.h -P /home/victor/Documents/Etudes/Numerical\ Geometry/NGP-master/deps/BOV/shaders/shaderToString.cmake

deps/BOV/shaderIncludes/triangles_frag.h: ../deps/BOV/shaders/triangles_frag.glsl
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir="/home/victor/Documents/Etudes/Numerical Geometry/NGP-master/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_8) "generating build/deps/BOV/shaderIncludes/triangles_frag.h from shader deps/BOV/shaders/triangles_frag.glsl"
	cd "/home/victor/Documents/Etudes/Numerical Geometry/NGP-master/build/deps/BOV" && cmake -DIN=/home/victor/Documents/Etudes/Numerical\ Geometry/NGP-master/deps/BOV/shaders/triangles_frag.glsl -DVAR=triangles_frag -DOUT=/home/victor/Documents/Etudes/Numerical\ Geometry/NGP-master/build/deps/BOV/shaderIncludes/triangles_frag.h -P /home/victor/Documents/Etudes/Numerical\ Geometry/NGP-master/deps/BOV/shaders/shaderToString.cmake

deps/BOV/shaderIncludes/text_vert.h: ../deps/BOV/shaders/text_vert.glsl
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir="/home/victor/Documents/Etudes/Numerical Geometry/NGP-master/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_9) "generating build/deps/BOV/shaderIncludes/text_vert.h from shader deps/BOV/shaders/text_vert.glsl"
	cd "/home/victor/Documents/Etudes/Numerical Geometry/NGP-master/build/deps/BOV" && cmake -DIN=/home/victor/Documents/Etudes/Numerical\ Geometry/NGP-master/deps/BOV/shaders/text_vert.glsl -DVAR=text_vert -DOUT=/home/victor/Documents/Etudes/Numerical\ Geometry/NGP-master/build/deps/BOV/shaderIncludes/text_vert.h -P /home/victor/Documents/Etudes/Numerical\ Geometry/NGP-master/deps/BOV/shaders/shaderToString.cmake

deps/BOV/shaderIncludes/text_frag.h: ../deps/BOV/shaders/text_frag.glsl
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir="/home/victor/Documents/Etudes/Numerical Geometry/NGP-master/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_10) "generating build/deps/BOV/shaderIncludes/text_frag.h from shader deps/BOV/shaders/text_frag.glsl"
	cd "/home/victor/Documents/Etudes/Numerical Geometry/NGP-master/build/deps/BOV" && cmake -DIN=/home/victor/Documents/Etudes/Numerical\ Geometry/NGP-master/deps/BOV/shaders/text_frag.glsl -DVAR=text_frag -DOUT=/home/victor/Documents/Etudes/Numerical\ Geometry/NGP-master/build/deps/BOV/shaderIncludes/text_frag.h -P /home/victor/Documents/Etudes/Numerical\ Geometry/NGP-master/deps/BOV/shaders/shaderToString.cmake

deps/BOV/shaderIncludes/default_vert.h: ../deps/BOV/shaders/default_vert.glsl
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir="/home/victor/Documents/Etudes/Numerical Geometry/NGP-master/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_11) "generating build/deps/BOV/shaderIncludes/default_vert.h from shader deps/BOV/shaders/default_vert.glsl"
	cd "/home/victor/Documents/Etudes/Numerical Geometry/NGP-master/build/deps/BOV" && cmake -DIN=/home/victor/Documents/Etudes/Numerical\ Geometry/NGP-master/deps/BOV/shaders/default_vert.glsl -DVAR=default_vert -DOUT=/home/victor/Documents/Etudes/Numerical\ Geometry/NGP-master/build/deps/BOV/shaderIncludes/default_vert.h -P /home/victor/Documents/Etudes/Numerical\ Geometry/NGP-master/deps/BOV/shaders/shaderToString.cmake

deps/BOV/shaderIncludes/default_frag.h: ../deps/BOV/shaders/default_frag.glsl
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir="/home/victor/Documents/Etudes/Numerical Geometry/NGP-master/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_12) "generating build/deps/BOV/shaderIncludes/default_frag.h from shader deps/BOV/shaders/default_frag.glsl"
	cd "/home/victor/Documents/Etudes/Numerical Geometry/NGP-master/build/deps/BOV" && cmake -DIN=/home/victor/Documents/Etudes/Numerical\ Geometry/NGP-master/deps/BOV/shaders/default_frag.glsl -DVAR=default_frag -DOUT=/home/victor/Documents/Etudes/Numerical\ Geometry/NGP-master/build/deps/BOV/shaderIncludes/default_frag.h -P /home/victor/Documents/Etudes/Numerical\ Geometry/NGP-master/deps/BOV/shaders/shaderToString.cmake

shaderIncludes: deps/BOV/CMakeFiles/shaderIncludes
shaderIncludes: deps/BOV/shaderIncludes/points_vert.h
shaderIncludes: deps/BOV/shaderIncludes/points_geom.h
shaderIncludes: deps/BOV/shaderIncludes/points_frag.h
shaderIncludes: deps/BOV/shaderIncludes/lines_geom.h
shaderIncludes: deps/BOV/shaderIncludes/lines_frag.h
shaderIncludes: deps/BOV/shaderIncludes/curve_geom.h
shaderIncludes: deps/BOV/shaderIncludes/triangles_geom.h
shaderIncludes: deps/BOV/shaderIncludes/triangles_frag.h
shaderIncludes: deps/BOV/shaderIncludes/text_vert.h
shaderIncludes: deps/BOV/shaderIncludes/text_frag.h
shaderIncludes: deps/BOV/shaderIncludes/default_vert.h
shaderIncludes: deps/BOV/shaderIncludes/default_frag.h
shaderIncludes: deps/BOV/CMakeFiles/shaderIncludes.dir/build.make

.PHONY : shaderIncludes

# Rule to build all files generated by this target.
deps/BOV/CMakeFiles/shaderIncludes.dir/build: shaderIncludes

.PHONY : deps/BOV/CMakeFiles/shaderIncludes.dir/build

deps/BOV/CMakeFiles/shaderIncludes.dir/clean:
	cd "/home/victor/Documents/Etudes/Numerical Geometry/NGP-master/build/deps/BOV" && $(CMAKE_COMMAND) -P CMakeFiles/shaderIncludes.dir/cmake_clean.cmake
.PHONY : deps/BOV/CMakeFiles/shaderIncludes.dir/clean

deps/BOV/CMakeFiles/shaderIncludes.dir/depend:
	cd "/home/victor/Documents/Etudes/Numerical Geometry/NGP-master/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/home/victor/Documents/Etudes/Numerical Geometry/NGP-master" "/home/victor/Documents/Etudes/Numerical Geometry/NGP-master/deps/BOV" "/home/victor/Documents/Etudes/Numerical Geometry/NGP-master/build" "/home/victor/Documents/Etudes/Numerical Geometry/NGP-master/build/deps/BOV" "/home/victor/Documents/Etudes/Numerical Geometry/NGP-master/build/deps/BOV/CMakeFiles/shaderIncludes.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : deps/BOV/CMakeFiles/shaderIncludes.dir/depend

