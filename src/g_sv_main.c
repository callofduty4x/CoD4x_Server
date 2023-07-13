/*
===========================================================================
    Copyright (C) 2010-2013  Ninja and TheKelm
    Copyright (C) 1999-2005 Id Software, Inc.

    This file is part of CoD4X18-Server source code.

    CoD4X18-Server source code is free software: you can redistribute it and/or modify
    it under the terms of the GNU Affero General Public License as
    published by the Free Software Foundation, either version 3 of the
    License, or (at your option) any later version.

    CoD4X18-Server source code is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU Affero General Public License for more details.

    You should have received a copy of the GNU Affero General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>
===========================================================================
*/

#include "g_sv_main.h"
#include "q_shared.h"
#include "qcommon_io.h"
#include "cvar.h"
#include "entity.h"
#include "player.h"
#include "plugin_handler.h"
#include "g_shared.h"
#include "g_sv_shared.h"
#include "cmd.h"
#include "server.h"

#include <string.h>
#include <stdarg.h>


/* G_Cvars */

cvar_t*  g_speed;
cvar_t*  g_disabledefcmdprefix;
cvar_t*  g_allowConsoleSay;
cvar_t*  g_conrichsay;
cvar_t*  g_cheats;
cvar_t*  g_gametype;
cvar_t*  g_synchronousClients;
cvar_t*  g_log;
cvar_t*  g_logSync;
cvar_t*  g_logTimeStampInSeconds;
cvar_t*  g_banIPs;
cvar_t*  g_gravity;
cvar_t*  g_knockback;
cvar_t*  g_maxDroppedWeapons;
cvar_t*  g_inactivity;
cvar_t*  g_debugDamage;
cvar_t*  g_debugBullets;
cvar_t*  bullet_penetrationEnabled;
cvar_t*  g_entinfo;
cvar_t*  g_motd;
cvar_t*  g_dropForwardSpeed;
cvar_t*  g_dropUpSpeedBase;
cvar_t*  g_dropUpSpeedRand;
cvar_t*  g_dropHorzSpeedRand;
cvar_t*  g_clonePlayerMaxVelocity;
cvar_t*  voice_global;
cvar_t*  voice_localEcho;
cvar_t*  voice_deadChat;
cvar_t*  g_allowVote;
cvar_t*  g_listEntity;
cvar_t*  g_deadChat;
cvar_t*  g_voiceChatTalkingDuration;
cvar_t*  g_TeamIcon_Allies;
cvar_t*  g_TeamIcon_Axis;
cvar_t*  g_TeamIcon_Free;
cvar_t*  g_TeamIcon_Spectator;
cvar_t*  g_ScoresColor_MyTeam;
cvar_t*  g_ScoresColor_EnemyTeam;
cvar_t*  g_ScoresColor_Spectator;
cvar_t*  g_ScoresColor_Free;
cvar_t*  g_ScoresColor_Allies;
cvar_t*  g_ScoresColor_Axis;
cvar_t*  g_TeamName_Allies;
cvar_t*  g_TeamName_Axis;
cvar_t*  g_TeamColor_Allies;
cvar_t*  g_TeamColor_Axis;
cvar_t*  g_TeamColor_MyTeam;
cvar_t*  g_TeamColor_EnemyTeam;
cvar_t*  g_TeamColor_Spectator;
cvar_t*  g_TeamColor_Free;
cvar_t*  g_smoothClients;
cvar_t*  g_antilag;
cvar_t*  g_oldVoting;
cvar_t*  g_voteAbstainWeight;
cvar_t*  g_NoScriptSpam;
cvar_t*  g_debugLocDamage;
cvar_t*  g_friendlyfireDist;
cvar_t*  g_friendlyNameDist;
cvar_t*  melee_debug;
cvar_t*  radius_damage_debug;
cvar_t*  player_throwbackInnerRadius;
cvar_t*  player_throwbackOuterRadius;
cvar_t*  player_MGUseRadius;
cvar_t*  g_minGrenadeDamageSpeed;
cvar_t*  g_compassShowEnemies;
cvar_t*  pickupPrints;
cvar_t*  g_dumpAnims;
cvar_t*  g_useholdtime;
cvar_t*  g_useholdspawndelay;
cvar_t*  g_redCrosshairs;
cvar_t*  g_mantleBlockTimeBuffer;
cvar_t*  g_fogColorReadOnly;
cvar_t*  g_fogStartDistReadOnly;
cvar_t*  g_fogHalfDistReadOnly;

/* Vehicle Cvars */

cvar_t*  vehHelicopterMaxSpeed;
cvar_t*  vehHelicopterMaxSpeedVertical;
cvar_t*  vehHelicopterMaxAccel;
cvar_t*  vehHelicopterMaxAccelVertical;
cvar_t*  vehHelicopterMaxYawRate;
cvar_t*  vehHelicopterMaxYawAccel;
cvar_t*  vehHelicopterMaxPitch;
cvar_t*  vehHelicopterMaxRoll;
cvar_t*  vehHelicopterLookaheadTime;
cvar_t*  vehHelicopterHoverSpeedThreshold;
cvar_t*  vehHelicopterRightStickDeadzone;
cvar_t*  vehHelicopterStrafeDeadzone;
cvar_t*  vehHelicopterScaleMovement;
cvar_t*  vehHelicopterSoftCollisions;
cvar_t*  vehHelicopterDecelerationFwd;
cvar_t*  vehHelicopterDecelerationSide;
cvar_t*  vehHelicopterInvertUpDown;
cvar_t*  vehHelicopterYawOnLeftStick;
cvar_t*  vehHelicopterTiltSpeed;
cvar_t*  vehHelicopterTiltFromAcceleration;
cvar_t*  vehHelicopterTiltFromDeceleration;
cvar_t*  vehHelicopterTiltFromVelocity;
cvar_t*  vehHelicopterTiltFromControllerAxes;
cvar_t*  vehHelicopterTiltFromFwdAndYaw;
cvar_t*  vehHelicopterTiltFromFwdAndYaw_VelAtMaxTilt;
cvar_t*  vehHelicopterJitterJerkyness;
cvar_t*  vehHelicopterHeadSwayDontSwayTheTurret;
cvar_t*  vehHelicopterTiltMomentum;
cvar_t*  vehDebugServer;
cvar_t*  vehTextureScrollScale;
cvar_t*  vehTestHorsepower;
cvar_t*  vehTestWeight;
cvar_t*  vehTestMaxMPH;


/* Missle Cvars */

cvar_t*  missileHellfireMaxSlope;
cvar_t*  missileHellfireUpAccel;
cvar_t*  missileJavClimbHeightDirect;
cvar_t*  missileJavClimbHeightTop;
cvar_t*  missileJavClimbAngleDirect;
cvar_t*  missileJavClimbAngleTop;
cvar_t*  missileJavClimbCeilingDirect;
cvar_t*  missileJavClimbCeilingTop;
cvar_t*  missileJavTurnRateDirect;
cvar_t*  missileJavTurnRateTop;
cvar_t*  missileJavAccelClimb;
cvar_t*  missileJavAccelDescend;
cvar_t*  missileJavSpeedLimitClimb;
cvar_t*  missileJavSpeedLimitDescend;
cvar_t*  missileJavTurnDecel;
cvar_t*  missileJavClimbToOwner;
cvar_t*  missileWaterMaxDepth;


/* Missle Debug Cvars */

cvar_t*  missileDebugDraw;
cvar_t*  missileDebugText;
cvar_t*  missileDebugAttractors;



/* BG Cvars */


cvar_t*  bg_viewKickScale;
cvar_t*  bg_viewKickMax;
cvar_t*  bg_viewKickMin;
cvar_t*  bg_viewKickRandom;
cvar_t*  player_view_pitch_up;
cvar_t*  player_view_pitch_down;
cvar_t*  player_lean_shift_left;
cvar_t*  player_lean_shift_right;
cvar_t*  player_lean_shift_crouch_left;
cvar_t*  player_lean_shift_crouch_right;
cvar_t*  player_lean_rotate_left;
cvar_t*  player_lean_rotate_right;
cvar_t*  player_lean_rotate_crouch_left;
cvar_t*  player_lean_rotate_crouch_right;
cvar_t*  bg_ladder_yawcap;
cvar_t*  bg_prone_yawcap;
cvar_t*  bg_foliagesnd_minspeed;
cvar_t*  bg_foliagesnd_maxspeed;
cvar_t*  bg_foliagesnd_slowinterval;
cvar_t*  bg_foliagesnd_fastinterval;
cvar_t*  bg_foliagesnd_resetinterval;
cvar_t*  bg_fallDamageMinHeight;
cvar_t*  bg_fallDamageMaxHeight;
cvar_t*  inertiaMax;
cvar_t*  inertiaDebug;
cvar_t*  inertiaAngle;
cvar_t*  friction;
cvar_t*  stopspeed;
cvar_t*  bg_swingSpeed;
cvar_t*  bg_legYawTolerance;
cvar_t*  bg_bobAmplitudeSprinting;
cvar_t*  bg_bobAmplitudeStanding;
cvar_t*  bg_bobAmplitudeDucked;
cvar_t*  bg_bobAmplitudeProne;
cvar_t*  bg_bobMax;
cvar_t*  bg_aimSpreadMoveSpeedThreshold;
cvar_t*  bg_maxGrenadeIndicatorSpeed;
cvar_t*  player_breath_hold_time;
cvar_t*  player_breath_gasp_time;
cvar_t*  player_breath_fire_delay;
cvar_t*  player_breath_gasp_scale;
cvar_t*  player_breath_hold_lerp;
cvar_t*  player_breath_gasp_lerp;
cvar_t*  player_breath_snd_lerp;
cvar_t*  player_breath_snd_delay;
cvar_t*  player_scopeExitOnDamage;
cvar_t*  player_adsExitDelay;
cvar_t*  player_move_factor_on_torso;
cvar_t*  player_debugHealth;
cvar_t*  player_sustainAmmo;
cvar_t*  player_moveThreshhold;
cvar_t*  player_footstepsThreshhold;
cvar_t*  player_strafeSpeedScale;
cvar_t*  player_backSpeedScale;
cvar_t*  player_strafeAnimCosAngle;
cvar_t*  player_spectateSpeedScale;
cvar_t*  player_sprintForwardMinimum;
cvar_t*  player_sprintSpeedScale;
cvar_t*  player_sprintTime;
cvar_t*  player_sprintMinTime;
cvar_t*  player_sprintRechargePause;
cvar_t*  player_sprintStrafeSpeedScale;
cvar_t*  player_sprintCameraBob;
cvar_t*  player_turnAnims;
cvar_t*  player_dmgtimer_timePerPoint;
cvar_t*  player_dmgtimer_maxTime;
cvar_t*  player_dmgtimer_minScale;
cvar_t*  player_dmgtimer_stumbleTime;
cvar_t*  player_dmgtimer_flinchTime;
cvar_t*  bg_shock_soundLoop;
cvar_t*  bg_shock_soundLoopSilent;
cvar_t*  bg_shock_soundEnd;
cvar_t*  bg_shock_soundEndAbort;
cvar_t*  bg_shock_screenType;
cvar_t*  bg_shock_screenBlurBlendTime;
cvar_t*  bg_shock_screenBlurBlendFadeTime;
cvar_t*  bg_shock_screenFlashWhiteFadeTime;
cvar_t*  bg_shock_screenFlashShotFadeTime;
cvar_t*  bg_shock_viewKickPeriod;
cvar_t*  bg_shock_viewKickRadius;
cvar_t*  bg_shock_viewKickFadeTime;
cvar_t*  bg_shock_sound;
cvar_t*  bg_shock_soundFadeInTime;
cvar_t*  bg_shock_soundFadeOutTime;
cvar_t*  bg_shock_soundLoopFadeTime;
cvar_t*  bg_shock_soundLoopEndDelay;
cvar_t*  bg_shock_soundRoomType;
cvar_t*  bg_shock_soundDryLevel;
cvar_t*  bg_shock_soundWetLevel;
cvar_t*  bg_shock_soundModEndDelay;
cvar_t*  bg_shock_lookControl;
cvar_t*  bg_shock_lookControl_maxpitchspeed;
cvar_t*  bg_shock_lookControl_maxyawspeed;
cvar_t*  bg_shock_lookControl_mousesensitivityscale;
cvar_t*  bg_shock_lookControl_fadeTime;
cvar_t*  bg_shock_movement;
cvar_t*  player_meleeRange;
cvar_t*  player_meleeWidth;
cvar_t*  player_meleeHeight;
cvar_t*  player_meleeChargeFriction;
cvar_t*  player_burstFireCooldown;
cvar_t*  bullet_penetrationMinFxDist;


/* BG Jump Cvars */


cvar_t*  jump_height;
cvar_t*  jump_stepSize;
cvar_t*  jump_slowdownEnable;
cvar_t*  jump_ladderPushVel;
cvar_t*  jump_spreadAdd;


/* BG Mantle Cvars */


cvar_t*  mantle_enable;
cvar_t*  mantle_debug;
cvar_t*  mantle_check_range;
cvar_t*  mantle_check_radius;
cvar_t*  mantle_check_angle;
cvar_t*  mantle_view_yawcap;


/* BG Perk Cvars */


cvar_t*  perk_weapSpreadMultiplier;
cvar_t*  perk_weapReloadMultiplier;
cvar_t*  perk_weapRateMultiplier;
cvar_t*  perk_extraBreath;
cvar_t*  perk_bulletPenetrationMultiplier;
cvar_t*  perk_grenadeDeath;
cvar_t*  perk_parabolicRadius;
cvar_t*  perk_parabolicAngle;
cvar_t*  perk_parabolicIcon;
cvar_t*  perk_sprintMultiplier;



void G_CopyCvars();
void G_ResetAllCvars();

/*
=============
ExitLevel

When the intermission has been exited, the server is either killed
or moved to a new level based on the "nextmap" cvar

=============
*/

qboolean onExitLevelExecuted;

__cdecl void ExitLevel( void ) {
	int i;
	gclient_t *gcl;
	client_t *cl;
	mvabuf;

	onExitLevelExecuted = qtrue;

        PHandler_Event(PLUGINS_ONEXITLEVEL,NULL);

	if(*g_votedMapName->string){
		if(*g_votedGametype->string)
			Cbuf_AddText( va("set g_gametype %s; map %s; set g_votedGametype \"\"; set g_votedMapName \"\"\n", g_votedGametype->string, g_votedMapName->string));
		else
			Cbuf_AddText( va("map %s; set g_votedMapName \"\"\n", g_votedMapName->string));
	}else if(*SV_GetNextMap()){
		Cbuf_AddText( "vstr nextmap\n" );
	}else{
		Cbuf_AddText( "map_rotate\n" );
	}

	// reset all the scores so we don't enter the intermission again
	level.teamScores[TEAM_RED] = 0;
	level.teamScores[TEAM_BLUE] = 0;
	for ( i = 0 ; i < level.maxclients ; i++ ) {
		gcl = &level.clients[i];
		cl = &svs.clients[i];
		if ( gcl->sess.connected != CON_CONNECTED ) {
			continue;
		}
		gcl->sess.score = 0;
		// change all client states to connecting, so the early players into the
		// next level will know the others aren't done reconnecting
		if(cl->netchan.remoteAddress.type != NA_BOT)
			gcl->sess.connected = CON_CONNECTING;
	}
	G_LogPrintf( "ExitLevel: executed\n" );
}


int BG_GetPerkIndexForName(const char* name){

	char *perks[] =  {"specialty_gpsjammer", "specialty_bulletaccuracy", "specialty_fastreload", "specialty_rof",
			"specialty_holdbreath", "specialty_bulletpenetration", "specialty_grenadepulldeath",
			"specialty_pistoldeath", "specialty_quieter", "specialty_parabolic", "specialty_longersprint",
			"specialty_detectexplosive", "specialty_explosivedamage", "specialty_exposeenemy",
			"specialty_bulletdamage", "specialty_extraammo", "specialty_twoprimaries",
			"specialty_armorvest", "specialty_fraggrenade", "specialty_specialgrenade", NULL };

        int i;

        if(!name)
            return 20;

        for(i = 0; i < 20; i++){
            if(!Q_stricmp(name, perks[i]))
                break;
        }

        return i;
}


int G_GetSavePersist(void){

	return level.savePersist;

}

void G_SetSavePersist(int val){

	level.savePersist = val;
}



void Jump_RegisterCvars()
{
	 jump_height = Cvar_RegisterFloat( "jump_height", 39.0, 0.0, 1000.0, 0x180u, "The maximum height of a player's jump");
	 jump_stepSize = Cvar_RegisterFloat( "jump_stepSize", 18.0, 0.0, 64.0, 0x180u, "The maximum step up to the top of a jump arc");
	 jump_slowdownEnable = Cvar_RegisterBool( "jump_slowdownEnable", qtrue, 0x180u, "Slow player movement after jumping");
	 jump_ladderPushVel = Cvar_RegisterFloat( "jump_ladderPushVel", 128.0, 0.0, 1024.0, 0x180u, "The velocity of a jump off of a ladder");
	 jump_spreadAdd = Cvar_RegisterFloat( "jump_spreadAdd", 64.0, 0.0, 512.0, 0x180u, "The amount of spread scale to add as a side effect of jumping");
}

void Mantle_RegisterCvars(void)
{
	 mantle_enable = Cvar_RegisterBool("mantle_enable", qtrue, 0x180u, "Enable player mantling");
	 mantle_debug = Cvar_RegisterBool("mantle_debug", 0, 0x180u, "Show debug information for mantling");
	 mantle_check_range = Cvar_RegisterFloat( "mantle_check_range", 20.0, 0.0, 128.0, 0x180u, "The minimum distance from a player to a mantle surface to allow a mantle");
	 mantle_check_radius = Cvar_RegisterFloat( "mantle_check_radius", 0.1, 0.0, 15.0, 0x180u, "The player radius to test against while mantling");
	 mantle_check_angle = Cvar_RegisterFloat( "mantle_check_angle", 60.0, 0.0, 180.0, 0x180u, "The minimum angle from the player to a mantle surface to allow a mantle");
	 mantle_view_yawcap = Cvar_RegisterFloat( "mantle_view_yawcap", 60.0, 0.0, 180.0, 0x180u, "The angle at which to restrict a sideways turn while mantling");
}

void Perks_RegisterCvars(void)
{
	 perk_weapSpreadMultiplier = Cvar_RegisterFloat( "perk_weapSpreadMultiplier", 0.64999998, 0.0, 1.0, 0x80u, "Percentage of weapon spread to use");
	 perk_weapReloadMultiplier = Cvar_RegisterFloat( "perk_weapReloadMultiplier", 0.5, 0.0, 1.0, 0x80u, "Percentage of weapon reload time to use");
	 perk_weapRateMultiplier = Cvar_RegisterFloat( "perk_weapRateMultiplier", 0.75, 0.0, 1.0, 0x80u, "Percentage of weapon firing rate to use");
	 perk_extraBreath = Cvar_RegisterFloat( "perk_extraBreath", 5.0, 0.0, 3.4028235e38, 0x80u, "Number of extra seconds a player can hold his breath");
	 perk_bulletPenetrationMultiplier = Cvar_RegisterFloat( "perk_bulletPenetrationMultiplier", 2.0, 0.0, 30.0, 0x80u, "Multiplier for extra bullet penetration");
	 perk_grenadeDeath = Cvar_RegisterString( "perk_grenadeDeath", "frag_grenade_short_mp", 0x80u, "Name of the grenade weapon to drop");
	 perk_parabolicRadius = Cvar_RegisterFloat( "perk_parabolicRadius", 400.0, 0.0, 3.4028235e38, 0x80u, "Eavesdrop perk's effective radius");
	 perk_parabolicAngle = Cvar_RegisterFloat( "perk_parabolicAngle", 180.0, 0.0, 180.0, 0x80u, "Eavesdrop perk's effective FOV angle");
	 perk_parabolicIcon = Cvar_RegisterString( "perk_parabolicIcon", "specialty_parabolic", 0x80u, "Eavesdrop icon to use when displaying eavesdropped voice chats");
	 perk_sprintMultiplier = Cvar_RegisterFloat( "perk_sprintMultiplier", 2.0, 0.0, 3.4028235e38, 0x80u, "Multiplier for player_sprinttime");
}





void Helicopter_RegisterCvars()
{
	 vehHelicopterMaxSpeed = Cvar_RegisterFloat( "vehHelicopterMaxSpeed", 150.0, 0.0099999998, 3.4028235e38, 0x80u, "Maximum horizontal speed of the player helicopter (in MPH)");
	 vehHelicopterMaxSpeedVertical = Cvar_RegisterFloat( "vehHelicopterMaxSpeedVertical", 65.0, 0.0099999998, 3.4028235e38, 0x80u, "Maximum vertical speed of the player helicopter (in MPH)");
	 vehHelicopterMaxAccel = Cvar_RegisterFloat( "vehHelicopterMaxAccel", 45.0, 0.0099999998, 3.4028235e38, 0x80u, "Maximum horizontal acceleration of the player helicopter (in MPH per second)");
	 vehHelicopterMaxAccelVertical = Cvar_RegisterFloat( "vehHelicopterMaxAccelVertical", 30.0, 0.0099999998, 3.4028235e38, 0x80u, "Maximum vertical acceleration of the player helicopter (in MPH per second)");
	 vehHelicopterMaxYawRate = Cvar_RegisterFloat( "vehHelicopterMaxYawRate", 120.0, 0.0099999998, 3.4028235e38, 0x80u, "Maximum yaw speed of the player helicopter");
	 vehHelicopterMaxYawAccel = Cvar_RegisterFloat( "vehHelicopterMaxYawAccel", 90.0, 0.0099999998, 3.4028235e38, 0x80u, "Maximum yaw acceleration of the player helicopter");
	 vehHelicopterMaxPitch = Cvar_RegisterFloat( "vehHelicopterMaxPitch", 35.0, 0.0099999998, 3.4028235e38, 0x80u, "Maximum pitch of the player helicopter");
	 vehHelicopterMaxRoll = Cvar_RegisterFloat( "vehHelicopterMaxRoll", 35.0, 0.0099999998, 3.4028235e38, 0x80u, "Maximum roll of the player helicopter");
	 vehHelicopterLookaheadTime = Cvar_RegisterFloat( "vehHelicopterLookaheadTime", 1.0, 0.0099999998, 3.4028235e38, 0x80u, "How far ahead (in seconds) the player helicopter looks ahead, to avoid hard collisions. (Like driving down the highway, you should keep 2 seconds distance between you and the vehicle in front of you)");
	 vehHelicopterHoverSpeedThreshold = Cvar_RegisterFloat( "vehHelicopterHoverSpeedThreshold", 400.0, 0.0099999998, 3.4028235e38, 0x80u, "The speed below which the player helicopter begins to jitter the tilt, for hovering");
	 vehHelicopterRightStickDeadzone = Cvar_RegisterFloat( "vehHelicopterRightStickDeadzone", 0.30000001, 0.0099999998, 1.0, 0x80u, "Dead-zone for the axes of the right thumbstick. This helps to better control the two axes separately.");
	 vehHelicopterStrafeDeadzone = Cvar_RegisterFloat( "vehHelicopterStrafeDeadzone", 0.30000001, 0.0099999998, 1.0, 0x80u, "Dead-zone so that you can fly straight forward easily without accidentally strafing (and thus rolling).");
	 vehHelicopterScaleMovement = Cvar_RegisterBool( "vehHelicopterScaleMovement", qtrue, 0x80u, "Scales down the smaller of the left stick axes.");
	 vehHelicopterSoftCollisions = Cvar_RegisterBool( "vehHelicopterSoftCollisions", 0, 0x80u, "Player helicopters have soft collisions (slow down before they collide).");
	 vehHelicopterDecelerationFwd = Cvar_RegisterFloat( "vehHelicopterDecelerationFwd", 0.5, 0.0, 3.4028235e38, 0x80u, "Set the deceleration of the player helicopter (as a fraction of acceleration) in the direction the chopper is facing. So 1.0 makes it equal to the acceleration.");
	 vehHelicopterDecelerationSide = Cvar_RegisterFloat( "vehHelicopterDecelerationSide", 1.0, 0.0, 3.4028235e38, 0x80u, "Set the side-to-side deceleration of the player helicopter (as a fraction of acceleration). So 1.0 makes it equal to the acceleration.");
	 vehHelicopterInvertUpDown = Cvar_RegisterBool( "vehHelicopterInvertUpDown", 0, 0x80u, "Invert the altitude control on the player helicopter.");
	 vehHelicopterYawOnLeftStick = Cvar_RegisterFloat( "vehHelicopterYawOnLeftStick", 5.0, 0.0, 3.4028235e38, 0x80u, "The yaw speed created by the left stick when pushing the stick diagonally (e.g., moving forward and strafing slightly).");
	 vehHelicopterTiltSpeed = Cvar_RegisterFloat( "vehHelicopterTiltSpeed", 1.2, 0.0099999998, 3.4028235e38, 0x80u, "The rate at which the player helicopter's tilt responds");
	 vehHelicopterTiltFromAcceleration = Cvar_RegisterFloat( "vehHelicopterTiltFromAcceleration", 2.0, 0.0099999998, 3.4028235e38, 0x80u, "The amount of tilt caused by acceleration");
	 vehHelicopterTiltFromDeceleration = Cvar_RegisterFloat( "vehHelicopterTiltFromDeceleration", 2.0, 0.0, 3.4028235e38, 0x80u, "The amount of tilt caused by deceleration");
	 vehHelicopterTiltFromVelocity = Cvar_RegisterFloat( "vehHelicopterTiltFromVelocity", 1.0, 0.0, 3.4028235e38, 0x80u, "The amount of tilt caused by the current velocity");
	 vehHelicopterTiltFromControllerAxes = Cvar_RegisterFloat( "vehHelicopterTiltFromControllerAxes", 0.0, 0.0, 3.4028235e38, 0x80u, "The amount of tilt caused by the desired velocity (i.e., the amount of controller stick deflection)");
	 vehHelicopterTiltFromFwdAndYaw = Cvar_RegisterFloat( "vehHelicopterTiltFromFwdAndYaw", 0.0, 0.0, 3.4028235e38, 0x80u, "The amount of roll caused by yawing while moving forward.");
	 vehHelicopterTiltFromFwdAndYaw_VelAtMaxTilt = Cvar_RegisterFloat(  "vehHelicopterTiltFromFwdAndYaw_VelAtMaxTilt",  1.0,  0.0,  3.4028235e38,  0x80u,  "The forward speed (as a fraction of top speed) at which the tilt due to yaw reaches is maximum value.");
	 vehHelicopterJitterJerkyness = Cvar_RegisterFloat( "vehHelicopterJitterJerkyness", 0.30000001, 0.000099999997, 3.4028235e38, 0, "Specifies how jerky the tilt jitter should be");
	 vehHelicopterHeadSwayDontSwayTheTurret = Cvar_RegisterBool( "vehHelicopterHeadSwayDontSwayTheTurret", qtrue, 0, "If set, the turret will not fire through the crosshairs, but straight ahead of the vehicle, when the player is not freelooking.");
	 vehHelicopterTiltMomentum = Cvar_RegisterFloat( "vehHelicopterTiltMomentum", 0.40000001, 0.000099999997, 3.4028235e38, 0x80u, "The amount of rotational momentum the helicopter has with regards to tilting.");
}

void G_VehRegisterCvars()
{
	 vehDebugServer = Cvar_RegisterBool("vehDebugServer", 0, 0x80u, "Turn on debug information for vehicles");
	 vehTextureScrollScale = Cvar_RegisterFloat( "vehTextureScrollScale", 0.0, 0.0, 3.4028235e38, 0x80u, "Scale vehicle texture scroll scale by this amount (debug only)");
	 vehTestHorsepower = Cvar_RegisterFloat("vehTestHorsepower", 200.0, 0.0, 3.4028235e38, 0x80u, "");
	 vehTestWeight = Cvar_RegisterFloat("vehTestWeight", 5200.0, 0.0, 3.4028235e38, 0x80u, "lbs");
	 vehTestMaxMPH = Cvar_RegisterFloat("vehTestMaxMPH", 40.0, 0.0, 3.4028235e38, 0x80u, "");
}

void G_RegisterMissileCvars()
{

	 missileHellfireMaxSlope = Cvar_RegisterFloat( "missileHellfireMaxSlope", 0.5, 0.0, 3.4028235e38, 0x80u, "This limits how steeply the hellfire missile can turn upward when climbing");
	 missileHellfireUpAccel = Cvar_RegisterFloat( "missileHellfireUpAccel", 1000.0, 0.1, 3.4028235e38, 0x80u, "The rate at which the hellfire missile curves upward");
	 missileJavClimbHeightDirect = Cvar_RegisterFloat( "missileJavClimbHeightDirect", 10000.0, 0.0, 3.4028235e38, 0x80u, "In direct-fire mode, how far above the target the rocket will aim for when climbing.");
	 missileJavClimbHeightTop = Cvar_RegisterFloat( "missileJavClimbHeightTop", 15000.0, 0.0, 3.4028235e38, 0x80u, "In top-fire mode, how far above the target the rocket will aim for when climbing.");
	 missileJavClimbAngleDirect = Cvar_RegisterFloat( "missileJavClimbAngleDirect", 85.0, 0.0, 3.4028235e38, 0x80u, "In direct-fire mode, the minimum angle between the rocket and target until the rocket stops climbing. Smaller angles make for higher climbs.");
	 missileJavClimbAngleTop = Cvar_RegisterFloat( "missileJavClimbAngleTop", 50.0, 0.0, 3.4028235e38, 0x80u, "In top-fire mode, the minimum angle between the rocket and target until the rocket stops climbing. Smaller angles make for higher climbs.");
	 missileJavClimbCeilingDirect = Cvar_RegisterFloat( "missileJavClimbCeilingDirect", 0.0, 0.0, 3.4028235e38, 0x80u, "In direct-fire mode, how high the missile needs to reach before it descends.");
	 missileJavClimbCeilingTop = Cvar_RegisterFloat( "missileJavClimbCeilingTop", 3000.0, 0.0, 3.4028235e38, 0x80u, "In top-fire mode, how high the missile needs to reach before it descends.");
	 missileJavTurnRateDirect = Cvar_RegisterFloat( "missileJavTurnRateDirect", 60.0, 0.0, 3.4028235e38, 0x80u, "In direct-fire mode, how sharp the rocket can turn, in angles/sec.");
	 missileJavTurnRateTop = Cvar_RegisterFloat( "missileJavTurnRateTop", 100.0, 0.0, 3.4028235e38, 0x80u, "In top-fire mode, how sharp the rocket can turn, in angles/sec.");
	 missileJavAccelClimb = Cvar_RegisterFloat( "missileJavAccelClimb", 300.0, 0.0, 3.4028235e38, 0x80u, "Rocket acceleration when climbing.");
	 missileJavAccelDescend = Cvar_RegisterFloat( "missileJavAccelDescend", 3000.0, 0.0, 3.4028235e38, 0x80u, "Rocket acceleration when descending towards target.");
	 missileJavSpeedLimitClimb = Cvar_RegisterFloat( "missileJavSpeedLimitClimb", 1000.0, 0.0, 3.4028235e38, 0x80u, "Rocket's speed limit when climbing.");
	 missileJavSpeedLimitDescend = Cvar_RegisterFloat( "missileJavSpeedLimitDescend", 6000.0, 0.0, 3.4028235e38, 0x80u, "Rocket's speed limit when descending towards target.");
	 missileJavTurnDecel = Cvar_RegisterFloat("missileJavTurnDecel", 0.050000001, 0.0, 1.0, 0x80u, "");
	 missileJavClimbToOwner = Cvar_RegisterFloat( "missileJavClimbToOwner", 700.0, 0.0, 3.4028235e38, 0x80u, "");
	 missileWaterMaxDepth = Cvar_RegisterFloat( "missileWaterMaxDepth", 60.0, 0.0, 3.4028235e38, 0x80u, "If a missile explodes deeper under water than this, they explosion effect/sound will not play.");
}

void G_RegisterMissileDebugCvars()
{
	 missileDebugDraw = Cvar_RegisterBool("missileDebugDraw", 0, 0, "Draw guided missile trajectories.");
	 missileDebugText = Cvar_RegisterBool("missileDebugText", 0, 0, "Print debug missile info to console.");
	 missileDebugAttractors = Cvar_RegisterBool( "missileDebugAttractors", 0, 0, "Draw the attractors and repulsors. Attractors are green, and repulsors are yellow.");
}


void BG_RegisterShockVolumeCvars()
{
/* Seems like this is not needed on server */

/*
 int v0;
 cvar_t **v1;
 const char *i;
 char *v3;

 v0 = 0;
 v1 = (cvar_t **)bg_shock_volume;
 for ( i = (const char *)bgShockChannelNames; ; i += 80 )
 {
	++v1;
	if ( v0 >= SND_GetEntChannelCount() )
		break;

	v3 = SND_GetEntChannelName(v0);
	sprintf_stub(i, "bg_shock_volume_%s", v3);
	*(v1 - 1) = Cvar_RegisterFloat(i, 0.5, 0.0, 1.0, 0x80u, "");
	++v0;
 }*/
}


void BG_RegisterCvars()
{

	static const char *bg_ShockScreenTypeNames[] = { "blurred", "flashed", "none", NULL };
	static const char *bg_soundRoomTypes[] = { "generic","paddedcell","room", "bathroom", "livingroom",
	"stoneroom", "auditorium", "concerthall", "cave", "arena", "hangar", "carpetedhallway", "hallway",
	"stonecorridor", "alley", "forest", "city", "mountains", "quarry", "plain", "parkinglot", "sewerpipe",
	"underwater", "drugged", "dizzy", "psychotic", NULL };

	 bg_viewKickScale = Cvar_RegisterFloat( "bg_viewKickScale", 0.2, 0.0, 10.0, 0x80u, "The scale to apply to the damage done to caluclate damage view kick");
	 bg_viewKickMax = Cvar_RegisterFloat("bg_viewKickMax", 90.0, 0.0, 90.0, 0x80u, "The maximum view kick");
	 bg_viewKickMin = Cvar_RegisterFloat("bg_viewKickMin", 5.0, 0.0, 90.0, 0x80u, "The minimum view kick");
	 bg_viewKickRandom = Cvar_RegisterFloat( "bg_viewKickRandom", 0.40000001, 0.0, 1.0, 0x80u, "The random direction scale view kick");
	 player_view_pitch_up = Cvar_RegisterFloat( "player_view_pitch_up", 85.0, 0.0, 90.0, 0x180u, "Maximum angle that the player can look up");
	 player_view_pitch_down = Cvar_RegisterFloat( "player_view_pitch_down", 85.0, 0.0, 90.0, 0x180u, "Maximum angle that the player can look down");
	 player_lean_shift_left = Cvar_RegisterFloat( "player_lean_shift_left", 5.0, 0.0, 20.0, 0x180u, "Amount to shift the player 3rd person model when leaning left");
	 player_lean_shift_right = Cvar_RegisterFloat( "player_lean_shift_right", 9.0, 0.0, 20.0, 0x180u, "Amount to shift the player 3rd person model when leaning right");
	 player_lean_shift_crouch_left = Cvar_RegisterFloat( "player_lean_shift_crouch_left", 4.0, 0.0, 20.0, 0x180u, "Amount to shift the player 3rd person model when crouch leaning left");
	 player_lean_shift_crouch_right = Cvar_RegisterFloat( "player_lean_shift_crouch_right", 15.0, 0.0, 20.0, 0x180u, "Amount to shift the player 3rd person model when crouch leaning right");
	 player_lean_rotate_left = Cvar_RegisterFloat( "player_lean_rotate_left", 0.80000001, 0.0, 3.0, 0x180u, "Amount to rotate the player 3rd person model when leaning left");
	 player_lean_rotate_right = Cvar_RegisterFloat( "player_lean_rotate_right", 0.40000001, 0.0, 3.0, 0x180u, "Amount to rotate the player 3rd person model when leaning right");
	 player_lean_rotate_crouch_left = Cvar_RegisterFloat( "player_lean_rotate_crouch_left", 0.80000001, 0.0, 3.0, 0x180u, "Amount to rotate the player 3rd person model when crouch leaning left");
	 player_lean_rotate_crouch_right = Cvar_RegisterFloat( "player_lean_rotate_crouch_right", 0.30000001, 0.0, 3.0, 0x180u, "Amount to rotate the player 3rd person model when crouch leaning right");
	 bg_ladder_yawcap = Cvar_RegisterFloat( "bg_ladder_yawcap", 100.0, 0.0, 360.0, 0x180u, "The maximum angle that a player can look around while on a ladder");
	 bg_prone_yawcap = Cvar_RegisterFloat(  "bg_prone_yawcap",  85.0,  0.0,  360.0,  0x180u,  "The maximum angle that a player can look around quickly while prone");
	 bg_foliagesnd_minspeed = Cvar_RegisterFloat( "bg_foliagesnd_minspeed", 40.0, 0.0, 3.4028235e38, 0x180u, "The speed that a player must be going to make minimum noise while moving through foliage");
	 bg_foliagesnd_maxspeed = Cvar_RegisterFloat( "bg_foliagesnd_maxspeed", 180.0, 0.0, 3.4028235e38, 0x180u, "The speed that a player must be going to make maximum noise while moving through foliage");
	 bg_foliagesnd_slowinterval = Cvar_RegisterInt( "bg_foliagesnd_slowinterval", 1500, 0, 2147483647, 0x180u, "The time between each foliage sound when moving slowly");
	 bg_foliagesnd_fastinterval = Cvar_RegisterInt( "bg_foliagesnd_fastinterval", 500, 0, 2147483647, 0x180u, "The time between each foliage sound when moving quickly");
	 bg_foliagesnd_resetinterval = Cvar_RegisterInt( "bg_foliagesnd_resetinterval", 500, 0, 2147483647, 0x180u, "The time interval before foliage sounds are reset after the player has stopped moving");
	 bg_fallDamageMinHeight = Cvar_RegisterFloat( "bg_fallDamageMinHeight", 128.0, 1.0, 3.4028235e38, 0x188u, "The height that a player will start to take minimum damage if they fall");
	 bg_fallDamageMaxHeight = Cvar_RegisterFloat( "bg_fallDamageMaxHeight", 300.0, 1.0, 3.4028235e38, 0x188u, "The height that a player will take maximum damage when falling");
	 inertiaMax = Cvar_RegisterFloat("inertiaMax", 50.0, 0.0, 1000.0, 0x180u, "Maximum player inertia");
	 inertiaDebug = Cvar_RegisterBool("inertiaDebug", 0, 0x180u, "Show inertia debug information");
	 inertiaAngle = Cvar_RegisterFloat( "inertiaAngle", 0.0, -1.0, 1.0, 0x180u, "The cosine of the angle at which inertia occurs");
	 friction = Cvar_RegisterFloat("friction", 5.5, 0.0, 100.0, 0x180u, "Player friction");
	 stopspeed = Cvar_RegisterFloat("stopspeed", 100.0, 0.0, 1000.0, 0x180u, "The player deceleration");
	 bg_swingSpeed = Cvar_RegisterFloat( "bg_swingSpeed", 0.2, 0.0, 1.0, 0x80u, "The rate at which the player's legs swing around when strafing(multi-player only)");
	 bg_legYawTolerance = Cvar_RegisterFloat( "bg_legYawTolerance", 20.0, 0.0, 180.0, 0x80u, "The amount the player's leg yaw can differ from his torso before moving ta match");
	 bg_bobAmplitudeSprinting = Cvar_RegisterVec2( "bg_bobAmplitudeSprinting", 0.02, 0.014, 0.0, 1.0, 384, "The multiplier to apply to the player's speed to get the bob amplitude while sprinting");
	 bg_bobAmplitudeStanding = Cvar_RegisterVec2( "bg_bobAmplitudeStanding", 0.0070000002, 0.0070000002, 0.0, 1.0, 4480, "The multiplier to apply to the player's speed to get the bob amplitude while standing");
	 bg_bobAmplitudeDucked = Cvar_RegisterVec2( "bg_bobAmplitudeDucked", 0.0074999998, 0.0074999998, 0.0, 1.0, 384, "The multiplier to apply to the player's speed to get the bob amplitude while ducking");
	 bg_bobAmplitudeProne = Cvar_RegisterVec2(  "bg_bobAmplitudeProne",  0.02, 0.0049999999,  0.0,  1.0,  384,  "The multiplier to apply to the player's speed to get the bob amplitude while prone");
	 bg_bobMax = Cvar_RegisterFloat("bg_bobMax", 8.0, 0.0, 36.0, 0x180u, "The maximum allowed bob amplitude");
	 bg_aimSpreadMoveSpeedThreshold = Cvar_RegisterFloat( "bg_aimSpreadMoveSpeedThreshold", 11.0, 0.0, 300.0, 0x180u, "When player is moving faster than this speed, the aim spread will increase");
	 bg_maxGrenadeIndicatorSpeed = Cvar_RegisterFloat( "bg_maxGrenadeIndicatorSpeed", 20.0, 0.0, 1000.0, 0x180u, "Maximum speed of grenade that will show up in indicator and can be thrown back.");
	 player_breath_hold_time = Cvar_RegisterFloat( "player_breath_hold_time", 4.5, 0.0, 30.0, 0x180u, "The maximum time a player can hold his breath");
	 player_breath_gasp_time = Cvar_RegisterFloat( "player_breath_gasp_time", 1.0, 0.0, 30.0, 0x180u, "The amount of time a player will gasp once they can breath again");
	 player_breath_fire_delay = Cvar_RegisterFloat( "player_breath_fire_delay", 0.0, 0.0, 30.0, 0x180u, "The amount of time subtracted from the player remaining breath time when a weapon is fired");
	 player_breath_gasp_scale = Cvar_RegisterFloat( "player_breath_gasp_scale", 4.5, 0.0, 50.0, 0x180u, "Scale value to apply to the target waver during a gasp");
	 player_breath_hold_lerp = Cvar_RegisterFloat( "player_breath_hold_lerp", 1.0, 0.0, 50.0, 0x180u, "The interpolation rate for the target waver amplitude when holding breath");
	 player_breath_gasp_lerp = Cvar_RegisterFloat( "player_breath_gasp_lerp", 6.0, 0.0, 50.0, 0x180u, "The interpolation rate for the target waver amplitude when gasping");
	 player_breath_snd_lerp = Cvar_RegisterFloat( "player_breath_snd_lerp", 2.0, 0.0, 100.0, 0x180u, "The interpolation rate for the player hold breath sound");
	 player_breath_snd_delay = Cvar_RegisterFloat( "player_breath_snd_delay", 1.0, 0.0, 2.0, 0x180u, "The delay before playing the breathe in sound");
	 player_scopeExitOnDamage = Cvar_RegisterBool( "player_scopeExitOnDamage", 0, 0x180u, "Exit the scope if the player takes damage");
	 player_adsExitDelay = Cvar_RegisterInt( "player_adsExitDelay", 0, 0, 1000, 0x180u, "Delay before exiting aim down sight");
	 player_move_factor_on_torso = Cvar_RegisterFloat( "player_move_factor_on_torso", 0.0, 0.0, 1.0, 0x80u, "The contribution movement direction has on player torso direction(multi-player only)");
	 player_debugHealth = Cvar_RegisterBool( "player_debugHealth", 0, 0x180u, "Turn on debugging info for player health");
	 player_sustainAmmo = Cvar_RegisterBool( "player_sustainAmmo", 0, 0x80u, "Firing weapon will not decrease clip ammo.");
	 player_moveThreshhold = Cvar_RegisterFloat( "player_moveThreshhold", 10.0, 0.0000000099999999, 20.0, 0x1C0u, "The speed at which the player is considered to be moving for the purposes of \nview model bob and multiplayer model movement");
	 player_footstepsThreshhold = Cvar_RegisterFloat( "player_footstepsThreshhold", 0.0, 0.0, 50000.0, 0x1C0u, "The minimum speed at which the player makes loud footstep noises");
	 player_strafeSpeedScale = Cvar_RegisterFloat( "player_strafeSpeedScale", 0.80000001, 0.0, 20.0, 0x180u, "The scale applied to the player speed when strafing");
	 player_backSpeedScale = Cvar_RegisterFloat( "player_backSpeedScale", 0.69999999, 0.0, 20.0, 0x180u, "The scale applied to the player speed when moving backwards");
	 player_strafeAnimCosAngle = Cvar_RegisterFloat( "player_strafeAnimCosAngle", 0.5, 0.0, 1.0, 0x180u, "Cosine of the angle which player starts using strafe animations");
	 player_spectateSpeedScale = Cvar_RegisterFloat( "player_spectateSpeedScale", 1.0, 0.0, 20.0, 0x180u, "The scale applied to the player speed when spectating");
	 player_sprintForwardMinimum = Cvar_RegisterInt( "player_sprintForwardMinimum", 105, 0, 255, 0x100u, "The minimum forward deflection required to maintain a sprint");
	 player_sprintSpeedScale = Cvar_RegisterFloat( "player_sprintSpeedScale", 1.5, 0.0, 5.0, 0x180u, "The scale applied to the player speed when sprinting");
	 player_sprintTime = Cvar_RegisterFloat( "player_sprintTime", 4.0, 0.0, 12.8, 0x180u, "The base length of time a player can sprint");
	 player_sprintMinTime = Cvar_RegisterFloat( "player_sprintMinTime", 1.0, 0.0, 12.8, 0x180u, "The minimum sprint time needed in order to start sprinting");
	 player_sprintRechargePause = Cvar_RegisterFloat( "player_sprintRechargePause", 0.0, 0.0, 9000.0, 0x180u, "The length of time the meter will pause before starting to recharge after a player sprints");
	 player_sprintStrafeSpeedScale = Cvar_RegisterFloat( "player_sprintStrafeSpeedScale", 0.667, 0.0, 5000.0, 0x180u, "The speed at which you can strafe while sprinting");
	 player_sprintCameraBob = Cvar_RegisterFloat( "player_sprintCameraBob", 0.5, 0.0, 2.0, 0x180u, "The speed the camera bobs while you sprint");
	 player_turnAnims = Cvar_RegisterBool( "player_turnAnims", 0, 0x180u, "Use animations to turn a player's model in multiplayer");
	 player_dmgtimer_timePerPoint = Cvar_RegisterFloat( "player_dmgtimer_timePerPoint", 100.0, 0.0, 30000.0, 0x180u, "The time in milliseconds that the player is slowed down per point of damage");
	 player_dmgtimer_maxTime = Cvar_RegisterFloat( "player_dmgtimer_maxTime", 750.0, 0.0, 64000.0, 0x180u, "The maximum time that the player is slowed due to damage");
	 player_dmgtimer_minScale = Cvar_RegisterFloat( "player_dmgtimer_minScale", 0.0, 0.0, 1.0, 0x180u, "The minimum scale value to slow the player by when damaged");
	 player_dmgtimer_stumbleTime = Cvar_RegisterInt( "player_dmgtimer_stumbleTime", 500, 0, 2000, 0x180u, "Maximum time to play stumble animations");
	 player_dmgtimer_flinchTime = Cvar_RegisterInt( "player_dmgtimer_flinchTime", 500, 0, 2000, 0x180u, "Maximum time to play flinch animations");
	 bg_shock_soundLoop = Cvar_RegisterString("bg_shock_soundLoop", "shellshock_loop", 0x80u, "Shellshock loop alias");
	 bg_shock_soundLoopSilent = Cvar_RegisterString( "bg_shock_soundLoopSilent", "shellshock_loop_silent", 0x80u, "The sound that gets blended with the shellshock loop alias");
	 bg_shock_soundEnd = Cvar_RegisterString("bg_shock_soundEnd", "shellshock_end", 0x80u, "Shellshock end sound alias");
	 bg_shock_soundEndAbort = Cvar_RegisterString( "bg_shock_soundEndAbort", "shellshock_end_abort", 0x80u, "Shellshock aborted end sound alias");
	 bg_shock_screenType = Cvar_RegisterEnum( "bg_shock_screenType", bg_ShockScreenTypeNames, 0, 0x80u, "Shell shock screen effect type");
	 bg_shock_screenBlurBlendTime = Cvar_RegisterFloat( "bg_shock_screenBlurBlendTime", 0.40000001, 0.001, 10.0, 0x80u, "The amount of time in seconds for the shellshock effect to blend");
	 bg_shock_screenBlurBlendFadeTime = Cvar_RegisterFloat( "bg_shock_screenBlurBlendFadeTime", 1.0, 0.001, 1000.0, 0x80u, "The amount of time in seconds for the shellshock effect to fade");
	 bg_shock_screenFlashWhiteFadeTime = Cvar_RegisterFloat( "bg_shock_screenFlashWhiteFadeTime", 1.0, 0.0, 1000.0, 0x80u, "In seconds, how soon from the end of the effect to start blending out the whiteout layer.");
	 bg_shock_screenFlashShotFadeTime = Cvar_RegisterFloat( "bg_shock_screenFlashShotFadeTime", 1.0, 0.0, 1000.0, 0x80u, "In seconds, how soon from the end of the effect to start blending out the screengrab layer.");
	 bg_shock_viewKickPeriod = Cvar_RegisterFloat( "bg_shock_viewKickPeriod", 0.75, 0.001, 1000.0, 0x80u, "The period of the shellshock view kick effect");
	 bg_shock_viewKickRadius = Cvar_RegisterFloat( "bg_shock_viewKickRadius", 0.050000001, 0.0, 1.0, 0x80u, "Shell shock kick radius");
	 bg_shock_viewKickFadeTime = Cvar_RegisterFloat( "bg_shock_viewKickFadeTime", 3.0, 0.001, 1000.0, 0x80u, "The time for the shellshock kick effect to fade");
	 bg_shock_sound = Cvar_RegisterBool("bg_shock_sound", qtrue, 0x80u, "Play shell shock sound");
	 bg_shock_soundFadeInTime = Cvar_RegisterFloat( "bg_shock_soundFadeInTime", 0.25, 0.001, 1000.0, 0x80u, "Shell shock sound fade in time in seconds");
	 bg_shock_soundFadeOutTime = Cvar_RegisterFloat( "bg_shock_soundFadeOutTime", 2.5, 0.001, 1000.0, 0x80u, "Shell shock sound fade out time in seconds");
	 bg_shock_soundLoopFadeTime = Cvar_RegisterFloat( "bg_shock_soundLoopFadeTime", 1.5, 0.001, 1000.0, 0x80u, "Shell shock sound loop fade time in seconds");
	 bg_shock_soundLoopEndDelay = Cvar_RegisterFloat( "bg_shock_soundLoopEndDelay", -3.0, -10.0, 1000.0, 0x80u, "Sound loop end offset time from the end of the shellshock in seconds");
	 bg_shock_soundRoomType = Cvar_RegisterEnum( "bg_shock_soundRoomType", bg_soundRoomTypes, 0, 0x80u, "Shell shock sound room type");
	 bg_shock_soundDryLevel = Cvar_RegisterFloat( "bg_shock_soundDryLevel", 1.0, 0.0, 1.0, 0x80u, "Shell shock sound dry level");
	 bg_shock_soundWetLevel = Cvar_RegisterFloat( "bg_shock_soundWetLevel", 0.5, 0.0, 1.0, 0x80u, "Shell shock sound wet level");
	 bg_shock_soundModEndDelay = Cvar_RegisterFloat( "bg_shock_soundModEndDelay", 2.0, -1000.0, 1000.0, 0x80u, "The delay from the end of the shell shock to the end of the sound modification");
	 BG_RegisterShockVolumeCvars();
	 bg_shock_lookControl = Cvar_RegisterBool( "bg_shock_lookControl", qtrue, 0x80u, "Alter player control during shellshock");
	 bg_shock_lookControl_maxpitchspeed = Cvar_RegisterFloat( "bg_shock_lookControl_maxpitchspeed", 90.0, 0.0, 3.4028235e38, 0x80u, "Maximum pitch movement rate while shellshocked in degrees per second");
	 bg_shock_lookControl_maxyawspeed = Cvar_RegisterFloat( "bg_shock_lookControl_maxyawspeed", 90.0, 0.0, 3.4028235e38, 0x80u, "Maximum yaw movement rate while shell shocked in degrees per second");
	 bg_shock_lookControl_mousesensitivityscale = Cvar_RegisterFloat( "bg_shock_lookControl_mousesensitivityscale", 0.5, 0.0, 2.0, 0x80u, "Sensitivity scale to apply to a shellshocked player");
	 bg_shock_lookControl_fadeTime = Cvar_RegisterFloat( "bg_shock_lookControl_fadeTime", 2.0, 0.001, 1000.0, 0x80u, "The time for the shellshock player control to fade in seconds");
	 bg_shock_movement = Cvar_RegisterBool( "bg_shock_movement", qtrue, 0x80u, "Affect player's movement speed duringi shellshock");
	 player_meleeRange = Cvar_RegisterFloat( "player_meleeRange", 64.0, 0.0, 1000.0, 0x80u, "The maximum range of the player's mellee attack");
	 player_meleeWidth = Cvar_RegisterFloat( "player_meleeWidth", 10.0, 0.0, 1000.0, 0x80u, "The width of the player's melee attack");
	 player_meleeHeight = Cvar_RegisterFloat( "player_meleeHeight", 10.0, 0.0, 1000.0, 0x80u, "The height of the player's melee attack");
	 player_meleeChargeFriction = Cvar_RegisterFloat( "player_meleeChargeFriction", 1200.0, 1.0, 5000.0, 0x80u, "Friction used during melee charge");
	 player_burstFireCooldown = Cvar_RegisterFloat( "player_burstFireCooldown", 0.2, 0.0, 60.0, 0x80u, "Seconds after a burst fire before weapons can be fired again.");
	 bullet_penetrationMinFxDist = Cvar_RegisterFloat( "bullet_penetrationMinFxDist", 30.0, 0.0, 1024.0, 0x80u, "Min distance a penetrated bullet must travel before it'll trigger the effects");
	 Jump_RegisterCvars();
	 Mantle_RegisterCvars();
	 Perks_RegisterCvars();
}




