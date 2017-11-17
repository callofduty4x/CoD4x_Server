;Imports of scr_parser:
	extern Hunk_AllocDebugMem
	extern strcpy
	extern Com_Memcpy
	extern Hunk_FreeDebugMem
	extern useFastFile
	extern DB_FindXAssetHeader
	extern FS_FOpenFileByMode
	extern fs_gameDirVar
	extern Hunk_AllocateTempMemoryHigh
	extern FS_Read
	extern FS_FCloseFile
	extern va
	extern Com_PrintMessage
	extern vsnprintf
	extern scrVarPub
	extern Scr_ShutdownAllocNode
	extern Com_PrintError
	extern Com_Printf
	extern Com_Error
	extern scrCompilePub
	extern memcpy
	extern scrVmPub
	extern g_EndPos
	extern Scr_IsInOpcodeMemory
	extern FS_FOpenFileRead
	extern memset

;Exports of scr_parser:
	global g_loadedImpureScript
	global Scr_AddSourceBufferInternal
	global Scr_ReadFile_FastFile
	global Scr_ReadFile_LoadObj
	global Scr_PrintSourcePos
	global CompileError
	global AddOpcodePos
	global RuntimeError
	global CompileError2
	global RemoveOpcodePos
	global Scr_AddSourceBuffer
	global Scr_GetSourceBuffer
	global Scr_InitOpcodeLookup
	global Scr_PrintPrevCodePos
	global Scr_LoadedImpureScript
	global AddThreadStartOpcodePos
	global Scr_ShutdownOpcodeLookup
	global Scr_SetLoadedImpureScript
	global scrParserPub
	global scrParserGlob


SECTION .text


;Scr_AddSourceBufferInternal(char const*, char const*, char*, int, unsigned char, unsigned char)
Scr_AddSourceBufferInternal:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov esi, eax
	mov [ebp-0x1c], edx
	mov [ebp-0x20], ecx
	movzx eax, byte [ebp+0xc]
	mov [ebp-0x21], al
	movzx edx, byte [ebp+0x10]
	mov [ebp-0x22], dl
	mov eax, [scrParserPub]
	test eax, eax
	jz Scr_AddSourceBufferInternal_10
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, esi
	repne scasb
	mov ebx, ecx
	not ebx
	mov dword [esp+0x4], _cstring_scr_addsourcebuf
	mov edx, [ebp+0x8]
	lea eax, [ebx+edx+0x2]
	mov [esp], eax
	call Hunk_AllocDebugMem
	mov edi, eax
	mov [esp+0x4], esi
	mov [esp], eax
	call strcpy
	mov eax, [ebp-0x20]
	test eax, eax
	jz Scr_AddSourceBufferInternal_20
	lea esi, [edi+ebx]
Scr_AddSourceBufferInternal_160:
	mov ecx, [ebp-0x20]
	cmp byte [ebp-0x21], 0x0
	jz Scr_AddSourceBufferInternal_30
	mov eax, [ebp+0x8]
	test eax, eax
	jns Scr_AddSourceBufferInternal_40
Scr_AddSourceBufferInternal_70:
	mov edx, [scrParserGlob+0x18]
	cmp [scrParserPub+0x4], edx
	jae Scr_AddSourceBufferInternal_50
Scr_AddSourceBufferInternal_90:
	mov ecx, [scrParserPub]
Scr_AddSourceBufferInternal_100:
	mov eax, [scrParserPub+0x4]
	lea edx, [eax+eax*2]
	lea edx, [ecx+edx*8]
	add eax, 0x1
	mov [scrParserPub+0x4], eax
	mov eax, [ebp-0x1c]
	mov [edx], eax
	mov [edx+0x4], edi
	mov [edx+0x8], esi
	mov eax, [ebp+0x8]
	mov [edx+0xc], eax
	mov dword [edx+0x10], 0xffffffff
	movzx eax, byte [ebp-0x22]
	mov [edx+0x14], al
	test esi, esi
	jz Scr_AddSourceBufferInternal_60
	mov [scrParserPub+0xc], esi
Scr_AddSourceBufferInternal_60:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Scr_AddSourceBufferInternal_30:
	mov eax, [ebp+0x8]
	test eax, eax
	js Scr_AddSourceBufferInternal_70
	mov ebx, esi
	xor edx, edx
Scr_AddSourceBufferInternal_80:
	movzx eax, byte [ecx]
	add ecx, 0x1
	mov [ebx], al
	add ebx, 0x1
	add edx, 0x1
	cmp [ebp+0x8], edx
	jge Scr_AddSourceBufferInternal_80
	mov edx, [scrParserGlob+0x18]
	cmp [scrParserPub+0x4], edx
	jb Scr_AddSourceBufferInternal_90
Scr_AddSourceBufferInternal_50:
	lea eax, [edx+edx]
	mov [scrParserGlob+0x18], eax
	mov dword [esp+0x4], _cstring_scr_addsourcebuf1
	add eax, edx
	shl eax, 0x4
	mov [esp], eax
	call Hunk_AllocDebugMem
	mov ebx, eax
	mov eax, [scrParserPub+0x4]
	lea eax, [eax+eax*2]
	shl eax, 0x3
	mov [esp+0x8], eax
	mov eax, [scrParserPub]
	mov [esp+0x4], eax
	mov [esp], ebx
	call Com_Memcpy
	mov eax, [scrParserPub]
	mov [esp], eax
	call Hunk_FreeDebugMem
	mov [scrParserPub], ebx
	mov ecx, ebx
	jmp Scr_AddSourceBufferInternal_100
Scr_AddSourceBufferInternal_10:
	mov dword [scrParserPub+0xc], 0x0
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Scr_AddSourceBufferInternal_40:
	mov edx, 0x1
	movzx eax, byte [ecx]
	add ecx, 0x1
	cmp al, 0xa
	jz Scr_AddSourceBufferInternal_110
Scr_AddSourceBufferInternal_130:
	cmp al, 0xd
	jz Scr_AddSourceBufferInternal_120
Scr_AddSourceBufferInternal_150:
	mov [esi+edx-0x1], al
Scr_AddSourceBufferInternal_140:
	cmp [ebp+0x8], edx
	jl Scr_AddSourceBufferInternal_70
	add edx, 0x1
	movzx eax, byte [ecx]
	add ecx, 0x1
	cmp al, 0xa
	jnz Scr_AddSourceBufferInternal_130
Scr_AddSourceBufferInternal_110:
	mov byte [esi+edx-0x1], 0x0
	jmp Scr_AddSourceBufferInternal_140
Scr_AddSourceBufferInternal_120:
	cmp byte [ecx], 0xa
	jz Scr_AddSourceBufferInternal_150
	mov byte [esi+edx-0x1], 0x0
	jmp Scr_AddSourceBufferInternal_140
Scr_AddSourceBufferInternal_20:
	xor esi, esi
	jmp Scr_AddSourceBufferInternal_160
	nop


;Scr_ReadFile_FastFile(char const*, char const*, char const*, unsigned char)
Scr_ReadFile_FastFile:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov esi, [ebp+0xc]
	movzx ebx, byte [ebp+0x14]
	mov eax, useFastFile
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz Scr_ReadFile_FastFile_10
	mov [esp+0x4], esi
	mov dword [esp], 0x1f
	call DB_FindXAssetHeader
	test eax, eax
	jz Scr_ReadFile_FastFile_10
	mov eax, [eax+0x8]
	mov [ebp-0x1c], eax
	movzx eax, bl
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, [ebp-0x1c]
	repne scasb
	not ecx
	sub ecx, 0x1
	mov [esp], ecx
	mov ecx, [ebp-0x1c]
	mov edx, [ebp+0x10]
	mov eax, esi
	call Scr_AddSourceBufferInternal
	mov eax, [ebp-0x1c]
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Scr_ReadFile_FastFile_10:
	movzx eax, bl
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1
	mov dword [esp], 0xffffffff
	xor ecx, ecx
	mov edx, [ebp+0x10]
	mov eax, esi
	call Scr_AddSourceBufferInternal
	mov dword [ebp-0x1c], 0x0
	mov eax, [ebp-0x1c]
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Scr_ReadFile_LoadObj(char const*, char const*, char const*, unsigned char)
Scr_ReadFile_LoadObj:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov edi, [ebp+0xc]
	movzx eax, byte [ebp+0x14]
	mov [ebp-0x29], al
	mov dword [esp+0x8], 0x0
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov [esp], edi
	call FS_FOpenFileByMode
	mov ebx, eax
	test eax, eax
	js Scr_ReadFile_LoadObj_10
	mov eax, fs_gameDirVar
	mov eax, [eax]
	mov edx, [eax+0xc]
	mov eax, 0x1
	cmp byte [edx], 0x0
	movzx edx, byte [g_loadedImpureScript]
	cmovnz eax, edx
	mov [g_loadedImpureScript], al
	lea eax, [ebx+0x1]
	mov [esp], eax
	call Hunk_AllocateTempMemoryHigh
	mov esi, eax
	mov eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov [esp], esi
	call FS_Read
	mov byte [esi+ebx], 0x0
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call FS_FCloseFile
	movzx eax, byte [ebp-0x29]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1
	mov [esp], ebx
	mov ecx, esi
	mov edx, [ebp+0x10]
	mov eax, edi
	call Scr_AddSourceBufferInternal
Scr_ReadFile_LoadObj_20:
	mov eax, esi
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Scr_ReadFile_LoadObj_10:
	movzx eax, byte [ebp-0x29]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1
	mov dword [esp], 0xffffffff
	xor ecx, ecx
	mov edx, [ebp+0x10]
	mov eax, edi
	call Scr_AddSourceBufferInternal
	xor esi, esi
	jmp Scr_ReadFile_LoadObj_20
	add [eax], al


;Scr_PrintSourcePos(int, char const*, char const*, unsigned int)
Scr_PrintSourcePos:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x42c
	mov esi, eax
	mov [ebp-0x424], edx
	mov edi, [ebp+0x8]
	test edi, edi
	jnz Scr_PrintSourcePos_10
	mov ebx, ecx
	mov dword [ebp-0x420], 0x0
	mov dword [ebp-0x41c], 0x0
Scr_PrintSourcePos_110:
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, ebx
	repne scasb
	not ecx
	sub ecx, 0x1
	cmp ecx, 0x3ff
	jle Scr_PrintSourcePos_20
	mov ecx, 0x3ff
Scr_PrintSourcePos_60:
	xor edi, edi
Scr_PrintSourcePos_30:
	movzx eax, byte [ebx+edi]
	cmp al, 0x9
	mov edx, 0x20
	cmovz eax, edx
	mov [edi+ebp-0x418], al
	add edi, 0x1
	cmp ecx, edi
	jnz Scr_PrintSourcePos_30
	lea eax, [ebp-0x418]
	add eax, ecx
	cmp byte [eax-0x1], 0xd
	jz Scr_PrintSourcePos_40
Scr_PrintSourcePos_70:
	mov byte [eax], 0x0
	mov ecx, [ebp-0x41c]
	add ecx, 0x1
	mov edx, _cstring__savegame
	mov edi, [scrParserGlob+0x24]
	test edi, edi
	mov eax, _cstring_null
	cmovz edx, eax
	mov [esp+0xc], ecx
	mov [esp+0x8], edx
	mov eax, [ebp-0x424]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_file_ss_line_d
	call va
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], eax
	mov [esp], esi
	call Com_PrintMessage
	lea eax, [ebp-0x418]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_s
	call va
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], eax
	mov [esp], esi
	call Com_PrintMessage
	mov ebx, [ebp-0x420]
	test ebx, ebx
	jg Scr_PrintSourcePos_50
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _cstring_
	mov [esp], esi
	call Com_PrintMessage
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Scr_PrintSourcePos_20:
	test ecx, ecx
	jg Scr_PrintSourcePos_60
	lea eax, [ebp-0x418]
	add eax, ecx
	cmp byte [eax-0x1], 0xd
	jnz Scr_PrintSourcePos_70
Scr_PrintSourcePos_40:
	mov byte [eax-0x1], 0x0
	jmp Scr_PrintSourcePos_70
Scr_PrintSourcePos_10:
	mov ebx, ecx
	xor edx, edx
	xor eax, eax
	jmp Scr_PrintSourcePos_80
Scr_PrintSourcePos_100:
	add ecx, 0x1
	add eax, 0x1
	cmp edi, eax
	jz Scr_PrintSourcePos_90
Scr_PrintSourcePos_80:
	cmp byte [ecx], 0x0
	jnz Scr_PrintSourcePos_100
	lea ebx, [ecx+0x1]
	add edx, 0x1
	mov ecx, ebx
	add eax, 0x1
	cmp edi, eax
	jnz Scr_PrintSourcePos_80
Scr_PrintSourcePos_90:
	sub ecx, ebx
	mov [ebp-0x420], ecx
	mov [ebp-0x41c], edx
	jmp Scr_PrintSourcePos_110
Scr_PrintSourcePos_50:
	xor edi, edi
Scr_PrintSourcePos_120:
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _cstring_space
	mov [esp], esi
	call Com_PrintMessage
	add edi, 0x1
	cmp edi, [ebp-0x420]
	jnz Scr_PrintSourcePos_120
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _cstring_
	mov [esp], esi
	call Com_PrintMessage
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;CompileError
CompileError:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x82c
	lea eax, [ebp+0x10]
	mov [ebp-0x1c], eax
	mov [esp+0xc], eax
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x400
	lea esi, [ebp-0x41c]
	mov [esp], esi
	call vsnprintf
	mov edi, scrVarPub
	cmp byte [edi+0x8], 0x0
	jz CompileError_10
	mov eax, [edi+0xc]
	test eax, eax
	jz CompileError_20
	add esp, 0x82c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CompileError_10:
	call Scr_ShutdownAllocNode
	mov dword [esp+0x4], _cstring_1
	mov dword [esp], 0x17
	call Com_PrintError
	mov dword [esp+0x4], _cstring__script_compile_
	mov dword [esp], 0x17
	call Com_PrintError
	cmp byte [edi+0x6], 0x0
	jz CompileError_30
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_s_
	mov dword [esp], 0x17
	call Com_PrintError
	mov eax, [ebp+0x8]
	mov [esp], eax
	mov ecx, [scrParserPub+0xc]
	mov edx, [scrParserPub+0x8]
	mov eax, 0x17
	call Scr_PrintSourcePos
	mov edi, [scrParserPub+0xc]
	mov eax, [ebp+0x8]
	test eax, eax
	jnz CompileError_40
	mov ebx, edi
CompileError_120:
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, ebx
	repne scasb
	not ecx
	sub ecx, 0x1
	cmp ecx, 0x3ff
	jle CompileError_50
	mov ecx, 0x3ff
CompileError_100:
	xor edi, edi
CompileError_60:
	movzx eax, byte [ebx+edi]
	cmp al, 0x9
	mov edx, 0x20
	cmovz eax, edx
	mov [edi+ebp-0x81c], al
	add edi, 0x1
	cmp ecx, edi
	jnz CompileError_60
CompileError_90:
	lea eax, [ebp-0x81c]
	add eax, ecx
	cmp byte [eax-0x1], 0xd
	jz CompileError_70
	mov byte [eax], 0x0
	jmp CompileError_80
CompileError_30:
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_s
	mov dword [esp], 0x17
	call Com_PrintError
	mov byte [ebp-0x81c], 0x0
CompileError_80:
	mov dword [esp+0x4], _cstring_2
	mov dword [esp], 0x17
	call Com_Printf
	lea eax, [ebp-0x81c]
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_script_compile_e
	mov dword [esp], 0x6
	call Com_Error
	add esp, 0x82c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CompileError_20:
	mov [esp+0x4], esi
	mov dword [esp], _cstring_s1
	call va
	mov [edi+0xc], eax
	add esp, 0x82c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CompileError_50:
	test ecx, ecx
	jle CompileError_90
	jmp CompileError_100
CompileError_40:
	mov ebx, edi
	xor eax, eax
	jmp CompileError_110
CompileError_130:
	add edi, 0x1
CompileError_140:
	add eax, 0x1
	cmp [ebp+0x8], eax
	jz CompileError_120
CompileError_110:
	cmp byte [edi], 0x0
	jnz CompileError_130
	add edi, 0x1
	mov ebx, edi
	jmp CompileError_140
CompileError_70:
	mov byte [eax-0x1], 0x0
	mov byte [eax], 0x0
	jmp CompileError_80
	add [eax], al


;AddOpcodePos(unsigned int, int)
AddOpcodePos:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov esi, [ebp+0xc]
	mov eax, scrVarPub
	cmp byte [eax+0x6], 0x0
	jz AddOpcodePos_10
	mov edi, scrCompilePub
	cmp dword [edi+0x20024], 0x2
	jz AddOpcodePos_10
	mov eax, esi
	and eax, 0xfffffffe
	cmp byte [edi+0x20021], 0x0
	cmovz esi, eax
	mov edx, [scrParserGlob+0x4]
	cmp [scrParserGlob+0x8], edx
	jae AddOpcodePos_20
	mov edx, [scrParserGlob+0x10]
	cmp [scrParserGlob+0x14], edx
	jae AddOpcodePos_30
AddOpcodePos_100:
	mov eax, [edi+0x20028]
	cmp [scrParserGlob+0x1c], eax
	jz AddOpcodePos_40
AddOpcodePos_90:
	mov dword [scrParserGlob+0x20], 0x0
	mov [scrParserGlob+0x1c], eax
	mov eax, [scrParserGlob+0x8]
	lea eax, [eax+eax*2]
	mov edx, [scrParserGlob]
	lea ebx, [edx+eax*8]
	mov eax, [scrParserGlob+0x14]
	mov [ebx+0x4], eax
	mov eax, [scrParserGlob+0x1c]
	mov [ebx], eax
	mov edx, [ebx+0x4]
	add edx, [scrParserGlob+0x20]
	mov eax, [scrParserGlob+0xc]
	lea ecx, [eax+edx*8]
	mov eax, [ebp+0x8]
	mov [ecx], eax
	add eax, 0x1
	jz AddOpcodePos_50
AddOpcodePos_110:
	cmp dword [ebp+0x8], 0xfffffffe
	jz AddOpcodePos_60
	mov edx, [scrParserGlob+0x2c]
	test edx, edx
	js AddOpcodePos_70
	test esi, 0x1
	jnz AddOpcodePos_80
AddOpcodePos_70:
	or [ecx+0x4], esi
	mov eax, [scrParserGlob+0x20]
	add eax, 0x1
	mov [scrParserGlob+0x20], eax
	mov [ebx+0x8], eax
	add dword [scrParserGlob+0x8], 0x1
	add dword [scrParserGlob+0x14], 0x1
AddOpcodePos_10:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
AddOpcodePos_30:
	lea eax, [edx+edx]
	mov [scrParserGlob+0x10], eax
	mov dword [esp+0x4], _cstring_addopcodepos
	shl edx, 0x4
	mov [esp], edx
	call Hunk_AllocDebugMem
	mov ebx, eax
	mov eax, [scrParserGlob+0x14]
	shl eax, 0x3
	mov [esp+0x8], eax
	mov eax, [scrParserGlob+0xc]
	mov [esp+0x4], eax
	mov [esp], ebx
	call memcpy
	mov eax, [scrParserGlob+0xc]
	mov [esp], eax
	call Hunk_FreeDebugMem
	mov [scrParserGlob+0xc], ebx
	mov eax, [edi+0x20028]
	cmp [scrParserGlob+0x1c], eax
	jnz AddOpcodePos_90
	jmp AddOpcodePos_40
