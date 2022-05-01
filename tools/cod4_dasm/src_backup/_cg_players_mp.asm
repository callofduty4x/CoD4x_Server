;Imports of cg_players_mp:
	extern cgArray
	extern _Z17Com_GetClientDObjii
	extern scr_const
	extern _Z21CG_DObjGetWorldTagPosPK7cpose_tP6DObj_sjPf
	extern cg_headIconMinScreenRadius
	extern _Z12FX_SpriteAddP8FxSprite
	extern clientUIActives
	extern _Z21FX_MarkEntUpdateBeginP23FxMarkDObjUpdateContextP6DObj_sht
	extern _Z19BG_UpdatePlayerDObjiP6DObj_sP13entityState_sP12clientInfo_ti
	extern _Z19FX_MarkEntUpdateEndP23FxMarkDObjUpdateContextiiP6DObj_sht
	extern cg_debugPosition
	extern _Z10Com_PrintfiPKcz
	extern _Z25XAnimClearTreeGoalWeightsP11XAnimTree_sjf
	extern _Z26XAnimSetCompleteGoalWeightP6DObj_sjfffjji
	extern _Z16BG_ClipForWeaponi
	extern _Z15BG_GetWeaponDefj
	extern _Z19BG_IsKnifeMeleeAnimPK12clientInfo_ti
	extern useFastFile
	extern _Z9XModelBadPK6XModel
	extern _Z22CG_GetWeaponAttachBoneP12clientInfo_t10weapType_t
	extern _Z16DObjGetBoneIndexPK6DObj_sjPh
	extern _Z25CG_DObjGetWorldBoneMatrixPK7cpose_tP6DObj_siPA3_fPf
	extern _Z15XModelGetBoundsPK6XModelPfS2_
	extern _Z17XModelGetBasePosePK6XModel
	extern vec3_origin
	extern _Z15CG_TraceCapsuleP7trace_tPKfS2_S2_S2_ii
	extern cg_entitiesArray
	extern cg_voiceIconSize
	extern cgMedia
	extern _Z18CL_GetConfigStringii
	extern _Z23Material_RegisterHandlePKci
	extern cg_scriptIconSize
	extern cg_constantSizeHeadIcons
	extern cg_youInKillCamSize
	extern cg_connectionIconSize
	extern cgsArray
	extern _Z18BG_PlayerAnimationiPK13entityState_sP12clientInfo_t
	extern _Z16R_AddDObjToScenePK6DObj_sPK7cpose_tjjPff
	extern _Z24CG_Player_PreControllersP6DObj_sP9centity_s
	extern _Z18PIXBeginNamedEventiPKcz
	extern _Z12AnglesToQuatPKfPf
	extern _Z18CG_AddPlayerWeaponiPK18GfxScaledPlacementPK13playerState_sP9centity_si
	extern _Z23AimTarget_ProcessEntityiPK9centity_s
	extern _Z16Com_PrintWarningiPKcz
	extern _Z24CG_DObjGetWorldTagMatrixPK7cpose_tP6DObj_sjPA3_fPf
	extern _Z14vectosignedyawPKf
	extern floorf
	extern _Z12AnglesToAxisPKfPA3_f
	extern _Z19XAnimGetNumChildrenPK7XAnim_sj
	extern _Z15XAnimGetChildAtPK7XAnim_sjj
	extern _Z16XAnimGetAbsDeltaPK7XAnim_sjPfS2_f
	extern _Z21XAnimGetAnimDebugNamePK7XAnim_sj
	extern _Z9Com_Error11errorParm_tPKcz
	extern _Z31XAnimClearTreeGoalWeightsStrictP11XAnimTree_sjf
	extern _Z18XAnimSetGoalWeightP6DObj_sjfffjji
	extern _Z17XAnimCalcAbsDeltaP6DObj_sjPfS1_
	extern _Z19VectorAngleMultiplyPff
	extern _Z13RotationToYawPKf
	extern _Z9YawToAxisfPA3_f
	extern _Z12AxisToAnglesPA3_KfPf

;Exports of cg_players_mp:
	global _Z26CG_AddPlayerSpriteDrawSurfiPK9centity_sP8Materialfih
	global _Z14CG_GetTeamName6team_t
	global _Z15CG_IsPlayerDeadi
	global _Z19CG_UpdatePlayerDObjiP9centity_s
	global _Z20CG_GetPlayerTeamNamei
	global _Z20CG_ResetPlayerEntityiP4cg_sP9centity_si
	global _Z25CG_GetPlayerClipAmmoCounti
	global _Z25CG_UpdateWeaponVisibilityiP9centity_s
	global _Z28CG_GetPlayerOpposingTeamNamei
	global _Z30CG_AddAllPlayerSpriteDrawSurfsi
	global _Z9CG_CorpseiP9centity_s
	global _Z9CG_PlayeriP9centity_s


SECTION .text


;CG_AddPlayerSpriteDrawSurf(int, centity_s const*, Material*, float, int, unsigned char)
_Z26CG_AddPlayerSpriteDrawSurfiPK9centity_sP8Materialfih:
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
	jz _Z26CG_AddPlayerSpriteDrawSurfiPK9centity_sP8Materialfih_10
	cmp esi, [edx+0xe8]
	jz _Z26CG_AddPlayerSpriteDrawSurfiPK9centity_sP8Materialfih_20
_Z26CG_AddPlayerSpriteDrawSurfiPK9centity_sP8Materialfih_10:
	xor edx, edx
_Z26CG_AddPlayerSpriteDrawSurfiPK9centity_sP8Materialfih_100:
	test edx, edx
	jz _Z26CG_AddPlayerSpriteDrawSurfiPK9centity_sP8Materialfih_30
	mov eax, [eax+0x46138]
	test eax, eax
	jz _Z26CG_AddPlayerSpriteDrawSurfiPK9centity_sP8Materialfih_40
_Z26CG_AddPlayerSpriteDrawSurfiPK9centity_sP8Materialfih_30:
	test cl, cl
	jnz _Z26CG_AddPlayerSpriteDrawSurfiPK9centity_sP8Materialfih_50
	addss xmm0, [_float_10_00000000]
	movss [ebp-0x4c], xmm0
	mov dword [ebp-0x50], 0x0
_Z26CG_AddPlayerSpriteDrawSurfiPK9centity_sP8Materialfih_80:
	mov [esp+0x4], edi
	mov [esp], esi
	call _Z17Com_GetClientDObjii
	mov edx, eax
	test eax, eax
	jz _Z26CG_AddPlayerSpriteDrawSurfiPK9centity_sP8Materialfih_60
	lea eax, [ebp-0x24]
	mov [esp+0xc], eax
	mov eax, scr_const
	movzx eax, word [eax+0x130]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov [esp], ebx
	call _Z21CG_DObjGetWorldTagPosPK7cpose_tP6DObj_sjPf
	test eax, eax
	jnz _Z26CG_AddPlayerSpriteDrawSurfiPK9centity_sP8Materialfih_70
_Z26CG_AddPlayerSpriteDrawSurfiPK9centity_sP8Materialfih_60:
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
_Z26CG_AddPlayerSpriteDrawSurfiPK9centity_sP8Materialfih_90:
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
	call _Z12FX_SpriteAddP8FxSprite
_Z26CG_AddPlayerSpriteDrawSurfiPK9centity_sP8Materialfih_40:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z26CG_AddPlayerSpriteDrawSurfiPK9centity_sP8Materialfih_50:
	addss xmm0, [_float_10_00000000]
	mulss xmm0, [_float_0_00430000]
	movss [ebp-0x4c], xmm0
	mov dword [ebp-0x50], 0x3
	jmp _Z26CG_AddPlayerSpriteDrawSurfiPK9centity_sP8Materialfih_80
_Z26CG_AddPlayerSpriteDrawSurfiPK9centity_sP8Materialfih_70:
	cvtsi2ss xmm0, dword [ebp+0x8]
	addss xmm0, [_float_21_00000000]
	addss xmm0, [ebp-0x1c]
	movss [ebp-0x1c], xmm0
	jmp _Z26CG_AddPlayerSpriteDrawSurfiPK9centity_sP8Materialfih_90
_Z26CG_AddPlayerSpriteDrawSurfiPK9centity_sP8Materialfih_20:
	mov edx, 0x1
	jmp _Z26CG_AddPlayerSpriteDrawSurfiPK9centity_sP8Materialfih_100
	nop


;CG_GetTeamName(team_t)
_Z14CG_GetTeamName6team_t:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	cmp eax, 0x1
	jz _Z14CG_GetTeamName6team_t_10
	jle _Z14CG_GetTeamName6team_t_20
	cmp eax, 0x2
	jz _Z14CG_GetTeamName6team_t_30
	cmp eax, 0x3
	jz _Z14CG_GetTeamName6team_t_40
_Z14CG_GetTeamName6team_t_50:
	mov eax, _cstring_null
	pop ebp
	ret
_Z14CG_GetTeamName6team_t_10:
	mov eax, _cstring_team_axis
	pop ebp
	ret
_Z14CG_GetTeamName6team_t_30:
	mov eax, _cstring_team_allies
	pop ebp
	ret
_Z14CG_GetTeamName6team_t_40:
	mov eax, _cstring_team_spectator
	pop ebp
	ret
_Z14CG_GetTeamName6team_t_20:
	test eax, eax
	jnz _Z14CG_GetTeamName6team_t_50
	mov eax, _cstring_team_free
	pop ebp
	ret


;CG_IsPlayerDead(int)
_Z15CG_IsPlayerDeadi:
	push ebp
	mov ebp, esp
	mov eax, clientUIActives
	cmp dword [eax+0xc], 0x7
	jle _Z15CG_IsPlayerDeadi_10
	mov eax, cgArray
	mov eax, [eax+0x24]
	mov edx, [eax+0x154]
	test edx, edx
	jnz _Z15CG_IsPlayerDeadi_20
_Z15CG_IsPlayerDeadi_30:
	mov eax, 0x1
	pop ebp
	ret
_Z15CG_IsPlayerDeadi_20:
	mov eax, [eax+0x20]
	test al, 0x4
	jz _Z15CG_IsPlayerDeadi_30
	test al, 0x2
	jnz _Z15CG_IsPlayerDeadi_30
_Z15CG_IsPlayerDeadi_10:
	xor eax, eax
	pop ebp
	ret


;CG_UpdatePlayerDObj(int, centity_s*)
_Z19CG_UpdatePlayerDObjiP9centity_s:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x13c
	mov edi, [ebp+0x8]
	mov eax, [ebp+0xc]
	cmp byte [eax+0x1c0], 0x0
	jz _Z19CG_UpdatePlayerDObjiP9centity_s_10
	lea ebx, [eax+0xcc]
	mov [esp+0x4], edi
	mov eax, [ebx+0x8c]
	mov [esp], eax
	call _Z17Com_GetClientDObjii
	mov esi, eax
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], eax
	lea eax, [ebp-0x120]
	mov [esp], eax
	call _Z21FX_MarkEntUpdateBeginP23FxMarkDObjUpdateContextP6DObj_sht
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
	call _Z19BG_UpdatePlayerDObjiP6DObj_sP13entityState_sP12clientInfo_ti
	mov [esp+0x4], edi
	mov eax, [ebx+0x8c]
	mov [esp], eax
	call _Z17Com_GetClientDObjii
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x0
	mov [esp+0xc], eax
	mov eax, [ebx+0x8c]
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	lea eax, [ebp-0x120]
	mov [esp], eax
	call _Z19FX_MarkEntUpdateEndP23FxMarkDObjUpdateContextiiP6DObj_sht
_Z19CG_UpdatePlayerDObjiP9centity_s_10:
	add esp, 0x13c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;CG_GetPlayerTeamName(int)
_Z20CG_GetPlayerTeamNamei:
	push ebp
	mov ebp, esp
	push ebx
	mov eax, clientUIActives
	cmp dword [eax+0xc], 0x7
	jle _Z20CG_GetPlayerTeamNamei_10
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
	jz _Z20CG_GetPlayerTeamNamei_10
	mov eax, [edx+0x1c]
	cmp eax, 0x1
	jz _Z20CG_GetPlayerTeamNamei_20
	jle _Z20CG_GetPlayerTeamNamei_30
	cmp eax, 0x2
	jz _Z20CG_GetPlayerTeamNamei_40
	cmp eax, 0x3
	jz _Z20CG_GetPlayerTeamNamei_50
_Z20CG_GetPlayerTeamNamei_60:
	mov eax, _cstring_null
	pop ebx
	pop ebp
	ret
_Z20CG_GetPlayerTeamNamei_30:
	test eax, eax
	jnz _Z20CG_GetPlayerTeamNamei_60
_Z20CG_GetPlayerTeamNamei_10:
	mov eax, _cstring_team_free
	pop ebx
	pop ebp
	ret
_Z20CG_GetPlayerTeamNamei_40:
	mov eax, _cstring_team_allies
	pop ebx
	pop ebp
	ret
_Z20CG_GetPlayerTeamNamei_50:
	mov eax, _cstring_team_spectator
	pop ebx
	pop ebp
	ret
_Z20CG_GetPlayerTeamNamei_20:
	mov eax, _cstring_team_axis
	pop ebx
	pop ebp
	ret
	nop


;CG_ResetPlayerEntity(int, cg_s*, centity_s*, int)
_Z20CG_ResetPlayerEntityiP4cg_sP9centity_si:
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
	jnz _Z20CG_ResetPlayerEntityiP4cg_sP9centity_si_10
	mov eax, [ebp+0x14]
	test eax, eax
	jnz _Z20CG_ResetPlayerEntityiP4cg_sP9centity_si_20
_Z20CG_ResetPlayerEntityiP4cg_sP9centity_si_10:
	mov eax, cg_debugPosition
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z20CG_ResetPlayerEntityiP4cg_sP9centity_si_30
	cvtss2sd xmm0, [ebx+0x3ac]
	movsd [esp+0xc], xmm0
	mov eax, [esi]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_i_resetplayerent
	mov dword [esp], 0x11
	call _Z10Com_PrintfiPKcz
_Z20CG_ResetPlayerEntityiP4cg_sP9centity_si_30:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z20CG_ResetPlayerEntityiP4cg_sP9centity_si_20:
	mov ecx, [ebx+0x4a8]
	mov [ebp-0x1c], ecx
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov eax, [edi+0xcc]
	mov [esp], eax
	call _Z17Com_GetClientDObjii
	mov edi, eax
	test eax, eax
	jz _Z20CG_ResetPlayerEntityiP4cg_sP9centity_si_10
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov edx, [ebp-0x1c]
	mov [esp], edx
	call _Z25XAnimClearTreeGoalWeightsP11XAnimTree_sjf
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
	call _Z26XAnimSetCompleteGoalWeightP6DObj_sjfffjji
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
	call _Z26XAnimSetCompleteGoalWeightP6DObj_sjfffjji
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
	call _Z26XAnimSetCompleteGoalWeightP6DObj_sjfffjji
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
	jmp _Z20CG_ResetPlayerEntityiP4cg_sP9centity_si_10


;CG_GetPlayerClipAmmoCount(int)
_Z25CG_GetPlayerClipAmmoCounti:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, cgArray
	mov ebx, [eax+0x24]
	add ebx, 0xc
	mov eax, [ebx+0xe8]
	mov [esp], eax
	call _Z16BG_ClipForWeaponi
	mov eax, [ebx+eax*4+0x35c]
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;CG_UpdateWeaponVisibility(int, centity_s*)
_Z25CG_UpdateWeaponVisibilityiP9centity_s:
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
	jnz _Z25CG_UpdateWeaponVisibilityiP9centity_s_10
_Z25CG_UpdateWeaponVisibilityiP9centity_s_40:
	add esp, 0xec
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z25CG_UpdateWeaponVisibilityiP9centity_s_10:
	mov [esp], eax
	call _Z15BG_GetWeaponDefj
	mov esi, eax
	movzx eax, byte [ebx+0x4b0]
	mov eax, [esi+eax*4+0x2bc]
	mov [ebp-0xbc], eax
	mov eax, [esi+0x308]
	test eax, eax
	jz _Z25CG_UpdateWeaponVisibilityiP9centity_s_20
	mov edx, [ebp+0xc]
	mov eax, [edx+0x19c]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z19BG_IsKnifeMeleeAnimPK12clientInfo_ti
	test eax, eax
	jz _Z25CG_UpdateWeaponVisibilityiP9centity_s_20
	cmp byte [ebx+0x4c9], 0x0
	jnz _Z25CG_UpdateWeaponVisibilityiP9centity_s_30
	mov byte [ebx+0x4c9], 0x1
	mov dword [ebx+0x3f4], 0x1
_Z25CG_UpdateWeaponVisibilityiP9centity_s_30:
	mov eax, [ebp-0xbc]
	test eax, eax
	jz _Z25CG_UpdateWeaponVisibilityiP9centity_s_40
	mov eax, useFastFile
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z25CG_UpdateWeaponVisibilityiP9centity_s_50
	mov eax, [ebp-0xbc]
	mov [esp], eax
	call _Z9XModelBadPK6XModel
	test eax, eax
	jnz _Z25CG_UpdateWeaponVisibilityiP9centity_s_40
