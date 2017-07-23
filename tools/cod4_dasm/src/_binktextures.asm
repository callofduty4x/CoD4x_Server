;Imports of binktextures:
	extern BinkGetRects

;Exports of binktextures:
	global Lock_Bink_textures
	global Unlock_Bink_textures


SECTION .text


;Lock_Bink_textures
Lock_Bink_textures:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov esi, [ebp+0x8]
	mov ebx, esi
	add ebx, 0x58
	mov eax, [esi+0x54]
	mov [ebp-0x30], eax
	mov edi, [esi+0x40]
	test edi, edi
	jle Lock_Bink_textures_10
	mov dword [ebp-0x2c], 0x0
Lock_Bink_textures_60:
	mov edi, 0x8000
	mov ecx, [ebp-0x30]
	cmp [ebp-0x2c], ecx
	mov eax, 0x10
	cmovnz edi, eax
	mov eax, [esi+0x10]
	mov edx, [eax]
	mov [esp+0x10], edi
	mov dword [esp+0xc], 0x0
	lea ecx, [ebp-0x20]
	mov [esp+0x8], ecx
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call dword [edx+0x4c]
	test eax, eax
	js Lock_Bink_textures_20
	mov eax, [ebp-0x1c]
	mov [ebx+0x4], eax
	mov eax, [ebp-0x20]
	mov [ebx+0x8], eax
Lock_Bink_textures_20:
	mov eax, [esi+0x14]
	mov edx, [eax]
	mov [esp+0x10], edi
	mov dword [esp+0xc], 0x0
	lea ecx, [ebp-0x20]
	mov [esp+0x8], ecx
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call dword [edx+0x4c]
	test eax, eax
	js Lock_Bink_textures_30
	mov eax, [ebp-0x1c]
	mov [ebx+0x10], eax
	mov eax, [ebp-0x20]
	mov [ebx+0x14], eax
Lock_Bink_textures_30:
	mov eax, [esi+0x18]
	mov edx, [eax]
	mov [esp+0x10], edi
	mov dword [esp+0xc], 0x0
	lea ecx, [ebp-0x20]
	mov [esp+0x8], ecx
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call dword [edx+0x4c]
	test eax, eax
	js Lock_Bink_textures_40
	mov eax, [ebp-0x1c]
	mov [ebx+0x1c], eax
	mov eax, [ebp-0x20]
	mov [ebx+0x20], eax
Lock_Bink_textures_40:
	mov edx, [esi+0x1c]
	test edx, edx
	jz Lock_Bink_textures_50
	mov eax, [edx]
	mov [esp+0x10], edi
	mov dword [esp+0xc], 0x0
	lea ecx, [ebp-0x20]
	mov [esp+0x8], ecx
	mov dword [esp+0x4], 0x0
	mov [esp], edx
	call dword [eax+0x4c]
	test eax, eax
	js Lock_Bink_textures_50
	mov eax, [ebp-0x1c]
	mov [ebx+0x28], eax
	mov eax, [ebp-0x20]
	mov [ebx+0x2c], eax
Lock_Bink_textures_50:
	add dword [ebp-0x2c], 0x1
	add esi, 0x20
	add ebx, 0x30
	mov edx, [ebp-0x2c]
	mov eax, [ebp+0x8]
	cmp [eax+0x40], edx
	jg Lock_Bink_textures_60
Lock_Bink_textures_10:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Unlock_Bink_textures
Unlock_Bink_textures:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov edi, [ebp+0xc]
	mov ebx, edi
	lea esi, [edi+0x58]
	mov eax, [edi+0x40]
	test eax, eax
	jg Unlock_Bink_textures_10
Unlock_Bink_textures_70:
	mov eax, [edi+0x54]
	shl eax, 0x5
	lea esi, [edi+eax]
	add edi, 0xb8
	mov [ebp-0x30], edi
	mov dword [esp+0x4], 0x0
	mov ecx, [ebp+0x10]
	mov [esp], ecx
	call BinkGetRects
	mov [ebp-0x34], eax
	test eax, eax
	jle Unlock_Bink_textures_20
	mov dword [ebp-0x2c], 0x0
	lea edi, [ebp-0x28]
	mov ebx, [ebp+0x10]
	add ebx, 0x30
Unlock_Bink_textures_40:
	mov eax, [ebx+0x4]
	mov [ebp-0x28], eax
	mov edx, [ebx+0x8]
	mov [ebp-0x24], edx
	add eax, [ebx+0xc]
	mov [ebp-0x20], eax
	add edx, [ebx+0x10]
	mov [ebp-0x1c], edx
	mov eax, [esi+0x10]
	mov edx, [eax]
	mov [esp+0x4], edi
	mov [esp], eax
	call dword [edx+0x54]
	mov edx, [esi+0x1c]
	test edx, edx
	jz Unlock_Bink_textures_30
	mov eax, [edx]
	mov [esp+0x4], edi
	mov [esp], edx
	call dword [eax+0x54]
Unlock_Bink_textures_30:
	sar dword [ebp-0x28], 1
	sar dword [ebp-0x24], 1
	sar dword [ebp-0x20], 1
	sar dword [ebp-0x1c], 1
	mov eax, [esi+0x14]
	mov edx, [eax]
	mov [esp+0x4], edi
	mov [esp], eax
	call dword [edx+0x54]
	mov eax, [esi+0x18]
	mov edx, [eax]
	mov [esp+0x4], edi
	mov [esp], eax
	call dword [edx+0x54]
	add dword [ebp-0x2c], 0x1
	add ebx, 0x10
	mov eax, [ebp-0x2c]
	cmp [ebp-0x34], eax
	jnz Unlock_Bink_textures_40
	mov ecx, [ebp+0x8]
	mov edx, [ecx]
	mov ebx, [ebp-0x30]
	mov eax, [ebx+0x10]
	mov [esp+0x8], eax
	mov eax, [esi+0x10]
	mov [esp+0x4], eax
	mov [esp], ecx
	call dword [edx+0x7c]
	mov eax, [ebp+0x8]
	mov edx, [eax]
	mov eax, [ebx+0x14]
	mov [esp+0x8], eax
	mov eax, [esi+0x14]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call dword [edx+0x7c]
	mov ebx, [ebp+0x8]
	mov edx, [ebx]
	mov ecx, [ebp-0x30]
	mov eax, [ecx+0x18]
	mov [esp+0x8], eax
	mov eax, [esi+0x18]
	mov [esp+0x4], eax
	mov [esp], ebx
	call dword [edx+0x7c]
	mov ecx, [esi+0x1c]
	test ecx, ecx
	jz Unlock_Bink_textures_20
	mov edx, [ebx]
	mov ebx, [ebp-0x30]
	mov eax, [ebx+0x1c]
	mov [esp+0x8], eax
	mov [esp+0x4], ecx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call dword [edx+0x7c]
Unlock_Bink_textures_20:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Unlock_Bink_textures_10:
	mov dword [ebp-0x38], 0x0
Unlock_Bink_textures_60:
	mov eax, [ebx+0x10]
	mov edx, [eax]
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call dword [edx+0x50]
	mov dword [esi+0x4], 0x0
	mov eax, [ebx+0x14]
	mov edx, [eax]
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call dword [edx+0x50]
	mov dword [esi+0x10], 0x0
	mov eax, [ebx+0x18]
	mov edx, [eax]
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call dword [edx+0x50]
	mov dword [esi+0x1c], 0x0
	mov edx, [ebx+0x1c]
	test edx, edx
	jz Unlock_Bink_textures_50
	mov eax, [edx]
	mov dword [esp+0x4], 0x0
	mov [esp], edx
	call dword [eax+0x50]
	mov dword [esi+0x28], 0x0
Unlock_Bink_textures_50:
	add dword [ebp-0x38], 0x1
	add ebx, 0x20
	add esi, 0x30
	mov eax, [ebp-0x38]
	cmp [edi+0x40], eax
	jg Unlock_Bink_textures_60
	jmp Unlock_Bink_textures_70
	nop
	add [eax], al


;Initialized global or static variables of binktextures:
SECTION .data


;Initialized constant data of binktextures:
SECTION .rdata


;Zero initialized global or static variables of binktextures:
SECTION .bss


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata

