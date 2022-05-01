;Imports of cg_event:
	extern cgMedia
	extern _Z23CG_PlayEntitySoundAliasiiP16snd_alias_list_t
	extern _Z20BG_GetEntityTypeNamei
	extern _Z26CG_CalcEntityLerpPositionsiP9centity_s
	extern cg_debugEvents
	extern cgArray
	extern _Z15BG_GetWeaponDefj
	extern _Z10Com_PrintfiPKcz
	extern bg_fallDamageMinHeight
	extern bg_fallDamageMaxHeight
	extern eventnames
	extern _Z9Com_Error11errorParm_tPKcz
	extern vec3_origin
	extern _Z22Ragdoll_ExplosionEventihPKfffS0_f
	extern _Z23DynEntCl_ExplosionEventihPKfffS0_fii
	extern _Z9ByteToDiriPf
	extern _Z21Vec3Basis_RightHandedPKfPfS1_
	extern _Z24CG_ImpactEffectForWeaponiiiPPK11FxEffectDefPP16snd_alias_list_t
	extern _Z21FX_PlayOrientedEffectiPK11FxEffectDefiPKfPA3_S2_
	extern _Z17CG_PlaySoundAliasiiPKfP16snd_alias_list_t
	extern _Z18CL_GetConfigStringii
	extern _Z23CG_PlaySoundAliasByNameiiPKfPKc
	extern _Z31CG_PlaySoundAliasAsMasterByNameiiPKfPKc
	extern _Z18CG_StopSoundsOnEntii
	extern _Z11Com_DPrintfiPKcz
	extern _Z21CG_SetEquippedOffHandii
	extern _Z19BG_WeaponIsClipOnlyi
	extern _Z18CG_OutOfAmmoChangei
	extern _Z9CL_SetADSih
	extern _Z17CG_MenuShowNotifyii
	extern _Z19CG_SwitchOffHandCmdi
	extern scr_const
	extern _Z13CG_FireWeaponiP9centity_sitjPK13playerState_s
	extern _Z19CG_EjectWeaponBrassiPK13entityState_si
	extern _Z19DynEntCl_MeleeEventii
	extern _Z13CG_UseOffHandiPK9centity_sj
	extern _Z14CG_PrepOffHandiPK13entityState_sj
	extern _Z18CG_MeleeBloodEventiPK9centity_si
	extern _Z19CG_StartShakeCameraifiPff
	extern cg_entitiesArray
	extern _Z27CG_CompassAddWeaponPingInfoiPK9centity_sPKfi
	extern _Z17CG_BulletHitEventiiiiPKfS0_S0_iihii
	extern _Z23CG_BulletHitClientEventiiPKfS0_iii
	extern _Z23CG_PlayClientSoundAliasiP16snd_alias_list_t
	extern _Z20DynEntCl_JitterEventiPKfffff
	extern _Z14Com_PrintErroriPKcz
	extern cgsArray
	extern _Z12SL_GetStringPKcj
	extern _Z17Com_GetClientDObjii
	extern _Z16DObjGetBoneIndexPK6DObj_sjPh
	extern _Z19FX_PlayBoltedEffectiPK11FxEffectDefiii
	extern _Z13Scr_SetStringPtj
	extern _Z23Material_RegisterHandlePKci
	extern cg_footsteps
	extern _Z17CG_StopSoundAliasiiP16snd_alias_list_t
	extern _Z12AnglesToAxisPKfPA3_f
	extern _Z16CL_GetClientNameiiPci
	extern _Z35CG_DrawScoreboard_GetTeamColorIndexii
	extern _Z20CL_DeathMessagePrintiPKccS0_cP8Materialffh
	extern _Z12CL_SetStancei11StanceState
	extern _Z20CG_SelectWeaponIndexij
	extern _Z2vaPKcz
	extern _Z22CG_PriorityCenterPrintiPKci

;Exports of cg_event:
	global _Z17CG_EquipmentSoundiih16EquipmentSound_t
	global _Z14CG_CheckEventsiP9centity_s
	global _Z14CG_EntityEventiP9centity_si
	global _Z15CG_GetBoneIndexiijPh
	global _Z18PIXBeginNamedEventiPKcz
	global _Z19CG_PlayBoltedEffectiPK11FxEffectDefij


SECTION .text


;CG_EquipmentSound(int, int, unsigned char, EquipmentSound_t)
_Z17CG_EquipmentSoundiih16EquipmentSound_t:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, eax
	mov eax, [ebp+0x8]
	test cl, cl
	jz _Z17CG_EquipmentSoundiih16EquipmentSound_t_10
	cmp eax, 0x5
	jbe _Z17CG_EquipmentSoundiih16EquipmentSound_t_20
_Z17CG_EquipmentSoundiih16EquipmentSound_t_50:
	mov eax, cgMedia
	mov eax, [eax+0x102c]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov [esp], ebx
	call _Z23CG_PlayEntitySoundAliasiiP16snd_alias_list_t
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z17CG_EquipmentSoundiih16EquipmentSound_t_10:
	cmp eax, 0x5
	jbe _Z17CG_EquipmentSoundiih16EquipmentSound_t_30
_Z17CG_EquipmentSoundiih16EquipmentSound_t_110:
	mov eax, cgMedia
	mov eax, [eax+0x1028]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov [esp], ebx
	call _Z23CG_PlayEntitySoundAliasiiP16snd_alias_list_t
_Z17CG_EquipmentSoundiih16EquipmentSound_t_40:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z17CG_EquipmentSoundiih16EquipmentSound_t_20:
	jmp dword [eax*4+_Z17CG_EquipmentSoundiih16EquipmentSound_t_jumptab_0]
_Z17CG_EquipmentSoundiih16EquipmentSound_t_30:
	jmp dword [eax*4+_Z17CG_EquipmentSoundiih16EquipmentSound_t_jumptab_1]
_Z17CG_EquipmentSoundiih16EquipmentSound_t_120:
	mov eax, cgMedia
	mov eax, [eax+0x1020]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov [esp], ebx
	call _Z23CG_PlayEntitySoundAliasiiP16snd_alias_list_t
	jmp _Z17CG_EquipmentSoundiih16EquipmentSound_t_40
_Z17CG_EquipmentSoundiih16EquipmentSound_t_100:
	mov eax, cgMedia
	mov eax, [eax+0x1004]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov [esp], ebx
	call _Z23CG_PlayEntitySoundAliasiiP16snd_alias_list_t
	jmp _Z17CG_EquipmentSoundiih16EquipmentSound_t_40
_Z17CG_EquipmentSoundiih16EquipmentSound_t_90:
	mov eax, cgMedia
	mov eax, [eax+0x100c]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov [esp], ebx
	call _Z23CG_PlayEntitySoundAliasiiP16snd_alias_list_t
	jmp _Z17CG_EquipmentSoundiih16EquipmentSound_t_40
_Z17CG_EquipmentSoundiih16EquipmentSound_t_80:
	mov eax, cgMedia
	mov eax, [eax+0x1014]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov [esp], ebx
	call _Z23CG_PlayEntitySoundAliasiiP16snd_alias_list_t
	jmp _Z17CG_EquipmentSoundiih16EquipmentSound_t_40
_Z17CG_EquipmentSoundiih16EquipmentSound_t_70:
	mov eax, cgMedia
	mov eax, [eax+0x101c]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov [esp], ebx
	call _Z23CG_PlayEntitySoundAliasiiP16snd_alias_list_t
	jmp _Z17CG_EquipmentSoundiih16EquipmentSound_t_40
_Z17CG_EquipmentSoundiih16EquipmentSound_t_60:
	mov eax, cgMedia
	mov eax, [eax+0x1024]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov [esp], ebx
	call _Z23CG_PlayEntitySoundAliasiiP16snd_alias_list_t
	jmp _Z17CG_EquipmentSoundiih16EquipmentSound_t_40
_Z17CG_EquipmentSoundiih16EquipmentSound_t_160:
	mov eax, cgMedia
	mov eax, [eax+0x1000]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov [esp], ebx
	call _Z23CG_PlayEntitySoundAliasiiP16snd_alias_list_t
	jmp _Z17CG_EquipmentSoundiih16EquipmentSound_t_40
_Z17CG_EquipmentSoundiih16EquipmentSound_t_150:
	mov eax, cgMedia
	mov eax, [eax+0x1008]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov [esp], ebx
	call _Z23CG_PlayEntitySoundAliasiiP16snd_alias_list_t
	jmp _Z17CG_EquipmentSoundiih16EquipmentSound_t_40
_Z17CG_EquipmentSoundiih16EquipmentSound_t_140:
	mov eax, cgMedia
	mov eax, [eax+0x1010]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov [esp], ebx
	call _Z23CG_PlayEntitySoundAliasiiP16snd_alias_list_t
	jmp _Z17CG_EquipmentSoundiih16EquipmentSound_t_40
_Z17CG_EquipmentSoundiih16EquipmentSound_t_130:
	mov eax, cgMedia
	mov eax, [eax+0x1018]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov [esp], ebx
	call _Z23CG_PlayEntitySoundAliasiiP16snd_alias_list_t
	jmp _Z17CG_EquipmentSoundiih16EquipmentSound_t_40
	nop
	
	
_Z17CG_EquipmentSoundiih16EquipmentSound_t_jumptab_0:
	dd _Z17CG_EquipmentSoundiih16EquipmentSound_t_50
	dd _Z17CG_EquipmentSoundiih16EquipmentSound_t_60
	dd _Z17CG_EquipmentSoundiih16EquipmentSound_t_70
	dd _Z17CG_EquipmentSoundiih16EquipmentSound_t_80
	dd _Z17CG_EquipmentSoundiih16EquipmentSound_t_90
	dd _Z17CG_EquipmentSoundiih16EquipmentSound_t_100
_Z17CG_EquipmentSoundiih16EquipmentSound_t_jumptab_1:
	dd _Z17CG_EquipmentSoundiih16EquipmentSound_t_110
	dd _Z17CG_EquipmentSoundiih16EquipmentSound_t_120
	dd _Z17CG_EquipmentSoundiih16EquipmentSound_t_130
	dd _Z17CG_EquipmentSoundiih16EquipmentSound_t_140
	dd _Z17CG_EquipmentSoundiih16EquipmentSound_t_150
	dd _Z17CG_EquipmentSoundiih16EquipmentSound_t_160


;CG_CheckEvents(int, centity_s*)
_Z14CG_CheckEventsiP9centity_s:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov esi, [ebp+0xc]
	cmp dword [esi+0xd0], 0x11
	jle _Z14CG_CheckEventsiP9centity_s_10
	mov eax, [esi+0x1c4]
	test eax, eax
	jz _Z14CG_CheckEventsiP9centity_s_20
_Z14CG_CheckEventsiP9centity_s_90:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z14CG_CheckEventsiP9centity_s_10:
	mov ebx, [esi+0x16c]
	test ebx, ebx
	jz _Z14CG_CheckEventsiP9centity_s_30
	mov eax, [esi+0x1c4]
	lea edx, [ebx+0x40]
	lea ecx, [eax-0x100]
	cmp eax, edx
	cmovg eax, ecx
	mov [esi+0x1c4], eax
	mov edx, ebx
	sub edx, eax
	cmp edx, 0x4
	jg _Z14CG_CheckEventsiP9centity_s_40
	cmp [esi+0x1c4], ebx
	jl _Z14CG_CheckEventsiP9centity_s_50
_Z14CG_CheckEventsiP9centity_s_60:
	mov [esi+0x1c4], ebx
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z14CG_CheckEventsiP9centity_s_30:
	mov dword [esi+0x1c4], 0x0
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z14CG_CheckEventsiP9centity_s_20:
	mov dword [esi+0x1c4], 0x1
	mov eax, [esi+0xd0]
	mov [esp], eax
	call _Z20BG_GetEntityTypeNamei
	mov [esp+0x4], eax
	mov dword [esp], 0xffffffff
	call _Z18PIXBeginNamedEventiPKcz
	mov [esp+0x4], esi
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z26CG_CalcEntityLerpPositionsiP9centity_s
	mov eax, [esi+0xd0]
	sub eax, 0x11
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z14CG_EntityEventiP9centity_si
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z14CG_CheckEventsiP9centity_s_40:
	lea eax, [ebx-0x4]
	mov [esi+0x1c4], eax
	cmp [esi+0x1c4], ebx
	jge _Z14CG_CheckEventsiP9centity_s_60
_Z14CG_CheckEventsiP9centity_s_50:
	mov [esp+0x4], esi
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z26CG_CalcEntityLerpPositionsiP9centity_s
	movzx edx, byte [esi+0x168]
	mov [ebp-0x19], dl
	mov edi, [esi+0x1c4]
	cmp edi, [esi+0x16c]
	jz _Z14CG_CheckEventsiP9centity_s_70
_Z14CG_CheckEventsiP9centity_s_80:
	mov eax, edi
	and eax, 0x3
	mov ebx, [esi+eax*4+0x170]
	mov eax, [esi+eax*4+0x180]
	mov [esi+0x168], eax
	lea eax, [ebx+0x11]
	mov [esp], eax
	call _Z20BG_GetEntityTypeNamei
	mov [esp+0x4], eax
	mov dword [esp], 0xffffffff
	call _Z18PIXBeginNamedEventiPKcz
	mov [esp+0x8], ebx
	mov [esp+0x4], esi
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z14CG_EntityEventiP9centity_si
	add edi, 0x1
	cmp edi, [esi+0x16c]
	jnz _Z14CG_CheckEventsiP9centity_s_80
_Z14CG_CheckEventsiP9centity_s_70:
	movzx eax, byte [ebp-0x19]
	mov [esi+0x168], eax
	mov eax, [esi+0x16c]
	mov [esi+0x1c4], eax
	jmp _Z14CG_CheckEventsiP9centity_s_90
	add [eax], al


;CG_EntityEvent(int, centity_s*, int)
_Z14CG_EntityEventiP9centity_si:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x10c
	mov edi, [ebp+0x10]
	test edi, edi
	jnz _Z14CG_EntityEventiP9centity_si_10
	mov eax, cg_debugEvents
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z14CG_EntityEventiP9centity_si_20
_Z14CG_EntityEventiP9centity_si_80:
	add esp, 0x10c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z14CG_EntityEventiP9centity_si_10:
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
	jnz _Z14CG_EntityEventiP9centity_si_30
_Z14CG_EntityEventiP9centity_si_90:
	xor eax, eax
_Z14CG_EntityEventiP9centity_si_100:
	mov [ebp-0xc1], al
	mov ebx, cg_debugEvents
	mov eax, [ebx]
	cmp byte [eax+0xc], 0x0
	jnz _Z14CG_EntityEventiP9centity_si_40
_Z14CG_EntityEventiP9centity_si_180:
	cmp byte [ebp-0xc1], 0x0
	jz _Z14CG_EntityEventiP9centity_si_50
	mov eax, cgArray
	mov eax, [eax+0x46224]
	mov [ebp-0xcc], eax
	mov ecx, eax
_Z14CG_EntityEventiP9centity_si_150:
	mov edx, [ebp-0xd8]
	mov ebx, [edx+0x8c]
	cmp ebx, 0x40
	mov eax, 0x0
	cmovae ebx, eax
	mov [esp], ecx
	call _Z15BG_GetWeaponDefj
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
	ja _Z14CG_EntityEventiP9centity_si_60
	cmp byte [ebp-0xc1], 0x0
	jz _Z14CG_EntityEventiP9centity_si_70
	lea edx, [esi+edi]
	mov eax, cgMedia
	mov eax, [eax+edx*4+0xde4]
	mov [esp+0x8], eax
	mov ecx, [ebp-0xd8]
	mov eax, [ecx]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z23CG_PlayEntitySoundAliasiiP16snd_alias_list_t
_Z14CG_EntityEventiP9centity_si_170:
	mov edx, cgArray
	cmp ebx, [edx+0x46218]
	jnz _Z14CG_EntityEventiP9centity_si_80
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
_Z14CG_EntityEventiP9centity_si_30:
	cmp edx, [eax+0xe8]
	jnz _Z14CG_EntityEventiP9centity_si_90
	mov eax, 0x1
	jmp _Z14CG_EntityEventiP9centity_si_100
_Z14CG_EntityEventiP9centity_si_20:
	mov dword [esp+0x4], _cstring_cg_entityeventze
	mov dword [esp], 0x15
	call _Z10Com_PrintfiPKcz
	add esp, 0x10c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z14CG_EntityEventiP9centity_si_60:
	lea eax, [edi-0x6a]
	cmp eax, 0x1c
	ja _Z14CG_EntityEventiP9centity_si_110
	cmp byte [ebp-0xc1], 0x0
	jz _Z14CG_EntityEventiP9centity_si_120
	lea edx, [esi+edi]
	mov eax, cgMedia
	mov eax, [eax+edx*4+0xd70]
_Z14CG_EntityEventiP9centity_si_190:
	mov [esp+0x8], eax
	mov edx, [ebp-0xd8]
	mov eax, [edx]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z23CG_PlayEntitySoundAliasiiP16snd_alias_list_t
	mov eax, cgMedia
	mov eax, [eax+0x264]
	mov [esp+0x8], eax
	mov edx, [ebp-0xd8]
	mov eax, [edx]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z23CG_PlayEntitySoundAliasiiP16snd_alias_list_t
	mov eax, cgArray
	cmp ebx, [eax+0x46218]
	jnz _Z14CG_EntityEventiP9centity_si_80
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
	jp _Z14CG_EntityEventiP9centity_si_130
	jbe _Z14CG_EntityEventiP9centity_si_80
_Z14CG_EntityEventiP9centity_si_130:
	subss xmm2, [_float_12_00000000]
	divss xmm2, dword [_float_26_00000000]
	movss xmm0, dword [_float_4_00000000]
	mulss xmm2, xmm0
	addss xmm2, xmm0
	cvttss2si eax, xmm2
	cmp eax, 0x18
	jle _Z14CG_EntityEventiP9centity_si_140
	movss xmm1, dword [_float_24_00000000]
_Z14CG_EntityEventiP9centity_si_1160:
	pxor xmm0, xmm0
	subss xmm0, xmm1
	mov edx, cgArray
	movss [edx+0x492bc], xmm0
	mov eax, [edx+0x46128]
	mov [edx+0x492c0], eax
	jmp _Z14CG_EntityEventiP9centity_si_80
_Z14CG_EntityEventiP9centity_si_50:
	mov eax, [ebp-0xd8]
	mov eax, [eax+0xc4]
	mov [ebp-0xcc], eax
	mov ecx, eax
	jmp _Z14CG_EntityEventiP9centity_si_150
_Z14CG_EntityEventiP9centity_si_110:
	cmp edi, 0x4c
	ja _Z14CG_EntityEventiP9centity_si_160
	jmp dword [edi*4+_Z14CG_EntityEventiP9centity_si_jumptab_0]
_Z14CG_EntityEventiP9centity_si_70:
	lea edx, [esi+edi]
	mov eax, cgMedia
	mov eax, [eax+edx*4+0xcfc]
	mov [esp+0x8], eax
	mov edx, [ebp-0xd8]
	mov eax, [edx]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z23CG_PlayEntitySoundAliasiiP16snd_alias_list_t
	jmp _Z14CG_EntityEventiP9centity_si_170
_Z14CG_EntityEventiP9centity_si_160:
	mov eax, eventnames
	mov eax, [eax+edi*4]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_unknown_event_s
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z14CG_EntityEventiP9centity_si_80
_Z14CG_EntityEventiP9centity_si_40:
	mov [esp+0xc], edi
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_ent3i__event3i_
	mov dword [esp], 0x15
	call _Z10Com_PrintfiPKcz
	mov eax, [ebx]
	cmp byte [eax+0xc], 0x0
	jz _Z14CG_EntityEventiP9centity_si_180
	mov eax, eventnames
	mov eax, [eax+edi*4]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_cg_entityevents
	mov dword [esp], 0x15
	call _Z10Com_PrintfiPKcz
	jmp _Z14CG_EntityEventiP9centity_si_180
_Z14CG_EntityEventiP9centity_si_120:
	lea edx, [esi+edi]
	mov eax, cgMedia
	mov eax, [eax+edx*4+0xc88]
	jmp _Z14CG_EntityEventiP9centity_si_190
_Z14CG_EntityEventiP9centity_si_2110:
	mov edx, cgArray
	mov dword [edx+0x503f8], 0x1
_Z14CG_EntityEventiP9centity_si_2100:
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
	call _Z22Ragdoll_ExplosionEventihPKfffS0_f
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
	call _Z23DynEntCl_ExplosionEventihPKfffS0_fii
	lea ebx, [ebp-0x50]
	mov [esp+0x4], ebx
	mov ecx, [ebp-0xd8]
	mov eax, [ecx+0x9c]
	mov [esp], eax
	call _Z9ByteToDiriPf
	lea eax, [ebp-0x38]
	mov [esp+0x8], eax
	lea eax, [ebp-0x44]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z21Vec3Basis_RightHandedPKfPfS1_
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
	call _Z24CG_ImpactEffectForWeaponiiiPPK11FxEffectDefPP16snd_alias_list_t
	mov edx, [ebp-0x1c]
	test edx, edx
	jz _Z14CG_EntityEventiP9centity_si_200
	mov [esp+0x10], ebx
	mov eax, [ebp-0xd0]
	mov [esp+0xc], eax
	mov eax, cgArray
	mov eax, [eax+0x46128]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z21FX_PlayOrientedEffectiPK11FxEffectDefiPKfPA3_S2_
_Z14CG_EntityEventiP9centity_si_200:
	mov eax, [ebp-0x20]
	test eax, eax
	jz _Z14CG_EntityEventiP9centity_si_210
	mov [esp+0xc], eax
	mov ecx, [ebp-0xd0]
	mov [esp+0x8], ecx
	mov dword [esp+0x4], 0x3fe
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z17CG_PlaySoundAliasiiPKfP16snd_alias_list_t
_Z14CG_EntityEventiP9centity_si_210:
	mov ecx, [ebp-0xc8]
	mov edx, [ecx+0x58c]
	test edx, edx
	jz _Z14CG_EntityEventiP9centity_si_220
	mov [esp+0x10], ebx
	mov eax, [ebp-0xd0]
	mov [esp+0xc], eax
	mov eax, cgArray
	mov eax, [eax+0x46128]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z21FX_PlayOrientedEffectiPK11FxEffectDefiPKfPA3_S2_
	mov ecx, [ebp-0xc8]
_Z14CG_EntityEventiP9centity_si_220:
	mov eax, [ecx+0x598]
	test eax, eax
	jz _Z14CG_EntityEventiP9centity_si_230
	mov [esp+0xc], eax
	mov eax, [ebp-0xd0]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x3fe
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z17CG_PlaySoundAliasiiPKfP16snd_alias_list_t
_Z14CG_EntityEventiP9centity_si_230:
	mov eax, cgArray
	mov dword [eax+0x503f8], 0x0
	jmp _Z14CG_EntityEventiP9centity_si_80
_Z14CG_EntityEventiP9centity_si_2140:
	mov edx, cgArray
	mov dword [edx+0x503f8], 0x1
_Z14CG_EntityEventiP9centity_si_2130:
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
	call _Z22Ragdoll_ExplosionEventihPKfffS0_f
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
	call _Z23DynEntCl_ExplosionEventihPKfffS0_fii
	lea ebx, [ebp-0x50]
	mov [esp+0x4], ebx
	mov ecx, [ebp-0xd8]
	mov eax, [ecx+0x9c]
	mov [esp], eax
	call _Z9ByteToDiriPf
	lea eax, [ebp-0x38]
	mov [esp+0x8], eax
	lea eax, [ebp-0x44]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z21Vec3Basis_RightHandedPKfPfS1_
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
	call _Z24CG_ImpactEffectForWeaponiiiPPK11FxEffectDefPP16snd_alias_list_t
	mov edx, [ebp-0x1c]
	test edx, edx
	jz _Z14CG_EntityEventiP9centity_si_240
	mov [esp+0x10], ebx
	mov eax, [ebp-0xd0]
	mov [esp+0xc], eax
	mov eax, cgArray
	mov eax, [eax+0x46128]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z21FX_PlayOrientedEffectiPK11FxEffectDefiPKfPA3_S2_
_Z14CG_EntityEventiP9centity_si_240:
	mov eax, [ebp-0x20]
	test eax, eax
	jz _Z14CG_EntityEventiP9centity_si_250
	mov [esp+0xc], eax
	mov ecx, [ebp-0xd0]
	mov [esp+0x8], ecx
	mov dword [esp+0x4], 0x3fe
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z17CG_PlaySoundAliasiiPKfP16snd_alias_list_t
_Z14CG_EntityEventiP9centity_si_250:
	mov edx, [ebp-0xc8]
	mov ecx, [edx+0x58c]
	test ecx, ecx
	jz _Z14CG_EntityEventiP9centity_si_260
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
	call _Z10Com_PrintfiPKcz
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
	call _Z21FX_PlayOrientedEffectiPK11FxEffectDefiPKfPA3_S2_
	mov ecx, [ebp-0xc8]
_Z14CG_EntityEventiP9centity_si_1170:
	mov edx, [ecx+0x598]
	test edx, edx
	jz _Z14CG_EntityEventiP9centity_si_270
	mov eax, [ebp-0xd8]
	test byte [eax+0xa], 0x1
	jz _Z14CG_EntityEventiP9centity_si_280
	mov ecx, cgArray
	mov eax, [ecx+0x46128]
	mov ecx, [ebp-0xd8]
	sub eax, [ecx+0x54]
	cmp eax, 0xc7
	jg _Z14CG_EntityEventiP9centity_si_270
_Z14CG_EntityEventiP9centity_si_280:
	mov [esp+0xc], edx
	mov eax, [ebp-0xd0]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x3fe
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z17CG_PlaySoundAliasiiPKfP16snd_alias_list_t
_Z14CG_EntityEventiP9centity_si_270:
	mov ecx, cgArray
	mov dword [ecx+0x503f8], 0x0
	jmp _Z14CG_EntityEventiP9centity_si_80
_Z14CG_EntityEventiP9centity_si_2120:
	lea ebx, [ebp-0x50]
	mov [esp+0x4], ebx
	mov ecx, [ebp-0xd8]
	mov eax, [ecx+0x9c]
	mov [esp], eax
	call _Z9ByteToDiriPf
	lea eax, [ebp-0x38]
	mov [esp+0x8], eax
	lea eax, [ebp-0x44]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z21Vec3Basis_RightHandedPKfPfS1_
	mov eax, [ebp-0xc8]
	mov edx, [eax+0x58c]
	test edx, edx
	jz _Z14CG_EntityEventiP9centity_si_290
	mov [esp+0x10], ebx
	mov ecx, [ebp-0xd0]
	mov [esp+0xc], ecx
	mov eax, cgArray
	mov eax, [eax+0x46128]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z21FX_PlayOrientedEffectiPK11FxEffectDefiPKfPA3_S2_
_Z14CG_EntityEventiP9centity_si_290:
	mov edx, [ebp-0xc8]
	mov eax, [edx+0x598]
	test eax, eax
	jz _Z14CG_EntityEventiP9centity_si_80
	mov [esp+0xc], eax
	mov ecx, [ebp-0xd0]
	mov [esp+0x8], ecx
	mov dword [esp+0x4], 0x3fe
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z17CG_PlaySoundAliasiiPKfP16snd_alias_list_t
	jmp _Z14CG_EntityEventiP9centity_si_80
