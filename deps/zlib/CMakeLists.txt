

# Adding zlib submodule which can be compiled by provided CMakeLists.txt
add_subdirectory(zlib)

# Adding zlib/contrib/minizip part which is not getting compiled by provided CMakeLists.txt.
project(zlib_minizip)

set(CPP_SRC 
	${zlib_SOURCE_DIR}/contrib/minizip/unzip.c
	${zlib_SOURCE_DIR}/contrib/minizip/ioapi.c
)
set(CPP_INC 
	${zlib_SOURCE_DIR}/contrib/minizip/unzip.h
	${zlib_SOURCE_DIR}/contrib/minizip/ioapi.h
)

add_library(${PROJECT_NAME} STATIC ${CPP_SRC} ${CPP_INC})
target_include_directories(${PROJECT_NAME} PUBLIC ${zlib_SOURCE_DIR}/contrib/minizip)
