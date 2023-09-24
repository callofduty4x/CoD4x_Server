;Imports of xmodel_utils:

;Exports of xmodel_utils:
	global _Z13XModelGetNamePK6XModel
	global _Z14XModelGetSkinsPK6XModeli
	global _Z14XModelNumBonesPK6XModel
	global _Z16XModelGetLodDistPK6XModelj
	global _Z16XModelGetLodInfoPK6XModeli
	global _Z16XModelGetNumLodsPK6XModel
	global _Z16XModelGetSurfacePK6XModelii
	global _Z17XModelGetBasePosePK6XModel
	global _Z17XModelGetContentsPK6XModel
	global _Z17XModelGetSurfacesPK6XModelPP8XSurfacei
	global _Z17XModelSetTestLodsif
	global _Z18XModelGetSurfCountPK6XModeli
	global _Z19XModelGetLodForDistPK6XModelf
	global _Z19XModelGetLodOutDistPK6XModel
	global _Z20XModelGetLodRampTypePK6XModel
	global _Z26XModelSetSModelCacheForLodP6XModeljjj
	global _Z34XModelGetStaticModelCacheVertCountP6XModelj


SECTION .text


;XModelGetName(XModel const*)
_Z13XModelGetNamePK6XModel:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax]
	pop ebp
	ret


;XModelGetSkins(XModel const*, int)
_Z14XModelGetSkinsPK6XModeli:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	mov eax, [ebp+0xc]
	lea edx, [eax*4]
	shl eax, 0x5
	sub eax, edx
	movzx eax, word [eax+ecx+0x2e]
	mov edx, [ecx+0x24]
	lea eax, [edx+eax*4]
	pop ebp
	ret


;XModelNumBones(XModel const*)
_Z14XModelNumBonesPK6XModel:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	movzx eax, byte [eax+0x4]
	pop ebp
	ret


;XModelGetLodDist(XModel const*, unsigned int)
_Z16XModelGetLodDistPK6XModelj:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0xc]
	lea edx, [eax*4]
	shl eax, 0x5
	sub eax, edx
	add eax, [ebp+0x8]
	fld dword [eax+0x28]
	pop ebp
	ret


;XModelGetLodInfo(XModel const*, int)
_Z16XModelGetLodInfoPK6XModeli:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0xc]
	lea edx, [eax*4]
	shl eax, 0x5
	sub eax, edx
	add eax, [ebp+0x8]
	add eax, 0x28
	pop ebp
	ret


;XModelGetNumLods(XModel const*)
_Z16XModelGetNumLodsPK6XModel:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	movsx eax, word [eax+0xc4]
	pop ebp
	ret
	nop


;XModelGetSurface(XModel const*, int, int)
_Z16XModelGetSurfacePK6XModelii:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	mov eax, [ebp+0xc]
	lea edx, [eax*4]
	shl eax, 0x5
	sub eax, edx
	movzx eax, word [eax+ecx+0x2e]
	add eax, [ebp+0x10]
	lea edx, [eax*8]
	shl eax, 0x6
	sub eax, edx
	add eax, [ecx+0x20]
	pop ebp
	ret


;XModelGetBasePose(XModel const*)
_Z17XModelGetBasePosePK6XModel:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax+0x1c]
	pop ebp
	ret
	nop


;XModelGetContents(XModel const*)
_Z17XModelGetContentsPK6XModel:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax+0xa0]
	pop ebp
	ret


;XModelGetSurfaces(XModel const*, XSurface**, int)
_Z17XModelGetSurfacesPK6XModelPP8XSurfacei:
	push ebp
	mov ebp, esp
	push ebx
	mov ebx, [ebp+0x8]
	mov edx, [ebp+0x10]
	lea eax, [edx*4]
	shl edx, 0x5
	sub edx, eax
	lea edx, [edx+ebx+0x28]
	movzx eax, word [edx+0x6]
	lea ecx, [eax*8]
	shl eax, 0x6
	sub eax, ecx
	add eax, [ebx+0x20]
	mov ecx, [ebp+0xc]
	mov [ecx], eax
	movzx eax, word [edx+0x4]
	pop ebx
	pop ebp
	ret
	nop


;XModelSetTestLods(int, float)
_Z17XModelSetTestLodsif:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop


;XModelGetSurfCount(XModel const*, int)
_Z18XModelGetSurfCountPK6XModeli:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0xc]
	lea edx, [eax*4]
	shl eax, 0x5
	sub eax, edx
	add eax, [ebp+0x8]
	movzx eax, word [eax+0x2c]
	pop ebp
	ret
	nop


;XModelGetLodForDist(XModel const*, float)
_Z19XModelGetLodForDistPK6XModelf:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	movss xmm1, dword [ebp+0xc]
	movsx edx, word [eax+0xc4]
	test edx, edx
	jle _Z19XModelGetLodForDistPK6XModelf_10
	movss xmm0, dword [eax+0x28]
	ucomiss xmm0, xmm1
	jbe _Z19XModelGetLodForDistPK6XModelf_20
	xor eax, eax
	pop ebp
	ret
_Z19XModelGetLodForDistPK6XModelf_10:
	mov eax, 0xffffffff
	pop ebp
	ret
_Z19XModelGetLodForDistPK6XModelf_20:
	lea ecx, [eax+0x44]
	xor eax, eax
_Z19XModelGetLodForDistPK6XModelf_30:
	add eax, 0x1
	cmp edx, eax
	jz _Z19XModelGetLodForDistPK6XModelf_10
	movss xmm0, dword [ecx]
	add ecx, 0x1c
	ucomiss xmm0, xmm1
	jbe _Z19XModelGetLodForDistPK6XModelf_30
	pop ebp
	ret
	nop


;XModelGetLodOutDist(XModel const*)
_Z19XModelGetLodOutDistPK6XModel:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	movsx eax, word [ecx+0xc4]
	lea edx, [eax*4]
	shl eax, 0x5
	sub eax, edx
	fld dword [eax+ecx+0xc]
	pop ebp
	ret
	nop


;XModelGetLodRampType(XModel const*)
_Z20XModelGetLodRampTypePK6XModel:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	movzx eax, byte [eax+0x7]
	pop ebp
	ret


;XModelSetSModelCacheForLod(XModel*, unsigned int, unsigned int, unsigned int)
_Z26XModelSetSModelCacheForLodP6XModeljjj:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0xc]
	lea edx, [eax*4]
	shl eax, 0x5
	sub eax, edx
	add eax, [ebp+0x8]
	add eax, 0x30
	mov edx, [ebp+0x10]
	add edx, 0x1
	mov [eax+0x11], dl
	movzx edx, byte [ebp+0x14]
	mov [eax+0x12], dl
	pop ebp
	ret
	add [eax], al


;XModelGetStaticModelCacheVertCount(XModel*, unsigned int)
_Z34XModelGetStaticModelCacheVertCountP6XModelj:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0xc]
	lea edx, [eax*4]
	shl eax, 0x5
	sub eax, edx
	add eax, [ebp+0x8]
	movzx ecx, byte [eax+0x42]
	mov eax, 0x1
	shl eax, cl
	pop ebp
	ret


;Initialized global or static variables of xmodel_utils:
SECTION .data


;Initialized constant data of xmodel_utils:
SECTION .rdata


;Zero initialized global or static variables of xmodel_utils:
SECTION .bss


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata

