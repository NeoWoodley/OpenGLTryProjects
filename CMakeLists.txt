cmake_minimum_required(VERSION 3.13)
project(Try4)

#set(CMAKE_CXX_STANDARD 14)

#set(SOURCE_FILES test1.cpp)
#add_executable(${PROJECT_NAME} ${SOURCE_FILES})

find_package(OpenGL REQUIRED)
#find_package(GLUT REQUIRED)

if (CMAKE_BINARY_DIR STREQUAL CMAKE_SOURCE_DIR)
	message(FATAL_ERROR "Please select another Build Directory ! (and give it a clever name, like bin_Visual2012_64bits/)")
endif ()
if (CMAKE_SOURCE_DIR MATCHES " ")
	message("Your Source Directory contains spaces. If you experience problems when compiling, this can be the cause.")
endif ()
if (CMAKE_BINARY_DIR MATCHES " ")
	message("Your Build Directory contains spaces. If you experience problems when compiling, this can be the cause.")
endif ()


# Compile external dependencies
add_subdirectory(external)

# On Visual 2005 and above, this module can set the debug working directory
cmake_policy(SET CMP0026 OLD)
list(APPEND CMAKE_MODULE_PATH "${CMAKE_SOURCE_DIR}/external/rpavlik-cmake-modules-fe2273")
include(CreateLaunchers)
include(MSVCMultipleProcessCompile) # /MP

if (INCLUDE_DISTRIB)
	add_subdirectory(distrib)
endif (INCLUDE_DISTRIB)


include_directories(
		external/AntTweakBar-1.16/include/
		external/glfw-3.1.2/include/
		external/glm-0.9.7.1/
		external/glew-1.13.0/include/
		external/assimp-3.0.1270/include/
		external/bullet-2.81-rev2613/src/
		.
)

set(ALL_LIBS
		${OPENGL_LIBRARY}
		glfw
		GLEW_1130
		)

add_definitions(
		-DTW_STATIC
		-DTW_NO_LIB_PRAGMA
		-DTW_NO_DIRECT3D
		-DGLEW_STATIC
		-D_CRT_SECURE_NO_WARNINGS
)

# test1
add_executable(test1
		test1/test1.cpp)
target_link_libraries(test1
		${ALL_LIBS}
		)
# Xcode and Visual working directories
set_target_properties(test1 PROPERTIES XCODE_ATTRIBUTE_CONFIGURATION_BUILD_DIR
		"${CMAKE_CURRENT_SOURCE_DIR}/test1/")
create_target_launcher(test1 WORKING_DIRECTORY "${CMAKE_CURRENT_SOURCE_DIR}/test1/")

# try1.cpp


#set(GLAD_INCLUDE_DIRS /Users/neowoodley/Projects/CLionProjects/Try4/glad)
#include_directories(${OPENGL_INCLUDE_DIRS} ${GLUT_INCLUDE_DIRS} ${GLAD_INCLUDE_DIRS})
#
#target_link_libraries(${PROJECT_NAME} ${OPENGL_LIBRARIES} ${GLUT_LIBRARY} ${GLAD_INCLUDE_DIRS})

# User playground
add_executable(playground
		playground/playground.cpp
		common/shader.cpp
		common/shader.hpp
		)
target_link_libraries(playground
		${ALL_LIBS}
		)
# Xcode and Visual working directories
set_target_properties(playground PROPERTIES XCODE_ATTRIBUTE_CONFIGURATION_BUILD_DIR "${CMAKE_CURRENT_SOURCE_DIR}/playground/")
create_target_launcher(playground WORKING_DIRECTORY "${CMAKE_CURRENT_SOURCE_DIR}/playground/")


# Misc 5, with glReadPixels
add_executable(misc05_picking_slow_easy
		misc05_picking/misc05_picking_slow_easy.cpp
		common/shader.cpp
		common/shader.hpp
		common/controls.cpp
		common/controls.hpp
		common/texture.cpp
		common/texture.hpp
		common/objloader.cpp
		common/objloader.hpp
		common/vboindexer.cpp
		common/vboindexer.hpp

		misc05_picking/StandardShading.vertexshader
		misc05_picking/StandardShading.fragmentshader
		misc05_picking/Picking.vertexshader
		misc05_picking/Picking.fragmentshader
		)
target_link_libraries(misc05_picking_slow_easy
		${ALL_LIBS}
		ANTTWEAKBAR_116_OGLCORE_GLFW
		)
# Xcode and Visual working directories
set_target_properties(misc05_picking_slow_easy PROPERTIES XCODE_ATTRIBUTE_CONFIGURATION_BUILD_DIR "${CMAKE_CURRENT_SOURCE_DIR}/misc05_picking/")
create_target_launcher(misc05_picking_slow_easy WORKING_DIRECTORY "${CMAKE_CURRENT_SOURCE_DIR}/misc05_picking/")

# Misc 5, with custom ray-box intersection
add_executable(misc05_picking_custom
		misc05_picking/misc05_picking_custom.cpp
		common/shader.cpp
		common/shader.hpp
		common/controls.cpp
		common/controls.hpp
		common/texture.cpp
		common/texture.hpp
		common/objloader.cpp
		common/objloader.hpp
		common/vboindexer.cpp
		common/vboindexer.hpp

		misc05_picking/StandardShading.vertexshader
		misc05_picking/StandardShading.fragmentshader
		)
target_link_libraries(misc05_picking_custom
		${ALL_LIBS}
		ANTTWEAKBAR_116_OGLCORE_GLFW
		)
# Xcode and Visual working directories
set_target_properties(misc05_picking_custom PROPERTIES XCODE_ATTRIBUTE_CONFIGURATION_BUILD_DIR "${CMAKE_CURRENT_SOURCE_DIR}/misc05_picking/")
create_target_launcher(misc05_picking_custom WORKING_DIRECTORY "${CMAKE_CURRENT_SOURCE_DIR}/misc05_picking/")

# Misc 5, with Bullet Physics
add_executable(misc05_picking_BulletPhysics
		misc05_picking/misc05_picking_BulletPhysics.cpp
		common/shader.cpp
		common/shader.hpp
		common/controls.cpp
		common/controls.hpp
		common/texture.cpp
		common/texture.hpp
		common/objloader.cpp
		common/objloader.hpp
		common/vboindexer.cpp
		common/vboindexer.hpp

		misc05_picking/StandardShading.vertexshader
		misc05_picking/StandardShading.fragmentshader
		)
target_link_libraries(misc05_picking_BulletPhysics
		${ALL_LIBS}
		ANTTWEAKBAR_116_OGLCORE_GLFW
		BulletDynamics
		BulletCollision
		LinearMath
		)
# Xcode and Visual working directories
set_target_properties(misc05_picking_BulletPhysics PROPERTIES XCODE_ATTRIBUTE_CONFIGURATION_BUILD_DIR "${CMAKE_CURRENT_SOURCE_DIR}/misc05_picking/")
create_target_launcher(misc05_picking_BulletPhysics WORKING_DIRECTORY "${CMAKE_CURRENT_SOURCE_DIR}/misc05_picking/")


SOURCE_GROUP(common REGULAR_EXPRESSION ".*/common/.*")
SOURCE_GROUP(shaders REGULAR_EXPRESSION ".*/.*shader$")


if (NOT ${CMAKE_GENERATOR} MATCHES "Xcode")
	add_custom_command(
			TARGET test1 POST_BUILD
			COMMAND ${CMAKE_COMMAND} -E copy
			"${CMAKE_CURRENT_BINARY_DIR}/${CMAKE_CFG_INTDIR}/test1${CMAKE_EXECUTABLE_SUFFIX}"
			"${CMAKE_CURRENT_SOURCE_DIR}/test1/"
	)
	add_custom_command(
			TARGET playground POST_BUILD
			COMMAND ${CMAKE_COMMAND} -E copy "${CMAKE_CURRENT_BINARY_DIR}/${CMAKE_CFG_INTDIR}/playground${CMAKE_EXECUTABLE_SUFFIX}" "${CMAKE_CURRENT_SOURCE_DIR}/playground/"
	)
	add_custom_command(
			TARGET misc05_picking_slow_easy POST_BUILD
			COMMAND ${CMAKE_COMMAND} -E copy "${CMAKE_CURRENT_BINARY_DIR}/${CMAKE_CFG_INTDIR}/misc05_picking_slow_easy${CMAKE_EXECUTABLE_SUFFIX}" "${CMAKE_CURRENT_SOURCE_DIR}/misc05_picking/"
	)
	add_custom_command(
			TARGET misc05_picking_custom POST_BUILD
			COMMAND ${CMAKE_COMMAND} -E copy "${CMAKE_CURRENT_BINARY_DIR}/${CMAKE_CFG_INTDIR}/misc05_picking_custom${CMAKE_EXECUTABLE_SUFFIX}" "${CMAKE_CURRENT_SOURCE_DIR}/misc05_picking/"
	)
	add_custom_command(
			TARGET misc05_picking_BulletPhysics POST_BUILD
			COMMAND ${CMAKE_COMMAND} -E copy "${CMAKE_CURRENT_BINARY_DIR}/${CMAKE_CFG_INTDIR}/misc05_picking_BulletPhysics${CMAKE_EXECUTABLE_SUFFIX}" "${CMAKE_CURRENT_SOURCE_DIR}/misc05_picking/"
	)

elseif (${CMAKE_GENERATOR} MATCHES "Xcode")

endif (NOT ${CMAKE_GENERATOR} MATCHES "Xcode")
