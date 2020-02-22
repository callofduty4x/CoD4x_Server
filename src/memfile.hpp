#pragma once


extern "C"
{
    extern int g_zeroCount;
    extern char g_nonZeroCount[0x1c];
    extern char stream[0x40];
    extern char g_saveBuffer[0x2000];
    extern char g_cacheBuffer[0x44];
    extern int g_cacheBufferLen;
    extern int g_cacheSize;
    extern int streamModeThread;
    extern int streamMode;
    extern char g_compress[0x4c];
} // extern "C"
