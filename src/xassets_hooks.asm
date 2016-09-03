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

global DB_SetInitializing
DB_SetInitializing:
	jmp dword [oDB_SetInitializing]

global DB_ModFileExists
DB_ModFileExists:
	jmp dword [oDB_ModFileExists]

global DB_LoadXAssets
DB_LoadXAssets:
	jmp dword [oDB_LoadXAssets]

global DB_GetXAssetTypeSize
DB_GetXAssetTypeSize:
	jmp dword [oDB_GetXAssetTypeSize]

global XAnimInit
XAnimInit:
	jmp dword [oXAnimInit]

global DB_FreeUnusedResources
DB_FreeUnusedResources:
	jmp dword [oDB_FreeUnusedResources]

global DB_LoadSounds
DB_LoadSounds:
	jmp dword [oDB_LoadSounds]

global BG_FillInAllWeaponItems
BG_FillInAllWeaponItems:
	jmp dword [oBG_FillInAllWeaponItems]


SECTION .rodata

oDB_SetInitializing dd 0x820337c
oDB_ModFileExists dd 0x8204470
oDB_LoadXAssets dd 0x8205e86
oDB_GetXAssetTypeSize dd 0x81da6ce
oXAnimInit dd 0x81b649c
oDB_FreeUnusedResources dd 0x82046f2
oDB_LoadSounds dd 0x8209c00
oBG_FillInAllWeaponItems dd 0x80622ba

bin_import DB_PostLoadXZone, 0x8205DAE
bin_import DB_UpdateDebugZone, 0x8206A62
