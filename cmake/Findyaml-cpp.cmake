# Find the yaml-cpp header and libraries
#
# if you nee to add a custom library search path, do it via via CMAKE_PREFIX_PATH
#
# This module defines
#  yaml-cpp_INCLUDE_DIR, where to find header, etc.
#  yaml-cpp_LIBRARIES, libraries to link to use yaml-cpp
#  yaml-cpp_FOUND, If false, do not try to use yaml-cpp.
#

# only look in default directories
find_path(
	yaml-cpp_INCLUDE_DIR
	NAMES yaml-cpp/yaml.h
	DOC "yaml-cpp include dir"
)

find_library(yaml-cpp_LIBRARIES
	NAMES yaml-cpp
	PATH_SUFFIXES lib lib64)

# handle the QUIETLY and REQUIRED arguments and set yaml-cpp_FOUND to TRUE
# if all listed variables are TRUE, hide their existence from configuration view
include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(yaml-cpp DEFAULT_MSG yaml-cpp_LIBRARIES yaml-cpp_INCLUDE_DIR)
