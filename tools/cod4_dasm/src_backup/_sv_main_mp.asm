;Imports of sv_main_mp:
	extern gameInitialized
	extern sprintf
	extern _Z16G_GetClientScorei
	extern _Z15Dvar_InfoStringii
	extern strcpy
	extern sv_cmd_args
	extern _Z19Info_SetValueForKeyPcPKcS1_
	extern _Z12Dvar_GetBoolPKc
	extern _Z11Com_sprintfPciPKcz
	extern _Z16SV_GameClientNumi
	extern _Z14Dvar_GetStringPKc
	extern _Z2vaPKcz
	extern _Z18NET_OutOfBandPrint8netsrc_t8netadr_tPKc
	extern _Z16Info_ValueForKeyPKcS0_
	extern _Z21SV_Cmd_TokenizeStringPKc
	extern _Z8FS_iwIwdPKcPc
	extern _Z25SV_Cmd_EndTokenizedStringv
	extern memset
	extern _Z15NET_AdrToString8netadr_t
	extern _Z18PIXBeginNamedEventiPKcz
	extern _Z21SV_ResetSkeletonCachev
	extern dvar_modifiedFlags
	extern _Z12SV_SetConfigiii
	extern _Z22SV_SetSystemInfoConfigv
	extern _Z18SV_SetConfigstringiPKc
	extern _Z23CL_FlushDebugServerDatav
	extern _Z10G_RunFramei
	extern _Z24CL_UpdateDebugServerDatav
	extern _Z11Com_DPrintfiPKcz
	extern _Z22G_GetClientArchiveTimei
	extern _Z14SV_ClientThinkP8client_tP9usercmd_s
	extern _Z7randomfv
	extern _Z7crandomv
	extern _Z16MSG_BeginReadingP5msg_t
	extern _Z12MSG_ReadLongP5msg_t
	extern _Z13MSG_ReadShortP5msg_t
	extern _Z18NET_CompareBaseAdr8netadr_tS_
	extern _Z10Com_PrintfiPKcz
	extern _Z15Netchan_ProcessP9netchan_tP5msg_t
	extern _Z12MSG_ReadByteP5msg_t
	extern _Z17SV_Netchan_DecodeP8client_tPhi
	extern _Z23SV_ExecuteClientMessageP8client_tP5msg_t
	extern _Z17NET_OutOfBandData8netsrc_t8netadr_tPKhi
	extern _Z12PbClAddEventiiPc
	extern _Z13SV_DropClientP8client_tPKch
	extern com_sv_running
	extern memcpy
	extern strcmp
	extern _Z32MSG_WriteReliableCommandToBufferPKcPci
	extern _Z18SV_DelayDropClientP8client_tPKc
	extern vsnprintf
	extern com_dedicated
	extern _Z13Scr_FreeValuej
	extern _Z30SV_Netchan_AddOOBProfilePacketi
	extern _Z10I_strnicmpPKcS0_i
	extern _Z12PbSvAddEventiiiPc
	extern _Z18MSG_ReadStringLineP5msg_t
	extern _Z9I_stricmpPKcS0_
	extern _Z41SV_UpdateLastTimeMasterServerCommunicated8netadr_t
	extern _Z15SV_GetChallenge8netadr_t
	extern _Z18NET_IsLocalAddress8netadr_t
	extern _Z19PbPassConnectStringPcS_
	extern _Z16SV_DirectConnect8netadr_t
	extern _Z15SV_ReceiveStats8netadr_tP5msg_t
	extern _Z20SV_AuthorizeIpPacket8netadr_t
	extern _Z19SV_PreGameUserVoiceP8client_tP5msg_t
	extern _Z17SVC_RemoteCommand8netadr_tP5msg_t
	extern _Z12SV_UserVoiceP8client_tP5msg_t
	extern fs_numServerIwds
	extern _Z11Dvar_GetIntPKc
	extern _Z10I_strncpyzPcPKci
	extern _Z9I_strncatPciPKc
	extern _Z12Com_ShutdownPKc
	extern cl_paused
	extern sv_paused
	extern _Z11Dvar_SetIntPK6dvar_si
	extern _Z21SV_SendClientMessagesv
	extern _Z18SV_MasterHeartbeatPKc
	extern _Z14Scr_SetLoadingi
	extern _Z12Cbuf_AddTextiPKc

;Exports of sv_main_mp:
	global tempServerCommandBuf
	global _ZZ17SV_ExpandNewlinesPcE6string
	global _Z10Pb_Q_statsiPc
	global _Z10SVC_Status8netadr_t
	global _Z11Pb_Q_clientiP14Pb_Sv_Client_s
	global _Z11SV_PreFramev
	global _Z11SV_RunFramev
	global _Z12SV_CalcPingsv
	global _Z13SV_WaitServerv
	global _Z14SV_BotUserMoveP8client_t
	global _Z14SV_PacketEvent8netadr_tP5msg_t
	global _Z15Pb_Q_maxclientsv
	global _Z15SV_AllowPacketsh
	global _Z15SV_InitSnapshotv
	global _Z15SV_SendPbPacketiPci
	global _Z16SV_CheckTimeoutsv
	global _Z18SV_GetAssignedTeamj
	global _Z18SV_KillLocalServerv
	global _Z18SV_SetAssignedTeamji
	global _Z19SV_AddServerCommandP8client_t11svscmd_typePKc
	global _Z20SV_SendServerCommandP8client_t11svscmd_typePKcz
	global _Z21SV_FreeClientScriptIdP8client_t
	global _Z22SVC_GameCompleteStatus8netadr_t
	global _Z22SV_FindClientByAddress8netadr_ti
	global _Z23SV_ConnectionlessPacket8netadr_tP5msg_t
	global _Z8SVC_Info8netadr_t
	global _Z8SV_Framei
	global sv_clientSideBullets
	global sv_disableClientConsole
	global sv_voice
	global sv_fps
	global sv_voiceQuality
	global sv
	global sv_mapname
	global sv_gametype
	global sv_maxclients
	global svs
	global com_inServerFrame
	global rcon_password
	global sv_FFCheckSums
	global sv_FFNames
	global sv_allowAnonymous
	global sv_allowDownload
	global sv_allowedClan1
	global sv_allowedClan2
	global sv_botsPressAttackBtn
	global sv_cheats
	global sv_connectTimeout
	global sv_debugRate
	global sv_debugReliableCmds
	global sv_floodProtect
	global sv_hostname
	global sv_iwdNames
	global sv_iwds
	global sv_kickBanTime
	global sv_mapRotation
	global sv_mapRotationCurrent
	global sv_maxPing
	global sv_maxRate
	global sv_minPing
	global sv_packet_info
	global sv_padPackets
	global sv_privateClients
	global sv_privatePassword
	global sv_punkbuster
	global sv_pure
	global sv_reconnectlimit
	global sv_referencedFFCheckSums
	global sv_referencedFFNames
	global sv_referencedIwdNames
	global sv_referencedIwds
	global sv_serverid
	global sv_showAverageBPS
	global sv_showCommands
	global sv_timeout
	global sv_wwwBaseURL
	global sv_wwwDlDisconnected
	global sv_wwwDownload
	global sv_zombietime
	global tempServerMsgBuf


SECTION .text


;Pb_Q_stats(int, char*)
_Z10Pb_Q_statsiPc:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ecx, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov byte [esi], 0x0
	test ecx, ecx
	js _Z10Pb_Q_statsiPc_10
	mov eax, [sv_maxclients]
	cmp ecx, [eax+0xc]
	jge _Z10Pb_Q_statsiPc_10
	lea eax, [ecx+ecx*4]
	shl eax, 0x7
	add eax, ecx
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	lea eax, [ecx+eax*4]
	lea eax, [eax*4+svs+0x463800]
	lea ebx, [eax+0xc]
	cmp dword [eax+0xc], 0x3
	jle _Z10Pb_Q_statsiPc_10
	mov eax, gameInitialized
	mov eax, [eax]
	test eax, eax
	jnz _Z10Pb_Q_statsiPc_20
	xor eax, eax
_Z10Pb_Q_statsiPc_30:
	mov [esp+0xc], eax
	mov eax, [ebx+0x804e4]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_pingd_scored
	mov [esp], esi
	call sprintf
	mov eax, 0x1
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z10Pb_Q_statsiPc_10:
	xor eax, eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z10Pb_Q_statsiPc_20:
	mov eax, ebx
	sub eax, svs+0x46380c
	sar eax, 0x2
	imul eax, eax, 0x4315b545
	mov [esp], eax
	call _Z16G_GetClientScorei
	jmp _Z10Pb_Q_statsiPc_30


;SVC_Status(netadr_t)
_Z10SVC_Status8netadr_t:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x485c
	movzx eax, word [ebp+0x10]
	mov [ebp-0x482a], ax
	movzx edx, byte [ebp+0xf]
	mov [ebp-0x482b], dl
	movzx eax, byte [ebp+0xe]
	mov [ebp-0x482c], al
	movzx edx, byte [ebp+0xd]
	mov [ebp-0x482d], dl
	movzx eax, byte [ebp+0xc]
	mov [ebp-0x482e], al
	mov edx, [ebp+0x8]
	mov [ebp-0x4834], edx
	mov dword [esp+0x4], 0x404
	mov dword [esp], 0x0
	call _Z15Dvar_InfoStringii
	mov [esp+0x4], eax
	lea eax, [ebp-0x2824]
	mov [esp], eax
	call strcpy
	mov eax, sv_cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x1
	jle _Z10SVC_Status8netadr_t_10
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x4]
_Z10SVC_Status8netadr_t_210:
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_challenge
	lea edx, [ebp-0x2824]
	mov [esp], edx
	call _Z19Info_SetValueForKeyPcPKcS1_
	mov dword [esp], _cstring_fs_restrict
	call _Z12Dvar_GetBoolPKc
	test al, al
	jnz _Z10SVC_Status8netadr_t_20
_Z10SVC_Status8netadr_t_140:
	mov byte [tempServerMsgBuf], 0x0
	mov eax, [sv_maxclients]
	mov edx, [eax+0xc]
	test edx, edx
	jle _Z10SVC_Status8netadr_t_30
	mov dword [ebp-0x4838], 0x0
	mov dword [ebp-0x483c], 0x0
	xor esi, esi
	mov dword [ebp-0x4840], svs+0x463800
	jmp _Z10SVC_Status8netadr_t_40
_Z10SVC_Status8netadr_t_60:
	xor eax, eax
_Z10SVC_Status8netadr_t_70:
	mov [esp+0x14], edi
	mov [esp+0x10], ebx
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_i_i_s
	mov dword [esp+0x4], 0x400
	lea edx, [ebp-0x424]
	mov [esp], edx
	call _Z11Com_sprintfPciPKcz
	cld
	mov ecx, 0xffffffff
	lea edi, [ebp-0x424]
	xor eax, eax
	repne scasb
	not ecx
	mov edx, [ebp-0x4838]
	lea ebx, [ecx+edx-0x1]
	cmp ebx, 0x1ffff
	jg _Z10SVC_Status8netadr_t_30
	lea eax, [ebp-0x424]
	mov [esp+0x4], eax
	mov eax, edx
	add eax, tempServerMsgBuf
	mov [esp], eax
	call strcpy
	mov [ebp-0x4838], ebx
	mov eax, [sv_maxclients]
_Z10SVC_Status8netadr_t_50:
	add dword [ebp-0x483c], 0x1
	add dword [ebp-0x4840], 0xa5634
	add esi, 0xa5634
	mov edx, [ebp-0x483c]
	cmp [eax+0xc], edx
	jle _Z10SVC_Status8netadr_t_30
_Z10SVC_Status8netadr_t_40:
	cmp dword [esi+svs+0x46380c], 0x1
	jle _Z10SVC_Status8netadr_t_50
	mov eax, [ebp-0x483c]
	mov [esp], eax
	call _Z16SV_GameClientNumi
	mov edi, [ebp-0x4840]
	add edi, 0x21294
	mov ebx, [esi+svs+0x4e3cf0]
	mov eax, gameInitialized
	mov eax, [eax]
	test eax, eax
	jz _Z10SVC_Status8netadr_t_60
	mov eax, esi
	sar eax, 0x2
	imul eax, eax, 0x4315b545
	mov [esp], eax
	call _Z16G_GetClientScorei
	jmp _Z10SVC_Status8netadr_t_70
_Z10SVC_Status8netadr_t_30:
	mov dword [esp], _cstring_g_password
	call _Z14Dvar_GetStringPKc
	test eax, eax
	jz _Z10SVC_Status8netadr_t_80
	cmp byte [eax], 0x0
	jnz _Z10SVC_Status8netadr_t_90
_Z10SVC_Status8netadr_t_80:
	mov dword [esp+0x8], _cstring_0
	mov dword [esp+0x4], _cstring_pswrd
	lea edx, [ebp-0x2824]
	mov [esp], edx
	call _Z19Info_SetValueForKeyPcPKcS1_
_Z10SVC_Status8netadr_t_150:
	mov dword [esp], _cstring_fs_game
	call _Z14Dvar_GetStringPKc
	mov edx, eax
	mov eax, [sv_pure]
	cmp byte [eax+0xc], 0x0
	jz _Z10SVC_Status8netadr_t_100
	test edx, edx
	jz _Z10SVC_Status8netadr_t_110
	cmp byte [edx], 0x0
	jnz _Z10SVC_Status8netadr_t_100
_Z10SVC_Status8netadr_t_110:
	mov dword [esp], _cstring_sv_referencediwd
	call _Z14Dvar_GetStringPKc
	cmp byte [eax], 0x0
	jnz _Z10SVC_Status8netadr_t_120
	xor ebx, ebx
	jmp _Z10SVC_Status8netadr_t_130
_Z10SVC_Status8netadr_t_100:
	mov ebx, 0x1
_Z10SVC_Status8netadr_t_130:
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_i
	call _Z2vaPKcz
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_mod
	lea eax, [ebp-0x2824]
	mov [esp], eax
	call _Z19Info_SetValueForKeyPcPKcS1_
	mov dword [esp+0x10], tempServerMsgBuf
	lea edx, [ebp-0x2824]
	mov [esp+0xc], edx
	mov dword [esp+0x8], _cstring_statusresponsess
	mov dword [esp+0x4], 0x2000
	lea ebx, [ebp-0x4824]
	mov [esp], ebx
	call _Z11Com_sprintfPciPKcz
	movzx eax, word [ebp-0x482a]
	mov [ebp-0x1c], ax
	movzx edx, byte [ebp-0x482b]
	mov [ebp-0x1d], dl
	movzx eax, byte [ebp-0x482c]
	mov [ebp-0x1e], al
	movzx edx, byte [ebp-0x482d]
	mov [ebp-0x1f], dl
	movzx eax, byte [ebp-0x482e]
	mov [ebp-0x20], al
	mov edx, [ebp-0x4834]
	mov [ebp-0x24], edx
	mov [esp+0x10], ebx
	mov [esp+0x4], edx
	mov eax, [ebp-0x20]
	mov [esp+0x8], eax
	mov eax, [ebp-0x1c]
	mov [esp+0xc], eax
	mov dword [esp], 0x1
	call _Z18NET_OutOfBandPrint8netsrc_t8netadr_tPKc
	add esp, 0x485c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z10SVC_Status8netadr_t_20:
	mov dword [esp+0x4], _cstring_sv_keywords
	lea eax, [ebp-0x2824]
	mov [esp], eax
	call _Z16Info_ValueForKeyPKcS0_
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_demo_s
	mov dword [esp+0x4], 0x400
	lea ebx, [ebp-0x824]
	mov [esp], ebx
	call _Z11Com_sprintfPciPKcz
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_sv_keywords
	lea edx, [ebp-0x2824]
	mov [esp], edx
	call _Z19Info_SetValueForKeyPcPKcS1_
	jmp _Z10SVC_Status8netadr_t_140
_Z10SVC_Status8netadr_t_90:
	mov dword [esp+0x8], _cstring_1
	mov dword [esp+0x4], _cstring_pswrd
	lea eax, [ebp-0x2824]
	mov [esp], eax
	call _Z19Info_SetValueForKeyPcPKcS1_
	jmp _Z10SVC_Status8netadr_t_150
_Z10SVC_Status8netadr_t_120:
	mov [esp], eax
	call _Z21SV_Cmd_TokenizeStringPKc
	mov edx, sv_cmd_args
	mov eax, [edx]
	mov esi, [edx+eax*4+0x44]
	test esi, esi
	jle _Z10SVC_Status8netadr_t_160
	xor ebx, ebx
	jmp _Z10SVC_Status8netadr_t_170
_Z10SVC_Status8netadr_t_190:
	mov eax, _cstring_null
_Z10SVC_Status8netadr_t_200:
	mov dword [esp+0x4], _cstring_main
	mov [esp], eax
	call _Z8FS_iwIwdPKcPc
	test eax, eax
	jz _Z10SVC_Status8netadr_t_180
	add ebx, 0x1
	cmp esi, ebx
	jz _Z10SVC_Status8netadr_t_160
	mov edx, sv_cmd_args
_Z10SVC_Status8netadr_t_170:
	mov eax, [edx]
	cmp ebx, [edx+eax*4+0x44]
	jge _Z10SVC_Status8netadr_t_190
	mov eax, [edx+eax*4+0x64]
	mov eax, [eax+ebx*4]
	jmp _Z10SVC_Status8netadr_t_200
_Z10SVC_Status8netadr_t_10:
	mov eax, _cstring_null
	jmp _Z10SVC_Status8netadr_t_210
_Z10SVC_Status8netadr_t_160:
	xor ebx, ebx
	call _Z25SV_Cmd_EndTokenizedStringv
	jmp _Z10SVC_Status8netadr_t_130
_Z10SVC_Status8netadr_t_180:
	mov ebx, 0x1
	call _Z25SV_Cmd_EndTokenizedStringv
	jmp _Z10SVC_Status8netadr_t_130
	nop


;Pb_Q_client(int, Pb_Sv_Client_s*)
_Z11Pb_Q_clientiP14Pb_Sv_Client_s:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x20
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov dword [esp+0x8], 0x68
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call memset
	test ebx, ebx
	js _Z11Pb_Q_clientiP14Pb_Sv_Client_s_10
	mov eax, [sv_maxclients]
	cmp ebx, [eax+0xc]
	jge _Z11Pb_Q_clientiP14Pb_Sv_Client_s_10
	lea eax, [ebx+ebx*4]
	shl eax, 0x7
	add eax, ebx
	lea eax, [ebx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	lea eax, [ebx+eax*4]
	lea ebx, [eax*4]
	cmp dword [ebx+svs+0x46380c], 0x3
	jg _Z11Pb_Q_clientiP14Pb_Sv_Client_s_20
_Z11Pb_Q_clientiP14Pb_Sv_Client_s_10:
	xor eax, eax
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
_Z11Pb_Q_clientiP14Pb_Sv_Client_s_20:
	lea eax, [ebx+svs+0x484a94]
	mov [esp+0x4], eax
	mov [esp], esi
	call strcpy
	lea eax, [ebx+svs+0x504504]
	mov [esp+0x4], eax
	lea eax, [esi+0x21]
	mov [esp], eax
	call strcpy
	mov ecx, [ebx+svs+0x46382c]
	mov [ebp-0x14], ecx
	mov edx, [ebx+svs+0x463830]
	mov [ebp-0x10], edx
	mov eax, [ebx+svs+0x463834]
	mov [ebp-0xc], eax
	mov [esp], ecx
	mov [esp+0x4], edx
	mov [esp+0x8], eax
	call _Z15NET_AdrToString8netadr_t
	mov [esp+0x4], eax
	lea eax, [esi+0x42]
	mov [esp], eax
	call strcpy
	mov eax, 0x1
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;SV_PreFrame()
_Z11SV_PreFramev:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov dword [esp+0x4], _cstring_server_bots
	mov dword [esp], 0xff00ff
	call _Z18PIXBeginNamedEventiPKcz
	call _Z21SV_ResetSkeletonCachev
	mov eax, [sv_maxclients]
	mov ebx, [eax+0xc]
	test ebx, ebx
	jle _Z11SV_PreFramev_10
	xor esi, esi
	mov edi, svs+0x46380c
	mov ebx, svs+0x46380c
	jmp _Z11SV_PreFramev_20
_Z11SV_PreFramev_30:
	add esi, 0x1
	add edi, 0xa5634
	add ebx, 0xa5634
	cmp esi, [eax+0xc]
	jge _Z11SV_PreFramev_10
_Z11SV_PreFramev_20:
	mov ecx, [ebx]
	test ecx, ecx
	jz _Z11SV_PreFramev_30
	mov edx, [ebx+0x20]
	test edx, edx
	jnz _Z11SV_PreFramev_30
	mov [esp], edi
	call _Z14SV_BotUserMoveP8client_t
	mov eax, [sv_maxclients]
	add esi, 0x1
	add edi, 0xa5634
	add ebx, 0xa5634
	cmp esi, [eax+0xc]
	jl _Z11SV_PreFramev_20
_Z11SV_PreFramev_10:
	mov ebx, dvar_modifiedFlags
	mov eax, [ebx]
	test eax, 0x404
	jnz _Z11SV_PreFramev_40
_Z11SV_PreFramev_80:
	test al, 0x8
	jnz _Z11SV_PreFramev_50
_Z11SV_PreFramev_70:
	test ah, 0x1
	jz _Z11SV_PreFramev_60
	mov dword [esp+0x8], 0x100
	mov dword [esp+0x4], 0x80
	mov dword [esp], 0x14
	call _Z12SV_SetConfigiii
	and dword [ebx], 0xfffffeff
_Z11SV_PreFramev_60:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z11SV_PreFramev_50:
	call _Z22SV_SetSystemInfoConfigv
	mov eax, [ebx]
	jmp _Z11SV_PreFramev_70
_Z11SV_PreFramev_40:
	mov dword [esp+0x4], 0x404
	mov dword [esp], 0x0
	call _Z15Dvar_InfoStringii
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call _Z18SV_SetConfigstringiPKc
	mov eax, [ebx]
	and eax, 0xfffffbfb
	mov [ebx], eax
	jmp _Z11SV_PreFramev_80


;SV_RunFrame()
_Z11SV_RunFramev:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	call _Z21SV_ResetSkeletonCachev
	call _Z23CL_FlushDebugServerDatav
	mov eax, [svs+0x463804]
	mov [esp], eax
	call _Z10G_RunFramei
	leave
	jmp _Z24CL_UpdateDebugServerDatav
	nop


;SV_CalcPings()
_Z12SV_CalcPingsv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov eax, [sv_maxclients]
	mov [ebp-0x24], eax
	mov edi, [eax+0xc]
	test edi, edi
	jle _Z12SV_CalcPingsv_10
	mov dword [ebp-0x20], 0x0
	mov edi, svs+0x463800
	jmp _Z12SV_CalcPingsv_20
_Z12SV_CalcPingsv_30:
	mov dword [edi+0x804f0], 0x3e7
	mov eax, [ebp-0x24]
_Z12SV_CalcPingsv_90:
	add dword [ebp-0x20], 0x1
	add edi, 0xa5634
	mov edx, [ebp-0x20]
	cmp edx, [eax+0xc]
	jge _Z12SV_CalcPingsv_10
_Z12SV_CalcPingsv_20:
	lea edx, [edi+0xc]
	mov [ebp-0x1c], edx
	cmp dword [edi+0xc], 0x4
	jnz _Z12SV_CalcPingsv_30
	mov esi, [edi+0x21290]
	test esi, esi
	jz _Z12SV_CalcPingsv_40
	mov eax, [ebp-0x1c]
	xor esi, esi
	xor ebx, ebx
	mov edx, 0x20
_Z12SV_CalcPingsv_60:
	mov ecx, [eax+0x243dc]
	test ecx, ecx
	jle _Z12SV_CalcPingsv_50
	add ebx, 0x1
	sub ecx, [eax+0x243d8]
	add esi, ecx
_Z12SV_CalcPingsv_50:
	add eax, 0x2f84
	sub edx, 0x1
	jnz _Z12SV_CalcPingsv_60
	test ebx, ebx
	jnz _Z12SV_CalcPingsv_70
	mov ebx, [edi+0x2c]
	test ebx, ebx
	jz _Z12SV_CalcPingsv_30
	mov eax, [ebp-0x1c]
	add eax, 0x21288
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_giving_s_a_999_p
	mov dword [esp], 0xf
	call _Z11Com_DPrintfiPKcz
	mov edx, [sv_maxclients]
	mov [ebp-0x24], edx
	jmp _Z12SV_CalcPingsv_30
_Z12SV_CalcPingsv_10:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z12SV_CalcPingsv_70:
	mov eax, esi
	cdq
	idiv ebx
	mov [edi+0x804f0], eax
	cmp eax, 0x3e7
	jg _Z12SV_CalcPingsv_80
	mov eax, [ebp-0x24]
	jmp _Z12SV_CalcPingsv_90
_Z12SV_CalcPingsv_80:
	mov eax, [ebp-0x1c]
	add eax, 0x21288
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_giving_s_a_999_p1
	mov dword [esp], 0xf
	call _Z11Com_DPrintfiPKcz
	mov dword [edi+0x804f0], 0x3e7
	mov edx, [sv_maxclients]
	mov [ebp-0x24], edx
	mov eax, edx
	jmp _Z12SV_CalcPingsv_90
_Z12SV_CalcPingsv_40:
	lea eax, [edi+0x21294]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_giving_s_a_999_p2
	mov dword [esp], 0xf
	call _Z11Com_DPrintfiPKcz
	mov dword [edi+0x804f0], 0x3e7
	mov eax, [sv_maxclients]
	mov [ebp-0x24], eax
	jmp _Z12SV_CalcPingsv_90


;SV_WaitServer()
_Z13SV_WaitServerv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [com_inServerFrame]
	test eax, eax
	jnz _Z13SV_WaitServerv_10
	leave
	ret
_Z13SV_WaitServerv_10:
	mov dword [com_inServerFrame], 0x0
	call _Z21SV_ResetSkeletonCachev
	call _Z23CL_FlushDebugServerDatav
	mov eax, [svs+0x463804]
	mov [esp], eax
	call _Z10G_RunFramei
	leave
	jmp _Z24CL_UpdateDebugServerDatav


;SV_BotUserMove(client_t*)
_Z14SV_BotUserMoveP8client_t:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x7c
	mov esi, [ebp+0x8]
	mov eax, [esi+0x21284]
	test eax, eax
	jz _Z14SV_BotUserMoveP8client_t_10
	cld
	mov ecx, 0x8
	xor eax, eax
	lea edi, [ebp-0x38]
	rep stosd
	mov ebx, esi
	sub ebx, svs+0x46380c
	sar ebx, 0x2
	imul ebx, ebx, 0x4315b545
	mov [esp], ebx
	call _Z16SV_GameClientNumi
	mov eax, [eax+0xe8]
	mov [ebp-0x24], al
	mov [esp], ebx
	call _Z22G_GetClientArchiveTimei
	test eax, eax
	jz _Z14SV_BotUserMoveP8client_t_20
_Z14SV_BotUserMoveP8client_t_90:
	mov eax, [esi+0x10]
	sub eax, 0x1
	mov [esi+0x8], eax
	lea eax, [ebp-0x38]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z14SV_ClientThinkP8client_tP9usercmd_s
_Z14SV_BotUserMoveP8client_t_10:
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z14SV_BotUserMoveP8client_t_20:
	call _Z7randomfv
	fstp dword [ebp-0x5c]
	movss xmm0, dword [ebp-0x5c]
	ucomiss xmm0, [_float_0_50000000]
	jae _Z14SV_BotUserMoveP8client_t_30
	jp _Z14SV_BotUserMoveP8client_t_30
	mov eax, [sv_botsPressAttackBtn]
	cmp byte [eax+0xc], 0x0
	jz _Z14SV_BotUserMoveP8client_t_30
	or dword [ebp-0x34], 0x1
_Z14SV_BotUserMoveP8client_t_30:
	call _Z7randomfv
	fstp dword [ebp-0x58]
	movss xmm0, dword [ebp-0x58]
	ucomiss xmm0, [_float_0_50000000]
	jae _Z14SV_BotUserMoveP8client_t_40
	jp _Z14SV_BotUserMoveP8client_t_40
	or dword [ebp-0x34], 0x28
_Z14SV_BotUserMoveP8client_t_40:
	call _Z7randomfv
	fstp dword [ebp-0x54]
	movss xmm0, dword [ebp-0x54]
	ucomiss xmm0, [_float_0_33000001]
	jae _Z14SV_BotUserMoveP8client_t_50
	jp _Z14SV_BotUserMoveP8client_t_50
	mov byte [ebp-0x22], 0x7f
_Z14SV_BotUserMoveP8client_t_100:
	call _Z7randomfv
	fstp dword [ebp-0x4c]
	movss xmm0, dword [ebp-0x4c]
	ucomiss xmm0, [_float_0_33000001]
	jae _Z14SV_BotUserMoveP8client_t_60
	jp _Z14SV_BotUserMoveP8client_t_60
	mov byte [ebp-0x21], 0x7f
_Z14SV_BotUserMoveP8client_t_130:
	call _Z7randomfv
	fstp dword [ebp-0x44]
	movss xmm0, dword [ebp-0x44]
	ucomiss xmm0, [_float_0_33000001]
	jb _Z14SV_BotUserMoveP8client_t_70
_Z14SV_BotUserMoveP8client_t_120:
	call _Z7randomfv
	fstp dword [ebp-0x40]
	movss xmm0, dword [_float_0_33000001]
	ucomiss xmm0, [ebp-0x40]
	ja _Z14SV_BotUserMoveP8client_t_80
_Z14SV_BotUserMoveP8client_t_110:
	call _Z7randomfv
	fstp dword [ebp-0x3c]
	movss xmm0, dword [_float_0_33000001]
	ucomiss xmm0, [ebp-0x3c]
	jbe _Z14SV_BotUserMoveP8client_t_90
	call _Z7crandomv
	fstp dword [ebp-0x6c]
	movss xmm0, dword [ebp-0x6c]
	mulss xmm0, [_float_360_00000000]
	cvttss2si eax, xmm0
	mov [ebp-0x28], eax
	jmp _Z14SV_BotUserMoveP8client_t_90
_Z14SV_BotUserMoveP8client_t_50:
	call _Z7randomfv
	fstp dword [ebp-0x50]
	mov edx, 0xffffff81
	movss xmm0, dword [_float_0_50000000]
	ucomiss xmm0, [ebp-0x50]
	movzx eax, byte [ebp-0x22]
	cmovbe edx, eax
	mov [ebp-0x22], dl
	jmp _Z14SV_BotUserMoveP8client_t_100
_Z14SV_BotUserMoveP8client_t_80:
	call _Z7crandomv
	fstp dword [ebp-0x6c]
	movss xmm0, dword [ebp-0x6c]
	mulss xmm0, [_float_360_00000000]
	cvttss2si eax, xmm0
	mov [ebp-0x2c], eax
	jmp _Z14SV_BotUserMoveP8client_t_110
_Z14SV_BotUserMoveP8client_t_70:
	jp _Z14SV_BotUserMoveP8client_t_120
	call _Z7crandomv
	fstp dword [ebp-0x6c]
	movss xmm0, dword [ebp-0x6c]
	mulss xmm0, [_float_360_00000000]
	cvttss2si eax, xmm0
	mov [ebp-0x30], eax
	jmp _Z14SV_BotUserMoveP8client_t_120
_Z14SV_BotUserMoveP8client_t_60:
	call _Z7randomfv
	fstp dword [ebp-0x48]
	mov edx, 0xffffff81
	movss xmm0, dword [_float_0_50000000]
	ucomiss xmm0, [ebp-0x48]
	movzx eax, byte [ebp-0x21]
	cmovbe edx, eax
	mov [ebp-0x21], dl
	jmp _Z14SV_BotUserMoveP8client_t_130
	nop
	add [eax], al


;SV_PacketEvent(netadr_t, msg_t*)
_Z14SV_PacketEvent8netadr_tP5msg_t:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x7c
	mov eax, [ebp+0x14]
	mov [ebp-0x5c], eax
	movzx edx, word [ebp+0x10]
	mov [ebp-0x4a], dx
	movzx ecx, byte [ebp+0xf]
	mov [ebp-0x4b], cl
	movzx eax, byte [ebp+0xe]
	mov [ebp-0x4c], al
	movzx edx, byte [ebp+0xd]
	mov [ebp-0x4d], dl
	movzx ecx, byte [ebp+0xc]
	mov [ebp-0x4e], cl
	mov eax, [ebp+0x8]
	mov [ebp-0x54], eax
	mov edx, [ebp-0x5c]
	cmp dword [edx+0x14], 0x3
	jle _Z14SV_PacketEvent8netadr_tP5msg_t_10
	mov eax, [edx+0x8]
	cmp dword [eax], 0xffffffff
	jz _Z14SV_PacketEvent8netadr_tP5msg_t_20
_Z14SV_PacketEvent8netadr_tP5msg_t_10:
	call _Z21SV_ResetSkeletonCachev
	mov eax, [ebp-0x5c]
	mov [esp], eax
	call _Z16MSG_BeginReadingP5msg_t
	mov edx, [ebp-0x5c]
	mov [esp], edx
	call _Z12MSG_ReadLongP5msg_t
	mov ecx, [ebp-0x5c]
	mov [esp], ecx
	call _Z13MSG_ReadShortP5msg_t
	mov [ebp-0x58], eax
	mov eax, [sv_maxclients]
	mov ecx, [eax+0xc]
	test ecx, ecx
	jle _Z14SV_PacketEvent8netadr_tP5msg_t_30
	xor esi, esi
	mov edi, svs+0x46380c
	mov ebx, svs+0x46380c
	jmp _Z14SV_PacketEvent8netadr_tP5msg_t_40
_Z14SV_PacketEvent8netadr_tP5msg_t_50:
	add esi, 0x1
	add edi, 0xa5634
	add ebx, 0xa5634
	cmp [eax+0xc], esi
	jle _Z14SV_PacketEvent8netadr_tP5msg_t_30
_Z14SV_PacketEvent8netadr_tP5msg_t_40:
	mov edx, [ebx]
	test edx, edx
	jz _Z14SV_PacketEvent8netadr_tP5msg_t_50
	mov ecx, [ebx+0x20]
	mov [ebp-0x30], ecx
	mov edx, [ebx+0x24]
	mov [ebp-0x2c], edx
	mov eax, [ebx+0x28]
	mov [ebp-0x28], eax
	movzx eax, byte [ebp-0x4b]
	mov [ebp-0x1d], al
	movzx eax, byte [ebp-0x4c]
	mov [ebp-0x1e], al
	movzx eax, byte [ebp-0x4d]
	mov [ebp-0x1f], al
	movzx eax, byte [ebp-0x4e]
	mov [ebp-0x20], al
	mov eax, [ebp-0x54]
	mov [ebp-0x24], eax
	movzx eax, word [ebp-0x4a]
	mov [ebp-0x1c], ax
	mov [esp+0xc], ecx
	mov [esp+0x10], edx
	mov edx, [ebx+0x28]
	mov [esp+0x14], edx
	mov ecx, [ebp-0x54]
	mov [esp], ecx
	mov eax, [ebp-0x20]
	mov [esp+0x4], eax
	mov eax, [ebp-0x1c]
	mov [esp+0x8], eax
	call _Z18NET_CompareBaseAdr8netadr_tS_
	test eax, eax
	jz _Z14SV_PacketEvent8netadr_tP5msg_t_60
	mov eax, [ebp-0x58]
	cmp eax, [ebx+0x2c]
	jz _Z14SV_PacketEvent8netadr_tP5msg_t_70
_Z14SV_PacketEvent8netadr_tP5msg_t_60:
	mov eax, [sv_maxclients]
	add esi, 0x1
	add edi, 0xa5634
	add ebx, 0xa5634
	cmp [eax+0xc], esi
	jg _Z14SV_PacketEvent8netadr_tP5msg_t_40
_Z14SV_PacketEvent8netadr_tP5msg_t_30:
	movzx edx, word [ebp-0x4a]
	mov [ebp-0x34], dx
	movzx ecx, byte [ebp-0x4b]
	mov [ebp-0x35], cl
	movzx eax, byte [ebp-0x4c]
	mov [ebp-0x36], al
	movzx edx, byte [ebp-0x4d]
	mov [ebp-0x37], dl
	movzx ecx, byte [ebp-0x4e]
	mov [ebp-0x38], cl
	mov eax, [ebp-0x54]
	mov [ebp-0x3c], eax
	mov dword [esp+0x10], _cstring_disconnect
	mov [esp+0x4], eax
	mov eax, [ebp-0x38]
	mov [esp+0x8], eax
	mov eax, [ebp-0x34]
	mov [esp+0xc], eax
	mov dword [esp], 0x1
	call _Z18NET_OutOfBandPrint8netsrc_t8netadr_tPKc
_Z14SV_PacketEvent8netadr_tP5msg_t_90:
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z14SV_PacketEvent8netadr_tP5msg_t_20:
	movzx ecx, word [ebp-0x4a]
	mov [ebp-0x40], cx
	movzx eax, byte [ebp-0x4b]
	mov [ebp-0x41], al
	movzx edx, byte [ebp-0x4c]
	mov [ebp-0x42], dl
	movzx ecx, byte [ebp-0x4d]
	mov [ebp-0x43], cl
	movzx eax, byte [ebp-0x4e]
	mov [ebp-0x44], al
	mov edx, [ebp-0x54]
	mov [ebp-0x48], edx
	mov ecx, [ebp-0x5c]
	mov [ebp+0x14], ecx
	mov eax, [ebp-0x44]
	mov [ebp+0xc], eax
	mov eax, [ebp-0x40]
	mov [ebp+0x10], eax
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z23SV_ConnectionlessPacket8netadr_tP5msg_t
_Z14SV_PacketEvent8netadr_tP5msg_t_70:
	movzx edx, word [ebp-0x4a]
	cmp dx, [edi+0x28]
	jz _Z14SV_PacketEvent8netadr_tP5msg_t_80
	mov dword [esp+0x4], _cstring_sv_readpackets_f
	mov dword [esp], 0xf
	call _Z10Com_PrintfiPKcz
	movzx ecx, word [ebp-0x4a]
	mov [edi+0x28], cx
_Z14SV_PacketEvent8netadr_tP5msg_t_80:
	mov eax, [ebp-0x5c]
	mov [esp+0x4], eax
	lea eax, [edi+0x10]
	mov [esp], eax
	call _Z15Netchan_ProcessP9netchan_tP5msg_t
	test eax, eax
	jz _Z14SV_PacketEvent8netadr_tP5msg_t_90
	mov edx, [ebp-0x5c]
	mov [esp], edx
	call _Z12MSG_ReadByteP5msg_t
	mov [edi+0xa0d20], eax
	mov ecx, [ebp-0x5c]
	mov [esp], ecx
	call _Z12MSG_ReadLongP5msg_t
	mov [edi+0x20e54], eax
	test eax, eax
	js _Z14SV_PacketEvent8netadr_tP5msg_t_100
	mov eax, [ebp-0x5c]
	mov [esp], eax
	call _Z12MSG_ReadLongP5msg_t
	mov edx, eax
	mov [edi+0x20e4c], eax
	mov ecx, [edi+0x20e48]
	mov eax, ecx
	sub eax, edx
	cmp eax, 0x7f
	jle _Z14SV_PacketEvent8netadr_tP5msg_t_110
	mov [esp+0x10], edx
	mov [esp+0xc], ecx
	lea eax, [edi+0x21288]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_out_of_range_rel
	mov dword [esp], 0xf
	call _Z10Com_PrintfiPKcz
	mov eax, [edi+0x20e48]
	mov [edi+0x20e4c], eax
	jmp _Z14SV_PacketEvent8netadr_tP5msg_t_90
_Z14SV_PacketEvent8netadr_tP5msg_t_110:
	mov ecx, [ebp-0x5c]
	mov edx, [ecx+0x1c]
	mov eax, [ecx+0x14]
	sub eax, edx
	mov [esp+0x8], eax
	add edx, [ecx+0x8]
	mov [esp+0x4], edx
	mov [esp], edi
	call _Z17SV_Netchan_DecodeP8client_tPhi
	cmp dword [edi], 0x1
	jz _Z14SV_PacketEvent8netadr_tP5msg_t_90
	mov eax, [svs+0x463804]
	mov [edi+0x21454], eax
	mov eax, [ebp-0x5c]
	mov [ebp+0xc], eax
	mov [ebp+0x8], edi
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z23SV_ExecuteClientMessageP8client_tP5msg_t
_Z14SV_PacketEvent8netadr_tP5msg_t_100:
	mov eax, [edi+0x20e4c]
	mov [ebp+0x14], eax
	lea eax, [edi+0x21288]
	mov [ebp+0x10], eax
	mov dword [ebp+0xc], _cstring_invalid_reliable
	mov dword [ebp+0x8], 0xf
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z10Com_PrintfiPKcz


;Pb_Q_maxclients()
_Z15Pb_Q_maxclientsv:
	push ebp
	mov ebp, esp
	mov eax, [sv_maxclients]
	mov eax, [eax+0xc]
	pop ebp
	ret
	nop


;SV_AllowPackets(unsigned char)
_Z15SV_AllowPacketsh:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop


;SV_InitSnapshot()
_Z15SV_InitSnapshotv:
	push ebp
	mov ebp, esp
	mov byte [sv+0x8], 0x0
	pop ebp
	ret


;SV_SendPbPacket(int, char*, int)
_Z15SV_SendPbPacketiPci:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	cmp dword [svs+0x463800], 0x1
	jz _Z15SV_SendPbPacketiPci_10
_Z15SV_SendPbPacketiPci_20:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z15SV_SendPbPacketiPci_10:
	mov eax, [sv_maxclients]
	mov ecx, [eax+0xc]
	test ecx, ecx
	jle _Z15SV_SendPbPacketiPci_20
	xor esi, esi
	mov ebx, svs+0x46380c
	mov edx, [ebp+0x10]
	test edx, edx
	js _Z15SV_SendPbPacketiPci_30
	cmp esi, [ebp+0x10]
	jz _Z15SV_SendPbPacketiPci_40
_Z15SV_SendPbPacketiPci_50:
	add esi, 0x1
	add ebx, 0xa5634
	cmp [eax+0xc], esi
	jle _Z15SV_SendPbPacketiPci_20
	cmp esi, [ebp+0x10]
	jnz _Z15SV_SendPbPacketiPci_50
_Z15SV_SendPbPacketiPci_40:
	cmp dword [ebx], 0x1
	jle _Z15SV_SendPbPacketiPci_50
	cmp dword [ebx+0x20], 0x2
	jz _Z15SV_SendPbPacketiPci_60
	mov ecx, [ebx+0x20]
	mov [ebp-0x24], ecx
	mov edx, [ebx+0x24]
	mov [ebp-0x20], edx
	mov eax, [ebx+0x28]
	mov [ebp-0x1c], eax
	mov edi, [ebp+0x8]
	mov [esp+0x14], edi
	mov edi, [ebp+0xc]
	mov [esp+0x10], edi
	mov [esp+0x4], ecx
	mov [esp+0x8], edx
	mov [esp+0xc], eax
	mov dword [esp], 0x1
	call _Z17NET_OutOfBandData8netsrc_t8netadr_tPKhi
	mov eax, [sv_maxclients]
	jmp _Z15SV_SendPbPacketiPci_50
_Z15SV_SendPbPacketiPci_80:
	mov ecx, [ebx+0x20]
	mov [ebp-0x24], ecx
	mov edx, [ebx+0x24]
	mov [ebp-0x20], edx
	mov eax, [ebx+0x28]
	mov [ebp-0x1c], eax
	mov edi, [ebp+0x8]
	mov [esp+0x14], edi
	mov edi, [ebp+0xc]
	mov [esp+0x10], edi
	mov [esp+0x4], ecx
	mov [esp+0x8], edx
	mov [esp+0xc], eax
	mov dword [esp], 0x1
	call _Z17NET_OutOfBandData8netsrc_t8netadr_tPKhi
	mov eax, [sv_maxclients]
_Z15SV_SendPbPacketiPci_70:
	add esi, 0x1
	add ebx, 0xa5634
	cmp [eax+0xc], esi
	jle _Z15SV_SendPbPacketiPci_20
_Z15SV_SendPbPacketiPci_30:
	cmp dword [ebx], 0x1
	jle _Z15SV_SendPbPacketiPci_70
	cmp dword [ebx+0x20], 0x2
	jnz _Z15SV_SendPbPacketiPci_80
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov edi, [ebp+0x8]
	mov [esp+0x4], edi
	mov dword [esp], 0xd
	call _Z12PbClAddEventiiPc
	mov eax, [sv_maxclients]
	jmp _Z15SV_SendPbPacketiPci_70
_Z15SV_SendPbPacketiPci_60:
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov edi, [ebp+0x8]
	mov [esp+0x4], edi
	mov dword [esp], 0xd
	call _Z12PbClAddEventiiPc
	mov eax, [sv_maxclients]
	jmp _Z15SV_SendPbPacketiPci_50
	nop


;SV_CheckTimeouts()
_Z16SV_CheckTimeoutsv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edx, [svs+0x463804]
	mov eax, [sv_timeout]
	mov eax, [eax+0xc]
	lea eax, [eax+eax*4]
	lea eax, [eax+eax*4]
	lea eax, [eax+eax*4]
	shl eax, 0x3
	mov ecx, edx
	sub ecx, eax
	mov [ebp-0x24], ecx
	mov eax, [sv_connectTimeout]
	mov eax, [eax+0xc]
	lea eax, [eax+eax*4]
	lea eax, [eax+eax*4]
	lea eax, [eax+eax*4]
	shl eax, 0x3
	mov ecx, edx
	sub ecx, eax
	mov [ebp-0x20], ecx
	mov eax, [sv_zombietime]
	mov eax, [eax+0xc]
	lea eax, [eax+eax*4]
	lea eax, [eax+eax*4]
	lea eax, [eax+eax*4]
	shl eax, 0x3
	mov ecx, edx
	sub ecx, eax
	mov [ebp-0x1c], ecx
	mov esi, [sv_maxclients]
	mov eax, [esi+0xc]
	test eax, eax
	jle _Z16SV_CheckTimeoutsv_10
	xor edi, edi
	mov dword [ebp-0x28], svs+0x46380c
	mov ebx, svs+0x504528
	jmp _Z16SV_CheckTimeoutsv_20
_Z16SV_CheckTimeoutsv_90:
	mov eax, [ebx-0x7f8bc]
	add eax, 0x1
	mov [ebx-0x7f8bc], eax
	cmp eax, 0x5
	jg _Z16SV_CheckTimeoutsv_30
_Z16SV_CheckTimeoutsv_50:
	add edi, 0x1
	add dword [ebp-0x28], 0xa5634
	add ebx, 0xa5634
	cmp edi, [esi+0xc]
	jge _Z16SV_CheckTimeoutsv_10
_Z16SV_CheckTimeoutsv_100:
	mov edx, [svs+0x463804]
_Z16SV_CheckTimeoutsv_20:
	lea ecx, [ebx-0x7f8c8]
	cmp [ebx-0x7f8c8], edx
	jle _Z16SV_CheckTimeoutsv_40
	mov [ebx-0x7f8c8], edx
_Z16SV_CheckTimeoutsv_40:
	mov eax, [ebx]
	test eax, eax
	jnz _Z16SV_CheckTimeoutsv_50
	mov eax, [ebx-0xa0d1c]
	cmp eax, 0x1
	jz _Z16SV_CheckTimeoutsv_60
	cmp eax, 0x4
	jz _Z16SV_CheckTimeoutsv_70
	sub eax, 0x1
	jle _Z16SV_CheckTimeoutsv_80
_Z16SV_CheckTimeoutsv_110:
	mov eax, [ebp-0x20]
	cmp eax, [ecx]
	jg _Z16SV_CheckTimeoutsv_90
_Z16SV_CheckTimeoutsv_80:
	mov dword [ebx-0x7f8bc], 0x0
	add edi, 0x1
	add dword [ebp-0x28], 0xa5634
	add ebx, 0xa5634
	cmp edi, [esi+0xc]
	jl _Z16SV_CheckTimeoutsv_100
_Z16SV_CheckTimeoutsv_10:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z16SV_CheckTimeoutsv_60:
	mov eax, [ebp-0x1c]
	cmp eax, [ebx-0x7f8c8]
	jle _Z16SV_CheckTimeoutsv_80
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_going_from_cs_zo
	mov dword [esp], 0xf
	call _Z11Com_DPrintfiPKcz
	mov dword [ebx-0xa0d1c], 0x0
	mov dword [ebx-0x7f8c8], 0x0
	mov esi, [sv_maxclients]
	jmp _Z16SV_CheckTimeoutsv_50
_Z16SV_CheckTimeoutsv_70:
	mov eax, [ebp-0x24]
	cmp eax, [ebx-0x7f8c8]
	jle _Z16SV_CheckTimeoutsv_110
	mov eax, [ebx-0x7f8bc]
	add eax, 0x1
	mov [ebx-0x7f8bc], eax
	cmp eax, 0x5
	jle _Z16SV_CheckTimeoutsv_50
_Z16SV_CheckTimeoutsv_30:
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], _cstring_exe_timedout
	mov ecx, [ebp-0x28]
	mov [esp], ecx
	call _Z13SV_DropClientP8client_tPKch
	mov esi, [sv_maxclients]
	jmp _Z16SV_CheckTimeoutsv_50
	add [eax], al


;SV_GetAssignedTeam(unsigned int)
_Z18SV_GetAssignedTeamj:
	push ebp
	mov ebp, esp
	xor eax, eax
	pop ebp
	ret
	nop


;SV_KillLocalServer()
_Z18SV_KillLocalServerv:
	push ebp
	mov ebp, esp
	mov eax, com_sv_running
	mov edx, [eax]
	mov eax, 0x1
	cmp byte [edx+0xc], 0x0
	movzx edx, byte [sv+0x5fc48]
	cmovz eax, edx
	mov [sv+0x5fc48], al
	pop ebp
	ret


;SV_SetAssignedTeam(unsigned int, int)
_Z18SV_SetAssignedTeamji:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop


;SV_AddServerCommand(client_t*, svscmd_type, char const*)
_Z19SV_AddServerCommandP8client_t11svscmd_typePKc:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov eax, [ebp+0x8]
	mov edx, [eax+0xa0d1c]
	test edx, edx
	jnz _Z19SV_AddServerCommandP8client_t11svscmd_typePKc_10
	mov edx, eax
	mov ebx, [eax+0x20e48]
	mov eax, ebx
	sub eax, [edx+0x20e4c]
	cmp eax, 0x3f
	jg _Z19SV_AddServerCommandP8client_t11svscmd_typePKc_20
	cmp dword [edx], 0x4
	jz _Z19SV_AddServerCommandP8client_t11svscmd_typePKc_30
	mov ecx, [ebp+0x8]
_Z19SV_AddServerCommandP8client_t11svscmd_typePKc_140:
	mov edi, [ecx+0x20e50]
	add edi, 0x1
	cmp ebx, edi
	jl _Z19SV_AddServerCommandP8client_t11svscmd_typePKc_40
	mov esi, edi
	mov ebx, [ebp+0x8]
_Z19SV_AddServerCommandP8client_t11svscmd_typePKc_70:
	mov ecx, esi
	and ecx, 0x7f
	mov eax, ecx
	shl eax, 0xa
	lea eax, [eax+ecx*8]
	lea edx, [eax+ebx]
	mov eax, [edx+0xe4c]
	test eax, eax
	jz _Z19SV_AddServerCommandP8client_t11svscmd_typePKc_50
	mov ebx, edi
	and ebx, 0x7f
	cmp ecx, ebx
	jz _Z19SV_AddServerCommandP8client_t11svscmd_typePKc_60
	mov eax, ebx
	shl eax, 0xa
	lea eax, [eax+ebx*8]
	mov ecx, [ebp+0x8]
	lea eax, [eax+ecx+0xa48]
	add edx, 0xa48
	mov dword [esp+0x8], 0x408
	mov [esp+0x4], edx
	mov [esp], eax
	call memcpy
_Z19SV_AddServerCommandP8client_t11svscmd_typePKc_60:
	add edi, 0x1
	mov ebx, [ebp+0x8]
_Z19SV_AddServerCommandP8client_t11svscmd_typePKc_50:
	add esi, 0x1
	cmp [ebx+0x20e48], esi
	jge _Z19SV_AddServerCommandP8client_t11svscmd_typePKc_70
_Z19SV_AddServerCommandP8client_t11svscmd_typePKc_40:
	lea eax, [edi-0x1]
	mov edi, [ebp+0x8]
	mov [edi+0x20e48], eax
	mov edx, [ebp+0xc]
	test edx, edx
	jz _Z19SV_AddServerCommandP8client_t11svscmd_typePKc_10
	mov ebx, eax
_Z19SV_AddServerCommandP8client_t11svscmd_typePKc_30:
	mov eax, [ebp+0x8]
	mov esi, [eax+0x20e50]
	add esi, 0x1
	cmp esi, ebx
	jg _Z19SV_AddServerCommandP8client_t11svscmd_typePKc_80
	mov edi, eax
	jmp _Z19SV_AddServerCommandP8client_t11svscmd_typePKc_90
_Z19SV_AddServerCommandP8client_t11svscmd_typePKc_110:
	add esi, 0x1
	cmp esi, ebx
	jg _Z19SV_AddServerCommandP8client_t11svscmd_typePKc_100
	mov edi, [ebp+0x8]
_Z19SV_AddServerCommandP8client_t11svscmd_typePKc_90:
	mov edx, esi
	and edx, 0x7f
	mov eax, edx
	shl eax, 0xa
	lea ecx, [eax+edx*8]
	lea edx, [ecx+edi]
	mov eax, [edx+0xe4c]
	test eax, eax
	jz _Z19SV_AddServerCommandP8client_t11svscmd_typePKc_110
	mov edi, [ebp+0x10]
	movzx eax, byte [edi]
	movsx edi, al
	cmp [edx+0xa48], al
	jnz _Z19SV_AddServerCommandP8client_t11svscmd_typePKc_110
	sub al, 0x78
	cmp al, 0x2
	jbe _Z19SV_AddServerCommandP8client_t11svscmd_typePKc_110
	mov edx, [ebp+0x8]
	lea eax, [ecx+edx+0xa40]
	lea ecx, [eax+0x8]
	mov [ebp-0x2c], ecx
	add eax, 0x9
	mov edx, [ebp+0x10]
	add edx, 0x1
	mov [esp+0x4], eax
	mov [esp], edx
	call strcmp
	test eax, eax
	jz _Z19SV_AddServerCommandP8client_t11svscmd_typePKc_120
	lea eax, [edi-0x43]
	cmp eax, 0x33
	ja _Z19SV_AddServerCommandP8client_t11svscmd_typePKc_110
	jmp dword [eax*4+_Z19SV_AddServerCommandP8client_t11svscmd_typePKc_jumptab_0]
_Z19SV_AddServerCommandP8client_t11svscmd_typePKc_80:
	mov edx, eax
_Z19SV_AddServerCommandP8client_t11svscmd_typePKc_150:
	lea eax, [ebx+0x1]
	mov [edx+0x20e48], eax
	mov ebx, eax
	mov edi, [ebp+0x8]
_Z19SV_AddServerCommandP8client_t11svscmd_typePKc_210:
	mov eax, ebx
	sub eax, [edi+0x20e4c]
	cmp eax, 0x81
	jz _Z19SV_AddServerCommandP8client_t11svscmd_typePKc_130
	mov esi, [ebp+0xc]
	mov edx, [ebp+0x8]
	mov ecx, [ebp+0x10]
_Z19SV_AddServerCommandP8client_t11svscmd_typePKc_170:
	and ebx, 0x7f
	mov dword [esp+0x8], 0x400
	mov eax, ebx
	shl eax, 0xa
	lea ebx, [eax+ebx*8]
	lea eax, [ebx+edx+0xa48]
	mov [esp+0x4], eax
	mov [esp], ecx
	call _Z32MSG_WriteReliableCommandToBufferPKcPci
	add ebx, [ebp+0x8]
	mov eax, [svs+0x463804]
	mov [ebx+0xe48], eax
	mov [ebx+0xe4c], esi
_Z19SV_AddServerCommandP8client_t11svscmd_typePKc_10:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19SV_AddServerCommandP8client_t11svscmd_typePKc_20:
	mov ecx, edx
	jmp _Z19SV_AddServerCommandP8client_t11svscmd_typePKc_140
_Z19SV_AddServerCommandP8client_t11svscmd_typePKc_100:
	mov edx, [ebp+0x8]
	jmp _Z19SV_AddServerCommandP8client_t11svscmd_typePKc_150
_Z19SV_AddServerCommandP8client_t11svscmd_typePKc_130:
	mov dword [esp+0x4], _cstring__pending_server_
	mov dword [esp], 0xf
	call _Z10Com_PrintfiPKcz
	mov eax, [ebp+0x8]
	mov ebx, [eax+0x20e4c]
	add ebx, 0x1
	cmp ebx, [eax+0x20e48]
	jle _Z19SV_AddServerCommandP8client_t11svscmd_typePKc_160
_Z19SV_AddServerCommandP8client_t11svscmd_typePKc_290:
	mov eax, [ebp+0x10]
	mov [esp+0x10], eax
	mov eax, [svs+0x463804]
	mov [esp+0xc], eax
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_cmd_5d_8d_s
	mov dword [esp], 0xf
	call _Z10Com_PrintfiPKcz
	mov edx, [ebp+0x8]
	mov ecx, [edx+0x20]
	mov [ebp-0x24], ecx
	mov ebx, edx
	mov edx, [edx+0x24]
	mov [ebp-0x20], edx
	mov eax, [ebx+0x28]
	mov [ebp-0x1c], eax
	mov dword [esp+0x10], _cstring_disconnect
	mov [esp+0x4], ecx
	mov [esp+0x8], edx
	mov [esp+0xc], eax
	mov dword [esp], 0x1
	call _Z18NET_OutOfBandPrint8netsrc_t8netadr_tPKc
	mov dword [esp+0x4], _cstring_exe_servercomman
	mov [esp], ebx
	call _Z18SV_DelayDropClientP8client_tPKc
	mov dword [esp+0x4], 0x77
	mov dword [esp], _cstring_c_exe_servercomm
	call _Z2vaPKcz
	mov [ebp+0x10], eax
	mov esi, 0x1
	mov edi, [ebp+0x8]
	mov ebx, [edi+0x20e48]
	mov edx, edi
	mov ecx, eax
	jmp _Z19SV_AddServerCommandP8client_t11svscmd_typePKc_170
_Z19SV_AddServerCommandP8client_t11svscmd_typePKc_230:
	cmp dl, 0x20
	jnz _Z19SV_AddServerCommandP8client_t11svscmd_typePKc_110
_Z19SV_AddServerCommandP8client_t11svscmd_typePKc_250:
	movzx eax, byte [ecx]
_Z19SV_AddServerCommandP8client_t11svscmd_typePKc_240:
	test al, al
	jz _Z19SV_AddServerCommandP8client_t11svscmd_typePKc_120
	cmp al, 0x20
	jnz _Z19SV_AddServerCommandP8client_t11svscmd_typePKc_110
_Z19SV_AddServerCommandP8client_t11svscmd_typePKc_120:
	test esi, esi
	js _Z19SV_AddServerCommandP8client_t11svscmd_typePKc_100
	lea ecx, [esi+0x1]
	mov [ebp-0x30], ecx
	mov edi, ecx
	cmp ecx, ebx
	jg _Z19SV_AddServerCommandP8client_t11svscmd_typePKc_180
	jmp _Z19SV_AddServerCommandP8client_t11svscmd_typePKc_190
_Z19SV_AddServerCommandP8client_t11svscmd_typePKc_200:
	mov eax, esi
	add eax, 0x1
	mov [ebp-0x30], eax
_Z19SV_AddServerCommandP8client_t11svscmd_typePKc_190:
	mov ecx, esi
	and ecx, 0x7f
	mov eax, ecx
	shl eax, 0xa
	lea ecx, [eax+ecx*8]
	mov eax, edi
	and eax, 0x7f
	mov edx, eax
	shl edx, 0xa
	lea eax, [edx+eax*8]
	mov ebx, [ebp+0x8]
	lea ecx, [ecx+ebx+0xa48]
	lea eax, [eax+ebx+0xa48]
	mov dword [esp+0x8], 0x408
	mov [esp+0x4], eax
	mov [esp], ecx
	call memcpy
	add edi, 0x1
	mov esi, [ebp-0x30]
	cmp edi, [ebx+0x20e48]
	jle _Z19SV_AddServerCommandP8client_t11svscmd_typePKc_200
	mov ecx, [ebp+0x8]
	mov ebx, [ecx+0x20e48]
	mov edi, ecx
	jmp _Z19SV_AddServerCommandP8client_t11svscmd_typePKc_210
_Z19SV_AddServerCommandP8client_t11svscmd_typePKc_300:
	mov ecx, [ebp-0x2c]
	add ecx, 0x2
	mov edi, [ebp+0x10]
	add edi, 0x2
	mov [ebp-0x3c], edi
	mov eax, [ebp+0x10]
	movzx edx, byte [eax+0x2]
	test dl, dl
	jz _Z19SV_AddServerCommandP8client_t11svscmd_typePKc_220
	mov edi, [ebp-0x2c]
	movzx eax, byte [edi+0x2]
	test al, al
	jz _Z19SV_AddServerCommandP8client_t11svscmd_typePKc_230
	cmp dl, 0x20
	jz _Z19SV_AddServerCommandP8client_t11svscmd_typePKc_240
	cmp al, 0x20
	jz _Z19SV_AddServerCommandP8client_t11svscmd_typePKc_230
	cmp al, dl
	jnz _Z19SV_AddServerCommandP8client_t11svscmd_typePKc_110
	mov edi, [ebp-0x3c]
_Z19SV_AddServerCommandP8client_t11svscmd_typePKc_260:
	add ecx, 0x1
	movzx edx, byte [edi+0x1]
	test dl, dl
	jz _Z19SV_AddServerCommandP8client_t11svscmd_typePKc_250
	movzx eax, byte [ecx]
	test al, al
	jz _Z19SV_AddServerCommandP8client_t11svscmd_typePKc_230
	cmp dl, 0x20
	jz _Z19SV_AddServerCommandP8client_t11svscmd_typePKc_240
	cmp al, 0x20
	jz _Z19SV_AddServerCommandP8client_t11svscmd_typePKc_230
	add edi, 0x1
	cmp al, dl
	jz _Z19SV_AddServerCommandP8client_t11svscmd_typePKc_260
	jmp _Z19SV_AddServerCommandP8client_t11svscmd_typePKc_110
_Z19SV_AddServerCommandP8client_t11svscmd_typePKc_160:
	mov ecx, eax
	jmp _Z19SV_AddServerCommandP8client_t11svscmd_typePKc_270
_Z19SV_AddServerCommandP8client_t11svscmd_typePKc_280:
	mov ecx, edi
_Z19SV_AddServerCommandP8client_t11svscmd_typePKc_270:
	mov eax, ebx
	and eax, 0x7f
	mov edx, eax
	shl edx, 0xa
	lea eax, [edx+eax*8]
	lea edx, [eax+ecx+0xa48]
	mov [esp+0x10], edx
	mov eax, [eax+ecx+0xe48]
	mov [esp+0xc], eax
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_cmd_5d_8d_s
	mov dword [esp], 0xf
	call _Z10Com_PrintfiPKcz
	add ebx, 0x1
	mov edi, [ebp+0x8]
	cmp ebx, [edi+0x20e48]
	jle _Z19SV_AddServerCommandP8client_t11svscmd_typePKc_280
	jmp _Z19SV_AddServerCommandP8client_t11svscmd_typePKc_290
_Z19SV_AddServerCommandP8client_t11svscmd_typePKc_180:
	mov edi, [ebp+0x8]
	jmp _Z19SV_AddServerCommandP8client_t11svscmd_typePKc_210
_Z19SV_AddServerCommandP8client_t11svscmd_typePKc_220:
	mov edx, [ebp-0x2c]
	movzx eax, byte [edx+0x2]
	jmp _Z19SV_AddServerCommandP8client_t11svscmd_typePKc_240
	nop
	
	
_Z19SV_AddServerCommandP8client_t11svscmd_typePKc_jumptab_0:
	dd _Z19SV_AddServerCommandP8client_t11svscmd_typePKc_120
	dd _Z19SV_AddServerCommandP8client_t11svscmd_typePKc_120
	dd _Z19SV_AddServerCommandP8client_t11svscmd_typePKc_110
	dd _Z19SV_AddServerCommandP8client_t11svscmd_typePKc_110
	dd _Z19SV_AddServerCommandP8client_t11svscmd_typePKc_110
	dd _Z19SV_AddServerCommandP8client_t11svscmd_typePKc_110
	dd _Z19SV_AddServerCommandP8client_t11svscmd_typePKc_110
	dd _Z19SV_AddServerCommandP8client_t11svscmd_typePKc_110
	dd _Z19SV_AddServerCommandP8client_t11svscmd_typePKc_110
	dd _Z19SV_AddServerCommandP8client_t11svscmd_typePKc_110
	dd _Z19SV_AddServerCommandP8client_t11svscmd_typePKc_110
	dd _Z19SV_AddServerCommandP8client_t11svscmd_typePKc_110
	dd _Z19SV_AddServerCommandP8client_t11svscmd_typePKc_110
	dd _Z19SV_AddServerCommandP8client_t11svscmd_typePKc_110
	dd _Z19SV_AddServerCommandP8client_t11svscmd_typePKc_110
	dd _Z19SV_AddServerCommandP8client_t11svscmd_typePKc_110
	dd _Z19SV_AddServerCommandP8client_t11svscmd_typePKc_110
	dd _Z19SV_AddServerCommandP8client_t11svscmd_typePKc_110
	dd _Z19SV_AddServerCommandP8client_t11svscmd_typePKc_110
	dd _Z19SV_AddServerCommandP8client_t11svscmd_typePKc_110
	dd _Z19SV_AddServerCommandP8client_t11svscmd_typePKc_110
	dd _Z19SV_AddServerCommandP8client_t11svscmd_typePKc_110
	dd _Z19SV_AddServerCommandP8client_t11svscmd_typePKc_110
	dd _Z19SV_AddServerCommandP8client_t11svscmd_typePKc_110
	dd _Z19SV_AddServerCommandP8client_t11svscmd_typePKc_110
	dd _Z19SV_AddServerCommandP8client_t11svscmd_typePKc_110
	dd _Z19SV_AddServerCommandP8client_t11svscmd_typePKc_110
	dd _Z19SV_AddServerCommandP8client_t11svscmd_typePKc_110
	dd _Z19SV_AddServerCommandP8client_t11svscmd_typePKc_110
	dd _Z19SV_AddServerCommandP8client_t11svscmd_typePKc_110
	dd _Z19SV_AddServerCommandP8client_t11svscmd_typePKc_120
	dd _Z19SV_AddServerCommandP8client_t11svscmd_typePKc_120
	dd _Z19SV_AddServerCommandP8client_t11svscmd_typePKc_110
	dd _Z19SV_AddServerCommandP8client_t11svscmd_typePKc_300
	dd _Z19SV_AddServerCommandP8client_t11svscmd_typePKc_110
	dd _Z19SV_AddServerCommandP8client_t11svscmd_typePKc_110
	dd _Z19SV_AddServerCommandP8client_t11svscmd_typePKc_110
	dd _Z19SV_AddServerCommandP8client_t11svscmd_typePKc_110
	dd _Z19SV_AddServerCommandP8client_t11svscmd_typePKc_110
	dd _Z19SV_AddServerCommandP8client_t11svscmd_typePKc_110
	dd _Z19SV_AddServerCommandP8client_t11svscmd_typePKc_110
	dd _Z19SV_AddServerCommandP8client_t11svscmd_typePKc_110
	dd _Z19SV_AddServerCommandP8client_t11svscmd_typePKc_110
	dd _Z19SV_AddServerCommandP8client_t11svscmd_typePKc_110
	dd _Z19SV_AddServerCommandP8client_t11svscmd_typePKc_120
	dd _Z19SV_AddServerCommandP8client_t11svscmd_typePKc_120
	dd _Z19SV_AddServerCommandP8client_t11svscmd_typePKc_120
	dd _Z19SV_AddServerCommandP8client_t11svscmd_typePKc_120
	dd _Z19SV_AddServerCommandP8client_t11svscmd_typePKc_110
	dd _Z19SV_AddServerCommandP8client_t11svscmd_typePKc_120
	dd _Z19SV_AddServerCommandP8client_t11svscmd_typePKc_110
	dd _Z19SV_AddServerCommandP8client_t11svscmd_typePKc_300


;SV_SendServerCommand(client_t*, svscmd_type, char const*, ...)
_Z20SV_SendServerCommandP8client_t11svscmd_typePKcz:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov ebx, [ebp+0x8]
	lea eax, [ebp+0x14]
	mov [ebp-0x1c], eax
	mov [esp+0xc], eax
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x20000
	mov dword [esp], tempServerCommandBuf
	call vsnprintf
	test ebx, ebx
	jz _Z20SV_SendServerCommandP8client_t11svscmd_typePKcz_10
	mov dword [esp+0x8], tempServerCommandBuf
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z19SV_AddServerCommandP8client_t11svscmd_typePKc
_Z20SV_SendServerCommandP8client_t11svscmd_typePKcz_30:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z20SV_SendServerCommandP8client_t11svscmd_typePKcz_10:
	mov eax, com_dedicated
	mov eax, [eax]
	mov ebx, [eax+0xc]
	test ebx, ebx
	jnz _Z20SV_SendServerCommandP8client_t11svscmd_typePKcz_20
_Z20SV_SendServerCommandP8client_t11svscmd_typePKcz_70:
	mov eax, [sv_maxclients]
	mov ecx, [eax+0xc]
	test ecx, ecx
	jle _Z20SV_SendServerCommandP8client_t11svscmd_typePKcz_30
	xor ebx, ebx
	mov esi, svs+0x46380c
	jmp _Z20SV_SendServerCommandP8client_t11svscmd_typePKcz_40
_Z20SV_SendServerCommandP8client_t11svscmd_typePKcz_50:
	add ebx, 0x1
	add esi, 0xa5634
	cmp ebx, [eax+0xc]
	jge _Z20SV_SendServerCommandP8client_t11svscmd_typePKcz_30
_Z20SV_SendServerCommandP8client_t11svscmd_typePKcz_40:
	cmp dword [esi], 0x2
	jle _Z20SV_SendServerCommandP8client_t11svscmd_typePKcz_50
	mov dword [esp+0x8], tempServerCommandBuf
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z19SV_AddServerCommandP8client_t11svscmd_typePKc
	mov eax, [sv_maxclients]
	jmp _Z20SV_SendServerCommandP8client_t11svscmd_typePKcz_50
_Z20SV_SendServerCommandP8client_t11svscmd_typePKcz_20:
	mov edi, _cstring_print
	mov ecx, 0x5
	cld
	mov ebx, tempServerCommandBuf
	mov esi, ebx
	repe cmpsb
	mov ebx, 0x0
	jz _Z20SV_SendServerCommandP8client_t11svscmd_typePKcz_60
	movzx ebx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub ebx, ecx
_Z20SV_SendServerCommandP8client_t11svscmd_typePKcz_60:
	test ebx, ebx
	jnz _Z20SV_SendServerCommandP8client_t11svscmd_typePKcz_70
	mov ebx, tempServerCommandBuf
	xor ecx, ecx
_Z20SV_SendServerCommandP8client_t11svscmd_typePKcz_110:
	movzx edx, byte [ebx]
	test dl, dl
	jz _Z20SV_SendServerCommandP8client_t11svscmd_typePKcz_80
	cmp ecx, 0x3fc
	ja _Z20SV_SendServerCommandP8client_t11svscmd_typePKcz_80
	cmp dl, 0xa
	jz _Z20SV_SendServerCommandP8client_t11svscmd_typePKcz_90
	lea eax, [edx-0x14]
	cmp al, 0x1
	jbe _Z20SV_SendServerCommandP8client_t11svscmd_typePKcz_100
	mov [ecx+_ZZ17SV_ExpandNewlinesPcE6string], dl
	add ecx, 0x1
_Z20SV_SendServerCommandP8client_t11svscmd_typePKcz_100:
	add ebx, 0x1
	jmp _Z20SV_SendServerCommandP8client_t11svscmd_typePKcz_110
_Z20SV_SendServerCommandP8client_t11svscmd_typePKcz_90:
	mov byte [ecx+_ZZ17SV_ExpandNewlinesPcE6string], 0x5c
	mov byte [ecx+_ZZ17SV_ExpandNewlinesPcE6string+0x1], 0x6e
	add ecx, 0x2
	add ebx, 0x1
	jmp _Z20SV_SendServerCommandP8client_t11svscmd_typePKcz_110
_Z20SV_SendServerCommandP8client_t11svscmd_typePKcz_80:
	mov byte [ecx+_ZZ17SV_ExpandNewlinesPcE6string], 0x0
	mov dword [esp+0x8], _ZZ17SV_ExpandNewlinesPcE6string
	mov dword [esp+0x4], _cstring_broadcast_s
	mov dword [esp], 0xf
	call _Z10Com_PrintfiPKcz
	jmp _Z20SV_SendServerCommandP8client_t11svscmd_typePKcz_70
	nop


;SV_FreeClientScriptId(client_t*)
_Z21SV_FreeClientScriptIdP8client_t:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	movzx eax, word [ebx+0xa0d1a]
	mov [esp], eax
	call _Z13Scr_FreeValuej
	mov word [ebx+0xa0d1a], 0x0
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;SVC_GameCompleteStatus(netadr_t)
_Z22SVC_GameCompleteStatus8netadr_t:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xc5c
	movzx eax, word [ebp+0x10]
	mov [ebp-0xc2a], ax
	movzx edx, byte [ebp+0xf]
	mov [ebp-0xc2b], dl
	movzx eax, byte [ebp+0xe]
	mov [ebp-0xc2c], al
	movzx edx, byte [ebp+0xd]
	mov [ebp-0xc2d], dl
	movzx eax, byte [ebp+0xc]
	mov [ebp-0xc2e], al
	mov edx, [ebp+0x8]
	mov [ebp-0xc34], edx
	mov dword [esp+0x4], 0x404
	mov dword [esp], 0x0
	call _Z15Dvar_InfoStringii
	mov [esp+0x4], eax
	lea eax, [ebp-0x824]
	mov [esp], eax
	call strcpy
	mov eax, sv_cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x1
	jle _Z22SVC_GameCompleteStatus8netadr_t_10
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x4]
_Z22SVC_GameCompleteStatus8netadr_t_70:
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_challenge
	lea edx, [ebp-0x824]
	mov [esp], edx
	call _Z19Info_SetValueForKeyPcPKcS1_
	mov dword [esp], _cstring_fs_restrict
	call _Z12Dvar_GetBoolPKc
	test al, al
	jnz _Z22SVC_GameCompleteStatus8netadr_t_20
_Z22SVC_GameCompleteStatus8netadr_t_60:
	mov byte [tempServerMsgBuf], 0x0
	mov eax, [sv_maxclients]
	mov esi, [eax+0xc]
	test esi, esi
	jle _Z22SVC_GameCompleteStatus8netadr_t_30
	mov dword [ebp-0xc38], 0x0
	mov dword [ebp-0xc3c], 0x0
	xor esi, esi
	mov dword [ebp-0xc40], svs+0x463800
_Z22SVC_GameCompleteStatus8netadr_t_50:
	cmp dword [esi+svs+0x46380c], 0x1
	jle _Z22SVC_GameCompleteStatus8netadr_t_40
	mov eax, [ebp-0xc3c]
	mov [esp], eax
	call _Z16SV_GameClientNumi
	mov ebx, [esi+svs+0x4e3cf0]
	mov eax, esi
	sar eax, 0x2
	imul eax, eax, 0x4315b545
	mov [esp], eax
	call _Z16G_GetClientScorei
	mov edx, [ebp-0xc40]
	add edx, 0x21294
	mov [esp+0x14], edx
	mov [esp+0x10], ebx
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_i_i_s
	mov dword [esp+0x4], 0x400
	lea edx, [ebp-0x424]
	mov [esp], edx
	call _Z11Com_sprintfPciPKcz
	cld
	mov ecx, 0xffffffff
	lea edi, [ebp-0x424]
	xor eax, eax
	repne scasb
	not ecx
	mov edx, [ebp-0xc38]
	lea ebx, [ecx+edx-0x1]
	cmp ebx, 0x1ffff
	jg _Z22SVC_GameCompleteStatus8netadr_t_30
	lea eax, [ebp-0x424]
	mov [esp+0x4], eax
	mov eax, edx
	add eax, tempServerMsgBuf
	mov [esp], eax
	call strcpy
	mov [ebp-0xc38], ebx
	mov eax, [sv_maxclients]
_Z22SVC_GameCompleteStatus8netadr_t_40:
	add dword [ebp-0xc3c], 0x1
	add dword [ebp-0xc40], 0xa5634
	add esi, 0xa5634
	mov edx, [ebp-0xc3c]
	cmp [eax+0xc], edx
	jg _Z22SVC_GameCompleteStatus8netadr_t_50
_Z22SVC_GameCompleteStatus8netadr_t_30:
	mov dword [esp+0x8], tempServerMsgBuf
	lea eax, [ebp-0x824]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_gamecompletestat
	call _Z2vaPKcz
	movzx edx, word [ebp-0xc2a]
	mov [ebp-0x1c], dx
	movzx edx, byte [ebp-0xc2b]
	mov [ebp-0x1d], dl
	movzx edx, byte [ebp-0xc2c]
	mov [ebp-0x1e], dl
	movzx edx, byte [ebp-0xc2d]
	mov [ebp-0x1f], dl
	movzx edx, byte [ebp-0xc2e]
	mov [ebp-0x20], dl
	mov edx, [ebp-0xc34]
	mov [ebp-0x24], edx
	mov [esp+0x10], eax
	mov [esp+0x4], edx
	mov eax, [ebp-0x20]
	mov [esp+0x8], eax
	mov eax, [ebp-0x1c]
	mov [esp+0xc], eax
	mov dword [esp], 0x1
	call _Z18NET_OutOfBandPrint8netsrc_t8netadr_tPKc
	add esp, 0xc5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z22SVC_GameCompleteStatus8netadr_t_20:
	mov dword [esp+0x4], _cstring_sv_keywords
	lea eax, [ebp-0x824]
	mov [esp], eax
	call _Z16Info_ValueForKeyPKcS0_
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_demo_s
	mov dword [esp+0x4], 0x400
	lea ebx, [ebp-0xc24]
	mov [esp], ebx
	call _Z11Com_sprintfPciPKcz
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_sv_keywords
	lea edx, [ebp-0x824]
	mov [esp], edx
	call _Z19Info_SetValueForKeyPcPKcS1_
	jmp _Z22SVC_GameCompleteStatus8netadr_t_60
_Z22SVC_GameCompleteStatus8netadr_t_10:
	mov eax, _cstring_null
	jmp _Z22SVC_GameCompleteStatus8netadr_t_70


;SV_FindClientByAddress(netadr_t, int)
_Z22SV_FindClientByAddress8netadr_ti:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	movzx eax, byte [ebp+0xf]
	mov [ebp-0x39], al
	movzx eax, byte [ebp+0xe]
	mov [ebp-0x3a], al
	movzx eax, byte [ebp+0xd]
	mov [ebp-0x3b], al
	movzx eax, byte [ebp+0xc]
	mov [ebp-0x3c], al
	mov eax, [ebp+0x8]
	mov [ebp-0x40], eax
	movzx eax, word [ebp+0x10]
	mov [ebp-0x42], ax
	mov eax, [sv_maxclients]
	mov ebx, [eax+0xc]
	test ebx, ebx
	jle _Z22SV_FindClientByAddress8netadr_ti_10
	xor esi, esi
	mov edi, svs+0x46380c
	mov ebx, svs+0x46380c
_Z22SV_FindClientByAddress8netadr_ti_50:
	mov ecx, [ebx]
	test ecx, ecx
	jz _Z22SV_FindClientByAddress8netadr_ti_20
	mov ecx, [ebx+0x20]
	mov [ebp-0x30], ecx
	mov edx, [ebx+0x24]
	mov [ebp-0x2c], edx
	mov eax, [ebx+0x28]
	mov [ebp-0x28], eax
	movzx eax, byte [ebp-0x39]
	mov [ebp-0x1d], al
	movzx eax, byte [ebp-0x3a]
	mov [ebp-0x1e], al
	movzx eax, byte [ebp-0x3b]
	mov [ebp-0x1f], al
	movzx eax, byte [ebp-0x3c]
	mov [ebp-0x20], al
	mov eax, [ebp-0x40]
	mov [ebp-0x24], eax
	movzx eax, word [ebp-0x42]
	mov [ebp-0x1c], ax
	mov [esp+0xc], ecx
	mov [esp+0x10], edx
	mov eax, [ebx+0x28]
	mov [esp+0x14], eax
	mov eax, [ebp-0x40]
	mov [esp], eax
	mov eax, [ebp-0x20]
	mov [esp+0x4], eax
	mov eax, [ebp-0x1c]
	mov [esp+0x8], eax
	call _Z18NET_CompareBaseAdr8netadr_tS_
	test eax, eax
	jz _Z22SV_FindClientByAddress8netadr_ti_30
	mov eax, [ebp+0x14]
	cmp [ebx+0x2c], eax
	jz _Z22SV_FindClientByAddress8netadr_ti_40
_Z22SV_FindClientByAddress8netadr_ti_30:
	mov eax, [sv_maxclients]
_Z22SV_FindClientByAddress8netadr_ti_20:
	add esi, 0x1
	add edi, 0xa5634
	add ebx, 0xa5634
	cmp esi, [eax+0xc]
	jl _Z22SV_FindClientByAddress8netadr_ti_50
_Z22SV_FindClientByAddress8netadr_ti_10:
	xor edi, edi
_Z22SV_FindClientByAddress8netadr_ti_60:
	mov eax, edi
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z22SV_FindClientByAddress8netadr_ti_40:
	movzx eax, word [ebp-0x42]
	cmp [edi+0x28], ax
	jz _Z22SV_FindClientByAddress8netadr_ti_60
	mov dword [esp+0x4], _cstring_sv_readpackets_f
	mov dword [esp], 0xf
	call _Z10Com_PrintfiPKcz
	movzx eax, word [ebp-0x42]
	mov [edi+0x28], ax
	jmp _Z22SV_FindClientByAddress8netadr_ti_60


;SV_ConnectionlessPacket(netadr_t, msg_t*)
_Z23SV_ConnectionlessPacket8netadr_tP5msg_t:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x12c
	mov edi, [ebp+0x14]
	movzx eax, byte [ebp+0xf]
	mov [ebp-0xfd], al
	movzx edx, byte [ebp+0xe]
	mov [ebp-0xfe], dl
	movzx eax, byte [ebp+0xd]
	mov [ebp-0xff], al
	movzx edx, byte [ebp+0xc]
	mov [ebp-0x100], dl
	mov eax, [ebp+0x8]
	mov [ebp-0x104], eax
	movzx edx, word [ebp+0x10]
	mov [ebp-0x106], dx
	mov [esp], edi
	call _Z16MSG_BeginReadingP5msg_t
	mov [esp], edi
	call _Z12MSG_ReadLongP5msg_t
	mov eax, [edi+0x14]
	mov [esp], eax
	call _Z30SV_Netchan_AddOOBProfilePacketi
	mov dword [esp+0x8], 0x3
	mov dword [esp+0x4], _cstring_pb_
	mov eax, [edi+0x8]
	add eax, 0x4
	mov [esp], eax
	call _Z10I_strnicmpPKcS0_i
	test eax, eax
	jnz _Z23SV_ConnectionlessPacket8netadr_tP5msg_t_10
	mov eax, [sv_maxclients]
	mov esi, [eax+0xc]
	test esi, esi
	jle _Z23SV_ConnectionlessPacket8netadr_tP5msg_t_20
	xor esi, esi
	mov ebx, svs+0x46380c
	jmp _Z23SV_ConnectionlessPacket8netadr_tP5msg_t_30
_Z23SV_ConnectionlessPacket8netadr_tP5msg_t_40:
	add esi, 0x1
	add ebx, 0xa5634
	cmp [eax+0xc], esi
	jle _Z23SV_ConnectionlessPacket8netadr_tP5msg_t_20
_Z23SV_ConnectionlessPacket8netadr_tP5msg_t_30:
	mov edx, [ebx]
	test edx, edx
	jz _Z23SV_ConnectionlessPacket8netadr_tP5msg_t_40
	mov ecx, [ebx+0x20]
	mov [ebp-0x24], ecx
	mov edx, [ebx+0x24]
	mov [ebp-0x20], edx
	mov eax, [ebx+0x28]
	mov [esp+0x14], eax
	mov [ebp-0x1c], eax
	movzx eax, byte [ebp-0xfd]
	mov [ebp-0xdd], al
	movzx eax, byte [ebp-0xfe]
	mov [ebp-0xde], al
	movzx eax, byte [ebp-0xff]
	mov [ebp-0xdf], al
	movzx eax, byte [ebp-0x100]
	mov [ebp-0xe0], al
	mov eax, [ebp-0x104]
	mov [ebp-0xe4], eax
	movzx eax, word [ebp-0x106]
	mov [ebp-0xdc], ax
	mov [esp+0xc], ecx
	mov [esp+0x10], edx
	mov edx, [ebp-0x104]
	mov [esp], edx
	mov eax, [ebp-0xe0]
	mov [esp+0x4], eax
	mov eax, [ebp-0xdc]
	mov [esp+0x8], eax
	call _Z18NET_CompareBaseAdr8netadr_tS_
	test eax, eax
	jz _Z23SV_ConnectionlessPacket8netadr_tP5msg_t_50
	movzx eax, word [ebp-0x106]
	cmp ax, [ebx+0x28]
	jz _Z23SV_ConnectionlessPacket8netadr_tP5msg_t_60
_Z23SV_ConnectionlessPacket8netadr_tP5msg_t_50:
	mov eax, [sv_maxclients]
	add esi, 0x1
	add ebx, 0xa5634
	cmp [eax+0xc], esi
	jg _Z23SV_ConnectionlessPacket8netadr_tP5msg_t_30
_Z23SV_ConnectionlessPacket8netadr_tP5msg_t_20:
	mov ecx, 0xffffffff
_Z23SV_ConnectionlessPacket8netadr_tP5msg_t_240:
	mov edx, [edi+0x8]
	movzx eax, byte [edx+0x7]
	cmp al, 0x43
	jz _Z23SV_ConnectionlessPacket8netadr_tP5msg_t_70
	cmp al, 0x31
	jz _Z23SV_ConnectionlessPacket8netadr_tP5msg_t_80
	cmp al, 0x4a
	jz _Z23SV_ConnectionlessPacket8netadr_tP5msg_t_80
	lea eax, [edx+0x4]
	mov [esp+0xc], eax
	mov eax, [edi+0x14]
	sub eax, 0x4
	mov [esp+0x8], eax
	mov [esp+0x4], ecx
	mov dword [esp], 0xd
	call _Z12PbSvAddEventiiiPc
	mov edx, [edi+0x8]
	movzx eax, byte [edx+0x7]
_Z23SV_ConnectionlessPacket8netadr_tP5msg_t_70:
	cmp al, 0x53
	jz _Z23SV_ConnectionlessPacket8netadr_tP5msg_t_90
	cmp al, 0x32
	jz _Z23SV_ConnectionlessPacket8netadr_tP5msg_t_90
	cmp al, 0x47
	jz _Z23SV_ConnectionlessPacket8netadr_tP5msg_t_90
	cmp al, 0x49
	jz _Z23SV_ConnectionlessPacket8netadr_tP5msg_t_90
	cmp al, 0x59
	jz _Z23SV_ConnectionlessPacket8netadr_tP5msg_t_90
	cmp al, 0x42
	jz _Z23SV_ConnectionlessPacket8netadr_tP5msg_t_90
	cmp al, 0x4c
	jz _Z23SV_ConnectionlessPacket8netadr_tP5msg_t_90
	mov eax, com_dedicated
	mov eax, [eax]
	test eax, eax
	jz _Z23SV_ConnectionlessPacket8netadr_tP5msg_t_100
	mov ebx, [eax+0xc]
	test ebx, ebx
	jnz _Z23SV_ConnectionlessPacket8netadr_tP5msg_t_90
_Z23SV_ConnectionlessPacket8netadr_tP5msg_t_100:
	lea eax, [edx+0x4]
	mov [ebp+0x10], eax
	mov eax, [edi+0x14]
	sub eax, 0x4
	mov [ebp+0xc], eax
	mov dword [ebp+0x8], 0xd
	add esp, 0x12c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z12PbClAddEventiiPc
_Z23SV_ConnectionlessPacket8netadr_tP5msg_t_90:
	add esp, 0x12c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z23SV_ConnectionlessPacket8netadr_tP5msg_t_80:
	movzx eax, byte [edx+0x7]
	jmp _Z23SV_ConnectionlessPacket8netadr_tP5msg_t_70
_Z23SV_ConnectionlessPacket8netadr_tP5msg_t_10:
	mov [esp], edi
	call _Z18MSG_ReadStringLineP5msg_t
	mov [esp], eax
	call _Z21SV_Cmd_TokenizeStringPKc
	mov eax, sv_cmd_args
	mov edx, [eax]
	mov ecx, [eax+edx*4+0x44]
	test ecx, ecx
	jle _Z23SV_ConnectionlessPacket8netadr_tP5msg_t_110
	mov eax, [eax+edx*4+0x64]
	mov ebx, [eax]
_Z23SV_ConnectionlessPacket8netadr_tP5msg_t_230:
	mov eax, [sv_packet_info]
	cmp byte [eax+0xc], 0x0
	jnz _Z23SV_ConnectionlessPacket8netadr_tP5msg_t_120
_Z23SV_ConnectionlessPacket8netadr_tP5msg_t_200:
	mov dword [esp+0x4], _cstring_getstatus
	mov [esp], ebx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z23SV_ConnectionlessPacket8netadr_tP5msg_t_130
	mov dword [esp+0x4], _cstring_v
	mov [esp], ebx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z23SV_ConnectionlessPacket8netadr_tP5msg_t_140
	mov [esp], edi
	call _Z13MSG_ReadShortP5msg_t
	mov [ebp-0x10c], eax
	mov eax, [sv_maxclients]
	mov ecx, [eax+0xc]
	test ecx, ecx
	jle _Z23SV_ConnectionlessPacket8netadr_tP5msg_t_150
	xor esi, esi
	mov dword [ebp-0xfc], svs+0x46380c
	mov ebx, svs+0x46380c
	jmp _Z23SV_ConnectionlessPacket8netadr_tP5msg_t_160
_Z23SV_ConnectionlessPacket8netadr_tP5msg_t_170:
	add esi, 0x1
	add dword [ebp-0xfc], 0xa5634
	add ebx, 0xa5634
	cmp esi, [eax+0xc]
	jge _Z23SV_ConnectionlessPacket8netadr_tP5msg_t_150
_Z23SV_ConnectionlessPacket8netadr_tP5msg_t_160:
	mov edx, [ebx]
	test edx, edx
	jz _Z23SV_ConnectionlessPacket8netadr_tP5msg_t_170
	mov ecx, [ebx+0x20]
	mov [ebp-0x30], ecx
	mov edx, [ebx+0x24]
	mov [ebp-0x2c], edx
	mov eax, [ebx+0x28]
	mov [ebp-0x28], eax
	movzx eax, byte [ebp-0xfd]
	mov [ebp-0xe9], al
	movzx eax, byte [ebp-0xfe]
	mov [ebp-0xea], al
	movzx eax, byte [ebp-0xff]
	mov [ebp-0xeb], al
	movzx eax, byte [ebp-0x100]
	mov [ebp-0xec], al
	mov eax, [ebp-0x104]
	mov [ebp-0xf0], eax
	movzx eax, word [ebp-0x106]
	mov [ebp-0xe8], ax
	mov [esp+0xc], ecx
	mov [esp+0x10], edx
	mov edx, [ebx+0x28]
	mov [esp+0x14], edx
	mov eax, [ebp-0x104]
	mov [esp], eax
	mov eax, [ebp-0xec]
	mov [esp+0x4], eax
	mov eax, [ebp-0xe8]
	mov [esp+0x8], eax
	call _Z18NET_CompareBaseAdr8netadr_tS_
	test eax, eax
	jz _Z23SV_ConnectionlessPacket8netadr_tP5msg_t_180
	mov edx, [ebp-0x10c]
	cmp edx, [ebx+0x2c]
	jz _Z23SV_ConnectionlessPacket8netadr_tP5msg_t_190
_Z23SV_ConnectionlessPacket8netadr_tP5msg_t_180:
	mov eax, [sv_maxclients]
	jmp _Z23SV_ConnectionlessPacket8netadr_tP5msg_t_170
_Z23SV_ConnectionlessPacket8netadr_tP5msg_t_130:
	movzx edx, byte [ebp-0xfd]
	mov [ebp-0xc5], dl
	movzx eax, byte [ebp-0xfe]
	mov [ebp-0xc6], al
	movzx edx, byte [ebp-0xff]
	mov [ebp-0xc7], dl
	movzx eax, byte [ebp-0x100]
	mov [ebp-0xc8], al
	mov edx, [ebp-0x104]
	mov [ebp-0xcc], edx
	movzx eax, word [ebp-0x106]
	mov [ebp-0xc4], ax
	mov [esp], edx
	mov eax, [ebp-0xc8]
	mov [esp+0x4], eax
	mov eax, [ebp-0xc4]
	mov [esp+0x8], eax
	call _Z41SV_UpdateLastTimeMasterServerCommunicated8netadr_t
	movzx edx, byte [ebp-0xfd]
	mov [ebp-0xb9], dl
	movzx eax, byte [ebp-0xfe]
	mov [ebp-0xba], al
	movzx edx, byte [ebp-0xff]
	mov [ebp-0xbb], dl
	movzx eax, byte [ebp-0x100]
	mov [ebp-0xbc], al
	mov edx, [ebp-0x104]
	mov [ebp-0xc0], edx
	movzx eax, word [ebp-0x106]
	mov [ebp-0xb8], ax
	mov [esp], edx
	mov eax, [ebp-0xbc]
	mov [esp+0x4], eax
	mov eax, [ebp-0xb8]
	mov [esp+0x8], eax
	call _Z10SVC_Status8netadr_t
_Z23SV_ConnectionlessPacket8netadr_tP5msg_t_150:
	add esp, 0x12c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z25SV_Cmd_EndTokenizedStringv
_Z23SV_ConnectionlessPacket8netadr_tP5msg_t_120:
	movzx edx, byte [ebp-0xfd]
	mov [ebp-0xd1], dl
	movzx eax, byte [ebp-0xfe]
	mov [ebp-0xd2], al
	movzx edx, byte [ebp-0xff]
	mov [ebp-0xd3], dl
	movzx eax, byte [ebp-0x100]
	mov [ebp-0xd4], al
	mov edx, [ebp-0x104]
	mov [ebp-0xd8], edx
	movzx eax, word [ebp-0x106]
	mov [ebp-0xd0], ax
	mov [esp], edx
	mov eax, [ebp-0xd4]
	mov [esp+0x4], eax
	mov eax, [ebp-0xd0]
	mov [esp+0x8], eax
	call _Z15NET_AdrToString8netadr_t
	mov [esp+0xc], ebx
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_sv_packet_s__s
	mov dword [esp], 0xf
	call _Z10Com_PrintfiPKcz
	jmp _Z23SV_ConnectionlessPacket8netadr_tP5msg_t_200
_Z23SV_ConnectionlessPacket8netadr_tP5msg_t_140:
	mov dword [esp+0x4], _cstring_getinfo
	mov [esp], ebx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z23SV_ConnectionlessPacket8netadr_tP5msg_t_210
	mov dword [esp+0x4], _cstring_getchallenge
	mov [esp], ebx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z23SV_ConnectionlessPacket8netadr_tP5msg_t_220
	movzx edx, byte [ebp-0xfd]
	mov [ebp-0x95], dl
	movzx eax, byte [ebp-0xfe]
	mov [ebp-0x96], al
	movzx edx, byte [ebp-0xff]
	mov [ebp-0x97], dl
	movzx eax, byte [ebp-0x100]
	mov [ebp-0x98], al
	mov edx, [ebp-0x104]
	mov [ebp-0x9c], edx
	movzx eax, word [ebp-0x106]
	mov [ebp-0x94], ax
	mov [esp], edx
	mov eax, [ebp-0x98]
	mov [esp+0x4], eax
	mov eax, [ebp-0x94]
	mov [esp+0x8], eax
	call _Z41SV_UpdateLastTimeMasterServerCommunicated8netadr_t
	movzx edx, byte [ebp-0xfd]
	mov [ebp-0x89], dl
	movzx eax, byte [ebp-0xfe]
	mov [ebp-0x8a], al
	movzx edx, byte [ebp-0xff]
	mov [ebp-0x8b], dl
	movzx eax, byte [ebp-0x100]
	mov [ebp-0x8c], al
	mov edx, [ebp-0x104]
	mov [ebp-0x90], edx
	movzx eax, word [ebp-0x106]
	mov [ebp-0x88], ax
	mov [esp], edx
	mov eax, [ebp-0x8c]
	mov [esp+0x4], eax
	mov eax, [ebp-0x88]
	mov [esp+0x8], eax
	call _Z15SV_GetChallenge8netadr_t
	jmp _Z23SV_ConnectionlessPacket8netadr_tP5msg_t_150
_Z23SV_ConnectionlessPacket8netadr_tP5msg_t_110:
	mov ebx, _cstring_null
	jmp _Z23SV_ConnectionlessPacket8netadr_tP5msg_t_230
_Z23SV_ConnectionlessPacket8netadr_tP5msg_t_210:
	movzx edx, byte [ebp-0xfd]
	mov [ebp-0xad], dl
	movzx eax, byte [ebp-0xfe]
	mov [ebp-0xae], al
	movzx edx, byte [ebp-0xff]
	mov [ebp-0xaf], dl
	movzx eax, byte [ebp-0x100]
	mov [ebp-0xb0], al
	mov edx, [ebp-0x104]
	mov [ebp-0xb4], edx
	movzx eax, word [ebp-0x106]
	mov [ebp-0xac], ax
	mov [esp], edx
	mov eax, [ebp-0xb0]
	mov [esp+0x4], eax
	mov eax, [ebp-0xac]
	mov [esp+0x8], eax
	call _Z8SVC_Info8netadr_t
	movzx edx, byte [ebp-0xfd]
	mov [ebp-0xa1], dl
	movzx eax, byte [ebp-0xfe]
	mov [ebp-0xa2], al
	movzx edx, byte [ebp-0xff]
	mov [ebp-0xa3], dl
	movzx eax, byte [ebp-0x100]
	mov [ebp-0xa4], al
	mov edx, [ebp-0x104]
	mov [ebp-0xa8], edx
	movzx eax, word [ebp-0x106]
	mov [ebp-0xa0], ax
	mov [esp], edx
	mov eax, [ebp-0xa4]
	mov [esp+0x4], eax
	mov eax, [ebp-0xa0]
	mov [esp+0x8], eax
	call _Z41SV_UpdateLastTimeMasterServerCommunicated8netadr_t
	jmp _Z23SV_ConnectionlessPacket8netadr_tP5msg_t_150
_Z23SV_ConnectionlessPacket8netadr_tP5msg_t_60:
	mov ecx, esi
	jmp _Z23SV_ConnectionlessPacket8netadr_tP5msg_t_240
_Z23SV_ConnectionlessPacket8netadr_tP5msg_t_220:
	mov dword [esp+0x4], _cstring_connect
	mov [esp], ebx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z23SV_ConnectionlessPacket8netadr_tP5msg_t_250
	mov ebx, [edi+0x8]
	movzx edx, byte [ebp-0xfd]
	mov [ebp-0x7d], dl
	movzx eax, byte [ebp-0xfe]
	mov [ebp-0x7e], al
	movzx edx, byte [ebp-0xff]
	mov [ebp-0x7f], dl
	movzx eax, byte [ebp-0x100]
	mov [ebp-0x80], al
	mov edx, [ebp-0x104]
	mov [ebp-0x84], edx
	movzx eax, word [ebp-0x106]
	mov [ebp-0x7c], ax
	mov [esp], edx
	mov eax, [ebp-0x80]
	mov [esp+0x4], eax
	mov eax, [ebp-0x7c]
	mov [esp+0x8], eax
	call _Z18NET_IsLocalAddress8netadr_t
	test eax, eax
	jz _Z23SV_ConnectionlessPacket8netadr_tP5msg_t_260
	mov eax, _cstring_localhost
_Z23SV_ConnectionlessPacket8netadr_tP5msg_t_290:
	mov [esp+0x4], ebx
	mov [esp], eax
	call _Z19PbPassConnectStringPcS_
	movzx edx, byte [ebp-0xfd]
	mov [ebp-0x65], dl
	movzx eax, byte [ebp-0xfe]
	mov [ebp-0x66], al
	movzx edx, byte [ebp-0xff]
	mov [ebp-0x67], dl
	movzx eax, byte [ebp-0x100]
	mov [ebp-0x68], al
	mov edx, [ebp-0x104]
	mov [ebp-0x6c], edx
	movzx eax, word [ebp-0x106]
	mov [ebp-0x64], ax
	mov [esp], edx
	mov eax, [ebp-0x68]
	mov [esp+0x4], eax
	mov eax, [ebp-0x64]
	mov [esp+0x8], eax
	call _Z16SV_DirectConnect8netadr_t
	jmp _Z23SV_ConnectionlessPacket8netadr_tP5msg_t_150
_Z23SV_ConnectionlessPacket8netadr_tP5msg_t_250:
	mov dword [esp+0x4], _cstring_stats
	mov [esp], ebx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z23SV_ConnectionlessPacket8netadr_tP5msg_t_270
	movzx edx, byte [ebp-0xfd]
	mov [ebp-0x59], dl
	movzx eax, byte [ebp-0xfe]
	mov [ebp-0x5a], al
	movzx edx, byte [ebp-0xff]
	mov [ebp-0x5b], dl
	movzx eax, byte [ebp-0x100]
	mov [ebp-0x5c], al
	mov edx, [ebp-0x104]
	mov [ebp-0x60], edx
	movzx eax, word [ebp-0x106]
	mov [ebp-0x58], ax
	mov [esp+0xc], edi
	mov [esp], edx
	mov eax, [ebp-0x5c]
	mov [esp+0x4], eax
	mov eax, [ebp-0x58]
	mov [esp+0x8], eax
	call _Z15SV_ReceiveStats8netadr_tP5msg_t
	jmp _Z23SV_ConnectionlessPacket8netadr_tP5msg_t_150
_Z23SV_ConnectionlessPacket8netadr_tP5msg_t_270:
	mov dword [esp+0x4], _cstring_ipauthorize
	mov [esp], ebx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z23SV_ConnectionlessPacket8netadr_tP5msg_t_280
	movzx edx, byte [ebp-0xfd]
	mov [ebp-0x4d], dl
	movzx eax, byte [ebp-0xfe]
	mov [ebp-0x4e], al
	movzx edx, byte [ebp-0xff]
	mov [ebp-0x4f], dl
	movzx eax, byte [ebp-0x100]
	mov [ebp-0x50], al
	mov edx, [ebp-0x104]
	mov [ebp-0x54], edx
	movzx eax, word [ebp-0x106]
	mov [ebp-0x4c], ax
	mov [esp], edx
	mov eax, [ebp-0x50]
	mov [esp+0x4], eax
	mov eax, [ebp-0x4c]
	mov [esp+0x8], eax
	call _Z41SV_UpdateLastTimeMasterServerCommunicated8netadr_t
	movzx edx, byte [ebp-0xfd]
	mov [ebp-0x41], dl
	movzx eax, byte [ebp-0xfe]
	mov [ebp-0x42], al
	movzx edx, byte [ebp-0xff]
	mov [ebp-0x43], dl
	movzx eax, byte [ebp-0x100]
	mov [ebp-0x44], al
	mov edx, [ebp-0x104]
	mov [ebp-0x48], edx
	movzx eax, word [ebp-0x106]
	mov [ebp-0x40], ax
	mov [esp], edx
	mov eax, [ebp-0x44]
	mov [esp+0x4], eax
	mov eax, [ebp-0x40]
	mov [esp+0x8], eax
	call _Z20SV_AuthorizeIpPacket8netadr_t
	jmp _Z23SV_ConnectionlessPacket8netadr_tP5msg_t_150
_Z23SV_ConnectionlessPacket8netadr_tP5msg_t_260:
	movzx edx, byte [ebp-0xfd]
	mov [ebp-0x71], dl
	movzx eax, byte [ebp-0xfe]
	mov [ebp-0x72], al
	movzx edx, byte [ebp-0xff]
	mov [ebp-0x73], dl
	movzx eax, byte [ebp-0x100]
	mov [ebp-0x74], al
	mov edx, [ebp-0x104]
	mov [ebp-0x78], edx
	movzx eax, word [ebp-0x106]
	mov [ebp-0x70], ax
	mov [esp], edx
	mov eax, [ebp-0x74]
	mov [esp+0x4], eax
	mov eax, [ebp-0x70]
	mov [esp+0x8], eax
	call _Z15NET_AdrToString8netadr_t
	jmp _Z23SV_ConnectionlessPacket8netadr_tP5msg_t_290
_Z23SV_ConnectionlessPacket8netadr_tP5msg_t_190:
	movzx edx, word [ebp-0x106]
	mov eax, [ebp-0xfc]
	cmp [eax+0x28], dx
	jz _Z23SV_ConnectionlessPacket8netadr_tP5msg_t_300
	mov dword [esp+0x4], _cstring_sv_readpackets_f
	mov dword [esp], 0xf
	call _Z10Com_PrintfiPKcz
	movzx edx, word [ebp-0x106]
	mov eax, [ebp-0xfc]
	mov [eax+0x28], dx
_Z23SV_ConnectionlessPacket8netadr_tP5msg_t_300:
	mov eax, [ebp-0xfc]
	cmp dword [eax], 0x1
	jz _Z23SV_ConnectionlessPacket8netadr_tP5msg_t_150
	mov eax, [svs+0x463804]
	mov edx, [ebp-0xfc]
	mov [edx+0x21454], eax
	cmp dword [edx], 0x3
	jg _Z23SV_ConnectionlessPacket8netadr_tP5msg_t_310
	mov [esp+0x4], edi
	mov [esp], edx
	call _Z19SV_PreGameUserVoiceP8client_tP5msg_t
	jmp _Z23SV_ConnectionlessPacket8netadr_tP5msg_t_150
_Z23SV_ConnectionlessPacket8netadr_tP5msg_t_280:
	mov dword [esp+0x4], _cstring_rcon
	mov [esp], ebx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z23SV_ConnectionlessPacket8netadr_tP5msg_t_320
	movzx edx, byte [ebp-0xfd]
	mov [ebp-0x35], dl
	movzx eax, byte [ebp-0xfe]
	mov [ebp-0x36], al
	movzx edx, byte [ebp-0xff]
	mov [ebp-0x37], dl
	movzx eax, byte [ebp-0x100]
	mov [ebp-0x38], al
	mov edx, [ebp-0x104]
	mov [ebp-0x3c], edx
	movzx eax, word [ebp-0x106]
	mov [ebp-0x34], ax
	mov [esp+0xc], edi
	mov [esp], edx
	mov eax, [ebp-0x38]
	mov [esp+0x4], eax
	mov eax, [ebp-0x34]
	mov [esp+0x8], eax
	call _Z17SVC_RemoteCommand8netadr_tP5msg_t
	jmp _Z23SV_ConnectionlessPacket8netadr_tP5msg_t_150
_Z23SV_ConnectionlessPacket8netadr_tP5msg_t_320:
	mov dword [esp+0x4], _cstring_disconnect
	mov [esp], ebx
	call _Z9I_stricmpPKcS0_
	jmp _Z23SV_ConnectionlessPacket8netadr_tP5msg_t_150
_Z23SV_ConnectionlessPacket8netadr_tP5msg_t_310:
	mov [esp+0x4], edi
	mov eax, [ebp-0xfc]
	mov [esp], eax
	call _Z12SV_UserVoiceP8client_tP5msg_t
	jmp _Z23SV_ConnectionlessPacket8netadr_tP5msg_t_150
	nop
	add [eax], al


;SVC_Info(netadr_t)
_Z8SVC_Info8netadr_t:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x84c
	movzx eax, word [ebp+0x10]
	mov [ebp-0x82a], ax
	movzx eax, byte [ebp+0xf]
	mov [ebp-0x82b], al
	movzx eax, byte [ebp+0xe]
	mov [ebp-0x82c], al
	movzx eax, byte [ebp+0xd]
	mov [ebp-0x82d], al
	movzx eax, byte [ebp+0xc]
	mov [ebp-0x82e], al
	mov eax, [ebp+0x8]
	mov [ebp-0x834], eax
	mov eax, [sv_privateClients]
	mov ecx, [eax+0xc]
	test ecx, ecx
	jg _Z8SVC_Info8netadr_t_10
	xor edi, edi
_Z8SVC_Info8netadr_t_310:
	mov eax, [sv_maxclients]
	mov esi, [eax+0xc]
	cmp ecx, esi
	jl _Z8SVC_Info8netadr_t_20
	mov ebx, edi
	mov byte [ebp-0x424], 0x0
	mov eax, sv_cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x1
	jle _Z8SVC_Info8netadr_t_30
_Z8SVC_Info8netadr_t_280:
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x4]
_Z8SVC_Info8netadr_t_290:
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_challenge
	lea esi, [ebp-0x424]
	mov [esp], esi
	call _Z19Info_SetValueForKeyPcPKcS1_
	mov dword [esp+0x4], 0x6
	mov dword [esp], _cstring_i
	call _Z2vaPKcz
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_protocol
	mov [esp], esi
	call _Z19Info_SetValueForKeyPcPKcS1_
	mov eax, [sv_hostname]
	mov eax, [eax+0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_hostname
	mov [esp], esi
	call _Z19Info_SetValueForKeyPcPKcS1_
	mov eax, [sv_mapname]
	mov eax, [eax+0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_mapname
	mov [esp], esi
	call _Z19Info_SetValueForKeyPcPKcS1_
	test ebx, ebx
	jnz _Z8SVC_Info8netadr_t_40
_Z8SVC_Info8netadr_t_380:
	mov eax, [sv_privateClients]
	mov eax, [eax+0xc]
	sub eax, edi
	mov edx, [sv_maxclients]
	mov edx, [edx+0xc]
	sub edx, eax
	test edx, edx
	jle _Z8SVC_Info8netadr_t_50
	mov [esp+0x4], edx
	mov dword [esp], _cstring_i
	call _Z2vaPKcz
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_sv_maxclients
	mov [esp], esi
	call _Z19Info_SetValueForKeyPcPKcS1_
_Z8SVC_Info8netadr_t_50:
	mov eax, [sv_gametype]
	mov eax, [eax+0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_gametype
	mov [esp], esi
	call _Z19Info_SetValueForKeyPcPKcS1_
	mov eax, [sv_pure]
	cmp byte [eax+0xc], 0x0
	jnz _Z8SVC_Info8netadr_t_60
	mov eax, fs_numServerIwds
	mov eax, [eax]
	test eax, eax
	jnz _Z8SVC_Info8netadr_t_60
	mov eax, [sv_minPing]
	mov eax, [eax+0xc]
	test eax, eax
	jnz _Z8SVC_Info8netadr_t_70
_Z8SVC_Info8netadr_t_220:
	mov eax, [sv_maxPing]
	mov eax, [eax+0xc]
	test eax, eax
	jnz _Z8SVC_Info8netadr_t_80
_Z8SVC_Info8netadr_t_230:
	mov dword [esp], _cstring_fs_game
	call _Z14Dvar_GetStringPKc
	mov ebx, eax
	cmp byte [eax], 0x0
	jnz _Z8SVC_Info8netadr_t_90
_Z8SVC_Info8netadr_t_240:
	mov eax, [sv_allowAnonymous]
	movzx eax, byte [eax+0xc]
	test al, al
	jnz _Z8SVC_Info8netadr_t_100
_Z8SVC_Info8netadr_t_250:
	mov eax, [sv_disableClientConsole]
	movzx eax, byte [eax+0xc]
	test al, al
	jnz _Z8SVC_Info8netadr_t_110
_Z8SVC_Info8netadr_t_260:
	mov dword [esp], _cstring_g_password
	call _Z14Dvar_GetStringPKc
	test eax, eax
	jz _Z8SVC_Info8netadr_t_120
	cmp byte [eax], 0x0
	jnz _Z8SVC_Info8netadr_t_130
_Z8SVC_Info8netadr_t_120:
	mov dword [esp], _cstring_scr_team_fftype
	call _Z11Dvar_GetIntPKc
	test eax, eax
	jnz _Z8SVC_Info8netadr_t_140
_Z8SVC_Info8netadr_t_370:
	mov dword [esp], _cstring_scr_game_allowki
	call _Z11Dvar_GetIntPKc
	test eax, eax
	jnz _Z8SVC_Info8netadr_t_150
_Z8SVC_Info8netadr_t_360:
	mov dword [esp], _cstring_scr_hardcore
	call _Z11Dvar_GetIntPKc
	test eax, eax
	jnz _Z8SVC_Info8netadr_t_160
_Z8SVC_Info8netadr_t_350:
	mov dword [esp], _cstring_scr_oldschool
	call _Z11Dvar_GetIntPKc
	test eax, eax
	jnz _Z8SVC_Info8netadr_t_170
_Z8SVC_Info8netadr_t_340:
	mov eax, com_dedicated
	mov eax, [eax]
	test eax, eax
	jz _Z8SVC_Info8netadr_t_180
	mov edi, [eax+0xc]
	test edi, edi
	jnz _Z8SVC_Info8netadr_t_190
_Z8SVC_Info8netadr_t_180:
	mov dword [esp+0x4], 0x6
_Z8SVC_Info8netadr_t_390:
	mov dword [esp], _cstring_i
	call _Z2vaPKcz
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_hw
	mov [esp], esi
	call _Z19Info_SetValueForKeyPcPKcS1_
	mov eax, [sv_pure]
	cmp byte [eax+0xc], 0x0
	jz _Z8SVC_Info8netadr_t_200
	cmp byte [ebx], 0x0
	jz _Z8SVC_Info8netadr_t_210
_Z8SVC_Info8netadr_t_200:
	mov ebx, 0x1
_Z8SVC_Info8netadr_t_330:
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_i
	call _Z2vaPKcz
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_mod
	mov [esp], esi
	call _Z19Info_SetValueForKeyPcPKcS1_
	mov eax, [sv_voice]
	movzx eax, byte [eax+0xc]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_i
	call _Z2vaPKcz
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_voice
	mov [esp], esi
	call _Z19Info_SetValueForKeyPcPKcS1_
	mov eax, [sv_punkbuster]
	movzx eax, byte [eax+0xc]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_i
	call _Z2vaPKcz
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_pb
	mov [esp], esi
	call _Z19Info_SetValueForKeyPcPKcS1_
	mov dword [esp+0x8], 0x400
	mov dword [esp+0x4], _cstring_inforesponse
	lea ebx, [ebp-0x824]
	mov [esp], ebx
	call _Z10I_strncpyzPcPKci
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x400
	mov [esp], ebx
	call _Z9I_strncatPciPKc
	movzx eax, word [ebp-0x82a]
	mov [ebp-0x1c], ax
	movzx eax, byte [ebp-0x82b]
	mov [ebp-0x1d], al
	movzx eax, byte [ebp-0x82c]
	mov [ebp-0x1e], al
	movzx eax, byte [ebp-0x82d]
	mov [ebp-0x1f], al
	movzx eax, byte [ebp-0x82e]
	mov [ebp-0x20], al
	mov eax, [ebp-0x834]
	mov [ebp-0x24], eax
	mov [esp+0x10], ebx
	mov [esp+0x4], eax
	mov eax, [ebp-0x20]
	mov [esp+0x8], eax
	mov eax, [ebp-0x1c]
	mov [esp+0xc], eax
	mov dword [esp], 0x1
	call _Z18NET_OutOfBandPrint8netsrc_t8netadr_tPKc
	add esp, 0x84c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z8SVC_Info8netadr_t_60:
	mov dword [esp+0x8], _cstring_1
	mov dword [esp+0x4], _cstring_pure
	mov [esp], esi
	call _Z19Info_SetValueForKeyPcPKcS1_
	mov eax, [sv_minPing]
	mov eax, [eax+0xc]
	test eax, eax
	jz _Z8SVC_Info8netadr_t_220
_Z8SVC_Info8netadr_t_70:
	mov [esp+0x4], eax
	mov dword [esp], _cstring_i
	call _Z2vaPKcz
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_minping
	mov [esp], esi
	call _Z19Info_SetValueForKeyPcPKcS1_
	mov eax, [sv_maxPing]
	mov eax, [eax+0xc]
	test eax, eax
	jz _Z8SVC_Info8netadr_t_230
_Z8SVC_Info8netadr_t_80:
	mov [esp+0x4], eax
	mov dword [esp], _cstring_i
	call _Z2vaPKcz
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_maxping
	mov [esp], esi
	call _Z19Info_SetValueForKeyPcPKcS1_
	mov dword [esp], _cstring_fs_game
	call _Z14Dvar_GetStringPKc
	mov ebx, eax
	cmp byte [eax], 0x0
	jz _Z8SVC_Info8netadr_t_240
_Z8SVC_Info8netadr_t_90:
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_game
	mov [esp], esi
	call _Z19Info_SetValueForKeyPcPKcS1_
	mov eax, [sv_allowAnonymous]
	movzx eax, byte [eax+0xc]
	test al, al
	jz _Z8SVC_Info8netadr_t_250
_Z8SVC_Info8netadr_t_100:
	movzx eax, al
	mov [esp+0x4], eax
	mov dword [esp], _cstring_i
	call _Z2vaPKcz
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_sv_allowanonymou
	mov [esp], esi
	call _Z19Info_SetValueForKeyPcPKcS1_
	mov eax, [sv_disableClientConsole]
	movzx eax, byte [eax+0xc]
	test al, al
	jz _Z8SVC_Info8netadr_t_260
_Z8SVC_Info8netadr_t_110:
	movzx eax, al
	mov [esp+0x4], eax
	mov dword [esp], _cstring_i
	call _Z2vaPKcz
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_con_disabled
	mov [esp], esi
	call _Z19Info_SetValueForKeyPcPKcS1_
	jmp _Z8SVC_Info8netadr_t_260
_Z8SVC_Info8netadr_t_20:
	lea eax, [ecx+ecx*4]
	shl eax, 0x7
	add eax, ecx
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	lea eax, [ecx+eax*4]
	lea edx, [eax*4+svs+0x46380c]
	mov ebx, edi
_Z8SVC_Info8netadr_t_270:
	lea eax, [ebx+0x1]
	cmp dword [edx], 0x2
	cmovge ebx, eax
	add ecx, 0x1
	add edx, 0xa5634
	cmp esi, ecx
	jg _Z8SVC_Info8netadr_t_270
	mov byte [ebp-0x424], 0x0
	mov eax, sv_cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x1
	jg _Z8SVC_Info8netadr_t_280
_Z8SVC_Info8netadr_t_30:
	mov eax, _cstring_null
	jmp _Z8SVC_Info8netadr_t_290
_Z8SVC_Info8netadr_t_10:
	xor ebx, ebx
	xor edi, edi
	mov edx, svs+0x46380c
_Z8SVC_Info8netadr_t_300:
	lea eax, [edi+0x1]
	cmp dword [edx], 0x2
	cmovge edi, eax
	add ebx, 0x1
	add edx, 0xa5634
	cmp ecx, ebx
	jnz _Z8SVC_Info8netadr_t_300
	jmp _Z8SVC_Info8netadr_t_310
_Z8SVC_Info8netadr_t_210:
	mov dword [esp], _cstring_sv_referencediwd
	call _Z14Dvar_GetStringPKc
	cmp byte [eax], 0x0
	jnz _Z8SVC_Info8netadr_t_320
	xor ebx, ebx
	jmp _Z8SVC_Info8netadr_t_330
_Z8SVC_Info8netadr_t_170:
	mov [esp+0x4], eax
	mov dword [esp], _cstring_i
	call _Z2vaPKcz
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_od
	mov [esp], esi
	call _Z19Info_SetValueForKeyPcPKcS1_
	jmp _Z8SVC_Info8netadr_t_340
_Z8SVC_Info8netadr_t_160:
	mov [esp+0x4], eax
	mov dword [esp], _cstring_i
	call _Z2vaPKcz
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_hc
	mov [esp], esi
	call _Z19Info_SetValueForKeyPcPKcS1_
	jmp _Z8SVC_Info8netadr_t_350
_Z8SVC_Info8netadr_t_150:
	mov [esp+0x4], eax
	mov dword [esp], _cstring_i
	call _Z2vaPKcz
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_kc
	mov [esp], esi
	call _Z19Info_SetValueForKeyPcPKcS1_
	jmp _Z8SVC_Info8netadr_t_360
_Z8SVC_Info8netadr_t_140:
	mov [esp+0x4], eax
	mov dword [esp], _cstring_i
	call _Z2vaPKcz
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_ff
	mov [esp], esi
	call _Z19Info_SetValueForKeyPcPKcS1_
	jmp _Z8SVC_Info8netadr_t_370
_Z8SVC_Info8netadr_t_40:
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_i
	call _Z2vaPKcz
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_clients
	mov [esp], esi
	call _Z19Info_SetValueForKeyPcPKcS1_
	jmp _Z8SVC_Info8netadr_t_380
_Z8SVC_Info8netadr_t_190:
	mov dword [esp+0x4], 0x2
	jmp _Z8SVC_Info8netadr_t_390
_Z8SVC_Info8netadr_t_130:
	mov dword [esp+0x8], _cstring_1
	mov dword [esp+0x4], _cstring_pswrd
	mov [esp], esi
	call _Z19Info_SetValueForKeyPcPKcS1_
	jmp _Z8SVC_Info8netadr_t_120
_Z8SVC_Info8netadr_t_320:
	mov [esp], eax
	call _Z21SV_Cmd_TokenizeStringPKc
	mov edx, sv_cmd_args
	mov eax, [edx]
	mov edi, [edx+eax*4+0x44]
	test edi, edi
	jle _Z8SVC_Info8netadr_t_400
	xor ebx, ebx
	jmp _Z8SVC_Info8netadr_t_410
_Z8SVC_Info8netadr_t_430:
	mov eax, _cstring_null
_Z8SVC_Info8netadr_t_440:
	mov dword [esp+0x4], _cstring_main
	mov [esp], eax
	call _Z8FS_iwIwdPKcPc
	test eax, eax
	jz _Z8SVC_Info8netadr_t_420
	add ebx, 0x1
	cmp edi, ebx
	jz _Z8SVC_Info8netadr_t_400
	mov edx, sv_cmd_args
_Z8SVC_Info8netadr_t_410:
	mov eax, [edx]
	cmp ebx, [edx+eax*4+0x44]
	jge _Z8SVC_Info8netadr_t_430
	mov eax, [edx+eax*4+0x64]
	mov eax, [eax+ebx*4]
	jmp _Z8SVC_Info8netadr_t_440
_Z8SVC_Info8netadr_t_400:
	xor ebx, ebx
	call _Z25SV_Cmd_EndTokenizedStringv
	jmp _Z8SVC_Info8netadr_t_330
_Z8SVC_Info8netadr_t_420:
	mov ebx, 0x1
	call _Z25SV_Cmd_EndTokenizedStringv
	jmp _Z8SVC_Info8netadr_t_330
	nop


;SV_Frame(int)
_Z8SV_Framei:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov edi, [ebp+0x8]
	cmp byte [sv+0x5fc48], 0x0
	jz _Z8SV_Framei_10
	mov eax, [sv+0x5fc4c]
	test eax, eax
	jz _Z8SV_Framei_20
	cmp byte [eax], 0x0
	jnz _Z8SV_Framei_30
_Z8SV_Framei_20:
	mov dword [esp], _cstring_exe_serverkilled
	call _Z12Com_ShutdownPKc
_Z8SV_Framei_180:
	mov byte [sv+0x5fc48], 0x0
	mov dword [sv+0x5fc4c], 0x0
_Z8SV_Framei_40:
	mov eax, edi
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z8SV_Framei_10:
	mov eax, com_sv_running
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z8SV_Framei_40
	mov eax, cl_paused
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	jz _Z8SV_Framei_50
	mov eax, [sv_maxclients]
	mov esi, [eax+0xc]
	test esi, esi
	jle _Z8SV_Framei_60
	xor ebx, ebx
	xor ecx, ecx
	mov edx, svs+0x46380c
_Z8SV_Framei_70:
	lea eax, [ecx+0x1]
	cmp dword [edx], 0x2
	cmovge ecx, eax
	add ebx, 0x1
	add edx, 0xa5634
	cmp ebx, esi
	jnz _Z8SV_Framei_70
	sub ecx, 0x1
	jle _Z8SV_Framei_60
	mov dword [esp+0x4], 0x0
	mov eax, sv_paused
	mov eax, [eax]
	mov [esp], eax
	call _Z11Dvar_SetIntPK6dvar_si
_Z8SV_Framei_50:
	mov ecx, [sv_fps]
	mov ebx, 0x3e8
	mov eax, ebx
	cdq
	idiv dword [ecx+0xc]
	mov ebx, eax
	mov eax, edi
	add eax, [sv+0x4]
	mov [sv+0x4], eax
	cmp ebx, eax
	jg _Z8SV_Framei_40
	cmp dword [svs+0x463804], 0x70000000
	jg _Z8SV_Framei_80
	mov edx, 0x7ffffffe
	mov eax, edx
	sub eax, [svs+0x2dbc50c]
	cmp [svs+0x2dbc514], eax
	jge _Z8SV_Framei_90
	cmp dword [svs+0x8246aa4], 0x7fffbffd
	jg _Z8SV_Framei_100
	cmp dword [svs+0x8246aa8], 0x7fffeffd
	jg _Z8SV_Framei_110
	cmp dword [svs+0x624451c], 0x7ffffb4d
	jg _Z8SV_Framei_120
	cmp dword [svs+0x8246aa0], 0x7dfffffd
	jg _Z8SV_Framei_130
	cmp dword [svs+0x8246aac], 0x7ffffdfd
	jg _Z8SV_Framei_140
	sub edx, [svs+0x2dbc510]
	cmp [svs+0x2dbc518], edx
	jge _Z8SV_Framei_150
	call _Z12SV_CalcPingsv
	call _Z11SV_PreFramev
	jmp _Z8SV_Framei_160
_Z8SV_Framei_170:
	call _Z16SV_CheckTimeoutsv
	call _Z21SV_SendClientMessagesv
	mov dword [esp], _cstring_cod4
	call _Z18SV_MasterHeartbeatPKc
_Z8SV_Framei_160:
	sub [sv+0x4], ebx
	add [svs+0x463804], ebx
	call _Z21SV_ResetSkeletonCachev
	call _Z23CL_FlushDebugServerDatav
	mov eax, [svs+0x463804]
	mov [esp], eax
	call _Z10G_RunFramei
	call _Z24CL_UpdateDebugServerDatav
	mov dword [esp], 0x0
	call _Z14Scr_SetLoadingi
	cmp ebx, [sv+0x4]
	jle _Z8SV_Framei_170
	call _Z16SV_CheckTimeoutsv
	call _Z21SV_SendClientMessagesv
	mov dword [esp], _cstring_cod4
	call _Z18SV_MasterHeartbeatPKc
	jmp _Z8SV_Framei_40
_Z8SV_Framei_30:
	mov [esp], eax
	call _Z12Com_ShutdownPKc
	jmp _Z8SV_Framei_180
_Z8SV_Framei_60:
	mov dword [esp+0x4], 0x1
	mov eax, sv_paused
	mov eax, [eax]
	mov [esp], eax
	call _Z11Dvar_SetIntPK6dvar_si
	mov eax, [com_inServerFrame]
	test eax, eax
	jz _Z8SV_Framei_40
	mov dword [com_inServerFrame], 0x0
	call _Z21SV_ResetSkeletonCachev
	call _Z23CL_FlushDebugServerDatav
	mov eax, [svs+0x463804]
	mov [esp], eax
	call _Z10G_RunFramei
	call _Z24CL_UpdateDebugServerDatav
	jmp _Z8SV_Framei_40
_Z8SV_Framei_80:
	mov dword [esp+0x8], 0x40
	mov eax, [sv_mapname]
	mov eax, [eax+0xc]
	mov [esp+0x4], eax
	lea ebx, [ebp-0x58]
	mov [esp], ebx
	call _Z10I_strncpyzPcPKci
	mov dword [esp], _cstring_exe_serverrestar
_Z8SV_Framei_190:
	call _Z12Com_ShutdownPKc
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_map_s
	call _Z2vaPKcz
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call _Z12Cbuf_AddTextiPKc
	mov eax, edi
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z8SV_Framei_110:
	mov dword [esp+0x8], 0x40
	mov eax, [sv_mapname]
	mov eax, [eax+0xc]
	mov [esp+0x4], eax
	lea ebx, [ebp-0x58]
	mov [esp], ebx
	call _Z10I_strncpyzPcPKci
	mov dword [esp], _cstring_exe_serverrestar1
	jmp _Z8SV_Framei_190
_Z8SV_Framei_90:
	mov dword [esp+0x8], 0x40
	mov eax, [sv_mapname]
	mov eax, [eax+0xc]
	mov [esp+0x4], eax
	lea ebx, [ebp-0x58]
	mov [esp], ebx
	call _Z10I_strncpyzPcPKci
	mov dword [esp], _cstring_exe_serverrestar2
	jmp _Z8SV_Framei_190
_Z8SV_Framei_100:
	mov dword [esp+0x8], 0x40
	mov eax, [sv_mapname]
	mov eax, [eax+0xc]
	mov [esp+0x4], eax
	lea ebx, [ebp-0x58]
	mov [esp], ebx
	call _Z10I_strncpyzPcPKci
	mov dword [esp], _cstring_exe_serverrestar3
	jmp _Z8SV_Framei_190
_Z8SV_Framei_120:
	mov dword [esp+0x8], 0x40
	mov eax, [sv_mapname]
	mov eax, [eax+0xc]
	mov [esp+0x4], eax
	lea ebx, [ebp-0x58]
	mov [esp], ebx
	call _Z10I_strncpyzPcPKci
	mov dword [esp], _cstring_exe_serverrestar4
	jmp _Z8SV_Framei_190
_Z8SV_Framei_130:
	mov dword [esp+0x8], 0x40
	mov eax, [sv_mapname]
	mov eax, [eax+0xc]
	mov [esp+0x4], eax
	lea ebx, [ebp-0x58]
	mov [esp], ebx
	call _Z10I_strncpyzPcPKci
	mov dword [esp], _cstring_exe_serverrestar5
	jmp _Z8SV_Framei_190
_Z8SV_Framei_140:
	mov dword [esp+0x8], 0x40
	mov eax, [sv_mapname]
	mov eax, [eax+0xc]
	mov [esp+0x4], eax
	lea ebx, [ebp-0x58]
	mov [esp], ebx
	call _Z10I_strncpyzPcPKci
	mov dword [esp], _cstring_exe_serverrestar6
	jmp _Z8SV_Framei_190
_Z8SV_Framei_150:
	mov dword [esp+0x8], 0x40
	mov eax, [sv_mapname]
	mov eax, [eax+0xc]
	mov [esp+0x4], eax
	lea ebx, [ebp-0x58]
	mov [esp], ebx
	call _Z10I_strncpyzPcPKci
	mov dword [esp], _cstring_exe_serverrestar7
	jmp _Z8SV_Framei_190


;Initialized global or static variables of sv_main_mp:
SECTION .data


;Initialized constant data of sv_main_mp:
SECTION .rdata


;Zero initialized global or static variables of sv_main_mp:
SECTION .bss
tempServerCommandBuf: resb 0x20000
_ZZ17SV_ExpandNewlinesPcE6string: resb 0x400
sv_clientSideBullets: resb 0x4
sv_disableClientConsole: resb 0x4
sv_voice: resb 0x4
sv_fps: resb 0x18
sv_voiceQuality: resb 0x4
sv: resb 0x5fca0
sv_mapname: resb 0x4
sv_gametype: resb 0x4
sv_maxclients: resb 0x4
svs: resb 0xb225300
com_inServerFrame: resb 0x4
rcon_password: resb 0x4
sv_FFCheckSums: resb 0x4
sv_FFNames: resb 0x4
sv_allowAnonymous: resb 0x4
sv_allowDownload: resb 0x4
sv_allowedClan1: resb 0x4
sv_allowedClan2: resb 0x4
sv_botsPressAttackBtn: resb 0x4
sv_cheats: resb 0x4
sv_connectTimeout: resb 0x4
sv_debugRate: resb 0x4
sv_debugReliableCmds: resb 0x4
sv_floodProtect: resb 0x4
sv_hostname: resb 0x4
sv_iwdNames: resb 0x4
sv_iwds: resb 0x4
sv_kickBanTime: resb 0x4
sv_mapRotation: resb 0x4
sv_mapRotationCurrent: resb 0x4
sv_maxPing: resb 0x4
sv_maxRate: resb 0x4
sv_minPing: resb 0x4
sv_packet_info: resb 0x4
sv_padPackets: resb 0x4
sv_privateClients: resb 0x4
sv_privatePassword: resb 0x4
sv_punkbuster: resb 0x4
sv_pure: resb 0x4
sv_reconnectlimit: resb 0x4
sv_referencedFFCheckSums: resb 0x4
sv_referencedFFNames: resb 0x4
sv_referencedIwdNames: resb 0x4
sv_referencedIwds: resb 0x4
sv_serverid: resb 0x4
sv_showAverageBPS: resb 0x4
sv_showCommands: resb 0x4
sv_timeout: resb 0x4
sv_wwwBaseURL: resb 0x4
sv_wwwDlDisconnected: resb 0x4
sv_wwwDownload: resb 0x4
sv_zombietime: resb 0x4
tempServerMsgBuf: resb 0x20004


;All cstrings:
SECTION .rdata
_cstring_pingd_scored:		db "ping=%d score=%d",0
_cstring_challenge:		db "challenge",0
_cstring_fs_restrict:		db "fs_restrict",0
_cstring_i_i_s:		db "%i %i ",22h,"%s",22h,0ah,0
_cstring_g_password:		db "g_password",0
_cstring_0:		db "0",0
_cstring_pswrd:		db "pswrd",0
_cstring_fs_game:		db "fs_game",0
_cstring_sv_referencediwd:		db "sv_referencedIwdNames",0
_cstring_i:		db "%i",0
_cstring_mod:		db "mod",0
_cstring_statusresponsess:		db "statusResponse",0ah,"%s",0ah,"%s",0
_cstring_sv_keywords:		db "sv_keywords",0
_cstring_demo_s:		db "demo %s",0
_cstring_1:		db "1",0
_cstring_null:		db 0
_cstring_main:		db "main",0
_cstring_server_bots:		db "SERVER: bots",0
_cstring_giving_s_a_999_p:		db "Giving %s a 999 ping - !count:",0ah,0
_cstring_giving_s_a_999_p1:		db "Giving %s a 999 ping - >999 calculated ping:",0ah,0
_cstring_giving_s_a_999_p2:		db "Giving %s a 999 ping - not a gentity",0ah,0
_cstring_disconnect:		db "disconnect",0
_cstring_sv_readpackets_f:		db "SV_ReadPackets: fixing up a translated port",0ah,0
_cstring_out_of_range_rel:		db "Out of range reliableAcknowledge message from %s - cl->reliableSequence is %i, reliableAcknowledge is %i",0ah,0
_cstring_invalid_reliable:		db "Invalid reliableAcknowledge message from %s - reliableAcknowledge is %i",0ah,0
_cstring_going_from_cs_zo:		db "Going from CS_ZOMBIE to CS_FREE for client #%i",0ah,0
_cstring_exe_timedout:		db "EXE_TIMEDOUT",0
_cstring__pending_server_:		db "===== pending server commands =====",0ah,0
_cstring_cmd_5d_8d_s:		db "cmd %5d: %8d: %s",0ah,0
_cstring_exe_servercomman:		db "EXE_SERVERCOMMANDOVERFLOW",0
_cstring_c_exe_servercomm:		db "%c ",22h,"EXE_SERVERCOMMANDOVERFLOW",22h,0
_cstring_print:		db "print",0
_cstring_broadcast_s:		db "broadcast: %s",0ah,0
_cstring_gamecompletestat:		db "gameCompleteStatus",0ah,"%s",0ah,"%s",0
_cstring_pb_:		db "pb_",0
_cstring_getstatus:		db "getstatus",0
_cstring_v:		db "v",0
_cstring_sv_packet_s__s:		db "SV packet %s : %s",0ah,0
_cstring_getinfo:		db "getinfo",0
_cstring_getchallenge:		db "getchallenge",0
_cstring_connect:		db "connect",0
_cstring_localhost:		db "localhost",0
_cstring_stats:		db "stats",0
_cstring_ipauthorize:		db "ipAuthorize",0
_cstring_rcon:		db "rcon",0
_cstring_protocol:		db "protocol",0
_cstring_hostname:		db "hostname",0
_cstring_mapname:		db "mapname",0
_cstring_sv_maxclients:		db "sv_maxclients",0
_cstring_gametype:		db "gametype",0
_cstring_scr_team_fftype:		db "scr_team_fftype",0
_cstring_scr_game_allowki:		db "scr_game_allowkillcam",0
_cstring_scr_hardcore:		db "scr_hardcore",0
_cstring_scr_oldschool:		db "scr_oldschool",0
_cstring_hw:		db "hw",0
_cstring_voice:		db "voice",0
_cstring_pb:		db "pb",0
_cstring_inforesponse:		db "infoResponse",0ah,0
_cstring_pure:		db "pure",0
_cstring_minping:		db "minPing",0
_cstring_maxping:		db "maxPing",0
_cstring_game:		db "game",0
_cstring_sv_allowanonymou:		db "sv_allowAnonymous",0
_cstring_con_disabled:		db "con_disabled",0
_cstring_od:		db "od",0
_cstring_hc:		db "hc",0
_cstring_kc:		db "kc",0
_cstring_ff:		db "ff",0
_cstring_clients:		db "clients",0
_cstring_exe_serverkilled:		db "EXE_SERVERKILLED",0
_cstring_cod4:		db "COD-4",0
_cstring_exe_serverrestar:		db "EXE_SERVERRESTARTTIMEWRAP",0
_cstring_map_s:		db "map %s",0ah,0
_cstring_exe_serverrestar1:		db "EXE_SERVERRESTARTMISC",015h,"nextCachedSnapshotClients",0
_cstring_exe_serverrestar2:		db "EXE_SERVERRESTARTMISC",015h,"numSnapshotEntities",0
_cstring_exe_serverrestar3:		db "EXE_SERVERRESTARTMISC",015h,"nextCachedSnapshotEntities",0
_cstring_exe_serverrestar4:		db "EXE_SERVERRESTARTMISC",015h,"nextArchivedSnapshotFrames",0
_cstring_exe_serverrestar5:		db "EXE_SERVERRESTARTMISC",015h,"nextArchivedSnapshotBuffer",0
_cstring_exe_serverrestar6:		db "EXE_SERVERRESTARTMISC",015h,"nextCachedSnapshotFrames",0
_cstring_exe_serverrestar7:		db "EXE_SERVERRESTARTMISC",015h,"numSnapshotClients",0



;All constant floats and doubles:
SECTION .rdata
_float_0_50000000:		dd 0x3f000000	; 0.5
_float_0_33000001:		dd 0x3ea8f5c3	; 0.33
_float_360_00000000:		dd 0x43b40000	; 360

