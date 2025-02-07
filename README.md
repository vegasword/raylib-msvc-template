# Raylib MSVC Template

This is a [raylib](https://github.com/raysan5/raylib) project template for people who love to compile their C programs using the MSVC compiler.

## Building

Before you start building, you need to obtain the `devenv.bat` script from [PortableBuildTools](https://github.com/Data-Oriented-House/PortableBuildTools/releases).

PortableBuildTools provides a collection of pre-built, portable tools that ensure a consistent build environment across different Windows machines, making it easier to get started with development without worrying about complex installations or dependencies.

It downloads standalone MSVC compiler, linker & other tools, also headers/libraries from Windows SDK, into a portable folder, without installing Visual Studio.

Make sure it generate the `C:\BuildTools\devcmd.bat` script and add `C:\BuildTools` to `PATH` then execute the `build.bat` script.

You can edit the `build.bat` to set the name of your game and select the build mode.

Enjoy programming!
