/*
===========================================================================
    Copyright (C) 2010-2013  Ninja and TheKelm

    This file is part of CoD4X18-Server source code.

    CoD4X18-Server source code is free software: you can redistribute it and/or modify
    it under the terms of the GNU Affero General Public License as
    published by the Free Software Foundation, either version 3 of the
    License, or (at your option) any later version.

    CoD4X18-Server source code is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU Affero General Public License for more details.

    You should have received a copy of the GNU Affero General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>
===========================================================================
*/
#pragma once

#include "scr_vm.hpp"
#include "g_sv_shared.hpp"
#include "g_shared.hpp"
#include "dobj.hpp"

void PlayerCmd_GetUid(scr_entref_t arg);
void PlayerCmd_SetUid(scr_entref_t arg);
void PlayerCmd_GetXuid(scr_entref_t arg);
void PlayerCmd_GetSteamID(scr_entref_t arg);
void PlayerCmd_GetPlayerID(scr_entref_t arg);
void PlayerCmd_GetSteamID64(scr_entref_t arg);
void PlayerCmd_GetPlayerID64(scr_entref_t arg);
void PlayerCmd_GetPower(scr_entref_t arg);
void PlayerCmd_SetPower(scr_entref_t arg);
void PlayerCmd_SetStat(scr_entref_t arg);
void PlayerCmd_GetStat(scr_entref_t arg);
void PlayerCmd_GetUserinfo(scr_entref_t arg);
void PlayerCmd_GetPing(scr_entref_t arg);
void PlayerCmd_SetGravity(scr_entref_t arg);
void PlayerCmd_SetGroundReferenceEnt(scr_entref_t arg);
void PlayerCmd_SetJumpHeight(scr_entref_t arg);
void PlayerCmd_SetMoveSpeed(scr_entref_t arg);
void PlayerCmd_GetGeoLocation(scr_entref_t arg);
void PlayerCmd_GetCountedFPS(scr_entref_t arg);
void PlayerCmd_GetSpectatorClient(scr_entref_t arg);
void PlayerCmd_SetVelocity(scr_entref_t arg);

void PlayerCmd_ForwardButtonPressed(scr_entref_t object);
void PlayerCmd_BackButtonPressed(scr_entref_t object);
void PlayerCmd_MoveLeftButtonPressed(scr_entref_t object);
void PlayerCmd_MoveRightButtonPressed(scr_entref_t object);
void PlayerCmd_SprintButtonPressed(scr_entref_t object);
void PlayerCmd_ReloadButtonPressed(scr_entref_t object);
void PlayerCmd_LeanLeftButtonPressed(scr_entref_t object);
void PlayerCmd_LeanRightButtonPressed(scr_entref_t object);
void PlayerCmd_IsProning(scr_entref_t object);
void PlayerCmd_IsCrouching(scr_entref_t object);
void PlayerCmd_IsStanding(scr_entref_t object);
void PlayerCmd_JumpButtonPressed(scr_entref_t object);
void PlayerCmd_IsInADS(scr_entref_t object);
void PlayerCmd_HoldBreathButtonPressed(scr_entref_t object);
void PlayerCmd_AimButtonPressed(scr_entref_t object);

void GScr_StrTokByPixLen();
void GScr_StrTokByLen();
void GScr_StrPixLen();
void GScr_StrColorStrip();
void GScr_StrRepl();
void GScr_CopyString();
void GScr_GetRealTime();
void GScr_TimeToString();
void GScr_SHA256();
void GScr_CbufAddText();
void GScr_CbufAddTextEx();
void GScr_FS_FOpen();
void GScr_FS_FClose();
void GScr_FS_FCloseAll();
void GScr_FS_TestFile();
void GScr_FS_ReadLine();
void GScr_FS_WriteLine();
void GScr_FS_Remove();
void GScr_SpawnBot();
void GScr_RemoveAllBots();
void GScr_RemoveBot();
void GScr_KickClient();
void GScr_BanClient();
void GScr_Spawn();
void GScr_SpawnVehicle();
void GScr_SpawnHelicopter();
void GScr_VectorAdd();
void GScr_TypeTest();

void PlayerCmd_GetSteamGroupMembership(scr_entref_t arg);

void Scr_PrecacheString_f();
void HECmd_Destroy(scr_entref_t hud_elem_num);

void GScr_IsCvarDefined();

void Scr_IsArray_f();
void GScr_ArrayTest();

extern "C"
{
    qboolean __cdecl GScr_UpdateTagInternal2(gentity_t *ent, unsigned int tagName, cached_tag_mat_t *cachedTag, qboolean showScriptError);
    void __cdecl GScr_NewHudElem();
    void __cdecl GScr_NewClientHudElem();
}

void PrintModelBonesInfo(gentity_t *ent);


void GScr_Print3D();
void GScr_PrintDebugStar();
void GScr_SpawnHelicopter();
void GScr_GetDvar();
void GScr_GetDvarInt();
void GScr_GetDvarFloat();
void GScr_SetDvar();
void Scr_PrecacheString();
void GScr_AddTestClient();
void GScr_MakeDvarServerInfo();
void GScr_OpenFile();
void GScr_CloseFile();
void GScr_FPrintln();
void GScr_FReadLn();
void GScr_KickPlayer();
void GScr_BanPlayer();
void Scr_LogString();
void GScr_Float();
void GScr_Base64Encode();
void GScr_Base64Decode();
void GScr_IsEntity();
void GScr_IsVector();
void GScr_IsString();
void GScr_IsFloat();
void GScr_IsInt();
void GScr_Pow();
void GScr_StrCtrlStrip();
void GScr_ToUpper();

void GScr_CloneBrushModelToScriptModel(scr_entref_t brushModelEnt);
void PlayerCmd_SetStance(scr_entref_t playerEntNum);
void EntityCmd_GetHandlerType(scr_entref_t entref);
void ScrCmd_LogString(scr_entref_t entref);

