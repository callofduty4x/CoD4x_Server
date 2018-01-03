;Imports of xmodel:
	extern Hunk_FindDataForFile
	extern XModelLoad
	extern Hunk_SetDataForFile
	extern Com_PrintError
	extern XModelCopyXModelParts
	extern memset
	extern Material_RegisterHandle
	extern DB_FindXAssetHeaderReal
	extern useFastFile
	extern SL_RemoveRefToString
	extern CM_CalcTraceExtents
	extern CM_TraceBox
	extern XModelGetBasePose
	extern DObjGetHidePartBits
	extern MatrixMultiply43
	extern DB_IsXAssetDefault

;Exports of xmodel:
	global g_materials
	global XModelPrecache_LoadObj
	global XModelPrecache_FastFile
	global XModelPrecache
	global XModelBoneNames
	global XModelGetBounds
	global XModelGetRadius
	global XModelPartsFree
	global XModelTraceLine
	global XModelPartsSetData
	global XModelSurfsSetData
	global XModelPartsFindData
	global XModelSurfsFindData
	global XModelTraceLineAnimated
	global XSurfaceVisitTrianglesInAabb
	global XModelTraceLineAnimatedPartBits
	global XModelBad
	global g_default


SECTION .text


;XModelPrecache_LoadObj(char const*, void* (*)(int), void* (*)(int))
XModelPrecache_LoadObj:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov [esp+0x4], esi
	mov dword [esp], 0x5
	call Hunk_FindDataForFile
	mov ebx, eax
	test eax, eax
	jz XModelPrecache_LoadObj_10
XModelPrecache_LoadObj_30:
	mov eax, ebx
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
XModelPrecache_LoadObj_10:
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], esi
	call XModelLoad
	mov ebx, eax
	test eax, eax
	jz XModelPrecache_LoadObj_20
	mov eax, [ebp+0xc]
	mov [esp+0xc], eax
	mov [esp+0x8], ebx
	mov [esp+0x4], esi
	mov dword [esp], 0x5
	call Hunk_SetDataForFile
	mov [ebx], eax
	mov eax, ebx
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
XModelPrecache_LoadObj_20:
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_error_cannot_fin
	mov dword [esp], 0x13
	call Com_PrintError
	mov dword [esp], 0x14c
	call dword [ebp+0xc]
	mov ebx, eax
	mov byte [eax+0xd1], 0x1
	mov dword [g_default+0xc], g_default+0x2
	mov dword [g_default+0x8], g_default
	mov dword [g_default+0x10], 0x0
	mov dword [g_default+0x14], 0x0
	mov byte [g_default+0x4], 0x1
	mov byte [g_default+0x5], 0x1
	mov dword [g_default+0x18], g_default+0x48
	mov byte [g_default+0x48], 0x0
	mov word [g_default], 0x0
	mov [esp+0x4], eax
	mov dword [esp], g_default+0x4
	call XModelCopyXModelParts
	lea eax, [ebx+0x28]
	mov dword [esp+0x8], 0x70
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call memset
	mov word [ebx+0xc4], 0x1
	mov word [ebx+0xc6], 0x0
	mov dword [ebx], _cstring_default
	mov dword [ebx+0x20], 0x0
	mov dword [ebx+0x24], g_materials
	mov dword [esp+0x4], 0x8
	mov dword [esp], _cstring_mcdefault
	call Material_RegisterHandle
	mov [g_materials], eax
	mov eax, 0xc1800000
	mov [g_default+0x20], eax
	mov [g_default+0x24], eax
	mov [g_default+0x28], eax
	mov eax, 0x41800000
	mov [g_default+0x2c], eax
	mov [g_default+0x30], eax
	mov [g_default+0x34], eax
	mov dword [ebx+0xa4], g_default+0x20
	mov eax, [ebp+0xc]
	mov [esp+0xc], eax
	mov [esp+0x8], ebx
	mov [esp+0x4], esi
	mov dword [esp], 0x5
	call Hunk_SetDataForFile
	jmp XModelPrecache_LoadObj_30
	nop


;XModelPrecache_FastFile(char const*, void* (*)(int), void* (*)(int))
XModelPrecache_FastFile:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov dword [esp], 0x3
	call DB_FindXAssetHeaderReal
	leave
	ret
	nop


;XModelPrecache(char const*, void* (*)(int), void* (*)(int))
XModelPrecache:
	push ebp
	mov ebp, esp
	mov eax, useFastFile
	mov eax, [eax]
	mov ecx, XModelPrecache_FastFile
	cmp byte [eax+0xc], 0x0
	mov eax, XModelPrecache_LoadObj
	cmovz ecx, eax
	pop ebp
	jmp ecx


;XModelBoneNames(XModel*)
XModelBoneNames:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax+0x8]
	pop ebp
	ret
	nop


;XModelGetBounds(XModel const*, float*, float*)
XModelGetBounds:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov ecx, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov esi, [ebp+0x10]
	lea ebx, [ecx+0xac]
	mov eax, [ecx+0xac]
	mov [edx], eax
	mov eax, [ebx+0x4]
	mov [edx+0x4], eax
	mov eax, [ebx+0x8]
	mov [edx+0x8], eax
	lea edx, [ecx+0xb8]
	mov eax, [ecx+0xb8]
	mov [esi], eax
	mov eax, [edx+0x4]
	mov [esi+0x4], eax
	mov eax, [edx+0x8]
	mov [esi+0x8], eax
	pop ebx
	pop esi
	pop ebp
	ret


;XModelGetRadius(XModel const*)
XModelGetRadius:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	fld dword [eax+0xa8]
	pop ebp
	ret
	add [eax], al


;XModelPartsFree(XModelPartsLoad*)
XModelPartsFree:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov eax, [ebp+0x8]
	mov edi, [eax+0x4]
	movzx esi, byte [eax]
	test esi, esi
	jg XModelPartsFree_10
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
XModelPartsFree_10:
	xor ebx, ebx
XModelPartsFree_20:
	movzx eax, word [edi+ebx*2]
	mov [esp], eax
	call SL_RemoveRefToString
	add ebx, 0x1
	cmp esi, ebx
	jnz XModelPartsFree_20
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;XModelTraceLine(XModel const*, trace_t*, float const*, float const*, int)
XModelTraceLine:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x7c
	mov edx, [ebp+0x10]
	mov ecx, [ebp+0x14]
	mov eax, [ebp+0x8]
	cmp word [eax+0xc6], 0x0
	js XModelTraceLine_10
	mov eax, [edx]
	mov [ebp-0x3c], eax
	mov eax, [edx+0x4]
	mov [ebp-0x38], eax
	mov eax, [edx+0x8]
	mov [ebp-0x34], eax
	mov eax, [ecx]
	mov [ebp-0x30], eax
	mov eax, [ecx+0x4]
	mov [ebp-0x2c], eax
	mov eax, [ecx+0x8]
	mov [ebp-0x28], eax
	lea edx, [ebp-0x3c]
	mov [esp], edx
	call CM_CalcTraceExtents
	movss xmm0, dword [ebp-0x30]
	subss xmm0, [ebp-0x3c]
	movss [ebp-0x4c], xmm0
	movss xmm2, dword [ebp-0x2c]
	subss xmm2, [ebp-0x38]
	movss [ebp-0x50], xmm2
	movss xmm5, dword [ebp-0x28]
	subss xmm5, [ebp-0x34]
	movss [ebp-0x54], xmm5
	mov eax, [ebp+0x8]
	mov ecx, [eax+0x9c]
	test ecx, ecx
	jz XModelTraceLine_10
	mov dword [ebp-0x64], 0xffffffff
	xor edi, edi
	xor esi, esi
	mov edx, [ebp+0xc]
	add edx, 0x4
	mov [ebp-0x58], edx
	jmp XModelTraceLine_20
XModelTraceLine_40:
	mov eax, ecx
	add edi, 0x1
	add esi, 0x2c
	cmp edi, [eax+0x9c]
	jae XModelTraceLine_30
XModelTraceLine_20:
	mov ebx, esi
	mov ecx, [ebp+0x8]
	add ebx, [ecx+0x98]
	mov eax, [ebp+0x18]
	test [ebx+0x24], eax
	jz XModelTraceLine_40
	mov edx, [ebp+0xc]
	mov eax, [edx]
	mov [esp+0xc], eax
	lea eax, [ebx+0x14]
	mov [esp+0x8], eax
	lea eax, [ebx+0x8]
	mov [esp+0x4], eax
	lea ecx, [ebp-0x3c]
	mov [esp], ecx
	call CM_TraceBox
	test eax, eax
	jnz XModelTraceLine_50
	mov edx, [ebx+0x4]
	test edx, edx
	jle XModelTraceLine_50
	mov dword [ebp-0x60], 0x0
	mov dword [ebp-0x6c], 0x0
	jmp XModelTraceLine_60
XModelTraceLine_70:
	add dword [ebp-0x60], 0x1
	add dword [ebp-0x6c], 0x30
	mov ecx, [ebp-0x60]
	cmp ecx, [ebx+0x4]
	jge XModelTraceLine_50
