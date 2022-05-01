;Imports of cg_predict_mp:
	extern cgArray
	extern memcpy
	extern floorf
	extern _Z22CL_GetCurrentCmdNumberi
	extern _Z13CL_GetUserCmdiiP9usercmd_s
	extern _Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh
	extern cg_entitiesArray
	extern _Z21BG_EvaluateTrajectoryPK12trajectory_tiPf
	extern _Z15BG_GetWeaponDefj
	extern _Z27BG_PlayerStateToEntityStateP13playerState_sP13entityState_sih
	extern _Z19CL_SetUserCmdOriginiPKfS0_S0_ii
	extern _Z10CL_SendCmdi
	extern cg_nopredict
	extern cg_synchronousClients
	extern cg_showmiss
	extern _Z10Com_PrintfiPKcz
	extern _Z21CG_GetWeapReticleZoomPK4cg_sPf
	extern _Z6flrandff
	extern _Z7randomfv
	extern cosf
	extern sinf
	extern _Z17AngleNormalize360f
	extern _Z26CG_ExtractTransPlayerStatePK13playerState_sP18transPlayerState_t
	extern _Z25CG_AdjustPositionForMoveriPKfiiiPfS1_
	extern _Z24CG_TransitionPlayerStateiP13playerState_sPK18transPlayerState_t
	extern cg_viewZSmoothingTime
	extern _Z5PmoveP7pmove_t
	extern _Z12CL_SetStancei11StanceState
	extern cg_viewZSmoothingMin
	extern cg_viewZSmoothingMax
	extern cg_predictItems
	extern _Z20BG_PlayerTouchesItemPK13playerState_sPK13entityState_si
	extern _Z19BG_CanItemBeGrabbedPK13entityState_sPK13playerState_si
	extern _Z34BG_PlayerHasRoomForEntAllAmmoTypesPK13entityState_sPK13playerState_s
	extern _Z35BG_AddPredictableEventToPlayerstateijP13playerState_s
	extern cg_errorDecay
	extern _Z14Com_PrintErroriPKcz

;Exports of cg_predict_mp:
	global cg_pmove
	global cg_itemEntityCount
	global cg_itemEntities
	global cg_itemLocalClientNum
	global _Z25CG_InterpolatePlayerStateii
	global _Z16CG_BuildItemListiPK10snapshot_s
	global _Z16CG_ClearItemListv
	global _Z21CG_PredictPlayerStatei
	global _Z25CG_ItemListLocalClientNumv


SECTION .text


;CG_InterpolatePlayerState(int, int)
_Z25CG_InterpolatePlayerStateii:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x9c
	mov [ebp-0x48], eax
	mov [ebp-0x4c], edx
	mov eax, cgArray
	mov edi, [eax+0x20]
	mov esi, [eax+0x24]
	add eax, 0x4613c
	mov [ebp-0x50], eax
	lea eax, [esi+0xc]
	mov dword [esp+0x8], 0x2f64
	mov [esp+0x4], eax
	mov ecx, [ebp-0x50]
	mov [esp], ecx
	call memcpy
	mov eax, [ebp-0x4c]
	test eax, eax
	jnz _Z25CG_InterpolatePlayerStateii_10
_Z25CG_InterpolatePlayerStateii_60:
	mov eax, [esi+0x8]
	cmp eax, [edi+0x8]
	jle _Z25CG_InterpolatePlayerStateii_20
	mov ecx, cgArray
	movss xmm3, dword [ecx+0x46120]
	mov eax, [esi+0x14]
	mov edx, [edi+0x14]
	lea ecx, [eax+0x100]
	cmp eax, edx
	cmovl eax, ecx
	sub eax, edx
	cvtsi2ss xmm0, eax
	mulss xmm0, xmm3
	cvttss2si eax, xmm0
	add edx, eax
	mov eax, cgArray
	mov [eax+0x46144], edx
	movss xmm1, dword [edi+0x634]
	movss xmm0, dword [esi+0x634]
	subss xmm0, xmm1
	mulss xmm0, xmm3
	addss xmm1, xmm0
	movss [eax+0x46764], xmm1
	lea edx, [esi+0x28]
	lea eax, [edi+0x28]
	movss xmm1, dword [edi+0x28]
	movss xmm0, dword [esi+0x28]
	subss xmm0, xmm1
	mulss xmm0, xmm3
	addss xmm1, xmm0
	mov ecx, cgArray
	movss [ecx+0x46158], xmm1
	movss xmm1, dword [eax+0x4]
	movss xmm0, dword [edx+0x4]
	subss xmm0, xmm1
	mulss xmm0, xmm3
	addss xmm1, xmm0
	movss [ecx+0x4615c], xmm1
	movss xmm1, dword [eax+0x8]
	movss xmm0, dword [edx+0x8]
	subss xmm0, xmm1
	mulss xmm0, xmm3
	addss xmm1, xmm0
	movss [ecx+0x46160], xmm1
	lea edx, [esi+0x34]
	lea eax, [edi+0x34]
	movss xmm1, dword [edi+0x34]
	movss xmm0, dword [esi+0x34]
	subss xmm0, xmm1
	mulss xmm0, xmm3
	addss xmm1, xmm0
	movss [ecx+0x46164], xmm1
	movss xmm1, dword [eax+0x4]
	movss xmm0, dword [edx+0x4]
	subss xmm0, xmm1
	mulss xmm0, xmm3
	addss xmm1, xmm0
	movss [ecx+0x46168], xmm1
	movss xmm1, dword [eax+0x8]
	movss xmm0, dword [edx+0x8]
	subss xmm0, xmm1
	mulss xmm0, xmm3
	addss xmm1, xmm0
	movss [ecx+0x4616c], xmm1
	mov ebx, [ebp-0x4c]
	test ebx, ebx
	jz _Z25CG_InterpolatePlayerStateii_30
	mov [ebp-0x5c], ecx
	mov eax, ecx
_Z25CG_InterpolatePlayerStateii_70:
	movss xmm1, dword [edi+0x124]
	movss xmm0, dword [esi+0x124]
	subss xmm0, xmm1
	mulss xmm0, xmm3
	addss xmm1, xmm0
	movss [eax+0x46254], xmm1
	movss xmm1, dword [edi+0x68]
	movss xmm0, dword [esi+0x68]
	subss xmm0, xmm1
	mulss xmm0, xmm3
	addss xmm1, xmm0
	movss [eax+0x46198], xmm1
	movss xmm1, dword [edi+0x100]
	movss xmm0, dword [esi+0x100]
	subss xmm0, xmm1
	mulss xmm3, xmm0
	addss xmm1, xmm3
	movss [eax+0x46230], xmm1
	mov edx, [esi+0x5ac]
	test edx, edx
	jnz _Z25CG_InterpolatePlayerStateii_20
	mov dword [eax+0x466e0], 0xffffffff
	mov dword [eax+0x466e4], 0x3ff
_Z25CG_InterpolatePlayerStateii_20:
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z25CG_InterpolatePlayerStateii_30:
	mov [ebp-0x44], esi
	mov ebx, edi
	mov [ebp-0x5c], ecx
	mov [ebp-0x40], ecx
	lea eax, [ecx+0xc]
	mov [ebp-0x3c], eax
	mov ecx, esi
_Z25CG_InterpolatePlayerStateii_50:
	movss xmm2, dword [ebx+0x114]
	movss xmm0, dword [ecx+0x114]
	subss xmm0, xmm2
	mulss xmm0, [_float_0_00277778]
	movaps xmm1, xmm0
	addss xmm1, [_float_0_50000000]
	movss [esp], xmm1
	movss [ebp-0x78], xmm0
	movss [ebp-0x88], xmm2
	movss [ebp-0x98], xmm3
	call floorf
	fstp dword [ebp-0x54]
	movss xmm0, dword [ebp-0x78]
	subss xmm0, [ebp-0x54]
	mulss xmm0, [_float_360_00000000]
	movss xmm3, dword [ebp-0x98]
	mulss xmm0, xmm3
	movss xmm2, dword [ebp-0x88]
	addss xmm2, xmm0
	mov eax, [ebp-0x40]
	movss [eax+0x46244], xmm2
	movss xmm2, dword [ebx+0x70]
	mov ecx, [ebp-0x44]
	movss xmm0, dword [ecx+0x70]
	subss xmm0, xmm2
	mulss xmm0, [_float_0_00277778]
	movaps xmm1, xmm0
	addss xmm1, [_float_0_50000000]
	movss [esp], xmm1
	movss [ebp-0x78], xmm0
	movss [ebp-0x88], xmm2
	movss [ebp-0x98], xmm3
	call floorf
	fstp dword [ebp-0x58]
	movss xmm0, dword [ebp-0x78]
	subss xmm0, [ebp-0x58]
	mulss xmm0, [_float_360_00000000]
	movss xmm3, dword [ebp-0x98]
	mulss xmm0, xmm3
	movss xmm2, dword [ebp-0x88]
	addss xmm2, xmm0
	mov eax, [ebp-0x40]
	movss [eax+0x461a0], xmm2
	add dword [ebp-0x44], 0x4
	add ebx, 0x4
	add eax, 0x4
	mov [ebp-0x40], eax
	cmp [ebp-0x3c], eax
	jz _Z25CG_InterpolatePlayerStateii_40
	mov ecx, [ebp-0x44]
	jmp _Z25CG_InterpolatePlayerStateii_50
_Z25CG_InterpolatePlayerStateii_10:
	mov eax, [ebp-0x48]
	mov [esp], eax
	call _Z22CL_GetCurrentCmdNumberi
	lea ebx, [ebp-0x38]
	mov [esp+0x8], ebx
	mov [esp+0x4], eax
	mov ecx, [ebp-0x48]
	mov [esp], ecx
	call _Z13CL_GetUserCmdiiP9usercmd_s
	mov dword [esp+0xc], 0x0
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x0
	mov eax, [ebp-0x50]
	mov [esp], eax
	call _Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh
	jmp _Z25CG_InterpolatePlayerStateii_60
_Z25CG_InterpolatePlayerStateii_40:
	mov eax, [ebp-0x5c]
	jmp _Z25CG_InterpolatePlayerStateii_70


;CG_BuildItemList(int, snapshot_s const*)
_Z16CG_BuildItemListiPK10snapshot_s:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	mov esi, [ebp+0xc]
	mov dword [cg_itemEntityCount], 0x0
	mov eax, [ebp+0x8]
	mov [cg_itemLocalClientNum], eax
	mov ecx, [esi+0x2f70]
	test ecx, ecx
	jle _Z16CG_BuildItemListiPK10snapshot_s_10
	mov ecx, esi
	xor ebx, ebx
	xor edi, edi
	jmp _Z16CG_BuildItemListiPK10snapshot_s_20
_Z16CG_BuildItemListiPK10snapshot_s_40:
	add ebx, 0x1
	add ecx, 0xf4
	cmp [esi+0x2f70], ebx
	jle _Z16CG_BuildItemListiPK10snapshot_s_30
_Z16CG_BuildItemListiPK10snapshot_s_20:
	mov eax, [ecx+0x2f78]
	lea edx, [eax*4]
	shl eax, 0x5
	sub eax, edx
	mov edx, eax
	shl edx, 0x4
	add eax, edx
	add eax, cg_entitiesArray
	cmp dword [eax+0xd0], 0x3
	jnz _Z16CG_BuildItemListiPK10snapshot_s_40
	mov [edi*4+cg_itemEntities], eax
	add edi, 0x1
	add ebx, 0x1
	add ecx, 0xf4
	cmp [esi+0x2f70], ebx
	jg _Z16CG_BuildItemListiPK10snapshot_s_20
_Z16CG_BuildItemListiPK10snapshot_s_30:
	mov [cg_itemEntityCount], edi
_Z16CG_BuildItemListiPK10snapshot_s_10:
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	add [eax], al


;CG_ClearItemList()
_Z16CG_ClearItemListv:
	push ebp
	mov ebp, esp
	mov dword [cg_itemEntityCount], 0x0
	pop ebp
	ret
	nop


;CG_PredictPlayerState(int)
_Z21CG_PredictPlayerStatei:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x12c
	mov edi, [ebp+0x8]
	mov edx, cgArray
	mov eax, [edx+0x46764]
	mov [edx+0xfd764], eax
	mov esi, [edx+0x24]
	add esi, 0xc
	mov edx, [edx+0x8]
	test edx, edx
	jnz _Z21CG_PredictPlayerStatei_10
	test byte [esi+0x14], 0x2
	jz _Z21CG_PredictPlayerStatei_20
_Z21CG_PredictPlayerStatei_10:
	xor edx, edx
	mov eax, edi
	call _Z25CG_InterpolatePlayerStateii
_Z21CG_PredictPlayerStatei_80:
	mov ebx, cgArray
_Z21CG_PredictPlayerStatei_90:
	mov eax, [ebx+0x46218]
	lea edx, [eax*4]
	shl eax, 0x5
	sub eax, edx
	mov edx, eax
	shl edx, 0x4
	add eax, edx
	add eax, cg_entitiesArray
	lea ecx, [eax+0x1c]
	mov edx, [ebx+0x46158]
	mov [eax+0x1c], edx
	mov edx, [ebx+0x4615c]
	mov [ecx+0x4], edx
	mov edx, [ebx+0x46160]
	mov [ecx+0x8], edx
	lea edx, [eax+0x28]
	mov [esp+0x8], edx
	mov edx, [ebx+0x46128]
	mov [esp+0x4], edx
	add eax, 0x8c
	mov [esp], eax
	call _Z21BG_EvaluateTrajectoryPK12trajectory_tiPf
	mov eax, [ebx+0x46224]
	mov [esp], eax
	call _Z15BG_GetWeaponDefj
	mov ebx, eax
	mov edx, cgArray
	mov eax, [edx+0x24]
	test byte [eax+0x20], 0x4
	jnz _Z21CG_PredictPlayerStatei_30
	mov ecx, edx
_Z21CG_PredictPlayerStatei_150:
	mov dword [ecx+0x50528], 0x0
	mov ebx, ecx
_Z21CG_PredictPlayerStatei_140:
	movzx eax, word [ebx+0x46218]
	mov [ebx+0x4916c], eax
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	lea eax, [ebx+0x4916c]
	mov [esp+0x4], eax
	lea eax, [ebx+0x4613c]
	mov [esp], eax
	call _Z27BG_PlayerStateToEntityStateP13playerState_sP13entityState_sih
	lea edx, [ebx+0x49104]
	lea eax, [ebx+0x49174]
	mov dword [esp+0x8], 0x68
	mov [esp+0x4], eax
	mov [esp], edx
	call memcpy
	mov eax, [ebx+0x461e8]
	mov [esp+0x14], eax
	mov eax, [ebx+0x46144]
	mov [esp+0x10], eax
	lea eax, [ebx+0x46244]
	mov [esp+0xc], eax
	lea eax, [ebx+0x46164]
	mov [esp+0x8], eax
	add ebx, 0x46158
	mov [esp+0x4], ebx
	mov [esp], edi
	call _Z19CL_SetUserCmdOriginiPKfS0_S0_ii
	mov [esp], edi
	call _Z10CL_SendCmdi
	add esp, 0x12c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z21CG_PredictPlayerStatei_20:
	mov eax, cg_nopredict
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z21CG_PredictPlayerStatei_40
	mov eax, cg_synchronousClients
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z21CG_PredictPlayerStatei_40
	mov eax, edi
	shl eax, 0x4
	mov edx, edi
	shl edx, 0x8
	lea edx, [eax+edx]
	mov eax, cgArray
	add eax, 0x4613c
	mov [edx+cg_pmove], eax
	mov ecx, cg_pmove+0x100
	mov byte [edx+ecx+0xc], 0x0
	cmp dword [eax+0x4], 0x6
	jle _Z21CG_PredictPlayerStatei_50
	mov ebx, cg_pmove+0x40
	mov dword [edx+ebx+0x4], 0x810011
_Z21CG_PredictPlayerStatei_160:
	cmp dword [esi+0x4], 0x4
	jz _Z21CG_PredictPlayerStatei_60
_Z21CG_PredictPlayerStatei_280:
	mov eax, edi
	shl eax, 0x4
	mov edx, edi
	shl edx, 0x8
	add eax, edx
	mov dword [eax+ecx+0x8], 0x0
	mov ebx, cgArray
	mov edx, [ebx+0xfd75c]
	mov [eax+ecx+0x4], edx
	mov [esp], edi
	call _Z22CL_GetCurrentCmdNumberi
	mov [ebp-0xdc], eax
	sub eax, 0x7f
	mov [ebp-0xe0], eax
	lea eax, [ebp-0x6c]
	mov [esp+0x8], eax
	mov eax, [ebp-0xe0]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z13CL_GetUserCmdiiP9usercmd_s
	test eax, eax
	jnz _Z21CG_PredictPlayerStatei_70
	mov eax, cg_showmiss
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	jz _Z21CG_PredictPlayerStatei_80
	mov dword [esp+0x4], _cstring_exceeded_packet_
	mov dword [esp], 0x11
	call _Z10Com_PrintfiPKcz
	mov ebx, cgArray
	jmp _Z21CG_PredictPlayerStatei_90
_Z21CG_PredictPlayerStatei_40:
	mov edx, 0x1
	mov eax, edi
	call _Z25CG_InterpolatePlayerStateii
	mov ebx, cgArray
	jmp _Z21CG_PredictPlayerStatei_90
_Z21CG_PredictPlayerStatei_30:
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov [esp], edx
	call _Z21CG_GetWeapReticleZoomPK4cg_sPf
	test al, al
	jz _Z21CG_PredictPlayerStatei_100
	pxor xmm0, xmm0
	ucomiss xmm0, [ebx+0x4f8]
	jp _Z21CG_PredictPlayerStatei_110
	jz _Z21CG_PredictPlayerStatei_120
_Z21CG_PredictPlayerStatei_110:
	mov eax, cgArray
	mov edx, [eax+0x50528]
	test edx, edx
	jz _Z21CG_PredictPlayerStatei_130
	mov ebx, eax
	jmp _Z21CG_PredictPlayerStatei_140
_Z21CG_PredictPlayerStatei_100:
	mov ecx, cgArray
	jmp _Z21CG_PredictPlayerStatei_150
_Z21CG_PredictPlayerStatei_50:
	mov ebx, cg_pmove+0x40
	mov dword [edx+ebx+0x4], 0x2810011
	jmp _Z21CG_PredictPlayerStatei_160
_Z21CG_PredictPlayerStatei_130:
	mov dword [eax+0x50528], 0x1
	mov eax, [ebx+0x4f8]
	mov [esp+0x4], eax
	mov eax, [ebx+0x4f4]
	mov [esp], eax
	call _Z6flrandff
	fstp dword [ebp-0xe8]
	call _Z7randomfv
	fstp dword [ebp-0x10c]
	movss xmm0, dword [ebp-0x10c]
	addss xmm0, xmm0
	cvtss2sd xmm0, xmm0
	mulsd xmm0, [_double_3_14159265]
	cvtsd2ss xmm0, xmm0
	movss [ebp-0xe4], xmm0
	movss [esp], xmm0
	call cosf
	fstp dword [ebp-0xf0]
	movss xmm0, dword [ebp-0xe4]
	movss [esp], xmm0
	call sinf
	fstp dword [ebp-0x10c]
	movss xmm0, dword [ebp-0x10c]
	mulss xmm0, [ebp-0xe8]
	mov eax, cgArray
	addss xmm0, [eax+0x50428]
	movss [esp], xmm0
	call _Z17AngleNormalize360f
	mov edx, cgArray
	fstp dword [edx+0x50428]
	movss xmm0, dword [ebp-0xe8]
	mulss xmm0, [ebp-0xf0]
	movss [ebp-0xe8], xmm0
	addss xmm0, [edx+0x5042c]
	movss [esp], xmm0
	call _Z17AngleNormalize360f
	mov eax, cgArray
	fstp dword [eax+0x5042c]
	mov ebx, eax
	jmp _Z21CG_PredictPlayerStatei_140
_Z21CG_PredictPlayerStatei_120:
	mov ebx, cgArray
	jmp _Z21CG_PredictPlayerStatei_140
_Z21CG_PredictPlayerStatei_70:
	mov edx, cgArray
	mov edx, [edx+0x4613c]
	mov [ebp-0xd4], edx
	mov ecx, cgArray
	movss xmm0, dword [ecx+0x46158]
	movss [ebp-0xc0], xmm0
	movss xmm0, dword [ecx+0x4615c]
	movss [ebp-0xc4], xmm0
	movss xmm0, dword [ecx+0x46160]
	movss [ebp-0xc8], xmm0
	movss xmm0, dword [ecx+0x46170]
	movss [ebp-0xb8], xmm0
	movss xmm0, dword [ecx+0x46174]
	movss [ebp-0xbc], xmm0
	movss xmm0, dword [ecx+0x46244]
	movss [ebp-0xac], xmm0
	movss xmm0, dword [ecx+0x46248]
	movss [ebp-0xb0], xmm0
	movss xmm0, dword [ecx+0x4624c]
	movss [ebp-0xb4], xmm0
	lea eax, [ebp-0x4c]
	mov [esp+0x4], eax
	mov ebx, ecx
	add ebx, 0x4613c
	mov [esp], ebx
	call _Z26CG_ExtractTransPlayerStatePK13playerState_sP18transPlayerState_t
	lea eax, [ebp-0x8c]
	mov [esp+0x8], eax
	mov edx, [ebp-0xdc]
	mov [esp+0x4], edx
	mov [esp], edi
	call _Z13CL_GetUserCmdiiP9usercmd_s
	mov dword [esp+0x8], 0x2f64
	mov [esp+0x4], esi
	mov [esp], ebx
	call memcpy
	mov ecx, cgArray
	mov eax, [ecx+0x24]
	mov eax, [eax+0x8]
	mov [ecx+0x46130], eax
	movss xmm0, dword [ebp-0xb8]
	movss [ecx+0x46170], xmm0
	movss xmm0, dword [ebp-0xbc]
	movss [ecx+0x46174], xmm0
	mov eax, [ecx+0x46140]
	cmp eax, 0x1
	jz _Z21CG_PredictPlayerStatei_170
	cmp eax, 0x8
	jz _Z21CG_PredictPlayerStatei_170
_Z21CG_PredictPlayerStatei_350:
	lea eax, [ebp-0x28]
	mov [esp+0x18], eax
	mov ebx, cgArray
	lea edx, [ebx+0x46158]
	mov [esp+0x14], edx
	mov eax, [ebx+0x46128]
	mov [esp+0x10], eax
	mov eax, [ebx+0x46130]
	mov [esp+0xc], eax
	mov eax, [ebx+0x461ac]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov [esp], edi
	call _Z25CG_AdjustPositionForMoveriPKfiiiPfS1_
	mov eax, [esi]
	cmp eax, [ebp-0x8c]
	jl _Z21CG_PredictPlayerStatei_180
	movss xmm0, dword [ebp-0xac]
	movss [ebx+0x46244], xmm0
	movss xmm0, dword [ebp-0xb0]
	movss [ebx+0x46248], xmm0
	movss xmm0, dword [ebp-0xb4]
	movss [ebx+0x4624c], xmm0
_Z21CG_PredictPlayerStatei_290:
	mov dword [ebp-0xd8], 0x0
_Z21CG_PredictPlayerStatei_310:
	mov eax, cg_showmiss
	mov eax, [eax]
	cmp dword [eax+0xc], 0x1
	jle _Z21CG_PredictPlayerStatei_190
	mov eax, cgArray
	mov eax, [eax+0x46128]
	mov [esp+0xc], eax
	mov edx, edi
	shl edx, 0x4
	mov eax, edi
	shl eax, 0x8
	mov eax, [edx+eax+cg_pmove+0x4]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_i__i_
	mov dword [esp], 0x11
	call _Z10Com_PrintfiPKcz
_Z21CG_PredictPlayerStatei_190:
	mov eax, [ebp-0xd8]
	test eax, eax
	jnz _Z21CG_PredictPlayerStatei_200
	mov eax, cg_showmiss
	mov eax, [eax]
	mov ebx, [eax+0xc]
	test ebx, ebx
	jnz _Z21CG_PredictPlayerStatei_210
_Z21CG_PredictPlayerStatei_200:
	lea edx, [ebp-0x4c]
	mov [esp+0x8], edx
	mov ebx, cgArray
	lea eax, [ebx+0x4613c]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z24CG_TransitionPlayerStateiP13playerState_sPK18transPlayerState_t
	test byte [ebx+0x46149], 0x4
	jnz _Z21CG_PredictPlayerStatei_220
_Z21CG_PredictPlayerStatei_360:
	mov ecx, [ebx+0x466dc]
	test ecx, ecx
	jnz _Z21CG_PredictPlayerStatei_230
	mov dword [ebx+0x466e0], 0xffffffff
	mov dword [ebx+0x466e4], 0x3ff
_Z21CG_PredictPlayerStatei_230:
	mov edx, edi
	shl edx, 0x4
	mov eax, edi
	shl eax, 0x8
	lea eax, [edx+eax]
	movss xmm2, dword [eax+cg_pmove+0x108]
	pxor xmm4, xmm4
	ucomiss xmm2, xmm4
	jp _Z21CG_PredictPlayerStatei_240
	jz _Z21CG_PredictPlayerStatei_250
_Z21CG_PredictPlayerStatei_240:
	mov edx, [eax+cg_pmove+0x104]
	mov ecx, [ebx+0xfd75c]
	cmp edx, ecx
	jz _Z21CG_PredictPlayerStatei_250
	cmp byte [ebx+0xfd758], 0x0
	jnz _Z21CG_PredictPlayerStatei_250
	mov eax, [esi+0x4]
	test eax, eax
	jz _Z21CG_PredictPlayerStatei_260
	cmp eax, 0x2
	jz _Z21CG_PredictPlayerStatei_260
	cmp eax, 0x3
	jz _Z21CG_PredictPlayerStatei_260
_Z21CG_PredictPlayerStatei_250:
	mov ecx, cgArray
	mov eax, [ecx+0x46128]
	sub eax, [ecx+0xfd75c]
	cvtsi2ss xmm1, eax
	mov eax, cg_viewZSmoothingTime
	mov eax, [eax]
	movss xmm0, dword [_float_1000_00000000]
	mulss xmm0, [eax+0xc]
	ucomiss xmm1, xmm0
	jbe _Z21CG_PredictPlayerStatei_270
	mov dword [ecx+0xfd760], 0x0
	mov ebx, cgArray
	jmp _Z21CG_PredictPlayerStatei_90
_Z21CG_PredictPlayerStatei_60:
	mov eax, edi
	shl eax, 0x4
	mov edx, edi
	shl edx, 0x8
	add eax, edx
	mov edx, [eax+cg_pmove+0x44]
	and edx, 0xfdfeffff
	mov [eax+ebx+0x4], edx
	jmp _Z21CG_PredictPlayerStatei_280
_Z21CG_PredictPlayerStatei_180:
	mov edx, [ebp-0xe0]
	cmp [ebp-0xdc], edx
	jl _Z21CG_PredictPlayerStatei_290
	mov dword [ebp-0xd8], 0x0
	jmp _Z21CG_PredictPlayerStatei_300
_Z21CG_PredictPlayerStatei_320:
	add dword [ebp-0xe0], 0x1
	mov eax, [ebp-0xe0]
	cmp [ebp-0xdc], eax
	jl _Z21CG_PredictPlayerStatei_310
_Z21CG_PredictPlayerStatei_300:
	mov eax, edi
	shl eax, 0x4
	mov edx, edi
	shl edx, 0x8
	lea ebx, [eax+edx]
	lea eax, [ebx+cg_pmove+0x4]
	mov [esp+0x8], eax
	mov eax, [ebp-0xe0]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z13CL_GetUserCmdiiP9usercmd_s
	mov eax, [ebx+cg_pmove+0x4]
	mov edx, cgArray
	cmp eax, [edx+0x4613c]
	jle _Z21CG_PredictPlayerStatei_320
	cmp eax, [ebp-0x8c]
	jg _Z21CG_PredictPlayerStatei_320
	lea eax, [ebx+cg_pmove+0x24]
	mov [esp+0x8], eax
	mov eax, [ebp-0xe0]
	sub eax, 0x1
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z13CL_GetUserCmdiiP9usercmd_s
	test eax, eax
	jz _Z21CG_PredictPlayerStatei_320
	mov ebx, [ebp-0xd4]
	mov ecx, cgArray
	cmp ebx, [ecx+0x4613c]
	jz _Z21CG_PredictPlayerStatei_330
_Z21CG_PredictPlayerStatei_490:
	mov eax, edi
	shl eax, 0x4
	mov edx, edi
	shl edx, 0x8
	lea eax, [eax+edx+cg_pmove]
	mov [esp], eax
	call _Z5PmoveP7pmove_t
	mov eax, cgArray
	cmp dword [eax+0x46140], 0x1
	jbe _Z21CG_PredictPlayerStatei_340
_Z21CG_PredictPlayerStatei_420:
	mov dword [ebp-0xd8], 0x1
	jmp _Z21CG_PredictPlayerStatei_320
_Z21CG_PredictPlayerStatei_270:
	mov ebx, ecx
	jmp _Z21CG_PredictPlayerStatei_90
_Z21CG_PredictPlayerStatei_170:
	xor edx, edx
	mov eax, edi
	call _Z25CG_InterpolatePlayerStateii
	jmp _Z21CG_PredictPlayerStatei_350
_Z21CG_PredictPlayerStatei_220:
	mov dword [esp+0x4], 0x0
	mov [esp], edi
	call _Z12CL_SetStancei11StanceState
	jmp _Z21CG_PredictPlayerStatei_360
_Z21CG_PredictPlayerStatei_210:
	mov dword [esp+0x4], _cstring_no_prediction_ru
	mov dword [esp], 0x11
	call _Z10Com_PrintfiPKcz
	jmp _Z21CG_PredictPlayerStatei_200
_Z21CG_PredictPlayerStatei_260:
	movaps xmm0, xmm2
	andps xmm0, [_data16_7fffffff]
	mov eax, cg_viewZSmoothingMin
	mov eax, [eax]
	ucomiss xmm0, [eax+0xc]
	jb _Z21CG_PredictPlayerStatei_370
	mov eax, cg_viewZSmoothingTime
	mov eax, [eax]
	movss xmm1, dword [_float_1000_00000000]
	mulss xmm1, [eax+0xc]
	mov ebx, cgArray
	mov eax, [ebx+0x46128]
	sub eax, ecx
	cvtsi2ss xmm0, eax
	ucomiss xmm1, xmm0
	jbe _Z21CG_PredictPlayerStatei_380
	cvttss2si ebx, xmm1
	mov eax, edx
	sub eax, ecx
	js _Z21CG_PredictPlayerStatei_380
	cmp eax, ebx
	jge _Z21CG_PredictPlayerStatei_380
	cvtsi2ss xmm0, eax
	cvtsi2ss xmm1, ebx
	divss xmm0, xmm1
	movss xmm1, dword [_float_1_00000000]
	subss xmm1, xmm0
	mov eax, cgArray
	mulss xmm1, [eax+0xfd760]
_Z21CG_PredictPlayerStatei_410:
	movaps xmm3, xmm1
	addss xmm3, xmm2
	movaps xmm0, xmm4
	ucomiss xmm3, xmm4
	jbe _Z21CG_PredictPlayerStatei_390
	mov eax, cg_viewZSmoothingMax
	mov eax, [eax]
	movss xmm2, dword [eax+0xc]
	movaps xmm1, xmm3
	subss xmm1, xmm2
	cmpss xmm0, xmm1, 0x6
	andps xmm3, xmm0
	andnps xmm0, xmm2
	orps xmm0, xmm3
	mov edx, cgArray
	movss [edx+0xfd760], xmm0
	mov ebx, edx
_Z21CG_PredictPlayerStatei_560:
	mov eax, edi
	shl eax, 0x4
	mov edx, edi
	shl edx, 0x8
	mov eax, [eax+edx+cg_pmove+0x104]
	mov [ebx+0xfd75c], eax
	jmp _Z21CG_PredictPlayerStatei_90
_Z21CG_PredictPlayerStatei_370:
	mov edx, cgArray
	mov eax, [edx+0x46128]
	sub eax, ecx
	cvtsi2ss xmm1, eax
	mov eax, cg_viewZSmoothingTime
	mov eax, [eax]
	movss xmm0, dword [_float_1000_00000000]
	mulss xmm0, [eax+0xc]
	ucomiss xmm1, xmm0
	jbe _Z21CG_PredictPlayerStatei_400
	mov dword [edx+0xfd760], 0x0
	mov ebx, cgArray
	jmp _Z21CG_PredictPlayerStatei_90
_Z21CG_PredictPlayerStatei_380:
	movaps xmm1, xmm4
	jmp _Z21CG_PredictPlayerStatei_410
_Z21CG_PredictPlayerStatei_400:
	mov ebx, edx
	jmp _Z21CG_PredictPlayerStatei_90
_Z21CG_PredictPlayerStatei_340:
	mov eax, [cg_itemEntityCount]
	test eax, eax
	jle _Z21CG_PredictPlayerStatei_420
	mov dword [ebp-0xd0], 0x0
	mov dword [ebp-0x9c], cg_itemEntities
	jmp _Z21CG_PredictPlayerStatei_430
_Z21CG_PredictPlayerStatei_440:
	add dword [ebp-0xd0], 0x1
	add dword [ebp-0x9c], 0x4
	mov ebx, [ebp-0xd0]
	cmp [cg_itemEntityCount], ebx
	jle _Z21CG_PredictPlayerStatei_420
_Z21CG_PredictPlayerStatei_430:
	mov eax, [ebp-0x9c]
	mov ebx, [eax]
	mov eax, cg_predictItems
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z21CG_PredictPlayerStatei_440
	lea edx, [ebx+0xcc]
	mov [ebp-0xcc], edx
	mov ecx, cgArray
	mov eax, [ecx+0x46128]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	add ecx, 0x4613c
	mov [ebp-0xec], ecx
	mov [esp], ecx
	call _Z20BG_PlayerTouchesItemPK13playerState_sPK13entityState_si
	test eax, eax
	jz _Z21CG_PredictPlayerStatei_440
	mov eax, [ebx+0x1c8]
	mov edx, cgArray
	cmp eax, [edx+0x46128]
	jz _Z21CG_PredictPlayerStatei_440
	mov ecx, [ebx+0x154]
	and ecx, 0x8000007f
	js _Z21CG_PredictPlayerStatei_450
_Z21CG_PredictPlayerStatei_570:
	mov edx, ecx
	sar edx, 0x5
	and ecx, 0x1f
	mov eax, 0x1
	shl eax, cl
	mov ecx, cgArray
	test [ecx+edx*4+0x46698], eax
	jz _Z21CG_PredictPlayerStatei_440
	mov dword [esp+0x8], 0x1
	mov eax, [ebp-0xec]
	mov [esp+0x4], eax
	mov edx, [ebp-0xcc]
	mov [esp], edx
	call _Z19BG_CanItemBeGrabbedPK13entityState_sPK13playerState_si
	test eax, eax
	jz _Z21CG_PredictPlayerStatei_440
	mov ecx, [ebp-0xec]
	mov [esp+0x4], ecx
	mov eax, [ebp-0xcc]
	mov [esp], eax
	call _Z34BG_PlayerHasRoomForEntAllAmmoTypesPK13entityState_sPK13playerState_s
	test eax, eax
	jz _Z21CG_PredictPlayerStatei_440
	or dword [ebx+0xd4], 0x20
	mov edx, cgArray
	mov eax, [edx+0x46128]
	mov [ebx+0x1c8], eax
	mov ecx, [ebp-0xec]
	mov [esp+0x8], ecx
	mov eax, [ebx+0x154]
	and eax, 0x8000007f
	jns _Z21CG_PredictPlayerStatei_460
	sub eax, 0x1
	or eax, 0xffffff80
	add eax, 0x1
_Z21CG_PredictPlayerStatei_460:
	mov [esp+0x4], eax
	mov dword [esp], 0x9
	call _Z35BG_AddPredictableEventToPlayerstateijP13playerState_s
	jmp _Z21CG_PredictPlayerStatei_440
_Z21CG_PredictPlayerStatei_330:
	lea eax, [ebp-0x28]
	mov [esp+0x18], eax
	lea eax, [ebp-0x34]
	mov [esp+0x14], eax
	mov eax, [ecx+0x4612c]
	mov [esp+0x10], eax
	mov eax, [ecx+0x46128]
	mov [esp+0xc], eax
	mov eax, [ecx+0x461ac]
	mov [esp+0x8], eax
	mov eax, ecx
	add eax, 0x46158
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z25CG_AdjustPositionForMoveriPKfiiiPfS1_
	mov edx, cgArray
	movss xmm0, dword [edx+0x461a4]
	addss xmm0, [ebp-0x24]
	movss [edx+0x461a4], xmm0
	mov eax, cg_showmiss
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	jz _Z21CG_PredictPlayerStatei_470
	movss xmm0, dword [ebp-0xc0]
	ucomiss xmm0, [ebp-0x34]
	jnz _Z21CG_PredictPlayerStatei_480
	jp _Z21CG_PredictPlayerStatei_480
	movss xmm0, dword [ebp-0xc4]
	ucomiss xmm0, [ebp-0x30]
	jnz _Z21CG_PredictPlayerStatei_480
	jp _Z21CG_PredictPlayerStatei_480
	movss xmm0, dword [ebp-0xc8]
	ucomiss xmm0, [ebp-0x2c]
	jnz _Z21CG_PredictPlayerStatei_480
	jp _Z21CG_PredictPlayerStatei_480
_Z21CG_PredictPlayerStatei_470:
	movss xmm0, dword [ebp-0xc0]
	subss xmm0, [ebp-0x34]
	movss [ebp-0xa0], xmm0
	movss xmm0, dword [ebp-0xc4]
	subss xmm0, [ebp-0x30]
	movss [ebp-0xa4], xmm0
	movss xmm0, dword [ebp-0xc8]
	subss xmm0, [ebp-0x2c]
	movss [ebp-0xa8], xmm0
	movss xmm0, dword [ebp-0xa0]
	mulss xmm0, xmm0
	movss xmm1, dword [ebp-0xa4]
	mulss xmm1, xmm1
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0xa8]
	mulss xmm1, xmm1
	addss xmm0, xmm1
	sqrtss xmm0, xmm0
	ucomiss xmm0, [_float_0_10000000]
	jbe _Z21CG_PredictPlayerStatei_490
	mov ebx, cg_showmiss
	mov eax, [ebx]
	mov eax, [eax+0xc]
	test eax, eax
	jz _Z21CG_PredictPlayerStatei_500
	cvtss2sd xmm0, xmm0
	movsd [esp+0x8], xmm0
	mov dword [esp+0x4], _cstring_prediction_miss_
	mov dword [esp], 0x11
	call _Z10Com_PrintfiPKcz
_Z21CG_PredictPlayerStatei_500:
	mov eax, cg_errorDecay
	mov eax, [eax]
	movss xmm2, dword [eax+0xc]
	pxor xmm4, xmm4
	ucomiss xmm2, xmm4
	jp _Z21CG_PredictPlayerStatei_510
	jz _Z21CG_PredictPlayerStatei_520
_Z21CG_PredictPlayerStatei_510:
	mov edx, cgArray
	mov eax, [edx+0x46128]
	sub eax, [edx+0x492ac]
	cvtsi2ss xmm0, eax
	movaps xmm1, xmm2
	subss xmm1, xmm0
	divss xmm1, xmm2
	ucomiss xmm4, xmm1
	ja _Z21CG_PredictPlayerStatei_530
	ucomiss xmm1, xmm4
	jbe _Z21CG_PredictPlayerStatei_540
	mov eax, [ebx]
	mov eax, [eax+0xc]
	test eax, eax
	jnz _Z21CG_PredictPlayerStatei_550
_Z21CG_PredictPlayerStatei_540:
	movaps xmm0, xmm1
	mov eax, cgArray
	mulss xmm0, [eax+0x492b0]
	movss [eax+0x492b0], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [eax+0x492b4]
	movss [eax+0x492b4], xmm0
	mulss xmm1, [eax+0x492b8]
	movss [eax+0x492b8], xmm1
_Z21CG_PredictPlayerStatei_580:
	movss xmm0, dword [ebp-0xa0]
	mov ecx, cgArray
	addss xmm0, [ecx+0x492b0]
	movss [ecx+0x492b0], xmm0
	movss xmm0, dword [ebp-0xa4]
	addss xmm0, [ecx+0x492b4]
	movss [ecx+0x492b4], xmm0
	movss xmm0, dword [ebp-0xa8]
	addss xmm0, [ecx+0x492b8]
	movss [ecx+0x492b8], xmm0
	mov eax, [ecx+0x4612c]
	mov [ecx+0x492ac], eax
	jmp _Z21CG_PredictPlayerStatei_490
_Z21CG_PredictPlayerStatei_390:
	mov eax, cg_viewZSmoothingMax
	mov eax, [eax]
	movss xmm1, dword [eax+0xc]
	xorps xmm1, [_data16_80000000]
	movaps xmm0, xmm1
	subss xmm0, xmm3
	cmpss xmm4, xmm0, 0x2
	movaps xmm0, xmm4
	andps xmm1, xmm4
	andnps xmm0, xmm3
	orps xmm0, xmm1
	mov ecx, cgArray
	movss [ecx+0xfd760], xmm0
	mov ebx, ecx
	jmp _Z21CG_PredictPlayerStatei_560
_Z21CG_PredictPlayerStatei_480:
	mov dword [esp+0x4], _cstring_prediction_error
	mov dword [esp], 0x11
	call _Z14Com_PrintErroriPKcz
	jmp _Z21CG_PredictPlayerStatei_470
_Z21CG_PredictPlayerStatei_450:
	sub ecx, 0x1
	or ecx, 0xffffff80
	add ecx, 0x1
	jmp _Z21CG_PredictPlayerStatei_570
_Z21CG_PredictPlayerStatei_520:
	mov edx, cgArray
	mov dword [edx+0x492b0], 0x0
	mov dword [edx+0x492b4], 0x0
	mov dword [edx+0x492b8], 0x0
	jmp _Z21CG_PredictPlayerStatei_580
_Z21CG_PredictPlayerStatei_530:
	movaps xmm1, xmm4
	jmp _Z21CG_PredictPlayerStatei_540
_Z21CG_PredictPlayerStatei_550:
	cvtss2sd xmm0, xmm1
	movsd [esp+0x8], xmm0
	mov dword [esp+0x4], _cstring_double_predictio
	mov dword [esp], 0x11
	movss [ebp-0x108], xmm1
	call _Z10Com_PrintfiPKcz
	movss xmm1, dword [ebp-0x108]
	jmp _Z21CG_PredictPlayerStatei_540


;CG_ItemListLocalClientNum()
_Z25CG_ItemListLocalClientNumv:
	push ebp
	mov ebp, esp
	mov eax, [cg_itemLocalClientNum]
	pop ebp
	ret


;Initialized global or static variables of cg_predict_mp:
SECTION .data


;Initialized constant data of cg_predict_mp:
SECTION .rdata


;Zero initialized global or static variables of cg_predict_mp:
SECTION .bss
cg_pmove: resb 0x110
cg_itemEntityCount: resb 0x10
cg_itemEntities: resb 0x800
cg_itemLocalClientNum: resb 0x60


;All cstrings:
SECTION .rdata
_cstring_exceeded_packet_:		db "exceeded PACKET_BACKUP on commands",0ah,0
_cstring_i__i_:		db "[%i : %i] ",0
_cstring_no_prediction_ru:		db "no prediction run",0ah,0
_cstring_prediction_miss_:		db "Prediction miss: %f",0ah,0
_cstring_prediction_error:		db "prediction error",0ah,0
_cstring_double_predictio:		db "Double prediction decay: %f",0ah,0



;All constant floats and doubles:
SECTION .rdata
_float_0_00277778:		dd 0x3b360b61	; 0.00277778
_float_0_50000000:		dd 0x3f000000	; 0.5
_float_360_00000000:		dd 0x43b40000	; 360
_double_3_14159265:		dq 0x400921fb54442d18	; 3.14159
_float_1000_00000000:		dd 0x447a0000	; 1000
_data16_7fffffff:		dd 0x7fffffff, 0x0, 0x0, 0x0	; OWORD
_float_1_00000000:		dd 0x3f800000	; 1
_float_0_10000000:		dd 0x3dcccccd	; 0.1
_data16_80000000:		dd 0x80000000, 0x0, 0x0, 0x0	; OWORD

