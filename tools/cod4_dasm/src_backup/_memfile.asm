;Imports of memfile:
	extern _Z10Com_PrintfiPKcz
	extern inflate
	extern _Z9Com_Error11errorParm_tPKcz
	extern _Z16Sys_IsMainThreadv
	extern Sys_IsDatabaseThread
	extern deflateEnd
	extern memcpy
	extern deflate
	extern deflateInit_
	extern inflateInit_
	extern inflateEnd

;Exports of memfile:
	global g_zeroCount
	global g_nonZeroCount
	global stream
	global g_saveBuffer
	global g_cacheBuffer
	global g_cacheBufferLen
	global g_cacheSize
	global streamModeThread
	global streamMode
	global g_compress
	global _Z27MemFile_WriteDataForArchiveP10MemoryFileiPv
	global _Z24MemFile_ReadByteInternalP10MemoryFile
	global _Z18MemFile_WriteErrorP10MemoryFile
	global _Z25MemFile_WriteDataInternalP10MemoryFileiiij
	global _Z16MemFile_ReadDataP10MemoryFileiPv
	global _Z17MemFile_IsWritingP10MemoryFile
	global _Z17MemFile_WriteDataP10MemoryFileiPKv
	global _Z19MemFile_ReadCStringP10MemoryFile
	global _Z20MemFile_StartSegmentP10MemoryFilei
	global _Z20MemFile_WriteCStringP10MemoryFilePKc
	global _Z21MemFile_MoveToSegmentP10MemoryFilei
	global _Z22MemFile_InitForReadingP10MemoryFileiPvh
	global _Z22MemFile_InitForWritingP10MemoryFileiPvhh


SECTION .text


;MemFile_WriteDataForArchive(MemoryFile*, int, void*)
_Z27MemFile_WriteDataForArchiveP10MemoryFileiPv:
	push ebp
	mov ebp, esp
	pop ebp
	jmp _Z17MemFile_WriteDataP10MemoryFileiPKv
	nop


;MemFile_ReadByteInternal(MemoryFile*)
_Z24MemFile_ReadByteInternalP10MemoryFile:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov ebx, eax
	cmp byte [eax+0x16], 0x0
	jnz _Z24MemFile_ReadByteInternalP10MemoryFile_10
	mov ecx, [eax+0x8]
	cmp ecx, [eax+0x4]
	jl _Z24MemFile_ReadByteInternalP10MemoryFile_20
_Z24MemFile_ReadByteInternalP10MemoryFile_40:
	cmp byte [ebx+0x14], 0x0
	jnz _Z24MemFile_ReadByteInternalP10MemoryFile_30
_Z24MemFile_ReadByteInternalP10MemoryFile_50:
	mov dword [esp+0x4], _cstring_trying_to_read_c
	mov dword [esp], 0xa
	call _Z10Com_PrintfiPKcz
	mov byte [ebx+0x15], 0x1
	xor eax, eax
	add esp, 0x24
	pop ebx
	pop ebp
	ret
_Z24MemFile_ReadByteInternalP10MemoryFile_20:
	mov eax, [eax]
	movzx edx, byte [eax+ecx]
	mov [ebp-0x9], dl
	lea eax, [ecx+0x1]
	mov [ebx+0x8], eax
	movzx eax, dl
	add esp, 0x24
	pop ebx
	pop ebp
	ret
_Z24MemFile_ReadByteInternalP10MemoryFile_10:
	lea eax, [ebp-0x9]
	mov [stream+0xc], eax
	mov dword [stream+0x10], 0x1
	mov dword [esp+0x4], 0x2
	mov dword [esp], stream
	call inflate
	mov eax, [stream]
	sub eax, [ebx]
	mov [ebx+0x8], eax
	mov eax, [stream+0x10]
	test eax, eax
	jnz _Z24MemFile_ReadByteInternalP10MemoryFile_40
	movzx eax, byte [ebp-0x9]
	add esp, 0x24
	pop ebx
	pop ebp
	ret
_Z24MemFile_ReadByteInternalP10MemoryFile_30:
	mov dword [esp+0x4], _cstring_trying_to_read_c
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z24MemFile_ReadByteInternalP10MemoryFile_50
	nop


;MemFile_WriteError(MemoryFile*)
_Z18MemFile_WriteErrorP10MemoryFile:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, eax
	cmp byte [eax+0x16], 0x0
	jnz _Z18MemFile_WriteErrorP10MemoryFile_10
_Z18MemFile_WriteErrorP10MemoryFile_50:
	mov dword [streamMode], 0x0
	call _Z16Sys_IsMainThreadv
	test al, al
	jz _Z18MemFile_WriteErrorP10MemoryFile_20
	mov eax, 0x1
_Z18MemFile_WriteErrorP10MemoryFile_40:
	mov [streamModeThread], eax
	cmp byte [ebx+0x14], 0x0
	jz _Z18MemFile_WriteErrorP10MemoryFile_30
	mov dword [esp+0x4], _cstring_memfile_endsegme
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
_Z18MemFile_WriteErrorP10MemoryFile_30:
	mov dword [esp+0x4], _cstring_memfile_endsegme
	mov dword [esp], 0xa
	call _Z10Com_PrintfiPKcz
	mov byte [ebx+0x15], 0x1
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z18MemFile_WriteErrorP10MemoryFile_20:
	call Sys_IsDatabaseThread
	cmp al, 0x1
	sbb eax, eax
	not eax
	and eax, 0x5
	jmp _Z18MemFile_WriteErrorP10MemoryFile_40
_Z18MemFile_WriteErrorP10MemoryFile_10:
	mov dword [esp], stream
	call deflateEnd
	jmp _Z18MemFile_WriteErrorP10MemoryFile_50


;MemFile_WriteDataInternal(MemoryFile*, int, int, int, unsigned int)
_Z25MemFile_WriteDataInternalP10MemoryFileiiij:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edi, eax
	mov ebx, edx
	mov eax, ecx
	cmp byte [edi+0x16], 0x0
	jz _Z25MemFile_WriteDataInternalP10MemoryFileiiij_10
	mov dword [ebp-0x1c], g_cacheBuffer
	shl eax, 0x6
	add al, [ebp+0x8]
	mov [g_cacheBuffer], al
	mov edx, [stream+0x4]
	lea esi, [ebx+edx]
	cmp esi, 0x1fff
	jg _Z25MemFile_WriteDataInternalP10MemoryFileiiij_20
_Z25MemFile_WriteDataInternalP10MemoryFileiiij_60:
	lea eax, [edx+g_saveBuffer]
	mov ecx, esi
	sub ecx, edx
	mov [esp+0x8], ecx
	mov edx, [ebp-0x1c]
	mov [esp+0x4], edx
	mov [esp], eax
	call memcpy
	mov [stream+0x4], esi
_Z25MemFile_WriteDataInternalP10MemoryFileiiij_40:
	movzx eax, byte [ebp+0xc]
	mov [g_cacheBuffer+0x1], al
	mov eax, 0x1
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z25MemFile_WriteDataInternalP10MemoryFileiiij_50:
	mov edx, [stream+0x4]
_Z25MemFile_WriteDataInternalP10MemoryFileiiij_20:
	mov ebx, 0x2000
	sub ebx, edx
	add edx, g_saveBuffer
	mov [esp+0x8], ebx
	mov eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov [esp], edx
	call memcpy
	mov dword [stream+0x4], 0x2000
	sub esi, 0x2000
	add [ebp-0x1c], ebx
	mov dword [stream], g_saveBuffer
	mov dword [esp+0x4], 0x2
	mov dword [esp], stream
	call deflate
	mov eax, [stream+0xc]
	sub eax, [edi]
	mov [edi+0x8], eax
	mov edx, [stream+0x10]
	test edx, edx
	jz _Z25MemFile_WriteDataInternalP10MemoryFileiiij_30
	test esi, esi
	jz _Z25MemFile_WriteDataInternalP10MemoryFileiiij_40
	cmp esi, 0x1fff
	jg _Z25MemFile_WriteDataInternalP10MemoryFileiiij_50
	mov edx, [stream+0x4]
	jmp _Z25MemFile_WriteDataInternalP10MemoryFileiiij_60
_Z25MemFile_WriteDataInternalP10MemoryFileiiij_10:
	mov ecx, [edi]
	mov edx, [edi+0x8]
	shl eax, 0x6
	add al, [ebp+0x8]
	mov [ecx+edx], al
	mov edx, ebx
	add edx, [edi+0x8]
	mov [edi+0x8], edx
	lea eax, [edx+0x41]
	cmp eax, [edi+0x4]
	jg _Z25MemFile_WriteDataInternalP10MemoryFileiiij_30
	mov eax, [edi]
	movzx ecx, byte [ebp+0xc]
	mov [eax+edx+0x1], cl
	mov eax, 0x1
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z25MemFile_WriteDataInternalP10MemoryFileiiij_30:
	xor eax, eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;MemFile_ReadData(MemoryFile*, int, void*)
_Z16MemFile_ReadDataP10MemoryFileiPv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xc
	mov ecx, [ebp+0xc]
	test ecx, ecx
	jz _Z16MemFile_ReadDataP10MemoryFileiPv_10
	mov eax, [ebp+0x8]
	cmp byte [eax+0x15], 0x0
	jnz _Z16MemFile_ReadDataP10MemoryFileiPv_10
	mov ebx, [ebp+0x10]
_Z16MemFile_ReadDataP10MemoryFileiPv_50:
	mov eax, [g_nonZeroCount]
	test eax, eax
	jnz _Z16MemFile_ReadDataP10MemoryFileiPv_20
	mov edx, [g_zeroCount]
	mov esi, edx
_Z16MemFile_ReadDataP10MemoryFileiPv_40:
	mov edi, ecx
	sub edi, eax
	cmp esi, eax
	jz _Z16MemFile_ReadDataP10MemoryFileiPv_30
	cmp ecx, eax
	jz _Z16MemFile_ReadDataP10MemoryFileiPv_30
	sub edx, 0x1
	mov byte [ebx], 0x0
	add ebx, 0x1
	add eax, 0x1
	cmp ecx, eax
	jnz _Z16MemFile_ReadDataP10MemoryFileiPv_40
	mov [g_zeroCount], edx
_Z16MemFile_ReadDataP10MemoryFileiPv_10:
	add esp, 0xc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z16MemFile_ReadDataP10MemoryFileiPv_20:
	sub eax, 0x1
	mov [g_nonZeroCount], eax
	lea edi, [ecx-0x1]
	mov eax, [ebp+0x8]
	call _Z24MemFile_ReadByteInternalP10MemoryFile
	mov [ebx], al
	add ebx, 0x1
	mov edx, [ebp+0x8]
	cmp byte [edx+0x15], 0x0
	jnz _Z16MemFile_ReadDataP10MemoryFileiPv_10
	test edi, edi
	jz _Z16MemFile_ReadDataP10MemoryFileiPv_10
	mov ecx, edi
	jmp _Z16MemFile_ReadDataP10MemoryFileiPv_50
_Z16MemFile_ReadDataP10MemoryFileiPv_30:
	mov [g_zeroCount], edx
	mov eax, [ebp+0x8]
	call _Z24MemFile_ReadByteInternalP10MemoryFile
	mov edx, [ebp+0x8]
	cmp byte [edx+0x15], 0x0
	jnz _Z16MemFile_ReadDataP10MemoryFileiPv_10
	movzx edx, al
	test dl, 0xc0
	jnz _Z16MemFile_ReadDataP10MemoryFileiPv_60
	and edx, 0x3f
	lea eax, [edx+0x1]
	mov [g_nonZeroCount], eax
	mov dword [g_zeroCount], 0x0
	mov ecx, edi
	jmp _Z16MemFile_ReadDataP10MemoryFileiPv_50
_Z16MemFile_ReadDataP10MemoryFileiPv_60:
	shr al, 0x6
	movzx eax, al
	mov [g_nonZeroCount], eax
	and edx, 0x3f
	lea eax, [edx+0x1]
	mov [g_zeroCount], eax
	mov ecx, edi
	jmp _Z16MemFile_ReadDataP10MemoryFileiPv_50


;MemFile_IsWriting(MemoryFile*)
_Z17MemFile_IsWritingP10MemoryFile:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	cmp dword [eax+0x18], _Z27MemFile_WriteDataForArchiveP10MemoryFileiPv
	setz al
	movzx eax, al
	pop ebp
	ret
	nop


;MemFile_WriteData(MemoryFile*, int, void const*)
_Z17MemFile_WriteDataP10MemoryFileiPKv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov eax, [ebp+0x8]
	mov [ebp-0x24], eax
	mov edx, [ebp+0xc]
	mov [ebp-0x28], edx
	mov ebx, [ebp+0x10]
	mov [ebp-0x2c], ebx
	cmp byte [eax+0x15], 0x0
	jnz _Z17MemFile_WriteDataP10MemoryFileiPKv_10
	mov edi, [g_cacheSize]
	mov esi, [g_zeroCount]
	mov eax, [g_nonZeroCount]
	mov [ebp-0x1c], eax
	mov ecx, [g_cacheBufferLen]
	test edx, edx
	jle _Z17MemFile_WriteDataP10MemoryFileiPKv_20
	mov dword [ebp-0x20], 0x0
_Z17MemFile_WriteDataP10MemoryFileiPKv_160:
	mov ebx, [ebp-0x1c]
	test ebx, ebx
	jz _Z17MemFile_WriteDataP10MemoryFileiPKv_30
	mov edx, [ebp-0x2c]
	add edx, [ebp-0x20]
_Z17MemFile_WriteDataP10MemoryFileiPKv_60:
	movzx eax, byte [edx]
	movzx ebx, al
	test al, al
	jnz _Z17MemFile_WriteDataP10MemoryFileiPKv_40
	add esi, 0x1
	cmp ecx, 0x3f
	jz _Z17MemFile_WriteDataP10MemoryFileiPKv_50
	add ecx, 0x1
	add dword [ebp-0x20], 0x1
	add edx, 0x1
	mov ebx, [ebp-0x20]
	cmp [ebp-0x28], ebx
	jg _Z17MemFile_WriteDataP10MemoryFileiPKv_60
	mov edx, [ebp-0x1c]
_Z17MemFile_WriteDataP10MemoryFileiPKv_170:
	mov [g_cacheSize], edi
	mov [g_zeroCount], esi
	mov [g_nonZeroCount], edx
	mov [g_cacheBufferLen], ecx
_Z17MemFile_WriteDataP10MemoryFileiPKv_10:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z17MemFile_WriteDataP10MemoryFileiPKv_120:
	add esi, 0x1
	cmp ecx, 0x2
	jle _Z17MemFile_WriteDataP10MemoryFileiPKv_70
	cmp esi, 0x2
	jg _Z17MemFile_WriteDataP10MemoryFileiPKv_80
_Z17MemFile_WriteDataP10MemoryFileiPKv_150:
	add ecx, 0x1
	mov eax, [ebp-0x24]
	cmp byte [eax+0x16], 0x0
	jz _Z17MemFile_WriteDataP10MemoryFileiPKv_90
_Z17MemFile_WriteDataP10MemoryFileiPKv_130:
	mov [edi+g_cacheBuffer], bl
_Z17MemFile_WriteDataP10MemoryFileiPKv_140:
	add edi, 0x1
	add dword [ebp-0x20], 0x1
_Z17MemFile_WriteDataP10MemoryFileiPKv_190:
	mov ebx, [ebp-0x28]
	cmp [ebp-0x20], ebx
	jge _Z17MemFile_WriteDataP10MemoryFileiPKv_100
_Z17MemFile_WriteDataP10MemoryFileiPKv_30:
	mov edx, [ebp-0x2c]
	mov ebx, [ebp-0x20]
	movzx eax, byte [edx+ebx]
	movzx ebx, al
	cmp ecx, 0x3f
	jz _Z17MemFile_WriteDataP10MemoryFileiPKv_110
	test al, al
	jz _Z17MemFile_WriteDataP10MemoryFileiPKv_120
	xor esi, esi
	add ecx, 0x1
	mov eax, [ebp-0x24]
	cmp byte [eax+0x16], 0x0
	jnz _Z17MemFile_WriteDataP10MemoryFileiPKv_130
_Z17MemFile_WriteDataP10MemoryFileiPKv_90:
	mov edx, eax
	mov eax, [eax]
	add eax, [edx+0x8]
	mov [eax+edi], bl
	jmp _Z17MemFile_WriteDataP10MemoryFileiPKv_140
_Z17MemFile_WriteDataP10MemoryFileiPKv_20:
	mov edx, eax
	mov [g_cacheSize], edi
	mov [g_zeroCount], esi
	mov [g_nonZeroCount], edx
	mov [g_cacheBufferLen], ecx
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z17MemFile_WriteDataP10MemoryFileiPKv_70:
	test ecx, ecx
	js _Z17MemFile_WriteDataP10MemoryFileiPKv_150
	add ecx, 0x1
	mov [ebp-0x1c], ecx
	add dword [ebp-0x20], 0x1
	xor ecx, ecx
_Z17MemFile_WriteDataP10MemoryFileiPKv_100:
	mov eax, [ebp-0x20]
	cmp [ebp-0x28], eax
	jg _Z17MemFile_WriteDataP10MemoryFileiPKv_160
_Z17MemFile_WriteDataP10MemoryFileiPKv_200:
	mov edx, [ebp-0x1c]
	jmp _Z17MemFile_WriteDataP10MemoryFileiPKv_170
_Z17MemFile_WriteDataP10MemoryFileiPKv_110:
	mov [esp+0x4], ebx
	mov dword [esp], 0x3f
	and ecx, 0xffffff00
	mov edx, edi
	mov eax, [ebp-0x24]
	call _Z25MemFile_WriteDataInternalP10MemoryFileiiij
	test eax, eax
	jz _Z17MemFile_WriteDataP10MemoryFileiPKv_180
	test ebx, ebx
	setz al
	movzx esi, al
	add dword [ebp-0x20], 0x1
	mov edi, 0x2
	mov dword [ebp-0x1c], 0x0
	xor ecx, ecx
	jmp _Z17MemFile_WriteDataP10MemoryFileiPKv_190
_Z17MemFile_WriteDataP10MemoryFileiPKv_40:
	xor esi, esi
_Z17MemFile_WriteDataP10MemoryFileiPKv_210:
	mov [esp+0x4], ebx
	mov [esp], ecx
	mov ecx, [ebp-0x1c]
	mov edx, edi
	mov eax, [ebp-0x24]
	call _Z25MemFile_WriteDataInternalP10MemoryFileiiij
	test eax, eax
	jz _Z17MemFile_WriteDataP10MemoryFileiPKv_180
	add dword [ebp-0x20], 0x1
	mov edi, 0x2
	mov dword [ebp-0x1c], 0x0
	xor ecx, ecx
	mov eax, [ebp-0x20]
	cmp [ebp-0x28], eax
	jg _Z17MemFile_WriteDataP10MemoryFileiPKv_160
	jmp _Z17MemFile_WriteDataP10MemoryFileiPKv_200
_Z17MemFile_WriteDataP10MemoryFileiPKv_50:
	mov esi, 0x1
	jmp _Z17MemFile_WriteDataP10MemoryFileiPKv_210
_Z17MemFile_WriteDataP10MemoryFileiPKv_80:
	lea ebx, [edi-0x3]
	mov esi, [ebp-0x24]
	cmp byte [esi+0x16], 0x0
	jz _Z17MemFile_WriteDataP10MemoryFileiPKv_220
	movzx eax, byte [ebx+g_cacheBuffer]
_Z17MemFile_WriteDataP10MemoryFileiPKv_230:
	mov [esp+0x4], eax
	lea eax, [ecx-0x3]
	mov [esp], eax
	xor ecx, ecx
	mov edx, ebx
	mov eax, [ebp-0x24]
	call _Z25MemFile_WriteDataInternalP10MemoryFileiiij
	test eax, eax
	jz _Z17MemFile_WriteDataP10MemoryFileiPKv_180
	add dword [ebp-0x20], 0x1
	mov edi, 0x2
	xor esi, esi
	mov dword [ebp-0x1c], 0x1
	mov ecx, 0x2
	jmp _Z17MemFile_WriteDataP10MemoryFileiPKv_100
_Z17MemFile_WriteDataP10MemoryFileiPKv_180:
	mov eax, [ebp-0x24]
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z18MemFile_WriteErrorP10MemoryFile
_Z17MemFile_WriteDataP10MemoryFileiPKv_220:
	mov edx, [esi+0x8]
	mov eax, ebx
	mov esi, [ebp-0x24]
	add eax, [esi]
	movzx eax, byte [eax+edx]
	jmp _Z17MemFile_WriteDataP10MemoryFileiPKv_230


;MemFile_ReadCString(MemoryFile*)
_Z19MemFile_ReadCStringP10MemoryFile:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov ebx, g_saveBuffer+0x1
_Z19MemFile_ReadCStringP10MemoryFile_70:
	cmp byte [esi+0x15], 0x0
	jnz _Z19MemFile_ReadCStringP10MemoryFile_10
	mov eax, [g_nonZeroCount]
_Z19MemFile_ReadCStringP10MemoryFile_100:
	test eax, eax
	jnz _Z19MemFile_ReadCStringP10MemoryFile_20
	mov eax, [g_zeroCount]
	test eax, eax
	jz _Z19MemFile_ReadCStringP10MemoryFile_30
	sub eax, 0x1
	mov [g_zeroCount], eax
	mov byte [ebx-0x1], 0x0
_Z19MemFile_ReadCStringP10MemoryFile_10:
	cmp byte [esi+0x15], 0x0
	jnz _Z19MemFile_ReadCStringP10MemoryFile_40
_Z19MemFile_ReadCStringP10MemoryFile_80:
	cmp byte [ebx-0x1], 0x0
	jz _Z19MemFile_ReadCStringP10MemoryFile_50
	cmp ebx, g_cacheBuffer
	jae _Z19MemFile_ReadCStringP10MemoryFile_60
	add ebx, 0x1
	jmp _Z19MemFile_ReadCStringP10MemoryFile_70
_Z19MemFile_ReadCStringP10MemoryFile_60:
	mov dword [esp+0x4], _cstring_trying_to_read_c
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	add ebx, 0x1
	jmp _Z19MemFile_ReadCStringP10MemoryFile_70
_Z19MemFile_ReadCStringP10MemoryFile_20:
	sub eax, 0x1
	mov [g_nonZeroCount], eax
	mov eax, esi
	call _Z24MemFile_ReadByteInternalP10MemoryFile
	mov [ebx-0x1], al
	cmp byte [esi+0x15], 0x0
	jz _Z19MemFile_ReadCStringP10MemoryFile_80
_Z19MemFile_ReadCStringP10MemoryFile_40:
	mov eax, _cstring_null
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z19MemFile_ReadCStringP10MemoryFile_50:
	mov eax, g_saveBuffer
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z19MemFile_ReadCStringP10MemoryFile_30:
	mov eax, esi
	call _Z24MemFile_ReadByteInternalP10MemoryFile
	cmp byte [esi+0x15], 0x0
	jnz _Z19MemFile_ReadCStringP10MemoryFile_10
	movzx edx, al
	test dl, 0xc0
	jz _Z19MemFile_ReadCStringP10MemoryFile_90
	shr al, 0x6
	movzx eax, al
	mov [g_nonZeroCount], eax
	and edx, 0x3f
	lea eax, [edx+0x1]
	mov [g_zeroCount], eax
	mov eax, [g_nonZeroCount]
	jmp _Z19MemFile_ReadCStringP10MemoryFile_100
_Z19MemFile_ReadCStringP10MemoryFile_90:
	and edx, 0x3f
	lea eax, [edx+0x1]
	mov [g_nonZeroCount], eax
	mov dword [g_zeroCount], 0x0
	jmp _Z19MemFile_ReadCStringP10MemoryFile_100


;MemFile_StartSegment(MemoryFile*, int)
_Z20MemFile_StartSegmentP10MemoryFilei:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0x8]
	cmp byte [edi+0x15], 0x0
	jnz _Z20MemFile_StartSegmentP10MemoryFilei_10
	mov eax, [edi+0xc]
	test eax, eax
	js _Z20MemFile_StartSegmentP10MemoryFilei_20
	mov edx, [g_cacheSize]
	cmp edx, 0x1
	jle _Z20MemFile_StartSegmentP10MemoryFilei_30
	mov dword [esp+0x4], 0x0
	mov eax, [g_cacheBufferLen]
	mov [esp], eax
	mov ecx, [g_nonZeroCount]
	mov eax, edi
	call _Z25MemFile_WriteDataInternalP10MemoryFileiiij
	test eax, eax
	jz _Z20MemFile_StartSegmentP10MemoryFilei_40
	mov dword [g_cacheSize], 0x0
_Z20MemFile_StartSegmentP10MemoryFilei_30:
	cmp byte [edi+0x16], 0x0
	jnz _Z20MemFile_StartSegmentP10MemoryFilei_50
_Z20MemFile_StartSegmentP10MemoryFilei_130:
	cmp byte [edi+0x16], 0x0
	jnz _Z20MemFile_StartSegmentP10MemoryFilei_60
_Z20MemFile_StartSegmentP10MemoryFilei_190:
	mov dword [streamMode], 0x0
	call _Z16Sys_IsMainThreadv
	test al, al
	jz _Z20MemFile_StartSegmentP10MemoryFilei_70
	mov eax, 0x1
_Z20MemFile_StartSegmentP10MemoryFilei_180:
	mov [streamModeThread], eax
	mov dword [edi+0xc], 0xffffffff
	mov eax, [edi+0x10]
	mov ecx, [edi]
	mov edx, [edi+0x8]
	sub edx, eax
	mov [ecx+eax], edx
_Z20MemFile_StartSegmentP10MemoryFilei_170:
	cmp byte [edi+0x15], 0x0
	jnz _Z20MemFile_StartSegmentP10MemoryFilei_10
_Z20MemFile_StartSegmentP10MemoryFilei_20:
	mov eax, [ebp+0xc]
	mov [edi+0xc], eax
	test eax, eax
	js _Z20MemFile_StartSegmentP10MemoryFilei_80
	mov edx, [edi+0x8]
	mov [edi+0x10], edx
	lea eax, [edx+0x45]
	cmp eax, [edi+0x4]
	jg _Z20MemFile_StartSegmentP10MemoryFilei_90
	lea eax, [edx+0x4]
	mov [edi+0x8], eax
	mov edx, [edi+0x4]
	sub edx, eax
	mov ebx, eax
	add ebx, [edi]
	movzx esi, byte [edi+0x16]
	mov eax, esi
	test al, al
	jnz _Z20MemFile_StartSegmentP10MemoryFilei_100
_Z20MemFile_StartSegmentP10MemoryFilei_220:
	mov dword [streamMode], 0x2
	call _Z16Sys_IsMainThreadv
	test al, al
	jz _Z20MemFile_StartSegmentP10MemoryFilei_110
	mov eax, 0x1
_Z20MemFile_StartSegmentP10MemoryFilei_210:
	mov [streamModeThread], eax
	mov eax, esi
	mov [g_compress], al
	mov dword [g_cacheSize], 0x1
	mov dword [g_nonZeroCount], 0x0
	mov dword [g_zeroCount], 0x0
	mov dword [g_cacheBufferLen], 0xffffffff
_Z20MemFile_StartSegmentP10MemoryFilei_10:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z20MemFile_StartSegmentP10MemoryFilei_90:
	cmp byte [edi+0x14], 0x0
	jnz _Z20MemFile_StartSegmentP10MemoryFilei_120
_Z20MemFile_StartSegmentP10MemoryFilei_200:
	mov dword [esp+0x4], _cstring_memfile_startseg
	mov dword [esp], 0xa
	call _Z10Com_PrintfiPKcz
	mov byte [edi+0x15], 0x1
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z20MemFile_StartSegmentP10MemoryFilei_50:
	mov dword [stream], g_saveBuffer
	mov dword [esp+0x4], 0x4
	mov dword [esp], stream
	call deflate
	mov edx, [stream+0xc]
	sub edx, [edi]
	mov [edi+0x8], edx
	sub eax, 0x1
	jz _Z20MemFile_StartSegmentP10MemoryFilei_130
	cmp byte [edi+0x16], 0x0
	jnz _Z20MemFile_StartSegmentP10MemoryFilei_140
_Z20MemFile_StartSegmentP10MemoryFilei_230:
	mov dword [streamMode], 0x0
	call _Z16Sys_IsMainThreadv
	test al, al
	jz _Z20MemFile_StartSegmentP10MemoryFilei_150
	mov eax, 0x1
_Z20MemFile_StartSegmentP10MemoryFilei_250:
	mov [streamModeThread], eax
	cmp byte [edi+0x14], 0x0
	jnz _Z20MemFile_StartSegmentP10MemoryFilei_160
_Z20MemFile_StartSegmentP10MemoryFilei_240:
	mov dword [esp+0x4], _cstring_memfile_endsegme
	mov dword [esp], 0xa
	call _Z10Com_PrintfiPKcz
	mov byte [edi+0x15], 0x1
	jmp _Z20MemFile_StartSegmentP10MemoryFilei_170
_Z20MemFile_StartSegmentP10MemoryFilei_80:
	mov eax, [edi+0x8]
	mov [edi+0x4], eax
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z20MemFile_StartSegmentP10MemoryFilei_70:
	call Sys_IsDatabaseThread
	cmp al, 0x1
	sbb eax, eax
	not eax
	and eax, 0x5
	jmp _Z20MemFile_StartSegmentP10MemoryFilei_180
_Z20MemFile_StartSegmentP10MemoryFilei_60:
	mov dword [esp], stream
	call deflateEnd
	jmp _Z20MemFile_StartSegmentP10MemoryFilei_190
_Z20MemFile_StartSegmentP10MemoryFilei_40:
	mov eax, edi
	call _Z18MemFile_WriteErrorP10MemoryFile
	jmp _Z20MemFile_StartSegmentP10MemoryFilei_170
_Z20MemFile_StartSegmentP10MemoryFilei_120:
	mov dword [esp+0x4], _cstring_memfile_startseg1
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z20MemFile_StartSegmentP10MemoryFilei_200
_Z20MemFile_StartSegmentP10MemoryFilei_110:
	call Sys_IsDatabaseThread
	cmp al, 0x1
	sbb eax, eax
	not eax
	and eax, 0x5
	jmp _Z20MemFile_StartSegmentP10MemoryFilei_210
_Z20MemFile_StartSegmentP10MemoryFilei_100:
	mov edi, stream
	cld
	mov ecx, 0xd
	xor eax, eax
	rep stosd
	mov [stream+0xc], ebx
	mov [stream+0x10], edx
	mov dword [esp+0xc], 0x34
	mov dword [esp+0x8], _cstring_114
	mov dword [esp+0x4], 0x1
	mov dword [esp], stream
	call deflateInit_
	jmp _Z20MemFile_StartSegmentP10MemoryFilei_220
_Z20MemFile_StartSegmentP10MemoryFilei_140:
	mov dword [esp], stream
	call deflateEnd
	jmp _Z20MemFile_StartSegmentP10MemoryFilei_230
_Z20MemFile_StartSegmentP10MemoryFilei_160:
	mov dword [esp+0x4], _cstring_memfile_endsegme
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z20MemFile_StartSegmentP10MemoryFilei_240
_Z20MemFile_StartSegmentP10MemoryFilei_150:
	call Sys_IsDatabaseThread
	cmp al, 0x1
	sbb eax, eax
	not eax
	and eax, 0x5
	jmp _Z20MemFile_StartSegmentP10MemoryFilei_250


;MemFile_WriteCString(MemoryFile*, char const*)
_Z20MemFile_WriteCStringP10MemoryFilePKc:
	push ebp
	mov ebp, esp
	push edi
	sub esp, 0x14
	mov edi, [ebp+0xc]
	mov [esp+0x8], edi
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	repne scasb
	not ecx
	mov [esp+0x4], ecx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z17MemFile_WriteDataP10MemoryFileiPKv
	add esp, 0x14
	pop edi
	pop ebp
	ret
	nop


;MemFile_MoveToSegment(MemoryFile*, int)
_Z21MemFile_MoveToSegmentP10MemoryFilei:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	cmp byte [edi+0x15], 0x0
	jnz _Z21MemFile_MoveToSegmentP10MemoryFilei_10
	mov esi, [edi+0xc]
	test esi, esi
	js _Z21MemFile_MoveToSegmentP10MemoryFilei_20
	cmp byte [edi+0x16], 0x0
	jnz _Z21MemFile_MoveToSegmentP10MemoryFilei_30
	mov dword [streamMode], 0x0
	call _Z16Sys_IsMainThreadv
	test al, al
	jz _Z21MemFile_MoveToSegmentP10MemoryFilei_40
_Z21MemFile_MoveToSegmentP10MemoryFilei_130:
	mov eax, 0x1
_Z21MemFile_MoveToSegmentP10MemoryFilei_120:
	mov [streamModeThread], eax
_Z21MemFile_MoveToSegmentP10MemoryFilei_20:
	mov [edi+0xc], ebx
	cmp ebx, 0x0
	jl _Z21MemFile_MoveToSegmentP10MemoryFilei_10
	jnz _Z21MemFile_MoveToSegmentP10MemoryFilei_50
	xor eax, eax
	mov ecx, [edi]
	lea eax, [ecx+eax]
	mov esi, [eax]
	sub esi, 0x4
	sub eax, ecx
	add eax, 0x4
	mov [edi+0x8], eax
	lea edx, [eax+ecx]
	movzx ebx, byte [edi+0x16]
	test bl, bl
	jnz _Z21MemFile_MoveToSegmentP10MemoryFilei_60
_Z21MemFile_MoveToSegmentP10MemoryFilei_90:
	mov dword [streamMode], 0x1
	call _Z16Sys_IsMainThreadv
	test al, al
	jz _Z21MemFile_MoveToSegmentP10MemoryFilei_70
_Z21MemFile_MoveToSegmentP10MemoryFilei_100:
	mov eax, 0x1
_Z21MemFile_MoveToSegmentP10MemoryFilei_110:
	mov [streamModeThread], eax
	mov [g_compress], bl
	mov dword [g_nonZeroCount], 0x0
	mov dword [g_zeroCount], 0x0
_Z21MemFile_MoveToSegmentP10MemoryFilei_10:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z21MemFile_MoveToSegmentP10MemoryFilei_50:
	mov ecx, [edi]
	xor edx, edx
	xor eax, eax
_Z21MemFile_MoveToSegmentP10MemoryFilei_80:
	add edx, [ecx+edx]
	add eax, 0x1
	cmp eax, ebx
	jnz _Z21MemFile_MoveToSegmentP10MemoryFilei_80
	mov eax, edx
	lea eax, [ecx+eax]
	mov esi, [eax]
	sub esi, 0x4
	sub eax, ecx
	add eax, 0x4
	mov [edi+0x8], eax
	lea edx, [eax+ecx]
	movzx ebx, byte [edi+0x16]
	test bl, bl
	jz _Z21MemFile_MoveToSegmentP10MemoryFilei_90
_Z21MemFile_MoveToSegmentP10MemoryFilei_60:
	mov edi, stream
	cld
	mov ecx, 0xd
	xor eax, eax
	rep stosd
	mov [stream], edx
	mov [stream+0x4], esi
	mov dword [esp+0x8], 0x34
	mov dword [esp+0x4], _cstring_114
	mov dword [esp], stream
	call inflateInit_
	mov dword [streamMode], 0x1
	call _Z16Sys_IsMainThreadv
	test al, al
	jnz _Z21MemFile_MoveToSegmentP10MemoryFilei_100
_Z21MemFile_MoveToSegmentP10MemoryFilei_70:
	call Sys_IsDatabaseThread
	cmp al, 0x1
	sbb eax, eax
	not eax
	and eax, 0x5
	jmp _Z21MemFile_MoveToSegmentP10MemoryFilei_110
_Z21MemFile_MoveToSegmentP10MemoryFilei_40:
	call Sys_IsDatabaseThread
	cmp al, 0x1
	sbb eax, eax
	not eax
	and eax, 0x5
	jmp _Z21MemFile_MoveToSegmentP10MemoryFilei_120
_Z21MemFile_MoveToSegmentP10MemoryFilei_30:
	mov dword [esp], stream
	call inflateEnd
	mov dword [streamMode], 0x0
	call _Z16Sys_IsMainThreadv
	test al, al
	jnz _Z21MemFile_MoveToSegmentP10MemoryFilei_130
	jmp _Z21MemFile_MoveToSegmentP10MemoryFilei_40
	nop


;MemFile_InitForReading(MemoryFile*, int, void*, unsigned char)
_Z22MemFile_InitForReadingP10MemoryFileiPvh:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [ebp+0x10]
	mov [eax], edx
	mov edx, [ebp+0xc]
	mov [eax+0x4], edx
	mov dword [eax+0x8], 0x0
	mov byte [eax+0x14], 0x1
	mov byte [eax+0x15], 0x0
	mov dword [eax+0xc], 0xffffffff
	mov dword [eax+0x10], 0x0
	movzx edx, byte [ebp+0x14]
	mov [eax+0x16], dl
	mov dword [eax+0x18], _Z16MemFile_ReadDataP10MemoryFileiPv
	mov dword [ebp+0xc], 0x0
	mov [ebp+0x8], eax
	pop ebp
	jmp _Z21MemFile_MoveToSegmentP10MemoryFilei


;MemFile_InitForWriting(MemoryFile*, int, void*, unsigned char, unsigned char)
_Z22MemFile_InitForWritingP10MemoryFileiPvhh:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [ebp+0x10]
	mov [eax], edx
	mov edx, [ebp+0xc]
	mov [eax+0x4], edx
	mov dword [eax+0x8], 0x0
	movzx edx, byte [ebp+0x14]
	mov [eax+0x14], dl
	mov byte [eax+0x15], 0x0
	mov dword [eax+0xc], 0xffffffff
	mov dword [eax+0x10], 0x0
	movzx edx, byte [ebp+0x18]
	mov [eax+0x16], dl
	mov dword [eax+0x18], _Z27MemFile_WriteDataForArchiveP10MemoryFileiPv
	mov dword [ebp+0xc], 0x0
	mov [ebp+0x8], eax
	pop ebp
	jmp _Z20MemFile_StartSegmentP10MemoryFilei
	nop


;Initialized global or static variables of memfile:
SECTION .data


;Initialized constant data of memfile:
SECTION .rdata


;Zero initialized global or static variables of memfile:
SECTION .bss
g_zeroCount: resb 0x4
g_nonZeroCount: resb 0x1c
stream: resb 0x40
g_saveBuffer: resb 0x2000
g_cacheBuffer: resb 0x44
g_cacheBufferLen: resb 0x4
g_cacheSize: resb 0x4
streamModeThread: resb 0x4
streamMode: resb 0x4
g_compress: resb 0x4c


;All cstrings:
SECTION .rdata
_cstring_trying_to_read_c:		db "Trying to read corrupted file",0
_cstring_memfile_endsegme:		db "MemFile_EndSegment: Out of memory",0
_cstring_null:		db 0
_cstring_memfile_startseg:		db "MemFile_StartSegment: Out of memory",0ah,0
_cstring_memfile_startseg1:		db "MemFile_StartSegment: Out of memory",0
_cstring_114:		db "1.1.4",0



;All constant floats and doubles:
SECTION .rdata

