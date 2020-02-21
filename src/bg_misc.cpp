#include "bg_misc.hpp"


extern "C"
{
    cvar_t* player_meleeChargeFriction;
    cvar_t* stopspeed;
    cvar_t* friction;
    cvar_t* bg_fallDamageMaxHeight;
    cvar_t* bg_fallDamageMinHeight;
    cvar_t* player_sprintRechargePause;
    cvar_t* player_sprintForwardMinimum;
    cvar_t* player_sprintMinTime;
    cvar_t* player_moveThreshhold;
    cvar_t* player_strafeAnimCosAngle;
    cvar_t* player_dmgtimer_stumbleTime;
    cvar_t* player_strafeSpeedScale;
    cvar_t* player_sprintCameraBob;
    cvar_t* player_footstepsThreshhold;
    cvar_t* player_dmgtimer_flinchTime;
    cvar_t* player_meleeRange;
    cvar_t* bg_legYawTolerance;
    cvar_t* bg_swingSpeed;
    cvar_t* player_lean_rotate_crouch_left;
    cvar_t* player_lean_rotate_crouch_right;
    cvar_t* player_lean_rotate_left;
    cvar_t* player_lean_rotate_right;
    cvar_t* player_lean_shift_crouch_left;
    cvar_t* player_lean_shift_crouch_right;
    cvar_t* player_lean_shift_left;
    cvar_t* player_lean_shift_right;
    cvar_t* player_move_factor_on_torso;
    cvar_t* bg_aimSpreadMoveSpeedThreshold;
    cvar_t* bg_bobAmplitudeDucked;
    cvar_t* bg_bobAmplitudeProne;
    cvar_t* bg_bobAmplitudeSprinting;
    cvar_t* bg_bobAmplitudeStanding;
    cvar_t* bg_bobMax;
    cvar_t* bg_foliagesnd_fastinterval;
    cvar_t* bg_foliagesnd_maxspeed;
    cvar_t* bg_foliagesnd_minspeed;
    cvar_t* bg_foliagesnd_resetinterval;
    cvar_t* bg_foliagesnd_slowinterval;
    cvar_t* bg_ladder_yawcap;
    cvar_t* bg_maxGrenadeIndicatorSpeed;
    cvar_t* bg_prone_yawcap;
    cvar_t* bg_shock_lookControl_fadeTime;
    cvar_t* bg_shock_lookControl_maxpitchspeed;
    cvar_t* bg_shock_lookControl_maxyawspeed;
    cvar_t* bg_shock_lookControl_mousesensitivityscale;
    cvar_t* bg_shock_movement;
    cvar_t* bg_shock_screenBlurBlendFadeTime;
    cvar_t* bg_shock_screenBlurBlendTime;
    cvar_t* bg_shock_screenFlashShotFadeTime;
    cvar_t* bg_shock_screenFlashWhiteFadeTime;
    cvar_t* bg_shock_sound;
    cvar_t* bg_shock_soundDryLevel;
    cvar_t* bg_shock_soundEnd;
    cvar_t* bg_shock_soundEndAbort;
    cvar_t* bg_shock_soundFadeInTime;
    cvar_t* bg_shock_soundFadeOutTime;
    cvar_t* bg_shock_soundLoop;
    cvar_t* bg_shock_soundLoopEndDelay;
    cvar_t* bg_shock_soundLoopFadeTime;
    cvar_t* bg_shock_soundLoopSilent;
    cvar_t* bg_shock_soundModEndDelay;
    cvar_t* bg_shock_soundRoomType;
    cvar_t* bg_shock_soundWetLevel;
    cvar_t* bg_shock_viewKickFadeTime;
    cvar_t* bg_shock_viewKickPeriod;
    cvar_t* bg_shock_viewKickRadius;
    cvar_t* bg_viewKickMax;
    cvar_t* bg_viewKickMin;
    cvar_t* bg_viewKickRandom;
    cvar_t* bg_viewKickScale;
    cvar_t* bullet_penetrationMinFxDist;
    cvar_t* inertiaAngle;
    cvar_t* inertiaDebug;
    cvar_t* inertiaMax;
    cvar_t* player_adsExitDelay;
    cvar_t* player_backSpeedScale;
    cvar_t* player_breath_fire_delay;
    cvar_t* player_breath_gasp_lerp;
    cvar_t* player_breath_gasp_scale;
    cvar_t* player_breath_gasp_time;
    cvar_t* player_breath_hold_lerp;
    cvar_t* player_breath_hold_time;
    cvar_t* player_breath_snd_delay;
    cvar_t* player_breath_snd_lerp;
    cvar_t* player_burstFireCooldown;
    cvar_t* player_debugHealth;
    cvar_t* player_dmgtimer_maxTime;
    cvar_t* player_dmgtimer_minScale;
    cvar_t* player_dmgtimer_timePerPoint;
    cvar_t* player_meleeHeight;
    cvar_t* player_meleeWidth;
    cvar_t* player_scopeExitOnDamage;
    cvar_t* player_spectateSpeedScale;
    cvar_t* player_sprintSpeedScale;
    cvar_t* player_sprintStrafeSpeedScale;
    cvar_t* player_sprintTime;
    cvar_t* player_sustainAmmo;
    cvar_t* player_turnAnims;
    cvar_t* player_view_pitch_down;
    cvar_t* player_view_pitch_up;
    cvar_t* bg_shock_screenType;
    cvar_t* bg_shock_lookControl;
    cvar_t* bg_shock_volume;

    char bg_shellshockParms[0x2680];
    char bgShockChannelNames[0x1400];
    char BG_SaveShellShockDvars_filebuf[0x10000];
    int serverOnlyEvents[8] = 
    {
        0x1F,
        0x14,
        0x13,
        0x0FFFFFFFF,
        0,
        0,
        0,
        0
    };

    int singleClientEvents[13] =
    {
        6,
        7,
        8,
        0x22,
        0x0D,
        0x0E,
        0x20,
        0x21,
        0x22,
        0x25,
        0x2A,
        0x2B,
        0x0FFFFFFFF
    };

    const char* eventnames[] =
    {
        "EV_NONE",
        "EV_FOLIAGE_SOUND",
        "EV_STOP_WEAPON_SOUND",
        "EV_SOUND_ALIAS",
        "EV_SOUND_ALIAS_AS_MASTER",
        "EV_STOPSOUNDS",
        "EV_STANCE_FORCE_STAND",
        "EV_STANCE_FORCE_CROUCH",
        "EV_STANCE_FORCE_PRONE",
        "EV_ITEM_PICKUP",
        "EV_AMMO_PICKUP",
        "EV_NOAMMO",
        "EV_EMPTYCLIP",
        "EV_EMPTY_OFFHAND",
        "EV_RESET_ADS",
        "EV_RELOAD",
        "EV_RELOAD_FROM_EMPTY",
        "EV_RELOAD_START",
        "EV_RELOAD_END",
        "EV_RELOAD_START_NOTIFY",
        "EV_RELOAD_ADDAMMO",
        "EV_RAISE_WEAPON",
        "EV_FIRST_RAISE_WEAPON",
        "EV_PUTAWAY_WEAPON",
        "EV_WEAPON_ALT",
        "EV_PULLBACK_WEAPON",
        "EV_FIRE_WEAPON",
        "EV_FIRE_WEAPON_LASTSHOT",
        "EV_RECHAMBER_WEAPON",
        "EV_EJECT_BRASS",
        "EV_MELEE_SWIPE",
        "EV_FIRE_MELEE",
        "EV_PREP_OFFHAND",
        "EV_USE_OFFHAND",
        "EV_SWITCH_OFFHAND",
        "EV_MELEE_HIT",
        "EV_MELEE_MISS",
        "EV_MELEE_BLOOD",
        "EV_FIRE_WEAPON_MG42",
        "EV_FIRE_QUADBARREL_1",
        "EV_FIRE_QUADBARREL_2",
        "EV_BULLET_HIT",
        "EV_BULLET_HIT_CLIENT_SMALL",
        "EV_BULLET_HIT_CLIENT_LARGE",
        "EV_GRENADE_BOUNCE",
        "EV_GRENADE_EXPLODE",
        "EV_ROCKET_EXPLODE",
        "EV_ROCKET_EXPLODE_NOMARKS",
        "EV_FLASHBANG_EXPLODE",
        "EV_CUSTOM_EXPLODE",
        "EV_CUSTOM_EXPLODE_NOMARKS",
        "EV_CHANGE_TO_DUD",
        "EV_DUD_EXPLODE",
        "EV_DUD_IMPACT",
        "EV_BULLET",
        "EV_PLAY_FX",
        "EV_PLAY_FX_ON_TAG",
        "EV_PHYS_EXPLOSION_SPHERE",
        "EV_PHYS_EXPLOSION_CYLINDER",
        "EV_PHYS_EXPLOSION_JOLT",
        "EV_PHYS_JITTER",
        "EV_EARTHQUAKE",
        "EV_GRENADE_SUICIDE",
        "EV_DETONATE",
        "EV_NIGHTVISION_WEAR",
        "EV_NIGHTVISION_REMOVE",
        "EV_OBITUARY",
        "EV_NO_FRAG_GRENADE_HINT",
        "EV_NO_SPECIAL_GRENADE_HINT",
        "EV_TARGET_TOO_CLOSE_HINT",
        "EV_TARGET_NOT_ENOUGH_CLEARANCE",
        "EV_LOCKON_REQUIRED_HINT",
        "EV_FOOTSTEP_SPRINT",
        "EV_FOOTSTEP_RUN",
        "EV_FOOTSTEP_WALK",
        "EV_FOOTSTEP_PRONE",
        "EV_JUMP",
        "EV_LANDING_DEFAULT",
        "EV_LANDING_BARK",
        "EV_LANDING_BRICK",
        "EV_LANDING_CARPET",
        "EV_LANDING_CLOTH",
        "EV_LANDING_CONCRETE",
        "EV_LANDING_DIRT",
        "EV_LANDING_FLESH",
        "EV_LANDING_FOLIAGE",
        "EV_LANDING_GLASS",
        "EV_LANDING_GRASS",
        "EV_LANDING_GRAVEL",
        "EV_LANDING_ICE",
        "EV_LANDING_METAL",
        "EV_LANDING_MUD",
        "EV_LANDING_PAPER",
        "EV_LANDING_PLASTER",
        "EV_LANDING_ROCK",
        "EV_LANDING_SAND",
        "EV_LANDING_SNOW",
        "EV_LANDING_WATER",
        "EV_LANDING_WOOD",
        "EV_LANDING_ASPHALT",
        "EV_LANDING_CERAMIC",
        "EV_LANDING_PLASTIC",
        "EV_LANDING_RUBBER",
        "EV_LANDING_CUSHION",
        "EV_LANDING_FRUIT",
        "EV_LANDING_PAINTEDMETAL",
        "EV_LANDING_PAIN_DEFAULT",
        "EV_LANDING_PAIN_BARK",
        "EV_LANDING_PAIN_BRICK",
        "EV_LANDING_PAIN_CARPET",
        "EV_LANDING_PAIN_CLOTH",
        "EV_LANDING_PAIN_CONCRETE",
        "EV_LANDING_PAIN_DIRT",
        "EV_LANDING_PAIN_FLESH",
        "EV_LANDING_PAIN_FOLIAGE",
        "EV_LANDING_PAIN_GLASS",
        "EV_LANDING_PAIN_GRASS",
        "EV_LANDING_PAIN_GRAVEL",
        "EV_LANDING_PAIN_ICE",
        "EV_LANDING_PAIN_METAL",
        "EV_LANDING_PAIN_MUD",
        "EV_LANDING_PAIN_PAPER",
        "EV_LANDING_PAIN_PLASTER",
        "EV_LANDING_PAIN_ROCK",
        "EV_LANDING_PAIN_SAND",
        "EV_LANDING_PAIN_SNOW",
        "EV_LANDING_PAIN_WATER",
        "EV_LANDING_PAIN_WOOD",
        "EV_LANDING_PAIN_ASPHALT",
        "EV_LANDING_PAIN_CERAMIC",
        "EV_LANDING_PAIN_PLASTIC",
        "EV_LANDING_PAIN_RUBBER",
        "EV_LANDING_PAIN_CUSHION",
        "EV_LANDING_PAIN_FRUIT",
        "EV_LANDING_PAIN_PAINTEDMETAL",
        nullptr
    };

    const char* bgShockDvarNames[] =
    {
        "bg_shock_screenType",
        "bg_shock_screenBlurBlendTime",
        "bg_shock_screenBlurBlendFadeTime",
        "bg_shock_screenFlashWhiteFadeTime",
        "bg_shock_screenFlashShotFadeTime",
        "bg_shock_viewKickPeriod",
        "bg_shock_viewKickRadius",
        "bg_shock_viewKickFadeTime",
        "bg_shock_soundLoop",
        "bg_shock_soundLoopSilent",
        "bg_shock_soundEnd",
        "bg_shock_soundEndAbort",
        "bg_shock_sound",
        "bg_shock_soundFadeInTime",
        "bg_shock_soundFadeOutTime",
        "bg_shock_soundLoopFadeTime",
        "bg_shock_soundLoopEndDelay",
        "bg_shock_soundRoomType",
        "bg_shock_soundDryLevel",
        "bg_shock_soundWetLevel",
        "bg_shock_soundModEndDelay",
        "bg_shock_lookControl",
        "bg_shock_lookControl_maxpitchspeed",
        "bg_shock_lookControl_maxyawspeed",
        "bg_shock_lookControl_mousesensitivityscale",
        "bg_shock_lookControl_fadeTime",
        "bg_shock_movement",
        nullptr
    };

    const char* bg_ShockScreenTypeNames[4] =
    { 
        "blurred", 
        "flashed", 
        "none", 
        nullptr 
    };

    const char* bg_soundRoomTypes[] = 
    { 
        "generic",
        "paddedcell",
        "room", 
        "bathroom", 
        "livingroom", 
        "stoneroom",
        "auditorium", 
        "concerthall", 
        "cave", 
        "arena", 
        "hangar", 
        "carpetedhallway",
        "hallway", 
        "stonecorridor", 
        "alley", 
        "forest", 
        "city", 
        "mountains",
        "quarry", 
        "plain", 
        "parkinglot", 
        "sewerpipe", 
        "underwater", 
        "drugged",
        "dizzy", 
        "psychotic", 
        nullptr 
    };

    const char* entityTypeNames[21] =
    {
      "ET_GENERAL",
      "ET_PLAYER",
      "ET_PLAYER_CORPSE",
      "ET_ITEM",
      "ET_MISSILE",
      "ET_INVISIBLE",
      "ET_SCRIPTMOVER",
      "ET_SOUND_BLEND",
      "ET_FX",
      "ET_LOOP_FX",
      "ET_PRIMARY_LIGHT",
      "ET_MG42",
      "ET_HELICOPTER",
      "ET_PLANE",
      "ET_VEHICLE",
      "ET_VEHICLE_COLLMAP",
      "ET_VEHICLE_CORPSE",
      "ET_ACTOR",
      "ET_ACTOR_SPAWNER",
      "ET_ACTOR_CORPSE",
      "ET_STREAMER_HINT"
    };
};
