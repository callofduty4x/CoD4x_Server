;Imports of l_memory:
	extern Z_FreeInternal
	extern Z_MallocInternal
	extern memset

;Exports of l_memory:
	global FreeMemory
	global GetClearedMemory
	global GetMemory


SECTION .text


;FreeMemory(void*)
FreeMemory:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	lea edx, [eax-0x4]
	cmp dword [eax-0x4], 0x12345678
	jz FreeMemory_10
	pop ebp
	ret
FreeMemory_10:
	mov [ebp+0x8], edx
	pop ebp
	jmp Z_FreeInternal
	nop


;GetClearedMemory(unsigned long)
GetClearedMemory:
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
	jz GetClearedMemory_10
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
GetClearedMemory_10:
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
GetMemory:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	add eax, 0x4
	mov [esp], eax
	call Z_MallocInternal
	test eax, eax
	jz GetMemory_10
	mov dword [eax], 0x12345678
	add eax, 0x4
GetMemory_10:
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

