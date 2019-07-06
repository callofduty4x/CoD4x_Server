file(GLOB_RECURSE ASM_SRC *.asm)

target_sources(${PROJECT_NAME} PRIVATE ${ASM_SRC})
