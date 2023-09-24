;Imports of r_debug_alloc:
	extern Z_VirtualFreeInternal
	extern Z_TryVirtualAllocInternal
	extern _Z18R_WarnOncePerFrame14GfxWarningTypez

;Exports of r_debug_alloc:
	global _Z11R_DebugFreePPv
	global _Z12R_DebugAllocPPviPKc
	global _Z14R_DebugFreeAllv


SECTION .text


;R_DebugFree(void**)
_Z11R_DebugFreePPv:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov eax, [ebx]
	test eax, eax
	jz _Z11R_DebugFreePPv_10
	mov [esp], eax
	call Z_VirtualFreeInternal
	mov dword [ebx], 0x0
_Z11R_DebugFreePPv_10:
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;R_DebugAlloc(void**, int, char const*)
_Z12R_DebugAllocPPviPKc:
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
	jz _Z12R_DebugAllocPPviPKc_10
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z12R_DebugAllocPPviPKc_10:
	mov [ebp+0xc], esi
	mov dword [ebp+0x8], 0x1f
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp _Z18R_WarnOncePerFrame14GfxWarningTypez
	nop


;R_DebugFreeAll()
_Z14R_DebugFreeAllv:
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

