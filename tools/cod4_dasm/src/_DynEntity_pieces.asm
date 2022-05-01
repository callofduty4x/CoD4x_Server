;Imports of DynEntity_pieces:
	extern _Z16Com_PrintWarningiPKcz
	extern _Z15XModelGetBoundsPK6XModelPfS2_
	extern _Z10AxisToQuatPA3_KfPf
	extern _Z24Sys_EnterCriticalSection15CriticalSection
	extern _Z14Phys_ObjCreate9PhysWorldPKfS1_S1_PK10PhysPreset
	extern _Z24Sys_LeaveCriticalSection15CriticalSection
	extern _Z7ms_randv
	extern _Z20Phys_ObjBulletImpact9PhysWorldiPKfS1_ff
	extern _Z18Phys_ObjAddGeomBox9PhysWorldiPKfS1_
	extern _Z26Phys_ObjSetAngularVelocityiPKf
	extern _Z28Phys_ObjGetInterpolatedState9PhysWorldiPfS0_
	extern _Z23R_FilterXModelIntoScenePK6XModelPK18GfxScaledPlacementtPt
	extern _Z17Dvar_RegisterVec3PKcffffftS0_
	extern _Z18Dvar_RegisterFloatPKcffftS0_

;Exports of DynEntity_pieces:
	global g_breakablePieces
	global numPieces
	global dynEntPieces_impactForce
	global dynEntPieces_angularVelocity
	global dynEntPieces_velocity
	global _Z24DynEntPieces_SpawnPiecesiPK12XModelPiecesPKfPA3_S2_S3_S3_
	global _Z25DynEntPieces_AddDrawSurfsi
	global _Z26DynEntPieces_RegisterDvarsv


SECTION .text


;DynEntPieces_SpawnPieces(int, XModelPieces const*, float const*, float const (*) [3], float const*, float const*)
_Z24DynEntPieces_SpawnPiecesiPK12XModelPiecesPKfPA3_S2_S3_S3_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xac
	mov eax, [ebp+0xc]
	mov ecx, [eax+0x4]
	test ecx, ecx
	jg _Z24DynEntPieces_SpawnPiecesiPK12XModelPiecesPKfPA3_S2_S3_S3__10
_Z24DynEntPieces_SpawnPiecesiPK12XModelPiecesPKfPA3_S2_S3_S3__40:
	add esp, 0xac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z24DynEntPieces_SpawnPiecesiPK12XModelPiecesPKfPA3_S2_S3_S3__10:
	xor esi, esi
	mov edx, [ebp+0x14]
	add edx, 0xc
	mov [ebp-0x88], edx
	mov ecx, [ebp+0x14]
	add ecx, 0x18
	mov [ebp-0x84], ecx
	mov edx, [ebp+0xc]
	jmp _Z24DynEntPieces_SpawnPiecesiPK12XModelPiecesPKfPA3_S2_S3_S3__20
_Z24DynEntPieces_SpawnPiecesiPK12XModelPiecesPKfPA3_S2_S3_S3__80:
	jp _Z24DynEntPieces_SpawnPiecesiPK12XModelPiecesPKfPA3_S2_S3_S3__30
_Z24DynEntPieces_SpawnPiecesiPK12XModelPiecesPKfPA3_S2_S3_S3__60:
	mov eax, [edi]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_failed_to_spawn_
	mov dword [esp], 0x1
	call _Z16Com_PrintWarningiPKcz
_Z24DynEntPieces_SpawnPiecesiPK12XModelPiecesPKfPA3_S2_S3_S3__110:
	add esi, 0x1
	mov eax, [ebp+0xc]
	cmp esi, [eax+0x4]
	jge _Z24DynEntPieces_SpawnPiecesiPK12XModelPiecesPKfPA3_S2_S3_S3__40
	mov edx, eax
