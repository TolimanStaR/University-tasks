# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.15

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "E:\Clion\CLion 2019.2.3\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "E:\Clion\CLion 2019.2.3\bin\cmake\win\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = E:\Clion\CoolerTreeMaster

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = E:\Clion\CoolerTreeMaster\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/CoolerTreeMaster.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/CoolerTreeMaster.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/CoolerTreeMaster.dir/flags.make

CMakeFiles/CoolerTreeMaster.dir/main.c.obj: CMakeFiles/CoolerTreeMaster.dir/flags.make
CMakeFiles/CoolerTreeMaster.dir/main.c.obj: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\Clion\CoolerTreeMaster\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/CoolerTreeMaster.dir/main.c.obj"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\CoolerTreeMaster.dir\main.c.obj   -c E:\Clion\CoolerTreeMaster\main.c

CMakeFiles/CoolerTreeMaster.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/CoolerTreeMaster.dir/main.c.i"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E E:\Clion\CoolerTreeMaster\main.c > CMakeFiles\CoolerTreeMaster.dir\main.c.i

CMakeFiles/CoolerTreeMaster.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/CoolerTreeMaster.dir/main.c.s"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S E:\Clion\CoolerTreeMaster\main.c -o CMakeFiles\CoolerTreeMaster.dir\main.c.s

CMakeFiles/CoolerTreeMaster.dir/source.c.obj: CMakeFiles/CoolerTreeMaster.dir/flags.make
CMakeFiles/CoolerTreeMaster.dir/source.c.obj: ../source.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\Clion\CoolerTreeMaster\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/CoolerTreeMaster.dir/source.c.obj"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\CoolerTreeMaster.dir\source.c.obj   -c E:\Clion\CoolerTreeMaster\source.c

CMakeFiles/CoolerTreeMaster.dir/source.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/CoolerTreeMaster.dir/source.c.i"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E E:\Clion\CoolerTreeMaster\source.c > CMakeFiles\CoolerTreeMaster.dir\source.c.i

CMakeFiles/CoolerTreeMaster.dir/source.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/CoolerTreeMaster.dir/source.c.s"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S E:\Clion\CoolerTreeMaster\source.c -o CMakeFiles\CoolerTreeMaster.dir\source.c.s

# Object files for target CoolerTreeMaster
CoolerTreeMaster_OBJECTS = \
"CMakeFiles/CoolerTreeMaster.dir/main.c.obj" \
"CMakeFiles/CoolerTreeMaster.dir/source.c.obj"

# External object files for target CoolerTreeMaster
CoolerTreeMaster_EXTERNAL_OBJECTS =

CoolerTreeMaster.exe: CMakeFiles/CoolerTreeMaster.dir/main.c.obj
CoolerTreeMaster.exe: CMakeFiles/CoolerTreeMaster.dir/source.c.obj
CoolerTreeMaster.exe: CMakeFiles/CoolerTreeMaster.dir/build.make
CoolerTreeMaster.exe: CMakeFiles/CoolerTreeMaster.dir/linklibs.rsp
CoolerTreeMaster.exe: CMakeFiles/CoolerTreeMaster.dir/objects1.rsp
CoolerTreeMaster.exe: CMakeFiles/CoolerTreeMaster.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=E:\Clion\CoolerTreeMaster\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable CoolerTreeMaster.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\CoolerTreeMaster.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/CoolerTreeMaster.dir/build: CoolerTreeMaster.exe

.PHONY : CMakeFiles/CoolerTreeMaster.dir/build

CMakeFiles/CoolerTreeMaster.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\CoolerTreeMaster.dir\cmake_clean.cmake
.PHONY : CMakeFiles/CoolerTreeMaster.dir/clean

CMakeFiles/CoolerTreeMaster.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" E:\Clion\CoolerTreeMaster E:\Clion\CoolerTreeMaster E:\Clion\CoolerTreeMaster\cmake-build-debug E:\Clion\CoolerTreeMaster\cmake-build-debug E:\Clion\CoolerTreeMaster\cmake-build-debug\CMakeFiles\CoolerTreeMaster.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/CoolerTreeMaster.dir/depend
