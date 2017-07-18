;Imports of xmodel_utils:

;Exports of xmodel_utils:
	global XModelGetName
	global XModelGetSkins
	global XModelNumBones
	global XModelGetLodDist
	global XModelGetLodInfo
	global XModelGetNumLods
	global XModelGetSurface
	global XModelGetBasePose
	global XModelGetContents
	global XModelGetSurfaces
	global XModelSetTestLods
	global XModelGetSurfCount
	global XModelGetLodForDist
	global XModelGetLodOutDist
	global XModelGetLodRampType
	global XModelSetSModelCacheForLod
	global XModelGetStaticModelCacheVertCount


SECTION .text


;XModelGetName(XModel const*)
XModelGetName:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax]
	pop ebp
	ret


;XModelGetSkins(XModel const*, int)
XModelGetSkins:
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
XModelNumBones:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	movzx eax, byte [eax+0x4]
	pop ebp
	ret


;XModelGetLodDist(XModel const*, unsigned int)
XModelGetLodDist:
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
XModelGetLodInfo:
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
XModelGetNumLods:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	movsx eax, word [eax+0xc4]
	pop ebp
	ret
	nop


;XModelGetSurface(XModel const*, int, int)
XModelGetSurface:
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
XModelGetBasePose:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax+0x1c]
	pop ebp
	ret
	nop


;XModelGetContents(XModel const*)
XModelGetContents:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax+0xa0]
	pop ebp
	ret


;XModelGetSurfaces(XModel const*, XSurface**, int)
XModelGetSurfaces:
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
XModelSetTestLods:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop


;XModelGetSurfCount(XModel const*, int)
XModelGetSurfCount:
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
XModelGetLodForDist:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	movss xmm1, dword [ebp+0xc]
	movsx edx, word [eax+0xc4]
	test edx, edx
	jle XModelGetLodForDist_10
	movss xmm0, dword [eax+0x28]
	ucomiss xmm0, xmm1
	jbe XModelGetLodForDist_20
	xor eax, eax
	pop ebp
	ret
XModelGetLodForDist_10:
	mov eax, 0xffffffff
	pop ebp
	ret
XModelGetLodForDist_20:
	lea ecx, [eax+0x44]
	xor eax, eax
XModelGetLodForDist_30:
	add eax, 0x1
	cmp edx, eax
	jz XModelGetLodForDist_10
	movss xmm0, dword [ecx]
	add ecx, 0x1c
	ucomiss xmm0, xmm1
	jbe XModelGetLodForDist_30
	pop ebp
	ret
	nop


;XModelGetLodOutDist(XModel const*)
XModelGetLodOutDist:
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
XModelGetLodRampType:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	movzx eax, byte [eax+0x7]
	pop ebp
	ret


;XModelSetSModelCacheForLod(XModel*, unsigned int, unsigned int, unsigned int)
XModelSetSModelCacheForLod:
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
XModelGetStaticModelCacheVertCount:
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


;Zero initialized global or static variables of xmodel_utils:
SECTION .bss


;Initialized global or static variables of xmodel_utils:
SECTION .data


;Initialized constant data of xmodel_utils:
SECTION .rdata


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata

