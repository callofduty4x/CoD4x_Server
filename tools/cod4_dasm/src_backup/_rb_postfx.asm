;Imports of rb_postfx:
	extern r_glow_allowed
	extern r_glow_allowed_script_forced
	extern r_fullbright
	extern r_glow
	extern _ZN10MacDisplay17GetFBOSupportInfoERhS0_
	extern r_showFbColorDebug
	extern r_blur
	extern gfxCmdBufSourceState
	extern _ZN10MacDisplay11GetDeviceIDEv
	extern _ZN10MacDisplay11GetVendorIDEv
	extern rgp
	extern _Z19RB_FullScreenFilterPK8Material
	extern gfxRenderTargets
	extern gfxCmdBufContext
	extern _Z9R_Resolve16GfxCmdBufContextP8GfxImage
	extern r_znear_depthhack
	extern r_dof_bias
	extern pow
	extern vidConfig
	extern _Z21R_SetRenderTargetSizeP20GfxCmdBufSourceState17GfxRenderTargetId
	extern _Z17R_SetRenderTarget16GfxCmdBufContext17GfxRenderTargetId
	extern _Z22RB_GaussianFilterImagef17GfxRenderTargetIdS_
	extern _Z26RB_FullScreenColoredFilterPK8Materialm
	extern _Z18RB_GlowFilterImagef
	extern backEnd
	extern _ZN10MacDisplay16GetIsAntialiasedEv
	extern floorf
	extern _Z20RB_SplitScreenFilterPK8MaterialPK11GfxViewInfo

;Exports of rb_postfx:
	global _Z11R_UsingGlowPK11GfxViewInfo
	global _Z19R_UsingDepthOfFieldPK11GfxViewInfo
	global _Z21RB_ProcessPostEffectsPK11GfxViewInfo
	global _Z25RB_UsingColorManipulationPK11GfxViewInfo
	global _Z29RB_GetDepthOfFieldInputImagesf
	global _Z36RB_ApplyColorManipulationSplitscreenPK11GfxViewInfo


SECTION .text


;R_UsingGlow(GfxViewInfo const*)
_Z11R_UsingGlowPK11GfxViewInfo:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	mov eax, r_glow_allowed
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z11R_UsingGlowPK11GfxViewInfo_10
	mov eax, r_glow_allowed_script_forced
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z11R_UsingGlowPK11GfxViewInfo_20
_Z11R_UsingGlowPK11GfxViewInfo_10:
	cmp byte [edx+0x5674], 0x0
	jz _Z11R_UsingGlowPK11GfxViewInfo_20
	mov eax, r_fullbright
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z11R_UsingGlowPK11GfxViewInfo_20
	mov eax, r_glow
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z11R_UsingGlowPK11GfxViewInfo_20
	pxor xmm0, xmm0
	ucomiss xmm0, [edx+0x5680]
	jp _Z11R_UsingGlowPK11GfxViewInfo_30
	jz _Z11R_UsingGlowPK11GfxViewInfo_20
_Z11R_UsingGlowPK11GfxViewInfo_30:
	ucomiss xmm0, [edx+0x5684]
	jp _Z11R_UsingGlowPK11GfxViewInfo_40
	jz _Z11R_UsingGlowPK11GfxViewInfo_20
_Z11R_UsingGlowPK11GfxViewInfo_40:
	mov eax, 0x1
	pop ebp
	ret
_Z11R_UsingGlowPK11GfxViewInfo_20:
	xor eax, eax
	pop ebp
	ret


;R_UsingDepthOfField(GfxViewInfo const*)
_Z19R_UsingDepthOfFieldPK11GfxViewInfo:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov ebx, [ebp+0x8]
	lea eax, [ebp-0xa]
	mov [esp+0x4], eax
	lea eax, [ebp-0x9]
	mov [esp], eax
	call _ZN10MacDisplay17GetFBOSupportInfoERhS0_
	cmp byte [ebp-0xa], 0x0
	jz _Z19R_UsingDepthOfFieldPK11GfxViewInfo_10
	movss xmm2, dword [_float_1_00000000]
	movss xmm1, dword [ebx+0x5628]
	addss xmm1, xmm2
	movss xmm0, dword [ebx+0x562c]
	ucomiss xmm0, xmm1
	ja _Z19R_UsingDepthOfFieldPK11GfxViewInfo_20
	movss xmm1, dword [ebx+0x5630]
	addss xmm1, xmm2
	movss xmm0, dword [ebx+0x5634]
	ucomiss xmm0, xmm1
	ja _Z19R_UsingDepthOfFieldPK11GfxViewInfo_20
	movaps xmm0, xmm2
	addss xmm0, [ebx+0x5638]
	movss xmm1, dword [ebx+0x563c]
	ucomiss xmm1, xmm0
	jbe _Z19R_UsingDepthOfFieldPK11GfxViewInfo_10
	movss xmm0, dword [ebx+0x5644]
	ucomiss xmm0, [_float_0_00000000]
	jbe _Z19R_UsingDepthOfFieldPK11GfxViewInfo_10
_Z19R_UsingDepthOfFieldPK11GfxViewInfo_20:
	mov eax, 0x1
	add esp, 0x24
	pop ebx
	pop ebp
	ret
_Z19R_UsingDepthOfFieldPK11GfxViewInfo_10:
	xor eax, eax
	add esp, 0x24
	pop ebx
	pop ebp
	ret


;RB_ProcessPostEffects(GfxViewInfo const*)
_Z21RB_ProcessPostEffectsPK11GfxViewInfo:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x9c
	mov edi, [ebp+0x8]
	mov eax, r_glow_allowed
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z21RB_ProcessPostEffectsPK11GfxViewInfo_10
	mov eax, r_glow_allowed_script_forced
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z21RB_ProcessPostEffectsPK11GfxViewInfo_10
_Z21RB_ProcessPostEffectsPK11GfxViewInfo_310:
	xor eax, eax
_Z21RB_ProcessPostEffectsPK11GfxViewInfo_340:
	test eax, eax
	jnz _Z21RB_ProcessPostEffectsPK11GfxViewInfo_20
	mov eax, r_showFbColorDebug
	mov eax, [eax]
	cmp dword [eax+0xc], 0x2
	jz _Z21RB_ProcessPostEffectsPK11GfxViewInfo_20
	movss xmm1, dword [edi+0x55e4]
	mov eax, r_blur
	mov eax, [eax]
	movss xmm0, dword [eax+0xc]
	pxor xmm2, xmm2
	ucomiss xmm0, xmm2
	jbe _Z21RB_ProcessPostEffectsPK11GfxViewInfo_30
_Z21RB_ProcessPostEffectsPK11GfxViewInfo_20:
	mov esi, gfxCmdBufSourceState
	mov ebx, [esi+0xc4c]
	test ebx, ebx
	jz _Z21RB_ProcessPostEffectsPK11GfxViewInfo_40
_Z21RB_ProcessPostEffectsPK11GfxViewInfo_700:
	call _ZN10MacDisplay11GetDeviceIDEv
	mov ebx, eax
	call _ZN10MacDisplay11GetVendorIDEv
	cmp eax, 0x10de
	jz _Z21RB_ProcessPostEffectsPK11GfxViewInfo_50
_Z21RB_ProcessPostEffectsPK11GfxViewInfo_480:
	mov eax, rgp
	mov eax, [eax+0x20cc]
	mov [esp], eax
	call _Z19RB_FullScreenFilterPK8Material
	mov ebx, gfxRenderTargets
	mov ecx, [ebx+0x50]
	mov eax, gfxCmdBufContext
	mov edx, [eax+0x4]
	mov eax, [eax]
	mov [esp+0x8], ecx
	mov [esp], eax
	mov [esp+0x4], edx
	call _Z9R_Resolve16GfxCmdBufContextP8GfxImage
	mov edx, [ebx+0x50]
	mov eax, gfxCmdBufSourceState
	mov [eax+0xc4c], edx
_Z21RB_ProcessPostEffectsPK11GfxViewInfo_490:
	lea eax, [ebp-0x1a]
	mov [esp+0x4], eax
	lea eax, [ebp-0x19]
	mov [esp], eax
	call _ZN10MacDisplay17GetFBOSupportInfoERhS0_
	cmp byte [ebp-0x1a], 0x0
	jz _Z21RB_ProcessPostEffectsPK11GfxViewInfo_60
	movss xmm2, dword [_float_1_00000000]
	movss xmm1, dword [edi+0x5628]
	addss xmm1, xmm2
	movss xmm0, dword [edi+0x562c]
	ucomiss xmm0, xmm1
	jbe _Z21RB_ProcessPostEffectsPK11GfxViewInfo_70
_Z21RB_ProcessPostEffectsPK11GfxViewInfo_360:
	movss xmm4, dword [edi+0x5634]
_Z21RB_ProcessPostEffectsPK11GfxViewInfo_640:
	movss xmm2, dword [edi+0x138]
	movss xmm6, dword [edi+0x563c]
	movss xmm5, dword [edi+0x5638]
	movss xmm3, dword [edi+0x5630]
	movaps xmm0, xmm3
	subss xmm0, xmm2
	pxor xmm1, xmm1
	cmpss xmm1, xmm0, 0x6
	movaps xmm0, xmm1
	movaps xmm1, xmm2
	andps xmm1, xmm0
	andnps xmm0, xmm3
	orps xmm0, xmm1
	ucomiss xmm0, xmm4
	jb _Z21RB_ProcessPostEffectsPK11GfxViewInfo_80
	movaps xmm4, xmm2
	mulss xmm4, [_float_0_50000000]
	pxor xmm3, xmm3
_Z21RB_ProcessPostEffectsPK11GfxViewInfo_80:
	movaps xmm0, xmm3
	subss xmm0, xmm4
	movss xmm7, dword [_float_1_00000000]
	divss xmm7, xmm0
	movaps xmm0, xmm4
	subss xmm0, xmm3
	movaps xmm3, xmm4
	divss xmm3, xmm0
	movaps xmm0, xmm2
	subss xmm0, xmm5
	pxor xmm1, xmm1
	cmpss xmm1, xmm0, 0x2
	movaps xmm0, xmm1
	andps xmm2, xmm1
	andnps xmm0, xmm5
	orps xmm0, xmm2
	ucomiss xmm0, xmm6
	jb _Z21RB_ProcessPostEffectsPK11GfxViewInfo_90
	pxor xmm0, xmm0
	movaps xmm1, xmm0
_Z21RB_ProcessPostEffectsPK11GfxViewInfo_550:
	mov ebx, gfxCmdBufSourceState
	ucomiss xmm7, [ebx+0x950]
	jnz _Z21RB_ProcessPostEffectsPK11GfxViewInfo_100
	jp _Z21RB_ProcessPostEffectsPK11GfxViewInfo_100
	ucomiss xmm1, [ebx+0x954]
	jz _Z21RB_ProcessPostEffectsPK11GfxViewInfo_110
_Z21RB_ProcessPostEffectsPK11GfxViewInfo_100:
	movss [ebx+0x950], xmm7
	movss [ebx+0x954], xmm1
	movss [ebx+0x958], xmm3
	movss [ebx+0x95c], xmm0
	add word [ebx+0xe4a], 0x1
_Z21RB_ProcessPostEffectsPK11GfxViewInfo_650:
	movss xmm4, dword [edi+0x562c]
	movss xmm3, dword [edi+0x5628]
	mov eax, r_znear_depthhack
	mov eax, [eax]
	movss xmm2, dword [eax+0xc]
	movaps xmm0, xmm3
	subss xmm0, xmm2
	pxor xmm1, xmm1
	cmpss xmm1, xmm0, 0x6
	movaps xmm0, xmm1
	movaps xmm1, xmm2
	andps xmm1, xmm0
	andnps xmm0, xmm3
	orps xmm0, xmm1
	ucomiss xmm0, xmm4
	jb _Z21RB_ProcessPostEffectsPK11GfxViewInfo_120
	movaps xmm4, xmm2
	mulss xmm4, [_float_0_50000000]
	pxor xmm3, xmm3
_Z21RB_ProcessPostEffectsPK11GfxViewInfo_120:
	movaps xmm0, xmm3
	subss xmm0, xmm4
	movss xmm2, dword [_float_1_00000000]
	divss xmm2, xmm0
	movss [ebp-0x2c], xmm2
	movaps xmm0, xmm4
	subss xmm0, xmm3
	divss xmm4, xmm0
	movss [ebp-0x30], xmm4
	mov esi, r_dof_bias
	mov eax, [esi]
	cvtss2sd xmm1, [eax+0xc]
	movss xmm0, dword [edi+0x5644]
	divss xmm0, dword [edi+0x5640]
	movsd [esp+0x8], xmm1
	cvtss2sd xmm0, xmm0
	movsd [esp], xmm0
	call pow
	fstp qword [ebp-0x50]
	cvtsd2ss xmm0, [ebp-0x50]
	movss xmm1, dword [ebp-0x2c]
	ucomiss xmm1, [ebx+0x940]
	jnz _Z21RB_ProcessPostEffectsPK11GfxViewInfo_130
	jp _Z21RB_ProcessPostEffectsPK11GfxViewInfo_130
	pxor xmm2, xmm2
	ucomiss xmm2, [ebx+0x944]
	jnz _Z21RB_ProcessPostEffectsPK11GfxViewInfo_140
	jp _Z21RB_ProcessPostEffectsPK11GfxViewInfo_140
	movss xmm1, dword [ebp-0x30]
	ucomiss xmm1, [ebx+0x948]
	jnz _Z21RB_ProcessPostEffectsPK11GfxViewInfo_140
	jp _Z21RB_ProcessPostEffectsPK11GfxViewInfo_140
	ucomiss xmm0, [ebx+0x94c]
	jz _Z21RB_ProcessPostEffectsPK11GfxViewInfo_150
_Z21RB_ProcessPostEffectsPK11GfxViewInfo_140:
	movss xmm1, dword [ebp-0x2c]
_Z21RB_ProcessPostEffectsPK11GfxViewInfo_130:
	movss [ebx+0x940], xmm1
	mov dword [ebx+0x944], 0x0
	movss xmm2, dword [ebp-0x30]
	movss [ebx+0x948], xmm2
	movss [ebx+0x94c], xmm0
	add word [ebx+0xe48], 0x1
_Z21RB_ProcessPostEffectsPK11GfxViewInfo_710:
	mov ecx, vidConfig
	mov edx, [ecx+0x4]
	test edx, edx
	js _Z21RB_ProcessPostEffectsPK11GfxViewInfo_160
	cvtsi2ss xmm0, edx
_Z21RB_ProcessPostEffectsPK11GfxViewInfo_690:
	movss xmm2, dword [_float_1_00000000]
	divss xmm2, xmm0
	movaps xmm0, xmm2
	pxor xmm1, xmm1
	ucomiss xmm1, [ebx+0x980]
	jp _Z21RB_ProcessPostEffectsPK11GfxViewInfo_170
	jz _Z21RB_ProcessPostEffectsPK11GfxViewInfo_180
_Z21RB_ProcessPostEffectsPK11GfxViewInfo_170:
	lea edx, [ebx+0x984]
_Z21RB_ProcessPostEffectsPK11GfxViewInfo_560:
	lea eax, [ebx+0x988]
	mov [ebp-0x8c], eax
_Z21RB_ProcessPostEffectsPK11GfxViewInfo_570:
	lea eax, [ebx+0x98c]
	mov [ebp-0x34], eax
_Z21RB_ProcessPostEffectsPK11GfxViewInfo_580:
	mov dword [ebx+0x980], 0x0
	movss [edx], xmm0
	mov eax, [ebp-0x8c]
	mov dword [eax], 0x0
	mov eax, [ebp-0x34]
	mov dword [eax], 0x0
	add word [ebx+0xe50], 0x1
_Z21RB_ProcessPostEffectsPK11GfxViewInfo_590:
	mov edx, [ecx+0x4]
	test edx, edx
	js _Z21RB_ProcessPostEffectsPK11GfxViewInfo_190
	cvtsi2ss xmm1, edx
_Z21RB_ProcessPostEffectsPK11GfxViewInfo_680:
	mov eax, [esi]
	cvtss2sd xmm0, [eax+0xc]
	movsd [ebp-0x40], xmm0
	movss xmm0, dword [_float_672_00000000]
	divss xmm0, xmm1
	divss xmm0, dword [edi+0x5640]
	movsd xmm2, qword [ebp-0x40]
	movsd [esp+0x8], xmm2
	cvtss2sd xmm0, xmm0
	movsd [esp], xmm0
	movss [ebp-0x78], xmm1
	call pow
	fstp qword [ebp-0x58]
	cvtsd2ss xmm0, [ebp-0x58]
	movss [ebp-0x44], xmm0
	movss xmm0, dword [_float_1728_00000000]
	movss xmm1, dword [ebp-0x78]
	divss xmm0, xmm1
	divss xmm0, dword [edi+0x5640]
	movsd xmm1, qword [ebp-0x40]
	movsd [esp+0x8], xmm1
	cvtss2sd xmm0, xmm0
	movsd [esp], xmm0
	call pow
	fstp qword [ebp-0x60]
	cvtsd2ss xmm1, [ebp-0x60]
	movss xmm2, dword [_float_1_00000000]
	subss xmm2, xmm1
	movss xmm3, dword [_float_1_00000000]
	divss xmm3, xmm2
	movss xmm0, dword [_float__1_00000000]
	movaps xmm6, xmm0
	divss xmm6, xmm2
	movaps xmm5, xmm1
	subss xmm5, [ebp-0x44]
	movaps xmm4, xmm0
	divss xmm4, xmm5
	divss xmm0, dword [ebp-0x44]
	ucomiss xmm0, [ebx+0x960]
	jp _Z21RB_ProcessPostEffectsPK11GfxViewInfo_200
	jz _Z21RB_ProcessPostEffectsPK11GfxViewInfo_210
_Z21RB_ProcessPostEffectsPK11GfxViewInfo_200:
	lea edx, [ebx+0x964]
_Z21RB_ProcessPostEffectsPK11GfxViewInfo_600:
	lea eax, [ebx+0x968]
_Z21RB_ProcessPostEffectsPK11GfxViewInfo_610:
	lea ecx, [ebx+0x96c]
_Z21RB_ProcessPostEffectsPK11GfxViewInfo_620:
	movss [ebx+0x960], xmm0
	movss [edx], xmm4
	movss [eax], xmm6
	movss [ecx], xmm3
	add word [ebx+0xe4c], 0x1
_Z21RB_ProcessPostEffectsPK11GfxViewInfo_630:
	movaps xmm0, xmm1
	xorps xmm0, [_data16_80000000]
	divss xmm0, xmm2
	divss xmm1, xmm5
	movss xmm2, dword [_float_1_00000000]
	ucomiss xmm2, [ebx+0x970]
	jp _Z21RB_ProcessPostEffectsPK11GfxViewInfo_220
	jz _Z21RB_ProcessPostEffectsPK11GfxViewInfo_230
_Z21RB_ProcessPostEffectsPK11GfxViewInfo_220:
	lea edx, [ebx+0x974]
_Z21RB_ProcessPostEffectsPK11GfxViewInfo_510:
	lea eax, [ebx+0x978]
_Z21RB_ProcessPostEffectsPK11GfxViewInfo_520:
	lea ecx, [ebx+0x97c]
_Z21RB_ProcessPostEffectsPK11GfxViewInfo_530:
	mov dword [ebx+0x970], 0x3f800000
	movss [edx], xmm1
	movss [eax], xmm3
	movss [ecx], xmm0
	add word [ebx+0xe4e], 0x1
_Z21RB_ProcessPostEffectsPK11GfxViewInfo_540:
	mov eax, [edi+0x5640]
	mov [esp], eax
	call _Z29RB_GetDepthOfFieldInputImagesf
	mov dword [esp+0x4], 0x1
	mov eax, gfxCmdBufSourceState
	mov [esp], eax
	call _Z21R_SetRenderTargetSizeP20GfxCmdBufSourceState17GfxRenderTargetId
	mov eax, gfxCmdBufContext
	mov edx, [eax+0x4]
	mov eax, [eax]
	mov dword [esp+0x8], 0x1
	mov [esp], eax
	mov [esp+0x4], edx
	call _Z17R_SetRenderTarget16GfxCmdBufContext17GfxRenderTargetId
	cmp byte [edi+0x5648], 0x0
	jz _Z21RB_ProcessPostEffectsPK11GfxViewInfo_240
	movss xmm0, dword [_float_1_00000000]
	ucomiss xmm0, [edi+0x5650]
	jnz _Z21RB_ProcessPostEffectsPK11GfxViewInfo_250
	jp _Z21RB_ProcessPostEffectsPK11GfxViewInfo_250
	pxor xmm1, xmm1
	ucomiss xmm1, [edi+0x564c]
	jnz _Z21RB_ProcessPostEffectsPK11GfxViewInfo_250
	jp _Z21RB_ProcessPostEffectsPK11GfxViewInfo_250
	ucomiss xmm1, [edi+0x5654]
	jnz _Z21RB_ProcessPostEffectsPK11GfxViewInfo_250
	jp _Z21RB_ProcessPostEffectsPK11GfxViewInfo_250
	cmp byte [edi+0x5658], 0x0
	jnz _Z21RB_ProcessPostEffectsPK11GfxViewInfo_250
	ucomiss xmm0, [edi+0x565c]
	jnz _Z21RB_ProcessPostEffectsPK11GfxViewInfo_250
	jp _Z21RB_ProcessPostEffectsPK11GfxViewInfo_250
	ucomiss xmm0, [edi+0x5660]
	jnz _Z21RB_ProcessPostEffectsPK11GfxViewInfo_250
	jp _Z21RB_ProcessPostEffectsPK11GfxViewInfo_250
	ucomiss xmm0, [edi+0x5664]
	jnz _Z21RB_ProcessPostEffectsPK11GfxViewInfo_250
	jp _Z21RB_ProcessPostEffectsPK11GfxViewInfo_250
	ucomiss xmm0, [edi+0x5668]
	jnz _Z21RB_ProcessPostEffectsPK11GfxViewInfo_250
	jp _Z21RB_ProcessPostEffectsPK11GfxViewInfo_250
	ucomiss xmm0, [edi+0x566c]
	jnz _Z21RB_ProcessPostEffectsPK11GfxViewInfo_250
	jp _Z21RB_ProcessPostEffectsPK11GfxViewInfo_250
	ucomiss xmm0, [edi+0x5670]
	jnz _Z21RB_ProcessPostEffectsPK11GfxViewInfo_250
	jp _Z21RB_ProcessPostEffectsPK11GfxViewInfo_250
_Z21RB_ProcessPostEffectsPK11GfxViewInfo_240:
	mov eax, rgp
	mov eax, [eax+0x20c0]
	mov [esp], eax
	call _Z19RB_FullScreenFilterPK8Material
	mov eax, r_glow_allowed
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z21RB_ProcessPostEffectsPK11GfxViewInfo_260
_Z21RB_ProcessPostEffectsPK11GfxViewInfo_370:
	mov eax, r_glow_allowed_script_forced
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z21RB_ProcessPostEffectsPK11GfxViewInfo_260
_Z21RB_ProcessPostEffectsPK11GfxViewInfo_380:
	xor eax, eax
_Z21RB_ProcessPostEffectsPK11GfxViewInfo_410:
	test eax, eax
	jnz _Z21RB_ProcessPostEffectsPK11GfxViewInfo_270
	movss xmm1, dword [edi+0x55e4]
	mov eax, r_blur
	mov eax, [eax]
	movss xmm0, dword [eax+0xc]
	pxor xmm2, xmm2
	ucomiss xmm0, xmm2
	jbe _Z21RB_ProcessPostEffectsPK11GfxViewInfo_280
_Z21RB_ProcessPostEffectsPK11GfxViewInfo_450:
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	sqrtss xmm1, xmm0
	mov ebx, gfxCmdBufSourceState
	cvtsi2ss xmm0, dword [ebx+0xf5c]
	movss xmm2, dword [_float_1440_00000000]
	divss xmm2, xmm0
	mov esi, 0xffffffff
	ucomiss xmm2, xmm1
	ja _Z21RB_ProcessPostEffectsPK11GfxViewInfo_290
_Z21RB_ProcessPostEffectsPK11GfxViewInfo_500:
	mov dword [esp+0x8], 0xb
	mov dword [esp+0x4], 0x4
	movss [esp], xmm1
	call _Z22RB_GaussianFilterImagef17GfxRenderTargetIdS_
	mov dword [esp+0x4], 0x1
	mov [esp], ebx
	call _Z21R_SetRenderTargetSizeP20GfxCmdBufSourceState17GfxRenderTargetId
	mov eax, gfxCmdBufContext
	mov edx, [eax+0x4]
	mov eax, [eax]
	mov dword [esp+0x8], 0x1
	mov [esp], eax
	mov [esp+0x4], edx
	call _Z17R_SetRenderTarget16GfxCmdBufContext17GfxRenderTargetId
	mov eax, gfxRenderTargets
	mov eax, [eax+0xdc]
	mov [ebx+0xc44], eax
	cmp byte [edi+0x5648], 0x0
	jz _Z21RB_ProcessPostEffectsPK11GfxViewInfo_300
	mov eax, rgp
	mov eax, [eax+0x20ac]
_Z21RB_ProcessPostEffectsPK11GfxViewInfo_420:
	mov [esp+0x4], esi
	mov [esp], eax
	call _Z26RB_FullScreenColoredFilterPK8Materialm
_Z21RB_ProcessPostEffectsPK11GfxViewInfo_460:
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z21RB_ProcessPostEffectsPK11GfxViewInfo_10:
	cmp byte [edi+0x5674], 0x0
	jz _Z21RB_ProcessPostEffectsPK11GfxViewInfo_310
	mov eax, r_fullbright
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z21RB_ProcessPostEffectsPK11GfxViewInfo_310
	mov eax, r_glow
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z21RB_ProcessPostEffectsPK11GfxViewInfo_310
	pxor xmm0, xmm0
	ucomiss xmm0, [edi+0x5680]
	jp _Z21RB_ProcessPostEffectsPK11GfxViewInfo_320
	jz _Z21RB_ProcessPostEffectsPK11GfxViewInfo_310
_Z21RB_ProcessPostEffectsPK11GfxViewInfo_320:
	ucomiss xmm0, [edi+0x5684]
	jp _Z21RB_ProcessPostEffectsPK11GfxViewInfo_330
	jz _Z21RB_ProcessPostEffectsPK11GfxViewInfo_310
_Z21RB_ProcessPostEffectsPK11GfxViewInfo_330:
	mov eax, 0x1
	jmp _Z21RB_ProcessPostEffectsPK11GfxViewInfo_340
_Z21RB_ProcessPostEffectsPK11GfxViewInfo_70:
	movss xmm1, dword [edi+0x5630]
	addss xmm1, xmm2
	movss xmm0, dword [edi+0x5634]
	ucomiss xmm0, xmm1
	ja _Z21RB_ProcessPostEffectsPK11GfxViewInfo_350
	movaps xmm0, xmm2
	addss xmm0, [edi+0x5638]
	movss xmm1, dword [edi+0x563c]
	ucomiss xmm1, xmm0
	jbe _Z21RB_ProcessPostEffectsPK11GfxViewInfo_60
	movss xmm0, dword [edi+0x5644]
	ucomiss xmm0, [_float_0_00000000]
	ja _Z21RB_ProcessPostEffectsPK11GfxViewInfo_360
_Z21RB_ProcessPostEffectsPK11GfxViewInfo_60:
	mov eax, rgp
	mov eax, [eax+0x20c8]
	mov [esp], eax
	call _Z19RB_FullScreenFilterPK8Material
_Z21RB_ProcessPostEffectsPK11GfxViewInfo_430:
	mov eax, r_glow_allowed
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z21RB_ProcessPostEffectsPK11GfxViewInfo_370
_Z21RB_ProcessPostEffectsPK11GfxViewInfo_260:
	cmp byte [edi+0x5674], 0x0
	jz _Z21RB_ProcessPostEffectsPK11GfxViewInfo_380
	mov eax, r_fullbright
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z21RB_ProcessPostEffectsPK11GfxViewInfo_380
	mov eax, r_glow
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z21RB_ProcessPostEffectsPK11GfxViewInfo_380
	pxor xmm0, xmm0
	ucomiss xmm0, [edi+0x5680]
	jp _Z21RB_ProcessPostEffectsPK11GfxViewInfo_390
	jz _Z21RB_ProcessPostEffectsPK11GfxViewInfo_380
_Z21RB_ProcessPostEffectsPK11GfxViewInfo_390:
	ucomiss xmm0, [edi+0x5684]
	jp _Z21RB_ProcessPostEffectsPK11GfxViewInfo_400
	jz _Z21RB_ProcessPostEffectsPK11GfxViewInfo_380
_Z21RB_ProcessPostEffectsPK11GfxViewInfo_400:
	mov eax, 0x1
	jmp _Z21RB_ProcessPostEffectsPK11GfxViewInfo_410
_Z21RB_ProcessPostEffectsPK11GfxViewInfo_300:
	mov eax, rgp
	mov eax, [eax+0x20a8]
	jmp _Z21RB_ProcessPostEffectsPK11GfxViewInfo_420
_Z21RB_ProcessPostEffectsPK11GfxViewInfo_250:
	mov eax, rgp
	mov eax, [eax+0x20c4]
	mov [esp], eax
	call _Z19RB_FullScreenFilterPK8Material
	jmp _Z21RB_ProcessPostEffectsPK11GfxViewInfo_430
_Z21RB_ProcessPostEffectsPK11GfxViewInfo_270:
	mov eax, [edi+0x5684]
	mov [esp], eax
	call _Z18RB_GlowFilterImagef
	mov dword [esp+0x4], 0x1
	mov esi, gfxCmdBufSourceState
	mov [esp], esi
	call _Z21R_SetRenderTargetSizeP20GfxCmdBufSourceState17GfxRenderTargetId
	mov eax, gfxCmdBufContext
	mov edx, [eax+0x4]
	mov eax, [eax]
	mov dword [esp+0x8], 0x1
	mov [esp], eax
	mov [esp+0x4], edx
	call _Z17R_SetRenderTarget16GfxCmdBufContext17GfxRenderTargetId
	mov ebx, backEnd
	mov ecx, [ebx]
	test ecx, ecx
	jle _Z21RB_ProcessPostEffectsPK11GfxViewInfo_440
	mov eax, [ebx+0x4]
	mov [esi+0xc44], eax
	mov eax, rgp
	mov eax, [eax+0x20fc]
	mov [esp], eax
	call _Z19RB_FullScreenFilterPK8Material
_Z21RB_ProcessPostEffectsPK11GfxViewInfo_440:
	mov dword [ebx], 0x0
	movss xmm1, dword [edi+0x55e4]
	mov eax, r_blur
	mov eax, [eax]
	movss xmm0, dword [eax+0xc]
	pxor xmm2, xmm2
	ucomiss xmm0, xmm2
	ja _Z21RB_ProcessPostEffectsPK11GfxViewInfo_450
_Z21RB_ProcessPostEffectsPK11GfxViewInfo_280:
	ucomiss xmm1, xmm2
	ja _Z21RB_ProcessPostEffectsPK11GfxViewInfo_450
	jmp _Z21RB_ProcessPostEffectsPK11GfxViewInfo_460
