;Imports of r_draw_shadowablelight:
	extern r_diffuseColorScale
	extern r_specularColorScale
	extern _Z23R_SetShadowLookupMatrixP20GfxCmdBufSourceStatePK9GfxMatrix
	extern comWorld

;Exports of r_draw_shadowablelight:
	global _Z20R_SetLightPropertiesP20GfxCmdBufSourceStatePK8GfxLightPK11GfxLightDef17LightHasShadowMapf
	global _Z20R_SetShadowableLightP20GfxCmdBufSourceStatejPK11GfxViewInfo
	global _Z29R_SetDrawSurfsShadowableLightP20GfxCmdBufSourceStatePK19GfxDrawSurfListInfo


SECTION .text


;R_SetLightProperties(GfxCmdBufSourceState*, GfxLight const*, GfxLightDef const*, LightHasShadowMap, float)
_Z20R_SetLightPropertiesP20GfxCmdBufSourceStatePK8GfxLightPK11GfxLightDef17LightHasShadowMapf:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov esi, [ebp+0x8]
	mov edi, [ebp+0xc]
	mov edx, [ebp+0x10]
	mov eax, [edx+0x4]
	mov [esi+0xc5c], eax
	movzx eax, byte [edx+0x8]
	mov [esi+0xc9b], al
	lea eax, [edi+0x1c]
	lea edx, [esi+0xef4]
	movss xmm3, dword [eax+0x4]
	subss xmm3, [edx+0x4]
	movss xmm2, dword [eax+0x8]
	subss xmm2, [edx+0x8]
	mov eax, r_diffuseColorScale
	mov eax, [eax]
	movss xmm1, dword [eax+0xc]
	lea eax, [edi+0x4]
	movss xmm4, dword [edi+0x4]
	movss xmm5, dword [eax+0x4]
	movss xmm6, dword [eax+0x8]
	mov eax, r_specularColorScale
	mov eax, [eax]
	movss xmm0, dword [eax+0xc]
	movss [ebp-0x1c], xmm0
	movss xmm7, dword [_float_1_00000000]
	divss xmm7, dword [edi+0x28]
	lea eax, [esi+0x880]
	movss xmm0, dword [edi+0x1c]
	subss xmm0, [esi+0xef4]
	movss [esi+0x880], xmm0
	movss [eax+0x4], xmm3
	movss [eax+0x8], xmm2
	movss [eax+0xc], xmm7
	add word [esi+0xe30], 0x1
	lea eax, [esi+0x890]
	movaps xmm0, xmm1
	mulss xmm0, xmm4
	movss [esi+0x890], xmm0
	movaps xmm0, xmm1
	mulss xmm0, xmm5
	movss [eax+0x4], xmm0
	mulss xmm1, xmm6
	movss [eax+0x8], xmm1
	mov dword [eax+0xc], 0x3f800000
	add word [esi+0xe32], 0x1
	lea eax, [esi+0x8a0]
	mulss xmm4, [ebp-0x1c]
	movss [esi+0x8a0], xmm4
	mulss xmm5, [ebp-0x1c]
	movss [eax+0x4], xmm5
	mulss xmm6, [ebp-0x1c]
	movss [eax+0x8], xmm6
	mov dword [eax+0xc], 0x3f800000
	add word [esi+0xe34], 0x1
	mov ebx, [edi+0x18]
	mov ecx, [edi+0x14]
	lea edx, [esi+0x8b0]
	mov eax, [edi+0x10]
	mov [esi+0x8b0], eax
	mov [edx+0x4], ecx
	mov [edx+0x8], ebx
	mov dword [edx+0xc], 0x0
	add word [esi+0xe36], 0x1
	cmp byte [edi], 0x2
	jz _Z20R_SetLightPropertiesP20GfxCmdBufSourceStatePK8GfxLightPK11GfxLightDef17LightHasShadowMapf_10
	mov eax, [ebp+0x14]
	test eax, eax
	jnz _Z20R_SetLightPropertiesP20GfxCmdBufSourceStatePK8GfxLightPK11GfxLightDef17LightHasShadowMapf_20
_Z20R_SetLightPropertiesP20GfxCmdBufSourceStatePK8GfxLightPK11GfxLightDef17LightHasShadowMapf_10:
	movss xmm2, dword [edi+0x2c]
	movss xmm1, dword [edi+0x30]
	subss xmm1, xmm2
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, xmm1
	cvtsi2ss xmm1, dword [edi+0x34]
	lea eax, [esi+0x8c0]
	movss [esi+0x8c0], xmm0
	xorps xmm0, [_data16_80000000]
	mulss xmm2, xmm0
	movss [eax+0x4], xmm2
	movss [eax+0x8], xmm1
	movss xmm0, dword [ebp+0x18]
	movss [eax+0xc], xmm0
	add word [esi+0xe38], 0x1
_Z20R_SetLightPropertiesP20GfxCmdBufSourceStatePK8GfxLightPK11GfxLightDef17LightHasShadowMapf_20:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;R_SetShadowableLight(GfxCmdBufSourceState*, unsigned int, GfxViewInfo const*)
_Z20R_SetShadowableLightP20GfxCmdBufSourceStatejPK11GfxViewInfo:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov esi, [ebp+0x8]
	mov edi, [ebp+0xc]
	mov eax, [ebp+0x10]
	mov [ebp-0x28], eax
	cmp [esi+0xf74], edi
	jz _Z20R_SetShadowableLightP20GfxCmdBufSourceStatejPK11GfxViewInfo_10
	mov [esi+0xf74], edi
	test edi, edi
	jz _Z20R_SetShadowableLightP20GfxCmdBufSourceStatejPK11GfxViewInfo_10
	mov eax, edi
	shl eax, 0x6
	mov edx, [ebp-0x28]
	lea eax, [eax+edx+0x13a0]
	lea edx, [eax+0xc]
	mov [ebp-0x24], edx
	cmp byte [eax+0xc], 0x1
	jz _Z20R_SetShadowableLightP20GfxCmdBufSourceStatejPK11GfxViewInfo_20
	mov eax, [edx+0x3c]
	mov [ebp-0x1c], eax
	cvtsi2ss xmm2, dword [eax+0xc]
	movss xmm0, dword [_float_0_00195312]
	mulss xmm2, xmm0
	mov eax, [eax+0x4]
	movzx eax, word [eax+0x18]
	cvtsi2ss xmm1, eax
	mulss xmm1, xmm0
	lea eax, [esi+0x930]
	ucomiss xmm1, [esi+0x930]
	jp _Z20R_SetShadowableLightP20GfxCmdBufSourceStatejPK11GfxViewInfo_30
	jz _Z20R_SetShadowableLightP20GfxCmdBufSourceStatejPK11GfxViewInfo_40
_Z20R_SetShadowableLightP20GfxCmdBufSourceStatejPK11GfxViewInfo_30:
	lea ebx, [esi+0x934]
	lea ecx, [esi+0x938]
	lea edx, [esi+0x93c]
	pxor xmm0, xmm0
_Z20R_SetShadowableLightP20GfxCmdBufSourceStatejPK11GfxViewInfo_80:
	movss [eax], xmm1
	mov dword [ebx], 0x0
	movss [ecx], xmm2
	mov dword [edx], 0x0
	add word [esi+0xe46], 0x1
_Z20R_SetShadowableLightP20GfxCmdBufSourceStatejPK11GfxViewInfo_160:
	mov ebx, edi
	sar ebx, 0x5
	mov edx, [esi+0xca8]
	mov ecx, edi
	and ecx, 0x1f
	mov eax, 0x1
	shl eax, cl
	test [edx+ebx*4+0x118230], eax
	jnz _Z20R_SetShadowableLightP20GfxCmdBufSourceStatejPK11GfxViewInfo_50
	mov eax, 0x1
	movss [ebp-0x20], xmm0
_Z20R_SetShadowableLightP20GfxCmdBufSourceStatejPK11GfxViewInfo_140:
	movss [esp+0x10], xmm0
	mov [esp+0xc], eax
	mov eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov edx, [ebp-0x24]
	mov [esp+0x4], edx
	mov [esp], esi
	call _Z20R_SetLightPropertiesP20GfxCmdBufSourceStatePK8GfxLightPK11GfxLightDef17LightHasShadowMapf
_Z20R_SetShadowableLightP20GfxCmdBufSourceStatejPK11GfxViewInfo_10:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z20R_SetShadowableLightP20GfxCmdBufSourceStatejPK11GfxViewInfo_40:
	lea ebx, [eax+0x4]
	pxor xmm0, xmm0
	ucomiss xmm0, [eax+0x4]
	jp _Z20R_SetShadowableLightP20GfxCmdBufSourceStatejPK11GfxViewInfo_60
	jz _Z20R_SetShadowableLightP20GfxCmdBufSourceStatejPK11GfxViewInfo_70
_Z20R_SetShadowableLightP20GfxCmdBufSourceStatejPK11GfxViewInfo_60:
	lea ecx, [eax+0x8]
	lea edx, [eax+0xc]
	jmp _Z20R_SetShadowableLightP20GfxCmdBufSourceStatejPK11GfxViewInfo_80
_Z20R_SetShadowableLightP20GfxCmdBufSourceStatejPK11GfxViewInfo_20:
	mov eax, [ebp-0x28]
	add eax, 0x5690
	cmp edi, [esi+0xf04]
	jz _Z20R_SetShadowableLightP20GfxCmdBufSourceStatejPK11GfxViewInfo_10
	mov [esi+0xf04], edi
	mov [ebp+0xc], eax
	mov [ebp+0x8], esi
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z23R_SetShadowLookupMatrixP20GfxCmdBufSourceStatePK9GfxMatrix
_Z20R_SetShadowableLightP20GfxCmdBufSourceStatejPK11GfxViewInfo_50:
	mov edx, [ebp-0x24]
	mov eax, [edx+0x38]
	mov edx, eax
	shl edx, 0x4
	shl eax, 0x9
	sub eax, edx
	mov edx, [ebp-0x28]
	lea ebx, [eax+edx+0x5b40]
	lea eax, [ebx+0x140]
	cmp edi, [esi+0xf04]
	jz _Z20R_SetShadowableLightP20GfxCmdBufSourceStatejPK11GfxViewInfo_90
	mov [esi+0xf04], edi
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z23R_SetShadowLookupMatrixP20GfxCmdBufSourceStatePK9GfxMatrix
_Z20R_SetShadowableLightP20GfxCmdBufSourceStatejPK11GfxViewInfo_90:
	movss xmm0, dword [ebx+0x188]
	movss [ebp-0x20], xmm0
	mov eax, [ebx+0x1c4]
	mov [esi+0xc40], eax
	lea ecx, [ebx+0x1cc]
	lea edx, [esi+0xba0]
	movss xmm1, dword [ebx+0x1cc]
	ucomiss xmm1, [esi+0xba0]
	jnz _Z20R_SetShadowableLightP20GfxCmdBufSourceStatejPK11GfxViewInfo_100
	jp _Z20R_SetShadowableLightP20GfxCmdBufSourceStatejPK11GfxViewInfo_100
	lea eax, [ebx+0x1d0]
	movss xmm0, dword [edx+0x4]
	ucomiss xmm0, [ebx+0x1d0]
	jp _Z20R_SetShadowableLightP20GfxCmdBufSourceStatejPK11GfxViewInfo_110
	jnz _Z20R_SetShadowableLightP20GfxCmdBufSourceStatejPK11GfxViewInfo_110
	lea edi, [ecx+0x8]
	movss xmm0, dword [edx+0x8]
	ucomiss xmm0, [ecx+0x8]
	jp _Z20R_SetShadowableLightP20GfxCmdBufSourceStatejPK11GfxViewInfo_120
	jnz _Z20R_SetShadowableLightP20GfxCmdBufSourceStatejPK11GfxViewInfo_120
	lea ebx, [ecx+0xc]
	movss xmm0, dword [edx+0xc]
	ucomiss xmm0, [ecx+0xc]
	jnz _Z20R_SetShadowableLightP20GfxCmdBufSourceStatejPK11GfxViewInfo_130
	jp _Z20R_SetShadowableLightP20GfxCmdBufSourceStatejPK11GfxViewInfo_130
	xor eax, eax
	movss xmm0, dword [ebp-0x20]
	jmp _Z20R_SetShadowableLightP20GfxCmdBufSourceStatejPK11GfxViewInfo_140
_Z20R_SetShadowableLightP20GfxCmdBufSourceStatejPK11GfxViewInfo_70:
	lea ecx, [eax+0x8]
	ucomiss xmm2, [eax+0x8]
	jp _Z20R_SetShadowableLightP20GfxCmdBufSourceStatejPK11GfxViewInfo_150
	jnz _Z20R_SetShadowableLightP20GfxCmdBufSourceStatejPK11GfxViewInfo_150
	lea edx, [eax+0xc]
	ucomiss xmm0, [eax+0xc]
	jp _Z20R_SetShadowableLightP20GfxCmdBufSourceStatejPK11GfxViewInfo_80
	jz _Z20R_SetShadowableLightP20GfxCmdBufSourceStatejPK11GfxViewInfo_160
	jmp _Z20R_SetShadowableLightP20GfxCmdBufSourceStatejPK11GfxViewInfo_80
_Z20R_SetShadowableLightP20GfxCmdBufSourceStatejPK11GfxViewInfo_100:
	lea eax, [ecx+0x4]
	lea edi, [ecx+0x8]
_Z20R_SetShadowableLightP20GfxCmdBufSourceStatejPK11GfxViewInfo_120:
	lea ebx, [ecx+0xc]
_Z20R_SetShadowableLightP20GfxCmdBufSourceStatejPK11GfxViewInfo_130:
	movss [edx], xmm1
	mov eax, [eax]
	mov [edx+0x4], eax
	mov eax, [edi]
	mov [edx+0x8], eax
	mov eax, [ebx]
	mov [edx+0xc], eax
	add word [esi+0xe94], 0x1
	xor eax, eax
	movss xmm0, dword [ebp-0x20]
	jmp _Z20R_SetShadowableLightP20GfxCmdBufSourceStatejPK11GfxViewInfo_140
_Z20R_SetShadowableLightP20GfxCmdBufSourceStatejPK11GfxViewInfo_150:
	lea edx, [eax+0xc]
	jmp _Z20R_SetShadowableLightP20GfxCmdBufSourceStatejPK11GfxViewInfo_80
_Z20R_SetShadowableLightP20GfxCmdBufSourceStatejPK11GfxViewInfo_110:
	lea edi, [ebx+0x1d4]
	add ebx, 0x1d8
	jmp _Z20R_SetShadowableLightP20GfxCmdBufSourceStatejPK11GfxViewInfo_130


;R_SetDrawSurfsShadowableLight(GfxCmdBufSourceState*, GfxDrawSurfListInfo const*)
_Z29R_SetDrawSurfsShadowableLightP20GfxCmdBufSourceStatePK19GfxDrawSurfListInfo:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov eax, [ebp+0xc]
	mov ebx, [eax+0x20]
	test ebx, ebx
	jz _Z29R_SetDrawSurfsShadowableLightP20GfxCmdBufSourceStatePK19GfxDrawSurfListInfo_10
	mov edx, [ebp+0x8]
	mov edi, [edx+0xca8]
	cmp byte [ebx+0x1], 0x0
	jz _Z29R_SetDrawSurfsShadowableLightP20GfxCmdBufSourceStatePK19GfxDrawSurfListInfo_20
	mov eax, comWorld
	mov esi, [eax+0x8]
	mov edx, esi
	sar edx, 0x5
	mov ecx, esi
	and ecx, 0x1f
	mov eax, 0x1
	shl eax, cl
	test [edi+edx*4+0x118230], eax
	jnz _Z29R_SetDrawSurfsShadowableLightP20GfxCmdBufSourceStatePK19GfxDrawSurfListInfo_30
_Z29R_SetDrawSurfsShadowableLightP20GfxCmdBufSourceStatePK19GfxDrawSurfListInfo_40:
	mov edx, [ebp+0x8]
_Z29R_SetDrawSurfsShadowableLightP20GfxCmdBufSourceStatePK19GfxDrawSurfListInfo_20:
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x1
	mov eax, [ebx+0x3c]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov [esp], edx
	call _Z20R_SetLightPropertiesP20GfxCmdBufSourceStatePK8GfxLightPK11GfxLightDef17LightHasShadowMapf
_Z29R_SetDrawSurfsShadowableLightP20GfxCmdBufSourceStatePK19GfxDrawSurfListInfo_10:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z29R_SetDrawSurfsShadowableLightP20GfxCmdBufSourceStatePK19GfxDrawSurfListInfo_30:
	test esi, esi
	jz _Z29R_SetDrawSurfsShadowableLightP20GfxCmdBufSourceStatePK19GfxDrawSurfListInfo_40
	mov edx, [ebp+0xc]
	mov eax, [edx+0xc]
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z20R_SetShadowableLightP20GfxCmdBufSourceStatejPK11GfxViewInfo
	jmp _Z29R_SetDrawSurfsShadowableLightP20GfxCmdBufSourceStatePK19GfxDrawSurfListInfo_10


;Initialized global or static variables of r_draw_shadowablelight:
SECTION .data


;Initialized constant data of r_draw_shadowablelight:
SECTION .rdata


;Zero initialized global or static variables of r_draw_shadowablelight:
SECTION .bss


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata
_float_1_00000000:		dd 0x3f800000	; 1
_data16_80000000:		dd 0x80000000, 0x0, 0x0, 0x0	; OWORD
_float_0_00195312:		dd 0x3b000000	; 0.00195312

