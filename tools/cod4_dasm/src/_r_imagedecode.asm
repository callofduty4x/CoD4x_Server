;Imports of r_imagedecode:
	extern floorf
	extern Wavelet_DecompressLevel
	extern Hunk_FreeTempMemory
	extern Hunk_AllocateTempMemory
	extern Com_AssembleFilepath
	extern FS_ReadFile
	extern Image_ValidateHeader
	extern strcpy
	extern Z_MallocInternal
	extern FS_FreeFile
	extern Com_Error
	extern Z_FreeInternal

;Exports of r_imagedecode:
	global Image_DecodeBitmap
	global Image_DecodeDxtc
	global Image_DecompressDxt1
	global Image_DecompressDxt3
	global Image_DecompressDxt5
	global Image_DecompressDxt1_Internal
	global Image_DecodeWavelet
	global Image_GetRawPixels
	global Image_FreeRawPixels


SECTION .text


;Image_DecodeBitmap(GfxRawImage*, GfxImageFileHeader*, unsigned char*, int)
Image_DecodeBitmap:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x18
	mov [ebp-0x20], eax
	mov [ebp-0x24], edx
	mov edi, ecx
	movzx edx, byte [edx+0x5]
	mov eax, edx
	and eax, 0x4
	cmp eax, 0x1
	sbb ecx, ecx
	and ecx, 0xfffffffb
	add ecx, 0x6
	mov [ebp-0x18], ecx
	and dl, 0x2
	jz Image_DecodeBitmap_10
	mov dword [ebp-0x10], 0x0
	mov eax, [ebp-0x10]
Image_DecodeBitmap_150:
	mov [ebp-0x1c], eax
Image_DecodeBitmap_70:
	mov edx, [ebp-0x24]
	movsx ebx, word [edx+0x6]
	movzx ecx, byte [ebp-0x1c]
	sar ebx, cl
	mov eax, 0x1
	cmp ebx, 0x1
	cmovle ebx, eax
	movsx edx, word [edx+0x8]
	movzx ecx, byte [ebp-0x1c]
	sar edx, cl
	cmp edx, 0x1
	cmovle edx, eax
	mov ecx, [ebp-0x18]
	test ecx, ecx
	jle Image_DecodeBitmap_20
	imul ebx, edx
	imul ebx, [ebp+0x8]
	mov [ebp-0x14], ebx
Image_DecodeBitmap_50:
	mov eax, [ebp-0x1c]
	test eax, eax
	jnz Image_DecodeBitmap_30
	mov ebx, [ebp-0x24]
	movsx ecx, word [ebx+0x6]
	movsx eax, word [ebx+0x8]
	imul ecx, eax
	mov eax, [ebp-0x20]
	mov edx, [eax+0x50]
	movzx eax, byte [ebx+0x4]
	cmp eax, 0xa
	ja Image_DecodeBitmap_30
	jmp dword [eax*4+Image_DecodeBitmap_jumptab_0]
Image_DecodeBitmap_170:
	test ecx, ecx
	jnz Image_DecodeBitmap_40
Image_DecodeBitmap_30:
	xor eax, eax
	add edi, [ebp-0x14]
	add eax, 0x1
	cmp [ebp-0x18], eax
	jle Image_DecodeBitmap_20
Image_DecodeBitmap_60:
	test eax, eax
	jz Image_DecodeBitmap_50
	add edi, [ebp-0x14]
	add eax, 0x1
	cmp [ebp-0x18], eax
	jg Image_DecodeBitmap_60
Image_DecodeBitmap_20:
	sub dword [ebp-0x1c], 0x1
	cmp dword [ebp-0x1c], 0xffffffff
	jnz Image_DecodeBitmap_70
Image_DecodeBitmap_140:
	add esp, 0x18
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Image_DecodeBitmap_180:
	test ecx, ecx
	jz Image_DecodeBitmap_30
	mov ebx, edi
	xor esi, esi
Image_DecodeBitmap_80:
	movzx eax, byte [ebx+0x2]
	mov [edx], al
	movzx eax, byte [ebx+0x1]
	mov [edx+0x1], al
	movzx eax, byte [ebx]
	mov [edx+0x2], al
	mov byte [edx+0x3], 0xff
	add ebx, 0x3
	add edx, 0x4
	add esi, 0x1
	cmp ecx, esi
	jnz Image_DecodeBitmap_80
	jmp Image_DecodeBitmap_30
Image_DecodeBitmap_190:
	test ecx, ecx
	jz Image_DecodeBitmap_30
	lea ebx, [edi+0x2]
	xor esi, esi
Image_DecodeBitmap_90:
	movzx eax, byte [ebx-0x2]
	mov [edx], al
	movzx eax, byte [ebx-0x2]
	mov [edx+0x1], al
	movzx eax, byte [ebx-0x2]
	mov [edx+0x2], al
	movzx eax, byte [ebx-0x1]
	mov [edx+0x3], al
	add edx, 0x4
	add esi, 0x1
	add ebx, 0x2
	cmp esi, ecx
	jnz Image_DecodeBitmap_90
	jmp Image_DecodeBitmap_30
Image_DecodeBitmap_200:
	test ecx, ecx
	jz Image_DecodeBitmap_30
	lea ebx, [edi+0x1]
	xor esi, esi
Image_DecodeBitmap_100:
	movzx eax, byte [ebx-0x1]
	mov [edx], al
	movzx eax, byte [ebx-0x1]
	mov [edx+0x1], al
	movzx eax, byte [ebx-0x1]
	mov [edx+0x2], al
	mov byte [edx+0x3], 0xff
	add edx, 0x4
	add esi, 0x1
	add ebx, 0x1
	cmp esi, ecx
	jnz Image_DecodeBitmap_100
	jmp Image_DecodeBitmap_30
Image_DecodeBitmap_210:
	test ecx, ecx
	jz Image_DecodeBitmap_30
	mov ebx, edi
	lea ecx, [edi+ecx]
Image_DecodeBitmap_110:
	mov byte [edx], 0x0
	mov byte [edx+0x1], 0x0
	mov byte [edx+0x2], 0x0
	movzx eax, byte [ebx]
	mov [edx+0x3], al
	add ebx, 0x1
	add edx, 0x4
	cmp ebx, ecx
	jnz Image_DecodeBitmap_110
	jmp Image_DecodeBitmap_30
Image_DecodeBitmap_10:
	mov ebx, [ebp-0x24]
	movsx edx, word [ebx+0x6]
	movsx ecx, word [ebx+0x8]
	mov ebx, 0x1
	jmp Image_DecodeBitmap_120
Image_DecodeBitmap_130:
	sar edx, 1
	mov eax, 0x1
	cmp edx, 0x1
	cmovle edx, eax
	sar ecx, 1
	cmp ecx, 0x1
	cmovle ecx, eax
	add ebx, 0x1
Image_DecodeBitmap_120:
	cmp edx, 0x1
	jg Image_DecodeBitmap_130
	cmp ecx, 0x1
	jg Image_DecodeBitmap_130
	sub ebx, 0x1
	mov [ebp-0x10], ebx
	js Image_DecodeBitmap_140
	mov eax, ebx
	jmp Image_DecodeBitmap_150
Image_DecodeBitmap_40:
	mov ebx, edi
	xor esi, esi
Image_DecodeBitmap_160:
	movzx eax, byte [ebx+0x2]
	mov [edx], al
	movzx eax, byte [ebx+0x1]
	mov [edx+0x1], al
	movzx eax, byte [ebx]
	mov [edx+0x2], al
	movzx eax, byte [ebx+0x3]
	mov [edx+0x3], al
	add ebx, 0x4
	add edx, 0x4
	add esi, 0x1
	cmp ecx, esi
	jnz Image_DecodeBitmap_160
	jmp Image_DecodeBitmap_30
	nop
	
	
Image_DecodeBitmap_jumptab_0:
	dd Image_DecodeBitmap_30
	dd Image_DecodeBitmap_170
	dd Image_DecodeBitmap_180
	dd Image_DecodeBitmap_190
	dd Image_DecodeBitmap_200
	dd Image_DecodeBitmap_210
	dd Image_DecodeBitmap_170
	dd Image_DecodeBitmap_180
	dd Image_DecodeBitmap_190
	dd Image_DecodeBitmap_200
	dd Image_DecodeBitmap_210


;Image_DecodeDxtc(GfxRawImage*, GfxImageFileHeader*, unsigned char*, int)
Image_DecodeDxtc:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov [ebp-0x30], eax
	mov [ebp-0x34], edx
	mov [ebp-0x38], ecx
	movzx edx, byte [edx+0x5]
	mov eax, edx
	and eax, 0x4
	cmp eax, 0x1
	sbb ecx, ecx
	and ecx, 0xfffffffb
	add ecx, 0x6
	mov [ebp-0x28], ecx
	and dl, 0x2
	jz Image_DecodeDxtc_10
	xor ecx, ecx
Image_DecodeDxtc_180:
	mov [ebp-0x2c], ecx
Image_DecodeDxtc_90:
	mov edx, [ebp-0x34]
	movsx ebx, word [edx+0x6]
	movzx ecx, byte [ebp-0x2c]
	sar ebx, cl
	mov eax, 0x1
	cmp ebx, 0x1
	cmovle ebx, eax
	movsx edx, word [edx+0x8]
	movzx ecx, byte [ebp-0x2c]
	sar edx, cl
	cmp edx, 0x1
	cmovle edx, eax
	mov eax, [ebp-0x28]
	test eax, eax
	jle Image_DecodeDxtc_20
	add edx, 0x3
	sar edx, 0x2
	lea eax, [ebx+0x3]
	sar eax, 0x2
	imul edx, eax
	imul edx, [ebp+0x8]
	mov [ebp-0x1c], edx
Image_DecodeDxtc_70:
	mov edi, [ebp-0x2c]
	test edi, edi
	jnz Image_DecodeDxtc_30
	mov edx, [ebp-0x34]
	movzx eax, byte [edx+0x4]
	cmp al, 0xc
	jz Image_DecodeDxtc_40
	cmp al, 0xd
	jz Image_DecodeDxtc_50
	cmp al, 0xb
	jz Image_DecodeDxtc_60
Image_DecodeDxtc_30:
	xor eax, eax
	mov ecx, [ebp-0x1c]
	add [ebp-0x38], ecx
	add eax, 0x1
	cmp [ebp-0x28], eax
	jle Image_DecodeDxtc_20
Image_DecodeDxtc_80:
	test eax, eax
	jz Image_DecodeDxtc_70
	mov ecx, [ebp-0x1c]
	add [ebp-0x38], ecx
	add eax, 0x1
	cmp [ebp-0x28], eax
	jg Image_DecodeDxtc_80
Image_DecodeDxtc_20:
	sub dword [ebp-0x2c], 0x1
	cmp dword [ebp-0x2c], 0xffffffff
	jnz Image_DecodeDxtc_90
Image_DecodeDxtc_190:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Image_DecodeDxtc_60:
	mov dword [ebp-0x24], 0x8
	mov dword [ebp-0x20], Image_DecompressDxt1
Image_DecodeDxtc_150:
	mov eax, [ebp-0x30]
	mov esi, [eax+0x4c]
	test esi, esi
	jle Image_DecodeDxtc_30
	mov esi, [ebp-0x38]
	xor edi, edi
	mov edx, [ebp-0x30]
	jmp Image_DecodeDxtc_100
Image_DecodeDxtc_110:
	mov eax, edx
Image_DecodeDxtc_140:
	add edi, 0x4
	cmp [eax+0x4c], edi
	jle Image_DecodeDxtc_30
	mov edx, eax
Image_DecodeDxtc_100:
	mov ebx, [edx+0x48]
	test ebx, ebx
	jle Image_DecodeDxtc_110
	xor ebx, ebx
	mov edx, [ebp-0x30]
	jmp Image_DecodeDxtc_120
Image_DecodeDxtc_130:
	mov edx, ecx
Image_DecodeDxtc_120:
	mov [esp+0xc], edi
	mov [esp+0x8], ebx
	mov [esp+0x4], edx
	mov [esp], esi
	call dword [ebp-0x20]
	add esi, [ebp-0x24]
	add ebx, 0x4
	mov ecx, [ebp-0x30]
	cmp [ecx+0x48], ebx
	jg Image_DecodeDxtc_130
	mov eax, ecx
	jmp Image_DecodeDxtc_140
Image_DecodeDxtc_40:
	mov dword [ebp-0x24], 0x10
	mov dword [ebp-0x20], Image_DecompressDxt3
	jmp Image_DecodeDxtc_150
Image_DecodeDxtc_50:
	mov dword [ebp-0x24], 0x10
	mov dword [ebp-0x20], Image_DecompressDxt5
	jmp Image_DecodeDxtc_150
Image_DecodeDxtc_10:
	mov eax, [ebp-0x34]
	movsx edx, word [eax+0x6]
	movsx ecx, word [eax+0x8]
	mov ebx, 0x1
	jmp Image_DecodeDxtc_160
Image_DecodeDxtc_170:
	sar edx, 1
	mov eax, 0x1
	cmp edx, 0x1
	cmovle edx, eax
	sar ecx, 1
	cmp ecx, 0x1
	cmovle ecx, eax
	add ebx, 0x1
Image_DecodeDxtc_160:
	cmp edx, 0x1
	jg Image_DecodeDxtc_170
	cmp ecx, 0x1
	jg Image_DecodeDxtc_170
	mov ecx, ebx
	sub ecx, 0x1
	jns Image_DecodeDxtc_180
	jmp Image_DecodeDxtc_190


;Image_DecompressDxt1(unsigned char*, GfxRawImage*, int, int)
Image_DecompressDxt1:
	push ebp
	mov ebp, esp
	push ebx
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov ecx, [ebp+0x10]
	mov dword [ebp+0xc], 0x0
	mov ebx, [ebp+0x14]
	mov [ebp+0x8], ebx
	pop ebx
	pop ebp
	jmp Image_DecompressDxt1_Internal
	nop


;Image_DecompressDxt3(unsigned char*, GfxRawImage*, int, int)
Image_DecompressDxt3:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov ebx, [ebp+0x8]
	lea eax, [ebx+0x8]
	mov dword [esp+0x4], 0x1
	mov edx, [ebp+0x14]
	mov [esp], edx
	mov ecx, [ebp+0x10]
	mov edx, [ebp+0xc]
	call Image_DecompressDxt1_Internal
	mov edi, ebx
	mov dword [ebp-0x1c], 0x0
Image_DecompressDxt3_10:
	mov ebx, [ebp+0x14]
	add ebx, [ebp-0x1c]
	mov ecx, ebx
	mov eax, [ebp+0xc]
	imul ecx, [eax+0x48]
	add ecx, [ebp+0x10]
	mov esi, [eax+0x50]
	movzx edx, byte [edi]
	and edx, 0xf
	mov eax, edx
	shl eax, 0x4
	add eax, edx
	mov [esi+ecx*4+0x3], al
	mov ecx, ebx
	mov edx, [ebp+0xc]
	imul ecx, [edx+0x48]
	add ecx, [ebp+0x10]
	mov esi, [edx+0x50]
	movzx edx, byte [edi]
	shr dl, 0x4
	and edx, 0xf
	mov eax, edx
	shl eax, 0x4
	add eax, edx
	mov [esi+ecx*4+0x7], al
	mov ecx, ebx
	mov eax, [ebp+0xc]
	imul ecx, [eax+0x48]
	add ecx, [ebp+0x10]
	mov esi, [eax+0x50]
	movzx edx, byte [edi+0x1]
	and edx, 0xf
	mov eax, edx
	shl eax, 0x4
	add eax, edx
	mov [esi+ecx*4+0xb], al
	mov edx, [ebp+0xc]
	imul ebx, [edx+0x48]
	add ebx, [ebp+0x10]
	mov ecx, [edx+0x50]
	movzx edx, byte [edi+0x1]
	shr dl, 0x4
	and edx, 0xf
	mov eax, edx
	shl eax, 0x4
	add eax, edx
	mov [ecx+ebx*4+0xf], al
	add dword [ebp-0x1c], 0x1
	add edi, 0x2
	cmp dword [ebp-0x1c], 0x4
	jnz Image_DecompressDxt3_10
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Image_DecompressDxt5(unsigned char*, GfxRawImage*, int, int)
Image_DecompressDxt5:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x8c
	mov eax, [ebp+0x8]
	add eax, 0x8
	mov dword [esp+0x4], 0x1
	mov edx, [ebp+0x14]
	mov [esp], edx
	mov ecx, [ebp+0x10]
	mov edx, [ebp+0xc]
	call Image_DecompressDxt1_Internal
	mov ecx, [ebp+0x8]
	movzx edx, byte [ecx]
	mov [ebp-0x20], dl
	movzx eax, byte [ecx+0x1]
	mov [ebp-0x1f], al
	cmp dl, al
	jbe Image_DecompressDxt5_10
	movzx edx, dl
	mov [ebp-0x2c], edx
	movzx eax, al
	mov [ebp-0x30], eax
	add edx, edx
	mov [ebp-0x40], edx
	mov edi, edx
	add edi, [ebp-0x2c]
	lea eax, [eax+edi*2]
	cvtsi2ss xmm0, eax
	mulss xmm0, [_float_0_14285715]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x44]
	cvttss2si eax, [ebp-0x44]
	mov [ebp-0x1e], al
	mov ebx, [ebp-0x2c]
	shl ebx, 0x2
	mov ecx, [ebp-0x2c]
	lea eax, [ebx+ecx]
	mov esi, [ebp-0x30]
	add esi, esi
	add eax, esi
	cvtsi2ss xmm0, eax
	mulss xmm0, [_float_0_14285715]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x48]
	cvttss2si eax, [ebp-0x48]
	mov [ebp-0x1d], al
	add esi, [ebp-0x30]
	add ebx, esi
	cvtsi2ss xmm0, ebx
	mulss xmm0, [_float_0_14285715]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x4c]
	cvttss2si eax, [ebp-0x4c]
	mov [ebp-0x1c], al
	mov ebx, [ebp-0x30]
	shl ebx, 0x2
	add edi, ebx
	cvtsi2ss xmm0, edi
	mulss xmm0, [_float_0_14285715]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x50]
	cvttss2si eax, [ebp-0x50]
	mov [ebp-0x1b], al
	add ebx, [ebp-0x30]
	mov eax, [ebp-0x40]
	add eax, ebx
	cvtsi2ss xmm0, eax
	mulss xmm0, [_float_0_14285715]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x54]
	cvttss2si eax, [ebp-0x54]
	mov [ebp-0x1a], al
	mov eax, [ebp-0x2c]
	lea esi, [eax+esi*2]
	cvtsi2ss xmm0, esi
	mulss xmm0, [_float_0_14285715]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x58]
	cvttss2si eax, [ebp-0x58]
	mov [ebp-0x19], al
Image_DecompressDxt5_60:
	mov eax, [ebp+0x8]
	movzx ebx, byte [eax+0x2]
	movzx eax, byte [eax+0x3]
	shl eax, 0x8
	or ebx, eax
	xor edi, edi
	mov dword [ebp-0x34], 0x2
	mov dword [ebp-0x38], 0x0
Image_DecompressDxt5_50:
	xor esi, esi
	mov ecx, [ebp+0x14]
	mov eax, [ebp-0x38]
	add ecx, eax
	mov [ebp-0x6c], ecx
	mov edx, ecx
Image_DecompressDxt5_40:
	mov eax, [ebp+0xc]
	imul edx, [eax+0x48]
	lea edx, [esi+edx]
	add edx, [ebp+0x10]
	mov ecx, [eax+0x50]
	mov [ebp-0x7c], ecx
	mov eax, ebx
	mov ecx, edi
	sar eax, cl
	and eax, 0x7
	movzx eax, byte [ebp+eax-0x20]
	mov ecx, [ebp-0x7c]
	mov [ecx+edx*4+0x3], al
	add edi, 0x3
	cmp edi, 0x7
	jle Image_DecompressDxt5_20
	sub edi, 0x8
	sar ebx, 0x8
	cmp dword [ebp-0x34], 0x5
	ja Image_DecompressDxt5_20
	mov edx, [ebp+0x8]
	mov ecx, [ebp-0x34]
	movzx eax, byte [edx+ecx+0x2]
	shl eax, 0x8
	or ebx, eax
	add ecx, 0x1
	mov [ebp-0x34], ecx
Image_DecompressDxt5_20:
	add esi, 0x1
	cmp esi, 0x4
	jz Image_DecompressDxt5_30
	mov edx, [ebp-0x6c]
	jmp Image_DecompressDxt5_40
Image_DecompressDxt5_30:
	add dword [ebp-0x38], 0x1
	cmp dword [ebp-0x38], 0x4
	jnz Image_DecompressDxt5_50
	add esp, 0x8c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Image_DecompressDxt5_10:
	movzx edx, dl
	mov [ebp-0x3c], edx
	movzx edi, al
	lea eax, [edi+edx*4]
	cvtsi2ss xmm0, eax
	mulss xmm0, [_float_0_20000000]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x5c]
	cvttss2si eax, [ebp-0x5c]
	mov [ebp-0x1e], al
	mov esi, [ebp-0x3c]
	add esi, esi
	mov edx, [ebp-0x3c]
	lea eax, [esi+edx]
	lea ebx, [edi+edi]
	add eax, ebx
	cvtsi2ss xmm0, eax
	mulss xmm0, [_float_0_20000000]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x60]
	cvttss2si eax, [ebp-0x60]
	mov [ebp-0x1d], al
	add ebx, edi
	add esi, ebx
	cvtsi2ss xmm0, esi
	mulss xmm0, [_float_0_20000000]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x64]
	cvttss2si eax, [ebp-0x64]
	mov [ebp-0x1c], al
	mov ecx, [ebp-0x3c]
	lea edi, [ecx+edi*4]
	cvtsi2ss xmm0, edi
	mulss xmm0, [_float_0_20000000]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x68]
	cvttss2si eax, [ebp-0x68]
	mov [ebp-0x1b], al
	mov byte [ebp-0x1a], 0x0
	mov byte [ebp-0x19], 0xff
	jmp Image_DecompressDxt5_60


;Image_DecompressDxt1_Internal(DdsBlock_Dxt1_t*, GfxRawImage*, int, int, unsigned char)
Image_DecompressDxt1_Internal:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xac
	mov ebx, eax
	mov [ebp-0x44], edx
	mov [ebp-0x48], ecx
	movzx eax, byte [eax+0x1]
	shr al, 0x3
	and eax, 0x1f
	cvtsi2ss xmm0, eax
	movss [ebp-0x3c], xmm0
	movss xmm0, dword [_float_0_03125000]
	movss xmm1, dword [ebp-0x3c]
	mulss xmm1, xmm0
	movss [ebp-0x3c], xmm1
	movzx edx, word [ebx]
	mov eax, edx
	shr ax, 0x5
	and eax, 0x3f
	cvtsi2ss xmm2, eax
	movss xmm1, dword [_float_0_01562500]
	mulss xmm2, xmm1
	movss [ebp-0x34], xmm2
	movzx eax, byte [ebx]
	and eax, 0x1f
	cvtsi2ss xmm2, eax
	mulss xmm2, xmm0
	movss [ebp-0x2c], xmm2
	movzx eax, byte [ebx+0x3]
	shr al, 0x3
	and eax, 0x1f
	cvtsi2ss xmm2, eax
	mulss xmm2, xmm0
	movss [ebp-0x40], xmm2
	movzx eax, word [ebx+0x2]
	shr ax, 0x5
	and eax, 0x3f
	cvtsi2ss xmm2, eax
	mulss xmm1, xmm2
	movss [ebp-0x38], xmm1
	movzx eax, byte [ebx+0x2]
	and eax, 0x1f
	cvtsi2ss xmm1, eax
	mulss xmm0, xmm1
	movss [ebp-0x30], xmm0
	cmp byte [ebp+0xc], 0x0
	jnz Image_DecompressDxt1_Internal_10
	cmp dx, [ebx+0x2]
	jbe Image_DecompressDxt1_Internal_20
