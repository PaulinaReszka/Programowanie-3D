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
CMAKE_SOURCE_DIR = C:\Users\Paulina\Desktop\3dexamples\3DGraphicsExamples

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\Paulina\Desktop\3dexamples\3DGraphicsExamples\cmake-build-debug

# Include any dependencies generated for this target.
include src/Exercises/Triangle/CMakeFiles/Triangle.dir/depend.make

# Include the progress variables for this target.
include src/Exercises/Triangle/CMakeFiles/Triangle.dir/progress.make

# Include the compile flags for this target's objects.
include src/Exercises/Triangle/CMakeFiles/Triangle.dir/flags.make

src/Exercises/Triangle/CMakeFiles/Triangle.dir/main.cpp.obj: src/Exercises/Triangle/CMakeFiles/Triangle.dir/flags.make
src/Exercises/Triangle/CMakeFiles/Triangle.dir/main.cpp.obj: src/Exercises/Triangle/CMakeFiles/Triangle.dir/includes_CXX.rsp
src/Exercises/Triangle/CMakeFiles/Triangle.dir/main.cpp.obj: ../src/Exercises/Triangle/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Paulina\Desktop\3dexamples\3DGraphicsExamples\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/Exercises/Triangle/CMakeFiles/Triangle.dir/main.cpp.obj"
	cd /d C:\Users\Paulina\Desktop\3dexamples\3DGraphicsExamples\cmake-build-debug\src\Exercises\Triangle && C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\Triangle.dir\main.cpp.obj -c C:\Users\Paulina\Desktop\3dexamples\3DGraphicsExamples\src\Exercises\Triangle\main.cpp

src/Exercises/Triangle/CMakeFiles/Triangle.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Triangle.dir/main.cpp.i"
	cd /d C:\Users\Paulina\Desktop\3dexamples\3DGraphicsExamples\cmake-build-debug\src\Exercises\Triangle && C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Paulina\Desktop\3dexamples\3DGraphicsExamples\src\Exercises\Triangle\main.cpp > CMakeFiles\Triangle.dir\main.cpp.i

src/Exercises/Triangle/CMakeFiles/Triangle.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Triangle.dir/main.cpp.s"
	cd /d C:\Users\Paulina\Desktop\3dexamples\3DGraphicsExamples\cmake-build-debug\src\Exercises\Triangle && C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\Paulina\Desktop\3dexamples\3DGraphicsExamples\src\Exercises\Triangle\main.cpp -o CMakeFiles\Triangle.dir\main.cpp.s

src/Exercises/Triangle/CMakeFiles/Triangle.dir/app.cpp.obj: src/Exercises/Triangle/CMakeFiles/Triangle.dir/flags.make
src/Exercises/Triangle/CMakeFiles/Triangle.dir/app.cpp.obj: src/Exercises/Triangle/CMakeFiles/Triangle.dir/includes_CXX.rsp
src/Exercises/Triangle/CMakeFiles/Triangle.dir/app.cpp.obj: ../src/Exercises/Triangle/app.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Paulina\Desktop\3dexamples\3DGraphicsExamples\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/Exercises/Triangle/CMakeFiles/Triangle.dir/app.cpp.obj"
	cd /d C:\Users\Paulina\Desktop\3dexamples\3DGraphicsExamples\cmake-build-debug\src\Exercises\Triangle && C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\Triangle.dir\app.cpp.obj -c C:\Users\Paulina\Desktop\3dexamples\3DGraphicsExamples\src\Exercises\Triangle\app.cpp

src/Exercises/Triangle/CMakeFiles/Triangle.dir/app.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Triangle.dir/app.cpp.i"
	cd /d C:\Users\Paulina\Desktop\3dexamples\3DGraphicsExamples\cmake-build-debug\src\Exercises\Triangle && C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Paulina\Desktop\3dexamples\3DGraphicsExamples\src\Exercises\Triangle\app.cpp > CMakeFiles\Triangle.dir\app.cpp.i

src/Exercises/Triangle/CMakeFiles/Triangle.dir/app.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Triangle.dir/app.cpp.s"
	cd /d C:\Users\Paulina\Desktop\3dexamples\3DGraphicsExamples\cmake-build-debug\src\Exercises\Triangle && C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\Paulina\Desktop\3dexamples\3DGraphicsExamples\src\Exercises\Triangle\app.cpp -o CMakeFiles\Triangle.dir\app.cpp.s

# Object files for target Triangle
Triangle_OBJECTS = \
"CMakeFiles/Triangle.dir/main.cpp.obj" \
"CMakeFiles/Triangle.dir/app.cpp.obj"

# External object files for target Triangle
Triangle_EXTERNAL_OBJECTS = \
"C:/Users/Paulina/Desktop/3dexamples/3DGraphicsExamples/cmake-build-debug/CMakeFiles/glad.dir/src/3rdParty/src/glad/glad.c.obj"

src/Exercises/Triangle/Triangle.exe: src/Exercises/Triangle/CMakeFiles/Triangle.dir/main.cpp.obj
src/Exercises/Triangle/Triangle.exe: src/Exercises/Triangle/CMakeFiles/Triangle.dir/app.cpp.obj
src/Exercises/Triangle/Triangle.exe: CMakeFiles/glad.dir/src/3rdParty/src/glad/glad.c.obj
src/Exercises/Triangle/Triangle.exe: src/Exercises/Triangle/CMakeFiles/Triangle.dir/build.make
src/Exercises/Triangle/Triangle.exe: src/3rdParty/src/glfw3/src/libglfw3.a
src/Exercises/Triangle/Triangle.exe: src/Application/libapplication.a
src/Exercises/Triangle/Triangle.exe: src/3rdParty/src/glfw3/src/libglfw3.a
src/Exercises/Triangle/Triangle.exe: src/Exercises/Triangle/CMakeFiles/Triangle.dir/linklibs.rsp
src/Exercises/Triangle/Triangle.exe: src/Exercises/Triangle/CMakeFiles/Triangle.dir/objects1.rsp
src/Exercises/Triangle/Triangle.exe: src/Exercises/Triangle/CMakeFiles/Triangle.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\Paulina\Desktop\3dexamples\3DGraphicsExamples\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable Triangle.exe"
	cd /d C:\Users\Paulina\Desktop\3dexamples\3DGraphicsExamples\cmake-build-debug\src\Exercises\Triangle && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\Triangle.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/Exercises/Triangle/CMakeFiles/Triangle.dir/build: src/Exercises/Triangle/Triangle.exe

.PHONY : src/Exercises/Triangle/CMakeFiles/Triangle.dir/build

src/Exercises/Triangle/CMakeFiles/Triangle.dir/clean:
	cd /d C:\Users\Paulina\Desktop\3dexamples\3DGraphicsExamples\cmake-build-debug\src\Exercises\Triangle && $(CMAKE_COMMAND) -P CMakeFiles\Triangle.dir\cmake_clean.cmake
.PHONY : src/Exercises/Triangle/CMakeFiles/Triangle.dir/clean

src/Exercises/Triangle/CMakeFiles/Triangle.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\Paulina\Desktop\3dexamples\3DGraphicsExamples C:\Users\Paulina\Desktop\3dexamples\3DGraphicsExamples\src\Exercises\Triangle C:\Users\Paulina\Desktop\3dexamples\3DGraphicsExamples\cmake-build-debug C:\Users\Paulina\Desktop\3dexamples\3DGraphicsExamples\cmake-build-debug\src\Exercises\Triangle C:\Users\Paulina\Desktop\3dexamples\3DGraphicsExamples\cmake-build-debug\src\Exercises\Triangle\CMakeFiles\Triangle.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : src/Exercises/Triangle/CMakeFiles/Triangle.dir/depend

