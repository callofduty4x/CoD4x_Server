;Imports of r_staticmodelcache_load_obj:
	extern _Z26XModelSetSModelCacheForLodP6XModeljjj
	extern Hunk_AllocateTempMemory
	extern Hunk_FreeTempMemory
	extern _Z16XModelGetNumLodsPK6XModel
	extern _Z13ClearBounds2DPfS_
	extern _Z18AddPointToBounds2DPKfPfS1_
	extern _Z16XModelGetLodDistPK6XModelj
	extern _Z18XModelGetSurfCountPK6XModeli
	extern _Z17XModelGetSurfacesPK6XModelPP8XSurfacei
	extern _Z7randomfv
	extern _Z32PointInCircleFromUniformDeviatesffPf
	extern _Z14Vec2DistanceSqPKfS0_
	extern _Z19XSurfaceGetNumVertsPK8XSurface
	extern _Z18XSurfaceGetNumTrisPK8XSurface
	extern memmove

;Exports of r_staticmodelcache_load_obj:
	global _Z26R_CompareSModelStats_ScoreRK18GfxSModelSurfStatsS1_
	global _Z22R_CompareSModels_ModelPK22GfxStaticModelDrawInstS1_
	global _Z28R_AssignSModelCacheResourcesP8GfxWorld
	global _ZSt13__adjust_heapIP18GfxSModelSurfStatsiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2_
	global _ZSt13__adjust_heapIPPK22GfxStaticModelDrawInstiS2_PFhS2_S2_EEvT_T0_S7_T1_T2_
	global _ZSt16__insertion_sortIP18GfxSModelSurfStatsPFhRKS0_S3_EEvT_S6_T0_
	global _ZSt16__insertion_sortIPPK22GfxStaticModelDrawInstPFhS2_S2_EEvT_S6_T0_
	global _ZSt16__introsort_loopIP18GfxSModelSurfStatsiPFhRKS0_S3_EEvT_S6_T0_T1_
	global _ZSt16__introsort_loopIPPK22GfxStaticModelDrawInstiPFhS2_S2_EEvT_S6_T0_T1_


SECTION .text


;R_CompareSModelStats_Score(GfxSModelSurfStats const&, GfxSModelSurfStats const&)
_Z26R_CompareSModelStats_ScoreRK18GfxSModelSurfStatsS1_:
	push ebp
	mov ebp, esp
	push ebx
	mov eax, [ebp+0x8]
	mov ebx, [ebp+0xc]
	mov ecx, [ebx+0x8]
	mov edx, [eax+0xc]
	shl edx, cl
	mov ecx, [eax+0x8]
	mov eax, [ebx+0xc]
	shl eax, cl
	cmp edx, eax
	seta al
	movzx eax, al
	pop ebx
	pop ebp
	ret
	nop


;R_CompareSModels_Model(GfxStaticModelDrawInst const*, GfxStaticModelDrawInst const*)
_Z22R_CompareSModels_ModelPK22GfxStaticModelDrawInstS1_:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [eax+0x38]
	mov eax, [ebp+0xc]
	cmp edx, [eax+0x38]
	setb al
	movzx eax, al
	pop ebp
	ret
	nop


;R_AssignSModelCacheResources(GfxWorld*)
_Z28R_AssignSModelCacheResourcesP8GfxWorld:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x20fc
	mov dword [ebp-0x3c], 0x0
	mov dword [ebp-0x38], 0x0
	mov dword [ebp-0x34], 0x0
	mov dword [ebp-0x30], 0x0
	mov edx, [ebp+0x8]
	mov eax, [edx+0x244]
	test eax, eax
	jnz _Z28R_AssignSModelCacheResourcesP8GfxWorld_10
	mov dword [ebp-0x20ec], 0x0
_Z28R_AssignSModelCacheResourcesP8GfxWorld_290:
	mov eax, [ebp-0x20ec]
	shl eax, 0x4
	lea ebx, [ebp-0x204c]
	add ebx, eax
	mov [ebp-0x2094], ebx
	lea esi, [ebp-0x204c]
	cmp esi, ebx
	jz _Z28R_AssignSModelCacheResourcesP8GfxWorld_20
	sub ebx, esi
	mov eax, ebx
	sar eax, 0x4
	cmp eax, 0x1
	jz _Z28R_AssignSModelCacheResourcesP8GfxWorld_30
	xor edx, edx
_Z28R_AssignSModelCacheResourcesP8GfxWorld_40:
	add edx, 0x1
	sar eax, 1
	cmp eax, 0x1
	jnz _Z28R_AssignSModelCacheResourcesP8GfxWorld_40
	lea eax, [edx+edx]
_Z28R_AssignSModelCacheResourcesP8GfxWorld_350:
	mov dword [esp+0xc], _Z26R_CompareSModelStats_ScoreRK18GfxSModelSurfStatsS1_
	mov [esp+0x8], eax
	mov edx, [ebp-0x2094]
	mov [esp+0x4], edx
	lea ecx, [ebp-0x204c]
	mov [esp], ecx
	call _ZSt16__introsort_loopIP18GfxSModelSurfStatsiPFhRKS0_S3_EEvT_S6_T0_T1_
	cmp ebx, 0x10f
	jle _Z28R_AssignSModelCacheResourcesP8GfxWorld_50
	mov dword [esp+0x8], _Z26R_CompareSModelStats_ScoreRK18GfxSModelSurfStatsS1_
	lea ebx, [ebp-0x1f4c]
	mov [esp+0x4], ebx
	lea esi, [ebp-0x204c]
	mov [esp], esi
	call _ZSt16__insertion_sortIP18GfxSModelSurfStatsPFhRKS0_S3_EEvT_S6_T0_
	cmp [ebp-0x2094], ebx
	jz _Z28R_AssignSModelCacheResourcesP8GfxWorld_20
	mov [ebp-0x2090], ebx
	lea edi, [ebp-0x1f40]
	mov esi, ebx
_Z28R_AssignSModelCacheResourcesP8GfxWorld_80:
	mov edx, [edi-0x4]
	mov ecx, [edi-0x8]
	mov ebx, [edi-0xc]
	mov eax, [edi]
	mov [ebp-0x40], eax
	mov [ebp-0x44], edx
	mov [ebp-0x48], ecx
	mov [ebp-0x4c], ebx
	mov ebx, [ebp-0x2090]
	sub ebx, 0x10
	jmp _Z28R_AssignSModelCacheResourcesP8GfxWorld_60
_Z28R_AssignSModelCacheResourcesP8GfxWorld_70:
	mov eax, [ebx]
	mov [esi], eax
	mov eax, [ebx+0x4]
	mov [esi+0x4], eax
	mov eax, [ebx+0x8]
	mov [esi+0x8], eax
	mov eax, [ebx+0xc]
	mov [esi+0xc], eax
	mov esi, ebx
	sub ebx, 0x10
_Z28R_AssignSModelCacheResourcesP8GfxWorld_60:
	mov [esp+0x4], ebx
	lea eax, [ebp-0x4c]
	mov [esp], eax
	call _Z26R_CompareSModelStats_ScoreRK18GfxSModelSurfStatsS1_
	test al, al
	jnz _Z28R_AssignSModelCacheResourcesP8GfxWorld_70
	mov eax, [ebp-0x4c]
	mov [esi], eax
	mov eax, [ebp-0x48]
	mov [esi+0x4], eax
	mov eax, [ebp-0x44]
	mov [esi+0x8], eax
	mov eax, [ebp-0x40]
	mov [esi+0xc], eax
	add dword [ebp-0x2090], 0x10
	add edi, 0x10
	mov edx, [ebp-0x2090]
	cmp [ebp-0x2094], edx
	jz _Z28R_AssignSModelCacheResourcesP8GfxWorld_20
	mov esi, [ebp-0x2090]
	jmp _Z28R_AssignSModelCacheResourcesP8GfxWorld_80
_Z28R_AssignSModelCacheResourcesP8GfxWorld_50:
	mov dword [esp+0x8], _Z26R_CompareSModelStats_ScoreRK18GfxSModelSurfStatsS1_
	mov ecx, [ebp-0x2094]
	mov [esp+0x4], ecx
	lea ebx, [ebp-0x204c]
	mov [esp], ebx
	call _ZSt16__insertion_sortIP18GfxSModelSurfStatsPFhRKS0_S3_EEvT_S6_T0_
_Z28R_AssignSModelCacheResourcesP8GfxWorld_20:
	mov ebx, [ebp-0x20ec]
	test ebx, ebx
	jz _Z28R_AssignSModelCacheResourcesP8GfxWorld_90
	mov dword [ebp-0x20e8], 0x0
	lea esi, [ebp-0x204c]
	mov [ebp-0x2070], esi
	mov [ebp-0x20f0], esi
	mov eax, esi
	mov edx, esi
	mov ebx, esi
_Z28R_AssignSModelCacheResourcesP8GfxWorld_120:
	mov eax, [eax]
	mov [ebp-0x20e4], eax
	mov edx, [edx+0x4]
	mov [ebp-0x20e0], edx
	mov ecx, 0x10
	sub ecx, [ebx+0x8]
	mov eax, 0x1
	shl eax, cl
	mov edx, [ebx+0xc]
	cmp eax, edx
	mov edi, edx
	cmovl edi, eax
	mov esi, [ebp-0x2070]
	add esi, 0x8
	mov [ebp-0x206c], esi
	mov eax, [ebp-0x2070]
	mov ecx, [eax+0x8]
	shl edi, cl
	mov dword [ebp-0x2068], 0x0
	mov ebx, 0x1
	mov esi, 0x4
