# Licensed under the MIT License. See LICENSE file for details.

if(__add_cxx_warning_if_supported)
  return()
endif()
set(__add_cxx_warning_if_supported INCLUDED)

include(CheckCXXCompilerFlag)

################################################################################
# Enables a CXX warning globally if the compiler supports it.
################################################################################

macro(AddCXXWarningIfSupported WARNING_FLAG WARNING_LABEL)

check_cxx_compiler_flag(${WARNING_FLAG} ${WARNING_LABEL})

if(${WARNING_LABEL})
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${WARNING_FLAG} ")
endif()

endmacro()

################################################################################
# Enables a C warning globally if the compiler supports it.
################################################################################

macro(AddCWarningIfSupported WARNING_FLAG WARNING_LABEL)

check_cxx_compiler_flag(${WARNING_FLAG} ${WARNING_LABEL})

if(${WARNING_LABEL})
  set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} ${WARNING_FLAG} ")
endif()

endmacro()
