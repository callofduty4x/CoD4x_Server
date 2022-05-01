;Imports of r_spotshadow:
	extern _Z22R_UpdateSceneEntBoundsP14GfxSceneEntityPS0_PPK6DObj_si
	extern _Z15CullBoxFromConePKfS0_fS0_S0_
	extern _Z19CG_UsedDObjCalcPosePK7cpose_t
	extern _Z9CG_CullInPK7cpose_t
	extern _Z15R_SkinSceneDObjP14GfxSceneEntityS0_PK6DObj_sP11DObjAnimMati
	extern _Z14R_AddSceneDObjjj
	extern sm_qualitySpotShadow
	extern rgp
	extern frontEndDataOut
	extern _ZN10MacDisplay10Is1900CardEv
	extern gfxRenderTargets
	extern gfxMeshGlob
	extern _Z16R_IsPrimaryLightj
	extern _Z19PerpendicularVectorPKfPf
	extern _Z15MatrixForViewerPA4_fPKfPA3_S1_
	extern _Z23FinitePerspectiveMatrixPA4_fffff
	extern _Z29R_SetupViewProjectionMatricesP12GfxViewParms
	extern scene
	extern gfxCfg
	extern _Z31R_IsEntityVisibleToPrimaryLightjjj
	extern _Z14R_AddWorkerCmd13WorkerCmdTypePv
	extern _Z18PIXBeginNamedEventiPKcz
	extern _Z33R_AddAllBspDrawSurfacesSpotShadowjj
	extern _Z37R_AddAllStaticModelSurfacesSpotShadowjj
	extern _Z34R_AddAllSceneEntSurfacesSpotShadowPK11GfxViewInfojj
	extern _Z22R_InitDrawSurfListInfoP19GfxDrawSurfListInfo
	extern gfxMetrics
	extern _Z27R_MergeAndEmitDrawSurfListsjjP19GfxDrawSurfListInfo
	extern _Z33R_EmitShadowedLightPartitionSurfsP11GfxViewInfoiPK11GfxDrawSurfP19GfxDrawSurfListInfo

;Exports of r_spotshadow:
	global _Z21R_AddSpotShadowEntCmdPv
	global _Z24R_AddSpotShadowsForLightP11GfxViewInfoP8GfxLightjf
	global _Z38R_GenerateAllSortedSpotShadowDrawSurfsP11GfxViewInfo


SECTION .text


;R_AddSpotShadowEntCmd(void*)
_Z21R_AddSpotShadowEntCmdPv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov ebx, [ebp+0x8]
	mov edi, [ebx]
	mov dword [esp+0xc], 0x1
	lea eax, [ebp-0x20]
	mov [esp+0x8], eax
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z22R_UpdateSceneEntBoundsP14GfxSceneEntityPS0_PPK6DObj_si
	mov esi, eax
	test eax, eax
	jz _Z21R_AddSpotShadowEntCmdPv_10
	mov ebx, [ebx+0x4]
	mov eax, [ebp-0x1c]
	lea edx, [eax+0x3c]
	movss xmm2, dword [eax+0x30]
	addss xmm2, [eax+0x3c]
	movss xmm3, dword [_float_0_50000000]
	mulss xmm2, xmm3
	movss [ebp-0x2c], xmm2
	movss xmm1, dword [eax+0x34]
	addss xmm1, [edx+0x4]
	mulss xmm1, xmm3
	movss [ebp-0x28], xmm1
	movss xmm0, dword [eax+0x38]
	addss xmm0, [edx+0x8]
	mulss xmm0, xmm3
	movss [ebp-0x24], xmm0
	subss xmm2, [eax+0x30]
	movss [ebp-0x38], xmm2
	subss xmm1, [eax+0x34]
	movss [ebp-0x34], xmm1
	subss xmm0, [eax+0x38]
	movss [ebp-0x30], xmm0
	lea eax, [ebp-0x38]
	mov [esp+0x10], eax
	lea eax, [ebp-0x2c]
	mov [esp+0xc], eax
	mov eax, [ebx+0x2c]
	mov [esp+0x8], eax
	lea eax, [ebx+0x10]
	mov [esp+0x4], eax
	lea eax, [ebx+0x1c]
	mov [esp], eax
	call _Z15CullBoxFromConePKfS0_fS0_S0_
	test al, al
	jz _Z21R_AddSpotShadowEntCmdPv_20
	mov eax, [ebp-0x1c]
_Z21R_AddSpotShadowEntCmdPv_30:
	mov eax, [eax+0x74]
	mov [esp], eax
	call _Z19CG_UsedDObjCalcPosePK7cpose_t
_Z21R_AddSpotShadowEntCmdPv_40:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z21R_AddSpotShadowEntCmdPv_20:
	mov eax, [ebp-0x1c]
	mov eax, [eax+0x74]
	mov [esp], eax
	call _Z9CG_CullInPK7cpose_t
	mov dword [esp+0x10], 0x0
	mov [esp+0xc], esi
	mov eax, [ebp-0x20]
	mov [esp+0x8], eax
	mov eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z15R_SkinSceneDObjP14GfxSceneEntityS0_PK6DObj_sP11DObjAnimMati
	mov eax, [ebx+0x38]
	add eax, 0x3
	mov [esp+0x4], eax
	mov eax, [ebp-0x1c]
	movzx eax, word [eax+0x6e]
	mov [esp], eax
	call _Z14R_AddSceneDObjjj
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z21R_AddSpotShadowEntCmdPv_10:
	mov eax, [ebp-0x1c]
	test eax, eax
	jnz _Z21R_AddSpotShadowEntCmdPv_30
	jmp _Z21R_AddSpotShadowEntCmdPv_40
	nop


;R_AddSpotShadowsForLight(GfxViewInfo*, GfxLight*, unsigned int, float)
_Z24R_AddSpotShadowsForLightP11GfxViewInfoP8GfxLightjf:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x7c
	mov eax, [ebp+0x8]
	mov edi, [eax+0x5b30]
	lea eax, [edi+0x1]
	mov edx, [ebp+0x8]
	mov [edx+0x5b30], eax
	mov ebx, [ebp+0xc]
	mov [ebx+0x38], edi
	mov edx, edi
	shl edx, 0x4
	mov eax, edi
	shl eax, 0x9
	sub eax, edx
	mov edx, [ebp+0x8]
	lea esi, [eax+edx+0x5b40]
	movzx ebx, byte [ebp+0x10]
	mov [esi+0x180], bl
	mov eax, [ebp+0xc]
	mov [esi+0x184], eax
	mov eax, [ebp+0x14]
	mov [esi+0x188], eax
	mov eax, sm_qualitySpotShadow
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z24R_AddSpotShadowsForLightP11GfxViewInfoP8GfxLightjf_10
	mov eax, rgp
	mov eax, [eax+0x20a0]
	mov ecx, [eax+0xd8]
	mov ebx, ecx
	sar ebx, 0x5
	mov eax, frontEndDataOut
	mov edx, [eax]
	and ecx, 0x1f
	mov eax, 0x1
	shl eax, cl
	test [edx+ebx*4+0x118230], eax
	jz _Z24R_AddSpotShadowsForLightP11GfxViewInfoP8GfxLightjf_20
_Z24R_AddSpotShadowsForLightP11GfxViewInfoP8GfxLightjf_10:
	mov byte [ebp-0x45], 0x0
_Z24R_AddSpotShadowsForLightP11GfxViewInfoP8GfxLightjf_240:
	mov dword [esi+0x1b4], 0x0
	call _ZN10MacDisplay10Is1900CardEv
	cmp al, 0x1
	sbb eax, eax
	and eax, 0x100
	add eax, 0x100
	imul eax, edi
	mov [esi+0x1b8], eax
	call _ZN10MacDisplay10Is1900CardEv
	cmp al, 0x1
	sbb eax, eax
	and eax, 0x100
	add eax, 0x100
	mov [esi+0x1bc], eax
	call _ZN10MacDisplay10Is1900CardEv
	cmp al, 0x1
	sbb eax, eax
	and eax, 0x100
	add eax, 0x100
	mov [esi+0x1c0], eax
	mov eax, gfxRenderTargets
	mov eax, [eax+0x118]
	mov [esi+0x1c4], eax
	mov dword [esi+0x1c8], 0xe
	call _ZN10MacDisplay10Is1900CardEv
	test al, al
	jz _Z24R_AddSpotShadowsForLightP11GfxViewInfoP8GfxLightjf_30
	movss xmm2, dword [_float__0_00024414]
	movss [ebp-0x3c], xmm2
	call _ZN10MacDisplay10Is1900CardEv
	test al, al
	jz _Z24R_AddSpotShadowsForLightP11GfxViewInfoP8GfxLightjf_40
_Z24R_AddSpotShadowsForLightP11GfxViewInfoP8GfxLightjf_190:
	movss xmm2, dword [_float_0_00195312]
	movss [ebp-0x38], xmm2
	call _ZN10MacDisplay10Is1900CardEv
	test al, al
	jz _Z24R_AddSpotShadowsForLightP11GfxViewInfoP8GfxLightjf_50
_Z24R_AddSpotShadowsForLightP11GfxViewInfoP8GfxLightjf_200:
	mov ebx, 0x3a000000
	call _ZN10MacDisplay10Is1900CardEv
	test al, al
	jz _Z24R_AddSpotShadowsForLightP11GfxViewInfoP8GfxLightjf_60
_Z24R_AddSpotShadowsForLightP11GfxViewInfoP8GfxLightjf_210:
	mov edx, 0x3a800000
_Z24R_AddSpotShadowsForLightP11GfxViewInfoP8GfxLightjf_220:
	lea eax, [esi+0x1cc]
	mov [esi+0x1cc], edx
	mov [eax+0x4], ebx
	movss xmm2, dword [ebp-0x38]
	movss [eax+0x8], xmm2
	movss xmm0, dword [ebp-0x3c]
	movss [eax+0xc], xmm0
	cmp byte [ebp-0x45], 0x0
	jz _Z24R_AddSpotShadowsForLightP11GfxViewInfoP8GfxLightjf_70
	xor eax, eax
	cmp edi, 0x2
	setz al
	mov [esi+0x1dc], eax
_Z24R_AddSpotShadowsForLightP11GfxViewInfoP8GfxLightjf_260:
	mov eax, edi
	shl eax, 0x5
	mov edx, gfxMeshGlob
	lea eax, [eax+edx+0xc0]
	mov [esi+0x1e0], eax
	movss xmm2, dword [_float_4_00000000]
	movss [ebp-0x30], xmm2
_Z24R_AddSpotShadowsForLightP11GfxViewInfoP8GfxLightjf_320:
	mov eax, [ebp+0x10]
	mov [esp], eax
	call _Z16R_IsPrimaryLightj
	test eax, eax
	jz _Z24R_AddSpotShadowsForLightP11GfxViewInfoP8GfxLightjf_80
	movss xmm0, dword [_float_1_00000000]
	movss [ebp-0x2c], xmm0
_Z24R_AddSpotShadowsForLightP11GfxViewInfoP8GfxLightjf_250:
	lea ebx, [esi+0x110]
	mov eax, [ebp+0xc]
	add eax, 0x10
	movss xmm1, dword [_data16_80000000]
	mov edx, [ebp+0xc]
	movss xmm0, dword [edx+0x10]
	xorps xmm0, xmm1
	movss [esi+0x110], xmm0
	movss xmm0, dword [eax+0x4]
	xorps xmm0, xmm1
	movss [ebx+0x4], xmm0
	movss xmm0, dword [eax+0x8]
	xorps xmm0, xmm1
	movss [ebx+0x8], xmm0
	lea eax, [esi+0x128]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z19PerpendicularVectorPKfPf
	lea eax, [esi+0x11c]
	movss xmm0, dword [esi+0x12c]
	mulss xmm0, [esi+0x118]
	movss xmm2, dword [esi+0x130]
	movaps xmm1, xmm2
	mulss xmm1, [esi+0x114]
	subss xmm0, xmm1
	movss [esi+0x11c], xmm0
	mulss xmm2, [esi+0x110]
	movss xmm0, dword [esi+0x128]
	mulss xmm0, [esi+0x118]
	subss xmm2, xmm0
	movss [eax+0x4], xmm2
	movss xmm1, dword [esi+0x128]
	mulss xmm1, [esi+0x114]
	movss xmm0, dword [esi+0x12c]
	mulss xmm0, [esi+0x110]
	subss xmm1, xmm0
	movss [eax+0x8], xmm1
	lea edx, [esi+0x100]
	mov ecx, [ebp+0xc]
	add ecx, 0x1c
	mov eax, [ebp+0xc]
	movss xmm0, dword [eax+0x1c]
	movss [esi+0x100], xmm0
	mov eax, [ecx+0x4]
	mov [edx+0x4], eax
	mov eax, [ecx+0x8]
	mov [edx+0x8], eax
	mov dword [esi+0x10c], 0x3f800000
	mov [esp+0x8], ebx
	mov [esp+0x4], edx
	mov [esp], esi
	call _Z15MatrixForViewerPA4_fPKfPA3_S1_
	mov eax, [ebp+0xc]
	movss xmm0, dword [eax+0x2c]
	movaps xmm1, xmm0
	mulss xmm1, xmm0
	movss xmm2, dword [_float_1_00000000]
	subss xmm2, xmm1
	sqrtss xmm1, xmm2
	divss xmm1, xmm0
	mov eax, [eax+0x28]
	mov [esp+0x10], eax
	movss xmm0, dword [ebp-0x2c]
	movss [esp+0xc], xmm0
	movss [esp+0x8], xmm1
	movss [esp+0x4], xmm1
	lea eax, [esi+0x40]
	mov [esp], eax
	call _Z23FinitePerspectiveMatrixPA4_fffff
	mov [esp], esi
	call _Z29R_SetupViewProjectionMatricesP12GfxViewParms
	mov eax, [esi+0x78]
	mov [esi+0x134], eax
	lea ecx, [esi+0x140]
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, dword [ebp-0x30]
	test edi, edi
	js _Z24R_AddSpotShadowsForLightP11GfxViewInfoP8GfxLightjf_90
	cvtsi2ss xmm3, edi
_Z24R_AddSpotShadowsForLightP11GfxViewInfoP8GfxLightjf_270:
	mulss xmm3, xmm0
	addss xmm0, xmm3
	movaps xmm4, xmm3
	subss xmm4, xmm0
	movss xmm1, dword [_float_0_50000000]
	mulss xmm4, xmm1
	addss xmm3, xmm0
	mulss xmm3, xmm1
	movss xmm0, dword [esi+0x80]
	mulss xmm0, xmm1
	movss xmm2, dword [esi+0x8c]
	mulss xmm2, xmm1
	addss xmm0, xmm2
	movss [ecx], xmm0
	movss xmm0, dword [esi+0x90]
	mulss xmm0, xmm1
	movss xmm2, dword [esi+0x9c]
	mulss xmm2, xmm1
	addss xmm0, xmm2
	movss [ecx+0x10], xmm0
	movss xmm0, dword [esi+0xa0]
	mulss xmm0, xmm1
	movss xmm2, dword [esi+0xac]
	mulss xmm2, xmm1
	addss xmm0, xmm2
	movss [ecx+0x20], xmm0
	movss xmm0, dword [esi+0xb0]
	mulss xmm0, xmm1
	mulss xmm1, [esi+0xbc]
	addss xmm0, xmm1
	movss [ecx+0x30], xmm0
	movaps xmm0, xmm4
	mulss xmm0, [esi+0x84]
	movaps xmm1, xmm3
	mulss xmm1, [esi+0x8c]
	addss xmm0, xmm1
	movss [ecx+0x4], xmm0
	movaps xmm0, xmm4
	mulss xmm0, [esi+0x94]
	movaps xmm1, xmm3
	mulss xmm1, [esi+0x9c]
	addss xmm0, xmm1
	movss [ecx+0x14], xmm0
	movaps xmm0, xmm4
	mulss xmm0, [esi+0xa4]
	movaps xmm1, xmm3
	mulss xmm1, [esi+0xac]
	addss xmm0, xmm1
	movss [ecx+0x24], xmm0
	mulss xmm4, [esi+0xb4]
	mulss xmm3, [esi+0xbc]
	addss xmm4, xmm3
	movss [ecx+0x34], xmm4
	mov eax, [esi+0x88]
	mov [ecx+0x8], eax
	mov eax, [esi+0x98]
	mov [ecx+0x18], eax
	mov eax, [esi+0xa8]
	mov [ecx+0x28], eax
	mov eax, [esi+0xb8]
	mov [ecx+0x38], eax
	mov eax, [esi+0x8c]
	mov [ecx+0xc], eax
	mov eax, [esi+0x9c]
	mov [ecx+0x1c], eax
	mov eax, [esi+0xac]
	mov [ecx+0x2c], eax
	mov eax, [esi+0xbc]
	mov [ecx+0x3c], eax
	mov eax, [ebp+0x10]
	mov [esp], eax
	call _Z16R_IsPrimaryLightj
	test eax, eax
	jz _Z24R_AddSpotShadowsForLightP11GfxViewInfoP8GfxLightjf_100
	mov edx, [ebp+0x8]
	mov edx, [edx+0x13a0]
	mov [ebp-0x34], edx
	mov ebx, [ebp+0xc]
	mov [ebp-0x1c], ebx
	mov edx, scene
	mov eax, [edx+0x12b42c]
	test eax, eax
	jle _Z24R_AddSpotShadowsForLightP11GfxViewInfoP8GfxLightjf_110
	xor esi, esi
	mov edi, frontEndDataOut
	mov ebx, 0x12b400
	mov eax, scene
	jmp _Z24R_AddSpotShadowsForLightP11GfxViewInfoP8GfxLightjf_120
_Z24R_AddSpotShadowsForLightP11GfxViewInfoP8GfxLightjf_140:
	add esi, 0x1
	add ebx, 0x7c
	mov edx, scene
	mov eax, [edx+0x12b42c]
	cmp esi, eax
	jge _Z24R_AddSpotShadowsForLightP11GfxViewInfoP8GfxLightjf_110
_Z24R_AddSpotShadowsForLightP11GfxViewInfoP8GfxLightjf_150:
	mov eax, edx
_Z24R_AddSpotShadowsForLightP11GfxViewInfoP8GfxLightjf_120:
	lea edx, [ebx+eax+0x30]
	mov [ebp-0x20], edx
	movzx eax, word [edx+0x6c]
	movzx ecx, ax
	test ax, ax
	jz _Z24R_AddSpotShadowsForLightP11GfxViewInfoP8GfxLightjf_130
	mov eax, [edi]
	test byte [eax+ecx*8+0x118260], 0x1
	jnz _Z24R_AddSpotShadowsForLightP11GfxViewInfoP8GfxLightjf_140
_Z24R_AddSpotShadowsForLightP11GfxViewInfoP8GfxLightjf_130:
	movzx edx, word [edx+0x6e]
	mov eax, gfxCfg
	cmp edx, [eax+0x8]
	jz _Z24R_AddSpotShadowsForLightP11GfxViewInfoP8GfxLightjf_140
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov edx, [ebp-0x34]
	mov [esp], edx
	call _Z31R_IsEntityVisibleToPrimaryLightjjj
	test eax, eax
	jz _Z24R_AddSpotShadowsForLightP11GfxViewInfoP8GfxLightjf_140
	lea eax, [ebp-0x20]
	mov [esp+0x4], eax
	mov dword [esp], 0x9
	call _Z14R_AddWorkerCmd13WorkerCmdTypePv
	add esi, 0x1
	add ebx, 0x7c
	mov edx, scene
	mov eax, [edx+0x12b42c]
	cmp esi, eax
	jl _Z24R_AddSpotShadowsForLightP11GfxViewInfoP8GfxLightjf_150
_Z24R_AddSpotShadowsForLightP11GfxViewInfoP8GfxLightjf_110:
	mov eax, [edx+0x13ba30]
	test eax, eax
	jle _Z24R_AddSpotShadowsForLightP11GfxViewInfoP8GfxLightjf_100
	xor edi, edi
	mov [ebp-0x4c], edx
	mov esi, 0x13ba00
	mov ebx, scene
_Z24R_AddSpotShadowsForLightP11GfxViewInfoP8GfxLightjf_180:
	lea edx, [esi+ebx+0x34]
	movzx eax, word [edx+0x2c]
	movzx ecx, ax
	test ax, ax
	jz _Z24R_AddSpotShadowsForLightP11GfxViewInfoP8GfxLightjf_160
	mov ebx, frontEndDataOut
	mov eax, [ebx]
	test byte [eax+ecx*8+0x118260], 0x1
	jnz _Z24R_AddSpotShadowsForLightP11GfxViewInfoP8GfxLightjf_170
_Z24R_AddSpotShadowsForLightP11GfxViewInfoP8GfxLightjf_160:
	movzx ebx, word [edx+0x2e]
	mov eax, gfxCfg
	cmp ebx, [eax+0x8]
	jz _Z24R_AddSpotShadowsForLightP11GfxViewInfoP8GfxLightjf_170
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov edx, [ebp-0x34]
	mov [esp], edx
	call _Z31R_IsEntityVisibleToPrimaryLightjjj
	test eax, eax
	jz _Z24R_AddSpotShadowsForLightP11GfxViewInfoP8GfxLightjf_170
	mov edx, [ebp+0xc]
	mov eax, [edx+0x38]
	mov edx, [ebp-0x4c]
	mov eax, [edx+eax*4+0x154ca0]
	mov byte [eax+ebx], 0x1
_Z24R_AddSpotShadowsForLightP11GfxViewInfoP8GfxLightjf_170:
	add edi, 0x1
	add esi, 0x48
	mov ebx, scene
	mov eax, [ebx+0x13ba30]
	cmp eax, edi
	jg _Z24R_AddSpotShadowsForLightP11GfxViewInfoP8GfxLightjf_180
_Z24R_AddSpotShadowsForLightP11GfxViewInfoP8GfxLightjf_100:
	mov eax, 0x1
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z24R_AddSpotShadowsForLightP11GfxViewInfoP8GfxLightjf_30:
	movss xmm0, dword [_float__0_00012207]
	movss [ebp-0x3c], xmm0
	call _ZN10MacDisplay10Is1900CardEv
	test al, al
	jnz _Z24R_AddSpotShadowsForLightP11GfxViewInfoP8GfxLightjf_190
_Z24R_AddSpotShadowsForLightP11GfxViewInfoP8GfxLightjf_40:
	movss xmm0, dword [_float_0_00097656]
	movss [ebp-0x38], xmm0
	call _ZN10MacDisplay10Is1900CardEv
	test al, al
	jnz _Z24R_AddSpotShadowsForLightP11GfxViewInfoP8GfxLightjf_200
_Z24R_AddSpotShadowsForLightP11GfxViewInfoP8GfxLightjf_50:
	mov ebx, 0x39800000
	call _ZN10MacDisplay10Is1900CardEv
	test al, al
	jnz _Z24R_AddSpotShadowsForLightP11GfxViewInfoP8GfxLightjf_210
_Z24R_AddSpotShadowsForLightP11GfxViewInfoP8GfxLightjf_60:
	mov edx, 0x3a000000
	jmp _Z24R_AddSpotShadowsForLightP11GfxViewInfoP8GfxLightjf_220
_Z24R_AddSpotShadowsForLightP11GfxViewInfoP8GfxLightjf_20:
	cmp edi, 0x1
	jbe _Z24R_AddSpotShadowsForLightP11GfxViewInfoP8GfxLightjf_230
	mov byte [ebp-0x45], 0x1
	jmp _Z24R_AddSpotShadowsForLightP11GfxViewInfoP8GfxLightjf_240
_Z24R_AddSpotShadowsForLightP11GfxViewInfoP8GfxLightjf_80:
	movss xmm2, dword [_float_1_00000000]
	mov eax, scene
	addss xmm2, [eax+0x114a50]
	movss [ebp-0x2c], xmm2
	jmp _Z24R_AddSpotShadowsForLightP11GfxViewInfoP8GfxLightjf_250
_Z24R_AddSpotShadowsForLightP11GfxViewInfoP8GfxLightjf_70:
	xor eax, eax
	test edi, edi
	setz al
	mov [esi+0x1dc], eax
	jmp _Z24R_AddSpotShadowsForLightP11GfxViewInfoP8GfxLightjf_260
_Z24R_AddSpotShadowsForLightP11GfxViewInfoP8GfxLightjf_90:
	mov eax, edi
	shr eax, 1
	and edi, 0x1
	or eax, edi
	cvtsi2ss xmm3, eax
	addss xmm3, xmm3
	jmp _Z24R_AddSpotShadowsForLightP11GfxViewInfoP8GfxLightjf_270
_Z24R_AddSpotShadowsForLightP11GfxViewInfoP8GfxLightjf_230:
	mov dword [esi+0x1b4], 0x0
	call _ZN10MacDisplay10Is1900CardEv
	cmp al, 0x1
	sbb eax, eax
	and eax, 0x200
	add eax, 0x200
	imul eax, edi
	mov [esi+0x1b8], eax
	call _ZN10MacDisplay10Is1900CardEv
	cmp al, 0x1
	sbb eax, eax
	and eax, 0x200
	add eax, 0x200
	mov [esi+0x1bc], eax
	call _ZN10MacDisplay10Is1900CardEv
	cmp al, 0x1
	sbb eax, eax
	and eax, 0x200
	add eax, 0x200
	mov [esi+0x1c0], eax
	mov eax, gfxRenderTargets
	mov eax, [eax+0x104]
	mov [esi+0x1c4], eax
	mov dword [esi+0x1c8], 0xd
	call _ZN10MacDisplay10Is1900CardEv
	test al, al
	jz _Z24R_AddSpotShadowsForLightP11GfxViewInfoP8GfxLightjf_280
	movss xmm0, dword [_float__0_00024414]
	movss [ebp-0x44], xmm0
_Z24R_AddSpotShadowsForLightP11GfxViewInfoP8GfxLightjf_330:
	call _ZN10MacDisplay10Is1900CardEv
	test al, al
	jz _Z24R_AddSpotShadowsForLightP11GfxViewInfoP8GfxLightjf_290
	movss xmm0, dword [_float_0_00097656]
	movss [ebp-0x40], xmm0
_Z24R_AddSpotShadowsForLightP11GfxViewInfoP8GfxLightjf_360:
	call _ZN10MacDisplay10Is1900CardEv
	test al, al
	jz _Z24R_AddSpotShadowsForLightP11GfxViewInfoP8GfxLightjf_300
	mov ebx, 0x3a000000
_Z24R_AddSpotShadowsForLightP11GfxViewInfoP8GfxLightjf_350:
	call _ZN10MacDisplay10Is1900CardEv
	test al, al
	jz _Z24R_AddSpotShadowsForLightP11GfxViewInfoP8GfxLightjf_310
	mov edx, 0x3a000000
_Z24R_AddSpotShadowsForLightP11GfxViewInfoP8GfxLightjf_340:
	lea eax, [esi+0x1cc]
	mov [esi+0x1cc], edx
	mov [eax+0x4], ebx
	movss xmm0, dword [ebp-0x40]
	movss [eax+0x8], xmm0
	movss xmm2, dword [ebp-0x44]
	movss [eax+0xc], xmm2
	xor eax, eax
	test edi, edi
	setz al
	mov [esi+0x1dc], eax
	mov eax, edi
	shl eax, 0x5
	mov edx, gfxMeshGlob
	lea eax, [eax+edx+0x140]
	mov [esi+0x1e0], eax
	movss xmm0, dword [_float_2_00000000]
	movss [ebp-0x30], xmm0
	jmp _Z24R_AddSpotShadowsForLightP11GfxViewInfoP8GfxLightjf_320
