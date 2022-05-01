;Imports of scr_parser:
	extern _Z18Hunk_AllocDebugMemiPKc
	extern strcpy
	extern Com_Memcpy
	extern _Z17Hunk_FreeDebugMemPv
	extern useFastFile
	extern _Z19DB_FindXAssetHeader10XAssetTypePKc
	extern _Z18FS_FOpenFileByModePKcPi8fsMode_t
	extern fs_gameDirVar
	extern Hunk_AllocateTempMemoryHigh
	extern _Z7FS_ReadPvii
	extern _Z13FS_FCloseFilei
	extern _Z2vaPKcz
	extern _Z16Com_PrintMessageiPKci
	extern vsnprintf
	extern scrVarPub
	extern _Z21Scr_ShutdownAllocNodev
	extern _Z14Com_PrintErroriPKcz
	extern _Z10Com_PrintfiPKcz
	extern _Z9Com_Error11errorParm_tPKcz
	extern scrCompilePub
	extern memcpy
	extern scrVmPub
	extern g_EndPos
	extern _Z20Scr_IsInOpcodeMemoryPKc
	extern _Z16FS_FOpenFileReadPKcPi
	extern memset

;Exports of scr_parser:
	global g_loadedImpureScript
	global _Z27Scr_AddSourceBufferInternalPKcS0_Pcihh
	global _Z21Scr_ReadFile_FastFilePKcS0_S0_h
	global _Z20Scr_ReadFile_LoadObjPKcS0_S0_h
	global _Z18Scr_PrintSourcePosiPKcS0_j
	global CompileError
	global _Z12AddOpcodePosji
	global _Z12RuntimeErrorPKcjS0_S0_
	global _Z13CompileError2PKcS0_z
	global _Z15RemoveOpcodePosv
	global _Z19Scr_AddSourceBufferPKcS0_S0_h
	global _Z19Scr_GetSourceBufferPKc
	global _Z20Scr_InitOpcodeLookupv
	global _Z20Scr_PrintPrevCodePosiPKcj
	global _Z22Scr_LoadedImpureScriptv
	global _Z23AddThreadStartOpcodePosj
	global _Z24Scr_ShutdownOpcodeLookupv
	global _Z25Scr_SetLoadedImpureScripth
	global scrParserPub
	global scrParserGlob


SECTION .text


;Scr_AddSourceBufferInternal(char const*, char const*, char*, int, unsigned char, unsigned char)
_Z27Scr_AddSourceBufferInternalPKcS0_Pcihh:
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
	jz _Z27Scr_AddSourceBufferInternalPKcS0_Pcihh_10
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
	call _Z18Hunk_AllocDebugMemiPKc
	mov edi, eax
	mov [esp+0x4], esi
	mov [esp], eax
	call strcpy
	mov eax, [ebp-0x20]
	test eax, eax
	jz _Z27Scr_AddSourceBufferInternalPKcS0_Pcihh_20
	lea esi, [edi+ebx]
_Z27Scr_AddSourceBufferInternalPKcS0_Pcihh_160:
	mov ecx, [ebp-0x20]
	cmp byte [ebp-0x21], 0x0
	jz _Z27Scr_AddSourceBufferInternalPKcS0_Pcihh_30
	mov eax, [ebp+0x8]
	test eax, eax
	jns _Z27Scr_AddSourceBufferInternalPKcS0_Pcihh_40
_Z27Scr_AddSourceBufferInternalPKcS0_Pcihh_70:
	mov edx, [scrParserGlob+0x18]
	cmp [scrParserPub+0x4], edx
	jae _Z27Scr_AddSourceBufferInternalPKcS0_Pcihh_50
_Z27Scr_AddSourceBufferInternalPKcS0_Pcihh_90:
	mov ecx, [scrParserPub]
_Z27Scr_AddSourceBufferInternalPKcS0_Pcihh_100:
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
	jz _Z27Scr_AddSourceBufferInternalPKcS0_Pcihh_60
	mov [scrParserPub+0xc], esi
_Z27Scr_AddSourceBufferInternalPKcS0_Pcihh_60:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z27Scr_AddSourceBufferInternalPKcS0_Pcihh_30:
	mov eax, [ebp+0x8]
	test eax, eax
	js _Z27Scr_AddSourceBufferInternalPKcS0_Pcihh_70
	mov ebx, esi
	xor edx, edx
_Z27Scr_AddSourceBufferInternalPKcS0_Pcihh_80:
	movzx eax, byte [ecx]
	add ecx, 0x1
	mov [ebx], al
	add ebx, 0x1
	add edx, 0x1
	cmp [ebp+0x8], edx
	jge _Z27Scr_AddSourceBufferInternalPKcS0_Pcihh_80
	mov edx, [scrParserGlob+0x18]
	cmp [scrParserPub+0x4], edx
	jb _Z27Scr_AddSourceBufferInternalPKcS0_Pcihh_90
_Z27Scr_AddSourceBufferInternalPKcS0_Pcihh_50:
	lea eax, [edx+edx]
	mov [scrParserGlob+0x18], eax
	mov dword [esp+0x4], _cstring_scr_addsourcebuf1
	add eax, edx
	shl eax, 0x4
	mov [esp], eax
	call _Z18Hunk_AllocDebugMemiPKc
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
	call _Z17Hunk_FreeDebugMemPv
	mov [scrParserPub], ebx
	mov ecx, ebx
	jmp _Z27Scr_AddSourceBufferInternalPKcS0_Pcihh_100
_Z27Scr_AddSourceBufferInternalPKcS0_Pcihh_10:
	mov dword [scrParserPub+0xc], 0x0
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z27Scr_AddSourceBufferInternalPKcS0_Pcihh_40:
	mov edx, 0x1
	movzx eax, byte [ecx]
	add ecx, 0x1
	cmp al, 0xa
	jz _Z27Scr_AddSourceBufferInternalPKcS0_Pcihh_110
_Z27Scr_AddSourceBufferInternalPKcS0_Pcihh_130:
	cmp al, 0xd
	jz _Z27Scr_AddSourceBufferInternalPKcS0_Pcihh_120
