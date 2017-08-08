#include "server.h"

unsigned int __cdecl SV_GetConfigstringConst(int index)
{
    assert((unsigned)index < MAX_CONFIGSTRINGS);
    assert(sv.configstrings[index]);

    return sv.configstrings[index];
}