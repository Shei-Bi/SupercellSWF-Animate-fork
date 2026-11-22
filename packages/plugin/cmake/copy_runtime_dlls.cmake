# Static builds may have no DLLs for CMake to copy.
if(RUNTIME_DLLS)
    file(COPY ${RUNTIME_DLLS} DESTINATION "${DESTINATION}")
endif()
