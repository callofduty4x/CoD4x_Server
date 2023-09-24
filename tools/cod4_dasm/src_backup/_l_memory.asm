;Imports of l_memory:
	extern Z_FreeInternal
	extern Z_MallocInternal
	extern memset

;Exports of l_memory:
	global _Z10FreeMemoryPv
	global _Z16GetClearedMemorym
	global _Z9GetMemorym


SECTION .text


;FreeMemory(void*)
_Z10FreeMemoryPv:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	lea edx, [eax-0x4]
	cmp dword [eax-0x4], 0x12345678
	jz _Z10FreeMemoryPv_10
	pop ebp
	ret
_Z10FreeMemoryPv_10:
	mov [ebp+0x8], edx
	pop ebp
	jmp Z_FreeInternal
	nop


;GetClearedMemory(unsigned long)
_Z16GetClearedMemorym:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	lea eax, [esi+0x4]
	mov [esp], eax
	call Z_MallocInternal
	test eax, eax
	jz _Z16GetClearedMemorym_10
	mov dword [eax], 0x12345678
	lea ebx, [eax+0x4]
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call memset
	mov eax, ebx
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z16GetClearedMemorym_10:
	xor ebx, ebx
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call memset
	mov eax, ebx
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret


;GetMemory(unsigned long)
_Z9GetMemorym:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	add eax, 0x4
	mov [esp], eax
	call Z_MallocInternal
	test eax, eax
	jz _Z9GetMemorym_10
	mov dword [eax], 0x12345678
	add eax, 0x4
_Z9GetMemorym_10:
	leave
	ret
	nop


;Initialized global or static variables of l_memory:
SECTION .data


;Initialized constant data of l_memory:
SECTION .rdata


;Zero initialized global or static variables of l_memory:
SECTION .bss


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata

