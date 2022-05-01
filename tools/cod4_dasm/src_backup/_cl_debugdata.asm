;Imports of cl_debugdata:
	extern cls
	extern _Z12R_DebugAllocPPviPKc
	extern strncpy
	extern _Z11R_DebugFreePPv
	extern memset
	extern _Z15R_ShutdownDebugv
	extern _Z14R_DebugFreeAllv
	extern memcpy
	extern _Z18R_CopyDebugStringsP15trDebugString_tiS0_ii
	extern _Z16R_CopyDebugLinesP13trDebugLine_tiS0_ii

;Exports of cl_debugdata:
	global _Z26CreateDebugStringsIfNeededv
	global _Z24CreateDebugLinesIfNeededv
	global _ZZ15CL_AddDebugStarPKfS0_iiE15MYNULLTEXTCOLOR
	global _Z15CL_AddDebugLinePKfS0_S0_iii
	global _Z15CL_AddDebugStarPKfS0_ii
	global _Z17CL_AddDebugStringPKfS0_fPKcii
	global _Z20CL_ShutdownDebugDatav
	global _Z23CL_AddDebugStarWithTextPKfS0_S0_PKcfii
	global _Z23CL_FlushDebugClientDatav
	global _Z23CL_FlushDebugServerDatav
	global _Z24CL_UpdateDebugClientDatav
	global _Z24CL_UpdateDebugServerDatav


SECTION .text


;CreateDebugStringsIfNeeded()
_Z26CreateDebugStringsIfNeededv:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, cls
	mov eax, [ebx+0x2dc03c]
	test eax, eax
	jz _Z26CreateDebugStringsIfNeededv_10
_Z26CreateDebugStringsIfNeededv_30:
	mov eax, [ebx+0x2dc040]
	test eax, eax
	jz _Z26CreateDebugStringsIfNeededv_20
	mov ecx, [ebx+0x2dc05c]
	test ecx, ecx
	jz _Z26CreateDebugStringsIfNeededv_20
	mov edx, [ebx+0x2dc060]
	test edx, edx
	jz _Z26CreateDebugStringsIfNeededv_20
	mov eax, [ebx+0x2dc04c]
	test eax, eax
	jz _Z26CreateDebugStringsIfNeededv_20
	mov eax, 0x1
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z26CreateDebugStringsIfNeededv_10:
	mov dword [ebx+0x2dc034], 0x80
	mov dword [ebx+0x2dc054], 0x80
	mov dword [ebx+0x2dc044], 0x80
	lea edx, [ebx+0x2dc03c]
	mov dword [esp+0x8], _cstring_client_debug_str
	mov eax, [ebx+0x2dc034]
	shl eax, 0x7
	mov [esp+0x4], eax
	mov [esp], edx
	call _Z12R_DebugAllocPPviPKc
	lea edx, [ebx+0x2dc040]
	mov dword [esp+0x8], _cstring_client_debug_str
	mov eax, [ebx+0x2dc034]
	shl eax, 0x2
	mov [esp+0x4], eax
	mov [esp], edx
	call _Z12R_DebugAllocPPviPKc
	mov dword [ebx+0x2dc038], 0x0
	lea edx, [ebx+0x2dc05c]
	mov dword [esp+0x8], _cstring_client_debug_str
	mov eax, [ebx+0x2dc054]
	shl eax, 0x7
	mov [esp+0x4], eax
	mov [esp], edx
	call _Z12R_DebugAllocPPviPKc
	lea edx, [ebx+0x2dc060]
	mov dword [esp+0x8], _cstring_client_debug_str
	mov eax, [ebx+0x2dc054]
	shl eax, 0x2
	mov [esp+0x4], eax
	mov [esp], edx
	call _Z12R_DebugAllocPPviPKc
	mov dword [ebx+0x2dc058], 0x0
	lea edx, [ebx+0x2dc04c]
	mov dword [esp+0x8], _cstring_client_debug_str
	mov eax, [ebx+0x2dc054]
	shl eax, 0x7
	mov [esp+0x4], eax
	mov [esp], edx
	call _Z12R_DebugAllocPPviPKc
	mov dword [ebx+0x2dc048], 0x0
	mov eax, [ebx+0x2dc03c]
	test eax, eax
	jnz _Z26CreateDebugStringsIfNeededv_30
_Z26CreateDebugStringsIfNeededv_20:
	xor eax, eax
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;CreateDebugLinesIfNeeded()
_Z24CreateDebugLinesIfNeededv:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, cls
	mov eax, [ebx+0x2dc06c]
	test eax, eax
	jz _Z24CreateDebugLinesIfNeededv_10
_Z24CreateDebugLinesIfNeededv_30:
	mov edx, [ebx+0x2dc070]
	test edx, edx
	jz _Z24CreateDebugLinesIfNeededv_20
	mov eax, [ebx+0x2dc08c]
	test eax, eax
	jz _Z24CreateDebugLinesIfNeededv_20
	mov eax, [ebx+0x2dc090]
	test eax, eax
	jz _Z24CreateDebugLinesIfNeededv_20
	mov eax, [ebx+0x2dc07c]
	test eax, eax
	jz _Z24CreateDebugLinesIfNeededv_20
	mov eax, 0x1
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z24CreateDebugLinesIfNeededv_10:
	mov dword [ebx+0x2dc064], 0x800
	mov dword [ebx+0x2dc084], 0x800
	mov dword [ebx+0x2dc074], 0x800
	lea eax, [ebx+0x2dc06c]
	mov dword [esp+0x8], _cstring_client_debug_lin
	mov dword [esp+0x4], 0x16000
	mov [esp], eax
	call _Z12R_DebugAllocPPviPKc
	lea eax, [ebx+0x2dc070]
	mov dword [esp+0x8], _cstring_client_debug_lin
	mov dword [esp+0x4], 0x2000
	mov [esp], eax
	call _Z12R_DebugAllocPPviPKc
	mov dword [ebx+0x2dc068], 0x0
	lea eax, [ebx+0x2dc08c]
	mov dword [esp+0x8], _cstring_client_debug_lin
	mov dword [esp+0x4], 0x16000
	mov [esp], eax
	call _Z12R_DebugAllocPPviPKc
	lea eax, [ebx+0x2dc090]
	mov dword [esp+0x8], _cstring_client_debug_lin
	mov dword [esp+0x4], 0x2000
	mov [esp], eax
	call _Z12R_DebugAllocPPviPKc
	mov dword [ebx+0x2dc088], 0x0
	lea eax, [ebx+0x2dc07c]
	mov dword [esp+0x8], _cstring_client_debug_lin
	mov dword [esp+0x4], 0x16000
	mov [esp], eax
	call _Z12R_DebugAllocPPviPKc
	mov dword [ebx+0x2dc078], 0x0
	mov ecx, [ebx+0x2dc06c]
	test ecx, ecx
	jnz _Z24CreateDebugLinesIfNeededv_30
_Z24CreateDebugLinesIfNeededv_20:
	xor eax, eax
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;CL_AddDebugLine(float const*, float const*, float const*, int, int, int)
_Z15CL_AddDebugLinePKfS0_S0_iii:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov ebx, cls
	mov eax, [ebx+0x108]
	test eax, eax
	jnz _Z15CL_AddDebugLinePKfS0_S0_iii_10
_Z15CL_AddDebugLinePKfS0_S0_iii_20:
	pop ebx
	pop esi
	pop ebp
	ret
_Z15CL_AddDebugLinePKfS0_S0_iii_10:
	call _Z24CreateDebugLinesIfNeededv
	test al, al
	jz _Z15CL_AddDebugLinePKfS0_S0_iii_20
	mov esi, [ebp+0x1c]
	test esi, esi
	jz _Z15CL_AddDebugLinePKfS0_S0_iii_30
	add ebx, 0x2dc084
_Z15CL_AddDebugLinePKfS0_S0_iii_50:
	mov ecx, [ebx+0x4]
	lea eax, [ecx+0x1]
	cmp eax, [ebx]
	jg _Z15CL_AddDebugLinePKfS0_S0_iii_40
	lea edx, [ecx+ecx*4]
	lea edx, [ecx+edx*2]
	mov eax, [ebx+0x8]
	lea edx, [eax+edx*4]
	mov ecx, [ebp+0x8]
	mov eax, [ecx]
	mov [edx], eax
	mov eax, [ecx+0x4]
	mov [edx+0x4], eax
	mov eax, [ecx+0x8]
	mov [edx+0x8], eax
	lea ecx, [edx+0xc]
	mov esi, [ebp+0xc]
	mov eax, [esi]
	mov [edx+0xc], eax
	mov eax, [esi+0x4]
	mov [ecx+0x4], eax
	mov eax, [esi+0x8]
	mov [ecx+0x8], eax
	lea ecx, [edx+0x18]
	mov esi, [ebp+0x10]
	mov eax, [esi]
	mov [edx+0x18], eax
	mov eax, [esi+0x4]
	mov [ecx+0x4], eax
	mov eax, [esi+0x8]
	mov [ecx+0x8], eax
	mov eax, [esi+0xc]
	mov [ecx+0xc], eax
	mov eax, [ebp+0x14]
	mov [edx+0x28], eax
	mov edx, [ebx+0x4]
	mov eax, [ebx+0xc]
	mov ecx, [ebp+0x18]
	mov [eax+edx*4], ecx
	add dword [ebx+0x4], 0x1
_Z15CL_AddDebugLinePKfS0_S0_iii_40:
	mov ebx, [ebp+0x1c]
	test ebx, ebx
	jz _Z15CL_AddDebugLinePKfS0_S0_iii_20
	mov eax, cls
	mov dword [eax+0x2dc030], 0x1
	pop ebx
	pop esi
	pop ebp
	ret
_Z15CL_AddDebugLinePKfS0_S0_iii_30:
	add ebx, 0x2dc064
	jmp _Z15CL_AddDebugLinePKfS0_S0_iii_50
	nop


;CL_AddDebugStar(float const*, float const*, int, int)
_Z15CL_AddDebugStarPKfS0_ii:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	mov eax, [ebp+0x14]
	mov [esp+0x18], eax
	mov eax, [ebp+0x10]
	mov [esp+0x14], eax
	mov dword [esp+0x10], 0x3f800000
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], _ZZ15CL_AddDebugStarPKfS0_iiE15MYNULLTEXTCOLOR
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z23CL_AddDebugStarWithTextPKfS0_S0_PKcfii
	leave
	ret
	add [eax], al


