;===========================================================================
;    Copyright (C) 2010-2013  Ninja and TheKelm

;    This file is part of CoD4X18-Server source code.

;    CoD4X18-Server source code is free software: you can redistribute it and/or modify
;    it under the terms of the GNU Affero General Public License as
;    published by the Free Software Foundation, either version 3 of the
;    License, or (at your option) any later version.

;    CoD4X18-Server source code is distributed in the hope that it will be useful,
;    but WITHOUT ANY WARRANTY; without even the implied warranty of
;    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;    GNU Affero General Public License for more details.

;    You should have received a copy of the GNU Affero General Public License
;    along with this program.  If not, see <http://www.gnu.org/licenses/>
;===========================================================================

%macro pexport 1

	SECTION .text
		%ifdef Win32
			EXPORT Plugin_%1
		%endif
		global Plugin_%1
		Plugin_%1: jmp dword [p%1]

	SECTION .rodata
		extern %1
		p%1 dd %1

%endmacro

%macro ralias 2

	SECTION .text
		%ifdef Win32
			EXPORT %1
		%endif
		global %1
		%1: jmp dword [p%2]

	SECTION .rodata
		extern %2
		p%2 dd %2

%endmacro


ralias Plugin_RandomBytes, Com_RandomBytes

ralias Plugin_GetRealtime, Com_GetRealtime

ralias Plugin_PrintAdministrativeLog, SV_PrintAdministrativeLog
ralias Plugin_PlayerAddBanByip, SV_PlayerAddBanByip
ralias Plugin_RemoveBanByip, SV_RemoveBanByip
ralias Plugin_WriteBanTimelimit, SV_WriteBanTimelimit
ralias Plugin_FormatBanMessage, SV_FormatBanMessage

ralias Plugin_SteamIDToString, SV_SApiSteamIDToString
ralias Plugin_SteamIDTo64String, SV_SApiSteamIDTo64String
ralias Plugin_StringToSteamID, SV_SApiStringToID
ralias Plugin_SteamIDIsIndividual, SV_SApiSteamIDIndividual
ralias Plugin_SteamIDIsIndividualAndSteamAccount, SV_SApiSteamIDIndividualSteamOnly
ralias Plugin_AddCommandForClientToWhitelist, Auth_AddCommandForClientToWhitelist
ralias Plugin_CanPlayerUseCommand, Auth_CanPlayerUseCommand
ralias Plugin_SV_Cmd_GetPlayerClByHandle ,SV_GetPlayerClByHandle
ralias Plugin_SV_Cmd_GetPlayerNameByHandle, SV_GetPlayerNameByHandle
ralias Plugin_SV_Cmd_GetPlayerSteamIDByHandle, SV_GetPlayerSteamIDByHandle
ralias Plugin_SetStat, SV_SetClientStat
ralias Plugin_GetStat, SV_GetClientStat
pexport Cmd_GetInvokerClnum
pexport Cmd_GetInvokerPower
pexport Cmd_GetInvokerSteamID
pexport Cmd_GetInvokerName

pexport Cmd_Argv
pexport Cmd_Argc
pexport Cmd_Args


pexport Cvar_VariableStringBuffer
pexport Cvar_VariableValue
pexport Cvar_VariableIntegerValue
pexport Cvar_VariableBooleanValue
pexport Cvar_RegisterString
pexport Cvar_RegisterBool
pexport Cvar_RegisterInt
;pexport Cvar_RegisterEnum
pexport Cvar_RegisterFloat
pexport Cvar_SetInt
pexport Cvar_SetBool
pexport Cvar_SetString
pexport Cvar_SetFloat
pexport Cvar_Set

pexport FS_FOpenFileWrite
pexport FS_FOpenFileRead
pexport FS_FOpenFileAppend
pexport FS_SV_FOpenFileRead
pexport FS_SV_FOpenFileWrite
pexport FS_SV_FOpenFileAppend
pexport FS_Read
pexport FS_ReadFile
pexport FS_FreeFile
pexport FS_ReadLine
pexport FS_Write
pexport FS_WriteFile
pexport FS_FCloseFile
pexport FS_SV_HomeWriteFile
pexport FS_SV_BaseWriteFile
pexport FS_SV_HomeCopyFile


pexport NET_StringToAdr
pexport NET_AdrToString
pexport NET_AdrToStringShort
pexport NET_AdrToStringMT
pexport NET_AdrToStringShortMT
pexport NET_AdrMaskToStringMT
pexport NET_CompareBaseAdr
pexport NET_CompareBaseAdrMask
pexport NET_CompareAdr
ralias Plugin_Milliseconds, Sys_Milliseconds
ralias Plugin_SleepSec, Sys_SleepSec
ralias Plugin_SleepMSec, Sys_SleepMSec

pexport Scr_AddEntity
pexport Scr_AllocArray
pexport Scr_GetNumParam
pexport Scr_GetInt
pexport Scr_GetFloat
pexport Scr_GetString
pexport Scr_GetEntity
pexport Scr_GetConstString
pexport Scr_GetType
pexport Scr_GetVector
pexport Scr_GetFunc
pexport Scr_Error
pexport Scr_ParamError
pexport Scr_ObjectError
pexport Scr_AddInt
pexport Scr_AddFloat
pexport Scr_AddBool
pexport Scr_AddString
pexport Scr_AddUndefined
pexport Scr_AddVector
pexport Scr_AddArray
pexport Scr_MakeArray
pexport Scr_AddArrayKeys
pexport Scr_AddArrayStringIndexed
pexport Scr_ExecEntThread
pexport Scr_ExecThread
pexport Scr_FreeThread
ralias Plugin_GetCommonVersionString, Sys_GetCommonVersionString

pexport Scr_Notify
pexport Scr_NotifyNum
pexport Scr_NotifyLevel

pexport Scr_AllocString

pexport G_LogPrintf

pexport SV_GameClientNum
pexport unzSetPassword
pexport Cbuf_AddText

pexport SV_GetConfigstring
pexport SV_SetConfigstring

pexport SL_ConvertToString

pexport HTTP_CreateString_x_www_form_urlencoded
pexport HTTP_ParseFormDataBody
pexport HTTP_GetFormDataItem

ralias Plugin_UpdatePlayername, SV_UpdatePlayernameById
