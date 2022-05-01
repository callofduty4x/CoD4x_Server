;Imports of ui_atoms:
	extern com_expectedHunkUsage
	extern Hunk_Used
	extern _Z20DB_GetLoadedFractionv
	extern sharedUiInfo
	extern _Z17CL_DrawStretchPicPK15ScreenPlacementffffiiffffPKfP8Material
	extern useFastFile
	extern _Z25CL_DrawStretchPicPhysicalffffffffPKfP8Material

;Exports of ui_atoms:
	global _Z26UI_LoadBarProgress_LoadObjv
	global _Z27UI_LoadBarProgress_FastFilev
	global _Z11UI_FillRectPK15ScreenPlacementffffiiPKf
	global _Z14UI_DrawLoadBarPK15ScreenPlacementffffiiPKfP8Material
	global _Z16UI_DrawHandlePicPK15ScreenPlacementffffiiPKfP8Material
	global _Z19UI_FillRectPhysicalffffPKf


SECTION .text


;UI_LoadBarProgress_LoadObj()
_Z26UI_LoadBarProgress_LoadObjv:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, com_expectedHunkUsage
	mov eax, [ebx]
	pxor xmm3, xmm3
	test eax, eax
	jle _Z26UI_LoadBarProgress_LoadObjv_10
	call Hunk_Used
	cvtsi2ss xmm3, eax
	cvtsi2ss xmm0, dword [ebx]
	divss xmm3, xmm0
	movss xmm2, dword [_float_1_00000000]
	movaps xmm1, xmm3
	subss xmm1, xmm2
	pxor xmm0, xmm0
	cmpss xmm0, xmm1, 0x6
	movaps xmm1, xmm3
	andps xmm1, xmm0
	movaps xmm3, xmm0
	andnps xmm3, xmm2
	orps xmm3, xmm1
_Z26UI_LoadBarProgress_LoadObjv_10:
	movss [ebp-0xc], xmm3
	fld dword [ebp-0xc]
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;UI_LoadBarProgress_FastFile()
_Z27UI_LoadBarProgress_FastFilev:
	push ebp
	mov ebp, esp
	pop ebp
	jmp _Z20DB_GetLoadedFractionv
	nop


;UI_FillRect(ScreenPlacement const*, float, float, float, float, int, int, float const*)
_Z11UI_FillRectPK15ScreenPlacementffffiiPKf:
	push ebp
	mov ebp, esp
	sub esp, 0x48
	mov eax, sharedUiInfo
	mov eax, [eax+0x20]
	test eax, eax
	jz _Z11UI_FillRectPK15ScreenPlacementffffiiPKf_10
	mov [esp+0x30], eax
	mov eax, [ebp+0x24]
	mov [esp+0x2c], eax
	xor eax, eax
	mov [esp+0x28], eax
	mov [esp+0x24], eax
	mov [esp+0x20], eax
	mov [esp+0x1c], eax
	mov eax, [ebp+0x20]
	mov [esp+0x18], eax
	mov eax, [ebp+0x1c]
	mov [esp+0x14], eax
	movss xmm0, dword [ebp+0x18]
	movss [esp+0x10], xmm0
	movss xmm0, dword [ebp+0x14]
	movss [esp+0xc], xmm0
	movss xmm0, dword [ebp+0x10]
	movss [esp+0x8], xmm0
	movss xmm0, dword [ebp+0xc]
	movss [esp+0x4], xmm0
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z17CL_DrawStretchPicPK15ScreenPlacementffffiiffffPKfP8Material
_Z11UI_FillRectPK15ScreenPlacementffffiiPKf_10:
	leave
	ret
	add [eax], al


;UI_DrawLoadBar(ScreenPlacement const*, float, float, float, float, int, int, float const*, Material*)
_Z14UI_DrawLoadBarPK15ScreenPlacementffffiiPKfP8Material:
	push ebp
	mov ebp, esp
	sub esp, 0x58
	mov eax, useFastFile
	mov edx, [eax]
	mov eax, _Z27UI_LoadBarProgress_FastFilev
	cmp byte [edx+0xc], 0x0
	mov edx, _Z26UI_LoadBarProgress_LoadObjv
	cmovz eax, edx
	call eax
	fstp dword [ebp-0xc]
	mov eax, [ebp+0x28]
	mov [esp+0x30], eax
	mov eax, [ebp+0x24]
	mov [esp+0x2c], eax
	mov dword [esp+0x28], 0x3f800000
	movss xmm0, dword [ebp-0xc]
	movss [esp+0x24], xmm0
	xor eax, eax
	mov [esp+0x20], eax
	mov [esp+0x1c], eax
	mov eax, [ebp+0x20]
	mov [esp+0x18], eax
	mov eax, [ebp+0x1c]
	mov [esp+0x14], eax
	mov eax, [ebp+0x18]
	mov [esp+0x10], eax
	mulss xmm0, [ebp+0x14]
	movss [esp+0xc], xmm0
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z17CL_DrawStretchPicPK15ScreenPlacementffffiiffffPKfP8Material
	leave
	ret
	nop


;UI_DrawHandlePic(ScreenPlacement const*, float, float, float, float, int, int, float const*, Material*)
_Z16UI_DrawHandlePicPK15ScreenPlacementffffiiPKfP8Material:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x50
	movss xmm2, dword [ebp+0x14]
	movss xmm1, dword [ebp+0x18]
	xor eax, eax
	ucomiss xmm2, [_float_0_00000000]
	jp _Z16UI_DrawHandlePicPK15ScreenPlacementffffiiPKfP8Material_10
	jb _Z16UI_DrawHandlePicPK15ScreenPlacementffffiiPKfP8Material_20
_Z16UI_DrawHandlePicPK15ScreenPlacementffffiiPKfP8Material_10:
	mov ebx, eax
	mov ecx, 0x3f800000
	mov edx, ecx
_Z16UI_DrawHandlePicPK15ScreenPlacementffffiiPKfP8Material_50:
	mov [ebp-0xc], eax
	movss xmm0, dword [ebp-0xc]
	ucomiss xmm0, xmm1
	ja _Z16UI_DrawHandlePicPK15ScreenPlacementffffiiPKfP8Material_30
	mov esi, eax
_Z16UI_DrawHandlePicPK15ScreenPlacementffffiiPKfP8Material_40:
	mov eax, [ebp+0x28]
	mov [esp+0x30], eax
	mov eax, [ebp+0x24]
	mov [esp+0x2c], eax
	mov [esp+0x28], edx
	mov [esp+0x24], ecx
	mov [esp+0x20], esi
	mov [esp+0x1c], ebx
	mov eax, [ebp+0x20]
	mov [esp+0x18], eax
	mov eax, [ebp+0x1c]
	mov [esp+0x14], eax
	movss [esp+0x10], xmm1
	movss [esp+0xc], xmm2
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z17CL_DrawStretchPicPK15ScreenPlacementffffiiffffPKfP8Material
	add esp, 0x50
	pop ebx
	pop esi
	pop ebp
	ret
_Z16UI_DrawHandlePicPK15ScreenPlacementffffiiPKfP8Material_30:
	xorps xmm1, [_data16_80000000]
	mov esi, edx
	mov edx, eax
	jmp _Z16UI_DrawHandlePicPK15ScreenPlacementffffiiPKfP8Material_40
_Z16UI_DrawHandlePicPK15ScreenPlacementffffiiPKfP8Material_20:
	xorps xmm2, [_data16_80000000]
	mov ebx, 0x3f800000
	mov edx, ebx
	mov ecx, eax
	jmp _Z16UI_DrawHandlePicPK15ScreenPlacementffffiiPKfP8Material_50
	nop


;UI_FillRectPhysical(float, float, float, float, float const*)
_Z19UI_FillRectPhysicalffffPKf:
	push ebp
	mov ebp, esp
	sub esp, 0x38
	mov eax, sharedUiInfo
	mov eax, [eax+0x20]
	test eax, eax
	jz _Z19UI_FillRectPhysicalffffPKf_10
	mov [esp+0x24], eax
	mov eax, [ebp+0x18]
	mov [esp+0x20], eax
	xor eax, eax
	mov [esp+0x1c], eax
	mov [esp+0x18], eax
	mov [esp+0x14], eax
	mov [esp+0x10], eax
	movss xmm0, dword [ebp+0x14]
	movss [esp+0xc], xmm0
	movss xmm0, dword [ebp+0x10]
	movss [esp+0x8], xmm0
	movss xmm0, dword [ebp+0xc]
	movss [esp+0x4], xmm0
	movss xmm0, dword [ebp+0x8]
	movss [esp], xmm0
	call _Z25CL_DrawStretchPicPhysicalffffffffPKfP8Material
_Z19UI_FillRectPhysicalffffPKf_10:
	leave
	ret
	nop


;Initialized global or static variables of ui_atoms:
SECTION .data


;Initialized constant data of ui_atoms:
SECTION .rdata


;Zero initialized global or static variables of ui_atoms:
SECTION .bss


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata
_float_1_00000000:		dd 0x3f800000	; 1
_float_0_00000000:		dd 0x0	; 0
_data16_80000000:		dd 0x80000000, 0x0, 0x0, 0x0	; OWORD