_Z28R_AssignSModelCacheResourcesP8GfxWorld_110:
	lea edx, [ebp-0x3c]
	lea ecx, [esi+edx]
	mov eax, [ebp-0x2068]
	lea edx, [ebp+eax*4-0x3c]
	mov eax, [ebp+ebx*4-0x3c]
	cmp eax, [edx]
	jae _Z28R_AssignSModelCacheResourcesP8GfxWorld_100
	mov [ebp-0x2068], ebx
_Z28R_AssignSModelCacheResourcesP8GfxWorld_130:
	add ebx, 0x1
	add esi, 0x4
	cmp ebx, 0x4
	jnz _Z28R_AssignSModelCacheResourcesP8GfxWorld_110
	add [ecx], edi
	mov edx, [ebp-0x206c]
	mov eax, [edx]
	mov [esp+0xc], eax
	movzx eax, byte [ebp-0x2068]
	mov [esp+0x8], eax
	mov ecx, [ebp-0x20e0]
	mov [esp+0x4], ecx
	mov ebx, [ebp-0x20e4]
	mov [esp], ebx
	call _Z26XModelSetSModelCacheForLodP6XModeljjj
	add dword [ebp-0x20e8], 0x1
	add dword [ebp-0x20f0], 0x10
	add dword [ebp-0x2070], 0x10
	mov esi, [ebp-0x20e8]
	cmp [ebp-0x20ec], esi
	jz _Z28R_AssignSModelCacheResourcesP8GfxWorld_90
	mov eax, [ebp-0x2070]
	mov edx, [ebp-0x2070]
	mov ebx, [ebp-0x20f0]
	jmp _Z28R_AssignSModelCacheResourcesP8GfxWorld_120
_Z28R_AssignSModelCacheResourcesP8GfxWorld_100:
	mov ecx, edx
	jmp _Z28R_AssignSModelCacheResourcesP8GfxWorld_130
_Z28R_AssignSModelCacheResourcesP8GfxWorld_90:
	add esp, 0x20fc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z28R_AssignSModelCacheResourcesP8GfxWorld_10:
	shl eax, 0x2
	mov [esp], eax
	call Hunk_AllocateTempMemory
	mov [ebp-0x20d8], eax
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x244]
	test eax, eax
	jz _Z28R_AssignSModelCacheResourcesP8GfxWorld_140
	xor edx, edx
	xor ecx, ecx
_Z28R_AssignSModelCacheResourcesP8GfxWorld_150:
	mov eax, ecx
	mov ebx, [ebp+0x8]
	add eax, [ebx+0x29c]
	mov esi, [ebp-0x20d8]
	mov [esi+edx*4], eax
	add edx, 0x1
	add ecx, 0x4c
	cmp edx, [ebx+0x244]
	jnz _Z28R_AssignSModelCacheResourcesP8GfxWorld_150
	lea eax, [edx*4]
_Z28R_AssignSModelCacheResourcesP8GfxWorld_620:
	add eax, [ebp-0x20d8]
	mov [ebp-0x20d4], eax
	cmp [ebp-0x20d8], eax
	jz _Z28R_AssignSModelCacheResourcesP8GfxWorld_160
	mov ebx, eax
	sub ebx, [ebp-0x20d8]
	mov eax, ebx
	sar eax, 0x2
	cmp eax, 0x1
	jz _Z28R_AssignSModelCacheResourcesP8GfxWorld_170
	xor edx, edx
_Z28R_AssignSModelCacheResourcesP8GfxWorld_180:
	add edx, 0x1
	sar eax, 1
	cmp eax, 0x1
	jnz _Z28R_AssignSModelCacheResourcesP8GfxWorld_180
	lea eax, [edx+edx]
_Z28R_AssignSModelCacheResourcesP8GfxWorld_510:
	mov dword [esp+0xc], _Z22R_CompareSModels_ModelPK22GfxStaticModelDrawInstS1_
	mov [esp+0x8], eax
	mov eax, [ebp-0x20d4]
	mov [esp+0x4], eax
	mov edx, [ebp-0x20d8]
	mov [esp], edx
	call _ZSt16__introsort_loopIPPK22GfxStaticModelDrawInstiPFhS2_S2_EEvT_S6_T0_T1_
	cmp ebx, 0x43
	jle _Z28R_AssignSModelCacheResourcesP8GfxWorld_190
	mov ecx, [ebp-0x20d8]
	add ecx, 0x40
	mov [ebp-0x20cc], ecx
	mov dword [esp+0x8], _Z22R_CompareSModels_ModelPK22GfxStaticModelDrawInstS1_
	mov [esp+0x4], ecx
	mov ebx, [ebp-0x20d8]
	mov [esp], ebx
	call _ZSt16__insertion_sortIPPK22GfxStaticModelDrawInstPFhS2_S2_EEvT_S6_T0_
	mov esi, [ebp-0x20cc]
	cmp [ebp-0x20d4], esi
	jz _Z28R_AssignSModelCacheResourcesP8GfxWorld_160
	mov eax, esi
	mov ebx, esi
	mov edi, esi
_Z28R_AssignSModelCacheResourcesP8GfxWorld_220:
	mov eax, [eax]
	mov [ebp-0x20d0], eax
	sub ebx, 0x4
	mov edx, eax
	jmp _Z28R_AssignSModelCacheResourcesP8GfxWorld_200
_Z28R_AssignSModelCacheResourcesP8GfxWorld_210:
	mov [edi], esi
	mov edi, ebx
	sub ebx, 0x4
	mov edx, [ebp-0x20d0]
_Z28R_AssignSModelCacheResourcesP8GfxWorld_200:
	mov esi, [ebx]
	mov [esp+0x4], esi
	mov [esp], edx
	call _Z22R_CompareSModels_ModelPK22GfxStaticModelDrawInstS1_
	test al, al
	jnz _Z28R_AssignSModelCacheResourcesP8GfxWorld_210
	mov ecx, [ebp-0x20d0]
	mov [edi], ecx
	add dword [ebp-0x20cc], 0x4
	mov ebx, [ebp-0x20cc]
	cmp [ebp-0x20d4], ebx
	jz _Z28R_AssignSModelCacheResourcesP8GfxWorld_160
	mov eax, [ebp-0x20cc]
	mov ebx, [ebp-0x20cc]
	mov edi, [ebp-0x20cc]
	jmp _Z28R_AssignSModelCacheResourcesP8GfxWorld_220
_Z28R_AssignSModelCacheResourcesP8GfxWorld_190:
	mov dword [esp+0x8], _Z22R_CompareSModels_ModelPK22GfxStaticModelDrawInstS1_
	mov esi, [ebp-0x20d4]
	mov [esp+0x4], esi
	mov eax, [ebp-0x20d8]
	mov [esp], eax
	call _ZSt16__insertion_sortIPPK22GfxStaticModelDrawInstPFhS2_S2_EEvT_S6_T0_
_Z28R_AssignSModelCacheResourcesP8GfxWorld_160:
	xor ebx, ebx
	mov dword [ebp-0x20ec], 0x0
	mov edx, [ebp+0x8]
	mov ecx, [edx+0x244]
_Z28R_AssignSModelCacheResourcesP8GfxWorld_340:
	cmp ebx, ecx
	jz _Z28R_AssignSModelCacheResourcesP8GfxWorld_230
_Z28R_AssignSModelCacheResourcesP8GfxWorld_280:
	mov eax, [ebp-0x20d8]
	lea eax, [eax+ebx*4]
	mov [ebp-0x207c], eax
	mov edx, eax
	mov eax, [eax]
	mov eax, [eax+0x38]
	mov [ebp-0x20dc], eax
	mov edi, ebx
	mov esi, eax
	jmp _Z28R_AssignSModelCacheResourcesP8GfxWorld_240
_Z28R_AssignSModelCacheResourcesP8GfxWorld_260:
	mov esi, [ebp-0x20dc]
_Z28R_AssignSModelCacheResourcesP8GfxWorld_240:
	mov eax, [edx]
	cmp [eax+0x38], esi
	jnz _Z28R_AssignSModelCacheResourcesP8GfxWorld_250
	add edi, 0x1
	add edx, 0x4
	cmp edi, ecx
	jnz _Z28R_AssignSModelCacheResourcesP8GfxWorld_260
_Z28R_AssignSModelCacheResourcesP8GfxWorld_250:
	mov eax, edi
	sub eax, ebx
	mov [ebp-0x20ac], eax
	cmp eax, 0xf
	ja _Z28R_AssignSModelCacheResourcesP8GfxWorld_270
	mov ebx, edi
_Z28R_AssignSModelCacheResourcesP8GfxWorld_310:
	cmp ebx, ecx
	jnz _Z28R_AssignSModelCacheResourcesP8GfxWorld_280
_Z28R_AssignSModelCacheResourcesP8GfxWorld_230:
	mov ecx, [ebp-0x20d8]
	mov [esp], ecx
	call Hunk_FreeTempMemory
	jmp _Z28R_AssignSModelCacheResourcesP8GfxWorld_290
_Z28R_AssignSModelCacheResourcesP8GfxWorld_270:
	mov edx, [ebp-0x20dc]
	mov [esp], edx
	call _Z16XModelGetNumLodsPK6XModel
	mov [ebp-0x20c8], eax
	add eax, [ebp-0x20ec]
	cmp eax, 0x200
	jbe _Z28R_AssignSModelCacheResourcesP8GfxWorld_300
	mov ebx, [ebp+0x8]
	mov ecx, [ebx+0x244]
	mov ebx, edi
	jmp _Z28R_AssignSModelCacheResourcesP8GfxWorld_310
_Z28R_AssignSModelCacheResourcesP8GfxWorld_300:
	lea ecx, [ebp-0x2c]
	mov [esp+0x4], ecx
	lea esi, [ebp-0x24]
	mov [esp], esi
	call _Z13ClearBounds2DPfS_
	xor ebx, ebx
