;Imports of cg_snapshot_mp:
	extern cgArray
	extern memset
	extern _Z14XAnimClearTreeP11XAnimTree_s
	extern _Z15CG_SafeDObjFreeii
	extern cg_entitiesArray
	extern memcpy
	extern cgsArray
	extern _Z14CL_GetSnapshotiiP10snapshot_s
	extern _Z27CG_AddLagometerSnapshotInfoP10snapshot_s
	extern _Z16Com_PrintWarningiPKcz
	extern _Z13CG_ClearUnioniP9centity_s
	extern _Z30AimAssist_ClearEntityReferenceii
	extern _Z21BG_EvaluateTrajectoryPK12trajectory_tiPf
	extern _Z15CG_UnlinkEntityii
	extern _Z9I_stricmpPKcS0_
	extern _Z18XAnimCloneAnimTreePK11XAnimTree_sPS_
	extern cg_entityOriginArray
	extern _Z20CG_ResetPlayerEntityiP4cg_sP9centity_si
	extern _Z17Com_GetClientDObjii
	extern _Z24CG_Player_PreControllersP6DObj_sP9centity_s
	extern _Z26CG_UpdateBModelWorldBoundsiP9centity_si
	extern _Z21CG_PreProcess_GetDObjiiiP6XModel
	extern _Z22CG_mg42_PreControllersP6DObj_sP9centity_s
	extern _Z19CG_UpdateViewOffseti
	extern _Z24CG_SetFrameInterpolationi
	extern _Z27CG_ExecuteNewServerCommandsii
	extern _Z29CG_CheckOpenWaitingScriptMenui
	extern strcmp
	extern _Z10I_strncpyzPcPKci
	extern _Z18CL_GetConfigStringii
	extern _Z10CG_Respawni
	extern _Z14R_UnlinkEntityjj
	extern _Z19FX_MarkEntDetachAllii
	extern _Z20FX_ThroughWithEffectiP8FxEffect
	extern _Z25CG_UpdateWeaponViewmodelsi
	extern _Z15R_RegisterModelPKc
	extern _Z23CG_UpdateHandViewmodelsiP6XModel
	extern _Z16CG_BuildItemListiPK10snapshot_s
	extern cg_nopredict
	extern _Z26CG_ExtractTransPlayerStatePK13playerState_sP18transPlayerState_t
	extern _Z24CG_TransitionPlayerStateiP13playerState_sPK18transPlayerState_t
	extern _Z23CG_RestartSmokeGrenadesi
	extern _Z13XAnimGetAnimsPK11XAnimTree_s
	extern _Z13XAnimIsLoopedPK7XAnim_sj
	extern _Z19XAnimGetNumChildrenPK7XAnim_sj
	extern _Z12XAnimSetTimeP11XAnimTree_sjf
	extern _Z22UI_SafeTranslateStringPKc
	extern _Z2vaPKcz
	extern _Z14CG_GameMessageiPKc
	extern _Z16CG_ClearItemListv
	extern cg_synchronousClients
	extern _Z27BG_PlayerStateToEntityStateP13playerState_sP13entityState_sih
	extern _Z19CG_UpdatePlayerDObjiP9centity_s
	extern _Z14CG_CheckEventsiP9centity_s
	extern _Z21CG_SetEquippedOffHandii
	extern _Z17CG_IsEntityLinkedii
	extern _Z15Phys_ObjDestroy9PhysWorldi
	extern _Z14Ragdoll_Removei
	extern _Z18PIXBeginNamedEventiPKcz
	extern _Z27CL_GetCurrentSnapshotNumberiPiS_
	extern _Z25CG_ItemListLocalClientNumv
	extern _Z15AimAssist_Setupi
	extern _Z9Com_Error11errorParm_tPKcz
	extern _Z15R_InitSceneDatai
	extern _Z12AnglesToAxisPKfPA3_f
	extern _Z15SND_SetListeneriiPKfPA3_S_
	extern _Z17SND_FadeAllSoundsfi
	extern _Z23CG_ClearEntityCollWorldi
	extern _Z11CG_InitViewi

;Exports of cg_snapshot_mp:
	global _Z21CG_TransitionSnapshoti
	global _Z19CG_ReadNextSnapshoti
	global _Z14CG_ResetEntityiP9centity_si
	global _Z14CG_SetNextSnapiP10snapshot_s
	global _Z17CG_ShutdownEntityiP9centity_s
	global _Z19CG_ProcessSnapshotsi
	global _Z21CG_SetInitialSnapshotiP10snapshot_s


SECTION .text


;CG_TransitionSnapshot(int)
_Z21CG_TransitionSnapshoti:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov [ebp-0x20], eax
	mov ebx, cgArray
	mov eax, [ebx+0x20]
	mov ecx, [eax+0x2f74]
	test ecx, ecx
	jle _Z21CG_TransitionSnapshoti_10
	mov dword [ebp-0x1c], 0x0
	mov [ebp-0x24], ebx
	mov dword [ebp-0x28], 0x21770
	jmp _Z21CG_TransitionSnapshoti_20
_Z21CG_TransitionSnapshoti_30:
	mov dword [esi+0x4], 0x0
	add dword [ebp-0x1c], 0x1
	add dword [ebp-0x28], 0x64
	mov eax, [ebx+0x20]
	mov edx, [ebp-0x1c]
	cmp [eax+0x2f74], edx
	jle _Z21CG_TransitionSnapshoti_10
_Z21CG_TransitionSnapshoti_20:
	mov edx, [ebp-0x28]
	lea edi, [eax+edx]
	mov eax, [edi+0x8]
	lea edx, [eax+eax*8]
	mov ecx, edx
	shl ecx, 0x4
	add edx, ecx
	lea edx, [eax+edx*2]
	lea esi, [ebx+edx*4+0xe9f34]
	mov edx, [esi+0x4]
	test edx, edx
	jnz _Z21CG_TransitionSnapshoti_30
	mov ebx, [esi+0x4a8]
	mov dword [esp+0x8], 0x4cc
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call memset
	mov [esi+0x4a8], ebx
	mov [esp], ebx
	call _Z14XAnimClearTreeP11XAnimTree_s
	mov eax, [edi+0x8]
	mov [esp+0x4], eax
	mov eax, [ebp-0x20]
	mov [esp], eax
	call _Z15CG_SafeDObjFreeii
	mov ebx, [ebp-0x24]
	add dword [ebp-0x1c], 0x1
	add dword [ebp-0x28], 0x64
	mov eax, [ebx+0x20]
	mov edx, [ebp-0x1c]
	cmp [eax+0x2f74], edx
	jg _Z21CG_TransitionSnapshoti_20
_Z21CG_TransitionSnapshoti_10:
	mov edi, [ebx+0x24]
	mov [ebx+0x20], edi
	test byte [edi+0x20], 0x6
	jz _Z21CG_TransitionSnapshoti_40
	mov eax, [edi+0xe8]
	lea edx, [eax*4]
	shl eax, 0x5
	sub eax, edx
	mov edx, eax
	shl edx, 0x4
	add eax, edx
	add eax, cg_entitiesArray
	lea edx, [eax+0x64]
	add eax, 0xd4
	mov dword [esp+0x8], 0x68
	mov [esp+0x4], eax
	mov [esp], edx
	call memcpy
_Z21CG_TransitionSnapshoti_40:
	mov eax, [edi+0x2f70]
	test eax, eax
	jle _Z21CG_TransitionSnapshoti_50
	mov ebx, edi
	xor esi, esi
_Z21CG_TransitionSnapshoti_60:
	mov eax, [ebx+0x2f78]
	lea edx, [eax*4]
	shl eax, 0x5
	sub eax, edx
	mov edx, eax
	shl edx, 0x4
	add eax, edx
	add eax, cg_entitiesArray
	lea edx, [eax+0x64]
	add eax, 0xd4
	mov dword [esp+0x8], 0x68
	mov [esp+0x4], eax
	mov [esp], edx
	call memcpy
	add esi, 0x1
	add ebx, 0xf4
	cmp esi, [edi+0x2f70]
	jl _Z21CG_TransitionSnapshoti_60
_Z21CG_TransitionSnapshoti_50:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;CG_ReadNextSnapshot(int)
_Z19CG_ReadNextSnapshoti:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov [ebp-0x1c], eax
	mov ebx, cgArray
	mov ecx, [ebx+0x18]
	mov eax, cgsArray
	mov edx, [eax+0x18]
	lea eax, [edx+0x3e8]
	cmp ecx, eax
	jg _Z19CG_ReadNextSnapshoti_10
_Z19CG_ReadNextSnapshoti_70:
	mov esi, edx
	cmp [ebx+0x18], edx
	jg _Z19CG_ReadNextSnapshoti_20
_Z19CG_ReadNextSnapshoti_60:
	xor ebx, ebx
_Z19CG_ReadNextSnapshoti_80:
	mov eax, ebx
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19CG_ReadNextSnapshoti_20:
	mov edi, ebx
	lea edx, [ebx+0x28]
	mov [ebp-0x20], edx
	mov eax, cgsArray
	mov [ebp-0x24], eax
	jmp _Z19CG_ReadNextSnapshoti_30
_Z19CG_ReadNextSnapshoti_50:
	mov edx, [ebp-0x20]
_Z19CG_ReadNextSnapshoti_30:
	cmp [edi+0x20], edx
	setz dl
	movzx edx, dl
	mov eax, edx
	shl eax, 0x6
	mov ecx, edx
	shl ecx, 0xa
	add eax, ecx
	sub eax, edx
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	lea ebx, [edi+eax*4+0x28]
	lea eax, [esi+0x1]
	mov edx, [ebp-0x24]
	mov [edx+0x18], eax
	mov [esp+0x8], ebx
	mov [esp+0x4], eax
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call _Z14CL_GetSnapshotiiP10snapshot_s
	test eax, eax
	jnz _Z19CG_ReadNextSnapshoti_40
	mov dword [esp], 0x0
	call _Z27CG_AddLagometerSnapshotInfoP10snapshot_s
	mov edx, [ebp-0x24]
	mov esi, [edx+0x18]
	cmp [edi+0x18], esi
	jg _Z19CG_ReadNextSnapshoti_50
	jmp _Z19CG_ReadNextSnapshoti_60
_Z19CG_ReadNextSnapshoti_10:
	mov [esp+0xc], edx
	mov [esp+0x8], ecx
	mov dword [esp+0x4], _cstring_warning_cg_readn
	mov dword [esp], 0xe
	call _Z16Com_PrintWarningiPKcz
	mov eax, cgsArray
	mov edx, [eax+0x18]
	jmp _Z19CG_ReadNextSnapshoti_70
_Z19CG_ReadNextSnapshoti_40:
	mov [esp], ebx
	call _Z27CG_AddLagometerSnapshotInfoP10snapshot_s
	jmp _Z19CG_ReadNextSnapshoti_80


;CG_ResetEntity(int, centity_s*, int)
_Z14CG_ResetEntityiP9centity_si:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov [ebp-0x30], eax
	mov esi, edx
	mov [ebp-0x34], ecx
	lea edx, [edx+0x1cc]
	xor eax, eax
	mov [esi+0x1cc], eax
	mov [edx+0x4], eax
	mov [edx+0x8], eax
	mov [esp+0x4], esi
	mov eax, [ebp-0x30]
	mov [esp], eax
	call _Z17CG_ShutdownEntityiP9centity_s
	mov [esp+0x4], esi
	mov edx, [ebp-0x30]
	mov [esp], edx
	call _Z13CG_ClearUnioniP9centity_s
	mov eax, [esi+0xcc]
	mov [esp+0x4], eax
	mov ecx, [ebp-0x30]
	mov [esp], ecx
	call _Z30AimAssist_ClearEntityReferenceii
	lea edx, [esi+0x64]
	lea eax, [esi+0xd4]
	mov dword [esp+0x8], 0x68
	mov [esp+0x4], eax
	mov [esp], edx
	call memcpy
	mov byte [esi+0x1c2], 0x0
	mov dword [esi+0x8], 0x0
	lea eax, [esi+0x1c]
	mov [esp+0x8], eax
	mov ebx, cgArray
	mov eax, [ebx+0x46128]
	mov [esp+0x4], eax
	lea eax, [esi+0xd8]
	mov [esp], eax
	call _Z21BG_EvaluateTrajectoryPK12trajectory_tiPf
	lea edi, [esi+0x28]
	mov [esp+0x8], edi
	mov eax, [ebx+0x46128]
	mov [esp+0x4], eax
	lea eax, [esi+0xfc]
	mov [esp], eax
	call _Z21BG_EvaluateTrajectoryPK12trajectory_tiPf
	mov eax, [esi+0xd0]
	mov [esi+0x2], al
	mov eax, [esi+0xcc]
	mov [esp+0x4], eax
	mov eax, [ebp-0x30]
	mov [esp], eax
	call _Z15CG_UnlinkEntityii
	cmp dword [esi+0xd0], 0xd
	ja _Z14CG_ResetEntityiP9centity_si_10
	mov ecx, [esi+0xd0]
	jmp dword [ecx*4+_Z14CG_ResetEntityiP9centity_si_jumptab_0]
_Z14CG_ResetEntityiP9centity_si_170:
	mov edx, [esi+0x158]
	lea eax, [edx+edx*8]
	mov ecx, eax
	shl ecx, 0x4
	add eax, ecx
	lea eax, [edx+eax*2]
	mov edx, cgArray
	lea eax, [edx+eax*4+0xe9f34]
	mov [ebp-0x2c], eax
	mov edx, [esi+0xcc]
	lea eax, [edx+edx*8]
	mov ecx, eax
	shl ecx, 0x4
	add eax, ecx
	lea eax, [edx+eax*2]
	mov edx, cgsArray
	lea ebx, [edx+eax*4-0x11f40]
	lea edx, [ebx+0x4]
	mov [ebp-0x28], edx
	mov ecx, [edx+0x4a8]
	mov [ebp-0x24], ecx
	test byte [esi+0xd6], 0x8
	jz _Z14CG_ResetEntityiP9centity_si_20
	mov dword [esp+0x8], 0x4cc
	mov eax, [ebp-0x2c]
	mov [esp+0x4], eax
	mov [esp], edx
	call memcpy
	mov edi, [ebp-0x28]
	mov dword [ebp-0x20], 0x0
	add ebx, 0x200
_Z14CG_ResetEntityiP9centity_si_40:
	mov dword [esp+0x4], _cstring_j_spine4
	mov [esp], ebx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z14CG_ResetEntityiP9centity_si_30
	mov byte [edi+0x7c], 0x0
	mov byte [edi+0x1fc], 0x0
_Z14CG_ResetEntityiP9centity_si_30:
	add dword [ebp-0x20], 0x1
	add ebx, 0x40
	add edi, 0x40
	cmp dword [ebp-0x20], 0x6
	jnz _Z14CG_ResetEntityiP9centity_si_40
	mov ecx, [ebp-0x24]
	mov edx, [ebp-0x28]
	mov [edx+0x4a8], ecx
	mov [esp+0x4], ecx
	mov edx, [ebp-0x2c]
	mov eax, [edx+0x4a8]
	mov [esp], eax
	call _Z18XAnimCloneAnimTreePK11XAnimTree_sPS_
	mov dword [esi+0x1c4], 0x0
_Z14CG_ResetEntityiP9centity_si_130:
	mov eax, [ebp-0x28]
	mov dword [eax+0x3f4], 0x1
_Z14CG_ResetEntityiP9centity_si_60:
	mov eax, [esi+0xcc]
	lea eax, [eax+eax*2]
	mov ecx, [ebp-0x30]
	lea edx, [ecx+ecx*2]
	shl edx, 0xc
	lea eax, [edx+eax*4]
	add eax, cg_entityOriginArray
	mov edx, 0x48000000
	mov [eax], edx
	mov [eax+0x4], edx
	mov [eax+0x8], edx
_Z14CG_ResetEntityiP9centity_si_80:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z14CG_ResetEntityiP9centity_si_150:
	test byte [esi+0xd6], 0x1
	jz _Z14CG_ResetEntityiP9centity_si_50
	mov eax, cgArray
	mov eax, [eax+0x46128]
	sub eax, [esi+0x120]
	cmp eax, 0xc8
	jle _Z14CG_ResetEntityiP9centity_si_50
_Z14CG_ResetEntityiP9centity_si_10:
	mov eax, [esi+0x16c]
	mov [esi+0x1c4], eax
	jmp _Z14CG_ResetEntityiP9centity_si_60
_Z14CG_ResetEntityiP9centity_si_160:
	mov eax, esi
	mov edx, 0x6
_Z14CG_ResetEntityiP9centity_si_70:
	mov byte [eax+0x44], 0xfe
	add eax, 0x1
	sub edx, 0x1
	jnz _Z14CG_ResetEntityiP9centity_si_70
	mov eax, [esi+0x16c]
	mov [esi+0x1c4], eax
	mov edx, [esi+0x158]
	lea eax, [edx+edx*8]
	mov ecx, eax
	shl ecx, 0x4
	add eax, ecx
	lea eax, [edx+eax*2]
	mov ebx, cgArray
	lea eax, [ebx+eax*4+0xe9f30]
	lea ecx, [eax+0x4]
	cvtsi2ss xmm0, dword [esi+0x124]
	movss [ecx+0x3dc], xmm0
	mov edx, [esi+0x120]
	mov [ecx+0x3e0], edx
	lea ecx, [eax+0x3e8]
	mov edx, [edi]
	mov [eax+0x3e8], edx
	mov eax, [edi+0x4]
	mov [ecx+0x4], eax
	mov eax, [edi+0x8]
	mov [ecx+0x8], eax
	xor eax, eax
	mov [esi+0x28], eax
	mov [esi+0x30], eax
	mov edx, [ebp-0x34]
	mov [esp+0xc], edx
	mov [esp+0x8], esi
	mov [esp+0x4], ebx
	mov ecx, [ebp-0x30]
	mov [esp], ecx
	call _Z20CG_ResetPlayerEntityiP4cg_sP9centity_si
	mov eax, [ebp-0x30]
	mov [esp+0x4], eax
	mov eax, [esi+0xcc]
	mov [esp], eax
	call _Z17Com_GetClientDObjii
	test eax, eax
	jz _Z14CG_ResetEntityiP9centity_si_60
	mov [esp+0x4], esi
	mov [esp], eax
	call _Z24CG_Player_PreControllersP6DObj_sP9centity_s
	jmp _Z14CG_ResetEntityiP9centity_si_60
_Z14CG_ResetEntityiP9centity_si_180:
	mov eax, [esi+0x16c]
	mov [esi+0x1c4], eax
	cmp dword [esi+0x164], 0xffffff
	jnz _Z14CG_ResetEntityiP9centity_si_60
	mov dword [esp+0x8], 0x1
	mov [esp+0x4], esi
	mov ecx, [ebp-0x30]
	mov [esp], ecx
	call _Z26CG_UpdateBModelWorldBoundsiP9centity_si
	jmp _Z14CG_ResetEntityiP9centity_si_80
_Z14CG_ResetEntityiP9centity_si_190:
	mov eax, [esi+0x16c]
	mov [esi+0x1c4], eax
	mov byte [esi+0x4d], 0xfe
	mov byte [esi+0x4e], 0xfe
	mov byte [esi+0x4f], 0xfe
	mov edx, [esi+0x154]
	mov eax, cgsArray
	mov eax, [eax+edx*4+0x294]
	mov [esp+0xc], eax
	mov [esp+0x8], ecx
	mov eax, [esi+0xcc]
	mov [esp+0x4], eax
	mov edx, [ebp-0x30]
	mov [esp], edx
	call _Z21CG_PreProcess_GetDObjiiiP6XModel
	test eax, eax
	jz _Z14CG_ResetEntityiP9centity_si_60
	mov [esp+0x4], esi
	mov [esp], eax
	call _Z22CG_mg42_PreControllersP6DObj_sP9centity_s
	jmp _Z14CG_ResetEntityiP9centity_si_60
_Z14CG_ResetEntityiP9centity_si_50:
	mov dword [esi+0x1c4], 0x0
	jmp _Z14CG_ResetEntityiP9centity_si_60
_Z14CG_ResetEntityiP9centity_si_20:
	cmp byte [edx+0x3c], 0x0
	jz _Z14CG_ResetEntityiP9centity_si_90
	mov eax, [edx+0x8]
	mov edx, [ebp-0x2c]
	cmp eax, [edx+0x8]
	jz _Z14CG_ResetEntityiP9centity_si_100
	mov ecx, edx
_Z14CG_ResetEntityiP9centity_si_140:
	mov dword [esp+0x8], 0x4cc
	mov [esp+0x4], ecx
	mov eax, [ebp-0x28]
	mov [esp], eax
	call memcpy
	mov edi, [ebp-0x28]
	mov dword [ebp-0x1c], 0x0
	add ebx, 0x200
_Z14CG_ResetEntityiP9centity_si_120:
	mov dword [esp+0x4], _cstring_j_spine4
	mov [esp], ebx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z14CG_ResetEntityiP9centity_si_110
	mov byte [edi+0x7c], 0x0
	mov byte [edi+0x1fc], 0x0
_Z14CG_ResetEntityiP9centity_si_110:
	add dword [ebp-0x1c], 0x1
	add ebx, 0x40
	add edi, 0x40
	cmp dword [ebp-0x1c], 0x6
	jnz _Z14CG_ResetEntityiP9centity_si_120
	mov ecx, [ebp-0x24]
	mov edx, [ebp-0x28]
	mov [edx+0x4a8], ecx
_Z14CG_ResetEntityiP9centity_si_100:
	mov eax, [esi+0x16c]
	mov [esi+0x1c4], eax
	jmp _Z14CG_ResetEntityiP9centity_si_130
_Z14CG_ResetEntityiP9centity_si_90:
	mov ecx, [ebp-0x2c]
	jmp _Z14CG_ResetEntityiP9centity_si_140
	nop
	
	
_Z14CG_ResetEntityiP9centity_si_jumptab_0:
	dd _Z14CG_ResetEntityiP9centity_si_150
	dd _Z14CG_ResetEntityiP9centity_si_160
	dd _Z14CG_ResetEntityiP9centity_si_170
	dd _Z14CG_ResetEntityiP9centity_si_10
	dd _Z14CG_ResetEntityiP9centity_si_150
	dd _Z14CG_ResetEntityiP9centity_si_10
	dd _Z14CG_ResetEntityiP9centity_si_180
	dd _Z14CG_ResetEntityiP9centity_si_10
	dd _Z14CG_ResetEntityiP9centity_si_60
	dd _Z14CG_ResetEntityiP9centity_si_60
	dd _Z14CG_ResetEntityiP9centity_si_10
	dd _Z14CG_ResetEntityiP9centity_si_190
	dd _Z14CG_ResetEntityiP9centity_si_10
	dd _Z14CG_ResetEntityiP9centity_si_180


;CG_SetNextSnap(int, snapshot_s*)
_Z14CG_SetNextSnapiP10snapshot_s:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xfc
	lea eax, [ebp-0xb0]
	mov dword [esp+0x8], 0x80
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call memset
	mov eax, cgArray
	mov edx, [eax+0x24]
	test edx, edx
	jz _Z14CG_SetNextSnapiP10snapshot_s_10
	mov esi, [edx+0x2f70]
	test esi, esi
	jle _Z14CG_SetNextSnapiP10snapshot_s_20
	xor ebx, ebx
	mov esi, cg_entitiesArray
_Z14CG_SetNextSnapiP10snapshot_s_30:
	mov eax, ebx
	shl eax, 0x4
	sub eax, ebx
	lea eax, [ebx+eax*4]
	mov ecx, [edx+eax*4+0x2f78]
	lea edx, [ecx*4]
	mov eax, ecx
	shl eax, 0x5
	sub eax, edx
	mov edx, eax
	shl edx, 0x4
	add eax, edx
	mov byte [esi+eax+0x1c0], 0x0
	mov edx, ecx
	sar edx, 0x5
	and ecx, 0x1f
	mov eax, 0x80000000
	shr eax, cl
	or [ebp+edx*4-0xb0], eax
	add ebx, 0x1
	mov ecx, cgArray
	mov edx, [ecx+0x24]
	cmp ebx, [edx+0x2f70]
	jl _Z14CG_SetNextSnapiP10snapshot_s_30
_Z14CG_SetNextSnapiP10snapshot_s_140:
	mov ecx, [edx+0xe8]
	lea eax, [ecx*4]
	mov edx, ecx
	shl edx, 0x5
	sub edx, eax
	mov eax, edx
	shl eax, 0x4
	add edx, eax
	lea eax, [edx+esi]
	cmp byte [eax+0x1c0], 0x0
	jz _Z14CG_SetNextSnapiP10snapshot_s_10
	mov byte [eax+0x1c0], 0x0
	mov edx, ecx
	sar edx, 0x5
	and ecx, 0x1f
	mov eax, 0x80000000
	shr eax, cl
	or [ebp+edx*4-0xb0], eax
_Z14CG_SetNextSnapiP10snapshot_s_10:
	mov edx, [ebp+0xc]
	mov eax, cgArray
	mov [eax+0x24], edx
	test edx, edx
	jz _Z14CG_SetNextSnapiP10snapshot_s_40
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z19CG_UpdateViewOffseti
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z24CG_SetFrameInterpolationi
	mov edx, [ebp+0xc]
	mov eax, [edx+0x23078]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z27CG_ExecuteNewServerCommandsii
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z29CG_CheckOpenWaitingScriptMenui
	mov edx, [ebp+0xc]
	mov ecx, [edx+0x2f74]
	test ecx, ecx
	jle _Z14CG_SetNextSnapiP10snapshot_s_50
	mov dword [ebp-0xc0], 0x0
	add edx, 0x21770
	mov [ebp-0xe0], edx
	mov edi, edx
	mov ecx, edx
_Z14CG_SetNextSnapiP10snapshot_s_250:
	add edi, 0x8
	mov eax, [ecx+0x8]
	lea edx, [eax+eax*8]
	mov ecx, edx
	shl ecx, 0x4
	add edx, ecx
	lea edx, [eax+edx*2]
	lea edx, [edx*4+0xe9f30]
	add edx, cgArray
	lea eax, [edx+0x4]
	mov [ebp-0xd4], eax
	mov edx, [edx+0x4]
	test edx, edx
	jz _Z14CG_SetNextSnapiP10snapshot_s_60
	mov eax, [eax+0x1c]
_Z14CG_SetNextSnapiP10snapshot_s_260:
	mov edx, [ebp-0xd4]
	mov [edx+0x20], eax
	mov dword [edx], 0x1
	mov dword [edx+0x4], 0x1
	mov ecx, [ebp-0xe0]
	mov eax, [ecx+0x8]
	mov [edx+0x8], eax
	mov eax, [ecx+0xc]
	mov [edx+0x1c], eax
	mov eax, [ecx+0x58]
	mov [edx+0x24], eax
	mov eax, [ecx+0x5c]
	mov [edx+0x28], eax
	mov eax, [ecx+0x60]
	mov [edx+0x2c], eax
	mov eax, [ecx+0x64]
	mov [edx+0x4c0], eax
	mov eax, [ecx+0x68]
	mov [edx+0x4c4], eax
	lea esi, [edi+0x3c]
	mov ebx, edx
	add ebx, 0xc
	mov [esp+0x4], esi
	mov [esp], ebx
	call strcmp
	test eax, eax
	jz _Z14CG_SetNextSnapiP10snapshot_s_70
	mov eax, [ebp-0xd4]
	cmp byte [eax+0xc], 0x0
	jnz _Z14CG_SetNextSnapiP10snapshot_s_80
_Z14CG_SetNextSnapiP10snapshot_s_420:
	mov dword [esp+0x8], 0x10
	mov [esp+0x4], esi
	mov [esp], ebx
	call _Z10I_strncpyzPcPKci
_Z14CG_SetNextSnapiP10snapshot_s_70:
	mov ecx, [ebp-0xe0]
	mov eax, [ecx+0x10]
	add eax, 0x33e
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z18CL_GetConfigStringii
	mov ebx, eax
	mov esi, [ebp-0xd4]
	add esi, 0x3c
	mov [esp+0x4], eax
	mov [esp], esi
	call strcmp
	test eax, eax
	jnz _Z14CG_SetNextSnapiP10snapshot_s_90
_Z14CG_SetNextSnapiP10snapshot_s_270:
	mov esi, edi
	mov dword [ebp-0xd0], 0x0
	mov ecx, [ebp-0xd4]
	add ecx, 0x1fc
	mov [ebp-0xdc], ecx
	mov edi, [ebp-0xd4]
	add edi, 0x7c
	jmp _Z14CG_SetNextSnapiP10snapshot_s_100
_Z14CG_SetNextSnapiP10snapshot_s_130:
	mov eax, [esi+0x24]
	add eax, 0x8ea
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z18CL_GetConfigStringii
	mov ebx, eax
	mov [esp+0x4], eax
	mov eax, [ebp-0xdc]
	mov [esp], eax
	call strcmp
	test eax, eax
	jnz _Z14CG_SetNextSnapiP10snapshot_s_110
	add dword [ebp-0xd0], 0x1
	add edi, 0x40
	add dword [ebp-0xdc], 0x40
	add esi, 0x4
	cmp dword [ebp-0xd0], 0x6
	jz _Z14CG_SetNextSnapiP10snapshot_s_120
_Z14CG_SetNextSnapiP10snapshot_s_100:
	mov eax, [esi+0xc]
	add eax, 0x33e
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z18CL_GetConfigStringii
	mov ebx, eax
	mov [esp+0x4], eax
	mov [esp], edi
	call strcmp
	test eax, eax
	jz _Z14CG_SetNextSnapiP10snapshot_s_130
	mov dword [esp+0x8], 0x40
	mov [esp+0x4], ebx
	mov [esp], edi
	call _Z10I_strncpyzPcPKci
	mov edx, [ebp-0xd4]
	mov dword [edx+0x3f4], 0x1
	jmp _Z14CG_SetNextSnapiP10snapshot_s_130
_Z14CG_SetNextSnapiP10snapshot_s_20:
	mov esi, cg_entitiesArray
	jmp _Z14CG_SetNextSnapiP10snapshot_s_140
_Z14CG_SetNextSnapiP10snapshot_s_50:
	mov ecx, edx
_Z14CG_SetNextSnapiP10snapshot_s_450:
	mov eax, [ecx+0x160]
	mov edx, cgArray
	mov [edx+0x50304], eax
	mov ebx, [ecx+0xe8]
	mov byte [edx+0xfd758], 0x0
	test byte [ecx+0x20], 0x6
	jnz _Z14CG_SetNextSnapiP10snapshot_s_150
	mov eax, [ebp+0xc]
	cmp dword [eax+0x10], 0x4
	jz _Z14CG_SetNextSnapiP10snapshot_s_160
	mov ecx, cgArray
	mov esi, [ecx+0x46134]
	test esi, esi
	jnz _Z14CG_SetNextSnapiP10snapshot_s_170
	mov edx, [ecx+0x20]
	mov ecx, [ebp+0xc]
	mov eax, [ecx+0x164]
	cmp eax, [edx+0x164]
	jz _Z14CG_SetNextSnapiP10snapshot_s_180
_Z14CG_SetNextSnapiP10snapshot_s_470:
	mov eax, cgArray
_Z14CG_SetNextSnapiP10snapshot_s_560:
	mov edx, [eax+0x20]
	add edx, 0xc
	mov eax, [ebp+0xc]
	add eax, 0xc
	mov dword [esp+0x8], 0x2f64
	mov [esp+0x4], eax
	mov [esp], edx
	call memcpy
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z10CG_Respawni
_Z14CG_SetNextSnapiP10snapshot_s_480:
	mov ecx, [ebp+0xc]
	mov ebx, [ecx+0x2f70]
	test ebx, ebx
	jle _Z14CG_SetNextSnapiP10snapshot_s_190
	mov dword [ebp-0xbc], 0x0
	add ecx, 0x2f70
	mov [ebp-0xd8], ecx
	jmp _Z14CG_SetNextSnapiP10snapshot_s_200
_Z14CG_SetNextSnapiP10snapshot_s_220:
	mov eax, [esi+0x64]
	mov ecx, [ebp-0xd8]
	xor eax, [ecx+0x10]
	test al, 0x2
	jnz _Z14CG_SetNextSnapiP10snapshot_s_210
_Z14CG_SetNextSnapiP10snapshot_s_230:
	mov eax, [ebp-0xc4]
	not eax
	and eax, edx
	mov [ebp+edi*4-0xb0], eax
	add dword [ebp-0xbc], 0x1
	add dword [ebp-0xd8], 0xf4
	mov edx, [ebp-0xbc]
	mov eax, [ebp+0xc]
	cmp [eax+0x2f70], edx
	jle _Z14CG_SetNextSnapiP10snapshot_s_190
	mov ecx, [ebp-0xd8]
_Z14CG_SetNextSnapiP10snapshot_s_200:
	add ecx, 0x8
	mov eax, [ebp-0xd8]
	mov ebx, [eax+0x8]
	lea edx, [ebx*4]
	mov eax, ebx
	shl eax, 0x5
	sub eax, edx
	mov edx, eax
	shl edx, 0x4
	lea esi, [eax+edx]
	add esi, cg_entitiesArray
	lea eax, [esi+0xcc]
	mov dword [esp+0x8], 0xf4
	mov [esp+0x4], ecx
	mov [esp], eax
	call memcpy
	mov byte [esi+0x1c0], 0x1
	mov edi, ebx
	sar edi, 0x5
	and ebx, 0x1f
	mov dword [ebp-0xc4], 0x80000000
	mov ecx, ebx
	shr dword [ebp-0xc4], cl
	mov edx, [ebp+edi*4-0xb0]
	test [ebp-0xc4], edx
	jnz _Z14CG_SetNextSnapiP10snapshot_s_220
	mov ecx, 0x1
	mov edx, esi
	mov eax, [ebp+0x8]
	call _Z14CG_ResetEntityiP9centity_si
	mov edx, [ebp+edi*4-0xb0]
	jmp _Z14CG_SetNextSnapiP10snapshot_s_230
_Z14CG_SetNextSnapiP10snapshot_s_110:
	mov dword [esp+0x8], 0x40
	mov [esp+0x4], ebx
	mov edx, [ebp-0xdc]
	mov [esp], edx
	call _Z10I_strncpyzPcPKci
	mov ecx, [ebp-0xd4]
	mov dword [ecx+0x3f4], 0x1
	add dword [ebp-0xd0], 0x1
	add edi, 0x40
	add dword [ebp-0xdc], 0x40
	add esi, 0x4
	cmp dword [ebp-0xd0], 0x6
	jnz _Z14CG_SetNextSnapiP10snapshot_s_100
_Z14CG_SetNextSnapiP10snapshot_s_120:
	add dword [ebp-0xc0], 0x1
	add dword [ebp-0xe0], 0x64
	mov edx, [ebp-0xc0]
	mov eax, [ebp+0xc]
	cmp [eax+0x2f74], edx
	jle _Z14CG_SetNextSnapiP10snapshot_s_240
	mov edi, [ebp-0xe0]
	mov ecx, [ebp-0xe0]
	jmp _Z14CG_SetNextSnapiP10snapshot_s_250
_Z14CG_SetNextSnapiP10snapshot_s_60:
	mov ecx, [ebp-0xe0]
	mov eax, [ecx+0xc]
	jmp _Z14CG_SetNextSnapiP10snapshot_s_260
_Z14CG_SetNextSnapiP10snapshot_s_90:
	mov dword [esp+0x8], 0x40
	mov [esp+0x4], ebx
	mov [esp], esi
	call _Z10I_strncpyzPcPKci
	mov edx, [ebp-0xd4]
	mov dword [edx+0x3f4], 0x1
	jmp _Z14CG_SetNextSnapiP10snapshot_s_270
_Z14CG_SetNextSnapiP10snapshot_s_190:
	mov ecx, cgArray
	mov eax, [ecx+0x20]
	mov ecx, [eax+0x2f70]
	test ecx, ecx
	jle _Z14CG_SetNextSnapiP10snapshot_s_280
	xor edi, edi
	mov esi, 0x2f70
	jmp _Z14CG_SetNextSnapiP10snapshot_s_290
_Z14CG_SetNextSnapiP10snapshot_s_300:
	add edi, 0x1
	add esi, 0xf4
	mov ecx, cgArray
	mov eax, [ecx+0x20]
	cmp [eax+0x2f70], edi
	jle _Z14CG_SetNextSnapiP10snapshot_s_280
_Z14CG_SetNextSnapiP10snapshot_s_290:
	mov ebx, [eax+esi+0x8]
	mov edx, ebx
	sar edx, 0x5
	mov ecx, ebx
	and ecx, 0x1f
	mov eax, 0x80000000
	shr eax, cl
	test [ebp+edx*4-0xb0], eax
	jz _Z14CG_SetNextSnapiP10snapshot_s_300
	mov [esp+0x4], ebx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z14R_UnlinkEntityjj
	mov [esp+0x4], ebx
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z15CG_UnlinkEntityii
	mov [esp+0x4], ebx
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z19FX_MarkEntDetachAllii
	lea edx, [ebx*4]
	mov eax, ebx
	shl eax, 0x5
	sub eax, edx
	mov edx, eax
	shl edx, 0x4
	lea ebx, [eax+edx]
	add ebx, cg_entitiesArray
	mov [esp+0x4], ebx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z17CG_ShutdownEntityiP9centity_s
	mov eax, [ebx+0xd0]
	sub eax, 0x8
	cmp eax, 0x1
	ja _Z14CG_SetNextSnapiP10snapshot_s_300
	mov eax, [ebx+0x44]
	test eax, eax
	jz _Z14CG_SetNextSnapiP10snapshot_s_300
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z20FX_ThroughWithEffectiP8FxEffect
	mov dword [ebx+0x44], 0x0
	mov dword [ebx+0x40], 0x0
	add edi, 0x1
	add esi, 0xf4
	mov ecx, cgArray
	mov eax, [ecx+0x20]
	cmp [eax+0x2f70], edi
	jg _Z14CG_SetNextSnapiP10snapshot_s_290
_Z14CG_SetNextSnapiP10snapshot_s_280:
	mov eax, [ebp+0xc]
	mov edx, [eax+0x2f74]
	test edx, edx
	jg _Z14CG_SetNextSnapiP10snapshot_s_310
_Z14CG_SetNextSnapiP10snapshot_s_530:
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z25CG_UpdateWeaponViewmodelsi
	mov edx, [ebp+0xc]
	mov eax, [edx+0x110]
	test eax, eax
	jle _Z14CG_SetNextSnapiP10snapshot_s_320
	add eax, 0x33e
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z18CL_GetConfigStringii
	mov [esp], eax
	call _Z15R_RegisterModelPKc
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z23CG_UpdateHandViewmodelsiP6XModel
_Z14CG_SetNextSnapiP10snapshot_s_320:
	mov ebx, cgArray
	mov eax, [ebx+0x24]
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z16CG_BuildItemListiPK10snapshot_s
	mov edi, [ebx+0x5052c]
	test edi, edi
	jnz _Z14CG_SetNextSnapiP10snapshot_s_330
	mov eax, [ebx+0x24]
	mov esi, [eax+0x8a8]
	test esi, esi
	jnz _Z14CG_SetNextSnapiP10snapshot_s_340
_Z14CG_SetNextSnapiP10snapshot_s_570:
	mov ebx, [ebx+0x5052c]
	test ebx, ebx
	jnz _Z14CG_SetNextSnapiP10snapshot_s_330
_Z14CG_SetNextSnapiP10snapshot_s_390:
	mov ecx, [ebp+0xc]
	mov eax, [ecx+0x2f70]
	test eax, eax
	jg _Z14CG_SetNextSnapiP10snapshot_s_350
_Z14CG_SetNextSnapiP10snapshot_s_550:
	mov ecx, cgArray
	mov edi, [ecx+0x8]
	test edi, edi
	jnz _Z14CG_SetNextSnapiP10snapshot_s_360
	mov eax, [ecx+0x24]
	test byte [eax+0x20], 0x2
	jnz _Z14CG_SetNextSnapiP10snapshot_s_370
	mov eax, cg_nopredict
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z14CG_SetNextSnapiP10snapshot_s_380
_Z14CG_SetNextSnapiP10snapshot_s_370:
	mov edx, cgArray
_Z14CG_SetNextSnapiP10snapshot_s_510:
	lea ebx, [ebp-0x30]
	mov [esp+0x4], ebx
	mov eax, [edx+0x20]
	add eax, 0xc
	mov [esp], eax
	call _Z26CG_ExtractTransPlayerStatePK13playerState_sP18transPlayerState_t
	mov ecx, cgArray
	mov esi, [ecx+0x20]
	mov [esp+0x8], ebx
	mov eax, [ecx+0x24]
	add eax, 0xc
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z24CG_TransitionPlayerStateiP13playerState_sPK18transPlayerState_t
	mov [esi+0xc0], eax
