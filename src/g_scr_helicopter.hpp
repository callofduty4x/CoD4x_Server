#pragma once
#include "cvar.hpp"
#include "entity.hpp"
#include "scr_vm.hpp"

extern int helicopter_thinktime;

extern "C"
{
    extern cvar_t* vehHelicopterDecelerationFwd;
    extern cvar_t* vehHelicopterDecelerationSide;
    extern cvar_t* vehHelicopterHoverSpeedThreshold;
    extern cvar_t* vehHelicopterJitterJerkyness;
    extern cvar_t* vehHelicopterLookaheadTime;
    extern cvar_t* vehHelicopterMaxAccel;
    extern cvar_t* vehHelicopterMaxAccelVertical;
    extern cvar_t* vehHelicopterMaxPitch;
    extern cvar_t* vehHelicopterMaxRoll;
    extern cvar_t* vehHelicopterMaxSpeed;
    extern cvar_t* vehHelicopterMaxSpeedVertical;
    extern cvar_t* vehHelicopterMaxYawAccel;
    extern cvar_t* vehHelicopterMaxYawRate;
    extern cvar_t* vehHelicopterRightStickDeadzone;
    extern cvar_t* vehHelicopterScaleMovement;
    extern cvar_t* vehHelicopterSoftCollisions;
    extern cvar_t* vehHelicopterStrafeDeadzone;
    extern cvar_t* vehHelicopterTiltFromAcceleration;
    extern cvar_t* vehHelicopterTiltFromControllerAxes;
    extern cvar_t* vehHelicopterTiltFromDeceleration;
    extern cvar_t* vehHelicopterTiltFromFwdAndYaw;
    extern cvar_t* vehHelicopterTiltFromFwdAndYaw_VelAtMaxTilt;
    extern cvar_t* vehHelicopterTiltFromVelocity;
    extern cvar_t* vehHelicopterTiltMomentum;
    extern cvar_t* vehHelicopterTiltSpeed;
    extern cvar_t* vehHelicopterYawOnLeftStick;
    extern cvar_t* vehHelicopterHeadSwayDontSwayTheTurret;
    extern cvar_t* vehHelicopterInvertUpDown;

    void G_SpawnHelicopter( gentity_t* vehent, gentity_t* ownerent, const char* type, const char* model );
    void CMD_Heli_FreeHelicopter(scr_entref_t entref);
    void CMD_Heli_SetDamageStage(scr_entref_t entref);
}
