;Imports of r_imagedecode:
	extern floorf
	extern _Z23Wavelet_DecompressLevelPhS_P13WaveletDecode
	extern Hunk_FreeTempMemory
	extern Hunk_AllocateTempMemory
	extern _Z20Com_AssembleFilepathPKcS0_S0_Pci
	extern FS_ReadFile
	extern _Z20Image_ValidateHeaderP18GfxImageFileHeaderPKc
	extern strcpy
	extern Z_MallocInternal
	extern FS_FreeFile
	extern _Z9Com_Error11errorParm_tPKcz
	extern Z_FreeInternal

;Exports of r_imagedecode:
	global _Z18Image_DecodeBitmapP11GfxRawImageP18GfxImageFileHeaderPhi
	global _Z16Image_DecodeDxtcP11GfxRawImageP18GfxImageFileHeaderPhi
	global _Z20Image_DecompressDxt1PhP11GfxRawImageii
	global _Z20Image_DecompressDxt3PhP11GfxRawImageii
	global _Z20Image_DecompressDxt5PhP11GfxRawImageii
	global _Z29Image_DecompressDxt1_InternalP15DdsBlock_Dxt1_tP11GfxRawImageiih
	global _Z19Image_DecodeWaveletP11GfxRawImageP18GfxImageFileHeaderPhi
	global _Z18Image_GetRawPixelsPKcP11GfxRawImage
	global _Z19Image_FreeRawPixelsP11GfxRawImage


SECTION .text


;Image_DecodeBitmap(GfxRawImage*, GfxImageFileHeader*, unsigned char*, int)
_Z18Image_DecodeBitmapP11GfxRawImageP18GfxImageFileHeaderPhi:
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
	jz _Z18Image_DecodeBitmapP11GfxRawImageP18GfxImageFileHeaderPhi_10
	mov dword [ebp-0x10], 0x0
	mov eax, [ebp-0x10]
_Z18Image_DecodeBitmapP11GfxRawImageP18GfxImageFileHeaderPhi_150:
	mov [ebp-0x1c], eax
_Z18Image_DecodeBitmapP11GfxRawImageP18GfxImageFileHeaderPhi_70:
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
	jle _Z18Image_DecodeBitmapP11GfxRawImageP18GfxImageFileHeaderPhi_20
	imul ebx, edx
	imul ebx, [ebp+0x8]
	mov [ebp-0x14], ebx
_Z18Image_DecodeBitmapP11GfxRawImageP18GfxImageFileHeaderPhi_50:
	mov eax, [ebp-0x1c]
	test eax, eax
	jnz _Z18Image_DecodeBitmapP11GfxRawImageP18GfxImageFileHeaderPhi_30
	mov ebx, [ebp-0x24]
	movsx ecx, word [ebx+0x6]
	movsx eax, word [ebx+0x8]
	imul ecx, eax
	mov eax, [ebp-0x20]
	mov edx, [eax+0x50]
	movzx eax, byte [ebx+0x4]
	cmp eax, 0xa
	ja _Z18Image_DecodeBitmapP11GfxRawImageP18GfxImageFileHeaderPhi_30
	jmp dword [eax*4+_Z18Image_DecodeBitmapP11GfxRawImageP18GfxImageFileHeaderPhi_jumptab_0]
_Z18Image_DecodeBitmapP11GfxRawImageP18GfxImageFileHeaderPhi_170:
	test ecx, ecx
	jnz _Z18Image_DecodeBitmapP11GfxRawImageP18GfxImageFileHeaderPhi_40
_Z18Image_DecodeBitmapP11GfxRawImageP18GfxImageFileHeaderPhi_30:
	xor eax, eax
	add edi, [ebp-0x14]
	add eax, 0x1
	cmp [ebp-0x18], eax
	jle _Z18Image_DecodeBitmapP11GfxRawImageP18GfxImageFileHeaderPhi_20
_Z18Image_DecodeBitmapP11GfxRawImageP18GfxImageFileHeaderPhi_60:
	test eax, eax
	jz _Z18Image_DecodeBitmapP11GfxRawImageP18GfxImageFileHeaderPhi_50
	add edi, [ebp-0x14]
	add eax, 0x1
	cmp [ebp-0x18], eax
	jg _Z18Image_DecodeBitmapP11GfxRawImageP18GfxImageFileHeaderPhi_60
_Z18Image_DecodeBitmapP11GfxRawImageP18GfxImageFileHeaderPhi_20:
	sub dword [ebp-0x1c], 0x1
	cmp dword [ebp-0x1c], 0xffffffff
	jnz _Z18Image_DecodeBitmapP11GfxRawImageP18GfxImageFileHeaderPhi_70
_Z18Image_DecodeBitmapP11GfxRawImageP18GfxImageFileHeaderPhi_140:
	add esp, 0x18
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z18Image_DecodeBitmapP11GfxRawImageP18GfxImageFileHeaderPhi_180:
	test ecx, ecx
	jz _Z18Image_DecodeBitmapP11GfxRawImageP18GfxImageFileHeaderPhi_30
	mov ebx, edi
	xor esi, esi
_Z18Image_DecodeBitmapP11GfxRawImageP18GfxImageFileHeaderPhi_80:
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
	jnz _Z18Image_DecodeBitmapP11GfxRawImageP18GfxImageFileHeaderPhi_80
	jmp _Z18Image_DecodeBitmapP11GfxRawImageP18GfxImageFileHeaderPhi_30
_Z18Image_DecodeBitmapP11GfxRawImageP18GfxImageFileHeaderPhi_190:
	test ecx, ecx
	jz _Z18Image_DecodeBitmapP11GfxRawImageP18GfxImageFileHeaderPhi_30
	lea ebx, [edi+0x2]
	xor esi, esi
_Z18Image_DecodeBitmapP11GfxRawImageP18GfxImageFileHeaderPhi_90:
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
	jnz _Z18Image_DecodeBitmapP11GfxRawImageP18GfxImageFileHeaderPhi_90
	jmp _Z18Image_DecodeBitmapP11GfxRawImageP18GfxImageFileHeaderPhi_30
_Z18Image_DecodeBitmapP11GfxRawImageP18GfxImageFileHeaderPhi_200:
	test ecx, ecx
	jz _Z18Image_DecodeBitmapP11GfxRawImageP18GfxImageFileHeaderPhi_30
	lea ebx, [edi+0x1]
	xor esi, esi
_Z18Image_DecodeBitmapP11GfxRawImageP18GfxImageFileHeaderPhi_100:
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
	jnz _Z18Image_DecodeBitmapP11GfxRawImageP18GfxImageFileHeaderPhi_100
	jmp _Z18Image_DecodeBitmapP11GfxRawImageP18GfxImageFileHeaderPhi_30
_Z18Image_DecodeBitmapP11GfxRawImageP18GfxImageFileHeaderPhi_210:
	test ecx, ecx
	jz _Z18Image_DecodeBitmapP11GfxRawImageP18GfxImageFileHeaderPhi_30
	mov ebx, edi
	lea ecx, [edi+ecx]
_Z18Image_DecodeBitmapP11GfxRawImageP18GfxImageFileHeaderPhi_110:
	mov byte [edx], 0x0
	mov byte [edx+0x1], 0x0
	mov byte [edx+0x2], 0x0
	movzx eax, byte [ebx]
	mov [edx+0x3], al
	add ebx, 0x1
	add edx, 0x4
	cmp ebx, ecx
	jnz _Z18Image_DecodeBitmapP11GfxRawImageP18GfxImageFileHeaderPhi_110
	jmp _Z18Image_DecodeBitmapP11GfxRawImageP18GfxImageFileHeaderPhi_30
_Z18Image_DecodeBitmapP11GfxRawImageP18GfxImageFileHeaderPhi_10:
	mov ebx, [ebp-0x24]
	movsx edx, word [ebx+0x6]
	movsx ecx, word [ebx+0x8]
	mov ebx, 0x1
	jmp _Z18Image_DecodeBitmapP11GfxRawImageP18GfxImageFileHeaderPhi_120
_Z18Image_DecodeBitmapP11GfxRawImageP18GfxImageFileHeaderPhi_130:
	sar edx, 1
	mov eax, 0x1
	cmp edx, 0x1
	cmovle edx, eax
	sar ecx, 1
	cmp ecx, 0x1
	cmovle ecx, eax
	add ebx, 0x1
_Z18Image_DecodeBitmapP11GfxRawImageP18GfxImageFileHeaderPhi_120:
	cmp edx, 0x1
	jg _Z18Image_DecodeBitmapP11GfxRawImageP18GfxImageFileHeaderPhi_130
	cmp ecx, 0x1
	jg _Z18Image_DecodeBitmapP11GfxRawImageP18GfxImageFileHeaderPhi_130
	sub ebx, 0x1
	mov [ebp-0x10], ebx
	js _Z18Image_DecodeBitmapP11GfxRawImageP18GfxImageFileHeaderPhi_140
	mov eax, ebx
	jmp _Z18Image_DecodeBitmapP11GfxRawImageP18GfxImageFileHeaderPhi_150
_Z18Image_DecodeBitmapP11GfxRawImageP18GfxImageFileHeaderPhi_40:
	mov ebx, edi
	xor esi, esi
_Z18Image_DecodeBitmapP11GfxRawImageP18GfxImageFileHeaderPhi_160:
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
	jnz _Z18Image_DecodeBitmapP11GfxRawImageP18GfxImageFileHeaderPhi_160
	jmp _Z18Image_DecodeBitmapP11GfxRawImageP18GfxImageFileHeaderPhi_30
	nop
	
	
_Z18Image_DecodeBitmapP11GfxRawImageP18GfxImageFileHeaderPhi_jumptab_0:
	dd _Z18Image_DecodeBitmapP11GfxRawImageP18GfxImageFileHeaderPhi_30
	dd _Z18Image_DecodeBitmapP11GfxRawImageP18GfxImageFileHeaderPhi_170
	dd _Z18Image_DecodeBitmapP11GfxRawImageP18GfxImageFileHeaderPhi_180
	dd _Z18Image_DecodeBitmapP11GfxRawImageP18GfxImageFileHeaderPhi_190
	dd _Z18Image_DecodeBitmapP11GfxRawImageP18GfxImageFileHeaderPhi_200
	dd _Z18Image_DecodeBitmapP11GfxRawImageP18GfxImageFileHeaderPhi_210
	dd _Z18Image_DecodeBitmapP11GfxRawImageP18GfxImageFileHeaderPhi_170
	dd _Z18Image_DecodeBitmapP11GfxRawImageP18GfxImageFileHeaderPhi_180
	dd _Z18Image_DecodeBitmapP11GfxRawImageP18GfxImageFileHeaderPhi_190
	dd _Z18Image_DecodeBitmapP11GfxRawImageP18GfxImageFileHeaderPhi_200
	dd _Z18Image_DecodeBitmapP11GfxRawImageP18GfxImageFileHeaderPhi_210


