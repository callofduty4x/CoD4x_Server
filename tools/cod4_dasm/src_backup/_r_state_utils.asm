;Imports of r_state_utils:
	extern memcpy
	extern _Z22R_DeriveOpenGLMatricesP20GfxCmdBufSourceState
	extern _Z13R_SetGameTimeP20GfxCmdBufSourceStatef
	extern memset
	extern _Z18R_SetCompleteStateP16IDirect3DDevice9PKj
	extern s_decodeSamplerFilterState
	extern dx_ctx
	extern gfxCmdBufInput
	extern s_codeConstUpdateFreq
	extern _Z13R_GetViewportP20GfxCmdBufSourceStateP11GfxViewport

;Exports of r_state_utils:
	global g_identityMatrix44
	global _Z11R_BeginViewP20GfxCmdBufSourceStatePK11GfxSceneDefPK12GfxViewParms
	global _Z13R_CmdBufSet3DP20GfxCmdBufSourceState
	global _Z17R_InitCmdBufStateP14GfxCmdBufState
	global _Z22R_GetActiveWorldMatrixP20GfxCmdBufSourceState
	global _Z23R_InitCmdBufSourceStateP20GfxCmdBufSourceStatePK14GfxCmdBufInputi
	global _Z23R_SetShadowLookupMatrixP20GfxCmdBufSourceStatePK9GfxMatrix
	global _Z7R_Set2DP20GfxCmdBufSourceState
	global _Z7R_Set3DP20GfxCmdBufSourceState


SECTION .text


;R_BeginView(GfxCmdBufSourceState*, GfxSceneDef const*, GfxViewParms const*)
_Z11R_BeginViewP20GfxCmdBufSourceStatePK11GfxSceneDefPK12GfxViewParms:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov eax, [edx]
	mov [edi+0xf3c], eax
	mov eax, [edx+0x4]
	mov [edi+0xf40], eax
	mov eax, [edx+0x8]
	mov [edi+0xf44], eax
	mov eax, [edx+0xc]
	mov [edi+0xf48], eax
	mov eax, [edx+0x10]
	mov [edi+0xf4c], eax
	mov eax, [ebp+0x10]
	mov [edi+0xf0c], eax
	lea ebx, [edi+0xf24]
	lea ecx, [edx+0x8]
	mov eax, [edx+0x8]
	mov [edi+0xf24], eax
	mov eax, [ecx+0x4]
	mov [ebx+0x4], eax
	mov eax, [ecx+0x8]
	mov [ebx+0x8], eax
	mov dword [edi+0xf38], 0x1
	mov eax, [edi+0xf0c]
	lea edx, [edi+0xcb0]
	mov dword [esp+0x8], 0x140
	mov [esp+0x4], eax
	mov [esp], edx
	call memcpy
	pxor xmm0, xmm0
	ucomiss xmm0, [edi+0xdbc]
	jp _Z11R_BeginViewP20GfxCmdBufSourceStatePK11GfxSceneDefPK12GfxViewParms_10
	jz _Z11R_BeginViewP20GfxCmdBufSourceStatePK11GfxSceneDefPK12GfxViewParms_20
_Z11R_BeginViewP20GfxCmdBufSourceStatePK11GfxSceneDefPK12GfxViewParms_10:
	lea ecx, [edi+0xef4]
	lea esi, [edi+0xdb0]
	mov eax, [edi+0xdb0]
	mov [edi+0xef4], eax
	mov eax, [esi+0x4]
	mov [ecx+0x4], eax
	mov eax, [esi+0x8]
	mov [ecx+0x8], eax
_Z11R_BeginViewP20GfxCmdBufSourceStatePK11GfxSceneDefPK12GfxViewParms_30:
	mov dword [edi+0xf00], 0x3f800000
	add word [edi+0xee6], 0x1
	add word [edi+0xee8], 0x1
	add word [edi+0xeec], 0x1
	lea edx, [edi+0x80]
	movzx eax, word [edi+0xee4]
	add eax, 0x1
	mov [edi+0xee4], ax
	add word [edi+0xeea], 0x1
	add word [edi+0xeee], 0x1
	add word [edi+0xef2], 0x1
	mov [edi+0xea4], ax
	mov eax, [g_identityMatrix44]
	mov [edi+0x80], eax
	mov eax, [g_identityMatrix44+0x4]
	mov [edx+0x4], eax
	mov eax, [g_identityMatrix44+0x8]
	mov [edx+0x8], eax
	mov eax, [g_identityMatrix44+0xc]
	mov [edx+0xc], eax
	mov eax, [g_identityMatrix44+0x10]
	mov [edx+0x10], eax
	mov eax, [g_identityMatrix44+0x14]
	mov [edx+0x14], eax
	mov eax, [g_identityMatrix44+0x18]
	mov [edx+0x18], eax
	mov eax, [g_identityMatrix44+0x1c]
	mov [edx+0x1c], eax
	mov eax, [g_identityMatrix44+0x20]
	mov [edx+0x20], eax
	mov eax, [g_identityMatrix44+0x24]
	mov [edx+0x24], eax
	mov eax, [g_identityMatrix44+0x28]
	mov [edx+0x28], eax
	mov eax, [g_identityMatrix44+0x2c]
	mov [edx+0x2c], eax
	mov eax, [g_identityMatrix44+0x30]
	mov [edx+0x30], eax
	mov eax, [g_identityMatrix44+0x34]
	mov [edx+0x34], eax
	mov eax, [g_identityMatrix44+0x38]
	mov [edx+0x38], eax
	mov eax, [g_identityMatrix44+0x3c]
	mov [edx+0x3c], eax
	lea eax, [edi+0xb0]
	movss xmm0, dword [edi+0xb0]
	subss xmm0, [edi+0xef4]
	movss [edi+0xb0], xmm0
	movss xmm0, dword [eax+0x4]
	subss xmm0, [ecx+0x4]
	movss [eax+0x4], xmm0
	movss xmm0, dword [eax+0x8]
	subss xmm0, [ecx+0x8]
	movss [eax+0x8], xmm0
	mov [esp], edi
	call _Z22R_DeriveOpenGLMatricesP20GfxCmdBufSourceState
	xor ebx, ebx
	mov [edi+0xf60], ebx
	mov eax, [edi+0xf40]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z13R_SetGameTimeP20GfxCmdBufSourceStatef
	lea edx, [edi+0xd70]
	movss xmm1, dword [_float_1_00000000]
	divss xmm1, dword [edx+0x3c]
	movaps xmm3, xmm1
	mulss xmm3, [edx+0x38]
	subss xmm3, [esi+0x8]
	movaps xmm2, xmm1
	mulss xmm2, [edx+0x34]
	subss xmm2, [esi+0x4]
	lea eax, [edi+0x8d0]
	movaps xmm0, xmm1
	mulss xmm0, [edx+0x30]
	subss xmm0, [edi+0xdb0]
	movss [edi+0x8d0], xmm0
	movss [eax+0x4], xmm2
	movss [eax+0x8], xmm3
	mov [eax+0xc], ebx
	add word [edi+0xe3a], 0x1
	addss xmm1, xmm1
	movaps xmm3, xmm1
	mulss xmm3, [edx+0x8]
	movaps xmm2, xmm1
	mulss xmm2, [edx+0x4]
	lea eax, [edi+0x8e0]
	movaps xmm0, xmm1
	mulss xmm0, [edi+0xd70]
	movss [edi+0x8e0], xmm0
	movss [eax+0x4], xmm2
	movss [eax+0x8], xmm3
	mov [eax+0xc], ebx
	add word [edi+0xe3c], 0x1
	xorps xmm1, [_data16_80000000]
	movaps xmm2, xmm1
	mulss xmm2, [edx+0x18]
	movaps xmm0, xmm1
	mulss xmm0, [edx+0x14]
	lea eax, [edi+0x8f0]
	mulss xmm1, [edx+0x10]
	movss [edi+0x8f0], xmm1
	movss [eax+0x4], xmm0
	movss [eax+0x8], xmm2
	mov [eax+0xc], ebx
	add word [edi+0xe3e], 0x1
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z11R_BeginViewP20GfxCmdBufSourceStatePK11GfxSceneDefPK12GfxViewParms_20:
	lea ecx, [edi+0xef4]
	mov dword [edi+0xef4], 0x0
	mov dword [ecx+0x4], 0x0
	mov dword [ecx+0x8], 0x0
	lea esi, [edi+0xdb0]
	jmp _Z11R_BeginViewP20GfxCmdBufSourceStatePK11GfxSceneDefPK12GfxViewParms_30


;R_CmdBufSet3D(GfxCmdBufSourceState*)
_Z13R_CmdBufSet3DP20GfxCmdBufSourceState:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	add word [edx+0xee6], 0x1
	add word [edx+0xee8], 0x1
	add word [edx+0xeec], 0x1
	lea ecx, [edx+0x80]
	movzx eax, word [edx+0xee4]
	add eax, 0x1
	mov [edx+0xee4], ax
	add word [edx+0xeea], 0x1
	add word [edx+0xeee], 0x1
	add word [edx+0xef2], 0x1
	mov [edx+0xea4], ax
	mov eax, [g_identityMatrix44]
	mov [edx+0x80], eax
	mov eax, [g_identityMatrix44+0x4]
	mov [ecx+0x4], eax
	mov eax, [g_identityMatrix44+0x8]
	mov [ecx+0x8], eax
	mov eax, [g_identityMatrix44+0xc]
	mov [ecx+0xc], eax
	mov eax, [g_identityMatrix44+0x10]
	mov [ecx+0x10], eax
	mov eax, [g_identityMatrix44+0x14]
	mov [ecx+0x14], eax
	mov eax, [g_identityMatrix44+0x18]
	mov [ecx+0x18], eax
	mov eax, [g_identityMatrix44+0x1c]
	mov [ecx+0x1c], eax
	mov eax, [g_identityMatrix44+0x20]
	mov [ecx+0x20], eax
	mov eax, [g_identityMatrix44+0x24]
	mov [ecx+0x24], eax
	mov eax, [g_identityMatrix44+0x28]
	mov [ecx+0x28], eax
	mov eax, [g_identityMatrix44+0x2c]
	mov [ecx+0x2c], eax
	mov eax, [g_identityMatrix44+0x30]
	mov [ecx+0x30], eax
	mov eax, [g_identityMatrix44+0x34]
	mov [ecx+0x34], eax
	mov eax, [g_identityMatrix44+0x38]
	mov [ecx+0x38], eax
	mov eax, [g_identityMatrix44+0x3c]
	mov [ecx+0x3c], eax
	lea eax, [edx+0xb0]
	lea ecx, [edx+0xef4]
	movss xmm0, dword [edx+0xb0]
	subss xmm0, [edx+0xef4]
	movss [edx+0xb0], xmm0
	movss xmm0, dword [eax+0x4]
	subss xmm0, [ecx+0x4]
	movss [eax+0x4], xmm0
	movss xmm0, dword [eax+0x8]
	subss xmm0, [ecx+0x8]
	movss [eax+0x8], xmm0
	mov [ebp+0x8], edx
	pop ebp
	jmp _Z22R_DeriveOpenGLMatricesP20GfxCmdBufSourceState


;R_InitCmdBufState(GfxCmdBufState*)
_Z17R_InitCmdBufStateP14GfxCmdBufState:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov eax, [ebp+0x8]
	mov ebx, [eax+0x90]
	mov dword [esp+0x8], 0xa10
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call memset
	mov edx, [ebp+0x8]
	mov [edx+0x90], ebx
	mov dword [edx+0xcc], 0xffffffff
	mov dword [edx+0xd0], 0x0
	mov dword [edx+0xd4], 0x3f800000
	mov dword [edx+0xa04], 0x10
	mov eax, edx
	add eax, 0x9e4
	mov dword [edx+0x9e4], 0x18004800
	mov dword [edx+0x9e8], 0x2
	mov dword [edx+0x9dc], 0x18004800
	mov dword [edx+0x9e0], 0x2
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z18R_SetCompleteStateP16IDirect3DDevice9PKj
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x90]
	mov edx, [eax]
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x18
	mov [esp], eax
	call dword [edx+0xe4]
	mov eax, [ebp+0x8]
	mov byte [eax+0x9d8], 0x0
	mov eax, s_decodeSamplerFilterState
	mov eax, [eax+0x4]
	or eax, 0x1500000
	mov [ebp-0x1c], eax
	and eax, 0xf00
	shr eax, 0x8
	mov [ebp-0x38], eax
	mov edx, [ebp-0x1c]
	and edx, 0xf000
	shr edx, 0xc
	mov [ebp-0x34], edx
	movzx ecx, byte [ebp-0x1c]
	mov [ebp-0x30], ecx
	mov eax, [ebp-0x1c]
	and eax, 0xf0000
	shr eax, 0x10
	mov [ebp-0x2c], eax
	mov edx, [ebp-0x1c]
	and edx, 0x300000
	shr edx, 0x14
	mov [ebp-0x28], edx
	mov ecx, [ebp-0x1c]
	and ecx, 0xc00000
	shr ecx, 0x16
	mov [ebp-0x24], ecx
	mov eax, [ebp-0x1c]
	and eax, 0x3000000
	shr eax, 0x18
	mov [ebp-0x20], eax
	mov dword [ebp-0x3c], 0x0
	xor esi, esi
	mov edi, [ebp+0x8]
	add edi, 0x10
_Z17R_InitCmdBufStateP14GfxCmdBufState_20:
	mov edx, [ebp+0x8]
	mov edx, [edx+0x90]
	mov [ebp-0x4c], edx
	mov eax, esi
	add eax, [edx+0x3a0]
	mov ecx, [ebp-0x38]
	mov [eax+0x18], ecx
	mov ebx, 0x1
	movzx ecx, byte [ebp-0x3c]
	shl ebx, cl
	or [edx+0x444], ebx
	mov eax, esi
	add eax, [edx+0x3a0]
	mov edx, [ebp-0x34]
	mov [eax+0x14], edx
	mov ecx, [ebp-0x4c]
	or [ecx+0x444], ebx
	cmp dword [ebp-0x30], 0x1
	jle _Z17R_InitCmdBufStateP14GfxCmdBufState_10
	mov eax, esi
	add eax, [ecx+0x3a0]
	mov edx, [ebp-0x30]
	mov [eax+0x28], edx
	or [ecx+0x444], ebx
_Z17R_InitCmdBufStateP14GfxCmdBufState_10:
	mov eax, esi
	mov ecx, [ebp-0x4c]
	add eax, [ecx+0x3a0]
	mov edx, [ebp-0x2c]
	mov [eax+0x1c], edx
	or [ecx+0x444], ebx
	mov ecx, dx_ctx
	mov edx, [ecx+0x2cd0]
	mov eax, esi
	mov ecx, [ebp-0x4c]
	add eax, [ecx+0x3a0]
	mov [eax+0x20], edx
	or [ecx+0x444], ebx
	mov eax, esi
	add eax, [ecx+0x3a0]
	mov edx, [ebp-0x28]
	mov [eax+0x4], edx
	or [ecx+0x444], ebx
	mov eax, [ecx+0x3a0]
	add eax, esi
	mov ecx, [ebp-0x24]
	mov [eax+0x8], ecx
	mov eax, [ebp-0x4c]
	or [eax+0x444], ebx
	mov edx, [ebp-0x4c]
	mov eax, [edx+0x3a0]
	add eax, esi
	mov ecx, [ebp-0x20]
	mov [eax+0xc], ecx
	or [edx+0x444], ebx
	mov eax, [ebp+0x8]
	mov edx, [ebp-0x3c]
	mov byte [eax+edx], 0x1
	mov ecx, [ebp-0x1c]
	mov [edi], ecx
	add edx, 0x1
	mov [ebp-0x3c], edx
	add edi, 0x4
	add esi, 0x38
	cmp edx, 0x10
	jnz _Z17R_InitCmdBufStateP14GfxCmdBufState_20
	mov dword [eax+0xb4], 0xffffffff
	mov dword [eax+0x9ec], 0xffffffff
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;R_GetActiveWorldMatrix(GfxCmdBufSourceState*)
_Z22R_GetActiveWorldMatrixP20GfxCmdBufSourceState:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	movzx edx, word [eax+0xee4]
	add edx, 0x1
	mov [eax+0xee4], dx
	add word [eax+0xeea], 0x1
	add word [eax+0xeee], 0x1
	add word [eax+0xef2], 0x1
	mov [eax+0xea4], dx
	sub eax, 0xffffff80
	pop ebp
	ret
	nop


;R_InitCmdBufSourceState(GfxCmdBufSourceState*, GfxCmdBufInput const*, int)
_Z23R_InitCmdBufSourceStateP20GfxCmdBufSourceStatePK14GfxCmdBufInputi:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	mov dword [esp+0x8], 0xf80
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call memset
	lea edi, [esi+0x880]
	mov dword [esp+0x8], 0x430
	mov [esp+0x4], ebx
	mov [esp], edi
	call memcpy
	cmp ebx, gfxCmdBufInput
	jnz _Z23R_InitCmdBufSourceStateP20GfxCmdBufSourceStatePK14GfxCmdBufInputi_10
	xor edx, edx
	lea eax, [esi+0x880]
_Z23R_InitCmdBufSourceStateP20GfxCmdBufSourceStatePK14GfxCmdBufInputi_20:
	mov dword [eax], 0x7f7fffff
	mov dword [eax+0x4], 0x7f7fffff
	mov dword [eax+0x8], 0x7f7fffff
	mov dword [eax+0xc], 0x0
	add edx, 0x1
	add eax, 0x10
	cmp edx, 0x3a
	jnz _Z23R_InitCmdBufSourceStateP20GfxCmdBufSourceStatePK14GfxCmdBufInputi_20
