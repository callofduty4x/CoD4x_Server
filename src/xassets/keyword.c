#include "keyword.h"
#include <stdio.h>
#include <string.h>
#include "../q_shared.h"

/* Find a word for key in given table. Returns string idx. */
const char *find_word(const KeyWord_t *table, const uint idx)
{
    mvabuf;
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
    return va("%d", idx);
}