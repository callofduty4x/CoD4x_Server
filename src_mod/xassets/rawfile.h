/* Raw file storage: name, size and data. Nothing more. Scripts, configs, any file. */
#pragma once
#include "basictypes.h"

typedef struct Rawfile_t
{
    char *name;
    uint data_size;
    char *data;
}Rawfile_t;

#define XASSET_TYPE_RAWFILE (31)
