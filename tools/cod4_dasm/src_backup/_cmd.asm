;Imports of cmd:
	extern _Z10Com_PrintfiPKcz
	extern _Z10I_strncpyzPcPKci
	extern _Z20Com_DefaultExtensionPciPKc
	extern _Z24Com_GetFilenameSubStringPKc
	extern _Z9I_stricmpPKcS0_
	extern useFastFile
	extern FS_ReadFile
	extern FS_FreeFile
	extern memcpy
	extern _Z26DB_IsMinimumFastFileLoadedv
	extern _Z19DB_FindXAssetHeader10XAssetTypePKc
	extern _Z14Com_PrintErroriPKcz
	extern _Z10Com_FilterPKcS0_i
	extern _Z12Dvar_FindVarPKc
	extern _Z2vaPKcz
	extern atoi
	extern _Z24Sys_EnterCriticalSection15CriticalSection
	extern _Z24Sys_LeaveCriticalSection15CriticalSection
	extern memmove
	extern _Z13SV_WaitServerv
	extern strcmp
	extern _Z16PbTrapPreExecCmdPc
	extern _Z10I_strnicmpPKcS0_i
	extern _Z12PbClAddEventiiPc
	extern _Z12Dvar_Commandv
	extern com_sv_running
	extern _Z25CL_ForwardCommandToServeriPKc
	extern _Z12PbSvAddEventiiiPc
	extern _Z14SV_GameCommandv
	extern FS_ListFiles

;Exports of cmd:
	global sv_cmd_argsPrivate
	global cmd_argsPrivate
	global cmd_functions
	global sv_cmd_functions
	global cmd_textArray
	global sv_cmd_text
	global sv_cmd_text_buf
	global cmd_text_buf
	global _Z26Cmd_TokenizeStringInternalPKciPS0_P14CmdArgsPrivate
	global _ZZ8Cmd_InitvE14Cmd_Wait_f_VAR
	global _ZZ8Cmd_InitvE14Cmd_Vstr_f_VAR
	global _ZZ8Cmd_InitvE14Cmd_Exec_f_VAR
	global _ZZ8Cmd_InitvE14Cmd_List_f_VAR
	global _Z10Cmd_Exec_fv
	global _Z10Cmd_List_fv
	global _Z10Cmd_Vstr_fv
	global _Z10Cmd_Wait_fv
	global _Z11Cmd_ForEachPFvPKcE
	global _Z12Cbuf_AddTextiPKc
	global _Z12Cbuf_Executeii
	global _Z12Cmd_Shutdownv
	global _Z14Cmd_ArgsBufferiPci
	global _Z15Cbuf_InsertTextiPKc
	global _Z15Cbuf_SV_Executev
	global _Z17Cmd_RemoveCommandPKc
	global _Z17SV_Cmd_ArgvBufferiPci
	global _Z18Cbuf_ExecuteBufferiiPKc
	global _Z18Cmd_TokenizeStringPKc
	global _Z19Cmd_ComErrorCleanupv
	global _Z19Cmd_SetAutoCompletePKcS0_S0_
	global _Z20Cbuf_AddServerText_fv
	global _Z20SV_Cmd_ExecuteStringiiPKc
	global _Z21SV_Cmd_TokenizeStringPKc
	global _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	global _Z22Cmd_EndTokenizedStringv
	global _Z23Cmd_ExecuteServerStringPKc
	global _Z24Cmd_ExecuteSingleCommandiiPKc
	global _Z25SV_Cmd_EndTokenizedStringv
	global _Z27Cmd_GetAutoCompleteFileListPKcPii
	global _Z27Cmd_TokenizeStringWithLimitPKci
	global _Z28Cmd_AddServerCommandInternalPKcPFvvEP14cmd_function_s
	global _Z8Cmd_Initv
	global _Z9Cbuf_Initv
	global cmd_args
	global sv_cmd_args
	global cmd_insideCBufExecute
	global cmd_wait


SECTION .text


;Cmd_TokenizeStringInternal(char const*, int, char const**, CmdArgsPrivate*)
_Z26Cmd_TokenizeStringInternalPKciPS0_P14CmdArgsPrivate:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xc
	mov [ebp-0x14], edx
	mov [ebp-0x18], ecx
	mov ebx, eax
	mov dword [ebp-0x10], 0x0
	movzx edx, byte [ebx]
	test dl, dl
	jz _Z26Cmd_TokenizeStringInternalPKciPS0_P14CmdArgsPrivate_10
_Z26Cmd_TokenizeStringInternalPKciPS0_P14CmdArgsPrivate_30:
	lea eax, [edx-0x14]
	cmp al, 0x2
	jbe _Z26Cmd_TokenizeStringInternalPKciPS0_P14CmdArgsPrivate_20
	cmp dl, 0x20
	ja _Z26Cmd_TokenizeStringInternalPKciPS0_P14CmdArgsPrivate_20
	lea esi, [ebx+0x1]
	mov ebx, esi
_Z26Cmd_TokenizeStringInternalPKciPS0_P14CmdArgsPrivate_130:
	movzx edx, byte [ebx]
	test dl, dl
	jnz _Z26Cmd_TokenizeStringInternalPKciPS0_P14CmdArgsPrivate_30
_Z26Cmd_TokenizeStringInternalPKciPS0_P14CmdArgsPrivate_10:
	mov eax, [ebp-0x10]
	add esp, 0xc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z26Cmd_TokenizeStringInternalPKciPS0_P14CmdArgsPrivate_20:
	cmp dl, 0x2f
	jz _Z26Cmd_TokenizeStringInternalPKciPS0_P14CmdArgsPrivate_40
_Z26Cmd_TokenizeStringInternalPKciPS0_P14CmdArgsPrivate_150:
	mov eax, [ebp+0x8]
	add eax, [eax+0x2824]
	mov edx, [ebp-0x10]
	mov ecx, [ebp-0x18]
	mov [ecx+edx*4], eax
	add edx, 0x1
	mov [ebp-0x10], edx
	sub dword [ebp-0x14], 0x1
	jz _Z26Cmd_TokenizeStringInternalPKciPS0_P14CmdArgsPrivate_50
	cmp byte [ebx], 0x22
	jz _Z26Cmd_TokenizeStringInternalPKciPS0_P14CmdArgsPrivate_60
_Z26Cmd_TokenizeStringInternalPKciPS0_P14CmdArgsPrivate_110:
	mov eax, [ebp+0x8]
	mov edx, [eax+0x2824]
	movzx eax, byte [ebx]
	mov ecx, [ebp+0x8]
	mov [ecx+edx], al
	lea ecx, [edx+0x1]
	mov edi, 0x1ffe
	cmp ecx, 0x1ffe
	cmovge ecx, edi
	mov eax, [ebp+0x8]
	mov [eax+0x2824], ecx
	lea esi, [ebx+0x1]
	movzx edx, byte [ebx+0x1]
	test dl, dl
	jz _Z26Cmd_TokenizeStringInternalPKciPS0_P14CmdArgsPrivate_70
	lea eax, [edx-0x14]
	cmp al, 0x2
	jbe _Z26Cmd_TokenizeStringInternalPKciPS0_P14CmdArgsPrivate_80
	cmp dl, 0x20
	jbe _Z26Cmd_TokenizeStringInternalPKciPS0_P14CmdArgsPrivate_90
_Z26Cmd_TokenizeStringInternalPKciPS0_P14CmdArgsPrivate_80:
	cmp dl, 0x2f
	jz _Z26Cmd_TokenizeStringInternalPKciPS0_P14CmdArgsPrivate_100
_Z26Cmd_TokenizeStringInternalPKciPS0_P14CmdArgsPrivate_120:
	mov ebx, esi
	jmp _Z26Cmd_TokenizeStringInternalPKciPS0_P14CmdArgsPrivate_110
_Z26Cmd_TokenizeStringInternalPKciPS0_P14CmdArgsPrivate_100:
	movzx eax, byte [ebx+0x2]
	cmp al, 0x2f
	jz _Z26Cmd_TokenizeStringInternalPKciPS0_P14CmdArgsPrivate_90
	cmp al, 0x2a
	jnz _Z26Cmd_TokenizeStringInternalPKciPS0_P14CmdArgsPrivate_120
_Z26Cmd_TokenizeStringInternalPKciPS0_P14CmdArgsPrivate_90:
	mov ebx, [ebp+0x8]
	mov byte [ebx+ecx], 0x0
	mov eax, [ebx+0x2824]
	add eax, 0x1
	cmp eax, 0x1ffe
	mov edx, 0x1ffe
	cmovge eax, edx
	mov [ebx+0x2824], eax
	mov ebx, esi
	jmp _Z26Cmd_TokenizeStringInternalPKciPS0_P14CmdArgsPrivate_130
_Z26Cmd_TokenizeStringInternalPKciPS0_P14CmdArgsPrivate_140:
	add ebx, 0x1
_Z26Cmd_TokenizeStringInternalPKciPS0_P14CmdArgsPrivate_50:
	mov edx, [ebp+0x8]
	mov eax, [edx+0x2824]
	movzx edx, byte [ebx]
	mov ecx, [ebp+0x8]
	mov [ecx+eax], dl
	add eax, 0x1
	cmp eax, 0x1ffe
	mov edx, 0x1ffe
	cmovge eax, edx
	mov [ecx+0x2824], eax
	cmp byte [ebx], 0x0
	jnz _Z26Cmd_TokenizeStringInternalPKciPS0_P14CmdArgsPrivate_140
	jmp _Z26Cmd_TokenizeStringInternalPKciPS0_P14CmdArgsPrivate_10
_Z26Cmd_TokenizeStringInternalPKciPS0_P14CmdArgsPrivate_40:
	movzx eax, byte [ebx+0x1]
	cmp al, 0x2f
	jz _Z26Cmd_TokenizeStringInternalPKciPS0_P14CmdArgsPrivate_10
	cmp al, 0x2a
	jnz _Z26Cmd_TokenizeStringInternalPKciPS0_P14CmdArgsPrivate_150
	lea edx, [ebx+0x2]
	movzx eax, byte [ebx+0x2]
	test al, al
	jz _Z26Cmd_TokenizeStringInternalPKciPS0_P14CmdArgsPrivate_10
	jmp _Z26Cmd_TokenizeStringInternalPKciPS0_P14CmdArgsPrivate_160
_Z26Cmd_TokenizeStringInternalPKciPS0_P14CmdArgsPrivate_170:
	add edx, 0x1
_Z26Cmd_TokenizeStringInternalPKciPS0_P14CmdArgsPrivate_190:
	movzx eax, byte [edx]
	test al, al
	jz _Z26Cmd_TokenizeStringInternalPKciPS0_P14CmdArgsPrivate_10
_Z26Cmd_TokenizeStringInternalPKciPS0_P14CmdArgsPrivate_160:
	cmp al, 0x2a
	jnz _Z26Cmd_TokenizeStringInternalPKciPS0_P14CmdArgsPrivate_170
	lea eax, [edx+0x1]
	cmp byte [edx+0x1], 0x2f
	jz _Z26Cmd_TokenizeStringInternalPKciPS0_P14CmdArgsPrivate_180
	mov edx, eax
	jmp _Z26Cmd_TokenizeStringInternalPKciPS0_P14CmdArgsPrivate_190
_Z26Cmd_TokenizeStringInternalPKciPS0_P14CmdArgsPrivate_60:
	lea ecx, [ebx+0x1]
	movzx eax, byte [ebx+0x1]
	test al, al
	jz _Z26Cmd_TokenizeStringInternalPKciPS0_P14CmdArgsPrivate_200
	jmp _Z26Cmd_TokenizeStringInternalPKciPS0_P14CmdArgsPrivate_210
_Z26Cmd_TokenizeStringInternalPKciPS0_P14CmdArgsPrivate_220:
	add ecx, 0x1
_Z26Cmd_TokenizeStringInternalPKciPS0_P14CmdArgsPrivate_240:
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x2824]
	movzx edx, byte [edx]
	mov [ebx+eax], dl
	add eax, 0x1
	cmp eax, 0x1ffe
	mov edx, 0x1ffe
	cmovge eax, edx
	mov [ebx+0x2824], eax
	movzx eax, byte [ecx]
	test al, al
	jz _Z26Cmd_TokenizeStringInternalPKciPS0_P14CmdArgsPrivate_200
_Z26Cmd_TokenizeStringInternalPKciPS0_P14CmdArgsPrivate_210:
	cmp al, 0x22
	jz _Z26Cmd_TokenizeStringInternalPKciPS0_P14CmdArgsPrivate_200
	mov edx, ecx
	cmp al, 0x5c
	jnz _Z26Cmd_TokenizeStringInternalPKciPS0_P14CmdArgsPrivate_220
	lea eax, [ecx+0x1]
	cmp byte [ecx+0x1], 0x22
	jz _Z26Cmd_TokenizeStringInternalPKciPS0_P14CmdArgsPrivate_230
	mov ecx, eax
	jmp _Z26Cmd_TokenizeStringInternalPKciPS0_P14CmdArgsPrivate_240
_Z26Cmd_TokenizeStringInternalPKciPS0_P14CmdArgsPrivate_200:
	mov edx, [ebp+0x8]
	mov eax, [edx+0x2824]
	mov byte [edx+eax], 0x0
	add eax, 0x1
	cmp eax, 0x1ffe
	mov edx, 0x1ffe
	cmovge eax, edx
	mov ebx, [ebp+0x8]
	mov [ebx+0x2824], eax
	cmp byte [ecx], 0x0
	jz _Z26Cmd_TokenizeStringInternalPKciPS0_P14CmdArgsPrivate_10
	lea esi, [ecx+0x1]
	cmp byte [ecx+0x1], 0x0
	jz _Z26Cmd_TokenizeStringInternalPKciPS0_P14CmdArgsPrivate_10
	mov ebx, esi
	jmp _Z26Cmd_TokenizeStringInternalPKciPS0_P14CmdArgsPrivate_130
_Z26Cmd_TokenizeStringInternalPKciPS0_P14CmdArgsPrivate_70:
	mov byte [eax+ecx], 0x0
	lea eax, [ecx+0x1]
	cmp eax, 0x1ffe
	cmovge eax, edi
	mov edx, [ebp+0x8]
	mov [edx+0x2824], eax
	mov eax, [ebp-0x10]
	add esp, 0xc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z26Cmd_TokenizeStringInternalPKciPS0_P14CmdArgsPrivate_230:
	add ecx, 0x2
	mov edx, eax
	jmp _Z26Cmd_TokenizeStringInternalPKciPS0_P14CmdArgsPrivate_240
_Z26Cmd_TokenizeStringInternalPKciPS0_P14CmdArgsPrivate_180:
	lea esi, [edx+0x2]
	mov ebx, esi
	jmp _Z26Cmd_TokenizeStringInternalPKciPS0_P14CmdArgsPrivate_130


;Cmd_Exec_f()
_Z10Cmd_Exec_fv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x107c
	mov eax, [cmd_args]
	cmp dword [eax*4+cmd_args+0x44], 0x2
	jz _Z10Cmd_Exec_fv_10
	mov dword [esp+0x4], _cstring_exec_filename__e
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
_Z10Cmd_Exec_fv_160:
	add esp, 0x107c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z10Cmd_Exec_fv_10:
	mov dword [esp+0x8], 0x40
	mov eax, [eax*4+cmd_args+0x64]
	mov eax, [eax+0x4]
	mov [esp+0x4], eax
	lea ebx, [ebp-0x5c]
	mov [esp], ebx
	call _Z10I_strncpyzPcPKci
	mov dword [esp+0x8], _cstring_cfg
	mov dword [esp+0x4], 0x40
	mov [esp], ebx
	call _Z20Com_DefaultExtensionPciPKc
	mov [esp], ebx
	call _Z24Com_GetFilenameSubStringPKc
	mov dword [esp+0x4], _cstring_config_mpcfg
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z10Cmd_Exec_fv_20
	mov eax, useFastFile
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z10Cmd_Exec_fv_30
_Z10Cmd_Exec_fv_140:
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov [esp], ebx
	call FS_ReadFile
	mov esi, [ebp-0x1c]
	test esi, esi
	jz _Z10Cmd_Exec_fv_40
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_execing_s_from_d
	mov dword [esp], 0x10
	call _Z10Com_PrintfiPKcz
	mov esi, [ebp-0x1c]
	mov edx, esi
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, esi
	repne scasb
	not ecx
	mov ebx, ecx
	sub ebx, 0x1
	jnz _Z10Cmd_Exec_fv_50
_Z10Cmd_Exec_fv_240:
	mov [esp], edx
	call FS_FreeFile
_Z10Cmd_Exec_fv_130:
	add esp, 0x107c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z10Cmd_Exec_fv_70:
	xor edi, edi
	xor eax, eax
_Z10Cmd_Exec_fv_120:
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	lea eax, [ebp-0x105c]
	mov [esp], eax
	call memcpy
	mov byte [ebp+edi-0x105c], 0x0
	lea eax, [edi+0x1]
	cmp ebx, edi
	cmovnz edi, eax
	add esi, edi
	sub ebx, edi
	lea eax, [ebp-0x105c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov dword [esp], 0x0
	call _Z24Cmd_ExecuteSingleCommandiiPKc
	test ebx, ebx
	jz _Z10Cmd_Exec_fv_60
_Z10Cmd_Exec_fv_50:
	test ebx, ebx
	jle _Z10Cmd_Exec_fv_70
	xor ecx, ecx
	xor edi, edi
_Z10Cmd_Exec_fv_100:
	movzx edx, byte [esi+edi]
	lea eax, [ecx+0x1]
	cmp dl, 0x22
	cmovz ecx, eax
	test cl, 0x1
	jnz _Z10Cmd_Exec_fv_80
	cmp dl, 0x3b
	jz _Z10Cmd_Exec_fv_90
_Z10Cmd_Exec_fv_80:
	cmp dl, 0xa
	jz _Z10Cmd_Exec_fv_90
	cmp dl, 0xd
	jz _Z10Cmd_Exec_fv_90
	add edi, 0x1
	cmp ebx, edi
	jnz _Z10Cmd_Exec_fv_100
_Z10Cmd_Exec_fv_90:
	cmp edi, 0xffe
	jle _Z10Cmd_Exec_fv_110
	mov edi, 0xfff
	mov eax, 0xfff
	jmp _Z10Cmd_Exec_fv_120
_Z10Cmd_Exec_fv_60:
	mov edx, [ebp-0x1c]
	mov [esp], edx
	call FS_FreeFile
	jmp _Z10Cmd_Exec_fv_130
_Z10Cmd_Exec_fv_30:
	call _Z26DB_IsMinimumFastFileLoadedv
	test al, al
	jz _Z10Cmd_Exec_fv_140
	mov [esp+0x4], ebx
	mov dword [esp], 0x1f
	call _Z19DB_FindXAssetHeader10XAssetTypePKc
	mov esi, eax
	test eax, eax
	jz _Z10Cmd_Exec_fv_140
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_execing_s_from_f
	mov dword [esp], 0x10
	call _Z10Com_PrintfiPKcz
	mov esi, [esi+0x8]
	mov [ebp-0x106c], esi
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, esi
	repne scasb
	not ecx
	mov esi, ecx
	sub esi, 0x1
	jnz _Z10Cmd_Exec_fv_150
	jmp _Z10Cmd_Exec_fv_160
_Z10Cmd_Exec_fv_170:
	xor ebx, ebx
	xor eax, eax
_Z10Cmd_Exec_fv_220:
	mov [esp+0x8], eax
	mov eax, [ebp-0x106c]
	mov [esp+0x4], eax
	lea eax, [ebp-0x105c]
	mov [esp], eax
	call memcpy
	mov byte [ebp+ebx-0x105c], 0x0
	lea eax, [ebx+0x1]
	cmp esi, ebx
	cmovnz ebx, eax
	add [ebp-0x106c], ebx
	sub esi, ebx
	lea eax, [ebp-0x105c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov dword [esp], 0x0
	call _Z24Cmd_ExecuteSingleCommandiiPKc
	test esi, esi
	jz _Z10Cmd_Exec_fv_160
_Z10Cmd_Exec_fv_150:
	test esi, esi
	jle _Z10Cmd_Exec_fv_170
	xor ecx, ecx
	xor ebx, ebx
_Z10Cmd_Exec_fv_200:
	mov eax, [ebp-0x106c]
	movzx edx, byte [eax+ebx]
	lea eax, [ecx+0x1]
	cmp dl, 0x22
	cmovz ecx, eax
	test cl, 0x1
	jnz _Z10Cmd_Exec_fv_180
	cmp dl, 0x3b
	jz _Z10Cmd_Exec_fv_190
_Z10Cmd_Exec_fv_180:
	cmp dl, 0xa
	jz _Z10Cmd_Exec_fv_190
	cmp dl, 0xd
	jz _Z10Cmd_Exec_fv_190
	add ebx, 0x1
	cmp esi, ebx
	jnz _Z10Cmd_Exec_fv_200
_Z10Cmd_Exec_fv_190:
	cmp ebx, 0xffe
	jle _Z10Cmd_Exec_fv_210
	mov ebx, 0xfff
	mov eax, 0xfff
	jmp _Z10Cmd_Exec_fv_220
_Z10Cmd_Exec_fv_20:
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov [esp], ebx
	call FS_ReadFile
	mov edi, [ebp-0x1c]
	test edi, edi
	jz _Z10Cmd_Exec_fv_160
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_execing_s_from_d
	mov dword [esp], 0x10
	call _Z10Com_PrintfiPKcz
	mov edx, [ebp-0x1c]
	mov esi, edx
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, edx
	repne scasb
	not ecx
	mov ebx, ecx
	sub ebx, 0x1
	jnz _Z10Cmd_Exec_fv_230
	jmp _Z10Cmd_Exec_fv_240
_Z10Cmd_Exec_fv_250:
	xor edi, edi
	xor eax, eax
_Z10Cmd_Exec_fv_300:
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	lea eax, [ebp-0x105c]
	mov [esp], eax
	call memcpy
	mov byte [ebp+edi-0x105c], 0x0
	lea eax, [edi+0x1]
	cmp ebx, edi
	cmovnz edi, eax
	add esi, edi
	sub ebx, edi
	lea eax, [ebp-0x105c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov dword [esp], 0x0
	call _Z24Cmd_ExecuteSingleCommandiiPKc
	test ebx, ebx
	jz _Z10Cmd_Exec_fv_60
_Z10Cmd_Exec_fv_230:
	test ebx, ebx
	jle _Z10Cmd_Exec_fv_250
	xor ecx, ecx
	xor edi, edi
_Z10Cmd_Exec_fv_280:
	movzx edx, byte [esi+edi]
	lea eax, [ecx+0x1]
	cmp dl, 0x22
	cmovz ecx, eax
	test cl, 0x1
	jnz _Z10Cmd_Exec_fv_260
	cmp dl, 0x3b
	jz _Z10Cmd_Exec_fv_270
_Z10Cmd_Exec_fv_260:
	cmp dl, 0xa
	jz _Z10Cmd_Exec_fv_270
	cmp dl, 0xd
	jz _Z10Cmd_Exec_fv_270
	add edi, 0x1
	cmp ebx, edi
	jnz _Z10Cmd_Exec_fv_280
_Z10Cmd_Exec_fv_270:
	cmp edi, 0xffe
	jle _Z10Cmd_Exec_fv_290
	mov edi, 0xfff
	mov eax, 0xfff
	jmp _Z10Cmd_Exec_fv_300
_Z10Cmd_Exec_fv_40:
	mov eax, [cmd_args]
	cmp dword [eax*4+cmd_args+0x44], 0x1
	jle _Z10Cmd_Exec_fv_310
	mov eax, [eax*4+cmd_args+0x64]
	mov eax, [eax+0x4]
_Z10Cmd_Exec_fv_320:
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_couldnt_exec_s
	mov dword [esp], 0x1
	call _Z14Com_PrintErroriPKcz
	jmp _Z10Cmd_Exec_fv_160
_Z10Cmd_Exec_fv_210:
	mov eax, ebx
	jmp _Z10Cmd_Exec_fv_220
_Z10Cmd_Exec_fv_310:
	mov eax, _cstring_null
	jmp _Z10Cmd_Exec_fv_320
_Z10Cmd_Exec_fv_110:
	mov eax, edi
	jmp _Z10Cmd_Exec_fv_120
_Z10Cmd_Exec_fv_290:
	mov eax, edi
	jmp _Z10Cmd_Exec_fv_300
	add [eax], al


;Cmd_List_f()
_Z10Cmd_List_fv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov eax, [cmd_args]
	cmp dword [eax*4+cmd_args+0x44], 0x1
	jle _Z10Cmd_List_fv_10
	mov eax, [eax*4+cmd_args+0x64]
	mov esi, [eax+0x4]
	mov ebx, [cmd_functions]
	test ebx, ebx
	jz _Z10Cmd_List_fv_20
_Z10Cmd_List_fv_60:
	test esi, esi
	jz _Z10Cmd_List_fv_30
	xor edi, edi
_Z10Cmd_List_fv_50:
	mov dword [esp+0x8], 0x0
	mov eax, [ebx+0x4]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z10Com_FilterPKcS0_i
	test al, al
	jz _Z10Cmd_List_fv_40
	mov eax, [ebx+0x4]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_s
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	add edi, 0x1
_Z10Cmd_List_fv_40:
	mov ebx, [ebx]
	test ebx, ebx
	jnz _Z10Cmd_List_fv_50
_Z10Cmd_List_fv_80:
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_i_commands
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z10Cmd_List_fv_10:
	xor esi, esi
	mov ebx, [cmd_functions]
	test ebx, ebx
	jnz _Z10Cmd_List_fv_60
_Z10Cmd_List_fv_20:
	xor edi, edi
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_i_commands
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z10Cmd_List_fv_30:
	xor edi, edi
_Z10Cmd_List_fv_70:
	mov eax, [ebx+0x4]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_s
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	add edi, 0x1
	mov ebx, [ebx]
	test ebx, ebx
	jnz _Z10Cmd_List_fv_70
	jmp _Z10Cmd_List_fv_80
	nop


;Cmd_Vstr_f()
_Z10Cmd_Vstr_fv:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [cmd_args]
	cmp dword [eax*4+cmd_args+0x44], 0x2
	jz _Z10Cmd_Vstr_fv_10
	mov dword [esp+0x4], _cstring_vstr_variablenam
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
_Z10Cmd_Vstr_fv_40:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z10Cmd_Vstr_fv_10:
	mov eax, [eax*4+cmd_args+0x64]
	mov ebx, [eax+0x4]
	mov [esp], ebx
	call _Z12Dvar_FindVarPKc
	mov edx, eax
	test eax, eax
	jz _Z10Cmd_Vstr_fv_20
	movzx eax, byte [eax+0xa]
	sub al, 0x6
	cmp al, 0x1
	jbe _Z10Cmd_Vstr_fv_30
	mov eax, [edx]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_s_is_not_a_strin
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z10Cmd_Vstr_fv_30:
	mov eax, [edx+0xc]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_s
	call _Z2vaPKcz
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call _Z15Cbuf_InsertTextiPKc
	jmp _Z10Cmd_Vstr_fv_40
_Z10Cmd_Vstr_fv_20:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_s_doesnt_exist
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	jmp _Z10Cmd_Vstr_fv_40


;Cmd_Wait_f()
_Z10Cmd_Wait_fv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [cmd_args]
	cmp dword [eax*4+cmd_args+0x44], 0x2
	jz _Z10Cmd_Wait_fv_10
	mov dword [cmd_wait], 0x1
	leave
	ret
_Z10Cmd_Wait_fv_10:
	mov eax, [eax*4+cmd_args+0x64]
	mov eax, [eax+0x4]
	mov [esp], eax
	call atoi
	mov [cmd_wait], eax
	leave
	ret


;Cmd_ForEach(void (*)(char const*))
_Z11Cmd_ForEachPFvPKcE:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov ebx, [cmd_functions]
	test ebx, ebx
	jz _Z11Cmd_ForEachPFvPKcE_10
_Z11Cmd_ForEachPFvPKcE_20:
	mov eax, [ebx+0x4]
	mov [esp], eax
	call esi
	mov ebx, [ebx]
	test ebx, ebx
	jnz _Z11Cmd_ForEachPFvPKcE_20
_Z11Cmd_ForEachPFvPKcE_10:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret


;Cbuf_AddText(int, char const*)
_Z12Cbuf_AddTextiPKc:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov dword [esp], 0x10
	call _Z24Sys_EnterCriticalSection15CriticalSection
	movzx eax, byte [esi]
	cmp al, 0x70
	jz _Z12Cbuf_AddTextiPKc_10
	cmp al, 0x50
	jz _Z12Cbuf_AddTextiPKc_10
_Z12Cbuf_AddTextiPKc_90:
	lea eax, [ebx+ebx*2]
	lea edi, [eax*4+cmd_textArray]
	cmp byte [esi], 0x0
	jz _Z12Cbuf_AddTextiPKc_20
	xor ebx, ebx
_Z12Cbuf_AddTextiPKc_30:
	add ebx, 0x1
	cmp byte [esi+ebx], 0x0
	jnz _Z12Cbuf_AddTextiPKc_30
	mov edx, [edi+0x8]
	lea eax, [edx+ebx]
	cmp eax, [edi+0x4]
	jge _Z12Cbuf_AddTextiPKc_40
_Z12Cbuf_AddTextiPKc_60:
	mov eax, [edi]
	add eax, edx
	mov [ebp-0x1c], eax
	mov ecx, esi
	mov eax, ebx
	add eax, 0x1
	jnz _Z12Cbuf_AddTextiPKc_50
_Z12Cbuf_AddTextiPKc_80:
	lea eax, [ebx+edx]
	mov [edi+0x8], eax
	mov dword [ebp+0x8], 0x10
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z24Sys_LeaveCriticalSection15CriticalSection
_Z12Cbuf_AddTextiPKc_20:
	xor ebx, ebx
	mov edx, [edi+0x8]
	lea eax, [edx+ebx]
	cmp eax, [edi+0x4]
	jl _Z12Cbuf_AddTextiPKc_60
_Z12Cbuf_AddTextiPKc_40:
	mov dword [esp+0x4], _cstring_cbuf_addtext_ove
	mov dword [esp], 0x10
	call _Z10Com_PrintfiPKcz
	mov dword [ebp+0x8], 0x10
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z24Sys_LeaveCriticalSection15CriticalSection
_Z12Cbuf_AddTextiPKc_50:
	mov edx, [ebp-0x1c]
	lea esi, [edx+eax]
_Z12Cbuf_AddTextiPKc_70:
	movzx eax, byte [ecx]
	mov [edx], al
	add edx, 0x1
	add ecx, 0x1
	cmp edx, esi
	jnz _Z12Cbuf_AddTextiPKc_70
	mov edx, [edi+0x8]
	jmp _Z12Cbuf_AddTextiPKc_80
_Z12Cbuf_AddTextiPKc_10:
	cmp byte [esi+0x1], 0x30
	jnz _Z12Cbuf_AddTextiPKc_90
	add esi, 0x2
	cmp byte [esi], 0x20
	jz _Z12Cbuf_AddTextiPKc_100
_Z12Cbuf_AddTextiPKc_110:
	xor ebx, ebx
	jmp _Z12Cbuf_AddTextiPKc_90
_Z12Cbuf_AddTextiPKc_100:
	add esi, 0x1
	cmp byte [esi], 0x20
	jnz _Z12Cbuf_AddTextiPKc_110
	add esi, 0x1
	cmp byte [esi], 0x20
	jz _Z12Cbuf_AddTextiPKc_100
	jmp _Z12Cbuf_AddTextiPKc_110
	nop


;Cbuf_Execute(int, int)
_Z12Cbuf_Executeii:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x102c
	mov eax, [ebp+0x8]
	mov byte [eax+cmd_insideCBufExecute], 0x1
	mov dword [esp], 0x10
	call _Z24Sys_EnterCriticalSection15CriticalSection
	mov edx, [ebp+0x8]
	lea eax, [edx+edx*2]
	lea eax, [eax*4+cmd_textArray]
	mov [ebp-0x101c], eax
	mov ebx, [eax+0x8]
	test ebx, ebx
	jz _Z12Cbuf_Executeii_10
_Z12Cbuf_Executeii_50:
	mov eax, [cmd_wait]
	test eax, eax
	jnz _Z12Cbuf_Executeii_20
	mov ecx, [ebp-0x101c]
	mov edi, [ecx]
	test ebx, ebx
	jg _Z12Cbuf_Executeii_30
	xor esi, esi
	xor eax, eax
_Z12Cbuf_Executeii_110:
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	lea eax, [ebp-0x1018]
	mov [esp], eax
	call memcpy
	mov byte [ebp+esi-0x1018], 0x0
	mov ecx, [ebp-0x101c]
	mov edx, [ecx+0x8]
	cmp esi, edx
	jnz _Z12Cbuf_Executeii_40
	mov dword [ecx+0x8], 0x0
_Z12Cbuf_Executeii_60:
	mov dword [esp], 0x10
	call _Z24Sys_LeaveCriticalSection15CriticalSection
	lea eax, [ebp-0x1018]
	mov [esp+0x8], eax
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z24Cmd_ExecuteSingleCommandiiPKc
	mov dword [esp], 0x10
	call _Z24Sys_EnterCriticalSection15CriticalSection
	mov eax, [ebp-0x101c]
	mov ebx, [eax+0x8]
	test ebx, ebx
	jnz _Z12Cbuf_Executeii_50
_Z12Cbuf_Executeii_10:
	mov dword [esp], 0x10
	call _Z24Sys_LeaveCriticalSection15CriticalSection
	mov edx, [ebp+0x8]
	mov byte [edx+cmd_insideCBufExecute], 0x0
	call _Z15Cbuf_SV_Executev
	add esp, 0x102c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z12Cbuf_Executeii_40:
	lea eax, [esi+0x1]
	sub edx, eax
	mov [ecx+0x8], edx
	mov [esp+0x8], edx
	lea eax, [edi+eax]
	mov [esp+0x4], eax
	mov [esp], edi
	call memmove
	jmp _Z12Cbuf_Executeii_60
_Z12Cbuf_Executeii_30:
	xor ecx, ecx
	xor esi, esi
_Z12Cbuf_Executeii_90:
	movzx edx, byte [edi+esi]
	lea eax, [ecx+0x1]
	cmp dl, 0x22
	cmovz ecx, eax
	test cl, 0x1
	jnz _Z12Cbuf_Executeii_70
	cmp dl, 0x3b
	jz _Z12Cbuf_Executeii_80
_Z12Cbuf_Executeii_70:
	cmp dl, 0xa
	jz _Z12Cbuf_Executeii_80
	cmp dl, 0xd
	jz _Z12Cbuf_Executeii_80
	add esi, 0x1
	cmp ebx, esi
	jnz _Z12Cbuf_Executeii_90
	mov esi, ebx
_Z12Cbuf_Executeii_80:
	cmp esi, 0xffe
	jle _Z12Cbuf_Executeii_100
	mov esi, 0xfff
	mov eax, 0xfff
	jmp _Z12Cbuf_Executeii_110
_Z12Cbuf_Executeii_20:
	sub eax, 0x1
	mov [cmd_wait], eax
	mov dword [esp], 0x10
	call _Z24Sys_LeaveCriticalSection15CriticalSection
	mov edx, [ebp+0x8]
	mov byte [edx+cmd_insideCBufExecute], 0x0
	call _Z15Cbuf_SV_Executev
	add esp, 0x102c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z12Cbuf_Executeii_100:
	mov eax, esi
	jmp _Z12Cbuf_Executeii_110


;Cmd_Shutdown()
_Z12Cmd_Shutdownv:
	push ebp
	mov ebp, esp
	mov dword [cmd_functions], 0x0
	mov dword [sv_cmd_functions], 0x0
	pop ebp
	ret
	nop


;Cmd_ArgsBuffer(int, char*, int)
_Z14Cmd_ArgsBufferiPci:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x10
	mov ecx, [ebp+0x8]
	mov edi, [ebp+0x10]
	sub edi, 0x1
	mov eax, [cmd_args]
	mov edx, [eax*4+cmd_args+0x44]
	mov eax, [eax*4+cmd_args+0x64]
	cmp edx, ecx
	jg _Z14Cmd_ArgsBufferiPci_10
	mov ebx, [ebp+0xc]
_Z14Cmd_ArgsBufferiPci_30:
	mov byte [ebx], 0x0
	add esp, 0x10
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z14Cmd_ArgsBufferiPci_10:
	lea eax, [eax+ecx*4]
	mov [ebp-0x10], eax
	mov [ebp-0x14], ecx
	mov ebx, [ebp+0xc]
	lea eax, [edx-0x1]
	mov [ebp-0x18], eax
	mov [ebp-0x1c], edx
_Z14Cmd_ArgsBufferiPci_60:
	mov eax, [ebp-0x10]
	mov edx, [eax]
	xor ecx, ecx
	jmp _Z14Cmd_ArgsBufferiPci_20
_Z14Cmd_ArgsBufferiPci_40:
	mov [ebx], al
	add ebx, 0x1
	add edx, 0x1
	add ecx, 0x1
	cmp edi, ecx
	jz _Z14Cmd_ArgsBufferiPci_30
_Z14Cmd_ArgsBufferiPci_20:
	mov esi, edi
	sub esi, ecx
	movzx eax, byte [edx]
	test al, al
	jnz _Z14Cmd_ArgsBufferiPci_40
	cmp esi, 0x1
	jz _Z14Cmd_ArgsBufferiPci_30
	mov eax, [ebp-0x18]
	cmp [ebp-0x14], eax
	jz _Z14Cmd_ArgsBufferiPci_50
	mov byte [ebx], 0x20
	add ebx, 0x1
	lea edi, [esi-0x1]
_Z14Cmd_ArgsBufferiPci_70:
	add dword [ebp-0x14], 0x1
	add dword [ebp-0x10], 0x4
	mov eax, [ebp-0x1c]
	cmp [ebp-0x14], eax
	jnz _Z14Cmd_ArgsBufferiPci_60
	jmp _Z14Cmd_ArgsBufferiPci_30
_Z14Cmd_ArgsBufferiPci_50:
	mov edi, esi
	jmp _Z14Cmd_ArgsBufferiPci_70
	nop


;Cbuf_InsertText(int, char const*)
_Z15Cbuf_InsertTextiPKc:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov ebx, [ebp+0x8]
	mov eax, [ebp+0xc]
	mov [ebp-0x1c], eax
	mov dword [esp], 0x10
	call _Z24Sys_EnterCriticalSection15CriticalSection
	lea ebx, [ebx+ebx*2]
	lea esi, [ebx*4+cmd_textArray]
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, [ebp-0x1c]
	repne scasb
	mov [ebp-0x20], ecx
	not dword [ebp-0x20]
	mov edx, [esi+0x8]
	mov eax, [ebp-0x20]
	add eax, edx
	cmp eax, [esi+0x4]
	jg _Z15Cbuf_InsertTextiPKc_10
	mov eax, edx
	sub eax, 0x1
	js _Z15Cbuf_InsertTextiPKc_20
	mov ebx, [ebp-0x20]
	add ebx, eax
	mov ecx, eax
	mov edi, 0xffffffff
_Z15Cbuf_InsertTextiPKc_30:
	mov edx, [esi]
	movzx eax, byte [edx+ecx]
	mov [edx+ebx], al
	sub ecx, 0x1
	sub ebx, 0x1
	cmp ecx, edi
	jnz _Z15Cbuf_InsertTextiPKc_30
_Z15Cbuf_InsertTextiPKc_20:
	mov eax, [esi]
	mov edx, [ebp-0x20]
	sub edx, 0x1
	mov [esp+0x8], edx
	mov edx, [ebp-0x1c]
	mov [esp+0x4], edx
	mov [esp], eax
	call memcpy
	mov eax, [esi]
	mov edx, [ebp-0x20]
	mov byte [eax+edx-0x1], 0xa
	add [esi+0x8], edx
	mov dword [ebp+0x8], 0x10
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z24Sys_LeaveCriticalSection15CriticalSection
_Z15Cbuf_InsertTextiPKc_10:
	mov dword [esp+0x4], _cstring_cbuf_inserttext_
	mov dword [esp], 0x1
	call _Z14Com_PrintErroriPKcz
	mov dword [ebp+0x8], 0x10
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z24Sys_LeaveCriticalSection15CriticalSection


;Cbuf_SV_Execute()
_Z15Cbuf_SV_Executev:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x101c
	mov ebx, [sv_cmd_text+0x8]
	test ebx, ebx
	jnz _Z15Cbuf_SV_Executev_10
	jmp _Z15Cbuf_SV_Executev_20
_Z15Cbuf_SV_Executev_40:
	mov dword [sv_cmd_text+0x8], 0x0
	call _Z13SV_WaitServerv
	lea eax, [ebp-0x1018]
	mov [esp], eax
	call _Z23Cmd_ExecuteServerStringPKc
	mov ebx, [sv_cmd_text+0x8]
	test ebx, ebx
	jz _Z15Cbuf_SV_Executev_20
_Z15Cbuf_SV_Executev_10:
	mov edi, [sv_cmd_text]
	test ebx, ebx
	jg _Z15Cbuf_SV_Executev_30
	xor esi, esi
	xor eax, eax
_Z15Cbuf_SV_Executev_90:
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	lea eax, [ebp-0x1018]
	mov [esp], eax
	call memcpy
	mov byte [ebp+esi-0x1018], 0x0
	mov edx, [sv_cmd_text+0x8]
	cmp esi, edx
	jz _Z15Cbuf_SV_Executev_40
	lea eax, [esi+0x1]
	sub edx, eax
	mov [sv_cmd_text+0x8], edx
	mov [esp+0x8], edx
	lea eax, [edi+eax]
	mov [esp+0x4], eax
	mov [esp], edi
	call memmove
	call _Z13SV_WaitServerv
	lea eax, [ebp-0x1018]
	mov [esp], eax
	call _Z23Cmd_ExecuteServerStringPKc
	mov ebx, [sv_cmd_text+0x8]
	test ebx, ebx
	jnz _Z15Cbuf_SV_Executev_10
_Z15Cbuf_SV_Executev_20:
	add esp, 0x101c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z15Cbuf_SV_Executev_30:
	xor ecx, ecx
	xor esi, esi
_Z15Cbuf_SV_Executev_70:
	movzx edx, byte [edi+esi]
	lea eax, [ecx+0x1]
	cmp dl, 0x22
	cmovz ecx, eax
	test cl, 0x1
	jnz _Z15Cbuf_SV_Executev_50
	cmp dl, 0x3b
	jz _Z15Cbuf_SV_Executev_60
_Z15Cbuf_SV_Executev_50:
	cmp dl, 0xa
	jz _Z15Cbuf_SV_Executev_60
	cmp dl, 0xd
	jz _Z15Cbuf_SV_Executev_60
	add esi, 0x1
	cmp ebx, esi
	jnz _Z15Cbuf_SV_Executev_70
	mov esi, ebx
_Z15Cbuf_SV_Executev_60:
	cmp esi, 0xffe
	jle _Z15Cbuf_SV_Executev_80
	mov esi, 0xfff
	mov eax, 0xfff
	jmp _Z15Cbuf_SV_Executev_90
_Z15Cbuf_SV_Executev_80:
	mov eax, esi
	jmp _Z15Cbuf_SV_Executev_90


;Cmd_RemoveCommand(char const*)
_Z17Cmd_RemoveCommandPKc:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0x8]
	mov ebx, [cmd_functions]
	test ebx, ebx
	jz _Z17Cmd_RemoveCommandPKc_10
	mov esi, cmd_functions
_Z17Cmd_RemoveCommandPKc_30:
	mov eax, [ebx+0x4]
	mov [esp+0x4], eax
	mov [esp], edi
	call strcmp
	test eax, eax
	jz _Z17Cmd_RemoveCommandPKc_20
	mov esi, ebx
	mov ebx, [ebx]
	test ebx, ebx
	jnz _Z17Cmd_RemoveCommandPKc_30
_Z17Cmd_RemoveCommandPKc_10:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z17Cmd_RemoveCommandPKc_20:
	mov eax, [ebx]
	mov [esi], eax
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;SV_Cmd_ArgvBuffer(int, char*, int)
_Z17SV_Cmd_ArgvBufferiPci:
	push ebp
	mov ebp, esp
	push ebx
	mov edx, [ebp+0x8]
	mov ebx, [ebp+0xc]
	mov ecx, [ebp+0x10]
	mov eax, [sv_cmd_args]
	cmp edx, [eax*4+sv_cmd_args+0x44]
	jge _Z17SV_Cmd_ArgvBufferiPci_10
	mov eax, [eax*4+sv_cmd_args+0x64]
	mov eax, [eax+edx*4]
	mov [ebp+0x10], ecx
	mov [ebp+0xc], eax
	mov [ebp+0x8], ebx
	pop ebx
	pop ebp
	jmp _Z10I_strncpyzPcPKci
_Z17SV_Cmd_ArgvBufferiPci_10:
	mov eax, _cstring_null
	mov [ebp+0x10], ecx
	mov [ebp+0xc], eax
	mov [ebp+0x8], ebx
	pop ebx
	pop ebp
	jmp _Z10I_strncpyzPcPKci


;Cbuf_ExecuteBuffer(int, int, char const*)
_Z18Cbuf_ExecuteBufferiiPKc:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x101c
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, [ebp+0x10]
	repne scasb
	not ecx
	mov ebx, ecx
	sub ebx, 0x1
	jz _Z18Cbuf_ExecuteBufferiiPKc_10
	mov esi, [ebp+0x10]
	jmp _Z18Cbuf_ExecuteBufferiiPKc_20
_Z18Cbuf_ExecuteBufferiiPKc_30:
	xor edi, edi
	xor eax, eax
_Z18Cbuf_ExecuteBufferiiPKc_80:
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	lea eax, [ebp-0x1018]
	mov [esp], eax
	call memcpy
	mov byte [ebp+edi-0x1018], 0x0
	lea eax, [edi+0x1]
	cmp ebx, edi
	cmovnz edi, eax
	add esi, edi
	sub ebx, edi
	lea eax, [ebp-0x1018]
	mov [esp+0x8], eax
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z24Cmd_ExecuteSingleCommandiiPKc
	test ebx, ebx
	jz _Z18Cbuf_ExecuteBufferiiPKc_10
_Z18Cbuf_ExecuteBufferiiPKc_20:
	test ebx, ebx
	jle _Z18Cbuf_ExecuteBufferiiPKc_30
	xor ecx, ecx
	xor edi, edi
_Z18Cbuf_ExecuteBufferiiPKc_60:
	movzx edx, byte [esi+edi]
	lea eax, [ecx+0x1]
	cmp dl, 0x22
	cmovz ecx, eax
	test cl, 0x1
	jnz _Z18Cbuf_ExecuteBufferiiPKc_40
	cmp dl, 0x3b
	jz _Z18Cbuf_ExecuteBufferiiPKc_50
_Z18Cbuf_ExecuteBufferiiPKc_40:
	cmp dl, 0xa
	jz _Z18Cbuf_ExecuteBufferiiPKc_50
	cmp dl, 0xd
	jz _Z18Cbuf_ExecuteBufferiiPKc_50
	add edi, 0x1
	cmp ebx, edi
	jnz _Z18Cbuf_ExecuteBufferiiPKc_60
_Z18Cbuf_ExecuteBufferiiPKc_50:
	cmp edi, 0xffe
	jle _Z18Cbuf_ExecuteBufferiiPKc_70
	mov edi, 0xfff
	mov eax, 0xfff
	jmp _Z18Cbuf_ExecuteBufferiiPKc_80
_Z18Cbuf_ExecuteBufferiiPKc_10:
	add esp, 0x101c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z18Cbuf_ExecuteBufferiiPKc_70:
	mov eax, edi
	jmp _Z18Cbuf_ExecuteBufferiiPKc_80


;Cmd_TokenizeString(char const*)
_Z18Cmd_TokenizeStringPKc:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov eax, [ebp+0x8]
	mov edx, 0x200
	mov ecx, [cmd_argsPrivate+0x2820]
	sub edx, ecx
	mov esi, [cmd_args]
	add esi, 0x1
	mov [cmd_args], esi
	mov edi, cmd_argsPrivate+0x2800
	mov ebx, [cmd_argsPrivate+0x2824]
	neg ebx
	mov [edi+esi*4], ebx
	mov dword [esi*4+cmd_args+0x4], 0xffffffff
	mov dword [esi*4+cmd_args+0x24], 0x0
	lea ecx, [ecx*4+cmd_argsPrivate+0x2000]
	mov [esi*4+cmd_args+0x64], ecx
	mov dword [esp], cmd_argsPrivate
	call _Z26Cmd_TokenizeStringInternalPKciPS0_P14CmdArgsPrivate
	mov ecx, cmd_args+0x40
	mov [ecx+esi*4+0x4], eax
	mov edx, [cmd_args]
	mov eax, [cmd_argsPrivate+0x2820]
	add eax, [ecx+edx*4+0x4]
	mov [cmd_argsPrivate+0x2820], eax
	mov eax, [edi+edx*4]
	add eax, [cmd_argsPrivate+0x2824]
	mov [edi+edx*4], eax
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Cmd_ComErrorCleanup()
_Z19Cmd_ComErrorCleanupv:
	push ebp
	mov ebp, esp
	mov dword [cmd_args], 0xffffffff
	mov dword [cmd_argsPrivate+0x2820], 0x0
	mov dword [cmd_argsPrivate+0x2824], 0x0
	mov dword [sv_cmd_args], 0xffffffff
	mov dword [sv_cmd_argsPrivate+0x2820], 0x0
	mov dword [sv_cmd_argsPrivate+0x2824], 0x0
	mov byte [cmd_insideCBufExecute], 0x0
	pop ebp
	ret
	add [eax], al


;Cmd_SetAutoComplete(char const*, char const*, char const*)
_Z19Cmd_SetAutoCompletePKcS0_S0_:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov ebx, [cmd_functions]
	test ebx, ebx
	jz _Z19Cmd_SetAutoCompletePKcS0_S0__10
_Z19Cmd_SetAutoCompletePKcS0_S0__30:
	mov eax, [ebx+0x4]
	mov [esp+0x4], eax
	mov [esp], esi
	call strcmp
	test eax, eax
	jz _Z19Cmd_SetAutoCompletePKcS0_S0__20
	mov ebx, [ebx]
	test ebx, ebx
	jnz _Z19Cmd_SetAutoCompletePKcS0_S0__30
_Z19Cmd_SetAutoCompletePKcS0_S0__10:
	xor ebx, ebx
_Z19Cmd_SetAutoCompletePKcS0_S0__20:
	mov eax, [ebp+0xc]
	mov [ebx+0x8], eax
	mov eax, [ebp+0x10]
	mov [ebx+0xc], eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;Cbuf_AddServerText_f()
_Z20Cbuf_AddServerText_fv:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop


;SV_Cmd_ExecuteString(int, int, char const*)
_Z20SV_Cmd_ExecuteStringiiPKc:
	push ebp
	mov ebp, esp
	pop ebp
	jmp _Z24Cmd_ExecuteSingleCommandiiPKc
	nop


;SV_Cmd_TokenizeString(char const*)
_Z21SV_Cmd_TokenizeStringPKc:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov eax, [ebp+0x8]
	mov edx, 0x200
	mov ecx, [sv_cmd_argsPrivate+0x2820]
	sub edx, ecx
	mov esi, [sv_cmd_args]
	add esi, 0x1
	mov [sv_cmd_args], esi
	mov edi, sv_cmd_argsPrivate+0x2800
	mov ebx, [sv_cmd_argsPrivate+0x2824]
	neg ebx
	mov [edi+esi*4], ebx
	mov dword [esi*4+sv_cmd_args+0x4], 0xffffffff
	mov dword [esi*4+sv_cmd_args+0x24], 0x0
	lea ecx, [ecx*4+sv_cmd_argsPrivate+0x2000]
	mov [esi*4+sv_cmd_args+0x64], ecx
	mov dword [esp], sv_cmd_argsPrivate
	call _Z26Cmd_TokenizeStringInternalPKciPS0_P14CmdArgsPrivate
	mov ecx, sv_cmd_args+0x40
	mov [ecx+esi*4+0x4], eax
	mov edx, [sv_cmd_args]
	mov eax, [sv_cmd_argsPrivate+0x2820]
	add eax, [ecx+edx*4+0x4]
	mov [sv_cmd_argsPrivate+0x2820], eax
	mov eax, [edi+edx*4]
	add eax, [sv_cmd_argsPrivate+0x2824]
	mov [edi+edx*4], eax
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Cmd_AddCommandInternal(char const*, void (*)(), cmd_function_s*)
_Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov esi, [ebp+0x8]
	mov eax, [ebp+0xc]
	mov [ebp-0x1c], eax
	mov edi, [ebp+0x10]
	mov ebx, [cmd_functions]
	test ebx, ebx
	jz _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s_10
_Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s_30:
	mov eax, [ebx+0x4]
	mov [esp+0x4], eax
	mov [esp], esi
	call strcmp
	test eax, eax
	jz _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s_20
	mov ebx, [ebx]
	test ebx, ebx
	jnz _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s_30
_Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s_10:
	mov [edi+0x4], esi
	mov eax, [ebp-0x1c]
	mov [edi+0x10], eax
	mov eax, [cmd_functions]
	mov [edi], eax
	mov [cmd_functions], edi
_Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s_40:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s_20:
	mov ebx, [ebp-0x1c]
	test ebx, ebx
	jz _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s_40
	mov [ebp+0x10], esi
	mov dword [ebp+0xc], _cstring_cmd_addcommand_s
	mov dword [ebp+0x8], 0x10
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z10Com_PrintfiPKcz


;Cmd_EndTokenizedString()
_Z22Cmd_EndTokenizedStringv:
	push ebp
	mov ebp, esp
	mov eax, [cmd_args]
	mov edx, [cmd_argsPrivate+0x2820]
	sub edx, [eax*4+cmd_args+0x44]
	mov [cmd_argsPrivate+0x2820], edx
	mov edx, [cmd_argsPrivate+0x2824]
	sub edx, [eax*4+cmd_argsPrivate+0x2800]
	mov [cmd_argsPrivate+0x2824], edx
	sub eax, 0x1
	mov [cmd_args], eax
	pop ebp
	ret


;Cmd_ExecuteServerString(char const*)
_Z23Cmd_ExecuteServerStringPKc:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov ebx, [ebp+0x8]
	mov [esp], ebx
	call _Z16PbTrapPreExecCmdPc
	test eax, eax
	jz _Z23Cmd_ExecuteServerStringPKc_10
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z23Cmd_ExecuteServerStringPKc_10:
	mov edx, 0x200
	mov ecx, [sv_cmd_argsPrivate+0x2820]
	sub edx, ecx
	mov esi, [sv_cmd_args]
	add esi, 0x1
	mov [sv_cmd_args], esi
	mov eax, [sv_cmd_argsPrivate+0x2824]
	neg eax
	mov [esi*4+sv_cmd_argsPrivate+0x2800], eax
	mov dword [esi*4+sv_cmd_args+0x4], 0xffffffff
	mov dword [esi*4+sv_cmd_args+0x24], 0x0
	lea ecx, [ecx*4+sv_cmd_argsPrivate+0x2000]
	mov [esi*4+sv_cmd_args+0x64], ecx
	mov dword [esp], sv_cmd_argsPrivate
	mov eax, ebx
	call _Z26Cmd_TokenizeStringInternalPKciPS0_P14CmdArgsPrivate
	mov [esi*4+sv_cmd_args+0x44], eax
	mov esi, [sv_cmd_args]
	mov eax, [esi*4+sv_cmd_args+0x44]
	mov ecx, eax
	add ecx, [sv_cmd_argsPrivate+0x2820]
	mov [sv_cmd_argsPrivate+0x2820], ecx
	mov edx, [sv_cmd_argsPrivate+0x2824]
	add [esi*4+sv_cmd_argsPrivate+0x2800], edx
	cmp eax, 0x0
	jz _Z23Cmd_ExecuteServerStringPKc_20
	jle _Z23Cmd_ExecuteServerStringPKc_30
	mov eax, [esi*4+sv_cmd_args+0x64]
	mov edi, [eax]
_Z23Cmd_ExecuteServerStringPKc_60:
	mov ebx, [sv_cmd_functions]
	test ebx, ebx
	jz _Z23Cmd_ExecuteServerStringPKc_20
	mov esi, sv_cmd_functions
_Z23Cmd_ExecuteServerStringPKc_50:
	mov eax, [ebx+0x4]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z23Cmd_ExecuteServerStringPKc_40
	mov esi, ebx
	mov ebx, [ebx]
	test ebx, ebx
	jnz _Z23Cmd_ExecuteServerStringPKc_50
_Z23Cmd_ExecuteServerStringPKc_70:
	mov ecx, [sv_cmd_argsPrivate+0x2820]
	mov esi, [sv_cmd_args]
	mov edx, [sv_cmd_argsPrivate+0x2824]
_Z23Cmd_ExecuteServerStringPKc_20:
	sub ecx, [esi*4+sv_cmd_args+0x44]
	mov [sv_cmd_argsPrivate+0x2820], ecx
	sub edx, [esi*4+sv_cmd_argsPrivate+0x2800]
	mov [sv_cmd_argsPrivate+0x2824], edx
	lea eax, [esi-0x1]
	mov [sv_cmd_args], eax
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z23Cmd_ExecuteServerStringPKc_30:
	mov edi, _cstring_null
	jmp _Z23Cmd_ExecuteServerStringPKc_60
_Z23Cmd_ExecuteServerStringPKc_40:
	mov eax, [ebx]
	mov [esi], eax
	mov eax, [sv_cmd_functions]
	mov [ebx], eax
	mov [sv_cmd_functions], ebx
	mov eax, [ebx+0x10]
	test eax, eax
	jz _Z23Cmd_ExecuteServerStringPKc_70
	call eax
	mov ecx, [sv_cmd_argsPrivate+0x2820]
	mov esi, [sv_cmd_args]
	mov edx, [sv_cmd_argsPrivate+0x2824]
	jmp _Z23Cmd_ExecuteServerStringPKc_20


;Cmd_ExecuteSingleCommand(int, int, char const*)
_Z24Cmd_ExecuteSingleCommandiiPKc:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov esi, [ebp+0x10]
	mov [esp], esi
	call _Z16PbTrapPreExecCmdPc
	test eax, eax
	jz _Z24Cmd_ExecuteSingleCommandiiPKc_10
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z24Cmd_ExecuteSingleCommandiiPKc_10:
	mov edx, 0x200
	mov ecx, [cmd_argsPrivate+0x2820]
	sub edx, ecx
	mov ebx, [cmd_args]
	add ebx, 0x1
	mov [cmd_args], ebx
	mov eax, [cmd_argsPrivate+0x2824]
	neg eax
	mov [ebx*4+cmd_argsPrivate+0x2800], eax
	mov dword [ebx*4+cmd_args+0x4], 0xffffffff
	mov dword [ebx*4+cmd_args+0x24], 0x0
	lea ecx, [ecx*4+cmd_argsPrivate+0x2000]
	mov [ebx*4+cmd_args+0x64], ecx
	mov dword [esp], cmd_argsPrivate
	mov eax, esi
	call _Z26Cmd_TokenizeStringInternalPKciPS0_P14CmdArgsPrivate
	mov [ebx*4+cmd_args+0x44], eax
	mov edx, [cmd_args]
	mov eax, [edx*4+cmd_args+0x44]
	mov edi, eax
	add edi, [cmd_argsPrivate+0x2820]
	mov [cmd_argsPrivate+0x2820], edi
	mov ecx, [cmd_argsPrivate+0x2824]
	mov ebx, [edx*4+cmd_argsPrivate+0x2800]
	add ebx, ecx
	mov [edx*4+cmd_argsPrivate+0x2800], ebx
	test eax, eax
	jnz _Z24Cmd_ExecuteSingleCommandiiPKc_20
	sub ecx, ebx
	mov [cmd_argsPrivate+0x2824], ecx
	lea eax, [edx-0x1]
	mov [cmd_args], eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z24Cmd_ExecuteSingleCommandiiPKc_20:
	mov eax, [ebp+0x8]
	mov [edx*4+cmd_args+0x4], eax
	mov eax, [ebp+0xc]
	mov [edx*4+cmd_args+0x24], eax
	mov ecx, [edx*4+cmd_args+0x44]
	test ecx, ecx
	jle _Z24Cmd_ExecuteSingleCommandiiPKc_30
	mov eax, [edx*4+cmd_args+0x64]
	mov eax, [eax]
	mov [ebp-0x1c], eax
_Z24Cmd_ExecuteSingleCommandiiPKc_130:
	mov ebx, [cmd_functions]
	test ebx, ebx
	jz _Z24Cmd_ExecuteSingleCommandiiPKc_40
	mov edi, cmd_functions
_Z24Cmd_ExecuteSingleCommandiiPKc_60:
	mov eax, [ebx+0x4]
	mov [esp+0x4], eax
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z24Cmd_ExecuteSingleCommandiiPKc_50
	mov edi, ebx
	mov ebx, [ebx]
	test ebx, ebx
	jnz _Z24Cmd_ExecuteSingleCommandiiPKc_60
_Z24Cmd_ExecuteSingleCommandiiPKc_40:
	mov dword [esp+0x8], 0x3
	mov dword [esp+0x4], _cstring_pb_
	mov [esp], esi
	call _Z10I_strnicmpPKcS0_i
	test eax, eax
	jnz _Z24Cmd_ExecuteSingleCommandiiPKc_70
	mov dword [esp+0x8], 0x3
	mov dword [esp+0x4], _cstring_sv_
	lea eax, [esi+0x3]
	mov [esp], eax
	call _Z10I_strnicmpPKcS0_i
	test eax, eax
	jz _Z24Cmd_ExecuteSingleCommandiiPKc_80
	mov [esp+0x8], esi
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, esi
	repne scasb
	not ecx
	mov [esp+0x4], ecx
	mov dword [esp], 0xe
	call _Z12PbClAddEventiiPc
_Z24Cmd_ExecuteSingleCommandiiPKc_90:
	mov eax, [cmd_args]
	mov edx, [cmd_argsPrivate+0x2820]
	sub edx, [eax*4+cmd_args+0x44]
	mov [cmd_argsPrivate+0x2820], edx
	mov edx, [cmd_argsPrivate+0x2824]
	sub edx, [eax*4+cmd_argsPrivate+0x2800]
	mov [cmd_argsPrivate+0x2824], edx
	sub eax, 0x1
	mov [cmd_args], eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z24Cmd_ExecuteSingleCommandiiPKc_70:
	call _Z12Dvar_Commandv
	test eax, eax
	jnz _Z24Cmd_ExecuteSingleCommandiiPKc_90
	mov eax, com_sv_running
	mov eax, [eax]
	test eax, eax
	jz _Z24Cmd_ExecuteSingleCommandiiPKc_100
	cmp byte [eax+0xc], 0x0
	jnz _Z24Cmd_ExecuteSingleCommandiiPKc_110
_Z24Cmd_ExecuteSingleCommandiiPKc_100:
	mov [esp+0x4], esi
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z25CL_ForwardCommandToServeriPKc
	jmp _Z24Cmd_ExecuteSingleCommandiiPKc_90
_Z24Cmd_ExecuteSingleCommandiiPKc_50:
	mov eax, [ebx]
	mov [edi], eax
	mov eax, [cmd_functions]
	mov [ebx], eax
	mov [cmd_functions], ebx
	mov eax, [ebx+0x10]
	test eax, eax
	jz _Z24Cmd_ExecuteSingleCommandiiPKc_40
	cmp eax, _Z20Cbuf_AddServerText_fv
	jz _Z24Cmd_ExecuteSingleCommandiiPKc_120
	call eax
	jmp _Z24Cmd_ExecuteSingleCommandiiPKc_90
_Z24Cmd_ExecuteSingleCommandiiPKc_30:
	mov dword [ebp-0x1c], _cstring_null
	jmp _Z24Cmd_ExecuteSingleCommandiiPKc_130
_Z24Cmd_ExecuteSingleCommandiiPKc_80:
	mov [esp+0xc], esi
	cld
	mov ecx, 0xffffffff
	mov edi, esi
	repne scasb
	not ecx
	mov [esp+0x8], ecx
	mov dword [esp+0x4], 0xffffffff
	mov dword [esp], 0xe
	call _Z12PbSvAddEventiiiPc
	jmp _Z24Cmd_ExecuteSingleCommandiiPKc_90
_Z24Cmd_ExecuteSingleCommandiiPKc_110:
	call _Z14SV_GameCommandv
	test eax, eax
	jnz _Z24Cmd_ExecuteSingleCommandiiPKc_90
	jmp _Z24Cmd_ExecuteSingleCommandiiPKc_100
_Z24Cmd_ExecuteSingleCommandiiPKc_120:
	call _Z13SV_WaitServerv
	mov [esp], esi
	call _Z23Cmd_ExecuteServerStringPKc
	jmp _Z24Cmd_ExecuteSingleCommandiiPKc_90


;SV_Cmd_EndTokenizedString()
_Z25SV_Cmd_EndTokenizedStringv:
	push ebp
	mov ebp, esp
	mov eax, [sv_cmd_args]
	mov edx, [sv_cmd_argsPrivate+0x2820]
	sub edx, [eax*4+sv_cmd_args+0x44]
	mov [sv_cmd_argsPrivate+0x2820], edx
	mov edx, [sv_cmd_argsPrivate+0x2824]
	sub edx, [eax*4+sv_cmd_argsPrivate+0x2800]
	mov [sv_cmd_argsPrivate+0x2824], edx
	sub eax, 0x1
	mov [sv_cmd_args], eax
	pop ebp
	ret
	add [eax], al


;Cmd_GetAutoCompleteFileList(char const*, int*, int)
_Z27Cmd_GetAutoCompleteFileListPKcPii:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov esi, [ebp+0x8]
	mov edi, [ebp+0xc]
	mov dword [edi], 0x0
	mov ebx, [cmd_functions]
	test ebx, ebx
	jz _Z27Cmd_GetAutoCompleteFileListPKcPii_10
_Z27Cmd_GetAutoCompleteFileListPKcPii_30:
	mov eax, [ebx+0x4]
	mov [esp+0x4], eax
	mov [esp], esi
	call strcmp
	test eax, eax
	jz _Z27Cmd_GetAutoCompleteFileListPKcPii_20
	mov ebx, [ebx]
	test ebx, ebx
	jnz _Z27Cmd_GetAutoCompleteFileListPKcPii_30
_Z27Cmd_GetAutoCompleteFileListPKcPii_10:
	xor eax, eax
_Z27Cmd_GetAutoCompleteFileListPKcPii_40:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z27Cmd_GetAutoCompleteFileListPKcPii_20:
	mov eax, [ebx+0x8]
	test eax, eax
	jz _Z27Cmd_GetAutoCompleteFileListPKcPii_10
	mov edx, [ebx+0xc]
	test edx, edx
	jz _Z27Cmd_GetAutoCompleteFileListPKcPii_10
	mov ecx, [ebp+0x10]
	mov [esp+0x10], ecx
	mov [esp+0xc], edi
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], edx
	mov [esp], eax
	call FS_ListFiles
	jmp _Z27Cmd_GetAutoCompleteFileListPKcPii_40
	nop


;Cmd_TokenizeStringWithLimit(char const*, int)
_Z27Cmd_TokenizeStringWithLimitPKci:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov ebx, [cmd_args]
	add ebx, 0x1
	mov [cmd_args], ebx
	mov esi, cmd_argsPrivate+0x2800
	mov ecx, [cmd_argsPrivate+0x2824]
	neg ecx
	mov [esi+ebx*4], ecx
	mov dword [ebx*4+cmd_args+0x4], 0xffffffff
	mov dword [ebx*4+cmd_args+0x24], 0x0
	mov ecx, [cmd_argsPrivate+0x2820]
	lea ecx, [ecx*4+cmd_argsPrivate+0x2000]
	mov [ebx*4+cmd_args+0x64], ecx
	mov dword [esp], cmd_argsPrivate
	call _Z26Cmd_TokenizeStringInternalPKciPS0_P14CmdArgsPrivate
	mov ecx, cmd_args+0x40
	mov [ecx+ebx*4+0x4], eax
	mov edx, [cmd_args]
	mov eax, [cmd_argsPrivate+0x2820]
	add eax, [ecx+edx*4+0x4]
	mov [cmd_argsPrivate+0x2820], eax
	mov eax, [esi+edx*4]
	add eax, [cmd_argsPrivate+0x2824]
	mov [esi+edx*4], eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;Cmd_AddServerCommandInternal(char const*, void (*)(), cmd_function_s*)
_Z28Cmd_AddServerCommandInternalPKcPFvvEP14cmd_function_s:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov esi, [ebp+0x8]
	mov eax, [ebp+0xc]
	mov [ebp-0x1c], eax
	mov edi, [ebp+0x10]
	mov ebx, [sv_cmd_functions]
	test ebx, ebx
	jz _Z28Cmd_AddServerCommandInternalPKcPFvvEP14cmd_function_s_10
_Z28Cmd_AddServerCommandInternalPKcPFvvEP14cmd_function_s_30:
	mov eax, [ebx+0x4]
	mov [esp+0x4], eax
	mov [esp], esi
	call strcmp
	test eax, eax
	jz _Z28Cmd_AddServerCommandInternalPKcPFvvEP14cmd_function_s_20
	mov ebx, [ebx]
	test ebx, ebx
	jnz _Z28Cmd_AddServerCommandInternalPKcPFvvEP14cmd_function_s_30
_Z28Cmd_AddServerCommandInternalPKcPFvvEP14cmd_function_s_10:
	mov [edi+0x4], esi
	mov eax, [ebp-0x1c]
	mov [edi+0x10], eax
	mov eax, [sv_cmd_functions]
	mov [edi], eax
	mov [sv_cmd_functions], edi
_Z28Cmd_AddServerCommandInternalPKcPFvvEP14cmd_function_s_40:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z28Cmd_AddServerCommandInternalPKcPFvvEP14cmd_function_s_20:
	mov eax, [ebp-0x1c]
	test eax, eax
	jz _Z28Cmd_AddServerCommandInternalPKcPFvvEP14cmd_function_s_40
	mov [ebp+0x10], esi
	mov dword [ebp+0xc], _cstring_cmd_addservercom
	mov dword [ebp+0x8], 0x10
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z10Com_PrintfiPKcz


;Cmd_Init()
_Z8Cmd_Initv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov dword [cmd_args], 0xffffffff
	mov dword [cmd_argsPrivate+0x2820], 0x0
	mov dword [cmd_argsPrivate+0x2824], 0x0
	mov dword [sv_cmd_args], 0xffffffff
	mov dword [sv_cmd_argsPrivate+0x2820], 0x0
	mov dword [sv_cmd_argsPrivate+0x2824], 0x0
	mov eax, [cmd_functions]
	mov [ebp-0x1c], eax
	test eax, eax
	jz _Z8Cmd_Initv_10
	mov [ebp-0x2c], eax
	cld
	mov edx, eax
	jmp _Z8Cmd_Initv_20
_Z8Cmd_Initv_50:
	mov edx, [ebp-0x2c]
_Z8Cmd_Initv_20:
	mov edx, [edx+0x4]
	mov ebx, 0x8
	mov esi, _cstring_cmdlist
	mov edi, edx
	mov ecx, ebx
	repe cmpsb
	mov eax, 0x0
	jz _Z8Cmd_Initv_30
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
_Z8Cmd_Initv_30:
	test eax, eax
	jz _Z8Cmd_Initv_40
	mov ecx, [ebp-0x2c]
	mov ecx, [ecx]
	mov [ebp-0x2c], ecx
	test ecx, ecx
	jnz _Z8Cmd_Initv_50
	mov edi, [ebp-0x1c]
_Z8Cmd_Initv_240:
	mov dword [_ZZ8Cmd_InitvE14Cmd_List_f_VAR+0x4], _cstring_cmdlist
	mov dword [_ZZ8Cmd_InitvE14Cmd_List_f_VAR+0x10], 0x138302
	mov [_ZZ8Cmd_InitvE14Cmd_List_f_VAR], edi
	mov dword [cmd_functions], _ZZ8Cmd_InitvE14Cmd_List_f_VAR
_Z8Cmd_Initv_260:
	mov edi, [cmd_functions]
	mov [ebp-0x20], edi
	test edi, edi
	jz _Z8Cmd_Initv_60
	mov [ebp-0x2c], edi
	cld
	mov eax, edi
	jmp _Z8Cmd_Initv_70
_Z8Cmd_Initv_100:
	mov eax, [ebp-0x2c]
_Z8Cmd_Initv_70:
	mov eax, [eax+0x4]
	mov ebx, 0x5
	mov esi, _cstring_exec
	mov edi, eax
	mov ecx, ebx
	repe cmpsb
	mov eax, 0x0
	jz _Z8Cmd_Initv_80
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
_Z8Cmd_Initv_80:
	test eax, eax
	jz _Z8Cmd_Initv_90
	mov ecx, [ebp-0x2c]
	mov ecx, [ecx]
	mov [ebp-0x2c], ecx
	test ecx, ecx
	jnz _Z8Cmd_Initv_100
	mov eax, [ebp-0x20]
_Z8Cmd_Initv_230:
	mov dword [_ZZ8Cmd_InitvE14Cmd_Exec_f_VAR+0x4], _cstring_exec
	mov dword [_ZZ8Cmd_InitvE14Cmd_Exec_f_VAR+0x10], 0x13948c
	mov [_ZZ8Cmd_InitvE14Cmd_Exec_f_VAR], eax
	mov dword [cmd_functions], _ZZ8Cmd_InitvE14Cmd_Exec_f_VAR
_Z8Cmd_Initv_250:
	mov edi, [cmd_functions]
	mov [ebp-0x24], edi
	test edi, edi
	jz _Z8Cmd_Initv_110
	mov [ebp-0x2c], edi
	cld
	mov eax, edi
	jmp _Z8Cmd_Initv_120
_Z8Cmd_Initv_150:
	mov eax, [ebp-0x2c]
_Z8Cmd_Initv_120:
	mov eax, [eax+0x4]
	mov ebx, 0x5
	mov esi, _cstring_vstr
	mov edi, eax
	mov ecx, ebx
	repe cmpsb
	mov eax, 0x0
	jz _Z8Cmd_Initv_130
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
_Z8Cmd_Initv_130:
	test eax, eax
	jz _Z8Cmd_Initv_140
	mov ecx, [ebp-0x2c]
	mov ecx, [ecx]
	mov [ebp-0x2c], ecx
	test ecx, ecx
	jnz _Z8Cmd_Initv_150
	mov edx, [ebp-0x24]
_Z8Cmd_Initv_220:
	mov dword [_ZZ8Cmd_InitvE14Cmd_Vstr_f_VAR+0x4], _cstring_vstr
	mov dword [_ZZ8Cmd_InitvE14Cmd_Vstr_f_VAR+0x10], 0x138438
	mov [_ZZ8Cmd_InitvE14Cmd_Vstr_f_VAR], edx
	mov dword [cmd_functions], _ZZ8Cmd_InitvE14Cmd_Vstr_f_VAR
_Z8Cmd_Initv_270:
	mov edi, [cmd_functions]
	mov [ebp-0x28], edi
	test edi, edi
	jz _Z8Cmd_Initv_160
	mov [ebp-0x2c], edi
	cld
	mov eax, edi
	jmp _Z8Cmd_Initv_170
_Z8Cmd_Initv_200:
	mov eax, [ebp-0x2c]
_Z8Cmd_Initv_170:
	mov eax, [eax+0x4]
	mov ebx, 0x5
	mov esi, _cstring_wait
	mov edi, eax
	mov ecx, ebx
	repe cmpsb
	mov eax, 0x0
	jz _Z8Cmd_Initv_180
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
_Z8Cmd_Initv_180:
	test eax, eax
	jz _Z8Cmd_Initv_190
	mov ecx, [ebp-0x2c]
	mov ecx, [ecx]
	mov [ebp-0x2c], ecx
	test ecx, ecx
	jnz _Z8Cmd_Initv_200
	mov ecx, [ebp-0x28]
_Z8Cmd_Initv_210:
	mov dword [_ZZ8Cmd_InitvE14Cmd_Wait_f_VAR+0x4], _cstring_wait
	mov dword [_ZZ8Cmd_InitvE14Cmd_Wait_f_VAR+0x10], 0x1382c8
	mov [_ZZ8Cmd_InitvE14Cmd_Wait_f_VAR], ecx
	mov dword [cmd_functions], _ZZ8Cmd_InitvE14Cmd_Wait_f_VAR
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z8Cmd_Initv_160:
	mov ecx, edi
	jmp _Z8Cmd_Initv_210
_Z8Cmd_Initv_110:
	mov edx, edi
	jmp _Z8Cmd_Initv_220
_Z8Cmd_Initv_60:
	mov eax, edi
	jmp _Z8Cmd_Initv_230
_Z8Cmd_Initv_10:
	mov edi, eax
	jmp _Z8Cmd_Initv_240
_Z8Cmd_Initv_90:
	mov dword [esp+0x8], _cstring_exec
	mov dword [esp+0x4], _cstring_cmd_addcommand_s
	mov dword [esp], 0x10
	call _Z10Com_PrintfiPKcz
	jmp _Z8Cmd_Initv_250
_Z8Cmd_Initv_40:
	mov dword [esp+0x8], _cstring_cmdlist
	mov dword [esp+0x4], _cstring_cmd_addcommand_s
	mov dword [esp], 0x10
	call _Z10Com_PrintfiPKcz
	jmp _Z8Cmd_Initv_260
_Z8Cmd_Initv_190:
	mov dword [esp+0x8], _cstring_wait
	mov dword [esp+0x4], _cstring_cmd_addcommand_s
	mov dword [esp], 0x10
	call _Z10Com_PrintfiPKcz
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z8Cmd_Initv_140:
	mov dword [esp+0x8], _cstring_vstr
	mov dword [esp+0x4], _cstring_cmd_addcommand_s
	mov dword [esp], 0x10
	call _Z10Com_PrintfiPKcz
	jmp _Z8Cmd_Initv_270
	nop


;Cbuf_Init()
_Z9Cbuf_Initv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp], 0x10
	call _Z24Sys_EnterCriticalSection15CriticalSection
	mov dword [cmd_textArray], cmd_text_buf
	mov dword [cmd_textArray+0x4], 0x10000
	mov dword [cmd_textArray+0x8], 0x0
	mov byte [cmd_insideCBufExecute], 0x0
	mov dword [sv_cmd_text], sv_cmd_text_buf
	mov dword [sv_cmd_text+0x4], 0x10000
	mov dword [sv_cmd_text+0x8], 0x0
	mov dword [esp], 0x10
	call _Z24Sys_LeaveCriticalSection15CriticalSection
	leave
	ret
	nop


;Initialized global or static variables of cmd:
SECTION .data


;Initialized constant data of cmd:
SECTION .rdata


;Zero initialized global or static variables of cmd:
SECTION .bss
sv_cmd_argsPrivate: resb 0x2840
cmd_argsPrivate: resb 0x2828
cmd_functions: resb 0x4
sv_cmd_functions: resb 0x4
cmd_textArray: resb 0xc
sv_cmd_text: resb 0x24
sv_cmd_text_buf: resb 0x10000
cmd_text_buf: resb 0x10000
_ZZ8Cmd_InitvE14Cmd_Wait_f_VAR: resb 0x14
_ZZ8Cmd_InitvE14Cmd_Vstr_f_VAR: resb 0x14
_ZZ8Cmd_InitvE14Cmd_Exec_f_VAR: resb 0x14
_ZZ8Cmd_InitvE14Cmd_List_f_VAR: resb 0x24
cmd_args: resb 0xc0
sv_cmd_args: resb 0xa0
cmd_insideCBufExecute: resb 0x4
cmd_wait: resb 0x18


;All cstrings:
SECTION .rdata
_cstring_exec_filename__e:		db "exec <filename> : execute a script file",0ah,0
_cstring_cfg:		db ".cfg",0
_cstring_config_mpcfg:		db "config_mp.cfg",0
_cstring_execing_s_from_d:		db "execing %s from disk",0ah,0
_cstring_execing_s_from_f:		db "execing %s from fastfile",0ah,0
_cstring_couldnt_exec_s:		db "couldn",27h,"t exec %s",0ah,0
_cstring_null:		db 0
_cstring_s:		db "%s",0ah,0
_cstring_i_commands:		db "%i commands",0ah,0
_cstring_vstr_variablenam:		db "vstr <variablename> : execute a variable command",0ah,0
_cstring_s_is_not_a_strin:		db "%s is not a string-based dvar",0ah,0
_cstring_s_doesnt_exist:		db "%s doesn",27h,"t exist",0ah,0
_cstring_cbuf_addtext_ove:		db "Cbuf_AddText: overflow",0ah,0
_cstring_cbuf_inserttext_:		db "Cbuf_InsertText overflowed",0ah,0
_cstring_cmd_addcommand_s:		db "Cmd_AddCommand: %s already defined",0ah,0
_cstring_pb_:		db "pb_",0
_cstring_sv_:		db "sv_",0
_cstring_cmd_addservercom:		db "Cmd_AddServerCommand: %s already defined",0ah,0
_cstring_cmdlist:		db "cmdlist",0
_cstring_exec:		db "exec",0
_cstring_vstr:		db "vstr",0
_cstring_wait:		db "wait",0



;All constant floats and doubles:
SECTION .rdata

