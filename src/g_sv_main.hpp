#pragma once
#include "cvar.hpp"

extern cvar_t* g_motd;

extern "C"
{
    void __cdecl G_SafeServerDObjFree(int handle);
    void __cdecl G_RegisterCvars();
    void __cdecl ExitLevel();
} // extern "C"
