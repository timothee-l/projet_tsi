# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /fs03/share/users/timothee.levilly/home/Documents/tsi_projet/projet_tsi

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /fs03/share/users/timothee.levilly/home/Documents/tsi_projet/projet_tsi/build

# Include any dependencies generated for this target.
include tools/CMakeFiles/tools.dir/depend.make

# Include the progress variables for this target.
include tools/CMakeFiles/tools.dir/progress.make

# Include the compile flags for this target's objects.
include tools/CMakeFiles/tools.dir/flags.make

tools/CMakeFiles/tools.dir/format/mesh_io_obj.cpp.o: tools/CMakeFiles/tools.dir/flags.make
tools/CMakeFiles/tools.dir/format/mesh_io_obj.cpp.o: ../tools/format/mesh_io_obj.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/fs03/share/users/timothee.levilly/home/Documents/tsi_projet/projet_tsi/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tools/CMakeFiles/tools.dir/format/mesh_io_obj.cpp.o"
	cd /fs03/share/users/timothee.levilly/home/Documents/tsi_projet/projet_tsi/build/tools && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tools.dir/format/mesh_io_obj.cpp.o -c /fs03/share/users/timothee.levilly/home/Documents/tsi_projet/projet_tsi/tools/format/mesh_io_obj.cpp

tools/CMakeFiles/tools.dir/format/mesh_io_obj.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tools.dir/format/mesh_io_obj.cpp.i"
	cd /fs03/share/users/timothee.levilly/home/Documents/tsi_projet/projet_tsi/build/tools && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /fs03/share/users/timothee.levilly/home/Documents/tsi_projet/projet_tsi/tools/format/mesh_io_obj.cpp > CMakeFiles/tools.dir/format/mesh_io_obj.cpp.i

tools/CMakeFiles/tools.dir/format/mesh_io_obj.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tools.dir/format/mesh_io_obj.cpp.s"
	cd /fs03/share/users/timothee.levilly/home/Documents/tsi_projet/projet_tsi/build/tools && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /fs03/share/users/timothee.levilly/home/Documents/tsi_projet/projet_tsi/tools/format/mesh_io_obj.cpp -o CMakeFiles/tools.dir/format/mesh_io_obj.cpp.s

tools/CMakeFiles/tools.dir/format/mesh_io_obj.cpp.o.requires:

.PHONY : tools/CMakeFiles/tools.dir/format/mesh_io_obj.cpp.o.requires

tools/CMakeFiles/tools.dir/format/mesh_io_obj.cpp.o.provides: tools/CMakeFiles/tools.dir/format/mesh_io_obj.cpp.o.requires
	$(MAKE) -f tools/CMakeFiles/tools.dir/build.make tools/CMakeFiles/tools.dir/format/mesh_io_obj.cpp.o.provides.build
.PHONY : tools/CMakeFiles/tools.dir/format/mesh_io_obj.cpp.o.provides

tools/CMakeFiles/tools.dir/format/mesh_io_obj.cpp.o.provides.build: tools/CMakeFiles/tools.dir/format/mesh_io_obj.cpp.o


tools/CMakeFiles/tools.dir/format/mesh_io_off.cpp.o: tools/CMakeFiles/tools.dir/flags.make
tools/CMakeFiles/tools.dir/format/mesh_io_off.cpp.o: ../tools/format/mesh_io_off.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/fs03/share/users/timothee.levilly/home/Documents/tsi_projet/projet_tsi/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object tools/CMakeFiles/tools.dir/format/mesh_io_off.cpp.o"
	cd /fs03/share/users/timothee.levilly/home/Documents/tsi_projet/projet_tsi/build/tools && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tools.dir/format/mesh_io_off.cpp.o -c /fs03/share/users/timothee.levilly/home/Documents/tsi_projet/projet_tsi/tools/format/mesh_io_off.cpp

