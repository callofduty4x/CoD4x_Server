;Imports of r_staticmodel_load_obj:
	extern Hunk_AllocateTempMemory
	extern memcpy
	extern Hunk_AllocAlignInternal
	extern qsort
	extern Vec3PackNormAxis
	extern R_GetXModelBounds
	extern XModelGetLodOutDist
	extern BoxOnPlaneSide

;Exports of r_staticmodel_load_obj:
	global CompareStaticModels
	global R_AddStaticModelToAabbTree_r
	global R_SortGfxAabbTree
	global R_AllocStaticModels
	global R_CreateStaticModel
	global R_FilterStaticModelIntoCells_r
	global R_SetStaticModelReflectionProbe


SECTION .text


;CompareStaticModels(void const*, void const*)
CompareStaticModels:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	movzx eax, word [eax]
	mov edx, [ebp+0xc]
	movzx edx, word [edx]
	sub eax, edx
	pop ebp
	ret
	nop


;R_AddStaticModelToAabbTree_r(GfxWorld*, GfxAabbTree*, int)
R_AddStaticModelToAabbTree_r:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov [ebp-0x28], eax
	mov edi, edx
	mov [ebp-0x1a], cx
	lea eax, [ecx*4]
	shl ecx, 0x5
	sub ecx, eax
	mov [ebp-0x2c], ecx
R_AddStaticModelToAabbTree_r_170:
	movzx ecx, word [edi+0x22]
	movzx edx, cx
	lea eax, [edx-0x1]
	test eax, edx
	jnz R_AddStaticModelToAabbTree_r_10
R_AddStaticModelToAabbTree_r_130:
	test cx, cx
	jnz R_AddStaticModelToAabbTree_r_20
	mov eax, 0x1
R_AddStaticModelToAabbTree_r_180:
	add eax, eax
	mov [esp], eax
	call Hunk_AllocateTempMemory
	mov ebx, eax
	movzx eax, word [edi+0x22]
	add eax, eax
	mov edx, [edi+0x24]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov [esp], ebx
	call memcpy
	mov [edi+0x24], ebx
	mov eax, ebx
	movzx edx, word [edi+0x22]
	movzx ecx, word [ebp-0x1a]
	mov [eax+edx*2], cx
	add word [edi+0x22], 0x1
	movzx eax, word [edi+0x18]
	test ax, ax
	jz R_AddStaticModelToAabbTree_r_30
R_AddStaticModelToAabbTree_r_140:
	mov edx, [ebp-0x2c]
	mov esi, [ebp-0x28]
	add edx, [esi+0x290]
	mov [ebp-0x24], edx
	movzx ebx, ax
	test ebx, ebx
	jle R_AddStaticModelToAabbTree_r_40
	movss xmm1, dword [edx]
	mov ecx, [edi+0x28]
	mov [ebp-0x34], ecx
	lea edx, [edi+ecx]
	xor eax, eax
R_AddStaticModelToAabbTree_r_70:
	movss xmm0, dword [edx]
	ucomiss xmm0, xmm1
	ja R_AddStaticModelToAabbTree_r_50
	movss xmm0, dword [edx+0x4]
	mov esi, [ebp-0x24]
	ucomiss xmm0, [esi+0x4]
	ja R_AddStaticModelToAabbTree_r_50
	movss xmm0, dword [edx+0x8]
	ucomiss xmm0, [esi+0x8]
	ja R_AddStaticModelToAabbTree_r_50
	movss xmm0, dword [esi+0xc]
	ucomiss xmm0, [edx+0xc]
	ja R_AddStaticModelToAabbTree_r_50
	movss xmm0, dword [esi+0x10]
	ucomiss xmm0, [edx+0x10]
	ja R_AddStaticModelToAabbTree_r_50
	movss xmm0, dword [esi+0x14]
	ucomiss xmm0, [edx+0x14]
	jbe R_AddStaticModelToAabbTree_r_60
R_AddStaticModelToAabbTree_r_50:
	add eax, 0x1
	add edx, 0x2c
	cmp ebx, eax
	jnz R_AddStaticModelToAabbTree_r_70
	mov edx, [ebp-0x34]
	lea eax, [edi+edx]
	cmp word [eax+0x1a], 0x0
	jz R_AddStaticModelToAabbTree_r_80
	xor ecx, ecx
	mov edx, 0x2c
R_AddStaticModelToAabbTree_r_90:
	add ecx, 0x1
	cmp ebx, ecx
	jz R_AddStaticModelToAabbTree_r_40
	mov esi, [ebp-0x34]
	lea eax, [edi+esi]
	lea esi, [eax+edx]
	add edx, 0x2c
	cmp word [esi+0x1a], 0x0
	jnz R_AddStaticModelToAabbTree_r_90
R_AddStaticModelToAabbTree_r_190:
	mov edx, esi
	mov eax, [ebp-0x24]
	xor ecx, ecx
R_AddStaticModelToAabbTree_r_120:
	movss xmm1, dword [eax]
	movss xmm0, dword [edx]
	ucomiss xmm0, xmm1
	jbe R_AddStaticModelToAabbTree_r_100
	movss [edx], xmm1
R_AddStaticModelToAabbTree_r_100:
	movss xmm0, dword [eax+0xc]
	ucomiss xmm0, [edx+0xc]
	jbe R_AddStaticModelToAabbTree_r_110
	movss [edx+0xc], xmm0
R_AddStaticModelToAabbTree_r_110:
	add ecx, 0x1
	add edx, 0x4
	add eax, 0x4
	cmp ecx, 0x3
	jnz R_AddStaticModelToAabbTree_r_120
	mov edi, esi
	movzx ecx, word [edi+0x22]
	movzx edx, cx
	lea eax, [edx-0x1]
	test eax, edx
	jz R_AddStaticModelToAabbTree_r_130
R_AddStaticModelToAabbTree_r_10:
	mov eax, [edi+0x24]
	movzx edx, word [edi+0x22]
	movzx ecx, word [ebp-0x1a]
	mov [eax+edx*2], cx
	add word [edi+0x22], 0x1
	movzx eax, word [edi+0x18]
	test ax, ax
	jnz R_AddStaticModelToAabbTree_r_140
R_AddStaticModelToAabbTree_r_30:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_AddStaticModelToAabbTree_r_40:
	mov dword [esp+0x4], 0x4
	lea eax, [ebx+ebx*4]
	lea eax, [ebx+eax*2]
	lea eax, [eax*4+0x2c]
	mov [esp], eax
	call Hunk_AllocAlignInternal
	mov ebx, eax
	mov eax, [edi+0x28]
	add eax, edi
	mov [ebp-0x20], eax
	movzx eax, word [edi+0x18]
	lea edx, [eax+eax*4]
	lea edx, [eax+edx*2]
	shl edx, 0x2
	mov [esp+0x8], edx
	mov edx, [ebp-0x20]
	mov [esp+0x4], edx
	mov [esp], ebx
	call memcpy
	mov eax, ebx
	sub eax, edi
	mov [edi+0x28], eax
	movzx ecx, word [edi+0x18]
	mov [ebp-0x2e], cx
	movzx esi, cx
	test esi, esi
	jle R_AddStaticModelToAabbTree_r_150
	mov ecx, [ebp-0x20]
	mov edx, ebx
	xor ebx, ebx
R_AddStaticModelToAabbTree_r_160:
	mov eax, ecx
	add eax, [ecx+0x28]
	sub eax, edx
	mov [edx+0x28], eax
	add ebx, 0x1
	add ecx, 0x2c
	add edx, 0x2c
	cmp esi, ebx
	jg R_AddStaticModelToAabbTree_r_160
R_AddStaticModelToAabbTree_r_150:
	mov eax, edi
	add eax, [edi+0x28]
	lea edx, [esi+esi*4]
	lea edx, [esi+edx*2]
	lea edx, [eax+edx*4]
	movzx eax, word [ebp-0x2e]
	add eax, 0x1
	mov [edi+0x18], ax
	mov esi, [ebp-0x24]
	mov eax, [esi]
	mov [edx], eax
	mov eax, [esi+0x4]
	mov [edx+0x4], eax
	mov eax, [esi+0x8]
	mov [edx+0x8], eax
	lea ebx, [edx+0xc]
	mov ecx, esi
	add ecx, 0xc
	mov eax, [esi+0xc]
	mov [edx+0xc], eax
	mov eax, [ecx+0x4]
	mov [ebx+0x4], eax
	mov eax, [ecx+0x8]
	mov [ebx+0x8], eax
	mov edi, edx
	jmp R_AddStaticModelToAabbTree_r_170
R_AddStaticModelToAabbTree_r_20:
	lea eax, [edx+edx]
	jmp R_AddStaticModelToAabbTree_r_180
R_AddStaticModelToAabbTree_r_80:
	mov esi, eax
	jmp R_AddStaticModelToAabbTree_r_190
R_AddStaticModelToAabbTree_r_60:
	mov edi, edx
	jmp R_AddStaticModelToAabbTree_r_170


;R_SortGfxAabbTree(GfxWorld*, GfxAabbTree*)
R_SortGfxAabbTree:
R_SortGfxAabbTree_260:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x8c
	mov edx, [ebp+0xc]
R_SortGfxAabbTree_250:
	mov dword [esp+0xc], CompareStaticModels
	mov dword [esp+0x8], 0x2
	movzx eax, word [edx+0x22]
	mov [esp+0x4], eax
	mov eax, [edx+0x24]
	mov [esp], eax
	call qsort
	mov ecx, [ebp+0xc]
	cmp word [ecx+0x18], 0x0
	jnz R_SortGfxAabbTree_10
	mov eax, 0x7f7fffff
	mov [ebp-0x24], eax
	mov [ebp-0x20], eax
	mov [ebp-0x1c], eax
	mov eax, 0xff7fffff
	mov [ebp-0x30], eax
	mov [ebp-0x2c], eax
	mov [ebp-0x28], eax
	movzx edi, word [ecx+0x22]
	test edi, edi
	jle R_SortGfxAabbTree_20
	mov esi, [ecx+0x24]
	mov [ebp-0x5c], esi
	mov eax, [ebp+0x8]
	mov eax, [eax+0x290]
	mov [ebp-0x78], eax
	xor esi, esi
R_SortGfxAabbTree_60:
	mov edx, [ebp-0x5c]
	movzx eax, word [edx+esi*2]
	lea edx, [eax*4]
	shl eax, 0x5
	sub eax, edx
	mov edx, [ebp-0x78]
	add edx, eax
	mov ebx, 0x1
R_SortGfxAabbTree_50:
	lea ecx, [ebx*4]
	lea eax, [ebp-0x24]
	add eax, ecx
	movss xmm1, dword [edx]
	movss xmm0, dword [eax-0x4]
	ucomiss xmm0, xmm1
	jbe R_SortGfxAabbTree_30
	movss [eax-0x4], xmm1
R_SortGfxAabbTree_30:
	lea eax, [ebp-0x30]
	add eax, ecx
	movss xmm0, dword [edx+0xc]
	ucomiss xmm0, [eax-0x4]
	jbe R_SortGfxAabbTree_40
	movss [eax-0x4], xmm0
R_SortGfxAabbTree_40:
	add ebx, 0x1
	add edx, 0x4
	cmp ebx, 0x4
	jnz R_SortGfxAabbTree_50
	add esi, 0x1
	cmp edi, esi
	jnz R_SortGfxAabbTree_60
	mov ecx, [ebp+0xc]
R_SortGfxAabbTree_20:
	cmp word [ecx+0x1a], 0x0
	jnz R_SortGfxAabbTree_70
	mov eax, [ebp-0x24]
	mov [ecx], eax
	mov eax, [ebp-0x20]
	mov [ecx+0x4], eax
	mov eax, [ebp-0x1c]
	mov [ecx+0x8], eax
	mov edx, ecx
	add edx, 0xc
	mov eax, [ebp-0x30]
	mov [ecx+0xc], eax
	mov eax, [ebp-0x2c]
	mov [edx+0x4], eax
	mov eax, [ebp-0x28]
	mov [edx+0x8], eax
	mov esi, [ebp+0xc]
	movzx eax, word [esi+0x22]
	cmp ax, 0x7
	jbe R_SortGfxAabbTree_80
R_SortGfxAabbTree_290:
	movss xmm2, dword [ebp-0x24]
	movss xmm6, dword [ebp-0x30]
	movaps xmm1, xmm2
	addss xmm1, xmm6
	movss xmm3, dword [ebp-0x20]
	movss xmm7, dword [ebp-0x2c]
	movaps xmm5, xmm3
	addss xmm5, xmm7
	movss xmm4, dword [ebp-0x1c]
	movss xmm0, dword [ebp-0x28]
	movss [ebp-0x70], xmm0
	movss xmm0, dword [_float_0_50000000]
	mulss xmm1, xmm0
	mulss xmm5, xmm0
	mov edx, [esi+0x24]
	mov [ebp-0x74], edx
	movzx edi, ax
	test edi, edi
	jle R_SortGfxAabbTree_90
	xor esi, esi
	mov dword [ebp-0x6c], 0x0
	mov ebx, edx
	mov [ebp-0x88], edx
R_SortGfxAabbTree_110:
	movzx ecx, word [ebx]
	lea eax, [ecx*4]
	mov edx, ecx
	shl edx, 0x5
	sub edx, eax
	mov eax, [ebp+0x8]
	add edx, [eax+0x290]
	ucomiss xmm2, [edx]
	ja R_SortGfxAabbTree_100
	ucomiss xmm3, [edx+0x4]
	ja R_SortGfxAabbTree_100
	ucomiss xmm4, [edx+0x8]
	ja R_SortGfxAabbTree_100
	movss xmm0, dword [edx+0xc]
	ucomiss xmm0, xmm1
	ja R_SortGfxAabbTree_100
	movss xmm0, dword [edx+0x10]
	ucomiss xmm0, xmm7
	ja R_SortGfxAabbTree_100
	movss xmm0, dword [edx+0x14]
	ucomiss xmm0, [ebp-0x70]
	ja R_SortGfxAabbTree_100
	mov edx, [ebp-0x88]
	movzx eax, word [edx]
	mov [edx], cx
	mov [ebx], ax
	add dword [ebp-0x6c], 0x1
	add edx, 0x2
	mov [ebp-0x88], edx
R_SortGfxAabbTree_100:
	add esi, 0x1
	add ebx, 0x2
	cmp edi, esi
	jnz R_SortGfxAabbTree_110
	cmp dword [ebp-0x6c], 0x1
	jle R_SortGfxAabbTree_90
	mov eax, [ebp-0x6c]
	mov ecx, eax
R_SortGfxAabbTree_320:
	mov [ebp-0x40], ecx
	mov esi, [ebp-0x74]
	lea eax, [esi+eax*2]
	mov [ebp-0x54], eax
	sub edi, ecx
	test edi, edi
	jle R_SortGfxAabbTree_120
	xor esi, esi
	mov dword [ebp-0x68], 0x0
	mov ebx, eax
	mov [ebp-0x84], eax
R_SortGfxAabbTree_140:
	movzx ecx, word [ebx]
	lea eax, [ecx*4]
	mov edx, ecx
	shl edx, 0x5
	sub edx, eax
	mov eax, [ebp+0x8]
	add edx, [eax+0x290]
	ucomiss xmm1, [edx]
	ja R_SortGfxAabbTree_130
	ucomiss xmm3, [edx+0x4]
	ja R_SortGfxAabbTree_130
	ucomiss xmm4, [edx+0x8]
	ja R_SortGfxAabbTree_130
	movss xmm0, dword [edx+0xc]
	ucomiss xmm0, xmm6
	ja R_SortGfxAabbTree_130
	movss xmm0, dword [edx+0x10]
	ucomiss xmm0, xmm7
	ja R_SortGfxAabbTree_130
	movss xmm0, dword [edx+0x14]
	ucomiss xmm0, [ebp-0x70]
	ja R_SortGfxAabbTree_130
	mov edx, [ebp-0x84]
	movzx eax, word [edx]
	mov [edx], cx
	mov [ebx], ax
	add dword [ebp-0x68], 0x1
	add edx, 0x2
	mov [ebp-0x84], edx
R_SortGfxAabbTree_130:
	add esi, 0x1
	add ebx, 0x2
	cmp edi, esi
	jnz R_SortGfxAabbTree_140
	cmp dword [ebp-0x68], 0x1
	jle R_SortGfxAabbTree_120
	mov eax, [ebp-0x68]
	mov ecx, eax
R_SortGfxAabbTree_310:
	mov [ebp-0x3c], ecx
	mov esi, [ebp-0x54]
	lea eax, [esi+eax*2]
	mov [ebp-0x4c], eax
	sub edi, ecx
	test edi, edi
	jle R_SortGfxAabbTree_150
	xor esi, esi
	mov dword [ebp-0x64], 0x0
	mov ebx, eax
	mov [ebp-0x80], eax
R_SortGfxAabbTree_170:
	movzx ecx, word [ebx]
	lea eax, [ecx*4]
	mov edx, ecx
	shl edx, 0x5
	sub edx, eax
	mov eax, [ebp+0x8]
	add edx, [eax+0x290]
	ucomiss xmm2, [edx]
	ja R_SortGfxAabbTree_160
	ucomiss xmm3, [edx+0x4]
	ja R_SortGfxAabbTree_160
	ucomiss xmm4, [edx+0x8]
	ja R_SortGfxAabbTree_160
	movss xmm0, dword [edx+0xc]
	ucomiss xmm0, xmm6
	ja R_SortGfxAabbTree_160
	movss xmm0, dword [edx+0x10]
	ucomiss xmm0, xmm5
	ja R_SortGfxAabbTree_160
	movss xmm0, dword [edx+0x14]
	ucomiss xmm0, [ebp-0x70]
	ja R_SortGfxAabbTree_160
	mov edx, [ebp-0x80]
	movzx eax, word [edx]
	mov [edx], cx
	mov [ebx], ax
	add dword [ebp-0x64], 0x1
	add edx, 0x2
	mov [ebp-0x80], edx
R_SortGfxAabbTree_160:
	add esi, 0x1
	add ebx, 0x2
	cmp edi, esi
	jnz R_SortGfxAabbTree_170
	cmp dword [ebp-0x64], 0x1
	jle R_SortGfxAabbTree_150
	mov eax, [ebp-0x64]
	mov ecx, eax
R_SortGfxAabbTree_300:
	mov [ebp-0x38], ecx
	mov esi, [ebp-0x4c]
	lea eax, [esi+eax*2]
	sub edi, ecx
	test edi, edi
	jle R_SortGfxAabbTree_180
	xor esi, esi
	mov dword [ebp-0x60], 0x0
	mov ebx, eax
	mov [ebp-0x7c], eax
R_SortGfxAabbTree_200:
	movzx ecx, word [ebx]
	lea eax, [ecx*4]
	mov edx, ecx
	shl edx, 0x5
	sub edx, eax
	mov eax, [ebp+0x8]
	add edx, [eax+0x290]
	ucomiss xmm2, [edx]
	ja R_SortGfxAabbTree_190
	ucomiss xmm5, [edx+0x4]
	ja R_SortGfxAabbTree_190
	ucomiss xmm4, [edx+0x8]
	ja R_SortGfxAabbTree_190
	movss xmm0, dword [edx+0xc]
	ucomiss xmm0, xmm6
	ja R_SortGfxAabbTree_190
	movss xmm0, dword [edx+0x10]
	ucomiss xmm0, xmm7
	ja R_SortGfxAabbTree_190
	movss xmm0, dword [edx+0x14]
	ucomiss xmm0, [ebp-0x70]
	ja R_SortGfxAabbTree_190
	mov edx, [ebp-0x7c]
	movzx eax, word [edx]
	mov [edx], cx
	mov [ebx], ax
	add dword [ebp-0x60], 0x1
	add edx, 0x2
	mov [ebp-0x7c], edx
R_SortGfxAabbTree_190:
	add esi, 0x1
	add ebx, 0x2
	cmp edi, esi
	jnz R_SortGfxAabbTree_200
	cmp dword [ebp-0x60], 0x1
	jle R_SortGfxAabbTree_180
R_SortGfxAabbTree_280:
	mov ecx, [ebp-0x60]
	mov [ebp-0x34], ecx
	mov ebx, edi
	sub ebx, ecx
	xor ecx, ecx
	xor edx, edx
R_SortGfxAabbTree_210:
	xor eax, eax
	cmp dword [ebp+edx*4-0x40], 0x0
	setnz al
	add ecx, eax
	add edx, 0x1
	cmp edx, 0x4
	jnz R_SortGfxAabbTree_210
	test ecx, ecx
	jz R_SortGfxAabbTree_80
	mov esi, [ebp+0xc]
	cmp word [esi+0x1a], 0x1
	sbb ecx, 0xffffffff
	cmp ebx, 0x1
	sbb ecx, 0xffffffff
	mov dword [esp+0x4], 0x4
	lea eax, [ecx+ecx*4]
	lea eax, [ecx+eax*2]
	shl eax, 0x2
	mov [esp], eax
	call Hunk_AllocAlignInternal
	sub eax, esi
	mov [esi+0x28], eax
	cmp word [esi+0x1a], 0x0
	jz R_SortGfxAabbTree_220
	movzx ecx, word [esi+0x18]
	mov ebx, esi
	add ebx, eax
	movzx eax, cx
	lea edx, [eax+eax*4]
	lea edx, [eax+edx*2]
	lea edx, [ebx+edx*4]
	add ecx, 0x1
	mov [esi+0x18], cx
	mov eax, [esi]
	mov [edx], eax
	mov eax, [esi+0x4]
	mov [edx+0x4], eax
	mov eax, [esi+0x8]
	mov [edx+0x8], eax
	lea ebx, [edx+0xc]
	mov ecx, esi
	add ecx, 0xc
	mov eax, [esi+0xc]
	mov [edx+0xc], eax
	mov eax, [ecx+0x4]
	mov [ebx+0x4], eax
	mov eax, [ecx+0x8]
	mov [ebx+0x8], eax
	movzx eax, word [esi+0x1c]
	mov [edx+0x1c], ax
	movzx eax, word [esi+0x1a]
	mov [edx+0x1a], ax
	movzx eax, word [esi+0x20]
	mov [edx+0x20], ax
	movzx eax, word [esi+0x1e]
	mov [edx+0x1e], ax
R_SortGfxAabbTree_220:
	mov eax, [ebp+0xc]
	mov eax, [eax+0x24]
	mov [ebp-0x50], eax
	mov edx, [ebp+0xc]
	movzx edx, word [edx+0x22]
	mov [ebp-0x58], edx
	mov edi, 0x1
R_SortGfxAabbTree_240:
	mov esi, [ebp+edi*4-0x44]
	test esi, esi
	jnz R_SortGfxAabbTree_230
R_SortGfxAabbTree_270:
	add edi, 0x1
	cmp edi, 0x5
	jnz R_SortGfxAabbTree_240
	mov eax, [ebp-0x58]
	test eax, eax
	jz R_SortGfxAabbTree_80
	mov esi, [ebp+0xc]
	movzx ecx, word [esi+0x18]
	mov ebx, esi
	add ebx, [esi+0x28]
	movzx eax, cx
	lea edx, [eax+eax*4]
	lea edx, [eax+edx*2]
	lea edx, [ebx+edx*4]
	add ecx, 0x1
	mov [esi+0x18], cx
	movzx eax, word [ebp-0x58]
	mov [edx+0x22], ax
	mov ecx, [ebp-0x50]
	mov [edx+0x24], ecx
	mov [ebp+0xc], edx
	jmp R_SortGfxAabbTree_250
R_SortGfxAabbTree_230:
	mov eax, [ebp+0xc]
	movzx ecx, word [eax+0x18]
	mov ebx, eax
	add ebx, [eax+0x28]
	movzx eax, cx
	lea edx, [eax+eax*4]
	lea edx, [eax+edx*2]
	lea edx, [ebx+edx*4]
	add ecx, 0x1
	mov eax, [ebp+0xc]
	mov [eax+0x18], cx
	mov [edx+0x22], si
	mov ecx, [ebp-0x50]
	mov [edx+0x24], ecx
	mov [esp+0x4], edx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call R_SortGfxAabbTree_260
	mov edx, [ebp-0x50]
	lea edx, [edx+esi*2]
	mov [ebp-0x50], edx
	sub [ebp-0x58], esi
	jmp R_SortGfxAabbTree_270
R_SortGfxAabbTree_180:
	mov dword [ebp-0x60], 0x0
	jmp R_SortGfxAabbTree_280
R_SortGfxAabbTree_70:
	mov esi, ecx
	movzx eax, word [esi+0x22]
	cmp ax, 0x7
	ja R_SortGfxAabbTree_290
R_SortGfxAabbTree_80:
	add esp, 0x8c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_SortGfxAabbTree_150:
	mov dword [ebp-0x64], 0x0
	xor eax, eax
	mov ecx, [ebp-0x64]
	jmp R_SortGfxAabbTree_300
R_SortGfxAabbTree_120:
	mov dword [ebp-0x68], 0x0
	xor eax, eax
	mov ecx, [ebp-0x68]
	jmp R_SortGfxAabbTree_310
R_SortGfxAabbTree_90:
	mov dword [ebp-0x6c], 0x0
	xor eax, eax
	mov ecx, [ebp-0x6c]
	jmp R_SortGfxAabbTree_320
R_SortGfxAabbTree_10:
	mov eax, ecx
	add eax, [ecx+0x28]
	cmp word [ecx+0x18], 0x0
	jz R_SortGfxAabbTree_80
	mov ebx, eax
	xor esi, esi
R_SortGfxAabbTree_330:
	mov [esp+0x4], ebx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call R_SortGfxAabbTree_260
	add esi, 0x1
	add ebx, 0x2c
	mov edx, [ebp+0xc]
	movzx eax, word [edx+0x18]
	cmp eax, esi
	jg R_SortGfxAabbTree_330
	jmp R_SortGfxAabbTree_80
	nop


;R_AllocStaticModels(GfxAabbTree*)
R_AllocStaticModels:
R_AllocStaticModels_190:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov edx, [ebp+0x8]
	movzx eax, word [edx+0x22]
	test ax, ax
	jz R_AllocStaticModels_10
	mov dword [esp+0x4], 0x4
	movzx eax, ax
	add eax, eax
	mov [esp], eax
	call Hunk_AllocAlignInternal
	mov ebx, eax
	mov ecx, [ebp+0x8]
	movzx eax, word [ecx+0x22]
	add eax, eax
	mov edx, [ecx+0x24]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov [esp], ebx
	call memcpy
	mov eax, [ebp+0x8]
	mov [eax+0x24], ebx
R_AllocStaticModels_10:
	mov eax, [ebp+0x8]
	add eax, [eax+0x28]
	mov edx, [ebp+0x8]
	cmp word [edx+0x18], 0x0
	jz R_AllocStaticModels_20
	mov [ebp-0x20], eax
	mov dword [ebp-0x68], 0x0
R_AllocStaticModels_290:
	mov ecx, [ebp-0x20]
	movzx eax, word [ecx+0x22]
	test ax, ax
	jz R_AllocStaticModels_30
	mov dword [esp+0x4], 0x4
	movzx eax, ax
	add eax, eax
	mov [esp], eax
	call Hunk_AllocAlignInternal
	mov ebx, eax
	mov edx, [ebp-0x20]
	movzx eax, word [edx+0x22]
	add eax, eax
	mov edx, [edx+0x24]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov [esp], ebx
	call memcpy
	mov eax, [ebp-0x20]
	mov [eax+0x24], ebx
R_AllocStaticModels_30:
	mov eax, [ebp-0x20]
	add eax, [eax+0x28]
	mov edx, [ebp-0x20]
	add edx, 0x18
	mov [ebp-0x1c], edx
	mov ecx, [ebp-0x20]
	cmp word [ecx+0x18], 0x0
	jz R_AllocStaticModels_40
	mov [ebp-0x28], eax
	mov dword [ebp-0x64], 0x0
R_AllocStaticModels_280:
	mov edx, [ebp-0x28]
	movzx eax, word [edx+0x22]
	test ax, ax
	jz R_AllocStaticModels_50
	mov dword [esp+0x4], 0x4
	movzx eax, ax
	add eax, eax
	mov [esp], eax
	call Hunk_AllocAlignInternal
	mov ebx, eax
	mov ecx, [ebp-0x28]
	movzx eax, word [ecx+0x22]
	add eax, eax
	mov edx, [ecx+0x24]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov [esp], ebx
	call memcpy
	mov eax, [ebp-0x28]
	mov [eax+0x24], ebx
R_AllocStaticModels_50:
	mov eax, [ebp-0x28]
	add eax, [eax+0x28]
	mov edx, [ebp-0x28]
	add edx, 0x18
	mov [ebp-0x24], edx
	mov ecx, [ebp-0x28]
	cmp word [ecx+0x18], 0x0
	jz R_AllocStaticModels_60
	mov [ebp-0x30], eax
	mov dword [ebp-0x60], 0x0
R_AllocStaticModels_270:
	mov edx, [ebp-0x30]
	movzx eax, word [edx+0x22]
	test ax, ax
	jz R_AllocStaticModels_70
	mov dword [esp+0x4], 0x4
	movzx eax, ax
	add eax, eax
	mov [esp], eax
	call Hunk_AllocAlignInternal
	mov ebx, eax
	mov ecx, [ebp-0x30]
	movzx eax, word [ecx+0x22]
	add eax, eax
	mov edx, [ecx+0x24]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov [esp], ebx
	call memcpy
	mov eax, [ebp-0x30]
	mov [eax+0x24], ebx
R_AllocStaticModels_70:
	mov eax, [ebp-0x30]
	add eax, [eax+0x28]
	mov edx, [ebp-0x30]
	add edx, 0x18
	mov [ebp-0x2c], edx
	mov ecx, [ebp-0x30]
	cmp word [ecx+0x18], 0x0
	jz R_AllocStaticModels_80
	mov [ebp-0x38], eax
	mov dword [ebp-0x5c], 0x0
	mov edx, eax
	movzx eax, word [edx+0x22]
	test ax, ax
	jnz R_AllocStaticModels_90
R_AllocStaticModels_250:
	mov eax, edx
	mov ecx, edx
R_AllocStaticModels_260:
	add eax, [eax+0x28]
	mov edx, [ebp-0x38]
	add edx, 0x18
	mov [ebp-0x34], edx
	cmp word [ecx+0x18], 0x0
	jz R_AllocStaticModels_100
	mov [ebp-0x40], eax
	mov dword [ebp-0x58], 0x0
	mov edx, eax
	movzx eax, word [edx+0x22]
	test ax, ax
	jnz R_AllocStaticModels_110
R_AllocStaticModels_230:
	mov eax, edx
	mov ecx, edx
R_AllocStaticModels_240:
	add eax, [eax+0x28]
	mov edx, [ebp-0x40]
	add edx, 0x18
	mov [ebp-0x3c], edx
	cmp word [ecx+0x18], 0x0
	jz R_AllocStaticModels_120
	mov [ebp-0x48], eax
	mov dword [ebp-0x54], 0x0
	mov edx, eax
	movzx eax, word [edx+0x22]
	test ax, ax
	jnz R_AllocStaticModels_130
R_AllocStaticModels_210:
	mov eax, edx
	mov ecx, edx
R_AllocStaticModels_220:
	add eax, [eax+0x28]
	mov edx, [ebp-0x48]
	add edx, 0x18
	mov [ebp-0x44], edx
	cmp word [ecx+0x18], 0x0
	jz R_AllocStaticModels_140
	mov edi, eax
	mov dword [ebp-0x50], 0x0
	jmp R_AllocStaticModels_150
R_AllocStaticModels_170:
	mov eax, edi
	add eax, [edi+0x28]
	lea edx, [edi+0x18]
	mov [ebp-0x4c], edx
	cmp word [edi+0x18], 0x0
	jnz R_AllocStaticModels_160
R_AllocStaticModels_180:
	add dword [ebp-0x50], 0x1
	add edi, 0x2c
	mov edx, [ebp-0x44]
	movzx eax, word [edx]
	cmp [ebp-0x50], eax
	jge R_AllocStaticModels_140
R_AllocStaticModels_150:
	movzx eax, word [edi+0x22]
	test ax, ax
	jz R_AllocStaticModels_170
	mov dword [esp+0x4], 0x4
	movzx eax, ax
	add eax, eax
	mov [esp], eax
	call Hunk_AllocAlignInternal
	mov ebx, eax
	movzx eax, word [edi+0x22]
	add eax, eax
	mov edx, [edi+0x24]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov [esp], ebx
	call memcpy
	mov [edi+0x24], ebx
	mov eax, edi
	add eax, [edi+0x28]
	lea edx, [edi+0x18]
	mov [ebp-0x4c], edx
	cmp word [edi+0x18], 0x0
	jz R_AllocStaticModels_180
R_AllocStaticModels_160:
	mov ebx, eax
	xor esi, esi
R_AllocStaticModels_200:
	mov [esp], ebx
	call R_AllocStaticModels_190
	add esi, 0x1
	add ebx, 0x2c
	mov ecx, [ebp-0x4c]
	movzx eax, word [ecx]
	cmp esi, eax
	jl R_AllocStaticModels_200
	add dword [ebp-0x50], 0x1
	add edi, 0x2c
	mov edx, [ebp-0x44]
	movzx eax, word [edx]
	cmp [ebp-0x50], eax
	jl R_AllocStaticModels_150
R_AllocStaticModels_140:
	add dword [ebp-0x54], 0x1
	add dword [ebp-0x48], 0x2c
	mov ecx, [ebp-0x3c]
	movzx eax, word [ecx]
	cmp [ebp-0x54], eax
	jge R_AllocStaticModels_120
	mov edx, [ebp-0x48]
	movzx eax, word [edx+0x22]
	test ax, ax
	jz R_AllocStaticModels_210
R_AllocStaticModels_130:
	mov dword [esp+0x4], 0x4
	movzx eax, ax
	add eax, eax
	mov [esp], eax
	call Hunk_AllocAlignInternal
	mov ebx, eax
	mov ecx, [ebp-0x48]
	movzx eax, word [ecx+0x22]
	add eax, eax
	mov edx, [ecx+0x24]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov [esp], ebx
	call memcpy
	mov eax, [ebp-0x48]
	mov [eax+0x24], ebx
	mov eax, [ebp-0x48]
	mov ecx, [ebp-0x48]
	jmp R_AllocStaticModels_220
R_AllocStaticModels_120:
	add dword [ebp-0x58], 0x1
	add dword [ebp-0x40], 0x2c
	mov edx, [ebp-0x34]
	movzx eax, word [edx]
	cmp [ebp-0x58], eax
	jge R_AllocStaticModels_100
	mov edx, [ebp-0x40]
	movzx eax, word [edx+0x22]
	test ax, ax
	jz R_AllocStaticModels_230
R_AllocStaticModels_110:
	mov dword [esp+0x4], 0x4
	movzx eax, ax
	add eax, eax
	mov [esp], eax
	call Hunk_AllocAlignInternal
	mov ebx, eax
	mov ecx, [ebp-0x40]
	movzx eax, word [ecx+0x22]
	add eax, eax
	mov edx, [ecx+0x24]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov [esp], ebx
	call memcpy
	mov eax, [ebp-0x40]
	mov [eax+0x24], ebx
	mov eax, [ebp-0x40]
	mov ecx, [ebp-0x40]
	jmp R_AllocStaticModels_240
R_AllocStaticModels_100:
	add dword [ebp-0x5c], 0x1
	add dword [ebp-0x38], 0x2c
	mov ecx, [ebp-0x2c]
	movzx eax, word [ecx]
	cmp [ebp-0x5c], eax
	jge R_AllocStaticModels_80
	mov edx, [ebp-0x38]
	movzx eax, word [edx+0x22]
	test ax, ax
	jz R_AllocStaticModels_250
R_AllocStaticModels_90:
	mov dword [esp+0x4], 0x4
	movzx eax, ax
	add eax, eax
	mov [esp], eax
	call Hunk_AllocAlignInternal
	mov ebx, eax
	mov ecx, [ebp-0x38]
	movzx eax, word [ecx+0x22]
	add eax, eax
	mov edx, [ecx+0x24]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov [esp], ebx
	call memcpy
	mov eax, [ebp-0x38]
	mov [eax+0x24], ebx
	mov eax, [ebp-0x38]
	mov ecx, [ebp-0x38]
	jmp R_AllocStaticModels_260
R_AllocStaticModels_80:
	add dword [ebp-0x60], 0x1
	add dword [ebp-0x30], 0x2c
	mov edx, [ebp-0x24]
	movzx eax, word [edx]
	cmp eax, [ebp-0x60]
	jg R_AllocStaticModels_270
R_AllocStaticModels_60:
	add dword [ebp-0x64], 0x1
	add dword [ebp-0x28], 0x2c
	mov ecx, [ebp-0x1c]
	movzx eax, word [ecx]
	cmp [ebp-0x64], eax
	jl R_AllocStaticModels_280
R_AllocStaticModels_40:
	add dword [ebp-0x68], 0x1
	add dword [ebp-0x20], 0x2c
	mov edx, [ebp+0x8]
	movzx eax, word [edx+0x18]
	cmp [ebp-0x68], eax
	jl R_AllocStaticModels_290
R_AllocStaticModels_20:
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	add [eax], al


;R_CreateStaticModel(XModel*, float const*, float const (*) [3], float, GfxStaticModelDrawInst*, GfxStaticModelInst*, unsigned char)
R_CreateStaticModel:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov esi, [ebp+0xc]
	mov ebx, [ebp+0x1c]
	mov eax, [ebp+0x20]
	mov [ebp-0x20], eax
	mov ecx, [ebp+0x8]
	mov edx, [ebp+0x18]
	mov [edx+0x38], ecx
	mov edx, [ebp+0x18]
	add edx, 0x4
	mov eax, [esi]
	mov ecx, [ebp+0x18]
	mov [ecx+0x4], eax
	mov eax, [esi+0x4]
	mov [edx+0x4], eax
	mov eax, [esi+0x8]
	mov [edx+0x8], eax
	mov eax, ecx
	add eax, 0x10
	mov [esp+0x4], eax
	mov eax, [ebp+0x10]
	mov [esp], eax
	call Vec3PackNormAxis
	movss xmm0, dword [ebp+0x14]
	mov edx, [ebp+0x18]
	movss [edx+0x34], xmm0
	lea edi, [ebx+0xc]
	mov [esp+0xc], edi
	mov [esp+0x8], ebx
	mov eax, [ebp+0x10]
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov [esp], edx
	call R_GetXModelBounds
	movss xmm0, dword [ebp+0x14]
	mulss xmm0, [ebx]
	addss xmm0, [esi]
	movss [ebx], xmm0
	movss xmm0, dword [ebp+0x14]
	mulss xmm0, [ebx+0x4]
	addss xmm0, [esi+0x4]
	movss [ebx+0x4], xmm0
	movss xmm0, dword [ebp+0x14]
	mulss xmm0, [ebx+0x8]
	addss xmm0, [esi+0x8]
	movss [ebx+0x8], xmm0
	movss xmm0, dword [ebp+0x14]
	mulss xmm0, [ebx+0xc]
	addss xmm0, [esi]
	movss [ebx+0xc], xmm0
	movss xmm0, dword [ebp+0x14]
	mulss xmm0, [edi+0x4]
	addss xmm0, [esi+0x4]
	movss [edi+0x4], xmm0
	movss xmm0, dword [ebp+0x14]
	mulss xmm0, [edi+0x8]
	addss xmm0, [esi+0x8]
	movss [edi+0x8], xmm0
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call XModelGetLodOutDist
	fstp dword [ebp-0x1c]
	movss xmm0, dword [ebp+0x14]
	mulss xmm0, [ebp-0x1c]
	mov eax, [ebp+0x18]
	movss [eax], xmm0
	mov byte [eax+0x44], 0x0
	movzx edx, byte [ebp-0x20]
	mov [eax+0x48], dl
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;R_FilterStaticModelIntoCells_r(GfxWorld*, mnode_t*, GfxStaticModelInst*, float const*, float const*)
R_FilterStaticModelIntoCells_r:
R_FilterStaticModelIntoCells_r_90:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov edi, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov edx, [ebp+0x14]
	mov ecx, [ebp+0x18]
	mov eax, [edx]
	mov [ebp-0x24], eax
	mov eax, [edx+0x4]
	mov [ebp-0x20], eax
	mov eax, [edx+0x8]
	mov [ebp-0x1c], eax
	mov eax, [ecx]
	mov [ebp-0x30], eax
	mov eax, [ecx+0x4]
	mov [ebp-0x2c], eax
	mov eax, [ecx+0x8]
	mov [ebp-0x28], eax
R_FilterStaticModelIntoCells_r_80:
	movzx edx, word [esi]
	movzx ebx, dx
	mov eax, ebx
	sub eax, [edi+0xf0]
	sub eax, 0x1
	js R_FilterStaticModelIntoCells_r_10
R_FilterStaticModelIntoCells_r_30:
	lea edx, [eax+eax*4]
	mov eax, [edi+0xf4]
	lea ebx, [eax+edx*4]
	mov [esp+0x8], ebx
	lea eax, [ebp-0x30]
	mov [esp+0x4], eax
	lea eax, [ebp-0x24]
	mov [esp], eax
	call BoxOnPlaneSide
	cmp eax, 0x3
	jz R_FilterStaticModelIntoCells_r_20
	lea edx, [eax-0x1]
	movzx eax, word [esi+0x2]
	lea eax, [eax+eax-0x4]
	imul edx, eax
	lea esi, [edx+esi+0x4]
	movzx edx, word [esi]
	movzx ebx, dx
	mov eax, ebx
	sub eax, [edi+0xf0]
	sub eax, 0x1
	jns R_FilterStaticModelIntoCells_r_30
R_FilterStaticModelIntoCells_r_10:
	test dx, dx
	jz R_FilterStaticModelIntoCells_r_40
	mov ecx, [ebp+0x10]
	sub ecx, [edi+0x290]
	sar ecx, 0x2
	lea eax, [ecx+ecx*8]
	mov edx, eax
	shl edx, 0x6
	add eax, edx
	lea eax, [ecx+eax*8]
	mov edx, eax
	shl edx, 0xf
	add eax, edx
	lea esi, [ecx+eax*8]
	neg esi
	lea eax, [ebx-0x1]
	mov ecx, [edi+0x104]
	lea edx, [eax*8]
	shl eax, 0x6
	sub eax, edx
	mov ebx, [eax+ecx+0x1c]
	movzx eax, word [ebx+0x22]
	test ax, ax
	jz R_FilterStaticModelIntoCells_r_50
	movzx eax, ax
	mov edx, [ebx+0x24]
	movzx eax, word [edx+eax*2-0x2]
	cmp esi, eax
	jz R_FilterStaticModelIntoCells_r_40
R_FilterStaticModelIntoCells_r_50:
	mov ecx, esi
	mov edx, ebx
	mov eax, edi
	call R_AddStaticModelToAabbTree_r
R_FilterStaticModelIntoCells_r_40:
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_FilterStaticModelIntoCells_r_20:
	movzx eax, word [esi+0x2]
	lea eax, [esi+eax*2]
	mov [ebp-0x4c], eax
	cmp byte [ebx+0x10], 0x2
	ja R_FilterStaticModelIntoCells_r_60
	movss xmm1, dword [ebx+0xc]
	mov eax, [ebp-0x24]
	mov [ebp-0x3c], eax
	mov eax, [ebp-0x20]
	mov [ebp-0x38], eax
	mov eax, [ebp-0x1c]
	mov [ebp-0x34], eax
	movzx eax, byte [ebx+0x10]
	movss [ebp+eax*4-0x3c], xmm1
	mov eax, [ebp-0x30]
	mov [ebp-0x48], eax
	mov eax, [ebp-0x2c]
	mov [ebp-0x44], eax
	mov eax, [ebp-0x28]
	mov [ebp-0x40], eax
	movzx eax, byte [ebx+0x10]
	movss [ebp+eax*4-0x48], xmm1
	movss xmm0, dword [ebp+eax*4-0x30]
	ucomiss xmm0, xmm1
	ja R_FilterStaticModelIntoCells_r_70
R_FilterStaticModelIntoCells_r_100:
	mov eax, [ebp-0x48]
	mov [ebp-0x30], eax
	mov eax, [ebp-0x44]
	mov [ebp-0x2c], eax
	mov eax, [ebp-0x40]
	mov [ebp-0x28], eax
	mov esi, [ebp-0x4c]
	jmp R_FilterStaticModelIntoCells_r_80
R_FilterStaticModelIntoCells_r_60:
	lea eax, [ebp-0x30]
	mov [esp+0x10], eax
	lea eax, [ebp-0x24]
	mov [esp+0xc], eax
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	lea eax, [esi+0x4]
	mov [esp+0x4], eax
	mov [esp], edi
	call R_FilterStaticModelIntoCells_r_90
	mov esi, [ebp-0x4c]
	jmp R_FilterStaticModelIntoCells_r_80
R_FilterStaticModelIntoCells_r_70:
	lea eax, [ebp-0x30]
	mov [esp+0x10], eax
	lea eax, [ebp-0x3c]
	mov [esp+0xc], eax
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	lea eax, [esi+0x4]
	mov [esp+0x4], eax
	mov [esp], edi
	call R_FilterStaticModelIntoCells_r_90
	jmp R_FilterStaticModelIntoCells_r_100


;R_SetStaticModelReflectionProbe(GfxWorld const*, GfxStaticModelInst const*, GfxStaticModelDrawInst*)
R_SetStaticModelReflectionProbe:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4
	mov eax, [ebp+0xc]
	lea edx, [eax+0xc]
	movss xmm5, dword [eax]
	addss xmm5, [eax+0xc]
	movss xmm0, dword [_float_0_50000000]
	mulss xmm5, xmm0
	movss xmm4, dword [eax+0x4]
	addss xmm4, [edx+0x4]
	mulss xmm4, xmm0
	movss xmm3, dword [eax+0x8]
	addss xmm3, [edx+0x8]
	mulss xmm3, xmm0
	mov eax, [ebp+0x8]
	mov ecx, [eax+0xf8]
	mov ebx, [eax+0xf0]
	add ebx, 0x1
	movzx eax, word [ecx]
	mov edx, eax
	sub edx, ebx
	js R_SetStaticModelReflectionProbe_10
	mov eax, [ebp+0x8]
	mov esi, [eax+0xf4]
	pxor xmm2, xmm2
R_SetStaticModelReflectionProbe_20:
	lea eax, [edx+edx*4]
	lea eax, [esi+eax*4]
	movaps xmm0, xmm5
	mulss xmm0, [eax]
	movaps xmm1, xmm4
	mulss xmm1, [eax+0x4]
	addss xmm0, xmm1
	movaps xmm1, xmm3
	mulss xmm1, [eax+0x8]
	addss xmm0, xmm1
	subss xmm0, [eax+0xc]
	xor edx, edx
	ucomiss xmm2, xmm0
	setae dl
	movzx eax, word [ecx+0x2]
	lea eax, [eax+eax-0x4]
	imul edx, eax
	add edx, ecx
	lea ecx, [edx+0x4]
	movzx eax, word [edx+0x4]
	mov edx, eax
	sub edx, ebx
	jns R_SetStaticModelReflectionProbe_20
R_SetStaticModelReflectionProbe_10:
	lea edx, [eax-0x1]
	cmp edx, 0xffffffff
	jz R_SetStaticModelReflectionProbe_30
	lea eax, [edx*8]
	shl edx, 0x6
	sub edx, eax
	mov eax, [ebp+0x8]
	add edx, [eax+0x104]
	movzx eax, byte [edx+0x30]
	movzx edi, al
	test al, al
	jz R_SetStaticModelReflectionProbe_40
	mov esi, [edx+0x34]
	mov eax, [ebp+0x8]
	mov ebx, [eax+0xe8]
	movss xmm6, dword [_float_34028234663852885_float_3]
	xor edx, edx
	mov byte [ebp-0xd], 0x0
R_SetStaticModelReflectionProbe_60:
	movzx ecx, byte [esi+edx]
	movzx eax, cl
	shl eax, 0x4
	lea eax, [ebx+eax]
	movaps xmm2, xmm5
	subss xmm2, [eax]
	movaps xmm0, xmm4
	subss xmm0, [eax+0x4]
	movaps xmm1, xmm3
	subss xmm1, [eax+0x8]
	mulss xmm2, xmm2
	mulss xmm0, xmm0
	addss xmm2, xmm0
	mulss xmm1, xmm1
	addss xmm2, xmm1
	ucomiss xmm6, xmm2
	jbe R_SetStaticModelReflectionProbe_50
	mov [ebp-0xd], cl
	movaps xmm6, xmm2
R_SetStaticModelReflectionProbe_50:
	add edx, 0x1
	cmp edi, edx
	ja R_SetStaticModelReflectionProbe_60
	movzx edx, byte [ebp-0xd]
	mov eax, [ebp+0x10]
	mov [eax+0x44], dl
	add esp, 0x4
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_SetStaticModelReflectionProbe_30:
	mov eax, [ebp+0x8]
	mov ecx, [eax+0xe4]
	cmp ecx, 0x1
	ja R_SetStaticModelReflectionProbe_70
R_SetStaticModelReflectionProbe_40:
	xor edx, edx
	mov eax, [ebp+0x10]
	mov [eax+0x44], dl
	add esp, 0x4
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_SetStaticModelReflectionProbe_70:
	mov ebx, [eax+0xe8]
	movss xmm6, dword [_float_34028234663852885_float_3]
	mov edx, 0x1
	xor esi, esi
	mov eax, 0x1
R_SetStaticModelReflectionProbe_90:
	shl eax, 0x4
	lea eax, [ebx+eax]
	movaps xmm2, xmm5
	subss xmm2, [eax]
	movaps xmm0, xmm4
	subss xmm0, [eax+0x4]
	movaps xmm1, xmm3
	subss xmm1, [eax+0x8]
	mulss xmm2, xmm2
	mulss xmm0, xmm0
	addss xmm2, xmm0
	mulss xmm1, xmm1
	addss xmm2, xmm1
	ucomiss xmm6, xmm2
	jbe R_SetStaticModelReflectionProbe_80
	mov esi, edx
	movaps xmm6, xmm2
R_SetStaticModelReflectionProbe_80:
	add dl, 0x1
	movzx eax, dl
	cmp eax, ecx
	jb R_SetStaticModelReflectionProbe_90
	mov eax, esi
	movzx edx, al
	mov eax, [ebp+0x10]
	mov [eax+0x44], dl
	add esp, 0x4
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Initialized global or static variables of r_staticmodel_load_obj:
SECTION .data


;Initialized constant data of r_staticmodel_load_obj:
SECTION .rdata


;Zero initialized global or static variables of r_staticmodel_load_obj:
SECTION .bss


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata
_float_0_50000000:		dd 0x3f000000	; 0.5
_float_34028234663852885_float_3:		dd 0x7f7fffff	; 3.40282e+38

