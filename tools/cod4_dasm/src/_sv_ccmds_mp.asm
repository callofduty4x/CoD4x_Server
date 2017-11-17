;Imports of sv_ccmds_mp:
	extern Com_SyncThreads
	extern com_sv_running
	extern Com_Printf
	extern SV_SetGametype
	extern sv_gametype
	extern sv
	extern Q_strncpyz
	extern G_GetSavePersist
	extern sv_maxclients
	extern G_SetSavePersist
	extern Cvar_VariableString
	extern FS_ConvertPath
	extern SV_SpawnServer
	extern Q_stricmp
	extern com_frameTime
	extern svs
	extern NET_OutOfBandPrint
	extern SV_InitDvar
	extern SV_InitArchivedSnapshot
	extern SV_InitSnapshot
	extern sv_serverId_value
	extern sv_serverid
	extern Cvar_SetInt
	extern SV_RestartGameProgs
	extern SV_RunFrame
	extern SV_DropClient
	extern va
	extern SV_AddServerCommand
	extern ClientConnect
	extern SV_ClientEnterWorld
	extern Q_CleanStr
	extern SV_SendServerCommand
	extern sv_mapname
	extern SV_GameClientNum
	extern G_GetClientScore
	extern I_DrawStrlen
	extern NET_AdrToString
	extern sv_cmd_args
	extern atoi
	extern Cmd_ArgsBuffer
	extern Cvar_InfoString
	extern Info_Print
	extern Com_Shutdown
	extern Scr_DumpScriptThreads
	extern MT_DumpTree
	extern SV_UnbanClient
	extern SV_BanClient
	extern SV_BanGuidBriefly
	extern BG_GetPerkIndexForName
	extern G_GetClientState
	extern Com_DPrintf
	extern com_errorPrintsCount
	extern Com_HasPlayerProfile
	extern com_dedicated
	extern Cbuf_ExecuteBuffer
	extern Cbuf_InsertText
	extern Com_Error
	extern FS_GetMapBaseName
	extern Q_strlwr
	extern useFastFile
	extern DB_FileExists
	extern fs_gameDirVar
	extern Com_PrintError
	extern Com_GetBspFilename
	extern FS_ReadFile
	extern sv_cheats
	extern Cvar_SetBool
	extern sv_mapRotation
	extern sv_mapRotationCurrent
	extern Com_Parse
	extern Cvar_SetString
	extern Cmd_ExecuteSingleCommand
	extern Cbuf_AddServerText_f
	extern Cmd_AddCommand
	extern Cmd_AddServerCommandInternal
	extern Cmd_SetAutoComplete
	extern Cmd_RemoveCommand
	extern SV_MasterGameCompleteStatus

;Exports of sv_ccmds_mp:
	global SV_MapRestart
	global SV_MapRestart_f
	global SV_FastRestart_f
	global SV_KickClient
	global SV_Status_f
	global SV_ConTell_f
	global SV_Serverinfo_f
	global SV_Systeminfo_f
	global SV_KillServer_f
	global SV_ScriptUsage_f
	global SV_StringUsage_f
	global SV_Unban_f
	global SV_GetPlayerByNum
	global SV_BanNum_f
	global SV_KickClient_f
	global SV_DropNum_f
	global SV_TempBanNum_f
	global SV_GetPlayerByName
	global SV_DumpUser_f
	global SV_KickUser_f
	global SV_TempBan_f
	global SV_Drop_f
	global SV_Ban_f
	global SV_SetPerk_f
	global SV_Map_f
	global SV_ConSay_f
	global _ZZ23SV_AddDedicatedCommandsvE23SV_ConTell_f_VAR_SERVER
	global _ZZ23SV_AddDedicatedCommandsvE16SV_ConTell_f_VAR
	global _ZZ23SV_AddDedicatedCommandsvE22SV_ConSay_f_VAR_SERVER
	global _ZZ23SV_AddDedicatedCommandsvE15SV_ConSay_f_VAR
	global _ZZ22SV_AddOperatorCommandsvE23SV_SetPerk_f_VAR_SERVER
	global _ZZ22SV_AddOperatorCommandsvE16SV_SetPerk_f_VAR
	global _ZZ22SV_AddOperatorCommandsvE27SV_StringUsage_f_VAR_SERVER
	global _ZZ22SV_AddOperatorCommandsvE20SV_StringUsage_f_VAR
	global _ZZ22SV_AddOperatorCommandsvE27SV_ScriptUsage_f_VAR_SERVER
	global _ZZ22SV_AddOperatorCommandsvE20SV_ScriptUsage_f_VAR
	global _ZZ22SV_AddOperatorCommandsvE26SV_KillServer_f_VAR_SERVER
	global _ZZ22SV_AddOperatorCommandsvE19SV_KillServer_f_VAR
	global _ZZ22SV_AddOperatorCommandsvE19SV_Map_f_VAR_SERVER_0
	global _ZZ22SV_AddOperatorCommandsvE12SV_Map_f_VAR_0
	global _ZZ22SV_AddOperatorCommandsvE34SV_GameCompleteStatus_f_VAR_SERVER
	global _ZZ22SV_AddOperatorCommandsvE27SV_GameCompleteStatus_f_VAR
	global _ZZ22SV_AddOperatorCommandsvE25SV_MapRotate_f_VAR_SERVER
	global _ZZ22SV_AddOperatorCommandsvE18SV_MapRotate_f_VAR
	global _ZZ22SV_AddOperatorCommandsvE19SV_Map_f_VAR_SERVER
	global _ZZ22SV_AddOperatorCommandsvE12SV_Map_f_VAR
	global _ZZ22SV_AddOperatorCommandsvE27SV_FastRestart_f_VAR_SERVER
	global _ZZ22SV_AddOperatorCommandsvE20SV_FastRestart_f_VAR
	global _ZZ22SV_AddOperatorCommandsvE26SV_MapRestart_f_VAR_SERVER
	global _ZZ22SV_AddOperatorCommandsvE19SV_MapRestart_f_VAR
	global _ZZ22SV_AddOperatorCommandsvE24SV_DumpUser_f_VAR_SERVER
	global _ZZ22SV_AddOperatorCommandsvE17SV_DumpUser_f_VAR
	global _ZZ22SV_AddOperatorCommandsvE26SV_Systeminfo_f_VAR_SERVER
	global _ZZ22SV_AddOperatorCommandsvE19SV_Systeminfo_f_VAR
	global _ZZ22SV_AddOperatorCommandsvE26SV_Serverinfo_f_VAR_SERVER
	global _ZZ22SV_AddOperatorCommandsvE19SV_Serverinfo_f_VAR
	global _ZZ22SV_AddOperatorCommandsvE22SV_Status_f_VAR_SERVER
	global _ZZ22SV_AddOperatorCommandsvE15SV_Status_f_VAR
	global _ZZ22SV_AddOperatorCommandsvE23SV_DropNum_f_VAR_SERVER
	global _ZZ22SV_AddOperatorCommandsvE16SV_DropNum_f_VAR
	global _ZZ22SV_AddOperatorCommandsvE21SV_Unban_f_VAR_SERVER
	global _ZZ22SV_AddOperatorCommandsvE14SV_Unban_f_VAR
	global _ZZ22SV_AddOperatorCommandsvE26SV_TempBanNum_f_VAR_SERVER
	global _ZZ22SV_AddOperatorCommandsvE19SV_TempBanNum_f_VAR
	global _ZZ22SV_AddOperatorCommandsvE23SV_TempBan_f_VAR_SERVER_0
	global _ZZ22SV_AddOperatorCommandsvE16SV_TempBan_f_VAR_0
	global _ZZ22SV_AddOperatorCommandsvE23SV_TempBan_f_VAR_SERVER
	global _ZZ22SV_AddOperatorCommandsvE16SV_TempBan_f_VAR
	global _ZZ22SV_AddOperatorCommandsvE22SV_BanNum_f_VAR_SERVER
	global _ZZ22SV_AddOperatorCommandsvE15SV_BanNum_f_VAR
	global _ZZ22SV_AddOperatorCommandsvE19SV_Ban_f_VAR_SERVER
	global _ZZ22SV_AddOperatorCommandsvE12SV_Ban_f_VAR
	global _ZZ22SV_AddOperatorCommandsvE20SV_Drop_f_VAR_SERVER
	global _ZZ22SV_AddOperatorCommandsvE13SV_Drop_f_VAR
	global _ZZ22SV_AddOperatorCommandsvE25SV_Heartbeat_f_VAR_SERVER
	global _ZZ22SV_AddOperatorCommandsvE18SV_Heartbeat_f_VAR
	global _ZZ22SV_AddOperatorCommandsvE11initialized
	global SV_MapRotate_f
	global SV_Heartbeat_f
	global SV_GetMapBaseName
	global SV_AddOperatorCommands
	global SV_AddDedicatedCommands
	global SV_GameCompleteStatus_f
	global SV_RemoveOperatorCommands


SECTION .text


;SV_MapRestart(int)
SV_MapRestart:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x8c
	mov edi, eax
	call Com_SyncThreads
	mov eax, com_sv_running
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz SV_MapRestart_10
	mov dword [esp+0x4], _cstring_server_is_not_ru
	mov dword [esp], 0x0
	call Com_Printf
SV_MapRestart_40:
	add esp, 0x8c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SV_MapRestart_10:
	call SV_SetGametype
	mov dword [esp+0x8], 0x40
	mov esi, sv_gametype
	mov eax, [esi]
	mov eax, [eax+0xc]
	mov [esp+0x4], eax
	mov ebx, sv
	add ebx, 0x5fc08
	mov [esp], ebx
	call Q_strncpyz
	call G_GetSavePersist
	mov [ebp-0x6c], eax
	mov edx, sv_maxclients
	mov eax, [edx]
	cmp byte [eax+0xb], 0x0
	jz SV_MapRestart_20
SV_MapRestart_30:
	mov dword [esp], 0x0
	call G_SetSavePersist
	mov dword [esp], _cstring_mapname
	call Cvar_VariableString
	mov dword [esp+0x8], 0x40
	mov [esp+0x4], eax
	lea ebx, [ebp-0x64]
	mov [esp], ebx
	call Q_strncpyz
	mov [esp], ebx
	call FS_ConvertPath
	mov [esp], ebx
	call SV_SpawnServer
	add esp, 0x8c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SV_MapRestart_20:
	mov eax, [esi]
	mov eax, [eax+0xc]
	mov [esp+0x4], eax
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz SV_MapRestart_30
	test edi, edi
	jz SV_MapRestart_30
	mov eax, sv
	mov edx, [eax+0x10]
	mov eax, com_frameTime
	cmp edx, [eax]
	jz SV_MapRestart_40
	mov edx, sv_maxclients
	mov eax, [edx]
	mov eax, [eax+0xc]
	test eax, eax
	jle SV_MapRestart_50
	xor ebx, ebx
SV_MapRestart_70:
	lea eax, [ebx+ebx*4]
	shl eax, 0x7
	add eax, ebx
	lea eax, [ebx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	lea eax, [ebx+eax*4]
	mov edx, svs
	lea eax, [edx+eax*4+0x463800]
	lea esi, [eax+0xc]
	cmp dword [eax+0xc], 0x1
	jle SV_MapRestart_60
	mov ecx, [esi+0x20]
	mov [ebp-0x24], ecx
	mov edx, [esi+0x24]
	mov [ebp-0x20], edx
	mov eax, [esi+0x28]
	mov [ebp-0x1c], eax
	mov dword [esp+0x10], _cstring_fastrestart
	mov [esp+0x4], ecx
	mov [esp+0x8], edx
	mov [esp+0xc], eax
	mov dword [esp], 0x1
	call NET_OutOfBandPrint
SV_MapRestart_60:
	add ebx, 0x1
	mov eax, sv_maxclients
	mov eax, [eax]
	cmp ebx, [eax+0xc]
	jl SV_MapRestart_70
SV_MapRestart_50:
	call SV_InitDvar
	call SV_InitArchivedSnapshot
	call SV_InitSnapshot
	mov ebx, svs
	xor dword [ebx+0x463808], 0x4
	mov ecx, sv_serverId_value
	mov eax, [ecx]
	mov edx, eax
	and edx, 0xf0
	add eax, 0x1
	and eax, 0xf
	add edx, eax
	mov [ecx], edx
	mov [esp+0x4], edx
	mov eax, sv_serverid
	mov eax, [eax]
	mov [esp], eax
	call Cvar_SetInt
	mov edx, sv
	mov eax, com_frameTime
	mov eax, [eax]
	mov [edx+0x10], eax
	mov dword [edx], 0x1
	mov dword [edx+0xc], 0x1
	mov eax, [ebp-0x6c]
	mov [esp], eax
	call SV_RestartGameProgs
	xor esi, esi
SV_MapRestart_80:
	add dword [ebx+0x463804], 0x64
	call SV_RunFrame
	add esi, 0x1
	cmp esi, 0x3
	jnz SV_MapRestart_80
	mov ecx, sv_maxclients
	mov eax, [ecx]
	mov edx, [eax+0xc]
	test edx, edx
	jle SV_MapRestart_90
	xor ebx, ebx
	jmp SV_MapRestart_100
SV_MapRestart_120:
	mov dword [esp+0x8], 0x1
	mov [esp+0x4], eax
	mov [esp], edi
	call SV_DropClient
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_sv_maprestart_f_
	mov dword [esp], 0x0
	call Com_Printf
	mov ecx, sv_maxclients
SV_MapRestart_110:
	add ebx, 0x1
	mov eax, [ecx]
	cmp ebx, [eax+0xc]
	jge SV_MapRestart_90
SV_MapRestart_100:
	lea eax, [ebx+ebx*4]
	shl eax, 0x7
	add eax, ebx
	lea eax, [ebx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	lea eax, [ebx+eax*4]
	mov edx, svs
	lea esi, [edx+eax*4+0x463800]
	lea edi, [esi+0xc]
	cmp dword [esi+0xc], 0x1
	jle SV_MapRestart_110
	cmp dword [ebp-0x6c], 0x1
	sbb eax, eax
	and eax, 0xffffffd4
	add eax, 0x6e
	mov [esp+0x4], eax
	mov dword [esp], _cstring_c
	call va
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1
	mov [esp], edi
	call SV_AddServerCommand
	movzx eax, word [edi+0xa0d1a]
	mov [esp+0x4], eax
	mov [esp], ebx
	call ClientConnect
	test eax, eax
	jnz SV_MapRestart_120
	cmp dword [esi+0xc], 0x4
	jz SV_MapRestart_130
	mov ecx, sv_maxclients
	jmp SV_MapRestart_110
SV_MapRestart_90:
	mov eax, sv
	mov dword [eax], 0x2
	mov dword [eax+0xc], 0x0
	jmp SV_MapRestart_40
SV_MapRestart_130:
	lea eax, [esi+0x20e6c]
	mov [esp+0x4], eax
	mov [esp], edi
	call SV_ClientEnterWorld
	mov ecx, sv_maxclients
	jmp SV_MapRestart_110
	nop


;SV_MapRestart_f()
SV_MapRestart_f:
	push ebp
	mov ebp, esp
	xor eax, eax
	pop ebp
	jmp SV_MapRestart
	nop


;SV_FastRestart_f()
SV_FastRestart_f:
	push ebp
	mov ebp, esp
	mov eax, 0x1
	pop ebp
	jmp SV_MapRestart


;SV_KickClient(client_t*, char*, int, char*)
SV_KickClient:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, eax
	mov ebx, edx
	mov esi, [ebp+0x8]
	cmp dword [eax+0x20], 0x2
	jz SV_KickClient_10
	test edx, edx
	jz SV_KickClient_20
	mov [esp+0x8], ecx
	lea eax, [eax+0x21288]
	mov [esp+0x4], eax
	mov [esp], edx
	call Q_strncpyz
	mov [esp], ebx
	call Q_CleanStr
SV_KickClient_20:
	lea edx, [edi+0xa0cf8]
	mov eax, [edi+0xa0cf8]
	mov [esi], eax
	mov eax, [edx+0x4]
	mov [esi+0x4], eax
	mov eax, [edx+0x8]
	mov [esi+0x8], eax
	mov eax, [edx+0xc]
	mov [esi+0xc], eax
	mov eax, [edx+0x10]
	mov [esi+0x10], eax
	mov eax, [edx+0x14]
	mov [esi+0x14], eax
	mov eax, [edx+0x18]
	mov [esi+0x18], eax
	mov eax, [edx+0x1c]
	mov [esi+0x1c], eax
	movzx eax, byte [edx+0x20]
	mov [esi+0x20], al
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], _cstring_exe_playerkicked
	mov [esp], edi
	call SV_DropClient
	mov eax, svs
	mov eax, [eax+0x463804]
	mov [edi+0x21454], eax
	mov eax, 0x1
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SV_KickClient_10:
	mov dword [esp+0xc], 0x65
	mov dword [esp+0x8], _cstring_c_exe_cannotkick
	mov dword [esp+0x4], 0x0
	mov dword [esp], 0x0
	call SV_SendServerCommand
	xor eax, eax
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;SV_Status_f()
SV_Status_f:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov eax, com_sv_running
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz SV_Status_f_10
	mov dword [esp+0x4], _cstring_server_is_not_ru
	mov dword [esp], 0x0
	call Com_Printf
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SV_Status_f_10:
	mov eax, sv_mapname
	mov eax, [eax]
	mov eax, [eax+0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_map_s
	mov dword [esp], 0x0
	call Com_Printf
	mov dword [esp+0x4], _cstring_num_score_ping_g
	mov dword [esp], 0x0
	call Com_Printf
	mov dword [esp+0x4], _cstring_________
	mov dword [esp], 0x0
	call Com_Printf
	mov edx, sv_maxclients
	mov eax, [edx]
	mov ebx, [eax+0xc]
	test ebx, ebx
	jle SV_Status_f_20
	mov dword [ebp-0x30], 0x0
	mov dword [ebp-0x2c], 0x0
	mov esi, svs
	mov eax, esi
	add esi, 0x463838
	jmp SV_Status_f_30
SV_Status_f_40:
	add dword [ebp-0x30], 0x1
	add dword [ebp-0x2c], 0xa5634
	add esi, 0xa5634
	mov eax, [edx]
	mov ecx, [ebp-0x30]
	cmp ecx, [eax+0xc]
	jge SV_Status_f_20
SV_Status_f_90:
	mov eax, svs
SV_Status_f_30:
	mov ecx, [ebp-0x2c]
	lea ebx, [eax+ecx+0x46380c]
	mov ecx, [esi-0x2c]
	test ecx, ecx
	jz SV_Status_f_40
	mov eax, [ebp-0x30]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_3i_
	mov dword [esp], 0x0
	call Com_Printf
	mov ecx, [ebp-0x30]
	mov [esp], ecx
	call SV_GameClientNum
	mov eax, [ebp-0x2c]
	sar eax, 0x2
	imul eax, eax, 0x4315b545
	mov [esp], eax
	call G_GetClientScore
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_5i_
	mov dword [esp], 0x0
	call Com_Printf
	mov eax, [esi-0x2c]
	cmp eax, 0x2
	jz SV_Status_f_50
	sub eax, 0x1
	jz SV_Status_f_60
	mov eax, [esi+0x804b8]
	cmp eax, 0x2710
	mov edx, 0x270f
	cmovge eax, edx
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_4i_
	mov dword [esp], 0x0
	call Com_Printf
SV_Status_f_140:
	lea eax, [ebx+0xa0cf8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_32s_
	mov dword [esp], 0x0
	call Com_Printf
	add ebx, 0x21288
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_s7
	mov dword [esp], 0x0
	call Com_Printf
	mov [esp], ebx
	call I_DrawStrlen
	mov edi, 0x10
	sub edi, eax
	test edi, edi
	jg SV_Status_f_70
SV_Status_f_110:
	mov eax, svs
	mov eax, [eax+0x463804]
	sub eax, [esi+0x21428]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_7i_
	mov dword [esp], 0x0
	call Com_Printf
	mov ecx, [esi-0xc]
	mov [ebp-0x24], ecx
	mov edx, [esi-0x8]
	mov [ebp-0x20], edx
	mov eax, [esi-0x4]
	mov [ebp-0x1c], eax
	mov [esp], ecx
	mov [esp+0x4], edx
	mov [esp+0x8], eax
	call NET_AdrToString
	mov edi, eax
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_s
	mov dword [esp], 0x0
	call Com_Printf
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	repne scasb
	not ecx
	mov edi, 0x17
	sub edi, ecx
	test edi, edi
	jg SV_Status_f_80
SV_Status_f_130:
	mov eax, [esi]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_5i
	mov dword [esp], 0x0
	call Com_Printf
	mov eax, [esi+0x804bc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring__5i
	mov dword [esp], 0x0
	call Com_Printf
	mov dword [esp+0x4], _cstring_
	mov dword [esp], 0x0
	call Com_Printf
	mov edx, sv_maxclients
	add dword [ebp-0x30], 0x1
	add dword [ebp-0x2c], 0xa5634
	add esi, 0xa5634
	mov eax, [edx]
	mov ecx, [ebp-0x30]
	cmp ecx, [eax+0xc]
	jl SV_Status_f_90
SV_Status_f_20:
	mov dword [esp+0x4], _cstring_
	mov dword [esp], 0x0
	call Com_Printf
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SV_Status_f_70:
	xor ebx, ebx
SV_Status_f_100:
	mov dword [esp+0x4], _cstring_space
	mov dword [esp], 0x0
	call Com_Printf
	add ebx, 0x1
	cmp edi, ebx
	jnz SV_Status_f_100
	jmp SV_Status_f_110
SV_Status_f_80:
	xor ebx, ebx
SV_Status_f_120:
	mov dword [esp+0x4], _cstring_space
	mov dword [esp], 0x0
	call Com_Printf
	add ebx, 0x1
	cmp edi, ebx
	jnz SV_Status_f_120
	jmp SV_Status_f_130
SV_Status_f_60:
	mov dword [esp+0x4], _cstring_zmbi_
	mov dword [esp], 0x0
	call Com_Printf
	jmp SV_Status_f_140
SV_Status_f_50:
	mov dword [esp+0x4], _cstring_cnct_
	mov dword [esp], 0x0
	call Com_Printf
	jmp SV_Status_f_140


;SV_ConTell_f()
SV_ConTell_f:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x420
	mov eax, com_sv_running
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz SV_ConTell_f_10
	mov eax, sv_cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x2
	jle SV_ConTell_f_20
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x4]
	mov [esp], eax
	call atoi
	mov ecx, eax
	test eax, eax
	js SV_ConTell_f_20
	mov eax, sv_maxclients
	mov eax, [eax]
	cmp ecx, [eax+0xc]
	jge SV_ConTell_f_20
	lea eax, [ecx+ecx*4]
	shl eax, 0x7
	add eax, ecx
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	lea eax, [ecx+eax*4]
	mov edx, svs
	add edx, 0x46380c
	lea ebx, [edx+eax*4]
	cmp dword [ebx], 0x4
	jz SV_ConTell_f_30
SV_ConTell_f_20:
	add esp, 0x420
	pop ebx
	pop esi
	pop ebp
	ret
SV_ConTell_f_10:
	mov dword [esp+0x4], _cstring_server_is_not_ru
	mov dword [esp], 0x0
	call Com_Printf
	add esp, 0x420
	pop ebx
	pop esi
	pop ebp
	ret
SV_ConTell_f_30:
	mov dword [ebp-0x408], 0x736e6f63
	mov dword [ebp-0x404], 0x3a656c6f
	mov word [ebp-0x400], 0x20
	mov dword [esp+0x8], 0x3f7
	lea esi, [ebp-0x3ff]
	mov [esp+0x4], esi
	mov dword [esp], 0x2
	call Cmd_ArgsBuffer
	cmp byte [ebp-0x3ff], 0x22
	jz SV_ConTell_f_40
	lea edx, [ebp-0x408]
SV_ConTell_f_60:
	mov [esp+0x10], edx
	mov dword [esp+0xc], 0x68
	mov dword [esp+0x8], _cstring_c_s
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call SV_SendServerCommand
	jmp SV_ConTell_f_20
SV_ConTell_f_40:
	cmp byte [ebp-0x3fe], 0x0
	jnz SV_ConTell_f_50
	mov eax, 0x9
	lea edx, [ebp-0x408]
SV_ConTell_f_90:
	mov byte [ebp+eax-0x408], 0x0
	jmp SV_ConTell_f_60
SV_ConTell_f_50:
	lea eax, [ebp-0x3fe]
	mov ecx, esi
	jmp SV_ConTell_f_70
SV_ConTell_f_80:
	lea eax, [ecx+0x1]
SV_ConTell_f_70:
	lea edx, [ecx-0x1]
	mov ecx, eax
	movzx eax, byte [eax-0x1]
	mov [edx], al
	cmp byte [ecx+0x1], 0x0
	jnz SV_ConTell_f_80
	lea edx, [ebp-0x408]
	mov eax, ecx
	sub eax, edx
	jmp SV_ConTell_f_90
	nop


;SV_Serverinfo_f()
SV_Serverinfo_f:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x4], _cstring_server_info_sett
	mov dword [esp], 0x0
	call Com_Printf
	mov dword [esp+0x4], 0x404
	mov dword [esp], 0x0
	call Cvar_InfoString
	mov [esp], eax
	call Info_Print
	leave
	ret


;SV_Systeminfo_f()
SV_Systeminfo_f:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x4], _cstring_system_info_sett
	mov dword [esp], 0x0
	call Com_Printf
	mov dword [esp+0x4], 0x8
	mov dword [esp], 0x0
	call Cvar_InfoString
	mov [esp], eax
	call Info_Print
	leave
	ret


;SV_KillServer_f()
SV_KillServer_f:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp], _cstring_exe_serverkilled
	call Com_Shutdown
	leave
	ret


;SV_ScriptUsage_f()
SV_ScriptUsage_f:
	push ebp
	mov ebp, esp
	pop ebp
	jmp Scr_DumpScriptThreads
	nop


;SV_StringUsage_f()
SV_StringUsage_f:
	push ebp
	mov ebp, esp
	pop ebp
	jmp MT_DumpTree
	nop


;SV_Unban_f()
SV_Unban_f:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, sv_cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x2
	jz SV_Unban_f_10
	mov dword [esp+0x4], _cstring_usage_unban_clie
	mov dword [esp], 0x0
	call Com_Printf
	leave
	ret
SV_Unban_f_10:
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x4]
	mov [esp], eax
	call SV_UnbanClient
	leave
	ret
	nop


;SV_GetPlayerByNum()
SV_GetPlayerByNum:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, com_sv_running
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz SV_GetPlayerByNum_10
	mov eax, sv_cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x1
	jle SV_GetPlayerByNum_20
	mov eax, [eax+edx*4+0x64]
	mov ecx, [eax+0x4]
	movzx eax, byte [ecx]
	test al, al
	jz SV_GetPlayerByNum_30
	sub al, 0x30
	cmp al, 0x9
	ja SV_GetPlayerByNum_40
	mov edx, ecx
SV_GetPlayerByNum_50:
	movzx eax, byte [edx+0x1]
	test al, al
	jz SV_GetPlayerByNum_30
	add edx, 0x1
	sub al, 0x30
	cmp al, 0x9
	jbe SV_GetPlayerByNum_50
SV_GetPlayerByNum_40:
	mov [esp+0x8], ecx
	mov dword [esp+0x4], _cstring_bad_slot_number_
	mov dword [esp], 0x0
	call Com_Printf
	xor edx, edx
SV_GetPlayerByNum_70:
	mov eax, edx
	leave
	ret
SV_GetPlayerByNum_30:
	mov [esp], ecx
	call atoi
	mov ecx, eax
	test eax, eax
	js SV_GetPlayerByNum_60
	mov eax, sv_maxclients
	mov eax, [eax]
	cmp ecx, [eax+0xc]
	jge SV_GetPlayerByNum_60
	lea eax, [ecx+ecx*4]
	shl eax, 0x7
	add eax, ecx
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	lea eax, [ecx+eax*4]
	mov edx, svs
	lea eax, [edx+eax*4+0x463800]
	lea edx, [eax+0xc]
	mov eax, [eax+0xc]
	test eax, eax
	jnz SV_GetPlayerByNum_70
	mov [esp+0x8], ecx
	mov dword [esp+0x4], _cstring_client_i_is_not_
	mov dword [esp], 0x0
	call Com_Printf
SV_GetPlayerByNum_10:
	xor edx, edx
SV_GetPlayerByNum_80:
	mov eax, edx
	leave
	ret
SV_GetPlayerByNum_60:
	mov [esp+0x8], ecx
	mov dword [esp+0x4], _cstring_bad_client_slot_
	mov dword [esp], 0x0
	call Com_Printf
	xor edx, edx
	jmp SV_GetPlayerByNum_80
SV_GetPlayerByNum_20:
	mov dword [esp+0x4], _cstring_no_player_specif
	mov dword [esp], 0x0
	call Com_Printf
	xor edx, edx
	mov eax, edx
	leave
	ret


;SV_BanNum_f()
SV_BanNum_f:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, com_sv_running
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz SV_BanNum_f_10
	mov edx, sv_cmd_args
	mov eax, [edx]
	cmp dword [edx+eax*4+0x44], 0x2
	jz SV_BanNum_f_20
	mov dword [esp+0x4], _cstring_usage_banclient_
	mov dword [esp], 0x0
	call Com_Printf
SV_BanNum_f_30:
	leave
	ret
SV_BanNum_f_20:
	call SV_GetPlayerByNum
	test eax, eax
	jz SV_BanNum_f_30
	mov [esp], eax
	call SV_BanClient
	leave
	ret
SV_BanNum_f_10:
	mov dword [esp+0x4], _cstring_server_is_not_ru
	mov dword [esp], 0x0
	call Com_Printf
	leave
	ret
	nop


;SV_KickClient_f(char*, int, char*)
SV_KickClient_f:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, eax
	mov esi, edx
	mov ebx, ecx
	mov eax, com_sv_running
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz SV_KickClient_f_10
	mov edx, sv_cmd_args
	mov ecx, [edx]
	mov eax, [edx+ecx*4+0x44]
	cmp eax, 0x2
	jz SV_KickClient_f_20
	test eax, eax
	jle SV_KickClient_f_30
	mov eax, [edx+ecx*4+0x64]
	mov eax, [eax]
SV_KickClient_f_40:
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_usage_s_client_n
	mov dword [esp], 0x0
	call Com_Printf
	xor eax, eax
SV_KickClient_f_50:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SV_KickClient_f_10:
	mov dword [esp+0x4], _cstring_server_is_not_ru
	mov dword [esp], 0x0
	call Com_Printf
	xor eax, eax
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SV_KickClient_f_30:
	mov eax, _cstring_null
	jmp SV_KickClient_f_40
SV_KickClient_f_20:
	call SV_GetPlayerByNum
	test eax, eax
	jz SV_KickClient_f_50
	mov [esp], ebx
	mov ecx, esi
	mov edx, edi
	call SV_KickClient
	jmp SV_KickClient_f_50
	nop


;SV_DropNum_f()
SV_DropNum_f:
	push ebp
	mov ebp, esp
	sub esp, 0x38
	lea ecx, [ebp-0x29]
	xor edx, edx
	xor eax, eax
	call SV_KickClient_f
	leave
	ret


;SV_TempBanNum_f()
SV_TempBanNum_f:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	add esp, 0xffffff80
	lea ebx, [ebp-0x29]
	lea esi, [ebp-0x69]
	mov ecx, ebx
	mov edx, 0x40
	mov eax, esi
	call SV_KickClient_f
	test eax, eax
	jz SV_TempBanNum_f_10
	mov [esp+0xc], ebx
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_s_guid_s_was_kic
	mov dword [esp], 0x0
	call Com_Printf
	mov [esp], ebx
	call SV_BanGuidBriefly
SV_TempBanNum_f_10:
	sub esp, 0xffffff80
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;SV_GetPlayerByName()
SV_GetPlayerByName:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov eax, com_sv_running
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz SV_GetPlayerByName_10
	mov eax, sv_cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x1
	jle SV_GetPlayerByName_20
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x4]
	mov [ebp-0x5c], eax
	mov edx, sv_maxclients
	mov eax, [edx]
	mov eax, [eax+0xc]
	test eax, eax
	jle SV_GetPlayerByName_30
	xor esi, esi
	mov edi, svs
	add edi, 0x46380c
	mov [ebp-0x60], edx
	lea ebx, [edi+0x21288]
	jmp SV_GetPlayerByName_40
SV_GetPlayerByName_50:
	add esi, 0x1
	add edi, 0xa5634
	add ebx, 0xa5634
	mov eax, [edx]
	cmp esi, [eax+0xc]
	jge SV_GetPlayerByName_30
SV_GetPlayerByName_40:
	mov eax, [ebx-0x21288]
	test eax, eax
	jz SV_GetPlayerByName_50
	mov eax, [ebp-0x5c]
	mov [esp+0x4], eax
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jz SV_GetPlayerByName_60
	mov dword [esp+0x8], 0x40
	mov [esp+0x4], ebx
	lea eax, [ebp-0x58]
	mov [esp], eax
	call Q_strncpyz
	lea eax, [ebp-0x58]
	mov [esp], eax
	call Q_CleanStr
	mov eax, [ebp-0x5c]
	mov [esp+0x4], eax
	lea eax, [ebp-0x58]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jz SV_GetPlayerByName_60
	mov edx, [ebp-0x60]
	add esi, 0x1
	add edi, 0xa5634
	add ebx, 0xa5634
	mov eax, [edx]
	cmp esi, [eax+0xc]
	jl SV_GetPlayerByName_40
