;Imports of r_model_lod:
	extern rg

;Exports of r_model_lod:
	global _Z16R_GetBaseLodDistPKf
	global _Z20R_GetAdjustedLodDistf17XModelLodRampType


SECTION .text


;R_GetBaseLodDist(float const*)
_Z16R_GetBaseLodDistPKf:
	push ebp
	mov ebp, esp
	sub esp, 0x4
	mov edx, [ebp+0x8]
	mov eax, rg
	movss xmm2, dword [eax+0x21dc]
	subss xmm2, [edx]
	movss xmm0, dword [eax+0x21e0]
	subss xmm0, [edx+0x4]
	movss xmm1, dword [eax+0x21e4]
	subss xmm1, [edx+0x8]
	mulss xmm2, xmm2
	mulss xmm0, xmm0
	addss xmm2, xmm0
	mulss xmm1, xmm1
	addss xmm2, xmm1
	sqrtss xmm2, xmm2
	movss [ebp-0x4], xmm2
	fld dword [ebp-0x4]
	leave
	ret


;R_GetAdjustedLodDist(float, XModelLodRampType)
_Z20R_GetAdjustedLodDistf17XModelLodRampType:
	push ebp
	mov ebp, esp
	sub esp, 0x4
	movss xmm0, dword [ebp+0x8]
	mov edx, [ebp+0xc]
	mov eax, rg
	mulss xmm0, [eax+edx*8+0x21e8]
	addss xmm0, [eax+edx*8+0x21ec]
	movss [ebp-0x4], xmm0
	fld dword [ebp-0x4]
	leave
	ret
	add [eax], al


;Initialized global or static variables of r_model_lod:
SECTION .data


;Initialized constant data of r_model_lod:
SECTION .rdata


;Zero initialized global or static variables of r_model_lod:
SECTION .bss


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata

