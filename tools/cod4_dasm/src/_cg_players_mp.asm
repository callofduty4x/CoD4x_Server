;Imports of cg_players_mp:
	extern cgArray
	extern Com_GetClientDObj
	extern scr_const
	extern CG_DObjGetWorldTagPos
	extern cg_headIconMinScreenRadius
	extern FX_SpriteAdd
	extern clientUIActives
	extern FX_MarkEntUpdateBegin
	extern BG_UpdatePlayerDObj
	extern FX_MarkEntUpdateEnd
	extern cg_debugPosition
	extern Com_Printf
	extern XAnimClearTreeGoalWeights
	extern XAnimSetCompleteGoalWeight
	extern BG_ClipForWeapon
	extern BG_GetWeaponDef
	extern BG_IsKnifeMeleeAnim
	extern useFastFile
	extern XModelBad
	extern CG_GetWeaponAttachBone
	extern DObjGetBoneIndex
	extern CG_DObjGetWorldBoneMatrix
	extern XModelGetBounds
	extern XModelGetBasePose
	extern vec3_origin
	extern CG_TraceCapsule
	extern cg_entitiesArray
	extern cg_voiceIconSize
	extern cgMedia
	extern CL_GetConfigString
	extern Material_RegisterHandle
	extern cg_scriptIconSize
	extern cg_constantSizeHeadIcons
	extern cg_youInKillCamSize
	extern cg_connectionIconSize
	extern cgsArray
	extern BG_PlayerAnimation
	extern R_AddDObjToScene
	extern CG_Player_PreControllers
	extern PIXBeginNamedEvent
	extern AnglesToQuat
	extern CG_AddPlayerWeapon
	extern AimTarget_ProcessEntity
	extern Com_PrintWarning
	extern CG_DObjGetWorldTagMatrix
	extern vectosignedyaw
	extern floorf
	extern AnglesToAxis
	extern XAnimGetNumChildren
	extern XAnimGetChildAt
	extern XAnimGetAbsDelta
	extern XAnimGetAnimDebugName
	extern Com_Error
	extern XAnimClearTreeGoalWeightsStrict
	extern XAnimSetGoalWeight
	extern XAnimCalcAbsDelta
	extern VectorAngleMultiply
	extern RotationToYaw
	extern YawToAxis
	extern AxisToAngles

;Exports of cg_players_mp:
	global CG_AddPlayerSpriteDrawSurf
	global CG_GetTeamName
	global CG_IsPlayerDead
	global CG_UpdatePlayerDObj
	global CG_GetPlayerTeamName
	global CG_ResetPlayerEntity
	global CG_GetPlayerClipAmmoCount
	global CG_UpdateWeaponVisibility
	global CG_GetPlayerOpposingTeamName
	global CG_AddAllPlayerSpriteDrawSurfs
	global CG_Corpse
	global CG_Player


SECTION .text


;CG_AddPlayerSpriteDrawSurf(int, centity_s const*, Material*, float, int, unsigned char)
CG_AddPlayerSpriteDrawSurf:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov edi, eax
	mov ebx, edx
	mov [ebp-0x54], ecx
	movzx ecx, byte [ebp+0xc]
	mov esi, [edx+0xcc]
	mov eax, cgArray
	mov edx, [eax+0x24]
	test byte [edx+0x20], 0x6
	jz CG_AddPlayerSpriteDrawSurf_10
	cmp esi, [edx+0xe8]
	jz CG_AddPlayerSpriteDrawSurf_20
CG_AddPlayerSpriteDrawSurf_10:
	xor edx, edx
CG_AddPlayerSpriteDrawSurf_100:
	test edx, edx
	jz CG_AddPlayerSpriteDrawSurf_30
	mov eax, [eax+0x46138]
	test eax, eax
	jz CG_AddPlayerSpriteDrawSurf_40
CG_AddPlayerSpriteDrawSurf_30:
	test cl, cl
	jnz CG_AddPlayerSpriteDrawSurf_50
	addss xmm0, [_float_10_00000000]
	movss [ebp-0x4c], xmm0
	mov dword [ebp-0x50], 0x0
CG_AddPlayerSpriteDrawSurf_80:
	mov [esp+0x4], edi
	mov [esp], esi
	call Com_GetClientDObj
	mov edx, eax
	test eax, eax
	jz CG_AddPlayerSpriteDrawSurf_60
	lea eax, [ebp-0x24]
	mov [esp+0xc], eax
	mov eax, scr_const
	movzx eax, word [eax+0x130]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov [esp], ebx
	call CG_DObjGetWorldTagPos
	test eax, eax
	jnz CG_AddPlayerSpriteDrawSurf_70
CG_AddPlayerSpriteDrawSurf_60:
	lea edx, [ebx+0x1c]
	mov eax, [ebx+0x1c]
	mov [ebp-0x24], eax
	mov eax, [edx+0x4]
	mov [ebp-0x20], eax
	mov eax, [edx+0x8]
	mov [ebp-0x1c], eax
	cvtsi2ss xmm0, dword [ebp+0x8]
	addss xmm0, [_float_82_00000000]
	addss xmm0, [ebp-0x1c]
	movss [ebp-0x1c], xmm0
CG_AddPlayerSpriteDrawSurf_90:
	mov eax, [ebp-0x24]
	mov [ebp-0x44], eax
	mov eax, [ebp-0x20]
	mov [ebp-0x40], eax
	mov eax, [ebp-0x1c]
	mov [ebp-0x3c], eax
	lea edx, [ebp-0x48]
	mov dword [ebp-0x38], 0xffffffff
	mov eax, [ebp-0x54]
	mov [ebp-0x48], eax
	movss xmm0, dword [ebp-0x4c]
	movss [ebp-0x34], xmm0
	mov eax, cg_headIconMinScreenRadius
	mov eax, [eax]
	mov eax, [eax+0xc]
	mov [ebp-0x30], eax
	mov eax, [ebp-0x50]
	mov [ebp-0x2c], eax
	mov [esp], edx
	call FX_SpriteAdd
CG_AddPlayerSpriteDrawSurf_40:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_AddPlayerSpriteDrawSurf_50:
	addss xmm0, [_float_10_00000000]
	mulss xmm0, [_float_0_00430000]
	movss [ebp-0x4c], xmm0
	mov dword [ebp-0x50], 0x3
	jmp CG_AddPlayerSpriteDrawSurf_80
CG_AddPlayerSpriteDrawSurf_70:
	cvtsi2ss xmm0, dword [ebp+0x8]
	addss xmm0, [_float_21_00000000]
	addss xmm0, [ebp-0x1c]
	movss [ebp-0x1c], xmm0
	jmp CG_AddPlayerSpriteDrawSurf_90
CG_AddPlayerSpriteDrawSurf_20:
	mov edx, 0x1
	jmp CG_AddPlayerSpriteDrawSurf_100
	nop


;CG_GetTeamName(team_t)
CG_GetTeamName:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	cmp eax, 0x1
	jz CG_GetTeamName_10
	jle CG_GetTeamName_20
	cmp eax, 0x2
	jz CG_GetTeamName_30
	cmp eax, 0x3
	jz CG_GetTeamName_40
CG_GetTeamName_50:
	mov eax, _cstring_null
	pop ebp
	ret
CG_GetTeamName_10:
	mov eax, _cstring_team_axis
	pop ebp
	ret
CG_GetTeamName_30:
	mov eax, _cstring_team_allies
	pop ebp
	ret
CG_GetTeamName_40:
	mov eax, _cstring_team_spectator
	pop ebp
	ret
CG_GetTeamName_20:
	test eax, eax
	jnz CG_GetTeamName_50
	mov eax, _cstring_team_free
	pop ebp
	ret


;CG_IsPlayerDead(int)
CG_IsPlayerDead:
	push ebp
	mov ebp, esp
	mov eax, clientUIActives
	cmp dword [eax+0xc], 0x7
	jle CG_IsPlayerDead_10
	mov eax, cgArray
	mov eax, [eax+0x24]
	mov edx, [eax+0x154]
	test edx, edx
	jnz CG_IsPlayerDead_20
CG_IsPlayerDead_30:
	mov eax, 0x1
	pop ebp
	ret
CG_IsPlayerDead_20:
	mov eax, [eax+0x20]
	test al, 0x4
	jz CG_IsPlayerDead_30
	test al, 0x2
	jnz CG_IsPlayerDead_30
CG_IsPlayerDead_10:
	xor eax, eax
	pop ebp
	ret


;CG_UpdatePlayerDObj(int, centity_s*)
CG_UpdatePlayerDObj:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x13c
	mov edi, [ebp+0x8]
	mov eax, [ebp+0xc]
	cmp byte [eax+0x1c0], 0x0
	jz CG_UpdatePlayerDObj_10
	lea ebx, [eax+0xcc]
	mov [esp+0x4], edi
	mov eax, [ebx+0x8c]
	mov [esp], eax
	call Com_GetClientDObj
	mov esi, eax
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], eax
	lea eax, [ebp-0x120]
	mov [esp], eax
	call FX_MarkEntUpdateBegin
	mov dword [esp+0x10], 0x0
	mov edx, [ebx+0x8c]
	lea eax, [edx+edx*8]
	mov ecx, eax
	shl ecx, 0x4
	add eax, ecx
	lea eax, [edx+eax*2]
	mov edx, cgArray
	lea eax, [edx+eax*4+0xe9f34]
	mov [esp+0xc], eax
	mov [esp+0x8], ebx
	mov [esp+0x4], esi
	mov [esp], edi
	call BG_UpdatePlayerDObj
	mov [esp+0x4], edi
	mov eax, [ebx+0x8c]
	mov [esp], eax
	call Com_GetClientDObj
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x0
	mov [esp+0xc], eax
	mov eax, [ebx+0x8c]
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	lea eax, [ebp-0x120]
	mov [esp], eax
	call FX_MarkEntUpdateEnd
CG_UpdatePlayerDObj_10:
	add esp, 0x13c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;CG_GetPlayerTeamName(int)
CG_GetPlayerTeamName:
	push ebp
	mov ebp, esp
	push ebx
	mov eax, clientUIActives
	cmp dword [eax+0xc], 0x7
	jle CG_GetPlayerTeamName_10
	mov ebx, cgArray
	mov edx, [ebx]
	lea eax, [edx+edx*8]
	mov ecx, eax
	shl ecx, 0x4
	add eax, ecx
	lea eax, [edx+eax*2]
	lea eax, [ebx+eax*4+0xe9f30]
	lea edx, [eax+0x4]
	mov ecx, [eax+0x4]
	test ecx, ecx
	jz CG_GetPlayerTeamName_10
	mov eax, [edx+0x1c]
	cmp eax, 0x1
	jz CG_GetPlayerTeamName_20
	jle CG_GetPlayerTeamName_30
	cmp eax, 0x2
	jz CG_GetPlayerTeamName_40
	cmp eax, 0x3
	jz CG_GetPlayerTeamName_50
CG_GetPlayerTeamName_60:
	mov eax, _cstring_null
	pop ebx
	pop ebp
	ret
CG_GetPlayerTeamName_30:
	test eax, eax
	jnz CG_GetPlayerTeamName_60
CG_GetPlayerTeamName_10:
	mov eax, _cstring_team_free
	pop ebx
	pop ebp
	ret
CG_GetPlayerTeamName_40:
	mov eax, _cstring_team_allies
	pop ebx
	pop ebp
	ret
CG_GetPlayerTeamName_50:
	mov eax, _cstring_team_spectator
	pop ebx
	pop ebp
	ret
CG_GetPlayerTeamName_20:
	mov eax, _cstring_team_axis
	pop ebx
	pop ebp
	ret
	nop


;CG_ResetPlayerEntity(int, cg_s*, centity_s*, int)
CG_ResetPlayerEntity:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov edi, [ebp+0x10]
	lea esi, [edi+0xcc]
	mov eax, [esi+0x8c]
	lea edx, [eax+eax*8]
	mov ecx, edx
	shl ecx, 0x4
	add edx, ecx
	lea edx, [eax+edx*2]
	mov eax, [ebp+0xc]
	lea edx, [eax+edx*4+0xe9f30]
	mov [ebp-0x20], edx
	mov ebx, edx
	add ebx, 0x4
	mov edx, [esi+0x8]
	and edx, 0x20000
	mov [ebp-0x24], edx
	jnz CG_ResetPlayerEntity_10
	mov eax, [ebp+0x14]
	test eax, eax
	jnz CG_ResetPlayerEntity_20
CG_ResetPlayerEntity_10:
	mov eax, cg_debugPosition
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz CG_ResetPlayerEntity_30
	cvtss2sd xmm0, [ebx+0x3ac]
	movsd [esp+0xc], xmm0
	mov eax, [esi]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_i_resetplayerent
	mov dword [esp], 0x11
	call Com_Printf
CG_ResetPlayerEntity_30:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_ResetPlayerEntity_20:
	mov ecx, [ebx+0x4a8]
	mov [ebp-0x1c], ecx
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov eax, [edi+0xcc]
	mov [esp], eax
	call Com_GetClientDObj
	mov edi, eax
	test eax, eax
	jz CG_ResetPlayerEntity_10
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov edx, [ebp-0x1c]
	mov [esp], edx
	call XAnimClearTreeGoalWeights
	mov dword [esp+0x1c], 0x0
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x3f800000
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	mov ecx, [ebp+0xc]
	movzx eax, word [ecx+0xe9eec]
	mov [esp+0x4], eax
	mov [esp], edi
	call XAnimSetCompleteGoalWeight
	mov dword [esp+0x1c], 0x0
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x3f800000
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x3f800000
	mov edx, [ebp+0xc]
	movzx eax, word [edx+0xe9eee]
	mov [esp+0x4], eax
	mov [esp], edi
	call XAnimSetCompleteGoalWeight
	mov dword [esp+0x1c], 0x0
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x3f800000
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	mov ecx, [ebp+0xc]
	movzx eax, word [ecx+0xe9ef0]
	mov [esp+0x4], eax
	mov [esp], edi
	call XAnimSetCompleteGoalWeight
	mov edi, [ebp-0x20]
	add edi, 0x380
	cld
	mov edx, 0xc
	mov ecx, edx
	mov eax, [ebp-0x24]
	rep stosd
	movss xmm0, dword [ebx+0x3e8]
	movss [ebx+0x37c], xmm0
	mov dword [ebx+0x380], 0x0
	mov dword [ebx+0x384], 0x0
	mov dword [ebx+0x388], 0x0
	mov edi, [ebp-0x20]
	add edi, 0x3b0
	mov ecx, edx
	rep stosd
	movss [ebx+0x3ac], xmm0
	mov dword [ebx+0x3b0], 0x0
	mov eax, [ebx+0x3e4]
	mov [ebx+0x3b4], eax
	mov dword [ebx+0x3b8], 0x0
	jmp CG_ResetPlayerEntity_10


;CG_GetPlayerClipAmmoCount(int)
CG_GetPlayerClipAmmoCount:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, cgArray
	mov ebx, [eax+0x24]
	add ebx, 0xc
	mov eax, [ebx+0xe8]
	mov [esp], eax
	call BG_ClipForWeapon
	mov eax, [ebx+eax*4+0x35c]
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;CG_UpdateWeaponVisibility(int, centity_s*)
CG_UpdateWeaponVisibility:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xec
	mov edi, [ebp+0xc]
	add edi, 0xcc
	mov edx, [edi+0x8c]
	lea eax, [edx+edx*8]
	mov ecx, eax
	shl ecx, 0x4
	add eax, ecx
	lea eax, [edx+eax*2]
	mov edx, cgArray
	lea ebx, [edx+eax*4+0xe9f34]
	mov eax, [ebx+0x4ac]
	test eax, eax
	jnz CG_UpdateWeaponVisibility_10
CG_UpdateWeaponVisibility_40:
	add esp, 0xec
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_UpdateWeaponVisibility_10:
	mov [esp], eax
	call BG_GetWeaponDef
	mov esi, eax
	movzx eax, byte [ebx+0x4b0]
	mov eax, [esi+eax*4+0x2bc]
	mov [ebp-0xbc], eax
	mov eax, [esi+0x308]
	test eax, eax
	jz CG_UpdateWeaponVisibility_20
	mov edx, [ebp+0xc]
	mov eax, [edx+0x19c]
	mov [esp+0x4], eax
	mov [esp], ebx
	call BG_IsKnifeMeleeAnim
	test eax, eax
	jz CG_UpdateWeaponVisibility_20
	cmp byte [ebx+0x4c9], 0x0
	jnz CG_UpdateWeaponVisibility_30
	mov byte [ebx+0x4c9], 0x1
	mov dword [ebx+0x3f4], 0x1
CG_UpdateWeaponVisibility_30:
	mov eax, [ebp-0xbc]
	test eax, eax
	jz CG_UpdateWeaponVisibility_40
	mov eax, useFastFile
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz CG_UpdateWeaponVisibility_50
	mov eax, [ebp-0xbc]
	mov [esp], eax
	call XModelBad
	test eax, eax
	jnz CG_UpdateWeaponVisibility_40
CG_UpdateWeaponVisibility_50:
	mov eax, [esi+0x12c]
	mov [esp+0x4], eax
	mov [esp], ebx
	call CG_GetWeaponAttachBone
	mov esi, eax
	mov edx, [ebp+0x8]
	mov [esp+0x4], edx
	mov eax, [edi]
	mov [esp], eax
	call Com_GetClientDObj
	mov edi, eax
	mov byte [ebp-0x19], 0xfe
	lea eax, [ebp-0x19]
	mov [esp+0x8], eax
	movzx eax, si
	mov [esp+0x4], eax
	mov [esp], edi
	call DObjGetBoneIndex
	test eax, eax
	jz CG_UpdateWeaponVisibility_40
	lea eax, [ebp-0x40]
	mov [esp+0x10], eax
	lea eax, [ebp-0x88]
	mov [esp+0xc], eax
	movzx eax, byte [ebp-0x19]
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	mov eax, [ebp+0xc]
	mov [esp], eax
	call CG_DObjGetWorldBoneMatrix
	test eax, eax
	jz CG_UpdateWeaponVisibility_40
	lea eax, [ebp-0x34]
	mov [esp+0x8], eax
	lea eax, [ebp-0x28]
	mov [esp+0x4], eax
	mov edx, [ebp-0xbc]
	mov [esp], edx
	call XModelGetBounds
	mov eax, [ebp-0xbc]
	mov [esp], eax
	call XModelGetBasePose
	movss xmm0, dword [ebp-0x28]
	movaps xmm1, xmm0
	subss xmm1, [eax+0x10]
	movss xmm4, dword [ebp-0x34]
	subss xmm4, xmm0
	movss xmm3, dword [ebp-0x88]
	movaps xmm0, xmm1
	mulss xmm0, xmm3
	addss xmm0, [ebp-0x40]
	movss [ebp-0x4c], xmm0
	movss xmm2, dword [ebp-0x84]
	movaps xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm0, [ebp-0x3c]
	movss [ebp-0x48], xmm0
	movss xmm0, dword [ebp-0x80]
	mulss xmm1, xmm0
	addss xmm1, [ebp-0x38]
	movss [ebp-0x44], xmm1
	mulss xmm3, xmm4
	addss xmm3, [ebp-0x4c]
	movss [ebp-0x58], xmm3
	mulss xmm2, xmm4
	addss xmm2, [ebp-0x48]
	movss [ebp-0x54], xmm2
	mulss xmm0, xmm4
	addss xmm1, xmm0
	movss [ebp-0x50], xmm1
	mov dword [esp+0x18], 0x1001
	mov edx, [ebp+0xc]
	mov eax, [edx+0xcc]
	mov [esp+0x14], eax
	lea eax, [ebp-0x58]
	mov [esp+0x10], eax
	mov esi, vec3_origin
	mov [esp+0xc], esi
	mov [esp+0x8], esi
	lea edi, [ebp-0x4c]
	mov [esp+0x4], edi
	lea eax, [ebp-0xb4]
	mov [esp], eax
	movss [ebp-0xd8], xmm4
	call CG_TraceCapsule
	movss xmm4, dword [ebp-0xd8]
	movaps xmm0, xmm4
	mulss xmm0, [ebp-0xb4]
	subss xmm4, xmm0
	ucomiss xmm4, [_float_3_00000000]
	ja CG_UpdateWeaponVisibility_60
CG_UpdateWeaponVisibility_80:
	cmp byte [ebx+0x4c8], 0x0
	jz CG_UpdateWeaponVisibility_40
	mov byte [ebx+0x4c8], 0x0
	mov dword [ebx+0x3f4], 0x1
	jmp CG_UpdateWeaponVisibility_40
CG_UpdateWeaponVisibility_20:
	cmp byte [ebx+0x4c9], 0x0
	jz CG_UpdateWeaponVisibility_30
	mov byte [ebx+0x4c9], 0x0
	mov dword [ebx+0x3f4], 0x1
	jmp CG_UpdateWeaponVisibility_30
CG_UpdateWeaponVisibility_60:
	mov edx, cgArray
	mov eax, [edx+0x492e0]
	mov [ebp-0x64], eax
	mov eax, [edx+0x492e4]
	mov [ebp-0x60], eax
	mov eax, [edx+0x492e8]
	mov [ebp-0x5c], eax
	mov dword [esp+0x18], 0x1001
	mov edx, [ebp+0xc]
	mov eax, [edx+0xcc]
	mov [esp+0x14], eax
	mov [esp+0x10], edi
	mov [esp+0xc], esi
	mov [esp+0x8], esi
	lea eax, [ebp-0x64]
	mov [esp+0x4], eax
	lea eax, [ebp-0xb4]
	mov [esp], eax
	call CG_TraceCapsule
	movss xmm0, dword [_float_1_00000000]
	ucomiss xmm0, [ebp-0xb4]
	jnz CG_UpdateWeaponVisibility_70
	jnp CG_UpdateWeaponVisibility_80
CG_UpdateWeaponVisibility_70:
	cmp byte [ebx+0x4c8], 0x0
	jnz CG_UpdateWeaponVisibility_40
	mov byte [ebx+0x4c8], 0x1
	mov dword [ebx+0x3f4], 0x1
	jmp CG_UpdateWeaponVisibility_40
	nop


;CG_GetPlayerOpposingTeamName(int)
CG_GetPlayerOpposingTeamName:
	push ebp
	mov ebp, esp
	push ebx
	mov eax, clientUIActives
	cmp dword [eax+0xc], 0x7
	jle CG_GetPlayerOpposingTeamName_10
	mov ebx, cgArray
	mov edx, [ebx]
	lea eax, [edx+edx*8]
	mov ecx, eax
	shl ecx, 0x4
	add eax, ecx
	lea eax, [edx+eax*2]
	lea eax, [ebx+eax*4+0xe9f30]
	lea edx, [eax+0x4]
	mov ebx, [eax+0x4]
	test ebx, ebx
	jz CG_GetPlayerOpposingTeamName_10
	mov eax, [edx+0x1c]
	cmp eax, 0x1
	jz CG_GetPlayerOpposingTeamName_20
	jle CG_GetPlayerOpposingTeamName_30
	cmp eax, 0x2
	jz CG_GetPlayerOpposingTeamName_40
	cmp eax, 0x3
	jz CG_GetPlayerOpposingTeamName_50
CG_GetPlayerOpposingTeamName_60:
	mov eax, _cstring_null
	pop ebx
	pop ebp
	ret
CG_GetPlayerOpposingTeamName_30:
	test eax, eax
	jnz CG_GetPlayerOpposingTeamName_60
CG_GetPlayerOpposingTeamName_50:
	cmp eax, 0x1
	jz CG_GetPlayerOpposingTeamName_40
	jg CG_GetPlayerOpposingTeamName_70
	test eax, eax
	jnz CG_GetPlayerOpposingTeamName_60
CG_GetPlayerOpposingTeamName_10:
	mov eax, _cstring_team_free
	pop ebx
	pop ebp
	ret
CG_GetPlayerOpposingTeamName_40:
	mov eax, _cstring_team_axis
	pop ebx
	pop ebp
	ret
CG_GetPlayerOpposingTeamName_20:
	mov eax, _cstring_team_allies
	pop ebx
	pop ebp
	ret
CG_GetPlayerOpposingTeamName_70:
	cmp eax, 0x2
	jz CG_GetPlayerOpposingTeamName_20
	cmp eax, 0x3
	jnz CG_GetPlayerOpposingTeamName_60
	mov eax, _cstring_team_spectator
	pop ebx
	pop ebp
	ret


;CG_AddAllPlayerSpriteDrawSurfs(int)
CG_AddAllPlayerSpriteDrawSurfs:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov eax, cgArray
	mov eax, [eax+0x24]
	mov [ebp-0x24], eax
	mov ecx, [eax+0x2f70]
	test ecx, ecx
	jle CG_AddAllPlayerSpriteDrawSurfs_10
	mov esi, eax
	xor edi, edi
	jmp CG_AddAllPlayerSpriteDrawSurfs_20
CG_AddAllPlayerSpriteDrawSurfs_30:
	add edi, 0x1
	add esi, 0xf4
	mov edx, [ebp-0x24]
	cmp edi, [edx+0x2f70]
	jge CG_AddAllPlayerSpriteDrawSurfs_10
CG_AddAllPlayerSpriteDrawSurfs_20:
	mov eax, [esi+0x2f78]
	lea edx, [eax*4]
	shl eax, 0x5
	sub eax, edx
	mov edx, eax
	shl edx, 0x4
	lea ebx, [eax+edx]
	add ebx, cg_entitiesArray
	cmp dword [ebx+0xd0], 0x1
	jnz CG_AddAllPlayerSpriteDrawSurfs_30
	mov eax, [ebx+0x158]
	lea edx, [eax+eax*8]
	mov ecx, edx
	shl ecx, 0x4
	add edx, ecx
	lea edx, [eax+edx*2]
	mov ecx, cgArray
	lea eax, [ecx+edx*4]
	mov edx, [eax+0xe9f34]
	test edx, edx
	jz CG_AddAllPlayerSpriteDrawSurfs_30
	mov eax, [eax+0xe9f50]
	mov [ebp-0x1c], eax
	mov eax, [ecx+0x24]
	mov edx, [eax+0xe8]
	lea eax, [edx+edx*8]
	mov ecx, eax
	shl ecx, 0x4
	add eax, ecx
	lea eax, [edx+eax*2]
	mov edx, cgArray
	lea eax, [edx+eax*4]
	mov edx, [eax+0xe9f34]
	test edx, edx
	jz CG_AddAllPlayerSpriteDrawSurfs_30
	mov eax, [eax+0xe9f50]
	mov [ebp-0x20], eax
	mov eax, [ebx+0x15c]
	test eax, eax
	jnz CG_AddAllPlayerSpriteDrawSurfs_40
CG_AddAllPlayerSpriteDrawSurfs_90:
	xor edx, edx
CG_AddAllPlayerSpriteDrawSurfs_100:
	mov eax, [ebx+0xcc]
	mov ecx, cgArray
	cmp eax, [ecx]
	jz CG_AddAllPlayerSpriteDrawSurfs_50
CG_AddAllPlayerSpriteDrawSurfs_110:
	mov eax, [ebx+0xd4]
	test al, al
	js CG_AddAllPlayerSpriteDrawSurfs_60
	mov ecx, [ebp-0x20]
	cmp [ebp-0x1c], ecx
	jz CG_AddAllPlayerSpriteDrawSurfs_70
	cmp ecx, 0x3
	jnz CG_AddAllPlayerSpriteDrawSurfs_30
CG_AddAllPlayerSpriteDrawSurfs_70:
	test eax, 0x200000
	jz CG_AddAllPlayerSpriteDrawSurfs_30
	mov eax, cg_voiceIconSize
	mov eax, [eax]
	movss xmm0, dword [eax+0xc]
	mov eax, cgMedia
	mov ecx, [eax+0x8]
	mov dword [esp+0x4], 0x0
	lea eax, [edx-0x5]
	mov [esp], eax
	mov edx, ebx
	mov eax, [ebp+0x8]
	call CG_AddPlayerSpriteDrawSurf
	jmp CG_AddAllPlayerSpriteDrawSurfs_30
CG_AddAllPlayerSpriteDrawSurfs_10:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_AddAllPlayerSpriteDrawSurfs_40:
	mov edx, [ebx+0x160]
	test edx, edx
	jz CG_AddAllPlayerSpriteDrawSurfs_80
	cmp dword [ebp-0x20], 0x3
	jz CG_AddAllPlayerSpriteDrawSurfs_80
	cmp [ebp-0x20], edx
	jnz CG_AddAllPlayerSpriteDrawSurfs_90
CG_AddAllPlayerSpriteDrawSurfs_80:
	add eax, 0x8da
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call CL_GetConfigString
	mov dword [esp+0x4], 0x7
	mov [esp], eax
	call Material_RegisterHandle
	mov edx, eax
	test eax, eax
	jz CG_AddAllPlayerSpriteDrawSurfs_90
	mov ecx, cg_scriptIconSize
	mov eax, [ecx]
	movss xmm0, dword [eax+0xc]
	mov eax, cg_constantSizeHeadIcons
	mov eax, [eax]
	movzx eax, byte [eax+0xc]
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	mov ecx, edx
	mov edx, ebx
	mov eax, [ebp+0x8]
	call CG_AddPlayerSpriteDrawSurf
	mov edx, cg_scriptIconSize
	mov eax, [edx]
	cvttss2si eax, [eax+0xc]
	lea edx, [eax+0x10]
	jmp CG_AddAllPlayerSpriteDrawSurfs_100
CG_AddAllPlayerSpriteDrawSurfs_50:
	mov eax, [ecx+0x5052c]
	test eax, eax
	jz CG_AddAllPlayerSpriteDrawSurfs_110
	mov eax, cg_youInKillCamSize
	mov eax, [eax]
	movss xmm0, dword [eax+0xc]
	mov eax, cgMedia
	mov ecx, [eax+0x10]
	mov dword [esp+0x4], 0x1
	mov [esp], edx
	mov edx, ebx
	mov eax, [ebp+0x8]
	call CG_AddPlayerSpriteDrawSurf
	jmp CG_AddAllPlayerSpriteDrawSurfs_30
CG_AddAllPlayerSpriteDrawSurfs_60:
	mov eax, cg_connectionIconSize
	mov eax, [eax]
	movss xmm0, dword [eax+0xc]
	mov eax, cgMedia
	mov ecx, [eax+0xc]
	mov dword [esp+0x4], 0x0
	mov [esp], edx
	mov edx, ebx
	mov eax, [ebp+0x8]
	call CG_AddPlayerSpriteDrawSurf
	jmp CG_AddAllPlayerSpriteDrawSurfs_30


;CG_Corpse(int, centity_s*)
CG_Corpse:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x15c
	mov esi, [ebp+0x8]
	mov edi, [ebp+0xc]
	add edi, 0xcc
	test byte [edi+0x8], 0x20
	jz CG_Corpse_10
CG_Corpse_20:
	add esp, 0x15c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_Corpse_10:
	mov eax, [ebp+0xc]
	mov ecx, [eax+0xcc]
	lea eax, [ecx+ecx*8]
	mov edx, eax
	shl edx, 0x4
	add eax, edx
	lea eax, [ecx+eax*2]
	mov edx, cgsArray
	lea edx, [edx+eax*4-0x11f3c]
	mov [ebp-0x13c], edx
	mov [esp+0x4], esi
	mov [esp], ecx
	call Com_GetClientDObj
	mov ebx, eax
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], eax
	lea edx, [ebp-0x12c]
	mov [esp], edx
	call FX_MarkEntUpdateBegin
	mov dword [esp+0x10], 0x0
	mov ecx, [ebp-0x13c]
	mov [esp+0xc], ecx
	mov [esp+0x8], edi
	mov [esp+0x4], ebx
	mov [esp], esi
	call BG_UpdatePlayerDObj
	mov [esp+0x4], esi
	mov edx, [ebp+0xc]
	mov eax, [edx+0xcc]
	mov [esp], eax
	call Com_GetClientDObj
	mov ebx, eax
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x0
	mov [esp+0xc], eax
	mov ecx, [ebp+0xc]
	mov eax, [ecx+0xcc]
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	lea eax, [ebp-0x12c]
	mov [esp], eax
	call FX_MarkEntUpdateEnd
	test ebx, ebx
	jz CG_Corpse_20
	mov edx, [ebp-0x13c]
	mov [esp+0x8], edx
	mov [esp+0x4], edi
	mov [esp], esi
	call BG_PlayerAnimation
	mov eax, [ebp+0xc]
	add eax, 0x1c
	mov ecx, [ebp+0xc]
	mov edx, [ecx+0x1c]
	mov [ebp-0x24], edx
	mov edx, [eax+0x4]
	mov [ebp-0x20], edx
	movss xmm0, dword [eax+0x8]
	movss [ebp-0x1c], xmm0
	mov eax, [edi+0x8]
	test al, 0x8
	jnz CG_Corpse_30
	test al, 0x4
	jz CG_Corpse_40
	addss xmm0, [_float_20_00000000]
	movss [ebp-0x1c], xmm0
	jmp CG_Corpse_50
CG_Corpse_30:
	addss xmm0, [_float_12_00000000]
	movss [ebp-0x1c], xmm0
CG_Corpse_50:
	mov dword [esp+0x14], 0x0
	lea eax, [ebp-0x24]
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x0
	mov eax, [edi]
	mov [esp+0x8], eax
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], ebx
	call R_AddDObjToScene
	add esp, 0x15c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_Corpse_40:
	addss xmm0, [_float_32_00000000]
	movss [ebp-0x1c], xmm0
	jmp CG_Corpse_50


;CG_Player(int, centity_s*)
CG_Player:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1dc
	mov esi, [ebp+0xc]
	lea edi, [esi+0xcc]
	mov eax, [edi+0x8]
	test al, 0x20
	jnz CG_Player_10
	test eax, 0x20000
	jnz CG_Player_10
	mov edx, [esi+0xcc]
	mov ecx, cgArray
	mov eax, [ecx+0x24]
	test byte [eax+0x20], 0x6
	jz CG_Player_20
	cmp edx, [eax+0xe8]
	jz CG_Player_30
CG_Player_20:
	xor eax, eax
CG_Player_130:
	test eax, eax
	jz CG_Player_40
	mov ebx, [ecx+0x46138]
	test ebx, ebx
	jz CG_Player_10
CG_Player_40:
	mov ebx, [edi+0x8c]
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov [esp], edx
	call Com_GetClientDObj
	mov [ebp-0x1a0], eax
	test eax, eax
	jz CG_Player_10
	lea eax, [ebx+ebx*8]
	mov edx, eax
	shl edx, 0x4
	add eax, edx
	lea eax, [ebx+eax*2]
	mov edx, cgArray
	mov [ebp-0x1a4], edx
	lea eax, [edx+eax*4+0xe9f34]
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call BG_PlayerAnimation
	test dword [edi+0x8], 0x300
	jnz CG_Player_50
CG_Player_100:
	lea ecx, [esi+0x1c]
	mov [ebp-0x1ac], ecx
	lea ebx, [esi+0x20]
	mov [ebp-0x1b0], ebx
	lea eax, [esi+0x24]
	mov [ebp-0x1b4], eax
CG_Player_120:
	mov [esp+0x4], esi
	mov ebx, [ebp-0x1a0]
	mov [esp], ebx
	call CG_Player_PreControllers
	mov dword [esp+0x4], _cstring_weapon_visibilit
	mov dword [esp], 0xffffffff
	call PIXBeginNamedEvent
	mov [esp+0x4], esi
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_UpdateWeaponVisibility
	mov eax, [esi+0x1c]
	mov [ebp-0x44], eax
	mov eax, [esi+0x20]
	mov [ebp-0x40], eax
	movss xmm0, dword [esi+0x24]
	movss [ebp-0x3c], xmm0
	mov eax, [edi+0x8]
	test al, 0x8
	jz CG_Player_60
	addss xmm0, [_float_12_00000000]
	movss [ebp-0x3c], xmm0
CG_Player_150:
	mov dword [esp+0x14], 0x0
	lea eax, [ebp-0x44]
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x4
	mov eax, [edi]
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov edx, [ebp-0x1a0]
	mov [esp], edx
	call R_AddDObjToScene
	test byte [edi+0xa], 0x2
	jnz CG_Player_10
	mov ecx, [ebp-0x1ac]
	mov eax, [ecx]
	mov [ebp-0x6c], eax
	mov ebx, [ebp-0x1b0]
	mov eax, [ebx]
	mov [ebp-0x68], eax
	mov edx, [ebp-0x1b4]
	mov eax, [edx]
	mov [ebp-0x64], eax
	lea ebx, [ebp-0x7c]
	mov [esp+0x4], ebx
	lea eax, [esi+0x28]
	mov [esp], eax
	call AnglesToQuat
	mov dword [ebp-0x60], 0x3f800000
	mov dword [esp+0x10], 0x1
	mov [esp+0xc], esi
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], ebx
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call CG_AddPlayerWeapon
	cmp byte [esi+0x1c0], 0x0
	jz CG_Player_10
	mov eax, cgArray
	mov eax, [eax+0x46218]
	cmp eax, [esi+0xcc]
	jz CG_Player_10
	mov [esp+0x4], esi
	mov ebx, [ebp+0x8]
	mov [esp], ebx
	call AimTarget_ProcessEntity
