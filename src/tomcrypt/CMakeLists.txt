project(tomcrypt)

file(GLOB CPP_SRC
    ciphers/aes/aes.c
    hashes/*.c
    misc/crypt/*.c
    misc/base64/*.c
    misc/*.c
    misc/pkcs5/*.c
    mac/hmac/*.c
    pk/asn1/der/bit/*.c
    pk/asn1/der/boolean/*.c
    pk/asn1/der/choice/*.c
    pk/asn1/der/ia5/*.c
    pk/asn1/der/integer/*.c
    pk/asn1/der/object_identifier/*.c
    pk/asn1/der/octet/*.c
    pk/asn1/der/printable_string/*.c
    pk/asn1/der/sequence/*.c
    pk/asn1/der/short_integer/*.c
    pk/asn1/der/utctime/*.c
    pk/asn1/der/utf8/*.c
    pk/asn1/der/set/*.c
    pk/rsa/*.c
    pk/pkcs1/*.c
    math/*.c)
file(GLOB_RECURSE CPP_INC *.h *.hpp)

add_definitions(-DLTC_NO_ROLC -DLTC_SOURCE)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -m32 -Wall -Os -s")

add_library(${PROJECT_NAME} STATIC ${CPP_SRC} ${CPP_INC})
target_include_directories(${PROJECT_NAME} PRIVATE ${CMAKE_CURRENT_SOURCE_DIR} ${CMAKE_CURRENT_SOURCE_DIR}/math)
