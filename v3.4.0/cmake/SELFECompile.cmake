#message(STATUS "Using SELFE Project default file for various architectures/flags")


if("${CMAKE_Fortran_COMPILER_ID}" STREQUAL "Intel")
    #message(STATUS "Overriding default cmake Intel compiler flags")
    set (SELFE_INTEL_OPTIONS "-assume byterecl")
    set( CMAKE_Fortran_FLAGS_RELEASE_INIT "-O2 ${SELFE_INTEL_OPTIONS}")
    set( CMAKE_Fortran_FLAGS_DEBUG_INIT "-g ${SELFE_INTEL_OPTIONS}")
    set( CMAKE_Fortran_FLAGS_RELWITHDEBINFO_INIT "-O2 -g -debug inline_debug_info ${SELFE_INTEL_OPTIONS}")
    set( C_PREPROCESS_FLAG "-fpp")
endif()

if("${CMAKE_Fortran_COMPILER_ID}" STREQUAL "Pgi")
    #message(STATUS "Overriding default cmake Portland Group compiler flags")
    set (SELFE_PG_OPTIONS "-mcmodel=medium")
    set( CMAKE_Fortran_FLAGS_RELEASE_INIT "-O2 ${SELFE_PG_OPTIONS}")
    set( CMAKE_Fortran_FLAGS_DEBUG_INIT "-g ${SELFE_PG_OPTIONS}")
    set( CMAKE_Fortran_FLAGS_RELWITHDEBINFO_INIT "-O2 -g ${SELFE_PG_OPTIONS}")
    set( C_PREPROCESS_FLAG "-fpp")
endif()

if("${CMAKE_Fortran_COMPILER_ID}" STREQUAL "GNU")
    #message(STATUS "Overriding default cmake GNU compiler flags")
    set (SELFE_GFORTRAN_OPTIONS " -ffree-line-length-none")
    set( CMAKE_Fortran_FLAGS_RELEASE_INIT "-O2 ${SELFE_GFORTRAN_OPTIONS}")
    set( CMAKE_Fortran_FLAGS_DEBUG_INIT "-g ${SELFE_GFORTRAN_OPTIONS}")
    set( CMAKE_Fortran_FLAGS_RELWITHDEBINFO_INIT "-O2 -g ${SELFE_GFORTRAN_OPTIONS}")
    set( C_PREPROCESS_FLAG "" )
endif()