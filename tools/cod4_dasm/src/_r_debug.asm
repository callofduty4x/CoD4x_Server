;Imports of r_debug:
	extern memset
	extern R_DebugAlloc
	extern strncpy
	extern frontEndDataOut
	extern memcpy
	extern R_DebugFree
	extern scene

;Exports of r_debug:
	global debugGlobals
	global _ZZ13R_AddDebugBoxP12DebugGlobalsPKfS2_S2_E10iEdgePairs
	global R_InitDebug
	global R_AddDebugBox
	global R_AddDebugLine
	global R_ShutdownDebug
	global R_AddDebugString
	global R_CopyDebugLines
	global R_InitDebugEntry
	global R_AddDebugPolygon
	global R_CopyDebugStrings
	global R_ShutdownDebugEntry
	global R_TransferDebugGlobals


SECTION .text


;R_InitDebug()
R_InitDebug:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x8], 0x54
	mov dword [esp+0x4], 0x0
	mov dword [esp], debugGlobals
	call memset
	mov dword [debugGlobals+0x8], 0x1000
	mov dword [debugGlobals+0x14], 0x200
	mov dword [debugGlobals+0x20], 0x1000
	mov dword [debugGlobals+0x38], 0x4000
	mov dword [debugGlobals+0x50], 0x1000
	leave
	ret


;R_AddDebugBox(DebugGlobals*, float const*, float const*, float const*)
R_AddDebugBox:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x8c
	xor ebx, ebx
	mov edi, 0x1
	mov dword [ebp-0x7c], 0x0
R_AddDebugBox_30:
	lea edx, [ebp-0x78]
	add edx, [ebp-0x7c]
	xor ecx, ecx
R_AddDebugBox_20:
	mov eax, edi
	shl eax, cl
	test ebx, eax
	jz R_AddDebugBox_10
	mov esi, [ebp+0x10]
	mov eax, [esi+ecx*4]
R_AddDebugBox_70:
	mov [edx], eax
	add ecx, 0x1
	add edx, 0x4
	cmp ecx, 0x3
	jnz R_AddDebugBox_20
	add ebx, 0x1
	add dword [ebp-0x7c], 0xc
	cmp ebx, 0x8
	jnz R_AddDebugBox_30
	mov edi, _ZZ13R_AddDebugBoxP12DebugGlobalsPKfS2_S2_E10iEdgePairs+0x4
R_AddDebugBox_60:
	mov eax, [edi-0x4]
	lea eax, [eax+eax*2]
	lea ebx, [ebp+eax*4-0x78]
	mov eax, [edi]
	lea eax, [eax+eax*2]
	lea esi, [ebp+eax*4-0x78]
	mov eax, [ebp+0x8]
	mov edx, [eax+0x38]
	mov ecx, [eax+0x34]
	lea eax, [ecx+0x1]
	cmp eax, edx
	jg R_AddDebugBox_40
	mov eax, [ebp+0x8]
	mov eax, [eax+0x30]
	test eax, eax
	jz R_AddDebugBox_50
R_AddDebugBox_80:
	lea edx, [ecx+ecx*4]
	lea edx, [ecx+edx*2]
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x30]
	lea edx, [eax+edx*4]
	mov eax, [ebx]
	mov [edx], eax
	mov eax, [ebx+0x4]
	mov [edx+0x4], eax
	mov eax, [ebx+0x8]
	mov [edx+0x8], eax
	lea ecx, [edx+0xc]
	mov eax, [esi]
	mov [edx+0xc], eax
	mov eax, [esi+0x4]
	mov [ecx+0x4], eax
	mov eax, [esi+0x8]
	mov [ecx+0x8], eax
	lea ecx, [edx+0x18]
	mov ebx, [ebp+0x14]
	mov eax, [ebx]
	mov [edx+0x18], eax
	mov eax, [ebx+0x4]
	mov [ecx+0x4], eax
	mov eax, [ebx+0x8]
	mov [ecx+0x8], eax
	mov eax, [ebx+0xc]
	mov [ecx+0xc], eax
	mov dword [edx+0x28], 0x0
	mov esi, [ebp+0x8]
	add dword [esi+0x34], 0x1
R_AddDebugBox_40:
	add edi, 0x8
	mov eax, _ZZ13R_AddDebugBoxP12DebugGlobalsPKfS2_S2_E10iEdgePairs+0x64
	cmp eax, edi
	jnz R_AddDebugBox_60
	add esp, 0x8c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_AddDebugBox_10:
	mov esi, [ebp+0xc]
	mov eax, [esi+ecx*4]
	jmp R_AddDebugBox_70
R_AddDebugBox_50:
	mov dword [esp+0x8], _cstring_r_adddebugline
	lea eax, [edx+edx*4]
	lea eax, [edx+eax*2]
	shl eax, 0x2
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	add eax, 0x30
	mov [esp], eax
	call R_DebugAlloc
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x30]
	test eax, eax
	jz R_AddDebugBox_40
	mov ecx, [ecx+0x34]
	jmp R_AddDebugBox_80


;R_AddDebugLine(DebugGlobals*, float const*, float const*, float const*)
R_AddDebugLine:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov edi, [ebp+0x10]
	mov edx, [ebx+0x38]
	mov ecx, [ebx+0x34]
	lea eax, [ecx+0x1]
	cmp eax, edx
	jg R_AddDebugLine_10
	mov eax, [ebx+0x30]
	test eax, eax
	jz R_AddDebugLine_20
R_AddDebugLine_30:
	lea edx, [ecx+ecx*4]
	lea edx, [ecx+edx*2]
	mov eax, [ebx+0x30]
	lea edx, [eax+edx*4]
	mov eax, [esi]
	mov [edx], eax
	mov eax, [esi+0x4]
	mov [edx+0x4], eax
	mov eax, [esi+0x8]
	mov [edx+0x8], eax
	lea ecx, [edx+0xc]
	mov eax, [edi]
	mov [edx+0xc], eax
	mov eax, [edi+0x4]
	mov [ecx+0x4], eax
	mov eax, [edi+0x8]
	mov [ecx+0x8], eax
	lea ecx, [edx+0x18]
	mov esi, [ebp+0x14]
	mov eax, [esi]
	mov [edx+0x18], eax
	mov eax, [esi+0x4]
	mov [ecx+0x4], eax
	mov eax, [esi+0x8]
	mov [ecx+0x8], eax
	mov eax, [esi+0xc]
	mov [ecx+0xc], eax
	mov dword [edx+0x28], 0x0
	add dword [ebx+0x34], 0x1
R_AddDebugLine_10:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_AddDebugLine_20:
	mov dword [esp+0x8], _cstring_r_adddebugline
	lea eax, [edx+edx*4]
	lea eax, [edx+eax*2]
	shl eax, 0x2
	mov [esp+0x4], eax
	lea eax, [ebx+0x30]
	mov [esp], eax
	call R_DebugAlloc
	mov eax, [ebx+0x30]
	test eax, eax
	jz R_AddDebugLine_10
	mov ecx, [ebx+0x34]
	jmp R_AddDebugLine_30
	nop


;R_ShutdownDebug()
R_ShutdownDebug:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp], debugGlobals
	call R_ShutdownDebugEntry
	leave
	ret


;R_AddDebugString(DebugGlobals*, float const*, float const*, float, char const*)
R_AddDebugString:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov esi, [ebp+0x8]
	mov edi, [ebp+0xc]
	mov ecx, [esi+0x20]
	mov edx, [esi+0x1c]
	lea eax, [edx+0x1]
	cmp eax, ecx
	jg R_AddDebugString_10
	mov ebx, [esi+0x18]
	test ebx, ebx
	jz R_AddDebugString_20
R_AddDebugString_30:
	mov ebx, edx
	shl ebx, 0x7
	add ebx, [esi+0x18]
	mov eax, [edi]
	mov [ebx], eax
	mov eax, [edi+0x4]
	mov [ebx+0x4], eax
	mov eax, [edi+0x8]
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
	movss xmm0, dword [ebp+0x14]
	movss [ebx+0x1c], xmm0
	mov dword [esp+0x8], 0x5f
	mov eax, [ebp+0x18]
	mov [esp+0x4], eax
	lea eax, [ebx+0x20]
	mov [esp], eax
	call strncpy
	mov byte [ebx+0x7f], 0x0
	add dword [esi+0x1c], 0x1
R_AddDebugString_10:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_AddDebugString_20:
	mov dword [esp+0x8], _cstring_r_adddebugstring
	shl ecx, 0x7
	mov [esp+0x4], ecx
	lea eax, [esi+0x18]
	mov [esp], eax
	call R_DebugAlloc
	mov edx, [esi+0x18]
	test edx, edx
	jz R_AddDebugString_10
	mov edx, [esi+0x1c]
	jmp R_AddDebugString_30
	nop
	add [eax], al


