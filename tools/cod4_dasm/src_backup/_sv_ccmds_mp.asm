;Imports of sv_ccmds_mp:
	extern _Z15Com_SyncThreadsv
	extern com_sv_running
	extern _Z10Com_PrintfiPKcz
	extern _Z14SV_SetGametypev
	extern sv_gametype
	extern sv
	extern _Z10I_strncpyzPcPKci
	extern _Z16G_GetSavePersistv
	extern sv_maxclients
	extern _Z16G_SetSavePersisti
	extern _Z14Dvar_GetStringPKc
	extern _Z14FS_ConvertPathPc
	extern _Z14SV_SpawnServerPKc
	extern _Z9I_stricmpPKcS0_
	extern com_frameTime
	extern svs
	extern _Z18NET_OutOfBandPrint8netsrc_t8netadr_tPKc
	extern _Z11SV_InitDvarv
	extern _Z23SV_InitArchivedSnapshotv
	extern _Z15SV_InitSnapshotv
	extern sv_serverId_value
	extern sv_serverid
	extern _Z11Dvar_SetIntPK6dvar_si
	extern _Z19SV_RestartGameProgsi
	extern _Z11SV_RunFramev
	extern _Z13SV_DropClientP8client_tPKch
	extern _Z2vaPKcz
	extern _Z19SV_AddServerCommandP8client_t11svscmd_typePKc
	extern _Z13ClientConnectit
	extern _Z19SV_ClientEnterWorldP8client_tP9usercmd_s
	extern _Z10I_CleanStrPc
	extern _Z20SV_SendServerCommandP8client_t11svscmd_typePKcz
	extern sv_mapname
	extern _Z16SV_GameClientNumi
	extern _Z16G_GetClientScorei
	extern _Z12I_DrawStrlenPKc
	extern _Z15NET_AdrToString8netadr_t
	extern sv_cmd_args
	extern atoi
	extern _Z14Cmd_ArgsBufferiPci
	extern _Z15Dvar_InfoStringii
	extern _Z10Info_PrintPKc
	extern _Z12Com_ShutdownPKc
	extern _Z21Scr_DumpScriptThreadsv
	extern _Z11MT_DumpTreev
	extern _Z14SV_UnbanClientPKc
	extern _Z12SV_BanClientP8client_t
	extern _Z17SV_BanGuidBrieflyPKc
	extern _Z22BG_GetPerkIndexForNamePKc
	extern _Z16G_GetClientStatei
	extern _Z11Com_DPrintfiPKcz
	extern com_errorPrintsCount
	extern _Z20Com_HasPlayerProfilev
	extern com_dedicated
	extern _Z18Cbuf_ExecuteBufferiiPKc
	extern _Z15Cbuf_InsertTextiPKc
	extern _Z9Com_Error11errorParm_tPKcz
	extern _Z17FS_GetMapBaseNamePKc
	extern _Z8I_strlwrPc
	extern useFastFile
	extern _Z13DB_FileExistsPKc6FF_DIR
	extern fs_gameDirVar
	extern _Z14Com_PrintErroriPKcz
	extern _Z18Com_GetBspFilenamePciPKc
	extern FS_ReadFile
	extern sv_cheats
	extern _Z12Dvar_SetBoolPK6dvar_sh
	extern sv_mapRotation
	extern sv_mapRotationCurrent
	extern _Z9Com_ParsePPKc
	extern _Z14Dvar_SetStringPK6dvar_sPKc
	extern _Z24Cmd_ExecuteSingleCommandiiPKc
	extern _Z20Cbuf_AddServerText_fv
	extern _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	extern _Z28Cmd_AddServerCommandInternalPKcPFvvEP14cmd_function_s
	extern _Z19Cmd_SetAutoCompletePKcS0_S0_
	extern _Z17Cmd_RemoveCommandPKc
	extern _Z27SV_MasterGameCompleteStatusv

;Exports of sv_ccmds_mp:
	global _Z13SV_MapRestarti
	global _Z15SV_MapRestart_fv
	global _Z16SV_FastRestart_fv
	global _Z13SV_KickClientP8client_tPciS1_
	global _Z11SV_Status_fv
	global _Z12SV_ConTell_fv
	global _Z15SV_Serverinfo_fv
	global _Z15SV_Systeminfo_fv
	global _Z15SV_KillServer_fv
	global _Z16SV_ScriptUsage_fv
	global _Z16SV_StringUsage_fv
	global _Z10SV_Unban_fv
	global _Z17SV_GetPlayerByNumv
	global _Z11SV_BanNum_fv
	global _Z15SV_KickClient_fPciS_
	global _Z12SV_DropNum_fv
	global _Z15SV_TempBanNum_fv
	global _Z18SV_GetPlayerByNamev
	global _Z13SV_DumpUser_fv
	global _Z13SV_KickUser_fPciS_
	global _Z12SV_TempBan_fv
	global _Z9SV_Drop_fv
	global _Z8SV_Ban_fv
	global _Z12SV_SetPerk_fv
	global _Z8SV_Map_fv
	global _Z11SV_ConSay_fv
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
	global _Z14SV_MapRotate_fv
	global _Z14SV_Heartbeat_fv
	global _Z17SV_GetMapBaseNamePKc
	global _Z22SV_AddOperatorCommandsv
	global _Z23SV_AddDedicatedCommandsv
	global _Z23SV_GameCompleteStatus_fv
	global _Z25SV_RemoveOperatorCommandsv


SECTION .text


;SV_MapRestart(int)
_Z13SV_MapRestarti:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x8c
	mov edi, eax
	call _Z15Com_SyncThreadsv
	mov eax, com_sv_running
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z13SV_MapRestarti_10
	mov dword [esp+0x4], _cstring_server_is_not_ru
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
_Z13SV_MapRestarti_40:
	add esp, 0x8c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z13SV_MapRestarti_10:
	call _Z14SV_SetGametypev
	mov dword [esp+0x8], 0x40
	mov esi, sv_gametype
	mov eax, [esi]
	mov eax, [eax+0xc]
	mov [esp+0x4], eax
	mov ebx, sv
	add ebx, 0x5fc08
	mov [esp], ebx
	call _Z10I_strncpyzPcPKci
	call _Z16G_GetSavePersistv
	mov [ebp-0x6c], eax
	mov edx, sv_maxclients
	mov eax, [edx]
	cmp byte [eax+0xb], 0x0
	jz _Z13SV_MapRestarti_20
_Z13SV_MapRestarti_30:
	mov dword [esp], 0x0
	call _Z16G_SetSavePersisti
	mov dword [esp], _cstring_mapname
	call _Z14Dvar_GetStringPKc
	mov dword [esp+0x8], 0x40
	mov [esp+0x4], eax
	lea ebx, [ebp-0x64]
	mov [esp], ebx
	call _Z10I_strncpyzPcPKci
	mov [esp], ebx
	call _Z14FS_ConvertPathPc
	mov [esp], ebx
	call _Z14SV_SpawnServerPKc
	add esp, 0x8c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z13SV_MapRestarti_20:
	mov eax, [esi]
	mov eax, [eax+0xc]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z13SV_MapRestarti_30
	test edi, edi
	jz _Z13SV_MapRestarti_30
	mov eax, sv
	mov edx, [eax+0x10]
	mov eax, com_frameTime
	cmp edx, [eax]
	jz _Z13SV_MapRestarti_40
	mov edx, sv_maxclients
	mov eax, [edx]
	mov eax, [eax+0xc]
	test eax, eax
	jle _Z13SV_MapRestarti_50
	xor ebx, ebx
_Z13SV_MapRestarti_70:
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
	jle _Z13SV_MapRestarti_60
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
	call _Z18NET_OutOfBandPrint8netsrc_t8netadr_tPKc
_Z13SV_MapRestarti_60:
	add ebx, 0x1
	mov eax, sv_maxclients
	mov eax, [eax]
	cmp ebx, [eax+0xc]
	jl _Z13SV_MapRestarti_70
_Z13SV_MapRestarti_50:
	call _Z11SV_InitDvarv
	call _Z23SV_InitArchivedSnapshotv
	call _Z15SV_InitSnapshotv
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
	call _Z11Dvar_SetIntPK6dvar_si
	mov edx, sv
	mov eax, com_frameTime
	mov eax, [eax]
	mov [edx+0x10], eax
	mov dword [edx], 0x1
	mov dword [edx+0xc], 0x1
	mov eax, [ebp-0x6c]
	mov [esp], eax
	call _Z19SV_RestartGameProgsi
	xor esi, esi
_Z13SV_MapRestarti_80:
	add dword [ebx+0x463804], 0x64
	call _Z11SV_RunFramev
	add esi, 0x1
	cmp esi, 0x3
	jnz _Z13SV_MapRestarti_80
	mov ecx, sv_maxclients
	mov eax, [ecx]
	mov edx, [eax+0xc]
	test edx, edx
	jle _Z13SV_MapRestarti_90
	xor ebx, ebx
	jmp _Z13SV_MapRestarti_100
_Z13SV_MapRestarti_120:
	mov dword [esp+0x8], 0x1
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z13SV_DropClientP8client_tPKch
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_sv_maprestart_f_
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	mov ecx, sv_maxclients
_Z13SV_MapRestarti_110:
	add ebx, 0x1
	mov eax, [ecx]
	cmp ebx, [eax+0xc]
	jge _Z13SV_MapRestarti_90
_Z13SV_MapRestarti_100:
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
	jle _Z13SV_MapRestarti_110
	cmp dword [ebp-0x6c], 0x1
	sbb eax, eax
	and eax, 0xffffffd4
	add eax, 0x6e
	mov [esp+0x4], eax
	mov dword [esp], _cstring_c
	call _Z2vaPKcz
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1
	mov [esp], edi
	call _Z19SV_AddServerCommandP8client_t11svscmd_typePKc
	movzx eax, word [edi+0xa0d1a]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z13ClientConnectit
	test eax, eax
	jnz _Z13SV_MapRestarti_120
	cmp dword [esi+0xc], 0x4
	jz _Z13SV_MapRestarti_130
	mov ecx, sv_maxclients
	jmp _Z13SV_MapRestarti_110
_Z13SV_MapRestarti_90:
	mov eax, sv
	mov dword [eax], 0x2
	mov dword [eax+0xc], 0x0
	jmp _Z13SV_MapRestarti_40
_Z13SV_MapRestarti_130:
	lea eax, [esi+0x20e6c]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z19SV_ClientEnterWorldP8client_tP9usercmd_s
	mov ecx, sv_maxclients
	jmp _Z13SV_MapRestarti_110
	nop


;SV_MapRestart_f()
_Z15SV_MapRestart_fv:
	push ebp
	mov ebp, esp
	xor eax, eax
	pop ebp
	jmp _Z13SV_MapRestarti
	nop


;SV_FastRestart_f()
_Z16SV_FastRestart_fv:
	push ebp
	mov ebp, esp
	mov eax, 0x1
	pop ebp
	jmp _Z13SV_MapRestarti


;SV_KickClient(client_t*, char*, int, char*)
_Z13SV_KickClientP8client_tPciS1_:
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
	jz _Z13SV_KickClientP8client_tPciS1__10
	test edx, edx
	jz _Z13SV_KickClientP8client_tPciS1__20
	mov [esp+0x8], ecx
	lea eax, [eax+0x21288]
	mov [esp+0x4], eax
	mov [esp], edx
	call _Z10I_strncpyzPcPKci
	mov [esp], ebx
	call _Z10I_CleanStrPc
_Z13SV_KickClientP8client_tPciS1__20:
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
	call _Z13SV_DropClientP8client_tPKch
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
_Z13SV_KickClientP8client_tPciS1__10:
	mov dword [esp+0xc], 0x65
	mov dword [esp+0x8], _cstring_c_exe_cannotkick
	mov dword [esp+0x4], 0x0
	mov dword [esp], 0x0
	call _Z20SV_SendServerCommandP8client_t11svscmd_typePKcz
	xor eax, eax
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;SV_Status_f()
_Z11SV_Status_fv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov eax, com_sv_running
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z11SV_Status_fv_10
	mov dword [esp+0x4], _cstring_server_is_not_ru
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z11SV_Status_fv_10:
	mov eax, sv_mapname
	mov eax, [eax]
	mov eax, [eax+0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_map_s
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	mov dword [esp+0x4], _cstring_num_score_ping_g
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	mov dword [esp+0x4], _cstring_________
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	mov edx, sv_maxclients
	mov eax, [edx]
	mov ebx, [eax+0xc]
	test ebx, ebx
	jle _Z11SV_Status_fv_20
	mov dword [ebp-0x30], 0x0
	mov dword [ebp-0x2c], 0x0
	mov esi, svs
	mov eax, esi
	add esi, 0x463838
	jmp _Z11SV_Status_fv_30
_Z11SV_Status_fv_40:
	add dword [ebp-0x30], 0x1
	add dword [ebp-0x2c], 0xa5634
	add esi, 0xa5634
	mov eax, [edx]
	mov ecx, [ebp-0x30]
	cmp ecx, [eax+0xc]
	jge _Z11SV_Status_fv_20
_Z11SV_Status_fv_90:
	mov eax, svs
_Z11SV_Status_fv_30:
	mov ecx, [ebp-0x2c]
	lea ebx, [eax+ecx+0x46380c]
	mov ecx, [esi-0x2c]
	test ecx, ecx
	jz _Z11SV_Status_fv_40
	mov eax, [ebp-0x30]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_3i_
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	mov ecx, [ebp-0x30]
	mov [esp], ecx
	call _Z16SV_GameClientNumi
	mov eax, [ebp-0x2c]
	sar eax, 0x2
	imul eax, eax, 0x4315b545
	mov [esp], eax
	call _Z16G_GetClientScorei
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_5i_
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	mov eax, [esi-0x2c]
	cmp eax, 0x2
	jz _Z11SV_Status_fv_50
	sub eax, 0x1
	jz _Z11SV_Status_fv_60
	mov eax, [esi+0x804b8]
	cmp eax, 0x2710
	mov edx, 0x270f
	cmovge eax, edx
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_4i_
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
_Z11SV_Status_fv_140:
	lea eax, [ebx+0xa0cf8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_32s_
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	add ebx, 0x21288
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_s7
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	mov [esp], ebx
	call _Z12I_DrawStrlenPKc
	mov edi, 0x10
	sub edi, eax
	test edi, edi
	jg _Z11SV_Status_fv_70
_Z11SV_Status_fv_110:
	mov eax, svs
	mov eax, [eax+0x463804]
	sub eax, [esi+0x21428]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_7i_
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	mov ecx, [esi-0xc]
	mov [ebp-0x24], ecx
	mov edx, [esi-0x8]
	mov [ebp-0x20], edx
	mov eax, [esi-0x4]
	mov [ebp-0x1c], eax
	mov [esp], ecx
	mov [esp+0x4], edx
	mov [esp+0x8], eax
	call _Z15NET_AdrToString8netadr_t
	mov edi, eax
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_s
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	repne scasb
	not ecx
	mov edi, 0x17
	sub edi, ecx
	test edi, edi
	jg _Z11SV_Status_fv_80
_Z11SV_Status_fv_130:
	mov eax, [esi]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_5i
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	mov eax, [esi+0x804bc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring__5i
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	mov dword [esp+0x4], _cstring_
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	mov edx, sv_maxclients
	add dword [ebp-0x30], 0x1
	add dword [ebp-0x2c], 0xa5634
	add esi, 0xa5634
	mov eax, [edx]
	mov ecx, [ebp-0x30]
	cmp ecx, [eax+0xc]
	jl _Z11SV_Status_fv_90
_Z11SV_Status_fv_20:
	mov dword [esp+0x4], _cstring_
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z11SV_Status_fv_70:
	xor ebx, ebx
_Z11SV_Status_fv_100:
	mov dword [esp+0x4], _cstring_space
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	add ebx, 0x1
	cmp edi, ebx
	jnz _Z11SV_Status_fv_100
	jmp _Z11SV_Status_fv_110
_Z11SV_Status_fv_80:
	xor ebx, ebx
_Z11SV_Status_fv_120:
	mov dword [esp+0x4], _cstring_space
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	add ebx, 0x1
	cmp edi, ebx
	jnz _Z11SV_Status_fv_120
	jmp _Z11SV_Status_fv_130
_Z11SV_Status_fv_60:
	mov dword [esp+0x4], _cstring_zmbi_
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	jmp _Z11SV_Status_fv_140
_Z11SV_Status_fv_50:
	mov dword [esp+0x4], _cstring_cnct_
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	jmp _Z11SV_Status_fv_140


;SV_ConTell_f()
_Z12SV_ConTell_fv:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x420
	mov eax, com_sv_running
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z12SV_ConTell_fv_10
	mov eax, sv_cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x2
	jle _Z12SV_ConTell_fv_20
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x4]
	mov [esp], eax
	call atoi
	mov ecx, eax
	test eax, eax
	js _Z12SV_ConTell_fv_20
	mov eax, sv_maxclients
	mov eax, [eax]
	cmp ecx, [eax+0xc]
	jge _Z12SV_ConTell_fv_20
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
	jz _Z12SV_ConTell_fv_30
_Z12SV_ConTell_fv_20:
	add esp, 0x420
	pop ebx
	pop esi
	pop ebp
	ret
_Z12SV_ConTell_fv_10:
	mov dword [esp+0x4], _cstring_server_is_not_ru
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	add esp, 0x420
	pop ebx
	pop esi
	pop ebp
	ret
_Z12SV_ConTell_fv_30:
	mov dword [ebp-0x408], 0x736e6f63
	mov dword [ebp-0x404], 0x3a656c6f
	mov word [ebp-0x400], 0x20
	mov dword [esp+0x8], 0x3f7
	lea esi, [ebp-0x3ff]
	mov [esp+0x4], esi
	mov dword [esp], 0x2
	call _Z14Cmd_ArgsBufferiPci
	cmp byte [ebp-0x3ff], 0x22
	jz _Z12SV_ConTell_fv_40
	lea edx, [ebp-0x408]
_Z12SV_ConTell_fv_60:
	mov [esp+0x10], edx
	mov dword [esp+0xc], 0x68
	mov dword [esp+0x8], _cstring_c_s
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call _Z20SV_SendServerCommandP8client_t11svscmd_typePKcz
	jmp _Z12SV_ConTell_fv_20
_Z12SV_ConTell_fv_40:
	cmp byte [ebp-0x3fe], 0x0
	jnz _Z12SV_ConTell_fv_50
	mov eax, 0x9
	lea edx, [ebp-0x408]
_Z12SV_ConTell_fv_90:
	mov byte [ebp+eax-0x408], 0x0
	jmp _Z12SV_ConTell_fv_60
_Z12SV_ConTell_fv_50:
	lea eax, [ebp-0x3fe]
	mov ecx, esi
	jmp _Z12SV_ConTell_fv_70
_Z12SV_ConTell_fv_80:
	lea eax, [ecx+0x1]
_Z12SV_ConTell_fv_70:
	lea edx, [ecx-0x1]
	mov ecx, eax
	movzx eax, byte [eax-0x1]
	mov [edx], al
	cmp byte [ecx+0x1], 0x0
	jnz _Z12SV_ConTell_fv_80
	lea edx, [ebp-0x408]
	mov eax, ecx
	sub eax, edx
	jmp _Z12SV_ConTell_fv_90
	nop


;SV_Serverinfo_f()
_Z15SV_Serverinfo_fv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x4], _cstring_server_info_sett
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	mov dword [esp+0x4], 0x404
	mov dword [esp], 0x0
	call _Z15Dvar_InfoStringii
	mov [esp], eax
	call _Z10Info_PrintPKc
	leave
	ret


;SV_Systeminfo_f()
_Z15SV_Systeminfo_fv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x4], _cstring_system_info_sett
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	mov dword [esp+0x4], 0x8
	mov dword [esp], 0x0
	call _Z15Dvar_InfoStringii
	mov [esp], eax
	call _Z10Info_PrintPKc
	leave
	ret


;SV_KillServer_f()
_Z15SV_KillServer_fv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp], _cstring_exe_serverkilled
	call _Z12Com_ShutdownPKc
	leave
	ret


;SV_ScriptUsage_f()
_Z16SV_ScriptUsage_fv:
	push ebp
	mov ebp, esp
	pop ebp
	jmp _Z21Scr_DumpScriptThreadsv
	nop


;SV_StringUsage_f()
_Z16SV_StringUsage_fv:
	push ebp
	mov ebp, esp
	pop ebp
	jmp _Z11MT_DumpTreev
	nop


;SV_Unban_f()
_Z10SV_Unban_fv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, sv_cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x2
	jz _Z10SV_Unban_fv_10
	mov dword [esp+0x4], _cstring_usage_unban_clie
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	leave
	ret
_Z10SV_Unban_fv_10:
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x4]
	mov [esp], eax
	call _Z14SV_UnbanClientPKc
	leave
	ret
	nop


;SV_GetPlayerByNum()
_Z17SV_GetPlayerByNumv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, com_sv_running
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z17SV_GetPlayerByNumv_10
	mov eax, sv_cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x1
	jle _Z17SV_GetPlayerByNumv_20
	mov eax, [eax+edx*4+0x64]
	mov ecx, [eax+0x4]
	movzx eax, byte [ecx]
	test al, al
	jz _Z17SV_GetPlayerByNumv_30
	sub al, 0x30
	cmp al, 0x9
	ja _Z17SV_GetPlayerByNumv_40
	mov edx, ecx
_Z17SV_GetPlayerByNumv_50:
	movzx eax, byte [edx+0x1]
	test al, al
	jz _Z17SV_GetPlayerByNumv_30
	add edx, 0x1
	sub al, 0x30
	cmp al, 0x9
	jbe _Z17SV_GetPlayerByNumv_50
_Z17SV_GetPlayerByNumv_40:
	mov [esp+0x8], ecx
	mov dword [esp+0x4], _cstring_bad_slot_number_
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	xor edx, edx
_Z17SV_GetPlayerByNumv_70:
	mov eax, edx
	leave
	ret
_Z17SV_GetPlayerByNumv_30:
	mov [esp], ecx
	call atoi
	mov ecx, eax
	test eax, eax
	js _Z17SV_GetPlayerByNumv_60
	mov eax, sv_maxclients
	mov eax, [eax]
	cmp ecx, [eax+0xc]
	jge _Z17SV_GetPlayerByNumv_60
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
	jnz _Z17SV_GetPlayerByNumv_70
	mov [esp+0x8], ecx
	mov dword [esp+0x4], _cstring_client_i_is_not_
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
_Z17SV_GetPlayerByNumv_10:
	xor edx, edx
_Z17SV_GetPlayerByNumv_80:
	mov eax, edx
	leave
	ret
_Z17SV_GetPlayerByNumv_60:
	mov [esp+0x8], ecx
	mov dword [esp+0x4], _cstring_bad_client_slot_
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	xor edx, edx
	jmp _Z17SV_GetPlayerByNumv_80
_Z17SV_GetPlayerByNumv_20:
	mov dword [esp+0x4], _cstring_no_player_specif
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	xor edx, edx
	mov eax, edx
	leave
	ret


;SV_BanNum_f()
_Z11SV_BanNum_fv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, com_sv_running
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z11SV_BanNum_fv_10
	mov edx, sv_cmd_args
	mov eax, [edx]
	cmp dword [edx+eax*4+0x44], 0x2
	jz _Z11SV_BanNum_fv_20
	mov dword [esp+0x4], _cstring_usage_banclient_
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
_Z11SV_BanNum_fv_30:
	leave
	ret
_Z11SV_BanNum_fv_20:
	call _Z17SV_GetPlayerByNumv
	test eax, eax
	jz _Z11SV_BanNum_fv_30
	mov [esp], eax
	call _Z12SV_BanClientP8client_t
	leave
	ret
_Z11SV_BanNum_fv_10:
	mov dword [esp+0x4], _cstring_server_is_not_ru
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	leave
	ret
	nop


;SV_KickClient_f(char*, int, char*)
_Z15SV_KickClient_fPciS_:
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
	jz _Z15SV_KickClient_fPciS__10
	mov edx, sv_cmd_args
	mov ecx, [edx]
	mov eax, [edx+ecx*4+0x44]
	cmp eax, 0x2
	jz _Z15SV_KickClient_fPciS__20
	test eax, eax
	jle _Z15SV_KickClient_fPciS__30
	mov eax, [edx+ecx*4+0x64]
	mov eax, [eax]
_Z15SV_KickClient_fPciS__40:
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_usage_s_client_n
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	xor eax, eax
_Z15SV_KickClient_fPciS__50:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z15SV_KickClient_fPciS__10:
	mov dword [esp+0x4], _cstring_server_is_not_ru
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	xor eax, eax
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z15SV_KickClient_fPciS__30:
	mov eax, _cstring_null
	jmp _Z15SV_KickClient_fPciS__40
_Z15SV_KickClient_fPciS__20:
	call _Z17SV_GetPlayerByNumv
	test eax, eax
	jz _Z15SV_KickClient_fPciS__50
	mov [esp], ebx
	mov ecx, esi
	mov edx, edi
	call _Z13SV_KickClientP8client_tPciS1_
	jmp _Z15SV_KickClient_fPciS__50
	nop


;SV_DropNum_f()
_Z12SV_DropNum_fv:
	push ebp
	mov ebp, esp
	sub esp, 0x38
	lea ecx, [ebp-0x29]
	xor edx, edx
	xor eax, eax
	call _Z15SV_KickClient_fPciS_
	leave
	ret


;SV_TempBanNum_f()
_Z15SV_TempBanNum_fv:
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
	call _Z15SV_KickClient_fPciS_
	test eax, eax
	jz _Z15SV_TempBanNum_fv_10
	mov [esp+0xc], ebx
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_s_guid_s_was_kic
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	mov [esp], ebx
	call _Z17SV_BanGuidBrieflyPKc
_Z15SV_TempBanNum_fv_10:
	sub esp, 0xffffff80
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;SV_GetPlayerByName()
_Z18SV_GetPlayerByNamev:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov eax, com_sv_running
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z18SV_GetPlayerByNamev_10
	mov eax, sv_cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x1
	jle _Z18SV_GetPlayerByNamev_20
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x4]
	mov [ebp-0x5c], eax
	mov edx, sv_maxclients
	mov eax, [edx]
	mov eax, [eax+0xc]
	test eax, eax
	jle _Z18SV_GetPlayerByNamev_30
	xor esi, esi
	mov edi, svs
	add edi, 0x46380c
	mov [ebp-0x60], edx
	lea ebx, [edi+0x21288]
	jmp _Z18SV_GetPlayerByNamev_40
_Z18SV_GetPlayerByNamev_50:
	add esi, 0x1
	add edi, 0xa5634
	add ebx, 0xa5634
	mov eax, [edx]
	cmp esi, [eax+0xc]
	jge _Z18SV_GetPlayerByNamev_30
_Z18SV_GetPlayerByNamev_40:
	mov eax, [ebx-0x21288]
	test eax, eax
	jz _Z18SV_GetPlayerByNamev_50
	mov eax, [ebp-0x5c]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z18SV_GetPlayerByNamev_60
	mov dword [esp+0x8], 0x40
	mov [esp+0x4], ebx
	lea eax, [ebp-0x58]
	mov [esp], eax
	call _Z10I_strncpyzPcPKci
	lea eax, [ebp-0x58]
	mov [esp], eax
	call _Z10I_CleanStrPc
	mov eax, [ebp-0x5c]
	mov [esp+0x4], eax
	lea eax, [ebp-0x58]
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z18SV_GetPlayerByNamev_60
	mov edx, [ebp-0x60]
	add esi, 0x1
	add edi, 0xa5634
	add ebx, 0xa5634
	mov eax, [edx]
	cmp esi, [eax+0xc]
	jl _Z18SV_GetPlayerByNamev_40
_Z18SV_GetPlayerByNamev_30:
	mov eax, [ebp-0x5c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_player_s_is_not_
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
_Z18SV_GetPlayerByNamev_10:
	xor edi, edi
_Z18SV_GetPlayerByNamev_60:
	mov eax, edi
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z18SV_GetPlayerByNamev_20:
	mov dword [esp+0x4], _cstring_no_player_specif
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	xor edi, edi
	jmp _Z18SV_GetPlayerByNamev_60
	nop


;SV_DumpUser_f()
_Z13SV_DumpUser_fv:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, com_sv_running
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z13SV_DumpUser_fv_10
	mov edx, sv_cmd_args
	mov eax, [edx]
	cmp dword [edx+eax*4+0x44], 0x2
	jz _Z13SV_DumpUser_fv_20
	mov dword [esp+0x4], _cstring_usage_info_useri
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
_Z13SV_DumpUser_fv_30:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z13SV_DumpUser_fv_20:
	call _Z18SV_GetPlayerByNamev
	mov ebx, eax
	test eax, eax
	jz _Z13SV_DumpUser_fv_30
	mov dword [esp+0x4], _cstring_userinfo
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	mov dword [esp+0x4], _cstring_1
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	lea eax, [ebx+0x648]
	mov [esp], eax
	call _Z10Info_PrintPKc
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z13SV_DumpUser_fv_10:
	mov dword [esp+0x4], _cstring_server_is_not_ru
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;SV_KickUser_f(char*, int, char*)
_Z13SV_KickUser_fPciS_:
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
	jz _Z13SV_KickUser_fPciS__10
	mov ebx, sv_cmd_args
	mov edx, [ebx]
	mov eax, [ebx+edx*4+0x44]
	cmp eax, 0x2
	jz _Z13SV_KickUser_fPciS__20
	test eax, eax
	jle _Z13SV_KickUser_fPciS__30
	mov eax, [ebx+edx*4+0x64]
	mov eax, [eax]
_Z13SV_KickUser_fPciS__40:
	mov [esp+0xc], eax
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_usage_s_player_n
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	xor eax, eax
_Z13SV_KickUser_fPciS__60:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z13SV_KickUser_fPciS__10:
	mov dword [esp+0x4], _cstring_server_is_not_ru
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	xor eax, eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z13SV_KickUser_fPciS__30:
	mov eax, _cstring_null
	jmp _Z13SV_KickUser_fPciS__40
_Z13SV_KickUser_fPciS__20:
	call _Z18SV_GetPlayerByNamev
	test eax, eax
	jz _Z13SV_KickUser_fPciS__50
	mov edx, [ebp-0x1c]
	mov [esp], edx
	mov ecx, esi
	mov edx, edi
	call _Z13SV_KickClientP8client_tPciS1_
	jmp _Z13SV_KickUser_fPciS__60
_Z13SV_KickUser_fPciS__50:
	mov eax, [ebx]
	cmp dword [ebx+eax*4+0x44], 0x1
	jle _Z13SV_KickUser_fPciS__70
	mov eax, [ebx+eax*4+0x64]
	mov eax, [eax+0x4]
_Z13SV_KickUser_fPciS__110:
	mov dword [esp+0x4], _cstring_all
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z13SV_KickUser_fPciS__80
	mov edx, sv_maxclients
	mov eax, [edx]
	mov eax, [eax+0xc]
	test eax, eax
	jle _Z13SV_KickUser_fPciS__80
	mov ebx, svs
	add ebx, 0x46380c
	xor esi, esi
	jmp _Z13SV_KickUser_fPciS__90
_Z13SV_KickUser_fPciS__100:
	add esi, 0x1
	add ebx, 0xa5634
	mov eax, [edx]
	cmp [eax+0xc], esi
	jle _Z13SV_KickUser_fPciS__80
_Z13SV_KickUser_fPciS__90:
	mov eax, [ebx]
	test eax, eax
	jz _Z13SV_KickUser_fPciS__100
	mov eax, [ebp-0x1c]
	mov [esp], eax
	xor ecx, ecx
	xor edx, edx
	mov eax, ebx
	call _Z13SV_KickClientP8client_tPciS1_
	mov edx, sv_maxclients
	jmp _Z13SV_KickUser_fPciS__100
_Z13SV_KickUser_fPciS__80:
	xor eax, eax
	jmp _Z13SV_KickUser_fPciS__60
_Z13SV_KickUser_fPciS__70:
	mov eax, _cstring_null
	jmp _Z13SV_KickUser_fPciS__110
	nop


;SV_TempBan_f()
_Z12SV_TempBan_fv:
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
	call _Z13SV_KickUser_fPciS_
	test eax, eax
	jz _Z12SV_TempBan_fv_10
	mov [esp+0xc], ebx
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_s_guid_s_was_kic
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	mov [esp], ebx
	call _Z17SV_BanGuidBrieflyPKc
_Z12SV_TempBan_fv_10:
	sub esp, 0xffffff80
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;SV_Drop_f()
_Z9SV_Drop_fv:
	push ebp
	mov ebp, esp
	sub esp, 0x38
	lea ecx, [ebp-0x29]
	xor edx, edx
	xor eax, eax
	call _Z13SV_KickUser_fPciS_
	leave
	ret


;SV_Ban_f()
_Z8SV_Ban_fv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, com_sv_running
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z8SV_Ban_fv_10
	mov edx, sv_cmd_args
	mov eax, [edx]
	cmp dword [edx+eax*4+0x44], 0x2
	jz _Z8SV_Ban_fv_20
	mov dword [esp+0x4], _cstring_usage_banuser_pl
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
_Z8SV_Ban_fv_30:
	leave
	ret
_Z8SV_Ban_fv_20:
	call _Z18SV_GetPlayerByNamev
	test eax, eax
	jz _Z8SV_Ban_fv_30
	mov [esp], eax
	call _Z12SV_BanClientP8client_t
	leave
	ret
_Z8SV_Ban_fv_10:
	mov dword [esp+0x4], _cstring_server_is_not_ru
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	leave
	ret
	nop


;SV_SetPerk_f()
_Z12SV_SetPerk_fv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	call _Z18SV_GetPlayerByNamev
	mov ebx, eax
	test eax, eax
	jz _Z12SV_SetPerk_fv_10
	mov eax, sv_cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x2
	jg _Z12SV_SetPerk_fv_20
	mov esi, _cstring_null
	mov [esp], esi
	call _Z22BG_GetPerkIndexForNamePKc
	mov edi, eax
	cmp eax, 0x13
	ja _Z12SV_SetPerk_fv_30
_Z12SV_SetPerk_fv_70:
	mov eax, sv_maxclients
	mov eax, [eax]
	mov edx, [eax+0xc]
	test edx, edx
	jle _Z12SV_SetPerk_fv_40
	mov eax, svs
	add eax, 0x46380c
	cmp ebx, eax
	jz _Z12SV_SetPerk_fv_40
	xor esi, esi
_Z12SV_SetPerk_fv_60:
	add esi, 0x1
	add eax, 0xa5634
	cmp edx, esi
	jz _Z12SV_SetPerk_fv_50
	cmp ebx, eax
	jnz _Z12SV_SetPerk_fv_60
_Z12SV_SetPerk_fv_50:
	mov [esp], esi
	call _Z16SV_GameClientNumi
	mov ebx, 0x1
	mov ecx, edi
	shl ebx, cl
	or [eax+0x5fc], ebx
	mov [esp], esi
	call _Z16G_GetClientStatei
	or [eax+0x58], ebx
_Z12SV_SetPerk_fv_10:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z12SV_SetPerk_fv_20:
	mov eax, [eax+edx*4+0x64]
	mov esi, [eax+0x8]
	mov [esp], esi
	call _Z22BG_GetPerkIndexForNamePKc
	mov edi, eax
	cmp eax, 0x13
	jbe _Z12SV_SetPerk_fv_70
_Z12SV_SetPerk_fv_30:
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_unknown_perk_s
	mov dword [esp], 0x0
	call _Z11Com_DPrintfiPKcz
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z12SV_SetPerk_fv_40:
	xor esi, esi
	mov [esp], esi
	call _Z16SV_GameClientNumi
	mov ebx, 0x1
	mov ecx, edi
	shl ebx, cl
	or [eax+0x5fc], ebx
	mov [esp], esi
	call _Z16G_GetClientStatei
	or [eax+0x58], ebx
	jmp _Z12SV_SetPerk_fv_10


;SV_Map_f()
_Z8SV_Map_fv:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x90
	mov eax, sv_cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x1
	jle _Z8SV_Map_fv_10
	mov eax, [eax+edx*4+0x64]
	mov ebx, [eax+0x4]
_Z8SV_Map_fv_70:
	cmp byte [ebx], 0x0
	jnz _Z8SV_Map_fv_20
_Z8SV_Map_fv_80:
	add esp, 0x90
	pop ebx
	pop esi
	pop ebp
	ret
_Z8SV_Map_fv_20:
	mov eax, com_errorPrintsCount
	mov dword [eax], 0x0
	call _Z20Com_HasPlayerProfilev
	test al, al
	jnz _Z8SV_Map_fv_30
	mov eax, com_dedicated
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z8SV_Map_fv_40
_Z8SV_Map_fv_30:
	mov dword [esp+0x8], _cstring_selectstringtabl
	mov dword [esp+0x4], 0x0
	mov dword [esp], 0x0
	call _Z18Cbuf_ExecuteBufferiiPKc
	mov eax, com_dedicated
	mov edx, [eax]
	mov eax, [edx+0x1c]
	cmp eax, [edx+0xc]
	jz _Z8SV_Map_fv_50
	mov ebx, sv_cmd_args
	mov edx, [ebx]
	cmp dword [ebx+edx*4+0x44], 0x1
	jle _Z8SV_Map_fv_60
	mov eax, [ebx+edx*4+0x64]
	mov ecx, [eax+0x4]
_Z8SV_Map_fv_170:
	mov eax, [eax]
_Z8SV_Map_fv_100:
	mov [esp+0x8], ecx
	mov [esp+0x4], eax
	mov dword [esp], _cstring_wait_wait_s_s
	call _Z2vaPKcz
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call _Z15Cbuf_InsertTextiPKc
	add esp, 0x90
	pop ebx
	pop esi
	pop ebp
	ret
_Z8SV_Map_fv_10:
	mov ebx, _cstring_null
	jmp _Z8SV_Map_fv_70
_Z8SV_Map_fv_40:
	mov dword [esp+0x4], _cstring_platform_notsign
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z8SV_Map_fv_80
_Z8SV_Map_fv_60:
	jz _Z8SV_Map_fv_90
	mov eax, _cstring_null
	mov ecx, _cstring_null
	jmp _Z8SV_Map_fv_100
_Z8SV_Map_fv_50:
	mov [esp], ebx
	call _Z17FS_GetMapBaseNamePKc
	mov dword [esp+0x8], 0x40
	mov [esp+0x4], eax
	lea ebx, [ebp-0x48]
	mov [esp], ebx
	call _Z10I_strncpyzPcPKci
	mov [esp], ebx
	call _Z8I_strlwrPc
	mov eax, useFastFile
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z8SV_Map_fv_110
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call _Z13DB_FileExistsPKc6FF_DIR
	test al, al
	jnz _Z8SV_Map_fv_120
	mov eax, fs_gameDirVar
	mov eax, [eax]
	mov eax, [eax+0xc]
	cmp byte [eax], 0x0
	jz _Z8SV_Map_fv_130
	mov dword [esp+0x4], 0x2
	mov [esp], ebx
	call _Z13DB_FileExistsPKc6FF_DIR
	test al, al
	jnz _Z8SV_Map_fv_120
_Z8SV_Map_fv_130:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_cant_find_map_sa
	mov dword [esp], 0x1
	call _Z14Com_PrintErroriPKcz
	jmp _Z8SV_Map_fv_80
_Z8SV_Map_fv_110:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x40
	lea esi, [ebp-0x88]
	mov [esp], esi
	call _Z18Com_GetBspFilenamePciPKc
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call FS_ReadFile
	add eax, 0x1
	jz _Z8SV_Map_fv_140
_Z8SV_Map_fv_120:
	mov [esp], ebx
	call _Z14FS_ConvertPathPc
	mov [esp], ebx
	call _Z14SV_SpawnServerPKc
	mov eax, sv_cmd_args
	mov edx, [eax]
	mov ecx, [eax+edx*4+0x44]
	test ecx, ecx
	jle _Z8SV_Map_fv_150
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax]
_Z8SV_Map_fv_160:
	mov dword [esp+0x4], _cstring_devmap
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	setz al
	movzx eax, al
	mov [esp+0x4], eax
	mov eax, sv_cheats
	mov eax, [eax]
	mov [esp], eax
	call _Z12Dvar_SetBoolPK6dvar_sh
	jmp _Z8SV_Map_fv_80
_Z8SV_Map_fv_150:
	mov eax, _cstring_null
	jmp _Z8SV_Map_fv_160
_Z8SV_Map_fv_140:
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_cant_find_map_s
	mov dword [esp], 0x1
	call _Z14Com_PrintErroriPKcz
	jmp _Z8SV_Map_fv_80
_Z8SV_Map_fv_90:
	mov ecx, _cstring_null
	mov eax, [ebx+edx*4+0x64]
	jmp _Z8SV_Map_fv_170


;SV_ConSay_f()
_Z11SV_ConSay_fv:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x424
	mov eax, com_sv_running
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z11SV_ConSay_fv_10
	mov edx, sv_cmd_args
	mov eax, [edx]
	cmp dword [edx+eax*4+0x44], 0x1
	jle _Z11SV_ConSay_fv_20
	mov dword [ebp-0x408], 0x736e6f63
	mov dword [ebp-0x404], 0x3a656c6f
	mov word [ebp-0x400], 0x20
	mov dword [esp+0x8], 0x3f7
	lea ebx, [ebp-0x3ff]
	mov [esp+0x4], ebx
	mov dword [esp], 0x1
	call _Z14Cmd_ArgsBufferiPci
	cmp byte [ebp-0x3ff], 0x22
	jz _Z11SV_ConSay_fv_30
	lea edx, [ebp-0x408]
_Z11SV_ConSay_fv_50:
	mov [esp+0x10], edx
	mov dword [esp+0xc], 0x68
	mov dword [esp+0x8], _cstring_c_s
	mov dword [esp+0x4], 0x0
	mov dword [esp], 0x0
	call _Z20SV_SendServerCommandP8client_t11svscmd_typePKcz
_Z11SV_ConSay_fv_20:
	add esp, 0x424
	pop ebx
	pop ebp
	ret
_Z11SV_ConSay_fv_10:
	mov dword [esp+0x4], _cstring_server_is_not_ru
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	add esp, 0x424
	pop ebx
	pop ebp
	ret
_Z11SV_ConSay_fv_30:
	cmp byte [ebp-0x3fe], 0x0
	jnz _Z11SV_ConSay_fv_40
	mov eax, 0x9
	lea edx, [ebp-0x408]
_Z11SV_ConSay_fv_80:
	mov byte [ebp+eax-0x408], 0x0
	jmp _Z11SV_ConSay_fv_50
_Z11SV_ConSay_fv_40:
	lea eax, [ebp-0x3fe]
	mov ecx, ebx
	jmp _Z11SV_ConSay_fv_60
_Z11SV_ConSay_fv_70:
	lea eax, [ecx+0x1]
_Z11SV_ConSay_fv_60:
	lea edx, [ecx-0x1]
	mov ecx, eax
	movzx eax, byte [eax-0x1]
	mov [edx], al
	cmp byte [ecx+0x1], 0x0
	jnz _Z11SV_ConSay_fv_70
	lea edx, [ebp-0x408]
	mov eax, ecx
	sub eax, edx
	jmp _Z11SV_ConSay_fv_80


