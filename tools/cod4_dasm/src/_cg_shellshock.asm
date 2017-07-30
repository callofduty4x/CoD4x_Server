;Imports of cg_shellshock:
	extern SND_DeactivateChannelVolumes
	extern SND_DeactivateEnvironmentEffects
	extern cgArray
	extern CL_PickSoundAlias
	extern vec3_origin
	extern SND_PlaySoundAlias
	extern AxisCopy
	extern MatrixMultiply
	extern SND_PlayBlendedSoundAliases
	extern CL_CapTurnRate
	extern floorf
	extern SND_SetEnvironmentEffects
	extern SND_SetChannelVolumes
	extern CL_GetLocalClientActiveCount
	extern CG_GetLocalClientViewParams
	extern R_AddCmdSaveScreenSection
	extern R_AddCmdBlendSavedScreenShockBlurred
	extern R_AddCmdSaveScreen
	extern sinf
	extern R_AddCmdBlendSavedScreenShockFlashed

;Exports of cg_shellshock:
	global cg_perturbations
	global EndShellShockSound
	global CG_Flashbanged
	global CG_PerturbCamera
	global CG_StartShellShock
	global CG_UpdateShellShock
	global CG_DrawShellShockSavedScreenBlendBlurred
	global CG_DrawShellShockSavedScreenBlendFlashed


SECTION .text


;EndShellShockSound(int)
EndShellShockSound:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	mov dword [esp+0x4], 0x0
	mov dword [esp], 0x3
	call SND_DeactivateChannelVolumes
	mov dword [esp+0x4], 0x0
	mov dword [esp], 0x2
	call SND_DeactivateEnvironmentEffects
	mov eax, cgArray
	mov edx, [eax+0x504dc]
	test edx, edx
	jnz EndShellShockSound_10
	leave
	ret
EndShellShockSound_10:
	mov dword [eax+0x504dc], 0x0
	mov dword [esp], _cstring_shellshock_end_a
	call CL_PickSoundAlias
	mov dword [esp+0x10], 0x1
	mov dword [esp+0xc], 0x0
	mov edx, vec3_origin
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x3ff
	mov [esp], eax
	call SND_PlaySoundAlias
	leave
	ret
	nop


;CG_Flashbanged(int)
CG_Flashbanged:
	push ebp
	mov ebp, esp
	mov edx, cgArray
	mov eax, [edx+0x504d4]
	add eax, [edx+0x504d8]
	sub eax, [edx+0x46128]
	test eax, eax
	jle CG_Flashbanged_10
	mov eax, [edx+0x504d0]
	mov eax, [eax+0x10]
	test eax, eax
	jnz CG_Flashbanged_20
CG_Flashbanged_10:
	xor eax, eax
	pop ebp
	ret
CG_Flashbanged_20:
	mov eax, 0x1
	pop ebp
	ret
	nop


;CG_PerturbCamera(cg_s*)
CG_PerturbCamera:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov eax, [ebp+0x8]
	pxor xmm7, xmm7
	ucomiss xmm7, [eax+0x504e4]
	jnz CG_PerturbCamera_10
	jp CG_PerturbCamera_10
	ucomiss xmm7, [eax+0x504e8]
	jp CG_PerturbCamera_10
	jz CG_PerturbCamera_20
CG_PerturbCamera_10:
	movss xmm6, dword [_float_1_00000000]
	movss [ebp-0x3c], xmm6
	movss xmm0, dword [eax+0x504e4]
	movss [ebp-0x38], xmm0
	movss xmm1, dword [eax+0x504e8]
	movss [ebp-0x34], xmm1
	mov dword [ebp-0x24], 0x0
	mov dword [ebp-0x20], 0x0
	movss [ebp-0x1c], xmm6
	lea edx, [ebp-0x38]
	lea ecx, [ebp-0x34]
	mulss xmm0, xmm0
	addss xmm0, xmm6
	mulss xmm1, xmm1
	addss xmm0, xmm1
	sqrtss xmm1, xmm0
	movss xmm5, dword [_data16_80000000]
	movaps xmm0, xmm1
	xorps xmm0, xmm5
	ucomiss xmm0, xmm7
	jb CG_PerturbCamera_30
	movaps xmm1, xmm6
CG_PerturbCamera_50:
	movss [ebp-0x3c], xmm1
	movaps xmm0, xmm1
	mulss xmm0, [edx]
	movss [edx], xmm0
	mulss xmm1, [ecx]
	movss [ecx], xmm1
	movss xmm3, dword [ebp-0x20]
	movaps xmm4, xmm3
	mulss xmm4, [ebp-0x34]
	movss xmm2, dword [ebp-0x1c]
	movaps xmm0, xmm2
	mulss xmm0, [ebp-0x38]
	subss xmm4, xmm0
	movss [ebp-0x30], xmm4
	lea esi, [ebp-0x2c]
	mulss xmm2, [ebp-0x3c]
	movss xmm0, dword [ebp-0x24]
	movaps xmm1, xmm0
	mulss xmm1, [ebp-0x34]
	subss xmm2, xmm1
	movss [ebp-0x2c], xmm2
	lea ebx, [ebp-0x28]
	mulss xmm0, [ebp-0x38]
	mulss xmm3, [ebp-0x3c]
	subss xmm0, xmm3
	movss [ebp-0x28], xmm0
	movaps xmm1, xmm4
	mulss xmm1, xmm4
	mulss xmm2, xmm2
	addss xmm1, xmm2
	mulss xmm0, xmm0
	addss xmm1, xmm0
	sqrtss xmm1, xmm1
	movaps xmm0, xmm1
	xorps xmm0, xmm5
	ucomiss xmm0, xmm7
	jb CG_PerturbCamera_40
	movaps xmm2, xmm6
CG_PerturbCamera_60:
	mulss xmm4, xmm2
	movss [ebp-0x30], xmm4
	movaps xmm0, xmm2
	mulss xmm0, [esi]
	movss [esi], xmm0
	mulss xmm2, [ebx]
	movss [ebx], xmm2
	lea edi, [ebp-0x3c]
	movss xmm3, dword [edx]
	movaps xmm0, xmm3
	mulss xmm0, [ebp-0x28]
	movss xmm2, dword [ecx]
	movaps xmm1, xmm2
	mulss xmm1, [ebp-0x2c]
	subss xmm0, xmm1
	movss [ebp-0x24], xmm0
	mulss xmm2, [ebp-0x30]
	movss xmm0, dword [ebp-0x3c]
	movaps xmm1, xmm0
	mulss xmm1, [ebp-0x28]
	subss xmm2, xmm1
	movss [ebp-0x20], xmm2
	mulss xmm0, [ebp-0x2c]
	mulss xmm3, [ebp-0x30]
	subss xmm0, xmm3
	movss [ebp-0x1c], xmm0
	lea ebx, [eax+0x492ec]
	lea esi, [ebp-0x60]
	mov [esp+0x4], esi
	mov [esp], ebx
	call AxisCopy
	mov [esp+0x8], ebx
	mov [esp+0x4], esi
	mov [esp], edi
	call MatrixMultiply
CG_PerturbCamera_20:
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_PerturbCamera_30:
	movaps xmm0, xmm6
	divss xmm0, xmm1
	movaps xmm1, xmm0
	jmp CG_PerturbCamera_50
CG_PerturbCamera_40:
	movaps xmm2, xmm6
	divss xmm2, xmm1
	jmp CG_PerturbCamera_60


;CG_StartShellShock(cg_s*, shellshock_parms_t const*, int, int)
CG_StartShellShock:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	mov eax, [ebp+0xc]
	mov [edx+0x504d0], eax
	mov eax, [ebp+0x10]
	mov [edx+0x504d4], eax
	mov eax, [ebp+0x14]
	mov [edx+0x504d8], eax
	pop ebp
	ret
	nop


;CG_UpdateShellShock(int, shellshock_parms_t const*, int, int)
CG_UpdateShellShock:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov edi, [ebp+0xc]
	mov eax, [ebp+0x10]
	mov esi, cgArray
	mov edx, [esi+0x46128]
	sub edx, eax
	mov [ebp-0x1c], edx
	test eax, eax
	jz CG_UpdateShellShock_10
	test edx, edx
	js CG_UpdateShellShock_10
	cmp byte [edi+0x20], 0x0
	jz CG_UpdateShellShock_20
	mov edx, [edi+0x128]
	mov eax, [ebp+0x14]
	add eax, [edi+0x244]
	lea ebx, [eax+edx]
	sub ebx, [ebp-0x1c]
	mov eax, [edi+0x124]
	cmp [ebp-0x1c], eax
	jl CG_UpdateShellShock_30
	cmp edx, ebx
	jl CG_UpdateShellShock_40
	test ebx, ebx
	js CG_UpdateShellShock_50
	cmp edx, ebx
	jg CG_UpdateShellShock_60
CG_UpdateShellShock_50:
	mov ecx, [edi+0x24c]
	mov ebx, [ebp+0x14]
	add ebx, ecx
	add ebx, [edi+0x248]
	sub ebx, [ebp-0x1c]
	test ebx, ebx
	jle CG_UpdateShellShock_70
	lea eax, [edi+0x21]
	mov [esp], eax
	call CL_PickSoundAlias
	mov esi, eax
	lea eax, [edi+0x61]
	mov [esp], eax
	call CL_PickSoundAlias
	mov edx, eax
	mov eax, [edi+0x248]
	test eax, eax
	jz CG_UpdateShellShock_80
	cmp ebx, eax
	jg CG_UpdateShellShock_80
	cvtsi2ss xmm0, ebx
	cvtsi2ss xmm1, eax
	divss xmm0, xmm1
	movss xmm1, dword [_float_1_00000000]
	subss xmm1, xmm0
CG_UpdateShellShock_220:
	mov dword [esp+0x1c], 0x1
	mov dword [esp+0x18], 0x0
	mov eax, vec3_origin
	mov [esp+0x14], eax
	mov dword [esp+0x10], 0x3ff
	mov dword [esp+0xc], 0x3f800000
	movss [esp+0x8], xmm1
	mov [esp+0x4], edx
	mov [esp], esi
	call SND_PlayBlendedSoundAliases
	mov ecx, [edi+0x24c]
CG_UpdateShellShock_70:
	mov esi, cgArray
	mov edx, [esi+0x46128]
	mov eax, edx
	sub eax, [ebp-0x1c]
	add eax, [ebp+0x14]
	add eax, ecx
	cmp edx, eax
	jge CG_UpdateShellShock_90
	mov ecx, [esi+0x504dc]
	test ecx, ecx
	jnz CG_UpdateShellShock_100
CG_UpdateShellShock_210:
	cmp byte [edi+0x250], 0x0
	jz CG_UpdateShellShock_110
CG_UpdateShellShock_170:
	mov ebx, [ebp+0x14]
	sub ebx, [ebp-0x1c]
	mov eax, [edi+0x254]
	cmp ebx, eax
	jge CG_UpdateShellShock_120
	test ebx, ebx
	jle CG_UpdateShellShock_130
	cvtsi2ss xmm1, ebx
	cvtsi2ss xmm0, eax
	divss xmm1, xmm0
	movss xmm2, dword [_float_1_00000000]
	ucomiss xmm1, xmm2
	jp CG_UpdateShellShock_140
	jz CG_UpdateShellShock_120
CG_UpdateShellShock_140:
	movss xmm0, dword [edi+0x258]
	subss xmm0, xmm2
	mulss xmm0, xmm1
	addss xmm0, xmm2
	movss [esi+0x504e0], xmm0
	movss xmm0, dword [edi+0x260]
	divss xmm0, xmm1
	movss [esp+0x8], xmm0
	movss xmm0, dword [edi+0x25c]
	divss xmm0, xmm1
	movss [esp+0x4], xmm0
	mov edx, [ebp+0x8]
	mov [esp], edx
	call CL_CapTurnRate
CG_UpdateShellShock_200:
	test ebx, ebx
	jle CG_UpdateShellShock_150
CG_UpdateShellShock_180:
	mov eax, [edi+0x14]
	cmp eax, ebx
	jg CG_UpdateShellShock_160
	movss xmm1, dword [_float_1_00000000]
	movss xmm5, dword [_float__2_00000000]
CG_UpdateShellShock_190:
	addss xmm5, [_float_3_00000000]
	mulss xmm5, xmm1
	mulss xmm5, xmm1
	mulss xmm5, [edi+0x1c]
	cvtsi2ss xmm4, dword [ebp-0x1c]
	mulss xmm4, [edi+0x18]
	movss [esp], xmm4
	movss [ebp-0x38], xmm4
	movss [ebp-0x48], xmm5
	call floorf
	fstp dword [ebp-0x20]
	cvttss2si edx, [ebp-0x20]
	cvtsi2ss xmm0, edx
	movss xmm4, dword [ebp-0x38]
	subss xmm4, xmm0
	mov eax, [ebp+0x14]
	shl eax, 0x4
	sub eax, [ebp+0x14]
	mov ecx, [ebp+0x14]
	lea eax, [ecx+eax*4]
	add edx, eax
	and edx, 0x7f
	shl edx, 0x3
	lea eax, [edx+cg_perturbations]
	movss xmm2, dword [eax+0x10]
	movss xmm3, dword [eax+0x8]
	movss xmm1, dword [edx+cg_perturbations]
	movss xmm0, dword [eax+0x18]
	subss xmm0, xmm2
	addss xmm0, xmm3
	subss xmm0, xmm1
	mov edx, cgArray
	subss xmm2, xmm1
	subss xmm1, xmm3
	subss xmm1, xmm0
	mulss xmm0, xmm4
	addss xmm1, xmm0
	mulss xmm1, xmm4
	addss xmm2, xmm1
	mulss xmm2, xmm4
	addss xmm3, xmm2
	movss xmm5, dword [ebp-0x48]
	mulss xmm3, xmm5
	movss [edx+0x504e4], xmm3
	movss xmm2, dword [eax+0x14]
	movss xmm3, dword [eax+0xc]
	movss xmm1, dword [eax+0x4]
	movss xmm0, dword [eax+0x1c]
	subss xmm0, xmm2
	addss xmm0, xmm3
	subss xmm0, xmm1
	subss xmm2, xmm1
	subss xmm1, xmm3
	subss xmm1, xmm0
	mulss xmm0, xmm4
	addss xmm1, xmm0
	mulss xmm1, xmm4
	addss xmm2, xmm1
	mulss xmm4, xmm2
	addss xmm3, xmm4
	mulss xmm5, xmm3
	movss [edx+0x504e8], xmm5
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_UpdateShellShock_10:
	mov eax, [ebp+0x8]
	call EndShellShockSound
	mov dword [esi+0x504e0], 0x3f800000
	xor ebx, ebx
	mov [esp+0x8], ebx
	mov [esp+0x4], ebx
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call CL_CapTurnRate
	mov [esi+0x504e4], ebx
	mov [esi+0x504e8], ebx
	mov dword [esi+0x504ec], 0x0
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_UpdateShellShock_20:
	mov eax, [ebp+0x8]
	call EndShellShockSound
	cmp byte [edi+0x250], 0x0
	jnz CG_UpdateShellShock_170
CG_UpdateShellShock_110:
	mov dword [esi+0x504e0], 0x3f800000
	xor eax, eax
	mov [esp+0x8], eax
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CL_CapTurnRate
	mov ebx, [ebp+0x14]
	sub ebx, [ebp-0x1c]
	test ebx, ebx
	jg CG_UpdateShellShock_180
CG_UpdateShellShock_150:
	mov edx, cgArray
	xor eax, eax
	mov [edx+0x504e4], eax
	mov [edx+0x504e8], eax
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_UpdateShellShock_40:
	mov dword [esp+0x10], 0x0
	mov eax, [edi+0x130]
	mov [esp+0xc], eax
	mov eax, [edi+0x12c]
	mov [esp+0x8], eax
	lea eax, [edi+0x134]
	mov [esp+0x4], eax
	mov dword [esp], 0x2
	call SND_SetEnvironmentEffects
	mov dword [esp+0x8], 0x0
	lea eax, [edi+0x144]
	mov [esp+0x4], eax
	mov dword [esp], 0x3
	call SND_SetChannelVolumes
	jmp CG_UpdateShellShock_50
CG_UpdateShellShock_160:
	cvtsi2ss xmm1, ebx
	cvtsi2ss xmm0, eax
	divss xmm1, xmm0
	movaps xmm5, xmm1
	mulss xmm5, [_float__2_00000000]
	jmp CG_UpdateShellShock_190
CG_UpdateShellShock_120:
	mov eax, [edi+0x258]
	mov [esi+0x504e0], eax
	mov eax, [edi+0x260]
	mov [esp+0x8], eax
	mov eax, [edi+0x25c]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CL_CapTurnRate
	jmp CG_UpdateShellShock_200
CG_UpdateShellShock_90:
	cmp eax, [esi+0x504dc]
	jz CG_UpdateShellShock_210
	mov [esi+0x504dc], eax
	mov ebx, edx
	sub ebx, eax
	lea eax, [edi+0xa1]
	mov [esp], eax
	call CL_PickSoundAlias
	mov dword [esp+0x10], 0x1
	mov [esp+0xc], ebx
CG_UpdateShellShock_230:
	mov edx, vec3_origin
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x3ff
	mov [esp], eax
	call SND_PlaySoundAlias
	jmp CG_UpdateShellShock_210
CG_UpdateShellShock_80:
	pxor xmm1, xmm1
	jmp CG_UpdateShellShock_220
