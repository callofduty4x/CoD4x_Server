;Imports of fx_draw:
	extern fx_cull_elem_draw
	extern _Z13FX_CullSpherePK8FxCamerajPKff
	extern _Z20FX_GetVelocityAtTimePK9FxElemDefiffPK13orientation_tPKfPf
	extern fx_drawClouds
	extern fx_randomTable
	extern iInterlockedIncrement
	extern _Z25R_AddParticleCloudToSceneP8Material
	extern _Z14FX_GetElemAxisPK9FxElemDefiPK13orientation_tfPA3_f
	extern _Z10AxisToQuatPA3_KfPf
	extern _Z23R_FilterXModelIntoScenePK6XModelPK18GfxScaledPlacementtPt
	extern _Z24Sys_EnterCriticalSection15CriticalSection
	extern _Z28Phys_ObjGetInterpolatedState9PhysWorldiPfS0_
	extern _Z24Sys_LeaveCriticalSection15CriticalSection
	extern _Z21R_AddOmniLightToScenePKfffff
	extern _Z21R_AddSpotLightToScenePKfS0_ffff
	extern sinf
	extern cosf
	extern _Z22R_ReserveCodeMeshVertsiPt
	extern _Z24R_ReserveCodeMeshIndicesiPP16r_double_index_t
	extern _Z18R_GetCodeMeshVertst
	extern _Z21R_AddCodeMeshDrawSurfP8MaterialP16r_double_index_tjjjPKc
	extern _Z23FX_RunGarbageCollectionP8FxSystem
	extern _Z17FX_GetOrientationPK9FxElemDefPK14FxSpatialFrameS4_iP13orientation_t
	extern _Z27FX_OrientationPosToWorldPosPK13orientation_tPKfPf
	extern floorf
	extern _Z16FX_AddVisBlockerP8FxSystemPKfff
	extern _Z20R_BeginCodeMeshVertsv
	extern _Z22FX_SpriteGenerateVertsP18FxGenerateVertsCmd
	extern _Z21FX_Beam_GenerateVertsP18FxGenerateVertsCmd
	extern _Z26FX_PostLight_GenerateVertsP15FxPostLightInfoP8FxSystem
	extern fx_enable
	extern _Z18R_EndCodeMeshVertsv
	extern _Z24FX_ToggleVisBlockerFrameP8FxSystemS0_
	extern fx_draw
	extern _Z12FX_GetSystemi
	extern _Z15FX_Beam_GetInfov
	extern _Z20FX_PostLight_GetInfov
	extern _Z16FX_SpriteGetInfov
	extern _Z19R_GetLocalClientNumv
	extern cgArray
	extern _Z8AxisCopyPA3_KfPA3_f

;Exports of fx_draw:
	global _GLOBAL__I__Z19FX_EvaluateVisAlphaP20FxElemPreVisualStateP17FxElemVisualState
	global s_drawElemHandler
	global _Z27FX_DrawElem_BillboardSpriteP11FxDrawState
	global _Z26FX_DrawElem_OrientedSpriteP11FxDrawState
	global _Z16FX_DrawElem_TailP11FxDrawState
	global _Z17FX_DrawElem_CloudP11FxDrawState
	global _Z17FX_DrawElem_ModelP11FxDrawState
	global _Z17FX_DrawElem_LightP11FxDrawState
	global _Z21FX_DrawElem_SpotLightP11FxDrawState
	global _ZZ33FX_EvaluateVisualState_DoLightingP20FxElemPreVisualStateP17FxElemVisualStatePK9FxElemDefE7mapping
	global _Z27FX_GenTrail_VertsForSegmentPK23FxTrailSegmentDrawStateP15GfxPackedVertex
	global _Z17FX_GenSpriteVertsP11FxDrawStatePKfS2_S2_
	global _Z16FX_DrawSpotLightP8FxSystem
	global _Z16FX_GenerateVertsP18FxGenerateVertsCmd
	global _Z18FX_DrawSpriteElemsP8FxSystemi
	global _Z19FX_SetupVisualStatePK9FxElemDefPK8FxEffectifP20FxElemPreVisualState
	global _Z21FX_DrawNonSpriteElemsP8FxSystem
	global _Z22FX_EvaluateVisualStateP20FxElemPreVisualStatefP17FxElemVisualState
	global _Z23FX_FillGenerateVertsCmdiP18FxGenerateVertsCmd


SECTION .text


;global constructors keyed to FX_EvaluateVisAlpha(FxElemPreVisualState*, FxElemVisualState*)
_GLOBAL__I__Z19FX_EvaluateVisAlphaP20FxElemPreVisualStateP17FxElemVisualState:
	push ebp
	mov ebp, esp
	mov edx, 0xffff
	mov eax, 0x1
	pop ebp
	jmp _Z41__static_initialization_and_destruction_0ii


;FX_DrawElem_BillboardSprite(FxDrawState*)
_Z27FX_DrawElem_BillboardSpriteP11FxDrawState:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x44
	mov ebx, [ebp+0x8]
	mov eax, fx_cull_elem_draw
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z27FX_DrawElem_BillboardSpriteP11FxDrawState_10
	mov eax, [ebx+0xc]
	test byte [eax+0x1], 0x4
	jz _Z27FX_DrawElem_BillboardSpriteP11FxDrawState_20
	mov ecx, 0x5
	mov edx, [ebx+0x40]
_Z27FX_DrawElem_BillboardSpriteP11FxDrawState_40:
	movss xmm1, dword [ebx+0x7c]
	movss xmm3, dword [ebx+0x78]
	movaps xmm2, xmm3
	subss xmm2, xmm1
	pxor xmm0, xmm0
	cmpss xmm0, xmm2, 0x6
	andps xmm1, xmm0
	andnps xmm0, xmm3
	orps xmm0, xmm1
	movss [esp+0xc], xmm0
	lea eax, [ebx+0x54]
	mov [esp+0x8], eax
	mov [esp+0x4], ecx
	mov [esp], edx
	call _Z13FX_CullSpherePK8FxCamerajPKff
	test al, al
	jnz _Z27FX_DrawElem_BillboardSpriteP11FxDrawState_30
_Z27FX_DrawElem_BillboardSpriteP11FxDrawState_10:
	mov eax, [ebx+0x40]
	lea edx, [eax+0x70]
	movss xmm1, dword [_data16_80000000]
	movss xmm0, dword [eax+0x70]
	xorps xmm0, xmm1
	movss [ebp-0x20], xmm0
	movss xmm0, dword [edx+0x4]
	xorps xmm0, xmm1
	movss [ebp-0x1c], xmm0
	movss xmm0, dword [edx+0x8]
	xorps xmm0, xmm1
	movss [ebp-0x18], xmm0
	lea edx, [eax+0x7c]
	movss xmm0, dword [eax+0x7c]
	xorps xmm0, xmm1
	movss [ebp-0x14], xmm0
	movss xmm0, dword [edx+0x4]
	xorps xmm0, xmm1
	movss [ebp-0x10], xmm0
	movss xmm0, dword [edx+0x8]
	xorps xmm0, xmm1
	movss [ebp-0xc], xmm0
	lea edx, [eax+0x88]
	mov eax, [eax+0x88]
	mov [ebp-0x2c], eax
	mov eax, [edx+0x4]
	mov [ebp-0x28], eax
	mov eax, [edx+0x8]
	mov [ebp-0x24], eax
	lea ecx, [ebp-0x2c]
	lea edx, [ebp-0x14]
	lea eax, [ebp-0x20]
	mov [esp], eax
	mov eax, ebx
	call _Z17FX_GenSpriteVertsP11FxDrawStatePKfS2_S2_
_Z27FX_DrawElem_BillboardSpriteP11FxDrawState_30:
	add esp, 0x44
	pop ebx
	pop ebp
	ret
_Z27FX_DrawElem_BillboardSpriteP11FxDrawState_20:
	mov edx, [ebx+0x40]
	mov ecx, [edx+0x94]
	jmp _Z27FX_DrawElem_BillboardSpriteP11FxDrawState_40
	nop


;FX_DrawElem_OrientedSprite(FxDrawState*)
_Z26FX_DrawElem_OrientedSpriteP11FxDrawState:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov eax, fx_cull_elem_draw
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z26FX_DrawElem_OrientedSpriteP11FxDrawState_10
	mov eax, [ebx+0xc]
	test byte [eax+0x1], 0x4
	jz _Z26FX_DrawElem_OrientedSpriteP11FxDrawState_20
	mov ecx, 0x5
	mov edx, [ebx+0x40]
_Z26FX_DrawElem_OrientedSpriteP11FxDrawState_30:
	movss xmm1, dword [ebx+0x7c]
	movss xmm3, dword [ebx+0x78]
	movaps xmm2, xmm3
	subss xmm2, xmm1
	pxor xmm0, xmm0
	cmpss xmm0, xmm2, 0x6
	andps xmm1, xmm0
	andnps xmm0, xmm3
	orps xmm0, xmm1
	movss [esp+0xc], xmm0
	lea eax, [ebx+0x54]
	mov [esp+0x8], eax
	mov [esp+0x4], ecx
	mov [esp], edx
	call _Z13FX_CullSpherePK8FxCamerajPKff
	test al, al
	jz _Z26FX_DrawElem_OrientedSpriteP11FxDrawState_10
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z26FX_DrawElem_OrientedSpriteP11FxDrawState_10:
	lea ecx, [ebx+0x34]
	lea edx, [ebx+0x28]
	lea eax, [ebx+0x1c]
	mov [ebp+0x8], eax
	mov eax, ebx
	add esp, 0x14
	pop ebx
	pop ebp
	jmp _Z17FX_GenSpriteVertsP11FxDrawStatePKfS2_S2_
_Z26FX_DrawElem_OrientedSpriteP11FxDrawState_20:
	mov edx, [ebx+0x40]
	mov ecx, [edx+0x94]
	jmp _Z26FX_DrawElem_OrientedSpriteP11FxDrawState_30
	nop


;FX_DrawElem_Tail(FxDrawState*)
_Z16FX_DrawElem_TailP11FxDrawState:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov ebx, [ebp+0x8]
	lea esi, [ebx+0x60]
	mov [esp+0x18], esi
	mov eax, [ebx+0x8]
	add eax, 0xc
	mov [esp+0x14], eax
	lea eax, [ebx+0x10]
	mov [esp+0x10], eax
	mov eax, [ebx+0x4c]
	mov [esp+0xc], eax
	mov eax, [ebx+0x48]
	mov [esp+0x8], eax
	mov eax, [ebx+0x44]
	mov [esp+0x4], eax
	mov eax, [ebx+0xc]
	mov [esp], eax
	call _Z20FX_GetVelocityAtTimePK9FxElemDefiffPK13orientation_tPKfPf
	movss xmm3, dword [ebx+0x60]
	lea edx, [ebx+0x64]
	movss xmm1, dword [ebx+0x64]
	lea eax, [ebx+0x68]
	movss xmm2, dword [ebx+0x68]
	movaps xmm0, xmm3
	mulss xmm0, xmm3
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	sqrtss xmm1, xmm0
	movss xmm7, dword [_data16_80000000]
	movaps xmm0, xmm1
	xorps xmm0, xmm7
	pxor xmm2, xmm2
	ucomiss xmm0, xmm2
	jb _Z16FX_DrawElem_TailP11FxDrawState_10
	movss xmm1, dword [_float_1_00000000]
_Z16FX_DrawElem_TailP11FxDrawState_90:
	mulss xmm3, xmm1
	movss [esi], xmm3
	movaps xmm0, xmm1
	mulss xmm0, [edx]
	movss [edx], xmm0
	mulss xmm1, [eax]
	movss [eax], xmm1
	mov eax, fx_cull_elem_draw
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z16FX_DrawElem_TailP11FxDrawState_20
	mov eax, [ebx+0xc]
	test byte [eax+0x1], 0x4
	jz _Z16FX_DrawElem_TailP11FxDrawState_30
	mov edi, 0x5
	mov edx, [ebx+0x40]
_Z16FX_DrawElem_TailP11FxDrawState_80:
	movss xmm0, dword [_float__2_00000000]
	mulss xmm0, [ebx+0x7c]
	lea eax, [ebx+0x54]
	movss xmm1, dword [ebx+0x54]
	movss [ebp-0x50], xmm1
	movaps xmm2, xmm0
	mulss xmm2, [ebx+0x60]
	addss xmm1, xmm2
	movss [ebp-0x40], xmm1
	movss xmm1, dword [eax+0x4]
	movss [ebp-0x4c], xmm1
	movaps xmm2, xmm0
	mulss xmm2, [esi+0x4]
	addss xmm1, xmm2
	movss [ebp-0x44], xmm1
	movss xmm1, dword [eax+0x8]
	movss [ebp-0x48], xmm1
	movaps xmm4, xmm0
	mulss xmm4, [esi+0x8]
	addss xmm4, xmm1
	movss xmm0, dword [ebx+0x78]
	test edi, edi
	jz _Z16FX_DrawElem_TailP11FxDrawState_20
	xorps xmm0, xmm7
	movss [ebp-0x3c], xmm0
	xor ecx, ecx
	lea eax, [edx+0x10]
_Z16FX_DrawElem_TailP11FxDrawState_60:
	movss xmm2, dword [eax]
	movss xmm3, dword [eax+0x4]
	movss xmm5, dword [eax+0x8]
	movss xmm6, dword [edx+0x1c]
	movss xmm0, dword [ebp-0x50]
	mulss xmm0, xmm2
	movss xmm1, dword [ebp-0x4c]
	mulss xmm1, xmm3
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0x48]
	mulss xmm1, xmm5
	addss xmm0, xmm1
	subss xmm0, xmm6
	ucomiss xmm0, [ebp-0x3c]
	ja _Z16FX_DrawElem_TailP11FxDrawState_40
	mulss xmm2, [ebp-0x40]
	mulss xmm3, [ebp-0x44]
	addss xmm2, xmm3
	mulss xmm5, xmm4
	addss xmm2, xmm5
	subss xmm2, xmm6
	ucomiss xmm2, [ebp-0x3c]
	jbe _Z16FX_DrawElem_TailP11FxDrawState_50
_Z16FX_DrawElem_TailP11FxDrawState_40:
	add ecx, 0x1
	add eax, 0x10
	add edx, 0x10
	cmp edi, ecx
	jnz _Z16FX_DrawElem_TailP11FxDrawState_60
_Z16FX_DrawElem_TailP11FxDrawState_20:
	movss xmm1, dword [ebx+0x7c]
	xorps xmm1, xmm7
	lea eax, [ebx+0x54]
	movaps xmm0, xmm1
	mulss xmm0, [esi]
	addss xmm0, [ebx+0x54]
	movss [ebx+0x54], xmm0
	lea ecx, [esi+0x4]
	movaps xmm0, xmm1
	mulss xmm0, [esi+0x4]
	addss xmm0, [ebx+0x58]
	movss [eax+0x4], xmm0
	lea edx, [esi+0x8]
	mulss xmm1, [esi+0x8]
	addss xmm1, [ebx+0x5c]
	movss [eax+0x8], xmm1
	mov eax, [ebx+0x40]
	movss xmm3, dword [eax]
	subss xmm3, [ebx+0x54]
	movss xmm2, dword [eax+0x4]
	subss xmm2, [ebx+0x58]
	movss xmm1, dword [eax+0x8]
	subss xmm1, [ebx+0x5c]
	movaps xmm5, xmm1
	mulss xmm5, [esi+0x4]
	movaps xmm0, xmm2
	mulss xmm0, [esi+0x8]
	subss xmm5, xmm0
	movss [ebp-0x24], xmm5
	movaps xmm0, xmm3
	mulss xmm0, [esi+0x8]
	mulss xmm1, [esi]
	subss xmm0, xmm1
	movss [ebp-0x20], xmm0
	mulss xmm2, [esi]
	mulss xmm3, [esi+0x4]
	subss xmm2, xmm3
	movss [ebp-0x1c], xmm2
	movaps xmm1, xmm5
	mulss xmm1, xmm5
	mulss xmm0, xmm0
	addss xmm1, xmm0
	mulss xmm2, xmm2
	addss xmm1, xmm2
	sqrtss xmm1, xmm1
	movaps xmm0, xmm1
	xorps xmm0, xmm7
	pxor xmm2, xmm2
	ucomiss xmm0, xmm2
	jb _Z16FX_DrawElem_TailP11FxDrawState_70
	movss xmm0, dword [_float_1_00000000]
_Z16FX_DrawElem_TailP11FxDrawState_100:
	movaps xmm3, xmm0
	mulss xmm3, xmm5
	movss [ebp-0x24], xmm3
	movaps xmm4, xmm0
	mulss xmm4, [ebp-0x20]
	movss [ebp-0x20], xmm4
	mulss xmm0, [ebp-0x1c]
	movss [ebp-0x1c], xmm0
	movaps xmm1, xmm4
	mulss xmm1, [edx]
	movaps xmm2, xmm0
	mulss xmm2, [ecx]
	subss xmm1, xmm2
	movss [ebp-0x30], xmm1
	mulss xmm0, [esi]
	movaps xmm1, xmm3
	mulss xmm1, [edx]
	subss xmm0, xmm1
	movss [ebp-0x2c], xmm0
	mulss xmm3, [ecx]
	mulss xmm4, [esi]
	subss xmm3, xmm4
	movss [ebp-0x28], xmm3
	lea edx, [ebp-0x24]
	lea eax, [ebp-0x30]
	mov [esp], eax
	mov ecx, esi
	mov eax, ebx
	call _Z17FX_GenSpriteVertsP11FxDrawStatePKfS2_S2_
_Z16FX_DrawElem_TailP11FxDrawState_50:
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z16FX_DrawElem_TailP11FxDrawState_30:
	mov edx, [ebx+0x40]
	mov edi, [edx+0x94]
	jmp _Z16FX_DrawElem_TailP11FxDrawState_80
_Z16FX_DrawElem_TailP11FxDrawState_10:
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, xmm1
	movaps xmm1, xmm0
	jmp _Z16FX_DrawElem_TailP11FxDrawState_90
_Z16FX_DrawElem_TailP11FxDrawState_70:
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, xmm1
	jmp _Z16FX_DrawElem_TailP11FxDrawState_100


;FX_DrawElem_Cloud(FxDrawState*)
_Z17FX_DrawElem_CloudP11FxDrawState:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov edi, [ebp+0x8]
	mov eax, fx_drawClouds
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z17FX_DrawElem_CloudP11FxDrawState_10
_Z17FX_DrawElem_CloudP11FxDrawState_40:
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z17FX_DrawElem_CloudP11FxDrawState_10:
	lea eax, [edi+0x60]
	mov [ebp-0x4c], eax
	mov edx, [edi+0x8]
	add edx, 0xc
	mov [esp+0x14], edx
	lea ecx, [edi+0x10]
	mov [ebp-0x50], ecx
	mov edx, [edi+0x4c]
	mov ecx, [edi+0x48]
	mov ebx, [edi+0x44]
	mov esi, [edi+0xc]
	mov [esp+0x18], eax
	mov eax, [ebp-0x50]
	mov [esp+0x10], eax
	mov [esp+0xc], edx
	mov [esp+0x8], ecx
	mov [esp+0x4], ebx
	mov [esp], esi
	call _Z20FX_GetVelocityAtTimePK9FxElemDefiffPK13orientation_tPKfPf
	movss xmm0, dword [edi+0x60]
	lea edx, [edi+0x64]
	movss xmm1, dword [edi+0x64]
	lea eax, [edi+0x68]
	movss xmm2, dword [edi+0x68]
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	sqrtss xmm2, xmm0
	movaps xmm0, xmm2
	xorps xmm0, [_data16_80000000]
	pxor xmm4, xmm4
	ucomiss xmm0, xmm4
	jb _Z17FX_DrawElem_CloudP11FxDrawState_20
	movss xmm1, dword [_float_1_00000000]
_Z17FX_DrawElem_CloudP11FxDrawState_120:
	mov ecx, [ebp-0x4c]
	movss xmm0, dword [ecx]
	mulss xmm0, xmm1
	movss [ecx], xmm0
	movss xmm0, dword [edx]
	mulss xmm0, xmm1
	movss [edx], xmm0
	mulss xmm1, [eax]
	movss [eax], xmm1
	mov ecx, [edi+0x98]
	mov edx, [edi+0x94]
	mov eax, fx_randomTable
	movss xmm0, dword [eax+ecx*4+0x70]
	movaps xmm1, xmm0
	mulss xmm1, [edx+0x2c]
	addss xmm1, [edx+0x14]
	mulss xmm1, [edi+0x88]
	mulss xmm0, [edx+0x5c]
	addss xmm0, [edx+0x44]
	mulss xmm0, [edi+0x84]
	addss xmm1, xmm0
	movss [edi+0x80], xmm1
	ucomiss xmm1, xmm4
	jp _Z17FX_DrawElem_CloudP11FxDrawState_30
	jz _Z17FX_DrawElem_CloudP11FxDrawState_40
_Z17FX_DrawElem_CloudP11FxDrawState_30:
	mov eax, fx_cull_elem_draw
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z17FX_DrawElem_CloudP11FxDrawState_50
	mov eax, [edi+0xc]
	test byte [eax+0x1], 0x4
	jz _Z17FX_DrawElem_CloudP11FxDrawState_60
	mov ecx, 0x5
	mov edx, [edi+0x40]
_Z17FX_DrawElem_CloudP11FxDrawState_130:
	movss xmm1, dword [edi+0x7c]
	movss xmm3, dword [edi+0x78]
	movaps xmm2, xmm3
	subss xmm2, xmm1
	movaps xmm0, xmm4
	cmpss xmm0, xmm2, 0x6
	andps xmm1, xmm0
	andnps xmm0, xmm3
	orps xmm0, xmm1
	lea eax, [edi+0x54]
	addss xmm0, [edi+0x80]
	movss [esp+0xc], xmm0
	mov [esp+0x8], eax
	mov [esp+0x4], ecx
	mov [esp], edx
	call _Z13FX_CullSpherePK8FxCamerajPKff
	test al, al
	jnz _Z17FX_DrawElem_CloudP11FxDrawState_40
_Z17FX_DrawElem_CloudP11FxDrawState_50:
	mov eax, [edi]
	add eax, 0x1a0
	mov [esp], eax
	call iInterlockedIncrement
	mov eax, [edi+0x44]
	mov ecx, [edi+0xc]
	movzx edx, byte [ecx+0xb1]
	cmp dl, 0x1
	jz _Z17FX_DrawElem_CloudP11FxDrawState_70
	lea eax, [eax*4+0x54]
	add eax, fx_randomTable
	movzx edx, dl
	movzx eax, word [eax]
	imul edx, eax
	sar edx, 0x10
	shl edx, 0x2
	add edx, [ecx+0xbc]
	mov eax, [edx]
_Z17FX_DrawElem_CloudP11FxDrawState_110:
	mov [esp], eax
	call _Z25R_AddParticleCloudToSceneP8Material
	mov esi, eax
	test eax, eax
	jz _Z17FX_DrawElem_CloudP11FxDrawState_40
	lea eax, [edi+0x6c]
	mov edx, [edi+0x48]
	lea ecx, [edi+0x84]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov [esp], ecx
	call _Z22FX_EvaluateVisualStateP20FxElemPreVisualStatefP17FxElemVisualState
	mov eax, [edi+0x8]
	movss xmm2, dword [edi+0x4c]
	movzx eax, byte [eax+0x2]
	cvtsi2ss xmm1, eax
	mulss xmm1, [edi+0x48]
	mulss xmm1, [_float_0_00392157]
	movaps xmm0, xmm2
	subss xmm0, xmm1
	ucomiss xmm0, [_float_0_00000000]
	jp _Z17FX_DrawElem_CloudP11FxDrawState_80
	jbe _Z17FX_DrawElem_CloudP11FxDrawState_90
_Z17FX_DrawElem_CloudP11FxDrawState_80:
	ucomiss xmm0, [_float_300_00000000]
	jb _Z17FX_DrawElem_CloudP11FxDrawState_100
	movaps xmm2, xmm1
	addss xmm2, [_float_150_00000000]
_Z17FX_DrawElem_CloudP11FxDrawState_90:
	mov eax, [edi+0x44]
	mov edx, [edi+0xc]
	lea ebx, [ebp-0x3c]
	mov [esp+0x10], ebx
	movss [esp+0xc], xmm2
	mov ecx, [ebp-0x50]
	mov [esp+0x8], ecx
	mov [esp+0x4], eax
	mov [esp], edx
	call _Z14FX_GetElemAxisPK9FxElemDefiPK13orientation_tfPA3_f
	mov [esp+0x4], esi
	mov [esp], ebx
	call _Z10AxisToQuatPA3_KfPf
	mov eax, [edi+0x54]
	mov [esi+0x10], eax
	mov eax, [edi+0x58]
	mov [esi+0x14], eax
	mov eax, [edi+0x5c]
	mov [esi+0x18], eax
	mov eax, [edi+0x80]
	mov [esi+0x1c], eax
	mov eax, [edi+0x6c]
	mov [esi+0x2c], eax
	mov eax, [edi+0x78]
	mov [esi+0x30], eax
	mov eax, [edi+0x7c]
	mov [esi+0x34], eax
	movss xmm0, dword [edi+0x54]
	subss xmm0, [edi+0x60]
	movss [esi+0x20], xmm0
	movss xmm0, dword [edi+0x58]
	subss xmm0, [edi+0x64]
	movss [esi+0x24], xmm0
	movss xmm0, dword [edi+0x5c]
	subss xmm0, [edi+0x68]
	movss [esi+0x28], xmm0
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z17FX_DrawElem_CloudP11FxDrawState_70:
	mov eax, [ecx+0xbc]
	jmp _Z17FX_DrawElem_CloudP11FxDrawState_110
_Z17FX_DrawElem_CloudP11FxDrawState_20:
	movss xmm1, dword [_float_1_00000000]
	divss xmm1, xmm2
	jmp _Z17FX_DrawElem_CloudP11FxDrawState_120
_Z17FX_DrawElem_CloudP11FxDrawState_60:
	mov edx, [edi+0x40]
	mov ecx, [edx+0x94]
	jmp _Z17FX_DrawElem_CloudP11FxDrawState_130
_Z17FX_DrawElem_CloudP11FxDrawState_100:
	mulss xmm0, xmm0
	mulss xmm0, [_float__0_00166667]
	addss xmm2, xmm0
	jmp _Z17FX_DrawElem_CloudP11FxDrawState_90


;FX_DrawElem_Model(FxDrawState*)
_Z17FX_DrawElem_ModelP11FxDrawState:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x7c
	mov esi, [ebp+0x8]
	mov edx, [esi+0x94]
	mov ecx, [esi+0x98]
	mov eax, fx_randomTable
	movss xmm0, dword [eax+ecx*4+0x70]
	movaps xmm1, xmm0
	mulss xmm1, [edx+0x2c]
	addss xmm1, [edx+0x14]
	mulss xmm1, [esi+0x88]
	mulss xmm0, [edx+0x5c]
	addss xmm0, [edx+0x44]
	mulss xmm0, [esi+0x84]
	addss xmm1, xmm0
	movss [esi+0x80], xmm1
	pxor xmm3, xmm3
	ucomiss xmm1, xmm3
	jp _Z17FX_DrawElem_ModelP11FxDrawState_10
	jz _Z17FX_DrawElem_ModelP11FxDrawState_20
_Z17FX_DrawElem_ModelP11FxDrawState_10:
	movss xmm2, dword [esi+0x4c]
	mov eax, [esi+0x8]
	movzx eax, byte [eax+0x2]
	cvtsi2ss xmm1, eax
	mulss xmm1, [esi+0x48]
	mulss xmm1, [_float_0_00392157]
	movaps xmm0, xmm2
	subss xmm0, xmm1
	ucomiss xmm3, xmm0
	jae _Z17FX_DrawElem_ModelP11FxDrawState_30
	ucomiss xmm0, [_float_300_00000000]
	jae _Z17FX_DrawElem_ModelP11FxDrawState_40
	mulss xmm0, xmm0
	mulss xmm0, [_float__0_00166667]
	addss xmm2, xmm0
_Z17FX_DrawElem_ModelP11FxDrawState_30:
	lea ebx, [ebp-0x5c]
	mov [esp+0x10], ebx
	movss [esp+0xc], xmm2
	lea eax, [esi+0x10]
	mov [esp+0x8], eax
	mov eax, [esi+0x44]
	mov [esp+0x4], eax
	mov eax, [esi+0xc]
	mov [esp], eax
	call _Z14FX_GetElemAxisPK9FxElemDefiPK13orientation_tfPA3_f
	lea edi, [ebp-0x38]
	mov [esp+0x4], edi
	mov [esp], ebx
	call _Z10AxisToQuatPA3_KfPf
	lea edx, [esi+0x54]
	mov eax, [esi+0x54]
	mov [ebp-0x28], eax
	mov eax, [edx+0x4]
	mov [ebp-0x24], eax
	mov eax, [edx+0x8]
	mov [ebp-0x20], eax
	mov eax, [esi+0x80]
	mov [ebp-0x1c], eax
	mov ecx, [esi+0xc]
	test byte [ecx+0x3], 0x8
	jnz _Z17FX_DrawElem_ModelP11FxDrawState_50
	mov ebx, [esi+0x44]
	movzx eax, byte [ecx+0xb1]
	cmp al, 0x1
	jz _Z17FX_DrawElem_ModelP11FxDrawState_60
_Z17FX_DrawElem_ModelP11FxDrawState_70:
	movzx eax, al
	mov edx, fx_randomTable
	movzx edx, word [edx+ebx*4+0x54]
	imul eax, edx
	sar eax, 0x10
	mov edx, [ecx+0xbc]
	mov edx, [edx+eax*4]
_Z17FX_DrawElem_ModelP11FxDrawState_80:
	mov eax, [esi+0x8]
	add eax, 0x24
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], edi
	mov [esp], edx
	call _Z23R_FilterXModelIntoScenePK6XModelPK18GfxScaledPlacementtPt
_Z17FX_DrawElem_ModelP11FxDrawState_20:
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z17FX_DrawElem_ModelP11FxDrawState_40:
	movaps xmm2, xmm1
	addss xmm2, [_float_150_00000000]
	jmp _Z17FX_DrawElem_ModelP11FxDrawState_30
_Z17FX_DrawElem_ModelP11FxDrawState_50:
	mov dword [esp], 0xb
	call _Z24Sys_EnterCriticalSection15CriticalSection
	mov [esp+0xc], edi
	lea eax, [ebp-0x28]
	mov [esp+0x8], eax
	mov eax, [esi+0x8]
	mov eax, [eax+0x18]
	mov [esp+0x4], eax
	mov dword [esp], 0x1
	call _Z28Phys_ObjGetInterpolatedState9PhysWorldiPfS0_
	mov dword [esp], 0xb
	call _Z24Sys_LeaveCriticalSection15CriticalSection
	mov ecx, [esi+0xc]
	mov ebx, [esi+0x44]
	movzx eax, byte [ecx+0xb1]
	cmp al, 0x1
	jnz _Z17FX_DrawElem_ModelP11FxDrawState_70
_Z17FX_DrawElem_ModelP11FxDrawState_60:
	mov edx, [ecx+0xbc]
	jmp _Z17FX_DrawElem_ModelP11FxDrawState_80
	nop
	add [eax], al


;FX_DrawElem_Light(FxDrawState*)
_Z17FX_DrawElem_LightP11FxDrawState:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov ebx, [ebp+0x8]
	mov eax, fx_cull_elem_draw
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z17FX_DrawElem_LightP11FxDrawState_10
	mov eax, [ebx+0xc]
	test byte [eax+0x1], 0x4
	jz _Z17FX_DrawElem_LightP11FxDrawState_20
	mov ecx, 0x5
	mov edx, [ebx+0x40]
_Z17FX_DrawElem_LightP11FxDrawState_40:
	mov eax, [ebx+0x78]
	mov [esp+0xc], eax
	lea eax, [ebx+0x54]
	mov [esp+0x8], eax
	mov [esp+0x4], ecx
	mov [esp], edx
	call _Z13FX_CullSpherePK8FxCamerajPKff
	test al, al
	jnz _Z17FX_DrawElem_LightP11FxDrawState_30
_Z17FX_DrawElem_LightP11FxDrawState_10:
	lea eax, [ebx+0x6c]
	mov [esp+0x8], eax
	mov eax, [ebx+0x48]
	mov [esp+0x4], eax
	lea eax, [ebx+0x84]
	mov [esp], eax
	call _Z22FX_EvaluateVisualStateP20FxElemPreVisualStatefP17FxElemVisualState
	movzx eax, byte [ebx+0x6c]
	cvtsi2ss xmm0, eax
	movss xmm1, dword [_float_0_00392157]
	mulss xmm0, xmm1
	movss [esp+0x10], xmm0
	movzx eax, byte [ebx+0x6d]
	cvtsi2ss xmm0, eax
	mulss xmm0, xmm1
	movss [esp+0xc], xmm0
	movzx eax, byte [ebx+0x6e]
	cvtsi2ss xmm0, eax
	mulss xmm0, xmm1
	movss [esp+0x8], xmm0
	mov eax, [ebx+0x78]
	mov [esp+0x4], eax
	lea eax, [ebx+0x54]
	mov [esp], eax
	call _Z21R_AddOmniLightToScenePKfffff
_Z17FX_DrawElem_LightP11FxDrawState_30:
	add esp, 0x24
	pop ebx
	pop ebp
	ret
_Z17FX_DrawElem_LightP11FxDrawState_20:
	mov edx, [ebx+0x40]
	mov ecx, [edx+0x94]
	jmp _Z17FX_DrawElem_LightP11FxDrawState_40


;FX_DrawElem_SpotLight(FxDrawState*)
_Z21FX_DrawElem_SpotLightP11FxDrawState:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov ebx, [ebp+0x8]
	mov eax, fx_cull_elem_draw
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z21FX_DrawElem_SpotLightP11FxDrawState_10
	mov eax, [ebx+0xc]
	test byte [eax+0x1], 0x4
	jz _Z21FX_DrawElem_SpotLightP11FxDrawState_20
	mov ecx, 0x5
	mov edx, [ebx+0x40]
_Z21FX_DrawElem_SpotLightP11FxDrawState_40:
	mov eax, [ebx+0x78]
	mov [esp+0xc], eax
	lea eax, [ebx+0x54]
	mov [esp+0x8], eax
	mov [esp+0x4], ecx
	mov [esp], edx
	call _Z13FX_CullSpherePK8FxCamerajPKff
	test al, al
	jnz _Z21FX_DrawElem_SpotLightP11FxDrawState_30
_Z21FX_DrawElem_SpotLightP11FxDrawState_10:
	lea eax, [ebx+0x6c]
	mov [esp+0x8], eax
	mov eax, [ebx+0x48]
	mov [esp+0x4], eax
	lea eax, [ebx+0x84]
	mov [esp], eax
	call _Z22FX_EvaluateVisualStateP20FxElemPreVisualStatefP17FxElemVisualState
	movzx eax, byte [ebx+0x6c]
	cvtsi2ss xmm0, eax
	movss xmm1, dword [_float_0_00392157]
	mulss xmm0, xmm1
	movss [esp+0x14], xmm0
	movzx eax, byte [ebx+0x6d]
	cvtsi2ss xmm0, eax
	mulss xmm0, xmm1
	movss [esp+0x10], xmm0
	movzx eax, byte [ebx+0x6e]
	cvtsi2ss xmm0, eax
	mulss xmm0, xmm1
	movss [esp+0xc], xmm0
	mov eax, [ebx+0x78]
	mov [esp+0x8], eax
	lea eax, [ebx+0x1c]
	mov [esp+0x4], eax
	lea eax, [ebx+0x54]
	mov [esp], eax
	call _Z21R_AddSpotLightToScenePKfS0_ffff
_Z21FX_DrawElem_SpotLightP11FxDrawState_30:
	add esp, 0x24
	pop ebx
	pop ebp
	ret
_Z21FX_DrawElem_SpotLightP11FxDrawState_20:
	mov edx, [ebx+0x40]
	mov ecx, [edx+0x94]
	jmp _Z21FX_DrawElem_SpotLightP11FxDrawState_40
	nop


;__static_initialization_and_destruction_0(int, int)
_Z41__static_initialization_and_destruction_0ii:
	push ebp
	mov ebp, esp
	cmp edx, 0xffff
	jz _Z41__static_initialization_and_destruction_0ii_10
_Z41__static_initialization_and_destruction_0ii_20:
	pop ebp
	ret
_Z41__static_initialization_and_destruction_0ii_10:
	sub eax, 0x1
	jnz _Z41__static_initialization_and_destruction_0ii_20
	mov eax, [g_fltMin__uint4]
	mov [g_fltMin], eax
	mov eax, [g_fltMin__uint4+0x4]
	mov [g_fltMin+0x4], eax
	mov eax, [g_fltMin__uint4+0x8]
	mov [g_fltMin+0x8], eax
	mov eax, [g_fltMin__uint4+0xc]
	mov [g_fltMin+0xc], eax
	mov eax, [g_negativeZero__uint4]
	mov [g_negativeZero], eax
	mov eax, [g_negativeZero__uint4+0x4]
	mov [g_negativeZero+0x4], eax
	mov eax, [g_negativeZero__uint4+0x8]
	mov [g_negativeZero+0x8], eax
	mov eax, [g_negativeZero__uint4+0xc]
	mov [g_negativeZero+0xc], eax
	mov eax, [g_inc__uint4]
	mov [g_inc], eax
	mov eax, [g_inc__uint4+0x4]
	mov [g_inc+0x4], eax
	mov eax, [g_inc__uint4+0x8]
	mov [g_inc+0x8], eax
	mov eax, [g_inc__uint4+0xc]
	mov [g_inc+0xc], eax
	mov eax, [g_swizzleXYZW__uint4]
	mov [g_swizzleXYZW], eax
	mov eax, [g_swizzleXYZW__uint4+0x4]
	mov [g_swizzleXYZW+0x4], eax
	mov eax, [g_swizzleXYZW__uint4+0x8]
	mov [g_swizzleXYZW+0x8], eax
	mov eax, [g_swizzleXYZW__uint4+0xc]
	mov [g_swizzleXYZW+0xc], eax
	mov eax, [g_swizzleYXZW__uint4]
	mov [g_swizzleYXZW], eax
	mov eax, [g_swizzleYXZW__uint4+0x4]
	mov [g_swizzleYXZW+0x4], eax
	mov eax, [g_swizzleYXZW__uint4+0x8]
	mov [g_swizzleYXZW+0x8], eax
	mov eax, [g_swizzleYXZW__uint4+0xc]
	mov [g_swizzleYXZW+0xc], eax
	mov eax, [g_swizzleXZYW__uint4]
	mov [g_swizzleXZYW], eax
	mov eax, [g_swizzleXZYW__uint4+0x4]
	mov [g_swizzleXZYW+0x4], eax
	mov eax, [g_swizzleXZYW__uint4+0x8]
	mov [g_swizzleXZYW+0x8], eax
	mov eax, [g_swizzleXZYW__uint4+0xc]
	mov [g_swizzleXZYW+0xc], eax
	mov eax, [g_swizzleYXWZ__uint4]
	mov [g_swizzleYXWZ], eax
	mov eax, [g_swizzleYXWZ__uint4+0x4]
	mov [g_swizzleYXWZ+0x4], eax
	mov eax, [g_swizzleYXWZ__uint4+0x8]
	mov [g_swizzleYXWZ+0x8], eax
	mov eax, [g_swizzleYXWZ__uint4+0xc]
	mov [g_swizzleYXWZ+0xc], eax
	mov eax, [g_swizzleXAZC__uint4]
	mov [g_swizzleXAZC], eax
	mov eax, [g_swizzleXAZC__uint4+0x4]
	mov [g_swizzleXAZC+0x4], eax
	mov eax, [g_swizzleXAZC__uint4+0x8]
	mov [g_swizzleXAZC+0x8], eax
	mov eax, [g_swizzleXAZC__uint4+0xc]
	mov [g_swizzleXAZC+0xc], eax
	mov eax, [g_swizzleYBWD__uint4]
	mov [g_swizzleYBWD], eax
	mov eax, [g_swizzleYBWD__uint4+0x4]
	mov [g_swizzleYBWD+0x4], eax
	mov eax, [g_swizzleYBWD__uint4+0x8]
	mov [g_swizzleYBWD+0x8], eax
	mov eax, [g_swizzleYBWD__uint4+0xc]
	mov [g_swizzleYBWD+0xc], eax
	mov eax, [g_swizzleXYAB__uint4]
	mov [g_swizzleXYAB], eax
	mov eax, [g_swizzleXYAB__uint4+0x4]
	mov [g_swizzleXYAB+0x4], eax
	mov eax, [g_swizzleXYAB__uint4+0x8]
	mov [g_swizzleXYAB+0x8], eax
	mov eax, [g_swizzleXYAB__uint4+0xc]
	mov [g_swizzleXYAB+0xc], eax
	mov eax, [g_swizzleZWCD__uint4]
	mov [g_swizzleZWCD], eax
	mov eax, [g_swizzleZWCD__uint4+0x4]
	mov [g_swizzleZWCD+0x4], eax
	mov eax, [g_swizzleZWCD__uint4+0x8]
	mov [g_swizzleZWCD+0x8], eax
	mov eax, [g_swizzleZWCD__uint4+0xc]
	mov [g_swizzleZWCD+0xc], eax
	mov eax, [g_swizzleXYZA__uint4]
	mov [g_swizzleXYZA], eax
	mov eax, [g_swizzleXYZA__uint4+0x4]
	mov [g_swizzleXYZA+0x4], eax
	mov eax, [g_swizzleXYZA__uint4+0x8]
	mov [g_swizzleXYZA+0x8], eax
	mov eax, [g_swizzleXYZA__uint4+0xc]
	mov [g_swizzleXYZA+0xc], eax
	mov eax, [g_swizzleYZXW__uint4]
	mov [g_swizzleYZXW], eax
	mov eax, [g_swizzleYZXW__uint4+0x4]
	mov [g_swizzleYZXW+0x4], eax
	mov eax, [g_swizzleYZXW__uint4+0x8]
	mov [g_swizzleYZXW+0x8], eax
	mov eax, [g_swizzleYZXW__uint4+0xc]
	mov [g_swizzleYZXW+0xc], eax
	mov eax, [g_swizzleZXYW__uint4]
	mov [g_swizzleZXYW], eax
	mov eax, [g_swizzleZXYW__uint4+0x4]
	mov [g_swizzleZXYW+0x4], eax
	mov eax, [g_swizzleZXYW__uint4+0x8]
	mov [g_swizzleZXYW+0x8], eax
	mov eax, [g_swizzleZXYW__uint4+0xc]
	mov [g_swizzleZXYW+0xc], eax
	mov eax, [g_swizzleWABW__uint4]
	mov [g_swizzleWABW], eax
	mov eax, [g_swizzleWABW__uint4+0x4]
	mov [g_swizzleWABW+0x4], eax
	mov eax, [g_swizzleWABW__uint4+0x8]
	mov [g_swizzleWABW+0x8], eax
	mov eax, [g_swizzleWABW__uint4+0xc]
	mov [g_swizzleWABW+0xc], eax
	mov eax, [g_swizzleZWAW__uint4]
	mov [g_swizzleZWAW], eax
	mov eax, [g_swizzleZWAW__uint4+0x4]
	mov [g_swizzleZWAW+0x4], eax
	mov eax, [g_swizzleZWAW__uint4+0x8]
	mov [g_swizzleZWAW+0x8], eax
	mov eax, [g_swizzleZWAW__uint4+0xc]
	mov [g_swizzleZWAW+0xc], eax
	mov eax, [g_swizzleYZWA__uint4]
	mov [g_swizzleYZWA], eax
	mov eax, [g_swizzleYZWA__uint4+0x4]
	mov [g_swizzleYZWA+0x4], eax
	mov eax, [g_swizzleYZWA__uint4+0x8]
	mov [g_swizzleYZWA+0x8], eax
	mov eax, [g_swizzleYZWA__uint4+0xc]
	mov [g_swizzleYZWA+0xc], eax
	mov eax, [g_swizzleXXXX__uint4]
	mov [g_swizzleXXXX], eax
	mov eax, [g_swizzleXXXX__uint4+0x4]
	mov [g_swizzleXXXX+0x4], eax
	mov eax, [g_swizzleXXXX__uint4+0x8]
	mov [g_swizzleXXXX+0x8], eax
	mov eax, [g_swizzleXXXX__uint4+0xc]
	mov [g_swizzleXXXX+0xc], eax
	mov eax, [g_swizzleYYYY__uint4]
	mov [g_swizzleYYYY], eax
	mov eax, [g_swizzleYYYY__uint4+0x4]
	mov [g_swizzleYYYY+0x4], eax
	mov eax, [g_swizzleYYYY__uint4+0x8]
	mov [g_swizzleYYYY+0x8], eax
	mov eax, [g_swizzleYYYY__uint4+0xc]
	mov [g_swizzleYYYY+0xc], eax
	mov eax, [g_swizzleZZZZ__uint4]
	mov [g_swizzleZZZZ], eax
	mov eax, [g_swizzleZZZZ__uint4+0x4]
	mov [g_swizzleZZZZ+0x4], eax
	mov eax, [g_swizzleZZZZ__uint4+0x8]
	mov [g_swizzleZZZZ+0x8], eax
	mov eax, [g_swizzleZZZZ__uint4+0xc]
	mov [g_swizzleZZZZ+0xc], eax
	mov eax, [g_swizzleWWWW__uint4]
	mov [g_swizzleWWWW], eax
	mov eax, [g_swizzleWWWW__uint4+0x4]
	mov [g_swizzleWWWW+0x4], eax
	mov eax, [g_swizzleWWWW__uint4+0x8]
	mov [g_swizzleWWWW+0x8], eax
	mov eax, [g_swizzleWWWW__uint4+0xc]
	mov [g_swizzleWWWW+0xc], eax
	mov eax, [g_selectX__uint4]
	mov [g_selectX], eax
	mov eax, [g_selectX__uint4+0x4]
	mov [g_selectX+0x4], eax
	mov eax, [g_selectX__uint4+0x8]
	mov [g_selectX+0x8], eax
	mov eax, [g_selectX__uint4+0xc]
	mov [g_selectX+0xc], eax
	mov eax, [g_selectY__uint4]
	mov [g_selectY], eax
	mov eax, [g_selectY__uint4+0x4]
	mov [g_selectY+0x4], eax
	mov eax, [g_selectY__uint4+0x8]
	mov [g_selectY+0x8], eax
	mov eax, [g_selectY__uint4+0xc]
	mov [g_selectY+0xc], eax
	mov eax, [g_selectZ__uint4]
	mov [g_selectZ], eax
	mov eax, [g_selectZ__uint4+0x4]
	mov [g_selectZ+0x4], eax
	mov eax, [g_selectZ__uint4+0x8]
	mov [g_selectZ+0x8], eax
	mov eax, [g_selectZ__uint4+0xc]
	mov [g_selectZ+0xc], eax
	mov eax, [g_selectW__uint4]
	mov [g_selectW], eax
	mov eax, [g_selectW__uint4+0x4]
	mov [g_selectW+0x4], eax
	mov eax, [g_selectW__uint4+0x8]
	mov [g_selectW+0x8], eax
	mov eax, [g_selectW__uint4+0xc]
	mov [g_selectW+0xc], eax
	mov eax, [g_keepYZW__uint4]
	mov [g_keepYZW], eax
	mov eax, [g_keepYZW__uint4+0x4]
	mov [g_keepYZW+0x4], eax
	mov eax, [g_keepYZW__uint4+0x8]
	mov [g_keepYZW+0x8], eax
	mov eax, [g_keepYZW__uint4+0xc]
	mov [g_keepYZW+0xc], eax
	mov eax, [g_keepXZW__uint4]
	mov [g_keepXZW], eax
	mov eax, [g_keepXZW__uint4+0x4]
	mov [g_keepXZW+0x4], eax
	mov eax, [g_keepXZW__uint4+0x8]
	mov [g_keepXZW+0x8], eax
	mov eax, [g_keepXZW__uint4+0xc]
	mov [g_keepXZW+0xc], eax
	mov eax, [g_keepXYW__uint4]
	mov [g_keepXYW], eax
	mov eax, [g_keepXYW__uint4+0x4]
	mov [g_keepXYW+0x4], eax
	mov eax, [g_keepXYW__uint4+0x8]
	mov [g_keepXYW+0x8], eax
	mov eax, [g_keepXYW__uint4+0xc]
	mov [g_keepXYW+0xc], eax
	mov eax, [g_keepXYZ__uint4]
	mov [g_keepXYZ], eax
	mov eax, [g_keepXYZ__uint4+0x4]
	mov [g_keepXYZ+0x4], eax
	mov eax, [g_keepXYZ__uint4+0x8]
	mov [g_keepXYZ+0x8], eax
	mov eax, [g_keepXYZ__uint4+0xc]
	mov [g_keepXYZ+0xc], eax
	mov eax, [g_keepXY__uint4]
	mov [g_keepXY], eax
	mov eax, [g_keepXY__uint4+0x4]
	mov [g_keepXY+0x4], eax
	mov eax, [g_keepXY__uint4+0x8]
	mov [g_keepXY+0x8], eax
	mov eax, [g_keepXY__uint4+0xc]
	mov [g_keepXY+0xc], eax
	mov eax, [g_keepZW__uint4]
	mov [g_keepZW], eax
	mov eax, [g_keepZW__uint4+0x4]
	mov [g_keepZW+0x4], eax
	mov eax, [g_keepZW__uint4+0x8]
	mov [g_keepZW+0x8], eax
	mov eax, [g_keepZW__uint4+0xc]
	mov [g_keepZW+0xc], eax
	mov eax, [g_keepX__uint4]
	mov [g_keepX], eax
	mov eax, [g_keepX__uint4+0x4]
	mov [g_keepX+0x4], eax
	mov eax, [g_keepX__uint4+0x8]
	mov [g_keepX+0x8], eax
	mov eax, [g_keepX__uint4+0xc]
	mov [g_keepX+0xc], eax
	mov eax, [g_keepZ__uint4]
	mov [g_keepZ], eax
	mov eax, [g_keepZ__uint4+0x4]
	mov [g_keepZ+0x4], eax
	mov eax, [g_keepZ__uint4+0x8]
	mov [g_keepZ+0x8], eax
	mov eax, [g_keepZ__uint4+0xc]
	mov [g_keepZ+0xc], eax
	pop ebp
	ret


;FX_GenTrail_VertsForSegment(FxTrailSegmentDrawState const*, GfxPackedVertex*)
_Z27FX_GenTrail_VertsForSegmentPK23FxTrailSegmentDrawStateP15GfxPackedVertex:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xcc
	xor esi, esi
	mov [ebp-0x90], eax
	mov edi, edx
	mov eax, [eax]
	mov [ebp-0x8c], eax
	mov ecx, [ebp-0x90]
	mov ebx, [ecx+0x28]
	mov [esp], ebx
	call sinf
	fstp dword [ebp-0xbc]
	movss xmm5, dword [ebp-0xbc]
	mov [esp], ebx
	movss [ebp-0xb8], xmm5
	call cosf
	fstp dword [ebp-0xbc]
	movss xmm1, dword [ebp-0xbc]
	mov edx, [ebp-0x90]
	add edx, 0x1c
	mov eax, [ebp-0x90]
	add eax, 0x10
	mov ecx, [ebp-0x90]
	movss xmm0, dword [ecx+0x10]
	movss [ebp-0x9c], xmm0
	movss xmm4, dword [ecx+0x1c]
	mulss xmm0, xmm1
	movss [ebp-0x74], xmm0
	movss xmm5, dword [ebp-0xb8]
	movaps xmm0, xmm5
	mulss xmm0, xmm4
	addss xmm0, [ebp-0x74]
	movss [ebp-0x74], xmm0
	movss xmm7, dword [eax+0x4]
	movss xmm3, dword [edx+0x4]
	movaps xmm0, xmm1
	mulss xmm0, xmm7
	movss [ebp-0x78], xmm0
	movaps xmm0, xmm5
	mulss xmm0, xmm3
	addss xmm0, [ebp-0x78]
	movss [ebp-0x78], xmm0
	movss xmm6, dword [eax+0x8]
	movss xmm2, dword [edx+0x8]
	movaps xmm0, xmm1
	mulss xmm0, xmm6
	movss [ebp-0x7c], xmm0
	movaps xmm0, xmm5
	mulss xmm0, xmm2
	addss xmm0, [ebp-0x7c]
	movss [ebp-0x7c], xmm0
	xorps xmm1, [_data16_80000000]
	movss xmm0, dword [ebp-0x9c]
	mulss xmm0, xmm5
	mulss xmm4, xmm1
	addss xmm4, xmm0
	movss [ebp-0x70], xmm4
	mulss xmm7, xmm5
	mulss xmm3, xmm1
	addss xmm3, xmm7
	movss [ebp-0xc0], xmm3
	mulss xmm5, xmm6
	mulss xmm2, xmm1
	addss xmm5, xmm2
	movss xmm7, dword [ebp-0x74]
	movss [ebp-0x2c], xmm7
	movss xmm0, dword [ebp-0x78]
	movss [ebp-0x28], xmm0
	movss xmm7, dword [ebp-0x7c]
	movss [ebp-0x24], xmm7
	mov dword [ebp-0x20], 0x0
	movss [ebp-0x3c], xmm4
	movss [ebp-0x38], xmm3
	movss [ebp-0x34], xmm5
	mov dword [ebp-0x30], 0x0
	movss xmm0, dword [ecx+0x34]
	movss [ebp-0x88], xmm0
	mov eax, [ebp-0x8c]
	mov eax, [eax+0xc]
	mov [ebp-0x84], eax
	test eax, eax
	jz _Z27FX_GenTrail_VertsForSegmentPK23FxTrailSegmentDrawStateP15GfxPackedVertex_10
	mov edx, edi
	mov dword [ebp-0x80], 0x0
	mov dword [ebp-0x6c], 0x0
	add ecx, 0x4
	mov [ebp-0x94], ecx
	movss xmm6, dword [_float_127_50000000]
	jmp _Z27FX_GenTrail_VertsForSegmentPK23FxTrailSegmentDrawStateP15GfxPackedVertex_20
_Z27FX_GenTrail_VertsForSegmentPK23FxTrailSegmentDrawStateP15GfxPackedVertex_40:
	mov eax, 0x3fff
_Z27FX_GenTrail_VertsForSegmentPK23FxTrailSegmentDrawStateP15GfxPackedVertex_60:
	mov ebx, ecx
	or ebx, eax
	mov [ebp-0x1c], edi
	mov eax, [ebp-0x1c]
	mov ecx, eax
	sar ecx, 0x10
	and ecx, 0xc000
	lea eax, [eax+eax-0x80000000]
	sar eax, 0xe
	cmp eax, 0x3ffe
	jle _Z27FX_GenTrail_VertsForSegmentPK23FxTrailSegmentDrawStateP15GfxPackedVertex_30
	mov eax, 0x3fff
_Z27FX_GenTrail_VertsForSegmentPK23FxTrailSegmentDrawStateP15GfxPackedVertex_80:
	or ecx, eax
	shl ebx, 0x10
	lea eax, [ecx+ebx]
	mov [edx+0x14], eax
	mov eax, [ebp-0x6c]
	mov ecx, [ebp-0x8c]
	add eax, [ecx+0x10]
	movss xmm4, dword [eax+0x8]
	movss xmm0, dword [ebp-0x74]
	mulss xmm0, xmm4
	movss [ebp-0x4c], xmm0
	movss xmm0, dword [ebp-0x78]
	mulss xmm0, xmm4
	movss [ebp-0x48], xmm0
	movss xmm0, dword [ebp-0x7c]
	mulss xmm0, xmm4
	movss [ebp-0x44], xmm0
	pxor xmm0, xmm0
	mulss xmm4, xmm0
	movss [ebp-0x40], xmm4
	movss xmm0, dword [eax+0xc]
	movss xmm1, dword [ebp-0x70]
	mulss xmm1, xmm0
	addss xmm1, [ebp-0x4c]
	movss [ebp-0x5c], xmm1
	movss xmm2, dword [ebp-0xc0]
	mulss xmm2, xmm0
	addss xmm2, [ebp-0x48]
	movss [ebp-0x58], xmm2
	movaps xmm3, xmm0
	mulss xmm3, xmm5
	addss xmm3, [ebp-0x44]
	movss [ebp-0x54], xmm3
	pxor xmm7, xmm7
	mulss xmm0, xmm7
	addss xmm0, xmm4
	movss [ebp-0x50], xmm0
	mulss xmm1, [_float_127_00000000]
	addss xmm1, xmm6
	cvttss2si eax, xmm1
	mov ecx, esi
	mov cl, al
	mulss xmm2, [_float_127_00000000]
	addss xmm2, xmm6
	cvttss2si eax, xmm2
	mov ch, al
	mov esi, ecx
	mulss xmm3, [_float_127_00000000]
	addss xmm3, xmm6
	cvttss2si eax, xmm3
	movzx eax, al
	shl eax, 0x10
	and esi, 0xff00ffff
	or esi, eax
	and esi, 0xffffff
	or esi, 0x3f000000
	mov [ebp-0x4c], esi
	mov [edx+0x18], esi
	mov dword [edx+0x1c], 0x3f7f7ffe
	add edx, 0x20
	add dword [ebp-0x80], 0x1
	add dword [ebp-0x6c], 0x14
	mov eax, [ebp-0x80]
	cmp [ebp-0x84], eax
	jz _Z27FX_GenTrail_VertsForSegmentPK23FxTrailSegmentDrawStateP15GfxPackedVertex_10
_Z27FX_GenTrail_VertsForSegmentPK23FxTrailSegmentDrawStateP15GfxPackedVertex_20:
	mov eax, [ebp-0x6c]
	mov ecx, [ebp-0x8c]
	add eax, [ecx+0x10]
	movss xmm3, dword [eax+0x4]
	mov ecx, [ebp-0x90]
	mulss xmm3, [ecx+0x30]
	movss xmm1, dword [eax]
	mulss xmm1, [ecx+0x2c]
	movss xmm0, dword [ebp-0x74]
	mulss xmm0, xmm1
	addss xmm0, [ecx+0x4]
	movss xmm2, dword [ebp-0x70]
	mulss xmm2, xmm3
	addss xmm0, xmm2
	movss [edx], xmm0
	movss xmm0, dword [ebp-0x78]
	mulss xmm0, xmm1
	mov eax, [ebp-0x94]
	addss xmm0, [eax+0x4]
	movss xmm2, dword [ebp-0xc0]
	mulss xmm2, xmm3
	addss xmm0, xmm2
	movss [edx+0x4], xmm0
	mulss xmm1, [ebp-0x7c]
	addss xmm1, [eax+0x8]
	mulss xmm3, xmm5
	addss xmm1, xmm3
	movss [edx+0x8], xmm1
	mov eax, [ecx+0x38]
	mov [edx+0x10], eax
	mov ecx, [ebp-0x8c]
	mov eax, [ecx+0x10]
	mov ecx, [ebp-0x6c]
	mov edi, [ecx+eax+0x10]
	movss xmm0, dword [ebp-0x88]
	movss [ebp-0x1c], xmm0
	mov eax, [ebp-0x1c]
	mov ecx, eax
	sar ecx, 0x10
	and ecx, 0xc000
	lea eax, [eax+eax-0x80000000]
	sar eax, 0xe
	cmp eax, 0x3ffe
	jg _Z27FX_GenTrail_VertsForSegmentPK23FxTrailSegmentDrawStateP15GfxPackedVertex_40
	cmp eax, 0xffffc000
	jg _Z27FX_GenTrail_VertsForSegmentPK23FxTrailSegmentDrawStateP15GfxPackedVertex_50
	xor eax, eax
	jmp _Z27FX_GenTrail_VertsForSegmentPK23FxTrailSegmentDrawStateP15GfxPackedVertex_60
_Z27FX_GenTrail_VertsForSegmentPK23FxTrailSegmentDrawStateP15GfxPackedVertex_30:
	cmp eax, 0xffffc000
	jg _Z27FX_GenTrail_VertsForSegmentPK23FxTrailSegmentDrawStateP15GfxPackedVertex_70
	xor eax, eax
	jmp _Z27FX_GenTrail_VertsForSegmentPK23FxTrailSegmentDrawStateP15GfxPackedVertex_80
_Z27FX_GenTrail_VertsForSegmentPK23FxTrailSegmentDrawStateP15GfxPackedVertex_10:
	add esp, 0xcc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z27FX_GenTrail_VertsForSegmentPK23FxTrailSegmentDrawStateP15GfxPackedVertex_50:
	and eax, 0x3fff
	jmp _Z27FX_GenTrail_VertsForSegmentPK23FxTrailSegmentDrawStateP15GfxPackedVertex_60
_Z27FX_GenTrail_VertsForSegmentPK23FxTrailSegmentDrawStateP15GfxPackedVertex_70:
	and eax, 0x3fff
	jmp _Z27FX_GenTrail_VertsForSegmentPK23FxTrailSegmentDrawStateP15GfxPackedVertex_80
	nop
	add [eax], al


;FX_GenSpriteVerts(FxDrawState*, float const*, float const*, float const*)
_Z17FX_GenSpriteVertsP11FxDrawStatePKfS2_S2_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x10c
	mov dword [ebp-0x80], 0x0
	mov dword [ebp-0x84], 0x0
	mov edi, eax
	mov [ebp-0x88], edx
	mov [ebp-0x8c], ecx
	mov ebx, [eax]
	add ebx, 0x160
	mov esi, [eax+0x44]
	mov ecx, [eax+0xc]
	movzx eax, byte [ecx+0xb1]
	cmp al, 0x1
	jz _Z17FX_GenSpriteVertsP11FxDrawStatePKfS2_S2__10
	movzx eax, al
	mov edx, fx_randomTable
	movzx edx, word [edx+esi*4+0x54]
	imul eax, edx
	sar eax, 0x10
	mov edx, [ecx+0xbc]
	mov esi, [edx+eax*4]
_Z17FX_GenSpriteVertsP11FxDrawStatePKfS2_S2__200:
	mov ecx, [ebx+0x8]
	cmp ecx, esi
	jz _Z17FX_GenSpriteVertsP11FxDrawStatePKfS2_S2__20
	mov edx, [ebx+0x4]
	test edx, edx
	jnz _Z17FX_GenSpriteVertsP11FxDrawStatePKfS2_S2__30
_Z17FX_GenSpriteVertsP11FxDrawStatePKfS2_S2__20:
	lea eax, [ebp-0x1a]
	mov [esp+0x4], eax
	mov dword [esp], 0x4
	call _Z22R_ReserveCodeMeshVertsiPt
	test al, al
	jnz _Z17FX_GenSpriteVertsP11FxDrawStatePKfS2_S2__40
_Z17FX_GenSpriteVertsP11FxDrawStatePKfS2_S2__50:
	add esp, 0x10c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z17FX_GenSpriteVertsP11FxDrawStatePKfS2_S2__40:
	lea eax, [ebp-0x20]
	mov [esp+0x4], eax
	mov dword [esp], 0x6
	call _Z24R_ReserveCodeMeshIndicesiPP16r_double_index_t
	test al, al
	jz _Z17FX_GenSpriteVertsP11FxDrawStatePKfS2_S2__50
	cmp esi, [ebx+0x8]
	jz _Z17FX_GenSpriteVertsP11FxDrawStatePKfS2_S2__60
	mov eax, [edi+0x4]
	mov eax, [eax]
	mov eax, [eax]
	mov [ebx+0xc], eax
	mov [ebx+0x8], esi
	mov eax, [ebp-0x20]
	mov [ebx], eax
_Z17FX_GenSpriteVertsP11FxDrawStatePKfS2_S2__60:
	add dword [ebx+0x4], 0x6
	lea eax, [edi+0x6c]
	mov [ebp-0x90], eax
	mov [esp+0x8], eax
	mov eax, [edi+0x48]
	mov [esp+0x4], eax
	lea eax, [edi+0x84]
	mov [esp], eax
	call _Z22FX_EvaluateVisualStateP20FxElemPreVisualStatefP17FxElemVisualState
	mov ebx, [edi+0x74]
	mov [esp], ebx
	call sinf
	fstp dword [ebp-0xec]
	movss xmm5, dword [ebp-0xec]
	mov [esp], ebx
	movss [ebp-0xc8], xmm5
	call cosf
	fstp dword [ebp-0xec]
	movss xmm1, dword [ebp-0xec]
	mov edx, [ebp-0x88]
	movss xmm0, dword [edx]
	movss [ebp-0x74], xmm0
	mov eax, [ebp-0x8c]
	movss xmm4, dword [eax]
	mulss xmm0, xmm1
	movss [ebp-0x64], xmm0
	movss xmm5, dword [ebp-0xc8]
	movaps xmm0, xmm5
	mulss xmm0, xmm4
	addss xmm0, [ebp-0x64]
	movss [ebp-0x64], xmm0
	movss xmm0, dword [edx+0x4]
	movss [ebp-0xf0], xmm0
	movss xmm2, dword [eax+0x4]
	mulss xmm0, xmm1
	movss [ebp-0x68], xmm0
	movaps xmm0, xmm5
	mulss xmm0, xmm2
	addss xmm0, [ebp-0x68]
	movss [ebp-0x68], xmm0
	movss xmm7, dword [edx+0x8]
	movss xmm3, dword [eax+0x8]
	movaps xmm6, xmm1
	mulss xmm6, xmm7
	movaps xmm0, xmm5
	mulss xmm0, xmm3
	addss xmm0, xmm6
	movss [ebp-0x6c], xmm0
	xorps xmm1, [_data16_80000000]
	movss xmm0, dword [edi+0x78]
	movss xmm6, dword [ebp-0x64]
	mulss xmm6, xmm0
	movss [ebp-0x58], xmm6
	movss xmm6, dword [ebp-0x68]
	mulss xmm6, xmm0
	movss [ebp-0x5c], xmm6
	mulss xmm0, [ebp-0x6c]
	movss [ebp-0x60], xmm0
	movss xmm0, dword [edi+0x7c]
	movss xmm6, dword [ebp-0x74]
	mulss xmm6, xmm5
	mulss xmm4, xmm1
	addss xmm4, xmm6
	mulss xmm4, xmm0
	movss [ebp-0x54], xmm4
	movss xmm6, dword [ebp-0xf0]
	mulss xmm6, xmm5
	mulss xmm2, xmm1
	addss xmm6, xmm2
	mulss xmm6, xmm0
	movaps xmm4, xmm5
	mulss xmm4, xmm7
	mulss xmm3, xmm1
	addss xmm4, xmm3
	mulss xmm4, xmm0
	lea eax, [edi+0x54]
	movss xmm3, dword [edi+0x54]
	subss xmm3, [ebp-0x58]
	movss xmm1, dword [eax+0x4]
	movaps xmm5, xmm1
	subss xmm5, [ebp-0x5c]
	movss xmm0, dword [eax+0x8]
	movaps xmm7, xmm0
	subss xmm7, [ebp-0x60]
	movss xmm2, dword [ebp-0x58]
	addss xmm2, [edi+0x54]
	movss [ebp-0x48], xmm2
	addss xmm1, [ebp-0x5c]
	movss [ebp-0x4c], xmm1
	addss xmm0, [ebp-0x60]
	movss [ebp-0x50], xmm0
	mov eax, [edi+0xc]
	mov [ebp-0x70], eax
	movzx eax, word [eax+0xae]
	movsx esi, ax
	sub ax, 0x1
	jz _Z17FX_GenSpriteVertsP11FxDrawStatePKfS2_S2__70
	mov eax, [ebp-0x70]
	movzx ebx, byte [eax+0xa8]
	mov eax, ebx
	and eax, 0x3
	jz _Z17FX_GenSpriteVertsP11FxDrawStatePKfS2_S2__80
	sub eax, 0x1
	jz _Z17FX_GenSpriteVertsP11FxDrawStatePKfS2_S2__90
	lea edx, [esi-0x1]
	mov [ebp-0x3c], edx
	mov eax, [edi+0x8]
	movzx ecx, byte [eax+0x1]
	and ecx, edx
_Z17FX_GenSpriteVertsP11FxDrawStatePKfS2_S2__400:
	movzx ebx, bl
	test bl, 0x4
	jz _Z17FX_GenSpriteVertsP11FxDrawStatePKfS2_S2__100
_Z17FX_GenSpriteVertsP11FxDrawStatePKfS2_S2__210:
	cvtsi2ss xmm0, esi
	mulss xmm0, [edi+0x50]
	cvttss2si eax, xmm0
	add ecx, eax
_Z17FX_GenSpriteVertsP11FxDrawStatePKfS2_S2__220:
	and bl, 0x8
	jz _Z17FX_GenSpriteVertsP11FxDrawStatePKfS2_S2__110
	mov edx, [ebp-0x70]
	movzx eax, byte [edx+0xab]
	imul esi, eax
	cmp ecx, esi
	cmovge ecx, [ebp-0x3c]
_Z17FX_GenSpriteVertsP11FxDrawStatePKfS2_S2__110:
	mov ebx, [ebp-0x3c]
	and ebx, ecx
	mov ecx, [ebp-0x70]
	movzx esi, byte [ecx+0xac]
	mov edx, 0x1
	mov eax, edx
	mov ecx, esi
	shl eax, cl
	cvtsi2ss xmm1, eax
	movss xmm0, dword [_float_1_00000000]
	movaps xmm2, xmm0
	divss xmm2, xmm1
	sub eax, 0x1
	and eax, ebx
	cvtsi2ss xmm1, eax
	mulss xmm1, xmm2
	movss [ebp-0x7c], xmm1
	mov eax, [ebp-0x70]
	movzx ecx, byte [eax+0xad]
	shl edx, cl
	cvtsi2ss xmm1, edx
	divss xmm0, xmm1
	mov ecx, esi
	sar ebx, cl
	cvtsi2ss xmm1, ebx
	mulss xmm1, xmm0
	movss [ebp-0x78], xmm1
	addss xmm0, xmm1
	movss [ebp-0x44], xmm0
	addss xmm2, [ebp-0x7c]
	movss [ebp-0x40], xmm2
_Z17FX_GenSpriteVertsP11FxDrawStatePKfS2_S2__390:
	movss xmm2, dword [_float_127_00000000]
	mov eax, [ebp+0x8]
	movss xmm0, dword [eax]
	mulss xmm0, xmm2
	movss xmm1, dword [_float_127_50000000]
	addss xmm0, xmm1
	cvttss2si eax, xmm0
	mov [ebp-0x80], al
	mov edx, [ebp+0x8]
	movss xmm0, dword [edx+0x4]
	mulss xmm0, xmm2
	addss xmm0, xmm1
	cvttss2si eax, xmm0
	mov ecx, [ebp-0x80]
	mov ch, al
	mov [ebp-0x80], ecx
	movss xmm0, dword [edx+0x8]
	mulss xmm0, xmm2
	addss xmm0, xmm1
	cvttss2si eax, xmm0
	movzx eax, al
	shl eax, 0x10
	and ecx, 0xff00ffff
	or ecx, eax
	and ecx, 0xffffff
	or ecx, 0x3f000000
	mov [ebp-0x80], ecx
	movss xmm0, dword [ebp-0x68]
	movss [ebp-0x30], xmm0
	movss xmm0, dword [ebp-0x6c]
	movss [ebp-0x2c], xmm0
	mov dword [ebp-0x28], 0x0
	movss xmm0, dword [ebp-0x64]
	mulss xmm0, xmm2
	movss [ebp-0x64], xmm0
	addss xmm0, xmm1
	cvttss2si eax, xmm0
	mov [ebp-0x84], al
	movss xmm0, dword [ebp-0x68]
	mulss xmm0, xmm2
	movss [ebp-0x68], xmm0
	addss xmm0, xmm1
	cvttss2si eax, xmm0
	mov edx, [ebp-0x84]
	mov dh, al
	mulss xmm2, [ebp-0x6c]
	addss xmm1, xmm2
	cvttss2si eax, xmm1
	movzx eax, al
	shl eax, 0x10
	and edx, 0xff00ffff
	or edx, eax
	and edx, 0xffffff
	or edx, 0x3f000000
	mov [ebp-0x84], edx
	mov [ebp-0x34], edx
	mov edx, [ebp-0x20]
	movzx ecx, word [ebp-0x1a]
	lea eax, [ecx+0x1]
	mov [edx+0x2], ax
	mov [edx], cx
	movzx eax, word [ebp-0x1a]
	add eax, 0x2
	mov [edx+0x6], ax
	mov [edx+0x4], ax
	movzx eax, word [ebp-0x1a]
	mov [edx+0xa], ax
	add eax, 0x3
	mov [edx+0x8], ax
	movzx eax, word [ebp-0x1a]
	mov [esp], eax
	movss [ebp-0xa8], xmm3
	movss [ebp-0xb8], xmm4
	movss [ebp-0xc8], xmm5
	movss [ebp-0xd8], xmm6
	movss [ebp-0xe8], xmm7
	call _Z18R_GetCodeMeshVertst
	mov esi, eax
	movss xmm3, dword [ebp-0xa8]
	movss xmm0, dword [ebp-0x54]
	addss xmm0, xmm3
	movss [eax], xmm0
	movss xmm5, dword [ebp-0xc8]
	movss xmm6, dword [ebp-0xd8]
	movaps xmm0, xmm6
	addss xmm0, xmm5
	movss [eax+0x4], xmm0
	movss xmm4, dword [ebp-0xb8]
	movss xmm7, dword [ebp-0xe8]
	movaps xmm0, xmm4
	addss xmm0, xmm7
	movss [eax+0x8], xmm0
	mov dword [eax+0xc], 0xbf800000
	mov ecx, [ebp-0x80]
	mov [eax+0x18], ecx
	mov eax, [edi+0x6c]
	mov [esi+0x10], eax
	movss xmm0, dword [ebp-0x7c]
	movss [ebp-0x24], xmm0
	mov eax, [ebp-0x24]
	mov edx, eax
	sar edx, 0x10
	and edx, 0xc000
	lea eax, [eax+eax-0x80000000]
	sar eax, 0xe
	cmp eax, 0x3ffe
	jle _Z17FX_GenSpriteVertsP11FxDrawStatePKfS2_S2__120
	mov eax, 0x3fff
_Z17FX_GenSpriteVertsP11FxDrawStatePKfS2_S2__380:
	mov ecx, edx
	or ecx, eax
	movss xmm1, dword [ebp-0x44]
	movss [ebp-0x24], xmm1
	mov eax, [ebp-0x24]
	mov edx, eax
	sar edx, 0x10
	and edx, 0xc000
	lea eax, [eax+eax-0x80000000]
	sar eax, 0xe
	cmp eax, 0x3ffe
	jle _Z17FX_GenSpriteVertsP11FxDrawStatePKfS2_S2__130
	mov eax, 0x3fff
_Z17FX_GenSpriteVertsP11FxDrawStatePKfS2_S2__360:
	or edx, eax
	shl ecx, 0x10
	lea eax, [edx+ecx]
	mov [esi+0x14], eax
	mov eax, [ebp-0x84]
	mov [esi+0x1c], eax
	lea ecx, [esi+0x20]
	subss xmm3, [ebp-0x54]
	movss [esi+0x20], xmm3
	subss xmm5, xmm6
	movss [ecx+0x4], xmm5
	subss xmm7, xmm4
	movss [ecx+0x8], xmm7
	mov dword [ecx+0xc], 0xbf800000
	mov edx, [ebp-0x80]
	mov [ecx+0x18], edx
	mov edx, [ebp-0x90]
	mov eax, [edx]
	mov [ecx+0x10], eax
	movss xmm0, dword [ebp-0x7c]
	movss [ebp-0x24], xmm0
	mov eax, [ebp-0x24]
	mov edx, eax
	sar edx, 0x10
	and edx, 0xc000
	lea eax, [eax+eax-0x80000000]
	sar eax, 0xe
	cmp eax, 0x3ffe
	jle _Z17FX_GenSpriteVertsP11FxDrawStatePKfS2_S2__140
	mov eax, 0x3fff
_Z17FX_GenSpriteVertsP11FxDrawStatePKfS2_S2__340:
	mov ebx, edx
	or ebx, eax
	movss xmm1, dword [ebp-0x78]
	movss [ebp-0x24], xmm1
	mov eax, [ebp-0x24]
	mov edx, eax
	sar edx, 0x10
	and edx, 0xc000
	lea eax, [eax+eax-0x80000000]
	sar eax, 0xe
	cmp eax, 0x3ffe
	jle _Z17FX_GenSpriteVertsP11FxDrawStatePKfS2_S2__150
	mov eax, 0x3fff
_Z17FX_GenSpriteVertsP11FxDrawStatePKfS2_S2__320:
	or edx, eax
	shl ebx, 0x10
	lea eax, [edx+ebx]
	mov [ecx+0x14], eax
	mov eax, [ebp-0x84]
	mov [ecx+0x1c], eax
	lea ecx, [esi+0x40]
	movss xmm0, dword [ebp-0x48]
	subss xmm0, [ebp-0x54]
	movss [esi+0x40], xmm0
	movss xmm0, dword [ebp-0x4c]
	subss xmm0, xmm6
	movss [ecx+0x4], xmm0
	movss xmm0, dword [ebp-0x50]
	subss xmm0, xmm4
	movss [ecx+0x8], xmm0
	mov dword [ecx+0xc], 0xbf800000
	mov edx, [ebp-0x80]
	mov [ecx+0x18], edx
	mov edx, [ebp-0x90]
	mov eax, [edx]
	mov [ecx+0x10], eax
	movss xmm0, dword [ebp-0x40]
	movss [ebp-0x24], xmm0
	mov eax, [ebp-0x24]
	mov edx, eax
	sar edx, 0x10
	and edx, 0xc000
	lea eax, [eax+eax-0x80000000]
	sar eax, 0xe
	cmp eax, 0x3ffe
	jle _Z17FX_GenSpriteVertsP11FxDrawStatePKfS2_S2__160
	mov eax, 0x3fff
_Z17FX_GenSpriteVertsP11FxDrawStatePKfS2_S2__300:
	mov ebx, edx
	or ebx, eax
	movss xmm1, dword [ebp-0x78]
	movss [ebp-0x24], xmm1
	mov eax, [ebp-0x24]
	mov edx, eax
	sar edx, 0x10
	and edx, 0xc000
	lea eax, [eax+eax-0x80000000]
	sar eax, 0xe
	cmp eax, 0x3ffe
	jle _Z17FX_GenSpriteVertsP11FxDrawStatePKfS2_S2__170
	mov eax, 0x3fff
_Z17FX_GenSpriteVertsP11FxDrawStatePKfS2_S2__280:
	or edx, eax
	shl ebx, 0x10
	lea eax, [edx+ebx]
	mov [ecx+0x14], eax
	mov eax, [ebp-0x84]
	mov [ecx+0x1c], eax
	lea ecx, [esi+0x60]
	movss xmm0, dword [ebp-0x54]
	addss xmm0, [ebp-0x48]
	movss [esi+0x60], xmm0
	addss xmm6, [ebp-0x4c]
	movss [ecx+0x4], xmm6
	addss xmm4, [ebp-0x50]
	movss [ecx+0x8], xmm4
	mov dword [ecx+0xc], 0xbf800000
	mov eax, [ebp-0x80]
	mov [ecx+0x18], eax
	mov edx, [ebp-0x90]
	mov eax, [edx]
	mov [ecx+0x10], eax
	movss xmm0, dword [ebp-0x40]
	movss [ebp-0x24], xmm0
	mov eax, [ebp-0x24]
	mov edx, eax
	sar edx, 0x10
	and edx, 0xc000
	lea eax, [eax+eax-0x80000000]
	sar eax, 0xe
	cmp eax, 0x3ffe
	jle _Z17FX_GenSpriteVertsP11FxDrawStatePKfS2_S2__180
	mov eax, 0x3fff
_Z17FX_GenSpriteVertsP11FxDrawStatePKfS2_S2__260:
	mov ebx, edx
	or ebx, eax
	movss xmm1, dword [ebp-0x44]
	movss [ebp-0x24], xmm1
	mov eax, [ebp-0x24]
	mov edx, eax
	sar edx, 0x10
	and edx, 0xc000
	lea eax, [eax+eax-0x80000000]
	sar eax, 0xe
	cmp eax, 0x3ffe
	jle _Z17FX_GenSpriteVertsP11FxDrawStatePKfS2_S2__190
	mov eax, 0x3fff
_Z17FX_GenSpriteVertsP11FxDrawStatePKfS2_S2__240:
	or edx, eax
	shl ebx, 0x10
	lea eax, [edx+ebx]
	mov [ecx+0x14], eax
	mov eax, [ebp-0x84]
	mov [ecx+0x1c], eax
	add esp, 0x10c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z17FX_GenSpriteVertsP11FxDrawStatePKfS2_S2__10:
	mov esi, [ecx+0xbc]
	jmp _Z17FX_GenSpriteVertsP11FxDrawStatePKfS2_S2__200
_Z17FX_GenSpriteVertsP11FxDrawStatePKfS2_S2__30:
	mov eax, [ebx+0xc]
	mov [esp+0x14], eax
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x0
	mov [esp+0x8], edx
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov [esp], ecx
	call _Z21R_AddCodeMeshDrawSurfP8MaterialP16r_double_index_tjjjPKc
	mov dword [ebx+0x4], 0x0
	jmp _Z17FX_GenSpriteVertsP11FxDrawStatePKfS2_S2__20
_Z17FX_GenSpriteVertsP11FxDrawStatePKfS2_S2__80:
	mov eax, [ebp-0x70]
	movzx ecx, byte [eax+0xa9]
	lea edx, [esi-0x1]
	mov [ebp-0x3c], edx
	movzx ebx, bl
	test bl, 0x4
	jnz _Z17FX_GenSpriteVertsP11FxDrawStatePKfS2_S2__210
_Z17FX_GenSpriteVertsP11FxDrawStatePKfS2_S2__100:
	mov eax, [ebp-0x70]
	movzx edx, byte [eax+0xaa]
	test dl, dl
	jz _Z17FX_GenSpriteVertsP11FxDrawStatePKfS2_S2__220
	cvttss2si eax, [edi+0x4c]
	movzx edx, dl
	imul edx, eax
	mov [ebp-0xf4], edx
	mov edx, 0x10624dd3
	mov eax, [ebp-0xf4]
	imul edx
	sar edx, 0x6
	mov eax, [ebp-0xf4]
	sar eax, 0x1f
	sub edx, eax
	add ecx, edx
	jmp _Z17FX_GenSpriteVertsP11FxDrawStatePKfS2_S2__220
_Z17FX_GenSpriteVertsP11FxDrawStatePKfS2_S2__190:
	cmp eax, 0xffffc000
	jg _Z17FX_GenSpriteVertsP11FxDrawStatePKfS2_S2__230
	xor eax, eax
	jmp _Z17FX_GenSpriteVertsP11FxDrawStatePKfS2_S2__240
_Z17FX_GenSpriteVertsP11FxDrawStatePKfS2_S2__180:
	cmp eax, 0xffffc000
	jg _Z17FX_GenSpriteVertsP11FxDrawStatePKfS2_S2__250
	xor eax, eax
	jmp _Z17FX_GenSpriteVertsP11FxDrawStatePKfS2_S2__260
_Z17FX_GenSpriteVertsP11FxDrawStatePKfS2_S2__170:
	cmp eax, 0xffffc000
	jg _Z17FX_GenSpriteVertsP11FxDrawStatePKfS2_S2__270
	xor eax, eax
	jmp _Z17FX_GenSpriteVertsP11FxDrawStatePKfS2_S2__280
_Z17FX_GenSpriteVertsP11FxDrawStatePKfS2_S2__160:
	cmp eax, 0xffffc000
	jg _Z17FX_GenSpriteVertsP11FxDrawStatePKfS2_S2__290
	xor eax, eax
	jmp _Z17FX_GenSpriteVertsP11FxDrawStatePKfS2_S2__300
_Z17FX_GenSpriteVertsP11FxDrawStatePKfS2_S2__150:
	cmp eax, 0xffffc000
	jg _Z17FX_GenSpriteVertsP11FxDrawStatePKfS2_S2__310
	xor eax, eax
	jmp _Z17FX_GenSpriteVertsP11FxDrawStatePKfS2_S2__320
_Z17FX_GenSpriteVertsP11FxDrawStatePKfS2_S2__140:
	cmp eax, 0xffffc000
	jg _Z17FX_GenSpriteVertsP11FxDrawStatePKfS2_S2__330
	xor eax, eax
	jmp _Z17FX_GenSpriteVertsP11FxDrawStatePKfS2_S2__340
_Z17FX_GenSpriteVertsP11FxDrawStatePKfS2_S2__130:
	cmp eax, 0xffffc000
	jg _Z17FX_GenSpriteVertsP11FxDrawStatePKfS2_S2__350
	xor eax, eax
	jmp _Z17FX_GenSpriteVertsP11FxDrawStatePKfS2_S2__360
_Z17FX_GenSpriteVertsP11FxDrawStatePKfS2_S2__120:
	cmp eax, 0xffffc000
	jg _Z17FX_GenSpriteVertsP11FxDrawStatePKfS2_S2__370
	xor eax, eax
	jmp _Z17FX_GenSpriteVertsP11FxDrawStatePKfS2_S2__380
_Z17FX_GenSpriteVertsP11FxDrawStatePKfS2_S2__70:
	pxor xmm0, xmm0
	movss [ebp-0x78], xmm0
	movss [ebp-0x7c], xmm0
	movss xmm1, dword [_float_1_00000000]
	movss [ebp-0x44], xmm1
	movss [ebp-0x40], xmm1
	jmp _Z17FX_GenSpriteVertsP11FxDrawStatePKfS2_S2__390
_Z17FX_GenSpriteVertsP11FxDrawStatePKfS2_S2__90:
	mov eax, [edi+0x44]
	add eax, 0x16
	mov edx, fx_randomTable
	movzx eax, word [edx+eax*4]
	mov ecx, esi
	imul ecx, eax
	sar ecx, 0x10
	lea eax, [esi-0x1]
	mov [ebp-0x3c], eax
	jmp _Z17FX_GenSpriteVertsP11FxDrawStatePKfS2_S2__400
_Z17FX_GenSpriteVertsP11FxDrawStatePKfS2_S2__370:
	and eax, 0x3fff
	jmp _Z17FX_GenSpriteVertsP11FxDrawStatePKfS2_S2__380
_Z17FX_GenSpriteVertsP11FxDrawStatePKfS2_S2__350:
	and eax, 0x3fff
	jmp _Z17FX_GenSpriteVertsP11FxDrawStatePKfS2_S2__360
_Z17FX_GenSpriteVertsP11FxDrawStatePKfS2_S2__330:
	and eax, 0x3fff
	jmp _Z17FX_GenSpriteVertsP11FxDrawStatePKfS2_S2__340
_Z17FX_GenSpriteVertsP11FxDrawStatePKfS2_S2__310:
	and eax, 0x3fff
	jmp _Z17FX_GenSpriteVertsP11FxDrawStatePKfS2_S2__320
_Z17FX_GenSpriteVertsP11FxDrawStatePKfS2_S2__290:
	and eax, 0x3fff
	jmp _Z17FX_GenSpriteVertsP11FxDrawStatePKfS2_S2__300
_Z17FX_GenSpriteVertsP11FxDrawStatePKfS2_S2__270:
	and eax, 0x3fff
	jmp _Z17FX_GenSpriteVertsP11FxDrawStatePKfS2_S2__280
_Z17FX_GenSpriteVertsP11FxDrawStatePKfS2_S2__250:
	and eax, 0x3fff
	jmp _Z17FX_GenSpriteVertsP11FxDrawStatePKfS2_S2__260
_Z17FX_GenSpriteVertsP11FxDrawStatePKfS2_S2__230:
	and eax, 0x3fff
	jmp _Z17FX_GenSpriteVertsP11FxDrawStatePKfS2_S2__240


;FX_DrawSpotLight(FxSystem*)
_Z16FX_DrawSpotLightP8FxSystem:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x12c
	mov edx, [ebp+0x8]
	mov eax, [edx+0x9c0]
	test eax, eax
	jle _Z16FX_DrawSpotLightP8FxSystem_10
	mov esi, [edx+0x9d4]
	mov ecx, edx
	movzx edx, word [edx+0x9c4]
	mov eax, [ecx+0x170]
	lea edi, [eax+edx*4]
	mov [ebp-0xbc], edi
	mov [ebp-0xc0], ecx
	mov [ebp-0x1c], esi
	movzx edx, word [ecx+0x9c6]
	mov eax, [ecx+0x174]
	lea ebx, [eax+edx*4]
	mov ecx, [edi]
	movzx eax, byte [ebx]
	lea edx, [eax*4]
	shl eax, 0x8
	sub eax, edx
	mov [ebp-0xd4], eax
	mov edx, [ecx+0x1c]
	add eax, edx
	mov [ebp-0xd4], eax
	cmp byte [eax+0xb1], 0x0
	jnz _Z16FX_DrawSpotLightP8FxSystem_20
_Z16FX_DrawSpotLightP8FxSystem_40:
	mov eax, [ebp+0x8]
_Z16FX_DrawSpotLightP8FxSystem_130:
	cmp byte [eax+0x9dd], 0x0
	jz _Z16FX_DrawSpotLightP8FxSystem_30
	mov [esp], eax
	call _Z23FX_RunGarbageCollectionP8FxSystem
_Z16FX_DrawSpotLightP8FxSystem_30:
	add esp, 0x12c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z16FX_DrawSpotLightP8FxSystem_20:
	cmp esi, [ebx+0x8]
	jl _Z16FX_DrawSpotLightP8FxSystem_40
	mov [ebp-0xb8], ebx
	mov [ebp-0xb4], eax
	lea ecx, [ebx+0x18]
	mov [ebp-0xd0], ecx
	mov eax, [ebx+0x8]
	mov [ebp-0xcc], eax
	movzx edx, word [edi+0x12]
	add edx, eax
	movzx eax, byte [ebx+0x1]
	lea ecx, [eax+eax*8]
	lea ecx, [eax+ecx*4]
	lea ecx, [edx+ecx*8]
	mov edx, 0x11a3019b
	mov eax, ecx
	mul edx
	mov eax, ecx
	sub eax, edx
	shr eax, 1
	add edx, eax
	shr edx, 0x8
	mov ebx, edx
	shl ebx, 0x5
	mov eax, edx
	shl eax, 0x9
	sub eax, ebx
	sub eax, edx
	sub ecx, eax
	movzx ecx, cx
	mov [ebp-0x7c], ecx
	mov edx, [ebp-0xd4]
	mov eax, [edx+0x34]
	add eax, 0x1
	mov edx, fx_randomTable
	movzx edx, word [edx+ecx*4+0x44]
	imul eax, edx
	sar eax, 0x10
	mov ecx, [ebp-0xd4]
	add eax, [ecx+0x30]
	cvtsi2ss xmm0, eax
	movss [ebp-0x78], xmm0
	mov edx, esi
	sub edx, [ebp-0xcc]
	cvtsi2ss xmm1, edx
	movaps xmm2, xmm1
	divss xmm2, xmm0
	cvttss2si eax, xmm0
	cmp edx, eax
	jl _Z16FX_DrawSpotLightP8FxSystem_50
	movss [ebp-0x74], xmm0
	mov dword [ebp-0x70], 0x3f800000
_Z16FX_DrawSpotLightP8FxSystem_140:
	mov edx, [ebp-0xbc]
	lea ebx, [ebp-0xb0]
	mov [esp+0x10], ebx
	mov eax, [ebp-0x7c]
	mov [esp+0xc], eax
	lea eax, [edx+0x44]
	mov [esp+0x8], eax
	add edx, 0x28
	mov [esp+0x4], edx
	mov eax, [ebp-0xb4]
	mov [esp], eax
	call _Z17FX_GetOrientationPK9FxElemDefPK14FxSpatialFrameS4_iP13orientation_t
	lea edi, [ebp-0x6c]
	mov [esp+0x8], edi
	mov eax, [ebp-0xd0]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z27FX_OrientationPosToWorldPosPK13orientation_tPKfPf
	mov esi, [ebp-0x7c]
	mov ebx, [ebp-0xb4]
	movzx eax, byte [ebx+0xb3]
	cvtsi2ss xmm0, eax
	mulss xmm0, [ebp-0x70]
	movss [esp], xmm0
	movss [ebp-0x108], xmm0
	call floorf
	fstp dword [ebp-0xd8]
	cvttss2si edx, [ebp-0xd8]
	cvtsi2ss xmm1, edx
	movss xmm0, dword [ebp-0x108]
	subss xmm0, xmm1
	movss [ebp-0x3c], xmm0
	movss xmm5, dword [_float_1_00000000]
	movaps xmm1, xmm5
	subss xmm1, xmm0
	movss [ebp-0x38], xmm1
	mov [ebp-0x34], ebx
	mov eax, [ebp-0xbc]
	mov [ebp-0x30], eax
	lea eax, [edx+edx*2]
	shl eax, 0x4
	add eax, [ebx+0xb8]
	mov [ebp-0x2c], eax
	mov [ebp-0x28], esi
	mov dword [ebp-0x24], 0xff
	mov ecx, fx_randomTable
	movss xmm0, dword [ecx+esi*4+0x68]
	lea edx, [eax+0x30]
	movaps xmm1, xmm0
	mulss xmm1, [eax+0x24]
	addss xmm1, [eax+0xc]
	mulss xmm1, [ebp-0x38]
	mulss xmm0, [edx+0x24]
	addss xmm0, [edx+0xc]
	mulss xmm0, [ebp-0x3c]
	addss xmm1, xmm0
	movss [ebp-0x48], xmm1
	test byte [ebx+0x3], 0x10
	jz _Z16FX_DrawSpotLightP8FxSystem_60
	movss xmm0, dword [ecx+esi*4+0x6c]
	movaps xmm1, xmm0
	mulss xmm1, [eax+0x28]
	addss xmm1, [eax+0x10]
	mulss xmm1, [ebp-0x38]
	mulss xmm0, [edx+0x28]
	addss xmm0, [edx+0x10]
	mulss xmm0, [ebp-0x3c]
	addss xmm1, xmm0
_Z16FX_DrawSpotLightP8FxSystem_60:
	movss [ebp-0x44], xmm1
	test byte [ebx+0x1], 0x10
	jnz _Z16FX_DrawSpotLightP8FxSystem_70
_Z16FX_DrawSpotLightP8FxSystem_210:
	mov eax, [ebp-0xc0]
	mov [ebp-0x80], eax
	movss xmm4, dword [ebx+0x18]
	pxor xmm3, xmm3
	ucomiss xmm4, xmm3
	jnz _Z16FX_DrawSpotLightP8FxSystem_80
	jp _Z16FX_DrawSpotLightP8FxSystem_80
	ucomiss xmm3, [ebx+0x20]
	jp _Z16FX_DrawSpotLightP8FxSystem_80
	jz _Z16FX_DrawSpotLightP8FxSystem_90
_Z16FX_DrawSpotLightP8FxSystem_80:
	movss xmm0, dword [ebp-0x6c]
	subss xmm0, [eax]
	movss xmm1, dword [ebp-0x68]
	subss xmm1, [eax+0x4]
	movss xmm2, dword [ebp-0x64]
	subss xmm2, [eax+0x8]
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	sqrtss xmm0, xmm0
	ucomiss xmm4, xmm3
	jnz _Z16FX_DrawSpotLightP8FxSystem_100
	jp _Z16FX_DrawSpotLightP8FxSystem_100
_Z16FX_DrawSpotLightP8FxSystem_150:
	movaps xmm4, xmm5
_Z16FX_DrawSpotLightP8FxSystem_170:
	ucomiss xmm3, [ebx+0x20]
	jnz _Z16FX_DrawSpotLightP8FxSystem_110
	jp _Z16FX_DrawSpotLightP8FxSystem_110
_Z16FX_DrawSpotLightP8FxSystem_190:
	movaps xmm2, xmm5
_Z16FX_DrawSpotLightP8FxSystem_200:
	movaps xmm0, xmm2
	subss xmm0, xmm4
	movaps xmm1, xmm3
	cmpss xmm1, xmm0, 0x6
	andps xmm2, xmm1
	andnps xmm1, xmm4
	orps xmm1, xmm2
	mulss xmm1, [_float_255_00000000]
	addss xmm1, [_float_0_50000000]
	movaps xmm0, xmm1
	xorps xmm1, xmm1
	maxss xmm0, xmm1
	movss xmm1, dword [_data16_4f000000]
	movaps xmm2, xmm1
	cmpss xmm2, xmm0, 0x2
	movss xmm3, dword [_data16_4f800000]
	cmpss xmm3, xmm0, 0x2
	andps xmm1, xmm2
	pslld xmm2, 0x1f
	subps xmm0, xmm1
	cvttps2dq xmm0, xmm0
	paddd xmm0, xmm2
	por xmm0, xmm3
	movdqa [ebp-0xf8], xmm0
	mov eax, [ebp-0xf8]
	mov [ebp-0x24], eax
_Z16FX_DrawSpotLightP8FxSystem_90:
	test byte [ebx+0x1], 0x10
	jnz _Z16FX_DrawSpotLightP8FxSystem_120
_Z16FX_DrawSpotLightP8FxSystem_230:
	mov ecx, [ebp-0xd4]
	movzx edx, byte [ecx+0xb0]
	lea eax, [ebp-0xc0]
	mov [esp], eax
	call dword [edx*4+s_drawElemHandler]
	mov eax, [ebp+0x8]
	jmp _Z16FX_DrawSpotLightP8FxSystem_130
_Z16FX_DrawSpotLightP8FxSystem_10:
	mov eax, edx
	jmp _Z16FX_DrawSpotLightP8FxSystem_130
_Z16FX_DrawSpotLightP8FxSystem_50:
	movss [ebp-0x74], xmm1
	movss [ebp-0x70], xmm2
	jmp _Z16FX_DrawSpotLightP8FxSystem_140
_Z16FX_DrawSpotLightP8FxSystem_100:
	lea eax, [ebx+0x14]
	movaps xmm1, xmm0
	subss xmm1, [ebx+0x14]
	ucomiss xmm3, xmm1
	ja _Z16FX_DrawSpotLightP8FxSystem_150
	movss xmm2, dword [eax+0x4]
	ucomiss xmm2, xmm1
	jbe _Z16FX_DrawSpotLightP8FxSystem_160
	divss xmm1, xmm2
	movaps xmm4, xmm5
	subss xmm4, xmm1
	jmp _Z16FX_DrawSpotLightP8FxSystem_170
_Z16FX_DrawSpotLightP8FxSystem_110:
	lea eax, [ebx+0x1c]
	subss xmm0, [ebx+0x1c]
	ucomiss xmm3, xmm0
	ja _Z16FX_DrawSpotLightP8FxSystem_180
	movss xmm1, dword [eax+0x4]
	ucomiss xmm1, xmm0
	jbe _Z16FX_DrawSpotLightP8FxSystem_190
	divss xmm0, xmm1
	movaps xmm1, xmm5
	subss xmm1, xmm0
	movaps xmm2, xmm5
	subss xmm2, xmm1
	jmp _Z16FX_DrawSpotLightP8FxSystem_200
_Z16FX_DrawSpotLightP8FxSystem_70:
	mov eax, [ebp-0x28]
	movss xmm3, dword [ecx+eax*4+0x5c]
	movaps xmm2, xmm5
	subss xmm2, xmm3
	mov edx, [ebp-0x2c]
	lea ecx, [edx+0x30]
	movzx eax, byte [edx+0x3]
	cvtsi2ss xmm1, eax
	mulss xmm1, xmm2
	movzx eax, byte [edx+0x1b]
	cvtsi2ss xmm0, eax
	mulss xmm0, xmm3
	addss xmm1, xmm0
	mulss xmm1, [ebp-0x38]
	movzx eax, byte [ecx+0x3]
	cvtsi2ss xmm0, eax
	mulss xmm0, xmm2
	movzx eax, byte [ecx+0x1b]
	cvtsi2ss xmm2, eax
	mulss xmm3, xmm2
	addss xmm0, xmm3
	mulss xmm0, [ebp-0x3c]
	addss xmm1, xmm0
	addss xmm1, [_float_0_50000000]
	movss [esp], xmm1
	movss [ebp-0x118], xmm5
	call floorf
	fstp dword [ebp-0xdc]
	cvttss2si eax, [ebp-0xdc]
	mov [ebp-0x51], al
	movss xmm5, dword [ebp-0x118]
	jmp _Z16FX_DrawSpotLightP8FxSystem_210
_Z16FX_DrawSpotLightP8FxSystem_120:
	movzx eax, byte [ebp-0x51]
	imul eax, [ebp-0x24]
	mov edx, eax
	shr edx, 0x8
	js _Z16FX_DrawSpotLightP8FxSystem_220
	cvtsi2ss xmm0, edx
_Z16FX_DrawSpotLightP8FxSystem_240:
	mulss xmm0, [_float_0_00392157]
	movss [esp+0xc], xmm0
	mov eax, [ebp-0x48]
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z16FX_AddVisBlockerP8FxSystemPKfff
	jmp _Z16FX_DrawSpotLightP8FxSystem_230
_Z16FX_DrawSpotLightP8FxSystem_160:
	movaps xmm4, xmm3
	jmp _Z16FX_DrawSpotLightP8FxSystem_170
_Z16FX_DrawSpotLightP8FxSystem_220:
	shr eax, 0x9
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm0, eax
	addss xmm0, xmm0
	jmp _Z16FX_DrawSpotLightP8FxSystem_240
_Z16FX_DrawSpotLightP8FxSystem_180:
	movaps xmm2, xmm3
	jmp _Z16FX_DrawSpotLightP8FxSystem_200
	nop


;FX_GenerateVerts(FxGenerateVertsCmd*)
_Z16FX_GenerateVertsP18FxGenerateVertsCmd:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov ebx, [ebp+0x8]
	mov esi, [ebx]
	call _Z20R_BeginCodeMeshVertsv
	mov edi, [esi+0x9d4]
	test edi, edi
	js _Z16FX_GenerateVertsP18FxGenerateVertsCmd_10
	mov [esp], ebx
	call _Z22FX_SpriteGenerateVertsP18FxGenerateVertsCmd
	mov [esp], ebx
	call _Z21FX_Beam_GenerateVertsP18FxGenerateVertsCmd
	mov [esp+0x4], esi
	mov eax, [ebx+0x8]
	mov [esp], eax
	call _Z26FX_PostLight_GenerateVertsP15FxPostLightInfoP8FxSystem
	mov eax, fx_enable
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z16FX_GenerateVertsP18FxGenerateVertsCmd_20
_Z16FX_GenerateVertsP18FxGenerateVertsCmd_30:
	call _Z18R_EndCodeMeshVertsv
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z24FX_ToggleVisBlockerFrameP8FxSystemS0_
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z16FX_GenerateVertsP18FxGenerateVertsCmd_20:
	mov eax, fx_draw
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z16FX_GenerateVertsP18FxGenerateVertsCmd_30
	mov [esp+0x4], edi
	mov [esp], esi
	call _Z18FX_DrawSpriteElemsP8FxSystemi
	call _Z18R_EndCodeMeshVertsv
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z24FX_ToggleVisBlockerFrameP8FxSystemS0_
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z16FX_GenerateVertsP18FxGenerateVertsCmd_10:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z18R_EndCodeMeshVertsv


;FX_DrawSpriteElems(FxSystem*, int)
_Z18FX_DrawSpriteElemsP8FxSystemi:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xb7c
	mov eax, [ebp+0x8]
	mov dword [eax+0x1a0], 0x0
	add eax, 0x160
	mov [ebp-0xa80], eax
	mov edx, [ebp+0x8]
	mov dword [edx+0x160], 0x0
	mov dword [eax+0x4], 0x0
	mov dword [eax+0xc], 0x0
	mov dword [eax+0x8], 0x0
	mov ecx, [edx+0x1b0]
	mov [ebp-0xa84], ecx
	mov eax, [edx+0x1b4]
	cmp eax, ecx
	jz _Z18FX_DrawSpriteElemsP8FxSystemi_10
	mov dword [ebp-0xa7c], 0x0
	mov ebx, fx_randomTable
	mov [ebp-0xb18], ebx
	mov edx, [ebp+0x8]
_Z18FX_DrawSpriteElemsP8FxSystemi_290:
	mov eax, [ebp-0xa84]
	and eax, 0x3ff
	movzx eax, word [edx+eax*2+0x1bc]
	mov [ebp-0xa12], ax
	movzx edx, ax
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x170]
	lea edx, [eax+edx*4]
	mov [ebp-0xa18], edx
	mov edi, edx
	mov [ebp-0x154], edx
	mov ebx, [ebp+0xc]
	mov [ebp-0xb4], ebx
	movzx edx, word [edx+0x8]
	cmp dx, 0xffff
	jz _Z18FX_DrawSpriteElemsP8FxSystemi_20
	mov [ebp-0x158], ecx
	mov eax, [edi]
	mov eax, [eax+0x1c]
	mov [ebp-0xa70], eax
_Z18FX_DrawSpriteElemsP8FxSystemi_130:
	movzx edx, dx
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x174]
	lea edx, [eax+edx*4]
	mov [ebp-0xa74], edx
	movzx eax, byte [edx]
	lea edx, [eax*4]
	shl eax, 0x8
	sub eax, edx
	add eax, [ebp-0xa70]
	mov [ebp-0xa6c], eax
	cmp byte [eax+0xb1], 0x0
	jz _Z18FX_DrawSpriteElemsP8FxSystemi_30
	mov ebx, [ebp-0xa74]
	mov eax, [ebx+0x8]
	cmp eax, [ebp-0xb4]
	jg _Z18FX_DrawSpriteElemsP8FxSystemi_40
	mov edx, ebx
	mov ecx, ebx
	mov [ebp-0x150], ebx
	mov eax, [ebp-0xa6c]
	mov [ebp-0xb04], eax
	mov [ebp-0x14c], eax
	add ebx, 0x18
	mov [ebp-0xa68], ebx
	mov esi, [edx+0x8]
	mov edi, [ebp-0x154]
	movzx edx, word [edi+0x12]
	lea edx, [esi+edx]
	movzx eax, byte [ecx+0x1]
	lea ecx, [eax+eax*8]
	lea ecx, [eax+ecx*4]
	lea ecx, [edx+ecx*8]
	mov edx, 0x11a3019b
	mov eax, ecx
	mul edx
	mov eax, ecx
	sub eax, edx
	shr eax, 1
	add edx, eax
	shr edx, 0x8
	mov ebx, edx
	shl ebx, 0x5
	mov eax, edx
	shl eax, 0x9
	sub eax, ebx
	sub eax, edx
	sub ecx, eax
	movzx ecx, cx
	mov [ebp-0x114], ecx
	mov edx, [ebp-0xb04]
	mov eax, [edx+0x34]
	add eax, 0x1
	mov edx, fx_randomTable
	movzx edx, word [edx+ecx*4+0x44]
	imul eax, edx
	sar eax, 0x10
	mov ecx, [ebp-0xb04]
	add eax, [ecx+0x30]
	cvtsi2ss xmm0, eax
	movss [ebp-0x110], xmm0
	mov eax, [ebp-0xb4]
	sub eax, esi
	cvtsi2ss xmm1, eax
	movaps xmm2, xmm1
	divss xmm2, xmm0
	cvttss2si edx, xmm0
	cmp eax, edx
	jl _Z18FX_DrawSpriteElemsP8FxSystemi_50
	movss [ebp-0x10c], xmm0
	mov dword [ebp-0x108], 0x3f800000
_Z18FX_DrawSpriteElemsP8FxSystemi_450:
	lea ebx, [ebp-0x148]
	mov [esp+0x10], ebx
	mov eax, [ebp-0x114]
	mov [esp+0xc], eax
	lea eax, [edi+0x44]
	mov [esp+0x8], eax
	lea eax, [edi+0x28]
	mov [esp+0x4], eax
	mov eax, [ebp-0x14c]
	mov [esp], eax
	call _Z17FX_GetOrientationPK9FxElemDefPK14FxSpatialFrameS4_iP13orientation_t
	lea eax, [ebp-0x104]
	mov [esp+0x8], eax
	mov edx, [ebp-0xa68]
	mov [esp+0x4], edx
	mov [esp], ebx
	call _Z27FX_OrientationPosToWorldPosPK13orientation_tPKfPf
	mov ebx, [ebp-0x114]
	mov eax, [ebp-0x14c]
	mov [ebp-0xb04], eax
	movzx eax, byte [eax+0xb3]
	cvtsi2ss xmm0, eax
	mulss xmm0, [ebp-0x108]
	movss [esp], xmm0
	movss [ebp-0xb28], xmm0
	call floorf
	fstp dword [ebp-0xa88]
	cvttss2si edx, [ebp-0xa88]
	cvtsi2ss xmm1, edx
	movss xmm0, dword [ebp-0xb28]
	subss xmm0, xmm1
	movss [ebp-0xd4], xmm0
	movss xmm5, dword [_float_1_00000000]
	movaps xmm1, xmm5
	subss xmm1, xmm0
	movss [ebp-0xd0], xmm1
	mov eax, [ebp-0xb04]
	mov [ebp-0xcc], eax
	mov eax, [ebp-0x154]
	mov [ebp-0xc8], eax
	lea eax, [edx+edx*2]
	shl eax, 0x4
	mov edx, [ebp-0xb04]
	add eax, [edx+0xb8]
	mov [ebp-0xc4], eax
	mov [ebp-0xc0], ebx
	mov dword [ebp-0xbc], 0xff
	mov ecx, fx_randomTable
	movss xmm0, dword [ecx+ebx*4+0x68]
	lea edx, [eax+0x30]
	movaps xmm1, xmm0
	mulss xmm1, [eax+0x24]
	addss xmm1, [eax+0xc]
	mulss xmm1, [ebp-0xd0]
	mulss xmm0, [edx+0x24]
	addss xmm0, [edx+0xc]
	mulss xmm0, [ebp-0xd4]
	addss xmm1, xmm0
	movss [ebp-0xe0], xmm1
	mov ecx, [ebp-0xb04]
	test byte [ecx+0x3], 0x10
	jz _Z18FX_DrawSpriteElemsP8FxSystemi_60
	mov ecx, fx_randomTable
	movss xmm0, dword [ecx+ebx*4+0x6c]
	movaps xmm1, xmm0
	mulss xmm1, [eax+0x28]
	addss xmm1, [eax+0x10]
	mulss xmm1, [ebp-0xd0]
	mulss xmm0, [edx+0x28]
	addss xmm0, [edx+0x10]
	mulss xmm0, [ebp-0xd4]
	addss xmm1, xmm0
_Z18FX_DrawSpriteElemsP8FxSystemi_60:
	movss [ebp-0xdc], xmm1
	mov ebx, [ebp-0xb04]
	test byte [ebx+0x1], 0x10
	jnz _Z18FX_DrawSpriteElemsP8FxSystemi_70
	mov ecx, ebx
_Z18FX_DrawSpriteElemsP8FxSystemi_920:
	mov eax, [ebp-0x158]
	mov [ebp-0x118], eax
	movss xmm3, dword [ecx+0x18]
	pxor xmm4, xmm4
	ucomiss xmm3, xmm4
	jnz _Z18FX_DrawSpriteElemsP8FxSystemi_80
	jp _Z18FX_DrawSpriteElemsP8FxSystemi_80
	ucomiss xmm4, [ecx+0x20]
	jp _Z18FX_DrawSpriteElemsP8FxSystemi_80
	jz _Z18FX_DrawSpriteElemsP8FxSystemi_90
_Z18FX_DrawSpriteElemsP8FxSystemi_80:
	movss xmm0, dword [ebp-0x104]
	subss xmm0, [eax]
	movss xmm1, dword [ebp-0x100]
	subss xmm1, [eax+0x4]
	movss xmm2, dword [ebp-0xfc]
	subss xmm2, [eax+0x8]
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	sqrtss xmm0, xmm0
	ucomiss xmm3, xmm4
	jnz _Z18FX_DrawSpriteElemsP8FxSystemi_100
	jp _Z18FX_DrawSpriteElemsP8FxSystemi_100
_Z18FX_DrawSpriteElemsP8FxSystemi_570:
	movaps xmm3, xmm5
_Z18FX_DrawSpriteElemsP8FxSystemi_590:
	mov eax, [ebp-0xb04]
	ucomiss xmm4, [eax+0x20]
	jnz _Z18FX_DrawSpriteElemsP8FxSystemi_110
	jp _Z18FX_DrawSpriteElemsP8FxSystemi_110
_Z18FX_DrawSpriteElemsP8FxSystemi_550:
	movaps xmm2, xmm5
_Z18FX_DrawSpriteElemsP8FxSystemi_560:
	movaps xmm0, xmm2
	subss xmm0, xmm3
	cmpss xmm4, xmm0, 0x6
	movaps xmm0, xmm4
	andps xmm2, xmm4
	andnps xmm0, xmm3
	orps xmm0, xmm2
	mulss xmm0, [_float_255_00000000]
	addss xmm0, [_float_0_50000000]
	xorps xmm1, xmm1
	maxss xmm0, xmm1
	movss xmm2, dword [_data16_4f000000]
	cmpss xmm2, xmm0, 0x2
	movss xmm3, dword [_data16_4f800000]
	cmpss xmm3, xmm0, 0x2
	movaps xmm1, xmm2
	andps xmm1, [_data16_4f000000]
	pslld xmm2, 0x1f
	subps xmm0, xmm1
	cvttps2dq xmm0, xmm0
	paddd xmm0, xmm2
	por xmm0, xmm3
	movdqa [ebp-0xaa8], xmm0
	mov eax, [ebp-0xaa8]
	mov [ebp-0xbc], eax
_Z18FX_DrawSpriteElemsP8FxSystemi_90:
	mov edx, [ebp-0xb04]
	test byte [edx+0x1], 0x10
	jnz _Z18FX_DrawSpriteElemsP8FxSystemi_120
_Z18FX_DrawSpriteElemsP8FxSystemi_910:
	mov eax, [ebp-0xa6c]
	movzx edx, byte [eax+0xb0]
	lea eax, [ebp-0x158]
	mov [esp], eax
	call dword [edx*4+s_drawElemHandler]
_Z18FX_DrawSpriteElemsP8FxSystemi_30:
	mov ecx, [ebp-0xa74]
_Z18FX_DrawSpriteElemsP8FxSystemi_430:
	movzx edx, word [ecx+0x4]
	cmp dx, 0xffff
	jnz _Z18FX_DrawSpriteElemsP8FxSystemi_130
	mov eax, [ebp+0xc]
	mov ebx, [ebp-0xa18]
	mov [ebp-0xb08], ebx
	mov [ebp-0x1fc], ebx
	mov [ebp-0x15c], eax
	movzx edx, word [ebx+0xc]
	cmp dx, 0xffff
	jz _Z18FX_DrawSpriteElemsP8FxSystemi_140
_Z18FX_DrawSpriteElemsP8FxSystemi_1010:
	mov ecx, [ebp+0x8]
	mov [ebp-0x200], ecx
	mov eax, [ebx]
	mov eax, [eax+0x1c]
	mov [ebp-0xa60], eax
	mov ebx, ecx
_Z18FX_DrawSpriteElemsP8FxSystemi_260:
	movzx edx, dx
	mov eax, [ebx+0x174]
	lea edx, [eax+edx*4]
	mov [ebp-0xa64], edx
	movzx eax, byte [edx]
	lea edx, [eax*4]
	shl eax, 0x8
	sub eax, edx
	add eax, [ebp-0xa60]
	mov [ebp-0xa5c], eax
	cmp byte [eax+0xb1], 0x0
	jz _Z18FX_DrawSpriteElemsP8FxSystemi_150
	mov edx, [ebp-0xa64]
	mov eax, [edx+0x8]
	cmp eax, [ebp-0x15c]
	jg _Z18FX_DrawSpriteElemsP8FxSystemi_160
	mov ecx, edx
	mov [ebp-0x1f8], edx
	mov edi, [ebp-0xa5c]
	mov [ebp-0x1f4], edi
	add edx, 0x18
	mov [ebp-0xa58], edx
	mov esi, [ecx+0x8]
	mov ebx, [ebp-0x1fc]
	mov [ebp-0xb08], ebx
	movzx edx, word [ebx+0x12]
	lea edx, [esi+edx]
	movzx eax, byte [ecx+0x1]
	lea ecx, [eax+eax*8]
	lea ecx, [eax+ecx*4]
	lea ecx, [edx+ecx*8]
	mov edx, 0x11a3019b
	mov eax, ecx
	mul edx
	mov eax, ecx
	sub eax, edx
	shr eax, 1
	add edx, eax
	shr edx, 0x8
	mov ebx, edx
	shl ebx, 0x5
	mov eax, edx
	shl eax, 0x9
	sub eax, ebx
	sub eax, edx
	sub ecx, eax
	movzx ecx, cx
	mov [ebp-0x1bc], ecx
	mov eax, [edi+0x34]
	add eax, 0x1
	mov edx, fx_randomTable
	movzx edx, word [edx+ecx*4+0x44]
	imul eax, edx
	sar eax, 0x10
	add eax, [edi+0x30]
	cvtsi2ss xmm0, eax
	movss [ebp-0x1b8], xmm0
	mov eax, [ebp-0x15c]
	sub eax, esi
	cvtsi2ss xmm1, eax
	movaps xmm2, xmm1
	divss xmm2, xmm0
	cvttss2si edx, xmm0
	cmp eax, edx
	jl _Z18FX_DrawSpriteElemsP8FxSystemi_170
	movss [ebp-0x1b4], xmm0
	mov dword [ebp-0x1b0], 0x3f800000
_Z18FX_DrawSpriteElemsP8FxSystemi_440:
	lea edx, [ebp-0x1f0]
	mov [esp+0x10], edx
	mov eax, [ebp-0x1bc]
	mov [esp+0xc], eax
	mov eax, [ebp-0xb08]
	add eax, 0x44
	mov [esp+0x8], eax
	mov eax, [ebp-0xb08]
	add eax, 0x28
	mov [esp+0x4], eax
	mov eax, [ebp-0x1f4]
	mov [esp], eax
	call _Z17FX_GetOrientationPK9FxElemDefPK14FxSpatialFrameS4_iP13orientation_t
	lea ecx, [ebp-0x1ac]
	mov [esp+0x8], ecx
	mov ebx, [ebp-0xa58]
	mov [esp+0x4], ebx
	lea eax, [ebp-0x1f0]
	mov [esp], eax
	call _Z27FX_OrientationPosToWorldPosPK13orientation_tPKfPf
	mov ebx, [ebp-0x1bc]
	mov edi, [ebp-0x1f4]
	movzx eax, byte [edi+0xb3]
	cvtsi2ss xmm0, eax
	mulss xmm0, [ebp-0x1b0]
	movss [esp], xmm0
	movss [ebp-0xb28], xmm0
	call floorf
	fstp dword [ebp-0xaac]
	cvttss2si edx, [ebp-0xaac]
	cvtsi2ss xmm1, edx
	movss xmm0, dword [ebp-0xb28]
	subss xmm0, xmm1
	movss [ebp-0x17c], xmm0
	movss xmm5, dword [_float_1_00000000]
	movaps xmm1, xmm5
	subss xmm1, xmm0
	movss [ebp-0x178], xmm1
	mov [ebp-0x174], edi
	mov eax, [ebp-0x1fc]
	mov [ebp-0x170], eax
	lea eax, [edx+edx*2]
	shl eax, 0x4
	add eax, [edi+0xb8]
	mov [ebp-0x16c], eax
	mov [ebp-0x168], ebx
	mov dword [ebp-0x164], 0xff
	mov edx, [ebp-0xb18]
	movss xmm0, dword [edx+ebx*4+0x68]
	lea edx, [eax+0x30]
	movaps xmm1, xmm0
	mulss xmm1, [eax+0x24]
	addss xmm1, [eax+0xc]
	mulss xmm1, [ebp-0x178]
	mulss xmm0, [edx+0x24]
	addss xmm0, [edx+0xc]
	mulss xmm0, [ebp-0x17c]
	addss xmm1, xmm0
	movss [ebp-0x188], xmm1
	test byte [edi+0x3], 0x10
	jz _Z18FX_DrawSpriteElemsP8FxSystemi_180
	mov ecx, [ebp-0xb18]
	movss xmm0, dword [ecx+ebx*4+0x6c]
	movaps xmm1, xmm0
	mulss xmm1, [eax+0x28]
	addss xmm1, [eax+0x10]
	mulss xmm1, [ebp-0x178]
	mulss xmm0, [edx+0x28]
	addss xmm0, [edx+0x10]
	mulss xmm0, [ebp-0x17c]
	addss xmm1, xmm0
_Z18FX_DrawSpriteElemsP8FxSystemi_180:
	movss [ebp-0x184], xmm1
	test byte [edi+0x1], 0x10
	jnz _Z18FX_DrawSpriteElemsP8FxSystemi_190
_Z18FX_DrawSpriteElemsP8FxSystemi_890:
	mov eax, [ebp-0x200]
	mov [ebp-0x1c0], eax
	movss xmm3, dword [edi+0x18]
	pxor xmm4, xmm4
	ucomiss xmm3, xmm4
	jnz _Z18FX_DrawSpriteElemsP8FxSystemi_200
	jp _Z18FX_DrawSpriteElemsP8FxSystemi_200
	ucomiss xmm4, [edi+0x20]
	jp _Z18FX_DrawSpriteElemsP8FxSystemi_200
	jz _Z18FX_DrawSpriteElemsP8FxSystemi_210
_Z18FX_DrawSpriteElemsP8FxSystemi_200:
	movss xmm0, dword [ebp-0x1ac]
	subss xmm0, [eax]
	movss xmm1, dword [ebp-0x1a8]
	subss xmm1, [eax+0x4]
	movss xmm2, dword [ebp-0x1a4]
	subss xmm2, [eax+0x8]
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	sqrtss xmm0, xmm0
	ucomiss xmm3, xmm4
	jnz _Z18FX_DrawSpriteElemsP8FxSystemi_220
	jp _Z18FX_DrawSpriteElemsP8FxSystemi_220
_Z18FX_DrawSpriteElemsP8FxSystemi_510:
	movaps xmm3, xmm5
_Z18FX_DrawSpriteElemsP8FxSystemi_530:
	ucomiss xmm4, [edi+0x20]
	jnz _Z18FX_DrawSpriteElemsP8FxSystemi_230
	jp _Z18FX_DrawSpriteElemsP8FxSystemi_230
_Z18FX_DrawSpriteElemsP8FxSystemi_490:
	movaps xmm2, xmm5
_Z18FX_DrawSpriteElemsP8FxSystemi_500:
	movaps xmm0, xmm2
	subss xmm0, xmm3
	cmpss xmm4, xmm0, 0x6
	movaps xmm0, xmm4
	andps xmm2, xmm4
	andnps xmm0, xmm3
	orps xmm0, xmm2
	mulss xmm0, [_float_255_00000000]
	addss xmm0, [_float_0_50000000]
	xorps xmm1, xmm1
	maxss xmm0, xmm1
	movss xmm2, dword [_data16_4f000000]
	cmpss xmm2, xmm0, 0x2
	movss xmm3, dword [_data16_4f800000]
	cmpss xmm3, xmm0, 0x2
	movaps xmm1, xmm2
	andps xmm1, [_data16_4f000000]
	pslld xmm2, 0x1f
	subps xmm0, xmm1
	cvttps2dq xmm0, xmm0
	paddd xmm0, xmm2
	por xmm0, xmm3
	movdqa [ebp-0xac8], xmm0
	mov eax, [ebp-0xac8]
	mov [ebp-0x164], eax
_Z18FX_DrawSpriteElemsP8FxSystemi_210:
	test byte [edi+0x1], 0x10
	jnz _Z18FX_DrawSpriteElemsP8FxSystemi_240
_Z18FX_DrawSpriteElemsP8FxSystemi_940:
	mov ebx, [ebp-0xa5c]
	movzx edx, byte [ebx+0xb0]
	lea eax, [ebp-0x200]
	mov [esp], eax
	call dword [edx*4+s_drawElemHandler]
	mov eax, [ebp-0xa64]
_Z18FX_DrawSpriteElemsP8FxSystemi_420:
	movzx edx, word [eax+0x4]
	cmp dx, 0xffff
	jz _Z18FX_DrawSpriteElemsP8FxSystemi_250
_Z18FX_DrawSpriteElemsP8FxSystemi_270:
	mov ebx, [ebp+0x8]
	jmp _Z18FX_DrawSpriteElemsP8FxSystemi_260
_Z18FX_DrawSpriteElemsP8FxSystemi_150:
	mov eax, [ebp-0xa64]
	movzx edx, word [eax+0x4]
	cmp dx, 0xffff
	jnz _Z18FX_DrawSpriteElemsP8FxSystemi_270
_Z18FX_DrawSpriteElemsP8FxSystemi_250:
	mov edx, [ebp-0xa18]
_Z18FX_DrawSpriteElemsP8FxSystemi_1020:
	cmp word [edx+0x10], 0xffff
	jz _Z18FX_DrawSpriteElemsP8FxSystemi_280
	movzx ebx, word [ebp-0xa12]
	mov ecx, [ebp-0xa7c]
	mov [ebp+ecx*2-0xa00], bx
	add ecx, 0x1
	mov [ebp-0xa7c], ecx
_Z18FX_DrawSpriteElemsP8FxSystemi_280:
	add dword [ebp-0xa84], 0x1
	mov edx, [ebp+0x8]
	mov eax, [edx+0x1b4]
	cmp eax, [ebp-0xa84]
	jnz _Z18FX_DrawSpriteElemsP8FxSystemi_290
	mov eax, [ebp-0xa7c]
	test eax, eax
	jle _Z18FX_DrawSpriteElemsP8FxSystemi_10
	mov dword [ebp-0xa78], 0x0
	mov ecx, [ebp-0xa78]
_Z18FX_DrawSpriteElemsP8FxSystemi_390:
	movzx edx, word [ebp+ecx*2-0xa00]
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x170]
	mov [ebp-0x200], ebx
	lea eax, [eax+edx*4]
	mov [ebp-0xb08], eax
	mov [ebp-0x1fc], eax
	mov eax, [ebp+0xc]
	mov [ebp-0x15c], eax
	mov edx, [ebp-0xb08]
	movzx eax, word [edx+0x10]
	cmp ax, 0xffff
	jz _Z18FX_DrawSpriteElemsP8FxSystemi_300
_Z18FX_DrawSpriteElemsP8FxSystemi_380:
	movzx edx, ax
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x178]
	lea edx, [eax+edx*4]
	mov [ebp-0xa54], edx
	mov eax, [ebp-0x1fc]
	mov ecx, [eax]
	movsx eax, byte [edx+0x6]
	lea edx, [eax*4]
	mov edi, eax
	shl edi, 0x8
	sub edi, edx
	add edi, [ecx+0x1c]
	mov [ebp-0x1f4], edi
	cmp byte [edi+0xb1], 0x0
	jz _Z18FX_DrawSpriteElemsP8FxSystemi_310
	mov ebx, [ebp-0xa54]
	movzx eax, word [ebx+0x2]
	cmp ax, 0xffff
	jz _Z18FX_DrawSpriteElemsP8FxSystemi_320
	mov edx, [ebp+0x8]
	mov edx, [edx+0x17c]
	mov [ebp-0xa34], edx
	mov edi, [edi+0xf4]
	movzx esi, ax
	cvtsi2ss xmm1, dword [edi+0x4]
	movss xmm0, dword [edx+esi*4+0xc]
	divss xmm0, xmm1
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0xa30]
	xor dword [ebp-0xa30], 0x80000000
	mov ecx, [edi]
	cmp ecx, 0x0
	jz _Z18FX_DrawSpriteElemsP8FxSystemi_330
	jle _Z18FX_DrawSpriteElemsP8FxSystemi_340
	mov ebx, [ebp-0x15c]
	mov eax, ebx
	cdq
	idiv ecx
	cvtsi2ss xmm0, edx
	neg ecx
	cvtsi2ss xmm1, ecx
	divss xmm0, xmm1
	addss xmm0, [ebp-0xa30]
	movss [ebp-0xa30], xmm0
_Z18FX_DrawSpriteElemsP8FxSystemi_470:
	xor ecx, ecx
	jmp _Z18FX_DrawSpriteElemsP8FxSystemi_350
_Z18FX_DrawSpriteElemsP8FxSystemi_360:
	movzx esi, ax
_Z18FX_DrawSpriteElemsP8FxSystemi_350:
	mov eax, [ebp-0xa34]
	lea edx, [eax+esi*4]
	lea eax, [ecx+0x1]
	cmp [edx+0x10], ebx
	cmovle ecx, eax
	movzx eax, word [edx+0x14]
	cmp ax, 0xffff
	jnz _Z18FX_DrawSpriteElemsP8FxSystemi_360
	mov ebx, [edi+0xc]
	mov edi, [edi+0x14]
	mov [ebp-0xa48], edi
	lea eax, [ebp-0x1a]
	mov [esp+0x4], eax
	mov eax, ebx
	imul eax, ecx
	mov [esp], eax
	call _Z22R_ReserveCodeMeshVertsiPt
	test al, al
	jnz _Z18FX_DrawSpriteElemsP8FxSystemi_370
_Z18FX_DrawSpriteElemsP8FxSystemi_310:
	mov edx, [ebp-0xa54]
_Z18FX_DrawSpriteElemsP8FxSystemi_460:
	movzx eax, word [edx]
	cmp ax, 0xffff
	jnz _Z18FX_DrawSpriteElemsP8FxSystemi_380
_Z18FX_DrawSpriteElemsP8FxSystemi_300:
	add dword [ebp-0xa78], 0x1
	mov ecx, [ebp-0xa78]
	cmp [ebp-0xa7c], ecx
	jnz _Z18FX_DrawSpriteElemsP8FxSystemi_390
_Z18FX_DrawSpriteElemsP8FxSystemi_10:
	mov ebx, [ebp+0x8]
	cmp byte [ebx+0x9dd], 0x0
	jnz _Z18FX_DrawSpriteElemsP8FxSystemi_400
_Z18FX_DrawSpriteElemsP8FxSystemi_1090:
	mov eax, [ebp-0xa80]
	mov edx, [eax+0x4]
	test edx, edx
	jz _Z18FX_DrawSpriteElemsP8FxSystemi_410
	mov ecx, eax
	mov eax, [eax+0xc]
	mov [esp+0x14], eax
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x0
	mov [esp+0x8], edx
	mov eax, [ecx]
	mov [esp+0x4], eax
	mov eax, [ecx+0x8]
	mov [esp], eax
	call _Z21R_AddCodeMeshDrawSurfP8MaterialP16r_double_index_tjjjPKc
	mov ebx, [ebp-0xa80]
	mov dword [ebx+0x4], 0x0
	mov dword [ebx], 0x0
_Z18FX_DrawSpriteElemsP8FxSystemi_410:
	add esp, 0xb7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z18FX_DrawSpriteElemsP8FxSystemi_160:
	mov eax, edx
	jmp _Z18FX_DrawSpriteElemsP8FxSystemi_420
_Z18FX_DrawSpriteElemsP8FxSystemi_40:
	mov ecx, ebx
	jmp _Z18FX_DrawSpriteElemsP8FxSystemi_430
_Z18FX_DrawSpriteElemsP8FxSystemi_170:
	movss [ebp-0x1b4], xmm1
	movss [ebp-0x1b0], xmm2
	jmp _Z18FX_DrawSpriteElemsP8FxSystemi_440
_Z18FX_DrawSpriteElemsP8FxSystemi_50:
	movss [ebp-0x10c], xmm1
	movss [ebp-0x108], xmm2
	jmp _Z18FX_DrawSpriteElemsP8FxSystemi_450
_Z18FX_DrawSpriteElemsP8FxSystemi_320:
	mov edx, ebx
	jmp _Z18FX_DrawSpriteElemsP8FxSystemi_460
_Z18FX_DrawSpriteElemsP8FxSystemi_330:
	mov ebx, [ebp-0x15c]
	jmp _Z18FX_DrawSpriteElemsP8FxSystemi_470
_Z18FX_DrawSpriteElemsP8FxSystemi_230:
	lea eax, [edi+0x1c]
	subss xmm0, [edi+0x1c]
	ucomiss xmm4, xmm0
	ja _Z18FX_DrawSpriteElemsP8FxSystemi_480
	movss xmm1, dword [eax+0x4]
	ucomiss xmm1, xmm0
	jbe _Z18FX_DrawSpriteElemsP8FxSystemi_490
	divss xmm0, xmm1
	movaps xmm1, xmm5
	subss xmm1, xmm0
	movaps xmm2, xmm5
	subss xmm2, xmm1
	jmp _Z18FX_DrawSpriteElemsP8FxSystemi_500
_Z18FX_DrawSpriteElemsP8FxSystemi_220:
	lea eax, [edi+0x14]
	movaps xmm1, xmm0
	subss xmm1, [edi+0x14]
	ucomiss xmm4, xmm1
	ja _Z18FX_DrawSpriteElemsP8FxSystemi_510
	movss xmm2, dword [eax+0x4]
	ucomiss xmm2, xmm1
	ja _Z18FX_DrawSpriteElemsP8FxSystemi_520
	movaps xmm3, xmm4
	jmp _Z18FX_DrawSpriteElemsP8FxSystemi_530
_Z18FX_DrawSpriteElemsP8FxSystemi_110:
	add eax, 0x1c
	mov edx, [ebp-0xb04]
	subss xmm0, [edx+0x1c]
	ucomiss xmm4, xmm0
	ja _Z18FX_DrawSpriteElemsP8FxSystemi_540
	movss xmm1, dword [eax+0x4]
	ucomiss xmm1, xmm0
	jbe _Z18FX_DrawSpriteElemsP8FxSystemi_550
	divss xmm0, xmm1
	movaps xmm1, xmm5
	subss xmm1, xmm0
	movaps xmm2, xmm5
	subss xmm2, xmm1
	jmp _Z18FX_DrawSpriteElemsP8FxSystemi_560
_Z18FX_DrawSpriteElemsP8FxSystemi_100:
	mov eax, [ebp-0xb04]
	add eax, 0x14
	movaps xmm1, xmm0
	mov ebx, [ebp-0xb04]
	subss xmm1, [ebx+0x14]
	ucomiss xmm4, xmm1
	ja _Z18FX_DrawSpriteElemsP8FxSystemi_570
	movss xmm2, dword [eax+0x4]
	ucomiss xmm2, xmm1
	ja _Z18FX_DrawSpriteElemsP8FxSystemi_580
	movaps xmm3, xmm4
	jmp _Z18FX_DrawSpriteElemsP8FxSystemi_590
_Z18FX_DrawSpriteElemsP8FxSystemi_370:
	movzx eax, word [ebp-0x1a]
	mov [esp], eax
	call _Z18R_GetCodeMeshVertst
	mov edx, eax
	lea edi, [ebp-0x158]
	cld
	mov ecx, 0xf
	xor eax, eax
	rep stosd
	mov ecx, [ebp-0xa54]
	movzx ecx, word [ecx+0x2]
	mov [ebp-0xa4a], cx
	add cx, 0x1
	jz _Z18FX_DrawSpriteElemsP8FxSystemi_310
	movss xmm0, dword [_float_1_00000000]
	movss [ebp-0xa38], xmm0
	mov dword [ebp-0xa44], 0x0
	mov [ebp-0xb0c], edx
	mov [ebp-0xb10], edx
	shl ebx, 0x5
	mov [ebp-0xb14], ebx
_Z18FX_DrawSpriteElemsP8FxSystemi_720:
	movzx edx, word [ebp-0xa4a]
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x17c]
	lea edx, [eax+edx*4]
	mov [ebp-0xa10], edx
	mov esi, [edx+0x10]
	cmp esi, [ebp-0x15c]
	jg _Z18FX_DrawSpriteElemsP8FxSystemi_600
	mov ecx, edx
	mov ebx, [ebp-0x1fc]
	mov [ebp-0xb08], ebx
	movzx edx, word [ebx+0x12]
	lea edx, [esi+edx]
	movzx eax, byte [ecx+0x1e]
	lea ecx, [eax+eax*8]
	lea ecx, [eax+ecx*4]
	lea ecx, [edx+ecx*8]
	mov edx, 0x11a3019b
	mov eax, ecx
	mul edx
	mov eax, ecx
	sub eax, edx
	shr eax, 1
	add edx, eax
	shr edx, 0x8
	mov ebx, edx
	shl ebx, 0x5
	mov eax, edx
	shl eax, 0x9
	sub eax, ebx
	sub eax, edx
	sub ecx, eax
	movzx ecx, cx
	mov [ebp-0x1bc], ecx
	mov edi, [ebp-0x1f4]
	mov eax, [edi+0x34]
	add eax, 0x1
	mov edx, fx_randomTable
	movzx edx, word [edx+ecx*4+0x44]
	imul eax, edx
	sar eax, 0x10
	add eax, [edi+0x30]
	cvtsi2ss xmm0, eax
	movss [ebp-0x1b8], xmm0
	mov eax, [ebp-0x15c]
	sub eax, esi
	cvtsi2ss xmm1, eax
	movaps xmm2, xmm1
	divss xmm2, xmm0
	movss [ebp-0xa0c], xmm2
	cvttss2si edx, xmm0
	cmp eax, edx
	jl _Z18FX_DrawSpriteElemsP8FxSystemi_610
	movss [ebp-0x1b4], xmm0
	mov dword [ebp-0x1b0], 0x3f800000
_Z18FX_DrawSpriteElemsP8FxSystemi_820:
	lea ebx, [ebp-0x1f0]
	mov [esp+0x10], ebx
	mov eax, [ebp-0x1bc]
	mov [esp+0xc], eax
	mov eax, [ebp-0xb08]
	add eax, 0x44
	mov [esp+0x8], eax
	mov eax, [ebp-0xb08]
	add eax, 0x28
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z17FX_GetOrientationPK9FxElemDefPK14FxSpatialFrameS4_iP13orientation_t
	lea eax, [ebp-0x1ac]
	mov [esp+0x8], eax
	mov edx, [ebp-0xa10]
	mov [esp+0x4], edx
	mov [esp], ebx
	call _Z27FX_OrientationPosToWorldPosPK13orientation_tPKfPf
	mov ebx, [ebp-0x1bc]
	mov edi, [ebp-0x1f4]
	movzx eax, byte [edi+0xb3]
	cvtsi2ss xmm0, eax
	mulss xmm0, [ebp-0x1b0]
	movss [esp], xmm0
	movss [ebp-0xb28], xmm0
	call floorf
	fstp dword [ebp-0xacc]
	cvttss2si edx, [ebp-0xacc]
	cvtsi2ss xmm1, edx
	movss xmm0, dword [ebp-0xb28]
	subss xmm0, xmm1
	movss [ebp-0x17c], xmm0
	movss xmm5, dword [_float_1_00000000]
	movaps xmm1, xmm5
	subss xmm1, xmm0
	movss [ebp-0x178], xmm1
	mov [ebp-0x174], edi
	mov eax, [ebp-0x1fc]
	mov [ebp-0x170], eax
	lea eax, [edx+edx*2]
	shl eax, 0x4
	add eax, [edi+0xb8]
	mov [ebp-0x16c], eax
	mov [ebp-0x168], ebx
	mov dword [ebp-0x164], 0xff
	mov edx, fx_randomTable
	movss xmm0, dword [edx+ebx*4+0x68]
	lea edx, [eax+0x30]
	movaps xmm1, xmm0
	mulss xmm1, [eax+0x24]
	addss xmm1, [eax+0xc]
	mulss xmm1, [ebp-0x178]
	mulss xmm0, [edx+0x24]
	addss xmm0, [edx+0xc]
	mulss xmm0, [ebp-0x17c]
	addss xmm1, xmm0
	movss [ebp-0x188], xmm1
	test byte [edi+0x3], 0x10
	jz _Z18FX_DrawSpriteElemsP8FxSystemi_620
	mov ecx, fx_randomTable
	movss xmm0, dword [ecx+ebx*4+0x6c]
	movaps xmm1, xmm0
	mulss xmm1, [eax+0x28]
	addss xmm1, [eax+0x10]
	mulss xmm1, [ebp-0x178]
	mulss xmm0, [edx+0x28]
	addss xmm0, [edx+0x10]
	mulss xmm0, [ebp-0x17c]
	addss xmm1, xmm0
_Z18FX_DrawSpriteElemsP8FxSystemi_620:
	movss [ebp-0x184], xmm1
	test byte [edi+0x1], 0x10
	jnz _Z18FX_DrawSpriteElemsP8FxSystemi_630
_Z18FX_DrawSpriteElemsP8FxSystemi_970:
	mov eax, [ebp-0x200]
	mov [ebp-0x1c0], eax
	movss xmm3, dword [edi+0x18]
	pxor xmm4, xmm4
	ucomiss xmm3, xmm4
	jnz _Z18FX_DrawSpriteElemsP8FxSystemi_640
	jp _Z18FX_DrawSpriteElemsP8FxSystemi_640
	ucomiss xmm4, [edi+0x20]
	jp _Z18FX_DrawSpriteElemsP8FxSystemi_640
	jz _Z18FX_DrawSpriteElemsP8FxSystemi_650
_Z18FX_DrawSpriteElemsP8FxSystemi_640:
	movss xmm0, dword [ebp-0x1ac]
	subss xmm0, [eax]
	movss xmm1, dword [ebp-0x1a8]
	subss xmm1, [eax+0x4]
	movss xmm2, dword [ebp-0x1a4]
	subss xmm2, [eax+0x8]
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	sqrtss xmm0, xmm0
	ucomiss xmm3, xmm4
	jnz _Z18FX_DrawSpriteElemsP8FxSystemi_660
	jp _Z18FX_DrawSpriteElemsP8FxSystemi_660
_Z18FX_DrawSpriteElemsP8FxSystemi_830:
	movaps xmm3, xmm5
_Z18FX_DrawSpriteElemsP8FxSystemi_1030:
	ucomiss xmm4, [edi+0x20]
	jnz _Z18FX_DrawSpriteElemsP8FxSystemi_670
_Z18FX_DrawSpriteElemsP8FxSystemi_850:
	jp _Z18FX_DrawSpriteElemsP8FxSystemi_670
_Z18FX_DrawSpriteElemsP8FxSystemi_870:
	movaps xmm2, xmm5
_Z18FX_DrawSpriteElemsP8FxSystemi_880:
	movaps xmm0, xmm2
	subss xmm0, xmm3
	cmpss xmm4, xmm0, 0x6
	movaps xmm0, xmm4
	andps xmm2, xmm4
	andnps xmm0, xmm3
	orps xmm0, xmm2
	mulss xmm0, [_float_255_00000000]
	addss xmm0, [_float_0_50000000]
	xorps xmm1, xmm1
	maxss xmm0, xmm1
	movss xmm1, dword [_data16_4f000000]
	movaps xmm2, xmm1
	cmpss xmm2, xmm0, 0x2
	movss xmm3, dword [_data16_4f800000]
	cmpss xmm3, xmm0, 0x2
	andps xmm1, xmm2
	pslld xmm2, 0x1f
	subps xmm0, xmm1
	cvttps2dq xmm0, xmm0
	paddd xmm0, xmm2
	por xmm0, xmm3
	movdqa [ebp-0xae8], xmm0
	mov eax, [ebp-0xae8]
	mov [ebp-0x164], eax
_Z18FX_DrawSpriteElemsP8FxSystemi_650:
	test byte [edi+0x1], 0x10
	jnz _Z18FX_DrawSpriteElemsP8FxSystemi_680
_Z18FX_DrawSpriteElemsP8FxSystemi_960:
	mov eax, [ebp-0xa10]
	add eax, 0x18
	lea esi, [ebp-0x38]
	movss xmm1, dword [_float_0_00787402]
_Z18FX_DrawSpriteElemsP8FxSystemi_710:
	mov edx, eax
	mov ecx, esi
	lea ebx, [eax+0x3]
_Z18FX_DrawSpriteElemsP8FxSystemi_690:
	movsx eax, byte [edx]
	cvtsi2ss xmm0, eax
	mulss xmm0, xmm1
	movss [ecx], xmm0
	add edx, 0x1
	add ecx, 0x4
	cmp ebx, edx
	jnz _Z18FX_DrawSpriteElemsP8FxSystemi_690
	add esi, 0xc
	lea eax, [ebp-0x20]
	cmp eax, esi
	jz _Z18FX_DrawSpriteElemsP8FxSystemi_700
	mov eax, ebx
	jmp _Z18FX_DrawSpriteElemsP8FxSystemi_710
_Z18FX_DrawSpriteElemsP8FxSystemi_600:
	mov eax, edx
_Z18FX_DrawSpriteElemsP8FxSystemi_810:
	movzx eax, word [eax+0x14]
	mov [ebp-0xa4a], ax
	add ax, 0x1
	jnz _Z18FX_DrawSpriteElemsP8FxSystemi_720
	cmp dword [ebp-0xa44], 0x1
	jle _Z18FX_DrawSpriteElemsP8FxSystemi_310
	mov edx, [ebp-0xa48]
	lea edx, [edx+edx*2]
	mov [ebp-0xafc], edx
	mov ecx, [ebp-0x1f4]
	mov eax, [ecx+0xf4]
	movzx eax, word [eax+0xc]
	mov [ebp-0xa3a], ax
	mov ebx, [ebp-0x1bc]
	movzx eax, byte [ecx+0xb1]
	cmp al, 0x1
	jz _Z18FX_DrawSpriteElemsP8FxSystemi_730
	movzx eax, al
	mov edx, fx_randomTable
	movzx edx, word [edx+ebx*4+0x54]
	imul eax, edx
	sar eax, 0x10
	mov edx, [ecx+0xbc]
	mov eax, [edx+eax*4]
	mov [ebp-0xa2c], eax
_Z18FX_DrawSpriteElemsP8FxSystemi_1060:
	mov ebx, [ebp-0xa80]
	mov ecx, [ebx+0x8]
	cmp ecx, [ebp-0xa2c]
	jz _Z18FX_DrawSpriteElemsP8FxSystemi_740
	mov edx, [ebx+0x4]
	test edx, edx
	jnz _Z18FX_DrawSpriteElemsP8FxSystemi_750
_Z18FX_DrawSpriteElemsP8FxSystemi_740:
	mov eax, [ebp-0xa44]
	sub eax, 0x1
	mov [ebp-0xa50], eax
	test eax, eax
	jle _Z18FX_DrawSpriteElemsP8FxSystemi_310
	mov dword [ebp-0xa40], 0x0
_Z18FX_DrawSpriteElemsP8FxSystemi_790:
	lea edx, [ebp-0x20]
	mov [esp+0x4], edx
	mov ecx, [ebp-0xafc]
	mov [esp], ecx
	call _Z24R_ReserveCodeMeshIndicesiPP16r_double_index_t
	test al, al
	jz _Z18FX_DrawSpriteElemsP8FxSystemi_310
	mov eax, [ebp-0xa2c]
	mov ebx, [ebp-0xa80]
	cmp eax, [ebx+0x8]
	jz _Z18FX_DrawSpriteElemsP8FxSystemi_760
	mov eax, [ebp-0x1fc]
	mov eax, [eax]
	mov eax, [eax]
	mov [ebx+0xc], eax
	mov edx, [ebp-0xa2c]
	mov [ebx+0x8], edx
	mov eax, [ebp-0x20]
	mov [ebx], eax
_Z18FX_DrawSpriteElemsP8FxSystemi_1040:
	mov ebx, [ebp-0xafc]
	mov ecx, [ebp-0xa80]
	add [ecx+0x4], ebx
	mov [ebp-0xa28], eax
	movzx eax, word [ebp-0x1a]
	mov [ebp-0xa24], ax
	mov eax, [ebp-0x1f4]
	mov edx, [eax+0xf4]
	mov ebx, [edx+0x18]
	mov ecx, [edx+0x14]
	mov eax, ecx
	shr eax, 0x1f
	add eax, ecx
	movzx ecx, word [ebp-0xa24]
	add cx, [edx+0xc]
	mov [ebp-0xa22], cx
	sar eax, 1
	mov [ebp-0xb00], eax
	jz _Z18FX_DrawSpriteElemsP8FxSystemi_770
	mov eax, [ebp-0xa28]
	add eax, 0x6
	mov [ebp-0xa1c], eax
	mov edi, [ebp-0xa28]
	add edi, 0xa
	mov dword [ebp-0xa20], 0x0
	mov esi, ebx
_Z18FX_DrawSpriteElemsP8FxSystemi_780:
	movzx edx, word [esi]
	mov [ebp-0xb3a], dx
	movzx ecx, word [esi+0x2]
	mov [ebp-0xb5a], cx
	movzx ecx, word [ebp-0xa24]
	add cx, [ebp-0xb5a]
	movzx ebx, word [ebp-0xa22]
	add ebx, edx
	mov eax, [ebp-0xa28]
	mov [eax+0x2], cx
	add dx, [ebp-0xa24]
	mov [eax], dx
	movzx edx, word [ebp-0xb5a]
	add dx, [ebp-0xa22]
	mov eax, [ebp-0xa1c]
	mov [eax], dx
	mov [eax-0x2], bx
	mov [edi], cx
	mov [edi-0x2], bx
	add dword [ebp-0xa28], 0xc
	add dword [ebp-0xa20], 0x1
	add esi, 0x4
	add eax, 0xc
	mov [ebp-0xa1c], eax
	add edi, 0xc
	mov edx, [ebp-0xa20]
	cmp [ebp-0xb00], edx
	jnz _Z18FX_DrawSpriteElemsP8FxSystemi_780
_Z18FX_DrawSpriteElemsP8FxSystemi_770:
	add dword [ebp-0xa40], 0x1
	movzx ecx, word [ebp-0xa3a]
	add [ebp-0x1a], cx
	mov ebx, [ebp-0xa50]
	cmp [ebp-0xa40], ebx
	jnz _Z18FX_DrawSpriteElemsP8FxSystemi_790
	jmp _Z18FX_DrawSpriteElemsP8FxSystemi_310
_Z18FX_DrawSpriteElemsP8FxSystemi_700:
	lea eax, [ebp-0x194]
	mov [esp+0x8], eax
	mov eax, [ebp-0x1b8]
	mov [esp+0x4], eax
	lea eax, [ebp-0x17c]
	mov [esp], eax
	call _Z22FX_EvaluateVisualStateP20FxElemPreVisualStatefP17FxElemVisualState
	mov edx, [ebp-0xa10]
	movss xmm2, dword [edx+0xc]
	mov edx, [ebp-0x1f4]
	mov eax, [edx+0xf4]
	mov [ebp-0xb0], eax
	movss xmm3, dword [ebp-0x1ac]
	movss [ebp-0xac], xmm3
	movss xmm4, dword [ebp-0x1a8]
	movss [ebp-0xa8], xmm4
	movss xmm5, dword [ebp-0x1a4]
	movss [ebp-0xa4], xmm5
	movss xmm6, dword [ebp-0x38]
	movss [ebp-0xa0], xmm6
	movss xmm7, dword [ebp-0x34]
	movss [ebp-0x9c], xmm7
	movss xmm0, dword [ebp-0x30]
	movss [ebp-0xaec], xmm0
	movss [ebp-0x98], xmm0
	movss xmm1, dword [ebp-0x2c]
	movss [ebp-0xaf0], xmm1
	movss [ebp-0x94], xmm1
	movss xmm0, dword [ebp-0x28]
	movss [ebp-0xaf4], xmm0
	movss [ebp-0x90], xmm0
	movss xmm1, dword [ebp-0x24]
	movss [ebp-0xaf8], xmm1
	movss [ebp-0x8c], xmm1
	mov eax, [ebp-0x18c]
	mov [ebp-0x88], eax
	mov eax, [ebp-0x188]
	mov [ebp-0x84], eax
	mov eax, [ebp-0x184]
	mov [ebp-0x80], eax
	mov eax, [ebp-0x194]
	mov [ebp-0x78], eax
	mov eax, [edx+0xf4]
	cvtsi2ss xmm0, dword [eax+0x4]
	divss xmm2, xmm0
	addss xmm2, [ebp-0xa30]
	movss [ebp-0x7c], xmm2
	movss xmm0, dword [_float_1_00000000]
	ucomiss xmm0, [ebp-0xa0c]
	ja _Z18FX_DrawSpriteElemsP8FxSystemi_800
_Z18FX_DrawSpriteElemsP8FxSystemi_1000:
	mov eax, [ebp-0xb0]
	mov [ebp-0x158], eax
	mov eax, [ebp-0xac]
	mov [ebp-0x154], eax
	mov eax, [ebp-0xa8]
	mov [ebp-0x150], eax
	mov eax, [ebp-0xa4]
	mov [ebp-0x14c], eax
	mov eax, [ebp-0xa0]
	mov [ebp-0x148], eax
	mov eax, [ebp-0x9c]
	mov [ebp-0x144], eax
	mov eax, [ebp-0x98]
	mov [ebp-0x140], eax
	mov eax, [ebp-0x94]
	mov [ebp-0x13c], eax
	mov eax, [ebp-0x90]
	mov [ebp-0x138], eax
	mov eax, [ebp-0x8c]
	mov [ebp-0x134], eax
	mov eax, [ebp-0x88]
	mov [ebp-0x130], eax
	mov eax, [ebp-0x84]
	mov [ebp-0x12c], eax
	mov eax, [ebp-0x80]
	mov [ebp-0x128], eax
	mov eax, [ebp-0x7c]
	mov [ebp-0x124], eax
	mov eax, [ebp-0x78]
	mov [ebp-0x120], eax
	movss xmm0, dword [ebp-0xa0c]
	movss [ebp-0xa38], xmm0
	mov eax, [ebp-0xa10]
	jmp _Z18FX_DrawSpriteElemsP8FxSystemi_810
_Z18FX_DrawSpriteElemsP8FxSystemi_610:
	movss [ebp-0x1b4], xmm1
	movss [ebp-0x1b0], xmm2
	jmp _Z18FX_DrawSpriteElemsP8FxSystemi_820
_Z18FX_DrawSpriteElemsP8FxSystemi_660:
	lea eax, [edi+0x14]
	movaps xmm1, xmm0
	subss xmm1, [edi+0x14]
	ucomiss xmm4, xmm1
	ja _Z18FX_DrawSpriteElemsP8FxSystemi_830
	movss xmm2, dword [eax+0x4]
	ucomiss xmm2, xmm1
	ja _Z18FX_DrawSpriteElemsP8FxSystemi_840
	movaps xmm3, xmm4
	ucomiss xmm4, [edi+0x20]
	jz _Z18FX_DrawSpriteElemsP8FxSystemi_850
_Z18FX_DrawSpriteElemsP8FxSystemi_670:
	lea eax, [edi+0x1c]
	subss xmm0, [edi+0x1c]
	ucomiss xmm4, xmm0
	ja _Z18FX_DrawSpriteElemsP8FxSystemi_860
	movss xmm1, dword [eax+0x4]
	ucomiss xmm1, xmm0
	jbe _Z18FX_DrawSpriteElemsP8FxSystemi_870
	divss xmm0, xmm1
	movaps xmm1, xmm5
	subss xmm1, xmm0
	movaps xmm2, xmm5
	subss xmm2, xmm1
	jmp _Z18FX_DrawSpriteElemsP8FxSystemi_880
_Z18FX_DrawSpriteElemsP8FxSystemi_190:
	mov eax, [ebp-0x168]
	mov ebx, [ebp-0xb18]
	movss xmm3, dword [ebx+eax*4+0x5c]
	movaps xmm2, xmm5
	subss xmm2, xmm3
	mov edx, [ebp-0x16c]
	lea ecx, [edx+0x30]
	movzx eax, byte [edx+0x3]
	cvtsi2ss xmm1, eax
	mulss xmm1, xmm2
	movzx eax, byte [edx+0x1b]
	cvtsi2ss xmm0, eax
	mulss xmm0, xmm3
	addss xmm1, xmm0
	mulss xmm1, [ebp-0x178]
	movzx eax, byte [ecx+0x3]
	cvtsi2ss xmm0, eax
	mulss xmm0, xmm2
	movzx eax, byte [ecx+0x1b]
	cvtsi2ss xmm2, eax
	mulss xmm3, xmm2
	addss xmm0, xmm3
	mulss xmm0, [ebp-0x17c]
	addss xmm1, xmm0
	addss xmm1, [_float_0_50000000]
	movss [esp], xmm1
	movss [ebp-0xb38], xmm5
	call floorf
	fstp dword [ebp-0xab0]
	cvttss2si eax, [ebp-0xab0]
	mov [ebp-0x191], al
	movss xmm5, dword [ebp-0xb38]
	jmp _Z18FX_DrawSpriteElemsP8FxSystemi_890
_Z18FX_DrawSpriteElemsP8FxSystemi_120:
	movzx eax, byte [ebp-0xe9]
	imul eax, [ebp-0xbc]
	mov edx, eax
	shr edx, 0x8
	js _Z18FX_DrawSpriteElemsP8FxSystemi_900
	cvtsi2ss xmm0, edx
_Z18FX_DrawSpriteElemsP8FxSystemi_1050:
	mulss xmm0, [_float_0_00392157]
	movss [esp+0xc], xmm0
	mov eax, [ebp-0xe0]
	mov [esp+0x8], eax
	lea ecx, [ebp-0x104]
	mov [esp+0x4], ecx
	mov ebx, [ebp+0x8]
	mov [esp], ebx
	call _Z16FX_AddVisBlockerP8FxSystemPKfff
	jmp _Z18FX_DrawSpriteElemsP8FxSystemi_910
_Z18FX_DrawSpriteElemsP8FxSystemi_70:
	mov eax, [ebp-0xc0]
	mov edx, fx_randomTable
	movss xmm3, dword [edx+eax*4+0x5c]
	movaps xmm2, xmm5
	subss xmm2, xmm3
	mov edx, [ebp-0xc4]
	lea ecx, [edx+0x30]
	movzx eax, byte [edx+0x3]
	cvtsi2ss xmm1, eax
	mulss xmm1, xmm2
	movzx eax, byte [edx+0x1b]
	cvtsi2ss xmm0, eax
	mulss xmm0, xmm3
	addss xmm1, xmm0
	mulss xmm1, [ebp-0xd0]
	movzx eax, byte [ecx+0x3]
	cvtsi2ss xmm0, eax
	mulss xmm0, xmm2
	movzx eax, byte [ecx+0x1b]
	cvtsi2ss xmm2, eax
	mulss xmm3, xmm2
	addss xmm0, xmm3
	mulss xmm0, [ebp-0xd4]
	addss xmm1, xmm0
	addss xmm1, [_float_0_50000000]
	movss [esp], xmm1
	movss [ebp-0xb38], xmm5
	call floorf
	fstp dword [ebp-0xa8c]
	cvttss2si eax, [ebp-0xa8c]
	mov [ebp-0xe9], al
	movss xmm5, dword [ebp-0xb38]
	mov ecx, [ebp-0xb04]
	jmp _Z18FX_DrawSpriteElemsP8FxSystemi_920
_Z18FX_DrawSpriteElemsP8FxSystemi_240:
	movzx eax, byte [ebp-0x191]
	imul eax, [ebp-0x164]
	mov edx, eax
	shr edx, 0x8
	js _Z18FX_DrawSpriteElemsP8FxSystemi_930
	cvtsi2ss xmm0, edx
_Z18FX_DrawSpriteElemsP8FxSystemi_1070:
	mulss xmm0, [_float_0_00392157]
	movss [esp+0xc], xmm0
	mov eax, [ebp-0x188]
	mov [esp+0x8], eax
	lea edx, [ebp-0x1ac]
	mov [esp+0x4], edx
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z16FX_AddVisBlockerP8FxSystemPKfff
	jmp _Z18FX_DrawSpriteElemsP8FxSystemi_940
_Z18FX_DrawSpriteElemsP8FxSystemi_680:
	movzx eax, byte [ebp-0x191]
	imul eax, [ebp-0x164]
	mov edx, eax
	shr edx, 0x8
	js _Z18FX_DrawSpriteElemsP8FxSystemi_950
	cvtsi2ss xmm0, edx
_Z18FX_DrawSpriteElemsP8FxSystemi_1080:
	mulss xmm0, [_float_0_00392157]
	movss [esp+0xc], xmm0
	mov eax, [ebp-0x188]
	mov [esp+0x8], eax
	lea edx, [ebp-0x1ac]
	mov [esp+0x4], edx
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z16FX_AddVisBlockerP8FxSystemPKfff
	jmp _Z18FX_DrawSpriteElemsP8FxSystemi_960
_Z18FX_DrawSpriteElemsP8FxSystemi_630:
	mov eax, [ebp-0x168]
	mov ebx, fx_randomTable
	movss xmm3, dword [ebx+eax*4+0x5c]
	movaps xmm2, xmm5
	subss xmm2, xmm3
	mov edx, [ebp-0x16c]
	lea ecx, [edx+0x30]
	movzx eax, byte [edx+0x3]
	cvtsi2ss xmm1, eax
	mulss xmm1, xmm2
	movzx eax, byte [edx+0x1b]
	cvtsi2ss xmm0, eax
	mulss xmm0, xmm3
	addss xmm1, xmm0
	mulss xmm1, [ebp-0x178]
	movzx eax, byte [ecx+0x3]
	cvtsi2ss xmm0, eax
	mulss xmm0, xmm2
	movzx eax, byte [ecx+0x1b]
	cvtsi2ss xmm2, eax
	mulss xmm3, xmm2
	addss xmm0, xmm3
	mulss xmm0, [ebp-0x17c]
	addss xmm1, xmm0
	addss xmm1, [_float_0_50000000]
	movss [esp], xmm1
	movss [ebp-0xb38], xmm5
	call floorf
	fstp dword [ebp-0xad0]
	cvttss2si eax, [ebp-0xad0]
	mov [ebp-0x191], al
	movss xmm5, dword [ebp-0xb38]
	jmp _Z18FX_DrawSpriteElemsP8FxSystemi_970
_Z18FX_DrawSpriteElemsP8FxSystemi_800:
	movzx edx, word [ebp-0xa4a]
	mov eax, [ebp-0xa54]
	cmp dx, [eax+0x2]
	jz _Z18FX_DrawSpriteElemsP8FxSystemi_980
	movss xmm1, dword [ebp-0xa38]
	ucomiss xmm1, xmm0
	jb _Z18FX_DrawSpriteElemsP8FxSystemi_990
	mov eax, [ebp-0x158]
	mov [ebp-0x74], eax
	mov eax, [ebp-0x130]
	mov [ebp-0x4c], eax
	mov eax, [ebp-0x12c]
	mov [ebp-0x48], eax
	mov eax, [ebp-0x128]
	mov [ebp-0x44], eax
	mov eax, [ebp-0x120]
	mov [ebp-0x3c], eax
	movaps xmm1, xmm0
	subss xmm1, [ebp-0xa38]
	movss xmm0, dword [ebp-0xa0c]
	subss xmm0, [ebp-0xa38]
	divss xmm1, xmm0
	movss xmm0, dword [ebp-0x124]
	subss xmm2, xmm0
	mulss xmm2, xmm1
	addss xmm0, xmm2
	movss [ebp-0x40], xmm0
	movss xmm0, dword [ebp-0x154]
	subss xmm3, xmm0
	mulss xmm3, xmm1
	addss xmm0, xmm3
	movss [ebp-0x70], xmm0
	movss xmm0, dword [ebp-0x150]
	subss xmm4, xmm0
	mulss xmm4, xmm1
	addss xmm0, xmm4
	movss [ebp-0x6c], xmm0
	movss xmm0, dword [ebp-0x14c]
	subss xmm5, xmm0
	mulss xmm5, xmm1
	addss xmm0, xmm5
	movss [ebp-0x68], xmm0
	movss xmm0, dword [ebp-0x148]
	subss xmm6, xmm0
	mulss xmm6, xmm1
	addss xmm0, xmm6
	movss [ebp-0x64], xmm0
	movss xmm0, dword [ebp-0x144]
	subss xmm7, xmm0
	mulss xmm7, xmm1
	addss xmm0, xmm7
	movss [ebp-0x60], xmm0
	movss xmm0, dword [ebp-0x140]
	movss xmm2, dword [ebp-0xaec]
	subss xmm2, xmm0
	movss [ebp-0xaec], xmm2
	mulss xmm2, xmm1
	addss xmm0, xmm2
	movss [ebp-0x5c], xmm0
	movss xmm0, dword [ebp-0x13c]
	movss xmm2, dword [ebp-0xaf0]
	subss xmm2, xmm0
	movss [ebp-0xaf0], xmm2
	mulss xmm2, xmm1
	addss xmm0, xmm2
	movss [ebp-0x58], xmm0
	movss xmm0, dword [ebp-0x138]
	movss xmm2, dword [ebp-0xaf4]
	subss xmm2, xmm0
	movss [ebp-0xaf4], xmm2
	mulss xmm2, xmm1
	addss xmm0, xmm2
	movss [ebp-0x54], xmm0
	movss xmm0, dword [ebp-0x134]
	movss xmm2, dword [ebp-0xaf8]
	subss xmm2, xmm0
	mulss xmm1, xmm2
	addss xmm0, xmm1
	movss [ebp-0x50], xmm0
	mov edx, [ebp-0xb10]
	lea eax, [ebp-0x74]
	call _Z27FX_GenTrail_VertsForSegmentPK23FxTrailSegmentDrawStateP15GfxPackedVertex
	add dword [ebp-0xa44], 0x1
	mov eax, [ebp-0xb14]
	add [ebp-0xb10], eax
	add [ebp-0xb0c], eax
_Z18FX_DrawSpriteElemsP8FxSystemi_990:
	mov edx, [ebp-0xb0c]
	lea eax, [ebp-0xb0]
	call _Z27FX_GenTrail_VertsForSegmentPK23FxTrailSegmentDrawStateP15GfxPackedVertex
	add dword [ebp-0xa44], 0x1
	mov ecx, [ebp-0xb14]
	add [ebp-0xb10], ecx
	add [ebp-0xb0c], ecx
	jmp _Z18FX_DrawSpriteElemsP8FxSystemi_1000
_Z18FX_DrawSpriteElemsP8FxSystemi_20:
	mov eax, ebx
	mov ebx, [ebp-0xa18]
	mov [ebp-0xb08], ebx
	mov [ebp-0x1fc], ebx
	mov [ebp-0x15c], eax
	movzx edx, word [ebx+0xc]
	cmp dx, 0xffff
	jnz _Z18FX_DrawSpriteElemsP8FxSystemi_1010
_Z18FX_DrawSpriteElemsP8FxSystemi_140:
	mov edx, ebx
	jmp _Z18FX_DrawSpriteElemsP8FxSystemi_1020
_Z18FX_DrawSpriteElemsP8FxSystemi_580:
	divss xmm1, xmm2
	movaps xmm3, xmm5
	subss xmm3, xmm1
	jmp _Z18FX_DrawSpriteElemsP8FxSystemi_590
_Z18FX_DrawSpriteElemsP8FxSystemi_520:
	divss xmm1, xmm2
	movaps xmm3, xmm5
	subss xmm3, xmm1
	jmp _Z18FX_DrawSpriteElemsP8FxSystemi_530
_Z18FX_DrawSpriteElemsP8FxSystemi_840:
	divss xmm1, xmm2
	movaps xmm3, xmm5
	subss xmm3, xmm1
	jmp _Z18FX_DrawSpriteElemsP8FxSystemi_1030
_Z18FX_DrawSpriteElemsP8FxSystemi_340:
	mov ebx, [ebp-0x15c]
	mov eax, ebx
	cdq
	idiv ecx
	cvtsi2ss xmm1, edx
	cvtsi2ss xmm0, ecx
	divss xmm1, xmm0
	movss xmm0, dword [_float_1_00000000]
	subss xmm0, xmm1
	addss xmm0, [ebp-0xa30]
	movss [ebp-0xa30], xmm0
	jmp _Z18FX_DrawSpriteElemsP8FxSystemi_470
_Z18FX_DrawSpriteElemsP8FxSystemi_760:
	mov eax, [ebp-0x20]
	jmp _Z18FX_DrawSpriteElemsP8FxSystemi_1040
_Z18FX_DrawSpriteElemsP8FxSystemi_480:
	movaps xmm2, xmm4
	jmp _Z18FX_DrawSpriteElemsP8FxSystemi_500
_Z18FX_DrawSpriteElemsP8FxSystemi_860:
	movaps xmm2, xmm4
	jmp _Z18FX_DrawSpriteElemsP8FxSystemi_880
_Z18FX_DrawSpriteElemsP8FxSystemi_540:
	movaps xmm2, xmm4
	jmp _Z18FX_DrawSpriteElemsP8FxSystemi_560
_Z18FX_DrawSpriteElemsP8FxSystemi_900:
	shr eax, 0x9
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm0, eax
	addss xmm0, xmm0
	jmp _Z18FX_DrawSpriteElemsP8FxSystemi_1050
_Z18FX_DrawSpriteElemsP8FxSystemi_730:
	mov ecx, [ecx+0xbc]
	mov [ebp-0xa2c], ecx
	jmp _Z18FX_DrawSpriteElemsP8FxSystemi_1060
_Z18FX_DrawSpriteElemsP8FxSystemi_930:
	shr eax, 0x9
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm0, eax
	addss xmm0, xmm0
	jmp _Z18FX_DrawSpriteElemsP8FxSystemi_1070
_Z18FX_DrawSpriteElemsP8FxSystemi_950:
	shr eax, 0x9
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm0, eax
	addss xmm0, xmm0
	jmp _Z18FX_DrawSpriteElemsP8FxSystemi_1080
_Z18FX_DrawSpriteElemsP8FxSystemi_980:
	xor eax, eax
	mov edx, [ebp-0xa10]
	cmp byte [edx+0x1e], 0x0
	movzx edx, byte [ebp-0x75]
	cmovnz eax, edx
	mov [ebp-0x75], al
	jmp _Z18FX_DrawSpriteElemsP8FxSystemi_990
_Z18FX_DrawSpriteElemsP8FxSystemi_750:
	mov eax, [ebx+0xc]
	mov [esp+0x14], eax
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x0
	mov [esp+0x8], edx
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov [esp], ecx
	call _Z21R_AddCodeMeshDrawSurfP8MaterialP16r_double_index_tjjjPKc
	mov dword [ebx+0x4], 0x0
	jmp _Z18FX_DrawSpriteElemsP8FxSystemi_740
_Z18FX_DrawSpriteElemsP8FxSystemi_400:
	mov [esp], ebx
	call _Z23FX_RunGarbageCollectionP8FxSystem
	jmp _Z18FX_DrawSpriteElemsP8FxSystemi_1090


;FX_SetupVisualState(FxElemDef const*, FxEffect const*, int, float, FxElemPreVisualState*)
_Z19FX_SetupVisualStatePK9FxElemDefPK8FxEffectifP20FxElemPreVisualState:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x30
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0x18]
	movzx eax, byte [esi+0xb3]
	cvtsi2ss xmm1, eax
	mulss xmm1, [ebp+0x14]
	movss [esp], xmm1
	movss [ebp-0x28], xmm1
	call floorf
	fstp dword [ebp-0xc]
	cvttss2si eax, [ebp-0xc]
	cvtsi2ss xmm0, eax
	movss xmm1, dword [ebp-0x28]
	subss xmm1, xmm0
	movss [ebx], xmm1
	movss xmm0, dword [_float_1_00000000]
	subss xmm0, xmm1
	movss [ebx+0x4], xmm0
	mov [ebx+0x8], esi
	mov edx, [ebp+0xc]
	mov [ebx+0xc], edx
	lea eax, [eax+eax*2]
	shl eax, 0x4
	add eax, [esi+0xb8]
	mov [ebx+0x10], eax
	mov eax, [ebp+0x10]
	mov [ebx+0x14], eax
	mov dword [ebx+0x18], 0xff
	add esp, 0x30
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;FX_DrawNonSpriteElems(FxSystem*)
_Z21FX_DrawNonSpriteElemsP8FxSystem:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x12c
	mov eax, [ebp+0x8]
	mov eax, [eax+0x1b0]
	mov [ebp-0xdc], eax
	mov edx, [ebp+0x8]
	mov eax, [edx+0x1b4]
	cmp [ebp-0xdc], eax
	jz _Z21FX_DrawNonSpriteElemsP8FxSystem_10
	mov ebx, [ebp+0x8]
_Z21FX_DrawNonSpriteElemsP8FxSystem_140:
	mov ecx, [ebx+0x9d4]
	mov eax, [ebp-0xdc]
	and eax, 0x3ff
	movzx edx, word [ebx+eax*2+0x1bc]
	mov eax, [ebx+0x170]
	lea edi, [eax+edx*4]
	mov [ebp-0xbc], edi
	mov [ebp-0x1c], ecx
	movzx edx, word [edi+0xa]
	cmp dx, 0xffff
	jz _Z21FX_DrawNonSpriteElemsP8FxSystem_20
	mov [ebp-0xc0], ebx
	mov eax, [edi]
	mov eax, [eax+0x1c]
	mov [ebp-0xd4], eax
_Z21FX_DrawNonSpriteElemsP8FxSystem_130:
	movzx edx, dx
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x174]
	lea edx, [eax+edx*4]
	mov [ebp-0xd8], edx
	movzx eax, byte [edx]
	lea edx, [eax*4]
	shl eax, 0x8
	sub eax, edx
	add eax, [ebp-0xd4]
	mov [ebp-0xd0], eax
	cmp byte [eax+0xb1], 0x0
	jz _Z21FX_DrawNonSpriteElemsP8FxSystem_30
	mov ebx, [ebp-0xd8]
	mov eax, [ebx+0x8]
	cmp eax, [ebp-0x1c]
	jg _Z21FX_DrawNonSpriteElemsP8FxSystem_40
	mov edx, ebx
	mov ecx, ebx
	mov [ebp-0xb8], ebx
	mov eax, [ebp-0xd0]
	mov [ebp-0xb4], eax
	add ebx, 0x18
	mov [ebp-0xcc], ebx
	mov esi, [edx+0x8]
	mov edi, [ebp-0xbc]
	movzx edx, word [edi+0x12]
	lea edx, [esi+edx]
	movzx eax, byte [ecx+0x1]
	lea ecx, [eax+eax*8]
	lea ecx, [eax+ecx*4]
	lea ecx, [edx+ecx*8]
	mov edx, 0x11a3019b
	mov eax, ecx
	mul edx
	mov eax, ecx
	sub eax, edx
	shr eax, 1
	add edx, eax
	shr edx, 0x8
	mov ebx, edx
	shl ebx, 0x5
	mov eax, edx
	shl eax, 0x9
	sub eax, ebx
	sub eax, edx
	sub ecx, eax
	movzx ecx, cx
	mov [ebp-0x7c], ecx
	mov edx, [ebp-0xd0]
	mov eax, [edx+0x34]
	add eax, 0x1
	mov edx, fx_randomTable
	movzx edx, word [edx+ecx*4+0x44]
	imul eax, edx
	sar eax, 0x10
	mov ecx, [ebp-0xd0]
	add eax, [ecx+0x30]
	cvtsi2ss xmm0, eax
	movss [ebp-0x78], xmm0
	mov eax, [ebp-0x1c]
	sub eax, esi
	cvtsi2ss xmm1, eax
	movaps xmm2, xmm1
	divss xmm2, xmm0
	cvttss2si edx, xmm0
	cmp eax, edx
	jl _Z21FX_DrawNonSpriteElemsP8FxSystem_50
	movss [ebp-0x74], xmm0
	mov dword [ebp-0x70], 0x3f800000
_Z21FX_DrawNonSpriteElemsP8FxSystem_180:
	lea ebx, [ebp-0xb0]
	mov [esp+0x10], ebx
	mov eax, [ebp-0x7c]
	mov [esp+0xc], eax
	lea eax, [edi+0x44]
	mov [esp+0x8], eax
	lea eax, [edi+0x28]
	mov [esp+0x4], eax
	mov eax, [ebp-0xb4]
	mov [esp], eax
	call _Z17FX_GetOrientationPK9FxElemDefPK14FxSpatialFrameS4_iP13orientation_t
	lea eax, [ebp-0x6c]
	mov [esp+0x8], eax
	mov edx, [ebp-0xcc]
	mov [esp+0x4], edx
	mov [esp], ebx
	call _Z27FX_OrientationPosToWorldPosPK13orientation_tPKfPf
	mov esi, [ebp-0x7c]
	mov ebx, [ebp-0xb4]
	movzx eax, byte [ebx+0xb3]
	cvtsi2ss xmm0, eax
	mulss xmm0, [ebp-0x70]
	movss [esp], xmm0
	movss [ebp-0x108], xmm0
	call floorf
	fstp dword [ebp-0xe0]
	cvttss2si edx, [ebp-0xe0]
	cvtsi2ss xmm1, edx
	movss xmm0, dword [ebp-0x108]
	subss xmm0, xmm1
	movss [ebp-0x3c], xmm0
	movss xmm5, dword [_float_1_00000000]
	movaps xmm1, xmm5
	subss xmm1, xmm0
	movss [ebp-0x38], xmm1
	mov [ebp-0x34], ebx
	mov eax, [ebp-0xbc]
	mov [ebp-0x30], eax
	lea eax, [edx+edx*2]
	shl eax, 0x4
	add eax, [ebx+0xb8]
	mov [ebp-0x2c], eax
	mov [ebp-0x28], esi
	mov dword [ebp-0x24], 0xff
	mov edx, fx_randomTable
	movss xmm0, dword [edx+esi*4+0x68]
	lea edx, [eax+0x30]
	movaps xmm1, xmm0
	mulss xmm1, [eax+0x24]
	addss xmm1, [eax+0xc]
	mulss xmm1, [ebp-0x38]
	mulss xmm0, [edx+0x24]
	addss xmm0, [edx+0xc]
	mulss xmm0, [ebp-0x3c]
	addss xmm1, xmm0
	movss [ebp-0x48], xmm1
	test byte [ebx+0x3], 0x10
	jz _Z21FX_DrawNonSpriteElemsP8FxSystem_60
	mov ecx, fx_randomTable
	movss xmm0, dword [ecx+esi*4+0x6c]
	movaps xmm1, xmm0
	mulss xmm1, [eax+0x28]
	addss xmm1, [eax+0x10]
	mulss xmm1, [ebp-0x38]
	mulss xmm0, [edx+0x28]
	addss xmm0, [edx+0x10]
	mulss xmm0, [ebp-0x3c]
	addss xmm1, xmm0
_Z21FX_DrawNonSpriteElemsP8FxSystem_60:
	movss [ebp-0x44], xmm1
	test byte [ebx+0x1], 0x10
	jnz _Z21FX_DrawNonSpriteElemsP8FxSystem_70
_Z21FX_DrawNonSpriteElemsP8FxSystem_270:
	mov eax, [ebp-0xc0]
	mov [ebp-0x80], eax
	movss xmm4, dword [ebx+0x18]
	pxor xmm3, xmm3
	ucomiss xmm4, xmm3
	jnz _Z21FX_DrawNonSpriteElemsP8FxSystem_80
	jp _Z21FX_DrawNonSpriteElemsP8FxSystem_80
	ucomiss xmm3, [ebx+0x20]
	jp _Z21FX_DrawNonSpriteElemsP8FxSystem_80
	jz _Z21FX_DrawNonSpriteElemsP8FxSystem_90
_Z21FX_DrawNonSpriteElemsP8FxSystem_80:
	movss xmm0, dword [ebp-0x6c]
	subss xmm0, [eax]
	movss xmm1, dword [ebp-0x68]
	subss xmm1, [eax+0x4]
	movss xmm2, dword [ebp-0x64]
	subss xmm2, [eax+0x8]
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	sqrtss xmm0, xmm0
	ucomiss xmm4, xmm3
	jnz _Z21FX_DrawNonSpriteElemsP8FxSystem_100
	jp _Z21FX_DrawNonSpriteElemsP8FxSystem_100
_Z21FX_DrawNonSpriteElemsP8FxSystem_220:
	movaps xmm4, xmm5
_Z21FX_DrawNonSpriteElemsP8FxSystem_240:
	ucomiss xmm3, [ebx+0x20]
	jnz _Z21FX_DrawNonSpriteElemsP8FxSystem_110
	jp _Z21FX_DrawNonSpriteElemsP8FxSystem_110
_Z21FX_DrawNonSpriteElemsP8FxSystem_200:
	movaps xmm2, xmm5
_Z21FX_DrawNonSpriteElemsP8FxSystem_210:
	movaps xmm0, xmm2
	subss xmm0, xmm4
	movaps xmm1, xmm3
	cmpss xmm1, xmm0, 0x6
	andps xmm2, xmm1
	andnps xmm1, xmm4
	orps xmm1, xmm2
	mulss xmm1, [_float_255_00000000]
	addss xmm1, [_float_0_50000000]
	movaps xmm0, xmm1
	xorps xmm1, xmm1
	maxss xmm0, xmm1
	movss xmm1, dword [_data16_4f000000]
	movaps xmm2, xmm1
	cmpss xmm2, xmm0, 0x2
	movss xmm3, dword [_data16_4f800000]
	cmpss xmm3, xmm0, 0x2
	andps xmm1, xmm2
	pslld xmm2, 0x1f
	subps xmm0, xmm1
	cvttps2dq xmm0, xmm0
	paddd xmm0, xmm2
	por xmm0, xmm3
	movdqa [ebp-0xf8], xmm0
	mov eax, [ebp-0xf8]
	mov [ebp-0x24], eax
_Z21FX_DrawNonSpriteElemsP8FxSystem_90:
	test byte [ebx+0x1], 0x10
	jnz _Z21FX_DrawNonSpriteElemsP8FxSystem_120
_Z21FX_DrawNonSpriteElemsP8FxSystem_260:
	mov ebx, [ebp-0xd0]
	movzx edx, byte [ebx+0xb0]
	lea eax, [ebp-0xc0]
	mov [esp], eax
	call dword [edx*4+s_drawElemHandler]
_Z21FX_DrawNonSpriteElemsP8FxSystem_30:
	mov eax, [ebp-0xd8]
_Z21FX_DrawNonSpriteElemsP8FxSystem_170:
	movzx edx, word [eax+0x4]
	cmp dx, 0xffff
	jnz _Z21FX_DrawNonSpriteElemsP8FxSystem_130
	mov edx, [ebp+0x8]
	add dword [ebp-0xdc], 0x1
	mov eax, [edx+0x1b4]
	cmp [ebp-0xdc], eax
	jz _Z21FX_DrawNonSpriteElemsP8FxSystem_10
_Z21FX_DrawNonSpriteElemsP8FxSystem_150:
	mov ebx, edx
	jmp _Z21FX_DrawNonSpriteElemsP8FxSystem_140
_Z21FX_DrawNonSpriteElemsP8FxSystem_20:
	mov edx, ebx
	add dword [ebp-0xdc], 0x1
	mov eax, [edx+0x1b4]
	cmp [ebp-0xdc], eax
	jnz _Z21FX_DrawNonSpriteElemsP8FxSystem_150
_Z21FX_DrawNonSpriteElemsP8FxSystem_10:
	cmp byte [edx+0x9dd], 0x0
	jz _Z21FX_DrawNonSpriteElemsP8FxSystem_160
	mov [esp], edx
	call _Z23FX_RunGarbageCollectionP8FxSystem
_Z21FX_DrawNonSpriteElemsP8FxSystem_160:
	add esp, 0x12c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z21FX_DrawNonSpriteElemsP8FxSystem_40:
	mov eax, ebx
	jmp _Z21FX_DrawNonSpriteElemsP8FxSystem_170
_Z21FX_DrawNonSpriteElemsP8FxSystem_50:
	movss [ebp-0x74], xmm1
	movss [ebp-0x70], xmm2
	jmp _Z21FX_DrawNonSpriteElemsP8FxSystem_180
_Z21FX_DrawNonSpriteElemsP8FxSystem_110:
	lea eax, [ebx+0x1c]
	subss xmm0, [ebx+0x1c]
	ucomiss xmm3, xmm0
	ja _Z21FX_DrawNonSpriteElemsP8FxSystem_190
	movss xmm1, dword [eax+0x4]
	ucomiss xmm1, xmm0
	jbe _Z21FX_DrawNonSpriteElemsP8FxSystem_200
	divss xmm0, xmm1
	movaps xmm1, xmm5
	subss xmm1, xmm0
	movaps xmm2, xmm5
	subss xmm2, xmm1
	jmp _Z21FX_DrawNonSpriteElemsP8FxSystem_210
_Z21FX_DrawNonSpriteElemsP8FxSystem_100:
	lea eax, [ebx+0x14]
	movaps xmm1, xmm0
	subss xmm1, [ebx+0x14]
	ucomiss xmm3, xmm1
	ja _Z21FX_DrawNonSpriteElemsP8FxSystem_220
	movss xmm2, dword [eax+0x4]
	ucomiss xmm2, xmm1
	ja _Z21FX_DrawNonSpriteElemsP8FxSystem_230
	movaps xmm4, xmm3
	jmp _Z21FX_DrawNonSpriteElemsP8FxSystem_240
_Z21FX_DrawNonSpriteElemsP8FxSystem_120:
	movzx eax, byte [ebp-0x51]
	imul eax, [ebp-0x24]
	mov edx, eax
	shr edx, 0x8
	js _Z21FX_DrawNonSpriteElemsP8FxSystem_250
	cvtsi2ss xmm0, edx
_Z21FX_DrawNonSpriteElemsP8FxSystem_280:
	mulss xmm0, [_float_0_00392157]
	movss [esp+0xc], xmm0
	mov eax, [ebp-0x48]
	mov [esp+0x8], eax
	lea edx, [ebp-0x6c]
	mov [esp+0x4], edx
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z16FX_AddVisBlockerP8FxSystemPKfff
	jmp _Z21FX_DrawNonSpriteElemsP8FxSystem_260
_Z21FX_DrawNonSpriteElemsP8FxSystem_70:
	mov eax, [ebp-0x28]
	mov edx, fx_randomTable
	movss xmm3, dword [edx+eax*4+0x5c]
	movaps xmm2, xmm5
	subss xmm2, xmm3
	mov edx, [ebp-0x2c]
	lea ecx, [edx+0x30]
	movzx eax, byte [edx+0x3]
	cvtsi2ss xmm1, eax
	mulss xmm1, xmm2
	movzx eax, byte [edx+0x1b]
	cvtsi2ss xmm0, eax
	mulss xmm0, xmm3
	addss xmm1, xmm0
	mulss xmm1, [ebp-0x38]
	movzx eax, byte [ecx+0x3]
	cvtsi2ss xmm0, eax
	mulss xmm0, xmm2
	movzx eax, byte [ecx+0x1b]
	cvtsi2ss xmm2, eax
	mulss xmm3, xmm2
	addss xmm0, xmm3
	mulss xmm0, [ebp-0x3c]
	addss xmm1, xmm0
	addss xmm1, [_float_0_50000000]
	movss [esp], xmm1
	movss [ebp-0x118], xmm5
	call floorf
	fstp dword [ebp-0xe4]
	cvttss2si eax, [ebp-0xe4]
	mov [ebp-0x51], al
	movss xmm5, dword [ebp-0x118]
	jmp _Z21FX_DrawNonSpriteElemsP8FxSystem_270
_Z21FX_DrawNonSpriteElemsP8FxSystem_230:
	divss xmm1, xmm2
	movaps xmm4, xmm5
	subss xmm4, xmm1
	jmp _Z21FX_DrawNonSpriteElemsP8FxSystem_240
_Z21FX_DrawNonSpriteElemsP8FxSystem_190:
	movaps xmm2, xmm3
	jmp _Z21FX_DrawNonSpriteElemsP8FxSystem_210
_Z21FX_DrawNonSpriteElemsP8FxSystem_250:
	shr eax, 0x9
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm0, eax
	addss xmm0, xmm0
	jmp _Z21FX_DrawNonSpriteElemsP8FxSystem_280
	nop


;FX_EvaluateVisualState(FxElemPreVisualState*, float, FxElemVisualState*)
_Z22FX_EvaluateVisualStateP20FxElemPreVisualStatefP17FxElemVisualState:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x7c
	mov eax, [ebp+0x8]
	mov eax, [eax+0x8]
	mov [ebp-0x44], eax
	mov edx, [ebp+0x8]
	mov ebx, [edx+0x10]
	mov ecx, [edx+0x14]
	mov [ebp-0x34], ecx
	mov eax, fx_randomTable
	movss xmm0, dword [eax+ecx*4+0x5c]
	movss [ebp-0x38], xmm0
	movss xmm3, dword [_float_1_00000000]
	subss xmm3, xmm0
	movss xmm0, dword [edx]
	movss [ebp-0x40], xmm0
	movss xmm0, dword [edx+0x4]
	movss [ebp-0x3c], xmm0
	lea eax, [ebx+0x30]
	mov [ebp-0x30], eax
	movzx eax, byte [ebx]
	cvtsi2ss xmm2, eax
	mulss xmm2, xmm3
	movzx eax, byte [ebx+0x18]
	cvtsi2ss xmm0, eax
	mulss xmm0, [ebp-0x38]
	addss xmm2, xmm0
	mulss xmm2, [ebp-0x3c]
	movzx eax, byte [ebx+0x30]
	cvtsi2ss xmm1, eax
	mulss xmm1, xmm3
	mov edx, [ebp-0x30]
	movzx eax, byte [edx+0x18]
	cvtsi2ss xmm0, eax
	mulss xmm0, [ebp-0x38]
	addss xmm1, xmm0
	mulss xmm1, [ebp-0x40]
	addss xmm2, xmm1
	addss xmm2, [_float_0_50000000]
	movss [esp], xmm2
	movss [ebp-0x68], xmm3
	call floorf
	fstp dword [ebp-0x48]
	cvttss2si eax, [ebp-0x48]
	mov ecx, [ebp+0x10]
	mov [ecx], al
	movzx eax, byte [ebx+0x1]
	cvtsi2ss xmm2, eax
	movss xmm3, dword [ebp-0x68]
	mulss xmm2, xmm3
	movzx eax, byte [ebx+0x19]
	cvtsi2ss xmm0, eax
	mulss xmm0, [ebp-0x38]
	addss xmm2, xmm0
	mulss xmm2, [ebp-0x3c]
	mov edx, [ebp-0x30]
	movzx eax, byte [edx+0x1]
	cvtsi2ss xmm1, eax
	mulss xmm1, xmm3
	movzx eax, byte [edx+0x19]
	cvtsi2ss xmm0, eax
	mulss xmm0, [ebp-0x38]
	addss xmm1, xmm0
	mulss xmm1, [ebp-0x40]
	addss xmm2, xmm1
	addss xmm2, [_float_0_50000000]
	movss [esp], xmm2
	call floorf
	fstp dword [ebp-0x4c]
	cvttss2si eax, [ebp-0x4c]
	mov ecx, [ebp+0x10]
	mov [ecx+0x1], al
	movzx eax, byte [ebx+0x2]
	cvtsi2ss xmm2, eax
	movss xmm3, dword [ebp-0x68]
	mulss xmm2, xmm3
	movzx eax, byte [ebx+0x1a]
	cvtsi2ss xmm0, eax
	mulss xmm0, [ebp-0x38]
	addss xmm2, xmm0
	mulss xmm2, [ebp-0x3c]
	mov edx, [ebp-0x30]
	movzx eax, byte [edx+0x2]
	cvtsi2ss xmm1, eax
	mulss xmm1, xmm3
	movzx eax, byte [edx+0x1a]
	cvtsi2ss xmm0, eax
	mulss xmm0, [ebp-0x38]
	addss xmm1, xmm0
	mulss xmm1, [ebp-0x40]
	addss xmm2, xmm1
	addss xmm2, [_float_0_50000000]
	movss [esp], xmm2
	call floorf
	fstp dword [ebp-0x50]
	cvttss2si eax, [ebp-0x50]
	mov ecx, [ebp+0x10]
	mov [ecx+0x2], al
	movzx eax, byte [ebx+0x3]
	cvtsi2ss xmm1, eax
	movss xmm3, dword [ebp-0x68]
	mulss xmm1, xmm3
	movzx eax, byte [ebx+0x1b]
	cvtsi2ss xmm0, eax
	mulss xmm0, [ebp-0x38]
	addss xmm1, xmm0
	mulss xmm1, [ebp-0x3c]
	movss [ebp-0x3c], xmm1
	mov edx, [ebp-0x30]
	movzx eax, byte [edx+0x3]
	cvtsi2ss xmm0, eax
	mulss xmm3, xmm0
	movzx eax, byte [edx+0x1b]
	cvtsi2ss xmm0, eax
	mulss xmm0, [ebp-0x38]
	addss xmm3, xmm0
	mulss xmm3, [ebp-0x40]
	addss xmm3, xmm1
	movss [ebp-0x3c], xmm3
	movss xmm0, dword [_float_0_50000000]
	addss xmm0, xmm3
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x54]
	cvttss2si eax, [ebp-0x54]
	mov edx, [ebp+0x10]
	mov [edx+0x3], al
	mov ecx, [ebp-0x44]
	cmp byte [ecx+0xf9], 0x0
	jz _Z22FX_EvaluateVisualStateP20FxElemPreVisualStatefP17FxElemVisualState_10
	mov edx, [ebp+0x8]
	mov eax, [edx+0xc]
	movzx edx, word [eax+0x16]
	lea eax, [edx*8]
	mov ecx, eax
	shr cl, 0x5
	or al, cl
	mov [ebp-0x1b], al
	shr dx, 0x3
	mov eax, edx
	and al, 0xf8
	mov ecx, eax
	shr cl, 0x5
	or al, cl
	mov [ebp-0x1a], al
	shr dx, 0x5
	and dl, 0xf8
	mov eax, edx
	shr al, 0x5
	or dl, al
	mov [ebp-0x19], dl
	xor esi, esi
	mov dword [ebp-0x2c], _ZZ33FX_EvaluateVisualState_DoLightingP20FxElemPreVisualStateP17FxElemVisualStatePK9FxElemDefE7mapping
_Z22FX_EvaluateVisualStateP20FxElemPreVisualStatefP17FxElemVisualState_30:
	mov ecx, [ebp-0x2c]
	mov edi, [ecx]
	mov eax, [ebp-0x44]
	movzx ecx, byte [eax+0xf9]
	movzx eax, byte [esi+ebp-0x1b]
	lea eax, [eax+eax-0xff]
	imul ecx, eax
	mov eax, 0x80808081
	imul ecx
	add edx, ecx
	sar edx, 0x7
	sar ecx, 0x1f
	sub edx, ecx
	add edx, 0xff
	mov [ebp-0x6c], edx
	mov edx, [ebp+0x10]
	movzx eax, byte [edx+edi]
	imul eax, [ebp-0x6c]
	mov [ebp-0x6c], eax
	mov eax, 0x80808081
	imul dword [ebp-0x6c]
	mov ecx, edx
	add ecx, [ebp-0x6c]
	sar ecx, 0x7
	mov eax, [ebp-0x6c]
	cdq
	sub ecx, edx
	cmp ecx, 0xfe
	jle _Z22FX_EvaluateVisualStateP20FxElemPreVisualStatefP17FxElemVisualState_20
	mov edx, 0xffffffff
_Z22FX_EvaluateVisualStateP20FxElemPreVisualStatefP17FxElemVisualState_40:
	mov ecx, [ebp+0x10]
	mov [ecx+edi], dl
	add esi, 0x1
	add dword [ebp-0x2c], 0x4
	cmp esi, 0x3
	jnz _Z22FX_EvaluateVisualStateP20FxElemPreVisualStatefP17FxElemVisualState_30
	mov ecx, [ebp-0x44]
_Z22FX_EvaluateVisualStateP20FxElemPreVisualStatefP17FxElemVisualState_10:
	mov eax, [ebp-0x34]
	mov edx, fx_randomTable
	movss xmm3, dword [edx+eax*4+0x60]
	mulss xmm3, [ecx+0x94]
	addss xmm3, [ecx+0x90]
	mov eax, [ebp+0x10]
	movss [eax+0x8], xmm3
	mov ecx, [ebp-0x34]
	movss xmm1, dword [edx+ecx*4+0x64]
	movss xmm4, dword [ebp-0x40]
	mulss xmm4, xmm4
	mulss xmm4, [_float_0_50000000]
	movaps xmm2, xmm1
	mulss xmm2, [ebx+0x20]
	addss xmm2, [ebx+0x8]
	movss xmm0, dword [ebp-0x40]
	subss xmm0, xmm4
	movss [ebp-0x40], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [ebx+0x1c]
	addss xmm0, [ebx+0x4]
	mulss xmm0, [ebp-0x40]
	addss xmm2, xmm0
	mov eax, [ebp-0x30]
	mulss xmm1, [eax+0x1c]
	addss xmm1, [eax+0x4]
	mulss xmm1, xmm4
	addss xmm2, xmm1
	mulss xmm2, [ebp+0xc]
	movss [ebp+0xc], xmm2
	addss xmm3, xmm2
	mov edx, [ebp+0x10]
	movss [edx+0x8], xmm3
	movzx eax, byte [edx+0x3]
	mov ecx, [ebp+0x8]
	imul eax, [ecx+0x18]
	shr eax, 0x8
	mov [edx+0x3], al
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z22FX_EvaluateVisualStateP20FxElemPreVisualStatefP17FxElemVisualState_20:
	xor edx, edx
	test ecx, ecx
	cmovg edx, ecx
	jmp _Z22FX_EvaluateVisualStateP20FxElemPreVisualStatefP17FxElemVisualState_40


;FX_FillGenerateVertsCmd(int, FxGenerateVertsCmd*)
_Z23FX_FillGenerateVertsCmdiP18FxGenerateVertsCmd:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov [esp], ebx
	call _Z12FX_GetSystemi
	mov [esi], eax
	call _Z15FX_Beam_GetInfov
	mov [esi+0x4], eax
	call _Z20FX_PostLight_GetInfov
	mov [esi+0x8], eax
	call _Z16FX_SpriteGetInfov
	mov [esi+0xc], eax
	mov [esi+0x10], ebx
	lea edi, [esi+0x14]
	call _Z19R_GetLocalClientNumv
	mov ebx, cgArray
	mov eax, [ebx+0x492e0]
	mov [esi+0x14], eax
	mov eax, [ebx+0x492e4]
	mov [edi+0x4], eax
	mov eax, [ebx+0x492e8]
	mov [edi+0x8], eax
	call _Z19R_GetLocalClientNumv
	add esi, 0x20
	mov [ebp+0xc], esi
	add ebx, 0x492ec
	mov [ebp+0x8], ebx
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z8AxisCopyPA3_KfPA3_f
	nop
	add [eax], al


;Initialized global or static variables of fx_draw:
SECTION .data


;Initialized constant data of fx_draw:
SECTION .rdata
g_keepZ__uint4: dd 0x0, 0x0, 0xffffffff, 0x0
g_keepX__uint4: dd 0xffffffff, 0x0, 0x0, 0x0
g_keepZW__uint4: dd 0x0, 0x0, 0xffffffff, 0xffffffff
g_keepXY__uint4: dd 0xffffffff, 0xffffffff, 0x0, 0x0
g_keepXYZ__uint4: dd 0xffffffff, 0xffffffff, 0xffffffff, 0x0
g_keepXYW__uint4: dd 0xffffffff, 0xffffffff, 0x0, 0xffffffff
g_keepXZW__uint4: dd 0xffffffff, 0x0, 0xffffffff, 0xffffffff
g_keepYZW__uint4: dd 0x0, 0xffffffff, 0xffffffff, 0xffffffff
g_selectW__uint4: dd 0x10203, 0x4050607, 0x8090a0b, 0x1c1d1e1f
g_selectZ__uint4: dd 0x10203, 0x4050607, 0x18191a1b, 0xc0d0e0f
g_selectY__uint4: dd 0x10203, 0x14151617, 0x8090a0b, 0xc0d0e0f
g_selectX__uint4: dd 0x10111213, 0x4050607, 0x8090a0b, 0xc0d0e0f
g_swizzleWWWW__uint4: dd 0xc0d0e0f, 0xc0d0e0f, 0xc0d0e0f, 0xc0d0e0f
g_swizzleZZZZ__uint4: dd 0x8090a0b, 0x8090a0b, 0x8090a0b, 0x8090a0b
g_swizzleYYYY__uint4: dd 0x4050607, 0x4050607, 0x4050607, 0x4050607
g_swizzleXXXX__uint4: dd 0x10203, 0x10203, 0x10203, 0x10203
g_swizzleYZWA__uint4: dd 0x4050607, 0x8090a0b, 0xc0d0e0f, 0x10111213
g_swizzleZWAW__uint4: dd 0x8090a0b, 0xc0d0e0f, 0x10111213, 0xc0d0e0f
g_swizzleWABW__uint4: dd 0xc0d0e0f, 0x10111213, 0x14151617, 0xc0d0e0f
g_swizzleZXYW__uint4: dd 0x8090a0b, 0x10203, 0x4050607, 0xc0d0e0f
g_swizzleYZXW__uint4: dd 0x4050607, 0x8090a0b, 0x10203, 0xc0d0e0f
g_swizzleXYZA__uint4: dd 0x10203, 0x4050607, 0x8090a0b, 0x10111213
g_swizzleZWCD__uint4: dd 0x8090a0b, 0xc0d0e0f, 0x18191a1b, 0x1c1d1e1f
g_swizzleXYAB__uint4: dd 0x10203, 0x4050607, 0x10111213, 0x14151617
g_swizzleYBWD__uint4: dd 0x4050607, 0x14151617, 0xc0d0e0f, 0x1c1d1e1f
g_swizzleXAZC__uint4: dd 0x10203, 0x10111213, 0x8090a0b, 0x18191a1b
g_swizzleYXWZ__uint4: dd 0x4050607, 0x10203, 0xc0d0e0f, 0x8090a0b
g_swizzleXZYW__uint4: dd 0x10203, 0x8090a0b, 0x4050607, 0xc0d0e0f
g_swizzleYXZW__uint4: dd 0x4050607, 0x10203, 0x8090a0b, 0xc0d0e0f
g_swizzleXYZW__uint4: dd 0x10203, 0x4050607, 0x8090a0b, 0xc0d0e0f
g_inc__uint4: dd 0x1, 0x1, 0x1, 0x1
g_negativeZero__uint4: dd 0x80000000, 0x80000000, 0x80000000, 0x80000000
g_fltMin__uint4: dd 0x800000, 0x800000, 0x800000, 0x800000
s_drawElemHandler: dd _Z27FX_DrawElem_BillboardSpriteP11FxDrawState, _Z26FX_DrawElem_OrientedSpriteP11FxDrawState, _Z16FX_DrawElem_TailP11FxDrawState, 0x0, _Z17FX_DrawElem_CloudP11FxDrawState, _Z17FX_DrawElem_ModelP11FxDrawState, _Z17FX_DrawElem_LightP11FxDrawState, _Z21FX_DrawElem_SpotLightP11FxDrawState
_ZZ33FX_EvaluateVisualState_DoLightingP20FxElemPreVisualStateP17FxElemVisualStatePK9FxElemDefE7mapping: dd 0x2, 0x1, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x4f000000, 0x0, 0x0, 0x0, 0x4f800000, 0x0, 0x0, 0x0, 0x4f000000, 0x0, 0x0, 0x0, 0x4f800000, 0x0, 0x0, 0x0, 0x4f000000, 0x0, 0x0, 0x0, 0x4f800000, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0


;Zero initialized global or static variables of fx_draw:
SECTION .bss
g_keepZ: resb 0x10
g_keepX: resb 0x10
g_keepZW: resb 0x10
g_keepXY: resb 0x10
g_keepXYZ: resb 0x10
g_keepXYW: resb 0x10
g_keepXZW: resb 0x10
g_keepYZW: resb 0x10
g_selectW: resb 0x10
g_selectZ: resb 0x10
g_selectY: resb 0x10
g_selectX: resb 0x10
g_swizzleWWWW: resb 0x10
g_swizzleZZZZ: resb 0x10
g_swizzleYYYY: resb 0x10
g_swizzleXXXX: resb 0x10
g_swizzleYZWA: resb 0x10
g_swizzleZWAW: resb 0x10
g_swizzleWABW: resb 0x10
g_swizzleZXYW: resb 0x10
g_swizzleYZXW: resb 0x10
g_swizzleXYZA: resb 0x10
g_swizzleZWCD: resb 0x10
g_swizzleXYAB: resb 0x10
g_swizzleYBWD: resb 0x10
g_swizzleXAZC: resb 0x10
g_swizzleYXWZ: resb 0x10
g_swizzleXZYW: resb 0x10
g_swizzleYXZW: resb 0x10
g_swizzleXYZW: resb 0x10
g_inc: resb 0x10
g_negativeZero: resb 0x10
g_fltMin: resb 0x80


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata
_data16_80000000:		dd 0x80000000, 0x0, 0x0, 0x0	; OWORD
_float_1_00000000:		dd 0x3f800000	; 1
_float__2_00000000:		dd 0xc0000000	; -2
_float_0_00392157:		dd 0x3b808081	; 0.00392157
_float_0_00000000:		dd 0x0	; 0
_float_300_00000000:		dd 0x43960000	; 300
_float_150_00000000:		dd 0x43160000	; 150
_float__0_00166667:		dd 0xbada740e	; -0.00166667
_float_127_50000000:		dd 0x42ff0000	; 127.5
_float_127_00000000:		dd 0x42fe0000	; 127
_float_255_00000000:		dd 0x437f0000	; 255
_float_0_50000000:		dd 0x3f000000	; 0.5
_data16_4f000000:		dd 0x4f000000, 0x0, 0x0, 0x0	; OWORD
_data16_4f800000:		dd 0x4f800000, 0x0, 0x0, 0x0	; OWORD
_float_0_00787402:		dd 0x3c010204	; 0.00787402

