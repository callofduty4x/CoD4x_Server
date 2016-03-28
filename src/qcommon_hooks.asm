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

global Com_InitParse
Com_InitParse:
	jmp dword [oCom_InitParse]

global Com_Restart
Com_Restart:
	jmp dword [oCom_Restart]

global Com_InitHunkMemory
Com_InitHunkMemory:
	jmp dword [oCom_InitHunkMemory]

global Hunk_InitDebugMemory
Hunk_InitDebugMemory:
	jmp dword [oHunk_InitDebugMemory]

;global Com_WriteConfig_f
;Com_WriteConfig_f:
;    jmp 0x8122e82
;global Com_WriteDefaults_f
;Com_WriteDefaults_f:
;    jmp 0x8123bae
;global Com_ErrorCleanup
;Com_ErrorCleanup:
;    jmp 0x8123c86
global Hunk_ClearTempMemory
Hunk_ClearTempMemory:
	jmp dword [oHunk_ClearTempMemory]

global Hunk_ClearTempMemoryHigh
Hunk_ClearTempMemoryHigh:
	jmp dword [oHunk_ClearTempMemoryHigh]

global Com_Close
Com_Close:
	jmp dword [oCom_Close]

global Hunk_AllocateTempMemory
Hunk_AllocateTempMemory:
	jmp dword [oHunk_AllocateTempMemory]

global Hunk_FreeTempMemory
Hunk_FreeTempMemory:
	jmp dword [oHunk_FreeTempMemory]

global Mem_BeginAlloc
Mem_BeginAlloc:
	jmp dword [oMem_BeginAlloc]

global Mem_EndAlloc
Mem_EndAlloc:
	jmp dword [oMem_EndAlloc]

global TempMalloc
TempMalloc:
	jmp dword [oTempMalloc]

global PMem_Free
PMem_Free:
	jmp dword [oPMem_Free]



SECTION .rodata

oCom_InitParse dd 0x81a7a78
oCom_Restart dd 0x8123586
oCom_InitHunkMemory dd 0x8197174
oHunk_InitDebugMemory dd 0x819752a
oHunk_ClearTempMemory dd 0x81968a8
oHunk_ClearTempMemoryHigh dd 0x81968b8
oCom_Close dd 0x8121b82
oHunk_AllocateTempMemory dd 0x8196fea
oHunk_FreeTempMemory dd 0x81969d4
oMem_BeginAlloc dd 0x81a74d0
oMem_EndAlloc dd 0x81a750a
oTempMalloc dd 0x8151dce
oPMem_Free dd 0x81a7528




	

bin_import Com_LoadBsp, 0x81205FA 
bin_import Com_UnloadBsp, 0x81205D4
bin_import Com_LoadWorld, 0x8120538
bin_import CM_LoadMap, 0x8112776 
bin_import CM_LinkWorld, 0x811FAEC
bin_import Com_LoadSoundAliases, 0x8198BC4

bin_import SL_GetStringOfSize, 0x815043C
bin_import FindStringOfSize, 0x8150A74