_Z25CG_UpdateWeaponVisibilityiP9centity_s_50:
	mov eax, [esi+0x12c]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z22CG_GetWeaponAttachBoneP12clientInfo_t10weapType_t
	mov esi, eax
	mov edx, [ebp+0x8]
	mov [esp+0x4], edx
	mov eax, [edi]
	mov [esp], eax
	call _Z17Com_GetClientDObjii
	mov edi, eax
	mov byte [ebp-0x19], 0xfe
	lea eax, [ebp-0x19]
	mov [esp+0x8], eax
	movzx eax, si
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z16DObjGetBoneIndexPK6DObj_sjPh
	test eax, eax
	jz _Z25CG_UpdateWeaponVisibilityiP9centity_s_40
	lea eax, [ebp-0x40]
	mov [esp+0x10], eax
	lea eax, [ebp-0x88]
	mov [esp+0xc], eax
	movzx eax, byte [ebp-0x19]
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	mov eax, [ebp+0xc]
	mov [esp], eax
	call _Z25CG_DObjGetWorldBoneMatrixPK7cpose_tP6DObj_siPA3_fPf
	test eax, eax
	jz _Z25CG_UpdateWeaponVisibilityiP9centity_s_40
	lea eax, [ebp-0x34]
	mov [esp+0x8], eax
	lea eax, [ebp-0x28]
	mov [esp+0x4], eax
	mov edx, [ebp-0xbc]
	mov [esp], edx
	call _Z15XModelGetBoundsPK6XModelPfS2_
	mov eax, [ebp-0xbc]
	mov [esp], eax
	call _Z17XModelGetBasePosePK6XModel
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
	call _Z15CG_TraceCapsuleP7trace_tPKfS2_S2_S2_ii
	movss xmm4, dword [ebp-0xd8]
	movaps xmm0, xmm4
	mulss xmm0, [ebp-0xb4]
	subss xmm4, xmm0
	ucomiss xmm4, [_float_3_00000000]
	ja _Z25CG_UpdateWeaponVisibilityiP9centity_s_60
_Z25CG_UpdateWeaponVisibilityiP9centity_s_80:
	cmp byte [ebx+0x4c8], 0x0
	jz _Z25CG_UpdateWeaponVisibilityiP9centity_s_40
	mov byte [ebx+0x4c8], 0x0
	mov dword [ebx+0x3f4], 0x1
	jmp _Z25CG_UpdateWeaponVisibilityiP9centity_s_40
_Z25CG_UpdateWeaponVisibilityiP9centity_s_20:
	cmp byte [ebx+0x4c9], 0x0
	jz _Z25CG_UpdateWeaponVisibilityiP9centity_s_30
	mov byte [ebx+0x4c9], 0x0
	mov dword [ebx+0x3f4], 0x1
	jmp _Z25CG_UpdateWeaponVisibilityiP9centity_s_30
_Z25CG_UpdateWeaponVisibilityiP9centity_s_60:
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
	call _Z15CG_TraceCapsuleP7trace_tPKfS2_S2_S2_ii
	movss xmm0, dword [_float_1_00000000]
	ucomiss xmm0, [ebp-0xb4]
	jnz _Z25CG_UpdateWeaponVisibilityiP9centity_s_70
	jnp _Z25CG_UpdateWeaponVisibilityiP9centity_s_80
_Z25CG_UpdateWeaponVisibilityiP9centity_s_70:
	cmp byte [ebx+0x4c8], 0x0
	jnz _Z25CG_UpdateWeaponVisibilityiP9centity_s_40
	mov byte [ebx+0x4c8], 0x1
	mov dword [ebx+0x3f4], 0x1
	jmp _Z25CG_UpdateWeaponVisibilityiP9centity_s_40
	nop


;CG_GetPlayerOpposingTeamName(int)
_Z28CG_GetPlayerOpposingTeamNamei:
	push ebp
	mov ebp, esp
	push ebx
	mov eax, clientUIActives
	cmp dword [eax+0xc], 0x7
	jle _Z28CG_GetPlayerOpposingTeamNamei_10
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
	jz _Z28CG_GetPlayerOpposingTeamNamei_10
	mov eax, [edx+0x1c]
	cmp eax, 0x1
	jz _Z28CG_GetPlayerOpposingTeamNamei_20
	jle _Z28CG_GetPlayerOpposingTeamNamei_30
	cmp eax, 0x2
	jz _Z28CG_GetPlayerOpposingTeamNamei_40
	cmp eax, 0x3
	jz _Z28CG_GetPlayerOpposingTeamNamei_50
_Z28CG_GetPlayerOpposingTeamNamei_60:
	mov eax, _cstring_null
	pop ebx
	pop ebp
	ret
_Z28CG_GetPlayerOpposingTeamNamei_30:
	test eax, eax
	jnz _Z28CG_GetPlayerOpposingTeamNamei_60
_Z28CG_GetPlayerOpposingTeamNamei_50:
	cmp eax, 0x1
	jz _Z28CG_GetPlayerOpposingTeamNamei_40
	jg _Z28CG_GetPlayerOpposingTeamNamei_70
	test eax, eax
	jnz _Z28CG_GetPlayerOpposingTeamNamei_60
_Z28CG_GetPlayerOpposingTeamNamei_10:
	mov eax, _cstring_team_free
	pop ebx
	pop ebp
	ret
_Z28CG_GetPlayerOpposingTeamNamei_40:
	mov eax, _cstring_team_axis
	pop ebx
	pop ebp
	ret
_Z28CG_GetPlayerOpposingTeamNamei_20:
	mov eax, _cstring_team_allies
	pop ebx
	pop ebp
	ret
_Z28CG_GetPlayerOpposingTeamNamei_70:
	cmp eax, 0x2
	jz _Z28CG_GetPlayerOpposingTeamNamei_20
	cmp eax, 0x3
	jnz _Z28CG_GetPlayerOpposingTeamNamei_60
	mov eax, _cstring_team_spectator
	pop ebx
	pop ebp
	ret


;CG_AddAllPlayerSpriteDrawSurfs(int)
_Z30CG_AddAllPlayerSpriteDrawSurfsi:
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
	jle _Z30CG_AddAllPlayerSpriteDrawSurfsi_10
	mov esi, eax
	xor edi, edi
	jmp _Z30CG_AddAllPlayerSpriteDrawSurfsi_20
_Z30CG_AddAllPlayerSpriteDrawSurfsi_30:
	add edi, 0x1
	add esi, 0xf4
	mov edx, [ebp-0x24]
	cmp edi, [edx+0x2f70]
	jge _Z30CG_AddAllPlayerSpriteDrawSurfsi_10
_Z30CG_AddAllPlayerSpriteDrawSurfsi_20:
	mov eax, [esi+0x2f78]
	lea edx, [eax*4]
	shl eax, 0x5
	sub eax, edx
	mov edx, eax
	shl edx, 0x4
	lea ebx, [eax+edx]
	add ebx, cg_entitiesArray
	cmp dword [ebx+0xd0], 0x1
	jnz _Z30CG_AddAllPlayerSpriteDrawSurfsi_30
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
	jz _Z30CG_AddAllPlayerSpriteDrawSurfsi_30
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
	jz _Z30CG_AddAllPlayerSpriteDrawSurfsi_30
	mov eax, [eax+0xe9f50]
	mov [ebp-0x20], eax
	mov eax, [ebx+0x15c]
	test eax, eax
	jnz _Z30CG_AddAllPlayerSpriteDrawSurfsi_40
_Z30CG_AddAllPlayerSpriteDrawSurfsi_90:
	xor edx, edx
_Z30CG_AddAllPlayerSpriteDrawSurfsi_100:
	mov eax, [ebx+0xcc]
	mov ecx, cgArray
	cmp eax, [ecx]
	jz _Z30CG_AddAllPlayerSpriteDrawSurfsi_50
_Z30CG_AddAllPlayerSpriteDrawSurfsi_110:
	mov eax, [ebx+0xd4]
	test al, al
	js _Z30CG_AddAllPlayerSpriteDrawSurfsi_60
	mov ecx, [ebp-0x20]
	cmp [ebp-0x1c], ecx
	jz _Z30CG_AddAllPlayerSpriteDrawSurfsi_70
	cmp ecx, 0x3
	jnz _Z30CG_AddAllPlayerSpriteDrawSurfsi_30
_Z30CG_AddAllPlayerSpriteDrawSurfsi_70:
	test eax, 0x200000
	jz _Z30CG_AddAllPlayerSpriteDrawSurfsi_30
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
	call _Z26CG_AddPlayerSpriteDrawSurfiPK9centity_sP8Materialfih
	jmp _Z30CG_AddAllPlayerSpriteDrawSurfsi_30
_Z30CG_AddAllPlayerSpriteDrawSurfsi_10:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z30CG_AddAllPlayerSpriteDrawSurfsi_40:
	mov edx, [ebx+0x160]
	test edx, edx
	jz _Z30CG_AddAllPlayerSpriteDrawSurfsi_80
	cmp dword [ebp-0x20], 0x3
	jz _Z30CG_AddAllPlayerSpriteDrawSurfsi_80
	cmp [ebp-0x20], edx
	jnz _Z30CG_AddAllPlayerSpriteDrawSurfsi_90
_Z30CG_AddAllPlayerSpriteDrawSurfsi_80:
	add eax, 0x8da
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z18CL_GetConfigStringii
	mov dword [esp+0x4], 0x7
	mov [esp], eax
	call _Z23Material_RegisterHandlePKci
	mov edx, eax
	test eax, eax
	jz _Z30CG_AddAllPlayerSpriteDrawSurfsi_90
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
	call _Z26CG_AddPlayerSpriteDrawSurfiPK9centity_sP8Materialfih
	mov edx, cg_scriptIconSize
	mov eax, [edx]
	cvttss2si eax, [eax+0xc]
	lea edx, [eax+0x10]
	jmp _Z30CG_AddAllPlayerSpriteDrawSurfsi_100
_Z30CG_AddAllPlayerSpriteDrawSurfsi_50:
	mov eax, [ecx+0x5052c]
	test eax, eax
	jz _Z30CG_AddAllPlayerSpriteDrawSurfsi_110
	mov eax, cg_youInKillCamSize
	mov eax, [eax]
	movss xmm0, dword [eax+0xc]
	mov eax, cgMedia
	mov ecx, [eax+0x10]
	mov dword [esp+0x4], 0x1
	mov [esp], edx
	mov edx, ebx
	mov eax, [ebp+0x8]
	call _Z26CG_AddPlayerSpriteDrawSurfiPK9centity_sP8Materialfih
	jmp _Z30CG_AddAllPlayerSpriteDrawSurfsi_30
_Z30CG_AddAllPlayerSpriteDrawSurfsi_60:
	mov eax, cg_connectionIconSize
	mov eax, [eax]
	movss xmm0, dword [eax+0xc]
	mov eax, cgMedia
	mov ecx, [eax+0xc]
	mov dword [esp+0x4], 0x0
	mov [esp], edx
	mov edx, ebx
	mov eax, [ebp+0x8]
	call _Z26CG_AddPlayerSpriteDrawSurfiPK9centity_sP8Materialfih
	jmp _Z30CG_AddAllPlayerSpriteDrawSurfsi_30


;CG_Corpse(int, centity_s*)
_Z9CG_CorpseiP9centity_s:
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
	jz _Z9CG_CorpseiP9centity_s_10
_Z9CG_CorpseiP9centity_s_20:
	add esp, 0x15c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z9CG_CorpseiP9centity_s_10:
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
	call _Z17Com_GetClientDObjii
	mov ebx, eax
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], eax
	lea edx, [ebp-0x12c]
	mov [esp], edx
	call _Z21FX_MarkEntUpdateBeginP23FxMarkDObjUpdateContextP6DObj_sht
	mov dword [esp+0x10], 0x0
	mov ecx, [ebp-0x13c]
	mov [esp+0xc], ecx
	mov [esp+0x8], edi
	mov [esp+0x4], ebx
	mov [esp], esi
	call _Z19BG_UpdatePlayerDObjiP6DObj_sP13entityState_sP12clientInfo_ti
	mov [esp+0x4], esi
	mov edx, [ebp+0xc]
	mov eax, [edx+0xcc]
	mov [esp], eax
	call _Z17Com_GetClientDObjii
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
	call _Z19FX_MarkEntUpdateEndP23FxMarkDObjUpdateContextiiP6DObj_sht
	test ebx, ebx
	jz _Z9CG_CorpseiP9centity_s_20
	mov edx, [ebp-0x13c]
	mov [esp+0x8], edx
	mov [esp+0x4], edi
	mov [esp], esi
	call _Z18BG_PlayerAnimationiPK13entityState_sP12clientInfo_t
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
	jnz _Z9CG_CorpseiP9centity_s_30
	test al, 0x4
	jz _Z9CG_CorpseiP9centity_s_40
	addss xmm0, [_float_20_00000000]
	movss [ebp-0x1c], xmm0
	jmp _Z9CG_CorpseiP9centity_s_50
_Z9CG_CorpseiP9centity_s_30:
	addss xmm0, [_float_12_00000000]
	movss [ebp-0x1c], xmm0
_Z9CG_CorpseiP9centity_s_50:
	mov dword [esp+0x14], 0x0
	lea eax, [ebp-0x24]
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x0
	mov eax, [edi]
	mov [esp+0x8], eax
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z16R_AddDObjToScenePK6DObj_sPK7cpose_tjjPff
	add esp, 0x15c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z9CG_CorpseiP9centity_s_40:
	addss xmm0, [_float_32_00000000]
	movss [ebp-0x1c], xmm0
	jmp _Z9CG_CorpseiP9centity_s_50


;CG_Player(int, centity_s*)
_Z9CG_PlayeriP9centity_s:
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
	jnz _Z9CG_PlayeriP9centity_s_10
	test eax, 0x20000
	jnz _Z9CG_PlayeriP9centity_s_10
	mov edx, [esi+0xcc]
	mov ecx, cgArray
	mov eax, [ecx+0x24]
	test byte [eax+0x20], 0x6
	jz _Z9CG_PlayeriP9centity_s_20
	cmp edx, [eax+0xe8]
	jz _Z9CG_PlayeriP9centity_s_30
_Z9CG_PlayeriP9centity_s_20:
	xor eax, eax
_Z9CG_PlayeriP9centity_s_130:
	test eax, eax
	jz _Z9CG_PlayeriP9centity_s_40
	mov ebx, [ecx+0x46138]
	test ebx, ebx
	jz _Z9CG_PlayeriP9centity_s_10
_Z9CG_PlayeriP9centity_s_40:
	mov ebx, [edi+0x8c]
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov [esp], edx
	call _Z17Com_GetClientDObjii
	mov [ebp-0x1a0], eax
	test eax, eax
	jz _Z9CG_PlayeriP9centity_s_10
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
	call _Z18BG_PlayerAnimationiPK13entityState_sP12clientInfo_t
	test dword [edi+0x8], 0x300
	jnz _Z9CG_PlayeriP9centity_s_50
_Z9CG_PlayeriP9centity_s_100:
	lea ecx, [esi+0x1c]
	mov [ebp-0x1ac], ecx
	lea ebx, [esi+0x20]
	mov [ebp-0x1b0], ebx
	lea eax, [esi+0x24]
	mov [ebp-0x1b4], eax
_Z9CG_PlayeriP9centity_s_120:
	mov [esp+0x4], esi
	mov ebx, [ebp-0x1a0]
	mov [esp], ebx
	call _Z24CG_Player_PreControllersP6DObj_sP9centity_s
	mov dword [esp+0x4], _cstring_weapon_visibilit
	mov dword [esp], 0xffffffff
	call _Z18PIXBeginNamedEventiPKcz
	mov [esp+0x4], esi
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z25CG_UpdateWeaponVisibilityiP9centity_s
	mov eax, [esi+0x1c]
	mov [ebp-0x44], eax
	mov eax, [esi+0x20]
	mov [ebp-0x40], eax
	movss xmm0, dword [esi+0x24]
	movss [ebp-0x3c], xmm0
	mov eax, [edi+0x8]
	test al, 0x8
	jz _Z9CG_PlayeriP9centity_s_60
	addss xmm0, [_float_12_00000000]
	movss [ebp-0x3c], xmm0
_Z9CG_PlayeriP9centity_s_150:
	mov dword [esp+0x14], 0x0
	lea eax, [ebp-0x44]
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x4
	mov eax, [edi]
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov edx, [ebp-0x1a0]
	mov [esp], edx
	call _Z16R_AddDObjToScenePK6DObj_sPK7cpose_tjjPff
	test byte [edi+0xa], 0x2
	jnz _Z9CG_PlayeriP9centity_s_10
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
	call _Z12AnglesToQuatPKfPf
	mov dword [ebp-0x60], 0x3f800000
	mov dword [esp+0x10], 0x1
	mov [esp+0xc], esi
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], ebx
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z18CG_AddPlayerWeaponiPK18GfxScaledPlacementPK13playerState_sP9centity_si
	cmp byte [esi+0x1c0], 0x0
	jz _Z9CG_PlayeriP9centity_s_10
	mov eax, cgArray
	mov eax, [eax+0x46218]
	cmp eax, [esi+0xcc]
	jz _Z9CG_PlayeriP9centity_s_10
	mov [esp+0x4], esi
	mov ebx, [ebp+0x8]
	mov [esp], ebx
	call _Z23AimTarget_ProcessEntityiPK9centity_s
_Z9CG_PlayeriP9centity_s_10:
	add esp, 0x1dc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z9CG_PlayeriP9centity_s_50:
	mov ebx, [esi+0x140]
	cmp ebx, 0x3f
	jle _Z9CG_PlayeriP9centity_s_70
	cmp ebx, 0x3ff
	jz _Z9CG_PlayeriP9centity_s_80
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
	jz _Z9CG_PlayeriP9centity_s_90
	add eax, 0x380
	mov [ebp-0x184], eax
	mov edx, [eax+0x10]
	test edx, edx
	jz _Z9CG_PlayeriP9centity_s_100
	mov eax, [eax+0x14]
	test eax, eax
	jz _Z9CG_PlayeriP9centity_s_70
	test byte [eax+0x50], 0x4
	jz _Z9CG_PlayeriP9centity_s_80
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
	jnz _Z9CG_PlayeriP9centity_s_110
_Z9CG_PlayeriP9centity_s_90:
	lea ebx, [esi+0x1c]
	mov [ebp-0x1ac], ebx
	lea eax, [esi+0x20]
	mov [ebp-0x1b0], eax
	lea edx, [esi+0x24]
	mov [ebp-0x1b4], edx
	jmp _Z9CG_PlayeriP9centity_s_120
_Z9CG_PlayeriP9centity_s_30:
	mov eax, 0x1
	jmp _Z9CG_PlayeriP9centity_s_130
_Z9CG_PlayeriP9centity_s_60:
	test al, 0x4
	jz _Z9CG_PlayeriP9centity_s_140
	addss xmm0, [_float_20_00000000]
	movss [ebp-0x3c], xmm0
	jmp _Z9CG_PlayeriP9centity_s_150
_Z9CG_PlayeriP9centity_s_70:
	lea edx, [esi+0x1c]
	mov [ebp-0x1ac], edx
	lea ecx, [esi+0x20]
	mov [ebp-0x1b0], ecx
	lea ebx, [esi+0x24]
	mov [ebp-0x1b4], ebx
	jmp _Z9CG_PlayeriP9centity_s_120
_Z9CG_PlayeriP9centity_s_140:
	addss xmm0, [_float_32_00000000]
	movss [ebp-0x3c], xmm0
	jmp _Z9CG_PlayeriP9centity_s_150
_Z9CG_PlayeriP9centity_s_160:
	mov dword [esp+0x4], _cstring_warning_aborting
	mov dword [esp], 0x11
	call _Z16Com_PrintWarningiPKcz
_Z9CG_PlayeriP9centity_s_80:
	lea eax, [esi+0x1c]
	mov [ebp-0x1ac], eax
	lea edx, [esi+0x20]
	mov [ebp-0x1b0], edx
	lea ecx, [esi+0x24]
	mov [ebp-0x1b4], ecx
	jmp _Z9CG_PlayeriP9centity_s_120
_Z9CG_PlayeriP9centity_s_110:
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov eax, [edx+0xcc]
	mov [esp], eax
	call _Z17Com_GetClientDObjii
	mov ebx, eax
	test eax, eax
	jz _Z9CG_PlayeriP9centity_s_100
	mov edx, [ebp+0x8]
	mov [esp+0x4], edx
	mov eax, [esi+0xcc]
	mov [esp], eax
	call _Z17Com_GetClientDObjii
	mov [ebp-0x14c], eax
	test eax, eax
	jz _Z9CG_PlayeriP9centity_s_70
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
	call _Z24CG_DObjGetWorldTagMatrixPK7cpose_tP6DObj_sjPA3_fPf
	test eax, eax
	jz _Z9CG_PlayeriP9centity_s_160
	mov eax, [ebp-0x1a4]
	mov eax, [eax+0x46124]
	test eax, eax
	jz _Z9CG_PlayeriP9centity_s_80
	mov edx, [ebp-0x188]
	mov eax, [edx+0x190]
	mov [esp], eax
	call _Z15BG_GetWeaponDefj
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
	call _Z14vectosignedyawPKf
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
	call _Z12AnglesToAxisPKfPA3_f
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
	call _Z19XAnimGetNumChildrenPK7XAnim_sj
	mov [ebp-0x194], eax
	test eax, eax
	jz _Z9CG_PlayeriP9centity_s_170
_Z9CG_PlayeriP9centity_s_320:
	mov eax, [ebp-0x194]
	sub eax, 0x1
	mov [ebp-0x144], eax
	pxor xmm0, xmm0
	movss [ebp-0x170], xmm0
	movss [ebp-0x140], xmm0
	mov dword [ebp-0x190], 0x0
	mov dword [ebp-0x154], 0x0
	mov dword [ebp-0x198], 0x0
	jmp _Z9CG_PlayeriP9centity_s_180
_Z9CG_PlayeriP9centity_s_240:
	cvttss2si ebx, xmm1
_Z9CG_PlayeriP9centity_s_250:
	cvtsi2ss xmm0, ebx
	subss xmm1, xmm0
	movss [ebp-0x13c], xmm1
	mov [esp+0x8], ebx
	mov eax, [ebp-0x150]
	mov [esp+0x4], eax
	mov edx, [ebp-0x160]
	mov [esp], edx
	call _Z15XAnimGetChildAtPK7XAnim_sjj
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
	call _Z16XAnimGetAbsDeltaPK7XAnim_sjPfS2_f
	movss xmm0, dword [ebp-0x13c]
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jp _Z9CG_PlayeriP9centity_s_190
	jnz _Z9CG_PlayeriP9centity_s_190
	movss xmm1, dword [ebp-0x24]
_Z9CG_PlayeriP9centity_s_270:
	movss [ebp-0x174], xmm1
	ucomiss xmm1, [ebp-0x178]
	jae _Z9CG_PlayeriP9centity_s_200
	add dword [ebp-0x198], 0x1
	sub dword [ebp-0x144], 0x1
	mov ecx, [ebp-0x198]
	cmp [ebp-0x194], ecx
	jle _Z9CG_PlayeriP9centity_s_210
	movss [ebp-0x140], xmm1
	movss xmm0, dword [ebp-0x13c]
	movss [ebp-0x170], xmm0
	mov [ebp-0x190], ebx
_Z9CG_PlayeriP9centity_s_180:
	mov eax, [ebp-0x144]
	mov [esp+0x8], eax
	mov edx, [ebp-0x15c]
	mov [esp+0x4], edx
	mov ecx, [ebp-0x160]
	mov [esp], ecx
	call _Z15XAnimGetChildAtPK7XAnim_sjj
	mov [ebp-0x150], eax
	mov [esp+0x4], eax
	mov ebx, [ebp-0x160]
	mov [esp], ebx
	call _Z19XAnimGetNumChildrenPK7XAnim_sj
	mov ebx, eax
	test eax, eax
	jz _Z9CG_PlayeriP9centity_s_220
_Z9CG_PlayeriP9centity_s_260:
	cvtsi2ss xmm1, ebx
	mulss xmm1, [_float_0_50000000]
	movss xmm0, dword [ebp-0x17c]
	mov ecx, [ebp-0x180]
	divss xmm0, dword [ecx+0x7d4]
	addss xmm1, xmm0
	pxor xmm0, xmm0
	ucomiss xmm0, xmm1
	ja _Z9CG_PlayeriP9centity_s_230
	lea eax, [ebx-0x1]
	cvtsi2ss xmm0, eax
	ucomiss xmm1, xmm0
	jb _Z9CG_PlayeriP9centity_s_240
	cvttss2si ebx, xmm0
	movaps xmm1, xmm0
	jmp _Z9CG_PlayeriP9centity_s_250
_Z9CG_PlayeriP9centity_s_220:
	mov eax, [ebp-0x150]
	mov [esp+0x4], eax
	mov edx, [ebp-0x160]
	mov [esp], edx
	call _Z21XAnimGetAnimDebugNamePK7XAnim_sj
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_player_anim_s_ha
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z9CG_PlayeriP9centity_s_260
_Z9CG_PlayeriP9centity_s_190:
	lea eax, [ebx+0x1]
	mov [esp+0x8], eax
	mov eax, [ebp-0x150]
	mov [esp+0x4], eax
	mov edx, [ebp-0x160]
	mov [esp], edx
	call _Z15XAnimGetChildAtPK7XAnim_sjj
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
	call _Z16XAnimGetAbsDeltaPK7XAnim_sjPfS2_f
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
	jmp _Z9CG_PlayeriP9centity_s_270
_Z9CG_PlayeriP9centity_s_210:
	movss xmm0, dword [ebp-0x13c]
	movss [ebp-0x170], xmm0
	mov [ebp-0x190], ebx
_Z9CG_PlayeriP9centity_s_330:
	mov dword [esp+0x8], 0x0
	mov eax, [ebp-0x15c]
	mov [esp+0x4], eax
	mov edx, [ebp-0x164]
	mov [esp], edx
	call _Z31XAnimClearTreeGoalWeightsStrictP11XAnimTree_sjf
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
	call _Z18XAnimSetGoalWeightP6DObj_sjfffjji
	movss xmm0, dword [ebp-0x13c]
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jp _Z9CG_PlayeriP9centity_s_280
	jnz _Z9CG_PlayeriP9centity_s_280
_Z9CG_PlayeriP9centity_s_310:
	mov eax, [ebp-0x198]
	test eax, eax
	jz _Z9CG_PlayeriP9centity_s_290
	mov edx, [ebp-0x194]
	cmp [ebp-0x198], edx
	jnz _Z9CG_PlayeriP9centity_s_300
_Z9CG_PlayeriP9centity_s_290:
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
	call _Z18XAnimSetGoalWeightP6DObj_sjfffjji
_Z9CG_PlayeriP9centity_s_350:
	lea edx, [ebp-0x2c]
	mov [esp+0xc], edx
	lea ecx, [ebp-0x20]
	mov [esp+0x8], ecx
	mov ebx, [ebp-0x15c]
	mov [esp+0x4], ebx
	mov eax, [ebp-0x14c]
	mov [esp], eax
	call _Z17XAnimCalcAbsDeltaP6DObj_sjPfS1_
	movss xmm0, dword [ebp-0x148]
	movss [esp+0x4], xmm0
	lea eax, [ebp-0x2c]
	mov [esp], eax
	call _Z19VectorAngleMultiplyPff
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
	call _Z13RotationToYawPKf
	fstp dword [ebp-0x19c]
	mov [esp+0x4], ebx
	movss xmm0, dword [ebp-0x148]
	addss xmm0, [ebp-0x19c]
	movss [esp], xmm0
	call _Z9YawToAxisfPA3_f
	lea eax, [esi+0x28]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z12AxisToAnglesPA3_KfPf
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
	call _Z15CG_TraceCapsuleP7trace_tPKfS2_S2_S2_ii
	movss xmm2, dword [ebp-0xcc]
	ucomiss xmm2, [_float_1_00000000]
	jae _Z9CG_PlayeriP9centity_s_120
	jp _Z9CG_PlayeriP9centity_s_120
	movss xmm1, dword [ebp-0x54]
	movss xmm0, dword [ebp-0x48]
	subss xmm0, xmm1
	mulss xmm2, xmm0
	addss xmm1, xmm2
	movss [esi+0x24], xmm1
	jmp _Z9CG_PlayeriP9centity_s_120
_Z9CG_PlayeriP9centity_s_230:
	pxor xmm1, xmm1
	xor ebx, ebx
	jmp _Z9CG_PlayeriP9centity_s_250
_Z9CG_PlayeriP9centity_s_280:
	mov dword [esp+0x1c], 0x0
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x3f800000
	mov dword [esp+0xc], 0x0
	movss [esp+0x8], xmm0
	mov eax, [ebp-0x154]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z18XAnimSetGoalWeightP6DObj_sjfffjji
	jmp _Z9CG_PlayeriP9centity_s_310
_Z9CG_PlayeriP9centity_s_170:
	mov ecx, [ebp-0x15c]
	mov [esp+0x4], ecx
	mov ebx, [ebp-0x160]
	mov [esp], ebx
	call _Z21XAnimGetAnimDebugNamePK7XAnim_sj
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_player_anim_s_ha
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z9CG_PlayeriP9centity_s_320
_Z9CG_PlayeriP9centity_s_200:
	movss xmm1, dword [ebp-0x140]
	movss [ebp-0x174], xmm1
	jmp _Z9CG_PlayeriP9centity_s_330
_Z9CG_PlayeriP9centity_s_300:
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
	call _Z18XAnimSetGoalWeightP6DObj_sjfffjji
	mov ecx, [ebp-0x198]
	sub [ebp-0x194], ecx
	mov ebx, [ebp-0x194]
	mov [esp+0x8], ebx
	mov eax, [ebp-0x15c]
	mov [esp+0x4], eax
	mov edx, [ebp-0x160]
	mov [esp], edx
	call _Z15XAnimGetChildAtPK7XAnim_sjj
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
	call _Z18XAnimSetGoalWeightP6DObj_sjfffjji
	mov eax, [ebp-0x190]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov edx, [ebp-0x160]
	mov [esp], edx
	call _Z15XAnimGetChildAtPK7XAnim_sjj
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
	call _Z18XAnimSetGoalWeightP6DObj_sjfffjji
	movss xmm0, dword [ebp-0x170]
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jp _Z9CG_PlayeriP9centity_s_340
	jz _Z9CG_PlayeriP9centity_s_350
_Z9CG_PlayeriP9centity_s_340:
	mov eax, [ebp-0x190]
	add eax, 0x1
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov eax, [ebp-0x160]
	mov [esp], eax
	call _Z15XAnimGetChildAtPK7XAnim_sjj
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
	call _Z18XAnimSetGoalWeightP6DObj_sjfffjji
	jmp _Z9CG_PlayeriP9centity_s_350


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

