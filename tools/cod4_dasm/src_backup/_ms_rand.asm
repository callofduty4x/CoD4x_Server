;Imports of ms_rand:

;Exports of ms_rand:
	global sRandSeed
	global _Z7ms_randv
	global _Z8ms_srandj


SECTION .text


;ms_rand()
_Z7ms_randv:
	push ebp
	mov ebp, esp
	mov edx, [sRandSeed]
	lea eax, [edx+edx*2]
	lea eax, [edx+eax*4]
	shl eax, 0x4
	add eax, edx
	shl eax, 0x8
	sub eax, edx
	lea eax, [edx+eax*4+0x269ec3]
	mov [sRandSeed], eax
	shr eax, 0x10
	and eax, 0x7fff
	pop ebp
	ret
	add [eax], al


;ms_srand(unsigned int)
_Z8ms_srandj:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov [sRandSeed], eax
	pop ebp
	ret
	nop


;Initialized global or static variables of ms_rand:
SECTION .data


;Initialized constant data of ms_rand:
SECTION .rdata


;Zero initialized global or static variables of ms_rand:
SECTION .bss
sRandSeed: resb 0x80


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata

