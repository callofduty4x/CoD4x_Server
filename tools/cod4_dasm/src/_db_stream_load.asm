;Imports of db_stream_load:
	extern g_streamPosIndex
	extern g_streamDelayIndex
	extern g_streamDelayArray
	extern DB_IncStreamPos
	extern DB_LoadXFileData
	extern memset
	extern SL_GetString
	extern g_streamZoneMem

;Exports of db_stream_load:
	global Load_Stream
	global Load_DelayStream
	global Load_XStringCustom
	global Load_TempStringCustom
	global DB_ConvertOffsetToAlias
	global DB_ConvertOffsetToPointer


SECTION .text


;Load_Stream(unsigned char, void const*, int)
Load_Stream:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0xc]
	mov ebx, [ebp+0x10]
	cmp byte [ebp+0x8], 0x0
	jz Load_Stream_10
	test ebx, ebx
	jz Load_Stream_10
	mov eax, g_streamPosIndex
	mov edx, [eax]
	lea eax, [edx-0x1]
	cmp eax, 0x2
	ja Load_Stream_20
	sub edx, 0x1
	jz Load_Stream_30
	mov eax, g_streamDelayIndex
	mov edx, [eax]
	mov ecx, g_streamDelayArray
	mov [ecx+edx*8], esi
	mov [ecx+edx*8+0x4], ebx
	add edx, 0x1
	mov [eax], edx
Load_Stream_40:
	mov [ebp+0x8], ebx
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp DB_IncStreamPos
Load_Stream_10:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
Load_Stream_20:
	mov [esp+0x4], ebx
	mov [esp], esi
	call DB_LoadXFileData
	mov [ebp+0x8], ebx
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp DB_IncStreamPos
Load_Stream_30:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call memset
	jmp Load_Stream_40


;Load_DelayStream()
Load_DelayStream:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov eax, g_streamDelayIndex
	mov edx, [eax]
	test edx, edx
	jnz Load_DelayStream_10
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Load_DelayStream_10:
	xor esi, esi
	mov ebx, g_streamDelayArray
	mov edi, eax
Load_DelayStream_20:
	mov eax, [ebx+0x4]
	mov [esp+0x4], eax
	mov eax, [ebx]
	mov [esp], eax
	call DB_LoadXFileData
	add esi, 0x1
	add ebx, 0x8
	cmp [edi], esi
	ja Load_DelayStream_20
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Load_XStringCustom(char const**)
Load_XStringCustom:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov eax, [ebp+0x8]
	mov ebx, [eax]
	mov esi, 0x1
	jmp Load_XStringCustom_10
Load_XStringCustom_20:
	add ebx, 0x1
	add esi, 0x1
Load_XStringCustom_10:
	mov dword [esp+0x4], 0x1
	mov [esp], ebx
	call DB_LoadXFileData
	cmp byte [ebx], 0x0
	jnz Load_XStringCustom_20
	mov [ebp+0x8], esi
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp DB_IncStreamPos
	nop


;Load_TempStringCustom(char const**)
Load_TempStringCustom:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0x8]
	mov ebx, [edi]
	mov esi, 0x1
	jmp Load_TempStringCustom_10
Load_TempStringCustom_20:
	add ebx, 0x1
	add esi, 0x1
Load_TempStringCustom_10:
	mov dword [esp+0x4], 0x1
	mov [esp], ebx
	call DB_LoadXFileData
	cmp byte [ebx], 0x0
	jnz Load_TempStringCustom_20
	mov [esp], esi
	call DB_IncStreamPos
	mov eax, [edi]
	test eax, eax
	jz Load_TempStringCustom_30
	mov dword [esp+0x4], 0x4
	mov [esp], eax
	call SL_GetString
Load_TempStringCustom_30:
	mov [edi], eax
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	add [eax], al


;DB_ConvertOffsetToAlias(void*)
DB_ConvertOffsetToAlias:
	push ebp
	mov ebp, esp
	push ebx
	mov ebx, [ebp+0x8]
	mov edx, [ebx]
	sub edx, 0x1
	mov eax, g_streamZoneMem
	mov ecx, [eax]
	mov eax, edx
	shr eax, 0x1c
	and edx, 0xfffffff
	mov eax, [ecx+eax*8]
	mov eax, [eax+edx]
	mov [ebx], eax
	pop ebx
	pop ebp
	ret
	nop


;DB_ConvertOffsetToPointer(void*)
DB_ConvertOffsetToPointer:
	push ebp
	mov ebp, esp
	push ebx
	mov ebx, [ebp+0x8]
	mov eax, [ebx]
	sub eax, 0x1
	mov edx, g_streamZoneMem
	mov ecx, [edx]
	mov edx, eax
	shr edx, 0x1c
	and eax, 0xfffffff
	add eax, [ecx+edx*8]
	mov [ebx], eax
	pop ebx
	pop ebp
	ret


;Initialized global or static variables of db_stream_load:
SECTION .data


;Initialized constant data of db_stream_load:
SECTION .rdata


;Zero initialized global or static variables of db_stream_load:
SECTION .bss


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata

