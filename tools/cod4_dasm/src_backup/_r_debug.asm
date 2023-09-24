;Imports of r_debug:
	extern memset
	extern _Z12R_DebugAllocPPviPKc
	extern strncpy
	extern frontEndDataOut
	extern memcpy
	extern _Z11R_DebugFreePPv
	extern scene

;Exports of r_debug:
	global debugGlobals
	global _ZZ13R_AddDebugBoxP12DebugGlobalsPKfS2_S2_E10iEdgePairs
	global _Z11R_InitDebugv
	global _Z13R_AddDebugBoxP12DebugGlobalsPKfS2_S2_
	global _Z14R_AddDebugLineP12DebugGlobalsPKfS2_S2_
	global _Z15R_ShutdownDebugv
	global _Z16R_AddDebugStringP12DebugGlobalsPKfS2_fPKc
	global _Z16R_CopyDebugLinesP13trDebugLine_tiS0_ii
	global _Z16R_InitDebugEntryP12DebugGlobals
	global _Z17R_AddDebugPolygonP12DebugGlobalsPKfiPA3_f
	global _Z18R_CopyDebugStringsP15trDebugString_tiS0_ii
	global _Z20R_ShutdownDebugEntryP12DebugGlobals
	global _Z22R_TransferDebugGlobalsP12DebugGlobals


SECTION .text


;R_InitDebug()
_Z11R_InitDebugv:
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
_Z13R_AddDebugBoxP12DebugGlobalsPKfS2_S2_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x8c
	xor ebx, ebx
	mov edi, 0x1
	mov dword [ebp-0x7c], 0x0
_Z13R_AddDebugBoxP12DebugGlobalsPKfS2_S2__30:
	lea edx, [ebp-0x78]
	add edx, [ebp-0x7c]
	xor ecx, ecx
_Z13R_AddDebugBoxP12DebugGlobalsPKfS2_S2__20:
	mov eax, edi
	shl eax, cl
	test ebx, eax
	jz _Z13R_AddDebugBoxP12DebugGlobalsPKfS2_S2__10
	mov esi, [ebp+0x10]
	mov eax, [esi+ecx*4]
_Z13R_AddDebugBoxP12DebugGlobalsPKfS2_S2__70:
	mov [edx], eax
	add ecx, 0x1
	add edx, 0x4
	cmp ecx, 0x3
	jnz _Z13R_AddDebugBoxP12DebugGlobalsPKfS2_S2__20
	add ebx, 0x1
	add dword [ebp-0x7c], 0xc
	cmp ebx, 0x8
	jnz _Z13R_AddDebugBoxP12DebugGlobalsPKfS2_S2__30
	mov edi, _ZZ13R_AddDebugBoxP12DebugGlobalsPKfS2_S2_E10iEdgePairs+0x4
_Z13R_AddDebugBoxP12DebugGlobalsPKfS2_S2__60:
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
	jg _Z13R_AddDebugBoxP12DebugGlobalsPKfS2_S2__40
	mov eax, [ebp+0x8]
	mov eax, [eax+0x30]
	test eax, eax
	jz _Z13R_AddDebugBoxP12DebugGlobalsPKfS2_S2__50
_Z13R_AddDebugBoxP12DebugGlobalsPKfS2_S2__80:
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
_Z13R_AddDebugBoxP12DebugGlobalsPKfS2_S2__40:
	add edi, 0x8
	mov eax, _ZZ13R_AddDebugBoxP12DebugGlobalsPKfS2_S2_E10iEdgePairs+0x64
	cmp eax, edi
	jnz _Z13R_AddDebugBoxP12DebugGlobalsPKfS2_S2__60
	add esp, 0x8c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z13R_AddDebugBoxP12DebugGlobalsPKfS2_S2__10:
	mov esi, [ebp+0xc]
	mov eax, [esi+ecx*4]
	jmp _Z13R_AddDebugBoxP12DebugGlobalsPKfS2_S2__70
_Z13R_AddDebugBoxP12DebugGlobalsPKfS2_S2__50:
	mov dword [esp+0x8], _cstring_r_adddebugline
	lea eax, [edx+edx*4]
	lea eax, [edx+eax*2]
	shl eax, 0x2
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	add eax, 0x30
	mov [esp], eax
	call _Z12R_DebugAllocPPviPKc
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x30]
	test eax, eax
	jz _Z13R_AddDebugBoxP12DebugGlobalsPKfS2_S2__40
	mov ecx, [ecx+0x34]
	jmp _Z13R_AddDebugBoxP12DebugGlobalsPKfS2_S2__80


;R_AddDebugLine(DebugGlobals*, float const*, float const*, float const*)
_Z14R_AddDebugLineP12DebugGlobalsPKfS2_S2_:
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
	jg _Z14R_AddDebugLineP12DebugGlobalsPKfS2_S2__10
	mov eax, [ebx+0x30]
	test eax, eax
	jz _Z14R_AddDebugLineP12DebugGlobalsPKfS2_S2__20
_Z14R_AddDebugLineP12DebugGlobalsPKfS2_S2__30:
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
_Z14R_AddDebugLineP12DebugGlobalsPKfS2_S2__10:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z14R_AddDebugLineP12DebugGlobalsPKfS2_S2__20:
	mov dword [esp+0x8], _cstring_r_adddebugline
	lea eax, [edx+edx*4]
	lea eax, [edx+eax*2]
	shl eax, 0x2
	mov [esp+0x4], eax
	lea eax, [ebx+0x30]
	mov [esp], eax
	call _Z12R_DebugAllocPPviPKc
	mov eax, [ebx+0x30]
	test eax, eax
	jz _Z14R_AddDebugLineP12DebugGlobalsPKfS2_S2__10
	mov ecx, [ebx+0x34]
	jmp _Z14R_AddDebugLineP12DebugGlobalsPKfS2_S2__30
	nop


;R_ShutdownDebug()
_Z15R_ShutdownDebugv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp], debugGlobals
	call _Z20R_ShutdownDebugEntryP12DebugGlobals
	leave
	ret


;R_AddDebugString(DebugGlobals*, float const*, float const*, float, char const*)
_Z16R_AddDebugStringP12DebugGlobalsPKfS2_fPKc:
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
	jg _Z16R_AddDebugStringP12DebugGlobalsPKfS2_fPKc_10
	mov ebx, [esi+0x18]
	test ebx, ebx
	jz _Z16R_AddDebugStringP12DebugGlobalsPKfS2_fPKc_20
_Z16R_AddDebugStringP12DebugGlobalsPKfS2_fPKc_30:
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
_Z16R_AddDebugStringP12DebugGlobalsPKfS2_fPKc_10:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z16R_AddDebugStringP12DebugGlobalsPKfS2_fPKc_20:
	mov dword [esp+0x8], _cstring_r_adddebugstring
	shl ecx, 0x7
	mov [esp+0x4], ecx
	lea eax, [esi+0x18]
	mov [esp], eax
	call _Z12R_DebugAllocPPviPKc
	mov edx, [esi+0x18]
	test edx, edx
	jz _Z16R_AddDebugStringP12DebugGlobalsPKfS2_fPKc_10
	mov edx, [esi+0x1c]
	jmp _Z16R_AddDebugStringP12DebugGlobalsPKfS2_fPKc_30
	nop
	add [eax], al


;R_CopyDebugLines(trDebugLine_t*, int, trDebugLine_t*, int, int)
_Z16R_CopyDebugLinesP13trDebugLine_tiS0_ii:
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
	jz _Z16R_CopyDebugLinesP13trDebugLine_tiS0_ii_10
_Z16R_CopyDebugLinesP13trDebugLine_tiS0_ii_50:
	mov eax, [edi+0x3c]
	test eax, eax
	jz _Z16R_CopyDebugLinesP13trDebugLine_tiS0_ii_20
_Z16R_CopyDebugLinesP13trDebugLine_tiS0_ii_60:
	mov esi, [edi+0x3c]
	mov eax, [ebp+0x8]
	test eax, eax
	jz _Z16R_CopyDebugLinesP13trDebugLine_tiS0_ii_30
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
_Z16R_CopyDebugLinesP13trDebugLine_tiS0_ii_30:
	mov eax, [ebp+0x10]
	test eax, eax
	jz _Z16R_CopyDebugLinesP13trDebugLine_tiS0_ii_40
	mov ecx, [ebp+0x14]
	lea eax, [ecx+ecx*4]
	lea eax, [ecx+eax*2]
	shl eax, 0x2
	mov [esp+0x8], eax
	mov eax, [ebp+0x10]
	mov [esp+0x4], eax
	mov [esp], esi
	call memcpy
_Z16R_CopyDebugLinesP13trDebugLine_tiS0_ii_40:
	mov eax, [ebp+0xc]
	add eax, [ebp+0x14]
	mov [edi+0x40], eax
_Z16R_CopyDebugLinesP13trDebugLine_tiS0_ii_70:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z16R_CopyDebugLinesP13trDebugLine_tiS0_ii_10:
	mov eax, [ebp+0x10]
	test eax, eax
	jnz _Z16R_CopyDebugLinesP13trDebugLine_tiS0_ii_50
	jmp _Z16R_CopyDebugLinesP13trDebugLine_tiS0_ii_60
_Z16R_CopyDebugLinesP13trDebugLine_tiS0_ii_20:
	mov dword [esp+0x8], _cstring_r_copydebuglines
	mov ecx, [ebp+0x18]
	lea eax, [ecx+ecx*4]
	lea eax, [ecx+eax*2]
	shl eax, 0x2
	mov [esp+0x4], eax
	lea eax, [edx+0x11e758]
	mov [esp], eax
	call _Z12R_DebugAllocPPviPKc
	mov eax, [edi+0x3c]
	test eax, eax
	jnz _Z16R_CopyDebugLinesP13trDebugLine_tiS0_ii_60
	jmp _Z16R_CopyDebugLinesP13trDebugLine_tiS0_ii_70


;R_InitDebugEntry(DebugGlobals*)
_Z16R_InitDebugEntryP12DebugGlobals:
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
_Z17R_AddDebugPolygonP12DebugGlobalsPKfiPA3_f:
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
	jg _Z17R_AddDebugPolygonP12DebugGlobalsPKfiPA3_f_10
	mov edx, [ebx+0x14]
	mov eax, [ebx+0x10]
	add eax, 0x1
	cmp eax, edx
	jg _Z17R_AddDebugPolygonP12DebugGlobalsPKfiPA3_f_10
	mov ecx, [ebx+0xc]
	test ecx, ecx
	jz _Z17R_AddDebugPolygonP12DebugGlobalsPKfiPA3_f_20
_Z17R_AddDebugPolygonP12DebugGlobalsPKfiPA3_f_30:
	mov eax, [ebx]
	test eax, eax
	jz _Z17R_AddDebugPolygonP12DebugGlobalsPKfiPA3_f_10
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
_Z17R_AddDebugPolygonP12DebugGlobalsPKfiPA3_f_10:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z17R_AddDebugPolygonP12DebugGlobalsPKfiPA3_f_20:
	mov dword [esp+0x8], _cstring_debugglobalsentr
	lea eax, [edx+edx*2]
	shl eax, 0x3
	mov [esp+0x4], eax
	lea eax, [ebx+0xc]
	mov [esp], eax
	call _Z12R_DebugAllocPPviPKc
	mov dword [esp+0x8], _cstring_debugglobalsentr1
	mov eax, [ebx+0x8]
	lea eax, [eax+eax*2]
	shl eax, 0x2
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z12R_DebugAllocPPviPKc
	mov ecx, [ebx+0xc]
	test ecx, ecx
	jnz _Z17R_AddDebugPolygonP12DebugGlobalsPKfiPA3_f_30
	jmp _Z17R_AddDebugPolygonP12DebugGlobalsPKfiPA3_f_10


;R_CopyDebugStrings(trDebugString_t*, int, trDebugString_t*, int, int)
_Z18R_CopyDebugStringsP15trDebugString_tiS0_ii:
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
	jz _Z18R_CopyDebugStringsP15trDebugString_tiS0_ii_10
_Z18R_CopyDebugStringsP15trDebugString_tiS0_ii_50:
	mov edx, [edi+0x24]
	test edx, edx
	jz _Z18R_CopyDebugStringsP15trDebugString_tiS0_ii_20
_Z18R_CopyDebugStringsP15trDebugString_tiS0_ii_60:
	mov esi, [edi+0x24]
	mov eax, [ebp+0x8]
	test eax, eax
	jz _Z18R_CopyDebugStringsP15trDebugString_tiS0_ii_30
	mov ebx, [ebp+0xc]
	shl ebx, 0x7
	mov [esp+0x8], ebx
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov [esp], esi
	call memcpy
	add esi, ebx
_Z18R_CopyDebugStringsP15trDebugString_tiS0_ii_30:
	mov eax, [ebp+0x10]
	test eax, eax
	jz _Z18R_CopyDebugStringsP15trDebugString_tiS0_ii_40
	mov eax, [ebp+0x14]
	shl eax, 0x7
	mov [esp+0x8], eax
	mov edx, [ebp+0x10]
	mov [esp+0x4], edx
	mov [esp], esi
	call memcpy
_Z18R_CopyDebugStringsP15trDebugString_tiS0_ii_40:
	mov eax, [ebp+0xc]
	add eax, [ebp+0x14]
	mov [edi+0x28], eax
_Z18R_CopyDebugStringsP15trDebugString_tiS0_ii_70:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z18R_CopyDebugStringsP15trDebugString_tiS0_ii_10:
	mov ecx, [ebp+0x10]
	test ecx, ecx
	jnz _Z18R_CopyDebugStringsP15trDebugString_tiS0_ii_50
	jmp _Z18R_CopyDebugStringsP15trDebugString_tiS0_ii_60
_Z18R_CopyDebugStringsP15trDebugString_tiS0_ii_20:
	mov dword [esp+0x8], _cstring_r_copydebugstrin
	shl dword [ebp+0x18], 0x7
	mov edx, [ebp+0x18]
	mov [esp+0x4], edx
	add eax, 0x11e740
	mov [esp], eax
	call _Z12R_DebugAllocPPviPKc
	mov eax, [edi+0x24]
	test eax, eax
	jnz _Z18R_CopyDebugStringsP15trDebugString_tiS0_ii_60
	jmp _Z18R_CopyDebugStringsP15trDebugString_tiS0_ii_70


;R_ShutdownDebugEntry(DebugGlobals*)
_Z20R_ShutdownDebugEntryP12DebugGlobals:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	lea eax, [ebx+0xc]
	mov [esp], eax
	call _Z11R_DebugFreePPv
	mov [esp], ebx
	call _Z11R_DebugFreePPv
	lea eax, [ebx+0x18]
	mov [esp], eax
	call _Z11R_DebugFreePPv
	lea eax, [ebx+0x24]
	mov [esp], eax
	call _Z11R_DebugFreePPv
	lea eax, [ebx+0x30]
	mov [esp], eax
	call _Z11R_DebugFreePPv
	lea eax, [ebx+0x3c]
	mov [esp], eax
	call _Z11R_DebugFreePPv
	add ebx, 0x48
	mov [ebp+0x8], ebx
	add esp, 0x14
	pop ebx
	pop ebp
	jmp _Z11R_DebugFreePPv
	nop


;R_TransferDebugGlobals(DebugGlobals*)
_Z22R_TransferDebugGlobalsP12DebugGlobals:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov dword [ebp-0x1c], 0x0
	mov edx, [debugGlobals+0x4c]
	xor esi, esi
_Z22R_TransferDebugGlobalsP12DebugGlobals_70:
	cmp [ebp-0x1c], edx
	jge _Z22R_TransferDebugGlobalsP12DebugGlobals_10
_Z22R_TransferDebugGlobalsP12DebugGlobals_40:
	mov ecx, [debugGlobals+0x48]
	lea ebx, [esi+ecx]
	mov edi, scene
	mov eax, [edi+0x114218]
	sub eax, [ebx+0x20]
	js _Z22R_TransferDebugGlobalsP12DebugGlobals_20
	cmp eax, [ebx+0x24]
	jle _Z22R_TransferDebugGlobalsP12DebugGlobals_30
_Z22R_TransferDebugGlobalsP12DebugGlobals_20:
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
	jl _Z22R_TransferDebugGlobalsP12DebugGlobals_40
_Z22R_TransferDebugGlobalsP12DebugGlobals_10:
	mov ebx, [debugGlobals+0x48]
	test ebx, ebx
	jz _Z22R_TransferDebugGlobalsP12DebugGlobals_50
	mov eax, [ebp+0x8]
	mov ecx, [eax+0x48]
	test ecx, ecx
	jz _Z22R_TransferDebugGlobalsP12DebugGlobals_60
	mov edi, eax
_Z22R_TransferDebugGlobalsP12DebugGlobals_90:
	mov eax, [edi+0x48]
	lea edx, [edx+edx*4]
	shl edx, 0x3
	mov [esp+0x8], edx
	mov edx, [debugGlobals+0x48]
	mov [esp+0x4], edx
	mov [esp], eax
	call memcpy
	mov edx, [debugGlobals+0x4c]
_Z22R_TransferDebugGlobalsP12DebugGlobals_50:
	mov eax, [ebp+0x8]
	mov [eax+0x4c], edx
_Z22R_TransferDebugGlobalsP12DebugGlobals_80:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z22R_TransferDebugGlobalsP12DebugGlobals_30:
	add dword [ebp-0x1c], 0x1
	add esi, 0x28
	jmp _Z22R_TransferDebugGlobalsP12DebugGlobals_70
_Z22R_TransferDebugGlobalsP12DebugGlobals_60:
	mov dword [esp+0x8], _cstring_debugglobalsentr2
	mov eax, [debugGlobals+0x50]
	lea eax, [eax+eax*4]
	shl eax, 0x3
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	add eax, 0x48
	mov [esp], eax
	call _Z12R_DebugAllocPPviPKc
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x48]
	test eax, eax
	jz _Z22R_TransferDebugGlobalsP12DebugGlobals_80
	mov edx, [debugGlobals+0x4c]
	mov edi, [ebp+0x8]
	jmp _Z22R_TransferDebugGlobalsP12DebugGlobals_90


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

