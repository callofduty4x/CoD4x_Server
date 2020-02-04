cmake_minimum_required(VERSION 3.0)

cmake_policy(SET CMP0091 NEW) # Make use of CMAKE_MSVC_RUNTIME_LIBRARY

project(cod4x_server)

set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)

enable_language(ASM_NASM)
set(CMAKE_ASM_NASM_OBJECT_FORMAT win)
set(CMAKE_ASM_NASM_COMPILE_OBJECT "<CMAKE_ASM_NASM_COMPILER> <INCLUDES> \
	<FLAGS> -f ${CMAKE_ASM_NASM_OBJECT_FORMAT} -dWin32 -o <OBJECT> <SOURCE>")
set(CMAKE_ASM_NASM_FLAGS "${CMAKE_ASM_NASM_FLAGS} --prefix _")

set(CMAKE_CXX_STANDARD 17)

set(CMAKE_MSVC_RUNTIME_LIBRARY "MultiThreaded$<$<CONFIG:Debug>:Debug>")

# Adding dependencies...
# ... mbedtls
option(INSTALL_MBEDTLS_HEADERS OFF)
option(ENABLE_TESTING OFF)
option(ENABLE_PROGRAMS OFF)
add_subdirectory(deps/mbedtls)
set(mbedtls_SOURCE_DIR ${CMAKE_SOURCE_DIR}/deps/mbedtls CACHE PATH "Path to a root of mbedtls dependency")

# ... libtomcrypt
add_subdirectory(deps/tomcrypt)

# .. zlib
add_subdirectory(deps/zlib)

# Adding sources...
add_subdirectory(src)
add_subdirectory(src/asmsource)
add_subdirectory(src/version)
add_subdirectory(src/win32)
add_subdirectory(src/xassets)
