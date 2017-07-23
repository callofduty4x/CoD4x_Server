;Imports of r_image_utils:

;Exports of r_image_utils:
	global R_DownsampleMipMapBilinear


SECTION .text


;R_DownsampleMipMapBilinear(unsigned char const*, int, int, int, unsigned char*)
R_DownsampleMipMapBilinear:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x34
	mov eax, [ebp+0xc]
	cmp eax, 0x1
	jz R_DownsampleMipMapBilinear_10
R_DownsampleMipMapBilinear_120:
	mov edx, eax
	sar edx, 1
	mov [ebp-0x34], edx
	mov edi, [ebp+0x10]
	sar edi, 1
	mov [ebp-0x30], edi
	imul eax, [ebp+0x14]
	mov [ebp-0x24], eax
	imul edx, [ebp+0x14]
	mov [ebp-0x20], edx
	mov ebx, [ebp-0x34]
	test ebx, ebx
	jz R_DownsampleMipMapBilinear_20
	cmp edi, 0x0
	jz R_DownsampleMipMapBilinear_20
	jle R_DownsampleMipMapBilinear_30
	mov eax, [ebp+0x14]
	add eax, eax
	mov [ebp-0x1c], eax
	mov dword [ebp-0x2c], 0x0
R_DownsampleMipMapBilinear_80:
	mov eax, [ebp-0x2c]
	imul eax, [ebp-0x24]
	mov edx, [ebp+0x8]
	lea edi, [edx+eax*2]
	mov eax, [ebp-0x2c]
	imul eax, [ebp-0x20]
	add eax, [ebp+0x18]
	mov [ebp-0x10], eax
	mov edx, [ebp-0x34]
	test edx, edx
	jle R_DownsampleMipMapBilinear_40
	mov dword [ebp-0x14], 0x0
R_DownsampleMipMapBilinear_70:
	mov eax, [ebp+0x14]
	test eax, eax
	jle R_DownsampleMipMapBilinear_50
	mov eax, [ebp+0x14]
	add eax, [ebp-0x24]
	lea esi, [edi+eax]
	xor ebx, ebx
R_DownsampleMipMapBilinear_60:
	movzx eax, byte [edi+ebx]
	mov [ebp-0x40], eax
	lea ecx, [edi+ebx]
	mov eax, [ebp+0x14]
	movzx edx, byte [ecx+eax]
	add edx, [ebp-0x40]
	mov [ebp-0x40], edx
	mov eax, [ebp-0x24]
	movzx edx, byte [ecx+eax]
	mov eax, [ebp-0x40]
	add eax, edx
	movzx edx, byte [esi]
	add eax, edx
	sar eax, 0x2
	mov edx, [ebp-0x10]
	mov [edx+ebx], al
	add ebx, 0x1
	add esi, 0x1
	cmp [ebp+0x14], ebx
	jnz R_DownsampleMipMapBilinear_60
R_DownsampleMipMapBilinear_50:
	mov eax, [ebp+0x14]
	add [ebp-0x10], eax
	add edi, [ebp-0x1c]
	add dword [ebp-0x14], 0x1
	mov edx, [ebp-0x14]
	cmp [ebp-0x34], edx
	jnz R_DownsampleMipMapBilinear_70
R_DownsampleMipMapBilinear_40:
	add dword [ebp-0x2c], 0x1
	mov edi, [ebp-0x2c]
	cmp [ebp-0x30], edi
	jnz R_DownsampleMipMapBilinear_80
R_DownsampleMipMapBilinear_30:
	add esp, 0x34
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_DownsampleMipMapBilinear_20:
	mov eax, [ebp-0x34]
	add eax, [ebp-0x30]
	mov [ebp-0x18], eax
	test eax, eax
	jle R_DownsampleMipMapBilinear_30
	mov edx, [ebp+0x14]
	add edx, edx
	mov [ebp-0x38], edx
	mov edi, [ebp+0x8]
	mov [ebp-0x3c], edi
	mov esi, [ebp+0x18]
	mov dword [ebp-0x28], 0x0
R_DownsampleMipMapBilinear_110:
	mov ecx, [ebp+0x14]
	test ecx, ecx
	jle R_DownsampleMipMapBilinear_90
	xor ebx, ebx
	mov ecx, [ebp-0x3c]
R_DownsampleMipMapBilinear_100:
	movzx eax, byte [ecx]
	mov edi, [ebp+0x14]
	movzx edx, byte [ecx+edi]
	add eax, edx
	sar eax, 1
	mov [esi+ebx], al
	add ebx, 0x1
	add ecx, 0x1
	cmp edi, ebx
	jnz R_DownsampleMipMapBilinear_100
R_DownsampleMipMapBilinear_90:
	add esi, [ebp+0x14]
	mov eax, [ebp-0x38]
	add [ebp-0x3c], eax
	add dword [ebp-0x28], 0x1
	mov edx, [ebp-0x28]
	cmp [ebp-0x18], edx
	jnz R_DownsampleMipMapBilinear_110
	add esp, 0x34
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_DownsampleMipMapBilinear_10:
	cmp dword [ebp+0x10], 0x1
	jnz R_DownsampleMipMapBilinear_120
	jmp R_DownsampleMipMapBilinear_30


;Initialized global or static variables of r_image_utils:
SECTION .data


;Initialized constant data of r_image_utils:
SECTION .rdata


;Zero initialized global or static variables of r_image_utils:
SECTION .bss


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata

