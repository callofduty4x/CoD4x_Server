;Imports of fft:
	extern sinf
	extern cosf

;Exports of fft:
	global _GLOBAL__I_FFT_Init
	global FFT
	global FFT_Init


SECTION .text


;global constructors keyed to FFT_Init
_GLOBAL__I_FFT_Init:
	push ebp
	mov ebp, esp
	mov edx, 0xffff
	mov eax, 0x1
	pop ebp
	jmp _Z41__static_initialization_and_destruction_0ii


;__static_initialization_and_destruction_0(int, int)
_Z41__static_initialization_and_destruction_0ii:
	push ebp
	mov ebp, esp
	cmp edx, 0xffff
	jz _Z41__static_initialization_and_destruction_0ii_10
_Z41__static_initialization_and_destruction_0ii_20:
	pop ebp
	ret
_Z41__static_initialization_and_destruction_0ii_10:
	sub eax, 0x1
	jnz _Z41__static_initialization_and_destruction_0ii_20
	mov eax, [g_fltMin__uint4]
	mov [g_fltMin], eax
	mov eax, [g_fltMin__uint4+0x4]
	mov [g_fltMin+0x4], eax
	mov eax, [g_fltMin__uint4+0x8]
	mov [g_fltMin+0x8], eax
	mov eax, [g_fltMin__uint4+0xc]
	mov [g_fltMin+0xc], eax
	mov eax, [g_negativeZero__uint4]
	mov [g_negativeZero], eax
	mov eax, [g_negativeZero__uint4+0x4]
	mov [g_negativeZero+0x4], eax
	mov eax, [g_negativeZero__uint4+0x8]
	mov [g_negativeZero+0x8], eax
	mov eax, [g_negativeZero__uint4+0xc]
	mov [g_negativeZero+0xc], eax
	mov eax, [g_inc__uint4]
	mov [g_inc], eax
	mov eax, [g_inc__uint4+0x4]
	mov [g_inc+0x4], eax
	mov eax, [g_inc__uint4+0x8]
	mov [g_inc+0x8], eax
	mov eax, [g_inc__uint4+0xc]
	mov [g_inc+0xc], eax
	mov eax, [g_swizzleXYZW__uint4]
	mov [g_swizzleXYZW], eax
	mov eax, [g_swizzleXYZW__uint4+0x4]
	mov [g_swizzleXYZW+0x4], eax
	mov eax, [g_swizzleXYZW__uint4+0x8]
	mov [g_swizzleXYZW+0x8], eax
	mov eax, [g_swizzleXYZW__uint4+0xc]
	mov [g_swizzleXYZW+0xc], eax
	mov eax, [g_swizzleYXZW__uint4]
	mov [g_swizzleYXZW], eax
	mov eax, [g_swizzleYXZW__uint4+0x4]
	mov [g_swizzleYXZW+0x4], eax
	mov eax, [g_swizzleYXZW__uint4+0x8]
	mov [g_swizzleYXZW+0x8], eax
	mov eax, [g_swizzleYXZW__uint4+0xc]
	mov [g_swizzleYXZW+0xc], eax
	mov eax, [g_swizzleXZYW__uint4]
	mov [g_swizzleXZYW], eax
	mov eax, [g_swizzleXZYW__uint4+0x4]
	mov [g_swizzleXZYW+0x4], eax
	mov eax, [g_swizzleXZYW__uint4+0x8]
	mov [g_swizzleXZYW+0x8], eax
	mov eax, [g_swizzleXZYW__uint4+0xc]
	mov [g_swizzleXZYW+0xc], eax
	mov eax, [g_swizzleYXWZ__uint4]
	mov [g_swizzleYXWZ], eax
	mov eax, [g_swizzleYXWZ__uint4+0x4]
	mov [g_swizzleYXWZ+0x4], eax
	mov eax, [g_swizzleYXWZ__uint4+0x8]
	mov [g_swizzleYXWZ+0x8], eax
	mov eax, [g_swizzleYXWZ__uint4+0xc]
	mov [g_swizzleYXWZ+0xc], eax
	mov eax, [g_swizzleXAZC__uint4]
	mov [g_swizzleXAZC], eax
	mov eax, [g_swizzleXAZC__uint4+0x4]
	mov [g_swizzleXAZC+0x4], eax
	mov eax, [g_swizzleXAZC__uint4+0x8]
	mov [g_swizzleXAZC+0x8], eax
	mov eax, [g_swizzleXAZC__uint4+0xc]
	mov [g_swizzleXAZC+0xc], eax
	mov eax, [g_swizzleYBWD__uint4]
	mov [g_swizzleYBWD], eax
	mov eax, [g_swizzleYBWD__uint4+0x4]
	mov [g_swizzleYBWD+0x4], eax
	mov eax, [g_swizzleYBWD__uint4+0x8]
	mov [g_swizzleYBWD+0x8], eax
	mov eax, [g_swizzleYBWD__uint4+0xc]
	mov [g_swizzleYBWD+0xc], eax
	mov eax, [g_swizzleXYAB__uint4]
	mov [g_swizzleXYAB], eax
	mov eax, [g_swizzleXYAB__uint4+0x4]
	mov [g_swizzleXYAB+0x4], eax
	mov eax, [g_swizzleXYAB__uint4+0x8]
	mov [g_swizzleXYAB+0x8], eax
	mov eax, [g_swizzleXYAB__uint4+0xc]
	mov [g_swizzleXYAB+0xc], eax
	mov eax, [g_swizzleZWCD__uint4]
	mov [g_swizzleZWCD], eax
	mov eax, [g_swizzleZWCD__uint4+0x4]
	mov [g_swizzleZWCD+0x4], eax
	mov eax, [g_swizzleZWCD__uint4+0x8]
	mov [g_swizzleZWCD+0x8], eax
	mov eax, [g_swizzleZWCD__uint4+0xc]
	mov [g_swizzleZWCD+0xc], eax
	mov eax, [g_swizzleXYZA__uint4]
	mov [g_swizzleXYZA], eax
	mov eax, [g_swizzleXYZA__uint4+0x4]
	mov [g_swizzleXYZA+0x4], eax
	mov eax, [g_swizzleXYZA__uint4+0x8]
	mov [g_swizzleXYZA+0x8], eax
	mov eax, [g_swizzleXYZA__uint4+0xc]
	mov [g_swizzleXYZA+0xc], eax
	mov eax, [g_swizzleYZXW__uint4]
	mov [g_swizzleYZXW], eax
	mov eax, [g_swizzleYZXW__uint4+0x4]
	mov [g_swizzleYZXW+0x4], eax
	mov eax, [g_swizzleYZXW__uint4+0x8]
	mov [g_swizzleYZXW+0x8], eax
	mov eax, [g_swizzleYZXW__uint4+0xc]
	mov [g_swizzleYZXW+0xc], eax
	mov eax, [g_swizzleZXYW__uint4]
	mov [g_swizzleZXYW], eax
	mov eax, [g_swizzleZXYW__uint4+0x4]
	mov [g_swizzleZXYW+0x4], eax
	mov eax, [g_swizzleZXYW__uint4+0x8]
	mov [g_swizzleZXYW+0x8], eax
	mov eax, [g_swizzleZXYW__uint4+0xc]
	mov [g_swizzleZXYW+0xc], eax
	mov eax, [g_swizzleWABW__uint4]
	mov [g_swizzleWABW], eax
	mov eax, [g_swizzleWABW__uint4+0x4]
	mov [g_swizzleWABW+0x4], eax
	mov eax, [g_swizzleWABW__uint4+0x8]
	mov [g_swizzleWABW+0x8], eax
	mov eax, [g_swizzleWABW__uint4+0xc]
	mov [g_swizzleWABW+0xc], eax
	mov eax, [g_swizzleZWAW__uint4]
	mov [g_swizzleZWAW], eax
	mov eax, [g_swizzleZWAW__uint4+0x4]
	mov [g_swizzleZWAW+0x4], eax
	mov eax, [g_swizzleZWAW__uint4+0x8]
	mov [g_swizzleZWAW+0x8], eax
	mov eax, [g_swizzleZWAW__uint4+0xc]
	mov [g_swizzleZWAW+0xc], eax
	mov eax, [g_swizzleYZWA__uint4]
	mov [g_swizzleYZWA], eax
	mov eax, [g_swizzleYZWA__uint4+0x4]
	mov [g_swizzleYZWA+0x4], eax
	mov eax, [g_swizzleYZWA__uint4+0x8]
	mov [g_swizzleYZWA+0x8], eax
	mov eax, [g_swizzleYZWA__uint4+0xc]
	mov [g_swizzleYZWA+0xc], eax
	mov eax, [g_swizzleXXXX__uint4]
	mov [g_swizzleXXXX], eax
	mov eax, [g_swizzleXXXX__uint4+0x4]
	mov [g_swizzleXXXX+0x4], eax
	mov eax, [g_swizzleXXXX__uint4+0x8]
	mov [g_swizzleXXXX+0x8], eax
	mov eax, [g_swizzleXXXX__uint4+0xc]
	mov [g_swizzleXXXX+0xc], eax
	mov eax, [g_swizzleYYYY__uint4]
	mov [g_swizzleYYYY], eax
	mov eax, [g_swizzleYYYY__uint4+0x4]
	mov [g_swizzleYYYY+0x4], eax
	mov eax, [g_swizzleYYYY__uint4+0x8]
	mov [g_swizzleYYYY+0x8], eax
	mov eax, [g_swizzleYYYY__uint4+0xc]
	mov [g_swizzleYYYY+0xc], eax
	mov eax, [g_swizzleZZZZ__uint4]
	mov [g_swizzleZZZZ], eax
	mov eax, [g_swizzleZZZZ__uint4+0x4]
	mov [g_swizzleZZZZ+0x4], eax
	mov eax, [g_swizzleZZZZ__uint4+0x8]
	mov [g_swizzleZZZZ+0x8], eax
	mov eax, [g_swizzleZZZZ__uint4+0xc]
	mov [g_swizzleZZZZ+0xc], eax
	mov eax, [g_swizzleWWWW__uint4]
	mov [g_swizzleWWWW], eax
	mov eax, [g_swizzleWWWW__uint4+0x4]
	mov [g_swizzleWWWW+0x4], eax
	mov eax, [g_swizzleWWWW__uint4+0x8]
	mov [g_swizzleWWWW+0x8], eax
	mov eax, [g_swizzleWWWW__uint4+0xc]
	mov [g_swizzleWWWW+0xc], eax
	mov eax, [g_selectX__uint4]
	mov [g_selectX], eax
	mov eax, [g_selectX__uint4+0x4]
	mov [g_selectX+0x4], eax
	mov eax, [g_selectX__uint4+0x8]
	mov [g_selectX+0x8], eax
	mov eax, [g_selectX__uint4+0xc]
	mov [g_selectX+0xc], eax
	mov eax, [g_selectY__uint4]
	mov [g_selectY], eax
	mov eax, [g_selectY__uint4+0x4]
	mov [g_selectY+0x4], eax
	mov eax, [g_selectY__uint4+0x8]
	mov [g_selectY+0x8], eax
	mov eax, [g_selectY__uint4+0xc]
	mov [g_selectY+0xc], eax
	mov eax, [g_selectZ__uint4]
	mov [g_selectZ], eax
	mov eax, [g_selectZ__uint4+0x4]
	mov [g_selectZ+0x4], eax
	mov eax, [g_selectZ__uint4+0x8]
	mov [g_selectZ+0x8], eax
	mov eax, [g_selectZ__uint4+0xc]
	mov [g_selectZ+0xc], eax
	mov eax, [g_selectW__uint4]
	mov [g_selectW], eax
	mov eax, [g_selectW__uint4+0x4]
	mov [g_selectW+0x4], eax
	mov eax, [g_selectW__uint4+0x8]
	mov [g_selectW+0x8], eax
	mov eax, [g_selectW__uint4+0xc]
	mov [g_selectW+0xc], eax
	mov eax, [g_keepYZW__uint4]
	mov [g_keepYZW], eax
	mov eax, [g_keepYZW__uint4+0x4]
	mov [g_keepYZW+0x4], eax
	mov eax, [g_keepYZW__uint4+0x8]
	mov [g_keepYZW+0x8], eax
	mov eax, [g_keepYZW__uint4+0xc]
	mov [g_keepYZW+0xc], eax
	mov eax, [g_keepXZW__uint4]
	mov [g_keepXZW], eax
	mov eax, [g_keepXZW__uint4+0x4]
	mov [g_keepXZW+0x4], eax
	mov eax, [g_keepXZW__uint4+0x8]
	mov [g_keepXZW+0x8], eax
	mov eax, [g_keepXZW__uint4+0xc]
	mov [g_keepXZW+0xc], eax
	mov eax, [g_keepXYW__uint4]
	mov [g_keepXYW], eax
	mov eax, [g_keepXYW__uint4+0x4]
	mov [g_keepXYW+0x4], eax
	mov eax, [g_keepXYW__uint4+0x8]
	mov [g_keepXYW+0x8], eax
	mov eax, [g_keepXYW__uint4+0xc]
	mov [g_keepXYW+0xc], eax
	mov eax, [g_keepXYZ__uint4]
	mov [g_keepXYZ], eax
	mov eax, [g_keepXYZ__uint4+0x4]
	mov [g_keepXYZ+0x4], eax
	mov eax, [g_keepXYZ__uint4+0x8]
	mov [g_keepXYZ+0x8], eax
	mov eax, [g_keepXYZ__uint4+0xc]
	mov [g_keepXYZ+0xc], eax
	mov eax, [g_keepXY__uint4]
	mov [g_keepXY], eax
	mov eax, [g_keepXY__uint4+0x4]
	mov [g_keepXY+0x4], eax
	mov eax, [g_keepXY__uint4+0x8]
	mov [g_keepXY+0x8], eax
	mov eax, [g_keepXY__uint4+0xc]
	mov [g_keepXY+0xc], eax
	mov eax, [g_keepZW__uint4]
	mov [g_keepZW], eax
	mov eax, [g_keepZW__uint4+0x4]
	mov [g_keepZW+0x4], eax
	mov eax, [g_keepZW__uint4+0x8]
	mov [g_keepZW+0x8], eax
	mov eax, [g_keepZW__uint4+0xc]
	mov [g_keepZW+0xc], eax
	mov eax, [g_keepX__uint4]
	mov [g_keepX], eax
	mov eax, [g_keepX__uint4+0x4]
	mov [g_keepX+0x4], eax
	mov eax, [g_keepX__uint4+0x8]
	mov [g_keepX+0x8], eax
	mov eax, [g_keepX__uint4+0xc]
	mov [g_keepX+0xc], eax
	mov eax, [g_keepZ__uint4]
	mov [g_keepZ], eax
	mov eax, [g_keepZ__uint4+0x4]
	mov [g_keepZ+0x4], eax
	mov eax, [g_keepZ__uint4+0x8]
	mov [g_keepZ+0x8], eax
	mov eax, [g_keepZ__uint4+0xc]
	mov [g_keepZ+0xc], eax
	pop ebp
	ret


;FFT
FFT:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x110c
	mov ecx, [ebp+0xc]
	mov dword [ebp-0x10f4], 0x1
	shl dword [ebp-0x10f4], cl
	mov edi, 0x8
	sub edi, ecx
	mov ecx, [ebp-0x10f4]
	test ecx, ecx
	jz FFT_10
	mov ebx, [ebp+0x8]
	xor esi, esi
FFT_20:
	mov eax, [ebp+0x10]
	mov eax, [eax+esi*4]
	mov ecx, edi
	sar eax, cl
	mov [ebp-0x110c], eax
	mov eax, [ebx]
	mov edx, [ebx+0x4]
	mov ecx, [ebp-0x110c]
	mov [ebp+ecx*8-0x8b8], eax
	mov [ebp+ecx*8-0x8b4], edx
	add esi, 0x1
	add ebx, 0x8
	cmp [ebp-0x10f4], esi
	ja FFT_20
	xor edi, edi
	lea esi, [ebp-0x8b8]
	mov eax, esi
	xor edx, edx
FFT_30:
	mov ecx, [edx+ebp-0x8b8]
	mov ebx, [edx+ebp-0x8b4]
	mov [ebp-0x10f0], ecx
	mov [ebp-0x10ec], ebx
	mov ecx, [edx+ebp-0x8a8]
	mov ebx, [edx+ebp-0x8a4]
	mov [ebp-0x10e8], ecx
	mov [ebp-0x10e4], ebx
	movss xmm1, dword [eax]
	addss xmm1, [eax+0x8]
	movss xmm0, dword [eax+0x10]
	addss xmm0, [eax+0x18]
	movaps xmm2, xmm1
	addss xmm2, xmm0
	movss [eax], xmm2
	subss xmm1, xmm0
	movss [eax+0x10], xmm1
	movss xmm1, dword [eax+0x4]
	addss xmm1, [eax+0xc]
	movss xmm0, dword [eax+0x14]
	addss xmm0, [eax+0x1c]
	movaps xmm2, xmm1
	addss xmm2, xmm0
	movss [eax+0x4], xmm2
	subss xmm1, xmm0
	movss [eax+0x14], xmm1
	movss xmm1, dword [ebp-0x10f0]
	subss xmm1, [eax+0x8]
	movss xmm2, dword [ebp-0x10e4]
	subss xmm2, [eax+0x1c]
	movaps xmm0, xmm1
	subss xmm0, xmm2
	movss [eax+0x8], xmm0
	movss xmm3, dword [ebp-0x10e8]
	subss xmm3, [eax+0x18]
	addss xmm1, xmm2
	movss [eax+0x18], xmm1
	movss xmm0, dword [ebp-0x10ec]
	subss xmm0, [eax+0xc]
	movaps xmm1, xmm3
	addss xmm1, xmm0
	movss [eax+0xc], xmm1
	subss xmm0, xmm3
	movss [eax+0x1c], xmm0
	add edi, 0x4
	add edx, 0x20
	add eax, 0x20
	cmp [ebp-0x10f4], edi
	ja FFT_30
	xor ebx, ebx
	mov ecx, 0x18
FFT_40:
	mov eax, ebx
	shr eax, 0x2
	shl eax, 0x5
	lea edx, [ebp-0x18]
	add eax, edx
	mov edx, [ecx+ebp-0x8d0]
	mov [eax-0x10a0], edx
	mov edx, [ecx+ebp-0x8c8]
	mov [eax-0x109c], edx
	mov edx, [ecx+ebp-0x8c0]
	mov [eax-0x1098], edx
	mov edx, [ecx+ebp-0x8b8]
	mov [eax-0x1094], edx
	mov edx, [ecx+esi-0x14]
	mov [eax-0x1090], edx
	mov edx, [ecx+esi-0xc]
	mov [eax-0x108c], edx
	mov edx, [ecx+esi-0x4]
	mov [eax-0x1088], edx
	mov edx, [ecx+esi+0x4]
	mov [eax-0x1084], edx
	add ebx, 0x4
	add ecx, 0x20
	cmp [ebp-0x10f4], ebx
	ja FFT_40
FFT_10:
	cmp dword [ebp-0x10f4], 0x4
	jbe FFT_50
	mov dword [ebp-0x10dc], 0x5
	mov dword [ebp-0x10d4], 0x4
	mov ecx, [ebp-0x10d4]
	jmp FFT_60
FFT_70:
	mov edx, ecx
	sub dword [ebp-0x10dc], 0x1
	cmp [ebp-0x10f4], edx
	jbe FFT_50
FFT_130:
	mov [ebp-0x10d4], edx
	mov ecx, edx
FFT_60:
	add ecx, ecx
	mov [ebp-0x10d0], ecx
	mov edx, [ebp-0x10d4]
	test edx, edx
	jz FFT_70
	mov dword [ebp-0x10d8], 0x0
	mov esi, [ebp-0x10d8]
	mov edx, [ebp-0x10d8]
	jmp FFT_80
FFT_100:
	add dword [ebp-0x10d8], 0x4
	mov eax, [ebp-0x10d8]
	cmp [ebp-0x10d4], eax
	jbe FFT_90
FFT_120:
	mov esi, eax
	mov edx, eax
FFT_80:
	movzx ecx, byte [ebp-0x10dc]
	shl esi, cl
	mov ebx, [ebp+0x14]
	lea esi, [ebx+esi*8]
	mov eax, [esi]
	mov [ebp-0x58], eax
	mov ebx, [ebp-0x10d8]
	add ebx, 0x1
	shl ebx, cl
	mov eax, [ebp+0x14]
	lea ebx, [eax+ebx*8]
	mov eax, [ebx]
	mov [ebp-0x54], eax
	add edx, 0x2
	shl edx, cl
	mov eax, [ebp+0x14]
	lea edi, [eax+edx*8]
	mov eax, [edi]
	mov [ebp-0x50], eax
	mov edx, [ebp-0x10d8]
	add edx, 0x3
	shl edx, cl
	mov eax, [ebp+0x14]
	lea edx, [eax+edx*8]
	mov eax, [edx]
	mov [ebp-0x4c], eax
	mov eax, [esi+0x4]
	mov [ebp-0x48], eax
	mov eax, [ebx+0x4]
	mov [ebp-0x44], eax
	mov eax, [edi+0x4]
	mov [ebp-0x40], eax
	mov eax, [edx+0x4]
	mov [ebp-0x3c], eax
	mov eax, [ebp-0x58]
	mov [ebp-0x78], eax
	mov eax, [ebp-0x54]
	mov [ebp-0x74], eax
	mov eax, [ebp-0x50]
	mov [ebp-0x70], eax
	mov eax, [ebp-0x4c]
	mov [ebp-0x6c], eax
	mov eax, [ebp-0x48]
	mov [ebp-0x68], eax
	mov eax, [ebp-0x44]
	mov [ebp-0x64], eax
	mov eax, [ebp-0x40]
	mov [ebp-0x60], eax
	mov eax, [ebp-0x3c]
	mov [ebp-0x5c], eax
	mov edx, [ebp-0x10f4]
	cmp [ebp-0x10d8], edx
	jae FFT_100
	mov edi, [ebp-0x10d8]
FFT_110:
	mov ebx, edi
	shr ebx, 0x2
	mov ecx, [ebp-0x10d4]
	lea edx, [edi+ecx]
	shr edx, 0x2
	shl edx, 0x5
	lea esi, [ebp-0x10b8]
	add esi, edx
	mov eax, [esi]
	mov [ebp-0x38], eax
	mov eax, [esi+0x4]
	mov [ebp-0x34], eax
	mov eax, [esi+0x8]
	mov [ebp-0x30], eax
	mov eax, [esi+0xc]
	mov [ebp-0x2c], eax
	lea edx, [edx+ebp-0x10a8]
	mov eax, [edx]
	mov [ebp-0x28], eax
	mov eax, [edx+0x4]
	mov [ebp-0x24], eax
	mov eax, [edx+0x8]
	mov [ebp-0x20], eax
	mov eax, [edx+0xc]
	mov [ebp-0x1c], eax
	movss xmm5, dword [ebp-0x78]
	movss xmm0, dword [ebp-0x38]
	movss [ebp-0x10cc], xmm0
	mulss xmm0, xmm5
	movss [ebp-0x10f8], xmm0
	movss xmm4, dword [ebp-0x74]
	movss xmm6, dword [ebp-0x34]
	movaps xmm0, xmm4
	mulss xmm0, xmm6
	movss [ebp-0x10fc], xmm0
	movss xmm3, dword [ebp-0x70]
	movss xmm7, dword [ebp-0x30]
	movaps xmm0, xmm3
	mulss xmm0, xmm7
	movss [ebp-0x1100], xmm0
	movss xmm2, dword [ebp-0x6c]
	movss xmm1, dword [ebp-0x2c]
	movaps xmm0, xmm2
	mulss xmm0, xmm1
	movss [ebp-0x1104], xmm0
	movss xmm0, dword [ebp-0x68]
	mulss xmm0, [ebp-0x28]
	movss [ebp-0xa8], xmm0
	movss xmm0, dword [ebp-0x64]
	mulss xmm0, [ebp-0x24]
	movss [ebp-0xa4], xmm0
	movss xmm0, dword [ebp-0x60]
	mulss xmm0, [ebp-0x20]
	movss [ebp-0xa0], xmm0
	movss xmm0, dword [ebp-0x5c]
	mulss xmm0, [ebp-0x1c]
	movss [ebp-0x9c], xmm0
	movss xmm0, dword [ebp-0x10f8]
	subss xmm0, [ebp-0xa8]
	movss [ebp-0x10f8], xmm0
	movss [ebp-0x98], xmm0
	movss xmm0, dword [ebp-0x10fc]
	subss xmm0, [ebp-0xa4]
	movss [ebp-0x10fc], xmm0
	movss [ebp-0x94], xmm0
	movss xmm0, dword [ebp-0x1100]
	subss xmm0, [ebp-0xa0]
	movss [ebp-0x1100], xmm0
	movss [ebp-0x90], xmm0
	movss xmm0, dword [ebp-0x1104]
	subss xmm0, [ebp-0x9c]
	movss [ebp-0x1104], xmm0
	movss [ebp-0x8c], xmm0
	mulss xmm5, [ebp-0x28]
	movss [ebp-0xb8], xmm5
	mulss xmm4, [ebp-0x24]
	movss [ebp-0xb4], xmm4
	mulss xmm3, [ebp-0x20]
	movss [ebp-0xb0], xmm3
	mulss xmm2, [ebp-0x1c]
	movss [ebp-0xac], xmm2
	movss xmm0, dword [ebp-0x10cc]
	mulss xmm0, [ebp-0x68]
	movss [ebp-0xa8], xmm0
	mulss xmm6, [ebp-0x64]
	movss [ebp-0xa4], xmm6
	mulss xmm7, [ebp-0x60]
	movss [ebp-0xa0], xmm7
	mulss xmm1, [ebp-0x5c]
	movss [ebp-0x9c], xmm1
	addss xmm5, xmm0
	movss [ebp-0x88], xmm5
	addss xmm4, xmm6
	movss [ebp-0x84], xmm4
	addss xmm3, xmm7
	movss [ebp-0x80], xmm3
	addss xmm2, xmm1
	movss [ebp-0x7c], xmm2
	shl ebx, 0x5
	lea ecx, [ebp-0x10b8]
	add ecx, ebx
	mov eax, [ecx]
	mov [ebp-0x38], eax
	mov eax, [ecx+0x4]
	mov [ebp-0x34], eax
	mov eax, [ecx+0x8]
	mov [ebp-0x30], eax
	mov eax, [ecx+0xc]
	mov [ebp-0x2c], eax
	lea ebx, [ebx+ebp-0x10a8]
	mov eax, [ebx]
	mov [ebp-0x28], eax
	mov eax, [ebx+0x4]
	mov [ebp-0x24], eax
	mov eax, [ebx+0x8]
	mov [ebp-0x20], eax
	mov eax, [ebx+0xc]
	mov [ebp-0x1c], eax
	movss xmm1, dword [ebp-0x38]
	movaps xmm0, xmm1
	subss xmm0, [ebp-0x10f8]
	movss [ebp-0xb8], xmm0
	movss xmm0, dword [ebp-0x34]
	subss xmm0, [ebp-0x10fc]
	movss [ebp-0xb4], xmm0
	movss xmm0, dword [ebp-0x30]
	subss xmm0, [ebp-0x1100]
	movss [ebp-0xb0], xmm0
	movss xmm0, dword [ebp-0x2c]
	subss xmm0, [ebp-0x1104]
	movss [ebp-0xac], xmm0
	movss xmm0, dword [ebp-0x28]
	subss xmm0, xmm5
	movss [ebp-0xa8], xmm0
	movss xmm0, dword [ebp-0x24]
	subss xmm0, xmm4
	movss [ebp-0xa4], xmm0
	movss xmm0, dword [ebp-0x20]
	subss xmm0, xmm3
	movss [ebp-0xa0], xmm0
	movss xmm0, dword [ebp-0x1c]
	subss xmm0, xmm2
	movss [ebp-0x9c], xmm0
	addss xmm1, [ebp-0x10f8]
	movss [ebp-0x38], xmm1
	movss xmm0, dword [ebp-0x10fc]
	addss xmm0, [ebp-0x34]
	movss [ebp-0x34], xmm0
	movss xmm0, dword [ebp-0x1100]
	addss xmm0, [ebp-0x30]
	movss [ebp-0x30], xmm0
	movss xmm0, dword [ebp-0x1104]
	addss xmm0, [ebp-0x2c]
	movss [ebp-0x2c], xmm0
	addss xmm5, [ebp-0x28]
	movss [ebp-0x28], xmm5
	addss xmm4, [ebp-0x24]
	movss [ebp-0x24], xmm4
	addss xmm3, [ebp-0x20]
	movss [ebp-0x20], xmm3
	addss xmm2, [ebp-0x1c]
	movss [ebp-0x1c], xmm2
	mov eax, [ebp-0xb8]
	mov [esi], eax
	mov eax, [ebp-0xb4]
	mov [esi+0x4], eax
	mov eax, [ebp-0xb0]
	mov [esi+0x8], eax
	mov eax, [ebp-0xac]
	mov [esi+0xc], eax
	mov eax, [ebp-0xa8]
	mov [edx], eax
	mov eax, [ebp-0xa4]
	mov [edx+0x4], eax
	mov eax, [ebp-0xa0]
	mov [edx+0x8], eax
	mov eax, [ebp-0x9c]
	mov [edx+0xc], eax
	mov eax, [ebp-0x38]
	mov [ecx], eax
	mov eax, [ebp-0x34]
	mov [ecx+0x4], eax
	mov eax, [ebp-0x30]
	mov [ecx+0x8], eax
	mov eax, [ebp-0x2c]
	mov [ecx+0xc], eax
	mov eax, [ebp-0x28]
	mov [ebx], eax
	mov eax, [ebp-0x24]
	mov [ebx+0x4], eax
	mov eax, [ebp-0x20]
	mov [ebx+0x8], eax
	mov eax, [ebp-0x1c]
	mov [ebx+0xc], eax
	add edi, [ebp-0x10d0]
	cmp [ebp-0x10f4], edi
	ja FFT_110
	add dword [ebp-0x10d8], 0x4
	mov eax, [ebp-0x10d8]
	cmp [ebp-0x10d4], eax
	ja FFT_120
