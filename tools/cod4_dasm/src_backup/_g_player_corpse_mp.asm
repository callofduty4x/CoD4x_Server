;Imports of g_player_corpse_mp:
	extern g_scr_data
	extern _Z17Com_GetServerDObji
	extern _Z19BG_UpdatePlayerDObjiP6DObj_sP13entityState_sP12clientInfo_ti
	extern _Z18BG_PlayerAnimationiPK13entityState_sP12clientInfo_t
	extern _Z10G_RunThinkP9gentity_s
	extern _Z14XAnimCalcDeltaP6DObj_sjPfS1_h
	extern level
	extern _Z21BG_EvaluateTrajectoryPK12trajectory_tiPf
	extern _Z14G_TraceCapsuleP7trace_tPKfS2_S2_S2_ii
	extern _Z13SV_LinkEntityP9gentity_s
	extern _Z22G_TraceCapsuleCompletePKfS0_S0_S0_ii
	extern _Z12AngleVectorsPKfPfS1_S1_
	extern _Z16SV_PointContentsPKfii
	extern _Z20Trace_GetEntityHitIdPK7trace_t
	extern g_entities
	extern _Z12AxisToAnglesPA3_KfPf
	extern _Z10G_SetAngleP9gentity_sPKf
	extern _Z12G_FreeEntityP9gentity_s
	extern scr_const
	extern _Z6G_FindP9gentity_sit

;Exports of g_player_corpse_mp:
	global _Z11G_RunCorpseP9gentity_s
	global _Z15G_RunCorpseMoveP9gentity_s
	global _Z17PlayerCorpse_FreeP9gentity_s
	global _Z22G_GetPlayerCorpseIndexP9gentity_s
	global _Z26G_GetFreePlayerCorpseIndexv


SECTION .text


;G_RunCorpse(gentity_s*)
_Z11G_RunCorpseP9gentity_s:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov esi, [ebp+0x8]
	mov [esp], esi
	call _Z15G_RunCorpseMoveP9gentity_s
	mov ebx, [esi]
	xor ecx, ecx
	mov edi, g_scr_data
	mov eax, edi
_Z11G_RunCorpseP9gentity_s_20:
	cmp ebx, [eax+0x10c0]
	jz _Z11G_RunCorpseP9gentity_s_10
	add ecx, 0x1
	add eax, 0x4dc
	cmp ecx, 0x8
	jnz _Z11G_RunCorpseP9gentity_s_20
	and ecx, 0xffffff00
_Z11G_RunCorpseP9gentity_s_10:
	lea edx, [ecx+ecx*4]
	mov eax, edx
	shl eax, 0x5
	sub eax, edx
	lea eax, [ecx+eax*2]
	lea edi, [edi+eax*4+0x10c8]
	mov [esp], ebx
	call _Z17Com_GetServerDObji
	mov dword [esp+0x10], 0x0
	mov [esp+0xc], edi
	mov [esp+0x8], esi
	mov [esp+0x4], eax
	mov dword [esp], 0xffffffff
	call _Z19BG_UpdatePlayerDObjiP6DObj_sP13entityState_sP12clientInfo_ti
	mov eax, [esi]
	mov [esp], eax
	call _Z17Com_GetServerDObji
	test eax, eax
	jz _Z11G_RunCorpseP9gentity_s_30
	mov [esp+0x8], edi
	mov [esp+0x4], esi
	mov dword [esp], 0xffffffff
	call _Z18BG_PlayerAnimationiPK13entityState_sP12clientInfo_t
_Z11G_RunCorpseP9gentity_s_30:
	mov [ebp+0x8], esi
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z10G_RunThinkP9gentity_s


;G_RunCorpseMove(gentity_s*)
_Z15G_RunCorpseMoveP9gentity_s:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x11c
	mov edi, [ebp+0x8]
	lea eax, [edi+0xc]
	mov [ebp-0x108], eax
	mov eax, [edi+0xc]
	sub eax, 0x9
	cmp eax, 0x2
	setbe byte [ebp-0xed]
	mov ebx, [edi]
	xor ecx, ecx
	mov esi, g_scr_data
	mov eax, esi
