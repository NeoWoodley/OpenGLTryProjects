# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.13

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/neowoodley/Projects/CLionProjects/Try4

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/neowoodley/Projects/CLionProjects/Try4/cmake-build-debug

# Include any dependencies generated for this target.
include external/glfw-3.1.2/tests/CMakeFiles/empty.dir/depend.make

# Include the progress variables for this target.
include external/glfw-3.1.2/tests/CMakeFiles/empty.dir/progress.make

# Include the compile flags for this target's objects.
include external/glfw-3.1.2/tests/CMakeFiles/empty.dir/flags.make

external/glfw-3.1.2/tests/CMakeFiles/empty.dir/empty.c.o: external/glfw-3.1.2/tests/CMakeFiles/empty.dir/flags.make
external/glfw-3.1.2/tests/CMakeFiles/empty.dir/empty.c.o: ../external/glfw-3.1.2/tests/empty.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/neowoodley/Projects/CLionProjects/Try4/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object external/glfw-3.1.2/tests/CMakeFiles/empty.dir/empty.c.o"
	cd /Users/neowoodley/Projects/CLionProjects/Try4/cmake-build-debug/external/glfw-3.1.2/tests && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/empty.dir/empty.c.o   -c /Users/neowoodley/Projects/CLionProjects/Try4/external/glfw-3.1.2/tests/empty.c

external/glfw-3.1.2/tests/CMakeFiles/empty.dir/empty.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/empty.dir/empty.c.i"
	cd /Users/neowoodley/Projects/CLionProjects/Try4/cmake-build-debug/external/glfw-3.1.2/tests && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/neowoodley/Projects/CLionProjects/Try4/external/glfw-3.1.2/tests/empty.c > CMakeFiles/empty.dir/empty.c.i

external/glfw-3.1.2/tests/CMakeFiles/empty.dir/empty.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/empty.dir/empty.c.s"
	cd /Users/neowoodley/Projects/CLionProjects/Try4/cmake-build-debug/external/glfw-3.1.2/tests && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/neowoodley/Projects/CLionProjects/Try4/external/glfw-3.1.2/tests/empty.c -o CMakeFiles/empty.dir/empty.c.s

external/glfw-3.1.2/tests/CMakeFiles/empty.dir/__/deps/tinycthread.c.o: external/glfw-3.1.2/tests/CMakeFiles/empty.dir/flags.make
external/glfw-3.1.2/tests/CMakeFiles/empty.dir/__/deps/tinycthread.c.o: ../external/glfw-3.1.2/deps/tinycthread.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/neowoodley/Projects/CLionProjects/Try4/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object external/glfw-3.1.2/tests/CMakeFiles/empty.dir/__/deps/tinycthread.c.o"
	cd /Users/neowoodley/Projects/CLionProjects/Try4/cmake-build-debug/external/glfw-3.1.2/tests && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/empty.dir/__/deps/tinycthread.c.o   -c /Users/neowoodley/Projects/CLionProjects/Try4/external/glfw-3.1.2/deps/tinycthread.c

external/glfw-3.1.2/tests/CMakeFiles/empty.dir/__/deps/tinycthread.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/empty.dir/__/deps/tinycthread.c.i"
	cd /Users/neowoodley/Projects/CLionProjects/Try4/cmake-build-debug/external/glfw-3.1.2/tests && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/neowoodley/Projects/CLionProjects/Try4/external/glfw-3.1.2/deps/tinycthread.c > CMakeFiles/empty.dir/__/deps/tinycthread.c.i

external/glfw-3.1.2/tests/CMakeFiles/empty.dir/__/deps/tinycthread.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/empty.dir/__/deps/tinycthread.c.s"
	cd /Users/neowoodley/Projects/CLionProjects/Try4/cmake-build-debug/external/glfw-3.1.2/tests && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/neowoodley/Projects/CLionProjects/Try4/external/glfw-3.1.2/deps/tinycthread.c -o CMakeFiles/empty.dir/__/deps/tinycthread.c.s

# Object files for target empty
empty_OBJECTS = \
"CMakeFiles/empty.dir/empty.c.o" \
"CMakeFiles/empty.dir/__/deps/tinycthread.c.o"

# External object files for target empty
empty_EXTERNAL_OBJECTS =

external/glfw-3.1.2/tests/empty.app/Contents/MacOS/empty: external/glfw-3.1.2/tests/CMakeFiles/empty.dir/empty.c.o
external/glfw-3.1.2/tests/empty.app/Contents/MacOS/empty: external/glfw-3.1.2/tests/CMakeFiles/empty.dir/__/deps/tinycthread.c.o
external/glfw-3.1.2/tests/empty.app/Contents/MacOS/empty: external/glfw-3.1.2/tests/CMakeFiles/empty.dir/build.make
external/glfw-3.1.2/tests/empty.app/Contents/MacOS/empty: external/glfw-3.1.2/src/libglfw3.a
external/glfw-3.1.2/tests/empty.app/Contents/MacOS/empty: external/glfw-3.1.2/tests/CMakeFiles/empty.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/neowoodley/Projects/CLionProjects/Try4/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable empty.app/Contents/MacOS/empty"
	cd /Users/neowoodley/Projects/CLionProjects/Try4/cmake-build-debug/external/glfw-3.1.2/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/empty.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
external/glfw-3.1.2/tests/CMakeFiles/empty.dir/build: external/glfw-3.1.2/tests/empty.app/Contents/MacOS/empty

.PHONY : external/glfw-3.1.2/tests/CMakeFiles/empty.dir/build

external/glfw-3.1.2/tests/CMakeFiles/empty.dir/clean:
	cd /Users/neowoodley/Projects/CLionProjects/Try4/cmake-build-debug/external/glfw-3.1.2/tests && $(CMAKE_COMMAND) -P CMakeFiles/empty.dir/cmake_clean.cmake
.PHONY : external/glfw-3.1.2/tests/CMakeFiles/empty.dir/clean

external/glfw-3.1.2/tests/CMakeFiles/empty.dir/depend:
	cd /Users/neowoodley/Projects/CLionProjects/Try4/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/neowoodley/Projects/CLionProjects/Try4 /Users/neowoodley/Projects/CLionProjects/Try4/external/glfw-3.1.2/tests /Users/neowoodley/Projects/CLionProjects/Try4/cmake-build-debug /Users/neowoodley/Projects/CLionProjects/Try4/cmake-build-debug/external/glfw-3.1.2/tests /Users/neowoodley/Projects/CLionProjects/Try4/cmake-build-debug/external/glfw-3.1.2/tests/CMakeFiles/empty.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : external/glfw-3.1.2/tests/CMakeFiles/empty.dir/depend

