#include "com_memory.hpp"

extern "C"
{
    int g_debugUser;
    char g_largeLocalPos[0x1c];
    char g_largeLocalBuf[0x80000];
    char hunk_high[0x8];
    char hunk_low[0x8];
    int s_hunkData;
    int s_hunkTotal;
    char com_hunkData[0x8];
    char com_fileDataHashTable[0x1000];
    int s_origHunkData;
    char Com_Meminfo_f_VAR[0x3c];
} // extern "C"
