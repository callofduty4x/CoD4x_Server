;Imports of memory:
	extern free

;Exports of memory:
	global freefn
	global dFree


SECTION .text


;dFree
dFree:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	test eax, eax
	jz dFree_10
	mov ecx, [freefn]
	test ecx, ecx
	jz dFree_20
	pop ebp
	jmp ecx
dFree_20:
	mov [ebp+0x8], eax
	pop ebp
	jmp free
dFree_10:
	pop ebp
	ret


;Initialized global or static variables of memory:
SECTION .data


;Initialized constant data of memory:
SECTION .rdata


;Zero initialized global or static variables of memory:
SECTION .bss
freefn: resb 0x80


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata

