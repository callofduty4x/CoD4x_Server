;Imports of cmd:
	extern Com_Printf
	extern Q_strncpyz
	extern Com_DefaultExtension
	extern Com_GetFilenameSubString
	extern Q_stricmp
	extern useFastFile
	extern FS_ReadFile
	extern FS_FreeFile
	extern memcpy
	extern DB_IsMinimumFastFileLoaded
	extern DB_FindXAssetHeader
	extern Com_PrintError
	extern Com_Filter
	extern Cvar_FindVar
	extern va
	extern atoi
	extern Sys_EnterCriticalSection
	extern Sys_LeaveCriticalSection
	extern memmove
	extern SV_WaitServer
	extern strcmp
	extern PbTrapPreExecCmd
	extern Q_stricmpn
	extern PbClAddEvent
	extern Cvar_Command
	extern com_sv_running
	extern CL_ForwardCommandToServer
	extern PbSvAddEvent
	extern SV_GameCommand
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
	global Cmd_TokenizeStringInternal
	global _ZZ8Cmd_InitvE14Cmd_Wait_f_VAR
	global _ZZ8Cmd_InitvE14Cmd_Vstr_f_VAR
	global _ZZ8Cmd_InitvE14Cmd_Exec_f_VAR
	global _ZZ8Cmd_InitvE14Cmd_List_f_VAR
	global Cmd_Exec_f
	global Cmd_List_f
	global Cmd_Vstr_f
	global Cmd_Wait_f
	global Cmd_ForEach
	global Cbuf_AddText
	global Cbuf_Execute
	global Cmd_Shutdown
	global Cmd_ArgsBuffer
	global Cbuf_InsertText
	global Cbuf_SV_Execute
	global Cmd_RemoveCommand
	global SV_Cmd_ArgvBuffer
	global Cbuf_ExecuteBuffer
	global Cmd_TokenizeString
	global Cmd_ComErrorCleanup
	global Cmd_SetAutoComplete
	global Cbuf_AddServerText_f
	global SV_Cmd_ExecuteString
	global SV_Cmd_TokenizeString
	global Cmd_AddCommand
	global Cmd_EndTokenizedString
	global Cmd_ExecuteServerString
	global Cmd_ExecuteSingleCommand
	global SV_Cmd_EndTokenizedString
	global Cmd_GetAutoCompleteFileList
	global Cmd_TokenizeStringWithLimit
	global Cmd_AddServerCommandInternal
	global Cmd_Init
	global Cbuf_Init
	global cmd_args
	global sv_cmd_args
	global cmd_insideCBufExecute
	global cmd_wait


SECTION .text


;Cmd_TokenizeStringInternal(char const*, int, char const**, CmdArgsPrivate*)
Cmd_TokenizeStringInternal:
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
	jz Cmd_TokenizeStringInternal_10
Cmd_TokenizeStringInternal_30:
	lea eax, [edx-0x14]
	cmp al, 0x2
	jbe Cmd_TokenizeStringInternal_20
	cmp dl, 0x20
	ja Cmd_TokenizeStringInternal_20
	lea esi, [ebx+0x1]
	mov ebx, esi
Cmd_TokenizeStringInternal_130:
	movzx edx, byte [ebx]
	test dl, dl
	jnz Cmd_TokenizeStringInternal_30
Cmd_TokenizeStringInternal_10:
	mov eax, [ebp-0x10]
	add esp, 0xc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Cmd_TokenizeStringInternal_20:
	cmp dl, 0x2f
	jz Cmd_TokenizeStringInternal_40
Cmd_TokenizeStringInternal_150:
	mov eax, [ebp+0x8]
	add eax, [eax+0x2824]
	mov edx, [ebp-0x10]
	mov ecx, [ebp-0x18]
	mov [ecx+edx*4], eax
	add edx, 0x1
	mov [ebp-0x10], edx
	sub dword [ebp-0x14], 0x1
	jz Cmd_TokenizeStringInternal_50
	cmp byte [ebx], 0x22
	jz Cmd_TokenizeStringInternal_60
Cmd_TokenizeStringInternal_110:
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
	jz Cmd_TokenizeStringInternal_70
	lea eax, [edx-0x14]
	cmp al, 0x2
	jbe Cmd_TokenizeStringInternal_80
	cmp dl, 0x20
	jbe Cmd_TokenizeStringInternal_90
Cmd_TokenizeStringInternal_80:
	cmp dl, 0x2f
	jz Cmd_TokenizeStringInternal_100
Cmd_TokenizeStringInternal_120:
	mov ebx, esi
	jmp Cmd_TokenizeStringInternal_110
Cmd_TokenizeStringInternal_100:
	movzx eax, byte [ebx+0x2]
	cmp al, 0x2f
	jz Cmd_TokenizeStringInternal_90
	cmp al, 0x2a
	jnz Cmd_TokenizeStringInternal_120
Cmd_TokenizeStringInternal_90:
	mov ebx, [ebp+0x8]
	mov byte [ebx+ecx], 0x0
	mov eax, [ebx+0x2824]
	add eax, 0x1
	cmp eax, 0x1ffe
	mov edx, 0x1ffe
	cmovge eax, edx
	mov [ebx+0x2824], eax
	mov ebx, esi
	jmp Cmd_TokenizeStringInternal_130
Cmd_TokenizeStringInternal_140:
	add ebx, 0x1
Cmd_TokenizeStringInternal_50:
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
	jnz Cmd_TokenizeStringInternal_140
	jmp Cmd_TokenizeStringInternal_10
Cmd_TokenizeStringInternal_40:
	movzx eax, byte [ebx+0x1]
	cmp al, 0x2f
	jz Cmd_TokenizeStringInternal_10
	cmp al, 0x2a
	jnz Cmd_TokenizeStringInternal_150
	lea edx, [ebx+0x2]
	movzx eax, byte [ebx+0x2]
	test al, al
	jz Cmd_TokenizeStringInternal_10
	jmp Cmd_TokenizeStringInternal_160
Cmd_TokenizeStringInternal_170:
	add edx, 0x1
Cmd_TokenizeStringInternal_190:
	movzx eax, byte [edx]
	test al, al
	jz Cmd_TokenizeStringInternal_10
Cmd_TokenizeStringInternal_160:
	cmp al, 0x2a
	jnz Cmd_TokenizeStringInternal_170
	lea eax, [edx+0x1]
	cmp byte [edx+0x1], 0x2f
	jz Cmd_TokenizeStringInternal_180
	mov edx, eax
	jmp Cmd_TokenizeStringInternal_190
Cmd_TokenizeStringInternal_60:
	lea ecx, [ebx+0x1]
	movzx eax, byte [ebx+0x1]
	test al, al
	jz Cmd_TokenizeStringInternal_200
	jmp Cmd_TokenizeStringInternal_210
Cmd_TokenizeStringInternal_220:
	add ecx, 0x1
Cmd_TokenizeStringInternal_240:
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
	jz Cmd_TokenizeStringInternal_200
Cmd_TokenizeStringInternal_210:
	cmp al, 0x22
	jz Cmd_TokenizeStringInternal_200
	mov edx, ecx
	cmp al, 0x5c
	jnz Cmd_TokenizeStringInternal_220
	lea eax, [ecx+0x1]
	cmp byte [ecx+0x1], 0x22
	jz Cmd_TokenizeStringInternal_230
	mov ecx, eax
	jmp Cmd_TokenizeStringInternal_240
Cmd_TokenizeStringInternal_200:
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
	jz Cmd_TokenizeStringInternal_10
	lea esi, [ecx+0x1]
	cmp byte [ecx+0x1], 0x0
	jz Cmd_TokenizeStringInternal_10
	mov ebx, esi
	jmp Cmd_TokenizeStringInternal_130
Cmd_TokenizeStringInternal_70:
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
Cmd_TokenizeStringInternal_230:
	add ecx, 0x2
	mov edx, eax
	jmp Cmd_TokenizeStringInternal_240
Cmd_TokenizeStringInternal_180:
	lea esi, [edx+0x2]
	mov ebx, esi
	jmp Cmd_TokenizeStringInternal_130


;Cmd_Exec_f()
Cmd_Exec_f:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x107c
	mov eax, [cmd_args]
	cmp dword [eax*4+cmd_args+0x44], 0x2
	jz Cmd_Exec_f_10
	mov dword [esp+0x4], _cstring_exec_filename__e
	mov dword [esp], 0x0
	call Com_Printf
Cmd_Exec_f_160:
	add esp, 0x107c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Cmd_Exec_f_10:
	mov dword [esp+0x8], 0x40
	mov eax, [eax*4+cmd_args+0x64]
	mov eax, [eax+0x4]
	mov [esp+0x4], eax
	lea ebx, [ebp-0x5c]
	mov [esp], ebx
	call Q_strncpyz
	mov dword [esp+0x8], _cstring_cfg
	mov dword [esp+0x4], 0x40
	mov [esp], ebx
	call Com_DefaultExtension
	mov [esp], ebx
	call Com_GetFilenameSubString
	mov dword [esp+0x4], _cstring_config_mpcfg
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jz Cmd_Exec_f_20
	mov eax, useFastFile
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz Cmd_Exec_f_30
Cmd_Exec_f_140:
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov [esp], ebx
	call FS_ReadFile
	mov esi, [ebp-0x1c]
	test esi, esi
	jz Cmd_Exec_f_40
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_execing_s_from_d
	mov dword [esp], 0x10
	call Com_Printf
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
	jnz Cmd_Exec_f_50
Cmd_Exec_f_240:
	mov [esp], edx
	call FS_FreeFile
Cmd_Exec_f_130:
	add esp, 0x107c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Cmd_Exec_f_70:
	xor edi, edi
	xor eax, eax
Cmd_Exec_f_120:
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
	call Cmd_ExecuteSingleCommand
	test ebx, ebx
	jz Cmd_Exec_f_60
Cmd_Exec_f_50:
	test ebx, ebx
	jle Cmd_Exec_f_70
	xor ecx, ecx
	xor edi, edi
Cmd_Exec_f_100:
	movzx edx, byte [esi+edi]
	lea eax, [ecx+0x1]
	cmp dl, 0x22
	cmovz ecx, eax
	test cl, 0x1
	jnz Cmd_Exec_f_80
	cmp dl, 0x3b
	jz Cmd_Exec_f_90
Cmd_Exec_f_80:
	cmp dl, 0xa
	jz Cmd_Exec_f_90
	cmp dl, 0xd
	jz Cmd_Exec_f_90
	add edi, 0x1
	cmp ebx, edi
	jnz Cmd_Exec_f_100
Cmd_Exec_f_90:
	cmp edi, 0xffe
	jle Cmd_Exec_f_110
	mov edi, 0xfff
	mov eax, 0xfff
	jmp Cmd_Exec_f_120
Cmd_Exec_f_60:
	mov edx, [ebp-0x1c]
	mov [esp], edx
	call FS_FreeFile
	jmp Cmd_Exec_f_130
Cmd_Exec_f_30:
	call DB_IsMinimumFastFileLoaded
	test al, al
	jz Cmd_Exec_f_140
	mov [esp+0x4], ebx
	mov dword [esp], 0x1f
	call DB_FindXAssetHeader
	mov esi, eax
	test eax, eax
	jz Cmd_Exec_f_140
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_execing_s_from_f
	mov dword [esp], 0x10
	call Com_Printf
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
	jnz Cmd_Exec_f_150
	jmp Cmd_Exec_f_160
Cmd_Exec_f_170:
	xor ebx, ebx
	xor eax, eax
Cmd_Exec_f_220:
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
	call Cmd_ExecuteSingleCommand
	test esi, esi
	jz Cmd_Exec_f_160
Cmd_Exec_f_150:
	test esi, esi
	jle Cmd_Exec_f_170
	xor ecx, ecx
	xor ebx, ebx
Cmd_Exec_f_200:
	mov eax, [ebp-0x106c]
	movzx edx, byte [eax+ebx]
	lea eax, [ecx+0x1]
	cmp dl, 0x22
	cmovz ecx, eax
	test cl, 0x1
	jnz Cmd_Exec_f_180
	cmp dl, 0x3b
	jz Cmd_Exec_f_190
Cmd_Exec_f_180:
	cmp dl, 0xa
	jz Cmd_Exec_f_190
	cmp dl, 0xd
	jz Cmd_Exec_f_190
	add ebx, 0x1
	cmp esi, ebx
	jnz Cmd_Exec_f_200
Cmd_Exec_f_190:
	cmp ebx, 0xffe
	jle Cmd_Exec_f_210
	mov ebx, 0xfff
	mov eax, 0xfff
	jmp Cmd_Exec_f_220
Cmd_Exec_f_20:
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov [esp], ebx
	call FS_ReadFile
	mov edi, [ebp-0x1c]
	test edi, edi
	jz Cmd_Exec_f_160
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_execing_s_from_d
	mov dword [esp], 0x10
	call Com_Printf
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
	jnz Cmd_Exec_f_230
	jmp Cmd_Exec_f_240
Cmd_Exec_f_250:
	xor edi, edi
	xor eax, eax
Cmd_Exec_f_300:
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
	call Cmd_ExecuteSingleCommand
	test ebx, ebx
	jz Cmd_Exec_f_60
