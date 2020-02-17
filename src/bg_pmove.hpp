#pragma once
#include "cm_public.hpp"

struct viewLerpWaypoint_s
{
    int iFrac;
    float fViewHeight;
    int iOffset;
};


struct pmoveHandler_t
{
    void(CCDECL* trace)(trace_t*, const float*, const float*, const float*, const float*, int, int);
    void(CCDECL* playerEvent)(int, int);
};

enum scriptAnimMoveTypes_t
{
    ANIM_MT_UNUSED = 0x0,
    ANIM_MT_IDLE = 0x1,
    ANIM_MT_IDLECR = 0x2,
    ANIM_MT_IDLEPRONE = 0x3,
    ANIM_MT_WALK = 0x4,
    ANIM_MT_WALKBK = 0x5,
    ANIM_MT_WALKCR = 0x6,
    ANIM_MT_WALKCRBK = 0x7,
    ANIM_MT_WALKPRONE = 0x8,
    ANIM_MT_WALKPRONEBK = 0x9,
    ANIM_MT_RUN = 0xA,
    ANIM_MT_RUNBK = 0xB,
    ANIM_MT_RUNCR = 0xC,
    ANIM_MT_RUNCRBK = 0xD,
    ANIM_MT_TURNRIGHT = 0xE,
    ANIM_MT_TURNLEFT = 0xF,
    ANIM_MT_TURNRIGHTCR = 0x10,
    ANIM_MT_TURNLEFTCR = 0x11,
    ANIM_MT_CLIMBUP = 0x12,
    ANIM_MT_CLIMBDOWN = 0x13,
    ANIM_MT_SPRINT = 0x14,
    ANIM_MT_MANTLE_ROOT = 0x15,
    ANIM_MT_MANTLE_UP_57 = 0x16,
    ANIM_MT_MANTLE_UP_51 = 0x17,
    ANIM_MT_MANTLE_UP_45 = 0x18,
    ANIM_MT_MANTLE_UP_39 = 0x19,
    ANIM_MT_MANTLE_UP_33 = 0x1A,
    ANIM_MT_MANTLE_UP_27 = 0x1B,
    ANIM_MT_MANTLE_UP_21 = 0x1C,
    ANIM_MT_MANTLE_OVER_HIGH = 0x1D,
    ANIM_MT_MANTLE_OVER_MID = 0x1E,
    ANIM_MT_MANTLE_OVER_LOW = 0x1F,
    ANIM_MT_FLINCH_FORWARD = 0x20,
    ANIM_MT_FLINCH_BACKWARD = 0x21,
    ANIM_MT_FLINCH_LEFT = 0x22,
    ANIM_MT_FLINCH_RIGHT = 0x23,
    ANIM_MT_STUMBLE_FORWARD = 0x24,
    ANIM_MT_STUMBLE_BACKWARD = 0x25,
    ANIM_MT_STUMBLE_WALK_FORWARD = 0x26,
    ANIM_MT_STUMBLE_WALK_BACKWARD = 0x27,
    ANIM_MT_STUMBLE_CROUCH_FORWARD = 0x28,
    ANIM_MT_STUMBLE_CROUCH_BACKWARD = 0x29,
    ANIM_MT_STUMBLE_SPRINT_FORWARD = 0x2A,
    NUM_ANIM_MOVETYPES = 0x2B,
};

extern "C"
{
    extern vec3_t playerMins;
    extern vec3_t playerMaxs;
}
