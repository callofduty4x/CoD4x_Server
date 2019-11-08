file(GLOB CPP_INC *.hpp *.h)
file(GLOB CPP_SRC *.cpp *.c)
file(GLOB ASM_SRC *.asm)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -m32 -msse2 -mfpmath=sse -Wall -fno-omit-frame-pointer -fmax-errors=15")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS}-m32 -msse2 -mfpmath=sse -Wall -fno-omit-frame-pointer -fmax-errors=15")

#-lws2_32 -lwsock32 -liphlpapi -lgdi32 -lwinmm -lkernel32 -lstdc++
set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -m32 -Wl,--nxcompat,--stack,0x800000 -mwindows -static-libgcc -static")

add_definitions(-DCOD4X18UPDATE)

add_executable(${PROJECT_NAME} ${ASM_SRC} ${CPP_INC} ${CPP_SRC})
target_link_libraries(${PROJECT_NAME} m stdc++ mbedtls mbedcrypto mbedx509 tomcrypt asmsource version xassets zlib)

if(WIN32)
    target_link_libraries(${PROJECT_NAME} win32)
else()
endif()

target_include_directories(${PROJECT_NAME} PRIVATE ${CMAKE_CURRENT_SOURCE_DIR} ${mbedtls_SOURCE_DIR}/include)