_Z24DynEntPieces_SpawnPiecesiPK12XModelPiecesPKfPA3_S2_S3_S3__20:
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
	call _Z15XModelGetBoundsPK6XModelPfS2_
	movss xmm0, dword [ebp-0x48]
	ucomiss xmm0, [ebp-0x30]
	jp _Z24DynEntPieces_SpawnPiecesiPK12XModelPiecesPKfPA3_S2_S3_S3__50
	jz _Z24DynEntPieces_SpawnPiecesiPK12XModelPiecesPKfPA3_S2_S3_S3__60
_Z24DynEntPieces_SpawnPiecesiPK12XModelPiecesPKfPA3_S2_S3_S3__50:
	movss xmm0, dword [ebp-0x44]
	ucomiss xmm0, [ebp-0x2c]
	jp _Z24DynEntPieces_SpawnPiecesiPK12XModelPiecesPKfPA3_S2_S3_S3__70
	jz _Z24DynEntPieces_SpawnPiecesiPK12XModelPiecesPKfPA3_S2_S3_S3__60
_Z24DynEntPieces_SpawnPiecesiPK12XModelPiecesPKfPA3_S2_S3_S3__70:
	movss xmm0, dword [ebp-0x40]
	ucomiss xmm0, [ebp-0x28]
	jz _Z24DynEntPieces_SpawnPiecesiPK12XModelPiecesPKfPA3_S2_S3_S3__80
_Z24DynEntPieces_SpawnPiecesiPK12XModelPiecesPKfPA3_S2_S3_S3__30:
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
	call _Z10AxisToQuatPA3_KfPf
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
	call _Z24Sys_EnterCriticalSection15CriticalSection
	mov ebx, [edi]
	mov eax, [edi+0xd4]
	cmp dword [numPieces], 0x63
	jg _Z24DynEntPieces_SpawnPiecesiPK12XModelPiecesPKfPA3_S2_S3_S3__90
	test eax, eax
	jz _Z24DynEntPieces_SpawnPiecesiPK12XModelPiecesPKfPA3_S2_S3_S3__90
	mov [esp+0x10], eax
	lea eax, [ebp-0x3c]
	mov [esp+0xc], eax
	lea edx, [ebp-0x70]
	mov [esp+0x8], edx
	lea eax, [ebp-0x60]
	mov [esp+0x4], eax
	mov dword [esp], 0x1
	call _Z14Phys_ObjCreate9PhysWorldPKfS1_S1_PK10PhysPreset
	mov [ebp-0x8c], eax
	test eax, eax
	jnz _Z24DynEntPieces_SpawnPiecesiPK12XModelPiecesPKfPA3_S2_S3_S3__100
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_failed_to_create
	mov dword [esp], 0x1
	call _Z16Com_PrintWarningiPKcz
_Z24DynEntPieces_SpawnPiecesiPK12XModelPiecesPKfPA3_S2_S3_S3__120:
	mov dword [esp], 0xb
	call _Z24Sys_LeaveCriticalSection15CriticalSection
	mov edx, [ebp-0x8c]
	test edx, edx
	jz _Z24DynEntPieces_SpawnPiecesiPK12XModelPiecesPKfPA3_S2_S3_S3__110
	mov eax, [edi+0xd4]
	movss xmm0, dword [eax+0x20]
	movss [ebp-0x7c], xmm0
	call _Z7ms_randv
	mov ebx, eax
	call _Z7ms_randv
	mov [ebp-0x80], eax
	call _Z7ms_randv
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
	call _Z20Phys_ObjBulletImpact9PhysWorldiPKfS1_ff
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
	jmp _Z24DynEntPieces_SpawnPiecesiPK12XModelPiecesPKfPA3_S2_S3_S3__110
_Z24DynEntPieces_SpawnPiecesiPK12XModelPiecesPKfPA3_S2_S3_S3__90:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_failed_to_spawn_1
	mov dword [esp], 0x1
	call _Z16Com_PrintWarningiPKcz
	mov dword [ebp-0x8c], 0x0
	jmp _Z24DynEntPieces_SpawnPiecesiPK12XModelPiecesPKfPA3_S2_S3_S3__120
