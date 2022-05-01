;Imports of r_sunshadow:
	extern floorf
	extern _ZN10MacDisplay10Is1900CardEv
	extern memcpy
	extern _Z14Com_ConvexHullPA2_fjS0_
	extern _Z18PIXBeginNamedEventiPKcz
	extern _Z12R_SetVisDataj
	extern rgp
	extern gfxMetrics
	extern _Z29R_AddWorldSurfacesFrustumOnlyv
	extern frontEndDataOut
	extern _Z18AddPointToBounds2DPKfPfS1_
	extern rg
	extern sm_sunSampleSizeNear
	extern sm_sunShadowCenter
	extern vec3_origin
	extern ceilf
	extern scene
	extern _Z8AxisCopyPA3_KfPA3_f
	extern _Z29R_SetupViewProjectionMatricesP12GfxViewParms
	extern _Z25R_SetupShadowSurfacesDpvsPK12GfxViewParmsPA4_Kfji
	extern _Z22R_InitDrawSurfListInfoP19GfxDrawSurfListInfo
	extern _Z27R_MergeAndEmitDrawSurfListsjjP19GfxDrawSurfListInfo

;Exports of r_sunshadow:
	global shadowGlob
	global g_clipSpacePoints
	global g_shadowFrustumBound
	global _Z47R_GetSunShadowMapPartitionViewOrgInTextureSpacePKfS0_S0_fPf
	global _Z28R_SetupSunShadowBoundingPolyPA2_KfPS_S2_fS2_P24GfxSunShadowBoundingPolyj
	global _Z15R_SunShadowMapsP12GfxSunShadow
	global _Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow
	global _Z32R_MergeAndEmitSunShadowMapsSurfsP11GfxViewInfo


SECTION .text


;R_GetSunShadowMapPartitionViewOrgInTextureSpace(float const*, float const*, float const*, float, float*)
_Z47R_GetSunShadowMapPartitionViewOrgInTextureSpacePKfS0_S0_fPf:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edi, eax
	mov esi, edx
	mov ebx, ecx
	movss [ebp-0x24], xmm0
	movss xmm0, dword [ecx]
	subss xmm0, [edx]
	divss xmm0, dword [ebp-0x24]
	addss xmm0, [eax]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x1c]
	movss xmm1, dword [ebx+0x4]
	subss xmm1, [esi+0x4]
	divss xmm1, dword [ebp-0x24]
	movss xmm0, dword [edi+0x4]
	subss xmm0, xmm1
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x20]
	call _ZN10MacDisplay10Is1900CardEv
	test al, al
	jz _Z47R_GetSunShadowMapPartitionViewOrgInTextureSpacePKfS0_S0_fPf_10
	movss xmm0, dword [_float_0_00195312]
	mulss xmm0, [ebp-0x1c]
	mov eax, [ebp+0x8]
	movss [eax], xmm0
	mov ebx, eax
	add ebx, 0x4
	call _ZN10MacDisplay10Is1900CardEv
	test al, al
	jz _Z47R_GetSunShadowMapPartitionViewOrgInTextureSpacePKfS0_S0_fPf_20
_Z47R_GetSunShadowMapPartitionViewOrgInTextureSpacePKfS0_S0_fPf_30:
	movss xmm0, dword [_float_0_00195312]
	mulss xmm0, [ebp-0x20]
	movss [ebx], xmm0
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z47R_GetSunShadowMapPartitionViewOrgInTextureSpacePKfS0_S0_fPf_10:
	movss xmm0, dword [_float_0_00097656]
	mulss xmm0, [ebp-0x1c]
	mov eax, [ebp+0x8]
	movss [eax], xmm0
	mov ebx, eax
	add ebx, 0x4
	call _ZN10MacDisplay10Is1900CardEv
	test al, al
	jnz _Z47R_GetSunShadowMapPartitionViewOrgInTextureSpacePKfS0_S0_fPf_30
_Z47R_GetSunShadowMapPartitionViewOrgInTextureSpacePKfS0_S0_fPf_20:
	movss xmm0, dword [_float_0_00097656]
	mulss xmm0, [ebp-0x20]
	movss [ebx], xmm0
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;R_SetupSunShadowBoundingPoly(float const (*) [2], float const*, float const*, float, float const*, GfxSunShadowBoundingPoly*, unsigned int)
_Z28R_SetupSunShadowBoundingPolyPA2_KfPS_S2_fS2_P24GfxSunShadowBoundingPolyj:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xdc
	mov [ebp-0xb8], eax
	mov [ebp-0xbc], edx
	mov [ebp-0xc0], ecx
	movss [ebp-0xc4], xmm0
	lea ebx, [ebp-0x58]
	mov eax, [ebp+0x10]
	shl eax, 0x3
	mov [esp+0x8], eax
	mov eax, [ebp-0xb8]
	mov [esp+0x4], eax
	mov [esp], ebx
	call memcpy
	lea edx, [ebp-0xa0]
	mov [esp+0x8], edx
	mov esi, [ebp+0x10]
	mov [esp+0x4], esi
	mov [esp], ebx
	call _Z14Com_ConvexHullPA2_fjS0_
	mov edx, [ebp+0xc]
	mov [edx+0x8], eax
	movss xmm2, dword [_float_2_00000000]
	divss xmm2, dword [ebp-0xc4]
	test eax, eax
	jle _Z28R_SetupSunShadowBoundingPolyPA2_KfPS_S2_fS2_P24GfxSunShadowBoundingPolyj_10
	mov eax, [ebp+0x8]
	add eax, 0x4
	mov [ebp-0xb4], eax
	mov edx, [ebp-0xbc]
	add edx, 0x4
	mov [ebp-0xb0], edx
	mov ebx, [ebp+0xc]
	mov ecx, ebx
	xor edi, edi
	jmp _Z28R_SetupSunShadowBoundingPolyPA2_KfPS_S2_fS2_P24GfxSunShadowBoundingPolyj_20
_Z28R_SetupSunShadowBoundingPolyPA2_KfPS_S2_fS2_P24GfxSunShadowBoundingPolyj_60:
	jp _Z28R_SetupSunShadowBoundingPolyPA2_KfPS_S2_fS2_P24GfxSunShadowBoundingPolyj_30
	mov esi, [ebp-0xcc]
	movss xmm0, dword [esi+0x4]
	ucomiss xmm0, [eax+0x4]
	jnz _Z28R_SetupSunShadowBoundingPolyPA2_KfPS_S2_fS2_P24GfxSunShadowBoundingPolyj_30
	jp _Z28R_SetupSunShadowBoundingPolyPA2_KfPS_S2_fS2_P24GfxSunShadowBoundingPolyj_30
	mov eax, [ebp-0xac]
	mov dword [eax], 0x1
_Z28R_SetupSunShadowBoundingPolyPA2_KfPS_S2_fS2_P24GfxSunShadowBoundingPolyj_50:
	add edi, 0x1
	add ebx, 0x8
	add ecx, 0x4
	mov edx, [ebp+0xc]
	cmp edi, [edx+0x8]
	jge _Z28R_SetupSunShadowBoundingPolyPA2_KfPS_S2_fS2_P24GfxSunShadowBoundingPolyj_40
_Z28R_SetupSunShadowBoundingPolyPA2_KfPS_S2_fS2_P24GfxSunShadowBoundingPolyj_20:
	lea eax, [edi*8]
	movss xmm0, dword [ebp+eax-0xa0]
	mov esi, [ebp-0xbc]
	subss xmm0, [esi]
	mulss xmm0, xmm2
	mov edx, [ebp+0x8]
	addss xmm0, [edx]
	movss [ebx+0xc], xmm0
	movss xmm0, dword [eax+ebp-0x9c]
	mov esi, [ebp-0xb0]
	subss xmm0, [esi]
	mulss xmm0, xmm2
	mov edx, [ebp-0xb4]
	addss xmm0, [edx]
	movss [ebx+0x10], xmm0
	lea esi, [ecx+0x54]
	mov [ebp-0xac], esi
	mov dword [ecx+0x54], 0x0
	cmp dword [ebp+0x10], 0x4
	jbe _Z28R_SetupSunShadowBoundingPolyPA2_KfPS_S2_fS2_P24GfxSunShadowBoundingPolyj_50
	lea edx, [ebp-0xa0]
	add edx, eax
	mov [ebp-0xcc], edx
	movss xmm1, dword [edx]
	mov edx, 0x4
_Z28R_SetupSunShadowBoundingPolyPA2_KfPS_S2_fS2_P24GfxSunShadowBoundingPolyj_70:
	mov esi, [ebp-0xb8]
	lea eax, [esi+edx*8]
	ucomiss xmm1, [eax]
	jz _Z28R_SetupSunShadowBoundingPolyPA2_KfPS_S2_fS2_P24GfxSunShadowBoundingPolyj_60
_Z28R_SetupSunShadowBoundingPolyPA2_KfPS_S2_fS2_P24GfxSunShadowBoundingPolyj_30:
	add edx, 0x1
	cmp [ebp+0x10], edx
	jnz _Z28R_SetupSunShadowBoundingPolyPA2_KfPS_S2_fS2_P24GfxSunShadowBoundingPolyj_70
	add edi, 0x1
	add ebx, 0x8
	add ecx, 0x4
	mov edx, [ebp+0xc]
	cmp edi, [edx+0x8]
	jl _Z28R_SetupSunShadowBoundingPolyPA2_KfPS_S2_fS2_P24GfxSunShadowBoundingPolyj_20
_Z28R_SetupSunShadowBoundingPolyPA2_KfPS_S2_fS2_P24GfxSunShadowBoundingPolyj_40:
	mov esi, [ebp-0xbc]
	movss xmm0, dword [esi]
	mov eax, [ebp-0xc0]
	subss xmm0, [eax]
	movss [edx], xmm0
	mov esi, [ebp-0xb0]
	movss xmm0, dword [esi]
	subss xmm0, [eax+0x4]
	movss [edx+0x4], xmm0
	add esp, 0xdc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z28R_SetupSunShadowBoundingPolyPA2_KfPS_S2_fS2_P24GfxSunShadowBoundingPolyj_10:
	mov esi, [ebp-0xbc]
	add esi, 0x4
	mov [ebp-0xb0], esi
	mov edx, [ebp+0xc]
	jmp _Z28R_SetupSunShadowBoundingPolyPA2_KfPS_S2_fS2_P24GfxSunShadowBoundingPolyj_40
	nop


;R_SunShadowMaps(GfxSunShadow*)
_Z15R_SunShadowMapsP12GfxSunShadow:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov dword [esp+0x4], _cstring_shadow_maps
	mov dword [esp], 0xffffffff
	call _Z18PIXBeginNamedEventiPKcz
	mov dword [esp], 0x0
	call _Z12R_SetVisDataj
	mov esi, eax
	mov eax, rgp
	mov eax, [eax+0x2060]
	mov eax, [eax+0x40]
	mov edx, [eax+0x8]
	mov eax, gfxMetrics
	mov eax, [eax+0x20]
	mov eax, [edx+eax*4+0xc]
	mov [shadowGlob], eax
	xor ebx, ebx
_Z15R_SunShadowMapsP12GfxSunShadow_10:
	add ebx, 0x1
	mov [esp], ebx
	call _Z12R_SetVisDataj
	call _Z29R_AddWorldSurfacesFrustumOnlyv
	cmp ebx, 0x2
	jnz _Z15R_SunShadowMapsP12GfxSunShadow_10
	mov [esp], esi
	call _Z12R_SetVisDataj
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret


;R_SetupSunShadowMaps(GfxViewParms const*, GfxSunShadow*)
_Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2fc
	mov eax, frontEndDataOut
	mov eax, [eax]
	lea edx, [eax+0x11e6e0]
	movss xmm7, dword [_data16_80000000]
	movss xmm6, dword [eax+0x11e6e0]
	xorps xmm6, xmm7
	movss [ebp-0x9c], xmm6
	movss xmm1, dword [edx+0x4]
	xorps xmm1, xmm7
	movss [ebp-0x98], xmm1
	movss xmm0, dword [edx+0x8]
	xorps xmm0, xmm7
	movss [ebp-0x94], xmm0
	movaps xmm0, xmm6
	mulss xmm0, xmm6
	mulss xmm1, xmm1
	addss xmm0, xmm1
	ucomiss xmm0, [_float_0_10000000]
	jae _Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_10
	jp _Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_10
	movss xmm5, dword [_float_1_00000000]
	movss [ebp-0x84], xmm5
	pxor xmm4, xmm4
	movss [ebp-0x80], xmm4
	movss [ebp-0x7c], xmm4
	movaps xmm3, xmm4
	movaps xmm0, xmm4
	movaps xmm2, xmm4
	movaps xmm1, xmm5
_Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_330:
	lea eax, [ebp-0x9c]
	add eax, 0x8
	mulss xmm3, [ebp-0x94]
	mulss xmm0, [ebp-0x98]
	subss xmm3, xmm0
	movss [ebp-0x90], xmm3
	mulss xmm2, [ebp-0x9c]
	movss xmm0, dword [ebp-0x84]
	mulss xmm0, [ebp-0x94]
	subss xmm2, xmm0
	movss [ebp-0x8c], xmm2
	mulss xmm1, [ebp-0x98]
	movss xmm0, dword [ebp-0x80]
	mulss xmm0, [ebp-0x9c]
	subss xmm1, xmm0
	movss [ebp-0x88], xmm1
	movaps xmm0, xmm3
	mulss xmm0, xmm3
	mulss xmm2, xmm2
	addss xmm0, xmm2
	mulss xmm1, xmm1
	addss xmm0, xmm1
	sqrtss xmm1, xmm0
	movaps xmm0, xmm1
	xorps xmm0, xmm7
	ucomiss xmm0, xmm4
	jb _Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_20
	movaps xmm1, xmm5
_Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_640:
	mulss xmm3, xmm1
	movss [ebp-0x90], xmm3
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x8c]
	movss [ebp-0x8c], xmm0
	mulss xmm1, [ebp-0x88]
	movss [ebp-0x88], xmm1
	movss xmm1, dword [ebp-0x98]
	mulss xmm1, [ebp-0x88]
	movss xmm0, dword [eax]
	mulss xmm0, [ebp-0x8c]
	subss xmm1, xmm0
	movss [ebp-0x84], xmm1
	movss xmm1, dword [eax]
	mulss xmm1, xmm3
	movss xmm0, dword [ebp-0x9c]
	mulss xmm0, [ebp-0x88]
	subss xmm1, xmm0
	movss [ebp-0x80], xmm1
	movss xmm1, dword [ebp-0x9c]
	mulss xmm1, [ebp-0x8c]
	movss xmm0, dword [ebp-0x98]
	mulss xmm0, xmm3
	subss xmm1, xmm0
	movss [ebp-0x7c], xmm1
	mov eax, [ebp+0x8]
	add eax, 0x100
	mov [ebp-0x27c], eax
	mov edx, [ebp+0x8]
	add edx, 0x104
	mov [ebp-0x278], edx
	mov ecx, [ebp+0x8]
	add ecx, 0x108
	mov [ebp-0x274], ecx
	mov ebx, [ebp+0x8]
	movss xmm2, dword [ebx+0x100]
	movaps xmm0, xmm2
	mulss xmm0, xmm3
	movss xmm4, dword [ebx+0x104]
	movaps xmm1, xmm4
	mulss xmm1, [ebp-0x8c]
	addss xmm0, xmm1
	movss xmm3, dword [ebx+0x108]
	movaps xmm1, xmm3
	mulss xmm1, [ebp-0x88]
	addss xmm0, xmm1
	xorps xmm0, xmm7
	movss [ebp-0x20], xmm0
	mulss xmm2, [ebp-0x84]
	mulss xmm4, [ebp-0x80]
	addss xmm2, xmm4
	mulss xmm3, [ebp-0x7c]
	addss xmm2, xmm3
	movss [ebp-0x1c], xmm2
	mov eax, 0x7f7fffff
	mov [ebp-0x68], eax
	mov [ebp-0x64], eax
	mov eax, 0xff7fffff
	mov [ebp-0x78], eax
	mov [ebp-0x74], eax
	mov esi, ebx
	add esi, 0xc0
	mov ecx, g_clipSpacePoints
	lea ebx, [ebp-0x114]
_Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_40:
	movss xmm4, dword [ecx]
	movss xmm3, dword [ecx+0x4]
	movss xmm2, dword [ecx+0x8]
	mov eax, esi
	xor edx, edx
_Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_30:
	movaps xmm0, xmm4
	mulss xmm0, [eax]
	movaps xmm1, xmm3
	mulss xmm1, [eax+0x10]
	addss xmm0, xmm1
	movaps xmm1, xmm2
	mulss xmm1, [eax+0x20]
	addss xmm0, xmm1
	addss xmm0, [eax+0x30]
	movss [ebp+edx*4-0xc4], xmm0
	add edx, 0x1
	add eax, 0x4
	cmp edx, 0x4
	jnz _Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_30
	movaps xmm0, xmm5
	divss xmm0, dword [ebp-0xb8]
	movaps xmm1, xmm0
	mulss xmm1, [ebp-0xc4]
	movss [ebx], xmm1
	movaps xmm1, xmm0
	mulss xmm1, [ebp-0xc0]
	movss [ebx+0x4], xmm1
	mulss xmm0, [ebp-0xbc]
	movss [ebx+0x8], xmm0
	add ecx, 0xc
	add ebx, 0xc
	cmp ecx, g_clipSpacePoints+0x30
	jnz _Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_40
	xor ebx, ebx
_Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_60:
	lea eax, [ebx+ebx*2]
	lea eax, [ebp+eax*4-0x114]
	lea edx, [ebx*8]
	movss xmm1, dword [eax]
	mulss xmm1, [ebp-0x90]
	movss xmm0, dword [eax+0x4]
	mulss xmm0, [ebp-0x8c]
	addss xmm1, xmm0
	movss xmm0, dword [eax+0x8]
	mulss xmm0, [ebp-0x88]
	addss xmm1, xmm0
	xorps xmm1, xmm7
	movss [ebp+edx-0x194], xmm1
	movss xmm1, dword [eax]
	mulss xmm1, [ebp-0x84]
	movss xmm0, dword [eax+0x4]
	mulss xmm0, [ebp-0x80]
	addss xmm1, xmm0
	movss xmm0, dword [eax+0x8]
	mulss xmm0, [ebp-0x7c]
	addss xmm1, xmm0
	movss [edx+ebp-0x190], xmm1
	lea edi, [ebp-0x78]
	mov [esp+0x8], edi
	lea eax, [ebp-0x68]
	mov [esp+0x4], eax
	lea ecx, [ebp-0x194]
	lea edx, [ecx+edx]
	mov [esp], edx
	call _Z18AddPointToBounds2DPKfPfS1_
	add ebx, 0x1
	cmp ebx, 0x4
	jz _Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_50
	movss xmm7, dword [_data16_80000000]
	jmp _Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_60
_Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_50:
	movss xmm3, dword [ebp-0x20]
	movss [ebp-0x174], xmm3
	mov eax, [ebp-0x1c]
	mov [ebp-0x170], eax
	mov eax, [ebp-0x68]
	mov [ebp-0x60], eax
	mov eax, [ebp-0x64]
	mov [ebp-0x5c], eax
	mov eax, [ebp-0x78]
	mov [ebp-0x70], eax
	mov eax, [ebp-0x74]
	mov [ebp-0x6c], eax
	mov eax, [ebp-0x194]
	mov [ebp-0x154], eax
	mov eax, [ebp-0x190]
	mov [ebp-0x150], eax
	mov eax, [ebp-0x18c]
	mov [ebp-0x14c], eax
	mov eax, [ebp-0x188]
	mov [ebp-0x148], eax
	mov eax, [ebp-0x184]
	mov [ebp-0x144], eax
	mov eax, [ebp-0x180]
	mov [ebp-0x140], eax
	mov eax, [ebp-0x17c]
	mov [ebp-0x13c], eax
	mov eax, [ebp-0x178]
	mov [ebp-0x138], eax
	and ebx, 0xffffff00
	lea edi, [ebp-0x60]
_Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_80:
	lea eax, [ebx*8]
	lea edx, [eax+ebp-0x154]
	movss xmm1, dword [edx+0x4]
	subss xmm1, [ebp-0x1c]
	lea eax, [eax+ebp-0x134]
	mov esi, rg
	movss xmm2, dword [_float_0_75000000]
	divss xmm2, dword [esi+0x22f0]
	movss xmm0, dword [edx]
	subss xmm0, xmm3
	mulss xmm0, xmm2
	addss xmm3, xmm0
	movss [eax], xmm3
	mulss xmm1, xmm2
	addss xmm1, [ebp-0x1c]
	movss [eax+0x4], xmm1
	lea edx, [ebp-0x70]
	mov [esp+0x8], edx
	mov [esp+0x4], edi
	mov [esp], eax
	call _Z18AddPointToBounds2DPKfPfS1_
	add ebx, 0x1
	cmp ebx, 0x4
	jz _Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_70
	movss xmm3, dword [ebp-0x20]
	jmp _Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_80
_Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_70:
	lea ecx, [ebp-0x78]
	mov [esp+0x8], ecx
	lea ebx, [ebp-0x68]
	mov [esp+0x4], ebx
	lea edi, [ebp-0x20]
	mov [esp], edi
	call _Z18AddPointToBounds2DPKfPfS1_
	movss xmm0, dword [ebp-0x78]
	subss xmm0, [ebp-0x68]
	movss [ebp-0x22c], xmm0
	movss xmm1, dword [ebp-0x74]
	subss xmm1, [ebp-0x64]
	movss [ebp-0x258], xmm1
	movaps xmm1, xmm0
	subss xmm1, [ebp-0x258]
	pxor xmm0, xmm0
	cmpss xmm0, xmm1, 0x6
	movss xmm1, dword [ebp-0x258]
	andps xmm1, xmm0
	movss xmm2, dword [ebp-0x22c]
	andnps xmm0, xmm2
	orps xmm0, xmm1
	movss [ebp-0x254], xmm0
	mov eax, sm_sunSampleSizeNear
	mov eax, [eax]
	movss xmm3, dword [eax+0xc]
	movss [ebp-0x29c], xmm3
	mulss xmm3, [esi+0x22f0]
	movss [ebp-0x298], xmm3
	mulss xmm3, [esi+0x22e8]
	movss [ebp-0x280], xmm3
	movss xmm0, dword [ebp-0x1c]
	divss xmm0, xmm3
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x2ac]
	cvttss2si ebx, [ebp-0x2ac]
	movss xmm0, dword [ebp-0x20]
	divss xmm0, dword [ebp-0x280]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x2b0]
	cvttss2si eax, [ebp-0x2b0]
	cvtsi2ss xmm0, eax
	mulss xmm0, [ebp-0x280]
	movss [ebp-0x28], xmm0
	cvtsi2ss xmm0, ebx
	mulss xmm0, [ebp-0x280]
	movss [ebp-0x24], xmm0
	call _ZN10MacDisplay10Is1900CardEv
	test al, al
	jz _Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_90
	movss xmm0, dword [_float_511_00000000]
_Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_350:
	divss xmm0, dword [ebp-0x254]
	movss [ebp-0x26c], xmm0
	call _ZN10MacDisplay10Is1900CardEv
	cmp al, 0x1
	sbb eax, eax
	and eax, 0x200
	lea esi, [eax+0x200]
	mov ebx, rg
	sub esi, [ebx+0x22ec]
	shr esi, 1
	call _ZN10MacDisplay10Is1900CardEv
	cmp al, 0x1
	sbb eax, eax
	and eax, 0x200
	add eax, 0x200
	mov edx, eax
	sub edx, esi
	mov [ebp-0x294], edx
	shr eax, 1
	mov [ebp-0x290], eax
	mov edx, [ebx+0x22ec]
	test edx, edx
	js _Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_100
	cvtsi2ss xmm1, edx
_Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_630:
	movss [ebp-0x2d8], xmm1
	call _ZN10MacDisplay10Is1900CardEv
	test al, al
	movss xmm1, dword [ebp-0x2d8]
	jz _Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_110
	movss xmm0, dword [_float_512_00000000]
_Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_340:
	divss xmm1, xmm0
	movss [ebp-0x28c], xmm1
	mov ecx, [ebp+0xc]
	add ecx, 0xa0
	mov [ebp-0x284], ecx
	mov edi, [ebp+0xc]
	add edi, 0x2a0
	mov eax, sm_sunShadowCenter
	mov eax, [eax]
	lea edx, [eax+0xc]
	movss xmm3, dword [eax+0xc]
	movss xmm1, dword [edx+0x4]
	movss xmm2, dword [edx+0x8]
	mov eax, vec3_origin
	ucomiss xmm3, [eax]
	jnz _Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_120
	jp _Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_120
	ucomiss xmm1, [eax+0x4]
	jz _Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_130
_Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_120:
	xor eax, eax
_Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_380:
	test eax, eax
	setz al
	movzx eax, al
	mov [ebp-0x288], eax
	movaps xmm0, xmm3
	mulss xmm0, [ebp-0x90]
	movss [ebp-0x24c], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x8c]
	addss xmm0, [ebp-0x24c]
	movss [ebp-0x24c], xmm0
	movaps xmm0, xmm2
	mulss xmm0, [ebp-0x88]
	addss xmm0, [ebp-0x24c]
	movss [ebp-0x24c], xmm0
	xor dword [ebp-0x24c], 0x80000000
	mulss xmm3, [ebp-0x84]
	mulss xmm1, [ebp-0x80]
	addss xmm1, xmm3
	mulss xmm2, [ebp-0x7c]
	addss xmm2, xmm1
	movss [ebp-0x250], xmm2
	call _ZN10MacDisplay10Is1900CardEv
	test al, al
	jz _Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_140
	movss xmm0, dword [_float_512_00000000]
_Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_370:
	divss xmm0, dword [ebp-0x254]
	mulss xmm0, [ebp-0x22c]
	movss [ebp-0x22c], xmm0
	subss xmm0, [_float_0_00100000]
	movss [esp], xmm0
	call ceilf
	fstp dword [ebp-0x2b4]
	cvttss2si eax, [ebp-0x2b4]
	movzx eax, ax
	mov edx, [ebp-0x284]
	mov [edx+0x14c], eax
	call _ZN10MacDisplay10Is1900CardEv
	test al, al
	jz _Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_150
	movss xmm0, dword [_float_512_00000000]
_Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_360:
	divss xmm0, dword [ebp-0x254]
	mulss xmm0, [ebp-0x258]
	movss [ebp-0x258], xmm0
	subss xmm0, [_float_0_00100000]
	movss [esp], xmm0
	call ceilf
	fstp dword [ebp-0x2b8]
	cvttss2si eax, [ebp-0x2b8]
	movzx eax, ax
	mov ecx, [ebp-0x284]
	mov [ecx+0x150], eax
	movss xmm3, dword [ebp-0x20]
	movss xmm1, dword [ebp-0x68]
	movaps xmm0, xmm1
	addss xmm0, [ebp-0x78]
	mulss xmm0, [_float_0_50000000]
	ucomiss xmm3, xmm0
	jae _Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_160
	movaps xmm0, xmm3
	subss xmm0, xmm1
	mulss xmm0, [ebp-0x26c]
	addss xmm0, [_float_1_00000000]
	movss [ebp-0x58], xmm0
	mov eax, [ebp-0x288]
	test eax, eax
	jz _Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_170
	cvtsi2ss xmm0, dword [ebp-0x290]
	subss xmm3, [ebp-0x24c]
	divss xmm3, dword [ebp-0x298]
	addss xmm0, xmm3
	movss [ebp-0x50], xmm0
	mov [edi+0x144], esi
_Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_400:
	mov eax, [ebp-0x284]
	mov dword [eax+0x144], 0x0
	mov eax, [ebp-0x294]
	sub eax, [edi+0x144]
	mov [edi+0x14c], eax
	mov ebx, esi
	movss xmm2, dword [ebp-0x1c]
	movss xmm1, dword [ebp-0x74]
	movaps xmm0, xmm1
	addss xmm0, [ebp-0x64]
	mulss xmm0, [_float_0_50000000]
	ucomiss xmm0, xmm2
	jae _Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_180
_Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_570:
	movaps xmm0, xmm1
	subss xmm0, xmm2
	mulss xmm0, [ebp-0x26c]
	addss xmm0, [_float_1_00000000]
	movss [ebp-0x54], xmm0
	mov eax, [ebp-0x288]
	test eax, eax
	jz _Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_190
	cvtsi2ss xmm0, dword [ebp-0x290]
	subss xmm2, [ebp-0x250]
	divss xmm2, dword [ebp-0x298]
	addss xmm0, xmm2
	movss [ebp-0x4c], xmm0
	mov [edi+0x148], esi
_Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_620:
	mov ecx, [ebp-0x284]
	mov dword [ecx+0x148], 0x0
	mov ebx, [edi+0x148]
	sub [ebp-0x294], ebx
	mov eax, [ebp-0x294]
	mov [edi+0x150], eax
_Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_600:
	mov edx, rg
	mov eax, [edx+0x22e0]
	test eax, eax
	jnz _Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_200
	mov ecx, [ebp-0x284]
	mov eax, [ecx+0x144]
	mov [edi+0x144], eax
	mov eax, [ecx+0x148]
	mov [edi+0x148], eax
	mov eax, [ecx+0x14c]
	mov [edi+0x14c], eax
	mov eax, [ecx+0x150]
	mov [edi+0x150], eax
_Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_200:
	lea ebx, [ebp-0x28]
	lea eax, [ebp-0x58]
	lea edx, [ebp-0x48]
	mov [esp], edx
	movss xmm0, dword [ebp-0x29c]
	mov ecx, ebx
	lea edx, [ebp-0x20]
	call _Z47R_GetSunShadowMapPartitionViewOrgInTextureSpacePKfS0_S0_fPf
	lea eax, [ebp-0x50]
	lea edx, [ebp-0x40]
	mov [esp], edx
	movss xmm0, dword [ebp-0x298]
	mov ecx, ebx
	lea edx, [ebp-0x20]
	call _Z47R_GetSunShadowMapPartitionViewOrgInTextureSpacePKfS0_S0_fPf
	mov eax, [ebp+0xc]
	add eax, 0x40
	mov [ebp-0x270], eax
	movss xmm5, dword [_float_1_00000000]
	movaps xmm0, xmm5
	mov edx, rg
	divss xmm0, dword [edx+0x22f0]
	movss [eax+0x4c], xmm0
	mulss xmm0, [ebp-0x48]
	movss xmm1, dword [ebp-0x40]
	movaps xmm2, xmm1
	subss xmm2, xmm0
	movss [eax+0x40], xmm2
	movss xmm2, dword [ebp-0x44]
	movaps xmm0, xmm2
	mulss xmm0, [eax+0x4c]
	movss xmm4, dword [ebp-0x3c]
	movaps xmm3, xmm4
	subss xmm3, xmm0
	movaps xmm0, xmm3
	addss xmm0, xmm5
	mulss xmm0, [_float_0_50000000]
	movss [eax+0x44], xmm0
	xor edx, edx
	mov [eax+0x48], edx
	mov eax, rg
	movss xmm3, dword [eax+0x22e4]
	mov eax, [ebp+0xc]
	add eax, 0x90
	movss xmm0, dword [_float_16_00000000]
	divss xmm0, xmm3
	mov ecx, [ebp+0xc]
	movss [ecx+0x90], xmm0
	movss xmm0, dword [_float_32_00000000]
	divss xmm0, xmm3
	movss [eax+0x4], xmm0
	mov [eax+0x8], edx
	mov [eax+0xc], edx
	movss xmm0, dword [ebp-0x48]
	addss xmm0, xmm0
	subss xmm0, xmm5
	movss [ebp-0x38], xmm0
	movss xmm0, dword [_float__2_00000000]
	mulss xmm2, xmm0
	addss xmm2, xmm5
	movss [ebp-0x34], xmm2
	addss xmm1, xmm1
	subss xmm1, xmm5
	movss [ebp-0x30], xmm1
	mulss xmm4, xmm0
	addss xmm4, xmm5
	movss [ebp-0x2c], xmm4
	movss xmm0, dword [ebp-0x90]
	xorps xmm0, [_data16_80000000]
	movss [ecx+0x40], xmm0
	movss xmm0, dword [ebp-0x8c]
	xorps xmm0, [_data16_80000000]
	mov eax, [ebp-0x270]
	movss [eax+0x10], xmm0
	movss xmm0, dword [ebp-0x88]
	xorps xmm0, [_data16_80000000]
	movss [eax+0x20], xmm0
	movss xmm0, dword [ebp-0x28]
	xorps xmm0, [_data16_80000000]
	movss [eax+0x30], xmm0
	mov eax, [ebp-0x84]
	mov ecx, [ebp-0x270]
	mov [ecx+0x4], eax
	mov eax, [ebp-0x80]
	mov [ecx+0x14], eax
	mov eax, [ebp-0x7c]
	mov [ecx+0x24], eax
	movss xmm0, dword [ebp-0x24]
	xorps xmm0, [_data16_80000000]
	movss [ecx+0x34], xmm0
	mov eax, [ebp-0x9c]
	mov [ecx+0x8], eax
	mov eax, [ebp-0x98]
	mov [ecx+0x18], eax
	mov eax, [ebp-0x94]
	mov [ecx+0x28], eax
	mov [ecx+0x38], edx
	mov [ecx+0xc], edx
	mov [ecx+0x1c], edx
	mov [ecx+0x2c], edx
	movss [ecx+0x3c], xmm5
	mov dword [esp+0x8], 0x5
	mov eax, [ebp-0x284]
	add eax, 0x17c
	mov [esp+0x4], eax
	lea eax, [ebp-0x38]
	mov [esp], eax
	movss xmm0, dword [ebp-0x254]
	mov ecx, ebx
	lea edx, [ebp-0x20]
	lea eax, [ebp-0x194]
	movss [ebp-0x2e8], xmm5
	call _Z28R_SetupSunShadowBoundingPolyPA2_KfPS_S2_fS2_P24GfxSunShadowBoundingPolyj
	lea ecx, [ebp-0x30]
	lea eax, [ebp-0x154]
	mov dword [esp+0x8], 0x8
	lea edx, [edi+0x17c]
	mov [esp+0x4], edx
	mov [esp], ecx
	movss xmm0, dword [ebp-0x254]
	mov ecx, ebx
	lea edx, [ebp-0x20]
	call _Z28R_SetupSunShadowBoundingPolyPA2_KfPS_S2_fS2_P24GfxSunShadowBoundingPolyj
	mov edx, sm_sunSampleSizeNear
	mov eax, [edx]
	mov ecx, [ebp+0x8]
	movss xmm0, dword [ecx+0x138]
	mulss xmm0, [eax+0xc]
	mulss xmm0, [ebp-0x26c]
	movss [ebp-0x26c], xmm0
	movss xmm5, dword [ebp-0x2e8]
	movaps xmm0, xmm5
	divss xmm0, dword [ebp-0x26c]
	mov eax, ecx
	add eax, 0x110
	movaps xmm1, xmm0
	mulss xmm1, [ecx+0x110]
	movss [ebp-0x25c], xmm1
	movaps xmm2, xmm0
	mulss xmm2, [eax+0x4]
	movss [ebp-0x260], xmm2
	mulss xmm0, [eax+0x8]
	movss [ebp-0x264], xmm0
	mov eax, [ebp-0x27c]
	mulss xmm1, [eax]
	movaps xmm0, xmm2
	mov edx, [ebp-0x278]
	mulss xmm0, [edx]
	addss xmm0, xmm1
	movss [ebp-0x268], xmm0
	movss xmm0, dword [ebp-0x264]
	mov ecx, [ebp-0x274]
	mulss xmm0, [ecx]
	addss xmm0, [ebp-0x268]
	movss [ebp-0x268], xmm0
	xor dword [ebp-0x268], 0x80000000
	mov edx, scene
	movss [edx+0x154c6c], xmm2
	movss xmm0, dword [ebp-0x264]
	movss [edx+0x154c70], xmm0
	movss xmm1, dword [ebp-0x268]
	movss [edx+0x154c74], xmm1
	movss xmm0, dword [ebp-0x25c]
	mulss xmm0, xmm0
	movaps xmm1, xmm2
	mulss xmm1, xmm2
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0x264]
	mulss xmm1, xmm1
	addss xmm0, xmm1
	sqrtss xmm0, xmm0
	movaps xmm1, xmm5
	divss xmm1, xmm0
	movss xmm2, dword [ebp-0x25c]
	mulss xmm2, xmm1
	movss [edx+0x154c68], xmm2
	movaps xmm3, xmm1
	mulss xmm3, [edx+0x154c6c]
	movss [edx+0x154c6c], xmm3
	movaps xmm4, xmm1
	mulss xmm4, [edx+0x154c70]
	movss [edx+0x154c70], xmm4
	movaps xmm0, xmm1
	mulss xmm0, [edx+0x154c74]
	movss [edx+0x154c74], xmm0
	movss [ebp-0x2ec], xmm2
	mov eax, [ebp-0x2ec]
	mov esi, 0xc
	test eax, eax
	mov eax, 0x0
	cmovg eax, esi
	mov [edx+0x154c78], al
	movss [ebp-0x2ec], xmm3
	mov eax, [ebp-0x2ec]
	mov ebx, 0x10
	test eax, eax
	mov eax, 0x4
	cmovg eax, ebx
	mov [edx+0x154c79], al
	movss [ebp-0x2ec], xmm4
	mov eax, [ebp-0x2ec]
	mov edi, 0x8
	mov ecx, 0x14
	test eax, eax
	mov eax, ecx
	cmovle eax, edi
	mov [edx+0x154c7a], al
	movss xmm0, dword [ebp-0x260]
	movss [edx+0x154c80], xmm0
	movss xmm3, dword [ebp-0x264]
	movss [edx+0x154c84], xmm3
	movss xmm0, dword [ebp-0x268]
	subss xmm0, [_float_0_75000000]
	movss [edx+0x154c88], xmm0
	movss [edx+0x154c7c], xmm2
	movaps xmm0, xmm1
	mulss xmm0, [edx+0x154c80]
	movss [edx+0x154c80], xmm0
	movaps xmm3, xmm1
	mulss xmm3, [edx+0x154c84]
	movss [edx+0x154c84], xmm3
	mulss xmm1, [edx+0x154c88]
	movss [edx+0x154c88], xmm1
	movss [ebp-0x2ec], xmm2
	mov eax, [ebp-0x2ec]
	test eax, eax
	mov eax, 0x0
	cmovle esi, eax
	mov eax, esi
	mov [edx+0x154c8c], al
	movss [ebp-0x2ec], xmm0
	mov eax, [ebp-0x2ec]
	test eax, eax
	mov eax, 0x4
	cmovle ebx, eax
	mov [edx+0x154c8d], bl
	movss [ebp-0x2ec], xmm3
	mov eax, [ebp-0x2ec]
	test eax, eax
	cmovle ecx, edi
	mov [edx+0x154c8e], cl
	movaps xmm4, xmm5
	xor ebx, ebx
	mov edi, rg
	movss xmm6, dword [_float__1_00000000]
	lea ecx, [edx+0x154c00]
_Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_210:
	movss xmm0, dword [ebp-0x25c]
	movss [ecx+0x40], xmm0
	movss xmm1, dword [ebp-0x260]
	movss [ecx+0x44], xmm1
	movss xmm2, dword [ebp-0x264]
	movss [ecx+0x48], xmm2
	movss xmm0, dword [ebp-0x268]
	subss xmm0, xmm4
	movss [ecx+0x4c], xmm0
	movss xmm0, dword [ebp-0x25c]
	mulss xmm0, xmm0
	movss xmm1, dword [ebp-0x260]
	mulss xmm1, xmm1
	addss xmm0, xmm1
	movaps xmm1, xmm2
	mulss xmm1, xmm2
	addss xmm0, xmm1
	sqrtss xmm0, xmm0
	movaps xmm3, xmm6
	divss xmm3, xmm0
	movaps xmm0, xmm3
	movaps xmm1, xmm3
	mulss xmm1, [ecx+0x40]
	movss [ecx+0x40], xmm1
	movaps xmm2, xmm3
	mulss xmm2, [ecx+0x44]
	movss [ecx+0x44], xmm2
	mulss xmm3, [ecx+0x48]
	movss [ecx+0x48], xmm3
	mulss xmm0, [ecx+0x4c]
	movss [ecx+0x4c], xmm0
	movss [ebp-0x2ec], xmm1
	mov edx, [ebp-0x2ec]
	mov eax, 0xc
	test edx, edx
	mov edx, 0x0
	cmovle eax, edx
	mov [ecx+0x50], al
	movss [ebp-0x2ec], xmm2
	mov edx, [ebp-0x2ec]
	mov eax, 0x10
	test edx, edx
	mov edx, 0x4
	cmovle eax, edx
	mov [ecx+0x51], al
	movss [ebp-0x2ec], xmm3
	mov edx, [ebp-0x2ec]
	mov eax, 0x14
	test edx, edx
	mov edx, 0x8
	cmovle eax, edx
	mov [ecx+0x52], al
	mulss xmm4, [edi+0x22f0]
	add ebx, 0x1
	add ecx, 0x14
	cmp ebx, 0x2
	jnz _Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_210
	mov eax, [ebp+0xc]
	movss xmm2, dword [eax+0x78]
	mov edx, sm_sunSampleSizeNear
	mov eax, [edx]
	movss xmm0, dword [eax+0xc]
	movss [ebp-0x2a4], xmm0
	movss xmm6, dword [ebp-0x9c]
	movss xmm3, dword [ebp-0x98]
	movss xmm4, dword [ebp-0x94]
	movss [ebp-0x2ec], xmm6
	mov eax, [ebp-0x2ec]
	mov edi, 0xc
	test eax, eax
	mov eax, 0x0
	cmovle edi, eax
	movaps xmm0, xmm3
	movss [ebp-0x2ec], xmm3
	mov eax, [ebp-0x2ec]
	mov esi, 0x10
	test eax, eax
	mov eax, 0x4
	cmovle esi, eax
	movss [ebp-0x2ec], xmm4
	mov eax, [ebp-0x2ec]
	mov bl, 0x14
	test eax, eax
	mov eax, 0x8
	cmovle ebx, eax
	mov eax, rgp
	mov ecx, [eax+0x20a0]
	lea edx, [ecx+0x158]
	mov eax, edx
	sub eax, edi
	movaps xmm1, xmm6
	mulss xmm1, [eax+0xc]
	addss xmm1, xmm2
	mov eax, edx
	sub eax, esi
	mulss xmm0, [eax+0x14]
	addss xmm1, xmm0
	mov eax, edx
	sub eax, ebx
	movaps xmm0, xmm4
	mulss xmm0, [eax+0x1c]
	addss xmm1, xmm0
	movaps xmm0, xmm6
	mulss xmm0, [edi+edx]
	addss xmm2, xmm0
	mulss xmm3, [ecx+esi+0x158]
	addss xmm2, xmm3
	mulss xmm4, [ecx+ebx+0x158]
	addss xmm2, xmm4
	subss xmm2, xmm1
	addss xmm2, [_float_2_00000000]
	movaps xmm3, xmm5
	divss xmm3, xmm2
	movss [ebp-0x248], xmm3
	subss xmm1, xmm5
	movss [ebp-0x244], xmm1
	movss xmm7, dword [_data16_80000000]
	xor dword [ebp-0x244], 0x80000000
	mulss xmm3, [ebp-0x244]
	movss [ebp-0x244], xmm3
	mov dword [ebp-0x2a8], 0x0
_Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_440:
	mov eax, [ebp-0x2a8]
	shl eax, 0x9
	mov edx, [ebp+0xc]
	lea esi, [eax+edx+0xa0]
	lea eax, [esi+0x100]
	xorps xmm6, xmm7
	movss [esi+0x100], xmm6
	movss xmm0, dword [ebp-0x98]
	xorps xmm0, xmm7
	movss [eax+0x4], xmm0
	movss xmm0, dword [ebp-0x94]
	xorps xmm0, xmm7
	movss [eax+0x8], xmm0
	mov dword [esi+0x10c], 0x0
	lea eax, [esi+0x110]
	mov [esp+0x4], eax
	lea ecx, [ebp-0x9c]
	mov [esp], ecx
	call _Z8AxisCopyPA3_KfPA3_f
	mov ebx, [ebp-0x270]
	mov eax, [ebx]
	mov [esi], eax
	mov eax, [ebx+0x4]
	mov [esi+0x4], eax
	mov eax, [ebx+0x8]
	mov [esi+0x8], eax
	mov eax, [ebx+0xc]
	mov [esi+0xc], eax
	mov eax, [ebx+0x10]
	mov [esi+0x10], eax
	mov eax, [ebx+0x14]
	mov [esi+0x14], eax
	mov eax, [ebx+0x18]
	mov [esi+0x18], eax
	mov eax, [ebx+0x1c]
	mov [esi+0x1c], eax
	mov eax, [ebx+0x20]
	mov [esi+0x20], eax
	mov eax, [ebx+0x24]
	mov [esi+0x24], eax
	mov eax, [ebx+0x28]
	mov [esi+0x28], eax
	mov eax, [ebx+0x2c]
	mov [esi+0x2c], eax
	mov eax, [ebx+0x30]
	mov [esi+0x30], eax
	mov eax, [ebx+0x34]
	mov [esi+0x34], eax
	mov eax, [ebx+0x38]
	mov [esi+0x38], eax
	mov eax, [ebx+0x3c]
	mov [esi+0x3c], eax
	mov edi, [ebp-0x2a8]
	lea ebx, [ebp+edi*8-0x38]
	lea edi, [esi+0x40]
	cld
	mov ecx, 0x10
	xor eax, eax
	rep stosd
	call _ZN10MacDisplay10Is1900CardEv
	test al, al
	jz _Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_220
	movss xmm1, dword [_float_512_00000000]
_Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_410:
	mulss xmm1, [ebp-0x2a4]
	movss xmm0, dword [_float_2_00000000]
	divss xmm0, xmm1
	movss [esi+0x40], xmm0
	mov eax, [ebx]
	mov [esi+0x70], eax
	movss [esi+0x54], xmm0
	mov eax, [ebx+0x4]
	mov [esi+0x74], eax
	movss xmm0, dword [ebp-0x248]
	movss [esi+0x68], xmm0
	movss xmm1, dword [ebp-0x244]
	movss [esi+0x78], xmm1
	mov dword [esi+0x7c], 0x3f800000
	movss [esi+0x134], xmm1
	mov [esp], esi
	call _Z29R_SetupViewProjectionMatricesP12GfxViewParms
	lea eax, [esi+0x17c]
	mov [ebp-0x230], eax
	call _ZN10MacDisplay10Is1900CardEv
	test al, al
	jz _Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_230
	movss xmm1, dword [_float_512_00000000]
_Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_430:
	mulss xmm1, [ebp-0x2a4]
	movss xmm0, dword [_float_2_00000000]
	divss xmm0, xmm1
	movaps xmm2, xmm0
	mov edx, [ebp-0x230]
	mulss xmm2, [edx]
	movaps xmm1, xmm0
	mulss xmm1, [edx+0x4]
	mov ecx, [edx+0x8]
	mov [ebp-0x2f4], ecx
	test ecx, ecx
	jle _Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_240
	mov ecx, edx
	xor ebx, ebx
_Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_250:
	lea eax, [ebx*8]
	mov edx, [ebp-0x230]
	add edx, eax
	lea edi, [ebp-0x114]
	lea eax, [edi+eax]
	movaps xmm0, xmm2
	addss xmm0, [edx+0xc]
	movss [eax], xmm0
	movaps xmm0, xmm1
	addss xmm0, [edx+0x10]
	movss [eax+0x4], xmm0
	mov eax, [ecx+0x54]
	mov [ebp+ebx*4-0xc4], eax
	add ebx, 0x1
	add ecx, 0x4
	cmp ebx, [ebp-0x2f4]
	jl _Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_250
	mov eax, [ebp-0x2f4]
_Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_420:
	lea edx, [ebp+eax*8-0x114]
	mov eax, [ebp-0x114]
	mov [edx], eax
	mov eax, [ebp-0x110]
	mov [edx+0x4], eax
	mov eax, [ebp-0xc4]
	mov edx, [ebp-0x2f4]
	mov [ebp+edx*4-0xc4], eax
	mov ecx, [ebp-0x230]
	mov ebx, [ecx+0x8]
	test ebx, ebx
	jg _Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_260
	mov dword [ebp-0x2a0], 0x0
_Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_810:
	mov ecx, [ebp-0x2a8]
	test ecx, ecx
	jnz _Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_270
_Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_480:
	mov edx, [ebp-0x2a8]
	mov [esp+0xc], edx
	mov ecx, [ebp-0x2a0]
	mov [esp+0x8], ecx
	lea ebx, [ebp-0x224]
	mov [esp+0x4], ebx
	mov [esp], esi
	call _Z25R_SetupShadowSurfacesDpvsPK12GfxViewParmsPA4_Kfji
	mov eax, rg
	movss xmm0, dword [ebp-0x2a4]
	mulss xmm0, [eax+0x22f0]
	movss [ebp-0x2a4], xmm0
	add dword [ebp-0x2a8], 0x1
	cmp dword [ebp-0x2a8], 0x2
	jnz _Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_280
	call _ZN10MacDisplay10Is1900CardEv
	test al, al
	jz _Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_290
	movss xmm1, dword [_float_0_00097656]
	movss [ebp-0x240], xmm1
	call _ZN10MacDisplay10Is1900CardEv
	test al, al
	jz _Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_300
_Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_490:
	movss xmm3, dword [_float_1_00097656]
	movss [ebp-0x23c], xmm3
	call _ZN10MacDisplay10Is1900CardEv
	test al, al
	jz _Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_310
_Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_500:
	movss xmm1, dword [_float_0_50048828]
	movss [ebp-0x238], xmm1
	call _ZN10MacDisplay10Is1900CardEv
	test al, al
	jz _Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_320
_Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_510:
	movss xmm5, dword [_float_0_00048828]
_Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_520:
	movss xmm2, dword [ebp-0x23c]
	subss xmm2, [ebp-0x240]
	movss xmm0, dword [_float_0_50000000]
	mulss xmm2, xmm0
	movss xmm3, dword [ebp-0x23c]
	addss xmm3, [ebp-0x240]
	mulss xmm3, xmm0
	movaps xmm4, xmm5
	subss xmm4, [ebp-0x238]
	mulss xmm4, xmm0
	addss xmm5, [ebp-0x238]
	mulss xmm5, xmm0
	movaps xmm0, xmm2
	mov eax, [ebp-0x284]
	mulss xmm0, [eax+0x80]
	movaps xmm1, xmm3
	mulss xmm1, [eax+0x8c]
	addss xmm0, xmm1
	mov edx, [ebp+0xc]
	movss [edx], xmm0
	movaps xmm0, xmm2
	mulss xmm0, [eax+0x90]
	movaps xmm1, xmm3
	mulss xmm1, [eax+0x9c]
	addss xmm0, xmm1
	movss [edx+0x10], xmm0
	movaps xmm0, xmm2
	mulss xmm0, [eax+0xa0]
	movaps xmm1, xmm3
	mulss xmm1, [eax+0xac]
	addss xmm0, xmm1
	movss [edx+0x20], xmm0
	mulss xmm2, [eax+0xb0]
	mulss xmm3, [eax+0xbc]
	addss xmm2, xmm3
	movss [edx+0x30], xmm2
	movaps xmm0, xmm4
	mulss xmm0, [eax+0x84]
	movaps xmm1, xmm5
	mulss xmm1, [eax+0x8c]
	addss xmm0, xmm1
	movss [edx+0x4], xmm0
	movaps xmm0, xmm4
	mulss xmm0, [eax+0x94]
	movaps xmm1, xmm5
	mulss xmm1, [eax+0x9c]
	addss xmm0, xmm1
	movss [edx+0x14], xmm0
	movaps xmm0, xmm4
	mulss xmm0, [eax+0xa4]
	movaps xmm1, xmm5
	mulss xmm1, [eax+0xac]
	addss xmm0, xmm1
	movss [edx+0x24], xmm0
	mulss xmm4, [eax+0xb4]
	mulss xmm5, [eax+0xbc]
	addss xmm4, xmm5
	movss [edx+0x34], xmm4
	mov ecx, [ebp-0x284]
	mov eax, [ecx+0x88]
	mov [edx+0x8], eax
	mov eax, [ecx+0x98]
	mov [edx+0x18], eax
	mov eax, [ecx+0xa8]
	mov [edx+0x28], eax
	mov eax, [ecx+0xb8]
	mov [edx+0x38], eax
	movss xmm0, dword [ebp-0x25c]
	movss [edx+0xc], xmm0
	movss xmm1, dword [ebp-0x260]
	movss [edx+0x1c], xmm1
	movss xmm2, dword [ebp-0x264]
	movss [edx+0x2c], xmm2
	movss xmm3, dword [ebp-0x268]
	movss [edx+0x3c], xmm3
	add esp, 0x2fc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_10:
	pxor xmm4, xmm4
	movss [ebp-0x84], xmm4
	movss [ebp-0x80], xmm4
	movss xmm5, dword [_float_1_00000000]
	movss [ebp-0x7c], xmm5
	movaps xmm3, xmm4
	movaps xmm0, xmm5
	movaps xmm2, xmm5
	movaps xmm1, xmm4
	jmp _Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_330
_Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_110:
	movss xmm0, dword [_float_1024_00000000]
	jmp _Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_340
_Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_90:
	movss xmm0, dword [_float_1023_00000000]
	jmp _Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_350
_Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_150:
	movss xmm0, dword [_float_1024_00000000]
	jmp _Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_360
_Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_140:
	movss xmm0, dword [_float_1024_00000000]
	jmp _Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_370
_Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_130:
	jp _Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_120
	ucomiss xmm2, [eax+0x8]
	jnz _Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_120
	jp _Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_120
	mov eax, 0x1
	jmp _Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_380
_Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_170:
	mov edx, esi
	add edx, 0x1
	js _Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_390
	cvtsi2ss xmm0, edx
_Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_730:
	subss xmm3, [ebp-0x68]
	mulss xmm3, [ebp-0x26c]
	mulss xmm3, [ebp-0x28c]
	addss xmm0, xmm3
	movss [ebp-0x50], xmm0
	cvtsi2ss xmm1, esi
	movss xmm0, dword [ebp-0x60]
	subss xmm0, [ebp-0x68]
	mulss xmm0, [ebp-0x26c]
	addss xmm1, xmm0
	movss [esp], xmm1
	call floorf
	fstp dword [ebp-0x2c0]
	cvttss2si eax, [ebp-0x2c0]
	cmp eax, esi
	cmovle eax, esi
	mov [edi+0x144], eax
	jmp _Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_400
_Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_220:
	movss xmm1, dword [_float_1024_00000000]
	jmp _Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_410
_Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_240:
	mov eax, ecx
	jmp _Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_420
_Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_230:
	movss xmm1, dword [_float_1024_00000000]
	jmp _Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_430
_Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_280:
	movss xmm7, dword [_data16_80000000]
	movss xmm6, dword [ebp-0x9c]
	jmp _Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_440
_Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_260:
	mov edi, [ebp-0x2a8]
	test edi, edi
	jnz _Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_450
	xor edx, edx
	mov dword [ebp-0x2a0], 0x0
	movss xmm7, dword [_data16_80000000]
	jmp _Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_460
_Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_470:
	mov edx, ecx
_Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_460:
	lea ecx, [edx+0x1]
	mov eax, [ebp-0x2a0]
	shl eax, 0x4
	lea ebx, [ebp-0x224]
	lea eax, [ebx+eax]
	movss xmm0, dword [ebp+ecx*8-0x110]
	subss xmm0, [ebp+edx*8-0x110]
	movss [eax], xmm0
	movss xmm0, dword [ebp+edx*8-0x114]
	subss xmm0, [ebp+ecx*8-0x114]
	movss [eax+0x4], xmm0
	mov dword [eax+0x8], 0x0
	lea edx, [ebp+edx*8-0x114]
	movss xmm0, dword [edx]
	mulss xmm0, [eax]
	movss xmm1, dword [edx+0x4]
	mulss xmm1, [eax+0x4]
	addss xmm0, xmm1
	xorps xmm0, xmm7
	movss [eax+0xc], xmm0
	add dword [ebp-0x2a0], 0x1
	mov edi, [ebp-0x230]
	cmp [edi+0x8], ecx
	jg _Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_470
	jmp _Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_480
_Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_290:
	movss xmm2, dword [_float_0_00048828]
	movss [ebp-0x240], xmm2
	call _ZN10MacDisplay10Is1900CardEv
	test al, al
	jnz _Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_490
_Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_300:
	movss xmm0, dword [_float_1_00048828]
	movss [ebp-0x23c], xmm0
	call _ZN10MacDisplay10Is1900CardEv
	test al, al
	jnz _Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_500
_Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_310:
	movss xmm2, dword [_float_0_50024414]
	movss [ebp-0x238], xmm2
	call _ZN10MacDisplay10Is1900CardEv
	test al, al
	jnz _Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_510
_Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_320:
	movss xmm5, dword [_float_0_00024414]
	jmp _Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_520
_Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_270:
	mov edi, rg
	mov edx, [edi+0x22e0]
	test edx, edx
	jz _Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_480
	mov ebx, [ebp-0x2a0]
	shl ebx, 0x4
	mov dword [ebp-0x2f0], 0x0
	mov ecx, g_shadowFrustumBound+0xc
	movss xmm7, dword [_data16_80000000]
	mov eax, [ebp-0x2f0]
_Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_540:
	lea edx, [ebp-0x224]
	add edx, ebx
	add eax, 0x1
	mov [ebp-0x234], eax
	movss xmm0, dword [ecx]
	subss xmm0, [ecx-0x8]
	mulss xmm0, [edi+0x22e4]
	movss [edx], xmm0
	movss xmm0, dword [ecx-0xc]
	subss xmm0, [ecx-0x4]
	mulss xmm0, [edi+0x22e4]
	movss [edx+0x4], xmm0
	mov dword [edx+0x8], 0x0
	mov eax, [ebp-0x2f0]
	shl eax, 0x3
	movss xmm0, dword [eax+g_shadowFrustumBound]
	mulss xmm0, [edx]
	movss xmm1, dword [eax+g_shadowFrustumBound+0x4]
	mulss xmm1, [edx+0x4]
	addss xmm0, xmm1
	xorps xmm0, xmm7
	mulss xmm0, [edi+0x22e4]
	movss [edx+0xc], xmm0
	add ebx, 0x10
	add ecx, 0x8
	cmp dword [ebp-0x234], 0x4
	jz _Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_530
	mov edx, [ebp-0x234]
	mov [ebp-0x2f0], edx
	mov eax, edx
	jmp _Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_540
_Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_160:
	call _ZN10MacDisplay10Is1900CardEv
	test al, al
	jz _Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_550
	movss xmm1, dword [_float_511_00000000]
_Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_660:
	movss xmm2, dword [ebp-0x78]
	movaps xmm0, xmm2
	subss xmm0, [ebp-0x20]
	mulss xmm0, [ebp-0x26c]
	subss xmm1, xmm0
	movss [ebp-0x58], xmm1
	mov edx, [ebp-0x288]
	test edx, edx
	jz _Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_560
	cvtsi2ss xmm1, dword [ebp-0x290]
	movss xmm0, dword [ebp-0x20]
	subss xmm0, [ebp-0x24c]
	divss xmm0, dword [ebp-0x298]
	subss xmm1, xmm0
	movss [ebp-0x50], xmm1
	mov eax, rg
	mov eax, [eax+0x22ec]
	mov [edi+0x14c], eax
_Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_720:
	call _ZN10MacDisplay10Is1900CardEv
	cmp al, 0x1
	sbb eax, eax
	and eax, 0x200
	add eax, 0x200
	mov ebx, [ebp-0x284]
	sub eax, [ebx+0x14c]
	mov [ebx+0x144], eax
	mov ebx, esi
	mov [edi+0x144], esi
	movss xmm2, dword [ebp-0x1c]
	movss xmm1, dword [ebp-0x74]
	movaps xmm0, xmm1
	addss xmm0, [ebp-0x64]
	mulss xmm0, [_float_0_50000000]
	ucomiss xmm0, xmm2
	jb _Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_570
_Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_180:
	call _ZN10MacDisplay10Is1900CardEv
	test al, al
	jz _Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_580
	movss xmm1, dword [_float_511_00000000]
_Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_650:
	movss xmm2, dword [ebp-0x1c]
	movaps xmm0, xmm2
	subss xmm0, [ebp-0x64]
	mulss xmm0, [ebp-0x26c]
	subss xmm1, xmm0
	movss [ebp-0x54], xmm1
	mov eax, [ebp-0x288]
	test eax, eax
	jz _Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_590
	cvtsi2ss xmm0, dword [ebp-0x290]
	subss xmm2, [ebp-0x250]
	divss xmm2, dword [ebp-0x298]
	subss xmm0, xmm2
	movss [ebp-0x4c], xmm0
	mov eax, rg
	mov eax, [eax+0x22ec]
	mov [edi+0x150], eax
_Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_690:
	call _ZN10MacDisplay10Is1900CardEv
	cmp al, 0x1
	sbb eax, eax
	and eax, 0x200
	add eax, 0x200
	mov edx, [ebp-0x284]
	sub eax, [edx+0x150]
	mov [edx+0x148], eax
	mov [edi+0x148], esi
	jmp _Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_600
_Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_530:
	add dword [ebp-0x2a0], 0x4
	jmp _Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_480
_Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_190:
	mov edx, esi
	add edx, 0x1
	js _Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_610
	cvtsi2ss xmm2, edx
_Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_740:
	movaps xmm0, xmm1
	subss xmm0, [ebp-0x1c]
	mulss xmm0, [ebp-0x26c]
	mulss xmm0, [ebp-0x28c]
	addss xmm2, xmm0
	movss [ebp-0x4c], xmm2
	cvtsi2ss xmm0, esi
	subss xmm1, [ebp-0x6c]
	mulss xmm1, [ebp-0x26c]
	addss xmm0, xmm1
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x2c8]
	cvttss2si eax, [ebp-0x2c8]
	cmp esi, eax
	cmovl ebx, eax
	mov [edi+0x148], ebx
	jmp _Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_620
_Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_100:
	mov eax, edx
	shr eax, 1
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm1, eax
	addss xmm1, xmm1
	jmp _Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_630
_Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_20:
	movaps xmm0, xmm5
	divss xmm0, xmm1
	movaps xmm1, xmm0
	jmp _Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_640
_Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_580:
	movss xmm1, dword [_float_1023_00000000]
	jmp _Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_650
_Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_550:
	movss xmm1, dword [_float_1023_00000000]
	jmp _Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_660
_Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_590:
	mov edx, [ebp-0x294]
	sub edx, 0x1
	js _Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_670
	cvtsi2ss xmm0, edx
_Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_750:
	subss xmm2, [ebp-0x64]
	mulss xmm2, [ebp-0x26c]
	mulss xmm2, [ebp-0x28c]
	subss xmm0, xmm2
	movss [ebp-0x4c], xmm0
	mov eax, [ebp-0x294]
	test eax, eax
	js _Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_680
	cvtsi2ss xmm1, dword [ebp-0x294]
_Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_780:
	movss xmm0, dword [ebp-0x5c]
	subss xmm0, [ebp-0x64]
	mulss xmm0, [ebp-0x26c]
	subss xmm1, xmm0
	movss [esp], xmm1
	call ceilf
	fstp dword [ebp-0x2c4]
	cvttss2si eax, [ebp-0x2c4]
	sub eax, esi
	mov edx, rg
	mov edx, [edx+0x22ec]
	cmp eax, edx
	cmovge eax, edx
	mov [edi+0x150], eax
	jmp _Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_690
_Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_560:
	mov edx, [ebp-0x294]
	sub edx, 0x1
	js _Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_700
	cvtsi2ss xmm1, edx
_Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_770:
	movaps xmm0, xmm2
	subss xmm0, [ebp-0x20]
	mulss xmm0, [ebp-0x26c]
	mulss xmm0, [ebp-0x28c]
	subss xmm1, xmm0
	movss [ebp-0x50], xmm1
	mov eax, [ebp-0x294]
	test eax, eax
	js _Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_710
	cvtsi2ss xmm0, dword [ebp-0x294]
_Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_760:
	subss xmm2, [ebp-0x70]
	mulss xmm2, [ebp-0x26c]
	subss xmm0, xmm2
	movss [esp], xmm0
	call ceilf
	fstp dword [ebp-0x2bc]
	cvttss2si eax, [ebp-0x2bc]
	sub eax, esi
	mov edx, rg
	mov edx, [edx+0x22ec]
	cmp eax, edx
	cmovge eax, edx
	mov [edi+0x14c], eax
	jmp _Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_720
_Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_390:
	mov eax, edx
	shr eax, 1
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm0, eax
	addss xmm0, xmm0
	jmp _Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_730
_Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_610:
	mov eax, edx
	shr eax, 1
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm2, eax
	addss xmm2, xmm2
	jmp _Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_740
_Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_670:
	mov eax, edx
	shr eax, 1
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm0, eax
	addss xmm0, xmm0
	jmp _Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_750
_Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_710:
	mov eax, [ebp-0x294]
	shr eax, 1
	mov edx, [ebp-0x294]
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm0, eax
	addss xmm0, xmm0
	jmp _Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_760
_Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_700:
	mov eax, edx
	shr eax, 1
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm1, eax
	addss xmm1, xmm1
	jmp _Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_770
_Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_680:
	mov eax, [ebp-0x294]
	shr eax, 1
	and dword [ebp-0x294], 0x1
	or eax, [ebp-0x294]
	cvtsi2ss xmm1, eax
	addss xmm1, xmm1
	jmp _Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_780
_Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_450:
	xor eax, eax
	mov dword [ebp-0x2a0], 0x0
	mov edi, rg
	xor ebx, ebx
	movss xmm2, dword [_data16_80000000]
	lea ecx, [ebp-0x224]
_Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_820:
	mov edx, [edi+0x22e0]
	test edx, edx
	jz _Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_790
	mov edx, [ebp+eax*4-0xc4]
	test edx, edx
	jz _Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_800
_Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_790:
	lea edx, [eax+0x1]
_Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_840:
	movss xmm0, dword [ebp+edx*8-0x110]
	subss xmm0, [ebp+eax*8-0x110]
	movss [ecx], xmm0
	movss xmm0, dword [ebp+eax*8-0x114]
	subss xmm0, [ebp+edx*8-0x114]
	movss [ecx+0x4], xmm0
	mov [ecx+0x8], ebx
	lea eax, [ebp+eax*8-0x114]
	movss xmm0, dword [eax]
	mulss xmm0, [ecx]
	movss xmm1, dword [eax+0x4]
	mulss xmm1, [ecx+0x4]
	addss xmm0, xmm1
	xorps xmm0, xmm2
	movss [ecx+0xc], xmm0
	add dword [ebp-0x2a0], 0x1
	add ecx, 0x10
_Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_830:
	mov eax, [ebp-0x230]
	cmp edx, [eax+0x8]
	jge _Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_810
	mov eax, edx
	jmp _Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_820
_Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_800:
	lea edx, [eax+0x1]
	cmp dword [ebp+edx*4-0xc4], 0x0
	jz _Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_830
	jmp _Z20R_SetupSunShadowMapsPK12GfxViewParmsP12GfxSunShadow_840


;R_MergeAndEmitSunShadowMapsSurfs(GfxViewInfo*)
_Z32R_MergeAndEmitSunShadowMapsSurfsP11GfxViewInfo:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov dword [esp+0x4], _cstring_emit_sun_shadow_
	mov dword [esp], 0xffffffff
	call _Z18PIXBeginNamedEventiPKcz
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0xf
	mov edi, [ebp+0x8]
	add edi, 0x5730
_Z32R_MergeAndEmitSunShadowMapsSurfsP11GfxViewInfo_10:
	lea ebx, [edi+0x154]
	mov [esp], ebx
	call _Z22R_InitDrawSurfListInfoP19GfxDrawSurfListInfo
	mov eax, gfxMetrics
	mov eax, [eax+0x20]
	mov [edi+0x15c], eax
	mov eax, [ebp+0x8]
	mov [edi+0x160], eax
	mov edx, frontEndDataOut
	mov eax, [edx]
	lea edx, [eax+0x11e6e0]
	mov eax, [eax+0x11e6e0]
	mov [edi+0x164], eax
	mov eax, [edx+0x4]
	mov [edi+0x168], eax
	mov eax, [edx+0x8]
	mov [edi+0x16c], eax
	mov dword [edi+0x170], 0x0
	mov edx, frontEndDataOut
	mov eax, [edx]
	mov esi, [eax+0x118254]
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x1
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call _Z27R_MergeAndEmitDrawSurfListsjjP19GfxDrawSurfListInfo
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x2
	mov eax, [ebp-0x1c]
	add eax, 0x1
	mov [esp], eax
	call _Z27R_MergeAndEmitDrawSurfListsjjP19GfxDrawSurfListInfo
	mov edx, frontEndDataOut
	mov eax, [edx]
	lea eax, [eax+esi*8+0x70000]
	mov [edi+0x154], eax
	mov eax, [edx]
	mov eax, [eax+0x118254]
	sub eax, esi
	mov [edi+0x158], eax
	mov eax, [ebp-0x20]
	mov [edi+0x140], eax
	add eax, 0x1
	mov [ebp-0x20], eax
	add edi, 0x200
	add dword [ebp-0x1c], 0x3
	cmp eax, 0x2
	jnz _Z32R_MergeAndEmitSunShadowMapsSurfsP11GfxViewInfo_10
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Initialized global or static variables of r_sunshadow:
SECTION .data


;Initialized constant data of r_sunshadow:
SECTION .rdata
g_clipSpacePoints: dd 0xbf800000, 0xbf800000, 0x0, 0x3f800000, 0xbf800000, 0x0, 0x3f800000, 0x3f800000, 0x0, 0xbf800000, 0x3f800000, 0x0, 0x0, 0x0, 0x0, 0x0
g_shadowFrustumBound: dd 0xbf800000, 0xbf800000, 0xbf800000, 0x3f800000, 0x3f800000, 0x3f800000, 0x3f800000, 0xbf800000, 0xbf800000, 0xbf800000, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x7fffffff, 0x0, 0x0, 0x0


;Zero initialized global or static variables of r_sunshadow:
SECTION .bss
shadowGlob: resb 0x80


;All cstrings:
SECTION .rdata
_cstring_shadow_maps:		db "shadow maps",0
_cstring_emit_sun_shadow_:		db "emit sun shadow map surfs",0



;All constant floats and doubles:
SECTION .rdata
_float_0_00195312:		dd 0x3b000000	; 0.00195312
_float_0_00097656:		dd 0x3a800000	; 0.000976562
_float_2_00000000:		dd 0x40000000	; 2
_data16_80000000:		dd 0x80000000, 0x0, 0x0, 0x0	; OWORD
_float_0_10000000:		dd 0x3dcccccd	; 0.1
_float_1_00000000:		dd 0x3f800000	; 1
_float_0_75000000:		dd 0x3f400000	; 0.75
_float_511_00000000:		dd 0x43ff8000	; 511
_float_512_00000000:		dd 0x44000000	; 512
_float_0_00100000:		dd 0x3a83126f	; 0.001
_float_0_50000000:		dd 0x3f000000	; 0.5
_float_16_00000000:		dd 0x41800000	; 16
_float_32_00000000:		dd 0x42000000	; 32
_float__2_00000000:		dd 0xc0000000	; -2
_float__1_00000000:		dd 0xbf800000	; -1
_float_1_00097656:		dd 0x3f802000	; 1.00098
_float_0_50048828:		dd 0x3f002000	; 0.500488
_float_0_00048828:		dd 0x3a000000	; 0.000488281
_float_1024_00000000:		dd 0x44800000	; 1024
_float_1023_00000000:		dd 0x447fc000	; 1023
_float_1_00048828:		dd 0x3f801000	; 1.00049
_float_0_50024414:		dd 0x3f001000	; 0.500244
_float_0_00024414:		dd 0x39800000	; 0.000244141

