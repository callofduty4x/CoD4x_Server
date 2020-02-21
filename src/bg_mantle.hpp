#pragma once

struct cvar_s;

struct MantleAnimTransition
{
    int upAnimIndex;
    int overAnimIndex;
    float height;
};


extern "C"
{
    extern cvar_s* mantle_enable;
    extern cvar_s* mantle_view_yawcap;
    extern cvar_s* mantle_debug;
    extern cvar_s* mantle_check_angle;
    extern cvar_s* mantle_check_range;
    extern cvar_s* mantle_check_radius;

    extern void* s_mantleAnims;
    extern const char* s_mantleAnimNames[16];
    extern MantleAnimTransition s_mantleTrans[7];
}