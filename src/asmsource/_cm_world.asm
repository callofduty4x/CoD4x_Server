;Imports of cm_world:
	extern SV_GEntityForSvEntity
	extern Com_DPrintf
	extern SV_PointSightTraceToEntity
	extern CM_TraceBox
	extern CM_TraceStaticModelComplete
	extern cm
	extern XModelGetContents
	extern SV_ClipSightToEntity
	extern CM_TraceStaticModel
	extern SV_PointTraceToEntity
	extern SV_ClipMoveToEntity
	extern memset
	extern CM_ModelBounds
	extern CM_ClipHandleToModel
	extern CM_CalcTraceExtents
	extern SV_SvEntityForNum
	extern CM_AddEntityToNode

;Exports of cm_world:
	global cm_world
	global CM_PointSightTraceToEntities_r
	global CM_PointTraceStaticModelsComplete_r
	global CM_ClipSightTraceToEntities_r
	global CM_PointTraceStaticModels_r
	global CM_PointTraceToEntities_r
	global CM_ClipMoveToEntities_r
	global CM_SortNode
	global CM_LinkWorld
	global CM_LinkEntity
	global CM_UnlinkEntity
	global CM_ClipMoveToEntities
	global CM_PointTraceToEntities
	global CM_PointTraceStaticModels
	global CM_ClipSightTraceToEntities
	global CM_PointSightTraceToEntities
	global CM_PointTraceStaticModelsComplete

SECTION .text



;CM_PointSightTraceToEntities_r(sightpointtrace_t*, unsigned short, float const*, float const*)
CM_PointSightTraceToEntities_r:
CM_PointSightTraceToEntities_r_30:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov esi, eax
	mov edi, [ebp+0x8]
	movzx edx, dx
	lea eax, [edx*4]
	shl edx, 0x5
	sub edx, eax
	lea ebx, [edx+cm_world+0x1c]
	mov eax, [esi+0x20]
	test [ebx+0x4], eax
	jz CM_PointSightTraceToEntities_r_10
	test [ebx+0x8], eax
	jz CM_PointSightTraceToEntities_r_10
	movzx eax, word [ebx+0x14]
	shl eax, 0x2
	movss xmm0, dword [ebx+0x10]
	movss xmm2, dword [eax+ecx]
	subss xmm2, xmm0
	movss xmm3, dword [eax+edi]
	subss xmm3, xmm0
	movaps xmm0, xmm2
	mulss xmm0, xmm3
	pxor xmm4, xmm4
	ucomiss xmm0, xmm4
	jb CM_PointSightTraceToEntities_r_20
	movaps xmm0, xmm3
	subss xmm0, xmm2
	movaps xmm1, xmm4
	cmpss xmm1, xmm0, 0x2
	movaps xmm0, xmm1
	andps xmm2, xmm1
	andnps xmm0, xmm3
	orps xmm0, xmm2
	xor edx, edx
	ucomiss xmm0, xmm4
	setae dl
	mov eax, 0x1
	sub eax, edx
	movzx edx, word [ebx+eax*2+0x18]
	mov [esp], edi
	mov eax, esi
	call CM_PointSightTraceToEntities_r_30
	test eax, eax
	jnz CM_PointSightTraceToEntities_r_40
CM_PointSightTraceToEntities_r_60:
	movzx eax, word [ebx+0xc]
	movzx ecx, ax
	test ax, ax
	jnz CM_PointSightTraceToEntities_r_50
CM_PointSightTraceToEntities_r_10:
	xor eax, eax
CM_PointSightTraceToEntities_r_40:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CM_PointSightTraceToEntities_r_50:
	dec ecx
	mov [esp], ecx
	call SV_SvEntityForNum
	mov ebx, eax
	mov [esp+0x4], ebx
	mov [esp], esi
	call SV_PointSightTraceToEntity
	test eax, eax
	jnz CM_PointSightTraceToEntities_r_40
	movzx eax, word [ebx+0x2]
	movzx ecx, ax
	test ax, ax
	jnz CM_PointSightTraceToEntities_r_50
	jmp CM_PointSightTraceToEntities_r_10
CM_PointSightTraceToEntities_r_20:
	movaps xmm0, xmm2
	subss xmm0, xmm3
	divss xmm2, xmm0
	movss xmm1, dword [ecx]
	movss xmm0, dword [edi]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebp-0x24], xmm1
	movss xmm1, dword [ecx+0x4]
	movss xmm0, dword [edi+0x4]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebp-0x20], xmm1
	movss xmm1, dword [ecx+0x8]
	movss xmm0, dword [edi+0x8]
	subss xmm0, xmm1
	mulss xmm2, xmm0
	addss xmm1, xmm2
	movss [ebp-0x1c], xmm1
	xor eax, eax
	ucomiss xmm3, xmm4
	setae al
	mov [ebp-0x2c], eax
	movzx edx, word [ebx+eax*2+0x18]
	lea eax, [ebp-0x24]
	mov [esp], eax
	mov eax, esi
	call CM_PointSightTraceToEntities_r_30
	test eax, eax
	jnz CM_PointSightTraceToEntities_r_40
	mov al, 0x1
	sub eax, [ebp-0x2c]
	movzx edx, word [ebx+eax*2+0x18]
	mov [esp], edi
	lea ecx, [ebp-0x24]
	mov eax, esi
	call CM_PointSightTraceToEntities_r_30
	test eax, eax
	jz CM_PointSightTraceToEntities_r_60
	jmp CM_PointSightTraceToEntities_r_40
	nop


;CM_PointTraceStaticModelsComplete_r(staticmodeltrace_t const*, unsigned short, float const*, float const*)
CM_PointTraceStaticModelsComplete_r:
CM_PointTraceStaticModelsComplete_r_90:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov edi, eax
	mov eax, [ecx]
	mov [ebp-0x30], eax
	mov eax, [ecx+0x4]
	mov [ebp-0x2c], eax
	mov eax, [ecx+0x8]
	mov [ebp-0x28], eax
	jmp CM_PointTraceStaticModelsComplete_r_10
CM_PointTraceStaticModelsComplete_r_40:
	mov eax, [ebp-0x3c]
	movss xmm0, dword [eax+0x10]
	movzx eax, word [eax+0x14]
	movss xmm2, dword [ebp+eax*4-0x30]
	subss xmm2, xmm0
	mov ecx, [ebp+0x8]
	movss xmm3, dword [ecx+eax*4]
	subss xmm3, xmm0
	movaps xmm0, xmm2
	mulss xmm0, xmm3
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jb CM_PointTraceStaticModelsComplete_r_20
	movaps xmm0, xmm3
	subss xmm0, xmm2
	movaps xmm4, xmm1
	cmpss xmm4, xmm0, 0x2
	movaps xmm0, xmm4
	andps xmm2, xmm4
	andnps xmm0, xmm3
	orps xmm0, xmm2
	xor eax, eax
	ucomiss xmm0, xmm1
	setae al
	mov edx, 0x1
	sub edx, eax
	mov ecx, [ebp-0x3c]
	movzx edx, word [ecx+edx*2+0x18]
CM_PointTraceStaticModelsComplete_r_10:
	movzx eax, dx
	lea edx, [eax*4]
	shl eax, 0x5
	sub eax, edx
	add eax, cm_world+0x10
	lea edx, [eax+0xc]
	mov [ebp-0x3c], edx
	mov eax, [eax+0xc]
	test [edi+0x24], eax
	jz CM_PointTraceStaticModelsComplete_r_30
CM_PointTraceStaticModelsComplete_r_100:
	movzx eax, word [edx+0xe]
	test ax, ax
	jz CM_PointTraceStaticModelsComplete_r_40
	jmp CM_PointTraceStaticModelsComplete_r_50
CM_PointTraceStaticModelsComplete_r_80:
	mov dword [esp+0xc], 0x3f800000
	lea eax, [ebx-0xc]
	mov [esp+0x8], eax
	lea eax, [ebx-0x18]
	mov [esp+0x4], eax
	mov [esp], edi
	call CM_TraceBox
	test eax, eax
	jnz CM_PointTraceStaticModelsComplete_r_60
	mov eax, [edi+0x24]
	mov [esp+0xc], eax
	lea eax, [edi+0xc]
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	mov [esp], esi
	call CM_TraceStaticModelComplete
	test eax, eax
	jz CM_PointTraceStaticModelsComplete_r_70
CM_PointTraceStaticModelsComplete_r_60:
	movzx eax, word [esi]
	test ax, ax
	jz CM_PointTraceStaticModelsComplete_r_40
CM_PointTraceStaticModelsComplete_r_50:
	movzx eax, ax
	lea ebx, [eax+eax*4]
	shl ebx, 0x4
	mov ecx, cm
	add ebx, [ecx+0x14]
	lea esi, [ebx-0x50]
	mov eax, [esi+0x4]
	mov [esp], eax
	call XModelGetContents
	test [edi+0x24], eax
	jz CM_PointTraceStaticModelsComplete_r_60
	jmp CM_PointTraceStaticModelsComplete_r_80
CM_PointTraceStaticModelsComplete_r_20:
	movaps xmm0, xmm2
	subss xmm0, xmm3
	divss xmm2, xmm0
	movss xmm1, dword [ebp-0x30]
	movss xmm0, dword [ecx]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebp-0x24], xmm1
	movss xmm1, dword [ebp-0x2c]
	movss xmm0, dword [ecx+0x4]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebp-0x20], xmm1
	movss xmm1, dword [ebp-0x28]
	movss xmm0, dword [ecx+0x8]
	subss xmm0, xmm1
	mulss xmm2, xmm0
	addss xmm1, xmm2
	movss [ebp-0x1c], xmm1
	pxor xmm0, xmm0
	xor ebx, ebx
	ucomiss xmm3, xmm0
	setae bl
	mov eax, [ebp-0x3c]
	movzx edx, word [eax+ebx*2+0x18]
	lea eax, [ebp-0x24]
	mov [esp], eax
	lea ecx, [ebp-0x30]
	mov eax, edi
	call CM_PointTraceStaticModelsComplete_r_90
	test eax, eax
	jz CM_PointTraceStaticModelsComplete_r_70
	mov eax, 0x1
	sub eax, ebx
	mov ecx, [ebp-0x3c]
	movzx edx, word [ecx+eax*2+0x18]
	mov eax, [ebp-0x24]
	mov [ebp-0x30], eax
	mov eax, [ebp-0x20]
	mov [ebp-0x2c], eax
	mov eax, [ebp-0x1c]
	mov [ebp-0x28], eax
	movzx eax, dx
	lea edx, [eax*4]
	shl eax, 0x5
	sub eax, edx
	add eax, cm_world+0x10
	lea edx, [eax+0xc]
	mov [ebp-0x3c], edx
	mov eax, [eax+0xc]
	test [edi+0x24], eax
	jnz CM_PointTraceStaticModelsComplete_r_100
CM_PointTraceStaticModelsComplete_r_30:
	mov eax, 0x1
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CM_PointTraceStaticModelsComplete_r_70:
	xor eax, eax
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;CM_ClipSightTraceToEntities_r(sightclip_t const*, unsigned short, float const*, float const*)
CM_ClipSightTraceToEntities_r:
CM_ClipSightTraceToEntities_r_100:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov edi, eax
	mov eax, [ecx]
	mov [ebp-0x30], eax
	mov eax, [ecx+0x4]
	mov [ebp-0x2c], eax
	mov eax, [ecx+0x8]
	mov [ebp-0x28], eax
CM_ClipSightTraceToEntities_r_80:
	movzx eax, dx
	lea edx, [eax*4]
	shl eax, 0x5
	sub eax, edx
	lea esi, [eax+cm_world+0x1c]
	mov eax, [edi+0x44]
	test [esi+0x4], eax
	jz CM_ClipSightTraceToEntities_r_10
CM_ClipSightTraceToEntities_r_40:
	test [esi+0x8], eax
	jz CM_ClipSightTraceToEntities_r_10
	movzx eax, word [esi+0xc]
	movzx edx, ax
	test ax, ax
	jnz CM_ClipSightTraceToEntities_r_20
CM_ClipSightTraceToEntities_r_50:
	movzx eax, word [esi+0x14]
	movss xmm0, dword [esi+0x10]
	movss xmm3, dword [ebp+eax*4-0x30]
	subss xmm3, xmm0
	mov edx, [ebp+0x8]
	movss xmm2, dword [edx+eax*4]
	subss xmm2, xmm0
	movss xmm5, dword [edi+eax*4+0x18]
	movaps xmm6, xmm2
	subss xmm6, xmm3
	pxor xmm7, xmm7
	movaps xmm0, xmm7
	cmpss xmm0, xmm6, 0x6
	movaps xmm1, xmm2
	andps xmm1, xmm0
	andnps xmm0, xmm3
	orps xmm0, xmm1
	ucomiss xmm0, xmm5
	jb CM_ClipSightTraceToEntities_r_30
	movzx edx, word [esi+0x18]
	movzx eax, dx
	lea edx, [eax*4]
	shl eax, 0x5
	sub eax, edx
	lea esi, [eax+cm_world+0x1c]
	mov eax, [edi+0x44]
	test [esi+0x4], eax
	jnz CM_ClipSightTraceToEntities_r_40
CM_ClipSightTraceToEntities_r_10:
	xor eax, eax
CM_ClipSightTraceToEntities_r_110:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CM_ClipSightTraceToEntities_r_60:
	movzx eax, word [ebx+0x2]
	movzx edx, ax
	test ax, ax
	jz CM_ClipSightTraceToEntities_r_50
CM_ClipSightTraceToEntities_r_20:
	dec edx
	mov [esp], edx
	call SV_SvEntityForNum
	mov ebx, eax
	mov [esp+0x4], ebx
	mov [esp], edi
	call SV_ClipSightToEntity
	test eax, eax
	jz CM_ClipSightTraceToEntities_r_60
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CM_ClipSightTraceToEntities_r_30:
	movaps xmm0, xmm3
	subss xmm0, xmm2
	movaps xmm1, xmm7
	cmpss xmm1, xmm0, 0x6
	movaps xmm0, xmm1
	andps xmm2, xmm1
	andnps xmm0, xmm3
	orps xmm0, xmm2
	movss xmm4, dword [_data16_80000000]
	movaps xmm1, xmm5
	xorps xmm1, xmm4
	ucomiss xmm1, xmm0
	jb CM_ClipSightTraceToEntities_r_70
	movzx edx, word [esi+0x1a]
	jmp CM_ClipSightTraceToEntities_r_80
CM_ClipSightTraceToEntities_r_70:
	ucomiss xmm6, xmm7
	jnz CM_ClipSightTraceToEntities_r_90
	jp CM_ClipSightTraceToEntities_r_90
	movaps xmm3, xmm7
	movss xmm2, dword [_float_1_00000000]
	movaps xmm4, xmm2
	xor ebx, ebx
	movaps xmm0, xmm7
CM_ClipSightTraceToEntities_r_120:
	movaps xmm1, xmm7
	cmpss xmm1, xmm0, 0x2
	movaps xmm0, xmm1
	movaps xmm1, xmm2
	andps xmm1, xmm0
	movaps xmm2, xmm0
	andnps xmm2, xmm4
	orps xmm2, xmm1
	movss xmm1, dword [ebp-0x30]
	mov eax, [ebp+0x8]
	movss xmm0, dword [eax]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebp-0x24], xmm1
	movss xmm1, dword [ebp-0x2c]
	movss xmm0, dword [eax+0x4]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebp-0x20], xmm1
	movss xmm1, dword [ebp-0x28]
	movss xmm0, dword [eax+0x8]
	subss xmm0, xmm1
	mulss xmm2, xmm0
	addss xmm1, xmm2
	movss [ebp-0x1c], xmm1
	movzx edx, word [esi+ebx*2+0x18]
	lea eax, [ebp-0x24]
	mov [esp], eax
	lea ecx, [ebp-0x30]
	mov eax, edi
	movss [ebp-0x48], xmm3
	movss [ebp-0x58], xmm7
	call CM_ClipSightTraceToEntities_r_100
	test eax, eax
	movss xmm3, dword [ebp-0x48]
	movss xmm7, dword [ebp-0x58]
	jnz CM_ClipSightTraceToEntities_r_110
	movaps xmm0, xmm7
	cmpss xmm0, xmm3, 0x2
	andps xmm3, xmm0
	orps xmm3, xmm7
	movss xmm1, dword [ebp-0x30]
	mov edx, [ebp+0x8]
	movss xmm0, dword [edx]
	subss xmm0, xmm1
	mulss xmm0, xmm3
	addss xmm1, xmm0
	movss [ebp-0x30], xmm1
	movss xmm1, dword [ebp-0x2c]
	movss xmm0, dword [edx+0x4]
	subss xmm0, xmm1
	mulss xmm0, xmm3
	addss xmm1, xmm0
	movss [ebp-0x2c], xmm1
	movss xmm1, dword [ebp-0x28]
	movss xmm0, dword [edx+0x8]
	subss xmm0, xmm1
	mulss xmm3, xmm0
	addss xmm1, xmm3
	movss [ebp-0x28], xmm1
	mov al, 0x1
	sub eax, ebx
	movzx edx, word [esi+eax*2+0x18]
	jmp CM_ClipSightTraceToEntities_r_80
CM_ClipSightTraceToEntities_r_90:
	movaps xmm2, xmm6
	andps xmm2, [_data16_7fffffff]
	movaps xmm1, xmm3
	xorps xmm1, xmm4
	movaps xmm0, xmm7
	cmpss xmm0, xmm6, 0x2
	andps xmm1, xmm0
	andnps xmm0, xmm3
	orps xmm0, xmm1
	movss xmm4, dword [_float_1_00000000]
	movaps xmm1, xmm4
	divss xmm1, xmm2
	movaps xmm3, xmm0
	subss xmm3, xmm5
	mulss xmm3, xmm1
	movaps xmm2, xmm0
	addss xmm2, xmm5
	mulss xmm2, xmm1
	xor ebx, ebx
	ucomiss xmm6, xmm7
	setae bl
	movaps xmm0, xmm4
	subss xmm0, xmm2
	jmp CM_ClipSightTraceToEntities_r_120
	nop


;CM_PointTraceStaticModels_r(locTraceWork_t*, unsigned short, float const*, float const*, trace_t*)
CM_PointTraceStaticModels_r:
CM_PointTraceStaticModels_r_80:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov [ebp-0x3c], eax
	mov eax, [ecx]
	mov [ebp-0x38], eax
	mov eax, [ecx+0x4]
	mov [ebp-0x34], eax
	mov eax, [ecx+0x8]
	mov [ebp-0x30], eax
	mov eax, [ecx+0xc]
	mov [ebp-0x2c], eax
	mov eax, [ebp-0x3c]
	add eax, 0x4
	mov [ebp-0x40], eax
CM_PointTraceStaticModels_r_90:
	movzx eax, dx
	lea edx, [eax*4]
	shl eax, 0x5
	sub eax, edx
	add eax, cm_world+0x10
	lea edi, [eax+0xc]
	mov eax, [eax+0xc]
	mov edx, [ebp-0x3c]
	test [edx], eax
	jz CM_PointTraceStaticModels_r_10
CM_PointTraceStaticModels_r_40:
	movzx eax, word [edi+0xe]
	test ax, ax
	jnz CM_PointTraceStaticModels_r_20
CM_PointTraceStaticModels_r_60:
	movss xmm0, dword [edi+0x10]
	movzx eax, word [edi+0x14]
	movss xmm2, dword [ebp+eax*4-0x38]
	subss xmm2, xmm0
	mov edx, [ebp+0x8]
	movss xmm3, dword [edx+eax*4]
	subss xmm3, xmm0
	movaps xmm0, xmm2
	mulss xmm0, xmm3
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jb CM_PointTraceStaticModels_r_30
	movaps xmm0, xmm3
	subss xmm0, xmm2
	movaps xmm4, xmm1
	cmpss xmm4, xmm0, 0x2
	movaps xmm0, xmm4
	andps xmm2, xmm4
	andnps xmm0, xmm3
	orps xmm0, xmm2
	xor edx, edx
	ucomiss xmm0, xmm1
	setae dl
	mov eax, 0x1
	sub eax, edx
	movzx edx, word [edi+eax*2+0x18]
	movzx eax, dx
	lea edx, [eax*4]
	shl eax, 0x5
	sub eax, edx
	add eax, cm_world+0x10
	lea edi, [eax+0xc]
	mov eax, [eax+0xc]
	mov edx, [ebp-0x3c]
	test [edx], eax
	jnz CM_PointTraceStaticModels_r_40
CM_PointTraceStaticModels_r_10:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CM_PointTraceStaticModels_r_70:
	mov edx, [ebp+0xc]
	mov eax, [edx]
	mov [esp+0xc], eax
	lea eax, [ebx-0xc]
	mov [esp+0x8], eax
	lea eax, [ebx-0x18]
	mov [esp+0x4], eax
	mov eax, [ebp-0x40]
	mov [esp], eax
	call CM_TraceBox
	test eax, eax
	jnz CM_PointTraceStaticModels_r_50
	mov edx, [ebp-0x3c]
	mov eax, [edx]
	mov [esp+0x10], eax
	mov eax, edx
	add eax, 0x10
	mov [esp+0xc], eax
	mov eax, [ebp-0x40]
	mov [esp+0x8], eax
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	mov [esp], esi
	call CM_TraceStaticModel
CM_PointTraceStaticModels_r_50:
	movzx eax, word [esi]
	test ax, ax
	jz CM_PointTraceStaticModels_r_60
CM_PointTraceStaticModels_r_20:
	movzx eax, ax
	lea ebx, [eax+eax*4]
	shl ebx, 0x4
	mov eax, cm
	add ebx, [eax+0x14]
	lea esi, [ebx-0x50]
	mov eax, [esi+0x4]
	mov [esp], eax
	call XModelGetContents
	mov edx, [ebp-0x3c]
	test [edx], eax
	jz CM_PointTraceStaticModels_r_50
	jmp CM_PointTraceStaticModels_r_70
CM_PointTraceStaticModels_r_30:
	movss xmm4, dword [ebp-0x2c]
	mov eax, [ebp+0xc]
	ucomiss xmm4, [eax]
	jae CM_PointTraceStaticModels_r_10
	movaps xmm0, xmm2
	subss xmm0, xmm3
	divss xmm2, xmm0
	movss xmm1, dword [ebp-0x38]
	mov edx, [ebp+0x8]
	movss xmm0, dword [edx]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebp-0x28], xmm1
	movss xmm1, dword [ebp-0x34]
	movss xmm0, dword [edx+0x4]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebp-0x24], xmm1
	movss xmm1, dword [ebp-0x30]
	movss xmm0, dword [edx+0x8]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebp-0x20], xmm1
	movss xmm0, dword [edx+0xc]
	subss xmm0, xmm4
	mulss xmm2, xmm0
	addss xmm4, xmm2
	movss [ebp-0x1c], xmm4
	pxor xmm0, xmm0
	xor ebx, ebx
	ucomiss xmm3, xmm0
	setae bl
	movzx edx, word [edi+ebx*2+0x18]
	mov [esp+0x4], eax
	lea eax, [ebp-0x28]
	mov [esp], eax
	lea ecx, [ebp-0x38]
	mov eax, [ebp-0x3c]
	call CM_PointTraceStaticModels_r_80
	mov eax, 0x1
	sub eax, ebx
	movzx edx, word [edi+eax*2+0x18]
	mov eax, [ebp-0x28]
	mov [ebp-0x38], eax
	mov eax, [ebp-0x24]
	mov [ebp-0x34], eax
	mov eax, [ebp-0x20]
	mov [ebp-0x30], eax
	mov eax, [ebp-0x1c]
	mov [ebp-0x2c], eax
	jmp CM_PointTraceStaticModels_r_90


;CM_PointTraceToEntities_r(pointtrace_t*, unsigned short, float const*, float const*, trace_t*)
CM_PointTraceToEntities_r:
CM_PointTraceToEntities_r_60:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov edi, eax
	mov eax, [ecx]
	mov [ebp-0x38], eax
	mov eax, [ecx+0x4]
	mov [ebp-0x34], eax
	mov eax, [ecx+0x8]
	mov [ebp-0x30], eax
	mov eax, [ecx+0xc]
	mov [ebp-0x2c], eax
CM_PointTraceToEntities_r_70:
	movzx eax, dx
	lea edx, [eax*4]
	shl eax, 0x5
	sub eax, edx
	lea esi, [eax+cm_world+0x1c]
	mov eax, [edi+0x28]
	test [esi+0x4], eax
	jz CM_PointTraceToEntities_r_10
CM_PointTraceToEntities_r_40:
	test [esi+0x8], eax
	jz CM_PointTraceToEntities_r_10
	movzx eax, word [esi+0xc]
	movzx edx, ax
	test ax, ax
	jnz CM_PointTraceToEntities_r_20
CM_PointTraceToEntities_r_50:
	movss xmm0, dword [esi+0x10]
	movzx eax, word [esi+0x14]
	movss xmm2, dword [ebp+eax*4-0x38]
	subss xmm2, xmm0
	mov edx, [ebp+0x8]
	movss xmm3, dword [edx+eax*4]
	subss xmm3, xmm0
	movaps xmm0, xmm2
	mulss xmm0, xmm3
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jb CM_PointTraceToEntities_r_30
	movaps xmm0, xmm3
	subss xmm0, xmm2
	movaps xmm4, xmm1
	cmpss xmm4, xmm0, 0x2
	movaps xmm0, xmm4
	andps xmm2, xmm4
	andnps xmm0, xmm3
	orps xmm0, xmm2
	xor eax, eax
	ucomiss xmm0, xmm1
	setae al
	mov edx, 0x1
	sub edx, eax
	movzx edx, word [esi+edx*2+0x18]
	movzx eax, dx
	lea edx, [eax*4]
	shl eax, 0x5
	sub eax, edx
	lea esi, [eax+cm_world+0x1c]
	mov eax, [edi+0x28]
	test [esi+0x4], eax
	jnz CM_PointTraceToEntities_r_40
CM_PointTraceToEntities_r_10:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CM_PointTraceToEntities_r_20:
	dec edx
	mov [esp], edx
	call SV_SvEntityForNum
	mov ebx, eax
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov [esp], edi
	call SV_PointTraceToEntity
	movzx eax, word [ebx+0x2]
	movzx edx, ax
	test ax, ax
	jnz CM_PointTraceToEntities_r_20
	jmp CM_PointTraceToEntities_r_50
CM_PointTraceToEntities_r_30:
	movss xmm4, dword [ebp-0x2c]
	mov eax, [ebp+0xc]
	ucomiss xmm4, [eax]
	jae CM_PointTraceToEntities_r_10
	movaps xmm0, xmm2
	subss xmm0, xmm3
	divss xmm2, xmm0
	movss xmm1, dword [ebp-0x38]
	mov edx, [ebp+0x8]
	movss xmm0, dword [edx]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebp-0x28], xmm1
	movss xmm1, dword [ebp-0x34]
	movss xmm0, dword [edx+0x4]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebp-0x24], xmm1
	movss xmm1, dword [ebp-0x30]
	movss xmm0, dword [edx+0x8]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebp-0x20], xmm1
	movss xmm0, dword [edx+0xc]
	subss xmm0, xmm4
	mulss xmm2, xmm0
	addss xmm4, xmm2
	movss [ebp-0x1c], xmm4
	pxor xmm0, xmm0
	xor ebx, ebx
	ucomiss xmm3, xmm0
	setae bl
	movzx edx, word [esi+ebx*2+0x18]
	mov [esp+0x4], eax
	lea eax, [ebp-0x28]
	mov [esp], eax
	lea ecx, [ebp-0x38]
	mov eax, edi
	call CM_PointTraceToEntities_r_60
	mov eax, 0x1
	sub eax, ebx
	movzx edx, word [esi+eax*2+0x18]
	mov eax, [ebp-0x28]
	mov [ebp-0x38], eax
	mov eax, [ebp-0x24]
	mov [ebp-0x34], eax
	mov eax, [ebp-0x20]
	mov [ebp-0x30], eax
	mov eax, [ebp-0x1c]
	mov [ebp-0x2c], eax
	jmp CM_PointTraceToEntities_r_70
	nop


;CM_ClipMoveToEntities_r(moveclip_t const*, unsigned short, float const*, float const*, trace_t*)
CM_ClipMoveToEntities_r:
CM_ClipMoveToEntities_r_110:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov edi, eax
	mov eax, [ecx]
	mov [ebp-0x38], eax
	mov eax, [ecx+0x4]
	mov [ebp-0x34], eax
	mov eax, [ecx+0x8]
	mov [ebp-0x30], eax
	mov eax, [ecx+0xc]
	mov [ebp-0x2c], eax
CM_ClipMoveToEntities_r_90:
	movzx eax, dx
	lea edx, [eax*4]
	shl eax, 0x5
	sub eax, edx
	lea esi, [eax+cm_world+0x1c]
	mov ecx, [edi+0x50]
	test [esi+0x4], ecx
	jz CM_ClipMoveToEntities_r_10
CM_ClipMoveToEntities_r_40:
	test [esi+0x8], ecx
	jz CM_ClipMoveToEntities_r_10
	movzx eax, word [esi+0xc]
	movzx edx, ax
	test ax, ax
	jnz CM_ClipMoveToEntities_r_20
CM_ClipMoveToEntities_r_50:
	movzx eax, word [esi+0x14]
	movss xmm0, dword [esi+0x10]
	movss xmm3, dword [ebp+eax*4-0x38]
	subss xmm3, xmm0
	mov edx, [ebp+0x8]
	movss xmm2, dword [edx+eax*4]
	subss xmm2, xmm0
	movss xmm5, dword [edi+eax*4+0x18]
	movaps xmm6, xmm2
	subss xmm6, xmm3
	pxor xmm7, xmm7
	movaps xmm0, xmm7
	cmpss xmm0, xmm6, 0x6
	movaps xmm1, xmm2
	andps xmm1, xmm0
	andnps xmm0, xmm3
	orps xmm0, xmm1
	ucomiss xmm0, xmm5
	jb CM_ClipMoveToEntities_r_30
	movzx edx, word [esi+0x18]
	movzx eax, dx
	lea edx, [eax*4]
	shl eax, 0x5
	sub eax, edx
	lea esi, [eax+cm_world+0x1c]
	mov ecx, [edi+0x50]
	test [esi+0x4], ecx
	jnz CM_ClipMoveToEntities_r_40
CM_ClipMoveToEntities_r_10:
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CM_ClipMoveToEntities_r_70:
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov [esp], edi
	call SV_ClipMoveToEntity
CM_ClipMoveToEntities_r_60:
	movzx eax, word [ebx+0x2]
	movzx edx, ax
	test ax, ax
	jz CM_ClipMoveToEntities_r_50
	mov ecx, [edi+0x50]
CM_ClipMoveToEntities_r_20:
	mov ebx, ecx
	dec edx
	mov [esp], edx
	call SV_SvEntityForNum
	mov ecx, ebx
	mov ebx, eax
	test [ebx+0x164], ecx
	jz CM_ClipMoveToEntities_r_60
	jmp CM_ClipMoveToEntities_r_70
CM_ClipMoveToEntities_r_30:
	movaps xmm0, xmm3
	subss xmm0, xmm2
	movaps xmm1, xmm7
	cmpss xmm1, xmm0, 0x6
	movaps xmm0, xmm1
	andps xmm2, xmm1
	andnps xmm0, xmm3
	orps xmm0, xmm2
	movss xmm4, dword [_data16_80000000]
	movaps xmm1, xmm5
	xorps xmm1, xmm4
	ucomiss xmm1, xmm0
	jb CM_ClipMoveToEntities_r_80
	movzx edx, word [esi+0x1a]
	jmp CM_ClipMoveToEntities_r_90
CM_ClipMoveToEntities_r_80:
	movss xmm0, dword [ebp-0x2c]
	movss [ebp-0x3c], xmm0
	mov eax, [ebp+0xc]
	ucomiss xmm0, [eax]
	jae CM_ClipMoveToEntities_r_10
	ucomiss xmm6, xmm7
	jnz CM_ClipMoveToEntities_r_100
	jp CM_ClipMoveToEntities_r_100
	movaps xmm3, xmm7
	movss xmm2, dword [_float_1_00000000]
	movaps xmm4, xmm2
	xor eax, eax
	movaps xmm0, xmm7
	mov ebx, 0x1
CM_ClipMoveToEntities_r_120:
	movaps xmm1, xmm7
	cmpss xmm1, xmm0, 0x2
	movaps xmm0, xmm1
	movaps xmm1, xmm2
	andps xmm1, xmm0
	movaps xmm2, xmm0
	andnps xmm2, xmm4
	orps xmm2, xmm1
	movss xmm1, dword [ebp-0x38]
	mov edx, [ebp+0x8]
	movss xmm0, dword [edx]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebp-0x28], xmm1
	movss xmm1, dword [ebp-0x34]
	movss xmm0, dword [edx+0x4]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebp-0x24], xmm1
	movss xmm1, dword [ebp-0x30]
	movss xmm0, dword [edx+0x8]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebp-0x20], xmm1
	movss xmm0, dword [edx+0xc]
	subss xmm0, [ebp-0x3c]
	mulss xmm2, xmm0
	addss xmm2, [ebp-0x3c]
	movss [ebp-0x1c], xmm2
	movzx edx, word [esi+eax*2+0x18]
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	lea eax, [ebp-0x28]
	mov [esp], eax
	lea ecx, [ebp-0x38]
	mov eax, edi
	movss [ebp-0x58], xmm3
	movss [ebp-0x68], xmm7
	call CM_ClipMoveToEntities_r_110
	movss xmm3, dword [ebp-0x58]
	movss xmm7, dword [ebp-0x68]
	movaps xmm0, xmm7
	cmpss xmm0, xmm3, 0x2
	andps xmm3, xmm0
	orps xmm3, xmm7
	movss xmm1, dword [ebp-0x38]
	mov edx, [ebp+0x8]
	movss xmm0, dword [edx]
	subss xmm0, xmm1
	mulss xmm0, xmm3
	addss xmm1, xmm0
	movss [ebp-0x38], xmm1
	movss xmm1, dword [ebp-0x34]
	movss xmm0, dword [edx+0x4]
	subss xmm0, xmm1
	mulss xmm0, xmm3
	addss xmm1, xmm0
	movss [ebp-0x34], xmm1
	movss xmm1, dword [ebp-0x30]
	movss xmm0, dword [edx+0x8]
	subss xmm0, xmm1
	mulss xmm0, xmm3
	addss xmm1, xmm0
	movss [ebp-0x30], xmm1
	movss xmm1, dword [ebp-0x2c]
	movss xmm0, dword [edx+0xc]
	subss xmm0, xmm1
	mulss xmm3, xmm0
	addss xmm1, xmm3
	movss [ebp-0x2c], xmm1
	movzx edx, word [esi+ebx*2+0x18]
	jmp CM_ClipMoveToEntities_r_90
CM_ClipMoveToEntities_r_100:
	movaps xmm2, xmm6
	andps xmm2, [_data16_7fffffff]
	movaps xmm1, xmm3
	xorps xmm1, xmm4
	movaps xmm0, xmm7
	cmpss xmm0, xmm6, 0x2
	andps xmm1, xmm0
	andnps xmm0, xmm3
	orps xmm0, xmm1
	movss xmm4, dword [_float_1_00000000]
	movaps xmm1, xmm4
	divss xmm1, xmm2
	movaps xmm3, xmm0
	subss xmm3, xmm5
	mulss xmm3, xmm1
	movaps xmm2, xmm0
	addss xmm2, xmm5
	mulss xmm2, xmm1
	xor eax, eax
	ucomiss xmm6, xmm7
	setae al
	movaps xmm0, xmm4
	subss xmm0, xmm2
	mov ebx, 0x1
	sub ebx, eax
	jmp CM_ClipMoveToEntities_r_120
	nop


;CM_SortNode(unsigned short, float*, float*)
CM_SortNode:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov [ebp-0x58], edx
	mov [ebp-0x5c], ecx
	mov [ebp-0x52], ax
	movzx eax, ax
	lea edx, [eax*4]
	shl eax, 0x5
	sub eax, edx
	add eax, cm_world+0x1c
	mov [ebp-0x34], eax
	movzx eax, word [eax+0x14]
	mov [ebp-0x44], eax
	mov edx, [ebp-0x34]
	movss xmm0, dword [edx+0x10]
	movss [ebp-0x40], xmm0
	movzx edi, word [edx+0xc]
	test di, di
	jz CM_SortNode_10
	mov dword [ebp-0x3c], 0x0
CM_SortNode_60:
	movzx eax, di
	dec eax
	mov [esp], eax
	call SV_SvEntityForNum
	mov edx, eax
	mov [ebp-0x4c], edx
	mov eax, [ebp-0x44]
	movss xmm0, dword [edx+eax*4+0x168]
	ucomiss xmm0, [ebp-0x40]
	jbe CM_SortNode_20
	mov edx, [ebp-0x34]
	movzx eax, word [edx+0x18]
	test ax, ax
	jnz CM_SortNode_30
	movzx edx, word [cm_world+0x18]
	test dx, dx
	jz CM_SortNode_40
	mov eax, [ebp-0x5c]
	movss xmm1, dword [eax]
	mov eax, [ebp-0x58]
	subss xmm1, [eax]
	movss [ebp-0x20], xmm1
	mov eax, [ebp-0x5c]
	movss xmm0, dword [eax+0x4]
	mov eax, [ebp-0x58]
	subss xmm0, [eax+0x4]
	movss [ebp-0x1c], xmm0
	xor ebx, ebx
	ucomiss xmm0, xmm1
	setae bl
	movzx ecx, bx
	movss xmm0, dword [_float_512_00000000]
	ucomiss xmm0, [ebp+ecx*4-0x20]
	jb CM_SortNode_50
CM_SortNode_40:
	mov eax, [ebp-0x4c]
CM_SortNode_260:
	movzx edi, word [eax+0x2]
	mov [ebp-0x3c], eax
CM_SortNode_240:
	test di, di
	jnz CM_SortNode_60
	mov eax, [ebp-0x34]
CM_SortNode_280:
	movzx edi, word [eax+0xe]
	test di, di
	jz CM_SortNode_70
	mov dword [ebp-0x38], 0x0
CM_SortNode_120:
	mov eax, cm
	mov eax, [eax+0x14]
	mov [ebp-0x50], eax
	movzx eax, di
	lea eax, [eax+eax*4]
	shl eax, 0x4
	mov edx, [ebp-0x50]
	lea eax, [edx+eax-0x50]
	mov [ebp-0x48], eax
	mov edx, [ebp-0x44]
	movss xmm0, dword [eax+edx*4+0x38]
	ucomiss xmm0, [ebp-0x40]
	jbe CM_SortNode_80
	mov edx, [ebp-0x34]
	movzx eax, word [edx+0x18]
	test ax, ax
	jnz CM_SortNode_90
	movzx edx, word [cm_world+0x18]
	test dx, dx
	jz CM_SortNode_100
	mov eax, [ebp-0x5c]
	movss xmm1, dword [eax]
	mov eax, [ebp-0x58]
	subss xmm1, [eax]
	movss [ebp-0x20], xmm1
	mov eax, [ebp-0x5c]
	movss xmm0, dword [eax+0x4]
	mov eax, [ebp-0x58]
	subss xmm0, [eax+0x4]
	movss [ebp-0x1c], xmm0
	xor ebx, ebx
	ucomiss xmm0, xmm1
	setae bl
	movzx ecx, bx
	movss xmm0, dword [_float_512_00000000]
	ucomiss xmm0, [ebp+ecx*4-0x20]
	jb CM_SortNode_110
CM_SortNode_100:
	mov eax, [ebp-0x48]
CM_SortNode_250:
	movzx edi, word [eax]
	mov [ebp-0x38], eax
CM_SortNode_180:
	test di, di
	jnz CM_SortNode_120
CM_SortNode_70:
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CM_SortNode_80:
	mov eax, edx
	movss xmm0, dword [ebp-0x40]
	mov edx, [ebp-0x48]
	ucomiss xmm0, [edx+eax*4+0x44]
	jbe CM_SortNode_130
	mov edx, [ebp-0x34]
	movzx eax, word [edx+0x1a]
	test ax, ax
	jnz CM_SortNode_90
	movzx edx, word [cm_world+0x18]
	test dx, dx
	jz CM_SortNode_100
	mov eax, [ebp-0x5c]
	movss xmm1, dword [eax]
	mov eax, [ebp-0x58]
	subss xmm1, [eax]
	movss [ebp-0x20], xmm1
	mov eax, [ebp-0x5c]
	movss xmm0, dword [eax+0x4]
	mov eax, [ebp-0x58]
	subss xmm0, [eax+0x4]
	movss [ebp-0x1c], xmm0
	xor ebx, ebx
	ucomiss xmm0, xmm1
	setae bl
	movzx ecx, bx
	movss xmm0, dword [_float_512_00000000]
	ucomiss xmm0, [ebp+ecx*4-0x20]
	jae CM_SortNode_100
	movzx esi, dx
	lea edx, [esi*4]
	mov eax, esi
	shl eax, 0x5
	sub eax, edx
	add eax, cm_world+0x1c
	movzx edx, word [eax+0x16]
	mov [cm_world+0x18], dx
	mov [eax+0x14], bx
	mov edx, [ebp-0x5c]
	movss xmm0, dword [edx+ecx*4]
	mov edx, [ebp-0x58]
	addss xmm0, [edx+ecx*4]
	mulss xmm0, [_float_0_50000000]
	movss [eax+0x10], xmm0
	mov eax, esi
	test si, si
	jz CM_SortNode_100
	mov edx, [ebp-0x34]
	mov [edx+0x1a], si
CM_SortNode_290:
	movzx eax, ax
	mov [ebp-0x2c], eax
	mov edx, eax
	shl edx, 0x2
	shl eax, 0x5
	sub eax, edx
	movzx edx, word [ebp-0x52]
	mov [eax+cm_world+0x32], dx
	jmp CM_SortNode_140
CM_SortNode_90:
	movzx eax, ax
	mov [ebp-0x2c], eax
CM_SortNode_140:
	mov edx, [ebp-0x48]
	movzx edi, word [edx]
	mov ecx, edx
	sub ecx, [ebp-0x50]
	sar ecx, 0x4
	lea eax, [ecx+ecx*2]
	mov edx, eax
	shl edx, 0x4
	add eax, edx
	mov edx, eax
	shl edx, 0x8
	add eax, edx
	mov edx, eax
	shl edx, 0x10
	add eax, edx
	lea ebx, [ecx+eax*4]
	movzx eax, word [ebp-0x2c]
	lea edx, [eax*4]
	shl eax, 0x5
	sub eax, edx
	add eax, cm_world+0x10
	lea esi, [eax+0x1a]
	movzx ecx, word [eax+0x1a]
	movzx edx, cx
	lea eax, [edx-0x1]
	cmp ebx, eax
	jb CM_SortNode_150
CM_SortNode_160:
	lea eax, [edx+edx*4]
	shl eax, 0x4
	add eax, [ebp-0x50]
	lea esi, [eax-0x50]
	movzx ecx, word [eax-0x50]
	movzx edx, cx
	lea eax, [edx-0x1]
	cmp ebx, eax
	jae CM_SortNode_160
CM_SortNode_150:
	mov eax, [ebp-0x48]
	mov [eax], cx
	lea eax, [ebx+0x1]
	mov [esi], ax
	mov eax, [ebp-0x2c]
	shl eax, 0x2
	mov esi, [ebp-0x2c]
	shl esi, 0x5
	sub esi, eax
	mov ebx, [esi+cm_world+0x1c]
	mov edx, [ebp-0x48]
	mov eax, [edx+0x4]
	mov [esp], eax
	call XModelGetContents
	or ebx, eax
	mov [esi+cm_world+0x1c], ebx
	mov ebx, [ebp-0x38]
	test ebx, ebx
	jz CM_SortNode_170
	mov edx, [ebp-0x38]
	mov [edx], di
	jmp CM_SortNode_180