_Z27Scr_AddSourceBufferInternalPKcS0_Pcihh_150:
	mov [esi+edx-0x1], al
_Z27Scr_AddSourceBufferInternalPKcS0_Pcihh_140:
	cmp [ebp+0x8], edx
	jl _Z27Scr_AddSourceBufferInternalPKcS0_Pcihh_70
	add edx, 0x1
	movzx eax, byte [ecx]
	add ecx, 0x1
	cmp al, 0xa
	jnz _Z27Scr_AddSourceBufferInternalPKcS0_Pcihh_130
_Z27Scr_AddSourceBufferInternalPKcS0_Pcihh_110:
	mov byte [esi+edx-0x1], 0x0
	jmp _Z27Scr_AddSourceBufferInternalPKcS0_Pcihh_140
_Z27Scr_AddSourceBufferInternalPKcS0_Pcihh_120:
	cmp byte [ecx], 0xa
	jz _Z27Scr_AddSourceBufferInternalPKcS0_Pcihh_150
	mov byte [esi+edx-0x1], 0x0
	jmp _Z27Scr_AddSourceBufferInternalPKcS0_Pcihh_140
_Z27Scr_AddSourceBufferInternalPKcS0_Pcihh_20:
	xor esi, esi
	jmp _Z27Scr_AddSourceBufferInternalPKcS0_Pcihh_160
	nop


;Scr_ReadFile_FastFile(char const*, char const*, char const*, unsigned char)
_Z21Scr_ReadFile_FastFilePKcS0_S0_h:
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
	jz _Z21Scr_ReadFile_FastFilePKcS0_S0_h_10
	mov [esp+0x4], esi
	mov dword [esp], 0x1f
	call _Z19DB_FindXAssetHeader10XAssetTypePKc
	test eax, eax
	jz _Z21Scr_ReadFile_FastFilePKcS0_S0_h_10
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
	call _Z27Scr_AddSourceBufferInternalPKcS0_Pcihh
	mov eax, [ebp-0x1c]
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z21Scr_ReadFile_FastFilePKcS0_S0_h_10:
	movzx eax, bl
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1
	mov dword [esp], 0xffffffff
	xor ecx, ecx
	mov edx, [ebp+0x10]
	mov eax, esi
	call _Z27Scr_AddSourceBufferInternalPKcS0_Pcihh
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
_Z20Scr_ReadFile_LoadObjPKcS0_S0_h:
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
	call _Z18FS_FOpenFileByModePKcPi8fsMode_t
	mov ebx, eax
	test eax, eax
	js _Z20Scr_ReadFile_LoadObjPKcS0_S0_h_10
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
	call _Z7FS_ReadPvii
	mov byte [esi+ebx], 0x0
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call _Z13FS_FCloseFilei
	movzx eax, byte [ebp-0x29]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1
	mov [esp], ebx
	mov ecx, esi
	mov edx, [ebp+0x10]
	mov eax, edi
	call _Z27Scr_AddSourceBufferInternalPKcS0_Pcihh
_Z20Scr_ReadFile_LoadObjPKcS0_S0_h_20:
	mov eax, esi
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z20Scr_ReadFile_LoadObjPKcS0_S0_h_10:
	movzx eax, byte [ebp-0x29]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1
	mov dword [esp], 0xffffffff
	xor ecx, ecx
	mov edx, [ebp+0x10]
	mov eax, edi
	call _Z27Scr_AddSourceBufferInternalPKcS0_Pcihh
	xor esi, esi
	jmp _Z20Scr_ReadFile_LoadObjPKcS0_S0_h_20
	add [eax], al


;Scr_PrintSourcePos(int, char const*, char const*, unsigned int)
_Z18Scr_PrintSourcePosiPKcS0_j:
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
	jnz _Z18Scr_PrintSourcePosiPKcS0_j_10
	mov ebx, ecx
	mov dword [ebp-0x420], 0x0
	mov dword [ebp-0x41c], 0x0
_Z18Scr_PrintSourcePosiPKcS0_j_110:
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, ebx
	repne scasb
	not ecx
	sub ecx, 0x1
	cmp ecx, 0x3ff
	jle _Z18Scr_PrintSourcePosiPKcS0_j_20
	mov ecx, 0x3ff
_Z18Scr_PrintSourcePosiPKcS0_j_60:
	xor edi, edi
_Z18Scr_PrintSourcePosiPKcS0_j_30:
	movzx eax, byte [ebx+edi]
	cmp al, 0x9
	mov edx, 0x20
	cmovz eax, edx
	mov [edi+ebp-0x418], al
	add edi, 0x1
	cmp ecx, edi
	jnz _Z18Scr_PrintSourcePosiPKcS0_j_30
	lea eax, [ebp-0x418]
	add eax, ecx
	cmp byte [eax-0x1], 0xd
	jz _Z18Scr_PrintSourcePosiPKcS0_j_40
_Z18Scr_PrintSourcePosiPKcS0_j_70:
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
	call _Z2vaPKcz
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z16Com_PrintMessageiPKci
	lea eax, [ebp-0x418]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_s
	call _Z2vaPKcz
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z16Com_PrintMessageiPKci
	mov ebx, [ebp-0x420]
	test ebx, ebx
	jg _Z18Scr_PrintSourcePosiPKcS0_j_50
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _cstring_
	mov [esp], esi
	call _Z16Com_PrintMessageiPKci
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z18Scr_PrintSourcePosiPKcS0_j_20:
	test ecx, ecx
	jg _Z18Scr_PrintSourcePosiPKcS0_j_60
	lea eax, [ebp-0x418]
	add eax, ecx
	cmp byte [eax-0x1], 0xd
	jnz _Z18Scr_PrintSourcePosiPKcS0_j_70
_Z18Scr_PrintSourcePosiPKcS0_j_40:
	mov byte [eax-0x1], 0x0
	jmp _Z18Scr_PrintSourcePosiPKcS0_j_70
_Z18Scr_PrintSourcePosiPKcS0_j_10:
	mov ebx, ecx
	xor edx, edx
	xor eax, eax
	jmp _Z18Scr_PrintSourcePosiPKcS0_j_80
_Z18Scr_PrintSourcePosiPKcS0_j_100:
	add ecx, 0x1
	add eax, 0x1
	cmp edi, eax
	jz _Z18Scr_PrintSourcePosiPKcS0_j_90
_Z18Scr_PrintSourcePosiPKcS0_j_80:
	cmp byte [ecx], 0x0
	jnz _Z18Scr_PrintSourcePosiPKcS0_j_100
	lea ebx, [ecx+0x1]
	add edx, 0x1
	mov ecx, ebx
	add eax, 0x1
	cmp edi, eax
	jnz _Z18Scr_PrintSourcePosiPKcS0_j_80
_Z18Scr_PrintSourcePosiPKcS0_j_90:
	sub ecx, ebx
	mov [ebp-0x420], ecx
	mov [ebp-0x41c], edx
	jmp _Z18Scr_PrintSourcePosiPKcS0_j_110
_Z18Scr_PrintSourcePosiPKcS0_j_50:
	xor edi, edi
_Z18Scr_PrintSourcePosiPKcS0_j_120:
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _cstring_space
	mov [esp], esi
	call _Z16Com_PrintMessageiPKci
	add edi, 0x1
	cmp edi, [ebp-0x420]
	jnz _Z18Scr_PrintSourcePosiPKcS0_j_120
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _cstring_
	mov [esp], esi
	call _Z16Com_PrintMessageiPKci
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
	call _Z21Scr_ShutdownAllocNodev
	mov dword [esp+0x4], _cstring_1
	mov dword [esp], 0x17
	call _Z14Com_PrintErroriPKcz
	mov dword [esp+0x4], _cstring__script_compile_
	mov dword [esp], 0x17
	call _Z14Com_PrintErroriPKcz
	cmp byte [edi+0x6], 0x0
	jz CompileError_30
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_s_
	mov dword [esp], 0x17
	call _Z14Com_PrintErroriPKcz
	mov eax, [ebp+0x8]
	mov [esp], eax
	mov ecx, [scrParserPub+0xc]
	mov edx, [scrParserPub+0x8]
	mov eax, 0x17
	call _Z18Scr_PrintSourcePosiPKcS0_j
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
	call _Z14Com_PrintErroriPKcz
	mov byte [ebp-0x81c], 0x0
CompileError_80:
	mov dword [esp+0x4], _cstring_2
	mov dword [esp], 0x17
	call _Z10Com_PrintfiPKcz
	lea eax, [ebp-0x81c]
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_script_compile_e
	mov dword [esp], 0x6
	call _Z9Com_Error11errorParm_tPKcz
	add esp, 0x82c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CompileError_20:
	mov [esp+0x4], esi
	mov dword [esp], _cstring_s1
	call _Z2vaPKcz
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
_Z12AddOpcodePosji:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov esi, [ebp+0xc]
	mov eax, scrVarPub
	cmp byte [eax+0x6], 0x0
	jz _Z12AddOpcodePosji_10
	mov edi, scrCompilePub
	cmp dword [edi+0x20024], 0x2
	jz _Z12AddOpcodePosji_10
	mov eax, esi
	and eax, 0xfffffffe
	cmp byte [edi+0x20021], 0x0
	cmovz esi, eax
	mov edx, [scrParserGlob+0x4]
	cmp [scrParserGlob+0x8], edx
	jae _Z12AddOpcodePosji_20
	mov edx, [scrParserGlob+0x10]
	cmp [scrParserGlob+0x14], edx
	jae _Z12AddOpcodePosji_30
_Z12AddOpcodePosji_100:
	mov eax, [edi+0x20028]
	cmp [scrParserGlob+0x1c], eax
	jz _Z12AddOpcodePosji_40
_Z12AddOpcodePosji_90:
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
	jz _Z12AddOpcodePosji_50
_Z12AddOpcodePosji_110:
	cmp dword [ebp+0x8], 0xfffffffe
	jz _Z12AddOpcodePosji_60
	mov edx, [scrParserGlob+0x2c]
	test edx, edx
	js _Z12AddOpcodePosji_70
	test esi, 0x1
	jnz _Z12AddOpcodePosji_80
_Z12AddOpcodePosji_70:
	or [ecx+0x4], esi
	mov eax, [scrParserGlob+0x20]
	add eax, 0x1
	mov [scrParserGlob+0x20], eax
	mov [ebx+0x8], eax
	add dword [scrParserGlob+0x8], 0x1
	add dword [scrParserGlob+0x14], 0x1
_Z12AddOpcodePosji_10:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z12AddOpcodePosji_30:
	lea eax, [edx+edx]
	mov [scrParserGlob+0x10], eax
	mov dword [esp+0x4], _cstring_addopcodepos
	shl edx, 0x4
	mov [esp], edx
	call _Z18Hunk_AllocDebugMemiPKc
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
	call _Z17Hunk_FreeDebugMemPv
	mov [scrParserGlob+0xc], ebx
	mov eax, [edi+0x20028]
	cmp [scrParserGlob+0x1c], eax
	jnz _Z12AddOpcodePosji_90
	jmp _Z12AddOpcodePosji_40
_Z12AddOpcodePosji_20:
	lea eax, [edx+edx]
	mov [scrParserGlob+0x4], eax
	mov dword [esp+0x4], _cstring_addopcodepos
	add eax, edx
	shl eax, 0x4
	mov [esp], eax
	call _Z18Hunk_AllocDebugMemiPKc
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
	call _Z17Hunk_FreeDebugMemPv
	mov [scrParserGlob], ebx
	mov edx, [scrParserGlob+0x10]
	cmp [scrParserGlob+0x14], edx
	jb _Z12AddOpcodePosji_100
	jmp _Z12AddOpcodePosji_30
_Z12AddOpcodePosji_80:
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
	jmp _Z12AddOpcodePosji_10
_Z12AddOpcodePosji_40:
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
	jnz _Z12AddOpcodePosji_110
_Z12AddOpcodePosji_50:
	mov [scrParserGlob+0x2c], edx
	or [ecx+0x4], esi
	mov eax, [scrParserGlob+0x20]
	add eax, 0x1
	mov [scrParserGlob+0x20], eax
	mov [ebx+0x8], eax
	add dword [scrParserGlob+0x8], 0x1
	add dword [scrParserGlob+0x14], 0x1
	jmp _Z12AddOpcodePosji_10
_Z12AddOpcodePosji_60:
	mov [scrParserGlob+0x30], edx
	or [ecx+0x4], esi
	mov eax, [scrParserGlob+0x20]
	add eax, 0x1
	mov [scrParserGlob+0x20], eax
	mov [ebx+0x8], eax
	add dword [scrParserGlob+0x8], 0x1
	add dword [scrParserGlob+0x14], 0x1
	jmp _Z12AddOpcodePosji_10


;RuntimeError(char const*, unsigned int, char const*, char const*)
_Z12RuntimeErrorPKcjS0_S0_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov eax, scrVarPub
	cmp byte [eax+0x6], 0x0
	jnz _Z12RuntimeErrorPKcjS0_S0__10
	mov ebx, scrVmPub
	cmp byte [ebx+0x16], 0x0
	jz _Z12RuntimeErrorPKcjS0_S0__20
	cmp byte [ebx+0x14], 0x0
	jnz _Z12RuntimeErrorPKcjS0_S0__30
_Z12RuntimeErrorPKcjS0_S0__60:
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
	call _Z14Com_PrintErroriPKcz
	mov ecx, [ebp+0xc]
	mov [esp+0x8], ecx
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z20Scr_PrintPrevCodePosiPKcj
	mov edx, scrVmPub
	mov eax, [edx+0x8]
	test eax, eax
	jnz _Z12RuntimeErrorPKcjS0_S0__40
	mov dword [esp+0x4], _cstring_2
	mov [esp], esi
	call _Z14Com_PrintErroriPKcz
	cmp byte [ebp-0x1d], 0x0
	jz _Z12RuntimeErrorPKcjS0_S0__20
_Z12RuntimeErrorPKcjS0_S0__100:
	mov eax, [ebp+0x14]
	test eax, eax
	jz _Z12RuntimeErrorPKcjS0_S0__50
_Z12RuntimeErrorPKcjS0_S0__70:
	mov edx, _cstring_1
_Z12RuntimeErrorPKcjS0_S0__110:
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
	call _Z9Com_Error11errorParm_tPKcz
_Z12RuntimeErrorPKcjS0_S0__20:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z12RuntimeErrorPKcjS0_S0__10:
	mov ebx, scrVmPub
	cmp byte [ebx+0x14], 0x0
	jz _Z12RuntimeErrorPKcjS0_S0__60
_Z12RuntimeErrorPKcjS0_S0__30:
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_s
	mov dword [esp], 0x17
	call _Z10Com_PrintfiPKcz
	cmp byte [ebx+0x16], 0x0
	jz _Z12RuntimeErrorPKcjS0_S0__20
	mov eax, [ebp+0x14]
	test eax, eax
	jnz _Z12RuntimeErrorPKcjS0_S0__70
	jmp _Z12RuntimeErrorPKcjS0_S0__50
_Z12RuntimeErrorPKcjS0_S0__40:
	sub eax, 0x1
	mov [ebp-0x1c], eax
	test eax, eax
	jle _Z12RuntimeErrorPKcjS0_S0__80
	xor edi, edi
	lea eax, [eax+eax*2]
	lea ebx, [edx+eax*8+0x20]
_Z12RuntimeErrorPKcjS0_S0__90:
	mov dword [esp+0x4], _cstring_called_from
	mov [esp], esi
	call _Z14Com_PrintErroriPKcz
	xor eax, eax
	cmp dword [ebx+0x4], 0x0
	setz al
	mov [esp+0x8], eax
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call _Z20Scr_PrintPrevCodePosiPKcj
	add edi, 0x1
	sub ebx, 0x18
	cmp [ebp-0x1c], edi
	jnz _Z12RuntimeErrorPKcjS0_S0__90
_Z12RuntimeErrorPKcjS0_S0__80:
	mov dword [esp+0x4], _cstring_started_from
	mov [esp], esi
	call _Z14Com_PrintErroriPKcz
	mov dword [esp+0x8], 0x1
	mov eax, scrVmPub
	mov eax, [eax+0x20]
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call _Z20Scr_PrintPrevCodePosiPKcj
	mov dword [esp+0x4], _cstring_2
	mov [esp], esi
	call _Z14Com_PrintErroriPKcz
	cmp byte [ebp-0x1d], 0x0
	jnz _Z12RuntimeErrorPKcjS0_S0__100
	jmp _Z12RuntimeErrorPKcjS0_S0__20
_Z12RuntimeErrorPKcjS0_S0__50:
	mov edx, _cstring_null
	mov dword [ebp+0x14], _cstring_null
	jmp _Z12RuntimeErrorPKcjS0_S0__110
	nop


;CompileError2(char const*, char const*, ...)
_Z13CompileError2PKcS0_z:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x84c
	mov ebx, [ebp+0x8]
	mov dword [esp+0x4], _cstring_1
	mov dword [esp], 0x17
	call _Z14Com_PrintErroriPKcz
	mov dword [esp+0x4], _cstring__script_compile_
	mov dword [esp], 0x17
	call _Z14Com_PrintErroriPKcz
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
	call _Z14Com_PrintErroriPKcz
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], ebx
	mov dword [esp], 0x17
	call _Z20Scr_PrintPrevCodePosiPKcj
	mov dword [esp+0x4], _cstring_2
	mov dword [esp], 0x17
	call _Z10Com_PrintfiPKcz
	mov eax, scrVarPub
	cmp byte [eax+0x6], 0x0
	jz _Z13CompileError2PKcS0_z_10
	test ebx, ebx
	jz _Z13CompileError2PKcS0_z_10
	cmp ebx, g_EndPos
	jz _Z13CompileError2PKcS0_z_10
	mov eax, [eax+0x48]
	test eax, eax
	jz _Z13CompileError2PKcS0_z_10
	mov [esp], ebx
	call _Z20Scr_IsInOpcodeMemoryPKc
	test eax, eax
	jz _Z13CompileError2PKcS0_z_10
	lea esi, [ebx-0x1]
	mov ebx, [scrParserPub+0x4]
	sub ebx, 0x1
	jnz _Z13CompileError2PKcS0_z_20
	mov dword [ebp-0x82c], 0x0
	mov ecx, [scrParserPub]
	mov [ebp-0x83c], ecx
