#pragma once

extern "C"
{
    extern int g_debugUser;
    extern char g_largeLocalPos[0x1c];
    extern char g_largeLocalBuf[0x80000];
    extern char hunk_high[0x8];
    extern char hunk_low[0x8];
    extern int s_hunkData;
    extern int s_hunkTotal;
    extern char com_hunkData[0x8];
    extern char com_fileDataHashTable[0x1000];
    extern int s_origHunkData;
    extern char Com_Meminfo_f_VAR[0x3c];
} // extern "C"
