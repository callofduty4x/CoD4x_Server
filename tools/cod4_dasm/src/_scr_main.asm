;Imports of scr_main:
	extern scrCompilePub
	extern scrAnimPub
	extern SL_ShutdownSystem
	extern Scr_ShutdownOpcodeLookup
	extern scrVarPub
	extern Hunk_UserDestroy
	extern I_iscsym
	extern ClearObject
	extern RemoveRefToObject
	extern Scr_InitOpcodeLookup
	extern Scr_AllocArray
	extern Hunk_UserCreate
	extern TempMemoryReset
	extern TempMalloc
	extern memset
	extern Scr_ClearErrorMessage
	extern Scr_SetLoadedImpureScript
	extern SL_FindString
	extern SL_GetString_
	extern SL_TransferRefToUser
	extern Scr_CreateCanonicalFilename
	extern FindVariable
	extern SL_RemoveRefToString
	extern FindObject
	extern SL_FindLowercaseString
	extern GetValueType
	extern Scr_EvalVariable
	extern Scr_LoadAnimTreeAtIndex
	extern GetNewVariable
	extern SL_ConvertToString
	extern Com_sprintf
	extern scrParserPub
	extern Scr_AddSourceBuffer
	extern Scr_InitAllocNode
	extern ScriptParse
	extern GetVariable
	extern SGetObjectA
	extern ScriptCompile

;Exports of scr_main:
	global Scr_ScanFile
	global Scr_LoadScript
	global Scr_FreeScripts
	global Scr_IsIdentifier
	global Scr_EndLoadScripts
	global Scr_BeginLoadScripts
	global Scr_EndLoadAnimTrees
	global Scr_IsInOpcodeMemory
	global SL_GetCanonicalString
	global Scr_GetFunctionHandle
	global Scr_PrecacheAnimTrees
	global Scr_BeginLoadAnimTrees
	global Scr_LoadScriptInternal
	global Scr_PostCompileScripts
	global SL_TransferToCanonicalString


SECTION .text


;Scr_ScanFile(char*, int)
Scr_ScanFile:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	mov edi, [ebp+0x8]
	mov esi, [ebp+0xc]
	test esi, esi
	jg Scr_ScanFile_10
	xor ecx, ecx
Scr_ScanFile_90:
	mov eax, ecx
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Scr_ScanFile_10:
	mov ebx, scrCompilePub
	mov eax, [ebx+0x20018]
	movzx edx, byte [eax]
	add eax, 0x1
	mov [ebx+0x20018], eax
	test dl, dl
	jnz Scr_ScanFile_20
	xor ecx, ecx
Scr_ScanFile_60:
	mov eax, [ebx+0x2001c]
	test eax, eax
	jz Scr_ScanFile_30
	mov [ebx+0x20018], eax
	mov dword [ebx+0x2001c], 0x0
	mov eax, ecx
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Scr_ScanFile_20:
	cmp dl, 0xa
	jz Scr_ScanFile_40
	xor ecx, ecx
Scr_ScanFile_70:
	mov [edi+ecx], dl
	add ecx, 0x1
	cmp esi, ecx
	jz Scr_ScanFile_50
	mov eax, [ebx+0x20018]
	movzx edx, byte [eax]
	add eax, 0x1
	mov [ebx+0x20018], eax
	test dl, dl
	jz Scr_ScanFile_60
	cmp dl, 0xa
	jnz Scr_ScanFile_70
Scr_ScanFile_100:
	mov eax, ecx
	add ecx, 0x1
	mov byte [eax+edi], 0xa
Scr_ScanFile_80:
	mov eax, ecx
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Scr_ScanFile_40:
	xor eax, eax
	mov ecx, 0x1
	mov byte [eax+edi], 0xa
	jmp Scr_ScanFile_80
Scr_ScanFile_30:
	sub dword [ebx+0x20018], 0x1
	jmp Scr_ScanFile_90
Scr_ScanFile_50:
	cmp dl, 0xa
	jz Scr_ScanFile_100
	test dl, dl
	jz Scr_ScanFile_60
	jmp Scr_ScanFile_90
	nop


;Scr_LoadScript(char const*)
Scr_LoadScript:
	push ebp
	mov ebp, esp
	sub esp, 0x2018
	mov dword [esp+0x8], 0x0
	lea eax, [ebp-0x2008]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Scr_LoadScriptInternal
	leave
	ret


;Scr_FreeScripts(unsigned char)
Scr_FreeScripts:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, scrCompilePub
	cmp byte [esi+0x20020], 0x0
	jnz Scr_FreeScripts_10
	mov eax, scrAnimPub
	cmp byte [eax+0x418], 0x0
	jnz Scr_FreeScripts_20
Scr_FreeScripts_40:
	mov dword [esp], 0x1
	call SL_ShutdownSystem
	call Scr_ShutdownOpcodeLookup
	mov ebx, scrVarPub
	mov eax, [ebx+0x44]
	test eax, eax
	jz Scr_FreeScripts_30
	mov [esp], eax
	call Hunk_UserDestroy
	mov dword [ebx+0x44], 0x0
Scr_FreeScripts_30:
	mov dword [ebx+0x48], 0x0
	mov dword [esi+0x2002c], 0x0
	mov dword [ebx+0x4c], 0x0
	mov dword [ebx+0x38], 0x0
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
Scr_FreeScripts_10:
	mov byte [esi+0x20020], 0x0
	call Scr_EndLoadScripts
	mov eax, scrAnimPub
	cmp byte [eax+0x418], 0x0
	jz Scr_FreeScripts_40
Scr_FreeScripts_20:
	mov byte [eax+0x418], 0x0
	call Scr_EndLoadAnimTrees
	jmp Scr_FreeScripts_40


;Scr_IsIdentifier(char const*)
Scr_IsIdentifier:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov edx, [ebp+0x8]
	movzx eax, byte [edx]
	test al, al
	jnz Scr_IsIdentifier_10
Scr_IsIdentifier_40:
	mov eax, 0x1
Scr_IsIdentifier_50:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
Scr_IsIdentifier_10:
	mov ebx, edx
Scr_IsIdentifier_30:
	movsx eax, al
	mov [esp], eax
	call I_iscsym
	test eax, eax
	jz Scr_IsIdentifier_20
	movzx eax, byte [ebx+0x1]
	add ebx, 0x1
	test al, al
	jnz Scr_IsIdentifier_30
	jmp Scr_IsIdentifier_40
Scr_IsIdentifier_20:
	xor eax, eax
	jmp Scr_IsIdentifier_50


;Scr_EndLoadScripts()
Scr_EndLoadScripts:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov dword [esp], 0x2
	call SL_ShutdownSystem
	mov ebx, scrCompilePub
	mov byte [ebx+0x20020], 0x0
	mov eax, [ebx+0x8]
	mov [esp], eax
	call ClearObject
	mov eax, [ebx+0x8]
	mov [esp], eax
	call RemoveRefToObject
	mov dword [ebx+0x8], 0x0
	mov eax, [ebx+0xc]
	mov [esp], eax
	call ClearObject
	mov eax, [ebx+0xc]
	mov [esp], eax
	call RemoveRefToObject
	mov dword [ebx+0xc], 0x0
	mov eax, [ebx+0x10]
	mov [esp], eax
	call ClearObject
	mov eax, [ebx+0x10]
	mov [esp], eax
	call RemoveRefToObject
	mov dword [ebx+0x10], 0x0
	mov eax, [ebx+0x14]
	mov [esp], eax
	call ClearObject
	mov eax, [ebx+0x14]
	mov [esp], eax
	call RemoveRefToObject
	mov dword [ebx+0x14], 0x0
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;Scr_BeginLoadScripts()
Scr_BeginLoadScripts:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x20
	mov esi, scrCompilePub
	mov byte [esi+0x20020], 0x1
	call Scr_InitOpcodeLookup
	call Scr_AllocArray
	mov [esi+0x8], eax
	call Scr_AllocArray
	mov [esi+0xc], eax
	call Scr_AllocArray
	mov [esi+0x10], eax
	call Scr_AllocArray
	mov [esi+0x14], eax
	mov dword [esp+0x10], 0x7
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], _cstring_scr_beginloadscr
	mov dword [esp], 0x100000
	call Hunk_UserCreate
	mov ebx, scrVarPub
	mov [ebx+0x44], eax
	mov [esp], eax
	call TempMemoryReset
	mov dword [esp], 0x0
	call TempMalloc
	mov [ebx+0x48], eax
	mov dword [esi+0x2002c], 0x0
	mov dword [ebx+0x4c], 0x0
	lea eax, [esi+0x18]
	mov dword [esp+0x8], 0x20000
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call memset
	mov word [ebx+0x4], 0x0
	mov dword [ebx], 0x0
	mov dword [esi], 0x0
	call Scr_ClearErrorMessage
	mov dword [esi+0x20030], 0x0
	mov ebx, scrAnimPub
	mov dword [ebx+0x8], 0x0
	mov dword [esp], 0x0
	call Scr_SetLoadedImpureScript
	mov byte [ebx+0x418], 0x1
	mov dword [ebx+0x410], 0x0
	mov dword [ebx+0x20c], 0x0
	call Scr_AllocArray
	mov [ebx], eax
	mov dword [ebx+0x4], 0x0
	mov dword [esi+0x20024], 0x0
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret


;Scr_EndLoadAnimTrees()
Scr_EndLoadAnimTrees:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, scrAnimPub
	mov eax, [ebx]
	mov [esp], eax
	call ClearObject
	mov eax, [ebx]
	mov [esp], eax
	call RemoveRefToObject
	mov dword [ebx], 0x0
	mov eax, [ebx+0x4]
	test eax, eax
	jnz Scr_EndLoadAnimTrees_10
Scr_EndLoadAnimTrees_40:
	mov dword [esp], 0x2
	call SL_ShutdownSystem
	mov ebx, scrVarPub
	mov eax, [ebx+0x48]
	test eax, eax
	jz Scr_EndLoadAnimTrees_20
	mov ecx, [ebx+0x4c]
	test ecx, ecx
	jz Scr_EndLoadAnimTrees_30
Scr_EndLoadAnimTrees_20:
	mov eax, scrAnimPub
	mov byte [eax+0x418], 0x0
	add esp, 0x14
	pop ebx
	pop ebp
	ret
Scr_EndLoadAnimTrees_10:
	mov [esp], eax
	call RemoveRefToObject
	jmp Scr_EndLoadAnimTrees_40
Scr_EndLoadAnimTrees_30:
	mov dword [esp], 0x0
	call TempMalloc
	mov [ebx+0x4c], eax
	mov eax, scrAnimPub
	mov byte [eax+0x418], 0x0
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;Scr_IsInOpcodeMemory(char const*)
Scr_IsInOpcodeMemory:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, scrVarPub
	sub eax, [edx+0x48]
	mov edx, scrCompilePub
	cmp eax, [edx+0x2002c]
	setb al
	movzx eax, al
	pop ebp
	ret
	nop


;SL_GetCanonicalString(char const*)
SL_GetCanonicalString:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0x8]
	mov [esp], ebx
	call SL_FindString
	mov esi, scrCompilePub
	movzx eax, word [esi+eax*2+0x18]
	movzx edx, ax
	test ax, ax
	jz SL_GetCanonicalString_10
SL_GetCanonicalString_20:
	mov eax, edx
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
SL_GetCanonicalString_10:
	mov dword [esp+0x8], 0x10
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call SL_GetString_
	mov ebx, eax
	mov dword [esp+0x4], 0x2
	mov [esp], eax
	call SL_TransferRefToUser
	movzx eax, word [esi+ebx*2+0x18]
	movzx edx, ax
	test ax, ax
	jnz SL_GetCanonicalString_20
	mov edx, scrVarPub
	movzx eax, word [edx+0x4]
	add eax, 0x1
	mov [edx+0x4], ax
	mov [esi+ebx*2+0x18], ax
	movzx edx, ax
	mov eax, edx
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	add [eax], al


;Scr_GetFunctionHandle(char const*, char const*)
Scr_GetFunctionHandle:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Scr_CreateCanonicalFilename
	mov ebx, eax
	mov [esp+0x4], eax
	mov edi, scrCompilePub
	mov eax, [edi+0xc]
	mov [esp], eax
	call FindVariable
	mov esi, eax
	mov [esp], ebx
	call SL_RemoveRefToString
	test esi, esi
	jnz Scr_GetFunctionHandle_10
Scr_GetFunctionHandle_20:
	xor eax, eax
Scr_GetFunctionHandle_30:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Scr_GetFunctionHandle_10:
	mov [esp], esi
	call FindObject
	mov ebx, eax
	mov eax, [ebp+0xc]
	mov [esp], eax
	call SL_FindLowercaseString
	test eax, eax
	jz Scr_GetFunctionHandle_20
	mov [esp+0x4], eax
	mov [esp], ebx
	call FindVariable
	mov ebx, eax
	test eax, eax
	jz Scr_GetFunctionHandle_20
	mov [esp], eax
	call GetValueType
	sub eax, 0x1
	jnz Scr_GetFunctionHandle_20
	mov [esp], ebx
	call FindObject
	mov dword [esp+0x4], 0x1
	mov [esp], eax
	call FindVariable
	mov [esp], eax
	call Scr_EvalVariable
	mov ecx, scrVarPub
	sub eax, [ecx+0x48]
	cmp eax, [edi+0x2002c]
	jae Scr_GetFunctionHandle_20
	jmp Scr_GetFunctionHandle_30


;Scr_PrecacheAnimTrees(void* (*)(int), int)
Scr_PrecacheAnimTrees:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov esi, [ebp+0xc]
	mov eax, scrAnimPub
	mov edx, [eax+esi*4+0x40c]
	test edx, edx
	jnz Scr_PrecacheAnimTrees_10
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Scr_PrecacheAnimTrees_10:
	mov ebx, 0x1
	mov edi, eax
Scr_PrecacheAnimTrees_20:
	mov [esp+0x8], esi
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov [esp], ebx
	call Scr_LoadAnimTreeAtIndex
	add ebx, 0x1
	cmp [edi+esi*4+0x40c], ebx
	jae Scr_PrecacheAnimTrees_20
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Scr_BeginLoadAnimTrees(int)
Scr_BeginLoadAnimTrees:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x4
	mov eax, [ebp+0x8]
	mov ebx, scrAnimPub
	mov byte [ebx+0x418], 0x1
	mov dword [ebx+eax*4+0x40c], 0x0
	shl eax, 0x9
	mov dword [eax+ebx+0xc], 0x0
	call Scr_AllocArray
	mov [ebx], eax
	mov dword [ebx+0x4], 0x0
	mov eax, scrCompilePub
	mov dword [eax+0x20024], 0x0
	add esp, 0x4
	pop ebx
	pop ebp
	ret


;Scr_LoadScriptInternal(char const*, PrecacheEntry*, int)
Scr_LoadScriptInternal:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x9c
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Scr_CreateCanonicalFilename
	mov esi, eax
	mov [esp+0x4], eax
	mov edx, scrCompilePub
	mov eax, [edx+0x8]
	mov [esp], eax
	call FindVariable
	test eax, eax
	jz Scr_LoadScriptInternal_10
	mov [esp], esi
	call SL_RemoveRefToString
	mov [esp+0x4], esi
	mov edx, scrCompilePub
	mov eax, [edx+0xc]
	mov [esp], eax
	call FindVariable
	test eax, eax
	jnz Scr_LoadScriptInternal_20
Scr_LoadScriptInternal_30:
	xor edi, edi
	mov eax, edi
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Scr_LoadScriptInternal_10:
	mov [esp+0x4], esi
	mov edx, scrCompilePub
	mov eax, [edx+0x8]
	mov [esp], eax
	call GetNewVariable
	mov [ebp-0x70], eax
	mov [esp], esi
	call SL_RemoveRefToString
	mov [esp], esi
	call SL_ConvertToString
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_sgsc
	mov dword [esp+0x4], 0x40
	lea eax, [ebp-0x5c]
	mov [esp], eax
	call Com_sprintf
	mov edx, scrParserPub
	mov edx, [edx+0xc]
	mov [ebp-0x74], edx
	mov dword [esp], 0x0
	call TempMalloc
	mov ebx, eax
	mov [esp], esi
	call SL_ConvertToString
	mov dword [esp+0xc], 0x1
	mov [esp+0x8], ebx
	lea edx, [ebp-0x5c]
	mov [esp+0x4], edx
	mov [esp], eax
	call Scr_AddSourceBuffer
	mov [ebp-0x7c], eax
	test eax, eax
	jz Scr_LoadScriptInternal_30
	mov ebx, scrAnimPub
	mov eax, [ebx+0x8]
	mov [ebp-0x6c], eax
	mov dword [ebx+0x8], 0x0
	mov edx, scrCompilePub
	mov dword [edx+0x4], 0x0
	call Scr_InitAllocNode
	mov eax, scrParserPub
	mov eax, [eax+0x8]
	mov [ebp-0x78], eax
	lea eax, [ebp-0x5c]
	mov edx, scrParserPub
	mov [edx+0x8], eax
	mov edx, scrCompilePub
	mov dword [edx+0x20018], _cstring_
	mov eax, [ebp-0x7c]
	mov [edx+0x2001c], eax
	mov dword [esp+0x4], 0x0
	lea eax, [ebp-0x1c]
	mov [esp], eax
	call ScriptParse
	mov [esp+0x4], esi
	mov edx, scrCompilePub
	mov eax, [edx+0xc]
	mov [esp], eax
	call GetVariable
	mov [esp], eax
	call SGetObjectA
	mov edi, eax
	mov eax, [ebp+0x10]
	mov [esp+0x10], eax
	mov edx, [ebp+0xc]
	mov [esp+0xc], edx
	mov eax, [ebp-0x70]
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call ScriptCompile
	mov eax, [ebp-0x78]
	mov edx, scrParserPub
	mov [edx+0x8], eax
	mov eax, [ebp-0x74]
	mov [edx+0xc], eax
	mov edx, [ebp-0x6c]
	mov [ebx+0x8], edx
	mov eax, edi
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Scr_LoadScriptInternal_20:
	mov [esp], eax
	call FindObject
	mov edi, eax
	mov eax, edi
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Scr_PostCompileScripts()
Scr_PostCompileScripts:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop


;SL_TransferToCanonicalString(unsigned int)
SL_TransferToCanonicalString:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov dword [esp+0x4], 0x2
	mov [esp], ebx
	call SL_TransferRefToUser
	mov ecx, scrCompilePub
	movzx eax, word [ecx+ebx*2+0x18]
	movzx edx, ax
	test ax, ax
	jnz SL_TransferToCanonicalString_10
	mov edx, scrVarPub
	movzx eax, word [edx+0x4]
	add eax, 0x1
	mov [edx+0x4], ax
	mov [ecx+ebx*2+0x18], ax
	movzx edx, ax
SL_TransferToCanonicalString_10:
	mov eax, edx
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;Initialized global or static variables of scr_main:
SECTION .data


;Initialized constant data of scr_main:
SECTION .rdata


;Zero initialized global or static variables of scr_main:
SECTION .bss


;All cstrings:
SECTION .rdata
_cstring_scr_beginloadscr:		db "Scr_BeginLoadScripts",0
_cstring_sgsc:		db "%s.gsc",0
_cstring_:		db "+",0



;All constant floats and doubles:
SECTION .rdata