_Z15G_RunCorpseMoveP9gentity_s_20:
	cmp ebx, [eax+0x10c0]
	jz _Z15G_RunCorpseMoveP9gentity_s_10
	add ecx, 0x1
	add eax, 0x4dc
	cmp ecx, 0x8
	jnz _Z15G_RunCorpseMoveP9gentity_s_20
	and ecx, 0xffffff00
_Z15G_RunCorpseMoveP9gentity_s_10:
	lea edx, [ecx+ecx*4]
	mov eax, edx
	shl eax, 0x5
	sub eax, edx
	lea eax, [ecx+eax*2]
	lea esi, [esi+eax*4+0x10bc]
	mov [ebp-0xf4], esi
	mov [esp], ebx
	call _Z17Com_GetServerDObji
	mov edx, eax
	test eax, eax
	jz _Z15G_RunCorpseMoveP9gentity_s_30
	mov dword [esp+0x10], 0x1
	lea eax, [ebp-0x48]
	mov [esp+0xc], eax
	lea eax, [ebp-0x24]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov [esp], edx
	call _Z14XAnimCalcDeltaP6DObj_sjPfS1_h
	mov edx, [ebp-0xf4]
	cmp byte [edx+0x4d8], 0x0
	jnz _Z15G_RunCorpseMoveP9gentity_s_40
	movss xmm0, dword [ebp-0x48]
	movss xmm1, dword [ebp-0x44]
	movss xmm2, dword [ebp-0x40]
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	ucomiss xmm0, [_float_1_00000000]
	ja _Z15G_RunCorpseMoveP9gentity_s_50
_Z15G_RunCorpseMoveP9gentity_s_30:
	xor ebx, ebx
_Z15G_RunCorpseMoveP9gentity_s_170:
	mov ecx, [ebp-0xf4]
	cmp byte [ecx+0x4d8], 0x0
	jnz _Z15G_RunCorpseMoveP9gentity_s_60
	test bl, bl
	jz _Z15G_RunCorpseMoveP9gentity_s_70
_Z15G_RunCorpseMoveP9gentity_s_60:
	lea eax, [ebp-0x30]
	mov [esp+0x8], eax
	mov eax, level
	mov eax, [eax+0x1ec]
	mov [esp+0x4], eax
	mov edx, [ebp-0x108]
	mov [esp], edx
	call _Z21BG_EvaluateTrajectoryPK12trajectory_tiPf
	test bl, bl
	jnz _Z15G_RunCorpseMoveP9gentity_s_80
	pxor xmm0, xmm0
	movss [ebp-0xc0], xmm0
	movss [ebp-0xbc], xmm0
	movss [ebp-0xd0], xmm0
_Z15G_RunCorpseMoveP9gentity_s_160:
	mov eax, [edi+0x190]
	mov [ebp-0xf8], eax
	lea edx, [edi+0x154]
	mov [ebp-0x104], edx
	cmp word [edi+0x154], 0x0
	jnz _Z15G_RunCorpseMoveP9gentity_s_90
	mov eax, 0x3ff
