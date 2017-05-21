#pragma once
#include "player.h"
#include "scr_vm.h"
#include "q_shared.h"

void __cdecl ClientScr_ReadOnly(gclient_t *pSelf, client_fields_t *pField);
void __cdecl ClientScr_GetName(gclient_t *pSelf);
void __cdecl ClientScr_SetSessionTeam(gclient_t *pSelf, client_fields_t *pField);
#define ClientScr_GetSessionTeam ((void (__cdecl *)(gclient_t *pSelf))0x0808B3DA)
#define ClientScr_SetSessionState ((void (__cdecl *)(gclient_t *pSelf, client_fields_t *pField))0x0808B508)
#define ClientScr_GetSessionState ((void (__cdecl *)(gclient_t *pSelf))0x0808B376)
#define ClientScr_SetMaxHealth ((void (__cdecl *)(gclient_t *pSelf, client_fields_t *pField))0x0808B1C8)
#define ClientScr_SetScore ((void (__cdecl *)(gclient_t *pSelf, client_fields_t *pField))0x0808B73E)
#define ClientScr_SetStatusIcon ((void (__cdecl *)(gclient_t *pSelf, client_fields_t *pField))0x0808B718)
#define ClientScr_GetStatusIcon ((void (__cdecl *)(gclient_t *pSelf))0x0808B672)
#define ClientScr_SetHeadIcon ((void (__cdecl *)(gclient_t *pSelf, client_fields_t *pField))0x0808B6CE)
#define ClientScr_GetHeadIcon ((void (__cdecl *)(gclient_t *pSelf))0x0808B5E6)
#define ClientScr_SetHeadIconTeam ((void (__cdecl *)(gclient_t *pSelf, client_fields_t *pField))0x0808B43E)
#define ClientScr_GetHeadIconTeam ((void (__cdecl *)(gclient_t *pSelf))0x0808B2FA)
#define ClientScr_SetSpectatorClient ((void (__cdecl *)(gclient_t *pSelf, client_fields_t *pField))0x0808B2C2)
void __cdecl ClientScr_GetSpectatorClient(gclient_t *pSelf);
#define ClientScr_SetKillcamEntity ((void (__cdecl *)(gclient_t *pSelf, client_fields_t *pField))0x0808B288)
#define ClientScr_SetArchiveTime ((void (__cdecl *)(gclient_t *pSelf, client_fields_t *pField))0x0808B258)
#define ClientScr_GetArchiveTime ((void (__cdecl *)(gclient_t *pSelf))0x0808B23C)
#define ClientScr_SetPSOffsetTime ((void (__cdecl *)(gclient_t *pSelf, client_fields_t *pField))0x0808B1AA)
#define ClientScr_GetPSOffsetTime ((void (__cdecl *)(gclient_t *pSelf))0x0808B194)

#define Scr_ReadOnlyField ((void (__cdecl *)(gentity_t *ent, int offset))0x080C75D0)
#define Scr_SetOrigin ((void (__cdecl *)(gentity_t *ent, int offset))0x080BDE46)
#define Scr_SetHealth ((void (__cdecl *)(gentity_t *ent, int offset))0x080BB096)
#define Scr_SetAngles ((void (__cdecl *)(gentity_t *ent, int offset))0x080BFEC4)