AddOpcodePos_20:
	lea eax, [edx+edx]
	mov [scrParserGlob+0x4], eax
	mov dword [esp+0x4], _cstring_addopcodepos
	add eax, edx
	shl eax, 0x4
	mov [esp], eax
	call Hunk_AllocDebugMem
	mov ebx, eax
	mov eax, [scrParserGlob+0x8]
	lea eax, [eax+eax*2]
	shl eax, 0x3
	mov [esp+0x8], eax
	mov eax, [scrParserGlob]
	mov [esp+0x4], eax
	mov [esp], ebx
	call memcpy
	mov eax, [scrParserGlob]
	mov [esp], eax
	call Hunk_FreeDebugMem
	mov [scrParserGlob], ebx
	mov edx, [scrParserGlob+0x10]
	cmp [scrParserGlob+0x14], edx
	jb AddOpcodePos_100
	jmp AddOpcodePos_30
AddOpcodePos_80:
	mov eax, [scrParserGlob+0xc]
	mov edi, [ebp+0x8]
	mov [eax+edx*8], edi
	mov dword [scrParserGlob+0x2c], 0xffffffff
	or [ecx+0x4], esi
	mov eax, [scrParserGlob+0x20]
	add eax, 0x1
	mov [scrParserGlob+0x20], eax
	mov [ebx+0x8], eax
	add dword [scrParserGlob+0x8], 0x1
	add dword [scrParserGlob+0x14], 0x1
	jmp AddOpcodePos_10
AddOpcodePos_40:
	mov eax, [scrParserGlob+0x8]
	sub eax, 0x1
	mov [scrParserGlob+0x8], eax
	lea eax, [eax+eax*2]
	mov edx, [scrParserGlob]
	lea ebx, [edx+eax*8]
	mov edx, [ebx+0x4]
	add edx, [scrParserGlob+0x20]
	mov eax, [scrParserGlob+0xc]
	lea ecx, [eax+edx*8]
	mov eax, [ebp+0x8]
	mov [ecx], eax
	add eax, 0x1
	jnz AddOpcodePos_110
AddOpcodePos_50:
	mov [scrParserGlob+0x2c], edx
	or [ecx+0x4], esi
	mov eax, [scrParserGlob+0x20]
	add eax, 0x1
	mov [scrParserGlob+0x20], eax
	mov [ebx+0x8], eax
	add dword [scrParserGlob+0x8], 0x1
	add dword [scrParserGlob+0x14], 0x1
	jmp AddOpcodePos_10
AddOpcodePos_60:
	mov [scrParserGlob+0x30], edx
	or [ecx+0x4], esi
	mov eax, [scrParserGlob+0x20]
	add eax, 0x1
	mov [scrParserGlob+0x20], eax
	mov [ebx+0x8], eax
	add dword [scrParserGlob+0x8], 0x1
	add dword [scrParserGlob+0x14], 0x1
	jmp AddOpcodePos_10


;RuntimeError(char const*, unsigned int, char const*, char const*)
RuntimeError:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov eax, scrVarPub
	cmp byte [eax+0x6], 0x0
	jnz RuntimeError_10
	mov ebx, scrVmPub
	cmp byte [ebx+0x16], 0x0
	jz RuntimeError_20
	cmp byte [ebx+0x14], 0x0
	jnz RuntimeError_30
RuntimeError_60:
	test dword [ebx+0x14], 0xffff00
	setnz byte [ebp-0x1d]
	cmp byte [ebp-0x1d], 0x1
	sbb esi, esi
	and esi, 0xffffffef
	add esi, 0x17
	mov edx, [ebp+0x10]
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring__script_runtime_
	mov [esp], esi
	call Com_PrintError
	mov ecx, [ebp+0xc]
	mov [esp+0x8], ecx
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov [esp], esi
	call Scr_PrintPrevCodePos
	mov edx, scrVmPub
	mov eax, [edx+0x8]
	test eax, eax
	jnz RuntimeError_40
	mov dword [esp+0x4], _cstring_2
	mov [esp], esi
	call Com_PrintError
	cmp byte [ebp-0x1d], 0x0
	jz RuntimeError_20
RuntimeError_100:
	mov eax, [ebp+0x14]
	test eax, eax
	jz RuntimeError_50
RuntimeError_70:
	mov edx, _cstring_1
RuntimeError_110:
	mov eax, scrVmPub
	cmp byte [eax+0x16], 0x1
	sbb eax, eax
	add eax, 0x6
	mov ecx, [ebp+0x14]
	mov [esp+0x10], ecx
	mov [esp+0xc], edx
	mov edx, [ebp+0x10]
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_script_runtime_e
	mov [esp], eax
	call Com_Error
RuntimeError_20:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
RuntimeError_10:
	mov ebx, scrVmPub
	cmp byte [ebx+0x14], 0x0
	jz RuntimeError_60
RuntimeError_30:
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_s
	mov dword [esp], 0x17
	call Com_Printf
	cmp byte [ebx+0x16], 0x0
	jz RuntimeError_20
	mov eax, [ebp+0x14]
	test eax, eax
	jnz RuntimeError_70
	jmp RuntimeError_50
RuntimeError_40:
	sub eax, 0x1
	mov [ebp-0x1c], eax
	test eax, eax
	jle RuntimeError_80
	xor edi, edi
	lea eax, [eax+eax*2]
	lea ebx, [edx+eax*8+0x20]
RuntimeError_90:
	mov dword [esp+0x4], _cstring_called_from
	mov [esp], esi
	call Com_PrintError
	xor eax, eax
	cmp dword [ebx+0x4], 0x0
	setz al
	mov [esp+0x8], eax
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Scr_PrintPrevCodePos
	add edi, 0x1
	sub ebx, 0x18
	cmp [ebp-0x1c], edi
	jnz RuntimeError_90
RuntimeError_80:
	mov dword [esp+0x4], _cstring_started_from
	mov [esp], esi
	call Com_PrintError
	mov dword [esp+0x8], 0x1
	mov eax, scrVmPub
	mov eax, [eax+0x20]
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Scr_PrintPrevCodePos
	mov dword [esp+0x4], _cstring_2
	mov [esp], esi
	call Com_PrintError
	cmp byte [ebp-0x1d], 0x0
	jnz RuntimeError_100
	jmp RuntimeError_20
RuntimeError_50:
	mov edx, _cstring_null
	mov dword [ebp+0x14], _cstring_null
	jmp RuntimeError_110
	nop


;CompileError2(char const*, char const*, ...)
CompileError2:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x84c
	mov ebx, [ebp+0x8]
	mov dword [esp+0x4], _cstring_1
	mov dword [esp], 0x17
	call Com_PrintError
	mov dword [esp+0x4], _cstring__script_compile_
	mov dword [esp], 0x17
	call Com_PrintError
	lea eax, [ebp+0x10]
	mov [ebp-0x1c], eax
	mov [esp+0xc], eax
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x400
	lea eax, [ebp-0x41c]
	mov [esp], eax
	call vsnprintf
	lea edx, [ebp-0x41c]
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_s_
	mov dword [esp], 0x17
	call Com_PrintError
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], ebx
	mov dword [esp], 0x17
	call Scr_PrintPrevCodePos
	mov dword [esp+0x4], _cstring_2
	mov dword [esp], 0x17
	call Com_Printf
	mov eax, scrVarPub
	cmp byte [eax+0x6], 0x0
	jz CompileError2_10
	test ebx, ebx
	jz CompileError2_10
	cmp ebx, g_EndPos
	jz CompileError2_10
	mov eax, [eax+0x48]
	test eax, eax
	jz CompileError2_10
	mov [esp], ebx
	call Scr_IsInOpcodeMemory
	test eax, eax
	jz CompileError2_10
	lea esi, [ebx-0x1]
	mov ebx, [scrParserPub+0x4]
	sub ebx, 0x1
	jnz CompileError2_20
	mov dword [ebp-0x82c], 0x0
	mov ecx, [scrParserPub]
	mov [ebp-0x83c], ecx
CompileError2_190:
	mov eax, [scrParserGlob+0xc]
	mov [ebp-0x838], eax
	mov edx, [scrParserGlob+0x8]
	mov [ebp-0x834], edx
	mov edi, edx
	sub edi, 0x1
	mov ecx, [scrParserGlob]
	mov [ebp-0x830], ecx
	xor ebx, ebx
	mov eax, ecx
	jmp CompileError2_30
CompileError2_60:
	lea ebx, [edx+0x1]
	cmp [ebp-0x834], ebx
	jz CompileError2_40
	lea eax, [ebx+ebx*2]
	mov edx, [ebp-0x830]
	cmp esi, [edx+eax*8]
	jb CompileError2_40
CompileError2_70:
	cmp ebx, edi
	ja CompileError2_50
	mov eax, [ebp-0x830]
CompileError2_30:
	lea edx, [edi+ebx]
	shr edx, 1
	lea ecx, [edx+edx*2]
	lea ecx, [eax+ecx*8]
	cmp esi, [ecx]
	jae CompileError2_60
	lea edi, [edx-0x1]
	jmp CompileError2_70
CompileError2_10:
	mov byte [ebp-0x81c], 0x0
	lea esi, [ebp-0x81c]
CompileError2_150:
	mov [esp+0xc], esi
	lea ecx, [ebp-0x41c]
	mov [esp+0x8], ecx
	mov dword [esp+0x4], _cstring_script_compile_e
	mov dword [esp], 0x6
	call Com_Error
	add esp, 0x84c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CompileError2_50:
	xor ecx, ecx
CompileError2_40:
	mov eax, [ecx+0x4]
	mov edx, [ebp-0x838]
	mov ecx, [edx+eax*8]
	mov edx, [ebp-0x82c]
	lea eax, [edx+edx*2]
	mov edx, [ebp-0x83c]
	mov ebx, [edx+eax*8+0x8]
	test ecx, ecx
	jz CompileError2_80
	mov eax, ebx
	xor edx, edx
	jmp CompileError2_90
CompileError2_100:
	add eax, 0x1
CompileError2_110:
	add edx, 0x1
	cmp ecx, edx
	jz CompileError2_80
CompileError2_90:
	cmp byte [eax], 0x0
	jnz CompileError2_100
	lea ebx, [eax+0x1]
	mov eax, ebx
	jmp CompileError2_110
CompileError2_80:
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, ebx
	repne scasb
	not ecx
	sub ecx, 0x1
	cmp ecx, 0x3ff
	jle CompileError2_120
	mov ecx, 0x3ff
CompileError2_160:
	xor edi, edi
	lea esi, [ebp-0x81c]
CompileError2_130:
	movzx eax, byte [ebx+edi]
	cmp al, 0x9
	mov edx, 0x20
	cmovz eax, edx
	mov [edi+esi], al
	add edi, 0x1
	cmp ecx, edi
	jnz CompileError2_130
CompileError2_170:
	lea eax, [esi+ecx]
	cmp byte [eax-0x1], 0xd
	jz CompileError2_140
	mov byte [eax], 0x0
	jmp CompileError2_150
CompileError2_120:
	test ecx, ecx
	jg CompileError2_160
	lea esi, [ebp-0x81c]
	jmp CompileError2_170
CompileError2_20:
	lea eax, [ebx+ebx*2]
	mov edx, [scrParserPub]
	mov [ebp-0x83c], edx
	lea edx, [edx+eax*8]
	mov [ebp-0x82c], ebx
	xor ecx, ecx
CompileError2_200:
	mov eax, [edx]
	test eax, eax
	jz CompileError2_180
	cmp esi, eax
	jae CompileError2_190
CompileError2_180:
	sub dword [ebp-0x82c], 0x1
	add ecx, 0x1
	sub edx, 0x18
	cmp ebx, ecx
	jnz CompileError2_200
	jmp CompileError2_190
CompileError2_140:
	mov byte [eax-0x1], 0x0
	mov byte [eax], 0x0
	jmp CompileError2_150
	nop


;RemoveOpcodePos()
RemoveOpcodePos:
	push ebp
	mov ebp, esp
	mov eax, scrVarPub
	cmp byte [eax+0x6], 0x0
	jz RemoveOpcodePos_10
	mov eax, scrCompilePub
	cmp dword [eax+0x20024], 0x2
	jz RemoveOpcodePos_10
	sub dword [scrParserGlob+0x14], 0x1
	mov edx, [scrParserGlob+0x8]
	sub edx, 0x1
	mov [scrParserGlob+0x8], edx
	mov ecx, [scrParserGlob+0x20]
	sub ecx, 0x1
	mov [scrParserGlob+0x20], ecx
	lea edx, [edx+edx*2]
	xor eax, eax
	test ecx, ecx
	cmovnz eax, [scrParserGlob+0x1c]
	mov [scrParserGlob+0x1c], eax
	mov eax, [scrParserGlob]
	mov [eax+edx*8+0x8], ecx
RemoveOpcodePos_10:
	pop ebp
	ret
	nop


;Scr_AddSourceBuffer(char const*, char const*, char const*, unsigned char)
Scr_AddSourceBuffer:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	movzx eax, byte [ebp+0x14]
	mov [ebp-0x31], al
	test al, al
	jz Scr_AddSourceBuffer_10
	mov ebx, [scrParserGlob+0x24]
	test ebx, ebx
	jz Scr_AddSourceBuffer_20
	mov edx, [scrParserGlob+0x28]
	sub edx, 0x1
	mov [scrParserGlob+0x28], edx
	mov eax, [scrParserGlob+0x24]
	lea edx, [eax+edx*8]
	mov [ebp-0x2c], edx
	mov edx, [edx+0x4]
	mov [ebp-0x30], edx
	test edx, edx
	js Scr_AddSourceBuffer_30
	mov eax, edx
	add eax, 0x1
	mov [esp], eax
	call Hunk_AllocateTempMemoryHigh
	mov esi, eax
	mov eax, [ebp-0x2c]
	mov edi, [eax]
	mov ecx, [ebp-0x30]
	test ecx, ecx
	jg Scr_AddSourceBuffer_40
	mov ecx, esi
Scr_AddSourceBuffer_100:
	mov byte [ecx], 0x0
	mov edx, [ebp-0x2c]
	mov edx, [edx]
	test edx, edx
	jz Scr_AddSourceBuffer_50
	mov eax, [scrParserGlob+0x28]
	mov edx, [scrParserGlob+0x24]
	mov eax, [edx+eax*8]
	mov [esp], eax
	call Hunk_FreeDebugMem
Scr_AddSourceBuffer_50:
	movzx eax, byte [ebp-0x31]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1
	mov edx, [ebp-0x30]
	mov [esp], edx
	mov ecx, esi
	mov edx, [ebp+0x10]
	mov eax, [ebp+0xc]
	call Scr_AddSourceBufferInternal
	mov eax, esi
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Scr_AddSourceBuffer_10:
	mov ebx, eax
Scr_AddSourceBuffer_110:
	mov esi, fs_gameDirVar
	mov eax, [esi]
	mov eax, [eax+0xc]
	cmp byte [eax], 0x0
	jnz Scr_AddSourceBuffer_60
	mov eax, useFastFile
	mov eax, [eax]
	mov edx, Scr_ReadFile_FastFile
	cmp byte [eax+0xc], 0x0
	mov eax, Scr_ReadFile_LoadObj
	cmovz edx, eax
	movzx eax, bl
	mov [esp+0xc], eax
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call edx
	mov esi, eax
Scr_AddSourceBuffer_130:
	mov eax, esi
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Scr_AddSourceBuffer_60:
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov eax, [ebp+0xc]
	mov [esp], eax
	call FS_FOpenFileRead
	test eax, eax
	js Scr_AddSourceBuffer_70
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call FS_FCloseFile
	mov edi, ebx
	mov dword [esp+0x8], 0x0
	lea eax, [ebp-0x20]
	mov [esp+0x4], eax
	mov edx, [ebp+0xc]
	mov [esp], edx
	call FS_FOpenFileByMode
	mov ebx, eax
	test eax, eax
	js Scr_AddSourceBuffer_80
	mov eax, [esi]
	mov edx, [eax+0xc]
	mov eax, 0x1
	cmp byte [edx], 0x0
	movzx edx, byte [g_loadedImpureScript]
	cmovnz eax, edx
	mov [g_loadedImpureScript], al
	lea eax, [ebx+0x1]
	mov [esp], eax
	call Hunk_AllocateTempMemoryHigh
	mov esi, eax
	mov eax, [ebp-0x20]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov [esp], esi
	call FS_Read
	mov byte [esi+ebx], 0x0
	mov eax, [ebp-0x20]
	mov [esp], eax
	call FS_FCloseFile
	mov edx, edi
	movzx eax, dl
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1
	mov [esp], ebx
	mov ecx, esi
	mov edx, [ebp+0x10]
	mov eax, [ebp+0xc]
	call Scr_AddSourceBufferInternal
	mov eax, esi
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Scr_AddSourceBuffer_40:
	mov ecx, esi
	xor ebx, ebx
Scr_AddSourceBuffer_90:
	movzx eax, byte [edi]
	add edi, 0x1
	test al, al
	mov edx, 0xa
	cmovz eax, edx
	mov [ecx], al
	add ecx, 0x1
	add ebx, 0x1
	cmp [ebp-0x30], ebx
	jnz Scr_AddSourceBuffer_90
	jmp Scr_AddSourceBuffer_100
Scr_AddSourceBuffer_20:
	movzx ebx, byte [ebp-0x31]
	jmp Scr_AddSourceBuffer_110
Scr_AddSourceBuffer_30:
	xor esi, esi
	jmp Scr_AddSourceBuffer_50
Scr_AddSourceBuffer_70:
	mov eax, useFastFile
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz Scr_AddSourceBuffer_120
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov dword [esp], 0x1f
	call DB_FindXAssetHeader
	test eax, eax
	jz Scr_AddSourceBuffer_120
	mov esi, [eax+0x8]
	movzx eax, bl
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, esi
	repne scasb
	not ecx
	sub ecx, 0x1
	mov [esp], ecx
	mov ecx, esi
	mov edx, [ebp+0x10]
	mov eax, [ebp+0xc]
	call Scr_AddSourceBufferInternal
	jmp Scr_AddSourceBuffer_130
Scr_AddSourceBuffer_120:
	movzx eax, bl
Scr_AddSourceBuffer_140:
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1
	mov dword [esp], 0xffffffff
	xor ecx, ecx
	mov edx, [ebp+0x10]
	mov eax, [ebp+0xc]
	call Scr_AddSourceBufferInternal
	xor esi, esi
	jmp Scr_AddSourceBuffer_130
Scr_AddSourceBuffer_80:
	mov edx, edi
	movzx eax, dl
	jmp Scr_AddSourceBuffer_140
	add [eax], al


;Scr_GetSourceBuffer(char const*)
Scr_GetSourceBuffer:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	mov edi, [ebp+0x8]
	mov esi, [scrParserPub+0x4]
	sub esi, 0x1
	jz Scr_GetSourceBuffer_10
	lea edx, [esi+esi*2]
	mov eax, [scrParserPub]
	lea edx, [eax+edx*8]
	mov ecx, esi
	xor ebx, ebx
Scr_GetSourceBuffer_40:
	mov eax, [edx]
	test eax, eax
	jz Scr_GetSourceBuffer_20
	cmp eax, edi
	jbe Scr_GetSourceBuffer_30
Scr_GetSourceBuffer_20:
	sub ecx, 0x1
	add ebx, 0x1
	sub edx, 0x18
	cmp esi, ebx
	jnz Scr_GetSourceBuffer_40
