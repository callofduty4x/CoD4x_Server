# CoD4X Server main executable list.

file(GLOB CPP_INC *.hpp *.h)
file(GLOB CPP_SRC *.cpp *.c)
file(GLOB ASM_SRC *.asm)

#set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -m32 -msse2 -mfpmath=sse -Wall -fno-omit-frame-pointer -fmax-errors=5")
#set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS}-m32 -msse2 -mfpmath=sse -Wall -fno-omit-frame-pointer -fmax-errors=5")

add_executable(${PROJECT_NAME} ${ASM_SRC} ${CPP_INC} ${CPP_SRC})
target_link_libraries(${PROJECT_NAME} m stdc++ mbedtls mbedcrypto mbedx509 tomcrypt asmsource version xassets
    zlibstatic zlib_minizip
)

target_compile_options(${PROJECT_NAME} PRIVATE -m32 -msse2 -mfpmath=sse -Wall -fno-omit-frame-pointer -fmax-errors=5)
target_link_options(${PROJECT_NAME} PRIVATE -m32 -Wl,--nxcompat,--stack,0x800000 -mwindows -static-libgcc -static-libstdc++ -static)

if(WIN32)
    target_link_libraries(${PROJECT_NAME} win32)
else()
endif()

target_include_directories(${PROJECT_NAME} PRIVATE ${CMAKE_CURRENT_SOURCE_DIR} ${mbedtls_SOURCE_DIR}/include
    ${zlib_SOURCE_DIR}
)

target_compile_definitions(${PROJECT_NAME} PRIVATE COD4X18UPDATE)
