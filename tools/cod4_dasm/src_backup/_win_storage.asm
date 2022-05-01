;Imports of win_storage:
	extern cmd_args
	extern atoi
	extern _Z30LiveStorage_ValidateSetStatCmdii
	extern g_entHandleInfoArray
	extern _Z14Com_PrintErroriPKcz
	extern _Z23CL_DumpReliableCommandsi
	extern _Z9Com_Error11errorParm_tPKcz
	extern _Z10Com_PrintfiPKcz
	extern _Z10I_strncpyzPcPKci
	extern _Z10I_strnicmpPKcS0_i
	extern _Z9I_stricmpPKcS0_
	extern _Z17Dvar_SetIntByNamePKci
	extern fs_gameDirVar
	extern memset
	extern _Z22Com_BlockChecksumKey32PKvmj
	extern _Z21LiveStorage_StatsIniti
	extern _Z31CL_ControllerIndexFromClientNumi
	extern _Z11Com_sprintfPciPKcz
	extern _Z14FS_DeleteInDirPKcS0_
	extern _Z9FS_RenamePKcS0_S0_S0_
	extern _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	extern _Z16Dvar_RegisterIntPKciiitS0_
	extern _Z20Com_HasPlayerProfilev
	extern _Z26Com_BuildPlayerProfilePathPciPKcz
	extern memcpy
	extern itimeGetTime
	extern cl_cdkey
	extern _Z20Com_BlockChecksum128PKviiPj
	extern _Z23Com_BlockChecksum128CatPKviS0_iPj
	extern _Z17FS_WriteFileToDirPKcS0_PKvi
	extern strchr
	extern _Z25FS_CheckFileSystemStartedv
	extern _Z16FS_FOpenFileReadPKcPi
	extern _Z13FS_FCloseFilei
	extern _Z7FS_ReadPvii
	extern _Z19Com_SetErrorMessagePKc
	extern _Z20FS_ReplaceSeparatorsPc

;Exports of win_storage:
	global g_statsDir
	global statData
	global _Z26LiveStorage_UploadStatsCmdv
	global _ZZ16LiveStorage_InitvE28LiveStorage_ReadStatsCmd_VAR
	global _ZZ16LiveStorage_InitvE30LiveStorage_UploadStatsCmd_VAR
	global _ZZ16LiveStorage_InitvE32LiveStorage_StatGetInDvarCmd_VAR
	global _ZZ16LiveStorage_InitvE26LiveStorage_StatSetCmd_VAR
	global _Z22LiveStorage_StatSetCmdv
	global _Z28LiveStorage_StatGetInDvarCmdv
	global _Z24LiveStorage_ReadStatsCmdv
	global _Z24LiveStorage_NoStatsFoundv
	global _Z30LiveStorage_HandleCorruptStatsPKc
	global _Z16LiveStorage_Initv
	global _Z19LiveStorage_GetStatii
	global _Z19LiveStorage_NewUseri
	global _Z19LiveStorage_SetStatiii
	global _Z21LiveStorage_ReadStatsi
	global _Z23LiveStorage_UploadStatsi
	global _Z25LiveStorage_DoWeHaveStatsi
	global _Z25LiveStorage_GetStatBufferi
	global _Z26LiveStorage_ClearWriteFlagv
	global _Z28LiveStorage_ReadStatsFromDirPKc
	global _Z31LiveStorage_GetControllerForCmdi
	global _Z33LiveStorage_ReadStatsIfDirChangedi
	global allowedDvarNames
	global stat_version
	global uiStatDvarPrefix


SECTION .text


;LiveStorage_UploadStatsCmd()
_Z26LiveStorage_UploadStatsCmdv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp], 0x0
	call _Z23LiveStorage_UploadStatsi
	leave
	ret


;LiveStorage_StatSetCmd()
_Z22LiveStorage_StatSetCmdv:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, cmd_args
	mov eax, [ebx]
	cmp dword [ebx+eax*4+0x44], 0x2
	jle _Z22LiveStorage_StatSetCmdv_10
	mov eax, [ebx+eax*4+0x64]
	mov eax, [eax+0x4]
	mov [esp], eax
	call atoi
	mov esi, eax
	mov eax, [ebx]
	cmp dword [ebx+eax*4+0x44], 0x2
	jg _Z22LiveStorage_StatSetCmdv_20
	mov eax, _cstring_null
	mov [esp], eax
	call atoi
	mov ebx, eax
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z30LiveStorage_ValidateSetStatCmdii
	movzx edx, byte [statData+0x2000]
	test dl, dl
	jz _Z22LiveStorage_StatSetCmdv_30
_Z22LiveStorage_StatSetCmdv_60:
	cmp esi, 0x7cf
	jle _Z22LiveStorage_StatSetCmdv_40
	cmp esi, 0xda9
	jg _Z22LiveStorage_StatSetCmdv_30
	mov eax, [esi*4+g_entHandleInfoArray+0x7274]
	jmp _Z22LiveStorage_StatSetCmdv_50
_Z22LiveStorage_StatSetCmdv_20:
	mov eax, [ebx+eax*4+0x64]
	mov eax, [eax+0x8]
	mov [esp], eax
	call atoi
	mov ebx, eax
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z30LiveStorage_ValidateSetStatCmdii
	movzx edx, byte [statData+0x2000]
	test dl, dl
	jnz _Z22LiveStorage_StatSetCmdv_60
_Z22LiveStorage_StatSetCmdv_30:
	xor eax, eax
_Z22LiveStorage_StatSetCmdv_50:
	cmp eax, ebx
	jz _Z22LiveStorage_StatSetCmdv_70
	test dl, dl
	jz _Z22LiveStorage_StatSetCmdv_80
	cmp esi, 0x7cf
	jg _Z22LiveStorage_StatSetCmdv_90
	cmp ebx, 0xff
	ja _Z22LiveStorage_StatSetCmdv_100
_Z22LiveStorage_StatSetCmdv_130:
	lea edx, [esi+0x4]
	movzx eax, byte [edx+statData]
	cmp ebx, eax
	jz _Z22LiveStorage_StatSetCmdv_110
	mov [edx+statData], bl
_Z22LiveStorage_StatSetCmdv_120:
	mov byte [statData+0x2001], 0x1
_Z22LiveStorage_StatSetCmdv_110:
	mov byte [statData+0x2001], 0x1
_Z22LiveStorage_StatSetCmdv_70:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z22LiveStorage_StatSetCmdv_10:
	mov dword [esp+0x4], _cstring_statset_usage_st
	mov dword [esp], 0xf
	call _Z14Com_PrintErroriPKcz
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z22LiveStorage_StatSetCmdv_90:
	cmp esi, 0xda9
	jg _Z22LiveStorage_StatSetCmdv_110
	lea eax, [esi*4-0x176c]
	cmp ebx, [eax+statData]
	jz _Z22LiveStorage_StatSetCmdv_110
	mov [eax+statData], ebx
	jmp _Z22LiveStorage_StatSetCmdv_120
_Z22LiveStorage_StatSetCmdv_40:
	movzx eax, byte [esi+statData+0x4]
	jmp _Z22LiveStorage_StatSetCmdv_50
_Z22LiveStorage_StatSetCmdv_100:
	mov dword [esp], 0x0
	call _Z23CL_DumpReliableCommandsi
	mov [esp+0xc], ebx
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_trying_to_set_in
	mov dword [esp], 0x3
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z22LiveStorage_StatSetCmdv_130
_Z22LiveStorage_StatSetCmdv_80:
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_tried_to_set_sta
	mov dword [esp], 0xe
	call _Z10Com_PrintfiPKcz
	jmp _Z22LiveStorage_StatSetCmdv_110
	nop


;LiveStorage_StatGetInDvarCmd()
_Z28LiveStorage_StatGetInDvarCmdv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x42c
	mov ebx, cmd_args
	mov eax, [ebx]
	cmp dword [ebx+eax*4+0x44], 0x2
	jle _Z28LiveStorage_StatGetInDvarCmdv_10
	mov eax, [ebx+eax*4+0x64]
	mov eax, [eax+0x4]
	mov [esp], eax
	call atoi
	mov [ebp-0x41c], eax
	mov eax, [ebx]
	cmp dword [ebx+eax*4+0x44], 0x2
	jg _Z28LiveStorage_StatGetInDvarCmdv_20
	mov eax, _cstring_null
_Z28LiveStorage_StatGetInDvarCmdv_60:
	mov dword [esp+0x8], 0x400
	mov [esp+0x4], eax
	lea edi, [ebp-0x418]
	mov [esp], edi
	call _Z10I_strncpyzPcPKci
	mov dword [esp+0x8], 0x8
	mov eax, [uiStatDvarPrefix]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z10I_strnicmpPKcS0_i
	test eax, eax
	jz _Z28LiveStorage_StatGetInDvarCmdv_30
	xor esi, esi
	mov ebx, allowedDvarNames
_Z28LiveStorage_StatGetInDvarCmdv_50:
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z28LiveStorage_StatGetInDvarCmdv_40
	add esi, 0x1
	add ebx, 0x4
	cmp esi, 0x7
	jnz _Z28LiveStorage_StatGetInDvarCmdv_50
_Z28LiveStorage_StatGetInDvarCmdv_70:
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_invalid_dvar_s_f
	mov dword [esp], 0xf
	call _Z14Com_PrintErroriPKcz
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z28LiveStorage_StatGetInDvarCmdv_20:
	mov eax, [ebx+eax*4+0x64]
	mov eax, [eax+0x8]
	jmp _Z28LiveStorage_StatGetInDvarCmdv_60
_Z28LiveStorage_StatGetInDvarCmdv_40:
	cmp esi, 0x7
	jz _Z28LiveStorage_StatGetInDvarCmdv_70
_Z28LiveStorage_StatGetInDvarCmdv_30:
	cmp byte [statData+0x2000], 0x0
	jz _Z28LiveStorage_StatGetInDvarCmdv_80
	cmp dword [ebp-0x41c], 0x7cf
	jle _Z28LiveStorage_StatGetInDvarCmdv_90
	cmp dword [ebp-0x41c], 0xda9
	jg _Z28LiveStorage_StatGetInDvarCmdv_80
	mov edx, [ebp-0x41c]
	mov eax, [edx*4+g_entHandleInfoArray+0x7274]
	jmp _Z28LiveStorage_StatGetInDvarCmdv_100
_Z28LiveStorage_StatGetInDvarCmdv_10:
	mov dword [esp+0x4], _cstring_statgetindvar_us
	mov dword [esp], 0xf
	call _Z14Com_PrintErroriPKcz
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z28LiveStorage_StatGetInDvarCmdv_80:
	xor eax, eax
_Z28LiveStorage_StatGetInDvarCmdv_100:
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z17Dvar_SetIntByNamePKci
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z28LiveStorage_StatGetInDvarCmdv_90:
	mov edx, [ebp-0x41c]
	movzx eax, byte [edx+statData+0x4]
	jmp _Z28LiveStorage_StatGetInDvarCmdv_100


;LiveStorage_ReadStatsCmd()
_Z24LiveStorage_ReadStatsCmdv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, fs_gameDirVar
	mov eax, [eax]
	mov eax, [eax+0xc]
	mov [esp], eax
	call _Z28LiveStorage_ReadStatsFromDirPKc
	leave
	ret


;LiveStorage_NoStatsFound()
_Z24LiveStorage_NoStatsFoundv:
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
	call _Z22Com_BlockChecksumKey32PKvmj
	mov [ebp-0xc], eax
	mov [statData], eax
	mov byte [statData+0x2000], 0x1
	mov dword [esp+0x4], _cstring_no_stats_found_z
	mov dword [esp], 0x10
	call _Z10Com_PrintfiPKcz
	mov dword [esp], 0x0
	call _Z21LiveStorage_StatsIniti
	mov eax, [stat_version]
	mov ebx, [eax+0xc]
	mov dword [esp], 0x0
	call _Z31CL_ControllerIndexFromClientNumi
	cmp byte [statData+0x2000], 0x0
	jz _Z24LiveStorage_NoStatsFoundv_10
	cmp ebx, 0xff
	ja _Z24LiveStorage_NoStatsFoundv_20
_Z24LiveStorage_NoStatsFoundv_40:
	movzx eax, byte [statData+0x12f]
	cmp ebx, eax
	jz _Z24LiveStorage_NoStatsFoundv_30
	mov [statData+0x12f], bl
	mov byte [statData+0x2001], 0x1
_Z24LiveStorage_NoStatsFoundv_30:
	add esp, 0x24
	pop ebx
	pop ebp
	ret
_Z24LiveStorage_NoStatsFoundv_20:
	mov dword [esp], 0x0
	call _Z23CL_DumpReliableCommandsi
	mov [esp+0xc], ebx
	mov dword [esp+0x8], 0x12b
	mov dword [esp+0x4], _cstring_trying_to_set_in
	mov dword [esp], 0x3
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z24LiveStorage_NoStatsFoundv_40
_Z24LiveStorage_NoStatsFoundv_10:
	mov dword [esp+0x8], 0x12b
	mov dword [esp+0x4], _cstring_tried_to_set_sta
	mov dword [esp], 0xe
	call _Z10Com_PrintfiPKcz
	add esp, 0x24
	pop ebx
	pop ebp
	ret
	nop


