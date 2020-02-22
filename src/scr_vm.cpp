#include "scr_vm.hpp"

extern "C"
{
    char g_EndPos;
    scrVmGlob_t gScrVmGlob;
    int thread_count;
    char gFs[0x14];
    int caseCount;
    char opcode[0x8];
    scrVmPub_t gScrVmPub;
    char g_loadedImpureScript[0x80];
    char g_allocNodeUser[0x80];
    int g_user;
}
