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

global G_RunFrame
G_RunFrame:
	jmp dword [oG_RunFrame]

global G_LocalizedStringIndex
G_LocalizedStringIndex:
	jmp dword [oG_LocalizedStringIndex]

global ClientCommand
ClientCommand:
	jmp dword [oClientCommand]

global ClientConnect
ClientConnect:
	jmp dword [oClientConnect]

global ClientBegin
ClientBegin:
	jmp dword [oClientBegin]

global StopFollowing
StopFollowing:
	jmp dword [oStopFollowing]

global G_Spawn
G_Spawn:
	jmp dword [oG_Spawn]

global G_CallSpawnEntity
G_CallSpawnEntity:
	jmp dword [oG_CallSpawnEntity]

global G_SpawnHelicopter
G_SpawnHelicopter:
	jmp dword [oG_SpawnHelicopter]

global SpawnVehicle
SpawnVehicle:
	jmp dword [oSpawnVehicle]

global G_SetModel
G_SetModel:
	jmp dword [oG_SetModel]


SECTION .rodata

oG_RunFrame dd 0x80b61fc
oG_LocalizedStringIndex dd 0x80cb218
oClientCommand dd 0x80b070c
oClientConnect dd 0x80a83d4
oClientBegin dd 0x80a7700
oStopFollowing dd 0x80af24c
oG_Spawn dd 0x80cbbe8
oG_CallSpawnEntity dd 0x80c8af8
oG_SpawnHelicopter dd 0x80ba8d6
oSpawnVehicle dd 0x80cd966
oG_SetModel dd 0x80cae3a