;LiveStorage_HandleCorruptStats(char const*)
_Z30LiveStorage_HandleCorruptStatsPKc:
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
	call _Z11Com_sprintfPciPKcz
	mov dword [esp+0x4], _cstring_players
	mov [esp], ebx
	call _Z14FS_DeleteInDirPKcS0_
	mov dword [esp+0xc], _cstring_players
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_players
	mov [esp], esi
	call _Z9FS_RenamePKcS0_S0_S0_
	mov dword [esp+0x4], _cstring_players
	mov [esp], esi
	call _Z14FS_DeleteInDirPKcS0_
	call _Z24LiveStorage_NoStatsFoundv
	mov dword [esp+0x4], _cstring_platform_statsre
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	add esp, 0x130
	pop ebx
	pop esi
	pop ebp
	ret


;LiveStorage_Init()
_Z16LiveStorage_Initv:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	mov dword [esp+0x8], 0x2002
	mov dword [esp+0x4], 0x0
	mov dword [esp], statData
	call memset
	mov dword [esp+0x8], _ZZ16LiveStorage_InitvE26LiveStorage_StatSetCmd_VAR
	mov dword [esp+0x4], _Z22LiveStorage_StatSetCmdv
	mov dword [esp], _cstring_statset
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ16LiveStorage_InitvE32LiveStorage_StatGetInDvarCmd_VAR
	mov dword [esp+0x4], _Z28LiveStorage_StatGetInDvarCmdv
	mov dword [esp], _cstring_statgetindvar
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ16LiveStorage_InitvE30LiveStorage_UploadStatsCmd_VAR
	mov dword [esp+0x4], _Z26LiveStorage_UploadStatsCmdv
	mov dword [esp], _cstring_uploadstats
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ16LiveStorage_InitvE28LiveStorage_ReadStatsCmd_VAR
	mov dword [esp+0x4], _Z24LiveStorage_ReadStatsCmdv
	mov dword [esp], _cstring_readstats
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x14], _cstring_stats_version_nu
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0xff
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0xa
	mov dword [esp], _cstring_stat_version
	call _Z16Dvar_RegisterIntPKciiitS0_
	mov [stat_version], eax
	mov byte [g_statsDir], 0x0
	leave
	ret


;LiveStorage_GetStat(int, int)
_Z19LiveStorage_GetStatii:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0xc]
	cmp byte [statData+0x2000], 0x0
	jz _Z19LiveStorage_GetStatii_10
	cmp eax, 0x7cf
	jle _Z19LiveStorage_GetStatii_20
	cmp eax, 0xda9
	jg _Z19LiveStorage_GetStatii_10
	mov eax, [eax*4+g_entHandleInfoArray+0x7274]
	pop ebp
	ret
_Z19LiveStorage_GetStatii_20:
	movzx eax, byte [eax+statData+0x4]
	pop ebp
	ret
_Z19LiveStorage_GetStatii_10:
	xor eax, eax
	pop ebp
	ret
	nop


;LiveStorage_NewUser(int)
_Z19LiveStorage_NewUseri:
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
_Z19LiveStorage_SetStatiii:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0xc]
	mov esi, [ebp+0x10]
	cmp byte [statData+0x2000], 0x0
	jz _Z19LiveStorage_SetStatiii_10
	cmp ebx, 0x7cf
	jg _Z19LiveStorage_SetStatiii_20
	cmp esi, 0xff
	ja _Z19LiveStorage_SetStatiii_30
_Z19LiveStorage_SetStatiii_60:
	lea edx, [ebx+0x4]
	movzx eax, byte [edx+statData]
	cmp esi, eax
	jz _Z19LiveStorage_SetStatiii_40
	mov eax, esi
	mov [edx+statData], al
_Z19LiveStorage_SetStatiii_50:
	mov byte [statData+0x2001], 0x1
_Z19LiveStorage_SetStatiii_40:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z19LiveStorage_SetStatiii_20:
	cmp ebx, 0xda9
	jg _Z19LiveStorage_SetStatiii_40
	lea eax, [ebx*4-0x176c]
	cmp [eax+statData], esi
	jz _Z19LiveStorage_SetStatiii_40
	mov [eax+statData], esi
	jmp _Z19LiveStorage_SetStatiii_50