FFT_90:
	mov edx, [ebp-0x10d0]
	sub dword [ebp-0x10dc], 0x1
	cmp [ebp-0x10f4], edx
	ja FFT_130
FFT_50:
	mov eax, [ebp-0x10f4]
	test eax, eax
	jz FFT_140
	mov ecx, [ebp+0x8]
	lea ebx, [ecx+0x8]
	mov [ebp-0x10c8], ebx
	lea eax, [ecx+0xc]
	mov [ebp-0x10c4], eax
	lea edx, [ecx+0x10]
	mov [ebp-0x10c0], edx
	lea edi, [ecx+0x14]
	lea esi, [ecx+0x18]
	lea ebx, [ecx+0x1c]
	mov dword [ebp-0x10bc], 0x0
	mov eax, [ebp-0x10bc]
FFT_150:
	shr eax, 0x2
	shl eax, 0x5
	lea edx, [ebp-0x18]
	add eax, edx
	mov edx, [eax-0x10a0]
	mov [ecx], edx
	mov edx, [eax-0x1090]
	mov [ecx+0x4], edx
	movss xmm0, dword [eax-0x109c]
	mov edx, [ebp-0x10c8]
	movss [edx], xmm0
	movss xmm0, dword [eax-0x108c]
	mov edx, [ebp-0x10c4]
	movss [edx], xmm0
	movss xmm0, dword [eax-0x1098]
	mov edx, [ebp-0x10c0]
	movss [edx], xmm0
	mov edx, [eax-0x1088]
	mov [edi], edx
	mov edx, [eax-0x1094]
	mov [esi], edx
	mov eax, [eax-0x1084]
	mov [ebx], eax
	add dword [ebp-0x10bc], 0x4
	add ecx, 0x20
	add dword [ebp-0x10c8], 0x20
	add dword [ebp-0x10c4], 0x20
	add dword [ebp-0x10c0], 0x20
	add edi, 0x20
	add esi, 0x20
	add ebx, 0x20
	mov eax, [ebp-0x10bc]
	cmp [ebp-0x10f4], eax
	ja FFT_150
FFT_140:
	add esp, 0x110c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	add [eax], al


;FFT_Init
FFT_Init:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edi, [ebp+0xc]
	xor esi, esi
	mov ebx, [ebp+0x8]
FFT_Init_30:
	mov dword [ebx], 0x0
	xor edx, edx
FFT_Init_20:
	mov eax, esi
	mov ecx, edx
	sar eax, cl
	test al, 0x1
	jz FFT_Init_10
	mov ecx, 0x7
	sub ecx, edx
	mov eax, 0x1
	shl eax, cl
	or [ebx], eax
FFT_Init_10:
	add edx, 0x1
	cmp edx, 0x8
	jnz FFT_Init_20
	cvtsi2sd xmm0, esi
	mulsd xmm0, [_double_0_02454369]
	cvtsd2ss xmm0, xmm0
	movss [ebp-0x1c], xmm0
	movss [esp], xmm0
	call sinf
	fstp dword [edi+0x4]
	movss xmm0, dword [ebp-0x1c]
	movss [esp], xmm0
	call cosf
	fstp dword [edi]
	add esi, 0x1
	add ebx, 0x4
	add edi, 0x8
	cmp esi, 0x100
	jnz FFT_Init_30
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Initialized global or static variables of fft:
SECTION .data


;Initialized constant data of fft:
SECTION .rdata
g_keepZ__uint4: dd 0x0, 0x0, 0xffffffff, 0x0
g_keepX__uint4: dd 0xffffffff, 0x0, 0x0, 0x0
g_keepZW__uint4: dd 0x0, 0x0, 0xffffffff, 0xffffffff
g_keepXY__uint4: dd 0xffffffff, 0xffffffff, 0x0, 0x0
g_keepXYZ__uint4: dd 0xffffffff, 0xffffffff, 0xffffffff, 0x0
g_keepXYW__uint4: dd 0xffffffff, 0xffffffff, 0x0, 0xffffffff
g_keepXZW__uint4: dd 0xffffffff, 0x0, 0xffffffff, 0xffffffff
g_keepYZW__uint4: dd 0x0, 0xffffffff, 0xffffffff, 0xffffffff
g_selectW__uint4: dd 0x10203, 0x4050607, 0x8090a0b, 0x1c1d1e1f
g_selectZ__uint4: dd 0x10203, 0x4050607, 0x18191a1b, 0xc0d0e0f
g_selectY__uint4: dd 0x10203, 0x14151617, 0x8090a0b, 0xc0d0e0f
g_selectX__uint4: dd 0x10111213, 0x4050607, 0x8090a0b, 0xc0d0e0f
g_swizzleWWWW__uint4: dd 0xc0d0e0f, 0xc0d0e0f, 0xc0d0e0f, 0xc0d0e0f
g_swizzleZZZZ__uint4: dd 0x8090a0b, 0x8090a0b, 0x8090a0b, 0x8090a0b
g_swizzleYYYY__uint4: dd 0x4050607, 0x4050607, 0x4050607, 0x4050607
g_swizzleXXXX__uint4: dd 0x10203, 0x10203, 0x10203, 0x10203
g_swizzleYZWA__uint4: dd 0x4050607, 0x8090a0b, 0xc0d0e0f, 0x10111213
g_swizzleZWAW__uint4: dd 0x8090a0b, 0xc0d0e0f, 0x10111213, 0xc0d0e0f
g_swizzleWABW__uint4: dd 0xc0d0e0f, 0x10111213, 0x14151617, 0xc0d0e0f
g_swizzleZXYW__uint4: dd 0x8090a0b, 0x10203, 0x4050607, 0xc0d0e0f
g_swizzleYZXW__uint4: dd 0x4050607, 0x8090a0b, 0x10203, 0xc0d0e0f
g_swizzleXYZA__uint4: dd 0x10203, 0x4050607, 0x8090a0b, 0x10111213
g_swizzleZWCD__uint4: dd 0x8090a0b, 0xc0d0e0f, 0x18191a1b, 0x1c1d1e1f
g_swizzleXYAB__uint4: dd 0x10203, 0x4050607, 0x10111213, 0x14151617
g_swizzleYBWD__uint4: dd 0x4050607, 0x14151617, 0xc0d0e0f, 0x1c1d1e1f
g_swizzleXAZC__uint4: dd 0x10203, 0x10111213, 0x8090a0b, 0x18191a1b
g_swizzleYXWZ__uint4: dd 0x4050607, 0x10203, 0xc0d0e0f, 0x8090a0b
g_swizzleXZYW__uint4: dd 0x10203, 0x8090a0b, 0x4050607, 0xc0d0e0f
g_swizzleYXZW__uint4: dd 0x4050607, 0x10203, 0x8090a0b, 0xc0d0e0f
g_swizzleXYZW__uint4: dd 0x10203, 0x4050607, 0x8090a0b, 0xc0d0e0f
g_inc__uint4: dd 0x1, 0x1, 0x1, 0x1
g_negativeZero__uint4: dd 0x80000000, 0x80000000, 0x80000000, 0x80000000
g_fltMin__uint4: dd 0x800000, 0x800000, 0x800000, 0x800000


