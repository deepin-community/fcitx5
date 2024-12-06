# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.30

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

# Produce verbose output by default.
VERBOSE = 1

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
CMAKE_SOURCE_DIR = /home/xzl/work/fcitx5/fcitx5

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/xzl/work/fcitx5/fcitx5/obj-x86_64-linux-gnu

# Include any dependencies generated for this target.
include src/tools/CMakeFiles/fcitx5-wayland-launcher.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/tools/CMakeFiles/fcitx5-wayland-launcher.dir/compiler_depend.make

# Include the progress variables for this target.
include src/tools/CMakeFiles/fcitx5-wayland-launcher.dir/progress.make

# Include the compile flags for this target's objects.
include src/tools/CMakeFiles/fcitx5-wayland-launcher.dir/flags.make

src/tools/CMakeFiles/fcitx5-wayland-launcher.dir/wayland-launcher.cpp.o: src/tools/CMakeFiles/fcitx5-wayland-launcher.dir/flags.make
src/tools/CMakeFiles/fcitx5-wayland-launcher.dir/wayland-launcher.cpp.o: /home/xzl/work/fcitx5/fcitx5/src/tools/wayland-launcher.cpp
src/tools/CMakeFiles/fcitx5-wayland-launcher.dir/wayland-launcher.cpp.o: src/tools/CMakeFiles/fcitx5-wayland-launcher.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/xzl/work/fcitx5/fcitx5/obj-x86_64-linux-gnu/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/tools/CMakeFiles/fcitx5-wayland-launcher.dir/wayland-launcher.cpp.o"
	cd /home/xzl/work/fcitx5/fcitx5/obj-x86_64-linux-gnu/src/tools && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/tools/CMakeFiles/fcitx5-wayland-launcher.dir/wayland-launcher.cpp.o -MF CMakeFiles/fcitx5-wayland-launcher.dir/wayland-launcher.cpp.o.d -o CMakeFiles/fcitx5-wayland-launcher.dir/wayland-launcher.cpp.o -c /home/xzl/work/fcitx5/fcitx5/src/tools/wayland-launcher.cpp

src/tools/CMakeFiles/fcitx5-wayland-launcher.dir/wayland-launcher.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/fcitx5-wayland-launcher.dir/wayland-launcher.cpp.i"
	cd /home/xzl/work/fcitx5/fcitx5/obj-x86_64-linux-gnu/src/tools && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/xzl/work/fcitx5/fcitx5/src/tools/wayland-launcher.cpp > CMakeFiles/fcitx5-wayland-launcher.dir/wayland-launcher.cpp.i

src/tools/CMakeFiles/fcitx5-wayland-launcher.dir/wayland-launcher.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/fcitx5-wayland-launcher.dir/wayland-launcher.cpp.s"
	cd /home/xzl/work/fcitx5/fcitx5/obj-x86_64-linux-gnu/src/tools && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/xzl/work/fcitx5/fcitx5/src/tools/wayland-launcher.cpp -o CMakeFiles/fcitx5-wayland-launcher.dir/wayland-launcher.cpp.s

# Object files for target fcitx5-wayland-launcher
fcitx5__wayland__launcher_OBJECTS = \
"CMakeFiles/fcitx5-wayland-launcher.dir/wayland-launcher.cpp.o"

# External object files for target fcitx5-wayland-launcher
fcitx5__wayland__launcher_EXTERNAL_OBJECTS =

src/tools/fcitx5-wayland-launcher: src/tools/CMakeFiles/fcitx5-wayland-launcher.dir/wayland-launcher.cpp.o
src/tools/fcitx5-wayland-launcher: src/tools/CMakeFiles/fcitx5-wayland-launcher.dir/build.make
src/tools/fcitx5-wayland-launcher: src/lib/fcitx-utils/libFcitx5Utils.so.5.0.21
src/tools/fcitx5-wayland-launcher: src/tools/CMakeFiles/fcitx5-wayland-launcher.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/xzl/work/fcitx5/fcitx5/obj-x86_64-linux-gnu/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable fcitx5-wayland-launcher"
	cd /home/xzl/work/fcitx5/fcitx5/obj-x86_64-linux-gnu/src/tools && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/fcitx5-wayland-launcher.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/tools/CMakeFiles/fcitx5-wayland-launcher.dir/build: src/tools/fcitx5-wayland-launcher
.PHONY : src/tools/CMakeFiles/fcitx5-wayland-launcher.dir/build

src/tools/CMakeFiles/fcitx5-wayland-launcher.dir/clean:
	cd /home/xzl/work/fcitx5/fcitx5/obj-x86_64-linux-gnu/src/tools && $(CMAKE_COMMAND) -P CMakeFiles/fcitx5-wayland-launcher.dir/cmake_clean.cmake
.PHONY : src/tools/CMakeFiles/fcitx5-wayland-launcher.dir/clean

src/tools/CMakeFiles/fcitx5-wayland-launcher.dir/depend:
	cd /home/xzl/work/fcitx5/fcitx5/obj-x86_64-linux-gnu && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/xzl/work/fcitx5/fcitx5 /home/xzl/work/fcitx5/fcitx5/src/tools /home/xzl/work/fcitx5/fcitx5/obj-x86_64-linux-gnu /home/xzl/work/fcitx5/fcitx5/obj-x86_64-linux-gnu/src/tools /home/xzl/work/fcitx5/fcitx5/obj-x86_64-linux-gnu/src/tools/CMakeFiles/fcitx5-wayland-launcher.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : src/tools/CMakeFiles/fcitx5-wayland-launcher.dir/depend