_Z14CG_EntityEventiP9centity_si_2150:
	mov eax, cgArray
	mov dword [eax+0x503f8], 0x1
	lea ebx, [ebp-0x50]
	mov [esp+0x4], ebx
	mov edx, [ebp-0xd8]
	mov eax, [edx+0x9c]
	mov [esp], eax
	call _Z9ByteToDiriPf
	lea eax, [ebp-0x38]
	mov [esp+0x8], eax
	lea eax, [ebp-0x44]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z21Vec3Basis_RightHandedPKfPfS1_
	mov eax, cgMedia
	mov eax, [eax+0x2754]
	mov eax, [eax+0x4]
	mov edx, [eax+0x5ac]
	test edx, edx
	jz _Z14CG_EntityEventiP9centity_si_300
	mov [esp+0x10], ebx
	mov ecx, [ebp-0xd0]
	mov [esp+0xc], ecx
	mov ecx, cgArray
	mov eax, [ecx+0x46128]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z21FX_PlayOrientedEffectiPK11FxEffectDefiPKfPA3_S2_
_Z14CG_EntityEventiP9centity_si_300:
	mov edx, cgArray
	mov dword [edx+0x503f8], 0x0
	jmp _Z14CG_EntityEventiP9centity_si_80
_Z14CG_EntityEventiP9centity_si_1720:
	mov eax, [ebp-0xd8]
	mov ebx, [eax]
	movzx ecx, byte [ebp-0xc1]
	mov eax, [ebp-0xd4]
	sub eax, 0x7
	cmp eax, 0x4
	ja _Z14CG_EntityEventiP9centity_si_80
	jmp dword [eax*4+_Z14CG_EntityEventiP9centity_si_jumptab_1]
_Z14CG_EntityEventiP9centity_si_1730:
	mov ecx, [ebp-0xd8]
	mov eax, [ecx+0x9c]
	test eax, eax
	jz _Z14CG_EntityEventiP9centity_si_80
	add eax, 0x53e
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z18CL_GetConfigStringii
	mov [esp+0xc], eax
	mov eax, [ebp-0xd8]
	add eax, 0x18
	mov [esp+0x8], eax
	mov edx, [ebp-0xd8]
	mov eax, [edx]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z23CG_PlaySoundAliasByNameiiPKfPKc
	jmp _Z14CG_EntityEventiP9centity_si_80
_Z14CG_EntityEventiP9centity_si_1740:
	mov edx, [ebp-0xd8]
	mov eax, [edx+0x9c]
	test eax, eax
	jz _Z14CG_EntityEventiP9centity_si_80
	add eax, 0x53e
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z18CL_GetConfigStringii
	mov [esp+0xc], eax
	mov eax, [ebp-0xd8]
	add eax, 0x18
	mov [esp+0x8], eax
	mov edx, [ebp-0xd8]
	mov eax, [edx]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z31CG_PlaySoundAliasAsMasterByNameiiPKfPKc
	jmp _Z14CG_EntityEventiP9centity_si_80
_Z14CG_EntityEventiP9centity_si_1750:
	mov edx, [ebp-0xd8]
	mov eax, [edx]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z18CG_StopSoundsOnEntii
	jmp _Z14CG_EntityEventiP9centity_si_80
_Z14CG_EntityEventiP9centity_si_1760:
	mov eax, cgArray
	cmp ebx, [eax+0x46218]
	jz _Z14CG_EntityEventiP9centity_si_310
	mov [esp+0xc], ebx
	mov eax, eventnames
	mov eax, [eax+0x18]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_event_s_just_for
	mov dword [esp], 0x15
	call _Z11Com_DPrintfiPKcz
	jmp _Z14CG_EntityEventiP9centity_si_80
