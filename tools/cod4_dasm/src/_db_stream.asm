;Imports of db_stream:
	extern memcpy

;Exports of db_stream:
	global g_streamPos
	global g_streamPosStack
	global g_streamPosStackIndex
	global DB_InitStreams
	global DB_IncStreamPos
	global DB_PopStreamPos
	global DB_InsertPointer
	global DB_PushStreamPos
	global DB_AllocStreamPos
	global g_streamDelayArray
	global g_streamDelayIndex
	global g_streamPosArray
	global g_streamPosIndex
	global g_streamZoneMem


SECTION .text


;DB_InitStreams(XZoneMemory*)
DB_InitStreams:
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
DB_InitStreams_10:
	mov eax, [edx]
	mov [ecx], eax
	add edx, 0x8
	add ecx, 0x4
	cmp ecx, g_streamPosArray+0x24
	jnz DB_InitStreams_10
	pop ebp
	ret
	add [eax], al


;DB_IncStreamPos(int)
DB_IncStreamPos:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	add [g_streamPos], eax
	pop ebp
	ret


;DB_PopStreamPos()
DB_PopStreamPos:
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
	jnz DB_PopStreamPos_10
	mov eax, [edx*8+g_streamPosStack]
	mov [g_streamPos], eax
DB_PopStreamPos_10:
	mov ebx, [edx*8+g_streamPosStack+0x4]
	cmp ecx, ebx
	jz DB_PopStreamPos_20
	cmp ecx, 0x7
	jz DB_PopStreamPos_30
	cmp ecx, 0x8
	jz DB_PopStreamPos_40
DB_PopStreamPos_50:
	mov eax, [g_streamPos]
	mov [ecx*4+g_streamPosArray], eax
	mov [g_streamPosIndex], ebx
	mov eax, [ebx*4+g_streamPosArray]
	mov [g_streamPos], eax
DB_PopStreamPos_20:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
DB_PopStreamPos_30:
	mov edx, [g_streamZoneMem]
	mov esi, [edx+0x48]
	test esi, esi
	jz DB_PopStreamPos_50
	mov eax, [g_streamPosArray+0x1c]
	mov ecx, eax
	sub ecx, [edx+0x38]
	lea ecx, [esi+ecx]
	jmp DB_PopStreamPos_60
DB_PopStreamPos_40:
	mov esi, [g_streamZoneMem]
	mov edx, [esi+0x4c]
	test edx, edx
	jz DB_PopStreamPos_50
	mov eax, [g_streamPosArray+0x20]
	mov ecx, eax
	sub ecx, [esi+0x40]
	lea ecx, [edx+ecx]
DB_PopStreamPos_60:
	mov edx, [g_streamPos]
	sub edx, eax
	mov [esp+0x8], edx
	mov [esp+0x4], eax
	mov [esp], ecx
	call memcpy
	mov ecx, [g_streamPosIndex]
	jmp DB_PopStreamPos_50
	nop


;DB_InsertPointer()
DB_InsertPointer:
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
	jz DB_InsertPointer_10
	cmp ebx, 0x7
	jz DB_InsertPointer_20
	cmp ebx, 0x8
	jz DB_InsertPointer_30
DB_InsertPointer_60:
	mov edx, [g_streamPos]
	mov [ebx*4+g_streamPosArray], edx
	mov ebx, 0x4
	mov dword [g_streamPosIndex], 0x4
	mov edx, [g_streamPosArray+0x10]
	mov [g_streamPos], edx
DB_InsertPointer_50:
	sub eax, 0x1
	mov [eax*8+g_streamPosStack], edx
	lea ecx, [edx+0x3]
	and ecx, 0xfffffffc
	lea edx, [ecx+0x4]
	mov [g_streamPos], edx
	mov [g_streamPosStackIndex], eax
	mov eax, [eax*8+g_streamPosStack+0x4]
	cmp eax, 0x4
	jz DB_InsertPointer_40
	mov [ebx*4+g_streamPosArray], edx
	mov [g_streamPosIndex], eax
	mov eax, [eax*4+g_streamPosArray]
	mov [g_streamPos], eax
DB_InsertPointer_40:
	mov eax, ecx
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
DB_InsertPointer_10:
	mov edx, [g_streamPos]
	jmp DB_InsertPointer_50
DB_InsertPointer_20:
	mov edx, [g_streamZoneMem]
	mov esi, [edx+0x48]
	test esi, esi
	jz DB_InsertPointer_60
	mov eax, [g_streamPosArray+0x1c]
	mov ecx, eax
	sub ecx, [edx+0x38]
	lea ecx, [esi+ecx]
	jmp DB_InsertPointer_70
DB_InsertPointer_30:
	mov ecx, [g_streamZoneMem]
	mov edx, [ecx+0x4c]
	test edx, edx
	jz DB_InsertPointer_60
	mov eax, [g_streamPosArray+0x20]
	mov ebx, eax
	sub ebx, [ecx+0x40]
	lea ecx, [edx+ebx]
DB_InsertPointer_70:
	mov edx, [g_streamPos]
	sub edx, eax
	mov [esp+0x8], edx
	mov [esp+0x4], eax
	mov [esp], ecx
	call memcpy
	mov eax, [g_streamPosStackIndex]
	mov ebx, [g_streamPosIndex]
	jmp DB_InsertPointer_60


;DB_PushStreamPos(unsigned int)
DB_PushStreamPos:
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
	jz DB_PushStreamPos_10
	cmp edx, 0x7
	jz DB_PushStreamPos_20
	cmp edx, 0x8
	jz DB_PushStreamPos_30
DB_PushStreamPos_40:
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
DB_PushStreamPos_20:
	mov ebx, [g_streamZoneMem]
	mov esi, [ebx+0x48]
	test esi, esi
	jz DB_PushStreamPos_40
	mov eax, [g_streamPosArray+0x1c]
	mov ecx, eax
	sub ecx, [ebx+0x38]
	lea ecx, [esi+ecx]
	jmp DB_PushStreamPos_50
DB_PushStreamPos_30:
	mov esi, [g_streamZoneMem]
	mov ebx, [esi+0x4c]
	test ebx, ebx
	jz DB_PushStreamPos_40
	mov eax, [g_streamPosArray+0x20]
	mov ecx, eax
	sub ecx, [esi+0x40]
	lea ecx, [ebx+ecx]
DB_PushStreamPos_50:
	mov edx, [g_streamPos]
	sub edx, eax
	mov [esp+0x8], edx
	mov [esp+0x4], eax
	mov [esp], ecx
	call memcpy
	mov ecx, [g_streamPosStackIndex]
	mov edx, [g_streamPosIndex]
	jmp DB_PushStreamPos_40
DB_PushStreamPos_10:
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
DB_AllocStreamPos:
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

