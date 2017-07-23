;Imports of rb_imagetouch:
	extern dx_ctx
	extern tess
	extern R_GetImageList
	extern qsort
	extern gfxCmdBufSourceState
	extern R_Set2D
	extern rgp
	extern RB_DrawStretchPic
	extern RB_EndTessSurface

;Exports of rb_imagetouch:
	global RB_CompareTouchImages
	global RB_TouchAllImages


SECTION .text


;RB_CompareTouchImages(void const*, void const*)
RB_CompareTouchImages:
	push ebp
	mov ebp, esp
	push ebx
	mov eax, [ebp+0x8]
	mov edx, [eax]
	mov eax, [ebp+0xc]
	mov eax, [eax]
	movzx ebx, byte [eax+0xb]
	test bl, bl
	jz RB_CompareTouchImages_10
	movzx ecx, byte [edx+0xb]
	test cl, cl
	jz RB_CompareTouchImages_20
	mov eax, [eax+0x10]
	sub eax, [edx+0x10]
	mov edx, eax
	jnz RB_CompareTouchImages_30
	movzx edx, cl
	movzx eax, bl
	sub edx, eax
RB_CompareTouchImages_30:
	mov eax, edx
	pop ebx
	pop ebp
	ret
RB_CompareTouchImages_20:
	mov edx, 0x1
	mov eax, edx
	pop ebx
	pop ebp
	ret
RB_CompareTouchImages_10:
	mov edx, 0xffffffff
	mov eax, edx
	pop ebx
	pop ebp
	ret
	nop


;RB_TouchAllImages()
RB_TouchAllImages:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x2040
	mov eax, dx_ctx
	movzx esi, byte [eax+0x2c6d]
	mov edx, esi
	test dl, dl
	jz RB_TouchAllImages_10
RB_TouchAllImages_80:
	mov eax, tess
	mov edx, [eax+0x22a948]
	test edx, edx
	jnz RB_TouchAllImages_20
RB_TouchAllImages_70:
	lea eax, [ebp-0x200c]
	mov [esp], eax
	call R_GetImageList
	mov dword [esp+0xc], RB_CompareTouchImages
	mov dword [esp+0x8], 0x4
	mov eax, [ebp-0x200c]
	mov [esp+0x4], eax
	lea eax, [ebp-0x2008]
	mov [esp], eax
	call qsort
	mov eax, [ebp-0x200c]
	test eax, eax
	jz RB_TouchAllImages_30
	mov edx, [ebp-0x2008]
	cmp byte [edx+0xb], 0x0
	jz RB_TouchAllImages_30
	xor ebx, ebx
	jmp RB_TouchAllImages_40
RB_TouchAllImages_50:
	lea eax, [ebx+0x1]
	cmp eax, [ebp-0x200c]
	jae RB_TouchAllImages_30
	mov edx, [ebp+ebx*4-0x2004]
	cmp byte [edx+0xb], 0x0
	jz RB_TouchAllImages_30
	mov ebx, eax
RB_TouchAllImages_40:
	cmp dword [edx], 0x3
	jnz RB_TouchAllImages_50
	mov eax, gfxCmdBufSourceState
	mov [eax+0xc44], edx
	mov [esp], eax
	call R_Set2D
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
	call RB_DrawStretchPic
	call RB_EndTessSurface
	jmp RB_TouchAllImages_50
RB_TouchAllImages_30:
	mov eax, gfxCmdBufSourceState
	mov dword [eax+0xc44], 0x0
	mov eax, esi
	test al, al
	jnz RB_TouchAllImages_60
	mov eax, dx_ctx
	mov eax, [eax+0x8]
	mov edx, [eax]
	mov [esp], eax
	call dword [edx+0xa8]
RB_TouchAllImages_60:
	add esp, 0x2040
	pop ebx
	pop esi
	pop ebp
	ret
RB_TouchAllImages_20:
	call RB_EndTessSurface
	jmp RB_TouchAllImages_70
RB_TouchAllImages_10:
	mov eax, [eax+0x8]
	mov edx, [eax]
	mov [esp], eax
	call dword [edx+0xa4]
	jmp RB_TouchAllImages_80


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

