;Imports of r_xsurface_load_obj:
	extern Hunk_AllocateTempMemory
	extern memcpy
	extern _Z16XSurfaceTransferPK13XVertexBufferP15GfxPackedVertexS3_i
	extern Hunk_FreeTempMemory
	extern r_modelVertColor
	extern malloc
	extern ClearBounds
	extern _Z16AddPointToBoundsPKfPfS1_
	extern _Z12ExpandBoundsPKfS0_PfS1_
	extern _Z13BuildAabbTreePK22GenericAabbTreeOptions
	extern free

;Exports of r_xsurface_load_obj:
	global _Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface
	global _Z36XModelReadSurface_BuildCollisionTreeP8XSurfacejPFPviE


SECTION .text


;XModelReadSurface(XModel*, unsigned char const**, void* (*)(int), XSurface*)
_Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x69c
	mov esi, [ebp+0xc]
	mov dword [ebp-0x2c], 0x0
	mov dword [ebp-0x28], 0x0
	mov dword [ebp-0x24], 0x0
	mov dword [ebp-0x20], 0x0
	mov eax, [esi]
	movzx eax, byte [eax]
	mov edx, [ebp+0x14]
	mov [edx], al
	mov eax, [esi]
	lea edx, [eax+0x1]
	mov [esi], edx
	movzx edx, word [eax+0x1]
	mov [ebp-0x1c], dx
	lea edx, [eax+0x3]
	mov [esi], edx
	movzx edx, word [eax+0x3]
	mov [ebp-0x1c], dx
	add eax, 0x5
	mov [esi], eax
	mov ecx, [ebp+0x14]
	mov [ecx+0x2], dx
	mov eax, [esi]
	movzx edx, word [eax]
	mov [ebp-0x1c], dx
	add eax, 0x2
	mov [esi], eax
	mov [ecx+0x4], dx
	mov dword [ebp-0x674], 0x0
	xor edi, edi
	lea ebx, [ebp-0x638]
	jmp _Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_10
_Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_20:
	movsx eax, word [ecx+0x2]
	mov [ebp-0x1c], ax
	lea edx, [ecx+0x4]
	mov [esi], edx
	shl eax, 0x6
	mov [ebx], ax
	movzx eax, word [ebx+0x2]
	add edi, eax
	add dword [ebp-0x674], 0x1
	add ebx, 0xc
_Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_10:
	mov ecx, [esi]
	movzx edx, word [ecx]
	mov [ebp-0x1c], dx
	lea eax, [ecx+0x2]
	mov [esi], eax
	mov [ebx+0x2], dx
	test dx, dx
	jnz _Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_20
	mov eax, [ebp+0x14]
	movzx ebx, word [eax+0x2]
	cmp ebx, edi
	setnz byte [ebp-0x675]
	cmp byte [ebp-0x675], 0x0
	mov eax, 0x0
	cmovz eax, [ebp-0x674]
	mov [ebp-0x674], eax
	movzx edx, byte [ebp-0x675]
	mov ecx, [ebp+0x14]
	mov [ecx+0x1], dl
	sub eax, 0x1
	jz _Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_30
	mov eax, [esi]
	movsx edx, word [eax]
	mov [ebp-0x1c], dx
	add eax, 0x2
	mov [esi], eax
	mov eax, edx
	movzx ebx, word [ecx+0x2]
	shl ebx, 0x4
	lea eax, [ebx+eax]
	shl eax, 0x2
	mov [esp], eax
	call Hunk_AllocateTempMemory
	mov [ebp-0x67c], eax
	mov edi, eax
	mov ebx, [ebp+0x14]
	cmp word [ebx+0x2], 0x0
	jnz _Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_40
_Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_390:
	mov ecx, ebx
_Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_470:
	movzx eax, word [ecx+0x4]
	lea ebx, [eax+0x1]
	and ebx, 0xfffffffe
	mov [ebp-0x680], ebx
	lea eax, [eax+eax*2]
	lea eax, [eax+eax+0x6]
	mov [esp], eax
	call dword [ebp+0x10]
	mov edx, [ebp+0x14]
	mov [edx+0xc], eax
	movzx ebx, word [edx+0x4]
	lea eax, [ebx+ebx*2]
	test eax, eax
	jg _Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_50
	mov dword [ebp-0x684], 0x0
_Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_500:
	mov esi, [ebp-0x674]
	test esi, esi
	jle _Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_60
	mov dword [ebp-0x640], 0x0
	xor edi, edi
	mov dword [ebp-0x650], 0x0
	lea ecx, [ebp-0x638]
	mov [ebp-0x64c], ecx
	mov esi, ecx
	mov [esi+0x4], di
	movzx eax, word [esi+0x2]
	add [ebp-0x650], eax
	cmp edi, ebx
	jge _Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_70
_Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_100:
	mov eax, [ebp+0x14]
	mov ecx, [eax+0xc]
	lea eax, [edi+edi*2]
	lea edx, [eax+eax]
	movzx eax, word [edx+ecx]
	cmp [ebp-0x650], eax
	jle _Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_70
	lea ecx, [edx+ecx]
	mov edx, edi
	mov esi, ebx
_Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_90:
	add edx, 0x1
	cmp esi, edx
	jz _Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_80
	movzx eax, word [ecx+0x6]
	add ecx, 0x6
	cmp [ebp-0x650], eax
	jg _Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_90
_Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_80:
	mov eax, edx
	sub ax, di
	mov edi, edx
_Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_110:
	mov edx, [ebp-0x64c]
	mov [edx+0x6], ax
	add dword [ebp-0x640], 0x1
	add edx, 0xc
	mov [ebp-0x64c], edx
	mov ecx, [ebp-0x640]
	cmp [ebp-0x674], ecx
	jz _Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_60
	mov esi, edx
	mov [esi+0x4], di
	movzx eax, word [esi+0x2]
	add [ebp-0x650], eax
	cmp edi, ebx
	jl _Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_100
_Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_70:
	xor eax, eax
	jmp _Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_110
_Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_60:
	cmp [ebp-0x680], ebx
	jz _Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_120
	mov ebx, [ebp+0x14]
	mov ecx, [ebx+0xc]
	mov eax, [ebp-0x684]
	add eax, eax
	movzx edx, word [ecx+eax-0x2]
	mov [ecx+eax], dx
	mov ecx, eax
	add ecx, [ebx+0xc]
	movzx edx, word [ecx-0x2]
	mov [ecx+0x2], dx
	add eax, [ebx+0xc]
	movzx edx, word [eax-0x2]
	mov [eax+0x4], dx
	add word [ebx+0x4], 0x1
_Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_120:
	mov ebx, [ebp-0x674]
	test ebx, ebx
	jnz _Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_130
	xor eax, eax
	xor ebx, ebx
_Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_480:
	mov edx, [ebp+0x14]
	mov [edx+0x24], eax
	mov ecx, [ebp-0x674]
	mov [edx+0x20], ecx
	mov [esp+0x8], ebx
	lea ebx, [ebp-0x638]
	mov [esp+0x4], ebx
	mov [esp], eax
	call memcpy
	mov esi, [ebp+0x14]
	movzx ebx, word [esi+0x2]
	shl ebx, 0x5
	mov [esp], ebx
	call dword [ebp+0x10]
	mov [esi+0x1c], eax
	mov eax, [ebp+0x8]
	add [eax+0xcc], ebx
	mov edx, [esi+0x1c]
	movzx eax, word [esi+0x2]
	mov [esp+0xc], eax
	mov [esp+0x8], edx
	mov [esp+0x4], edx
	mov edx, [ebp-0x67c]
	mov [esp], edx
	call _Z16XSurfaceTransferPK13XVertexBufferP15GfxPackedVertexS3_i
	cmp byte [ebp-0x675], 0x0
	jz _Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_140
	mov eax, [ebp-0x2c]
	test eax, eax
	jnz _Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_150
	mov dword [ebp-0x660], 0x0
	mov eax, [ebp-0x28]
	test eax, eax
	jnz _Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_160
_Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_530:
	mov dword [ebp-0x65c], 0x0
	mov eax, [ebp-0x24]
	test eax, eax
	jnz _Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_170
_Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_540:
	mov dword [ebp-0x658], 0x0
	mov edx, [ebp-0x20]
	test edx, edx
	jnz _Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_180
_Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_550:
	mov dword [ebp-0x654], 0x0
_Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_560:
	mov edx, [ebp+0x14]
	mov ecx, 0x1
	lea ebx, [ebp-0x2c]
_Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_190:
	mov eax, [ebx+ecx*4-0x4]
	mov [edx+0x10], ax
	add ecx, 0x1
	add edx, 0x2
	cmp ecx, 0x5
	jnz _Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_190
	mov edi, [ebp-0x67c]
	mov ecx, [ebp+0x14]
	cmp word [ecx+0x2], 0x0
	jz _Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_200
	mov ebx, [ebp-0x660]
	mov [ebp-0x670], ebx
	mov esi, [ebp-0x65c]
	mov [ebp-0x66c], esi
	mov eax, [ebp-0x658]
	mov [ebp-0x668], eax
	mov edx, [ebp-0x654]
	mov [ebp-0x664], edx
	mov dword [ebp-0x63c], 0x0
_Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_260:
	movzx eax, byte [edi+0x3c]
	cmp al, 0x1
	jz _Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_210
	jb _Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_220
	cmp al, 0x2
	jz _Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_230
	mov edx, [ebp-0x664]
	lea ecx, [edx+0x2]
	lea ebx, [edx+0xe]
	mov [ebp-0x664], ebx
_Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_380:
	movzx eax, word [edi+0x3e]
	mov [edx], ax
	movzx eax, byte [edi+0x3c]
	add edi, 0x40
	test al, al
	jz _Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_240
	movzx esi, al
	test esi, esi
	jle _Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_240
	mov edx, edi
	xor ebx, ebx
_Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_250:
	movzx eax, word [edx]
	mov [ecx], ax
	movzx eax, word [edx+0x2]
	mov [ecx+0x2], ax
	add ecx, 0x4
	add edx, 0x4
	add ebx, 0x1
	cmp ebx, esi
	jnz _Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_250
	mov edi, edx
_Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_240:
	add dword [ebp-0x63c], 0x1
	mov edx, [ebp+0x14]
	movzx eax, word [edx+0x2]
	cmp [ebp-0x63c], eax
	jl _Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_260
	mov ebx, edx
_Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_520:
	movsx ecx, word [ebx+0x10]
	movsx edx, word [ebx+0x14]
	lea edx, [edx+edx*4]
	movsx eax, word [ebx+0x12]
	lea eax, [eax+eax*2]
	add edx, eax
	add ecx, edx
	movsx edx, word [ebx+0x16]
	lea eax, [edx*8]
	sub eax, edx
	add ecx, eax
	mov ebx, ecx
	add ebx, ebx
	jnz _Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_270
	xor ecx, ecx
_Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_650:
	mov esi, [ebp+0x8]
	add [esi+0xcc], ebx
	mov eax, [ebp+0x14]
	mov [eax+0x18], ecx
	cmp word [eax+0x10], 0x0
	jz _Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_280
	jg _Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_290
_Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_280:
	mov eax, [ebp+0x14]
_Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_580:
	cmp word [eax+0x12], 0x0
	jz _Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_300
	jg _Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_310
_Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_300:
	mov eax, [ebp+0x14]
_Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_640:
	cmp word [eax+0x14], 0x0
	jz _Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_320
	jg _Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_330
_Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_320:
	mov eax, [ebp+0x14]
_Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_620:
	cmp word [eax+0x16], 0x0
	jz _Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_140
	jg _Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_340
_Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_140:
	mov eax, [ebp+0x14]
_Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_600:
	mov ecx, [eax+0x20]
	test ecx, ecx
	jz _Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_350
	xor ebx, ebx
	mov ecx, [ebp+0x14]
	jmp _Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_360
_Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_370:
	mov ecx, esi
_Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_360:
	mov edx, [ebp+0x10]
	mov [esp+0x8], edx
	mov [esp+0x4], ebx
	mov [esp], ecx
	call _Z36XModelReadSurface_BuildCollisionTreeP8XSurfacejPFPviE
	add ebx, 0x1
	mov esi, [ebp+0x14]
	cmp ebx, [esi+0x20]
	jnz _Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_370
_Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_350:
	mov eax, [ebp-0x67c]
	mov [esp], eax
	call Hunk_FreeTempMemory
	add esp, 0x69c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_220:
	mov edx, [ebp-0x670]
	mov esi, edx
	add esi, 0x2
	mov [ebp-0x670], esi
	xor ecx, ecx
	jmp _Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_380
_Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_210:
	mov edx, [ebp-0x66c]
	lea ecx, [edx+0x2]
	lea eax, [edx+0x6]
	mov [ebp-0x66c], eax
	jmp _Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_380
_Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_30:
	movzx ecx, word [ebp-0x638]
	shr cx, 0x6
	movzx ecx, cx
	mov edx, ecx
	sar edx, 0x5
	and ecx, 0x1f
	mov eax, 0x80000000
	shr eax, cl
	mov ecx, [ebp+0x14]
	or [ecx+edx*4+0x28], eax
	xor eax, eax
	shl ebx, 0x4
	lea eax, [ebx+eax]
	shl eax, 0x2
	mov [esp], eax
	call Hunk_AllocateTempMemory
	mov [ebp-0x67c], eax
	mov edi, eax
	mov ebx, [ebp+0x14]
	cmp word [ebx+0x2], 0x0
	jz _Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_390
_Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_40:
	mov dword [ebp-0x688], 0x0
	lea eax, [ebx+0x28]
	mov [ebp-0x690], eax
	jmp _Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_400
_Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_450:
	mov dword [edi+0xc], 0xffffffff
_Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_460:
	mov eax, [esi]
	lea edx, [eax+0x4]
	mov [esi], edx
	mov edx, [eax+0x4]
	mov [ebp-0x1c], edx
	add eax, 0x8
	mov [esi], eax
	mov eax, [ebp-0x1c]
	mov [edi+0x1c], eax
	mov eax, [esi]
	mov edx, [eax]
	mov [ebp-0x1c], edx
	add eax, 0x4
	mov [esi], eax
	mov eax, [ebp-0x1c]
	mov [edi+0x2c], eax
	mov eax, [esi]
	mov edx, [eax]
	mov [ebp-0x1c], edx
	add eax, 0x4
	mov [esi], eax
	mov eax, [ebp-0x1c]
	mov [edi+0x10], eax
	mov eax, [esi]
	mov edx, [eax]
	mov [ebp-0x1c], edx
	add eax, 0x4
	mov [esi], eax
	mov eax, [ebp-0x1c]
	mov [edi+0x14], eax
	mov eax, [esi]
	mov edx, [eax]
	mov [ebp-0x1c], edx
	add eax, 0x4
	mov [esi], eax
	mov eax, [ebp-0x1c]
	mov [edi+0x18], eax
	mov eax, [esi]
	mov edx, [eax]
	mov [ebp-0x1c], edx
	add eax, 0x4
	mov [esi], eax
	mov eax, [ebp-0x1c]
	mov [edi+0x20], eax
	mov eax, [esi]
	mov edx, [eax]
	mov [ebp-0x1c], edx
	add eax, 0x4
	mov [esi], eax
	mov eax, [ebp-0x1c]
	mov [edi+0x24], eax
	mov eax, [esi]
	mov edx, [eax]
	mov [ebp-0x1c], edx
	add eax, 0x4
	mov [esi], eax
	mov eax, [ebp-0x1c]
	mov [edi+0x28], eax
	cmp dword [ebp-0x674], 0x1
	jz _Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_410
	mov eax, [esi]
	movzx ecx, byte [eax]
	mov [ebp-0x641], cl
	add eax, 0x1
	mov [esi], eax
	mov [edi+0x3c], cl
	movzx ebx, cl
	mov [ebp-0x648], ebx
	add dword [ebp+ebx*4-0x2c], 0x1
	mov edx, [esi]
	movsx eax, word [edx]
	mov [ebp-0x1c], ax
	add edx, 0x2
	mov [esi], edx
	mov ebx, eax
	sar ebx, 0x5
	mov ecx, eax
	and ecx, 0x1f
	mov edx, 0x80000000
	shr edx, cl
	mov ecx, [ebp+0x14]
	or [ecx+ebx*4+0x28], edx
	shl eax, 0x6
	mov [edi+0x3e], ax
	mov eax, [esi]
	mov edx, [eax]
	mov [ebp-0x1c], edx
	add eax, 0x4
	mov [esi], eax
	mov eax, [ebp-0x1c]
	mov [edi+0x30], eax
	mov eax, [esi]
	mov edx, [eax]
	mov [ebp-0x1c], edx
	add eax, 0x4
	mov [esi], eax
	mov eax, [ebp-0x1c]
	mov [edi+0x34], eax
	mov eax, [esi]
	mov edx, [eax]
	mov [ebp-0x1c], edx
	add eax, 0x4
	mov [esi], eax
	mov eax, [ebp-0x1c]
	mov [edi+0x38], eax
	add edi, 0x40
	cmp byte [ebp-0x641], 0x0
	jz _Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_420
	mov eax, [ebp-0x648]
	test eax, eax
	jg _Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_430
_Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_420:
	add dword [ebp-0x688], 0x1
	mov edx, [ebp+0x14]
	movzx eax, word [edx+0x2]
	cmp [ebp-0x688], eax
	jge _Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_440
_Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_400:
	mov eax, [esi]
	mov edx, [eax]
	mov [ebp-0x1c], edx
	add eax, 0x4
	mov [esi], eax
	mov eax, [ebp-0x1c]
	mov [edi], eax
	mov eax, [esi]
	mov edx, [eax]
	mov [ebp-0x1c], edx
	add eax, 0x4
	mov [esi], eax
	mov eax, [ebp-0x1c]
	mov [edi+0x4], eax
	mov eax, [esi]
	mov edx, [eax]
	mov [ebp-0x1c], edx
	add eax, 0x4
	mov [esi], eax
	mov eax, [ebp-0x1c]
	mov [edi+0x8], eax
	mov edx, r_modelVertColor
	mov eax, [edx]
	cmp byte [eax+0xc], 0x0
	jz _Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_450
	mov ecx, [esi]
	movzx edx, byte [ecx+0x2]
	shl edx, 0x10
	movzx eax, byte [ecx+0x1]
	shl eax, 0x8
	or edx, eax
	movzx eax, byte [ecx]
	or edx, eax
	movzx eax, byte [ecx+0x3]
	shl eax, 0x18
	or edx, eax
	mov [edi+0xc], edx
	jmp _Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_460
_Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_410:
	mov byte [edi+0x3c], 0x0
	movzx eax, word [ebp-0x638]
	mov [edi+0x3e], ax
	mov eax, [esi]
	mov edx, [eax]
	mov [ebp-0x1c], edx
	add eax, 0x4
	mov [esi], eax
	mov eax, [ebp-0x1c]
	mov [edi+0x30], eax
	mov eax, [esi]
	mov edx, [eax]
	mov [ebp-0x1c], edx
	add eax, 0x4
	mov [esi], eax
	mov eax, [ebp-0x1c]
	mov [edi+0x34], eax
	mov eax, [esi]
	mov edx, [eax]
	mov [ebp-0x1c], edx
	add eax, 0x4
	mov [esi], eax
	mov eax, [ebp-0x1c]
	mov [edi+0x38], eax
	add edi, 0x40
	add dword [ebp-0x688], 0x1
	mov edx, [ebp+0x14]
	movzx eax, word [edx+0x2]
	cmp [ebp-0x688], eax
	jl _Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_400
_Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_440:
	mov ecx, edx
	jmp _Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_470
_Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_130:
	mov esi, [ebp-0x674]
	lea eax, [esi+esi*2]
	lea ebx, [eax*4]
	mov [esp], ebx
	call dword [ebp+0x10]
	jmp _Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_480
_Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_50:
	mov dword [ebp-0x684], 0x0
_Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_490:
	mov ebx, [ebp+0x14]
	mov ecx, [ebx+0xc]
	mov eax, [esi]
	movzx edx, word [eax]
	mov [ebp-0x1c], dx
	add eax, 0x2
	mov [esi], eax
	mov eax, [ebp-0x684]
	mov [ecx+eax*2], dx
	add eax, 0x1
	mov [ebp-0x684], eax
	mov edx, [ebp+0x14]
	movzx ebx, word [edx+0x4]
	lea eax, [ebx+ebx*2]
	cmp eax, [ebp-0x684]
	jg _Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_490
	jmp _Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_500
_Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_430:
	mov dword [ebp-0x68c], 0x0
_Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_510:
	mov edx, [esi]
	movsx eax, word [edx]
	mov [ebp-0x1c], ax
	add edx, 0x2
	mov [esi], edx
	mov ebx, eax
	sar ebx, 0x5
	mov ecx, eax
	and ecx, 0x1f
	mov edx, 0x80000000
	shr edx, cl
	mov ecx, [ebp-0x690]
	or [ecx+ebx*4], edx
	shl eax, 0x6
	mov [edi], ax
	mov eax, [esi]
	movzx edx, word [eax]
	mov [ebp-0x1c], dx
	add eax, 0x2
	mov [esi], eax
	mov [edi+0x2], dx
	add edi, 0x4
	add dword [ebp-0x68c], 0x1
	mov ebx, [ebp-0x68c]
	cmp [ebp-0x648], ebx
	jnz _Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_510
	jmp _Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_420
_Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_200:
	mov ebx, ecx
	jmp _Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_520
_Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_230:
	mov edx, [ebp-0x668]
	mov ecx, edx
	add ecx, 0x2
	add dword [ebp-0x668], 0xa
	jmp _Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_380
_Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_150:
	add eax, eax
	mov [esp], eax
	call dword [ebp+0x10]
	mov [ebp-0x660], eax
	mov eax, [ebp-0x28]
	test eax, eax
	jz _Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_530
_Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_160:
	lea eax, [eax+eax*2]
	add eax, eax
	mov [esp], eax
	call dword [ebp+0x10]
	mov [ebp-0x65c], eax
	mov eax, [ebp-0x24]
	test eax, eax
	jz _Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_540
_Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_170:
	lea eax, [eax+eax*4]
	add eax, eax
	mov [esp], eax
	call dword [ebp+0x10]
	mov [ebp-0x658], eax
	mov edx, [ebp-0x20]
	test edx, edx
	jz _Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_550
_Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_180:
	lea eax, [edx+edx]
	shl edx, 0x4
	sub edx, eax
	mov [esp], edx
	call dword [ebp+0x10]
	mov [ebp-0x654], eax
	jmp _Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_560
_Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_290:
	mov ebx, [ebp-0x660]
	xor edx, edx
_Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_570:
	movzx eax, word [ebx]
	mov [ecx], ax
	add ecx, 0x2
	add edx, 0x1
	add ebx, 0x2
	mov esi, [ebp+0x14]
	movsx eax, word [esi+0x10]
	cmp eax, edx
	jg _Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_570
	mov eax, esi
	jmp _Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_580
_Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_340:
	mov edx, [ebp-0x654]
	xor ebx, ebx
_Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_590:
	movzx eax, word [edx]
	mov [ecx], ax
	movzx eax, word [edx+0x2]
	mov [ecx+0x2], ax
	movzx eax, word [edx+0x4]
	mov [ecx+0x4], ax
	movzx eax, word [edx+0x6]
	mov [ecx+0x6], ax
	movzx eax, word [edx+0x8]
	mov [ecx+0x8], ax
	movzx eax, word [edx+0xa]
	mov [ecx+0xa], ax
	movzx eax, word [edx+0xc]
	mov [ecx+0xc], ax
	add ecx, 0xe
	add ebx, 0x1
	add edx, 0xe
	mov esi, [ebp+0x14]
	movsx eax, word [esi+0x16]
	cmp ebx, eax
	jl _Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_590
	mov eax, esi
	jmp _Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_600
_Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_330:
	mov edx, [ebp-0x658]
	xor ebx, ebx
_Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_610:
	movzx eax, word [edx]
	mov [ecx], ax
	movzx eax, word [edx+0x2]
	mov [ecx+0x2], ax
	movzx eax, word [edx+0x4]
	mov [ecx+0x4], ax
	movzx eax, word [edx+0x6]
	mov [ecx+0x6], ax
	movzx eax, word [edx+0x8]
	mov [ecx+0x8], ax
	add ecx, 0xa
	add ebx, 0x1
	add edx, 0xa
	mov esi, [ebp+0x14]
	movsx eax, word [esi+0x14]
	cmp ebx, eax
	jl _Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_610
	mov eax, esi
	jmp _Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_620
_Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_310:
	mov edx, [ebp-0x65c]
	xor ebx, ebx
_Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_630:
	movzx eax, word [edx]
	mov [ecx], ax
	movzx eax, word [edx+0x2]
	mov [ecx+0x2], ax
	movzx eax, word [edx+0x4]
	mov [ecx+0x4], ax
	add ecx, 0x6
	add ebx, 0x1
	add edx, 0x6
	mov esi, [ebp+0x14]
	movsx eax, word [esi+0x12]
	cmp ebx, eax
	jl _Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_630
	mov eax, esi
	jmp _Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_640
_Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_270:
	mov [esp], ebx
	call dword [ebp+0x10]
	mov ecx, eax
	jmp _Z17XModelReadSurfaceP6XModelPPKhPFPviEP8XSurface_650
	add [eax], al


;XModelReadSurface_BuildCollisionTree(XSurface*, unsigned int, void* (*)(int))
_Z36XModelReadSurface_BuildCollisionTreeP8XSurfacejPFPviE:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1ac
	mov ebx, [ebp+0xc]
	lea ebx, [ebx+ebx*2]
	mov edx, [ebp+0x8]
	mov eax, [edx+0x24]
	lea ebx, [eax+ebx*4]
	mov dword [esp], 0x28
	call dword [ebp+0x10]
	mov [ebp-0xb0], eax
	mov [ebx+0x8], eax
	cld
	mov ecx, 0xa
	xor eax, eax
	lea edi, [ebp-0x88]
	rep stosd
	mov dword [ebp-0x7c], 0x1
	mov dword [esp], 0x20000
	call malloc
	mov [ebp-0x70], eax
	mov dword [ebp-0x6c], 0x2000
	mov dword [ebp-0x68], 0x1
	mov dword [ebp-0x64], 0x10
	lea eax, [ebp-0x30]
	mov [esp+0x4], eax
	lea edx, [ebp-0x24]
	mov [esp], edx
	call ClearBounds
	mov eax, [ebp-0xb0]
	mov dword [eax+0x24], 0x0
	movzx edx, word [ebx+0x4]
	mov [ebp-0xa4], edx
	movzx eax, word [ebx+0x6]
	add eax, edx
	mov [ebp-0xa0], eax
	mov byte [ebp-0x99], 0x0
	lea eax, [edx+edx*2]
	add eax, eax
	mov [ebp-0xb4], eax
	lea edi, [ebp-0x54]
	jmp _Z36XModelReadSurface_BuildCollisionTreeP8XSurfacejPFPviE_10
_Z36XModelReadSurface_BuildCollisionTreeP8XSurfacejPFPviE_30:
	mov dword [ebp-0xa8], 0x0
_Z36XModelReadSurface_BuildCollisionTreeP8XSurfacejPFPviE_60:
	cmp byte [ebp-0x99], 0x0
	jnz _Z36XModelReadSurface_BuildCollisionTreeP8XSurfacejPFPviE_20
	mov ebx, [ebp-0xa8]
	add ebx, ebx
	mov [esp], ebx
	call dword [ebp+0x10]
	mov edx, [ebp-0xb0]
	mov [edx+0x24], eax
	mov eax, [ebp-0xa8]
	mov [edx+0x20], eax
	add ebx, eax
	shl ebx, 0x2
	mov [esp], ebx
	call malloc
	mov [ebp-0x78], eax
	mov [esp], ebx
	call malloc
	mov [ebp-0x74], eax
	mov edx, [ebp-0xb0]
	mov eax, [edx+0x24]
	mov [ebp-0x88], eax
	mov eax, [ebp-0xa8]
	mov [ebp-0x84], eax
	mov dword [ebp-0x80], 0x2
	mov byte [ebp-0x99], 0x1
_Z36XModelReadSurface_BuildCollisionTreeP8XSurfacejPFPviE_10:
	lea eax, [ebp-0x48]
	mov [esp+0x4], eax
	lea edx, [ebp-0x3c]
	mov [esp], edx
	call ClearBounds
	mov eax, [ebp-0xa0]
	cmp [ebp-0xa4], eax
	jz _Z36XModelReadSurface_BuildCollisionTreeP8XSurfacejPFPviE_30
	mov ebx, [ebp-0xb4]
	mov esi, [ebp-0xa4]
	mov byte [ebp-0x9a], 0x0
	mov dword [ebp-0xa8], 0x0
	mov dword [ebp-0x17c], 0x0
	mov dword [ebp-0x180], 0x0
	jmp _Z36XModelReadSurface_BuildCollisionTreeP8XSurfacejPFPviE_40
_Z36XModelReadSurface_BuildCollisionTreeP8XSurfacejPFPviE_70:
	cmp byte [ebp-0x99], 0x0
	jz _Z36XModelReadSurface_BuildCollisionTreeP8XSurfacejPFPviE_50
	mov edx, [ebp-0xb0]
	mov eax, [edx+0x24]
	mov edx, [ebp-0xa8]
	mov [eax+edx*2], si
	mov edx, [ebp-0x17c]
	add edx, [ebp-0x78]
	mov eax, [ebp-0x54]
	mov [edx], eax
	mov eax, [ebp-0x50]
	mov [edx+0x4], eax
	mov eax, [ebp-0x4c]
	mov [edx+0x8], eax
	mov edx, [ebp-0x17c]
	add edx, [ebp-0x74]
	mov eax, [ebp-0x60]
	mov [edx], eax
	mov eax, [ebp-0x5c]
	mov [edx+0x4], eax
	mov eax, [ebp-0x58]
	mov [edx+0x8], eax
_Z36XModelReadSurface_BuildCollisionTreeP8XSurfacejPFPviE_50:
	add dword [ebp-0xa8], 0x1
	add dword [ebp-0x180], 0x2
	add dword [ebp-0x17c], 0xc
	mov eax, [ebp-0x54]
	mov [ebp-0x3c], eax
	mov eax, [ebp-0x50]
	mov [ebp-0x38], eax
	mov eax, [ebp-0x4c]
	mov [ebp-0x34], eax
	mov eax, [ebp-0x60]
	mov [ebp-0x48], eax
	mov eax, [ebp-0x5c]
	mov [ebp-0x44], eax
	mov eax, [ebp-0x58]
	mov [ebp-0x40], eax
	mov byte [ebp-0x9a], 0x1
_Z36XModelReadSurface_BuildCollisionTreeP8XSurfacejPFPviE_90:
	add esi, 0x1
	add ebx, 0x6
	cmp [ebp-0xa0], esi
	jz _Z36XModelReadSurface_BuildCollisionTreeP8XSurfacejPFPviE_60
