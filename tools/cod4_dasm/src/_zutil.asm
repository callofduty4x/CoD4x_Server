;Imports of zutil:
	extern Z_MallocInternal
	extern Z_FreeInternal

;Exports of zutil:
	global zcalloc
	global zcfree


SECTION .text


;zcalloc
zcalloc:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x10]
	imul eax, [ebp+0xc]
	mov [ebp+0x8], eax
	pop ebp
	jmp Z_MallocInternal


;zcfree
zcfree:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0xc]
	mov [ebp+0x8], eax
	pop ebp
	jmp Z_FreeInternal


;Initialized global or static variables of zutil:
SECTION .data


;Initialized constant data of zutil:
SECTION .rdata


;Zero initialized global or static variables of zutil:
SECTION .bss


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata

