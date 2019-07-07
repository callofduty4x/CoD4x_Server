set(LIBRARY_NAME asmsource)

file(GLOB_RECURSE ASM_SRC *.asm)

add_library(${LIBRARY_NAME} STATIC ${ASM_SRC})
