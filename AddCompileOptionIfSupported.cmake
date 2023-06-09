# Licensed under the MIT License. See LICENSE file for details.

if(__add_compile_option_if_supported)
  return()
endif()
set(__add_compile_option_if_supported INCLUDED)

include(CheckCXXCompilerFlag)

macro(AddCompileOptionIfSupported TGT WARNING_FLAG WARNING_LABEL)

check_cxx_compiler_flag(${WARNING_FLAG} ${WARNING_LABEL})

if(${WARNING_LABEL})
  target_compile_options(sft_lib
    PRIVATE
      ${WARNING_FLAG}
  )
endif()

endmacro()
