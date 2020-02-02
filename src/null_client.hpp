#pragma once
#include "xassets/xmodel.hpp"
#include "xassets/material.hpp"
#include "xassets/fx.hpp"
#include "xassets/sounds.hpp"
#include "cm_public.hpp"


struct cvar_s;

extern "C"
{
    extern cvar_s* r_reflectionProbeGenerate;
    extern cvar_s* r_modelVertColor;

    FxEffectDef* __cdecl FX_Register(const char* name);
    XModel* __cdecl R_RegisterModel(const char* name);
    Material_t* __cdecl Material_RegisterHandle(const char* name, int imageTrack);
    snd_alias_list_t* __cdecl Com_FindSoundAlias(const char* name);
    void CL_ShutdownHunkUsers();
    void SND_ShutdownChannels();
    void __cdecl CG_TraceCapsule(trace_t* results, const float* start, const float* mins, const float* maxs, const float* end, int passEntityNum, int contentMask);
}

