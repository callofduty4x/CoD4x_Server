#pragma once
#include "scr_vm.hpp"
#include "g_fields.hpp"
#include "scr_entref_t.hpp"

typedef struct game_hudelem_t
{
    hudelem_t elem;
    int clientNum; // 0xA0
    int team;
    int archived;
} game_hudelem_t;

struct BuiltinMethodDef
{
    const char* actionString;
    void(__cdecl* actionFunc)(scr_entref_t);
    int type;
};

struct game_hudelem_field_t
{
    const char* name;
    int ofs;
    fieldtype_t type;
    int mask;
    int shift;
    void(__cdecl* setter)(game_hudelem_t*, int);
    void(__cdecl* getter)(game_hudelem_t*, int);
};



extern qboolean g_isLocStringPrecached[];
extern game_hudelem_t g_hudelems[1024];
extern BuiltinMethodDef g_he_methods[22];
extern const int g_he_methodsCount;

qboolean Scr_CanFreeLocalizedConfigString(unsigned int index);

extern "C"
{
    void __cdecl HECmd_SetText(scr_entref_t entref);
    void __cdecl HECmd_ClearAllTextAfterHudElem(scr_entref_t entref);
    void __cdecl HECmd_SetMaterial(scr_entref_t entref);
    void __cdecl HECmd_SetTimer(scr_entref_t entref);
    void __cdecl HECmd_SetTimerUp(scr_entref_t entref);
    void __cdecl HECmd_SetTenthsTimer(scr_entref_t entref);
    void __cdecl HECmd_SetTenthsTimerUp(scr_entref_t entref);
    void __cdecl HECmd_SetClock(scr_entref_t entref);
    void __cdecl HECmd_SetClockUp(scr_entref_t entref);
    void __cdecl HECmd_SetValue(scr_entref_t entref);
    void __cdecl HECmd_SetWaypoint(scr_entref_t entref);
    void __cdecl HECmd_FadeOverTime(scr_entref_t entref);
    void __cdecl HECmd_ScaleOverTime(scr_entref_t entref);
    void __cdecl HECmd_MoveOverTime(scr_entref_t entref);
    void __cdecl HECmd_Reset(scr_entref_t entref);
    void __cdecl HECmd_SetPulseFX(scr_entref_t entref);
    void __cdecl HECmd_SetPlayerNameString(scr_entref_t entref);
    void __cdecl HECmd_SetMapNameString(scr_entref_t entref);
    void __cdecl HECmd_SetGameTypeString(scr_entref_t entref);
    void __cdecl HECmd_ClearTargetEnt(scr_entref_t entref);
    void __cdecl HECmd_SetTargetEnt(scr_entref_t entref);

    void __cdecl HudElem_SetFontScale(game_hudelem_t* HudElem, int Offset_);
    void __cdecl HudElem_SetFont(game_hudelem_t* HudElem, int Offset_);
    void __cdecl HudElem_SetAlignX(game_hudelem_t* HudElem, int Offset_);
    void __cdecl HudElem_SetAlignY(game_hudelem_t* HudElem, int Offset_);
    void __cdecl HudElem_SetHorzAlign(game_hudelem_t* HudElem, int Offset_);
    void __cdecl HudElem_SetVertAlign(game_hudelem_t* HudElem, int Offset_);
    void __cdecl HudElem_SetColor(game_hudelem_t* HudElem, int Offset_);
    void __cdecl HudElem_SetAlpha(game_hudelem_t* HudElem, int Offset_);
    void __cdecl HudElem_SetLocalizedString(game_hudelem_t* HudElem, int Offset_);
    void __cdecl HudElem_SetFlagForeground(game_hudelem_t* HudElem, int Offset_);
    void __cdecl HudElem_SetFlagHideWhenDead(game_hudelem_t* HudElem, int Offset_);
    void __cdecl HudElem_SetFlagHideWhenInMenu(game_hudelem_t* HudElem, int Offset_);
    void __cdecl HudElem_SetGlowColor(game_hudelem_t* HudElem, int Offset_);
    void __cdecl HudElem_SetGlowAlpha(game_hudelem_t* HudElem, int Offset_);
    void __cdecl HudElem_SetBoolean(game_hudelem_t* HudElem, int Offset_);

    void __cdecl HudElem_GetFont(game_hudelem_t* HudElem, int Offset_);
    void __cdecl HudElem_GetAlignX(game_hudelem_t* HudElem, int Offset_);
    void __cdecl HudElem_GetAlignY(game_hudelem_t* HudElem, int Offset_);
    void __cdecl HudElem_GetHorzAlign(game_hudelem_t* HudElem, int Offset_);
    void __cdecl HudElem_GetVertAlign(game_hudelem_t* HudElem, int Offset_);
    void __cdecl HudElem_GetColor(game_hudelem_t* HudElem, int Offset_);
    void __cdecl HudElem_GetAlpha(game_hudelem_t* HudElem, int Offset_);
    void __cdecl HudElem_GetFlagForeground(game_hudelem_t* HudElem, int Offset_);
    void __cdecl HudElem_GetFlagHideWhenDead(game_hudelem_t* HudElem, int Offset_);
    void __cdecl HudElem_GetFlagHideWhenInMenu(game_hudelem_t* HudElem, int Offset_);
    void __cdecl HudElem_GetGlowColor(game_hudelem_t* HudElem, int Offset_);
    void __cdecl HudElem_GetGlowAlpha(game_hudelem_t* HudElem, int Offset_);
}
