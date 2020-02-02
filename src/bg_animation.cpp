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
        {"PAIN", 0xffffffff},
        {"DEATH", 0xffffffff},
        {"FIREWEAPON", 0xffffffff},
        {"JUMP", 0xffffffff},
        {"JUMPBK", 0xffffffff},
        {"LAND", 0xffffffff},
        {"DROPWEAPON", 0xffffffff},
        {"RAISEWEAPON", 0xffffffff},
        {"CLIMBMOUNT", 0xffffffff},
        {"CLIMBDISMOUNT", 0xffffffff},
        {"RELOAD", 0xffffffff},
        {"CROUCH_TO_PRONE", 0xffffffff},
        {"PRONE_TO_CROUCH", 0xffffffff},
        {"STAND_TO_CROUCH", 0xffffffff},
        {"CROUCH_TO_STAND", 0xffffffff},
        {"STAND_TO_PRONE", 0xffffffff},
        {"PRONE_TO_STAND", 0xffffffff},
        {"MELEEATTACK", 0xffffffff},
        {"KNIFE_MELEE", 0xffffffff},
        {"KNIFE_MELEE_CHARGE", 0xffffffff},
        {"SHELLSHOCK", 0xffffffff},
        {nullptr, 0xffffffff},
    };

    const int AnimEventTypesCount = sizeof(animEventTypesStr) / sizeof(animStringItem_t);

    animStringItem_t animMoveTypesStr[] =
    {
        { "** UNUSED **", 0xffffffff },
        { "IDLE", 0xffffffff },
        { "IDLECR", 0xffffffff },
        { "IDLEPRONE", 0xffffffff },
        { "WALK", 0xffffffff },
        { "WALKBK", 0xffffffff },
        { "WALKCR", 0xffffffff },
        { "WALKCRBK", 0xffffffff },
        { "WALKPRONE", 0xffffffff },
        { "WALKPRONEBK", 0xffffffff },
        { "RUN", 0xffffffff },
        { "RUNBK", 0xffffffff },
        { "RUNCR", 0xffffffff },
        { "RUNCRBK", 0xffffffff },
        { "TURNRIGHT", 0xffffffff },
        { "TURNLEFT", 0xffffffff },
        { "TURNRIGHTCR", 0xffffffff },
        { "TURNLEFTCR", 0xffffffff },
        { "CLIMBUP", 0xffffffff },
        { "CLIMBDOWN", 0xffffffff },
        { "SPRINT", 0xffffffff },
        { "MANTLE_ROOT", 0xffffffff },
        { "MANTLE_UP_57", 0xffffffff },
        { "MANTLE_UP_51", 0xffffffff },
        { "MANTLE_UP_45", 0xffffffff },
        { "MANTLE_UP_39", 0xffffffff },
        { "MANTLE_UP_33", 0xffffffff },
        { "MANTLE_UP_27", 0xffffffff },
        { "MANTLE_UP_21", 0xffffffff },
        { "MANTLE_OVER_HIGH", 0xffffffff },
        { "MANTLE_OVER_MID", 0xffffffff },
        { "MANTLE_OVER_LOW", 0xffffffff },
        { "FLINCH_FORWARD", 0xffffffff },
        { "FLINCH_BACKWARD", 0xffffffff },
        { "FLINCH_LEFT", 0xffffffff },
        { "FLINCH_RIGHT", 0xffffffff },
        { "STUMBLE_FORWARD", 0xffffffff },
        { "STUMBLE_BACKWARD", 0xffffffff },
        { "STUMBLE_WALK_FORWARD", 0xffffffff },
        { "STUMBLE_WALK_BACKWARD", 0xffffffff },
        { "STUMBLE_CROUCH_FORWARD", 0xffffffff },
        { "STUMBLE_CROUCH_BACKWARD", 0xffffffff },
        { "STUMBLE_SPRINT_FORWARD", 0xffffffff },
        { 0x0, 0xffffffff }
    };

    const int AnimMoveTypesCount = sizeof(animMoveTypesStr) / sizeof(animStringItem_t);

    animStringItem_t animStateStr[] =
    {
        { "COMBAT", 0xffffffff },
        { 0x0, 0xffffffff }
    };

    const int AnimStateCount = sizeof(animStateStr) / sizeof(animStringItem_t);

    animStringItem_t animWeaponClassStr[] =
    {
        { "RIFLE", 0xffffffff },
        { "MG", 0xffffffff },
        { "SMG", 0xffffffff },
        { "SPREAD", 0xffffffff },
        { "PISTOL", 0xffffffff },
        { "GRENADE", 0xffffffff },
        { "ROCKETLAUNCHER", 0xffffffff },
        { "TURRET", 0xffffffff },
        { "NON-PLAYER", 0xffffffff },
        { "ITEM", 0xffffffff },
        { 0x0, 0xffffffff },
    };

    const int AnimWeaponClassCount = sizeof(animWeaponClassStr) / sizeof(animStringItem_t);

    animStringItem_t animConditionMountedStr[] =
    {
        { "** UNUSED **", 0xffffffff },
        { "MG42", 0xffffffff },
        { 0x0, 0xffffffff },
    };

    const int AnimConditionMountedCount = sizeof(animConditionMountedStr) / sizeof(animStringItem_t);

    animStringItem_t animWeaponPositionStr[] =
    {
        { "HIP", 0xffffffff },
        { "ADS", 0xffffffff },
        { 0x0, 0xffffffff }
    };

    const int AnimWeaponPositionCount = sizeof(animWeaponPositionStr) / sizeof(animStringItem_t);

    animStringItem_t animStrafeStateStr[] =
    {
        { "NOT", 0xffffffff },
        { "LEFT", 0xffffffff },
        { "RIGHT", 0xffffffff },
        { 0x0, 0xffffffff }
    };

    const int AnimStrafeStateCount = sizeof(animStrafeStateStr) / sizeof(animStringItem_t);


    animStringItem_t animPerkStateStr[] =
    {
        { "** UNUSED **", 0xffffffff },
        { "LASTSTAND", 0xffffffff },
        { "GRENADEDEATH", 0xffffffff },
        { 0x0, 0xffffffff }
    };

    const int AnimPerkStateCount = sizeof(animPerkStateStr) / sizeof(animStringItem_t);

    animStringItem_t animConditionsStr[] =
    {
        { "PLAYERANIMTYPE", 0xffffffff },
        { "WEAPONCLASS", 0xffffffff },
        { "MOUNTED", 0xffffffff },
        { "MOVETYPE", 0xffffffff },
        { "UNDERHAND", 0xffffffff },
        { "CROUCHING", 0xffffffff },
        { "FIRING", 0xffffffff },
        { "WEAPON_POSITION", 0xffffffff },
        { "STRAFING", 0xffffffff },
        { "PERK", 0xffffffff },
        { 0x0, 0xffffffff }
    };

    const int AnimConditionsCount = sizeof(animConditionsStr) / sizeof(animStringItem_t);


    animStringItem_t animParseModesStr[] =
    {
        { "defines", 0xffffffff },
        { "animations", 0xffffffff },
        { "canned_animations", 0xffffffff },
        { "statechanges", 0xffffffff },
        { "events", 0xffffffff },
        { 0x0, 0xffffffff }
    };

    const int AnimParseModesCount = sizeof(animParseModesStr) / sizeof(animStringItem_t);

    const char* globalFilename = "mp/playeranim.script";

    animStringItem_t animBodyPartsStr[] =
    {
        { "** UNUSED **", 0xffffffff },
        { "LEGS", 0xffffffff },
        { "TORSO", 0xffffffff },
        { "BOTH", 0xffffffff },
        { 0x0, 0xffffffff }
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

    void __cdecl BG_Player_DoControllers(CEntPlayerInfo* player, DObj* obj, int* partBits)
    {
        int i;

        for (int i = 0; i < 6; ++i)
            DObjSetControlTagAngles(obj, partBits, player->tag[i], player->control->angles[i]);
        
        DObjSetLocalTag(obj, partBits, 0, player->control->tag_origin_offset, player->control->tag_origin_angles);
    }
}

  
