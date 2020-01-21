/* Main purpose of this file: be able to stringify enum members. */
#pragma once

typedef unsigned int uint;

#define KEYWORD_END ((uint)0xFFFFFFFF)

typedef struct KeyWord_t
{
    uint key;
    char *word;
} KeyWord_t;

const char *find_word(const KeyWord_t *table, const uint idx);

/* No semicolon at end. */
#define DEFINE_KEYWORD( str_name ) KeyWord_t (str_name)[] = {
#define DEFINE_KEYWORD_SIZE( str_name, int_size ) KeyWord_t (str_name)[(int_size) + 1] = {

/* Don't forget comma at end. Always. */
#define ADD_KEYWORD_MEMBER( iEnumValue ) { iEnumValue, #iEnumValue }

/* Don't forget semicolon at end. */
#define FINISH_KEYWORD ADD_KEYWORD_MEMBER(KEYWORD_END) }
