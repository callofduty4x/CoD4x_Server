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




SECTION .text

global SL_Init
SL_Init:
	jmp dword [oSL_Init]

global Swap_Init
Swap_Init:
	jmp dword [oSwap_Init]

global CSS_InitConstantConfigStrings
CSS_InitConstantConfigStrings:
	jmp dword [oCSS_InitConstantConfigStrings]

global Con_InitChannels
Con_InitChannels:
	jmp dword [oCon_InitChannels]

global SEH_UpdateLanguageInfo
SEH_UpdateLanguageInfo:
	jmp dword [oSEH_UpdateLanguageInfo]

global SetAnimCheck
SetAnimCheck:
	jmp dword [oSetAnimCheck]

global BG_IsWeaponValid
BG_IsWeaponValid:
	jmp dword [oBG_IsWeaponValid]

global SEH_StringEd_GetString
SEH_StringEd_GetString:
	jmp dword [oSEH_StringEd_GetString]

global SL_RemoveRefToString
SL_RemoveRefToString:
	jmp dword [oSL_RemoveRefToString]

SECTION .rodata

oSL_Init dd 0x8150928
oSwap_Init dd 0x81aa7b6
oCSS_InitConstantConfigStrings dd 0x8185a72
oCon_InitChannels dd 0x82096be
oSEH_UpdateLanguageInfo dd 0x8180432
oSetAnimCheck dd 0x81423f0
oBG_IsWeaponValid dd 0x805f4fe
oSEH_StringEd_GetString dd 0x817fbe0
oSL_RemoveRefToString dd 0x8150e24
