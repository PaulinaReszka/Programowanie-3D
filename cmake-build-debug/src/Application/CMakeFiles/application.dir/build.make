# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.17

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

# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2020.2.4\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2020.2.4\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\Paulina\Desktop\3dexamples\Programowanie-3D

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\Paulina\Desktop\3dexamples\Programowanie-3D\cmake-build-debug

# Include any dependencies generated for this target.
include src/Application/CMakeFiles/application.dir/depend.make

# Include the progress variables for this target.
include src/Application/CMakeFiles/application.dir/progress.make

# Include the compile flags for this target's objects.
include src/Application/CMakeFiles/application.dir/flags.make

src/Application/CMakeFiles/application.dir/application.cpp.obj: src/Application/CMakeFiles/application.dir/flags.make
src/Application/CMakeFiles/application.dir/application.cpp.obj: src/Application/CMakeFiles/application.dir/includes_CXX.rsp
src/Application/CMakeFiles/application.dir/application.cpp.obj: ../src/Application/application.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Paulina\Desktop\3dexamples\Programowanie-3D\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/Application/CMakeFiles/application.dir/application.cpp.obj"
	cd /d C:\Users\Paulina\Desktop\3dexamples\Programowanie-3D\cmake-build-debug\src\Application && C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\application.dir\application.cpp.obj -c C:\Users\Paulina\Desktop\3dexamples\Programowanie-3D\src\Application\application.cpp

src/Application/CMakeFiles/application.dir/application.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/application.dir/application.cpp.i"
	cd /d C:\Users\Paulina\Desktop\3dexamples\Programowanie-3D\cmake-build-debug\src\Application && C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Paulina\Desktop\3dexamples\Programowanie-3D\src\Application\application.cpp > CMakeFiles\application.dir\application.cpp.i

src/Application/CMakeFiles/application.dir/application.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/application.dir/application.cpp.s"
	cd /d C:\Users\Paulina\Desktop\3dexamples\Programowanie-3D\cmake-build-debug\src\Application && C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\Paulina\Desktop\3dexamples\Programowanie-3D\src\Application\application.cpp -o CMakeFiles\application.dir\application.cpp.s

src/Application/CMakeFiles/application.dir/utils.cpp.obj: src/Application/CMakeFiles/application.dir/flags.make
src/Application/CMakeFiles/application.dir/utils.cpp.obj: src/Application/CMakeFiles/application.dir/includes_CXX.rsp
src/Application/CMakeFiles/application.dir/utils.cpp.obj: ../src/Application/utils.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Paulina\Desktop\3dexamples\Programowanie-3D\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/Application/CMakeFiles/application.dir/utils.cpp.obj"
	cd /d C:\Users\Paulina\Desktop\3dexamples\Programowanie-3D\cmake-build-debug\src\Application && C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\application.dir\utils.cpp.obj -c C:\Users\Paulina\Desktop\3dexamples\Programowanie-3D\src\Application\utils.cpp

src/Application/CMakeFiles/application.dir/utils.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/application.dir/utils.cpp.i"
	cd /d C:\Users\Paulina\Desktop\3dexamples\Programowanie-3D\cmake-build-debug\src\Application && C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Paulina\Desktop\3dexamples\Programowanie-3D\src\Application\utils.cpp > CMakeFiles\application.dir\utils.cpp.i

src/Application/CMakeFiles/application.dir/utils.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/application.dir/utils.cpp.s"
	cd /d C:\Users\Paulina\Desktop\3dexamples\Programowanie-3D\cmake-build-debug\src\Application && C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\Paulina\Desktop\3dexamples\Programowanie-3D\src\Application\utils.cpp -o CMakeFiles\application.dir\utils.cpp.s

# Object files for target application
application_OBJECTS = \
"CMakeFiles/application.dir/application.cpp.obj" \
"CMakeFiles/application.dir/utils.cpp.obj"

# External object files for target application
application_EXTERNAL_OBJECTS =

src/Application/libapplication.a: src/Application/CMakeFiles/application.dir/application.cpp.obj
src/Application/libapplication.a: src/Application/CMakeFiles/application.dir/utils.cpp.obj
src/Application/libapplication.a: src/Application/CMakeFiles/application.dir/build.make
src/Application/libapplication.a: src/Application/CMakeFiles/application.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\Paulina\Desktop\3dexamples\Programowanie-3D\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX static library libapplication.a"
	cd /d C:\Users\Paulina\Desktop\3dexamples\Programowanie-3D\cmake-build-debug\src\Application && $(CMAKE_COMMAND) -P CMakeFiles\application.dir\cmake_clean_target.cmake
	cd /d C:\Users\Paulina\Desktop\3dexamples\Programowanie-3D\cmake-build-debug\src\Application && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\application.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/Application/CMakeFiles/application.dir/build: src/Application/libapplication.a

.PHONY : src/Application/CMakeFiles/application.dir/build

src/Application/CMakeFiles/application.dir/clean:
	cd /d C:\Users\Paulina\Desktop\3dexamples\Programowanie-3D\cmake-build-debug\src\Application && $(CMAKE_COMMAND) -P CMakeFiles\application.dir\cmake_clean.cmake
.PHONY : src/Application/CMakeFiles/application.dir/clean

src/Application/CMakeFiles/application.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\Paulina\Desktop\3dexamples\Programowanie-3D C:\Users\Paulina\Desktop\3dexamples\Programowanie-3D\src\Application C:\Users\Paulina\Desktop\3dexamples\Programowanie-3D\cmake-build-debug C:\Users\Paulina\Desktop\3dexamples\Programowanie-3D\cmake-build-debug\src\Application C:\Users\Paulina\Desktop\3dexamples\Programowanie-3D\cmake-build-debug\src\Application\CMakeFiles\application.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : src/Application/CMakeFiles/application.dir/depend