_Z36XModelReadSurface_BuildCollisionTreeP8XSurfacejPFPviE_40:
	lea edx, [ebp-0x60]
	mov [esp+0x4], edx
	mov [esp], edi
	call ClearBounds
	lea eax, [ebp-0x60]
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	mov edx, [ebp+0x8]
	mov eax, [edx+0xc]
	movzx eax, word [ebx+eax]
	shl eax, 0x5
	add eax, [edx+0x1c]
	mov [esp], eax
	call _Z16AddPointToBoundsPKfPfS1_
	lea eax, [ebp-0x60]
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	mov edx, [ebp+0x8]
	mov eax, [edx+0xc]
	movzx eax, word [ebx+eax+0x2]
	shl eax, 0x5
	add eax, [edx+0x1c]
	mov [esp], eax
	call _Z16AddPointToBoundsPKfPfS1_
	lea eax, [ebp-0x60]
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	mov edx, [ebp+0x8]
	mov eax, [edx+0xc]
	movzx eax, word [ebx+eax+0x4]
	shl eax, 0x5
	add eax, [edx+0x1c]
	mov [esp], eax
	call _Z16AddPointToBoundsPKfPfS1_
	lea eax, [ebp-0x30]
	mov [esp+0xc], eax
	lea edx, [ebp-0x24]
	mov [esp+0x8], edx
	lea eax, [ebp-0x60]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z12ExpandBoundsPKfS0_PfS1_
	cmp byte [ebp-0x9a], 0x0
	jz _Z36XModelReadSurface_BuildCollisionTreeP8XSurfacejPFPviE_70
	movss xmm3, dword [ebp-0x40]
	subss xmm3, [ebp-0x34]
	movss xmm1, dword [ebp-0x48]
	subss xmm1, [ebp-0x3c]
	movss xmm0, dword [ebp-0x44]
	subss xmm0, [ebp-0x38]
	mulss xmm1, xmm0
	mulss xmm3, xmm1
	movss xmm4, dword [ebp-0x58]
	subss xmm4, [ebp-0x4c]
	movss xmm1, dword [ebp-0x60]
	subss xmm1, [ebp-0x54]
	movss xmm0, dword [ebp-0x5c]
	subss xmm0, [ebp-0x50]
	mulss xmm1, xmm0
	mulss xmm4, xmm1
	lea edx, [ebp-0x48]
	mov [esp+0xc], edx
	lea eax, [ebp-0x3c]
	mov [esp+0x8], eax
	lea edx, [ebp-0x60]
	mov [esp+0x4], edx
	mov [esp], edi
	movss [ebp-0x198], xmm3
	movss [ebp-0x1a8], xmm4
	call _Z12ExpandBoundsPKfS0_PfS1_
	movss xmm5, dword [ebp-0x3c]
	movss xmm2, dword [ebp-0x40]
	subss xmm2, [ebp-0x34]
	movss xmm1, dword [ebp-0x48]
	subss xmm1, xmm5
	movss xmm0, dword [ebp-0x44]
	subss xmm0, [ebp-0x38]
	mulss xmm1, xmm0
	mulss xmm2, xmm1
	movss xmm3, dword [ebp-0x198]
	movss xmm4, dword [ebp-0x1a8]
	addss xmm3, xmm4
	ucomiss xmm3, xmm2
	jb _Z36XModelReadSurface_BuildCollisionTreeP8XSurfacejPFPviE_70
	cmp byte [ebp-0x99], 0x0
	jz _Z36XModelReadSurface_BuildCollisionTreeP8XSurfacejPFPviE_80
	mov eax, [ebp-0x17c]
	add eax, [ebp-0x78]
	lea edx, [eax-0xc]
	movss [eax-0xc], xmm5
	mov eax, [ebp-0x38]
	mov [edx+0x4], eax
	mov eax, [ebp-0x34]
	mov [edx+0x8], eax
	mov edx, [ebp-0x17c]
	add edx, [ebp-0x74]
	lea ecx, [edx-0xc]
	mov eax, [ebp-0x48]
	mov [edx-0xc], eax
	mov eax, [ebp-0x44]
	mov [ecx+0x4], eax
	mov eax, [ebp-0x40]
	mov [ecx+0x8], eax
	mov eax, [ebp-0x180]
	mov edx, [ebp-0xb0]
	add eax, [edx+0x24]
	sub word [eax-0x2], 0x8000
_Z36XModelReadSurface_BuildCollisionTreeP8XSurfacejPFPviE_80:
	mov byte [ebp-0x9a], 0x0
	jmp _Z36XModelReadSurface_BuildCollisionTreeP8XSurfacejPFPviE_90
_Z36XModelReadSurface_BuildCollisionTreeP8XSurfacejPFPviE_20:
	movss xmm1, dword [_data16_80000000]
	movss xmm0, dword [ebp-0x24]
	xorps xmm0, xmm1
	mov edx, [ebp-0xb0]
	movss [edx], xmm0
	movss xmm0, dword [ebp-0x20]
	xorps xmm0, xmm1
	movss [edx+0x4], xmm0
	movss xmm0, dword [ebp-0x1c]
	xorps xmm0, xmm1
	movss [edx+0x8], xmm0
	movss xmm2, dword [ebp-0x2c]
	subss xmm2, [ebp-0x20]
	movss xmm3, dword [ebp-0x28]
	subss xmm3, [ebp-0x1c]
	movss xmm1, dword [ebp-0x30]
	subss xmm1, [ebp-0x24]
	movss xmm0, dword [_float_65535_00000000]
	movaps xmm4, xmm0
	divss xmm4, xmm1
	movss [edx+0xc], xmm4
	movaps xmm1, xmm0
	divss xmm1, xmm2
	movss [edx+0x10], xmm1
	divss xmm0, xmm3
	movss [edx+0x14], xmm0
	lea eax, [ebp-0x88]
	mov [esp], eax
	call _Z13BuildAabbTreePK22GenericAabbTreeOptions
	mov [ebp-0xac], eax
	mov edx, [ebp-0xb0]
	mov [edx+0x18], eax
	mov eax, [ebp-0xac]
	shl eax, 0x4
	add eax, 0xf
	mov [esp], eax
	call dword [ebp+0x10]
	add eax, 0xf
	and eax, 0xfffffff0
	mov edx, [ebp-0xb0]
	mov [edx+0x1c], eax
	mov edx, [ebp-0xac]
	test edx, edx
	jz _Z36XModelReadSurface_BuildCollisionTreeP8XSurfacejPFPviE_100
	mov dword [ebp-0x98], 0x0
	mov dword [ebp-0x8c], 0x0
_Z36XModelReadSurface_BuildCollisionTreeP8XSurfacejPFPviE_200:
	mov edx, [ebp-0x8c]
	mov eax, [ebp-0xb0]
	add edx, [eax+0x1c]
	mov [ebp-0x94], edx
	mov eax, [ebp-0x8c]
	add eax, [ebp-0x70]
	mov [ebp-0x90], eax
	mov esi, [eax]
	add esi, [eax+0x4]
	lea edx, [ebp-0x54]
	mov [esp+0x4], edx
	lea eax, [ebp-0x60]
	mov [esp], eax
	call ClearBounds
	mov eax, [ebp-0x90]
	mov edx, [eax]
	cmp esi, edx
	jz _Z36XModelReadSurface_BuildCollisionTreeP8XSurfacejPFPviE_110
	lea eax, [edx+edx*2]
	lea ebx, [eax*4]
	xor edi, edi
	sub esi, edx
_Z36XModelReadSurface_BuildCollisionTreeP8XSurfacejPFPviE_120:
	lea edx, [ebp-0x54]
	mov [esp+0xc], edx
	lea eax, [ebp-0x60]
	mov [esp+0x8], eax
	mov eax, ebx
	add eax, [ebp-0x74]
	mov [esp+0x4], eax
	mov eax, ebx
	add eax, [ebp-0x78]
	mov [esp], eax
	call _Z12ExpandBoundsPKfS0_PfS1_
	add edi, 0x1
	add ebx, 0xc
	cmp edi, esi
	jnz _Z36XModelReadSurface_BuildCollisionTreeP8XSurfacejPFPviE_120
_Z36XModelReadSurface_BuildCollisionTreeP8XSurfacejPFPviE_110:
	movss xmm0, dword [ebp-0x60]
	mov edx, [ebp-0xb0]
	addss xmm0, [edx]
	mulss xmm0, [edx+0xc]
	movss xmm6, dword [_float_0_50000000]
	subss xmm0, xmm6
	xorps xmm1, xmm1
	maxss xmm0, xmm1
	movss xmm4, dword [_data16_4f000000]
	movaps xmm3, xmm4
	cmpss xmm3, xmm0, 0x2
	movss xmm5, dword [_data16_4f800000]
	movaps xmm1, xmm5
	cmpss xmm1, xmm0, 0x2
	movaps xmm2, xmm3
	andps xmm2, xmm4
	pslld xmm3, 0x1f
	subps xmm0, xmm2
	cvttps2dq xmm0, xmm0
	paddd xmm0, xmm3
	por xmm0, xmm1
	movdqa [ebp-0xd8], xmm0
	mov eax, [ebp-0xd8]
	test eax, eax
	js _Z36XModelReadSurface_BuildCollisionTreeP8XSurfacejPFPviE_130
	mov edx, 0xffffffff
	cmp eax, 0x10000
	cmovl edx, eax
_Z36XModelReadSurface_BuildCollisionTreeP8XSurfacejPFPviE_270:
	mov eax, [ebp-0x94]
	mov [eax], dx
	movss xmm0, dword [ebp-0x5c]
	mov edx, [ebp-0xb0]
	addss xmm0, [edx+0x4]
	mulss xmm0, [edx+0x10]
	subss xmm0, xmm6
	xorps xmm1, xmm1
	maxss xmm0, xmm1
	movaps xmm2, xmm4
	cmpss xmm2, xmm0, 0x2
	movaps xmm1, xmm5
	cmpss xmm1, xmm0, 0x2
	movaps xmm3, xmm2
	andps xmm3, xmm4
	pslld xmm2, 0x1f
	subps xmm0, xmm3
	cvttps2dq xmm0, xmm0
	paddd xmm0, xmm2
	por xmm0, xmm1
	movdqa [ebp-0xf8], xmm0
	mov eax, [ebp-0xf8]
	test eax, eax
	js _Z36XModelReadSurface_BuildCollisionTreeP8XSurfacejPFPviE_140
	mov edx, 0xffffffff
	cmp eax, 0x10000
	cmovl edx, eax
_Z36XModelReadSurface_BuildCollisionTreeP8XSurfacejPFPviE_260:
	mov eax, [ebp-0x94]
	mov [eax+0x2], dx
	movss xmm0, dword [ebp-0x58]
	mov edx, [ebp-0xb0]
	addss xmm0, [edx+0x8]
	mulss xmm0, [edx+0x14]
	subss xmm0, xmm6
	xorps xmm1, xmm1
	maxss xmm0, xmm1
	movaps xmm2, xmm4
	cmpss xmm2, xmm0, 0x2
	movaps xmm1, xmm5
	cmpss xmm1, xmm0, 0x2
	movaps xmm3, xmm2
	andps xmm3, xmm4
	pslld xmm2, 0x1f
	subps xmm0, xmm3
	cvttps2dq xmm0, xmm0
	paddd xmm0, xmm2
	por xmm0, xmm1
	movdqa [ebp-0x118], xmm0
	mov eax, [ebp-0x118]
	test eax, eax
	js _Z36XModelReadSurface_BuildCollisionTreeP8XSurfacejPFPviE_150
	mov edx, 0xffffffff
	cmp eax, 0x10000
	cmovl edx, eax
_Z36XModelReadSurface_BuildCollisionTreeP8XSurfacejPFPviE_250:
	mov eax, [ebp-0x94]
	mov [eax+0x4], dx
	movss xmm0, dword [ebp-0x54]
	mov edx, [ebp-0xb0]
	addss xmm0, [edx]
	mulss xmm0, [edx+0xc]
	addss xmm0, xmm6
	xorps xmm1, xmm1
	maxss xmm0, xmm1
	movaps xmm2, xmm4
	cmpss xmm2, xmm0, 0x2
	movaps xmm1, xmm5
	cmpss xmm1, xmm0, 0x2
	movaps xmm3, xmm2
	andps xmm3, xmm4
	pslld xmm2, 0x1f
	subps xmm0, xmm3
	cvttps2dq xmm0, xmm0
	paddd xmm0, xmm2
	por xmm0, xmm1
	movdqa [ebp-0x138], xmm0
	mov eax, [ebp-0x138]
	test eax, eax
	js _Z36XModelReadSurface_BuildCollisionTreeP8XSurfacejPFPviE_160
	mov edx, 0xffffffff
	cmp eax, 0x10000
	cmovl edx, eax
_Z36XModelReadSurface_BuildCollisionTreeP8XSurfacejPFPviE_240:
	mov eax, [ebp-0x94]
	mov [eax+0x6], dx
	movss xmm0, dword [ebp-0x50]
	mov edx, [ebp-0xb0]
	addss xmm0, [edx+0x4]
	mulss xmm0, [edx+0x10]
	addss xmm0, xmm6
	xorps xmm1, xmm1
	maxss xmm0, xmm1
	movaps xmm2, xmm4
	cmpss xmm2, xmm0, 0x2
	movaps xmm1, xmm5
	cmpss xmm1, xmm0, 0x2
	movaps xmm3, xmm2
	andps xmm3, xmm4
	pslld xmm2, 0x1f
	subps xmm0, xmm3
	cvttps2dq xmm0, xmm0
	paddd xmm0, xmm2
	por xmm0, xmm1
	movdqa [ebp-0x158], xmm0
	mov eax, [ebp-0x158]
	test eax, eax
	js _Z36XModelReadSurface_BuildCollisionTreeP8XSurfacejPFPviE_170
	mov edx, 0xffffffff
	cmp eax, 0x10000
	cmovl edx, eax
_Z36XModelReadSurface_BuildCollisionTreeP8XSurfacejPFPviE_230:
	mov eax, [ebp-0x94]
	mov [eax+0x8], dx
	movss xmm0, dword [ebp-0x4c]
	mov edx, [ebp-0xb0]
	addss xmm0, [edx+0x8]
	mulss xmm0, [edx+0x14]
	addss xmm0, xmm6
	xorps xmm1, xmm1
	maxss xmm0, xmm1
	movaps xmm2, xmm4
	cmpss xmm2, xmm0, 0x2
	movaps xmm1, xmm5
	cmpss xmm1, xmm0, 0x2
	movaps [ebp-0x168], xmm1
	movaps xmm1, xmm4
	andps xmm1, xmm2
	pslld xmm2, 0x1f
	subps xmm0, xmm1
	cvttps2dq xmm0, xmm0
	paddd xmm0, xmm2
	por xmm0, [ebp-0x168]
	movdqa [ebp-0x178], xmm0
	mov eax, [ebp-0x178]
	test eax, eax
	js _Z36XModelReadSurface_BuildCollisionTreeP8XSurfacejPFPviE_180
	mov edx, 0xffffffff
	cmp eax, 0x10000
	cmovl edx, eax
_Z36XModelReadSurface_BuildCollisionTreeP8XSurfacejPFPviE_220:
	mov eax, [ebp-0x94]
	mov [eax+0xa], dx
	mov edx, [ebp-0x90]
	mov eax, [edx+0xc]
	test eax, eax
	jz _Z36XModelReadSurface_BuildCollisionTreeP8XSurfacejPFPviE_190
	mov eax, [edx+0x8]
	mov edx, [ebp-0x94]
	mov [edx+0xc], ax
	mov edx, [ebp-0x90]
	mov eax, [edx+0xc]
	mov edx, [ebp-0x94]
	mov [edx+0xe], ax
_Z36XModelReadSurface_BuildCollisionTreeP8XSurfacejPFPviE_210:
	add dword [ebp-0x98], 0x1
	add dword [ebp-0x8c], 0x10
	mov eax, [ebp-0x98]
	cmp [ebp-0xac], eax
	jnz _Z36XModelReadSurface_BuildCollisionTreeP8XSurfacejPFPviE_200
_Z36XModelReadSurface_BuildCollisionTreeP8XSurfacejPFPviE_100:
	mov eax, [ebp-0x78]
	mov [esp], eax
	call free
	mov eax, [ebp-0x74]
	mov [esp], eax
	call free
	mov eax, [ebp-0x70]
	mov [esp], eax
	call free
	add esp, 0x1ac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z36XModelReadSurface_BuildCollisionTreeP8XSurfacejPFPviE_190:
	mov eax, [edx]
	mov edx, [ebp-0x94]
	mov [edx+0xc], ax
	mov edx, [ebp-0x90]
	movzx eax, word [edx+0x4]
	sub ax, 0x8000
	mov edx, [ebp-0x94]
	mov [edx+0xe], ax
	jmp _Z36XModelReadSurface_BuildCollisionTreeP8XSurfacejPFPviE_210
_Z36XModelReadSurface_BuildCollisionTreeP8XSurfacejPFPviE_180:
	xor edx, edx
	jmp _Z36XModelReadSurface_BuildCollisionTreeP8XSurfacejPFPviE_220
_Z36XModelReadSurface_BuildCollisionTreeP8XSurfacejPFPviE_170:
	xor edx, edx
	jmp _Z36XModelReadSurface_BuildCollisionTreeP8XSurfacejPFPviE_230
_Z36XModelReadSurface_BuildCollisionTreeP8XSurfacejPFPviE_160:
	xor edx, edx
	jmp _Z36XModelReadSurface_BuildCollisionTreeP8XSurfacejPFPviE_240
_Z36XModelReadSurface_BuildCollisionTreeP8XSurfacejPFPviE_150:
	xor edx, edx
	jmp _Z36XModelReadSurface_BuildCollisionTreeP8XSurfacejPFPviE_250
_Z36XModelReadSurface_BuildCollisionTreeP8XSurfacejPFPviE_140:
	xor edx, edx
	jmp _Z36XModelReadSurface_BuildCollisionTreeP8XSurfacejPFPviE_260
_Z36XModelReadSurface_BuildCollisionTreeP8XSurfacejPFPviE_130:
	xor edx, edx
	jmp _Z36XModelReadSurface_BuildCollisionTreeP8XSurfacejPFPviE_270


;Initialized global or static variables of r_xsurface_load_obj:
SECTION .data


;Initialized constant data of r_xsurface_load_obj:
SECTION .rdata


;Zero initialized global or static variables of r_xsurface_load_obj:
SECTION .bss


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata
_data16_80000000:		dd 0x80000000, 0x0, 0x0, 0x0	; OWORD
_float_65535_00000000:		dd 0x477fff00	; 65535
_float_0_50000000:		dd 0x3f000000	; 0.5
_data16_4f000000:		dd 0x4f000000, 0x0, 0x0, 0x0	; OWORD
_data16_4f800000:		dd 0x4f800000, 0x0, 0x0, 0x0	; OWORD

