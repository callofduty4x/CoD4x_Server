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


%macro bin_import 2

	SECTION .text		
		global %1
		%1: jmp dword [o%1]
		
	SECTION .rodata	
		o%1 dd %2
%endmacro


SECTION .text

global SV_StringUsage_f
SV_StringUsage_f:
	jmp dword [oSV_StringUsage_f]

global SV_ScriptUsage_f
SV_ScriptUsage_f:
	jmp dword [oSV_ScriptUsage_f]

global SV_ArchiveSnapshot
SV_ArchiveSnapshot:
	jmp dword [oSV_ArchiveSnapshot]

global SV_UserVoice
SV_UserVoice:
	jmp dword [oSV_UserVoice]

global SV_PreGameUserVoice
SV_PreGameUserVoice:
	jmp dword [oSV_PreGameUserVoice]

global SV_BuildClientSnapshot
SV_BuildClientSnapshot:
	jmp dword [oSV_BuildClientSnapshot]


global SV_ClientThink
SV_ClientThink:
	jmp dword [oSV_ClientThink]

global SV_SpawnServerT
SV_SpawnServerT:
	jmp dword [oSV_SpawnServer]

global SV_SetGametype
SV_SetGametype:
	jmp dword [oSV_SetGametype]

global SV_InitCvars
SV_InitCvars:
	jmp dword [oSV_InitCvars]

global SV_RestartGameProgs
SV_RestartGameProgs:
	jmp dword [oSV_RestartGameProgs]

global SV_ResetSekeletonCache
SV_ResetSekeletonCache:
	jmp dword [oSV_ResetSekeletonCache]

;global SV_PreFrame
;SV_PreFrame:
;	jmp dword [oSV_PreFrame]

global SV_ShutdownGameProgs
SV_ShutdownGameProgs:
	jmp dword [oSV_ShutdownGameProgs]

global SV_FreeClients
SV_FreeClients:
	jmp dword [oSV_FreeClients]

;global SV_SetConfigstring
;SV_SetConfigstring:
;	jmp dword [oSV_SetConfigstring]

global SV_FreeClient
SV_FreeClient:
	jmp dword [oSV_FreeClient]

global SV_FreeClientScriptId
SV_FreeClientScriptId:
	jmp dword [oSV_FreeClientScriptId]

global SV_LinkEntity
SV_LinkEntity:
	jmp dword [oSV_LinkEntity]

global SV_UnlinkEntity
SV_UnlinkEntity:
	jmp dword [oSV_UnlinkEntity]

global SV_AddServerCommand_old
SV_AddServerCommand_old:
	jmp dword [oSV_AddServerCommand_old]

global SV_GameCommand
SV_GameCommand:
	jmp dword [oSV_GameCommand]

global FS_GetMapBaseName
FS_GetMapBaseName:
	jmp dword [oFS_GetMapBaseName]


SECTION .rodata

oSV_StringUsage_f dd 0x814cc7e
oSV_ScriptUsage_f dd 0x81557c4
oSV_BeginClientSnapshot dd 0x817a32e
oSV_EndClientSnapshot dd 0x817b488
oSV_ClientThink dd 0x816df7a
oSV_SpawnServer dd 0x8174a68
oSV_SetGametype dd 0x817c72c
oSV_InitCvars dd 0x819e66c
oSV_RestartGameProgs dd 0x817c68a
oSV_ResetSekeletonCache dd 0x817c602
;oSV_PreFrame dd 0x8177534
oSV_SendClientMessages dd 0x817b71e
oSV_SetServerStaticHeader dd 0x8178fd4
oSV_ShutdownGameProgs dd 0x817c818
oSV_FreeClients dd 0x81720c6
;oSV_SetConfigstring dd 0x8173fda
oSV_FreeClient dd 0x81708bc
oSV_FreeClientScriptId dd 0x8175c5e
oSV_LinkEntity dd 0x817eb20
oSV_UnlinkEntity dd 0x817d5e0
oSV_AddServerCommand_old dd 0x817664c
oSV_GameCommand dd 0x817c674
oFS_GetMapBaseName dd  0x8127e0c
oSV_BuildClientSnapshot dd 0x817a988
oSV_PreGameUserVoice dd 0x817c388
oSV_UserVoice dd 0x817c08e
oSV_ArchiveSnapshot dd 0x816b758


bin_import SV_SetExpectedHunkUsage, 0x8173BD4
bin_import SV_InitGameProgs, 0x817D2D8
bin_import CCS_GetConstConfigStringIndex, 0x81858DA
bin_import CCS_GetConfigStringNumForConstIndex, 0x8185800
bin_import SV_GetCachedSnapshotInternal, 0x817943E
