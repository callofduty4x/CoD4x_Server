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

global FS_ShutdownServerReferencedIwds
FS_ShutdownServerReferencedIwds:
    jmp dword [oFS_ShutdownServerReferencedIwds]

global FS_ShutdownServerReferencedFFs
FS_ShutdownServerReferencedFFs:
    jmp dword [oFS_ShutdownServerReferencedFFs]

global FS_LoadedIwdPureChecksums
FS_LoadedIwdPureChecksums:
    jmp dword [oFS_LoadedIwdPureChecksums]
	
SECTION .rodata	
	
oFS_ShutdownIwdPureCheckReferences dd 0x81866b6
oFS_ShutdownServerIwdNames dd 0x8186cfe
oFS_ShutdownServerReferencedIwds dd 0x818789c
oFS_ShutdownServerReferencedFFs dd 0x8187850
oFS_LoadedIwdPureChecksums dd 0x81283f2