;Imports of md4:
	extern memset
	extern memcpy

;Exports of md4:
	global MD4Transform
	global Com_BlockChecksum128
	global Com_BlockChecksumKey32
	global Com_BlockChecksum128Cat
	global MD4Final
	global MD4Update


SECTION .text


;MD4Transform(unsigned long*, unsigned char*)
MD4Transform:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x7c
	mov [ebp-0x74], eax
	mov edi, edx
	mov eax, [eax]
	mov [ebp-0x78], eax
	mov eax, [ebp-0x74]
	add eax, 0x4
	mov [ebp-0x70], eax
	mov eax, [ebp-0x74]
	mov eax, [eax+0x4]
	mov [ebp-0x64], eax
	mov eax, [ebp-0x74]
	add eax, 0x8
	mov [ebp-0x6c], eax
	mov eax, [ebp-0x74]
	mov eax, [eax+0x8]
	mov [ebp-0x60], eax
	mov eax, [ebp-0x74]
	add eax, 0xc
	mov [ebp-0x68], eax
	mov eax, [ebp-0x74]
	mov eax, [eax+0xc]
	mov [ebp-0x5c], eax
	mov esi, 0x1
MD4Transform_10:
	lea ebx, [esi*4]
	lea ecx, [edi+ebx]
	movzx edx, byte [ecx-0x4]
	movzx eax, byte [ecx-0x3]
	shl eax, 0x8
	or edx, eax
	movzx eax, byte [ecx-0x2]
	shl eax, 0x10
	or edx, eax
	movzx eax, byte [ecx-0x1]
	shl eax, 0x18
	or edx, eax
	mov [ebp+ebx-0x5c], edx
	add esi, 0x1
	cmp esi, 0x11
	jnz MD4Transform_10
	mov ebx, [ebp-0x64]
	and ebx, [ebp-0x60]
	mov eax, [ebp-0x64]
	not eax
	and eax, [ebp-0x5c]
	or ebx, eax
	add ebx, [ebp-0x58]
	add ebx, [ebp-0x78]
	ror ebx, 0x1d
	mov edi, [ebp-0x64]
	and edi, ebx
	mov eax, ebx
	not eax
	and eax, [ebp-0x60]
	or edi, eax
	add edi, [ebp-0x54]
	add edi, [ebp-0x5c]
	ror edi, 0x19
	mov esi, ebx
	and esi, edi
	mov eax, edi
	not eax
	and eax, [ebp-0x64]
	or esi, eax
	add esi, [ebp-0x50]
	add esi, [ebp-0x60]
	ror esi, 0x15
	mov ecx, edi
	and ecx, esi
	mov eax, esi
	not eax
	and eax, ebx
	or ecx, eax
	add ecx, [ebp-0x4c]
	add ecx, [ebp-0x64]
	ror ecx, 0xd
	mov edx, esi
	and edx, ecx
	mov eax, ecx
	not eax
	and eax, edi
	or edx, eax
	add edx, [ebp-0x48]
	add ebx, edx
	ror ebx, 0x1d
	mov edx, ecx
	and edx, ebx
	mov eax, ebx
	not eax
	and eax, esi
	or edx, eax
	add edx, [ebp-0x44]
	add edi, edx
	ror edi, 0x19
	mov edx, ebx
	and edx, edi
	mov eax, edi
	not eax
	and eax, ecx
	or edx, eax
	add edx, [ebp-0x40]
	add esi, edx
	ror esi, 0x15
	mov edx, edi
	and edx, esi
	mov eax, esi
	not eax
	and eax, ebx
	or edx, eax
	add edx, [ebp-0x3c]
	add ecx, edx
	ror ecx, 0xd
	mov edx, esi
	and edx, ecx
	mov eax, ecx
	not eax
	and eax, edi
	or edx, eax
	add edx, [ebp-0x38]
	add ebx, edx
	ror ebx, 0x1d
	mov edx, ecx
	and edx, ebx
	mov eax, ebx
	not eax
	and eax, esi
	or edx, eax
	add edx, [ebp-0x34]
	add edi, edx
	ror edi, 0x19
	mov edx, ebx
	and edx, edi
	mov eax, edi
	not eax
	and eax, ecx
	or edx, eax
	add edx, [ebp-0x30]
	add esi, edx
	ror esi, 0x15
	mov edx, edi
	and edx, esi
	mov eax, esi
	not eax
	and eax, ebx
	or edx, eax
	add edx, [ebp-0x2c]
	add ecx, edx
	ror ecx, 0xd
	mov edx, esi
	and edx, ecx
	mov eax, ecx
	not eax
	and eax, edi
	or edx, eax
	add edx, [ebp-0x28]
	add ebx, edx
	ror ebx, 0x1d
	mov edx, ecx
	and edx, ebx
	mov eax, ebx
	not eax
	and eax, esi
	or edx, eax
	add edx, [ebp-0x24]
	add edi, edx
	ror edi, 0x19
	mov edx, ebx
	and edx, edi
	mov eax, edi
	not eax
	and eax, ecx
	or edx, eax
	add edx, [ebp-0x20]
	add esi, edx
	ror esi, 0x15
	mov edx, edi
	and edx, esi
	mov eax, esi
	not eax
	and eax, ebx
	or eax, edx
	add eax, [ebp-0x1c]
	add ecx, eax
	ror ecx, 0xd
	mov eax, edi
	or eax, esi
	and eax, ecx
	or edx, eax
	add edx, [ebp-0x58]
	lea ebx, [ebx+edx+0x5a827999]
	ror ebx, 0x1d
	mov eax, esi
	or eax, ecx
	and eax, ebx
	mov edx, esi
	and edx, ecx
	or eax, edx
	add eax, [ebp-0x48]
	lea edi, [edi+eax+0x5a827999]
	ror edi, 0x1b
	mov eax, ecx
	or eax, ebx
	and eax, edi
	mov edx, ecx
	and edx, ebx
	or eax, edx
	add eax, [ebp-0x38]
	lea esi, [esi+eax+0x5a827999]
	ror esi, 0x17
	mov eax, ebx
	or eax, edi
	and eax, esi
	mov edx, ebx
	and edx, edi
	or eax, edx
	add eax, [ebp-0x28]
	lea ecx, [ecx+eax+0x5a827999]
	ror ecx, 0x13
	mov eax, edi
	or eax, esi
	and eax, ecx
	mov edx, edi
	and edx, esi
	or eax, edx
	add eax, [ebp-0x54]
	lea ebx, [ebx+eax+0x5a827999]
	ror ebx, 0x1d
	mov eax, esi
	or eax, ecx
	and eax, ebx
	mov edx, esi
	and edx, ecx
	or eax, edx
	add eax, [ebp-0x44]
	lea edi, [edi+eax+0x5a827999]
	ror edi, 0x1b
	mov eax, ecx
	or eax, ebx
	and eax, edi
	mov edx, ecx
	and edx, ebx
	or eax, edx
	add eax, [ebp-0x34]
	lea esi, [esi+eax+0x5a827999]
	ror esi, 0x17
	mov eax, ebx
	or eax, edi
	and eax, esi
	mov edx, ebx
	and edx, edi
	or eax, edx
	add eax, [ebp-0x24]
	lea ecx, [ecx+eax+0x5a827999]
	ror ecx, 0x13
	mov eax, edi
	or eax, esi
	and eax, ecx
	mov edx, edi
	and edx, esi
	or eax, edx
	add eax, [ebp-0x50]
	lea ebx, [ebx+eax+0x5a827999]
	ror ebx, 0x1d
	mov eax, esi
	or eax, ecx
	and eax, ebx
	mov edx, esi
	and edx, ecx
	or eax, edx
	add eax, [ebp-0x40]
	lea edi, [edi+eax+0x5a827999]
	ror edi, 0x1b
	mov eax, ecx
	or eax, ebx
	and eax, edi
	mov edx, ecx
	and edx, ebx
	or eax, edx
	add eax, [ebp-0x30]
	lea esi, [esi+eax+0x5a827999]
	ror esi, 0x17
	mov eax, ebx
	or eax, edi
	and eax, esi
	mov edx, ebx
	and edx, edi
	or eax, edx
	add eax, [ebp-0x20]
	lea ecx, [ecx+eax+0x5a827999]
	ror ecx, 0x13
	mov eax, edi
	or eax, esi
	and eax, ecx
	mov edx, edi
	and edx, esi
	or eax, edx
	add eax, [ebp-0x4c]
	lea ebx, [ebx+eax+0x5a827999]
	ror ebx, 0x1d
	mov eax, esi
	or eax, ecx
	and eax, ebx
	mov edx, esi
	and edx, ecx
	or eax, edx
	add eax, [ebp-0x3c]
	lea edi, [edi+eax+0x5a827999]
	ror edi, 0x1b
	mov eax, ecx
	or eax, ebx
	and eax, edi
	mov edx, ecx
	and edx, ebx
	or eax, edx
	add eax, [ebp-0x2c]
	lea esi, [esi+eax+0x5a827999]
	ror esi, 0x17
	mov eax, ebx
	or eax, edi
	and eax, esi
	mov edx, ebx
	and edx, edi
	or eax, edx
	add eax, [ebp-0x1c]
	lea ecx, [ecx+eax+0x5a827999]
	ror ecx, 0x13
	mov eax, esi
	xor eax, ecx
	xor eax, edi
	add eax, [ebp-0x58]
	lea ebx, [ebx+eax+0x6ed9eba1]
	ror ebx, 0x1d
	mov eax, ecx
	xor eax, ebx
	xor eax, esi
	add eax, [ebp-0x38]
	lea edi, [edi+eax+0x6ed9eba1]
	ror edi, 0x17
	mov eax, ebx
	xor eax, edi
	xor eax, ecx
	add eax, [ebp-0x48]
	lea esi, [esi+eax+0x6ed9eba1]
	ror esi, 0x15
	mov eax, edi
	xor eax, esi
	xor eax, ebx
	add eax, [ebp-0x28]
	lea ecx, [ecx+eax+0x6ed9eba1]
	ror ecx, 0x11
	mov eax, esi
	xor eax, ecx
	xor eax, edi
	add eax, [ebp-0x50]
	lea ebx, [ebx+eax+0x6ed9eba1]
	ror ebx, 0x1d
	mov eax, ecx
	xor eax, ebx
	xor eax, esi
	add eax, [ebp-0x30]
	lea edi, [edi+eax+0x6ed9eba1]
	ror edi, 0x17
	mov eax, ebx
	xor eax, edi
	xor eax, ecx
	add eax, [ebp-0x40]
	lea esi, [esi+eax+0x6ed9eba1]
	ror esi, 0x15
	mov eax, edi
	xor eax, esi
	xor eax, ebx
	add eax, [ebp-0x20]
	lea ecx, [ecx+eax+0x6ed9eba1]
	ror ecx, 0x11
	mov eax, esi
	xor eax, ecx
	xor eax, edi
	add eax, [ebp-0x54]
	lea ebx, [ebx+eax+0x6ed9eba1]
	ror ebx, 0x1d
	mov eax, ecx
	xor eax, ebx
	xor eax, esi
	add eax, [ebp-0x34]
	lea edi, [edi+eax+0x6ed9eba1]
	ror edi, 0x17
	mov eax, ebx
	xor eax, edi
	xor eax, ecx
	add eax, [ebp-0x44]
	lea esi, [esi+eax+0x6ed9eba1]
	ror esi, 0x15
	mov eax, edi
	xor eax, esi
	xor eax, ebx
	add eax, [ebp-0x24]
	lea ecx, [ecx+eax+0x6ed9eba1]
	ror ecx, 0x11
	mov eax, esi
	xor eax, ecx
	xor eax, edi
	add eax, [ebp-0x4c]
	lea ebx, [ebx+eax+0x6ed9eba1]
	ror ebx, 0x1d
	mov eax, ecx
	xor eax, ebx
	xor eax, esi
	add eax, [ebp-0x2c]
	lea edi, [edi+eax+0x6ed9eba1]
	ror edi, 0x17
	mov eax, ebx
	xor eax, edi
	xor eax, ecx
	add eax, [ebp-0x3c]
	lea esi, [esi+eax+0x6ed9eba1]
	ror esi, 0x15
	mov eax, edi
	xor eax, esi
	xor eax, ebx
	add eax, [ebp-0x1c]
	lea ecx, [ecx+eax+0x6ed9eba1]
	add ebx, [ebp-0x78]
	mov eax, [ebp-0x74]
	mov [eax], ebx
	ror ecx, 0x11
	mov eax, [ebp-0x70]
	add [eax], ecx
	mov eax, [ebp-0x6c]
	add [eax], esi
	mov eax, [ebp-0x68]
	add [eax], edi
	mov dword [esp+0x8], 0x40
	mov dword [esp+0x4], 0x0
	lea eax, [ebp-0x58]
	mov [esp], eax
	call memset
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Com_BlockChecksum128(void const*, int, int, unsigned int*)
Com_BlockChecksum128:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x74
	mov dword [ebp-0x4c], 0x0
	mov dword [ebp-0x50], 0x0
	mov dword [ebp-0x60], 0x67452301
	mov dword [ebp-0x5c], 0xefcdab89
	mov dword [ebp-0x58], 0x98badcfe
	mov dword [ebp-0x54], 0x10325476
	lea eax, [ebp+0x10]
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], eax
	lea ebx, [ebp-0x60]
	mov [esp], ebx
	call MD4Update
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov [esp], ebx
	call MD4Update
	mov [esp+0x4], ebx
	mov eax, [ebp+0x14]
	mov [esp], eax
	call MD4Final
	add esp, 0x74
	pop ebx
	pop ebp
	ret
	add [eax], al


;Com_BlockChecksumKey32(void const*, unsigned long, unsigned int)
Com_BlockChecksumKey32:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4
	mov edx, [ebp+0x8]
	mov esi, [ebp+0x10]
	not esi
	mov eax, edx
	add eax, [ebp+0xc]
	cmp edx, eax
	jz Com_BlockChecksumKey32_10
	mov edi, edx
	mov [ebp-0x10], eax
Com_BlockChecksumKey32_20:
	movzx ecx, byte [edi]
	xor ecx, esi
	mov ebx, ecx
	shr ebx, 1
	and ecx, 0x1
	lea eax, [ecx+ecx]
	add eax, ecx
	shl eax, 0x4
	sub eax, ecx
	lea eax, [eax+eax*8]
	lea eax, [eax+eax*8]
	lea eax, [ecx+eax*4]
	mov edx, eax
	shl edx, 0xa
	sub edx, eax
	lea edx, [ecx+edx*8]
	shl edx, 0x5
	xor ebx, edx
	mov ecx, ebx
	shr ecx, 1
	and ebx, 0x1
	lea eax, [ebx+ebx]
	add eax, ebx
	shl eax, 0x4
	sub eax, ebx
	lea eax, [eax+eax*8]
	lea eax, [eax+eax*8]
	lea eax, [ebx+eax*4]
	mov edx, eax
	shl edx, 0xa
	sub edx, eax
	lea edx, [ebx+edx*8]
	shl edx, 0x5
	xor ecx, edx
	mov ebx, ecx
	shr ebx, 1
	and ecx, 0x1
	lea eax, [ecx+ecx]
	add eax, ecx
	shl eax, 0x4
	sub eax, ecx
	lea eax, [eax+eax*8]
	lea eax, [eax+eax*8]
	lea eax, [ecx+eax*4]
	mov edx, eax
	shl edx, 0xa
	sub edx, eax
	lea edx, [ecx+edx*8]
	shl edx, 0x5
	xor ebx, edx
	mov ecx, ebx
	shr ecx, 1
	and ebx, 0x1
	lea eax, [ebx+ebx]
	add eax, ebx
	shl eax, 0x4
	sub eax, ebx
	lea eax, [eax+eax*8]
	lea eax, [eax+eax*8]
	lea eax, [ebx+eax*4]
	mov edx, eax
	shl edx, 0xa
	sub edx, eax
	lea edx, [ebx+edx*8]
	shl edx, 0x5
	xor ecx, edx
	mov ebx, ecx
	shr ebx, 1
	and ecx, 0x1
	lea eax, [ecx+ecx]
	add eax, ecx
	shl eax, 0x4
	sub eax, ecx
	lea eax, [eax+eax*8]
	lea eax, [eax+eax*8]
	lea eax, [ecx+eax*4]
	mov edx, eax
	shl edx, 0xa
	sub edx, eax
	lea edx, [ecx+edx*8]
	shl edx, 0x5
	xor ebx, edx
	mov ecx, ebx
	shr ecx, 1
	and ebx, 0x1
	lea eax, [ebx+ebx]
	add eax, ebx
	shl eax, 0x4
	sub eax, ebx
	lea eax, [eax+eax*8]
	lea eax, [eax+eax*8]
	lea eax, [ebx+eax*4]
	mov edx, eax
	shl edx, 0xa
	sub edx, eax
	lea edx, [ebx+edx*8]
	shl edx, 0x5
	xor ecx, edx
	mov ebx, ecx
	shr ebx, 1
	and ecx, 0x1
	lea eax, [ecx+ecx]
	add eax, ecx
	shl eax, 0x4
	sub eax, ecx
	lea eax, [eax+eax*8]
	lea eax, [eax+eax*8]
	lea eax, [ecx+eax*4]
	mov edx, eax
	shl edx, 0xa
	sub edx, eax
	lea edx, [ecx+edx*8]
	shl edx, 0x5
	xor ebx, edx
	mov esi, ebx
	shr esi, 1
	and ebx, 0x1
	lea eax, [ebx+ebx]
	add eax, ebx
	shl eax, 0x4
	sub eax, ebx
	lea eax, [eax+eax*8]
	lea eax, [eax+eax*8]
	lea eax, [ebx+eax*4]
	mov edx, eax
	shl edx, 0xa
	sub edx, eax
	lea edx, [ebx+edx*8]
	shl edx, 0x5
	xor esi, edx
	add edi, 0x1
	cmp [ebp-0x10], edi
	jnz Com_BlockChecksumKey32_20
Com_BlockChecksumKey32_10:
	not esi
	mov eax, esi
	add esp, 0x4
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Com_BlockChecksum128Cat(void const*, int, void const*, int, unsigned int*)
Com_BlockChecksum128Cat:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x74
	mov dword [ebp-0x4c], 0x0
	mov dword [ebp-0x50], 0x0
	mov dword [ebp-0x60], 0x67452301
	mov dword [ebp-0x5c], 0xefcdab89
	mov dword [ebp-0x58], 0x98badcfe
	mov dword [ebp-0x54], 0x10325476
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	lea ebx, [ebp-0x60]
	mov [esp], ebx
	call MD4Update
	mov eax, [ebp+0x14]
	mov [esp+0x8], eax
	mov eax, [ebp+0x10]
	mov [esp+0x4], eax
	mov [esp], ebx
	call MD4Update
	mov [esp+0x4], ebx
	mov eax, [ebp+0x18]
	mov [esp], eax
	call MD4Final
	add esp, 0x74
	pop ebx
	pop ebp
	ret
	nop


;MD4Final(unsigned char*, MD4_CTX*)
MD4Final:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov esi, [ebp+0xc]
	lea edi, [esi+0x10]
	mov ebx, 0x1
MD4Final_10:
	lea edx, [ebx*4]
	lea ecx, [edx+edi]
	lea eax, [ebp-0x20]
	lea edx, [eax+edx]
	mov eax, [ecx-0x4]
	mov [edx-0x4], al
	mov eax, [ecx-0x4]
	shr eax, 0x8
	mov [edx-0x3], al
	movzx eax, word [ecx-0x2]
	mov [edx-0x2], al
	movzx eax, byte [ecx-0x1]
	mov [edx-0x1], al
	add ebx, 0x1
	cmp ebx, 0x3
	jnz MD4Final_10
	mov eax, [esi+0x10]
	shr eax, 0x3
	and eax, 0x3f
	cmp eax, 0x37
	ja MD4Final_20
	mov edx, 0x38
	sub edx, eax
MD4Final_40:
	mov [esp+0x8], edx
	mov dword [esp+0x4], PADDING
	mov [esp], esi
	call MD4Update
	mov dword [esp+0x8], 0x8
	lea eax, [ebp-0x20]
	mov [esp+0x4], eax
	mov [esp], esi
	call MD4Update
	mov ebx, 0x1
MD4Final_30:
	lea edx, [ebx*4]
	lea ecx, [esi+edx]
	add edx, [ebp+0x8]
	mov eax, [ecx-0x4]
	mov [edx-0x4], al
	mov eax, [ecx-0x4]
	shr eax, 0x8
	mov [edx-0x3], al
	movzx eax, word [ecx-0x2]
	mov [edx-0x2], al
	movzx eax, byte [ecx-0x1]
	mov [edx-0x1], al
	add ebx, 0x1
	cmp ebx, 0x5
	jnz MD4Final_30
	mov dword [esp+0x8], 0x58
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call memset
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
MD4Final_20:
	mov edx, 0x78
	sub edx, eax
	jmp MD4Final_40
	add [eax], al


;MD4Update(MD4_CTX*, unsigned char*, unsigned int)
MD4Update:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0x10]
	mov edx, [ebp+0x8]
	mov eax, [edx+0x10]
	mov ecx, eax
	shr ecx, 0x3
	and ecx, 0x3f
	lea edx, [edi*8]
	add eax, edx
	mov ebx, [ebp+0x8]
	mov [ebx+0x10], eax
	cmp edx, eax
	jbe MD4Update_10
	mov edx, [ebx+0x14]
	add edx, 0x1
	mov [ebx+0x14], edx
	mov eax, edi
	shr eax, 0x1d
	add eax, edx
	mov edx, [ebp+0x8]
	mov [edx+0x14], eax
	mov esi, 0x40
	sub esi, ecx
	cmp edi, esi
	jae MD4Update_20
MD4Update_30:
	xor ebx, ebx
	xor eax, eax
	mov esi, [ebp+0x8]
	lea edx, [ecx+esi+0x18]
	sub edi, ebx
	add eax, [ebp+0xc]
	mov [esp+0x8], edi
	mov [esp+0x4], eax
	mov [esp], edx
	call memcpy
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
MD4Update_10:
	mov esi, [ebp+0x8]
	mov edx, [esi+0x14]
	mov eax, edi
	shr eax, 0x1d
	add eax, edx
	mov edx, [ebp+0x8]
	mov [edx+0x14], eax
	mov esi, 0x40
	sub esi, ecx
	cmp edi, esi
	jb MD4Update_30
MD4Update_20:
	mov ebx, [ebp+0x8]
	lea eax, [ecx+ebx+0x18]
	mov [esp+0x8], esi
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	mov [esp], eax
	call memcpy
	mov edx, ebx
	add edx, 0x18
	mov eax, ebx
	call MD4Transform
	lea eax, [esi+0x3f]
	cmp edi, eax
	ja MD4Update_40
	mov eax, esi
	mov ebx, esi
	xor ecx, ecx
	mov esi, [ebp+0x8]
	lea edx, [ecx+esi+0x18]
	sub edi, ebx
	add eax, [ebp+0xc]
	mov [esp+0x8], edi
	mov [esp+0x4], eax
	mov [esp], edx
	call memcpy
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
MD4Update_40:
	mov eax, [ebp+0xc]
	lea ebx, [esi+eax]
	add esi, 0x7f
	jmp MD4Update_50
MD4Update_60:
	add esi, 0x40
MD4Update_50:
	mov edx, ebx
	mov eax, [ebp+0x8]
	call MD4Transform
	add ebx, 0x40
	cmp edi, esi
	ja MD4Update_60
	lea ebx, [esi-0x3f]
	mov eax, ebx
	xor ecx, ecx
	mov esi, [ebp+0x8]
	lea edx, [ecx+esi+0x18]
	sub edi, ebx
	add eax, [ebp+0xc]
	mov [esp+0x8], edi
	mov [esp+0x4], eax
	mov [esp], edx
	call memcpy
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Initialized global or static variables of md4:
SECTION .data
PADDING: dd 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0


;Initialized constant data of md4:
SECTION .rdata


;Zero initialized global or static variables of md4:
SECTION .bss


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata

