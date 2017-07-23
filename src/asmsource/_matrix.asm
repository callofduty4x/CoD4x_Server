;Imports of matrix:

;Exports of matrix:
	global dInvertPDMatrix3
	global dSetValue
	global dSetZero


SECTION .text


;dInvertPDMatrix3
dInvertPDMatrix3:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x64
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov [ebp-0x58], eax
	mov eax, [edx+0x4]
	mov [ebp-0x54], eax
	mov eax, [edx+0x8]
	mov [ebp-0x50], eax
	mov eax, [edx+0xc]
	mov [ebp-0x4c], eax
	mov eax, [edx+0x10]
	mov [ebp-0x48], eax
	mov eax, [edx+0x14]
	mov [ebp-0x44], eax
	mov eax, [edx+0x18]
	mov [ebp-0x40], eax
	mov eax, [edx+0x1c]
	mov [ebp-0x3c], eax
	mov eax, [edx+0x20]
	mov [ebp-0x38], eax
	mov eax, [edx+0x24]
	mov [ebp-0x34], eax
	mov eax, [edx+0x28]
	mov [ebp-0x30], eax
	mov eax, [edx+0x2c]
	mov [ebp-0x2c], eax
	lea eax, [ebp-0x58]
	mov [ebp-0x64], eax
	mov dword [ebp-0x68], 0x0
	pxor xmm2, xmm2
	movss xmm3, dword [_float_1_00000000]
dInvertPDMatrix3_50:
	mov eax, [ebp-0x68]
	test eax, eax
	jg dInvertPDMatrix3_10
	mov esi, [ebp-0x64]
dInvertPDMatrix3_210:
	movss xmm1, dword [esi]
	mov edi, [ebp-0x68]
	test edi, edi
	jz dInvertPDMatrix3_20
	mov eax, [ebp-0x64]
	xor edx, edx
dInvertPDMatrix3_30:
	movss xmm0, dword [eax]
	mulss xmm0, xmm0
	subss xmm1, xmm0
	add eax, 0x4
	add edx, 0x1
	cmp edx, [ebp-0x68]
	jnz dInvertPDMatrix3_30
dInvertPDMatrix3_20:
	ucomiss xmm2, xmm1
	jae dInvertPDMatrix3_40
	sqrtss xmm0, xmm1
	movss [esi], xmm0
	movaps xmm1, xmm3
	divss xmm1, xmm0
	mov eax, [ebp-0x68]
	movss [ebp+eax*4-0x28], xmm1
	add dword [ebp-0x64], 0x10
	add eax, 0x1
	mov [ebp-0x68], eax
	cmp eax, 0x3
	jnz dInvertPDMatrix3_50
	mov eax, [ebp+0xc]
	mov edx, 0xc
dInvertPDMatrix3_60:
	mov dword [eax], 0x0
	add eax, 0x4
	sub edx, 0x1
	jnz dInvertPDMatrix3_60
	mov eax, [ebp+0xc]
	mov [ebp-0x6c], eax
	mov dword [ebp-0x70], 0x0
dInvertPDMatrix3_150:
	mov eax, 0x1
dInvertPDMatrix3_70:
	mov dword [ebp+eax*4-0x20], 0x0
	add eax, 0x1
	cmp eax, 0x4
	jnz dInvertPDMatrix3_70
	mov eax, [ebp-0x70]
	mov dword [ebp+eax*4-0x1c], 0x3f800000
	xor ebx, ebx
	xor ecx, ecx
dInvertPDMatrix3_90:
	movaps xmm1, xmm2
dInvertPDMatrix3_110:
	lea eax, [ecx*4]
	movss xmm0, dword [ebp+eax-0x1c]
	subss xmm0, xmm1
	lea edx, [ecx+ebx]
	divss xmm0, dword [ebp+edx*4-0x58]
	movss [ebp+eax-0x28], xmm0
	add ecx, 0x1
	add ebx, 0x4
	cmp ecx, 0x3
	jz dInvertPDMatrix3_80
	test ecx, ecx
	jle dInvertPDMatrix3_90
	mov eax, ecx
	shl eax, 0x4
	xor edx, edx
	movaps xmm1, xmm2
dInvertPDMatrix3_100:
	movss xmm0, dword [ebp+eax-0x58]
	mulss xmm0, [ebp+edx*4-0x28]
	addss xmm1, xmm0
	add edx, 0x1
	add eax, 0x4
	cmp ecx, edx
	jnz dInvertPDMatrix3_100
	jmp dInvertPDMatrix3_110
dInvertPDMatrix3_80:
	mov ebx, 0x3
	mov edi, 0x38
	mov esi, 0xc
dInvertPDMatrix3_130:
	mov ecx, ebx
	cmp ebx, 0x2
	jle dInvertPDMatrix3_120
	movaps xmm1, xmm2
dInvertPDMatrix3_170:
	movss xmm0, dword [esi+ebp-0x2c]
	subss xmm0, xmm1
	divss xmm0, dword [edi+ebp-0x68]
	movss [esi+ebp-0x20], xmm0
	sub esi, 0x4
	sub edi, 0x14
	sub ebx, 0x1
	jnz dInvertPDMatrix3_130
	mov edx, [ebp-0x6c]
	mov ecx, 0x1
dInvertPDMatrix3_140:
	mov eax, [ebp+ecx*4-0x20]
	mov [edx], eax
	add ecx, 0x1
	add edx, 0x10
	cmp ecx, 0x4
	jnz dInvertPDMatrix3_140
	add dword [ebp-0x70], 0x1
	add dword [ebp-0x6c], 0x4
	cmp dword [ebp-0x70], 0x3
	jnz dInvertPDMatrix3_150
	mov eax, 0x1
	add esp, 0x64
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
dInvertPDMatrix3_120:
	mov edx, edi
	lea eax, [ebx*4]
	movaps xmm1, xmm2
dInvertPDMatrix3_160:
	movss xmm0, dword [ebp+edx-0x58]
	mulss xmm0, [ebp+eax-0x1c]
	addss xmm1, xmm0
	add ecx, 0x1
	add edx, 0x10
	add eax, 0x4
	cmp ecx, 0x3
	jnz dInvertPDMatrix3_160
	jmp dInvertPDMatrix3_170
dInvertPDMatrix3_10:
	mov esi, [ebp-0x64]
	lea edi, [ebp-0x58]
	xor ebx, ebx
dInvertPDMatrix3_200:
	movss xmm1, dword [esi]
	test ebx, ebx
	jz dInvertPDMatrix3_180
	mov edx, [ebp-0x64]
	mov eax, edi
	xor ecx, ecx
dInvertPDMatrix3_190:
	movss xmm0, dword [edx]
	mulss xmm0, [eax]
	subss xmm1, xmm0
	add edx, 0x4
	add eax, 0x4
	add ecx, 0x1
	cmp ecx, ebx
	jnz dInvertPDMatrix3_190
dInvertPDMatrix3_180:
	mulss xmm1, [ebp+ebx*4-0x28]
	movss [esi], xmm1
	add edi, 0x10
	add esi, 0x4
	add ebx, 0x1
	cmp ebx, [ebp-0x68]
	jnz dInvertPDMatrix3_200
	jmp dInvertPDMatrix3_210
dInvertPDMatrix3_40:
	xor eax, eax
	add esp, 0x64
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	add [eax], al


;dSetValue
dSetValue:
	push ebp
	mov ebp, esp
	push ebx
	mov eax, [ebp+0x8]
	mov ecx, [ebp+0xc]
	mov ebx, [ebp+0x10]
	test ecx, ecx
	jle dSetValue_10
	xor edx, edx
dSetValue_20:
	mov [eax], ebx
	add eax, 0x4
	add edx, 0x1
	cmp ecx, edx
	jnz dSetValue_20
dSetValue_10:
	pop ebx
	pop ebp
	ret


;dSetZero
dSetZero:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov ecx, [ebp+0xc]
	test ecx, ecx
	jle dSetZero_10
	xor edx, edx
dSetZero_20:
	mov dword [eax], 0x0
	add eax, 0x4
	add edx, 0x1
	cmp ecx, edx
	jnz dSetZero_20
dSetZero_10:
	pop ebp
	ret
	nop


;Initialized global or static variables of matrix:
SECTION .data


;Initialized constant data of matrix:
SECTION .rdata


;Zero initialized global or static variables of matrix:
SECTION .bss


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata
_float_1_00000000:		dd 0x3f800000	; 1

