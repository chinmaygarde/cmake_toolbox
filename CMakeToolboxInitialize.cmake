# Licensed under the MIT License. See LICENSE file for details.

if(__cmake_toolbox_initialize)
  return()
endif()
set(__cmake_toolbox_initialize INCLUDED)

################################################################################
# Initializes the CMakeToolbox
################################################################################

macro(CMakeToolboxInitialize)

include(AddCXXWarningIfSupported)
include(AddRecommendedWarningFlags)
include(CheckCompiler)
include(CheckPlatform)
include(EnableCCache)
include(EnableLTO)
include(HardenToolchain)
include(SymbolVisibility)
include(TreatAsCXX)

endmacro()