void __cdecl G_RegisterCvars()
{

	static const char *g_entinfoNames[] = { "off", "all_ents", NULL };

	 g_speed = Cvar_RegisterInt("g_speed", 190, 1, 6000, 0, "Player's global movement speed is set here");
	 g_disabledefcmdprefix = Cvar_RegisterBool("g_disabledefcmdprefix", qtrue, 0, "Disable the interpretation of the !-sign as command");
	 g_allowConsoleSay = Cvar_RegisterBool("g_allowConsoleSay", qtrue, 0, "Flag whether to allow chat from ingame console");
	 g_conrichsay = Cvar_RegisterBool("g_conrichsay", qtrue, 0, "Enable more informative output of in-game 'say' in the server console");
	 g_cheats = Cvar_RegisterBool("sv_cheats", 0, 0, "Enable cheats");
	 Cvar_RegisterString("gamename", "Call of Duty 4", 0x44u, "The name of the game");
	 Cvar_RegisterString("gamedate", "Feb 12 2009", 0x40u, "The date compiled");
	 Cvar_RegisterString("sv_mapname", "", 0x44u, "The current map name");
	 g_gametype = Cvar_RegisterString("g_gametype", "war", 0x24u, "The current campaign");
	 g_maxclients = Cvar_RegisterInt("g_maxclients", SV_GameGetMaxClients(), 1, 64, CVAR_ROM, "Max clients allowed on server - use sv_maxclients to change");
	 g_synchronousClients = Cvar_RegisterBool("g_synchronousClients", 0, 8u, "Call 'client think' exactly once for each server frame to make smooth demos");
	 g_log = Cvar_RegisterString("g_log", "games_mp.log", 1u, "Log file name");
	 g_logTimeStampInSeconds = Cvar_RegisterBool("g_logTimeStampInSeconds", 0, 1u, "Enable logging with time stamps in seconds since UTC 1/1/1970");
	 g_logSync = Cvar_RegisterBool("g_logSync", 0, 1u, "Enable synchronous logging");
	 g_banIPs = Cvar_RegisterString("g_banIPs", "", 1u, "IP addresses to ban from playing");
	 g_gravity = Cvar_RegisterFloat("g_gravity", 800.0, 1.0, 3.4028235e38, 0, "Game gravity in inches per second per second");
	 g_knockback = Cvar_RegisterFloat("g_knockback", 1000.0, -3.4028235e38, 3.4028235e38, 0, "Maximum knockback");
	 g_maxDroppedWeapons = Cvar_RegisterInt("g_maxDroppedWeapons", 16, 2, 32, 0, "Maximum number of dropped weapons");
	 g_inactivity = Cvar_RegisterInt("g_inactivity", 0, 0, 2147483647, 0, "Time delay before player is kicked for inactivity");
	 g_debugDamage = Cvar_RegisterBool("g_debugDamage", 0, 0x80u, "Show debug information for damage");
	 g_debugBullets = Cvar_RegisterInt("g_debugBullets", 0, -3, 6, 0, "Show debug information for bullets");
	 bullet_penetrationEnabled = Cvar_RegisterBool("bullet_penetrationEnabled", qtrue, 0x80u, "Enable/Disable bullet penetration.");
	 g_entinfo = Cvar_RegisterEnum("g_entinfo", g_entinfoNames, 0, 0x80u, "Display entity information");
	 g_motd = Cvar_RegisterString("g_motd", "", 0, "The message of the day");
	 g_dropForwardSpeed = Cvar_RegisterFloat("g_dropForwardSpeed", 10.0, 0.0, 1000.0, 1u, "Forward speed of a dropped item");
	 g_dropUpSpeedBase = Cvar_RegisterFloat("g_dropUpSpeedBase", 10.0, 0.0, 1000.0, 1u, "Base component of the initial vertical speed of a dropped item");
	 g_dropUpSpeedRand = Cvar_RegisterFloat("g_dropUpSpeedRand", 5.0, 0.0, 1000.0, 1u, "Random component of the initial vertical speed of a dropped item");
	 g_dropHorzSpeedRand = Cvar_RegisterFloat("g_dropHorzSpeedRand", 100.0, 0.0, 1000.0, 1u, "Random component of the initial horizontal speed of a dropped item");
	 g_clonePlayerMaxVelocity = Cvar_RegisterFloat("g_clonePlayerMaxVelocity", 80.0, 0.0, 3.4028235e38, 1u, "Maximum velocity in each axis of a cloned player\n(for death animations)");
	 voice_global = Cvar_RegisterBool("voice_global", 0, 1u, "Send voice messages to everybody");
	 voice_localEcho = Cvar_RegisterBool("voice_localEcho", 0, 1u, "Echo voice chat back to the player");
	 voice_deadChat = Cvar_RegisterBool("voice_deadChat", 0, 1u, "Allow dead players to talk to living players");
	 g_allowVote = Cvar_RegisterBool("g_allowVote", qtrue, 0, "Enable voting on this server");
	 g_listEntity = Cvar_RegisterBool("g_listEntity", 0, 0, "List the entities");
	 g_deadChat = Cvar_RegisterBool("g_deadChat", 0, 1u, "Allow dead players to chat with living players");
	 g_voiceChatTalkingDuration = Cvar_RegisterInt("g_voiceChatTalkingDuration", 500, 0, 10000, 1u, "Time after the last talk packet was received that the player is considered by the\nserver to still be talking in milliseconds");
	 g_TeamIcon_Allies = Cvar_RegisterString("g_TeamIcon_Allies", "faction_128_usmc", 0x100u, "Shader name for the allied scores banner");
	 g_TeamIcon_Axis = Cvar_RegisterString( "g_TeamIcon_Axis", "faction_128_arab", 0x100u, "Shader name for the axis scores banner");
	 g_TeamIcon_Free = Cvar_RegisterString( "g_TeamIcon_Free", "", 0x100u, "Shader name for the scores of players with no team");
	 g_TeamIcon_Spectator = Cvar_RegisterString("g_TeamIcon_Spectator", "", 0x100u, "Shader name for the scores of players who are spectators");
	 g_ScoresColor_MyTeam = Cvar_RegisterColor("g_ScoresColor_MyTeam", 0.25, 0.72000003, 0.25, 1.0, 0x100u, "Player team color on scoreboard");
	 g_ScoresColor_EnemyTeam = Cvar_RegisterColor("g_ScoresColor_EnemyTeam", 0.69, 0.07, 0.050000001, 1.0, 0x100u, "Enemy team color on scoreboard");
	 g_ScoresColor_Spectator = Cvar_RegisterColor("g_ScoresColor_Spectator", 0.25, 0.25, 0.25, 1.0, 0x100u, "Spectator team color on scoreboard");
	 g_ScoresColor_Free = Cvar_RegisterColor("g_ScoresColor_Free", 0.75999999, 0.77999997, 0.1, 1.0, 0x100u, "Free Team color on scoreboard");
	 g_ScoresColor_Allies = Cvar_RegisterColor("g_ScoresColor_Allies", 0.090000004, 0.46000001, 0.07, 1.0, 0x100u, "Allies team color on scoreboard");
	 g_ScoresColor_Axis = Cvar_RegisterColor( "g_ScoresColor_Axis", 0.69, 0.07, 0.050000001, 1.0, 0x100u, "Axis team color on scoreboard");
	 g_TeamName_Allies = Cvar_RegisterString("g_TeamName_Allies", "GAME_ALLIES", 0x100u, "Allied team name");
	 g_TeamName_Axis = Cvar_RegisterString("g_TeamName_Axis", "GAME_AXIS", 0x100u, "Axis team name");
	 g_TeamColor_Allies = Cvar_RegisterColor( "g_TeamColor_Allies", 0.60000002, 0.63999999, 0.69, 1.0, 0x100u, "Allies team color");
	 g_TeamColor_Axis = Cvar_RegisterColor( "g_TeamColor_Axis", 0.64999998, 0.56999999, 0.41, 1.0, 0x100u, "Axis team color");
	 g_TeamColor_MyTeam = Cvar_RegisterColor( "g_TeamColor_MyTeam", 0.40000001, 0.60000002, 0.85000002, 1.0, 0x100u, "Player team color");
	 g_TeamColor_EnemyTeam = Cvar_RegisterColor("g_TeamColor_EnemyTeam", 0.75, 0.25, 0.25, 1.0, 0x100u, "Enemy team color");
	 g_TeamColor_Spectator = Cvar_RegisterColor( "g_TeamColor_Spectator", 0.25, 0.25, 0.25, 1.0, 0x100u, "Spectator team color");
	 g_TeamColor_Free = Cvar_RegisterColor("g_TeamColor_Free", 0.75, 0.25, 0.25, 1.0, 0x100u, "Free Team color");
	 g_smoothClients = Cvar_RegisterBool("g_smoothClients", qtrue, 0, "Enable extrapolation between client states");
	 g_antilag = Cvar_RegisterBool("g_antilag", qtrue, 0x0u, "Turn on antilag checks for weapon hits");
	 g_oldVoting = Cvar_RegisterBool("g_oldVoting", qtrue, 1u, "Use old voting method");
	 g_voteAbstainWeight = Cvar_RegisterFloat( "g_voteAbstainWeight", 0.5, 0.0, 1.0, 1u, "How much an abstained vote counts as a 'no' vote");
	 g_NoScriptSpam = Cvar_RegisterBool("g_no_script_spam", 0, 0, "Turn off script debugging info");
	 g_debugLocDamage = Cvar_RegisterBool( "g_debugLocDamage", 0, 0x80u, "Turn on debugging information for locational damage");
	 g_friendlyfireDist = Cvar_RegisterFloat( "g_friendlyfireDist", 256.0, 0.0, 15000.0, 0x80u, "Maximum range for disabling fire at a friendly");
	 g_friendlyNameDist = Cvar_RegisterFloat( "g_friendlyNameDist", 15000.0, 0.0, 15000.0, 0x80u, "Maximum range for seeing a friendly's name");
	 melee_debug = Cvar_RegisterBool("melee_debug", 0, 0x80u, "Turn on debug lines for melee traces");
	 radius_damage_debug = Cvar_RegisterBool( "radius_damage_debug", 0, 0x80u, "Turn on debug lines for radius damage traces");
	 player_throwbackInnerRadius = Cvar_RegisterFloat( "player_throwbackInnerRadius", 90.0, 0.0, 3.4028235e38, 0x80u, "The radius to a live grenade player must be within initially to do a throwback");
	 player_throwbackOuterRadius = Cvar_RegisterFloat( "player_throwbackOuterRadius", 160.0, 0.0, 3.4028235e38, 0x80u, "The radius player is allow to throwback a grenade once the player has been in the inner radius");
	 player_MGUseRadius = Cvar_RegisterFloat( "player_MGUseRadius", 128.0, 0.0, 3.4028235e38, 0x80u, "The radius within which a player can mount a machine gun");
	 g_minGrenadeDamageSpeed = Cvar_RegisterFloat( "g_minGrenadeDamageSpeed", 400.0, 0.0, 3.4028235e38, 0x80u, "Minimum speed at which getting hit be a grenade will do damage (not the grenade explosion damage)");
	 g_compassShowEnemies = Cvar_RegisterBool( "g_compassShowEnemies", 0, 0x84u, "Whether enemies are visible on the compass at all times");
	 pickupPrints = Cvar_RegisterBool( "pickupPrints", 0, 0x80u, "Print a message to the game window when picking up ammo, etc.");
	 g_dumpAnims = Cvar_RegisterInt( "g_dumpAnims", -1, -1, 1023, 0x80u, "Animation debugging info for the given character number");
	 g_useholdtime = Cvar_RegisterInt( "g_useholdtime", 0, 0, 2147483647, 0, "Time to hold the 'use' button to activate use");
	 g_useholdspawndelay = Cvar_RegisterInt( "g_useholdspawndelay", 500, 0, 1000, 0x81u, "Time in milliseconds that the player is unable to 'use' after spawning");
	 g_redCrosshairs = Cvar_RegisterBool("g_redCrosshairs", qtrue, 0x21u, "Whether red crosshairs are enabled");
	 g_mantleBlockTimeBuffer = Cvar_RegisterInt("g_mantleBlockTimeBuffer", 500, 0, 60000, 0x80u, "Time that the client think is delayed after mantling");
	 Helicopter_RegisterCvars();
	 G_VehRegisterCvars();
	 G_RegisterMissileCvars();
	 G_RegisterMissileDebugCvars();
	 BG_RegisterCvars();
	 g_fogColorReadOnly = Cvar_RegisterColor( "g_fogColorReadOnly", 1.0, 0.0, 0.0, 1.0, 0x10C0u, "Fog color that was set in the most recent call to \"setexpfog\"");
	 g_fogStartDistReadOnly = Cvar_RegisterFloat( "g_fogStartDistReadOnly", 0.0, 0.0, 3.4028235e38, 0x10C0u, "Fog start distance that was set in the most recent call to \"setexpfog\"");
	 g_fogHalfDistReadOnly = Cvar_RegisterFloat( "g_fogHalfDistReadOnly", 0.1, 0.0, 3.4028235e38, 0x10C0u, "Fog start distance that was set in the most recent call to \"setexpfog\"");


	Cvar_SetCheatState();
}


int G_GetClientSize()
{
	return sizeof(gclient_t);
}

playerState_t* G_GetPlayerState(int num)
{
    return &level.clients[num].ps;
}

clientState_t* G_GetClientState(int num)
{
    return &level.clients[num].sess.cs;
}

gclient_t *G_GetGClient(int num)
{
    return &level.clients[num];
}

int G_GetClientArchiveTime(int clnum)
{
	return level.clients[clnum].sess.archiveTime;
}

void G_SetClientArchiveTime(int clnum, int time)
{
	level.clients[clnum].sess.archiveTime = time;
}

float G_GetFogOpaqueDistSqrd()
{
	return level.fFogOpaqueDistSqrd;
}

void __cdecl G_SafeServerDObjFree(int handle)
{
  Com_SafeServerDObjFree(handle);
}

