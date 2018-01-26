# Find jsoncpp
#
# Find the nlohmann json header
#
# if you nee to add a custom library search path, do it via via CMAKE_PREFIX_PATH
#
# This module defines
#
#  nlohmann_json_INCLUDE_DIR, where to find header, etc.
#
#  nlohmann_json_FOUND, If false, do not try to use jsoncpp.
#
#  nlohmann_json_INCLUDE_NAME, the actual header name. You only have
#      to use this if you want to support 2.0.x which installs
#      a top-level json.hpp instead of nlohmann/json.hpp
#

# only look in default directories
set(nlohmann_json_INCLUDE_NAME "nlohmann/json.hpp")
find_path(
	nlohmann_json_INCLUDE_DIR
	NAMES "${nlohmann_json_INCLUDE_NAME}"
	DOC "nlohmann json include dir"
)

if (NOT nlohmann_json_INCLUDE_DIR)
	set(nlohmann_json_INCLUDE_NAME "json.hpp")
	find_path(
		nlohmann_json_INCLUDE_DIR
		NAMES "${nlohmann_json_INCLUDE_NAME}"
	)
endif()

# handle the QUIETLY and REQUIRED arguments and set nlohmann_json_FOUND to TRUE
# if all listed variables are TRUE, hide their existence from configuration view
include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(nlohmann_json DEFAULT_MSG nlohmann_json_INCLUDE_DIR nlohmann_json_INCLUDE_NAME)
