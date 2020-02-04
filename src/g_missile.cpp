#include "g_missile.hpp"

extern "C"
{
    byte attrGlob[0x380];
    cvar_t* missileDebugAttractors;
    cvar_t* missileDebugDraw;
    cvar_t* missileDebugText;
    cvar_t* missileHellfireMaxSlope;
    cvar_t* missileHellfireUpAccel;
    cvar_t* missileJavAccelClimb;
    cvar_t* missileJavAccelDescend;
    cvar_t* missileJavClimbAngleDirect;
    cvar_t* missileJavClimbAngleTop;
    cvar_t* missileJavClimbCeilingDirect;
    cvar_t* missileJavClimbCeilingTop;
    cvar_t* missileJavClimbHeightDirect;
    cvar_t* missileJavClimbHeightTop;
    cvar_t* missileJavClimbToOwner;
    cvar_t* missileJavSpeedLimitClimb;
    cvar_t* missileJavSpeedLimitDescend;
    cvar_t* missileJavTurnDecel;
    cvar_t* missileJavTurnRateDirect;
    cvar_t* missileJavTurnRateTop;
    cvar_t* missileWaterMaxDepth;
}
