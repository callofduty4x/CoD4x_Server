#pragma once

typedef unsigned int uint;

typedef struct Rawfile_t
{
    char *name;
    uint data_size;
    char *data;
}Rawfile_t;

#define XASSET_TYPE_RAWFILE (31)
