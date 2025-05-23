# Licensed under the MIT License. See LICENSE file for details.

if(__cmake_toolbox_initialize)
  return()
endif()
set(__cmake_toolbox_initialize INCLUDED)

################################################################################
# Initializes the CMakeToolbox
################################################################################

macro(CMakeToolboxInitialize)

include(AddCompileOptionIfSupported)
include(AddCXXWarningIfSupported)
include(AddRecommendedWarningFlags)
include(CheckCompiler)
include(CheckPlatform)
include(EnableCCache)
include(EnableLTO)
include(HardenToolchain)
include(MetalLibrary)
include(SetCAndCXXStandard)
include(SymbolVisibility)
include(TreatAsCXX)
include(XXD)

endmacro()


