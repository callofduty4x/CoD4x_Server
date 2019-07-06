file(GLOB CPP_INC *.hpp *.h)
file(GLOB CPP_SRC *.cpp *.c)
file(GLOB ASM_SRC *.asm)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -m32 -msse2 -mfpmath=sse -Wall -fno-omit-frame-pointer -fmax-errors=15")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS}-m32 -msse2 -mfpmath=sse -Wall -fno-omit-frame-pointer -fmax-errors=15")

#-lws2_32 -lwsock32 -liphlpapi -lgdi32 -lwinmm -lkernel32 -lstdc++
set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -m32 -Wl,--nxcompat,--stack,0x800000 -mwindows -static-libgcc -static")

add_definitions(-DCOD4X18UPDATE -DBUILD_NUMBER=0)

add_executable(${PROJECT_NAME} ${ASM_SRC} ${CPP_INC} ${CPP_SRC})
target_link_libraries(${PROJECT_NAME} m ws2_32 wsock32 iphlpapi gdi32 winmm stdc++ mbedtls mbedcrypto mbedx509 tomcrypt)
target_include_directories(${PROJECT_NAME} PRIVATE ${CMAKE_CURRENT_SOURCE_DIR})

add_subdirectory(asmsource)
add_subdirectory(version)
add_subdirectory(win32)
add_subdirectory(xassets)
add_subdirectory(zlib)
