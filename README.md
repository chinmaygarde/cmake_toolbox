CMake Toolbox
=============

A collection of commonly used CMake tools.

Usage
-----

Add this repo as a CMake module to the base project and initialize the toolbox.


```
list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/third_party/cmake_toolbox")
include(CMakeToolboxInitialize)
CMakeToolboxInitialize()
```

Everything in the toolbox should now be setup.