CG_UpdateShellShock_30:
	sub eax, [ebp-0x1c]
	mov [esp+0x10], eax
	mov eax, [edi+0x130]
	mov [esp+0xc], eax
	mov eax, [edi+0x12c]
	mov [esp+0x8], eax
	lea eax, [edi+0x134]
	mov [esp+0x4], eax
	mov dword [esp], 0x2
	call SND_SetEnvironmentEffects
	mov eax, [edi+0x124]
	sub eax, [ebp-0x1c]
	mov [esp+0x8], eax
	lea eax, [edi+0x144]
	mov [esp+0x4], eax
	mov dword [esp], 0x3
	call SND_SetChannelVolumes
	jmp CG_UpdateShellShock_50
CG_UpdateShellShock_100:
	mov dword [esi+0x504dc], 0x0
	lea eax, [edi+0xe1]
	mov [esp], eax
	call CL_PickSoundAlias
	mov dword [esp+0x10], 0x1
	mov dword [esp+0xc], 0x0
	jmp CG_UpdateShellShock_230
CG_UpdateShellShock_60:
	mov [esp+0x4], ebx
	mov dword [esp], 0x2
	call SND_DeactivateEnvironmentEffects
	mov [esp+0x4], ebx
	mov dword [esp], 0x3
	call SND_DeactivateChannelVolumes
	jmp CG_UpdateShellShock_50
CG_UpdateShellShock_130:
	mov dword [esi+0x504e0], 0x3f800000
	xor eax, eax
	mov [esp+0x8], eax
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call CL_CapTurnRate
	jmp CG_UpdateShellShock_200
	nop


;CG_DrawShellShockSavedScreenBlendBlurred(int, shellshock_parms_t const*, int, int)
CG_DrawShellShockSavedScreenBlendBlurred:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x30
	mov eax, [ebp+0x10]
	test eax, eax
	jz CG_DrawShellShockSavedScreenBlendBlurred_10
	mov ebx, [ebp+0x14]
	test ebx, ebx
	jle CG_DrawShellShockSavedScreenBlendBlurred_10
	add eax, [ebp+0x14]
	mov ebx, cgArray
	sub eax, [ebx+0x46128]
	test eax, eax
	jle CG_DrawShellShockSavedScreenBlendBlurred_20
	mov edx, [ebp+0xc]
	mov esi, [edx+0x4]
	mov edx, [edx]
	cmp eax, edx
	jl CG_DrawShellShockSavedScreenBlendBlurred_30
CG_DrawShellShockSavedScreenBlendBlurred_60:
	mov ecx, [ebx+0x504ec]
	test ecx, ecx
	jnz CG_DrawShellShockSavedScreenBlendBlurred_40
CG_DrawShellShockSavedScreenBlendBlurred_70:
	call CL_GetLocalClientActiveCount
	sub eax, 0x1
	jle CG_DrawShellShockSavedScreenBlendBlurred_50
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_GetLocalClientViewParams
	mov edx, [ebp+0x8]
	mov [esp+0x10], edx
	mov edx, [eax+0xc]
	mov [esp+0xc], edx
	mov edx, [eax+0x8]
	mov [esp+0x8], edx
	mov edx, [eax+0x4]
	mov [esp+0x4], edx
	mov eax, [eax]
	mov [esp], eax
	call R_AddCmdSaveScreenSection
CG_DrawShellShockSavedScreenBlendBlurred_90:
	mov eax, cgArray
	mov dword [eax+0x504ec], 0x1
	mov eax, 0x1
	add esp, 0x30
	pop ebx
	pop esi
	pop ebp
	ret
CG_DrawShellShockSavedScreenBlendBlurred_10:
	mov eax, cgArray
	mov dword [eax+0x504ec], 0x0
	xor eax, eax
CG_DrawShellShockSavedScreenBlendBlurred_80:
	add esp, 0x30
	pop ebx
	pop esi
	pop ebp
	ret
CG_DrawShellShockSavedScreenBlendBlurred_30:
	cvtsi2ss xmm1, esi
	cvtsi2ss xmm0, eax
	cvtsi2ss xmm2, edx
	divss xmm0, xmm2
	mulss xmm1, xmm0
	addss xmm1, [_float_0_50000000]
	movss [esp], xmm1
	call floorf
	fstp dword [ebp-0xc]
	cvttss2si esi, [ebp-0xc]
	jmp CG_DrawShellShockSavedScreenBlendBlurred_60
CG_DrawShellShockSavedScreenBlendBlurred_40:
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_GetLocalClientViewParams
	mov edx, [ebp+0x8]
	mov [esp+0x14], edx
	mov edx, [eax+0xc]
	mov [esp+0x10], edx
	mov edx, [eax+0x8]
	mov [esp+0xc], edx
	mov edx, [eax+0x4]
	mov [esp+0x8], edx
	mov eax, [eax]
	mov [esp+0x4], eax
	mov [esp], esi
	call R_AddCmdBlendSavedScreenShockBlurred
	jmp CG_DrawShellShockSavedScreenBlendBlurred_70
CG_DrawShellShockSavedScreenBlendBlurred_20:
	mov dword [ebx+0x504ec], 0x0
	xor eax, eax
	jmp CG_DrawShellShockSavedScreenBlendBlurred_80
CG_DrawShellShockSavedScreenBlendBlurred_50:
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call R_AddCmdSaveScreen
	jmp CG_DrawShellShockSavedScreenBlendBlurred_90
	add [eax], al


;CG_DrawShellShockSavedScreenBlendFlashed(int, shellshock_parms_t const*, int, int)
CG_DrawShellShockSavedScreenBlendFlashed:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x64
	mov eax, [ebp+0x10]
	test eax, eax
	jz CG_DrawShellShockSavedScreenBlendFlashed_10
	mov edx, [ebp+0x14]
	test edx, edx
	jle CG_DrawShellShockSavedScreenBlendFlashed_10
	add eax, [ebp+0x14]
	mov ebx, cgArray
	sub eax, [ebx+0x46128]
	test eax, eax
	jle CG_DrawShellShockSavedScreenBlendFlashed_20
	mov edx, [ebp+0xc]
	cvtsi2ss xmm1, dword [edx+0x8]
	cvtsi2ss xmm2, dword [edx+0xc]
	cvtsi2ss xmm0, eax
	ucomiss xmm1, xmm0
	ja CG_DrawShellShockSavedScreenBlendFlashed_30
	movss xmm1, dword [_float_0_50000000]
	ucomiss xmm2, xmm0
	ja CG_DrawShellShockSavedScreenBlendFlashed_40
CG_DrawShellShockSavedScreenBlendFlashed_60:
	movss xmm2, dword [_float_0_50000000]
CG_DrawShellShockSavedScreenBlendFlashed_70:
	cvtss2sd xmm0, xmm1
	mulsd xmm0, [_double_3_14159265]
	cvtsd2ss xmm0, xmm0
	movss [esp], xmm0
	movss [ebp-0x38], xmm2
	call sinf
	fstp dword [ebp-0xc]
	movss xmm0, dword [_float_1_00000000]
	addss xmm0, [ebp-0xc]
	movss xmm3, dword [_float_0_50000000]
	mulss xmm3, xmm0
	movss [ebp-0xc], xmm3
	movss xmm2, dword [ebp-0x38]
	cvtss2sd xmm0, xmm2
	mulsd xmm0, [_double_3_14159265]
	cvtsd2ss xmm0, xmm0
	movss [esp], xmm0
	call sinf
	fstp dword [ebp-0x3c]
	movss xmm0, dword [ebp-0x3c]
	addss xmm0, [_float_1_00000000]
	mulss xmm0, [_float_0_50000000]
	mov ebx, [ebx+0x504ec]
	test ebx, ebx
	jz CG_DrawShellShockSavedScreenBlendFlashed_50
	mov eax, [ebp+0x8]
	mov [esp], eax
	movss [ebp-0x28], xmm0
	call CG_GetLocalClientViewParams
	mov edx, [eax+0xc]
	mov [esp+0x14], edx
	mov edx, [eax+0x8]
	mov [esp+0x10], edx
	mov edx, [eax+0x4]
	mov [esp+0xc], edx
	mov eax, [eax]
	mov [esp+0x8], eax
	movss xmm0, dword [ebp-0x28]
	movss [esp+0x4], xmm0
	movss xmm0, dword [ebp-0xc]
	movss [esp], xmm0
	call R_AddCmdBlendSavedScreenShockFlashed
CG_DrawShellShockSavedScreenBlendFlashed_90:
	mov eax, cgArray
	mov dword [eax+0x504ec], 0x1
	mov eax, 0x1
	add esp, 0x64
	pop ebx
	pop ebp
	ret
CG_DrawShellShockSavedScreenBlendFlashed_10:
	mov eax, cgArray
	mov dword [eax+0x504ec], 0x0
	xor eax, eax
CG_DrawShellShockSavedScreenBlendFlashed_100:
	add esp, 0x64
	pop ebx
	pop ebp
	ret
CG_DrawShellShockSavedScreenBlendFlashed_30:
	movaps xmm3, xmm0
	divss xmm3, xmm1
	movaps xmm1, xmm3
	subss xmm1, [_float_0_50000000]
	ucomiss xmm2, xmm0
	jbe CG_DrawShellShockSavedScreenBlendFlashed_60
