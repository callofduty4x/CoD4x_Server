set(LIBRARY_NAME zlib)

file(GLOB_RECURSE CPP_SRC *.c *.cpp)
file(GLOB_RECURSE CPP_INC *.h *.hpp)

add_library(${LIBRARY_NAME} STATIC ${CPP_SRC} ${CPP_INC})
