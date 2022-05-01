;Imports of aim_target_mp:
	extern _Z14CM_ModelBoundsjPfS_
	extern scr_const
	extern _Z17Com_GetClientDObjii
	extern _Z21CG_DObjGetWorldTagPosPK7cpose_tP6DObj_sjPf
	extern _Z18SL_ConvertToStringj
	extern _Z9Com_Error11errorParm_tPKcz
	extern memset
	extern _Z18Dvar_RegisterFloatPKcffftS0_
	extern cgArray
	extern vec3_origin
	extern _Z15CG_TraceCapsuleP7trace_tPKfS2_S2_S2_ii
	extern _Z20Trace_GetEntityHitIdPK7trace_t
	extern _Z27CM_TransformedPointContentsPKfjS0_S0_
	extern _Z22FX_GetClientVisibilityiPKfS0_
	extern _Z21BG_EvaluateTrajectoryPK12trajectory_tiPf
	extern memmove
	extern _Z16RadiusFromBoundsPKfS0_
	extern memcpy

;Exports of aim_target_mp:
	global atGlobArray
	global aim_target_sentient_radius
	global _Z25AimTarget_GetTargetBoundsPK9centity_sPfS2_
	global _Z14AimTarget_Initi
	global _Z23AimTarget_ProcessEntityiPK9centity_s
	global _Z25AimTarget_ClearTargetListi
	global _Z29AimTarget_GetClientTargetListiPPK9AimTargetPi
	global _Z29AimTarget_UpdateClientTargetsi


SECTION .text


;AimTarget_GetTargetBounds(centity_s const*, float*, float*)
_Z25AimTarget_GetTargetBoundsPK9centity_sPfS2_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov ebx, eax
	mov esi, edx
	mov edi, ecx
	cmp dword [eax+0xd0], 0x1
	jz _Z25AimTarget_GetTargetBoundsPK9centity_sPfS2__10
	mov [esp+0x8], ecx
	mov [esp+0x4], edx
	mov eax, [eax+0x154]
	mov [esp], eax
	call _Z14CM_ModelBoundsjPfS_
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z25AimTarget_GetTargetBoundsPK9centity_sPfS2__10:
	mov eax, scr_const
	movzx eax, word [eax+0x6]
	mov [ebp-0x2c], eax
	movzx eax, byte [ebx+0x4]
	mov [esp+0x4], eax
	mov eax, [ebx+0xcc]
	mov [esp], eax
	call _Z17Com_GetClientDObjii
	lea edx, [ebp-0x24]
	mov [esp+0xc], edx
	mov edx, [ebp-0x2c]
	mov [esp+0x8], edx
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z21CG_DObjGetWorldTagPosPK7cpose_tP6DObj_sjPf
	test eax, eax
	jz _Z25AimTarget_GetTargetBoundsPK9centity_sPfS2__20
_Z25AimTarget_GetTargetBoundsPK9centity_sPfS2__30:
	mov edx, [aim_target_sentient_radius]
	movss xmm1, dword [_data16_80000000]
	movss xmm0, dword [edx+0xc]
	xorps xmm0, xmm1
	movss [esi], xmm0
	movss xmm0, dword [edx+0xc]
	xorps xmm0, xmm1
	movss [esi+0x4], xmm0
	mov dword [esi+0x8], 0x0
	mov eax, [edx+0xc]
	mov [edi], eax
	mov eax, [edx+0xc]
	mov [edi+0x4], eax
	movss xmm0, dword [ebp-0x1c]
	subss xmm0, [ebx+0x24]
	movss [edi+0x8], xmm0
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z25AimTarget_GetTargetBoundsPK9centity_sPfS2__20:
	mov eax, [ebp-0x2c]
	mov [esp], eax
	call _Z18SL_ConvertToStringj
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_aimtarget_gettag
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z25AimTarget_GetTargetBoundsPK9centity_sPfS2__30
	nop


;AimTarget_Init(int)
_Z14AimTarget_Initi:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	mov eax, [ebp+0x8]
	lea edx, [eax+eax*4]
	lea edx, [eax+edx*2]
	shl edx, 0x6
	add edx, eax
	lea edx, [edx*8+atGlobArray]
	mov dword [esp+0x8], 0x1608
	mov dword [esp+0x4], 0x0
	mov [esp], edx
	call memset
	mov dword [esp+0x14], _cstring_the_radius_used_
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x43000000
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x41200000
	mov dword [esp], _cstring_aim_target_senti
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [aim_target_sentient_radius], eax
	leave
	ret


;AimTarget_ProcessEntity(int, centity_s const*)
_Z23AimTarget_ProcessEntityiPK9centity_s:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x10c
	mov esi, cgArray
	test byte [esi+0x46150], 0x2
	jnz _Z23AimTarget_ProcessEntityiPK9centity_s_10
	cmp dword [esi+0x46140], 0x8
	jbe _Z23AimTarget_ProcessEntityiPK9centity_s_20
_Z23AimTarget_ProcessEntityiPK9centity_s_50:
	mov eax, [ebp+0xc]
	mov edi, [eax+0xd0]
	cmp edi, 0x1
	jz _Z23AimTarget_ProcessEntityiPK9centity_s_30
	test byte [eax+0xd5], 0x8
	jz _Z23AimTarget_ProcessEntityiPK9centity_s_10
	cmp dword [eax+0x164], 0xffffff
	jz _Z23AimTarget_ProcessEntityiPK9centity_s_40
_Z23AimTarget_ProcessEntityiPK9centity_s_10:
	add esp, 0x10c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z23AimTarget_ProcessEntityiPK9centity_s_20:
	mov ecx, [esi+0x46140]
	mov eax, 0x1
	shl eax, cl
	test eax, 0x1bc
	jz _Z23AimTarget_ProcessEntityiPK9centity_s_50
	add esp, 0x10c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z23AimTarget_ProcessEntityiPK9centity_s_30:
	mov edx, eax
	mov eax, scr_const
	movzx eax, word [eax+0x8]
	mov [ebp-0xe4], eax
	mov eax, [edx+0x158]
	lea edx, [eax+eax*8]
	mov ecx, edx
	shl ecx, 0x4
	add edx, ecx
	lea edx, [eax+edx*2]
	lea edx, [esi+edx*4+0xe9f30]
	lea ecx, [edx+0x4]
	mov [ebp-0xe0], ecx
	mov ecx, [esi+0x46218]
	lea eax, [ecx+ecx*8]
	mov ebx, eax
	shl ebx, 0x4
	add eax, ebx
	lea eax, [ecx+eax*2]
	lea eax, [esi+eax*4+0xe9f34]
	mov edx, [edx+0x4]
	test edx, edx
	jz _Z23AimTarget_ProcessEntityiPK9centity_s_10
	mov edx, [ebp-0xe0]
	cmp byte [edx+0x3c], 0x0
	jz _Z23AimTarget_ProcessEntityiPK9centity_s_10
	mov ecx, [ebp-0xe0]
	mov edx, [ecx+0x1c]
	cmp edx, [eax+0x1c]
	jz _Z23AimTarget_ProcessEntityiPK9centity_s_60
_Z23AimTarget_ProcessEntityiPK9centity_s_160:
	mov eax, [ebp+0xc]
	add eax, 0x1c
	mov edx, [ebp+0xc]
	movss xmm0, dword [edx+0x1c]
	movss [ebp-0xc8], xmm0
	subss xmm0, [esi+0x46158]
	movss [ebp-0xc8], xmm0
	movss xmm1, dword [eax+0x4]
	movss [ebp-0xcc], xmm1
	subss xmm1, [esi+0x4615c]
	movss [ebp-0xcc], xmm1
	movss xmm2, dword [eax+0x8]
	movss [ebp-0xd0], xmm2
	subss xmm2, [esi+0x46160]
	movss [ebp-0xd0], xmm2
	movss xmm0, dword [esi+0x492ec]
	movss [ebp-0xbc], xmm0
	movss xmm1, dword [esi+0x492f0]
	movss [ebp-0xc0], xmm1
	movss xmm2, dword [esi+0x492f4]
	movss [ebp-0xc4], xmm2
	sub edi, 0x1
	jnz _Z23AimTarget_ProcessEntityiPK9centity_s_70
	mov eax, [aim_target_sentient_radius]
	movss xmm1, dword [eax+0xc]
_Z23AimTarget_ProcessEntityiPK9centity_s_170:
	movss xmm0, dword [ebp-0xc8]
	mulss xmm0, [ebp-0xbc]
	movss xmm2, dword [ebp-0xcc]
	mulss xmm2, [ebp-0xc0]
	addss xmm0, xmm2
	movss xmm2, dword [ebp-0xd0]
	mulss xmm2, [ebp-0xc4]
	addss xmm0, xmm2
	addss xmm0, xmm1
	ucomiss xmm0, [_float_0_00000000]
	jp _Z23AimTarget_ProcessEntityiPK9centity_s_80
	jb _Z23AimTarget_ProcessEntityiPK9centity_s_10
_Z23AimTarget_ProcessEntityiPK9centity_s_80:
	mov eax, [ebp-0xe4]
	test eax, eax
	jz _Z23AimTarget_ProcessEntityiPK9centity_s_90
	mov edx, [ebp+0xc]
	movzx eax, byte [edx+0x4]
	mov [esp+0x4], eax
	mov eax, [edx+0xcc]
	mov [esp], eax
	call _Z17Com_GetClientDObjii
	lea esi, [ebp-0x3c]
	mov [esp+0xc], esi
	mov ecx, [ebp-0xe4]
	mov [esp+0x8], ecx
	mov [esp+0x4], eax
	mov eax, [ebp+0xc]
	mov [esp], eax
	call _Z21CG_DObjGetWorldTagPosPK7cpose_tP6DObj_sjPf
	test eax, eax
	jnz _Z23AimTarget_ProcessEntityiPK9centity_s_100
	mov edx, [ebp-0xe4]
	mov [esp], edx
	call _Z18SL_ConvertToStringj
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_aimtarget_gettag
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
_Z23AimTarget_ProcessEntityiPK9centity_s_100:
	mov edx, cgArray
	mov eax, [edx+0x492e0]
	mov [ebp-0x30], eax
	mov eax, [edx+0x492e4]
	mov [ebp-0x2c], eax
	mov eax, [edx+0x492e8]
	mov [ebp-0x28], eax
	mov dword [esp+0x18], 0x803003
	mov eax, [edx+0x46218]
	mov [esp+0x14], eax
	mov [esp+0x10], esi
	mov eax, vec3_origin
	mov [esp+0xc], eax
	mov [esp+0x8], eax
	lea edi, [ebp-0x30]
	mov [esp+0x4], edi
	lea ebx, [ebp-0x80]
	mov [esp], ebx
	call _Z15CG_TraceCapsuleP7trace_tPKfS2_S2_S2_ii
	movss xmm0, dword [_float_1_00000000]
	ucomiss xmm0, [ebp-0x80]
	jp _Z23AimTarget_ProcessEntityiPK9centity_s_110
	jz _Z23AimTarget_ProcessEntityiPK9centity_s_120
_Z23AimTarget_ProcessEntityiPK9centity_s_110:
	mov [esp], ebx
	call _Z20Trace_GetEntityHitIdPK7trace_t
	movzx eax, ax
	mov edx, [ebp+0xc]
	cmp eax, [edx+0xcc]
	jz _Z23AimTarget_ProcessEntityiPK9centity_s_120
	cmp dword [edx+0x164], 0xffffff
	jnz _Z23AimTarget_ProcessEntityiPK9centity_s_10
	movss xmm2, dword [ebp-0x80]
	movss xmm1, dword [ebp-0x30]
	movss xmm0, dword [ebp-0x3c]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebp-0x48], xmm1
	movss xmm1, dword [ebp-0x2c]
	movss xmm0, dword [ebp-0x38]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebp-0x44], xmm1
	movss xmm1, dword [ebp-0x28]
	movss xmm0, dword [ebp-0x34]
	subss xmm0, xmm1
	mulss xmm2, xmm0
	addss xmm1, xmm2
	movss [ebp-0x40], xmm1
	mov eax, edx
	add eax, 0x28
	mov [esp+0xc], eax
	sub eax, 0xc
	mov [esp+0x8], eax
	mov eax, [edx+0x154]
	mov [esp+0x4], eax
	lea eax, [ebp-0x48]
	mov [esp], eax
	call _Z27CM_TransformedPointContentsPKfjS0_S0_
	test eax, eax
	jz _Z23AimTarget_ProcessEntityiPK9centity_s_10
_Z23AimTarget_ProcessEntityiPK9centity_s_120:
	mov [esp+0x8], esi
	mov [esp+0x4], edi
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z22FX_GetClientVisibilityiPKfS0_
	fstp dword [ebp-0xdc]
	movss xmm0, dword [ebp-0xdc]
	ucomiss xmm0, [_float_0_00010000]
	jp _Z23AimTarget_ProcessEntityiPK9centity_s_130
	jbe _Z23AimTarget_ProcessEntityiPK9centity_s_10
_Z23AimTarget_ProcessEntityiPK9centity_s_130:
	mov edx, [ebp+0xc]
	mov eax, [edx+0xcc]
	mov [ebp-0xac], eax
	mov eax, edx
	add eax, 0x1c
	mov ebx, cgArray
	movss xmm0, dword [edx+0x1c]
	subss xmm0, [ebx+0x46158]
	movss xmm1, dword [eax+0x4]
	subss xmm1, [ebx+0x4615c]
	movss xmm2, dword [eax+0x8]
	subss xmm2, [ebx+0x46160]
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	movss [ebp-0xa8], xmm0
	lea ecx, [ebp-0x98]
	lea edx, [ebp-0xa4]
	mov eax, [ebp+0xc]
	call _Z25AimTarget_GetTargetBoundsPK9centity_sPfS2_
	mov esi, [ebx+0x24]
	mov eax, [ebx+0x20]
	mov edx, [eax+0x8]
	mov eax, [esi+0x8]
	sub eax, edx
	cvtsi2ss xmm0, eax
	mulss xmm0, [_float_0_00100000]
	movss [ebp-0xd8], xmm0
	pxor xmm0, xmm0
	movss xmm1, dword [ebp-0xd8]
	ucomiss xmm1, xmm0
	jbe _Z23AimTarget_ProcessEntityiPK9centity_s_140
	lea eax, [ebp-0x24]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov eax, [ebp+0xc]
	add eax, 0x68
	mov [esp], eax
	call _Z21BG_EvaluateTrajectoryPK12trajectory_tiPf
	mov [esp+0x8], edi
	mov eax, [esi+0x8]
	mov [esp+0x4], eax
	mov eax, [ebp+0xc]
	add eax, 0xd8
	mov [esp], eax
	call _Z21BG_EvaluateTrajectoryPK12trajectory_tiPf
	movss xmm0, dword [ebp-0x30]
	subss xmm0, [ebp-0x24]
	movss [ebp-0x8c], xmm0
	movss xmm0, dword [ebp-0x2c]
	subss xmm0, [ebp-0x20]
	movss [ebp-0x88], xmm0
	movss xmm0, dword [ebp-0x28]
	subss xmm0, [ebp-0x1c]
	movss [ebp-0x84], xmm0
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, dword [ebp-0xd8]
	movaps xmm1, xmm0
	mulss xmm1, [ebp-0x8c]
	movss [ebp-0x8c], xmm1
	movaps xmm1, xmm0
	mulss xmm1, [ebp-0x88]
	movss [ebp-0x88], xmm1
	mulss xmm0, [ebp-0x84]
	movss [ebp-0x84], xmm0
_Z23AimTarget_ProcessEntityiPK9centity_s_220:
	mov edx, [ebp+0x8]
	lea eax, [edx+edx*4]
	lea eax, [edx+eax*2]
	shl eax, 0x6
	add eax, edx
	lea esi, [eax*8+atGlobArray]
	mov edi, [esi+0xb00]
	test edi, edi
	jg _Z23AimTarget_ProcessEntityiPK9centity_s_150
	mov dword [ebp-0xd4], 0x0
	mov ecx, 0x1
_Z23AimTarget_ProcessEntityiPK9centity_s_210:
	mov edx, [ebp-0xd4]
	lea ebx, [edx+edx*4]
	lea ebx, [edx+ebx*2]
	lea ebx, [esi+ebx*4]
	mov eax, edi
	sub eax, edx
	lea edx, [eax+eax*4]
	lea edx, [eax+edx*2]
	shl edx, 0x2
	mov [esp+0x8], edx
	mov [esp+0x4], ebx
	lea eax, [ecx+ecx*4]
	lea eax, [ecx+eax*2]
	lea eax, [esi+eax*4]
	mov [esp], eax
	call memmove
	mov eax, [ebp-0xac]
	mov [ebx], eax
	mov eax, [ebp-0xa8]
	mov [ebx+0x4], eax
	mov eax, [ebp-0xa4]
	mov [ebx+0x8], eax
	mov eax, [ebp-0xa0]
	mov [ebx+0xc], eax
	mov eax, [ebp-0x9c]
	mov [ebx+0x10], eax
	mov eax, [ebp-0x98]
	mov [ebx+0x14], eax
	mov eax, [ebp-0x94]
	mov [ebx+0x18], eax
	mov eax, [ebp-0x90]
	mov [ebx+0x1c], eax
	mov eax, [ebp-0x8c]
	mov [ebx+0x20], eax
	mov eax, [ebp-0x88]
	mov [ebx+0x24], eax
	mov eax, [ebp-0x84]
	mov [ebx+0x28], eax
	add dword [esi+0xb00], 0x1
	jmp _Z23AimTarget_ProcessEntityiPK9centity_s_10
_Z23AimTarget_ProcessEntityiPK9centity_s_40:
	mov dword [ebp-0xe4], 0x0
	jmp _Z23AimTarget_ProcessEntityiPK9centity_s_160
_Z23AimTarget_ProcessEntityiPK9centity_s_70:
	mov eax, edx
	lea ebx, [ebp-0x24]
	lea esi, [ebp-0x30]
	mov ecx, ebx
	mov edx, esi
	call _Z25AimTarget_GetTargetBoundsPK9centity_sPfS2_
	mov [esp+0x4], ebx
	mov [esp], esi
	call _Z16RadiusFromBoundsPKfS0_
	fstp dword [ebp-0xec]
	movss xmm1, dword [ebp-0xec]
	jmp _Z23AimTarget_ProcessEntityiPK9centity_s_170
_Z23AimTarget_ProcessEntityiPK9centity_s_60:
	test edx, edx
	jnz _Z23AimTarget_ProcessEntityiPK9centity_s_10
	jmp _Z23AimTarget_ProcessEntityiPK9centity_s_160
_Z23AimTarget_ProcessEntityiPK9centity_s_90:
	lea ecx, [ebp-0x24]
	lea edx, [ebp-0x54]
	mov eax, [ebp+0xc]
	call _Z25AimTarget_GetTargetBoundsPK9centity_sPfS2_
	movss xmm1, dword [ebp-0x54]
	addss xmm1, [ebp-0x24]
	movss xmm2, dword [ebp-0x50]
	addss xmm2, [ebp-0x20]
	movss xmm3, dword [ebp-0x4c]
	addss xmm3, [ebp-0x1c]
	movss xmm0, dword [_float_0_50000000]
	mulss xmm1, xmm0
	movss [ebp-0x3c], xmm1
	mulss xmm2, xmm0
	movss [ebp-0x38], xmm2
	mulss xmm3, xmm0
	movss [ebp-0x34], xmm3
	mov eax, [ebp+0xc]
	add eax, 0x1c
	mov ecx, [ebp+0xc]
	movss xmm0, dword [ecx+0x1c]
	addss xmm0, xmm1
	movss [ebp-0x3c], xmm0
	movss xmm0, dword [eax+0x4]
	addss xmm0, xmm2
	movss [ebp-0x38], xmm0
	movss xmm0, dword [eax+0x8]
	addss xmm0, xmm3
	movss [ebp-0x34], xmm0
	lea esi, [ebp-0x3c]
	jmp _Z23AimTarget_ProcessEntityiPK9centity_s_100
_Z23AimTarget_ProcessEntityiPK9centity_s_150:
	movss xmm1, dword [ebp-0xa8]
	mov ecx, edi
	mov dword [ebp-0xd4], 0x0
_Z23AimTarget_ProcessEntityiPK9centity_s_190:
	mov eax, [ebp-0xd4]
	lea edx, [ecx+eax]
	mov eax, edx
	shr eax, 0x1f
	lea edx, [eax+edx]
	sar edx, 1
	lea eax, [edx+edx*4]
	lea eax, [edx+eax*2]
	movss xmm0, dword [esi+eax*4+0x4]
	ucomiss xmm0, xmm1
	jbe _Z23AimTarget_ProcessEntityiPK9centity_s_180
	mov ecx, edx
_Z23AimTarget_ProcessEntityiPK9centity_s_230:
	cmp [ebp-0xd4], ecx
	jl _Z23AimTarget_ProcessEntityiPK9centity_s_190
	cmp dword [ebp-0xd4], 0x3f
	jg _Z23AimTarget_ProcessEntityiPK9centity_s_10
	cmp edi, 0x40
	jnz _Z23AimTarget_ProcessEntityiPK9centity_s_200
	mov edi, 0x3f
	mov dword [esi+0xb00], 0x3f
_Z23AimTarget_ProcessEntityiPK9centity_s_200:
	mov ecx, [ebp-0xd4]
	add ecx, 0x1
	jmp _Z23AimTarget_ProcessEntityiPK9centity_s_210
_Z23AimTarget_ProcessEntityiPK9centity_s_140:
	movss [ebp-0x8c], xmm0
	movss [ebp-0x88], xmm0
	movss [ebp-0x84], xmm0
	jmp _Z23AimTarget_ProcessEntityiPK9centity_s_220
_Z23AimTarget_ProcessEntityiPK9centity_s_180:
	add edx, 0x1
	mov [ebp-0xd4], edx
	jmp _Z23AimTarget_ProcessEntityiPK9centity_s_230


;AimTarget_ClearTargetList(int)
_Z25AimTarget_ClearTargetListi:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	lea eax, [edx+edx*4]
	lea eax, [edx+eax*2]
	shl eax, 0x6
	add eax, edx
	mov dword [eax*8+atGlobArray+0xb00], 0x0
	pop ebp
	ret


;AimTarget_GetClientTargetList(int, AimTarget const**, int*)
_Z29AimTarget_GetClientTargetListiPPK9AimTargetPi:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	lea eax, [edx+edx*4]
	lea eax, [edx+eax*2]
	shl eax, 0x6
	add eax, edx
	lea eax, [eax*8+atGlobArray]
	lea ecx, [eax+0xb04]
	mov edx, [ebp+0xc]
	mov [edx], ecx
	mov edx, [eax+0x1604]
	mov eax, [ebp+0x10]
	mov [eax], edx
	pop ebp
	ret


;AimTarget_UpdateClientTargets(int)
_Z29AimTarget_UpdateClientTargetsi:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	lea edx, [eax+eax*4]
	lea edx, [eax+edx*2]
	shl edx, 0x6
	add edx, eax
	lea edx, [edx*8+atGlobArray]
	mov ecx, [edx+0xb00]
	mov [edx+0x1604], ecx
	lea ebx, [edx+0xb04]
	lea eax, [ecx+ecx*4]
	lea eax, [ecx+eax*2]
	shl eax, 0x2
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov [esp], ebx
	call memcpy
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;Initialized global or static variables of aim_target_mp:
SECTION .data


;Initialized constant data of aim_target_mp:
SECTION .rdata


;Zero initialized global or static variables of aim_target_mp:
SECTION .bss
atGlobArray: resb 0x1608
aim_target_sentient_radius: resb 0x78


;All cstrings:
SECTION .rdata
_cstring_aimtarget_gettag:		db "AimTarget_GetTagPos: Cannot find tag [%s] on entity",0ah,0
_cstring_the_radius_used_:		db "The radius used to calculate target bounds for a sentient(actor or player)",0
_cstring_aim_target_senti:		db "aim_target_sentient_radius",0



;All constant floats and doubles:
SECTION .rdata
_data16_80000000:		dd 0x80000000, 0x0, 0x0, 0x0	; OWORD
_float_0_00000000:		dd 0x0	; 0
_float_1_00000000:		dd 0x3f800000	; 1
_float_0_00010000:		dd 0x38d1b717	; 0.0001
_float_0_00100000:		dd 0x3a83126f	; 0.001
_float_0_50000000:		dd 0x3f000000	; 0.5

