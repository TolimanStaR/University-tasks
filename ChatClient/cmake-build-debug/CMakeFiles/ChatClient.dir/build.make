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
CMAKE_SOURCE_DIR = E:\Clion\University-Tasks\ChatClient

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = E:\Clion\University-Tasks\ChatClient\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/ChatClient.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/ChatClient.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ChatClient.dir/flags.make

CMakeFiles/ChatClient.dir/main.c.obj: CMakeFiles/ChatClient.dir/flags.make
CMakeFiles/ChatClient.dir/main.c.obj: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\Clion\University-Tasks\ChatClient\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/ChatClient.dir/main.c.obj"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\ChatClient.dir\main.c.obj   -c E:\Clion\University-Tasks\ChatClient\main.c

CMakeFiles/ChatClient.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ChatClient.dir/main.c.i"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E E:\Clion\University-Tasks\ChatClient\main.c > CMakeFiles\ChatClient.dir\main.c.i

CMakeFiles/ChatClient.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ChatClient.dir/main.c.s"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S E:\Clion\University-Tasks\ChatClient\main.c -o CMakeFiles\ChatClient.dir\main.c.s

# Object files for target ChatClient
ChatClient_OBJECTS = \
"CMakeFiles/ChatClient.dir/main.c.obj"

# External object files for target ChatClient
ChatClient_EXTERNAL_OBJECTS =

ChatClient.exe: CMakeFiles/ChatClient.dir/main.c.obj
ChatClient.exe: CMakeFiles/ChatClient.dir/build.make
ChatClient.exe: CMakeFiles/ChatClient.dir/linklibs.rsp
ChatClient.exe: CMakeFiles/ChatClient.dir/objects1.rsp
ChatClient.exe: CMakeFiles/ChatClient.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=E:\Clion\University-Tasks\ChatClient\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable ChatClient.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\ChatClient.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ChatClient.dir/build: ChatClient.exe

.PHONY : CMakeFiles/ChatClient.dir/build

CMakeFiles/ChatClient.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\ChatClient.dir\cmake_clean.cmake
.PHONY : CMakeFiles/ChatClient.dir/clean

CMakeFiles/ChatClient.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" E:\Clion\University-Tasks\ChatClient E:\Clion\University-Tasks\ChatClient E:\Clion\University-Tasks\ChatClient\cmake-build-debug E:\Clion\University-Tasks\ChatClient\cmake-build-debug E:\Clion\University-Tasks\ChatClient\cmake-build-debug\CMakeFiles\ChatClient.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ChatClient.dir/depend
