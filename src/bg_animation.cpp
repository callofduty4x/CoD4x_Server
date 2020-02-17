#include "bg_animation.hpp"
#include "qshared.hpp"
#include "g_public.hpp"
#include "dobj.hpp"
#include "scr_vm.hpp"
#include "cscr_const.hpp"


extern "C"
{
    uint16_t* controller_names[] =
    {
        &scr_const.back_low,
        &scr_const.back_mid,
        &scr_const.back_up,
        &scr_const.neck,
        &scr_const.head,
        &scr_const.pelvis
    };

    bgs_s* bgs;

    animStringItem_t animEventTypesStr[] =
    {
        {"PAIN", -1},
        {"DEATH", -1},
        {"FIREWEAPON", -1},
        {"JUMP", -1},
        {"JUMPBK", -1},
        {"LAND", -1},
        {"DROPWEAPON", -1},
        {"RAISEWEAPON", -1},
        {"CLIMBMOUNT", -1},
        {"CLIMBDISMOUNT", -1},
        {"RELOAD", -1},
        {"CROUCH_TO_PRONE", -1},
        {"PRONE_TO_CROUCH", -1},
        {"STAND_TO_CROUCH", -1},
        {"CROUCH_TO_STAND", -1},
        {"STAND_TO_PRONE", -1},
        {"PRONE_TO_STAND", -1},
        {"MELEEATTACK", -1},
        {"KNIFE_MELEE", -1},
        {"KNIFE_MELEE_CHARGE", -1},
        {"SHELLSHOCK", -1},
        {nullptr, -1},
    };

    const int AnimEventTypesCount = sizeof(animEventTypesStr) / sizeof(animStringItem_t);

    animStringItem_t animMoveTypesStr[] =
    {
        { "** UNUSED **", -1 },
        { "IDLE", -1 },
        { "IDLECR", -1 },
        { "IDLEPRONE", -1 },
        { "WALK", -1 },
        { "WALKBK", -1 },
        { "WALKCR", -1 },
        { "WALKCRBK", -1 },
        { "WALKPRONE", -1 },
        { "WALKPRONEBK", -1 },
        { "RUN", -1 },
        { "RUNBK", -1 },
        { "RUNCR", -1 },
        { "RUNCRBK", -1 },
        { "TURNRIGHT", -1 },
        { "TURNLEFT", -1 },
        { "TURNRIGHTCR", -1 },
        { "TURNLEFTCR", -1 },
        { "CLIMBUP", -1 },
        { "CLIMBDOWN", -1 },
        { "SPRINT", -1 },
        { "MANTLE_ROOT", -1 },
        { "MANTLE_UP_57", -1 },
        { "MANTLE_UP_51", -1 },
        { "MANTLE_UP_45", -1 },
        { "MANTLE_UP_39", -1 },
        { "MANTLE_UP_33", -1 },
        { "MANTLE_UP_27", -1 },
        { "MANTLE_UP_21", -1 },
        { "MANTLE_OVER_HIGH", -1 },
        { "MANTLE_OVER_MID", -1 },
        { "MANTLE_OVER_LOW", -1 },
        { "FLINCH_FORWARD", -1 },
        { "FLINCH_BACKWARD", -1 },
        { "FLINCH_LEFT", -1 },
        { "FLINCH_RIGHT", -1 },
        { "STUMBLE_FORWARD", -1 },
        { "STUMBLE_BACKWARD", -1 },
        { "STUMBLE_WALK_FORWARD", -1 },
        { "STUMBLE_WALK_BACKWARD", -1 },
        { "STUMBLE_CROUCH_FORWARD", -1 },
        { "STUMBLE_CROUCH_BACKWARD", -1 },
        { "STUMBLE_SPRINT_FORWARD", -1 },
        { 0x0, -1 }
    };

    const int AnimMoveTypesCount = sizeof(animMoveTypesStr) / sizeof(animStringItem_t);

    animStringItem_t animStateStr[] =
    {
        { "COMBAT", -1 },
        { 0x0, -1 }
    };

    const int AnimStateCount = sizeof(animStateStr) / sizeof(animStringItem_t);

    animStringItem_t animWeaponClassStr[] =
    {
        { "RIFLE", -1 },
        { "MG", -1 },
        { "SMG", -1 },
        { "SPREAD", -1 },
        { "PISTOL", -1 },
        { "GRENADE", -1 },
        { "ROCKETLAUNCHER", -1 },
        { "TURRET", -1 },
        { "NON-PLAYER", -1 },
        { "ITEM", -1 },
        { 0x0, -1 },
    };

    const int AnimWeaponClassCount = sizeof(animWeaponClassStr) / sizeof(animStringItem_t);

    animStringItem_t animConditionMountedStr[] =
    {
        { "** UNUSED **", -1 },
        { "MG42", -1 },
        { 0x0, -1 },
    };

    const int AnimConditionMountedCount = sizeof(animConditionMountedStr) / sizeof(animStringItem_t);

    animStringItem_t animWeaponPositionStr[] =
    {
        { "HIP", -1 },
        { "ADS", -1 },
        { 0x0, -1 }
    };

    const int AnimWeaponPositionCount = sizeof(animWeaponPositionStr) / sizeof(animStringItem_t);

    animStringItem_t animStrafeStateStr[] =
    {
        { "NOT", -1 },
        { "LEFT", -1 },
        { "RIGHT", -1 },
        { 0x0, -1 }
    };

    const int AnimStrafeStateCount = sizeof(animStrafeStateStr) / sizeof(animStringItem_t);


    animStringItem_t animPerkStateStr[] =
    {
        { "** UNUSED **", -1 },
        { "LASTSTAND", -1 },
        { "GRENADEDEATH", -1 },
        { 0x0, -1 }
    };

    const int AnimPerkStateCount = sizeof(animPerkStateStr) / sizeof(animStringItem_t);

    animStringItem_t animConditionsStr[] =
    {
        { "PLAYERANIMTYPE", -1 },
        { "WEAPONCLASS", -1 },
        { "MOUNTED", -1 },
        { "MOVETYPE", -1 },
        { "UNDERHAND", -1 },
        { "CROUCHING", -1 },
        { "FIRING", -1 },
        { "WEAPON_POSITION", -1 },
        { "STRAFING", -1 },
        { "PERK", -1 },
        { 0x0, -1 }
    };

    const int AnimConditionsCount = sizeof(animConditionsStr) / sizeof(animStringItem_t);


    animStringItem_t animParseModesStr[] =
    {
        { "defines", -1 },
        { "animations", -1 },
        { "canned_animations", -1 },
        { "statechanges", -1 },
        { "events", -1 },
        { 0x0, -1 }
    };

    const int AnimParseModesCount = sizeof(animParseModesStr) / sizeof(animStringItem_t);

    const char* globalFilename = "mp/playeranim.script";

    animStringItem_t animBodyPartsStr[] =
    {
        { "** UNUSED **", -1 },
        { "LEGS", -1 },
        { "TORSO", -1 },
        { "BOTH", -1 },
        { 0x0, -1 }
    };

    const int AnimBodyPartsCount = sizeof(animBodyPartsStr) / sizeof(animStringItem_t);


    animStringItem_t weaponStrings[128];

    animConditionTable_t animConditionsTable[] =
    {
        { ANIM_CONDTYPE_BITFLAGS, weaponStrings },
        { ANIM_CONDTYPE_BITFLAGS, animWeaponClassStr },
        { ANIM_CONDTYPE_VALUE, animConditionMountedStr },
        { ANIM_CONDTYPE_BITFLAGS, animMoveTypesStr },
        { ANIM_CONDTYPE_VALUE, 0x0 },
        { ANIM_CONDTYPE_VALUE, 0x0 },
        { ANIM_CONDTYPE_VALUE, 0x0 },
        { ANIM_CONDTYPE_VALUE, animWeaponPositionStr },
        { ANIM_CONDTYPE_VALUE, animStrafeStateStr },
        { ANIM_CONDTYPE_VALUE, animPerkStateStr },
    };

    const int AnimConditionsTableCount = sizeof(animConditionsTable) / sizeof(animConditionTable_t);

    char defineBits[0x500];
    char parseEvent[0x4];
    char parseMovetype[0x4];
    char defineStringsOffset[0x18];
    char numDefines[0x40];
    char defineStrings[0x2720];
    char defineStr[0x500];
    char g_piNumLoadAnims[0x4];
    char g_pLoadAnims[0x4];
    char globalScriptData[0x78];

    void CDECL BG_Player_DoControllers(CEntPlayerInfo* player, DObj* obj, int* partBits)
    {
        int i;

        for (int i = 0; i < 6; ++i)
            DObjSetControlTagAngles(obj, partBits, player->tag[i], player->control->angles[i]);
        
        DObjSetLocalTag(obj, partBits, 0, player->control->tag_origin_offset, player->control->tag_origin_angles);
    }
}

  
