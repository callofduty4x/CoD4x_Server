;Imports of D3DXMesh:

;Exports of D3DXMesh:
	global D3DXCreateBuffer


SECTION .text


;D3DXCreateBuffer
D3DXCreateBuffer:
	push ebp
	mov ebp, esp
	mov eax, 0x80000008
	pop ebp
	ret
	add [eax], al


;Initialized global or static variables of D3DXMesh:
SECTION .data


;Initialized constant data of D3DXMesh:
SECTION .rdata


;Zero initialized global or static variables of D3DXMesh:
SECTION .bss


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata

