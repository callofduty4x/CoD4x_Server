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

    FxEffectDef* CDECL FX_Register(const char* name);
    XModel* CDECL R_RegisterModel(const char* name);
    Material_t* CDECL Material_RegisterHandle(const char* name, int imageTrack);
    snd_alias_list_t* CDECL Com_FindSoundAlias(const char* name);
    void CL_ShutdownHunkUsers();
    void SND_ShutdownChannels();
    void CDECL CG_TraceCapsule(trace_t* results, const float* start, const float* mins, const float* maxs, const float* end, int passEntityNum, int contentMask);
}

