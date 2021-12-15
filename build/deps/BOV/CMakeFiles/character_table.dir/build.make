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

# Include any dependencies generated for this target.
include deps/BOV/CMakeFiles/character_table.dir/depend.make

# Include the progress variables for this target.
include deps/BOV/CMakeFiles/character_table.dir/progress.make

# Include the compile flags for this target's objects.
include deps/BOV/CMakeFiles/character_table.dir/flags.make

deps/BOV/CMakeFiles/character_table.dir/examples/character_table.c.o: deps/BOV/CMakeFiles/character_table.dir/flags.make
deps/BOV/CMakeFiles/character_table.dir/examples/character_table.c.o: ../deps/BOV/examples/character_table.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/victor/Documents/Etudes/Numerical Geometry/NGP-master/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building C object deps/BOV/CMakeFiles/character_table.dir/examples/character_table.c.o"
	cd "/home/victor/Documents/Etudes/Numerical Geometry/NGP-master/build/deps/BOV" && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/character_table.dir/examples/character_table.c.o   -c "/home/victor/Documents/Etudes/Numerical Geometry/NGP-master/deps/BOV/examples/character_table.c"

deps/BOV/CMakeFiles/character_table.dir/examples/character_table.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/character_table.dir/examples/character_table.c.i"
	cd "/home/victor/Documents/Etudes/Numerical Geometry/NGP-master/build/deps/BOV" && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/home/victor/Documents/Etudes/Numerical Geometry/NGP-master/deps/BOV/examples/character_table.c" > CMakeFiles/character_table.dir/examples/character_table.c.i

deps/BOV/CMakeFiles/character_table.dir/examples/character_table.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/character_table.dir/examples/character_table.c.s"
	cd "/home/victor/Documents/Etudes/Numerical Geometry/NGP-master/build/deps/BOV" && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/home/victor/Documents/Etudes/Numerical Geometry/NGP-master/deps/BOV/examples/character_table.c" -o CMakeFiles/character_table.dir/examples/character_table.c.s

# Object files for target character_table
character_table_OBJECTS = \
"CMakeFiles/character_table.dir/examples/character_table.c.o"

# External object files for target character_table
character_table_EXTERNAL_OBJECTS =

deps/BOV/examples/character_table: deps/BOV/CMakeFiles/character_table.dir/examples/character_table.c.o
deps/BOV/examples/character_table: deps/BOV/CMakeFiles/character_table.dir/build.make
deps/BOV/examples/character_table: deps/BOV/lib/libbov.a
deps/BOV/examples/character_table: deps/BOV/deps/glad/libglad.a
deps/BOV/examples/character_table: deps/BOV/deps/glfw/src/libglfw3.a
deps/BOV/examples/character_table: /usr/lib/x86_64-linux-gnu/librt.so
deps/BOV/examples/character_table: /usr/lib/x86_64-linux-gnu/libm.so
deps/BOV/examples/character_table: deps/BOV/CMakeFiles/character_table.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/home/victor/Documents/Etudes/Numerical Geometry/NGP-master/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable examples/character_table"
	cd "/home/victor/Documents/Etudes/Numerical Geometry/NGP-master/build/deps/BOV" && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/character_table.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
deps/BOV/CMakeFiles/character_table.dir/build: deps/BOV/examples/character_table

.PHONY : deps/BOV/CMakeFiles/character_table.dir/build

deps/BOV/CMakeFiles/character_table.dir/clean:
	cd "/home/victor/Documents/Etudes/Numerical Geometry/NGP-master/build/deps/BOV" && $(CMAKE_COMMAND) -P CMakeFiles/character_table.dir/cmake_clean.cmake
.PHONY : deps/BOV/CMakeFiles/character_table.dir/clean

deps/BOV/CMakeFiles/character_table.dir/depend:
	cd "/home/victor/Documents/Etudes/Numerical Geometry/NGP-master/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/home/victor/Documents/Etudes/Numerical Geometry/NGP-master" "/home/victor/Documents/Etudes/Numerical Geometry/NGP-master/deps/BOV" "/home/victor/Documents/Etudes/Numerical Geometry/NGP-master/build" "/home/victor/Documents/Etudes/Numerical Geometry/NGP-master/build/deps/BOV" "/home/victor/Documents/Etudes/Numerical Geometry/NGP-master/build/deps/BOV/CMakeFiles/character_table.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : deps/BOV/CMakeFiles/character_table.dir/depend