tools/CMakeFiles/tools.dir/format/mesh_io_off.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tools.dir/format/mesh_io_off.cpp.i"
	cd /fs03/share/users/timothee.levilly/home/Documents/tsi_projet/projet_tsi/build/tools && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /fs03/share/users/timothee.levilly/home/Documents/tsi_projet/projet_tsi/tools/format/mesh_io_off.cpp > CMakeFiles/tools.dir/format/mesh_io_off.cpp.i

tools/CMakeFiles/tools.dir/format/mesh_io_off.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tools.dir/format/mesh_io_off.cpp.s"
	cd /fs03/share/users/timothee.levilly/home/Documents/tsi_projet/projet_tsi/build/tools && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /fs03/share/users/timothee.levilly/home/Documents/tsi_projet/projet_tsi/tools/format/mesh_io_off.cpp -o CMakeFiles/tools.dir/format/mesh_io_off.cpp.s

tools/CMakeFiles/tools.dir/format/mesh_io_off.cpp.o.requires:

.PHONY : tools/CMakeFiles/tools.dir/format/mesh_io_off.cpp.o.requires

tools/CMakeFiles/tools.dir/format/mesh_io_off.cpp.o.provides: tools/CMakeFiles/tools.dir/format/mesh_io_off.cpp.o.requires
	$(MAKE) -f tools/CMakeFiles/tools.dir/build.make tools/CMakeFiles/tools.dir/format/mesh_io_off.cpp.o.provides.build
.PHONY : tools/CMakeFiles/tools.dir/format/mesh_io_off.cpp.o.provides

tools/CMakeFiles/tools.dir/format/mesh_io_off.cpp.o.provides.build: tools/CMakeFiles/tools.dir/format/mesh_io_off.cpp.o


tools/CMakeFiles/tools.dir/glhelper.cpp.o: tools/CMakeFiles/tools.dir/flags.make
tools/CMakeFiles/tools.dir/glhelper.cpp.o: ../tools/glhelper.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/fs03/share/users/timothee.levilly/home/Documents/tsi_projet/projet_tsi/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object tools/CMakeFiles/tools.dir/glhelper.cpp.o"
	cd /fs03/share/users/timothee.levilly/home/Documents/tsi_projet/projet_tsi/build/tools && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tools.dir/glhelper.cpp.o -c /fs03/share/users/timothee.levilly/home/Documents/tsi_projet/projet_tsi/tools/glhelper.cpp

tools/CMakeFiles/tools.dir/glhelper.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tools.dir/glhelper.cpp.i"
	cd /fs03/share/users/timothee.levilly/home/Documents/tsi_projet/projet_tsi/build/tools && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /fs03/share/users/timothee.levilly/home/Documents/tsi_projet/projet_tsi/tools/glhelper.cpp > CMakeFiles/tools.dir/glhelper.cpp.i

tools/CMakeFiles/tools.dir/glhelper.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tools.dir/glhelper.cpp.s"
	cd /fs03/share/users/timothee.levilly/home/Documents/tsi_projet/projet_tsi/build/tools && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /fs03/share/users/timothee.levilly/home/Documents/tsi_projet/projet_tsi/tools/glhelper.cpp -o CMakeFiles/tools.dir/glhelper.cpp.s

tools/CMakeFiles/tools.dir/glhelper.cpp.o.requires:

.PHONY : tools/CMakeFiles/tools.dir/glhelper.cpp.o.requires

tools/CMakeFiles/tools.dir/glhelper.cpp.o.provides: tools/CMakeFiles/tools.dir/glhelper.cpp.o.requires
	$(MAKE) -f tools/CMakeFiles/tools.dir/build.make tools/CMakeFiles/tools.dir/glhelper.cpp.o.provides.build
.PHONY : tools/CMakeFiles/tools.dir/glhelper.cpp.o.provides

tools/CMakeFiles/tools.dir/glhelper.cpp.o.provides.build: tools/CMakeFiles/tools.dir/glhelper.cpp.o


