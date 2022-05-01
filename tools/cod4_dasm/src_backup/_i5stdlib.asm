;Imports of i5stdlib:
	extern tolower
	extern __toupper
	extern strcasecmp
	extern strncasecmp
	extern getcwd

;Exports of i5stdlib:
	global _Z4itoaiPci
	global _Z6strlwrPc
	global _Z6struprPc
	global _Z7stricmpPKcS0_
	global _Z8strnicmpPKcS0_m
	global _getcwd


SECTION .text


;itoa(int, char*, int)
_Z4itoaiPci:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4
	mov eax, [ebp+0x8]
	mov ebx, [ebp+0x10]
	test eax, eax
	js _Z4itoaiPci_10
	mov ecx, eax
	xor esi, esi
_Z4itoaiPci_80:
	xor edi, edi
	jmp _Z4itoaiPci_20
_Z4itoaiPci_40:
	lea eax, [edx+0x37]
	mov edx, [ebp+0xc]
	mov [edx+edi], al
	add edi, 0x1
	mov eax, ecx
	cdq
	idiv ebx
	mov ecx, eax
	test eax, eax
	jz _Z4itoaiPci_30
_Z4itoaiPci_20:
	mov eax, ecx
	cdq
	idiv ebx
	cmp edx, 0x9
	jg _Z4itoaiPci_40
	lea eax, [edx+0x30]
	mov edx, [ebp+0xc]
	mov [edx+edi], al
	add edi, 0x1
	mov eax, ecx
	cdq
	idiv ebx
	mov ecx, eax
	test eax, eax
	jnz _Z4itoaiPci_20
_Z4itoaiPci_30:
	mov edx, esi
	test dl, dl
	jz _Z4itoaiPci_50
	mov eax, [ebp+0xc]
	mov byte [eax+edi], 0x2d
	add edi, 0x1
_Z4itoaiPci_50:
	mov edx, [ebp+0xc]
	mov byte [edi+edx], 0x0
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, edx
	repne scasb
	not ecx
	lea ebx, [ecx-0x2]
	test ebx, ebx
	jle _Z4itoaiPci_60
	lea edi, [ebx+edx]
	mov esi, 0x1
_Z4itoaiPci_70:
	mov edx, [ebp+0xc]
	add edx, esi
	movzx ecx, byte [edx-0x1]
	movzx eax, byte [edi]
	mov [edx-0x1], al
	mov [edi], cl
	mov eax, esi
	sub ebx, 0x1
	add esi, 0x1
	sub edi, 0x1
	cmp ebx, eax
	jg _Z4itoaiPci_70
_Z4itoaiPci_60:
	mov eax, [ebp+0xc]
	add esp, 0x4
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z4itoaiPci_10:
	mov ecx, eax
	neg ecx
	mov esi, 0x1
	jmp _Z4itoaiPci_80


;strlwr(char*)
_Z6strlwrPc:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	movzx eax, byte [esi]
	test al, al
	jnz _Z6strlwrPc_10
	mov eax, esi
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z6strlwrPc_10:
	mov ebx, esi
_Z6strlwrPc_20:
	movsx eax, al
	mov [esp], eax
	call tolower
	mov [ebx], al
	add ebx, 0x1
	movzx eax, byte [ebx]
	test al, al
	jnz _Z6strlwrPc_20
	mov eax, esi
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;strupr(char*)
_Z6struprPc:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	movzx eax, byte [esi]
	test al, al
	jnz _Z6struprPc_10
	mov eax, esi
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z6struprPc_10:
	mov ebx, esi
_Z6struprPc_20:
	movsx eax, al
	mov [esp], eax
	call __toupper
	mov [ebx], al
	add ebx, 0x1
	movzx eax, byte [ebx]
	test al, al
	jnz _Z6struprPc_20
	mov eax, esi
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;stricmp(char const*, char const*)
_Z7stricmpPKcS0_:
	push ebp
	mov ebp, esp
	pop ebp
	jmp strcasecmp
	nop


;strnicmp(char const*, char const*, unsigned long)
_Z8strnicmpPKcS0_m:
	push ebp
	mov ebp, esp
	pop ebp
	jmp strncasecmp
	nop
	add [eax], al


;_getcwd
_getcwd:
	push ebp
	mov ebp, esp
	pop ebp
	jmp getcwd
	nop


;Initialized global or static variables of i5stdlib:
SECTION .data


;Initialized constant data of i5stdlib:
SECTION .rdata


;Zero initialized global or static variables of i5stdlib:
SECTION .bss


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata

