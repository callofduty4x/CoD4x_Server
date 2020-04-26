cmake_minimum_required(VERSION 3.0)

if(MSVC)
    cmake_policy(SET CMP0091 NEW) # Make use of CMAKE_MSVC_RUNTIME_LIBRARY
endif()

project(cod4x_server)

set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)

enable_language(ASM_NASM)
if (WIN32)
    set(CMAKE_ASM_NASM_OBJECT_FORMAT win)
    set(CMAKE_ASM_NASM_FLAGS "${CMAKE_ASM_NASM_FLAGS} --prefix _")
else()
    set(CMAKE_ASM_NASM_OBJECT_FORMAT elf)
endif()

set(CMAKE_ASM_NASM_COMPILE_OBJECT "<CMAKE_ASM_NASM_COMPILER> <INCLUDES> \
    <FLAGS> -f ${CMAKE_ASM_NASM_OBJECT_FORMAT} -o <OBJECT> <SOURCE>")

set(CMAKE_CXX_STANDARD 17)

set(CMAKE_MSVC_RUNTIME_LIBRARY "MultiThreaded$<$<CONFIG:Debug>:Debug>")

if(UNIX)
    # Remove "-Wattributes" warning as we must be sure C/CPP functions are using specified calling conventions.
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -m32 -Wno-attributes")
    set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -m32 -Wno-attributes")
endif()

# Adding dependencies...
add_subdirectory(public_sdk)
# Adding sources...
add_subdirectory(src)
add_subdirectory(src/asmsource)
add_subdirectory(src/version)
add_subdirectory(src/xassets)

if(WIN32)
    add_subdirectory(src/win32)
else()
    add_subdirectory(src/unix)
endif()
