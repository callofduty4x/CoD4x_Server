#include "memfile.hpp"


extern "C"
{
    int g_zeroCount;
    char g_nonZeroCount[0x1c];
    char stream[0x40];
    char g_saveBuffer[0x2000];
    char g_cacheBuffer[0x44];
    int g_cacheBufferLen;
    int g_cacheSize;
    int streamModeThread;
    int streamMode;
    char g_compress[0x4c];
} // extern "C"