SV_GetPlayerByName_30:
	mov eax, [ebp-0x5c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_player_s_is_not_
	mov dword [esp], 0x0
	call Com_Printf
SV_GetPlayerByName_10:
	xor edi, edi
SV_GetPlayerByName_60:
	mov eax, edi
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SV_GetPlayerByName_20:
	mov dword [esp+0x4], _cstring_no_player_specif
	mov dword [esp], 0x0
	call Com_Printf
	xor edi, edi
	jmp SV_GetPlayerByName_60
	nop


;SV_DumpUser_f()
SV_DumpUser_f:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, com_sv_running
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz SV_DumpUser_f_10
	mov edx, sv_cmd_args
	mov eax, [edx]
	cmp dword [edx+eax*4+0x44], 0x2
	jz SV_DumpUser_f_20
	mov dword [esp+0x4], _cstring_usage_info_useri
	mov dword [esp], 0x0
	call Com_Printf
SV_DumpUser_f_30:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
SV_DumpUser_f_20:
	call SV_GetPlayerByName
	mov ebx, eax
	test eax, eax
	jz SV_DumpUser_f_30
	mov dword [esp+0x4], _cstring_userinfo
	mov dword [esp], 0x0
	call Com_Printf
	mov dword [esp+0x4], _cstring_1
	mov dword [esp], 0x0
	call Com_Printf
	lea eax, [ebx+0x648]
	mov [esp], eax
	call Info_Print
	add esp, 0x14
	pop ebx
	pop ebp
	ret
SV_DumpUser_f_10:
	mov dword [esp+0x4], _cstring_server_is_not_ru
	mov dword [esp], 0x0
	call Com_Printf
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;SV_KickUser_f(char*, int, char*)
SV_KickUser_f:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edi, eax
	mov esi, edx
	mov [ebp-0x1c], ecx
	mov eax, com_sv_running
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz SV_KickUser_f_10
	mov ebx, sv_cmd_args
	mov edx, [ebx]
	mov eax, [ebx+edx*4+0x44]
	cmp eax, 0x2
	jz SV_KickUser_f_20
	test eax, eax
	jle SV_KickUser_f_30
	mov eax, [ebx+edx*4+0x64]
	mov eax, [eax]
SV_KickUser_f_40:
	mov [esp+0xc], eax
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_usage_s_player_n
	mov dword [esp], 0x0
	call Com_Printf
	xor eax, eax
SV_KickUser_f_60:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SV_KickUser_f_10:
	mov dword [esp+0x4], _cstring_server_is_not_ru
	mov dword [esp], 0x0
	call Com_Printf
	xor eax, eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SV_KickUser_f_30:
	mov eax, _cstring_null
	jmp SV_KickUser_f_40
SV_KickUser_f_20:
	call SV_GetPlayerByName
	test eax, eax
	jz SV_KickUser_f_50
	mov edx, [ebp-0x1c]
	mov [esp], edx
	mov ecx, esi
	mov edx, edi
	call SV_KickClient
	jmp SV_KickUser_f_60
SV_KickUser_f_50:
	mov eax, [ebx]
	cmp dword [ebx+eax*4+0x44], 0x1
	jle SV_KickUser_f_70
	mov eax, [ebx+eax*4+0x64]
	mov eax, [eax+0x4]
SV_KickUser_f_110:
	mov dword [esp+0x4], _cstring_all
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jnz SV_KickUser_f_80
	mov edx, sv_maxclients
	mov eax, [edx]
	mov eax, [eax+0xc]
	test eax, eax
	jle SV_KickUser_f_80
	mov ebx, svs
	add ebx, 0x46380c
	xor esi, esi
	jmp SV_KickUser_f_90
SV_KickUser_f_100:
	add esi, 0x1
	add ebx, 0xa5634
	mov eax, [edx]
	cmp [eax+0xc], esi
	jle SV_KickUser_f_80
SV_KickUser_f_90:
	mov eax, [ebx]
	test eax, eax
	jz SV_KickUser_f_100
	mov eax, [ebp-0x1c]
	mov [esp], eax
	xor ecx, ecx
	xor edx, edx
	mov eax, ebx
	call SV_KickClient
	mov edx, sv_maxclients
	jmp SV_KickUser_f_100
SV_KickUser_f_80:
	xor eax, eax
	jmp SV_KickUser_f_60
SV_KickUser_f_70:
	mov eax, _cstring_null
	jmp SV_KickUser_f_110
	nop


;SV_TempBan_f()
SV_TempBan_f:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	add esp, 0xffffff80
	lea ebx, [ebp-0x29]
	lea esi, [ebp-0x69]
	mov ecx, ebx
	mov edx, 0x40
	mov eax, esi
	call SV_KickUser_f
	test eax, eax
	jz SV_TempBan_f_10
	mov [esp+0xc], ebx
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_s_guid_s_was_kic
	mov dword [esp], 0x0
	call Com_Printf
	mov [esp], ebx
	call SV_BanGuidBriefly
SV_TempBan_f_10:
	sub esp, 0xffffff80
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;SV_Drop_f()
SV_Drop_f:
	push ebp
	mov ebp, esp
	sub esp, 0x38
	lea ecx, [ebp-0x29]
	xor edx, edx
	xor eax, eax
	call SV_KickUser_f
	leave
	ret


;SV_Ban_f()
SV_Ban_f:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, com_sv_running
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz SV_Ban_f_10
	mov edx, sv_cmd_args
	mov eax, [edx]
	cmp dword [edx+eax*4+0x44], 0x2
	jz SV_Ban_f_20
	mov dword [esp+0x4], _cstring_usage_banuser_pl
	mov dword [esp], 0x0
	call Com_Printf
SV_Ban_f_30:
	leave
	ret
SV_Ban_f_20:
	call SV_GetPlayerByName
	test eax, eax
	jz SV_Ban_f_30
	mov [esp], eax
	call SV_BanClient
	leave
	ret
SV_Ban_f_10:
	mov dword [esp+0x4], _cstring_server_is_not_ru
	mov dword [esp], 0x0
	call Com_Printf
	leave
	ret
	nop


;SV_SetPerk_f()
SV_SetPerk_f:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	call SV_GetPlayerByName
	mov ebx, eax
	test eax, eax
	jz SV_SetPerk_f_10
	mov eax, sv_cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x2
	jg SV_SetPerk_f_20
	mov esi, _cstring_null
	mov [esp], esi
	call BG_GetPerkIndexForName
	mov edi, eax
	cmp eax, 0x13
	ja SV_SetPerk_f_30
SV_SetPerk_f_70:
	mov eax, sv_maxclients
	mov eax, [eax]
	mov edx, [eax+0xc]
	test edx, edx
	jle SV_SetPerk_f_40
	mov eax, svs
	add eax, 0x46380c
	cmp ebx, eax
	jz SV_SetPerk_f_40
	xor esi, esi
SV_SetPerk_f_60:
	add esi, 0x1
	add eax, 0xa5634
	cmp edx, esi
	jz SV_SetPerk_f_50
	cmp ebx, eax
	jnz SV_SetPerk_f_60
SV_SetPerk_f_50:
	mov [esp], esi
	call SV_GameClientNum
	mov ebx, 0x1
	mov ecx, edi
	shl ebx, cl
	or [eax+0x5fc], ebx
	mov [esp], esi
	call G_GetClientState
	or [eax+0x58], ebx
SV_SetPerk_f_10:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SV_SetPerk_f_20:
	mov eax, [eax+edx*4+0x64]
	mov esi, [eax+0x8]
	mov [esp], esi
	call BG_GetPerkIndexForName
	mov edi, eax
	cmp eax, 0x13
	jbe SV_SetPerk_f_70
SV_SetPerk_f_30:
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_unknown_perk_s
	mov dword [esp], 0x0
	call Com_DPrintf
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SV_SetPerk_f_40:
	xor esi, esi
	mov [esp], esi
	call SV_GameClientNum
	mov ebx, 0x1
	mov ecx, edi
	shl ebx, cl
	or [eax+0x5fc], ebx
	mov [esp], esi
	call G_GetClientState
	or [eax+0x58], ebx
	jmp SV_SetPerk_f_10


;SV_Map_f()
SV_Map_f:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x90
	mov eax, sv_cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x1
	jle SV_Map_f_10
	mov eax, [eax+edx*4+0x64]
	mov ebx, [eax+0x4]
SV_Map_f_70:
	cmp byte [ebx], 0x0
	jnz SV_Map_f_20
SV_Map_f_80:
	add esp, 0x90
	pop ebx
	pop esi
	pop ebp
	ret
SV_Map_f_20:
	mov eax, com_errorPrintsCount
	mov dword [eax], 0x0
	call Com_HasPlayerProfile
	test al, al
	jnz SV_Map_f_30
	mov eax, com_dedicated
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz SV_Map_f_40
SV_Map_f_30:
	mov dword [esp+0x8], _cstring_selectstringtabl
	mov dword [esp+0x4], 0x0
	mov dword [esp], 0x0
	call Cbuf_ExecuteBuffer
	mov eax, com_dedicated
	mov edx, [eax]
	mov eax, [edx+0x1c]
	cmp eax, [edx+0xc]
	jz SV_Map_f_50
	mov ebx, sv_cmd_args
	mov edx, [ebx]
	cmp dword [ebx+edx*4+0x44], 0x1
	jle SV_Map_f_60
	mov eax, [ebx+edx*4+0x64]
	mov ecx, [eax+0x4]
SV_Map_f_170:
	mov eax, [eax]
SV_Map_f_100:
	mov [esp+0x8], ecx
	mov [esp+0x4], eax
	mov dword [esp], _cstring_wait_wait_s_s
	call va
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Cbuf_InsertText
	add esp, 0x90
	pop ebx
	pop esi
	pop ebp
	ret
SV_Map_f_10:
	mov ebx, _cstring_null
	jmp SV_Map_f_70
SV_Map_f_40:
	mov dword [esp+0x4], _cstring_platform_notsign
	mov dword [esp], 0x2
	call Com_Error
	jmp SV_Map_f_80
SV_Map_f_60:
	jz SV_Map_f_90
	mov eax, _cstring_null
	mov ecx, _cstring_null
	jmp SV_Map_f_100
SV_Map_f_50:
	mov [esp], ebx
	call FS_GetMapBaseName
	mov dword [esp+0x8], 0x40
	mov [esp+0x4], eax
	lea ebx, [ebp-0x48]
	mov [esp], ebx
	call Q_strncpyz
	mov [esp], ebx
	call Q_strlwr
	mov eax, useFastFile
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz SV_Map_f_110
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call DB_FileExists
	test al, al
	jnz SV_Map_f_120
	mov eax, fs_gameDirVar
	mov eax, [eax]
	mov eax, [eax+0xc]
	cmp byte [eax], 0x0
	jz SV_Map_f_130
	mov dword [esp+0x4], 0x2
	mov [esp], ebx
	call DB_FileExists
	test al, al
	jnz SV_Map_f_120
SV_Map_f_130:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_cant_find_map_sa
	mov dword [esp], 0x1
	call Com_PrintError
	jmp SV_Map_f_80
SV_Map_f_110:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x40
	lea esi, [ebp-0x88]
	mov [esp], esi
	call Com_GetBspFilename
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call FS_ReadFile
	add eax, 0x1
	jz SV_Map_f_140
SV_Map_f_120:
	mov [esp], ebx
	call FS_ConvertPath
	mov [esp], ebx
	call SV_SpawnServer
	mov eax, sv_cmd_args
	mov edx, [eax]
	mov ecx, [eax+edx*4+0x44]
	test ecx, ecx
	jle SV_Map_f_150
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax]
SV_Map_f_160:
	mov dword [esp+0x4], _cstring_devmap
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	setz al
	movzx eax, al
	mov [esp+0x4], eax
	mov eax, sv_cheats
	mov eax, [eax]
	mov [esp], eax
	call Cvar_SetBool
	jmp SV_Map_f_80
SV_Map_f_150:
	mov eax, _cstring_null
	jmp SV_Map_f_160
SV_Map_f_140:
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_cant_find_map_s
	mov dword [esp], 0x1
	call Com_PrintError
	jmp SV_Map_f_80
SV_Map_f_90:
	mov ecx, _cstring_null
	mov eax, [ebx+edx*4+0x64]
	jmp SV_Map_f_170


;SV_ConSay_f()
SV_ConSay_f:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x424
	mov eax, com_sv_running
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz SV_ConSay_f_10
	mov edx, sv_cmd_args
	mov eax, [edx]
	cmp dword [edx+eax*4+0x44], 0x1
	jle SV_ConSay_f_20
	mov dword [ebp-0x408], 0x736e6f63
	mov dword [ebp-0x404], 0x3a656c6f
	mov word [ebp-0x400], 0x20
	mov dword [esp+0x8], 0x3f7
	lea ebx, [ebp-0x3ff]
	mov [esp+0x4], ebx
	mov dword [esp], 0x1
	call Cmd_ArgsBuffer
	cmp byte [ebp-0x3ff], 0x22
	jz SV_ConSay_f_30
	lea edx, [ebp-0x408]
SV_ConSay_f_50:
	mov [esp+0x10], edx
	mov dword [esp+0xc], 0x68
	mov dword [esp+0x8], _cstring_c_s
	mov dword [esp+0x4], 0x0
	mov dword [esp], 0x0
	call SV_SendServerCommand
SV_ConSay_f_20:
	add esp, 0x424
	pop ebx
	pop ebp
	ret
SV_ConSay_f_10:
	mov dword [esp+0x4], _cstring_server_is_not_ru
	mov dword [esp], 0x0
	call Com_Printf
	add esp, 0x424
	pop ebx
	pop ebp
	ret
SV_ConSay_f_30:
	cmp byte [ebp-0x3fe], 0x0
	jnz SV_ConSay_f_40
	mov eax, 0x9
	lea edx, [ebp-0x408]
SV_ConSay_f_80:
	mov byte [ebp+eax-0x408], 0x0
	jmp SV_ConSay_f_50
SV_ConSay_f_40:
	lea eax, [ebp-0x3fe]
	mov ecx, ebx
	jmp SV_ConSay_f_60
SV_ConSay_f_70:
	lea eax, [ecx+0x1]
SV_ConSay_f_60:
	lea edx, [ecx-0x1]
	mov ecx, eax
	movzx eax, byte [eax-0x1]
	mov [edx], al
	cmp byte [ecx+0x1], 0x0
	jnz SV_ConSay_f_70
	lea edx, [ebp-0x408]
	mov eax, ecx
	sub eax, edx
	jmp SV_ConSay_f_80


;SV_MapRotate_f()
SV_MapRotate_f:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov dword [esp+0x4], _cstring_map_rotate
	mov dword [esp], 0x0
	call Com_Printf
	mov ebx, sv_mapRotation
	mov eax, [ebx]
	mov eax, [eax+0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_sv_maprotation_i
	mov dword [esp], 0x0
	call Com_Printf
	mov esi, sv_mapRotationCurrent
	mov eax, [esi]
	mov eax, [eax+0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_sv_maprotationcu
	mov dword [esp], 0x0
	call Com_Printf
	mov edx, [esi]
	mov eax, [edx+0xc]
	cmp byte [eax], 0x0
	jz SV_MapRotate_f_10
SV_MapRotate_f_150:
	mov [ebp-0x1c], eax
	lea eax, [ebp-0x1c]
	mov [esp], eax
	call Com_Parse
	mov ebx, eax
	mov eax, [ebp-0x1c]
	test eax, eax
	jz SV_MapRotate_f_20
	mov [esp+0x4], eax
	mov eax, [esi]
	mov [esp], eax
	call Cvar_SetString
	test ebx, ebx
	jz SV_MapRotate_f_30
SV_MapRotate_f_140:
	mov edi, sv_mapRotationCurrent
	mov esi, edi
SV_MapRotate_f_90:
	mov dword [esp+0x4], _cstring_gametype
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz SV_MapRotate_f_40
	mov eax, [edi]
	mov eax, [eax+0xc]
	mov [ebp-0x1c], eax
	lea eax, [ebp-0x1c]
	mov [esp], eax
	call Com_Parse
	mov ebx, eax
	mov eax, [ebp-0x1c]
	test eax, eax
	jz SV_MapRotate_f_50
	mov [esp+0x4], eax
	mov eax, [edi]
	mov [esp], eax
	call Cvar_SetString
	test ebx, ebx
	jz SV_MapRotate_f_60
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_setting_g_gamety
	mov dword [esp], 0x0
	call Com_Printf
	mov eax, com_sv_running
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz SV_MapRotate_f_70
SV_MapRotate_f_130:
	mov [esp+0x4], ebx
	mov edx, sv_gametype
	mov eax, [edx]
	mov [esp], eax
	call Cvar_SetString
	mov eax, [esi]
	mov eax, [eax+0xc]
	mov [ebp-0x1c], eax
	lea eax, [ebp-0x1c]
	mov [esp], eax
	call Com_Parse
	mov ebx, eax
	mov eax, [ebp-0x1c]
	test eax, eax
	jz SV_MapRotate_f_80
SV_MapRotate_f_110:
	mov [esp+0x4], eax
	mov eax, [esi]
	mov [esp], eax
	call Cvar_SetString
	test ebx, ebx
	jnz SV_MapRotate_f_90
SV_MapRotate_f_120:
	mov dword [esp+0x4], _cstring_no_map_specified
	mov dword [esp], 0x0
	call Com_Printf
	mov eax, 0x1
	call SV_MapRestart
SV_MapRotate_f_160:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SV_MapRotate_f_40:
	mov dword [esp+0x4], _cstring_map
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jz SV_MapRotate_f_100
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_unknown_keyword_
	mov dword [esp], 0x0
	call Com_Printf
	mov eax, [esi]
	mov eax, [eax+0xc]
	mov [ebp-0x1c], eax
	lea eax, [ebp-0x1c]
	mov [esp], eax
	call Com_Parse
	mov ebx, eax
	mov eax, [ebp-0x1c]
	test eax, eax
	jnz SV_MapRotate_f_110
SV_MapRotate_f_80:
	mov dword [esp+0x4], _cstring_null
	mov eax, [esi]
	mov [esp], eax
	call Cvar_SetString
	jmp SV_MapRotate_f_120
SV_MapRotate_f_70:
	mov [esp+0x4], ebx
	mov edx, sv_gametype
	mov eax, [edx]
	mov eax, [eax+0xc]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jz SV_MapRotate_f_130
	mov dword [esp], 0x0
	call G_SetSavePersist
	jmp SV_MapRotate_f_130
SV_MapRotate_f_20:
	mov dword [esp+0x4], _cstring_null
	mov eax, [esi]
	mov [esp], eax
	call Cvar_SetString
SV_MapRotate_f_30:
	mov eax, sv_mapRotation
	mov eax, [eax]
	mov eax, [eax+0xc]
	mov [esp+0x4], eax
	mov esi, sv_mapRotationCurrent
	mov eax, [esi]
	mov [esp], eax
	call Cvar_SetString
	mov eax, [esi]
	mov eax, [eax+0xc]
	mov [ebp-0x1c], eax
	lea edx, [ebp-0x1c]
	mov [esp], edx
	call Com_Parse
	mov ebx, eax
	mov eax, [ebp-0x1c]
	test eax, eax
	jz SV_MapRotate_f_80
	mov [esp+0x4], eax
	mov eax, [esi]
	mov [esp], eax
	call Cvar_SetString
	test ebx, ebx
	jnz SV_MapRotate_f_140
	jmp SV_MapRotate_f_120
SV_MapRotate_f_10:
	mov eax, [ebx]
	mov eax, [eax+0xc]
	mov [esp+0x4], eax
	mov [esp], edx
	call Cvar_SetString
	mov edx, [esi]
	mov eax, [edx+0xc]
	jmp SV_MapRotate_f_150
SV_MapRotate_f_50:
	mov dword [esp+0x4], _cstring_null
	mov eax, [edi]
	mov [esp], eax
	call Cvar_SetString
SV_MapRotate_f_60:
	mov dword [esp+0x4], _cstring_no_gametype_spec
	mov dword [esp], 0x0
	call Com_Printf
	mov eax, 0x1
	call SV_MapRestart
	jmp SV_MapRotate_f_160
SV_MapRotate_f_100:
	mov edx, sv_mapRotationCurrent
	mov eax, [edx]
	mov eax, [eax+0xc]
	mov [ebp-0x1c], eax
	lea eax, [ebp-0x1c]
	mov [esp], eax
	call Com_Parse
	mov ebx, eax
	mov eax, [ebp-0x1c]
	test eax, eax
	jz SV_MapRotate_f_170
	mov [esp+0x4], eax
	mov edx, sv_mapRotationCurrent
	mov eax, [edx]
	mov [esp], eax
	call Cvar_SetString
	test ebx, ebx
	jz SV_MapRotate_f_180
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_setting_map_s
	mov dword [esp], 0x0
	call Com_Printf
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_map_s1
	call va
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov dword [esp], 0x0
	call Cmd_ExecuteSingleCommand
	jmp SV_MapRotate_f_160
SV_MapRotate_f_170:
	mov dword [esp+0x4], _cstring_null
	mov edx, sv_mapRotationCurrent
	mov eax, [edx]
	mov [esp], eax
	call Cvar_SetString
SV_MapRotate_f_180:
	mov dword [esp+0x4], _cstring_no_map_specified1
	mov dword [esp], 0x0
	call Com_Printf
	mov eax, 0x1
	call SV_MapRestart
	jmp SV_MapRotate_f_160


;SV_Heartbeat_f()
SV_Heartbeat_f:
	push ebp
	mov ebp, esp
	mov eax, svs
	mov dword [eax+svs+0x9766630], 0x80000000
	pop ebp
	ret


;SV_GetMapBaseName(char const*)
SV_GetMapBaseName:
	push ebp
	mov ebp, esp
	pop ebp
	jmp FS_GetMapBaseName
	nop


;SV_AddOperatorCommands()
SV_AddOperatorCommands:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [_ZZ22SV_AddOperatorCommandsvE11initialized]
	test eax, eax
	jz SV_AddOperatorCommands_10
	add esp, 0x14
	pop ebx
	pop ebp
	ret
SV_AddOperatorCommands_10:
	mov dword [_ZZ22SV_AddOperatorCommandsvE11initialized], 0x1
	mov dword [esp+0x8], _ZZ22SV_AddOperatorCommandsvE18SV_Heartbeat_f_VAR
	mov ebx, Cbuf_AddServerText_f
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_heartbeat
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ22SV_AddOperatorCommandsvE25SV_Heartbeat_f_VAR_SERVER
	mov dword [esp+0x4], SV_Heartbeat_f
	mov dword [esp], _cstring_heartbeat
	call Cmd_AddServerCommandInternal
	mov dword [esp+0x8], _ZZ22SV_AddOperatorCommandsvE13SV_Drop_f_VAR
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_onlykick
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ22SV_AddOperatorCommandsvE20SV_Drop_f_VAR_SERVER
	mov dword [esp+0x4], SV_Drop_f
	mov dword [esp], _cstring_onlykick
	call Cmd_AddServerCommandInternal
	mov dword [esp+0x8], _ZZ22SV_AddOperatorCommandsvE12SV_Ban_f_VAR
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_banuser
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ22SV_AddOperatorCommandsvE19SV_Ban_f_VAR_SERVER
	mov dword [esp+0x4], SV_Ban_f
	mov dword [esp], _cstring_banuser
	call Cmd_AddServerCommandInternal
	mov dword [esp+0x8], _ZZ22SV_AddOperatorCommandsvE15SV_BanNum_f_VAR
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_banclient
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ22SV_AddOperatorCommandsvE22SV_BanNum_f_VAR_SERVER
	mov dword [esp+0x4], SV_BanNum_f
	mov dword [esp], _cstring_banclient
	call Cmd_AddServerCommandInternal
	mov dword [esp+0x8], _ZZ22SV_AddOperatorCommandsvE16SV_TempBan_f_VAR
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_kick
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ22SV_AddOperatorCommandsvE23SV_TempBan_f_VAR_SERVER
	mov dword [esp+0x4], SV_TempBan_f
	mov dword [esp], _cstring_kick
	call Cmd_AddServerCommandInternal
	mov dword [esp+0x8], _ZZ22SV_AddOperatorCommandsvE16SV_TempBan_f_VAR_0
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_tempbanuser
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ22SV_AddOperatorCommandsvE23SV_TempBan_f_VAR_SERVER_0
	mov dword [esp+0x4], SV_TempBan_f
	mov dword [esp], _cstring_tempbanuser
	call Cmd_AddServerCommandInternal
	mov dword [esp+0x8], _ZZ22SV_AddOperatorCommandsvE19SV_TempBanNum_f_VAR
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_tempbanclient
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ22SV_AddOperatorCommandsvE26SV_TempBanNum_f_VAR_SERVER
	mov dword [esp+0x4], SV_TempBanNum_f
	mov dword [esp], _cstring_tempbanclient
	call Cmd_AddServerCommandInternal
	mov dword [esp+0x8], _ZZ22SV_AddOperatorCommandsvE14SV_Unban_f_VAR
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_unbanuser
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ22SV_AddOperatorCommandsvE21SV_Unban_f_VAR_SERVER
	mov dword [esp+0x4], SV_Unban_f
	mov dword [esp], _cstring_unbanuser
	call Cmd_AddServerCommandInternal
	mov dword [esp+0x8], _ZZ22SV_AddOperatorCommandsvE16SV_DropNum_f_VAR
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_clientkick
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ22SV_AddOperatorCommandsvE23SV_DropNum_f_VAR_SERVER
	mov dword [esp+0x4], SV_DropNum_f
	mov dword [esp], _cstring_clientkick
	call Cmd_AddServerCommandInternal
	mov dword [esp+0x8], _ZZ22SV_AddOperatorCommandsvE15SV_Status_f_VAR
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_status
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ22SV_AddOperatorCommandsvE22SV_Status_f_VAR_SERVER
	mov dword [esp+0x4], SV_Status_f
	mov dword [esp], _cstring_status
	call Cmd_AddServerCommandInternal
	mov dword [esp+0x8], _ZZ22SV_AddOperatorCommandsvE19SV_Serverinfo_f_VAR
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_serverinfo
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ22SV_AddOperatorCommandsvE26SV_Serverinfo_f_VAR_SERVER
	mov dword [esp+0x4], SV_Serverinfo_f
	mov dword [esp], _cstring_serverinfo
	call Cmd_AddServerCommandInternal
	mov dword [esp+0x8], _ZZ22SV_AddOperatorCommandsvE19SV_Systeminfo_f_VAR
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_systeminfo
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ22SV_AddOperatorCommandsvE26SV_Systeminfo_f_VAR_SERVER
	mov dword [esp+0x4], SV_Systeminfo_f
	mov dword [esp], _cstring_systeminfo
	call Cmd_AddServerCommandInternal
	mov dword [esp+0x8], _ZZ22SV_AddOperatorCommandsvE17SV_DumpUser_f_VAR
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_dumpuser
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ22SV_AddOperatorCommandsvE24SV_DumpUser_f_VAR_SERVER
	mov dword [esp+0x4], SV_DumpUser_f
	mov dword [esp], _cstring_dumpuser
	call Cmd_AddServerCommandInternal
	mov dword [esp+0x8], _ZZ22SV_AddOperatorCommandsvE19SV_MapRestart_f_VAR
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_map_restart
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ22SV_AddOperatorCommandsvE26SV_MapRestart_f_VAR_SERVER
	mov dword [esp+0x4], SV_MapRestart_f
	mov dword [esp], _cstring_map_restart
	call Cmd_AddServerCommandInternal
	mov dword [esp+0x8], _ZZ22SV_AddOperatorCommandsvE20SV_FastRestart_f_VAR
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_fast_restart
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ22SV_AddOperatorCommandsvE27SV_FastRestart_f_VAR_SERVER
	mov dword [esp+0x4], SV_FastRestart_f
	mov dword [esp], _cstring_fast_restart
	call Cmd_AddServerCommandInternal
	mov dword [esp+0x8], _ZZ22SV_AddOperatorCommandsvE12SV_Map_f_VAR
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_map
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ22SV_AddOperatorCommandsvE19SV_Map_f_VAR_SERVER
	mov dword [esp+0x4], SV_Map_f
	mov dword [esp], _cstring_map
	call Cmd_AddServerCommandInternal
	mov dword [esp+0x8], _cstring_d3dbsp
	mov dword [esp+0x4], _cstring_mapsmp
	mov dword [esp], _cstring_map
	call Cmd_SetAutoComplete
	mov dword [esp+0x8], _ZZ22SV_AddOperatorCommandsvE18SV_MapRotate_f_VAR
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_map_rotate1
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ22SV_AddOperatorCommandsvE25SV_MapRotate_f_VAR_SERVER
	mov dword [esp+0x4], SV_MapRotate_f
	mov dword [esp], _cstring_map_rotate1
	call Cmd_AddServerCommandInternal
	mov dword [esp+0x8], _ZZ22SV_AddOperatorCommandsvE27SV_GameCompleteStatus_f_VAR
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_gamecompletestat
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ22SV_AddOperatorCommandsvE34SV_GameCompleteStatus_f_VAR_SERVER
	mov dword [esp+0x4], SV_GameCompleteStatus_f
	mov dword [esp], _cstring_gamecompletestat
	call Cmd_AddServerCommandInternal
	mov dword [esp+0x8], _ZZ22SV_AddOperatorCommandsvE12SV_Map_f_VAR_0
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_devmap
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ22SV_AddOperatorCommandsvE19SV_Map_f_VAR_SERVER_0
	mov dword [esp+0x4], SV_Map_f
	mov dword [esp], _cstring_devmap
	call Cmd_AddServerCommandInternal
	mov dword [esp+0x8], _cstring_d3dbsp
	mov dword [esp+0x4], _cstring_mapsmp
	mov dword [esp], _cstring_devmap
	call Cmd_SetAutoComplete
	mov dword [esp+0x8], _ZZ22SV_AddOperatorCommandsvE19SV_KillServer_f_VAR
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_killserver
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ22SV_AddOperatorCommandsvE26SV_KillServer_f_VAR_SERVER
	mov dword [esp+0x4], SV_KillServer_f
	mov dword [esp], _cstring_killserver
	call Cmd_AddServerCommandInternal
	mov eax, com_dedicated
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	jnz SV_AddOperatorCommands_20
SV_AddOperatorCommands_30:
	mov dword [esp+0x8], _ZZ22SV_AddOperatorCommandsvE20SV_ScriptUsage_f_VAR
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_scriptusage
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ22SV_AddOperatorCommandsvE27SV_ScriptUsage_f_VAR_SERVER
	mov dword [esp+0x4], SV_ScriptUsage_f
	mov dword [esp], _cstring_scriptusage
	call Cmd_AddServerCommandInternal
	mov dword [esp+0x8], _ZZ22SV_AddOperatorCommandsvE20SV_StringUsage_f_VAR
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_stringusage
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ22SV_AddOperatorCommandsvE27SV_StringUsage_f_VAR_SERVER
	mov dword [esp+0x4], SV_StringUsage_f
	mov dword [esp], _cstring_stringusage
	call Cmd_AddServerCommandInternal
	mov dword [esp+0x8], _ZZ22SV_AddOperatorCommandsvE16SV_SetPerk_f_VAR
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_setperk
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ22SV_AddOperatorCommandsvE23SV_SetPerk_f_VAR_SERVER
	mov dword [esp+0x4], SV_SetPerk_f
	mov dword [esp], _cstring_setperk
	call Cmd_AddServerCommandInternal
	add esp, 0x14
	pop ebx
	pop ebp
	ret
SV_AddOperatorCommands_20:
	call SV_AddDedicatedCommands
	jmp SV_AddOperatorCommands_30


;SV_AddDedicatedCommands()
SV_AddDedicatedCommands:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov dword [esp], _cstring_say
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_tell
	call Cmd_RemoveCommand
	mov dword [esp+0x8], _ZZ23SV_AddDedicatedCommandsvE15SV_ConSay_f_VAR
	mov ebx, Cbuf_AddServerText_f
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_say
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ23SV_AddDedicatedCommandsvE22SV_ConSay_f_VAR_SERVER
	mov dword [esp+0x4], SV_ConSay_f
	mov dword [esp], _cstring_say
	call Cmd_AddServerCommandInternal
	mov dword [esp+0x8], _ZZ23SV_AddDedicatedCommandsvE16SV_ConTell_f_VAR
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_tell
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ23SV_AddDedicatedCommandsvE23SV_ConTell_f_VAR_SERVER
	mov dword [esp+0x4], SV_ConTell_f
	mov dword [esp], _cstring_tell
	call Cmd_AddServerCommandInternal
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;SV_GameCompleteStatus_f()
SV_GameCompleteStatus_f:
	push ebp
	mov ebp, esp
	pop ebp
	jmp SV_MasterGameCompleteStatus
	nop


;SV_RemoveOperatorCommands()
SV_RemoveOperatorCommands:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop


;Initialized global or static variables of sv_ccmds_mp:
SECTION .data


;Initialized constant data of sv_ccmds_mp:
SECTION .rdata


;Zero initialized global or static variables of sv_ccmds_mp:
SECTION .bss
_ZZ23SV_AddDedicatedCommandsvE23SV_ConTell_f_VAR_SERVER: resb 0x14
_ZZ23SV_AddDedicatedCommandsvE16SV_ConTell_f_VAR: resb 0x14
_ZZ23SV_AddDedicatedCommandsvE22SV_ConSay_f_VAR_SERVER: resb 0x14
_ZZ23SV_AddDedicatedCommandsvE15SV_ConSay_f_VAR: resb 0x14
_ZZ22SV_AddOperatorCommandsvE23SV_SetPerk_f_VAR_SERVER: resb 0x14
_ZZ22SV_AddOperatorCommandsvE16SV_SetPerk_f_VAR: resb 0x14
_ZZ22SV_AddOperatorCommandsvE27SV_StringUsage_f_VAR_SERVER: resb 0x14
_ZZ22SV_AddOperatorCommandsvE20SV_StringUsage_f_VAR: resb 0x14
_ZZ22SV_AddOperatorCommandsvE27SV_ScriptUsage_f_VAR_SERVER: resb 0x14
_ZZ22SV_AddOperatorCommandsvE20SV_ScriptUsage_f_VAR: resb 0x14
_ZZ22SV_AddOperatorCommandsvE26SV_KillServer_f_VAR_SERVER: resb 0x14
_ZZ22SV_AddOperatorCommandsvE19SV_KillServer_f_VAR: resb 0x14
_ZZ22SV_AddOperatorCommandsvE19SV_Map_f_VAR_SERVER_0: resb 0x14
_ZZ22SV_AddOperatorCommandsvE12SV_Map_f_VAR_0: resb 0x14
_ZZ22SV_AddOperatorCommandsvE34SV_GameCompleteStatus_f_VAR_SERVER: resb 0x14
_ZZ22SV_AddOperatorCommandsvE27SV_GameCompleteStatus_f_VAR: resb 0x14
_ZZ22SV_AddOperatorCommandsvE25SV_MapRotate_f_VAR_SERVER: resb 0x14
_ZZ22SV_AddOperatorCommandsvE18SV_MapRotate_f_VAR: resb 0x14
_ZZ22SV_AddOperatorCommandsvE19SV_Map_f_VAR_SERVER: resb 0x14
_ZZ22SV_AddOperatorCommandsvE12SV_Map_f_VAR: resb 0x14
_ZZ22SV_AddOperatorCommandsvE27SV_FastRestart_f_VAR_SERVER: resb 0x14
_ZZ22SV_AddOperatorCommandsvE20SV_FastRestart_f_VAR: resb 0x14
_ZZ22SV_AddOperatorCommandsvE26SV_MapRestart_f_VAR_SERVER: resb 0x14
_ZZ22SV_AddOperatorCommandsvE19SV_MapRestart_f_VAR: resb 0x14
_ZZ22SV_AddOperatorCommandsvE24SV_DumpUser_f_VAR_SERVER: resb 0x14
_ZZ22SV_AddOperatorCommandsvE17SV_DumpUser_f_VAR: resb 0x14
_ZZ22SV_AddOperatorCommandsvE26SV_Systeminfo_f_VAR_SERVER: resb 0x14
_ZZ22SV_AddOperatorCommandsvE19SV_Systeminfo_f_VAR: resb 0x14
_ZZ22SV_AddOperatorCommandsvE26SV_Serverinfo_f_VAR_SERVER: resb 0x14
_ZZ22SV_AddOperatorCommandsvE19SV_Serverinfo_f_VAR: resb 0x14
_ZZ22SV_AddOperatorCommandsvE22SV_Status_f_VAR_SERVER: resb 0x14
_ZZ22SV_AddOperatorCommandsvE15SV_Status_f_VAR: resb 0x14
_ZZ22SV_AddOperatorCommandsvE23SV_DropNum_f_VAR_SERVER: resb 0x14
_ZZ22SV_AddOperatorCommandsvE16SV_DropNum_f_VAR: resb 0x14
_ZZ22SV_AddOperatorCommandsvE21SV_Unban_f_VAR_SERVER: resb 0x14
_ZZ22SV_AddOperatorCommandsvE14SV_Unban_f_VAR: resb 0x14
_ZZ22SV_AddOperatorCommandsvE26SV_TempBanNum_f_VAR_SERVER: resb 0x14
_ZZ22SV_AddOperatorCommandsvE19SV_TempBanNum_f_VAR: resb 0x14
_ZZ22SV_AddOperatorCommandsvE23SV_TempBan_f_VAR_SERVER_0: resb 0x14
_ZZ22SV_AddOperatorCommandsvE16SV_TempBan_f_VAR_0: resb 0x14
_ZZ22SV_AddOperatorCommandsvE23SV_TempBan_f_VAR_SERVER: resb 0x14
_ZZ22SV_AddOperatorCommandsvE16SV_TempBan_f_VAR: resb 0x14
_ZZ22SV_AddOperatorCommandsvE22SV_BanNum_f_VAR_SERVER: resb 0x14
_ZZ22SV_AddOperatorCommandsvE15SV_BanNum_f_VAR: resb 0x14
_ZZ22SV_AddOperatorCommandsvE19SV_Ban_f_VAR_SERVER: resb 0x14
_ZZ22SV_AddOperatorCommandsvE12SV_Ban_f_VAR: resb 0x14
_ZZ22SV_AddOperatorCommandsvE20SV_Drop_f_VAR_SERVER: resb 0x14
_ZZ22SV_AddOperatorCommandsvE13SV_Drop_f_VAR: resb 0x14
_ZZ22SV_AddOperatorCommandsvE25SV_Heartbeat_f_VAR_SERVER: resb 0x14
_ZZ22SV_AddOperatorCommandsvE18SV_Heartbeat_f_VAR: resb 0x14
_ZZ22SV_AddOperatorCommandsvE11initialized: resb 0x18


;All cstrings:
SECTION .rdata
_cstring_server_is_not_ru:		db "Server is not running.",0ah,0
_cstring_mapname:		db "mapname",0
_cstring_fastrestart:		db "fastrestart",0
_cstring_sv_maprestart_f_:		db "SV_MapRestart_f: dropped client %i - denied!",0ah,0
_cstring_c:		db "%c",0
_cstring_exe_playerkicked:		db "EXE_PLAYERKICKED",0
_cstring_c_exe_cannotkick:		db "%c ",22h,"EXE_CANNOTKICKHOSTPLAYER",22h,0
_cstring_map_s:		db "map: %s",0ah,0
_cstring_num_score_ping_g:		db "num score ping guid                             name            lastmsg address               qport rate",0ah,0
_cstring_________:		db "--- ----- ---- -------------------------------- --------------- ------- --------------------- ----- -----",0ah,0
_cstring_3i_:		db "%3i ",0
_cstring_5i_:		db "%5i ",0
_cstring_4i_:		db "%4i ",0
_cstring_32s_:		db "%32s ",0
_cstring_s7:		db "%s^7",0
_cstring_7i_:		db "%7i ",0
_cstring_s:		db "%s",0
_cstring_5i:		db "%5i",0
_cstring__5i:		db " %5i",0
_cstring_:		db 0ah,0
_cstring_space:		db " ",0
_cstring_zmbi_:		db "ZMBI ",0
_cstring_cnct_:		db "CNCT ",0
_cstring_c_s:		db "%c ",22h,015h,"%s",22h,0
_cstring_server_info_sett:		db "Server info settings:",0ah,0
_cstring_system_info_sett:		db "System info settings:",0ah,0
_cstring_exe_serverkilled:		db "EXE_SERVERKILLED",0
_cstring_usage_unban_clie:		db "Usage: unban <client name>",0ah,0
_cstring_bad_slot_number_:		db "Bad slot number: %s",0ah,0
_cstring_client_i_is_not_:		db "Client %i is not active",0ah,0
_cstring_bad_client_slot_:		db "Bad client slot: %i",0ah,0
_cstring_no_player_specif:		db "No player specified.",0ah,0
_cstring_usage_banclient_:		db "Usage: banClient <client number>",0ah,0
_cstring_usage_s_client_n:		db "Usage: %s <client number>",0ah,0
_cstring_null:		db 0
_cstring_s_guid_s_was_kic:		db "%s (guid ",22h,"%s",22h,") was kicked for cheating",0ah,0
_cstring_player_s_is_not_:		db "Player %s is not on the server",0ah,0
_cstring_usage_info_useri:		db "Usage: info <userid>",0ah,0
_cstring_userinfo:		db "userinfo",0ah,0
_cstring_1:		db "--------",0ah,0
_cstring_usage_s_player_n:		db "Usage: %s <player name>",0ah,"%s all = kick everyone",0ah,0
_cstring_all:		db "all",0
_cstring_usage_banuser_pl:		db "Usage: banUser <player name>",0ah,0
_cstring_unknown_perk_s:		db "Unknown perk: %s",0ah,0
_cstring_selectstringtabl:		db "selectStringTableEntryInDvar mp/didyouknow.csv 0 didyouknow",0
_cstring_wait_wait_s_s:		db "wait; wait; %s %s;",0
_cstring_platform_notsign:		db "PLATFORM_NOTSIGNEDINTOPROFILE",0
_cstring_cant_find_map_sa:		db "Can",27h,"t find map ",22h,"%s",22h,".",0ah,"A mod is required for custom maps",0ah,0
_cstring_devmap:		db "devmap",0
_cstring_cant_find_map_s:		db "Can",27h,"t find map %s",0ah,0
_cstring_map_rotate:		db "map_rotate...",0ah,0ah,0
_cstring_sv_maprotation_i:		db 22h,"sv_mapRotation",22h," is:",22h,"%s",22h,0ah,0ah,0
_cstring_sv_maprotationcu:		db 22h,"sv_mapRotationCurrent",22h," is:",22h,"%s",22h,0ah,0ah,0
_cstring_gametype:		db "gametype",0
_cstring_setting_g_gamety:		db "Setting g_gametype: %s.",0ah,0
_cstring_no_map_specified:		db "No map specified in sv_mapRotation - forcing map_restart.",0ah,0
_cstring_map:		db "map",0
_cstring_unknown_keyword_:		db "Unknown keyword ",27h,"%s",27h," in sv_mapRotation.",0ah,0
_cstring_no_gametype_spec:		db "No gametype specified after ",27h,"gametype",27h," keyword in sv_mapRotation - forcing map_restart.",0ah,0
_cstring_setting_map_s:		db "Setting map: %s.",0ah,0
_cstring_map_s1:		db "map %s",0ah,0
_cstring_no_map_specified1:		db "No map specified after ",27h,"map",27h," keyword in sv_mapRotation - forcing map_restart.",0ah,0
_cstring_heartbeat:		db "heartbeat",0
_cstring_onlykick:		db "onlykick",0
_cstring_banuser:		db "banUser",0
_cstring_banclient:		db "banClient",0
_cstring_kick:		db "kick",0
_cstring_tempbanuser:		db "tempBanUser",0
_cstring_tempbanclient:		db "tempBanClient",0
_cstring_unbanuser:		db "unbanUser",0
_cstring_clientkick:		db "clientkick",0
_cstring_status:		db "status",0
_cstring_serverinfo:		db "serverinfo",0
_cstring_systeminfo:		db "systeminfo",0
_cstring_dumpuser:		db "dumpuser",0
_cstring_map_restart:		db "map_restart",0
_cstring_fast_restart:		db "fast_restart",0
_cstring_d3dbsp:		db "d3dbsp",0
_cstring_mapsmp:		db "maps/mp",0
_cstring_map_rotate1:		db "map_rotate",0
_cstring_gamecompletestat:		db "gameCompleteStatus",0
_cstring_killserver:		db "killserver",0
_cstring_scriptusage:		db "scriptUsage",0
_cstring_stringusage:		db "stringUsage",0
_cstring_setperk:		db "setPerk",0
_cstring_say:		db "say",0
_cstring_tell:		db "tell",0



;All constant floats and doubles:
SECTION .rdata

