# Licensed under the MIT License. See LICENSE file for details.

if(__enable_ccache)
  return()
endif()
set(__enable_ccache INCLUDED)

################################################################################
# Enable CCache if present
################################################################################

macro(EnableCCache)

find_program(CCACHE_PROGRAM NAMES ccache)
if(CCACHE_PROGRAM)
  set_property(GLOBAL PROPERTY RULE_LAUNCH_COMPILE "${CCACHE_PROGRAM}")
  set_property(GLOBAL PROPERTY RULE_LAUNCH_LINK "${CCACHE_PROGRAM}")
endif()

endmacro()
