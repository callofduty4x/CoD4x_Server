;Imports of scr_main:
	extern scrCompilePub
	extern scrAnimPub
	extern _Z17SL_ShutdownSystemj
	extern _Z24Scr_ShutdownOpcodeLookupv
	extern scrVarPub
	extern _Z16Hunk_UserDestroyP8HunkUser
	extern _Z8I_iscsymi
	extern _Z11ClearObjectj
	extern _Z17RemoveRefToObjectj
	extern _Z20Scr_InitOpcodeLookupv
	extern _Z14Scr_AllocArrayv
	extern _Z15Hunk_UserCreateiPKchhi
	extern _Z15TempMemoryResetP8HunkUser
	extern _Z10TempMalloci
	extern memset
	extern _Z21Scr_ClearErrorMessagev
	extern _Z25Scr_SetLoadedImpureScripth
	extern _Z13SL_FindStringPKc
	extern SL_GetString_
	extern SL_TransferRefToUser
	extern _Z27Scr_CreateCanonicalFilenamePKc
	extern _Z12FindVariablejj
	extern _Z20SL_RemoveRefToStringj
	extern _Z10FindObjectj
	extern _Z22SL_FindLowercaseStringPKc
	extern _Z12GetValueTypej
	extern _Z16Scr_EvalVariablej
	extern _Z23Scr_LoadAnimTreeAtIndexjPFPviEi
	extern _Z14GetNewVariablejj
	extern _Z18SL_ConvertToStringj
	extern _Z11Com_sprintfPciPKcz
	extern scrParserPub
	extern _Z19Scr_AddSourceBufferPKcS0_S0_h
	extern _Z17Scr_InitAllocNodev
	extern _Z11ScriptParseP6sval_uh
	extern _Z11GetVariablejj
	extern _Z10GetObjectAj
	extern _Z13ScriptCompile6sval_ujjP13PrecacheEntryi

;Exports of scr_main:
	global _Z12Scr_ScanFilePci
	global _Z14Scr_LoadScriptPKc
	global _Z15Scr_FreeScriptsh
	global _Z16Scr_IsIdentifierPKc
	global _Z18Scr_EndLoadScriptsv
	global _Z20Scr_BeginLoadScriptsv
	global _Z20Scr_EndLoadAnimTreesv
	global _Z20Scr_IsInOpcodeMemoryPKc
	global _Z21SL_GetCanonicalStringPKc
	global _Z21Scr_GetFunctionHandlePKcS0_
	global _Z21Scr_PrecacheAnimTreesPFPviEi
	global _Z22Scr_BeginLoadAnimTreesi
	global _Z22Scr_LoadScriptInternalPKcP13PrecacheEntryi
	global _Z22Scr_PostCompileScriptsv
	global _Z28SL_TransferToCanonicalStringj


SECTION .text


;Scr_ScanFile(char*, int)
_Z12Scr_ScanFilePci:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	mov edi, [ebp+0x8]
	mov esi, [ebp+0xc]
	test esi, esi
	jg _Z12Scr_ScanFilePci_10
	xor ecx, ecx
_Z12Scr_ScanFilePci_90:
	mov eax, ecx
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z12Scr_ScanFilePci_10:
	mov ebx, scrCompilePub
	mov eax, [ebx+0x20018]
	movzx edx, byte [eax]
	add eax, 0x1
	mov [ebx+0x20018], eax
	test dl, dl
	jnz _Z12Scr_ScanFilePci_20
	xor ecx, ecx
_Z12Scr_ScanFilePci_60:
	mov eax, [ebx+0x2001c]
	test eax, eax
	jz _Z12Scr_ScanFilePci_30
	mov [ebx+0x20018], eax
	mov dword [ebx+0x2001c], 0x0
	mov eax, ecx
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z12Scr_ScanFilePci_20:
	cmp dl, 0xa
	jz _Z12Scr_ScanFilePci_40
	xor ecx, ecx
_Z12Scr_ScanFilePci_70:
	mov [edi+ecx], dl
	add ecx, 0x1
	cmp esi, ecx
	jz _Z12Scr_ScanFilePci_50
	mov eax, [ebx+0x20018]
	movzx edx, byte [eax]
	add eax, 0x1
	mov [ebx+0x20018], eax
	test dl, dl
	jz _Z12Scr_ScanFilePci_60
	cmp dl, 0xa
	jnz _Z12Scr_ScanFilePci_70
_Z12Scr_ScanFilePci_100:
	mov eax, ecx
	add ecx, 0x1
	mov byte [eax+edi], 0xa
_Z12Scr_ScanFilePci_80:
	mov eax, ecx
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z12Scr_ScanFilePci_40:
	xor eax, eax
	mov ecx, 0x1
	mov byte [eax+edi], 0xa
	jmp _Z12Scr_ScanFilePci_80
_Z12Scr_ScanFilePci_30:
	sub dword [ebx+0x20018], 0x1
	jmp _Z12Scr_ScanFilePci_90
_Z12Scr_ScanFilePci_50:
	cmp dl, 0xa
	jz _Z12Scr_ScanFilePci_100
	test dl, dl
	jz _Z12Scr_ScanFilePci_60
	jmp _Z12Scr_ScanFilePci_90
	nop


;Scr_LoadScript(char const*)
_Z14Scr_LoadScriptPKc:
	push ebp
	mov ebp, esp
	sub esp, 0x2018
	mov dword [esp+0x8], 0x0
	lea eax, [ebp-0x2008]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z22Scr_LoadScriptInternalPKcP13PrecacheEntryi
	leave
	ret


;Scr_FreeScripts(unsigned char)
_Z15Scr_FreeScriptsh:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, scrCompilePub
	cmp byte [esi+0x20020], 0x0
	jnz _Z15Scr_FreeScriptsh_10
	mov eax, scrAnimPub
	cmp byte [eax+0x418], 0x0
	jnz _Z15Scr_FreeScriptsh_20
_Z15Scr_FreeScriptsh_40:
	mov dword [esp], 0x1
	call _Z17SL_ShutdownSystemj
	call _Z24Scr_ShutdownOpcodeLookupv
	mov ebx, scrVarPub
	mov eax, [ebx+0x44]
	test eax, eax
	jz _Z15Scr_FreeScriptsh_30
	mov [esp], eax
	call _Z16Hunk_UserDestroyP8HunkUser
	mov dword [ebx+0x44], 0x0
_Z15Scr_FreeScriptsh_30:
	mov dword [ebx+0x48], 0x0
	mov dword [esi+0x2002c], 0x0
	mov dword [ebx+0x4c], 0x0
	mov dword [ebx+0x38], 0x0
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z15Scr_FreeScriptsh_10:
	mov byte [esi+0x20020], 0x0
	call _Z18Scr_EndLoadScriptsv
	mov eax, scrAnimPub
	cmp byte [eax+0x418], 0x0
	jz _Z15Scr_FreeScriptsh_40
_Z15Scr_FreeScriptsh_20:
	mov byte [eax+0x418], 0x0
	call _Z20Scr_EndLoadAnimTreesv
	jmp _Z15Scr_FreeScriptsh_40


;Scr_IsIdentifier(char const*)
_Z16Scr_IsIdentifierPKc:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov edx, [ebp+0x8]
	movzx eax, byte [edx]
	test al, al
	jnz _Z16Scr_IsIdentifierPKc_10
_Z16Scr_IsIdentifierPKc_40:
	mov eax, 0x1
_Z16Scr_IsIdentifierPKc_50:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z16Scr_IsIdentifierPKc_10:
	mov ebx, edx
_Z16Scr_IsIdentifierPKc_30:
	movsx eax, al
	mov [esp], eax
	call _Z8I_iscsymi
	test eax, eax
	jz _Z16Scr_IsIdentifierPKc_20
	movzx eax, byte [ebx+0x1]
	add ebx, 0x1
	test al, al
	jnz _Z16Scr_IsIdentifierPKc_30
	jmp _Z16Scr_IsIdentifierPKc_40
