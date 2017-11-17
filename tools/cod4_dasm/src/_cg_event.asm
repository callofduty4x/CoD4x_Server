;Imports of cg_event:
	extern cgMedia
	extern CG_PlayEntitySoundAlias
	extern BG_GetEntityTypeName
	extern CG_CalcEntityLerpPositions
	extern cg_debugEvents
	extern cgArray
	extern BG_GetWeaponDef
	extern Com_Printf
	extern bg_fallDamageMinHeight
	extern bg_fallDamageMaxHeight
	extern eventnames
	extern Com_Error
	extern vec3_origin
	extern Ragdoll_ExplosionEvent
	extern DynEntCl_ExplosionEvent
	extern ByteToDir
	extern Vec3Basis_RightHanded
	extern CG_ImpactEffectForWeapon
	extern FX_PlayOrientedEffect
	extern CG_PlaySoundAlias
	extern CL_GetConfigString
	extern CG_PlaySoundAliasByName
	extern CG_PlaySoundAliasAsMasterByName
	extern CG_StopSoundsOnEnt
	extern Com_DPrintf
	extern CG_SetEquippedOffHand
	extern BG_WeaponIsClipOnly
	extern CG_OutOfAmmoChange
	extern CL_SetADS
	extern CG_MenuShowNotify
	extern CG_SwitchOffHandCmd
	extern scr_const
	extern CG_FireWeapon
	extern CG_EjectWeaponBrass
	extern DynEntCl_MeleeEvent
	extern CG_UseOffHand
	extern CG_PrepOffHand
	extern CG_MeleeBloodEvent
	extern CG_StartShakeCamera
	extern cg_entitiesArray
	extern CG_CompassAddWeaponPingInfo
	extern CG_BulletHitEvent
	extern CG_BulletHitClientEvent
	extern CG_PlayClientSoundAlias
	extern DynEntCl_JitterEvent
	extern Com_PrintError
	extern cgsArray
	extern SL_GetString
	extern Com_GetClientDObj
	extern DObjGetBoneIndex
	extern FX_PlayBoltedEffect
	extern Scr_SetString
	extern Material_RegisterHandle
	extern cg_footsteps
	extern CG_StopSoundAlias
	extern AnglesToAxis
	extern CL_GetClientName
	extern CG_DrawScoreboard_GetTeamColorIndex
	extern CL_DeathMessagePrint
	extern CL_SetStance
	extern CG_SelectWeaponIndex
	extern va
	extern CG_PriorityCenterPrint

;Exports of cg_event:
	global CG_EquipmentSound
	global CG_CheckEvents
	global CG_EntityEvent
	global CG_GetBoneIndex
	global PIXBeginNamedEvent
	global CG_PlayBoltedEffect


SECTION .text


;CG_EquipmentSound(int, int, unsigned char, EquipmentSound_t)
CG_EquipmentSound:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, eax
	mov eax, [ebp+0x8]
	test cl, cl
	jz CG_EquipmentSound_10
	cmp eax, 0x5
	jbe CG_EquipmentSound_20
CG_EquipmentSound_50:
	mov eax, cgMedia
	mov eax, [eax+0x102c]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov [esp], ebx
	call CG_PlayEntitySoundAlias
	add esp, 0x14
	pop ebx
	pop ebp
	ret
CG_EquipmentSound_10:
	cmp eax, 0x5
	jbe CG_EquipmentSound_30
CG_EquipmentSound_110:
	mov eax, cgMedia
	mov eax, [eax+0x1028]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov [esp], ebx
	call CG_PlayEntitySoundAlias
CG_EquipmentSound_40:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
CG_EquipmentSound_20:
	jmp dword [eax*4+CG_EquipmentSound_jumptab_0]
CG_EquipmentSound_30:
	jmp dword [eax*4+CG_EquipmentSound_jumptab_1]
CG_EquipmentSound_120:
	mov eax, cgMedia
	mov eax, [eax+0x1020]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov [esp], ebx
	call CG_PlayEntitySoundAlias
	jmp CG_EquipmentSound_40
CG_EquipmentSound_100:
	mov eax, cgMedia
	mov eax, [eax+0x1004]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov [esp], ebx
	call CG_PlayEntitySoundAlias
	jmp CG_EquipmentSound_40
CG_EquipmentSound_90:
	mov eax, cgMedia
	mov eax, [eax+0x100c]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov [esp], ebx
	call CG_PlayEntitySoundAlias
	jmp CG_EquipmentSound_40
CG_EquipmentSound_80:
	mov eax, cgMedia
	mov eax, [eax+0x1014]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov [esp], ebx
	call CG_PlayEntitySoundAlias
	jmp CG_EquipmentSound_40
CG_EquipmentSound_70:
	mov eax, cgMedia
	mov eax, [eax+0x101c]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov [esp], ebx
	call CG_PlayEntitySoundAlias
	jmp CG_EquipmentSound_40
CG_EquipmentSound_60:
	mov eax, cgMedia
	mov eax, [eax+0x1024]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov [esp], ebx
	call CG_PlayEntitySoundAlias
	jmp CG_EquipmentSound_40
CG_EquipmentSound_160:
	mov eax, cgMedia
	mov eax, [eax+0x1000]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov [esp], ebx
	call CG_PlayEntitySoundAlias
	jmp CG_EquipmentSound_40
CG_EquipmentSound_150:
	mov eax, cgMedia
	mov eax, [eax+0x1008]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov [esp], ebx
	call CG_PlayEntitySoundAlias
	jmp CG_EquipmentSound_40
CG_EquipmentSound_140:
	mov eax, cgMedia
	mov eax, [eax+0x1010]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov [esp], ebx
	call CG_PlayEntitySoundAlias
	jmp CG_EquipmentSound_40
CG_EquipmentSound_130:
	mov eax, cgMedia
	mov eax, [eax+0x1018]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov [esp], ebx
	call CG_PlayEntitySoundAlias
	jmp CG_EquipmentSound_40
	nop
	
	
CG_EquipmentSound_jumptab_0:
	dd CG_EquipmentSound_50
	dd CG_EquipmentSound_60
	dd CG_EquipmentSound_70
	dd CG_EquipmentSound_80
	dd CG_EquipmentSound_90
	dd CG_EquipmentSound_100
CG_EquipmentSound_jumptab_1:
	dd CG_EquipmentSound_110
	dd CG_EquipmentSound_120
	dd CG_EquipmentSound_130
	dd CG_EquipmentSound_140
	dd CG_EquipmentSound_150
	dd CG_EquipmentSound_160


;CG_CheckEvents(int, centity_s*)
CG_CheckEvents:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov esi, [ebp+0xc]
	cmp dword [esi+0xd0], 0x11
	jle CG_CheckEvents_10
	mov eax, [esi+0x1c4]
	test eax, eax
	jz CG_CheckEvents_20
CG_CheckEvents_90:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_CheckEvents_10:
	mov ebx, [esi+0x16c]
	test ebx, ebx
	jz CG_CheckEvents_30
	mov eax, [esi+0x1c4]
	lea edx, [ebx+0x40]
	lea ecx, [eax-0x100]
	cmp eax, edx
	cmovg eax, ecx
	mov [esi+0x1c4], eax
	mov edx, ebx
	sub edx, eax
	cmp edx, 0x4
	jg CG_CheckEvents_40
	cmp [esi+0x1c4], ebx
	jl CG_CheckEvents_50
CG_CheckEvents_60:
	mov [esi+0x1c4], ebx
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_CheckEvents_30:
	mov dword [esi+0x1c4], 0x0
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_CheckEvents_20:
	mov dword [esi+0x1c4], 0x1
	mov eax, [esi+0xd0]
	mov [esp], eax
	call BG_GetEntityTypeName
	mov [esp+0x4], eax
	mov dword [esp], 0xffffffff
	call PIXBeginNamedEvent
	mov [esp+0x4], esi
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_CalcEntityLerpPositions
	mov eax, [esi+0xd0]
	sub eax, 0x11
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov edx, [ebp+0x8]
	mov [esp], edx
	call CG_EntityEvent
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_CheckEvents_40:
	lea eax, [ebx-0x4]
	mov [esi+0x1c4], eax
	cmp [esi+0x1c4], ebx
	jge CG_CheckEvents_60
CG_CheckEvents_50:
	mov [esp+0x4], esi
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_CalcEntityLerpPositions
	movzx edx, byte [esi+0x168]
	mov [ebp-0x19], dl
	mov edi, [esi+0x1c4]
	cmp edi, [esi+0x16c]
	jz CG_CheckEvents_70
CG_CheckEvents_80:
	mov eax, edi
	and eax, 0x3
	mov ebx, [esi+eax*4+0x170]
	mov eax, [esi+eax*4+0x180]
	mov [esi+0x168], eax
	lea eax, [ebx+0x11]
	mov [esp], eax
	call BG_GetEntityTypeName
	mov [esp+0x4], eax
	mov dword [esp], 0xffffffff
	call PIXBeginNamedEvent
	mov [esp+0x8], ebx
	mov [esp+0x4], esi
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_EntityEvent
	add edi, 0x1
	cmp edi, [esi+0x16c]
	jnz CG_CheckEvents_80
CG_CheckEvents_70:
	movzx eax, byte [ebp-0x19]
	mov [esi+0x168], eax
	mov eax, [esi+0x16c]
	mov [esi+0x1c4], eax
	jmp CG_CheckEvents_90
	add [eax], al


;CG_EntityEvent(int, centity_s*, int)
CG_EntityEvent:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x10c
	mov edi, [ebp+0x10]
	test edi, edi
	jnz CG_EntityEvent_10
	mov eax, cg_debugEvents
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz CG_EntityEvent_20
CG_EntityEvent_80:
	add esp, 0x10c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_EntityEvent_10:
	mov eax, [ebp+0xc]
	add eax, 0x1c
	mov [ebp-0xd0], eax
	mov eax, cgArray
	mov eax, [eax+0x24]
	lea edx, [eax+0xc]
	mov [ebp-0xc0], edx
	mov ecx, [ebp+0xc]
	add ecx, 0xcc
	mov [ebp-0xd8], ecx
	mov edx, [ecx+0x9c]
	mov [ebp-0xd4], edx
	mov ecx, [ebp+0xc]
	mov edx, [ecx+0xcc]
	test byte [eax+0x20], 0x6
	jnz CG_EntityEvent_30
CG_EntityEvent_90:
	xor eax, eax
CG_EntityEvent_100:
	mov [ebp-0xc1], al
	mov ebx, cg_debugEvents
	mov eax, [ebx]
	cmp byte [eax+0xc], 0x0
	jnz CG_EntityEvent_40
CG_EntityEvent_180:
	cmp byte [ebp-0xc1], 0x0
	jz CG_EntityEvent_50
	mov eax, cgArray
	mov eax, [eax+0x46224]
	mov [ebp-0xcc], eax
	mov ecx, eax
CG_EntityEvent_150:
	mov edx, [ebp-0xd8]
	mov ebx, [edx+0x8c]
	cmp ebx, 0x40
	mov eax, 0x0
	cmovae ebx, eax
	mov [esp], ecx
	call BG_GetWeaponDef
	mov [ebp-0xc8], eax
	lea eax, [ebx+ebx*8]
	mov edx, eax
	shl edx, 0x4
	add eax, edx
	lea eax, [ebx+eax*2]
	mov edx, cgArray
	mov esi, [edx+eax*4+0xe9f60]
	shl esi, 0x17
	sar esi, 0x1f
	and esi, 0x1d
	lea eax, [edi-0x4d]
	cmp eax, 0x1c
	ja CG_EntityEvent_60
	cmp byte [ebp-0xc1], 0x0
	jz CG_EntityEvent_70
	lea edx, [esi+edi]
	mov eax, cgMedia
	mov eax, [eax+edx*4+0xde4]
	mov [esp+0x8], eax
	mov ecx, [ebp-0xd8]
	mov eax, [ecx]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_PlayEntitySoundAlias
CG_EntityEvent_170:
	mov edx, cgArray
	cmp ebx, [edx+0x46218]
	jnz CG_EntityEvent_80
	cvtsi2ss xmm0, dword [ebp-0xd4]
	pxor xmm1, xmm1
	subss xmm1, xmm0
	movss [edx+0x492bc], xmm1
	mov eax, [edx+0x46128]
	mov [edx+0x492c0], eax
	add esp, 0x10c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_EntityEvent_30:
	cmp edx, [eax+0xe8]
	jnz CG_EntityEvent_90
	mov eax, 0x1
	jmp CG_EntityEvent_100
CG_EntityEvent_20:
	mov dword [esp+0x4], _cstring_cg_entityeventze
	mov dword [esp], 0x15
	call Com_Printf
	add esp, 0x10c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_EntityEvent_60:
	lea eax, [edi-0x6a]
	cmp eax, 0x1c
	ja CG_EntityEvent_110
	cmp byte [ebp-0xc1], 0x0
	jz CG_EntityEvent_120
	lea edx, [esi+edi]
	mov eax, cgMedia
	mov eax, [eax+edx*4+0xd70]
CG_EntityEvent_190:
	mov [esp+0x8], eax
	mov edx, [ebp-0xd8]
	mov eax, [edx]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call CG_PlayEntitySoundAlias
	mov eax, cgMedia
	mov eax, [eax+0x264]
	mov [esp+0x8], eax
	mov edx, [ebp-0xd8]
	mov eax, [edx]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call CG_PlayEntitySoundAlias
	mov eax, cgArray
	cmp ebx, [eax+0x46218]
	jnz CG_EntityEvent_80
	mov eax, bg_fallDamageMinHeight
	mov eax, [eax]
	movss xmm1, dword [eax+0xc]
	cvtsi2ss xmm2, dword [ebp-0xd4]
	mulss xmm2, [_float_0_01000000]
	mov eax, bg_fallDamageMaxHeight
	mov eax, [eax]
	movss xmm0, dword [eax+0xc]
	subss xmm0, xmm1
	mulss xmm2, xmm0
	addss xmm2, xmm1
	ucomiss xmm2, [_float_12_00000000]
	jp CG_EntityEvent_130
	jbe CG_EntityEvent_80
CG_EntityEvent_130:
	subss xmm2, [_float_12_00000000]
	divss xmm2, dword [_float_26_00000000]
	movss xmm0, dword [_float_4_00000000]
	mulss xmm2, xmm0
	addss xmm2, xmm0
	cvttss2si eax, xmm2
	cmp eax, 0x18
	jle CG_EntityEvent_140
	movss xmm1, dword [_float_24_00000000]
CG_EntityEvent_1160:
	pxor xmm0, xmm0
	subss xmm0, xmm1
	mov edx, cgArray
	movss [edx+0x492bc], xmm0
	mov eax, [edx+0x46128]
	mov [edx+0x492c0], eax
	jmp CG_EntityEvent_80
CG_EntityEvent_50:
	mov eax, [ebp-0xd8]
	mov eax, [eax+0xc4]
	mov [ebp-0xcc], eax
	mov ecx, eax
	jmp CG_EntityEvent_150
CG_EntityEvent_110:
	cmp edi, 0x4c
	ja CG_EntityEvent_160
	jmp dword [edi*4+CG_EntityEvent_jumptab_0]
CG_EntityEvent_70:
	lea edx, [esi+edi]
	mov eax, cgMedia
	mov eax, [eax+edx*4+0xcfc]
	mov [esp+0x8], eax
	mov edx, [ebp-0xd8]
	mov eax, [edx]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call CG_PlayEntitySoundAlias
	jmp CG_EntityEvent_170
CG_EntityEvent_160:
	mov eax, eventnames
	mov eax, [eax+edi*4]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_unknown_event_s
	mov dword [esp], 0x2
	call Com_Error
	jmp CG_EntityEvent_80
CG_EntityEvent_40:
	mov [esp+0xc], edi
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_ent3i__event3i_
	mov dword [esp], 0x15
	call Com_Printf
	mov eax, [ebx]
	cmp byte [eax+0xc], 0x0
	jz CG_EntityEvent_180
	mov eax, eventnames
	mov eax, [eax+edi*4]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_cg_entityevents
	mov dword [esp], 0x15
	call Com_Printf
	jmp CG_EntityEvent_180
CG_EntityEvent_120:
	lea edx, [esi+edi]
	mov eax, cgMedia
	mov eax, [eax+edx*4+0xc88]
	jmp CG_EntityEvent_190
CG_EntityEvent_2110:
	mov edx, cgArray
	mov dword [edx+0x503f8], 0x1
CG_EntityEvent_2100:
	mov ecx, [ebp-0xc8]
	cvtsi2ss xmm0, dword [ecx+0x554]
	mov ebx, 0x3f800000
	mov [esp+0x18], ebx
	mov esi, vec3_origin
	mov [esp+0x14], esi
	movss [esp+0x10], xmm0
	movss [esp+0xc], xmm0
	mov eax, [ebp-0xd0]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov edx, [ebp+0x8]
	mov [esp], edx
	call Ragdoll_ExplosionEvent
	mov ecx, [ebp-0xc8]
	cvtsi2ss xmm0, dword [ecx+0x554]
	mov eax, [ecx+0x560]
	mov [esp+0x20], eax
	mov eax, [ecx+0x55c]
	mov [esp+0x1c], eax
	mov [esp+0x18], ebx
	mov [esp+0x14], esi
	movss [esp+0x10], xmm0
	movss [esp+0xc], xmm0
	mov eax, [ebp-0xd0]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov edx, [ebp+0x8]
	mov [esp], edx
	call DynEntCl_ExplosionEvent
	lea ebx, [ebp-0x50]
	mov [esp+0x4], ebx
	mov ecx, [ebp-0xd8]
	mov eax, [ecx+0x9c]
	mov [esp], eax
	call ByteToDir
	lea eax, [ebp-0x38]
	mov [esp+0x8], eax
	lea eax, [ebp-0x44]
	mov [esp+0x4], eax
	mov [esp], ebx
	call Vec3Basis_RightHanded
	lea eax, [ebp-0x20]
	mov [esp+0x10], eax
	lea eax, [ebp-0x1c]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x0
	mov edx, [ebp-0xd8]
	mov eax, [edx+0x84]
	mov [esp+0x4], eax
	mov ecx, [ebp-0xcc]
	mov [esp], ecx
	call CG_ImpactEffectForWeapon
	mov edx, [ebp-0x1c]
	test edx, edx
	jz CG_EntityEvent_200
	mov [esp+0x10], ebx
	mov eax, [ebp-0xd0]
	mov [esp+0xc], eax
	mov eax, cgArray
	mov eax, [eax+0x46128]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov edx, [ebp+0x8]
	mov [esp], edx
	call FX_PlayOrientedEffect
CG_EntityEvent_200:
	mov eax, [ebp-0x20]
	test eax, eax
	jz CG_EntityEvent_210
	mov [esp+0xc], eax
	mov ecx, [ebp-0xd0]
	mov [esp+0x8], ecx
	mov dword [esp+0x4], 0x3fe
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_PlaySoundAlias
CG_EntityEvent_210:
	mov ecx, [ebp-0xc8]
	mov edx, [ecx+0x58c]
	test edx, edx
	jz CG_EntityEvent_220
	mov [esp+0x10], ebx
	mov eax, [ebp-0xd0]
	mov [esp+0xc], eax
	mov eax, cgArray
	mov eax, [eax+0x46128]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov edx, [ebp+0x8]
	mov [esp], edx
	call FX_PlayOrientedEffect
	mov ecx, [ebp-0xc8]
CG_EntityEvent_220:
	mov eax, [ecx+0x598]
	test eax, eax
	jz CG_EntityEvent_230
	mov [esp+0xc], eax
	mov eax, [ebp-0xd0]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x3fe
	mov edx, [ebp+0x8]
	mov [esp], edx
	call CG_PlaySoundAlias
CG_EntityEvent_230:
	mov eax, cgArray
	mov dword [eax+0x503f8], 0x0
	jmp CG_EntityEvent_80
CG_EntityEvent_2140:
	mov edx, cgArray
	mov dword [edx+0x503f8], 0x1
CG_EntityEvent_2130:
	mov ecx, [ebp-0xc8]
	cvtsi2ss xmm0, dword [ecx+0x554]
	mov ebx, 0x3f800000
	mov [esp+0x18], ebx
	mov esi, vec3_origin
	mov [esp+0x14], esi
	movss [esp+0x10], xmm0
	movss [esp+0xc], xmm0
	mov eax, [ebp-0xd0]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov edx, [ebp+0x8]
	mov [esp], edx
	call Ragdoll_ExplosionEvent
	mov ecx, [ebp-0xc8]
	cvtsi2ss xmm0, dword [ecx+0x554]
	mov eax, [ecx+0x560]
	mov [esp+0x20], eax
	mov eax, [ecx+0x55c]
	mov [esp+0x1c], eax
	mov [esp+0x18], ebx
	mov [esp+0x14], esi
	movss [esp+0x10], xmm0
	movss [esp+0xc], xmm0
	mov eax, [ebp-0xd0]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov edx, [ebp+0x8]
	mov [esp], edx
	call DynEntCl_ExplosionEvent
	lea ebx, [ebp-0x50]
	mov [esp+0x4], ebx
	mov ecx, [ebp-0xd8]
	mov eax, [ecx+0x9c]
	mov [esp], eax
	call ByteToDir
	lea eax, [ebp-0x38]
	mov [esp+0x8], eax
	lea eax, [ebp-0x44]
	mov [esp+0x4], eax
	mov [esp], ebx
	call Vec3Basis_RightHanded
	lea eax, [ebp-0x20]
	mov [esp+0x10], eax
	lea eax, [ebp-0x1c]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x0
	mov edx, [ebp-0xd8]
	mov eax, [edx+0x84]
	mov [esp+0x4], eax
	mov ecx, [ebp-0xcc]
	mov [esp], ecx
	call CG_ImpactEffectForWeapon
	mov edx, [ebp-0x1c]
	test edx, edx
	jz CG_EntityEvent_240
	mov [esp+0x10], ebx
	mov eax, [ebp-0xd0]
	mov [esp+0xc], eax
	mov eax, cgArray
	mov eax, [eax+0x46128]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov edx, [ebp+0x8]
	mov [esp], edx
	call FX_PlayOrientedEffect
CG_EntityEvent_240:
	mov eax, [ebp-0x20]
	test eax, eax
	jz CG_EntityEvent_250
	mov [esp+0xc], eax
	mov ecx, [ebp-0xd0]
	mov [esp+0x8], ecx
	mov dword [esp+0x4], 0x3fe
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_PlaySoundAlias
CG_EntityEvent_250:
	mov edx, [ebp-0xc8]
	mov ecx, [edx+0x58c]
	test ecx, ecx
	jz CG_EntityEvent_260
	mov ecx, [ebp-0xd8]
	cvtss2sd xmm0, [ecx+0x20]
	movsd [esp+0x1c], xmm0
	cvtss2sd xmm0, [ecx+0x1c]
	movsd [esp+0x14], xmm0
	cvtss2sd xmm0, [ecx+0x18]
	movsd [esp+0xc], xmm0
	mov eax, [ecx+0x54]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_playing_smoke_gr
	mov dword [esp], 0xe
	call Com_Printf
	mov [esp+0x10], ebx
	mov eax, [ebp-0xd8]
	add eax, 0x18
	mov [esp+0xc], eax
	mov edx, [ebp-0xd8]
	mov eax, [edx+0x54]
	mov [esp+0x8], eax
	mov ecx, [ebp-0xc8]
	mov eax, [ecx+0x58c]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call FX_PlayOrientedEffect
	mov ecx, [ebp-0xc8]
CG_EntityEvent_1170:
	mov edx, [ecx+0x598]
	test edx, edx
	jz CG_EntityEvent_270
	mov eax, [ebp-0xd8]
	test byte [eax+0xa], 0x1
	jz CG_EntityEvent_280
	mov ecx, cgArray
	mov eax, [ecx+0x46128]
	mov ecx, [ebp-0xd8]
	sub eax, [ecx+0x54]
	cmp eax, 0xc7
	jg CG_EntityEvent_270
CG_EntityEvent_280:
	mov [esp+0xc], edx
	mov eax, [ebp-0xd0]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x3fe
	mov edx, [ebp+0x8]
	mov [esp], edx
	call CG_PlaySoundAlias
CG_EntityEvent_270:
	mov ecx, cgArray
	mov dword [ecx+0x503f8], 0x0
	jmp CG_EntityEvent_80
CG_EntityEvent_2120:
	lea ebx, [ebp-0x50]
	mov [esp+0x4], ebx
	mov ecx, [ebp-0xd8]
	mov eax, [ecx+0x9c]
	mov [esp], eax
	call ByteToDir
	lea eax, [ebp-0x38]
	mov [esp+0x8], eax
	lea eax, [ebp-0x44]
	mov [esp+0x4], eax
	mov [esp], ebx
	call Vec3Basis_RightHanded
	mov eax, [ebp-0xc8]
	mov edx, [eax+0x58c]
	test edx, edx
	jz CG_EntityEvent_290
	mov [esp+0x10], ebx
	mov ecx, [ebp-0xd0]
	mov [esp+0xc], ecx
	mov eax, cgArray
	mov eax, [eax+0x46128]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call FX_PlayOrientedEffect
CG_EntityEvent_290:
	mov edx, [ebp-0xc8]
	mov eax, [edx+0x598]
	test eax, eax
	jz CG_EntityEvent_80
	mov [esp+0xc], eax
	mov ecx, [ebp-0xd0]
	mov [esp+0x8], ecx
	mov dword [esp+0x4], 0x3fe
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_PlaySoundAlias
	jmp CG_EntityEvent_80