_Z21RB_ProcessPostEffectsPK11GfxViewInfo_50:
	cmp ebx, 0x393
	jz _Z21RB_ProcessPostEffectsPK11GfxViewInfo_470
	cmp ebx, 0x395
	jz _Z21RB_ProcessPostEffectsPK11GfxViewInfo_470
	cmp ebx, 0x391
	jnz _Z21RB_ProcessPostEffectsPK11GfxViewInfo_480
_Z21RB_ProcessPostEffectsPK11GfxViewInfo_470:
	call _ZN10MacDisplay16GetIsAntialiasedEv
	test al, al
	jnz _Z21RB_ProcessPostEffectsPK11GfxViewInfo_490
	jmp _Z21RB_ProcessPostEffectsPK11GfxViewInfo_480
_Z21RB_ProcessPostEffectsPK11GfxViewInfo_290:
	divss xmm1, xmm2
	mulss xmm1, [_float_255_00000000]
	addss xmm1, [_float_0_50000000]
	movss [esp], xmm1
	movss [ebp-0x88], xmm2
	call floorf
	fstp dword [ebp-0x64]
	cvttss2si esi, [ebp-0x64]
	shl esi, 0x18
	or esi, 0xffffff
	movss xmm2, dword [ebp-0x88]
	movaps xmm1, xmm2
	jmp _Z21RB_ProcessPostEffectsPK11GfxViewInfo_500
_Z21RB_ProcessPostEffectsPK11GfxViewInfo_230:
	lea edx, [ebx+0x974]
	ucomiss xmm1, [ebx+0x974]
	jp _Z21RB_ProcessPostEffectsPK11GfxViewInfo_510
	jnz _Z21RB_ProcessPostEffectsPK11GfxViewInfo_510
	lea eax, [ebx+0x978]
	ucomiss xmm3, [ebx+0x978]
	jp _Z21RB_ProcessPostEffectsPK11GfxViewInfo_520
	jnz _Z21RB_ProcessPostEffectsPK11GfxViewInfo_520
	lea ecx, [ebx+0x97c]
	ucomiss xmm0, [ebx+0x97c]
	jp _Z21RB_ProcessPostEffectsPK11GfxViewInfo_530
	jz _Z21RB_ProcessPostEffectsPK11GfxViewInfo_540
	jmp _Z21RB_ProcessPostEffectsPK11GfxViewInfo_530
_Z21RB_ProcessPostEffectsPK11GfxViewInfo_90:
	movaps xmm0, xmm6
	subss xmm0, xmm5
	movss xmm1, dword [_float_1_00000000]
	divss xmm1, xmm0
	movaps xmm0, xmm5
	subss xmm0, xmm6
	divss xmm5, xmm0
	movaps xmm0, xmm5
	jmp _Z21RB_ProcessPostEffectsPK11GfxViewInfo_550
_Z21RB_ProcessPostEffectsPK11GfxViewInfo_180:
	lea edx, [ebx+0x984]
	ucomiss xmm2, [ebx+0x984]
	jp _Z21RB_ProcessPostEffectsPK11GfxViewInfo_560
	jnz _Z21RB_ProcessPostEffectsPK11GfxViewInfo_560
	lea eax, [ebx+0x988]
	mov [ebp-0x8c], eax
	pxor xmm1, xmm1
	ucomiss xmm1, [ebx+0x988]
	jp _Z21RB_ProcessPostEffectsPK11GfxViewInfo_570
	jnz _Z21RB_ProcessPostEffectsPK11GfxViewInfo_570
	lea eax, [ebx+0x98c]
	mov [ebp-0x34], eax
	pxor xmm1, xmm1
	ucomiss xmm1, [ebx+0x98c]
	jp _Z21RB_ProcessPostEffectsPK11GfxViewInfo_580
	jz _Z21RB_ProcessPostEffectsPK11GfxViewInfo_590
	jmp _Z21RB_ProcessPostEffectsPK11GfxViewInfo_580
_Z21RB_ProcessPostEffectsPK11GfxViewInfo_210:
	lea edx, [ebx+0x964]
	ucomiss xmm4, [ebx+0x964]
	jp _Z21RB_ProcessPostEffectsPK11GfxViewInfo_600
	jnz _Z21RB_ProcessPostEffectsPK11GfxViewInfo_600
	lea eax, [ebx+0x968]
	ucomiss xmm6, [ebx+0x968]
	jp _Z21RB_ProcessPostEffectsPK11GfxViewInfo_610
	jnz _Z21RB_ProcessPostEffectsPK11GfxViewInfo_610
	lea ecx, [ebx+0x96c]
	ucomiss xmm3, [ebx+0x96c]
	jp _Z21RB_ProcessPostEffectsPK11GfxViewInfo_620
	jz _Z21RB_ProcessPostEffectsPK11GfxViewInfo_630
	jmp _Z21RB_ProcessPostEffectsPK11GfxViewInfo_620
_Z21RB_ProcessPostEffectsPK11GfxViewInfo_350:
	movaps xmm4, xmm0
	jmp _Z21RB_ProcessPostEffectsPK11GfxViewInfo_640
_Z21RB_ProcessPostEffectsPK11GfxViewInfo_110:
	jp _Z21RB_ProcessPostEffectsPK11GfxViewInfo_100
	ucomiss xmm3, [ebx+0x958]
	jnz _Z21RB_ProcessPostEffectsPK11GfxViewInfo_100
	jp _Z21RB_ProcessPostEffectsPK11GfxViewInfo_100
	ucomiss xmm0, [ebx+0x95c]
	jnz _Z21RB_ProcessPostEffectsPK11GfxViewInfo_100
	jnp _Z21RB_ProcessPostEffectsPK11GfxViewInfo_650
	jmp _Z21RB_ProcessPostEffectsPK11GfxViewInfo_100
_Z21RB_ProcessPostEffectsPK11GfxViewInfo_30:
	ucomiss xmm1, xmm2
	ja _Z21RB_ProcessPostEffectsPK11GfxViewInfo_20
	lea eax, [ebp-0x19]
	mov [esp+0x4], eax
	lea eax, [ebp-0x1a]
	mov [esp], eax
	call _ZN10MacDisplay17GetFBOSupportInfoERhS0_
	cmp byte [ebp-0x19], 0x0
	jz _Z21RB_ProcessPostEffectsPK11GfxViewInfo_660
	movss xmm2, dword [_float_1_00000000]
	movss xmm1, dword [edi+0x5628]
	addss xmm1, xmm2
	movss xmm0, dword [edi+0x562c]
	ucomiss xmm0, xmm1
	ja _Z21RB_ProcessPostEffectsPK11GfxViewInfo_670
	movss xmm1, dword [edi+0x5630]
	addss xmm1, xmm2
	movss xmm0, dword [edi+0x5634]
	ucomiss xmm0, xmm1
	ja _Z21RB_ProcessPostEffectsPK11GfxViewInfo_670
	movaps xmm0, xmm2
	addss xmm0, [edi+0x5638]
	movss xmm1, dword [edi+0x563c]
	ucomiss xmm1, xmm0
	jbe _Z21RB_ProcessPostEffectsPK11GfxViewInfo_660
	movss xmm0, dword [edi+0x5644]
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jbe _Z21RB_ProcessPostEffectsPK11GfxViewInfo_660
_Z21RB_ProcessPostEffectsPK11GfxViewInfo_670:
	mov eax, 0x1
_Z21RB_ProcessPostEffectsPK11GfxViewInfo_730:
	test al, al
	jnz _Z21RB_ProcessPostEffectsPK11GfxViewInfo_20
	jmp _Z21RB_ProcessPostEffectsPK11GfxViewInfo_460
_Z21RB_ProcessPostEffectsPK11GfxViewInfo_190:
	mov eax, edx
	shr eax, 1
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm1, eax
	addss xmm1, xmm1
	jmp _Z21RB_ProcessPostEffectsPK11GfxViewInfo_680
_Z21RB_ProcessPostEffectsPK11GfxViewInfo_160:
	mov eax, edx
	shr eax, 1
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm0, eax
	addss xmm0, xmm0
	jmp _Z21RB_ProcessPostEffectsPK11GfxViewInfo_690
_Z21RB_ProcessPostEffectsPK11GfxViewInfo_40:
	mov ebx, gfxRenderTargets
	mov ecx, [ebx+0x50]
	mov eax, gfxCmdBufContext
	mov edx, [eax+0x4]
	mov eax, [eax]
	mov [esp+0x8], ecx
	mov [esp], eax
	mov [esp+0x4], edx
	call _Z9R_Resolve16GfxCmdBufContextP8GfxImage
	mov eax, [ebx+0x50]
	mov [esi+0xc4c], eax
	jmp _Z21RB_ProcessPostEffectsPK11GfxViewInfo_700
_Z21RB_ProcessPostEffectsPK11GfxViewInfo_150:
	jnp _Z21RB_ProcessPostEffectsPK11GfxViewInfo_710
	movss xmm1, dword [ebp-0x2c]
	jmp _Z21RB_ProcessPostEffectsPK11GfxViewInfo_130
_Z21RB_ProcessPostEffectsPK11GfxViewInfo_660:
	cmp byte [edi+0x5648], 0x0
	jz _Z21RB_ProcessPostEffectsPK11GfxViewInfo_720
	movss xmm0, dword [_float_1_00000000]
	ucomiss xmm0, [edi+0x5650]
	jnz _Z21RB_ProcessPostEffectsPK11GfxViewInfo_670
	jp _Z21RB_ProcessPostEffectsPK11GfxViewInfo_670
	pxor xmm1, xmm1
	ucomiss xmm1, [edi+0x564c]
	jnz _Z21RB_ProcessPostEffectsPK11GfxViewInfo_670
	jp _Z21RB_ProcessPostEffectsPK11GfxViewInfo_670
	ucomiss xmm1, [edi+0x5654]
	jnz _Z21RB_ProcessPostEffectsPK11GfxViewInfo_670
	jp _Z21RB_ProcessPostEffectsPK11GfxViewInfo_670
	cmp byte [edi+0x5658], 0x0
	jnz _Z21RB_ProcessPostEffectsPK11GfxViewInfo_670
	ucomiss xmm0, [edi+0x565c]
	jnz _Z21RB_ProcessPostEffectsPK11GfxViewInfo_670
	jp _Z21RB_ProcessPostEffectsPK11GfxViewInfo_670
	ucomiss xmm0, [edi+0x5660]
	jnz _Z21RB_ProcessPostEffectsPK11GfxViewInfo_670
	jp _Z21RB_ProcessPostEffectsPK11GfxViewInfo_670
	ucomiss xmm0, [edi+0x5664]
	jnz _Z21RB_ProcessPostEffectsPK11GfxViewInfo_670
	jp _Z21RB_ProcessPostEffectsPK11GfxViewInfo_670
	ucomiss xmm0, [edi+0x5668]
	jnz _Z21RB_ProcessPostEffectsPK11GfxViewInfo_670
	jp _Z21RB_ProcessPostEffectsPK11GfxViewInfo_670
	ucomiss xmm0, [edi+0x566c]
	jnz _Z21RB_ProcessPostEffectsPK11GfxViewInfo_670
	jp _Z21RB_ProcessPostEffectsPK11GfxViewInfo_670
	ucomiss xmm0, [edi+0x5670]
	jnz _Z21RB_ProcessPostEffectsPK11GfxViewInfo_670
	jp _Z21RB_ProcessPostEffectsPK11GfxViewInfo_670
_Z21RB_ProcessPostEffectsPK11GfxViewInfo_720:
	xor eax, eax
	jmp _Z21RB_ProcessPostEffectsPK11GfxViewInfo_730
	add [eax], al


;RB_UsingColorManipulation(GfxViewInfo const*)
_Z25RB_UsingColorManipulationPK11GfxViewInfo:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	cmp byte [eax+0x5648], 0x0
	jz _Z25RB_UsingColorManipulationPK11GfxViewInfo_10
	movss xmm1, dword [_float_1_00000000]
	ucomiss xmm1, [eax+0x5650]
	jnz _Z25RB_UsingColorManipulationPK11GfxViewInfo_20
	jp _Z25RB_UsingColorManipulationPK11GfxViewInfo_20
	pxor xmm0, xmm0
	ucomiss xmm0, [eax+0x564c]
	jnz _Z25RB_UsingColorManipulationPK11GfxViewInfo_20
	jp _Z25RB_UsingColorManipulationPK11GfxViewInfo_20
	ucomiss xmm0, [eax+0x5654]
	jnz _Z25RB_UsingColorManipulationPK11GfxViewInfo_20
	jp _Z25RB_UsingColorManipulationPK11GfxViewInfo_20
	cmp byte [eax+0x5658], 0x0
	jnz _Z25RB_UsingColorManipulationPK11GfxViewInfo_20
	ucomiss xmm1, [eax+0x565c]
	jnz _Z25RB_UsingColorManipulationPK11GfxViewInfo_20
	jp _Z25RB_UsingColorManipulationPK11GfxViewInfo_20
	ucomiss xmm1, [eax+0x5660]
	jnz _Z25RB_UsingColorManipulationPK11GfxViewInfo_20
	jp _Z25RB_UsingColorManipulationPK11GfxViewInfo_20
	ucomiss xmm1, [eax+0x5664]
	jnz _Z25RB_UsingColorManipulationPK11GfxViewInfo_20
	jp _Z25RB_UsingColorManipulationPK11GfxViewInfo_20
	ucomiss xmm1, [eax+0x5668]
	jnz _Z25RB_UsingColorManipulationPK11GfxViewInfo_20
	jp _Z25RB_UsingColorManipulationPK11GfxViewInfo_20
	ucomiss xmm1, [eax+0x566c]
	jnz _Z25RB_UsingColorManipulationPK11GfxViewInfo_20
	jp _Z25RB_UsingColorManipulationPK11GfxViewInfo_20
	ucomiss xmm1, [eax+0x5670]
	jnz _Z25RB_UsingColorManipulationPK11GfxViewInfo_20
	jp _Z25RB_UsingColorManipulationPK11GfxViewInfo_20
_Z25RB_UsingColorManipulationPK11GfxViewInfo_10:
	xor eax, eax
	pop ebp
	ret
_Z25RB_UsingColorManipulationPK11GfxViewInfo_20:
	mov eax, 0x1
	pop ebp
	ret
	add [eax], al


;RB_GetDepthOfFieldInputImages(float)
_Z29RB_GetDepthOfFieldInputImagesf:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	movss xmm0, dword [ebp+0x8]
	movss [ebp-0x1c], xmm0
	mov dword [esp+0x4], 0xc
	mov eax, gfxCmdBufSourceState
	mov [esp], eax
	call _Z21R_SetRenderTargetSizeP20GfxCmdBufSourceState17GfxRenderTargetId
	mov eax, gfxCmdBufContext
	mov ebx, [eax]
	mov esi, [eax+0x4]
	mov dword [esp+0x8], 0xc
	mov [esp], ebx
	mov [esp+0x4], esi
	call _Z17R_SetRenderTarget16GfxCmdBufContext17GfxRenderTargetId
	mov edi, rgp
	mov eax, [edi+0x20b4]
	mov [esp], eax
	call _Z19RB_FullScreenFilterPK8Material
	mov dword [esp+0x8], 0xb
	mov dword [esp+0x4], 0xc
	movss xmm0, dword [ebp-0x1c]
	mulss xmm0, [_float_0_25000000]
	movss [esp], xmm0
	call _Z22RB_GaussianFilterImagef17GfxRenderTargetIdS_
	mov dword [esp+0x4], 0x7
	mov eax, gfxCmdBufSourceState
	mov [esp], eax
	call _Z21R_SetRenderTargetSizeP20GfxCmdBufSourceState17GfxRenderTargetId
	mov dword [esp+0x8], 0x7
	mov [esp], ebx
	mov [esp+0x4], esi
	call _Z17R_SetRenderTarget16GfxCmdBufContext17GfxRenderTargetId
	mov eax, [edi+0x20b8]
	mov [esp], eax
	call _Z19RB_FullScreenFilterPK8Material
	mov dword [esp+0x4], 0xc
	mov edx, gfxCmdBufSourceState
	mov [esp], edx
	call _Z21R_SetRenderTargetSizeP20GfxCmdBufSourceState17GfxRenderTargetId
	mov dword [esp+0x8], 0xc
	mov [esp], ebx
	mov [esp+0x4], esi
	call _Z17R_SetRenderTarget16GfxCmdBufContext17GfxRenderTargetId
	mov eax, gfxRenderTargets
	mov eax, [eax+0x8c]
	mov edx, gfxCmdBufSourceState
	mov [edx+0xc44], eax
	mov eax, [edi+0x20bc]
	mov [ebp+0x8], eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z19RB_FullScreenFilterPK8Material


;RB_ApplyColorManipulationSplitscreen(GfxViewInfo const*)
_Z36RB_ApplyColorManipulationSplitscreenPK11GfxViewInfo:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, gfxCmdBufSourceState
	mov edx, [esi+0xc4c]
	test edx, edx
	jz _Z36RB_ApplyColorManipulationSplitscreenPK11GfxViewInfo_10
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov eax, rgp
	mov eax, [eax+0x20c8]
	mov [esp], eax
	call _Z20RB_SplitScreenFilterPK8MaterialPK11GfxViewInfo
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z36RB_ApplyColorManipulationSplitscreenPK11GfxViewInfo_10:
	mov ebx, gfxRenderTargets
	mov ecx, [ebx+0x50]
	mov eax, gfxCmdBufContext
	mov edx, [eax+0x4]
	mov eax, [eax]
	mov [esp+0x8], ecx
	mov [esp], eax
	mov [esp+0x4], edx
	call _Z9R_Resolve16GfxCmdBufContextP8GfxImage
	mov eax, [ebx+0x50]
	mov [esi+0xc4c], eax
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov eax, rgp
	mov eax, [eax+0x20c8]
	mov [esp], eax
	call _Z20RB_SplitScreenFilterPK8MaterialPK11GfxViewInfo
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret


;Initialized global or static variables of rb_postfx:
SECTION .data


;Initialized constant data of rb_postfx:
SECTION .rdata


;Zero initialized global or static variables of rb_postfx:
SECTION .bss


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata
_float_1_00000000:		dd 0x3f800000	; 1
_float_0_00000000:		dd 0x0	; 0
_float_0_50000000:		dd 0x3f000000	; 0.5
_float_672_00000000:		dd 0x44280000	; 672
_float_1728_00000000:		dd 0x44d80000	; 1728
_float__1_00000000:		dd 0xbf800000	; -1
_data16_80000000:		dd 0x80000000, 0x0, 0x0, 0x0	; OWORD
_float_1440_00000000:		dd 0x44b40000	; 1440
_float_255_00000000:		dd 0x437f0000	; 255
_float_0_25000000:		dd 0x3e800000	; 0.25

