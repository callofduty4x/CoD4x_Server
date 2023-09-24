;Imports of r_outdoor:
	extern Hunk_AllocateTempMemory
	extern vec3_origin
	extern _Z11CM_BoxTraceP7trace_tPKfS2_S2_S2_ji
	extern floorf
	extern _Z16Image_Generate2DP8GfxImagePhii10_D3DFORMAT
	extern Hunk_FreeTempMemory
	extern _Z16MatrixIdentity44PA4_f
	extern _Z14Image_RegisterPKchi

;Exports of r_outdoor:
	global outdoorGlob
	global outdoorMapSize
	global _Z22R_GenerateOutdoorImageP8GfxImage
	global _Z22R_RegisterOutdoorImageP8GfxWorldPKfS2_


SECTION .text


;R_GenerateOutdoorImage(GfxImage*)
_Z22R_GenerateOutdoorImageP8GfxImage:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xbc
	mov dword [esp], 0x40000
	call Hunk_AllocateTempMemory
	mov [ebp-0x6c], eax
	mov [outdoorGlob+0x3c], eax
	mov dword [ebp-0x70], 0x0
	lea esi, [ebp-0x5c]
_Z22R_GenerateOutdoorImageP8GfxImage_50:
	cvtsi2ss xmm3, dword [ebp-0x70]
	movss xmm4, dword [_float_0_50000000]
	addss xmm3, xmm4
	subss xmm3, [outdoorGlob+0x34]
	mulss xmm3, [outdoorGlob+0x28]
	xor ebx, ebx
	jmp _Z22R_GenerateOutdoorImageP8GfxImage_10
_Z22R_GenerateOutdoorImageP8GfxImage_30:
	mov edx, 0xffffffff
	cmp eax, 0xff
	cmovle edx, eax
	mov eax, [ebp-0x6c]
	mov [eax+ebx], dl
	add ebx, 0x1
	cmp ebx, 0x200
	jz _Z22R_GenerateOutdoorImageP8GfxImage_20
_Z22R_GenerateOutdoorImageP8GfxImage_40:
	movss xmm4, dword [_float_0_50000000]
_Z22R_GenerateOutdoorImageP8GfxImage_10:
	movss xmm2, dword [outdoorGlob+0x14]
	addss xmm2, [_float_1_00000000]
	movss xmm1, dword [outdoorGlob+0x8]
	subss xmm1, [_float_1_00000000]
	cvtsi2ss xmm0, ebx
	addss xmm0, xmm4
	subss xmm0, [outdoorGlob+0x30]
	mulss xmm0, [outdoorGlob+0x24]
	movss [ebp-0x24], xmm0
	movss [ebp-0x20], xmm3
	movss [ebp-0x1c], xmm2
	movss [ebp-0x30], xmm0
	movss [ebp-0x2c], xmm3
	movss [ebp-0x28], xmm1
	cld
	mov ecx, 0xb
	mov edi, esi
	xor eax, eax
	rep stosd
	mov dword [ebp-0x5c], 0x3f800000
	mov dword [esp+0x18], 0x2001
	mov dword [esp+0x14], 0x0
	mov eax, vec3_origin
	mov [esp+0x10], eax
	mov [esp+0xc], eax
	lea eax, [ebp-0x30]
	mov [esp+0x8], eax
	lea eax, [ebp-0x24]
	mov [esp+0x4], eax
	mov [esp], esi
	movss [ebp-0x88], xmm1
	movss [ebp-0x98], xmm2
	movss [ebp-0xa8], xmm3
	call _Z11CM_BoxTraceP7trace_tPKfS2_S2_S2_ji
	movss xmm1, dword [ebp-0x88]
	movss xmm2, dword [ebp-0x98]
	subss xmm1, xmm2
	mulss xmm1, [ebp-0x5c]
	addss xmm2, xmm1
	mulss xmm2, [outdoorGlob+0x20]
	addss xmm2, [outdoorGlob+0x38]
	movss [esp], xmm2
	call floorf
	fstp dword [ebp-0x74]
	cvttss2si eax, [ebp-0x74]
	test eax, eax
	movss xmm3, dword [ebp-0xa8]
	jns _Z22R_GenerateOutdoorImageP8GfxImage_30
	xor edx, edx
	mov eax, [ebp-0x6c]
	mov [eax+ebx], dl
	add ebx, 0x1
	cmp ebx, 0x200
	jnz _Z22R_GenerateOutdoorImageP8GfxImage_40
_Z22R_GenerateOutdoorImageP8GfxImage_20:
	add eax, 0x200
	mov [ebp-0x6c], eax
	add dword [ebp-0x70], 0x1
	cmp dword [ebp-0x70], 0x200
	jnz _Z22R_GenerateOutdoorImageP8GfxImage_50
	mov dword [esp+0x10], 0x32
	mov dword [esp+0xc], 0x200
	mov dword [esp+0x8], 0x200
	mov eax, [outdoorGlob+0x3c]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z16Image_Generate2DP8GfxImagePhii10_D3DFORMAT
	mov eax, [outdoorGlob+0x3c]
	mov [esp], eax
	call Hunk_FreeTempMemory
	add esp, 0xbc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;R_RegisterOutdoorImage(GfxWorld*, float const*, float const*)
_Z22R_RegisterOutdoorImageP8GfxWorldPKfS2_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov ebx, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov ecx, [ebp+0x10]
	mov eax, [edx]
	mov [outdoorGlob], eax
	mov eax, [edx+0x4]
	mov [outdoorGlob+0x4], eax
	mov eax, [edx+0x8]
	mov [outdoorGlob+0x8], eax
	mov eax, [ecx]
	mov [outdoorGlob+0xc], eax
	mov eax, [ecx+0x4]
	mov [outdoorGlob+0x10], eax
	mov eax, [ecx+0x8]
	mov [outdoorGlob+0x14], eax
	mov eax, outdoorGlob
	movss xmm3, dword [_float_1_00000000]
	movss xmm5, dword [_float_0_50000000]
	movss xmm2, dword [_float_131072_00000000]
	pxor xmm4, xmm4
_Z22R_RegisterOutdoorImageP8GfxWorldPKfS2__30:
	movss xmm1, dword [eax]
	ucomiss xmm1, xmm2
	jnz _Z22R_RegisterOutdoorImageP8GfxWorldPKfS2__10
	jp _Z22R_RegisterOutdoorImageP8GfxWorldPKfS2__10
	movss [eax], xmm4
	movss [eax+0xc], xmm4
	movss xmm1, dword [eax]
_Z22R_RegisterOutdoorImageP8GfxWorldPKfS2__10:
	movss xmm0, dword [eax+0xc]
	subss xmm0, xmm1
	ucomiss xmm3, xmm0
	ja _Z22R_RegisterOutdoorImageP8GfxWorldPKfS2__20
_Z22R_RegisterOutdoorImageP8GfxWorldPKfS2__60:
	add eax, 0x4
	cmp eax, outdoorGlob+0xc
	jnz _Z22R_RegisterOutdoorImageP8GfxWorldPKfS2__30
	mov ecx, outdoorMapSize
	mov edx, outdoorGlob+0xc
	movss xmm2, dword [outdoorMapSize+0x10]
_Z22R_RegisterOutdoorImageP8GfxWorldPKfS2__40:
	mov eax, [ecx]
	sub eax, 0x1
	cvtsi2ss xmm1, eax
	movss xmm0, dword [edx]
	subss xmm0, [edx-0xc]
	divss xmm1, xmm0
	movss [edx+0xc], xmm1
	movaps xmm0, xmm3
	divss xmm0, xmm1
	movss [edx+0x18], xmm0
	movss xmm0, dword [edx-0xc]
	xorps xmm0, xmm2
	mulss xmm0, xmm1
	movss [edx+0x24], xmm0
	add ecx, 0x4
	add edx, 0x4
	cmp ecx, outdoorMapSize+0xc
	jnz _Z22R_RegisterOutdoorImageP8GfxWorldPKfS2__40
	mov ecx, 0x1
	mov edx, outdoorGlob+0xc
	lea edi, [ebp-0x24]
	lea esi, [ebp-0x30]
_Z22R_RegisterOutdoorImageP8GfxWorldPKfS2__50:
	movss xmm1, dword [edx-0xc]
	movss xmm0, dword [edx]
	subss xmm0, xmm1
	movaps xmm4, xmm3
	divss xmm4, xmm0
	lea eax, [ecx*4]
	movss [edi+eax-0x4], xmm4
	xorps xmm1, xmm2
	mulss xmm1, xmm4
	movss [esi+eax-0x4], xmm1
	add ecx, 0x1
	add edx, 0x4
	cmp ecx, 0x4
	jnz _Z22R_RegisterOutdoorImageP8GfxWorldPKfS2__50
	lea eax, [ebx+0x1dc]
	mov [esp], eax
	call _Z16MatrixIdentity44PA4_f
	mov eax, [ebp-0x24]
	mov [ebx+0x1dc], eax
	mov eax, [ebp-0x20]
	mov [ebx+0x1f0], eax
	mov eax, [ebp-0x1c]
	mov [ebx+0x204], eax
	mov eax, [ebp-0x30]
	mov [ebx+0x20c], eax
	mov eax, [ebp-0x2c]
	mov [ebx+0x210], eax
	mov eax, [ebp-0x28]
	mov [ebx+0x214], eax
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_outdoor
	call _Z14Image_RegisterPKchi
	mov [ebx+0x21c], eax
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z22R_RegisterOutdoorImageP8GfxWorldPKfS2__20:
	subss xmm1, xmm5
	movss [eax], xmm1
	movss xmm0, dword [eax+0xc]
	addss xmm0, xmm5
	movss [eax+0xc], xmm0
	jmp _Z22R_RegisterOutdoorImageP8GfxWorldPKfS2__60
	nop


;Initialized global or static variables of r_outdoor:
SECTION .data


;Initialized constant data of r_outdoor:
SECTION .rdata
outdoorMapSize: dd 0x200, 0x200, 0x100, 0x0, 0x80000000, 0x0, 0x0, 0x0


;Zero initialized global or static variables of r_outdoor:
SECTION .bss
outdoorGlob: resb 0x80


;All cstrings:
SECTION .rdata
_cstring_outdoor:		db "$outdoor",0



;All constant floats and doubles:
SECTION .rdata
_float_0_50000000:		dd 0x3f000000	; 0.5
_float_1_00000000:		dd 0x3f800000	; 1
_float_131072_00000000:		dd 0x48000000	; 131072