Scr_GetSourceBuffer_30:
	mov esi, ecx
Scr_GetSourceBuffer_10:
	mov eax, esi
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop
	add [eax], al


;Scr_InitOpcodeLookup()
Scr_InitOpcodeLookup:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, scrVarPub
	cmp byte [eax+0x6], 0x0
	jnz Scr_InitOpcodeLookup_10
	leave
	ret
Scr_InitOpcodeLookup_10:
	mov dword [scrParserGlob+0x2c], 0xffffffff
	mov dword [scrParserGlob+0x4], 0x40000
	mov dword [scrParserGlob+0x8], 0x0
	mov dword [esp+0x4], _cstring_scr_initopcodelo
	mov dword [esp], 0x600000
	call Hunk_AllocDebugMem
	mov [scrParserGlob], eax
	mov edx, [scrParserGlob+0x4]
	lea edx, [edx+edx*2]
	shl edx, 0x3
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call memset
	mov dword [scrParserGlob+0x10], 0x40000
	mov dword [scrParserGlob+0x14], 0x0
	mov dword [esp+0x4], _cstring_scr_initopcodelo
	mov dword [esp], 0x200000
	call Hunk_AllocDebugMem
	mov [scrParserGlob+0xc], eax
	mov dword [scrParserGlob+0x1c], 0x0
	mov dword [scrParserGlob+0x20], 0x0
	mov dword [scrParserGlob+0x18], 0x100
	mov dword [scrParserPub+0x4], 0x0
	mov dword [esp+0x4], _cstring_scr_initopcodelo
	mov dword [esp], 0x1800
	call Hunk_AllocDebugMem
	mov [scrParserPub], eax
	leave
	ret


;Scr_PrintPrevCodePos(int, char const*, unsigned int)
Scr_PrintPrevCodePos:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov eax, [ebp+0x8]
	mov [ebp-0x2c], eax
	mov ebx, [ebp+0xc]
	mov edx, [ebp+0x10]
	mov [ebp-0x30], edx
	test ebx, ebx
	jz Scr_PrintPrevCodePos_10
	cmp ebx, g_EndPos
	jz Scr_PrintPrevCodePos_20
	mov esi, scrVarPub
	cmp byte [esi+0x6], 0x0
	jz Scr_PrintPrevCodePos_30
	mov eax, [esi+0x48]
	test eax, eax
	jz Scr_PrintPrevCodePos_40
	mov [esp], ebx
	call Scr_IsInOpcodeMemory
	test eax, eax
	jz Scr_PrintPrevCodePos_40
	lea edi, [ebx-0x1]
	mov ebx, [scrParserPub+0x4]
	sub ebx, 0x1
	jnz Scr_PrintPrevCodePos_50
	mov dword [ebp-0x1c], 0x0
	mov ebx, [scrParserPub]
	mov [ebp-0x34], ebx
Scr_PrintPrevCodePos_140:
	mov eax, [scrParserGlob+0xc]
	mov [ebp-0x28], eax
	mov edx, [scrParserGlob+0x8]
	mov [ebp-0x24], edx
	mov ecx, edx
	sub ecx, 0x1
	mov ebx, [scrParserGlob]
	mov [ebp-0x20], ebx
	xor esi, esi
	mov eax, ebx
	jmp Scr_PrintPrevCodePos_60
Scr_PrintPrevCodePos_90:
	lea esi, [edx+0x1]
	cmp [ebp-0x24], esi
	jz Scr_PrintPrevCodePos_70
	lea eax, [esi+esi*2]
	mov edx, [ebp-0x20]
	cmp edi, [edx+eax*8]
	jb Scr_PrintPrevCodePos_70
	cmp ecx, esi
	jb Scr_PrintPrevCodePos_80
Scr_PrintPrevCodePos_100:
	mov eax, [ebp-0x20]
Scr_PrintPrevCodePos_60:
	lea edx, [ecx+esi]
	shr edx, 1
	lea ebx, [edx+edx*2]
	lea ebx, [eax+ebx*8]
	cmp edi, [ebx]
	jae Scr_PrintPrevCodePos_90
	lea ecx, [edx-0x1]
	cmp ecx, esi
	jae Scr_PrintPrevCodePos_100
Scr_PrintPrevCodePos_80:
	xor ebx, ebx
Scr_PrintPrevCodePos_70:
	mov ecx, [ebp-0x1c]
	lea eax, [ecx+ecx*2]
	mov esi, [ebp-0x34]
	lea eax, [esi+eax*8]
	mov ecx, [eax+0x8]
	mov edx, [eax+0x4]
	mov eax, [ebx+0x4]
	add [ebp-0x30], eax
	mov ebx, [ebp-0x30]
	mov esi, [ebp-0x28]
	mov eax, [esi+ebx*8]
	mov [ebp+0x8], eax
	mov eax, [ebp-0x2c]
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp Scr_PrintSourcePos
Scr_PrintPrevCodePos_30:
	lea eax, [ebx-0x1]
	mov [esp], eax
	call Scr_IsInOpcodeMemory
	test eax, eax
	jnz Scr_PrintPrevCodePos_110
Scr_PrintPrevCodePos_40:
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_s2
	call va
	mov dword [ebp+0x10], 0x0
	mov [ebp+0xc], eax
	mov eax, [ebp-0x2c]
	mov [ebp+0x8], eax
Scr_PrintPrevCodePos_120:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp Com_PrintMessage
Scr_PrintPrevCodePos_110:
	sub ebx, [esi+0x48]
	mov [esp+0x4], ebx
	mov dword [esp], _cstring__d
	call va
	mov dword [ebp+0x10], 0x0
	mov [ebp+0xc], eax
	mov ecx, [ebp-0x2c]
	mov [ebp+0x8], ecx
	jmp Scr_PrintPrevCodePos_120
Scr_PrintPrevCodePos_50:
	lea eax, [ebx+ebx*2]
	mov esi, [scrParserPub]
	mov [ebp-0x34], esi
	lea edx, [esi+eax*8]
	mov [ebp-0x1c], ebx
	xor ecx, ecx
Scr_PrintPrevCodePos_150:
	mov eax, [edx]
	test eax, eax
	jz Scr_PrintPrevCodePos_130
	cmp edi, eax
	jae Scr_PrintPrevCodePos_140
Scr_PrintPrevCodePos_130:
	sub dword [ebp-0x1c], 0x1
	add ecx, 0x1
	sub edx, 0x18
	cmp ebx, ecx
	jnz Scr_PrintPrevCodePos_150
	jmp Scr_PrintPrevCodePos_140
Scr_PrintPrevCodePos_10:
	mov dword [ebp+0x10], 0x0
	mov dword [ebp+0xc], _cstring_frozen_thread
	mov [ebp+0x8], eax
	jmp Scr_PrintPrevCodePos_120
Scr_PrintPrevCodePos_20:
	mov dword [ebp+0x10], 0x0
	mov dword [ebp+0xc], _cstring_removed_thread
	mov edx, [ebp-0x2c]
	mov [ebp+0x8], edx
	jmp Scr_PrintPrevCodePos_120


;Scr_LoadedImpureScript()
Scr_LoadedImpureScript:
	push ebp
	mov ebp, esp
	movzx eax, byte [g_loadedImpureScript]
	pop ebp
	ret


;AddThreadStartOpcodePos(unsigned int)
AddThreadStartOpcodePos:
	push ebp
	mov ebp, esp
	mov eax, scrVarPub
	cmp byte [eax+0x6], 0x0
	jz AddThreadStartOpcodePos_10
	mov eax, scrCompilePub
	cmp dword [eax+0x20024], 0x2
	jz AddThreadStartOpcodePos_10
	mov eax, [scrParserGlob+0x30]
	mov edx, [scrParserGlob+0xc]
	lea eax, [edx+eax*8]
	mov edx, [ebp+0x8]
	mov [eax], edx
	mov dword [eax+0x4], 0x4
	mov dword [scrParserGlob+0x30], 0xffffffff
AddThreadStartOpcodePos_10:
	pop ebp
	ret


;Scr_ShutdownOpcodeLookup()
Scr_ShutdownOpcodeLookup:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov eax, [scrParserGlob]
	test eax, eax
	jz Scr_ShutdownOpcodeLookup_10
	mov [esp], eax
	call Hunk_FreeDebugMem
	mov dword [scrParserGlob], 0x0
Scr_ShutdownOpcodeLookup_10:
	mov eax, [scrParserGlob+0xc]
	test eax, eax
	jz Scr_ShutdownOpcodeLookup_20
	mov [esp], eax
	call Hunk_FreeDebugMem
	mov dword [scrParserGlob+0xc], 0x0
Scr_ShutdownOpcodeLookup_20:
	mov ebx, [scrParserPub]
	test ebx, ebx
	jz Scr_ShutdownOpcodeLookup_30
	mov edx, [scrParserPub+0x4]
	test edx, edx
	jnz Scr_ShutdownOpcodeLookup_40
Scr_ShutdownOpcodeLookup_100:
	mov eax, [scrParserPub]
	mov [esp], eax
	call Hunk_FreeDebugMem
	mov dword [scrParserPub], 0x0
Scr_ShutdownOpcodeLookup_30:
	mov ecx, [scrParserGlob+0x24]
	test ecx, ecx
	jz Scr_ShutdownOpcodeLookup_50
	mov eax, [scrParserGlob+0x28]
	test eax, eax
	jz Scr_ShutdownOpcodeLookup_60
	xor ebx, ebx
	mov edx, [scrParserGlob+0x24]
Scr_ShutdownOpcodeLookup_80:
	mov eax, [edx+ebx*8]
	test eax, eax
	jz Scr_ShutdownOpcodeLookup_70
	mov [esp], eax
	call Hunk_FreeDebugMem
	mov edx, [scrParserGlob+0x24]
Scr_ShutdownOpcodeLookup_70:
	add ebx, 0x1
	cmp ebx, [scrParserGlob+0x28]
	jb Scr_ShutdownOpcodeLookup_80
	mov [esp], edx
	call Hunk_FreeDebugMem
	mov dword [scrParserGlob+0x24], 0x0
Scr_ShutdownOpcodeLookup_50:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
Scr_ShutdownOpcodeLookup_60:
	mov edx, [scrParserGlob+0x24]
	mov [esp], edx
	call Hunk_FreeDebugMem
	mov dword [scrParserGlob+0x24], 0x0
	jmp Scr_ShutdownOpcodeLookup_50
Scr_ShutdownOpcodeLookup_40:
	xor esi, esi
	xor ebx, ebx
Scr_ShutdownOpcodeLookup_90:
	mov eax, [scrParserPub]
	mov eax, [ebx+eax+0x4]
	mov [esp], eax
	call Hunk_FreeDebugMem
	add esi, 0x1
	add ebx, 0x18
	cmp [scrParserPub+0x4], esi
	ja Scr_ShutdownOpcodeLookup_90
	jmp Scr_ShutdownOpcodeLookup_100
	nop


;Scr_SetLoadedImpureScript(unsigned char)
Scr_SetLoadedImpureScript:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov [g_loadedImpureScript], al
	pop ebp
	ret
	nop


;Initialized global or static variables of scr_parser:
SECTION .data


;Initialized constant data of scr_parser:
SECTION .rdata


;Zero initialized global or static variables of scr_parser:
SECTION .bss
g_loadedImpureScript: resb 0x80
scrParserPub: resb 0x1c
scrParserGlob: resb 0x80


;All cstrings:
SECTION .rdata
_cstring_scr_addsourcebuf:		db "Scr_AddSourceBuffer3",0
_cstring_scr_addsourcebuf1:		db "Scr_AddSourceBuffer4",0
_cstring__savegame:		db " (savegame)",0
_cstring_null:		db 0
_cstring_file_ss_line_d:		db "(file ",27h,"%s",27h,"%s, line %d)",0ah,0
_cstring_s:		db "%s",0ah,0
_cstring_:		db "*",0ah,0
_cstring_space:		db " ",0
_cstring_1:		db 0ah,0
_cstring__script_compile_:		db "******* script compile error *******",0ah,0
_cstring_s_:		db "%s: ",0
_cstring_2:		db "************************************",0ah,0
_cstring_script_compile_e:		db 015h,"script compile error",0ah,"%s",0ah,"%s",0ah,"(see console for details)",0ah,0
_cstring_s1:		db "%s",0
_cstring_addopcodepos:		db "AddOpcodePos",0
_cstring__script_runtime_:		db 0ah,"******* script runtime error *******",0ah,"%s: ",0
_cstring_script_runtime_e:		db 015h,"script runtime error",0ah,"(see console for details)",0ah,"%s%s%s",0
_cstring_called_from:		db "called from:",0ah,0
_cstring_started_from:		db "started from:",0ah,0
_cstring_scr_initopcodelo:		db "Scr_InitOpcodeLookup",0
_cstring_s2:		db "%s",0ah,0ah,0
_cstring__d:		db "@ %d",0ah,0
_cstring_frozen_thread:		db "<frozen thread>",0ah,0
_cstring_removed_thread:		db "<removed thread>",0ah,0



;All constant floats and doubles:
SECTION .rdata

