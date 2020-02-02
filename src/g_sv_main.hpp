#pragma once
#include "cvar.hpp"

extern cvar_t* g_disabledefcmdprefix;
extern cvar_t* g_allowConsoleSay;
extern cvar_t* g_logTimeStampInSeconds;
extern cvar_t* g_debugBullets;
extern cvar_t* g_smoothClients;
extern cvar_t* bg_shock_screenType;
extern cvar_t* bg_shock_lookControl;

extern "C"
{
    void __cdecl G_SafeServerDObjFree(int handle);
    void __cdecl G_RegisterCvars();
    void __cdecl ExitLevel();
} // extern "C"
