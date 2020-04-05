#include "g_hud.h"
#include "scr_vm.h"

extern "C" void HudElem_SetLocalizedString(game_hudelem_s* hud, int offset)
{
    void *refval = (byte*)hud + hudelem_fields[offset].ofs;
    const char* s = Scr_GetIString(0);

    int oldlocid = *(int*)refval;

    /* Must be set to 0 before calling Scr_CanFreeLocalizedConfigString() */
    *(int*)refval = 0;

    /* Attempt to avoid CS overflow using "SetText()" */
    if (Scr_CanFreeLocalizedConfigString(oldlocid)){
        SV_SetConfigstring(oldlocid + CS_LOCALIZEDSTRINGS, "");
    }

    *(int*)refval = G_LocalizedStringIndex(s);
}

