;Imports of r_draw_method:
	extern r_fullbright
	extern r_debugShader

;Exports of r_draw_method:
	global _Z16R_InitDrawMethodv
	global _Z18R_UpdateDrawMethodP14GfxBackEndDataPK11GfxViewInfo
	global gfxDrawMethod


SECTION .text


;R_InitDrawMethod()
_Z16R_InitDrawMethodv:
	push ebp
	mov ebp, esp
	push ebx
	mov eax, r_fullbright
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z16R_InitDrawMethodv_10
	mov dword [gfxDrawMethod], 0x1
	mov dword [gfxDrawMethod+0x4], 0x4
	mov dword [gfxDrawMethod+0x8], 0x4
	xor ebx, ebx
	mov ecx, gfxDrawMethod
_Z16R_InitDrawMethodv_30:
	lea eax, [ecx+0xc]
	mov edx, 0x7
_Z16R_InitDrawMethodv_20:
	mov byte [eax], 0x4
	add eax, 0x1
	sub edx, 0x1
	jnz _Z16R_InitDrawMethodv_20
	add ebx, 0x1
	add ecx, 0x7
	cmp ebx, 0xd
	jnz _Z16R_InitDrawMethodv_30
	pop ebx
	pop ebp
	ret
_Z16R_InitDrawMethodv_10:
	mov eax, r_debugShader
	mov eax, [eax]
	mov ecx, [eax+0xc]
	test ecx, ecx
	jz _Z16R_InitDrawMethodv_40
	mov dword [gfxDrawMethod], 0x2
	mov dword [gfxDrawMethod+0x4], 0x20
	mov dword [gfxDrawMethod+0x8], 0x20
	xor ebx, ebx
	mov ecx, gfxDrawMethod
_Z16R_InitDrawMethodv_60:
	lea eax, [ecx+0xc]
	mov edx, 0x7
_Z16R_InitDrawMethodv_50:
	mov byte [eax], 0x20
	add eax, 0x1
	sub edx, 0x1
	jnz _Z16R_InitDrawMethodv_50
	add ebx, 0x1
	add ecx, 0x7
	cmp ebx, 0xd
	jnz _Z16R_InitDrawMethodv_60
	pop ebx
	pop ebp
	ret
_Z16R_InitDrawMethodv_40:
	mov dword [gfxDrawMethod], 0x3
	mov dword [gfxDrawMethod+0x4], 0x7
	mov dword [gfxDrawMethod+0x8], 0x5
	mov byte [gfxDrawMethod+0xc], 0x7
	mov byte [gfxDrawMethod+0xd], 0x8
	mov byte [gfxDrawMethod+0xe], 0xa
	mov byte [gfxDrawMethod+0xf], 0xc
	mov byte [gfxDrawMethod+0x10], 0x9
	mov byte [gfxDrawMethod+0x11], 0xb
	mov byte [gfxDrawMethod+0x12], 0xd
	mov byte [gfxDrawMethod+0x13], 0x7
	mov byte [gfxDrawMethod+0x14], 0x8
	mov byte [gfxDrawMethod+0x15], 0xa
	mov byte [gfxDrawMethod+0x16], 0xc
	mov byte [gfxDrawMethod+0x17], 0x9
	mov byte [gfxDrawMethod+0x18], 0xb
	mov byte [gfxDrawMethod+0x19], 0xd
	mov byte [gfxDrawMethod+0x1a], 0x7
	mov byte [gfxDrawMethod+0x1b], 0x8
	mov byte [gfxDrawMethod+0x1c], 0xa
	mov byte [gfxDrawMethod+0x1d], 0xc
	mov byte [gfxDrawMethod+0x1e], 0x9
	mov byte [gfxDrawMethod+0x1f], 0xb
	mov byte [gfxDrawMethod+0x20], 0xd
	mov byte [gfxDrawMethod+0x21], 0xe
	mov byte [gfxDrawMethod+0x22], 0xf
	mov byte [gfxDrawMethod+0x23], 0x11
	mov byte [gfxDrawMethod+0x24], 0x13
	mov byte [gfxDrawMethod+0x25], 0x10
	mov byte [gfxDrawMethod+0x26], 0x12
	mov byte [gfxDrawMethod+0x27], 0x14
	mov byte [gfxDrawMethod+0x28], 0xe
	mov byte [gfxDrawMethod+0x29], 0xf
	mov byte [gfxDrawMethod+0x2a], 0x11
	mov byte [gfxDrawMethod+0x2b], 0x13
	mov byte [gfxDrawMethod+0x2c], 0x10
	mov byte [gfxDrawMethod+0x2d], 0x12
	mov byte [gfxDrawMethod+0x2e], 0x14
	mov byte [gfxDrawMethod+0x2f], 0x7
	mov byte [gfxDrawMethod+0x30], 0x8
	mov byte [gfxDrawMethod+0x31], 0xa
	mov byte [gfxDrawMethod+0x32], 0xc
	mov byte [gfxDrawMethod+0x33], 0x9
	mov byte [gfxDrawMethod+0x34], 0xb
	mov byte [gfxDrawMethod+0x35], 0xd
	mov byte [gfxDrawMethod+0x36], 0x7
	mov byte [gfxDrawMethod+0x37], 0x8
	mov byte [gfxDrawMethod+0x38], 0xa
	mov byte [gfxDrawMethod+0x39], 0xc
	mov byte [gfxDrawMethod+0x3a], 0x9
	mov byte [gfxDrawMethod+0x3b], 0xb
	mov byte [gfxDrawMethod+0x3c], 0xd
	mov byte [gfxDrawMethod+0x3d], 0x7
	mov byte [gfxDrawMethod+0x3e], 0x8
	mov byte [gfxDrawMethod+0x3f], 0xa
	mov byte [gfxDrawMethod+0x40], 0xc
	mov byte [gfxDrawMethod+0x41], 0x9
	mov byte [gfxDrawMethod+0x42], 0xb
	mov byte [gfxDrawMethod+0x43], 0xd
	mov byte [gfxDrawMethod+0x44], 0x7
	mov byte [gfxDrawMethod+0x45], 0x8
	mov byte [gfxDrawMethod+0x46], 0xa
	mov byte [gfxDrawMethod+0x47], 0xc
	mov byte [gfxDrawMethod+0x48], 0x9
	mov byte [gfxDrawMethod+0x49], 0xb
	mov byte [gfxDrawMethod+0x4a], 0xd
	mov byte [gfxDrawMethod+0x4b], 0x7
	mov byte [gfxDrawMethod+0x4c], 0x8
	mov byte [gfxDrawMethod+0x4d], 0xa
	mov byte [gfxDrawMethod+0x4e], 0xc
	mov byte [gfxDrawMethod+0x4f], 0x9
	mov byte [gfxDrawMethod+0x50], 0xb
	mov byte [gfxDrawMethod+0x51], 0xd
	mov byte [gfxDrawMethod+0x52], 0x24
	mov byte [gfxDrawMethod+0x53], 0x24
	mov byte [gfxDrawMethod+0x54], 0x24
	mov byte [gfxDrawMethod+0x55], 0x24
	mov byte [gfxDrawMethod+0x56], 0x24
	mov byte [gfxDrawMethod+0x57], 0x24
	mov byte [gfxDrawMethod+0x58], 0x24
	mov byte [gfxDrawMethod+0x59], 0x7
	mov byte [gfxDrawMethod+0x5a], 0x8
	mov byte [gfxDrawMethod+0x5b], 0xa
	mov byte [gfxDrawMethod+0x5c], 0xc
	mov byte [gfxDrawMethod+0x5d], 0x9
	mov byte [gfxDrawMethod+0x5e], 0xb
	mov byte [gfxDrawMethod+0x5f], 0xd
	mov byte [gfxDrawMethod+0x60], 0x24
	mov byte [gfxDrawMethod+0x61], 0x24
	mov byte [gfxDrawMethod+0x62], 0x24
	mov byte [gfxDrawMethod+0x63], 0x24
	mov byte [gfxDrawMethod+0x64], 0x24
	mov byte [gfxDrawMethod+0x65], 0x24
	mov byte [gfxDrawMethod+0x66], 0x24
	pop ebx
	pop ebp
	ret


;R_UpdateDrawMethod(GfxBackEndData*, GfxViewInfo const*)
_Z18R_UpdateDrawMethodP14GfxBackEndDataPK11GfxViewInfo:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	mov eax, [ebp+0xc]
	mov edx, [eax+0x536c]
	test edx, edx
	jz _Z18R_UpdateDrawMethodP14GfxBackEndDataPK11GfxViewInfo_10
	mov edi, eax
	xor esi, esi
_Z18R_UpdateDrawMethodP14GfxBackEndDataPK11GfxViewInfo_30:
	movzx edx, byte [edi+0x13ac]
	mov eax, esi
	sar eax, 0x5
	mov ecx, esi
	and ecx, 0x1f
	mov ebx, 0x1
	shl ebx, cl
	mov ecx, ebx
	mov ebx, [ebp+0x8]
	and ecx, [ebx+eax*4+0x118230]
	cmp ecx, 0x1
	sbb eax, eax
	not eax
	and eax, 0x3
	lea ecx, [eax+edx+gfxDrawMethod+0xc]
	lea edx, [esi+ebx+0x6a300]
	mov ebx, 0xd
_Z18R_UpdateDrawMethodP14GfxBackEndDataPK11GfxViewInfo_20:
	movzx eax, byte [ecx]
	mov [edx], al
	add ecx, 0x7
	add edx, 0x100
	sub ebx, 0x1
	jnz _Z18R_UpdateDrawMethodP14GfxBackEndDataPK11GfxViewInfo_20
	add esi, 0x1
	add edi, 0x40
	mov eax, [ebp+0xc]
	cmp esi, [eax+0x536c]
	jb _Z18R_UpdateDrawMethodP14GfxBackEndDataPK11GfxViewInfo_30
_Z18R_UpdateDrawMethodP14GfxBackEndDataPK11GfxViewInfo_10:
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Initialized global or static variables of r_draw_method:
SECTION .data


;Initialized constant data of r_draw_method:
SECTION .rdata


;Zero initialized global or static variables of r_draw_method:
SECTION .bss
gfxDrawMethod: resb 0x84


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata

