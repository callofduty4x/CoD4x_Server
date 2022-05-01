;Imports of sv_client_mp:
	extern sv_cmd_args
	extern _Z10I_strncpyzPcPKci
	extern svs
	extern _Z21ClientUserinfoChangedi
	extern atoi
	extern _Z25FS_LoadedIwdPureChecksumsv
	extern _Z21SV_Cmd_TokenizeStringPKc
	extern _Z25SV_Cmd_EndTokenizedStringv
	extern sv
	extern _Z10Com_PrintfiPKcz
	extern FS_ReadFile
	extern strcmp
	extern _Z18Com_SkipRestOfLinePPKc
	extern _Z9Com_ParsePPKc
	extern FS_FreeFile
	extern _Z12MSG_ReadLongP5msg_t
	extern _Z14MSG_ReadStringP5msg_t
	extern sv_floodProtect
	extern sv_showCommands
	extern _Z9I_strncmpPKcS0_i
	extern _Z11Com_sprintfPciPKcz
	extern _Z11Com_DPrintfiPKcz
	extern _Z9SV_Loadedv
	extern _Z13ClientCommandi
	extern _Z12MSG_ReadByteP5msg_t
	extern _Z11Com_HashKeyPKci
	extern _Z16SV_GameClientNumi
	extern _Z21MSG_SetDefaultUserCmdP13playerState_sP9usercmd_s
	extern _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1_
	extern _Z16BG_IsWeaponValidPK13playerState_sj
	extern sv_pure
	extern _Z16Sys_Millisecondsv
	extern _Z18FS_FOpenFileByModePKcPi8fsMode_t
	extern _Z10I_CleanStrPc
	extern _Z9FS_PrintfiPKcz
	extern _Z13FS_FCloseFilei
	extern _Z20SV_SendServerCommandP8client_t11svscmd_typePKcz
	extern _Z10Com_MemsetPvii
	extern strcpy
	extern _Z22SEH_StringEd_GetStringPKc
	extern _Z9I_stricmpPKcS0_
	extern _Z2vaPKcz
	extern _Z18NET_OutOfBandPrint8netsrc_t8netadr_tPKc
	extern sv_maxclients
	extern _Z14SV_Heartbeat_fv
	extern _Z14NET_CompareAdr8netadr_tS_
	extern Z_FreeInternal
	extern _Z14SV_SetUserinfoiPKc
	extern _Z21SV_FreeClientScriptIdP8client_t
	extern _Z16ClientDisconnecti
	extern _Z14Com_PrintErroriPKcz
	extern _Z19G_SetLastServerTimeii
	extern _Z11ClientThinki
	extern _Z10I_strnicmpPKcS0_i
	extern _Z12FS_WriteFilePKcPKvi
	extern memmove
	extern sv_kickBanTime
	extern net_lanauthorize
	extern com_dedicated
	extern _Z16Sys_IsLANAddress8netadr_t
	extern memset
	extern _Z15NET_StringToAdrPKcP8netadr_t
	extern _Z16SV_MasterAddressv
	extern _Z29Sys_IsLANAddress_IgnoreSubnet8netadr_t
	extern _Z7ms_randv
	extern _Z8BigShorts
	extern _Z13MSG_ReadShortP5msg_t
	extern _Z22SV_FindClientByAddress8netadr_ti
	extern _Z12MSG_ReadDataP5msg_tPvi
	extern _Z16Com_PrintWarningiPKcz
	extern sprintf
	extern _Z18NET_CompareBaseAdr8netadr_tS_
	extern _Z13SV_GentityNumi
	extern g_WeaponDefPool
	extern _Z16Info_ValueForKeyPKcS0_
	extern _Z18NET_IsLocalAddress8netadr_t
	extern _Z15NET_AdrToString8netadr_t
	extern sv_minPing
	extern sv_maxPing
	extern _Z12PbAuthClientPciS_
	extern sv_privatePassword
	extern _Z14Scr_AllocArrayv
	extern _Z13Netchan_Setup8netsrc_tP9netchan_t8netadr_tiPciS3_i
	extern _Z13ClientConnectit
	extern sv_privateClients
	extern sv_reconnectlimit
	extern fs_gameDirVar
	extern _Z19Dvar_RegisterStringPKcS0_tS0_
	extern _Z12Dvar_GetBoolPKc
	extern _Z11ClientBegini
	extern sv_wwwBaseURL
	extern _Z13MSG_WriteByteP5msg_ti
	extern _Z13MSG_WriteLongP5msg_ti
	extern _Z15MSG_WriteStringP5msg_tPKc
	extern sv_wwwDlDisconnected
	extern _Z24SV_SetServerStaticHeaderv
	extern _Z8MSG_InitP5msg_tPhi
	extern _Z29MSG_ClearLastReferencedEntityP5msg_t
	extern _Z31SV_UpdateServerCommandsToClientP8client_tP5msg_t
	extern constantConfigStrings
	extern _Z18SL_ConvertToStringj
	extern _Z14MSG_WriteShortP5msg_ti
	extern _Z13MSG_WriteBit0P5msg_t
	extern _Z13MSG_WriteBitsP5msg_tii
	extern _Z18MSG_WriteBigStringP5msg_tPKc
	extern _Z31SV_Netchan_TransmitNextFragmentP8client_tP9netchan_t
	extern _Z13MSG_WriteBit1P5msg_t
	extern _Z15MSG_WriteEntityP14SnapshotInfo_sP5msg_tiPK13entityState_sS5_i
	extern _Z22SV_SendMessageToClientP5msg_tP8client_t
	extern _Z24SV_GetServerStaticHeaderv
	extern _Z20MSG_ReadBitsCompressPKhPhi
	extern sv_serverId_value
	extern _Z12MSG_ReadBitsP5msg_ti
	extern _Z22SV_BuildClientSnapshotP8client_t
	extern _Z22SV_BeginClientSnapshotP8client_tP5msg_t
	extern _Z20SV_EndClientSnapshotP8client_tP5msg_t
	extern _Z24SV_WriteSnapshotToClientP8client_tP5msg_t
	extern sv_allowDownload
	extern _Z19FS_SV_FOpenFileReadPKcPi
	extern sv_wwwDownload
	extern sv_maxRate
	extern _Z7FS_ReadPvii
	extern _Z8FS_iwIwdPKcPc
	extern _Z13MSG_WriteDataP5msg_tPKvi
	extern Z_MallocInternal
	extern _Z11Dvar_SetIntPK6dvar_si

;Exports of sv_client_mp:
	global ucmds
	global _Z19SV_UpdateUserinfo_fP8client_t
	global _Z15SV_Disconnect_fP8client_t
	global _Z15SV_VerifyIwds_fP8client_t
	global _Z20SV_ResetPureClient_fP8client_t
	global _Z15SV_MutePlayer_fP8client_t
	global _Z17SV_UnmutePlayer_fP8client_t
	global pbReason
	global _Z15SV_IsBannedGuidPKc
	global _ZZ22SV_SendClientGameStateP8client_tE9msgBuffer
	global _Z16SV_ClientCommandP8client_tP5msg_ti
	global _ZZ23SV_ExecuteClientMessageP8client_tP5msg_tE17msgCompressed_buf
	global _ZZ16SV_AddTestClientvE7botport
	global _Z11SV_UserMoveP8client_tP5msg_ti
	global _Z12SV_BanClientP8client_t
	global _Z13PB_DropClientiPc
	global _Z13SV_DropClientP8client_tPKch
	global _Z13SV_FreeClientP8client_t
	global _Z14SV_ClientThinkP8client_tP9usercmd_s
	global _Z14SV_FreeClientsv
	global _Z14SV_UnbanClientPKc
	global _Z15SV_GetChallenge8netadr_t
	global _Z15SV_ReceiveStats8netadr_tP5msg_t
	global _Z16SV_AddTestClientv
	global _Z16SV_DirectConnect8netadr_t
	global _Z16SV_GetClientStatii
	global _Z16SV_SetClientStatiii
	global _Z16SV_WWWDownload_fP8client_t
	global _Z17SV_BanGuidBrieflyPKc
	global _Z17SV_DoneDownload_fP8client_t
	global _Z17SV_NextDownload_fP8client_t
	global _Z17SV_SendDisconnectP8client_tiPKchS2_
	global _Z17SV_StopDownload_fP8client_t
	global _Z18SV_BeginDownload_fP8client_t
	global _Z18SV_DelayDropClientP8client_tPKc
	global _Z18SV_UserinfoChangedP8client_t
	global _Z19SV_AuthorizeRequest8netadr_tiPKc
	global _Z19SV_ClientEnterWorldP8client_tP9usercmd_s
	global _Z20SV_AuthorizeIpPacket8netadr_t
	global _Z20SV_WWWRedirectClientP8client_tP5msg_t
	global _Z22SV_SendClientGameStateP8client_t
	global _Z23SV_ExecuteClientMessageP8client_tP5msg_t
	global _Z23SV_FreeClientScriptPersv
	global _Z23SV_RetransmitDownload_fP8client_t
	global _Z24SV_WriteDownloadToClientP8client_tP5msg_t
	global _Z28SV_WriteDownloadErrorMessageP8client_tP5msg_tPKc
	global _Z41SV_UpdateLastTimeMasterServerCommunicated8netadr_t


SECTION .text


;SV_UpdateUserinfo_f(client_t*)
_Z19SV_UpdateUserinfo_fP8client_t:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov eax, sv_cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x1
	jle _Z19SV_UpdateUserinfo_fP8client_t_10
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x4]
_Z19SV_UpdateUserinfo_fP8client_t_20:
	mov dword [esp+0x8], 0x400
	mov [esp+0x4], eax
	lea eax, [ebx+0x648]
	mov [esp], eax
	call _Z10I_strncpyzPcPKci
	mov [esp], ebx
	call _Z18SV_UserinfoChangedP8client_t
	mov eax, svs
	add eax, 0x46380c
	sub ebx, eax
	sar ebx, 0x2
	imul eax, ebx, 0x4315b545
	mov [ebp+0x8], eax
	add esp, 0x14
	pop ebx
	pop ebp
	jmp _Z21ClientUserinfoChangedi
_Z19SV_UpdateUserinfo_fP8client_t_10:
	mov eax, _cstring_null
	jmp _Z19SV_UpdateUserinfo_fP8client_t_20


;SV_Disconnect_f(client_t*)
_Z15SV_Disconnect_fP8client_t:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], _cstring_exe_disconnected
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z13SV_DropClientP8client_tPKch
	leave
	ret
	nop


;SV_VerifyIwds_f(client_t*)
_Z15SV_VerifyIwds_fP8client_t:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x201c
	mov edx, sv_cmd_args
	mov eax, [edx]
	mov esi, [edx+eax*4+0x44]
	cmp esi, 0x1
	jle _Z15SV_VerifyIwds_fP8client_t_10
	mov eax, [edx+eax*4+0x64]
	mov eax, [eax+0x4]
	cmp byte [eax], 0x40
	jz _Z15SV_VerifyIwds_fP8client_t_20
_Z15SV_VerifyIwds_fP8client_t_10:
	mov eax, [ebp+0x8]
	mov dword [eax+0x804f4], 0x2
_Z15SV_VerifyIwds_fP8client_t_240:
	add esp, 0x201c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z15SV_VerifyIwds_fP8client_t_20:
	cmp esi, 0x2
	jle _Z15SV_VerifyIwds_fP8client_t_30
	mov ebx, 0x2
	lea edi, [ebp-0x1018]
	jmp _Z15SV_VerifyIwds_fP8client_t_40
_Z15SV_VerifyIwds_fP8client_t_60:
	mov eax, _cstring_null
	mov [esp], eax
	call atoi
	mov [edi+ebx*4-0x8], eax
	add ebx, 0x1
	cmp ebx, esi
	jz _Z15SV_VerifyIwds_fP8client_t_50
_Z15SV_VerifyIwds_fP8client_t_70:
	mov edx, sv_cmd_args
_Z15SV_VerifyIwds_fP8client_t_40:
	mov eax, [edx]
	cmp ebx, [edx+eax*4+0x44]
	jge _Z15SV_VerifyIwds_fP8client_t_60
	mov eax, [edx+eax*4+0x64]
	mov eax, [eax+ebx*4]
	mov [esp], eax
	call atoi
	mov [edi+ebx*4-0x8], eax
	add ebx, 0x1
	cmp ebx, esi
	jnz _Z15SV_VerifyIwds_fP8client_t_70
_Z15SV_VerifyIwds_fP8client_t_50:
	lea esi, [ebx-0x3]
	test esi, esi
	jle _Z15SV_VerifyIwds_fP8client_t_80
	xor ecx, ecx
_Z15SV_VerifyIwds_fP8client_t_110:
	xor edx, edx
_Z15SV_VerifyIwds_fP8client_t_100:
	cmp ecx, edx
	jz _Z15SV_VerifyIwds_fP8client_t_90
	mov eax, [ebp+ecx*4-0x1018]
	cmp eax, [ebp+edx*4-0x1018]
	jz _Z15SV_VerifyIwds_fP8client_t_10
_Z15SV_VerifyIwds_fP8client_t_90:
	add edx, 0x1
	cmp edx, esi
	jnz _Z15SV_VerifyIwds_fP8client_t_100
	add ecx, 0x1
	cmp ecx, esi
	jnz _Z15SV_VerifyIwds_fP8client_t_110
	jmp _Z15SV_VerifyIwds_fP8client_t_80
_Z15SV_VerifyIwds_fP8client_t_30:
	mov esi, 0xffffffff
_Z15SV_VerifyIwds_fP8client_t_80:
	call _Z25FS_LoadedIwdPureChecksumsv
	mov [esp], eax
	call _Z21SV_Cmd_TokenizeStringPKc
	mov edx, sv_cmd_args
	mov eax, [edx]
	mov edi, [edx+eax*4+0x44]
	cmp edi, 0x400
	jle _Z15SV_VerifyIwds_fP8client_t_120
	mov edi, 0x400
_Z15SV_VerifyIwds_fP8client_t_170:
	xor ebx, ebx
	jmp _Z15SV_VerifyIwds_fP8client_t_130
_Z15SV_VerifyIwds_fP8client_t_150:
	mov eax, _cstring_null
_Z15SV_VerifyIwds_fP8client_t_160:
	mov [esp], eax
	call atoi
	mov [ebp+ebx*4-0x2018], eax
	add ebx, 0x1
	cmp edi, ebx
	jz _Z15SV_VerifyIwds_fP8client_t_140
	mov edx, sv_cmd_args
_Z15SV_VerifyIwds_fP8client_t_130:
	mov eax, [edx]
	cmp ebx, [edx+eax*4+0x44]
	jge _Z15SV_VerifyIwds_fP8client_t_150
	mov eax, [edx+eax*4+0x64]
	mov eax, [eax+ebx*4]
	jmp _Z15SV_VerifyIwds_fP8client_t_160
_Z15SV_VerifyIwds_fP8client_t_120:
	test edi, edi
	jg _Z15SV_VerifyIwds_fP8client_t_170
_Z15SV_VerifyIwds_fP8client_t_140:
	call _Z25SV_Cmd_EndTokenizedStringv
	test esi, esi
	jle _Z15SV_VerifyIwds_fP8client_t_180
	mov ebx, [ebp-0x2018]
	test edi, edi
	jle _Z15SV_VerifyIwds_fP8client_t_10
	xor ecx, ecx
_Z15SV_VerifyIwds_fP8client_t_210:
	mov edx, [ebp+ecx*4-0x1018]
	cmp ebx, edx
	jz _Z15SV_VerifyIwds_fP8client_t_190
	xor eax, eax
_Z15SV_VerifyIwds_fP8client_t_200:
	add eax, 0x1
	cmp edi, eax
	jz _Z15SV_VerifyIwds_fP8client_t_10
	cmp [ebp+eax*4-0x2018], edx
	jnz _Z15SV_VerifyIwds_fP8client_t_200
_Z15SV_VerifyIwds_fP8client_t_190:
	add ecx, 0x1
	cmp ecx, esi
	jnz _Z15SV_VerifyIwds_fP8client_t_210
_Z15SV_VerifyIwds_fP8client_t_180:
	mov eax, sv
	mov edx, [eax+0x14]
	test esi, esi
	jle _Z15SV_VerifyIwds_fP8client_t_220
	xor eax, eax
_Z15SV_VerifyIwds_fP8client_t_230:
	xor edx, [ebp+eax*4-0x1018]
	add eax, 0x1
	cmp eax, esi
	jnz _Z15SV_VerifyIwds_fP8client_t_230
_Z15SV_VerifyIwds_fP8client_t_220:
	xor edx, esi
	cmp edx, [ebp+esi*4-0x1018]
	jnz _Z15SV_VerifyIwds_fP8client_t_10
	mov eax, [ebp+0x8]
	mov dword [eax+0x804f4], 0x1
	jmp _Z15SV_VerifyIwds_fP8client_t_240
	nop


;SV_ResetPureClient_f(client_t*)
_Z20SV_ResetPureClient_fP8client_t:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov dword [eax+0x804f4], 0x0
	pop ebp
	ret


;SV_MutePlayer_f(client_t*)
_Z15SV_MutePlayer_fP8client_t:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, sv_cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x1
	jle _Z15SV_MutePlayer_fP8client_t_10
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x4]
_Z15SV_MutePlayer_fP8client_t_30:
	mov [esp], eax
	call atoi
	cmp eax, 0x40
	ja _Z15SV_MutePlayer_fP8client_t_20
	mov edx, [ebp+0x8]
	mov byte [eax+edx+0xa35f0], 0x1
	leave
	ret
_Z15SV_MutePlayer_fP8client_t_20:
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_invalid_mute_cli
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	leave
	ret
_Z15SV_MutePlayer_fP8client_t_10:
	mov eax, _cstring_null
	jmp _Z15SV_MutePlayer_fP8client_t_30


;SV_UnmutePlayer_f(client_t*)
_Z17SV_UnmutePlayer_fP8client_t:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, sv_cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x1
	jle _Z17SV_UnmutePlayer_fP8client_t_10
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x4]
_Z17SV_UnmutePlayer_fP8client_t_30:
	mov [esp], eax
	call atoi
	cmp eax, 0x40
	ja _Z17SV_UnmutePlayer_fP8client_t_20
	mov edx, [ebp+0x8]
	mov byte [eax+edx+0xa35f0], 0x0
	leave
	ret
_Z17SV_UnmutePlayer_fP8client_t_20:
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_invalid_unmute_c
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	leave
	ret
_Z17SV_UnmutePlayer_fP8client_t_10:
	mov eax, _cstring_null
	jmp _Z17SV_UnmutePlayer_fP8client_t_30


;SV_IsBannedGuid(char const*)
_Z15SV_IsBannedGuidPKc:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x20
	mov esi, eax
	cmp byte [eax], 0x0
	jnz _Z15SV_IsBannedGuidPKc_10
_Z15SV_IsBannedGuidPKc_20:
	xor ebx, ebx
	mov eax, ebx
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
_Z15SV_IsBannedGuidPKc_10:
	lea eax, [ebp-0xc]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_bantxt
	call FS_ReadFile
	test eax, eax
	js _Z15SV_IsBannedGuidPKc_20
	mov eax, [ebp-0xc]
	mov [ebp-0x10], eax
	lea ebx, [ebp-0x10]
	jmp _Z15SV_IsBannedGuidPKc_30
_Z15SV_IsBannedGuidPKc_50:
	mov [esp+0x4], esi
	mov [esp], eax
	call strcmp
	test eax, eax
	jz _Z15SV_IsBannedGuidPKc_40
	mov [esp], ebx
	call _Z18Com_SkipRestOfLinePPKc
_Z15SV_IsBannedGuidPKc_30:
	mov [esp], ebx
	call _Z9Com_ParsePPKc
	cmp byte [eax], 0x0
	jnz _Z15SV_IsBannedGuidPKc_50
	xor ebx, ebx
_Z15SV_IsBannedGuidPKc_60:
	mov eax, [ebp-0xc]
	mov [esp], eax
	call FS_FreeFile
	mov eax, ebx
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
_Z15SV_IsBannedGuidPKc_40:
	mov ebx, 0x1
	jmp _Z15SV_IsBannedGuidPKc_60


;SV_ClientCommand(client_t*, msg_t*, int)
_Z16SV_ClientCommandP8client_tP5msg_ti:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov esi, eax
	mov ebx, edx
	mov [ebp-0x28], ecx
	mov [esp], edx
	call _Z12MSG_ReadLongP5msg_t
	mov edi, eax
	mov [esp], ebx
	call _Z14MSG_ReadStringP5msg_t
	mov [ebp-0x24], eax
	mov eax, sv_floodProtect
	mov eax, [eax]
	mov ecx, [eax+0xc]
	test ecx, ecx
	jz _Z16SV_ClientCommandP8client_tP5msg_ti_10
	cmp dword [esi], 0x3
	jg _Z16SV_ClientCommandP8client_tP5msg_ti_20
_Z16SV_ClientCommandP8client_tP5msg_ti_10:
	xor ebx, ebx
_Z16SV_ClientCommandP8client_tP5msg_ti_150:
	cmp edi, [esi+0x20e80]
	jle _Z16SV_ClientCommandP8client_tP5msg_ti_30
	mov eax, sv_showCommands
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z16SV_ClientCommandP8client_tP5msg_ti_40
	mov edx, [esi+0x20e80]
	lea eax, [edx+0x1]
	cmp edi, eax
	jg _Z16SV_ClientCommandP8client_tP5msg_ti_50
_Z16SV_ClientCommandP8client_tP5msg_ti_160:
	mov dword [esp+0x8], 0x5
	mov edx, [ebp-0x24]
	mov [esp+0x4], edx
	mov dword [esp], _cstring_team_
	call _Z9I_strncmpPKcS0_i
	test eax, eax
	jnz _Z16SV_ClientCommandP8client_tP5msg_ti_60
_Z16SV_ClientCommandP8client_tP5msg_ti_200:
	xor ebx, ebx
_Z16SV_ClientCommandP8client_tP5msg_ti_210:
	mov edx, [ebp-0x28]
	test edx, edx
	jnz _Z16SV_ClientCommandP8client_tP5msg_ti_70
	test bl, bl
	jnz _Z16SV_ClientCommandP8client_tP5msg_ti_80
	mov dword [ebp-0x20], 0x1
_Z16SV_ClientCommandP8client_tP5msg_ti_190:
	mov ecx, [ebp-0x24]
	mov [esp], ecx
	call _Z21SV_Cmd_TokenizeStringPKc
	mov edx, [ucmds]
	test edx, edx
	jz _Z16SV_ClientCommandP8client_tP5msg_ti_90
	mov eax, sv_cmd_args
	mov eax, [eax]
	mov [ebp-0x1c], eax
	mov ecx, sv_cmd_args
	mov eax, [ecx+eax*4+0x44]
	test eax, eax
	jg _Z16SV_ClientCommandP8client_tP5msg_ti_100
	mov ebx, ucmds
_Z16SV_ClientCommandP8client_tP5msg_ti_120:
	cmp byte [edx], 0x0
	jz _Z16SV_ClientCommandP8client_tP5msg_ti_110
	add ebx, 0xc
	mov edx, [ebx]
	test edx, edx
	jnz _Z16SV_ClientCommandP8client_tP5msg_ti_120
_Z16SV_ClientCommandP8client_tP5msg_ti_250:
	mov eax, [ebp-0x20]
	test eax, eax
	jz _Z16SV_ClientCommandP8client_tP5msg_ti_130
	mov eax, [ebx]
	test eax, eax
	jz _Z16SV_ClientCommandP8client_tP5msg_ti_140
_Z16SV_ClientCommandP8client_tP5msg_ti_130:
	call _Z25SV_Cmd_EndTokenizedStringv
	mov [esi+0x20e80], edi
	mov eax, [ebp-0x24]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_s
	mov dword [esp+0x4], 0x400
	lea eax, [esi+0x20e84]
	mov [esp], eax
	call _Z11Com_sprintfPciPKcz
_Z16SV_ClientCommandP8client_tP5msg_ti_30:
	mov eax, 0x1
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z16SV_ClientCommandP8client_tP5msg_ti_50:
	sub edi, edx
	lea eax, [edi+0x1]
	mov [esp+0xc], eax
	lea eax, [esi+0x21288]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_client_s_lost_i_
	mov dword [esp], 0xf
	call _Z10Com_PrintfiPKcz
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], _cstring_exe_lostreliable
	mov [esp], esi
	call _Z13SV_DropClientP8client_tPKch
	xor eax, eax
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z16SV_ClientCommandP8client_tP5msg_ti_20:
	cmp dword [esi+0x20], 0x2
	jz _Z16SV_ClientCommandP8client_tP5msg_ti_10
	mov ebx, 0x1
	jmp _Z16SV_ClientCommandP8client_tP5msg_ti_150
_Z16SV_ClientCommandP8client_tP5msg_ti_40:
	mov eax, [ebp-0x24]
	mov [esp+0xc], eax
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_clientcommand_i_
	mov dword [esp], 0xf
	call _Z10Com_PrintfiPKcz
	mov edx, [esi+0x20e80]
	lea eax, [edx+0x1]
	cmp edi, eax
	jle _Z16SV_ClientCommandP8client_tP5msg_ti_160
	jmp _Z16SV_ClientCommandP8client_tP5msg_ti_50
_Z16SV_ClientCommandP8client_tP5msg_ti_80:
	mov eax, [esi+0x21450]
	test eax, eax
	jz _Z16SV_ClientCommandP8client_tP5msg_ti_170
	mov dword [ebp-0x20], 0x1
_Z16SV_ClientCommandP8client_tP5msg_ti_270:
	mov ecx, svs
	mov eax, [esi+0x2144c]
	cmp eax, [ecx+0x463804]
	jle _Z16SV_ClientCommandP8client_tP5msg_ti_180
	mov eax, [esi+0x21450]
	sub eax, 0x1
	test eax, eax
	mov edx, 0x0
	cmovle eax, edx
	mov [esi+0x21450], eax
_Z16SV_ClientCommandP8client_tP5msg_ti_260:
	mov eax, [ecx+0x463804]
	add eax, 0x320
	mov [esi+0x2144c], eax
	jmp _Z16SV_ClientCommandP8client_tP5msg_ti_190
_Z16SV_ClientCommandP8client_tP5msg_ti_60:
	mov dword [esp+0x8], 0x5
	mov ecx, [ebp-0x24]
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_score
	call _Z9I_strncmpPKcS0_i
	test eax, eax
	jz _Z16SV_ClientCommandP8client_tP5msg_ti_200
	mov dword [esp+0x8], 0x3
	mov eax, [ebp-0x24]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_mr_
	call _Z9I_strncmpPKcS0_i
	test eax, eax
	jnz _Z16SV_ClientCommandP8client_tP5msg_ti_210
	jmp _Z16SV_ClientCommandP8client_tP5msg_ti_200
_Z16SV_ClientCommandP8client_tP5msg_ti_170:
	mov ecx, svs
	mov eax, [ecx+0x463804]
	cmp eax, [esi+0x2144c]
	jge _Z16SV_ClientCommandP8client_tP5msg_ti_220
_Z16SV_ClientCommandP8client_tP5msg_ti_70:
	mov edx, [ebp-0x24]
	mov [esp+0xc], edx
	lea eax, [esi+0x21288]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_client_text_igno
	mov dword [esp], 0xf
	call _Z11Com_DPrintfiPKcz
	test bl, bl
	jnz _Z16SV_ClientCommandP8client_tP5msg_ti_230
	mov dword [ebp-0x20], 0x0
	jmp _Z16SV_ClientCommandP8client_tP5msg_ti_190
_Z16SV_ClientCommandP8client_tP5msg_ti_110:
	mov eax, [ebp-0x28]
	test eax, eax
	jz _Z16SV_ClientCommandP8client_tP5msg_ti_240
	mov eax, [ebx+0x8]
	test eax, eax
	jz _Z16SV_ClientCommandP8client_tP5msg_ti_250
_Z16SV_ClientCommandP8client_tP5msg_ti_240:
	mov [esp], esi
	call dword [ebx+0x4]
	jmp _Z16SV_ClientCommandP8client_tP5msg_ti_250
_Z16SV_ClientCommandP8client_tP5msg_ti_220:
	mov dword [ebp-0x20], 0x1
_Z16SV_ClientCommandP8client_tP5msg_ti_180:
	mov eax, sv_floodProtect
	mov eax, [eax]
	mov eax, [eax+0xc]
	sub eax, 0x1
	mov [esi+0x21450], eax
	jmp _Z16SV_ClientCommandP8client_tP5msg_ti_260
_Z16SV_ClientCommandP8client_tP5msg_ti_230:
	mov dword [ebp-0x20], 0x0
	jmp _Z16SV_ClientCommandP8client_tP5msg_ti_270
_Z16SV_ClientCommandP8client_tP5msg_ti_90:
	mov ebx, ucmds
	jmp _Z16SV_ClientCommandP8client_tP5msg_ti_250
_Z16SV_ClientCommandP8client_tP5msg_ti_140:
	call _Z9SV_Loadedv
	test al, al
	jz _Z16SV_ClientCommandP8client_tP5msg_ti_130
	mov eax, svs
	add eax, 0x46380c
	mov ecx, esi
	sub ecx, eax
	mov eax, ecx
	sar eax, 0x2
	imul eax, eax, 0x4315b545
	mov [esp], eax
	call _Z13ClientCommandi
	jmp _Z16SV_ClientCommandP8client_tP5msg_ti_130
_Z16SV_ClientCommandP8client_tP5msg_ti_100:
	mov ebx, ucmds
_Z16SV_ClientCommandP8client_tP5msg_ti_280:
	mov eax, [ebp-0x1c]
	mov ecx, sv_cmd_args
	mov eax, [ecx+eax*4+0x64]
	mov [ebp-0x2c], eax
	mov [esp+0x4], edx
	mov eax, [eax]
	mov [esp], eax
	call strcmp
	test eax, eax
	jz _Z16SV_ClientCommandP8client_tP5msg_ti_110
	add ebx, 0xc
	mov edx, [ebx]
	test edx, edx
	jnz _Z16SV_ClientCommandP8client_tP5msg_ti_280
	jmp _Z16SV_ClientCommandP8client_tP5msg_ti_250
	nop


;SV_UserMove(client_t*, msg_t*, int)
_Z11SV_UserMoveP8client_tP5msg_ti:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x45c
	mov edi, [ebp+0x10]
	test edi, edi
	jz _Z11SV_UserMoveP8client_tP5msg_ti_10
	mov edx, [ebp+0x8]
	mov eax, [edx+0x20e54]
	mov [edx+0x8], eax
	mov edx, [ebp+0x8]
	mov eax, [edx+0x20e48]
	sub eax, [edx+0x20e4c]
	cmp eax, 0x7f
	jle _Z11SV_UserMoveP8client_tP5msg_ti_20
_Z11SV_UserMoveP8client_tP5msg_ti_30:
	add esp, 0x45c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z11SV_UserMoveP8client_tP5msg_ti_10:
	mov ecx, [ebp+0x8]
	mov dword [ecx+0x8], 0xffffffff
	mov edx, [ebp+0x8]
	mov eax, [edx+0x20e48]
	sub eax, [edx+0x20e4c]
	cmp eax, 0x7f
	jg _Z11SV_UserMoveP8client_tP5msg_ti_30
_Z11SV_UserMoveP8client_tP5msg_ti_20:
	mov ecx, [ebp+0xc]
	mov [esp], ecx
	call _Z12MSG_ReadByteP5msg_t
	mov [ebp-0x450], eax
	test eax, eax
	jle _Z11SV_UserMoveP8client_tP5msg_ti_40
	cmp dword [ebp-0x450], 0x20
	jle _Z11SV_UserMoveP8client_tP5msg_ti_50
	mov dword [esp+0x4], _cstring_cmdcount__max_pa
	mov dword [esp], 0xf
	call _Z10Com_PrintfiPKcz
	add esp, 0x45c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z11SV_UserMoveP8client_tP5msg_ti_50:
	mov eax, [ebp+0x8]
	mov eax, [eax+0x20e54]
	mov [ebp-0x44c], eax
	mov eax, sv
	mov edx, [eax+0x14]
	xor [ebp-0x44c], edx
	mov dword [esp+0x4], 0x20
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x20e4c]
	and eax, 0x7f
	mov edx, eax
	shl edx, 0xa
	lea eax, [edx+eax*8+0xa40]
	lea eax, [ecx+eax+0x8]
	mov [esp], eax
	call _Z11Com_HashKeyPKci
	xor [ebp-0x44c], eax
	mov eax, svs
	add eax, 0x46380c
	mov edx, [ebp+0x8]
	sub edx, eax
	mov eax, edx
	sar eax, 0x2
	imul eax, eax, 0x4315b545
	mov [esp], eax
	call _Z16SV_GameClientNumi
	mov esi, eax
	lea ebx, [ebp-0x3c]
	mov [esp+0x4], ebx
	mov [esp], eax
	call _Z21MSG_SetDefaultUserCmdP13playerState_sP9usercmd_s
	mov edx, ebx
	xor edi, edi
_Z11SV_UserMoveP8client_tP5msg_ti_80:
	mov eax, edi
	shl eax, 0x5
	lea ebx, [ebp-0x43c]
	add ebx, eax
	mov [esp+0xc], ebx
	mov [esp+0x8], edx
	mov ecx, [ebp-0x44c]
	mov [esp+0x4], ecx
	mov eax, [ebp+0xc]
	mov [esp], eax
	call _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1_
	movzx eax, byte [ebx+0x14]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z16BG_IsWeaponValidPK13playerState_sj
	test al, al
	jnz _Z11SV_UserMoveP8client_tP5msg_ti_60
	mov eax, [esi+0xe8]
	mov [ebx+0x14], al
_Z11SV_UserMoveP8client_tP5msg_ti_60:
	movzx eax, byte [ebx+0x15]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z16BG_IsWeaponValidPK13playerState_sj
	test al, al
	jnz _Z11SV_UserMoveP8client_tP5msg_ti_70
	mov eax, [esi+0xe0]
	mov [ebx+0x15], al
_Z11SV_UserMoveP8client_tP5msg_ti_70:
	add edi, 0x1
	mov edx, ebx
	cmp [ebp-0x450], edi
	jnz _Z11SV_UserMoveP8client_tP5msg_ti_80
	mov edx, [ebp+0xc]
	mov [esp], edx
	call _Z12MSG_ReadLongP5msg_t
	mov [ebp-0x1c], eax
	mov eax, [ebp-0x1c]
	mov ecx, [ebp+0x8]
	mov [ecx+0x634], eax
	mov eax, [ebp+0xc]
	mov [esp], eax
	call _Z12MSG_ReadLongP5msg_t
	mov [ebp-0x1c], eax
	mov eax, [ebp-0x1c]
	mov edx, [ebp+0x8]
	mov [edx+0x638], eax
	mov ecx, [ebp+0xc]
	mov [esp], ecx
	call _Z12MSG_ReadLongP5msg_t
	mov [ebp-0x1c], eax
	mov eax, [ebp-0x1c]
	mov edx, [ebp+0x8]
	mov [edx+0x63c], eax
	mov ecx, [ebp+0xc]
	mov [esp], ecx
	call _Z12MSG_ReadLongP5msg_t
	mov edx, [ebp+0x8]
	mov [edx+0x640], eax
	mov ecx, [ebp+0x8]
	mov edx, [ecx+0x20e54]
	and edx, 0x1f
	lea eax, [edx+edx*2]
	shl eax, 0x5
	sub eax, edx
	shl eax, 0x5
	add eax, edx
	lea ebx, [ecx+eax*4]
	mov esi, [ebx+0x243dc]
	test esi, esi
	jle _Z11SV_UserMoveP8client_tP5msg_ti_90
	mov eax, ecx
_Z11SV_UserMoveP8client_tP5msg_ti_170:
	cmp dword [eax], 0x3
	jz _Z11SV_UserMoveP8client_tP5msg_ti_100
_Z11SV_UserMoveP8client_tP5msg_ti_180:
	mov eax, sv_pure
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z11SV_UserMoveP8client_tP5msg_ti_110
	mov ecx, [ebp+0x8]
	mov ebx, [ecx+0x804f4]
	test ebx, ebx
	jz _Z11SV_UserMoveP8client_tP5msg_ti_120
	mov eax, ecx
_Z11SV_UserMoveP8client_tP5msg_ti_140:
	cmp dword [eax], 0x4
	jz _Z11SV_UserMoveP8client_tP5msg_ti_130
	mov dword [eax+0x8], 0xffffffff
	add esp, 0x45c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z11SV_UserMoveP8client_tP5msg_ti_110:
	mov eax, [ebp+0x8]
	jmp _Z11SV_UserMoveP8client_tP5msg_ti_140
_Z11SV_UserMoveP8client_tP5msg_ti_130:
	mov esi, [ebp-0x450]
	sub esi, 0x1
	xor ebx, ebx
	shl esi, 0x5
	jmp _Z11SV_UserMoveP8client_tP5msg_ti_150
_Z11SV_UserMoveP8client_tP5msg_ti_160:
	add ebx, 0x1
	cmp [ebp-0x450], ebx
	jz _Z11SV_UserMoveP8client_tP5msg_ti_30
_Z11SV_UserMoveP8client_tP5msg_ti_150:
	mov edx, ebx
	shl edx, 0x5
	mov eax, [ebp+edx-0x43c]
	cmp eax, [esi+ebp-0x43c]
	jg _Z11SV_UserMoveP8client_tP5msg_ti_160
	mov ecx, [ebp+0x8]
	cmp eax, [ecx+0x20e60]
	jle _Z11SV_UserMoveP8client_tP5msg_ti_160
	lea eax, [ebp-0x43c]
	add eax, edx
	mov [esp+0x4], eax
	mov [esp], ecx
	call _Z14SV_ClientThinkP8client_tP9usercmd_s
	jmp _Z11SV_UserMoveP8client_tP5msg_ti_160
_Z11SV_UserMoveP8client_tP5msg_ti_90:
	call _Z16Sys_Millisecondsv
	mov [ebx+0x243dc], eax
	mov eax, [ebp+0x8]
	jmp _Z11SV_UserMoveP8client_tP5msg_ti_170
_Z11SV_UserMoveP8client_tP5msg_ti_40:
	mov dword [esp+0x4], _cstring_cmdcount__1
	mov dword [esp], 0xf
	call _Z10Com_PrintfiPKcz
	jmp _Z11SV_UserMoveP8client_tP5msg_ti_30
_Z11SV_UserMoveP8client_tP5msg_ti_120:
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], _cstring_exe_cannotvalida
	mov [esp], ecx
	call _Z13SV_DropClientP8client_tPKch
	jmp _Z11SV_UserMoveP8client_tP5msg_ti_30
_Z11SV_UserMoveP8client_tP5msg_ti_100:
	lea edx, [ebp-0x43c]
	mov [esp+0x4], edx
	mov [esp], eax
	call _Z19SV_ClientEnterWorldP8client_tP9usercmd_s
	jmp _Z11SV_UserMoveP8client_tP5msg_ti_180


;SV_BanClient(client_t*)
_Z12SV_BanClientP8client_t:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov edi, [ebp+0x8]
	cmp dword [edi+0x20], 0x2
	jz _Z12SV_BanClientP8client_t_10
	cmp byte [edi+0xa0cf8], 0x0
	jz _Z12SV_BanClientP8client_t_20
	lea esi, [edi+0xa0cf8]
	mov eax, esi
	call _Z15SV_IsBannedGuidPKc
	test eax, eax
	jz _Z12SV_BanClientP8client_t_30
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_this_guid_s_is_a
	mov dword [esp], 0xf
	call _Z10Com_PrintfiPKcz
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z12SV_BanClientP8client_t_20:
	mov dword [esp+0x4], _cstring_cant_ban_user_gu
	mov dword [esp], 0xf
	call _Z10Com_PrintfiPKcz
_Z12SV_BanClientP8client_t_40:
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z12SV_BanClientP8client_t_30:
	mov dword [esp+0x8], 0x2
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_bantxt
	call _Z18FS_FOpenFileByModePKcPi8fsMode_t
	test eax, eax
	js _Z12SV_BanClientP8client_t_40
	mov dword [esp+0x8], 0x40
	lea eax, [edi+0x21288]
	mov [esp+0x4], eax
	lea ebx, [ebp-0x5c]
	mov [esp], ebx
	call _Z10I_strncpyzPcPKci
	mov [esp], ebx
	call _Z10I_CleanStrPc
	mov [esp+0xc], ebx
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_s_s
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call _Z9FS_PrintfiPKcz
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call _Z13FS_FCloseFilei
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], _cstring_exe_playerkicked
	mov [esp], edi
	call _Z13SV_DropClientP8client_tPKch
	mov eax, svs
	mov eax, [eax+0x463804]
	mov [edi+0x21454], eax
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z12SV_BanClientP8client_t_10:
	mov dword [esp+0xc], 0x65
	mov dword [esp+0x8], _cstring_c_exe_cannotkick
	mov dword [esp+0x4], 0x0
	mov dword [esp], 0x0
	call _Z20SV_SendServerCommandP8client_t11svscmd_typePKcz
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;PB_DropClient(int, char*)
_Z13PB_DropClientiPc:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov dword [esp+0x8], 0x20000
	mov dword [esp+0x4], 0x0
	mov dword [esp], pbReason
	call _Z10Com_MemsetPvii
	mov dword [esp+0x8], 0x20000
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov dword [esp], pbReason
	call _Z10I_strncpyzPcPKci
	movzx eax, byte [pbReason]
	test al, al
	jz _Z13PB_DropClientiPc_10
	mov edx, pbReason
	jmp _Z13PB_DropClientiPc_20
_Z13PB_DropClientiPc_30:
	movzx eax, byte [edx+0x1]
	add edx, 0x1
	test al, al
	jz _Z13PB_DropClientiPc_10
_Z13PB_DropClientiPc_20:
	cmp al, 0x22
	jnz _Z13PB_DropClientiPc_30
	mov byte [edx], 0x27
	movzx eax, byte [edx+0x1]
	add edx, 0x1
	test al, al
	jnz _Z13PB_DropClientiPc_20
_Z13PB_DropClientiPc_10:
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], pbReason
	lea eax, [ebx+ebx*4]
	shl eax, 0x7
	add eax, ebx
	lea eax, [ebx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	lea eax, [ebx+eax*4]
	mov edx, svs
	add edx, 0x46380c
	lea eax, [edx+eax*4]
	mov [esp], eax
	call _Z13SV_DropClientP8client_tPKch
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;SV_DropClient(client_t*, char const*, unsigned char)
_Z13SV_DropClientP8client_tPKch:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x8c
	movzx eax, byte [ebp+0x10]
	mov [ebp-0x61], al
	mov edx, [ebp+0x8]
	mov edx, [edx]
	mov [ebp-0x60], edx
	sub edx, 0x1
	jz _Z13SV_DropClientP8client_tPKch_10
	mov ecx, [ebp+0x8]
	mov dword [ecx+0x644], 0x0
	mov eax, ecx
	add eax, 0x21288
	mov [esp+0x4], eax
	lea esi, [ebp-0x4c]
	mov [esp], esi
	call strcpy
	mov [esp+0xc], esi
	mov edx, [ebp-0x60]
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_going_to_cs_zomb
	mov dword [esp], 0xf
	call _Z11Com_DPrintfiPKcz
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z13SV_FreeClientP8client_t
	mov esi, [ebp+0x8]
	mov dword [esi], 0x1
	mov ebx, [esi+0x21284]
	test ebx, ebx
	jz _Z13SV_DropClientP8client_tPKch_20
_Z13SV_DropClientP8client_tPKch_140:
	mov esi, [ebp+0xc]
	mov [esp], esi
	call _Z22SEH_StringEd_GetStringPKc
	test eax, eax
	setnz al
	mov esi, eax
	mov dword [esp+0x4], _cstring_exe_disconnected
	mov edx, [ebp+0xc]
	mov [esp], edx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z13SV_DropClientP8client_tPKch_30
	mov edx, _cstring_
	mov ecx, esi
	test cl, cl
	mov eax, _cstring_null
	cmovz edx, eax
	mov eax, [ebp+0xc]
	mov [esp+0x18], eax
	mov [esp+0x14], edx
	lea edx, [ebp-0x4c]
	mov [esp+0x10], edx
_Z13SV_DropClientP8client_tPKch_80:
	mov dword [esp+0xc], 0x65
	mov dword [esp+0x8], _cstring_c_s7_ss
	mov dword [esp+0x4], 0x0
	mov dword [esp], 0x0
	call _Z20SV_SendServerCommandP8client_t11svscmd_typePKcz
	mov eax, svs
	add eax, 0x46380c
	mov ebx, [ebp+0x8]
	sub ebx, eax
	sar ebx, 0x2
	imul ebx, ebx, 0x4315b545
	mov ecx, [ebp+0xc]
	mov [esp+0x10], ecx
	lea eax, [ebp-0x4c]
	mov [esp+0xc], eax
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_is_s
	mov dword [esp], 0xf
	call _Z10Com_PrintfiPKcz
	mov [esp+0x10], ebx
	mov dword [esp+0xc], 0x4b
	mov dword [esp+0x8], _cstring_c_d
	mov dword [esp+0x4], 0x1
	mov dword [esp], 0x0
	call _Z20SV_SendServerCommandP8client_t11svscmd_typePKcz
	cmp byte [ebp-0x61], 0x0
	jz _Z13SV_DropClientP8client_tPKch_40
	mov eax, esi
	cmp dword [ebp-0x60], 0x4
	jz _Z13SV_DropClientP8client_tPKch_50
	mov ecx, [ebp+0xc]
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_disconnect_s
	call _Z2vaPKcz
	mov esi, [ebp+0x8]
	mov ebx, [esi+0x20]
	mov [ebp-0x24], ebx
	mov ecx, [esi+0x24]
	mov [ebp-0x20], ecx
	mov edx, [esi+0x28]
	mov [ebp-0x1c], edx
	mov [esp+0x10], eax
	mov [esp+0x4], ebx
	mov [esp+0x8], ecx
	mov [esp+0xc], edx
	mov dword [esp], 0x1
	call _Z18NET_OutOfBandPrint8netsrc_t8netadr_tPKc
_Z13SV_DropClientP8client_tPKch_40:
	mov eax, sv_maxclients
	mov eax, [eax]
	mov ebx, [eax+0xc]
	cmp ebx, 0x0
	jg _Z13SV_DropClientP8client_tPKch_60
	jnz _Z13SV_DropClientP8client_tPKch_10
_Z13SV_DropClientP8client_tPKch_90:
	call _Z14SV_Heartbeat_fv
_Z13SV_DropClientP8client_tPKch_10:
	add esp, 0x8c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z13SV_DropClientP8client_tPKch_30:
	mov ecx, esi
	test cl, cl
	jz _Z13SV_DropClientP8client_tPKch_70
	mov eax, _cstring_
_Z13SV_DropClientP8client_tPKch_110:
	mov dword [esp+0x18], _cstring_exe_leftgame
	mov [esp+0x14], eax
	lea eax, [ebp-0x4c]
	mov [esp+0x10], eax
	jmp _Z13SV_DropClientP8client_tPKch_80
_Z13SV_DropClientP8client_tPKch_60:
	mov eax, svs
	cmp dword [eax+0x46380c], 0x1
	jg _Z13SV_DropClientP8client_tPKch_10
	xor ecx, ecx
	lea edx, [eax+0x46380c]
_Z13SV_DropClientP8client_tPKch_100:
	add ecx, 0x1
	cmp ebx, ecx
	jz _Z13SV_DropClientP8client_tPKch_90
	mov eax, [edx+0xa5634]
	add edx, 0xa5634
	sub eax, 0x1
	jle _Z13SV_DropClientP8client_tPKch_100
	jmp _Z13SV_DropClientP8client_tPKch_10
_Z13SV_DropClientP8client_tPKch_70:
	mov eax, _cstring_null
	jmp _Z13SV_DropClientP8client_tPKch_110
_Z13SV_DropClientP8client_tPKch_50:
	test al, al
	jz _Z13SV_DropClientP8client_tPKch_120
	mov eax, [ebp+0xc]
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x77
	mov dword [esp+0x8], _cstring_c_s
	mov dword [esp+0x4], 0x1
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z20SV_SendServerCommandP8client_t11svscmd_typePKcz
	jmp _Z13SV_DropClientP8client_tPKch_40
_Z13SV_DropClientP8client_tPKch_20:
	mov eax, svs
	mov edx, eax
	add eax, 0xb212ab8
	mov [ebp-0x5c], eax
	mov [ebp-0x68], edx
	mov ecx, eax
	jmp _Z13SV_DropClientP8client_tPKch_130
_Z13SV_DropClientP8client_tPKch_150:
	add dword [ebp-0x5c], 0x48
	mov edx, [ebp-0x68]
	lea eax, [edx+svs+0x9778638]
	cmp eax, [ebp-0x5c]
	jz _Z13SV_DropClientP8client_tPKch_140
	mov ecx, [ebp-0x5c]
_Z13SV_DropClientP8client_tPKch_130:
	lea eax, [edx+svs+0x9766638]
	mov edx, [ebp-0x5c]
	sub edx, eax
	mov edi, [ecx]
	mov [ebp-0x3c], edi
	mov esi, [edx+eax+0x4]
	mov [ebp-0x38], esi
	mov ebx, [edx+eax+0x8]
	mov [ebp-0x34], ebx
	mov eax, [ebp+0x8]
	mov ecx, [eax+0x20]
	mov [ebp-0x30], ecx
	mov edx, [eax+0x24]
	mov [ebp-0x2c], edx
	mov eax, [eax+0x28]
	mov [ebp-0x28], eax
	mov [esp+0xc], edi
	mov [esp+0x10], esi
	mov [esp+0x14], ebx
	mov [esp], ecx
	mov [esp+0x4], edx
	mov [esp+0x8], eax
	call _Z14NET_CompareAdr8netadr_tS_
	test eax, eax
	jz _Z13SV_DropClientP8client_tPKch_150
	mov esi, [ebp-0x5c]
	mov dword [esi+0x20], 0x0
	jmp _Z13SV_DropClientP8client_tPKch_140
_Z13SV_DropClientP8client_tPKch_120:
	mov edx, [ebp+0xc]
	mov [esp+0x14], edx
	lea ecx, [ebp-0x4c]
	mov [esp+0x10], ecx
	mov dword [esp+0xc], 0x77
	mov dword [esp+0x8], _cstring_c_s7_s_pb
	mov dword [esp+0x4], 0x1
	mov esi, [ebp+0x8]
	mov [esp], esi
	call _Z20SV_SendServerCommandP8client_t11svscmd_typePKcz
	jmp _Z13SV_DropClientP8client_tPKch_40
	nop


;SV_FreeClient(client_t*)
_Z13SV_FreeClientP8client_t:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0x8]
	mov eax, [edi+0x212dc]
	test eax, eax
	jnz _Z13SV_FreeClientP8client_t_10
_Z13SV_FreeClientP8client_t_50:
	mov dword [edi+0x212dc], 0x0
	mov byte [edi+0x2129c], 0x0
	mov ebx, edi
	mov esi, 0x8
_Z13SV_FreeClientP8client_t_30:
	mov eax, [ebx+0x212f4]
	test eax, eax
	jz _Z13SV_FreeClientP8client_t_20
	mov [esp], eax
	call Z_FreeInternal
	mov dword [ebx+0x212f4], 0x0
_Z13SV_FreeClientP8client_t_20:
	add ebx, 0x4
	sub esi, 0x1
	jnz _Z13SV_FreeClientP8client_t_30
	call _Z9SV_Loadedv
	test al, al
	jnz _Z13SV_FreeClientP8client_t_40
	mov eax, svs
	add eax, 0x46380c
	mov edx, edi
	sub edx, eax
	mov eax, edx
	sar eax, 0x2
	imul ebx, eax, 0x4315b545
	mov dword [esp+0x4], _cstring_null
	mov [esp], ebx
	call _Z14SV_SetUserinfoiPKc
	mov [ebp+0x8], edi
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z21SV_FreeClientScriptIdP8client_t
_Z13SV_FreeClientP8client_t_40:
	mov eax, svs
	add eax, 0x46380c
	mov edx, edi
	sub edx, eax
	mov eax, edx
	sar eax, 0x2
	imul ebx, eax, 0x4315b545
	mov [esp], ebx
	call _Z16ClientDisconnecti
	mov dword [esp+0x4], _cstring_null
	mov [esp], ebx
	call _Z14SV_SetUserinfoiPKc
	mov [ebp+0x8], edi
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z21SV_FreeClientScriptIdP8client_t
_Z13SV_FreeClientP8client_t_10:
	mov [esp], eax
	call _Z13FS_FCloseFilei
	jmp _Z13SV_FreeClientP8client_t_50


;SV_ClientThink(client_t*, usercmd_s*)
_Z14SV_ClientThinkP8client_tP9usercmd_s:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edx, [ebp+0x8]
	mov ecx, [ebp+0xc]
	mov ebx, [ecx]
	mov edi, svs
	mov esi, [edi+0x463804]
	mov eax, ebx
	sub eax, esi
	cmp eax, 0x4e20
	jg _Z14SV_ClientThinkP8client_tP9usercmd_s_10
	mov [edx+0x20e60], ebx
	mov eax, [ecx+0x4]
	mov [edx+0x20e64], eax
	mov eax, [ecx+0x8]
	mov [edx+0x20e68], eax
	mov eax, [ecx+0xc]
	mov [edx+0x20e6c], eax
	mov eax, [ecx+0x10]
	mov [edx+0x20e70], eax
	mov eax, [ecx+0x14]
	mov [edx+0x20e74], eax
	mov eax, [ecx+0x18]
	mov [edx+0x20e78], eax
	mov eax, [ecx+0x1c]
	mov [edx+0x20e7c], eax
	cmp dword [edx], 0x4
	jz _Z14SV_ClientThinkP8client_tP9usercmd_s_20
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z14SV_ClientThinkP8client_tP9usercmd_s_10:
	mov [esp+0xc], esi
	lea eax, [edx+0x21288]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_invalid_command_
	call _Z2vaPKcz
	mov [ebp+0xc], eax
	mov dword [ebp+0x8], 0xf
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z14Com_PrintErroriPKcz
_Z14SV_ClientThinkP8client_tP9usercmd_s_20:
	lea eax, [edi+0x46380c]
	sub edx, eax
	sar edx, 0x2
	imul ebx, edx, 0x4315b545
	mov eax, [ecx]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z19G_SetLastServerTimeii
	mov [ebp+0x8], ebx
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z11ClientThinki


;SV_FreeClients()
_Z14SV_FreeClientsv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edx, sv_maxclients
	mov eax, [edx]
	mov eax, [eax+0xc]
	test eax, eax
	jle _Z14SV_FreeClientsv_10
	xor esi, esi
	mov ebx, svs
	add ebx, 0x46380c
	mov edi, edx
_Z14SV_FreeClientsv_30:
	cmp dword [ebx], 0x1
	jle _Z14SV_FreeClientsv_20
	mov [esp], ebx
	call _Z13SV_FreeClientP8client_t
	mov edx, edi
_Z14SV_FreeClientsv_20:
	add esi, 0x1
	add ebx, 0xa5634
	mov eax, [edx]
	cmp esi, [eax+0xc]
	jl _Z14SV_FreeClientsv_30
_Z14SV_FreeClientsv_10:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;SV_UnbanClient(char const*)
_Z14SV_UnbanClientPKc:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x7c
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_bantxt
	call FS_ReadFile
	mov esi, eax
	test eax, eax
	js _Z14SV_UnbanClientPKc_10
	mov dword [esp+0x8], 0x40
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	lea edx, [ebp-0x60]
	mov [esp], edx
	call _Z10I_strncpyzPcPKci
	lea ecx, [ebp-0x60]
	mov [esp], ecx
	call _Z10I_CleanStrPc
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	lea edi, [ebp-0x60]
	repne scasb
	not ecx
	sub ecx, 0x1
	mov [ebp-0x70], ecx
	mov eax, [ebp-0x1c]
	mov [ebp-0x20], eax
	mov dword [ebp-0x6c], 0x0
_Z14SV_UnbanClientPKc_110:
	mov edi, eax
	lea eax, [ebp-0x20]
	mov [esp], eax
	call _Z9Com_ParsePPKc
	cmp byte [eax], 0x0
	jz _Z14SV_UnbanClientPKc_20
_Z14SV_UnbanClientPKc_70:
	mov edx, [ebp-0x20]
	movzx eax, byte [edx]
	test al, al
	jnz _Z14SV_UnbanClientPKc_30
_Z14SV_UnbanClientPKc_90:
	mov ecx, [ebp-0x70]
	mov [esp+0x8], ecx
	lea eax, [ebp-0x60]
	mov [esp+0x4], eax
	mov [esp], edx
	call _Z10I_strnicmpPKcS0_i
	test eax, eax
	jnz _Z14SV_UnbanClientPKc_40
	mov eax, [ebp-0x20]
	mov edx, [ebp-0x70]
	movzx eax, byte [eax+edx]
	cmp al, 0xd
	jz _Z14SV_UnbanClientPKc_50
	cmp al, 0xa
	jz _Z14SV_UnbanClientPKc_50
_Z14SV_UnbanClientPKc_40:
	xor ebx, ebx
	lea ecx, [ebp-0x20]
	mov [esp], ecx
	call _Z18Com_SkipRestOfLinePPKc
	test bl, bl
	jnz _Z14SV_UnbanClientPKc_60
_Z14SV_UnbanClientPKc_100:
	mov eax, [ebp-0x20]
	mov edi, eax
	lea eax, [ebp-0x20]
	mov [esp], eax
	call _Z9Com_ParsePPKc
	cmp byte [eax], 0x0
	jnz _Z14SV_UnbanClientPKc_70
_Z14SV_UnbanClientPKc_20:
	mov [esp+0x8], esi
	mov eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_bantxt
	call _Z12FS_WriteFilePKcPKvi
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call FS_FreeFile
	mov eax, [ebp-0x6c]
	test eax, eax
	jnz _Z14SV_UnbanClientPKc_80
	lea ecx, [ebp-0x60]
	mov [esp+0x8], ecx
	mov dword [esp+0x4], _cstring_no_banned_user_h
	mov dword [esp], 0xf
	call _Z10Com_PrintfiPKcz
_Z14SV_UnbanClientPKc_10:
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z14SV_UnbanClientPKc_30:
	cmp al, 0x20
	jg _Z14SV_UnbanClientPKc_90
	add edx, 0x1
	mov [ebp-0x20], edx
	movzx eax, byte [edx]
	test al, al
	jnz _Z14SV_UnbanClientPKc_30
	jmp _Z14SV_UnbanClientPKc_90
_Z14SV_UnbanClientPKc_50:
	mov ebx, 0x1
	lea ecx, [ebp-0x20]
	mov [esp], ecx
	call _Z18Com_SkipRestOfLinePPKc
	test bl, bl
	jz _Z14SV_UnbanClientPKc_100
_Z14SV_UnbanClientPKc_60:
	add dword [ebp-0x6c], 0x1
	mov edx, [ebp-0x20]
	mov eax, edx
	sub eax, [ebp-0x1c]
	mov ecx, esi
	sub ecx, eax
	mov eax, ecx
	add eax, 0x1
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov [esp], edi
	call memmove
	mov eax, [ebp-0x20]
	sub eax, edi
	sub esi, eax
	mov eax, edi
	mov [ebp-0x20], edi
	jmp _Z14SV_UnbanClientPKc_110
_Z14SV_UnbanClientPKc_80:
	lea eax, [ebp-0x60]
	mov [esp+0xc], eax
	mov edx, [ebp-0x6c]
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_unbanned_i_users
	mov dword [esp], 0xf
	call _Z10Com_PrintfiPKcz
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;SV_GetChallenge(netadr_t)
_Z15SV_GetChallenge8netadr_t:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xec
	movzx eax, word [ebp+0x10]
	mov [ebp-0xae], ax
	movzx edx, byte [ebp+0xf]
	mov [ebp-0xaf], dl
	movzx ecx, byte [ebp+0xe]
	mov [ebp-0xb0], cl
	movzx ebx, byte [ebp+0xd]
	mov [ebp-0xb1], bl
	movzx eax, byte [ebp+0xc]
	mov [ebp-0xb2], al
	mov edx, [ebp+0x8]
	mov [ebp-0xb8], edx
	mov dword [ebp-0xd0], 0x0
	mov esi, 0x7fffffff
	mov ecx, svs
	add ecx, 0xb212ab8
	mov [ebp-0xcc], ecx
	mov dword [ebp-0xd4], 0x0
	mov ebx, svs
	add ebx, 0xb212ad8
	jmp _Z15SV_GetChallenge8netadr_t_10
_Z15SV_GetChallenge8netadr_t_40:
	mov eax, [ebx-0x10]
	cmp eax, esi
	jge _Z15SV_GetChallenge8netadr_t_20
	mov edx, [ebp-0xd4]
	mov [ebp-0xd0], edx
	mov esi, eax
_Z15SV_GetChallenge8netadr_t_20:
	add dword [ebp-0xd4], 0x1
	add dword [ebp-0xcc], 0x48
	add ebx, 0x48
	cmp dword [ebp-0xd4], 0x400
	jz _Z15SV_GetChallenge8netadr_t_30
_Z15SV_GetChallenge8netadr_t_10:
	mov ecx, [ebx]
	test ecx, ecx
	jnz _Z15SV_GetChallenge8netadr_t_40
	mov ecx, [ebx-0x20]
	mov [ebp-0x24], ecx
	mov edx, [ebx-0x1c]
	mov [ebp-0x20], edx
	mov edi, [ebx-0x18]
	mov [esp+0x14], edi
	mov [ebp-0x1c], edi
	movzx eax, word [ebp-0xae]
	mov [ebp-0x88], ax
	movzx eax, byte [ebp-0xaf]
	mov [ebp-0x89], al
	movzx eax, byte [ebp-0xb0]
	mov [ebp-0x8a], al
	movzx eax, byte [ebp-0xb1]
	mov [ebp-0x8b], al
	movzx eax, byte [ebp-0xb2]
	mov [ebp-0x8c], al
	mov edi, [ebp-0xb8]
	mov [ebp-0x90], edi
	mov [esp+0xc], ecx
	mov [esp+0x10], edx
	mov [esp], edi
	mov eax, [ebp-0x8c]
	mov [esp+0x4], eax
	mov eax, [ebp-0x88]
	mov [esp+0x8], eax
	call _Z14NET_CompareAdr8netadr_tS_
	test eax, eax
	jz _Z15SV_GetChallenge8netadr_t_40
_Z15SV_GetChallenge8netadr_t_250:
	mov eax, sv_cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x2
	jg _Z15SV_GetChallenge8netadr_t_50
	mov dword [ebp-0xc8], _cstring_null
	mov eax, [ebp-0xc8]
	call _Z15SV_IsBannedGuidPKc
	test eax, eax
	jnz _Z15SV_GetChallenge8netadr_t_60
_Z15SV_GetChallenge8netadr_t_140:
	mov ecx, [ebp-0xc8]
	cmp byte [ecx], 0x0
	jz _Z15SV_GetChallenge8netadr_t_70
	mov ebx, svs
	mov ebx, [ebx+0x463804]
	mov [ebp-0xc4], ebx
	mov eax, sv_kickBanTime
	mov eax, [eax]
	mov [ebp-0xc0], eax
	mov dword [ebp-0xbc], 0x0
	mov esi, svs
	add esi, 0xb2250d4
	mov [ebp-0xac], esi
	mov edi, svs
	mov [ebp-0xd8], edi
	cld
	movss xmm2, dword [_float_1000_00000000]
	mov ebx, edi
	add ebx, 0xb2250b4
_Z15SV_GetChallenge8netadr_t_110:
	mov ecx, 0x20
	mov esi, ebx
	mov edi, [ebp-0xc8]
	repe cmpsb
	mov eax, 0x0
	jz _Z15SV_GetChallenge8netadr_t_80
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
_Z15SV_GetChallenge8netadr_t_80:
	test eax, eax
	jnz _Z15SV_GetChallenge8netadr_t_90
	mov eax, [ebp-0xc4]
	mov edx, [ebp-0xac]
	sub eax, [edx]
	cvtsi2ss xmm1, eax
	mov ecx, [ebp-0xc0]
	movss xmm0, dword [ecx+0xc]
	mulss xmm0, xmm2
	ucomiss xmm1, xmm0
	jbe _Z15SV_GetChallenge8netadr_t_100
_Z15SV_GetChallenge8netadr_t_90:
	add dword [ebp-0xbc], 0x1
	add ebx, 0x24
	add dword [ebp-0xac], 0x24
	cmp dword [ebp-0xbc], 0x10
	jnz _Z15SV_GetChallenge8netadr_t_110
_Z15SV_GetChallenge8netadr_t_70:
	mov dword [esp+0x8], 0x21
	mov ebx, [ebp-0xc8]
	mov [esp+0x4], ebx
	mov esi, [ebp-0xd4]
	lea eax, [esi+esi*8]
	mov edi, svs
	lea eax, [edi+eax*8+svs+0x976665c]
	mov [esp], eax
	call _Z10I_strncpyzPcPKci
	mov eax, net_lanauthorize
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z15SV_GetChallenge8netadr_t_120
	mov eax, com_dedicated
	mov eax, [eax]
	cmp dword [eax+0xc], 0x2
	jz _Z15SV_GetChallenge8netadr_t_130
	movzx ecx, word [ebp-0xae]
	mov [ebp-0x94], cx
	movzx ebx, byte [ebp-0xaf]
	mov [ebp-0x95], bl
	movzx eax, byte [ebp-0xb0]
	mov [ebp-0x96], al
	movzx edx, byte [ebp-0xb1]
	mov [ebp-0x97], dl
	movzx ecx, byte [ebp-0xb2]
	mov [ebp-0x98], cl
	mov ebx, [ebp-0xb8]
	mov [ebp-0x9c], ebx
	mov [esp], ebx
	mov eax, [ebp-0x98]
	mov [esp+0x4], eax
	mov eax, [ebp-0x94]
	mov [esp+0x8], eax
	call _Z16Sys_IsLANAddress8netadr_t
	test eax, eax
	setz al
	movzx eax, al
_Z15SV_GetChallenge8netadr_t_240:
	test eax, eax
	nop
	nop
	nop
	nop
	nop
	nop
	mov eax, svs
	mov eax, [eax+0x463804]
	mov esi, [ebp-0xcc]
	mov [esi+0x14], eax
	mov eax, [esi+0xc]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_challengerespons
	call _Z2vaPKcz
	movzx edi, word [ebp-0xae]
	mov [ebp-0x64], di
	movzx edx, byte [ebp-0xaf]
	mov [ebp-0x65], dl
	movzx ecx, byte [ebp-0xb0]
	mov [ebp-0x66], cl
	movzx ebx, byte [ebp-0xb1]
	mov [ebp-0x67], bl
	movzx edx, byte [ebp-0xb2]
	mov [ebp-0x68], dl
	mov ecx, [ebp-0xb8]
	mov [ebp-0x6c], ecx
	mov [esp+0x10], eax
	mov [esp+0x4], ecx
	mov eax, [ebp-0x68]
	mov [esp+0x8], eax
	mov eax, [ebp-0x64]
	mov [esp+0xc], eax
	mov dword [esp], 0x1
	call _Z18NET_OutOfBandPrint8netsrc_t8netadr_tPKc
	add esp, 0xec
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z15SV_GetChallenge8netadr_t_50:
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x8]
	mov [ebp-0xc8], eax
	call _Z15SV_IsBannedGuidPKc
	test eax, eax
	jz _Z15SV_GetChallenge8netadr_t_140
_Z15SV_GetChallenge8netadr_t_60:
	mov eax, [ebp-0xc8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_rejected_connect
	mov dword [esp], 0xf
	call _Z10Com_PrintfiPKcz
	mov esi, svs
	mov edx, [ebp-0xd4]
	lea ebx, [edx+edx*8]
	shl ebx, 0x3
	lea eax, [ebx+esi+svs+0x9766600]
	mov ecx, [eax+0x38]
	mov [ebp-0x84], ecx
	mov edx, [eax+0x3c]
	mov [ebp-0x80], edx
	mov eax, [eax+0x40]
	mov [ebp-0x7c], eax
	mov dword [esp+0x10], _cstring_erroryou_are_per
	mov [esp+0x4], ecx
	mov [esp+0x8], edx
	mov [esp+0xc], eax
	mov dword [esp], 0x1
	call _Z18NET_OutOfBandPrint8netsrc_t8netadr_tPKc
	lea ebx, [ebx+esi+svs+0x9766638]
	mov dword [esp+0x8], 0x48
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call memset
_Z15SV_GetChallenge8netadr_t_230:
	add esp, 0xec
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z15SV_GetChallenge8netadr_t_120:
	mov ebx, svs
	cmp byte [ebx+svs+0x9778648], 0x0
	jnz _Z15SV_GetChallenge8netadr_t_150
	cmp dword [ebx+svs+0x9778644], 0x1
	jz _Z15SV_GetChallenge8netadr_t_160
	mov dword [esp+0x8], _cstring_cod4masteractivi
	mov dword [esp+0x4], _cstring_resolving_s
	mov dword [esp], 0xf
	call _Z10Com_PrintfiPKcz
	mov eax, ebx
	add eax, 0xb224ac4
	mov [esp+0x4], eax
	mov dword [esp], _cstring_cod4masteractivi
	call _Z15NET_StringToAdrPKcP8netadr_t
	test eax, eax
	jnz _Z15SV_GetChallenge8netadr_t_170
	mov dword [ebp+0xc], _cstring_couldnt_resolve_
	mov dword [ebp+0x8], 0xf
	add esp, 0xec
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z10Com_PrintfiPKcz
_Z15SV_GetChallenge8netadr_t_150:
	mov edi, ebx
_Z15SV_GetChallenge8netadr_t_260:
	mov edx, [edi+0x463804]
	mov eax, edx
	sub eax, [edi+svs+0x9778650]
	cmp eax, 0x124f80
	jle _Z15SV_GetChallenge8netadr_t_180
_Z15SV_GetChallenge8netadr_t_200:
	mov eax, [ebp-0xcc]
	sub edx, [eax+0x18]
	cmp edx, 0x1b58
	jg _Z15SV_GetChallenge8netadr_t_190
_Z15SV_GetChallenge8netadr_t_220:
	mov edx, svs
_Z15SV_GetChallenge8netadr_t_210:
	mov edi, [ebp-0xd4]
	lea eax, [edi+edi*8]
	mov eax, [edx+eax*8+svs+0x9766644]
	movzx ecx, word [ebp-0xae]
	mov [ebp-0x34], cx
	movzx ebx, byte [ebp-0xaf]
	mov [ebp-0x35], bl
	movzx edx, byte [ebp-0xb0]
	mov [ebp-0x36], dl
	movzx ecx, byte [ebp-0xb1]
	mov [ebp-0x37], cl
	movzx ebx, byte [ebp-0xb2]
	mov [ebp-0x38], bl
	mov esi, [ebp-0xb8]
	mov [ebp-0x3c], esi
	mov edi, [ebp-0xc8]
	mov [esp+0x10], edi
	mov [esp+0xc], eax
	mov [esp], esi
	mov eax, [ebp-0x38]
	mov [esp+0x4], eax
	mov eax, [ebp-0x34]
	mov [esp+0x8], eax
	call _Z19SV_AuthorizeRequest8netadr_tiPKc
	add esp, 0xec
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z15SV_GetChallenge8netadr_t_160:
	mov edi, svs
	mov edx, [edi+0x463804]
	mov eax, edx
	sub eax, [edi+svs+0x9778650]
	cmp eax, 0x124f80
	jg _Z15SV_GetChallenge8netadr_t_200
_Z15SV_GetChallenge8netadr_t_180:
	mov edx, edi
	jmp _Z15SV_GetChallenge8netadr_t_210
_Z15SV_GetChallenge8netadr_t_190:
	call _Z16SV_MasterAddressv
	mov edx, [eax]
	mov [ebp-0x60], edx
	mov ecx, [eax+0x4]
	mov [ebp-0x5c], ecx
	mov eax, [eax+0x8]
	mov [ebp-0x58], eax
	movzx ebx, word [ebp-0xae]
	mov [ebp-0x4c], bx
	movzx ebx, byte [ebp-0xaf]
	mov [ebp-0x4d], bl
	movzx ebx, byte [ebp-0xb0]
	mov [ebp-0x4e], bl
	movzx ebx, byte [ebp-0xb1]
	mov [ebp-0x4f], bl
	movzx ebx, byte [ebp-0xb2]
	mov [ebp-0x50], bl
	mov esi, [ebp-0xb8]
	mov [ebp-0x54], esi
	mov [esp+0xc], edx
	mov [esp+0x10], ecx
	mov [esp+0x14], eax
	mov [esp], esi
	mov eax, [ebp-0x50]
	mov [esp+0x4], eax
	mov eax, [ebp-0x4c]
	mov [esp+0x8], eax
	call _Z14NET_CompareAdr8netadr_tS_
	test eax, eax
	jnz _Z15SV_GetChallenge8netadr_t_220
	mov dword [esp+0x4], _cstring_authorize_server
	mov dword [esp], 0xf
	call _Z11Com_DPrintfiPKcz
	mov edx, svs
	mov eax, [edx+0x463804]
	mov ecx, [ebp-0xcc]
	mov [ecx+0x14], eax
	mov eax, [ecx+0xc]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_challengerespons
	call _Z2vaPKcz
	mov ebx, [ebp-0xcc]
	mov ecx, [ebx]
	mov [ebp-0x48], ecx
	mov esi, ebx
	mov ebx, [ebx+0x4]
	mov [ebp-0x44], ebx
	mov edx, [esi+0x8]
	mov [ebp-0x40], edx
	mov [esp+0x10], eax
	mov [esp+0x4], ecx
	mov [esp+0x8], ebx
	mov [esp+0xc], edx
	mov dword [esp], 0x1
	call _Z18NET_OutOfBandPrint8netsrc_t8netadr_tPKc
	jmp _Z15SV_GetChallenge8netadr_t_230
_Z15SV_GetChallenge8netadr_t_100:
	mov edi, [ebp-0xc8]
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_rejected_connect1
	mov dword [esp], 0xf
	call _Z10Com_PrintfiPKcz
	mov eax, [ebp-0xd4]
	lea ebx, [eax+eax*8]
	shl ebx, 0x3
	mov edx, [ebp-0xd8]
	lea eax, [ebx+edx+svs+0x9766600]
	mov edx, [eax+0x38]
	mov [ebp-0x78], edx
	mov ecx, [eax+0x3c]
	mov [ebp-0x74], ecx
	mov eax, [eax+0x40]
	mov [ebp-0x70], eax
	mov dword [esp+0x10], _cstring_erroryou_are_tem
	mov [esp+0x4], edx
	mov [esp+0x8], ecx
	mov [esp+0xc], eax
	mov dword [esp], 0x1
	call _Z18NET_OutOfBandPrint8netsrc_t8netadr_tPKc
	mov ecx, [ebp-0xd8]
	lea ebx, [ebx+ecx+svs+0x9766638]
	mov dword [esp+0x8], 0x48
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call memset
	add esp, 0xec
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z15SV_GetChallenge8netadr_t_130:
	movzx eax, word [ebp-0xae]
	mov [ebp-0x28], ax
	movzx edx, byte [ebp-0xaf]
	mov [ebp-0x29], dl
	movzx ecx, byte [ebp-0xb0]
	mov [ebp-0x2a], cl
	movzx ebx, byte [ebp-0xb1]
	mov [ebp-0x2b], bl
	movzx eax, byte [ebp-0xb2]
	mov [ebp-0x2c], al
	mov edx, [ebp-0xb8]
	mov [ebp-0x30], edx
	mov [esp], edx
	mov eax, [ebp-0x2c]
	mov [esp+0x4], eax
	mov eax, [ebp-0x28]
	mov [esp+0x8], eax
	call _Z29Sys_IsLANAddress_IgnoreSubnet8netadr_t
	test eax, eax
	setz al
	movzx eax, al
	jmp _Z15SV_GetChallenge8netadr_t_240
_Z15SV_GetChallenge8netadr_t_30:
	mov ecx, [ebp-0xd0]
	lea esi, [ecx+ecx*8]
	mov edi, svs
	lea esi, [edi+esi*8+svs+0x9766600]
	lea ebx, [esi+0x38]
	mov [ebp-0xcc], ebx
	call _Z7ms_randv
	mov ebx, eax
	call _Z7ms_randv
	shl ebx, 0x10
	xor ebx, eax
	xor ebx, [edi+0x463804]
	mov eax, [ebp-0xcc]
	mov [eax+0xc], ebx
	movzx edx, word [ebp-0xae]
	mov [eax+0x8], dx
	movzx ecx, byte [ebp-0xaf]
	mov [eax+0x7], cl
	movzx ebx, byte [ebp-0xb0]
	mov [eax+0x6], bl
	movzx edx, byte [ebp-0xb1]
	mov [eax+0x5], dl
	movzx ecx, byte [ebp-0xb2]
	mov [eax+0x4], cl
	mov ebx, [ebp-0xb8]
	mov [esi+0x38], ebx
	mov eax, [edi+0x463804]
	mov esi, [ebp-0xcc]
	mov [esi+0x18], eax
	mov dword [esi+0x1c], 0x0
	mov eax, [edi+0x463804]
	mov [esi+0x10], eax
	mov dword [esi+0x20], 0x0
	mov edi, [ebp-0xd0]
	mov [ebp-0xd4], edi
	jmp _Z15SV_GetChallenge8netadr_t_250
_Z15SV_GetChallenge8netadr_t_170:
	mov dword [esp], 0x5140
	call _Z8BigShorts
	mov esi, svs
	mov [esi+svs+0x977864c], ax
	cwde
	mov [esp], eax
	call _Z8BigShorts
	cwde
	mov [esp+0x1c], eax
	movzx eax, byte [esi+svs+0x977864b]
	mov [esp+0x18], eax
	movzx eax, byte [esi+svs+0x977864a]
	mov [esp+0x14], eax
	movzx eax, byte [esi+svs+0x9778649]
	mov [esp+0x10], eax
	movzx eax, byte [esi+svs+0x9778648]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_cod4masteractivi
	mov dword [esp+0x4], _cstring_s_resolved_to_ii
	mov dword [esp], 0xf
	call _Z10Com_PrintfiPKcz
	mov edi, svs
	jmp _Z15SV_GetChallenge8netadr_t_260


;SV_ReceiveStats(netadr_t, msg_t*)
_Z15SV_ReceiveStats8netadr_tP5msg_t:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov edi, [ebp+0x14]
	movzx eax, word [ebp+0x10]
	mov [ebp-0x3a], ax
	mov edx, [ebp+0x8]
	mov [ebp-0x40], edx
	movzx ecx, byte [ebp+0xc]
	mov [ebp-0x44], cl
	movzx eax, byte [ebp+0xd]
	mov [ebp-0x43], al
	movzx edx, byte [ebp+0xe]
	mov [ebp-0x42], dl
	movzx ecx, byte [ebp+0xf]
	mov [ebp-0x41], cl
	mov [esp], edi
	call _Z13MSG_ReadShortP5msg_t
	movzx edx, word [ebp-0x3a]
	mov [ebp-0x28], dx
	mov ecx, [ebp-0x40]
	mov [ebp-0x30], ecx
	movzx edx, byte [ebp-0x44]
	mov [ebp-0x2c], dl
	movzx ecx, byte [ebp-0x43]
	mov [ebp-0x2b], cl
	movzx edx, byte [ebp-0x42]
	mov [ebp-0x2a], dl
	movzx ecx, byte [ebp-0x41]
	mov [ebp-0x29], cl
	mov [esp+0xc], eax
	mov eax, [ebp-0x40]
	mov [esp], eax
	mov eax, [ebp-0x2c]
	mov [esp+0x4], eax
	mov eax, [ebp-0x28]
	mov [esp+0x8], eax
	call _Z22SV_FindClientByAddress8netadr_ti
	mov esi, eax
	test eax, eax
	jz _Z15SV_ReceiveStats8netadr_tP5msg_t_10
	mov [esp], edi
	call _Z12MSG_ReadByteP5msg_t
	mov ebx, eax
	cmp eax, 0x6
	ja _Z15SV_ReceiveStats8netadr_tP5msg_t_20
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_received_packet_
	mov dword [esp], 0xf
	call _Z10Com_PrintfiPKcz
	lea eax, [ebx+ebx*4]
	mov edx, eax
	shl edx, 0x5
	sub edx, eax
	shl edx, 0x3
	mov eax, 0x2000
	sub eax, edx
	cmp eax, 0x4d9
	mov ecx, 0x4d8
	cmovge eax, ecx
	mov [esp+0x8], eax
	lea edx, [edx+esi+0xa3631]
	mov [esp+0x4], edx
	mov [esp], edi
	call _Z12MSG_ReadDataP5msg_tPvi
	mov eax, 0x1
	mov ecx, ebx
	shl eax, cl
	or al, [esi+0xa5631]
	mov [esi+0xa5631], al
	mov edx, svs
	mov edx, [edx+0x463804]
	mov [esi+0x21454], edx
	not eax
	and eax, 0x7f
	mov [esp+0x4], eax
	mov dword [esp], _cstring_statresponse_i
	call _Z2vaPKcz
	movzx edx, word [ebp-0x3a]
	mov [ebp-0x1c], dx
	mov ecx, [ebp-0x40]
	mov [ebp-0x24], ecx
	movzx edx, byte [ebp-0x44]
	mov [ebp-0x20], dl
	movzx ecx, byte [ebp-0x43]
	mov [ebp-0x1f], cl
	movzx edx, byte [ebp-0x42]
	mov [ebp-0x1e], dl
	movzx ecx, byte [ebp-0x41]
	mov [ebp-0x1d], cl
	mov [esp+0x10], eax
	mov eax, [ebp-0x40]
	mov [esp+0x4], eax
	mov eax, [ebp-0x20]
	mov [esp+0x8], eax
	mov eax, [ebp-0x1c]
	mov [esp+0xc], eax
	mov dword [esp], 0x1
	call _Z18NET_OutOfBandPrint8netsrc_t8netadr_tPKc
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z15SV_ReceiveStats8netadr_tP5msg_t_20:
	mov [ebp+0x10], eax
	mov dword [ebp+0xc], _cstring_invalid_stat_pac
	mov dword [ebp+0x8], 0xf
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z16Com_PrintWarningiPKcz
_Z15SV_ReceiveStats8netadr_tP5msg_t_10:
	movzx eax, byte [ebp-0x41]
	mov [esp+0x14], eax
	movzx eax, byte [ebp-0x42]
	mov [esp+0x10], eax
	movzx eax, byte [ebp-0x43]
	mov [esp+0xc], eax
	movzx eax, byte [ebp-0x44]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_received_stats_p
	mov dword [esp], 0xf
	call _Z16Com_PrintWarningiPKcz
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;SV_AddTestClient()
_Z16SV_AddTestClientv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x48c
	mov eax, sv_maxclients
	mov eax, [eax]
	mov ebx, [eax+0xc]
	cmp ebx, 0x0
	jg _Z16SV_AddTestClientv_10
	jnz _Z16SV_AddTestClientv_20
_Z16SV_AddTestClientv_90:
	xor eax, eax
	add esp, 0x48c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z16SV_AddTestClientv_10:
	mov eax, svs
	mov esi, [eax+0x46380c]
	test esi, esi
	jnz _Z16SV_AddTestClientv_30
_Z16SV_AddTestClientv_20:
	movzx edx, word [_ZZ16SV_AddTestClientvE7botport]
	lea eax, [edx+0x1]
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x6
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_connect_cg_predi
	lea ebx, [ebp-0x468]
	mov [esp], ebx
	call sprintf
	mov [esp], ebx
	call _Z21SV_Cmd_TokenizeStringPKc
	mov dword [ebp-0x44], 0x0
	mov dword [ebp-0x40], 0x0
	mov dword [ebp-0x48], 0x0
	movzx eax, word [_ZZ16SV_AddTestClientvE7botport]
	mov [ebp-0x40], ax
	add eax, 0x1
	mov [_ZZ16SV_AddTestClientvE7botport], ax
	mov dword [ebp-0x3c], 0x0
	mov dword [ebp-0x38], 0x0
	mov eax, [ebp-0x40]
	mov [ebp-0x34], eax
	mov dword [esp], 0x0
	mov dword [esp+0x4], 0x0
	mov [esp+0x8], eax
	call _Z16SV_DirectConnect8netadr_t
	call _Z25SV_Cmd_EndTokenizedStringv
	mov edx, sv_maxclients
	mov eax, [edx]
	mov eax, [eax+0xc]
	test eax, eax
	jle _Z16SV_AddTestClientv_40
	mov dword [ebp-0x46c], 0x0
	mov eax, svs
	add eax, 0x46380c
	mov [ebp-0x470], eax
	mov [ebp-0x474], eax
	mov [ebp-0x478], edx
	mov ecx, eax
	jmp _Z16SV_AddTestClientv_50
_Z16SV_AddTestClientv_70:
	add dword [ebp-0x46c], 0x1
	add dword [ebp-0x470], 0xa5634
	add dword [ebp-0x474], 0xa5634
	mov eax, [edx]
	mov edi, [ebp-0x46c]
	cmp edi, [eax+0xc]
	jge _Z16SV_AddTestClientv_60
	mov ecx, [ebp-0x474]
_Z16SV_AddTestClientv_50:
	mov edi, [ecx]
	test edi, edi
	jz _Z16SV_AddTestClientv_70
	mov edi, [ecx+0x20]
	mov [ebp-0x30], edi
	mov esi, [ecx+0x24]
	mov [ebp-0x2c], esi
	mov ebx, [ecx+0x28]
	mov [ebp-0x28], ebx
	mov ecx, [ebp-0x48]
	mov [ebp-0x24], ecx
	mov edx, [ebp-0x44]
	mov [ebp-0x20], edx
	mov eax, [ebp-0x40]
	mov [ebp-0x1c], eax
	mov [esp+0xc], edi
	mov [esp+0x10], esi
	mov [esp+0x14], ebx
	mov [esp], ecx
	mov [esp+0x4], edx
	mov [esp+0x8], eax
	call _Z18NET_CompareBaseAdr8netadr_tS_
	test eax, eax
	jnz _Z16SV_AddTestClientv_80
	mov edx, [ebp-0x478]
	jmp _Z16SV_AddTestClientv_70
_Z16SV_AddTestClientv_40:
	mov dword [ebp-0x46c], 0x0
	mov eax, svs
	add eax, 0x46380c
	mov [ebp-0x470], eax
	mov eax, [edx]
	mov edx, [ebp-0x46c]
_Z16SV_AddTestClientv_110:
	cmp [eax+0xc], edx
	jz _Z16SV_AddTestClientv_90
	mov ecx, [ebp-0x470]
	mov dword [ecx+0xa0d1c], 0x1
	mov [esp], ecx
	call _Z22SV_SendClientGameStateP8client_t
	lea edx, [ebp-0x68]
	cld
	mov ecx, 0x8
	xor eax, eax
	mov edi, edx
	rep stosd
	mov [esp+0x4], edx
	mov eax, [ebp-0x470]
	mov [esp], eax
	call _Z19SV_ClientEnterWorldP8client_tP9usercmd_s
	mov edx, [ebp-0x46c]
	mov [esp], edx
	call _Z13SV_GentityNumi
	add esp, 0x48c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z16SV_AddTestClientv_30:
	lea ecx, [eax+g_WeaponDefPool+0x3b720]
	xor edx, edx
_Z16SV_AddTestClientv_100:
	add edx, 0x1
	cmp edx, ebx
	jz _Z16SV_AddTestClientv_90
	mov eax, [ecx]
	add ecx, 0xa5634
	test eax, eax
	jnz _Z16SV_AddTestClientv_100
	jmp _Z16SV_AddTestClientv_20
_Z16SV_AddTestClientv_60:
	mov edx, edi
	jmp _Z16SV_AddTestClientv_110
_Z16SV_AddTestClientv_80:
	mov edx, sv_maxclients
	mov eax, [edx]
	mov edx, [ebp-0x46c]
	jmp _Z16SV_AddTestClientv_110


;SV_DirectConnect(netadr_t)
_Z16SV_DirectConnect8netadr_t:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x59c
	movzx eax, byte [ebp+0xf]
	mov [ebp-0x54d], al
	movzx edx, byte [ebp+0xe]
	mov [ebp-0x54e], dl
	movzx eax, byte [ebp+0xd]
	mov [ebp-0x54f], al
	movzx edx, byte [ebp+0xc]
	mov [ebp-0x550], dl
	mov eax, [ebp+0x8]
	mov [ebp-0x554], eax
	movzx edx, word [ebp+0x10]
	mov [ebp-0x556], dx
	mov dword [esp+0x4], _cstring_sv_directconnect
	mov dword [esp], 0xf
	call _Z11Com_DPrintfiPKcz
	mov eax, sv_cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x1
	jle _Z16SV_DirectConnect8netadr_t_10
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x4]
_Z16SV_DirectConnect8netadr_t_170:
	mov dword [esp+0x8], 0x400
	mov [esp+0x4], eax
	lea eax, [ebp-0x541]
	mov [esp], eax
	call _Z10I_strncpyzPcPKci
	mov dword [esp+0x4], _cstring_protocol
	lea edx, [ebp-0x541]
	mov [esp], edx
	call _Z16Info_ValueForKeyPKcS0_
	mov [esp], eax
	call atoi
	mov ebx, eax
	cmp eax, 0x6
	jz _Z16SV_DirectConnect8netadr_t_20
	mov dword [esp+0x4], _cstring_17
	mov dword [esp], _cstring_errorexe_server_
	call _Z2vaPKcz
	movzx edx, byte [ebp-0x54d]
	mov [ebp-0x119], dl
	movzx edx, byte [ebp-0x54e]
	mov [ebp-0x11a], dl
	movzx edx, byte [ebp-0x54f]
	mov [ebp-0x11b], dl
	movzx edx, byte [ebp-0x550]
	mov [ebp-0x11c], dl
	mov edx, [ebp-0x554]
	mov [ebp-0x120], edx
	movzx edx, word [ebp-0x556]
	mov [ebp-0x118], dx
	mov [esp+0x10], eax
	mov eax, [ebp-0x554]
	mov [esp+0x4], eax
	mov eax, [ebp-0x11c]
	mov [esp+0x8], eax
	mov eax, [ebp-0x118]
	mov [esp+0xc], eax
	mov dword [esp], 0x1
	call _Z18NET_OutOfBandPrint8netsrc_t8netadr_tPKc
	mov dword [esp+0xc], 0x6
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_____rejected_con
	mov dword [esp], 0xf
	call _Z11Com_DPrintfiPKcz
_Z16SV_DirectConnect8netadr_t_130:
	add esp, 0x59c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z16SV_DirectConnect8netadr_t_20:
	mov dword [esp+0x4], _cstring_challenge
	lea edx, [ebp-0x541]
	mov [esp], edx
	call _Z16Info_ValueForKeyPKcS0_
	mov [esp], eax
	call atoi
	mov [ebp-0x564], eax
	mov dword [esp+0x4], _cstring_qport
	lea eax, [ebp-0x541]
	mov [esp], eax
	call _Z16Info_ValueForKeyPKcS0_
	mov [esp], eax
	call atoi
	mov [ebp-0x55c], eax
	mov eax, sv_maxclients
	mov eax, [eax]
	mov ebx, [eax+0xc]
	test ebx, ebx
	jle _Z16SV_DirectConnect8netadr_t_30
	xor esi, esi
	mov edi, svs
	add edi, 0x46380c
	mov ebx, svs
	add ebx, 0x46382c
_Z16SV_DirectConnect8netadr_t_60:
	mov ecx, [ebx]
	mov [ebp-0x114], ecx
	mov edx, [ebx+0x4]
	mov [ebp-0x110], edx
	mov eax, [ebx+0x8]
	mov [esp+0x14], eax
	mov [ebp-0x10c], eax
	movzx eax, byte [ebp-0x54d]
	mov [ebp-0x101], al
	movzx eax, byte [ebp-0x54e]
	mov [ebp-0x102], al
	movzx eax, byte [ebp-0x54f]
	mov [ebp-0x103], al
	movzx eax, byte [ebp-0x550]
	mov [ebp-0x104], al
	mov eax, [ebp-0x554]
	mov [ebp-0x108], eax
	movzx eax, word [ebp-0x556]
	mov [ebp-0x100], ax
	mov [esp+0xc], ecx
	mov [esp+0x10], edx
	mov edx, [ebp-0x554]
	mov [esp], edx
	mov eax, [ebp-0x104]
	mov [esp+0x4], eax
	mov eax, [ebp-0x100]
	mov [esp+0x8], eax
	call _Z18NET_CompareBaseAdr8netadr_tS_
	test eax, eax
	jz _Z16SV_DirectConnect8netadr_t_40
	mov eax, [ebp-0x55c]
	cmp eax, [ebx+0xc]
	jz _Z16SV_DirectConnect8netadr_t_50
	movzx edx, word [ebp-0x556]
	cmp [ebx+0x8], dx
	jz _Z16SV_DirectConnect8netadr_t_50
_Z16SV_DirectConnect8netadr_t_40:
	add esi, 0x1
	add edi, 0xa5634
	add ebx, 0xa5634
	mov eax, sv_maxclients
	mov eax, [eax]
	cmp esi, [eax+0xc]
	jl _Z16SV_DirectConnect8netadr_t_60
_Z16SV_DirectConnect8netadr_t_30:
	mov byte [ebp-0x141], 0x0
	movzx eax, byte [ebp-0x54d]
	mov [ebp-0xe9], al
	movzx edx, byte [ebp-0x54e]
	mov [ebp-0xea], dl
	movzx eax, byte [ebp-0x54f]
	mov [ebp-0xeb], al
	movzx edx, byte [ebp-0x550]
	mov [ebp-0xec], dl
	mov eax, [ebp-0x554]
	mov [ebp-0xf0], eax
	movzx edx, word [ebp-0x556]
	mov [ebp-0xe8], dx
	mov [esp], eax
	mov eax, [ebp-0xec]
	mov [esp+0x4], eax
	mov eax, [ebp-0xe8]
	mov [esp+0x8], eax
	call _Z18NET_IsLocalAddress8netadr_t
	test eax, eax
	jnz _Z16SV_DirectConnect8netadr_t_70
	xor edi, edi
	mov ebx, svs
	add ebx, svs+0x9766638
	mov eax, svs
	mov [ebp-0x570], eax
	xor esi, esi
	jmp _Z16SV_DirectConnect8netadr_t_80
_Z16SV_DirectConnect8netadr_t_100:
	add edi, 0x1
	add esi, 0x48
	add ebx, 0x48
	cmp edi, 0x400
	jz _Z16SV_DirectConnect8netadr_t_90
_Z16SV_DirectConnect8netadr_t_80:
	mov ecx, [ebx]
	mov [ebp-0xe4], ecx
	mov edx, [ebx+0x4]
	mov [ebp-0xe0], edx
	mov eax, [ebx+0x8]
	mov [esp+0x14], eax
	mov [ebp-0xdc], eax
	movzx eax, byte [ebp-0x54d]
	mov [ebp-0xd1], al
	movzx eax, byte [ebp-0x54e]
	mov [ebp-0xd2], al
	movzx eax, byte [ebp-0x54f]
	mov [ebp-0xd3], al
	movzx eax, byte [ebp-0x550]
	mov [ebp-0xd4], al
	mov eax, [ebp-0x554]
	mov [ebp-0xd8], eax
	movzx eax, word [ebp-0x556]
	mov [ebp-0xd0], ax
	mov [esp+0xc], ecx
	mov [esp+0x10], edx
	mov edx, [ebp-0x554]
	mov [esp], edx
	mov eax, [ebp-0xd4]
	mov [esp+0x4], eax
	mov eax, [ebp-0xd0]
	mov [esp+0x8], eax
	call _Z14NET_CompareAdr8netadr_tS_
	test eax, eax
	jz _Z16SV_DirectConnect8netadr_t_100
	mov eax, [ebp-0x564]
	cmp eax, [ebx+0xc]
	jnz _Z16SV_DirectConnect8netadr_t_100
	mov ecx, [ebp-0x570]
	lea eax, [esi+ecx+svs+0x9766620]
	lea edx, [eax+0x3c]
	mov eax, [eax+0x3c]
	mov [ebp-0x141], eax
	mov eax, [edx+0x4]
	mov [ebp-0x13d], eax
	mov eax, [edx+0x8]
	mov [ebp-0x139], eax
	mov eax, [edx+0xc]
	mov [ebp-0x135], eax
	mov eax, [edx+0x10]
	mov [ebp-0x131], eax
	mov eax, [edx+0x14]
	mov [ebp-0x12d], eax
	mov eax, [edx+0x18]
	mov [ebp-0x129], eax
	mov eax, [edx+0x1c]
	mov [ebp-0x125], eax
	movzx eax, byte [edx+0x20]
	mov [ebp-0x121], al
	lea eax, [esi+ecx+svs+0x9766610]
	mov ebx, [eax+0x44]
	test ebx, ebx
	jnz _Z16SV_DirectConnect8netadr_t_110
	mov ebx, [ecx+0x463804]
	sub ebx, [eax+0x3c]
	mov [eax+0x44], ebx
_Z16SV_DirectConnect8netadr_t_110:
	movzx eax, byte [ebp-0x54d]
	mov [ebp-0xb9], al
	movzx edx, byte [ebp-0x54e]
	mov [ebp-0xba], dl
	movzx eax, byte [ebp-0x54f]
	mov [ebp-0xbb], al
	movzx edx, byte [ebp-0x550]
	mov [ebp-0xbc], dl
	mov eax, [ebp-0x554]
	mov [ebp-0xc0], eax
	movzx edx, word [ebp-0x556]
	mov [ebp-0xb8], dx
	mov [esp], eax
	mov eax, [ebp-0xbc]
	mov [esp+0x4], eax
	mov eax, [ebp-0xb8]
	mov [esp+0x8], eax
	call _Z15NET_AdrToString8netadr_t
	mov [esp+0x10], eax
	mov [esp+0xc], ebx
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_client_i_connect
	mov dword [esp], 0xf
	call _Z10Com_PrintfiPKcz
	lea eax, [edi+edi*8]
	shl eax, 0x3
	add eax, svs
	mov dword [eax+svs+0x9766658], 0x1
	movzx eax, byte [ebp-0x54d]
	mov [ebp-0xad], al
	movzx edx, byte [ebp-0x54e]
	mov [ebp-0xae], dl
	movzx eax, byte [ebp-0x54f]
	mov [ebp-0xaf], al
	movzx edx, byte [ebp-0x550]
	mov [ebp-0xb0], dl
	mov eax, [ebp-0x554]
	mov [ebp-0xb4], eax
	movzx edx, word [ebp-0x556]
	mov [ebp-0xac], dx
	mov [esp], eax
	mov eax, [ebp-0xb0]
	mov [esp+0x4], eax
	mov eax, [ebp-0xac]
	mov [esp+0x8], eax
	call _Z16Sys_IsLANAddress8netadr_t
	test eax, eax
	jnz _Z16SV_DirectConnect8netadr_t_70
	mov eax, sv_minPing
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	jz _Z16SV_DirectConnect8netadr_t_120
	cmp ebx, eax
	jge _Z16SV_DirectConnect8netadr_t_120
	movzx eax, byte [ebp-0x54d]
	mov [ebp-0xa1], al
	movzx edx, byte [ebp-0x54e]
	mov [ebp-0xa2], dl
	movzx eax, byte [ebp-0x54f]
	mov [ebp-0xa3], al
	movzx edx, byte [ebp-0x550]
	mov [ebp-0xa4], dl
	mov eax, [ebp-0x554]
	mov [ebp-0xa8], eax
	movzx edx, word [ebp-0x556]
	mov [ebp-0xa0], dx
	mov dword [esp+0x10], _cstring_errorexe_err_hig
	mov [esp+0x4], eax
	mov eax, [ebp-0xa4]
	mov [esp+0x8], eax
	mov eax, [ebp-0xa0]
	mov [esp+0xc], eax
	mov dword [esp], 0x1
	call _Z18NET_OutOfBandPrint8netsrc_t8netadr_tPKc
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_client_i_rejecte
	mov dword [esp], 0xf
	call _Z11Com_DPrintfiPKcz
	jmp _Z16SV_DirectConnect8netadr_t_130
_Z16SV_DirectConnect8netadr_t_120:
	mov eax, sv_maxPing
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	jnz _Z16SV_DirectConnect8netadr_t_140
_Z16SV_DirectConnect8netadr_t_70:
	mov dword [esp+0x4], _cstring_cl_punkbuster
	lea eax, [ebp-0x541]
	mov [esp], eax
	call _Z16Info_ValueForKeyPKcS0_
	mov [esp], eax
	call atoi
	mov ebx, eax
	movzx edx, byte [ebp-0x54d]
	mov [ebp-0x89], dl
	movzx eax, byte [ebp-0x54e]
	mov [ebp-0x8a], al
	movzx edx, byte [ebp-0x54f]
	mov [ebp-0x8b], dl
	movzx eax, byte [ebp-0x550]
	mov [ebp-0x8c], al
	mov edx, [ebp-0x554]
	mov [ebp-0x90], edx
	movzx eax, word [ebp-0x556]
	mov [ebp-0x88], ax
	mov [esp], edx
	mov eax, [ebp-0x8c]
	mov [esp+0x4], eax
	mov eax, [ebp-0x88]
	mov [esp+0x8], eax
	call _Z18NET_IsLocalAddress8netadr_t
	test eax, eax
	jz _Z16SV_DirectConnect8netadr_t_150
	mov edx, _cstring_localhost
_Z16SV_DirectConnect8netadr_t_180:
	lea eax, [ebp-0x141]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov [esp], edx
	call _Z12PbAuthClientPciS_
	mov ebx, eax
	test eax, eax
	jz _Z16SV_DirectConnect8netadr_t_160
	mov dword [esp+0x8], 0x6
	mov dword [esp+0x4], _cstring_error
	mov [esp], eax
	call _Z10I_strnicmpPKcS0_i
	test eax, eax
	jnz _Z16SV_DirectConnect8netadr_t_130
	movzx edx, byte [ebp-0x54d]
	mov [ebp-0x71], dl
	movzx eax, byte [ebp-0x54e]
	mov [ebp-0x72], al
	movzx edx, byte [ebp-0x54f]
	mov [ebp-0x73], dl
	movzx eax, byte [ebp-0x550]
	mov [ebp-0x74], al
	mov edx, [ebp-0x554]
	mov [ebp-0x78], edx
	movzx eax, word [ebp-0x556]
	mov [ebp-0x70], ax
	mov [esp+0x10], ebx
	mov [esp+0x4], edx
	mov eax, [ebp-0x74]
	mov [esp+0x8], eax
	mov eax, [ebp-0x70]
	mov [esp+0xc], eax
	mov dword [esp], 0x1
	call _Z18NET_OutOfBandPrint8netsrc_t8netadr_tPKc
	jmp _Z16SV_DirectConnect8netadr_t_130
_Z16SV_DirectConnect8netadr_t_10:
	mov eax, _cstring_null
	jmp _Z16SV_DirectConnect8netadr_t_170
_Z16SV_DirectConnect8netadr_t_150:
	movzx edx, byte [ebp-0x54d]
	mov [ebp-0x7d], dl
	movzx eax, byte [ebp-0x54e]
	mov [ebp-0x7e], al
	movzx edx, byte [ebp-0x54f]
	mov [ebp-0x7f], dl
	movzx eax, byte [ebp-0x550]
	mov [ebp-0x80], al
	mov edx, [ebp-0x554]
	mov [ebp-0x84], edx
	movzx eax, word [ebp-0x556]
	mov [ebp-0x7c], ax
	mov [esp], edx
	mov eax, [ebp-0x80]
	mov [esp+0x4], eax
	mov eax, [ebp-0x7c]
	mov [esp+0x8], eax
	call _Z15NET_AdrToString8netadr_t
	mov edx, eax
	jmp _Z16SV_DirectConnect8netadr_t_180
_Z16SV_DirectConnect8netadr_t_160:
	mov edx, sv_maxclients
	mov eax, [edx]
	mov eax, [eax+0xc]
	test eax, eax
	jle _Z16SV_DirectConnect8netadr_t_190
	mov edi, svs
	add edi, 0x46380c
	xor esi, esi
	mov ebx, edi
	jmp _Z16SV_DirectConnect8netadr_t_200
_Z16SV_DirectConnect8netadr_t_210:
	add esi, 0x1
	add edi, 0xa5634
	add ebx, 0xa5634
	mov eax, [edx]
	cmp esi, [eax+0xc]
	jge _Z16SV_DirectConnect8netadr_t_190
_Z16SV_DirectConnect8netadr_t_200:
	mov ecx, [ebx]
	test ecx, ecx
	jz _Z16SV_DirectConnect8netadr_t_210
	mov ecx, [ebx+0x20]
	mov [ebp-0x6c], ecx
	mov edx, [ebx+0x24]
	mov [ebp-0x68], edx
	mov eax, [ebx+0x28]
	mov [esp+0x14], eax
	mov [ebp-0x64], eax
	movzx eax, byte [ebp-0x54d]
	mov [ebp-0x59], al
	movzx eax, byte [ebp-0x54e]
	mov [ebp-0x5a], al
	movzx eax, byte [ebp-0x54f]
	mov [ebp-0x5b], al
	movzx eax, byte [ebp-0x550]
	mov [ebp-0x5c], al
	mov eax, [ebp-0x554]
	mov [ebp-0x60], eax
	movzx eax, word [ebp-0x556]
	mov [ebp-0x58], ax
	mov [esp+0xc], ecx
	mov [esp+0x10], edx
	mov edx, [ebp-0x554]
	mov [esp], edx
	mov eax, [ebp-0x5c]
	mov [esp+0x4], eax
	mov eax, [ebp-0x58]
	mov [esp+0x8], eax
	call _Z18NET_CompareBaseAdr8netadr_tS_
	test eax, eax
	jz _Z16SV_DirectConnect8netadr_t_220
	mov eax, [ebx+0x2c]
	mov [ebp-0x54c], eax
	cmp [ebp-0x55c], eax
	jz _Z16SV_DirectConnect8netadr_t_230
	movzx eax, word [ebp-0x556]
	cmp [ebx+0x28], ax
	jz _Z16SV_DirectConnect8netadr_t_240
_Z16SV_DirectConnect8netadr_t_220:
	mov edx, sv_maxclients
	jmp _Z16SV_DirectConnect8netadr_t_210
_Z16SV_DirectConnect8netadr_t_190:
	mov dword [esp+0x4], _cstring_password
	lea eax, [ebp-0x541]
	mov [esp], eax
	call _Z16Info_ValueForKeyPKcS0_
	mov edx, sv_privatePassword
	mov edx, [edx]
	mov edx, [edx+0xc]
	mov [esp+0x4], edx
	mov [esp], eax
	call strcmp
	test eax, eax
	jnz _Z16SV_DirectConnect8netadr_t_250
	xor ecx, ecx
_Z16SV_DirectConnect8netadr_t_310:
	mov eax, sv_maxclients
	mov eax, [eax]
	mov ebx, [eax+0xc]
	cmp ecx, ebx
	jge _Z16SV_DirectConnect8netadr_t_260
	lea eax, [ecx+ecx*4]
	shl eax, 0x7
	add eax, ecx
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	lea eax, [ecx+eax*4]
	mov edi, svs
	lea eax, [edi+eax*4+0x463800]
	lea edx, [eax+0xc]
	mov eax, [eax+0xc]
	test eax, eax
	jz _Z16SV_DirectConnect8netadr_t_270
	mov esi, ecx
_Z16SV_DirectConnect8netadr_t_280:
	add esi, 0x1
	cmp ebx, esi
	jz _Z16SV_DirectConnect8netadr_t_260
	lea eax, [esi+esi*4]
	shl eax, 0x7
	add eax, esi
	lea eax, [esi+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	lea eax, [esi+eax*4]
	lea eax, [edi+eax*4+0x463800]
	lea edx, [eax+0xc]
	mov eax, [eax+0xc]
	test eax, eax
	jnz _Z16SV_DirectConnect8netadr_t_280
_Z16SV_DirectConnect8netadr_t_320:
	mov dword [edx+0x20e4c], 0x0
	mov dword [edx+0x20e48], 0x0
	mov [ebp-0x560], edx
_Z16SV_DirectConnect8netadr_t_380:
	mov dword [esp+0x8], 0xa5634
	mov dword [esp+0x4], 0x0
	mov [esp], edx
	call memset
	mov eax, svs
	add eax, 0x46380c
	mov [ebp-0x568], eax
	mov eax, [ebp-0x560]
	sub eax, [ebp-0x568]
	sar eax, 0x2
	imul eax, eax, 0x4315b545
	mov [ebp-0x56c], eax
	mov [esp], eax
	call _Z13SV_GentityNumi
	mov edx, [ebp-0x560]
	mov [edx+0x21284], eax
	call _Z14Scr_AllocArrayv
	mov edx, [ebp-0x560]
	mov [edx+0xa0d1a], ax
	mov eax, [ebp-0x564]
	mov [edx+0x20e5c], eax
	cmp byte [ebp-0x141], 0x0
	jz _Z16SV_DirectConnect8netadr_t_290
_Z16SV_DirectConnect8netadr_t_330:
	mov edi, [ebp-0x560]
	add edi, 0xa0cf8
	mov eax, [ebp-0x141]
	mov edx, [ebp-0x560]
	mov [edx+0xa0cf8], eax
	mov eax, [ebp-0x13d]
	mov [edi+0x4], eax
	mov eax, [ebp-0x139]
	mov [edi+0x8], eax
	mov eax, [ebp-0x135]
	mov [edi+0xc], eax
	mov eax, [ebp-0x131]
	mov [edi+0x10], eax
	mov eax, [ebp-0x12d]
	mov [edi+0x14], eax
	mov eax, [ebp-0x129]
	mov [edi+0x18], eax
	mov eax, [ebp-0x125]
	mov [edi+0x1c], eax
	movzx eax, byte [ebp-0x121]
	mov [edi+0x20], al
	movzx eax, byte [ebp-0x54d]
	mov [ebp-0x35], al
	movzx edx, byte [ebp-0x54e]
	mov [ebp-0x36], dl
	movzx eax, byte [ebp-0x54f]
	mov [ebp-0x37], al
	movzx edx, byte [ebp-0x550]
	mov [ebp-0x38], dl
	mov eax, [ebp-0x554]
	mov [ebp-0x3c], eax
	movzx edx, word [ebp-0x556]
	mov [ebp-0x34], dx
	mov dword [esp+0x24], 0x800
	mov eax, [ebp-0x560]
	add eax, 0xa04f8
	mov [esp+0x20], eax
	mov dword [esp+0x1c], 0x20000
	mov eax, [ebp-0x560]
	add eax, 0x804f8
	mov [esp+0x18], eax
	mov eax, [ebp-0x55c]
	mov [esp+0x14], eax
	mov edx, [ebp-0x554]
	mov [esp+0x8], edx
	mov eax, [ebp-0x38]
	mov [esp+0xc], eax
	mov eax, [ebp-0x34]
	mov [esp+0x10], eax
	mov eax, [ebp-0x560]
	add eax, 0x10
	mov [esp+0x4], eax
	mov dword [esp], 0x1
	call _Z13Netchan_Setup8netsrc_tP9netchan_t8netadr_tiPciS3_i
	mov eax, [ebp-0x560]
	mov dword [eax+0xa35ec], 0x0
	mov byte [eax+0xa3630], 0x1
	mov dword [esp+0x8], 0x400
	lea edx, [ebp-0x541]
	mov [esp+0x4], edx
	mov eax, [ebp-0x560]
	add eax, 0x648
	mov [esp], eax
	call _Z10I_strncpyzPcPKci
	mov edx, [ebp-0x560]
	movzx eax, word [edx+0xa0d1a]
	mov [esp+0x4], eax
	mov eax, [ebp-0x56c]
	mov [esp], eax
	call _Z13ClientConnectit
	mov ebx, eax
	test eax, eax
	jz _Z16SV_DirectConnect8netadr_t_300
	mov [esp+0x4], eax
	mov dword [esp], _cstring_errors
	call _Z2vaPKcz
	movzx edx, byte [ebp-0x54d]
	mov [ebp-0x29], dl
	movzx edx, byte [ebp-0x54e]
	mov [ebp-0x2a], dl
	movzx edx, byte [ebp-0x54f]
	mov [ebp-0x2b], dl
	movzx edx, byte [ebp-0x550]
	mov [ebp-0x2c], dl
	mov edx, [ebp-0x554]
	mov [ebp-0x30], edx
	movzx edx, word [ebp-0x556]
	mov [ebp-0x28], dx
	mov [esp+0x10], eax
	mov eax, [ebp-0x554]
	mov [esp+0x4], eax
	mov eax, [ebp-0x2c]
	mov [esp+0x8], eax
	mov eax, [ebp-0x28]
	mov [esp+0xc], eax
	mov dword [esp], 0x1
	call _Z18NET_OutOfBandPrint8netsrc_t8netadr_tPKc
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_game_rejected_a_
	mov dword [esp], 0xf
	call _Z11Com_DPrintfiPKcz
	mov edx, [ebp-0x560]
	mov [esp], edx
	call _Z21SV_FreeClientScriptIdP8client_t
	jmp _Z16SV_DirectConnect8netadr_t_130
_Z16SV_DirectConnect8netadr_t_250:
	mov eax, sv_privateClients
	mov eax, [eax]
	mov ecx, [eax+0xc]
	jmp _Z16SV_DirectConnect8netadr_t_310
_Z16SV_DirectConnect8netadr_t_140:
	cmp ebx, eax
	jle _Z16SV_DirectConnect8netadr_t_70
	movzx eax, byte [ebp-0x54d]
	mov [ebp-0x95], al
	movzx edx, byte [ebp-0x54e]
	mov [ebp-0x96], dl
	movzx eax, byte [ebp-0x54f]
	mov [ebp-0x97], al
	movzx edx, byte [ebp-0x550]
	mov [ebp-0x98], dl
	mov eax, [ebp-0x554]
	mov [ebp-0x9c], eax
	movzx edx, word [ebp-0x556]
	mov [ebp-0x94], dx
	mov dword [esp+0x10], _cstring_errorexe_err_low
	mov [esp+0x4], eax
	mov eax, [ebp-0x98]
	mov [esp+0x8], eax
	mov eax, [ebp-0x94]
	mov [esp+0xc], eax
	mov dword [esp], 0x1
	call _Z18NET_OutOfBandPrint8netsrc_t8netadr_tPKc
	mov [esp+0xc], ebx
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_client_i_rejecte1
	mov dword [esp], 0xf
	call _Z11Com_DPrintfiPKcz
	jmp _Z16SV_DirectConnect8netadr_t_130
_Z16SV_DirectConnect8netadr_t_260:
	movzx edx, byte [ebp-0x54d]
	mov [ebp-0x41], dl
	movzx eax, byte [ebp-0x54e]
	mov [ebp-0x42], al
	movzx edx, byte [ebp-0x54f]
	mov [ebp-0x43], dl
	movzx eax, byte [ebp-0x550]
	mov [ebp-0x44], al
	mov edx, [ebp-0x554]
	mov [ebp-0x48], edx
	movzx eax, word [ebp-0x556]
	mov [ebp-0x40], ax
	mov dword [esp+0x10], _cstring_errorexe_serveri
	mov [esp+0x4], edx
	mov eax, [ebp-0x44]
	mov [esp+0x8], eax
	mov eax, [ebp-0x40]
	mov [esp+0xc], eax
	mov dword [esp], 0x1
	call _Z18NET_OutOfBandPrint8netsrc_t8netadr_tPKc
	mov dword [esp+0x4], _cstring_rejected_a_conne
	mov dword [esp], 0xf
	call _Z11Com_DPrintfiPKcz
	jmp _Z16SV_DirectConnect8netadr_t_130
_Z16SV_DirectConnect8netadr_t_50:
	mov eax, svs
	mov edx, [eax+0x463804]
	sub edx, [edi+0x21458]
	mov eax, sv_reconnectlimit
	mov eax, [eax]
	mov eax, [eax+0xc]
	lea eax, [eax+eax*4]
	lea eax, [eax+eax*4]
	lea eax, [eax+eax*4]
	shl eax, 0x3
	cmp edx, eax
	jge _Z16SV_DirectConnect8netadr_t_30
	movzx eax, byte [ebp-0x54d]
	mov [ebp-0xf5], al
	movzx edx, byte [ebp-0x54e]
	mov [ebp-0xf6], dl
	movzx eax, byte [ebp-0x54f]
	mov [ebp-0xf7], al
	movzx edx, byte [ebp-0x550]
	mov [ebp-0xf8], dl
	mov eax, [ebp-0x554]
	mov [ebp-0xfc], eax
	movzx edx, word [ebp-0x556]
	mov [ebp-0xf4], dx
	mov [esp], eax
	mov eax, [ebp-0xf8]
	mov [esp+0x4], eax
	mov eax, [ebp-0xf4]
	mov [esp+0x8], eax
	call _Z15NET_AdrToString8netadr_t
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_sreconnect_rejec
	mov dword [esp], 0xf
	call _Z11Com_DPrintfiPKcz
	jmp _Z16SV_DirectConnect8netadr_t_130
_Z16SV_DirectConnect8netadr_t_270:
	mov esi, ecx
	jmp _Z16SV_DirectConnect8netadr_t_320
_Z16SV_DirectConnect8netadr_t_290:
	mov edx, [ebp-0x56c]
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_connecting_playe
	mov dword [esp], 0xf
	call _Z10Com_PrintfiPKcz
	jmp _Z16SV_DirectConnect8netadr_t_330
_Z16SV_DirectConnect8netadr_t_300:
	mov [esp+0x10], edi
	mov edx, [ebp-0x56c]
	mov [esp+0xc], edx
	mov eax, [ebp-0x560]
	add eax, 0x21288
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_going_from_cs_fr
	mov dword [esp], 0xf
	call _Z10Com_PrintfiPKcz
	mov eax, [ebp-0x560]
	mov dword [eax], 0x2
	mov ebx, svs
	mov eax, [ebx+0x463804]
	mov edx, [ebp-0x560]
	mov [edx+0x2145c], eax
	mov eax, [ebx+0x463804]
	mov [edx+0x21454], eax
	mov eax, [ebx+0x463804]
	mov [edx+0x21458], eax
	mov eax, [ebp-0x141]
	mov [edx+0xa0cf8], eax
	mov eax, [ebp-0x13d]
	mov [edi+0x4], eax
	mov eax, [ebp-0x139]
	mov [edi+0x8], eax
	mov eax, [ebp-0x135]
	mov [edi+0xc], eax
	mov eax, [ebp-0x131]
	mov [edi+0x10], eax
	mov eax, [ebp-0x12d]
	mov [edi+0x14], eax
	mov eax, [ebp-0x129]
	mov [edi+0x18], eax
	mov eax, [ebp-0x125]
	mov [edi+0x1c], eax
	movzx eax, byte [ebp-0x121]
	mov [edi+0x20], al
	mov [esp], edx
	call _Z18SV_UserinfoChangedP8client_t
	lea eax, [esi+esi*8]
	mov dword [ebx+eax*8+svs+0x9766654], 0x0
	mov eax, fs_gameDirVar
	mov eax, [eax]
	mov eax, [eax+0xc]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_connectresponse_
	call _Z2vaPKcz
	movzx edx, byte [ebp-0x54d]
	mov [ebp-0x1d], dl
	movzx edx, byte [ebp-0x54e]
	mov [ebp-0x1e], dl
	movzx edx, byte [ebp-0x54f]
	mov [ebp-0x1f], dl
	movzx edx, byte [ebp-0x550]
	mov [ebp-0x20], dl
	mov edx, [ebp-0x554]
	mov [ebp-0x24], edx
	movzx edx, word [ebp-0x556]
	mov [ebp-0x1c], dx
	mov [esp+0x10], eax
	mov eax, [ebp-0x554]
	mov [esp+0x4], eax
	mov eax, [ebp-0x20]
	mov [esp+0x8], eax
	mov eax, [ebp-0x1c]
	mov [esp+0xc], eax
	mov dword [esp], 0x1
	call _Z18NET_OutOfBandPrint8netsrc_t8netadr_tPKc
	mov edx, [ebp-0x560]
	mov dword [edx+0x20e58], 0xffffffff
	mov eax, sv_maxclients
	mov eax, [eax]
	mov ebx, [eax+0xc]
	test ebx, ebx
	jg _Z16SV_DirectConnect8netadr_t_340
	xor esi, esi
_Z16SV_DirectConnect8netadr_t_360:
	cmp esi, ebx
	jnz _Z16SV_DirectConnect8netadr_t_130
	call _Z14SV_Heartbeat_fv
	jmp _Z16SV_DirectConnect8netadr_t_130
_Z16SV_DirectConnect8netadr_t_340:
	xor ecx, ecx
	xor esi, esi
	mov edx, [ebp-0x568]
_Z16SV_DirectConnect8netadr_t_350:
	lea eax, [esi+0x1]
	cmp dword [edx], 0x2
	cmovge esi, eax
	add ecx, 0x1
	add edx, 0xa5634
	cmp ecx, ebx
	jnz _Z16SV_DirectConnect8netadr_t_350
	cmp esi, 0x1
	jnz _Z16SV_DirectConnect8netadr_t_360
	call _Z14SV_Heartbeat_fv
	jmp _Z16SV_DirectConnect8netadr_t_130
_Z16SV_DirectConnect8netadr_t_90:
	movzx edx, byte [ebp-0x54d]
	mov [ebp-0xc5], dl
	movzx eax, byte [ebp-0x54e]
	mov [ebp-0xc6], al
	movzx edx, byte [ebp-0x54f]
	mov [ebp-0xc7], dl
	movzx eax, byte [ebp-0x550]
	mov [ebp-0xc8], al
	mov edx, [ebp-0x554]
	mov [ebp-0xcc], edx
	movzx eax, word [ebp-0x556]
	mov [ebp-0xc4], ax
	mov dword [esp+0x10], _cstring_errorexe_bad_cha
	mov [esp+0x4], edx
	mov eax, [ebp-0xc8]
	mov [esp+0x8], eax
	mov eax, [ebp-0xc4]
	mov [esp+0xc], eax
	mov dword [esp], 0x1
	call _Z18NET_OutOfBandPrint8netsrc_t8netadr_tPKc
	jmp _Z16SV_DirectConnect8netadr_t_130
_Z16SV_DirectConnect8netadr_t_240:
	mov edx, eax
_Z16SV_DirectConnect8netadr_t_390:
	xor ebx, ebx
	cmp [edi+0x28], dx
	setz bl
	movzx eax, byte [ebp-0x54d]
	mov [ebp-0x4d], al
	movzx edx, byte [ebp-0x54e]
	mov [ebp-0x4e], dl
	movzx eax, byte [ebp-0x54f]
	mov [ebp-0x4f], al
	movzx edx, byte [ebp-0x550]
	mov [ebp-0x50], dl
	mov eax, [ebp-0x554]
	mov [ebp-0x54], eax
	movzx edx, word [ebp-0x556]
	mov [ebp-0x4c], dx
	mov [esp], eax
	mov eax, [ebp-0x50]
	mov [esp+0x4], eax
	mov eax, [ebp-0x4c]
	mov [esp+0x8], eax
	call _Z15NET_AdrToString8netadr_t
	mov [esp+0x10], ebx
	mov edx, [ebp-0x54c]
	cmp [ebp-0x55c], edx
	setz dl
	movzx edx, dl
	mov [esp+0xc], edx
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_sreconnect_same_
	mov dword [esp], 0xf
	call _Z10Com_PrintfiPKcz
	cmp dword [edi], 0x1
	jle _Z16SV_DirectConnect8netadr_t_370
	mov [esp], edi
	call _Z13SV_FreeClientP8client_t
	mov [ebp-0x560], edi
	mov edx, edi
	jmp _Z16SV_DirectConnect8netadr_t_380
_Z16SV_DirectConnect8netadr_t_230:
	mov edx, [ebp-0x55c]
	mov [ebp-0x54c], edx
	movzx edx, word [ebp-0x556]
	jmp _Z16SV_DirectConnect8netadr_t_390
_Z16SV_DirectConnect8netadr_t_370:
	mov [ebp-0x560], edi
	mov edx, edi
	jmp _Z16SV_DirectConnect8netadr_t_380


;SV_GetClientStat(int, int)
_Z16SV_GetClientStatii:
	push ebp
	mov ebp, esp
	push ebx
	mov ecx, [ebp+0x8]
	mov ebx, [ebp+0xc]
	cmp ebx, 0x7cf
	jg _Z16SV_GetClientStatii_10
	lea eax, [ecx+ecx*4]
	shl eax, 0x7
	add eax, ecx
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	lea eax, [ecx+eax*4]
	shl eax, 0x2
	add eax, svs
	movzx eax, byte [eax+ebx+g_WeaponDefPool+0x39721]
	pop ebx
	pop ebp
	ret
_Z16SV_GetClientStatii_10:
	cmp ebx, 0xda9
	jg _Z16SV_GetClientStatii_20
	lea eax, [ecx+ecx*4]
	shl eax, 0x7
	add eax, ecx
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	lea eax, [ecx+eax*4]
	add eax, ebx
	mov edx, svs
	add edx, 0xd
	mov eax, [edx+eax*4+g_WeaponDefPool+0x37fa4]
	pop ebx
	pop ebp
	ret
_Z16SV_GetClientStatii_20:
	xor eax, eax
	pop ebx
	pop ebp
	ret


;SV_SetClientStat(int, int, int)
_Z16SV_SetClientStatiii:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x20
	mov eax, [ebp+0x8]
	mov ebx, [ebp+0xc]
	mov esi, [ebp+0x10]
	lea edx, [eax+eax*4]
	shl edx, 0x7
	add edx, eax
	lea edx, [eax+edx*2]
	mov ecx, edx
	shl ecx, 0x5
	add edx, ecx
	lea eax, [eax+edx*4]
	mov ecx, svs
	lea edx, [ecx+eax*4+0x46380c]
	cmp ebx, 0x7cf
	jg _Z16SV_SetClientStatiii_10
	lea eax, [ebx+0x4]
	mov ecx, esi
	cmp [eax+edx+0xa3631], cl
	jz _Z16SV_SetClientStatiii_20
	mov [eax+edx+0xa3631], cl
_Z16SV_SetClientStatiii_30:
	mov [esp+0x14], esi
	mov [esp+0x10], ebx
	mov dword [esp+0xc], 0x4e
	mov dword [esp+0x8], _cstring_c_i_i
	mov dword [esp+0x4], 0x1
	mov [esp], edx
	call _Z20SV_SendServerCommandP8client_t11svscmd_typePKcz
_Z16SV_SetClientStatiii_20:
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
_Z16SV_SetClientStatiii_10:
	cmp ebx, 0xda9
	jg _Z16SV_SetClientStatiii_20
	add eax, ebx
	lea eax, [ecx+eax*4+g_WeaponDefPool+0x37fa4]
	cmp esi, [eax+0xd]
	jz _Z16SV_SetClientStatiii_20
	mov [eax+0xd], esi
	jmp _Z16SV_SetClientStatiii_30


;SV_WWWDownload_f(client_t*)
_Z16SV_WWWDownload_fP8client_t:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0x8]
	mov eax, sv_cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x1
	jle _Z16SV_WWWDownload_fP8client_t_10
	mov eax, [eax+edx*4+0x64]
	mov esi, [eax+0x4]
_Z16SV_WWWDownload_fP8client_t_50:
	mov eax, [ebx+0x21440]
	test eax, eax
	jz _Z16SV_WWWDownload_fP8client_t_20
	mov dword [esp+0x4], _cstring_ack
	mov [esp], esi
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z16SV_WWWDownload_fP8client_t_30
	mov eax, [ebx+0x21444]
	test eax, eax
	jnz _Z16SV_WWWDownload_fP8client_t_40
_Z16SV_WWWDownload_fP8client_t_100:
	mov dword [ebx+0x21444], 0x1
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z16SV_WWWDownload_fP8client_t_20:
	lea eax, [ebx+0x21288]
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_sv_wwwdownload_u
_Z16SV_WWWDownload_fP8client_t_180:
	mov dword [esp], 0xf
	call _Z10Com_PrintfiPKcz
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], _cstring_unexpected_www_d
	mov [esp], ebx
	call _Z13SV_DropClientP8client_tPKch
_Z16SV_WWWDownload_fP8client_t_90:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z16SV_WWWDownload_fP8client_t_10:
	mov esi, _cstring_null
	jmp _Z16SV_WWWDownload_fP8client_t_50
_Z16SV_WWWDownload_fP8client_t_30:
	mov dword [esp+0x4], _cstring_bbl8r
	mov [esp], esi
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z16SV_WWWDownload_fP8client_t_60
	mov eax, [ebx+0x21444]
	test eax, eax
	jz _Z16SV_WWWDownload_fP8client_t_20
	mov dword [esp+0x4], _cstring_done
	mov [esp], esi
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z16SV_WWWDownload_fP8client_t_70
	mov dword [ebx+0x21298], 0x0
	mov eax, [ebx+0x212dc]
	test eax, eax
	jnz _Z16SV_WWWDownload_fP8client_t_80
_Z16SV_WWWDownload_fP8client_t_130:
	mov dword [ebx+0x212dc], 0x0
	mov byte [ebx+0x2129c], 0x0
	mov dword [ebx+0x21444], 0x0
	mov dword [ebx+0x21440], 0x0
	jmp _Z16SV_WWWDownload_fP8client_t_90
_Z16SV_WWWDownload_fP8client_t_40:
	lea eax, [ebx+0x21288]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_warning_dupe_www
	mov dword [esp], 0xf
	call _Z10Com_PrintfiPKcz
	jmp _Z16SV_WWWDownload_fP8client_t_100
_Z16SV_WWWDownload_fP8client_t_70:
	mov dword [esp+0x4], _cstring_fail
	mov [esp], esi
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z16SV_WWWDownload_fP8client_t_110
	mov dword [ebx+0x21298], 0x0
	mov eax, [ebx+0x212dc]
	test eax, eax
	jnz _Z16SV_WWWDownload_fP8client_t_120
_Z16SV_WWWDownload_fP8client_t_170:
	mov dword [ebx+0x212dc], 0x0
	mov byte [ebx+0x2129c], 0x0
	mov dword [ebx+0x21444], 0x0
	mov dword [ebx+0x21440], 0x0
	mov dword [ebx+0x21448], 0x1
	lea eax, [ebx+0x2129c]
	mov [esp+0xc], eax
	lea eax, [ebx+0x21288]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_client_s_reporte
	mov dword [esp], 0xf
	call _Z10Com_PrintfiPKcz
_Z16SV_WWWDownload_fP8client_t_160:
	mov [ebp+0x8], ebx
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp _Z22SV_SendClientGameStateP8client_t
_Z16SV_WWWDownload_fP8client_t_60:
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], _cstring_client_dropped_t
	mov [esp], ebx
	call _Z13SV_DropClientP8client_tPKch
	jmp _Z16SV_WWWDownload_fP8client_t_90
_Z16SV_WWWDownload_fP8client_t_80:
	mov [esp], eax
	call _Z13FS_FCloseFilei
	jmp _Z16SV_WWWDownload_fP8client_t_130
_Z16SV_WWWDownload_fP8client_t_110:
	mov dword [esp+0x4], _cstring_chkfail
	mov [esp], esi
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z16SV_WWWDownload_fP8client_t_140
	lea eax, [ebx+0x2129c]
	mov [esp+0xc], eax
	lea eax, [ebx+0x21288]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_warning_client_s
	mov dword [esp], 0xf
	call _Z10Com_PrintfiPKcz
	mov dword [esp+0x4], _cstring__________you_sho
	mov dword [esp], 0xf
	call _Z10Com_PrintfiPKcz
	mov dword [ebx+0x21298], 0x0
	mov eax, [ebx+0x212dc]
	test eax, eax
	jnz _Z16SV_WWWDownload_fP8client_t_150
_Z16SV_WWWDownload_fP8client_t_190:
	mov dword [ebx+0x212dc], 0x0
	mov byte [ebx+0x2129c], 0x0
	mov dword [ebx+0x21444], 0x0
	mov dword [ebx+0x21440], 0x0
	mov dword [ebx+0x21448], 0x1
	jmp _Z16SV_WWWDownload_fP8client_t_160
_Z16SV_WWWDownload_fP8client_t_120:
	mov [esp], eax
	call _Z13FS_FCloseFilei
	jmp _Z16SV_WWWDownload_fP8client_t_170
_Z16SV_WWWDownload_fP8client_t_140:
	lea eax, [ebx+0x21288]
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_sv_wwwdownload_u1
	jmp _Z16SV_WWWDownload_fP8client_t_180
_Z16SV_WWWDownload_fP8client_t_150:
	mov [esp], eax
	call _Z13FS_FCloseFilei
	jmp _Z16SV_WWWDownload_fP8client_t_190


;SV_BanGuidBriefly(char const*)
_Z17SV_BanGuidBrieflyPKc:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	xor esi, esi
	xor ebx, ebx
	mov edi, svs
	lea ecx, [edi+svs+0x9778c34]
_Z17SV_BanGuidBrieflyPKc_20:
	cmp byte [ecx], 0x0
	jz _Z17SV_BanGuidBrieflyPKc_10
	lea edx, [esi+esi*8]
	mov eax, [ecx+0x20]
	cmp eax, [edi+edx*4+svs+0x9778c54]
	cmovl esi, ebx
	add ebx, 0x1
	add ecx, 0x24
	cmp ebx, 0x10
	jnz _Z17SV_BanGuidBrieflyPKc_20
	mov eax, esi
_Z17SV_BanGuidBrieflyPKc_30:
	lea ebx, [eax+eax*8]
	shl ebx, 0x2
	lea ecx, [ebx+edi+svs+0x9778c00]
	lea edx, [ecx+0x34]
	mov esi, [ebp+0x8]
	mov eax, [esi]
	mov [ecx+0x34], eax
	mov eax, [esi+0x4]
	mov [edx+0x4], eax
	mov eax, [esi+0x8]
	mov [edx+0x8], eax
	mov eax, [esi+0xc]
	mov [edx+0xc], eax
	mov eax, [esi+0x10]
	mov [edx+0x10], eax
	mov eax, [esi+0x14]
	mov [edx+0x14], eax
	mov eax, [esi+0x18]
	mov [edx+0x18], eax
	mov eax, [esi+0x1c]
	mov [edx+0x1c], eax
	mov eax, [edi+0x463804]
	mov [ebx+edi+svs+0x9778c54], eax
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z17SV_BanGuidBrieflyPKc_10:
	mov eax, ebx
	jmp _Z17SV_BanGuidBrieflyPKc_30


;SV_DoneDownload_f(client_t*)
_Z17SV_DoneDownload_fP8client_t:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	lea eax, [ebx+0x21288]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_clientdownload_s
	mov dword [esp], 0x0
	call _Z11Com_DPrintfiPKcz
	mov dword [ebx+0x21298], 0x0
	mov eax, [ebx+0x212dc]
	test eax, eax
	jz _Z17SV_DoneDownload_fP8client_t_10
	mov [esp], eax
	call _Z13FS_FCloseFilei
_Z17SV_DoneDownload_fP8client_t_10:
	mov dword [ebx+0x212dc], 0x0
	mov byte [ebx+0x2129c], 0x0
	mov [ebp+0x8], ebx
	add esp, 0x14
	pop ebx
	pop ebp
	jmp _Z22SV_SendClientGameStateP8client_t


;SV_NextDownload_f(client_t*)
_Z17SV_NextDownload_fP8client_t:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0x8]
	mov eax, sv_cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x1
	jle _Z17SV_NextDownload_fP8client_t_10
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x4]
_Z17SV_NextDownload_fP8client_t_80:
	mov [esp], eax
	call atoi
	mov edx, eax
	cmp eax, [ebx+0x212e8]
	jz _Z17SV_NextDownload_fP8client_t_20
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], _cstring_broken_download
	mov [esp], ebx
	call _Z13SV_DropClientP8client_tPKch
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z17SV_NextDownload_fP8client_t_20:
	mov eax, svs
	add eax, 0x46380c
	mov ecx, ebx
	sub ecx, eax
	mov eax, ecx
	sar eax, 0x2
	imul esi, eax, 0x4315b545
	mov [esp+0xc], edx
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_clientdownload_d
	mov dword [esp], 0x0
	call _Z11Com_DPrintfiPKcz
	mov edx, [ebx+0x212e8]
	mov eax, edx
	and eax, 0x80000007
	js _Z17SV_NextDownload_fP8client_t_30
_Z17SV_NextDownload_fP8client_t_90:
	mov eax, [ebx+eax*4+0x21314]
	test eax, eax
	jnz _Z17SV_NextDownload_fP8client_t_40
	lea eax, [ebx+0x2129c]
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_clientdownload_d1
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	mov eax, [ebx+0x212dc]
	test eax, eax
	jnz _Z17SV_NextDownload_fP8client_t_50
_Z17SV_NextDownload_fP8client_t_100:
	mov dword [ebx+0x212dc], 0x0
	mov byte [ebx+0x2129c], 0x0
	mov esi, 0x8
_Z17SV_NextDownload_fP8client_t_70:
	mov eax, [ebx+0x212f4]
	test eax, eax
	jz _Z17SV_NextDownload_fP8client_t_60
	mov [esp], eax
	call Z_FreeInternal
	mov dword [ebx+0x212f4], 0x0
_Z17SV_NextDownload_fP8client_t_60:
	add ebx, 0x4
	sub esi, 0x1
	jnz _Z17SV_NextDownload_fP8client_t_70
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z17SV_NextDownload_fP8client_t_10:
	mov eax, _cstring_null
	jmp _Z17SV_NextDownload_fP8client_t_80
_Z17SV_NextDownload_fP8client_t_40:
	mov eax, svs
	mov eax, [eax+0x463804]
	mov [ebx+0x21338], eax
	lea eax, [edx+0x1]
	mov [ebx+0x212e8], eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z17SV_NextDownload_fP8client_t_30:
	sub eax, 0x1
	or eax, 0xfffffff8
	add eax, 0x1
	jmp _Z17SV_NextDownload_fP8client_t_90
_Z17SV_NextDownload_fP8client_t_50:
	mov [esp], eax
	call _Z13FS_FCloseFilei
	jmp _Z17SV_NextDownload_fP8client_t_100
	nop


;SV_SendDisconnect(client_t*, int, char const*, unsigned char, char const*)
_Z17SV_SendDisconnectP8client_tiPKchS2_:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x30
	mov esi, [ebp+0x8]
	mov eax, [ebp+0x10]
	mov ecx, [ebp+0x18]
	movzx edx, byte [ebp+0x14]
	cmp dword [ebp+0xc], 0x4
	jz _Z17SV_SendDisconnectP8client_tiPKchS2__10
	mov [esp+0x4], eax
	mov dword [esp], _cstring_disconnect_s
	call _Z2vaPKcz
	mov ebx, [esi+0x20]
	mov [ebp-0x14], ebx
	mov ecx, [esi+0x24]
	mov [ebp-0x10], ecx
	mov edx, [esi+0x28]
	mov [ebp-0xc], edx
	mov [esp+0x10], eax
	mov [esp+0x4], ebx
	mov [esp+0x8], ecx
	mov [esp+0xc], edx
	mov dword [esp], 0x1
	call _Z18NET_OutOfBandPrint8netsrc_t8netadr_tPKc
	add esp, 0x30
	pop ebx
	pop esi
	pop ebp
	ret
_Z17SV_SendDisconnectP8client_tiPKchS2__10:
	test dl, dl
	jz _Z17SV_SendDisconnectP8client_tiPKchS2__20
	mov [ebp+0x18], eax
	mov dword [ebp+0x14], 0x77
	mov dword [ebp+0x10], _cstring_c_s
	mov dword [ebp+0xc], 0x1
	mov [ebp+0x8], esi
	add esp, 0x30
	pop ebx
	pop esi
	pop ebp
	jmp _Z20SV_SendServerCommandP8client_t11svscmd_typePKcz
_Z17SV_SendDisconnectP8client_tiPKchS2__20:
	mov [esp+0x14], eax
	mov [esp+0x10], ecx
	mov dword [esp+0xc], 0x77
	mov dword [esp+0x8], _cstring_c_s7_s_pb
	mov dword [esp+0x4], 0x1
	mov [esp], esi
	call _Z20SV_SendServerCommandP8client_t11svscmd_typePKcz
	add esp, 0x30
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;SV_StopDownload_f(client_t*)
_Z17SV_StopDownload_fP8client_t:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0x8]
	cmp byte [edi+0x2129c], 0x0
	jnz _Z17SV_StopDownload_fP8client_t_10
_Z17SV_StopDownload_fP8client_t_70:
	mov eax, [edi+0x212dc]
	test eax, eax
	jnz _Z17SV_StopDownload_fP8client_t_20
_Z17SV_StopDownload_fP8client_t_60:
	mov dword [edi+0x212dc], 0x0
	mov byte [edi+0x2129c], 0x0
	mov ebx, edi
	mov esi, 0x8
_Z17SV_StopDownload_fP8client_t_40:
	mov eax, [ebx+0x212f4]
	test eax, eax
	jz _Z17SV_StopDownload_fP8client_t_30
	mov [esp], eax
	call Z_FreeInternal
	mov dword [ebx+0x212f4], 0x0
_Z17SV_StopDownload_fP8client_t_30:
	add ebx, 0x4
	sub esi, 0x1
	jnz _Z17SV_StopDownload_fP8client_t_40
	mov dword [edi+0x21298], 0x0
	mov eax, [edi+0x212dc]
	test eax, eax
	jz _Z17SV_StopDownload_fP8client_t_50
	mov [esp], eax
	call _Z13FS_FCloseFilei
_Z17SV_StopDownload_fP8client_t_50:
	mov dword [edi+0x212dc], 0x0
	mov byte [edi+0x2129c], 0x0
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z17SV_StopDownload_fP8client_t_20:
	mov [esp], eax
	call _Z13FS_FCloseFilei
	jmp _Z17SV_StopDownload_fP8client_t_60
_Z17SV_StopDownload_fP8client_t_10:
	mov edx, svs
	add edx, 0x46380c
	lea eax, [edi+0x2129c]
	mov [esp+0xc], eax
	mov eax, edi
	sub eax, edx
	sar eax, 0x2
	imul eax, eax, 0x4315b545
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_clientdownload_d2
	mov dword [esp], 0x0
	call _Z11Com_DPrintfiPKcz
	jmp _Z17SV_StopDownload_fP8client_t_70


;SV_BeginDownload_f(client_t*)
_Z18SV_BeginDownload_fP8client_t:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0x8]
	mov eax, [edi+0x212dc]
	test eax, eax
	jnz _Z18SV_BeginDownload_fP8client_t_10
_Z18SV_BeginDownload_fP8client_t_50:
	mov dword [edi+0x212dc], 0x0
	mov byte [edi+0x2129c], 0x0
	mov ebx, edi
	mov esi, 0x8
_Z18SV_BeginDownload_fP8client_t_30:
	mov eax, [ebx+0x212f4]
	test eax, eax
	jz _Z18SV_BeginDownload_fP8client_t_20
	mov [esp], eax
	call Z_FreeInternal
	mov dword [ebx+0x212f4], 0x0
_Z18SV_BeginDownload_fP8client_t_20:
	add ebx, 0x4
	sub esi, 0x1
	jnz _Z18SV_BeginDownload_fP8client_t_30
	mov dword [edi+0x21298], 0x1
	mov eax, sv_cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x1
	jle _Z18SV_BeginDownload_fP8client_t_40
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x4]
	mov dword [esp+0x8], 0x40
	mov [esp+0x4], eax
	lea eax, [edi+0x2129c]
	mov [esp], eax
	call _Z10I_strncpyzPcPKci
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z18SV_BeginDownload_fP8client_t_10:
	mov [esp], eax
	call _Z13FS_FCloseFilei
	jmp _Z18SV_BeginDownload_fP8client_t_50
_Z18SV_BeginDownload_fP8client_t_40:
	mov eax, _cstring_null
	mov dword [esp+0x8], 0x40
	mov [esp+0x4], eax
	lea eax, [edi+0x2129c]
	mov [esp], eax
	call _Z10I_strncpyzPcPKci
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;SV_DelayDropClient(client_t*, char const*)
_Z18SV_DelayDropClientP8client_tPKc:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	cmp dword [eax], 0x1
	jz _Z18SV_DelayDropClientP8client_tPKc_10
	mov edx, [eax+0x644]
	test edx, edx
	jz _Z18SV_DelayDropClientP8client_tPKc_20
_Z18SV_DelayDropClientP8client_tPKc_10:
	pop ebp
	ret
_Z18SV_DelayDropClientP8client_tPKc_20:
	mov edx, [ebp+0xc]
	mov [eax+0x644], edx
	pop ebp
	ret


;SV_UserinfoChanged(client_t*)
_Z18SV_UserinfoChangedP8client_t:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x20
	mov ebx, [ebp+0x8]
	lea esi, [ebx+0x648]
	mov dword [esp+0x4], _cstring_name
	mov [esp], esi
	call _Z16Info_ValueForKeyPKcS0_
	mov dword [esp+0x8], 0x10
	mov [esp+0x4], eax
	lea eax, [ebx+0x21288]
	mov [esp], eax
	call _Z10I_strncpyzPcPKci
	mov ecx, [ebx+0x20]
	mov [ebp-0x14], ecx
	mov edx, [ebx+0x24]
	mov [ebp-0x10], edx
	mov eax, [ebx+0x28]
	mov [ebp-0xc], eax
	mov [esp], ecx
	mov [esp+0x4], edx
	mov [esp+0x8], eax
	call _Z16Sys_IsLANAddress8netadr_t
	test eax, eax
	jz _Z18SV_UserinfoChangedP8client_t_10
	mov eax, com_dedicated
	mov eax, [eax]
	cmp dword [eax+0xc], 0x2
	jz _Z18SV_UserinfoChangedP8client_t_10
	mov dword [ebx+0x804e8], 0x1869f
_Z18SV_UserinfoChangedP8client_t_120:
	mov dword [esp+0x4], _cstring_snaps
	mov [esp], esi
	call _Z16Info_ValueForKeyPKcS0_
	cmp byte [eax], 0x0
	jnz _Z18SV_UserinfoChangedP8client_t_20
_Z18SV_UserinfoChangedP8client_t_60:
	mov dword [ebx+0x804ec], 0x32
_Z18SV_UserinfoChangedP8client_t_90:
	mov dword [esp+0x4], _cstring_cl_voice
	mov [esp], esi
	call _Z16Info_ValueForKeyPKcS0_
	mov [esp], eax
	call atoi
	test eax, eax
	setg byte [ebx+0xa3630]
	cmp dword [ebx+0x804e8], 0x1387
	jg _Z18SV_UserinfoChangedP8client_t_30
	mov byte [ebx+0xa3630], 0x0
_Z18SV_UserinfoChangedP8client_t_30:
	mov dword [esp+0x4], _cstring_cl_wwwdownload
	mov [esp], esi
	call _Z16Info_ValueForKeyPKcS0_
	mov dword [ebx+0x2143c], 0x0
	cmp byte [eax], 0x0
	jnz _Z18SV_UserinfoChangedP8client_t_40
_Z18SV_UserinfoChangedP8client_t_100:
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
_Z18SV_UserinfoChangedP8client_t_10:
	mov dword [esp+0x4], _cstring_rate
	mov [esp], esi
	call _Z16Info_ValueForKeyPKcS0_
	cmp byte [eax], 0x0
	jnz _Z18SV_UserinfoChangedP8client_t_50
	mov dword [ebx+0x804e8], 0x1388
	mov dword [esp+0x4], _cstring_snaps
	mov [esp], esi
	call _Z16Info_ValueForKeyPKcS0_
	cmp byte [eax], 0x0
	jz _Z18SV_UserinfoChangedP8client_t_60
_Z18SV_UserinfoChangedP8client_t_20:
	mov [esp], eax
	call atoi
	mov edx, eax
	test eax, eax
	jle _Z18SV_UserinfoChangedP8client_t_70
	cmp eax, 0x1e
	jle _Z18SV_UserinfoChangedP8client_t_80
	mov eax, 0x21
_Z18SV_UserinfoChangedP8client_t_130:
	mov [ebx+0x804ec], eax
	jmp _Z18SV_UserinfoChangedP8client_t_90
_Z18SV_UserinfoChangedP8client_t_40:
	mov [esp], eax
	call atoi
	test eax, eax
	jz _Z18SV_UserinfoChangedP8client_t_100
	mov dword [ebx+0x2143c], 0x1
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
_Z18SV_UserinfoChangedP8client_t_50:
	mov [esp], eax
	call atoi
	mov [ebx+0x804e8], eax
	cmp eax, 0x3e7
	jg _Z18SV_UserinfoChangedP8client_t_110
	mov dword [ebx+0x804e8], 0x3e8
	jmp _Z18SV_UserinfoChangedP8client_t_120
_Z18SV_UserinfoChangedP8client_t_80:
	mov eax, 0x3e8
	mov ecx, edx
	cdq
	idiv ecx
	jmp _Z18SV_UserinfoChangedP8client_t_130
_Z18SV_UserinfoChangedP8client_t_110:
	cmp eax, 0x15f90
	jle _Z18SV_UserinfoChangedP8client_t_120
	mov dword [ebx+0x804e8], 0x15f90
	jmp _Z18SV_UserinfoChangedP8client_t_120
_Z18SV_UserinfoChangedP8client_t_70:
	mov eax, 0x3e8
	jmp _Z18SV_UserinfoChangedP8client_t_130


;SV_AuthorizeRequest(netadr_t, int, char const*)
_Z19SV_AuthorizeRequest8netadr_tiPKc:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x47c
	movzx eax, word [ebp+0x10]
	mov [ebp-0x44a], ax
	mov edx, [ebp+0x8]
	mov [ebp-0x450], edx
	movzx eax, byte [ebp+0xc]
	mov [ebp-0x451], al
	movzx edi, byte [ebp+0xd]
	movzx esi, byte [ebp+0xe]
	movzx ebx, byte [ebp+0xf]
	mov eax, svs
	cmp dword [eax+svs+0x9778644], 0x1
	jz _Z19SV_AuthorizeRequest8netadr_tiPKc_10
	mov byte [ebp-0x43c], 0x0
	mov dword [esp+0xc], _cstring_file_sysytem_bas
	mov dword [esp+0x8], 0x1c
	mov dword [esp+0x4], _cstring_null
	mov dword [esp], _cstring_fs_game
	call _Z19Dvar_RegisterStringPKcS0_tS0_
	test eax, eax
	jz _Z19SV_AuthorizeRequest8netadr_tiPKc_20
	mov eax, [eax+0xc]
	cmp byte [eax], 0x0
	jnz _Z19SV_AuthorizeRequest8netadr_tiPKc_30
_Z19SV_AuthorizeRequest8netadr_tiPKc_20:
	movzx eax, word [ebp-0x44a]
	mov [ebp-0x34], ax
	mov edx, [ebp-0x450]
	mov [ebp-0x3c], edx
	movzx eax, byte [ebp-0x451]
	mov [ebp-0x38], al
	mov edx, edi
	mov [ebp-0x37], dl
	mov eax, esi
	mov [ebp-0x36], al
	mov [ebp-0x35], bl
	mov edx, [ebp-0x450]
	mov [esp], edx
	mov eax, [ebp-0x38]
	mov [esp+0x4], eax
	mov eax, [ebp-0x34]
	mov [esp+0x8], eax
	call _Z15NET_AdrToString8netadr_t
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_sending_getipaut
	mov dword [esp], 0xf
	call _Z11Com_DPrintfiPKcz
	mov dword [esp], _cstring_sv_allowanonymou
	call _Z12Dvar_GetBoolPKc
	mov edx, [ebp+0x18]
	cmp byte [edx], 0x0
	jz _Z19SV_AuthorizeRequest8netadr_tiPKc_40
	mov [esp+0x20], edx
	movzx eax, al
	mov [esp+0x1c], eax
	lea eax, [ebp-0x43c]
	mov [esp+0x18], eax
	movzx eax, bl
	mov [esp+0x14], eax
	mov edx, esi
	movzx eax, dl
	mov [esp+0x10], eax
	mov edx, edi
	movzx eax, dl
	mov [esp+0xc], eax
	movzx eax, byte [ebp-0x451]
	mov [esp+0x8], eax
	mov eax, [ebp+0x14]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_getipauthorize_i
	call _Z2vaPKcz
	mov edx, svs
	mov ebx, [edx+svs+0x9778644]
	mov [ebp-0x30], ebx
	mov ecx, [edx+svs+0x9778648]
	mov [ebp-0x2c], ecx
	mov edx, [edx+svs+0x977864c]
	mov [ebp-0x28], edx
_Z19SV_AuthorizeRequest8netadr_tiPKc_50:
	mov [esp+0x10], eax
	mov [esp+0x4], ebx
	mov [esp+0x8], ecx
	mov [esp+0xc], edx
	mov dword [esp], 0x1
	call _Z18NET_OutOfBandPrint8netsrc_t8netadr_tPKc
_Z19SV_AuthorizeRequest8netadr_tiPKc_10:
	add esp, 0x47c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19SV_AuthorizeRequest8netadr_tiPKc_40:
	movzx eax, al
	mov [esp+0x1c], eax
	lea edx, [ebp-0x43c]
	mov [esp+0x18], edx
	movzx eax, bl
	mov [esp+0x14], eax
	mov edx, esi
	movzx eax, dl
	mov [esp+0x10], eax
	mov edx, edi
	movzx eax, dl
	mov [esp+0xc], eax
	movzx eax, byte [ebp-0x451]
	mov [esp+0x8], eax
	mov eax, [ebp+0x14]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_getipauthorize_i1
	call _Z2vaPKcz
	mov edx, svs
	mov ebx, [edx+svs+0x9778644]
	mov [ebp-0x24], ebx
	mov ecx, [edx+svs+0x9778648]
	mov [ebp-0x20], ecx
	mov edx, [edx+svs+0x977864c]
	mov [ebp-0x1c], edx
	jmp _Z19SV_AuthorizeRequest8netadr_tiPKc_50
_Z19SV_AuthorizeRequest8netadr_tiPKc_30:
	mov [esp+0x4], eax
	lea edx, [ebp-0x43c]
	mov [esp], edx
	call strcpy
	jmp _Z19SV_AuthorizeRequest8netadr_tiPKc_20
	nop


;SV_ClientEnterWorld(client_t*, usercmd_s*)
_Z19SV_ClientEnterWorldP8client_tP9usercmd_s:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov ebx, [ebp+0x8]
	mov edi, [ebp+0xc]
	lea eax, [ebx+0x21288]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_going_from_cs_cl
	mov dword [esp], 0xf
	call _Z11Com_DPrintfiPKcz
	mov dword [ebx], 0x4
	mov eax, svs
	add eax, 0x46380c
	mov esi, ebx
	sub esi, eax
	sar esi, 0x2
	imul esi, esi, 0x4315b545
	mov [esp], esi
	call _Z13SV_GentityNumi
	mov [eax], esi
	mov [ebx+0x21284], eax
	mov dword [ebx+0x8], 0xffffffff
	mov eax, svs
	mov eax, [eax+0x463804]
	mov [ebx+0x2145c], eax
	mov eax, [edi]
	mov [ebx+0x20e60], eax
	mov eax, [edi+0x4]
	mov [ebx+0x20e64], eax
	mov eax, [edi+0x8]
	mov [ebx+0x20e68], eax
	mov eax, [edi+0xc]
	mov [ebx+0x20e6c], eax
	mov eax, [edi+0x10]
	mov [ebx+0x20e70], eax
	mov eax, [edi+0x14]
	mov [ebx+0x20e74], eax
	mov eax, [edi+0x18]
	mov [ebx+0x20e78], eax
	mov eax, [edi+0x1c]
	mov [ebx+0x20e7c], eax
	mov [ebp+0x8], esi
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z11ClientBegini


;SV_AuthorizeIpPacket(netadr_t)
_Z20SV_AuthorizeIpPacket8netadr_t:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4ec
	mov esi, [ebp+0x8]
	mov eax, svs
	mov ebx, [eax+svs+0x9778644]
	mov [ebp-0xc0], ebx
	mov ecx, [eax+svs+0x9778648]
	mov [ebp-0xbc], ecx
	mov edx, [eax+svs+0x977864c]
	mov [ebp-0xb8], edx
	movzx eax, word [ebp+0x10]
	mov [ebp-0xac], ax
	movzx eax, byte [ebp+0xf]
	mov [ebp-0xad], al
	movzx eax, byte [ebp+0xe]
	mov [ebp-0xae], al
	movzx eax, byte [ebp+0xd]
	mov [ebp-0xaf], al
	movzx eax, byte [ebp+0xc]
	mov [ebp-0xb0], al
	mov [ebp-0xb4], esi
	mov [esp+0xc], ebx
	mov [esp+0x10], ecx
	mov [esp+0x14], edx
	mov [esp], esi
	mov eax, [ebp-0xb0]
	mov [esp+0x4], eax
	mov eax, [ebp-0xac]
	mov [esp+0x8], eax
	call _Z18NET_CompareBaseAdr8netadr_tS_
	test eax, eax
	jz _Z20SV_AuthorizeIpPacket8netadr_t_10
	mov eax, sv_cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x1
	jle _Z20SV_AuthorizeIpPacket8netadr_t_20
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x4]
_Z20SV_AuthorizeIpPacket8netadr_t_190:
	mov [esp], eax
	call atoi
	xor esi, esi
	mov ecx, svs
	lea edx, [ecx+svs+0x9766644]
	jmp _Z20SV_AuthorizeIpPacket8netadr_t_30
_Z20SV_AuthorizeIpPacket8netadr_t_50:
	add esi, 0x1
	add edx, 0x48
	cmp esi, 0x400
	jz _Z20SV_AuthorizeIpPacket8netadr_t_40
_Z20SV_AuthorizeIpPacket8netadr_t_30:
	cmp eax, [edx]
	jnz _Z20SV_AuthorizeIpPacket8netadr_t_50
	lea edx, [esi+esi*8]
	mov eax, [ecx+0x463804]
	mov [ecx+edx*8+svs+0x976664c], eax
	mov ebx, sv_cmd_args
	mov ecx, [ebx]
	mov edx, [ebx+ecx*4+0x44]
	cmp edx, 0x2
	jg _Z20SV_AuthorizeIpPacket8netadr_t_60
	mov dword [ebp-0x4d0], _cstring_null
	cmp edx, 0x3
	jg _Z20SV_AuthorizeIpPacket8netadr_t_70
_Z20SV_AuthorizeIpPacket8netadr_t_120:
	mov dword [ebp-0x4cc], _cstring_null
	cmp edx, 0x5
	jg _Z20SV_AuthorizeIpPacket8netadr_t_80
_Z20SV_AuthorizeIpPacket8netadr_t_130:
	mov edi, _cstring_null
	mov dword [esp+0x4], _cstring_deny
	mov eax, [ebp-0x4d0]
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z20SV_AuthorizeIpPacket8netadr_t_90
_Z20SV_AuthorizeIpPacket8netadr_t_140:
	mov edi, [ebp-0x4cc]
	test edi, edi
	jz _Z20SV_AuthorizeIpPacket8netadr_t_100
	mov edx, [ebp-0x4cc]
	cmp byte [edx], 0x0
	jnz _Z20SV_AuthorizeIpPacket8netadr_t_110
_Z20SV_AuthorizeIpPacket8netadr_t_100:
	lea eax, [esi+esi*8]
	shl eax, 0x3
	add eax, svs
	add eax, 0xb212a80
	mov ecx, [eax+0x38]
	mov [ebp-0xa8], ecx
	mov edx, [eax+0x3c]
	mov [ebp-0xa4], edx
	mov eax, [eax+0x40]
	mov [ebp-0xa0], eax
	mov dword [esp+0x10], _cstring_errorexe_err_cdk
_Z20SV_AuthorizeIpPacket8netadr_t_210:
	mov [esp+0x4], ecx
	mov [esp+0x8], edx
	mov [esp+0xc], eax
	mov dword [esp], 0x1
	call _Z18NET_OutOfBandPrint8netsrc_t8netadr_tPKc
_Z20SV_AuthorizeIpPacket8netadr_t_240:
	lea edx, [esi+esi*8]
	mov eax, svs
	lea edx, [eax+edx*8+svs+0x9766638]
	mov dword [esp+0x8], 0x48
	mov dword [esp+0x4], 0x0
	mov [esp], edx
	call memset
_Z20SV_AuthorizeIpPacket8netadr_t_180:
	add esp, 0x4ec
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z20SV_AuthorizeIpPacket8netadr_t_60:
	mov eax, [ebx+ecx*4+0x64]
	mov eax, [eax+0x8]
	mov [ebp-0x4d0], eax
	cmp edx, 0x3
	jle _Z20SV_AuthorizeIpPacket8netadr_t_120
_Z20SV_AuthorizeIpPacket8netadr_t_70:
	mov eax, [ebx+ecx*4+0x64]
	mov eax, [eax+0xc]
	mov [ebp-0x4cc], eax
	cmp edx, 0x5
	jle _Z20SV_AuthorizeIpPacket8netadr_t_130
_Z20SV_AuthorizeIpPacket8netadr_t_80:
	mov eax, [ebx+ecx*4+0x64]
	mov edi, [eax+0x14]
	mov dword [esp+0x4], _cstring_deny
	mov eax, [ebp-0x4d0]
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z20SV_AuthorizeIpPacket8netadr_t_140
_Z20SV_AuthorizeIpPacket8netadr_t_90:
	lea eax, [esi+esi*8]
	shl eax, 0x3
	mov [ebp-0x4d4], eax
	mov eax, svs
	mov [ebp-0x4d8], eax
	mov edx, [ebp-0x4d4]
	lea ebx, [edx+eax+svs+0x976665c]
	mov [esp+0x4], edi
	mov [esp], ebx
	call strcmp
	test eax, eax
	jnz _Z20SV_AuthorizeIpPacket8netadr_t_150
	mov dword [esp+0x4], _cstring_demo
	mov ecx, [ebp-0x4d0]
	mov [esp], ecx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z20SV_AuthorizeIpPacket8netadr_t_160
	mov dword [esp], _cstring_fs_restrict
	call _Z12Dvar_GetBoolPKc
	test al, al
	jz _Z20SV_AuthorizeIpPacket8netadr_t_170
	mov eax, [ebp-0x4d4]
	mov edx, [ebp-0x4d8]
	lea ebx, [eax+edx+svs+0x9766600]
	mov eax, [ebx+0x44]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_challengerespons
	call _Z2vaPKcz
	mov ecx, [ebx+0x38]
	mov [ebp-0x54], ecx
	mov esi, [ebx+0x3c]
	mov [ebp-0x50], esi
	mov edx, [ebx+0x40]
	mov [ebp-0x4c], edx
_Z20SV_AuthorizeIpPacket8netadr_t_300:
	mov [esp+0x10], eax
	mov [esp+0x4], ecx
	mov [esp+0x8], esi
	mov [esp+0xc], edx
	mov dword [esp], 0x1
	call _Z18NET_OutOfBandPrint8netsrc_t8netadr_tPKc
	jmp _Z20SV_AuthorizeIpPacket8netadr_t_180
_Z20SV_AuthorizeIpPacket8netadr_t_10:
	mov dword [esp+0x4], _cstring_sv_authorizeippa
	mov dword [esp], 0xf
	call _Z10Com_PrintfiPKcz
	add esp, 0x4ec
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z20SV_AuthorizeIpPacket8netadr_t_150:
	mov [esp+0xc], edi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_rejecting_connec
	mov dword [esp], 0xf
	call _Z10Com_PrintfiPKcz
	mov ecx, [ebp-0x4d4]
	mov edx, [ebp-0x4d8]
	lea eax, [ecx+edx+svs+0x9766600]
	mov ecx, [eax+0x38]
	mov [ebp-0x60], ecx
	mov edx, [eax+0x3c]
	mov [ebp-0x5c], edx
	mov eax, [eax+0x40]
	mov [ebp-0x58], eax
	mov dword [esp+0x10], _cstring_errorexe_err_bad
	mov [esp+0x4], ecx
	mov [esp+0x8], edx
_Z20SV_AuthorizeIpPacket8netadr_t_290:
	mov [esp+0xc], eax
	mov dword [esp], 0x1
	call _Z18NET_OutOfBandPrint8netsrc_t8netadr_tPKc
	mov ecx, [ebp-0x4d4]
	mov edx, [ebp-0x4d8]
	lea eax, [ecx+edx+svs+0x9766638]
	mov dword [esp+0x8], 0x48
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call memset
	add esp, 0x4ec
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z20SV_AuthorizeIpPacket8netadr_t_20:
	mov eax, _cstring_null
	jmp _Z20SV_AuthorizeIpPacket8netadr_t_190
_Z20SV_AuthorizeIpPacket8netadr_t_110:
	mov dword [esp+0x4], _cstring_client_unknown_t
	mov [esp], edx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z20SV_AuthorizeIpPacket8netadr_t_200
	lea eax, [esi+esi*8]
	shl eax, 0x3
	add eax, svs
	add eax, 0xb212a80
	mov ecx, [eax+0x38]
	mov [ebp-0x9c], ecx
	mov edx, [eax+0x3c]
	mov [ebp-0x98], edx
	mov eax, [eax+0x40]
	mov [ebp-0x94], eax
	mov dword [esp+0x10], _cstring_needcdkey
	jmp _Z20SV_AuthorizeIpPacket8netadr_t_210
_Z20SV_AuthorizeIpPacket8netadr_t_200:
	mov dword [esp+0x4], _cstring_bad_cdkey
	mov eax, [ebp-0x4cc]
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z20SV_AuthorizeIpPacket8netadr_t_220
	mov dword [esp+0x4], _cstring_invalid_cdkey
	mov edx, [ebp-0x4cc]
	mov [esp], edx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z20SV_AuthorizeIpPacket8netadr_t_230
	lea eax, [esi+esi*8]
	shl eax, 0x3
	add eax, svs
	add eax, 0xb212a80
	mov edx, [eax+0x38]
	mov [ebp-0x84], edx
	mov ecx, [eax+0x3c]
	mov [ebp-0x80], ecx
	mov eax, [eax+0x40]
	mov [ebp-0x7c], eax
	mov dword [esp+0x10], _cstring_errorexe_err_cdk
_Z20SV_AuthorizeIpPacket8netadr_t_280:
	mov [esp+0x4], edx
	mov [esp+0x8], ecx
	mov [esp+0xc], eax
	mov dword [esp], 0x1
	call _Z18NET_OutOfBandPrint8netsrc_t8netadr_tPKc
	jmp _Z20SV_AuthorizeIpPacket8netadr_t_240
_Z20SV_AuthorizeIpPacket8netadr_t_160:
	mov dword [esp+0x4], _cstring_accept
	mov ecx, [ebp-0x4d0]
	mov [esp], ecx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z20SV_AuthorizeIpPacket8netadr_t_250
	mov ebx, [ebp-0x4cc]
	test ebx, ebx
	jz _Z20SV_AuthorizeIpPacket8netadr_t_260
	mov eax, [ebp-0x4cc]
	cmp byte [eax], 0x0
	jnz _Z20SV_AuthorizeIpPacket8netadr_t_270
_Z20SV_AuthorizeIpPacket8netadr_t_260:
	mov edx, [ebp-0x4d4]
	mov ecx, [ebp-0x4d8]
	lea eax, [edx+ecx+svs+0x9766600]
	mov edx, [eax+0x38]
	mov [ebp-0x30], edx
	mov ecx, [eax+0x3c]
	mov [ebp-0x2c], ecx
	mov eax, [eax+0x40]
	mov [ebp-0x28], eax
_Z20SV_AuthorizeIpPacket8netadr_t_320:
	mov dword [esp+0x10], _cstring_errorexe_err_bad
	jmp _Z20SV_AuthorizeIpPacket8netadr_t_280
_Z20SV_AuthorizeIpPacket8netadr_t_220:
	lea eax, [esi+esi*8]
	shl eax, 0x3
	add eax, svs
	add eax, 0xb212a80
	mov ecx, [eax+0x38]
	mov [ebp-0x90], ecx
	mov edx, [eax+0x3c]
	mov [ebp-0x8c], edx
	mov eax, [eax+0x40]
	mov [ebp-0x88], eax
	mov dword [esp+0x10], _cstring_needcdkey
	jmp _Z20SV_AuthorizeIpPacket8netadr_t_210
_Z20SV_AuthorizeIpPacket8netadr_t_170:
	mov ecx, [ebp-0x4d4]
	mov edx, [ebp-0x4d8]
	lea eax, [ecx+edx+svs+0x9766600]
	mov edx, [eax+0x38]
	mov [ebp-0x48], edx
	mov ecx, [eax+0x3c]
	mov [ebp-0x44], ecx
	mov eax, [eax+0x40]
	mov [ebp-0x40], eax
	mov dword [esp+0x10], _cstring_errorexe_err_not
	mov [esp+0x4], edx
	mov [esp+0x8], ecx
	jmp _Z20SV_AuthorizeIpPacket8netadr_t_290
_Z20SV_AuthorizeIpPacket8netadr_t_250:
	mov eax, [ebp-0x4d4]
	add eax, [ebp-0x4d8]
	mov esi, [eax+svs+0x9766658]
	test esi, esi
	jnz _Z20SV_AuthorizeIpPacket8netadr_t_180
	lea ebx, [eax+svs+0x9766600]
	mov eax, [ebx+0x44]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_challengerespons
	call _Z2vaPKcz
	mov ecx, [ebx+0x38]
	mov [ebp-0x3c], ecx
	mov esi, [ebx+0x3c]
	mov [ebp-0x38], esi
	mov edx, [ebx+0x40]
	mov [ebp-0x34], edx
	jmp _Z20SV_AuthorizeIpPacket8netadr_t_300
_Z20SV_AuthorizeIpPacket8netadr_t_230:
	mov dword [esp+0x4], _cstring_banned_cdkey
	mov ecx, [ebp-0x4cc]
	mov [esp], ecx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z20SV_AuthorizeIpPacket8netadr_t_310
	lea eax, [esi+esi*8]
	shl eax, 0x3
	add eax, svs
	add eax, 0xb212a80
	mov edx, [eax+0x38]
	mov [ebp-0x78], edx
	mov ecx, [eax+0x3c]
	mov [ebp-0x74], ecx
	mov eax, [eax+0x40]
	mov [ebp-0x70], eax
	jmp _Z20SV_AuthorizeIpPacket8netadr_t_320
_Z20SV_AuthorizeIpPacket8netadr_t_40:
	mov dword [esp+0x4], _cstring_sv_authorizeippa1
	mov dword [esp], 0xf
	call _Z10Com_PrintfiPKcz
	jmp _Z20SV_AuthorizeIpPacket8netadr_t_180
_Z20SV_AuthorizeIpPacket8netadr_t_310:
	lea eax, [esi+esi*8]
	shl eax, 0x3
	add eax, svs
	add eax, 0xb212a80
	mov edx, [eax+0x38]
	mov [ebp-0x6c], edx
	mov ecx, [eax+0x3c]
	mov [ebp-0x68], ecx
	mov eax, [eax+0x40]
	mov [ebp-0x64], eax
	jmp _Z20SV_AuthorizeIpPacket8netadr_t_320
_Z20SV_AuthorizeIpPacket8netadr_t_270:
	mov eax, [ebp-0x4cc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_errors
	lea ebx, [ebp-0x4c0]
	mov [esp], ebx
	call sprintf
	mov edx, [ebp-0x4d4]
	mov ecx, [ebp-0x4d8]
	lea eax, [edx+ecx+svs+0x9766600]
	mov edx, [eax+0x38]
	mov [ebp-0x24], edx
	mov ecx, [eax+0x3c]
	mov [ebp-0x20], ecx
	mov eax, [eax+0x40]
	mov [ebp-0x1c], eax
	mov [esp+0x10], ebx
	jmp _Z20SV_AuthorizeIpPacket8netadr_t_280


;SV_WWWRedirectClient(client_t*, msg_t*)
_Z20SV_WWWRedirectClientP8client_tP5msg_t:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0x8]
	mov esi, [ebp+0xc]
	lea eax, [edi+0x2129c]
	mov [esp+0x8], eax
	mov eax, sv_wwwBaseURL
	mov eax, [eax]
	mov eax, [eax+0xc]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_ss
	call _Z2vaPKcz
	lea ebx, [edi+0x2133c]
	mov dword [esp+0x8], 0x100
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z10I_strncpyzPcPKci
	mov [esp+0xc], ebx
	lea eax, [edi+0x21288]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_redirecting_clie
	mov dword [esp], 0xf
	call _Z10Com_PrintfiPKcz
	mov dword [edi+0x21440], 0x1
	mov dword [esp+0x4], 0x5
	mov [esp], esi
	call _Z13MSG_WriteByteP5msg_ti
	mov dword [esp+0x4], 0xffffffff
	mov [esp], esi
	call _Z13MSG_WriteLongP5msg_ti
	mov [esp+0x4], ebx
	mov [esp], esi
	call _Z15MSG_WriteStringP5msg_tPKc
	mov eax, [edi+0x212e0]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z13MSG_WriteLongP5msg_ti
	mov eax, sv_wwwDlDisconnected
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	setnz al
	movzx eax, al
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z13MSG_WriteLongP5msg_ti
	mov dword [edi+0x21298], 0x0
	mov eax, [edi+0x212dc]
	test eax, eax
	jz _Z20SV_WWWRedirectClientP8client_tP5msg_t_10
	mov [esp], eax
	call _Z13FS_FCloseFilei
_Z20SV_WWWRedirectClientP8client_tP5msg_t_10:
	mov dword [edi+0x212dc], 0x0
	mov byte [edi+0x2129c], 0x0
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;SV_SendClientGameState(client_t*)
_Z22SV_SendClientGameStateP8client_t:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x19c
	mov eax, [ebp+0x8]
	mov ecx, [eax]
	test ecx, ecx
	jz _Z22SV_SendClientGameStateP8client_t_10
	mov edx, [eax+0x40]
	test edx, edx
	jnz _Z22SV_SendClientGameStateP8client_t_20
	mov edx, [ebp+0x8]
_Z22SV_SendClientGameStateP8client_t_210:
	mov ebx, [edx+0xa0d1c]
	test ebx, ebx
	jz _Z22SV_SendClientGameStateP8client_t_30
_Z22SV_SendClientGameStateP8client_t_170:
	mov eax, edx
	add eax, 0xa3631
	mov dword [esp+0x8], 0x2000
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call memset
	mov ebx, [ebp+0x8]
	mov byte [ebx+0xa5631], 0x7f
	mov edx, [ebp+0x8]
	movzx eax, byte [edx+0xa5631]
	cmp al, 0x7f
	jnz _Z22SV_SendClientGameStateP8client_t_40
_Z22SV_SendClientGameStateP8client_t_180:
	call _Z24SV_SetServerStaticHeaderv
	mov ebx, [ebp+0x8]
	add ebx, 0x21288
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_sv_sendclientgam
	mov dword [esp], 0xf
	call _Z11Com_DPrintfiPKcz
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_going_from_cs_co
	mov dword [esp], 0xf
	call _Z11Com_DPrintfiPKcz
	mov eax, [ebp+0x8]
	mov dword [eax], 0x3
	mov dword [eax+0x804f4], 0x0
	mov edx, [ebp+0x8]
	mov eax, [edx+0x10]
	mov [edx+0x20e58], eax
	mov dword [esp+0x8], 0x20000
	mov dword [esp+0x4], _ZZ22SV_SendClientGameStateP8client_tE9msgBuffer
	lea ebx, [ebp-0x5c]
	mov [esp], ebx
	call _Z8MSG_InitP5msg_tPhi
	mov [esp], ebx
	call _Z29MSG_ClearLastReferencedEntityP5msg_t
	mov edx, [ebp+0x8]
	mov eax, [edx+0x20e80]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z13MSG_WriteLongP5msg_ti
	mov [esp+0x4], ebx
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z31SV_UpdateServerCommandsToClientP8client_tP5msg_t
	mov dword [esp+0x4], 0x1
	mov [esp], ebx
	call _Z13MSG_WriteByteP5msg_ti
	mov edx, [ebp+0x8]
	mov eax, [edx+0x20e48]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z13MSG_WriteLongP5msg_ti
	mov dword [esp+0x4], 0x2
	mov [esp], ebx
	call _Z13MSG_WriteByteP5msg_ti
	mov dword [ebp-0x170], 0x0
	mov dword [ebp-0x174], 0x0
	xor edi, edi
	mov ecx, sv
	mov [ebp-0x168], ecx
	jmp _Z22SV_SendClientGameStateP8client_t_50
_Z22SV_SendClientGameStateP8client_t_70:
	mov ebx, [ebp-0x168]
	movzx eax, word [ebx+0x81a]
	mov edx, [ebp-0x170]
	add edx, 0x1
	cmp ax, [ecx+0x818]
	cmovz edx, [ebp-0x170]
	mov [ebp-0x170], edx
	add edi, 0x1
	add dword [ebp-0x168], 0x2
	cmp edi, 0x98a
	jz _Z22SV_SendClientGameStateP8client_t_60
_Z22SV_SendClientGameStateP8client_t_90:
	mov ecx, sv
_Z22SV_SendClientGameStateP8client_t_50:
	mov esi, constantConfigStrings
	mov ebx, [ebp-0x174]
	shl ebx, 0x4
	cmp [ebx+esi], edi
	jnz _Z22SV_SendClientGameStateP8client_t_70
	movzx eax, word [ecx+edi*2+0x81a]
	mov [esp], eax
	call _Z18SL_ConvertToStringj
	mov [ebp-0x164], eax
	cmp dword [ebx+esi], 0x334
	jg _Z22SV_SendClientGameStateP8client_t_80
	mov edx, eax
_Z22SV_SendClientGameStateP8client_t_240:
	mov eax, [ebp-0x174]
	shl eax, 0x4
	add eax, constantConfigStrings
	mov [esp+0x4], edx
	mov eax, [eax+0x4]
	mov [esp], eax
	call strcmp
	cmp eax, 0x1
	sbb dword [ebp-0x170], 0xffffffff
_Z22SV_SendClientGameStateP8client_t_230:
	add dword [ebp-0x174], 0x1
	add edi, 0x1
	add dword [ebp-0x168], 0x2
	cmp edi, 0x98a
	jnz _Z22SV_SendClientGameStateP8client_t_90
_Z22SV_SendClientGameStateP8client_t_60:
	mov eax, [ebp-0x170]
	mov [esp+0x4], eax
	lea edx, [ebp-0x5c]
	mov [esp], edx
	call _Z14MSG_WriteShortP5msg_ti
	mov dword [ebp-0x15c], 0x0
	xor esi, esi
	mov dword [ebp-0x160], 0xffffffff
	mov ebx, sv
	mov [ebp-0x16c], ebx
	mov ecx, ebx
	jmp _Z22SV_SendClientGameStateP8client_t_100
_Z22SV_SendClientGameStateP8client_t_140:
	mov edx, [ebp-0x16c]
	movzx eax, word [edx+0x81a]
	cmp ax, [ecx+0x818]
	jz _Z22SV_SendClientGameStateP8client_t_110
_Z22SV_SendClientGameStateP8client_t_160:
	movzx eax, ax
	mov [esp], eax
	call _Z18SL_ConvertToStringj
	mov ebx, eax
	mov eax, [ebp-0x160]
	add eax, 0x1
	cmp eax, esi
	jz _Z22SV_SendClientGameStateP8client_t_120
	lea edx, [ebp-0x5c]
	mov [esp], edx
	call _Z13MSG_WriteBit0P5msg_t
	mov dword [esp+0x8], 0xc
	mov [esp+0x4], esi
	lea eax, [ebp-0x5c]
	mov [esp], eax
	call _Z13MSG_WriteBitsP5msg_tii
_Z22SV_SendClientGameStateP8client_t_250:
	mov [esp+0x4], ebx
	lea edx, [ebp-0x5c]
	mov [esp], edx
	call _Z18MSG_WriteBigStringP5msg_tPKc
	mov [ebp-0x160], esi
_Z22SV_SendClientGameStateP8client_t_110:
	add esi, 0x1
	add dword [ebp-0x16c], 0x2
	cmp esi, 0x98a
	jz _Z22SV_SendClientGameStateP8client_t_130
_Z22SV_SendClientGameStateP8client_t_270:
	mov ecx, sv
_Z22SV_SendClientGameStateP8client_t_100:
	mov ebx, constantConfigStrings
	mov eax, [ebp-0x15c]
	shl eax, 0x4
	mov edi, [eax+ebx]
	cmp edi, esi
	jnz _Z22SV_SendClientGameStateP8client_t_140
	add dword [ebp-0x15c], 0x1
	movzx eax, word [ecx+esi*2+0x81a]
	mov [esp], eax
	call _Z18SL_ConvertToStringj
	mov edx, eax
	cmp esi, 0x334
	jg _Z22SV_SendClientGameStateP8client_t_150
	mov eax, [ebp-0x15c]
	shl eax, 0x4
	mov [esp+0x4], edx
	mov eax, [eax+ebx-0xc]
	mov [esp], eax
	call strcmp
	test eax, eax
	jz _Z22SV_SendClientGameStateP8client_t_110
_Z22SV_SendClientGameStateP8client_t_260:
	mov ebx, sv
	movzx eax, word [ebx+edi*2+0x81a]
	cmp ax, [ebx+0x818]
	jnz _Z22SV_SendClientGameStateP8client_t_160
	lea eax, [ebp-0x5c]
	mov [esp], eax
	call _Z13MSG_WriteBit0P5msg_t
	mov dword [esp+0x8], 0xc
	mov [esp+0x4], edi
	lea edx, [ebp-0x5c]
	mov [esp], edx
	call _Z13MSG_WriteBitsP5msg_tii
	mov dword [esp+0x4], _cstring_null
	lea eax, [ebp-0x5c]
	mov [esp], eax
	call _Z18MSG_WriteBigStringP5msg_tPKc
	mov [ebp-0x160], edi
	mov ecx, ebx
	jmp _Z22SV_SendClientGameStateP8client_t_140
_Z22SV_SendClientGameStateP8client_t_10:
	mov edx, eax
	mov ebx, [edx+0xa0d1c]
	test ebx, ebx
	jnz _Z22SV_SendClientGameStateP8client_t_170
_Z22SV_SendClientGameStateP8client_t_30:
	movzx eax, byte [edx+0xa5631]
	cmp al, 0x7f
	jz _Z22SV_SendClientGameStateP8client_t_180
_Z22SV_SendClientGameStateP8client_t_40:
	test al, al
	jz _Z22SV_SendClientGameStateP8client_t_190
	add esp, 0x19c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z22SV_SendClientGameStateP8client_t_190:
	mov eax, [edx+0x20]
	mov [ebp-0x24], eax
	mov ecx, [edx+0x24]
	mov [ebp-0x20], ecx
	mov edx, [edx+0x28]
	mov [ebp-0x1c], edx
	mov dword [esp+0x10], _cstring_requeststats
	mov [esp+0x4], eax
	mov [esp+0x8], ecx
	mov [esp+0xc], edx
	mov dword [esp], 0x1
	call _Z18NET_OutOfBandPrint8netsrc_t8netadr_tPKc
	add esp, 0x19c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z22SV_SendClientGameStateP8client_t_20:
	lea ebx, [eax+0x10]
_Z22SV_SendClientGameStateP8client_t_200:
	mov [esp+0x4], ebx
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z31SV_Netchan_TransmitNextFragmentP8client_tP9netchan_t
	mov eax, [ebp+0x8]
	mov edi, [eax]
	test edi, edi
	jz _Z22SV_SendClientGameStateP8client_t_10
	mov esi, [eax+0x40]
	test esi, esi
	jnz _Z22SV_SendClientGameStateP8client_t_200
	mov edx, [ebp+0x8]
	jmp _Z22SV_SendClientGameStateP8client_t_210
_Z22SV_SendClientGameStateP8client_t_80:
	mov [esp+0x4], eax
	add ebx, esi
	mov eax, [ebx+0x4]
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z22SV_SendClientGameStateP8client_t_220
	cmp dword [ebx], 0x334
	jg _Z22SV_SendClientGameStateP8client_t_230
	mov edx, [ebp-0x164]
	jmp _Z22SV_SendClientGameStateP8client_t_240
_Z22SV_SendClientGameStateP8client_t_220:
	add dword [ebp-0x170], 0x1
	jmp _Z22SV_SendClientGameStateP8client_t_230
_Z22SV_SendClientGameStateP8client_t_120:
	lea eax, [ebp-0x5c]
	mov [esp], eax
	call _Z13MSG_WriteBit1P5msg_t
	jmp _Z22SV_SendClientGameStateP8client_t_250
_Z22SV_SendClientGameStateP8client_t_150:
	mov [esp+0x4], eax
	mov eax, [ebp-0x15c]
	shl eax, 0x4
	mov eax, [eax+ebx-0xc]
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z22SV_SendClientGameStateP8client_t_260
	add esi, 0x1
	add dword [ebp-0x16c], 0x2
	cmp esi, 0x98a
	jnz _Z22SV_SendClientGameStateP8client_t_270
_Z22SV_SendClientGameStateP8client_t_130:
	mov dword [esp+0x8], 0xf4
	mov dword [esp+0x4], 0x0
	lea ebx, [ebp-0x150]
	mov [esp], ebx
	call memset
	mov eax, svs
	add eax, 0x46380c
	mov edx, [ebp+0x8]
	sub edx, eax
	mov eax, edx
	sar eax, 0x2
	imul eax, eax, 0x4315b545
	mov [ebp-0x178], eax
	xor edi, edi
	mov ebx, sv
	mov [ebp-0x17c], ebx
	add ebx, 0x1b30
	jmp _Z22SV_SendClientGameStateP8client_t_280
_Z22SV_SendClientGameStateP8client_t_300:
	add edi, 0x1
	add ebx, 0x178
	cmp edi, 0x400
	jz _Z22SV_SendClientGameStateP8client_t_290
_Z22SV_SendClientGameStateP8client_t_280:
	lea esi, [ebx+0x4]
	mov ecx, [ebx+0x4]
	test ecx, ecx
	jz _Z22SV_SendClientGameStateP8client_t_300
	mov dword [esp+0x4], 0x3
	lea eax, [ebp-0x5c]
	mov [esp], eax
	call _Z13MSG_WriteByteP5msg_ti
	mov edx, [ebp-0x178]
	mov [ebp-0x34], edx
	mov dword [ebp-0x2c], 0xffffffff
	mov byte [ebp-0x28], 0x1
	mov dword [esp+0x14], 0x1
	mov [esp+0x10], esi
	lea eax, [ebp-0x150]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x0
	lea edx, [ebp-0x5c]
	mov [esp+0x4], edx
	lea eax, [ebp-0x34]
	mov [esp], eax
	call _Z15MSG_WriteEntityP14SnapshotInfo_sP5msg_tiPK13entityState_sS5_i
	mov byte [ebp-0x28], 0x0
	add edi, 0x1
	add ebx, 0x178
	cmp edi, 0x400
	jnz _Z22SV_SendClientGameStateP8client_t_280
_Z22SV_SendClientGameStateP8client_t_290:
	mov dword [esp+0x4], 0x7
	lea edx, [ebp-0x5c]
	mov [esp], edx
	call _Z13MSG_WriteByteP5msg_ti
	mov ebx, [ebp-0x178]
	mov [esp+0x4], ebx
	lea eax, [ebp-0x5c]
	mov [esp], eax
	call _Z13MSG_WriteLongP5msg_ti
	mov edx, [ebp-0x17c]
	mov eax, [edx+0x14]
	mov [esp+0x4], eax
	lea ebx, [ebp-0x5c]
	mov [esp], ebx
	call _Z13MSG_WriteLongP5msg_ti
	mov dword [esp+0x4], 0x7
	mov [esp], ebx
	call _Z13MSG_WriteByteP5msg_ti
	mov edx, [ebp-0x178]
	mov [esp+0xc], edx
	mov eax, [ebp-0x48]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_sending_i_bytes_
	mov dword [esp], 0xf
	call _Z11Com_DPrintfiPKcz
	mov ebx, [ebp+0x8]
	mov [esp+0x4], ebx
	lea eax, [ebp-0x5c]
	mov [esp], eax
	call _Z22SV_SendMessageToClientP5msg_tP8client_t
	call _Z24SV_GetServerStaticHeaderv
	add esp, 0x19c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;SV_ExecuteClientMessage(client_t*, msg_t*)
_Z23SV_ExecuteClientMessageP8client_tP5msg_t:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xbc
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	mov dword [esp+0x8], 0x800
	mov dword [esp+0x4], _ZZ23SV_ExecuteClientMessageP8client_tP5msg_tE17msgCompressed_buf
	lea edi, [ebp-0x64]
	mov [esp], edi
	call _Z8MSG_InitP5msg_tPhi
	mov edx, [ebx+0x1c]
	mov eax, [ebx+0x14]
	sub eax, edx
	mov [esp+0x8], eax
	mov dword [esp+0x4], _ZZ23SV_ExecuteClientMessageP8client_tP5msg_tE17msgCompressed_buf
	add edx, [ebx+0x8]
	mov [esp], edx
	call _Z20MSG_ReadBitsCompressPKhPhi
	mov [ebp-0x50], eax
	mov edx, [esi+0xa0d20]
	mov eax, sv_serverId_value
	mov eax, [eax]
	cmp edx, eax
	jz _Z23SV_ExecuteClientMessageP8client_tP5msg_t_10
	mov ecx, [esi+0x21298]
	test ecx, ecx
	jz _Z23SV_ExecuteClientMessageP8client_tP5msg_t_20
_Z23SV_ExecuteClientMessageP8client_tP5msg_t_10:
	mov dword [esp+0x4], 0x3
	mov [esp], edi
	call _Z12MSG_ReadBitsP5msg_ti
	mov ebx, eax
	cmp eax, 0x3
	jz _Z23SV_ExecuteClientMessageP8client_tP5msg_t_30
	cmp eax, 0x2
	jnz _Z23SV_ExecuteClientMessageP8client_tP5msg_t_30
	xor ecx, ecx
	mov edx, edi
	mov eax, esi
	call _Z16SV_ClientCommandP8client_tP5msg_ti
	test eax, eax
	jz _Z23SV_ExecuteClientMessageP8client_tP5msg_t_40
	cmp dword [esi], 0x1
	jnz _Z23SV_ExecuteClientMessageP8client_tP5msg_t_10
_Z23SV_ExecuteClientMessageP8client_tP5msg_t_40:
	add esp, 0xbc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z23SV_ExecuteClientMessageP8client_tP5msg_t_20:
	mov ebx, [esi+0x21440]
	test ebx, ebx
	jnz _Z23SV_ExecuteClientMessageP8client_tP5msg_t_10
	mov ecx, [esi+0x21444]
	test ecx, ecx
	jnz _Z23SV_ExecuteClientMessageP8client_tP5msg_t_10
	and edx, 0xf0
	and eax, 0xf0
	cmp edx, eax
	jnz _Z23SV_ExecuteClientMessageP8client_tP5msg_t_50
	cmp dword [esi], 0x3
	jnz _Z23SV_ExecuteClientMessageP8client_tP5msg_t_40
	lea eax, [esi+0x20e60]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z19SV_ClientEnterWorldP8client_tP9usercmd_s
	jmp _Z23SV_ExecuteClientMessageP8client_tP5msg_t_40
_Z23SV_ExecuteClientMessageP8client_tP5msg_t_30:
	mov eax, sv_pure
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z23SV_ExecuteClientMessageP8client_tP5msg_t_60
_Z23SV_ExecuteClientMessageP8client_tP5msg_t_90:
	test ebx, ebx
	jz _Z23SV_ExecuteClientMessageP8client_tP5msg_t_70
	cmp ebx, 0x1
	jz _Z23SV_ExecuteClientMessageP8client_tP5msg_t_80
	cmp ebx, 0x3
	jz _Z23SV_ExecuteClientMessageP8client_tP5msg_t_40
	mov eax, svs
	add eax, 0x46380c
	sub esi, eax
	sar esi, 0x2
	imul eax, esi, 0x4315b545
	mov [esp+0xc], eax
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_warning_bad_comm
	mov dword [esp], 0xf
	call _Z16Com_PrintWarningiPKcz
	add esp, 0xbc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z23SV_ExecuteClientMessageP8client_tP5msg_t_60:
	cmp dword [esi+0x804f4], 0x2
	jnz _Z23SV_ExecuteClientMessageP8client_tP5msg_t_90
	cmp dword [esi], 0x3
	jle _Z23SV_ExecuteClientMessageP8client_tP5msg_t_90
	mov dword [esi+0x2145c], 0xffffffff
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], _cstring_exe_unpureclient
	mov [esp], esi
	call _Z13SV_DropClientP8client_tPKch
	mov dword [esi], 0x4
	mov [esp], esi
	call _Z22SV_BuildClientSnapshotP8client_t
	call _Z24SV_SetServerStaticHeaderv
	lea eax, [ebp-0x8c]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z22SV_BeginClientSnapshotP8client_tP5msg_t
	mov eax, [esi]
	cmp eax, 0x4
	jz _Z23SV_ExecuteClientMessageP8client_tP5msg_t_100
	sub eax, 0x1
	jz _Z23SV_ExecuteClientMessageP8client_tP5msg_t_100
_Z23SV_ExecuteClientMessageP8client_tP5msg_t_140:
	lea eax, [ebp-0x8c]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z20SV_EndClientSnapshotP8client_tP5msg_t
	call _Z24SV_GetServerStaticHeaderv
	mov dword [esi], 0x1
	jmp _Z23SV_ExecuteClientMessageP8client_tP5msg_t_90
_Z23SV_ExecuteClientMessageP8client_tP5msg_t_50:
	mov dword [esp+0x4], 0x3
	mov [esp], edi
	call _Z12MSG_ReadBitsP5msg_ti
	cmp eax, 0x3
	jz _Z23SV_ExecuteClientMessageP8client_tP5msg_t_110
	cmp eax, 0x2
	jnz _Z23SV_ExecuteClientMessageP8client_tP5msg_t_110
	mov ecx, 0x1
	mov edx, edi
	mov eax, esi
	call _Z16SV_ClientCommandP8client_tP5msg_ti
	test eax, eax
	jz _Z23SV_ExecuteClientMessageP8client_tP5msg_t_40
	cmp dword [esi], 0x1
	jnz _Z23SV_ExecuteClientMessageP8client_tP5msg_t_50
	jmp _Z23SV_ExecuteClientMessageP8client_tP5msg_t_40
_Z23SV_ExecuteClientMessageP8client_tP5msg_t_70:
	mov dword [esp+0x8], 0x1
	mov [esp+0x4], edi
	mov [esp], esi
	call _Z11SV_UserMoveP8client_tP5msg_ti
	jmp _Z23SV_ExecuteClientMessageP8client_tP5msg_t_40
_Z23SV_ExecuteClientMessageP8client_tP5msg_t_80:
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], edi
	mov [esp], esi
	call _Z11SV_UserMoveP8client_tP5msg_ti
	jmp _Z23SV_ExecuteClientMessageP8client_tP5msg_t_40
_Z23SV_ExecuteClientMessageP8client_tP5msg_t_110:
	mov eax, [esi+0x20e54]
	cmp eax, [esi+0x20e58]
	jle _Z23SV_ExecuteClientMessageP8client_tP5msg_t_40
	lea eax, [esi+0x21288]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_s__dropped_games
	mov dword [esp], 0xf
	call _Z11Com_DPrintfiPKcz
	mov [esp], esi
	call _Z22SV_SendClientGameStateP8client_t
	movzx edx, word [esi+0x28]
	movzx ecx, byte [esi+0x27]
	movzx ebx, byte [esi+0x26]
	movzx eax, byte [esi+0x25]
	mov [ebp-0x99], al
	movzx eax, byte [esi+0x24]
	mov [ebp-0x9a], al
	mov edi, [esi+0x20]
	mov eax, net_lanauthorize
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z23SV_ExecuteClientMessageP8client_tP5msg_t_120
	mov eax, com_dedicated
	mov eax, [eax]
	cmp dword [eax+0xc], 0x2
	jz _Z23SV_ExecuteClientMessageP8client_tP5msg_t_130
	mov [ebp-0x1c], dx
	mov [ebp-0x1d], cl
	mov [ebp-0x1e], bl
	movzx eax, byte [ebp-0x99]
	mov [ebp-0x1f], al
	movzx eax, byte [ebp-0x9a]
	mov [ebp-0x20], al
	mov [ebp-0x24], edi
	mov [esp], edi
	mov eax, [ebp-0x20]
	mov [esp+0x4], eax
	mov eax, [ebp-0x1c]
	mov [esp+0x8], eax
	call _Z16Sys_IsLANAddress8netadr_t
	test eax, eax
	setz al
	movzx eax, al
_Z23SV_ExecuteClientMessageP8client_tP5msg_t_150:
	test eax, eax
	jz _Z23SV_ExecuteClientMessageP8client_tP5msg_t_40
	mov edi, [esi+0x20]
_Z23SV_ExecuteClientMessageP8client_tP5msg_t_120:
	mov ecx, [esi+0x20e5c]
	mov [ebp-0x3c], edi
	mov ebx, [esi+0x24]
	mov [ebp-0x38], ebx
	mov edx, [esi+0x28]
	mov [ebp-0x34], edx
	lea eax, [esi+0xa0cf8]
	mov [esp+0x10], eax
	mov [esp+0xc], ecx
	mov [esp], edi
	mov [esp+0x4], ebx
	mov [esp+0x8], edx
	call _Z19SV_AuthorizeRequest8netadr_tiPKc
	jmp _Z23SV_ExecuteClientMessageP8client_tP5msg_t_40
_Z23SV_ExecuteClientMessageP8client_tP5msg_t_100:
	lea eax, [ebp-0x8c]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z24SV_WriteSnapshotToClientP8client_tP5msg_t
	jmp _Z23SV_ExecuteClientMessageP8client_tP5msg_t_140
_Z23SV_ExecuteClientMessageP8client_tP5msg_t_130:
	mov [ebp-0x28], dx
	mov [ebp-0x29], cl
	mov [ebp-0x2a], bl
	movzx eax, byte [ebp-0x99]
	mov [ebp-0x2b], al
	movzx eax, byte [ebp-0x9a]
	mov [ebp-0x2c], al
	mov [ebp-0x30], edi
	mov [esp], edi
	mov eax, [ebp-0x2c]
	mov [esp+0x4], eax
	mov eax, [ebp-0x28]
	mov [esp+0x8], eax
	call _Z29Sys_IsLANAddress_IgnoreSubnet8netadr_t
	test eax, eax
	setz al
	movzx eax, al
	jmp _Z23SV_ExecuteClientMessageP8client_tP5msg_t_150
	nop


;SV_FreeClientScriptPers()
_Z23SV_FreeClientScriptPersv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edx, sv_maxclients
	mov eax, [edx]
	mov ecx, [eax+0xc]
	test ecx, ecx
	jle _Z23SV_FreeClientScriptPersv_10
	xor esi, esi
	mov edi, svs
	add edi, 0x46380c
	mov ebx, edi
	mov [ebp-0x1c], edx
_Z23SV_FreeClientScriptPersv_30:
	cmp dword [ebx], 0x1
	jle _Z23SV_FreeClientScriptPersv_20
	mov [esp], edi
	call _Z21SV_FreeClientScriptIdP8client_t
	call _Z14Scr_AllocArrayv
	mov [ebx+0xa0d1a], ax
	mov edx, [ebp-0x1c]
_Z23SV_FreeClientScriptPersv_20:
	add esi, 0x1
	add edi, 0xa5634
	add ebx, 0xa5634
	mov eax, [edx]
	cmp esi, [eax+0xc]
	jl _Z23SV_FreeClientScriptPersv_30
_Z23SV_FreeClientScriptPersv_10:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;SV_RetransmitDownload_f(client_t*)
_Z23SV_RetransmitDownload_fP8client_t:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov eax, sv_cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x1
	jle _Z23SV_RetransmitDownload_fP8client_t_10
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x4]
_Z23SV_RetransmitDownload_fP8client_t_30:
	mov [esp], eax
	call atoi
	cmp eax, [ebx+0x212e8]
	jnz _Z23SV_RetransmitDownload_fP8client_t_20
	mov [ebx+0x212f0], eax
_Z23SV_RetransmitDownload_fP8client_t_20:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z23SV_RetransmitDownload_fP8client_t_10:
	mov eax, _cstring_null
	jmp _Z23SV_RetransmitDownload_fP8client_t_30


;SV_WriteDownloadToClient(client_t*, msg_t*)
_Z24SV_WriteDownloadToClientP8client_tP5msg_t:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x42c
	mov esi, [ebp+0x8]
	cmp byte [esi+0x2129c], 0x0
	jz _Z24SV_WriteDownloadToClientP8client_tP5msg_t_10
	mov edx, [esi+0x21444]
	test edx, edx
	jnz _Z24SV_WriteDownloadToClientP8client_tP5msg_t_10
	mov eax, [esi+0x212dc]
	test eax, eax
	jnz _Z24SV_WriteDownloadToClientP8client_tP5msg_t_20
	mov eax, sv_allowDownload
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z24SV_WriteDownloadToClientP8client_tP5msg_t_30
	lea ebx, [esi+0x2129c]
	mov eax, svs
	add eax, 0x46380c
	mov [esp+0xc], ebx
	mov edx, esi
	sub edx, eax
	mov eax, edx
	sar eax, 0x2
	imul eax, eax, 0x4315b545
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_clientdownload_d3
	mov dword [esp], 0xf
	call _Z10Com_PrintfiPKcz
	mov eax, sv_pure
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z24SV_WriteDownloadToClientP8client_tP5msg_t_40
	mov [esp+0xc], ebx
	mov dword [esp+0x8], _cstring_exe_autodl_serve
	mov dword [esp+0x4], 0x400
	lea ebx, [ebp-0x418]
	mov [esp], ebx
	call _Z11Com_sprintfPciPKcz
_Z24SV_WriteDownloadToClientP8client_tP5msg_t_260:
	mov [esp+0x8], ebx
	mov edi, [ebp+0xc]
	mov [esp+0x4], edi
	mov [esp], esi
	call _Z28SV_WriteDownloadErrorMessageP8client_tP5msg_tPKc
_Z24SV_WriteDownloadToClientP8client_tP5msg_t_10:
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z24SV_WriteDownloadToClientP8client_tP5msg_t_250:
	mov eax, svs
	add eax, 0x46380c
	mov edx, esi
	sub edx, eax
	mov eax, edx
	sar eax, 0x2
	imul edi, eax, 0x4315b545
	mov [esp+0xc], ebx
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_clientdownload_d4
	mov dword [esp], 0xf
	call _Z10Com_PrintfiPKcz
	lea eax, [esi+0x212dc]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z19FS_SV_FOpenFileReadPKcPi
	mov [esi+0x212e0], eax
	test eax, eax
	jle _Z24SV_WriteDownloadToClientP8client_tP5msg_t_50
	mov eax, sv_wwwDownload
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z24SV_WriteDownloadToClientP8client_tP5msg_t_60
_Z24SV_WriteDownloadToClientP8client_tP5msg_t_320:
	mov dword [esi+0x21440], 0x0
	mov dword [esi+0x212f0], 0x0
	mov dword [esi+0x212e8], 0x0
	mov dword [esi+0x212ec], 0x0
	mov dword [esi+0x212e4], 0x0
	mov dword [esi+0x21334], 0x0
_Z24SV_WriteDownloadToClientP8client_tP5msg_t_20:
	mov ecx, [esi+0x212ec]
	mov eax, ecx
	sub eax, [esi+0x212e8]
	cmp eax, 0x7
	jle _Z24SV_WriteDownloadToClientP8client_tP5msg_t_70
	mov ebx, [esi+0x212e4]
_Z24SV_WriteDownloadToClientP8client_tP5msg_t_230:
	cmp ebx, [esi+0x212e0]
	jz _Z24SV_WriteDownloadToClientP8client_tP5msg_t_80
_Z24SV_WriteDownloadToClientP8client_tP5msg_t_290:
	mov ebx, [esi+0x804e8]
	mov edi, sv_maxRate
	mov edx, [edi]
	mov eax, [edx+0xc]
	test eax, eax
	jz _Z24SV_WriteDownloadToClientP8client_tP5msg_t_90
	cmp eax, 0x3e7
	jle _Z24SV_WriteDownloadToClientP8client_tP5msg_t_100
_Z24SV_WriteDownloadToClientP8client_tP5msg_t_340:
	mov eax, [edx+0xc]
	cmp ebx, eax
	cmovg ebx, eax
_Z24SV_WriteDownloadToClientP8client_tP5msg_t_90:
	test ebx, ebx
	jz _Z24SV_WriteDownloadToClientP8client_tP5msg_t_110
	mov ecx, ebx
	imul ecx, [esi+0x804ec]
	mov edx, 0x10624dd3
	mov eax, ecx
	imul edx
	sar edx, 0x6
	mov eax, ecx
	sar eax, 0x1f
	sub edx, eax
	mov eax, edx
	add eax, 0x800
	js _Z24SV_WriteDownloadToClientP8client_tP5msg_t_120
_Z24SV_WriteDownloadToClientP8client_tP5msg_t_350:
	sar eax, 0xb
	jns _Z24SV_WriteDownloadToClientP8client_tP5msg_t_130
_Z24SV_WriteDownloadToClientP8client_tP5msg_t_110:
	mov dword [ebp-0x41c], 0x0
_Z24SV_WriteDownloadToClientP8client_tP5msg_t_370:
	mov ecx, [esi+0x212e8]
	mov edx, [esi+0x212ec]
	cmp ecx, edx
	jz _Z24SV_WriteDownloadToClientP8client_tP5msg_t_10
	mov ebx, svs
	lea eax, [ebx+0x46380c]
	mov edi, esi
	sub edi, eax
	mov eax, edi
	sar eax, 0x2
	imul eax, eax, 0x4315b545
	mov [ebp-0x420], eax
	xor edi, edi
	jmp _Z24SV_WriteDownloadToClientP8client_tP5msg_t_140
_Z24SV_WriteDownloadToClientP8client_tP5msg_t_180:
	mov eax, [ebx+0x463804]
	sub eax, [esi+0x21338]
	cmp eax, 0x3e8
	jle _Z24SV_WriteDownloadToClientP8client_tP5msg_t_10
	mov [esi+0x212f0], ecx
	mov ebx, ecx
	and ebx, 0x80000007
	js _Z24SV_WriteDownloadToClientP8client_tP5msg_t_150
_Z24SV_WriteDownloadToClientP8client_tP5msg_t_190:
	mov dword [esp+0x4], 0x5
	mov edx, [ebp+0xc]
	mov [esp], edx
	call _Z13MSG_WriteByteP5msg_ti
	mov eax, [esi+0x212f0]
	mov [esp+0x4], eax
	mov eax, [ebp+0xc]
	mov [esp], eax
	call _Z13MSG_WriteLongP5msg_ti
	mov eax, [esi+0x212f0]
	test eax, eax
	jz _Z24SV_WriteDownloadToClientP8client_tP5msg_t_160
_Z24SV_WriteDownloadToClientP8client_tP5msg_t_280:
	mov eax, [esi+ebx*4+0x21314]
	mov [esp+0x4], eax
	mov eax, [ebp+0xc]
	mov [esp], eax
	call _Z14MSG_WriteShortP5msg_ti
	mov eax, [esi+ebx*4+0x21314]
	test eax, eax
	jnz _Z24SV_WriteDownloadToClientP8client_tP5msg_t_170
_Z24SV_WriteDownloadToClientP8client_tP5msg_t_270:
	mov eax, [esi+0x212f0]
	mov [esp+0xc], eax
	mov eax, [ebp-0x420]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_clientdownload_d5
	mov dword [esp], 0xf
	call _Z11Com_DPrintfiPKcz
	add dword [esi+0x212f0], 0x1
	mov ebx, svs
	mov eax, [ebx+0x463804]
	mov [esi+0x21338], eax
	cmp [ebp-0x41c], edi
	jz _Z24SV_WriteDownloadToClientP8client_tP5msg_t_10
	mov ecx, [esi+0x212e8]
	mov edx, [esi+0x212ec]
	add edi, 0x1
	cmp edx, ecx
	jz _Z24SV_WriteDownloadToClientP8client_tP5msg_t_10
_Z24SV_WriteDownloadToClientP8client_tP5msg_t_140:
	cmp edx, [esi+0x212f0]
	jz _Z24SV_WriteDownloadToClientP8client_tP5msg_t_180
	mov ebx, [esi+0x212f0]
	and ebx, 0x80000007
	jns _Z24SV_WriteDownloadToClientP8client_tP5msg_t_190
_Z24SV_WriteDownloadToClientP8client_tP5msg_t_150:
	sub ebx, 0x1
	or ebx, 0xfffffff8
	add ebx, 0x1
	jmp _Z24SV_WriteDownloadToClientP8client_tP5msg_t_190
_Z24SV_WriteDownloadToClientP8client_tP5msg_t_70:
	mov eax, [esi+0x212e4]
	cmp eax, [esi+0x212e0]
	jnz _Z24SV_WriteDownloadToClientP8client_tP5msg_t_200
	jmp _Z24SV_WriteDownloadToClientP8client_tP5msg_t_80
_Z24SV_WriteDownloadToClientP8client_tP5msg_t_240:
	mov eax, [esi+ebx*4+0x212f4]
	test eax, eax
	jz _Z24SV_WriteDownloadToClientP8client_tP5msg_t_210
_Z24SV_WriteDownloadToClientP8client_tP5msg_t_310:
	mov eax, [esi+0x212dc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x800
	mov eax, [esi+ebx*4+0x212f4]
	mov [esp], eax
	call _Z7FS_ReadPvii
	mov [esi+ebx*4+0x21314], eax
	test eax, eax
	js _Z24SV_WriteDownloadToClientP8client_tP5msg_t_220
	mov edx, eax
	add edx, [esi+0x212e4]
	mov ebx, edx
	mov [esi+0x212e4], edx
	mov ecx, [esi+0x212ec]
	add ecx, 0x1
	mov [esi+0x212ec], ecx
	mov eax, ecx
	sub eax, [esi+0x212e8]
	cmp eax, 0x7
	jg _Z24SV_WriteDownloadToClientP8client_tP5msg_t_230
	cmp edx, [esi+0x212e0]
	jz _Z24SV_WriteDownloadToClientP8client_tP5msg_t_80
_Z24SV_WriteDownloadToClientP8client_tP5msg_t_200:
	mov ebx, ecx
	and ebx, 0x80000007
	jns _Z24SV_WriteDownloadToClientP8client_tP5msg_t_240
	sub ebx, 0x1
	or ebx, 0xfffffff8
	add ebx, 0x1
	jmp _Z24SV_WriteDownloadToClientP8client_tP5msg_t_240
_Z24SV_WriteDownloadToClientP8client_tP5msg_t_30:
	lea ebx, [esi+0x2129c]
	mov dword [esp+0x4], _cstring_main
	mov [esp], ebx
	call _Z8FS_iwIwdPKcPc
	test eax, eax
	jz _Z24SV_WriteDownloadToClientP8client_tP5msg_t_250
	mov eax, svs
	add eax, 0x46380c
	mov [esp+0xc], ebx
	mov edx, esi
	sub edx, eax
	mov eax, edx
	sar eax, 0x2
	imul eax, eax, 0x4315b545
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_clientdownload_d6
	mov dword [esp], 0xf
	call _Z10Com_PrintfiPKcz
	mov [esp+0xc], ebx
	mov dword [esp+0x8], _cstring_exe_cantautodlga
	mov dword [esp+0x4], 0x400
	lea ebx, [ebp-0x418]
	mov [esp], ebx
	call _Z11Com_sprintfPciPKcz
	jmp _Z24SV_WriteDownloadToClientP8client_tP5msg_t_260
_Z24SV_WriteDownloadToClientP8client_tP5msg_t_170:
	mov [esp+0x8], eax
	mov eax, [esi+ebx*4+0x212f4]
	mov [esp+0x4], eax
	mov edx, [ebp+0xc]
	mov [esp], edx
	call _Z13MSG_WriteDataP5msg_tPKvi
	jmp _Z24SV_WriteDownloadToClientP8client_tP5msg_t_270
_Z24SV_WriteDownloadToClientP8client_tP5msg_t_160:
	mov eax, [esi+0x212e0]
	mov [esp+0x4], eax
	mov edx, [ebp+0xc]
	mov [esp], edx
	call _Z13MSG_WriteLongP5msg_ti
	jmp _Z24SV_WriteDownloadToClientP8client_tP5msg_t_280
_Z24SV_WriteDownloadToClientP8client_tP5msg_t_80:
	mov eax, [esi+0x21334]
	test eax, eax
	jnz _Z24SV_WriteDownloadToClientP8client_tP5msg_t_290
	mov edx, [esi+0x212ec]
	mov eax, edx
	sub eax, [esi+0x212e8]
	cmp eax, 0x7
	jg _Z24SV_WriteDownloadToClientP8client_tP5msg_t_290
	mov eax, edx
	and eax, 0x80000007
	js _Z24SV_WriteDownloadToClientP8client_tP5msg_t_300
_Z24SV_WriteDownloadToClientP8client_tP5msg_t_360:
	mov dword [esi+eax*4+0x21314], 0x0
	lea eax, [edx+0x1]
	mov [esi+0x212ec], eax
	mov dword [esi+0x21334], 0x1
	jmp _Z24SV_WriteDownloadToClientP8client_tP5msg_t_290
_Z24SV_WriteDownloadToClientP8client_tP5msg_t_40:
	mov [esp+0xc], ebx
	mov dword [esp+0x8], _cstring_exe_autodl_serve1
	mov dword [esp+0x4], 0x400
	lea ebx, [ebp-0x418]
	mov [esp], ebx
	call _Z11Com_sprintfPciPKcz
	jmp _Z24SV_WriteDownloadToClientP8client_tP5msg_t_260
_Z24SV_WriteDownloadToClientP8client_tP5msg_t_210:
	mov dword [esp], 0x800
	call Z_MallocInternal
	mov [esi+ebx*4+0x212f4], eax
	jmp _Z24SV_WriteDownloadToClientP8client_tP5msg_t_310
_Z24SV_WriteDownloadToClientP8client_tP5msg_t_60:
	mov eax, [esi+0x2143c]
	test eax, eax
	jz _Z24SV_WriteDownloadToClientP8client_tP5msg_t_320
	mov eax, [esi+0x21448]
	test eax, eax
	jz _Z24SV_WriteDownloadToClientP8client_tP5msg_t_330
	mov dword [esi+0x21448], 0x0
	jmp _Z24SV_WriteDownloadToClientP8client_tP5msg_t_10
_Z24SV_WriteDownloadToClientP8client_tP5msg_t_100:
	mov dword [esp+0x4], 0x3e8
	mov [esp], edx
	call _Z11Dvar_SetIntPK6dvar_si
	mov edx, [edi]
	jmp _Z24SV_WriteDownloadToClientP8client_tP5msg_t_340
_Z24SV_WriteDownloadToClientP8client_tP5msg_t_120:
	lea eax, [edx+0xfff]
	jmp _Z24SV_WriteDownloadToClientP8client_tP5msg_t_350
_Z24SV_WriteDownloadToClientP8client_tP5msg_t_220:
	mov ebx, [esi+0x212e0]
	mov [esi+0x212e4], ebx
	jmp _Z24SV_WriteDownloadToClientP8client_tP5msg_t_230
_Z24SV_WriteDownloadToClientP8client_tP5msg_t_300:
	sub eax, 0x1
	or eax, 0xfffffff8
	add eax, 0x1
	jmp _Z24SV_WriteDownloadToClientP8client_tP5msg_t_360
_Z24SV_WriteDownloadToClientP8client_tP5msg_t_50:
	mov [esp+0xc], ebx
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_clientdownload_d7
	mov dword [esp], 0xf
	call _Z10Com_PrintfiPKcz
	mov [esp+0xc], ebx
	mov dword [esp+0x8], _cstring_exe_autodl_filen
	mov dword [esp+0x4], 0x400
	lea ebx, [ebp-0x418]
	mov [esp], ebx
	call _Z11Com_sprintfPciPKcz
	jmp _Z24SV_WriteDownloadToClientP8client_tP5msg_t_260
_Z24SV_WriteDownloadToClientP8client_tP5msg_t_330:
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z20SV_WWWRedirectClientP8client_tP5msg_t
	jmp _Z24SV_WriteDownloadToClientP8client_tP5msg_t_10
_Z24SV_WriteDownloadToClientP8client_tP5msg_t_130:
	sub eax, 0x1
	mov [ebp-0x41c], eax
	add eax, 0x1
	jnz _Z24SV_WriteDownloadToClientP8client_tP5msg_t_370
	jmp _Z24SV_WriteDownloadToClientP8client_tP5msg_t_10
	nop


;SV_WriteDownloadErrorMessage(client_t*, msg_t*, char const*)
_Z28SV_WriteDownloadErrorMessageP8client_tP5msg_tPKc:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	mov dword [esp+0x4], 0x5
	mov [esp], ebx
	call _Z13MSG_WriteByteP5msg_ti
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call _Z14MSG_WriteShortP5msg_ti
	mov dword [esp+0x4], 0xffffffff
	mov [esp], ebx
	call _Z13MSG_WriteLongP5msg_ti
	mov eax, [ebp+0x10]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z15MSG_WriteStringP5msg_tPKc
	mov dword [esi+0x21298], 0x0
	mov eax, [esi+0x212dc]
	test eax, eax
	jz _Z28SV_WriteDownloadErrorMessageP8client_tP5msg_tPKc_10
	mov [esp], eax
	call _Z13FS_FCloseFilei
_Z28SV_WriteDownloadErrorMessageP8client_tP5msg_tPKc_10:
	mov dword [esi+0x212dc], 0x0
	mov byte [esi+0x2129c], 0x0
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;SV_UpdateLastTimeMasterServerCommunicated(netadr_t)
_Z41SV_UpdateLastTimeMasterServerCommunicated8netadr_t:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	movzx esi, word [ebp+0x10]
	movzx edi, byte [ebp+0xf]
	movzx eax, byte [ebp+0xe]
	mov [ebp-0x39], al
	movzx eax, byte [ebp+0xd]
	mov [ebp-0x3a], al
	movzx eax, byte [ebp+0xc]
	mov [ebp-0x3b], al
	mov ebx, [ebp+0x8]
	call _Z16SV_MasterAddressv
	mov ecx, [eax]
	mov [ebp-0x30], ecx
	mov edx, [eax+0x4]
	mov [ebp-0x2c], edx
	mov eax, [eax+0x8]
	mov [esp+0x14], eax
	mov [ebp-0x28], eax
	mov [ebp-0x1c], si
	mov eax, edi
	mov [ebp-0x1d], al
	movzx eax, byte [ebp-0x39]
	mov [ebp-0x1e], al
	movzx eax, byte [ebp-0x3a]
	mov [ebp-0x1f], al
	movzx eax, byte [ebp-0x3b]
	mov [ebp-0x20], al
	mov [ebp-0x24], ebx
	mov [esp+0xc], ecx
	mov [esp+0x10], edx
	mov [esp], ebx
	mov eax, [ebp-0x20]
	mov [esp+0x4], eax
	mov eax, [ebp-0x1c]
	mov [esp+0x8], eax
	call _Z18NET_CompareBaseAdr8netadr_tS_
	test eax, eax
	jz _Z41SV_UpdateLastTimeMasterServerCommunicated8netadr_t_10
	mov edx, svs
	mov eax, [edx+0x463804]
	mov [edx+svs+0x9778650], eax
_Z41SV_UpdateLastTimeMasterServerCommunicated8netadr_t_10:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Initialized global or static variables of sv_client_mp:
SECTION .data
ucmds: dd _cstring_userinfo, _Z19SV_UpdateUserinfo_fP8client_t, 0x0, _cstring_disconnect, _Z15SV_Disconnect_fP8client_t, 0x1, _cstring_cp, _Z15SV_VerifyIwds_fP8client_t, 0x0, _cstring_vdr, _Z20SV_ResetPureClient_fP8client_t, 0x0, _cstring_download, _Z18SV_BeginDownload_fP8client_t, 0x0, _cstring_nextdl, _Z17SV_NextDownload_fP8client_t, 0x0, _cstring_stopdl, _Z17SV_StopDownload_fP8client_t, 0x0, _cstring_donedl, _Z17SV_DoneDownload_fP8client_t, 0x0, _cstring_retransdl, _Z23SV_RetransmitDownload_fP8client_t, 0x0, _cstring_wwwdl, _Z16SV_WWWDownload_fP8client_t, 0x0, _cstring_muteplayer, _Z15SV_MutePlayer_fP8client_t, 0x0, _cstring_unmuteplayer, _Z17SV_UnmutePlayer_fP8client_t, 0x0, 0x0, 0x0, 0x0, 0x0


;Initialized constant data of sv_client_mp:
SECTION .rdata


;Zero initialized global or static variables of sv_client_mp:
SECTION .bss
pbReason: resb 0x20000
_ZZ22SV_SendClientGameStateP8client_tE9msgBuffer: resb 0x20000
_ZZ23SV_ExecuteClientMessageP8client_tP5msg_tE17msgCompressed_buf: resb 0x800
_ZZ16SV_AddTestClientvE7botport: resb 0x80


;All cstrings:
SECTION .rdata
_cstring_null:		db 0
_cstring_exe_disconnected:		db "EXE_DISCONNECTED",0
_cstring_invalid_mute_cli:		db "Invalid mute client %i",0ah,0
_cstring_invalid_unmute_c:		db "Invalid unmute client %i",0ah,0
_cstring_bantxt:		db "ban.txt",0
_cstring_team_:		db "team ",0
_cstring_s:		db "%s",0
_cstring_client_s_lost_i_:		db "Client %s lost %i clientCommands",0ah,0
_cstring_exe_lostreliable:		db "EXE_LOSTRELIABLECOMMANDS",0
_cstring_clientcommand_i_:		db "clientCommand: %i : %s",0ah,0
_cstring_score:		db "score",0
_cstring_mr_:		db "mr ",0
_cstring_client_text_igno:		db "client text ignored for %s: %s",0ah,0
_cstring_cmdcount__max_pa:		db "cmdCount > MAX_PACKET_USERCMDS",0ah,0
_cstring_cmdcount__1:		db "cmdCount < 1",0ah,0
_cstring_exe_cannotvalida:		db "EXE_CANNOTVALIDATEPURECLIENT",0
_cstring_this_guid_s_is_a:		db "This GUID (%s) is already banned",0ah,0
_cstring_cant_ban_user_gu:		db "Can",27h,"t ban user, GUID is unknown",0ah,0
_cstring_s_s:		db "%s %s",0dh,0ah,0
_cstring_exe_playerkicked:		db "EXE_PLAYERKICKED",0
_cstring_c_exe_cannotkick:		db "%c ",22h,"EXE_CANNOTKICKHOSTPLAYER",22h,0
_cstring_going_to_cs_zomb:		db "Going to CS_ZOMBIE from %i for %s",0ah,0
_cstring_:		db 014h,0
_cstring_c_s7_ss:		db "%c ",22h,015h,"%s^7 %s%s",22h,0
_cstring_is_s:		db "%i:%s %s",0ah,0
_cstring_c_d:		db "%c %d",0
_cstring_disconnect_s:		db "disconnect %s",0
_cstring_exe_leftgame:		db "EXE_LEFTGAME",0
_cstring_c_s:		db "%c ",22h,"%s",22h,0
_cstring_c_s7_s_pb:		db "%c ",22h,"%s^7 %s",22h," PB",0
_cstring_invalid_command_:		db "Invalid command time %i from client %s, current server time is %i",0
_cstring_no_banned_user_h:		db "no banned user has name %s",0ah,0
_cstring_unbanned_i_users:		db "unbanned %i user(s) named %s",0ah,0
_cstring_challengerespons:		db "challengeResponse %i",0
_cstring_rejected_connect:		db "rejected connection from permanently banned GUID ",22h,"%s",22h,0ah,0
_cstring_erroryou_are_per:		db "error",0ah,015h,"You are permanently banned from this server",0
_cstring_cod4masteractivi:		db "cod4master.activision.com",0
_cstring_resolving_s:		db "Resolving %s",0ah,0
_cstring_couldnt_resolve_:		db "Couldn",27h,"t resolve address",0ah,0
_cstring_authorize_server:		db "authorize server timed out",0ah,0
_cstring_rejected_connect1:		db "rejected connection from temporarily banned GUID ",22h,"%s",22h,0ah,0
_cstring_erroryou_are_tem:		db "error",0ah,015h,"You are temporarily banned from this server",0
_cstring_s_resolved_to_ii:		db "%s resolved to %i.%i.%i.%i:%i",0ah,0
_cstring_received_packet_:		db "Received packet %i of stats data",0ah,0
_cstring_statresponse_i:		db "statResponse %i",0
_cstring_invalid_stat_pac:		db "Invalid stat packet %i of stats data",0ah,0
_cstring_received_stats_p:		db "Received stats packet from unknown remote client %u.%u.%u.%u",0ah,0
_cstring_connect_cg_predi:		db "connect ",22h,5ch,"cg_predictItems",5ch,"1",5ch,"cl_punkbuster",5ch,"0",5ch,"cl_anonymous",5ch,"0",5ch,"color",5ch,"4",5ch,"head",5ch,"default",5ch,"model",5ch,"multi",5ch,"snaps",5ch,"20",5ch,"rate",5ch,"5000",5ch,"name",5ch,"bot%d",5ch,"protocol",5ch,"%d",5ch,"qport",5ch,"%d",22h,0
_cstring_sv_directconnect:		db "SV_DirectConnect()",0ah,0
_cstring_protocol:		db "protocol",0
_cstring_17:		db "1.7",0
_cstring_errorexe_server_:		db "error",0ah,"EXE_SERVER_IS_DIFFERENT_VER",015h,"%s",0ah,0
_cstring_____rejected_con:		db "    rejected connect from protocol version %i (should be %i)",0ah,0
_cstring_challenge:		db "challenge",0
_cstring_qport:		db "qport",0
_cstring_client_i_connect:		db "Client %i connecting with %i challenge ping from %s",0ah,0
_cstring_errorexe_err_hig:		db "error",0ah,"EXE_ERR_HIGH_PING_ONLY",0
_cstring_client_i_rejecte:		db "Client %i rejected on a too low ping",0ah,0
_cstring_cl_punkbuster:		db "cl_punkbuster",0
_cstring_localhost:		db "localhost",0
_cstring_error:		db "error",0ah,0
_cstring_password:		db "password",0
_cstring_errors:		db "error",0ah,"%s",0
_cstring_game_rejected_a_:		db "Game rejected a connection: %s.",0ah,0
_cstring_errorexe_err_low:		db "error",0ah,"EXE_ERR_LOW_PING_ONLY",0
_cstring_client_i_rejecte1:		db "Client %i rejected on a too high ping: %i",0ah,0
_cstring_errorexe_serveri:		db "error",0ah,"EXE_SERVERISFULL",0
_cstring_rejected_a_conne:		db "Rejected a connection.",0ah,0
_cstring_sreconnect_rejec:		db "%s:reconnect rejected : too soon",0ah,0
_cstring_connecting_playe:		db "Connecting player #%i has an unknown GUID",0ah,0
_cstring_going_from_cs_fr:		db "Going from CS_FREE to CS_CONNECTED for %s (num %i guid ",22h,"%s",22h,")",0ah,0
_cstring_connectresponse_:		db "connectResponse %s",0
_cstring_errorexe_bad_cha:		db "error",0ah,"EXE_BAD_CHALLENGE",0
_cstring_sreconnect_same_:		db "%s:reconnect. same qport: %i, same port: %i",0ah,0
_cstring_c_i_i:		db "%c %i %i",0
_cstring_ack:		db "ack",0
_cstring_sv_wwwdownload_u:		db "SV_WWWDownload: unexpected wwwdl ",27h,"%s",27h," for client ",27h,"%s",27h,0ah,0
_cstring_unexpected_www_d:		db "Unexpected www download message.",0
_cstring_bbl8r:		db "bbl8r",0
_cstring_done:		db "done",0
_cstring_warning_dupe_www:		db "WARNING: dupe wwwdl ack from client ",27h,"%s",27h,0ah,0
_cstring_fail:		db "fail",0
_cstring_client_s_reporte:		db "Client ",27h,"%s",27h," reported that the http download of ",27h,"%s",27h," failed, falling back to a server download",0ah,0
_cstring_client_dropped_t:		db "Client dropped to download files.",0
_cstring_chkfail:		db "chkfail",0
_cstring_warning_client_s:		db "WARNING: client ",27h,"%s",27h," reports that the redirect download for ",27h,"%s",27h," had wrong checksum.",0ah,0
_cstring__________you_sho:		db "         you should check your download redirect configuration.",0ah,0
_cstring_sv_wwwdownload_u1:		db "SV_WWWDownload: unknown wwwdl subcommand ",27h,"%s",27h," for client ",27h,"%s",27h,0ah,0
_cstring_clientdownload_s:		db "clientDownload: %s Done",0ah,0
_cstring_broken_download:		db "broken download",0
_cstring_clientdownload_d:		db "clientDownload: %d : client acknowledge of block %d",0ah,0
_cstring_clientdownload_d1:		db "clientDownload: %d : file ",22h,"%s",22h," completed",0ah,0
_cstring_clientdownload_d2:		db "clientDownload: %d : file ",22h,"%s",22h," aborted",0ah,0
_cstring_name:		db "name",0
_cstring_snaps:		db "snaps",0
_cstring_cl_voice:		db "cl_voice",0
_cstring_cl_wwwdownload:		db "cl_wwwDownload",0
_cstring_rate:		db "rate",0
_cstring_file_sysytem_bas:		db "File sysytem base game name",0
_cstring_fs_game:		db "fs_game",0
_cstring_sending_getipaut:		db "sending getIpAuthorize for %s",0ah,0
_cstring_sv_allowanonymou:		db "sv_allowAnonymous",0
_cstring_getipauthorize_i:		db "getIpAuthorize %i %i.%i.%i.%i ",22h,"%s",22h," %i PB ",22h,"%s",22h,0
_cstring_getipauthorize_i1:		db "getIpAuthorize %i %i.%i.%i.%i ",22h,"%s",22h," %i",0
_cstring_going_from_cs_cl:		db "Going from CS_CLIENTLOADING to CS_ACTIVE for %s",0ah,0
_cstring_deny:		db "deny",0
_cstring_errorexe_err_cdk:		db "error",0ah,"EXE_ERR_CDKEY_IN_USE",0
_cstring_demo:		db "demo",0
_cstring_fs_restrict:		db "fs_restrict",0
_cstring_sv_authorizeippa:		db "SV_AuthorizeIpPacket: not from authorize server",0ah,0
_cstring_rejecting_connec:		db "rejecting connection due to mismatched GUID: expected ",22h,"%s",22h,", got ",22h,"%s",22h,0ah,0
_cstring_errorexe_err_bad:		db "error",0ah,"EXE_ERR_BAD_CDKEY",0
_cstring_client_unknown_t:		db "CLIENT_UNKNOWN_TO_AUTH",0
_cstring_needcdkey:		db "needcdkey",0
_cstring_bad_cdkey:		db "BAD_CDKEY",0
_cstring_invalid_cdkey:		db "INVALID_CDKEY",0
_cstring_accept:		db "accept",0
_cstring_errorexe_err_not:		db "error",0ah,"EXE_ERR_NOT_A_DEMO_SERVER",0
_cstring_banned_cdkey:		db "BANNED_CDKEY",0
_cstring_sv_authorizeippa1:		db "SV_AuthorizeIpPacket: challenge not found",0ah,0
_cstring_ss:		db "%s/%s",0
_cstring_redirecting_clie:		db "Redirecting client ",27h,"%s",27h," to %s",0ah,0
_cstring_sv_sendclientgam:		db "SV_SendClientGameState() for %s",0ah,0
_cstring_going_from_cs_co:		db "Going from CS_CONNECTED to CS_CLIENTLOADING for %s",0ah,0
_cstring_requeststats:		db "requeststats",0ah,0
_cstring_sending_i_bytes_:		db "Sending %i bytes in gamestate to client: %i",0ah,0
_cstring_warning_bad_comm:		db "WARNING: bad command byte %i for client %i",0ah,0
_cstring_exe_unpureclient:		db "EXE_UNPURECLIENTDETECTED",0
_cstring_s__dropped_games:		db "%s : dropped gamestate, resending",0ah,0
_cstring_clientdownload_d3:		db "clientDownload: %d : ",22h,"%s",22h," download disabled",0
_cstring_exe_autodl_serve:		db "EXE_AUTODL_SERVERDISABLED_PURE",015h,"%s",0
_cstring_clientdownload_d4:		db "clientDownload: %d : beginning ",22h,"%s",22h,0ah,0
_cstring_clientdownload_d5:		db "clientDownload: %d : writing block %d",0ah,0
_cstring_main:		db "main",0
_cstring_clientdownload_d6:		db "clientDownload: %d : ",22h,"%s",22h," cannot download IW iwd files",0ah,0
_cstring_exe_cantautodlga:		db "EXE_CANTAUTODLGAMEPAK",015h,"%s",0
_cstring_exe_autodl_serve1:		db "EXE_AUTODL_SERVERDISABLED",015h,"%s",0
_cstring_clientdownload_d7:		db "clientDownload: %d : ",22h,"%s",22h," file not found on server",0ah,0
_cstring_exe_autodl_filen:		db "EXE_AUTODL_FILENOTONSERVER",015h,"%s",0
_cstring_userinfo:		db "userinfo",0
_cstring_disconnect:		db "disconnect",0
_cstring_cp:		db "cp",0
_cstring_vdr:		db "vdr",0
_cstring_download:		db "download",0
_cstring_nextdl:		db "nextdl",0
_cstring_stopdl:		db "stopdl",0
_cstring_donedl:		db "donedl",0
_cstring_retransdl:		db "retransdl",0
_cstring_wwwdl:		db "wwwdl",0
_cstring_muteplayer:		db "muteplayer",0
_cstring_unmuteplayer:		db "unmuteplayer",0



;All constant floats and doubles:
SECTION .rdata
_float_1000_00000000:		dd 0x447a0000	; 1000

