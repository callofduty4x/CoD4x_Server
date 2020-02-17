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
    void(CDECL* actionFunc)(scr_entref_t);
    int type;
};

struct game_hudelem_field_t
{
    const char* name;
    int ofs;
    fieldtype_t type;
    int mask;
    int shift;
    void(CDECL* setter)(game_hudelem_t*, int);
    void(CDECL* getter)(game_hudelem_t*, int);
};



extern qboolean g_isLocStringPrecached[];

qboolean Scr_CanFreeLocalizedConfigString(unsigned int index);

extern "C"
{
    extern game_hudelem_t g_hudelems[1024];
    extern BuiltinMethodDef g_he_methods[22];
    extern const int g_he_methodsCount;

    void CDECL HECmd_SetText(scr_entref_t entref);
    void CDECL HECmd_ClearAllTextAfterHudElem(scr_entref_t entref);
    void CDECL HECmd_SetMaterial(scr_entref_t entref);
    void CDECL HECmd_SetTimer(scr_entref_t entref);
    void CDECL HECmd_SetTimerUp(scr_entref_t entref);
    void CDECL HECmd_SetTenthsTimer(scr_entref_t entref);
    void CDECL HECmd_SetTenthsTimerUp(scr_entref_t entref);
    void CDECL HECmd_SetClock(scr_entref_t entref);
    void CDECL HECmd_SetClockUp(scr_entref_t entref);
    void CDECL HECmd_SetValue(scr_entref_t entref);
    void CDECL HECmd_SetWaypoint(scr_entref_t entref);
    void CDECL HECmd_FadeOverTime(scr_entref_t entref);
    void CDECL HECmd_ScaleOverTime(scr_entref_t entref);
    void CDECL HECmd_MoveOverTime(scr_entref_t entref);
    void CDECL HECmd_Reset(scr_entref_t entref);
    void CDECL HECmd_SetPulseFX(scr_entref_t entref);
    void CDECL HECmd_SetPlayerNameString(scr_entref_t entref);
    void CDECL HECmd_SetMapNameString(scr_entref_t entref);
    void CDECL HECmd_SetGameTypeString(scr_entref_t entref);
    void CDECL HECmd_ClearTargetEnt(scr_entref_t entref);
    void CDECL HECmd_SetTargetEnt(scr_entref_t entref);

    void CDECL HudElem_SetFontScale(game_hudelem_t* HudElem, int Offset_);
    void CDECL HudElem_SetFont(game_hudelem_t* HudElem, int Offset_);
    void CDECL HudElem_SetAlignX(game_hudelem_t* HudElem, int Offset_);
    void CDECL HudElem_SetAlignY(game_hudelem_t* HudElem, int Offset_);
    void CDECL HudElem_SetHorzAlign(game_hudelem_t* HudElem, int Offset_);
    void CDECL HudElem_SetVertAlign(game_hudelem_t* HudElem, int Offset_);
    void CDECL HudElem_SetColor(game_hudelem_t* HudElem, int Offset_);
    void CDECL HudElem_SetAlpha(game_hudelem_t* HudElem, int Offset_);
    void CDECL HudElem_SetLocalizedString(game_hudelem_t* HudElem, int Offset_);
    void CDECL HudElem_SetFlagForeground(game_hudelem_t* HudElem, int Offset_);
    void CDECL HudElem_SetFlagHideWhenDead(game_hudelem_t* HudElem, int Offset_);
    void CDECL HudElem_SetFlagHideWhenInMenu(game_hudelem_t* HudElem, int Offset_);
    void CDECL HudElem_SetGlowColor(game_hudelem_t* HudElem, int Offset_);
    void CDECL HudElem_SetGlowAlpha(game_hudelem_t* HudElem, int Offset_);
    void CDECL HudElem_SetBoolean(game_hudelem_t* HudElem, int Offset_);

    void CDECL HudElem_GetFont(game_hudelem_t* HudElem, int Offset_);
    void CDECL HudElem_GetAlignX(game_hudelem_t* HudElem, int Offset_);
    void CDECL HudElem_GetAlignY(game_hudelem_t* HudElem, int Offset_);
    void CDECL HudElem_GetHorzAlign(game_hudelem_t* HudElem, int Offset_);
    void CDECL HudElem_GetVertAlign(game_hudelem_t* HudElem, int Offset_);
    void CDECL HudElem_GetColor(game_hudelem_t* HudElem, int Offset_);
    void CDECL HudElem_GetAlpha(game_hudelem_t* HudElem, int Offset_);
    void CDECL HudElem_GetFlagForeground(game_hudelem_t* HudElem, int Offset_);
    void CDECL HudElem_GetFlagHideWhenDead(game_hudelem_t* HudElem, int Offset_);
    void CDECL HudElem_GetFlagHideWhenInMenu(game_hudelem_t* HudElem, int Offset_);
    void CDECL HudElem_GetGlowColor(game_hudelem_t* HudElem, int Offset_);
    void CDECL HudElem_GetGlowAlpha(game_hudelem_t* HudElem, int Offset_);
}
