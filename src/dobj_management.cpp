#include "dobj_management.hpp"

extern "C"
{
    int g_bDObjInited;
    char com_lastDObjIndex[0x1c];
    uint16_t serverObjMap[1024];
    char clientObjMap[0x900];
    char objFreeCount[0x20];
    char objAlloced[0x800];
    DObj_t objBuf[2048];
} // extern "C"
