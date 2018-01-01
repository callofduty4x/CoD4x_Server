#pragma once
#include "player.h"
#include "scr_vm.h"
#include "q_shared.h"

void __cdecl ClientScr_ReadOnly(gclient_t *pSelf, client_fields_t *pField);
void __cdecl ClientScr_GetName(gclient_t *pSelf);
void __cdecl ClientScr_SetSessionTeam(gclient_t *pSelf, client_fields_t *pField);
void __cdecl ClientScr_GetSpectatorClient(gclient_t *pSelf);

void __cdecl ClientScr_GetSessionTeam(gclient_t *pSelf);
void __cdecl ClientScr_SetSessionState(gclient_t *pSelf, client_fields_t *pField);
void __cdecl ClientScr_GetSessionState(gclient_t *pSelf);
void __cdecl ClientScr_SetMaxHealth(gclient_t *pSelf, client_fields_t *pField);
void __cdecl ClientScr_SetScore(gclient_t *pSelf, client_fields_t *pField);
void __cdecl ClientScr_SetStatusIcon(gclient_t *pSelf, client_fields_t *pField);
void __cdecl ClientScr_GetStatusIcon(gclient_t *pSelf);
void __cdecl ClientScr_SetHeadIcon(gclient_t *pSelf, client_fields_t *pField);
void __cdecl ClientScr_GetHeadIcon(gclient_t *pSelf);
void __cdecl ClientScr_SetHeadIconTeam(gclient_t *pSelf, client_fields_t *pField);
void __cdecl ClientScr_GetHeadIconTeam(gclient_t *pSelf);
void __cdecl ClientScr_SetSpectatorClient(gclient_t *pSelf, client_fields_t *pField);
void __cdecl ClientScr_SetKillCamEntity(gclient_t *pSelf, client_fields_t *pField);
void __cdecl ClientScr_SetArchiveTime(gclient_t *pSelf, client_fields_t *pField);
void __cdecl ClientScr_GetArchiveTime(gclient_t *pSelf);
void __cdecl ClientScr_SetPSOffsetTime(gclient_t *pSelf, client_fields_t *pField);
void __cdecl ClientScr_GetPSOffsetTime(gclient_t *pSelf);

void __cdecl Scr_ReadOnlyField(gentity_t *ent, int offset);
void __cdecl Scr_SetOrigin(gentity_t *ent, int offset);
void __cdecl Scr_SetHealth(gentity_t *ent, int offset);
void __cdecl Scr_SetAngles(gentity_t *ent, int offset);
