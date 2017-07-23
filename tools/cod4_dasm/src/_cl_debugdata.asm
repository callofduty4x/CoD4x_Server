;Imports of cl_debugdata:
	extern cls
	extern R_DebugAlloc
	extern strncpy
	extern R_DebugFree
	extern memset
	extern R_ShutdownDebug
	extern R_DebugFreeAll
	extern memcpy
	extern R_CopyDebugStrings
	extern R_CopyDebugLines

;Exports of cl_debugdata:
	global CreateDebugStringsIfNeeded
	global CreateDebugLinesIfNeeded
	global _ZZ15CL_AddDebugStarPKfS0_iiE15MYNULLTEXTCOLOR
	global CL_AddDebugLine
	global CL_AddDebugStar
	global CL_AddDebugString
	global CL_ShutdownDebugData
	global CL_AddDebugStarWithText
	global CL_FlushDebugClientData
	global CL_FlushDebugServerData
	global CL_UpdateDebugClientData
	global CL_UpdateDebugServerData


SECTION .text


;CreateDebugStringsIfNeeded()
CreateDebugStringsIfNeeded:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, cls
	mov eax, [ebx+0x2dc03c]
	test eax, eax
	jz CreateDebugStringsIfNeeded_10
CreateDebugStringsIfNeeded_30:
	mov eax, [ebx+0x2dc040]
	test eax, eax
	jz CreateDebugStringsIfNeeded_20
	mov ecx, [ebx+0x2dc05c]
	test ecx, ecx
	jz CreateDebugStringsIfNeeded_20
	mov edx, [ebx+0x2dc060]
	test edx, edx
	jz CreateDebugStringsIfNeeded_20
	mov eax, [ebx+0x2dc04c]
	test eax, eax
	jz CreateDebugStringsIfNeeded_20
	mov eax, 0x1
	add esp, 0x14
	pop ebx
	pop ebp
	ret
CreateDebugStringsIfNeeded_10:
	mov dword [ebx+0x2dc034], 0x80
	mov dword [ebx+0x2dc054], 0x80
	mov dword [ebx+0x2dc044], 0x80
	lea edx, [ebx+0x2dc03c]
	mov dword [esp+0x8], _cstring_client_debug_str
	mov eax, [ebx+0x2dc034]
	shl eax, 0x7
	mov [esp+0x4], eax
	mov [esp], edx
	call R_DebugAlloc
	lea edx, [ebx+0x2dc040]
	mov dword [esp+0x8], _cstring_client_debug_str
	mov eax, [ebx+0x2dc034]
	shl eax, 0x2
	mov [esp+0x4], eax
	mov [esp], edx
	call R_DebugAlloc
	mov dword [ebx+0x2dc038], 0x0
	lea edx, [ebx+0x2dc05c]
	mov dword [esp+0x8], _cstring_client_debug_str
	mov eax, [ebx+0x2dc054]
	shl eax, 0x7
	mov [esp+0x4], eax
	mov [esp], edx
	call R_DebugAlloc
	lea edx, [ebx+0x2dc060]
	mov dword [esp+0x8], _cstring_client_debug_str
	mov eax, [ebx+0x2dc054]
	shl eax, 0x2
	mov [esp+0x4], eax
	mov [esp], edx
	call R_DebugAlloc
	mov dword [ebx+0x2dc058], 0x0
	lea edx, [ebx+0x2dc04c]
	mov dword [esp+0x8], _cstring_client_debug_str
	mov eax, [ebx+0x2dc054]
	shl eax, 0x7
	mov [esp+0x4], eax
	mov [esp], edx
	call R_DebugAlloc
	mov dword [ebx+0x2dc048], 0x0
	mov eax, [ebx+0x2dc03c]
	test eax, eax
	jnz CreateDebugStringsIfNeeded_30
CreateDebugStringsIfNeeded_20:
	xor eax, eax
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;CreateDebugLinesIfNeeded()
CreateDebugLinesIfNeeded:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, cls
	mov eax, [ebx+0x2dc06c]
	test eax, eax
	jz CreateDebugLinesIfNeeded_10
CreateDebugLinesIfNeeded_30:
	mov edx, [ebx+0x2dc070]
	test edx, edx
	jz CreateDebugLinesIfNeeded_20
	mov eax, [ebx+0x2dc08c]
	test eax, eax
	jz CreateDebugLinesIfNeeded_20
	mov eax, [ebx+0x2dc090]
	test eax, eax
	jz CreateDebugLinesIfNeeded_20
	mov eax, [ebx+0x2dc07c]
	test eax, eax
	jz CreateDebugLinesIfNeeded_20
	mov eax, 0x1
	add esp, 0x14
	pop ebx
	pop ebp
	ret
