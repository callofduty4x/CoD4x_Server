;Imports of cg_snapshot_mp:
	extern cgArray
	extern memset
	extern XAnimClearTree
	extern CG_SafeDObjFree
	extern cg_entitiesArray
	extern memcpy
	extern cgsArray
	extern CL_GetSnapshot
	extern CG_AddLagometerSnapshotInfo
	extern Com_PrintWarning
	extern CG_ClearUnion
	extern AimAssist_ClearEntityReference
	extern BG_EvaluateTrajectory
	extern CG_UnlinkEntity
	extern Q_stricmp
	extern XAnimCloneAnimTree
	extern cg_entityOriginArray
	extern CG_ResetPlayerEntity
	extern Com_GetClientDObj
	extern CG_Player_PreControllers
	extern CG_UpdateBModelWorldBounds
	extern CG_PreProcess_GetDObj
	extern CG_mg42_PreControllers
	extern CG_UpdateViewOffset
	extern CG_SetFrameInterpolation
	extern CG_ExecuteNewServerCommands
	extern CG_CheckOpenWaitingScriptMenu
	extern strcmp
	extern Q_strncpyz
	extern CL_GetConfigString
	extern CG_Respawn
	extern R_UnlinkEntity
	extern FX_MarkEntDetachAll
	extern FX_ThroughWithEffect
	extern CG_UpdateWeaponViewmodels
	extern R_RegisterModel
	extern CG_UpdateHandViewmodels
	extern CG_BuildItemList
	extern cg_nopredict
	extern CG_ExtractTransPlayerState
	extern CG_TransitionPlayerState
	extern CG_RestartSmokeGrenades
	extern XAnimGetAnims
	extern XAnimIsLooped
	extern XAnimGetNumChildren
	extern XAnimSetTime
	extern UI_SafeTranslateString
	extern va
	extern CG_GameMessage
	extern CG_ClearItemList
	extern cg_synchronousClients
	extern BG_PlayerStateToEntityState
	extern CG_UpdatePlayerDObj
	extern CG_CheckEvents
	extern CG_SetEquippedOffHand
	extern CG_IsEntityLinked
	extern Phys_ObjDestroy
	extern Ragdoll_Remove
	extern PIXBeginNamedEvent
	extern CL_GetCurrentSnapshotNumber
	extern CG_ItemListLocalClientNum
	extern AimAssist_Setup
	extern Com_Error
	extern R_InitSceneData
	extern AnglesToAxis
	extern SND_SetListener
	extern SND_FadeAllSounds
	extern CG_ClearEntityCollWorld
	extern CG_InitView

;Exports of cg_snapshot_mp:
	global CG_TransitionSnapshot
	global CG_ReadNextSnapshot
	global CG_ResetEntity
	global CG_SetNextSnap
	global CG_ShutdownEntity
	global CG_ProcessSnapshots
	global CG_SetInitialSnapshot


SECTION .text


;CG_TransitionSnapshot(int)
CG_TransitionSnapshot:
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
	jle CG_TransitionSnapshot_10
	mov dword [ebp-0x1c], 0x0
	mov [ebp-0x24], ebx
	mov dword [ebp-0x28], 0x21770
	jmp CG_TransitionSnapshot_20
CG_TransitionSnapshot_30:
	mov dword [esi+0x4], 0x0
	add dword [ebp-0x1c], 0x1
	add dword [ebp-0x28], 0x64
	mov eax, [ebx+0x20]
	mov edx, [ebp-0x1c]
	cmp [eax+0x2f74], edx
	jle CG_TransitionSnapshot_10
CG_TransitionSnapshot_20:
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
	jnz CG_TransitionSnapshot_30
	mov ebx, [esi+0x4a8]
	mov dword [esp+0x8], 0x4cc
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call memset
	mov [esi+0x4a8], ebx
	mov [esp], ebx
	call XAnimClearTree
	mov eax, [edi+0x8]
	mov [esp+0x4], eax
	mov eax, [ebp-0x20]
	mov [esp], eax
	call CG_SafeDObjFree
	mov ebx, [ebp-0x24]
	add dword [ebp-0x1c], 0x1
	add dword [ebp-0x28], 0x64
	mov eax, [ebx+0x20]
	mov edx, [ebp-0x1c]
	cmp [eax+0x2f74], edx
	jg CG_TransitionSnapshot_20
CG_TransitionSnapshot_10:
	mov edi, [ebx+0x24]
	mov [ebx+0x20], edi
	test byte [edi+0x20], 0x6
	jz CG_TransitionSnapshot_40
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
CG_TransitionSnapshot_40:
	mov eax, [edi+0x2f70]
	test eax, eax
	jle CG_TransitionSnapshot_50
	mov ebx, edi
	xor esi, esi
CG_TransitionSnapshot_60:
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
	jl CG_TransitionSnapshot_60
CG_TransitionSnapshot_50:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;CG_ReadNextSnapshot(int)
CG_ReadNextSnapshot:
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
	jg CG_ReadNextSnapshot_10
CG_ReadNextSnapshot_70:
	mov esi, edx
	cmp [ebx+0x18], edx
	jg CG_ReadNextSnapshot_20
CG_ReadNextSnapshot_60:
	xor ebx, ebx
CG_ReadNextSnapshot_80:
	mov eax, ebx
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_ReadNextSnapshot_20:
	mov edi, ebx
	lea edx, [ebx+0x28]
	mov [ebp-0x20], edx
	mov eax, cgsArray
	mov [ebp-0x24], eax
	jmp CG_ReadNextSnapshot_30
CG_ReadNextSnapshot_50:
	mov edx, [ebp-0x20]
CG_ReadNextSnapshot_30:
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
	call CL_GetSnapshot
	test eax, eax
	jnz CG_ReadNextSnapshot_40
	mov dword [esp], 0x0
	call CG_AddLagometerSnapshotInfo
	mov edx, [ebp-0x24]
	mov esi, [edx+0x18]
	cmp [edi+0x18], esi
	jg CG_ReadNextSnapshot_50
	jmp CG_ReadNextSnapshot_60
CG_ReadNextSnapshot_10:
	mov [esp+0xc], edx
	mov [esp+0x8], ecx
	mov dword [esp+0x4], _cstring_warning_cg_readn
	mov dword [esp], 0xe
	call Com_PrintWarning
	mov eax, cgsArray
	mov edx, [eax+0x18]
	jmp CG_ReadNextSnapshot_70
CG_ReadNextSnapshot_40:
	mov [esp], ebx
	call CG_AddLagometerSnapshotInfo
	jmp CG_ReadNextSnapshot_80


;CG_ResetEntity(int, centity_s*, int)
CG_ResetEntity:
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
	call CG_ShutdownEntity
	mov [esp+0x4], esi
	mov edx, [ebp-0x30]
	mov [esp], edx
	call CG_ClearUnion
	mov eax, [esi+0xcc]
	mov [esp+0x4], eax
	mov ecx, [ebp-0x30]
	mov [esp], ecx
	call AimAssist_ClearEntityReference
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
	call BG_EvaluateTrajectory
	lea edi, [esi+0x28]
	mov [esp+0x8], edi
	mov eax, [ebx+0x46128]
	mov [esp+0x4], eax
	lea eax, [esi+0xfc]
	mov [esp], eax
	call BG_EvaluateTrajectory
	mov eax, [esi+0xd0]
	mov [esi+0x2], al
	mov eax, [esi+0xcc]
	mov [esp+0x4], eax
	mov eax, [ebp-0x30]
	mov [esp], eax
	call CG_UnlinkEntity
	cmp dword [esi+0xd0], 0xd
	ja CG_ResetEntity_10
	mov ecx, [esi+0xd0]
	jmp dword [ecx*4+CG_ResetEntity_jumptab_0]
CG_ResetEntity_170:
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
	jz CG_ResetEntity_20
	mov dword [esp+0x8], 0x4cc
	mov eax, [ebp-0x2c]
	mov [esp+0x4], eax
	mov [esp], edx
	call memcpy
	mov edi, [ebp-0x28]
	mov dword [ebp-0x20], 0x0
	add ebx, 0x200
CG_ResetEntity_40:
	mov dword [esp+0x4], _cstring_j_spine4
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz CG_ResetEntity_30
	mov byte [edi+0x7c], 0x0
	mov byte [edi+0x1fc], 0x0
CG_ResetEntity_30:
	add dword [ebp-0x20], 0x1
	add ebx, 0x40
	add edi, 0x40
	cmp dword [ebp-0x20], 0x6
	jnz CG_ResetEntity_40
	mov ecx, [ebp-0x24]
	mov edx, [ebp-0x28]
	mov [edx+0x4a8], ecx
	mov [esp+0x4], ecx
	mov edx, [ebp-0x2c]
	mov eax, [edx+0x4a8]
	mov [esp], eax
	call XAnimCloneAnimTree
	mov dword [esi+0x1c4], 0x0
CG_ResetEntity_130:
	mov eax, [ebp-0x28]
	mov dword [eax+0x3f4], 0x1
CG_ResetEntity_60:
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
CG_ResetEntity_80:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_ResetEntity_150:
	test byte [esi+0xd6], 0x1
	jz CG_ResetEntity_50
	mov eax, cgArray
	mov eax, [eax+0x46128]
	sub eax, [esi+0x120]
	cmp eax, 0xc8
	jle CG_ResetEntity_50
CG_ResetEntity_10:
	mov eax, [esi+0x16c]
	mov [esi+0x1c4], eax
	jmp CG_ResetEntity_60
CG_ResetEntity_160:
	mov eax, esi
	mov edx, 0x6
CG_ResetEntity_70:
	mov byte [eax+0x44], 0xfe
	add eax, 0x1
	sub edx, 0x1
	jnz CG_ResetEntity_70
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
	call CG_ResetPlayerEntity
	mov eax, [ebp-0x30]
	mov [esp+0x4], eax
	mov eax, [esi+0xcc]
	mov [esp], eax
	call Com_GetClientDObj
	test eax, eax
	jz CG_ResetEntity_60
	mov [esp+0x4], esi
	mov [esp], eax
	call CG_Player_PreControllers
	jmp CG_ResetEntity_60
CG_ResetEntity_180:
	mov eax, [esi+0x16c]
	mov [esi+0x1c4], eax
	cmp dword [esi+0x164], 0xffffff
	jnz CG_ResetEntity_60
	mov dword [esp+0x8], 0x1
	mov [esp+0x4], esi
	mov ecx, [ebp-0x30]
	mov [esp], ecx
	call CG_UpdateBModelWorldBounds
	jmp CG_ResetEntity_80
CG_ResetEntity_190:
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
	call CG_PreProcess_GetDObj
	test eax, eax
	jz CG_ResetEntity_60
	mov [esp+0x4], esi
	mov [esp], eax
	call CG_mg42_PreControllers
	jmp CG_ResetEntity_60
CG_ResetEntity_50:
	mov dword [esi+0x1c4], 0x0
	jmp CG_ResetEntity_60
CG_ResetEntity_20:
	cmp byte [edx+0x3c], 0x0
	jz CG_ResetEntity_90
	mov eax, [edx+0x8]
	mov edx, [ebp-0x2c]
	cmp eax, [edx+0x8]
	jz CG_ResetEntity_100
	mov ecx, edx
CG_ResetEntity_140:
	mov dword [esp+0x8], 0x4cc
	mov [esp+0x4], ecx
	mov eax, [ebp-0x28]
	mov [esp], eax
	call memcpy
	mov edi, [ebp-0x28]
	mov dword [ebp-0x1c], 0x0
	add ebx, 0x200
CG_ResetEntity_120:
	mov dword [esp+0x4], _cstring_j_spine4
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz CG_ResetEntity_110
	mov byte [edi+0x7c], 0x0
	mov byte [edi+0x1fc], 0x0
CG_ResetEntity_110:
	add dword [ebp-0x1c], 0x1
	add ebx, 0x40
	add edi, 0x40
	cmp dword [ebp-0x1c], 0x6
	jnz CG_ResetEntity_120
	mov ecx, [ebp-0x24]
	mov edx, [ebp-0x28]
	mov [edx+0x4a8], ecx
CG_ResetEntity_100:
	mov eax, [esi+0x16c]
	mov [esi+0x1c4], eax
	jmp CG_ResetEntity_130
CG_ResetEntity_90:
	mov ecx, [ebp-0x2c]
	jmp CG_ResetEntity_140
	nop
	
	
CG_ResetEntity_jumptab_0:
	dd CG_ResetEntity_150
	dd CG_ResetEntity_160
	dd CG_ResetEntity_170
	dd CG_ResetEntity_10
	dd CG_ResetEntity_150
	dd CG_ResetEntity_10
	dd CG_ResetEntity_180
	dd CG_ResetEntity_10
	dd CG_ResetEntity_60
	dd CG_ResetEntity_60
	dd CG_ResetEntity_10
	dd CG_ResetEntity_190
	dd CG_ResetEntity_10
	dd CG_ResetEntity_180


;CG_SetNextSnap(int, snapshot_s*)
CG_SetNextSnap:
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
	jz CG_SetNextSnap_10
	mov esi, [edx+0x2f70]
	test esi, esi
	jle CG_SetNextSnap_20
	xor ebx, ebx
	mov esi, cg_entitiesArray
CG_SetNextSnap_30:
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
	jl CG_SetNextSnap_30
CG_SetNextSnap_140:
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
	jz CG_SetNextSnap_10
	mov byte [eax+0x1c0], 0x0
	mov edx, ecx
	sar edx, 0x5
	and ecx, 0x1f
	mov eax, 0x80000000
	shr eax, cl
	or [ebp+edx*4-0xb0], eax
CG_SetNextSnap_10:
	mov edx, [ebp+0xc]
	mov eax, cgArray
	mov [eax+0x24], edx
	test edx, edx
	jz CG_SetNextSnap_40
	mov edx, [ebp+0x8]
	mov [esp], edx
	call CG_UpdateViewOffset
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call CG_SetFrameInterpolation
	mov edx, [ebp+0xc]
	mov eax, [edx+0x23078]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call CG_ExecuteNewServerCommands
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_CheckOpenWaitingScriptMenu
	mov edx, [ebp+0xc]
	mov ecx, [edx+0x2f74]
	test ecx, ecx
	jle CG_SetNextSnap_50
	mov dword [ebp-0xc0], 0x0
	add edx, 0x21770
	mov [ebp-0xe0], edx
	mov edi, edx
	mov ecx, edx
CG_SetNextSnap_250:
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
	jz CG_SetNextSnap_60
	mov eax, [eax+0x1c]
CG_SetNextSnap_260:
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
	jz CG_SetNextSnap_70
	mov eax, [ebp-0xd4]
	cmp byte [eax+0xc], 0x0
	jnz CG_SetNextSnap_80
CG_SetNextSnap_420:
	mov dword [esp+0x8], 0x10
	mov [esp+0x4], esi
	mov [esp], ebx
	call Q_strncpyz
CG_SetNextSnap_70:
	mov ecx, [ebp-0xe0]
	mov eax, [ecx+0x10]
	add eax, 0x33e
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CL_GetConfigString
	mov ebx, eax
	mov esi, [ebp-0xd4]
	add esi, 0x3c
	mov [esp+0x4], eax
	mov [esp], esi
	call strcmp
	test eax, eax
	jnz CG_SetNextSnap_90
CG_SetNextSnap_270:
	mov esi, edi
	mov dword [ebp-0xd0], 0x0
	mov ecx, [ebp-0xd4]
	add ecx, 0x1fc
	mov [ebp-0xdc], ecx
	mov edi, [ebp-0xd4]
	add edi, 0x7c
	jmp CG_SetNextSnap_100
CG_SetNextSnap_130:
	mov eax, [esi+0x24]
	add eax, 0x8ea
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call CL_GetConfigString
	mov ebx, eax
	mov [esp+0x4], eax
	mov eax, [ebp-0xdc]
	mov [esp], eax
	call strcmp
	test eax, eax
	jnz CG_SetNextSnap_110
	add dword [ebp-0xd0], 0x1
	add edi, 0x40
	add dword [ebp-0xdc], 0x40
	add esi, 0x4
	cmp dword [ebp-0xd0], 0x6
	jz CG_SetNextSnap_120
CG_SetNextSnap_100:
	mov eax, [esi+0xc]
	add eax, 0x33e
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CL_GetConfigString
	mov ebx, eax
	mov [esp+0x4], eax
	mov [esp], edi
	call strcmp
	test eax, eax
	jz CG_SetNextSnap_130
	mov dword [esp+0x8], 0x40
	mov [esp+0x4], ebx
	mov [esp], edi
	call Q_strncpyz
	mov edx, [ebp-0xd4]
	mov dword [edx+0x3f4], 0x1
	jmp CG_SetNextSnap_130
CG_SetNextSnap_20:
	mov esi, cg_entitiesArray
	jmp CG_SetNextSnap_140
CG_SetNextSnap_50:
	mov ecx, edx
CG_SetNextSnap_450:
	mov eax, [ecx+0x160]
	mov edx, cgArray
	mov [edx+0x50304], eax
	mov ebx, [ecx+0xe8]
	mov byte [edx+0xfd758], 0x0
	test byte [ecx+0x20], 0x6
	jnz CG_SetNextSnap_150
	mov eax, [ebp+0xc]
	cmp dword [eax+0x10], 0x4
	jz CG_SetNextSnap_160
	mov ecx, cgArray
	mov esi, [ecx+0x46134]
	test esi, esi
	jnz CG_SetNextSnap_170
	mov edx, [ecx+0x20]
	mov ecx, [ebp+0xc]
	mov eax, [ecx+0x164]
	cmp eax, [edx+0x164]
	jz CG_SetNextSnap_180
CG_SetNextSnap_470:
	mov eax, cgArray
CG_SetNextSnap_560:
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
	call CG_Respawn
CG_SetNextSnap_480:
	mov ecx, [ebp+0xc]
	mov ebx, [ecx+0x2f70]
	test ebx, ebx
	jle CG_SetNextSnap_190
	mov dword [ebp-0xbc], 0x0
	add ecx, 0x2f70
	mov [ebp-0xd8], ecx
	jmp CG_SetNextSnap_200
CG_SetNextSnap_220:
	mov eax, [esi+0x64]
	mov ecx, [ebp-0xd8]
	xor eax, [ecx+0x10]
	test al, 0x2
	jnz CG_SetNextSnap_210
CG_SetNextSnap_230:
	mov eax, [ebp-0xc4]
	not eax
	and eax, edx
	mov [ebp+edi*4-0xb0], eax
	add dword [ebp-0xbc], 0x1
	add dword [ebp-0xd8], 0xf4
	mov edx, [ebp-0xbc]
	mov eax, [ebp+0xc]
	cmp [eax+0x2f70], edx
	jle CG_SetNextSnap_190
	mov ecx, [ebp-0xd8]
CG_SetNextSnap_200:
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
	jnz CG_SetNextSnap_220
	mov ecx, 0x1
	mov edx, esi
	mov eax, [ebp+0x8]
	call CG_ResetEntity
	mov edx, [ebp+edi*4-0xb0]
	jmp CG_SetNextSnap_230
CG_SetNextSnap_110:
	mov dword [esp+0x8], 0x40
	mov [esp+0x4], ebx
	mov edx, [ebp-0xdc]
	mov [esp], edx
	call Q_strncpyz
	mov ecx, [ebp-0xd4]
	mov dword [ecx+0x3f4], 0x1
	add dword [ebp-0xd0], 0x1
	add edi, 0x40
	add dword [ebp-0xdc], 0x40
	add esi, 0x4
	cmp dword [ebp-0xd0], 0x6
	jnz CG_SetNextSnap_100
CG_SetNextSnap_120:
	add dword [ebp-0xc0], 0x1
	add dword [ebp-0xe0], 0x64
	mov edx, [ebp-0xc0]
	mov eax, [ebp+0xc]
	cmp [eax+0x2f74], edx
	jle CG_SetNextSnap_240
	mov edi, [ebp-0xe0]
	mov ecx, [ebp-0xe0]
	jmp CG_SetNextSnap_250
CG_SetNextSnap_60:
	mov ecx, [ebp-0xe0]
	mov eax, [ecx+0xc]
	jmp CG_SetNextSnap_260
CG_SetNextSnap_90:
	mov dword [esp+0x8], 0x40
	mov [esp+0x4], ebx
	mov [esp], esi
	call Q_strncpyz
	mov edx, [ebp-0xd4]
	mov dword [edx+0x3f4], 0x1
	jmp CG_SetNextSnap_270
CG_SetNextSnap_190:
	mov ecx, cgArray
	mov eax, [ecx+0x20]
	mov ecx, [eax+0x2f70]
	test ecx, ecx
	jle CG_SetNextSnap_280
	xor edi, edi
	mov esi, 0x2f70
	jmp CG_SetNextSnap_290
CG_SetNextSnap_300:
	add edi, 0x1
	add esi, 0xf4
	mov ecx, cgArray
	mov eax, [ecx+0x20]
	cmp [eax+0x2f70], edi
	jle CG_SetNextSnap_280
CG_SetNextSnap_290:
	mov ebx, [eax+esi+0x8]
	mov edx, ebx
	sar edx, 0x5
	mov ecx, ebx
	and ecx, 0x1f
	mov eax, 0x80000000
	shr eax, cl
	test [ebp+edx*4-0xb0], eax
	jz CG_SetNextSnap_300
	mov [esp+0x4], ebx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call R_UnlinkEntity
	mov [esp+0x4], ebx
	mov edx, [ebp+0x8]
	mov [esp], edx
	call CG_UnlinkEntity
	mov [esp+0x4], ebx
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call FX_MarkEntDetachAll
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
	call CG_ShutdownEntity
	mov eax, [ebx+0xd0]
	sub eax, 0x8
	cmp eax, 0x1
	ja CG_SetNextSnap_300
	mov eax, [ebx+0x44]
	test eax, eax
	jz CG_SetNextSnap_300
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov [esp], edx
	call FX_ThroughWithEffect
	mov dword [ebx+0x44], 0x0
	mov dword [ebx+0x40], 0x0
	add edi, 0x1
	add esi, 0xf4
	mov ecx, cgArray
	mov eax, [ecx+0x20]
	cmp [eax+0x2f70], edi
	jg CG_SetNextSnap_290
CG_SetNextSnap_280:
	mov eax, [ebp+0xc]
	mov edx, [eax+0x2f74]
	test edx, edx
	jg CG_SetNextSnap_310
CG_SetNextSnap_530:
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_UpdateWeaponViewmodels
	mov edx, [ebp+0xc]
	mov eax, [edx+0x110]
	test eax, eax
	jle CG_SetNextSnap_320
	add eax, 0x33e
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call CL_GetConfigString
	mov [esp], eax
	call R_RegisterModel
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_UpdateHandViewmodels
CG_SetNextSnap_320:
	mov ebx, cgArray
	mov eax, [ebx+0x24]
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov [esp], edx
	call CG_BuildItemList
	mov edi, [ebx+0x5052c]
	test edi, edi
	jnz CG_SetNextSnap_330
	mov eax, [ebx+0x24]
	mov esi, [eax+0x8a8]
	test esi, esi
	jnz CG_SetNextSnap_340
CG_SetNextSnap_570:
	mov ebx, [ebx+0x5052c]
	test ebx, ebx
	jnz CG_SetNextSnap_330
CG_SetNextSnap_390:
	mov ecx, [ebp+0xc]
	mov eax, [ecx+0x2f70]
	test eax, eax
	jg CG_SetNextSnap_350
CG_SetNextSnap_550:
	mov ecx, cgArray
	mov edi, [ecx+0x8]
	test edi, edi
	jnz CG_SetNextSnap_360
	mov eax, [ecx+0x24]
	test byte [eax+0x20], 0x2
	jnz CG_SetNextSnap_370
	mov eax, cg_nopredict
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz CG_SetNextSnap_380
CG_SetNextSnap_370:
	mov edx, cgArray
CG_SetNextSnap_510:
	lea ebx, [ebp-0x30]
	mov [esp+0x4], ebx
	mov eax, [edx+0x20]
	add eax, 0xc
	mov [esp], eax
	call CG_ExtractTransPlayerState
	mov ecx, cgArray
	mov esi, [ecx+0x20]
	mov [esp+0x8], ebx
	mov eax, [ecx+0x24]
	add eax, 0xc
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_TransitionPlayerState
	mov [esi+0xc0], eax
CG_SetNextSnap_460:
	mov edx, cgArray
	mov dword [edx+0x46134], 0x0
	add esp, 0xfc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_SetNextSnap_330:
	mov ebx, cgArray
	mov eax, [ebx+0x24]
	mov ecx, [eax+0x8a8]
	test ecx, ecx
	jnz CG_SetNextSnap_390
	mov dword [ebx+0x5052c], 0x0
	mov edx, [ebp+0x8]
	mov [esp], edx
	call CG_RestartSmokeGrenades
	mov eax, [ebx+0x24]
	mov edx, [eax+0x2f70]
	test edx, edx
	jle CG_SetNextSnap_390
	xor edi, edi
	xor esi, esi
	jmp CG_SetNextSnap_400
CG_SetNextSnap_410:
	add edi, 0x1
	add esi, 0xf4
	mov eax, cgArray
	mov eax, [eax+0x24]
	cmp edi, [eax+0x2f70]
	jge CG_SetNextSnap_390
CG_SetNextSnap_400:
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
	call CG_ResetEntity
	cmp dword [ebx+0xd0], 0x2
	jnz CG_SetNextSnap_410
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
	call XAnimGetAnims
	mov [ebp-0xcc], eax
	test ebx, ebx
	jz CG_SetNextSnap_410
	mov [esp+0x4], ebx
	mov [esp], eax
	call XAnimIsLooped
	test al, al
	jnz CG_SetNextSnap_410
	mov [esp+0x4], ebx
	mov eax, [ebp-0xcc]
	mov [esp], eax
	call XAnimGetNumChildren
	test eax, eax
	jnz CG_SetNextSnap_410
	mov dword [esp+0x8], 0x3f800000
	mov [esp+0x4], ebx
	mov edx, [ebp-0xc8]
	mov [esp], edx
	call XAnimSetTime
	jmp CG_SetNextSnap_410
CG_SetNextSnap_210:
	xor ecx, ecx
	mov edx, esi
	mov eax, [ebp+0x8]
	call CG_ResetEntity
	mov edx, [ebp+edi*4-0xb0]
	jmp CG_SetNextSnap_230
CG_SetNextSnap_80:
	mov dword [esp], _cstring_cgame_playerrena
	call UI_SafeTranslateString
	mov [esp+0xc], esi
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_s7_s_s
	call va
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov [esp], edx
	call CG_GameMessage
	jmp CG_SetNextSnap_420
CG_SetNextSnap_40:
	mov edx, [eax+0x20]
	test edx, edx
	jz CG_SetNextSnap_430
	mov ebx, [edx+0x2f70]
	test ebx, ebx
	jg CG_SetNextSnap_440
	mov eax, cgArray
CG_SetNextSnap_590:
	mov dword [eax+0x20], 0x0
CG_SetNextSnap_430:
	call CG_ClearItemList
	add esp, 0xfc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_SetNextSnap_240:
	mov ecx, eax
	jmp CG_SetNextSnap_450
CG_SetNextSnap_380:
	mov eax, cg_synchronousClients
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz CG_SetNextSnap_460
	jmp CG_SetNextSnap_370
CG_SetNextSnap_180:
	cmp ebx, [edx+0xe8]
	jnz CG_SetNextSnap_470
	jmp CG_SetNextSnap_480
CG_SetNextSnap_150:
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
	call BG_PlayerStateToEntityState
	mov byte [esi+0x1c0], 0x1
	mov ecx, cgArray
	mov eax, [ecx+0x46134]
	test eax, eax
	jnz CG_SetNextSnap_490
	mov eax, [ecx+0x20]
	mov [ebp-0xec], eax
	mov edx, [ebp+0xc]
	mov eax, [edx+0x164]
	mov ecx, [ebp-0xec]
	cmp eax, [ecx+0x164]
	jz CG_SetNextSnap_500
CG_SetNextSnap_610:
	mov edx, cgArray
CG_SetNextSnap_600:
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
	call CG_ResetEntity
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_Respawn
	jmp CG_SetNextSnap_480
CG_SetNextSnap_360:
	mov edx, ecx
	jmp CG_SetNextSnap_510
CG_SetNextSnap_310:
	mov ebx, eax
	xor esi, esi
CG_SetNextSnap_520:
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
	call CG_UpdatePlayerDObj
	add esi, 0x1
	add ebx, 0x64
	mov ecx, [ebp+0xc]
	cmp esi, [ecx+0x2f74]
	jl CG_SetNextSnap_520
	jmp CG_SetNextSnap_530
CG_SetNextSnap_350:
	mov ebx, ecx
	xor esi, esi
CG_SetNextSnap_540:
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
	call CG_CheckEvents
	add esi, 0x1
	add ebx, 0xf4
	mov edx, [ebp+0xc]
	cmp [edx+0x2f70], esi
	jg CG_SetNextSnap_540
	jmp CG_SetNextSnap_550
CG_SetNextSnap_170:
	mov eax, ecx
	jmp CG_SetNextSnap_560
CG_SetNextSnap_340:
	mov dword [ebx+0x5052c], 0x1
	mov dword [esp+0x4], 0x0
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call CG_SetEquippedOffHand
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_RestartSmokeGrenades
	jmp CG_SetNextSnap_570
CG_SetNextSnap_440:
	xor esi, esi
CG_SetNextSnap_580:
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
	call CG_ShutdownEntity
	mov [esp+0x4], ebx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_ClearUnion
	add esi, 0x1
	mov ecx, cgArray
	mov edx, [ecx+0x20]
	cmp [edx+0x2f70], esi
	jg CG_SetNextSnap_580
	mov eax, ecx
	jmp CG_SetNextSnap_590
CG_SetNextSnap_160:
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
	call CG_ResetEntity
	jmp CG_SetNextSnap_480
CG_SetNextSnap_490:
	mov edx, ecx
	jmp CG_SetNextSnap_600
CG_SetNextSnap_500:
	cmp ebx, [ecx+0xe8]
	jnz CG_SetNextSnap_610
	mov edx, ebx
	sar edx, 0x5
	and ebx, 0x1f
	mov eax, 0x80000000
	mov ecx, ebx
	shr eax, cl
	test [ebp+edx*4-0xb0], eax
	jz CG_SetNextSnap_620
	mov eax, cgArray
	cmp byte [eax+0xfd758], 0x0
	jz CG_SetNextSnap_630
CG_SetNextSnap_620:
	mov eax, [ebp-0xec]
	add eax, 0xc
	mov dword [esp+0x8], 0x2f64
	mov [esp+0x4], edi
	mov [esp], eax
	call memcpy
	mov ecx, 0x1
	mov edx, esi
	mov eax, [ebp+0x8]
	call CG_ResetEntity
	xor eax, eax
	mov edx, cgArray
	mov [edx+0x492b0], eax
	mov [edx+0x492b4], eax
	mov [edx+0x492b8], eax
	jmp CG_SetNextSnap_480
CG_SetNextSnap_630:
	mov eax, [esi+0x64]
	xor eax, [esi+0xd4]
	test al, 0x2
	jz CG_SetNextSnap_480
	mov eax, [ebp-0xec]
	add eax, 0xc
	mov dword [esp+0x8], 0x2f64
	mov [esp+0x4], edi
	mov [esp], eax
	call memcpy
	xor ecx, ecx
	mov edx, esi
	mov eax, [ebp+0x8]
	call CG_ResetEntity
	xor eax, eax
	mov ecx, cgArray
	mov [ecx+0x492b0], eax
	mov [ecx+0x492b4], eax
	mov [ecx+0x492b8], eax
	jmp CG_SetNextSnap_480
	nop


;CG_ShutdownEntity(int, centity_s*)
CG_ShutdownEntity:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0xc]
	cmp byte [ebx+0xc], 0x0
	jnz CG_ShutdownEntity_10
	mov eax, [ebx+0x68]
	sub eax, 0x9
	cmp eax, 0x2
	ja CG_ShutdownEntity_20
CG_ShutdownEntity_10:
	mov byte [ebx+0xc], 0x0
	mov eax, [ebx+0x10]
	test eax, eax
	jnz CG_ShutdownEntity_30
CG_ShutdownEntity_90:
	mov eax, [ebx+0x14]
	test eax, eax
	jnz CG_ShutdownEntity_40
CG_ShutdownEntity_80:
	mov dword [ebx+0x68], 0x0
	mov dword [ebx+0x8c], 0x0
CG_ShutdownEntity_20:
	mov eax, [ebx+0x18]
	add eax, 0x1
	cmp eax, 0x1
	jbe CG_ShutdownEntity_50
	mov eax, [ebx+0xcc]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_IsEntityLinked
	test al, al
	jnz CG_ShutdownEntity_60
CG_ShutdownEntity_100:
	mov eax, [ebx+0x18]
	mov [esp+0x4], eax
	mov dword [esp], 0x1
	call Phys_ObjDestroy
CG_ShutdownEntity_70:
	mov dword [ebx+0x68], 0x0
	mov dword [ebx+0x8c], 0x0
	mov dword [ebx+0x18], 0x0
	add esp, 0x14
	pop ebx
	pop ebp
	ret
CG_ShutdownEntity_50:
	cmp dword [ebx+0x68], 0x8
	jz CG_ShutdownEntity_70
	add esp, 0x14
	pop ebx
	pop ebp
	ret
CG_ShutdownEntity_40:
	mov [esp], eax
	call Ragdoll_Remove
	mov dword [ebx+0x14], 0x0
	jmp CG_ShutdownEntity_80
CG_ShutdownEntity_30:
	mov [esp], eax
	call Ragdoll_Remove
	mov dword [ebx+0x10], 0x0
	jmp CG_ShutdownEntity_90
CG_ShutdownEntity_60:
	mov eax, [ebx+0xcc]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_UnlinkEntity
	jmp CG_ShutdownEntity_100


;CG_ProcessSnapshots(int)
CG_ProcessSnapshots:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov esi, [ebp+0x8]
	mov dword [esp+0x4], _cstring_process_snapshot
	mov dword [esp], 0xffffffff
	call PIXBeginNamedEvent
	mov ebx, cgArray
	lea eax, [ebx+0x1c]
	mov [esp+0x8], eax
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov [esp], esi
	call CL_GetCurrentSnapshotNumber
	mov eax, [ebp-0x1c]
	cmp [ebx+0x18], eax
	jz CG_ProcessSnapshots_10
	jg CG_ProcessSnapshots_20
CG_ProcessSnapshots_190:
	mov [ebx+0x18], eax
CG_ProcessSnapshots_10:
	mov edi, cgArray
	mov eax, [edi+0x1c]
	mov [edi+0xe9f10], eax
CG_ProcessSnapshots_170:
	mov edi, [edi+0x20]
	test edi, edi
	jnz CG_ProcessSnapshots_30
CG_ProcessSnapshots_60:
	mov eax, esi
	call CG_ReadNextSnapshot
	mov ebx, eax
	test eax, eax
	jz CG_ProcessSnapshots_40
	test byte [eax], 0x2
	jz CG_ProcessSnapshots_50
	mov edi, cgArray
	mov edi, [edi+0x20]
	test edi, edi
	jz CG_ProcessSnapshots_60
CG_ProcessSnapshots_30:
	mov [esp], esi
	call CG_SetFrameInterpolation
CG_ProcessSnapshots_180:
	mov edi, cgArray
	mov eax, [edi+0x24]
	cmp eax, [edi+0x20]
	jz CG_ProcessSnapshots_70
CG_ProcessSnapshots_130:
	mov ebx, [edi+0xc]
	test ebx, ebx
	jz CG_ProcessSnapshots_80
CG_ProcessSnapshots_70:
	mov eax, esi
	call CG_ReadNextSnapshot
	mov ebx, eax
	test eax, eax
	jz CG_ProcessSnapshots_90
CG_ProcessSnapshots_140:
	mov edx, [edi+0x24]
	mov eax, [eax]
	xor eax, [edx]
	test al, 0x4
	jnz CG_ProcessSnapshots_100
	mov eax, [edx+0x8]
	cmp [ebx+0x8], eax
	js CG_ProcessSnapshots_110
CG_ProcessSnapshots_200:
	mov [esp+0x4], ebx
	mov [esp], esi
	call CG_SetNextSnap
CG_ProcessSnapshots_80:
	mov edx, [edi+0x46128]
	mov eax, [edi+0x20]
	cmp edx, [eax+0x8]
	js CG_ProcessSnapshots_120
	mov eax, [edi+0x24]
	cmp edx, [eax+0x8]
	js CG_ProcessSnapshots_90
CG_ProcessSnapshots_120:
	mov eax, esi
	call CG_TransitionSnapshot
	mov edi, cgArray
	mov eax, [edi+0x24]
	cmp eax, [edi+0x20]
	jnz CG_ProcessSnapshots_130
	mov eax, esi
	call CG_ReadNextSnapshot
	mov ebx, eax
	test eax, eax
	jnz CG_ProcessSnapshots_140
CG_ProcessSnapshots_90:
	call CG_ItemListLocalClientNum
	cmp esi, eax
	jz CG_ProcessSnapshots_150
	mov eax, cgArray
	mov eax, [eax+0x24]
	mov [esp+0x4], eax
	mov [esp], esi
	call CG_BuildItemList
CG_ProcessSnapshots_150:
	mov edx, cgArray
	mov eax, [edx+0x20]
	mov eax, [eax+0x8]
	cmp [edx+0x46128], eax
	js CG_ProcessSnapshots_160
CG_ProcessSnapshots_40:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_ProcessSnapshots_50:
	mov [esp+0x4], eax
	mov [esp], esi
	call CG_SetInitialSnapshot
	mov [esp+0x4], ebx
	mov [esp], esi
	call CG_SetNextSnap
	mov eax, esi
	call CG_TransitionSnapshot
	mov [esp], esi
	call AimAssist_Setup
	mov edi, cgArray
	jmp CG_ProcessSnapshots_170
CG_ProcessSnapshots_100:
	mov [esp+0x4], ebx
	mov [esp], esi
	call CG_SetInitialSnapshot
	mov [esp+0x4], ebx
	mov [esp], esi
	call CG_SetNextSnap
	mov eax, esi
	call CG_TransitionSnapshot
	jmp CG_ProcessSnapshots_180
CG_ProcessSnapshots_20:
	mov dword [esp+0x4], _cstring_cg_processsnapsh
	mov dword [esp], 0x2
	call Com_Error
	mov eax, [ebp-0x1c]
	jmp CG_ProcessSnapshots_190
CG_ProcessSnapshots_110:
	mov dword [esp+0x4], _cstring_cg_processsnapsh1
	mov dword [esp], 0x2
	call Com_Error
	jmp CG_ProcessSnapshots_200
CG_ProcessSnapshots_160:
	mov [edx+0x46128], eax
	mov [edx+0xe9f0c], eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;CG_SetInitialSnapshot(int, snapshot_s*)
CG_SetInitialSnapshot:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov edi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	mov [esp], edi
	call R_InitSceneData
	mov dword [esp+0x4], 0x0
	mov [esp], edi
	call CG_SetNextSnap
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
	call AnglesToAxis
	mov [esp+0xc], esi
	lea eax, [ebp-0x24]
	mov [esp+0x8], eax
	mov eax, [ebx+0xe8]
	mov [esp+0x4], eax
	mov [esp], edi
	call SND_SetListener
	mov dword [esp+0x4], 0x0
	mov dword [esp], 0x3f800000
	call SND_FadeAllSounds
	mov [esp], edi
	call CG_Respawn
	mov [esp], edi
	call CG_RestartSmokeGrenades
	mov [esp], edi
	call CG_ClearEntityCollWorld
	mov [esp], edi
	call CG_InitView
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