CG_EntityEvent_2150:
	mov eax, cgArray
	mov dword [eax+0x503f8], 0x1
	lea ebx, [ebp-0x50]
	mov [esp+0x4], ebx
	mov edx, [ebp-0xd8]
	mov eax, [edx+0x9c]
	mov [esp], eax
	call ByteToDir
	lea eax, [ebp-0x38]
	mov [esp+0x8], eax
	lea eax, [ebp-0x44]
	mov [esp+0x4], eax
	mov [esp], ebx
	call Vec3Basis_RightHanded
	mov eax, cgMedia
	mov eax, [eax+0x2754]
	mov eax, [eax+0x4]
	mov edx, [eax+0x5ac]
	test edx, edx
	jz CG_EntityEvent_300
	mov [esp+0x10], ebx
	mov ecx, [ebp-0xd0]
	mov [esp+0xc], ecx
	mov ecx, cgArray
	mov eax, [ecx+0x46128]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call FX_PlayOrientedEffect
CG_EntityEvent_300:
	mov edx, cgArray
	mov dword [edx+0x503f8], 0x0
	jmp CG_EntityEvent_80
CG_EntityEvent_1720:
	mov eax, [ebp-0xd8]
	mov ebx, [eax]
	movzx ecx, byte [ebp-0xc1]
	mov eax, [ebp-0xd4]
	sub eax, 0x7
	cmp eax, 0x4
	ja CG_EntityEvent_80
	jmp dword [eax*4+CG_EntityEvent_jumptab_1]
CG_EntityEvent_1730:
	mov ecx, [ebp-0xd8]
	mov eax, [ecx+0x9c]
	test eax, eax
	jz CG_EntityEvent_80
	add eax, 0x53e
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CL_GetConfigString
	mov [esp+0xc], eax
	mov eax, [ebp-0xd8]
	add eax, 0x18
	mov [esp+0x8], eax
	mov edx, [ebp-0xd8]
	mov eax, [edx]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call CG_PlaySoundAliasByName
	jmp CG_EntityEvent_80
CG_EntityEvent_1740:
	mov edx, [ebp-0xd8]
	mov eax, [edx+0x9c]
	test eax, eax
	jz CG_EntityEvent_80
	add eax, 0x53e
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call CL_GetConfigString
	mov [esp+0xc], eax
	mov eax, [ebp-0xd8]
	add eax, 0x18
	mov [esp+0x8], eax
	mov edx, [ebp-0xd8]
	mov eax, [edx]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call CG_PlaySoundAliasAsMasterByName
	jmp CG_EntityEvent_80
CG_EntityEvent_1750:
	mov edx, [ebp-0xd8]
	mov eax, [edx]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call CG_StopSoundsOnEnt
	jmp CG_EntityEvent_80
CG_EntityEvent_1760:
	mov eax, cgArray
	cmp ebx, [eax+0x46218]
	jz CG_EntityEvent_310
	mov [esp+0xc], ebx
	mov eax, eventnames
	mov eax, [eax+0x18]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_event_s_just_for
	mov dword [esp], 0x15
	call Com_DPrintf
	jmp CG_EntityEvent_80
CG_EntityEvent_1770:
	mov ecx, cgArray
	cmp ebx, [ecx+0x46218]
	jz CG_EntityEvent_320
	mov [esp+0xc], ebx
	mov eax, eventnames
	mov eax, [eax+0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_event_s_just_for
	mov dword [esp], 0x15
	call Com_DPrintf
	jmp CG_EntityEvent_80
CG_EntityEvent_1780:
	mov edx, cgArray
	cmp ebx, [edx+0x46218]
	jz CG_EntityEvent_330
	mov [esp+0xc], ebx
	mov eax, eventnames
	mov eax, [eax+0x20]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_event_s_just_for
	mov dword [esp], 0x15
	call Com_DPrintf
	jmp CG_EntityEvent_80
CG_EntityEvent_1790:
	mov eax, [ebp-0xd8]
	mov ebx, [eax+0x9c]
	lea eax, [ebx-0x1]
	cmp eax, 0x7e
	ja CG_EntityEvent_80
	mov [esp], ebx
	call BG_GetWeaponDef
	cmp edi, 0x9
	jz CG_EntityEvent_340
	cmp edi, 0xa
	jz CG_EntityEvent_350
CG_EntityEvent_1580:
	cmp byte [ebp-0xc1], 0x0
	jz CG_EntityEvent_80
	mov [esp], ebx
	call BG_GetWeaponDef
	cmp dword [eax+0x130], 0x9
	jz CG_EntityEvent_80
	mov eax, [eax+0x144]
	test eax, eax
	jz CG_EntityEvent_360
	mov eax, cgArray
	mov eax, [eax+0x5037c]
	test eax, eax
	jnz CG_EntityEvent_80
	mov [esp+0x4], ebx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_SetEquippedOffHand
	jmp CG_EntityEvent_80
CG_EntityEvent_1800:
	mov edx, [ebp-0xcc]
	mov [esp], edx
	call BG_WeaponIsClipOnly
	test eax, eax
	jnz CG_EntityEvent_370
	mov ecx, [ebp-0xc8]
	mov eax, [ecx+0x508]
	test eax, eax
	jnz CG_EntityEvent_370
	cmp byte [ebp-0xc1], 0x0
	jz CG_EntityEvent_380
	mov eax, [ecx+0x194]
CG_EntityEvent_1540:
	mov [esp+0x8], eax
	mov ecx, [ebp-0xd8]
	mov eax, [ecx]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_PlayEntitySoundAlias
CG_EntityEvent_370:
	cmp byte [ebp-0xc1], 0x0
	jz CG_EntityEvent_80
	mov edx, [ebp+0x8]
	mov [esp], edx
	call CG_OutOfAmmoChange
	jmp CG_EntityEvent_80
CG_EntityEvent_1820:
	mov eax, cgArray
	cmp ebx, [eax+0x46218]
	jnz CG_EntityEvent_390
	cmp byte [ebp-0xc1], 0x0
	jz CG_EntityEvent_80
	mov dword [esp+0x4], 0x0
	mov edx, [ebp+0x8]
	mov [esp], edx
	call CL_SetADS
	jmp CG_EntityEvent_80
CG_EntityEvent_1830:
	cmp byte [ebp-0xc1], 0x0
	jz CG_EntityEvent_400
	mov ecx, [ebp-0xc8]
	mov eax, [ecx+0x1b4]
CG_EntityEvent_1190:
	mov [esp+0x8], eax
	mov ecx, [ebp-0xd8]
	mov eax, [ecx]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_PlayEntitySoundAlias
	jmp CG_EntityEvent_80
CG_EntityEvent_1810:
	mov ecx, cgArray
	cmp ebx, [ecx+0x46218]
	jnz CG_EntityEvent_410
	cmp byte [ebp-0xc1], 0x0
	jz CG_EntityEvent_80
	mov dword [esp+0x4], 0x4
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_MenuShowNotify
	mov edx, [ebp+0x8]
	mov [esp], edx
	call CG_SwitchOffHandCmd
	jmp CG_EntityEvent_80
CG_EntityEvent_1710:
	mov eax, cgMedia
	mov eax, [eax+0x1030]
	mov [esp+0x8], eax
	mov edx, [ebp-0xd8]
	mov eax, [edx]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call CG_PlayEntitySoundAlias
	jmp CG_EntityEvent_80
CG_EntityEvent_1920:
	mov eax, cgArray
	add eax, 0x4613c
	mov [esp+0x14], eax
	mov dword [esp+0x10], 0x0
	mov eax, scr_const
	movzx eax, word [eax+0x90]
	mov [esp+0xc], eax
	mov [esp+0x8], edi
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call CG_FireWeapon
	jmp CG_EntityEvent_80
CG_EntityEvent_1930:
	cmp byte [ebp-0xc1], 0x0
	jz CG_EntityEvent_420
	mov edx, [ebp-0xc8]
	mov eax, [edx+0x1ac]
CG_EntityEvent_1180:
	mov [esp+0x8], eax
	mov edx, [ebp-0xd8]
	mov eax, [edx]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call CG_PlayEntitySoundAlias
	jmp CG_EntityEvent_80
CG_EntityEvent_1940:
	mov dword [esp+0x8], 0x1d
	mov eax, [ebp-0xd8]
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov [esp], edx
	call CG_EjectWeaponBrass
	jmp CG_EntityEvent_80
CG_EntityEvent_1950:
	cmp byte [ebp-0xc1], 0x0
	jz CG_EntityEvent_430
	mov ecx, [ebp-0xc8]
	mov eax, [ecx+0x19c]
CG_EntityEvent_1260:
	mov [esp+0x8], eax
	mov ecx, [ebp-0xd8]
	mov eax, [ecx]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_PlayEntitySoundAlias
	jmp CG_EntityEvent_80
CG_EntityEvent_1960:
	mov edx, [ebp-0xd8]
	mov eax, [edx]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call DynEntCl_MeleeEvent
	jmp CG_EntityEvent_80
CG_EntityEvent_1980:
	mov eax, cgArray
	cmp ebx, [eax+0x46218]
	jnz CG_EntityEvent_440
	cmp byte [ebp-0xc1], 0x0
	jz CG_EntityEvent_80
	mov edx, [ebp-0xd8]
	mov eax, [edx+0x9c]
	mov [esp+0x8], eax
	mov ecx, [ebp+0xc]
	mov [esp+0x4], ecx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_UseOffHand
	jmp CG_EntityEvent_80
CG_EntityEvent_1990:
	mov edx, cgArray
	cmp ebx, [edx+0x46218]
	jnz CG_EntityEvent_450
	cmp byte [ebp-0xc1], 0x0
	jz CG_EntityEvent_80
	mov ecx, [ebp-0xd8]
	mov eax, [ecx+0x9c]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_SetEquippedOffHand
	jmp CG_EntityEvent_80
CG_EntityEvent_1970:
	mov eax, cgArray
	cmp ebx, [eax+0x46218]
	jnz CG_EntityEvent_460
	cmp byte [ebp-0xc1], 0x0
	jz CG_EntityEvent_80
	mov edx, [ebp-0xd8]
	mov eax, [edx+0x9c]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call CG_PrepOffHand
	jmp CG_EntityEvent_80
CG_EntityEvent_2000:
	mov edx, [ebp-0xd8]
	mov edi, [edx+0x9c]
	test edi, edi
	jnz CG_EntityEvent_470
	mov edx, [ebp-0xc8]
	mov eax, [edx+0x1a0]
	test eax, eax
	jz CG_EntityEvent_480
	mov [esp+0x8], eax
	mov ecx, [ebp-0xd8]
	mov eax, [ecx+0x74]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_PlayEntitySoundAlias
	jmp CG_EntityEvent_80
CG_EntityEvent_2040:
	mov edx, cgArray
	mov eax, [edx+0x24]
	add eax, 0xc
	mov [esp+0x14], eax
	mov dword [esp+0x10], 0x0
	mov ebx, scr_const
	movzx eax, word [ebx+0x90]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x27
	mov ecx, [ebp+0xc]
	mov [esp+0x4], ecx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_FireWeapon
	mov edx, cgArray
	mov eax, [edx+0x24]
	add eax, 0xc
	mov [esp+0x14], eax
	mov dword [esp+0x10], 0x0
	movzx eax, word [ebx+0x92]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x27
	mov ecx, [ebp+0xc]
	mov [esp+0x4], ecx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_FireWeapon
	jmp CG_EntityEvent_80
CG_EntityEvent_2050:
	mov edx, cgArray
	mov eax, [edx+0x24]
	add eax, 0xc
	mov [esp+0x14], eax
	mov dword [esp+0x10], 0x0
	mov ebx, scr_const
	movzx eax, word [ebx+0x94]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x28
	mov ecx, [ebp+0xc]
	mov [esp+0x4], ecx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_FireWeapon
	mov edx, cgArray
	mov eax, [edx+0x24]
	add eax, 0xc
	mov [esp+0x14], eax
	mov dword [esp+0x10], 0x0
	movzx eax, word [ebx+0x96]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x28
	mov ecx, [ebp+0xc]
	mov [esp+0x4], ecx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_FireWeapon
	jmp CG_EntityEvent_80
CG_EntityEvent_2020:
	mov eax, cgArray
	cmp ebx, [eax+0x46218]
	jnz CG_EntityEvent_490
	cmp byte [ebp-0xc1], 0x0
	jz CG_EntityEvent_80
	mov edx, [ebp-0xd8]
	mov eax, [edx+0x9c]
	mov [esp+0x8], eax
	mov ecx, [ebp+0xc]
	mov [esp+0x4], ecx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_MeleeBloodEvent
	jmp CG_EntityEvent_80
CG_EntityEvent_2030:
	mov dword [esp+0x10], 0x42c80000
	mov edx, [ebp-0xd0]
	mov [esp+0xc], edx
	mov dword [esp+0x8], 0x64
	mov dword [esp+0x4], 0x3d4ccccd
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call CG_StartShakeCamera
	mov eax, cgArray
	mov eax, [eax+0x24]
	add eax, 0xc
	mov [esp+0x14], eax
	mov dword [esp+0x10], 0x0
	mov eax, scr_const
	movzx eax, word [eax+0x90]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x26
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov [esp], edx
	call CG_FireWeapon
	mov edx, [ebp-0xd4]
	shl edx, 0x2
	mov eax, [ebp-0xd4]
	shl eax, 0x5
	sub eax, edx
	mov edx, eax
	shl edx, 0x4
	lea edx, [eax+edx]
	add edx, cg_entitiesArray
	cmp byte [edx+0x1c0], 0x0
	jz CG_EntityEvent_80
	cmp dword [edx+0xd0], 0x1
	jnz CG_EntityEvent_80
	mov ecx, [ebp-0xc0]
	mov eax, [ecx+0x59c]
	mov ecx, [ebp+0xc]
	cmp eax, [ecx+0xcc]
	jz CG_EntityEvent_80
	mov dword [esp+0xc], 0x32
	mov eax, [ebp-0xd0]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov edx, [ebp+0x8]
	mov [esp], edx
	call CG_CompassAddWeaponPingInfo
	jmp CG_EntityEvent_80
CG_EntityEvent_2060:
	lea ebx, [ebp-0x2c]
	mov [esp+0x4], ebx
	mov edx, [ebp-0xd8]
	mov eax, [edx+0x9c]
	mov [esp], eax
	call ByteToDir
	mov dword [esp+0x2c], 0x0
	mov ecx, [ebp-0xc8]
	mov eax, [ecx+0x34c]
	mov [esp+0x28], eax
	mov edx, [ebp-0xd8]
	movzx eax, byte [edx+0xd4]
	mov [esp+0x24], eax
	mov dword [esp+0x20], 0x29
	mov eax, [edx+0x84]
	mov [esp+0x1c], eax
	mov [esp+0x18], ebx
	mov ecx, [ebp-0xd0]
	mov [esp+0x14], ecx
	mov eax, edx
	add eax, 0x54
	mov [esp+0x10], eax
	mov eax, [edx+0xc4]
	mov [esp+0xc], eax
	mov eax, [edx+0x7c]
	mov [esp+0x8], eax
	mov eax, [edx+0x74]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_BulletHitEvent
	jmp CG_EntityEvent_80
CG_EntityEvent_2070:
	mov edx, [ebp-0xc8]
	mov eax, [edx+0x34c]
	mov [esp+0x18], eax
	mov [esp+0x14], edi
	mov ecx, [ebp-0xd8]
	mov eax, [ecx+0x84]
	mov [esp+0x10], eax
	mov eax, [ebp-0xd0]
	mov [esp+0xc], eax
	mov eax, ecx
	add eax, 0x54
	mov [esp+0x8], eax
	mov eax, [ecx+0x74]
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov [esp], edx
	call CG_BulletHitClientEvent
	jmp CG_EntityEvent_80
CG_EntityEvent_2010:
	mov eax, [ebp-0xd8]
	mov esi, [eax+0x9c]
	test esi, esi
	jnz CG_EntityEvent_500
	mov edx, [ebp-0xc8]
	mov eax, [edx+0x1a4]
	test eax, eax
	jz CG_EntityEvent_510
	mov [esp+0xc], eax
	mov ecx, [ebp-0xd0]
	mov [esp+0x8], ecx
	mov edx, [ebp-0xd8]
	mov eax, [edx+0x74]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call CG_PlaySoundAlias
	jmp CG_EntityEvent_80
CG_EntityEvent_1840:
	cmp byte [ebp-0xc1], 0x0
	jz CG_EntityEvent_520
	mov edx, [ebp-0xc8]
	mov eax, [edx+0x1bc]
CG_EntityEvent_1270:
	mov [esp+0x8], eax
	mov edx, [ebp-0xd8]
	mov eax, [edx]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call CG_PlayEntitySoundAlias
	jmp CG_EntityEvent_80
CG_EntityEvent_1850:
	cmp byte [ebp-0xc1], 0x0
	jz CG_EntityEvent_530
	mov edx, [ebp-0xc8]
	mov eax, [edx+0x1c4]
CG_EntityEvent_1220:
	mov [esp+0x8], eax
	mov edx, [ebp-0xd8]
	mov eax, [edx]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call CG_PlayEntitySoundAlias
	jmp CG_EntityEvent_80
CG_EntityEvent_1880:
	cmp byte [ebp-0xc1], 0x0
	jz CG_EntityEvent_540
	mov ecx, [ebp-0xc8]
	mov eax, [ecx+0x1fc]
CG_EntityEvent_1200:
	mov [esp+0x8], eax
	mov ecx, [ebp-0xd8]
	mov eax, [ecx]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_PlayEntitySoundAlias
	jmp CG_EntityEvent_80
CG_EntityEvent_1860:
	cmp byte [ebp-0xc1], 0x0
	jz CG_EntityEvent_550
	mov edx, [ebp-0xc8]
	mov eax, [edx+0x1cc]
CG_EntityEvent_1240:
	mov [esp+0x8], eax
	mov edx, [ebp-0xd8]
	mov eax, [edx]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call CG_PlayEntitySoundAlias
	jmp CG_EntityEvent_80
CG_EntityEvent_1900:
	cmp byte [ebp-0xc1], 0x0
	jz CG_EntityEvent_560
	mov edx, [ebp-0xc8]
	mov eax, [edx+0x1ec]
CG_EntityEvent_1210:
	mov [esp+0x8], eax
	mov edx, [ebp-0xd8]
	mov eax, [edx]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call CG_PlayEntitySoundAlias
	jmp CG_EntityEvent_80
CG_EntityEvent_1870:
	cmp byte [ebp-0xc1], 0x0
	jz CG_EntityEvent_570
	mov edx, [ebp-0xc8]
	mov eax, [edx+0x1f4]
CG_EntityEvent_1230:
	mov [esp+0x8], eax
	mov edx, [ebp-0xd8]
	mov eax, [edx]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call CG_PlayEntitySoundAlias
	jmp CG_EntityEvent_80
CG_EntityEvent_1890:
	cmp byte [ebp-0xc1], 0x0
	jz CG_EntityEvent_580
	mov edx, [ebp-0xc8]
	mov eax, [edx+0x204]
CG_EntityEvent_1250:
	mov [esp+0x8], eax
	mov edx, [ebp-0xd8]
	mov eax, [edx]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call CG_PlayEntitySoundAlias
	jmp CG_EntityEvent_80
CG_EntityEvent_1910:
	cmp byte [ebp-0xc1], 0x0
	jz CG_EntityEvent_590
	mov ecx, [ebp-0xc8]
	mov eax, [ecx+0x16c]
CG_EntityEvent_1280:
	mov [esp+0x8], eax
	mov ecx, [ebp-0xd8]
	mov eax, [ecx]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_PlayEntitySoundAlias
	jmp CG_EntityEvent_80
CG_EntityEvent_2160:
	lea esi, [ebp-0x50]
	mov [esp+0x4], esi
	mov ecx, [ebp-0xd8]
	mov eax, [ecx+0x9c]
	mov [esp], eax
	call ByteToDir
	lea eax, [ebp-0x38]
	mov [esp+0x8], eax
	lea eax, [ebp-0x44]
	mov [esp+0x4], eax
	mov [esp], esi
	call Vec3Basis_RightHanded
	mov ebx, cgMedia
	mov edx, [ebp-0xd8]
	mov eax, [edx+0x84]
	mov eax, [ebx+eax*4+0x3c4]
	mov [esp+0xc], eax
	mov ecx, [ebp-0xd0]
	mov [esp+0x8], ecx
	mov dword [esp+0x4], 0x3fe
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_PlaySoundAlias
	mov eax, [ebx+0x2754]
	mov edx, [eax+0x4]
	mov ecx, [ebp-0xd8]
	mov eax, [ecx+0x84]
	mov edx, [edx+eax*4+0x5ac]
	test edx, edx
	jz CG_EntityEvent_600
	mov [esp+0x10], esi
	mov eax, [ebp-0xd0]
	mov [esp+0xc], eax
	mov eax, cgArray
	mov eax, [eax+0x46128]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov edx, [ebp+0x8]
	mov [esp], edx
	call FX_PlayOrientedEffect
CG_EntityEvent_600:
	mov ecx, [ebp-0xc8]
	mov edx, [ecx+0x58c]
	test edx, edx
	jz CG_EntityEvent_610
	mov [esp+0x10], esi
	mov eax, [ebp-0xd0]
	mov [esp+0xc], eax
	mov eax, cgArray
	mov eax, [eax+0x46128]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov edx, [ebp+0x8]
	mov [esp], edx
	call FX_PlayOrientedEffect
CG_EntityEvent_610:
	mov ecx, [ebp-0xc8]
	mov eax, [ecx+0x598]
	test eax, eax
	jz CG_EntityEvent_620
	mov [esp+0xc], eax
	mov eax, [ebp-0xd0]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x3fe
	mov edx, [ebp+0x8]
	mov [esp], edx
	call CG_PlaySoundAlias
CG_EntityEvent_620:
	mov ecx, [ebp-0xc8]
	mov edx, [ecx+0x594]
	test edx, edx
	jz CG_EntityEvent_630
	mov [esp+0x10], esi
	mov eax, [ebp-0xd0]
	mov [esp+0xc], eax
	mov eax, cgArray
	mov eax, [eax+0x46128]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov edx, [ebp+0x8]
	mov [esp], edx
	call FX_PlayOrientedEffect
CG_EntityEvent_630:
	mov ecx, [ebp-0xc8]
	mov eax, [ecx+0x59c]
	test eax, eax
	jz CG_EntityEvent_80
	mov [esp+0xc], eax
	mov eax, [ebp-0xd0]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x3fe
	mov edx, [ebp+0x8]
	mov [esp], edx
	call CG_PlaySoundAlias
	jmp CG_EntityEvent_80
CG_EntityEvent_2240:
	mov edx, [ebp-0xd8]
	mov eax, [edx+0x58]
	mov [esp+0x10], eax
	mov ecx, [ebp-0xd0]
	mov [esp+0xc], ecx
	mov eax, [edx+0x5c]
	mov [esp+0x8], eax
	mov eax, [edx+0x54]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_StartShakeCamera
	jmp CG_EntityEvent_80
CG_EntityEvent_2250:
	cmp byte [ebp-0xc1], 0x0
	jz CG_EntityEvent_640
	mov edx, [ebp-0xc8]
	mov eax, [edx+0x1d4]
CG_EntityEvent_1290:
	mov [esp+0x8], eax
	mov edx, [ebp-0xd8]
	mov eax, [edx]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call CG_PlayEntitySoundAlias
	jmp CG_EntityEvent_80
CG_EntityEvent_2260:
	cmp byte [ebp-0xc1], 0x0
	jz CG_EntityEvent_650
	mov eax, [ebp-0xc0]
	test dword [eax+0xb0], 0x300
	jnz CG_EntityEvent_660
	mov edx, [ebp-0xc8]
	mov eax, [edx+0xb8]
	cmp byte [eax], 0x0
	jnz CG_EntityEvent_670
CG_EntityEvent_660:
	mov eax, cgMedia
	mov eax, [eax+0x1048]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call CG_PlayClientSoundAlias
CG_EntityEvent_670:
	mov edx, [ebp-0xc8]
	mov eax, [edx+0x1dc]
CG_EntityEvent_1410:
	mov [esp+0x8], eax
	mov edx, [ebp-0xd8]
	mov eax, [edx]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call CG_PlayEntitySoundAlias
	jmp CG_EntityEvent_80
CG_EntityEvent_2080:
	mov ecx, [ebp-0xc8]
	mov edx, [ecx+0x208]
	test edx, edx
	jz CG_EntityEvent_680
	mov ecx, [ebp-0xd8]
	mov eax, [ecx+0x84]
	mov eax, [edx+eax*4]
	mov [esp+0xc], eax
	mov eax, [ebp-0xd0]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x3fe
	mov edx, [ebp+0x8]
	mov [esp], edx
	call CG_PlaySoundAlias
CG_EntityEvent_680:
	mov esi, cgMedia
	mov eax, [esi+0x2754]
	mov edx, [eax+0x4]
	mov ecx, [ebp-0xd8]
	mov eax, [ecx+0x84]
	mov ebx, [edx+eax*4+0x420]
	test ebx, ebx
	jz CG_EntityEvent_80
	lea ebx, [ebp-0x50]
	mov [esp+0x4], ebx
	mov eax, [ecx+0x9c]
	mov [esp], eax
	call ByteToDir
	lea eax, [ebp-0x38]
	mov [esp+0x8], eax
	lea eax, [ebp-0x44]
	mov [esp+0x4], eax
	mov [esp], ebx
	call Vec3Basis_RightHanded
	mov [esp+0x10], ebx
	mov eax, [ebp-0xd0]
	mov [esp+0xc], eax
	mov eax, cgArray
	mov eax, [eax+0x46128]
	mov [esp+0x8], eax
	mov eax, [esi+0x2754]
	mov edx, [eax+0x4]
	mov ecx, [ebp-0xd8]
	mov eax, [ecx+0x84]
	mov eax, [edx+eax*4+0x420]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call FX_PlayOrientedEffect
	jmp CG_EntityEvent_80
CG_EntityEvent_2090:
	mov edi, 0x3f800000
	mov [esp+0x18], edi
	mov ebx, vec3_origin
	mov [esp+0x14], ebx
	mov edx, [ebp-0xc8]
	cvtsi2ss xmm0, dword [edx+0x554]
	movss [esp+0x10], xmm0
	xor esi, esi
	mov [esp+0xc], esi
	mov ecx, [ebp-0xd0]
	mov [esp+0x8], ecx
	mov dword [esp+0x4], 0x0
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Ragdoll_ExplosionEvent
	mov edx, [ebp-0xc8]
	mov eax, [edx+0x560]
	mov [esp+0x20], eax
	mov eax, [edx+0x55c]
	mov [esp+0x1c], eax
	mov [esp+0x18], edi
	mov [esp+0x14], ebx
	cvtsi2ss xmm0, dword [edx+0x554]
	movss [esp+0x10], xmm0
	mov [esp+0xc], esi
	mov ecx, [ebp-0xd0]
	mov [esp+0x8], ecx
	mov dword [esp+0x4], 0x0
	mov eax, [ebp+0x8]
	mov [esp], eax
	call DynEntCl_ExplosionEvent
	lea ebx, [ebp-0x50]
	mov [esp+0x4], ebx
	mov edx, [ebp-0xd8]
	mov eax, [edx+0x9c]
	mov [esp], eax
	call ByteToDir
	lea eax, [ebp-0x38]
	mov [esp+0x8], eax
	lea eax, [ebp-0x44]
	mov [esp+0x4], eax
	mov [esp], ebx
	call Vec3Basis_RightHanded
	lea eax, [ebp-0x1c]
	mov [esp+0x10], eax
	lea eax, [ebp-0x20]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x0
	mov ecx, [ebp-0xd8]
	mov eax, [ecx+0x84]
	mov [esp+0x4], eax
	mov eax, [ebp-0xcc]
	mov [esp], eax
	call CG_ImpactEffectForWeapon
	mov edx, [ebp-0x20]
	test edx, edx
	jz CG_EntityEvent_690
	mov [esp+0x10], ebx
	mov ecx, [ebp-0xd0]
	mov [esp+0xc], ecx
	mov eax, cgArray
	mov eax, [eax+0x46128]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call FX_PlayOrientedEffect
CG_EntityEvent_690:
	mov eax, [ebp-0x1c]
	test eax, eax
	jz CG_EntityEvent_700
	mov [esp+0xc], eax
	mov edx, [ebp-0xd0]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x3fe
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call CG_PlaySoundAlias
CG_EntityEvent_700:
	mov eax, [ebp-0xc8]
	mov edx, [eax+0x58c]
	test edx, edx
	jz CG_EntityEvent_710
	mov [esp+0x10], ebx
	mov ecx, [ebp-0xd0]
	mov [esp+0xc], ecx
	mov eax, cgArray
	mov eax, [eax+0x46128]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call FX_PlayOrientedEffect
CG_EntityEvent_710:
	mov edx, [ebp-0xc8]
	mov eax, [edx+0x598]
	test eax, eax
	jz CG_EntityEvent_80
	mov [esp+0xc], eax
	mov ecx, [ebp-0xd0]
	mov [esp+0x8], ecx
	mov dword [esp+0x4], 0x3fe
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_PlaySoundAlias
	jmp CG_EntityEvent_80
CG_EntityEvent_2200:
	mov edx, [ebp-0xd8]
	mov eax, [edx+0x58]
	mov [esp+0x18], eax
	mov eax, vec3_origin
	mov [esp+0x14], eax
	mov edx, [edx+0x9c]
	test edx, edx
	js CG_EntityEvent_720
	cvtsi2ss xmm0, edx
CG_EntityEvent_1510:
	movss [esp+0x10], xmm0
	mov edx, [ebp-0xd8]
	mov eax, [edx+0x54]
	mov [esp+0xc], eax
	mov ecx, [ebp-0xd0]
	mov [esp+0x8], ecx
	mov dword [esp+0x4], 0x0
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Ragdoll_ExplosionEvent
	mov dword [esp+0x20], 0x0
	mov dword [esp+0x1c], 0x0
	mov edx, [ebp-0xd8]
	mov eax, [edx+0x58]
	mov [esp+0x18], eax
	mov eax, vec3_origin
	mov [esp+0x14], eax
	mov edx, [edx+0x9c]
	test edx, edx
	js CG_EntityEvent_730
	cvtsi2ss xmm0, edx
CG_EntityEvent_1500:
	movss [esp+0x10], xmm0
	mov edx, [ebp-0xd8]
	mov eax, [edx+0x54]
	mov [esp+0xc], eax
	mov ecx, [ebp-0xd0]
	mov [esp+0x8], ecx
	mov dword [esp+0x4], 0x0
	mov eax, [ebp+0x8]
	mov [esp], eax
	call DynEntCl_ExplosionEvent
	jmp CG_EntityEvent_80
CG_EntityEvent_2210:
	mov edx, [ebp-0xd8]
	mov eax, [edx+0x58]
	mov [esp+0x18], eax
	mov eax, vec3_origin
	mov [esp+0x14], eax
	mov edx, [edx+0x9c]
	test edx, edx
	js CG_EntityEvent_740
	cvtsi2ss xmm0, edx
CG_EntityEvent_1460:
	movss [esp+0x10], xmm0
	mov edx, [ebp-0xd8]
	mov eax, [edx+0x54]
	mov [esp+0xc], eax
	mov ecx, [ebp-0xd0]
	mov [esp+0x8], ecx
	mov dword [esp+0x4], 0x1
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Ragdoll_ExplosionEvent
	mov dword [esp+0x20], 0x0
	mov dword [esp+0x1c], 0x0
	mov edx, [ebp-0xd8]
	mov eax, [edx+0x58]
	mov [esp+0x18], eax
	mov eax, vec3_origin
	mov [esp+0x14], eax
	mov edx, [edx+0x9c]
	test edx, edx
	js CG_EntityEvent_750
	cvtsi2ss xmm0, edx
CG_EntityEvent_1450:
	movss [esp+0x10], xmm0
	mov edx, [ebp-0xd8]
	mov eax, [edx+0x54]
	mov [esp+0xc], eax
	mov ecx, [ebp-0xd0]
	mov [esp+0x8], ecx
	mov dword [esp+0x4], 0x1
	mov eax, [ebp+0x8]
	mov [esp], eax
	call DynEntCl_ExplosionEvent
	jmp CG_EntityEvent_80
CG_EntityEvent_2220:
	mov ebx, [ebp-0xd8]
	add ebx, 0x58
	mov dword [esp+0x18], 0x3f800000
	mov [esp+0x14], ebx
	mov ecx, [ebp-0xd8]
	mov edx, [ecx+0x9c]
	test edx, edx
	js CG_EntityEvent_760
	cvtsi2ss xmm0, edx
CG_EntityEvent_1490:
	movss [esp+0x10], xmm0
	mov edx, [ebp-0xd8]
	mov eax, [edx+0x54]
	mov [esp+0xc], eax
	mov ecx, [ebp-0xd0]
	mov [esp+0x8], ecx
	mov dword [esp+0x4], 0x1
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Ragdoll_ExplosionEvent
	mov dword [esp+0x20], 0x0
	mov dword [esp+0x1c], 0x0
	mov dword [esp+0x18], 0x3f800000
	mov [esp+0x14], ebx
	mov ecx, [ebp-0xd8]
	mov edx, [ecx+0x9c]
	test edx, edx
	js CG_EntityEvent_770
	cvtsi2ss xmm0, edx
CG_EntityEvent_1480:
	movss [esp+0x10], xmm0
	mov edx, [ebp-0xd8]
	mov eax, [edx+0x54]
	mov [esp+0xc], eax
	mov ecx, [ebp-0xd0]
	mov [esp+0x8], ecx
	mov dword [esp+0x4], 0x1
	mov eax, [ebp+0x8]
	mov [esp], eax
	call DynEntCl_ExplosionEvent
	jmp CG_EntityEvent_80
CG_EntityEvent_2230:
	mov edx, [ebp-0xd8]
	mov eax, [edx+0x5c]
	mov [esp+0x14], eax
	mov eax, [edx+0x58]
	mov [esp+0x10], eax
	mov edx, [edx+0x9c]
	test edx, edx
	js CG_EntityEvent_780
	cvtsi2ss xmm0, edx
CG_EntityEvent_1520:
	movss [esp+0xc], xmm0
	mov edx, [ebp-0xd8]
	mov eax, [edx+0x54]
	mov [esp+0x8], eax
	mov ecx, [ebp-0xd0]
	mov [esp+0x4], ecx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call DynEntCl_JitterEvent
	jmp CG_EntityEvent_80
CG_EntityEvent_2320:
	mov edx, [ebp-0xd8]
	mov eax, [edx]
	mov edx, cgArray
	mov ecx, [edx+0x24]
	test byte [ecx+0x20], 0x6
	jz CG_EntityEvent_790
	cmp eax, [ecx+0xe8]
	jz CG_EntityEvent_800
CG_EntityEvent_790:
	xor eax, eax
CG_EntityEvent_1150:
	test eax, eax
	jz CG_EntityEvent_80
	mov ecx, cgArray
	cmp dword [ecx+0x5031c], 0x9
	jz CG_EntityEvent_80
	mov dword [ecx+0x5031c], 0x9
	mov eax, [ecx+0x46128]
	mov [ecx+0x50320], eax
	jmp CG_EntityEvent_80
CG_EntityEvent_2180:
	mov edx, [ebp-0xd8]
	add edx, 0x3c
	mov eax, [ebp+0xc]
	mov ecx, [eax+0x168]
	lea eax, [ecx-0x1]
	cmp eax, 0x62
	jbe CG_EntityEvent_810
	mov [esp+0x8], ecx
	mov dword [esp+0x4], _cstring_error_cg_playfx_
	mov dword [esp], 0x15
	call Com_PrintError
	jmp CG_EntityEvent_80
CG_EntityEvent_2190:
	mov edx, [ebp-0xd8]
	mov eax, [edx+0x9c]
	add eax, 0x6a2
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call CL_GetConfigString
	movsx edx, byte [eax]
	movsx ecx, byte [eax+0x1]
	lea edx, [edx+edx*4]
	lea edx, [ecx+edx*2]
	mov ecx, cgsArray
	mov edi, [ecx+edx*4+0x254]
	mov edx, [ebp+0xc]
	mov ebx, [edx+0xcc]
	mov dword [esp+0x4], 0x0
	add eax, 0x2
	mov [esp], eax
	call SL_GetString
	mov [ebp-0x1c], ax
	movzx esi, ax
	mov byte [ebp-0x20], 0xfe
	mov ecx, [ebp+0x8]
	mov [esp+0x4], ecx
	mov [esp], ebx
	call Com_GetClientDObj
	mov edx, eax
	test eax, eax
	jz CG_EntityEvent_820
	lea eax, [ebp-0x20]
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov [esp], edx
	call DObjGetBoneIndex
	test eax, eax
	jz CG_EntityEvent_820
	movzx eax, byte [ebp-0x20]
	mov [esp+0x10], eax
	mov [esp+0xc], ebx
	mov eax, cgArray
	mov eax, [eax+0x46128]
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	mov eax, [ebp+0x8]
	mov [esp], eax
	call FX_PlayBoltedEffect
CG_EntityEvent_820:
	mov dword [esp+0x4], 0x0
	lea eax, [ebp-0x1c]
	mov [esp], eax
	call Scr_SetString
	jmp CG_EntityEvent_80
CG_EntityEvent_2280:
	mov eax, [ebp-0xd8]
	mov edi, [eax+0x74]
	mov esi, [eax+0x78]
	mov eax, [eax+0x9c]
	test al, al
	jns CG_EntityEvent_830
	mov ebx, eax
	and bl, 0x7f
	mov dword [esp+0x4], 0x7
	mov dword [esp], _cstring_killicondied
	call Material_RegisterHandle
	mov [ebp-0xb8], eax
	mov byte [ebp-0xa9], 0x0
CG_EntityEvent_1530:
	lea eax, [ebx-0x7]
	cmp eax, 0x8
	ja CG_EntityEvent_840
	jmp dword [eax*4+CG_EntityEvent_jumptab_2]
CG_EntityEvent_2290:
	mov ecx, [ebp-0xd8]
	mov eax, [ecx]
	mov edx, cgArray
	mov ecx, [edx+0x24]
	test byte [ecx+0x20], 0x6
	jz CG_EntityEvent_850
	cmp eax, [ecx+0xe8]
	jz CG_EntityEvent_860
CG_EntityEvent_850:
	xor eax, eax
CG_EntityEvent_1090:
	test eax, eax
	jz CG_EntityEvent_80
	mov ecx, cgArray
	cmp dword [ecx+0x5031c], 0x2
	jz CG_EntityEvent_80
	mov dword [ecx+0x5031c], 0x2
	mov eax, [ecx+0x46128]
	mov [ecx+0x50320], eax
	jmp CG_EntityEvent_80
CG_EntityEvent_2360:
	mov eax, cg_footsteps
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz CG_EntityEvent_870
	cmp byte [ebp-0xc1], 0x0
	jz CG_EntityEvent_880
	mov ecx, [ebp-0xd4]
	lea edx, [esi+ecx]
	mov eax, cgMedia
	mov eax, [eax+edx*4+0xb78]
CG_EntityEvent_1420:
	mov [esp+0x8], eax
	mov edx, [ebp-0xd8]
	mov eax, [edx]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call CG_PlayEntitySoundAlias
CG_EntityEvent_870:
	cmp esi, 0x1
	sbb eax, eax
	not eax
	and eax, 0x3
	movzx ecx, byte [ebp-0xc1]
	mov [esp], eax
	mov eax, [ebp-0xd8]
	mov edx, [eax]
	mov eax, [ebp+0x8]
	call CG_EquipmentSound
	jmp CG_EntityEvent_80
CG_EntityEvent_2370:
	mov eax, cg_footsteps
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz CG_EntityEvent_890
	cmp byte [ebp-0xc1], 0x0
	jz CG_EntityEvent_900
	mov ecx, [ebp-0xd4]
	lea edx, [esi+ecx]
	mov eax, cgMedia
	mov eax, [eax+edx*4+0xd48]
CG_EntityEvent_1430:
	mov [esp+0x8], eax
	mov edx, [ebp-0xd8]
	mov eax, [edx]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call CG_PlayEntitySoundAlias
CG_EntityEvent_890:
	cmp esi, 0x1
	sbb eax, eax
	not eax
	and eax, 0x3
	movzx ecx, byte [ebp-0xc1]
	mov [esp], eax
	mov eax, [ebp-0xd8]
	mov edx, [eax]
	mov eax, [ebp+0x8]
	call CG_EquipmentSound
	jmp CG_EntityEvent_80
CG_EntityEvent_2170:
	lea esi, [ebp-0x50]
	mov [esp+0x4], esi
	mov ecx, [ebp-0xd8]
	mov eax, [ecx+0x9c]
	mov [esp], eax
	call ByteToDir
	lea eax, [ebp-0x38]
	mov [esp+0x8], eax
	lea eax, [ebp-0x44]
	mov [esp+0x4], eax
	mov [esp], esi
	call Vec3Basis_RightHanded
	mov ebx, cgMedia
	mov edx, [ebp-0xd8]
	mov eax, [edx+0x84]
	mov eax, [ebx+eax*4+0x3c4]
	mov [esp+0xc], eax
	mov ecx, [ebp-0xd0]
	mov [esp+0x8], ecx
	mov dword [esp+0x4], 0x3fe
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_PlaySoundAlias
	mov eax, [ebx+0x2754]
	mov edx, [eax+0x4]
	mov ecx, [ebp-0xd8]
	mov eax, [ecx+0x84]
	mov edx, [edx+eax*4+0x5ac]
	test edx, edx
	jz CG_EntityEvent_910
	mov [esp+0x10], esi
	mov eax, [ebp-0xd0]
	mov [esp+0xc], eax
	mov eax, cgArray
	mov eax, [eax+0x46128]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov edx, [ebp+0x8]
	mov [esp], edx
	call FX_PlayOrientedEffect
CG_EntityEvent_910:
	mov ecx, [ebp-0xc8]
	mov edx, [ecx+0x594]
	test edx, edx
	jz CG_EntityEvent_920
	mov [esp+0x10], esi
	mov eax, [ebp-0xd0]
	mov [esp+0xc], eax
	mov eax, cgArray
	mov eax, [eax+0x46128]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov edx, [ebp+0x8]
	mov [esp], edx
	call FX_PlayOrientedEffect
CG_EntityEvent_920:
	mov ecx, [ebp-0xc8]
	mov eax, [ecx+0x59c]
	test eax, eax
	jz CG_EntityEvent_80
	mov [esp+0xc], eax
	mov eax, [ebp-0xd0]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x3fe
	mov edx, [ebp+0x8]
	mov [esp], edx
	call CG_PlaySoundAlias
	jmp CG_EntityEvent_80
CG_EntityEvent_2270:
	cmp byte [ebp-0xc1], 0x0
	jz CG_EntityEvent_930
	mov eax, [ebp-0xc0]
	test dword [eax+0xb0], 0x300
	jnz CG_EntityEvent_940
	mov edx, [ebp-0xc8]
	mov eax, [edx+0xbc]
	cmp byte [eax], 0x0
	jnz CG_EntityEvent_950
CG_EntityEvent_940:
	mov eax, cgMedia
	mov eax, [eax+0x104c]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call CG_PlayClientSoundAlias
CG_EntityEvent_950:
	mov edx, [ebp-0xc8]
	mov eax, [edx+0x1e4]
CG_EntityEvent_1300:
	mov [esp+0x8], eax
	mov edx, [ebp-0xd8]
	mov eax, [edx]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call CG_PlayEntitySoundAlias
	jmp CG_EntityEvent_80
CG_EntityEvent_2300:
	mov edx, [ebp-0xd8]
	mov eax, [edx]
	mov edx, cgArray
	mov ecx, [edx+0x24]
	test byte [ecx+0x20], 0x6
	jz CG_EntityEvent_960
	cmp eax, [ecx+0xe8]
	jz CG_EntityEvent_970
CG_EntityEvent_960:
	xor eax, eax
CG_EntityEvent_1080:
	test eax, eax
	jz CG_EntityEvent_80
	mov ecx, cgArray
	cmp dword [ecx+0x5031c], 0x3
	jz CG_EntityEvent_80
	mov dword [ecx+0x5031c], 0x3
	mov eax, [ecx+0x46128]
	mov [ecx+0x50320], eax
	jmp CG_EntityEvent_80
CG_EntityEvent_2310:
	mov edx, [ebp-0xd8]
	mov eax, [edx]
	mov edx, cgArray
	mov ecx, [edx+0x24]
	test byte [ecx+0x20], 0x6
	jz CG_EntityEvent_980
	cmp eax, [ecx+0xe8]
	jz CG_EntityEvent_990
CG_EntityEvent_980:
	xor eax, eax
CG_EntityEvent_1070:
	test eax, eax
	jz CG_EntityEvent_80
	mov ecx, cgArray
	cmp dword [ecx+0x5031c], 0x7
	jz CG_EntityEvent_80
	mov dword [ecx+0x5031c], 0x7
	mov eax, [ecx+0x46128]
	mov [ecx+0x50320], eax
	jmp CG_EntityEvent_80
CG_EntityEvent_2340:
	mov eax, cg_footsteps
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz CG_EntityEvent_1000
	cmp byte [ebp-0xc1], 0x0
	jz CG_EntityEvent_1010
	mov ecx, [ebp-0xd4]
	lea edx, [esi+ecx]
	mov eax, cgMedia
	mov eax, [eax+edx*4+0x7d8]
CG_EntityEvent_1470:
	mov [esp+0x8], eax
	mov edx, [ebp-0xd8]
	mov eax, [edx]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call CG_PlayEntitySoundAlias
CG_EntityEvent_1000:
	cmp esi, 0x1
	sbb eax, eax
	and eax, 0xfffffffd
	add eax, 0x5
	movzx ecx, byte [ebp-0xc1]
	mov [esp], eax
	mov eax, [ebp-0xd8]
	mov edx, [eax]
	mov eax, [ebp+0x8]
	call CG_EquipmentSound
	jmp CG_EntityEvent_80
CG_EntityEvent_2350:
	mov eax, cg_footsteps
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz CG_EntityEvent_1020
	cmp byte [ebp-0xc1], 0x0
	jz CG_EntityEvent_1030
	mov ecx, [ebp-0xd4]
	lea edx, [esi+ecx]
	mov eax, cgMedia
	mov eax, [eax+edx*4+0x9a8]
CG_EntityEvent_1440:
	mov [esp+0x8], eax
	mov edx, [ebp-0xd8]
	mov eax, [edx]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call CG_PlayEntitySoundAlias
CG_EntityEvent_1020:
	cmp esi, 0x1
	sbb eax, eax
	and eax, 0xfffffffd
	add eax, 0x4
	movzx ecx, byte [ebp-0xc1]
	mov [esp], eax
	mov eax, [ebp-0xd8]
	mov edx, [eax]
	mov eax, [ebp+0x8]
	call CG_EquipmentSound
	jmp CG_EntityEvent_80
CG_EntityEvent_2380:
	cmp byte [ebp-0xc1], 0x0
	jz CG_EntityEvent_1040
	mov ecx, [ebp-0xd4]
	lea edx, [esi+ecx]
	mov eax, cgMedia
	mov eax, [eax+edx*4+0x9a8]
CG_EntityEvent_1400:
	mov [esp+0x8], eax
	mov edx, [ebp-0xd8]
	mov eax, [edx]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call CG_PlayEntitySoundAlias
	cmp esi, 0x1
	sbb eax, eax
	and eax, 0xfffffffd
	add eax, 0x4
	movzx ecx, byte [ebp-0xc1]
	mov [esp], eax
	mov eax, [ebp-0xd8]
	mov edx, [eax]
	mov eax, [ebp+0x8]
	call CG_EquipmentSound
	jmp CG_EntityEvent_80
CG_EntityEvent_2330:
	mov edx, [ebp-0xd8]
	mov eax, [edx]
	mov edx, cgArray
	mov ecx, [edx+0x24]
	test byte [ecx+0x20], 0x6
	jz CG_EntityEvent_1050
	cmp eax, [ecx+0xe8]
	jz CG_EntityEvent_1060
CG_EntityEvent_1050:
	xor eax, eax
CG_EntityEvent_1140:
	test eax, eax
	jz CG_EntityEvent_80
	mov ecx, cgArray
	cmp dword [ecx+0x5031c], 0x8
	jz CG_EntityEvent_80
	mov dword [ecx+0x5031c], 0x8
	mov eax, [ecx+0x46128]
	mov [ecx+0x50320], eax
	jmp CG_EntityEvent_80
CG_EntityEvent_990:
	mov eax, 0x1
	jmp CG_EntityEvent_1070
CG_EntityEvent_970:
	mov eax, 0x1
	jmp CG_EntityEvent_1080
CG_EntityEvent_860:
	mov eax, 0x1
	jmp CG_EntityEvent_1090
CG_EntityEvent_2390:
	test cl, cl
	jz CG_EntityEvent_1100
	mov edx, [ebp-0xc8]
	mov eax, [edx+0x1bc]
	test eax, eax
	jz CG_EntityEvent_1110
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call CG_StopSoundAlias
CG_EntityEvent_1110:
	mov edx, [ebp-0xc8]
	mov eax, [edx+0x1b4]
	test eax, eax
	jz CG_EntityEvent_80
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call CG_StopSoundAlias
	jmp CG_EntityEvent_80
CG_EntityEvent_2400:
	test cl, cl
	jz CG_EntityEvent_1120
	mov edx, [ebp-0xc8]
	mov eax, [edx+0x1c4]
CG_EntityEvent_1550:
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_StopSoundAlias
	jmp CG_EntityEvent_80
CG_EntityEvent_2410:
	test cl, cl
	jz CG_EntityEvent_1130
	mov edx, [ebp-0xc8]
	mov eax, [edx+0x1cc]
CG_EntityEvent_1560:
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_StopSoundAlias
	jmp CG_EntityEvent_80
CG_EntityEvent_1060:
	mov eax, 0x1
	jmp CG_EntityEvent_1140
CG_EntityEvent_800:
	mov eax, 0x1
	jmp CG_EntityEvent_1150
CG_EntityEvent_140:
	test eax, eax
	jle CG_EntityEvent_80
	cvtsi2ss xmm1, eax
	jmp CG_EntityEvent_1160
CG_EntityEvent_260:
	mov ecx, edx
	jmp CG_EntityEvent_1170
CG_EntityEvent_410:
	mov [esp+0xc], ebx
	mov eax, eventnames
	mov eax, [eax+0x34]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_event_s_just_for
	mov dword [esp], 0x15
	call Com_DPrintf
	jmp CG_EntityEvent_80
CG_EntityEvent_440:
	mov [esp+0xc], ebx
	mov eax, eventnames
	mov eax, [eax+0x84]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_event_s_just_for
	mov dword [esp], 0x15
	call Com_DPrintf
	jmp CG_EntityEvent_80
CG_EntityEvent_490:
	mov [esp+0xc], ebx
	mov eax, eventnames
	mov eax, [eax+0x94]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_event_s_just_for
	mov dword [esp], 0x15
	call Com_DPrintf
	jmp CG_EntityEvent_80
CG_EntityEvent_390:
	mov [esp+0xc], ebx
	mov eax, eventnames
	mov eax, [eax+0x38]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_event_s_just_for
	mov dword [esp], 0x15
	call Com_DPrintf
	jmp CG_EntityEvent_80
CG_EntityEvent_450:
	mov [esp+0xc], ebx
	mov eax, eventnames
	mov eax, [eax+0x88]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_event_s_just_for
	mov dword [esp], 0x15
	call Com_DPrintf
	jmp CG_EntityEvent_80
CG_EntityEvent_460:
	mov [esp+0xc], ebx
	mov eax, eventnames
	mov eax, [eax+0x80]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_event_s_just_for
	mov dword [esp], 0x15
	call Com_DPrintf
	jmp CG_EntityEvent_80
CG_EntityEvent_420:
	mov ecx, [ebp-0xc8]
	mov eax, [ecx+0x1a8]
	jmp CG_EntityEvent_1180
CG_EntityEvent_400:
	mov edx, [ebp-0xc8]
	mov eax, [edx+0x1b0]
	jmp CG_EntityEvent_1190
CG_EntityEvent_540:
	mov edx, [ebp-0xc8]
	mov eax, [edx+0x1f8]
	jmp CG_EntityEvent_1200
CG_EntityEvent_560:
	mov ecx, [ebp-0xc8]
	mov eax, [ecx+0x1e8]
	jmp CG_EntityEvent_1210
CG_EntityEvent_530:
	mov ecx, [ebp-0xc8]
	mov eax, [ecx+0x1c0]
	jmp CG_EntityEvent_1220
CG_EntityEvent_570:
	mov ecx, [ebp-0xc8]
	mov eax, [ecx+0x1f0]
	jmp CG_EntityEvent_1230
CG_EntityEvent_550:
	mov ecx, [ebp-0xc8]
	mov eax, [ecx+0x1c8]
	jmp CG_EntityEvent_1240
CG_EntityEvent_580:
	mov ecx, [ebp-0xc8]
	mov eax, [ecx+0x200]
	jmp CG_EntityEvent_1250
CG_EntityEvent_430:
	mov edx, [ebp-0xc8]
	mov eax, [edx+0x198]
	jmp CG_EntityEvent_1260
CG_EntityEvent_520:
	mov ecx, [ebp-0xc8]
	mov eax, [ecx+0x1b8]
	jmp CG_EntityEvent_1270
CG_EntityEvent_590:
	mov edx, [ebp-0xc8]
	mov eax, [edx+0x168]
	jmp CG_EntityEvent_1280
CG_EntityEvent_640:
	mov ecx, [ebp-0xc8]
	mov eax, [ecx+0x1d0]
	jmp CG_EntityEvent_1290
CG_EntityEvent_930:
	mov ecx, [ebp-0xc8]
	mov eax, [ecx+0x1e0]
	jmp CG_EntityEvent_1300
CG_EntityEvent_810:
	mov eax, cgsArray
	mov esi, [eax+ecx*4+0xa94]
	lea ebx, [ebp-0x78]
	mov [esp+0x4], ebx
	mov [esp], edx
	call AnglesToAxis
	mov [esp+0x10], ebx
	mov edx, [ebp-0xd0]
	mov [esp+0xc], edx
	mov eax, cgArray
	mov eax, [eax+0x46128]
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call FX_PlayOrientedEffect
	jmp CG_EntityEvent_80
CG_EntityEvent_2470:
	mov dword [esp+0x4], 0x7
	mov dword [esp], _cstring_killicondied
	call Material_RegisterHandle
	mov [ebp-0xb8], eax
CG_EntityEvent_840:
	movss xmm0, dword [_float_1_39999998]
	movss [ebp-0xbc], xmm0
	mov ebx, [ebp-0xbc]
CG_EntityEvent_1390:
	cmp edi, 0x3f
	jbe CG_EntityEvent_1310
	mov dword [esp+0x4], _cstring_cg_obituary_targ
	mov dword [esp], 0x2
	call Com_Error
CG_EntityEvent_1310:
	lea eax, [edi+edi*8]
	mov edx, eax
	shl edx, 0x4
	add eax, edx
	lea eax, [edi+eax*2]
	mov edx, cgArray
	mov [ebp-0xdc], edx
	lea eax, [edx+eax*4+0xe9f30]
	lea ecx, [eax+0x4]
	mov [ebp-0xb4], ecx
	mov eax, [eax+0x4]
	test eax, eax
	jz CG_EntityEvent_80
	mov dword [esp+0xc], 0x26
	lea eax, [ebp-0x78]
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	mov edx, [ebp+0x8]
	mov [esp], edx
	call CL_GetClientName
	mov ecx, [ebp+0x8]
	mov [esp+0x4], ecx
	mov edx, [ebp-0xb4]
	mov eax, [edx+0x20]
	mov [esp], eax
	call CG_DrawScoreboard_GetTeamColorIndex
	mov [ebp-0xaa], al
	mov ecx, [ebp-0xdc]
	mov edx, [ecx]
	lea eax, [edx+edx*8]
	mov ecx, eax
	shl ecx, 0x4
	add eax, ecx
	lea eax, [edx+eax*2]
	mov edx, [ebp-0xdc]
	mov eax, [edx+eax*4+0xe9f34]
	test eax, eax
	jz CG_EntityEvent_80
	cmp esi, 0x3f
	jbe CG_EntityEvent_1320
	mov byte [ebp-0x9e], 0x0
	mov esi, 0x3fe
	mov dword [ebp-0xb0], 0x0
	mov byte [ebp-0xab], 0x37
CG_EntityEvent_1630:
	mov ecx, cgArray
	mov eax, [ecx+0x24]
	add eax, 0xc
	cmp esi, edi
	jz CG_EntityEvent_1330
	mov eax, [eax+0xdc]
	cmp esi, eax
	jz CG_EntityEvent_1340
	cmp edi, eax
	jz CG_EntityEvent_1350
CG_EntityEvent_1620:
	mov edx, cgArray
	mov eax, [edx+0x5052c]
	test eax, eax
	jnz CG_EntityEvent_80
	movzx eax, byte [ebp-0xa9]
	mov [esp+0x20], eax
	mov [esp+0x1c], ebx
	movss xmm0, dword [ebp-0xbc]
	movss [esp+0x18], xmm0
	mov eax, [ebp-0xb8]
	mov [esp+0x14], eax
	movsx eax, byte [ebp-0xaa]
	mov [esp+0x10], eax
	lea edx, [ebp-0x78]
	mov [esp+0xc], edx
	movsx eax, byte [ebp-0xab]
	mov [esp+0x8], eax
	lea eax, [ebp-0x9e]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call CL_DeathMessagePrint
	jmp CG_EntityEvent_80
CG_EntityEvent_830:
	mov [esp], eax
	call BG_GetWeaponDef
	mov ecx, [eax+0x518]
	mov [ebp-0xb8], ecx
	test ecx, ecx
	jz CG_EntityEvent_1360
	mov edx, [eax+0x520]
	test edx, edx
	setnz byte [ebp-0xa9]
	mov eax, [eax+0x51c]
	test eax, eax
	jz CG_EntityEvent_1370
	sub eax, 0x1
	jz CG_EntityEvent_1380
	movss xmm0, dword [_float_2_79999995]
	movss [ebp-0xbc], xmm0
	mov ebx, 0x3f333333
	jmp CG_EntityEvent_1390
CG_EntityEvent_1040:
	mov eax, [ebp-0xd4]
	lea edx, [esi+eax]
	mov eax, cgMedia
	mov eax, [eax+edx*4+0x8c0]
	jmp CG_EntityEvent_1400
CG_EntityEvent_650:
	mov ecx, [ebp-0xc8]
	mov eax, [ecx+0x1d8]
	jmp CG_EntityEvent_1410
CG_EntityEvent_470:
	mov eax, cgMedia
	mov eax, [eax+0x1040]
	mov [esp+0x8], eax
	mov eax, [edx+0x74]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call CG_PlayEntitySoundAlias
	jmp CG_EntityEvent_80
CG_EntityEvent_500:
	mov eax, cgMedia
	mov eax, [eax+0x1044]
	mov [esp+0xc], eax
	mov edx, [ebp-0xd0]
	mov [esp+0x8], edx
	mov ecx, [ebp-0xd8]
	mov eax, [ecx+0x74]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_PlaySoundAlias
	jmp CG_EntityEvent_80
CG_EntityEvent_310:
	mov dword [esp+0x4], 0x0
	mov edx, [ebp+0x8]
	mov [esp], edx
	call CL_SetStance
	jmp CG_EntityEvent_80
CG_EntityEvent_320:
	mov dword [esp+0x4], 0x1
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CL_SetStance
	jmp CG_EntityEvent_80
CG_EntityEvent_330:
	mov dword [esp+0x4], 0x2
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call CL_SetStance
	jmp CG_EntityEvent_80
CG_EntityEvent_880:
	mov eax, [ebp-0xd4]
	lea edx, [esi+eax]
	mov eax, cgMedia
	mov eax, [eax+edx*4+0xa90]
	jmp CG_EntityEvent_1420
CG_EntityEvent_900:
	mov eax, [ebp-0xd4]
	lea edx, [esi+eax]
	mov eax, cgMedia
	mov eax, [eax+edx*4+0xc60]
	jmp CG_EntityEvent_1430
CG_EntityEvent_1030:
	mov eax, [ebp-0xd4]
	lea edx, [esi+eax]
	mov eax, cgMedia
	mov eax, [eax+edx*4+0x8c0]
	jmp CG_EntityEvent_1440
CG_EntityEvent_750:
	mov eax, edx
	shr eax, 1
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm0, eax
	addss xmm0, xmm0
	jmp CG_EntityEvent_1450
CG_EntityEvent_740:
	mov eax, edx
	shr eax, 1
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm0, eax
	addss xmm0, xmm0
	jmp CG_EntityEvent_1460
CG_EntityEvent_1010:
	mov eax, [ebp-0xd4]
	lea edx, [esi+eax]
	mov eax, cgMedia
	mov eax, [eax+edx*4+0x6f0]
	jmp CG_EntityEvent_1470
CG_EntityEvent_770:
	mov eax, edx
	shr eax, 1
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm0, eax
	addss xmm0, xmm0
	jmp CG_EntityEvent_1480
CG_EntityEvent_760:
	mov eax, edx
	shr eax, 1
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm0, eax
	addss xmm0, xmm0
	jmp CG_EntityEvent_1490
CG_EntityEvent_730:
	mov eax, edx
	shr eax, 1
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm0, eax
	addss xmm0, xmm0
	jmp CG_EntityEvent_1500
CG_EntityEvent_720:
	mov eax, edx
	shr eax, 1
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm0, eax
	addss xmm0, xmm0
	jmp CG_EntityEvent_1510
CG_EntityEvent_780:
	mov eax, edx
	shr eax, 1
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm0, eax
	addss xmm0, xmm0
	jmp CG_EntityEvent_1520
CG_EntityEvent_1370:
	xor ebx, ebx
	jmp CG_EntityEvent_1530
CG_EntityEvent_1380:
	movss xmm0, dword [_float_2_79999995]
	movss [ebp-0xbc], xmm0
	mov ebx, 0x3fb33333
	jmp CG_EntityEvent_1390
CG_EntityEvent_510:
	mov eax, cgMedia
	mov eax, [eax+0x103c]
	mov [esp+0xc], eax
	mov eax, [ebp-0xd0]
	mov [esp+0x8], eax
	mov edx, [ebp-0xd8]
	mov eax, [edx+0x74]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call CG_PlaySoundAlias
	jmp CG_EntityEvent_80
CG_EntityEvent_380:
	mov edx, [ebp-0xc8]
	mov eax, [edx+0x190]
	jmp CG_EntityEvent_1540
CG_EntityEvent_1120:
	mov ecx, [ebp-0xc8]
	mov eax, [ecx+0x1c0]
	jmp CG_EntityEvent_1550
CG_EntityEvent_1130:
	mov ecx, [ebp-0xc8]
	mov eax, [ecx+0x1c8]
	jmp CG_EntityEvent_1560
CG_EntityEvent_360:
	mov eax, cgArray
	mov eax, [eax+0x5036c]
	test eax, eax
	jnz CG_EntityEvent_80
	mov [esp+0x4], ebx
	mov edx, [ebp+0x8]
	mov [esp], edx
	call CG_SelectWeaponIndex
	jmp CG_EntityEvent_80
CG_EntityEvent_350:
	cmp byte [ebp-0xc1], 0x0
	jz CG_EntityEvent_1570
	mov eax, [eax+0x160]
CG_EntityEvent_1600:
	mov [esp+0x8], eax
	mov edx, [ebp-0xd8]
	mov eax, [edx]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call CG_PlayEntitySoundAlias
	jmp CG_EntityEvent_1580
CG_EntityEvent_340:
	cmp byte [ebp-0xc1], 0x0
	jz CG_EntityEvent_1590
	mov eax, [eax+0x158]
	jmp CG_EntityEvent_1600
CG_EntityEvent_1100:
	mov edx, [ebp-0xc8]
	mov eax, [edx+0x1b8]
	test eax, eax
	jz CG_EntityEvent_1610
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call CG_StopSoundAlias
CG_EntityEvent_1610:
	mov edx, [ebp-0xc8]
	mov eax, [edx+0x1b0]
	test eax, eax
	jz CG_EntityEvent_80
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call CG_StopSoundAlias
	jmp CG_EntityEvent_80
CG_EntityEvent_1330:
	mov byte [ebp-0x9e], 0x0
	jmp CG_EntityEvent_1620
CG_EntityEvent_1320:
	lea eax, [esi+esi*8]
	mov edx, eax
	shl edx, 0x4
	add eax, edx
	lea eax, [esi+eax*2]
	mov ecx, [ebp-0xdc]
	lea eax, [ecx+eax*4+0xe9f30]
	lea edx, [eax+0x4]
	mov [ebp-0xb0], edx
	mov eax, [eax+0x4]
	test eax, eax
	jz CG_EntityEvent_80
	mov dword [esp+0xc], 0x26
	lea eax, [ebp-0x9e]
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call CL_GetClientName
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov edx, [ebp-0xb0]
	mov eax, [edx+0x20]
	mov [esp], eax
	call CG_DrawScoreboard_GetTeamColorIndex
	mov [ebp-0xab], al
	jmp CG_EntityEvent_1630
CG_EntityEvent_480:
	mov eax, cgMedia
	mov eax, [eax+0x1038]
	mov [esp+0x8], eax
	mov edx, [ebp-0xd8]
	mov eax, [edx+0x74]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call CG_PlayEntitySoundAlias
	jmp CG_EntityEvent_80
CG_EntityEvent_1590:
	mov eax, [eax+0x154]
	jmp CG_EntityEvent_1600
CG_EntityEvent_1570:
	mov eax, [eax+0x15c]
	jmp CG_EntityEvent_1600
CG_EntityEvent_1350:
	mov ecx, [ebp-0xb0]
	test ecx, ecx
	jz CG_EntityEvent_1620
	mov eax, cgArray
	mov edx, [eax+0x5052c]
	test edx, edx
	jnz CG_EntityEvent_80
	mov edx, [ebp-0xb0]
	mov eax, [edx+0x20]
	test eax, eax
	jz CG_EntityEvent_1640
	mov ecx, [ebp-0xb4]
	cmp eax, [ecx+0x20]
	jz CG_EntityEvent_1650
CG_EntityEvent_1640:
	lea eax, [ebp-0x9e]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_cgame_youwerekil
	call va
CG_EntityEvent_1680:
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_PriorityCenterPrint
	jmp CG_EntityEvent_1620
CG_EntityEvent_1340:
	mov eax, cgArray
	mov esi, [eax+0x5052c]
	test esi, esi
	jnz CG_EntityEvent_80
	mov edx, [ebp-0xb0]
	mov eax, [edx+0x20]
	test eax, eax
	jz CG_EntityEvent_1660
	mov ecx, [ebp-0xb4]
	cmp eax, [ecx+0x20]
	jz CG_EntityEvent_1670
CG_EntityEvent_1660:
	lea edx, [ebp-0x78]
	mov [esp+0x4], edx
	mov dword [esp], _cstring_cgame_youkilleds
	call va
CG_EntityEvent_1690:
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call CG_PriorityCenterPrint
	jmp CG_EntityEvent_1620
CG_EntityEvent_1650:
	mov dword [esp+0x8], _cstring_cgame_teammate
	lea eax, [ebp-0x9e]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_cgame_youwerekil1
	call va
	jmp CG_EntityEvent_1680
CG_EntityEvent_1670:
	mov dword [esp+0x8], _cstring_cgame_teammate
	lea eax, [ebp-0x78]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_cgame_youkilled1
	call va
	jmp CG_EntityEvent_1690
CG_EntityEvent_2430:
	mov dword [esp+0x4], 0x7
	mov dword [esp], _cstring_killiconheadshot
CG_EntityEvent_1700:
	call Material_RegisterHandle
	mov [ebp-0xb8], eax
	movss xmm0, dword [_float_1_39999998]
	movss [ebp-0xbc], xmm0
	mov ebx, [ebp-0xbc]
	jmp CG_EntityEvent_1390
CG_EntityEvent_2440:
	mov dword [esp+0x4], 0x7
	mov dword [esp], _cstring_killiconcrush
	jmp CG_EntityEvent_1700
CG_EntityEvent_2450:
	mov dword [esp+0x4], 0x7
	mov dword [esp], _cstring_killiconfalling
	jmp CG_EntityEvent_1700
CG_EntityEvent_2460:
	mov dword [esp+0x4], 0x7
	mov dword [esp], _cstring_killiconsuicide
	jmp CG_EntityEvent_1700
CG_EntityEvent_1360:
	mov dword [esp+0x4], 0x7
	mov dword [esp], _cstring_killicondied
	call Material_RegisterHandle
	mov [ebp-0xb8], eax
	movss xmm0, dword [_float_1_39999998]
	movss [ebp-0xbc], xmm0
	mov ebx, [ebp-0xbc]
	mov byte [ebp-0xa9], 0x0
	jmp CG_EntityEvent_1390
CG_EntityEvent_2420:
	mov dword [esp+0x4], 0x7
	mov dword [esp], _cstring_killiconmelee
	jmp CG_EntityEvent_1700
CG_EntityEvent_2480:
	mov dword [esp+0x4], 0x7
	mov dword [esp], _cstring_killiconimpact
	jmp CG_EntityEvent_1700
	
	
CG_EntityEvent_jumptab_0:
	dd CG_EntityEvent_160
	dd CG_EntityEvent_1710
	dd CG_EntityEvent_1720
	dd CG_EntityEvent_1730
	dd CG_EntityEvent_1740
	dd CG_EntityEvent_1750
	dd CG_EntityEvent_1760
	dd CG_EntityEvent_1770
	dd CG_EntityEvent_1780
	dd CG_EntityEvent_1790
	dd CG_EntityEvent_1790
	dd CG_EntityEvent_1800
	dd CG_EntityEvent_80
	dd CG_EntityEvent_1810
	dd CG_EntityEvent_1820
	dd CG_EntityEvent_1830
	dd CG_EntityEvent_1840
	dd CG_EntityEvent_1850
	dd CG_EntityEvent_1860
	dd CG_EntityEvent_80
	dd CG_EntityEvent_80
	dd CG_EntityEvent_1870
	dd CG_EntityEvent_1880
	dd CG_EntityEvent_1890
	dd CG_EntityEvent_1900
	dd CG_EntityEvent_1910
	dd CG_EntityEvent_1920
	dd CG_EntityEvent_1920
	dd CG_EntityEvent_1930
	dd CG_EntityEvent_1940
	dd CG_EntityEvent_1950
	dd CG_EntityEvent_1960
	dd CG_EntityEvent_1970
	dd CG_EntityEvent_1980
	dd CG_EntityEvent_1990
	dd CG_EntityEvent_2000
	dd CG_EntityEvent_2010
	dd CG_EntityEvent_2020
	dd CG_EntityEvent_2030
	dd CG_EntityEvent_2040
	dd CG_EntityEvent_2050
	dd CG_EntityEvent_2060
	dd CG_EntityEvent_2070
	dd CG_EntityEvent_2070
	dd CG_EntityEvent_2080
	dd CG_EntityEvent_2090
	dd CG_EntityEvent_2100
	dd CG_EntityEvent_2110
	dd CG_EntityEvent_2120
	dd CG_EntityEvent_2130
	dd CG_EntityEvent_2140
	dd CG_EntityEvent_2150
	dd CG_EntityEvent_2160
	dd CG_EntityEvent_2170
	dd CG_EntityEvent_160
	dd CG_EntityEvent_2180
	dd CG_EntityEvent_2190
	dd CG_EntityEvent_2200
	dd CG_EntityEvent_2210
	dd CG_EntityEvent_2220
	dd CG_EntityEvent_2230
	dd CG_EntityEvent_2240
	dd CG_EntityEvent_80
	dd CG_EntityEvent_2250
	dd CG_EntityEvent_2260
	dd CG_EntityEvent_2270
	dd CG_EntityEvent_2280
	dd CG_EntityEvent_2290
	dd CG_EntityEvent_2300
	dd CG_EntityEvent_2310
	dd CG_EntityEvent_2320
	dd CG_EntityEvent_2330
	dd CG_EntityEvent_2340
	dd CG_EntityEvent_2350
	dd CG_EntityEvent_2360
	dd CG_EntityEvent_2370
	dd CG_EntityEvent_2380
CG_EntityEvent_jumptab_1:
	dd CG_EntityEvent_2390
	dd CG_EntityEvent_2390
	dd CG_EntityEvent_2400
	dd CG_EntityEvent_2400
	dd CG_EntityEvent_2410
CG_EntityEvent_jumptab_2:
	dd CG_EntityEvent_2420
	dd CG_EntityEvent_2430
	dd CG_EntityEvent_2440
	dd CG_EntityEvent_840
	dd CG_EntityEvent_2450
	dd CG_EntityEvent_2460
	dd CG_EntityEvent_2470
	dd CG_EntityEvent_840
	dd CG_EntityEvent_2480


;CG_GetBoneIndex(int, int, unsigned int, unsigned char*)
CG_GetBoneIndex:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x10]
	mov ebx, [ebp+0x14]
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov eax, [ebp+0xc]
	mov [esp], eax
	call Com_GetClientDObj
	test eax, eax
	jz CG_GetBoneIndex_10
	mov [ebp+0x10], ebx
	mov [ebp+0xc], esi
	mov [ebp+0x8], eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp DObjGetBoneIndex
CG_GetBoneIndex_10:
	xor eax, eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;PIXBeginNamedEvent(int, char const*, ...)
PIXBeginNamedEvent:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop


;CG_PlayBoltedEffect(int, FxEffectDef const*, int, unsigned int)
CG_PlayBoltedEffect:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x30
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0x10]
	mov byte [ebp-0x9], 0xfe
	mov [esp+0x4], esi
	mov [esp], ebx
	call Com_GetClientDObj
	mov edx, eax
	test eax, eax
	jz CG_PlayBoltedEffect_10
	lea eax, [ebp-0x9]
	mov [esp+0x8], eax
	mov eax, [ebp+0x14]
	mov [esp+0x4], eax
	mov [esp], edx
	call DObjGetBoneIndex
	test eax, eax
	jz CG_PlayBoltedEffect_10
	movzx eax, byte [ebp-0x9]
	mov [esp+0x10], eax
	mov [esp+0xc], ebx
	mov eax, cgArray
	mov eax, [eax+0x46128]
	mov [esp+0x8], eax
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], esi
	call FX_PlayBoltedEffect
CG_PlayBoltedEffect_10:
	add esp, 0x30
	pop ebx
	pop esi
	pop ebp
	ret
	add [eax], al


;Initialized global or static variables of cg_event:
SECTION .data


