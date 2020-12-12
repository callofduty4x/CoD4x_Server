;Imports of cm_tracebox:

;Exports of cm_tracebox:
	global CM_TraceSphere


SECTION .text


;CM_TraceSphere(TraceExtents const*, float const*, float, float)
CM_TraceSphere:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	movss xmm2, dword [eax]
	movss xmm7, dword [edx]
	subss xmm7, xmm2
	movss xmm1, dword [eax+0x4]
	movss xmm0, dword [edx+0x4]
	subss xmm0, xmm1
	movss [ebp-0xc], xmm0
	movss xmm0, dword [eax+0x8]
	movss xmm3, dword [edx+0x8]
	subss xmm3, xmm0
	lea edx, [eax+0xc]
	movss xmm4, dword [eax+0xc]
	subss xmm4, xmm2
	movss xmm5, dword [edx+0x4]
	subss xmm5, xmm1
	movss xmm6, dword [edx+0x8]
	subss xmm6, xmm0
	movaps xmm0, xmm4
	mulss xmm0, xmm4
	movaps xmm1, xmm5
	mulss xmm1, xmm5
	addss xmm0, xmm1
	movaps xmm1, xmm6
	mulss xmm1, xmm6
	addss xmm0, xmm1
	movaps xmm1, xmm0
	xorps xmm1, [_data16_80000000]
	pxor xmm2, xmm2
	cmpss xmm2, xmm1, 0x6
	andps xmm0, xmm2
	movss xmm1, dword [_float_1_00000000]
	andnps xmm2, xmm1
	orps xmm2, xmm0
	movaps xmm0, xmm7
	mulss xmm0, xmm4
	movss xmm1, dword [ebp-0xc]
	mulss xmm1, xmm5
	addss xmm0, xmm1
	movaps xmm1, xmm3
	mulss xmm1, xmm6
	addss xmm0, xmm1
	divss xmm0, xmm2
	movaps xmm1, xmm0
	subss xmm1, [ebp+0x14]
	pxor xmm2, xmm2
	cmpss xmm2, xmm1, 0x2
	movaps xmm1, xmm2
	movss xmm2, dword [ebp+0x14]
	andps xmm2, xmm1
	andnps xmm1, xmm0
	orps xmm1, xmm2
	movss [ebp+0x14], xmm1
	pxor xmm1, xmm1
	subss xmm1, xmm0
	pxor xmm2, xmm2
	ucomiss xmm1, xmm2
	jb CM_TraceSphere_10
	movss xmm2, dword [_float__0_00000000]
CM_TraceSphere_20:
	mulss xmm4, xmm2
	addss xmm7, xmm4
	mulss xmm5, xmm2
	addss xmm5, [ebp-0xc]
	movss [ebp-0xc], xmm5
	mulss xmm6, xmm2
	addss xmm3, xmm6
	movss xmm0, dword [ebp+0x10]
	mulss xmm0, xmm0
	mulss xmm7, xmm7
	movaps xmm1, xmm5
	mulss xmm1, xmm5
	addss xmm7, xmm1
	mulss xmm3, xmm3
	addss xmm7, xmm3
	xor eax, eax
	ucomiss xmm7, xmm0
	setae al
	leave
	ret
CM_TraceSphere_10:
	movss xmm2, dword [ebp+0x14]
	xorps xmm2, [_data16_80000000]
	jmp CM_TraceSphere_20
	add [eax], al



;Zero initialized global or static variables of cm_tracebox:
SECTION .bss


;Initialized global or static variables of cm_tracebox:
SECTION .data


;Initialized constant data of cm_tracebox:
SECTION .rdata


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata
_float__1_00000000:		dd 0xbf800000	; -1
_float_1_00000000:		dd 0x3f800000	; 1
_float__0_00000000:		dd 0x80000000	; -0

align   16,db 0
_data16_80000000:		dd 0x80000000, 0x0, 0x0, 0x0	; DQWORD