_Z23R_InitCmdBufSourceStateP20GfxCmdBufSourceStatePK14GfxCmdBufInputi_50:
	mov eax, 0x3f800000
	mov [esi+0xf20], eax
	mov [esi+0xf30], eax
	mov eax, [ebp+0x10]
	mov [esi+0xf34], eax
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z23R_InitCmdBufSourceStateP20GfxCmdBufSourceStatePK14GfxCmdBufInputi_10:
	mov edx, esi
	xor ebx, ebx
	mov ecx, s_codeConstUpdateFreq
	mov eax, edi
_Z23R_InitCmdBufSourceStateP20GfxCmdBufSourceStatePK14GfxCmdBufInputi_40:
	cmp dword [ecx], 0x2
	jz _Z23R_InitCmdBufSourceStateP20GfxCmdBufSourceStatePK14GfxCmdBufInputi_30
_Z23R_InitCmdBufSourceStateP20GfxCmdBufSourceStatePK14GfxCmdBufInputi_60:
	mov dword [eax], 0x7f7fffff
	mov dword [eax+0x4], 0x7f7fffff
	mov dword [eax+0x8], 0x7f7fffff
	mov dword [eax+0xc], 0x0
_Z23R_InitCmdBufSourceStateP20GfxCmdBufSourceStatePK14GfxCmdBufInputi_70:
	add ebx, 0x1
	add eax, 0x10
	add edx, 0x2
	add ecx, 0x4
	cmp ebx, 0x3a
	jnz _Z23R_InitCmdBufSourceStateP20GfxCmdBufSourceStatePK14GfxCmdBufInputi_40
	jmp _Z23R_InitCmdBufSourceStateP20GfxCmdBufSourceStatePK14GfxCmdBufInputi_50
_Z23R_InitCmdBufSourceStateP20GfxCmdBufSourceStatePK14GfxCmdBufInputi_30:
	cmp ebx, 0x1f
	jbe _Z23R_InitCmdBufSourceStateP20GfxCmdBufSourceStatePK14GfxCmdBufInputi_60
	mov word [edx+0xe30], 0x1
	jmp _Z23R_InitCmdBufSourceStateP20GfxCmdBufSourceStatePK14GfxCmdBufInputi_70


;R_SetShadowLookupMatrix(GfxCmdBufSourceState*, GfxMatrix const*)
_Z23R_SetShadowLookupMatrixP20GfxCmdBufSourceStatePK9GfxMatrix:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	add word [eax+0xef0], 0x1
	mov ecx, [edx]
	mov [eax+0xdf0], ecx
	mov ecx, [edx+0x4]
	mov [eax+0xdf4], ecx
	mov ecx, [edx+0x8]
	mov [eax+0xdf8], ecx
	mov ecx, [edx+0xc]
	mov [eax+0xdfc], ecx
	mov ecx, [edx+0x10]
	mov [eax+0xe00], ecx
	mov ecx, [edx+0x14]
	mov [eax+0xe04], ecx
	mov ecx, [edx+0x18]
	mov [eax+0xe08], ecx
	mov ecx, [edx+0x1c]
	mov [eax+0xe0c], ecx
	mov ecx, [edx+0x20]
	mov [eax+0xe10], ecx
	mov ecx, [edx+0x24]
	mov [eax+0xe14], ecx
	mov ecx, [edx+0x28]
	mov [eax+0xe18], ecx
	mov ecx, [edx+0x2c]
	mov [eax+0xe1c], ecx
	mov ecx, [edx+0x30]
	mov [eax+0xe20], ecx
	mov ecx, [edx+0x34]
	mov [eax+0xe24], ecx
	mov ecx, [edx+0x38]
	mov [eax+0xe28], ecx
	mov edx, [edx+0x3c]
	mov [eax+0xe2c], edx
	pop ebp
	ret


