#pragma once
#include <csetjmp>

struct cvar_s;

extern "C"
{
    extern char error_message[1024];
    extern cvar_s* logScriptTimes;
    extern cvar_s* scrVmEnableScripts;
    extern int gScrExecuteTime;
    extern int g_script_error_level;
    extern jmp_buf g_script_error[33];

    void Scr_AddStruct();
}
