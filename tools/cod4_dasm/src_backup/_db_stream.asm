;Imports of db_stream:
	extern memcpy

;Exports of db_stream:
	global g_streamPos
	global g_streamPosStack
	global g_streamPosStackIndex
	global _Z14DB_InitStreamsP11XZoneMemory
	global _Z15DB_IncStreamPosi
	global _Z15DB_PopStreamPosv
	global _Z16DB_InsertPointerv
	global _Z16DB_PushStreamPosj
	global _Z17DB_AllocStreamPosi
	global g_streamDelayArray
	global g_streamDelayIndex
	global g_streamPosArray
	global g_streamPosIndex
	global g_streamZoneMem


SECTION .text


;DB_InitStreams(XZoneMemory*)
_Z14DB_InitStreamsP11XZoneMemory:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	mov [g_streamZoneMem], edx
	mov eax, [edx]
	mov [g_streamPos], eax
	mov dword [g_streamPosIndex], 0x0
	mov dword [g_streamDelayIndex], 0x0
	mov dword [g_streamPosStackIndex], 0x0
	mov ecx, g_streamPosArray
_Z14DB_InitStreamsP11XZoneMemory_10:
	mov eax, [edx]
	mov [ecx], eax
	add edx, 0x8
	add ecx, 0x4
	cmp ecx, g_streamPosArray+0x24
	jnz _Z14DB_InitStreamsP11XZoneMemory_10
	pop ebp
	ret
	add [eax], al


;DB_IncStreamPos(int)
_Z15DB_IncStreamPosi:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	add [g_streamPos], eax
	pop ebp
	ret


;DB_PopStreamPos()
_Z15DB_PopStreamPosv:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov edx, [g_streamPosStackIndex]
	sub edx, 0x1
	mov [g_streamPosStackIndex], edx
	mov ecx, [g_streamPosIndex]
	test ecx, ecx
	jnz _Z15DB_PopStreamPosv_10
	mov eax, [edx*8+g_streamPosStack]
	mov [g_streamPos], eax
_Z15DB_PopStreamPosv_10:
	mov ebx, [edx*8+g_streamPosStack+0x4]
	cmp ecx, ebx
	jz _Z15DB_PopStreamPosv_20
	cmp ecx, 0x7
	jz _Z15DB_PopStreamPosv_30
	cmp ecx, 0x8
	jz _Z15DB_PopStreamPosv_40
_Z15DB_PopStreamPosv_50:
	mov eax, [g_streamPos]
	mov [ecx*4+g_streamPosArray], eax
	mov [g_streamPosIndex], ebx
	mov eax, [ebx*4+g_streamPosArray]
	mov [g_streamPos], eax
_Z15DB_PopStreamPosv_20:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z15DB_PopStreamPosv_30:
	mov edx, [g_streamZoneMem]
	mov esi, [edx+0x48]
	test esi, esi
	jz _Z15DB_PopStreamPosv_50
	mov eax, [g_streamPosArray+0x1c]
	mov ecx, eax
	sub ecx, [edx+0x38]
	lea ecx, [esi+ecx]
	jmp _Z15DB_PopStreamPosv_60
_Z15DB_PopStreamPosv_40:
	mov esi, [g_streamZoneMem]
	mov edx, [esi+0x4c]
	test edx, edx
	jz _Z15DB_PopStreamPosv_50
	mov eax, [g_streamPosArray+0x20]
	mov ecx, eax
	sub ecx, [esi+0x40]
	lea ecx, [edx+ecx]
_Z15DB_PopStreamPosv_60:
	mov edx, [g_streamPos]
	sub edx, eax
	mov [esp+0x8], edx
	mov [esp+0x4], eax
	mov [esp], ecx
	call memcpy
	mov ecx, [g_streamPosIndex]
	jmp _Z15DB_PopStreamPosv_50
	nop


;DB_InsertPointer()
_Z16DB_InsertPointerv:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov eax, [g_streamPosStackIndex]
	mov ebx, [g_streamPosIndex]
	mov [eax*8+g_streamPosStack+0x4], ebx
	add eax, 0x1
	mov [g_streamPosStackIndex], eax
	cmp ebx, 0x4
	jz _Z16DB_InsertPointerv_10
	cmp ebx, 0x7
	jz _Z16DB_InsertPointerv_20
	cmp ebx, 0x8
	jz _Z16DB_InsertPointerv_30
_Z16DB_InsertPointerv_60:
	mov edx, [g_streamPos]
	mov [ebx*4+g_streamPosArray], edx
	mov ebx, 0x4
	mov dword [g_streamPosIndex], 0x4
	mov edx, [g_streamPosArray+0x10]
	mov [g_streamPos], edx
_Z16DB_InsertPointerv_50:
	sub eax, 0x1
	mov [eax*8+g_streamPosStack], edx
	lea ecx, [edx+0x3]
	and ecx, 0xfffffffc
	lea edx, [ecx+0x4]
	mov [g_streamPos], edx
	mov [g_streamPosStackIndex], eax
	mov eax, [eax*8+g_streamPosStack+0x4]
	cmp eax, 0x4
	jz _Z16DB_InsertPointerv_40
	mov [ebx*4+g_streamPosArray], edx
	mov [g_streamPosIndex], eax
	mov eax, [eax*4+g_streamPosArray]
	mov [g_streamPos], eax
_Z16DB_InsertPointerv_40:
	mov eax, ecx
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z16DB_InsertPointerv_10:
	mov edx, [g_streamPos]
	jmp _Z16DB_InsertPointerv_50
_Z16DB_InsertPointerv_20:
	mov edx, [g_streamZoneMem]
	mov esi, [edx+0x48]
	test esi, esi
	jz _Z16DB_InsertPointerv_60
	mov eax, [g_streamPosArray+0x1c]
	mov ecx, eax
	sub ecx, [edx+0x38]
	lea ecx, [esi+ecx]
	jmp _Z16DB_InsertPointerv_70
_Z16DB_InsertPointerv_30:
	mov ecx, [g_streamZoneMem]
	mov edx, [ecx+0x4c]
	test edx, edx
	jz _Z16DB_InsertPointerv_60
	mov eax, [g_streamPosArray+0x20]
	mov ebx, eax
	sub ebx, [ecx+0x40]
	lea ecx, [edx+ebx]
_Z16DB_InsertPointerv_70:
	mov edx, [g_streamPos]
	sub edx, eax
	mov [esp+0x8], edx
	mov [esp+0x4], eax
	mov [esp], ecx
	call memcpy
	mov eax, [g_streamPosStackIndex]
	mov ebx, [g_streamPosIndex]
	jmp _Z16DB_InsertPointerv_60


;DB_PushStreamPos(unsigned int)
_Z16DB_PushStreamPosj:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0x8]
	mov ecx, [g_streamPosStackIndex]
	mov edx, [g_streamPosIndex]
	mov [ecx*8+g_streamPosStack+0x4], edx
	add ecx, 0x1
	mov [g_streamPosStackIndex], ecx
	cmp edx, edi
	jz _Z16DB_PushStreamPosj_10
	cmp edx, 0x7
	jz _Z16DB_PushStreamPosj_20
	cmp edx, 0x8
	jz _Z16DB_PushStreamPosj_30
_Z16DB_PushStreamPosj_40:
	mov eax, [g_streamPos]
	mov [edx*4+g_streamPosArray], eax
	mov [g_streamPosIndex], edi
	mov eax, [edi*4+g_streamPosArray]
	mov [g_streamPos], eax
	mov [ecx*8+g_streamPos+0x18], eax
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z16DB_PushStreamPosj_20:
	mov ebx, [g_streamZoneMem]
	mov esi, [ebx+0x48]
	test esi, esi
	jz _Z16DB_PushStreamPosj_40
	mov eax, [g_streamPosArray+0x1c]
	mov ecx, eax
	sub ecx, [ebx+0x38]
	lea ecx, [esi+ecx]
	jmp _Z16DB_PushStreamPosj_50
_Z16DB_PushStreamPosj_30:
	mov esi, [g_streamZoneMem]
	mov ebx, [esi+0x4c]
	test ebx, ebx
	jz _Z16DB_PushStreamPosj_40
	mov eax, [g_streamPosArray+0x20]
	mov ecx, eax
	sub ecx, [esi+0x40]
	lea ecx, [ebx+ecx]
_Z16DB_PushStreamPosj_50:
	mov edx, [g_streamPos]
	sub edx, eax
	mov [esp+0x8], edx
	mov [esp+0x4], eax
	mov [esp], ecx
	call memcpy
	mov ecx, [g_streamPosStackIndex]
	mov edx, [g_streamPosIndex]
	jmp _Z16DB_PushStreamPosj_40
_Z16DB_PushStreamPosj_10:
	mov eax, [g_streamPos]
	mov [ecx*8+g_streamPos+0x18], eax
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	add [eax], al


;DB_AllocStreamPos(int)
_Z17DB_AllocStreamPosi:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	mov eax, edx
	add eax, [g_streamPos]
	not edx
	and eax, edx
	mov [g_streamPos], eax
	pop ebp
	ret
	nop


;Initialized global or static variables of db_stream:
SECTION .data


;Initialized constant data of db_stream:
SECTION .rdata


;Zero initialized global or static variables of db_stream:
SECTION .bss
g_streamPos: resb 0x20
g_streamPosStack: resb 0x200
g_streamPosStackIndex: resb 0x60
g_streamDelayArray: resb 0x8000
g_streamDelayIndex: resb 0x4
g_streamPosArray: resb 0x40
g_streamPosIndex: resb 0x1c
g_streamZoneMem: resb 0x1c


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata

