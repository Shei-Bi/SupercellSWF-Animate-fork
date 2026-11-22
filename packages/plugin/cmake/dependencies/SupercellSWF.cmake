# SC Flash
if(WIN32)
    # Workshop-Core's MSVC helper invokes flatc at configure time with execute_process,
    # so it needs an executable path rather than the flatbuffers::flatc target name.
    if(NOT FLATBUFFERS_FLATC_EXECUTABLE)
        find_package(flatbuffers CONFIG REQUIRED)
        get_target_property(FLATBUFFERS_FLATC_EXECUTABLE flatbuffers::flatc LOCATION)
    endif()
    if(NOT EXISTS "${FLATBUFFERS_FLATC_EXECUTABLE}")
        message(FATAL_ERROR "FlatBuffers compiler not found: ${FLATBUFFERS_FLATC_EXECUTABLE}")
    endif()
endif()

FetchContent_Declare(
    SupercellFlash
    GIT_REPOSITORY https://github.com/sc-workshop/SupercellFlash.git
    GIT_TAG main
)
FetchContent_MakeAvailable(SupercellFlash)