CM_SortNode_20:
	movss xmm0, dword [ebp-0x40]
	ucomiss xmm0, [edx+eax*4+0x170]
	jbe CM_SortNode_190
	mov edx, [ebp-0x34]
	movzx eax, word [edx+0x1a]
	test ax, ax
	jnz CM_SortNode_30
	movzx edx, word [cm_world+0x18]
	test dx, dx
	jz CM_SortNode_40
	mov eax, [ebp-0x5c]
	movss xmm1, dword [eax]
	mov eax, [ebp-0x58]
	subss xmm1, [eax]
	movss [ebp-0x20], xmm1
	mov eax, [ebp-0x5c]
	movss xmm0, dword [eax+0x4]
	mov eax, [ebp-0x58]
	subss xmm0, [eax+0x4]
	movss [ebp-0x1c], xmm0
	xor ebx, ebx
	ucomiss xmm0, xmm1
	setae bl
	movzx ecx, bx
	movss xmm0, dword [_float_512_00000000]
	ucomiss xmm0, [ebp+ecx*4-0x20]
	jae CM_SortNode_40
	movzx esi, dx
	lea edx, [esi*4]
	mov eax, esi
	shl eax, 0x5
	sub eax, edx
	add eax, cm_world+0x1c
	movzx edx, word [eax+0x16]
	mov [cm_world+0x18], dx
	mov [eax+0x14], bx
	mov edx, [ebp-0x5c]
	movss xmm0, dword [edx+ecx*4]
	mov edx, [ebp-0x58]
	addss xmm0, [edx+ecx*4]
	mulss xmm0, [_float_0_50000000]
	movss [eax+0x10], xmm0
	mov eax, esi
	test si, si
	jz CM_SortNode_40
	mov edx, [ebp-0x34]
	mov [edx+0x1a], si
CM_SortNode_300:
	movzx esi, ax
	lea edx, [esi*4]
	mov eax, esi
	shl eax, 0x5
	sub eax, edx
	movzx edx, word [ebp-0x52]
	mov [eax+cm_world+0x32], dx
	jmp CM_SortNode_200
CM_SortNode_30:
	movzx esi, ax
CM_SortNode_200:
	mov edx, [ebp-0x4c]
	movzx edi, word [edx+0x2]
	mov [esp+4], esi
	mov [esp], edx
	call CM_AddEntityToNode
	mov edx, [ebp-0x4c]
	lea eax, [esi*4]
	shl esi, 0x5
	sub esi, eax
	mov ebx, [esi+cm_world+0x20]
	mov [esp], edx
	call SV_GEntityForSvEntity
	or ebx, [eax+0x120]
	mov [esi+cm_world+0x20], ebx
	mov eax, [esi+cm_world+0x24]
	mov edx, [ebp-0x4c]
	or eax, [edx+0x164]
	mov [esi+cm_world+0x24], eax
	mov esi, [ebp-0x3c]
	test esi, esi
	jz CM_SortNode_230
	mov edx, [ebp-0x3c]
	mov [edx+0x2], di
	jmp CM_SortNode_240
CM_SortNode_130:
	mov eax, edx
	jmp CM_SortNode_250
CM_SortNode_190:
	mov eax, edx
	jmp CM_SortNode_260
CM_SortNode_10:
	mov eax, edx
	jmp CM_SortNode_280
CM_SortNode_170:
	mov eax, [ebp-0x34]
	mov [eax+0xe], di
	jmp CM_SortNode_180
CM_SortNode_230:
	mov eax, [ebp-0x34]
	mov [eax+0xc], di
	jmp CM_SortNode_240
CM_SortNode_110:
	movzx esi, dx
	lea edx, [esi*4]
	mov eax, esi
	shl eax, 0x5
	sub eax, edx
	add eax, cm_world+0x1c
	movzx edx, word [eax+0x16]
	mov [cm_world+0x18], dx
	mov [eax+0x14], bx
	mov edx, [ebp-0x5c]
	movss xmm0, dword [edx+ecx*4]
	mov edx, [ebp-0x58]
	addss xmm0, [edx+ecx*4]
	mulss xmm0, [_float_0_50000000]
	movss [eax+0x10], xmm0
	mov eax, esi
	test si, si
	jz CM_SortNode_100
	mov edx, [ebp-0x34]
	mov [edx+0x18], si
	jmp CM_SortNode_290
CM_SortNode_50:
	movzx esi, dx
	lea edx, [esi*4]
	mov eax, esi
	shl eax, 0x5
	sub eax, edx
	add eax, cm_world+0x1c
	movzx edx, word [eax+0x16]
	mov [cm_world+0x18], dx
	mov [eax+0x14], bx
	mov edx, [ebp-0x5c]
	movss xmm0, dword [edx+ecx*4]
	mov edx, [ebp-0x58]
	addss xmm0, [edx+ecx*4]
	mulss xmm0, [_float_0_50000000]
	movss [eax+0x10], xmm0
	mov eax, esi
	test si, si
	jz CM_SortNode_40
	mov edx, [ebp-0x34]
	mov [edx+0x18], si
	jmp CM_SortNode_300
	nop


;CM_LinkWorld()
CM_LinkWorld:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov dword [esp+0x8], 0x701c
	mov dword [esp+0x4], 0x0
	mov dword [esp], cm_world
	call memset
	mov dword [esp+0x8], cm_world+0xc
	mov dword [esp+0x4], cm_world
	mov dword [esp], 0x0
	call CM_ModelBounds
	mov word [cm_world+0x18], 0x2
	mov eax, 0x3
	mov edx, cm_world
CM_LinkWorld_10:
	mov [edx+0x6a], ax
	add eax, 0x1
	add edx, 0x1c
	cmp eax, 0x400
	jnz CM_LinkWorld_10
	mov word [cm_world+0x7016], 0x0
	movss xmm1, dword [cm_world+0xc]
	subss xmm1, [cm_world]
	movss xmm0, dword [cm_world+0x10]
	subss xmm0, [cm_world+0x4]
	xor eax, eax
	ucomiss xmm0, xmm1
	setae al
	mov [cm_world+0x4c], ax
	movzx eax, ax
	movss xmm0, dword [eax*4+cm_world+0xc]
	addss xmm0, [eax*4+cm_world]
	mulss xmm0, [_float_0_50000000]
	movss [cm_world+0x48], xmm0
	mov eax, cm
	mov esi, [eax+0x14]
	mov edi, [eax+0x10]
	test edi, edi
	jnz CM_LinkWorld_20
CM_LinkWorld_40:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CM_LinkWorld_20:
	mov dword [ebp-0x34], 0x0
	mov [ebp-0x38], eax
	jmp CM_LinkWorld_30
CM_LinkWorld_50:
	add dword [ebp-0x34], 0x1
	add esi, 0x50
	mov edx, [ebp-0x34]
	mov eax, [ebp-0x38]
	cmp edx, [eax+0x10]
	jae CM_LinkWorld_40
CM_LinkWorld_30:
	mov eax, [esi+0x4]
	mov [esp], eax
	call XModelGetContents
	test eax, eax
	jz CM_LinkWorld_50
	mov eax, [esi+0x4]
	mov [esp], eax
	call XModelGetContents
	mov ecx, eax
	mov eax, [cm_world]
	mov [ebp-0x20], eax
	mov eax, [cm_world+0x4]
	mov [ebp-0x1c], eax
	mov eax, [cm_world+0xc]
	mov [ebp-0x28], eax
	mov eax, [cm_world+0x10]
	mov [ebp-0x24], eax
	mov eax, 0x1
	mov edi, cm_world+0x10
CM_LinkWorld_70:
	movzx ebx, ax
	lea edx, [ebx*4]
	mov eax, ebx
	shl eax, 0x5
	sub eax, edx
	mov edx, ecx
	or edx, [eax+cm_world+0x1c]
	mov [eax+edi+0xc], edx
	add eax, cm_world+0x1c
	movzx edx, word [eax+0x14]
	movss xmm1, dword [eax+0x10]
	movss xmm0, dword [esi+edx*4+0x38]
	ucomiss xmm0, xmm1
	jbe CM_LinkWorld_60
	movss [ebp+edx*4-0x20], xmm1
	movzx eax, word [eax+0x18]
	test ax, ax
	jnz CM_LinkWorld_70
CM_LinkWorld_100:
	mov eax, [ebp-0x38]
	mov eax, [eax+0x14]
	mov [ebp-0x30], eax
	mov ecx, esi
	sub ecx, eax
	sar ecx, 0x4
	lea eax, [ecx+ecx*2]
	mov edx, eax
	shl edx, 0x4
	add eax, edx
	mov edx, eax
	shl edx, 0x8
	add eax, edx
	mov edx, eax
	shl edx, 0x10
	add eax, edx
	lea edi, [ecx+eax*4]
	movzx eax, bx
	lea edx, [eax*4]
	shl eax, 0x5
	sub eax, edx
	add eax, cm_world+0x10
	lea edx, [eax+0x1a]
	mov [ebp-0x2c], edx
	movzx ecx, word [eax+0x1a]
	movzx edx, cx
	lea eax, [edx-0x1]
	cmp eax, edi
	ja CM_LinkWorld_80
CM_LinkWorld_90:
	lea eax, [edx+edx*4]
	shl eax, 0x4
	add eax, [ebp-0x30]
	lea edx, [eax-0x50]
	mov [ebp-0x2c], edx
	movzx ecx, word [eax-0x50]
	movzx edx, cx
	lea eax, [edx-0x1]
	cmp eax, edi
	jbe CM_LinkWorld_90
CM_LinkWorld_80:
	mov [esi], cx
	lea eax, [edi+0x1]
	mov edx, [ebp-0x2c]
	mov [edx], ax
	lea ecx, [ebp-0x28]
	lea edx, [ebp-0x20]
	mov eax, ebx
	call CM_SortNode
	jmp CM_LinkWorld_50
CM_LinkWorld_60:
	ucomiss xmm1, [esi+edx*4+0x44]
	jbe CM_LinkWorld_100
	movss [ebp+edx*4-0x28], xmm1
	movzx eax, word [eax+0x1a]
	test ax, ax
	jnz CM_LinkWorld_70
	jmp CM_LinkWorld_100


;CM_LinkEntity(svEntity_s*, float*, float*, unsigned int)
CM_LinkEntity:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov eax, [ebp+0x14]
	mov [esp], eax
	call CM_ClipHandleToModel
	lea ebx, [eax+0x1c]
	mov eax, [ebp+0x8]
	mov [esp], eax
	call SV_GEntityForSvEntity
	mov eax, [eax+0x120]
	mov [ebp-0x3c], eax
	mov eax, [ebx+0x4]
	or eax, [ebx+0x8]
	mov [ebp-0x38], eax
	jnz CM_LinkEntity_10
	mov edx, [ebp+0x8]
	mov [esp], edx
	call CM_UnlinkEntity
	jmp CM_LinkEntity_20
