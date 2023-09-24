;Imports of r_primarylights:
	extern comWorld
	extern rgp
	extern r_rendererInUse
	extern gfxMetrics
	extern sm_spotShadowFadeTime
	extern scene
	extern sm_spotEnable
	extern sm_lightScore_eyeProjectDist
	extern sm_lightScore_spotProjectFrac
	extern sm_maxLights
	extern frontEndDataOut
	extern _Z24R_AddSpotShadowsForLightP11GfxViewInfoP8GfxLightjf
	extern _Z14Com_PrintErroriPKcz
	extern _Z31CullBoxFromConicSectionOfSpherePKfS0_ffS0_S0_
	extern _Z17CullBoxFromSpherePKffS0_S0_
	extern _Z16PointToBoxDistSqPKfS0_S0_
	extern gfxCfg
	extern _Z15CullBoxFromConePKfS0_fS0_S0_
	extern _Z18CullSphereFromConePKfS0_fS0_f
	extern _Z10Com_MemsetPvii

;Exports of r_primarylights:
	global s_shadowHistory
	global vec3_colorintensity
	global _Z16R_IsPrimaryLightj
	global _Z22R_ChooseShadowedLightsP11GfxViewInfo
	global _Z27R_AddDynamicShadowableLightP11GfxViewInfoPK8GfxLight
	global _Z27R_LinkDynEntToPrimaryLightsj17DynEntityDrawTypePKfS1_
	global _Z29R_GetNonSunPrimaryLightForBoxPK11GfxViewInfoPKfS3_
	global _Z30R_LinkBoxEntityToPrimaryLightsjjPKfS0_
	global _Z31R_IsDynEntVisibleToPrimaryLightj17DynEntityDrawTypej
	global _Z31R_IsEntityVisibleToPrimaryLightjjj
	global _Z31R_UnlinkDynEntFromPrimaryLightsj17DynEntityDrawType
	global _Z31R_UnlinkEntityFromPrimaryLightsjj
	global _Z32R_GetNonSunPrimaryLightForSpherePK11GfxViewInfoPKff
	global _Z33R_LinkSphereEntityToPrimaryLightsjjPKff
	global _Z34R_ClearShadowedPrimaryLightHistoryi
	global _Z42R_IsDynEntVisibleToAnyShadowedPrimaryLightPK11GfxViewInfoj17DynEntityDrawType
	global _Z42R_IsEntityVisibleToAnyShadowedPrimaryLightPK11GfxViewInfoj


SECTION .text


;R_IsPrimaryLight(unsigned int)
_Z16R_IsPrimaryLightj:
	push ebp
	mov ebp, esp
	mov edx, comWorld
	mov eax, [ebp+0x8]
	cmp [edx+0x8], eax
	seta al
	movzx eax, al
	pop ebp
	ret
	nop


;R_ChooseShadowedLights(GfxViewInfo*)
_Z22R_ChooseShadowedLightsP11GfxViewInfo:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xac
	mov edx, [ebp+0x8]
	mov eax, [edx+0x13a0]
	lea eax, [eax+eax*8]
	lea eax, [eax*8+s_shadowHistory]
	mov [ebp-0x84], eax
	mov eax, [edx+0x140]
	mov edx, eax
	mov ecx, [ebp-0x84]
	sub edx, [ecx+0x44]
	cmp edx, 0x0
	jnz _Z22R_ChooseShadowedLightsP11GfxViewInfo_10
	mov eax, rgp
	mov eax, [eax+0x20a0]
	mov ecx, [eax+0xd8]
	test ecx, ecx
	jnz _Z22R_ChooseShadowedLightsP11GfxViewInfo_20
_Z22R_ChooseShadowedLightsP11GfxViewInfo_270:
	mov eax, r_rendererInUse
	mov eax, [eax]
	mov edx, [eax+0xc]
	test edx, edx
	jnz _Z22R_ChooseShadowedLightsP11GfxViewInfo_30
	mov eax, gfxMetrics
	cmp dword [eax+0x20], 0x3
	jz _Z22R_ChooseShadowedLightsP11GfxViewInfo_40
_Z22R_ChooseShadowedLightsP11GfxViewInfo_30:
	mov eax, [ebp-0x84]
	mov eax, [eax+0x40]
	test eax, eax
	jnz _Z22R_ChooseShadowedLightsP11GfxViewInfo_50
_Z22R_ChooseShadowedLightsP11GfxViewInfo_40:
	add esp, 0xac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z22R_ChooseShadowedLightsP11GfxViewInfo_10:
	mov [ecx+0x44], eax
	jl _Z22R_ChooseShadowedLightsP11GfxViewInfo_60
	cvtsi2ss xmm0, edx
_Z22R_ChooseShadowedLightsP11GfxViewInfo_430:
	mov eax, sm_spotShadowFadeTime
	mov eax, [eax]
	movss xmm7, dword [_float_0_00100000]
	divss xmm7, dword [eax+0xc]
	mulss xmm7, xmm0
	xor ebx, ebx
	mov eax, scene
	lea edi, [eax+0xe4000]
	mov esi, 0x1
	movss xmm1, dword [_float_0_01000000]
_Z22R_ChooseShadowedLightsP11GfxViewInfo_280:
	mov eax, [ebp-0x84]
	cmp ebx, [eax+0x40]
	jz _Z22R_ChooseShadowedLightsP11GfxViewInfo_70
_Z22R_ChooseShadowedLightsP11GfxViewInfo_100:
	movzx ecx, byte [eax+ebx*8+0x20]
	mov eax, ecx
	sar eax, 0x5
	and ecx, 0x1f
	mov edx, esi
	shl edx, cl
	test [edi+eax*4], edx
	jz _Z22R_ChooseShadowedLightsP11GfxViewInfo_80
	mov ecx, [ebp-0x84]
	cmp byte [ecx+ebx*8+0x21], 0x0
	jnz _Z22R_ChooseShadowedLightsP11GfxViewInfo_90
	mov byte [ecx+ebx*8+0x21], 0x1
	add ebx, 0x1
	mov eax, [ebp-0x84]
	cmp ebx, [eax+0x40]
	jnz _Z22R_ChooseShadowedLightsP11GfxViewInfo_100
_Z22R_ChooseShadowedLightsP11GfxViewInfo_70:
	mov edx, scene
	add edx, 0xe4000
	mov ecx, scene
	mov eax, [ecx+0xe4000]
	mov [ebp-0x38], eax
	mov eax, [edx+0x4]
	mov [ebp-0x34], eax
	mov eax, [edx+0x8]
	mov [ebp-0x30], eax
	mov eax, [edx+0xc]
	mov [ebp-0x2c], eax
	mov eax, [edx+0x10]
	mov [ebp-0x28], eax
	mov eax, [edx+0x14]
	mov [ebp-0x24], eax
	mov eax, [edx+0x18]
	mov [ebp-0x20], eax
	mov eax, [edx+0x1c]
	mov [ebp-0x1c], eax
	mov edx, [ebp+0x8]
	mov eax, [edx+0x536c]
	add eax, 0x1f
	shr eax, 0x5
	mov [ebp-0x78], eax
	jz _Z22R_ChooseShadowedLightsP11GfxViewInfo_110
	mov dword [ebp-0x7c], 0x0
	mov dword [ebp-0x6c], 0x0
	mov [ebp-0x70], ecx
_Z22R_ChooseShadowedLightsP11GfxViewInfo_260:
	mov ecx, [ecx+0xe4000]
	mov [ebp-0x80], ecx
	mov eax, [ebp-0x7c]
	shl eax, 0x5
	mov [ebp-0x88], eax
_Z22R_ChooseShadowedLightsP11GfxViewInfo_170:
	test dword [ebp-0x80], 0xffff0000
	jnz _Z22R_ChooseShadowedLightsP11GfxViewInfo_120
_Z22R_ChooseShadowedLightsP11GfxViewInfo_200:
	mov ecx, 0x10
	mov esi, 0x10
	mov eax, [ebp-0x80]
	shl eax, cl
	test eax, 0xff000000
	jnz _Z22R_ChooseShadowedLightsP11GfxViewInfo_130
_Z22R_ChooseShadowedLightsP11GfxViewInfo_210:
	mov ebx, 0x8
	mov edx, 0x8
	add esi, edx
	mov edx, eax
	mov ecx, ebx
	shl edx, cl
	test edx, 0xf0000000
	jnz _Z22R_ChooseShadowedLightsP11GfxViewInfo_140
_Z22R_ChooseShadowedLightsP11GfxViewInfo_220:
	mov ebx, 0x4
	mov eax, 0x4
	lea esi, [eax+esi]
	mov ecx, ebx
	shl edx, cl
	test edx, 0xc0000000
	jnz _Z22R_ChooseShadowedLightsP11GfxViewInfo_150
_Z22R_ChooseShadowedLightsP11GfxViewInfo_230:
	mov ebx, 0x2
	mov eax, 0x2
	add eax, esi
	mov ecx, ebx
	shl edx, cl
	mov ecx, edx
	not ecx
	shr ecx, 0x1f
	add eax, ecx
	shl edx, cl
	not edx
	shr edx, 0x1f
	add eax, edx
	cmp eax, 0x20
	jz _Z22R_ChooseShadowedLightsP11GfxViewInfo_160
_Z22R_ChooseShadowedLightsP11GfxViewInfo_240:
	mov ecx, 0x1f
	sub ecx, eax
	mov ebx, 0x1
	mov eax, ebx
	shl eax, cl
	not eax
	and [ebp-0x80], eax
	mov edi, [ebp-0x88]
	add edi, ecx
	jz _Z22R_ChooseShadowedLightsP11GfxViewInfo_170
	mov eax, rgp
	mov eax, [eax+0x20a0]
	cmp edi, [eax+0xd8]
	jz _Z22R_ChooseShadowedLightsP11GfxViewInfo_180
	mov eax, edi
	shl eax, 0x6
	mov edx, [ebp+0x8]
	lea eax, [eax+edx+0x13a0]
	mov [ebp-0x8c], eax
	add eax, 0xc
	mov [ebp-0x74], eax
	cmp byte [eax+0x1], 0x0
	jz _Z22R_ChooseShadowedLightsP11GfxViewInfo_170
	mov eax, sm_spotEnable
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z22R_ChooseShadowedLightsP11GfxViewInfo_170
	mov esi, edx
	add esi, 0x110
	mov eax, sm_lightScore_eyeProjectDist
	mov eax, [eax]
	movss xmm5, dword [eax+0xc]
	add edx, 0x100
	mov ecx, [ebp-0x8c]
	add ecx, 0x28
	mov ebx, [ebp-0x8c]
	add ebx, 0x1c
	mov eax, [ebp-0x74]
	movss xmm6, dword [eax+0x28]
	movaps xmm4, xmm6
	xorps xmm4, [_data16_80000000]
	mov eax, sm_lightScore_spotProjectFrac
	mov eax, [eax]
	mulss xmm4, [eax+0xc]
	movaps xmm0, xmm5
	mov eax, [ebp+0x8]
	mulss xmm0, [eax+0x110]
	addss xmm0, [eax+0x100]
	mov eax, [ebp-0x8c]
	movss xmm1, dword [eax+0x28]
	subss xmm1, xmm0
	movaps xmm0, xmm4
	mulss xmm0, [eax+0x1c]
	addss xmm1, xmm0
	movaps xmm0, xmm5
	mulss xmm0, [esi+0x4]
	addss xmm0, [edx+0x4]
	movss xmm3, dword [ecx+0x4]
	subss xmm3, xmm0
	movaps xmm0, xmm4
	mulss xmm0, [ebx+0x4]
	addss xmm3, xmm0
	mulss xmm5, [esi+0x8]
	addss xmm5, [edx+0x8]
	movss xmm2, dword [ecx+0x8]
	subss xmm2, xmm5
	mulss xmm4, [ebx+0x8]
	addss xmm2, xmm4
	add eax, 0x10
	movss xmm4, dword [_float_0_29899999]
	mov edx, [ebp-0x8c]
	mulss xmm4, [edx+0x10]
	movss xmm0, dword [_float_0_58700001]
	mulss xmm0, [eax+0x4]
	addss xmm4, xmm0
	movss xmm0, dword [_float_0_11400000]
	mulss xmm0, [eax+0x8]
	addss xmm4, xmm0
	mulss xmm4, xmm6
	mulss xmm1, xmm1
	mulss xmm3, xmm3
	addss xmm1, xmm3
	mulss xmm2, xmm2
	addss xmm1, xmm2
	sqrtss xmm1, xmm1
	addss xmm1, [_float_1_00000000]
	divss xmm4, xmm1
	mov ebx, [ebp-0x6c]
	test ebx, ebx
	jnz _Z22R_ChooseShadowedLightsP11GfxViewInfo_190
	xor esi, esi
_Z22R_ChooseShadowedLightsP11GfxViewInfo_300:
	lea eax, [ebp-0x60]
	add eax, esi
	mov [eax], edi
	movss [eax+0x4], xmm4
	mov edx, [ebp-0x6c]
	add edx, 0x1
	mov eax, sm_maxLights
	mov eax, [eax]
	mov eax, [eax+0xc]
	cmp edx, eax
	cmovl eax, edx
	mov [ebp-0x6c], eax
	test dword [ebp-0x80], 0xffff0000
	jz _Z22R_ChooseShadowedLightsP11GfxViewInfo_200
_Z22R_ChooseShadowedLightsP11GfxViewInfo_120:
	xor ecx, ecx
	xor esi, esi
	mov eax, [ebp-0x80]
	shl eax, cl
	test eax, 0xff000000
	jz _Z22R_ChooseShadowedLightsP11GfxViewInfo_210
_Z22R_ChooseShadowedLightsP11GfxViewInfo_130:
	xor ebx, ebx
	xor edx, edx
	add esi, edx
	mov edx, eax
	mov ecx, ebx
	shl edx, cl
	test edx, 0xf0000000
	jz _Z22R_ChooseShadowedLightsP11GfxViewInfo_220
_Z22R_ChooseShadowedLightsP11GfxViewInfo_140:
	xor ebx, ebx
	xor eax, eax
	lea esi, [eax+esi]
	mov ecx, ebx
	shl edx, cl
	test edx, 0xc0000000
	jz _Z22R_ChooseShadowedLightsP11GfxViewInfo_230
_Z22R_ChooseShadowedLightsP11GfxViewInfo_150:
	xor ebx, ebx
	xor eax, eax
	add eax, esi
	mov ecx, ebx
	shl edx, cl
	mov ecx, edx
	not ecx
	shr ecx, 0x1f
	add eax, ecx
	shl edx, cl
	not edx
	shr edx, 0x1f
	add eax, edx
	cmp eax, 0x20
	jnz _Z22R_ChooseShadowedLightsP11GfxViewInfo_240
_Z22R_ChooseShadowedLightsP11GfxViewInfo_160:
	add dword [ebp-0x7c], 0x1
	add dword [ebp-0x70], 0x4
	mov ecx, [ebp-0x7c]
	cmp [ebp-0x78], ecx
	jz _Z22R_ChooseShadowedLightsP11GfxViewInfo_250
	mov ecx, [ebp-0x70]
	jmp _Z22R_ChooseShadowedLightsP11GfxViewInfo_260
_Z22R_ChooseShadowedLightsP11GfxViewInfo_20:
	mov eax, ecx
	sar eax, 0x5
	lea edx, [eax*4]
	and ecx, 0x1f
	mov ebx, 0x1
	shl ebx, cl
	mov eax, scene
	add eax, 0xe4000
	test [edx+eax], ebx
	jz _Z22R_ChooseShadowedLightsP11GfxViewInfo_270
	mov eax, frontEndDataOut
	mov eax, [eax]
	add eax, 0x118230
	or [eax+edx], ebx
	jmp _Z22R_ChooseShadowedLightsP11GfxViewInfo_270
_Z22R_ChooseShadowedLightsP11GfxViewInfo_180:
	mov eax, frontEndDataOut
	mov edx, [eax]
	add edx, 0x118230
	mov eax, edi
	sar eax, 0x5
	and edi, 0x1f
	mov ecx, edi
	shl ebx, cl
	or [edx+eax*4], ebx
	jmp _Z22R_ChooseShadowedLightsP11GfxViewInfo_170
_Z22R_ChooseShadowedLightsP11GfxViewInfo_80:
	mov edx, [ebp-0x84]
	mov eax, [edx+0x40]
	sub eax, 0x1
	mov [edx+0x40], eax
	mov ecx, [ebp-0x84]
	mov edx, [ecx+eax*8+0x24]
	mov eax, [ecx+eax*8+0x20]
	mov [ecx+ebx*8+0x20], eax
	mov [ecx+ebx*8+0x24], edx
	jmp _Z22R_ChooseShadowedLightsP11GfxViewInfo_280
_Z22R_ChooseShadowedLightsP11GfxViewInfo_90:
	movss xmm0, dword [ecx+ebx*8+0x24]
	subss xmm0, xmm7
	movss [ecx+ebx*8+0x24], xmm0
	ucomiss xmm0, xmm1
	jb _Z22R_ChooseShadowedLightsP11GfxViewInfo_80
	add ebx, 0x1
	jmp _Z22R_ChooseShadowedLightsP11GfxViewInfo_280
_Z22R_ChooseShadowedLightsP11GfxViewInfo_190:
	mov ebx, [ebp-0x6c]
	shl ebx, 0x3
	lea eax, [ebp+ebx-0x68]
	ucomiss xmm4, [eax+0x4]
	ja _Z22R_ChooseShadowedLightsP11GfxViewInfo_290
	mov esi, ebx
	jmp _Z22R_ChooseShadowedLightsP11GfxViewInfo_300
_Z22R_ChooseShadowedLightsP11GfxViewInfo_350:
	xor esi, esi
_Z22R_ChooseShadowedLightsP11GfxViewInfo_360:
	mov ecx, [ebp-0x84]
	mov byte [ecx+esi*8+0x21], 0x0
	movaps xmm0, xmm7
	addss xmm0, [ecx+esi*8+0x24]
	movaps xmm1, xmm0
	subss xmm1, xmm2
	movaps xmm4, xmm3
	cmpss xmm4, xmm1, 0x6
	movaps xmm1, xmm4
	andps xmm0, xmm4
	andnps xmm1, xmm2
	orps xmm1, xmm0
	movss [ecx+esi*8+0x24], xmm1
_Z22R_ChooseShadowedLightsP11GfxViewInfo_380:
	add edi, 0x1
	cmp edi, [ebp-0x6c]
	jnz _Z22R_ChooseShadowedLightsP11GfxViewInfo_310
_Z22R_ChooseShadowedLightsP11GfxViewInfo_110:
	mov eax, [ebp-0x38]
	mov ecx, [ebp-0x84]
	mov [ecx], eax
	mov eax, [ebp-0x34]
	mov [ecx+0x4], eax
	mov eax, [ebp-0x30]
	mov [ecx+0x8], eax
	mov eax, [ebp-0x2c]
	mov [ecx+0xc], eax
	mov eax, [ebp-0x28]
	mov [ecx+0x10], eax
	mov eax, [ebp-0x24]
	mov [ecx+0x14], eax
	mov eax, [ebp-0x20]
	mov [ecx+0x18], eax
	mov eax, [ebp-0x1c]
	mov [ecx+0x1c], eax
	jmp _Z22R_ChooseShadowedLightsP11GfxViewInfo_270
_Z22R_ChooseShadowedLightsP11GfxViewInfo_290:
	lea esi, [ebx-0x8]
	mov ecx, [ebp-0x6c]
	jmp _Z22R_ChooseShadowedLightsP11GfxViewInfo_320
_Z22R_ChooseShadowedLightsP11GfxViewInfo_330:
	lea eax, [ebp+esi-0x68]
	lea edx, [esi-0x8]
	ucomiss xmm4, [eax+0x4]
	jbe _Z22R_ChooseShadowedLightsP11GfxViewInfo_300
	mov ebx, esi
	mov esi, edx
_Z22R_ChooseShadowedLightsP11GfxViewInfo_320:
	mov edx, [eax+0x4]
	mov eax, [eax]
	mov [ebp+ebx-0x60], eax
	mov [ebp+ebx-0x5c], edx
	sub ecx, 0x1
	jnz _Z22R_ChooseShadowedLightsP11GfxViewInfo_330
	lea esi, [ecx*8]
	jmp _Z22R_ChooseShadowedLightsP11GfxViewInfo_300
_Z22R_ChooseShadowedLightsP11GfxViewInfo_250:
	mov ecx, [ebp-0x6c]
	test ecx, ecx
	jz _Z22R_ChooseShadowedLightsP11GfxViewInfo_110
	xor edi, edi
	movss xmm2, dword [_float_1_00000000]
	pxor xmm3, xmm3
_Z22R_ChooseShadowedLightsP11GfxViewInfo_310:
	mov ecx, [ebp+edi*8-0x60]
	mov eax, [ebp-0x84]
	mov ebx, [eax+0x40]
	test ebx, ebx
	jz _Z22R_ChooseShadowedLightsP11GfxViewInfo_340
	movzx eax, byte [eax+0x20]
	cmp ecx, eax
	jz _Z22R_ChooseShadowedLightsP11GfxViewInfo_350
	mov edx, [ebp-0x84]
	xor esi, esi
	add esi, 0x1
	cmp ebx, esi
	jz _Z22R_ChooseShadowedLightsP11GfxViewInfo_340
_Z22R_ChooseShadowedLightsP11GfxViewInfo_370:
	movzx eax, byte [edx+0x28]
	add edx, 0x8
	cmp ecx, eax
	jz _Z22R_ChooseShadowedLightsP11GfxViewInfo_360
	add esi, 0x1
	cmp ebx, esi
	jnz _Z22R_ChooseShadowedLightsP11GfxViewInfo_370
_Z22R_ChooseShadowedLightsP11GfxViewInfo_340:
	mov edx, sm_maxLights
	mov eax, [edx]
	cmp ebx, [eax+0xc]
	jae _Z22R_ChooseShadowedLightsP11GfxViewInfo_380
	mov eax, [ebp-0x84]
	mov [eax+ebx*8+0x20], cl
	mov edx, [ebp-0x84]
	mov eax, [edx+0x40]
	mov byte [edx+eax*8+0x21], 0x0
	mov ebx, [edx+0x40]
	mov edx, ecx
	sar edx, 0x5
	and ecx, 0x1f
	mov eax, 0x1
	shl eax, cl
	mov ecx, [ebp-0x84]
	test [ecx+edx*4], eax
	jz _Z22R_ChooseShadowedLightsP11GfxViewInfo_390
	movss [ebp-0x9c], xmm7
	mov eax, [ebp-0x9c]
_Z22R_ChooseShadowedLightsP11GfxViewInfo_400:
	mov edx, [ebp-0x84]
	mov [edx+ebx*8+0x24], eax
	add dword [edx+0x40], 0x1
	jmp _Z22R_ChooseShadowedLightsP11GfxViewInfo_380
_Z22R_ChooseShadowedLightsP11GfxViewInfo_390:
	mov eax, 0x3f800000
	jmp _Z22R_ChooseShadowedLightsP11GfxViewInfo_400
_Z22R_ChooseShadowedLightsP11GfxViewInfo_50:
	mov esi, [ebp-0x84]
	xor edi, edi
_Z22R_ChooseShadowedLightsP11GfxViewInfo_420:
	movzx ebx, byte [esi+0x20]
	mov eax, [esi+0x24]
	mov [esp+0xc], eax
	mov [esp+0x8], ebx
	mov eax, ebx
	shl eax, 0x6
	mov edx, [ebp+0x8]
	lea eax, [eax+edx+0x13ac]
	mov [esp+0x4], eax
	mov [esp], edx
	call _Z24R_AddSpotShadowsForLightP11GfxViewInfoP8GfxLightjf
	test al, al
	jz _Z22R_ChooseShadowedLightsP11GfxViewInfo_410
	mov eax, frontEndDataOut
	mov eax, [eax]
	add eax, 0x118230
	mov [ebp-0xa0], eax
	mov edx, ebx
	sar edx, 0x5
	and ebx, 0x1f
	mov eax, 0x1
	mov ecx, ebx
	shl eax, cl
	mov ecx, [ebp-0xa0]
	or [ecx+edx*4], eax
_Z22R_ChooseShadowedLightsP11GfxViewInfo_410:
	add edi, 0x1
	add esi, 0x8
	mov eax, [ebp-0x84]
	cmp edi, [eax+0x40]
	jb _Z22R_ChooseShadowedLightsP11GfxViewInfo_420
	add esp, 0xac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z22R_ChooseShadowedLightsP11GfxViewInfo_60:
	mov eax, edx
	shr eax, 1
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm0, eax
	addss xmm0, xmm0
	jmp _Z22R_ChooseShadowedLightsP11GfxViewInfo_430
	nop


;R_AddDynamicShadowableLight(GfxViewInfo*, GfxLight const*)
_Z27R_AddDynamicShadowableLightP11GfxViewInfoPK8GfxLight:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edi, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov ebx, [edi+0x536c]
	cmp ebx, 0xff
	jz _Z27R_AddDynamicShadowableLightP11GfxViewInfoPK8GfxLight_10
	mov eax, ebx
	sar eax, 0x5
	mov [ebp-0x1c], eax
	mov edx, scene
	add edx, 0xe4000
	and ebx, 0x1f
	mov eax, 0x1
	mov ecx, ebx
	shl eax, cl
	mov ecx, [ebp-0x1c]
	or [edx+ecx*4], eax
	mov ecx, [edi+0x536c]
	mov eax, ecx
	shl eax, 0x6
	lea eax, [eax+edi+0x13a0]
	mov edx, [esi]
	mov [eax+0xc], edx
	mov edx, [esi+0x4]
	mov [eax+0x10], edx
	mov edx, [esi+0x8]
	mov [eax+0x14], edx
	mov edx, [esi+0xc]
	mov [eax+0x18], edx
	mov edx, [esi+0x10]
	mov [eax+0x1c], edx
	mov edx, [esi+0x14]
	mov [eax+0x20], edx
	mov edx, [esi+0x18]
	mov [eax+0x24], edx
	mov edx, [esi+0x1c]
	mov [eax+0x28], edx
	mov edx, [esi+0x20]
	mov [eax+0x2c], edx
	mov edx, [esi+0x24]
	mov [eax+0x30], edx
	mov edx, [esi+0x28]
	mov [eax+0x34], edx
	mov edx, [esi+0x2c]
	mov [eax+0x38], edx
	mov edx, [esi+0x30]
	mov [eax+0x3c], edx
	mov edx, [esi+0x34]
	mov [eax+0x40], edx
	mov edx, [esi+0x38]
	mov [eax+0x44], edx
	mov edx, [esi+0x3c]
	mov [eax+0x48], edx
	add ecx, 0x1
	mov [edi+0x536c], ecx
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z27R_AddDynamicShadowableLightP11GfxViewInfoPK8GfxLight_10:
	mov dword [esp+0x8], 0xff
	mov dword [esp+0x4], _cstring_too_many_total_s
	mov dword [esp], 0x1
	call _Z14Com_PrintErroriPKcz
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;R_LinkDynEntToPrimaryLights(unsigned int, DynEntityDrawType, float const*, float const*)
_Z27R_LinkDynEntToPrimaryLightsj17DynEntityDrawTypePKfS1_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x9c
	mov eax, [ebp+0x10]
	mov edx, [ebp+0x14]
	movss xmm2, dword [eax]
	addss xmm2, [edx]
	movss xmm3, dword [_float_0_50000000]
	mulss xmm2, xmm3
	movss [ebp-0x24], xmm2
	movss xmm1, dword [eax+0x4]
	addss xmm1, [edx+0x4]
	mulss xmm1, xmm3
	movss [ebp-0x20], xmm1
	movss xmm0, dword [eax+0x8]
	addss xmm0, [edx+0x8]
	mulss xmm0, xmm3
	movss [ebp-0x1c], xmm0
	subss xmm2, [eax]
	movss [ebp-0x30], xmm2
	subss xmm1, [eax+0x4]
	movss [ebp-0x2c], xmm1
	subss xmm0, [eax+0x8]
	movss [ebp-0x28], xmm0
	mov eax, rgp
	mov eax, [eax+0x20a0]
	mov edi, [eax+0xd8]
	add edi, 0x1
	cmp edi, [eax+0xdc]
	jae _Z27R_LinkDynEntToPrimaryLightsj17DynEntityDrawTypePKfS1__10
	mov eax, edi
	shl eax, 0x6
	lea eax, [eax+edi*4]
	mov [ebp-0x48], eax
	lea eax, [edi*8]
	mov [ebp-0x44], eax
	movss xmm0, dword [_float_3402823466385288598117041]
	movss [ebp-0x68], xmm0
	mov dword [ebp-0x6c], 0x0
_Z27R_LinkDynEntToPrimaryLightsj17DynEntityDrawTypePKfS1__80:
	mov eax, comWorld
	mov ebx, [ebp-0x48]
	add ebx, [eax+0xc]
	cmp byte [ebx], 0x2
	jnz _Z27R_LinkDynEntToPrimaryLightsj17DynEntityDrawTypePKfS1__20
	movss xmm0, dword [ebx+0x34]
	ucomiss xmm0, [_float_0_00000000]
	jb _Z27R_LinkDynEntToPrimaryLightsj17DynEntityDrawTypePKfS1__20
	lea eax, [ebp-0x30]
	mov [esp+0x14], eax
	lea edx, [ebp-0x24]
	mov [esp+0x10], edx
	mov eax, [ebx+0x28]
	mov [esp+0xc], eax
	movss [esp+0x8], xmm0
	lea eax, [ebx+0x10]
	mov [esp+0x4], eax
	lea esi, [ebx+0x1c]
	mov [esp], esi
	call _Z31CullBoxFromConicSectionOfSpherePKfS0_ffS0_S0_
	movzx eax, al
_Z27R_LinkDynEntToPrimaryLightsj17DynEntityDrawTypePKfS1__100:
	test eax, eax
	jnz _Z27R_LinkDynEntToPrimaryLightsj17DynEntityDrawTypePKfS1__30
	mov edx, rgp
	mov edx, [edx+0x20a0]
	mov [ebp-0x70], edx
	mov eax, [ebp-0x44]
	add eax, [edx+0x240]
	mov ecx, [eax]
	test ecx, ecx
	jz _Z27R_LinkDynEntToPrimaryLightsj17DynEntityDrawTypePKfS1__40
	movss xmm6, dword [ebp-0x24]
	subss xmm6, [ebx+0x1c]
	movss xmm7, dword [ebp-0x20]
	subss xmm7, [esi+0x4]
	movss xmm0, dword [ebp-0x1c]
	movss [ebp-0x4c], xmm0
	subss xmm0, [esi+0x8]
	movss [ebp-0x4c], xmm0
	movss xmm4, dword [ebp-0x30]
	movss xmm1, dword [ebp-0x2c]
	movss [ebp-0x64], xmm1
	movss xmm0, dword [ebp-0x28]
	movss [ebp-0x60], xmm0
	addss xmm1, xmm4
	movss [ebp-0x58], xmm1
	addss xmm0, xmm4
	movss [ebp-0x40], xmm0
	movss xmm1, dword [ebp-0x64]
	addss xmm1, [ebp-0x60]
	movss [ebp-0x3c], xmm1
	mov eax, [eax+0x4]
	xor edx, edx
	movss xmm5, dword [_data16_7fffffff]
_Z27R_LinkDynEntToPrimaryLightsj17DynEntityDrawTypePKfS1__70:
	movaps xmm0, xmm6
	subss xmm0, [eax]
	andps xmm0, xmm5
	movaps xmm1, xmm4
	addss xmm1, [eax+0x24]
	ucomiss xmm0, xmm1
	jae _Z27R_LinkDynEntToPrimaryLightsj17DynEntityDrawTypePKfS1__50
	movaps xmm0, xmm7
	subss xmm0, [eax+0x4]
	andps xmm0, xmm5
	movss xmm1, dword [ebp-0x64]
	addss xmm1, [eax+0x28]
	ucomiss xmm0, xmm1
	jae _Z27R_LinkDynEntToPrimaryLightsj17DynEntityDrawTypePKfS1__50
	movss xmm0, dword [ebp-0x4c]
	subss xmm0, [eax+0x8]
	andps xmm0, xmm5
	movss xmm1, dword [ebp-0x60]
	addss xmm1, [eax+0x2c]
	ucomiss xmm0, xmm1
	jae _Z27R_LinkDynEntToPrimaryLightsj17DynEntityDrawTypePKfS1__50
	movaps xmm0, xmm6
	addss xmm0, xmm7
	subss xmm0, [eax+0xc]
	andps xmm0, xmm5
	movss xmm1, dword [ebp-0x58]
	addss xmm1, [eax+0x30]
	ucomiss xmm0, xmm1
	jae _Z27R_LinkDynEntToPrimaryLightsj17DynEntityDrawTypePKfS1__50
	movaps xmm0, xmm6
	subss xmm0, xmm7
	subss xmm0, [eax+0x10]
	andps xmm0, xmm5
	movss xmm1, dword [ebp-0x58]
	addss xmm1, [eax+0x34]
	ucomiss xmm0, xmm1
	jb _Z27R_LinkDynEntToPrimaryLightsj17DynEntityDrawTypePKfS1__60
_Z27R_LinkDynEntToPrimaryLightsj17DynEntityDrawTypePKfS1__50:
	add edx, 0x1
	add eax, 0x50
	cmp ecx, edx
	jnz _Z27R_LinkDynEntToPrimaryLightsj17DynEntityDrawTypePKfS1__70
_Z27R_LinkDynEntToPrimaryLightsj17DynEntityDrawTypePKfS1__30:
	add edi, 0x1
	mov edx, rgp
	mov eax, [edx+0x20a0]
	add dword [ebp-0x48], 0x44
	add dword [ebp-0x44], 0x8
	cmp edi, [eax+0xdc]
	jb _Z27R_LinkDynEntToPrimaryLightsj17DynEntityDrawTypePKfS1__80
_Z27R_LinkDynEntToPrimaryLightsj17DynEntityDrawTypePKfS1__110:
	mov esi, [ebp+0xc]
	test esi, esi
	jnz _Z27R_LinkDynEntToPrimaryLightsj17DynEntityDrawTypePKfS1__90
	mov eax, [eax+0x238]
	movzx ecx, byte [ebp-0x6c]
	mov ebx, [ebp+0x8]
	mov [eax+ebx], cl
_Z27R_LinkDynEntToPrimaryLightsj17DynEntityDrawTypePKfS1__90:
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z27R_LinkDynEntToPrimaryLightsj17DynEntityDrawTypePKfS1__20:
	lea ecx, [ebp-0x30]
	mov [esp+0xc], ecx
	lea eax, [ebp-0x24]
	mov [esp+0x8], eax
	mov eax, [ebx+0x28]
	mov [esp+0x4], eax
	lea esi, [ebx+0x1c]
	mov [esp], esi
	call _Z17CullBoxFromSpherePKffS0_S0_
	movzx eax, al
	jmp _Z27R_LinkDynEntToPrimaryLightsj17DynEntityDrawTypePKfS1__100
_Z27R_LinkDynEntToPrimaryLightsj17DynEntityDrawTypePKfS1__40:
	mov eax, edx
_Z27R_LinkDynEntToPrimaryLightsj17DynEntityDrawTypePKfS1__150:
	mov edx, [eax+0xd8]
	add edx, 0x1
	mov ecx, edi
	sub ecx, edx
	mov eax, [eax+0xdc]
	sub eax, edx
	imul eax, [ebp+0x8]
	add ecx, eax
	mov ebx, ecx
	sar ebx, 0x5
	mov eax, [ebp+0xc]
	mov edx, [ebp-0x70]
	mov eax, [edx+eax*4+0x230]
	mov [ebp-0x80], eax
	and ecx, 0x1f
	mov eax, 0x1
	shl eax, cl
	mov edx, [ebp-0x80]
	or [edx+ebx*4], eax
	movss xmm2, dword [ebp-0x24]
	subss xmm2, [esi]
	movss xmm0, dword [ebp-0x20]
	subss xmm0, [esi+0x4]
	movss xmm1, dword [ebp-0x1c]
	subss xmm1, [esi+0x8]
	mulss xmm2, xmm2
	mulss xmm0, xmm0
	addss xmm2, xmm0
	mulss xmm1, xmm1
	addss xmm2, xmm1
	movss xmm0, dword [ebp-0x68]
	ucomiss xmm0, xmm2
	jbe _Z27R_LinkDynEntToPrimaryLightsj17DynEntityDrawTypePKfS1__30
	mov [ebp-0x6c], edi
	movss [ebp-0x68], xmm2
	add edi, 0x1
	mov edx, rgp
	mov eax, [edx+0x20a0]
	add dword [ebp-0x48], 0x44
	add dword [ebp-0x44], 0x8
	cmp edi, [eax+0xdc]
	jb _Z27R_LinkDynEntToPrimaryLightsj17DynEntityDrawTypePKfS1__80
	jmp _Z27R_LinkDynEntToPrimaryLightsj17DynEntityDrawTypePKfS1__110
_Z27R_LinkDynEntToPrimaryLightsj17DynEntityDrawTypePKfS1__10:
	mov dword [ebp-0x6c], 0x0
	jmp _Z27R_LinkDynEntToPrimaryLightsj17DynEntityDrawTypePKfS1__110
_Z27R_LinkDynEntToPrimaryLightsj17DynEntityDrawTypePKfS1__60:
	movss xmm0, dword [ebp-0x4c]
	addss xmm0, xmm6
	subss xmm0, [eax+0x14]
	andps xmm0, xmm5
	movss xmm1, dword [ebp-0x40]
	addss xmm1, [eax+0x38]
	ucomiss xmm0, xmm1
	jae _Z27R_LinkDynEntToPrimaryLightsj17DynEntityDrawTypePKfS1__50
	movaps xmm0, xmm6
	subss xmm0, [ebp-0x4c]
	subss xmm0, [eax+0x18]
	andps xmm0, xmm5
	movss xmm1, dword [ebp-0x40]
	addss xmm1, [eax+0x3c]
	ucomiss xmm0, xmm1
	jae _Z27R_LinkDynEntToPrimaryLightsj17DynEntityDrawTypePKfS1__50
	movss xmm0, dword [ebp-0x4c]
	addss xmm0, xmm7
	subss xmm0, [eax+0x1c]
	andps xmm0, xmm5
	movss xmm1, dword [ebp-0x3c]
	addss xmm1, [eax+0x40]
	ucomiss xmm0, xmm1
	jae _Z27R_LinkDynEntToPrimaryLightsj17DynEntityDrawTypePKfS1__50
	movaps xmm0, xmm7
	subss xmm0, [ebp-0x4c]
	subss xmm0, [eax+0x20]
	andps xmm0, xmm5
	movss xmm1, dword [ebp-0x3c]
	addss xmm1, [eax+0x44]
	ucomiss xmm0, xmm1
	jae _Z27R_LinkDynEntToPrimaryLightsj17DynEntityDrawTypePKfS1__50
	mov ebx, [eax+0x48]
	mov [ebp-0x5c], ebx
	test ebx, ebx
	jz _Z27R_LinkDynEntToPrimaryLightsj17DynEntityDrawTypePKfS1__120
	mov ebx, [eax+0x4c]
	mov [ebp-0x7c], ebx
	mov dword [ebp-0x54], 0x0
	jmp _Z27R_LinkDynEntToPrimaryLightsj17DynEntityDrawTypePKfS1__130
_Z27R_LinkDynEntToPrimaryLightsj17DynEntityDrawTypePKfS1__140:
	mov ebx, [ebp-0x7c]
_Z27R_LinkDynEntToPrimaryLightsj17DynEntityDrawTypePKfS1__130:
	movss xmm0, dword [ebx]
	movss xmm3, dword [ebx+0x4]
	movss xmm1, dword [ebx+0x8]
	movss [ebp-0x50], xmm1
	movaps xmm2, xmm6
	mulss xmm2, xmm0
	movaps xmm1, xmm7
	mulss xmm1, xmm3
	addss xmm2, xmm1
	movss xmm1, dword [ebp-0x4c]
	mulss xmm1, [ebp-0x50]
	addss xmm2, xmm1
	subss xmm2, [ebx+0xc]
	andps xmm2, xmm5
	andps xmm0, xmm5
	mulss xmm0, xmm4
	andps xmm3, xmm5
	mulss xmm3, [ebp-0x64]
	addss xmm0, xmm3
	and dword [ebp-0x50], 0x7fffffff
	movss xmm1, dword [ebp-0x60]
	mulss xmm1, [ebp-0x50]
	addss xmm0, xmm1
	addss xmm0, [ebx+0x10]
	ucomiss xmm2, xmm0
	jae _Z27R_LinkDynEntToPrimaryLightsj17DynEntityDrawTypePKfS1__50
	add dword [ebp-0x54], 0x1
	add ebx, 0x14
	mov [ebp-0x7c], ebx
	mov ebx, [ebp-0x54]
	cmp [ebp-0x5c], ebx
	jnz _Z27R_LinkDynEntToPrimaryLightsj17DynEntityDrawTypePKfS1__140
_Z27R_LinkDynEntToPrimaryLightsj17DynEntityDrawTypePKfS1__120:
	mov eax, [ebp-0x70]
	jmp _Z27R_LinkDynEntToPrimaryLightsj17DynEntityDrawTypePKfS1__150


;R_GetNonSunPrimaryLightForBox(GfxViewInfo const*, float const*, float const*)
_Z29R_GetNonSunPrimaryLightForBoxPK11GfxViewInfoPKfS3_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov eax, rgp
	mov eax, [eax+0x20a0]
	mov edi, [eax+0xd8]
	add edi, 0x1
	cmp edi, [eax+0xdc]
	jae _Z29R_GetNonSunPrimaryLightForBoxPK11GfxViewInfoPKfS3__10
	mov eax, edi
	shl eax, 0x6
	lea eax, [eax+edi*4]
	mov [ebp-0x20], eax
	lea eax, [edi*8]
	mov [ebp-0x1c], eax
_Z29R_GetNonSunPrimaryLightForBoxPK11GfxViewInfoPKfS3__80:
	mov eax, comWorld
	mov ebx, [ebp-0x20]
	add ebx, [eax+0xc]
	cmp byte [ebx], 0x2
	jnz _Z29R_GetNonSunPrimaryLightForBoxPK11GfxViewInfoPKfS3__20
	movss xmm0, dword [ebx+0x34]
	ucomiss xmm0, [_float_0_00000000]
	jb _Z29R_GetNonSunPrimaryLightForBoxPK11GfxViewInfoPKfS3__20
	mov edx, [ebp+0x10]
	mov [esp+0x14], edx
	mov eax, [ebp+0xc]
	mov [esp+0x10], eax
	mov eax, [ebx+0x28]
	mov [esp+0xc], eax
	movss [esp+0x8], xmm0
	lea eax, [ebx+0x10]
	mov [esp+0x4], eax
	lea esi, [ebx+0x1c]
	mov [esp], esi
	call _Z31CullBoxFromConicSectionOfSpherePKfS0_ffS0_S0_
	movzx eax, al
_Z29R_GetNonSunPrimaryLightForBoxPK11GfxViewInfoPKfS3__90:
	test eax, eax
	jnz _Z29R_GetNonSunPrimaryLightForBoxPK11GfxViewInfoPKfS3__30
	mov edx, rgp
	mov eax, [edx+0x20a0]
	mov eax, [eax+0x240]
	add eax, [ebp-0x1c]
	mov ecx, [eax]
	test ecx, ecx
	jz _Z29R_GetNonSunPrimaryLightForBoxPK11GfxViewInfoPKfS3__40
	mov edx, [ebp+0xc]
	movss xmm6, dword [edx]
	subss xmm6, [ebx+0x1c]
	movss xmm7, dword [edx+0x4]
	subss xmm7, [esi+0x4]
	movss xmm0, dword [edx+0x8]
	movss [ebp-0x24], xmm0
	subss xmm0, [esi+0x8]
	movss [ebp-0x24], xmm0
	mov edx, [ebp+0x10]
	movss xmm3, dword [edx]
	mov eax, [eax+0x4]
	xor edx, edx
	movss xmm5, dword [_data16_7fffffff]
_Z29R_GetNonSunPrimaryLightForBoxPK11GfxViewInfoPKfS3__70:
	movaps xmm0, xmm6
	subss xmm0, [eax]
	andps xmm0, xmm5
	movaps xmm1, xmm3
	addss xmm1, [eax+0x24]
	ucomiss xmm0, xmm1
	jae _Z29R_GetNonSunPrimaryLightForBoxPK11GfxViewInfoPKfS3__50
	mov ebx, [ebp+0x10]
	movss xmm4, dword [ebx+0x4]
	movaps xmm0, xmm7
	subss xmm0, [eax+0x4]
	andps xmm0, xmm5
	movaps xmm1, xmm4
	addss xmm1, [eax+0x28]
	ucomiss xmm0, xmm1
	jae _Z29R_GetNonSunPrimaryLightForBoxPK11GfxViewInfoPKfS3__50
	movss xmm0, dword [ebx+0x8]
	movss [ebp-0x34], xmm0
	movss xmm0, dword [ebp-0x24]
	subss xmm0, [eax+0x8]
	andps xmm0, xmm5
	movss xmm1, dword [ebp-0x34]
	addss xmm1, [eax+0x2c]
	ucomiss xmm0, xmm1
	jae _Z29R_GetNonSunPrimaryLightForBoxPK11GfxViewInfoPKfS3__50
	movaps xmm2, xmm3
	addss xmm2, xmm4
	movaps xmm0, xmm6
	addss xmm0, xmm7
	subss xmm0, [eax+0xc]
	andps xmm0, xmm5
	movaps xmm1, xmm2
	addss xmm1, [eax+0x30]
	ucomiss xmm0, xmm1
	jae _Z29R_GetNonSunPrimaryLightForBoxPK11GfxViewInfoPKfS3__50
	movaps xmm0, xmm6
	subss xmm0, xmm7
	subss xmm0, [eax+0x10]
	andps xmm0, xmm5
	addss xmm2, [eax+0x34]
	ucomiss xmm0, xmm2
	jae _Z29R_GetNonSunPrimaryLightForBoxPK11GfxViewInfoPKfS3__50
	movss xmm2, dword [ebp-0x34]
	addss xmm2, xmm3
	movss xmm0, dword [ebp-0x24]
	addss xmm0, xmm6
	subss xmm0, [eax+0x14]
	andps xmm0, xmm5
	movaps xmm1, xmm2
	addss xmm1, [eax+0x38]
	ucomiss xmm0, xmm1
	jae _Z29R_GetNonSunPrimaryLightForBoxPK11GfxViewInfoPKfS3__50
	movaps xmm0, xmm6
	subss xmm0, [ebp-0x24]
	subss xmm0, [eax+0x18]
	andps xmm0, xmm5
	addss xmm2, [eax+0x3c]
	ucomiss xmm0, xmm2
	jae _Z29R_GetNonSunPrimaryLightForBoxPK11GfxViewInfoPKfS3__50
	movss xmm2, dword [ebp-0x34]
	addss xmm2, xmm4
	movss xmm0, dword [ebp-0x24]
	addss xmm0, xmm7
	subss xmm0, [eax+0x1c]
	andps xmm0, xmm5
	movaps xmm1, xmm2
	addss xmm1, [eax+0x40]
	ucomiss xmm0, xmm1
	jae _Z29R_GetNonSunPrimaryLightForBoxPK11GfxViewInfoPKfS3__50
	movaps xmm0, xmm7
	subss xmm0, [ebp-0x24]
	subss xmm0, [eax+0x20]
	andps xmm0, xmm5
	addss xmm2, [eax+0x44]
	ucomiss xmm0, xmm2
	jae _Z29R_GetNonSunPrimaryLightForBoxPK11GfxViewInfoPKfS3__50
	mov ebx, [eax+0x48]
	mov [ebp-0x30], ebx
	test ebx, ebx
	jz _Z29R_GetNonSunPrimaryLightForBoxPK11GfxViewInfoPKfS3__40
	mov ebx, [eax+0x4c]
	xor esi, esi
_Z29R_GetNonSunPrimaryLightForBoxPK11GfxViewInfoPKfS3__60:
	movss xmm0, dword [ebx]
	movss xmm1, dword [ebx+0x4]
	movss [ebp-0x2c], xmm1
	movss xmm1, dword [ebx+0x8]
	movss [ebp-0x28], xmm1
	movaps xmm2, xmm6
	mulss xmm2, xmm0
	movss xmm1, dword [ebp-0x2c]
	mulss xmm1, xmm7
	addss xmm2, xmm1
	movss xmm1, dword [ebp-0x24]
	mulss xmm1, [ebp-0x28]
	addss xmm2, xmm1
	subss xmm2, [ebx+0xc]
	andps xmm2, xmm5
	andps xmm0, xmm5
	mulss xmm0, xmm3
	and dword [ebp-0x2c], 0x7fffffff
	movss xmm1, dword [ebp-0x2c]
	mulss xmm1, xmm4
	addss xmm0, xmm1
	and dword [ebp-0x28], 0x7fffffff
	movss xmm1, dword [ebp-0x34]
	mulss xmm1, [ebp-0x28]
	addss xmm0, xmm1
	addss xmm0, [ebx+0x10]
	ucomiss xmm2, xmm0
	jae _Z29R_GetNonSunPrimaryLightForBoxPK11GfxViewInfoPKfS3__50
	add esi, 0x1
	add ebx, 0x14
	cmp [ebp-0x30], esi
	jnz _Z29R_GetNonSunPrimaryLightForBoxPK11GfxViewInfoPKfS3__60
_Z29R_GetNonSunPrimaryLightForBoxPK11GfxViewInfoPKfS3__40:
	mov eax, edi
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z29R_GetNonSunPrimaryLightForBoxPK11GfxViewInfoPKfS3__50:
	add edx, 0x1
	add eax, 0x50
	cmp ecx, edx
	jnz _Z29R_GetNonSunPrimaryLightForBoxPK11GfxViewInfoPKfS3__70
_Z29R_GetNonSunPrimaryLightForBoxPK11GfxViewInfoPKfS3__30:
	add edi, 0x1
	add dword [ebp-0x20], 0x44
	add dword [ebp-0x1c], 0x8
	mov edx, rgp
	mov eax, [edx+0x20a0]
	cmp edi, [eax+0xdc]
	jb _Z29R_GetNonSunPrimaryLightForBoxPK11GfxViewInfoPKfS3__80
_Z29R_GetNonSunPrimaryLightForBoxPK11GfxViewInfoPKfS3__10:
	xor edi, edi
	mov eax, edi
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z29R_GetNonSunPrimaryLightForBoxPK11GfxViewInfoPKfS3__20:
	mov edx, [ebp+0x10]
	mov [esp+0xc], edx
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov eax, [ebx+0x28]
	mov [esp+0x4], eax
	lea esi, [ebx+0x1c]
	mov [esp], esi
	call _Z17CullBoxFromSpherePKffS0_S0_
	movzx eax, al
	jmp _Z29R_GetNonSunPrimaryLightForBoxPK11GfxViewInfoPKfS3__90
	nop


;R_LinkBoxEntityToPrimaryLights(unsigned int, unsigned int, float const*, float const*)
_Z30R_LinkBoxEntityToPrimaryLightsjjPKfS0_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x7c
	mov eax, [ebp+0x10]
	movss xmm2, dword [eax]
	mov edx, [ebp+0x14]
	addss xmm2, [edx]
	movss xmm3, dword [_float_0_50000000]
	mulss xmm2, xmm3
	movss [ebp-0x24], xmm2
	movss xmm1, dword [eax+0x4]
	addss xmm1, [edx+0x4]
	mulss xmm1, xmm3
	movss [ebp-0x20], xmm1
	movss xmm0, dword [eax+0x8]
	addss xmm0, [edx+0x8]
	mulss xmm0, xmm3
	movss [ebp-0x1c], xmm0
	subss xmm2, [eax]
	movss [ebp-0x30], xmm2
	subss xmm1, [eax+0x4]
	movss [ebp-0x2c], xmm1
	subss xmm0, [eax+0x8]
	movss [ebp-0x28], xmm0
	mov eax, rgp
	mov eax, [eax+0x20a0]
	mov edi, [eax+0xd8]
	add edi, 0x1
	cmp edi, [eax+0xdc]
	jb _Z30R_LinkBoxEntityToPrimaryLightsjjPKfS0__10
_Z30R_LinkBoxEntityToPrimaryLightsjjPKfS0__80:
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z30R_LinkBoxEntityToPrimaryLightsjjPKfS0__10:
	mov eax, edi
	shl eax, 0x6
	lea eax, [eax+edi*4]
	mov [ebp-0x4c], eax
	lea ebx, [edi*8]
	mov [ebp-0x48], ebx
	mov ebx, eax
_Z30R_LinkBoxEntityToPrimaryLightsjjPKfS0__90:
	mov eax, comWorld
	add ebx, [eax+0xc]
	lea esi, [ebx+0x1c]
	mov eax, [ebp+0x14]
	mov [esp+0x8], eax
	mov edx, [ebp+0x10]
	mov [esp+0x4], edx
	mov [esp], esi
	call _Z16PointToBoxDistSqPKfS0_S0_
	fstp dword [ebp-0x68]
	movss xmm0, dword [ebx+0x28]
	mulss xmm0, xmm0
	movss xmm1, dword [ebp-0x68]
	ucomiss xmm1, xmm0
	jae _Z30R_LinkBoxEntityToPrimaryLightsjjPKfS0__20
	cmp byte [ebx], 0x2
	jz _Z30R_LinkBoxEntityToPrimaryLightsjjPKfS0__30
_Z30R_LinkBoxEntityToPrimaryLightsjjPKfS0__110:
	mov eax, rgp
	mov eax, [eax+0x20a0]
	mov [ebp-0x3c], eax
	mov eax, [ebp-0x48]
	mov edx, [ebp-0x3c]
	add eax, [edx+0x240]
	mov ecx, [eax]
	test ecx, ecx
	jz _Z30R_LinkBoxEntityToPrimaryLightsjjPKfS0__40
	movss xmm6, dword [ebp-0x24]
	subss xmm6, [esi]
	movss xmm7, dword [ebp-0x20]
	subss xmm7, [esi+0x4]
	movss xmm0, dword [ebp-0x1c]
	movss [ebp-0x50], xmm0
	subss xmm0, [esi+0x8]
	movss [ebp-0x50], xmm0
	movss xmm4, dword [ebp-0x30]
	movss xmm1, dword [ebp-0x2c]
	movss [ebp-0x64], xmm1
	movss xmm0, dword [ebp-0x28]
	movss [ebp-0x60], xmm0
	addss xmm1, xmm4
	movss [ebp-0x58], xmm1
	addss xmm0, xmm4
	movss [ebp-0x44], xmm0
	movss xmm1, dword [ebp-0x64]
	addss xmm1, [ebp-0x60]
	movss [ebp-0x40], xmm1
	mov eax, [eax+0x4]
	xor edx, edx
	movss xmm5, dword [_data16_7fffffff]
_Z30R_LinkBoxEntityToPrimaryLightsjjPKfS0__100:
	movaps xmm0, xmm6
	subss xmm0, [eax]
	andps xmm0, xmm5
	movaps xmm1, xmm4
	addss xmm1, [eax+0x24]
	ucomiss xmm0, xmm1
	jae _Z30R_LinkBoxEntityToPrimaryLightsjjPKfS0__50
	movaps xmm0, xmm7
	subss xmm0, [eax+0x4]
	andps xmm0, xmm5
	movss xmm1, dword [ebp-0x64]
	addss xmm1, [eax+0x28]
	ucomiss xmm0, xmm1
	jae _Z30R_LinkBoxEntityToPrimaryLightsjjPKfS0__50
	movss xmm0, dword [ebp-0x50]
	subss xmm0, [eax+0x8]
	andps xmm0, xmm5
	movss xmm1, dword [ebp-0x60]
	addss xmm1, [eax+0x2c]
	ucomiss xmm0, xmm1
	jae _Z30R_LinkBoxEntityToPrimaryLightsjjPKfS0__50
	movaps xmm0, xmm6
	addss xmm0, xmm7
	subss xmm0, [eax+0xc]
	andps xmm0, xmm5
	movss xmm1, dword [ebp-0x58]
	addss xmm1, [eax+0x30]
	ucomiss xmm0, xmm1
	jae _Z30R_LinkBoxEntityToPrimaryLightsjjPKfS0__50
	movaps xmm0, xmm6
	subss xmm0, xmm7
	subss xmm0, [eax+0x10]
	andps xmm0, xmm5
	movss xmm1, dword [ebp-0x58]
	addss xmm1, [eax+0x34]
	ucomiss xmm0, xmm1
	jae _Z30R_LinkBoxEntityToPrimaryLightsjjPKfS0__50
	movss xmm0, dword [ebp-0x50]
	addss xmm0, xmm6
	subss xmm0, [eax+0x14]
	andps xmm0, xmm5
	movss xmm1, dword [ebp-0x44]
	addss xmm1, [eax+0x38]
	ucomiss xmm0, xmm1
	jae _Z30R_LinkBoxEntityToPrimaryLightsjjPKfS0__50
	movaps xmm0, xmm6
	subss xmm0, [ebp-0x50]
	subss xmm0, [eax+0x18]
	andps xmm0, xmm5
	movss xmm1, dword [ebp-0x44]
	addss xmm1, [eax+0x3c]
	ucomiss xmm0, xmm1
	jae _Z30R_LinkBoxEntityToPrimaryLightsjjPKfS0__50
	movss xmm0, dword [ebp-0x50]
	addss xmm0, xmm7
	subss xmm0, [eax+0x1c]
	andps xmm0, xmm5
	movss xmm1, dword [ebp-0x40]
	addss xmm1, [eax+0x40]
	ucomiss xmm0, xmm1
	jae _Z30R_LinkBoxEntityToPrimaryLightsjjPKfS0__50
	movaps xmm0, xmm7
	subss xmm0, [ebp-0x50]
	subss xmm0, [eax+0x20]
	andps xmm0, xmm5
	movss xmm1, dword [ebp-0x40]
	addss xmm1, [eax+0x44]
	ucomiss xmm0, xmm1
	jae _Z30R_LinkBoxEntityToPrimaryLightsjjPKfS0__50
	mov ebx, [eax+0x48]
	mov [ebp-0x5c], ebx
	test ebx, ebx
	jz _Z30R_LinkBoxEntityToPrimaryLightsjjPKfS0__60
	mov ebx, [eax+0x4c]
	xor esi, esi
_Z30R_LinkBoxEntityToPrimaryLightsjjPKfS0__70:
	movss xmm0, dword [ebx]
	movss xmm3, dword [ebx+0x4]
	movss xmm1, dword [ebx+0x8]
	movss [ebp-0x54], xmm1
	movaps xmm2, xmm6
	mulss xmm2, xmm0
	movaps xmm1, xmm7
	mulss xmm1, xmm3
	addss xmm2, xmm1
	movss xmm1, dword [ebp-0x50]
	mulss xmm1, [ebp-0x54]
	addss xmm2, xmm1
	subss xmm2, [ebx+0xc]
	andps xmm2, xmm5
	andps xmm0, xmm5
	mulss xmm0, xmm4
	andps xmm3, xmm5
	mulss xmm3, [ebp-0x64]
	addss xmm0, xmm3
	and dword [ebp-0x54], 0x7fffffff
	movss xmm1, dword [ebp-0x60]
	mulss xmm1, [ebp-0x54]
	addss xmm0, xmm1
	addss xmm0, [ebx+0x10]
	ucomiss xmm2, xmm0
	jae _Z30R_LinkBoxEntityToPrimaryLightsjjPKfS0__50
	add esi, 0x1
	add ebx, 0x14
	cmp [ebp-0x5c], esi
	jnz _Z30R_LinkBoxEntityToPrimaryLightsjjPKfS0__70
_Z30R_LinkBoxEntityToPrimaryLightsjjPKfS0__60:
	mov edx, [ebp-0x3c]
_Z30R_LinkBoxEntityToPrimaryLightsjjPKfS0__40:
	mov eax, [edx+0xd8]
	add eax, 0x1
	mov ecx, edi
	sub ecx, eax
	mov edx, [edx+0xdc]
	sub edx, eax
	mov eax, gfxCfg
	mov eax, [eax+0x4]
	imul eax, [ebp+0x8]
	add eax, [ebp+0xc]
	imul edx, eax
	add ecx, edx
	mov ebx, ecx
	sar ebx, 0x5
	mov eax, [ebp-0x3c]
	mov edx, [eax+0x22c]
	and ecx, 0x1f
	mov eax, 0x1
	shl eax, cl
	or [edx+ebx*4], eax
_Z30R_LinkBoxEntityToPrimaryLightsjjPKfS0__20:
	add edi, 0x1
	add dword [ebp-0x4c], 0x44
	add dword [ebp-0x48], 0x8
	mov edx, rgp
	mov eax, [edx+0x20a0]
	cmp edi, [eax+0xdc]
	jae _Z30R_LinkBoxEntityToPrimaryLightsjjPKfS0__80
	mov ebx, [ebp-0x4c]
	jmp _Z30R_LinkBoxEntityToPrimaryLightsjjPKfS0__90
_Z30R_LinkBoxEntityToPrimaryLightsjjPKfS0__50:
	add edx, 0x1
	add eax, 0x50
	cmp ecx, edx
	jnz _Z30R_LinkBoxEntityToPrimaryLightsjjPKfS0__100
	jmp _Z30R_LinkBoxEntityToPrimaryLightsjjPKfS0__20
_Z30R_LinkBoxEntityToPrimaryLightsjjPKfS0__30:
	movss xmm0, dword [ebx+0x34]
	ucomiss xmm0, [_float_0_00000000]
	jb _Z30R_LinkBoxEntityToPrimaryLightsjjPKfS0__110
	lea eax, [ebp-0x30]
	mov [esp+0x10], eax
	lea eax, [ebp-0x24]
	mov [esp+0xc], eax
	movss [esp+0x8], xmm0
	lea eax, [ebx+0x10]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z15CullBoxFromConePKfS0_fS0_S0_
	test al, al
	jnz _Z30R_LinkBoxEntityToPrimaryLightsjjPKfS0__20
	jmp _Z30R_LinkBoxEntityToPrimaryLightsjjPKfS0__110


;R_IsDynEntVisibleToPrimaryLight(unsigned int, DynEntityDrawType, unsigned int)
_Z31R_IsDynEntVisibleToPrimaryLightj17DynEntityDrawTypej:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov ecx, [ebp+0x10]
	mov eax, rgp
	mov ebx, [eax+0x20a0]
	mov edx, [ebx+0xd8]
	add edx, 0x1
	sub ecx, edx
	mov eax, [ebx+0xdc]
	sub eax, edx
	imul eax, [ebp+0x8]
	add ecx, eax
	mov esi, ecx
	sar esi, 0x5
	mov eax, [ebp+0xc]
	mov edx, [ebx+eax*4+0x230]
	and ecx, 0x1f
	mov eax, 0x1
	shl eax, cl
	test [edx+esi*4], eax
	setnz al
	movzx eax, al
	pop ebx
	pop esi
	pop ebp
	ret


;R_IsEntityVisibleToPrimaryLight(unsigned int, unsigned int, unsigned int)
_Z31R_IsEntityVisibleToPrimaryLightjjj:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov ebx, [ebp+0x8]
	mov ecx, [ebp+0x10]
	mov eax, rgp
	mov esi, [eax+0x20a0]
	mov edx, [esi+0xd8]
	add edx, 0x1
	sub ecx, edx
	mov eax, [esi+0xdc]
	sub eax, edx
	mov edx, gfxCfg
	imul ebx, [edx+0x4]
	add ebx, [ebp+0xc]
	imul eax, ebx
	add ecx, eax
	mov ebx, ecx
	sar ebx, 0x5
	mov edx, [esi+0x22c]
	and ecx, 0x1f
	mov eax, 0x1
	shl eax, cl
	test [edx+ebx*4], eax
	setnz al
	movzx eax, al
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;R_UnlinkDynEntFromPrimaryLights(unsigned int, DynEntityDrawType)
_Z31R_UnlinkDynEntFromPrimaryLightsj17DynEntityDrawType:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	mov eax, rgp
	mov esi, [eax+0x20a0]
	mov eax, [esi+0xd8]
	lea edi, [eax+0x1]
	mov edx, [esi+0xdc]
	cmp edi, edx
	jb _Z31R_UnlinkDynEntFromPrimaryLightsj17DynEntityDrawType_10
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z31R_UnlinkDynEntFromPrimaryLightsj17DynEntityDrawType_20:
	mov eax, [esi+0xd8]
_Z31R_UnlinkDynEntFromPrimaryLightsj17DynEntityDrawType_10:
	add eax, 0x1
	mov ecx, edi
	sub ecx, eax
	sub edx, eax
	mov eax, [ebp+0x8]
	imul eax, edx
	add ecx, eax
	mov ebx, ecx
	sar ebx, 0x5
	mov eax, [ebp+0xc]
	mov edx, [esi+eax*4+0x230]
	and ecx, 0x1f
	mov eax, 0xfffffffe
	rol eax, cl
	and [edx+ebx*4], eax
	add edi, 0x1
	mov eax, rgp
	mov esi, [eax+0x20a0]
	mov edx, [esi+0xdc]
	cmp edx, edi
	ja _Z31R_UnlinkDynEntFromPrimaryLightsj17DynEntityDrawType_20
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;R_UnlinkEntityFromPrimaryLights(unsigned int, unsigned int)
_Z31R_UnlinkEntityFromPrimaryLightsjj:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	mov eax, rgp
	mov esi, [eax+0x20a0]
	mov eax, [esi+0xd8]
	lea edi, [eax+0x1]
	mov edx, [esi+0xdc]
	cmp edi, edx
	jb _Z31R_UnlinkEntityFromPrimaryLightsjj_10
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z31R_UnlinkEntityFromPrimaryLightsjj_20:
	mov eax, [esi+0xd8]
_Z31R_UnlinkEntityFromPrimaryLightsjj_10:
	add eax, 0x1
	mov ecx, edi
	sub ecx, eax
	sub edx, eax
	mov eax, [ebp+0x8]
	mov ebx, gfxCfg
	imul eax, [ebx+0x4]
	add eax, [ebp+0xc]
	imul edx, eax
	add ecx, edx
	mov ebx, ecx
	sar ebx, 0x5
	mov edx, [esi+0x22c]
	and ecx, 0x1f
	mov eax, 0xfffffffe
	rol eax, cl
	and [edx+ebx*4], eax
	add edi, 0x1
	mov eax, rgp
	mov esi, [eax+0x20a0]
	mov edx, [esi+0xdc]
	cmp edx, edi
	ja _Z31R_UnlinkEntityFromPrimaryLightsjj_20
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;R_GetNonSunPrimaryLightForSphere(GfxViewInfo const*, float const*, float)
_Z32R_GetNonSunPrimaryLightForSpherePK11GfxViewInfoPKff:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x8c
	mov edi, [ebp+0xc]
	movss xmm7, dword [ebp+0x10]
	mov eax, rgp
	mov [ebp-0x44], eax
	mov eax, [eax+0x20a0]
	mov ebx, [eax+0xd8]
	add ebx, 0x1
	cmp ebx, [eax+0xdc]
	jae _Z32R_GetNonSunPrimaryLightForSpherePK11GfxViewInfoPKff_10
	mov eax, ebx
	shl eax, 0x6
	lea eax, [eax+ebx*4]
	mov [ebp-0x20], eax
	lea ecx, [ebx*8]
	mov [ebp-0x1c], ecx
	lea eax, [edi+0x4]
	mov [ebp-0x48], eax
	lea edx, [edi+0x8]
	mov [ebp-0x4c], edx
	mov ecx, [ebp-0x44]
	mov [ebp-0x50], ecx
_Z32R_GetNonSunPrimaryLightForSpherePK11GfxViewInfoPKff_80:
	mov eax, comWorld
	mov eax, [eax+0xc]
	add eax, [ebp-0x20]
	lea edx, [eax+0x1c]
	mov [ebp-0x40], edx
	movss xmm0, dword [edi]
	subss xmm0, [eax+0x1c]
	lea ecx, [eax+0x20]
	mov [ebp-0x3c], ecx
	movss xmm2, dword [edi+0x4]
	subss xmm2, [eax+0x20]
	lea esi, [eax+0x24]
	movss xmm1, dword [edi+0x8]
	subss xmm1, [eax+0x24]
	movaps xmm3, xmm7
	addss xmm3, [eax+0x28]
	mulss xmm0, xmm0
	mulss xmm2, xmm2
	addss xmm0, xmm2
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm3, xmm3
	ucomiss xmm0, xmm3
	jae _Z32R_GetNonSunPrimaryLightForSpherePK11GfxViewInfoPKff_20
	cmp byte [eax], 0x2
	jz _Z32R_GetNonSunPrimaryLightForSpherePK11GfxViewInfoPKff_30
_Z32R_GetNonSunPrimaryLightForSpherePK11GfxViewInfoPKff_90:
	mov ecx, [ebp-0x44]
_Z32R_GetNonSunPrimaryLightForSpherePK11GfxViewInfoPKff_110:
	mov eax, [ecx+0x20a0]
	mov eax, [eax+0x240]
	add eax, [ebp-0x1c]
	mov edx, [eax]
	test edx, edx
	jz _Z32R_GetNonSunPrimaryLightForSpherePK11GfxViewInfoPKff_40
	movss xmm5, dword [edi]
	mov ecx, [ebp-0x40]
	subss xmm5, [ecx]
	mov ecx, [ebp-0x48]
	movss xmm6, dword [ecx]
	mov ecx, [ebp-0x3c]
	subss xmm6, [ecx]
	mov ecx, [ebp-0x4c]
	movss xmm0, dword [ecx]
	movss [ebp-0x30], xmm0
	subss xmm0, [esi]
	movss [ebp-0x30], xmm0
	mov ecx, [eax+0x4]
	xor esi, esi
	movss xmm4, dword [_data16_7fffffff]
_Z32R_GetNonSunPrimaryLightForSpherePK11GfxViewInfoPKff_70:
	movaps xmm0, xmm5
	subss xmm0, [ecx]
	andps xmm0, xmm4
	movaps xmm1, xmm7
	addss xmm1, [ecx+0x24]
	ucomiss xmm0, xmm1
	jae _Z32R_GetNonSunPrimaryLightForSpherePK11GfxViewInfoPKff_50
	movaps xmm0, xmm6
	subss xmm0, [ecx+0x4]
	andps xmm0, xmm4
	movaps xmm1, xmm7
	addss xmm1, [ecx+0x28]
	ucomiss xmm0, xmm1
	jae _Z32R_GetNonSunPrimaryLightForSpherePK11GfxViewInfoPKff_50
	movss xmm0, dword [ebp-0x30]
	subss xmm0, [ecx+0x8]
	andps xmm0, xmm4
	movaps xmm1, xmm7
	addss xmm1, [ecx+0x2c]
	ucomiss xmm0, xmm1
	jae _Z32R_GetNonSunPrimaryLightForSpherePK11GfxViewInfoPKff_50
	movaps xmm0, xmm5
	addss xmm0, xmm6
	subss xmm0, [ecx+0xc]
	andps xmm0, xmm4
	movaps xmm1, xmm7
	addss xmm1, [ecx+0x30]
	ucomiss xmm0, xmm1
	jb _Z32R_GetNonSunPrimaryLightForSpherePK11GfxViewInfoPKff_60
_Z32R_GetNonSunPrimaryLightForSpherePK11GfxViewInfoPKff_50:
	add esi, 0x1
	add ecx, 0x50
	cmp edx, esi
	jnz _Z32R_GetNonSunPrimaryLightForSpherePK11GfxViewInfoPKff_70
_Z32R_GetNonSunPrimaryLightForSpherePK11GfxViewInfoPKff_20:
	mov edx, [ebp-0x44]
_Z32R_GetNonSunPrimaryLightForSpherePK11GfxViewInfoPKff_100:
	add ebx, 0x1
	add dword [ebp-0x20], 0x44
	add dword [ebp-0x1c], 0x8
	mov eax, [edx+0x20a0]
	cmp [eax+0xdc], ebx
	ja _Z32R_GetNonSunPrimaryLightForSpherePK11GfxViewInfoPKff_80
_Z32R_GetNonSunPrimaryLightForSpherePK11GfxViewInfoPKff_10:
	xor ebx, ebx
_Z32R_GetNonSunPrimaryLightForSpherePK11GfxViewInfoPKff_40:
	mov eax, ebx
	add esp, 0x8c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z32R_GetNonSunPrimaryLightForSpherePK11GfxViewInfoPKff_30:
	movss xmm0, dword [eax+0x34]
	ucomiss xmm0, [_float_0_00000000]
	jb _Z32R_GetNonSunPrimaryLightForSpherePK11GfxViewInfoPKff_90
	movss [esp+0x10], xmm7
	mov [esp+0xc], edi
	movss [esp+0x8], xmm0
	add eax, 0x10
	mov [esp+0x4], eax
	mov [esp], edx
	movss [ebp-0x68], xmm7
	call _Z18CullSphereFromConePKfS0_fS0_f
	mov edx, [ebp-0x50]
	mov [ebp-0x44], edx
	test al, al
	movss xmm7, dword [ebp-0x68]
	jnz _Z32R_GetNonSunPrimaryLightForSpherePK11GfxViewInfoPKff_100
	mov ecx, edx
	jmp _Z32R_GetNonSunPrimaryLightForSpherePK11GfxViewInfoPKff_110
_Z32R_GetNonSunPrimaryLightForSpherePK11GfxViewInfoPKff_60:
	movaps xmm0, xmm5
	subss xmm0, xmm6
	subss xmm0, [ecx+0x10]
	andps xmm0, xmm4
	movaps xmm1, xmm7
	addss xmm1, [ecx+0x34]
	ucomiss xmm0, xmm1
	jae _Z32R_GetNonSunPrimaryLightForSpherePK11GfxViewInfoPKff_50
	movss xmm0, dword [ebp-0x30]
	addss xmm0, xmm5
	subss xmm0, [ecx+0x14]
	andps xmm0, xmm4
	movaps xmm1, xmm7
	addss xmm1, [ecx+0x38]
	ucomiss xmm0, xmm1
	jae _Z32R_GetNonSunPrimaryLightForSpherePK11GfxViewInfoPKff_50
	movaps xmm0, xmm5
	subss xmm0, [ebp-0x30]
	subss xmm0, [ecx+0x18]
	andps xmm0, xmm4
	movaps xmm1, xmm7
	addss xmm1, [ecx+0x3c]
	ucomiss xmm0, xmm1
	jae _Z32R_GetNonSunPrimaryLightForSpherePK11GfxViewInfoPKff_50
	movss xmm0, dword [ebp-0x30]
	addss xmm0, xmm6
	subss xmm0, [ecx+0x1c]
	andps xmm0, xmm4
	movaps xmm1, xmm7
	addss xmm1, [ecx+0x40]
	ucomiss xmm0, xmm1
	jae _Z32R_GetNonSunPrimaryLightForSpherePK11GfxViewInfoPKff_50
	movaps xmm0, xmm6
	subss xmm0, [ebp-0x30]
	subss xmm0, [ecx+0x20]
	andps xmm0, xmm4
	movaps xmm1, xmm7
	addss xmm1, [ecx+0x44]
	ucomiss xmm0, xmm1
	jae _Z32R_GetNonSunPrimaryLightForSpherePK11GfxViewInfoPKff_50
	mov eax, [ecx+0x48]
	mov [ebp-0x38], eax
	test eax, eax
	jz _Z32R_GetNonSunPrimaryLightForSpherePK11GfxViewInfoPKff_40
	mov eax, [ecx+0x4c]
	mov [ebp-0x6c], eax
	movaps xmm3, xmm7
	addss xmm3, [eax+0x10]
	movss xmm0, dword [ebp-0x30]
	mulss xmm0, [eax+0x8]
	movaps xmm1, xmm5
	mulss xmm1, [eax]
	movaps xmm2, xmm6
	mulss xmm2, [eax+0x4]
	addss xmm1, xmm2
	addss xmm0, xmm1
	subss xmm0, [eax+0xc]
	andps xmm0, xmm4
	ucomiss xmm0, xmm3
	jae _Z32R_GetNonSunPrimaryLightForSpherePK11GfxViewInfoPKff_50
	add eax, 0x14
	mov [ebp-0x2c], eax
	mov eax, [ebp-0x6c]
	add eax, 0x20
	mov [ebp-0x28], eax
	mov dword [ebp-0x34], 0x0
_Z32R_GetNonSunPrimaryLightForSpherePK11GfxViewInfoPKff_120:
	add dword [ebp-0x34], 0x1
	mov eax, [ebp-0x34]
	cmp [ebp-0x38], eax
	jz _Z32R_GetNonSunPrimaryLightForSpherePK11GfxViewInfoPKff_40
	mov eax, [ebp-0x2c]
	mov [ebp-0x6c], eax
	mov eax, [ebp-0x28]
	mov [ebp-0x24], eax
	add dword [ebp-0x2c], 0x14
	add dword [ebp-0x28], 0x14
	movaps xmm3, xmm7
	addss xmm3, [eax+0x4]
	movss xmm0, dword [ebp-0x30]
	mov eax, [ebp-0x6c]
	mulss xmm0, [eax+0x8]
	movaps xmm1, xmm5
	mulss xmm1, [eax]
	movaps xmm2, xmm6
	mulss xmm2, [eax+0x4]
	addss xmm1, xmm2
	addss xmm0, xmm1
	mov eax, [ebp-0x24]
	subss xmm0, [eax]
	andps xmm0, xmm4
	ucomiss xmm0, xmm3
	jb _Z32R_GetNonSunPrimaryLightForSpherePK11GfxViewInfoPKff_120
	jmp _Z32R_GetNonSunPrimaryLightForSpherePK11GfxViewInfoPKff_50


;R_LinkSphereEntityToPrimaryLights(unsigned int, unsigned int, float const*, float)
_Z33R_LinkSphereEntityToPrimaryLightsjjPKff:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov edx, rgp
	mov eax, [edx+0x20a0]
	mov edi, [eax+0xd8]
	add edi, 0x1
	cmp edi, [eax+0xdc]
	jae _Z33R_LinkSphereEntityToPrimaryLightsjjPKff_10
	mov ecx, [ebp+0x10]
	add ecx, 0x4
	mov [ebp-0x24], ecx
	mov eax, [ebp+0x10]
	add eax, 0x8
	mov [ebp-0x20], eax
	mov eax, edi
	shl eax, 0x6
	lea eax, [eax+edi*4]
	mov [ebp-0x1c], eax
	jmp _Z33R_LinkSphereEntityToPrimaryLightsjjPKff_20
_Z33R_LinkSphereEntityToPrimaryLightsjjPKff_40:
	mov eax, rgp
	mov ebx, [eax+0x20a0]
	mov eax, [ebx+0xd8]
	add eax, 0x1
	mov ecx, edi
	sub ecx, eax
	mov edx, [ebx+0xdc]
	sub edx, eax
	mov eax, gfxCfg
	mov eax, [eax+0x4]
	imul eax, [ebp+0x8]
	add eax, [ebp+0xc]
	imul edx, eax
	add ecx, edx
	mov esi, ecx
	sar esi, 0x5
	mov edx, [ebx+0x22c]
	and ecx, 0x1f
	mov eax, 0x1
	shl eax, cl
	or [edx+esi*4], eax
_Z33R_LinkSphereEntityToPrimaryLightsjjPKff_30:
	add edi, 0x1
	add dword [ebp-0x1c], 0x44
	mov edx, rgp
	mov eax, [edx+0x20a0]
	cmp edi, [eax+0xdc]
	jae _Z33R_LinkSphereEntityToPrimaryLightsjjPKff_10
_Z33R_LinkSphereEntityToPrimaryLightsjjPKff_20:
	mov eax, comWorld
	mov eax, [eax+0xc]
	add eax, [ebp-0x1c]
	lea edx, [eax+0x1c]
	mov ecx, [ebp+0x10]
	movss xmm0, dword [ecx]
	subss xmm0, [eax+0x1c]
	mov ecx, [ebp-0x24]
	movss xmm1, dword [ecx]
	subss xmm1, [edx+0x4]
	mov ecx, [ebp-0x20]
	movss xmm2, dword [ecx]
	subss xmm2, [edx+0x8]
	movss xmm3, dword [ebp+0x14]
	addss xmm3, [eax+0x28]
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	mulss xmm3, xmm3
	ucomiss xmm0, xmm3
	jae _Z33R_LinkSphereEntityToPrimaryLightsjjPKff_30
	cmp byte [eax], 0x2
	jnz _Z33R_LinkSphereEntityToPrimaryLightsjjPKff_40
	movss xmm0, dword [eax+0x34]
	ucomiss xmm0, [_float_0_00000000]
	jb _Z33R_LinkSphereEntityToPrimaryLightsjjPKff_40
	movss xmm1, dword [ebp+0x14]
	movss [esp+0x10], xmm1
	mov ecx, [ebp+0x10]
	mov [esp+0xc], ecx
	movss [esp+0x8], xmm0
	add eax, 0x10
	mov [esp+0x4], eax
	mov [esp], edx
	call _Z18CullSphereFromConePKfS0_fS0_f
	test al, al
	jnz _Z33R_LinkSphereEntityToPrimaryLightsjjPKff_30
	jmp _Z33R_LinkSphereEntityToPrimaryLightsjjPKff_40
_Z33R_LinkSphereEntityToPrimaryLightsjjPKff_10:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;R_ClearShadowedPrimaryLightHistory(int)
_Z34R_ClearShadowedPrimaryLightHistoryi:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	lea eax, [eax+eax*8]
	lea eax, [eax*8+s_shadowHistory]
	mov dword [eax+0x40], 0x0
	mov dword [eax+0x44], 0x0
	mov dword [esp+0x8], 0x20
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call _Z10Com_MemsetPvii
	leave
	ret
	nop


;R_IsDynEntVisibleToAnyShadowedPrimaryLight(GfxViewInfo const*, unsigned int, DynEntityDrawType)
_Z42R_IsDynEntVisibleToAnyShadowedPrimaryLightPK11GfxViewInfoj17DynEntityDrawType:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x14
	mov edx, [ebp+0x8]
	mov eax, rgp
	mov eax, [eax+0x20a0]
	mov [ebp-0x18], eax
	mov ecx, eax
	mov eax, [eax+0xd8]
	add eax, 0x1
	mov esi, [ecx+0xdc]
	sub esi, eax
	imul esi, [ebp+0xc]
	sub esi, eax
	mov eax, [edx+0x5b30]
	mov [ebp-0x14], eax
	test eax, eax
	jz _Z42R_IsDynEntVisibleToAnyShadowedPrimaryLightPK11GfxViewInfoj17DynEntityDrawType_10
	mov eax, comWorld
	mov eax, [eax+0x8]
	mov [ebp-0x10], eax
	mov ebx, edx
	xor edi, edi
_Z42R_IsDynEntVisibleToAnyShadowedPrimaryLightPK11GfxViewInfoj17DynEntityDrawType_40:
	movzx eax, byte [ebx+0x5cc0]
	cmp eax, [ebp-0x10]
	jae _Z42R_IsDynEntVisibleToAnyShadowedPrimaryLightPK11GfxViewInfoj17DynEntityDrawType_20
	lea ecx, [esi+eax]
	mov edx, ecx
	sar edx, 0x5
	mov [ebp-0x1c], edx
	mov eax, [ebp+0x10]
	mov edx, [ebp-0x18]
	mov eax, [edx+eax*4+0x230]
	mov [ebp-0x20], eax
	and ecx, 0x1f
	mov edx, 0x1
	shl edx, cl
	mov ecx, edx
	mov edx, [ebp-0x1c]
	test [eax+edx*4], ecx
	jnz _Z42R_IsDynEntVisibleToAnyShadowedPrimaryLightPK11GfxViewInfoj17DynEntityDrawType_30
_Z42R_IsDynEntVisibleToAnyShadowedPrimaryLightPK11GfxViewInfoj17DynEntityDrawType_20:
	add edi, 0x1
	add ebx, 0x1f0
	cmp edi, [ebp-0x14]
	jnz _Z42R_IsDynEntVisibleToAnyShadowedPrimaryLightPK11GfxViewInfoj17DynEntityDrawType_40
_Z42R_IsDynEntVisibleToAnyShadowedPrimaryLightPK11GfxViewInfoj17DynEntityDrawType_10:
	xor eax, eax
	add esp, 0x14
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z42R_IsDynEntVisibleToAnyShadowedPrimaryLightPK11GfxViewInfoj17DynEntityDrawType_30:
	mov eax, 0x1
	add esp, 0x14
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;R_IsEntityVisibleToAnyShadowedPrimaryLight(GfxViewInfo const*, unsigned int)
_Z42R_IsEntityVisibleToAnyShadowedPrimaryLightPK11GfxViewInfoj:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0x8]
	mov eax, rgp
	mov eax, [eax+0x20a0]
	mov [ebp-0x18], eax
	mov ecx, [eax+0xd8]
	add ecx, 0x1
	mov esi, [eax+0xdc]
	sub esi, ecx
	mov eax, [ebx+0x13a0]
	mov edx, gfxCfg
	imul eax, [edx+0x4]
	add eax, [ebp+0xc]
	imul esi, eax
	sub esi, ecx
	mov eax, [ebx+0x5b30]
	mov [ebp-0x14], eax
	test eax, eax
	jz _Z42R_IsEntityVisibleToAnyShadowedPrimaryLightPK11GfxViewInfoj_10
	mov eax, comWorld
	mov eax, [eax+0x8]
	mov [ebp-0x10], eax
	xor edi, edi
_Z42R_IsEntityVisibleToAnyShadowedPrimaryLightPK11GfxViewInfoj_40:
	movzx eax, byte [ebx+0x5cc0]
	cmp eax, [ebp-0x10]
	jae _Z42R_IsEntityVisibleToAnyShadowedPrimaryLightPK11GfxViewInfoj_20
	lea ecx, [esi+eax]
	mov edx, ecx
	sar edx, 0x5
	mov eax, [ebp-0x18]
	mov eax, [eax+0x22c]
	mov [ebp-0x1c], eax
	and ecx, 0x1f
	mov eax, 0x1
	shl eax, cl
	mov ecx, eax
	mov eax, [ebp-0x1c]
	test [eax+edx*4], ecx
	jnz _Z42R_IsEntityVisibleToAnyShadowedPrimaryLightPK11GfxViewInfoj_30
_Z42R_IsEntityVisibleToAnyShadowedPrimaryLightPK11GfxViewInfoj_20:
	add edi, 0x1
	add ebx, 0x1f0
	cmp edi, [ebp-0x14]
	jnz _Z42R_IsEntityVisibleToAnyShadowedPrimaryLightPK11GfxViewInfoj_40
_Z42R_IsEntityVisibleToAnyShadowedPrimaryLightPK11GfxViewInfoj_10:
	xor eax, eax
	add esp, 0x10
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z42R_IsEntityVisibleToAnyShadowedPrimaryLightPK11GfxViewInfoj_30:
	mov eax, 0x1
	add esp, 0x10
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Initialized global or static variables of r_primarylights:
SECTION .data


;Initialized constant data of r_primarylights:
SECTION .rdata
vec3_colorintensity: dd 0x3e991687, 0x3f1645a2, 0x3de978d5, 0x0, 0x7fffffff, 0x0, 0x0, 0x0, 0x7fffffff, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x7fffffff, 0x0, 0x0, 0x0, 0x7fffffff, 0x0, 0x0, 0x0


;Zero initialized global or static variables of r_primarylights:
SECTION .bss
s_shadowHistory: resb 0x180


;All cstrings:
SECTION .rdata
_cstring_too_many_total_s:		db "Too many total shadowable lights (%d)",0ah,0



;All constant floats and doubles:
SECTION .rdata
_float_0_00100000:		dd 0x3a83126f	; 0.001
_float_0_01000000:		dd 0x3c23d70a	; 0.01
_data16_80000000:		dd 0x80000000, 0x0, 0x0, 0x0	; OWORD
_float_0_29899999:		dd 0x3e991687	; 0.299
_float_0_58700001:		dd 0x3f1645a2	; 0.587
_float_0_11400000:		dd 0x3de978d5	; 0.114
_float_1_00000000:		dd 0x3f800000	; 1
_float_0_50000000:		dd 0x3f000000	; 0.5
_float_3402823466385288598117041:		dd 0x7f7fffff	; 3.40282e+38
_float_0_00000000:		dd 0x0	; 0
_data16_7fffffff:		dd 0x7fffffff, 0x0, 0x0, 0x0	; OWORD