Cmd_Exec_f_230:
	test ebx, ebx
	jle Cmd_Exec_f_250
	xor ecx, ecx
	xor edi, edi
Cmd_Exec_f_280:
	movzx edx, byte [esi+edi]
	lea eax, [ecx+0x1]
	cmp dl, 0x22
	cmovz ecx, eax
	test cl, 0x1
	jnz Cmd_Exec_f_260
	cmp dl, 0x3b
	jz Cmd_Exec_f_270
Cmd_Exec_f_260:
	cmp dl, 0xa
	jz Cmd_Exec_f_270
	cmp dl, 0xd
	jz Cmd_Exec_f_270
	add edi, 0x1
	cmp ebx, edi
	jnz Cmd_Exec_f_280
Cmd_Exec_f_270:
	cmp edi, 0xffe
	jle Cmd_Exec_f_290
	mov edi, 0xfff
	mov eax, 0xfff
	jmp Cmd_Exec_f_300
Cmd_Exec_f_40:
	mov eax, [cmd_args]
	cmp dword [eax*4+cmd_args+0x44], 0x1
	jle Cmd_Exec_f_310
	mov eax, [eax*4+cmd_args+0x64]
	mov eax, [eax+0x4]
Cmd_Exec_f_320:
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_couldnt_exec_s
	mov dword [esp], 0x1
	call Com_PrintError
	jmp Cmd_Exec_f_160
Cmd_Exec_f_210:
	mov eax, ebx
	jmp Cmd_Exec_f_220
Cmd_Exec_f_310:
	mov eax, _cstring_null
	jmp Cmd_Exec_f_320
Cmd_Exec_f_110:
	mov eax, edi
	jmp Cmd_Exec_f_120
Cmd_Exec_f_290:
	mov eax, edi
	jmp Cmd_Exec_f_300
	add [eax], al


;Cmd_List_f()
Cmd_List_f:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov eax, [cmd_args]
	cmp dword [eax*4+cmd_args+0x44], 0x1
	jle Cmd_List_f_10
	mov eax, [eax*4+cmd_args+0x64]
	mov esi, [eax+0x4]
	mov ebx, [cmd_functions]
	test ebx, ebx
	jz Cmd_List_f_20
Cmd_List_f_60:
	test esi, esi
	jz Cmd_List_f_30
	xor edi, edi
Cmd_List_f_50:
	mov dword [esp+0x8], 0x0
	mov eax, [ebx+0x4]
	mov [esp+0x4], eax
	mov [esp], esi
	call Com_Filter
	test al, al
	jz Cmd_List_f_40
	mov eax, [ebx+0x4]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_s
	mov dword [esp], 0x0
	call Com_Printf
	add edi, 0x1
Cmd_List_f_40:
	mov ebx, [ebx]
	test ebx, ebx
	jnz Cmd_List_f_50
Cmd_List_f_80:
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_i_commands
	mov dword [esp], 0x0
	call Com_Printf
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Cmd_List_f_10:
	xor esi, esi
	mov ebx, [cmd_functions]
	test ebx, ebx
	jnz Cmd_List_f_60
Cmd_List_f_20:
	xor edi, edi
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_i_commands
	mov dword [esp], 0x0
	call Com_Printf
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Cmd_List_f_30:
	xor edi, edi
Cmd_List_f_70:
	mov eax, [ebx+0x4]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_s
	mov dword [esp], 0x0
	call Com_Printf
	add edi, 0x1
	mov ebx, [ebx]
	test ebx, ebx
	jnz Cmd_List_f_70
	jmp Cmd_List_f_80
	nop


;Cmd_Vstr_f()
Cmd_Vstr_f:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [cmd_args]
	cmp dword [eax*4+cmd_args+0x44], 0x2
	jz Cmd_Vstr_f_10
	mov dword [esp+0x4], _cstring_vstr_variablenam
	mov dword [esp], 0x0
	call Com_Printf
Cmd_Vstr_f_40:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
Cmd_Vstr_f_10:
	mov eax, [eax*4+cmd_args+0x64]
	mov ebx, [eax+0x4]
	mov [esp], ebx
	call Cvar_FindVar
	mov edx, eax
	test eax, eax
	jz Cmd_Vstr_f_20
	movzx eax, byte [eax+0xa]
	sub al, 0x6
	cmp al, 0x1
	jbe Cmd_Vstr_f_30
	mov eax, [edx]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_s_is_not_a_strin
	mov dword [esp], 0x0
	call Com_Printf
	add esp, 0x14
	pop ebx
	pop ebp
	ret
Cmd_Vstr_f_30:
	mov eax, [edx+0xc]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_s
	call va
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Cbuf_InsertText
	jmp Cmd_Vstr_f_40
Cmd_Vstr_f_20:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_s_doesnt_exist
	mov dword [esp], 0x0
	call Com_Printf
	jmp Cmd_Vstr_f_40


;Cmd_Wait_f()
Cmd_Wait_f:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [cmd_args]
	cmp dword [eax*4+cmd_args+0x44], 0x2
	jz Cmd_Wait_f_10
	mov dword [cmd_wait], 0x1
	leave
	ret
Cmd_Wait_f_10:
	mov eax, [eax*4+cmd_args+0x64]
	mov eax, [eax+0x4]
	mov [esp], eax
	call atoi
	mov [cmd_wait], eax
	leave
	ret


;Cmd_ForEach(void (*)(char const*))
Cmd_ForEach:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov ebx, [cmd_functions]
	test ebx, ebx
	jz Cmd_ForEach_10
Cmd_ForEach_20:
	mov eax, [ebx+0x4]
	mov [esp], eax
	call esi
	mov ebx, [ebx]
	test ebx, ebx
	jnz Cmd_ForEach_20
Cmd_ForEach_10:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret


;Cbuf_AddText(int, char const*)
Cbuf_AddText:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov dword [esp], 0x10
	call Sys_EnterCriticalSection
	movzx eax, byte [esi]
	cmp al, 0x70
	jz Cbuf_AddText_10
	cmp al, 0x50
	jz Cbuf_AddText_10
Cbuf_AddText_90:
	lea eax, [ebx+ebx*2]
	lea edi, [eax*4+cmd_textArray]
	cmp byte [esi], 0x0
	jz Cbuf_AddText_20
	xor ebx, ebx
Cbuf_AddText_30:
	add ebx, 0x1
	cmp byte [esi+ebx], 0x0
	jnz Cbuf_AddText_30
	mov edx, [edi+0x8]
	lea eax, [edx+ebx]
	cmp eax, [edi+0x4]
	jge Cbuf_AddText_40
Cbuf_AddText_60:
	mov eax, [edi]
	add eax, edx
	mov [ebp-0x1c], eax
	mov ecx, esi
	mov eax, ebx
	add eax, 0x1
	jnz Cbuf_AddText_50
Cbuf_AddText_80:
	lea eax, [ebx+edx]
	mov [edi+0x8], eax
	mov dword [ebp+0x8], 0x10
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp Sys_LeaveCriticalSection
Cbuf_AddText_20:
	xor ebx, ebx
	mov edx, [edi+0x8]
	lea eax, [edx+ebx]
	cmp eax, [edi+0x4]
	jl Cbuf_AddText_60
Cbuf_AddText_40:
	mov dword [esp+0x4], _cstring_cbuf_addtext_ove
	mov dword [esp], 0x10
	call Com_Printf
	mov dword [ebp+0x8], 0x10
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp Sys_LeaveCriticalSection
Cbuf_AddText_50:
	mov edx, [ebp-0x1c]
	lea esi, [edx+eax]
Cbuf_AddText_70:
	movzx eax, byte [ecx]
	mov [edx], al
	add edx, 0x1
	add ecx, 0x1
	cmp edx, esi
	jnz Cbuf_AddText_70
	mov edx, [edi+0x8]
	jmp Cbuf_AddText_80
Cbuf_AddText_10:
	cmp byte [esi+0x1], 0x30
	jnz Cbuf_AddText_90
	add esi, 0x2
	cmp byte [esi], 0x20
	jz Cbuf_AddText_100
Cbuf_AddText_110:
	xor ebx, ebx
	jmp Cbuf_AddText_90
Cbuf_AddText_100:
	add esi, 0x1
	cmp byte [esi], 0x20
	jnz Cbuf_AddText_110
	add esi, 0x1
	cmp byte [esi], 0x20
	jz Cbuf_AddText_100
	jmp Cbuf_AddText_110
	nop


;Cbuf_Execute(int, int)
Cbuf_Execute:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x102c
	mov eax, [ebp+0x8]
	mov byte [eax+cmd_insideCBufExecute], 0x1
	mov dword [esp], 0x10
	call Sys_EnterCriticalSection
	mov edx, [ebp+0x8]
	lea eax, [edx+edx*2]
	lea eax, [eax*4+cmd_textArray]
	mov [ebp-0x101c], eax
	mov ebx, [eax+0x8]
	test ebx, ebx
	jz Cbuf_Execute_10
Cbuf_Execute_50:
	mov eax, [cmd_wait]
	test eax, eax
	jnz Cbuf_Execute_20
	mov ecx, [ebp-0x101c]
	mov edi, [ecx]
	test ebx, ebx
	jg Cbuf_Execute_30
	xor esi, esi
	xor eax, eax
Cbuf_Execute_110:
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	lea eax, [ebp-0x1018]
	mov [esp], eax
	call memcpy
	mov byte [ebp+esi-0x1018], 0x0
	mov ecx, [ebp-0x101c]
	mov edx, [ecx+0x8]
	cmp esi, edx
	jnz Cbuf_Execute_40
	mov dword [ecx+0x8], 0x0
Cbuf_Execute_60:
	mov dword [esp], 0x10
	call Sys_LeaveCriticalSection
	lea eax, [ebp-0x1018]
	mov [esp+0x8], eax
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call Cmd_ExecuteSingleCommand
	mov dword [esp], 0x10
	call Sys_EnterCriticalSection
	mov eax, [ebp-0x101c]
	mov ebx, [eax+0x8]
	test ebx, ebx
	jnz Cbuf_Execute_50
Cbuf_Execute_10:
	mov dword [esp], 0x10
	call Sys_LeaveCriticalSection
	mov edx, [ebp+0x8]
	mov byte [edx+cmd_insideCBufExecute], 0x0
	call Cbuf_SV_Execute
	add esp, 0x102c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Cbuf_Execute_40:
	lea eax, [esi+0x1]
	sub edx, eax
	mov [ecx+0x8], edx
	mov [esp+0x8], edx
	lea eax, [edi+eax]
	mov [esp+0x4], eax
	mov [esp], edi
	call memmove
	jmp Cbuf_Execute_60
Cbuf_Execute_30:
	xor ecx, ecx
	xor esi, esi
Cbuf_Execute_90:
	movzx edx, byte [edi+esi]
	lea eax, [ecx+0x1]
	cmp dl, 0x22
	cmovz ecx, eax
	test cl, 0x1
	jnz Cbuf_Execute_70
	cmp dl, 0x3b
	jz Cbuf_Execute_80
Cbuf_Execute_70:
	cmp dl, 0xa
	jz Cbuf_Execute_80
	cmp dl, 0xd
	jz Cbuf_Execute_80
	add esi, 0x1
	cmp ebx, esi
	jnz Cbuf_Execute_90
	mov esi, ebx
Cbuf_Execute_80:
	cmp esi, 0xffe
	jle Cbuf_Execute_100
	mov esi, 0xfff
	mov eax, 0xfff
	jmp Cbuf_Execute_110
Cbuf_Execute_20:
	sub eax, 0x1
	mov [cmd_wait], eax
	mov dword [esp], 0x10
	call Sys_LeaveCriticalSection
	mov edx, [ebp+0x8]
	mov byte [edx+cmd_insideCBufExecute], 0x0
	call Cbuf_SV_Execute
	add esp, 0x102c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Cbuf_Execute_100:
	mov eax, esi
	jmp Cbuf_Execute_110


;Cmd_Shutdown()
Cmd_Shutdown:
	push ebp
	mov ebp, esp
	mov dword [cmd_functions], 0x0
	mov dword [sv_cmd_functions], 0x0
	pop ebp
	ret
	nop


;Cmd_ArgsBuffer(int, char*, int)
Cmd_ArgsBuffer:
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
	jg Cmd_ArgsBuffer_10
	mov ebx, [ebp+0xc]
Cmd_ArgsBuffer_30:
	mov byte [ebx], 0x0
	add esp, 0x10
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Cmd_ArgsBuffer_10:
	lea eax, [eax+ecx*4]
	mov [ebp-0x10], eax
	mov [ebp-0x14], ecx
	mov ebx, [ebp+0xc]
	lea eax, [edx-0x1]
	mov [ebp-0x18], eax
	mov [ebp-0x1c], edx
Cmd_ArgsBuffer_60:
	mov eax, [ebp-0x10]
	mov edx, [eax]
	xor ecx, ecx
	jmp Cmd_ArgsBuffer_20
Cmd_ArgsBuffer_40:
	mov [ebx], al
	add ebx, 0x1
	add edx, 0x1
	add ecx, 0x1
	cmp edi, ecx
	jz Cmd_ArgsBuffer_30
Cmd_ArgsBuffer_20:
	mov esi, edi
	sub esi, ecx
	movzx eax, byte [edx]
	test al, al
	jnz Cmd_ArgsBuffer_40
	cmp esi, 0x1
	jz Cmd_ArgsBuffer_30
	mov eax, [ebp-0x18]
	cmp [ebp-0x14], eax
	jz Cmd_ArgsBuffer_50
	mov byte [ebx], 0x20
	add ebx, 0x1
	lea edi, [esi-0x1]
Cmd_ArgsBuffer_70:
	add dword [ebp-0x14], 0x1
	add dword [ebp-0x10], 0x4
	mov eax, [ebp-0x1c]
	cmp [ebp-0x14], eax
	jnz Cmd_ArgsBuffer_60
	jmp Cmd_ArgsBuffer_30
Cmd_ArgsBuffer_50:
	mov edi, esi
	jmp Cmd_ArgsBuffer_70
	nop


;Cbuf_InsertText(int, char const*)
Cbuf_InsertText:
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
	call Sys_EnterCriticalSection
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
	jg Cbuf_InsertText_10
	mov eax, edx
	sub eax, 0x1
	js Cbuf_InsertText_20
	mov ebx, [ebp-0x20]
	add ebx, eax
	mov ecx, eax
	mov edi, 0xffffffff
Cbuf_InsertText_30:
	mov edx, [esi]
	movzx eax, byte [edx+ecx]
	mov [edx+ebx], al
	sub ecx, 0x1
	sub ebx, 0x1
	cmp ecx, edi
	jnz Cbuf_InsertText_30
Cbuf_InsertText_20:
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
	jmp Sys_LeaveCriticalSection
Cbuf_InsertText_10:
	mov dword [esp+0x4], _cstring_cbuf_inserttext_
	mov dword [esp], 0x1
	call Com_PrintError
	mov dword [ebp+0x8], 0x10
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp Sys_LeaveCriticalSection


;Cbuf_SV_Execute()
Cbuf_SV_Execute:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x101c
	mov ebx, [sv_cmd_text+0x8]
	test ebx, ebx
	jnz Cbuf_SV_Execute_10
	jmp Cbuf_SV_Execute_20
Cbuf_SV_Execute_40:
	mov dword [sv_cmd_text+0x8], 0x0
	call SV_WaitServer
	lea eax, [ebp-0x1018]
	mov [esp], eax
	call Cmd_ExecuteServerString
	mov ebx, [sv_cmd_text+0x8]
	test ebx, ebx
	jz Cbuf_SV_Execute_20
Cbuf_SV_Execute_10:
	mov edi, [sv_cmd_text]
	test ebx, ebx
	jg Cbuf_SV_Execute_30
	xor esi, esi
	xor eax, eax
Cbuf_SV_Execute_90:
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	lea eax, [ebp-0x1018]
	mov [esp], eax
	call memcpy
	mov byte [ebp+esi-0x1018], 0x0
	mov edx, [sv_cmd_text+0x8]
	cmp esi, edx
	jz Cbuf_SV_Execute_40
	lea eax, [esi+0x1]
	sub edx, eax
	mov [sv_cmd_text+0x8], edx
	mov [esp+0x8], edx
	lea eax, [edi+eax]
	mov [esp+0x4], eax
	mov [esp], edi
	call memmove
	call SV_WaitServer
	lea eax, [ebp-0x1018]
	mov [esp], eax
	call Cmd_ExecuteServerString
	mov ebx, [sv_cmd_text+0x8]
	test ebx, ebx
	jnz Cbuf_SV_Execute_10
Cbuf_SV_Execute_20:
	add esp, 0x101c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Cbuf_SV_Execute_30:
	xor ecx, ecx
	xor esi, esi
Cbuf_SV_Execute_70:
	movzx edx, byte [edi+esi]
	lea eax, [ecx+0x1]
	cmp dl, 0x22
	cmovz ecx, eax
	test cl, 0x1
	jnz Cbuf_SV_Execute_50
	cmp dl, 0x3b
	jz Cbuf_SV_Execute_60
Cbuf_SV_Execute_50:
	cmp dl, 0xa
	jz Cbuf_SV_Execute_60
	cmp dl, 0xd
	jz Cbuf_SV_Execute_60
	add esi, 0x1
	cmp ebx, esi
	jnz Cbuf_SV_Execute_70
	mov esi, ebx
Cbuf_SV_Execute_60:
	cmp esi, 0xffe
	jle Cbuf_SV_Execute_80
	mov esi, 0xfff
	mov eax, 0xfff
	jmp Cbuf_SV_Execute_90
Cbuf_SV_Execute_80:
	mov eax, esi
	jmp Cbuf_SV_Execute_90


;Cmd_RemoveCommand(char const*)
Cmd_RemoveCommand:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0x8]
	mov ebx, [cmd_functions]
	test ebx, ebx
	jz Cmd_RemoveCommand_10
	mov esi, cmd_functions
Cmd_RemoveCommand_30:
	mov eax, [ebx+0x4]
	mov [esp+0x4], eax
	mov [esp], edi
	call strcmp
	test eax, eax
	jz Cmd_RemoveCommand_20
	mov esi, ebx
	mov ebx, [ebx]
	test ebx, ebx
	jnz Cmd_RemoveCommand_30
Cmd_RemoveCommand_10:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Cmd_RemoveCommand_20:
	mov eax, [ebx]
	mov [esi], eax
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;SV_Cmd_ArgvBuffer(int, char*, int)
SV_Cmd_ArgvBuffer:
	push ebp
	mov ebp, esp
	push ebx
	mov edx, [ebp+0x8]
	mov ebx, [ebp+0xc]
	mov ecx, [ebp+0x10]
	mov eax, [sv_cmd_args]
	cmp edx, [eax*4+sv_cmd_args+0x44]
	jge SV_Cmd_ArgvBuffer_10
	mov eax, [eax*4+sv_cmd_args+0x64]
	mov eax, [eax+edx*4]
	mov [ebp+0x10], ecx
	mov [ebp+0xc], eax
	mov [ebp+0x8], ebx
	pop ebx
	pop ebp
	jmp Q_strncpyz
SV_Cmd_ArgvBuffer_10:
	mov eax, _cstring_null
	mov [ebp+0x10], ecx
	mov [ebp+0xc], eax
	mov [ebp+0x8], ebx
	pop ebx
	pop ebp
	jmp Q_strncpyz


;Cbuf_ExecuteBuffer(int, int, char const*)
Cbuf_ExecuteBuffer:
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
	jz Cbuf_ExecuteBuffer_10
	mov esi, [ebp+0x10]
	jmp Cbuf_ExecuteBuffer_20
Cbuf_ExecuteBuffer_30:
	xor edi, edi
	xor eax, eax
Cbuf_ExecuteBuffer_80:
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
	call Cmd_ExecuteSingleCommand
	test ebx, ebx
	jz Cbuf_ExecuteBuffer_10
Cbuf_ExecuteBuffer_20:
	test ebx, ebx
	jle Cbuf_ExecuteBuffer_30
	xor ecx, ecx
	xor edi, edi
Cbuf_ExecuteBuffer_60:
	movzx edx, byte [esi+edi]
	lea eax, [ecx+0x1]
	cmp dl, 0x22
	cmovz ecx, eax
	test cl, 0x1
	jnz Cbuf_ExecuteBuffer_40
	cmp dl, 0x3b
	jz Cbuf_ExecuteBuffer_50
Cbuf_ExecuteBuffer_40:
	cmp dl, 0xa
	jz Cbuf_ExecuteBuffer_50
	cmp dl, 0xd
	jz Cbuf_ExecuteBuffer_50
	add edi, 0x1
	cmp ebx, edi
	jnz Cbuf_ExecuteBuffer_60
Cbuf_ExecuteBuffer_50:
	cmp edi, 0xffe
	jle Cbuf_ExecuteBuffer_70
	mov edi, 0xfff
	mov eax, 0xfff
	jmp Cbuf_ExecuteBuffer_80
Cbuf_ExecuteBuffer_10:
	add esp, 0x101c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Cbuf_ExecuteBuffer_70:
	mov eax, edi
	jmp Cbuf_ExecuteBuffer_80


;Cmd_TokenizeString(char const*)
Cmd_TokenizeString:
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
	call Cmd_TokenizeStringInternal
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
Cmd_ComErrorCleanup:
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
Cmd_SetAutoComplete:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov ebx, [cmd_functions]
	test ebx, ebx
	jz Cmd_SetAutoComplete_10
Cmd_SetAutoComplete_30:
	mov eax, [ebx+0x4]
	mov [esp+0x4], eax
	mov [esp], esi
	call strcmp
	test eax, eax
	jz Cmd_SetAutoComplete_20
	mov ebx, [ebx]
	test ebx, ebx
	jnz Cmd_SetAutoComplete_30
Cmd_SetAutoComplete_10:
	xor ebx, ebx
Cmd_SetAutoComplete_20:
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
Cbuf_AddServerText_f:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop


;SV_Cmd_ExecuteString(int, int, char const*)
SV_Cmd_ExecuteString:
	push ebp
	mov ebp, esp
	pop ebp
	jmp Cmd_ExecuteSingleCommand
	nop


;SV_Cmd_TokenizeString(char const*)
SV_Cmd_TokenizeString:
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
	call Cmd_TokenizeStringInternal
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
Cmd_AddCommand:
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
	jz Cmd_AddCommand_10
Cmd_AddCommand_30:
	mov eax, [ebx+0x4]
	mov [esp+0x4], eax
	mov [esp], esi
	call strcmp
	test eax, eax
	jz Cmd_AddCommand_20
	mov ebx, [ebx]
	test ebx, ebx
	jnz Cmd_AddCommand_30
Cmd_AddCommand_10:
	mov [edi+0x4], esi
	mov eax, [ebp-0x1c]
	mov [edi+0x10], eax
	mov eax, [cmd_functions]
	mov [edi], eax
	mov [cmd_functions], edi
Cmd_AddCommand_40:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Cmd_AddCommand_20:
	mov ebx, [ebp-0x1c]
	test ebx, ebx
	jz Cmd_AddCommand_40
	mov [ebp+0x10], esi
	mov dword [ebp+0xc], _cstring_cmd_addcommand_s
	mov dword [ebp+0x8], 0x10
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp Com_Printf


;Cmd_EndTokenizedString()
Cmd_EndTokenizedString:
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
Cmd_ExecuteServerString:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov ebx, [ebp+0x8]
	mov [esp], ebx
	call PbTrapPreExecCmd
	test eax, eax
	jz Cmd_ExecuteServerString_10
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Cmd_ExecuteServerString_10:
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
	call Cmd_TokenizeStringInternal
	mov [esi*4+sv_cmd_args+0x44], eax
	mov esi, [sv_cmd_args]
	mov eax, [esi*4+sv_cmd_args+0x44]
	mov ecx, eax
	add ecx, [sv_cmd_argsPrivate+0x2820]
	mov [sv_cmd_argsPrivate+0x2820], ecx
	mov edx, [sv_cmd_argsPrivate+0x2824]
	add [esi*4+sv_cmd_argsPrivate+0x2800], edx
	cmp eax, 0x0
	jz Cmd_ExecuteServerString_20
	jle Cmd_ExecuteServerString_30
	mov eax, [esi*4+sv_cmd_args+0x64]
	mov edi, [eax]
Cmd_ExecuteServerString_60:
	mov ebx, [sv_cmd_functions]
	test ebx, ebx
	jz Cmd_ExecuteServerString_20
	mov esi, sv_cmd_functions
Cmd_ExecuteServerString_50:
	mov eax, [ebx+0x4]
	mov [esp+0x4], eax
	mov [esp], edi
	call Q_stricmp
	test eax, eax
	jz Cmd_ExecuteServerString_40
	mov esi, ebx
	mov ebx, [ebx]
	test ebx, ebx
	jnz Cmd_ExecuteServerString_50
Cmd_ExecuteServerString_70:
	mov ecx, [sv_cmd_argsPrivate+0x2820]
	mov esi, [sv_cmd_args]
	mov edx, [sv_cmd_argsPrivate+0x2824]
Cmd_ExecuteServerString_20:
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
Cmd_ExecuteServerString_30:
	mov edi, _cstring_null
	jmp Cmd_ExecuteServerString_60
Cmd_ExecuteServerString_40:
	mov eax, [ebx]
	mov [esi], eax
	mov eax, [sv_cmd_functions]
	mov [ebx], eax
	mov [sv_cmd_functions], ebx
	mov eax, [ebx+0x10]
	test eax, eax
	jz Cmd_ExecuteServerString_70
	call eax
	mov ecx, [sv_cmd_argsPrivate+0x2820]
	mov esi, [sv_cmd_args]
	mov edx, [sv_cmd_argsPrivate+0x2824]
	jmp Cmd_ExecuteServerString_20