_Z28R_AssignSModelCacheResourcesP8GfxWorld_320:
	lea eax, [ebp-0x2c]
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov edx, [ebp-0x207c]
	mov eax, [edx+ebx*4]
	add eax, 0x4
	mov [esp], eax
	call _Z18AddPointToBounds2DPKfPfS1_
	add ebx, 0x1
	cmp [ebp-0x20ac], ebx
	jnz _Z28R_AssignSModelCacheResourcesP8GfxWorld_320
	mov eax, [ebp-0x20c8]
	test eax, eax
	jnz _Z28R_AssignSModelCacheResourcesP8GfxWorld_330
	mov esi, [ebp+0x8]
	mov ecx, [esi+0x244]
	mov ebx, edi
	jmp _Z28R_AssignSModelCacheResourcesP8GfxWorld_340
_Z28R_AssignSModelCacheResourcesP8GfxWorld_30:
	and eax, 0xffffff00
	jmp _Z28R_AssignSModelCacheResourcesP8GfxWorld_350
_Z28R_AssignSModelCacheResourcesP8GfxWorld_330:
	mov eax, [ebp-0x20ac]
	shr eax, 0x2
	mov [ebp-0x2064], eax
	mov dword [ebp-0x20c0], 0x0
	pxor xmm0, xmm0
	movss [ebp-0x20b0], xmm0
_Z28R_AssignSModelCacheResourcesP8GfxWorld_540:
	mov eax, [ebp-0x20c0]
	mov [esp+0x4], eax
	mov edx, [ebp-0x20dc]
	mov [esp], edx
	call _Z16XModelGetLodDistPK6XModelj
	fstp dword [ebp-0x2060]
	mov ecx, [ebp-0x20c0]
	mov [esp+0x4], ecx
	mov ebx, [ebp-0x20dc]
	mov [esp], ebx
	call _Z18XModelGetSurfCountPK6XModeli
	mov [ebp-0x20bc], eax
	mov esi, [ebp-0x20c0]
	mov [esp+0x8], esi
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z17XModelGetSurfacesPK6XModelPP8XSurfacei
	mov esi, [ebp-0x20bc]
	test esi, esi
	jnz _Z28R_AssignSModelCacheResourcesP8GfxWorld_360
	xor edx, edx
	xor eax, eax
	cmp edx, eax
	cmovg eax, edx
	mov edx, eax
	add edx, 0x3
	js _Z28R_AssignSModelCacheResourcesP8GfxWorld_370
_Z28R_AssignSModelCacheResourcesP8GfxWorld_610:
	sar edx, 0x2
	lea eax, [edx-0x1]
	test eax, 0xffff0000
	jnz _Z28R_AssignSModelCacheResourcesP8GfxWorld_380
	mov ecx, 0x10
	mov esi, 0x10
_Z28R_AssignSModelCacheResourcesP8GfxWorld_580:
	mov edx, eax
	shl edx, cl
	test edx, 0xff000000
	jnz _Z28R_AssignSModelCacheResourcesP8GfxWorld_390
	mov ebx, 0x8
	mov eax, 0x8
_Z28R_AssignSModelCacheResourcesP8GfxWorld_570:
	lea esi, [eax+esi]
	mov ecx, ebx
	shl edx, cl
	test edx, 0xf0000000
	jnz _Z28R_AssignSModelCacheResourcesP8GfxWorld_400
	mov ebx, 0x4
	mov eax, 0x4
_Z28R_AssignSModelCacheResourcesP8GfxWorld_560:
	add esi, eax
	mov ecx, ebx
	shl edx, cl
	test edx, 0xc0000000
	jnz _Z28R_AssignSModelCacheResourcesP8GfxWorld_410
	mov ebx, 0x2
	mov eax, 0x2
_Z28R_AssignSModelCacheResourcesP8GfxWorld_550:
	lea eax, [esi+eax]
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
	mov ecx, 0x20
	sub ecx, eax
	cmp ecx, 0x4
	jg _Z28R_AssignSModelCacheResourcesP8GfxWorld_420
	mov dword [ebp-0x2078], 0x4
_Z28R_AssignSModelCacheResourcesP8GfxWorld_520:
	movss xmm0, dword [ebp-0x24]
	movaps xmm1, xmm0
	addss xmm1, [ebp-0x2c]
	movss [ebp-0x2088], xmm1
	movss xmm1, dword [_float_0_50000000]
	movss xmm2, dword [ebp-0x2088]
	mulss xmm2, xmm1
	movss [ebp-0x2088], xmm2
	movss xmm2, dword [ebp-0x20]
	movaps xmm3, xmm2
	addss xmm3, [ebp-0x28]
	mulss xmm1, xmm3
	movss [ebp-0x208c], xmm1
	movss xmm1, dword [ebp-0x2088]
	subss xmm1, xmm0
	movss [ebp-0x2080], xmm1
	movss xmm3, dword [ebp-0x208c]
	subss xmm3, xmm2
	movss [ebp-0x2084], xmm3
	movss xmm0, dword [ebp-0x20b0]
	mulss xmm0, xmm0
	movss [ebp-0x20a0], xmm0
	movss xmm1, dword [ebp-0x2060]
	mulss xmm1, xmm1
	movss [ebp-0x209c], xmm1
	cmp dword [ebp-0x2064], 0x64
	jg _Z28R_AssignSModelCacheResourcesP8GfxWorld_430
	mov dword [ebp-0x2074], 0x64
_Z28R_AssignSModelCacheResourcesP8GfxWorld_590:
	mov dword [ebp-0x20c4], 0x0
	mov dword [ebp-0x20a4], 0x0
	jmp _Z28R_AssignSModelCacheResourcesP8GfxWorld_440
_Z28R_AssignSModelCacheResourcesP8GfxWorld_460:
	add dword [ebp-0x20a4], 0x1
	mov ecx, [ebp-0x2074]
	cmp [ebp-0x20a4], ecx
	jae _Z28R_AssignSModelCacheResourcesP8GfxWorld_450
_Z28R_AssignSModelCacheResourcesP8GfxWorld_440:
	call _Z7randomfv
	fstp dword [ebp-0x20a8]
	call _Z7randomfv
	lea edx, [ebp-0x4c]
	mov [esp+0x8], edx
	movss xmm0, dword [ebp-0x20a8]
	movss [esp+0x4], xmm0
	fstp dword [esp]
	call _Z32PointInCircleFromUniformDeviatesffPf
	movss xmm0, dword [ebp-0x2080]
	mulss xmm0, [ebp-0x4c]
	addss xmm0, [ebp-0x2088]
	movss [ebp-0x4c], xmm0
	movss xmm0, dword [ebp-0x2084]
	mulss xmm0, [ebp-0x48]
	addss xmm0, [ebp-0x208c]
	movss [ebp-0x48], xmm0
	mov esi, [ebp-0x20ac]
	sub esi, [ebp-0x20c4]
	jz _Z28R_AssignSModelCacheResourcesP8GfxWorld_460
	xor ebx, ebx
	mov dword [ebp-0x205c], 0x0
_Z28R_AssignSModelCacheResourcesP8GfxWorld_480:
	mov edx, [ebp-0x207c]
	mov eax, [edx+ebx*4]
	add eax, 0x4
	mov [esp+0x4], eax
	lea ecx, [ebp-0x4c]
	mov [esp], ecx
	call _Z14Vec2DistanceSqPKfS0_
	fstp dword [ebp-0x2098]
	movss xmm0, dword [ebp-0x2098]
	ucomiss xmm0, [ebp-0x20a0]
	jbe _Z28R_AssignSModelCacheResourcesP8GfxWorld_470
	movss xmm1, dword [ebp-0x209c]
	ucomiss xmm1, xmm0
	jbe _Z28R_AssignSModelCacheResourcesP8GfxWorld_470
	add dword [ebp-0x205c], 0x1
	cmp esi, [ebp-0x20ac]
	adc esi, 0x0
_Z28R_AssignSModelCacheResourcesP8GfxWorld_470:
	add ebx, 0x1
	cmp esi, ebx
	ja _Z28R_AssignSModelCacheResourcesP8GfxWorld_480
	mov eax, [ebp-0x205c]
	cmp [ebp-0x20c4], eax
	jae _Z28R_AssignSModelCacheResourcesP8GfxWorld_460
	mov edx, [ebp-0x20ac]
	cmp eax, edx
	jz _Z28R_AssignSModelCacheResourcesP8GfxWorld_490
	mov [ebp-0x20c4], eax
	add dword [ebp-0x20a4], 0x1
	mov ecx, [ebp-0x2074]
	cmp [ebp-0x20a4], ecx
	jb _Z28R_AssignSModelCacheResourcesP8GfxWorld_440
_Z28R_AssignSModelCacheResourcesP8GfxWorld_450:
	mov ebx, [ebp-0x20c4]
	mov [ebp-0x205c], ebx
_Z28R_AssignSModelCacheResourcesP8GfxWorld_490:
	cmp dword [ebp-0x205c], 0xf
	jbe _Z28R_AssignSModelCacheResourcesP8GfxWorld_500
	mov eax, [ebp-0x20ec]
	shl eax, 0x4
	lea esi, [ebp-0x204c]
	lea eax, [esi+eax]
	mov edx, [ebp-0x20dc]
	mov [eax], edx
	mov ecx, [ebp-0x20c0]
	mov [eax+0x4], ecx
	mov ebx, [ebp-0x205c]
	mov [eax+0xc], ebx
	mov esi, [ebp-0x2078]
	mov [eax+0x8], esi
	add dword [ebp-0x20ec], 0x1
	jmp _Z28R_AssignSModelCacheResourcesP8GfxWorld_500
_Z28R_AssignSModelCacheResourcesP8GfxWorld_170:
	and eax, 0xffffff00
	jmp _Z28R_AssignSModelCacheResourcesP8GfxWorld_510
_Z28R_AssignSModelCacheResourcesP8GfxWorld_420:
	mov [ebp-0x2078], ecx
	cmp ecx, 0x9
	jbe _Z28R_AssignSModelCacheResourcesP8GfxWorld_520
_Z28R_AssignSModelCacheResourcesP8GfxWorld_500:
	add dword [ebp-0x20c0], 0x1
	mov eax, [ebp-0x20c0]
	cmp [ebp-0x20c8], eax
	jbe _Z28R_AssignSModelCacheResourcesP8GfxWorld_530
	movss xmm0, dword [ebp-0x2060]
	movss [ebp-0x20b0], xmm0
	jmp _Z28R_AssignSModelCacheResourcesP8GfxWorld_540
_Z28R_AssignSModelCacheResourcesP8GfxWorld_410:
	xor ebx, ebx
	xor eax, eax
	jmp _Z28R_AssignSModelCacheResourcesP8GfxWorld_550
_Z28R_AssignSModelCacheResourcesP8GfxWorld_400:
	xor ebx, ebx
	xor eax, eax
	jmp _Z28R_AssignSModelCacheResourcesP8GfxWorld_560
_Z28R_AssignSModelCacheResourcesP8GfxWorld_390:
	xor ebx, ebx
	xor eax, eax
	jmp _Z28R_AssignSModelCacheResourcesP8GfxWorld_570
_Z28R_AssignSModelCacheResourcesP8GfxWorld_380:
	xor ecx, ecx
	xor esi, esi
	jmp _Z28R_AssignSModelCacheResourcesP8GfxWorld_580
_Z28R_AssignSModelCacheResourcesP8GfxWorld_430:
	mov eax, [ebp-0x2064]
	mov [ebp-0x2074], eax
	test eax, eax
	jz _Z28R_AssignSModelCacheResourcesP8GfxWorld_500
	jmp _Z28R_AssignSModelCacheResourcesP8GfxWorld_590
_Z28R_AssignSModelCacheResourcesP8GfxWorld_360:
	xor esi, esi
	mov dword [ebp-0x20b4], 0x0
	mov dword [ebp-0x20b8], 0x0
	xor ebx, ebx
_Z28R_AssignSModelCacheResourcesP8GfxWorld_600:
	mov eax, ebx
	add eax, [ebp-0x1c]
	mov [esp], eax
	call _Z19XSurfaceGetNumVertsPK8XSurface
	add [ebp-0x20b8], eax
	mov eax, ebx
	add eax, [ebp-0x1c]
	mov [esp], eax
	call _Z18XSurfaceGetNumTrisPK8XSurface
	add [ebp-0x20b4], eax
	add esi, 0x1
	add ebx, 0x38
	cmp [ebp-0x20bc], esi
	jnz _Z28R_AssignSModelCacheResourcesP8GfxWorld_600
	mov ecx, [ebp-0x20b4]
	lea edx, [ecx+ecx*2]
	mov eax, [ebp-0x20b8]
	shl eax, 0x2
	cmp edx, eax
	cmovg eax, edx
	mov edx, eax
	add edx, 0x3
	jns _Z28R_AssignSModelCacheResourcesP8GfxWorld_610
_Z28R_AssignSModelCacheResourcesP8GfxWorld_370:
	lea edx, [eax+0x6]
	jmp _Z28R_AssignSModelCacheResourcesP8GfxWorld_610
_Z28R_AssignSModelCacheResourcesP8GfxWorld_140:
	xor eax, eax
	jmp _Z28R_AssignSModelCacheResourcesP8GfxWorld_620
_Z28R_AssignSModelCacheResourcesP8GfxWorld_530:
	mov edx, [ebp+0x8]
	mov ecx, [edx+0x244]
	mov ebx, edi
	jmp _Z28R_AssignSModelCacheResourcesP8GfxWorld_340


;void std::__adjust_heap<GfxSModelSurfStats*, int, GfxSModelSurfStats, unsigned char (*)(GfxSModelSurfStats const&, GfxSModelSurfStats const&)>(GfxSModelSurfStats*, int, int, GfxSModelSurfStats, unsigned char (*)(GfxSModelSurfStats const&, GfxSModelSurfStats const&))
_ZSt13__adjust_heapIP18GfxSModelSurfStatsiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov eax, [ebp+0x20]
	mov [ebp-0x30], eax
	mov edx, [ebp+0x1c]
	mov [ebp-0x34], edx
	mov ecx, [ebp+0x18]
	mov [ebp-0x38], ecx
	mov eax, [ebp+0x14]
	mov [ebp-0x3c], eax
	mov edx, [ebp+0xc]
	lea esi, [edx+edx+0x2]
	cmp esi, [ebp+0x10]
	jl _ZSt13__adjust_heapIP18GfxSModelSurfStatsiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__10
	mov eax, edx
	shl eax, 0x4
	mov ecx, [ebp+0x8]
	lea ebx, [eax+ecx]
	mov edi, edx
	cmp [ebp+0x10], esi
	jz _ZSt13__adjust_heapIP18GfxSModelSurfStatsiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__20
_ZSt13__adjust_heapIP18GfxSModelSurfStatsiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__90:
	mov eax, [ebp-0x30]
	mov [ebp-0x1c], eax
	mov edx, [ebp-0x34]
	mov [ebp-0x20], edx
	mov ecx, [ebp-0x38]
	mov [ebp-0x24], ecx
	mov eax, [ebp-0x3c]
	mov [ebp-0x28], eax
	lea edx, [edi-0x1]
	mov eax, edx
	shr eax, 0x1f
	lea esi, [eax+edx]
	sar esi, 1
	cmp edi, [ebp+0xc]
	jg _ZSt13__adjust_heapIP18GfxSModelSurfStatsiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__30
_ZSt13__adjust_heapIP18GfxSModelSurfStatsiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__40:
	mov eax, [ebp-0x28]
	mov [ebx], eax
	mov eax, [ebp-0x24]
	mov [ebx+0x4], eax
	mov eax, [ebp-0x20]
	mov [ebx+0x8], eax
	mov eax, [ebp-0x1c]
	mov [ebx+0xc], eax
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZSt13__adjust_heapIP18GfxSModelSurfStatsiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__50:
	mov edx, edi
	shl edx, 0x4
	mov eax, [ebx]
	mov ecx, [ebp+0x8]
	mov [edx+ecx], eax
	mov eax, [ebx+0x4]
	mov [edx+ecx+0x4], eax
	mov eax, [ebx+0x8]
	mov [edx+ecx+0x8], eax
	mov eax, [ebx+0xc]
	mov [edx+ecx+0xc], eax
	lea edx, [esi-0x1]
	mov eax, edx
	shr eax, 0x1f
	add eax, edx
	sar eax, 1
	cmp esi, [ebp+0xc]
	jle _ZSt13__adjust_heapIP18GfxSModelSurfStatsiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__40
	mov edi, esi
	mov esi, eax
_ZSt13__adjust_heapIP18GfxSModelSurfStatsiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__30:
	mov eax, esi
	shl eax, 0x4
	mov ebx, [ebp+0x8]
	add ebx, eax
	lea edx, [ebp-0x28]
	mov [esp+0x4], edx
	mov [esp], ebx
	call dword [ebp+0x24]
	test al, al
	jnz _ZSt13__adjust_heapIP18GfxSModelSurfStatsiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__50
	shl edi, 0x4
	mov ebx, [ebp+0x8]
	add ebx, edi
	jmp _ZSt13__adjust_heapIP18GfxSModelSurfStatsiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__40
_ZSt13__adjust_heapIP18GfxSModelSurfStatsiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__10:
	mov [ebp-0x2c], edx
	mov edi, esi
	jmp _ZSt13__adjust_heapIP18GfxSModelSurfStatsiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__60
_ZSt13__adjust_heapIP18GfxSModelSurfStatsiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__80:
	mov [ebp-0x2c], edi
	mov edi, esi
_ZSt13__adjust_heapIP18GfxSModelSurfStatsiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__60:
	mov eax, esi
	shl eax, 0x4
	mov ebx, [ebp+0x8]
	add ebx, eax
	lea eax, [ebx-0x10]
	mov [esp+0x4], eax
	mov [esp], ebx
	call dword [ebp+0x24]
	test al, al
	jz _ZSt13__adjust_heapIP18GfxSModelSurfStatsiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__70
	lea edi, [esi-0x1]
	mov eax, edi
	shl eax, 0x4
	mov ebx, [ebp+0x8]
	add ebx, eax
_ZSt13__adjust_heapIP18GfxSModelSurfStatsiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__70:
	mov edx, [ebp-0x2c]
	shl edx, 0x4
	mov eax, [ebx]
	mov ecx, [ebp+0x8]
	mov [edx+ecx], eax
	mov eax, [ebx+0x4]
	mov [edx+ecx+0x4], eax
	mov eax, [ebx+0x8]
	mov [edx+ecx+0x8], eax
	mov eax, [ebx+0xc]
	mov [edx+ecx+0xc], eax
	lea esi, [edi+edi+0x2]
	cmp [ebp+0x10], esi
	jg _ZSt13__adjust_heapIP18GfxSModelSurfStatsiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__80
	cmp [ebp+0x10], esi
	jnz _ZSt13__adjust_heapIP18GfxSModelSurfStatsiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__90
_ZSt13__adjust_heapIP18GfxSModelSurfStatsiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__20:
	mov eax, [ebp+0x10]
	shl eax, 0x4
	add eax, [ebp+0x8]
	lea edx, [eax-0x10]
	mov eax, [eax-0x10]
	mov [ebx], eax
	mov eax, [edx+0x4]
	mov [ebx+0x4], eax
	mov eax, [edx+0x8]
	mov [ebx+0x8], eax
	mov eax, [edx+0xc]
	mov [ebx+0xc], eax
	mov edi, [ebp+0x10]
	sub edi, 0x1
	mov eax, edi
	shl eax, 0x4
	mov ebx, [ebp+0x8]
	add ebx, eax
	jmp _ZSt13__adjust_heapIP18GfxSModelSurfStatsiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__90
	nop