CM_LinkEntity_170:
	movzx eax, bx
	mov [esp+4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CM_AddEntityToNode
CM_LinkEntity_350:
	mov esi, [ebp-0x38]
	mov ecx, [ebp+0x8]
	mov [ecx+0x164], esi
	mov edx, [ebp+0xc]
	mov eax, [edx]
	mov [ecx+0x168], eax
	mov eax, [edx+0x4]
	mov [ecx+0x16c], eax
	mov ecx, [ebp+0x10]
	mov eax, [ecx]
	mov esi, [ebp+0x8]
	mov [esi+0x170], eax
	mov eax, [ecx+0x4]
	mov [esi+0x174], eax
	lea ecx, [ebp-0x28]
	lea edx, [ebp-0x20]
	mov eax, ebx
	call CM_SortNode
CM_LinkEntity_20:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CM_LinkEntity_10:
	mov esi, eax
	not esi
	mov [ebp-0x40], esi
CM_LinkEntity_280:
	mov eax, [cm_world]
	mov [ebp-0x20], eax
	mov eax, [cm_world+0x4]
	mov [ebp-0x1c], eax
	mov eax, [cm_world+0xc]
	mov [ebp-0x28], eax
	mov eax, [cm_world+0x10]
	mov [ebp-0x24], eax
	mov edi, 0x1
CM_LinkEntity_150:
	movzx ebx, di
	lea edx, [ebx*4]
	mov eax, ebx
	shl eax, 0x5
	sub eax, edx
	mov edx, [ebp-0x3c]
	or edx, [eax+cm_world+0x20]
	mov [eax+cm_world+0x20], edx
	mov edx, [ebp-0x38]
	or edx, [eax+cm_world+0x24]
	mov [eax+cm_world+0x24], edx
	add eax, cm_world+0x1c
	movzx edx, word [eax+0x14]
	movss xmm1, dword [eax+0x10]
	lea ecx, [edx*4]
	mov esi, [ebp+0xc]
	movss xmm0, dword [ecx+esi]
	ucomiss xmm0, xmm1
	jbe CM_LinkEntity_130
	movss [ebp+edx*4-0x20], xmm1
	movzx eax, word [eax+0x18]
	test ax, ax
	jz CM_LinkEntity_140
	mov edi, eax
	jmp CM_LinkEntity_150
CM_LinkEntity_330:
	mov ecx, [ebp-0x40]
	test [edx+0x164], ecx
	jz CM_LinkEntity_160
CM_LinkEntity_140:
	mov eax, [ebp+0x8]
CM_LinkEntity_340:
	movzx esi, word [eax]
	test si, si
	jz CM_LinkEntity_170
	cmp si, di
	jz CM_LinkEntity_180
	mov ecx, [ebp+0x8]
CM_LinkEntity_360:
	mov [esp], ecx
	call CM_UnlinkEntity
	jmp CM_LinkEntity_280
CM_LinkEntity_130:
	mov esi, [ebp+0x10]
	ucomiss xmm1, [ecx+esi]
	jbe CM_LinkEntity_300
	movss [ebp+edx*4-0x28], xmm1
	movzx eax, word [eax+0x1a]
	test ax, ax
	jz CM_LinkEntity_140
	mov edi, eax
	jmp CM_LinkEntity_150
CM_LinkEntity_300:
	mov edx, [ebp+0x8]
	cmp [edx], di
	jz CM_LinkEntity_330
	mov eax, edx
	jmp CM_LinkEntity_340
CM_LinkEntity_180:
	mov edx, [ebp-0x40]
	mov eax, [ebp+0x8]
	test [eax+0x164], edx
	jz CM_LinkEntity_350
	mov ecx, eax
	jmp CM_LinkEntity_360
CM_LinkEntity_160:
	mov esi, [ebp-0x38]
	mov [edx+0x164], esi
	mov edx, [ebp+0xc]
	mov eax, [edx]
	mov ecx, [ebp+0x8]
	mov [ecx+0x168], eax
	mov eax, [edx+0x4]
	mov [ecx+0x16c], eax
	mov esi, [ebp+0x10]
	mov eax, [esi]
	mov [ecx+0x170], eax
	mov eax, [esi+0x4]
	mov [ecx+0x174], eax
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret



;CM_UnlinkEntity(svEntity_s*)
CM_UnlinkEntity:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov esi, [ebp+0x8]
	movzx ebx, word [esi]
	test bx, bx
	jz CM_UnlinkEntity_10
	movzx eax, bx
	lea edx, [eax*4]
	shl eax, 0x5
	sub eax, edx
	add eax, cm_world+0x1c
	mov [ebp-0x1c], eax
	mov word [esi], 0x0
	movzx edx, word [eax+0xc]
	dec edx
	mov [esp], edx
	call SV_SvEntityForNum
	mov ecx, eax
	cmp esi, ecx
	jnz CM_UnlinkEntity_20
	jmp CM_UnlinkEntity_30
CM_UnlinkEntity_40:
	mov ecx, eax
CM_UnlinkEntity_20:
	movzx edx, word [ecx+0x2]
	mov edi, ecx
	dec edx
	mov [esp], edx
	call SV_SvEntityForNum
	mov ecx, edi
	cmp esi, eax
	jnz CM_UnlinkEntity_40
	movzx eax, word [esi+0x2]
	mov [ecx+0x2], ax
CM_UnlinkEntity_160:
	mov edx, [ebp-0x1c]
	mov ecx, [edx+0xc]
	test ecx, ecx
	jnz CM_UnlinkEntity_50
CM_UnlinkEntity_90:
	mov eax, [edx+0x18]
	test eax, eax
	jnz CM_UnlinkEntity_60
	mov ecx, [ebp-0x1c]
	mov dword [ecx+0x4], 0x0
	mov dword [ecx+0x8], 0x0
	mov eax, [ebp-0x1c]
	movzx ecx, word [eax+0x16]
	test cx, cx
	jz CM_UnlinkEntity_70
	mov edx, eax
	movzx eax, word [cm_world+0x18]
	mov [edx+0x16], ax
	mov [cm_world+0x18], bx
	movzx eax, cx
	lea edx, [eax*4]
	shl eax, 0x5
	sub eax, edx
	add eax, cm_world+0x1c
	mov [ebp-0x1c], eax
	cmp bx, [eax+0x18]
	jz CM_UnlinkEntity_80
	mov word [eax+0x1a], 0x0
	mov ebx, ecx
CM_UnlinkEntity_150:
	mov edx, [ebp-0x1c]
	mov ecx, [edx+0xc]
	test ecx, ecx
	jz CM_UnlinkEntity_90
CM_UnlinkEntity_50:
	mov ecx, edx
	jmp CM_UnlinkEntity_100
CM_UnlinkEntity_130:
	mov ecx, [ebp-0x1c]
	mov [ecx+0x4], edi
	mov [ecx+0x8], esi
	movzx eax, word [ecx+0x16]
	test ax, ax
	jz CM_UnlinkEntity_10
CM_UnlinkEntity_140:
	movzx eax, ax
	lea edx, [eax*4]
	shl eax, 0x5
	sub eax, edx
	add eax, cm_world+0x1c
	mov [ebp-0x1c], eax
CM_UnlinkEntity_70:
	mov ecx, eax
CM_UnlinkEntity_100:
	movzx eax, word [ecx+0x18]
	movzx edx, word [ecx+0x1a]
	lea ecx, [eax*4]
	shl eax, 0x5
	sub eax, ecx
	lea ecx, [edx*4]
	shl edx, 0x5
	sub edx, ecx
	mov edi, [eax+cm_world+0x20]
	or edi, [edx+cm_world+0x20]
	mov esi, [eax+cm_world+0x24]
	or esi, [edx+cm_world+0x24]
	mov edx, [ebp-0x1c]
	movzx eax, word [edx+0xc]
	test ax, ax
	jz CM_UnlinkEntity_110
CM_UnlinkEntity_120:
	movzx edx, ax
	dec edx
	mov [esp], edx
	call SV_SvEntityForNum
	mov ebx, eax
	mov [esp], ebx
	call SV_GEntityForSvEntity
	or edi, [eax+0x120]
	or esi, [ebx+0x164]
	movzx eax, word [ebx+0x2]
	test ax, ax
	jnz CM_UnlinkEntity_120
	jmp CM_UnlinkEntity_130
CM_UnlinkEntity_110:
	mov ecx, edx
	mov [ecx+0x4], edi
	mov [ecx+0x8], esi
	movzx eax, word [ecx+0x16]
	test ax, ax
	jnz CM_UnlinkEntity_140
CM_UnlinkEntity_10:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CM_UnlinkEntity_80:
	mov word [eax+0x18], 0x0
	mov ebx, ecx
	jmp CM_UnlinkEntity_150
CM_UnlinkEntity_60:
	mov ecx, [ebp-0x1c]
	jmp CM_UnlinkEntity_100
CM_UnlinkEntity_30:
	movzx eax, word [ecx+0x2]
	mov edx, [ebp-0x1c]
	mov [edx+0xc], ax
	jmp CM_UnlinkEntity_160
	nop


;CM_ClipMoveToEntities(moveclip_t*, trace_t*)
CM_ClipMoveToEntities:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x34
	mov eax, [ebp+0x8]
	mov ebx, [ebp+0xc]
	lea ecx, [eax+0x24]
	mov edx, [eax+0x24]
	mov [ebp-0x18], edx
	mov edx, [ecx+0x4]
	mov [ebp-0x14], edx
	mov edx, [ecx+0x8]
	mov [ebp-0x10], edx
	lea ecx, [eax+0x30]
	mov edx, [eax+0x30]
	mov [ebp-0x28], edx
	mov edx, [ecx+0x4]
	mov [ebp-0x24], edx
	mov edx, [ecx+0x8]
	mov [ebp-0x20], edx
	mov dword [ebp-0xc], 0x0
	mov edx, [ebx]
	mov [ebp-0x1c], edx
	lea ecx, [ebp-0x18]
	mov [esp+0x4], ebx
	lea edx, [ebp-0x28]
	mov [esp], edx
	mov edx, 0x1
	call CM_ClipMoveToEntities_r
	add esp, 0x34
	pop ebx
	pop ebp
	ret


;CM_PointTraceToEntities(pointtrace_t*, trace_t*)
CM_PointTraceToEntities:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x34
	mov eax, [ebp+0x8]
	mov ebx, [ebp+0xc]
	mov edx, [eax]
	mov [ebp-0x18], edx
	mov edx, [eax+0x4]
	mov [ebp-0x14], edx
	mov edx, [eax+0x8]
	mov [ebp-0x10], edx
	lea ecx, [eax+0xc]
	mov edx, [eax+0xc]
	mov [ebp-0x28], edx
	mov edx, [ecx+0x4]
	mov [ebp-0x24], edx
	mov edx, [ecx+0x8]
	mov [ebp-0x20], edx
	mov dword [ebp-0xc], 0x0
	mov edx, [ebx]
	mov [ebp-0x1c], edx
	lea ecx, [ebp-0x18]
	mov [esp+0x4], ebx
	lea edx, [ebp-0x28]
	mov [esp], edx
	mov edx, 0x1
	call CM_PointTraceToEntities_r
	add esp, 0x34
	pop ebx
	pop ebp
	ret


;CM_PointTraceStaticModels(trace_t*, float const*, float const*, int)
CM_PointTraceStaticModels:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x60
	mov ebx, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov ecx, [ebp+0x10]
	mov eax, [ebp+0x14]
	mov [ebp-0x50], eax
	mov eax, [edx]
	mov [ebp-0x4c], eax
	mov eax, [edx+0x4]
	mov [ebp-0x48], eax
	mov eax, [edx+0x8]
	mov [ebp-0x44], eax
	mov eax, [ecx]
	mov [ebp-0x40], eax
	mov eax, [ecx+0x4]
	mov [ebp-0x3c], eax
	mov eax, [ecx+0x8]
	mov [ebp-0x38], eax
	lea esi, [ebp-0x50]
	lea eax, [ebp-0x4c]
	mov [esp], eax
	call CM_CalcTraceExtents
	mov eax, [ebp-0x4c]
	mov [ebp-0x18], eax
	mov eax, [ebp-0x48]
	mov [ebp-0x14], eax
	mov eax, [ebp-0x44]
	mov [ebp-0x10], eax
	mov dword [ebp-0xc], 0x0
	mov eax, [ebp-0x40]
	mov [ebp-0x28], eax
	mov eax, [ebp-0x3c]
	mov [ebp-0x24], eax
	mov eax, [ebp-0x38]
	mov [ebp-0x20], eax
	mov eax, [ebx]
	mov [ebp-0x1c], eax
	lea ecx, [ebp-0x18]
	mov [esp+0x4], ebx
	lea eax, [ebp-0x28]
	mov [esp], eax
	mov edx, 0x1
	mov eax, esi
	call CM_PointTraceStaticModels_r
	add esp, 0x60
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;CM_ClipSightTraceToEntities(sightclip_t*)
CM_ClipSightTraceToEntities:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	lea ecx, [eax+0x24]
	lea edx, [eax+0x30]
	mov [ebp+0x8], edx
	mov edx, 0x1
	pop ebp
	jmp CM_ClipSightTraceToEntities_r


;CM_PointSightTraceToEntities(sightpointtrace_t*)
CM_PointSightTraceToEntities:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	lea edx, [eax+0xc]
	mov [ebp+0x8], edx
	mov ecx, eax
	mov edx, 0x1
	pop ebp
	jmp CM_PointSightTraceToEntities_r
	nop


;CM_PointTraceStaticModelsComplete(float const*, float const*, int)
CM_PointTraceStaticModelsComplete:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x44
	mov edx, [ebp+0x8]
	mov ecx, [ebp+0xc]
	mov eax, [ebp+0x10]
	mov [ebp-0xc], eax
	mov eax, [edx]
	mov [ebp-0x30], eax
	mov eax, [edx+0x4]
	mov [ebp-0x2c], eax
	mov eax, [edx+0x8]
	mov [ebp-0x28], eax
	mov eax, [ecx]
	mov [ebp-0x24], eax
	mov eax, [ecx+0x4]
	mov [ebp-0x20], eax
	mov eax, [ecx+0x8]
	mov [ebp-0x1c], eax
	lea ebx, [ebp-0x30]
	mov [esp], ebx
	call CM_CalcTraceExtents
	lea eax, [ebp-0x24]
	mov [esp], eax
	mov ecx, ebx
	mov edx, 0x1
	mov eax, ebx
	call CM_PointTraceStaticModelsComplete_r
	add esp, 0x44
	pop ebx
	pop ebp
	ret


;Zero initialized global or static variables of cm_world:
SECTION .bss
cm_world: resb 0x7080


;Initialized global or static variables of cm_world:
SECTION .data


;Initialized constant data of cm_world:
SECTION .rdata


;All cstrings:
SECTION .rdata


;All constant floats and doubles:
SECTION .rdata
_float_1_00000000:		dd 0x3f800000	; 1
_float_512_00000000:		dd 0x44000000	; 512
_float_0_50000000:		dd 0x3f000000	; 0.5

align   16,db 0
_data16_80000000:		dd 0x80000000, 0x0, 0x0, 0x0	; DQWORD
_data16_7fffffff:		dd 0x7fffffff, 0x0, 0x0, 0x0	; DQWORD