CreateDebugLinesIfNeeded_10:
	mov dword [ebx+0x2dc064], 0x800
	mov dword [ebx+0x2dc084], 0x800
	mov dword [ebx+0x2dc074], 0x800
	lea eax, [ebx+0x2dc06c]
	mov dword [esp+0x8], _cstring_client_debug_lin
	mov dword [esp+0x4], 0x16000
	mov [esp], eax
	call R_DebugAlloc
	lea eax, [ebx+0x2dc070]
	mov dword [esp+0x8], _cstring_client_debug_lin
	mov dword [esp+0x4], 0x2000
	mov [esp], eax
	call R_DebugAlloc
	mov dword [ebx+0x2dc068], 0x0
	lea eax, [ebx+0x2dc08c]
	mov dword [esp+0x8], _cstring_client_debug_lin
	mov dword [esp+0x4], 0x16000
	mov [esp], eax
	call R_DebugAlloc
	lea eax, [ebx+0x2dc090]
	mov dword [esp+0x8], _cstring_client_debug_lin
	mov dword [esp+0x4], 0x2000
	mov [esp], eax
	call R_DebugAlloc
	mov dword [ebx+0x2dc088], 0x0
	lea eax, [ebx+0x2dc07c]
	mov dword [esp+0x8], _cstring_client_debug_lin
	mov dword [esp+0x4], 0x16000
	mov [esp], eax
	call R_DebugAlloc
	mov dword [ebx+0x2dc078], 0x0
	mov ecx, [ebx+0x2dc06c]
	test ecx, ecx
	jnz CreateDebugLinesIfNeeded_30
CreateDebugLinesIfNeeded_20:
	xor eax, eax
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;CL_AddDebugLine(float const*, float const*, float const*, int, int, int)
CL_AddDebugLine:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov ebx, cls
	mov eax, [ebx+0x108]
	test eax, eax
	jnz CL_AddDebugLine_10
CL_AddDebugLine_20:
	pop ebx
	pop esi
	pop ebp
	ret
CL_AddDebugLine_10:
	call CreateDebugLinesIfNeeded
	test al, al
	jz CL_AddDebugLine_20
	mov esi, [ebp+0x1c]
	test esi, esi
	jz CL_AddDebugLine_30
	add ebx, 0x2dc084
CL_AddDebugLine_50:
	mov ecx, [ebx+0x4]
	lea eax, [ecx+0x1]
	cmp eax, [ebx]
	jg CL_AddDebugLine_40
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
CL_AddDebugLine_40:
	mov ebx, [ebp+0x1c]
	test ebx, ebx
	jz CL_AddDebugLine_20
	mov eax, cls
	mov dword [eax+0x2dc030], 0x1
	pop ebx
	pop esi
	pop ebp
	ret
CL_AddDebugLine_30:
	add ebx, 0x2dc064
	jmp CL_AddDebugLine_50
	nop


;CL_AddDebugStar(float const*, float const*, int, int)
CL_AddDebugStar:
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
	call CL_AddDebugStarWithText
	leave
	ret
	add [eax], al


;CL_AddDebugString(float const*, float const*, float, char const*, int, int)
CL_AddDebugString:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, cls
	mov eax, [ebx+0x108]
	test eax, eax
	jnz CL_AddDebugString_10
CL_AddDebugString_20:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
CL_AddDebugString_10:
	call CreateDebugStringsIfNeeded
	test al, al
	jz CL_AddDebugString_20
	mov eax, [ebp+0x18]
	test eax, eax
	jz CL_AddDebugString_30
	lea esi, [ebx+0x2dc054]
CL_AddDebugString_50:
	mov edx, [esi+0x4]
	lea eax, [edx+0x1]
	cmp eax, [esi]
	jle CL_AddDebugString_40
CL_AddDebugString_60:
	mov eax, [ebp+0x18]
	test eax, eax
	jz CL_AddDebugString_20
	mov eax, cls
	mov dword [eax+0x2dc030], 0x1
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
CL_AddDebugString_30:
	lea esi, [ebx+0x2dc034]
	jmp CL_AddDebugString_50
CL_AddDebugString_40:
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
	jmp CL_AddDebugString_60
	nop


;CL_ShutdownDebugData()
CL_ShutdownDebugData:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, cls
	add eax, 0x2dc06c
	mov [esp], eax
	call R_DebugFree
	mov eax, cls
	add eax, 0x2dc070
	mov [esp], eax
	call R_DebugFree
	mov eax, cls
	add eax, 0x2dc08c
	mov [esp], eax
	call R_DebugFree
	mov eax, cls
	add eax, 0x2dc090
	mov [esp], eax
	call R_DebugFree
	mov eax, cls
	add eax, 0x2dc07c
	mov [esp], eax
	call R_DebugFree
	mov eax, cls
	add eax, 0x2dc080
	mov [esp], eax
	call R_DebugFree
	mov eax, cls
	add eax, 0x2dc03c
	mov [esp], eax
	call R_DebugFree
	mov eax, cls
	add eax, 0x2dc040
	mov [esp], eax
	call R_DebugFree
	mov eax, cls
	add eax, 0x2dc05c
	mov [esp], eax
	call R_DebugFree
	mov eax, cls
	add eax, 0x2dc060
	mov [esp], eax
	call R_DebugFree
	mov eax, cls
	add eax, 0x2dc04c
	mov [esp], eax
	call R_DebugFree
	mov eax, cls
	add eax, 0x2dc050
	mov [esp], eax
	call R_DebugFree
	mov eax, cls
	add eax, 0x2dc02c
	mov dword [esp+0x8], 0x68
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call memset
	call R_ShutdownDebug
	leave
	jmp R_DebugFreeAll
	nop


;CL_AddDebugStarWithText(float const*, float const*, float const*, char const*, float, int, int)
CL_AddDebugStarWithText:
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
	jnz CL_AddDebugStarWithText_10
	movaps xmm0, xmm3
CL_AddDebugStarWithText_190:
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
	jnz CL_AddDebugStarWithText_20
	movaps xmm3, xmm2
CL_AddDebugStarWithText_140:
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
	jnz CL_AddDebugStarWithText_30
CL_AddDebugStarWithText_80:
	mov edx, [ebp+0x14]
	test edx, edx
	jz CL_AddDebugStarWithText_40
	mov esi, [ebp+0x14]
	cmp byte [esi], 0x0
	jz CL_AddDebugStarWithText_40
	mov ebx, cls
	mov eax, [ebx+0x108]
	test eax, eax
	jnz CL_AddDebugStarWithText_50
CL_AddDebugStarWithText_40:
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CL_AddDebugStarWithText_50:
	call CreateDebugStringsIfNeeded
	test al, al
	jz CL_AddDebugStarWithText_40
	mov eax, [ebp+0x20]
	test eax, eax
	jz CL_AddDebugStarWithText_60
	lea esi, [ebx+0x2dc054]
CL_AddDebugStarWithText_200:
	mov edx, [esi+0x4]
	lea eax, [edx+0x1]
	cmp eax, [esi]
	jle CL_AddDebugStarWithText_70
CL_AddDebugStarWithText_240:
	mov eax, [ebp+0x20]
	test eax, eax
	jz CL_AddDebugStarWithText_40
	mov eax, cls
	mov dword [eax+0x2dc030], 0x1
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CL_AddDebugStarWithText_30:
	call CreateDebugLinesIfNeeded
	test al, al
	jz CL_AddDebugStarWithText_80
	mov esi, [ebp+0x20]
	test esi, esi
	jz CL_AddDebugStarWithText_90
	add ebx, 0x2dc084
CL_AddDebugStarWithText_210:
	mov ecx, [ebx+0x4]
	lea eax, [ecx+0x1]
	cmp eax, [ebx]
	jg CL_AddDebugStarWithText_100
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
CL_AddDebugStarWithText_100:
	mov ecx, [ebp+0x20]
	test ecx, ecx
	jz CL_AddDebugStarWithText_80
	mov eax, cls
	mov dword [eax+0x2dc030], 0x1
	jmp CL_AddDebugStarWithText_80
CL_AddDebugStarWithText_20:
	movss [ebp-0x68], xmm1
	call CreateDebugLinesIfNeeded
	test al, al
	movss xmm1, dword [ebp-0x68]
	jz CL_AddDebugStarWithText_110
	mov eax, [ebp+0x20]
	test eax, eax
	jz CL_AddDebugStarWithText_120
	add ebx, 0x2dc084
CL_AddDebugStarWithText_220:
	mov ecx, [ebx+0x4]
	lea eax, [ecx+0x1]
	cmp eax, [ebx]
	jg CL_AddDebugStarWithText_130
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
CL_AddDebugStarWithText_130:
	mov eax, [ebp+0x20]
	test eax, eax
	jz CL_AddDebugStarWithText_110
	mov ebx, cls
	mov dword [ebx+0x2dc030], 0x1
	movss xmm0, dword [ebp-0x2c]
	movss xmm3, dword [ebp-0x3c]
	jmp CL_AddDebugStarWithText_140
CL_AddDebugStarWithText_110:
	mov ebx, cls
	movss xmm0, dword [ebp-0x2c]
	movss xmm3, dword [ebp-0x3c]
	jmp CL_AddDebugStarWithText_140
CL_AddDebugStarWithText_10:
	movss [ebp-0x68], xmm1
	movss [ebp-0x78], xmm2
	call CreateDebugLinesIfNeeded
	test al, al
	movss xmm1, dword [ebp-0x68]
	movss xmm2, dword [ebp-0x78]
	jz CL_AddDebugStarWithText_150
	mov eax, [ebp+0x20]
	test eax, eax
	jz CL_AddDebugStarWithText_160
	add ebx, 0x2dc084
CL_AddDebugStarWithText_230:
	mov ecx, [ebx+0x4]
	lea eax, [ecx+0x1]
	cmp eax, [ebx]
	jg CL_AddDebugStarWithText_170
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
CL_AddDebugStarWithText_170:
	mov eax, [ebp+0x20]
	test eax, eax
	jz CL_AddDebugStarWithText_180
	mov ebx, cls
	mov dword [ebx+0x2dc030], 0x1
	movss xmm0, dword [ebp-0x20]
	jmp CL_AddDebugStarWithText_190
CL_AddDebugStarWithText_150:
	movss xmm0, dword [ebp-0x20]
	jmp CL_AddDebugStarWithText_190
CL_AddDebugStarWithText_60:
	lea esi, [ebx+0x2dc034]
	jmp CL_AddDebugStarWithText_200
CL_AddDebugStarWithText_90:
	add ebx, 0x2dc064
	jmp CL_AddDebugStarWithText_210
CL_AddDebugStarWithText_120:
	add ebx, 0x2dc064
	jmp CL_AddDebugStarWithText_220
CL_AddDebugStarWithText_160:
	add ebx, 0x2dc064
	jmp CL_AddDebugStarWithText_230
CL_AddDebugStarWithText_180:
	mov ebx, cls
	movss xmm0, dword [ebp-0x20]
	jmp CL_AddDebugStarWithText_190
CL_AddDebugStarWithText_70:
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
	jmp CL_AddDebugStarWithText_240


;CL_FlushDebugClientData()
CL_FlushDebugClientData:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov ebx, cls
	mov eax, [ebx+0x108]
	test eax, eax
	jz CL_FlushDebugClientData_10
	mov eax, [ebx+0x2dc03c]
	test eax, eax
	jz CL_FlushDebugClientData_20
	xor esi, esi
	mov edi, ebx
CL_FlushDebugClientData_80:
	cmp esi, [ebx+0x2dc038]
	jge CL_FlushDebugClientData_20
CL_FlushDebugClientData_40:
	lea ecx, [esi*4]
	mov eax, ecx
	add eax, [ebx+0x2dc040]
	sub dword [eax], 0x1
	mov edx, [ebx+0x2dc040]
	mov eax, [ecx+edx]
	test eax, eax
	jle CL_FlushDebugClientData_30
	add esi, 0x1
	cmp esi, [ebx+0x2dc038]
	jl CL_FlushDebugClientData_40
CL_FlushDebugClientData_20:
	mov eax, [ebx+0x2dc06c]
	test eax, eax
	jz CL_FlushDebugClientData_10
	xor edi, edi
	xor esi, esi
CL_FlushDebugClientData_70:
	cmp edi, [ebx+0x2dc068]
	jge CL_FlushDebugClientData_10
CL_FlushDebugClientData_60:
	lea ecx, [edi*4]
	mov eax, ecx
	add eax, [ebx+0x2dc070]
	sub dword [eax], 0x1
	mov edx, [ebx+0x2dc070]
	mov eax, [ecx+edx]
	test eax, eax
	jle CL_FlushDebugClientData_50
	add edi, 0x1
	add esi, 0x2c
	cmp edi, [ebx+0x2dc068]
	jl CL_FlushDebugClientData_60
CL_FlushDebugClientData_10:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CL_FlushDebugClientData_50:
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
	jmp CL_FlushDebugClientData_70
CL_FlushDebugClientData_30:
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
	jmp CL_FlushDebugClientData_80
	nop


;CL_FlushDebugServerData()
CL_FlushDebugServerData:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov ebx, cls
	mov edx, [ebx+0x108]
	test edx, edx
	jz CL_FlushDebugServerData_10
	mov eax, [ebx+0x2dc05c]
	test eax, eax
	jz CL_FlushDebugServerData_20
	xor esi, esi
	mov edi, ebx
CL_FlushDebugServerData_80:
	cmp esi, [ebx+0x2dc058]
	jge CL_FlushDebugServerData_20
CL_FlushDebugServerData_40:
	lea ecx, [esi*4]
	mov eax, ecx
	add eax, [ebx+0x2dc060]
	sub dword [eax], 0x1
	mov edx, [ebx+0x2dc060]
	mov eax, [ecx+edx]
	test eax, eax
	jle CL_FlushDebugServerData_30
	mov dword [ebx+0x2dc030], 0x1
	add esi, 0x1
	cmp esi, [ebx+0x2dc058]
	jl CL_FlushDebugServerData_40
CL_FlushDebugServerData_20:
	mov eax, [ebx+0x2dc08c]
	test eax, eax
	jz CL_FlushDebugServerData_10
	xor edi, edi
	xor esi, esi
CL_FlushDebugServerData_70:
	cmp edi, [ebx+0x2dc088]
	jge CL_FlushDebugServerData_10
CL_FlushDebugServerData_60:
	lea ecx, [edi*4]
	mov eax, ecx
	add eax, [ebx+0x2dc090]
	sub dword [eax], 0x1
	mov edx, [ebx+0x2dc090]
	mov eax, [ecx+edx]
	test eax, eax
	jle CL_FlushDebugServerData_50
	mov dword [ebx+0x2dc030], 0x1
	add edi, 0x1
	add esi, 0x2c
	cmp edi, [ebx+0x2dc088]
	jl CL_FlushDebugServerData_60
CL_FlushDebugServerData_10:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CL_FlushDebugServerData_50:
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
	jmp CL_FlushDebugServerData_70
CL_FlushDebugServerData_30:
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
	jmp CL_FlushDebugServerData_80
	nop


;CL_UpdateDebugClientData()
CL_UpdateDebugClientData:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov ebx, cls
	mov eax, [ebx+0x108]
	test eax, eax
	jz CL_UpdateDebugClientData_10
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
	call R_CopyDebugStrings
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
	call R_CopyDebugLines
CL_UpdateDebugClientData_10:
	add esp, 0x24
	pop ebx
	pop ebp
	ret
	nop


;CL_UpdateDebugServerData()
CL_UpdateDebugServerData:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, cls
	mov ecx, [ebx+0x108]
	test ecx, ecx
	jz CL_UpdateDebugServerData_10
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
CL_UpdateDebugServerData_10:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;Initialized global or static variables of cl_debugdata:
SECTION .data


;Initialized constant data of cl_debugdata:
SECTION .rdata
_ZZ15CL_AddDebugStarPKfS0_iiE15MYNULLTEXTCOLOR: dd 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x91d11, 0x91d39, 0x91d39, 0x91979, 0x91979, 0x91979, 0x91d11, 0x91d11, 0x91d11, 0x91d46, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x928e1, 0x928f4, 0x92934, 0x92929, 0x92922, 0x928ea, 0x9291b, 0x928ff, 0x92969, 0x92978, 0x929bb, 0x929af, 0x929a8, 0x9296e, 0x929a1, 0x92984, 0x92a8f, 0x92b4f, 0x92b35, 0x92b13, 0x92af4, 0x92a2b, 0x92ad5, 0x929fd, 0x92a70, 0x92ab1, 0x92bd3, 0x92baf, 0x92b90, 0x92a6b, 0x92b71, 0x92a3b


;Zero initialized global or static variables of cl_debugdata:
SECTION .bss


;All cstrings:
SECTION .rdata
_cstring_client_debug_str:		db "Client Debug Strings",0
_cstring_client_debug_lin:		db "Client Debug Lines",0



;All constant floats and doubles:
SECTION .rdata
_float_5_00000000:		dd 0x40a00000	; 5

