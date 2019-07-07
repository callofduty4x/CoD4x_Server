set(LIBRARY_NAME win32)

file(GLOB_RECURSE CPP_SRC *.c *.cpp)
file(GLOB_RECURSE CPP_INC *.h *.hpp)

add_library(${LIBRARY_NAME} STATIC ${CPP_SRC} ${CPP_INC})
target_link_libraries(${LIBRARY_NAME} winmm)
#ws2_32 wsock32 iphlpapi gdi32
