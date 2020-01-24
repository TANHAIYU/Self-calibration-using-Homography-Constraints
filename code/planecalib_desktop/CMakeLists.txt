#GLUT should already be included
##################################
# Sources

set(sources_cpp)
set(sources_h)
list(APPEND sources_cpp "main.cpp")

# Target
add_executable(planecalib_desktop ${sources_cpp} ${sources_h})
target_link_libraries (planecalib_desktop planecalib_ui planecalib gflags glut) 

add_custom_command(TARGET planecalib_desktop POST_BUILD
	COMMAND ${CMAKE_COMMAND} -E copy_directory ${PROJECT_SOURCE_DIR}/planecalib/assets $<TARGET_FILE_DIR:planecalib_desktop>/assets)
add_custom_command(TARGET planecalib_desktop POST_BUILD
	COMMAND ${CMAKE_COMMAND} -E copy_directory ${PROJECT_SOURCE_DIR}/planecalib_ui/assets $<TARGET_FILE_DIR:planecalib_desktop>/assets)
	