;Image_DecodeDxtc(GfxRawImage*, GfxImageFileHeader*, unsigned char*, int)
_Z16Image_DecodeDxtcP11GfxRawImageP18GfxImageFileHeaderPhi:
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
	jz _Z16Image_DecodeDxtcP11GfxRawImageP18GfxImageFileHeaderPhi_10
	xor ecx, ecx
_Z16Image_DecodeDxtcP11GfxRawImageP18GfxImageFileHeaderPhi_180:
	mov [ebp-0x2c], ecx
_Z16Image_DecodeDxtcP11GfxRawImageP18GfxImageFileHeaderPhi_90:
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
	jle _Z16Image_DecodeDxtcP11GfxRawImageP18GfxImageFileHeaderPhi_20
	add edx, 0x3
	sar edx, 0x2
	lea eax, [ebx+0x3]
	sar eax, 0x2
	imul edx, eax
	imul edx, [ebp+0x8]
	mov [ebp-0x1c], edx
_Z16Image_DecodeDxtcP11GfxRawImageP18GfxImageFileHeaderPhi_70:
	mov edi, [ebp-0x2c]
	test edi, edi
	jnz _Z16Image_DecodeDxtcP11GfxRawImageP18GfxImageFileHeaderPhi_30
	mov edx, [ebp-0x34]
	movzx eax, byte [edx+0x4]
	cmp al, 0xc
	jz _Z16Image_DecodeDxtcP11GfxRawImageP18GfxImageFileHeaderPhi_40
	cmp al, 0xd
	jz _Z16Image_DecodeDxtcP11GfxRawImageP18GfxImageFileHeaderPhi_50
	cmp al, 0xb
	jz _Z16Image_DecodeDxtcP11GfxRawImageP18GfxImageFileHeaderPhi_60
_Z16Image_DecodeDxtcP11GfxRawImageP18GfxImageFileHeaderPhi_30:
	xor eax, eax
	mov ecx, [ebp-0x1c]
	add [ebp-0x38], ecx
	add eax, 0x1
	cmp [ebp-0x28], eax
	jle _Z16Image_DecodeDxtcP11GfxRawImageP18GfxImageFileHeaderPhi_20
_Z16Image_DecodeDxtcP11GfxRawImageP18GfxImageFileHeaderPhi_80:
	test eax, eax
	jz _Z16Image_DecodeDxtcP11GfxRawImageP18GfxImageFileHeaderPhi_70
	mov ecx, [ebp-0x1c]
	add [ebp-0x38], ecx
	add eax, 0x1
	cmp [ebp-0x28], eax
	jg _Z16Image_DecodeDxtcP11GfxRawImageP18GfxImageFileHeaderPhi_80
_Z16Image_DecodeDxtcP11GfxRawImageP18GfxImageFileHeaderPhi_20:
	sub dword [ebp-0x2c], 0x1
	cmp dword [ebp-0x2c], 0xffffffff
	jnz _Z16Image_DecodeDxtcP11GfxRawImageP18GfxImageFileHeaderPhi_90
_Z16Image_DecodeDxtcP11GfxRawImageP18GfxImageFileHeaderPhi_190:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z16Image_DecodeDxtcP11GfxRawImageP18GfxImageFileHeaderPhi_60:
	mov dword [ebp-0x24], 0x8
	mov dword [ebp-0x20], _Z20Image_DecompressDxt1PhP11GfxRawImageii
_Z16Image_DecodeDxtcP11GfxRawImageP18GfxImageFileHeaderPhi_150:
	mov eax, [ebp-0x30]
	mov esi, [eax+0x4c]
	test esi, esi
	jle _Z16Image_DecodeDxtcP11GfxRawImageP18GfxImageFileHeaderPhi_30
	mov esi, [ebp-0x38]
	xor edi, edi
	mov edx, [ebp-0x30]
	jmp _Z16Image_DecodeDxtcP11GfxRawImageP18GfxImageFileHeaderPhi_100
_Z16Image_DecodeDxtcP11GfxRawImageP18GfxImageFileHeaderPhi_110:
	mov eax, edx
_Z16Image_DecodeDxtcP11GfxRawImageP18GfxImageFileHeaderPhi_140:
	add edi, 0x4
	cmp [eax+0x4c], edi
	jle _Z16Image_DecodeDxtcP11GfxRawImageP18GfxImageFileHeaderPhi_30
	mov edx, eax
_Z16Image_DecodeDxtcP11GfxRawImageP18GfxImageFileHeaderPhi_100:
	mov ebx, [edx+0x48]
	test ebx, ebx
	jle _Z16Image_DecodeDxtcP11GfxRawImageP18GfxImageFileHeaderPhi_110
	xor ebx, ebx
	mov edx, [ebp-0x30]
	jmp _Z16Image_DecodeDxtcP11GfxRawImageP18GfxImageFileHeaderPhi_120
_Z16Image_DecodeDxtcP11GfxRawImageP18GfxImageFileHeaderPhi_130:
	mov edx, ecx
_Z16Image_DecodeDxtcP11GfxRawImageP18GfxImageFileHeaderPhi_120:
	mov [esp+0xc], edi
	mov [esp+0x8], ebx
	mov [esp+0x4], edx
	mov [esp], esi
	call dword [ebp-0x20]
	add esi, [ebp-0x24]
	add ebx, 0x4
	mov ecx, [ebp-0x30]
	cmp [ecx+0x48], ebx
	jg _Z16Image_DecodeDxtcP11GfxRawImageP18GfxImageFileHeaderPhi_130
	mov eax, ecx
	jmp _Z16Image_DecodeDxtcP11GfxRawImageP18GfxImageFileHeaderPhi_140
_Z16Image_DecodeDxtcP11GfxRawImageP18GfxImageFileHeaderPhi_40:
	mov dword [ebp-0x24], 0x10
	mov dword [ebp-0x20], _Z20Image_DecompressDxt3PhP11GfxRawImageii
	jmp _Z16Image_DecodeDxtcP11GfxRawImageP18GfxImageFileHeaderPhi_150
_Z16Image_DecodeDxtcP11GfxRawImageP18GfxImageFileHeaderPhi_50:
	mov dword [ebp-0x24], 0x10
	mov dword [ebp-0x20], _Z20Image_DecompressDxt5PhP11GfxRawImageii
	jmp _Z16Image_DecodeDxtcP11GfxRawImageP18GfxImageFileHeaderPhi_150
_Z16Image_DecodeDxtcP11GfxRawImageP18GfxImageFileHeaderPhi_10:
	mov eax, [ebp-0x34]
	movsx edx, word [eax+0x6]
	movsx ecx, word [eax+0x8]
	mov ebx, 0x1
	jmp _Z16Image_DecodeDxtcP11GfxRawImageP18GfxImageFileHeaderPhi_160
_Z16Image_DecodeDxtcP11GfxRawImageP18GfxImageFileHeaderPhi_170:
	sar edx, 1
	mov eax, 0x1
	cmp edx, 0x1
	cmovle edx, eax
	sar ecx, 1
	cmp ecx, 0x1
	cmovle ecx, eax
	add ebx, 0x1
_Z16Image_DecodeDxtcP11GfxRawImageP18GfxImageFileHeaderPhi_160:
	cmp edx, 0x1
	jg _Z16Image_DecodeDxtcP11GfxRawImageP18GfxImageFileHeaderPhi_170
	cmp ecx, 0x1
	jg _Z16Image_DecodeDxtcP11GfxRawImageP18GfxImageFileHeaderPhi_170
	mov ecx, ebx
	sub ecx, 0x1
	jns _Z16Image_DecodeDxtcP11GfxRawImageP18GfxImageFileHeaderPhi_180
	jmp _Z16Image_DecodeDxtcP11GfxRawImageP18GfxImageFileHeaderPhi_190


;Image_DecompressDxt1(unsigned char*, GfxRawImage*, int, int)
_Z20Image_DecompressDxt1PhP11GfxRawImageii:
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
	jmp _Z29Image_DecompressDxt1_InternalP15DdsBlock_Dxt1_tP11GfxRawImageiih
	nop


;Image_DecompressDxt3(unsigned char*, GfxRawImage*, int, int)
_Z20Image_DecompressDxt3PhP11GfxRawImageii:
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
	call _Z29Image_DecompressDxt1_InternalP15DdsBlock_Dxt1_tP11GfxRawImageiih
	mov edi, ebx
	mov dword [ebp-0x1c], 0x0
_Z20Image_DecompressDxt3PhP11GfxRawImageii_10:
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
	jnz _Z20Image_DecompressDxt3PhP11GfxRawImageii_10
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Image_DecompressDxt5(unsigned char*, GfxRawImage*, int, int)
_Z20Image_DecompressDxt5PhP11GfxRawImageii:
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
	call _Z29Image_DecompressDxt1_InternalP15DdsBlock_Dxt1_tP11GfxRawImageiih
	mov ecx, [ebp+0x8]
	movzx edx, byte [ecx]
	mov [ebp-0x20], dl
	movzx eax, byte [ecx+0x1]
	mov [ebp-0x1f], al
	cmp dl, al
	jbe _Z20Image_DecompressDxt5PhP11GfxRawImageii_10
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
_Z20Image_DecompressDxt5PhP11GfxRawImageii_60:
	mov eax, [ebp+0x8]
	movzx ebx, byte [eax+0x2]
	movzx eax, byte [eax+0x3]
	shl eax, 0x8
	or ebx, eax
	xor edi, edi
	mov dword [ebp-0x34], 0x2
	mov dword [ebp-0x38], 0x0
_Z20Image_DecompressDxt5PhP11GfxRawImageii_50:
	xor esi, esi
	mov ecx, [ebp+0x14]
	mov eax, [ebp-0x38]
	add ecx, eax
	mov [ebp-0x6c], ecx
	mov edx, ecx
_Z20Image_DecompressDxt5PhP11GfxRawImageii_40:
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
	jle _Z20Image_DecompressDxt5PhP11GfxRawImageii_20
	sub edi, 0x8
	sar ebx, 0x8
	cmp dword [ebp-0x34], 0x5
	ja _Z20Image_DecompressDxt5PhP11GfxRawImageii_20
	mov edx, [ebp+0x8]
	mov ecx, [ebp-0x34]
	movzx eax, byte [edx+ecx+0x2]
	shl eax, 0x8
	or ebx, eax
	add ecx, 0x1
	mov [ebp-0x34], ecx
_Z20Image_DecompressDxt5PhP11GfxRawImageii_20:
	add esi, 0x1
	cmp esi, 0x4
	jz _Z20Image_DecompressDxt5PhP11GfxRawImageii_30
	mov edx, [ebp-0x6c]
	jmp _Z20Image_DecompressDxt5PhP11GfxRawImageii_40
_Z20Image_DecompressDxt5PhP11GfxRawImageii_30:
	add dword [ebp-0x38], 0x1
	cmp dword [ebp-0x38], 0x4
	jnz _Z20Image_DecompressDxt5PhP11GfxRawImageii_50
	add esp, 0x8c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z20Image_DecompressDxt5PhP11GfxRawImageii_10:
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
	jmp _Z20Image_DecompressDxt5PhP11GfxRawImageii_60


;Image_DecompressDxt1_Internal(DdsBlock_Dxt1_t*, GfxRawImage*, int, int, unsigned char)
_Z29Image_DecompressDxt1_InternalP15DdsBlock_Dxt1_tP11GfxRawImageiih:
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
	jnz _Z29Image_DecompressDxt1_InternalP15DdsBlock_Dxt1_tP11GfxRawImageiih_10
	cmp dx, [ebx+0x2]
	jbe _Z29Image_DecompressDxt1_InternalP15DdsBlock_Dxt1_tP11GfxRawImageiih_20
_Z29Image_DecompressDxt1_InternalP15DdsBlock_Dxt1_tP11GfxRawImageiih_10:
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
_Z29Image_DecompressDxt1_InternalP15DdsBlock_Dxt1_tP11GfxRawImageiih_40:
	mov esi, ebx
	xor edi, edi
_Z29Image_DecompressDxt1_InternalP15DdsBlock_Dxt1_tP11GfxRawImageiih_30:
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
	jnz _Z29Image_DecompressDxt1_InternalP15DdsBlock_Dxt1_tP11GfxRawImageiih_30
	add esp, 0xac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z29Image_DecompressDxt1_InternalP15DdsBlock_Dxt1_tP11GfxRawImageiih_20:
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
	jmp _Z29Image_DecompressDxt1_InternalP15DdsBlock_Dxt1_tP11GfxRawImageiih_40
	nop


;Image_DecodeWavelet(GfxRawImage*, GfxImageFileHeader*, unsigned char*, int)
_Z19Image_DecodeWaveletP11GfxRawImageP18GfxImageFileHeaderPhi:
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
	jz _Z19Image_DecodeWaveletP11GfxRawImageP18GfxImageFileHeaderPhi_10
	xor eax, eax
_Z19Image_DecodeWaveletP11GfxRawImageP18GfxImageFileHeaderPhi_130:
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
	jg _Z19Image_DecodeWaveletP11GfxRawImageP18GfxImageFileHeaderPhi_20
_Z19Image_DecodeWaveletP11GfxRawImageP18GfxImageFileHeaderPhi_200:
	mov edx, [ebp-0x8c]
	mov [ebp-0x64], edx
	mov ebx, [ebp-0x50]
	test ebx, ebx
	jns _Z19Image_DecodeWaveletP11GfxRawImageP18GfxImageFileHeaderPhi_30
	jmp _Z19Image_DecodeWaveletP11GfxRawImageP18GfxImageFileHeaderPhi_40
_Z19Image_DecodeWaveletP11GfxRawImageP18GfxImageFileHeaderPhi_50:
	mov ebx, [ebp-0x50]
	sub ebx, 0x1
	mov [ebp-0x50], ebx
	test ebx, ebx
	js _Z19Image_DecodeWaveletP11GfxRawImageP18GfxImageFileHeaderPhi_40
_Z19Image_DecodeWaveletP11GfxRawImageP18GfxImageFileHeaderPhi_30:
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
	jle _Z19Image_DecodeWaveletP11GfxRawImageP18GfxImageFileHeaderPhi_50
	xor si, si
_Z19Image_DecodeWaveletP11GfxRawImageP18GfxImageFileHeaderPhi_80:
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
	call _Z23Wavelet_DecompressLevelPhS_P13WaveletDecode
	test esi, esi
	jnz _Z19Image_DecodeWaveletP11GfxRawImageP18GfxImageFileHeaderPhi_60
	mov eax, [ebp-0x50]
	test eax, eax
	jnz _Z19Image_DecodeWaveletP11GfxRawImageP18GfxImageFileHeaderPhi_60
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
	ja _Z19Image_DecodeWaveletP11GfxRawImageP18GfxImageFileHeaderPhi_60
	jmp dword [eax*4+_Z19Image_DecodeWaveletP11GfxRawImageP18GfxImageFileHeaderPhi_jumptab_0]
_Z19Image_DecodeWaveletP11GfxRawImageP18GfxImageFileHeaderPhi_210:
	test ebx, ebx
	jz _Z19Image_DecodeWaveletP11GfxRawImageP18GfxImageFileHeaderPhi_60
	mov dword [ebp-0x78], 0x0
_Z19Image_DecodeWaveletP11GfxRawImageP18GfxImageFileHeaderPhi_70:
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
	jnz _Z19Image_DecodeWaveletP11GfxRawImageP18GfxImageFileHeaderPhi_70
_Z19Image_DecodeWaveletP11GfxRawImageP18GfxImageFileHeaderPhi_60:
	add esi, 0x1
	cmp edi, esi
	jnz _Z19Image_DecodeWaveletP11GfxRawImageP18GfxImageFileHeaderPhi_80
_Z19Image_DecodeWaveletP11GfxRawImageP18GfxImageFileHeaderPhi_150:
	mov ebx, [ebp-0x50]
	sub ebx, 0x1
	mov [ebp-0x50], ebx
	test ebx, ebx
	jns _Z19Image_DecodeWaveletP11GfxRawImageP18GfxImageFileHeaderPhi_30
_Z19Image_DecodeWaveletP11GfxRawImageP18GfxImageFileHeaderPhi_40:
	mov eax, edi
	sub eax, 0x1
	js _Z19Image_DecodeWaveletP11GfxRawImageP18GfxImageFileHeaderPhi_90
	lea ebx, [ebp+eax*4-0x30]
	xor esi, esi
_Z19Image_DecodeWaveletP11GfxRawImageP18GfxImageFileHeaderPhi_100:
	mov eax, [ebx]
	mov [esp], eax
	call Hunk_FreeTempMemory
	add esi, 0x1
	sub ebx, 0x4
	cmp edi, esi
	jnz _Z19Image_DecodeWaveletP11GfxRawImageP18GfxImageFileHeaderPhi_100
_Z19Image_DecodeWaveletP11GfxRawImageP18GfxImageFileHeaderPhi_90:
	add esp, 0xac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19Image_DecodeWaveletP11GfxRawImageP18GfxImageFileHeaderPhi_10:
	mov ecx, eax
	mov edx, esi
	mov ebx, 0x1
	jmp _Z19Image_DecodeWaveletP11GfxRawImageP18GfxImageFileHeaderPhi_110
_Z19Image_DecodeWaveletP11GfxRawImageP18GfxImageFileHeaderPhi_120:
	sar edx, 1
	mov eax, 0x1
	cmp edx, 0x1
	cmovle edx, eax
	sar ecx, 1
	cmp ecx, 0x1
	cmovle ecx, eax
	add ebx, 0x1
_Z19Image_DecodeWaveletP11GfxRawImageP18GfxImageFileHeaderPhi_110:
	cmp edx, 0x1
	jg _Z19Image_DecodeWaveletP11GfxRawImageP18GfxImageFileHeaderPhi_120
	cmp ecx, 0x1
	jg _Z19Image_DecodeWaveletP11GfxRawImageP18GfxImageFileHeaderPhi_120
	lea eax, [ebx-0x1]
	jmp _Z19Image_DecodeWaveletP11GfxRawImageP18GfxImageFileHeaderPhi_130
_Z19Image_DecodeWaveletP11GfxRawImageP18GfxImageFileHeaderPhi_220:
	test ebx, ebx
	jz _Z19Image_DecodeWaveletP11GfxRawImageP18GfxImageFileHeaderPhi_60
	mov dword [ebp-0x74], 0x0
_Z19Image_DecodeWaveletP11GfxRawImageP18GfxImageFileHeaderPhi_140:
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
	jnz _Z19Image_DecodeWaveletP11GfxRawImageP18GfxImageFileHeaderPhi_140
	add esi, 0x1
	cmp edi, esi
	jnz _Z19Image_DecodeWaveletP11GfxRawImageP18GfxImageFileHeaderPhi_80
	jmp _Z19Image_DecodeWaveletP11GfxRawImageP18GfxImageFileHeaderPhi_150
_Z19Image_DecodeWaveletP11GfxRawImageP18GfxImageFileHeaderPhi_230:
	test ebx, ebx
	jz _Z19Image_DecodeWaveletP11GfxRawImageP18GfxImageFileHeaderPhi_60
	add ecx, 0x2
	mov dword [ebp-0x70], 0x0
_Z19Image_DecodeWaveletP11GfxRawImageP18GfxImageFileHeaderPhi_160:
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
	jnz _Z19Image_DecodeWaveletP11GfxRawImageP18GfxImageFileHeaderPhi_160
	add esi, 0x1
	cmp edi, esi
	jnz _Z19Image_DecodeWaveletP11GfxRawImageP18GfxImageFileHeaderPhi_80
	jmp _Z19Image_DecodeWaveletP11GfxRawImageP18GfxImageFileHeaderPhi_150
_Z19Image_DecodeWaveletP11GfxRawImageP18GfxImageFileHeaderPhi_240:
	test ebx, ebx
	jz _Z19Image_DecodeWaveletP11GfxRawImageP18GfxImageFileHeaderPhi_60
	add ecx, 0x1
	mov dword [ebp-0x6c], 0x0
_Z19Image_DecodeWaveletP11GfxRawImageP18GfxImageFileHeaderPhi_170:
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
	jnz _Z19Image_DecodeWaveletP11GfxRawImageP18GfxImageFileHeaderPhi_170
	add esi, 0x1
	cmp edi, esi
	jnz _Z19Image_DecodeWaveletP11GfxRawImageP18GfxImageFileHeaderPhi_80
	jmp _Z19Image_DecodeWaveletP11GfxRawImageP18GfxImageFileHeaderPhi_150
_Z19Image_DecodeWaveletP11GfxRawImageP18GfxImageFileHeaderPhi_250:
	test ebx, ebx
	jz _Z19Image_DecodeWaveletP11GfxRawImageP18GfxImageFileHeaderPhi_60
	lea ebx, [ecx+ebx]
_Z19Image_DecodeWaveletP11GfxRawImageP18GfxImageFileHeaderPhi_180:
	mov byte [edx], 0x0
	mov byte [edx+0x1], 0x0
	mov byte [edx+0x2], 0x0
	movzx eax, byte [ecx]
	mov [edx+0x3], al
	add ecx, 0x1
	add edx, 0x4
	cmp ecx, ebx
	jnz _Z19Image_DecodeWaveletP11GfxRawImageP18GfxImageFileHeaderPhi_180
	add esi, 0x1
	cmp edi, esi
	jnz _Z19Image_DecodeWaveletP11GfxRawImageP18GfxImageFileHeaderPhi_80
	jmp _Z19Image_DecodeWaveletP11GfxRawImageP18GfxImageFileHeaderPhi_150
_Z19Image_DecodeWaveletP11GfxRawImageP18GfxImageFileHeaderPhi_20:
	xor ebx, ebx
_Z19Image_DecodeWaveletP11GfxRawImageP18GfxImageFileHeaderPhi_190:
	mov eax, [ebp-0x80]
	mov [esp], eax
	call Hunk_AllocateTempMemory
	lea edx, [ebx*4]
	mov [ebp+edx-0x30], eax
	mov dword [ebp+edx-0x48], 0x0
	add ebx, 0x1
	cmp edi, ebx
	jnz _Z19Image_DecodeWaveletP11GfxRawImageP18GfxImageFileHeaderPhi_190
	jmp _Z19Image_DecodeWaveletP11GfxRawImageP18GfxImageFileHeaderPhi_200
	nop
	
	
_Z19Image_DecodeWaveletP11GfxRawImageP18GfxImageFileHeaderPhi_jumptab_0:
	dd _Z19Image_DecodeWaveletP11GfxRawImageP18GfxImageFileHeaderPhi_60
	dd _Z19Image_DecodeWaveletP11GfxRawImageP18GfxImageFileHeaderPhi_210
	dd _Z19Image_DecodeWaveletP11GfxRawImageP18GfxImageFileHeaderPhi_220
	dd _Z19Image_DecodeWaveletP11GfxRawImageP18GfxImageFileHeaderPhi_230
	dd _Z19Image_DecodeWaveletP11GfxRawImageP18GfxImageFileHeaderPhi_240
	dd _Z19Image_DecodeWaveletP11GfxRawImageP18GfxImageFileHeaderPhi_250
	dd _Z19Image_DecodeWaveletP11GfxRawImageP18GfxImageFileHeaderPhi_210
	dd _Z19Image_DecodeWaveletP11GfxRawImageP18GfxImageFileHeaderPhi_220
	dd _Z19Image_DecodeWaveletP11GfxRawImageP18GfxImageFileHeaderPhi_230
	dd _Z19Image_DecodeWaveletP11GfxRawImageP18GfxImageFileHeaderPhi_240
	dd _Z19Image_DecodeWaveletP11GfxRawImageP18GfxImageFileHeaderPhi_250


;Image_GetRawPixels(char const*, GfxRawImage*)
_Z18Image_GetRawPixelsPKcP11GfxRawImage:
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
	call _Z20Com_AssembleFilepathPKcS0_S0_Pci
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov [esp], esi
	call FS_ReadFile
	test eax, eax
	js _Z18Image_GetRawPixelsPKcP11GfxRawImage_10
_Z18Image_GetRawPixelsPKcP11GfxRawImage_50:
	mov [esp+0x4], esi
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call _Z20Image_ValidateHeaderP18GfxImageFileHeaderPKc
	test al, al
	jz _Z18Image_GetRawPixelsPKcP11GfxRawImage_20
_Z18Image_GetRawPixelsPKcP11GfxRawImage_40:
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
	ja _Z18Image_GetRawPixelsPKcP11GfxRawImage_30
	jmp dword [eax*4+_Z18Image_GetRawPixelsPKcP11GfxRawImage_jumptab_0]
_Z18Image_GetRawPixelsPKcP11GfxRawImage_170:
	mov byte [ebx+0x44], 0x1
	mov dword [esp], 0x10
	mov eax, ebx
	call _Z16Image_DecodeDxtcP11GfxRawImageP18GfxImageFileHeaderPhi
	mov edx, [ebp-0x1c]
_Z18Image_GetRawPixelsPKcP11GfxRawImage_30:
	mov [esp], edx
	call FS_FreeFile
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z18Image_GetRawPixelsPKcP11GfxRawImage_20:
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_image_s_is_not_v
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z18Image_GetRawPixelsPKcP11GfxRawImage_40
_Z18Image_GetRawPixelsPKcP11GfxRawImage_10:
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_image_s_is_missi
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z18Image_GetRawPixelsPKcP11GfxRawImage_50
_Z18Image_GetRawPixelsPKcP11GfxRawImage_160:
	mov byte [ebx+0x44], 0x0
	mov dword [esp], 0x8
	mov eax, ebx
	call _Z16Image_DecodeDxtcP11GfxRawImageP18GfxImageFileHeaderPhi
	mov edx, [ebp-0x1c]
	jmp _Z18Image_GetRawPixelsPKcP11GfxRawImage_30
_Z18Image_GetRawPixelsPKcP11GfxRawImage_60:
	mov byte [ebx+0x44], 0x1
	mov dword [esp], 0x4
	mov eax, ebx
	call _Z18Image_DecodeBitmapP11GfxRawImageP18GfxImageFileHeaderPhi
	mov edx, [ebp-0x1c]
	jmp _Z18Image_GetRawPixelsPKcP11GfxRawImage_30
_Z18Image_GetRawPixelsPKcP11GfxRawImage_70:
	mov byte [ebx+0x44], 0x0
	mov dword [esp], 0x3
	mov eax, ebx
	call _Z18Image_DecodeBitmapP11GfxRawImageP18GfxImageFileHeaderPhi
	mov edx, [ebp-0x1c]
	jmp _Z18Image_GetRawPixelsPKcP11GfxRawImage_30
_Z18Image_GetRawPixelsPKcP11GfxRawImage_80:
	mov byte [ebx+0x44], 0x1
	mov dword [esp], 0x2
	mov eax, ebx
	call _Z18Image_DecodeBitmapP11GfxRawImageP18GfxImageFileHeaderPhi
	mov edx, [ebp-0x1c]
	jmp _Z18Image_GetRawPixelsPKcP11GfxRawImage_30
_Z18Image_GetRawPixelsPKcP11GfxRawImage_90:
	mov byte [ebx+0x44], 0x0
	mov dword [esp], 0x1
	mov eax, ebx
	call _Z18Image_DecodeBitmapP11GfxRawImageP18GfxImageFileHeaderPhi
	mov edx, [ebp-0x1c]
	jmp _Z18Image_GetRawPixelsPKcP11GfxRawImage_30
_Z18Image_GetRawPixelsPKcP11GfxRawImage_100:
	mov byte [ebx+0x44], 0x1
	mov dword [esp], 0x1
	mov eax, ebx
	call _Z18Image_DecodeBitmapP11GfxRawImageP18GfxImageFileHeaderPhi
	mov edx, [ebp-0x1c]
	jmp _Z18Image_GetRawPixelsPKcP11GfxRawImage_30
_Z18Image_GetRawPixelsPKcP11GfxRawImage_110:
	mov byte [ebx+0x44], 0x1
	mov dword [esp], 0x4
	mov eax, ebx
	call _Z19Image_DecodeWaveletP11GfxRawImageP18GfxImageFileHeaderPhi
	mov edx, [ebp-0x1c]
	jmp _Z18Image_GetRawPixelsPKcP11GfxRawImage_30
_Z18Image_GetRawPixelsPKcP11GfxRawImage_120:
	mov byte [ebx+0x44], 0x0
	mov dword [esp], 0x3
	mov eax, ebx
	call _Z19Image_DecodeWaveletP11GfxRawImageP18GfxImageFileHeaderPhi
	mov edx, [ebp-0x1c]
	jmp _Z18Image_GetRawPixelsPKcP11GfxRawImage_30
_Z18Image_GetRawPixelsPKcP11GfxRawImage_130:
	mov byte [ebx+0x44], 0x1
	mov dword [esp], 0x2
	mov eax, ebx
	call _Z19Image_DecodeWaveletP11GfxRawImageP18GfxImageFileHeaderPhi
	mov edx, [ebp-0x1c]
	jmp _Z18Image_GetRawPixelsPKcP11GfxRawImage_30
_Z18Image_GetRawPixelsPKcP11GfxRawImage_140:
	mov byte [ebx+0x44], 0x0
	mov dword [esp], 0x1
	mov eax, ebx
	call _Z19Image_DecodeWaveletP11GfxRawImageP18GfxImageFileHeaderPhi
	mov edx, [ebp-0x1c]
	jmp _Z18Image_GetRawPixelsPKcP11GfxRawImage_30
_Z18Image_GetRawPixelsPKcP11GfxRawImage_150:
	mov byte [ebx+0x44], 0x1
	mov dword [esp], 0x1
	mov eax, ebx
	call _Z19Image_DecodeWaveletP11GfxRawImageP18GfxImageFileHeaderPhi
	mov edx, [ebp-0x1c]
	jmp _Z18Image_GetRawPixelsPKcP11GfxRawImage_30
	
	
_Z18Image_GetRawPixelsPKcP11GfxRawImage_jumptab_0:
	dd _Z18Image_GetRawPixelsPKcP11GfxRawImage_30
	dd _Z18Image_GetRawPixelsPKcP11GfxRawImage_60
	dd _Z18Image_GetRawPixelsPKcP11GfxRawImage_70
	dd _Z18Image_GetRawPixelsPKcP11GfxRawImage_80
	dd _Z18Image_GetRawPixelsPKcP11GfxRawImage_90
	dd _Z18Image_GetRawPixelsPKcP11GfxRawImage_100
	dd _Z18Image_GetRawPixelsPKcP11GfxRawImage_110
	dd _Z18Image_GetRawPixelsPKcP11GfxRawImage_120
	dd _Z18Image_GetRawPixelsPKcP11GfxRawImage_130
	dd _Z18Image_GetRawPixelsPKcP11GfxRawImage_140
	dd _Z18Image_GetRawPixelsPKcP11GfxRawImage_150
	dd _Z18Image_GetRawPixelsPKcP11GfxRawImage_160
	dd _Z18Image_GetRawPixelsPKcP11GfxRawImage_170
	dd _Z18Image_GetRawPixelsPKcP11GfxRawImage_170


;Image_FreeRawPixels(GfxRawImage*)
_Z19Image_FreeRawPixelsP11GfxRawImage:
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

