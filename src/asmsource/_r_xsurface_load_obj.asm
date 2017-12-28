;Imports of r_xsurface_load_obj:
	extern Hunk_AllocateTempMemory
	extern memcpy
	extern XSurfaceTransfer
	extern Hunk_FreeTempMemory
	extern r_modelVertColor
	extern malloc
	extern ClearBounds
	extern AddPointToBounds
	extern ExpandBounds
	extern BuildAabbTree
	extern free

;Exports of r_xsurface_load_obj:
	global XModelReadSurface
	global XModelReadSurface_BuildCollisionTree


SECTION .text


;XModelReadSurface(XModel*, unsigned char const**, void* (*)(int), XSurface*)
XModelReadSurface:
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
	jmp XModelReadSurface_10
XModelReadSurface_20:
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
XModelReadSurface_10:
	mov ecx, [esi]
	movzx edx, word [ecx]
	mov [ebp-0x1c], dx
	lea eax, [ecx+0x2]
	mov [esi], eax
	mov [ebx+0x2], dx
	test dx, dx
	jnz XModelReadSurface_20
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
	jz XModelReadSurface_30
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
	jnz XModelReadSurface_40
XModelReadSurface_390:
	mov ecx, ebx
XModelReadSurface_470:
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
	jg XModelReadSurface_50
	mov dword [ebp-0x684], 0x0
XModelReadSurface_500:
	mov esi, [ebp-0x674]
	test esi, esi
	jle XModelReadSurface_60
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
	jge XModelReadSurface_70
XModelReadSurface_100:
	mov eax, [ebp+0x14]
	mov ecx, [eax+0xc]
	lea eax, [edi+edi*2]
	lea edx, [eax+eax]
	movzx eax, word [edx+ecx]
	cmp [ebp-0x650], eax
	jle XModelReadSurface_70
	lea ecx, [edx+ecx]
	mov edx, edi
	mov esi, ebx
XModelReadSurface_90:
	add edx, 0x1
	cmp esi, edx
	jz XModelReadSurface_80
	movzx eax, word [ecx+0x6]
	add ecx, 0x6
	cmp [ebp-0x650], eax
	jg XModelReadSurface_90
XModelReadSurface_80:
	mov eax, edx
	sub ax, di
	mov edi, edx
XModelReadSurface_110:
	mov edx, [ebp-0x64c]
	mov [edx+0x6], ax
	add dword [ebp-0x640], 0x1
	add edx, 0xc
	mov [ebp-0x64c], edx
	mov ecx, [ebp-0x640]
	cmp [ebp-0x674], ecx
	jz XModelReadSurface_60
	mov esi, edx
	mov [esi+0x4], di
	movzx eax, word [esi+0x2]
	add [ebp-0x650], eax
	cmp edi, ebx
	jl XModelReadSurface_100
XModelReadSurface_70:
	xor eax, eax
	jmp XModelReadSurface_110
XModelReadSurface_60:
	cmp [ebp-0x680], ebx
	jz XModelReadSurface_120
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
XModelReadSurface_120:
	mov ebx, [ebp-0x674]
	test ebx, ebx
	jnz XModelReadSurface_130
	xor eax, eax
	xor ebx, ebx
XModelReadSurface_480:
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
	call XSurfaceTransfer
	cmp byte [ebp-0x675], 0x0
	jz XModelReadSurface_140
	mov eax, [ebp-0x2c]
	test eax, eax
	jnz XModelReadSurface_150
	mov dword [ebp-0x660], 0x0
	mov eax, [ebp-0x28]
	test eax, eax
	jnz XModelReadSurface_160
XModelReadSurface_530:
	mov dword [ebp-0x65c], 0x0
	mov eax, [ebp-0x24]
	test eax, eax
	jnz XModelReadSurface_170
XModelReadSurface_540:
	mov dword [ebp-0x658], 0x0
	mov edx, [ebp-0x20]
	test edx, edx
	jnz XModelReadSurface_180
XModelReadSurface_550:
	mov dword [ebp-0x654], 0x0
XModelReadSurface_560:
	mov edx, [ebp+0x14]
	mov ecx, 0x1
	lea ebx, [ebp-0x2c]
XModelReadSurface_190:
	mov eax, [ebx+ecx*4-0x4]
	mov [edx+0x10], ax
	add ecx, 0x1
	add edx, 0x2
	cmp ecx, 0x5
	jnz XModelReadSurface_190
	mov edi, [ebp-0x67c]
	mov ecx, [ebp+0x14]
	cmp word [ecx+0x2], 0x0
	jz XModelReadSurface_200
	mov ebx, [ebp-0x660]
	mov [ebp-0x670], ebx
	mov esi, [ebp-0x65c]
	mov [ebp-0x66c], esi
	mov eax, [ebp-0x658]
	mov [ebp-0x668], eax
	mov edx, [ebp-0x654]
	mov [ebp-0x664], edx
	mov dword [ebp-0x63c], 0x0
XModelReadSurface_260:
	movzx eax, byte [edi+0x3c]
	cmp al, 0x1
	jz XModelReadSurface_210
	jb XModelReadSurface_220
	cmp al, 0x2
	jz XModelReadSurface_230
	mov edx, [ebp-0x664]
	lea ecx, [edx+0x2]
	lea ebx, [edx+0xe]
	mov [ebp-0x664], ebx
XModelReadSurface_380:
	movzx eax, word [edi+0x3e]
	mov [edx], ax
	movzx eax, byte [edi+0x3c]
	add edi, 0x40
	test al, al
	jz XModelReadSurface_240
	movzx esi, al
	test esi, esi
	jle XModelReadSurface_240
	mov edx, edi
	xor ebx, ebx
XModelReadSurface_250:
	movzx eax, word [edx]
	mov [ecx], ax
	movzx eax, word [edx+0x2]
	mov [ecx+0x2], ax
	add ecx, 0x4
	add edx, 0x4
	add ebx, 0x1
	cmp ebx, esi
	jnz XModelReadSurface_250
	mov edi, edx
XModelReadSurface_240:
	add dword [ebp-0x63c], 0x1
	mov edx, [ebp+0x14]
	movzx eax, word [edx+0x2]
	cmp [ebp-0x63c], eax
	jl XModelReadSurface_260
	mov ebx, edx
XModelReadSurface_520:
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
	jnz XModelReadSurface_270
	xor ecx, ecx
XModelReadSurface_650:
	mov esi, [ebp+0x8]
	add [esi+0xcc], ebx
	mov eax, [ebp+0x14]
	mov [eax+0x18], ecx
	cmp word [eax+0x10], 0x0
	jz XModelReadSurface_280
	jg XModelReadSurface_290
XModelReadSurface_280:
	mov eax, [ebp+0x14]
XModelReadSurface_580:
	cmp word [eax+0x12], 0x0
	jz XModelReadSurface_300
	jg XModelReadSurface_310
XModelReadSurface_300:
	mov eax, [ebp+0x14]
XModelReadSurface_640:
	cmp word [eax+0x14], 0x0
	jz XModelReadSurface_320
	jg XModelReadSurface_330
XModelReadSurface_320:
	mov eax, [ebp+0x14]
XModelReadSurface_620:
	cmp word [eax+0x16], 0x0
	jz XModelReadSurface_140
	jg XModelReadSurface_340
XModelReadSurface_140:
	mov eax, [ebp+0x14]
XModelReadSurface_600:
	mov ecx, [eax+0x20]
	test ecx, ecx
	jz XModelReadSurface_350
	xor ebx, ebx
	mov ecx, [ebp+0x14]
	jmp XModelReadSurface_360
XModelReadSurface_370:
	mov ecx, esi
XModelReadSurface_360:
	mov edx, [ebp+0x10]
	mov [esp+0x8], edx
	mov [esp+0x4], ebx
	mov [esp], ecx
	call XModelReadSurface_BuildCollisionTree
	add ebx, 0x1
	mov esi, [ebp+0x14]
	cmp ebx, [esi+0x20]
	jnz XModelReadSurface_370
XModelReadSurface_350:
	mov eax, [ebp-0x67c]
	mov [esp], eax
	call Hunk_FreeTempMemory
	add esp, 0x69c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
XModelReadSurface_220:
	mov edx, [ebp-0x670]
	mov esi, edx
	add esi, 0x2
	mov [ebp-0x670], esi
	xor ecx, ecx
	jmp XModelReadSurface_380
XModelReadSurface_210:
	mov edx, [ebp-0x66c]
	lea ecx, [edx+0x2]
	lea eax, [edx+0x6]
	mov [ebp-0x66c], eax
	jmp XModelReadSurface_380
XModelReadSurface_30:
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
	jz XModelReadSurface_390
XModelReadSurface_40:
	mov dword [ebp-0x688], 0x0
	lea eax, [ebx+0x28]
	mov [ebp-0x690], eax
	jmp XModelReadSurface_400
XModelReadSurface_450:
	mov dword [edi+0xc], 0xffffffff
XModelReadSurface_460:
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
	jz XModelReadSurface_410
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
	jz XModelReadSurface_420
	mov eax, [ebp-0x648]
	test eax, eax
	jg XModelReadSurface_430
XModelReadSurface_420:
	add dword [ebp-0x688], 0x1
	mov edx, [ebp+0x14]
	movzx eax, word [edx+0x2]
	cmp [ebp-0x688], eax
	jge XModelReadSurface_440
XModelReadSurface_400:
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
	jz XModelReadSurface_450
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
	jmp XModelReadSurface_460
XModelReadSurface_410:
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
	jl XModelReadSurface_400
XModelReadSurface_440:
	mov ecx, edx
	jmp XModelReadSurface_470
XModelReadSurface_130:
	mov esi, [ebp-0x674]
	lea eax, [esi+esi*2]
	lea ebx, [eax*4]
	mov [esp], ebx
	call dword [ebp+0x10]
	jmp XModelReadSurface_480
XModelReadSurface_50:
	mov dword [ebp-0x684], 0x0
XModelReadSurface_490:
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
	jg XModelReadSurface_490
	jmp XModelReadSurface_500
XModelReadSurface_430:
	mov dword [ebp-0x68c], 0x0
XModelReadSurface_510:
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
	jnz XModelReadSurface_510
	jmp XModelReadSurface_420
XModelReadSurface_200:
	mov ebx, ecx
	jmp XModelReadSurface_520
XModelReadSurface_230:
	mov edx, [ebp-0x668]
	mov ecx, edx
	add ecx, 0x2
	add dword [ebp-0x668], 0xa
	jmp XModelReadSurface_380
XModelReadSurface_150:
	add eax, eax
	mov [esp], eax
	call dword [ebp+0x10]
	mov [ebp-0x660], eax
	mov eax, [ebp-0x28]
	test eax, eax
	jz XModelReadSurface_530
XModelReadSurface_160:
	lea eax, [eax+eax*2]
	add eax, eax
	mov [esp], eax
	call dword [ebp+0x10]
	mov [ebp-0x65c], eax
	mov eax, [ebp-0x24]
	test eax, eax
	jz XModelReadSurface_540
XModelReadSurface_170:
	lea eax, [eax+eax*4]
	add eax, eax
	mov [esp], eax
	call dword [ebp+0x10]
	mov [ebp-0x658], eax
	mov edx, [ebp-0x20]
	test edx, edx
	jz XModelReadSurface_550
XModelReadSurface_180:
	lea eax, [edx+edx]
	shl edx, 0x4
	sub edx, eax
	mov [esp], edx
	call dword [ebp+0x10]
	mov [ebp-0x654], eax
	jmp XModelReadSurface_560
XModelReadSurface_290:
	mov ebx, [ebp-0x660]
	xor edx, edx
XModelReadSurface_570:
	movzx eax, word [ebx]
	mov [ecx], ax
	add ecx, 0x2
	add edx, 0x1
	add ebx, 0x2
	mov esi, [ebp+0x14]
	movsx eax, word [esi+0x10]
	cmp eax, edx
	jg XModelReadSurface_570
	mov eax, esi
	jmp XModelReadSurface_580
XModelReadSurface_340:
	mov edx, [ebp-0x654]
	xor ebx, ebx
XModelReadSurface_590:
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
	jl XModelReadSurface_590
	mov eax, esi
	jmp XModelReadSurface_600
XModelReadSurface_330:
	mov edx, [ebp-0x658]
	xor ebx, ebx
XModelReadSurface_610:
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
	jl XModelReadSurface_610
	mov eax, esi
	jmp XModelReadSurface_620
XModelReadSurface_310:
	mov edx, [ebp-0x65c]
	xor ebx, ebx
XModelReadSurface_630:
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
	jl XModelReadSurface_630
	mov eax, esi
	jmp XModelReadSurface_640
XModelReadSurface_270:
	mov [esp], ebx
	call dword [ebp+0x10]
	mov ecx, eax
	jmp XModelReadSurface_650
	add [eax], al


;XModelReadSurface_BuildCollisionTree(XSurface*, unsigned int, void* (*)(int))
XModelReadSurface_BuildCollisionTree:
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
	jmp XModelReadSurface_BuildCollisionTree_10
XModelReadSurface_BuildCollisionTree_30:
	mov dword [ebp-0xa8], 0x0
XModelReadSurface_BuildCollisionTree_60:
	cmp byte [ebp-0x99], 0x0
	jnz XModelReadSurface_BuildCollisionTree_20
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
XModelReadSurface_BuildCollisionTree_10:
	lea eax, [ebp-0x48]
	mov [esp+0x4], eax
	lea edx, [ebp-0x3c]
	mov [esp], edx
	call ClearBounds
	mov eax, [ebp-0xa0]
	cmp [ebp-0xa4], eax
	jz XModelReadSurface_BuildCollisionTree_30
	mov ebx, [ebp-0xb4]
	mov esi, [ebp-0xa4]
	mov byte [ebp-0x9a], 0x0
	mov dword [ebp-0xa8], 0x0
	mov dword [ebp-0x17c], 0x0
	mov dword [ebp-0x180], 0x0
	jmp XModelReadSurface_BuildCollisionTree_40
XModelReadSurface_BuildCollisionTree_70:
	cmp byte [ebp-0x99], 0x0
	jz XModelReadSurface_BuildCollisionTree_50
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
XModelReadSurface_BuildCollisionTree_50:
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
XModelReadSurface_BuildCollisionTree_90:
	add esi, 0x1
	add ebx, 0x6
	cmp [ebp-0xa0], esi
	jz XModelReadSurface_BuildCollisionTree_60
XModelReadSurface_BuildCollisionTree_40:
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
	call AddPointToBounds
	lea eax, [ebp-0x60]
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	mov edx, [ebp+0x8]
	mov eax, [edx+0xc]
	movzx eax, word [ebx+eax+0x2]
	shl eax, 0x5
	add eax, [edx+0x1c]
	mov [esp], eax
	call AddPointToBounds
	lea eax, [ebp-0x60]
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	mov edx, [ebp+0x8]
	mov eax, [edx+0xc]
	movzx eax, word [ebx+eax+0x4]
	shl eax, 0x5
	add eax, [edx+0x1c]
	mov [esp], eax
	call AddPointToBounds
	lea eax, [ebp-0x30]
	mov [esp+0xc], eax
	lea edx, [ebp-0x24]
	mov [esp+0x8], edx
	lea eax, [ebp-0x60]
	mov [esp+0x4], eax
	mov [esp], edi
	call ExpandBounds
	cmp byte [ebp-0x9a], 0x0
	jz XModelReadSurface_BuildCollisionTree_70
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
	call ExpandBounds
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
	jb XModelReadSurface_BuildCollisionTree_70
	cmp byte [ebp-0x99], 0x0
	jz XModelReadSurface_BuildCollisionTree_80
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
XModelReadSurface_BuildCollisionTree_80:
	mov byte [ebp-0x9a], 0x0
	jmp XModelReadSurface_BuildCollisionTree_90
XModelReadSurface_BuildCollisionTree_20:
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
	call BuildAabbTree
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
	jz XModelReadSurface_BuildCollisionTree_100
	mov dword [ebp-0x98], 0x0
	mov dword [ebp-0x8c], 0x0
XModelReadSurface_BuildCollisionTree_200:
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
	jz XModelReadSurface_BuildCollisionTree_110
	lea eax, [edx+edx*2]
	lea ebx, [eax*4]
	xor edi, edi
	sub esi, edx
XModelReadSurface_BuildCollisionTree_120:
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
	call ExpandBounds
	add edi, 0x1
	add ebx, 0xc
	cmp edi, esi
	jnz XModelReadSurface_BuildCollisionTree_120
XModelReadSurface_BuildCollisionTree_110:
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
	js XModelReadSurface_BuildCollisionTree_130
	mov edx, 0xffffffff
	cmp eax, 0x10000
	cmovl edx, eax
XModelReadSurface_BuildCollisionTree_270:
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
	js XModelReadSurface_BuildCollisionTree_140
	mov edx, 0xffffffff
	cmp eax, 0x10000
	cmovl edx, eax
XModelReadSurface_BuildCollisionTree_260:
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
	js XModelReadSurface_BuildCollisionTree_150
	mov edx, 0xffffffff
	cmp eax, 0x10000
	cmovl edx, eax
XModelReadSurface_BuildCollisionTree_250:
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
	js XModelReadSurface_BuildCollisionTree_160
	mov edx, 0xffffffff
	cmp eax, 0x10000
	cmovl edx, eax
XModelReadSurface_BuildCollisionTree_240:
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
	js XModelReadSurface_BuildCollisionTree_170
	mov edx, 0xffffffff
	cmp eax, 0x10000
	cmovl edx, eax
XModelReadSurface_BuildCollisionTree_230:
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
	js XModelReadSurface_BuildCollisionTree_180
	mov edx, 0xffffffff
	cmp eax, 0x10000
	cmovl edx, eax
XModelReadSurface_BuildCollisionTree_220:
	mov eax, [ebp-0x94]
	mov [eax+0xa], dx
	mov edx, [ebp-0x90]
	mov eax, [edx+0xc]
	test eax, eax
	jz XModelReadSurface_BuildCollisionTree_190
	mov eax, [edx+0x8]
	mov edx, [ebp-0x94]
	mov [edx+0xc], ax
	mov edx, [ebp-0x90]
	mov eax, [edx+0xc]
	mov edx, [ebp-0x94]
	mov [edx+0xe], ax
XModelReadSurface_BuildCollisionTree_210:
	add dword [ebp-0x98], 0x1
	add dword [ebp-0x8c], 0x10
	mov eax, [ebp-0x98]
	cmp [ebp-0xac], eax
	jnz XModelReadSurface_BuildCollisionTree_200
XModelReadSurface_BuildCollisionTree_100:
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
XModelReadSurface_BuildCollisionTree_190:
	mov eax, [edx]
	mov edx, [ebp-0x94]
	mov [edx+0xc], ax
	mov edx, [ebp-0x90]
	movzx eax, word [edx+0x4]
	sub ax, 0x8000
	mov edx, [ebp-0x94]
	mov [edx+0xe], ax
	jmp XModelReadSurface_BuildCollisionTree_210
XModelReadSurface_BuildCollisionTree_180:
	xor edx, edx
	jmp XModelReadSurface_BuildCollisionTree_220
XModelReadSurface_BuildCollisionTree_170:
	xor edx, edx
	jmp XModelReadSurface_BuildCollisionTree_230
XModelReadSurface_BuildCollisionTree_160:
	xor edx, edx
	jmp XModelReadSurface_BuildCollisionTree_240
XModelReadSurface_BuildCollisionTree_150:
	xor edx, edx
	jmp XModelReadSurface_BuildCollisionTree_250
XModelReadSurface_BuildCollisionTree_140:
	xor edx, edx
	jmp XModelReadSurface_BuildCollisionTree_260
XModelReadSurface_BuildCollisionTree_130:
	xor edx, edx
	jmp XModelReadSurface_BuildCollisionTree_270


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
_float_65535_00000000:		dd 0x477fff00	; 65535
_float_0_50000000:		dd 0x3f000000	; 0.5


align   16,db 0
_data16_80000000:		dd 0x80000000, 0x0, 0x0, 0x0	; DQWORD
_data16_4f000000:		dd 0x4f000000, 0x0, 0x0, 0x0	; DQWORD
_data16_4f800000:		dd 0x4f800000, 0x0, 0x0, 0x0	; DQWORD