;R_Set2D(GfxCmdBufSourceState*)
_Z7R_Set2DP20GfxCmdBufSourceState:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xcc
	mov esi, [ebp+0x8]
	cmp dword [esi+0xf38], 0x2
	jz _Z7R_Set2DP20GfxCmdBufSourceState_10
	mov dword [esi+0xf38], 0x2
	mov byte [esi+0xf70], 0x1
	lea edx, [esi+0xef4]
	xor eax, eax
	mov [esi+0xef4], eax
	mov [edx+0x4], eax
	mov [edx+0x8], eax
	movss xmm3, dword [_float_1_00000000]
	movss [esi+0xf00], xmm3
	lea eax, [ebp-0x28]
	mov [esp+0x4], eax
	mov [esp], esi
	movss [ebp-0xb8], xmm3
	call _Z13R_GetViewportP20GfxCmdBufSourceStateP11GfxViewport
	cvtsi2ss xmm0, dword [ebp-0x20]
	movss xmm3, dword [ebp-0xb8]
	movaps xmm2, xmm3
	divss xmm2, xmm0
	cvtsi2ss xmm0, dword [ebp-0x1c]
	movaps xmm1, xmm3
	divss xmm1, xmm0
	lea eax, [esi+0xcb0]
	mov [ebp-0xbc], eax
	lea edi, [ebp-0xa8]
	cld
	mov ecx, 0x10
	xor eax, eax
	rep stosd
	movaps xmm0, xmm2
	addss xmm0, xmm2
	movss [ebp-0xa8], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [_float__2_00000000]
	movss [ebp-0x94], xmm0
	movss xmm0, dword [_float__1_00000000]
	subss xmm0, xmm2
	movss [ebp-0x78], xmm0
	addss xmm1, xmm3
	movss [ebp-0x74], xmm1
	movss [ebp-0x70], xmm3
	movss [ebp-0x6c], xmm3
	mov edx, [g_identityMatrix44]
	mov [ebp-0x68], edx
	mov eax, [g_identityMatrix44+0x4]
	mov [ebp-0x64], eax
	mov edx, [g_identityMatrix44+0x8]
	mov [ebp-0x60], edx
	mov eax, [g_identityMatrix44+0xc]
	mov [ebp-0x5c], eax
	mov edx, [g_identityMatrix44+0x10]
	mov [ebp-0x58], edx
	mov eax, [g_identityMatrix44+0x14]
	mov [ebp-0x54], eax
	mov edx, [g_identityMatrix44+0x18]
	mov [ebp-0x50], edx
	mov eax, [g_identityMatrix44+0x1c]
	mov [ebp-0x4c], eax
	mov edx, [g_identityMatrix44+0x20]
	mov [ebp-0x48], edx
	mov eax, [g_identityMatrix44+0x24]
	mov [ebp-0x44], eax
	mov edx, [g_identityMatrix44+0x28]
	mov [ebp-0x40], edx
	mov eax, [g_identityMatrix44+0x2c]
	mov [ebp-0x3c], eax
	mov edx, [g_identityMatrix44+0x30]
	mov [ebp-0x38], edx
	mov eax, [g_identityMatrix44+0x34]
	mov [ebp-0x34], eax
	mov edx, [g_identityMatrix44+0x38]
	mov [ebp-0x30], edx
	mov eax, [g_identityMatrix44+0x3c]
	mov [ebp-0x2c], eax
	mov edx, [g_identityMatrix44]
	mov [esi+0xcb0], edx
	mov edx, [g_identityMatrix44+0x4]
	mov eax, [ebp-0xbc]
	mov [eax+0x4], edx
	mov edx, [g_identityMatrix44+0x8]
	mov [eax+0x8], edx
	mov edx, [g_identityMatrix44+0xc]
	mov [eax+0xc], edx
	mov edx, [g_identityMatrix44+0x10]
	mov [eax+0x10], edx
	mov edx, [g_identityMatrix44+0x14]
	mov [eax+0x14], edx
	mov edx, [g_identityMatrix44+0x18]
	mov [eax+0x18], edx
	mov edx, [g_identityMatrix44+0x1c]
	mov [eax+0x1c], edx
	mov edx, [g_identityMatrix44+0x20]
	mov [eax+0x20], edx
	mov edx, [g_identityMatrix44+0x24]
	mov [eax+0x24], edx
	mov edx, [g_identityMatrix44+0x28]
	mov [eax+0x28], edx
	mov edx, [g_identityMatrix44+0x2c]
	mov [eax+0x2c], edx
	mov edx, [g_identityMatrix44+0x30]
	mov [eax+0x30], edx
	mov edx, [g_identityMatrix44+0x34]
	mov [eax+0x34], edx
	mov edx, [g_identityMatrix44+0x38]
	mov [eax+0x38], edx
	mov edx, [g_identityMatrix44+0x3c]
	mov [eax+0x3c], edx
	mov edx, [ebp-0xa8]
	mov [eax+0x40], edx
	mov edx, [ebp-0xa4]
	mov [eax+0x44], edx
	mov edx, [ebp-0xa0]
	mov [eax+0x48], edx
	mov edx, [ebp-0x9c]
	mov [eax+0x4c], edx
	mov edx, [ebp-0x98]
	mov [eax+0x50], edx
	mov edx, [ebp-0x94]
	mov [eax+0x54], edx
	mov edx, [ebp-0x90]
	mov [eax+0x58], edx
	mov edx, [ebp-0x8c]
	mov [eax+0x5c], edx
	mov edx, [ebp-0x88]
	mov [eax+0x60], edx
	mov edx, [ebp-0x84]
	mov [eax+0x64], edx
	mov edx, [ebp-0x80]
	mov [eax+0x68], edx
	mov edi, [ebp-0x7c]
	mov [eax+0x6c], edi
	mov edx, [ebp-0x78]
	mov [eax+0x70], edx
	mov ebx, [ebp-0x74]
	mov [eax+0x74], ebx
	mov ecx, [ebp-0x70]
	mov [eax+0x78], ecx
	mov edx, [ebp-0x6c]
	mov [eax+0x7c], edx
	mov edx, [ebp-0xa8]
	mov [eax+0x80], edx
	mov edx, [ebp-0xa4]
	mov [eax+0x84], edx
	mov edx, [ebp-0xa0]
	mov [eax+0x88], edx
	mov edx, [ebp-0x9c]
	mov [eax+0x8c], edx
	mov edx, [ebp-0x98]
	mov [eax+0x90], edx
	mov edx, [ebp-0x94]
	mov [eax+0x94], edx
	mov edx, [ebp-0x90]
	mov [eax+0x98], edx
	mov edx, [ebp-0x8c]
	mov [eax+0x9c], edx
	mov edx, [ebp-0x88]
	mov [eax+0xa0], edx
	mov edx, [ebp-0x84]
	mov [eax+0xa4], edx
	mov edx, [ebp-0x80]
	mov [eax+0xa8], edx
	mov [eax+0xac], edi
	mov edx, [ebp-0x78]
	mov [eax+0xb0], edx
	mov [eax+0xb4], ebx
	mov [eax+0xb8], ecx
	mov edx, [ebp-0x6c]
	mov [eax+0xbc], edx
	lea edi, [esi+0xd70]
	mov ecx, 0x10
	xor eax, eax
	rep stosd
	add word [esi+0xee6], 0x1
	add word [esi+0xee8], 0x1
	add word [esi+0xeec], 0x1
	movzx eax, word [esi+0xee4]
	add eax, 0x1
	mov [esi+0xee4], ax
	add word [esi+0xeea], 0x1
	add word [esi+0xeee], 0x1
	add word [esi+0xef2], 0x1
	mov [esi+0xea4], ax
	mov edx, [g_identityMatrix44]
	mov [esi+0x80], edx
	mov eax, [g_identityMatrix44+0x4]
	mov [esi+0x84], eax
	mov edx, [g_identityMatrix44+0x8]
	mov [esi+0x88], edx
	mov eax, [g_identityMatrix44+0xc]
	mov [esi+0x8c], eax
	mov edx, [g_identityMatrix44+0x10]
	mov [esi+0x90], edx
	mov eax, [g_identityMatrix44+0x14]
	mov [esi+0x94], eax
	mov edx, [g_identityMatrix44+0x18]
	mov [esi+0x98], edx
	mov eax, [g_identityMatrix44+0x1c]
	mov [esi+0x9c], eax
	mov edx, [g_identityMatrix44+0x20]
	mov [esi+0xa0], edx
	mov eax, [g_identityMatrix44+0x24]
	mov [esi+0xa4], eax
	mov edx, [g_identityMatrix44+0x28]
	mov [esi+0xa8], edx
	mov eax, [g_identityMatrix44+0x2c]
	mov [esi+0xac], eax
	mov edx, [g_identityMatrix44+0x30]
	mov [esi+0xb0], edx
	mov eax, [g_identityMatrix44+0x34]
	mov [esi+0xb4], eax
	mov edx, [g_identityMatrix44+0x38]
	mov [esi+0xb8], edx
	mov eax, [g_identityMatrix44+0x3c]
	mov [esi+0xbc], eax
	mov [esp], esi
	call _Z22R_DeriveOpenGLMatricesP20GfxCmdBufSourceState