;Initialized constant data of cg_event:
SECTION .rdata


;Zero initialized global or static variables of cg_event:
SECTION .bss


;All cstrings:
SECTION .rdata
_cstring_cg_entityeventze:		db "CG_EntityEvent:ZERO EVENT",0ah,0
_cstring_unknown_event_s:		db 015h,"Unknown event: ",27h,"%s",27h,0
_cstring_ent3i__event3i_:		db "ent:%3i  event:%3i ",0
_cstring_cg_entityevents:		db "CG_EntityEvent:%s",0ah,0
_cstring_playing_smoke_gr:		db "Playing smoke grenade at %i at ( %f, %f, %f )",0ah,0
_cstring_event_s_just_for:		db "Event %s just for client %i was sent to other clients",0ah,0
_cstring_error_cg_playfx_:		db "ERROR: CG_PlayFx called with invalid effect id %i",0ah,0
_cstring_killicondied:		db "killicondied",0
_cstring_cg_obituary_targ:		db 015h,"CG_Obituary: target out of range",0
_cstring_cgame_youwerekil:		db "CGAME_YOUWEREKILLED",015h,"%s",0
_cstring_cgame_youkilleds:		db "CGAME_YOUKILLED",015h,"%s",0
_cstring_cgame_teammate:		db "CGAME_TEAMMATE",0
_cstring_cgame_youwerekil1:		db "CGAME_YOUWEREKILLED",015h,"^1&&2^7 %s^7",014h,"%s",0
_cstring_cgame_youkilled1:		db "CGAME_YOUKILLED",015h,"^1&&2^7 %s^7",014h,"%s",0
_cstring_killiconheadshot:		db "killiconheadshot",0
_cstring_killiconcrush:		db "killiconcrush",0
_cstring_killiconfalling:		db "killiconfalling",0
_cstring_killiconsuicide:		db "killiconsuicide",0
_cstring_killiconmelee:		db "killiconmelee",0
_cstring_killiconimpact:		db "killiconimpact",0



;All constant floats and doubles:
SECTION .rdata
_float_0_01000000:		dd 0x3c23d70a	; 0.01
_float_12_00000000:		dd 0x41400000	; 12
_float_26_00000000:		dd 0x41d00000	; 26
_float_4_00000000:		dd 0x40800000	; 4
_float_24_00000000:		dd 0x41c00000	; 24
_float_1_39999998:		dd 0x3fb33333	; 1.4
_float_2_79999995:		dd 0x40333333	; 2.8

