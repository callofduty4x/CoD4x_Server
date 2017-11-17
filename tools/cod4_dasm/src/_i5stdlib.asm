;Imports of i5stdlib:
	extern tolower
	extern __toupper
	extern strcasecmp
	extern strncasecmp
	extern getcwd

;Exports of i5stdlib:
	global itoa
	global Q_strlwr
	global strupr
	global stricmp
	global strnicmp
	global _getcwd


SECTION .text


;itoa(int, char*, int)
itoa:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4
	mov eax, [ebp+0x8]
	mov ebx, [ebp+0x10]
	test eax, eax
	js itoa_10
	mov ecx, eax
	xor esi, esi
itoa_80:
	xor edi, edi
	jmp itoa_20
itoa_40:
	lea eax, [edx+0x37]
	mov edx, [ebp+0xc]
	mov [edx+edi], al
	add edi, 0x1
	mov eax, ecx
	cdq
	idiv ebx
	mov ecx, eax
	test eax, eax
	jz itoa_30
itoa_20:
	mov eax, ecx
	cdq
	idiv ebx
	cmp edx, 0x9
	jg itoa_40
	lea eax, [edx+0x30]
	mov edx, [ebp+0xc]
	mov [edx+edi], al
	add edi, 0x1
	mov eax, ecx
	cdq
	idiv ebx
	mov ecx, eax
	test eax, eax
	jnz itoa_20
itoa_30:
	mov edx, esi
	test dl, dl
	jz itoa_50
	mov eax, [ebp+0xc]
	mov byte [eax+edi], 0x2d
	add edi, 0x1
itoa_50:
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
	jle itoa_60
	lea edi, [ebx+edx]
	mov esi, 0x1
itoa_70:
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
	jg itoa_70
itoa_60:
	mov eax, [ebp+0xc]
	add esp, 0x4
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
itoa_10:
	mov ecx, eax
	neg ecx
	mov esi, 0x1
	jmp itoa_80


;strlwr(char*)
Q_strlwr:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	movzx eax, byte [esi]
	test al, al
	jnz Q_strlwr_10
	mov eax, esi
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
Q_strlwr_10:
	mov ebx, esi
Q_strlwr_20:
	movsx eax, al
	mov [esp], eax
	call tolower
	mov [ebx], al
	add ebx, 0x1
	movzx eax, byte [ebx]
	test al, al
	jnz Q_strlwr_20
	mov eax, esi
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;strupr(char*)
strupr:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	movzx eax, byte [esi]
	test al, al
	jnz strupr_10
	mov eax, esi
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
strupr_10:
	mov ebx, esi
strupr_20:
	movsx eax, al
	mov [esp], eax
	call __toupper
	mov [ebx], al
	add ebx, 0x1
	movzx eax, byte [ebx]
	test al, al
	jnz strupr_20
	mov eax, esi
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;stricmp(char const*, char const*)
stricmp:
	push ebp
	mov ebp, esp
	pop ebp
	jmp strcasecmp
	nop


;strnicmp(char const*, char const*, unsigned long)
strnicmp:
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

