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

global GetMinBitCount
GetMinBitCount:
	jmp dword [oGetMinBitCount]

global MSG_WriteDeltaClient
MSG_WriteDeltaClient:
	jmp dword [oMSG_WriteDeltaClient]

global MSG_WriteDeltaField
MSG_WriteDeltaField:
	jmp dword [oMSG_WriteDeltaField]

global MSG_WriteDeltaPlayerstate
MSG_WriteDeltaPlayerstate:
	jmp dword [oMSG_WriteDeltaPlayerstate]

global MSG_WriteEntityIndex
MSG_WriteEntityIndex:
	jmp dword [oMSG_WriteEntityIndex]

global MSG_ReadDeltaUsercmdKey
MSG_ReadDeltaUsercmdKey:
	jmp dword [oMSG_ReadDeltaUsercmdKey]

global MSG_SetDefaultUserCmd
MSG_SetDefaultUserCmd:
	jmp dword [oMSG_SetDefaultUserCmd]

SECTION .rodata

oGetMinBitCount dd 0x8130500
oMSG_WriteDeltaClient dd 0x813f49c
oMSG_WriteDeltaField dd 0x813e22a
oMSG_WriteDeltaPlayerstate dd 0x813f5a6
oMSG_WriteEntityIndex dd 0x813de54
oMSG_ReadDeltaUsercmdKey dd 0x81392ae
oMSG_SetDefaultUserCmd dd 0x8130ad0