;Cmd_ExecuteSingleCommand(int, int, char const*)
Cmd_ExecuteSingleCommand:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov esi, [ebp+0x10]
	mov [esp], esi
	call PbTrapPreExecCmd
	test eax, eax
	jz Cmd_ExecuteSingleCommand_10
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Cmd_ExecuteSingleCommand_10:
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
	call Cmd_TokenizeStringInternal
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
	jnz Cmd_ExecuteSingleCommand_20
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
Cmd_ExecuteSingleCommand_20:
	mov eax, [ebp+0x8]
	mov [edx*4+cmd_args+0x4], eax
	mov eax, [ebp+0xc]
	mov [edx*4+cmd_args+0x24], eax
	mov ecx, [edx*4+cmd_args+0x44]
	test ecx, ecx
	jle Cmd_ExecuteSingleCommand_30
	mov eax, [edx*4+cmd_args+0x64]
	mov eax, [eax]
	mov [ebp-0x1c], eax
Cmd_ExecuteSingleCommand_130:
	mov ebx, [cmd_functions]
	test ebx, ebx
	jz Cmd_ExecuteSingleCommand_40
	mov edi, cmd_functions
Cmd_ExecuteSingleCommand_60:
	mov eax, [ebx+0x4]
	mov [esp+0x4], eax
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jz Cmd_ExecuteSingleCommand_50
	mov edi, ebx
	mov ebx, [ebx]
	test ebx, ebx
	jnz Cmd_ExecuteSingleCommand_60
Cmd_ExecuteSingleCommand_40:
	mov dword [esp+0x8], 0x3
	mov dword [esp+0x4], _cstring_pb_
	mov [esp], esi
	call Q_stricmpn
	test eax, eax
	jnz Cmd_ExecuteSingleCommand_70
	mov dword [esp+0x8], 0x3
	mov dword [esp+0x4], _cstring_sv_
	lea eax, [esi+0x3]
	mov [esp], eax
	call Q_stricmpn
	test eax, eax
	jz Cmd_ExecuteSingleCommand_80
	mov [esp+0x8], esi
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, esi
	repne scasb
	not ecx
	mov [esp+0x4], ecx
	mov dword [esp], 0xe
	call PbClAddEvent
Cmd_ExecuteSingleCommand_90:
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
Cmd_ExecuteSingleCommand_70:
	call Cvar_Command
	test eax, eax
	jnz Cmd_ExecuteSingleCommand_90
	mov eax, com_sv_running
	mov eax, [eax]
	test eax, eax
	jz Cmd_ExecuteSingleCommand_100
	cmp byte [eax+0xc], 0x0
	jnz Cmd_ExecuteSingleCommand_110
Cmd_ExecuteSingleCommand_100:
	mov [esp+0x4], esi
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CL_ForwardCommandToServer
	jmp Cmd_ExecuteSingleCommand_90
Cmd_ExecuteSingleCommand_50:
	mov eax, [ebx]
	mov [edi], eax
	mov eax, [cmd_functions]
	mov [ebx], eax
	mov [cmd_functions], ebx
	mov eax, [ebx+0x10]
	test eax, eax
	jz Cmd_ExecuteSingleCommand_40
	cmp eax, Cbuf_AddServerText_f
	jz Cmd_ExecuteSingleCommand_120
	call eax
	jmp Cmd_ExecuteSingleCommand_90
Cmd_ExecuteSingleCommand_30:
	mov dword [ebp-0x1c], _cstring_null
	jmp Cmd_ExecuteSingleCommand_130
Cmd_ExecuteSingleCommand_80:
	mov [esp+0xc], esi
	cld
	mov ecx, 0xffffffff
	mov edi, esi
	repne scasb
	not ecx
	mov [esp+0x8], ecx
	mov dword [esp+0x4], 0xffffffff
	mov dword [esp], 0xe
	call PbSvAddEvent
	jmp Cmd_ExecuteSingleCommand_90
Cmd_ExecuteSingleCommand_110:
	call SV_GameCommand
	test eax, eax
	jnz Cmd_ExecuteSingleCommand_90
	jmp Cmd_ExecuteSingleCommand_100
Cmd_ExecuteSingleCommand_120:
	call SV_WaitServer
	mov [esp], esi
	call Cmd_ExecuteServerString
	jmp Cmd_ExecuteSingleCommand_90


;SV_Cmd_EndTokenizedString()
SV_Cmd_EndTokenizedString:
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
Cmd_GetAutoCompleteFileList:
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
	jz Cmd_GetAutoCompleteFileList_10
Cmd_GetAutoCompleteFileList_30:
	mov eax, [ebx+0x4]
	mov [esp+0x4], eax
	mov [esp], esi
	call strcmp
	test eax, eax
	jz Cmd_GetAutoCompleteFileList_20
	mov ebx, [ebx]
	test ebx, ebx
	jnz Cmd_GetAutoCompleteFileList_30
Cmd_GetAutoCompleteFileList_10:
	xor eax, eax
Cmd_GetAutoCompleteFileList_40:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Cmd_GetAutoCompleteFileList_20:
	mov eax, [ebx+0x8]
	test eax, eax
	jz Cmd_GetAutoCompleteFileList_10
	mov edx, [ebx+0xc]
	test edx, edx
	jz Cmd_GetAutoCompleteFileList_10
	mov ecx, [ebp+0x10]
	mov [esp+0x10], ecx
	mov [esp+0xc], edi
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], edx
	mov [esp], eax
	call FS_ListFiles
	jmp Cmd_GetAutoCompleteFileList_40
	nop


;Cmd_TokenizeStringWithLimit(char const*, int)
Cmd_TokenizeStringWithLimit:
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
	call Cmd_TokenizeStringInternal
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
Cmd_AddServerCommandInternal:
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
	jz Cmd_AddServerCommandInternal_10
Cmd_AddServerCommandInternal_30:
	mov eax, [ebx+0x4]
	mov [esp+0x4], eax
	mov [esp], esi
	call strcmp
	test eax, eax
	jz Cmd_AddServerCommandInternal_20
	mov ebx, [ebx]
	test ebx, ebx
	jnz Cmd_AddServerCommandInternal_30
Cmd_AddServerCommandInternal_10:
	mov [edi+0x4], esi
	mov eax, [ebp-0x1c]
	mov [edi+0x10], eax
	mov eax, [sv_cmd_functions]
	mov [edi], eax
	mov [sv_cmd_functions], edi
Cmd_AddServerCommandInternal_40:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Cmd_AddServerCommandInternal_20:
	mov eax, [ebp-0x1c]
	test eax, eax
	jz Cmd_AddServerCommandInternal_40
	mov [ebp+0x10], esi
	mov dword [ebp+0xc], _cstring_cmd_addservercom
	mov dword [ebp+0x8], 0x10
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp Com_Printf


;Cmd_Init()
Cmd_Init:
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
	jz Cmd_Init_10
	mov [ebp-0x2c], eax
	cld
	mov edx, eax
	jmp Cmd_Init_20
Cmd_Init_50:
	mov edx, [ebp-0x2c]
Cmd_Init_20:
	mov edx, [edx+0x4]
	mov ebx, 0x8
	mov esi, _cstring_cmdlist
	mov edi, edx
	mov ecx, ebx
	repe cmpsb
	mov eax, 0x0
	jz Cmd_Init_30
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
Cmd_Init_30:
	test eax, eax
	jz Cmd_Init_40
	mov ecx, [ebp-0x2c]
	mov ecx, [ecx]
	mov [ebp-0x2c], ecx
	test ecx, ecx
	jnz Cmd_Init_50
	mov edi, [ebp-0x1c]
Cmd_Init_240:
	mov dword [_ZZ8Cmd_InitvE14Cmd_List_f_VAR+0x4], _cstring_cmdlist
	mov dword [_ZZ8Cmd_InitvE14Cmd_List_f_VAR+0x10], 0x138302
	mov [_ZZ8Cmd_InitvE14Cmd_List_f_VAR], edi
	mov dword [cmd_functions], _ZZ8Cmd_InitvE14Cmd_List_f_VAR
Cmd_Init_260:
	mov edi, [cmd_functions]
	mov [ebp-0x20], edi
	test edi, edi
	jz Cmd_Init_60
	mov [ebp-0x2c], edi
	cld
	mov eax, edi
	jmp Cmd_Init_70
Cmd_Init_100:
	mov eax, [ebp-0x2c]
Cmd_Init_70:
	mov eax, [eax+0x4]
	mov ebx, 0x5
	mov esi, _cstring_exec
	mov edi, eax
	mov ecx, ebx
	repe cmpsb
	mov eax, 0x0
	jz Cmd_Init_80
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
Cmd_Init_80:
	test eax, eax
	jz Cmd_Init_90
	mov ecx, [ebp-0x2c]
	mov ecx, [ecx]
	mov [ebp-0x2c], ecx
	test ecx, ecx
	jnz Cmd_Init_100
	mov eax, [ebp-0x20]
Cmd_Init_230:
	mov dword [_ZZ8Cmd_InitvE14Cmd_Exec_f_VAR+0x4], _cstring_exec
	mov dword [_ZZ8Cmd_InitvE14Cmd_Exec_f_VAR+0x10], 0x13948c
	mov [_ZZ8Cmd_InitvE14Cmd_Exec_f_VAR], eax
	mov dword [cmd_functions], _ZZ8Cmd_InitvE14Cmd_Exec_f_VAR
Cmd_Init_250:
	mov edi, [cmd_functions]
	mov [ebp-0x24], edi
	test edi, edi
	jz Cmd_Init_110
	mov [ebp-0x2c], edi
	cld
	mov eax, edi
	jmp Cmd_Init_120
Cmd_Init_150:
	mov eax, [ebp-0x2c]
Cmd_Init_120:
	mov eax, [eax+0x4]
	mov ebx, 0x5
	mov esi, _cstring_vstr
	mov edi, eax
	mov ecx, ebx
	repe cmpsb
	mov eax, 0x0
	jz Cmd_Init_130
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
Cmd_Init_130:
	test eax, eax
	jz Cmd_Init_140
	mov ecx, [ebp-0x2c]
	mov ecx, [ecx]
	mov [ebp-0x2c], ecx
	test ecx, ecx
	jnz Cmd_Init_150
	mov edx, [ebp-0x24]
Cmd_Init_220:
	mov dword [_ZZ8Cmd_InitvE14Cmd_Vstr_f_VAR+0x4], _cstring_vstr
	mov dword [_ZZ8Cmd_InitvE14Cmd_Vstr_f_VAR+0x10], 0x138438
	mov [_ZZ8Cmd_InitvE14Cmd_Vstr_f_VAR], edx
	mov dword [cmd_functions], _ZZ8Cmd_InitvE14Cmd_Vstr_f_VAR
Cmd_Init_270:
	mov edi, [cmd_functions]
	mov [ebp-0x28], edi
	test edi, edi
	jz Cmd_Init_160
	mov [ebp-0x2c], edi
	cld
	mov eax, edi
	jmp Cmd_Init_170
Cmd_Init_200:
	mov eax, [ebp-0x2c]
Cmd_Init_170:
	mov eax, [eax+0x4]
	mov ebx, 0x5
	mov esi, _cstring_wait
	mov edi, eax
	mov ecx, ebx
	repe cmpsb
	mov eax, 0x0
	jz Cmd_Init_180
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
Cmd_Init_180:
	test eax, eax
	jz Cmd_Init_190
	mov ecx, [ebp-0x2c]
	mov ecx, [ecx]
	mov [ebp-0x2c], ecx
	test ecx, ecx
	jnz Cmd_Init_200
	mov ecx, [ebp-0x28]
Cmd_Init_210:
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
Cmd_Init_160:
	mov ecx, edi
	jmp Cmd_Init_210
Cmd_Init_110:
	mov edx, edi
	jmp Cmd_Init_220
Cmd_Init_60:
	mov eax, edi
	jmp Cmd_Init_230
Cmd_Init_10:
	mov edi, eax
	jmp Cmd_Init_240
Cmd_Init_90:
	mov dword [esp+0x8], _cstring_exec
	mov dword [esp+0x4], _cstring_cmd_addcommand_s
	mov dword [esp], 0x10
	call Com_Printf
	jmp Cmd_Init_250
Cmd_Init_40:
	mov dword [esp+0x8], _cstring_cmdlist
	mov dword [esp+0x4], _cstring_cmd_addcommand_s
	mov dword [esp], 0x10
	call Com_Printf
	jmp Cmd_Init_260
Cmd_Init_190:
	mov dword [esp+0x8], _cstring_wait
	mov dword [esp+0x4], _cstring_cmd_addcommand_s
	mov dword [esp], 0x10
	call Com_Printf
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Cmd_Init_140:
	mov dword [esp+0x8], _cstring_vstr
	mov dword [esp+0x4], _cstring_cmd_addcommand_s
	mov dword [esp], 0x10
	call Com_Printf
	jmp Cmd_Init_270
	nop


;Cbuf_Init()
Cbuf_Init:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp], 0x10
	call Sys_EnterCriticalSection
	mov dword [cmd_textArray], cmd_text_buf
	mov dword [cmd_textArray+0x4], 0x10000
	mov dword [cmd_textArray+0x8], 0x0
	mov byte [cmd_insideCBufExecute], 0x0
	mov dword [sv_cmd_text], sv_cmd_text_buf
	mov dword [sv_cmd_text+0x4], 0x10000
	mov dword [sv_cmd_text+0x8], 0x0
	mov dword [esp], 0x10
	call Sys_LeaveCriticalSection
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