_Z7R_Set2DP20GfxCmdBufSourceState_10:
	add esp, 0xcc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;R_Set3D(GfxCmdBufSourceState*)
_Z7R_Set3DP20GfxCmdBufSourceState:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	cmp dword [ebx+0xf38], 0x1
	jz _Z7R_Set3DP20GfxCmdBufSourceState_10
	mov dword [ebx+0xf38], 0x1
	mov eax, [ebx+0xf0c]
	lea edx, [ebx+0xcb0]
	mov dword [esp+0x8], 0x140
	mov [esp+0x4], eax
	mov [esp], edx
	call memcpy
	pxor xmm0, xmm0
	ucomiss xmm0, [ebx+0xdbc]
	jp _Z7R_Set3DP20GfxCmdBufSourceState_20
	jz _Z7R_Set3DP20GfxCmdBufSourceState_30
_Z7R_Set3DP20GfxCmdBufSourceState_20:
	lea ecx, [ebx+0xef4]
	lea edx, [ebx+0xdb0]
	mov eax, [ebx+0xdb0]
	mov [ebx+0xef4], eax
	mov eax, [edx+0x4]
	mov [ecx+0x4], eax
	mov eax, [edx+0x8]
	mov [ecx+0x8], eax
_Z7R_Set3DP20GfxCmdBufSourceState_40:
	mov dword [ebx+0xf00], 0x3f800000
	add word [ebx+0xee6], 0x1
	add word [ebx+0xee8], 0x1
	add word [ebx+0xeec], 0x1
	lea edx, [ebx+0x80]
	movzx eax, word [ebx+0xee4]
	add eax, 0x1
	mov [ebx+0xee4], ax
	add word [ebx+0xeea], 0x1
	add word [ebx+0xeee], 0x1
	add word [ebx+0xef2], 0x1
	mov [ebx+0xea4], ax
	mov eax, [g_identityMatrix44]
	mov [ebx+0x80], eax
	mov eax, [g_identityMatrix44+0x4]
	mov [edx+0x4], eax
	mov eax, [g_identityMatrix44+0x8]
	mov [edx+0x8], eax
	mov eax, [g_identityMatrix44+0xc]
	mov [edx+0xc], eax
	mov eax, [g_identityMatrix44+0x10]
	mov [edx+0x10], eax
	mov eax, [g_identityMatrix44+0x14]
	mov [edx+0x14], eax
	mov eax, [g_identityMatrix44+0x18]
	mov [edx+0x18], eax
	mov eax, [g_identityMatrix44+0x1c]
	mov [edx+0x1c], eax
	mov eax, [g_identityMatrix44+0x20]
	mov [edx+0x20], eax
	mov eax, [g_identityMatrix44+0x24]
	mov [edx+0x24], eax
	mov eax, [g_identityMatrix44+0x28]
	mov [edx+0x28], eax
	mov eax, [g_identityMatrix44+0x2c]
	mov [edx+0x2c], eax
	mov eax, [g_identityMatrix44+0x30]
	mov [edx+0x30], eax
	mov eax, [g_identityMatrix44+0x34]
	mov [edx+0x34], eax
	mov eax, [g_identityMatrix44+0x38]
	mov [edx+0x38], eax
	mov eax, [g_identityMatrix44+0x3c]
	mov [edx+0x3c], eax
	lea eax, [ebx+0xb0]
	movss xmm0, dword [ebx+0xb0]
	subss xmm0, [ebx+0xef4]
	movss [ebx+0xb0], xmm0
	movss xmm0, dword [eax+0x4]
	subss xmm0, [ecx+0x4]
	movss [eax+0x4], xmm0
	movss xmm0, dword [eax+0x8]
	subss xmm0, [ecx+0x8]
	movss [eax+0x8], xmm0
	mov [ebp+0x8], ebx
	add esp, 0x14
	pop ebx
	pop ebp
	jmp _Z22R_DeriveOpenGLMatricesP20GfxCmdBufSourceState
_Z7R_Set3DP20GfxCmdBufSourceState_30:
	lea ecx, [ebx+0xef4]
	mov dword [ebx+0xef4], 0x0
	mov dword [ecx+0x4], 0x0
	mov dword [ecx+0x8], 0x0
	jmp _Z7R_Set3DP20GfxCmdBufSourceState_40
_Z7R_Set3DP20GfxCmdBufSourceState_10:
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;Initialized global or static variables of r_state_utils:
SECTION .data


;Initialized constant data of r_state_utils:
SECTION .rdata
g_identityMatrix44: dd 0x3f800000, 0x0, 0x0, 0x0, 0x0, 0x3f800000, 0x0, 0x0, 0x0, 0x0, 0x3f800000, 0x0, 0x0, 0x0, 0x0, 0x3f800000, 0x80000000, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0


;Zero initialized global or static variables of r_state_utils:
SECTION .bss


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata
_float_1_00000000:		dd 0x3f800000	; 1
_data16_80000000:		dd 0x80000000, 0x0, 0x0, 0x0	; OWORD
_float__2_00000000:		dd 0xc0000000	; -2
_float__1_00000000:		dd 0xbf800000	; -1

