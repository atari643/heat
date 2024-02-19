# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /mnt/netta/users/qartigala/Bureau/heat

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /mnt/netta/users/qartigala/Bureau/heat/build

# Include any dependencies generated for this target.
include CMakeFiles/heat_seq.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/heat_seq.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/heat_seq.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/heat_seq.dir/flags.make

CMakeFiles/heat_seq.dir/heat_seq.c.o: CMakeFiles/heat_seq.dir/flags.make
CMakeFiles/heat_seq.dir/heat_seq.c.o: ../heat_seq.c
CMakeFiles/heat_seq.dir/heat_seq.c.o: CMakeFiles/heat_seq.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/netta/users/qartigala/Bureau/heat/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/heat_seq.dir/heat_seq.c.o"
	/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/heat_seq.dir/heat_seq.c.o -MF CMakeFiles/heat_seq.dir/heat_seq.c.o.d -o CMakeFiles/heat_seq.dir/heat_seq.c.o -c /mnt/netta/users/qartigala/Bureau/heat/heat_seq.c

CMakeFiles/heat_seq.dir/heat_seq.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/heat_seq.dir/heat_seq.c.i"
	/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/netta/users/qartigala/Bureau/heat/heat_seq.c > CMakeFiles/heat_seq.dir/heat_seq.c.i

CMakeFiles/heat_seq.dir/heat_seq.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/heat_seq.dir/heat_seq.c.s"
	/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/netta/users/qartigala/Bureau/heat/heat_seq.c -o CMakeFiles/heat_seq.dir/heat_seq.c.s

CMakeFiles/heat_seq.dir/mat_utils.c.o: CMakeFiles/heat_seq.dir/flags.make
CMakeFiles/heat_seq.dir/mat_utils.c.o: ../mat_utils.c
CMakeFiles/heat_seq.dir/mat_utils.c.o: CMakeFiles/heat_seq.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/netta/users/qartigala/Bureau/heat/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/heat_seq.dir/mat_utils.c.o"
	/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/heat_seq.dir/mat_utils.c.o -MF CMakeFiles/heat_seq.dir/mat_utils.c.o.d -o CMakeFiles/heat_seq.dir/mat_utils.c.o -c /mnt/netta/users/qartigala/Bureau/heat/mat_utils.c

CMakeFiles/heat_seq.dir/mat_utils.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/heat_seq.dir/mat_utils.c.i"
	/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/netta/users/qartigala/Bureau/heat/mat_utils.c > CMakeFiles/heat_seq.dir/mat_utils.c.i

CMakeFiles/heat_seq.dir/mat_utils.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/heat_seq.dir/mat_utils.c.s"
	/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/netta/users/qartigala/Bureau/heat/mat_utils.c -o CMakeFiles/heat_seq.dir/mat_utils.c.s

# Object files for target heat_seq
heat_seq_OBJECTS = \
"CMakeFiles/heat_seq.dir/heat_seq.c.o" \
"CMakeFiles/heat_seq.dir/mat_utils.c.o"

# External object files for target heat_seq
heat_seq_EXTERNAL_OBJECTS =

heat_seq: CMakeFiles/heat_seq.dir/heat_seq.c.o
heat_seq: CMakeFiles/heat_seq.dir/mat_utils.c.o
heat_seq: CMakeFiles/heat_seq.dir/build.make
heat_seq: lib/libheat.a
heat_seq: CMakeFiles/heat_seq.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/mnt/netta/users/qartigala/Bureau/heat/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable heat_seq"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/heat_seq.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/heat_seq.dir/build: heat_seq
.PHONY : CMakeFiles/heat_seq.dir/build

CMakeFiles/heat_seq.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/heat_seq.dir/cmake_clean.cmake
.PHONY : CMakeFiles/heat_seq.dir/clean

CMakeFiles/heat_seq.dir/depend:
	cd /mnt/netta/users/qartigala/Bureau/heat/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/netta/users/qartigala/Bureau/heat /mnt/netta/users/qartigala/Bureau/heat /mnt/netta/users/qartigala/Bureau/heat/build /mnt/netta/users/qartigala/Bureau/heat/build /mnt/netta/users/qartigala/Bureau/heat/build/CMakeFiles/heat_seq.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/heat_seq.dir/depend
