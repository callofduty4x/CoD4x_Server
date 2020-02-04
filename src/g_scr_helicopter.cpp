#include "g_scr_helicopter.hpp"
#include "g_shared.hpp"
#include "g_scr_vehicle.hpp"
#include "g_main_mp.hpp"


int helicopter_thinktime;

extern "C"
{
    cvar_t* vehHelicopterDecelerationFwd;
    cvar_t* vehHelicopterDecelerationSide;
    cvar_t* vehHelicopterHoverSpeedThreshold;
    cvar_t* vehHelicopterJitterJerkyness;
    cvar_t* vehHelicopterLookaheadTime;
    cvar_t* vehHelicopterMaxAccel;
    cvar_t* vehHelicopterMaxAccelVertical;
    cvar_t* vehHelicopterMaxPitch;
    cvar_t* vehHelicopterMaxRoll;
    cvar_t* vehHelicopterMaxSpeed;
    cvar_t* vehHelicopterMaxSpeedVertical;
    cvar_t* vehHelicopterMaxYawAccel;
    cvar_t* vehHelicopterMaxYawRate;
    cvar_t* vehHelicopterRightStickDeadzone;
    cvar_t* vehHelicopterScaleMovement;
    cvar_t* vehHelicopterSoftCollisions;
    cvar_t* vehHelicopterStrafeDeadzone;
    cvar_t* vehHelicopterTiltFromAcceleration;
    cvar_t* vehHelicopterTiltFromControllerAxes;
    cvar_t* vehHelicopterTiltFromDeceleration;
    cvar_t* vehHelicopterTiltFromFwdAndYaw;
    cvar_t* vehHelicopterTiltFromFwdAndYaw_VelAtMaxTilt;
    cvar_t* vehHelicopterTiltFromVelocity;
    cvar_t* vehHelicopterTiltMomentum;
    cvar_t* vehHelicopterTiltSpeed;
    cvar_t* vehHelicopterYawOnLeftStick;
    cvar_t* vehHelicopterHeadSwayDontSwayTheTurret;
    cvar_t* vehHelicopterInvertUpDown;

    void Helicopter_Think(struct gentity_s* ent)
    {
        Scr_Vehicle_Think(ent);
        ent->nextthink = level.time + helicopter_thinktime;
    }
}