tools/CMakeFiles/tools.dir/mat4.cpp.o: tools/CMakeFiles/tools.dir/flags.make
tools/CMakeFiles/tools.dir/mat4.cpp.o: ../tools/mat4.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/fs03/share/users/timothee.levilly/home/Documents/tsi_projet/projet_tsi/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object tools/CMakeFiles/tools.dir/mat4.cpp.o"
	cd /fs03/share/users/timothee.levilly/home/Documents/tsi_projet/projet_tsi/build/tools && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tools.dir/mat4.cpp.o -c /fs03/share/users/timothee.levilly/home/Documents/tsi_projet/projet_tsi/tools/mat4.cpp

tools/CMakeFiles/tools.dir/mat4.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tools.dir/mat4.cpp.i"
	cd /fs03/share/users/timothee.levilly/home/Documents/tsi_projet/projet_tsi/build/tools && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /fs03/share/users/timothee.levilly/home/Documents/tsi_projet/projet_tsi/tools/mat4.cpp > CMakeFiles/tools.dir/mat4.cpp.i

tools/CMakeFiles/tools.dir/mat4.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tools.dir/mat4.cpp.s"
	cd /fs03/share/users/timothee.levilly/home/Documents/tsi_projet/projet_tsi/build/tools && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /fs03/share/users/timothee.levilly/home/Documents/tsi_projet/projet_tsi/tools/mat4.cpp -o CMakeFiles/tools.dir/mat4.cpp.s

tools/CMakeFiles/tools.dir/mat4.cpp.o.requires:

.PHONY : tools/CMakeFiles/tools.dir/mat4.cpp.o.requires

tools/CMakeFiles/tools.dir/mat4.cpp.o.provides: tools/CMakeFiles/tools.dir/mat4.cpp.o.requires
	$(MAKE) -f tools/CMakeFiles/tools.dir/build.make tools/CMakeFiles/tools.dir/mat4.cpp.o.provides.build
.PHONY : tools/CMakeFiles/tools.dir/mat4.cpp.o.provides

tools/CMakeFiles/tools.dir/mat4.cpp.o.provides.build: tools/CMakeFiles/tools.dir/mat4.cpp.o


tools/CMakeFiles/tools.dir/mesh.cpp.o: tools/CMakeFiles/tools.dir/flags.make
tools/CMakeFiles/tools.dir/mesh.cpp.o: ../tools/mesh.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/fs03/share/users/timothee.levilly/home/Documents/tsi_projet/projet_tsi/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object tools/CMakeFiles/tools.dir/mesh.cpp.o"
	cd /fs03/share/users/timothee.levilly/home/Documents/tsi_projet/projet_tsi/build/tools && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tools.dir/mesh.cpp.o -c /fs03/share/users/timothee.levilly/home/Documents/tsi_projet/projet_tsi/tools/mesh.cpp

tools/CMakeFiles/tools.dir/mesh.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tools.dir/mesh.cpp.i"
	cd /fs03/share/users/timothee.levilly/home/Documents/tsi_projet/projet_tsi/build/tools && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /fs03/share/users/timothee.levilly/home/Documents/tsi_projet/projet_tsi/tools/mesh.cpp > CMakeFiles/tools.dir/mesh.cpp.i

tools/CMakeFiles/tools.dir/mesh.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tools.dir/mesh.cpp.s"
	cd /fs03/share/users/timothee.levilly/home/Documents/tsi_projet/projet_tsi/build/tools && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /fs03/share/users/timothee.levilly/home/Documents/tsi_projet/projet_tsi/tools/mesh.cpp -o CMakeFiles/tools.dir/mesh.cpp.s

tools/CMakeFiles/tools.dir/mesh.cpp.o.requires:

.PHONY : tools/CMakeFiles/tools.dir/mesh.cpp.o.requires

tools/CMakeFiles/tools.dir/mesh.cpp.o.provides: tools/CMakeFiles/tools.dir/mesh.cpp.o.requires
	$(MAKE) -f tools/CMakeFiles/tools.dir/build.make tools/CMakeFiles/tools.dir/mesh.cpp.o.provides.build
.PHONY : tools/CMakeFiles/tools.dir/mesh.cpp.o.provides

tools/CMakeFiles/tools.dir/mesh.cpp.o.provides.build: tools/CMakeFiles/tools.dir/mesh.cpp.o


tools/CMakeFiles/tools.dir/tga.cpp.o: tools/CMakeFiles/tools.dir/flags.make
tools/CMakeFiles/tools.dir/tga.cpp.o: ../tools/tga.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/fs03/share/users/timothee.levilly/home/Documents/tsi_projet/projet_tsi/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object tools/CMakeFiles/tools.dir/tga.cpp.o"
	cd /fs03/share/users/timothee.levilly/home/Documents/tsi_projet/projet_tsi/build/tools && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tools.dir/tga.cpp.o -c /fs03/share/users/timothee.levilly/home/Documents/tsi_projet/projet_tsi/tools/tga.cpp

tools/CMakeFiles/tools.dir/tga.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tools.dir/tga.cpp.i"
	cd /fs03/share/users/timothee.levilly/home/Documents/tsi_projet/projet_tsi/build/tools && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /fs03/share/users/timothee.levilly/home/Documents/tsi_projet/projet_tsi/tools/tga.cpp > CMakeFiles/tools.dir/tga.cpp.i

tools/CMakeFiles/tools.dir/tga.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tools.dir/tga.cpp.s"
	cd /fs03/share/users/timothee.levilly/home/Documents/tsi_projet/projet_tsi/build/tools && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /fs03/share/users/timothee.levilly/home/Documents/tsi_projet/projet_tsi/tools/tga.cpp -o CMakeFiles/tools.dir/tga.cpp.s

tools/CMakeFiles/tools.dir/tga.cpp.o.requires:

.PHONY : tools/CMakeFiles/tools.dir/tga.cpp.o.requires

tools/CMakeFiles/tools.dir/tga.cpp.o.provides: tools/CMakeFiles/tools.dir/tga.cpp.o.requires
	$(MAKE) -f tools/CMakeFiles/tools.dir/build.make tools/CMakeFiles/tools.dir/tga.cpp.o.provides.build
.PHONY : tools/CMakeFiles/tools.dir/tga.cpp.o.provides

tools/CMakeFiles/tools.dir/tga.cpp.o.provides.build: tools/CMakeFiles/tools.dir/tga.cpp.o


tools/CMakeFiles/tools.dir/triangle_index.cpp.o: tools/CMakeFiles/tools.dir/flags.make
tools/CMakeFiles/tools.dir/triangle_index.cpp.o: ../tools/triangle_index.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/fs03/share/users/timothee.levilly/home/Documents/tsi_projet/projet_tsi/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object tools/CMakeFiles/tools.dir/triangle_index.cpp.o"
	cd /fs03/share/users/timothee.levilly/home/Documents/tsi_projet/projet_tsi/build/tools && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tools.dir/triangle_index.cpp.o -c /fs03/share/users/timothee.levilly/home/Documents/tsi_projet/projet_tsi/tools/triangle_index.cpp

tools/CMakeFiles/tools.dir/triangle_index.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tools.dir/triangle_index.cpp.i"
	cd /fs03/share/users/timothee.levilly/home/Documents/tsi_projet/projet_tsi/build/tools && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /fs03/share/users/timothee.levilly/home/Documents/tsi_projet/projet_tsi/tools/triangle_index.cpp > CMakeFiles/tools.dir/triangle_index.cpp.i

tools/CMakeFiles/tools.dir/triangle_index.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tools.dir/triangle_index.cpp.s"
	cd /fs03/share/users/timothee.levilly/home/Documents/tsi_projet/projet_tsi/build/tools && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /fs03/share/users/timothee.levilly/home/Documents/tsi_projet/projet_tsi/tools/triangle_index.cpp -o CMakeFiles/tools.dir/triangle_index.cpp.s

tools/CMakeFiles/tools.dir/triangle_index.cpp.o.requires:

.PHONY : tools/CMakeFiles/tools.dir/triangle_index.cpp.o.requires

tools/CMakeFiles/tools.dir/triangle_index.cpp.o.provides: tools/CMakeFiles/tools.dir/triangle_index.cpp.o.requires
	$(MAKE) -f tools/CMakeFiles/tools.dir/build.make tools/CMakeFiles/tools.dir/triangle_index.cpp.o.provides.build
.PHONY : tools/CMakeFiles/tools.dir/triangle_index.cpp.o.provides

tools/CMakeFiles/tools.dir/triangle_index.cpp.o.provides.build: tools/CMakeFiles/tools.dir/triangle_index.cpp.o


tools/CMakeFiles/tools.dir/vec2.cpp.o: tools/CMakeFiles/tools.dir/flags.make
tools/CMakeFiles/tools.dir/vec2.cpp.o: ../tools/vec2.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/fs03/share/users/timothee.levilly/home/Documents/tsi_projet/projet_tsi/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object tools/CMakeFiles/tools.dir/vec2.cpp.o"
	cd /fs03/share/users/timothee.levilly/home/Documents/tsi_projet/projet_tsi/build/tools && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tools.dir/vec2.cpp.o -c /fs03/share/users/timothee.levilly/home/Documents/tsi_projet/projet_tsi/tools/vec2.cpp

tools/CMakeFiles/tools.dir/vec2.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tools.dir/vec2.cpp.i"
	cd /fs03/share/users/timothee.levilly/home/Documents/tsi_projet/projet_tsi/build/tools && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /fs03/share/users/timothee.levilly/home/Documents/tsi_projet/projet_tsi/tools/vec2.cpp > CMakeFiles/tools.dir/vec2.cpp.i

tools/CMakeFiles/tools.dir/vec2.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tools.dir/vec2.cpp.s"
	cd /fs03/share/users/timothee.levilly/home/Documents/tsi_projet/projet_tsi/build/tools && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /fs03/share/users/timothee.levilly/home/Documents/tsi_projet/projet_tsi/tools/vec2.cpp -o CMakeFiles/tools.dir/vec2.cpp.s

tools/CMakeFiles/tools.dir/vec2.cpp.o.requires:

.PHONY : tools/CMakeFiles/tools.dir/vec2.cpp.o.requires

tools/CMakeFiles/tools.dir/vec2.cpp.o.provides: tools/CMakeFiles/tools.dir/vec2.cpp.o.requires
	$(MAKE) -f tools/CMakeFiles/tools.dir/build.make tools/CMakeFiles/tools.dir/vec2.cpp.o.provides.build
.PHONY : tools/CMakeFiles/tools.dir/vec2.cpp.o.provides

tools/CMakeFiles/tools.dir/vec2.cpp.o.provides.build: tools/CMakeFiles/tools.dir/vec2.cpp.o


tools/CMakeFiles/tools.dir/vec3.cpp.o: tools/CMakeFiles/tools.dir/flags.make
tools/CMakeFiles/tools.dir/vec3.cpp.o: ../tools/vec3.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/fs03/share/users/timothee.levilly/home/Documents/tsi_projet/projet_tsi/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object tools/CMakeFiles/tools.dir/vec3.cpp.o"
	cd /fs03/share/users/timothee.levilly/home/Documents/tsi_projet/projet_tsi/build/tools && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tools.dir/vec3.cpp.o -c /fs03/share/users/timothee.levilly/home/Documents/tsi_projet/projet_tsi/tools/vec3.cpp

tools/CMakeFiles/tools.dir/vec3.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tools.dir/vec3.cpp.i"
	cd /fs03/share/users/timothee.levilly/home/Documents/tsi_projet/projet_tsi/build/tools && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /fs03/share/users/timothee.levilly/home/Documents/tsi_projet/projet_tsi/tools/vec3.cpp > CMakeFiles/tools.dir/vec3.cpp.i

tools/CMakeFiles/tools.dir/vec3.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tools.dir/vec3.cpp.s"
	cd /fs03/share/users/timothee.levilly/home/Documents/tsi_projet/projet_tsi/build/tools && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /fs03/share/users/timothee.levilly/home/Documents/tsi_projet/projet_tsi/tools/vec3.cpp -o CMakeFiles/tools.dir/vec3.cpp.s

tools/CMakeFiles/tools.dir/vec3.cpp.o.requires:

.PHONY : tools/CMakeFiles/tools.dir/vec3.cpp.o.requires

tools/CMakeFiles/tools.dir/vec3.cpp.o.provides: tools/CMakeFiles/tools.dir/vec3.cpp.o.requires
	$(MAKE) -f tools/CMakeFiles/tools.dir/build.make tools/CMakeFiles/tools.dir/vec3.cpp.o.provides.build
.PHONY : tools/CMakeFiles/tools.dir/vec3.cpp.o.provides

tools/CMakeFiles/tools.dir/vec3.cpp.o.provides.build: tools/CMakeFiles/tools.dir/vec3.cpp.o


tools/CMakeFiles/tools.dir/vertex_opengl.cpp.o: tools/CMakeFiles/tools.dir/flags.make
tools/CMakeFiles/tools.dir/vertex_opengl.cpp.o: ../tools/vertex_opengl.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/fs03/share/users/timothee.levilly/home/Documents/tsi_projet/projet_tsi/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object tools/CMakeFiles/tools.dir/vertex_opengl.cpp.o"
	cd /fs03/share/users/timothee.levilly/home/Documents/tsi_projet/projet_tsi/build/tools && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tools.dir/vertex_opengl.cpp.o -c /fs03/share/users/timothee.levilly/home/Documents/tsi_projet/projet_tsi/tools/vertex_opengl.cpp

tools/CMakeFiles/tools.dir/vertex_opengl.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tools.dir/vertex_opengl.cpp.i"
	cd /fs03/share/users/timothee.levilly/home/Documents/tsi_projet/projet_tsi/build/tools && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /fs03/share/users/timothee.levilly/home/Documents/tsi_projet/projet_tsi/tools/vertex_opengl.cpp > CMakeFiles/tools.dir/vertex_opengl.cpp.i

tools/CMakeFiles/tools.dir/vertex_opengl.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tools.dir/vertex_opengl.cpp.s"
	cd /fs03/share/users/timothee.levilly/home/Documents/tsi_projet/projet_tsi/build/tools && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /fs03/share/users/timothee.levilly/home/Documents/tsi_projet/projet_tsi/tools/vertex_opengl.cpp -o CMakeFiles/tools.dir/vertex_opengl.cpp.s

tools/CMakeFiles/tools.dir/vertex_opengl.cpp.o.requires:

.PHONY : tools/CMakeFiles/tools.dir/vertex_opengl.cpp.o.requires

tools/CMakeFiles/tools.dir/vertex_opengl.cpp.o.provides: tools/CMakeFiles/tools.dir/vertex_opengl.cpp.o.requires
	$(MAKE) -f tools/CMakeFiles/tools.dir/build.make tools/CMakeFiles/tools.dir/vertex_opengl.cpp.o.provides.build
.PHONY : tools/CMakeFiles/tools.dir/vertex_opengl.cpp.o.provides

tools/CMakeFiles/tools.dir/vertex_opengl.cpp.o.provides.build: tools/CMakeFiles/tools.dir/vertex_opengl.cpp.o


# Object files for target tools
tools_OBJECTS = \
"CMakeFiles/tools.dir/format/mesh_io_obj.cpp.o" \
"CMakeFiles/tools.dir/format/mesh_io_off.cpp.o" \
"CMakeFiles/tools.dir/glhelper.cpp.o" \
"CMakeFiles/tools.dir/mat4.cpp.o" \
"CMakeFiles/tools.dir/mesh.cpp.o" \
"CMakeFiles/tools.dir/tga.cpp.o" \
"CMakeFiles/tools.dir/triangle_index.cpp.o" \
"CMakeFiles/tools.dir/vec2.cpp.o" \
"CMakeFiles/tools.dir/vec3.cpp.o" \
"CMakeFiles/tools.dir/vertex_opengl.cpp.o"

# External object files for target tools
tools_EXTERNAL_OBJECTS =

tools/libtools.a: tools/CMakeFiles/tools.dir/format/mesh_io_obj.cpp.o
tools/libtools.a: tools/CMakeFiles/tools.dir/format/mesh_io_off.cpp.o
tools/libtools.a: tools/CMakeFiles/tools.dir/glhelper.cpp.o
tools/libtools.a: tools/CMakeFiles/tools.dir/mat4.cpp.o
tools/libtools.a: tools/CMakeFiles/tools.dir/mesh.cpp.o
tools/libtools.a: tools/CMakeFiles/tools.dir/tga.cpp.o
tools/libtools.a: tools/CMakeFiles/tools.dir/triangle_index.cpp.o
tools/libtools.a: tools/CMakeFiles/tools.dir/vec2.cpp.o
tools/libtools.a: tools/CMakeFiles/tools.dir/vec3.cpp.o
tools/libtools.a: tools/CMakeFiles/tools.dir/vertex_opengl.cpp.o
tools/libtools.a: tools/CMakeFiles/tools.dir/build.make
tools/libtools.a: tools/CMakeFiles/tools.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/fs03/share/users/timothee.levilly/home/Documents/tsi_projet/projet_tsi/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Linking CXX static library libtools.a"
	cd /fs03/share/users/timothee.levilly/home/Documents/tsi_projet/projet_tsi/build/tools && $(CMAKE_COMMAND) -P CMakeFiles/tools.dir/cmake_clean_target.cmake
	cd /fs03/share/users/timothee.levilly/home/Documents/tsi_projet/projet_tsi/build/tools && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tools.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tools/CMakeFiles/tools.dir/build: tools/libtools.a

.PHONY : tools/CMakeFiles/tools.dir/build

tools/CMakeFiles/tools.dir/requires: tools/CMakeFiles/tools.dir/format/mesh_io_obj.cpp.o.requires
tools/CMakeFiles/tools.dir/requires: tools/CMakeFiles/tools.dir/format/mesh_io_off.cpp.o.requires
tools/CMakeFiles/tools.dir/requires: tools/CMakeFiles/tools.dir/glhelper.cpp.o.requires
tools/CMakeFiles/tools.dir/requires: tools/CMakeFiles/tools.dir/mat4.cpp.o.requires
tools/CMakeFiles/tools.dir/requires: tools/CMakeFiles/tools.dir/mesh.cpp.o.requires
tools/CMakeFiles/tools.dir/requires: tools/CMakeFiles/tools.dir/tga.cpp.o.requires
tools/CMakeFiles/tools.dir/requires: tools/CMakeFiles/tools.dir/triangle_index.cpp.o.requires
tools/CMakeFiles/tools.dir/requires: tools/CMakeFiles/tools.dir/vec2.cpp.o.requires
tools/CMakeFiles/tools.dir/requires: tools/CMakeFiles/tools.dir/vec3.cpp.o.requires
tools/CMakeFiles/tools.dir/requires: tools/CMakeFiles/tools.dir/vertex_opengl.cpp.o.requires

.PHONY : tools/CMakeFiles/tools.dir/requires

tools/CMakeFiles/tools.dir/clean:
	cd /fs03/share/users/timothee.levilly/home/Documents/tsi_projet/projet_tsi/build/tools && $(CMAKE_COMMAND) -P CMakeFiles/tools.dir/cmake_clean.cmake
.PHONY : tools/CMakeFiles/tools.dir/clean

tools/CMakeFiles/tools.dir/depend:
	cd /fs03/share/users/timothee.levilly/home/Documents/tsi_projet/projet_tsi/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /fs03/share/users/timothee.levilly/home/Documents/tsi_projet/projet_tsi /fs03/share/users/timothee.levilly/home/Documents/tsi_projet/projet_tsi/tools /fs03/share/users/timothee.levilly/home/Documents/tsi_projet/projet_tsi/build /fs03/share/users/timothee.levilly/home/Documents/tsi_projet/projet_tsi/build/tools /fs03/share/users/timothee.levilly/home/Documents/tsi_projet/projet_tsi/build/tools/CMakeFiles/tools.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tools/CMakeFiles/tools.dir/depend

