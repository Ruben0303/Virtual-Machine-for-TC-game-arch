# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.18

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
CMAKE_SOURCE_DIR = /home/ruben/Desktop/Homeworks/MY_EMU

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ruben/Desktop/Homeworks/MY_EMU/build

# Include any dependencies generated for this target.
include CMakeFiles/emu.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/emu.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/emu.dir/flags.make

CMakeFiles/emu.dir/test_run/TEST.cpp.o: CMakeFiles/emu.dir/flags.make
CMakeFiles/emu.dir/test_run/TEST.cpp.o: ../test_run/TEST.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ruben/Desktop/Homeworks/MY_EMU/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/emu.dir/test_run/TEST.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/emu.dir/test_run/TEST.cpp.o -c /home/ruben/Desktop/Homeworks/MY_EMU/test_run/TEST.cpp

CMakeFiles/emu.dir/test_run/TEST.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/emu.dir/test_run/TEST.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ruben/Desktop/Homeworks/MY_EMU/test_run/TEST.cpp > CMakeFiles/emu.dir/test_run/TEST.cpp.i

CMakeFiles/emu.dir/test_run/TEST.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/emu.dir/test_run/TEST.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ruben/Desktop/Homeworks/MY_EMU/test_run/TEST.cpp -o CMakeFiles/emu.dir/test_run/TEST.cpp.s

CMakeFiles/emu.dir/lib/emu.cpp.o: CMakeFiles/emu.dir/flags.make
CMakeFiles/emu.dir/lib/emu.cpp.o: ../lib/emu.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ruben/Desktop/Homeworks/MY_EMU/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/emu.dir/lib/emu.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/emu.dir/lib/emu.cpp.o -c /home/ruben/Desktop/Homeworks/MY_EMU/lib/emu.cpp

CMakeFiles/emu.dir/lib/emu.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/emu.dir/lib/emu.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ruben/Desktop/Homeworks/MY_EMU/lib/emu.cpp > CMakeFiles/emu.dir/lib/emu.cpp.i

CMakeFiles/emu.dir/lib/emu.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/emu.dir/lib/emu.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ruben/Desktop/Homeworks/MY_EMU/lib/emu.cpp -o CMakeFiles/emu.dir/lib/emu.cpp.s

CMakeFiles/emu.dir/lib/emu_runner.cpp.o: CMakeFiles/emu.dir/flags.make
CMakeFiles/emu.dir/lib/emu_runner.cpp.o: ../lib/emu_runner.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ruben/Desktop/Homeworks/MY_EMU/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/emu.dir/lib/emu_runner.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/emu.dir/lib/emu_runner.cpp.o -c /home/ruben/Desktop/Homeworks/MY_EMU/lib/emu_runner.cpp

CMakeFiles/emu.dir/lib/emu_runner.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/emu.dir/lib/emu_runner.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ruben/Desktop/Homeworks/MY_EMU/lib/emu_runner.cpp > CMakeFiles/emu.dir/lib/emu_runner.cpp.i

CMakeFiles/emu.dir/lib/emu_runner.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/emu.dir/lib/emu_runner.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ruben/Desktop/Homeworks/MY_EMU/lib/emu_runner.cpp -o CMakeFiles/emu.dir/lib/emu_runner.cpp.s

# Object files for target emu
emu_OBJECTS = \
"CMakeFiles/emu.dir/test_run/TEST.cpp.o" \
"CMakeFiles/emu.dir/lib/emu.cpp.o" \
"CMakeFiles/emu.dir/lib/emu_runner.cpp.o"

# External object files for target emu
emu_EXTERNAL_OBJECTS =

emu: CMakeFiles/emu.dir/test_run/TEST.cpp.o
emu: CMakeFiles/emu.dir/lib/emu.cpp.o
emu: CMakeFiles/emu.dir/lib/emu_runner.cpp.o
emu: CMakeFiles/emu.dir/build.make
emu: CMakeFiles/emu.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ruben/Desktop/Homeworks/MY_EMU/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable emu"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/emu.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/emu.dir/build: emu

.PHONY : CMakeFiles/emu.dir/build

CMakeFiles/emu.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/emu.dir/cmake_clean.cmake
.PHONY : CMakeFiles/emu.dir/clean

CMakeFiles/emu.dir/depend:
	cd /home/ruben/Desktop/Homeworks/MY_EMU/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ruben/Desktop/Homeworks/MY_EMU /home/ruben/Desktop/Homeworks/MY_EMU /home/ruben/Desktop/Homeworks/MY_EMU/build /home/ruben/Desktop/Homeworks/MY_EMU/build /home/ruben/Desktop/Homeworks/MY_EMU/build/CMakeFiles/emu.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/emu.dir/depend

