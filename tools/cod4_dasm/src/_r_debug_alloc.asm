;Imports of r_debug_alloc:
	extern Z_VirtualFreeInternal
	extern Z_TryVirtualAllocInternal
	extern R_WarnOncePerFrame

;Exports of r_debug_alloc:
	global R_DebugFree
	global R_DebugAlloc
	global R_DebugFreeAll


SECTION .text


;R_DebugFree(void**)
R_DebugFree:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov eax, [ebx]
	test eax, eax
	jz R_DebugFree_10
	mov [esp], eax
	call Z_VirtualFreeInternal
	mov dword [ebx], 0x0
R_DebugFree_10:
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;R_DebugAlloc(void**, int, char const*)
R_DebugAlloc:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0x10]
	mov eax, [ebp+0xc]
	mov [esp], eax
	call Z_TryVirtualAllocInternal
	mov [ebx], eax
	test eax, eax
	jz R_DebugAlloc_10
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
R_DebugAlloc_10:
	mov [ebp+0xc], esi
	mov dword [ebp+0x8], 0x1f
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp R_WarnOncePerFrame
	nop


;R_DebugFreeAll()
R_DebugFreeAll:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	add [eax], al


;Initialized global or static variables of r_debug_alloc:
SECTION .data


;Initialized constant data of r_debug_alloc:
SECTION .rdata


;Zero initialized global or static variables of r_debug_alloc:
SECTION .bss


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata

