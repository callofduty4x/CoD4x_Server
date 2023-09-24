;Imports of lsp:
	extern acosf

;Exports of lsp:
	global _Z10lpc_to_lspPfiS_ifPc
	global _Z10lsp_to_lpcPfS_iPc
	global _Z15lsp_interpolatePfS_S_iii
	global _Z18lsp_enforce_marginPfif


SECTION .text


;lpc_to_lsp(float*, int, float*, int, float, char*)
_Z10lpc_to_lspPfiS_ifPc:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x7c
	mov edx, [ebp+0x1c]
	mov eax, [ebp+0xc]
	shr eax, 0x1f
	mov ecx, [ebp+0xc]
	lea edi, [eax+ecx]
	sar edi, 1
	lea ebx, [edi*4]
	mov ecx, 0x4
	mov eax, ecx
	sub eax, edx
	and eax, 0x3
	add edx, eax
	lea edx, [edx+ebx+0x4]
	mov eax, ebx
	neg eax
	lea esi, [edx+eax]
	mov [ebp-0x3c], esi
	sub esi, 0x4
	mov [ebp-0x34], esi
	sub ecx, edx
	and ecx, 0x3
	add edx, ecx
	lea edx, [ebx+edx+0x4]
	mov [ebp-0x1c], edx
	add eax, edx
	mov [ebp-0x6c], eax
	sub eax, 0x4
	mov [ebp-0x30], eax
	mov eax, [ebp-0x6c]
	mov dword [eax-0x4], 0x3f800000
	mov edx, [ebp-0x3c]
	mov dword [edx-0x4], 0x3f800000
	test edi, edi
	jle _Z10lpc_to_lspPfiS_ifPc_10
	mov esi, [ebp+0xc]
	mov eax, [ebp+0x8]
	lea ecx, [eax+esi*4]
	xor ebx, ebx
	mov esi, eax
	jmp _Z10lpc_to_lspPfiS_ifPc_20
_Z10lpc_to_lspPfiS_ifPc_30:
	mov esi, [ebp+0x8]
_Z10lpc_to_lspPfiS_ifPc_20:
	lea eax, [ebx*4]
	lea edx, [eax+esi]
	movss xmm0, dword [edx]
	addss xmm0, [ecx-0x4]
	mov esi, [ebp-0x30]
	subss xmm0, [eax+esi]
	mov esi, [ebp-0x6c]
	movss [eax+esi], xmm0
	movss xmm0, dword [edx]
	subss xmm0, [ecx-0x4]
	mov edx, [ebp-0x34]
	addss xmm0, [eax+edx]
	mov esi, [ebp-0x3c]
	movss [eax+esi], xmm0
	add ebx, 0x1
	sub ecx, 0x4
	cmp edi, ebx
	jnz _Z10lpc_to_lspPfiS_ifPc_30
	mov edx, [ebp-0x30]
	mov eax, [ebp-0x34]
	xor ecx, ecx
_Z10lpc_to_lspPfiS_ifPc_40:
	movss xmm0, dword [edx]
	addss xmm0, xmm0
	movss [edx], xmm0
	movss xmm0, dword [eax]
	addss xmm0, xmm0
	movss [eax], xmm0
	add edx, 0x4
	add eax, 0x4
	add ecx, 0x1
	cmp edi, ecx
	jnz _Z10lpc_to_lspPfiS_ifPc_40
_Z10lpc_to_lspPfiS_ifPc_10:
	mov ecx, [ebp+0xc]
	test ecx, ecx
	jle _Z10lpc_to_lspPfiS_ifPc_50
	mov esi, [ebp+0xc]
	sar esi, 1
	lea eax, [esi*4]
	mov [ebp-0x24], eax
	mov eax, [ebp-0x1c]
	neg eax
	and eax, 0x3
	mov edx, [ebp-0x1c]
	lea eax, [edx+eax+0x4]
	mov [ebp-0x40], eax
	sub eax, 0x4
	mov [ebp-0x20], eax
	pxor xmm4, xmm4
	movaps xmm5, xmm4
	movss xmm6, dword [_float_1_00000000]
	mov dword [ebp-0x38], 0x0
	mov dword [ebp-0x2c], 0x0
	cvtss2sd xmm0, [ebp+0x18]
	movsd [ebp-0x48], xmm0
	mov edx, eax
_Z10lpc_to_lspPfiS_ifPc_210:
	test byte [ebp-0x38], 0x1
	mov eax, [ebp-0x34]
	cmovz eax, [ebp-0x30]
	mov dword [edx], 0x3f800000
	mov ecx, [ebp-0x40]
	movss [ecx], xmm6
	add eax, [ebp-0x24]
	lea edx, [eax-0x4]
	mov [ebp-0x28], edx
	movaps xmm3, xmm6
	mulss xmm3, [eax-0x4]
	addss xmm3, [eax]
	movaps xmm1, xmm6
	addss xmm1, xmm6
	cmp esi, 0x1
	jle _Z10lpc_to_lspPfiS_ifPc_60
	mov ecx, eax
	mov ebx, 0x2
	mov edx, [ebp-0x20]
	add edx, 0x8
_Z10lpc_to_lspPfiS_ifPc_70:
	movaps xmm0, xmm1
	mulss xmm0, [edx-0x4]
	subss xmm0, [edx-0x8]
	movss [edx], xmm0
	mulss xmm0, [ecx-0x8]
	addss xmm3, xmm0
	add ebx, 0x1
	add edx, 0x4
	sub ecx, 0x4
	cmp ebx, esi
	jle _Z10lpc_to_lspPfiS_ifPc_70
_Z10lpc_to_lspPfiS_ifPc_60:
	ucomiss xmm4, [_float__1_00000000]
	jb _Z10lpc_to_lspPfiS_ifPc_80
	movss xmm7, dword [_data16_7fffffff]
_Z10lpc_to_lspPfiS_ifPc_140:
	cvtss2sd xmm0, xmm6
	movapd xmm1, xmm0
	mulsd xmm1, [_double__0_90000000]
	mulsd xmm0, xmm1
	addsd xmm0, [_double_1_00000000]
	mulsd xmm0, [ebp-0x48]
	cvtsd2ss xmm1, xmm0
	movaps xmm0, xmm3
	andps xmm0, xmm7
	cvtss2sd xmm0, xmm0
	movsd xmm2, qword [_double_0_20000000]
	ucomisd xmm2, xmm0
	jbe _Z10lpc_to_lspPfiS_ifPc_90
	mulss xmm1, [_float_0_50000000]
_Z10lpc_to_lspPfiS_ifPc_90:
	movaps xmm4, xmm6
	subss xmm4, xmm1
	mov edx, [ebp-0x20]
	mov dword [edx], 0x3f800000
	mov ecx, [ebp-0x40]
	movss [ecx], xmm4
	movaps xmm1, xmm4
	mov edx, [ebp-0x28]
	mulss xmm1, [edx]
	addss xmm1, [eax]
	movaps xmm2, xmm4
	addss xmm2, xmm4
	cmp esi, 0x1
	jle _Z10lpc_to_lspPfiS_ifPc_100
	mov ecx, eax
	mov ebx, 0x2
	mov edx, [ebp-0x20]
	add edx, 0x8
_Z10lpc_to_lspPfiS_ifPc_110:
	movaps xmm0, xmm2
	mulss xmm0, [edx-0x4]
	subss xmm0, [edx-0x8]
	movss [edx], xmm0
	mulss xmm0, [ecx-0x8]
	addss xmm1, xmm0
	add ebx, 0x1
	add edx, 0x4
	sub ecx, 0x4
	cmp ebx, esi
	jle _Z10lpc_to_lspPfiS_ifPc_110
_Z10lpc_to_lspPfiS_ifPc_100:
	movaps xmm0, xmm1
	mulss xmm0, xmm3
	pxor xmm2, xmm2
	ucomiss xmm2, xmm0
	ja _Z10lpc_to_lspPfiS_ifPc_120
	ucomiss xmm4, [_float__1_00000000]
	jb _Z10lpc_to_lspPfiS_ifPc_130
	movaps xmm6, xmm4
	movaps xmm3, xmm1
	jmp _Z10lpc_to_lspPfiS_ifPc_140
_Z10lpc_to_lspPfiS_ifPc_120:
	add dword [ebp-0x2c], 0x1
	mov edx, [ebp+0x14]
	test edx, edx
	js _Z10lpc_to_lspPfiS_ifPc_150
	xor edi, edi
	movss xmm7, dword [_float_0_50000000]
_Z10lpc_to_lspPfiS_ifPc_190:
	movaps xmm5, xmm6
	addss xmm5, xmm4
	mulss xmm5, xmm7
	mov edx, [ebp-0x20]
	mov dword [edx], 0x3f800000
	mov ecx, [ebp-0x40]
	movss [ecx], xmm5
	movaps xmm1, xmm5
	mov edx, [ebp-0x28]
	mulss xmm1, [edx]
	addss xmm1, [eax]
	movaps xmm2, xmm5
	addss xmm2, xmm5
	cmp esi, 0x1
	jle _Z10lpc_to_lspPfiS_ifPc_160
	mov ecx, eax
	mov ebx, 0x2
	mov edx, [ebp-0x20]
	add edx, 0x8
_Z10lpc_to_lspPfiS_ifPc_170:
	movaps xmm0, xmm2
	mulss xmm0, [edx-0x4]
	subss xmm0, [edx-0x8]
	movss [edx], xmm0
	mulss xmm0, [ecx-0x8]
	addss xmm1, xmm0
	add ebx, 0x1
	add edx, 0x4
	sub ecx, 0x4
	cmp ebx, esi
	jle _Z10lpc_to_lspPfiS_ifPc_170
_Z10lpc_to_lspPfiS_ifPc_160:
	movaps xmm0, xmm1
	mulss xmm0, xmm3
	pxor xmm2, xmm2
	ucomiss xmm2, xmm0
	ja _Z10lpc_to_lspPfiS_ifPc_180
	movaps xmm6, xmm5
	movaps xmm3, xmm1
_Z10lpc_to_lspPfiS_ifPc_220:
	add edi, 0x1
	cmp [ebp+0x14], edi
	jge _Z10lpc_to_lspPfiS_ifPc_190
_Z10lpc_to_lspPfiS_ifPc_150:
	movss [esp], xmm5
	movss [ebp-0x58], xmm4
	movss [ebp-0x68], xmm5
	call acosf
	mov eax, [ebp-0x38]
	mov edx, [ebp+0x10]
	fstp dword [edx+eax*4]
	movss xmm5, dword [ebp-0x68]
	movaps xmm6, xmm5
	movss xmm4, dword [ebp-0x58]
_Z10lpc_to_lspPfiS_ifPc_80:
	add dword [ebp-0x38], 0x1
	mov ecx, [ebp-0x38]
	cmp [ebp+0xc], ecx
	jz _Z10lpc_to_lspPfiS_ifPc_200
_Z10lpc_to_lspPfiS_ifPc_230:
	mov edx, [ebp-0x20]
	jmp _Z10lpc_to_lspPfiS_ifPc_210
_Z10lpc_to_lspPfiS_ifPc_180:
	movaps xmm4, xmm5
	jmp _Z10lpc_to_lspPfiS_ifPc_220
_Z10lpc_to_lspPfiS_ifPc_130:
	movaps xmm6, xmm4
	add dword [ebp-0x38], 0x1
	mov ecx, [ebp-0x38]
	cmp [ebp+0xc], ecx
	jnz _Z10lpc_to_lspPfiS_ifPc_230
_Z10lpc_to_lspPfiS_ifPc_200:
	mov eax, [ebp-0x2c]
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z10lpc_to_lspPfiS_ifPc_50:
	mov dword [ebp-0x2c], 0x0
	mov eax, [ebp-0x2c]
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	add [eax], al


;lsp_to_lpc(float*, float*, int, char*)
_Z10lsp_to_lpcPfS_iPc:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov eax, [ebp+0x14]
	mov ebx, [ebp+0x10]
	sar ebx, 1
	mov edx, eax
	neg edx
	and edx, 0x3
	add eax, edx
	mov edx, ebx
	shl edx, 0x4
	lea esi, [eax+edx+0x8]
	mov [ebp-0x1c], eax
	lea ecx, [ebx*4+0x1]
	test ecx, ecx
	js _Z10lsp_to_lpcPfS_iPc_10
	xor edx, edx
_Z10lsp_to_lpcPfS_iPc_20:
	mov dword [eax], 0x0
	add eax, 0x4
	add edx, 0x1
	cmp ecx, edx
	jge _Z10lsp_to_lpcPfS_iPc_20
_Z10lsp_to_lpcPfS_iPc_10:
	mov eax, esi
	neg eax
	and eax, 0x3
	lea edi, [esi+eax]
	cmp dword [ebp+0x10], 0x0
	jle _Z10lsp_to_lpcPfS_iPc_30
	xor edx, edx
	movsd xmm3, qword [_double_1_57079633]
	movss xmm7, dword [_float_0_04148775]
	movss xmm6, dword [_float_0_49991244]
	movss xmm5, dword [_float_0_99999332]
	movsd xmm4, qword [_double_3_14159265]
	movss xmm2, dword [_data16_80000000]
	jmp _Z10lsp_to_lpcPfS_iPc_40
