;Imports of r_staticmodel_load_obj:
	extern Hunk_AllocateTempMemory
	extern memcpy
	extern _Z23Hunk_AllocAlignInternalii
	extern qsort
	extern _Z16Vec3PackNormAxisPA3_KfPA3_f
	extern _Z17R_GetXModelBoundsP6XModelPA3_KfPfS4_
	extern _Z19XModelGetLodOutDistPK6XModel
	extern _Z14BoxOnPlaneSidePKfS0_PK8cplane_s

;Exports of r_staticmodel_load_obj:
	global _Z19CompareStaticModelsPKvS0_
	global _Z28R_AddStaticModelToAabbTree_rP8GfxWorldP11GfxAabbTreei
	global _Z17R_SortGfxAabbTreeP8GfxWorldP11GfxAabbTree
	global _Z19R_AllocStaticModelsP11GfxAabbTree
	global _Z19R_CreateStaticModelP6XModelPKfPA3_S1_fP22GfxStaticModelDrawInstP18GfxStaticModelInsth
	global _Z30R_FilterStaticModelIntoCells_rP8GfxWorldP7mnode_tP18GfxStaticModelInstPKfS6_
	global _Z31R_SetStaticModelReflectionProbePK8GfxWorldPK18GfxStaticModelInstP22GfxStaticModelDrawInst


SECTION .text


;CompareStaticModels(void const*, void const*)
_Z19CompareStaticModelsPKvS0_:
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
_Z28R_AddStaticModelToAabbTree_rP8GfxWorldP11GfxAabbTreei:
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
_Z28R_AddStaticModelToAabbTree_rP8GfxWorldP11GfxAabbTreei_170:
	movzx ecx, word [edi+0x22]
	movzx edx, cx
	lea eax, [edx-0x1]
	test eax, edx
	jnz _Z28R_AddStaticModelToAabbTree_rP8GfxWorldP11GfxAabbTreei_10
_Z28R_AddStaticModelToAabbTree_rP8GfxWorldP11GfxAabbTreei_130:
	test cx, cx
	jnz _Z28R_AddStaticModelToAabbTree_rP8GfxWorldP11GfxAabbTreei_20
	mov eax, 0x1
_Z28R_AddStaticModelToAabbTree_rP8GfxWorldP11GfxAabbTreei_180:
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
	jz _Z28R_AddStaticModelToAabbTree_rP8GfxWorldP11GfxAabbTreei_30
_Z28R_AddStaticModelToAabbTree_rP8GfxWorldP11GfxAabbTreei_140:
	mov edx, [ebp-0x2c]
	mov esi, [ebp-0x28]
	add edx, [esi+0x290]
	mov [ebp-0x24], edx
	movzx ebx, ax
	test ebx, ebx
	jle _Z28R_AddStaticModelToAabbTree_rP8GfxWorldP11GfxAabbTreei_40
	movss xmm1, dword [edx]
	mov ecx, [edi+0x28]
	mov [ebp-0x34], ecx
	lea edx, [edi+ecx]
	xor eax, eax
_Z28R_AddStaticModelToAabbTree_rP8GfxWorldP11GfxAabbTreei_70:
	movss xmm0, dword [edx]
	ucomiss xmm0, xmm1
	ja _Z28R_AddStaticModelToAabbTree_rP8GfxWorldP11GfxAabbTreei_50
	movss xmm0, dword [edx+0x4]
	mov esi, [ebp-0x24]
	ucomiss xmm0, [esi+0x4]
	ja _Z28R_AddStaticModelToAabbTree_rP8GfxWorldP11GfxAabbTreei_50
	movss xmm0, dword [edx+0x8]
	ucomiss xmm0, [esi+0x8]
	ja _Z28R_AddStaticModelToAabbTree_rP8GfxWorldP11GfxAabbTreei_50
	movss xmm0, dword [esi+0xc]
	ucomiss xmm0, [edx+0xc]
	ja _Z28R_AddStaticModelToAabbTree_rP8GfxWorldP11GfxAabbTreei_50
	movss xmm0, dword [esi+0x10]
	ucomiss xmm0, [edx+0x10]
	ja _Z28R_AddStaticModelToAabbTree_rP8GfxWorldP11GfxAabbTreei_50
	movss xmm0, dword [esi+0x14]
	ucomiss xmm0, [edx+0x14]
	jbe _Z28R_AddStaticModelToAabbTree_rP8GfxWorldP11GfxAabbTreei_60
_Z28R_AddStaticModelToAabbTree_rP8GfxWorldP11GfxAabbTreei_50:
	add eax, 0x1
	add edx, 0x2c
	cmp ebx, eax
	jnz _Z28R_AddStaticModelToAabbTree_rP8GfxWorldP11GfxAabbTreei_70
	mov edx, [ebp-0x34]
	lea eax, [edi+edx]
	cmp word [eax+0x1a], 0x0
	jz _Z28R_AddStaticModelToAabbTree_rP8GfxWorldP11GfxAabbTreei_80
	xor ecx, ecx
	mov edx, 0x2c
_Z28R_AddStaticModelToAabbTree_rP8GfxWorldP11GfxAabbTreei_90:
	add ecx, 0x1
	cmp ebx, ecx
	jz _Z28R_AddStaticModelToAabbTree_rP8GfxWorldP11GfxAabbTreei_40
	mov esi, [ebp-0x34]
	lea eax, [edi+esi]
	lea esi, [eax+edx]
	add edx, 0x2c
	cmp word [esi+0x1a], 0x0
	jnz _Z28R_AddStaticModelToAabbTree_rP8GfxWorldP11GfxAabbTreei_90
_Z28R_AddStaticModelToAabbTree_rP8GfxWorldP11GfxAabbTreei_190:
	mov edx, esi
	mov eax, [ebp-0x24]
	xor ecx, ecx
_Z28R_AddStaticModelToAabbTree_rP8GfxWorldP11GfxAabbTreei_120:
	movss xmm1, dword [eax]
	movss xmm0, dword [edx]
	ucomiss xmm0, xmm1
	jbe _Z28R_AddStaticModelToAabbTree_rP8GfxWorldP11GfxAabbTreei_100
	movss [edx], xmm1
_Z28R_AddStaticModelToAabbTree_rP8GfxWorldP11GfxAabbTreei_100:
	movss xmm0, dword [eax+0xc]
	ucomiss xmm0, [edx+0xc]
	jbe _Z28R_AddStaticModelToAabbTree_rP8GfxWorldP11GfxAabbTreei_110
	movss [edx+0xc], xmm0
_Z28R_AddStaticModelToAabbTree_rP8GfxWorldP11GfxAabbTreei_110:
	add ecx, 0x1
	add edx, 0x4
	add eax, 0x4
	cmp ecx, 0x3
	jnz _Z28R_AddStaticModelToAabbTree_rP8GfxWorldP11GfxAabbTreei_120
	mov edi, esi
	movzx ecx, word [edi+0x22]
	movzx edx, cx
	lea eax, [edx-0x1]
	test eax, edx
	jz _Z28R_AddStaticModelToAabbTree_rP8GfxWorldP11GfxAabbTreei_130
_Z28R_AddStaticModelToAabbTree_rP8GfxWorldP11GfxAabbTreei_10:
	mov eax, [edi+0x24]
	movzx edx, word [edi+0x22]
	movzx ecx, word [ebp-0x1a]
	mov [eax+edx*2], cx
	add word [edi+0x22], 0x1
	movzx eax, word [edi+0x18]
	test ax, ax
	jnz _Z28R_AddStaticModelToAabbTree_rP8GfxWorldP11GfxAabbTreei_140
_Z28R_AddStaticModelToAabbTree_rP8GfxWorldP11GfxAabbTreei_30:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z28R_AddStaticModelToAabbTree_rP8GfxWorldP11GfxAabbTreei_40:
	mov dword [esp+0x4], 0x4
	lea eax, [ebx+ebx*4]
	lea eax, [ebx+eax*2]
	lea eax, [eax*4+0x2c]
	mov [esp], eax
	call _Z23Hunk_AllocAlignInternalii
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
	jle _Z28R_AddStaticModelToAabbTree_rP8GfxWorldP11GfxAabbTreei_150
	mov ecx, [ebp-0x20]
	mov edx, ebx
	xor ebx, ebx
_Z28R_AddStaticModelToAabbTree_rP8GfxWorldP11GfxAabbTreei_160:
	mov eax, ecx
	add eax, [ecx+0x28]
	sub eax, edx
	mov [edx+0x28], eax
	add ebx, 0x1
	add ecx, 0x2c
	add edx, 0x2c
	cmp esi, ebx
	jg _Z28R_AddStaticModelToAabbTree_rP8GfxWorldP11GfxAabbTreei_160
_Z28R_AddStaticModelToAabbTree_rP8GfxWorldP11GfxAabbTreei_150:
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
	jmp _Z28R_AddStaticModelToAabbTree_rP8GfxWorldP11GfxAabbTreei_170
_Z28R_AddStaticModelToAabbTree_rP8GfxWorldP11GfxAabbTreei_20:
	lea eax, [edx+edx]
	jmp _Z28R_AddStaticModelToAabbTree_rP8GfxWorldP11GfxAabbTreei_180
_Z28R_AddStaticModelToAabbTree_rP8GfxWorldP11GfxAabbTreei_80:
	mov esi, eax
	jmp _Z28R_AddStaticModelToAabbTree_rP8GfxWorldP11GfxAabbTreei_190
_Z28R_AddStaticModelToAabbTree_rP8GfxWorldP11GfxAabbTreei_60:
	mov edi, edx
	jmp _Z28R_AddStaticModelToAabbTree_rP8GfxWorldP11GfxAabbTreei_170


;R_SortGfxAabbTree(GfxWorld*, GfxAabbTree*)
_Z17R_SortGfxAabbTreeP8GfxWorldP11GfxAabbTree:
_Z17R_SortGfxAabbTreeP8GfxWorldP11GfxAabbTree_260:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x8c
	mov edx, [ebp+0xc]
_Z17R_SortGfxAabbTreeP8GfxWorldP11GfxAabbTree_250:
	mov dword [esp+0xc], _Z19CompareStaticModelsPKvS0_
	mov dword [esp+0x8], 0x2
	movzx eax, word [edx+0x22]
	mov [esp+0x4], eax
	mov eax, [edx+0x24]
	mov [esp], eax
	call qsort
	mov ecx, [ebp+0xc]
	cmp word [ecx+0x18], 0x0
	jnz _Z17R_SortGfxAabbTreeP8GfxWorldP11GfxAabbTree_10
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
	jle _Z17R_SortGfxAabbTreeP8GfxWorldP11GfxAabbTree_20
	mov esi, [ecx+0x24]
	mov [ebp-0x5c], esi
	mov eax, [ebp+0x8]
	mov eax, [eax+0x290]
	mov [ebp-0x78], eax
	xor esi, esi
_Z17R_SortGfxAabbTreeP8GfxWorldP11GfxAabbTree_60:
	mov edx, [ebp-0x5c]
	movzx eax, word [edx+esi*2]
	lea edx, [eax*4]
	shl eax, 0x5
	sub eax, edx
	mov edx, [ebp-0x78]
	add edx, eax
	mov ebx, 0x1
_Z17R_SortGfxAabbTreeP8GfxWorldP11GfxAabbTree_50:
	lea ecx, [ebx*4]
	lea eax, [ebp-0x24]
	add eax, ecx
	movss xmm1, dword [edx]
	movss xmm0, dword [eax-0x4]
	ucomiss xmm0, xmm1
	jbe _Z17R_SortGfxAabbTreeP8GfxWorldP11GfxAabbTree_30
	movss [eax-0x4], xmm1
_Z17R_SortGfxAabbTreeP8GfxWorldP11GfxAabbTree_30:
	lea eax, [ebp-0x30]
	add eax, ecx
	movss xmm0, dword [edx+0xc]
	ucomiss xmm0, [eax-0x4]
	jbe _Z17R_SortGfxAabbTreeP8GfxWorldP11GfxAabbTree_40
	movss [eax-0x4], xmm0
_Z17R_SortGfxAabbTreeP8GfxWorldP11GfxAabbTree_40:
	add ebx, 0x1
	add edx, 0x4
	cmp ebx, 0x4
	jnz _Z17R_SortGfxAabbTreeP8GfxWorldP11GfxAabbTree_50
	add esi, 0x1
	cmp edi, esi
	jnz _Z17R_SortGfxAabbTreeP8GfxWorldP11GfxAabbTree_60
	mov ecx, [ebp+0xc]
_Z17R_SortGfxAabbTreeP8GfxWorldP11GfxAabbTree_20:
	cmp word [ecx+0x1a], 0x0
	jnz _Z17R_SortGfxAabbTreeP8GfxWorldP11GfxAabbTree_70
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
	jbe _Z17R_SortGfxAabbTreeP8GfxWorldP11GfxAabbTree_80
_Z17R_SortGfxAabbTreeP8GfxWorldP11GfxAabbTree_290:
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
	jle _Z17R_SortGfxAabbTreeP8GfxWorldP11GfxAabbTree_90
	xor esi, esi
	mov dword [ebp-0x6c], 0x0
	mov ebx, edx
	mov [ebp-0x88], edx
_Z17R_SortGfxAabbTreeP8GfxWorldP11GfxAabbTree_110:
	movzx ecx, word [ebx]
	lea eax, [ecx*4]
	mov edx, ecx
	shl edx, 0x5
	sub edx, eax
	mov eax, [ebp+0x8]
	add edx, [eax+0x290]
	ucomiss xmm2, [edx]
	ja _Z17R_SortGfxAabbTreeP8GfxWorldP11GfxAabbTree_100
	ucomiss xmm3, [edx+0x4]
	ja _Z17R_SortGfxAabbTreeP8GfxWorldP11GfxAabbTree_100
	ucomiss xmm4, [edx+0x8]
	ja _Z17R_SortGfxAabbTreeP8GfxWorldP11GfxAabbTree_100
	movss xmm0, dword [edx+0xc]
	ucomiss xmm0, xmm1
	ja _Z17R_SortGfxAabbTreeP8GfxWorldP11GfxAabbTree_100
	movss xmm0, dword [edx+0x10]
	ucomiss xmm0, xmm7
	ja _Z17R_SortGfxAabbTreeP8GfxWorldP11GfxAabbTree_100
	movss xmm0, dword [edx+0x14]
	ucomiss xmm0, [ebp-0x70]
	ja _Z17R_SortGfxAabbTreeP8GfxWorldP11GfxAabbTree_100
	mov edx, [ebp-0x88]
	movzx eax, word [edx]
	mov [edx], cx
	mov [ebx], ax
	add dword [ebp-0x6c], 0x1
	add edx, 0x2
	mov [ebp-0x88], edx
_Z17R_SortGfxAabbTreeP8GfxWorldP11GfxAabbTree_100:
	add esi, 0x1
	add ebx, 0x2
	cmp edi, esi
	jnz _Z17R_SortGfxAabbTreeP8GfxWorldP11GfxAabbTree_110
	cmp dword [ebp-0x6c], 0x1
	jle _Z17R_SortGfxAabbTreeP8GfxWorldP11GfxAabbTree_90
	mov eax, [ebp-0x6c]
	mov ecx, eax
_Z17R_SortGfxAabbTreeP8GfxWorldP11GfxAabbTree_320:
	mov [ebp-0x40], ecx
	mov esi, [ebp-0x74]
	lea eax, [esi+eax*2]
	mov [ebp-0x54], eax
	sub edi, ecx
	test edi, edi
	jle _Z17R_SortGfxAabbTreeP8GfxWorldP11GfxAabbTree_120
	xor esi, esi
	mov dword [ebp-0x68], 0x0
	mov ebx, eax
	mov [ebp-0x84], eax
_Z17R_SortGfxAabbTreeP8GfxWorldP11GfxAabbTree_140:
	movzx ecx, word [ebx]
	lea eax, [ecx*4]
	mov edx, ecx
	shl edx, 0x5
	sub edx, eax
	mov eax, [ebp+0x8]
	add edx, [eax+0x290]
	ucomiss xmm1, [edx]
	ja _Z17R_SortGfxAabbTreeP8GfxWorldP11GfxAabbTree_130
	ucomiss xmm3, [edx+0x4]
	ja _Z17R_SortGfxAabbTreeP8GfxWorldP11GfxAabbTree_130
	ucomiss xmm4, [edx+0x8]
	ja _Z17R_SortGfxAabbTreeP8GfxWorldP11GfxAabbTree_130
	movss xmm0, dword [edx+0xc]
	ucomiss xmm0, xmm6
	ja _Z17R_SortGfxAabbTreeP8GfxWorldP11GfxAabbTree_130
	movss xmm0, dword [edx+0x10]
	ucomiss xmm0, xmm7
	ja _Z17R_SortGfxAabbTreeP8GfxWorldP11GfxAabbTree_130
	movss xmm0, dword [edx+0x14]
	ucomiss xmm0, [ebp-0x70]
	ja _Z17R_SortGfxAabbTreeP8GfxWorldP11GfxAabbTree_130
	mov edx, [ebp-0x84]
	movzx eax, word [edx]
	mov [edx], cx
	mov [ebx], ax
	add dword [ebp-0x68], 0x1
	add edx, 0x2
	mov [ebp-0x84], edx
_Z17R_SortGfxAabbTreeP8GfxWorldP11GfxAabbTree_130:
	add esi, 0x1
	add ebx, 0x2
	cmp edi, esi
	jnz _Z17R_SortGfxAabbTreeP8GfxWorldP11GfxAabbTree_140
	cmp dword [ebp-0x68], 0x1
	jle _Z17R_SortGfxAabbTreeP8GfxWorldP11GfxAabbTree_120
	mov eax, [ebp-0x68]
	mov ecx, eax
_Z17R_SortGfxAabbTreeP8GfxWorldP11GfxAabbTree_310:
	mov [ebp-0x3c], ecx
	mov esi, [ebp-0x54]
	lea eax, [esi+eax*2]
	mov [ebp-0x4c], eax
	sub edi, ecx
	test edi, edi
	jle _Z17R_SortGfxAabbTreeP8GfxWorldP11GfxAabbTree_150
	xor esi, esi
	mov dword [ebp-0x64], 0x0
	mov ebx, eax
	mov [ebp-0x80], eax
_Z17R_SortGfxAabbTreeP8GfxWorldP11GfxAabbTree_170:
	movzx ecx, word [ebx]
	lea eax, [ecx*4]
	mov edx, ecx
	shl edx, 0x5
	sub edx, eax
	mov eax, [ebp+0x8]
	add edx, [eax+0x290]
	ucomiss xmm2, [edx]
	ja _Z17R_SortGfxAabbTreeP8GfxWorldP11GfxAabbTree_160
	ucomiss xmm3, [edx+0x4]
	ja _Z17R_SortGfxAabbTreeP8GfxWorldP11GfxAabbTree_160
	ucomiss xmm4, [edx+0x8]
	ja _Z17R_SortGfxAabbTreeP8GfxWorldP11GfxAabbTree_160
	movss xmm0, dword [edx+0xc]
	ucomiss xmm0, xmm6
	ja _Z17R_SortGfxAabbTreeP8GfxWorldP11GfxAabbTree_160
	movss xmm0, dword [edx+0x10]
	ucomiss xmm0, xmm5
	ja _Z17R_SortGfxAabbTreeP8GfxWorldP11GfxAabbTree_160
	movss xmm0, dword [edx+0x14]
	ucomiss xmm0, [ebp-0x70]
	ja _Z17R_SortGfxAabbTreeP8GfxWorldP11GfxAabbTree_160
	mov edx, [ebp-0x80]
	movzx eax, word [edx]
	mov [edx], cx
	mov [ebx], ax
	add dword [ebp-0x64], 0x1
	add edx, 0x2
	mov [ebp-0x80], edx
_Z17R_SortGfxAabbTreeP8GfxWorldP11GfxAabbTree_160:
	add esi, 0x1
	add ebx, 0x2
	cmp edi, esi
	jnz _Z17R_SortGfxAabbTreeP8GfxWorldP11GfxAabbTree_170
	cmp dword [ebp-0x64], 0x1
	jle _Z17R_SortGfxAabbTreeP8GfxWorldP11GfxAabbTree_150
	mov eax, [ebp-0x64]
	mov ecx, eax
_Z17R_SortGfxAabbTreeP8GfxWorldP11GfxAabbTree_300:
	mov [ebp-0x38], ecx
	mov esi, [ebp-0x4c]
	lea eax, [esi+eax*2]
	sub edi, ecx
	test edi, edi
	jle _Z17R_SortGfxAabbTreeP8GfxWorldP11GfxAabbTree_180
	xor esi, esi
	mov dword [ebp-0x60], 0x0
	mov ebx, eax
	mov [ebp-0x7c], eax
_Z17R_SortGfxAabbTreeP8GfxWorldP11GfxAabbTree_200:
	movzx ecx, word [ebx]
	lea eax, [ecx*4]
	mov edx, ecx
	shl edx, 0x5
	sub edx, eax
	mov eax, [ebp+0x8]
	add edx, [eax+0x290]
	ucomiss xmm2, [edx]
	ja _Z17R_SortGfxAabbTreeP8GfxWorldP11GfxAabbTree_190
	ucomiss xmm5, [edx+0x4]
	ja _Z17R_SortGfxAabbTreeP8GfxWorldP11GfxAabbTree_190
	ucomiss xmm4, [edx+0x8]
	ja _Z17R_SortGfxAabbTreeP8GfxWorldP11GfxAabbTree_190
	movss xmm0, dword [edx+0xc]
	ucomiss xmm0, xmm6
	ja _Z17R_SortGfxAabbTreeP8GfxWorldP11GfxAabbTree_190
	movss xmm0, dword [edx+0x10]
	ucomiss xmm0, xmm7
	ja _Z17R_SortGfxAabbTreeP8GfxWorldP11GfxAabbTree_190
	movss xmm0, dword [edx+0x14]
	ucomiss xmm0, [ebp-0x70]
	ja _Z17R_SortGfxAabbTreeP8GfxWorldP11GfxAabbTree_190
	mov edx, [ebp-0x7c]
	movzx eax, word [edx]
	mov [edx], cx
	mov [ebx], ax
	add dword [ebp-0x60], 0x1
	add edx, 0x2
	mov [ebp-0x7c], edx
_Z17R_SortGfxAabbTreeP8GfxWorldP11GfxAabbTree_190:
	add esi, 0x1
	add ebx, 0x2
	cmp edi, esi
	jnz _Z17R_SortGfxAabbTreeP8GfxWorldP11GfxAabbTree_200
	cmp dword [ebp-0x60], 0x1
	jle _Z17R_SortGfxAabbTreeP8GfxWorldP11GfxAabbTree_180
_Z17R_SortGfxAabbTreeP8GfxWorldP11GfxAabbTree_280:
	mov ecx, [ebp-0x60]
	mov [ebp-0x34], ecx
	mov ebx, edi
	sub ebx, ecx
	xor ecx, ecx
	xor edx, edx
_Z17R_SortGfxAabbTreeP8GfxWorldP11GfxAabbTree_210:
	xor eax, eax
	cmp dword [ebp+edx*4-0x40], 0x0
	setnz al
	add ecx, eax
	add edx, 0x1
	cmp edx, 0x4
	jnz _Z17R_SortGfxAabbTreeP8GfxWorldP11GfxAabbTree_210
	test ecx, ecx
	jz _Z17R_SortGfxAabbTreeP8GfxWorldP11GfxAabbTree_80
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
	call _Z23Hunk_AllocAlignInternalii
	sub eax, esi
	mov [esi+0x28], eax
	cmp word [esi+0x1a], 0x0
	jz _Z17R_SortGfxAabbTreeP8GfxWorldP11GfxAabbTree_220
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
_Z17R_SortGfxAabbTreeP8GfxWorldP11GfxAabbTree_220:
	mov eax, [ebp+0xc]
	mov eax, [eax+0x24]
	mov [ebp-0x50], eax
	mov edx, [ebp+0xc]
	movzx edx, word [edx+0x22]
	mov [ebp-0x58], edx
	mov edi, 0x1
_Z17R_SortGfxAabbTreeP8GfxWorldP11GfxAabbTree_240:
	mov esi, [ebp+edi*4-0x44]
	test esi, esi
	jnz _Z17R_SortGfxAabbTreeP8GfxWorldP11GfxAabbTree_230
_Z17R_SortGfxAabbTreeP8GfxWorldP11GfxAabbTree_270:
	add edi, 0x1
	cmp edi, 0x5
	jnz _Z17R_SortGfxAabbTreeP8GfxWorldP11GfxAabbTree_240
	mov eax, [ebp-0x58]
	test eax, eax
	jz _Z17R_SortGfxAabbTreeP8GfxWorldP11GfxAabbTree_80
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
	jmp _Z17R_SortGfxAabbTreeP8GfxWorldP11GfxAabbTree_250
_Z17R_SortGfxAabbTreeP8GfxWorldP11GfxAabbTree_230:
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
	call _Z17R_SortGfxAabbTreeP8GfxWorldP11GfxAabbTree_260
	mov edx, [ebp-0x50]
	lea edx, [edx+esi*2]
	mov [ebp-0x50], edx
	sub [ebp-0x58], esi
	jmp _Z17R_SortGfxAabbTreeP8GfxWorldP11GfxAabbTree_270
_Z17R_SortGfxAabbTreeP8GfxWorldP11GfxAabbTree_180:
	mov dword [ebp-0x60], 0x0
	jmp _Z17R_SortGfxAabbTreeP8GfxWorldP11GfxAabbTree_280
_Z17R_SortGfxAabbTreeP8GfxWorldP11GfxAabbTree_70:
	mov esi, ecx
	movzx eax, word [esi+0x22]
	cmp ax, 0x7
	ja _Z17R_SortGfxAabbTreeP8GfxWorldP11GfxAabbTree_290
_Z17R_SortGfxAabbTreeP8GfxWorldP11GfxAabbTree_80:
	add esp, 0x8c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z17R_SortGfxAabbTreeP8GfxWorldP11GfxAabbTree_150:
	mov dword [ebp-0x64], 0x0
	xor eax, eax
	mov ecx, [ebp-0x64]
	jmp _Z17R_SortGfxAabbTreeP8GfxWorldP11GfxAabbTree_300
_Z17R_SortGfxAabbTreeP8GfxWorldP11GfxAabbTree_120:
	mov dword [ebp-0x68], 0x0
	xor eax, eax
	mov ecx, [ebp-0x68]
	jmp _Z17R_SortGfxAabbTreeP8GfxWorldP11GfxAabbTree_310
_Z17R_SortGfxAabbTreeP8GfxWorldP11GfxAabbTree_90:
	mov dword [ebp-0x6c], 0x0
	xor eax, eax
	mov ecx, [ebp-0x6c]
	jmp _Z17R_SortGfxAabbTreeP8GfxWorldP11GfxAabbTree_320
_Z17R_SortGfxAabbTreeP8GfxWorldP11GfxAabbTree_10:
	mov eax, ecx
	add eax, [ecx+0x28]
	cmp word [ecx+0x18], 0x0
	jz _Z17R_SortGfxAabbTreeP8GfxWorldP11GfxAabbTree_80
	mov ebx, eax
	xor esi, esi
_Z17R_SortGfxAabbTreeP8GfxWorldP11GfxAabbTree_330:
	mov [esp+0x4], ebx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z17R_SortGfxAabbTreeP8GfxWorldP11GfxAabbTree_260
	add esi, 0x1
	add ebx, 0x2c
	mov edx, [ebp+0xc]
	movzx eax, word [edx+0x18]
	cmp eax, esi
	jg _Z17R_SortGfxAabbTreeP8GfxWorldP11GfxAabbTree_330
	jmp _Z17R_SortGfxAabbTreeP8GfxWorldP11GfxAabbTree_80
	nop


;R_AllocStaticModels(GfxAabbTree*)
_Z19R_AllocStaticModelsP11GfxAabbTree:
_Z19R_AllocStaticModelsP11GfxAabbTree_190:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov edx, [ebp+0x8]
	movzx eax, word [edx+0x22]
	test ax, ax
	jz _Z19R_AllocStaticModelsP11GfxAabbTree_10
	mov dword [esp+0x4], 0x4
	movzx eax, ax
	add eax, eax
	mov [esp], eax
	call _Z23Hunk_AllocAlignInternalii
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
_Z19R_AllocStaticModelsP11GfxAabbTree_10:
	mov eax, [ebp+0x8]
	add eax, [eax+0x28]
	mov edx, [ebp+0x8]
	cmp word [edx+0x18], 0x0
	jz _Z19R_AllocStaticModelsP11GfxAabbTree_20
	mov [ebp-0x20], eax
	mov dword [ebp-0x68], 0x0
_Z19R_AllocStaticModelsP11GfxAabbTree_290:
	mov ecx, [ebp-0x20]
	movzx eax, word [ecx+0x22]
	test ax, ax
	jz _Z19R_AllocStaticModelsP11GfxAabbTree_30
	mov dword [esp+0x4], 0x4
	movzx eax, ax
	add eax, eax
	mov [esp], eax
	call _Z23Hunk_AllocAlignInternalii
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
_Z19R_AllocStaticModelsP11GfxAabbTree_30:
	mov eax, [ebp-0x20]
	add eax, [eax+0x28]
	mov edx, [ebp-0x20]
	add edx, 0x18
	mov [ebp-0x1c], edx
	mov ecx, [ebp-0x20]
	cmp word [ecx+0x18], 0x0
	jz _Z19R_AllocStaticModelsP11GfxAabbTree_40
	mov [ebp-0x28], eax
	mov dword [ebp-0x64], 0x0
_Z19R_AllocStaticModelsP11GfxAabbTree_280:
	mov edx, [ebp-0x28]
	movzx eax, word [edx+0x22]
	test ax, ax
	jz _Z19R_AllocStaticModelsP11GfxAabbTree_50
	mov dword [esp+0x4], 0x4
	movzx eax, ax
	add eax, eax
	mov [esp], eax
	call _Z23Hunk_AllocAlignInternalii
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
_Z19R_AllocStaticModelsP11GfxAabbTree_50:
	mov eax, [ebp-0x28]
	add eax, [eax+0x28]
	mov edx, [ebp-0x28]
	add edx, 0x18
	mov [ebp-0x24], edx
	mov ecx, [ebp-0x28]
	cmp word [ecx+0x18], 0x0
	jz _Z19R_AllocStaticModelsP11GfxAabbTree_60
	mov [ebp-0x30], eax
	mov dword [ebp-0x60], 0x0
_Z19R_AllocStaticModelsP11GfxAabbTree_270:
	mov edx, [ebp-0x30]
	movzx eax, word [edx+0x22]
	test ax, ax
	jz _Z19R_AllocStaticModelsP11GfxAabbTree_70
	mov dword [esp+0x4], 0x4
	movzx eax, ax
	add eax, eax
	mov [esp], eax
	call _Z23Hunk_AllocAlignInternalii
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
_Z19R_AllocStaticModelsP11GfxAabbTree_70:
	mov eax, [ebp-0x30]
	add eax, [eax+0x28]
	mov edx, [ebp-0x30]
	add edx, 0x18
	mov [ebp-0x2c], edx
	mov ecx, [ebp-0x30]
	cmp word [ecx+0x18], 0x0
	jz _Z19R_AllocStaticModelsP11GfxAabbTree_80
	mov [ebp-0x38], eax
	mov dword [ebp-0x5c], 0x0
	mov edx, eax
	movzx eax, word [edx+0x22]
	test ax, ax
	jnz _Z19R_AllocStaticModelsP11GfxAabbTree_90
_Z19R_AllocStaticModelsP11GfxAabbTree_250:
	mov eax, edx
	mov ecx, edx
_Z19R_AllocStaticModelsP11GfxAabbTree_260:
	add eax, [eax+0x28]
	mov edx, [ebp-0x38]
	add edx, 0x18
	mov [ebp-0x34], edx
	cmp word [ecx+0x18], 0x0
	jz _Z19R_AllocStaticModelsP11GfxAabbTree_100
	mov [ebp-0x40], eax
	mov dword [ebp-0x58], 0x0
	mov edx, eax
	movzx eax, word [edx+0x22]
	test ax, ax
	jnz _Z19R_AllocStaticModelsP11GfxAabbTree_110
_Z19R_AllocStaticModelsP11GfxAabbTree_230:
	mov eax, edx
	mov ecx, edx
_Z19R_AllocStaticModelsP11GfxAabbTree_240:
	add eax, [eax+0x28]
	mov edx, [ebp-0x40]
	add edx, 0x18
	mov [ebp-0x3c], edx
	cmp word [ecx+0x18], 0x0
	jz _Z19R_AllocStaticModelsP11GfxAabbTree_120
	mov [ebp-0x48], eax
	mov dword [ebp-0x54], 0x0
	mov edx, eax
	movzx eax, word [edx+0x22]
	test ax, ax
	jnz _Z19R_AllocStaticModelsP11GfxAabbTree_130
_Z19R_AllocStaticModelsP11GfxAabbTree_210:
	mov eax, edx
	mov ecx, edx
_Z19R_AllocStaticModelsP11GfxAabbTree_220:
	add eax, [eax+0x28]
	mov edx, [ebp-0x48]
	add edx, 0x18
	mov [ebp-0x44], edx
	cmp word [ecx+0x18], 0x0
	jz _Z19R_AllocStaticModelsP11GfxAabbTree_140
	mov edi, eax
	mov dword [ebp-0x50], 0x0
	jmp _Z19R_AllocStaticModelsP11GfxAabbTree_150
_Z19R_AllocStaticModelsP11GfxAabbTree_170:
	mov eax, edi
	add eax, [edi+0x28]
	lea edx, [edi+0x18]
	mov [ebp-0x4c], edx
	cmp word [edi+0x18], 0x0
	jnz _Z19R_AllocStaticModelsP11GfxAabbTree_160
_Z19R_AllocStaticModelsP11GfxAabbTree_180:
	add dword [ebp-0x50], 0x1
	add edi, 0x2c
	mov edx, [ebp-0x44]
	movzx eax, word [edx]
	cmp [ebp-0x50], eax
	jge _Z19R_AllocStaticModelsP11GfxAabbTree_140
_Z19R_AllocStaticModelsP11GfxAabbTree_150:
	movzx eax, word [edi+0x22]
	test ax, ax
	jz _Z19R_AllocStaticModelsP11GfxAabbTree_170
	mov dword [esp+0x4], 0x4
	movzx eax, ax
	add eax, eax
	mov [esp], eax
	call _Z23Hunk_AllocAlignInternalii
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
	jz _Z19R_AllocStaticModelsP11GfxAabbTree_180
_Z19R_AllocStaticModelsP11GfxAabbTree_160:
	mov ebx, eax
	xor esi, esi
_Z19R_AllocStaticModelsP11GfxAabbTree_200:
	mov [esp], ebx
	call _Z19R_AllocStaticModelsP11GfxAabbTree_190
	add esi, 0x1
	add ebx, 0x2c
	mov ecx, [ebp-0x4c]
	movzx eax, word [ecx]
	cmp esi, eax
	jl _Z19R_AllocStaticModelsP11GfxAabbTree_200
	add dword [ebp-0x50], 0x1
	add edi, 0x2c
	mov edx, [ebp-0x44]
	movzx eax, word [edx]
	cmp [ebp-0x50], eax
	jl _Z19R_AllocStaticModelsP11GfxAabbTree_150
_Z19R_AllocStaticModelsP11GfxAabbTree_140:
	add dword [ebp-0x54], 0x1
	add dword [ebp-0x48], 0x2c
	mov ecx, [ebp-0x3c]
	movzx eax, word [ecx]
	cmp [ebp-0x54], eax
	jge _Z19R_AllocStaticModelsP11GfxAabbTree_120
	mov edx, [ebp-0x48]
	movzx eax, word [edx+0x22]
	test ax, ax
	jz _Z19R_AllocStaticModelsP11GfxAabbTree_210
_Z19R_AllocStaticModelsP11GfxAabbTree_130:
	mov dword [esp+0x4], 0x4
	movzx eax, ax
	add eax, eax
	mov [esp], eax
	call _Z23Hunk_AllocAlignInternalii
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
	jmp _Z19R_AllocStaticModelsP11GfxAabbTree_220
_Z19R_AllocStaticModelsP11GfxAabbTree_120:
	add dword [ebp-0x58], 0x1
	add dword [ebp-0x40], 0x2c
	mov edx, [ebp-0x34]
	movzx eax, word [edx]
	cmp [ebp-0x58], eax
	jge _Z19R_AllocStaticModelsP11GfxAabbTree_100
	mov edx, [ebp-0x40]
	movzx eax, word [edx+0x22]
	test ax, ax
	jz _Z19R_AllocStaticModelsP11GfxAabbTree_230
_Z19R_AllocStaticModelsP11GfxAabbTree_110:
	mov dword [esp+0x4], 0x4
	movzx eax, ax
	add eax, eax
	mov [esp], eax
	call _Z23Hunk_AllocAlignInternalii
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
	jmp _Z19R_AllocStaticModelsP11GfxAabbTree_240
_Z19R_AllocStaticModelsP11GfxAabbTree_100:
	add dword [ebp-0x5c], 0x1
	add dword [ebp-0x38], 0x2c
	mov ecx, [ebp-0x2c]
	movzx eax, word [ecx]
	cmp [ebp-0x5c], eax
	jge _Z19R_AllocStaticModelsP11GfxAabbTree_80
	mov edx, [ebp-0x38]
	movzx eax, word [edx+0x22]
	test ax, ax
	jz _Z19R_AllocStaticModelsP11GfxAabbTree_250
_Z19R_AllocStaticModelsP11GfxAabbTree_90:
	mov dword [esp+0x4], 0x4
	movzx eax, ax
	add eax, eax
	mov [esp], eax
	call _Z23Hunk_AllocAlignInternalii
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
	jmp _Z19R_AllocStaticModelsP11GfxAabbTree_260
_Z19R_AllocStaticModelsP11GfxAabbTree_80:
	add dword [ebp-0x60], 0x1
	add dword [ebp-0x30], 0x2c
	mov edx, [ebp-0x24]
	movzx eax, word [edx]
	cmp eax, [ebp-0x60]
	jg _Z19R_AllocStaticModelsP11GfxAabbTree_270
_Z19R_AllocStaticModelsP11GfxAabbTree_60:
	add dword [ebp-0x64], 0x1
	add dword [ebp-0x28], 0x2c
	mov ecx, [ebp-0x1c]
	movzx eax, word [ecx]
	cmp [ebp-0x64], eax
	jl _Z19R_AllocStaticModelsP11GfxAabbTree_280
_Z19R_AllocStaticModelsP11GfxAabbTree_40:
	add dword [ebp-0x68], 0x1
	add dword [ebp-0x20], 0x2c
	mov edx, [ebp+0x8]
	movzx eax, word [edx+0x18]
	cmp [ebp-0x68], eax
	jl _Z19R_AllocStaticModelsP11GfxAabbTree_290
_Z19R_AllocStaticModelsP11GfxAabbTree_20:
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	add [eax], al


;R_CreateStaticModel(XModel*, float const*, float const (*) [3], float, GfxStaticModelDrawInst*, GfxStaticModelInst*, unsigned char)
_Z19R_CreateStaticModelP6XModelPKfPA3_S1_fP22GfxStaticModelDrawInstP18GfxStaticModelInsth:
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
	call _Z16Vec3PackNormAxisPA3_KfPA3_f
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
	call _Z17R_GetXModelBoundsP6XModelPA3_KfPfS4_
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
	call _Z19XModelGetLodOutDistPK6XModel
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
_Z30R_FilterStaticModelIntoCells_rP8GfxWorldP7mnode_tP18GfxStaticModelInstPKfS6_:
_Z30R_FilterStaticModelIntoCells_rP8GfxWorldP7mnode_tP18GfxStaticModelInstPKfS6__90:
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
_Z30R_FilterStaticModelIntoCells_rP8GfxWorldP7mnode_tP18GfxStaticModelInstPKfS6__80:
	movzx edx, word [esi]
	movzx ebx, dx
	mov eax, ebx
	sub eax, [edi+0xf0]
	sub eax, 0x1
	js _Z30R_FilterStaticModelIntoCells_rP8GfxWorldP7mnode_tP18GfxStaticModelInstPKfS6__10
_Z30R_FilterStaticModelIntoCells_rP8GfxWorldP7mnode_tP18GfxStaticModelInstPKfS6__30:
	lea edx, [eax+eax*4]
	mov eax, [edi+0xf4]
	lea ebx, [eax+edx*4]
	mov [esp+0x8], ebx
	lea eax, [ebp-0x30]
	mov [esp+0x4], eax
	lea eax, [ebp-0x24]
	mov [esp], eax
	call _Z14BoxOnPlaneSidePKfS0_PK8cplane_s
	cmp eax, 0x3
	jz _Z30R_FilterStaticModelIntoCells_rP8GfxWorldP7mnode_tP18GfxStaticModelInstPKfS6__20
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
	jns _Z30R_FilterStaticModelIntoCells_rP8GfxWorldP7mnode_tP18GfxStaticModelInstPKfS6__30
_Z30R_FilterStaticModelIntoCells_rP8GfxWorldP7mnode_tP18GfxStaticModelInstPKfS6__10:
	test dx, dx
	jz _Z30R_FilterStaticModelIntoCells_rP8GfxWorldP7mnode_tP18GfxStaticModelInstPKfS6__40
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
	jz _Z30R_FilterStaticModelIntoCells_rP8GfxWorldP7mnode_tP18GfxStaticModelInstPKfS6__50
	movzx eax, ax
	mov edx, [ebx+0x24]
	movzx eax, word [edx+eax*2-0x2]
	cmp esi, eax
	jz _Z30R_FilterStaticModelIntoCells_rP8GfxWorldP7mnode_tP18GfxStaticModelInstPKfS6__40
_Z30R_FilterStaticModelIntoCells_rP8GfxWorldP7mnode_tP18GfxStaticModelInstPKfS6__50:
	mov ecx, esi
	mov edx, ebx
	mov eax, edi
	call _Z28R_AddStaticModelToAabbTree_rP8GfxWorldP11GfxAabbTreei
_Z30R_FilterStaticModelIntoCells_rP8GfxWorldP7mnode_tP18GfxStaticModelInstPKfS6__40:
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z30R_FilterStaticModelIntoCells_rP8GfxWorldP7mnode_tP18GfxStaticModelInstPKfS6__20:
	movzx eax, word [esi+0x2]
	lea eax, [esi+eax*2]
	mov [ebp-0x4c], eax
	cmp byte [ebx+0x10], 0x2
	ja _Z30R_FilterStaticModelIntoCells_rP8GfxWorldP7mnode_tP18GfxStaticModelInstPKfS6__60
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
	ja _Z30R_FilterStaticModelIntoCells_rP8GfxWorldP7mnode_tP18GfxStaticModelInstPKfS6__70
_Z30R_FilterStaticModelIntoCells_rP8GfxWorldP7mnode_tP18GfxStaticModelInstPKfS6__100:
	mov eax, [ebp-0x48]
	mov [ebp-0x30], eax
	mov eax, [ebp-0x44]
	mov [ebp-0x2c], eax
	mov eax, [ebp-0x40]
	mov [ebp-0x28], eax
	mov esi, [ebp-0x4c]
	jmp _Z30R_FilterStaticModelIntoCells_rP8GfxWorldP7mnode_tP18GfxStaticModelInstPKfS6__80
_Z30R_FilterStaticModelIntoCells_rP8GfxWorldP7mnode_tP18GfxStaticModelInstPKfS6__60:
	lea eax, [ebp-0x30]
	mov [esp+0x10], eax
	lea eax, [ebp-0x24]
	mov [esp+0xc], eax
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	lea eax, [esi+0x4]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z30R_FilterStaticModelIntoCells_rP8GfxWorldP7mnode_tP18GfxStaticModelInstPKfS6__90
	mov esi, [ebp-0x4c]
	jmp _Z30R_FilterStaticModelIntoCells_rP8GfxWorldP7mnode_tP18GfxStaticModelInstPKfS6__80
_Z30R_FilterStaticModelIntoCells_rP8GfxWorldP7mnode_tP18GfxStaticModelInstPKfS6__70:
	lea eax, [ebp-0x30]
	mov [esp+0x10], eax
	lea eax, [ebp-0x3c]
	mov [esp+0xc], eax
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	lea eax, [esi+0x4]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z30R_FilterStaticModelIntoCells_rP8GfxWorldP7mnode_tP18GfxStaticModelInstPKfS6__90
	jmp _Z30R_FilterStaticModelIntoCells_rP8GfxWorldP7mnode_tP18GfxStaticModelInstPKfS6__100


;R_SetStaticModelReflectionProbe(GfxWorld const*, GfxStaticModelInst const*, GfxStaticModelDrawInst*)
_Z31R_SetStaticModelReflectionProbePK8GfxWorldPK18GfxStaticModelInstP22GfxStaticModelDrawInst:
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
	js _Z31R_SetStaticModelReflectionProbePK8GfxWorldPK18GfxStaticModelInstP22GfxStaticModelDrawInst_10
	mov eax, [ebp+0x8]
	mov esi, [eax+0xf4]
	pxor xmm2, xmm2
_Z31R_SetStaticModelReflectionProbePK8GfxWorldPK18GfxStaticModelInstP22GfxStaticModelDrawInst_20:
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
	jns _Z31R_SetStaticModelReflectionProbePK8GfxWorldPK18GfxStaticModelInstP22GfxStaticModelDrawInst_20
_Z31R_SetStaticModelReflectionProbePK8GfxWorldPK18GfxStaticModelInstP22GfxStaticModelDrawInst_10:
	lea edx, [eax-0x1]
	cmp edx, 0xffffffff
	jz _Z31R_SetStaticModelReflectionProbePK8GfxWorldPK18GfxStaticModelInstP22GfxStaticModelDrawInst_30
	lea eax, [edx*8]
	shl edx, 0x6
	sub edx, eax
	mov eax, [ebp+0x8]
	add edx, [eax+0x104]
	movzx eax, byte [edx+0x30]
	movzx edi, al
	test al, al
	jz _Z31R_SetStaticModelReflectionProbePK8GfxWorldPK18GfxStaticModelInstP22GfxStaticModelDrawInst_40
	mov esi, [edx+0x34]
	mov eax, [ebp+0x8]
	mov ebx, [eax+0xe8]
	movss xmm6, dword [_float_3402823466385288598117041]
	xor edx, edx
	mov byte [ebp-0xd], 0x0
_Z31R_SetStaticModelReflectionProbePK8GfxWorldPK18GfxStaticModelInstP22GfxStaticModelDrawInst_60:
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
	jbe _Z31R_SetStaticModelReflectionProbePK8GfxWorldPK18GfxStaticModelInstP22GfxStaticModelDrawInst_50
	mov [ebp-0xd], cl
	movaps xmm6, xmm2
_Z31R_SetStaticModelReflectionProbePK8GfxWorldPK18GfxStaticModelInstP22GfxStaticModelDrawInst_50:
	add edx, 0x1
	cmp edi, edx
	ja _Z31R_SetStaticModelReflectionProbePK8GfxWorldPK18GfxStaticModelInstP22GfxStaticModelDrawInst_60
	movzx edx, byte [ebp-0xd]
	mov eax, [ebp+0x10]
	mov [eax+0x44], dl
	add esp, 0x4
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z31R_SetStaticModelReflectionProbePK8GfxWorldPK18GfxStaticModelInstP22GfxStaticModelDrawInst_30:
	mov eax, [ebp+0x8]
	mov ecx, [eax+0xe4]
	cmp ecx, 0x1
	ja _Z31R_SetStaticModelReflectionProbePK8GfxWorldPK18GfxStaticModelInstP22GfxStaticModelDrawInst_70
_Z31R_SetStaticModelReflectionProbePK8GfxWorldPK18GfxStaticModelInstP22GfxStaticModelDrawInst_40:
	xor edx, edx
	mov eax, [ebp+0x10]
	mov [eax+0x44], dl
	add esp, 0x4
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z31R_SetStaticModelReflectionProbePK8GfxWorldPK18GfxStaticModelInstP22GfxStaticModelDrawInst_70:
	mov ebx, [eax+0xe8]
	movss xmm6, dword [_float_3402823466385288598117041]
	mov edx, 0x1
	xor esi, esi
	mov eax, 0x1
_Z31R_SetStaticModelReflectionProbePK8GfxWorldPK18GfxStaticModelInstP22GfxStaticModelDrawInst_90:
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
	jbe _Z31R_SetStaticModelReflectionProbePK8GfxWorldPK18GfxStaticModelInstP22GfxStaticModelDrawInst_80
	mov esi, edx
	movaps xmm6, xmm2
_Z31R_SetStaticModelReflectionProbePK8GfxWorldPK18GfxStaticModelInstP22GfxStaticModelDrawInst_80:
	add dl, 0x1
	movzx eax, dl
	cmp eax, ecx
	jb _Z31R_SetStaticModelReflectionProbePK8GfxWorldPK18GfxStaticModelInstP22GfxStaticModelDrawInst_90
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
_float_3402823466385288598117041:		dd 0x7f7fffff	; 3.40282e+38

