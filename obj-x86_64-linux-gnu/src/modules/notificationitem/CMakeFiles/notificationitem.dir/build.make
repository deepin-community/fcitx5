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
include src/modules/notificationitem/CMakeFiles/notificationitem.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/modules/notificationitem/CMakeFiles/notificationitem.dir/compiler_depend.make

# Include the progress variables for this target.
include src/modules/notificationitem/CMakeFiles/notificationitem.dir/progress.make

# Include the compile flags for this target's objects.
include src/modules/notificationitem/CMakeFiles/notificationitem.dir/flags.make

src/modules/notificationitem/CMakeFiles/notificationitem.dir/notificationitem.cpp.o: src/modules/notificationitem/CMakeFiles/notificationitem.dir/flags.make
src/modules/notificationitem/CMakeFiles/notificationitem.dir/notificationitem.cpp.o: /home/xzl/work/fcitx5/fcitx5/src/modules/notificationitem/notificationitem.cpp
src/modules/notificationitem/CMakeFiles/notificationitem.dir/notificationitem.cpp.o: src/modules/notificationitem/CMakeFiles/notificationitem.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/xzl/work/fcitx5/fcitx5/obj-x86_64-linux-gnu/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/modules/notificationitem/CMakeFiles/notificationitem.dir/notificationitem.cpp.o"
	cd /home/xzl/work/fcitx5/fcitx5/obj-x86_64-linux-gnu/src/modules/notificationitem && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/modules/notificationitem/CMakeFiles/notificationitem.dir/notificationitem.cpp.o -MF CMakeFiles/notificationitem.dir/notificationitem.cpp.o.d -o CMakeFiles/notificationitem.dir/notificationitem.cpp.o -c /home/xzl/work/fcitx5/fcitx5/src/modules/notificationitem/notificationitem.cpp

src/modules/notificationitem/CMakeFiles/notificationitem.dir/notificationitem.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/notificationitem.dir/notificationitem.cpp.i"
	cd /home/xzl/work/fcitx5/fcitx5/obj-x86_64-linux-gnu/src/modules/notificationitem && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/xzl/work/fcitx5/fcitx5/src/modules/notificationitem/notificationitem.cpp > CMakeFiles/notificationitem.dir/notificationitem.cpp.i

src/modules/notificationitem/CMakeFiles/notificationitem.dir/notificationitem.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/notificationitem.dir/notificationitem.cpp.s"
	cd /home/xzl/work/fcitx5/fcitx5/obj-x86_64-linux-gnu/src/modules/notificationitem && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/xzl/work/fcitx5/fcitx5/src/modules/notificationitem/notificationitem.cpp -o CMakeFiles/notificationitem.dir/notificationitem.cpp.s

src/modules/notificationitem/CMakeFiles/notificationitem.dir/dbusmenu.cpp.o: src/modules/notificationitem/CMakeFiles/notificationitem.dir/flags.make
src/modules/notificationitem/CMakeFiles/notificationitem.dir/dbusmenu.cpp.o: /home/xzl/work/fcitx5/fcitx5/src/modules/notificationitem/dbusmenu.cpp
src/modules/notificationitem/CMakeFiles/notificationitem.dir/dbusmenu.cpp.o: src/modules/notificationitem/CMakeFiles/notificationitem.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/xzl/work/fcitx5/fcitx5/obj-x86_64-linux-gnu/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/modules/notificationitem/CMakeFiles/notificationitem.dir/dbusmenu.cpp.o"
	cd /home/xzl/work/fcitx5/fcitx5/obj-x86_64-linux-gnu/src/modules/notificationitem && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/modules/notificationitem/CMakeFiles/notificationitem.dir/dbusmenu.cpp.o -MF CMakeFiles/notificationitem.dir/dbusmenu.cpp.o.d -o CMakeFiles/notificationitem.dir/dbusmenu.cpp.o -c /home/xzl/work/fcitx5/fcitx5/src/modules/notificationitem/dbusmenu.cpp

