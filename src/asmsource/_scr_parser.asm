;Imports of scr_parser:
	extern Hunk_AllocDebugMem
	extern strcpy
	extern Com_Memcpy
	extern Hunk_FreeDebugMem
	extern useFastFile
	extern DB_FindXAssetHeaderReal
	extern FS_FOpenFileByMode
	extern fs_gameDirVar
	extern Hunk_AllocateTempMemoryHigh
	extern FS_Read
	extern FS_FCloseFile
	extern va
	extern Com_PrintMessage
	extern vsnprintf
	extern gScrVarPub
	extern Scr_ShutdownAllocNode
	extern Com_PrintError
	extern Com_Printf
	extern Com_Error
	extern gScrCompilePub
	extern memcpy
	extern gScrVmPub
	extern g_EndPos
	extern Scr_IsInOpcodeMemory
	extern FS_FOpenFileRead
	extern memset
	extern gScrParserGlob
	extern gScrParserPub
	extern Scr_PrintSourcePos
	extern Scr_PrintPrevCodePos


;Exports of scr_parser:
	global g_loadedImpureScript
	global Scr_AddSourceBufferInternal
	global CompileError
	global AddOpcodePos
	global CompileError2
	global RemoveOpcodePos
	global Scr_InitOpcodeLookup
	global Scr_LoadedImpureScript
	global AddThreadStartOpcodePos
	global Scr_ShutdownOpcodeLookup
	global Scr_SetLoadedImpureScript


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
	mov eax, [gScrParserPub]
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
	mov edx, [gScrParserGlob+0x18]
	cmp [gScrParserPub+0x4], edx
	jae Scr_AddSourceBufferInternal_50
Scr_AddSourceBufferInternal_90:
	mov ecx, [gScrParserPub]
Scr_AddSourceBufferInternal_100:
	mov eax, [gScrParserPub+0x4]
	lea edx, [eax+eax*2]
	lea edx, [ecx+edx*8]
	add eax, 0x1
	mov [gScrParserPub+0x4], eax
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
	mov [gScrParserPub+0xc], esi
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
	mov edx, [gScrParserGlob+0x18]
	cmp [gScrParserPub+0x4], edx
	jb Scr_AddSourceBufferInternal_90
Scr_AddSourceBufferInternal_50:
	lea eax, [edx+edx]
	mov [gScrParserGlob+0x18], eax
	mov dword [esp+0x4], _cstring_scr_addsourcebuf1
	add eax, edx
	shl eax, 0x4
	mov [esp], eax
	call Hunk_AllocDebugMem
	mov ebx, eax
	mov eax, [gScrParserPub+0x4]
	lea eax, [eax+eax*2]
	shl eax, 0x3
	mov [esp+0x8], eax
	mov eax, [gScrParserPub]
	mov [esp+0x4], eax
	mov [esp], ebx
	call Com_Memcpy
	mov eax, [gScrParserPub]
	mov [esp], eax
	call Hunk_FreeDebugMem
	mov [gScrParserPub], ebx
	mov ecx, ebx
	jmp Scr_AddSourceBufferInternal_100
Scr_AddSourceBufferInternal_10:
	mov dword [gScrParserPub+0xc], 0x0
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
	mov edi, gScrVarPub
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
	mov [esp+12], eax
	mov eax, [gScrParserPub+0xc]
	mov [esp+8], eax
	mov eax, [gScrParserPub+0x8]
	mov [esp+4], eax
	mov dword [esp], 0x17
	call Scr_PrintSourcePos
	mov edi, [gScrParserPub+0xc]
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
	mov eax, gScrVarPub
	cmp byte [eax+0x6], 0x0
	jz AddOpcodePos_10
	mov edi, gScrCompilePub
	cmp dword [edi+0x20024], 0x2
	jz AddOpcodePos_10
	mov eax, esi
	and eax, 0xfffffffe
	cmp byte [edi+0x20021], 0x0
	cmovz esi, eax
	mov edx, [gScrParserGlob+0x4]
	cmp [gScrParserGlob+0x8], edx
	jae AddOpcodePos_20
	mov edx, [gScrParserGlob+0x10]
	cmp [gScrParserGlob+0x14], edx
	jae AddOpcodePos_30
AddOpcodePos_100:
	mov eax, [edi+0x20028]
	cmp [gScrParserGlob+0x1c], eax
	jz AddOpcodePos_40
AddOpcodePos_90:
	mov dword [gScrParserGlob+0x20], 0x0
	mov [gScrParserGlob+0x1c], eax
	mov eax, [gScrParserGlob+0x8]
	lea eax, [eax+eax*2]
	mov edx, [gScrParserGlob]
	lea ebx, [edx+eax*8]
	mov eax, [gScrParserGlob+0x14]
	mov [ebx+0x4], eax
	mov eax, [gScrParserGlob+0x1c]
	mov [ebx], eax
	mov edx, [ebx+0x4]
	add edx, [gScrParserGlob+0x20]
	mov eax, [gScrParserGlob+0xc]
	lea ecx, [eax+edx*8]
	mov eax, [ebp+0x8]
	mov [ecx], eax
	add eax, 0x1
	jz AddOpcodePos_50
AddOpcodePos_110:
	cmp dword [ebp+0x8], 0xfffffffe
	jz AddOpcodePos_60
	mov edx, [gScrParserGlob+0x2c]
	test edx, edx
	js AddOpcodePos_70
	test esi, 0x1
	jnz AddOpcodePos_80
AddOpcodePos_70:
	or [ecx+0x4], esi
	mov eax, [gScrParserGlob+0x20]
	add eax, 0x1
	mov [gScrParserGlob+0x20], eax
	mov [ebx+0x8], eax
	add dword [gScrParserGlob+0x8], 0x1
	add dword [gScrParserGlob+0x14], 0x1
AddOpcodePos_10:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
AddOpcodePos_30:
	lea eax, [edx+edx]
	mov [gScrParserGlob+0x10], eax
	mov dword [esp+0x4], _cstring_addopcodepos
	shl edx, 0x4
	mov [esp], edx
	call Hunk_AllocDebugMem
	mov ebx, eax
	mov eax, [gScrParserGlob+0x14]
	shl eax, 0x3
	mov [esp+0x8], eax
	mov eax, [gScrParserGlob+0xc]
	mov [esp+0x4], eax
	mov [esp], ebx
	call memcpy
	mov eax, [gScrParserGlob+0xc]
	mov [esp], eax
	call Hunk_FreeDebugMem
	mov [gScrParserGlob+0xc], ebx
	mov eax, [edi+0x20028]
	cmp [gScrParserGlob+0x1c], eax
	jnz AddOpcodePos_90
	jmp AddOpcodePos_40
AddOpcodePos_20:
	lea eax, [edx+edx]
	mov [gScrParserGlob+0x4], eax
	mov dword [esp+0x4], _cstring_addopcodepos
	add eax, edx
	shl eax, 0x4
	mov [esp], eax
	call Hunk_AllocDebugMem
	mov ebx, eax
	mov eax, [gScrParserGlob+0x8]
	lea eax, [eax+eax*2]
	shl eax, 0x3
	mov [esp+0x8], eax
	mov eax, [gScrParserGlob]
	mov [esp+0x4], eax
	mov [esp], ebx
	call memcpy
	mov eax, [gScrParserGlob]
	mov [esp], eax
	call Hunk_FreeDebugMem
	mov [gScrParserGlob], ebx
	mov edx, [gScrParserGlob+0x10]
	cmp [gScrParserGlob+0x14], edx
	jb AddOpcodePos_100
	jmp AddOpcodePos_30
AddOpcodePos_80:
	mov eax, [gScrParserGlob+0xc]
	mov edi, [ebp+0x8]
	mov [eax+edx*8], edi
	mov dword [gScrParserGlob+0x2c], 0xffffffff
	or [ecx+0x4], esi
	mov eax, [gScrParserGlob+0x20]
	add eax, 0x1
	mov [gScrParserGlob+0x20], eax
	mov [ebx+0x8], eax
	add dword [gScrParserGlob+0x8], 0x1
	add dword [gScrParserGlob+0x14], 0x1
	jmp AddOpcodePos_10
AddOpcodePos_40:
	mov eax, [gScrParserGlob+0x8]
	sub eax, 0x1
	mov [gScrParserGlob+0x8], eax
	lea eax, [eax+eax*2]
	mov edx, [gScrParserGlob]
	lea ebx, [edx+eax*8]
	mov edx, [ebx+0x4]
	add edx, [gScrParserGlob+0x20]
	mov eax, [gScrParserGlob+0xc]
	lea ecx, [eax+edx*8]
	mov eax, [ebp+0x8]
	mov [ecx], eax
	add eax, 0x1
	jnz AddOpcodePos_110
AddOpcodePos_50:
	mov [gScrParserGlob+0x2c], edx
	or [ecx+0x4], esi
	mov eax, [gScrParserGlob+0x20]
	add eax, 0x1
	mov [gScrParserGlob+0x20], eax
	mov [ebx+0x8], eax
	add dword [gScrParserGlob+0x8], 0x1
	add dword [gScrParserGlob+0x14], 0x1
	jmp AddOpcodePos_10
AddOpcodePos_60:
	mov [gScrParserGlob+0x30], edx
	or [ecx+0x4], esi
	mov eax, [gScrParserGlob+0x20]
	add eax, 0x1
	mov [gScrParserGlob+0x20], eax
	mov [ebx+0x8], eax
	add dword [gScrParserGlob+0x8], 0x1
	add dword [gScrParserGlob+0x14], 0x1
	jmp AddOpcodePos_10


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
	mov eax, gScrVarPub
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
	mov ebx, [gScrParserPub+0x4]
	sub ebx, 0x1
	jnz CompileError2_20
	mov dword [ebp-0x82c], 0x0
	mov ecx, [gScrParserPub]
	mov [ebp-0x83c], ecx
CompileError2_190:
	mov eax, [gScrParserGlob+0xc]
	mov [ebp-0x838], eax
	mov edx, [gScrParserGlob+0x8]
	mov [ebp-0x834], edx
	mov edi, edx
	sub edi, 0x1
	mov ecx, [gScrParserGlob]
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
	mov edx, [gScrParserPub]
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
	mov eax, gScrVarPub
	cmp byte [eax+0x6], 0x0
	jz RemoveOpcodePos_10
	mov eax, gScrCompilePub
	cmp dword [eax+0x20024], 0x2
	jz RemoveOpcodePos_10
	sub dword [gScrParserGlob+0x14], 0x1
	mov edx, [gScrParserGlob+0x8]
	sub edx, 0x1
	mov [gScrParserGlob+0x8], edx
	mov ecx, [gScrParserGlob+0x20]
	sub ecx, 0x1
	mov [gScrParserGlob+0x20], ecx
	lea edx, [edx+edx*2]
	xor eax, eax
	test ecx, ecx
	cmovnz eax, [gScrParserGlob+0x1c]
	mov [gScrParserGlob+0x1c], eax
	mov eax, [gScrParserGlob]
	mov [eax+edx*8+0x8], ecx
RemoveOpcodePos_10:
	pop ebp
	ret
	nop


;Scr_InitOpcodeLookup()
Scr_InitOpcodeLookup:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, gScrVarPub
	cmp byte [eax+0x6], 0x0
	jnz Scr_InitOpcodeLookup_10
	leave
	ret
Scr_InitOpcodeLookup_10:
	mov dword [gScrParserGlob+0x2c], 0xffffffff
	mov dword [gScrParserGlob+0x4], 0x40000
	mov dword [gScrParserGlob+0x8], 0x0
	mov dword [esp+0x4], _cstring_scr_initopcodelo
	mov dword [esp], 0x600000
	call Hunk_AllocDebugMem
	mov [gScrParserGlob], eax
	mov edx, [gScrParserGlob+0x4]
	lea edx, [edx+edx*2]
	shl edx, 0x3
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call memset
	mov dword [gScrParserGlob+0x10], 0x40000
	mov dword [gScrParserGlob+0x14], 0x0
	mov dword [esp+0x4], _cstring_scr_initopcodelo
	mov dword [esp], 0x200000
	call Hunk_AllocDebugMem
	mov [gScrParserGlob+0xc], eax
	mov dword [gScrParserGlob+0x1c], 0x0
	mov dword [gScrParserGlob+0x20], 0x0
	mov dword [gScrParserGlob+0x18], 0x100
	mov dword [gScrParserPub+0x4], 0x0
	mov dword [esp+0x4], _cstring_scr_initopcodelo
	mov dword [esp], 0x1800
	call Hunk_AllocDebugMem
	mov [gScrParserPub], eax
	leave
	ret


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
	mov eax, gScrVarPub
	cmp byte [eax+0x6], 0x0
	jz AddThreadStartOpcodePos_10
	mov eax, gScrCompilePub
	cmp dword [eax+0x20024], 0x2
	jz AddThreadStartOpcodePos_10
	mov eax, [gScrParserGlob+0x30]
	mov edx, [gScrParserGlob+0xc]
	lea eax, [edx+eax*8]
	mov edx, [ebp+0x8]
	mov [eax], edx
	mov dword [eax+0x4], 0x4
	mov dword [gScrParserGlob+0x30], 0xffffffff
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
	mov eax, [gScrParserGlob]
	test eax, eax
	jz Scr_ShutdownOpcodeLookup_10
	mov [esp], eax
	call Hunk_FreeDebugMem
	mov dword [gScrParserGlob], 0x0
Scr_ShutdownOpcodeLookup_10:
	mov eax, [gScrParserGlob+0xc]
	test eax, eax
	jz Scr_ShutdownOpcodeLookup_20
	mov [esp], eax
	call Hunk_FreeDebugMem
	mov dword [gScrParserGlob+0xc], 0x0
Scr_ShutdownOpcodeLookup_20:
	mov ebx, [gScrParserPub]
	test ebx, ebx
	jz Scr_ShutdownOpcodeLookup_30
	mov edx, [gScrParserPub+0x4]
	test edx, edx
	jnz Scr_ShutdownOpcodeLookup_40
Scr_ShutdownOpcodeLookup_100:
	mov eax, [gScrParserPub]
	mov [esp], eax
	call Hunk_FreeDebugMem
	mov dword [gScrParserPub], 0x0
Scr_ShutdownOpcodeLookup_30:
	mov ecx, [gScrParserGlob+0x24]
	test ecx, ecx
	jz Scr_ShutdownOpcodeLookup_50
	mov eax, [gScrParserGlob+0x28]
	test eax, eax
	jz Scr_ShutdownOpcodeLookup_60
	xor ebx, ebx
	mov edx, [gScrParserGlob+0x24]
Scr_ShutdownOpcodeLookup_80:
	mov eax, [edx+ebx*8]
	test eax, eax
	jz Scr_ShutdownOpcodeLookup_70
	mov [esp], eax
	call Hunk_FreeDebugMem
	mov edx, [gScrParserGlob+0x24]
Scr_ShutdownOpcodeLookup_70:
	add ebx, 0x1
	cmp ebx, [gScrParserGlob+0x28]
	jb Scr_ShutdownOpcodeLookup_80
	mov [esp], edx
	call Hunk_FreeDebugMem
	mov dword [gScrParserGlob+0x24], 0x0
Scr_ShutdownOpcodeLookup_50:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
Scr_ShutdownOpcodeLookup_60:
	mov edx, [gScrParserGlob+0x24]
	mov [esp], edx
	call Hunk_FreeDebugMem
	mov dword [gScrParserGlob+0x24], 0x0
	jmp Scr_ShutdownOpcodeLookup_50
Scr_ShutdownOpcodeLookup_40:
	xor esi, esi
	xor ebx, ebx
Scr_ShutdownOpcodeLookup_90:
	mov eax, [gScrParserPub]
	mov eax, [ebx+eax+0x4]
	mov [esp], eax
	call Hunk_FreeDebugMem
	add esi, 0x1
	add ebx, 0x18
	cmp [gScrParserPub+0x4], esi
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
_cstring_script_compile_e:		db 15h,"script compile error",0ah,"%s",0ah,"%s",0ah,"(see console for details)",0ah,0
_cstring_s1:		db "%s",0
_cstring_addopcodepos:		db "AddOpcodePos",0
_cstring__script_runtime_:		db 0ah,"******* script runtime error *******",0ah,"%s: ",0
_cstring_script_runtime_e:		db 15h,"script runtime error",0ah,"(see console for details)",0ah,"%s%s%s",0
_cstring_called_from:		db "called from:",0ah,0
_cstring_started_from:		db "started from:",0ah,0
_cstring_scr_initopcodelo:		db "Scr_InitOpcodeLookup",0
_cstring_s2:		db "%s",0ah,0ah,0
_cstring__d:		db "@ %d",0ah,0
_cstring_frozen_thread:		db "<frozen thread>",0ah,0
_cstring_removed_thread:		db "<removed thread>",0ah,0



;All constant floats and doubles:
SECTION .rdata

