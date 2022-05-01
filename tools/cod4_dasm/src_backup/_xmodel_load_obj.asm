;Imports of xmodel_load_obj:
	extern _Z22Com_IsLegacyXModelNamePKc
	extern _Z11Com_sprintfPciPKcz
	extern FS_ReadFile
	extern _Z14Com_PrintErroriPKcz
	extern FS_FreeFile
	extern strcpy
	extern _Z19XModelPartsFindDataPKc
	extern com_dedicated
	extern _Z25XModel_LoadPhysicsCollMapPKcPFPviE
	extern _Z19XModelSurfsFindDataPKc
	extern _Z23Material_RegisterHandlePKci
	extern _Z18PhysPresetPrecachePKcPFPviE
	extern memcpy
	extern _Z18XModelPartsSetDataPKcP15XModelPartsLoadPFPviE
	extern memset
	extern SL_GetStringOfSize
	extern floorf
	extern _Z18XModelSurfsSetDataPKcP11XModelSurfsPFPviE
	extern _Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface
	extern _Z17XModelGetSurfacesPK6XModelPP8XSurfacei
	extern Hunk_AllocateTempMemory
	extern Hunk_FreeTempMemory
	extern _Z19XSurfaceGetNumVertsPK8XSurface
	extern _Z16XSurfaceGetVertsPK8XSurfacePfS2_S2_
	extern _Z15R_RegisterModelPKc
	extern Hunk_FindDataForFile
	extern Hunk_SetDataForFile

;Exports of xmodel_load_obj:
	global _Z18XModelLoadCollDataPPKhP6XModelPFPviEPKc
	global _Z10XModelLoadPKcPFPviES3_
	global _Z14XModelGetFlagsPK6XModel
	global _Z17R_GetXModelBoundsP6XModelPA3_KfPfS4_
	global _Z20XModelPiecesLoadFilePKcPFPviE
	global _Z20XModelPiecesPrecachePKcPFPviE
	global _Z21XModelCopyXModelPartsPK15XModelPartsLoadP6XModel
	global _Z21XModelGetStaticBoundsPK6XModelPA3_fPfS4_


SECTION .text


;XModelLoadCollData(unsigned char const**, XModel*, void* (*)(int), char const*)
_Z18XModelLoadCollDataPPKhP6XModelPFPviEPKc:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x8c
	mov edi, eax
	mov [ebp-0x64], edx
	mov [ebp-0x68], ecx
	mov eax, [eax]
	mov edx, [eax]
	mov [ebp-0x1c], edx
	add eax, 0x4
	mov [edi], eax
	mov eax, [ebp-0x64]
	mov [eax+0x9c], edx
	test edx, edx
	jnz _Z18XModelLoadCollDataPPKhP6XModelPFPviEPKc_10
_Z18XModelLoadCollDataPPKhP6XModelPFPviEPKc_20:
	add esp, 0x8c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z18XModelLoadCollDataPPKhP6XModelPFPviEPKc_10:
	lea eax, [edx+edx*4]
	lea eax, [edx+eax*2]
	shl eax, 0x2
	mov [esp], eax
	call dword [ebp-0x68]
	mov edx, [ebp-0x64]
	mov [edx+0x98], eax
	mov eax, [edx+0x9c]
	test eax, eax
	jle _Z18XModelLoadCollDataPPKhP6XModelPFPviEPKc_20
	mov dword [ebp-0x5c], 0x0
	mov dword [ebp-0x2c], 0x0
	movss xmm1, dword [_float_0_00100000]
	jmp _Z18XModelLoadCollDataPPKhP6XModelPFPviEPKc_30
_Z18XModelLoadCollDataPPKhP6XModelPFPviEPKc_40:
	mov eax, [edi]
	mov edx, [eax]
	mov [ebp-0x1c], edx
	add eax, 0x4
	mov [edi], eax
	movss xmm0, dword [ebp-0x1c]
	subss xmm0, xmm1
	mov edx, [ebp-0x60]
	movss [edx+0x8], xmm0
	mov eax, [edi]
	mov edx, [eax]
	mov [ebp-0x1c], edx
	add eax, 0x4
	mov [edi], eax
	movss xmm0, dword [ebp-0x1c]
	subss xmm0, xmm1
	mov eax, [ebp-0x60]
	movss [eax+0xc], xmm0
	mov eax, [edi]
	mov edx, [eax]
	mov [ebp-0x1c], edx
	add eax, 0x4
	mov [edi], eax
	movss xmm0, dword [ebp-0x1c]
	subss xmm0, xmm1
	mov edx, [ebp-0x60]
	movss [edx+0x10], xmm0
	mov eax, [edi]
	mov edx, [eax]
	mov [ebp-0x1c], edx
	add eax, 0x4
	mov [edi], eax
	movss xmm0, dword [ebp-0x1c]
	addss xmm0, xmm1
	mov eax, [ebp-0x60]
	movss [eax+0x14], xmm0
	mov eax, [edi]
	mov edx, [eax]
	mov [ebp-0x1c], edx
	add eax, 0x4
	mov [edi], eax
	movss xmm0, dword [ebp-0x1c]
	addss xmm0, xmm1
	mov edx, [ebp-0x60]
	movss [edx+0x18], xmm0
	mov eax, [edi]
	mov edx, [eax]
	mov [ebp-0x1c], edx
	add eax, 0x4
	mov [edi], eax
	movss xmm0, dword [ebp-0x1c]
	addss xmm0, xmm1
	mov eax, [ebp-0x60]
	movss [eax+0x1c], xmm0
	mov eax, [edi]
	mov edx, [eax]
	mov [ebp-0x1c], edx
	add eax, 0x4
	mov [edi], eax
	mov eax, [ebp-0x60]
	mov [eax+0x20], edx
	mov eax, [edi]
	mov edx, [eax]
	mov [ebp-0x1c], edx
	add eax, 0x4
	mov [edi], eax
	and edx, 0xdffffffb
	mov eax, [ebp-0x60]
	mov [eax+0x24], edx
	mov eax, [edi]
	mov edx, [eax]
	mov [ebp-0x1c], edx
	add eax, 0x4
	mov [edi], eax
	mov eax, [ebp-0x60]
	mov [eax+0x28], edx
	mov edx, [ebp-0x64]
	mov eax, [edx+0xa0]
	mov edx, [ebp-0x60]
	or eax, [edx+0x24]
	mov edx, [ebp-0x64]
	mov [edx+0xa0], eax
	add dword [ebp-0x5c], 0x1
	add dword [ebp-0x2c], 0x2c
	mov eax, [ebp-0x5c]
	cmp [edx+0x9c], eax
	jle _Z18XModelLoadCollDataPPKhP6XModelPFPviEPKc_20
_Z18XModelLoadCollDataPPKhP6XModelPFPviEPKc_30:
	mov edx, [ebp-0x2c]
	mov eax, [ebp-0x64]
	add edx, [eax+0x98]
	mov [ebp-0x60], edx
	mov eax, [edi]
	mov edx, [eax]
	mov [ebp-0x6c], edx
	mov [ebp-0x1c], edx
	add eax, 0x4
	mov [edi], eax
	mov eax, [ebp-0x60]
	mov [eax+0x4], edx
	lea eax, [edx+edx*2]
	shl eax, 0x4
	mov [esp], eax
	movss [ebp-0x88], xmm1
	call dword [ebp-0x68]
	mov edx, [ebp-0x60]
	mov [edx], eax
	mov esi, [ebp-0x6c]
	test esi, esi
	movss xmm1, dword [ebp-0x88]
	jle _Z18XModelLoadCollDataPPKhP6XModelPFPviEPKc_40
	mov dword [ebp-0x58], 0x0
	mov dword [ebp-0x30], 0x0
_Z18XModelLoadCollDataPPKhP6XModelPFPviEPKc_50:
	mov edx, [edi]
	mov eax, [edx]
	mov [ebp-0x1c], eax
	lea eax, [edx+0x4]
	mov [edi], eax
	movss xmm0, dword [ebp-0x1c]
	movss [ebp-0x48], xmm0
	mov eax, [edx+0x4]
	mov [ebp-0x1c], eax
	lea eax, [edx+0x8]
	mov [edi], eax
	movss xmm0, dword [ebp-0x1c]
	movss [ebp-0x4c], xmm0
	mov eax, [edx+0x8]
	mov [ebp-0x1c], eax
	lea eax, [edx+0xc]
	mov [edi], eax
	movss xmm0, dword [ebp-0x1c]
	movss [ebp-0x50], xmm0
	mov eax, [edx+0xc]
	mov [ebp-0x1c], eax
	lea eax, [edx+0x10]
	mov [edi], eax
	movss xmm0, dword [ebp-0x1c]
	movss [ebp-0x54], xmm0
	mov eax, [edx+0x10]
	mov [ebp-0x1c], eax
	lea eax, [edx+0x14]
	mov [edi], eax
	movss xmm0, dword [ebp-0x1c]
	movss [ebp-0x38], xmm0
	mov eax, [edx+0x14]
	mov [ebp-0x1c], eax
	lea eax, [edx+0x18]
	mov [edi], eax
	movss xmm0, dword [ebp-0x1c]
	movss [ebp-0x3c], xmm0
	mov eax, [edx+0x18]
	mov [ebp-0x1c], eax
	lea eax, [edx+0x1c]
	mov [edi], eax
	movss xmm0, dword [ebp-0x1c]
	movss [ebp-0x40], xmm0
	mov eax, [edx+0x1c]
	mov [ebp-0x1c], eax
	lea eax, [edx+0x20]
	mov [edi], eax
	movss xmm0, dword [ebp-0x1c]
	movss [ebp-0x44], xmm0
	mov eax, [edx+0x20]
	mov [ebp-0x1c], eax
	lea eax, [edx+0x24]
	mov [edi], eax
	movss xmm0, dword [ebp-0x1c]
	movss [ebp-0x34], xmm0
	mov eax, [edx+0x24]
	mov [ebp-0x1c], eax
	lea eax, [edx+0x28]
	mov [edi], eax
	mov esi, [ebp-0x1c]
	mov eax, [edx+0x28]
	mov [ebp-0x1c], eax
	lea eax, [edx+0x2c]
	mov [edi], eax
	mov ebx, [ebp-0x1c]
	mov eax, [edx+0x2c]
	mov [ebp-0x1c], eax
	add edx, 0x30
	mov [edi], edx
	mov ecx, [ebp-0x1c]
	mov eax, [ebp-0x30]
	mov edx, [ebp-0x60]
	add eax, [edx]
	movss xmm0, dword [ebp-0x48]
	movss [eax], xmm0
	movss xmm0, dword [ebp-0x4c]
	movss [eax+0x4], xmm0
	movss xmm0, dword [ebp-0x50]
	movss [eax+0x8], xmm0
	movss xmm0, dword [ebp-0x54]
	movss [eax+0xc], xmm0
	lea edx, [eax+0x10]
	movss xmm0, dword [ebp-0x38]
	movss [eax+0x10], xmm0
	movss xmm0, dword [ebp-0x3c]
	movss [edx+0x4], xmm0
	movss xmm0, dword [ebp-0x40]
	movss [edx+0x8], xmm0
	movss xmm0, dword [ebp-0x44]
	movss [edx+0xc], xmm0
	lea edx, [eax+0x20]
	movss xmm0, dword [ebp-0x34]
	movss [eax+0x20], xmm0
	mov [edx+0x4], esi
	mov [edx+0x8], ebx
	mov [edx+0xc], ecx
	add dword [ebp-0x58], 0x1
	add dword [ebp-0x30], 0x30
	mov eax, [ebp-0x58]
	cmp [ebp-0x6c], eax
	jnz _Z18XModelLoadCollDataPPKhP6XModelPFPviEPKc_50
	jmp _Z18XModelLoadCollDataPPKhP6XModelPFPviEPKc_40
	nop


;XModelLoad(char const*, void* (*)(int), void* (*)(int))
_Z10XModelLoadPKcPFPviES3_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x16dc
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z22Com_IsLegacyXModelNamePKc
	test eax, eax
	jnz _Z10XModelLoadPKcPFPviES3__10
	mov ecx, [ebp+0x8]
	mov [esp+0xc], ecx
	mov dword [esp+0x8], _cstring_xmodels
	mov dword [esp+0x4], 0x40
	lea ebx, [ebp-0xa4]
	mov [esp], ebx
	call _Z11Com_sprintfPciPKcz
	test eax, eax
	js _Z10XModelLoadPKcPFPviES3__20
	lea eax, [ebp-0x20]
	mov [esp+0x4], eax
	mov [esp], ebx
	call FS_ReadFile
	cmp eax, 0x0
	jl _Z10XModelLoadPKcPFPviES3__30
	jz _Z10XModelLoadPKcPFPviES3__40
	mov edx, [ebp-0x20]
	mov ecx, edx
	mov [ebp-0x1c], edx
	movzx eax, word [edx]
	mov [ebp-0x2c], ax
	add edx, 0x2
	mov [ebp-0x1c], edx
	movsx edx, ax
	cmp ax, 0x19
	jz _Z10XModelLoadPKcPFPviES3__50
	mov dword [esp+0x10], 0x19
	mov [esp+0xc], edx
	mov eax, [ebp+0x8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_xmodel_s_o
	mov dword [esp], 0x13
	call _Z14Com_PrintErroriPKcz
	mov eax, [ebp-0x20]
	mov [esp], eax
	call FS_FreeFile
	mov dword [ebp-0x169c], 0x0
_Z10XModelLoadPKcPFPviES3__320:
	mov eax, [ebp-0x169c]
	add esp, 0x16dc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z10XModelLoadPKcPFPviES3__50:
	movzx eax, byte [ecx+0x2]
	mov [ebp-0x5e8], al
	lea edx, [ecx+0x3]
	mov [ebp-0x1c], edx
	mov eax, [ecx+0x3]
	mov [ebp-0x2c], eax
	lea edx, [ecx+0x7]
	mov [ebp-0x1c], edx
	mov eax, [ebp-0x2c]
	mov [ebp-0x604], eax
	mov eax, [ecx+0x7]
	mov [ebp-0x2c], eax
	lea edx, [ecx+0xb]
	mov [ebp-0x1c], edx
	mov eax, [ebp-0x2c]
	mov [ebp-0x600], eax
	mov eax, [ecx+0xb]
	mov [ebp-0x2c], eax
	lea edx, [ecx+0xf]
	mov [ebp-0x1c], edx
	mov eax, [ebp-0x2c]
	mov [ebp-0x5fc], eax
	mov eax, [ecx+0xf]
	mov [ebp-0x2c], eax
	lea edx, [ecx+0x13]
	mov [ebp-0x1c], edx
	mov eax, [ebp-0x2c]
	mov [ebp-0x5f8], eax
	mov eax, [ecx+0x13]
	mov [ebp-0x2c], eax
	lea edx, [ecx+0x17]
	mov [ebp-0x1c], edx
	mov eax, [ebp-0x2c]
	mov [ebp-0x5f4], eax
	mov eax, [ecx+0x17]
	mov [ebp-0x2c], eax
	lea edx, [ecx+0x1b]
	mov [ebp-0x1c], edx
	mov eax, [ebp-0x2c]
	mov [ebp-0x5f0], eax
	mov [esp+0x4], edx
	lea eax, [ebp-0x5e7]
	mov [esp], eax
	call strcpy
	mov edx, [ebp-0x1c]
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, edx
	repne scasb
	not ecx
	lea edx, [ecx+edx]
	mov [ebp-0x1c], edx
	mov dword [ebp-0x1684], 0x0
	lea esi, [ebp-0x1614]
	mov ebx, esi
_Z10XModelLoadPKcPFPviES3__60:
	mov eax, [edx]
	mov [ebp-0x2c], eax
	add edx, 0x4
	mov [ebp-0x1c], edx
	mov eax, [ebp-0x2c]
	mov [esi+0x400], eax
	mov eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov [esp], ebx
	call strcpy
	mov edx, [ebp-0x1c]
	cld
	mov ecx, 0xffffffff
	mov edi, edx
	xor eax, eax
	repne scasb
	not ecx
	lea ecx, [ecx+edx-0x1]
	lea edx, [ecx+0x1]
	mov [ebp-0x1c], edx
	add dword [ebp-0x1684], 0x1
	add ebx, 0x404
	add esi, 0x404
	cmp dword [ebp-0x1684], 0x4
	jnz _Z10XModelLoadPKcPFPviES3__60
	mov eax, [ecx+0x1]
	mov [ebp-0x2c], eax
	lea edx, [ecx+0x5]
	mov [ebp-0x1c], edx
	mov [ebp-0x5ec], eax
	mov dword [esp], 0xdc
	call dword [ebp+0xc]
	mov [ebp-0x169c], eax
	mov dword [eax+0xcc], 0xdc
	lea eax, [ebp-0x1c]
	mov edx, [ebp+0x8]
	mov [esp], edx
	mov ecx, [ebp+0x10]
	mov edx, [ebp-0x169c]
	call _Z18XModelLoadCollDataPPKhP6XModelPFPviEPKc
	mov ecx, [ebp-0x169c]
	mov word [ecx+0xc4], 0x0
	mov ebx, [ebp-0x1c]
	mov [ebp-0x1690], ebx
	mov dword [ebp-0x168c], 0x0
	mov dword [ebp-0x1620], 0x0
	lea edi, [ebp-0x1614]
	mov [ebp-0x1630], edi
	movss xmm2, dword [_float_1000000_00000000]
	mov ebx, ecx
	add ebx, 0x28
	mov eax, edi
	cmp byte [eax], 0x0
	jnz _Z10XModelLoadPKcPFPviES3__70
_Z10XModelLoadPKcPFPviES3__90:
	mov edx, eax
_Z10XModelLoadPKcPFPviES3__110:
	movss xmm1, dword [edx+0x400]
	movaps xmm0, xmm1
	pxor xmm3, xmm3
	cmpss xmm0, xmm3, 0x4
	andps xmm1, xmm0
	andnps xmm0, xmm2
	orps xmm0, xmm1
	movss [ebx], xmm0
	add dword [ebp-0x1620], 0x1
	add ebx, 0x1c
	add edx, 0x404
	mov [ebp-0x1630], edx
	cmp dword [ebp-0x1620], 0x4
	jz _Z10XModelLoadPKcPFPviES3__80
	mov eax, edx
	cmp byte [eax], 0x0
	jz _Z10XModelLoadPKcPFPviES3__90
_Z10XModelLoadPKcPFPviES3__70:
	mov edx, [ebp-0x169c]
	add word [edx+0xc4], 0x1
	mov edx, [ebp-0x1c]
	movzx eax, word [edx]
	mov [ebp-0x2c], ax
	add edx, 0x2
	mov [ebp-0x1c], edx
	mov [ebx+0x4], ax
	add [ebp-0x168c], eax
	test eax, eax
	jg _Z10XModelLoadPKcPFPviES3__100
_Z10XModelLoadPKcPFPviES3__190:
	mov edx, [ebp-0x1630]
	jmp _Z10XModelLoadPKcPFPviES3__110
_Z10XModelLoadPKcPFPviES3__80:
	lea eax, [ebp-0x1614]
	mov [esp], eax
	call _Z19XModelPartsFindDataPKc
	mov esi, eax
	test eax, eax
	jz _Z10XModelLoadPKcPFPviES3__120
_Z10XModelLoadPKcPFPviES3__510:
	movzx edx, byte [esi]
	mov edi, [ebp-0x169c]
	mov [edi+0x4], dl
	movzx eax, byte [esi+0x1]
	mov [edi+0x5], al
	mov eax, [esi+0x4]
	mov [edi+0x8], eax
	mov eax, [esi+0x8]
	mov [edi+0xc], eax
	mov eax, [esi+0xc]
	mov [edi+0x10], eax
	mov eax, [esi+0x10]
	mov [edi+0x14], eax
	mov eax, [esi+0x14]
	mov [edi+0x18], eax
	mov eax, [esi+0x18]
	mov [edi+0x1c], eax
	movzx esi, dl
	lea ebx, [esi+esi*4]
	shl ebx, 0x3
	mov [esp], ebx
	call dword [ebp+0xc]
	mov [ebp-0x1698], eax
	add [edi+0xcc], ebx
	test esi, esi
	jg _Z10XModelLoadPKcPFPviES3__130
_Z10XModelLoadPKcPFPviES3__260:
	mov edx, [ebp-0x1698]
	mov eax, [ebp-0x169c]
	mov [eax+0xa4], edx
	mov byte [eax+0x7], 0x0
	mov eax, com_dedicated
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	jnz _Z10XModelLoadPKcPFPviES3__140
	mov ecx, [ebp-0x1690]
	mov [ebp-0x1c], ecx
	movzx ebx, byte [ebp-0x168c]
	mov edi, [ebp-0x169c]
	mov [edi+0x6], bl
	mov edx, [ebp-0x168c]
	shl edx, 0x3
	mov eax, [ebp-0x168c]
	shl eax, 0x6
	sub eax, edx
	mov [esp], eax
	call dword [ebp+0xc]
	mov [edi+0x20], eax
	mov eax, [ebp-0x168c]
	shl eax, 0x2
	mov [esp], eax
	call dword [ebp+0xc]
	mov [edi+0x24], eax
	mov dword [ebp-0x1648], 0x0
	mov dword [ebp-0x1688], 0x0
	lea eax, [ebp-0x1614]
	mov [ebp-0x1638], eax
	mov [ebp-0x16b0], eax
	mov dword [ebp-0x16b4], 0x20
_Z10XModelLoadPKcPFPviES3__160:
	mov edx, [ebp-0x169c]
	mov ecx, [ebp-0x16b4]
	lea edx, [edx+ecx+0x8]
	mov [ebp-0x1694], edx
	mov ecx, [ebp-0x1638]
	cmp byte [ecx], 0x0
	jnz _Z10XModelLoadPKcPFPviES3__150
_Z10XModelLoadPKcPFPviES3__210:
	add dword [ebp-0x1648], 0x1
	add dword [ebp-0x16b4], 0x1c
	add dword [ebp-0x16b0], 0x404
	add dword [ebp-0x1638], 0x404
	cmp dword [ebp-0x1648], 0x4
	jnz _Z10XModelLoadPKcPFPviES3__160
	mov edx, 0x3f800000
	mov [ebp-0x64], edx
	lea ecx, [ebp-0x64]
	xor eax, eax
	mov [ebp-0x60], eax
	mov [ebp-0x5c], eax
	mov [ebp-0x58], eax
	mov [ebp-0x54], edx
	mov [ebp-0x50], eax
	mov [ebp-0x4c], eax
	mov [ebp-0x48], eax
	mov [ebp-0x44], edx
	mov eax, [ebp-0x169c]
	add eax, 0xb8
	mov [esp+0xc], eax
	mov eax, [ebp-0x169c]
	add eax, 0xac
	mov [esp+0x8], eax
	mov [esp+0x4], ecx
	mov ebx, [ebp-0x169c]
	mov [esp], ebx
	call _Z17R_GetXModelBoundsP6XModelPA3_KfPfS4_
_Z10XModelLoadPKcPFPviES3__140:
	mov eax, [ebp-0x20]
	mov [esp], eax
	call FS_FreeFile
	mov eax, [ebp-0x5f8]
	mov edi, [ebp-0x169c]
	mov [edi+0xa8], eax
	mov eax, [ebp-0x5ec]
	mov [edi+0xc6], ax
	movzx eax, byte [ebp-0x5e8]
	mov [edi+0xd0], al
	cmp byte [ebp-0x5e7], 0x0
	jnz _Z10XModelLoadPKcPFPviES3__170
_Z10XModelLoadPKcPFPviES3__270:
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z25XModel_LoadPhysicsCollMapPKcPFPviE
	mov ebx, [ebp-0x169c]
	mov [ebx+0xd8], eax
	mov eax, [ebp-0x169c]
	add esp, 0x16dc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z10XModelLoadPKcPFPviES3__100:
	xor esi, esi
	mov edx, [ebp-0x1c]
	cld
_Z10XModelLoadPKcPFPviES3__180:
	mov ecx, 0xffffffff
	mov edi, edx
	xor eax, eax
	repne scasb
	not ecx
	lea edx, [ecx+edx]
	mov [ebp-0x1c], edx
	add esi, 0x1
	movzx eax, word [ebx+0x4]
	cmp esi, eax
	jl _Z10XModelLoadPKcPFPviES3__180
	jmp _Z10XModelLoadPKcPFPviES3__190
_Z10XModelLoadPKcPFPviES3__150:
	mov edi, edx
	mov edx, [ebp-0x1c]
	movzx eax, word [edx]
	mov [ebp-0x2c], ax
	add edx, 0x2
	mov [ebp-0x1c], edx
	movzx ebx, word [edi+0x4]
	movsx esi, bx
	mov eax, [ebp-0x16b0]
	mov [esp], eax
	call _Z19XModelSurfsFindDataPKc
	mov edx, eax
	test eax, eax
	jz _Z10XModelLoadPKcPFPviES3__200
	mov ecx, [eax]
	mov [ebp-0x40], ecx
	mov eax, [eax+0x4]
	mov [ebp-0x3c], eax
	mov eax, [edx+0x8]
	mov [ebp-0x38], eax
	mov eax, [edx+0xc]
	mov [ebp-0x34], eax
	mov eax, [edx+0x10]
	mov [ebp-0x30], eax
_Z10XModelLoadPKcPFPviES3__650:
	mov edx, [ebp-0x1694]
	add edx, 0x8
	mov eax, [ebp-0x3c]
	mov ecx, [ebp-0x1694]
	mov [ecx+0x8], eax
	mov eax, [ebp-0x38]
	mov [edx+0x4], eax
	mov eax, [ebp-0x34]
	mov [edx+0x8], eax
	mov eax, [ebp-0x30]
	mov [edx+0xc], eax
	movzx ebx, word [ebp-0x1688]
	mov [ecx+0x6], bx
	movzx eax, byte [ebp-0x1648]
	mov [ecx+0x18], al
	mov byte [ecx+0x19], 0x0
	cmp word [ecx+0x4], 0x0
	jz _Z10XModelLoadPKcPFPviES3__210
	mov eax, [ebp-0x1688]
	shl eax, 0x3
	mov edi, [ebp-0x1688]
	shl edi, 0x6
	sub edi, eax
	mov [ebp-0x1644], edi
	mov eax, [ebp-0x1688]
	shl eax, 0x2
	mov [ebp-0x163c], eax
	mov dword [ebp-0x161c], 0x0
	mov dword [ebp-0x1640], 0x0
_Z10XModelLoadPKcPFPviES3__240:
	mov edx, [ebp-0x1c]
	mov [ebp-0x16c0], edx
	cld
	xor eax, eax
	mov ecx, 0xffffffff
	mov edi, edx
	repne scasb
	not ecx
	add ecx, edx
	mov [ebp-0x1c], ecx
	mov ebx, 0x9
	mov esi, edx
	mov edi, _cstring_default
	mov ecx, ebx
	repe cmpsb
	mov eax, 0x0
	jz _Z10XModelLoadPKcPFPviES3__220
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
_Z10XModelLoadPKcPFPviES3__220:
	test eax, eax
	mov eax, _cstring_default3d
	cmovnz eax, [ebp-0x16c0]
	mov [esp+0x10], eax
	mov dword [esp+0xc], _cstring_mc
	mov dword [esp+0x8], _cstring_ss
	mov dword [esp+0x4], 0x100
	lea eax, [ebp-0x1e4]
	mov [esp], eax
	call _Z11Com_sprintfPciPKcz
	mov ebx, [ebp-0x163c]
	mov edx, [ebp-0x169c]
	add ebx, [edx+0x24]
	mov dword [esp+0x4], 0x8
	lea ecx, [ebp-0x1e4]
	mov [esp], ecx
	call _Z23Material_RegisterHandlePKci
	mov [ebx], eax
	mov ecx, [ebp-0x40]
	mov ebx, [ebp-0x1640]
	cmp byte [ecx+ebx+0x1], 0x0
	jz _Z10XModelLoadPKcPFPviES3__230
	mov edi, [ebp-0x169c]
	mov byte [edi+0x7], 0x1
	mov ecx, [ebp-0x40]
	mov ebx, [ebp-0x1640]
_Z10XModelLoadPKcPFPviES3__230:
	mov eax, [ebp-0x169c]
	mov edx, [eax+0x20]
	mov eax, [ecx+ebx]
	mov edi, [ebp-0x1644]
	mov [edx+edi], eax
	mov eax, [ecx+ebx+0x4]
	mov [edx+edi+0x4], eax
	mov eax, [ecx+ebx+0x8]
	mov [edx+edi+0x8], eax
	mov eax, [ecx+ebx+0xc]
	mov [edx+edi+0xc], eax
	mov eax, [ecx+ebx+0x10]
	mov [edx+edi+0x10], eax
	mov eax, [ecx+ebx+0x14]
	mov [edx+edi+0x14], eax
	mov eax, [ecx+ebx+0x18]
	mov [edx+edi+0x18], eax
	mov eax, [ecx+ebx+0x1c]
	mov [edx+edi+0x1c], eax
	mov eax, [ecx+ebx+0x20]
	mov [edx+edi+0x20], eax
	mov eax, [ecx+ebx+0x24]
	mov [edx+edi+0x24], eax
	mov eax, [ecx+ebx+0x28]
	mov [edx+edi+0x28], eax
	mov eax, [ecx+ebx+0x2c]
	mov [edx+edi+0x2c], eax
	mov eax, [ecx+ebx+0x30]
	mov [edx+edi+0x30], eax
	mov eax, [ecx+ebx+0x34]
	mov [edx+edi+0x34], eax
	add dword [ebp-0x161c], 0x1
	add edi, 0x38
	mov [ebp-0x1644], edi
	add ebx, 0x38
	mov [ebp-0x1640], ebx
	add dword [ebp-0x163c], 0x4
	mov edx, [ebp-0x1694]
	movzx eax, word [edx+0x4]
	cmp [ebp-0x161c], eax
	jl _Z10XModelLoadPKcPFPviES3__240
	mov ecx, [ebp-0x161c]
	add [ebp-0x1688], ecx
	jmp _Z10XModelLoadPKcPFPviES3__210
_Z10XModelLoadPKcPFPviES3__10:
	mov edx, [ebp+0x8]
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_error_remove_xmo
	mov dword [esp], 0x13
	call _Z14Com_PrintErroriPKcz
	mov dword [ebp-0x169c], 0x0
	mov eax, [ebp-0x169c]
	add esp, 0x16dc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z10XModelLoadPKcPFPviES3__40:
	mov edi, [ebp+0x8]
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_error_xmodel_s_h
_Z10XModelLoadPKcPFPviES3__310:
	mov dword [esp], 0x13
	call _Z14Com_PrintErroriPKcz
	mov eax, [ebp-0x20]
	mov [esp], eax
	call FS_FreeFile
	mov dword [ebp-0x169c], 0x0
	mov eax, [ebp-0x169c]
	add esp, 0x16dc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z10XModelLoadPKcPFPviES3__130:
	mov ebx, eax
	xor edi, edi
	movss xmm3, dword [_float_0_50000000]
_Z10XModelLoadPKcPFPviES3__250:
	mov edx, [ebp-0x1c]
	mov eax, [edx]
	mov [ebp-0x2c], eax
	add edx, 0x4
	mov [ebp-0x1c], edx
	mov eax, [ebp-0x2c]
	mov [ebx], eax
	mov edx, [ebp-0x1c]
	mov eax, [edx]
	mov [ebp-0x2c], eax
	add edx, 0x4
	mov [ebp-0x1c], edx
	mov eax, [ebp-0x2c]
	mov [ebx+0x4], eax
	mov edx, [ebp-0x1c]
	mov eax, [edx]
	mov [ebp-0x2c], eax
	add edx, 0x4
	mov [ebp-0x1c], edx
	mov eax, [ebp-0x2c]
	mov [ebx+0x8], eax
	lea ecx, [ebx+0xc]
	mov edx, [ebp-0x1c]
	mov eax, [edx]
	mov [ebp-0x2c], eax
	add edx, 0x4
	mov [ebp-0x1c], edx
	mov eax, [ebp-0x2c]
	mov [ebx+0xc], eax
	mov edx, [ebp-0x1c]
	mov eax, [edx]
	mov [ebp-0x2c], eax
	add edx, 0x4
	mov [ebp-0x1c], edx
	mov eax, [ebp-0x2c]
	mov [ecx+0x4], eax
	mov edx, [ebp-0x1c]
	mov eax, [edx]
	mov [ebp-0x2c], eax
	add edx, 0x4
	mov [ebp-0x1c], edx
	mov eax, [ebp-0x2c]
	mov [ecx+0x8], eax
	lea eax, [ebx+0x18]
	movss xmm0, dword [ebx]
	addss xmm0, [ebx+0xc]
	mulss xmm0, xmm3
	movss [ebx+0x18], xmm0
	movss xmm0, dword [ebx+0x4]
	addss xmm0, [ebx+0x10]
	mulss xmm0, xmm3
	movss [eax+0x4], xmm0
	movss xmm0, dword [ebx+0x8]
	addss xmm0, [ebx+0x14]
	mulss xmm0, xmm3
	movss [eax+0x8], xmm0
	movss xmm0, dword [ebx+0xc]
	subss xmm0, [ebx+0x18]
	movss xmm1, dword [ebx+0x10]
	subss xmm1, [eax+0x4]
	movss xmm2, dword [ebx+0x14]
	subss xmm2, [eax+0x8]
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	movss [ebx+0x24], xmm0
	add edi, 0x1
	add ebx, 0x28
	cmp esi, edi
	jnz _Z10XModelLoadPKcPFPviES3__250
	jmp _Z10XModelLoadPKcPFPviES3__260
_Z10XModelLoadPKcPFPviES3__170:
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	lea eax, [ebp-0x5e7]
	mov [esp], eax
	call _Z18PhysPresetPrecachePKcPFPviE
	mov [edi+0xd4], eax
	jmp _Z10XModelLoadPKcPFPviES3__270
_Z10XModelLoadPKcPFPviES3__120:
	lea edx, [ebp-0x1614]
	mov [esp+0xc], edx
	mov dword [esp+0x8], _cstring_xmodelpartss
	mov dword [esp+0x4], 0x40
	lea ebx, [ebp-0xe4]
	mov [esp], ebx
	call _Z11Com_sprintfPciPKcz
	test eax, eax
	js _Z10XModelLoadPKcPFPviES3__280
	lea eax, [ebp-0x24]
	mov [esp+0x4], eax
	mov [esp], ebx
	call FS_ReadFile
	cmp eax, 0x0
	jl _Z10XModelLoadPKcPFPviES3__290
	jnz _Z10XModelLoadPKcPFPviES3__300
	lea edi, [ebp-0x1614]
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_error_xmodelpart
	mov dword [esp], 0x13
	call _Z14Com_PrintErroriPKcz
	mov eax, [ebp-0x24]
	mov [esp], eax
	call FS_FreeFile
_Z10XModelLoadPKcPFPviES3__340:
	lea ecx, [ebp-0x1614]
	mov [esp+0x8], ecx
	mov dword [esp+0x4], _cstring_error_cannot_fin
	jmp _Z10XModelLoadPKcPFPviES3__310
_Z10XModelLoadPKcPFPviES3__20:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_error_filename_s
	mov dword [esp], 0x13
	call _Z14Com_PrintErroriPKcz
	mov dword [ebp-0x169c], 0x0
	jmp _Z10XModelLoadPKcPFPviES3__320
_Z10XModelLoadPKcPFPviES3__300:
	mov edx, [ebp-0x24]
	movzx eax, word [edx]
	mov [ebp-0x2c], ax
	movsx ebx, ax
	cmp ax, 0x19
	jz _Z10XModelLoadPKcPFPviES3__330
	mov [esp], edx
	call FS_FreeFile
	mov dword [esp+0x10], 0x19
	mov [esp+0xc], ebx
	lea eax, [ebp-0x1614]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_xmodelpart1
	mov dword [esp], 0x13
	call _Z14Com_PrintErroriPKcz
	jmp _Z10XModelLoadPKcPFPviES3__340
_Z10XModelLoadPKcPFPviES3__30:
	mov ebx, [ebp+0x8]
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_error_xmodel_s_n
	mov dword [esp], 0x13
	call _Z14Com_PrintErroriPKcz
	mov dword [ebp-0x169c], 0x0
	jmp _Z10XModelLoadPKcPFPviES3__320
_Z10XModelLoadPKcPFPviES3__200:
	mov edx, [ebp-0x16b0]
	mov [esp+0xc], edx
	mov dword [esp+0x8], _cstring_xmodelsurfss
	mov dword [esp+0x4], 0x40
	lea ecx, [ebp-0xe4]
	mov [esp], ecx
	call _Z11Com_sprintfPciPKcz
	test eax, eax
	js _Z10XModelLoadPKcPFPviES3__350
	lea eax, [ebp-0x24]
	mov [esp+0x4], eax
	lea eax, [ebp-0xe4]
	mov [esp], eax
	call FS_ReadFile
	cmp eax, 0x0
	jl _Z10XModelLoadPKcPFPviES3__360
	jnz _Z10XModelLoadPKcPFPviES3__370
	mov ecx, [ebp-0x16b0]
	mov [esp+0x8], ecx
	mov dword [esp+0x4], _cstring_error_xmodelsurf
	mov dword [esp], 0x13
	call _Z14Com_PrintErroriPKcz
	mov eax, [ebp-0x24]
	mov [esp], eax
	call FS_FreeFile
_Z10XModelLoadPKcPFPviES3__530:
	mov edi, [ebp-0x16b0]
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_error_cannot_fin1
	jmp _Z10XModelLoadPKcPFPviES3__310
_Z10XModelLoadPKcPFPviES3__330:
	movzx edi, word [edx+0x2]
	mov [ebp-0x2c], di
	movsx eax, word [edx+0x4]
	mov [ebp-0x2c], ax
	add edx, 0x6
	mov [ebp-0x162c], edx
	mov [ebp-0x16a0], eax
	movsx edx, di
	mov [ebp-0x16a4], edx
	add edx, eax
	mov [ebp-0x1670], edx
	mov ebx, edx
	add ebx, ebx
	mov [esp], ebx
	call dword [ebp+0xc]
	mov [ebp-0x167c], eax
	mov eax, ebx
	mov ecx, [ebp-0x169c]
	add eax, [ecx+0xcc]
	mov [ecx+0xcc], eax
	cmp dword [ebp-0x1670], 0x7f
	jg _Z10XModelLoadPKcPFPviES3__380
	test di, di
	jnz _Z10XModelLoadPKcPFPviES3__390
	mov dword [ebp-0x1678], 0x0
	mov ecx, [ebp-0x169c]
_Z10XModelLoadPKcPFPviES3__560:
	add eax, [ebp-0x16a4]
	mov [ecx+0xcc], eax
	mov dword [esp], 0x1c
	call dword [ebp+0xc]
	mov esi, eax
	mov ebx, [ebp-0x169c]
	add dword [ebx+0xcc], 0x1c
	mov eax, [ebp-0x1678]
	mov [esi+0x8], eax
	mov edx, [ebp-0x167c]
	mov [esi+0x4], edx
	mov ebx, [ebp-0x1670]
	shl ebx, 0x5
	mov [esp], ebx
	call dword [ebp+0xc]
	mov [esi+0x18], eax
	mov ecx, [ebp-0x169c]
	add [ecx+0xcc], ebx
	test di, di
	jnz _Z10XModelLoadPKcPFPviES3__400
	mov dword [esi+0xc], 0x0
	mov dword [esi+0x10], 0x0
_Z10XModelLoadPKcPFPviES3__550:
	mov eax, [ebp-0x1670]
	mov [esp], eax
	call dword [ebp+0xc]
	mov [esi+0x14], eax
	mov edx, [ebp-0x1670]
	mov ecx, [ebp-0x169c]
	add [ecx+0xcc], edx
	mov [esi], dl
	movzx ebx, byte [ebp-0x16a0]
	mov [esi+0x1], bl
	mov eax, [esi+0xc]
	mov edi, [esi+0x10]
	mov edx, [ebp-0x1670]
	cmp [ebp-0x16a0], edx
	jl _Z10XModelLoadPKcPFPviES3__410
_Z10XModelLoadPKcPFPviES3__600:
	mov eax, [ebp-0x1670]
	test eax, eax
	jg _Z10XModelLoadPKcPFPviES3__420
	mov edi, [ebp-0x162c]
_Z10XModelLoadPKcPFPviES3__580:
	mov eax, [esi+0x14]
	mov ebx, [ebp-0x1670]
	mov [esp+0x8], ebx
	mov [esp+0x4], edi
	mov [esp], eax
	call memcpy
	movzx eax, byte [edi+ebx]
	mov [ebp-0x167d], al
	mov eax, [ebp-0x24]
	mov [esp], eax
	call FS_FreeFile
	mov edx, [esi+0x8]
	mov [ebp-0x1628], edx
	movzx ebx, byte [esi]
	mov ecx, [esi+0xc]
	mov [ebp-0x166c], ecx
	mov edi, [esi+0x10]
	mov [ebp-0x1668], edi
	mov ecx, [esi+0x18]
	movzx eax, byte [esi+0x1]
	movzx edi, al
	test al, al
	jz _Z10XModelLoadPKcPFPviES3__430
	xor edx, edx
_Z10XModelLoadPKcPFPviES3__440:
	mov dword [ecx], 0x0
	mov dword [ecx+0x4], 0x0
	mov dword [ecx+0x8], 0x0
	mov dword [ecx+0xc], 0x3f800000
	lea eax, [ecx+0x10]
	mov dword [ecx+0x10], 0x0
	mov dword [eax+0x4], 0x0
	mov dword [eax+0x8], 0x0
	mov dword [ecx+0x1c], 0x40000000
	add ecx, 0x20
	add edx, 0x1
	cmp edx, edi
	jnz _Z10XModelLoadPKcPFPviES3__440
_Z10XModelLoadPKcPFPviES3__430:
	movzx eax, byte [esi+0x1]
	sub ebx, eax
	mov eax, ebx
	jz _Z10XModelLoadPKcPFPviES3__450
	mov edi, [ebp-0x1668]
	add edi, 0xc
	mov ebx, [ebp-0x1628]
	add eax, ebx
	mov [ebp-0x16ac], eax
	jmp _Z10XModelLoadPKcPFPviES3__460
_Z10XModelLoadPKcPFPviES3__480:
	mov dword [ecx+0xc], 0x3f800000
	mov dword [ecx+0x1c], 0x40000000
_Z10XModelLoadPKcPFPviES3__490:
	lea eax, [ecx+0x10]
	mov [ebp-0x16bc], eax
	movzx eax, byte [ebx]
	shl eax, 0x5
	mov edx, ecx
	sub edx, eax
	mov eax, edx
	movss xmm3, dword [edx+0x1c]
	movaps xmm5, xmm3
	mulss xmm5, [edx]
	movaps xmm7, xmm3
	mulss xmm7, [edx+0x4]
	mulss xmm3, [edx+0x8]
	movaps xmm0, xmm5
	mulss xmm0, [edx]
	movss [ebp-0x1664], xmm0
	movss xmm6, dword [edx+0x4]
	movaps xmm2, xmm5
	mulss xmm2, xmm6
	movss xmm1, dword [edx+0x8]
	movaps xmm4, xmm5
	mulss xmm4, xmm1
	movss xmm0, dword [edx+0xc]
	mulss xmm5, xmm0
	mulss xmm6, xmm7
	movss [ebp-0x1660], xmm6
	movaps xmm6, xmm7
	mulss xmm6, xmm1
	movss [ebp-0x165c], xmm6
	mulss xmm7, xmm0
	movaps xmm6, xmm3
	mulss xmm6, xmm1
	mulss xmm3, xmm0
	movss xmm0, dword [ebp-0x1660]
	addss xmm0, xmm6
	movss xmm1, dword [_float_1_00000000]
	subss xmm1, xmm0
	mulss xmm1, [edi-0xc]
	movaps xmm0, xmm2
	subss xmm0, xmm3
	mulss xmm0, [edi-0x8]
	addss xmm1, xmm0
	movaps xmm0, xmm4
	addss xmm0, xmm7
	mulss xmm0, [edi-0x4]
	addss xmm1, xmm0
	addss xmm1, [edx+0x10]
	movss [ecx+0x10], xmm1
	addss xmm2, xmm3
	mulss xmm2, [edi-0xc]
	addss xmm6, [ebp-0x1664]
	movss xmm0, dword [_float_1_00000000]
	subss xmm0, xmm6
	mulss xmm0, [edi-0x8]
	addss xmm2, xmm0
	movss xmm0, dword [ebp-0x165c]
	subss xmm0, xmm5
	mulss xmm0, [edi-0x4]
	addss xmm2, xmm0
	addss xmm2, [edx+0x14]
	mov edx, [ebp-0x16bc]
	movss [edx+0x4], xmm2
	subss xmm4, xmm7
	mulss xmm4, [edi-0xc]
	addss xmm5, [ebp-0x165c]
	mulss xmm5, [edi-0x8]
	addss xmm4, xmm5
	movss xmm0, dword [ebp-0x1664]
	addss xmm0, [ebp-0x1660]
	movss [ebp-0x1664], xmm0
	movss xmm0, dword [_float_1_00000000]
	subss xmm0, [ebp-0x1664]
	mulss xmm0, [edi-0x4]
	addss xmm4, xmm0
	addss xmm4, [eax+0x18]
	movss [edx+0x8], xmm4
	add dword [ebp-0x166c], 0x8
	add ecx, 0x20
	add ebx, 0x1
	add edi, 0xc
	cmp [ebp-0x16ac], ebx
	jz _Z10XModelLoadPKcPFPviES3__450
_Z10XModelLoadPKcPFPviES3__460:
	mov edx, [ebp-0x166c]
	movsx eax, word [edx]
	cvtsi2ss xmm5, eax
	mulss xmm5, [_float_0_00003052]
	movsx eax, word [edx+0x2]
	cvtsi2ss xmm6, eax
	mulss xmm6, [_float_0_00003052]
	movsx eax, word [edx+0x4]
	cvtsi2ss xmm7, eax
	mulss xmm7, [_float_0_00003052]
	movsx eax, word [edx+0x6]
	cvtsi2ss xmm1, eax
	mulss xmm1, [_float_0_00003052]
	movzx eax, byte [ebx]
	shl eax, 0x5
	mov edx, ecx
	sub edx, eax
	movaps xmm4, xmm5
	mulss xmm4, [edx+0xc]
	movaps xmm0, xmm1
	mulss xmm0, [edx]
	addss xmm4, xmm0
	movaps xmm0, xmm7
	mulss xmm0, [edx+0x4]
	addss xmm4, xmm0
	movaps xmm0, xmm6
	mulss xmm0, [edx+0x8]
	subss xmm4, xmm0
	movss [ecx], xmm4
	movaps xmm3, xmm6
	mulss xmm3, [edx+0xc]
	movaps xmm0, xmm7
	mulss xmm0, [edx]
	subss xmm3, xmm0
	movaps xmm0, xmm1
	mulss xmm0, [edx+0x4]
	addss xmm3, xmm0
	movaps xmm0, xmm5
	mulss xmm0, [edx+0x8]
	addss xmm3, xmm0
	movss [ecx+0x4], xmm3
	movaps xmm2, xmm7
	mulss xmm2, [edx+0xc]
	movaps xmm0, xmm6
	mulss xmm0, [edx]
	addss xmm2, xmm0
	movaps xmm0, xmm5
	mulss xmm0, [edx+0x4]
	subss xmm2, xmm0
	movaps xmm0, xmm1
	mulss xmm0, [edx+0x8]
	addss xmm2, xmm0
	movss [ecx+0x8], xmm2
	mulss xmm1, [edx+0xc]
	mulss xmm5, [edx]
	subss xmm1, xmm5
	mulss xmm6, [edx+0x4]
	subss xmm1, xmm6
	mulss xmm7, [edx+0x8]
	subss xmm1, xmm7
	movss [ecx+0xc], xmm1
	mulss xmm4, xmm4
	mulss xmm3, xmm3
	addss xmm4, xmm3
	mulss xmm2, xmm2
	addss xmm4, xmm2
	mulss xmm1, xmm1
	addss xmm4, xmm1
	pxor xmm0, xmm0
	ucomiss xmm4, xmm0
	jp _Z10XModelLoadPKcPFPviES3__470
	jz _Z10XModelLoadPKcPFPviES3__480
_Z10XModelLoadPKcPFPviES3__470:
	movss xmm0, dword [_float_2_00000000]
	divss xmm0, xmm4
	movss [ecx+0x1c], xmm0
	jmp _Z10XModelLoadPKcPFPviES3__490
_Z10XModelLoadPKcPFPviES3__290:
	lea ebx, [ebp-0x1614]
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_error_xmodelpart2
	mov dword [esp], 0x13
	call _Z14Com_PrintErroriPKcz
	jmp _Z10XModelLoadPKcPFPviES3__340
_Z10XModelLoadPKcPFPviES3__450:
	cmp byte [ebp-0x167d], 0x0
	jz _Z10XModelLoadPKcPFPviES3__500
_Z10XModelLoadPKcPFPviES3__540:
	mov ecx, [ebp+0xc]
	mov [esp+0x8], ecx
	mov [esp+0x4], esi
	lea ebx, [ebp-0x1614]
	mov [esp], ebx
	call _Z18XModelPartsSetDataPKcP15XModelPartsLoadPFPviE
	jmp _Z10XModelLoadPKcPFPviES3__510
_Z10XModelLoadPKcPFPviES3__370:
	mov ecx, [ebp-0x24]
	mov [ebp-0x28], ecx
	movzx edx, word [ecx]
	mov [ebp-0x2c], dx
	lea eax, [ecx+0x2]
	mov [ebp-0x28], eax
	movsx edi, dx
	cmp dx, 0x19
	jz _Z10XModelLoadPKcPFPviES3__520
	mov [esp], ecx
	call FS_FreeFile
	mov dword [esp+0x10], 0x19
	mov [esp+0xc], edi
	mov ebx, [ebp-0x16b0]
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_error_xmodelsurf1
	mov dword [esp], 0x13
	call _Z14Com_PrintErroriPKcz
	jmp _Z10XModelLoadPKcPFPviES3__530
_Z10XModelLoadPKcPFPviES3__350:
	lea ebx, [ebp-0xe4]
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_error_filename_s
	mov dword [esp], 0x13
	call _Z14Com_PrintErroriPKcz
	jmp _Z10XModelLoadPKcPFPviES3__530
_Z10XModelLoadPKcPFPviES3__380:
	mov eax, [ebp-0x24]
	mov [esp], eax
	call FS_FreeFile
	mov dword [esp+0xc], 0x7f
	lea ebx, [ebp-0x1614]
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_error_xmodel_s_h1
	mov dword [esp], 0x13
	call _Z14Com_PrintErroriPKcz
	jmp _Z10XModelLoadPKcPFPviES3__340
_Z10XModelLoadPKcPFPviES3__280:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_error_filename_s
	mov dword [esp], 0x13
	call _Z14Com_PrintErroriPKcz
	jmp _Z10XModelLoadPKcPFPviES3__340
_Z10XModelLoadPKcPFPviES3__500:
	shl dword [ebp-0x16a4], 0x4
	mov eax, [esi+0x10]
	mov edx, [ebp-0x16a4]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call memset
	jmp _Z10XModelLoadPKcPFPviES3__540
_Z10XModelLoadPKcPFPviES3__400:
	mov ebx, [ebp-0x16a4]
	shl ebx, 0x3
	mov [esp], ebx
	call dword [ebp+0xc]
	mov [esi+0xc], eax
	mov edi, [ebp-0x169c]
	add [edi+0xcc], ebx
	mov ebx, [ebp-0x16a4]
	shl ebx, 0x4
	mov [esp], ebx
	call dword [ebp+0xc]
	mov [esi+0x10], eax
	add [edi+0xcc], ebx
	jmp _Z10XModelLoadPKcPFPviES3__550
_Z10XModelLoadPKcPFPviES3__390:
	mov eax, [ebp-0x16a4]
	mov [esp], eax
	call dword [ebp+0xc]
	mov [ebp-0x1678], eax
	mov edx, [ebp-0x169c]
	mov eax, [edx+0xcc]
	mov ecx, edx
	jmp _Z10XModelLoadPKcPFPviES3__560
_Z10XModelLoadPKcPFPviES3__420:
	mov dword [ebp-0x1674], 0x0
	mov edi, [ebp-0x162c]
_Z10XModelLoadPKcPFPviES3__570:
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	repne scasb
	mov ebx, ecx
	not ebx
	mov dword [esp+0xc], 0xa
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x0
	mov edi, [ebp-0x162c]
	mov [esp], edi
	call SL_GetStringOfSize
	mov edx, [ebp-0x1674]
	mov ecx, [ebp-0x167c]
	mov [ecx+edx*2], ax
	add edi, ebx
	mov [ebp-0x162c], edi
	add edx, 0x1
	mov [ebp-0x1674], edx
	cmp [ebp-0x1670], edx
	jnz _Z10XModelLoadPKcPFPviES3__570
	jmp _Z10XModelLoadPKcPFPviES3__580
_Z10XModelLoadPKcPFPviES3__410:
	mov dword [ebp-0x1634], 0x0
	mov ebx, eax
	jmp _Z10XModelLoadPKcPFPviES3__590
_Z10XModelLoadPKcPFPviES3__610:
	cvtsi2ss xmm0, edx
	sqrtss xmm0, xmm0
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x16a8]
	cvttss2si eax, [ebp-0x16a8]
_Z10XModelLoadPKcPFPviES3__620:
	mov [ebx+0x6], ax
	add edi, 0xc
	add dword [ebp-0x1634], 0x1
	add ebx, 0x8
	mov eax, [ebp-0x1670]
	sub eax, [ebp-0x16a0]
	cmp [ebp-0x1634], eax
	jz _Z10XModelLoadPKcPFPviES3__600
_Z10XModelLoadPKcPFPviES3__590:
	movzx eax, byte [ebp-0x16a0]
	add al, [ebp-0x1634]
	mov ecx, [ebp-0x162c]
	sub al, [ecx]
	mov edx, [ebp-0x1678]
	mov ecx, [ebp-0x1634]
	mov [edx+ecx], al
	mov edx, [ebp-0x162c]
	mov eax, [edx+0x1]
	mov [ebp-0x2c], eax
	mov eax, [ebp-0x2c]
	mov [edi], eax
	mov eax, [edx+0x5]
	mov [ebp-0x2c], eax
	mov eax, [ebp-0x2c]
	mov [edi+0x4], eax
	mov eax, [edx+0x9]
	mov [ebp-0x2c], eax
	mov eax, [ebp-0x2c]
	mov [edi+0x8], eax
	movzx eax, word [edx+0xd]
	mov [ebp-0x2c], ax
	mov [ebx], ax
	movzx eax, word [edx+0xf]
	mov [ebp-0x2c], ax
	mov [ebx+0x2], ax
	movzx eax, word [edx+0x11]
	mov [ebp-0x2c], ax
	add edx, 0x13
	mov [ebp-0x162c], edx
	movsx ecx, ax
	mov [ebx+0x4], ax
	movsx eax, word [ebx]
	movsx edx, word [ebx+0x2]
	imul eax, eax
	imul edx, edx
	add eax, edx
	imul ecx, ecx
	add eax, ecx
	mov edx, 0x3fff0001
	sub edx, eax
	test edx, edx
	jg _Z10XModelLoadPKcPFPviES3__610
	xor eax, eax
	jmp _Z10XModelLoadPKcPFPviES3__620
_Z10XModelLoadPKcPFPviES3__520:
	movzx eax, word [ecx+0x2]
	mov [ebp-0x2c], ax
	lea eax, [ecx+0x4]
	mov [ebp-0x28], eax
	cmp bx, [ebp-0x2c]
	jz _Z10XModelLoadPKcPFPviES3__630
	mov [esp], ecx
	call FS_FreeFile
	mov edi, [ebp+0x8]
	mov [esp+0xc], edi
	mov eax, [ebp-0x16b0]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_file_confl
	mov dword [esp], 0x13
	call _Z14Com_PrintErroriPKcz
	jmp _Z10XModelLoadPKcPFPviES3__530
_Z10XModelLoadPKcPFPviES3__360:
	mov edx, [ebp-0x16b0]
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_error_xmodelsurf2
	mov dword [esp], 0x13
	call _Z14Com_PrintErroriPKcz
	jmp _Z10XModelLoadPKcPFPviES3__530
_Z10XModelLoadPKcPFPviES3__630:
	lea eax, [esi*8]
	mov ebx, esi
	shl ebx, 0x6
	sub ebx, eax
	add ebx, 0x14
	mov [esp], ebx
	call dword [ebp+0xc]
	mov [ebp-0x1624], eax
	mov edx, [ebp-0x169c]
	add [edx+0xcc], ebx
	mov eax, [ebp-0x1624]
	add eax, 0x14
	mov ecx, [ebp-0x1624]
	mov [ecx], eax
	add ecx, 0x4
	mov [ebp-0x1658], ecx
	test esi, esi
	jg _Z10XModelLoadPKcPFPviES3__640
_Z10XModelLoadPKcPFPviES3__680:
	mov eax, [ebp-0x24]
	mov [esp], eax
	call FS_FreeFile
	mov edi, [ebp+0xc]
	mov [esp+0x8], edi
	mov eax, [ebp-0x1624]
	mov [esp+0x4], eax
	mov edx, [ebp-0x16b0]
	mov [esp], edx
	call _Z18XModelSurfsSetDataPKcP11XModelSurfsPFPviE
	mov ebx, [ebp-0x1624]
	mov ecx, [ebx]
	mov [ebp-0x40], ecx
	mov eax, [ebx+0x4]
	mov [ebp-0x3c], eax
	mov eax, [ebx+0x8]
	mov [ebp-0x38], eax
	mov eax, [ebx+0xc]
	mov [ebp-0x34], eax
	mov eax, [ebx+0x10]
	mov [ebp-0x30], eax
	jmp _Z10XModelLoadPKcPFPviES3__650
_Z10XModelLoadPKcPFPviES3__640:
	mov edi, eax
	mov dword [ebp-0x1650], 0x0
	mov dword [ebp-0x164c], 0x0
	mov dword [ebp-0x1654], 0x0
_Z10XModelLoadPKcPFPviES3__670:
	mov [esp+0xc], edi
	mov ebx, [ebp+0xc]
	mov [esp+0x8], ebx
	lea eax, [ebp-0x28]
	mov [esp+0x4], eax
	mov edx, [ebp-0x169c]
	mov [esp], edx
	call _Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface
	mov ecx, edi
	mov ebx, 0x1
	mov edx, [ebp-0x1658]
	add edx, 0x4
_Z10XModelLoadPKcPFPviES3__660:
	mov eax, [edx-0x4]
	or eax, [ecx+0x28]
	mov [edx-0x4], eax
	add ebx, 0x1
	add edx, 0x4
	add ecx, 0x4
	cmp ebx, 0x5
	jnz _Z10XModelLoadPKcPFPviES3__660
	movzx ecx, word [ebp-0x1650]
	mov [edi+0x8], cx
	movzx ebx, word [ebp-0x164c]
	mov [edi+0xa], bx
	movzx eax, word [edi+0x4]
	add [ebp-0x1650], eax
	movzx eax, word [edi+0x2]
	add [ebp-0x164c], eax
	add dword [ebp-0x1654], 0x1
	add edi, 0x38
	cmp esi, [ebp-0x1654]
	jnz _Z10XModelLoadPKcPFPviES3__670
	jmp _Z10XModelLoadPKcPFPviES3__680
	nop


;XModelGetFlags(XModel const*)
_Z14XModelGetFlagsPK6XModel:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	movzx eax, byte [eax+0xd0]
	pop ebp
	ret
	nop


;R_GetXModelBounds(XModel*, float const (*) [3], float*, float*)
_Z17R_GetXModelBoundsP6XModelPA3_KfPfS4_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov eax, 0x7f7fffff
	mov edx, [ebp+0x10]
	mov [edx], eax
	mov [edx+0x4], eax
	mov [edx+0x8], eax
	mov eax, 0xff7fffff
	mov edx, [ebp+0x14]
	mov [edx], eax
	mov [edx+0x4], eax
	mov [edx+0x8], eax
	mov dword [esp+0x8], 0x0
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z17XModelGetSurfacesPK6XModelPP8XSurfacei
	mov [ebp-0x40], eax
	mov dword [esp], 0x60000
	call Hunk_AllocateTempMemory
	mov [ebp-0x3c], eax
	mov edx, [ebp-0x40]
	test edx, edx
	jg _Z17R_GetXModelBoundsP6XModelPA3_KfPfS4__10
	mov [esp], eax
	call Hunk_FreeTempMemory
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z17R_GetXModelBoundsP6XModelPA3_KfPfS4__10:
	mov dword [ebp-0x38], 0x0
	mov dword [ebp-0x2c], 0x0
	mov eax, [ebp+0xc]
	add eax, 0xc
	mov [ebp-0x44], eax
	mov edx, [ebp+0xc]
	add edx, 0x18
	mov [ebp-0x48], edx
_Z17R_GetXModelBoundsP6XModelPA3_KfPfS4__70:
	mov ebx, [ebp-0x2c]
	add ebx, [ebp-0x1c]
	mov [esp], ebx
	call _Z19XSurfaceGetNumVertsPK8XSurface
	mov [ebp-0x30], eax
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	mov eax, [ebp-0x3c]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z16XSurfaceGetVertsPK8XSurfacePfS2_S2_
	mov eax, [ebp-0x30]
	test eax, eax
	jle _Z17R_GetXModelBoundsP6XModelPA3_KfPfS4__20
	mov esi, [ebp-0x3c]
	mov dword [ebp-0x34], 0x0
_Z17R_GetXModelBoundsP6XModelPA3_KfPfS4__60:
	mov ebx, [ebp+0xc]
	mov ecx, [ebp-0x44]
	mov edi, 0x1
_Z17R_GetXModelBoundsP6XModelPA3_KfPfS4__50:
	movss xmm1, dword [esi]
	mulss xmm1, [ebx]
	movss xmm0, dword [esi+0x4]
	mulss xmm0, [ecx]
	addss xmm1, xmm0
	lea eax, [edi*4]
	movss xmm0, dword [esi+0x8]
	mov edx, [ebp-0x48]
	mulss xmm0, [edx+eax-0x4]
	addss xmm1, xmm0
	mov edx, [ebp+0x10]
	add edx, eax
	movss xmm0, dword [edx-0x4]
	ucomiss xmm0, xmm1
	jbe _Z17R_GetXModelBoundsP6XModelPA3_KfPfS4__30
	movss [edx-0x4], xmm1
_Z17R_GetXModelBoundsP6XModelPA3_KfPfS4__30:
	add eax, [ebp+0x14]
	ucomiss xmm1, [eax-0x4]
	jbe _Z17R_GetXModelBoundsP6XModelPA3_KfPfS4__40
	movss [eax-0x4], xmm1
_Z17R_GetXModelBoundsP6XModelPA3_KfPfS4__40:
	add edi, 0x1
	add ebx, 0x4
	add ecx, 0x4
	cmp edi, 0x4
	jnz _Z17R_GetXModelBoundsP6XModelPA3_KfPfS4__50
	add dword [ebp-0x34], 0x1
	add esi, 0xc
	mov eax, [ebp-0x34]
	cmp [ebp-0x30], eax
	jnz _Z17R_GetXModelBoundsP6XModelPA3_KfPfS4__60
_Z17R_GetXModelBoundsP6XModelPA3_KfPfS4__20:
	add dword [ebp-0x38], 0x1
	add dword [ebp-0x2c], 0x38
	mov edx, [ebp-0x38]
	cmp [ebp-0x40], edx
	jnz _Z17R_GetXModelBoundsP6XModelPA3_KfPfS4__70
	mov eax, [ebp-0x3c]
	mov [esp], eax
	call Hunk_FreeTempMemory
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;XModelPiecesLoadFile(char const*, void* (*)(int))
_Z20XModelPiecesLoadFilePKcPFPviE:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xcc
	mov edi, [ebp+0x8]
	mov [esp+0xc], edi
	mov dword [esp+0x8], _cstring_xmodelpiecess
	mov dword [esp+0x4], 0x40
	lea eax, [ebp-0xa0]
	mov [esp], eax
	call _Z11Com_sprintfPciPKcz
	test eax, eax
	js _Z20XModelPiecesLoadFilePKcPFPviE_10
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	lea ecx, [ebp-0xa0]
	mov [esp], ecx
	call FS_ReadFile
	cmp eax, 0x0
	jl _Z20XModelPiecesLoadFilePKcPFPviE_20
	jz _Z20XModelPiecesLoadFilePKcPFPviE_30
	mov ebx, [ebp-0x1c]
	movzx eax, word [ebx]
	mov [ebp-0x20], ax
	movsx esi, ax
	sub ax, 0x1
	jnz _Z20XModelPiecesLoadFilePKcPFPviE_40
	mov dword [esp], 0xc
	call dword [ebp+0xc]
	mov [ebp-0xb4], eax
	movsx eax, word [ebx+0x2]
	mov [ebp-0x20], ax
	add ebx, 0x4
	mov [ebp-0xac], ebx
	mov edx, [ebp-0xb4]
	mov [edx+0x4], eax
	shl eax, 0x4
	mov [esp], eax
	call dword [ebp+0xc]
	mov ecx, [ebp-0xb4]
	mov [ecx+0x8], eax
	mov eax, [ecx+0x4]
	test eax, eax
	jle _Z20XModelPiecesLoadFilePKcPFPviE_50
	mov dword [ebp-0xb0], 0x0
	mov esi, [ebp-0xb0]
	mov eax, [ebp-0xb4]
	jmp _Z20XModelPiecesLoadFilePKcPFPviE_60
_Z20XModelPiecesLoadFilePKcPFPviE_90:
	mov esi, edx
_Z20XModelPiecesLoadFilePKcPFPviE_60:
	shl esi, 0x4
	add esi, [eax+0x8]
	cld
	mov ecx, 0xffffffff
	mov edi, [ebp-0xac]
	xor eax, eax
	repne scasb
	mov ebx, ecx
	not ebx
	cmp ebx, 0x40
	jg _Z20XModelPiecesLoadFilePKcPFPviE_70
	mov eax, [ebp-0xac]
	mov [esp+0x4], eax
	lea edx, [ebp-0x60]
	mov [esp], edx
	call strcpy
	add ebx, [ebp-0xac]
	lea ecx, [ebp-0x60]
	mov [esp], ecx
	call _Z15R_RegisterModelPKc
	mov [esi], eax
	test eax, eax
	jz _Z20XModelPiecesLoadFilePKcPFPviE_80
	mov eax, [ebx]
	mov [ebp-0x20], eax
	mov eax, [ebp-0x20]
	mov [esi+0x4], eax
	mov eax, [ebx+0x4]
	mov [ebp-0x20], eax
	mov eax, [ebp-0x20]
	mov [esi+0x8], eax
	mov eax, [ebx+0x8]
	mov [ebp-0x20], eax
	add ebx, 0xc
	mov [ebp-0xac], ebx
	mov eax, [ebp-0x20]
	mov [esi+0xc], eax
	add dword [ebp-0xb0], 0x1
	mov edx, [ebp-0xb0]
	mov eax, [ebp-0xb4]
	cmp edx, [eax+0x4]
	jl _Z20XModelPiecesLoadFilePKcPFPviE_90
_Z20XModelPiecesLoadFilePKcPFPviE_50:
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call FS_FreeFile
_Z20XModelPiecesLoadFilePKcPFPviE_120:
	mov eax, [ebp-0xb4]
	add esp, 0xcc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z20XModelPiecesLoadFilePKcPFPviE_40:
	mov [esp], ebx
	call FS_FreeFile
	mov dword [esp+0x10], 0x1
	mov [esp+0xc], esi
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_error_xmodelpiec
	mov dword [esp], 0x13
	call _Z14Com_PrintErroriPKcz
	mov dword [ebp-0xb4], 0x0
	mov eax, [ebp-0xb4]
	add esp, 0xcc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z20XModelPiecesLoadFilePKcPFPviE_30:
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_error_xmodelpiec1
_Z20XModelPiecesLoadFilePKcPFPviE_100:
	mov dword [esp], 0x13
_Z20XModelPiecesLoadFilePKcPFPviE_110:
	call _Z14Com_PrintErroriPKcz
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call FS_FreeFile
	mov dword [ebp-0xb4], 0x0
	mov eax, [ebp-0xb4]
	add esp, 0xcc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z20XModelPiecesLoadFilePKcPFPviE_70:
	mov eax, [ebp-0xac]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_piecename_
	jmp _Z20XModelPiecesLoadFilePKcPFPviE_100
_Z20XModelPiecesLoadFilePKcPFPviE_80:
	lea edx, [ebp-0xa0]
	mov [esp+0xc], edx
	lea ecx, [ebp-0x60]
	mov [esp+0x8], ecx
	mov dword [esp+0x4], _cstring_error_xmodel_pie
	mov dword [esp], 0x1
	jmp _Z20XModelPiecesLoadFilePKcPFPviE_110
_Z20XModelPiecesLoadFilePKcPFPviE_10:
	lea edx, [ebp-0xa0]
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_error_filename_s
	mov dword [esp], 0x13
	call _Z14Com_PrintErroriPKcz
	mov dword [ebp-0xb4], 0x0
	jmp _Z20XModelPiecesLoadFilePKcPFPviE_120
_Z20XModelPiecesLoadFilePKcPFPviE_20:
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_error_xmodelpiec2
	mov dword [esp], 0x13
	call _Z14Com_PrintErroriPKcz
	mov dword [ebp-0xb4], 0x0
	jmp _Z20XModelPiecesLoadFilePKcPFPviE_120
	nop


;XModelPiecesPrecache(char const*, void* (*)(int))
_Z20XModelPiecesPrecachePKcPFPviE:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov [esp+0x4], esi
	mov dword [esp], 0x8
	call Hunk_FindDataForFile
	mov ebx, eax
	test eax, eax
	jz _Z20XModelPiecesPrecachePKcPFPviE_10
_Z20XModelPiecesPrecachePKcPFPviE_30:
	mov eax, ebx
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z20XModelPiecesPrecachePKcPFPviE_10:
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z20XModelPiecesLoadFilePKcPFPviE
	mov ebx, eax
	test eax, eax
	jz _Z20XModelPiecesPrecachePKcPFPviE_20
	mov eax, [ebp+0xc]
	mov [esp+0xc], eax
	mov [esp+0x8], ebx
	mov [esp+0x4], esi
	mov dword [esp], 0x8
	call Hunk_SetDataForFile
	mov [ebx], eax
	mov eax, ebx
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z20XModelPiecesPrecachePKcPFPviE_20:
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_error_cannot_fin2
	mov dword [esp], 0x14
	call _Z14Com_PrintErroriPKcz
	jmp _Z20XModelPiecesPrecachePKcPFPviE_30


;XModelCopyXModelParts(XModelPartsLoad const*, XModel*)
_Z21XModelCopyXModelPartsPK15XModelPartsLoadP6XModel:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	mov ecx, [ebp+0xc]
	movzx eax, byte [edx]
	mov [ecx+0x4], al
	movzx eax, byte [edx+0x1]
	mov [ecx+0x5], al
	mov eax, [edx+0x4]
	mov [ecx+0x8], eax
	mov eax, [edx+0x8]
	mov [ecx+0xc], eax
	mov eax, [edx+0xc]
	mov [ecx+0x10], eax
	mov eax, [edx+0x10]
	mov [ecx+0x14], eax
	mov eax, [edx+0x14]
	mov [ecx+0x18], eax
	mov eax, [edx+0x18]
	mov [ecx+0x1c], eax
	pop ebp
	ret


;XModelGetStaticBounds(XModel const*, float (*) [3], float*, float*)
_Z21XModelGetStaticBoundsPK6XModelPA3_fPfS4_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov eax, [ebp+0x8]
	mov ebx, [eax+0x9c]
	test ebx, ebx
	jz _Z21XModelGetStaticBoundsPK6XModelPA3_fPfS4__10
	mov eax, 0x7f7fffff
	mov edx, [ebp+0x10]
	mov [edx], eax
	mov [edx+0x4], eax
	mov [edx+0x8], eax
	mov eax, 0xff7fffff
	mov edx, [ebp+0x14]
	mov [edx], eax
	mov [edx+0x4], eax
	mov [edx+0x8], eax
	mov eax, [ebp+0x8]
	mov ecx, [eax+0x9c]
	test ecx, ecx
	jle _Z21XModelGetStaticBoundsPK6XModelPA3_fPfS4__20
	mov edx, [ebp+0xc]
	add edx, 0xc
	mov [ebp-0x24], edx
	mov edi, [ebp+0xc]
	add edi, 0x18
	mov dword [ebp-0x28], 0x0
	mov dword [ebp-0x20], 0x0
_Z21XModelGetStaticBoundsPK6XModelPA3_fPfS4__100:
	mov ebx, [ebp-0x20]
	mov eax, [ebp+0x8]
	add ebx, [eax+0x98]
	xor esi, esi
_Z21XModelGetStaticBoundsPK6XModelPA3_fPfS4__90:
	test esi, 0x1
	jz _Z21XModelGetStaticBoundsPK6XModelPA3_fPfS4__30
	movss xmm2, dword [ebx+0x8]
_Z21XModelGetStaticBoundsPK6XModelPA3_fPfS4__130:
	test esi, 0x2
	jz _Z21XModelGetStaticBoundsPK6XModelPA3_fPfS4__40
	movss xmm4, dword [ebx+0xc]
_Z21XModelGetStaticBoundsPK6XModelPA3_fPfS4__120:
	test esi, 0x4
	jz _Z21XModelGetStaticBoundsPK6XModelPA3_fPfS4__50
	movss xmm3, dword [ebx+0x10]
_Z21XModelGetStaticBoundsPK6XModelPA3_fPfS4__110:
	movaps xmm0, xmm2
	mov edx, [ebp+0xc]
	mulss xmm0, [edx]
	movaps xmm1, xmm4
	mov eax, [ebp-0x24]
	mulss xmm1, [eax]
	addss xmm0, xmm1
	movaps xmm1, xmm3
	mulss xmm1, [edi]
	addss xmm0, xmm1
	movss [ebp-0x18], xmm0
	movaps xmm0, xmm2
	mulss xmm0, [edx+0x4]
	movaps xmm1, xmm4
	mulss xmm1, [eax+0x4]
	addss xmm0, xmm1
	movaps xmm1, xmm3
	mulss xmm1, [edi+0x4]
	addss xmm0, xmm1
	movss [ebp-0x14], xmm0
	mulss xmm2, [edx+0x8]
	mulss xmm4, [eax+0x8]
	addss xmm2, xmm4
	mulss xmm3, [edi+0x8]
	addss xmm2, xmm3
	movss [ebp-0x10], xmm2
	mov ecx, 0x1
_Z21XModelGetStaticBoundsPK6XModelPA3_fPfS4__80:
	lea eax, [ecx*4]
	mov edx, [ebp+0x10]
	add edx, eax
	movss xmm1, dword [ebp+eax-0x1c]
	movss xmm0, dword [edx-0x4]
	ucomiss xmm0, xmm1
	jbe _Z21XModelGetStaticBoundsPK6XModelPA3_fPfS4__60
	movss [edx-0x4], xmm1
_Z21XModelGetStaticBoundsPK6XModelPA3_fPfS4__60:
	add eax, [ebp+0x14]
	ucomiss xmm1, [eax-0x4]
	jbe _Z21XModelGetStaticBoundsPK6XModelPA3_fPfS4__70
	movss [eax-0x4], xmm1
_Z21XModelGetStaticBoundsPK6XModelPA3_fPfS4__70:
	add ecx, 0x1
	cmp ecx, 0x4
	jnz _Z21XModelGetStaticBoundsPK6XModelPA3_fPfS4__80
	add esi, 0x1
	cmp esi, 0x8
	jnz _Z21XModelGetStaticBoundsPK6XModelPA3_fPfS4__90
	add dword [ebp-0x28], 0x1
	add dword [ebp-0x20], 0x2c
	mov eax, [ebp-0x28]
	mov edx, [ebp+0x8]
	cmp eax, [edx+0x9c]
	jl _Z21XModelGetStaticBoundsPK6XModelPA3_fPfS4__100
_Z21XModelGetStaticBoundsPK6XModelPA3_fPfS4__20:
	mov eax, 0x1
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z21XModelGetStaticBoundsPK6XModelPA3_fPfS4__50:
	movss xmm3, dword [ebx+0x1c]
	jmp _Z21XModelGetStaticBoundsPK6XModelPA3_fPfS4__110
_Z21XModelGetStaticBoundsPK6XModelPA3_fPfS4__40:
	movss xmm4, dword [ebx+0x18]
	jmp _Z21XModelGetStaticBoundsPK6XModelPA3_fPfS4__120
_Z21XModelGetStaticBoundsPK6XModelPA3_fPfS4__30:
	movss xmm2, dword [ebx+0x14]
	jmp _Z21XModelGetStaticBoundsPK6XModelPA3_fPfS4__130
_Z21XModelGetStaticBoundsPK6XModelPA3_fPfS4__10:
	xor eax, eax
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Initialized global or static variables of xmodel_load_obj:
SECTION .data


;Initialized constant data of xmodel_load_obj:
SECTION .rdata


;Zero initialized global or static variables of xmodel_load_obj:
SECTION .bss


;All cstrings:
SECTION .rdata
_cstring_xmodels:		db "xmodel/%s",0
_cstring_error_xmodel_s_o:		db "ERROR: xmodel ",27h,"%s",27h," out of date (version %d, expecting %d).",0ah,0
_cstring_default:		db "$default",0
_cstring_default3d:		db "$default3d",0
_cstring_mc:		db "mc/",0
_cstring_ss:		db "%s%s",0
_cstring_error_remove_xmo:		db "ERROR: Remove xmodel prefix from model name ",27h,"%s",27h,0ah,0
_cstring_error_xmodel_s_h:		db "ERROR: xmodel ",27h,"%s",27h," has 0 length",0ah,0
_cstring_xmodelpartss:		db "xmodelparts/%s",0
_cstring_error_xmodelpart:		db "ERROR: xmodelparts ",27h,"%s",27h," has 0 length",0ah,0
_cstring_error_cannot_fin:		db "ERROR: Cannot find xmodelparts ",27h,"%s",27h,".",0ah,0
_cstring_error_filename_s:		db "ERROR: filename ",27h,"%s",27h," too long",0ah,0
_cstring_error_xmodelpart1:		db "ERROR: xmodelparts ",27h,"%s",27h," out of date (version %d, expecting %d).",0ah,0
_cstring_error_xmodel_s_n:		db "ERROR: xmodel ",27h,"%s",27h," not found",0ah,0
_cstring_xmodelsurfss:		db "xmodelsurfs/%s",0
_cstring_error_xmodelsurf:		db "ERROR: xmodelsurf ",27h,"%s",27h," has 0 length",0ah,0
_cstring_error_cannot_fin1:		db "ERROR: Cannot find ",27h,"xmodelsurfs ",27h,"%s",27h,".",0ah,0
_cstring_error_xmodelpart2:		db "ERROR: xmodelparts ",27h,"%s",27h," not found",0ah,0
_cstring_error_xmodelsurf1:		db "ERROR: xmodelsurfs ",27h,"%s",27h," out of date (version %d, expecting %d).",0ah,0
_cstring_error_xmodel_s_h1:		db "ERROR: xmodel ",27h,"%s",27h," has more than %d bones",0ah,0
_cstring_error_file_confl:		db "ERROR: File conflict (between non-iwd and iwd file) on xmodelsurfs ",27h,"%s",27h," for xmodel ",27h,"%s",27h,".",0ah,"Rename the export file to fix.",0ah,0
_cstring_error_xmodelsurf2:		db "ERROR: xmodelsurf ",27h,"%s",27h," not found",0ah,0
_cstring_xmodelpiecess:		db "xmodelpieces/%s",0
_cstring_error_xmodelpiec:		db "ERROR: xmodelpieces ",27h,"%s",27h," out of date (version %d, expecting %d).",0ah,0
_cstring_error_xmodelpiec1:		db "ERROR: xmodelpieces ",27h,"%s",27h," has 0 length",0ah,0
_cstring_error_piecename_:		db "ERROR: piecename ",27h,"%s",27h," too long",0ah,0
_cstring_error_xmodel_pie:		db "ERROR: xmodel piece ",27h,"%s",27h," missing from pieces model ",27h,"s%",27h,0ah,0
_cstring_error_xmodelpiec2:		db "ERROR: xmodelpieces ",27h,"%s",27h," not found",0ah,0
_cstring_error_cannot_fin2:		db "ERROR: Cannot find xmodel pieces ",27h,"%s",27h,".",0ah,0



;All constant floats and doubles:
SECTION .rdata
_float_0_00100000:		dd 0x3a83126f	; 0.001
_float_1000000_00000000:		dd 0x49742400	; 1e+06
_float_0_50000000:		dd 0x3f000000	; 0.5
_float_1_00000000:		dd 0x3f800000	; 1
_float_0_00003052:		dd 0x38000100	; 3.05185e-05
_float_2_00000000:		dd 0x40000000	; 2