;CL_AddDebugString(float const*, float const*, float, char const*, int, int)
_Z17CL_AddDebugStringPKfS0_fPKcii:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, cls
	mov eax, [ebx+0x108]
	test eax, eax
	jnz _Z17CL_AddDebugStringPKfS0_fPKcii_10
_Z17CL_AddDebugStringPKfS0_fPKcii_20:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z17CL_AddDebugStringPKfS0_fPKcii_10:
	call _Z26CreateDebugStringsIfNeededv
	test al, al
	jz _Z17CL_AddDebugStringPKfS0_fPKcii_20
	mov eax, [ebp+0x18]
	test eax, eax
	jz _Z17CL_AddDebugStringPKfS0_fPKcii_30
	lea esi, [ebx+0x2dc054]
_Z17CL_AddDebugStringPKfS0_fPKcii_50:
	mov edx, [esi+0x4]
	lea eax, [edx+0x1]
	cmp eax, [esi]
	jle _Z17CL_AddDebugStringPKfS0_fPKcii_40
_Z17CL_AddDebugStringPKfS0_fPKcii_60:
	mov eax, [ebp+0x18]
	test eax, eax
	jz _Z17CL_AddDebugStringPKfS0_fPKcii_20
	mov eax, cls
	mov dword [eax+0x2dc030], 0x1
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z17CL_AddDebugStringPKfS0_fPKcii_30:
	lea esi, [ebx+0x2dc034]
	jmp _Z17CL_AddDebugStringPKfS0_fPKcii_50
_Z17CL_AddDebugStringPKfS0_fPKcii_40:
	mov ebx, edx
	shl ebx, 0x7
	add ebx, [esi+0x8]
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov [ebx], eax
	mov eax, [edx+0x4]
	mov [ebx+0x4], eax
	mov eax, [edx+0x8]
	mov [ebx+0x8], eax
	lea edx, [ebx+0xc]
	mov ecx, [ebp+0xc]
	mov eax, [ecx]
	mov [ebx+0xc], eax
	mov eax, [ecx+0x4]
	mov [edx+0x4], eax
	mov eax, [ecx+0x8]
	mov [edx+0x8], eax
	mov eax, [ecx+0xc]
	mov [edx+0xc], eax
	movss xmm0, dword [ebp+0x10]
	movss [ebx+0x1c], xmm0
	mov dword [esp+0x8], 0x5f
	mov eax, [ebp+0x14]
	mov [esp+0x4], eax
	lea eax, [ebx+0x20]
	mov [esp], eax
	call strncpy
	mov byte [ebx+0x7f], 0x0
	mov edx, [esi+0x4]
	mov eax, [esi+0xc]
	mov ecx, [ebp+0x1c]
	mov [eax+edx*4], ecx
	add dword [esi+0x4], 0x1
	jmp _Z17CL_AddDebugStringPKfS0_fPKcii_60
	nop


;CL_ShutdownDebugData()
_Z20CL_ShutdownDebugDatav:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, cls
	add eax, 0x2dc06c
	mov [esp], eax
	call _Z11R_DebugFreePPv
	mov eax, cls
	add eax, 0x2dc070
	mov [esp], eax
	call _Z11R_DebugFreePPv
	mov eax, cls
	add eax, 0x2dc08c
	mov [esp], eax
	call _Z11R_DebugFreePPv
	mov eax, cls
	add eax, 0x2dc090
	mov [esp], eax
	call _Z11R_DebugFreePPv
	mov eax, cls
	add eax, 0x2dc07c
	mov [esp], eax
	call _Z11R_DebugFreePPv
	mov eax, cls
	add eax, 0x2dc080
	mov [esp], eax
	call _Z11R_DebugFreePPv
	mov eax, cls
	add eax, 0x2dc03c
	mov [esp], eax
	call _Z11R_DebugFreePPv
	mov eax, cls
	add eax, 0x2dc040
	mov [esp], eax
	call _Z11R_DebugFreePPv
	mov eax, cls
	add eax, 0x2dc05c
	mov [esp], eax
	call _Z11R_DebugFreePPv
	mov eax, cls
	add eax, 0x2dc060
	mov [esp], eax
	call _Z11R_DebugFreePPv
	mov eax, cls
	add eax, 0x2dc04c
	mov [esp], eax
	call _Z11R_DebugFreePPv
	mov eax, cls
	add eax, 0x2dc050
	mov [esp], eax
	call _Z11R_DebugFreePPv
	mov eax, cls
	add eax, 0x2dc02c
	mov dword [esp+0x8], 0x68
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call memset
	call _Z15R_ShutdownDebugv
	leave
	jmp _Z14R_DebugFreeAllv
	nop


;CL_AddDebugStarWithText(float const*, float const*, float const*, char const*, float, int, int)
_Z23CL_AddDebugStarWithTextPKfS0_S0_PKcfii:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x7c
	mov edi, [ebp+0x8]
	movss xmm1, dword [ebp+0x18]
	mulss xmm1, [_float_5_00000000]
	movss xmm0, dword [edi]
	lea eax, [edi+0x4]
	mov [ebp-0x4c], eax
	movss xmm2, dword [edi+0x4]
	lea edx, [edi+0x8]
	mov [ebp-0x48], edx
	movss xmm3, dword [edi+0x8]
	movss [ebp-0x44], xmm3
	movaps xmm3, xmm1
	addss xmm3, xmm0
	movss [ebp-0x20], xmm3
	subss xmm0, xmm1
	movss [ebp-0x38], xmm0
	mov ebx, cls
	mov edx, [ebx+0x108]
	test edx, edx
	jnz _Z23CL_AddDebugStarWithTextPKfS0_S0_PKcfii_10
	movaps xmm0, xmm3
_Z23CL_AddDebugStarWithTextPKfS0_S0_PKcfii_190:
	subss xmm0, xmm1
	movss [ebp-0x1c], xmm0
	movss xmm3, dword [ebp-0x38]
	addss xmm3, xmm1
	movss [ebp-0x24], xmm3
	movaps xmm0, xmm1
	addss xmm0, xmm2
	movss [ebp-0x2c], xmm0
	subss xmm2, xmm1
	movss [ebp-0x3c], xmm2
	mov eax, [ebx+0x108]
	test eax, eax
	jnz _Z23CL_AddDebugStarWithTextPKfS0_S0_PKcfii_20
	movaps xmm3, xmm2
_Z23CL_AddDebugStarWithTextPKfS0_S0_PKcfii_140:
	subss xmm0, xmm1
	movss [ebp-0x28], xmm0
	addss xmm3, xmm1
	movss [ebp-0x30], xmm3
	movss xmm0, dword [ebp-0x44]
	addss xmm0, xmm1
	movss [ebp-0x34], xmm0
	movss xmm3, dword [ebp-0x44]
	subss xmm3, xmm1
	movss [ebp-0x40], xmm3
	mov eax, [ebx+0x108]
	test eax, eax
	jnz _Z23CL_AddDebugStarWithTextPKfS0_S0_PKcfii_30
_Z23CL_AddDebugStarWithTextPKfS0_S0_PKcfii_80:
	mov edx, [ebp+0x14]
	test edx, edx
	jz _Z23CL_AddDebugStarWithTextPKfS0_S0_PKcfii_40
	mov esi, [ebp+0x14]
	cmp byte [esi], 0x0
	jz _Z23CL_AddDebugStarWithTextPKfS0_S0_PKcfii_40
	mov ebx, cls
	mov eax, [ebx+0x108]
	test eax, eax
	jnz _Z23CL_AddDebugStarWithTextPKfS0_S0_PKcfii_50
_Z23CL_AddDebugStarWithTextPKfS0_S0_PKcfii_40:
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z23CL_AddDebugStarWithTextPKfS0_S0_PKcfii_50:
	call _Z26CreateDebugStringsIfNeededv
	test al, al
	jz _Z23CL_AddDebugStarWithTextPKfS0_S0_PKcfii_40
	mov eax, [ebp+0x20]
	test eax, eax
	jz _Z23CL_AddDebugStarWithTextPKfS0_S0_PKcfii_60
	lea esi, [ebx+0x2dc054]
_Z23CL_AddDebugStarWithTextPKfS0_S0_PKcfii_200:
	mov edx, [esi+0x4]
	lea eax, [edx+0x1]
	cmp eax, [esi]
	jle _Z23CL_AddDebugStarWithTextPKfS0_S0_PKcfii_70
_Z23CL_AddDebugStarWithTextPKfS0_S0_PKcfii_240:
	mov eax, [ebp+0x20]
	test eax, eax
	jz _Z23CL_AddDebugStarWithTextPKfS0_S0_PKcfii_40
	mov eax, cls
	mov dword [eax+0x2dc030], 0x1
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z23CL_AddDebugStarWithTextPKfS0_S0_PKcfii_30:
	call _Z24CreateDebugLinesIfNeededv
	test al, al
	jz _Z23CL_AddDebugStarWithTextPKfS0_S0_PKcfii_80
	mov esi, [ebp+0x20]
	test esi, esi
	jz _Z23CL_AddDebugStarWithTextPKfS0_S0_PKcfii_90
	add ebx, 0x2dc084
_Z23CL_AddDebugStarWithTextPKfS0_S0_PKcfii_210:
	mov ecx, [ebx+0x4]
	lea eax, [ecx+0x1]
	cmp eax, [ebx]
	jg _Z23CL_AddDebugStarWithTextPKfS0_S0_PKcfii_100
	lea edx, [ecx+ecx*4]
	lea edx, [ecx+edx*2]
	mov eax, [ebx+0x8]
	lea edx, [eax+edx*4]
	movss xmm0, dword [ebp-0x1c]
	movss [edx], xmm0
	movss xmm3, dword [ebp-0x28]
	movss [edx+0x4], xmm3
	movss xmm0, dword [ebp-0x34]
	movss [edx+0x8], xmm0
	lea eax, [edx+0xc]
	movss xmm3, dword [ebp-0x24]
	movss [edx+0xc], xmm3
	movss xmm0, dword [ebp-0x30]
	movss [eax+0x4], xmm0
	movss xmm3, dword [ebp-0x40]
	movss [eax+0x8], xmm3
	lea ecx, [edx+0x18]
	mov esi, [ebp+0xc]
	mov eax, [esi]
	mov [edx+0x18], eax
	mov eax, [esi+0x4]
	mov [ecx+0x4], eax
	mov eax, [esi+0x8]
	mov [ecx+0x8], eax
	mov eax, [esi+0xc]
	mov [ecx+0xc], eax
	mov dword [edx+0x28], 0x0
	mov edx, [ebx+0x4]
	mov eax, [ebx+0xc]
	mov ecx, [ebp+0x1c]
	mov [eax+edx*4], ecx
	add dword [ebx+0x4], 0x1
_Z23CL_AddDebugStarWithTextPKfS0_S0_PKcfii_100:
	mov ecx, [ebp+0x20]
	test ecx, ecx
	jz _Z23CL_AddDebugStarWithTextPKfS0_S0_PKcfii_80
	mov eax, cls
	mov dword [eax+0x2dc030], 0x1
	jmp _Z23CL_AddDebugStarWithTextPKfS0_S0_PKcfii_80
_Z23CL_AddDebugStarWithTextPKfS0_S0_PKcfii_20:
	movss [ebp-0x68], xmm1
	call _Z24CreateDebugLinesIfNeededv
	test al, al
	movss xmm1, dword [ebp-0x68]
	jz _Z23CL_AddDebugStarWithTextPKfS0_S0_PKcfii_110
	mov eax, [ebp+0x20]
	test eax, eax
	jz _Z23CL_AddDebugStarWithTextPKfS0_S0_PKcfii_120
	add ebx, 0x2dc084
_Z23CL_AddDebugStarWithTextPKfS0_S0_PKcfii_220:
	mov ecx, [ebx+0x4]
	lea eax, [ecx+0x1]
	cmp eax, [ebx]
	jg _Z23CL_AddDebugStarWithTextPKfS0_S0_PKcfii_130
	lea edx, [ecx+ecx*4]
	lea edx, [ecx+edx*2]
	mov eax, [ebx+0x8]
	lea edx, [eax+edx*4]
	movss xmm3, dword [ebp-0x1c]
	movss [edx], xmm3
	movss xmm0, dword [ebp-0x2c]
	movss [edx+0x4], xmm0
	movss xmm3, dword [ebp-0x44]
	movss [edx+0x8], xmm3
	lea eax, [edx+0xc]
	movss xmm0, dword [ebp-0x24]
	movss [edx+0xc], xmm0
	movss xmm3, dword [ebp-0x3c]
	movss [eax+0x4], xmm3
	movss xmm0, dword [ebp-0x44]
	movss [eax+0x8], xmm0
	lea ecx, [edx+0x18]
	mov esi, [ebp+0xc]
	mov eax, [esi]
	mov [edx+0x18], eax
	mov eax, [esi+0x4]
	mov [ecx+0x4], eax
	mov eax, [esi+0x8]
	mov [ecx+0x8], eax
	mov eax, [esi+0xc]
	mov [ecx+0xc], eax
	mov dword [edx+0x28], 0x0
	mov edx, [ebx+0x4]
	mov eax, [ebx+0xc]
	mov ecx, [ebp+0x1c]
	mov [eax+edx*4], ecx
	add dword [ebx+0x4], 0x1
_Z23CL_AddDebugStarWithTextPKfS0_S0_PKcfii_130:
	mov eax, [ebp+0x20]
	test eax, eax
	jz _Z23CL_AddDebugStarWithTextPKfS0_S0_PKcfii_110
	mov ebx, cls
	mov dword [ebx+0x2dc030], 0x1
	movss xmm0, dword [ebp-0x2c]
	movss xmm3, dword [ebp-0x3c]
	jmp _Z23CL_AddDebugStarWithTextPKfS0_S0_PKcfii_140
_Z23CL_AddDebugStarWithTextPKfS0_S0_PKcfii_110:
	mov ebx, cls
	movss xmm0, dword [ebp-0x2c]
	movss xmm3, dword [ebp-0x3c]
	jmp _Z23CL_AddDebugStarWithTextPKfS0_S0_PKcfii_140
_Z23CL_AddDebugStarWithTextPKfS0_S0_PKcfii_10:
	movss [ebp-0x68], xmm1
	movss [ebp-0x78], xmm2
	call _Z24CreateDebugLinesIfNeededv
	test al, al
	movss xmm1, dword [ebp-0x68]
	movss xmm2, dword [ebp-0x78]
	jz _Z23CL_AddDebugStarWithTextPKfS0_S0_PKcfii_150
	mov eax, [ebp+0x20]
	test eax, eax
	jz _Z23CL_AddDebugStarWithTextPKfS0_S0_PKcfii_160
	add ebx, 0x2dc084
_Z23CL_AddDebugStarWithTextPKfS0_S0_PKcfii_230:
	mov ecx, [ebx+0x4]
	lea eax, [ecx+0x1]
	cmp eax, [ebx]
	jg _Z23CL_AddDebugStarWithTextPKfS0_S0_PKcfii_170
	lea edx, [ecx+ecx*4]
	lea edx, [ecx+edx*2]
	mov eax, [ebx+0x8]
	lea edx, [eax+edx*4]
	movss xmm0, dword [ebp-0x20]
	movss [edx], xmm0
	movss [edx+0x4], xmm2
	movss xmm3, dword [ebp-0x44]
	movss [edx+0x8], xmm3
	lea eax, [edx+0xc]
	movss xmm0, dword [ebp-0x38]
	movss [edx+0xc], xmm0
	movss [eax+0x4], xmm2
	movss [eax+0x8], xmm3
	lea ecx, [edx+0x18]
	mov esi, [ebp+0xc]
	mov eax, [esi]
	mov [edx+0x18], eax
	mov eax, [esi+0x4]
	mov [ecx+0x4], eax
	mov eax, [esi+0x8]
	mov [ecx+0x8], eax
	mov eax, [esi+0xc]
	mov [ecx+0xc], eax
	mov dword [edx+0x28], 0x0
	mov edx, [ebx+0x4]
	mov eax, [ebx+0xc]
	mov ecx, [ebp+0x1c]
	mov [eax+edx*4], ecx
	add dword [ebx+0x4], 0x1
_Z23CL_AddDebugStarWithTextPKfS0_S0_PKcfii_170:
	mov eax, [ebp+0x20]
	test eax, eax
	jz _Z23CL_AddDebugStarWithTextPKfS0_S0_PKcfii_180
	mov ebx, cls
	mov dword [ebx+0x2dc030], 0x1
	movss xmm0, dword [ebp-0x20]
	jmp _Z23CL_AddDebugStarWithTextPKfS0_S0_PKcfii_190
_Z23CL_AddDebugStarWithTextPKfS0_S0_PKcfii_150:
	movss xmm0, dword [ebp-0x20]
	jmp _Z23CL_AddDebugStarWithTextPKfS0_S0_PKcfii_190
_Z23CL_AddDebugStarWithTextPKfS0_S0_PKcfii_60:
	lea esi, [ebx+0x2dc034]
	jmp _Z23CL_AddDebugStarWithTextPKfS0_S0_PKcfii_200
_Z23CL_AddDebugStarWithTextPKfS0_S0_PKcfii_90:
	add ebx, 0x2dc064
	jmp _Z23CL_AddDebugStarWithTextPKfS0_S0_PKcfii_210
_Z23CL_AddDebugStarWithTextPKfS0_S0_PKcfii_120:
	add ebx, 0x2dc064
	jmp _Z23CL_AddDebugStarWithTextPKfS0_S0_PKcfii_220
_Z23CL_AddDebugStarWithTextPKfS0_S0_PKcfii_160:
	add ebx, 0x2dc064
	jmp _Z23CL_AddDebugStarWithTextPKfS0_S0_PKcfii_230
_Z23CL_AddDebugStarWithTextPKfS0_S0_PKcfii_180:
	mov ebx, cls
	movss xmm0, dword [ebp-0x20]
	jmp _Z23CL_AddDebugStarWithTextPKfS0_S0_PKcfii_190
_Z23CL_AddDebugStarWithTextPKfS0_S0_PKcfii_70:
	mov ebx, edx
	shl ebx, 0x7
	add ebx, [esi+0x8]
	mov eax, [edi]
	mov [ebx], eax
	mov edx, [ebp-0x4c]
	mov eax, [edx]
	mov [ebx+0x4], eax
	mov ecx, [ebp-0x48]
	mov eax, [ecx]
	mov [ebx+0x8], eax
	lea edx, [ebx+0xc]
	mov ecx, [ebp+0x10]
	mov eax, [ecx]
	mov [ebx+0xc], eax
	mov eax, [ecx+0x4]
	mov [edx+0x4], eax
	mov eax, [ecx+0x8]
	mov [edx+0x8], eax
	mov eax, [ecx+0xc]
	mov [edx+0xc], eax
	movss xmm0, dword [ebp+0x18]
	movss [ebx+0x1c], xmm0
	mov dword [esp+0x8], 0x5f
	mov eax, [ebp+0x14]
	mov [esp+0x4], eax
	lea eax, [ebx+0x20]
	mov [esp], eax
	call strncpy
	mov byte [ebx+0x7f], 0x0
	mov edx, [esi+0x4]
	mov eax, [esi+0xc]
	mov ecx, [ebp+0x1c]
	mov [eax+edx*4], ecx
	add dword [esi+0x4], 0x1
	jmp _Z23CL_AddDebugStarWithTextPKfS0_S0_PKcfii_240


;CL_FlushDebugClientData()
_Z23CL_FlushDebugClientDatav:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov ebx, cls
	mov eax, [ebx+0x108]
	test eax, eax
	jz _Z23CL_FlushDebugClientDatav_10
	mov eax, [ebx+0x2dc03c]
	test eax, eax
	jz _Z23CL_FlushDebugClientDatav_20
	xor esi, esi
	mov edi, ebx
_Z23CL_FlushDebugClientDatav_80:
	cmp esi, [ebx+0x2dc038]
	jge _Z23CL_FlushDebugClientDatav_20
_Z23CL_FlushDebugClientDatav_40:
	lea ecx, [esi*4]
	mov eax, ecx
	add eax, [ebx+0x2dc040]
	sub dword [eax], 0x1
	mov edx, [ebx+0x2dc040]
	mov eax, [ecx+edx]
	test eax, eax
	jle _Z23CL_FlushDebugClientDatav_30
	add esi, 0x1
	cmp esi, [ebx+0x2dc038]
	jl _Z23CL_FlushDebugClientDatav_40
_Z23CL_FlushDebugClientDatav_20:
	mov eax, [ebx+0x2dc06c]
	test eax, eax
	jz _Z23CL_FlushDebugClientDatav_10
	xor edi, edi
	xor esi, esi
_Z23CL_FlushDebugClientDatav_70:
	cmp edi, [ebx+0x2dc068]
	jge _Z23CL_FlushDebugClientDatav_10
_Z23CL_FlushDebugClientDatav_60:
	lea ecx, [edi*4]
	mov eax, ecx
	add eax, [ebx+0x2dc070]
	sub dword [eax], 0x1
	mov edx, [ebx+0x2dc070]
	mov eax, [ecx+edx]
	test eax, eax
	jle _Z23CL_FlushDebugClientDatav_50
	add edi, 0x1
	add esi, 0x2c
	cmp edi, [ebx+0x2dc068]
	jl _Z23CL_FlushDebugClientDatav_60
_Z23CL_FlushDebugClientDatav_10:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z23CL_FlushDebugClientDatav_50:
	mov eax, [ebx+0x2dc068]
	sub eax, 0x1
	mov [ebx+0x2dc068], eax
	mov eax, [edx+eax*4]
	mov [ecx+edx], eax
	mov edx, [ebx+0x2dc06c]
	mov eax, [ebx+0x2dc068]
	lea ecx, [eax+eax*4]
	lea ecx, [eax+ecx*2]
	shl ecx, 0x2
	mov eax, [ecx+edx]
	mov [esi+edx], eax
	mov eax, [ecx+edx+0x4]
	mov [esi+edx+0x4], eax
	mov eax, [ecx+edx+0x8]
	mov [esi+edx+0x8], eax
	mov eax, [ecx+edx+0xc]
	mov [esi+edx+0xc], eax
	mov eax, [ecx+edx+0x10]
	mov [esi+edx+0x10], eax
	mov eax, [ecx+edx+0x14]
	mov [esi+edx+0x14], eax
	mov eax, [ecx+edx+0x18]
	mov [esi+edx+0x18], eax
	mov eax, [ecx+edx+0x1c]
	mov [esi+edx+0x1c], eax
	mov eax, [ecx+edx+0x20]
	mov [esi+edx+0x20], eax
	mov eax, [ecx+edx+0x24]
	mov [esi+edx+0x24], eax
	mov eax, [ecx+edx+0x28]
	mov [esi+edx+0x28], eax
	jmp _Z23CL_FlushDebugClientDatav_70
_Z23CL_FlushDebugClientDatav_30:
	mov eax, [ebx+0x2dc038]
	sub eax, 0x1
	mov [ebx+0x2dc038], eax
	mov eax, [edx+eax*4]
	mov [ecx+edx], eax
	mov ecx, [ebx+0x2dc03c]
	mov edx, esi
	shl edx, 0x7
	mov eax, [ebx+0x2dc038]
	shl eax, 0x7
	add edx, ecx
	add eax, ecx
	mov dword [esp+0x8], 0x80
	mov [esp+0x4], eax
	mov [esp], edx
	call memcpy
	mov ebx, edi
	jmp _Z23CL_FlushDebugClientDatav_80
	nop


;CL_FlushDebugServerData()
_Z23CL_FlushDebugServerDatav:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov ebx, cls
	mov edx, [ebx+0x108]
	test edx, edx
	jz _Z23CL_FlushDebugServerDatav_10
	mov eax, [ebx+0x2dc05c]
	test eax, eax
	jz _Z23CL_FlushDebugServerDatav_20
	xor esi, esi
	mov edi, ebx
_Z23CL_FlushDebugServerDatav_80:
	cmp esi, [ebx+0x2dc058]
	jge _Z23CL_FlushDebugServerDatav_20
_Z23CL_FlushDebugServerDatav_40:
	lea ecx, [esi*4]
	mov eax, ecx
	add eax, [ebx+0x2dc060]
	sub dword [eax], 0x1
	mov edx, [ebx+0x2dc060]
	mov eax, [ecx+edx]
	test eax, eax
	jle _Z23CL_FlushDebugServerDatav_30
	mov dword [ebx+0x2dc030], 0x1
	add esi, 0x1
	cmp esi, [ebx+0x2dc058]
	jl _Z23CL_FlushDebugServerDatav_40
_Z23CL_FlushDebugServerDatav_20:
	mov eax, [ebx+0x2dc08c]
	test eax, eax
	jz _Z23CL_FlushDebugServerDatav_10
	xor edi, edi
	xor esi, esi
_Z23CL_FlushDebugServerDatav_70:
	cmp edi, [ebx+0x2dc088]
	jge _Z23CL_FlushDebugServerDatav_10
_Z23CL_FlushDebugServerDatav_60:
	lea ecx, [edi*4]
	mov eax, ecx
	add eax, [ebx+0x2dc090]
	sub dword [eax], 0x1
	mov edx, [ebx+0x2dc090]
	mov eax, [ecx+edx]
	test eax, eax
	jle _Z23CL_FlushDebugServerDatav_50
	mov dword [ebx+0x2dc030], 0x1
	add edi, 0x1
	add esi, 0x2c
	cmp edi, [ebx+0x2dc088]
	jl _Z23CL_FlushDebugServerDatav_60
_Z23CL_FlushDebugServerDatav_10:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z23CL_FlushDebugServerDatav_50:
	mov eax, [ebx+0x2dc088]
	sub eax, 0x1
	mov [ebx+0x2dc088], eax
	mov eax, [edx+eax*4]
	mov [ecx+edx], eax
	mov edx, [ebx+0x2dc08c]
	mov eax, [ebx+0x2dc088]
	lea ecx, [eax+eax*4]
	lea ecx, [eax+ecx*2]
	shl ecx, 0x2
	mov eax, [ecx+edx]
	mov [esi+edx], eax
	mov eax, [ecx+edx+0x4]
	mov [esi+edx+0x4], eax
	mov eax, [ecx+edx+0x8]
	mov [esi+edx+0x8], eax
	mov eax, [ecx+edx+0xc]
	mov [esi+edx+0xc], eax
	mov eax, [ecx+edx+0x10]
	mov [esi+edx+0x10], eax
	mov eax, [ecx+edx+0x14]
	mov [esi+edx+0x14], eax
	mov eax, [ecx+edx+0x18]
	mov [esi+edx+0x18], eax
	mov eax, [ecx+edx+0x1c]
	mov [esi+edx+0x1c], eax
	mov eax, [ecx+edx+0x20]
	mov [esi+edx+0x20], eax
	mov eax, [ecx+edx+0x24]
	mov [esi+edx+0x24], eax
	mov eax, [ecx+edx+0x28]
	mov [esi+edx+0x28], eax
	jmp _Z23CL_FlushDebugServerDatav_70
_Z23CL_FlushDebugServerDatav_30:
	mov eax, [ebx+0x2dc058]
	sub eax, 0x1
	mov [ebx+0x2dc058], eax
	mov eax, [edx+eax*4]
	mov [ecx+edx], eax
	mov ecx, [ebx+0x2dc05c]
	mov edx, esi
	shl edx, 0x7
	mov eax, [ebx+0x2dc058]
	shl eax, 0x7
	add edx, ecx
	add eax, ecx
	mov dword [esp+0x8], 0x80
	mov [esp+0x4], eax
	mov [esp], edx
	call memcpy
	mov ebx, edi
	jmp _Z23CL_FlushDebugServerDatav_80
	nop


;CL_UpdateDebugClientData()
_Z24CL_UpdateDebugClientDatav:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov ebx, cls
	mov eax, [ebx+0x108]
	test eax, eax
	jz _Z24CL_UpdateDebugClientDatav_10
	mov eax, [ebx+0x2dc034]
	add eax, [ebx+0x2dc044]
	mov [esp+0x10], eax
	mov eax, [ebx+0x2dc048]
	mov [esp+0xc], eax
	mov eax, [ebx+0x2dc04c]
	mov [esp+0x8], eax
	mov eax, [ebx+0x2dc038]
	mov [esp+0x4], eax
	mov eax, [ebx+0x2dc03c]
	mov [esp], eax
	call _Z18R_CopyDebugStringsP15trDebugString_tiS0_ii
	mov eax, [ebx+0x2dc064]
	add eax, [ebx+0x2dc074]
	mov [esp+0x10], eax
	mov eax, [ebx+0x2dc078]
	mov [esp+0xc], eax
	mov eax, [ebx+0x2dc07c]
	mov [esp+0x8], eax
	mov eax, [ebx+0x2dc068]
	mov [esp+0x4], eax
	mov eax, [ebx+0x2dc06c]
	mov [esp], eax
	call _Z16R_CopyDebugLinesP13trDebugLine_tiS0_ii
_Z24CL_UpdateDebugClientDatav_10:
	add esp, 0x24
	pop ebx
	pop ebp
	ret
	nop


;CL_UpdateDebugServerData()
_Z24CL_UpdateDebugServerDatav:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, cls
	mov ecx, [ebx+0x108]
	test ecx, ecx
	jz _Z24CL_UpdateDebugServerDatav_10
	mov eax, [ebx+0x2dc058]
	mov [ebx+0x2dc048], eax
	mov ecx, [ebx+0x2dc04c]
	shl eax, 0x7
	mov edx, [ebx+0x2dc05c]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov [esp], ecx
	call memcpy
	mov edx, [ebx+0x2dc088]
	mov [ebx+0x2dc078], edx
	mov ecx, [ebx+0x2dc07c]
	lea eax, [edx+edx*4]
	lea eax, [edx+eax*2]
	shl eax, 0x2
	mov edx, [ebx+0x2dc08c]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov [esp], ecx
	call memcpy
_Z24CL_UpdateDebugServerDatav_10:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;Initialized global or static variables of cl_debugdata:
SECTION .data


;Initialized constant data of cl_debugdata:
SECTION .rdata
_ZZ15CL_AddDebugStarPKfS0_iiE15MYNULLTEXTCOLOR: dd 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0


;Zero initialized global or static variables of cl_debugdata:
SECTION .bss


;All cstrings:
SECTION .rdata
_cstring_client_debug_str:		db "Client Debug Strings",0
_cstring_client_debug_lin:		db "Client Debug Lines",0



;All constant floats and doubles:
SECTION .rdata
_float_5_00000000:		dd 0x40a00000	; 5