_Z24DynEntPieces_SpawnPiecesiPK12XModelPiecesPKfPA3_S2_S3_S3__100:
	mov edx, eax
	lea ecx, [ebp-0x30]
	mov [esp+0xc], ecx
	lea eax, [ebp-0x48]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call _Z18Phys_ObjAddGeomBox9PhysWorldiPKfS1_
	lea eax, [ebp-0x24]
	mov [esp+0x4], eax
	mov ecx, [ebp-0x8c]
	mov [esp], ecx
	call _Z26Phys_ObjSetAngularVelocityiPKf
	jmp _Z24DynEntPieces_SpawnPiecesiPK12XModelPiecesPKfPA3_S2_S3_S3__120
	add [eax], al


;DynEntPieces_AddDrawSurfs(int)
_Z25DynEntPieces_AddDrawSurfsi:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov eax, [numPieces]
	test eax, eax
	jle _Z25DynEntPieces_AddDrawSurfsi_10
	xor esi, esi
	mov ebx, g_breakablePieces+0xa
	mov edi, g_breakablePieces+0x8
	jmp _Z25DynEntPieces_AddDrawSurfsi_20
_Z25DynEntPieces_AddDrawSurfsi_30:
	add esi, 0x1
	add edi, 0xc
	add ebx, 0xc
	cmp esi, [numPieces]
	jge _Z25DynEntPieces_AddDrawSurfsi_10
_Z25DynEntPieces_AddDrawSurfsi_20:
	cmp byte [ebx], 0x0
	jz _Z25DynEntPieces_AddDrawSurfsi_30
	mov dword [esp], 0xb
	call _Z24Sys_EnterCriticalSection15CriticalSection
	lea eax, [ebp-0x38]
	mov [esp+0xc], eax
	lea eax, [ebp-0x28]
	mov [esp+0x8], eax
	mov eax, [ebx-0x6]
	mov [esp+0x4], eax
	mov dword [esp], 0x1
	call _Z28Phys_ObjGetInterpolatedState9PhysWorldiPfS0_
	mov dword [ebp-0x1c], 0x3f800000
	mov dword [esp], 0xb
	call _Z24Sys_LeaveCriticalSection15CriticalSection
	mov [esp+0xc], edi
	mov dword [esp+0x8], 0x0
	lea eax, [ebp-0x38]
	mov [esp+0x4], eax
	mov eax, [ebx-0xa]
	mov [esp], eax
	call _Z23R_FilterXModelIntoScenePK6XModelPK18GfxScaledPlacementtPt
	add esi, 0x1
	add edi, 0xc
	add ebx, 0xc
	cmp esi, [numPieces]
	jl _Z25DynEntPieces_AddDrawSurfsi_20
_Z25DynEntPieces_AddDrawSurfsi_10:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;DynEntPieces_RegisterDvars()
_Z26DynEntPieces_RegisterDvarsv:
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
	call _Z17Dvar_RegisterVec3PKcffffftS0_
	mov [dynEntPieces_velocity], eax
	mov dword [esp+0x1c], _cstring_initial_breakabl1
	mov dword [esp+0x18], 0x80
	mov dword [esp+0x14], 0x43340000
	mov dword [esp+0x10], 0xc3340000
	mov [esp+0xc], ebx
	mov [esp+0x8], ebx
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_dynentpieces_ang
	call _Z17Dvar_RegisterVec3PKcffffftS0_
	mov [dynEntPieces_angularVelocity], eax
	mov dword [esp+0x14], _cstring_force_applied_wh
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x49742400
	mov [esp+0x8], ebx
	mov [esp+0x4], esi
	mov dword [esp], _cstring_dynentpieces_imp
	call _Z18Dvar_RegisterFloatPKcffftS0_
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

