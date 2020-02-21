#pragma once

struct SConstConfigString
{
    int CSIndex;
    const char* const Text;
    int a;
    int b;
};


extern "C"
{
    extern SConstConfigString constantConfigStrings[833];
    extern char tempString[0x800];
    extern char constantConfigStringCount[0x4C];
    extern char reservedConfigStrings[0x134];
} // extern "C"
