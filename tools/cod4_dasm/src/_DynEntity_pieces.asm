;Imports of DynEntity_pieces:
	extern Com_PrintWarning
	extern XModelGetBounds
	extern AxisToQuat
	extern Sys_EnterCriticalSection
	extern Phys_ObjCreate
	extern Sys_LeaveCriticalSection
	extern ms_rand
	extern Phys_ObjBulletImpact
	extern Phys_ObjAddGeomBox
	extern Phys_ObjSetAngularVelocity
	extern Phys_ObjGetInterpolatedState
	extern R_FilterXModelIntoScene
	extern Cvar_RegisterVec3
	extern Cvar_RegisterFloat

;Exports of DynEntity_pieces:
	global g_breakablePieces
	global numPieces
	global dynEntPieces_impactForce
	global dynEntPieces_angularVelocity
	global dynEntPieces_velocity
	global DynEntPieces_SpawnPieces
	global DynEntPieces_AddDrawSurfs
	global DynEntPieces_RegisterDvars


SECTION .text


;DynEntPieces_SpawnPieces(int, XModelPieces const*, float const*, float const (*) [3], float const*, float const*)
DynEntPieces_SpawnPieces:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xac
	mov eax, [ebp+0xc]
	mov ecx, [eax+0x4]
	test ecx, ecx
	jg DynEntPieces_SpawnPieces_10
DynEntPieces_SpawnPieces_40:
	add esp, 0xac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
DynEntPieces_SpawnPieces_10:
	xor esi, esi
	mov edx, [ebp+0x14]
	add edx, 0xc
	mov [ebp-0x88], edx
	mov ecx, [ebp+0x14]
	add ecx, 0x18
	mov [ebp-0x84], ecx
	mov edx, [ebp+0xc]
	jmp DynEntPieces_SpawnPieces_20
DynEntPieces_SpawnPieces_80:
	jp DynEntPieces_SpawnPieces_30
DynEntPieces_SpawnPieces_60:
	mov eax, [edi]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_failed_to_spawn_
	mov dword [esp], 0x1
	call Com_PrintWarning
DynEntPieces_SpawnPieces_110:
	add esi, 0x1
	mov eax, [ebp+0xc]
	cmp esi, [eax+0x4]
	jge DynEntPieces_SpawnPieces_40
	mov edx, eax
DynEntPieces_SpawnPieces_20:
	mov eax, esi
	shl eax, 0x4
	add eax, [edx+0x8]
	mov edi, [eax]
	lea ebx, [eax+0x4]
	lea ecx, [ebp-0x30]
	mov [esp+0x8], ecx
	lea eax, [ebp-0x48]
	mov [esp+0x4], eax
	mov [esp], edi
	call XModelGetBounds
	movss xmm0, dword [ebp-0x48]
	ucomiss xmm0, [ebp-0x30]
	jp DynEntPieces_SpawnPieces_50
	jz DynEntPieces_SpawnPieces_60
DynEntPieces_SpawnPieces_50:
	movss xmm0, dword [ebp-0x44]
	ucomiss xmm0, [ebp-0x2c]
	jp DynEntPieces_SpawnPieces_70
	jz DynEntPieces_SpawnPieces_60
DynEntPieces_SpawnPieces_70:
	movss xmm0, dword [ebp-0x40]
	ucomiss xmm0, [ebp-0x28]
	jz DynEntPieces_SpawnPieces_80