;R_CopyDebugLines(trDebugLine_t*, int, trDebugLine_t*, int, int)
R_CopyDebugLines:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov eax, frontEndDataOut
	mov edx, [eax]
	lea edi, [edx+0x11e71c]
	mov eax, [ebp+0x8]
	test eax, eax
	jz R_CopyDebugLines_10
R_CopyDebugLines_50:
	mov eax, [edi+0x3c]
	test eax, eax
	jz R_CopyDebugLines_20
R_CopyDebugLines_60:
	mov esi, [edi+0x3c]
	mov eax, [ebp+0x8]
	test eax, eax
	jz R_CopyDebugLines_30
	mov eax, [ebp+0xc]
	lea ebx, [eax+eax*4]
	lea ebx, [eax+ebx*2]
	shl ebx, 0x2
	mov [esp+0x8], ebx
	mov edx, [ebp+0x8]
	mov [esp+0x4], edx
	mov [esp], esi
	call memcpy
	add esi, ebx
R_CopyDebugLines_30:
	mov eax, [ebp+0x10]
	test eax, eax
	jz R_CopyDebugLines_40
	mov ecx, [ebp+0x14]
	lea eax, [ecx+ecx*4]
	lea eax, [ecx+eax*2]
	shl eax, 0x2
	mov [esp+0x8], eax
	mov eax, [ebp+0x10]
	mov [esp+0x4], eax
	mov [esp], esi
	call memcpy
R_CopyDebugLines_40:
	mov eax, [ebp+0xc]
	add eax, [ebp+0x14]
	mov [edi+0x40], eax
R_CopyDebugLines_70:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_CopyDebugLines_10:
	mov eax, [ebp+0x10]
	test eax, eax
	jnz R_CopyDebugLines_50
	jmp R_CopyDebugLines_60
R_CopyDebugLines_20:
	mov dword [esp+0x8], _cstring_r_copydebuglines
	mov ecx, [ebp+0x18]
	lea eax, [ecx+ecx*4]
	lea eax, [ecx+eax*2]
	shl eax, 0x2
	mov [esp+0x4], eax
	lea eax, [edx+0x11e758]
	mov [esp], eax
	call R_DebugAlloc
	mov eax, [edi+0x3c]
	test eax, eax
	jnz R_CopyDebugLines_60
	jmp R_CopyDebugLines_70


;R_InitDebugEntry(DebugGlobals*)
R_InitDebugEntry:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov dword [esp+0x8], 0x54
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call memset
	mov dword [ebx+0x8], 0x1000
	mov dword [ebx+0x14], 0x200
	mov dword [ebx+0x20], 0x1000
	mov dword [ebx+0x38], 0x4000
	mov dword [ebx+0x50], 0x1000
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;R_AddDebugPolygon(DebugGlobals*, float const*, int, float (*) [3])
R_AddDebugPolygon:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov ebx, [ebp+0x8]
	mov edi, [ebp+0xc]
	mov esi, [ebp+0x10]
	mov eax, esi
	add eax, [ebx+0x4]
	cmp eax, [ebx+0x8]
	jg R_AddDebugPolygon_10
	mov edx, [ebx+0x14]
	mov eax, [ebx+0x10]
	add eax, 0x1
	cmp eax, edx
	jg R_AddDebugPolygon_10
	mov ecx, [ebx+0xc]
	test ecx, ecx
	jz R_AddDebugPolygon_20
R_AddDebugPolygon_30:
	mov eax, [ebx]
	test eax, eax
	jz R_AddDebugPolygon_10
	mov eax, [ebx+0x10]
	lea eax, [eax+eax*2]
	mov edx, [ebx+0x4]
	mov [ecx+eax*8+0x10], edx
	mov eax, [ebx+0x10]
	mov edx, [ebx+0xc]
	lea eax, [eax+eax*2]
	mov [edx+eax*8+0x14], esi
	mov eax, [ebx+0x10]
	lea eax, [eax+eax*2]
	mov edx, [ebx+0xc]
	lea eax, [edx+eax*8]
	mov edx, [edi]
	mov [eax], edx
	mov edx, [edi+0x4]
	mov [eax+0x4], edx
	mov edx, [edi+0x8]
	mov [eax+0x8], edx
	mov edx, [edi+0xc]
	mov [eax+0xc], edx
	add dword [ebx+0x10], 0x1
	mov edx, [ebx+0x4]
	lea edx, [edx+edx*2]
	mov eax, [ebx]
	lea edx, [eax+edx*4]
	lea eax, [esi+esi*2]
	shl eax, 0x2
	mov [esp+0x8], eax
	mov eax, [ebp+0x14]
	mov [esp+0x4], eax
	mov [esp], edx
	call memcpy
	add [ebx+0x4], esi
R_AddDebugPolygon_10:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_AddDebugPolygon_20:
	mov dword [esp+0x8], _cstring_debugglobalsentr
	lea eax, [edx+edx*2]
	shl eax, 0x3
	mov [esp+0x4], eax
	lea eax, [ebx+0xc]
	mov [esp], eax
	call R_DebugAlloc
	mov dword [esp+0x8], _cstring_debugglobalsentr1
	mov eax, [ebx+0x8]
	lea eax, [eax+eax*2]
	shl eax, 0x2
	mov [esp+0x4], eax
	mov [esp], ebx
	call R_DebugAlloc
	mov ecx, [ebx+0xc]
	test ecx, ecx
	jnz R_AddDebugPolygon_30
	jmp R_AddDebugPolygon_10


;R_CopyDebugStrings(trDebugString_t*, int, trDebugString_t*, int, int)
R_CopyDebugStrings:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov eax, frontEndDataOut
	mov eax, [eax]
	lea edi, [eax+0x11e71c]
	mov ebx, [ebp+0x8]
	test ebx, ebx
	jz R_CopyDebugStrings_10
R_CopyDebugStrings_50:
	mov edx, [edi+0x24]
	test edx, edx
	jz R_CopyDebugStrings_20
R_CopyDebugStrings_60:
	mov esi, [edi+0x24]
	mov eax, [ebp+0x8]
	test eax, eax
	jz R_CopyDebugStrings_30
	mov ebx, [ebp+0xc]
	shl ebx, 0x7
	mov [esp+0x8], ebx
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov [esp], esi
	call memcpy
	add esi, ebx
R_CopyDebugStrings_30:
	mov eax, [ebp+0x10]
	test eax, eax
	jz R_CopyDebugStrings_40
	mov eax, [ebp+0x14]
	shl eax, 0x7
	mov [esp+0x8], eax
	mov edx, [ebp+0x10]
	mov [esp+0x4], edx
	mov [esp], esi
	call memcpy
R_CopyDebugStrings_40:
	mov eax, [ebp+0xc]
	add eax, [ebp+0x14]
	mov [edi+0x28], eax
R_CopyDebugStrings_70:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_CopyDebugStrings_10:
	mov ecx, [ebp+0x10]
	test ecx, ecx
	jnz R_CopyDebugStrings_50
	jmp R_CopyDebugStrings_60
R_CopyDebugStrings_20:
	mov dword [esp+0x8], _cstring_r_copydebugstrin
	shl dword [ebp+0x18], 0x7
	mov edx, [ebp+0x18]
	mov [esp+0x4], edx
	add eax, 0x11e740
	mov [esp], eax
	call R_DebugAlloc
	mov eax, [edi+0x24]
	test eax, eax
	jnz R_CopyDebugStrings_60
	jmp R_CopyDebugStrings_70


;R_ShutdownDebugEntry(DebugGlobals*)
R_ShutdownDebugEntry:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	lea eax, [ebx+0xc]
	mov [esp], eax
	call R_DebugFree
	mov [esp], ebx
	call R_DebugFree
	lea eax, [ebx+0x18]
	mov [esp], eax
	call R_DebugFree
	lea eax, [ebx+0x24]
	mov [esp], eax
	call R_DebugFree
	lea eax, [ebx+0x30]
	mov [esp], eax
	call R_DebugFree
	lea eax, [ebx+0x3c]
	mov [esp], eax
	call R_DebugFree
	add ebx, 0x48
	mov [ebp+0x8], ebx
	add esp, 0x14
	pop ebx
	pop ebp
	jmp R_DebugFree
	nop


;R_TransferDebugGlobals(DebugGlobals*)
R_TransferDebugGlobals:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov dword [ebp-0x1c], 0x0
	mov edx, [debugGlobals+0x4c]
	xor esi, esi
R_TransferDebugGlobals_70:
	cmp [ebp-0x1c], edx
	jge R_TransferDebugGlobals_10
R_TransferDebugGlobals_40:
	mov ecx, [debugGlobals+0x48]
	lea ebx, [esi+ecx]
	mov edi, scene
	mov eax, [edi+0x114218]
	sub eax, [ebx+0x20]
	js R_TransferDebugGlobals_20
	cmp eax, [ebx+0x24]
	jle R_TransferDebugGlobals_30
R_TransferDebugGlobals_20:
	sub edx, 0x1
	mov [debugGlobals+0x4c], edx
	lea edx, [edx+edx*4]
	shl edx, 0x3
	mov eax, [edx+ecx]
	mov [ebx], eax
	mov eax, [edx+ecx+0x4]
	mov [esi+ecx+0x4], eax
	mov eax, [edx+ecx+0x8]
	mov [esi+ecx+0x8], eax
	mov eax, [edx+ecx+0xc]
	mov [esi+ecx+0xc], eax
	mov eax, [edx+ecx+0x10]
	mov [esi+ecx+0x10], eax
	mov eax, [edx+ecx+0x14]
	mov [esi+ecx+0x14], eax
	mov eax, [edx+ecx+0x18]
	mov [esi+ecx+0x18], eax
	mov eax, [edx+ecx+0x1c]
	mov [esi+ecx+0x1c], eax
	mov eax, [edx+ecx+0x20]
	mov [esi+ecx+0x20], eax
	mov eax, [edx+ecx+0x24]
	mov [esi+ecx+0x24], eax
	mov edx, [debugGlobals+0x4c]
	cmp [ebp-0x1c], edx
	jl R_TransferDebugGlobals_40
R_TransferDebugGlobals_10:
	mov ebx, [debugGlobals+0x48]
	test ebx, ebx
	jz R_TransferDebugGlobals_50
	mov eax, [ebp+0x8]
	mov ecx, [eax+0x48]
	test ecx, ecx
	jz R_TransferDebugGlobals_60
	mov edi, eax
R_TransferDebugGlobals_90:
	mov eax, [edi+0x48]
	lea edx, [edx+edx*4]
	shl edx, 0x3
	mov [esp+0x8], edx
	mov edx, [debugGlobals+0x48]
	mov [esp+0x4], edx
	mov [esp], eax
	call memcpy
	mov edx, [debugGlobals+0x4c]
R_TransferDebugGlobals_50:
	mov eax, [ebp+0x8]
	mov [eax+0x4c], edx
R_TransferDebugGlobals_80:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_TransferDebugGlobals_30:
	add dword [ebp-0x1c], 0x1
	add esi, 0x28
	jmp R_TransferDebugGlobals_70
R_TransferDebugGlobals_60:
	mov dword [esp+0x8], _cstring_debugglobalsentr2
	mov eax, [debugGlobals+0x50]
	lea eax, [eax+eax*4]
	shl eax, 0x3
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	add eax, 0x48
	mov [esp], eax
	call R_DebugAlloc
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x48]
	test eax, eax
	jz R_TransferDebugGlobals_80
	mov edx, [debugGlobals+0x4c]
	mov edi, [ebp+0x8]
	jmp R_TransferDebugGlobals_90


;Initialized global or static variables of r_debug:
SECTION .data


;Initialized constant data of r_debug:
SECTION .rdata
_ZZ13R_AddDebugBoxP12DebugGlobalsPKfS2_S2_E10iEdgePairs: dd 0x0, 0x1, 0x0, 0x2, 0x0, 0x4, 0x1, 0x3, 0x1, 0x5, 0x2, 0x3, 0x2, 0x6, 0x3, 0x7, 0x4, 0x5, 0x4, 0x6, 0x5, 0x7, 0x6, 0x7, 0x80000000, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0


;Zero initialized global or static variables of r_debug:
SECTION .bss
debugGlobals: resb 0x80


;All cstrings:
SECTION .rdata
_cstring_r_adddebugline:		db "R_AddDebugLine",0
_cstring_r_adddebugstring:		db "R_AddDebugString",0
_cstring_r_copydebuglines:		db "R_CopyDebugLines",0
_cstring_debugglobalsentr:		db "(debugGlobalsEntry->polys)",0
_cstring_debugglobalsentr1:		db "(debugGlobalsEntry->verts)",0
_cstring_r_copydebugstrin:		db "R_CopyDebugStrings",0
_cstring_debugglobalsentr2:		db "(debugGlobalsEntry->plumes)",0



;All constant floats and doubles:
SECTION .rdata