Image_DecompressDxt1_Internal_10:
	movss xmm0, dword [ebp-0x3c]
	mulss xmm0, [_float_255_00000000]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x4c]
	cvttss2si eax, [ebp-0x4c]
	mov [ebp-0x28], al
	movss xmm0, dword [ebp-0x34]
	mulss xmm0, [_float_255_00000000]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x50]
	cvttss2si eax, [ebp-0x50]
	mov [ebp-0x27], al
	movss xmm0, dword [ebp-0x2c]
	mulss xmm0, [_float_255_00000000]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x54]
	cvttss2si eax, [ebp-0x54]
	mov [ebp-0x26], al
	mov byte [ebp-0x25], 0xff
	movss xmm0, dword [ebp-0x40]
	mulss xmm0, [_float_255_00000000]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x58]
	cvttss2si eax, [ebp-0x58]
	mov [ebp-0x24], al
	movss xmm0, dword [ebp-0x38]
	mulss xmm0, [_float_255_00000000]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x5c]
	cvttss2si eax, [ebp-0x5c]
	mov [ebp-0x23], al
	movss xmm0, dword [_float_255_00000000]
	mulss xmm0, [ebp-0x30]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x60]
	cvttss2si eax, [ebp-0x60]
	mov [ebp-0x22], al
	mov byte [ebp-0x21], 0xff
	movss xmm0, dword [ebp-0x3c]
	mulss xmm0, [_float_170_00000000]
	movss xmm1, dword [ebp-0x40]
	mulss xmm1, [_float_85_00000000]
	addss xmm0, xmm1
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x64]
	cvttss2si eax, [ebp-0x64]
	mov [ebp-0x20], al
	movss xmm0, dword [ebp-0x34]
	mulss xmm0, [_float_170_00000000]
	movss xmm1, dword [ebp-0x38]
	mulss xmm1, [_float_85_00000000]
	addss xmm0, xmm1
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x68]
	cvttss2si eax, [ebp-0x68]
	mov [ebp-0x1f], al
	movss xmm0, dword [ebp-0x2c]
	mulss xmm0, [_float_170_00000000]
	movss xmm1, dword [ebp-0x30]
	mulss xmm1, [_float_85_00000000]
	addss xmm0, xmm1
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x6c]
	cvttss2si eax, [ebp-0x6c]
	mov [ebp-0x1e], al
	mov byte [ebp-0x1d], 0xff
	movss xmm2, dword [_float_85_00000000]
	mulss xmm2, [ebp-0x3c]
	movss [ebp-0x3c], xmm2
	movss xmm0, dword [_float_170_00000000]
	mulss xmm0, [ebp-0x40]
	addss xmm2, xmm0
	movss xmm1, dword [_float_0_50000000]
	addss xmm1, xmm2
	movss [esp], xmm1
	call floorf
	fstp dword [ebp-0x70]
	cvttss2si eax, [ebp-0x70]
	mov [ebp-0x1c], al
	movss xmm2, dword [_float_85_00000000]
	mulss xmm2, [ebp-0x34]
	movss [ebp-0x34], xmm2
	movss xmm0, dword [_float_170_00000000]
	mulss xmm0, [ebp-0x38]
	addss xmm2, xmm0
	movss xmm1, dword [_float_0_50000000]
	addss xmm1, xmm2
	movss [esp], xmm1
	call floorf
	fstp dword [ebp-0x74]
	cvttss2si eax, [ebp-0x74]
	mov [ebp-0x1b], al
	movss xmm2, dword [_float_85_00000000]
	mulss xmm2, [ebp-0x2c]
	movss [ebp-0x2c], xmm2
	movss xmm0, dword [_float_170_00000000]
	mulss xmm0, [ebp-0x30]
	addss xmm2, xmm0
	movss xmm1, dword [_float_0_50000000]
	addss xmm1, xmm2
	movss [esp], xmm1
	call floorf
	fstp dword [ebp-0x78]
	cvttss2si eax, [ebp-0x78]
	mov [ebp-0x1a], al
	mov byte [ebp-0x19], 0xff
Image_DecompressDxt1_Internal_40:
	mov esi, ebx
	xor edi, edi
Image_DecompressDxt1_Internal_30:
	mov ecx, [ebp+0x8]
	add ecx, edi
	mov edx, ecx
	mov eax, [ebp-0x44]
	imul edx, [eax+0x48]
	add edx, [ebp-0x48]
	mov ebx, [eax+0x50]
	movzx eax, byte [esi+0x4]
	and eax, 0x3
	mov eax, [ebp+eax*4-0x28]
	mov [ebx+edx*4], eax
	mov edx, ecx
	mov eax, [ebp-0x44]
	imul edx, [eax+0x48]
	add edx, [ebp-0x48]
	mov ebx, [eax+0x50]
	movzx eax, byte [esi+0x4]
	shr al, 0x2
	and eax, 0x3
	mov eax, [ebp+eax*4-0x28]
	mov [ebx+edx*4+0x4], eax
	mov edx, ecx
	mov eax, [ebp-0x44]
	imul edx, [eax+0x48]
	add edx, [ebp-0x48]
	mov ebx, [eax+0x50]
	movzx eax, byte [esi+0x4]
	shr al, 0x4
	and eax, 0x3
	mov eax, [ebp+eax*4-0x28]
	mov [ebx+edx*4+0x8], eax
	mov eax, [ebp-0x44]
	imul ecx, [eax+0x48]
	add ecx, [ebp-0x48]
	mov edx, [eax+0x50]
	movzx eax, byte [esi+0x4]
	shr al, 0x6
	and eax, 0x3
	mov eax, [ebp+eax*4-0x28]
	mov [edx+ecx*4+0xc], eax
	add edi, 0x1
	add esi, 0x1
	cmp edi, 0x4
	jnz Image_DecompressDxt1_Internal_30
	add esp, 0xac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Image_DecompressDxt1_Internal_20:
	movss xmm0, dword [ebp-0x3c]
	mulss xmm0, [_float_255_00000000]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x7c]
	cvttss2si eax, [ebp-0x7c]
	mov [ebp-0x28], al
	movss xmm0, dword [ebp-0x34]
	mulss xmm0, [_float_255_00000000]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x80]
	cvttss2si eax, [ebp-0x80]
	mov [ebp-0x27], al
	movss xmm0, dword [ebp-0x2c]
	mulss xmm0, [_float_255_00000000]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x84]
	cvttss2si eax, [ebp-0x84]
	mov [ebp-0x26], al
	mov byte [ebp-0x25], 0xff
	movss xmm0, dword [ebp-0x40]
	mulss xmm0, [_float_255_00000000]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x88]
	cvttss2si eax, [ebp-0x88]
	mov [ebp-0x24], al
	movss xmm0, dword [ebp-0x38]
	mulss xmm0, [_float_255_00000000]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x8c]
	cvttss2si eax, [ebp-0x8c]
	mov [ebp-0x23], al
	movss xmm0, dword [_float_255_00000000]
	mulss xmm0, [ebp-0x30]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x90]
	cvttss2si eax, [ebp-0x90]
	mov [ebp-0x22], al
	mov byte [ebp-0x21], 0xff
	movss xmm2, dword [_float_127_50000000]
	mulss xmm2, [ebp-0x3c]
	movss [ebp-0x3c], xmm2
	movss xmm0, dword [_float_127_50000000]
	mulss xmm0, [ebp-0x40]
	addss xmm2, xmm0
	movss xmm1, dword [_float_0_50000000]
	addss xmm1, xmm2
	movss [esp], xmm1
	call floorf
	fstp dword [ebp-0x94]
	cvttss2si eax, [ebp-0x94]
	mov [ebp-0x20], al
	movss xmm2, dword [_float_127_50000000]
	mulss xmm2, [ebp-0x34]
	movss [ebp-0x34], xmm2
	movss xmm0, dword [_float_127_50000000]
	mulss xmm0, [ebp-0x38]
	addss xmm2, xmm0
	movss xmm1, dword [_float_0_50000000]
	addss xmm1, xmm2
	movss [esp], xmm1
	call floorf
	fstp dword [ebp-0x98]
	cvttss2si eax, [ebp-0x98]
	mov [ebp-0x1f], al
	movss xmm2, dword [_float_127_50000000]
	mulss xmm2, [ebp-0x2c]
	movss [ebp-0x2c], xmm2
	movss xmm0, dword [_float_127_50000000]
	mulss xmm0, [ebp-0x30]
	addss xmm2, xmm0
	movss xmm1, dword [_float_0_50000000]
	addss xmm1, xmm2
	movss [esp], xmm1
	call floorf
	fstp dword [ebp-0x9c]
	cvttss2si eax, [ebp-0x9c]
	mov [ebp-0x1e], al
	mov byte [ebp-0x1d], 0xff
	mov byte [ebp-0x1c], 0x0
	mov byte [ebp-0x1b], 0x0
	mov byte [ebp-0x1a], 0x0
	mov byte [ebp-0x19], 0x0
	jmp Image_DecompressDxt1_Internal_40
	nop


;Image_DecodeWavelet(GfxRawImage*, GfxImageFileHeader*, unsigned char*, int)
Image_DecodeWavelet:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xac
	mov [ebp-0x84], eax
	mov [ebp-0x88], edx
	mov [ebp-0x8c], ecx
	mov word [ebp-0x68], 0x0
	mov word [ebp-0x66], 0x0
	movsx esi, word [edx+0x6]
	mov [ebp-0x60], esi
	movsx eax, word [edx+0x8]
	mov [ebp-0x90], eax
	mov [ebp-0x5c], eax
	test byte [edx+0x5], 0x2
	jz Image_DecodeWavelet_10
	xor eax, eax
Image_DecodeWavelet_130:
	mov [ebp-0x50], eax
	mov edx, [ebp+0x8]
	mov [ebp-0x58], edx
	mov [ebp-0x54], edx
	mov byte [ebp-0x4c], 0x0
	mov ecx, [ebp-0x88]
	movzx eax, byte [ecx+0x5]
	and eax, 0x4
	cmp eax, 0x1
	sbb edi, edi
	and edi, 0xfffffffb
	add edi, 0x6
	imul esi, [ebp-0x90]
	imul esi, edx
	mov [ebp-0x80], esi
	test edi, edi
	jg Image_DecodeWavelet_20
Image_DecodeWavelet_200:
	mov edx, [ebp-0x8c]
	mov [ebp-0x64], edx
	mov ebx, [ebp-0x50]
	test ebx, ebx
	jns Image_DecodeWavelet_30
	jmp Image_DecodeWavelet_40
Image_DecodeWavelet_50:
	mov ebx, [ebp-0x50]
	sub ebx, 0x1
	mov [ebp-0x50], ebx
	test ebx, ebx
	js Image_DecodeWavelet_40
Image_DecodeWavelet_30:
	mov eax, [ebp-0x60]
	mov ecx, ebx
	sar eax, cl
	mov esi, 0x1
	cmp eax, 0x1
	cmovle eax, esi
	mov edx, [ebp-0x5c]
	sar edx, cl
	cmp edx, 0x1
	cmovle edx, esi
	imul eax, edx
	imul eax, [ebp+0x8]
	mov [ebp-0x7c], eax
	test edi, edi
	jle Image_DecodeWavelet_50
	xor si, si
Image_DecodeWavelet_80:
	lea eax, [esi*4]
	lea edx, [ebp-0x48]
	add edx, eax
	mov ecx, [edx]
	mov eax, [ebp+eax-0x30]
	add eax, [ebp-0x80]
	sub eax, [ebp-0x7c]
	mov [edx], eax
	lea edx, [ebp-0x68]
	mov [esp+0x8], edx
	mov [esp+0x4], eax
	mov [esp], ecx
	call Wavelet_DecompressLevel
	test esi, esi
	jnz Image_DecodeWavelet_60
	mov eax, [ebp-0x50]
	test eax, eax
	jnz Image_DecodeWavelet_60
	mov ecx, [ebp-0x48]
	mov eax, [ebp-0x88]
	movsx ebx, word [eax+0x6]
	movsx eax, word [eax+0x8]
	imul ebx, eax
	mov eax, [ebp-0x84]
	mov edx, [eax+0x50]
	mov eax, [ebp-0x88]
	movzx eax, byte [eax+0x4]
	mov [ebp-0x9c], eax
	cmp eax, 0xa
	ja Image_DecodeWavelet_60
	jmp dword [eax*4+Image_DecodeWavelet_jumptab_0]
Image_DecodeWavelet_210:
	test ebx, ebx
	jz Image_DecodeWavelet_60
	mov dword [ebp-0x78], 0x0
Image_DecodeWavelet_70:
	movzx eax, byte [ecx+0x2]
	mov [edx], al
	movzx eax, byte [ecx+0x1]
	mov [edx+0x1], al
	movzx eax, byte [ecx]
	mov [edx+0x2], al
	movzx eax, byte [ecx+0x3]
	mov [edx+0x3], al
	add ecx, 0x4
	add edx, 0x4
	add dword [ebp-0x78], 0x1
	cmp [ebp-0x78], ebx
	jnz Image_DecodeWavelet_70
Image_DecodeWavelet_60:
	add esi, 0x1
	cmp edi, esi
	jnz Image_DecodeWavelet_80
Image_DecodeWavelet_150:
	mov ebx, [ebp-0x50]
	sub ebx, 0x1
	mov [ebp-0x50], ebx
	test ebx, ebx
	jns Image_DecodeWavelet_30
Image_DecodeWavelet_40:
	mov eax, edi
	sub eax, 0x1
	js Image_DecodeWavelet_90
	lea ebx, [ebp+eax*4-0x30]
	xor esi, esi
Image_DecodeWavelet_100:
	mov eax, [ebx]
	mov [esp], eax
	call Hunk_FreeTempMemory
	add esi, 0x1
	sub ebx, 0x4
	cmp edi, esi
	jnz Image_DecodeWavelet_100
Image_DecodeWavelet_90:
	add esp, 0xac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Image_DecodeWavelet_10:
	mov ecx, eax
	mov edx, esi
	mov ebx, 0x1
	jmp Image_DecodeWavelet_110
Image_DecodeWavelet_120:
	sar edx, 1
	mov eax, 0x1
	cmp edx, 0x1
	cmovle edx, eax
	sar ecx, 1
	cmp ecx, 0x1
	cmovle ecx, eax
	add ebx, 0x1
Image_DecodeWavelet_110:
	cmp edx, 0x1
	jg Image_DecodeWavelet_120
	cmp ecx, 0x1
	jg Image_DecodeWavelet_120
	lea eax, [ebx-0x1]
	jmp Image_DecodeWavelet_130
Image_DecodeWavelet_220:
	test ebx, ebx
	jz Image_DecodeWavelet_60
	mov dword [ebp-0x74], 0x0
Image_DecodeWavelet_140:
	movzx eax, byte [ecx+0x2]
	mov [edx], al
	movzx eax, byte [ecx+0x1]
	mov [edx+0x1], al
	movzx eax, byte [ecx]
	mov [edx+0x2], al
	mov byte [edx+0x3], 0xff
	add ecx, 0x3
	add edx, 0x4
	add dword [ebp-0x74], 0x1
	cmp ebx, [ebp-0x74]
	jnz Image_DecodeWavelet_140
	add esi, 0x1
	cmp edi, esi
	jnz Image_DecodeWavelet_80
	jmp Image_DecodeWavelet_150
Image_DecodeWavelet_230:
	test ebx, ebx
	jz Image_DecodeWavelet_60
	add ecx, 0x2
	mov dword [ebp-0x70], 0x0
Image_DecodeWavelet_160:
	movzx eax, byte [ecx-0x2]
	mov [edx], al
	movzx eax, byte [ecx-0x2]
	mov [edx+0x1], al
	movzx eax, byte [ecx-0x2]
	mov [edx+0x2], al
	movzx eax, byte [ecx-0x1]
	mov [edx+0x3], al
	add edx, 0x4
	add dword [ebp-0x70], 0x1
	add ecx, 0x2
	cmp [ebp-0x70], ebx
	jnz Image_DecodeWavelet_160
	add esi, 0x1
	cmp edi, esi
	jnz Image_DecodeWavelet_80
	jmp Image_DecodeWavelet_150
Image_DecodeWavelet_240:
	test ebx, ebx
	jz Image_DecodeWavelet_60
	add ecx, 0x1
	mov dword [ebp-0x6c], 0x0
Image_DecodeWavelet_170:
	movzx eax, byte [ecx-0x1]
	mov [edx], al
	movzx eax, byte [ecx-0x1]
	mov [edx+0x1], al
	movzx eax, byte [ecx-0x1]
	mov [edx+0x2], al
	mov byte [edx+0x3], 0xff
	add edx, 0x4
	add dword [ebp-0x6c], 0x1
	add ecx, 0x1
	cmp [ebp-0x6c], ebx
	jnz Image_DecodeWavelet_170
	add esi, 0x1
	cmp edi, esi
	jnz Image_DecodeWavelet_80
	jmp Image_DecodeWavelet_150
Image_DecodeWavelet_250:
	test ebx, ebx
	jz Image_DecodeWavelet_60
	lea ebx, [ecx+ebx]
Image_DecodeWavelet_180:
	mov byte [edx], 0x0
	mov byte [edx+0x1], 0x0
	mov byte [edx+0x2], 0x0
	movzx eax, byte [ecx]
	mov [edx+0x3], al
	add ecx, 0x1
	add edx, 0x4
	cmp ecx, ebx
	jnz Image_DecodeWavelet_180
	add esi, 0x1
	cmp edi, esi
	jnz Image_DecodeWavelet_80
	jmp Image_DecodeWavelet_150
Image_DecodeWavelet_20:
	xor ebx, ebx
Image_DecodeWavelet_190:
	mov eax, [ebp-0x80]
	mov [esp], eax
	call Hunk_AllocateTempMemory
	lea edx, [ebx*4]
	mov [ebp+edx-0x30], eax
	mov dword [ebp+edx-0x48], 0x0
	add ebx, 0x1
	cmp edi, ebx
	jnz Image_DecodeWavelet_190
	jmp Image_DecodeWavelet_200
	nop
	
	
Image_DecodeWavelet_jumptab_0:
	dd Image_DecodeWavelet_60
	dd Image_DecodeWavelet_210
	dd Image_DecodeWavelet_220
	dd Image_DecodeWavelet_230
	dd Image_DecodeWavelet_240
	dd Image_DecodeWavelet_250
	dd Image_DecodeWavelet_210
	dd Image_DecodeWavelet_220
	dd Image_DecodeWavelet_230
	dd Image_DecodeWavelet_240
	dd Image_DecodeWavelet_250


;Image_GetRawPixels(char const*, GfxRawImage*)
Image_GetRawPixels:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x7c
	mov edi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	mov dword [esp+0x10], 0x40
	lea esi, [ebp-0x5c]
	mov [esp+0xc], esi
	mov dword [esp+0x8], _cstring_iwi
	mov [esp+0x4], edi
	mov dword [esp], _cstring_images
	call Com_AssembleFilepath
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov [esp], esi
	call FS_ReadFile
	test eax, eax
	js Image_GetRawPixels_10
Image_GetRawPixels_50:
	mov [esp+0x4], esi
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call Image_ValidateHeader
	test al, al
	jz Image_GetRawPixels_20
Image_GetRawPixels_40:
	mov [esp+0x4], edi
	mov [esp], ebx
	call strcpy
	mov edx, [ebp-0x1c]
	movsx eax, word [edx+0x6]
	mov [ebx+0x48], eax
	movsx eax, word [edx+0x8]
	mov [ebx+0x4c], eax
	imul eax, [ebx+0x48]
	shl eax, 0x2
	mov [esp], eax
	call Z_MallocInternal
	mov [ebx+0x50], eax
	mov edx, [ebp-0x1c]
	lea ecx, [edx+0x1c]
	movzx eax, byte [edx+0x4]
	cmp eax, 0xd
	ja Image_GetRawPixels_30
	jmp dword [eax*4+Image_GetRawPixels_jumptab_0]
Image_GetRawPixels_170:
	mov byte [ebx+0x44], 0x1
	mov dword [esp], 0x10
	mov eax, ebx
	call Image_DecodeDxtc
	mov edx, [ebp-0x1c]
Image_GetRawPixels_30:
	mov [esp], edx
	call FS_FreeFile
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Image_GetRawPixels_20:
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_image_s_is_not_v
	mov dword [esp], 0x2
	call Com_Error
	jmp Image_GetRawPixels_40
Image_GetRawPixels_10:
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_image_s_is_missi
	mov dword [esp], 0x2
	call Com_Error
	jmp Image_GetRawPixels_50
Image_GetRawPixels_160:
	mov byte [ebx+0x44], 0x0
	mov dword [esp], 0x8
	mov eax, ebx
	call Image_DecodeDxtc
	mov edx, [ebp-0x1c]
	jmp Image_GetRawPixels_30
Image_GetRawPixels_60:
	mov byte [ebx+0x44], 0x1
	mov dword [esp], 0x4
	mov eax, ebx
	call Image_DecodeBitmap
	mov edx, [ebp-0x1c]
	jmp Image_GetRawPixels_30
Image_GetRawPixels_70:
	mov byte [ebx+0x44], 0x0
	mov dword [esp], 0x3
	mov eax, ebx
	call Image_DecodeBitmap
	mov edx, [ebp-0x1c]
	jmp Image_GetRawPixels_30
Image_GetRawPixels_80:
	mov byte [ebx+0x44], 0x1
	mov dword [esp], 0x2
	mov eax, ebx
	call Image_DecodeBitmap
	mov edx, [ebp-0x1c]
	jmp Image_GetRawPixels_30
Image_GetRawPixels_90:
	mov byte [ebx+0x44], 0x0
	mov dword [esp], 0x1
	mov eax, ebx
	call Image_DecodeBitmap
	mov edx, [ebp-0x1c]
	jmp Image_GetRawPixels_30
Image_GetRawPixels_100:
	mov byte [ebx+0x44], 0x1
	mov dword [esp], 0x1
	mov eax, ebx
	call Image_DecodeBitmap
	mov edx, [ebp-0x1c]
	jmp Image_GetRawPixels_30
Image_GetRawPixels_110:
	mov byte [ebx+0x44], 0x1
	mov dword [esp], 0x4
	mov eax, ebx
	call Image_DecodeWavelet
	mov edx, [ebp-0x1c]
	jmp Image_GetRawPixels_30
Image_GetRawPixels_120:
	mov byte [ebx+0x44], 0x0
	mov dword [esp], 0x3
	mov eax, ebx
	call Image_DecodeWavelet
	mov edx, [ebp-0x1c]
	jmp Image_GetRawPixels_30
Image_GetRawPixels_130:
	mov byte [ebx+0x44], 0x1
	mov dword [esp], 0x2
	mov eax, ebx
	call Image_DecodeWavelet
	mov edx, [ebp-0x1c]
	jmp Image_GetRawPixels_30
Image_GetRawPixels_140:
	mov byte [ebx+0x44], 0x0
	mov dword [esp], 0x1
	mov eax, ebx
	call Image_DecodeWavelet
	mov edx, [ebp-0x1c]
	jmp Image_GetRawPixels_30
Image_GetRawPixels_150:
	mov byte [ebx+0x44], 0x1
	mov dword [esp], 0x1
	mov eax, ebx
	call Image_DecodeWavelet
	mov edx, [ebp-0x1c]
	jmp Image_GetRawPixels_30
	
	
Image_GetRawPixels_jumptab_0:
	dd Image_GetRawPixels_30
	dd Image_GetRawPixels_60
	dd Image_GetRawPixels_70
	dd Image_GetRawPixels_80
	dd Image_GetRawPixels_90
	dd Image_GetRawPixels_100
	dd Image_GetRawPixels_110
	dd Image_GetRawPixels_120
	dd Image_GetRawPixels_130
	dd Image_GetRawPixels_140
	dd Image_GetRawPixels_150
	dd Image_GetRawPixels_160
	dd Image_GetRawPixels_170
	dd Image_GetRawPixels_170


;Image_FreeRawPixels(GfxRawImage*)
Image_FreeRawPixels:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax+0x50]
	mov [ebp+0x8], eax
	pop ebp
	jmp Z_FreeInternal


;Initialized global or static variables of r_imagedecode:
SECTION .data


;Initialized constant data of r_imagedecode:
SECTION .rdata


;Zero initialized global or static variables of r_imagedecode:
SECTION .bss


;All cstrings:
SECTION .rdata
_cstring_iwi:		db ".iwi",0
_cstring_images:		db "images/",0
_cstring_image_s_is_not_v:		db "image ",27h,"%s",27h," is not valid",0
_cstring_image_s_is_missi:		db "image ",27h,"%s",27h," is missing",0



;All constant floats and doubles:
SECTION .rdata
_float_0_14285715:		dd 0x3e124925	; 0.142857
_float_0_50000000:		dd 0x3f000000	; 0.5
_float_0_20000000:		dd 0x3e4ccccd	; 0.2
_float_0_03125000:		dd 0x3d000000	; 0.03125
_float_0_01562500:		dd 0x3c800000	; 0.015625
_float_255_00000000:		dd 0x437f0000	; 255
_float_170_00000000:		dd 0x432a0000	; 170
_float_85_00000000:		dd 0x42aa0000	; 85
_float_127_50000000:		dd 0x42ff0000	; 127.5