_Z10lsp_to_lpcPfS_iPc_60:
	mulss xmm0, xmm0
	movaps xmm1, xmm0
	mulss xmm1, [_float__0_00127121]
	addss xmm1, xmm7
	mulss xmm1, xmm0
	subss xmm1, xmm6
	mulss xmm1, xmm0
	addss xmm1, xmm5
	movss [edi+eax], xmm1
	add edx, 0x1
	cmp [ebp+0x10], edx
	jz _Z10lsp_to_lpcPfS_iPc_50
_Z10lsp_to_lpcPfS_iPc_40:
	lea eax, [edx*4]
	mov ecx, [ebp+0x8]
	movss xmm0, dword [ecx+eax]
	cvtss2sd xmm1, xmm0
	ucomisd xmm3, xmm1
	ja _Z10lsp_to_lpcPfS_iPc_60
	movapd xmm0, xmm4
	subsd xmm0, xmm1
	cvtsd2ss xmm0, xmm0
	mulss xmm0, xmm0
	movaps xmm1, xmm0
	mulss xmm1, [_float__0_00127121]
	addss xmm1, xmm7
	mulss xmm1, xmm0
	subss xmm1, xmm6
	mulss xmm1, xmm0
	addss xmm1, xmm5
	xorps xmm1, xmm2
	movss [edi+eax], xmm1
	add edx, 0x1
	cmp [ebp+0x10], edx
	jnz _Z10lsp_to_lpcPfS_iPc_40
_Z10lsp_to_lpcPfS_iPc_50:
	xor eax, eax
	movss xmm3, dword [_float_1_00000000]
	movaps xmm4, xmm3
	xor esi, esi
_Z10lsp_to_lpcPfS_iPc_110:
	test ebx, ebx
	jle _Z10lsp_to_lpcPfS_iPc_70
	mov edx, [ebp-0x1c]
	xor ecx, ecx
	movss xmm5, dword [_float__2_00000000]
_Z10lsp_to_lpcPfS_iPc_80:
	lea eax, [edi+ecx*8]
	movss xmm2, dword [edx]
	movss xmm1, dword [eax]
	mulss xmm1, xmm5
	mulss xmm1, xmm2
	addss xmm1, xmm3
	addss xmm1, [edx+0x4]
	movss xmm0, dword [eax+0x4]
	mulss xmm0, xmm5
	mulss xmm0, [edx+0x8]
	addss xmm0, xmm4
	addss xmm0, [edx+0xc]
	movss [edx+0x4], xmm2
	mov eax, [edx+0x8]
	mov [edx+0xc], eax
	movss [edx], xmm3
	movss [edx+0x8], xmm4
	add ecx, 0x1
	add edx, 0x10
	movaps xmm4, xmm0
	movaps xmm3, xmm1
	cmp ebx, ecx
	jnz _Z10lsp_to_lpcPfS_iPc_80
	lea eax, [edx-0x4]
_Z10lsp_to_lpcPfS_iPc_70:
	movaps xmm0, xmm3
	addss xmm0, [eax+0x4]
	movaps xmm1, xmm4
	subss xmm1, [eax+0x8]
	test esi, esi
	jle _Z10lsp_to_lpcPfS_iPc_90
	addss xmm0, xmm1
	mulss xmm0, [_float_0_50000000]
	mov edx, [ebp+0xc]
	movss [edx+esi*4-0x4], xmm0
_Z10lsp_to_lpcPfS_iPc_90:
	movss [eax+0x4], xmm3
	movss [eax+0x8], xmm4
	add esi, 0x1
	cmp [ebp+0x10], esi
	jl _Z10lsp_to_lpcPfS_iPc_100
	pxor xmm3, xmm3
	movaps xmm4, xmm3
	jmp _Z10lsp_to_lpcPfS_iPc_110
_Z10lsp_to_lpcPfS_iPc_30:
	jz _Z10lsp_to_lpcPfS_iPc_50
_Z10lsp_to_lpcPfS_iPc_100:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;lsp_interpolate(float*, float*, float*, int, int, int)
_Z15lsp_interpolatePfS_S_iii:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	mov edi, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov ebx, [ebp+0x10]
	mov ecx, [ebp+0x14]
	cvtsi2ss xmm3, dword [ebp+0x18]
	movss xmm1, dword [_float_1_00000000]
	addss xmm3, xmm1
	cvtsi2ss xmm0, dword [ebp+0x1c]
	divss xmm3, xmm0
	test ecx, ecx
	jle _Z15lsp_interpolatePfS_S_iii_10
	movaps xmm2, xmm1
	subss xmm2, xmm3
	xor edx, edx
_Z15lsp_interpolatePfS_S_iii_20:
	lea eax, [edx*4]
	movaps xmm0, xmm2
	mulss xmm0, [eax+edi]
	movaps xmm1, xmm3
	mulss xmm1, [eax+esi]
	addss xmm0, xmm1
	movss [ebx+eax], xmm0
	add edx, 0x1
	cmp ecx, edx
	jnz _Z15lsp_interpolatePfS_S_iii_20
_Z15lsp_interpolatePfS_S_iii_10:
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;lsp_enforce_margin(float*, int, float)
_Z18lsp_enforce_marginPfif:
	push ebp
	mov ebp, esp
	push ebx
	mov ebx, [ebp+0x8]
	mov edx, [ebp+0xc]
	movss xmm5, dword [ebp+0x10]
	ucomiss xmm5, [ebx]
	jbe _Z18lsp_enforce_marginPfif_10
	movss [ebx], xmm5
_Z18lsp_enforce_marginPfif_10:
	lea eax, [ebx+edx*4]
	cvtss2sd xmm4, xmm5
	movsd xmm1, qword [_double_3_14159265]
	subsd xmm1, xmm4
	cvtss2sd xmm0, [eax-0x4]
	ucomisd xmm0, xmm1
	jbe _Z18lsp_enforce_marginPfif_20
	cvtsd2ss xmm1, xmm1
	movss [eax-0x4], xmm1
_Z18lsp_enforce_marginPfif_20:
	lea ecx, [edx-0x1]
	cmp ecx, 0x1
	jle _Z18lsp_enforce_marginPfif_30
	mov edx, 0x1
	movsd xmm6, qword [_double_0_50000000]
	lea eax, [ebx+0x4]
	jmp _Z18lsp_enforce_marginPfif_40
_Z18lsp_enforce_marginPfif_60:
	addss xmm2, xmm5
	movss [eax], xmm2
_Z18lsp_enforce_marginPfif_70:
	movss xmm3, dword [eax+0x4]
	cvtss2sd xmm1, xmm2
	cvtss2sd xmm0, xmm3
	subsd xmm0, xmm4
	ucomisd xmm1, xmm0
	jbe _Z18lsp_enforce_marginPfif_50
	addss xmm2, xmm3
	cvtss2sd xmm0, xmm2
	subsd xmm0, xmm4
	mulsd xmm0, xmm6
	cvtsd2ss xmm0, xmm0
	movss [eax], xmm0
_Z18lsp_enforce_marginPfif_50:
	add edx, 0x1
	add eax, 0x4
	cmp edx, ecx
	jz _Z18lsp_enforce_marginPfif_30
_Z18lsp_enforce_marginPfif_40:
	movss xmm2, dword [eax-0x4]
	cvtss2sd xmm1, [eax]
	cvtss2sd xmm0, xmm2
	addsd xmm0, xmm4
	ucomisd xmm0, xmm1
	ja _Z18lsp_enforce_marginPfif_60
	movss xmm2, dword [eax]
	jmp _Z18lsp_enforce_marginPfif_70
_Z18lsp_enforce_marginPfif_30:
	pop ebx
	pop ebp
	ret


;Initialized global or static variables of lsp:
SECTION .data


;Initialized constant data of lsp:
SECTION .rdata


;Zero initialized global or static variables of lsp:
SECTION .bss


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata
_float_1_00000000:		dd 0x3f800000	; 1
_float__1_00000000:		dd 0xbf800000	; -1
_data16_7fffffff:		dd 0x7fffffff, 0x0, 0x0, 0x0	; OWORD
_double__0_90000000:		dq 0xbfeccccccccccccd	; -0.9
_double_1_00000000:		dq 0x3ff0000000000000	; 1
_double_0_20000000:		dq 0x3fc999999999999a	; 0.2
_float_0_50000000:		dd 0x3f000000	; 0.5
_double_1_57079633:		dq 0x3ff921fb544486e0	; 1.5708
_float_0_04148775:		dd 0x3d29ef0e	; 0.0414877
_float_0_49991244:		dd 0x3efff486	; 0.499912
_float_0_99999332:		dd 0x3f7fff90	; 0.999993
_double_3_14159265:		dq 0x400921fb54442d18	; 3.14159
_data16_80000000:		dd 0x80000000, 0x0, 0x0, 0x0	; OWORD
_float__0_00127121:		dd 0xbaa69eb6	; -0.00127121
_float__2_00000000:		dd 0xc0000000	; -2
_double_0_50000000:		dq 0x3fe0000000000000	; 0.5