;void std::__adjust_heap<GfxStaticModelDrawInst const**, int, GfxStaticModelDrawInst const*, unsigned char (*)(GfxStaticModelDrawInst const*, GfxStaticModelDrawInst const*)>(GfxStaticModelDrawInst const**, int, int, GfxStaticModelDrawInst const*, unsigned char (*)(GfxStaticModelDrawInst const*, GfxStaticModelDrawInst const*))
_ZSt13__adjust_heapIPPK22GfxStaticModelDrawInstiS2_PFhS2_S2_EEvT_T0_S7_T1_T2_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov eax, [ebp+0xc]
	lea ebx, [eax+eax+0x2]
	cmp ebx, [ebp+0x10]
	jl _ZSt13__adjust_heapIPPK22GfxStaticModelDrawInstiS2_PFhS2_S2_EEvT_T0_S7_T1_T2__10
	mov edx, [ebp+0x8]
	lea esi, [edx+eax*4]
	mov edi, eax
_ZSt13__adjust_heapIPPK22GfxStaticModelDrawInstiS2_PFhS2_S2_EEvT_T0_S7_T1_T2__70:
	cmp [ebp+0x10], ebx
	jz _ZSt13__adjust_heapIPPK22GfxStaticModelDrawInstiS2_PFhS2_S2_EEvT_T0_S7_T1_T2__20
_ZSt13__adjust_heapIPPK22GfxStaticModelDrawInstiS2_PFhS2_S2_EEvT_T0_S7_T1_T2__100:
	lea edx, [edi-0x1]
	mov eax, edx
	shr eax, 0x1f
	lea ebx, [eax+edx]
	sar ebx, 1
	cmp edi, [ebp+0xc]
	jg _ZSt13__adjust_heapIPPK22GfxStaticModelDrawInstiS2_PFhS2_S2_EEvT_T0_S7_T1_T2__30
_ZSt13__adjust_heapIPPK22GfxStaticModelDrawInstiS2_PFhS2_S2_EEvT_T0_S7_T1_T2__40:
	mov eax, [ebp+0x14]
	mov [esi], eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZSt13__adjust_heapIPPK22GfxStaticModelDrawInstiS2_PFhS2_S2_EEvT_T0_S7_T1_T2__50:
	mov eax, [esi]
	mov edx, [ebp+0x8]
	mov [edx+edi*4], eax
	lea edx, [ebx-0x1]
	mov eax, edx
	shr eax, 0x1f
	add eax, edx
	sar eax, 1
	cmp ebx, [ebp+0xc]
	jle _ZSt13__adjust_heapIPPK22GfxStaticModelDrawInstiS2_PFhS2_S2_EEvT_T0_S7_T1_T2__40
	mov edi, ebx
	mov ebx, eax
_ZSt13__adjust_heapIPPK22GfxStaticModelDrawInstiS2_PFhS2_S2_EEvT_T0_S7_T1_T2__30:
	mov eax, [ebp+0x8]
	lea esi, [eax+ebx*4]
	mov edx, [ebp+0x14]
	mov [esp+0x4], edx
	mov eax, [esi]
	mov [esp], eax
	call dword [ebp+0x18]
	test al, al
	jnz _ZSt13__adjust_heapIPPK22GfxStaticModelDrawInstiS2_PFhS2_S2_EEvT_T0_S7_T1_T2__50
	mov ecx, [ebp+0x8]
	lea esi, [ecx+edi*4]
	jmp _ZSt13__adjust_heapIPPK22GfxStaticModelDrawInstiS2_PFhS2_S2_EEvT_T0_S7_T1_T2__40
_ZSt13__adjust_heapIPPK22GfxStaticModelDrawInstiS2_PFhS2_S2_EEvT_T0_S7_T1_T2__10:
	mov [ebp-0x1c], eax
	mov edi, ebx
	jmp _ZSt13__adjust_heapIPPK22GfxStaticModelDrawInstiS2_PFhS2_S2_EEvT_T0_S7_T1_T2__60
_ZSt13__adjust_heapIPPK22GfxStaticModelDrawInstiS2_PFhS2_S2_EEvT_T0_S7_T1_T2__80:
	lea edi, [ebx-0x1]
	mov ecx, [ebp+0x8]
	lea esi, [ecx+edi*4]
_ZSt13__adjust_heapIPPK22GfxStaticModelDrawInstiS2_PFhS2_S2_EEvT_T0_S7_T1_T2__90:
	mov eax, [esi]
	mov edx, [ebp-0x1c]
	mov [ecx+edx*4], eax
	lea ebx, [edi+edi+0x2]
	cmp [ebp+0x10], ebx
	jle _ZSt13__adjust_heapIPPK22GfxStaticModelDrawInstiS2_PFhS2_S2_EEvT_T0_S7_T1_T2__70
	mov [ebp-0x1c], edi
	mov edi, ebx
_ZSt13__adjust_heapIPPK22GfxStaticModelDrawInstiS2_PFhS2_S2_EEvT_T0_S7_T1_T2__60:
	lea eax, [ebx*4]
	mov esi, [ebp+0x8]
	add esi, eax
	mov edx, [ebp+0x8]
	mov eax, [edx+eax-0x4]
	mov [esp+0x4], eax
	mov eax, [esi]
	mov [esp], eax
	call dword [ebp+0x18]
	test al, al
	jnz _ZSt13__adjust_heapIPPK22GfxStaticModelDrawInstiS2_PFhS2_S2_EEvT_T0_S7_T1_T2__80
	mov ecx, [ebp+0x8]
	jmp _ZSt13__adjust_heapIPPK22GfxStaticModelDrawInstiS2_PFhS2_S2_EEvT_T0_S7_T1_T2__90
_ZSt13__adjust_heapIPPK22GfxStaticModelDrawInstiS2_PFhS2_S2_EEvT_T0_S7_T1_T2__20:
	mov edx, [ebp+0x10]
	mov ecx, [ebp+0x8]
	mov eax, [ecx+edx*4-0x4]
	mov [esi], eax
	mov edi, edx
	sub edi, 0x1
	lea esi, [ecx+edi*4]
	jmp _ZSt13__adjust_heapIPPK22GfxStaticModelDrawInstiS2_PFhS2_S2_EEvT_T0_S7_T1_T2__100


;void std::__insertion_sort<GfxSModelSurfStats*, unsigned char (*)(GfxSModelSurfStats const&, GfxSModelSurfStats const&)>(GfxSModelSurfStats*, GfxSModelSurfStats*, unsigned char (*)(GfxSModelSurfStats const&, GfxSModelSurfStats const&))
_ZSt16__insertion_sortIP18GfxSModelSurfStatsPFhRKS0_S3_EEvT_S6_T0_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov eax, [ebp+0xc]
	cmp [ebp+0x8], eax
	jz _ZSt16__insertion_sortIP18GfxSModelSurfStatsPFhRKS0_S3_EEvT_S6_T0__10
	mov edi, [ebp+0x8]
	add edi, 0x10
	cmp eax, edi
	jz _ZSt16__insertion_sortIP18GfxSModelSurfStatsPFhRKS0_S3_EEvT_S6_T0__10
_ZSt16__insertion_sortIP18GfxSModelSurfStatsPFhRKS0_S3_EEvT_S6_T0__50:
	mov eax, [edi]
	mov [ebp-0x28], eax
	mov eax, [edi+0x4]
	mov [ebp-0x24], eax
	mov eax, [edi+0x8]
	mov [ebp-0x20], eax
	mov eax, [edi+0xc]
	mov [ebp-0x1c], eax
	mov edx, [ebp+0x8]
	mov [esp+0x4], edx
	lea eax, [ebp-0x28]
	mov [esp], eax
	call dword [ebp+0x10]
	test al, al
	jz _ZSt16__insertion_sortIP18GfxSModelSurfStatsPFhRKS0_S3_EEvT_S6_T0__20
	lea edx, [edi+0x10]
	mov [ebp-0x3c], edx
	mov esi, edi
	sub esi, [ebp+0x8]
	sar esi, 0x4
	test esi, esi
	jle _ZSt16__insertion_sortIP18GfxSModelSurfStatsPFhRKS0_S3_EEvT_S6_T0__30
	mov ecx, edi
	xor ebx, ebx
_ZSt16__insertion_sortIP18GfxSModelSurfStatsPFhRKS0_S3_EEvT_S6_T0__40:
	mov eax, [ecx-0x10]
	mov [edx-0x10], eax
	mov eax, [ecx-0xc]
	mov [edx-0xc], eax
	mov eax, [ecx-0x8]
	mov [edx-0x8], eax
	mov eax, [ecx-0x4]
	mov [edx-0x4], eax
	add ebx, 0x1
	sub ecx, 0x10
	sub edx, 0x10
	cmp ebx, esi
	jnz _ZSt16__insertion_sortIP18GfxSModelSurfStatsPFhRKS0_S3_EEvT_S6_T0__40
_ZSt16__insertion_sortIP18GfxSModelSurfStatsPFhRKS0_S3_EEvT_S6_T0__30:
	mov eax, [ebp-0x28]
	mov edx, [ebp+0x8]
	mov [edx], eax
	mov eax, [ebp-0x24]
	mov [edx+0x4], eax
	mov eax, [ebp-0x20]
	mov [edx+0x8], eax
	mov eax, [ebp-0x1c]
	mov [edx+0xc], eax
	mov edi, [ebp-0x3c]
_ZSt16__insertion_sortIP18GfxSModelSurfStatsPFhRKS0_S3_EEvT_S6_T0__80:
	cmp [ebp+0xc], edi
	jnz _ZSt16__insertion_sortIP18GfxSModelSurfStatsPFhRKS0_S3_EEvT_S6_T0__50
_ZSt16__insertion_sortIP18GfxSModelSurfStatsPFhRKS0_S3_EEvT_S6_T0__10:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZSt16__insertion_sortIP18GfxSModelSurfStatsPFhRKS0_S3_EEvT_S6_T0__20:
	mov eax, [ebp-0x1c]
	mov [ebp-0x2c], eax
	mov eax, [ebp-0x20]
	mov [ebp-0x30], eax
	mov eax, [ebp-0x24]
	mov [ebp-0x34], eax
	mov eax, [ebp-0x28]
	mov [ebp-0x38], eax
	lea ebx, [edi-0x10]
	mov esi, edi
	jmp _ZSt16__insertion_sortIP18GfxSModelSurfStatsPFhRKS0_S3_EEvT_S6_T0__60
_ZSt16__insertion_sortIP18GfxSModelSurfStatsPFhRKS0_S3_EEvT_S6_T0__70:
	mov eax, [ebx]
	mov [esi], eax
	mov eax, [ebx+0x4]
	mov [esi+0x4], eax
	mov eax, [ebx+0x8]
	mov [esi+0x8], eax
	mov eax, [ebx+0xc]
	mov [esi+0xc], eax
	mov esi, ebx
	sub ebx, 0x10
_ZSt16__insertion_sortIP18GfxSModelSurfStatsPFhRKS0_S3_EEvT_S6_T0__60:
	mov [esp+0x4], ebx
	lea eax, [ebp-0x38]
	mov [esp], eax
	call dword [ebp+0x10]
	test al, al
	jnz _ZSt16__insertion_sortIP18GfxSModelSurfStatsPFhRKS0_S3_EEvT_S6_T0__70
	mov eax, [ebp-0x38]
	mov [esi], eax
	mov eax, [ebp-0x34]
	mov [esi+0x4], eax
	mov eax, [ebp-0x30]
	mov [esi+0x8], eax
	mov eax, [ebp-0x2c]
	mov [esi+0xc], eax
	add edi, 0x10
	jmp _ZSt16__insertion_sortIP18GfxSModelSurfStatsPFhRKS0_S3_EEvT_S6_T0__80


;void std::__insertion_sort<GfxStaticModelDrawInst const**, unsigned char (*)(GfxStaticModelDrawInst const*, GfxStaticModelDrawInst const*)>(GfxStaticModelDrawInst const**, GfxStaticModelDrawInst const**, unsigned char (*)(GfxStaticModelDrawInst const*, GfxStaticModelDrawInst const*))
_ZSt16__insertion_sortIPPK22GfxStaticModelDrawInstPFhS2_S2_EEvT_S6_T0_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov eax, [ebp+0xc]
	cmp [ebp+0x8], eax
	jz _ZSt16__insertion_sortIPPK22GfxStaticModelDrawInstPFhS2_S2_EEvT_S6_T0__10
	mov edx, [ebp+0x8]
	add edx, 0x4
	mov [ebp-0x1c], edx
	cmp eax, edx
	jz _ZSt16__insertion_sortIPPK22GfxStaticModelDrawInstPFhS2_S2_EEvT_S6_T0__10
_ZSt16__insertion_sortIPPK22GfxStaticModelDrawInstPFhS2_S2_EEvT_S6_T0__50:
	mov edi, [edx]
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov [esp+0x4], eax
	mov [esp], edi
	call dword [ebp+0x10]
	test al, al
	jnz _ZSt16__insertion_sortIPPK22GfxStaticModelDrawInstPFhS2_S2_EEvT_S6_T0__20
	mov ebx, [ebp-0x1c]
	sub ebx, 0x4
	mov esi, [ebp-0x1c]
	jmp _ZSt16__insertion_sortIPPK22GfxStaticModelDrawInstPFhS2_S2_EEvT_S6_T0__30
_ZSt16__insertion_sortIPPK22GfxStaticModelDrawInstPFhS2_S2_EEvT_S6_T0__40:
	mov eax, [ebx]
	mov [esi], eax
	mov esi, ebx
	sub ebx, 0x4
_ZSt16__insertion_sortIPPK22GfxStaticModelDrawInstPFhS2_S2_EEvT_S6_T0__30:
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov [esp], edi
	call dword [ebp+0x10]
	test al, al
	jnz _ZSt16__insertion_sortIPPK22GfxStaticModelDrawInstPFhS2_S2_EEvT_S6_T0__40
	mov [esi], edi
	add dword [ebp-0x1c], 0x4
	mov edx, [ebp-0x1c]
_ZSt16__insertion_sortIPPK22GfxStaticModelDrawInstPFhS2_S2_EEvT_S6_T0__60:
	cmp [ebp+0xc], edx
	jnz _ZSt16__insertion_sortIPPK22GfxStaticModelDrawInstPFhS2_S2_EEvT_S6_T0__50
_ZSt16__insertion_sortIPPK22GfxStaticModelDrawInstPFhS2_S2_EEvT_S6_T0__10:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZSt16__insertion_sortIPPK22GfxStaticModelDrawInstPFhS2_S2_EEvT_S6_T0__20:
	mov ebx, [ebp-0x1c]
	add ebx, 0x4
	mov eax, [ebp-0x1c]
	sub eax, [ebp+0x8]
	and eax, 0xfffffffc
	mov [esp+0x8], eax
	mov edx, [ebp+0x8]
	mov [esp+0x4], edx
	mov edx, ebx
	sub edx, eax
	mov [esp], edx
	call memmove
	mov eax, [ebp+0x8]
	mov [eax], edi
	mov [ebp-0x1c], ebx
	mov edx, ebx
	jmp _ZSt16__insertion_sortIPPK22GfxStaticModelDrawInstPFhS2_S2_EEvT_S6_T0__60
	nop


;void std::__introsort_loop<GfxSModelSurfStats*, int, unsigned char (*)(GfxSModelSurfStats const&, GfxSModelSurfStats const&)>(GfxSModelSurfStats*, GfxSModelSurfStats*, int, unsigned char (*)(GfxSModelSurfStats const&, GfxSModelSurfStats const&))
_ZSt16__introsort_loopIP18GfxSModelSurfStatsiPFhRKS0_S3_EEvT_S6_T0_T1_:
_ZSt16__introsort_loopIP18GfxSModelSurfStatsiPFhRKS0_S3_EEvT_S6_T0_T1__130:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x9c
	mov eax, [ebp+0xc]
	sub eax, [ebp+0x8]
	cmp eax, 0x10f
	jle _ZSt16__introsort_loopIP18GfxSModelSurfStatsiPFhRKS0_S3_EEvT_S6_T0_T1__10
	mov ecx, [ebp+0x10]
	test ecx, ecx
	jnz _ZSt16__introsort_loopIP18GfxSModelSurfStatsiPFhRKS0_S3_EEvT_S6_T0_T1__20
_ZSt16__introsort_loopIP18GfxSModelSurfStatsiPFhRKS0_S3_EEvT_S6_T0_T1__140:
	cmp eax, 0x1f
	jle _ZSt16__introsort_loopIP18GfxSModelSurfStatsiPFhRKS0_S3_EEvT_S6_T0_T1__10
	sar eax, 0x4
	mov [ebp-0x6c], eax
	sub eax, 0x2
	mov edx, eax
	shr edx, 0x1f
	add edx, eax
	sar edx, 1
	mov [ebp-0x7c], edx
	mov eax, edx
	shl eax, 0x4
	mov esi, [ebp+0x8]
	add esi, eax
	mov dword [ebp-0x54], 0x0
	jmp _ZSt16__introsort_loopIP18GfxSModelSurfStatsiPFhRKS0_S3_EEvT_S6_T0_T1__30
_ZSt16__introsort_loopIP18GfxSModelSurfStatsiPFhRKS0_S3_EEvT_S6_T0_T1__40:
	add dword [ebp-0x54], 0x1
_ZSt16__introsort_loopIP18GfxSModelSurfStatsiPFhRKS0_S3_EEvT_S6_T0_T1__30:
	mov ebx, [esi]
	mov [ebp-0x38], ebx
	mov ecx, [esi+0x4]
	mov [ebp-0x34], ecx
	mov edx, [esi+0x8]
	mov [ebp-0x30], edx
	mov eax, [esi+0xc]
	mov [ebp-0x2c], eax
	mov edi, [ebp+0x14]
	mov [esp+0x1c], edi
	mov [esp+0xc], ebx
	mov [esp+0x10], ecx
	mov [esp+0x14], edx
	mov [esp+0x18], eax
	mov eax, [ebp-0x6c]
	mov [esp+0x8], eax
	mov eax, [ebp-0x7c]
	sub eax, [ebp-0x54]
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _ZSt13__adjust_heapIP18GfxSModelSurfStatsiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2_
	sub esi, 0x10
	mov edi, [ebp-0x7c]
	cmp [ebp-0x54], edi
	jnz _ZSt16__introsort_loopIP18GfxSModelSurfStatsiPFhRKS0_S3_EEvT_S6_T0_T1__40
	mov esi, [ebp+0xc]
	mov [ebp-0x60], esi
	mov edi, esi
	sub edi, 0x4
	mov eax, esi
	sub eax, [ebp+0x8]
	mov [ebp-0x58], eax
	sub eax, 0x10
	mov [ebp-0x5c], eax
_ZSt16__introsort_loopIP18GfxSModelSurfStatsiPFhRKS0_S3_EEvT_S6_T0_T1__50:
	mov eax, [edi]
	mov [ebp-0x68], eax
	mov ebx, [edi-0x4]
	mov ecx, [edi-0x8]
	mov edx, [edi-0xc]
	mov esi, [ebp+0x8]
	mov eax, [esi]
	mov esi, [ebp-0x60]
	mov [esi-0x10], eax
	mov esi, [ebp+0x8]
	mov eax, [esi+0x4]
	mov esi, [ebp-0x60]
	mov [esi-0xc], eax
	mov esi, [ebp+0x8]
	mov eax, [esi+0x8]
	mov esi, [ebp-0x60]
	mov [esi-0x8], eax
	mov esi, [ebp+0x8]
	mov eax, [esi+0xc]
	mov esi, [ebp-0x60]
	mov [esi-0x4], eax
	mov eax, [ebp-0x68]
	mov [ebp-0x1c], eax
	mov [ebp-0x20], ebx
	mov [ebp-0x24], ecx
	mov [ebp-0x28], edx
	mov esi, [ebp+0x14]
	mov [esp+0x1c], esi
	mov [esp+0xc], edx
	mov [esp+0x10], ecx
	mov [esp+0x14], ebx
	mov [esp+0x18], eax
	mov eax, [ebp-0x5c]
	sar eax, 0x4
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _ZSt13__adjust_heapIP18GfxSModelSurfStatsiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2_
	sub dword [ebp-0x60], 0x10
	sub edi, 0x10
	sub dword [ebp-0x5c], 0x10
	mov eax, [ebp+0x8]
	sub eax, [ebp+0xc]
	add eax, [ebp-0x58]
	mov edx, [ebp-0x5c]
	lea eax, [eax+edx+0x10]
	cmp eax, 0x1f
	jg _ZSt16__introsort_loopIP18GfxSModelSurfStatsiPFhRKS0_S3_EEvT_S6_T0_T1__50
_ZSt16__introsort_loopIP18GfxSModelSurfStatsiPFhRKS0_S3_EEvT_S6_T0_T1__10:
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZSt16__introsort_loopIP18GfxSModelSurfStatsiPFhRKS0_S3_EEvT_S6_T0_T1__20:
	mov esi, [ebp+0x10]
	mov [ebp-0x4c], esi
	mov dword [ebp-0x50], 0x0
	mov edi, [ebp+0xc]
_ZSt16__introsort_loopIP18GfxSModelSurfStatsiPFhRKS0_S3_EEvT_S6_T0_T1__150:
	sub dword [ebp-0x4c], 0x1
	mov esi, [ebp+0x8]
	sar eax, 0x4
	mov edx, eax
	shr edx, 0x1f
	add edx, eax
	sar edx, 1
	shl edx, 0x4
	mov ebx, esi
	add ebx, edx
	sub edi, 0x10
	mov [esp+0x4], ebx
	mov [esp], esi
	call dword [ebp+0x14]
	test al, al
	jz _ZSt16__introsort_loopIP18GfxSModelSurfStatsiPFhRKS0_S3_EEvT_S6_T0_T1__60
	mov [esp+0x4], edi
	mov [esp], ebx
	call dword [ebp+0x14]
	test al, al
	jz _ZSt16__introsort_loopIP18GfxSModelSurfStatsiPFhRKS0_S3_EEvT_S6_T0_T1__70
_ZSt16__introsort_loopIP18GfxSModelSurfStatsiPFhRKS0_S3_EEvT_S6_T0_T1__160:
	mov esi, ebx
_ZSt16__introsort_loopIP18GfxSModelSurfStatsiPFhRKS0_S3_EEvT_S6_T0_T1__120:
	mov edx, [esi+0x8]
	mov ecx, [esi+0x4]
	mov ebx, [esi]
	mov eax, [esi+0xc]
	mov [ebp-0x3c], eax
	mov [ebp-0x40], edx
	mov [ebp-0x44], ecx
	mov [ebp-0x48], ebx
	mov esi, [ebp+0x8]
	mov edi, [ebp+0xc]
_ZSt16__introsort_loopIP18GfxSModelSurfStatsiPFhRKS0_S3_EEvT_S6_T0_T1__110:
	lea edx, [ebp-0x48]
	mov [esp+0x4], edx
	mov [esp], esi
	call dword [ebp+0x14]
	test al, al
	jnz _ZSt16__introsort_loopIP18GfxSModelSurfStatsiPFhRKS0_S3_EEvT_S6_T0_T1__80
_ZSt16__introsort_loopIP18GfxSModelSurfStatsiPFhRKS0_S3_EEvT_S6_T0_T1__90:
	sub edi, 0x10
	mov [esp+0x4], edi
	lea eax, [ebp-0x48]
	mov [esp], eax
	call dword [ebp+0x14]
	test al, al
	jnz _ZSt16__introsort_loopIP18GfxSModelSurfStatsiPFhRKS0_S3_EEvT_S6_T0_T1__90
	cmp esi, edi
	jae _ZSt16__introsort_loopIP18GfxSModelSurfStatsiPFhRKS0_S3_EEvT_S6_T0_T1__100
	mov edx, [esi+0xc]
	mov ecx, [esi+0x8]
	mov ebx, [esi+0x4]
	mov eax, [esi]
	mov [ebp-0x64], eax
	mov eax, [edi]
	mov [esi], eax
	mov eax, [edi+0x4]
	mov [esi+0x4], eax
	mov eax, [edi+0x8]
	mov [esi+0x8], eax
	mov eax, [edi+0xc]
	mov [esi+0xc], eax
	mov [edi+0xc], edx
	mov [edi+0x8], ecx
	mov [edi+0x4], ebx
	mov edx, [ebp-0x64]
	mov [edi], edx
	add esi, 0x10
	lea edx, [ebp-0x48]
	mov [esp+0x4], edx
	mov [esp], esi
	call dword [ebp+0x14]
	test al, al
	jz _ZSt16__introsort_loopIP18GfxSModelSurfStatsiPFhRKS0_S3_EEvT_S6_T0_T1__90
_ZSt16__introsort_loopIP18GfxSModelSurfStatsiPFhRKS0_S3_EEvT_S6_T0_T1__80:
	add esi, 0x10
	jmp _ZSt16__introsort_loopIP18GfxSModelSurfStatsiPFhRKS0_S3_EEvT_S6_T0_T1__110
_ZSt16__introsort_loopIP18GfxSModelSurfStatsiPFhRKS0_S3_EEvT_S6_T0_T1__70:
	mov [esp+0x4], edi
	mov edx, [ebp+0x8]
	mov [esp], edx
	call dword [ebp+0x14]
	test al, al
	jz _ZSt16__introsort_loopIP18GfxSModelSurfStatsiPFhRKS0_S3_EEvT_S6_T0_T1__120
	mov esi, edi
	jmp _ZSt16__introsort_loopIP18GfxSModelSurfStatsiPFhRKS0_S3_EEvT_S6_T0_T1__120
_ZSt16__introsort_loopIP18GfxSModelSurfStatsiPFhRKS0_S3_EEvT_S6_T0_T1__100:
	mov edx, [ebp+0x14]
	mov [esp+0xc], edx
	mov edi, [ebp-0x4c]
	mov [esp+0x8], edi
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], esi
	call _ZSt16__introsort_loopIP18GfxSModelSurfStatsiPFhRKS0_S3_EEvT_S6_T0_T1__130
	mov eax, esi
	sub eax, [ebp+0x8]
	cmp eax, 0x10f
	jle _ZSt16__introsort_loopIP18GfxSModelSurfStatsiPFhRKS0_S3_EEvT_S6_T0_T1__10
	add dword [ebp-0x50], 0x1
	mov [ebp+0xc], esi
	mov edx, [ebp+0x10]
	cmp [ebp-0x50], edx
	jz _ZSt16__introsort_loopIP18GfxSModelSurfStatsiPFhRKS0_S3_EEvT_S6_T0_T1__140
	mov edi, esi
	jmp _ZSt16__introsort_loopIP18GfxSModelSurfStatsiPFhRKS0_S3_EEvT_S6_T0_T1__150
_ZSt16__introsort_loopIP18GfxSModelSurfStatsiPFhRKS0_S3_EEvT_S6_T0_T1__60:
	mov [esp+0x4], edi
	mov eax, [ebp+0x8]
	mov [esp], eax
	call dword [ebp+0x14]
	test al, al
	jnz _ZSt16__introsort_loopIP18GfxSModelSurfStatsiPFhRKS0_S3_EEvT_S6_T0_T1__120
	mov [esp+0x4], edi
	mov [esp], ebx
	call dword [ebp+0x14]
	test al, al
	jz _ZSt16__introsort_loopIP18GfxSModelSurfStatsiPFhRKS0_S3_EEvT_S6_T0_T1__160
	mov esi, edi
	jmp _ZSt16__introsort_loopIP18GfxSModelSurfStatsiPFhRKS0_S3_EEvT_S6_T0_T1__120
	nop


;void std::__introsort_loop<GfxStaticModelDrawInst const**, int, unsigned char (*)(GfxStaticModelDrawInst const*, GfxStaticModelDrawInst const*)>(GfxStaticModelDrawInst const**, GfxStaticModelDrawInst const**, int, unsigned char (*)(GfxStaticModelDrawInst const*, GfxStaticModelDrawInst const*))
_ZSt16__introsort_loopIPPK22GfxStaticModelDrawInstiPFhS2_S2_EEvT_S6_T0_T1_:
_ZSt16__introsort_loopIPPK22GfxStaticModelDrawInstiPFhS2_S2_EEvT_S6_T0_T1__130:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov eax, [ebp+0xc]
	sub eax, [ebp+0x8]
	cmp eax, 0x43
	jle _ZSt16__introsort_loopIPPK22GfxStaticModelDrawInstiPFhS2_S2_EEvT_S6_T0_T1__10
	mov edx, [ebp+0x10]
	test edx, edx
	jnz _ZSt16__introsort_loopIPPK22GfxStaticModelDrawInstiPFhS2_S2_EEvT_S6_T0_T1__20
_ZSt16__introsort_loopIPPK22GfxStaticModelDrawInstiPFhS2_S2_EEvT_S6_T0_T1__150:
	cmp eax, 0x7
	jle _ZSt16__introsort_loopIPPK22GfxStaticModelDrawInstiPFhS2_S2_EEvT_S6_T0_T1__10
	sar eax, 0x2
	mov [ebp-0x24], eax
	mov edx, eax
	sub edx, 0x2
	mov eax, edx
	shr eax, 0x1f
	lea esi, [eax+edx]
	sar esi, 1
	mov edi, [ebp+0x8]
	lea ebx, [edi+esi*4]
	xor edi, edi
	jmp _ZSt16__introsort_loopIPPK22GfxStaticModelDrawInstiPFhS2_S2_EEvT_S6_T0_T1__30
_ZSt16__introsort_loopIPPK22GfxStaticModelDrawInstiPFhS2_S2_EEvT_S6_T0_T1__40:
	add edi, 0x1
_ZSt16__introsort_loopIPPK22GfxStaticModelDrawInstiPFhS2_S2_EEvT_S6_T0_T1__30:
	mov eax, [ebp+0x14]
	mov [esp+0x10], eax
	mov eax, [ebx]
	mov [esp+0xc], eax
	mov edx, [ebp-0x24]
	mov [esp+0x8], edx
	mov eax, esi
	sub eax, edi
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _ZSt13__adjust_heapIPPK22GfxStaticModelDrawInstiS2_PFhS2_S2_EEvT_T0_S7_T1_T2_
	sub ebx, 0x4
	cmp edi, esi
	jnz _ZSt16__introsort_loopIPPK22GfxStaticModelDrawInstiPFhS2_S2_EEvT_S6_T0_T1__40
	mov ecx, [ebp+0xc]
	mov edi, ecx
	sub edi, [ebp+0x8]
	mov [ebp-0x2c], edi
	mov esi, edi
	sub esi, 0x4
_ZSt16__introsort_loopIPPK22GfxStaticModelDrawInstiPFhS2_S2_EEvT_S6_T0_T1__50:
	lea ebx, [ecx-0x4]
	mov edx, [ecx-0x4]
	mov edi, [ebp+0x8]
	mov eax, [edi]
	mov [ecx-0x4], eax
	mov eax, [ebp+0x14]
	mov [esp+0x10], eax
	mov [esp+0xc], edx
	mov eax, esi
	sar eax, 0x2
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov [esp], edi
	call _ZSt13__adjust_heapIPPK22GfxStaticModelDrawInstiS2_PFhS2_S2_EEvT_T0_S7_T1_T2_
	mov ecx, ebx
	sub esi, 0x4
	mov eax, edi
	sub eax, [ebp+0xc]
	add eax, [ebp-0x2c]
	lea eax, [eax+esi+0x4]
	cmp eax, 0x7
	jg _ZSt16__introsort_loopIPPK22GfxStaticModelDrawInstiPFhS2_S2_EEvT_S6_T0_T1__50
_ZSt16__introsort_loopIPPK22GfxStaticModelDrawInstiPFhS2_S2_EEvT_S6_T0_T1__10:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZSt16__introsort_loopIPPK22GfxStaticModelDrawInstiPFhS2_S2_EEvT_S6_T0_T1__20:
	mov edx, [ebp+0x10]
	mov [ebp-0x1c], edx
	mov dword [ebp-0x20], 0x0
	mov esi, [ebp+0xc]
_ZSt16__introsort_loopIPPK22GfxStaticModelDrawInstiPFhS2_S2_EEvT_S6_T0_T1__140:
	sub dword [ebp-0x1c], 0x1
	mov edx, eax
	sar edx, 0x2
	mov eax, edx
	shr eax, 0x1f
	add eax, edx
	sar eax, 1
	mov edi, [ebp+0x8]
	lea ebx, [edi+eax*4]
	sub esi, 0x4
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov eax, [edi]
	mov [esp], eax
	call dword [ebp+0x14]
	test al, al
	jz _ZSt16__introsort_loopIPPK22GfxStaticModelDrawInstiPFhS2_S2_EEvT_S6_T0_T1__60
	mov edx, [ebp+0xc]
	mov eax, [edx-0x4]
	mov [esp+0x4], eax
	mov eax, [ebx]
	mov [esp], eax
	call dword [ebp+0x14]
	test al, al
	jz _ZSt16__introsort_loopIPPK22GfxStaticModelDrawInstiPFhS2_S2_EEvT_S6_T0_T1__70
_ZSt16__introsort_loopIPPK22GfxStaticModelDrawInstiPFhS2_S2_EEvT_S6_T0_T1__170:
	mov esi, ebx
_ZSt16__introsort_loopIPPK22GfxStaticModelDrawInstiPFhS2_S2_EEvT_S6_T0_T1__120:
	mov edi, [esi]
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0xc]
_ZSt16__introsort_loopIPPK22GfxStaticModelDrawInstiPFhS2_S2_EEvT_S6_T0_T1__110:
	mov [esp+0x4], edi
	mov eax, [esi]
	mov [esp], eax
	call dword [ebp+0x14]
	test al, al
	jnz _ZSt16__introsort_loopIPPK22GfxStaticModelDrawInstiPFhS2_S2_EEvT_S6_T0_T1__80
_ZSt16__introsort_loopIPPK22GfxStaticModelDrawInstiPFhS2_S2_EEvT_S6_T0_T1__90:
	sub ebx, 0x4
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov [esp], edi
	call dword [ebp+0x14]
	test al, al
	jnz _ZSt16__introsort_loopIPPK22GfxStaticModelDrawInstiPFhS2_S2_EEvT_S6_T0_T1__90
	cmp esi, ebx
	jae _ZSt16__introsort_loopIPPK22GfxStaticModelDrawInstiPFhS2_S2_EEvT_S6_T0_T1__100
	mov edx, [esi]
	mov eax, [ebx]
	mov [esi], eax
	mov [ebx], edx
	add esi, 0x4
	mov [esp+0x4], edi
	mov eax, [esi]
	mov [esp], eax
	call dword [ebp+0x14]
	test al, al
	jz _ZSt16__introsort_loopIPPK22GfxStaticModelDrawInstiPFhS2_S2_EEvT_S6_T0_T1__90
_ZSt16__introsort_loopIPPK22GfxStaticModelDrawInstiPFhS2_S2_EEvT_S6_T0_T1__80:
	add esi, 0x4
	jmp _ZSt16__introsort_loopIPPK22GfxStaticModelDrawInstiPFhS2_S2_EEvT_S6_T0_T1__110
_ZSt16__introsort_loopIPPK22GfxStaticModelDrawInstiPFhS2_S2_EEvT_S6_T0_T1__70:
	mov edi, [ebp+0xc]
	mov eax, [edi-0x4]
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov [esp], eax
	call dword [ebp+0x14]
	test al, al
	jnz _ZSt16__introsort_loopIPPK22GfxStaticModelDrawInstiPFhS2_S2_EEvT_S6_T0_T1__120
_ZSt16__introsort_loopIPPK22GfxStaticModelDrawInstiPFhS2_S2_EEvT_S6_T0_T1__160:
	mov esi, [ebp+0x8]
	jmp _ZSt16__introsort_loopIPPK22GfxStaticModelDrawInstiPFhS2_S2_EEvT_S6_T0_T1__120
_ZSt16__introsort_loopIPPK22GfxStaticModelDrawInstiPFhS2_S2_EEvT_S6_T0_T1__100:
	mov edi, [ebp+0x14]
	mov [esp+0xc], edi
	mov eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	mov [esp], esi
	call _ZSt16__introsort_loopIPPK22GfxStaticModelDrawInstiPFhS2_S2_EEvT_S6_T0_T1__130
	mov eax, esi
	sub eax, [ebp+0x8]
	cmp eax, 0x43
	jle _ZSt16__introsort_loopIPPK22GfxStaticModelDrawInstiPFhS2_S2_EEvT_S6_T0_T1__10
	add dword [ebp-0x20], 0x1
	mov [ebp+0xc], esi
	mov edx, [ebp-0x20]
	cmp [ebp+0x10], edx
	jnz _ZSt16__introsort_loopIPPK22GfxStaticModelDrawInstiPFhS2_S2_EEvT_S6_T0_T1__140
	jmp _ZSt16__introsort_loopIPPK22GfxStaticModelDrawInstiPFhS2_S2_EEvT_S6_T0_T1__150
_ZSt16__introsort_loopIPPK22GfxStaticModelDrawInstiPFhS2_S2_EEvT_S6_T0_T1__60:
	mov edi, [ebp+0xc]
	mov eax, [edi-0x4]
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov [esp], eax
	call dword [ebp+0x14]
	test al, al
	jnz _ZSt16__introsort_loopIPPK22GfxStaticModelDrawInstiPFhS2_S2_EEvT_S6_T0_T1__160
	mov eax, [edi-0x4]
	mov [esp+0x4], eax
	mov eax, [ebx]
	mov [esp], eax
	call dword [ebp+0x14]
	test al, al
	jnz _ZSt16__introsort_loopIPPK22GfxStaticModelDrawInstiPFhS2_S2_EEvT_S6_T0_T1__120
	jmp _ZSt16__introsort_loopIPPK22GfxStaticModelDrawInstiPFhS2_S2_EEvT_S6_T0_T1__170


;Initialized global or static variables of r_staticmodelcache_load_obj:
SECTION .data


;Initialized constant data of r_staticmodelcache_load_obj:
SECTION .rdata


;Zero initialized global or static variables of r_staticmodelcache_load_obj:
SECTION .bss


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata
_float_0_50000000:		dd 0x3f000000	; 0.5

