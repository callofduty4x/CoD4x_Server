;Imports of g_debug:
	extern sinf
	extern cosf
	extern CL_AddDebugLine
	extern CL_AddDebugStar
	extern level
	extern Vec3NormalizeTo
	extern PerpendicularVector
	extern CL_AddDebugStarWithText

;Exports of g_debug:
	global _ZZ10G_DebugBoxPKfS0_S0_fS0_iiE10iEdgePairs
	global G_DebugBox
	global G_DebugLine
	global G_DebugStar
	global G_DebugCircle
	global G_DebugCircleEx
	global G_DebugStarWithText
	global G_DebugLineWithDuration


SECTION .text


;G_DebugBox(float const*, float const*, float const*, float, float const*, int, int)
G_DebugBox:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xac
	cvtss2sd xmm0, [ebp+0x14]
	mulsd xmm0, [_double_0_01745329]
	cvtsd2ss xmm0, xmm0
	movss [ebp-0x7c], xmm0
	movss [esp], xmm0
	call sinf
	fstp dword [ebp-0x80]
	movss xmm0, dword [ebp-0x7c]
	movss [esp], xmm0
	call cosf
	fstp dword [ebp-0x8c]
	movss xmm4, dword [ebp-0x8c]
	xor esi, esi
	lea eax, [ebp-0x78]
	mov [ebp-0x90], eax
	mov ebx, eax
	mov dword [ebp-0x84], 0x0
G_DebugBox_30:
	lea edx, [ebp-0x78]
	add edx, [ebp-0x84]
	xor ecx, ecx
G_DebugBox_20:
	mov eax, 0x1
	shl eax, cl
	test esi, eax
	jz G_DebugBox_10
	mov edi, [ebp+0x10]
	mov eax, [edi+ecx*4]
G_DebugBox_50:
	mov [edx], eax
	add ecx, 0x1
	add edx, 0x4
	cmp ecx, 0x3
	jnz G_DebugBox_20
	mov eax, [ebp-0x90]
	movss xmm0, dword [eax]
	movss xmm3, dword [eax+0x4]
	movaps xmm2, xmm4
	mulss xmm2, xmm0
	movss xmm1, dword [ebp-0x80]
	mulss xmm1, xmm3
	subss xmm2, xmm1
	mulss xmm0, [ebp-0x80]
	mulss xmm3, xmm4
	addss xmm0, xmm3
	mov edi, [ebp+0x8]
	addss xmm2, [edi]
	movss [ebx], xmm2
	addss xmm0, [edi+0x4]
	movss [ebx+0x4], xmm0
	movss xmm0, dword [ebx+0x8]
	addss xmm0, [edi+0x8]
	movss [ebx+0x8], xmm0
	add esi, 0x1
	add dword [ebp-0x84], 0xc
	add ebx, 0xc
	add eax, 0xc
	mov [ebp-0x90], eax
	cmp esi, 0x8
	jnz G_DebugBox_30
	mov ebx, _ZZ10G_DebugBoxPKfS0_S0_fS0_iiE10iEdgePairs+0x4
	mov esi, _ZZ10G_DebugBoxPKfS0_S0_fS0_iiE10iEdgePairs+0x64
G_DebugBox_40:
	mov dword [esp+0x14], 0x1
	mov eax, [ebp+0x20]
	mov [esp+0x10], eax
	mov edi, [ebp+0x1c]
	mov [esp+0xc], edi
	mov eax, [ebp+0x18]
	mov [esp+0x8], eax
	mov eax, [ebx]
	lea eax, [eax+eax*2]
	lea eax, [ebp+eax*4-0x78]
	mov [esp+0x4], eax
	mov eax, [ebx-0x4]
	lea eax, [eax+eax*2]
	lea eax, [ebp+eax*4-0x78]
	mov [esp], eax
	call CL_AddDebugLine
	add ebx, 0x8
	cmp esi, ebx
	jnz G_DebugBox_40
	add esp, 0xac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
G_DebugBox_10:
	mov edi, [ebp+0xc]
	mov eax, [edi+ecx*4]
	jmp G_DebugBox_50


;G_DebugLine(float const*, float const*, float const*, int)
G_DebugLine:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	mov dword [esp+0x14], 0x1
	mov dword [esp+0x10], 0x0
	mov eax, [ebp+0x14]
	mov [esp+0xc], eax
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CL_AddDebugLine
	leave
	ret


;G_DebugStar(float const*, float const*)
G_DebugStar:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0xc], 0x1
	mov dword [esp+0x8], 0x0
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CL_AddDebugStar
	leave
	ret


;G_DebugCircle(float const*, float, float const*, int, int, int)
G_DebugCircle:
	push ebp
	mov ebp, esp
	sub esp, 0x38
	mov ecx, [ebp+0x8]
	mov eax, [ebp+0x18]
	test eax, eax
	jz G_DebugCircle_10
	xor eax, eax
	mov [ebp-0x14], eax
	mov [ebp-0x10], eax
	mov dword [ebp-0xc], 0x3f800000
G_DebugCircle_20:
	mov eax, [ebp+0x1c]
	mov [esp+0x14], eax
	mov eax, [ebp+0x14]
	mov [esp+0x10], eax
	mov eax, [ebp+0x10]
	mov [esp+0xc], eax
	lea eax, [ebp-0x14]
	mov [esp+0x8], eax
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], ecx
	call G_DebugCircleEx
	leave
	ret
G_DebugCircle_10:
	mov eax, level
	mov edx, [eax]
	lea eax, [edx+0x1c]
	movss xmm2, dword [eax+0x4]
	movss xmm1, dword [eax+0x8]
	addss xmm1, [edx+0x118]
	movss xmm0, dword [ecx]
	subss xmm0, [edx+0x1c]
	movss [ebp-0x14], xmm0
	movss xmm0, dword [ecx+0x4]
	subss xmm0, xmm2
	movss [ebp-0x10], xmm0
	movss xmm0, dword [ecx+0x8]
	subss xmm0, xmm1
	movss [ebp-0xc], xmm0
	jmp G_DebugCircle_20


;G_DebugCircleEx(float const*, float, float const*, float const*, int, int)
G_DebugCircleEx:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x16c
	lea ebx, [ebp-0x24]
	mov [esp+0x4], ebx
	mov eax, [ebp+0x10]
	mov [esp], eax
	call Vec3NormalizeTo
	fstp st0
	lea eax, [ebp-0x30]
	mov [esp+0x4], eax
	mov [esp], ebx
	call PerpendicularVector
	movss xmm2, dword [ebp-0x20]
	movss xmm0, dword [ebp-0x28]
	movss [ebp-0x11c], xmm0
	movss xmm3, dword [ebp-0x1c]
	movss xmm1, dword [ebp-0x2c]
	movss [ebp-0x118], xmm1
	mulss xmm0, xmm2
	movss [ebp-0x104], xmm0
	movaps xmm0, xmm1
	mulss xmm0, xmm3
	movss xmm1, dword [ebp-0x104]
	subss xmm1, xmm0
	movss [ebp-0x104], xmm1
	movss xmm0, dword [ebp-0x30]
	movss [ebp-0x114], xmm0
	movss xmm1, dword [ebp-0x24]
	mulss xmm3, xmm0
	movss xmm0, dword [ebp-0x11c]
	mulss xmm0, xmm1
	subss xmm3, xmm0
	movss [ebp-0x108], xmm3
	mulss xmm1, [ebp-0x118]
	mulss xmm2, [ebp-0x114]
	subss xmm1, xmm2
	movss [ebp-0x10c], xmm1
	mov eax, [ebp+0x8]
	add eax, 0x4
	mov [ebp-0x100], eax
	mov eax, [ebp+0x8]
	add eax, 0x8
	mov [ebp-0xfc], eax
	xor esi, esi
	lea edi, [ebp-0xf0]
	mov ebx, edi
G_DebugCircleEx_10:
	movd xmm0, esi
	pxor xmm1, xmm1
	punpckldq xmm1, xmm0
	movdqa xmm0, xmm1
	punpckldq xmm0, [_data16_45300000]
	subpd xmm0, [_data16_0]
	movapd [ebp-0x138], xmm0
	movapd xmm1, xmm0
	movhpd [ebp-0x138], xmm0
	addpd xmm1, [ebp-0x138]
	movapd [ebp-0x138], xmm1
	movsd xmm0, qword [ebp-0x138]
	mulsd xmm0, [_double_0_39269908]
	cvtsd2ss xmm0, xmm0
	movss [ebp-0x110], xmm0
	movss [esp], xmm0
	call sinf
	fstp dword [ebp-0x14c]
	movss xmm1, dword [ebp-0x14c]
	mulss xmm1, [ebp+0xc]
	movss xmm3, dword [ebp-0x110]
	movss [esp], xmm3
	movss [ebp-0x148], xmm1
	call cosf
	fstp dword [ebp-0x14c]
	movss xmm2, dword [ebp-0x14c]
	mulss xmm2, [ebp+0xc]
	movss xmm1, dword [ebp-0x148]
	movss xmm0, dword [ebp-0x104]
	mulss xmm0, xmm1
	mov eax, [ebp+0x8]
	addss xmm0, [eax]
	movss [ebx], xmm0
	movss xmm0, dword [ebp-0x108]
	mulss xmm0, xmm1
	mov eax, [ebp-0x100]
	addss xmm0, [eax]
	movss [ebx+0x4], xmm0
	mulss xmm1, [ebp-0x10c]
	mov eax, [ebp-0xfc]
	addss xmm1, [eax]
	movss [ebx+0x8], xmm1
	movss xmm0, dword [ebp-0x114]
	mulss xmm0, xmm2
	addss xmm0, [ebx]
	movss [ebx], xmm0
	movss xmm0, dword [ebp-0x118]
	mulss xmm0, xmm2
	addss xmm0, [ebx+0x4]
	movss [ebx+0x4], xmm0
	mulss xmm2, [ebp-0x11c]
	addss xmm2, xmm1
	movss [ebx+0x8], xmm2
	add esi, 0x1
	add ebx, 0xc
	cmp esi, 0x10
	jnz G_DebugCircleEx_10
	xor edx, edx
	jmp G_DebugCircleEx_20
G_DebugCircleEx_30:
	mov edx, ebx
G_DebugCircleEx_20:
	lea ebx, [edx+0x1]
	mov dword [esp+0x14], 0x1
	mov eax, [ebp+0x1c]
	mov [esp+0x10], eax
	mov eax, [ebp+0x18]
	mov [esp+0xc], eax
	mov eax, [ebp+0x14]
	mov [esp+0x8], eax
	mov eax, ebx
	and eax, 0xf
	lea eax, [eax+eax*2]
	lea eax, [edi+eax*4]
	mov [esp+0x4], eax
	lea eax, [edx+edx*2]
	lea eax, [edi+eax*4]
	mov [esp], eax
	call CL_AddDebugLine
	cmp ebx, 0x10
	jnz G_DebugCircleEx_30
	add esp, 0x16c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;G_DebugStarWithText(float const*, float const*, float const*, char const*, float)
G_DebugStarWithText:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	mov dword [esp+0x18], 0x1
	mov dword [esp+0x14], 0x0
	mov eax, [ebp+0x18]
	mov [esp+0x10], eax
	mov eax, [ebp+0x14]
	mov [esp+0xc], eax
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CL_AddDebugStarWithText
	leave
	ret
	nop
	add [eax], al


;G_DebugLineWithDuration(float const*, float const*, float const*, int, int)
G_DebugLineWithDuration:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	mov dword [esp+0x14], 0x1
	mov eax, [ebp+0x18]
	mov [esp+0x10], eax
	mov eax, [ebp+0x14]
	mov [esp+0xc], eax
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CL_AddDebugLine
	leave
	ret
	nop


;Initialized global or static variables of g_debug:
SECTION .data


;Initialized constant data of g_debug:
SECTION .rdata
_ZZ10G_DebugBoxPKfS0_S0_fS0_iiE10iEdgePairs: dd 0x0, 0x1, 0x0, 0x2, 0x0, 0x4, 0x1, 0x3, 0x1, 0x5, 0x2, 0x3, 0x2, 0x6, 0x3, 0x7, 0x4, 0x5, 0x4, 0x6, 0x5, 0x7, 0x6, 0x7, 0x45300000, 0x43300000, 0x0, 0x0, 0x0, 0x45300000, 0x0, 0x43300000, 0x7fffffff, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x7fffffff, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0


;Zero initialized global or static variables of g_debug:
SECTION .bss


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata
_double_0_01745329:		dq 0x3f91df46a2529d39	; 0.0174533
_double_0_39269908:		dq 0x3fd921fb54442d18	; 0.392699

align   16,db 0
_data16_45300000:		dd 0x45300000, 0x43300000, 0x0, 0x0	; DQWORD
_data16_0:		dd 0x0, 0x45300000, 0x0, 0x43300000	; DQWORD