CG_Player_10:
	add esp, 0x1dc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_Player_50:
	mov ebx, [esi+0x140]
	cmp ebx, 0x3f
	jle CG_Player_70
	cmp ebx, 0x3ff
	jz CG_Player_80
	mov eax, [esi+0x158]
	lea edx, [eax+eax*8]
	mov ecx, edx
	shl ecx, 0x4
	add edx, ecx
	lea edx, [eax+edx*2]
	mov ecx, [ebp-0x1a4]
	lea eax, [ecx+edx*4+0xe9f30]
	lea edx, [eax+0x4]
	mov [ebp-0x18c], edx
	mov ecx, [eax+0x4]
	test ecx, ecx
	jz CG_Player_90
	add eax, 0x380
	mov [ebp-0x184], eax
	mov edx, [eax+0x10]
	test edx, edx
	jz CG_Player_100
	mov eax, [eax+0x14]
	test eax, eax
	jz CG_Player_70
	test byte [eax+0x50], 0x4
	jz CG_Player_80
	lea eax, [ebx*4]
	mov edx, ebx
	shl edx, 0x5
	sub edx, eax
	mov eax, edx
	shl eax, 0x4
	add edx, eax
	mov ebx, cg_entitiesArray
	add edx, ebx
	mov [ebp-0x188], edx
	cmp byte [edx+0x1c0], 0x0
	jnz CG_Player_110
CG_Player_90:
	lea ebx, [esi+0x1c]
	mov [ebp-0x1ac], ebx
	lea eax, [esi+0x20]
	mov [ebp-0x1b0], eax
	lea edx, [esi+0x24]
	mov [ebp-0x1b4], edx
	jmp CG_Player_120
CG_Player_30:
	mov eax, 0x1
	jmp CG_Player_130
CG_Player_60:
	test al, 0x4
	jz CG_Player_140
	addss xmm0, [_float_20_00000000]
	movss [ebp-0x3c], xmm0
	jmp CG_Player_150
CG_Player_70:
	lea edx, [esi+0x1c]
	mov [ebp-0x1ac], edx
	lea ecx, [esi+0x20]
	mov [ebp-0x1b0], ecx
	lea ebx, [esi+0x24]
	mov [ebp-0x1b4], ebx
	jmp CG_Player_120
CG_Player_140:
	addss xmm0, [_float_32_00000000]
	movss [ebp-0x3c], xmm0
	jmp CG_Player_150
CG_Player_160:
	mov dword [esp+0x4], _cstring_warning_aborting
	mov dword [esp], 0x11
	call Com_PrintWarning
CG_Player_80:
	lea eax, [esi+0x1c]
	mov [ebp-0x1ac], eax
	lea edx, [esi+0x20]
	mov [ebp-0x1b0], edx
	lea ecx, [esi+0x24]
	mov [ebp-0x1b4], ecx
	jmp CG_Player_120
CG_Player_110:
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov eax, [edx+0xcc]
	mov [esp], eax
	call Com_GetClientDObj
	mov ebx, eax
	test eax, eax
	jz CG_Player_100
	mov edx, [ebp+0x8]
	mov [esp+0x4], edx
	mov eax, [esi+0xcc]
	mov [esp], eax
	call Com_GetClientDObj
	mov [ebp-0x14c], eax
	test eax, eax
	jz CG_Player_70
	lea eax, [ebp-0x38]
	mov [esp+0x10], eax
	lea ecx, [ebp-0xa0]
	mov [esp+0xc], ecx
	mov eax, scr_const
	movzx eax, word [eax+0xa6]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov ebx, [ebp-0x188]
	mov [esp], ebx
	call CG_DObjGetWorldTagMatrix
	test eax, eax
	jz CG_Player_160
	mov eax, [ebp-0x1a4]
	mov eax, [eax+0x46124]
	test eax, eax
	jz CG_Player_80
	mov edx, [ebp-0x188]
	mov eax, [edx+0x190]
	mov [esp], eax
	call BG_GetWeaponDef
	mov [ebp-0x180], eax
	mov ecx, [ebp-0x18c]
	mov ecx, [ecx+0x4a8]
	mov [ebp-0x164], ecx
	mov ebx, [ebp-0x1a4]
	mov ebx, [ebx+0xe9ee8]
	mov [ebp-0x160], ebx
	mov eax, [ebp-0x184]
	mov edx, [eax+0x10]
	and dh, 0xfd
	mov [ebp-0x15c], edx
	lea ecx, [ebp-0xa0]
	mov [esp], ecx
	call vectosignedyaw
	fstp dword [ebp-0x148]
	movss xmm1, dword [ebp-0x148]
	mov ebx, [ebp-0x188]
	subss xmm1, [ebx+0x2c]
	mulss xmm1, [_float_0_00277778]
	movaps xmm0, xmm1
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	movss [ebp-0x1c8], xmm1
	call floorf
	fstp dword [ebp-0x1a8]
	movss xmm1, dword [ebp-0x1c8]
	subss xmm1, [ebp-0x1a8]
	mulss xmm1, [_float_360_00000000]
	movss [ebp-0x17c], xmm1
	lea eax, [ebp-0x12c]
	mov [esp+0x4], eax
	mov eax, ebx
	add eax, 0x28
	mov [esp], eax
	call AnglesToAxis
	mov edx, ebx
	add edx, 0x1c
	mov eax, [ebx+0x1c]
	mov [ebp-0x108], eax
	mov eax, [edx+0x4]
	mov [ebp-0x104], eax
	mov eax, [edx+0x8]
	mov [ebp-0x100], eax
	lea eax, [esi+0x1c]
	mov [ebp-0x1ac], eax
	lea edx, [esi+0x20]
	mov [ebp-0x1b0], edx
	lea ecx, [esi+0x24]
	mov [ebp-0x1b4], ecx
	movss xmm0, dword [esi+0x1c]
	subss xmm0, [ebp-0x108]
	mulss xmm0, [ebp-0x114]
	movss [ebp-0x168], xmm0
	movss xmm0, dword [esi+0x20]
	subss xmm0, [ebp-0x104]
	mulss xmm0, [ebp-0x110]
	addss xmm0, [ebp-0x168]
	movss [ebp-0x168], xmm0
	movss xmm0, dword [esi+0x24]
	subss xmm0, [ebp-0x100]
	mulss xmm0, [ebp-0x10c]
	addss xmm0, [ebp-0x168]
	movss [ebp-0x168], xmm0
	movss xmm0, dword [ebp-0x30]
	subss xmm0, [ebp-0x100]
	movss xmm1, dword [ebp-0x168]
	subss xmm1, xmm0
	movss [ebp-0x178], xmm1
	mov eax, [ebp-0x15c]
	mov [esp+0x4], eax
	mov edx, [ebp-0x160]
	mov [esp], edx
	call XAnimGetNumChildren
	mov [ebp-0x194], eax
	test eax, eax
	jz CG_Player_170