_Z14CG_SetNextSnapiP10snapshot_s_460:
	mov edx, cgArray
	mov dword [edx+0x46134], 0x0
	add esp, 0xfc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z14CG_SetNextSnapiP10snapshot_s_330:
	mov ebx, cgArray
	mov eax, [ebx+0x24]
	mov ecx, [eax+0x8a8]
	test ecx, ecx
	jnz _Z14CG_SetNextSnapiP10snapshot_s_390
	mov dword [ebx+0x5052c], 0x0
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z23CG_RestartSmokeGrenadesi
	mov eax, [ebx+0x24]
	mov edx, [eax+0x2f70]
	test edx, edx
	jle _Z14CG_SetNextSnapiP10snapshot_s_390
	xor edi, edi
	xor esi, esi
	jmp _Z14CG_SetNextSnapiP10snapshot_s_400
_Z14CG_SetNextSnapiP10snapshot_s_410:
	add edi, 0x1
	add esi, 0xf4
	mov eax, cgArray
	mov eax, [eax+0x24]
	cmp edi, [eax+0x2f70]
	jge _Z14CG_SetNextSnapiP10snapshot_s_390
_Z14CG_SetNextSnapiP10snapshot_s_400:
	mov eax, [esi+eax+0x2f78]
	lea edx, [eax*4]
	shl eax, 0x5
	sub eax, edx
	mov edx, eax
	shl edx, 0x4
	lea ebx, [eax+edx]
	add ebx, cg_entitiesArray
	mov ecx, 0x1
	mov edx, ebx
	mov eax, [ebp+0x8]
	call _Z14CG_ResetEntityiP9centity_si
	cmp dword [ebx+0xd0], 0x2
	jnz _Z14CG_SetNextSnapiP10snapshot_s_410
	mov eax, [ebx+0xcc]
	lea edx, [eax+eax*8]
	mov ecx, edx
	shl ecx, 0x4
	add edx, ecx
	lea edx, [eax+edx*2]
	lea edx, [edx*4-0x11f40]
	add edx, cgsArray
	add edx, 0x4
	mov ecx, [edx+0x4a8]
	mov [ebp-0xc8], ecx
	mov ebx, [edx+0x38c]
	and bh, 0xfd
	mov [esp], ecx
	call _Z13XAnimGetAnimsPK11XAnimTree_s
	mov [ebp-0xcc], eax
	test ebx, ebx
	jz _Z14CG_SetNextSnapiP10snapshot_s_410
	mov [esp+0x4], ebx
	mov [esp], eax
	call _Z13XAnimIsLoopedPK7XAnim_sj
	test al, al
	jnz _Z14CG_SetNextSnapiP10snapshot_s_410
	mov [esp+0x4], ebx
	mov eax, [ebp-0xcc]
	mov [esp], eax
	call _Z19XAnimGetNumChildrenPK7XAnim_sj
	test eax, eax
	jnz _Z14CG_SetNextSnapiP10snapshot_s_410
	mov dword [esp+0x8], 0x3f800000
	mov [esp+0x4], ebx
	mov edx, [ebp-0xc8]
	mov [esp], edx
	call _Z12XAnimSetTimeP11XAnimTree_sjf
	jmp _Z14CG_SetNextSnapiP10snapshot_s_410
_Z14CG_SetNextSnapiP10snapshot_s_210:
	xor ecx, ecx
	mov edx, esi
	mov eax, [ebp+0x8]
	call _Z14CG_ResetEntityiP9centity_si
	mov edx, [ebp+edi*4-0xb0]
	jmp _Z14CG_SetNextSnapiP10snapshot_s_230
_Z14CG_SetNextSnapiP10snapshot_s_80:
	mov dword [esp], _cstring_cgame_playerrena
	call _Z22UI_SafeTranslateStringPKc
	mov [esp+0xc], esi
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_s7_s_s
	call _Z2vaPKcz
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z14CG_GameMessageiPKc
	jmp _Z14CG_SetNextSnapiP10snapshot_s_420
_Z14CG_SetNextSnapiP10snapshot_s_40:
	mov edx, [eax+0x20]
	test edx, edx
	jz _Z14CG_SetNextSnapiP10snapshot_s_430
	mov ebx, [edx+0x2f70]
	test ebx, ebx
	jg _Z14CG_SetNextSnapiP10snapshot_s_440
	mov eax, cgArray
_Z14CG_SetNextSnapiP10snapshot_s_590:
	mov dword [eax+0x20], 0x0
_Z14CG_SetNextSnapiP10snapshot_s_430:
	call _Z16CG_ClearItemListv
	add esp, 0xfc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z14CG_SetNextSnapiP10snapshot_s_240:
	mov ecx, eax
	jmp _Z14CG_SetNextSnapiP10snapshot_s_450
_Z14CG_SetNextSnapiP10snapshot_s_380:
	mov eax, cg_synchronousClients
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z14CG_SetNextSnapiP10snapshot_s_460
	jmp _Z14CG_SetNextSnapiP10snapshot_s_370
_Z14CG_SetNextSnapiP10snapshot_s_180:
	cmp ebx, [edx+0xe8]
	jnz _Z14CG_SetNextSnapiP10snapshot_s_470
	jmp _Z14CG_SetNextSnapiP10snapshot_s_480
_Z14CG_SetNextSnapiP10snapshot_s_150:
	lea edx, [ebx*4]
	mov eax, ebx
	shl eax, 0x5
	sub eax, edx
	mov edx, eax
	shl edx, 0x4
	lea esi, [eax+edx]
	add esi, cg_entitiesArray
	movzx eax, bx
	mov [esi+0xcc], eax
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	lea eax, [esi+0xcc]
	mov [esp+0x4], eax
	mov edi, ecx
	add edi, 0xc
	mov [esp], edi
	call _Z27BG_PlayerStateToEntityStateP13playerState_sP13entityState_sih
	mov byte [esi+0x1c0], 0x1
	mov ecx, cgArray
	mov eax, [ecx+0x46134]
	test eax, eax
	jnz _Z14CG_SetNextSnapiP10snapshot_s_490
	mov eax, [ecx+0x20]
	mov [ebp-0xec], eax
	mov edx, [ebp+0xc]
	mov eax, [edx+0x164]
	mov ecx, [ebp-0xec]
	cmp eax, [ecx+0x164]
	jz _Z14CG_SetNextSnapiP10snapshot_s_500
_Z14CG_SetNextSnapiP10snapshot_s_610:
	mov edx, cgArray
_Z14CG_SetNextSnapiP10snapshot_s_600:
	mov byte [edx+0xfd758], 0x1
	mov eax, [edx+0x20]
	mov ecx, [eax+0xe8]
	mov ebx, ecx
	sar ebx, 0x5
	and ecx, 0x1f
	mov eax, 0x80000000
	shr eax, cl
	not eax
	and [ebp+ebx*4-0xb0], eax
	mov eax, [edx+0x20]
	add eax, 0xc
	mov dword [esp+0x8], 0x2f64
	mov [esp+0x4], edi
	mov [esp], eax
	call memcpy
	mov ecx, 0x1
	mov edx, esi
	mov eax, [ebp+0x8]
	call _Z14CG_ResetEntityiP9centity_si
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z10CG_Respawni
	jmp _Z14CG_SetNextSnapiP10snapshot_s_480
_Z14CG_SetNextSnapiP10snapshot_s_360:
	mov edx, ecx
	jmp _Z14CG_SetNextSnapiP10snapshot_s_510
_Z14CG_SetNextSnapiP10snapshot_s_310:
	mov ebx, eax
	xor esi, esi
_Z14CG_SetNextSnapiP10snapshot_s_520:
	mov eax, [ebx+0x21778]
	lea edx, [eax*4]
	shl eax, 0x5
	sub eax, edx
	mov edx, eax
	shl edx, 0x4
	add eax, edx
	add eax, cg_entitiesArray
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z19CG_UpdatePlayerDObjiP9centity_s
	add esi, 0x1
	add ebx, 0x64
	mov ecx, [ebp+0xc]
	cmp esi, [ecx+0x2f74]
	jl _Z14CG_SetNextSnapiP10snapshot_s_520
	jmp _Z14CG_SetNextSnapiP10snapshot_s_530
_Z14CG_SetNextSnapiP10snapshot_s_350:
	mov ebx, ecx
	xor esi, esi
_Z14CG_SetNextSnapiP10snapshot_s_540:
	mov eax, [ebx+0x2f78]
	lea edx, [eax*4]
	shl eax, 0x5
	sub eax, edx
	mov edx, eax
	shl edx, 0x4
	add eax, edx
	add eax, cg_entitiesArray
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z14CG_CheckEventsiP9centity_s
	add esi, 0x1
	add ebx, 0xf4
	mov edx, [ebp+0xc]
	cmp [edx+0x2f70], esi
	jg _Z14CG_SetNextSnapiP10snapshot_s_540
	jmp _Z14CG_SetNextSnapiP10snapshot_s_550
_Z14CG_SetNextSnapiP10snapshot_s_170:
	mov eax, ecx
	jmp _Z14CG_SetNextSnapiP10snapshot_s_560
_Z14CG_SetNextSnapiP10snapshot_s_340:
	mov dword [ebx+0x5052c], 0x1
	mov dword [esp+0x4], 0x0
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z21CG_SetEquippedOffHandii
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z23CG_RestartSmokeGrenadesi
	jmp _Z14CG_SetNextSnapiP10snapshot_s_570
_Z14CG_SetNextSnapiP10snapshot_s_440:
	xor esi, esi
_Z14CG_SetNextSnapiP10snapshot_s_580:
	mov eax, esi
	shl eax, 0x4
	sub eax, esi
	lea eax, [esi+eax*4]
	mov ebx, [edx+eax*4+0x2f78]
	lea eax, [ebx*4]
	shl ebx, 0x5
	sub ebx, eax
	mov eax, ebx
	shl eax, 0x4
	add ebx, eax
	add ebx, cg_entitiesArray
	mov [esp+0x4], ebx
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z17CG_ShutdownEntityiP9centity_s
	mov [esp+0x4], ebx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z13CG_ClearUnioniP9centity_s
	add esi, 0x1
	mov ecx, cgArray
	mov edx, [ecx+0x20]
	cmp [edx+0x2f70], esi
	jg _Z14CG_SetNextSnapiP10snapshot_s_580
	mov eax, ecx
	jmp _Z14CG_SetNextSnapiP10snapshot_s_590
_Z14CG_SetNextSnapiP10snapshot_s_160:
	mov edx, cgArray
	mov eax, [edx+0x20]
	mov ecx, [eax+0xe8]
	mov edx, ecx
	sar edx, 0x5
	and ecx, 0x1f
	mov eax, 0x80000000
	shr eax, cl
	not eax
	and [ebp+edx*4-0xb0], eax
	lea eax, [ebx*4]
	mov edx, ebx
	shl edx, 0x5
	sub edx, eax
	mov eax, edx
	shl eax, 0x4
	add edx, eax
	add edx, cg_entitiesArray
	mov ecx, 0x1
	mov eax, [ebp+0x8]
	call _Z14CG_ResetEntityiP9centity_si
	jmp _Z14CG_SetNextSnapiP10snapshot_s_480
_Z14CG_SetNextSnapiP10snapshot_s_490:
	mov edx, ecx
	jmp _Z14CG_SetNextSnapiP10snapshot_s_600
_Z14CG_SetNextSnapiP10snapshot_s_500:
	cmp ebx, [ecx+0xe8]
	jnz _Z14CG_SetNextSnapiP10snapshot_s_610
	mov edx, ebx
	sar edx, 0x5
	and ebx, 0x1f
	mov eax, 0x80000000
	mov ecx, ebx
	shr eax, cl
	test [ebp+edx*4-0xb0], eax
	jz _Z14CG_SetNextSnapiP10snapshot_s_620
	mov eax, cgArray
	cmp byte [eax+0xfd758], 0x0
	jz _Z14CG_SetNextSnapiP10snapshot_s_630
_Z14CG_SetNextSnapiP10snapshot_s_620:
	mov eax, [ebp-0xec]
	add eax, 0xc
	mov dword [esp+0x8], 0x2f64
	mov [esp+0x4], edi
	mov [esp], eax
	call memcpy
	mov ecx, 0x1
	mov edx, esi
	mov eax, [ebp+0x8]
	call _Z14CG_ResetEntityiP9centity_si
	xor eax, eax
	mov edx, cgArray
	mov [edx+0x492b0], eax
	mov [edx+0x492b4], eax
	mov [edx+0x492b8], eax
	jmp _Z14CG_SetNextSnapiP10snapshot_s_480
_Z14CG_SetNextSnapiP10snapshot_s_630:
	mov eax, [esi+0x64]
	xor eax, [esi+0xd4]
	test al, 0x2
	jz _Z14CG_SetNextSnapiP10snapshot_s_480
	mov eax, [ebp-0xec]
	add eax, 0xc
	mov dword [esp+0x8], 0x2f64
	mov [esp+0x4], edi
	mov [esp], eax
	call memcpy
	xor ecx, ecx
	mov edx, esi
	mov eax, [ebp+0x8]
	call _Z14CG_ResetEntityiP9centity_si
	xor eax, eax
	mov ecx, cgArray
	mov [ecx+0x492b0], eax
	mov [ecx+0x492b4], eax
	mov [ecx+0x492b8], eax
	jmp _Z14CG_SetNextSnapiP10snapshot_s_480
	nop


;CG_ShutdownEntity(int, centity_s*)
_Z17CG_ShutdownEntityiP9centity_s:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0xc]
	cmp byte [ebx+0xc], 0x0
	jnz _Z17CG_ShutdownEntityiP9centity_s_10
	mov eax, [ebx+0x68]
	sub eax, 0x9
	cmp eax, 0x2
	ja _Z17CG_ShutdownEntityiP9centity_s_20
_Z17CG_ShutdownEntityiP9centity_s_10:
	mov byte [ebx+0xc], 0x0
	mov eax, [ebx+0x10]
	test eax, eax
	jnz _Z17CG_ShutdownEntityiP9centity_s_30
_Z17CG_ShutdownEntityiP9centity_s_90:
	mov eax, [ebx+0x14]
	test eax, eax
	jnz _Z17CG_ShutdownEntityiP9centity_s_40
_Z17CG_ShutdownEntityiP9centity_s_80:
	mov dword [ebx+0x68], 0x0
	mov dword [ebx+0x8c], 0x0
_Z17CG_ShutdownEntityiP9centity_s_20:
	mov eax, [ebx+0x18]
	add eax, 0x1
	cmp eax, 0x1
	jbe _Z17CG_ShutdownEntityiP9centity_s_50
	mov eax, [ebx+0xcc]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z17CG_IsEntityLinkedii
	test al, al
	jnz _Z17CG_ShutdownEntityiP9centity_s_60
_Z17CG_ShutdownEntityiP9centity_s_100:
	mov eax, [ebx+0x18]
	mov [esp+0x4], eax
	mov dword [esp], 0x1
	call _Z15Phys_ObjDestroy9PhysWorldi
_Z17CG_ShutdownEntityiP9centity_s_70:
	mov dword [ebx+0x68], 0x0
	mov dword [ebx+0x8c], 0x0
	mov dword [ebx+0x18], 0x0
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z17CG_ShutdownEntityiP9centity_s_50:
	cmp dword [ebx+0x68], 0x8
	jz _Z17CG_ShutdownEntityiP9centity_s_70
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z17CG_ShutdownEntityiP9centity_s_40:
	mov [esp], eax
	call _Z14Ragdoll_Removei
	mov dword [ebx+0x14], 0x0
	jmp _Z17CG_ShutdownEntityiP9centity_s_80
_Z17CG_ShutdownEntityiP9centity_s_30:
	mov [esp], eax
	call _Z14Ragdoll_Removei
	mov dword [ebx+0x10], 0x0
	jmp _Z17CG_ShutdownEntityiP9centity_s_90
_Z17CG_ShutdownEntityiP9centity_s_60:
	mov eax, [ebx+0xcc]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z15CG_UnlinkEntityii
	jmp _Z17CG_ShutdownEntityiP9centity_s_100


;CG_ProcessSnapshots(int)
_Z19CG_ProcessSnapshotsi:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov esi, [ebp+0x8]
	mov dword [esp+0x4], _cstring_process_snapshot
	mov dword [esp], 0xffffffff
	call _Z18PIXBeginNamedEventiPKcz
	mov ebx, cgArray
	lea eax, [ebx+0x1c]
	mov [esp+0x8], eax
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z27CL_GetCurrentSnapshotNumberiPiS_
	mov eax, [ebp-0x1c]
	cmp [ebx+0x18], eax
	jz _Z19CG_ProcessSnapshotsi_10
	jg _Z19CG_ProcessSnapshotsi_20
_Z19CG_ProcessSnapshotsi_190:
	mov [ebx+0x18], eax
_Z19CG_ProcessSnapshotsi_10:
	mov edi, cgArray
	mov eax, [edi+0x1c]
	mov [edi+0xe9f10], eax
_Z19CG_ProcessSnapshotsi_170:
	mov edi, [edi+0x20]
	test edi, edi
	jnz _Z19CG_ProcessSnapshotsi_30
_Z19CG_ProcessSnapshotsi_60:
	mov eax, esi
	call _Z19CG_ReadNextSnapshoti
	mov ebx, eax
	test eax, eax
	jz _Z19CG_ProcessSnapshotsi_40
	test byte [eax], 0x2
	jz _Z19CG_ProcessSnapshotsi_50
	mov edi, cgArray
	mov edi, [edi+0x20]
	test edi, edi
	jz _Z19CG_ProcessSnapshotsi_60
_Z19CG_ProcessSnapshotsi_30:
	mov [esp], esi
	call _Z24CG_SetFrameInterpolationi
_Z19CG_ProcessSnapshotsi_180:
	mov edi, cgArray
	mov eax, [edi+0x24]
	cmp eax, [edi+0x20]
	jz _Z19CG_ProcessSnapshotsi_70
_Z19CG_ProcessSnapshotsi_130:
	mov ebx, [edi+0xc]
	test ebx, ebx
	jz _Z19CG_ProcessSnapshotsi_80
_Z19CG_ProcessSnapshotsi_70:
	mov eax, esi
	call _Z19CG_ReadNextSnapshoti
	mov ebx, eax
	test eax, eax
	jz _Z19CG_ProcessSnapshotsi_90
_Z19CG_ProcessSnapshotsi_140:
	mov edx, [edi+0x24]
	mov eax, [eax]
	xor eax, [edx]
	test al, 0x4
	jnz _Z19CG_ProcessSnapshotsi_100
	mov eax, [edx+0x8]
	cmp [ebx+0x8], eax
	js _Z19CG_ProcessSnapshotsi_110
_Z19CG_ProcessSnapshotsi_200:
	mov [esp+0x4], ebx
	mov [esp], esi
	call _Z14CG_SetNextSnapiP10snapshot_s
_Z19CG_ProcessSnapshotsi_80:
	mov edx, [edi+0x46128]
	mov eax, [edi+0x20]
	cmp edx, [eax+0x8]
	js _Z19CG_ProcessSnapshotsi_120
	mov eax, [edi+0x24]
	cmp edx, [eax+0x8]
	js _Z19CG_ProcessSnapshotsi_90
_Z19CG_ProcessSnapshotsi_120:
	mov eax, esi
	call _Z21CG_TransitionSnapshoti
	mov edi, cgArray
	mov eax, [edi+0x24]
	cmp eax, [edi+0x20]
	jnz _Z19CG_ProcessSnapshotsi_130
	mov eax, esi
	call _Z19CG_ReadNextSnapshoti
	mov ebx, eax
	test eax, eax
	jnz _Z19CG_ProcessSnapshotsi_140
_Z19CG_ProcessSnapshotsi_90:
	call _Z25CG_ItemListLocalClientNumv
	cmp esi, eax
	jz _Z19CG_ProcessSnapshotsi_150
	mov eax, cgArray
	mov eax, [eax+0x24]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z16CG_BuildItemListiPK10snapshot_s
_Z19CG_ProcessSnapshotsi_150:
	mov edx, cgArray
	mov eax, [edx+0x20]
	mov eax, [eax+0x8]
	cmp [edx+0x46128], eax
	js _Z19CG_ProcessSnapshotsi_160
_Z19CG_ProcessSnapshotsi_40:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19CG_ProcessSnapshotsi_50:
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z21CG_SetInitialSnapshotiP10snapshot_s
	mov [esp+0x4], ebx
	mov [esp], esi
	call _Z14CG_SetNextSnapiP10snapshot_s
	mov eax, esi
	call _Z21CG_TransitionSnapshoti
	mov [esp], esi
	call _Z15AimAssist_Setupi
	mov edi, cgArray
	jmp _Z19CG_ProcessSnapshotsi_170
_Z19CG_ProcessSnapshotsi_100:
	mov [esp+0x4], ebx
	mov [esp], esi
	call _Z21CG_SetInitialSnapshotiP10snapshot_s
	mov [esp+0x4], ebx
	mov [esp], esi
	call _Z14CG_SetNextSnapiP10snapshot_s
	mov eax, esi
	call _Z21CG_TransitionSnapshoti
	jmp _Z19CG_ProcessSnapshotsi_180
_Z19CG_ProcessSnapshotsi_20:
	mov dword [esp+0x4], _cstring_cg_processsnapsh
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	mov eax, [ebp-0x1c]
	jmp _Z19CG_ProcessSnapshotsi_190
_Z19CG_ProcessSnapshotsi_110:
	mov dword [esp+0x4], _cstring_cg_processsnapsh1
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z19CG_ProcessSnapshotsi_200
_Z19CG_ProcessSnapshotsi_160:
	mov [edx+0x46128], eax
	mov [edx+0xe9f0c], eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;CG_SetInitialSnapshot(int, snapshot_s*)
_Z21CG_SetInitialSnapshotiP10snapshot_s:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov edi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	mov [esp], edi
	call _Z15R_InitSceneDatai
	mov dword [esp+0x4], 0x0
	mov [esp], edi
	call _Z14CG_SetNextSnapiP10snapshot_s
	mov eax, cgArray
	mov [eax+0x20], ebx
	mov [eax+0x24], ebx
	mov eax, [ebx+0x8]
	mov edx, cgArray
	mov [edx+0x46128], eax
	mov [edx+0xe9f0c], eax
	mov [edx+0x4612c], eax
	lea edx, [ebx+0x28]
	mov eax, [ebx+0x28]
	mov [ebp-0x24], eax
	mov eax, [edx+0x4]
	mov [ebp-0x20], eax
	movss xmm0, dword [edx+0x8]
	addss xmm0, [ebx+0x124]
	movss [ebp-0x1c], xmm0
	lea esi, [ebp-0x48]
	mov [esp+0x4], esi
	lea eax, [ebx+0x114]
	mov [esp], eax
	call _Z12AnglesToAxisPKfPA3_f
	mov [esp+0xc], esi
	lea eax, [ebp-0x24]
	mov [esp+0x8], eax
	mov eax, [ebx+0xe8]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z15SND_SetListeneriiPKfPA3_S_
	mov dword [esp+0x4], 0x0
	mov dword [esp], 0x3f800000
	call _Z17SND_FadeAllSoundsfi
	mov [esp], edi
	call _Z10CG_Respawni
	mov [esp], edi
	call _Z23CG_RestartSmokeGrenadesi
	mov [esp], edi
	call _Z23CG_ClearEntityCollWorldi
	mov [esp], edi
	call _Z11CG_InitViewi
	mov eax, cgArray
	mov dword [eax+0x24], 0x0
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Initialized global or static variables of cg_snapshot_mp:
SECTION .data


;Initialized constant data of cg_snapshot_mp:
SECTION .rdata


;Zero initialized global or static variables of cg_snapshot_mp:
SECTION .bss


;All cstrings:
SECTION .rdata
_cstring_warning_cg_readn:		db "WARNING: CG_ReadNextSnapshot: way out of range, %i > %i",0ah,0
_cstring_j_spine4:		db "J_Spine4",0
_cstring_cgame_playerrena:		db "CGAME_PLAYERRENAMES",0
_cstring_s7_s_s:		db "%s^7 %s %s",0
_cstring_process_snapshot:		db "process snapshots",0
_cstring_cg_processsnapsh:		db 015h,"CG_ProcessSnapshots: n < cgameGlob->latestSnapshotNum",0
_cstring_cg_processsnapsh1:		db 015h,"CG_ProcessSnapshots: Server time went backwards",0



;All constant floats and doubles:
SECTION .rdata

