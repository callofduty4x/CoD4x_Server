cmake_minimum_required(VERSION 3.0)
project(cod4x_server)

set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)

enable_language(ASM_NASM)
set(CMAKE_ASM_NASM_OBJECT_FORMAT win)
set(CMAKE_ASM_NASM_COMPILE_OBJECT "<CMAKE_ASM_NASM_COMPILER> <INCLUDES> \
    <FLAGS> -f ${CMAKE_ASM_NASM_OBJECT_FORMAT} -dWin32 --prefix _ -o <OBJECT> <SOURCE>")

set(CMAKE_CXX_STANDARD 17)

add_subdirectory(src)
add_subdirectory(src/mbedtls)
add_subdirectory(src/tomcrypt)
add_subdirectory(src/asmsource)
add_subdirectory(src/version)
add_subdirectory(src/win32)
add_subdirectory(src/xassets)
add_subdirectory(src/zlib)
