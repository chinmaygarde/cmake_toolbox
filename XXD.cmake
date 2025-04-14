# Licensed under the MIT License. See LICENSE file for details.

if(__xxd)
  return()
endif()
set(__xxd INCLUDED)

set(TOOLBOX_DIR "${CMAKE_CURRENT_LIST_DIR}")

function(xxd TARGET BLOB_FILE)
  get_filename_component(BLOB_NAME ${BLOB_FILE} NAME_WLE)
  get_filename_component(SYMBOL_NAME ${BLOB_FILE} NAME_WE)

  add_custom_command(
    OUTPUT ${CMAKE_CURRENT_BINARY_DIR}/${BLOB_NAME}.h
           ${CMAKE_CURRENT_BINARY_DIR}/${BLOB_NAME}.cc
    DEPENDS ${BLOB_FILE}
    COMMAND ${TOOLBOX_DIR}/xxd.py
              --symbol-name=${SYMBOL_NAME}
              --output-header=${CMAKE_CURRENT_BINARY_DIR}/${BLOB_NAME}.h
              --output-source=${CMAKE_CURRENT_BINARY_DIR}/${BLOB_NAME}.cc
              --source=${BLOB_FILE}
  )

  target_sources(${TARGET}
    PRIVATE
      ${CMAKE_CURRENT_BINARY_DIR}/${BLOB_NAME}.h
      ${CMAKE_CURRENT_BINARY_DIR}/${BLOB_NAME}.cc
  )
endfunction()
