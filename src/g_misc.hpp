#pragma once
#include "q_math.hpp"

#define MAX_TURRETS 32

struct turretInfo_s
{
    int inuse;
    int flags;
    int fireTime;
    vec2_t arcmin;
    vec2_t arcmax;
    float dropPitch;
    int stance;
    int prevStance;
    int fireSndDelay;
    vec3_t userOrigin;
    float playerSpread;
    float pitchCap;
    int triggerDown;
    char fireSnd;
    char fireSndPlayer;
    char stopSnd;
    char stopSndPlayer;
};

extern turretInfo_s turretInfo[MAX_TURRETS];
