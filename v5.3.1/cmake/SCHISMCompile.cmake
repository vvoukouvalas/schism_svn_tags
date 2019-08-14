#message(STATUS "Using SELFE Project default file for various architectures/flags")


if("${CMAKE_Fortran_COMPILER_ID}" STREQUAL "Intel")
    message(STATUS "DEBUG IS ${DEBUG}, SED IS ${USE_SED}, TVD_LIM IS ${TVD_LIM}")
    if(${CMAKE_SYSTEM_NAME} MATCHES "Windows")
         set ( CMAKE_Fortran_FLAGS_RELEASE_INIT "/O2 ${WIN_FORTRAN_OPTIONS}")
         set ( CMAKE_Fortran_FLAGS_DEBUG_INIT "${WIN_FORTRAN_OPTIONS}")
         set ( CMAKE_Fortran_FLAGS_RELWITHDEBINFO_INIT "/O2 /debug:inline_debug_info ${WIN_FORTRAN_OPTIONS}")
         set (CMAKE_EXE_LINKER_FLAGS "/INCREMENTAL:NO /NODEFAULTLIB:LIBCMT.lib;libifcoremt.lib ${WIN_LINKER_OPTIONS}")
    else()
         set (SELFE_INTEL_OPTIONS "-assume byterecl")
         set( CMAKE_Fortran_FLAGS_RELEASE_INIT "-O2 ${SELFE_INTEL_OPTIONS}")
         set( CMAKE_Fortran_FLAGS_DEBUG_INIT "-g ${SELFE_INTEL_OPTIONS}")
         set( CMAKE_Fortran_FLAGS_RELWITHDEBINFO_INIT "-O2 -debug extended -traceback ${SELFE_INTEL_OPTIONS}")
    endif()
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