_Z13CompileError2PKcS0_z_190:
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
	jmp _Z13CompileError2PKcS0_z_30
_Z13CompileError2PKcS0_z_60:
	lea ebx, [edx+0x1]
	cmp [ebp-0x834], ebx
	jz _Z13CompileError2PKcS0_z_40
	lea eax, [ebx+ebx*2]
	mov edx, [ebp-0x830]
	cmp esi, [edx+eax*8]
	jb _Z13CompileError2PKcS0_z_40
_Z13CompileError2PKcS0_z_70:
	cmp ebx, edi
	ja _Z13CompileError2PKcS0_z_50
	mov eax, [ebp-0x830]
_Z13CompileError2PKcS0_z_30:
	lea edx, [edi+ebx]
	shr edx, 1
	lea ecx, [edx+edx*2]
	lea ecx, [eax+ecx*8]
	cmp esi, [ecx]
	jae _Z13CompileError2PKcS0_z_60
	lea edi, [edx-0x1]
	jmp _Z13CompileError2PKcS0_z_70
_Z13CompileError2PKcS0_z_10:
	mov byte [ebp-0x81c], 0x0
	lea esi, [ebp-0x81c]
_Z13CompileError2PKcS0_z_150:
	mov [esp+0xc], esi
	lea ecx, [ebp-0x41c]
	mov [esp+0x8], ecx
	mov dword [esp+0x4], _cstring_script_compile_e
	mov dword [esp], 0x6
	call _Z9Com_Error11errorParm_tPKcz
	add esp, 0x84c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z13CompileError2PKcS0_z_50:
	xor ecx, ecx
_Z13CompileError2PKcS0_z_40:
	mov eax, [ecx+0x4]
	mov edx, [ebp-0x838]
	mov ecx, [edx+eax*8]
	mov edx, [ebp-0x82c]
	lea eax, [edx+edx*2]
	mov edx, [ebp-0x83c]
	mov ebx, [edx+eax*8+0x8]
	test ecx, ecx
	jz _Z13CompileError2PKcS0_z_80
	mov eax, ebx
	xor edx, edx
	jmp _Z13CompileError2PKcS0_z_90
_Z13CompileError2PKcS0_z_100:
	add eax, 0x1
_Z13CompileError2PKcS0_z_110:
	add edx, 0x1
	cmp ecx, edx
	jz _Z13CompileError2PKcS0_z_80
_Z13CompileError2PKcS0_z_90:
	cmp byte [eax], 0x0
	jnz _Z13CompileError2PKcS0_z_100
	lea ebx, [eax+0x1]
	mov eax, ebx
	jmp _Z13CompileError2PKcS0_z_110
_Z13CompileError2PKcS0_z_80:
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, ebx
	repne scasb
	not ecx
	sub ecx, 0x1
	cmp ecx, 0x3ff
	jle _Z13CompileError2PKcS0_z_120
	mov ecx, 0x3ff
_Z13CompileError2PKcS0_z_160:
	xor edi, edi
	lea esi, [ebp-0x81c]
_Z13CompileError2PKcS0_z_130:
	movzx eax, byte [ebx+edi]
	cmp al, 0x9
	mov edx, 0x20
	cmovz eax, edx
	mov [edi+esi], al
	add edi, 0x1
	cmp ecx, edi
	jnz _Z13CompileError2PKcS0_z_130
_Z13CompileError2PKcS0_z_170:
	lea eax, [esi+ecx]
	cmp byte [eax-0x1], 0xd
	jz _Z13CompileError2PKcS0_z_140
	mov byte [eax], 0x0
	jmp _Z13CompileError2PKcS0_z_150
_Z13CompileError2PKcS0_z_120:
	test ecx, ecx
	jg _Z13CompileError2PKcS0_z_160
	lea esi, [ebp-0x81c]
	jmp _Z13CompileError2PKcS0_z_170
_Z13CompileError2PKcS0_z_20:
	lea eax, [ebx+ebx*2]
	mov edx, [scrParserPub]
	mov [ebp-0x83c], edx
	lea edx, [edx+eax*8]
	mov [ebp-0x82c], ebx
	xor ecx, ecx
_Z13CompileError2PKcS0_z_200:
	mov eax, [edx]
	test eax, eax
	jz _Z13CompileError2PKcS0_z_180
	cmp esi, eax
	jae _Z13CompileError2PKcS0_z_190
_Z13CompileError2PKcS0_z_180:
	sub dword [ebp-0x82c], 0x1
	add ecx, 0x1
	sub edx, 0x18
	cmp ebx, ecx
	jnz _Z13CompileError2PKcS0_z_200
	jmp _Z13CompileError2PKcS0_z_190
_Z13CompileError2PKcS0_z_140:
	mov byte [eax-0x1], 0x0
	mov byte [eax], 0x0
	jmp _Z13CompileError2PKcS0_z_150
	nop


;RemoveOpcodePos()
_Z15RemoveOpcodePosv:
	push ebp
	mov ebp, esp
	mov eax, scrVarPub
	cmp byte [eax+0x6], 0x0
	jz _Z15RemoveOpcodePosv_10
	mov eax, scrCompilePub
	cmp dword [eax+0x20024], 0x2
	jz _Z15RemoveOpcodePosv_10
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
_Z15RemoveOpcodePosv_10:
	pop ebp
	ret
	nop


;Scr_AddSourceBuffer(char const*, char const*, char const*, unsigned char)
_Z19Scr_AddSourceBufferPKcS0_S0_h:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	movzx eax, byte [ebp+0x14]
	mov [ebp-0x31], al
	test al, al
	jz _Z19Scr_AddSourceBufferPKcS0_S0_h_10
	mov ebx, [scrParserGlob+0x24]
	test ebx, ebx
	jz _Z19Scr_AddSourceBufferPKcS0_S0_h_20
	mov edx, [scrParserGlob+0x28]
	sub edx, 0x1
	mov [scrParserGlob+0x28], edx
	mov eax, [scrParserGlob+0x24]
	lea edx, [eax+edx*8]
	mov [ebp-0x2c], edx
	mov edx, [edx+0x4]
	mov [ebp-0x30], edx
	test edx, edx
	js _Z19Scr_AddSourceBufferPKcS0_S0_h_30
	mov eax, edx
	add eax, 0x1
	mov [esp], eax
	call Hunk_AllocateTempMemoryHigh
	mov esi, eax
	mov eax, [ebp-0x2c]
	mov edi, [eax]
	mov ecx, [ebp-0x30]
	test ecx, ecx
	jg _Z19Scr_AddSourceBufferPKcS0_S0_h_40
	mov ecx, esi
_Z19Scr_AddSourceBufferPKcS0_S0_h_100:
	mov byte [ecx], 0x0
	mov edx, [ebp-0x2c]
	mov edx, [edx]
	test edx, edx
	jz _Z19Scr_AddSourceBufferPKcS0_S0_h_50
	mov eax, [scrParserGlob+0x28]
	mov edx, [scrParserGlob+0x24]
	mov eax, [edx+eax*8]
	mov [esp], eax
	call _Z17Hunk_FreeDebugMemPv
_Z19Scr_AddSourceBufferPKcS0_S0_h_50:
	movzx eax, byte [ebp-0x31]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1
	mov edx, [ebp-0x30]
	mov [esp], edx
	mov ecx, esi
	mov edx, [ebp+0x10]
	mov eax, [ebp+0xc]
	call _Z27Scr_AddSourceBufferInternalPKcS0_Pcihh
	mov eax, esi
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19Scr_AddSourceBufferPKcS0_S0_h_10:
	mov ebx, eax
_Z19Scr_AddSourceBufferPKcS0_S0_h_110:
	mov esi, fs_gameDirVar
	mov eax, [esi]
	mov eax, [eax+0xc]
	cmp byte [eax], 0x0
	jnz _Z19Scr_AddSourceBufferPKcS0_S0_h_60
	mov eax, useFastFile
	mov eax, [eax]
	mov edx, _Z21Scr_ReadFile_FastFilePKcS0_S0_h
	cmp byte [eax+0xc], 0x0
	mov eax, _Z20Scr_ReadFile_LoadObjPKcS0_S0_h
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
_Z19Scr_AddSourceBufferPKcS0_S0_h_130:
	mov eax, esi
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19Scr_AddSourceBufferPKcS0_S0_h_60:
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov eax, [ebp+0xc]
	mov [esp], eax
	call _Z16FS_FOpenFileReadPKcPi
	test eax, eax
	js _Z19Scr_AddSourceBufferPKcS0_S0_h_70
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call _Z13FS_FCloseFilei
	mov edi, ebx
	mov dword [esp+0x8], 0x0
	lea eax, [ebp-0x20]
	mov [esp+0x4], eax
	mov edx, [ebp+0xc]
	mov [esp], edx
	call _Z18FS_FOpenFileByModePKcPi8fsMode_t
	mov ebx, eax
	test eax, eax
	js _Z19Scr_AddSourceBufferPKcS0_S0_h_80
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
	call _Z7FS_ReadPvii
	mov byte [esi+ebx], 0x0
	mov eax, [ebp-0x20]
	mov [esp], eax
	call _Z13FS_FCloseFilei
	mov edx, edi
	movzx eax, dl
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1
	mov [esp], ebx
	mov ecx, esi
	mov edx, [ebp+0x10]
	mov eax, [ebp+0xc]
	call _Z27Scr_AddSourceBufferInternalPKcS0_Pcihh
	mov eax, esi
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19Scr_AddSourceBufferPKcS0_S0_h_40:
	mov ecx, esi
	xor ebx, ebx
_Z19Scr_AddSourceBufferPKcS0_S0_h_90:
	movzx eax, byte [edi]
	add edi, 0x1
	test al, al
	mov edx, 0xa
	cmovz eax, edx
	mov [ecx], al
	add ecx, 0x1
	add ebx, 0x1
	cmp [ebp-0x30], ebx
	jnz _Z19Scr_AddSourceBufferPKcS0_S0_h_90
	jmp _Z19Scr_AddSourceBufferPKcS0_S0_h_100
_Z19Scr_AddSourceBufferPKcS0_S0_h_20:
	movzx ebx, byte [ebp-0x31]
	jmp _Z19Scr_AddSourceBufferPKcS0_S0_h_110
_Z19Scr_AddSourceBufferPKcS0_S0_h_30:
	xor esi, esi
	jmp _Z19Scr_AddSourceBufferPKcS0_S0_h_50
_Z19Scr_AddSourceBufferPKcS0_S0_h_70:
	mov eax, useFastFile
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z19Scr_AddSourceBufferPKcS0_S0_h_120
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov dword [esp], 0x1f
	call _Z19DB_FindXAssetHeader10XAssetTypePKc
	test eax, eax
	jz _Z19Scr_AddSourceBufferPKcS0_S0_h_120
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
	call _Z27Scr_AddSourceBufferInternalPKcS0_Pcihh
	jmp _Z19Scr_AddSourceBufferPKcS0_S0_h_130
_Z19Scr_AddSourceBufferPKcS0_S0_h_120:
	movzx eax, bl
_Z19Scr_AddSourceBufferPKcS0_S0_h_140:
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1
	mov dword [esp], 0xffffffff
	xor ecx, ecx
	mov edx, [ebp+0x10]
	mov eax, [ebp+0xc]
	call _Z27Scr_AddSourceBufferInternalPKcS0_Pcihh
	xor esi, esi
	jmp _Z19Scr_AddSourceBufferPKcS0_S0_h_130
_Z19Scr_AddSourceBufferPKcS0_S0_h_80:
	mov edx, edi
	movzx eax, dl
	jmp _Z19Scr_AddSourceBufferPKcS0_S0_h_140
	add [eax], al