_Z24R_AddSpotShadowsForLightP11GfxViewInfoP8GfxLightjf_280:
	movss xmm2, dword [_float__0_00012207]
	movss [ebp-0x44], xmm2
	jmp _Z24R_AddSpotShadowsForLightP11GfxViewInfoP8GfxLightjf_330
_Z24R_AddSpotShadowsForLightP11GfxViewInfoP8GfxLightjf_310:
	mov edx, 0x39800000
	jmp _Z24R_AddSpotShadowsForLightP11GfxViewInfoP8GfxLightjf_340
_Z24R_AddSpotShadowsForLightP11GfxViewInfoP8GfxLightjf_300:
	mov ebx, 0x39800000
	jmp _Z24R_AddSpotShadowsForLightP11GfxViewInfoP8GfxLightjf_350
_Z24R_AddSpotShadowsForLightP11GfxViewInfoP8GfxLightjf_290:
	movss xmm2, dword [_float_0_00048828]
	movss [ebp-0x40], xmm2
	jmp _Z24R_AddSpotShadowsForLightP11GfxViewInfoP8GfxLightjf_360


;R_GenerateAllSortedSpotShadowDrawSurfs(GfxViewInfo*)
_Z38R_GenerateAllSortedSpotShadowDrawSurfsP11GfxViewInfo:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov eax, [ebp+0x8]
	mov edx, [eax+0x5b30]
	test edx, edx
	jnz _Z38R_GenerateAllSortedSpotShadowDrawSurfsP11GfxViewInfo_10
_Z38R_GenerateAllSortedSpotShadowDrawSurfsP11GfxViewInfo_40:
	mov dword [esp+0x4], _cstring_emit_spot_shadow
	mov dword [esp], 0xffffffff
	call _Z18PIXBeginNamedEventiPKcz
	mov edx, [ebp+0x8]
	mov eax, [edx+0x5b30]
	test eax, eax
	jnz _Z38R_GenerateAllSortedSpotShadowDrawSurfsP11GfxViewInfo_20
_Z38R_GenerateAllSortedSpotShadowDrawSurfsP11GfxViewInfo_80:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z38R_GenerateAllSortedSpotShadowDrawSurfsP11GfxViewInfo_10:
	mov esi, eax
	xor edi, edi
	jmp _Z38R_GenerateAllSortedSpotShadowDrawSurfsP11GfxViewInfo_30
_Z38R_GenerateAllSortedSpotShadowDrawSurfsP11GfxViewInfo_50:
	add edi, 0x1
	add esi, 0x1f0
	mov eax, [ebp+0x8]
	cmp edi, [eax+0x5b30]
	jae _Z38R_GenerateAllSortedSpotShadowDrawSurfsP11GfxViewInfo_40
_Z38R_GenerateAllSortedSpotShadowDrawSurfsP11GfxViewInfo_30:
	movzx eax, byte [esi+0x5cc0]
	mov [esp], eax
	call _Z16R_IsPrimaryLightj
	test eax, eax
	jz _Z38R_GenerateAllSortedSpotShadowDrawSurfsP11GfxViewInfo_50
	movzx ebx, byte [esi+0x5cc0]
	mov dword [esp+0x4], _cstring_bsp_surfaces
	mov dword [esp], 0xffffffff
	call _Z18PIXBeginNamedEventiPKcz
	mov [esp+0x4], ebx
	mov [esp], edi
	call _Z33R_AddAllBspDrawSurfacesSpotShadowjj
	mov dword [esp+0x4], _cstring_static_model_sur
	mov dword [esp], 0xffffffff
	call _Z18PIXBeginNamedEventiPKcz
	mov [esp+0x4], ebx
	mov [esp], edi
	call _Z37R_AddAllStaticModelSurfacesSpotShadowjj
	mov dword [esp+0x4], _cstring_scene_ent_surfac
	mov dword [esp], 0xffffffff
	call _Z18PIXBeginNamedEventiPKcz
	mov [esp+0x8], ebx
	mov [esp+0x4], edi
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z34R_AddAllSceneEntSurfacesSpotShadowPK11GfxViewInfojj
	jmp _Z38R_GenerateAllSortedSpotShadowDrawSurfsP11GfxViewInfo_50
_Z38R_GenerateAllSortedSpotShadowDrawSurfsP11GfxViewInfo_20:
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x15
	mov ebx, edx
	add ebx, 0x5b40
	jmp _Z38R_GenerateAllSortedSpotShadowDrawSurfsP11GfxViewInfo_60
_Z38R_GenerateAllSortedSpotShadowDrawSurfsP11GfxViewInfo_90:
	mov eax, [ebp+0x8]
	cmp dword [eax+0x55e0], 0x1
	jz _Z38R_GenerateAllSortedSpotShadowDrawSurfsP11GfxViewInfo_70
_Z38R_GenerateAllSortedSpotShadowDrawSurfsP11GfxViewInfo_100:
	add dword [ebp-0x20], 0x1
	add ebx, 0x1f0
	add dword [ebp-0x1c], 0x3
	mov edx, [ebp-0x20]
	cmp [eax+0x5b30], edx
	jbe _Z38R_GenerateAllSortedSpotShadowDrawSurfsP11GfxViewInfo_80
_Z38R_GenerateAllSortedSpotShadowDrawSurfsP11GfxViewInfo_60:
	lea esi, [ebx+0x18c]
	mov [esp], esi
	call _Z22R_InitDrawSurfListInfoP19GfxDrawSurfListInfo
	mov eax, gfxMetrics
	mov eax, [eax+0x20]
	mov [ebx+0x194], eax
	mov eax, [ebp+0x8]
	mov [ebx+0x198], eax
	mov eax, [ebx+0x184]
	lea edx, [eax+0x1c]
	mov eax, [eax+0x1c]
	mov [ebx+0x19c], eax
	mov eax, [edx+0x4]
	mov [ebx+0x1a0], eax
	mov eax, [edx+0x8]
	mov [ebx+0x1a4], eax
	mov dword [ebx+0x1a8], 0x3f800000
	mov edx, frontEndDataOut
	mov eax, [edx]
	mov edi, [eax+0x118254]
	movzx eax, byte [ebx+0x180]
	mov [esp], eax
	call _Z16R_IsPrimaryLightj
	test eax, eax
	jz _Z38R_GenerateAllSortedSpotShadowDrawSurfsP11GfxViewInfo_90
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x1
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call _Z27R_MergeAndEmitDrawSurfListsjjP19GfxDrawSurfListInfo
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x2
	mov eax, [ebp-0x1c]
	add eax, 0x1
	mov [esp], eax
	call _Z27R_MergeAndEmitDrawSurfListsjjP19GfxDrawSurfListInfo
	mov edx, frontEndDataOut
	mov eax, [edx]
	lea eax, [eax+edi*8+0x70000]
	mov [ebx+0x18c], eax
	mov eax, [edx]
	mov eax, [eax+0x118254]
	sub eax, edi
	mov [ebx+0x190], eax
	mov eax, [ebp+0x8]
	jmp _Z38R_GenerateAllSortedSpotShadowDrawSurfsP11GfxViewInfo_100
_Z38R_GenerateAllSortedSpotShadowDrawSurfsP11GfxViewInfo_70:
	mov [esp+0xc], esi
	mov edx, eax
	mov eax, [eax+0x55dc]
	mov [esp+0x8], eax
	mov eax, [edx+0x55d8]
	mov [esp+0x4], eax
	mov [esp], edx
	call _Z33R_EmitShadowedLightPartitionSurfsP11GfxViewInfoiPK11GfxDrawSurfP19GfxDrawSurfListInfo
	mov eax, [ebp+0x8]
	jmp _Z38R_GenerateAllSortedSpotShadowDrawSurfsP11GfxViewInfo_100


;Initialized global or static variables of r_spotshadow:
SECTION .data


;Initialized constant data of r_spotshadow:
SECTION .rdata


;Zero initialized global or static variables of r_spotshadow:
SECTION .bss


;All cstrings:
SECTION .rdata
_cstring_emit_spot_shadow:		db "emit spot shadow map surfs",0
_cstring_bsp_surfaces:		db "bsp surfaces",0
_cstring_static_model_sur:		db "static model surfaces",0
_cstring_scene_ent_surfac:		db "scene ent surfaces",0



;All constant floats and doubles:
SECTION .rdata
_float_0_50000000:		dd 0x3f000000	; 0.5
_float__0_00024414:		dd 0xb9800000	; -0.000244141
_float_0_00195312:		dd 0x3b000000	; 0.00195312
_float_4_00000000:		dd 0x40800000	; 4
_float_1_00000000:		dd 0x3f800000	; 1
_data16_80000000:		dd 0x80000000, 0x0, 0x0, 0x0	; OWORD
_float__0_00012207:		dd 0xb9000000	; -0.00012207
_float_0_00097656:		dd 0x3a800000	; 0.000976562
_float_2_00000000:		dd 0x40000000	; 2
_float_0_00048828:		dd 0x3a000000	; 0.000488281

