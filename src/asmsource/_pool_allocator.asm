;Imports of pool_allocator:

;Exports of pool_allocator:
	global Pool_Alloc
	global Pool_Free
	global Pool_Init


SECTION .text


;Pool_Alloc(pooldata_t*)
Pool_Alloc:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	mov edx, [ecx]
	test edx, edx
	jz Pool_Alloc_10
	mov eax, [edx]
	mov [ecx], eax
	add dword [ecx+0x4], 0x1
	mov eax, edx
	pop ebp
	ret
Pool_Alloc_10:
	xor eax, eax
	pop ebp
	ret


;Pool_Free(void*, pooldata_t*)
Pool_Free:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov ecx, [edx]
	mov [eax], ecx
	mov [edx], eax
	sub dword [edx+0x4], 0x1
	pop ebp
	ret
	nop


;Pool_Init(void*, pooldata_t*, unsigned int, unsigned int)
Pool_Init:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	mov eax, [ebp+0x8]
	mov esi, [ebp+0x10]
	mov edx, [ebp+0xc]
	mov [edx], eax
	mov edi, [ebp+0x14]
	sub edi, 0x1
	jnz Pool_Init_10
	mov edx, eax
	mov dword [edx], 0x0
	mov eax, [ebp+0xc]
	mov dword [eax+0x4], 0x0
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Pool_Init_10:
	xor ebx, ebx
	mov ecx, eax
	sub ecx, esi
Pool_Init_20:
	add ebx, 0x1
	add eax, esi
	add ecx, esi
	mov edx, eax
	mov [ecx], eax
	cmp edi, ebx
	jnz Pool_Init_20
	mov dword [edx], 0x0
	mov eax, [ebp+0xc]
	mov dword [eax+0x4], 0x0
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Initialized global or static variables of pool_allocator:
SECTION .data


;Initialized constant data of pool_allocator:
SECTION .rdata


;Zero initialized global or static variables of pool_allocator:
SECTION .bss


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata

