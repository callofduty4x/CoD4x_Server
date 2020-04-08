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
    void(CCDECL* actionFunc)(scr_entref_t);
    int type;
};

struct game_hudelem_field_t
{
    const char* name;
    int ofs;
    fieldtype_t type;
    int mask;
    int shift;
    void(CCDECL* setter)(game_hudelem_t*, int);
    void(CCDECL* getter)(game_hudelem_t*, int);
};



extern bool g_isLocStringPrecached[MAX_LOCALIZEDSTRINGS];

void HudElem_SetLocalizedString(game_hudelem_t* HudElem, int Offset_);
void HECmd_SetText(scr_entref_t entref);

extern "C"
{
    extern game_hudelem_t g_hudelems[1024];
    extern BuiltinMethodDef g_he_methods[22];
    extern const int g_he_methodsCount;


    void CCDECL HECmd_ClearAllTextAfterHudElem(scr_entref_t entref);
    void CCDECL HECmd_SetMaterial(scr_entref_t entref);
    void CCDECL HECmd_SetTimer(scr_entref_t entref);
    void CCDECL HECmd_SetTimerUp(scr_entref_t entref);
    void CCDECL HECmd_SetTenthsTimer(scr_entref_t entref);
    void CCDECL HECmd_SetTenthsTimerUp(scr_entref_t entref);
    void CCDECL HECmd_SetClock(scr_entref_t entref);
    void CCDECL HECmd_SetClockUp(scr_entref_t entref);
    void CCDECL HECmd_SetValue(scr_entref_t entref);
    void CCDECL HECmd_SetWaypoint(scr_entref_t entref);
    void CCDECL HECmd_FadeOverTime(scr_entref_t entref);
    void CCDECL HECmd_ScaleOverTime(scr_entref_t entref);
    void CCDECL HECmd_MoveOverTime(scr_entref_t entref);
    void CCDECL HECmd_Reset(scr_entref_t entref);
    void CCDECL HECmd_SetPulseFX(scr_entref_t entref);
    void CCDECL HECmd_SetPlayerNameString(scr_entref_t entref);
    void CCDECL HECmd_SetMapNameString(scr_entref_t entref);
    void CCDECL HECmd_SetGameTypeString(scr_entref_t entref);
    void CCDECL HECmd_ClearTargetEnt(scr_entref_t entref);
    void CCDECL HECmd_SetTargetEnt(scr_entref_t entref);

    void CCDECL HudElem_SetFontScale(game_hudelem_t* HudElem, int Offset_);
    void CCDECL HudElem_SetFont(game_hudelem_t* HudElem, int Offset_);
    void CCDECL HudElem_SetAlignX(game_hudelem_t* HudElem, int Offset_);
    void CCDECL HudElem_SetAlignY(game_hudelem_t* HudElem, int Offset_);
    void CCDECL HudElem_SetHorzAlign(game_hudelem_t* HudElem, int Offset_);
    void CCDECL HudElem_SetVertAlign(game_hudelem_t* HudElem, int Offset_);
    void CCDECL HudElem_SetColor(game_hudelem_t* HudElem, int Offset_);
    void CCDECL HudElem_SetAlpha(game_hudelem_t* HudElem, int Offset_);
    void CCDECL HudElem_SetFlagForeground(game_hudelem_t* HudElem, int Offset_);
    void CCDECL HudElem_SetFlagHideWhenDead(game_hudelem_t* HudElem, int Offset_);
    void CCDECL HudElem_SetFlagHideWhenInMenu(game_hudelem_t* HudElem, int Offset_);
    void CCDECL HudElem_SetGlowColor(game_hudelem_t* HudElem, int Offset_);
    void CCDECL HudElem_SetGlowAlpha(game_hudelem_t* HudElem, int Offset_);
    void CCDECL HudElem_SetBoolean(game_hudelem_t* HudElem, int Offset_);

    void CCDECL HudElem_GetFont(game_hudelem_t* HudElem, int Offset_);
    void CCDECL HudElem_GetAlignX(game_hudelem_t* HudElem, int Offset_);
    void CCDECL HudElem_GetAlignY(game_hudelem_t* HudElem, int Offset_);
    void CCDECL HudElem_GetHorzAlign(game_hudelem_t* HudElem, int Offset_);
    void CCDECL HudElem_GetVertAlign(game_hudelem_t* HudElem, int Offset_);
    void CCDECL HudElem_GetColor(game_hudelem_t* HudElem, int Offset_);
    void CCDECL HudElem_GetAlpha(game_hudelem_t* HudElem, int Offset_);
    void CCDECL HudElem_GetFlagForeground(game_hudelem_t* HudElem, int Offset_);
    void CCDECL HudElem_GetFlagHideWhenDead(game_hudelem_t* HudElem, int Offset_);
    void CCDECL HudElem_GetFlagHideWhenInMenu(game_hudelem_t* HudElem, int Offset_);
    void CCDECL HudElem_GetGlowColor(game_hudelem_t* HudElem, int Offset_);
    void CCDECL HudElem_GetGlowAlpha(game_hudelem_t* HudElem, int Offset_);
}