;SV_MapRotate_f()
_Z14SV_MapRotate_fv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov dword [esp+0x4], _cstring_map_rotate
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	mov ebx, sv_mapRotation
	mov eax, [ebx]
	mov eax, [eax+0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_sv_maprotation_i
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	mov esi, sv_mapRotationCurrent
	mov eax, [esi]
	mov eax, [eax+0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_sv_maprotationcu
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	mov edx, [esi]
	mov eax, [edx+0xc]
	cmp byte [eax], 0x0
	jz _Z14SV_MapRotate_fv_10
_Z14SV_MapRotate_fv_150:
	mov [ebp-0x1c], eax
	lea eax, [ebp-0x1c]
	mov [esp], eax
	call _Z9Com_ParsePPKc
	mov ebx, eax
	mov eax, [ebp-0x1c]
	test eax, eax
	jz _Z14SV_MapRotate_fv_20
	mov [esp+0x4], eax
	mov eax, [esi]
	mov [esp], eax
	call _Z14Dvar_SetStringPK6dvar_sPKc
	test ebx, ebx
	jz _Z14SV_MapRotate_fv_30
_Z14SV_MapRotate_fv_140:
	mov edi, sv_mapRotationCurrent
	mov esi, edi
_Z14SV_MapRotate_fv_90:
	mov dword [esp+0x4], _cstring_gametype
	mov [esp], ebx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z14SV_MapRotate_fv_40
	mov eax, [edi]
	mov eax, [eax+0xc]
	mov [ebp-0x1c], eax
	lea eax, [ebp-0x1c]
	mov [esp], eax
	call _Z9Com_ParsePPKc
	mov ebx, eax
	mov eax, [ebp-0x1c]
	test eax, eax
	jz _Z14SV_MapRotate_fv_50
	mov [esp+0x4], eax
	mov eax, [edi]
	mov [esp], eax
	call _Z14Dvar_SetStringPK6dvar_sPKc
	test ebx, ebx
	jz _Z14SV_MapRotate_fv_60
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_setting_g_gamety
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	mov eax, com_sv_running
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z14SV_MapRotate_fv_70
_Z14SV_MapRotate_fv_130:
	mov [esp+0x4], ebx
	mov edx, sv_gametype
	mov eax, [edx]
	mov [esp], eax
	call _Z14Dvar_SetStringPK6dvar_sPKc
	mov eax, [esi]
	mov eax, [eax+0xc]
	mov [ebp-0x1c], eax
	lea eax, [ebp-0x1c]
	mov [esp], eax
	call _Z9Com_ParsePPKc
	mov ebx, eax
	mov eax, [ebp-0x1c]
	test eax, eax
	jz _Z14SV_MapRotate_fv_80
_Z14SV_MapRotate_fv_110:
	mov [esp+0x4], eax
	mov eax, [esi]
	mov [esp], eax
	call _Z14Dvar_SetStringPK6dvar_sPKc
	test ebx, ebx
	jnz _Z14SV_MapRotate_fv_90
_Z14SV_MapRotate_fv_120:
	mov dword [esp+0x4], _cstring_no_map_specified
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	mov eax, 0x1
	call _Z13SV_MapRestarti
_Z14SV_MapRotate_fv_160:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z14SV_MapRotate_fv_40:
	mov dword [esp+0x4], _cstring_map
	mov [esp], ebx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z14SV_MapRotate_fv_100
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_unknown_keyword_
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	mov eax, [esi]
	mov eax, [eax+0xc]
	mov [ebp-0x1c], eax
	lea eax, [ebp-0x1c]
	mov [esp], eax
	call _Z9Com_ParsePPKc
	mov ebx, eax
	mov eax, [ebp-0x1c]
	test eax, eax
	jnz _Z14SV_MapRotate_fv_110
_Z14SV_MapRotate_fv_80:
	mov dword [esp+0x4], _cstring_null
	mov eax, [esi]
	mov [esp], eax
	call _Z14Dvar_SetStringPK6dvar_sPKc
	jmp _Z14SV_MapRotate_fv_120
_Z14SV_MapRotate_fv_70:
	mov [esp+0x4], ebx
	mov edx, sv_gametype
	mov eax, [edx]
	mov eax, [eax+0xc]
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z14SV_MapRotate_fv_130
	mov dword [esp], 0x0
	call _Z16G_SetSavePersisti
	jmp _Z14SV_MapRotate_fv_130
_Z14SV_MapRotate_fv_20:
	mov dword [esp+0x4], _cstring_null
	mov eax, [esi]
	mov [esp], eax
	call _Z14Dvar_SetStringPK6dvar_sPKc
_Z14SV_MapRotate_fv_30:
	mov eax, sv_mapRotation
	mov eax, [eax]
	mov eax, [eax+0xc]
	mov [esp+0x4], eax
	mov esi, sv_mapRotationCurrent
	mov eax, [esi]
	mov [esp], eax
	call _Z14Dvar_SetStringPK6dvar_sPKc
	mov eax, [esi]
	mov eax, [eax+0xc]
	mov [ebp-0x1c], eax
	lea edx, [ebp-0x1c]
	mov [esp], edx
	call _Z9Com_ParsePPKc
	mov ebx, eax
	mov eax, [ebp-0x1c]
	test eax, eax
	jz _Z14SV_MapRotate_fv_80
	mov [esp+0x4], eax
	mov eax, [esi]
	mov [esp], eax
	call _Z14Dvar_SetStringPK6dvar_sPKc
	test ebx, ebx
	jnz _Z14SV_MapRotate_fv_140
	jmp _Z14SV_MapRotate_fv_120
_Z14SV_MapRotate_fv_10:
	mov eax, [ebx]
	mov eax, [eax+0xc]
	mov [esp+0x4], eax
	mov [esp], edx
	call _Z14Dvar_SetStringPK6dvar_sPKc
	mov edx, [esi]
	mov eax, [edx+0xc]
	jmp _Z14SV_MapRotate_fv_150
_Z14SV_MapRotate_fv_50:
	mov dword [esp+0x4], _cstring_null
	mov eax, [edi]
	mov [esp], eax
	call _Z14Dvar_SetStringPK6dvar_sPKc
_Z14SV_MapRotate_fv_60:
	mov dword [esp+0x4], _cstring_no_gametype_spec
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	mov eax, 0x1
	call _Z13SV_MapRestarti
	jmp _Z14SV_MapRotate_fv_160
_Z14SV_MapRotate_fv_100:
	mov edx, sv_mapRotationCurrent
	mov eax, [edx]
	mov eax, [eax+0xc]
	mov [ebp-0x1c], eax
	lea eax, [ebp-0x1c]
	mov [esp], eax
	call _Z9Com_ParsePPKc
	mov ebx, eax
	mov eax, [ebp-0x1c]
	test eax, eax
	jz _Z14SV_MapRotate_fv_170
	mov [esp+0x4], eax
	mov edx, sv_mapRotationCurrent
	mov eax, [edx]
	mov [esp], eax
	call _Z14Dvar_SetStringPK6dvar_sPKc
	test ebx, ebx
	jz _Z14SV_MapRotate_fv_180
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_setting_map_s
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_map_s1
	call _Z2vaPKcz
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov dword [esp], 0x0
	call _Z24Cmd_ExecuteSingleCommandiiPKc
	jmp _Z14SV_MapRotate_fv_160
_Z14SV_MapRotate_fv_170:
	mov dword [esp+0x4], _cstring_null
	mov edx, sv_mapRotationCurrent
	mov eax, [edx]
	mov [esp], eax
	call _Z14Dvar_SetStringPK6dvar_sPKc
_Z14SV_MapRotate_fv_180:
	mov dword [esp+0x4], _cstring_no_map_specified1
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	mov eax, 0x1
	call _Z13SV_MapRestarti
	jmp _Z14SV_MapRotate_fv_160


;SV_Heartbeat_f()
_Z14SV_Heartbeat_fv:
	push ebp
	mov ebp, esp
	mov eax, svs
	mov dword [eax+svs+0x9766630], 0x80000000
	pop ebp
	ret


;SV_GetMapBaseName(char const*)
_Z17SV_GetMapBaseNamePKc:
	push ebp
	mov ebp, esp
	pop ebp
	jmp _Z17FS_GetMapBaseNamePKc
	nop


;SV_AddOperatorCommands()
_Z22SV_AddOperatorCommandsv:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [_ZZ22SV_AddOperatorCommandsvE11initialized]
	test eax, eax
	jz _Z22SV_AddOperatorCommandsv_10
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z22SV_AddOperatorCommandsv_10:
	mov dword [_ZZ22SV_AddOperatorCommandsvE11initialized], 0x1
	mov dword [esp+0x8], _ZZ22SV_AddOperatorCommandsvE18SV_Heartbeat_f_VAR
	mov ebx, _Z20Cbuf_AddServerText_fv
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_heartbeat
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ22SV_AddOperatorCommandsvE25SV_Heartbeat_f_VAR_SERVER
	mov dword [esp+0x4], _Z14SV_Heartbeat_fv
	mov dword [esp], _cstring_heartbeat
	call _Z28Cmd_AddServerCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ22SV_AddOperatorCommandsvE13SV_Drop_f_VAR
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_onlykick
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ22SV_AddOperatorCommandsvE20SV_Drop_f_VAR_SERVER
	mov dword [esp+0x4], _Z9SV_Drop_fv
	mov dword [esp], _cstring_onlykick
	call _Z28Cmd_AddServerCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ22SV_AddOperatorCommandsvE12SV_Ban_f_VAR
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_banuser
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ22SV_AddOperatorCommandsvE19SV_Ban_f_VAR_SERVER
	mov dword [esp+0x4], _Z8SV_Ban_fv
	mov dword [esp], _cstring_banuser
	call _Z28Cmd_AddServerCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ22SV_AddOperatorCommandsvE15SV_BanNum_f_VAR
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_banclient
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ22SV_AddOperatorCommandsvE22SV_BanNum_f_VAR_SERVER
	mov dword [esp+0x4], _Z11SV_BanNum_fv
	mov dword [esp], _cstring_banclient
	call _Z28Cmd_AddServerCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ22SV_AddOperatorCommandsvE16SV_TempBan_f_VAR
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_kick
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ22SV_AddOperatorCommandsvE23SV_TempBan_f_VAR_SERVER
	mov dword [esp+0x4], _Z12SV_TempBan_fv
	mov dword [esp], _cstring_kick
	call _Z28Cmd_AddServerCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ22SV_AddOperatorCommandsvE16SV_TempBan_f_VAR_0
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_tempbanuser
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ22SV_AddOperatorCommandsvE23SV_TempBan_f_VAR_SERVER_0
	mov dword [esp+0x4], _Z12SV_TempBan_fv
	mov dword [esp], _cstring_tempbanuser
	call _Z28Cmd_AddServerCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ22SV_AddOperatorCommandsvE19SV_TempBanNum_f_VAR
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_tempbanclient
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ22SV_AddOperatorCommandsvE26SV_TempBanNum_f_VAR_SERVER
	mov dword [esp+0x4], _Z15SV_TempBanNum_fv
	mov dword [esp], _cstring_tempbanclient
	call _Z28Cmd_AddServerCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ22SV_AddOperatorCommandsvE14SV_Unban_f_VAR
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_unbanuser
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ22SV_AddOperatorCommandsvE21SV_Unban_f_VAR_SERVER
	mov dword [esp+0x4], _Z10SV_Unban_fv
	mov dword [esp], _cstring_unbanuser
	call _Z28Cmd_AddServerCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ22SV_AddOperatorCommandsvE16SV_DropNum_f_VAR
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_clientkick
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ22SV_AddOperatorCommandsvE23SV_DropNum_f_VAR_SERVER
	mov dword [esp+0x4], _Z12SV_DropNum_fv
	mov dword [esp], _cstring_clientkick
	call _Z28Cmd_AddServerCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ22SV_AddOperatorCommandsvE15SV_Status_f_VAR
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_status
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ22SV_AddOperatorCommandsvE22SV_Status_f_VAR_SERVER
	mov dword [esp+0x4], _Z11SV_Status_fv
	mov dword [esp], _cstring_status
	call _Z28Cmd_AddServerCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ22SV_AddOperatorCommandsvE19SV_Serverinfo_f_VAR
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_serverinfo
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ22SV_AddOperatorCommandsvE26SV_Serverinfo_f_VAR_SERVER
	mov dword [esp+0x4], _Z15SV_Serverinfo_fv
	mov dword [esp], _cstring_serverinfo
	call _Z28Cmd_AddServerCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ22SV_AddOperatorCommandsvE19SV_Systeminfo_f_VAR
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_systeminfo
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ22SV_AddOperatorCommandsvE26SV_Systeminfo_f_VAR_SERVER
	mov dword [esp+0x4], _Z15SV_Systeminfo_fv
	mov dword [esp], _cstring_systeminfo
	call _Z28Cmd_AddServerCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ22SV_AddOperatorCommandsvE17SV_DumpUser_f_VAR
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_dumpuser
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ22SV_AddOperatorCommandsvE24SV_DumpUser_f_VAR_SERVER
	mov dword [esp+0x4], _Z13SV_DumpUser_fv
	mov dword [esp], _cstring_dumpuser
	call _Z28Cmd_AddServerCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ22SV_AddOperatorCommandsvE19SV_MapRestart_f_VAR
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_map_restart
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ22SV_AddOperatorCommandsvE26SV_MapRestart_f_VAR_SERVER
	mov dword [esp+0x4], _Z15SV_MapRestart_fv
	mov dword [esp], _cstring_map_restart
	call _Z28Cmd_AddServerCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ22SV_AddOperatorCommandsvE20SV_FastRestart_f_VAR
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_fast_restart
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ22SV_AddOperatorCommandsvE27SV_FastRestart_f_VAR_SERVER
	mov dword [esp+0x4], _Z16SV_FastRestart_fv
	mov dword [esp], _cstring_fast_restart
	call _Z28Cmd_AddServerCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ22SV_AddOperatorCommandsvE12SV_Map_f_VAR
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_map
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ22SV_AddOperatorCommandsvE19SV_Map_f_VAR_SERVER
	mov dword [esp+0x4], _Z8SV_Map_fv
	mov dword [esp], _cstring_map
	call _Z28Cmd_AddServerCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _cstring_d3dbsp
	mov dword [esp+0x4], _cstring_mapsmp
	mov dword [esp], _cstring_map
	call _Z19Cmd_SetAutoCompletePKcS0_S0_
	mov dword [esp+0x8], _ZZ22SV_AddOperatorCommandsvE18SV_MapRotate_f_VAR
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_map_rotate1
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ22SV_AddOperatorCommandsvE25SV_MapRotate_f_VAR_SERVER
	mov dword [esp+0x4], _Z14SV_MapRotate_fv
	mov dword [esp], _cstring_map_rotate1
	call _Z28Cmd_AddServerCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ22SV_AddOperatorCommandsvE27SV_GameCompleteStatus_f_VAR
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_gamecompletestat
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ22SV_AddOperatorCommandsvE34SV_GameCompleteStatus_f_VAR_SERVER
	mov dword [esp+0x4], _Z23SV_GameCompleteStatus_fv
	mov dword [esp], _cstring_gamecompletestat
	call _Z28Cmd_AddServerCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ22SV_AddOperatorCommandsvE12SV_Map_f_VAR_0
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_devmap
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ22SV_AddOperatorCommandsvE19SV_Map_f_VAR_SERVER_0
	mov dword [esp+0x4], _Z8SV_Map_fv
	mov dword [esp], _cstring_devmap
	call _Z28Cmd_AddServerCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _cstring_d3dbsp
	mov dword [esp+0x4], _cstring_mapsmp
	mov dword [esp], _cstring_devmap
	call _Z19Cmd_SetAutoCompletePKcS0_S0_
	mov dword [esp+0x8], _ZZ22SV_AddOperatorCommandsvE19SV_KillServer_f_VAR
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_killserver
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ22SV_AddOperatorCommandsvE26SV_KillServer_f_VAR_SERVER
	mov dword [esp+0x4], _Z15SV_KillServer_fv
	mov dword [esp], _cstring_killserver
	call _Z28Cmd_AddServerCommandInternalPKcPFvvEP14cmd_function_s
	mov eax, com_dedicated
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	jnz _Z22SV_AddOperatorCommandsv_20
_Z22SV_AddOperatorCommandsv_30:
	mov dword [esp+0x8], _ZZ22SV_AddOperatorCommandsvE20SV_ScriptUsage_f_VAR
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_scriptusage
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ22SV_AddOperatorCommandsvE27SV_ScriptUsage_f_VAR_SERVER
	mov dword [esp+0x4], _Z16SV_ScriptUsage_fv
	mov dword [esp], _cstring_scriptusage
	call _Z28Cmd_AddServerCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ22SV_AddOperatorCommandsvE20SV_StringUsage_f_VAR
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_stringusage
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ22SV_AddOperatorCommandsvE27SV_StringUsage_f_VAR_SERVER
	mov dword [esp+0x4], _Z16SV_StringUsage_fv
	mov dword [esp], _cstring_stringusage
	call _Z28Cmd_AddServerCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ22SV_AddOperatorCommandsvE16SV_SetPerk_f_VAR
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_setperk
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ22SV_AddOperatorCommandsvE23SV_SetPerk_f_VAR_SERVER
	mov dword [esp+0x4], _Z12SV_SetPerk_fv
	mov dword [esp], _cstring_setperk
	call _Z28Cmd_AddServerCommandInternalPKcPFvvEP14cmd_function_s
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z22SV_AddOperatorCommandsv_20:
	call _Z23SV_AddDedicatedCommandsv
	jmp _Z22SV_AddOperatorCommandsv_30


;SV_AddDedicatedCommands()
_Z23SV_AddDedicatedCommandsv:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov dword [esp], _cstring_say
	call _Z17Cmd_RemoveCommandPKc
	mov dword [esp], _cstring_tell
	call _Z17Cmd_RemoveCommandPKc
	mov dword [esp+0x8], _ZZ23SV_AddDedicatedCommandsvE15SV_ConSay_f_VAR
	mov ebx, _Z20Cbuf_AddServerText_fv
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_say
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ23SV_AddDedicatedCommandsvE22SV_ConSay_f_VAR_SERVER
	mov dword [esp+0x4], _Z11SV_ConSay_fv
	mov dword [esp], _cstring_say
	call _Z28Cmd_AddServerCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ23SV_AddDedicatedCommandsvE16SV_ConTell_f_VAR
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_tell
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ23SV_AddDedicatedCommandsvE23SV_ConTell_f_VAR_SERVER
	mov dword [esp+0x4], _Z12SV_ConTell_fv
	mov dword [esp], _cstring_tell
	call _Z28Cmd_AddServerCommandInternalPKcPFvvEP14cmd_function_s
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;SV_GameCompleteStatus_f()
_Z23SV_GameCompleteStatus_fv:
	push ebp
	mov ebp, esp
	pop ebp
	jmp _Z27SV_MasterGameCompleteStatusv
	nop


;SV_RemoveOperatorCommands()
_Z25SV_RemoveOperatorCommandsv:
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

