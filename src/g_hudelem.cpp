#include "g_hudelem.hpp"


qboolean g_isLocStringPrecached[MAX_LOCALIZEDSTRINGS] = {qfalse};

qboolean Scr_CanFreeLocalizedConfigString(unsigned int index)
{
    mvabuf;

    /* Index not set + fast return from function */
    if (!index)
        return qfalse;

    /* Overflow protection */
    if (index >= MAX_CONFIGSTRINGS)
    {
        Scr_Error(va("localized configstring index must be between 0 and %d",
                     MAX_CONFIGSTRINGS - 1));
        return qfalse;
    }

    /* Better not to free precached strings... + fast return */
    if (g_isLocStringPrecached[index] == qtrue)
        return qfalse;

    /* Check all script hud elements if index in use SLOOOOW :C */
    for (int i = 0; i < 1024; ++i)
    {
        game_hudelem_t *elem = &g_hudelems[i];
        if (elem->elem.text &&
            elem->elem.text == index)
            return qfalse;
    }

    return qtrue;
}


extern "C"
{
    void HECmd_SetText(scr_entref_t entnum)
    {
        char buffer[1024];

        if (entnum.classnum != 1)
            return Scr_ObjectError("G_HudSetText: Not a hud element");

        game_hudelem_t *element = &g_hudelems[entnum.entnum];
        int cs_index = element->elem.text;
        HudElem_ClearTypeSettings(element);
        /* Must be set to 0 before calling Scr_CanFreeLocalizedConfigString() */
        element->elem.text = 0;
        /* Attempt to avoid CS overflow using "SetText()" */
        if (Scr_CanFreeLocalizedConfigString(cs_index))
            SV_SetConfigstring(cs_index + CS_LOCALIZEDSTRINGS, "");

        Scr_ConstructMessageString(0, Scr_GetNumParam() -1, "Hud Elem String", buffer, sizeof(buffer));
        element->elem.type = HE_TYPE_TEXT;
        element->elem.text = G_LocalizedStringIndex(buffer);
    }
}
