project(tomcrypt)

file(GLOB_RECURSE CPP_SRC libtomcrypt/src/*.c)
file(GLOB_RECURSE CPP_INC libtomcrypt/src/headers/*.h libtomcrypt/src/headers/*.hpp)

add_library(${PROJECT_NAME} STATIC ${CPP_SRC} ${CPP_INC})
target_include_directories(${PROJECT_NAME} PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/libtomcrypt/src/headers)

target_compile_options(${PROJECT_NAME} PRIVATE -m32 -Wall -Os -s)
target_compile_definitions(${PROJECT_NAME} PRIVATE LTC_NO_ROLC LTC_SOURCE)