file(GLOB_RECURSE CPP_SRC *.c *.cpp)
file(GLOB_RECURSE CPP_INC *.h *.hpp)

target_sources(${PROJECT_NAME} PRIVATE ${CPP_SRC} ${CPP_INC})
