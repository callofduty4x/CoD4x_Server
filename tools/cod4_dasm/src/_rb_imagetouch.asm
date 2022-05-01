;Imports of rb_imagetouch:
	extern dx_ctx
	extern tess
	extern _Z14R_GetImageListP9ImageList
	extern qsort
	extern gfxCmdBufSourceState
	extern _Z7R_Set2DP20GfxCmdBufSourceState
	extern rgp
	extern _Z17RB_DrawStretchPicPK8Materialffffffffm18GfxPrimStatsTarget
	extern _Z17RB_EndTessSurfacev

;Exports of rb_imagetouch:
	global _Z21RB_CompareTouchImagesPKvS0_
	global _Z17RB_TouchAllImagesv


SECTION .text


;RB_CompareTouchImages(void const*, void const*)
_Z21RB_CompareTouchImagesPKvS0_:
	push ebp
	mov ebp, esp
	push ebx
	mov eax, [ebp+0x8]
	mov edx, [eax]
	mov eax, [ebp+0xc]
	mov eax, [eax]
	movzx ebx, byte [eax+0xb]
	test bl, bl
	jz _Z21RB_CompareTouchImagesPKvS0__10
	movzx ecx, byte [edx+0xb]
	test cl, cl
	jz _Z21RB_CompareTouchImagesPKvS0__20
	mov eax, [eax+0x10]
	sub eax, [edx+0x10]
	mov edx, eax
	jnz _Z21RB_CompareTouchImagesPKvS0__30
	movzx edx, cl
	movzx eax, bl
	sub edx, eax
_Z21RB_CompareTouchImagesPKvS0__30:
	mov eax, edx
	pop ebx
	pop ebp
	ret
_Z21RB_CompareTouchImagesPKvS0__20:
	mov edx, 0x1
	mov eax, edx
	pop ebx
	pop ebp
	ret
_Z21RB_CompareTouchImagesPKvS0__10:
	mov edx, 0xffffffff
	mov eax, edx
	pop ebx
	pop ebp
	ret
	nop


;RB_TouchAllImages()
_Z17RB_TouchAllImagesv:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x2040
	mov eax, dx_ctx
	movzx esi, byte [eax+0x2c6d]
	mov edx, esi
	test dl, dl
	jz _Z17RB_TouchAllImagesv_10
_Z17RB_TouchAllImagesv_80:
	mov eax, tess
	mov edx, [eax+0x22a948]
	test edx, edx
	jnz _Z17RB_TouchAllImagesv_20
_Z17RB_TouchAllImagesv_70:
	lea eax, [ebp-0x200c]
	mov [esp], eax
	call _Z14R_GetImageListP9ImageList
	mov dword [esp+0xc], _Z21RB_CompareTouchImagesPKvS0_
	mov dword [esp+0x8], 0x4
	mov eax, [ebp-0x200c]
	mov [esp+0x4], eax
	lea eax, [ebp-0x2008]
	mov [esp], eax
	call qsort
	mov eax, [ebp-0x200c]
	test eax, eax
	jz _Z17RB_TouchAllImagesv_30
	mov edx, [ebp-0x2008]
	cmp byte [edx+0xb], 0x0
	jz _Z17RB_TouchAllImagesv_30
	xor ebx, ebx
	jmp _Z17RB_TouchAllImagesv_40
_Z17RB_TouchAllImagesv_50:
	lea eax, [ebx+0x1]
	cmp eax, [ebp-0x200c]
	jae _Z17RB_TouchAllImagesv_30
	mov edx, [ebp+ebx*4-0x2004]
	cmp byte [edx+0xb], 0x0
	jz _Z17RB_TouchAllImagesv_30
	mov ebx, eax
_Z17RB_TouchAllImagesv_40:
	cmp dword [edx], 0x3
	jnz _Z17RB_TouchAllImagesv_50
	mov eax, gfxCmdBufSourceState
	mov [eax+0xc44], edx
	mov [esp], eax
	call _Z7R_Set2DP20GfxCmdBufSourceState
	mov dword [esp+0x28], 0x9
	mov dword [esp+0x24], 0xffffffff
	mov eax, 0x3f800000
	mov [esp+0x20], eax
	mov [esp+0x1c], eax
	xor edx, edx
	mov [esp+0x18], edx
	mov [esp+0x14], edx
	mov eax, 0x41000000
	mov [esp+0x10], eax
	mov [esp+0xc], eax
	mov [esp+0x8], edx
	mov [esp+0x4], edx
	mov eax, rgp
	mov eax, [eax+0x20a4]
	mov [esp], eax
	call _Z17RB_DrawStretchPicPK8Materialffffffffm18GfxPrimStatsTarget
	call _Z17RB_EndTessSurfacev
	jmp _Z17RB_TouchAllImagesv_50
_Z17RB_TouchAllImagesv_30:
	mov eax, gfxCmdBufSourceState
	mov dword [eax+0xc44], 0x0
	mov eax, esi
	test al, al
	jnz _Z17RB_TouchAllImagesv_60
	mov eax, dx_ctx
	mov eax, [eax+0x8]
	mov edx, [eax]
	mov [esp], eax
	call dword [edx+0xa8]
_Z17RB_TouchAllImagesv_60:
	add esp, 0x2040
	pop ebx
	pop esi
	pop ebp
	ret
_Z17RB_TouchAllImagesv_20:
	call _Z17RB_EndTessSurfacev
	jmp _Z17RB_TouchAllImagesv_70
_Z17RB_TouchAllImagesv_10:
	mov eax, [eax+0x8]
	mov edx, [eax]
	mov [esp], eax
	call dword [edx+0xa4]
	jmp _Z17RB_TouchAllImagesv_80


;Initialized global or static variables of rb_imagetouch:
SECTION .data


;Initialized constant data of rb_imagetouch:
SECTION .rdata


;Zero initialized global or static variables of rb_imagetouch:
SECTION .bss


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata

