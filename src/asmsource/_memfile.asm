;Imports of memfile:
	extern Com_Printf
	extern inflate
	extern Com_Error
	extern Sys_IsMainThread
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
	global MemFile_WriteDataForArchive
	global MemFile_ReadByteInternal
	global MemFile_WriteError
	global MemFile_WriteDataInternal
	global MemFile_ReadData
	global MemFile_IsWriting
	global MemFile_WriteData
	global MemFile_ReadCString
	global MemFile_StartSegment
	global MemFile_WriteCString
	global MemFile_MoveToSegment
	global MemFile_InitForReading
	global MemFile_InitForWriting


SECTION .text


;MemFile_WriteDataForArchive(MemoryFile*, int, void*)
MemFile_WriteDataForArchive:
	push ebp
	mov ebp, esp
	pop ebp
	jmp MemFile_WriteData
	nop


;MemFile_ReadByteInternal(MemoryFile*)
MemFile_ReadByteInternal:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov ebx, eax
	cmp byte [eax+0x16], 0x0
	jnz MemFile_ReadByteInternal_10
	mov ecx, [eax+0x8]
	cmp ecx, [eax+0x4]
	jl MemFile_ReadByteInternal_20
MemFile_ReadByteInternal_40:
	cmp byte [ebx+0x14], 0x0
	jnz MemFile_ReadByteInternal_30
MemFile_ReadByteInternal_50:
	mov dword [esp+0x4], _cstring_trying_to_read_c
	mov dword [esp], 0xa
	call Com_Printf
	mov byte [ebx+0x15], 0x1
	xor eax, eax
	add esp, 0x24
	pop ebx
	pop ebp
	ret
MemFile_ReadByteInternal_20:
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
MemFile_ReadByteInternal_10:
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
	jnz MemFile_ReadByteInternal_40
	movzx eax, byte [ebp-0x9]
	add esp, 0x24
	pop ebx
	pop ebp
	ret
MemFile_ReadByteInternal_30:
	mov dword [esp+0x4], _cstring_trying_to_read_c
	mov dword [esp], 0x2
	call Com_Error
	jmp MemFile_ReadByteInternal_50
	nop


;MemFile_WriteError(MemoryFile*)
MemFile_WriteError:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, eax
	cmp byte [eax+0x16], 0x0
	jnz MemFile_WriteError_10
MemFile_WriteError_50:
	mov dword [streamMode], 0x0
	call Sys_IsMainThread
	test al, al
	jz MemFile_WriteError_20
	mov eax, 0x1
MemFile_WriteError_40:
	mov [streamModeThread], eax
	cmp byte [ebx+0x14], 0x0
	jz MemFile_WriteError_30
	mov dword [esp+0x4], _cstring_memfile_endsegme
	mov dword [esp], 0x2
	call Com_Error
MemFile_WriteError_30:
	mov dword [esp+0x4], _cstring_memfile_endsegme
	mov dword [esp], 0xa
	call Com_Printf
	mov byte [ebx+0x15], 0x1
	add esp, 0x14
	pop ebx
	pop ebp
	ret
MemFile_WriteError_20:
	call Sys_IsDatabaseThread
	cmp al, 0x1
	sbb eax, eax
	not eax
	and eax, 0x5
	jmp MemFile_WriteError_40
MemFile_WriteError_10:
	mov dword [esp], stream
	call deflateEnd
	jmp MemFile_WriteError_50


;MemFile_WriteDataInternal(MemoryFile*, int, int, int, unsigned int)
MemFile_WriteDataInternal:
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
	jz MemFile_WriteDataInternal_10
	mov dword [ebp-0x1c], g_cacheBuffer
	shl eax, 0x6
	add al, [ebp+0x8]
	mov [g_cacheBuffer], al
	mov edx, [stream+0x4]
	lea esi, [ebx+edx]
	cmp esi, 0x1fff
	jg MemFile_WriteDataInternal_20
MemFile_WriteDataInternal_60:
	lea eax, [edx+g_saveBuffer]
	mov ecx, esi
	sub ecx, edx
	mov [esp+0x8], ecx
	mov edx, [ebp-0x1c]
	mov [esp+0x4], edx
	mov [esp], eax
	call memcpy
	mov [stream+0x4], esi
MemFile_WriteDataInternal_40:
	movzx eax, byte [ebp+0xc]
	mov [g_cacheBuffer+0x1], al
	mov eax, 0x1
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
MemFile_WriteDataInternal_50:
	mov edx, [stream+0x4]
MemFile_WriteDataInternal_20:
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
	jz MemFile_WriteDataInternal_30
	test esi, esi
	jz MemFile_WriteDataInternal_40
	cmp esi, 0x1fff
	jg MemFile_WriteDataInternal_50
	mov edx, [stream+0x4]
	jmp MemFile_WriteDataInternal_60
MemFile_WriteDataInternal_10:
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
	jg MemFile_WriteDataInternal_30
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
MemFile_WriteDataInternal_30:
	xor eax, eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;MemFile_ReadData(MemoryFile*, int, void*)
MemFile_ReadData:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xc
	mov ecx, [ebp+0xc]
	test ecx, ecx
	jz MemFile_ReadData_10
	mov eax, [ebp+0x8]
	cmp byte [eax+0x15], 0x0
	jnz MemFile_ReadData_10
	mov ebx, [ebp+0x10]
MemFile_ReadData_50:
	mov eax, [g_nonZeroCount]
	test eax, eax
	jnz MemFile_ReadData_20
	mov edx, [g_zeroCount]
	mov esi, edx
MemFile_ReadData_40:
	mov edi, ecx
	sub edi, eax
	cmp esi, eax
	jz MemFile_ReadData_30
	cmp ecx, eax
	jz MemFile_ReadData_30
	sub edx, 0x1
	mov byte [ebx], 0x0
	add ebx, 0x1
	add eax, 0x1
	cmp ecx, eax
	jnz MemFile_ReadData_40
	mov [g_zeroCount], edx
MemFile_ReadData_10:
	add esp, 0xc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
MemFile_ReadData_20:
	sub eax, 0x1
	mov [g_nonZeroCount], eax
	lea edi, [ecx-0x1]
	mov eax, [ebp+0x8]
	call MemFile_ReadByteInternal
	mov [ebx], al
	add ebx, 0x1
	mov edx, [ebp+0x8]
	cmp byte [edx+0x15], 0x0
	jnz MemFile_ReadData_10
	test edi, edi
	jz MemFile_ReadData_10
	mov ecx, edi
	jmp MemFile_ReadData_50
MemFile_ReadData_30:
	mov [g_zeroCount], edx
	mov eax, [ebp+0x8]
	call MemFile_ReadByteInternal
	mov edx, [ebp+0x8]
	cmp byte [edx+0x15], 0x0
	jnz MemFile_ReadData_10
	movzx edx, al
	test dl, 0xc0
	jnz MemFile_ReadData_60
	and edx, 0x3f
	lea eax, [edx+0x1]
	mov [g_nonZeroCount], eax
	mov dword [g_zeroCount], 0x0
	mov ecx, edi
	jmp MemFile_ReadData_50
MemFile_ReadData_60:
	shr al, 0x6
	movzx eax, al
	mov [g_nonZeroCount], eax
	and edx, 0x3f
	lea eax, [edx+0x1]
	mov [g_zeroCount], eax
	mov ecx, edi
	jmp MemFile_ReadData_50


;MemFile_IsWriting(MemoryFile*)
MemFile_IsWriting:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	cmp dword [eax+0x18], MemFile_WriteDataForArchive
	setz al
	movzx eax, al
	pop ebp
	ret
	nop


;MemFile_WriteData(MemoryFile*, int, void const*)
MemFile_WriteData:
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
	jnz MemFile_WriteData_10
	mov edi, [g_cacheSize]
	mov esi, [g_zeroCount]
	mov eax, [g_nonZeroCount]
	mov [ebp-0x1c], eax
	mov ecx, [g_cacheBufferLen]
	test edx, edx
	jle MemFile_WriteData_20
	mov dword [ebp-0x20], 0x0
MemFile_WriteData_160:
	mov ebx, [ebp-0x1c]
	test ebx, ebx
	jz MemFile_WriteData_30
	mov edx, [ebp-0x2c]
	add edx, [ebp-0x20]
MemFile_WriteData_60:
	movzx eax, byte [edx]
	movzx ebx, al
	test al, al
	jnz MemFile_WriteData_40
	add esi, 0x1
	cmp ecx, 0x3f
	jz MemFile_WriteData_50
	add ecx, 0x1
	add dword [ebp-0x20], 0x1
	add edx, 0x1
	mov ebx, [ebp-0x20]
	cmp [ebp-0x28], ebx
	jg MemFile_WriteData_60
	mov edx, [ebp-0x1c]
MemFile_WriteData_170:
	mov [g_cacheSize], edi
	mov [g_zeroCount], esi
	mov [g_nonZeroCount], edx
	mov [g_cacheBufferLen], ecx
MemFile_WriteData_10:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
MemFile_WriteData_120:
	add esi, 0x1
	cmp ecx, 0x2
	jle MemFile_WriteData_70
	cmp esi, 0x2
	jg MemFile_WriteData_80
MemFile_WriteData_150:
	add ecx, 0x1
	mov eax, [ebp-0x24]
	cmp byte [eax+0x16], 0x0
	jz MemFile_WriteData_90
MemFile_WriteData_130:
	mov [edi+g_cacheBuffer], bl
MemFile_WriteData_140:
	add edi, 0x1
	add dword [ebp-0x20], 0x1
MemFile_WriteData_190:
	mov ebx, [ebp-0x28]
	cmp [ebp-0x20], ebx
	jge MemFile_WriteData_100
MemFile_WriteData_30:
	mov edx, [ebp-0x2c]
	mov ebx, [ebp-0x20]
	movzx eax, byte [edx+ebx]
	movzx ebx, al
	cmp ecx, 0x3f
	jz MemFile_WriteData_110
	test al, al
	jz MemFile_WriteData_120
	xor esi, esi
	add ecx, 0x1
	mov eax, [ebp-0x24]
	cmp byte [eax+0x16], 0x0
	jnz MemFile_WriteData_130
MemFile_WriteData_90:
	mov edx, eax
	mov eax, [eax]
	add eax, [edx+0x8]
	mov [eax+edi], bl
	jmp MemFile_WriteData_140
MemFile_WriteData_20:
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
MemFile_WriteData_70:
	test ecx, ecx
	js MemFile_WriteData_150
	add ecx, 0x1
	mov [ebp-0x1c], ecx
	add dword [ebp-0x20], 0x1
	xor ecx, ecx
MemFile_WriteData_100:
	mov eax, [ebp-0x20]
	cmp [ebp-0x28], eax
	jg MemFile_WriteData_160
MemFile_WriteData_200:
	mov edx, [ebp-0x1c]
	jmp MemFile_WriteData_170
MemFile_WriteData_110:
	mov [esp+0x4], ebx
	mov dword [esp], 0x3f
	and ecx, 0xffffff00
	mov edx, edi
	mov eax, [ebp-0x24]
	call MemFile_WriteDataInternal
	test eax, eax
	jz MemFile_WriteData_180
	test ebx, ebx
	setz al
	movzx esi, al
	add dword [ebp-0x20], 0x1
	mov edi, 0x2
	mov dword [ebp-0x1c], 0x0
	xor ecx, ecx
	jmp MemFile_WriteData_190
MemFile_WriteData_40:
	xor esi, esi
MemFile_WriteData_210:
	mov [esp+0x4], ebx
	mov [esp], ecx
	mov ecx, [ebp-0x1c]
	mov edx, edi
	mov eax, [ebp-0x24]
	call MemFile_WriteDataInternal
	test eax, eax
	jz MemFile_WriteData_180
	add dword [ebp-0x20], 0x1
	mov edi, 0x2
	mov dword [ebp-0x1c], 0x0
	xor ecx, ecx
	mov eax, [ebp-0x20]
	cmp [ebp-0x28], eax
	jg MemFile_WriteData_160
	jmp MemFile_WriteData_200
MemFile_WriteData_50:
	mov esi, 0x1
	jmp MemFile_WriteData_210
MemFile_WriteData_80:
	lea ebx, [edi-0x3]
	mov esi, [ebp-0x24]
	cmp byte [esi+0x16], 0x0
	jz MemFile_WriteData_220
	movzx eax, byte [ebx+g_cacheBuffer]
MemFile_WriteData_230:
	mov [esp+0x4], eax
	lea eax, [ecx-0x3]
	mov [esp], eax
	xor ecx, ecx
	mov edx, ebx
	mov eax, [ebp-0x24]
	call MemFile_WriteDataInternal
	test eax, eax
	jz MemFile_WriteData_180
	add dword [ebp-0x20], 0x1
	mov edi, 0x2
	xor esi, esi
	mov dword [ebp-0x1c], 0x1
	mov ecx, 0x2
	jmp MemFile_WriteData_100
MemFile_WriteData_180:
	mov eax, [ebp-0x24]
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp MemFile_WriteError
MemFile_WriteData_220:
	mov edx, [esi+0x8]
	mov eax, ebx
	mov esi, [ebp-0x24]
	add eax, [esi]
	movzx eax, byte [eax+edx]
	jmp MemFile_WriteData_230


;MemFile_ReadCString(MemoryFile*)
MemFile_ReadCString:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov ebx, g_saveBuffer+0x1
MemFile_ReadCString_70:
	cmp byte [esi+0x15], 0x0
	jnz MemFile_ReadCString_10
	mov eax, [g_nonZeroCount]
MemFile_ReadCString_100:
	test eax, eax
	jnz MemFile_ReadCString_20
	mov eax, [g_zeroCount]
	test eax, eax
	jz MemFile_ReadCString_30
	sub eax, 0x1
	mov [g_zeroCount], eax
	mov byte [ebx-0x1], 0x0
MemFile_ReadCString_10:
	cmp byte [esi+0x15], 0x0
	jnz MemFile_ReadCString_40
MemFile_ReadCString_80:
	cmp byte [ebx-0x1], 0x0
	jz MemFile_ReadCString_50
	cmp ebx, g_cacheBuffer
	jae MemFile_ReadCString_60
	add ebx, 0x1
	jmp MemFile_ReadCString_70
MemFile_ReadCString_60:
	mov dword [esp+0x4], _cstring_trying_to_read_c
	mov dword [esp], 0x2
	call Com_Error
	add ebx, 0x1
	jmp MemFile_ReadCString_70
MemFile_ReadCString_20:
	sub eax, 0x1
	mov [g_nonZeroCount], eax
	mov eax, esi
	call MemFile_ReadByteInternal
	mov [ebx-0x1], al
	cmp byte [esi+0x15], 0x0
	jz MemFile_ReadCString_80
MemFile_ReadCString_40:
	mov eax, _cstring_null
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
MemFile_ReadCString_50:
	mov eax, g_saveBuffer
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
MemFile_ReadCString_30:
	mov eax, esi
	call MemFile_ReadByteInternal
	cmp byte [esi+0x15], 0x0
	jnz MemFile_ReadCString_10
	movzx edx, al
	test dl, 0xc0
	jz MemFile_ReadCString_90
	shr al, 0x6
	movzx eax, al
	mov [g_nonZeroCount], eax
	and edx, 0x3f
	lea eax, [edx+0x1]
	mov [g_zeroCount], eax
	mov eax, [g_nonZeroCount]
	jmp MemFile_ReadCString_100
MemFile_ReadCString_90:
	and edx, 0x3f
	lea eax, [edx+0x1]
	mov [g_nonZeroCount], eax
	mov dword [g_zeroCount], 0x0
	jmp MemFile_ReadCString_100


;MemFile_StartSegment(MemoryFile*, int)
MemFile_StartSegment:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0x8]
	cmp byte [edi+0x15], 0x0
	jnz MemFile_StartSegment_10
	mov eax, [edi+0xc]
	test eax, eax
	js MemFile_StartSegment_20
	mov edx, [g_cacheSize]
	cmp edx, 0x1
	jle MemFile_StartSegment_30
	mov dword [esp+0x4], 0x0
	mov eax, [g_cacheBufferLen]
	mov [esp], eax
	mov ecx, [g_nonZeroCount]
	mov eax, edi
	call MemFile_WriteDataInternal
	test eax, eax
	jz MemFile_StartSegment_40
	mov dword [g_cacheSize], 0x0
MemFile_StartSegment_30:
	cmp byte [edi+0x16], 0x0
	jnz MemFile_StartSegment_50
MemFile_StartSegment_130:
	cmp byte [edi+0x16], 0x0
	jnz MemFile_StartSegment_60
MemFile_StartSegment_190:
	mov dword [streamMode], 0x0
	call Sys_IsMainThread
	test al, al
	jz MemFile_StartSegment_70
	mov eax, 0x1
MemFile_StartSegment_180:
	mov [streamModeThread], eax
	mov dword [edi+0xc], 0xffffffff
	mov eax, [edi+0x10]
	mov ecx, [edi]
	mov edx, [edi+0x8]
	sub edx, eax
	mov [ecx+eax], edx
MemFile_StartSegment_170:
	cmp byte [edi+0x15], 0x0
	jnz MemFile_StartSegment_10
MemFile_StartSegment_20:
	mov eax, [ebp+0xc]
	mov [edi+0xc], eax
	test eax, eax
	js MemFile_StartSegment_80
	mov edx, [edi+0x8]
	mov [edi+0x10], edx
	lea eax, [edx+0x45]
	cmp eax, [edi+0x4]
	jg MemFile_StartSegment_90
	lea eax, [edx+0x4]
	mov [edi+0x8], eax
	mov edx, [edi+0x4]
	sub edx, eax
	mov ebx, eax
	add ebx, [edi]
	movzx esi, byte [edi+0x16]
	mov eax, esi
	test al, al
	jnz MemFile_StartSegment_100
MemFile_StartSegment_220:
	mov dword [streamMode], 0x2
	call Sys_IsMainThread
	test al, al
	jz MemFile_StartSegment_110
	mov eax, 0x1
MemFile_StartSegment_210:
	mov [streamModeThread], eax
	mov eax, esi
	mov [g_compress], al
	mov dword [g_cacheSize], 0x1
	mov dword [g_nonZeroCount], 0x0
	mov dword [g_zeroCount], 0x0
	mov dword [g_cacheBufferLen], 0xffffffff
MemFile_StartSegment_10:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
MemFile_StartSegment_90:
	cmp byte [edi+0x14], 0x0
	jnz MemFile_StartSegment_120
MemFile_StartSegment_200:
	mov dword [esp+0x4], _cstring_memfile_startseg
	mov dword [esp], 0xa
	call Com_Printf
	mov byte [edi+0x15], 0x1
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
MemFile_StartSegment_50:
	mov dword [stream], g_saveBuffer
	mov dword [esp+0x4], 0x4
	mov dword [esp], stream
	call deflate
	mov edx, [stream+0xc]
	sub edx, [edi]
	mov [edi+0x8], edx
	sub eax, 0x1
	jz MemFile_StartSegment_130
	cmp byte [edi+0x16], 0x0
	jnz MemFile_StartSegment_140
MemFile_StartSegment_230:
	mov dword [streamMode], 0x0
	call Sys_IsMainThread
	test al, al
	jz MemFile_StartSegment_150
	mov eax, 0x1
MemFile_StartSegment_250:
	mov [streamModeThread], eax
	cmp byte [edi+0x14], 0x0
	jnz MemFile_StartSegment_160
MemFile_StartSegment_240:
	mov dword [esp+0x4], _cstring_memfile_endsegme
	mov dword [esp], 0xa
	call Com_Printf
	mov byte [edi+0x15], 0x1
	jmp MemFile_StartSegment_170
MemFile_StartSegment_80:
	mov eax, [edi+0x8]
	mov [edi+0x4], eax
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
MemFile_StartSegment_70:
	call Sys_IsDatabaseThread
	cmp al, 0x1
	sbb eax, eax
	not eax
	and eax, 0x5
	jmp MemFile_StartSegment_180
MemFile_StartSegment_60:
	mov dword [esp], stream
	call deflateEnd
	jmp MemFile_StartSegment_190
MemFile_StartSegment_40:
	mov eax, edi
	call MemFile_WriteError
	jmp MemFile_StartSegment_170
MemFile_StartSegment_120:
	mov dword [esp+0x4], _cstring_memfile_startseg1
	mov dword [esp], 0x2
	call Com_Error
	jmp MemFile_StartSegment_200
MemFile_StartSegment_110:
	call Sys_IsDatabaseThread
	cmp al, 0x1
	sbb eax, eax
	not eax
	and eax, 0x5
	jmp MemFile_StartSegment_210
MemFile_StartSegment_100:
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
	jmp MemFile_StartSegment_220
MemFile_StartSegment_140:
	mov dword [esp], stream
	call deflateEnd
	jmp MemFile_StartSegment_230
MemFile_StartSegment_160:
	mov dword [esp+0x4], _cstring_memfile_endsegme
	mov dword [esp], 0x2
	call Com_Error
	jmp MemFile_StartSegment_240
MemFile_StartSegment_150:
	call Sys_IsDatabaseThread
	cmp al, 0x1
	sbb eax, eax
	not eax
	and eax, 0x5
	jmp MemFile_StartSegment_250


;MemFile_WriteCString(MemoryFile*, char const*)
MemFile_WriteCString:
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
	call MemFile_WriteData
	add esp, 0x14
	pop edi
	pop ebp
	ret
	nop


;MemFile_MoveToSegment(MemoryFile*, int)
MemFile_MoveToSegment:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	cmp byte [edi+0x15], 0x0
	jnz MemFile_MoveToSegment_10
	mov esi, [edi+0xc]
	test esi, esi
	js MemFile_MoveToSegment_20
	cmp byte [edi+0x16], 0x0
	jnz MemFile_MoveToSegment_30
	mov dword [streamMode], 0x0
	call Sys_IsMainThread
	test al, al
	jz MemFile_MoveToSegment_40
MemFile_MoveToSegment_130:
	mov eax, 0x1
MemFile_MoveToSegment_120:
	mov [streamModeThread], eax
MemFile_MoveToSegment_20:
	mov [edi+0xc], ebx
	cmp ebx, 0x0
	jl MemFile_MoveToSegment_10
	jnz MemFile_MoveToSegment_50
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
	jnz MemFile_MoveToSegment_60
MemFile_MoveToSegment_90:
	mov dword [streamMode], 0x1
	call Sys_IsMainThread
	test al, al
	jz MemFile_MoveToSegment_70
MemFile_MoveToSegment_100:
	mov eax, 0x1
MemFile_MoveToSegment_110:
	mov [streamModeThread], eax
	mov [g_compress], bl
	mov dword [g_nonZeroCount], 0x0
	mov dword [g_zeroCount], 0x0
MemFile_MoveToSegment_10:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
MemFile_MoveToSegment_50:
	mov ecx, [edi]
	xor edx, edx
	xor eax, eax
MemFile_MoveToSegment_80:
	add edx, [ecx+edx]
	add eax, 0x1
	cmp eax, ebx
	jnz MemFile_MoveToSegment_80
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
	jz MemFile_MoveToSegment_90
MemFile_MoveToSegment_60:
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
	call Sys_IsMainThread
	test al, al
	jnz MemFile_MoveToSegment_100
MemFile_MoveToSegment_70:
	call Sys_IsDatabaseThread
	cmp al, 0x1
	sbb eax, eax
	not eax
	and eax, 0x5
	jmp MemFile_MoveToSegment_110
MemFile_MoveToSegment_40:
	call Sys_IsDatabaseThread
	cmp al, 0x1
	sbb eax, eax
	not eax
	and eax, 0x5
	jmp MemFile_MoveToSegment_120
MemFile_MoveToSegment_30:
	mov dword [esp], stream
	call inflateEnd
	mov dword [streamMode], 0x0
	call Sys_IsMainThread
	test al, al
	jnz MemFile_MoveToSegment_130
	jmp MemFile_MoveToSegment_40
	nop


;MemFile_InitForReading(MemoryFile*, int, void*, unsigned char)
MemFile_InitForReading:
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
	mov dword [eax+0x18], MemFile_ReadData
	mov dword [ebp+0xc], 0x0
	mov [ebp+0x8], eax
	pop ebp
	jmp MemFile_MoveToSegment


;MemFile_InitForWriting(MemoryFile*, int, void*, unsigned char, unsigned char)
MemFile_InitForWriting:
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
	mov dword [eax+0x18], MemFile_WriteDataForArchive
	mov dword [ebp+0xc], 0x0
	mov [ebp+0x8], eax
	pop ebp
	jmp MemFile_StartSegment
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

