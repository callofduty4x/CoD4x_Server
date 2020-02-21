#pragma once
#include "q_platform.hpp"

#include "dobj.hpp"


extern "C"
{
    extern int g_bDObjInited;
    extern char com_lastDObjIndex[0x1c];
    extern uint16_t serverObjMap[1024];
    extern char clientObjMap[0x900];
    extern char objFreeCount[0x20];
    extern char objAlloced[0x800];
    extern DObj_t objBuf[2048];

    void CCDECL Com_ShutdownDObj();
} // extern "C"
