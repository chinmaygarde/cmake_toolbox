# Licensed under the MIT License. See LICENSE file for details.

if(__c_and_cxx_standard)
  return()
endif()
set(__c_and_cxx_standard INCLUDED)

################################################################################
# Sets C and CXX standards.
################################################################################

macro(SetCAndCXXStandard C_STANDARD_ARG CXX_STANDARD_ARG)

if (POLICY CMP0025)
  cmake_policy(SET CMP0025 NEW)
endif ()

set(CMAKE_C_EXTENSIONS   OFF)
set(CMAKE_CXX_EXTENSIONS OFF)

set(CMAKE_C_STANDARD_REQUIRED      ON)
set(CMAKE_CXX_STANDARD_REQUIRED    ON)
set(CMAKE_OBJC_STANDARD_REQUIRED   ON)
set(CMAKE_OBJCXX_STANDARD_REQUIRED ON)

set(CMAKE_C_STANDARD      ${C_STANDARD_ARG})
set(CMAKE_OBJC_STANDARD   ${C_STANDARD_ARG})
set(CMAKE_CXX_STANDARD    ${CXX_STANDARD_ARG})
set(CMAKE_OBJCXX_STANDARD ${CXX_STANDARD_ARG})

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

endmacro()
