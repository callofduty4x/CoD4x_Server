#include "g_hudelem.hpp"
#include "scr_vm_functions.hpp"
#include "g_hud.hpp"
#include "server.hpp"


bool g_isLocStringPrecached[MAX_LOCALIZEDSTRINGS] = {false};

void HECmd_SetText(scr_entref_t entnum)
{
    char buffer[1024];

    if (entnum.classnum != 1)
        return Scr_ObjectError("G_HudSetText: Not a hud element");

    game_hudelem_t* element = &g_hudelems[entnum.entnum];
    int cs_index = element->elem.text;
    HudElem_ClearTypeSettings(element);
    /* Must be set to 0 before calling Scr_CanFreeLocalizedConfigString() */
    element->elem.text = 0;
    /* Attempt to avoid CS overflow using "SetText()" */
    if (Scr_CanFreeLocalizedConfigString(cs_index))
        SV_SetConfigstring(cs_index + CS_LOCALIZEDSTRINGS, "");

    Scr_ConstructMessageString(0, Scr_GetNumParam() - 1, "Hud Elem String", buffer, sizeof(buffer));
    element->elem.type = HE_TYPE_TEXT;
    element->elem.text = G_LocalizedStringIndex(buffer);
}


extern "C"
{
    game_hudelem_t g_hudelems[1024];

    const char* g_he_vertalign[8] =
    {
        "subtop",
        "top",
        "middle",
        "bottom",
        "fullscreen",
        "noscale",
        "alignto480",
        "center_safearea"
    };

    const char* g_he_horzalign[8] =
    {
        "subleft",
        "left",
        "center",
        "right",
        "fullscreen",
        "noscale",
        "alignto640",
        "center_safearea"
    };

    const char* g_he_aligny[3] =
    {
        "top",
        "middle",
        "bottom"
    };

    const char* g_he_alignx[3] =
    {
        "left",
        "center",
        "right"
    };


    const char* g_he_font[6] =
    {
        "default",
        "bigfixed",
        "smallfixed",
        "objective",
        "big",
        "small"
    };

    BuiltinMethodDef g_he_methods[22] =
    {
        { "settext", HECmd_SetText, 0 },
        { "clearalltextafterhudelem", HECmd_ClearAllTextAfterHudElem, 0 },
        { "setshader", HECmd_SetMaterial, 0 },
        { "settargetent", HECmd_SetTargetEnt, 0 },
        { "cleartargetent", HECmd_ClearTargetEnt, 0 },
        { "settimer", HECmd_SetTimer, 0 },
        { "settimerup", HECmd_SetTimerUp, 0 },
        { "settenthstimer", HECmd_SetTenthsTimer, 0 },
        { "settenthstimerup", HECmd_SetTenthsTimerUp, 0 },
        { "setclock", HECmd_SetClock, 0 },
        { "setclockup", HECmd_SetClockUp, 0 },
        { "setvalue", HECmd_SetValue, 0 },
        { "setwaypoint", HECmd_SetWaypoint, 0 },
        { "fadeovertime", HECmd_FadeOverTime, 0 },
        { "scaleovertime", HECmd_ScaleOverTime, 0 },
        { "moveovertime", HECmd_MoveOverTime, 0 },
        { "reset", HECmd_Reset, 0 },
        { "destroy", HECmd_Destroy, 0 },
        { "setpulsefx", HECmd_SetPulseFX, 0 },
        { "setplayernamestring", HECmd_SetPlayerNameString, 0 },
        { "setmapnamestring", HECmd_SetMapNameString, 0 },
        { "setgametypestring", HECmd_SetGameTypeString, 0 }
    };
    const int g_he_methodsCount = sizeof(g_he_methods) / sizeof(BuiltinMethodDef);

#define HUDELEM_OFS(__member__) offsetof(game_hudelem_t, __member__)

    game_hudelem_field_t g_he_fields[] =
    {
        { "x", HUDELEM_OFS(elem.x), F_FLOAT, 0, 0, nullptr, nullptr },
        { "y", HUDELEM_OFS(elem.y), F_FLOAT, 0, 0, nullptr, nullptr },
        { "z", HUDELEM_OFS(elem.z), F_FLOAT, 0, 0, nullptr, nullptr },
        { "fontscale", HUDELEM_OFS(elem.fontScale), F_FLOAT, -1, 0, HudElem_SetFontScale, nullptr },
        { "font", HUDELEM_OFS(elem.font), F_INT, -1, 0, HudElem_SetFont, HudElem_GetFont },
        { "alignx", HUDELEM_OFS(elem.alignOrg), F_INT, 3, 2, HudElem_SetAlignX, HudElem_GetAlignX },
        { "aligny", HUDELEM_OFS(elem.alignOrg), F_INT, 3, 0, HudElem_SetAlignY, HudElem_GetAlignY },
        { "horzalign", HUDELEM_OFS(elem.alignScreen), F_INT, 7, 3, HudElem_SetHorzAlign, HudElem_GetHorzAlign },
        { "vertalign", HUDELEM_OFS(elem.alignScreen), F_INT, 7, 0, HudElem_SetVertAlign, HudElem_GetVertAlign },
        { "color", HUDELEM_OFS(elem.color), F_INT, -1, 0, HudElem_SetColor, HudElem_GetColor },
        { "alpha", HUDELEM_OFS(elem.color), F_INT, -1, 0, HudElem_SetAlpha, HudElem_GetAlpha },
        { "label", HUDELEM_OFS(elem.label), F_INT, -1, 0, HudElem_SetLocalizedString, nullptr },
        { "sort", HUDELEM_OFS(elem.color), F_FLOAT, 0, 0, nullptr, nullptr },
        { "foreground", HUDELEM_OFS(elem.flags), F_INT, -1, 0, HudElem_SetFlagForeground, HudElem_GetFlagForeground },
        { "hidewhendead", HUDELEM_OFS(elem.flags), F_INT, -1, 0, HudElem_SetFlagHideWhenDead, HudElem_GetFlagHideWhenDead },
        { "hidewheninmenu", HUDELEM_OFS(elem.flags), F_INT, -1, 0, HudElem_SetFlagHideWhenInMenu, HudElem_GetFlagHideWhenInMenu },
        { "glowcolor", HUDELEM_OFS(elem.glowColor), F_INT, -1, 0, HudElem_SetGlowColor, HudElem_GetGlowColor },
        { "glowalpha", HUDELEM_OFS(elem.glowColor), F_INT, -1, 0, HudElem_SetGlowAlpha, HudElem_GetGlowAlpha },
        { "archived", HUDELEM_OFS(archived), F_INT, -1, 0, HudElem_SetBoolean, nullptr },
        { nullptr, 0, F_INT, 0, 0, nullptr, nullptr }
    };
}

void HudElem_SetLocalizedString(game_hudelem_t* hud, int offset)
{
    void* refval = (byte*)hud + g_he_fields[offset].ofs;
    const char* s = Scr_GetIString(0);

    int oldlocid = *(int*)refval;

    /* Must be set to 0 before calling Scr_CanFreeLocalizedConfigString() */
    *(int*)refval = 0;

    /* Attempt to avoid CS overflow using "SetText()" */
    if (Scr_CanFreeLocalizedConfigString(oldlocid))
        SV_SetConfigstring(oldlocid + CS_LOCALIZEDSTRINGS, "");

    *(int*)refval = G_LocalizedStringIndex(s);
}