_Z16Scr_IsIdentifierPKc_20:
	xor eax, eax
	jmp _Z16Scr_IsIdentifierPKc_50


;Scr_EndLoadScripts()
_Z18Scr_EndLoadScriptsv:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov dword [esp], 0x2
	call _Z17SL_ShutdownSystemj
	mov ebx, scrCompilePub
	mov byte [ebx+0x20020], 0x0
	mov eax, [ebx+0x8]
	mov [esp], eax
	call _Z11ClearObjectj
	mov eax, [ebx+0x8]
	mov [esp], eax
	call _Z17RemoveRefToObjectj
	mov dword [ebx+0x8], 0x0
	mov eax, [ebx+0xc]
	mov [esp], eax
	call _Z11ClearObjectj
	mov eax, [ebx+0xc]
	mov [esp], eax
	call _Z17RemoveRefToObjectj
	mov dword [ebx+0xc], 0x0
	mov eax, [ebx+0x10]
	mov [esp], eax
	call _Z11ClearObjectj
	mov eax, [ebx+0x10]
	mov [esp], eax
	call _Z17RemoveRefToObjectj
	mov dword [ebx+0x10], 0x0
	mov eax, [ebx+0x14]
	mov [esp], eax
	call _Z11ClearObjectj
	mov eax, [ebx+0x14]
	mov [esp], eax
	call _Z17RemoveRefToObjectj
	mov dword [ebx+0x14], 0x0
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;Scr_BeginLoadScripts()
_Z20Scr_BeginLoadScriptsv:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x20
	mov esi, scrCompilePub
	mov byte [esi+0x20020], 0x1
	call _Z20Scr_InitOpcodeLookupv
	call _Z14Scr_AllocArrayv
	mov [esi+0x8], eax
	call _Z14Scr_AllocArrayv
	mov [esi+0xc], eax
	call _Z14Scr_AllocArrayv
	mov [esi+0x10], eax
	call _Z14Scr_AllocArrayv
	mov [esi+0x14], eax
	mov dword [esp+0x10], 0x7
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], _cstring_scr_beginloadscr
	mov dword [esp], 0x100000
	call _Z15Hunk_UserCreateiPKchhi
	mov ebx, scrVarPub
	mov [ebx+0x44], eax
	mov [esp], eax
	call _Z15TempMemoryResetP8HunkUser
	mov dword [esp], 0x0
	call _Z10TempMalloci
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
	call _Z21Scr_ClearErrorMessagev
	mov dword [esi+0x20030], 0x0
	mov ebx, scrAnimPub
	mov dword [ebx+0x8], 0x0
	mov dword [esp], 0x0
	call _Z25Scr_SetLoadedImpureScripth
	mov byte [ebx+0x418], 0x1
	mov dword [ebx+0x410], 0x0
	mov dword [ebx+0x20c], 0x0
	call _Z14Scr_AllocArrayv
	mov [ebx], eax
	mov dword [ebx+0x4], 0x0
	mov dword [esi+0x20024], 0x0
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret


;Scr_EndLoadAnimTrees()
_Z20Scr_EndLoadAnimTreesv:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, scrAnimPub
	mov eax, [ebx]
	mov [esp], eax
	call _Z11ClearObjectj
	mov eax, [ebx]
	mov [esp], eax
	call _Z17RemoveRefToObjectj
	mov dword [ebx], 0x0
	mov eax, [ebx+0x4]
	test eax, eax
	jnz _Z20Scr_EndLoadAnimTreesv_10
_Z20Scr_EndLoadAnimTreesv_40:
	mov dword [esp], 0x2
	call _Z17SL_ShutdownSystemj
	mov ebx, scrVarPub
	mov eax, [ebx+0x48]
	test eax, eax
	jz _Z20Scr_EndLoadAnimTreesv_20
	mov ecx, [ebx+0x4c]
	test ecx, ecx
	jz _Z20Scr_EndLoadAnimTreesv_30
_Z20Scr_EndLoadAnimTreesv_20:
	mov eax, scrAnimPub
	mov byte [eax+0x418], 0x0
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z20Scr_EndLoadAnimTreesv_10:
	mov [esp], eax
	call _Z17RemoveRefToObjectj
	jmp _Z20Scr_EndLoadAnimTreesv_40
_Z20Scr_EndLoadAnimTreesv_30:
	mov dword [esp], 0x0
	call _Z10TempMalloci
	mov [ebx+0x4c], eax
	mov eax, scrAnimPub
	mov byte [eax+0x418], 0x0
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;Scr_IsInOpcodeMemory(char const*)
_Z20Scr_IsInOpcodeMemoryPKc:
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
_Z21SL_GetCanonicalStringPKc:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0x8]
	mov [esp], ebx
	call _Z13SL_FindStringPKc
	mov esi, scrCompilePub
	movzx eax, word [esi+eax*2+0x18]
	movzx edx, ax
	test ax, ax
	jz _Z21SL_GetCanonicalStringPKc_10
_Z21SL_GetCanonicalStringPKc_20:
	mov eax, edx
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z21SL_GetCanonicalStringPKc_10:
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
	jnz _Z21SL_GetCanonicalStringPKc_20
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
_Z21Scr_GetFunctionHandlePKcS0_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z27Scr_CreateCanonicalFilenamePKc
	mov ebx, eax
	mov [esp+0x4], eax
	mov edi, scrCompilePub
	mov eax, [edi+0xc]
	mov [esp], eax
	call _Z12FindVariablejj
	mov esi, eax
	mov [esp], ebx
	call _Z20SL_RemoveRefToStringj
	test esi, esi
	jnz _Z21Scr_GetFunctionHandlePKcS0__10
_Z21Scr_GetFunctionHandlePKcS0__20:
	xor eax, eax
_Z21Scr_GetFunctionHandlePKcS0__30:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z21Scr_GetFunctionHandlePKcS0__10:
	mov [esp], esi
	call _Z10FindObjectj
	mov ebx, eax
	mov eax, [ebp+0xc]
	mov [esp], eax
	call _Z22SL_FindLowercaseStringPKc
	test eax, eax
	jz _Z21Scr_GetFunctionHandlePKcS0__20
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z12FindVariablejj
	mov ebx, eax
	test eax, eax
	jz _Z21Scr_GetFunctionHandlePKcS0__20
	mov [esp], eax
	call _Z12GetValueTypej
	sub eax, 0x1
	jnz _Z21Scr_GetFunctionHandlePKcS0__20
	mov [esp], ebx
	call _Z10FindObjectj
	mov dword [esp+0x4], 0x1
	mov [esp], eax
	call _Z12FindVariablejj
	mov [esp], eax
	call _Z16Scr_EvalVariablej
	mov ecx, scrVarPub
	sub eax, [ecx+0x48]
	cmp eax, [edi+0x2002c]
	jae _Z21Scr_GetFunctionHandlePKcS0__20
	jmp _Z21Scr_GetFunctionHandlePKcS0__30


;Scr_PrecacheAnimTrees(void* (*)(int), int)
_Z21Scr_PrecacheAnimTreesPFPviEi:
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
	jnz _Z21Scr_PrecacheAnimTreesPFPviEi_10
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z21Scr_PrecacheAnimTreesPFPviEi_10:
	mov ebx, 0x1
	mov edi, eax
_Z21Scr_PrecacheAnimTreesPFPviEi_20:
	mov [esp+0x8], esi
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z23Scr_LoadAnimTreeAtIndexjPFPviEi
	add ebx, 0x1
	cmp [edi+esi*4+0x40c], ebx
	jae _Z21Scr_PrecacheAnimTreesPFPviEi_20
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Scr_BeginLoadAnimTrees(int)
_Z22Scr_BeginLoadAnimTreesi:
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
	call _Z14Scr_AllocArrayv
	mov [ebx], eax
	mov dword [ebx+0x4], 0x0
	mov eax, scrCompilePub
	mov dword [eax+0x20024], 0x0
	add esp, 0x4
	pop ebx
	pop ebp
	ret


;Scr_LoadScriptInternal(char const*, PrecacheEntry*, int)
_Z22Scr_LoadScriptInternalPKcP13PrecacheEntryi:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x9c
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z27Scr_CreateCanonicalFilenamePKc
	mov esi, eax
	mov [esp+0x4], eax
	mov edx, scrCompilePub
	mov eax, [edx+0x8]
	mov [esp], eax
	call _Z12FindVariablejj
	test eax, eax
	jz _Z22Scr_LoadScriptInternalPKcP13PrecacheEntryi_10
	mov [esp], esi
	call _Z20SL_RemoveRefToStringj
	mov [esp+0x4], esi
	mov edx, scrCompilePub
	mov eax, [edx+0xc]
	mov [esp], eax
	call _Z12FindVariablejj
	test eax, eax
	jnz _Z22Scr_LoadScriptInternalPKcP13PrecacheEntryi_20
_Z22Scr_LoadScriptInternalPKcP13PrecacheEntryi_30:
	xor edi, edi
	mov eax, edi
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z22Scr_LoadScriptInternalPKcP13PrecacheEntryi_10:
	mov [esp+0x4], esi
	mov edx, scrCompilePub
	mov eax, [edx+0x8]
	mov [esp], eax
	call _Z14GetNewVariablejj
	mov [ebp-0x70], eax
	mov [esp], esi
	call _Z20SL_RemoveRefToStringj
	mov [esp], esi
	call _Z18SL_ConvertToStringj
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_sgsc
	mov dword [esp+0x4], 0x40
	lea eax, [ebp-0x5c]
	mov [esp], eax
	call _Z11Com_sprintfPciPKcz
	mov edx, scrParserPub
	mov edx, [edx+0xc]
	mov [ebp-0x74], edx
	mov dword [esp], 0x0
	call _Z10TempMalloci
	mov ebx, eax
	mov [esp], esi
	call _Z18SL_ConvertToStringj
	mov dword [esp+0xc], 0x1
	mov [esp+0x8], ebx
	lea edx, [ebp-0x5c]
	mov [esp+0x4], edx
	mov [esp], eax
	call _Z19Scr_AddSourceBufferPKcS0_S0_h
	mov [ebp-0x7c], eax
	test eax, eax
	jz _Z22Scr_LoadScriptInternalPKcP13PrecacheEntryi_30
	mov ebx, scrAnimPub
	mov eax, [ebx+0x8]
	mov [ebp-0x6c], eax
	mov dword [ebx+0x8], 0x0
	mov edx, scrCompilePub
	mov dword [edx+0x4], 0x0
	call _Z17Scr_InitAllocNodev
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
	call _Z11ScriptParseP6sval_uh
	mov [esp+0x4], esi
	mov edx, scrCompilePub
	mov eax, [edx+0xc]
	mov [esp], eax
	call _Z11GetVariablejj
	mov [esp], eax
	call _Z10GetObjectAj
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
	call _Z13ScriptCompile6sval_ujjP13PrecacheEntryi
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
_Z22Scr_LoadScriptInternalPKcP13PrecacheEntryi_20:
	mov [esp], eax
	call _Z10FindObjectj
	mov edi, eax
	mov eax, edi
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Scr_PostCompileScripts()
_Z22Scr_PostCompileScriptsv:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop


;SL_TransferToCanonicalString(unsigned int)
_Z28SL_TransferToCanonicalStringj:
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
	jnz _Z28SL_TransferToCanonicalStringj_10
	mov edx, scrVarPub
	movzx eax, word [edx+0x4]
	add eax, 0x1
	mov [edx+0x4], ax
	mov [ecx+ebx*2+0x18], ax
	movzx edx, ax
_Z28SL_TransferToCanonicalStringj_10:
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

