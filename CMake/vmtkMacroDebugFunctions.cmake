########################################################################################
# Macro function provided to simplify debugging of CMake build system generator. 
#
# To utilize these functions copy/paste the following line at the top of the cmake file
# you want to debug:
# 
# include(${VMTK_SOURCE_DIR}/CMake/vmtkMacroDebugFunctions.cmake)
#
# Then simply call print_all_variables() at the appropriate location within the cmake file
# to print all current variable names. 
#
# This function was contributed by Richard Izzo as taken from the post by user: Phil
# on stackoverflow. Access date: 09 April, 2018. URL:
# https://stackoverflow.com/questions/31343813/displaying-cmake-variables
#
########################################################################################

macro(print_all_variables)
    message(STATUS "print_all_variables------------------------------------------{")
    get_cmake_property(_variableNames VARIABLES)
    foreach (_variableName ${_variableNames})
        message(STATUS "${_variableName}=${${_variableName}}")
    endforeach()
    message(STATUS "print_all_variables------------------------------------------}")
endmacro()

macro(print_variable variableName)
    message(STATUS "print_variable-----------------------------------------------{")
    get_cmake_property(_variableName ${variableName})
    message(STATUS "${variableName}=${_variableName}")
    message(STATUS "print_variable-----------------------------------------------}")
endmacro()