;Scr_GetSourceBuffer(char const*)
_Z19Scr_GetSourceBufferPKc:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	mov edi, [ebp+0x8]
	mov esi, [scrParserPub+0x4]
	sub esi, 0x1
	jz _Z19Scr_GetSourceBufferPKc_10
	lea edx, [esi+esi*2]
	mov eax, [scrParserPub]
	lea edx, [eax+edx*8]
	mov ecx, esi
	xor ebx, ebx
_Z19Scr_GetSourceBufferPKc_40:
	mov eax, [edx]
	test eax, eax
	jz _Z19Scr_GetSourceBufferPKc_20
	cmp eax, edi
	jbe _Z19Scr_GetSourceBufferPKc_30
_Z19Scr_GetSourceBufferPKc_20:
	sub ecx, 0x1
	add ebx, 0x1
	sub edx, 0x18
	cmp esi, ebx
	jnz _Z19Scr_GetSourceBufferPKc_40
_Z19Scr_GetSourceBufferPKc_30:
	mov esi, ecx
_Z19Scr_GetSourceBufferPKc_10:
	mov eax, esi
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop
	add [eax], al


;Scr_InitOpcodeLookup()
_Z20Scr_InitOpcodeLookupv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, scrVarPub
	cmp byte [eax+0x6], 0x0
	jnz _Z20Scr_InitOpcodeLookupv_10
	leave
	ret
_Z20Scr_InitOpcodeLookupv_10:
	mov dword [scrParserGlob+0x2c], 0xffffffff
	mov dword [scrParserGlob+0x4], 0x40000
	mov dword [scrParserGlob+0x8], 0x0
	mov dword [esp+0x4], _cstring_scr_initopcodelo
	mov dword [esp], 0x600000
	call _Z18Hunk_AllocDebugMemiPKc
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
	call _Z18Hunk_AllocDebugMemiPKc
	mov [scrParserGlob+0xc], eax
	mov dword [scrParserGlob+0x1c], 0x0
	mov dword [scrParserGlob+0x20], 0x0
	mov dword [scrParserGlob+0x18], 0x100
	mov dword [scrParserPub+0x4], 0x0
	mov dword [esp+0x4], _cstring_scr_initopcodelo
	mov dword [esp], 0x1800
	call _Z18Hunk_AllocDebugMemiPKc
	mov [scrParserPub], eax
	leave
	ret


;Scr_PrintPrevCodePos(int, char const*, unsigned int)
_Z20Scr_PrintPrevCodePosiPKcj:
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
	jz _Z20Scr_PrintPrevCodePosiPKcj_10
	cmp ebx, g_EndPos
	jz _Z20Scr_PrintPrevCodePosiPKcj_20
	mov esi, scrVarPub
	cmp byte [esi+0x6], 0x0
	jz _Z20Scr_PrintPrevCodePosiPKcj_30
	mov eax, [esi+0x48]
	test eax, eax
	jz _Z20Scr_PrintPrevCodePosiPKcj_40
	mov [esp], ebx
	call _Z20Scr_IsInOpcodeMemoryPKc
	test eax, eax
	jz _Z20Scr_PrintPrevCodePosiPKcj_40
	lea edi, [ebx-0x1]
	mov ebx, [scrParserPub+0x4]
	sub ebx, 0x1
	jnz _Z20Scr_PrintPrevCodePosiPKcj_50
	mov dword [ebp-0x1c], 0x0
	mov ebx, [scrParserPub]
	mov [ebp-0x34], ebx
_Z20Scr_PrintPrevCodePosiPKcj_140:
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
	jmp _Z20Scr_PrintPrevCodePosiPKcj_60
_Z20Scr_PrintPrevCodePosiPKcj_90:
	lea esi, [edx+0x1]
	cmp [ebp-0x24], esi
	jz _Z20Scr_PrintPrevCodePosiPKcj_70
	lea eax, [esi+esi*2]
	mov edx, [ebp-0x20]
	cmp edi, [edx+eax*8]
	jb _Z20Scr_PrintPrevCodePosiPKcj_70
	cmp ecx, esi
	jb _Z20Scr_PrintPrevCodePosiPKcj_80
_Z20Scr_PrintPrevCodePosiPKcj_100:
	mov eax, [ebp-0x20]
_Z20Scr_PrintPrevCodePosiPKcj_60:
	lea edx, [ecx+esi]
	shr edx, 1
	lea ebx, [edx+edx*2]
	lea ebx, [eax+ebx*8]
	cmp edi, [ebx]
	jae _Z20Scr_PrintPrevCodePosiPKcj_90
	lea ecx, [edx-0x1]
	cmp ecx, esi
	jae _Z20Scr_PrintPrevCodePosiPKcj_100
_Z20Scr_PrintPrevCodePosiPKcj_80:
	xor ebx, ebx
_Z20Scr_PrintPrevCodePosiPKcj_70:
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
	jmp _Z18Scr_PrintSourcePosiPKcS0_j
_Z20Scr_PrintPrevCodePosiPKcj_30:
	lea eax, [ebx-0x1]
	mov [esp], eax
	call _Z20Scr_IsInOpcodeMemoryPKc
	test eax, eax
	jnz _Z20Scr_PrintPrevCodePosiPKcj_110
_Z20Scr_PrintPrevCodePosiPKcj_40:
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_s2
	call _Z2vaPKcz
	mov dword [ebp+0x10], 0x0
	mov [ebp+0xc], eax
	mov eax, [ebp-0x2c]
	mov [ebp+0x8], eax
_Z20Scr_PrintPrevCodePosiPKcj_120:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z16Com_PrintMessageiPKci
_Z20Scr_PrintPrevCodePosiPKcj_110:
	sub ebx, [esi+0x48]
	mov [esp+0x4], ebx
	mov dword [esp], _cstring__d
	call _Z2vaPKcz
	mov dword [ebp+0x10], 0x0
	mov [ebp+0xc], eax
	mov ecx, [ebp-0x2c]
	mov [ebp+0x8], ecx
	jmp _Z20Scr_PrintPrevCodePosiPKcj_120
_Z20Scr_PrintPrevCodePosiPKcj_50:
	lea eax, [ebx+ebx*2]
	mov esi, [scrParserPub]
	mov [ebp-0x34], esi
	lea edx, [esi+eax*8]
	mov [ebp-0x1c], ebx
	xor ecx, ecx
_Z20Scr_PrintPrevCodePosiPKcj_150:
	mov eax, [edx]
	test eax, eax
	jz _Z20Scr_PrintPrevCodePosiPKcj_130
	cmp edi, eax
	jae _Z20Scr_PrintPrevCodePosiPKcj_140
_Z20Scr_PrintPrevCodePosiPKcj_130:
	sub dword [ebp-0x1c], 0x1
	add ecx, 0x1
	sub edx, 0x18
	cmp ebx, ecx
	jnz _Z20Scr_PrintPrevCodePosiPKcj_150
	jmp _Z20Scr_PrintPrevCodePosiPKcj_140
_Z20Scr_PrintPrevCodePosiPKcj_10:
	mov dword [ebp+0x10], 0x0
	mov dword [ebp+0xc], _cstring_frozen_thread
	mov [ebp+0x8], eax
	jmp _Z20Scr_PrintPrevCodePosiPKcj_120
_Z20Scr_PrintPrevCodePosiPKcj_20:
	mov dword [ebp+0x10], 0x0
	mov dword [ebp+0xc], _cstring_removed_thread
	mov edx, [ebp-0x2c]
	mov [ebp+0x8], edx
	jmp _Z20Scr_PrintPrevCodePosiPKcj_120


;Scr_LoadedImpureScript()
_Z22Scr_LoadedImpureScriptv:
	push ebp
	mov ebp, esp
	movzx eax, byte [g_loadedImpureScript]
	pop ebp
	ret


;AddThreadStartOpcodePos(unsigned int)
_Z23AddThreadStartOpcodePosj:
	push ebp
	mov ebp, esp
	mov eax, scrVarPub
	cmp byte [eax+0x6], 0x0
	jz _Z23AddThreadStartOpcodePosj_10
	mov eax, scrCompilePub
	cmp dword [eax+0x20024], 0x2
	jz _Z23AddThreadStartOpcodePosj_10
	mov eax, [scrParserGlob+0x30]
	mov edx, [scrParserGlob+0xc]
	lea eax, [edx+eax*8]
	mov edx, [ebp+0x8]
	mov [eax], edx
	mov dword [eax+0x4], 0x4
	mov dword [scrParserGlob+0x30], 0xffffffff
_Z23AddThreadStartOpcodePosj_10:
	pop ebp
	ret


;Scr_ShutdownOpcodeLookup()
_Z24Scr_ShutdownOpcodeLookupv:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov eax, [scrParserGlob]
	test eax, eax
	jz _Z24Scr_ShutdownOpcodeLookupv_10
	mov [esp], eax
	call _Z17Hunk_FreeDebugMemPv
	mov dword [scrParserGlob], 0x0
_Z24Scr_ShutdownOpcodeLookupv_10:
	mov eax, [scrParserGlob+0xc]
	test eax, eax
	jz _Z24Scr_ShutdownOpcodeLookupv_20
	mov [esp], eax
	call _Z17Hunk_FreeDebugMemPv
	mov dword [scrParserGlob+0xc], 0x0
_Z24Scr_ShutdownOpcodeLookupv_20:
	mov ebx, [scrParserPub]
	test ebx, ebx
	jz _Z24Scr_ShutdownOpcodeLookupv_30
	mov edx, [scrParserPub+0x4]
	test edx, edx
	jnz _Z24Scr_ShutdownOpcodeLookupv_40
_Z24Scr_ShutdownOpcodeLookupv_100:
	mov eax, [scrParserPub]
	mov [esp], eax
	call _Z17Hunk_FreeDebugMemPv
	mov dword [scrParserPub], 0x0
_Z24Scr_ShutdownOpcodeLookupv_30:
	mov ecx, [scrParserGlob+0x24]
	test ecx, ecx
	jz _Z24Scr_ShutdownOpcodeLookupv_50
	mov eax, [scrParserGlob+0x28]
	test eax, eax
	jz _Z24Scr_ShutdownOpcodeLookupv_60
	xor ebx, ebx
	mov edx, [scrParserGlob+0x24]
_Z24Scr_ShutdownOpcodeLookupv_80:
	mov eax, [edx+ebx*8]
	test eax, eax
	jz _Z24Scr_ShutdownOpcodeLookupv_70
	mov [esp], eax
	call _Z17Hunk_FreeDebugMemPv
	mov edx, [scrParserGlob+0x24]
_Z24Scr_ShutdownOpcodeLookupv_70:
	add ebx, 0x1
	cmp ebx, [scrParserGlob+0x28]
	jb _Z24Scr_ShutdownOpcodeLookupv_80
	mov [esp], edx
	call _Z17Hunk_FreeDebugMemPv
	mov dword [scrParserGlob+0x24], 0x0
_Z24Scr_ShutdownOpcodeLookupv_50:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z24Scr_ShutdownOpcodeLookupv_60:
	mov edx, [scrParserGlob+0x24]
	mov [esp], edx
	call _Z17Hunk_FreeDebugMemPv
	mov dword [scrParserGlob+0x24], 0x0
	jmp _Z24Scr_ShutdownOpcodeLookupv_50
_Z24Scr_ShutdownOpcodeLookupv_40:
	xor esi, esi
	xor ebx, ebx
_Z24Scr_ShutdownOpcodeLookupv_90:
	mov eax, [scrParserPub]
	mov eax, [ebx+eax+0x4]
	mov [esp], eax
	call _Z17Hunk_FreeDebugMemPv
	add esi, 0x1
	add ebx, 0x18
	cmp [scrParserPub+0x4], esi
	ja _Z24Scr_ShutdownOpcodeLookupv_90
	jmp _Z24Scr_ShutdownOpcodeLookupv_100
	nop


;Scr_SetLoadedImpureScript(unsigned char)
_Z25Scr_SetLoadedImpureScripth:
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

