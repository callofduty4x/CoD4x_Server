;Imports of r_draw_pixelshader:

;Exports of r_draw_pixelshader:
	global _Z26R_SkipDrawSurfListMaterialPK11GfxDrawSurfj


SECTION .text


;R_SkipDrawSurfListMaterial(GfxDrawSurf const*, unsigned int)
_Z26R_SkipDrawSurfListMaterialPK11GfxDrawSurfj:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	mov dword [ebp-0x20], 0xffffffff
	mov dword [ebp-0x1c], 0xffffffff
	mov word [ebp-0x20], 0x0
	and dword [ebp-0x20], 0xff00ffff
	and dword [ebp-0x20], 0xe0ffffff
	mov ebx, [ebp-0x20]
	and ebx, [eax]
	mov esi, [ebp-0x1c]
	and esi, [eax+0x4]
	mov edx, [ebp+0xc]
	test edx, edx
	jz _Z26R_SkipDrawSurfListMaterialPK11GfxDrawSurfj_10
	lea edi, [eax+0x8]
	mov dword [ebp-0x14], 0x0
_Z26R_SkipDrawSurfListMaterialPK11GfxDrawSurfj_30:
	add dword [ebp-0x14], 0x1
	mov eax, [ebp-0x14]
	cmp [ebp+0xc], eax
	jz _Z26R_SkipDrawSurfListMaterialPK11GfxDrawSurfj_20
	mov eax, [ebp-0x20]
	and eax, [edi]
	mov edx, [ebp-0x1c]
	and edx, [edi+0x4]
	add edi, 0x8
	mov ecx, esi
	xor ecx, edx
	xor eax, ebx
	or ecx, eax
	jz _Z26R_SkipDrawSurfListMaterialPK11GfxDrawSurfj_30
	mov eax, [ebp-0x14]
_Z26R_SkipDrawSurfListMaterialPK11GfxDrawSurfj_20:
	add esp, 0x14
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z26R_SkipDrawSurfListMaterialPK11GfxDrawSurfj_10:
	mov dword [ebp-0x14], 0x0
	mov eax, [ebp-0x14]
	add esp, 0x14
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Initialized global or static variables of r_draw_pixelshader:
SECTION .data


;Initialized constant data of r_draw_pixelshader:
SECTION .rdata


;Zero initialized global or static variables of r_draw_pixelshader:
SECTION .bss


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata

