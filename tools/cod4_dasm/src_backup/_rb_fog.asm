;Imports of rb_fog:
	extern r_fog

;Exports of rb_fog:
	global _Z13R_SetFrameFogP14GfxCmdBufInput


SECTION .text


;R_SetFrameFog(GfxCmdBufInput*)
_Z13R_SetFrameFogP14GfxCmdBufInput:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov esi, [ebp+0x8]
	mov eax, r_fog
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z13R_SetFrameFogP14GfxCmdBufInput_10
	lea edx, [esi+0x290]
	xor eax, eax
	mov [esi+0x290], eax
	mov dword [edx+0x4], 0x3f800000
	mov [edx+0x8], eax
	mov [edx+0xc], eax
	pop ebx
	pop esi
	pop ebp
	ret
_Z13R_SetFrameFogP14GfxCmdBufInput_10:
	mov edx, [esi+0x428]
	lea ebx, [edx+0x11e6a8]
	lea ecx, [edx+0x11e6b0]
	movzx eax, byte [ecx+0x1]
	cvtsi2ss xmm4, eax
	movss xmm1, dword [_float_0_00392157]
	mulss xmm4, xmm1
	movzx eax, byte [edx+0x11e6b0]
	cvtsi2ss xmm3, eax
	mulss xmm3, xmm1
	movzx eax, byte [ecx+0x3]
	cvtsi2ss xmm2, eax
	mulss xmm2, xmm1
	lea edx, [esi+0x2a0]
	movzx eax, byte [ecx+0x2]
	cvtsi2ss xmm0, eax
	mulss xmm0, xmm1
	movss [esi+0x2a0], xmm0
	movss [edx+0x4], xmm4
	movss [edx+0x8], xmm3
	movss [edx+0xc], xmm2
	movss xmm0, dword [ebx+0x10]
	movaps xmm1, xmm0
	mulss xmm1, [ebx+0xc]
	lea eax, [esi+0x290]
	mov dword [esi+0x290], 0x0
	mov dword [eax+0x4], 0x3f800000
	xorps xmm0, [_data16_80000000]
	movss [eax+0x8], xmm0
	movss [eax+0xc], xmm1
	pop ebx
	pop esi
	pop ebp
	ret


;Initialized global or static variables of rb_fog:
SECTION .data


;Initialized constant data of rb_fog:
SECTION .rdata


;Zero initialized global or static variables of rb_fog:
SECTION .bss


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata
_float_0_00392157:		dd 0x3b808081	; 0.00392157
_data16_80000000:		dd 0x80000000, 0x0, 0x0, 0x0	; OWORD