_Z19LiveStorage_SetStatiii_10:
	mov [ebp+0x10], ebx
	mov dword [ebp+0xc], _cstring_tried_to_set_sta
	mov dword [ebp+0x8], 0xe
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp _Z10Com_PrintfiPKcz
_Z19LiveStorage_SetStatiii_30:
	mov dword [esp], 0x0
	call _Z23CL_DumpReliableCommandsi
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_trying_to_set_in
	mov dword [esp], 0x3
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z19LiveStorage_SetStatiii_60
	nop


;LiveStorage_ReadStats(int)
_Z21LiveStorage_ReadStatsi:
	push ebp
	mov ebp, esp
	mov eax, fs_gameDirVar
	mov eax, [eax]
	mov eax, [eax+0xc]
	mov [ebp+0x8], eax
	pop ebp
	jmp _Z28LiveStorage_ReadStatsFromDirPKc


;LiveStorage_UploadStats(int)
_Z23LiveStorage_UploadStatsi:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x22bc
	cmp byte [statData+0x2000], 0x0
	jz _Z23LiveStorage_UploadStatsi_10
	cmp byte [statData+0x2001], 0x0
	jnz _Z23LiveStorage_UploadStatsi_20
_Z23LiveStorage_UploadStatsi_10:
	add esp, 0x22bc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z23LiveStorage_UploadStatsi_20:
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x1ffc
	mov dword [esp], statData+0x4
	call _Z22Com_BlockChecksumKey32PKvmj
	mov [ebp-0x1c], eax
	mov [statData], eax
	call _Z20Com_HasPlayerProfilev
	test al, al
	jz _Z23LiveStorage_UploadStatsi_10
	cmp byte [g_statsDir], 0x0
	jz _Z23LiveStorage_UploadStatsi_30
	mov dword [esp+0x10], _cstring_mpdata
	mov dword [esp+0xc], g_statsDir
	mov dword [esp+0x8], _cstring_ss1
	mov dword [esp+0x4], 0x104
	lea eax, [ebp-0x170]
	mov [esp], eax
	call _Z26Com_BuildPlayerProfilePathPciPKcz
_Z23LiveStorage_UploadStatsi_80:
	lea eax, [ebp-0x2170]
	mov dword [esp+0x8], 0x2000
	mov dword [esp+0x4], statData
	mov [esp], eax
	call memcpy
	mov dword [esp+0x8], 0x104
	mov dword [esp+0x4], g_statsDir
	lea eax, [ebp-0x2274]
	mov [esp], eax
	call _Z10I_strncpyzPcPKci
	mov dword [ebp-0x228c], 0x306d7769
	call itimeGetTime
	mov [ebp-0x2288], eax
	mov [ebp-0x1c], eax
	lea edi, [ebp-0x6c]
	mov [esp+0xc], edi
	mov dword [esp+0x8], 0x1f93ab07
	mov dword [esp+0x4], 0x22
	mov eax, cl_cdkey
	mov [esp], eax
	call _Z20Com_BlockChecksum128PKviiPj
	mov ebx, 0x1
	lea esi, [ebp-0x4c]
_Z23LiveStorage_UploadStatsi_40:
	lea eax, [ebx*4]
	mov edx, [edi+eax-0x4]
	mov ecx, edx
	xor ecx, 0x36363636
	mov [esi+eax-0x4], ecx
	xor edx, 0x5c5c5c5c
	mov [ebp+eax-0x60], edx
	add ebx, 0x1
	cmp ebx, 0x5
	jnz _Z23LiveStorage_UploadStatsi_40
	lea ebx, [ebp-0x2c]
	mov [esp+0x10], ebx
	mov dword [esp+0xc], 0x4
	lea eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x10
	mov [esp], esi
	call _Z23Com_BlockChecksum128CatPKviS0_iPj
	lea eax, [ebp-0x3c]
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x10
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x10
	lea eax, [ebp-0x5c]
	mov [esp], eax
	call _Z23Com_BlockChecksum128CatPKviS0_iPj
	lea eax, [ebp-0x2284]
	mov [esp+0xc], eax
	mov eax, [ebp-0x34]
	sub eax, 0x6d7289b4
	xor eax, [ebp-0x2288]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x2104
	lea eax, [ebp-0x2274]
	mov [esp], eax
	call _Z20Com_BlockChecksum128PKviiPj
	mov esi, [ebp-0x174]
	mov dword [ebp-0x22a4], 0x0
_Z23LiveStorage_UploadStatsi_60:
	sub dword [ebp-0x22a4], 0x61c88647
	mov eax, [ebp-0x22a4]
	shr eax, 0x2
	and eax, 0x3
	mov [ebp-0x22a0], eax
	mov dword [ebp-0x229c], 0x0
	lea edi, [ebp-0x2284]
_Z23LiveStorage_UploadStatsi_50:
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
	jnz _Z23LiveStorage_UploadStatsi_50
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
	jnz _Z23LiveStorage_UploadStatsi_60
	mov dword [esp+0xc], 0x211c
	lea eax, [ebp-0x228c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_players
	lea eax, [ebp-0x170]
	mov [esp], eax
	call _Z17FS_WriteFileToDirPKcS0_PKvi
	test eax, eax
	jnz _Z23LiveStorage_UploadStatsi_70
	lea eax, [ebp-0x170]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_unable_to_write_
	mov dword [esp], 0x10
	call _Z10Com_PrintfiPKcz
	jmp _Z23LiveStorage_UploadStatsi_10
_Z23LiveStorage_UploadStatsi_30:
	mov dword [esp+0x8], _cstring_mpdata
	mov dword [esp+0x4], 0x104
	lea eax, [ebp-0x170]
	mov [esp], eax
	call _Z26Com_BuildPlayerProfilePathPciPKcz
	jmp _Z23LiveStorage_UploadStatsi_80
_Z23LiveStorage_UploadStatsi_70:
	mov byte [statData+0x2001], 0x0
	mov dword [esp+0x4], _cstring_successfully_wro
	mov dword [esp], 0x10
	call _Z10Com_PrintfiPKcz
	jmp _Z23LiveStorage_UploadStatsi_10


;LiveStorage_DoWeHaveStats(int)
_Z25LiveStorage_DoWeHaveStatsi:
	push ebp
	mov ebp, esp
	movzx eax, byte [statData+0x2000]
	pop ebp
	ret


;LiveStorage_GetStatBuffer(int)
_Z25LiveStorage_GetStatBufferi:
	push ebp
	mov ebp, esp
	mov eax, statData
	pop ebp
	ret


;LiveStorage_ClearWriteFlag()
_Z26LiveStorage_ClearWriteFlagv:
	push ebp
	mov ebp, esp
	mov byte [statData+0x2001], 0x0
	pop ebp
	ret


;LiveStorage_ReadStatsFromDir(char const*)
_Z28LiveStorage_ReadStatsFromDirPKc:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x23cc
	cmp byte [statData+0x2000], 0x0
	jz _Z28LiveStorage_ReadStatsFromDirPKc_10
	mov dword [esp+0x4], 0x5c
	mov eax, [ebp+0x8]
	mov [esp], eax
	call strchr
	test eax, eax
	jz _Z28LiveStorage_ReadStatsFromDirPKc_10
_Z28LiveStorage_ReadStatsFromDirPKc_20:
	add esp, 0x23cc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z28LiveStorage_ReadStatsFromDirPKc_10:
	mov byte [statData+0x2000], 0x0
	call _Z20Com_HasPlayerProfilev
	test al, al
	jz _Z28LiveStorage_ReadStatsFromDirPKc_20
	mov edx, [ebp+0x8]
	test edx, edx
	jz _Z28LiveStorage_ReadStatsFromDirPKc_30
	mov esi, [ebp+0x8]
	cmp byte [esi], 0x0
	jnz _Z28LiveStorage_ReadStatsFromDirPKc_40
_Z28LiveStorage_ReadStatsFromDirPKc_30:
	mov byte [g_statsDir], 0x0
	mov dword [esp+0x8], _cstring_mpdata
	mov dword [esp+0x4], 0x104
	lea eax, [ebp-0x288]
	mov [esp], eax
	call _Z26Com_BuildPlayerProfilePathPciPKcz
_Z28LiveStorage_ReadStatsFromDirPKc_70:
	call _Z25FS_CheckFileSystemStartedv
	lea esi, [ebp-0x20]
	mov [esp+0x4], esi
	lea edi, [ebp-0x288]
	mov [esp], edi
	call _Z16FS_FOpenFileReadPKcPi
	mov edx, [ebp-0x20]
	test edx, edx
	jz _Z28LiveStorage_ReadStatsFromDirPKc_50
	cmp eax, 0x211c
	jz _Z28LiveStorage_ReadStatsFromDirPKc_60
_Z28LiveStorage_ReadStatsFromDirPKc_50:
	mov [esp], edx
	call _Z13FS_FCloseFilei
_Z28LiveStorage_ReadStatsFromDirPKc_80:
	call _Z24LiveStorage_NoStatsFoundv
	add esp, 0x23cc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z28LiveStorage_ReadStatsFromDirPKc_40:
	mov dword [esp+0x8], 0x100
	mov [esp+0x4], esi
	mov dword [esp], g_statsDir
	call _Z10I_strncpyzPcPKci
	mov dword [esp+0x10], _cstring_mpdata
	mov [esp+0xc], esi
	mov dword [esp+0x8], _cstring_ss1
	mov dword [esp+0x4], 0x104
	lea edi, [ebp-0x288]
	mov [esp], edi
	call _Z26Com_BuildPlayerProfilePathPciPKcz
	jmp _Z28LiveStorage_ReadStatsFromDirPKc_70
_Z28LiveStorage_ReadStatsFromDirPKc_60:
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x211c
	lea eax, [ebp-0x23a4]
	mov [esp], eax
	call _Z7FS_ReadPvii
	mov ebx, eax
	mov eax, [ebp-0x20]
	mov [esp], eax
	call _Z13FS_FCloseFilei
	cmp ebx, 0x211c
	jnz _Z28LiveStorage_ReadStatsFromDirPKc_80
	mov edi, _cstring_iwm0
	mov ecx, 0x4
	cld
	lea esi, [ebp-0x23a4]
	repe cmpsb
	mov edx, 0x0
	jz _Z28LiveStorage_ReadStatsFromDirPKc_90
	movzx edx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub edx, ecx
_Z28LiveStorage_ReadStatsFromDirPKc_90:
	test edx, edx
	jz _Z28LiveStorage_ReadStatsFromDirPKc_100
_Z28LiveStorage_ReadStatsFromDirPKc_180:
	lea eax, [ebp-0x288]
	call _Z30LiveStorage_HandleCorruptStatsPKc
_Z28LiveStorage_ReadStatsFromDirPKc_200:
	lea eax, [ebp-0x2288]
	mov dword [esp+0x8], 0x2000
	mov [esp+0x4], eax
	mov dword [esp], statData
	call memcpy
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x1ffc
	mov dword [esp], statData+0x4
	call _Z22Com_BlockChecksumKey32PKvmj
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
	jz _Z28LiveStorage_ReadStatsFromDirPKc_110
	movzx ebx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub ebx, ecx
_Z28LiveStorage_ReadStatsFromDirPKc_110:
	test ebx, ebx
	jz _Z28LiveStorage_ReadStatsFromDirPKc_120
	lea eax, [ebp-0x288]
	call _Z30LiveStorage_HandleCorruptStatsPKc
_Z28LiveStorage_ReadStatsFromDirPKc_120:
	cmp byte [statData+0x2000], 0x0
	jnz _Z28LiveStorage_ReadStatsFromDirPKc_130
	xor edx, edx
_Z28LiveStorage_ReadStatsFromDirPKc_210:
	mov eax, [stat_version]
	cmp edx, [eax+0xc]
	jz _Z28LiveStorage_ReadStatsFromDirPKc_20
	call _Z24LiveStorage_NoStatsFoundv
	mov dword [esp], _cstring_menu_resetcustom
	call _Z19Com_SetErrorMessagePKc
	jmp _Z28LiveStorage_ReadStatsFromDirPKc_20
_Z28LiveStorage_ReadStatsFromDirPKc_100:
	mov eax, [ebp-0x23a0]
	mov [ebp-0x20], eax
	lea esi, [ebp-0x60]
	mov [esp+0xc], esi
	mov dword [esp+0x8], 0x1f93ab07
	mov dword [esp+0x4], 0x22
	mov eax, cl_cdkey
	mov [esp], eax
	call _Z20Com_BlockChecksum128PKviiPj
	mov ebx, 0x1
	lea edi, [ebp-0x80]
_Z28LiveStorage_ReadStatsFromDirPKc_140:
	lea eax, [ebx*4]
	mov edx, [esi+eax-0x4]
	mov ecx, edx
	xor ecx, 0x36363636
	mov [ebp+eax-0x74], ecx
	xor edx, 0x5c5c5c5c
	mov [edi+eax-0x4], edx
	add ebx, 0x1
	cmp ebx, 0x5
	jnz _Z28LiveStorage_ReadStatsFromDirPKc_140
	lea ebx, [ebp-0x30]
	mov [esp+0x10], ebx
	mov dword [esp+0xc], 0x4
	lea esi, [ebp-0x20]
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x10
	lea eax, [ebp-0x70]
	mov [esp], eax
	call _Z23Com_BlockChecksum128CatPKviS0_iPj
	lea esi, [ebp-0x50]
	mov [esp+0x10], esi
	mov dword [esp+0xc], 0x10
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x10
	mov [esp], edi
	call _Z23Com_BlockChecksum128CatPKviS0_iPj
	mov esi, [ebp-0x239c]
	mov dword [ebp-0x23b4], 0xb54cda56
_Z28LiveStorage_ReadStatsFromDirPKc_160:
	mov edi, [ebp-0x23b4]
	shr edi, 0x2
	and edi, 0x3
	mov [ebp-0x23b0], edi
	mov dword [ebp-0x23ac], 0x844
	lea edi, [ebp-0x239c]
	add edi, 0x2110
_Z28LiveStorage_ReadStatsFromDirPKc_150:
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
	jnz _Z28LiveStorage_ReadStatsFromDirPKc_150
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
	jnz _Z28LiveStorage_ReadStatsFromDirPKc_160
	lea ebx, [ebp-0x40]
	mov [esp+0xc], ebx
	mov eax, [ebp-0x48]
	sub eax, 0x6d7289b4
	xor eax, [ebp-0x23a0]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x2104
	lea esi, [ebp-0x238c]
	mov [esp], esi
	call _Z20Com_BlockChecksum128PKviiPj
	mov ecx, 0x10
	cld
	mov esi, ebx
	lea edi, [ebp-0x239c]
	repe cmpsb
	mov ebx, 0x0
	jz _Z28LiveStorage_ReadStatsFromDirPKc_170
	movzx ebx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub ebx, ecx
_Z28LiveStorage_ReadStatsFromDirPKc_170:
	test ebx, ebx
	jnz _Z28LiveStorage_ReadStatsFromDirPKc_180
	lea edi, [ebp-0x238c]
	mov [esp], edi
	call _Z20FS_ReplaceSeparatorsPc
	mov eax, [ebp+0x8]
	test eax, eax
	jz _Z28LiveStorage_ReadStatsFromDirPKc_190
	mov dword [esp+0x8], 0x104
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	lea ebx, [ebp-0x184]
	mov [esp], ebx
	call _Z10I_strncpyzPcPKci
	mov [esp], ebx
	call _Z20FS_ReplaceSeparatorsPc
	mov [esp+0x4], edi
	mov [esp], ebx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	setz al
_Z28LiveStorage_ReadStatsFromDirPKc_220:
	test al, al
	jnz _Z28LiveStorage_ReadStatsFromDirPKc_200
	jmp _Z28LiveStorage_ReadStatsFromDirPKc_180
_Z28LiveStorage_ReadStatsFromDirPKc_130:
	movzx edx, byte [statData+0x12f]
	jmp _Z28LiveStorage_ReadStatsFromDirPKc_210
_Z28LiveStorage_ReadStatsFromDirPKc_190:
	lea edi, [ebp-0x238c]
	mov [esp+0x4], edi
	mov dword [esp], _cstring_null
	call _Z9I_stricmpPKcS0_
	test eax, eax
	setz al
	jmp _Z28LiveStorage_ReadStatsFromDirPKc_220
	nop


;LiveStorage_GetControllerForCmd(int)
_Z31LiveStorage_GetControllerForCmdi:
	push ebp
	mov ebp, esp
	xor eax, eax
	pop ebp
	ret
	nop


;LiveStorage_ReadStatsIfDirChanged(int)
_Z33LiveStorage_ReadStatsIfDirChangedi:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, fs_gameDirVar
	mov eax, [ebx]
	mov eax, [eax+0xc]
	mov [esp+0x4], eax
	mov dword [esp], g_statsDir
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z33LiveStorage_ReadStatsIfDirChangedi_10
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z33LiveStorage_ReadStatsIfDirChangedi_10:
	mov eax, [ebx]
	mov eax, [eax+0xc]
	mov [ebp+0x8], eax
	add esp, 0x14
	pop ebx
	pop ebp
	jmp _Z28LiveStorage_ReadStatsFromDirPKc


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

