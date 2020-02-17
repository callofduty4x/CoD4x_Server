# CoD4X Server main executable list.

file(GLOB CPP_INC *.hpp *.h)
file(GLOB CPP_SRC *.cpp *.c)
file(GLOB ASM_SRC *.asm)

if(MSVC)
	set(EXECUTABLE_FLAG WIN32)
endif()

add_executable(${PROJECT_NAME} ${EXECUTABLE_FLAG} ${ASM_SRC} ${CPP_INC} ${CPP_SRC})
target_link_libraries(${PROJECT_NAME} mbedtls mbedcrypto mbedx509 tomcrypt asmsource version xassets
    zlibstatic zlib_minizip
)

if(MSVC)
    target_link_libraries(${PROJECT_NAME} win32)
    # _SILENCE_CXX17_C_HEADER_DEPRECATION_WARNING - some required headers are deprecated but still used.
    # NOMINMAX - remove windows.h min and max macro definitions because we have so nice std::min and std::max
    target_compile_definitions(${PROJECT_NAME} PRIVATE _SILENCE_CXX17_C_HEADER_DEPRECATION_WARNING NOMINMAX)
elseif(WIN32) # MinGW-w64
    target_compile_options(${PROJECT_NAME} PRIVATE -m32 -msse2 -mfpmath=sse -Wall -fno-omit-frame-pointer -fmax-errors=5)
    target_link_options(${PROJECT_NAME} PRIVATE -m32 -Wl,--nxcompat,--stack,0x800000 -mwindows -static-libgcc -static-libstdc++ -static)
    target_link_libraries(${PROJECT_NAME} m stdc++)
elseif(UNIX)
    target_compile_options(${PROJECT_NAME} PRIVATE -m32 -msse2 -mfpmath=sse -Wall -fno-omit-frame-pointer -fmax-errors=5)
    target_link_options(${PROJECT_NAME} PRIVATE -m32 -static-libgcc -static-libstdc++ -static)
    target_link_libraries(${PROJECT_NAME} m stdc++ unix pthread dl)
endif()

target_include_directories(${PROJECT_NAME} PRIVATE ${CMAKE_CURRENT_SOURCE_DIR} ${mbedtls_SOURCE_DIR}/include
    ${zlib_SOURCE_DIR}
)

target_compile_definitions(${PROJECT_NAME} PRIVATE COD4X18UPDATE)