CG_Player_320:
	mov eax, [ebp-0x194]
	sub eax, 0x1
	mov [ebp-0x144], eax
	pxor xmm0, xmm0
	movss [ebp-0x170], xmm0
	movss [ebp-0x140], xmm0
	mov dword [ebp-0x190], 0x0
	mov dword [ebp-0x154], 0x0
	mov dword [ebp-0x198], 0x0
	jmp CG_Player_180
CG_Player_240:
	cvttss2si ebx, xmm1
CG_Player_250:
	cvtsi2ss xmm0, ebx
	subss xmm1, xmm0
	movss [ebp-0x13c], xmm1
	mov [esp+0x8], ebx
	mov eax, [ebp-0x150]
	mov [esp+0x4], eax
	mov edx, [ebp-0x160]
	mov [esp], edx
	call XAnimGetChildAt
	mov [ebp-0x158], eax
	mov dword [esp+0x10], 0x0
	lea ecx, [ebp-0x2c]
	mov [esp+0xc], ecx
	lea eax, [ebp-0x20]
	mov [esp+0x8], eax
	mov edx, [ebp-0x158]
	mov [esp+0x4], edx
	mov ecx, [ebp-0x160]
	mov [esp], ecx
	call XAnimGetAbsDelta
	movss xmm0, dword [ebp-0x13c]
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jp CG_Player_190
	jnz CG_Player_190
	movss xmm1, dword [ebp-0x24]
CG_Player_270:
	movss [ebp-0x174], xmm1
	ucomiss xmm1, [ebp-0x178]
	jae CG_Player_200
	add dword [ebp-0x198], 0x1
	sub dword [ebp-0x144], 0x1
	mov ecx, [ebp-0x198]
	cmp [ebp-0x194], ecx
	jle CG_Player_210
	movss [ebp-0x140], xmm1
	movss xmm0, dword [ebp-0x13c]
	movss [ebp-0x170], xmm0
	mov [ebp-0x190], ebx
CG_Player_180:
	mov eax, [ebp-0x144]
	mov [esp+0x8], eax
	mov edx, [ebp-0x15c]
	mov [esp+0x4], edx
	mov ecx, [ebp-0x160]
	mov [esp], ecx
	call XAnimGetChildAt
	mov [ebp-0x150], eax
	mov [esp+0x4], eax
	mov ebx, [ebp-0x160]
	mov [esp], ebx
	call XAnimGetNumChildren
	mov ebx, eax
	test eax, eax
	jz CG_Player_220
CG_Player_260:
	cvtsi2ss xmm1, ebx
	mulss xmm1, [_float_0_50000000]
	movss xmm0, dword [ebp-0x17c]
	mov ecx, [ebp-0x180]
	divss xmm0, dword [ecx+0x7d4]
	addss xmm1, xmm0
	pxor xmm0, xmm0
	ucomiss xmm0, xmm1
	ja CG_Player_230
	lea eax, [ebx-0x1]
	cvtsi2ss xmm0, eax
	ucomiss xmm1, xmm0
	jb CG_Player_240
	cvttss2si ebx, xmm0
	movaps xmm1, xmm0
	jmp CG_Player_250
CG_Player_220:
	mov eax, [ebp-0x150]
	mov [esp+0x4], eax
	mov edx, [ebp-0x160]
	mov [esp], edx
	call XAnimGetAnimDebugName
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_player_anim_s_ha
	mov dword [esp], 0x2
	call Com_Error
	jmp CG_Player_260
CG_Player_190:
	lea eax, [ebx+0x1]
	mov [esp+0x8], eax
	mov eax, [ebp-0x150]
	mov [esp+0x4], eax
	mov edx, [ebp-0x160]
	mov [esp], edx
	call XAnimGetChildAt
	mov [ebp-0x154], eax
	mov dword [esp+0x10], 0x0
	lea eax, [ebp-0x7c]
	mov [esp+0xc], eax
	lea ecx, [ebp-0x20]
	mov [esp+0x8], ecx
	mov eax, [ebp-0x154]
	mov [esp+0x4], eax
	mov edx, [ebp-0x160]
	mov [esp], edx
	call XAnimGetAbsDelta
	movss xmm1, dword [ebp-0x2c]
	movss xmm0, dword [ebp-0x7c]
	subss xmm0, xmm1
	mulss xmm0, [ebp-0x13c]
	addss xmm1, xmm0
	movss [ebp-0x2c], xmm1
	movss xmm1, dword [ebp-0x28]
	movss xmm0, dword [ebp-0x78]
	subss xmm0, xmm1
	mulss xmm0, [ebp-0x13c]
	addss xmm1, xmm0
	movss [ebp-0x28], xmm1
	movss xmm1, dword [ebp-0x24]
	movss xmm0, dword [ebp-0x74]
	subss xmm0, xmm1
	mulss xmm0, [ebp-0x13c]
	addss xmm1, xmm0
	movss [ebp-0x24], xmm1
	jmp CG_Player_270
CG_Player_210:
	movss xmm0, dword [ebp-0x13c]
	movss [ebp-0x170], xmm0
	mov [ebp-0x190], ebx
CG_Player_330:
	mov dword [esp+0x8], 0x0
	mov eax, [ebp-0x15c]
	mov [esp+0x4], eax
	mov edx, [ebp-0x164]
	mov [esp], edx
	call XAnimClearTreeGoalWeightsStrict
	mov dword [esp+0x1c], 0x0
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x3f800000
	mov dword [esp+0xc], 0x0
	movss xmm0, dword [_float_1_00000000]
	subss xmm0, [ebp-0x13c]
	movss [esp+0x8], xmm0
	mov ecx, [ebp-0x158]
	mov [esp+0x4], ecx
	mov ebx, [ebp-0x14c]
	mov [esp], ebx
	call XAnimSetGoalWeight
	movss xmm0, dword [ebp-0x13c]
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jp CG_Player_280
	jnz CG_Player_280
CG_Player_310:
	mov eax, [ebp-0x198]
	test eax, eax
	jz CG_Player_290
	mov edx, [ebp-0x194]
	cmp [ebp-0x198], edx
	jnz CG_Player_300
CG_Player_290:
	mov dword [esp+0x1c], 0x0
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0x0
	mov eax, 0x3f800000
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x0
	mov [esp+0x8], eax
	mov ecx, [ebp-0x150]
	mov [esp+0x4], ecx
	mov ebx, [ebp-0x14c]
	mov [esp], ebx
	call XAnimSetGoalWeight
CG_Player_350:
	lea edx, [ebp-0x2c]
	mov [esp+0xc], edx
	lea ecx, [ebp-0x20]
	mov [esp+0x8], ecx
	mov ebx, [ebp-0x15c]
	mov [esp+0x4], ebx
	mov eax, [ebp-0x14c]
	mov [esp], eax
	call XAnimCalcAbsDelta
	movss xmm0, dword [ebp-0x148]
	movss [esp+0x4], xmm0
	lea eax, [ebp-0x2c]
	mov [esp], eax
	call VectorAngleMultiply
	movss xmm0, dword [ebp-0x2c]
	addss xmm0, [ebp-0x38]
	movss [ebp-0xd8], xmm0
	lea ebx, [ebp-0xfc]
	movss xmm0, dword [ebp-0x28]
	addss xmm0, [ebp-0x34]
	movss [ebp-0xd4], xmm0
	movss xmm0, dword [ebp-0x168]
	addss xmm0, [ebp-0x100]
	movss [ebp-0xd0], xmm0
	lea eax, [ebp-0x20]
	mov [esp], eax
	call RotationToYaw
	fstp dword [ebp-0x19c]
	mov [esp+0x4], ebx
	movss xmm0, dword [ebp-0x148]
	addss xmm0, [ebp-0x19c]
	movss [esp], xmm0
	call YawToAxis
	lea eax, [esi+0x28]
	mov [esp+0x4], eax
	mov [esp], ebx
	call AxisToAngles
	mov edx, [ebp-0xd8]
	mov eax, [ebp-0x1ac]
	mov [eax], edx
	mov eax, [ebp-0xd4]
	mov ecx, [ebp-0x1ac]
	mov [ecx+0x4], eax
	mov eax, [ebp-0xd0]
	mov [ecx+0x8], eax
	mov [ebp-0x5c], edx
	mov ebx, [ebp-0x1b0]
	mov eax, [ebx]
	mov [ebp-0x58], eax
	mov ebx, [ebp-0x1b4]
	mov ecx, [ebx]
	mov [ebp-0x54], ecx
	mov [ebp-0x50], edx
	mov [ebp-0x4c], eax
	mov [ebp-0x48], ecx
	mov edx, [ebp-0x188]
	mov eax, [edx+0x24]
	mov [ebp-0x54], eax
	mov dword [esp+0x18], 0x2810011
	mov eax, [esi+0xcc]
	mov [esp+0x14], eax
	lea eax, [ebp-0x50]
	mov [esp+0x10], eax
	mov eax, vec3_origin
	mov [esp+0xc], eax
	mov [esp+0x8], eax
	lea eax, [ebp-0x5c]
	mov [esp+0x4], eax
	lea eax, [ebp-0xcc]
	mov [esp], eax
	call CG_TraceCapsule
	movss xmm2, dword [ebp-0xcc]
	ucomiss xmm2, [_float_1_00000000]
	jae CG_Player_120
	jp CG_Player_120
	movss xmm1, dword [ebp-0x54]
	movss xmm0, dword [ebp-0x48]
	subss xmm0, xmm1
	mulss xmm2, xmm0
	addss xmm1, xmm2
	movss [esi+0x24], xmm1
	jmp CG_Player_120
CG_Player_230:
	pxor xmm1, xmm1
	xor ebx, ebx
	jmp CG_Player_250
CG_Player_280:
	mov dword [esp+0x1c], 0x0
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x3f800000
	mov dword [esp+0xc], 0x0
	movss [esp+0x8], xmm0
	mov eax, [ebp-0x154]
	mov [esp+0x4], eax
	mov [esp], ebx
	call XAnimSetGoalWeight
	jmp CG_Player_310
CG_Player_170:
	mov ecx, [ebp-0x15c]
	mov [esp+0x4], ecx
	mov ebx, [ebp-0x160]
	mov [esp], ebx
	call XAnimGetAnimDebugName
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_player_anim_s_ha
	mov dword [esp], 0x2
	call Com_Error
	jmp CG_Player_320
CG_Player_200:
	movss xmm1, dword [ebp-0x140]
	movss [ebp-0x174], xmm1
	jmp CG_Player_330
CG_Player_300:
	movss xmm0, dword [ebp-0x178]
	subss xmm0, [ebp-0x174]
	movss [ebp-0x16c], xmm0
	movss xmm0, dword [ebp-0x24]
	subss xmm0, [ebp-0x174]
	movss xmm1, dword [ebp-0x16c]
	divss xmm1, xmm0
	movss [ebp-0x16c], xmm1
	mov dword [esp+0x1c], 0x0
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x3f800000
	mov dword [esp+0xc], 0x0
	movss [esp+0x8], xmm1
	mov eax, [ebp-0x150]
	mov [esp+0x4], eax
	mov edx, [ebp-0x14c]
	mov [esp], edx
	call XAnimSetGoalWeight
	mov ecx, [ebp-0x198]
	sub [ebp-0x194], ecx
	mov ebx, [ebp-0x194]
	mov [esp+0x8], ebx
	mov eax, [ebp-0x15c]
	mov [esp+0x4], eax
	mov edx, [ebp-0x160]
	mov [esp], edx
	call XAnimGetChildAt
	mov ebx, eax
	mov dword [esp+0x1c], 0x0
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x3f800000
	mov dword [esp+0xc], 0x0
	movss xmm0, dword [_float_1_00000000]
	subss xmm0, [ebp-0x16c]
	movss [esp+0x8], xmm0
	mov [esp+0x4], eax
	mov ecx, [ebp-0x14c]
	mov [esp], ecx
	call XAnimSetGoalWeight
	mov eax, [ebp-0x190]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov edx, [ebp-0x160]
	mov [esp], edx
	call XAnimGetChildAt
	mov dword [esp+0x1c], 0x0
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x3f800000
	mov dword [esp+0xc], 0x0
	movss xmm0, dword [_float_1_00000000]
	subss xmm0, [ebp-0x170]
	movss [esp+0x8], xmm0
	mov [esp+0x4], eax
	mov ecx, [ebp-0x14c]
	mov [esp], ecx
	call XAnimSetGoalWeight
	movss xmm0, dword [ebp-0x170]
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jp CG_Player_340
	jz CG_Player_350
CG_Player_340:
	mov eax, [ebp-0x190]
	add eax, 0x1
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov eax, [ebp-0x160]
	mov [esp], eax
	call XAnimGetChildAt
	mov dword [esp+0x1c], 0x0
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x3f800000
	mov dword [esp+0xc], 0x0
	movss xmm0, dword [ebp-0x170]
	movss [esp+0x8], xmm0
	mov [esp+0x4], eax
	mov eax, [ebp-0x14c]
	mov [esp], eax
	call XAnimSetGoalWeight
	jmp CG_Player_350


;Initialized global or static variables of cg_players_mp:
SECTION .data


;Initialized constant data of cg_players_mp:
SECTION .rdata


;Zero initialized global or static variables of cg_players_mp:
SECTION .bss


;All cstrings:
SECTION .rdata
_cstring_null:		db 0
_cstring_team_axis:		db "TEAM_AXIS",0
_cstring_team_allies:		db "TEAM_ALLIES",0
_cstring_team_spectator:		db "TEAM_SPECTATOR",0
_cstring_team_free:		db "TEAM_FREE",0
_cstring_i_resetplayerent:		db "%i ResetPlayerEntity yaw=%i",0ah,0
_cstring_weapon_visibilit:		db "weapon visibility",0
_cstring_warning_aborting:		db "WARNING: aborting player positioning on turret since ",27h,"tag_weapon",27h," does not exist",0ah,0
_cstring_player_anim_s_ha:		db 015h,"Player anim ",27h,"%s",27h," has no children",0



;All constant floats and doubles:
SECTION .rdata
_float_10_00000000:		dd 0x41200000	; 10
_float_82_00000000:		dd 0x42a40000	; 82
_float_0_00430000:		dd 0x3b8ce704	; 0.0043
_float_21_00000000:		dd 0x41a80000	; 21
_float_3_00000000:		dd 0x40400000	; 3
_float_1_00000000:		dd 0x3f800000	; 1
_float_20_00000000:		dd 0x41a00000	; 20
_float_12_00000000:		dd 0x41400000	; 12
_float_32_00000000:		dd 0x42000000	; 32
_float_0_00277778:		dd 0x3b360b61	; 0.00277778
_float_0_50000000:		dd 0x3f000000	; 0.5
_float_360_00000000:		dd 0x43b40000	; 360

