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
CMAKE_SOURCE_DIR = C:\Users\Paulina\Desktop\3dexamples\Programowanie-3D\3DGraphicsExamples

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\Paulina\Desktop\3dexamples\Programowanie-3D\3DGraphicsExamples\cmake-build-debug

# Include any dependencies generated for this target.
include src/Exercises/Colors/CMakeFiles/Colors.dir/depend.make

# Include the progress variables for this target.
include src/Exercises/Colors/CMakeFiles/Colors.dir/progress.make

# Include the compile flags for this target's objects.
include src/Exercises/Colors/CMakeFiles/Colors.dir/flags.make

src/Exercises/Colors/CMakeFiles/Colors.dir/main.cpp.obj: src/Exercises/Colors/CMakeFiles/Colors.dir/flags.make
src/Exercises/Colors/CMakeFiles/Colors.dir/main.cpp.obj: src/Exercises/Colors/CMakeFiles/Colors.dir/includes_CXX.rsp
src/Exercises/Colors/CMakeFiles/Colors.dir/main.cpp.obj: ../src/Exercises/Colors/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Paulina\Desktop\3dexamples\Programowanie-3D\3DGraphicsExamples\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/Exercises/Colors/CMakeFiles/Colors.dir/main.cpp.obj"
	cd /d C:\Users\Paulina\Desktop\3dexamples\Programowanie-3D\3DGraphicsExamples\cmake-build-debug\src\Exercises\Colors && C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\Colors.dir\main.cpp.obj -c C:\Users\Paulina\Desktop\3dexamples\Programowanie-3D\3DGraphicsExamples\src\Exercises\Colors\main.cpp

src/Exercises/Colors/CMakeFiles/Colors.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Colors.dir/main.cpp.i"
	cd /d C:\Users\Paulina\Desktop\3dexamples\Programowanie-3D\3DGraphicsExamples\cmake-build-debug\src\Exercises\Colors && C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Paulina\Desktop\3dexamples\Programowanie-3D\3DGraphicsExamples\src\Exercises\Colors\main.cpp > CMakeFiles\Colors.dir\main.cpp.i

src/Exercises/Colors/CMakeFiles/Colors.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Colors.dir/main.cpp.s"
	cd /d C:\Users\Paulina\Desktop\3dexamples\Programowanie-3D\3DGraphicsExamples\cmake-build-debug\src\Exercises\Colors && C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\Paulina\Desktop\3dexamples\Programowanie-3D\3DGraphicsExamples\src\Exercises\Colors\main.cpp -o CMakeFiles\Colors.dir\main.cpp.s

src/Exercises/Colors/CMakeFiles/Colors.dir/app.cpp.obj: src/Exercises/Colors/CMakeFiles/Colors.dir/flags.make
src/Exercises/Colors/CMakeFiles/Colors.dir/app.cpp.obj: src/Exercises/Colors/CMakeFiles/Colors.dir/includes_CXX.rsp
src/Exercises/Colors/CMakeFiles/Colors.dir/app.cpp.obj: ../src/Exercises/Colors/app.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Paulina\Desktop\3dexamples\Programowanie-3D\3DGraphicsExamples\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/Exercises/Colors/CMakeFiles/Colors.dir/app.cpp.obj"
	cd /d C:\Users\Paulina\Desktop\3dexamples\Programowanie-3D\3DGraphicsExamples\cmake-build-debug\src\Exercises\Colors && C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\Colors.dir\app.cpp.obj -c C:\Users\Paulina\Desktop\3dexamples\Programowanie-3D\3DGraphicsExamples\src\Exercises\Colors\app.cpp

src/Exercises/Colors/CMakeFiles/Colors.dir/app.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Colors.dir/app.cpp.i"
	cd /d C:\Users\Paulina\Desktop\3dexamples\Programowanie-3D\3DGraphicsExamples\cmake-build-debug\src\Exercises\Colors && C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Paulina\Desktop\3dexamples\Programowanie-3D\3DGraphicsExamples\src\Exercises\Colors\app.cpp > CMakeFiles\Colors.dir\app.cpp.i

src/Exercises/Colors/CMakeFiles/Colors.dir/app.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Colors.dir/app.cpp.s"
	cd /d C:\Users\Paulina\Desktop\3dexamples\Programowanie-3D\3DGraphicsExamples\cmake-build-debug\src\Exercises\Colors && C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\Paulina\Desktop\3dexamples\Programowanie-3D\3DGraphicsExamples\src\Exercises\Colors\app.cpp -o CMakeFiles\Colors.dir\app.cpp.s

# Object files for target Colors
Colors_OBJECTS = \
"CMakeFiles/Colors.dir/main.cpp.obj" \
"CMakeFiles/Colors.dir/app.cpp.obj"

# External object files for target Colors
Colors_EXTERNAL_OBJECTS = \
"C:/Users/Paulina/Desktop/3dexamples/Programowanie-3D/3DGraphicsExamples/cmake-build-debug/CMakeFiles/glad.dir/src/3rdParty/src/glad/glad.c.obj"

src/Exercises/Colors/Colors.exe: src/Exercises/Colors/CMakeFiles/Colors.dir/main.cpp.obj
src/Exercises/Colors/Colors.exe: src/Exercises/Colors/CMakeFiles/Colors.dir/app.cpp.obj
src/Exercises/Colors/Colors.exe: CMakeFiles/glad.dir/src/3rdParty/src/glad/glad.c.obj
src/Exercises/Colors/Colors.exe: src/Exercises/Colors/CMakeFiles/Colors.dir/build.make
src/Exercises/Colors/Colors.exe: src/3rdParty/src/glfw3/src/libglfw3.a
src/Exercises/Colors/Colors.exe: src/Application/libapplication.a
src/Exercises/Colors/Colors.exe: src/3rdParty/src/glfw3/src/libglfw3.a
src/Exercises/Colors/Colors.exe: src/Exercises/Colors/CMakeFiles/Colors.dir/linklibs.rsp
src/Exercises/Colors/Colors.exe: src/Exercises/Colors/CMakeFiles/Colors.dir/objects1.rsp
src/Exercises/Colors/Colors.exe: src/Exercises/Colors/CMakeFiles/Colors.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\Paulina\Desktop\3dexamples\Programowanie-3D\3DGraphicsExamples\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable Colors.exe"
	cd /d C:\Users\Paulina\Desktop\3dexamples\Programowanie-3D\3DGraphicsExamples\cmake-build-debug\src\Exercises\Colors && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\Colors.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/Exercises/Colors/CMakeFiles/Colors.dir/build: src/Exercises/Colors/Colors.exe

.PHONY : src/Exercises/Colors/CMakeFiles/Colors.dir/build

src/Exercises/Colors/CMakeFiles/Colors.dir/clean:
	cd /d C:\Users\Paulina\Desktop\3dexamples\Programowanie-3D\3DGraphicsExamples\cmake-build-debug\src\Exercises\Colors && $(CMAKE_COMMAND) -P CMakeFiles\Colors.dir\cmake_clean.cmake
.PHONY : src/Exercises/Colors/CMakeFiles/Colors.dir/clean

src/Exercises/Colors/CMakeFiles/Colors.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\Paulina\Desktop\3dexamples\Programowanie-3D\3DGraphicsExamples C:\Users\Paulina\Desktop\3dexamples\Programowanie-3D\3DGraphicsExamples\src\Exercises\Colors C:\Users\Paulina\Desktop\3dexamples\Programowanie-3D\3DGraphicsExamples\cmake-build-debug C:\Users\Paulina\Desktop\3dexamples\Programowanie-3D\3DGraphicsExamples\cmake-build-debug\src\Exercises\Colors C:\Users\Paulina\Desktop\3dexamples\Programowanie-3D\3DGraphicsExamples\cmake-build-debug\src\Exercises\Colors\CMakeFiles\Colors.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : src/Exercises/Colors/CMakeFiles/Colors.dir/depend

