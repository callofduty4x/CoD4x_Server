;Imports of r_draw_cmdbuf:

;Exports of r_draw_cmdbuf:
	global R_ReadPrimDrawSurfInt
	global R_ReadPrimDrawSurfData


SECTION .text


;R_ReadPrimDrawSurfInt(GfxReadCmdBuf*)
R_ReadPrimDrawSurfInt:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	mov ecx, [edx]
	mov eax, [ecx]
	add ecx, 0x4
	mov [edx], ecx
	pop ebp
	ret
	nop


;R_ReadPrimDrawSurfData(GfxReadCmdBuf*, unsigned int)
R_ReadPrimDrawSurfData:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov ecx, [ebp+0xc]
	lea ecx, [eax+ecx*4]
	mov [edx], ecx
	pop ebp
	ret


;Initialized global or static variables of r_draw_cmdbuf:
SECTION .data


;Initialized constant data of r_draw_cmdbuf:
SECTION .rdata


;Zero initialized global or static variables of r_draw_cmdbuf:
SECTION .bss


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata

