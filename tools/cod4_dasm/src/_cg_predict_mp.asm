;Imports of cg_predict_mp:
	extern cgArray
	extern memcpy
	extern floorf
	extern CL_GetCurrentCmdNumber
	extern CL_GetUserCmd
	extern PM_UpdateViewAngles
	extern cg_entitiesArray
	extern BG_EvaluateTrajectory
	extern BG_GetWeaponDef
	extern BG_PlayerStateToEntityState
	extern CL_SetUserCmdOrigin
	extern CL_SendCmd
	extern cg_nopredict
	extern cg_synchronousClients
	extern cg_showmiss
	extern Com_Printf
	extern CG_GetWeapReticleZoom
	extern flrand
	extern randomf
	extern cosf
	extern sinf
	extern AngleNormalize360
	extern CG_ExtractTransPlayerState
	extern CG_AdjustPositionForMover
	extern CG_TransitionPlayerState
	extern cg_viewZSmoothingTime
	extern Pmove
	extern CL_SetStance
	extern cg_viewZSmoothingMin
	extern cg_viewZSmoothingMax
	extern cg_predictItems
	extern BG_PlayerTouchesItem
	extern BG_CanItemBeGrabbed
	extern BG_PlayerHasRoomForEntAllAmmoTypes
	extern BG_AddPredictableEventToPlayerstate
	extern cg_errorDecay
	extern Com_PrintError

;Exports of cg_predict_mp:
	global cg_pmove
	global cg_itemEntityCount
	global cg_itemEntities
	global cg_itemLocalClientNum
	global CG_InterpolatePlayerState
	global CG_BuildItemList
	global CG_ClearItemList
	global CG_PredictPlayerState
	global CG_ItemListLocalClientNum


SECTION .text


;CG_InterpolatePlayerState(int, int)
CG_InterpolatePlayerState:
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
	jnz CG_InterpolatePlayerState_10
CG_InterpolatePlayerState_60:
	mov eax, [esi+0x8]
	cmp eax, [edi+0x8]
	jle CG_InterpolatePlayerState_20
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
	jz CG_InterpolatePlayerState_30
	mov [ebp-0x5c], ecx
	mov eax, ecx
CG_InterpolatePlayerState_70:
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
	jnz CG_InterpolatePlayerState_20
	mov dword [eax+0x466e0], 0xffffffff
	mov dword [eax+0x466e4], 0x3ff
CG_InterpolatePlayerState_20:
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_InterpolatePlayerState_30:
	mov [ebp-0x44], esi
	mov ebx, edi
	mov [ebp-0x5c], ecx
	mov [ebp-0x40], ecx
	lea eax, [ecx+0xc]
	mov [ebp-0x3c], eax
	mov ecx, esi
CG_InterpolatePlayerState_50:
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
	jz CG_InterpolatePlayerState_40
	mov ecx, [ebp-0x44]
	jmp CG_InterpolatePlayerState_50
CG_InterpolatePlayerState_10:
	mov eax, [ebp-0x48]
	mov [esp], eax
	call CL_GetCurrentCmdNumber
	lea ebx, [ebp-0x38]
	mov [esp+0x8], ebx
	mov [esp+0x4], eax
	mov ecx, [ebp-0x48]
	mov [esp], ecx
	call CL_GetUserCmd
	mov dword [esp+0xc], 0x0
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x0
	mov eax, [ebp-0x50]
	mov [esp], eax
	call PM_UpdateViewAngles
	jmp CG_InterpolatePlayerState_60
CG_InterpolatePlayerState_40:
	mov eax, [ebp-0x5c]
	jmp CG_InterpolatePlayerState_70


;CG_BuildItemList(int, snapshot_s const*)
CG_BuildItemList:
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
	jle CG_BuildItemList_10
	mov ecx, esi
	xor ebx, ebx
	xor edi, edi
	jmp CG_BuildItemList_20
CG_BuildItemList_40:
	add ebx, 0x1
	add ecx, 0xf4
	cmp [esi+0x2f70], ebx
	jle CG_BuildItemList_30
CG_BuildItemList_20:
	mov eax, [ecx+0x2f78]
	lea edx, [eax*4]
	shl eax, 0x5
	sub eax, edx
	mov edx, eax
	shl edx, 0x4
	add eax, edx
	add eax, cg_entitiesArray
	cmp dword [eax+0xd0], 0x3
	jnz CG_BuildItemList_40
	mov [edi*4+cg_itemEntities], eax
	add edi, 0x1
	add ebx, 0x1
	add ecx, 0xf4
	cmp [esi+0x2f70], ebx
	jg CG_BuildItemList_20
CG_BuildItemList_30:
	mov [cg_itemEntityCount], edi
CG_BuildItemList_10:
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	add [eax], al


;CG_ClearItemList()
CG_ClearItemList:
	push ebp
	mov ebp, esp
	mov dword [cg_itemEntityCount], 0x0
	pop ebp
	ret
	nop


;CG_PredictPlayerState(int)
CG_PredictPlayerState:
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
	jnz CG_PredictPlayerState_10
	test byte [esi+0x14], 0x2
	jz CG_PredictPlayerState_20
CG_PredictPlayerState_10:
	xor edx, edx
	mov eax, edi
	call CG_InterpolatePlayerState
CG_PredictPlayerState_80:
	mov ebx, cgArray
CG_PredictPlayerState_90:
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
	call BG_EvaluateTrajectory
	mov eax, [ebx+0x46224]
	mov [esp], eax
	call BG_GetWeaponDef
	mov ebx, eax
	mov edx, cgArray
	mov eax, [edx+0x24]
	test byte [eax+0x20], 0x4
	jnz CG_PredictPlayerState_30
	mov ecx, edx
CG_PredictPlayerState_150:
	mov dword [ecx+0x50528], 0x0
	mov ebx, ecx
CG_PredictPlayerState_140:
	movzx eax, word [ebx+0x46218]
	mov [ebx+0x4916c], eax
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	lea eax, [ebx+0x4916c]
	mov [esp+0x4], eax
	lea eax, [ebx+0x4613c]
	mov [esp], eax
	call BG_PlayerStateToEntityState
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
	call CL_SetUserCmdOrigin
	mov [esp], edi
	call CL_SendCmd
	add esp, 0x12c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_PredictPlayerState_20:
	mov eax, cg_nopredict
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz CG_PredictPlayerState_40
	mov eax, cg_synchronousClients
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz CG_PredictPlayerState_40
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
	jle CG_PredictPlayerState_50
	mov ebx, cg_pmove+0x40
	mov dword [edx+ebx+0x4], 0x810011
CG_PredictPlayerState_160:
	cmp dword [esi+0x4], 0x4
	jz CG_PredictPlayerState_60
CG_PredictPlayerState_280:
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
	call CL_GetCurrentCmdNumber
	mov [ebp-0xdc], eax
	sub eax, 0x7f
	mov [ebp-0xe0], eax
	lea eax, [ebp-0x6c]
	mov [esp+0x8], eax
	mov eax, [ebp-0xe0]
	mov [esp+0x4], eax
	mov [esp], edi
	call CL_GetUserCmd
	test eax, eax
	jnz CG_PredictPlayerState_70
	mov eax, cg_showmiss
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	jz CG_PredictPlayerState_80
	mov dword [esp+0x4], _cstring_exceeded_packet_
	mov dword [esp], 0x11
	call Com_Printf
	mov ebx, cgArray
	jmp CG_PredictPlayerState_90
CG_PredictPlayerState_40:
	mov edx, 0x1
	mov eax, edi
	call CG_InterpolatePlayerState
	mov ebx, cgArray
	jmp CG_PredictPlayerState_90
CG_PredictPlayerState_30:
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov [esp], edx
	call CG_GetWeapReticleZoom
	test al, al
	jz CG_PredictPlayerState_100
	pxor xmm0, xmm0
	ucomiss xmm0, [ebx+0x4f8]
	jp CG_PredictPlayerState_110
	jz CG_PredictPlayerState_120
CG_PredictPlayerState_110:
	mov eax, cgArray
	mov edx, [eax+0x50528]
	test edx, edx
	jz CG_PredictPlayerState_130
	mov ebx, eax
	jmp CG_PredictPlayerState_140
CG_PredictPlayerState_100:
	mov ecx, cgArray
	jmp CG_PredictPlayerState_150
CG_PredictPlayerState_50:
	mov ebx, cg_pmove+0x40
	mov dword [edx+ebx+0x4], 0x2810011
	jmp CG_PredictPlayerState_160
CG_PredictPlayerState_130:
	mov dword [eax+0x50528], 0x1
	mov eax, [ebx+0x4f8]
	mov [esp+0x4], eax
	mov eax, [ebx+0x4f4]
	mov [esp], eax
	call flrand
	fstp dword [ebp-0xe8]
	call randomf
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
	call AngleNormalize360
	mov edx, cgArray
	fstp dword [edx+0x50428]
	movss xmm0, dword [ebp-0xe8]
	mulss xmm0, [ebp-0xf0]
	movss [ebp-0xe8], xmm0
	addss xmm0, [edx+0x5042c]
	movss [esp], xmm0
	call AngleNormalize360
	mov eax, cgArray
	fstp dword [eax+0x5042c]
	mov ebx, eax
	jmp CG_PredictPlayerState_140
CG_PredictPlayerState_120:
	mov ebx, cgArray
	jmp CG_PredictPlayerState_140
CG_PredictPlayerState_70:
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
	call CG_ExtractTransPlayerState
	lea eax, [ebp-0x8c]
	mov [esp+0x8], eax
	mov edx, [ebp-0xdc]
	mov [esp+0x4], edx
	mov [esp], edi
	call CL_GetUserCmd
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
	jz CG_PredictPlayerState_170
	cmp eax, 0x8
	jz CG_PredictPlayerState_170
CG_PredictPlayerState_350:
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
	call CG_AdjustPositionForMover
	mov eax, [esi]
	cmp eax, [ebp-0x8c]
	jl CG_PredictPlayerState_180
	movss xmm0, dword [ebp-0xac]
	movss [ebx+0x46244], xmm0
	movss xmm0, dword [ebp-0xb0]
	movss [ebx+0x46248], xmm0
	movss xmm0, dword [ebp-0xb4]
	movss [ebx+0x4624c], xmm0
CG_PredictPlayerState_290:
	mov dword [ebp-0xd8], 0x0
CG_PredictPlayerState_310:
	mov eax, cg_showmiss
	mov eax, [eax]
	cmp dword [eax+0xc], 0x1
	jle CG_PredictPlayerState_190
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
	call Com_Printf
CG_PredictPlayerState_190:
	mov eax, [ebp-0xd8]
	test eax, eax
	jnz CG_PredictPlayerState_200
	mov eax, cg_showmiss
	mov eax, [eax]
	mov ebx, [eax+0xc]
	test ebx, ebx
	jnz CG_PredictPlayerState_210
CG_PredictPlayerState_200:
	lea edx, [ebp-0x4c]
	mov [esp+0x8], edx
	mov ebx, cgArray
	lea eax, [ebx+0x4613c]
	mov [esp+0x4], eax
	mov [esp], edi
	call CG_TransitionPlayerState
	test byte [ebx+0x46149], 0x4
	jnz CG_PredictPlayerState_220
CG_PredictPlayerState_360:
	mov ecx, [ebx+0x466dc]
	test ecx, ecx
	jnz CG_PredictPlayerState_230
	mov dword [ebx+0x466e0], 0xffffffff
	mov dword [ebx+0x466e4], 0x3ff
CG_PredictPlayerState_230:
	mov edx, edi
	shl edx, 0x4
	mov eax, edi
	shl eax, 0x8
	lea eax, [edx+eax]
	movss xmm2, dword [eax+cg_pmove+0x108]
	pxor xmm4, xmm4
	ucomiss xmm2, xmm4
	jp CG_PredictPlayerState_240
	jz CG_PredictPlayerState_250
CG_PredictPlayerState_240:
	mov edx, [eax+cg_pmove+0x104]
	mov ecx, [ebx+0xfd75c]
	cmp edx, ecx
	jz CG_PredictPlayerState_250
	cmp byte [ebx+0xfd758], 0x0
	jnz CG_PredictPlayerState_250
	mov eax, [esi+0x4]
	test eax, eax
	jz CG_PredictPlayerState_260
	cmp eax, 0x2
	jz CG_PredictPlayerState_260
	cmp eax, 0x3
	jz CG_PredictPlayerState_260
CG_PredictPlayerState_250:
	mov ecx, cgArray
	mov eax, [ecx+0x46128]
	sub eax, [ecx+0xfd75c]
	cvtsi2ss xmm1, eax
	mov eax, cg_viewZSmoothingTime
	mov eax, [eax]
	movss xmm0, dword [_float_1000_00000000]
	mulss xmm0, [eax+0xc]
	ucomiss xmm1, xmm0
	jbe CG_PredictPlayerState_270
	mov dword [ecx+0xfd760], 0x0
	mov ebx, cgArray
	jmp CG_PredictPlayerState_90
CG_PredictPlayerState_60:
	mov eax, edi
	shl eax, 0x4
	mov edx, edi
	shl edx, 0x8
	add eax, edx
	mov edx, [eax+cg_pmove+0x44]
	and edx, 0xfdfeffff
	mov [eax+ebx+0x4], edx
	jmp CG_PredictPlayerState_280
CG_PredictPlayerState_180:
	mov edx, [ebp-0xe0]
	cmp [ebp-0xdc], edx
	jl CG_PredictPlayerState_290
	mov dword [ebp-0xd8], 0x0
	jmp CG_PredictPlayerState_300
CG_PredictPlayerState_320:
	add dword [ebp-0xe0], 0x1
	mov eax, [ebp-0xe0]
	cmp [ebp-0xdc], eax
	jl CG_PredictPlayerState_310
CG_PredictPlayerState_300:
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
	call CL_GetUserCmd
	mov eax, [ebx+cg_pmove+0x4]
	mov edx, cgArray
	cmp eax, [edx+0x4613c]
	jle CG_PredictPlayerState_320
	cmp eax, [ebp-0x8c]
	jg CG_PredictPlayerState_320
	lea eax, [ebx+cg_pmove+0x24]
	mov [esp+0x8], eax
	mov eax, [ebp-0xe0]
	sub eax, 0x1
	mov [esp+0x4], eax
	mov [esp], edi
	call CL_GetUserCmd
	test eax, eax
	jz CG_PredictPlayerState_320
	mov ebx, [ebp-0xd4]
	mov ecx, cgArray
	cmp ebx, [ecx+0x4613c]
	jz CG_PredictPlayerState_330
CG_PredictPlayerState_490:
	mov eax, edi
	shl eax, 0x4
	mov edx, edi
	shl edx, 0x8
	lea eax, [eax+edx+cg_pmove]
	mov [esp], eax
	call Pmove
	mov eax, cgArray
	cmp dword [eax+0x46140], 0x1
	jbe CG_PredictPlayerState_340
CG_PredictPlayerState_420:
	mov dword [ebp-0xd8], 0x1
	jmp CG_PredictPlayerState_320
CG_PredictPlayerState_270:
	mov ebx, ecx
	jmp CG_PredictPlayerState_90
CG_PredictPlayerState_170:
	xor edx, edx
	mov eax, edi
	call CG_InterpolatePlayerState
	jmp CG_PredictPlayerState_350
CG_PredictPlayerState_220:
	mov dword [esp+0x4], 0x0
	mov [esp], edi
	call CL_SetStance
	jmp CG_PredictPlayerState_360
CG_PredictPlayerState_210:
	mov dword [esp+0x4], _cstring_no_prediction_ru
	mov dword [esp], 0x11
	call Com_Printf
	jmp CG_PredictPlayerState_200
CG_PredictPlayerState_260:
	movaps xmm0, xmm2
	andps xmm0, [_data16_7fffffff]
	mov eax, cg_viewZSmoothingMin
	mov eax, [eax]
	ucomiss xmm0, [eax+0xc]
	jb CG_PredictPlayerState_370
	mov eax, cg_viewZSmoothingTime
	mov eax, [eax]
	movss xmm1, dword [_float_1000_00000000]
	mulss xmm1, [eax+0xc]
	mov ebx, cgArray
	mov eax, [ebx+0x46128]
	sub eax, ecx
	cvtsi2ss xmm0, eax
	ucomiss xmm1, xmm0
	jbe CG_PredictPlayerState_380
	cvttss2si ebx, xmm1
	mov eax, edx
	sub eax, ecx
	js CG_PredictPlayerState_380
	cmp eax, ebx
	jge CG_PredictPlayerState_380
	cvtsi2ss xmm0, eax
	cvtsi2ss xmm1, ebx
	divss xmm0, xmm1
	movss xmm1, dword [_float_1_00000000]
	subss xmm1, xmm0
	mov eax, cgArray
	mulss xmm1, [eax+0xfd760]
CG_PredictPlayerState_410:
	movaps xmm3, xmm1
	addss xmm3, xmm2
	movaps xmm0, xmm4
	ucomiss xmm3, xmm4
	jbe CG_PredictPlayerState_390
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
CG_PredictPlayerState_560:
	mov eax, edi
	shl eax, 0x4
	mov edx, edi
	shl edx, 0x8
	mov eax, [eax+edx+cg_pmove+0x104]
	mov [ebx+0xfd75c], eax
	jmp CG_PredictPlayerState_90
CG_PredictPlayerState_370:
	mov edx, cgArray
	mov eax, [edx+0x46128]
	sub eax, ecx
	cvtsi2ss xmm1, eax
	mov eax, cg_viewZSmoothingTime
	mov eax, [eax]
	movss xmm0, dword [_float_1000_00000000]
	mulss xmm0, [eax+0xc]
	ucomiss xmm1, xmm0
	jbe CG_PredictPlayerState_400
	mov dword [edx+0xfd760], 0x0
	mov ebx, cgArray
	jmp CG_PredictPlayerState_90
CG_PredictPlayerState_380:
	movaps xmm1, xmm4
	jmp CG_PredictPlayerState_410
CG_PredictPlayerState_400:
	mov ebx, edx
	jmp CG_PredictPlayerState_90
CG_PredictPlayerState_340:
	mov eax, [cg_itemEntityCount]
	test eax, eax
	jle CG_PredictPlayerState_420
	mov dword [ebp-0xd0], 0x0
	mov dword [ebp-0x9c], cg_itemEntities
	jmp CG_PredictPlayerState_430
CG_PredictPlayerState_440:
	add dword [ebp-0xd0], 0x1
	add dword [ebp-0x9c], 0x4
	mov ebx, [ebp-0xd0]
	cmp [cg_itemEntityCount], ebx
	jle CG_PredictPlayerState_420
CG_PredictPlayerState_430:
	mov eax, [ebp-0x9c]
	mov ebx, [eax]
	mov eax, cg_predictItems
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz CG_PredictPlayerState_440
	lea edx, [ebx+0xcc]
	mov [ebp-0xcc], edx
	mov ecx, cgArray
	mov eax, [ecx+0x46128]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	add ecx, 0x4613c
	mov [ebp-0xec], ecx
	mov [esp], ecx
	call BG_PlayerTouchesItem
	test eax, eax
	jz CG_PredictPlayerState_440
	mov eax, [ebx+0x1c8]
	mov edx, cgArray
	cmp eax, [edx+0x46128]
	jz CG_PredictPlayerState_440
	mov ecx, [ebx+0x154]
	and ecx, 0x8000007f
	js CG_PredictPlayerState_450
CG_PredictPlayerState_570:
	mov edx, ecx
	sar edx, 0x5
	and ecx, 0x1f
	mov eax, 0x1
	shl eax, cl
	mov ecx, cgArray
	test [ecx+edx*4+0x46698], eax
	jz CG_PredictPlayerState_440
	mov dword [esp+0x8], 0x1
	mov eax, [ebp-0xec]
	mov [esp+0x4], eax
	mov edx, [ebp-0xcc]
	mov [esp], edx
	call BG_CanItemBeGrabbed
	test eax, eax
	jz CG_PredictPlayerState_440
	mov ecx, [ebp-0xec]
	mov [esp+0x4], ecx
	mov eax, [ebp-0xcc]
	mov [esp], eax
	call BG_PlayerHasRoomForEntAllAmmoTypes
	test eax, eax
	jz CG_PredictPlayerState_440
	or dword [ebx+0xd4], 0x20
	mov edx, cgArray
	mov eax, [edx+0x46128]
	mov [ebx+0x1c8], eax
	mov ecx, [ebp-0xec]
	mov [esp+0x8], ecx
	mov eax, [ebx+0x154]
	and eax, 0x8000007f
	jns CG_PredictPlayerState_460
	sub eax, 0x1
	or eax, 0xffffff80
	add eax, 0x1
CG_PredictPlayerState_460:
	mov [esp+0x4], eax
	mov dword [esp], 0x9
	call BG_AddPredictableEventToPlayerstate
	jmp CG_PredictPlayerState_440
CG_PredictPlayerState_330:
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
	call CG_AdjustPositionForMover
	mov edx, cgArray
	movss xmm0, dword [edx+0x461a4]
	addss xmm0, [ebp-0x24]
	movss [edx+0x461a4], xmm0
	mov eax, cg_showmiss
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	jz CG_PredictPlayerState_470
	movss xmm0, dword [ebp-0xc0]
	ucomiss xmm0, [ebp-0x34]
	jnz CG_PredictPlayerState_480
	jp CG_PredictPlayerState_480
	movss xmm0, dword [ebp-0xc4]
	ucomiss xmm0, [ebp-0x30]
	jnz CG_PredictPlayerState_480
	jp CG_PredictPlayerState_480
	movss xmm0, dword [ebp-0xc8]
	ucomiss xmm0, [ebp-0x2c]
	jnz CG_PredictPlayerState_480
	jp CG_PredictPlayerState_480
CG_PredictPlayerState_470:
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
	jbe CG_PredictPlayerState_490
	mov ebx, cg_showmiss
	mov eax, [ebx]
	mov eax, [eax+0xc]
	test eax, eax
	jz CG_PredictPlayerState_500
	cvtss2sd xmm0, xmm0
	movsd [esp+0x8], xmm0
	mov dword [esp+0x4], _cstring_prediction_miss_
	mov dword [esp], 0x11
	call Com_Printf
CG_PredictPlayerState_500:
	mov eax, cg_errorDecay
	mov eax, [eax]
	movss xmm2, dword [eax+0xc]
	pxor xmm4, xmm4
	ucomiss xmm2, xmm4
	jp CG_PredictPlayerState_510
	jz CG_PredictPlayerState_520
CG_PredictPlayerState_510:
	mov edx, cgArray
	mov eax, [edx+0x46128]
	sub eax, [edx+0x492ac]
	cvtsi2ss xmm0, eax
	movaps xmm1, xmm2
	subss xmm1, xmm0
	divss xmm1, xmm2
	ucomiss xmm4, xmm1
	ja CG_PredictPlayerState_530
	ucomiss xmm1, xmm4
	jbe CG_PredictPlayerState_540
	mov eax, [ebx]
	mov eax, [eax+0xc]
	test eax, eax
	jnz CG_PredictPlayerState_550
CG_PredictPlayerState_540:
	movaps xmm0, xmm1
	mov eax, cgArray
	mulss xmm0, [eax+0x492b0]
	movss [eax+0x492b0], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [eax+0x492b4]
	movss [eax+0x492b4], xmm0
	mulss xmm1, [eax+0x492b8]
	movss [eax+0x492b8], xmm1
CG_PredictPlayerState_580:
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
	jmp CG_PredictPlayerState_490
CG_PredictPlayerState_390:
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
	jmp CG_PredictPlayerState_560
CG_PredictPlayerState_480:
	mov dword [esp+0x4], _cstring_prediction_error
	mov dword [esp], 0x11
	call Com_PrintError
	jmp CG_PredictPlayerState_470
CG_PredictPlayerState_450:
	sub ecx, 0x1
	or ecx, 0xffffff80
	add ecx, 0x1
	jmp CG_PredictPlayerState_570
CG_PredictPlayerState_520:
	mov edx, cgArray
	mov dword [edx+0x492b0], 0x0
	mov dword [edx+0x492b4], 0x0
	mov dword [edx+0x492b8], 0x0
	jmp CG_PredictPlayerState_580
CG_PredictPlayerState_530:
	movaps xmm1, xmm4
	jmp CG_PredictPlayerState_540
CG_PredictPlayerState_550:
	cvtss2sd xmm0, xmm1
	movsd [esp+0x8], xmm0
	mov dword [esp+0x4], _cstring_double_predictio
	mov dword [esp], 0x11
	movss [ebp-0x108], xmm1
	call Com_Printf
	movss xmm1, dword [ebp-0x108]
	jmp CG_PredictPlayerState_540


;CG_ItemListLocalClientNum()
CG_ItemListLocalClientNum:
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

