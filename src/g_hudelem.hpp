#pragma once
#include "scr_vm.hpp"


extern qboolean g_isLocStringPrecached[];

qboolean Scr_CanFreeLocalizedConfigString(unsigned int index);

extern "C"
{
    void HECmd_SetText(scr_entref_t entref);
    void HECmd_ClearAllTextAfterHudElem(scr_entref_t entref);
    void HECmd_SetMaterial(scr_entref_t entref);
    void HECmd_SetTimer(scr_entref_t entref);
    void HECmd_SetTimerUp(scr_entref_t entref);
    void HECmd_SetTenthsTimer(scr_entref_t entref);
    void HECmd_SetTenthsTimerUp(scr_entref_t entref);
    void HECmd_SetClock(scr_entref_t entref);
    void HECmd_SetClockUp(scr_entref_t entref);
    void HECmd_SetValue(scr_entref_t entref);
    void HECmd_SetWaypoint(scr_entref_t entref);
    void HECmd_FadeOverTime(scr_entref_t entref);
    void HECmd_ScaleOverTime(scr_entref_t entref);
    void HECmd_MoveOverTime(scr_entref_t entref);
    void HECmd_Reset(scr_entref_t entref);
    void HECmd_Destroy(scr_entref_t entref);
    void HECmd_SetPulseFX(scr_entref_t entref);
    void HECmd_SetPlayerNameString(scr_entref_t entref);
    void HECmd_SetMapNameString(scr_entref_t entref);
    void HECmd_SetGameTypeString(scr_entref_t entref);
    void HECmd_ClearTargetEnt(scr_entref_t entref);
    void HECmd_SetTargetEnt(scr_entref_t entref);
}