XModelTraceLine_60:
	mov edx, [ebp-0x6c]
	add edx, [ebx]
	movss xmm2, dword [edx]
	movss xmm3, dword [edx+0x4]
	movss xmm4, dword [edx+0x8]
	movss xmm5, dword [edx+0xc]
	movaps xmm1, xmm2
	mulss xmm1, [ebp-0x30]
	movaps xmm0, xmm3
	mulss xmm0, [ebp-0x2c]
	addss xmm1, xmm0
	movaps xmm0, xmm4
	mulss xmm0, [ebp-0x28]
	addss xmm1, xmm0
	subss xmm1, xmm5
	pxor xmm0, xmm0
	ucomiss xmm1, xmm0
	jae XModelTraceLine_70
	movss xmm6, dword [ebp-0x3c]
	movss xmm7, dword [ebp-0x38]
	movss xmm0, dword [ebp-0x34]
	movss [ebp-0x5c], xmm0
	mulss xmm2, xmm6
	mulss xmm3, xmm7
	addss xmm2, xmm3
	mulss xmm4, xmm0
	addss xmm2, xmm4
	subss xmm2, xmm5
	pxor xmm5, xmm5
	ucomiss xmm5, xmm2
	jae XModelTraceLine_70
	movaps xmm4, xmm2
	subss xmm4, xmm1
	movaps xmm3, xmm2
	subss xmm3, [_float_0_12500000]
	divss xmm3, xmm4
	pxor xmm0, xmm0
	cmpss xmm0, xmm3, 0x2
	movaps xmm1, xmm3
	andps xmm1, xmm0
	movaps xmm3, xmm0
	andnps xmm3, xmm5
	orps xmm3, xmm1
	mov eax, [ebp+0xc]
	ucomiss xmm3, [eax]
	jae XModelTraceLine_70
	movaps xmm0, xmm2
	divss xmm0, xmm4
	movss xmm5, dword [ebp-0x4c]
	mulss xmm5, xmm0
	addss xmm5, xmm6
	movss xmm2, dword [ebp-0x50]
	mulss xmm2, xmm0
	addss xmm2, xmm7
	movss xmm4, dword [ebp-0x54]
	mulss xmm4, xmm0
	addss xmm4, [ebp-0x5c]
	lea eax, [edx+0x10]
	movaps xmm1, xmm5
	mulss xmm1, [edx+0x10]
	movaps xmm0, xmm2
	mulss xmm0, [eax+0x4]
	addss xmm1, xmm0
	movaps xmm0, xmm4
	mulss xmm0, [eax+0x8]
	addss xmm1, xmm0
	subss xmm1, [edx+0x1c]
	movss xmm0, dword [_float__0_00100000]
	ucomiss xmm0, xmm1
	ja XModelTraceLine_70
	ucomiss xmm1, [_float_1_00100005]
	ja XModelTraceLine_70
	lea eax, [edx+0x20]
	movaps xmm0, xmm5
	mulss xmm0, [edx+0x20]
	mulss xmm2, [eax+0x4]
	addss xmm0, xmm2
	mulss xmm4, [eax+0x8]
	addss xmm0, xmm4
	subss xmm0, [edx+0x2c]
	movss xmm2, dword [_float__0_00100000]
	ucomiss xmm2, xmm0
	ja XModelTraceLine_70
	addss xmm1, xmm0
	ucomiss xmm1, [_float_1_00100005]
	ja XModelTraceLine_70
	mov eax, [ebx+0x20]
	mov [ebp-0x64], eax
	mov ecx, [ebp+0xc]
	mov byte [ecx+0x29], 0x0
	mov byte [ecx+0x28], 0x0
	movss [ecx], xmm3
	mov eax, [ebx+0x28]
	mov [ecx+0x10], eax
	mov eax, [ebx+0x24]
	mov [ecx+0x14], eax
	movss xmm0, dword [edx]
	movss [ecx+0x4], xmm0
	movss xmm0, dword [edx+0x4]
	mov eax, [ebp-0x58]
	movss [eax+0x4], xmm0
	mov eax, [edx+0x8]
	mov edx, [ebp-0x58]
	mov [edx+0x8], eax
	jmp XModelTraceLine_70
XModelTraceLine_50:
	mov eax, [ebp+0x8]
	add edi, 0x1
	add esi, 0x2c
	cmp edi, [eax+0x9c]
	jb XModelTraceLine_20
XModelTraceLine_30:
	mov eax, [ebp-0x64]
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
XModelTraceLine_10:
	mov dword [ebp-0x64], 0xffffffff
	mov eax, [ebp-0x64]
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop



;XModelPartsSetData(char const*, XModelPartsLoad*, void* (*)(int))
XModelPartsSetData:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x10]
	mov [esp+0xc], eax
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov dword [esp], 0x4
	call Hunk_SetDataForFile
	leave
	ret
	nop


;XModelSurfsSetData(char const*, XModelSurfs*, void* (*)(int))
XModelSurfsSetData:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x10]
	mov [esp+0xc], eax
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov dword [esp], 0x3
	call Hunk_SetDataForFile
	leave
	ret
	nop


;XModelPartsFindData(char const*)
XModelPartsFindData:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov dword [esp], 0x4
	call Hunk_FindDataForFile
	leave
	ret
	nop


;XModelSurfsFindData(char const*)
XModelSurfsFindData:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov dword [esp], 0x3
	call Hunk_FindDataForFile
	leave
	ret
	nop


;XModelTraceLineAnimated(DObj_s const*, unsigned int, int, trace_t*, DObjAnimMat const*, float*, float*, int)
XModelTraceLineAnimated:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x16c
	mov ebx, [ebp+0x8]
	mov edx, [ebx+0x60]
	mov eax, [ebp+0xc]
	mov edi, [edx+eax*4]
	cmp word [edi+0xc6], 0x0
	js XModelTraceLineAnimated_10
	mov [esp], edi
	call XModelGetBasePose
	mov [ebp-0x11c], eax
	lea eax, [ebp-0x28]
	mov [esp+0x4], eax
	mov [esp], ebx
	call DObjGetHidePartBits
	mov esi, [edi+0x9c]
	test esi, esi
	jz XModelTraceLineAnimated_10
	mov dword [ebp-0x124], 0xffffffff
	mov dword [ebp-0x120], 0x0
	mov dword [ebp-0xec], 0x0
	mov eax, [ebp+0x14]
	add eax, 0x4
	mov [ebp-0x14c], eax
XModelTraceLineAnimated_100:
	mov esi, [ebp-0xec]
	add esi, [edi+0x98]
	mov edx, [ebp+0x24]
	test [esi+0x24], edx
	jz XModelTraceLineAnimated_20
	mov ebx, [esi+0x20]
	mov eax, [ebp+0x10]
	lea ecx, [ebx+eax]
	mov edx, ecx
	sar edx, 0x5
	and ecx, 0x1f
	mov eax, 0x80000000
	shr eax, cl
	test [ebp+edx*4-0x28], eax
	jnz XModelTraceLineAnimated_20
	mov eax, ebx
	shl eax, 0x5
	mov ecx, [ebp+0x18]
	lea edx, [eax+ecx]
	add eax, [ebp-0x11c]
	movss xmm3, dword [eax]
	ucomiss xmm3, [edx]
	jnz XModelTraceLineAnimated_30
	jp XModelTraceLineAnimated_30
	lea ebx, [edx+0x4]
	mov [ebp-0xf4], ebx
	lea ecx, [eax+0x4]
	mov [ebp-0xf8], ecx
	movss xmm0, dword [edx+0x4]
	movss [ebp-0x130], xmm0
	ucomiss xmm0, [eax+0x4]
	jp XModelTraceLineAnimated_40
	jnz XModelTraceLineAnimated_40
	lea ecx, [edx+0x8]
	mov [ebp-0xf0], ecx
	lea ebx, [eax+0x8]
	mov [ebp-0x15c], ebx
	movss xmm0, dword [edx+0x8]
	movss [ebp-0x134], xmm0
	ucomiss xmm0, [eax+0x8]
	jnz XModelTraceLineAnimated_50
	jp XModelTraceLineAnimated_50
	movss xmm1, dword [edx+0xc]
	movss [ebp-0x138], xmm1
	ucomiss xmm1, [eax+0xc]
	jnz XModelTraceLineAnimated_60
	jp XModelTraceLineAnimated_60
	lea ecx, [eax+0x10]
	mov [ebp-0x118], ecx
	lea ebx, [edx+0x10]
	movss xmm0, dword [edx+0x10]
	movss [ebp-0x13c], xmm0
	ucomiss xmm0, [eax+0x10]
	jnz XModelTraceLineAnimated_70
	jp XModelTraceLineAnimated_70
	movss xmm0, dword [ebx+0x4]
	ucomiss xmm0, [ecx+0x4]
	jnz XModelTraceLineAnimated_70
	jp XModelTraceLineAnimated_70
	movss xmm0, dword [ebx+0x8]
	ucomiss xmm0, [ecx+0x8]
	jnz XModelTraceLineAnimated_70
	jp XModelTraceLineAnimated_70
	mov edx, [ebp+0x1c]
	mov eax, [edx]
	mov [ebp-0x4c], eax
	mov eax, [edx+0x4]
	mov [ebp-0x48], eax
	mov eax, [edx+0x8]
	mov [ebp-0x44], eax
	mov ecx, [ebp+0x20]
	mov eax, [ecx]
	mov [ebp-0x40], eax
	mov eax, [ecx+0x4]
	mov [ebp-0x3c], eax
	mov eax, [ecx+0x8]
	mov [ebp-0x38], eax
	jmp XModelTraceLineAnimated_80
XModelTraceLineAnimated_30:
	lea ecx, [eax+0x4]
	mov [ebp-0xf8], ecx
	lea ebx, [eax+0x8]
	mov [ebp-0x15c], ebx
	lea ecx, [edx+0x4]
	mov [ebp-0xf4], ecx
	lea ebx, [edx+0x8]
	mov [ebp-0xf0], ebx
	movss xmm0, dword [edx+0x4]
	movss [ebp-0x130], xmm0
	movss xmm1, dword [edx+0x8]
	movss [ebp-0x134], xmm1
XModelTraceLineAnimated_50:
	movss xmm0, dword [edx+0xc]
	movss [ebp-0x138], xmm0
	lea ebx, [edx+0x10]
	movss xmm1, dword [edx+0x10]
	movss [ebp-0x13c], xmm1
XModelTraceLineAnimated_70:
	movss xmm1, dword [eax+0x1c]
	mulss xmm3, xmm1
	movaps xmm5, xmm1
	mov ecx, [ebp-0xf8]
	mulss xmm5, [ecx]
	mov ecx, [ebp-0x15c]
	mulss xmm1, [ecx]
	movaps xmm0, xmm3
	mulss xmm0, [eax]
	movss [ebp-0x114], xmm0
	movss xmm6, dword [eax+0x4]
	movaps xmm4, xmm3
	mulss xmm4, xmm6
	movss xmm2, dword [eax+0x8]
	movaps xmm7, xmm3
	mulss xmm7, xmm2
	movss xmm0, dword [eax+0xc]
	mulss xmm3, xmm0
	mulss xmm6, xmm5
	movss [ebp-0x110], xmm6
	movaps xmm6, xmm5
	mulss xmm6, xmm2
	mulss xmm5, xmm0
	mulss xmm2, xmm1
	mulss xmm1, xmm0
	movss [ebp-0x160], xmm1
	movss xmm0, dword [ebp-0x110]
	addss xmm0, xmm2
	movss xmm1, dword [_float_1_00000000]
	subss xmm1, xmm0
	movss [ebp-0x7c], xmm1
	movaps xmm0, xmm4
	subss xmm0, [ebp-0x160]
	movss [ebp-0x78], xmm0
	movaps xmm0, xmm7
	addss xmm0, xmm5
	movss [ebp-0x74], xmm0
	addss xmm4, [ebp-0x160]
	movss [ebp-0x70], xmm4
	addss xmm2, [ebp-0x114]
	movss xmm0, dword [_float_1_00000000]
	subss xmm0, xmm2
	movss [ebp-0x6c], xmm0
	movaps xmm0, xmm6
	subss xmm0, xmm3
	movss [ebp-0x68], xmm0
	subss xmm7, xmm5
	movss [ebp-0x64], xmm7
	addss xmm3, xmm6
	movss [ebp-0x60], xmm3
	movss xmm3, dword [ebp-0x114]
	addss xmm3, [ebp-0x110]
	movss xmm0, dword [_float_1_00000000]
	subss xmm0, xmm3
	movss [ebp-0x5c], xmm0
	movss xmm1, dword [eax+0x10]
	mulss xmm1, [ebp-0x7c]
	movss xmm0, dword [eax+0x14]
	mulss xmm0, xmm4
	addss xmm1, xmm0
	movss xmm0, dword [eax+0x18]
	mulss xmm0, xmm7
	addss xmm1, xmm0
	xorps xmm1, [_data16_80000000]
	movss [ebp-0x58], xmm1
	movss xmm1, dword [eax+0x10]
	mulss xmm1, [ebp-0x78]
	movss xmm0, dword [eax+0x14]
	mulss xmm0, [ebp-0x6c]
	addss xmm1, xmm0
	movss xmm0, dword [eax+0x18]
	mulss xmm0, [ebp-0x60]
	addss xmm1, xmm0
	xorps xmm1, [_data16_80000000]
	movss [ebp-0x54], xmm1
	movss xmm1, dword [eax+0x10]
	mulss xmm1, [ebp-0x74]
	movss xmm0, dword [eax+0x14]
	mulss xmm0, [ebp-0x68]
	addss xmm1, xmm0
	movss xmm0, dword [eax+0x18]
	mulss xmm0, [ebp-0x5c]
	addss xmm1, xmm0
	xorps xmm1, [_data16_80000000]
	movss [ebp-0x50], xmm1
	movss xmm1, dword [edx+0x1c]
	movaps xmm2, xmm1
	mulss xmm2, [edx]
	movaps xmm5, xmm1
	mov eax, [ebp-0xf4]
	mulss xmm5, [eax]
	mov ecx, [ebp-0xf0]
	mulss xmm1, [ecx]
	movaps xmm0, xmm2
	mulss xmm0, [edx]
	movss [ebp-0x10c], xmm0
	movss xmm4, dword [ebp-0x130]
	mulss xmm4, xmm2
	movss xmm7, dword [ebp-0x134]
	mulss xmm7, xmm2
	mulss xmm2, [ebp-0x138]
	movss xmm3, dword [ebp-0x130]
	mulss xmm3, xmm5
	movss [ebp-0x108], xmm3
	movss xmm6, dword [ebp-0x134]
	mulss xmm6, xmm5
	mulss xmm5, [ebp-0x138]
	movss xmm3, dword [ebp-0x134]
	mulss xmm3, xmm1
	mulss xmm1, [ebp-0x138]
	movss [ebp-0x160], xmm1
	movss xmm0, dword [ebp-0x108]
	addss xmm0, xmm3
	movss xmm1, dword [_float_1_00000000]
	subss xmm1, xmm0
	movss [ebp-0xac], xmm1
	movss xmm0, dword [ebp-0x160]
	addss xmm0, xmm4
	movss [ebp-0xa8], xmm0
	movaps xmm0, xmm7
	subss xmm0, xmm5
	movss [ebp-0xa4], xmm0
	subss xmm4, [ebp-0x160]
	movss [ebp-0xa0], xmm4
	addss xmm3, [ebp-0x10c]
	movss xmm0, dword [_float_1_00000000]
	subss xmm0, xmm3
	movss [ebp-0x9c], xmm0
	movaps xmm0, xmm2
	addss xmm0, xmm6
	movss [ebp-0x98], xmm0
	addss xmm7, xmm5
	movss [ebp-0x94], xmm7
	subss xmm6, xmm2
	movss [ebp-0x90], xmm6
	movss xmm3, dword [ebp-0x10c]
	addss xmm3, [ebp-0x108]
	movss xmm0, dword [_float_1_00000000]
	subss xmm0, xmm3
	movss [ebp-0x8c], xmm0
	movss xmm0, dword [ebp-0x13c]
	movss [ebp-0x88], xmm0
	lea edx, [ebp-0xac]
	mov eax, [ebx+0x4]
	mov [ebp-0x84], eax
	mov eax, [ebx+0x8]
	mov [ebp-0x80], eax
	lea eax, [ebp-0xdc]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	lea eax, [ebp-0x7c]
	mov [esp], eax
	call MatrixMultiply43
	movss xmm6, dword [ebp-0xb8]
	mov eax, [ebp+0x1c]
	movss xmm2, dword [eax]
	subss xmm2, xmm6
	movss xmm1, dword [ebp-0xb4]
	movss xmm4, dword [eax+0x4]
	subss xmm4, xmm1
	movss xmm0, dword [ebp-0xb0]
	movss xmm3, dword [eax+0x8]
	subss xmm3, xmm0
	mov edx, [ebp+0x20]
	movss xmm5, dword [edx]
	subss xmm5, xmm6
	movss xmm6, dword [edx+0x4]
	subss xmm6, xmm1
	movss xmm7, dword [edx+0x8]
	subss xmm7, xmm0
	movaps xmm0, xmm2
	mulss xmm0, [ebp-0xdc]
	movaps xmm1, xmm4
	mulss xmm1, [ebp-0xd8]
	addss xmm0, xmm1
	movaps xmm1, xmm3
	mulss xmm1, [ebp-0xd4]
	addss xmm0, xmm1
	movss [ebp-0x4c], xmm0
	movaps xmm0, xmm2
	mulss xmm0, [ebp-0xd0]
	movaps xmm1, xmm4
	mulss xmm1, [ebp-0xcc]
	addss xmm0, xmm1
	movaps xmm1, xmm3
	mulss xmm1, [ebp-0xc8]
	addss xmm0, xmm1
	movss [ebp-0x48], xmm0
	mulss xmm2, [ebp-0xc4]
	mulss xmm4, [ebp-0xc0]
	addss xmm2, xmm4
	mulss xmm3, [ebp-0xbc]
	addss xmm2, xmm3
	movss [ebp-0x44], xmm2
	movaps xmm0, xmm5
	mulss xmm0, [ebp-0xdc]
	movaps xmm1, xmm6
	mulss xmm1, [ebp-0xd8]
	addss xmm0, xmm1
	movaps xmm1, xmm7
	mulss xmm1, [ebp-0xd4]
	addss xmm0, xmm1
	movss [ebp-0x40], xmm0
	movaps xmm0, xmm5
	mulss xmm0, [ebp-0xd0]
	movaps xmm1, xmm6
	mulss xmm1, [ebp-0xcc]
	addss xmm0, xmm1
	movaps xmm1, xmm7
	mulss xmm1, [ebp-0xc8]
	addss xmm0, xmm1
	movss [ebp-0x3c], xmm0
	mulss xmm5, [ebp-0xc4]
	mulss xmm6, [ebp-0xc0]
	addss xmm5, xmm6
	mulss xmm7, [ebp-0xbc]
	addss xmm5, xmm7
	movss [ebp-0x38], xmm5
XModelTraceLineAnimated_80:
	lea ebx, [ebp-0x4c]
	mov [esp], ebx
	call CM_CalcTraceExtents
	mov edx, [ebp+0x14]
	mov eax, [edx]
	mov [esp+0xc], eax
	lea eax, [esi+0x14]
	mov [esp+0x8], eax
	lea eax, [esi+0x8]
	mov [esp+0x4], eax
	mov [esp], ebx
	call CM_TraceBox
	test eax, eax
	jnz XModelTraceLineAnimated_20
	movss xmm0, dword [ebp-0x40]
	movss [ebp-0x128], xmm0
	subss xmm0, [ebp-0x4c]
	movss [ebp-0xfc], xmm0
	movss xmm1, dword [ebp-0x3c]
	movss [ebp-0x12c], xmm1
	subss xmm1, [ebp-0x48]
	movss [ebp-0x100], xmm1
	movss xmm7, dword [ebp-0x38]
	movaps xmm3, xmm7
	subss xmm3, [ebp-0x44]
	movss [ebp-0x104], xmm3
	mov ebx, [esi+0x4]
	test ebx, ebx
	jg XModelTraceLineAnimated_90
XModelTraceLineAnimated_20:
	add dword [ebp-0x120], 0x1
	add dword [ebp-0xec], 0x2c
	mov ecx, [ebp-0x120]
	cmp ecx, [edi+0x9c]
	jb XModelTraceLineAnimated_100
	mov eax, [ebp-0x124]
	add esp, 0x16c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
XModelTraceLineAnimated_90:
	xor ebx, ebx
	mov dword [ebp-0x15c], 0x0
	pxor xmm6, xmm6
	movss xmm0, dword [ebp-0x4c]
	movss [ebp-0x140], xmm0
	movss xmm1, dword [ebp-0x48]
	movss [ebp-0x144], xmm1
	movss xmm3, dword [ebp-0x44]
	movss [ebp-0x148], xmm3
	jmp XModelTraceLineAnimated_110
XModelTraceLineAnimated_120:
	add ebx, 0x1
	add dword [ebp-0x15c], 0x30
	cmp ebx, [esi+0x4]
	jge XModelTraceLineAnimated_20
XModelTraceLineAnimated_110:
	mov edx, [ebp-0x15c]
	add edx, [esi]
	movss xmm4, dword [edx]
	movss xmm2, dword [edx+0x4]
	movss xmm3, dword [edx+0x8]
	movss xmm5, dword [edx+0xc]
	movss xmm1, dword [ebp-0x128]
	mulss xmm1, xmm4
	movss xmm0, dword [ebp-0x12c]
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movaps xmm0, xmm3
	mulss xmm0, xmm7
	addss xmm1, xmm0
	subss xmm1, xmm5
	ucomiss xmm1, xmm6
	jae XModelTraceLineAnimated_120
	mulss xmm4, [ebp-0x140]
	mulss xmm2, [ebp-0x144]
	addss xmm4, xmm2
	mulss xmm3, [ebp-0x148]
	addss xmm4, xmm3
	subss xmm4, xmm5
	ucomiss xmm6, xmm4
	jae XModelTraceLineAnimated_120
	movaps xmm3, xmm4
	subss xmm3, xmm1
	movaps xmm2, xmm4
	subss xmm2, [_float_0_12500000]
	divss xmm2, xmm3
	movaps xmm0, xmm6
	cmpss xmm0, xmm2, 0x2
	movaps xmm1, xmm2
	andps xmm1, xmm0
	movaps xmm2, xmm0
	andnps xmm2, xmm6
	orps xmm2, xmm1
	mov eax, [ebp+0x14]
	ucomiss xmm2, [eax]
	jae XModelTraceLineAnimated_120
	movaps xmm0, xmm4
	divss xmm0, xmm3
	movss xmm5, dword [ebp-0xfc]
	mulss xmm5, xmm0
	addss xmm5, [ebp-0x140]
	movss xmm3, dword [ebp-0x100]
	mulss xmm3, xmm0
	addss xmm3, [ebp-0x144]
	movss xmm4, dword [ebp-0x104]
	mulss xmm4, xmm0
	addss xmm4, [ebp-0x148]
	lea eax, [edx+0x10]
	movaps xmm1, xmm5
	mulss xmm1, [edx+0x10]
	movaps xmm0, xmm3
	mulss xmm0, [eax+0x4]
	addss xmm1, xmm0
	movaps xmm0, xmm4
	mulss xmm0, [eax+0x8]
	addss xmm1, xmm0
	subss xmm1, [edx+0x1c]
	movss xmm0, dword [_float__0_00100000]
	ucomiss xmm0, xmm1
	ja XModelTraceLineAnimated_120
	ucomiss xmm1, [_float_1_00100005]
	ja XModelTraceLineAnimated_120
	lea eax, [edx+0x20]
	movaps xmm0, xmm5
	mulss xmm0, [edx+0x20]
	mulss xmm3, [eax+0x4]
	addss xmm0, xmm3
	mulss xmm4, [eax+0x8]
	addss xmm0, xmm4
	subss xmm0, [edx+0x2c]
	movss xmm3, dword [_float__0_00100000]
	ucomiss xmm3, xmm0
	ja XModelTraceLineAnimated_120
	addss xmm1, xmm0
	ucomiss xmm1, [_float_1_00100005]
	ja XModelTraceLineAnimated_120
	mov eax, [esi+0x20]
	mov [ebp-0x124], eax
	mov ecx, [ebp+0x14]
	mov byte [ecx+0x29], 0x0
	mov byte [ecx+0x28], 0x0
	movss [ecx], xmm2
	mov eax, [esi+0x28]
	mov [ecx+0x10], eax
	mov eax, [esi+0x24]
	mov [ecx+0x14], eax
	movss xmm0, dword [edx]
	movss [ecx+0x4], xmm0
	movss xmm0, dword [edx+0x4]
	mov eax, [ebp-0x14c]
	movss [eax+0x4], xmm0
	mov eax, [edx+0x8]
	mov edx, [ebp-0x14c]
	mov [edx+0x8], eax
	jmp XModelTraceLineAnimated_120
XModelTraceLineAnimated_40:
	lea ecx, [eax+0x8]
	mov [ebp-0x15c], ecx
	lea ebx, [edx+0x8]
	mov [ebp-0xf0], ebx
	movss xmm0, dword [edx+0x8]
	movss [ebp-0x134], xmm0
	movss xmm1, dword [edx+0xc]
	movss [ebp-0x138], xmm1
	lea ebx, [edx+0x10]
	movss xmm0, dword [edx+0x10]
	movss [ebp-0x13c], xmm0
	jmp XModelTraceLineAnimated_70
XModelTraceLineAnimated_10:
	mov dword [ebp-0x124], 0xffffffff
	mov eax, [ebp-0x124]
	add esp, 0x16c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
XModelTraceLineAnimated_60:
	lea ebx, [edx+0x10]
	movss xmm0, dword [edx+0x10]
	movss [ebp-0x13c], xmm0
	jmp XModelTraceLineAnimated_70
	add [eax], al


;XSurfaceVisitTrianglesInAabb(XSurface const*, unsigned int, float const*, float const*, unsigned char (*)(void*, GfxPackedVertex const**, GfxPackedVertex const**), void*)
XSurfaceVisitTrianglesInAabb:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x40c
	mov ecx, [ebp+0x8]
	mov eax, [ebp+0xc]
	mov ebx, [ebp+0x10]
	mov esi, [ebp+0x14]
	mov edx, [ecx+0x24]
	lea eax, [eax+eax*2]
	mov eax, [edx+eax*4+0x8]
	mov [ebp-0x310], eax
	mov eax, [eax+0x1c]
	mov edx, eax
	and edx, 0xffffff80
	add eax, 0xf
	and eax, 0xffffff80
	cmp edx, eax
	ja XSurfaceVisitTrianglesInAabb_10
XSurfaceVisitTrianglesInAabb_20:
	sub edx, 0xffffff80
	cmp eax, edx
	jae XSurfaceVisitTrianglesInAabb_20
XSurfaceVisitTrianglesInAabb_10:
	mov eax, [ecx+0xc]
	mov [ebp-0x314], eax
	mov ecx, [ecx+0x1c]
	mov [ebp-0x318], ecx
	mov edx, [ebp-0x310]
	movss xmm0, dword [edx]
	movss [ebp-0x3fc], xmm0
	movss xmm0, dword [edx+0x4]
	movss xmm1, dword [edx+0x8]
	mov eax, edx
	add eax, 0xc
	movss xmm2, dword [edx+0xc]
	movss xmm3, dword [eax+0x4]
	movaps xmm6, xmm0
	addss xmm6, [ebx+0x4]
	mulss xmm6, xmm3
	movss xmm4, dword [eax+0x8]
	movaps xmm7, xmm1
	addss xmm7, [ebx+0x8]
	mulss xmm7, xmm4
	movss xmm5, dword [ebp-0x3fc]
	addss xmm5, [esi]
	mulss xmm5, xmm2
	movss [ebp-0x304], xmm5
	addss xmm0, [esi+0x4]
	mulss xmm3, xmm0
	movss [ebp-0x308], xmm3
	addss xmm1, [esi+0x8]
	mulss xmm4, xmm1
	movss [ebp-0x30c], xmm4
	movss xmm5, dword [ebp-0x3fc]
	addss xmm5, [ebx]
	mulss xmm5, xmm2
	subss xmm5, [_float_0_50000000]
	ucomiss xmm5, [_float__1000000_00000000_float_]
	jae XSurfaceVisitTrianglesInAabb_30
	jp XSurfaceVisitTrianglesInAabb_30
	mov dword [ebp-0x300], 0x0
XSurfaceVisitTrianglesInAabb_580:
	movaps xmm0, xmm6
	subss xmm0, [_float_0_50000000]
	movss xmm1, dword [_float__1000000_00000000_float_]
	ucomiss xmm1, xmm0
	jbe XSurfaceVisitTrianglesInAabb_40
	mov dword [ebp-0x2fc], 0x0
XSurfaceVisitTrianglesInAabb_560:
	movaps xmm1, xmm7
	subss xmm1, [_float_0_50000000]
	movss xmm0, dword [_float__1000000_00000000_float_]
	ucomiss xmm0, xmm1
	jbe XSurfaceVisitTrianglesInAabb_50
	mov dword [ebp-0x2f8], 0x0
XSurfaceVisitTrianglesInAabb_540:
	movss xmm5, dword [ebp-0x304]
	addss xmm5, [_float_0_50000000]
	movss xmm0, dword [_float__1000000_00000000_float_]
	ucomiss xmm0, xmm5
	jbe XSurfaceVisitTrianglesInAabb_60
	mov dword [ebp-0x2f4], 0x0
XSurfaceVisitTrianglesInAabb_520:
	movss xmm0, dword [ebp-0x308]
	addss xmm0, [_float_0_50000000]
	movss xmm1, dword [_float__1000000_00000000_float_]
	ucomiss xmm1, xmm0
	jbe XSurfaceVisitTrianglesInAabb_70
	mov dword [ebp-0x2f0], 0x0
XSurfaceVisitTrianglesInAabb_500:
	movss xmm0, dword [_float_0_50000000]
	addss xmm0, [ebp-0x30c]
	movss xmm1, dword [_float__1000000_00000000_float_]
	ucomiss xmm1, xmm0
	jbe XSurfaceVisitTrianglesInAabb_80
	mov dword [ebp-0x2ec], 0x0
XSurfaceVisitTrianglesInAabb_480:
	mov dword [ebp-0x27c], 0x0
	mov dword [ebp-0x278], 0x1
	mov dword [ebp-0x338], 0x0
	mov dword [ebp-0x334], 0x0
	mov dword [ebp-0x330], 0x0
	mov dword [ebp-0x32c], 0x0
	mov dword [ebp-0x328], 0x0
	mov dword [ebp-0x324], 0x0
	mov dword [ebp-0x320], 0x1
	mov dword [ebp-0x31c], 0x0
XSurfaceVisitTrianglesInAabb_160:
	mov edx, [ebp-0x31c]
	mov edi, [ebp+edx*8-0x27c]
	mov ecx, [ebp+edx*8-0x278]
	add ecx, edi
	mov [ebp-0x37c], ecx
	add edx, 0x1
	and edx, 0x3f
	mov [ebp-0x31c], edx
	cmp edi, ecx
	jz XSurfaceVisitTrianglesInAabb_90
	mov ebx, edi
	shl ebx, 0x4
	xor esi, esi
XSurfaceVisitTrianglesInAabb_150:
	mov eax, [ebp-0x310]
	mov ecx, [eax+0x1c]
	lea edx, [ebx+ecx]
	movzx eax, word [edx]
	cmp [ebp-0x2f4], eax
	jl XSurfaceVisitTrianglesInAabb_100
	movzx eax, word [edx+0x6]
	cmp [ebp-0x300], eax
	jg XSurfaceVisitTrianglesInAabb_100
	movzx eax, word [edx+0x2]
	cmp [ebp-0x2f0], eax
	jl XSurfaceVisitTrianglesInAabb_100
	movzx eax, word [edx+0x8]
	cmp [ebp-0x2fc], eax
	jg XSurfaceVisitTrianglesInAabb_100
	movzx eax, word [edx+0x4]
	cmp [ebp-0x2ec], eax
	jl XSurfaceVisitTrianglesInAabb_100
	movzx eax, word [edx+0xa]
	cmp [ebp-0x2f8], eax
	jg XSurfaceVisitTrianglesInAabb_100
	movzx eax, word [edx+0xc]
	mov [ebp-0x378], eax
	movzx edx, word [edx+0xe]
	mov [ebp-0x354], edx
	cmp edx, 0x7fff
	jbe XSurfaceVisitTrianglesInAabb_110
	sub edx, 0x8000
	mov ecx, [ebp-0x310]
	mov eax, [ecx+0x24]
	mov ecx, [ebp-0x378]
	lea eax, [eax+ecx*2]
	mov ecx, eax
	and ecx, 0xffffff80
	lea eax, [eax+edx*2-0x1]
	and eax, 0xffffff80
	cmp ecx, eax
	ja XSurfaceVisitTrianglesInAabb_120
XSurfaceVisitTrianglesInAabb_130:
	sub ecx, 0xffffff80
	cmp eax, ecx
	jae XSurfaceVisitTrianglesInAabb_130
XSurfaceVisitTrianglesInAabb_120:
	mov ecx, [ebp-0x378]
	mov eax, [ebp-0x328]
	mov [ebp+eax*8-0x7c], ecx
	mov [ebp+eax*8-0x78], edx
	add eax, 0x1
	and eax, 0x3
	mov [ebp-0x328], eax
	mov edx, [ebp-0x324]
	cmp eax, edx
	jz XSurfaceVisitTrianglesInAabb_140
XSurfaceVisitTrianglesInAabb_100:
	add esi, 0x1
	add ebx, 0x10
	mov eax, [ebp-0x37c]
	sub eax, edi
	cmp eax, esi
	jnz XSurfaceVisitTrianglesInAabb_150
XSurfaceVisitTrianglesInAabb_90:
	mov eax, [ebp-0x320]
	cmp [ebp-0x31c], eax
	jnz XSurfaceVisitTrianglesInAabb_160
XSurfaceVisitTrianglesInAabb_180:
	mov ecx, [ebp-0x328]
	cmp [ebp-0x324], ecx
	jz XSurfaceVisitTrianglesInAabb_170
	mov edx, [ebp-0x324]
	mov edx, [ebp+edx*8-0x7c]
	mov [ebp-0x34c], edx
	mov ecx, [ebp-0x324]
	add edx, [ebp+ecx*8-0x78]
	mov [ebp-0x350], edx
	add ecx, 0x1
	and ecx, 0x3
	mov [ebp-0x324], ecx
	cmp [ebp-0x34c], edx
	jz XSurfaceVisitTrianglesInAabb_180
	mov eax, [ebp-0x34c]
	add eax, eax
	mov [ebp-0x2d8], eax
	mov dword [ebp-0x2dc], 0x0
	mov ecx, eax
	mov edx, [ebp-0x310]
	mov eax, [edx+0x24]
	movzx eax, word [eax+ecx]
	test ax, ax
	js XSurfaceVisitTrianglesInAabb_190
XSurfaceVisitTrianglesInAabb_230:
	movzx ecx, ax
	mov esi, 0x1
	mov ebx, 0x6
XSurfaceVisitTrianglesInAabb_240:
	lea eax, [ecx+ecx*2]
	mov edx, [ebp-0x314]
	lea eax, [edx+eax*2]
	mov edx, eax
	and edx, 0xffffff80
	lea eax, [ebx+eax-0x1]
	and eax, 0xffffff80
	cmp edx, eax
	ja XSurfaceVisitTrianglesInAabb_200
XSurfaceVisitTrianglesInAabb_210:
	sub edx, 0xffffff80
	cmp eax, edx
	jae XSurfaceVisitTrianglesInAabb_210
XSurfaceVisitTrianglesInAabb_200:
	mov eax, [ebp-0x330]
	mov [ebp+eax*8-0x5c], ecx
	mov [ebp+eax*8-0x58], esi
	add eax, 0x1
	and eax, 0x3
	mov [ebp-0x330], eax
	mov edx, [ebp-0x32c]
	cmp eax, edx
	jz XSurfaceVisitTrianglesInAabb_220
XSurfaceVisitTrianglesInAabb_370:
	add dword [ebp-0x2dc], 0x1
	add dword [ebp-0x2d8], 0x2
	mov eax, [ebp-0x350]
	sub eax, [ebp-0x34c]
	cmp eax, [ebp-0x2dc]
	jz XSurfaceVisitTrianglesInAabb_180
	mov ecx, [ebp-0x2d8]
	mov edx, [ebp-0x310]
	mov eax, [edx+0x24]
	movzx eax, word [eax+ecx]
	test ax, ax
	jns XSurfaceVisitTrianglesInAabb_230
XSurfaceVisitTrianglesInAabb_190:
	movzx eax, ax
	lea ecx, [eax-0x8000]
	mov esi, 0x2
	mov ebx, 0xc
	jmp XSurfaceVisitTrianglesInAabb_240
XSurfaceVisitTrianglesInAabb_170:
	mov edx, [ebp-0x330]
	cmp [ebp-0x32c], edx
	jz XSurfaceVisitTrianglesInAabb_250
	mov edx, [ebp-0x32c]
	mov eax, [ebp+edx*8-0x5c]
	mov ecx, [ebp+edx*8-0x58]
	mov [ebp-0x340], ecx
	add edx, 0x1
	and edx, 0x3
	mov [ebp-0x32c], edx
	lea eax, [eax+eax*2]
	mov edx, [ebp-0x314]
	lea eax, [edx+eax*2]
	test ecx, ecx
	jz XSurfaceVisitTrianglesInAabb_170
	mov [ebp-0x2e4], eax
	mov dword [ebp-0x33c], 0x0
	mov ebx, eax
XSurfaceVisitTrianglesInAabb_300:
	mov ecx, [ebp-0x338]
	lea eax, [ecx+ecx*2]
	lea ecx, [ebp+eax*2-0x3c]
	xor edi, edi
XSurfaceVisitTrianglesInAabb_280:
	movzx esi, word [ebx]
	movzx eax, si
	shl eax, 0x5
	add eax, [ebp-0x318]
	mov edx, eax
	and edx, 0xffffff80
	add eax, 0x1f
	and eax, 0xffffff80
	cmp edx, eax
	ja XSurfaceVisitTrianglesInAabb_260
XSurfaceVisitTrianglesInAabb_270:
	sub edx, 0xffffff80
	cmp eax, edx
	jae XSurfaceVisitTrianglesInAabb_270
XSurfaceVisitTrianglesInAabb_260:
	add ebx, 0x2
	mov [ecx], si
	add edi, 0x1
	add ecx, 0x2
	cmp edi, 0x3
	jnz XSurfaceVisitTrianglesInAabb_280
	add dword [ebp-0x338], 0x1
	and dword [ebp-0x338], 0x3
	mov eax, [ebp-0x334]
	cmp [ebp-0x338], eax
	jz XSurfaceVisitTrianglesInAabb_290
XSurfaceVisitTrianglesInAabb_440:
	add dword [ebp-0x33c], 0x1
	add dword [ebp-0x2e4], 0x6
	mov eax, [ebp-0x33c]
	cmp [ebp-0x340], eax
	jz XSurfaceVisitTrianglesInAabb_170
	mov ebx, [ebp-0x2e4]
	jmp XSurfaceVisitTrianglesInAabb_300
XSurfaceVisitTrianglesInAabb_340:
	add dword [ebp-0x334], 0x1
	and dword [ebp-0x334], 0x3
	mov [esp+0x8], ebx
	mov [esp+0x4], ebx
	mov ecx, [ebp+0x1c]
	mov [esp], ecx
	call dword [ebp+0x18]
	test al, al
	jz XSurfaceVisitTrianglesInAabb_310
XSurfaceVisitTrianglesInAabb_250:
	mov eax, [ebp-0x334]
	cmp [ebp-0x338], eax
	jz XSurfaceVisitTrianglesInAabb_320
	lea eax, [eax+eax*2]
	lea ecx, [ebp+eax*2-0x3c]
	mov edx, 0x1
	lea ebx, [ebp-0x24]
XSurfaceVisitTrianglesInAabb_330:
	movzx eax, word [ecx]
	shl eax, 0x5
	add eax, [ebp-0x318]
	mov [ebx+edx*4-0x4], eax
	add edx, 0x1
	add ecx, 0x2
	cmp edx, 0x4
	jnz XSurfaceVisitTrianglesInAabb_330
	jmp XSurfaceVisitTrianglesInAabb_340
XSurfaceVisitTrianglesInAabb_410:
	lea eax, [ecx+ecx*2]
	lea edx, [ebp+eax*2-0x3c]
	mov ecx, 0x1
XSurfaceVisitTrianglesInAabb_350:
	movzx eax, word [edx]
	shl eax, 0x5
	add eax, [ebp-0x318]
	mov [ebp+ecx*4-0x28], eax
	add ecx, 0x1
	add edx, 0x2
	cmp ecx, 0x4
	jnz XSurfaceVisitTrianglesInAabb_350
	mov eax, [ebp-0x338]
	add eax, 0x1
	and eax, 0x3
	mov [ebp-0x334], eax
	lea edx, [ebp-0x24]
	mov [esp+0x8], edx
	mov [esp+0x4], edx
	mov eax, [ebp+0x1c]
	mov [esp], eax
	call dword [ebp+0x18]
	test al, al
	jnz XSurfaceVisitTrianglesInAabb_360
XSurfaceVisitTrianglesInAabb_310:
	xor eax, eax
	add esp, 0x40c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
XSurfaceVisitTrianglesInAabb_220:
	mov edx, eax
	mov ecx, [ebp+eax*8-0x58]
	mov [ebp-0x348], ecx
	add eax, 0x1
	and eax, 0x3
	mov [ebp-0x32c], eax
	mov eax, [ebp+edx*8-0x5c]
	lea eax, [eax+eax*2]
	mov ecx, [ebp-0x314]
	lea eax, [ecx+eax*2]
	mov edi, [ebp-0x348]
	test edi, edi
	jz XSurfaceVisitTrianglesInAabb_370
	mov [ebp-0x2e0], eax
	mov dword [ebp-0x344], 0x0
	mov ebx, eax
XSurfaceVisitTrianglesInAabb_420:
	mov edx, [ebp-0x338]
	lea eax, [edx+edx*2]
	lea ecx, [ebp+eax*2-0x3c]
	xor edi, edi
XSurfaceVisitTrianglesInAabb_400:
	movzx esi, word [ebx]
	movzx eax, si
	shl eax, 0x5
	add eax, [ebp-0x318]
	mov edx, eax
	and edx, 0xffffff80
	add eax, 0x1f
	and eax, 0xffffff80
	cmp edx, eax
	ja XSurfaceVisitTrianglesInAabb_380
XSurfaceVisitTrianglesInAabb_390:
	sub edx, 0xffffff80
	cmp eax, edx
	jae XSurfaceVisitTrianglesInAabb_390
XSurfaceVisitTrianglesInAabb_380:
	add ebx, 0x2
	mov [ecx], si
	add edi, 0x1
	add ecx, 0x2
	cmp edi, 0x3
	jnz XSurfaceVisitTrianglesInAabb_400
	add dword [ebp-0x338], 0x1
	and dword [ebp-0x338], 0x3
	mov ecx, [ebp-0x334]
	cmp [ebp-0x338], ecx
	jz XSurfaceVisitTrianglesInAabb_410
XSurfaceVisitTrianglesInAabb_360:
	add dword [ebp-0x344], 0x1
	add dword [ebp-0x2e0], 0x6
	mov edx, [ebp-0x344]
	cmp [ebp-0x348], edx
	jz XSurfaceVisitTrianglesInAabb_370
	mov ebx, [ebp-0x2e0]
	jmp XSurfaceVisitTrianglesInAabb_420
XSurfaceVisitTrianglesInAabb_290:
	lea eax, [eax+eax*2]
	lea edx, [ebp+eax*2-0x3c]
	mov ecx, 0x1
XSurfaceVisitTrianglesInAabb_430:
	movzx eax, word [edx]
	shl eax, 0x5
	add eax, [ebp-0x318]
	mov [ebp+ecx*4-0x28], eax
	add ecx, 0x1
	add edx, 0x2
	cmp ecx, 0x4
	jnz XSurfaceVisitTrianglesInAabb_430
	mov ecx, [ebp-0x338]
	add ecx, 0x1
	and ecx, 0x3
	mov [ebp-0x334], ecx
	lea eax, [ebp-0x24]
	mov [esp+0x8], eax
	mov [esp+0x4], eax
	mov ecx, [ebp+0x1c]
	mov [esp], ecx
	call dword [ebp+0x18]
	test al, al
	jnz XSurfaceVisitTrianglesInAabb_440
	jmp XSurfaceVisitTrianglesInAabb_310
XSurfaceVisitTrianglesInAabb_110:
	shl eax, 0x4
	lea eax, [ecx+eax]
	mov ecx, eax
	and ecx, 0xffffff80
	shl edx, 0x4
	lea eax, [eax+edx-0x1]
	and eax, 0xffffff80
	cmp ecx, eax
	ja XSurfaceVisitTrianglesInAabb_450
XSurfaceVisitTrianglesInAabb_460:
	sub ecx, 0xffffff80
	cmp eax, ecx
	jae XSurfaceVisitTrianglesInAabb_460
XSurfaceVisitTrianglesInAabb_450:
	mov edx, [ebp-0x378]
	mov eax, [ebp-0x320]
	mov [ebp+eax*8-0x27c], edx
	mov ecx, [ebp-0x354]
	mov [ebp+eax*8-0x278], ecx
	add eax, 0x1
	and eax, 0x3f
	mov [ebp-0x320], eax
	jmp XSurfaceVisitTrianglesInAabb_100
XSurfaceVisitTrianglesInAabb_80:
	ucomiss xmm0, [_float_1000000_00000000]
	ja XSurfaceVisitTrianglesInAabb_470
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
	movdqa [ebp-0x3e8], xmm0
	mov eax, [ebp-0x3e8]
	mov [ebp-0x2ec], eax
	jmp XSurfaceVisitTrianglesInAabb_480
XSurfaceVisitTrianglesInAabb_70:
	ucomiss xmm0, [_float_1000000_00000000]
	ja XSurfaceVisitTrianglesInAabb_490
	xorps xmm2, xmm2
	maxss xmm0, xmm2
	movss xmm2, dword [_data16_4f000000]
	movaps xmm3, xmm2
	cmpss xmm3, xmm0, 0x2
	movss xmm4, dword [_data16_4f800000]
	cmpss xmm4, xmm0, 0x2
	andps xmm2, xmm3
	pslld xmm3, 0x1f
	subps xmm0, xmm2
	cvttps2dq xmm0, xmm0
	paddd xmm0, xmm3
	por xmm0, xmm4
	movdqa [ebp-0x3d8], xmm0
	mov eax, [ebp-0x3d8]
	mov [ebp-0x2f0], eax
	jmp XSurfaceVisitTrianglesInAabb_500
XSurfaceVisitTrianglesInAabb_60:
	ucomiss xmm5, [_float_1000000_00000000]
	ja XSurfaceVisitTrianglesInAabb_510
	xorps xmm2, xmm2
	maxss xmm5, xmm2
	movss xmm2, dword [_data16_4f000000]
	movaps xmm3, xmm2
	cmpss xmm3, xmm5, 0x2
	movss xmm4, dword [_data16_4f800000]
	cmpss xmm4, xmm5, 0x2
	andps xmm2, xmm3
	pslld xmm3, 0x1f
	subps xmm5, xmm2
	cvttps2dq xmm5, xmm5
	paddd xmm5, xmm3
	por xmm5, xmm4
	movdqa [ebp-0x3c8], xmm5
	mov eax, [ebp-0x3c8]
	mov [ebp-0x2f4], eax
	jmp XSurfaceVisitTrianglesInAabb_520
XSurfaceVisitTrianglesInAabb_50:
	ucomiss xmm1, [_float_1000000_00000000]
	ja XSurfaceVisitTrianglesInAabb_530
	xorps xmm2, xmm2
	maxss xmm1, xmm2
	movss xmm2, dword [_data16_4f000000]
	movaps xmm3, xmm2
	cmpss xmm3, xmm1, 0x2
	movss xmm4, dword [_data16_4f800000]
	cmpss xmm4, xmm1, 0x2
	andps xmm2, xmm3
	pslld xmm3, 0x1f
	subps xmm1, xmm2
	cvttps2dq xmm1, xmm1
	paddd xmm1, xmm3
	por xmm1, xmm4
	movdqa [ebp-0x3b8], xmm1
	mov eax, [ebp-0x3b8]
	mov [ebp-0x2f8], eax
	jmp XSurfaceVisitTrianglesInAabb_540
XSurfaceVisitTrianglesInAabb_40:
	ucomiss xmm0, [_float_1000000_00000000]
	ja XSurfaceVisitTrianglesInAabb_550
	xorps xmm2, xmm2
	maxss xmm0, xmm2
	movss xmm2, dword [_data16_4f000000]
	movaps xmm3, xmm2
	cmpss xmm3, xmm0, 0x2
	movss xmm4, dword [_data16_4f800000]
	cmpss xmm4, xmm0, 0x2
	andps xmm2, xmm3
	pslld xmm3, 0x1f
	subps xmm0, xmm2
	cvttps2dq xmm0, xmm0
	paddd xmm0, xmm3
	por xmm0, xmm4
	movdqa [ebp-0x3a8], xmm0
	mov eax, [ebp-0x3a8]
	mov [ebp-0x2fc], eax
	jmp XSurfaceVisitTrianglesInAabb_560
XSurfaceVisitTrianglesInAabb_30:
	ucomiss xmm5, [_float_1000000_00000000]
	ja XSurfaceVisitTrianglesInAabb_570
	xorps xmm2, xmm2
	maxss xmm5, xmm2
	movss xmm2, dword [_data16_4f000000]
	movaps xmm3, xmm2
	cmpss xmm3, xmm5, 0x2
	movss xmm4, dword [_data16_4f800000]
	cmpss xmm4, xmm5, 0x2
	andps xmm2, xmm3
	pslld xmm3, 0x1f
	subps xmm5, xmm2
	cvttps2dq xmm5, xmm5
	paddd xmm5, xmm3
	por xmm5, xmm4
	movdqa [ebp-0x398], xmm5
	mov eax, [ebp-0x398]
	mov [ebp-0x300], eax
	jmp XSurfaceVisitTrianglesInAabb_580
XSurfaceVisitTrianglesInAabb_570:
	mov dword [ebp-0x300], 0xf4240
	jmp XSurfaceVisitTrianglesInAabb_580
XSurfaceVisitTrianglesInAabb_550:
	mov dword [ebp-0x2fc], 0xf4240
	jmp XSurfaceVisitTrianglesInAabb_560
XSurfaceVisitTrianglesInAabb_530:
	mov dword [ebp-0x2f8], 0xf4240
	jmp XSurfaceVisitTrianglesInAabb_540
XSurfaceVisitTrianglesInAabb_510:
	mov dword [ebp-0x2f4], 0xf4240
	jmp XSurfaceVisitTrianglesInAabb_520
XSurfaceVisitTrianglesInAabb_490:
	mov dword [ebp-0x2f0], 0xf4240
	jmp XSurfaceVisitTrianglesInAabb_500
XSurfaceVisitTrianglesInAabb_470:
	mov dword [ebp-0x2ec], 0xf4240
	jmp XSurfaceVisitTrianglesInAabb_480
XSurfaceVisitTrianglesInAabb_140:
	mov ecx, [ebp+eax*8-0x7c]
	mov [ebp-0x370], ecx
	add ecx, [ebp+eax*8-0x78]
	mov [ebp-0x374], ecx
	add eax, 0x1
	and eax, 0x3
	mov [ebp-0x324], eax
	cmp [ebp-0x370], ecx
	jz XSurfaceVisitTrianglesInAabb_100
	mov eax, [ebp-0x370]
	add eax, eax
	mov [ebp-0x2cc], eax
	mov dword [ebp-0x2d0], 0x0
	mov ecx, eax
	mov edx, [ebp-0x310]
	mov eax, [edx+0x24]
	movzx eax, word [ecx+eax]
	test ax, ax
	js XSurfaceVisitTrianglesInAabb_590
XSurfaceVisitTrianglesInAabb_630:
	movzx eax, ax
	mov [ebp-0x3ec], eax
	mov dword [ebp-0x36c], 0x1
	mov dword [ebp-0x2e8], 0x6
	mov edx, eax
XSurfaceVisitTrianglesInAabb_640:
	lea eax, [edx+edx*2]
	mov ecx, [ebp-0x314]
	lea eax, [ecx+eax*2]
	mov edx, eax
	and edx, 0xffffff80
	mov ecx, [ebp-0x2e8]
	lea eax, [ecx+eax-0x1]
	and eax, 0xffffff80
	cmp edx, eax
	ja XSurfaceVisitTrianglesInAabb_600
XSurfaceVisitTrianglesInAabb_610:
	sub edx, 0xffffff80
	cmp eax, edx
	jae XSurfaceVisitTrianglesInAabb_610
XSurfaceVisitTrianglesInAabb_600:
	mov edx, [ebp-0x3ec]
	mov eax, [ebp-0x330]
	mov [ebp+eax*8-0x5c], edx
	mov ecx, [ebp-0x36c]
	mov [ebp+eax*8-0x58], ecx
	add eax, 0x1
	and eax, 0x3
	mov [ebp-0x330], eax
	mov edx, [ebp-0x32c]
	cmp eax, edx
	jz XSurfaceVisitTrianglesInAabb_620
XSurfaceVisitTrianglesInAabb_650:
	add dword [ebp-0x2d0], 0x1
	add dword [ebp-0x2cc], 0x2
	mov eax, [ebp-0x374]
	sub eax, [ebp-0x370]
	cmp eax, [ebp-0x2d0]
	jz XSurfaceVisitTrianglesInAabb_100
	mov ecx, [ebp-0x2cc]
	mov edx, [ebp-0x310]
	mov eax, [edx+0x24]
	movzx eax, word [ecx+eax]
	test ax, ax
	jns XSurfaceVisitTrianglesInAabb_630
XSurfaceVisitTrianglesInAabb_590:
	movzx eax, ax
	sub eax, 0x8000
	mov [ebp-0x3ec], eax
	mov dword [ebp-0x36c], 0x2
	mov dword [ebp-0x2e8], 0xc
	mov edx, eax
	jmp XSurfaceVisitTrianglesInAabb_640
XSurfaceVisitTrianglesInAabb_620:
	mov ecx, [ebp+eax*8-0x58]
	mov [ebp-0x368], ecx
	add eax, 0x1
	and eax, 0x3
	mov [ebp-0x32c], eax
	mov edx, [ebp-0x330]
	mov eax, [ebp+edx*8-0x5c]
	lea eax, [eax+eax*2]
	mov ecx, [ebp-0x314]
	lea eax, [ecx+eax*2]
	mov edx, [ebp-0x368]
	test edx, edx
	jz XSurfaceVisitTrianglesInAabb_650
	mov [ebp-0x2d4], eax
	mov dword [ebp-0x364], 0x0
XSurfaceVisitTrianglesInAabb_700:
	mov [ebp-0x360], eax
	mov edx, [ebp-0x338]
	lea eax, [edx+edx*2]
	lea ecx, [ebp+eax*2-0x3c]
	mov dword [ebp-0x35c], 0x0
XSurfaceVisitTrianglesInAabb_680:
	mov eax, [ebp-0x360]
	movzx eax, word [eax]
	mov [ebp-0x356], ax
	movzx eax, ax
	shl eax, 0x5
	add eax, [ebp-0x318]
	mov edx, eax
	and edx, 0xffffff80
	add eax, 0x1f
	and eax, 0xffffff80
	cmp edx, eax
	ja XSurfaceVisitTrianglesInAabb_660
XSurfaceVisitTrianglesInAabb_670:
	sub edx, 0xffffff80
	cmp eax, edx
	jae XSurfaceVisitTrianglesInAabb_670
XSurfaceVisitTrianglesInAabb_660:
	add dword [ebp-0x360], 0x2
	movzx edx, word [ebp-0x356]
	mov [ecx], dx
	add dword [ebp-0x35c], 0x1
	add ecx, 0x2
	cmp dword [ebp-0x35c], 0x3
	jnz XSurfaceVisitTrianglesInAabb_680
	add dword [ebp-0x338], 0x1
	and dword [ebp-0x338], 0x3
	mov ecx, [ebp-0x338]
	cmp [ebp-0x334], ecx
	jz XSurfaceVisitTrianglesInAabb_690
XSurfaceVisitTrianglesInAabb_720:
	add dword [ebp-0x364], 0x1
	add dword [ebp-0x2d4], 0x6
	mov ecx, [ebp-0x364]
	cmp [ebp-0x368], ecx
	jz XSurfaceVisitTrianglesInAabb_650
	mov eax, [ebp-0x2d4]
	jmp XSurfaceVisitTrianglesInAabb_700
XSurfaceVisitTrianglesInAabb_690:
	mov edx, [ebp-0x334]
	lea eax, [edx+edx*2]
	lea edx, [ebp+eax*2-0x3c]
	mov ecx, 0x1
XSurfaceVisitTrianglesInAabb_710:
	movzx eax, word [edx]
	shl eax, 0x5
	add eax, [ebp-0x318]
	mov [ebp+ecx*4-0x28], eax
	add ecx, 0x1
	add edx, 0x2
	cmp ecx, 0x4
	jnz XSurfaceVisitTrianglesInAabb_710
	add dword [ebp-0x334], 0x1
	and dword [ebp-0x334], 0x3
	lea ecx, [ebp-0x24]
	mov [esp+0x8], ecx
	mov [esp+0x4], ecx
	mov edx, [ebp+0x1c]
	mov [esp], edx
	call dword [ebp+0x18]
	test al, al
	jnz XSurfaceVisitTrianglesInAabb_720
	jmp XSurfaceVisitTrianglesInAabb_310
XSurfaceVisitTrianglesInAabb_320:
	mov eax, 0x1
	add esp, 0x40c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;XModelTraceLineAnimatedPartBits(DObj_s const*, unsigned int, int, int, int*)
XModelTraceLineAnimatedPartBits:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov ecx, [ebp+0x8]
	mov edx, [ecx+0x60]
	mov eax, [ebp+0xc]
	mov ebx, [edx+eax*4]
	cmp word [ebx+0xc6], 0x0
	js XModelTraceLineAnimatedPartBits_10
	lea eax, [ebp-0x28]
	mov [esp+0x4], eax
	mov [esp], ecx
	call DObjGetHidePartBits
	mov eax, [ebx+0x9c]
	test eax, eax
	jz XModelTraceLineAnimatedPartBits_10
	xor edi, edi
	xor esi, esi
XModelTraceLineAnimatedPartBits_30:
	mov eax, esi
	add eax, [ebx+0x98]
	mov edx, [ebp+0x14]
	test [eax+0x24], edx
	jz XModelTraceLineAnimatedPartBits_20
	mov ecx, [ebp+0x10]
	add ecx, [eax+0x20]
	mov eax, ecx
	sar eax, 0x5
	and ecx, 0x1f
	mov edx, 0x80000000
	shr edx, cl
	test [ebp+eax*4-0x28], edx
	jnz XModelTraceLineAnimatedPartBits_20
	mov ecx, [ebp+0x18]
	or [ecx+eax*4], edx
XModelTraceLineAnimatedPartBits_20:
	add edi, 0x1
	add esi, 0x2c
	cmp edi, [ebx+0x9c]
	jb XModelTraceLineAnimatedPartBits_30
XModelTraceLineAnimatedPartBits_10:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;XModelBad(XModel const*)
XModelBad:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov edx, [ebp+0x8]
	mov eax, useFastFile
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz XModelBad_10
	movzx eax, byte [edx+0xd1]
	leave
	ret
XModelBad_10:
	mov eax, [edx]
	mov [esp+0x4], eax
	mov dword [esp], 0x3
	call DB_IsXAssetDefault
	movzx eax, al
	leave
	ret


;Zero initialized global or static variables of xmodel:
SECTION .bss
g_materials: resb 0x80
g_default: resb 0x60


;Initialized global or static variables of xmodel:
SECTION .data


;Initialized constant data of xmodel:
SECTION .rdata


;All cstrings:
SECTION .rdata
_cstring_error_cannot_fin:		db "ERROR: Cannot find xmodel ",27h,"%s",27h,".",0ah,0
_cstring_default:		db "DEFAULT",0
_cstring_mcdefault:		db "mc/$default",0



;All constant floats and doubles:
SECTION .rdata
_float_0_12500000:		dd 0x3e000000	; 0.125
_float__0_00100000:		dd 0xba83126f	; -0.001
_float_1_00100005:		dd 0x3f8020c5	; 1.001
_float_1_00000000:		dd 0x3f800000	; 1
_float_0_50000000:		dd 0x3f000000	; 0.5
_float__1000000_00000000_float_:		dd 0xc9742400	; -1e+06
_float_1000000_00000000:		dd 0x49742400	; 1e+06

align   16,db 0
_data16_80000000:		dd 0x80000000, 0x0, 0x0, 0x0	; DQWORD
_data16_4f000000:		dd 0x4f000000, 0x0, 0x0, 0x0	; DQWORD
_data16_4f800000:		dd 0x4f800000, 0x0, 0x0, 0x0	; DQWORD