_Z15G_RunCorpseMoveP9gentity_s_130:
	lea ecx, [edi+0x114]
	mov [ebp-0x100], ecx
	lea edx, [edi+0x108]
	mov [ebp-0xfc], edx
	lea esi, [edi+0x13c]
	mov ecx, [ebp-0xf8]
	mov [esp+0x18], ecx
	mov [esp+0x14], eax
	lea eax, [ebp-0x30]
	mov [esp+0x10], eax
	mov edx, [ebp-0x100]
	mov [esp+0xc], edx
	mov ecx, [ebp-0xfc]
	mov [esp+0x8], ecx
	mov [esp+0x4], esi
	lea eax, [ebp-0xb0]
	mov [esp], eax
	call _Z14G_TraceCapsuleP7trace_tPKfS2_S2_S2_ii
	movss xmm1, dword [ebp-0xb0]
	movss xmm0, dword [edi+0x13c]
	movss xmm2, dword [ebp-0x30]
	subss xmm2, xmm0
	mulss xmm2, xmm1
	addss xmm0, xmm2
	movss [ebp-0xc4], xmm0
	lea eax, [edi+0x140]
	mov [ebp-0xec], eax
	movss xmm0, dword [edi+0x140]
	movss xmm2, dword [ebp-0x2c]
	subss xmm2, xmm0
	mulss xmm2, xmm1
	addss xmm0, xmm2
	movss [ebp-0xc8], xmm0
	lea eax, [edi+0x144]
	mov [ebp-0xe8], eax
	movss xmm0, dword [edi+0x144]
	movss xmm2, dword [ebp-0x28]
	subss xmm2, xmm0
	mulss xmm1, xmm2
	addss xmm0, xmm1
	movss [ebp-0xcc], xmm0
	movss xmm0, dword [ebp-0xc4]
	movss [edi+0x13c], xmm0
	movss xmm1, dword [ebp-0xc8]
	movss [edi+0x140], xmm1
	movss xmm2, dword [ebp-0xcc]
	movss [edi+0x144], xmm2
	cmp byte [ebp-0x87], 0x0
	jz _Z15G_RunCorpseMoveP9gentity_s_100
	mov dword [ebp-0xb0], 0x0
_Z15G_RunCorpseMoveP9gentity_s_100:
	mov [esp], edi
	call _Z13SV_LinkEntityP9gentity_s
	mov [esp], edi
	call _Z10G_RunThinkP9gentity_s
	cmp byte [edi+0x100], 0x0
	jz _Z15G_RunCorpseMoveP9gentity_s_70
	movss xmm0, dword [_float_1_00000000]
	ucomiss xmm0, [ebp-0xb0]
	jnz _Z15G_RunCorpseMoveP9gentity_s_110
	jp _Z15G_RunCorpseMoveP9gentity_s_110
	mov eax, [ebp-0xf4]
	cmp byte [eax+0x4d8], 0x0
	jnz _Z15G_RunCorpseMoveP9gentity_s_70
	test bl, bl
	jz _Z15G_RunCorpseMoveP9gentity_s_70
	cmp byte [ebp-0xed], 0x1
	sbb eax, eax
	and eax, 0xfffffff6
	add eax, 0xb
	mov [edi+0xc], eax
	lea edx, [edi+0x18]
	mov [ebp-0xe4], edx
	movss xmm0, dword [ebp-0xc4]
	movss [edi+0x18], xmm0
	lea eax, [edi+0x1c]
	mov [ebp-0xe0], eax
	movss xmm0, dword [ebp-0xc8]
	movss [edi+0x1c], xmm0
	lea eax, [edi+0x20]
	mov [ebp-0xdc], eax
	movss xmm0, dword [ebp-0xcc]
	movss [edi+0x20], xmm0
	mov dword [edi+0x10], 0x0
	mov dword [edi+0x14], 0x0
	lea ebx, [edi+0x24]
	xor eax, eax
	mov [edi+0x24], eax
	lea edx, [edi+0x28]
	mov [ebp-0xd8], edx
	mov [edi+0x28], eax
	lea ecx, [edi+0x2c]
	mov [ebp-0xd4], ecx
	mov [edi+0x2c], eax
	movss xmm0, dword [ebp-0x28]
	subss xmm0, [_float_1_00000000]
	movss [ebp-0x28], xmm0
	mov eax, [ebp-0x104]
	cmp word [eax], 0x0
	jnz _Z15G_RunCorpseMoveP9gentity_s_120
	mov eax, 0x3ff
_Z15G_RunCorpseMoveP9gentity_s_240:
	mov ecx, [ebp-0xf8]
	mov [esp+0x14], ecx
	mov [esp+0x10], eax
	lea eax, [ebp-0x30]
	mov [esp+0xc], eax
	mov edx, [ebp-0x100]
	mov [esp+0x8], edx
	mov ecx, [ebp-0xfc]
	mov [esp+0x4], ecx
	mov [esp], esi
	call _Z22G_TraceCapsuleCompletePKfS0_S0_S0_ii
	test eax, eax
	jz _Z15G_RunCorpseMoveP9gentity_s_70
	mov eax, [ebp-0xf4]
	mov byte [eax+0x4d8], 0x1
	cmp byte [ebp-0xed], 0x1
	sbb eax, eax
	and eax, 0xfffffffb
	add eax, 0xa
	mov [edi+0xc], eax
	movss xmm0, dword [ebp-0xc4]
	mov edx, [ebp-0xe4]
	movss [edx], xmm0
	movss xmm0, dword [ebp-0xc8]
	mov eax, [ebp-0xe0]
	movss [eax], xmm0
	movss xmm0, dword [ebp-0xcc]
	mov eax, [ebp-0xdc]
	movss [eax], xmm0
	xor eax, eax
	mov [ebx], eax
	mov edx, [ebp-0xd8]
	mov [edx], eax
	mov ecx, [ebp-0xd4]
	mov [ecx], eax
	movss xmm1, dword [ebp-0x48]
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x54]
	addss xmm0, [ebx]
	movss [ebx], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x50]
	addss xmm0, [ebx+0x4]
	movss [edx], xmm0
	mulss xmm1, [ebp-0x4c]
	addss xmm1, [ebx+0x8]
	movss [ecx], xmm1
	movss xmm0, dword [ebp-0x44]
	movss xmm1, dword [ebp-0xd0]
	mulss xmm1, xmm0
	movss [ebp-0xd0], xmm1
	addss xmm1, [ebx]
	movss [ebx], xmm1
	movss xmm2, dword [ebp-0xbc]
	mulss xmm2, xmm0
	movss [ebp-0xbc], xmm2
	addss xmm2, [ebx+0x4]
	movss [edx], xmm2
	mulss xmm0, [ebp-0xc0]
	addss xmm0, [ebx+0x8]
	movss [ecx], xmm0
	mov eax, level
	mov eax, [eax+0x1ec]
	mov [edi+0x10], eax
	mov dword [edi+0x14], 0x0
_Z15G_RunCorpseMoveP9gentity_s_70:
	add esp, 0x11c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z15G_RunCorpseMoveP9gentity_s_90:
	movzx eax, word [edi+0x154]
	sub eax, 0x1
	jmp _Z15G_RunCorpseMoveP9gentity_s_130
_Z15G_RunCorpseMoveP9gentity_s_40:
	xor ebx, ebx
	jmp _Z15G_RunCorpseMoveP9gentity_s_60
_Z15G_RunCorpseMoveP9gentity_s_80:
	mov dword [esp+0xc], 0x0
	lea eax, [ebp-0x60]
	mov [esp+0x8], eax
	lea eax, [ebp-0x54]
	mov [esp+0x4], eax
	lea eax, [edi+0x148]
	mov [esp], eax
	call _Z12AngleVectorsPKfPfS1_S1_
	movss xmm3, dword [_data16_80000000]
	movss xmm5, dword [ebp-0x60]
	xorps xmm5, xmm3
	movss xmm6, dword [ebp-0x5c]
	xorps xmm6, xmm3
	movss xmm7, dword [ebp-0x58]
	xorps xmm7, xmm3
	movss xmm4, dword [ebp-0x54]
	movss xmm0, dword [ebp-0x50]
	movss xmm2, dword [ebp-0x4c]
	movaps xmm1, xmm4
	mulss xmm1, xmm4
	mulss xmm0, xmm0
	addss xmm1, xmm0
	mulss xmm2, xmm2
	addss xmm1, xmm2
	sqrtss xmm1, xmm1
	movaps xmm0, xmm1
	xorps xmm0, xmm3
	pxor xmm2, xmm2
	ucomiss xmm0, xmm2
	jb _Z15G_RunCorpseMoveP9gentity_s_140
	movss xmm1, dword [_float_1_00000000]
_Z15G_RunCorpseMoveP9gentity_s_180:
	mulss xmm4, xmm1
	movss [ebp-0x54], xmm4
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x50]
	movss [ebp-0x50], xmm0
	mulss xmm1, [ebp-0x4c]
	movss [ebp-0x4c], xmm1
	movaps xmm0, xmm5
	mulss xmm0, xmm5
	movaps xmm1, xmm6
	mulss xmm1, xmm6
	addss xmm0, xmm1
	movaps xmm1, xmm7
	mulss xmm1, xmm7
	addss xmm0, xmm1
	sqrtss xmm1, xmm0
	movaps xmm0, xmm1
	xorps xmm0, xmm3
	ucomiss xmm0, xmm2
	jb _Z15G_RunCorpseMoveP9gentity_s_150
	movss xmm0, dword [_float_1_00000000]
_Z15G_RunCorpseMoveP9gentity_s_250:
	movaps xmm1, xmm5
	mulss xmm1, xmm0
	movss [ebp-0xd0], xmm1
	movaps xmm2, xmm6
	mulss xmm2, xmm0
	movss [ebp-0xbc], xmm2
	mulss xmm0, xmm7
	movss [ebp-0xc0], xmm0
	movss xmm1, dword [ebp-0x48]
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x54]
	addss xmm0, [ebp-0x30]
	movss [ebp-0x30], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x50]
	addss xmm0, [ebp-0x2c]
	movss [ebp-0x2c], xmm0
	mulss xmm1, [ebp-0x4c]
	addss xmm1, [ebp-0x28]
	movss [ebp-0x28], xmm1
	movss xmm1, dword [ebp-0x44]
	movss xmm0, dword [ebp-0xd0]
	mulss xmm0, xmm1
	addss xmm0, [ebp-0x30]
	movss [ebp-0x30], xmm0
	movaps xmm0, xmm2
	mulss xmm0, xmm1
	addss xmm0, [ebp-0x2c]
	movss [ebp-0x2c], xmm0
	mulss xmm1, [ebp-0xc0]
	addss xmm1, [ebp-0x28]
	movss [ebp-0x28], xmm1
	jmp _Z15G_RunCorpseMoveP9gentity_s_160
_Z15G_RunCorpseMoveP9gentity_s_50:
	mov ebx, 0x1
	jmp _Z15G_RunCorpseMoveP9gentity_s_170
_Z15G_RunCorpseMoveP9gentity_s_140:
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, xmm1
	movaps xmm1, xmm0
	jmp _Z15G_RunCorpseMoveP9gentity_s_180
_Z15G_RunCorpseMoveP9gentity_s_110:
	mov dword [esp+0x8], 0x80000000
	mov dword [esp+0x4], 0xffffffff
	mov [esp], esi
	call _Z16SV_PointContentsPKfii
	test eax, eax
	jnz _Z15G_RunCorpseMoveP9gentity_s_190
	mov eax, [ebp-0xf4]
	cmp byte [eax+0x4d8], 0x0
	jz _Z15G_RunCorpseMoveP9gentity_s_70
	cmp byte [ebp-0x88], 0x0
	jz _Z15G_RunCorpseMoveP9gentity_s_200
	mov eax, [esi]
	mov [ebp-0x3c], eax
	mov edx, [ebp-0xec]
	mov eax, [edx]
	mov [ebp-0x38], eax
	movss xmm0, dword [_float_32_00000000]
	mov ecx, [ebp-0xe8]
	addss xmm0, [ecx]
	movss [ebp-0x34], xmm0
	mov edx, [ebp-0xf8]
	and edx, 0xfffeffff
	mov eax, [ebp-0x104]
	cmp word [eax], 0x0
	jnz _Z15G_RunCorpseMoveP9gentity_s_210
	mov eax, 0x3ff
_Z15G_RunCorpseMoveP9gentity_s_270:
	mov [esp+0x18], edx
	mov [esp+0x14], eax
	lea eax, [ebp-0x30]
	mov [esp+0x10], eax
	mov edx, [ebp-0x100]
	mov [esp+0xc], edx
	mov ecx, [ebp-0xfc]
	mov [esp+0x8], ecx
	lea eax, [ebp-0x3c]
	mov [esp+0x4], eax
	lea eax, [ebp-0xb0]
	mov [esp], eax
	call _Z14G_TraceCapsuleP7trace_tPKfS2_S2_S2_ii
	cmp byte [ebp-0x88], 0x0
	jnz _Z15G_RunCorpseMoveP9gentity_s_200
	movss xmm1, dword [ebp-0xb0]
	movss xmm0, dword [ebp-0x3c]
	movss xmm2, dword [esi]
	subss xmm2, xmm0
	mulss xmm2, xmm1
	addss xmm0, xmm2
	movss [ebp-0xc4], xmm0
	movss xmm0, dword [ebp-0x38]
	mov eax, [ebp-0xec]
	movss xmm2, dword [eax]
	subss xmm2, xmm0
	mulss xmm2, xmm1
	addss xmm0, xmm2
	movss [ebp-0xc8], xmm0
	movss xmm0, dword [ebp-0x34]
	mov eax, [ebp-0xe8]
	movss xmm2, dword [eax]
	subss xmm2, xmm0
	mulss xmm1, xmm2
	addss xmm0, xmm1
	movss [ebp-0xcc], xmm0
	movss xmm0, dword [ebp-0xc4]
	movss [esi], xmm0
	movss xmm0, dword [ebp-0xc8]
	mov eax, [ebp-0xec]
	movss [eax], xmm0
	movss xmm0, dword [ebp-0xcc]
	mov eax, [ebp-0xe8]
	movss [eax], xmm0
_Z15G_RunCorpseMoveP9gentity_s_200:
	mov edx, [ebp-0x108]
	mov eax, [edx]
	sub eax, 0x9
	cmp eax, 0x2
	setbe al
	pxor xmm2, xmm2
	movss [edi+0x24], xmm2
	movss [edi+0x28], xmm2
	movss [edi+0x2c], xmm2
	cmp byte [ebp-0x88], 0x0
	jnz _Z15G_RunCorpseMoveP9gentity_s_220
	movss xmm0, dword [ebp-0xa4]
	ucomiss xmm0, xmm2
	ja _Z15G_RunCorpseMoveP9gentity_s_220
	movss xmm0, dword [esi]
	addss xmm0, [ebp-0xac]
	movss [esi], xmm0
	mov edx, [ebp-0xec]
	movss xmm0, dword [edx]
	addss xmm0, [ebp-0xa8]
	movss [edx], xmm0
	mov ecx, [ebp-0xe8]
	movss xmm0, dword [ecx]
	addss xmm0, [ebp-0xa4]
	movss [ecx], xmm0
	lea edx, [edi+0x18]
	mov eax, [esi]
	mov [edi+0x18], eax
	mov ecx, [ebp-0xec]
	mov eax, [ecx]
	mov [edx+0x4], eax
	mov ecx, [ebp-0xe8]
	mov eax, [ecx]
	mov [edx+0x8], eax
	mov eax, level
	mov eax, [eax+0x1ec]
	mov [edi+0x10], eax
	jmp _Z15G_RunCorpseMoveP9gentity_s_70
_Z15G_RunCorpseMoveP9gentity_s_220:
	mov ecx, [ebp-0xf4]
	mov byte [ecx+0x4d8], 0x0
	cmp al, 0x1
	sbb eax, eax
	and eax, 0xfffffff6
	add eax, 0xb
	mov [edi+0xc], eax
	movss [edi+0x24], xmm2
	movss [edi+0x28], xmm2
	movss [edi+0x2c], xmm2
	lea eax, [edi+0x18]
	movss xmm0, dword [ebp-0xc4]
	movss [edi+0x18], xmm0
	movss xmm1, dword [ebp-0xc8]
	movss [eax+0x4], xmm1
	movss xmm2, dword [ebp-0xcc]
	movss [eax+0x8], xmm2
	mov dword [edi+0x10], 0x0
	mov dword [edi+0x14], 0x0
	lea eax, [ebp-0xb0]
	mov [esp], eax
	call _Z20Trace_GetEntityHitIdPK7trace_t
	movzx eax, ax
	mov [edi+0x7c], eax
	lea edx, [eax+eax*8]
	lea edx, [eax+edx*2]
	mov ecx, edx
	shl ecx, 0x5
	add edx, ecx
	add edx, eax
	add edx, g_entities
	or dword [edx+0x180], 0x100000
	cmp byte [ebp-0x88], 0x0
	jnz _Z15G_RunCorpseMoveP9gentity_s_230
	mov eax, [ebp-0xac]
	mov [ebp-0x6c], eax
	lea esi, [ebp-0x84]
	mov eax, [ebp-0xa8]
	mov [ebp-0x68], eax
	mov eax, [ebp-0xa4]
	mov [ebp-0x64], eax
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], esi
	lea eax, [edi+0x148]
	mov [esp], eax
	call _Z12AngleVectorsPKfPfS1_S1_
	movss xmm2, dword [ebp-0x68]
	movaps xmm4, xmm2
	mulss xmm4, [ebp-0x7c]
	movss xmm3, dword [ebp-0x64]
	movaps xmm0, xmm3
	mulss xmm0, [ebp-0x80]
	subss xmm4, xmm0
	movss [ebp-0x78], xmm4
	mulss xmm3, [ebp-0x84]
	movss xmm1, dword [ebp-0x6c]
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x7c]
	subss xmm3, xmm0
	movss [ebp-0x74], xmm3
	mulss xmm1, [ebp-0x80]
	mulss xmm2, [ebp-0x84]
	subss xmm1, xmm2
	movss [ebp-0x70], xmm1
	movaps xmm0, xmm3
	mulss xmm0, [ebp-0x64]
	movaps xmm2, xmm1
	mulss xmm2, [ebp-0x68]
	subss xmm0, xmm2
	movss [ebp-0x84], xmm0
	mulss xmm1, [ebp-0x6c]
	movaps xmm0, xmm4
	mulss xmm0, [ebp-0x64]
	subss xmm1, xmm0
	movss [ebp-0x80], xmm1
	mulss xmm4, [ebp-0x68]
	mulss xmm3, [ebp-0x6c]
	subss xmm4, xmm3
	movss [ebp-0x7c], xmm4
	lea ebx, [ebp-0x24]
	mov [esp+0x4], ebx
	mov [esp], esi
	call _Z12AxisToAnglesPA3_KfPf
	mov [esp+0x4], ebx
	mov [esp], edi
	call _Z10G_SetAngleP9gentity_sPKf
_Z15G_RunCorpseMoveP9gentity_s_260:
	mov [esp], edi
	call _Z13SV_LinkEntityP9gentity_s
	jmp _Z15G_RunCorpseMoveP9gentity_s_70
_Z15G_RunCorpseMoveP9gentity_s_120:
	movzx eax, word [eax]
	sub eax, 0x1
	jmp _Z15G_RunCorpseMoveP9gentity_s_240
_Z15G_RunCorpseMoveP9gentity_s_150:
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, xmm1
	jmp _Z15G_RunCorpseMoveP9gentity_s_250
_Z15G_RunCorpseMoveP9gentity_s_230:
	lea eax, [edi+0x148]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z10G_SetAngleP9gentity_sPKf
	jmp _Z15G_RunCorpseMoveP9gentity_s_260
_Z15G_RunCorpseMoveP9gentity_s_190:
	mov [esp], edi
	call _Z12G_FreeEntityP9gentity_s
	jmp _Z15G_RunCorpseMoveP9gentity_s_70
_Z15G_RunCorpseMoveP9gentity_s_210:
	movzx eax, word [eax]
	sub eax, 0x1
	jmp _Z15G_RunCorpseMoveP9gentity_s_270
	nop


;PlayerCorpse_Free(gentity_s*)
_Z17PlayerCorpse_FreeP9gentity_s:
	push ebp
	mov ebp, esp
	push ebx
	mov eax, [ebp+0x8]
	mov eax, [eax]
	xor ecx, ecx
	mov ebx, g_scr_data
	mov edx, ebx
_Z17PlayerCorpse_FreeP9gentity_s_20:
	cmp eax, [edx+0x10c0]
	jz _Z17PlayerCorpse_FreeP9gentity_s_10
	add ecx, 0x1
	add edx, 0x4dc
	cmp ecx, 0x8
	jnz _Z17PlayerCorpse_FreeP9gentity_s_20
	and ecx, 0xffffff00
_Z17PlayerCorpse_FreeP9gentity_s_10:
	lea edx, [ecx+ecx*4]
	mov eax, edx
	shl eax, 0x5
	sub eax, edx
	lea eax, [ecx+eax*2]
	mov dword [ebx+eax*4+0x10c0], 0xffffffff
	pop ebx
	pop ebp
	ret


;G_GetPlayerCorpseIndex(gentity_s*)
_Z22G_GetPlayerCorpseIndexP9gentity_s:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov ecx, [eax]
	xor eax, eax
	mov edx, g_scr_data
_Z22G_GetPlayerCorpseIndexP9gentity_s_20:
	cmp ecx, [edx+0x10c0]
	jz _Z22G_GetPlayerCorpseIndexP9gentity_s_10
	add eax, 0x1
	add edx, 0x4dc
	cmp eax, 0x8
	jnz _Z22G_GetPlayerCorpseIndexP9gentity_s_20
	and eax, 0xffffff00
_Z22G_GetPlayerCorpseIndexP9gentity_s_10:
	pop ebp
	ret
	nop


;G_GetFreePlayerCorpseIndex()
_Z26G_GetFreePlayerCorpseIndexv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov eax, scr_const
	movzx eax, word [eax+0x5c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x170
	mov dword [esp], 0x0
	call _Z6G_FindP9gentity_sit
	lea edx, [eax+0x18]
	movss xmm5, dword [eax+0x18]
	movss xmm4, dword [edx+0x4]
	movss xmm3, dword [edx+0x8]
	mov eax, level
	mov edi, [eax+0x4]
	movss xmm6, dword [_float__1_00000000]
	mov dword [ebp-0x1c], 0x0
	xor ebx, ebx
	mov eax, g_scr_data
	mov [ebp-0x20], eax
	mov esi, eax
_Z26G_GetFreePlayerCorpseIndexv_30:
	mov ecx, [esi+0x10c0]
	cmp ecx, 0xffffffff
	jz _Z26G_GetFreePlayerCorpseIndexv_10
	lea eax, [ecx+ecx*8]
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	add eax, ecx
	lea eax, [edi+eax]
	lea edx, [eax+0x13c]
	movaps xmm2, xmm5
	subss xmm2, [eax+0x13c]
	movaps xmm0, xmm4
	subss xmm0, [edx+0x4]
	movaps xmm1, xmm3
	subss xmm1, [edx+0x8]
	mulss xmm2, xmm2
	mulss xmm0, xmm0
	addss xmm2, xmm0
	mulss xmm1, xmm1
	addss xmm2, xmm1
	ucomiss xmm2, xmm6
	jbe _Z26G_GetFreePlayerCorpseIndexv_20
	movaps xmm6, xmm2
	mov [ebp-0x1c], ebx
_Z26G_GetFreePlayerCorpseIndexv_20:
	add ebx, 0x1
	add esi, 0x4dc
	cmp ebx, 0x8
	jnz _Z26G_GetFreePlayerCorpseIndexv_30
	mov edx, [ebp-0x1c]
	lea eax, [edx+edx*4]
	mov ebx, eax
	shl ebx, 0x5
	sub ebx, eax
	lea ebx, [edx+ebx*2]
	mov eax, [ebp-0x20]
	lea ebx, [eax+ebx*4]
	mov edx, [ebx+0x10c0]
	lea eax, [edx+edx*8]
	lea eax, [edx+eax*2]
	mov ecx, eax
	shl ecx, 0x5
	add eax, ecx
	add eax, edx
	add eax, edi
	mov [esp], eax
	call _Z12G_FreeEntityP9gentity_s
	mov dword [ebx+0x10c0], 0xffffffff
	mov ebx, [ebp-0x1c]
_Z26G_GetFreePlayerCorpseIndexv_10:
	mov eax, ebx
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Initialized global or static variables of g_player_corpse_mp:
SECTION .data


;Initialized constant data of g_player_corpse_mp:
SECTION .rdata


;Zero initialized global or static variables of g_player_corpse_mp:
SECTION .bss


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata
_float_1_00000000:		dd 0x3f800000	; 1
_data16_80000000:		dd 0x80000000, 0x0, 0x0, 0x0	; OWORD
_float_32_00000000:		dd 0x42000000	; 32
_float__1_00000000:		dd 0xbf800000	; -1