DynEntPieces_SpawnPieces_30:
	movss xmm3, dword [ebx]
	mov edx, [ebp+0x14]
	mulss xmm3, [edx]
	movss xmm0, dword [ebx+0x4]
	mulss xmm0, [edx+0xc]
	addss xmm3, xmm0
	movss xmm0, dword [ebx+0x8]
	mulss xmm0, [edx+0x18]
	addss xmm3, xmm0
	movss [ebp-0x60], xmm3
	movss xmm2, dword [ebx]
	mulss xmm2, [edx+0x4]
	movss xmm0, dword [ebx+0x4]
	mov ecx, [ebp-0x88]
	mulss xmm0, [ecx+0x4]
	addss xmm2, xmm0
	movss xmm0, dword [ebx+0x8]
	mov eax, [ebp-0x84]
	mulss xmm0, [eax+0x4]
	addss xmm2, xmm0
	movss [ebp-0x5c], xmm2
	movss xmm1, dword [ebx]
	mulss xmm1, [edx+0x8]
	movss xmm0, dword [ebx+0x4]
	mulss xmm0, [ecx+0x8]
	addss xmm1, xmm0
	movss xmm0, dword [ebx+0x8]
	mulss xmm0, [eax+0x8]
	addss xmm1, xmm0
	mov edx, [ebp+0x10]
	addss xmm3, [edx]
	movss [ebp-0x60], xmm3
	addss xmm2, [edx+0x4]
	movss [ebp-0x5c], xmm2
	addss xmm1, [edx+0x8]
	movss [ebp-0x58], xmm1
	lea ecx, [ebp-0x70]
	mov [esp+0x4], ecx
	mov eax, [ebp+0x14]
	mov [esp], eax
	call AxisToQuat
	mov eax, [dynEntPieces_velocity]
	lea edx, [eax+0xc]
	mov eax, [eax+0xc]
	mov [ebp-0x3c], eax
	mov eax, [edx+0x4]
	mov [ebp-0x38], eax
	movss xmm0, dword [edx+0x8]
	movss [ebp-0x34], xmm0
	mov eax, [dynEntPieces_angularVelocity]
	lea edx, [eax+0xc]
	mov eax, [eax+0xc]
	mov [ebp-0x24], eax
	mov eax, [edx+0x4]
	mov [ebp-0x20], eax
	mov eax, [edx+0x8]
	mov [ebp-0x1c], eax
	mov eax, [edi+0xd4]
	addss xmm0, [eax+0x24]
	movss [ebp-0x34], xmm0
	mov dword [esp], 0xb
	call Sys_EnterCriticalSection
	mov ebx, [edi]
	mov eax, [edi+0xd4]
	cmp dword [numPieces], 0x63
	jg DynEntPieces_SpawnPieces_90
	test eax, eax
	jz DynEntPieces_SpawnPieces_90
	mov [esp+0x10], eax
	lea eax, [ebp-0x3c]
	mov [esp+0xc], eax
	lea edx, [ebp-0x70]
	mov [esp+0x8], edx
	lea eax, [ebp-0x60]
	mov [esp+0x4], eax
	mov dword [esp], 0x1
	call Phys_ObjCreate
	mov [ebp-0x8c], eax
	test eax, eax
	jnz DynEntPieces_SpawnPieces_100
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_failed_to_create
	mov dword [esp], 0x1
	call Com_PrintWarning
DynEntPieces_SpawnPieces_120:
	mov dword [esp], 0xb
	call Sys_LeaveCriticalSection
	mov edx, [ebp-0x8c]
	test edx, edx
	jz DynEntPieces_SpawnPieces_110
	mov eax, [edi+0xd4]
	movss xmm0, dword [eax+0x20]
	movss [ebp-0x7c], xmm0
	call ms_rand
	mov ebx, eax
	call ms_rand
	mov [ebp-0x80], eax
	call ms_rand
	mov edx, [ebp+0x1c]
	movss xmm1, dword [edx]
	cvtsi2ss xmm0, ebx
	divss xmm0, dword [_float_32767_00000000]
	addss xmm0, xmm0
	subss xmm0, [_float_1_00000000]
	subss xmm0, xmm1
	mulss xmm0, [ebp-0x7c]
	addss xmm1, xmm0
	movss [ebp-0x54], xmm1
	movss xmm1, dword [edx+0x4]
	cvtsi2ss xmm0, dword [ebp-0x80]
	divss xmm0, dword [_float_32767_00000000]
	addss xmm0, xmm0
	subss xmm0, [_float_1_00000000]
	subss xmm0, xmm1
	mulss xmm0, [ebp-0x7c]
	addss xmm1, xmm0
	movss [ebp-0x50], xmm1
	movss xmm1, dword [edx+0x8]
	cvtsi2ss xmm0, eax
	divss xmm0, dword [_float_32767_00000000]
	addss xmm0, xmm0
	subss xmm0, [_float_1_00000000]
	subss xmm0, xmm1
	mulss xmm0, [ebp-0x7c]
	addss xmm1, xmm0
	movss [ebp-0x4c], xmm1
	mov eax, [edi+0xd4]
	mov eax, [eax+0x14]
	mov [esp+0x14], eax
	mov eax, [dynEntPieces_impactForce]
	mov eax, [eax+0xc]
	mov [esp+0x10], eax
	lea eax, [ebp-0x54]
	mov [esp+0xc], eax
	mov ecx, [ebp+0x18]
	mov [esp+0x8], ecx
	mov eax, [ebp-0x8c]
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Phys_ObjBulletImpact
	mov edx, [numPieces]
	lea eax, [edx+edx*2]
	shl eax, 0x2
	mov ecx, [ebp-0x8c]
	mov [eax+g_breakablePieces+0x4], ecx
	mov [eax+g_breakablePieces], edi
	mov word [eax+g_breakablePieces+0x8], 0x0
	mov byte [eax+g_breakablePieces+0xa], 0x1
	add edx, 0x1
	mov [numPieces], edx
	jmp DynEntPieces_SpawnPieces_110
DynEntPieces_SpawnPieces_90:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_failed_to_spawn_1
	mov dword [esp], 0x1
	call Com_PrintWarning
	mov dword [ebp-0x8c], 0x0
	jmp DynEntPieces_SpawnPieces_120
DynEntPieces_SpawnPieces_100:
	mov edx, eax
	lea ecx, [ebp-0x30]
	mov [esp+0xc], ecx
	lea eax, [ebp-0x48]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Phys_ObjAddGeomBox
	lea eax, [ebp-0x24]
	mov [esp+0x4], eax
	mov ecx, [ebp-0x8c]
	mov [esp], ecx
	call Phys_ObjSetAngularVelocity
	jmp DynEntPieces_SpawnPieces_120
	add [eax], al


;DynEntPieces_AddDrawSurfs(int)
DynEntPieces_AddDrawSurfs:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov eax, [numPieces]
	test eax, eax
	jle DynEntPieces_AddDrawSurfs_10
	xor esi, esi
	mov ebx, g_breakablePieces+0xa
	mov edi, g_breakablePieces+0x8
	jmp DynEntPieces_AddDrawSurfs_20
DynEntPieces_AddDrawSurfs_30:
	add esi, 0x1
	add edi, 0xc
	add ebx, 0xc
	cmp esi, [numPieces]
	jge DynEntPieces_AddDrawSurfs_10
DynEntPieces_AddDrawSurfs_20:
	cmp byte [ebx], 0x0
	jz DynEntPieces_AddDrawSurfs_30
	mov dword [esp], 0xb
	call Sys_EnterCriticalSection
	lea eax, [ebp-0x38]
	mov [esp+0xc], eax
	lea eax, [ebp-0x28]
	mov [esp+0x8], eax
	mov eax, [ebx-0x6]
	mov [esp+0x4], eax
	mov dword [esp], 0x1
	call Phys_ObjGetInterpolatedState
	mov dword [ebp-0x1c], 0x3f800000
	mov dword [esp], 0xb
	call Sys_LeaveCriticalSection
	mov [esp+0xc], edi
	mov dword [esp+0x8], 0x0
	lea eax, [ebp-0x38]
	mov [esp+0x4], eax
	mov eax, [ebx-0xa]
	mov [esp], eax
	call R_FilterXModelIntoScene
	add esi, 0x1
	add edi, 0xc
	add ebx, 0xc
	cmp esi, [numPieces]
	jl DynEntPieces_AddDrawSurfs_20
DynEntPieces_AddDrawSurfs_10:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;DynEntPieces_RegisterDvars()
DynEntPieces_RegisterDvars:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x20
	mov dword [esp+0x1c], _cstring_initial_breakabl
	mov dword [esp+0x18], 0x80
	mov esi, 0x447a0000
	mov [esp+0x14], esi
	mov dword [esp+0x10], 0xc47a0000
	xor ebx, ebx
	mov [esp+0xc], ebx
	mov [esp+0x8], ebx
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_dynentpieces_vel
	call Cvar_RegisterVec3
	mov [dynEntPieces_velocity], eax
	mov dword [esp+0x1c], _cstring_initial_breakabl1
	mov dword [esp+0x18], 0x80
	mov dword [esp+0x14], 0x43340000
	mov dword [esp+0x10], 0xc3340000
	mov [esp+0xc], ebx
	mov [esp+0x8], ebx
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_dynentpieces_ang
	call Cvar_RegisterVec3
	mov [dynEntPieces_angularVelocity], eax
	mov dword [esp+0x14], _cstring_force_applied_wh
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x49742400
	mov [esp+0x8], ebx
	mov [esp+0x4], esi
	mov dword [esp], _cstring_dynentpieces_imp
	call Cvar_RegisterFloat
	mov [dynEntPieces_impactForce], eax
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;Initialized global or static variables of DynEntity_pieces:
SECTION .data


;Initialized constant data of DynEntity_pieces:
SECTION .rdata


;Zero initialized global or static variables of DynEntity_pieces:
SECTION .bss
g_breakablePieces: resb 0x4b0
numPieces: resb 0x4
dynEntPieces_impactForce: resb 0x4
dynEntPieces_angularVelocity: resb 0x4
dynEntPieces_velocity: resb 0x44


;All cstrings:
SECTION .rdata
_cstring_failed_to_spawn_:		db "Failed to spawn pieces model ",27h,"%s",27h,".  No bounds.",0ah,0
_cstring_failed_to_create:		db "Failed to create physics object for ",27h,"%s",27h,".",0ah,0
_cstring_failed_to_spawn_1:		db "Failed to spawn pieces model ",27h,"%s",27h,".  It is missing physics preset.",0ah,0
_cstring_initial_breakabl:		db "Initial breakable pieces velocity",0
_cstring_dynentpieces_vel:		db "dynEntPieces_velocity",0
_cstring_initial_breakabl1:		db "Initial breakable pieces angular velocity",0
_cstring_dynentpieces_ang:		db "dynEntPieces_angularVelocity",0
_cstring_force_applied_wh:		db "Force applied when breakable is destroyed",0
_cstring_dynentpieces_imp:		db "dynEntPieces_impactForce",0



;All constant floats and doubles:
SECTION .rdata
_float_32767_00000000:		dd 0x46fffe00	; 32767
_float_1_00000000:		dd 0x3f800000	; 1

