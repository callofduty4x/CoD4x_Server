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

global Com_InitHunkMemoryLnx
Com_InitHunkMemoryLnx:
	jmp dword [oCom_InitHunkMemory]

Com_Close:
	jmp dword [oCom_Close]

global Mem_BeginAlloc
Mem_BeginAlloc:
	jmp dword [oMem_BeginAlloc]

global Mem_EndAlloc
Mem_EndAlloc:
	jmp dword [oMem_EndAlloc]



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




bin_import Com_LoadSoundAliases, 0x8198BC4