_Z14CG_EntityEventiP9centity_si_1770:
	mov ecx, cgArray
	cmp ebx, [ecx+0x46218]
	jz _Z14CG_EntityEventiP9centity_si_320
	mov [esp+0xc], ebx
	mov eax, eventnames
	mov eax, [eax+0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_event_s_just_for
	mov dword [esp], 0x15
	call _Z11Com_DPrintfiPKcz
	jmp _Z14CG_EntityEventiP9centity_si_80
_Z14CG_EntityEventiP9centity_si_1780:
	mov edx, cgArray
	cmp ebx, [edx+0x46218]
	jz _Z14CG_EntityEventiP9centity_si_330
	mov [esp+0xc], ebx
	mov eax, eventnames
	mov eax, [eax+0x20]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_event_s_just_for
	mov dword [esp], 0x15
	call _Z11Com_DPrintfiPKcz
	jmp _Z14CG_EntityEventiP9centity_si_80
_Z14CG_EntityEventiP9centity_si_1790:
	mov eax, [ebp-0xd8]
	mov ebx, [eax+0x9c]
	lea eax, [ebx-0x1]
	cmp eax, 0x7e
	ja _Z14CG_EntityEventiP9centity_si_80
	mov [esp], ebx
	call _Z15BG_GetWeaponDefj
	cmp edi, 0x9
	jz _Z14CG_EntityEventiP9centity_si_340
	cmp edi, 0xa
	jz _Z14CG_EntityEventiP9centity_si_350
_Z14CG_EntityEventiP9centity_si_1580:
	cmp byte [ebp-0xc1], 0x0
	jz _Z14CG_EntityEventiP9centity_si_80
	mov [esp], ebx
	call _Z15BG_GetWeaponDefj
	cmp dword [eax+0x130], 0x9
	jz _Z14CG_EntityEventiP9centity_si_80
	mov eax, [eax+0x144]
	test eax, eax
	jz _Z14CG_EntityEventiP9centity_si_360
	mov eax, cgArray
	mov eax, [eax+0x5037c]
	test eax, eax
	jnz _Z14CG_EntityEventiP9centity_si_80
	mov [esp+0x4], ebx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z21CG_SetEquippedOffHandii
	jmp _Z14CG_EntityEventiP9centity_si_80
_Z14CG_EntityEventiP9centity_si_1800:
	mov edx, [ebp-0xcc]
	mov [esp], edx
	call _Z19BG_WeaponIsClipOnlyi
	test eax, eax
	jnz _Z14CG_EntityEventiP9centity_si_370
	mov ecx, [ebp-0xc8]
	mov eax, [ecx+0x508]
	test eax, eax
	jnz _Z14CG_EntityEventiP9centity_si_370
	cmp byte [ebp-0xc1], 0x0
	jz _Z14CG_EntityEventiP9centity_si_380
	mov eax, [ecx+0x194]
_Z14CG_EntityEventiP9centity_si_1540:
	mov [esp+0x8], eax
	mov ecx, [ebp-0xd8]
	mov eax, [ecx]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z23CG_PlayEntitySoundAliasiiP16snd_alias_list_t
_Z14CG_EntityEventiP9centity_si_370:
	cmp byte [ebp-0xc1], 0x0
	jz _Z14CG_EntityEventiP9centity_si_80
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z18CG_OutOfAmmoChangei
	jmp _Z14CG_EntityEventiP9centity_si_80
_Z14CG_EntityEventiP9centity_si_1820:
	mov eax, cgArray
	cmp ebx, [eax+0x46218]
	jnz _Z14CG_EntityEventiP9centity_si_390
	cmp byte [ebp-0xc1], 0x0
	jz _Z14CG_EntityEventiP9centity_si_80
	mov dword [esp+0x4], 0x0
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z9CL_SetADSih
	jmp _Z14CG_EntityEventiP9centity_si_80
_Z14CG_EntityEventiP9centity_si_1830:
	cmp byte [ebp-0xc1], 0x0
	jz _Z14CG_EntityEventiP9centity_si_400
	mov ecx, [ebp-0xc8]
	mov eax, [ecx+0x1b4]
_Z14CG_EntityEventiP9centity_si_1190:
	mov [esp+0x8], eax
	mov ecx, [ebp-0xd8]
	mov eax, [ecx]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z23CG_PlayEntitySoundAliasiiP16snd_alias_list_t
	jmp _Z14CG_EntityEventiP9centity_si_80
_Z14CG_EntityEventiP9centity_si_1810:
	mov ecx, cgArray
	cmp ebx, [ecx+0x46218]
	jnz _Z14CG_EntityEventiP9centity_si_410
	cmp byte [ebp-0xc1], 0x0
	jz _Z14CG_EntityEventiP9centity_si_80
	mov dword [esp+0x4], 0x4
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z17CG_MenuShowNotifyii
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z19CG_SwitchOffHandCmdi
	jmp _Z14CG_EntityEventiP9centity_si_80
_Z14CG_EntityEventiP9centity_si_1710:
	mov eax, cgMedia
	mov eax, [eax+0x1030]
	mov [esp+0x8], eax
	mov edx, [ebp-0xd8]
	mov eax, [edx]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z23CG_PlayEntitySoundAliasiiP16snd_alias_list_t
	jmp _Z14CG_EntityEventiP9centity_si_80
_Z14CG_EntityEventiP9centity_si_1920:
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
	call _Z13CG_FireWeaponiP9centity_sitjPK13playerState_s
	jmp _Z14CG_EntityEventiP9centity_si_80
_Z14CG_EntityEventiP9centity_si_1930:
	cmp byte [ebp-0xc1], 0x0
	jz _Z14CG_EntityEventiP9centity_si_420
	mov edx, [ebp-0xc8]
	mov eax, [edx+0x1ac]
_Z14CG_EntityEventiP9centity_si_1180:
	mov [esp+0x8], eax
	mov edx, [ebp-0xd8]
	mov eax, [edx]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z23CG_PlayEntitySoundAliasiiP16snd_alias_list_t
	jmp _Z14CG_EntityEventiP9centity_si_80
_Z14CG_EntityEventiP9centity_si_1940:
	mov dword [esp+0x8], 0x1d
	mov eax, [ebp-0xd8]
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z19CG_EjectWeaponBrassiPK13entityState_si
	jmp _Z14CG_EntityEventiP9centity_si_80
_Z14CG_EntityEventiP9centity_si_1950:
	cmp byte [ebp-0xc1], 0x0
	jz _Z14CG_EntityEventiP9centity_si_430
	mov ecx, [ebp-0xc8]
	mov eax, [ecx+0x19c]
_Z14CG_EntityEventiP9centity_si_1260:
	mov [esp+0x8], eax
	mov ecx, [ebp-0xd8]
	mov eax, [ecx]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z23CG_PlayEntitySoundAliasiiP16snd_alias_list_t
	jmp _Z14CG_EntityEventiP9centity_si_80
_Z14CG_EntityEventiP9centity_si_1960:
	mov edx, [ebp-0xd8]
	mov eax, [edx]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z19DynEntCl_MeleeEventii
	jmp _Z14CG_EntityEventiP9centity_si_80
_Z14CG_EntityEventiP9centity_si_1980:
	mov eax, cgArray
	cmp ebx, [eax+0x46218]
	jnz _Z14CG_EntityEventiP9centity_si_440
	cmp byte [ebp-0xc1], 0x0
	jz _Z14CG_EntityEventiP9centity_si_80
	mov edx, [ebp-0xd8]
	mov eax, [edx+0x9c]
	mov [esp+0x8], eax
	mov ecx, [ebp+0xc]
	mov [esp+0x4], ecx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z13CG_UseOffHandiPK9centity_sj
	jmp _Z14CG_EntityEventiP9centity_si_80
_Z14CG_EntityEventiP9centity_si_1990:
	mov edx, cgArray
	cmp ebx, [edx+0x46218]
	jnz _Z14CG_EntityEventiP9centity_si_450
	cmp byte [ebp-0xc1], 0x0
	jz _Z14CG_EntityEventiP9centity_si_80
	mov ecx, [ebp-0xd8]
	mov eax, [ecx+0x9c]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z21CG_SetEquippedOffHandii
	jmp _Z14CG_EntityEventiP9centity_si_80
_Z14CG_EntityEventiP9centity_si_1970:
	mov eax, cgArray
	cmp ebx, [eax+0x46218]
	jnz _Z14CG_EntityEventiP9centity_si_460
	cmp byte [ebp-0xc1], 0x0
	jz _Z14CG_EntityEventiP9centity_si_80
	mov edx, [ebp-0xd8]
	mov eax, [edx+0x9c]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z14CG_PrepOffHandiPK13entityState_sj
	jmp _Z14CG_EntityEventiP9centity_si_80
_Z14CG_EntityEventiP9centity_si_2000:
	mov edx, [ebp-0xd8]
	mov edi, [edx+0x9c]
	test edi, edi
	jnz _Z14CG_EntityEventiP9centity_si_470
	mov edx, [ebp-0xc8]
	mov eax, [edx+0x1a0]
	test eax, eax
	jz _Z14CG_EntityEventiP9centity_si_480
	mov [esp+0x8], eax
	mov ecx, [ebp-0xd8]
	mov eax, [ecx+0x74]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z23CG_PlayEntitySoundAliasiiP16snd_alias_list_t
	jmp _Z14CG_EntityEventiP9centity_si_80
_Z14CG_EntityEventiP9centity_si_2040:
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
	call _Z13CG_FireWeaponiP9centity_sitjPK13playerState_s
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
	call _Z13CG_FireWeaponiP9centity_sitjPK13playerState_s
	jmp _Z14CG_EntityEventiP9centity_si_80
_Z14CG_EntityEventiP9centity_si_2050:
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
	call _Z13CG_FireWeaponiP9centity_sitjPK13playerState_s
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
	call _Z13CG_FireWeaponiP9centity_sitjPK13playerState_s
	jmp _Z14CG_EntityEventiP9centity_si_80
_Z14CG_EntityEventiP9centity_si_2020:
	mov eax, cgArray
	cmp ebx, [eax+0x46218]
	jnz _Z14CG_EntityEventiP9centity_si_490
	cmp byte [ebp-0xc1], 0x0
	jz _Z14CG_EntityEventiP9centity_si_80
	mov edx, [ebp-0xd8]
	mov eax, [edx+0x9c]
	mov [esp+0x8], eax
	mov ecx, [ebp+0xc]
	mov [esp+0x4], ecx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z18CG_MeleeBloodEventiPK9centity_si
	jmp _Z14CG_EntityEventiP9centity_si_80
_Z14CG_EntityEventiP9centity_si_2030:
	mov dword [esp+0x10], 0x42c80000
	mov edx, [ebp-0xd0]
	mov [esp+0xc], edx
	mov dword [esp+0x8], 0x64
	mov dword [esp+0x4], 0x3d4ccccd
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z19CG_StartShakeCameraifiPff
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
	call _Z13CG_FireWeaponiP9centity_sitjPK13playerState_s
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
	jz _Z14CG_EntityEventiP9centity_si_80
	cmp dword [edx+0xd0], 0x1
	jnz _Z14CG_EntityEventiP9centity_si_80
	mov ecx, [ebp-0xc0]
	mov eax, [ecx+0x59c]
	mov ecx, [ebp+0xc]
	cmp eax, [ecx+0xcc]
	jz _Z14CG_EntityEventiP9centity_si_80
	mov dword [esp+0xc], 0x32
	mov eax, [ebp-0xd0]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z27CG_CompassAddWeaponPingInfoiPK9centity_sPKfi
	jmp _Z14CG_EntityEventiP9centity_si_80
_Z14CG_EntityEventiP9centity_si_2060:
	lea ebx, [ebp-0x2c]
	mov [esp+0x4], ebx
	mov edx, [ebp-0xd8]
	mov eax, [edx+0x9c]
	mov [esp], eax
	call _Z9ByteToDiriPf
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
	call _Z17CG_BulletHitEventiiiiPKfS0_S0_iihii
	jmp _Z14CG_EntityEventiP9centity_si_80
_Z14CG_EntityEventiP9centity_si_2070:
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
	call _Z23CG_BulletHitClientEventiiPKfS0_iii
	jmp _Z14CG_EntityEventiP9centity_si_80
_Z14CG_EntityEventiP9centity_si_2010:
	mov eax, [ebp-0xd8]
	mov esi, [eax+0x9c]
	test esi, esi
	jnz _Z14CG_EntityEventiP9centity_si_500
	mov edx, [ebp-0xc8]
	mov eax, [edx+0x1a4]
	test eax, eax
	jz _Z14CG_EntityEventiP9centity_si_510
	mov [esp+0xc], eax
	mov ecx, [ebp-0xd0]
	mov [esp+0x8], ecx
	mov edx, [ebp-0xd8]
	mov eax, [edx+0x74]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z17CG_PlaySoundAliasiiPKfP16snd_alias_list_t
	jmp _Z14CG_EntityEventiP9centity_si_80
_Z14CG_EntityEventiP9centity_si_1840:
	cmp byte [ebp-0xc1], 0x0
	jz _Z14CG_EntityEventiP9centity_si_520
	mov edx, [ebp-0xc8]
	mov eax, [edx+0x1bc]
_Z14CG_EntityEventiP9centity_si_1270:
	mov [esp+0x8], eax
	mov edx, [ebp-0xd8]
	mov eax, [edx]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z23CG_PlayEntitySoundAliasiiP16snd_alias_list_t
	jmp _Z14CG_EntityEventiP9centity_si_80
_Z14CG_EntityEventiP9centity_si_1850:
	cmp byte [ebp-0xc1], 0x0
	jz _Z14CG_EntityEventiP9centity_si_530
	mov edx, [ebp-0xc8]
	mov eax, [edx+0x1c4]
_Z14CG_EntityEventiP9centity_si_1220:
	mov [esp+0x8], eax
	mov edx, [ebp-0xd8]
	mov eax, [edx]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z23CG_PlayEntitySoundAliasiiP16snd_alias_list_t
	jmp _Z14CG_EntityEventiP9centity_si_80
_Z14CG_EntityEventiP9centity_si_1880:
	cmp byte [ebp-0xc1], 0x0
	jz _Z14CG_EntityEventiP9centity_si_540
	mov ecx, [ebp-0xc8]
	mov eax, [ecx+0x1fc]
_Z14CG_EntityEventiP9centity_si_1200:
	mov [esp+0x8], eax
	mov ecx, [ebp-0xd8]
	mov eax, [ecx]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z23CG_PlayEntitySoundAliasiiP16snd_alias_list_t
	jmp _Z14CG_EntityEventiP9centity_si_80
_Z14CG_EntityEventiP9centity_si_1860:
	cmp byte [ebp-0xc1], 0x0
	jz _Z14CG_EntityEventiP9centity_si_550
	mov edx, [ebp-0xc8]
	mov eax, [edx+0x1cc]
_Z14CG_EntityEventiP9centity_si_1240:
	mov [esp+0x8], eax
	mov edx, [ebp-0xd8]
	mov eax, [edx]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z23CG_PlayEntitySoundAliasiiP16snd_alias_list_t
	jmp _Z14CG_EntityEventiP9centity_si_80
_Z14CG_EntityEventiP9centity_si_1900:
	cmp byte [ebp-0xc1], 0x0
	jz _Z14CG_EntityEventiP9centity_si_560
	mov edx, [ebp-0xc8]
	mov eax, [edx+0x1ec]
_Z14CG_EntityEventiP9centity_si_1210:
	mov [esp+0x8], eax
	mov edx, [ebp-0xd8]
	mov eax, [edx]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z23CG_PlayEntitySoundAliasiiP16snd_alias_list_t
	jmp _Z14CG_EntityEventiP9centity_si_80
_Z14CG_EntityEventiP9centity_si_1870:
	cmp byte [ebp-0xc1], 0x0
	jz _Z14CG_EntityEventiP9centity_si_570
	mov edx, [ebp-0xc8]
	mov eax, [edx+0x1f4]
_Z14CG_EntityEventiP9centity_si_1230:
	mov [esp+0x8], eax
	mov edx, [ebp-0xd8]
	mov eax, [edx]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z23CG_PlayEntitySoundAliasiiP16snd_alias_list_t
	jmp _Z14CG_EntityEventiP9centity_si_80
_Z14CG_EntityEventiP9centity_si_1890:
	cmp byte [ebp-0xc1], 0x0
	jz _Z14CG_EntityEventiP9centity_si_580
	mov edx, [ebp-0xc8]
	mov eax, [edx+0x204]
_Z14CG_EntityEventiP9centity_si_1250:
	mov [esp+0x8], eax
	mov edx, [ebp-0xd8]
	mov eax, [edx]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z23CG_PlayEntitySoundAliasiiP16snd_alias_list_t
	jmp _Z14CG_EntityEventiP9centity_si_80
_Z14CG_EntityEventiP9centity_si_1910:
	cmp byte [ebp-0xc1], 0x0
	jz _Z14CG_EntityEventiP9centity_si_590
	mov ecx, [ebp-0xc8]
	mov eax, [ecx+0x16c]
_Z14CG_EntityEventiP9centity_si_1280:
	mov [esp+0x8], eax
	mov ecx, [ebp-0xd8]
	mov eax, [ecx]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z23CG_PlayEntitySoundAliasiiP16snd_alias_list_t
	jmp _Z14CG_EntityEventiP9centity_si_80
_Z14CG_EntityEventiP9centity_si_2160:
	lea esi, [ebp-0x50]
	mov [esp+0x4], esi
	mov ecx, [ebp-0xd8]
	mov eax, [ecx+0x9c]
	mov [esp], eax
	call _Z9ByteToDiriPf
	lea eax, [ebp-0x38]
	mov [esp+0x8], eax
	lea eax, [ebp-0x44]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z21Vec3Basis_RightHandedPKfPfS1_
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
	call _Z17CG_PlaySoundAliasiiPKfP16snd_alias_list_t
	mov eax, [ebx+0x2754]
	mov edx, [eax+0x4]
	mov ecx, [ebp-0xd8]
	mov eax, [ecx+0x84]
	mov edx, [edx+eax*4+0x5ac]
	test edx, edx
	jz _Z14CG_EntityEventiP9centity_si_600
	mov [esp+0x10], esi
	mov eax, [ebp-0xd0]
	mov [esp+0xc], eax
	mov eax, cgArray
	mov eax, [eax+0x46128]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z21FX_PlayOrientedEffectiPK11FxEffectDefiPKfPA3_S2_
_Z14CG_EntityEventiP9centity_si_600:
	mov ecx, [ebp-0xc8]
	mov edx, [ecx+0x58c]
	test edx, edx
	jz _Z14CG_EntityEventiP9centity_si_610
	mov [esp+0x10], esi
	mov eax, [ebp-0xd0]
	mov [esp+0xc], eax
	mov eax, cgArray
	mov eax, [eax+0x46128]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z21FX_PlayOrientedEffectiPK11FxEffectDefiPKfPA3_S2_
_Z14CG_EntityEventiP9centity_si_610:
	mov ecx, [ebp-0xc8]
	mov eax, [ecx+0x598]
	test eax, eax
	jz _Z14CG_EntityEventiP9centity_si_620
	mov [esp+0xc], eax
	mov eax, [ebp-0xd0]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x3fe
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z17CG_PlaySoundAliasiiPKfP16snd_alias_list_t
_Z14CG_EntityEventiP9centity_si_620:
	mov ecx, [ebp-0xc8]
	mov edx, [ecx+0x594]
	test edx, edx
	jz _Z14CG_EntityEventiP9centity_si_630
	mov [esp+0x10], esi
	mov eax, [ebp-0xd0]
	mov [esp+0xc], eax
	mov eax, cgArray
	mov eax, [eax+0x46128]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z21FX_PlayOrientedEffectiPK11FxEffectDefiPKfPA3_S2_
_Z14CG_EntityEventiP9centity_si_630:
	mov ecx, [ebp-0xc8]
	mov eax, [ecx+0x59c]
	test eax, eax
	jz _Z14CG_EntityEventiP9centity_si_80
	mov [esp+0xc], eax
	mov eax, [ebp-0xd0]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x3fe
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z17CG_PlaySoundAliasiiPKfP16snd_alias_list_t
	jmp _Z14CG_EntityEventiP9centity_si_80
_Z14CG_EntityEventiP9centity_si_2240:
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
	call _Z19CG_StartShakeCameraifiPff
	jmp _Z14CG_EntityEventiP9centity_si_80
_Z14CG_EntityEventiP9centity_si_2250:
	cmp byte [ebp-0xc1], 0x0
	jz _Z14CG_EntityEventiP9centity_si_640
	mov edx, [ebp-0xc8]
	mov eax, [edx+0x1d4]
_Z14CG_EntityEventiP9centity_si_1290:
	mov [esp+0x8], eax
	mov edx, [ebp-0xd8]
	mov eax, [edx]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z23CG_PlayEntitySoundAliasiiP16snd_alias_list_t
	jmp _Z14CG_EntityEventiP9centity_si_80
_Z14CG_EntityEventiP9centity_si_2260:
	cmp byte [ebp-0xc1], 0x0
	jz _Z14CG_EntityEventiP9centity_si_650
	mov eax, [ebp-0xc0]
	test dword [eax+0xb0], 0x300
	jnz _Z14CG_EntityEventiP9centity_si_660
	mov edx, [ebp-0xc8]
	mov eax, [edx+0xb8]
	cmp byte [eax], 0x0
	jnz _Z14CG_EntityEventiP9centity_si_670
_Z14CG_EntityEventiP9centity_si_660:
	mov eax, cgMedia
	mov eax, [eax+0x1048]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z23CG_PlayClientSoundAliasiP16snd_alias_list_t
_Z14CG_EntityEventiP9centity_si_670:
	mov edx, [ebp-0xc8]
	mov eax, [edx+0x1dc]
_Z14CG_EntityEventiP9centity_si_1410:
	mov [esp+0x8], eax
	mov edx, [ebp-0xd8]
	mov eax, [edx]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z23CG_PlayEntitySoundAliasiiP16snd_alias_list_t
	jmp _Z14CG_EntityEventiP9centity_si_80
_Z14CG_EntityEventiP9centity_si_2080:
	mov ecx, [ebp-0xc8]
	mov edx, [ecx+0x208]
	test edx, edx
	jz _Z14CG_EntityEventiP9centity_si_680
	mov ecx, [ebp-0xd8]
	mov eax, [ecx+0x84]
	mov eax, [edx+eax*4]
	mov [esp+0xc], eax
	mov eax, [ebp-0xd0]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x3fe
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z17CG_PlaySoundAliasiiPKfP16snd_alias_list_t
_Z14CG_EntityEventiP9centity_si_680:
	mov esi, cgMedia
	mov eax, [esi+0x2754]
	mov edx, [eax+0x4]
	mov ecx, [ebp-0xd8]
	mov eax, [ecx+0x84]
	mov ebx, [edx+eax*4+0x420]
	test ebx, ebx
	jz _Z14CG_EntityEventiP9centity_si_80
	lea ebx, [ebp-0x50]
	mov [esp+0x4], ebx
	mov eax, [ecx+0x9c]
	mov [esp], eax
	call _Z9ByteToDiriPf
	lea eax, [ebp-0x38]
	mov [esp+0x8], eax
	lea eax, [ebp-0x44]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z21Vec3Basis_RightHandedPKfPfS1_
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
	call _Z21FX_PlayOrientedEffectiPK11FxEffectDefiPKfPA3_S2_
	jmp _Z14CG_EntityEventiP9centity_si_80
_Z14CG_EntityEventiP9centity_si_2090:
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
	call _Z22Ragdoll_ExplosionEventihPKfffS0_f
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
	call _Z23DynEntCl_ExplosionEventihPKfffS0_fii
	lea ebx, [ebp-0x50]
	mov [esp+0x4], ebx
	mov edx, [ebp-0xd8]
	mov eax, [edx+0x9c]
	mov [esp], eax
	call _Z9ByteToDiriPf
	lea eax, [ebp-0x38]
	mov [esp+0x8], eax
	lea eax, [ebp-0x44]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z21Vec3Basis_RightHandedPKfPfS1_
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
	call _Z24CG_ImpactEffectForWeaponiiiPPK11FxEffectDefPP16snd_alias_list_t
	mov edx, [ebp-0x20]
	test edx, edx
	jz _Z14CG_EntityEventiP9centity_si_690
	mov [esp+0x10], ebx
	mov ecx, [ebp-0xd0]
	mov [esp+0xc], ecx
	mov eax, cgArray
	mov eax, [eax+0x46128]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z21FX_PlayOrientedEffectiPK11FxEffectDefiPKfPA3_S2_
_Z14CG_EntityEventiP9centity_si_690:
	mov eax, [ebp-0x1c]
	test eax, eax
	jz _Z14CG_EntityEventiP9centity_si_700
	mov [esp+0xc], eax
	mov edx, [ebp-0xd0]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x3fe
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z17CG_PlaySoundAliasiiPKfP16snd_alias_list_t
_Z14CG_EntityEventiP9centity_si_700:
	mov eax, [ebp-0xc8]
	mov edx, [eax+0x58c]
	test edx, edx
	jz _Z14CG_EntityEventiP9centity_si_710
	mov [esp+0x10], ebx
	mov ecx, [ebp-0xd0]
	mov [esp+0xc], ecx
	mov eax, cgArray
	mov eax, [eax+0x46128]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z21FX_PlayOrientedEffectiPK11FxEffectDefiPKfPA3_S2_
_Z14CG_EntityEventiP9centity_si_710:
	mov edx, [ebp-0xc8]
	mov eax, [edx+0x598]
	test eax, eax
	jz _Z14CG_EntityEventiP9centity_si_80
	mov [esp+0xc], eax
	mov ecx, [ebp-0xd0]
	mov [esp+0x8], ecx
	mov dword [esp+0x4], 0x3fe
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z17CG_PlaySoundAliasiiPKfP16snd_alias_list_t
	jmp _Z14CG_EntityEventiP9centity_si_80
_Z14CG_EntityEventiP9centity_si_2200:
	mov edx, [ebp-0xd8]
	mov eax, [edx+0x58]
	mov [esp+0x18], eax
	mov eax, vec3_origin
	mov [esp+0x14], eax
	mov edx, [edx+0x9c]
	test edx, edx
	js _Z14CG_EntityEventiP9centity_si_720
	cvtsi2ss xmm0, edx
_Z14CG_EntityEventiP9centity_si_1510:
	movss [esp+0x10], xmm0
	mov edx, [ebp-0xd8]
	mov eax, [edx+0x54]
	mov [esp+0xc], eax
	mov ecx, [ebp-0xd0]
	mov [esp+0x8], ecx
	mov dword [esp+0x4], 0x0
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z22Ragdoll_ExplosionEventihPKfffS0_f
	mov dword [esp+0x20], 0x0
	mov dword [esp+0x1c], 0x0
	mov edx, [ebp-0xd8]
	mov eax, [edx+0x58]
	mov [esp+0x18], eax
	mov eax, vec3_origin
	mov [esp+0x14], eax
	mov edx, [edx+0x9c]
	test edx, edx
	js _Z14CG_EntityEventiP9centity_si_730
	cvtsi2ss xmm0, edx
_Z14CG_EntityEventiP9centity_si_1500:
	movss [esp+0x10], xmm0
	mov edx, [ebp-0xd8]
	mov eax, [edx+0x54]
	mov [esp+0xc], eax
	mov ecx, [ebp-0xd0]
	mov [esp+0x8], ecx
	mov dword [esp+0x4], 0x0
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z23DynEntCl_ExplosionEventihPKfffS0_fii
	jmp _Z14CG_EntityEventiP9centity_si_80
_Z14CG_EntityEventiP9centity_si_2210:
	mov edx, [ebp-0xd8]
	mov eax, [edx+0x58]
	mov [esp+0x18], eax
	mov eax, vec3_origin
	mov [esp+0x14], eax
	mov edx, [edx+0x9c]
	test edx, edx
	js _Z14CG_EntityEventiP9centity_si_740
	cvtsi2ss xmm0, edx
_Z14CG_EntityEventiP9centity_si_1460:
	movss [esp+0x10], xmm0
	mov edx, [ebp-0xd8]
	mov eax, [edx+0x54]
	mov [esp+0xc], eax
	mov ecx, [ebp-0xd0]
	mov [esp+0x8], ecx
	mov dword [esp+0x4], 0x1
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z22Ragdoll_ExplosionEventihPKfffS0_f
	mov dword [esp+0x20], 0x0
	mov dword [esp+0x1c], 0x0
	mov edx, [ebp-0xd8]
	mov eax, [edx+0x58]
	mov [esp+0x18], eax
	mov eax, vec3_origin
	mov [esp+0x14], eax
	mov edx, [edx+0x9c]
	test edx, edx
	js _Z14CG_EntityEventiP9centity_si_750
	cvtsi2ss xmm0, edx
_Z14CG_EntityEventiP9centity_si_1450:
	movss [esp+0x10], xmm0
	mov edx, [ebp-0xd8]
	mov eax, [edx+0x54]
	mov [esp+0xc], eax
	mov ecx, [ebp-0xd0]
	mov [esp+0x8], ecx
	mov dword [esp+0x4], 0x1
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z23DynEntCl_ExplosionEventihPKfffS0_fii
	jmp _Z14CG_EntityEventiP9centity_si_80
_Z14CG_EntityEventiP9centity_si_2220:
	mov ebx, [ebp-0xd8]
	add ebx, 0x58
	mov dword [esp+0x18], 0x3f800000
	mov [esp+0x14], ebx
	mov ecx, [ebp-0xd8]
	mov edx, [ecx+0x9c]
	test edx, edx
	js _Z14CG_EntityEventiP9centity_si_760
	cvtsi2ss xmm0, edx
_Z14CG_EntityEventiP9centity_si_1490:
	movss [esp+0x10], xmm0
	mov edx, [ebp-0xd8]
	mov eax, [edx+0x54]
	mov [esp+0xc], eax
	mov ecx, [ebp-0xd0]
	mov [esp+0x8], ecx
	mov dword [esp+0x4], 0x1
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z22Ragdoll_ExplosionEventihPKfffS0_f
	mov dword [esp+0x20], 0x0
	mov dword [esp+0x1c], 0x0
	mov dword [esp+0x18], 0x3f800000
	mov [esp+0x14], ebx
	mov ecx, [ebp-0xd8]
	mov edx, [ecx+0x9c]
	test edx, edx
	js _Z14CG_EntityEventiP9centity_si_770
	cvtsi2ss xmm0, edx
_Z14CG_EntityEventiP9centity_si_1480:
	movss [esp+0x10], xmm0
	mov edx, [ebp-0xd8]
	mov eax, [edx+0x54]
	mov [esp+0xc], eax
	mov ecx, [ebp-0xd0]
	mov [esp+0x8], ecx
	mov dword [esp+0x4], 0x1
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z23DynEntCl_ExplosionEventihPKfffS0_fii
	jmp _Z14CG_EntityEventiP9centity_si_80
_Z14CG_EntityEventiP9centity_si_2230:
	mov edx, [ebp-0xd8]
	mov eax, [edx+0x5c]
	mov [esp+0x14], eax
	mov eax, [edx+0x58]
	mov [esp+0x10], eax
	mov edx, [edx+0x9c]
	test edx, edx
	js _Z14CG_EntityEventiP9centity_si_780
	cvtsi2ss xmm0, edx
_Z14CG_EntityEventiP9centity_si_1520:
	movss [esp+0xc], xmm0
	mov edx, [ebp-0xd8]
	mov eax, [edx+0x54]
	mov [esp+0x8], eax
	mov ecx, [ebp-0xd0]
	mov [esp+0x4], ecx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z20DynEntCl_JitterEventiPKfffff
	jmp _Z14CG_EntityEventiP9centity_si_80
_Z14CG_EntityEventiP9centity_si_2320:
	mov edx, [ebp-0xd8]
	mov eax, [edx]
	mov edx, cgArray
	mov ecx, [edx+0x24]
	test byte [ecx+0x20], 0x6
	jz _Z14CG_EntityEventiP9centity_si_790
	cmp eax, [ecx+0xe8]
	jz _Z14CG_EntityEventiP9centity_si_800
_Z14CG_EntityEventiP9centity_si_790:
	xor eax, eax
_Z14CG_EntityEventiP9centity_si_1150:
	test eax, eax
	jz _Z14CG_EntityEventiP9centity_si_80
	mov ecx, cgArray
	cmp dword [ecx+0x5031c], 0x9
	jz _Z14CG_EntityEventiP9centity_si_80
	mov dword [ecx+0x5031c], 0x9
	mov eax, [ecx+0x46128]
	mov [ecx+0x50320], eax
	jmp _Z14CG_EntityEventiP9centity_si_80
_Z14CG_EntityEventiP9centity_si_2180:
	mov edx, [ebp-0xd8]
	add edx, 0x3c
	mov eax, [ebp+0xc]
	mov ecx, [eax+0x168]
	lea eax, [ecx-0x1]
	cmp eax, 0x62
	jbe _Z14CG_EntityEventiP9centity_si_810
	mov [esp+0x8], ecx
	mov dword [esp+0x4], _cstring_error_cg_playfx_
	mov dword [esp], 0x15
	call _Z14Com_PrintErroriPKcz
	jmp _Z14CG_EntityEventiP9centity_si_80
_Z14CG_EntityEventiP9centity_si_2190:
	mov edx, [ebp-0xd8]
	mov eax, [edx+0x9c]
	add eax, 0x6a2
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z18CL_GetConfigStringii
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
	call _Z12SL_GetStringPKcj
	mov [ebp-0x1c], ax
	movzx esi, ax
	mov byte [ebp-0x20], 0xfe
	mov ecx, [ebp+0x8]
	mov [esp+0x4], ecx
	mov [esp], ebx
	call _Z17Com_GetClientDObjii
	mov edx, eax
	test eax, eax
	jz _Z14CG_EntityEventiP9centity_si_820
	lea eax, [ebp-0x20]
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov [esp], edx
	call _Z16DObjGetBoneIndexPK6DObj_sjPh
	test eax, eax
	jz _Z14CG_EntityEventiP9centity_si_820
	movzx eax, byte [ebp-0x20]
	mov [esp+0x10], eax
	mov [esp+0xc], ebx
	mov eax, cgArray
	mov eax, [eax+0x46128]
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z19FX_PlayBoltedEffectiPK11FxEffectDefiii
_Z14CG_EntityEventiP9centity_si_820:
	mov dword [esp+0x4], 0x0
	lea eax, [ebp-0x1c]
	mov [esp], eax
	call _Z13Scr_SetStringPtj
	jmp _Z14CG_EntityEventiP9centity_si_80
_Z14CG_EntityEventiP9centity_si_2280:
	mov eax, [ebp-0xd8]
	mov edi, [eax+0x74]
	mov esi, [eax+0x78]
	mov eax, [eax+0x9c]
	test al, al
	jns _Z14CG_EntityEventiP9centity_si_830
	mov ebx, eax
	and bl, 0x7f
	mov dword [esp+0x4], 0x7
	mov dword [esp], _cstring_killicondied
	call _Z23Material_RegisterHandlePKci
	mov [ebp-0xb8], eax
	mov byte [ebp-0xa9], 0x0
_Z14CG_EntityEventiP9centity_si_1530:
	lea eax, [ebx-0x7]
	cmp eax, 0x8
	ja _Z14CG_EntityEventiP9centity_si_840
	jmp dword [eax*4+_Z14CG_EntityEventiP9centity_si_jumptab_2]
_Z14CG_EntityEventiP9centity_si_2290:
	mov ecx, [ebp-0xd8]
	mov eax, [ecx]
	mov edx, cgArray
	mov ecx, [edx+0x24]
	test byte [ecx+0x20], 0x6
	jz _Z14CG_EntityEventiP9centity_si_850
	cmp eax, [ecx+0xe8]
	jz _Z14CG_EntityEventiP9centity_si_860
_Z14CG_EntityEventiP9centity_si_850:
	xor eax, eax
_Z14CG_EntityEventiP9centity_si_1090:
	test eax, eax
	jz _Z14CG_EntityEventiP9centity_si_80
	mov ecx, cgArray
	cmp dword [ecx+0x5031c], 0x2
	jz _Z14CG_EntityEventiP9centity_si_80
	mov dword [ecx+0x5031c], 0x2
	mov eax, [ecx+0x46128]
	mov [ecx+0x50320], eax
	jmp _Z14CG_EntityEventiP9centity_si_80
_Z14CG_EntityEventiP9centity_si_2360:
	mov eax, cg_footsteps
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z14CG_EntityEventiP9centity_si_870
	cmp byte [ebp-0xc1], 0x0
	jz _Z14CG_EntityEventiP9centity_si_880
	mov ecx, [ebp-0xd4]
	lea edx, [esi+ecx]
	mov eax, cgMedia
	mov eax, [eax+edx*4+0xb78]
_Z14CG_EntityEventiP9centity_si_1420:
	mov [esp+0x8], eax
	mov edx, [ebp-0xd8]
	mov eax, [edx]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z23CG_PlayEntitySoundAliasiiP16snd_alias_list_t
_Z14CG_EntityEventiP9centity_si_870:
	cmp esi, 0x1
	sbb eax, eax
	not eax
	and eax, 0x3
	movzx ecx, byte [ebp-0xc1]
	mov [esp], eax
	mov eax, [ebp-0xd8]
	mov edx, [eax]
	mov eax, [ebp+0x8]
	call _Z17CG_EquipmentSoundiih16EquipmentSound_t
	jmp _Z14CG_EntityEventiP9centity_si_80
_Z14CG_EntityEventiP9centity_si_2370:
	mov eax, cg_footsteps
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z14CG_EntityEventiP9centity_si_890
	cmp byte [ebp-0xc1], 0x0
	jz _Z14CG_EntityEventiP9centity_si_900
	mov ecx, [ebp-0xd4]
	lea edx, [esi+ecx]
	mov eax, cgMedia
	mov eax, [eax+edx*4+0xd48]
_Z14CG_EntityEventiP9centity_si_1430:
	mov [esp+0x8], eax
	mov edx, [ebp-0xd8]
	mov eax, [edx]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z23CG_PlayEntitySoundAliasiiP16snd_alias_list_t
_Z14CG_EntityEventiP9centity_si_890:
	cmp esi, 0x1
	sbb eax, eax
	not eax
	and eax, 0x3
	movzx ecx, byte [ebp-0xc1]
	mov [esp], eax
	mov eax, [ebp-0xd8]
	mov edx, [eax]
	mov eax, [ebp+0x8]
	call _Z17CG_EquipmentSoundiih16EquipmentSound_t
	jmp _Z14CG_EntityEventiP9centity_si_80
_Z14CG_EntityEventiP9centity_si_2170:
	lea esi, [ebp-0x50]
	mov [esp+0x4], esi
	mov ecx, [ebp-0xd8]
	mov eax, [ecx+0x9c]
	mov [esp], eax
	call _Z9ByteToDiriPf
	lea eax, [ebp-0x38]
	mov [esp+0x8], eax
	lea eax, [ebp-0x44]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z21Vec3Basis_RightHandedPKfPfS1_
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
	call _Z17CG_PlaySoundAliasiiPKfP16snd_alias_list_t
	mov eax, [ebx+0x2754]
	mov edx, [eax+0x4]
	mov ecx, [ebp-0xd8]
	mov eax, [ecx+0x84]
	mov edx, [edx+eax*4+0x5ac]
	test edx, edx
	jz _Z14CG_EntityEventiP9centity_si_910
	mov [esp+0x10], esi
	mov eax, [ebp-0xd0]
	mov [esp+0xc], eax
	mov eax, cgArray
	mov eax, [eax+0x46128]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z21FX_PlayOrientedEffectiPK11FxEffectDefiPKfPA3_S2_
_Z14CG_EntityEventiP9centity_si_910:
	mov ecx, [ebp-0xc8]
	mov edx, [ecx+0x594]
	test edx, edx
	jz _Z14CG_EntityEventiP9centity_si_920
	mov [esp+0x10], esi
	mov eax, [ebp-0xd0]
	mov [esp+0xc], eax
	mov eax, cgArray
	mov eax, [eax+0x46128]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z21FX_PlayOrientedEffectiPK11FxEffectDefiPKfPA3_S2_
_Z14CG_EntityEventiP9centity_si_920:
	mov ecx, [ebp-0xc8]
	mov eax, [ecx+0x59c]
	test eax, eax
	jz _Z14CG_EntityEventiP9centity_si_80
	mov [esp+0xc], eax
	mov eax, [ebp-0xd0]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x3fe
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z17CG_PlaySoundAliasiiPKfP16snd_alias_list_t
	jmp _Z14CG_EntityEventiP9centity_si_80
_Z14CG_EntityEventiP9centity_si_2270:
	cmp byte [ebp-0xc1], 0x0
	jz _Z14CG_EntityEventiP9centity_si_930
	mov eax, [ebp-0xc0]
	test dword [eax+0xb0], 0x300
	jnz _Z14CG_EntityEventiP9centity_si_940
	mov edx, [ebp-0xc8]
	mov eax, [edx+0xbc]
	cmp byte [eax], 0x0
	jnz _Z14CG_EntityEventiP9centity_si_950
_Z14CG_EntityEventiP9centity_si_940:
	mov eax, cgMedia
	mov eax, [eax+0x104c]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z23CG_PlayClientSoundAliasiP16snd_alias_list_t
_Z14CG_EntityEventiP9centity_si_950:
	mov edx, [ebp-0xc8]
	mov eax, [edx+0x1e4]
_Z14CG_EntityEventiP9centity_si_1300:
	mov [esp+0x8], eax
	mov edx, [ebp-0xd8]
	mov eax, [edx]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z23CG_PlayEntitySoundAliasiiP16snd_alias_list_t
	jmp _Z14CG_EntityEventiP9centity_si_80
_Z14CG_EntityEventiP9centity_si_2300:
	mov edx, [ebp-0xd8]
	mov eax, [edx]
	mov edx, cgArray
	mov ecx, [edx+0x24]
	test byte [ecx+0x20], 0x6
	jz _Z14CG_EntityEventiP9centity_si_960
	cmp eax, [ecx+0xe8]
	jz _Z14CG_EntityEventiP9centity_si_970
_Z14CG_EntityEventiP9centity_si_960:
	xor eax, eax
_Z14CG_EntityEventiP9centity_si_1080:
	test eax, eax
	jz _Z14CG_EntityEventiP9centity_si_80
	mov ecx, cgArray
	cmp dword [ecx+0x5031c], 0x3
	jz _Z14CG_EntityEventiP9centity_si_80
	mov dword [ecx+0x5031c], 0x3
	mov eax, [ecx+0x46128]
	mov [ecx+0x50320], eax
	jmp _Z14CG_EntityEventiP9centity_si_80
_Z14CG_EntityEventiP9centity_si_2310:
	mov edx, [ebp-0xd8]
	mov eax, [edx]
	mov edx, cgArray
	mov ecx, [edx+0x24]
	test byte [ecx+0x20], 0x6
	jz _Z14CG_EntityEventiP9centity_si_980
	cmp eax, [ecx+0xe8]
	jz _Z14CG_EntityEventiP9centity_si_990
_Z14CG_EntityEventiP9centity_si_980:
	xor eax, eax
_Z14CG_EntityEventiP9centity_si_1070:
	test eax, eax
	jz _Z14CG_EntityEventiP9centity_si_80
	mov ecx, cgArray
	cmp dword [ecx+0x5031c], 0x7
	jz _Z14CG_EntityEventiP9centity_si_80
	mov dword [ecx+0x5031c], 0x7
	mov eax, [ecx+0x46128]
	mov [ecx+0x50320], eax
	jmp _Z14CG_EntityEventiP9centity_si_80
_Z14CG_EntityEventiP9centity_si_2340:
	mov eax, cg_footsteps
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z14CG_EntityEventiP9centity_si_1000
	cmp byte [ebp-0xc1], 0x0
	jz _Z14CG_EntityEventiP9centity_si_1010
	mov ecx, [ebp-0xd4]
	lea edx, [esi+ecx]
	mov eax, cgMedia
	mov eax, [eax+edx*4+0x7d8]
_Z14CG_EntityEventiP9centity_si_1470:
	mov [esp+0x8], eax
	mov edx, [ebp-0xd8]
	mov eax, [edx]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z23CG_PlayEntitySoundAliasiiP16snd_alias_list_t
_Z14CG_EntityEventiP9centity_si_1000:
	cmp esi, 0x1
	sbb eax, eax
	and eax, 0xfffffffd
	add eax, 0x5
	movzx ecx, byte [ebp-0xc1]
	mov [esp], eax
	mov eax, [ebp-0xd8]
	mov edx, [eax]
	mov eax, [ebp+0x8]
	call _Z17CG_EquipmentSoundiih16EquipmentSound_t
	jmp _Z14CG_EntityEventiP9centity_si_80
_Z14CG_EntityEventiP9centity_si_2350:
	mov eax, cg_footsteps
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z14CG_EntityEventiP9centity_si_1020
	cmp byte [ebp-0xc1], 0x0
	jz _Z14CG_EntityEventiP9centity_si_1030
	mov ecx, [ebp-0xd4]
	lea edx, [esi+ecx]
	mov eax, cgMedia
	mov eax, [eax+edx*4+0x9a8]
_Z14CG_EntityEventiP9centity_si_1440:
	mov [esp+0x8], eax
	mov edx, [ebp-0xd8]
	mov eax, [edx]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z23CG_PlayEntitySoundAliasiiP16snd_alias_list_t
_Z14CG_EntityEventiP9centity_si_1020:
	cmp esi, 0x1
	sbb eax, eax
	and eax, 0xfffffffd
	add eax, 0x4
	movzx ecx, byte [ebp-0xc1]
	mov [esp], eax
	mov eax, [ebp-0xd8]
	mov edx, [eax]
	mov eax, [ebp+0x8]
	call _Z17CG_EquipmentSoundiih16EquipmentSound_t
	jmp _Z14CG_EntityEventiP9centity_si_80
_Z14CG_EntityEventiP9centity_si_2380:
	cmp byte [ebp-0xc1], 0x0
	jz _Z14CG_EntityEventiP9centity_si_1040
	mov ecx, [ebp-0xd4]
	lea edx, [esi+ecx]
	mov eax, cgMedia
	mov eax, [eax+edx*4+0x9a8]
_Z14CG_EntityEventiP9centity_si_1400:
	mov [esp+0x8], eax
	mov edx, [ebp-0xd8]
	mov eax, [edx]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z23CG_PlayEntitySoundAliasiiP16snd_alias_list_t
	cmp esi, 0x1
	sbb eax, eax
	and eax, 0xfffffffd
	add eax, 0x4
	movzx ecx, byte [ebp-0xc1]
	mov [esp], eax
	mov eax, [ebp-0xd8]
	mov edx, [eax]
	mov eax, [ebp+0x8]
	call _Z17CG_EquipmentSoundiih16EquipmentSound_t
	jmp _Z14CG_EntityEventiP9centity_si_80
_Z14CG_EntityEventiP9centity_si_2330:
	mov edx, [ebp-0xd8]
	mov eax, [edx]
	mov edx, cgArray
	mov ecx, [edx+0x24]
	test byte [ecx+0x20], 0x6
	jz _Z14CG_EntityEventiP9centity_si_1050
	cmp eax, [ecx+0xe8]
	jz _Z14CG_EntityEventiP9centity_si_1060
_Z14CG_EntityEventiP9centity_si_1050:
	xor eax, eax
_Z14CG_EntityEventiP9centity_si_1140:
	test eax, eax
	jz _Z14CG_EntityEventiP9centity_si_80
	mov ecx, cgArray
	cmp dword [ecx+0x5031c], 0x8
	jz _Z14CG_EntityEventiP9centity_si_80
	mov dword [ecx+0x5031c], 0x8
	mov eax, [ecx+0x46128]
	mov [ecx+0x50320], eax
	jmp _Z14CG_EntityEventiP9centity_si_80
_Z14CG_EntityEventiP9centity_si_990:
	mov eax, 0x1
	jmp _Z14CG_EntityEventiP9centity_si_1070
_Z14CG_EntityEventiP9centity_si_970:
	mov eax, 0x1
	jmp _Z14CG_EntityEventiP9centity_si_1080
_Z14CG_EntityEventiP9centity_si_860:
	mov eax, 0x1
	jmp _Z14CG_EntityEventiP9centity_si_1090
_Z14CG_EntityEventiP9centity_si_2390:
	test cl, cl
	jz _Z14CG_EntityEventiP9centity_si_1100
	mov edx, [ebp-0xc8]
	mov eax, [edx+0x1bc]
	test eax, eax
	jz _Z14CG_EntityEventiP9centity_si_1110
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z17CG_StopSoundAliasiiP16snd_alias_list_t
_Z14CG_EntityEventiP9centity_si_1110:
	mov edx, [ebp-0xc8]
	mov eax, [edx+0x1b4]
	test eax, eax
	jz _Z14CG_EntityEventiP9centity_si_80
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z17CG_StopSoundAliasiiP16snd_alias_list_t
	jmp _Z14CG_EntityEventiP9centity_si_80
_Z14CG_EntityEventiP9centity_si_2400:
	test cl, cl
	jz _Z14CG_EntityEventiP9centity_si_1120
	mov edx, [ebp-0xc8]
	mov eax, [edx+0x1c4]
_Z14CG_EntityEventiP9centity_si_1550:
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z17CG_StopSoundAliasiiP16snd_alias_list_t
	jmp _Z14CG_EntityEventiP9centity_si_80
_Z14CG_EntityEventiP9centity_si_2410:
	test cl, cl
	jz _Z14CG_EntityEventiP9centity_si_1130
	mov edx, [ebp-0xc8]
	mov eax, [edx+0x1cc]
_Z14CG_EntityEventiP9centity_si_1560:
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z17CG_StopSoundAliasiiP16snd_alias_list_t
	jmp _Z14CG_EntityEventiP9centity_si_80
_Z14CG_EntityEventiP9centity_si_1060:
	mov eax, 0x1
	jmp _Z14CG_EntityEventiP9centity_si_1140
_Z14CG_EntityEventiP9centity_si_800:
	mov eax, 0x1
	jmp _Z14CG_EntityEventiP9centity_si_1150
_Z14CG_EntityEventiP9centity_si_140:
	test eax, eax
	jle _Z14CG_EntityEventiP9centity_si_80
	cvtsi2ss xmm1, eax
	jmp _Z14CG_EntityEventiP9centity_si_1160
_Z14CG_EntityEventiP9centity_si_260:
	mov ecx, edx
	jmp _Z14CG_EntityEventiP9centity_si_1170
_Z14CG_EntityEventiP9centity_si_410:
	mov [esp+0xc], ebx
	mov eax, eventnames
	mov eax, [eax+0x34]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_event_s_just_for
	mov dword [esp], 0x15
	call _Z11Com_DPrintfiPKcz
	jmp _Z14CG_EntityEventiP9centity_si_80
_Z14CG_EntityEventiP9centity_si_440:
	mov [esp+0xc], ebx
	mov eax, eventnames
	mov eax, [eax+0x84]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_event_s_just_for
	mov dword [esp], 0x15
	call _Z11Com_DPrintfiPKcz
	jmp _Z14CG_EntityEventiP9centity_si_80
_Z14CG_EntityEventiP9centity_si_490:
	mov [esp+0xc], ebx
	mov eax, eventnames
	mov eax, [eax+0x94]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_event_s_just_for
	mov dword [esp], 0x15
	call _Z11Com_DPrintfiPKcz
	jmp _Z14CG_EntityEventiP9centity_si_80
_Z14CG_EntityEventiP9centity_si_390:
	mov [esp+0xc], ebx
	mov eax, eventnames
	mov eax, [eax+0x38]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_event_s_just_for
	mov dword [esp], 0x15
	call _Z11Com_DPrintfiPKcz
	jmp _Z14CG_EntityEventiP9centity_si_80
_Z14CG_EntityEventiP9centity_si_450:
	mov [esp+0xc], ebx
	mov eax, eventnames
	mov eax, [eax+0x88]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_event_s_just_for
	mov dword [esp], 0x15
	call _Z11Com_DPrintfiPKcz
	jmp _Z14CG_EntityEventiP9centity_si_80
_Z14CG_EntityEventiP9centity_si_460:
	mov [esp+0xc], ebx
	mov eax, eventnames
	mov eax, [eax+0x80]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_event_s_just_for
	mov dword [esp], 0x15
	call _Z11Com_DPrintfiPKcz
	jmp _Z14CG_EntityEventiP9centity_si_80
_Z14CG_EntityEventiP9centity_si_420:
	mov ecx, [ebp-0xc8]
	mov eax, [ecx+0x1a8]
	jmp _Z14CG_EntityEventiP9centity_si_1180
_Z14CG_EntityEventiP9centity_si_400:
	mov edx, [ebp-0xc8]
	mov eax, [edx+0x1b0]
	jmp _Z14CG_EntityEventiP9centity_si_1190
_Z14CG_EntityEventiP9centity_si_540:
	mov edx, [ebp-0xc8]
	mov eax, [edx+0x1f8]
	jmp _Z14CG_EntityEventiP9centity_si_1200
_Z14CG_EntityEventiP9centity_si_560:
	mov ecx, [ebp-0xc8]
	mov eax, [ecx+0x1e8]
	jmp _Z14CG_EntityEventiP9centity_si_1210
_Z14CG_EntityEventiP9centity_si_530:
	mov ecx, [ebp-0xc8]
	mov eax, [ecx+0x1c0]
	jmp _Z14CG_EntityEventiP9centity_si_1220
_Z14CG_EntityEventiP9centity_si_570:
	mov ecx, [ebp-0xc8]
	mov eax, [ecx+0x1f0]
	jmp _Z14CG_EntityEventiP9centity_si_1230
_Z14CG_EntityEventiP9centity_si_550:
	mov ecx, [ebp-0xc8]
	mov eax, [ecx+0x1c8]
	jmp _Z14CG_EntityEventiP9centity_si_1240
_Z14CG_EntityEventiP9centity_si_580:
	mov ecx, [ebp-0xc8]
	mov eax, [ecx+0x200]
	jmp _Z14CG_EntityEventiP9centity_si_1250
_Z14CG_EntityEventiP9centity_si_430:
	mov edx, [ebp-0xc8]
	mov eax, [edx+0x198]
	jmp _Z14CG_EntityEventiP9centity_si_1260
_Z14CG_EntityEventiP9centity_si_520:
	mov ecx, [ebp-0xc8]
	mov eax, [ecx+0x1b8]
	jmp _Z14CG_EntityEventiP9centity_si_1270
_Z14CG_EntityEventiP9centity_si_590:
	mov edx, [ebp-0xc8]
	mov eax, [edx+0x168]
	jmp _Z14CG_EntityEventiP9centity_si_1280
_Z14CG_EntityEventiP9centity_si_640:
	mov ecx, [ebp-0xc8]
	mov eax, [ecx+0x1d0]
	jmp _Z14CG_EntityEventiP9centity_si_1290
_Z14CG_EntityEventiP9centity_si_930:
	mov ecx, [ebp-0xc8]
	mov eax, [ecx+0x1e0]
	jmp _Z14CG_EntityEventiP9centity_si_1300
_Z14CG_EntityEventiP9centity_si_810:
	mov eax, cgsArray
	mov esi, [eax+ecx*4+0xa94]
	lea ebx, [ebp-0x78]
	mov [esp+0x4], ebx
	mov [esp], edx
	call _Z12AnglesToAxisPKfPA3_f
	mov [esp+0x10], ebx
	mov edx, [ebp-0xd0]
	mov [esp+0xc], edx
	mov eax, cgArray
	mov eax, [eax+0x46128]
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z21FX_PlayOrientedEffectiPK11FxEffectDefiPKfPA3_S2_
	jmp _Z14CG_EntityEventiP9centity_si_80
_Z14CG_EntityEventiP9centity_si_2470:
	mov dword [esp+0x4], 0x7
	mov dword [esp], _cstring_killicondied
	call _Z23Material_RegisterHandlePKci
	mov [ebp-0xb8], eax
_Z14CG_EntityEventiP9centity_si_840:
	movss xmm0, dword [_float_1_39999998]
	movss [ebp-0xbc], xmm0
	mov ebx, [ebp-0xbc]
_Z14CG_EntityEventiP9centity_si_1390:
	cmp edi, 0x3f
	jbe _Z14CG_EntityEventiP9centity_si_1310
	mov dword [esp+0x4], _cstring_cg_obituary_targ
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
_Z14CG_EntityEventiP9centity_si_1310:
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
	jz _Z14CG_EntityEventiP9centity_si_80
	mov dword [esp+0xc], 0x26
	lea eax, [ebp-0x78]
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z16CL_GetClientNameiiPci
	mov ecx, [ebp+0x8]
	mov [esp+0x4], ecx
	mov edx, [ebp-0xb4]
	mov eax, [edx+0x20]
	mov [esp], eax
	call _Z35CG_DrawScoreboard_GetTeamColorIndexii
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
	jz _Z14CG_EntityEventiP9centity_si_80
	cmp esi, 0x3f
	jbe _Z14CG_EntityEventiP9centity_si_1320
	mov byte [ebp-0x9e], 0x0
	mov esi, 0x3fe
	mov dword [ebp-0xb0], 0x0
	mov byte [ebp-0xab], 0x37
_Z14CG_EntityEventiP9centity_si_1630:
	mov ecx, cgArray
	mov eax, [ecx+0x24]
	add eax, 0xc
	cmp esi, edi
	jz _Z14CG_EntityEventiP9centity_si_1330
	mov eax, [eax+0xdc]
	cmp esi, eax
	jz _Z14CG_EntityEventiP9centity_si_1340
	cmp edi, eax
	jz _Z14CG_EntityEventiP9centity_si_1350
_Z14CG_EntityEventiP9centity_si_1620:
	mov edx, cgArray
	mov eax, [edx+0x5052c]
	test eax, eax
	jnz _Z14CG_EntityEventiP9centity_si_80
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
	call _Z20CL_DeathMessagePrintiPKccS0_cP8Materialffh
	jmp _Z14CG_EntityEventiP9centity_si_80
_Z14CG_EntityEventiP9centity_si_830:
	mov [esp], eax
	call _Z15BG_GetWeaponDefj
	mov ecx, [eax+0x518]
	mov [ebp-0xb8], ecx
	test ecx, ecx
	jz _Z14CG_EntityEventiP9centity_si_1360
	mov edx, [eax+0x520]
	test edx, edx
	setnz byte [ebp-0xa9]
	mov eax, [eax+0x51c]
	test eax, eax
	jz _Z14CG_EntityEventiP9centity_si_1370
	sub eax, 0x1
	jz _Z14CG_EntityEventiP9centity_si_1380
	movss xmm0, dword [_float_2_79999995]
	movss [ebp-0xbc], xmm0
	mov ebx, 0x3f333333
	jmp _Z14CG_EntityEventiP9centity_si_1390
_Z14CG_EntityEventiP9centity_si_1040:
	mov eax, [ebp-0xd4]
	lea edx, [esi+eax]
	mov eax, cgMedia
	mov eax, [eax+edx*4+0x8c0]
	jmp _Z14CG_EntityEventiP9centity_si_1400
_Z14CG_EntityEventiP9centity_si_650:
	mov ecx, [ebp-0xc8]
	mov eax, [ecx+0x1d8]
	jmp _Z14CG_EntityEventiP9centity_si_1410
_Z14CG_EntityEventiP9centity_si_470:
	mov eax, cgMedia
	mov eax, [eax+0x1040]
	mov [esp+0x8], eax
	mov eax, [edx+0x74]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z23CG_PlayEntitySoundAliasiiP16snd_alias_list_t
	jmp _Z14CG_EntityEventiP9centity_si_80
_Z14CG_EntityEventiP9centity_si_500:
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
	call _Z17CG_PlaySoundAliasiiPKfP16snd_alias_list_t
	jmp _Z14CG_EntityEventiP9centity_si_80
_Z14CG_EntityEventiP9centity_si_310:
	mov dword [esp+0x4], 0x0
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z12CL_SetStancei11StanceState
	jmp _Z14CG_EntityEventiP9centity_si_80
_Z14CG_EntityEventiP9centity_si_320:
	mov dword [esp+0x4], 0x1
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z12CL_SetStancei11StanceState
	jmp _Z14CG_EntityEventiP9centity_si_80
_Z14CG_EntityEventiP9centity_si_330:
	mov dword [esp+0x4], 0x2
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z12CL_SetStancei11StanceState
	jmp _Z14CG_EntityEventiP9centity_si_80
_Z14CG_EntityEventiP9centity_si_880:
	mov eax, [ebp-0xd4]
	lea edx, [esi+eax]
	mov eax, cgMedia
	mov eax, [eax+edx*4+0xa90]
	jmp _Z14CG_EntityEventiP9centity_si_1420
_Z14CG_EntityEventiP9centity_si_900:
	mov eax, [ebp-0xd4]
	lea edx, [esi+eax]
	mov eax, cgMedia
	mov eax, [eax+edx*4+0xc60]
	jmp _Z14CG_EntityEventiP9centity_si_1430
_Z14CG_EntityEventiP9centity_si_1030:
	mov eax, [ebp-0xd4]
	lea edx, [esi+eax]
	mov eax, cgMedia
	mov eax, [eax+edx*4+0x8c0]
	jmp _Z14CG_EntityEventiP9centity_si_1440
_Z14CG_EntityEventiP9centity_si_750:
	mov eax, edx
	shr eax, 1
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm0, eax
	addss xmm0, xmm0
	jmp _Z14CG_EntityEventiP9centity_si_1450
_Z14CG_EntityEventiP9centity_si_740:
	mov eax, edx
	shr eax, 1
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm0, eax
	addss xmm0, xmm0
	jmp _Z14CG_EntityEventiP9centity_si_1460
_Z14CG_EntityEventiP9centity_si_1010:
	mov eax, [ebp-0xd4]
	lea edx, [esi+eax]
	mov eax, cgMedia
	mov eax, [eax+edx*4+0x6f0]
	jmp _Z14CG_EntityEventiP9centity_si_1470
_Z14CG_EntityEventiP9centity_si_770:
	mov eax, edx
	shr eax, 1
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm0, eax
	addss xmm0, xmm0
	jmp _Z14CG_EntityEventiP9centity_si_1480
_Z14CG_EntityEventiP9centity_si_760:
	mov eax, edx
	shr eax, 1
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm0, eax
	addss xmm0, xmm0
	jmp _Z14CG_EntityEventiP9centity_si_1490
_Z14CG_EntityEventiP9centity_si_730:
	mov eax, edx
	shr eax, 1
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm0, eax
	addss xmm0, xmm0
	jmp _Z14CG_EntityEventiP9centity_si_1500
_Z14CG_EntityEventiP9centity_si_720:
	mov eax, edx
	shr eax, 1
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm0, eax
	addss xmm0, xmm0
	jmp _Z14CG_EntityEventiP9centity_si_1510
_Z14CG_EntityEventiP9centity_si_780:
	mov eax, edx
	shr eax, 1
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm0, eax
	addss xmm0, xmm0
	jmp _Z14CG_EntityEventiP9centity_si_1520
_Z14CG_EntityEventiP9centity_si_1370:
	xor ebx, ebx
	jmp _Z14CG_EntityEventiP9centity_si_1530
_Z14CG_EntityEventiP9centity_si_1380:
	movss xmm0, dword [_float_2_79999995]
	movss [ebp-0xbc], xmm0
	mov ebx, 0x3fb33333
	jmp _Z14CG_EntityEventiP9centity_si_1390
_Z14CG_EntityEventiP9centity_si_510:
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
	call _Z17CG_PlaySoundAliasiiPKfP16snd_alias_list_t
	jmp _Z14CG_EntityEventiP9centity_si_80
_Z14CG_EntityEventiP9centity_si_380:
	mov edx, [ebp-0xc8]
	mov eax, [edx+0x190]
	jmp _Z14CG_EntityEventiP9centity_si_1540
_Z14CG_EntityEventiP9centity_si_1120:
	mov ecx, [ebp-0xc8]
	mov eax, [ecx+0x1c0]
	jmp _Z14CG_EntityEventiP9centity_si_1550
_Z14CG_EntityEventiP9centity_si_1130:
	mov ecx, [ebp-0xc8]
	mov eax, [ecx+0x1c8]
	jmp _Z14CG_EntityEventiP9centity_si_1560
_Z14CG_EntityEventiP9centity_si_360:
	mov eax, cgArray
	mov eax, [eax+0x5036c]
	test eax, eax
	jnz _Z14CG_EntityEventiP9centity_si_80
	mov [esp+0x4], ebx
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z20CG_SelectWeaponIndexij
	jmp _Z14CG_EntityEventiP9centity_si_80
_Z14CG_EntityEventiP9centity_si_350:
	cmp byte [ebp-0xc1], 0x0
	jz _Z14CG_EntityEventiP9centity_si_1570
	mov eax, [eax+0x160]
_Z14CG_EntityEventiP9centity_si_1600:
	mov [esp+0x8], eax
	mov edx, [ebp-0xd8]
	mov eax, [edx]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z23CG_PlayEntitySoundAliasiiP16snd_alias_list_t
	jmp _Z14CG_EntityEventiP9centity_si_1580
_Z14CG_EntityEventiP9centity_si_340:
	cmp byte [ebp-0xc1], 0x0
	jz _Z14CG_EntityEventiP9centity_si_1590
	mov eax, [eax+0x158]
	jmp _Z14CG_EntityEventiP9centity_si_1600
_Z14CG_EntityEventiP9centity_si_1100:
	mov edx, [ebp-0xc8]
	mov eax, [edx+0x1b8]
	test eax, eax
	jz _Z14CG_EntityEventiP9centity_si_1610
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z17CG_StopSoundAliasiiP16snd_alias_list_t
_Z14CG_EntityEventiP9centity_si_1610:
	mov edx, [ebp-0xc8]
	mov eax, [edx+0x1b0]
	test eax, eax
	jz _Z14CG_EntityEventiP9centity_si_80
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z17CG_StopSoundAliasiiP16snd_alias_list_t
	jmp _Z14CG_EntityEventiP9centity_si_80
_Z14CG_EntityEventiP9centity_si_1330:
	mov byte [ebp-0x9e], 0x0
	jmp _Z14CG_EntityEventiP9centity_si_1620
_Z14CG_EntityEventiP9centity_si_1320:
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
	jz _Z14CG_EntityEventiP9centity_si_80
	mov dword [esp+0xc], 0x26
	lea eax, [ebp-0x9e]
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z16CL_GetClientNameiiPci
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov edx, [ebp-0xb0]
	mov eax, [edx+0x20]
	mov [esp], eax
	call _Z35CG_DrawScoreboard_GetTeamColorIndexii
	mov [ebp-0xab], al
	jmp _Z14CG_EntityEventiP9centity_si_1630
_Z14CG_EntityEventiP9centity_si_480:
	mov eax, cgMedia
	mov eax, [eax+0x1038]
	mov [esp+0x8], eax
	mov edx, [ebp-0xd8]
	mov eax, [edx+0x74]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z23CG_PlayEntitySoundAliasiiP16snd_alias_list_t
	jmp _Z14CG_EntityEventiP9centity_si_80
_Z14CG_EntityEventiP9centity_si_1590:
	mov eax, [eax+0x154]
	jmp _Z14CG_EntityEventiP9centity_si_1600
_Z14CG_EntityEventiP9centity_si_1570:
	mov eax, [eax+0x15c]
	jmp _Z14CG_EntityEventiP9centity_si_1600
_Z14CG_EntityEventiP9centity_si_1350:
	mov ecx, [ebp-0xb0]
	test ecx, ecx
	jz _Z14CG_EntityEventiP9centity_si_1620
	mov eax, cgArray
	mov edx, [eax+0x5052c]
	test edx, edx
	jnz _Z14CG_EntityEventiP9centity_si_80
	mov edx, [ebp-0xb0]
	mov eax, [edx+0x20]
	test eax, eax
	jz _Z14CG_EntityEventiP9centity_si_1640
	mov ecx, [ebp-0xb4]
	cmp eax, [ecx+0x20]
	jz _Z14CG_EntityEventiP9centity_si_1650
_Z14CG_EntityEventiP9centity_si_1640:
	lea eax, [ebp-0x9e]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_cgame_youwerekil
	call _Z2vaPKcz
_Z14CG_EntityEventiP9centity_si_1680:
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z22CG_PriorityCenterPrintiPKci
	jmp _Z14CG_EntityEventiP9centity_si_1620
_Z14CG_EntityEventiP9centity_si_1340:
	mov eax, cgArray
	mov esi, [eax+0x5052c]
	test esi, esi
	jnz _Z14CG_EntityEventiP9centity_si_80
	mov edx, [ebp-0xb0]
	mov eax, [edx+0x20]
	test eax, eax
	jz _Z14CG_EntityEventiP9centity_si_1660
	mov ecx, [ebp-0xb4]
	cmp eax, [ecx+0x20]
	jz _Z14CG_EntityEventiP9centity_si_1670
_Z14CG_EntityEventiP9centity_si_1660:
	lea edx, [ebp-0x78]
	mov [esp+0x4], edx
	mov dword [esp], _cstring_cgame_youkilleds
	call _Z2vaPKcz
_Z14CG_EntityEventiP9centity_si_1690:
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z22CG_PriorityCenterPrintiPKci
	jmp _Z14CG_EntityEventiP9centity_si_1620
_Z14CG_EntityEventiP9centity_si_1650:
	mov dword [esp+0x8], _cstring_cgame_teammate
	lea eax, [ebp-0x9e]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_cgame_youwerekil1
	call _Z2vaPKcz
	jmp _Z14CG_EntityEventiP9centity_si_1680
_Z14CG_EntityEventiP9centity_si_1670:
	mov dword [esp+0x8], _cstring_cgame_teammate
	lea eax, [ebp-0x78]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_cgame_youkilled1
	call _Z2vaPKcz
	jmp _Z14CG_EntityEventiP9centity_si_1690
_Z14CG_EntityEventiP9centity_si_2430:
	mov dword [esp+0x4], 0x7
	mov dword [esp], _cstring_killiconheadshot
_Z14CG_EntityEventiP9centity_si_1700:
	call _Z23Material_RegisterHandlePKci
	mov [ebp-0xb8], eax
	movss xmm0, dword [_float_1_39999998]
	movss [ebp-0xbc], xmm0
	mov ebx, [ebp-0xbc]
	jmp _Z14CG_EntityEventiP9centity_si_1390
_Z14CG_EntityEventiP9centity_si_2440:
	mov dword [esp+0x4], 0x7
	mov dword [esp], _cstring_killiconcrush
	jmp _Z14CG_EntityEventiP9centity_si_1700
_Z14CG_EntityEventiP9centity_si_2450:
	mov dword [esp+0x4], 0x7
	mov dword [esp], _cstring_killiconfalling
	jmp _Z14CG_EntityEventiP9centity_si_1700
_Z14CG_EntityEventiP9centity_si_2460:
	mov dword [esp+0x4], 0x7
	mov dword [esp], _cstring_killiconsuicide
	jmp _Z14CG_EntityEventiP9centity_si_1700
_Z14CG_EntityEventiP9centity_si_1360:
	mov dword [esp+0x4], 0x7
	mov dword [esp], _cstring_killicondied
	call _Z23Material_RegisterHandlePKci
	mov [ebp-0xb8], eax
	movss xmm0, dword [_float_1_39999998]
	movss [ebp-0xbc], xmm0
	mov ebx, [ebp-0xbc]
	mov byte [ebp-0xa9], 0x0
	jmp _Z14CG_EntityEventiP9centity_si_1390
_Z14CG_EntityEventiP9centity_si_2420:
	mov dword [esp+0x4], 0x7
	mov dword [esp], _cstring_killiconmelee
	jmp _Z14CG_EntityEventiP9centity_si_1700
_Z14CG_EntityEventiP9centity_si_2480:
	mov dword [esp+0x4], 0x7
	mov dword [esp], _cstring_killiconimpact
	jmp _Z14CG_EntityEventiP9centity_si_1700
	
	
_Z14CG_EntityEventiP9centity_si_jumptab_0:
	dd _Z14CG_EntityEventiP9centity_si_160
	dd _Z14CG_EntityEventiP9centity_si_1710
	dd _Z14CG_EntityEventiP9centity_si_1720
	dd _Z14CG_EntityEventiP9centity_si_1730
	dd _Z14CG_EntityEventiP9centity_si_1740
	dd _Z14CG_EntityEventiP9centity_si_1750
	dd _Z14CG_EntityEventiP9centity_si_1760
	dd _Z14CG_EntityEventiP9centity_si_1770
	dd _Z14CG_EntityEventiP9centity_si_1780
	dd _Z14CG_EntityEventiP9centity_si_1790
	dd _Z14CG_EntityEventiP9centity_si_1790
	dd _Z14CG_EntityEventiP9centity_si_1800
	dd _Z14CG_EntityEventiP9centity_si_80
	dd _Z14CG_EntityEventiP9centity_si_1810
	dd _Z14CG_EntityEventiP9centity_si_1820
	dd _Z14CG_EntityEventiP9centity_si_1830
	dd _Z14CG_EntityEventiP9centity_si_1840
	dd _Z14CG_EntityEventiP9centity_si_1850
	dd _Z14CG_EntityEventiP9centity_si_1860
	dd _Z14CG_EntityEventiP9centity_si_80
	dd _Z14CG_EntityEventiP9centity_si_80
	dd _Z14CG_EntityEventiP9centity_si_1870
	dd _Z14CG_EntityEventiP9centity_si_1880
	dd _Z14CG_EntityEventiP9centity_si_1890
	dd _Z14CG_EntityEventiP9centity_si_1900
	dd _Z14CG_EntityEventiP9centity_si_1910
	dd _Z14CG_EntityEventiP9centity_si_1920
	dd _Z14CG_EntityEventiP9centity_si_1920
	dd _Z14CG_EntityEventiP9centity_si_1930
	dd _Z14CG_EntityEventiP9centity_si_1940
	dd _Z14CG_EntityEventiP9centity_si_1950
	dd _Z14CG_EntityEventiP9centity_si_1960
	dd _Z14CG_EntityEventiP9centity_si_1970
	dd _Z14CG_EntityEventiP9centity_si_1980
	dd _Z14CG_EntityEventiP9centity_si_1990
	dd _Z14CG_EntityEventiP9centity_si_2000
	dd _Z14CG_EntityEventiP9centity_si_2010
	dd _Z14CG_EntityEventiP9centity_si_2020
	dd _Z14CG_EntityEventiP9centity_si_2030
	dd _Z14CG_EntityEventiP9centity_si_2040
	dd _Z14CG_EntityEventiP9centity_si_2050
	dd _Z14CG_EntityEventiP9centity_si_2060
	dd _Z14CG_EntityEventiP9centity_si_2070
	dd _Z14CG_EntityEventiP9centity_si_2070
	dd _Z14CG_EntityEventiP9centity_si_2080
	dd _Z14CG_EntityEventiP9centity_si_2090
	dd _Z14CG_EntityEventiP9centity_si_2100
	dd _Z14CG_EntityEventiP9centity_si_2110
	dd _Z14CG_EntityEventiP9centity_si_2120
	dd _Z14CG_EntityEventiP9centity_si_2130
	dd _Z14CG_EntityEventiP9centity_si_2140
	dd _Z14CG_EntityEventiP9centity_si_2150
	dd _Z14CG_EntityEventiP9centity_si_2160
	dd _Z14CG_EntityEventiP9centity_si_2170
	dd _Z14CG_EntityEventiP9centity_si_160
	dd _Z14CG_EntityEventiP9centity_si_2180
	dd _Z14CG_EntityEventiP9centity_si_2190
	dd _Z14CG_EntityEventiP9centity_si_2200
	dd _Z14CG_EntityEventiP9centity_si_2210
	dd _Z14CG_EntityEventiP9centity_si_2220
	dd _Z14CG_EntityEventiP9centity_si_2230
	dd _Z14CG_EntityEventiP9centity_si_2240
	dd _Z14CG_EntityEventiP9centity_si_80
	dd _Z14CG_EntityEventiP9centity_si_2250
	dd _Z14CG_EntityEventiP9centity_si_2260
	dd _Z14CG_EntityEventiP9centity_si_2270
	dd _Z14CG_EntityEventiP9centity_si_2280
	dd _Z14CG_EntityEventiP9centity_si_2290
	dd _Z14CG_EntityEventiP9centity_si_2300
	dd _Z14CG_EntityEventiP9centity_si_2310
	dd _Z14CG_EntityEventiP9centity_si_2320
	dd _Z14CG_EntityEventiP9centity_si_2330
	dd _Z14CG_EntityEventiP9centity_si_2340
	dd _Z14CG_EntityEventiP9centity_si_2350
	dd _Z14CG_EntityEventiP9centity_si_2360
	dd _Z14CG_EntityEventiP9centity_si_2370
	dd _Z14CG_EntityEventiP9centity_si_2380
_Z14CG_EntityEventiP9centity_si_jumptab_1:
	dd _Z14CG_EntityEventiP9centity_si_2390
	dd _Z14CG_EntityEventiP9centity_si_2390
	dd _Z14CG_EntityEventiP9centity_si_2400
	dd _Z14CG_EntityEventiP9centity_si_2400
	dd _Z14CG_EntityEventiP9centity_si_2410
_Z14CG_EntityEventiP9centity_si_jumptab_2:
	dd _Z14CG_EntityEventiP9centity_si_2420
	dd _Z14CG_EntityEventiP9centity_si_2430
	dd _Z14CG_EntityEventiP9centity_si_2440
	dd _Z14CG_EntityEventiP9centity_si_840
	dd _Z14CG_EntityEventiP9centity_si_2450
	dd _Z14CG_EntityEventiP9centity_si_2460
	dd _Z14CG_EntityEventiP9centity_si_2470
	dd _Z14CG_EntityEventiP9centity_si_840
	dd _Z14CG_EntityEventiP9centity_si_2480


;CG_GetBoneIndex(int, int, unsigned int, unsigned char*)
_Z15CG_GetBoneIndexiijPh:
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
	call _Z17Com_GetClientDObjii
	test eax, eax
	jz _Z15CG_GetBoneIndexiijPh_10
	mov [ebp+0x10], ebx
	mov [ebp+0xc], esi
	mov [ebp+0x8], eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp _Z16DObjGetBoneIndexPK6DObj_sjPh
_Z15CG_GetBoneIndexiijPh_10:
	xor eax, eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;PIXBeginNamedEvent(int, char const*, ...)
_Z18PIXBeginNamedEventiPKcz:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop


;CG_PlayBoltedEffect(int, FxEffectDef const*, int, unsigned int)
_Z19CG_PlayBoltedEffectiPK11FxEffectDefij:
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
	call _Z17Com_GetClientDObjii
	mov edx, eax
	test eax, eax
	jz _Z19CG_PlayBoltedEffectiPK11FxEffectDefij_10
	lea eax, [ebp-0x9]
	mov [esp+0x8], eax
	mov eax, [ebp+0x14]
	mov [esp+0x4], eax
	mov [esp], edx
	call _Z16DObjGetBoneIndexPK6DObj_sjPh
	test eax, eax
	jz _Z19CG_PlayBoltedEffectiPK11FxEffectDefij_10
	movzx eax, byte [ebp-0x9]
	mov [esp+0x10], eax
	mov [esp+0xc], ebx
	mov eax, cgArray
	mov eax, [eax+0x46128]
	mov [esp+0x8], eax
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z19FX_PlayBoltedEffectiPK11FxEffectDefiii
_Z19CG_PlayBoltedEffectiPK11FxEffectDefij_10:
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

