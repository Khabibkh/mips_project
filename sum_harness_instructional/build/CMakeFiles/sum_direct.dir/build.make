# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.27

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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.27.7/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.27.7/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/khabibullokhujamberdiev/Desktop/mips_project/sum_harness_instructional

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/khabibullokhujamberdiev/Desktop/mips_project/sum_harness_instructional/build

# Include any dependencies generated for this target.
include CMakeFiles/sum_direct.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/sum_direct.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/sum_direct.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/sum_direct.dir/flags.make

CMakeFiles/sum_direct.dir/sum_direct.cpp.o: CMakeFiles/sum_direct.dir/flags.make
CMakeFiles/sum_direct.dir/sum_direct.cpp.o: /Users/khabibullokhujamberdiev/Desktop/mips_project/sum_harness_instructional/sum_direct.cpp
CMakeFiles/sum_direct.dir/sum_direct.cpp.o: CMakeFiles/sum_direct.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/khabibullokhujamberdiev/Desktop/mips_project/sum_harness_instructional/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/sum_direct.dir/sum_direct.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/sum_direct.dir/sum_direct.cpp.o -MF CMakeFiles/sum_direct.dir/sum_direct.cpp.o.d -o CMakeFiles/sum_direct.dir/sum_direct.cpp.o -c /Users/khabibullokhujamberdiev/Desktop/mips_project/sum_harness_instructional/sum_direct.cpp

CMakeFiles/sum_direct.dir/sum_direct.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/sum_direct.dir/sum_direct.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/khabibullokhujamberdiev/Desktop/mips_project/sum_harness_instructional/sum_direct.cpp > CMakeFiles/sum_direct.dir/sum_direct.cpp.i

CMakeFiles/sum_direct.dir/sum_direct.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/sum_direct.dir/sum_direct.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/khabibullokhujamberdiev/Desktop/mips_project/sum_harness_instructional/sum_direct.cpp -o CMakeFiles/sum_direct.dir/sum_direct.cpp.s

# Object files for target sum_direct
sum_direct_OBJECTS = \
"CMakeFiles/sum_direct.dir/sum_direct.cpp.o"

# External object files for target sum_direct
sum_direct_EXTERNAL_OBJECTS = \
"/Users/khabibullokhujamberdiev/Desktop/mips_project/sum_harness_instructional/build/CMakeFiles/benchmark.dir/benchmark.cpp.o"

sum_direct: CMakeFiles/sum_direct.dir/sum_direct.cpp.o
sum_direct: CMakeFiles/benchmark.dir/benchmark.cpp.o
sum_direct: CMakeFiles/sum_direct.dir/build.make
sum_direct: CMakeFiles/sum_direct.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/khabibullokhujamberdiev/Desktop/mips_project/sum_harness_instructional/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable sum_direct"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sum_direct.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/sum_direct.dir/build: sum_direct
.PHONY : CMakeFiles/sum_direct.dir/build

CMakeFiles/sum_direct.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/sum_direct.dir/cmake_clean.cmake
.PHONY : CMakeFiles/sum_direct.dir/clean

CMakeFiles/sum_direct.dir/depend:
	cd /Users/khabibullokhujamberdiev/Desktop/mips_project/sum_harness_instructional/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/khabibullokhujamberdiev/Desktop/mips_project/sum_harness_instructional /Users/khabibullokhujamberdiev/Desktop/mips_project/sum_harness_instructional /Users/khabibullokhujamberdiev/Desktop/mips_project/sum_harness_instructional/build /Users/khabibullokhujamberdiev/Desktop/mips_project/sum_harness_instructional/build /Users/khabibullokhujamberdiev/Desktop/mips_project/sum_harness_instructional/build/CMakeFiles/sum_direct.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/sum_direct.dir/depend

