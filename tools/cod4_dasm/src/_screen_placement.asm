;Imports of screen_placement:
	extern cls

;Exports of screen_placement:
	global ScrPlace_Init
	global ScrPlace_ApplyX
	global ScrPlace_ApplyY
	global ScrPlace_ApplyRect
	global ScrPlace_SetupViewport
	global ScrPlace_SetupFloatViewport
	global ScrPlace_SetupUnsafeViewport
	global scrPlaceView
	global scrPlaceFull
	global scrPlaceFullUnsafe


SECTION .text


;ScrPlace_Init()
ScrPlace_Init:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop


;ScrPlace_ApplyX(ScreenPlacement const*, float, int)
ScrPlace_ApplyX:
	push ebp
	mov ebp, esp
	sub esp, 0x4
	mov edx, [ebp+0x8]
	movss xmm1, dword [ebp+0xc]
	mov eax, [ebp+0x10]
	cmp eax, 0x7
	ja ScrPlace_ApplyX_10
	jmp dword [eax*4+ScrPlace_ApplyX_jumptab_0]
ScrPlace_ApplyX_10:
	mulss xmm1, [edx]
	addss xmm1, [edx+0x40]
ScrPlace_ApplyX_20:
	movss [ebp-0x4], xmm1
	fld dword [ebp-0x4]
	leave
	ret
ScrPlace_ApplyX_30:
	mulss xmm1, [edx]
	addss xmm1, [edx+0x30]
	jmp ScrPlace_ApplyX_20
ScrPlace_ApplyX_80:
	mulss xmm1, [edx]
	movss xmm0, dword [edx+0x30]
	addss xmm0, [edx+0x38]
	mulss xmm0, [_float_0_50000000]
	addss xmm1, xmm0
	jmp ScrPlace_ApplyX_20
ScrPlace_ApplyX_70:
	mulss xmm1, [edx+0x10]
	jmp ScrPlace_ApplyX_20
ScrPlace_ApplyX_60:
	mulss xmm1, [edx+0x8]
	jmp ScrPlace_ApplyX_20
ScrPlace_ApplyX_50:
	mulss xmm1, [edx]
	addss xmm1, [edx+0x38]
	jmp ScrPlace_ApplyX_20
ScrPlace_ApplyX_40:
	mulss xmm1, [edx]
	movss xmm0, dword [_float_0_50000000]
	mulss xmm0, [edx+0x28]
	addss xmm1, xmm0
	jmp ScrPlace_ApplyX_20
	nop
	
	
ScrPlace_ApplyX_jumptab_0:
	dd ScrPlace_ApplyX_10
	dd ScrPlace_ApplyX_30
	dd ScrPlace_ApplyX_40
	dd ScrPlace_ApplyX_50
	dd ScrPlace_ApplyX_60
	dd ScrPlace_ApplyX_20
	dd ScrPlace_ApplyX_70
	dd ScrPlace_ApplyX_80


;ScrPlace_ApplyY(ScreenPlacement const*, float, int)
ScrPlace_ApplyY:
	push ebp
	mov ebp, esp
	sub esp, 0x4
	mov edx, [ebp+0x8]
	movss xmm1, dword [ebp+0xc]
	mov eax, [ebp+0x10]
	cmp eax, 0x7
	ja ScrPlace_ApplyY_10
	jmp dword [eax*4+ScrPlace_ApplyY_jumptab_0]
ScrPlace_ApplyY_10:
	mulss xmm1, [edx+0x4]
ScrPlace_ApplyY_20:
	movss [ebp-0x4], xmm1
	fld dword [ebp-0x4]
	leave
	ret
ScrPlace_ApplyY_30:
	mulss xmm1, [edx+0x4]
	addss xmm1, [edx+0x34]
	jmp ScrPlace_ApplyY_20
ScrPlace_ApplyY_80:
	mulss xmm1, [edx+0x4]
	movss xmm0, dword [edx+0x34]
	addss xmm0, [edx+0x3c]
	mulss xmm0, [_float_0_50000000]
	addss xmm1, xmm0
	jmp ScrPlace_ApplyY_20
ScrPlace_ApplyY_70:
	mulss xmm1, [edx+0x14]
	jmp ScrPlace_ApplyY_20
ScrPlace_ApplyY_60:
	mulss xmm1, [edx+0xc]
	jmp ScrPlace_ApplyY_20
ScrPlace_ApplyY_50:
	mulss xmm1, [edx+0x4]
	addss xmm1, [edx+0x3c]
	jmp ScrPlace_ApplyY_20
ScrPlace_ApplyY_40:
	mulss xmm1, [edx+0x4]
	movss xmm0, dword [_float_0_50000000]
	mulss xmm0, [edx+0x2c]
	addss xmm1, xmm0
	jmp ScrPlace_ApplyY_20
	nop
	
	
ScrPlace_ApplyY_jumptab_0:
	dd ScrPlace_ApplyY_10
	dd ScrPlace_ApplyY_30
	dd ScrPlace_ApplyY_40
	dd ScrPlace_ApplyY_50
	dd ScrPlace_ApplyY_60
	dd ScrPlace_ApplyY_20
	dd ScrPlace_ApplyY_70
	dd ScrPlace_ApplyY_80


;ScrPlace_ApplyRect(ScreenPlacement const*, float*, float*, float*, float*, int, int)
ScrPlace_ApplyRect:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	mov edx, [ebp+0x8]
	mov ecx, [ebp+0xc]
	mov esi, [ebp+0x10]
	mov ebx, [ebp+0x14]
	mov edi, [ebp+0x18]
	cmp dword [ebp+0x1c], 0x7
	ja ScrPlace_ApplyRect_10
	mov eax, [ebp+0x1c]
	jmp dword [eax*4+ScrPlace_ApplyRect_jumptab_0]
ScrPlace_ApplyRect_110:
	movss xmm0, dword [ecx]
	mulss xmm0, [edx]
	movss xmm1, dword [edx+0x30]
	addss xmm1, [edx+0x38]
	mulss xmm1, [_float_0_50000000]
ScrPlace_ApplyRect_40:
	addss xmm0, xmm1
	movss [ecx], xmm0
	movss xmm0, dword [ebx]
	mulss xmm0, [edx]
	movss [ebx], xmm0
ScrPlace_ApplyRect_30:
	cmp dword [ebp+0x20], 0x7
	ja ScrPlace_ApplyRect_20
	mov eax, [ebp+0x20]
	jmp dword [eax*4+ScrPlace_ApplyRect_jumptab_1]
ScrPlace_ApplyRect_180:
	movss xmm0, dword [esi]
	mulss xmm0, [edx+0x4]
	movss xmm1, dword [edx+0x34]
	addss xmm1, [edx+0x3c]
	mulss xmm1, [_float_0_50000000]
ScrPlace_ApplyRect_50:
	addss xmm0, xmm1
	movss [esi], xmm0
	movss xmm0, dword [edi]
	mulss xmm0, [edx+0x4]
	movss [edi], xmm0
ScrPlace_ApplyRect_160:
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ScrPlace_ApplyRect_20:
	movss xmm0, dword [esi]
	mulss xmm0, [edx+0x4]
	movss [esi], xmm0
	movss xmm0, dword [edi]
	mulss xmm0, [edx+0x4]
	movss [edi], xmm0
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ScrPlace_ApplyRect_10:
	movss xmm0, dword [ecx]
	mulss xmm0, [edx]
	addss xmm0, [edx+0x40]
	movss [ecx], xmm0
	movss xmm0, dword [ebx]
	mulss xmm0, [edx]
	movss [ebx], xmm0
	jmp ScrPlace_ApplyRect_30
ScrPlace_ApplyRect_120:
	movss xmm0, dword [esi]
	mulss xmm0, [edx+0x4]
	addss xmm0, [edx+0x34]
	movss [esi], xmm0
	movss xmm0, dword [edi]
	mulss xmm0, [edx+0x4]
	movss [edi], xmm0
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ScrPlace_ApplyRect_100:
	movss xmm0, dword [ecx]
	mulss xmm0, [edx+0x10]
	movss [ecx], xmm0
	movss xmm0, dword [ebx]
	mulss xmm0, [edx+0x10]
	movss [ebx], xmm0
	jmp ScrPlace_ApplyRect_30
ScrPlace_ApplyRect_90:
	movss xmm0, dword [ecx]
	mulss xmm0, [edx+0x8]
	movss [ecx], xmm0
	movss xmm0, dword [ebx]
	mulss xmm0, [edx+0x8]
	movss [ebx], xmm0
	jmp ScrPlace_ApplyRect_30
ScrPlace_ApplyRect_80:
	movss xmm0, dword [ecx]
	mulss xmm0, [edx]
	addss xmm0, [edx+0x38]
	movss [ecx], xmm0
	movss xmm0, dword [ebx]
	mulss xmm0, [edx]
	movss [ebx], xmm0
	jmp ScrPlace_ApplyRect_30
ScrPlace_ApplyRect_70:
	movss xmm0, dword [ecx]
	mulss xmm0, [edx]
	movss xmm1, dword [_float_0_50000000]
	mulss xmm1, [edx+0x28]
	jmp ScrPlace_ApplyRect_40
ScrPlace_ApplyRect_60:
	movss xmm0, dword [ecx]
	mulss xmm0, [edx]
	addss xmm0, [edx+0x30]
	movss [ecx], xmm0
	movss xmm0, dword [ebx]
	mulss xmm0, [edx]
	movss [ebx], xmm0
	jmp ScrPlace_ApplyRect_30
ScrPlace_ApplyRect_170:
	movss xmm0, dword [esi]
	mulss xmm0, [edx+0x14]
	movss [esi], xmm0
	movss xmm0, dword [edi]
	mulss xmm0, [edx+0x14]
	movss [edi], xmm0
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ScrPlace_ApplyRect_150:
	movss xmm0, dword [esi]
	mulss xmm0, [edx+0xc]
	movss [esi], xmm0
	movss xmm0, dword [edi]
	mulss xmm0, [edx+0xc]
	movss [edi], xmm0
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ScrPlace_ApplyRect_140:
	movss xmm0, dword [esi]
	mulss xmm0, [edx+0x4]
	addss xmm0, [edx+0x3c]
	movss [esi], xmm0
	movss xmm0, dword [edi]
	mulss xmm0, [edx+0x4]
	movss [edi], xmm0
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ScrPlace_ApplyRect_130:
	movss xmm0, dword [esi]
	mulss xmm0, [edx+0x4]
	movss xmm1, dword [_float_0_50000000]
	mulss xmm1, [edx+0x2c]
	jmp ScrPlace_ApplyRect_50
	
	
ScrPlace_ApplyRect_jumptab_0:
	dd ScrPlace_ApplyRect_10
	dd ScrPlace_ApplyRect_60
	dd ScrPlace_ApplyRect_70
	dd ScrPlace_ApplyRect_80
	dd ScrPlace_ApplyRect_90
	dd ScrPlace_ApplyRect_30
	dd ScrPlace_ApplyRect_100
	dd ScrPlace_ApplyRect_110
ScrPlace_ApplyRect_jumptab_1:
	dd ScrPlace_ApplyRect_20
	dd ScrPlace_ApplyRect_120
	dd ScrPlace_ApplyRect_130
	dd ScrPlace_ApplyRect_140
	dd ScrPlace_ApplyRect_150
	dd ScrPlace_ApplyRect_160
	dd ScrPlace_ApplyRect_170
	dd ScrPlace_ApplyRect_180


;ScrPlace_SetupViewport(ScreenPlacement*, int, int, int, int)
ScrPlace_SetupViewport:
	push ebp
	mov ebp, esp
	cvtsi2ss xmm0, dword [ebp+0x18]
	movss [ebp+0x18], xmm0
	cvtsi2ss xmm0, dword [ebp+0x14]
	movss [ebp+0x14], xmm0
	cvtsi2ss xmm0, dword [ebp+0x10]
	movss [ebp+0x10], xmm0
	cvtsi2ss xmm0, dword [ebp+0xc]
	movss [ebp+0xc], xmm0
	pop ebp
	jmp ScrPlace_SetupFloatViewport
	add [eax], al


;ScrPlace_SetupFloatViewport(ScreenPlacement*, float, float, float, float)
ScrPlace_SetupFloatViewport:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x14
	mov ecx, [ebp+0x8]
	movss xmm7, dword [ebp+0x14]
	movss [ecx+0x28], xmm7
	movss xmm0, dword [ebp+0x18]
	movss [ecx+0x2c], xmm0
	mulss xmm0, [_float_1_33333337]
	mov ebx, cls
	divss xmm0, dword [ebx+0x2dc01c]
	movaps xmm5, xmm7
	minss xmm5, xmm0
	movss [ebp-0x1c], xmm5
	movaps xmm0, xmm7
	subss xmm0, xmm5
	movss [ebp-0x20], xmm0
	movaps xmm0, xmm7
	divss xmm0, xmm5
	movss [ebp-0x18], xmm0
	lea eax, [ecx+0x20]
	mov [ebp-0x14], eax
	lea eax, [ecx+0x18]
	mov [ebp-0x10], eax
	lea edi, [ecx+0x38]
	lea esi, [ecx+0x30]
	mov edx, [ebx+0x2dc004]
	test edx, edx
	js ScrPlace_SetupFloatViewport_10
	cvtsi2ss xmm2, edx
	pxor xmm3, xmm3
	mulss xmm3, xmm2
	mov edx, [ebx+0x2dc008]
	test edx, edx
	js ScrPlace_SetupFloatViewport_20
ScrPlace_SetupFloatViewport_30:
	cvtsi2ss xmm6, edx
ScrPlace_SetupFloatViewport_40:
	pxor xmm1, xmm1
	mulss xmm1, xmm6
	subss xmm6, xmm1
	subss xmm2, xmm3
	movss xmm0, dword [ebp+0xc]
	subss xmm0, xmm3
	pxor xmm4, xmm4
	cmpss xmm4, xmm0, 0x6
	andps xmm3, xmm4
	movss xmm0, dword [ebp+0xc]
	andnps xmm4, xmm0
	orps xmm4, xmm3
	movss xmm0, dword [ebp+0x10]
	subss xmm0, xmm1
	pxor xmm3, xmm3
	cmpss xmm3, xmm0, 0x6
	andps xmm1, xmm3
	movss xmm5, dword [ebp+0x10]
	andnps xmm3, xmm5
	orps xmm3, xmm1
	movss xmm0, dword [ebp+0xc]
	addss xmm0, xmm7
	movaps xmm1, xmm2
	subss xmm1, xmm0
	pxor xmm5, xmm5
	cmpss xmm5, xmm1, 0x2
	movaps xmm1, xmm5
	andps xmm0, xmm5
	andnps xmm1, xmm2
	orps xmm1, xmm0
	movss xmm2, dword [ebp+0x18]
	addss xmm2, [ebp+0x10]
	movaps xmm5, xmm6
	subss xmm5, xmm2
	pxor xmm0, xmm0
	cmpss xmm0, xmm5, 0x2
	andps xmm2, xmm0
	andnps xmm0, xmm6
	orps xmm0, xmm2
	subss xmm4, [ebp+0xc]
	movss [esi], xmm4
	subss xmm3, [ebp+0x10]
	movss [esi+0x4], xmm3
	subss xmm1, [ebp+0xc]
	movss [edi], xmm1
	subss xmm0, [ebp+0x10]
	movss [edi+0x4], xmm0
	movss xmm1, dword [_float_640_00000000]
	movaps xmm2, xmm1
	divss xmm2, xmm7
	movss xmm0, dword [ebp-0x18]
	mulss xmm0, [esi]
	mulss xmm0, xmm2
	mov eax, [ebp-0x10]
	movss [eax], xmm0
	movss xmm4, dword [_float_480_00000000]
	movaps xmm3, xmm4
	divss xmm3, dword [ebp+0x18]
	movaps xmm0, xmm3
	mulss xmm0, [esi+0x4]
	movss [eax+0x4], xmm0
	movss xmm0, dword [ebp-0x18]
	mulss xmm0, [edi]
	mulss xmm2, xmm0
	mov eax, [ebp-0x14]
	movss [eax], xmm2
	movaps xmm0, xmm3
	mulss xmm0, [edi+0x4]
	movss [eax+0x4], xmm0
	movss xmm2, dword [ebp+0x18]
	divss xmm2, xmm4
	movss xmm0, dword [ebp-0x1c]
	divss xmm0, xmm1
	movss [ecx], xmm0
	movss [ecx+0x4], xmm2
	divss xmm7, xmm1
	movss [ecx+0x8], xmm7
	movss [ecx+0xc], xmm2
	divss xmm1, dword [ebp-0x1c]
	movss [ecx+0x10], xmm1
	movss [ecx+0x14], xmm3
	movss xmm0, dword [ebp-0x20]
	mulss xmm0, [_float_0_50000000]
	movss [ecx+0x40], xmm0
	add esp, 0x14
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ScrPlace_SetupFloatViewport_10:
	mov eax, edx
	shr eax, 1
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm2, eax
	addss xmm2, xmm2
	pxor xmm3, xmm3
	mulss xmm3, xmm2
	mov edx, [ebx+0x2dc008]
	test edx, edx
	jns ScrPlace_SetupFloatViewport_30
ScrPlace_SetupFloatViewport_20:
	mov eax, edx
	shr eax, 1
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm6, eax
	addss xmm6, xmm6
	jmp ScrPlace_SetupFloatViewport_40


;ScrPlace_SetupUnsafeViewport(ScreenPlacement*, int, int, int, int)
ScrPlace_SetupUnsafeViewport:
	push ebp
	mov ebp, esp
	cvtsi2ss xmm0, dword [ebp+0x18]
	movss [ebp+0x18], xmm0
	cvtsi2ss xmm0, dword [ebp+0x14]
	movss [ebp+0x14], xmm0
	cvtsi2ss xmm0, dword [ebp+0x10]
	movss [ebp+0x10], xmm0
	cvtsi2ss xmm0, dword [ebp+0xc]
	movss [ebp+0xc], xmm0
	pop ebp
	jmp ScrPlace_SetupFloatViewport
	nop


;Initialized global or static variables of screen_placement:
SECTION .data


;Initialized constant data of screen_placement:
SECTION .rdata


;Zero initialized global or static variables of screen_placement:
SECTION .bss
scrPlaceView: resb 0x60
scrPlaceFull: resb 0x60
scrPlaceFullUnsafe: resb 0xc0


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata
_float_0_50000000:		dd 0x3f000000	; 0.5
_float_1_33333337:		dd 0x3faaaaab	; 1.33333
_float_640_00000000:		dd 0x44200000	; 640
_float_480_00000000:		dd 0x43f00000	; 480