CG_DrawShellShockSavedScreenBlendFlashed_40:
	divss xmm0, xmm2
	movaps xmm2, xmm0
	subss xmm2, [_float_0_50000000]
	jmp CG_DrawShellShockSavedScreenBlendFlashed_70
CG_DrawShellShockSavedScreenBlendFlashed_50:
	call CL_GetLocalClientActiveCount
	sub eax, 0x1
	jle CG_DrawShellShockSavedScreenBlendFlashed_80
	mov edx, [ebp+0x8]
	mov [esp], edx
	call CG_GetLocalClientViewParams
	mov edx, [ebp+0x8]
	mov [esp+0x10], edx
	mov edx, [eax+0xc]
	mov [esp+0xc], edx
	mov edx, [eax+0x8]
	mov [esp+0x8], edx
	mov edx, [eax+0x4]
	mov [esp+0x4], edx
	mov eax, [eax]
	mov [esp], eax
	call R_AddCmdSaveScreenSection
	jmp CG_DrawShellShockSavedScreenBlendFlashed_90
CG_DrawShellShockSavedScreenBlendFlashed_20:
	mov dword [ebx+0x504ec], 0x0
	xor eax, eax
	jmp CG_DrawShellShockSavedScreenBlendFlashed_100
CG_DrawShellShockSavedScreenBlendFlashed_80:
	mov eax, [ebp+0x8]
	mov [esp], eax
	call R_AddCmdSaveScreen
	jmp CG_DrawShellShockSavedScreenBlendFlashed_90


;Initialized global or static variables of cg_shellshock:
SECTION .data


;Initialized constant data of cg_shellshock:
SECTION .rdata
cg_perturbations: dd 0xbf1044e1, 0xbb912989, 0xbe906a6e, 0xbf4207e6, 0x3ed37ae5, 0x3e7a1ba0, 0x3f072420, 0xbf395150, 0xbea8d888, 0x3f2b7803, 0xbec9dae0, 0xbf4359de, 0x3e013c68, 0x3efedb94, 0x3ba36199, 0xbc678184, 0x3f0f5675, 0x3de710cb, 0xbeaa8aa4, 0xbf12c2ad, 0x3eabba13, 0xbddb7f17, 0xbf11adeb, 0xbe5a41a2, 0xbe2aad1d, 0x3f48fb44, 0x3e99641f, 0x3d19fb1e, 0xbf045165, 0x3f02c11a, 0x3e0d523b, 0x3d0ea290, 0xbe1fea3e, 0x3f543c7d, 0xbf7fdc7b, 0x3ca66fd6, 0x3e999d67, 0x3e8181e0, 0x3cf78573, 0xbe976a2f, 0xbf6ad83c, 0xbd4fb656, 0x3d34f2f1, 0xbe89e03f, 0x3f16a2f5, 0x3eb9a3b1, 0xbec283f5, 0x3f1e84cf, 0x3e51569f, 0xbc9f1cfc, 0x3c978b37, 0x3eefa80d, 0x3f6a8b3b, 0xbe7dd3bb, 0x3b78f8a5, 0x3ddd9d34, 0x3d6af577, 0x3f1b328b, 0x3ea63151, 0x3e228ae7, 0xbe05a965, 0xbe3bca10, 0x3f373648, 0xbeba4b99, 0x3f7bf855, 0x3dd948dc, 0xbb591eeb, 0x3eb0e9f7, 0xbea4050c, 0xbf12ed78, 0x3d81f4b2, 0xbb544567, 0xbf11f6dc, 0xbf426256, 0x3dda059a, 0x3e914489, 0xbf2b0cbb, 0x3e11ce29, 0xbf004956, 0xbf385250, 0xbe81ae0c, 0x3f0626f6, 0xbd833e79, 0xbe29ecf6, 0xbe475819, 0x3eddfa44, 0xbe904817, 0xbed5e28b, 0x3d3b8a1a, 0x3ece542e, 0x3dd72bcb, 0xbf0f167f, 0x3e9fde72, 0x3f30359c, 0xbe86ce79, 0xbe837cbb, 0x3f28c06a, 0x3d90bc7b, 0x3dbfbe77, 0xbd3fbdf1, 0xbf600150, 0x3e93b774, 0x3ea8a1be, 0x3dd8f798, 0xbe39a911, 0x3e850d06, 0x3e85f00b, 0xbd97b203, 0xbe97980f, 0x3d027d89, 0x3d1e0a42, 0x3f10e1e7, 0xbe81c38b, 0xbf37c600, 0xbe58eb89, 0x3eac4c7b, 0x3f63df1a, 0x3ba2339c, 0xbf7ad5d0, 0xbe2ee393, 0x3d39bcba, 0x3cb630a9, 0xbeb10c2c, 0x3f05d074, 0x3dde425b, 0x3e2964e9, 0xbf12a2c2, 0xbef2615b, 0x3ebcb9cb, 0xbf5da7f4, 0x3d9ac4f8, 0xbea7c8b0, 0xbeeec5d2, 0xbf10cac5, 0xbeb7b97c, 0x3f1c3cc0, 0x3f1a9824, 0x3ee14ab2, 0x3b218bd6, 0xbe13ea70, 0xbe96ff19, 0x3f4ccad5, 0xbce837f8, 0xbde5857b, 0xbc1b3073, 0x3f2fa1b2, 0x3d91b717, 0x3ca31a4c, 0x3f7672da, 0x3ccc319c, 0x3e9e5083, 0x3f5f1dd6, 0xbdfd816b, 0xbe9fe5eb, 0xbeddb963, 0xbf655f03, 0x3f766613, 0xbe870dc7, 0xbf02ef0b, 0xbeb80d80, 0xbd3446fa, 0x3ca58f71, 0xbddfeda6, 0xbf42dff8, 0x3e2f1b69, 0xbddc1483, 0x3ed67ba2, 0x3edededb, 0x3ee3cf2d, 0xbe0efe93, 0x3f04c144, 0x3ebb5fc4, 0xbf01ca8e, 0x3f27d534, 0x3f02b1c4, 0x3f024b45, 0xbe97a3fd, 0xbf2d03a7, 0x3f59f0e5, 0x3e9d4845, 0xbc0ad688, 0xbe41461b, 0x3f0d7df2, 0x3edaab04, 0x3da48627, 0xbb37d417, 0x3d120c07, 0x3f1c69e8, 0x3f454595, 0x3ecc3937, 0xbf05aac5, 0x3ea612c7, 0x3bc61523, 0x3d2f4278, 0x3ef70479, 0x3f5957ac, 0x3e677bc0, 0xbf05b9d8, 0xbf2cb2fb, 0xbf0c3d8a, 0xbee24d90, 0x3f194d94, 0xbe3c5f39, 0xbe8a5c1c, 0x3f04d35b, 0x3f228bd2, 0x3edc5b8e, 0x3e00435f, 0xbe3df2aa, 0xbe87672c, 0x3cc21188, 0x3ea03ea7, 0xbee37996, 0x3f5994e2, 0x3e957e24, 0xbf65ce4a, 0xbd3bb40b, 0xbd41094a, 0xbde9f9cf, 0x3f0310cb, 0x3f3cf649, 0x3f1b9011, 0xbf49718f, 0xbec4a31e, 0x3e3b6284, 0x3e87b95a, 0xbecc84b6, 0xbe9e3950, 0xbef73e03, 0x3e8804da, 0x3d746994, 0x3dc83665, 0x3f4b0d74, 0xbc82d7b6, 0x3e4e7f6f, 0x3efc21c0, 0xbf351644, 0xbcd68c69, 0xbea44aa5, 0x3ebe9b7c, 0x3f12a3df, 0xbf09898b, 0x3eacdc66, 0x3dee2b06, 0xbf1b4602, 0x3e3188b1, 0xbe2a975b, 0xbeab93cd, 0xbf158091, 0x3e3b4e55, 0xbf12d224, 0xbf1f93bc, 0xbec910e4, 0x3ee62175, 0x3e1b1c00, 0x3f572485, 0xbf1044e1, 0xbb912989, 0xbe906a6e, 0xbf4207e6, 0x3ed37ae5, 0x3e7a1ba0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0


;Zero initialized global or static variables of cg_shellshock:
SECTION .bss


;All cstrings:
SECTION .rdata
_cstring_shellshock_end_a:		db "shellshock_end_abort",0



;All constant floats and doubles:
SECTION .rdata
_float_1_00000000:		dd 0x3f800000	; 1
_data16_80000000:		dd 0x80000000, 0x0, 0x0, 0x0	; OWORD
_float__2_00000000:		dd 0xc0000000	; -2
_float_3_00000000:		dd 0x40400000	; 3
_float_0_50000000:		dd 0x3f000000	; 0.5
_double_3_14159265:		dq 0x400921fb54442d18	; 3.14159

