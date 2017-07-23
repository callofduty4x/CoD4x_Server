;Imports of win_storage:
	extern cmd_args
	extern atoi
	extern LiveStorage_ValidateSetStatCmd
	extern g_entHandleInfoArray
	extern Com_PrintError
	extern CL_DumpReliableCommands
	extern Com_Error
	extern Com_Printf
	extern Q_strncpyz
	extern Q_stricmpn
	extern Q_stricmp
	extern Cvar_SetIntByName
	extern fs_gameDirVar
	extern memset
	extern Com_BlockChecksumKey32
	extern LiveStorage_StatsInit
	extern CL_ControllerIndexFromClientNum
	extern Com_sprintf
	extern FS_DeleteInDir
	extern FS_Rename
	extern Cmd_AddCommand
	extern Cvar_RegisterInt
	extern Com_HasPlayerProfile
	extern Com_BuildPlayerProfilePath
	extern memcpy
	extern timeGetTime
	extern cl_cdkey
	extern Com_BlockChecksum128
	extern Com_BlockChecksum128Cat
	extern FS_WriteFileToDir
	extern strchr
	extern FS_CheckFileSystemStarted
	extern FS_FOpenFileRead
	extern FS_FCloseFile
	extern FS_Read
	extern Com_SetErrorMessage
	extern FS_ReplaceSeparators

;Exports of win_storage:
	global g_statsDir
	global statData
	global LiveStorage_UploadStatsCmd
	global _ZZ16LiveStorage_InitvE28LiveStorage_ReadStatsCmd_VAR
	global _ZZ16LiveStorage_InitvE30LiveStorage_UploadStatsCmd_VAR
	global _ZZ16LiveStorage_InitvE32LiveStorage_StatGetInDvarCmd_VAR
	global _ZZ16LiveStorage_InitvE26LiveStorage_StatSetCmd_VAR
	global LiveStorage_StatSetCmd
	global LiveStorage_StatGetInDvarCmd
	global LiveStorage_ReadStatsCmd
	global LiveStorage_NoStatsFound
	global LiveStorage_HandleCorruptStats
	global LiveStorage_Init
	global LiveStorage_GetStat
	global LiveStorage_NewUser
	global LiveStorage_SetStat
	global LiveStorage_ReadStats
	global LiveStorage_UploadStats
	global LiveStorage_DoWeHaveStats
	global LiveStorage_GetStatBuffer
	global LiveStorage_ClearWriteFlag
	global LiveStorage_ReadStatsFromDir
	global LiveStorage_GetControllerForCmd
	global LiveStorage_ReadStatsIfDirChanged
	global allowedDvarNames
	global stat_version
	global uiStatDvarPrefix


SECTION .text


;LiveStorage_UploadStatsCmd()
LiveStorage_UploadStatsCmd:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp], 0x0
	call LiveStorage_UploadStats
	leave
	ret


;LiveStorage_StatSetCmd()
LiveStorage_StatSetCmd:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, cmd_args
	mov eax, [ebx]
	cmp dword [ebx+eax*4+0x44], 0x2
	jle LiveStorage_StatSetCmd_10
	mov eax, [ebx+eax*4+0x64]
	mov eax, [eax+0x4]
	mov [esp], eax
	call atoi
	mov esi, eax
	mov eax, [ebx]
	cmp dword [ebx+eax*4+0x44], 0x2
	jg LiveStorage_StatSetCmd_20
	mov eax, _cstring_null
	mov [esp], eax
	call atoi
	mov ebx, eax
	mov [esp+0x4], eax
	mov [esp], esi
	call LiveStorage_ValidateSetStatCmd
	movzx edx, byte [statData+0x2000]
	test dl, dl
	jz LiveStorage_StatSetCmd_30
LiveStorage_StatSetCmd_60:
	cmp esi, 0x7cf
	jle LiveStorage_StatSetCmd_40
	cmp esi, 0xda9
	jg LiveStorage_StatSetCmd_30
	mov eax, [esi*4+g_entHandleInfoArray+0x7274]
	jmp LiveStorage_StatSetCmd_50
LiveStorage_StatSetCmd_20:
	mov eax, [ebx+eax*4+0x64]
	mov eax, [eax+0x8]
	mov [esp], eax
	call atoi
	mov ebx, eax
	mov [esp+0x4], eax
	mov [esp], esi
	call LiveStorage_ValidateSetStatCmd
	movzx edx, byte [statData+0x2000]
	test dl, dl
	jnz LiveStorage_StatSetCmd_60
LiveStorage_StatSetCmd_30:
	xor eax, eax
LiveStorage_StatSetCmd_50:
	cmp eax, ebx
	jz LiveStorage_StatSetCmd_70
	test dl, dl
	jz LiveStorage_StatSetCmd_80
	cmp esi, 0x7cf
	jg LiveStorage_StatSetCmd_90
	cmp ebx, 0xff
	ja LiveStorage_StatSetCmd_100
LiveStorage_StatSetCmd_130:
	lea edx, [esi+0x4]
	movzx eax, byte [edx+statData]
	cmp ebx, eax
	jz LiveStorage_StatSetCmd_110
	mov [edx+statData], bl
LiveStorage_StatSetCmd_120:
	mov byte [statData+0x2001], 0x1
LiveStorage_StatSetCmd_110:
	mov byte [statData+0x2001], 0x1
LiveStorage_StatSetCmd_70:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
LiveStorage_StatSetCmd_10:
	mov dword [esp+0x4], _cstring_statset_usage_st
	mov dword [esp], 0xf
	call Com_PrintError
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
LiveStorage_StatSetCmd_90:
	cmp esi, 0xda9
	jg LiveStorage_StatSetCmd_110
	lea eax, [esi*4-0x176c]
	cmp ebx, [eax+statData]
	jz LiveStorage_StatSetCmd_110
	mov [eax+statData], ebx
	jmp LiveStorage_StatSetCmd_120
LiveStorage_StatSetCmd_40:
	movzx eax, byte [esi+statData+0x4]
	jmp LiveStorage_StatSetCmd_50
LiveStorage_StatSetCmd_100:
	mov dword [esp], 0x0
	call CL_DumpReliableCommands
	mov [esp+0xc], ebx
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_trying_to_set_in
	mov dword [esp], 0x3
	call Com_Error
	jmp LiveStorage_StatSetCmd_130
LiveStorage_StatSetCmd_80:
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_tried_to_set_sta
	mov dword [esp], 0xe
	call Com_Printf
	jmp LiveStorage_StatSetCmd_110
	nop


;LiveStorage_StatGetInDvarCmd()
LiveStorage_StatGetInDvarCmd:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x42c
	mov ebx, cmd_args
	mov eax, [ebx]
	cmp dword [ebx+eax*4+0x44], 0x2
	jle LiveStorage_StatGetInDvarCmd_10
	mov eax, [ebx+eax*4+0x64]
	mov eax, [eax+0x4]
	mov [esp], eax
	call atoi
	mov [ebp-0x41c], eax
	mov eax, [ebx]
	cmp dword [ebx+eax*4+0x44], 0x2
	jg LiveStorage_StatGetInDvarCmd_20
	mov eax, _cstring_null
LiveStorage_StatGetInDvarCmd_60:
	mov dword [esp+0x8], 0x400
	mov [esp+0x4], eax
	lea edi, [ebp-0x418]
	mov [esp], edi
	call Q_strncpyz
	mov dword [esp+0x8], 0x8
	mov eax, [uiStatDvarPrefix]
	mov [esp+0x4], eax
	mov [esp], edi
	call Q_stricmpn
	test eax, eax
	jz LiveStorage_StatGetInDvarCmd_30
	xor esi, esi
	mov ebx, allowedDvarNames
LiveStorage_StatGetInDvarCmd_50:
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov [esp], edi
	call Q_stricmp
	test eax, eax
	jz LiveStorage_StatGetInDvarCmd_40
	add esi, 0x1
	add ebx, 0x4
	cmp esi, 0x7
	jnz LiveStorage_StatGetInDvarCmd_50
LiveStorage_StatGetInDvarCmd_70:
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_invalid_dvar_s_f
	mov dword [esp], 0xf
	call Com_PrintError
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
LiveStorage_StatGetInDvarCmd_20:
	mov eax, [ebx+eax*4+0x64]
	mov eax, [eax+0x8]
	jmp LiveStorage_StatGetInDvarCmd_60
LiveStorage_StatGetInDvarCmd_40:
	cmp esi, 0x7
	jz LiveStorage_StatGetInDvarCmd_70
LiveStorage_StatGetInDvarCmd_30:
	cmp byte [statData+0x2000], 0x0
	jz LiveStorage_StatGetInDvarCmd_80
	cmp dword [ebp-0x41c], 0x7cf
	jle LiveStorage_StatGetInDvarCmd_90
	cmp dword [ebp-0x41c], 0xda9
	jg LiveStorage_StatGetInDvarCmd_80
	mov edx, [ebp-0x41c]
	mov eax, [edx*4+g_entHandleInfoArray+0x7274]
	jmp LiveStorage_StatGetInDvarCmd_100
LiveStorage_StatGetInDvarCmd_10:
	mov dword [esp+0x4], _cstring_statgetindvar_us
	mov dword [esp], 0xf
	call Com_PrintError
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
LiveStorage_StatGetInDvarCmd_80:
	xor eax, eax
LiveStorage_StatGetInDvarCmd_100:
	mov [esp+0x4], eax
	mov [esp], edi
	call Cvar_SetIntByName
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
LiveStorage_StatGetInDvarCmd_90:
	mov edx, [ebp-0x41c]
	movzx eax, byte [edx+statData+0x4]
	jmp LiveStorage_StatGetInDvarCmd_100


;LiveStorage_ReadStatsCmd()
LiveStorage_ReadStatsCmd:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, fs_gameDirVar
	mov eax, [eax]
	mov eax, [eax+0xc]
	mov [esp], eax
	call LiveStorage_ReadStatsFromDir
	leave
	ret


;LiveStorage_NoStatsFound()
LiveStorage_NoStatsFound:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov dword [esp+0x8], 0x2000
	mov dword [esp+0x4], 0x0
	mov dword [esp], statData
	call memset
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x1ffc
	mov dword [esp], statData+0x4
	call Com_BlockChecksumKey32
	mov [ebp-0xc], eax
	mov [statData], eax
	mov byte [statData+0x2000], 0x1
	mov dword [esp+0x4], _cstring_no_stats_found_z
	mov dword [esp], 0x10
	call Com_Printf
	mov dword [esp], 0x0
	call LiveStorage_StatsInit
	mov eax, [stat_version]
	mov ebx, [eax+0xc]
	mov dword [esp], 0x0
	call CL_ControllerIndexFromClientNum
	cmp byte [statData+0x2000], 0x0
	jz LiveStorage_NoStatsFound_10
	cmp ebx, 0xff
	ja LiveStorage_NoStatsFound_20
LiveStorage_NoStatsFound_40:
	movzx eax, byte [statData+0x12f]
	cmp ebx, eax
	jz LiveStorage_NoStatsFound_30
	mov [statData+0x12f], bl
	mov byte [statData+0x2001], 0x1
LiveStorage_NoStatsFound_30:
	add esp, 0x24
	pop ebx
	pop ebp
	ret
LiveStorage_NoStatsFound_20:
	mov dword [esp], 0x0
	call CL_DumpReliableCommands
	mov [esp+0xc], ebx
	mov dword [esp+0x8], 0x12b
	mov dword [esp+0x4], _cstring_trying_to_set_in
	mov dword [esp], 0x3
	call Com_Error
	jmp LiveStorage_NoStatsFound_40
LiveStorage_NoStatsFound_10:
	mov dword [esp+0x8], 0x12b
	mov dword [esp+0x4], _cstring_tried_to_set_sta
	mov dword [esp], 0xe
	call Com_Printf
	add esp, 0x24
	pop ebx
	pop ebp
	ret
	nop


;LiveStorage_HandleCorruptStats(char const*)
LiveStorage_HandleCorruptStats:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x130
	mov esi, eax
	mov dword [esp+0x10], _cstring_corrupt
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_ss
	mov dword [esp+0x4], 0x10e
	lea ebx, [ebp-0x116]
	mov [esp], ebx
	call Com_sprintf
	mov dword [esp+0x4], _cstring_players
	mov [esp], ebx
	call FS_DeleteInDir
	mov dword [esp+0xc], _cstring_players
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_players
	mov [esp], esi
	call FS_Rename
	mov dword [esp+0x4], _cstring_players
	mov [esp], esi
	call FS_DeleteInDir
	call LiveStorage_NoStatsFound
	mov dword [esp+0x4], _cstring_platform_statsre
	mov dword [esp], 0x2
	call Com_Error
	add esp, 0x130
	pop ebx
	pop esi
	pop ebp
	ret


;LiveStorage_Init()
LiveStorage_Init:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	mov dword [esp+0x8], 0x2002
	mov dword [esp+0x4], 0x0
	mov dword [esp], statData
	call memset
	mov dword [esp+0x8], _ZZ16LiveStorage_InitvE26LiveStorage_StatSetCmd_VAR
	mov dword [esp+0x4], LiveStorage_StatSetCmd
	mov dword [esp], _cstring_statset
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ16LiveStorage_InitvE32LiveStorage_StatGetInDvarCmd_VAR
	mov dword [esp+0x4], LiveStorage_StatGetInDvarCmd
	mov dword [esp], _cstring_statgetindvar
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ16LiveStorage_InitvE30LiveStorage_UploadStatsCmd_VAR
	mov dword [esp+0x4], LiveStorage_UploadStatsCmd
	mov dword [esp], _cstring_uploadstats
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ16LiveStorage_InitvE28LiveStorage_ReadStatsCmd_VAR
	mov dword [esp+0x4], LiveStorage_ReadStatsCmd
	mov dword [esp], _cstring_readstats
	call Cmd_AddCommand
	mov dword [esp+0x14], _cstring_stats_version_nu
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0xff
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0xa
	mov dword [esp], _cstring_stat_version
	call Cvar_RegisterInt
	mov [stat_version], eax
	mov byte [g_statsDir], 0x0
	leave
	ret


;LiveStorage_GetStat(int, int)
LiveStorage_GetStat:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0xc]
	cmp byte [statData+0x2000], 0x0
	jz LiveStorage_GetStat_10
	cmp eax, 0x7cf
	jle LiveStorage_GetStat_20
	cmp eax, 0xda9
	jg LiveStorage_GetStat_10
	mov eax, [eax*4+g_entHandleInfoArray+0x7274]
	pop ebp
	ret
LiveStorage_GetStat_20:
	movzx eax, byte [eax+statData+0x4]
	pop ebp
	ret
LiveStorage_GetStat_10:
	xor eax, eax
	pop ebp
	ret
	nop


;LiveStorage_NewUser(int)
LiveStorage_NewUser:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x8], 0x2002
	mov dword [esp+0x4], 0x0
	mov dword [esp], statData
	call memset
	leave
	ret


;LiveStorage_SetStat(int, int, int)
LiveStorage_SetStat:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0xc]
	mov esi, [ebp+0x10]
	cmp byte [statData+0x2000], 0x0
	jz LiveStorage_SetStat_10
	cmp ebx, 0x7cf
	jg LiveStorage_SetStat_20
	cmp esi, 0xff
	ja LiveStorage_SetStat_30
LiveStorage_SetStat_60:
	lea edx, [ebx+0x4]
	movzx eax, byte [edx+statData]
	cmp esi, eax
	jz LiveStorage_SetStat_40
	mov eax, esi
	mov [edx+statData], al
LiveStorage_SetStat_50:
	mov byte [statData+0x2001], 0x1
LiveStorage_SetStat_40:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
LiveStorage_SetStat_20:
	cmp ebx, 0xda9
	jg LiveStorage_SetStat_40
	lea eax, [ebx*4-0x176c]
	cmp [eax+statData], esi
	jz LiveStorage_SetStat_40
	mov [eax+statData], esi
	jmp LiveStorage_SetStat_50
LiveStorage_SetStat_10:
	mov [ebp+0x10], ebx
	mov dword [ebp+0xc], _cstring_tried_to_set_sta
	mov dword [ebp+0x8], 0xe
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp Com_Printf
LiveStorage_SetStat_30:
	mov dword [esp], 0x0
	call CL_DumpReliableCommands
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_trying_to_set_in
	mov dword [esp], 0x3
	call Com_Error
	jmp LiveStorage_SetStat_60
	nop


;LiveStorage_ReadStats(int)
LiveStorage_ReadStats:
	push ebp
	mov ebp, esp
	mov eax, fs_gameDirVar
	mov eax, [eax]
	mov eax, [eax+0xc]
	mov [ebp+0x8], eax
	pop ebp
	jmp LiveStorage_ReadStatsFromDir


;LiveStorage_UploadStats(int)
LiveStorage_UploadStats:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x22bc
	cmp byte [statData+0x2000], 0x0
	jz LiveStorage_UploadStats_10
	cmp byte [statData+0x2001], 0x0
	jnz LiveStorage_UploadStats_20
LiveStorage_UploadStats_10:
	add esp, 0x22bc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
LiveStorage_UploadStats_20:
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x1ffc
	mov dword [esp], statData+0x4
	call Com_BlockChecksumKey32
	mov [ebp-0x1c], eax
	mov [statData], eax
	call Com_HasPlayerProfile
	test al, al
	jz LiveStorage_UploadStats_10
	cmp byte [g_statsDir], 0x0
	jz LiveStorage_UploadStats_30
	mov dword [esp+0x10], _cstring_mpdata
	mov dword [esp+0xc], g_statsDir
	mov dword [esp+0x8], _cstring_ss1
	mov dword [esp+0x4], 0x104
	lea eax, [ebp-0x170]
	mov [esp], eax
	call Com_BuildPlayerProfilePath
LiveStorage_UploadStats_80:
	lea eax, [ebp-0x2170]
	mov dword [esp+0x8], 0x2000
	mov dword [esp+0x4], statData
	mov [esp], eax
	call memcpy
	mov dword [esp+0x8], 0x104
	mov dword [esp+0x4], g_statsDir
	lea eax, [ebp-0x2274]
	mov [esp], eax
	call Q_strncpyz
	mov dword [ebp-0x228c], 0x306d7769
	call timeGetTime
	mov [ebp-0x2288], eax
	mov [ebp-0x1c], eax
	lea edi, [ebp-0x6c]
	mov [esp+0xc], edi
	mov dword [esp+0x8], 0x1f93ab07
	mov dword [esp+0x4], 0x22
	mov eax, cl_cdkey
	mov [esp], eax
	call Com_BlockChecksum128
	mov ebx, 0x1
	lea esi, [ebp-0x4c]
LiveStorage_UploadStats_40:
	lea eax, [ebx*4]
	mov edx, [edi+eax-0x4]
	mov ecx, edx
	xor ecx, 0x36363636
	mov [esi+eax-0x4], ecx
	xor edx, 0x5c5c5c5c
	mov [ebp+eax-0x60], edx
	add ebx, 0x1
	cmp ebx, 0x5
	jnz LiveStorage_UploadStats_40
	lea ebx, [ebp-0x2c]
	mov [esp+0x10], ebx
	mov dword [esp+0xc], 0x4
	lea eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x10
	mov [esp], esi
	call Com_BlockChecksum128Cat
	lea eax, [ebp-0x3c]
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x10
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x10
	lea eax, [ebp-0x5c]
	mov [esp], eax
	call Com_BlockChecksum128Cat
	lea eax, [ebp-0x2284]
	mov [esp+0xc], eax
	mov eax, [ebp-0x34]
	sub eax, 0x6d7289b4
	xor eax, [ebp-0x2288]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x2104
	lea eax, [ebp-0x2274]
	mov [esp], eax
	call Com_BlockChecksum128
	mov esi, [ebp-0x174]
	mov dword [ebp-0x22a4], 0x0
LiveStorage_UploadStats_60:
	sub dword [ebp-0x22a4], 0x61c88647
	mov eax, [ebp-0x22a4]
	shr eax, 0x2
	and eax, 0x3
	mov [ebp-0x22a0], eax
	mov dword [ebp-0x229c], 0x0
	lea edi, [ebp-0x2284]
LiveStorage_UploadStats_50:
	mov ecx, [edi+0x4]
	mov ebx, esi
	shr ebx, 0x5
	lea eax, [ecx*4]
	xor ebx, eax
	mov eax, ecx
	shr eax, 0x3
	mov edx, esi
	shl edx, 0x4
	xor eax, edx
	add ebx, eax
	xor ecx, [ebp-0x22a4]
	mov eax, [ebp-0x229c]
	and eax, 0x3
	xor eax, [ebp-0x22a0]
	xor esi, [ebp+eax*4-0x3c]
	lea esi, [ecx+esi]
	xor esi, ebx
	add esi, [edi]
	mov [edi], esi
	add dword [ebp-0x229c], 0x1
	add edi, 0x4
	cmp dword [ebp-0x229c], 0x844
	jnz LiveStorage_UploadStats_50
	mov ecx, [ebp-0x2284]
	mov ebx, esi
	shr ebx, 0x5
	lea eax, [ecx*4]
	xor ebx, eax
	mov eax, ecx
	shr eax, 0x3
	mov edx, esi
	shl edx, 0x4
	xor eax, edx
	add ebx, eax
	xor ecx, [ebp-0x22a4]
	mov eax, [ebp-0x22a0]
	xor esi, [ebp+eax*4-0x3c]
	lea esi, [ecx+esi]
	xor esi, ebx
	add esi, [ebp-0x174]
	mov [ebp-0x174], esi
	cmp dword [ebp-0x22a4], 0xb54cda56
	jnz LiveStorage_UploadStats_60
	mov dword [esp+0xc], 0x211c
	lea eax, [ebp-0x228c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_players
	lea eax, [ebp-0x170]
	mov [esp], eax
	call FS_WriteFileToDir
	test eax, eax
	jnz LiveStorage_UploadStats_70
	lea eax, [ebp-0x170]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_unable_to_write_
	mov dword [esp], 0x10
	call Com_Printf
	jmp LiveStorage_UploadStats_10
LiveStorage_UploadStats_30:
	mov dword [esp+0x8], _cstring_mpdata
	mov dword [esp+0x4], 0x104
	lea eax, [ebp-0x170]
	mov [esp], eax
	call Com_BuildPlayerProfilePath
	jmp LiveStorage_UploadStats_80
LiveStorage_UploadStats_70:
	mov byte [statData+0x2001], 0x0
	mov dword [esp+0x4], _cstring_successfully_wro
	mov dword [esp], 0x10
	call Com_Printf
	jmp LiveStorage_UploadStats_10


;LiveStorage_DoWeHaveStats(int)
LiveStorage_DoWeHaveStats:
	push ebp
	mov ebp, esp
	movzx eax, byte [statData+0x2000]
	pop ebp
	ret


;LiveStorage_GetStatBuffer(int)
LiveStorage_GetStatBuffer:
	push ebp
	mov ebp, esp
	mov eax, statData
	pop ebp
	ret


;LiveStorage_ClearWriteFlag()
LiveStorage_ClearWriteFlag:
	push ebp
	mov ebp, esp
	mov byte [statData+0x2001], 0x0
	pop ebp
	ret


;LiveStorage_ReadStatsFromDir(char const*)
LiveStorage_ReadStatsFromDir:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x23cc
	cmp byte [statData+0x2000], 0x0
	jz LiveStorage_ReadStatsFromDir_10
	mov dword [esp+0x4], 0x5c
	mov eax, [ebp+0x8]
	mov [esp], eax
	call strchr
	test eax, eax
	jz LiveStorage_ReadStatsFromDir_10
LiveStorage_ReadStatsFromDir_20:
	add esp, 0x23cc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
LiveStorage_ReadStatsFromDir_10:
	mov byte [statData+0x2000], 0x0
	call Com_HasPlayerProfile
	test al, al
	jz LiveStorage_ReadStatsFromDir_20
	mov edx, [ebp+0x8]
	test edx, edx
	jz LiveStorage_ReadStatsFromDir_30
	mov esi, [ebp+0x8]
	cmp byte [esi], 0x0
	jnz LiveStorage_ReadStatsFromDir_40
LiveStorage_ReadStatsFromDir_30:
	mov byte [g_statsDir], 0x0
	mov dword [esp+0x8], _cstring_mpdata
	mov dword [esp+0x4], 0x104
	lea eax, [ebp-0x288]
	mov [esp], eax
	call Com_BuildPlayerProfilePath
LiveStorage_ReadStatsFromDir_70:
	call FS_CheckFileSystemStarted
	lea esi, [ebp-0x20]
	mov [esp+0x4], esi
	lea edi, [ebp-0x288]
	mov [esp], edi
	call FS_FOpenFileRead
	mov edx, [ebp-0x20]
	test edx, edx
	jz LiveStorage_ReadStatsFromDir_50
	cmp eax, 0x211c
	jz LiveStorage_ReadStatsFromDir_60
LiveStorage_ReadStatsFromDir_50:
	mov [esp], edx
	call FS_FCloseFile
LiveStorage_ReadStatsFromDir_80:
	call LiveStorage_NoStatsFound
	add esp, 0x23cc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
LiveStorage_ReadStatsFromDir_40:
	mov dword [esp+0x8], 0x100
	mov [esp+0x4], esi
	mov dword [esp], g_statsDir
	call Q_strncpyz
	mov dword [esp+0x10], _cstring_mpdata
	mov [esp+0xc], esi
	mov dword [esp+0x8], _cstring_ss1
	mov dword [esp+0x4], 0x104
	lea edi, [ebp-0x288]
	mov [esp], edi
	call Com_BuildPlayerProfilePath
	jmp LiveStorage_ReadStatsFromDir_70
LiveStorage_ReadStatsFromDir_60:
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x211c
	lea eax, [ebp-0x23a4]
	mov [esp], eax
	call FS_Read
	mov ebx, eax
	mov eax, [ebp-0x20]
	mov [esp], eax
	call FS_FCloseFile
	cmp ebx, 0x211c
	jnz LiveStorage_ReadStatsFromDir_80
	mov edi, _cstring_iwm0
	mov ecx, 0x4
	cld
	lea esi, [ebp-0x23a4]
	repe cmpsb
	mov edx, 0x0
	jz LiveStorage_ReadStatsFromDir_90
	movzx edx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub edx, ecx
LiveStorage_ReadStatsFromDir_90:
	test edx, edx
	jz LiveStorage_ReadStatsFromDir_100
LiveStorage_ReadStatsFromDir_180:
	lea eax, [ebp-0x288]
	call LiveStorage_HandleCorruptStats
LiveStorage_ReadStatsFromDir_200:
	lea eax, [ebp-0x2288]
	mov dword [esp+0x8], 0x2000
	mov [esp+0x4], eax
	mov dword [esp], statData
	call memcpy
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x1ffc
	mov dword [esp], statData+0x4
	call Com_BlockChecksumKey32
	mov [ebp-0x1c], eax
	mov byte [statData+0x2000], 0x1
	mov byte [statData+0x2001], 0x0
	lea ebx, [ebp-0x1c]
	mov esi, statData
	mov ecx, 0x4
	cld
	mov edi, ebx
	repe cmpsb
	mov ebx, 0x0
	jz LiveStorage_ReadStatsFromDir_110
	movzx ebx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub ebx, ecx
LiveStorage_ReadStatsFromDir_110:
	test ebx, ebx
	jz LiveStorage_ReadStatsFromDir_120
	lea eax, [ebp-0x288]
	call LiveStorage_HandleCorruptStats
LiveStorage_ReadStatsFromDir_120:
	cmp byte [statData+0x2000], 0x0
	jnz LiveStorage_ReadStatsFromDir_130
	xor edx, edx
LiveStorage_ReadStatsFromDir_210:
	mov eax, [stat_version]
	cmp edx, [eax+0xc]
	jz LiveStorage_ReadStatsFromDir_20
	call LiveStorage_NoStatsFound
	mov dword [esp], _cstring_menu_resetcustom
	call Com_SetErrorMessage
	jmp LiveStorage_ReadStatsFromDir_20
LiveStorage_ReadStatsFromDir_100:
	mov eax, [ebp-0x23a0]
	mov [ebp-0x20], eax
	lea esi, [ebp-0x60]
	mov [esp+0xc], esi
	mov dword [esp+0x8], 0x1f93ab07
	mov dword [esp+0x4], 0x22
	mov eax, cl_cdkey
	mov [esp], eax
	call Com_BlockChecksum128
	mov ebx, 0x1
	lea edi, [ebp-0x80]
LiveStorage_ReadStatsFromDir_140:
	lea eax, [ebx*4]
	mov edx, [esi+eax-0x4]
	mov ecx, edx
	xor ecx, 0x36363636
	mov [ebp+eax-0x74], ecx
	xor edx, 0x5c5c5c5c
	mov [edi+eax-0x4], edx
	add ebx, 0x1
	cmp ebx, 0x5
	jnz LiveStorage_ReadStatsFromDir_140
	lea ebx, [ebp-0x30]
	mov [esp+0x10], ebx
	mov dword [esp+0xc], 0x4
	lea esi, [ebp-0x20]
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x10
	lea eax, [ebp-0x70]
	mov [esp], eax
	call Com_BlockChecksum128Cat
	lea esi, [ebp-0x50]
	mov [esp+0x10], esi
	mov dword [esp+0xc], 0x10
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x10
	mov [esp], edi
	call Com_BlockChecksum128Cat
	mov esi, [ebp-0x239c]
	mov dword [ebp-0x23b4], 0xb54cda56
LiveStorage_ReadStatsFromDir_160:
	mov edi, [ebp-0x23b4]
	shr edi, 0x2
	and edi, 0x3
	mov [ebp-0x23b0], edi
	mov dword [ebp-0x23ac], 0x844
	lea edi, [ebp-0x239c]
	add edi, 0x2110
LiveStorage_ReadStatsFromDir_150:
	mov ecx, [edi-0x4]
	mov ebx, ecx
	shr ebx, 0x5
	lea eax, [esi*4]
	xor ebx, eax
	mov eax, esi
	shr eax, 0x3
	mov edx, ecx
	shl edx, 0x4
	xor eax, edx
	add ebx, eax
	xor esi, [ebp-0x23b4]
	mov eax, [ebp-0x23ac]
	and eax, 0x3
	xor eax, [ebp-0x23b0]
	xor ecx, [ebp+eax*4-0x50]
	lea ecx, [esi+ecx]
	xor ebx, ecx
	mov esi, [edi]
	sub esi, ebx
	mov [edi], esi
	sub edi, 0x4
	sub dword [ebp-0x23ac], 0x1
	jnz LiveStorage_ReadStatsFromDir_150
	mov edx, [ebp-0x28c]
	mov ecx, edx
	shr ecx, 0x5
	lea eax, [esi*4]
	xor ecx, eax
	mov eax, esi
	shr eax, 0x3
	mov ebx, edx
	shl ebx, 0x4
	xor eax, ebx
	add ecx, eax
	xor esi, [ebp-0x23b4]
	mov eax, [ebp-0x23b0]
	xor edx, [ebp+eax*4-0x50]
	lea edx, [esi+edx]
	xor ecx, edx
	mov esi, [ebp-0x239c]
	sub esi, ecx
	mov [ebp-0x239c], esi
	add dword [ebp-0x23b4], 0x61c88647
	jnz LiveStorage_ReadStatsFromDir_160
	lea ebx, [ebp-0x40]
	mov [esp+0xc], ebx
	mov eax, [ebp-0x48]
	sub eax, 0x6d7289b4
	xor eax, [ebp-0x23a0]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x2104
	lea esi, [ebp-0x238c]
	mov [esp], esi
	call Com_BlockChecksum128
	mov ecx, 0x10
	cld
	mov esi, ebx
	lea edi, [ebp-0x239c]
	repe cmpsb
	mov ebx, 0x0
	jz LiveStorage_ReadStatsFromDir_170
	movzx ebx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub ebx, ecx
LiveStorage_ReadStatsFromDir_170:
	test ebx, ebx
	jnz LiveStorage_ReadStatsFromDir_180
	lea edi, [ebp-0x238c]
	mov [esp], edi
	call FS_ReplaceSeparators
	mov eax, [ebp+0x8]
	test eax, eax
	jz LiveStorage_ReadStatsFromDir_190
	mov dword [esp+0x8], 0x104
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	lea ebx, [ebp-0x184]
	mov [esp], ebx
	call Q_strncpyz
	mov [esp], ebx
	call FS_ReplaceSeparators
	mov [esp+0x4], edi
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	setz al
LiveStorage_ReadStatsFromDir_220:
	test al, al
	jnz LiveStorage_ReadStatsFromDir_200
	jmp LiveStorage_ReadStatsFromDir_180
LiveStorage_ReadStatsFromDir_130:
	movzx edx, byte [statData+0x12f]
	jmp LiveStorage_ReadStatsFromDir_210
LiveStorage_ReadStatsFromDir_190:
	lea edi, [ebp-0x238c]
	mov [esp+0x4], edi
	mov dword [esp], _cstring_null
	call Q_stricmp
	test eax, eax
	setz al
	jmp LiveStorage_ReadStatsFromDir_220
	nop


;LiveStorage_GetControllerForCmd(int)
LiveStorage_GetControllerForCmd:
	push ebp
	mov ebp, esp
	xor eax, eax
	pop ebp
	ret
	nop


;LiveStorage_ReadStatsIfDirChanged(int)
LiveStorage_ReadStatsIfDirChanged:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, fs_gameDirVar
	mov eax, [ebx]
	mov eax, [eax+0xc]
	mov [esp+0x4], eax
	mov dword [esp], g_statsDir
	call Q_stricmp
	test eax, eax
	jnz LiveStorage_ReadStatsIfDirChanged_10
	add esp, 0x14
	pop ebx
	pop ebp
	ret
LiveStorage_ReadStatsIfDirChanged_10:
	mov eax, [ebx]
	mov eax, [eax+0xc]
	mov [ebp+0x8], eax
	add esp, 0x14
	pop ebx
	pop ebp
	jmp LiveStorage_ReadStatsFromDir


;Initialized global or static variables of win_storage:
SECTION .data
allowedDvarNames: dd _cstring_ui_primary_attac, _cstring_ui_primary_weapo, _cstring_ui_secondary_att, _cstring_ui_secondary_wea, _cstring_ui_perk1_slot, _cstring_ui_perk2_selecti, _cstring_ui_tempstorage
uiStatDvarPrefix: dd _cstring_ui_stat_


;Initialized constant data of win_storage:
SECTION .rdata


;Zero initialized global or static variables of win_storage:
SECTION .bss
g_statsDir: resb 0x100
statData: resb 0x2004
_ZZ16LiveStorage_InitvE28LiveStorage_ReadStatsCmd_VAR: resb 0x14
_ZZ16LiveStorage_InitvE30LiveStorage_UploadStatsCmd_VAR: resb 0x14
_ZZ16LiveStorage_InitvE32LiveStorage_StatGetInDvarCmd_VAR: resb 0x14
_ZZ16LiveStorage_InitvE26LiveStorage_StatSetCmd_VAR: resb 0x40
stat_version: resb 0x80


;All cstrings:
SECTION .rdata
_cstring_null:		db 0
_cstring_statset_usage_st:		db "statset usage: statset <index> <value>",0ah,0
_cstring_trying_to_set_in:		db "Trying to set index %i (which is a byte value) to invalid value %i",0
_cstring_tried_to_set_sta:		db "Tried to set stat index %i before we have obtained player stats",0ah,0
_cstring_invalid_dvar_s_f:		db "Invalid dvar ",27h,"%s",27h," for ",27h,"statgetindvar",27h,0
_cstring_statgetindvar_us:		db "statgetindvar usage: statgetindvar <index> <dvar>",0ah,0
_cstring_no_stats_found_z:		db "No stats found, zeroing out stats buffer",0ah,0
_cstring_corrupt:		db "corrupt",0
_cstring_ss:		db "%s.%s",0
_cstring_players:		db "players",0
_cstring_platform_statsre:		db "PLATFORM_STATSREADERROR",0
_cstring_statset:		db "statSet",0
_cstring_statgetindvar:		db "statGetInDvar",0
_cstring_uploadstats:		db "uploadStats",0
_cstring_readstats:		db "readStats",0
_cstring_stats_version_nu:		db "Stats version number",0
_cstring_stat_version:		db "stat_version",0
_cstring_mpdata:		db "mpdata",0
_cstring_ss1:		db "%s/%s",0
_cstring_unable_to_write_:		db "Unable to write stats: %s.",0ah,0
_cstring_successfully_wro:		db "Successfully wrote stats data",0ah,0
_cstring_iwm0:		db "iwm0",0
_cstring_menu_resetcustom:		db "MENU_RESETCUSTOMCLASSES",0
_cstring_ui_primary_attac:		db "ui_primary_attachment_slot",0
_cstring_ui_primary_weapo:		db "ui_primary_weapon",0
_cstring_ui_secondary_att:		db "ui_secondary_attachment_slot",0
_cstring_ui_secondary_wea:		db "ui_secondary_weapon",0
_cstring_ui_perk1_slot:		db "ui_perk1_slot",0
_cstring_ui_perk2_selecti:		db "ui_perk2_selection",0
_cstring_ui_tempstorage:		db "ui_tempStorage",0
_cstring_ui_stat_:		db "ui_stat_",0



;All constant floats and doubles:
SECTION .rdata