src/modules/notificationitem/CMakeFiles/notificationitem.dir/dbusmenu.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/notificationitem.dir/dbusmenu.cpp.i"
	cd /home/xzl/work/fcitx5/fcitx5/obj-x86_64-linux-gnu/src/modules/notificationitem && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/xzl/work/fcitx5/fcitx5/src/modules/notificationitem/dbusmenu.cpp > CMakeFiles/notificationitem.dir/dbusmenu.cpp.i

src/modules/notificationitem/CMakeFiles/notificationitem.dir/dbusmenu.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/notificationitem.dir/dbusmenu.cpp.s"
	cd /home/xzl/work/fcitx5/fcitx5/obj-x86_64-linux-gnu/src/modules/notificationitem && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/xzl/work/fcitx5/fcitx5/src/modules/notificationitem/dbusmenu.cpp -o CMakeFiles/notificationitem.dir/dbusmenu.cpp.s

# Object files for target notificationitem
notificationitem_OBJECTS = \
"CMakeFiles/notificationitem.dir/notificationitem.cpp.o" \
"CMakeFiles/notificationitem.dir/dbusmenu.cpp.o"

# External object files for target notificationitem
notificationitem_EXTERNAL_OBJECTS =

src/modules/notificationitem/libnotificationitem.so: src/modules/notificationitem/CMakeFiles/notificationitem.dir/notificationitem.cpp.o
src/modules/notificationitem/libnotificationitem.so: src/modules/notificationitem/CMakeFiles/notificationitem.dir/dbusmenu.cpp.o
src/modules/notificationitem/libnotificationitem.so: src/modules/notificationitem/CMakeFiles/notificationitem.dir/build.make
src/modules/notificationitem/libnotificationitem.so: src/lib/fcitx/libFcitx5Core.so.5.0.21
src/modules/notificationitem/libnotificationitem.so: src/lib/fcitx-config/libFcitx5Config.so.5.0.21
src/modules/notificationitem/libnotificationitem.so: src/lib/fcitx-utils/libFcitx5Utils.so.5.0.21
src/modules/notificationitem/libnotificationitem.so: src/modules/notificationitem/CMakeFiles/notificationitem.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/xzl/work/fcitx5/fcitx5/obj-x86_64-linux-gnu/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX shared module libnotificationitem.so"
	cd /home/xzl/work/fcitx5/fcitx5/obj-x86_64-linux-gnu/src/modules/notificationitem && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/notificationitem.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/modules/notificationitem/CMakeFiles/notificationitem.dir/build: src/modules/notificationitem/libnotificationitem.so
.PHONY : src/modules/notificationitem/CMakeFiles/notificationitem.dir/build

src/modules/notificationitem/CMakeFiles/notificationitem.dir/clean:
	cd /home/xzl/work/fcitx5/fcitx5/obj-x86_64-linux-gnu/src/modules/notificationitem && $(CMAKE_COMMAND) -P CMakeFiles/notificationitem.dir/cmake_clean.cmake
.PHONY : src/modules/notificationitem/CMakeFiles/notificationitem.dir/clean

src/modules/notificationitem/CMakeFiles/notificationitem.dir/depend:
	cd /home/xzl/work/fcitx5/fcitx5/obj-x86_64-linux-gnu && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/xzl/work/fcitx5/fcitx5 /home/xzl/work/fcitx5/fcitx5/src/modules/notificationitem /home/xzl/work/fcitx5/fcitx5/obj-x86_64-linux-gnu /home/xzl/work/fcitx5/fcitx5/obj-x86_64-linux-gnu/src/modules/notificationitem /home/xzl/work/fcitx5/fcitx5/obj-x86_64-linux-gnu/src/modules/notificationitem/CMakeFiles/notificationitem.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : src/modules/notificationitem/CMakeFiles/notificationitem.dir/depend