;Zero initialized global or static variables of fft:
SECTION .bss
g_keepZ: resb 0x10
g_keepX: resb 0x10
g_keepZW: resb 0x10
g_keepXY: resb 0x10
g_keepXYZ: resb 0x10
g_keepXYW: resb 0x10
g_keepXZW: resb 0x10
g_keepYZW: resb 0x10
g_selectW: resb 0x10
g_selectZ: resb 0x10
g_selectY: resb 0x10
g_selectX: resb 0x10
g_swizzleWWWW: resb 0x10
g_swizzleZZZZ: resb 0x10
g_swizzleYYYY: resb 0x10
g_swizzleXXXX: resb 0x10
g_swizzleYZWA: resb 0x10
g_swizzleZWAW: resb 0x10
g_swizzleWABW: resb 0x10
g_swizzleZXYW: resb 0x10
g_swizzleYZXW: resb 0x10
g_swizzleXYZA: resb 0x10
g_swizzleZWCD: resb 0x10
g_swizzleXYAB: resb 0x10
g_swizzleYBWD: resb 0x10
g_swizzleXAZC: resb 0x10
g_swizzleYXWZ: resb 0x10
g_swizzleXZYW: resb 0x10
g_swizzleYXZW: resb 0x10
g_swizzleXYZW: resb 0x10
g_inc: resb 0x10
g_negativeZero: resb 0x10
g_fltMin: resb 0x80


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata
_double_0_02454369:		dq 0x3f9921fb54442d18	; 0.0245437

