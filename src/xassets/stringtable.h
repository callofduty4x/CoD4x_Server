#pragma once

typedef unsigned int uint;

typedef struct StringTable_t
{
    char *name;
    uint columns;
    uint rows;
    char **data; /* Pointer to 2D array: a[i][j] == data[i*columns + j] */
}StringTable_t;

#define XASSET_TYPE_STRINGTABLE (32)
