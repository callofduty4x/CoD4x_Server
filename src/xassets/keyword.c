#include "keyword.h"
#include <stdio.h>
#include <string.h>

/* Find a word for key in given table. Returns string idx. */
const char *find_word(const KeyWord_t *table, const uint idx)
{
    static char str[32];
    
    int i = 0;
    while(1)
    {
        /* This added with "FINISH_KEYWORD" macro. */
        if (table[i].key == KEYWORD_END && !strcmp("KEYWORD_END", table[i].word))
            break;

        if (table[i].key == idx)
            return table[i].word;
        ++i;
    }

    snprintf(str, sizeof(str), "%d", idx);
    return str;
}