;Imports of sv_main_mp:
	extern gameInitialized
	extern sprintf
	extern G_GetClientScore
	extern Cvar_InfoString
	extern strcpy
	extern sv_cmd_args
	extern Info_SetValueForKey
	extern Cvar_VariableBooleanValue
	extern Com_sprintf
	extern SV_GameClientNum
	extern Cvar_VariableString
	extern va
	extern NET_OutOfBandPrint
	extern Info_ValueForKey
	extern SV_Cmd_TokenizeString
	extern FS_iwIwd
	extern SV_Cmd_EndTokenizedString
	extern memset
	extern NET_AdrToString
	extern PIXBeginNamedEvent
	extern SV_ResetSkeletonCache
	extern dvar_modifiedFlags
	extern SV_SetConfig
	extern SV_SetSystemInfoConfig
	extern SV_SetConfigstring
	extern CL_FlushDebugServerData
	extern G_RunFrame
	extern CL_UpdateDebugServerData
	extern Com_DPrintf
	extern G_GetClientArchiveTime
	extern SV_ClientThink
	extern randomf
	extern crandom
	extern MSG_BeginReading
	extern MSG_ReadLong
	extern MSG_ReadShort
	extern NET_CompareBaseAdr
	extern Com_Printf
	extern Netchan_Process
	extern MSG_ReadByte
	extern SV_Netchan_Decode
	extern SV_ExecuteClientMessage
	extern NET_OutOfBandData
	extern PbClAddEvent
	extern SV_DropClient
	extern com_sv_running
	extern memcpy
	extern strcmp
	extern MSG_WriteReliableCommandToBuffer
	extern SV_DelayDropClient
	extern vsnprintf
	extern com_dedicated
	extern Scr_FreeValue
	extern SV_Netchan_AddOOBProfilePacket
	extern Q_stricmpn
	extern PbSvAddEvent
	extern MSG_ReadStringLine
	extern Q_stricmp
	extern SV_UpdateLastTimeMasterServerCommunicated
	extern SV_GetChallenge
	extern NET_IsLocalAddress
	extern PbPassConnectString
	extern SV_DirectConnect
	extern SV_ReceiveStats
	extern SV_AuthorizeIpPacket
	extern SV_PreGameUserVoice
	extern SVC_RemoteCommand
	extern SV_UserVoice
	extern fs_numServerIwds
	extern Cvar_VariableIntegerValue
	extern Q_strncpyz
	extern Q_strncat
	extern Com_Shutdown
	extern cl_paused
	extern sv_paused
	extern Cvar_SetInt
	extern SV_SendClientMessages
	extern SV_MasterHeartbeat
	extern Scr_SetLoading
	extern Cbuf_AddText

;Exports of sv_main_mp:
	global tempServerCommandBuf
	global _ZZ17SV_ExpandNewlinesPcE6string
	global Pb_Q_stats
	global SVC_Status
	global Pb_Q_client
	global SV_PreFrame
	global SV_RunFrame
	global SV_CalcPings
	global SV_WaitServer
	global SV_BotUserMove
	global SV_PacketEvent
	global Pb_Q_maxclients
	global SV_AllowPackets
	global SV_InitSnapshot
	global SV_SendPbPacket
	global SV_CheckTimeouts
	global SV_GetAssignedTeam
	global SV_KillLocalServer
	global SV_SetAssignedTeam
	global SV_AddServerCommand
	global SV_SendServerCommand
	global SV_FreeClientScriptId
	global SVC_GameCompleteStatus
	global SV_FindClientByAddress
	global SV_ConnectionlessPacket
	global SVC_Info
	global SV_Frame
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
Pb_Q_stats:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ecx, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov byte [esi], 0x0
	test ecx, ecx
	js Pb_Q_stats_10
	mov eax, [sv_maxclients]
	cmp ecx, [eax+0xc]
	jge Pb_Q_stats_10
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
	jle Pb_Q_stats_10
	mov eax, gameInitialized
	mov eax, [eax]
	test eax, eax
	jnz Pb_Q_stats_20
	xor eax, eax
Pb_Q_stats_30:
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
Pb_Q_stats_10:
	xor eax, eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
Pb_Q_stats_20:
	mov eax, ebx
	sub eax, svs+0x46380c
	sar eax, 0x2
	imul eax, eax, 0x4315b545
	mov [esp], eax
	call G_GetClientScore
	jmp Pb_Q_stats_30


;SVC_Status(netadr_t)
SVC_Status:
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
	call Cvar_InfoString
	mov [esp+0x4], eax
	lea eax, [ebp-0x2824]
	mov [esp], eax
	call strcpy
	mov eax, sv_cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x1
	jle SVC_Status_10
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x4]
SVC_Status_210:
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_challenge
	lea edx, [ebp-0x2824]
	mov [esp], edx
	call Info_SetValueForKey
	mov dword [esp], _cstring_fs_restrict
	call Cvar_VariableBooleanValue
	test al, al
	jnz SVC_Status_20
SVC_Status_140:
	mov byte [tempServerMsgBuf], 0x0
	mov eax, [sv_maxclients]
	mov edx, [eax+0xc]
	test edx, edx
	jle SVC_Status_30
	mov dword [ebp-0x4838], 0x0
	mov dword [ebp-0x483c], 0x0
	xor esi, esi
	mov dword [ebp-0x4840], svs+0x463800
	jmp SVC_Status_40
SVC_Status_60:
	xor eax, eax
SVC_Status_70:
	mov [esp+0x14], edi
	mov [esp+0x10], ebx
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_i_i_s
	mov dword [esp+0x4], 0x400
	lea edx, [ebp-0x424]
	mov [esp], edx
	call Com_sprintf
	cld
	mov ecx, 0xffffffff
	lea edi, [ebp-0x424]
	xor eax, eax
	repne scasb
	not ecx
	mov edx, [ebp-0x4838]
	lea ebx, [ecx+edx-0x1]
	cmp ebx, 0x1ffff
	jg SVC_Status_30
	lea eax, [ebp-0x424]
	mov [esp+0x4], eax
	mov eax, edx
	add eax, tempServerMsgBuf
	mov [esp], eax
	call strcpy
	mov [ebp-0x4838], ebx
	mov eax, [sv_maxclients]
SVC_Status_50:
	add dword [ebp-0x483c], 0x1
	add dword [ebp-0x4840], 0xa5634
	add esi, 0xa5634
	mov edx, [ebp-0x483c]
	cmp [eax+0xc], edx
	jle SVC_Status_30
SVC_Status_40:
	cmp dword [esi+svs+0x46380c], 0x1
	jle SVC_Status_50
	mov eax, [ebp-0x483c]
	mov [esp], eax
	call SV_GameClientNum
	mov edi, [ebp-0x4840]
	add edi, 0x21294
	mov ebx, [esi+svs+0x4e3cf0]
	mov eax, gameInitialized
	mov eax, [eax]
	test eax, eax
	jz SVC_Status_60
	mov eax, esi
	sar eax, 0x2
	imul eax, eax, 0x4315b545
	mov [esp], eax
	call G_GetClientScore
	jmp SVC_Status_70
SVC_Status_30:
	mov dword [esp], _cstring_g_password
	call Cvar_VariableString
	test eax, eax
	jz SVC_Status_80
	cmp byte [eax], 0x0
	jnz SVC_Status_90
SVC_Status_80:
	mov dword [esp+0x8], _cstring_0
	mov dword [esp+0x4], _cstring_pswrd
	lea edx, [ebp-0x2824]
	mov [esp], edx
	call Info_SetValueForKey
SVC_Status_150:
	mov dword [esp], _cstring_fs_game
	call Cvar_VariableString
	mov edx, eax
	mov eax, [sv_pure]
	cmp byte [eax+0xc], 0x0
	jz SVC_Status_100
	test edx, edx
	jz SVC_Status_110
	cmp byte [edx], 0x0
	jnz SVC_Status_100
SVC_Status_110:
	mov dword [esp], _cstring_sv_referencediwd
	call Cvar_VariableString
	cmp byte [eax], 0x0
	jnz SVC_Status_120
	xor ebx, ebx
	jmp SVC_Status_130
SVC_Status_100:
	mov ebx, 0x1
SVC_Status_130:
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_i
	call va
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_mod
	lea eax, [ebp-0x2824]
	mov [esp], eax
	call Info_SetValueForKey
	mov dword [esp+0x10], tempServerMsgBuf
	lea edx, [ebp-0x2824]
	mov [esp+0xc], edx
	mov dword [esp+0x8], _cstring_statusresponsess
	mov dword [esp+0x4], 0x2000
	lea ebx, [ebp-0x4824]
	mov [esp], ebx
	call Com_sprintf
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
	call NET_OutOfBandPrint
	add esp, 0x485c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SVC_Status_20:
	mov dword [esp+0x4], _cstring_sv_keywords
	lea eax, [ebp-0x2824]
	mov [esp], eax
	call Info_ValueForKey
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_demo_s
	mov dword [esp+0x4], 0x400
	lea ebx, [ebp-0x824]
	mov [esp], ebx
	call Com_sprintf
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_sv_keywords
	lea edx, [ebp-0x2824]
	mov [esp], edx
	call Info_SetValueForKey
	jmp SVC_Status_140
SVC_Status_90:
	mov dword [esp+0x8], _cstring_1
	mov dword [esp+0x4], _cstring_pswrd
	lea eax, [ebp-0x2824]
	mov [esp], eax
	call Info_SetValueForKey
	jmp SVC_Status_150
SVC_Status_120:
	mov [esp], eax
	call SV_Cmd_TokenizeString
	mov edx, sv_cmd_args
	mov eax, [edx]
	mov esi, [edx+eax*4+0x44]
	test esi, esi
	jle SVC_Status_160
	xor ebx, ebx
	jmp SVC_Status_170
SVC_Status_190:
	mov eax, _cstring_null
SVC_Status_200:
	mov dword [esp+0x4], _cstring_main
	mov [esp], eax
	call FS_iwIwd
	test eax, eax
	jz SVC_Status_180
	add ebx, 0x1
	cmp esi, ebx
	jz SVC_Status_160
	mov edx, sv_cmd_args
SVC_Status_170:
	mov eax, [edx]
	cmp ebx, [edx+eax*4+0x44]
	jge SVC_Status_190
	mov eax, [edx+eax*4+0x64]
	mov eax, [eax+ebx*4]
	jmp SVC_Status_200
SVC_Status_10:
	mov eax, _cstring_null
	jmp SVC_Status_210
SVC_Status_160:
	xor ebx, ebx
	call SV_Cmd_EndTokenizedString
	jmp SVC_Status_130
SVC_Status_180:
	mov ebx, 0x1
	call SV_Cmd_EndTokenizedString
	jmp SVC_Status_130
	nop


;Pb_Q_client(int, Pb_Sv_Client_s*)
Pb_Q_client:
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
	js Pb_Q_client_10
	mov eax, [sv_maxclients]
	cmp ebx, [eax+0xc]
	jge Pb_Q_client_10
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
	jg Pb_Q_client_20
Pb_Q_client_10:
	xor eax, eax
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
Pb_Q_client_20:
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
	call NET_AdrToString
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
SV_PreFrame:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov dword [esp+0x4], _cstring_server_bots
	mov dword [esp], 0xff00ff
	call PIXBeginNamedEvent
	call SV_ResetSkeletonCache
	mov eax, [sv_maxclients]
	mov ebx, [eax+0xc]
	test ebx, ebx
	jle SV_PreFrame_10
	xor esi, esi
	mov edi, svs+0x46380c
	mov ebx, svs+0x46380c
	jmp SV_PreFrame_20
SV_PreFrame_30:
	add esi, 0x1
	add edi, 0xa5634
	add ebx, 0xa5634
	cmp esi, [eax+0xc]
	jge SV_PreFrame_10
SV_PreFrame_20:
	mov ecx, [ebx]
	test ecx, ecx
	jz SV_PreFrame_30
	mov edx, [ebx+0x20]
	test edx, edx
	jnz SV_PreFrame_30
	mov [esp], edi
	call SV_BotUserMove
	mov eax, [sv_maxclients]
	add esi, 0x1
	add edi, 0xa5634
	add ebx, 0xa5634
	cmp esi, [eax+0xc]
	jl SV_PreFrame_20
SV_PreFrame_10:
	mov ebx, dvar_modifiedFlags
	mov eax, [ebx]
	test eax, 0x404
	jnz SV_PreFrame_40
SV_PreFrame_80:
	test al, 0x8
	jnz SV_PreFrame_50
SV_PreFrame_70:
	test ah, 0x1
	jz SV_PreFrame_60
	mov dword [esp+0x8], 0x100
	mov dword [esp+0x4], 0x80
	mov dword [esp], 0x14
	call SV_SetConfig
	and dword [ebx], 0xfffffeff
SV_PreFrame_60:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SV_PreFrame_50:
	call SV_SetSystemInfoConfig
	mov eax, [ebx]
	jmp SV_PreFrame_70
SV_PreFrame_40:
	mov dword [esp+0x4], 0x404
	mov dword [esp], 0x0
	call Cvar_InfoString
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call SV_SetConfigstring
	mov eax, [ebx]
	and eax, 0xfffffbfb
	mov [ebx], eax
	jmp SV_PreFrame_80


;SV_RunFrame()
SV_RunFrame:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	call SV_ResetSkeletonCache
	call CL_FlushDebugServerData
	mov eax, [svs+0x463804]
	mov [esp], eax
	call G_RunFrame
	leave
	jmp CL_UpdateDebugServerData
	nop


;SV_CalcPings()
SV_CalcPings:
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
	jle SV_CalcPings_10
	mov dword [ebp-0x20], 0x0
	mov edi, svs+0x463800
	jmp SV_CalcPings_20
SV_CalcPings_30:
	mov dword [edi+0x804f0], 0x3e7
	mov eax, [ebp-0x24]
SV_CalcPings_90:
	add dword [ebp-0x20], 0x1
	add edi, 0xa5634
	mov edx, [ebp-0x20]
	cmp edx, [eax+0xc]
	jge SV_CalcPings_10
SV_CalcPings_20:
	lea edx, [edi+0xc]
	mov [ebp-0x1c], edx
	cmp dword [edi+0xc], 0x4
	jnz SV_CalcPings_30
	mov esi, [edi+0x21290]
	test esi, esi
	jz SV_CalcPings_40
	mov eax, [ebp-0x1c]
	xor esi, esi
	xor ebx, ebx
	mov edx, 0x20
SV_CalcPings_60:
	mov ecx, [eax+0x243dc]
	test ecx, ecx
	jle SV_CalcPings_50
	add ebx, 0x1
	sub ecx, [eax+0x243d8]
	add esi, ecx
SV_CalcPings_50:
	add eax, 0x2f84
	sub edx, 0x1
	jnz SV_CalcPings_60
	test ebx, ebx
	jnz SV_CalcPings_70
	mov ebx, [edi+0x2c]
	test ebx, ebx
	jz SV_CalcPings_30
	mov eax, [ebp-0x1c]
	add eax, 0x21288
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_giving_s_a_999_p
	mov dword [esp], 0xf
	call Com_DPrintf
	mov edx, [sv_maxclients]
	mov [ebp-0x24], edx
	jmp SV_CalcPings_30
SV_CalcPings_10:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SV_CalcPings_70:
	mov eax, esi
	cdq
	idiv ebx
	mov [edi+0x804f0], eax
	cmp eax, 0x3e7
	jg SV_CalcPings_80
	mov eax, [ebp-0x24]
	jmp SV_CalcPings_90
SV_CalcPings_80:
	mov eax, [ebp-0x1c]
	add eax, 0x21288
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_giving_s_a_999_p1
	mov dword [esp], 0xf
	call Com_DPrintf
	mov dword [edi+0x804f0], 0x3e7
	mov edx, [sv_maxclients]
	mov [ebp-0x24], edx
	mov eax, edx
	jmp SV_CalcPings_90
SV_CalcPings_40:
	lea eax, [edi+0x21294]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_giving_s_a_999_p2
	mov dword [esp], 0xf
	call Com_DPrintf
	mov dword [edi+0x804f0], 0x3e7
	mov eax, [sv_maxclients]
	mov [ebp-0x24], eax
	jmp SV_CalcPings_90


;SV_WaitServer()
SV_WaitServer:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [com_inServerFrame]
	test eax, eax
	jnz SV_WaitServer_10
	leave
	ret
SV_WaitServer_10:
	mov dword [com_inServerFrame], 0x0
	call SV_ResetSkeletonCache
	call CL_FlushDebugServerData
	mov eax, [svs+0x463804]
	mov [esp], eax
	call G_RunFrame
	leave
	jmp CL_UpdateDebugServerData


;SV_BotUserMove(client_t*)
SV_BotUserMove:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x7c
	mov esi, [ebp+0x8]
	mov eax, [esi+0x21284]
	test eax, eax
	jz SV_BotUserMove_10
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
	call SV_GameClientNum
	mov eax, [eax+0xe8]
	mov [ebp-0x24], al
	mov [esp], ebx
	call G_GetClientArchiveTime
	test eax, eax
	jz SV_BotUserMove_20
SV_BotUserMove_90:
	mov eax, [esi+0x10]
	sub eax, 0x1
	mov [esi+0x8], eax
	lea eax, [ebp-0x38]
	mov [esp+0x4], eax
	mov [esp], esi
	call SV_ClientThink
SV_BotUserMove_10:
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SV_BotUserMove_20:
	call randomf
	fstp dword [ebp-0x5c]
	movss xmm0, dword [ebp-0x5c]
	ucomiss xmm0, [_float_0_50000000]
	jae SV_BotUserMove_30
	jp SV_BotUserMove_30
	mov eax, [sv_botsPressAttackBtn]
	cmp byte [eax+0xc], 0x0
	jz SV_BotUserMove_30
	or dword [ebp-0x34], 0x1
SV_BotUserMove_30:
	call randomf
	fstp dword [ebp-0x58]
	movss xmm0, dword [ebp-0x58]
	ucomiss xmm0, [_float_0_50000000]
	jae SV_BotUserMove_40
	jp SV_BotUserMove_40
	or dword [ebp-0x34], 0x28
SV_BotUserMove_40:
	call randomf
	fstp dword [ebp-0x54]
	movss xmm0, dword [ebp-0x54]
	ucomiss xmm0, [_float_0_33000001]
	jae SV_BotUserMove_50
	jp SV_BotUserMove_50
	mov byte [ebp-0x22], 0x7f
SV_BotUserMove_100:
	call randomf
	fstp dword [ebp-0x4c]
	movss xmm0, dword [ebp-0x4c]
	ucomiss xmm0, [_float_0_33000001]
	jae SV_BotUserMove_60
	jp SV_BotUserMove_60
	mov byte [ebp-0x21], 0x7f
SV_BotUserMove_130:
	call randomf
	fstp dword [ebp-0x44]
	movss xmm0, dword [ebp-0x44]
	ucomiss xmm0, [_float_0_33000001]
	jb SV_BotUserMove_70
SV_BotUserMove_120:
	call randomf
	fstp dword [ebp-0x40]
	movss xmm0, dword [_float_0_33000001]
	ucomiss xmm0, [ebp-0x40]
	ja SV_BotUserMove_80
SV_BotUserMove_110:
	call randomf
	fstp dword [ebp-0x3c]
	movss xmm0, dword [_float_0_33000001]
	ucomiss xmm0, [ebp-0x3c]
	jbe SV_BotUserMove_90
	call crandom
	fstp dword [ebp-0x6c]
	movss xmm0, dword [ebp-0x6c]
	mulss xmm0, [_float_360_00000000]
	cvttss2si eax, xmm0
	mov [ebp-0x28], eax
	jmp SV_BotUserMove_90
SV_BotUserMove_50:
	call randomf
	fstp dword [ebp-0x50]
	mov edx, 0xffffff81
	movss xmm0, dword [_float_0_50000000]
	ucomiss xmm0, [ebp-0x50]
	movzx eax, byte [ebp-0x22]
	cmovbe edx, eax
	mov [ebp-0x22], dl
	jmp SV_BotUserMove_100
SV_BotUserMove_80:
	call crandom
	fstp dword [ebp-0x6c]
	movss xmm0, dword [ebp-0x6c]
	mulss xmm0, [_float_360_00000000]
	cvttss2si eax, xmm0
	mov [ebp-0x2c], eax
	jmp SV_BotUserMove_110
SV_BotUserMove_70:
	jp SV_BotUserMove_120
	call crandom
	fstp dword [ebp-0x6c]
	movss xmm0, dword [ebp-0x6c]
	mulss xmm0, [_float_360_00000000]
	cvttss2si eax, xmm0
	mov [ebp-0x30], eax
	jmp SV_BotUserMove_120
SV_BotUserMove_60:
	call randomf
	fstp dword [ebp-0x48]
	mov edx, 0xffffff81
	movss xmm0, dword [_float_0_50000000]
	ucomiss xmm0, [ebp-0x48]
	movzx eax, byte [ebp-0x21]
	cmovbe edx, eax
	mov [ebp-0x21], dl
	jmp SV_BotUserMove_130
	nop
	add [eax], al


;SV_PacketEvent(netadr_t, msg_t*)
SV_PacketEvent:
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
	jle SV_PacketEvent_10
	mov eax, [edx+0x8]
	cmp dword [eax], 0xffffffff
	jz SV_PacketEvent_20
SV_PacketEvent_10:
	call SV_ResetSkeletonCache
	mov eax, [ebp-0x5c]
	mov [esp], eax
	call MSG_BeginReading
	mov edx, [ebp-0x5c]
	mov [esp], edx
	call MSG_ReadLong
	mov ecx, [ebp-0x5c]
	mov [esp], ecx
	call MSG_ReadShort
	mov [ebp-0x58], eax
	mov eax, [sv_maxclients]
	mov ecx, [eax+0xc]
	test ecx, ecx
	jle SV_PacketEvent_30
	xor esi, esi
	mov edi, svs+0x46380c
	mov ebx, svs+0x46380c
	jmp SV_PacketEvent_40
SV_PacketEvent_50:
	add esi, 0x1
	add edi, 0xa5634
	add ebx, 0xa5634
	cmp [eax+0xc], esi
	jle SV_PacketEvent_30
SV_PacketEvent_40:
	mov edx, [ebx]
	test edx, edx
	jz SV_PacketEvent_50
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
	call NET_CompareBaseAdr
	test eax, eax
	jz SV_PacketEvent_60
	mov eax, [ebp-0x58]
	cmp eax, [ebx+0x2c]
	jz SV_PacketEvent_70
SV_PacketEvent_60:
	mov eax, [sv_maxclients]
	add esi, 0x1
	add edi, 0xa5634
	add ebx, 0xa5634
	cmp [eax+0xc], esi
	jg SV_PacketEvent_40
SV_PacketEvent_30:
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
	call NET_OutOfBandPrint
SV_PacketEvent_90:
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SV_PacketEvent_20:
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
	jmp SV_ConnectionlessPacket
SV_PacketEvent_70:
	movzx edx, word [ebp-0x4a]
	cmp dx, [edi+0x28]
	jz SV_PacketEvent_80
	mov dword [esp+0x4], _cstring_sv_readpackets_f
	mov dword [esp], 0xf
	call Com_Printf
	movzx ecx, word [ebp-0x4a]
	mov [edi+0x28], cx
SV_PacketEvent_80:
	mov eax, [ebp-0x5c]
	mov [esp+0x4], eax
	lea eax, [edi+0x10]
	mov [esp], eax
	call Netchan_Process
	test eax, eax
	jz SV_PacketEvent_90
	mov edx, [ebp-0x5c]
	mov [esp], edx
	call MSG_ReadByte
	mov [edi+0xa0d20], eax
	mov ecx, [ebp-0x5c]
	mov [esp], ecx
	call MSG_ReadLong
	mov [edi+0x20e54], eax
	test eax, eax
	js SV_PacketEvent_100
	mov eax, [ebp-0x5c]
	mov [esp], eax
	call MSG_ReadLong
	mov edx, eax
	mov [edi+0x20e4c], eax
	mov ecx, [edi+0x20e48]
	mov eax, ecx
	sub eax, edx
	cmp eax, 0x7f
	jle SV_PacketEvent_110
	mov [esp+0x10], edx
	mov [esp+0xc], ecx
	lea eax, [edi+0x21288]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_out_of_range_rel
	mov dword [esp], 0xf
	call Com_Printf
	mov eax, [edi+0x20e48]
	mov [edi+0x20e4c], eax
	jmp SV_PacketEvent_90
SV_PacketEvent_110:
	mov ecx, [ebp-0x5c]
	mov edx, [ecx+0x1c]
	mov eax, [ecx+0x14]
	sub eax, edx
	mov [esp+0x8], eax
	add edx, [ecx+0x8]
	mov [esp+0x4], edx
	mov [esp], edi
	call SV_Netchan_Decode
	cmp dword [edi], 0x1
	jz SV_PacketEvent_90
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
	jmp SV_ExecuteClientMessage
SV_PacketEvent_100:
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
	jmp Com_Printf


;Pb_Q_maxclients()
Pb_Q_maxclients:
	push ebp
	mov ebp, esp
	mov eax, [sv_maxclients]
	mov eax, [eax+0xc]
	pop ebp
	ret
	nop


;SV_AllowPackets(unsigned char)
SV_AllowPackets:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop


;SV_InitSnapshot()
SV_InitSnapshot:
	push ebp
	mov ebp, esp
	mov byte [sv+0x8], 0x0
	pop ebp
	ret


;SV_SendPbPacket(int, char*, int)
SV_SendPbPacket:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	cmp dword [svs+0x463800], 0x1
	jz SV_SendPbPacket_10
SV_SendPbPacket_20:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SV_SendPbPacket_10:
	mov eax, [sv_maxclients]
	mov ecx, [eax+0xc]
	test ecx, ecx
	jle SV_SendPbPacket_20
	xor esi, esi
	mov ebx, svs+0x46380c
	mov edx, [ebp+0x10]
	test edx, edx
	js SV_SendPbPacket_30
	cmp esi, [ebp+0x10]
	jz SV_SendPbPacket_40
SV_SendPbPacket_50:
	add esi, 0x1
	add ebx, 0xa5634
	cmp [eax+0xc], esi
	jle SV_SendPbPacket_20
	cmp esi, [ebp+0x10]
	jnz SV_SendPbPacket_50
SV_SendPbPacket_40:
	cmp dword [ebx], 0x1
	jle SV_SendPbPacket_50
	cmp dword [ebx+0x20], 0x2
	jz SV_SendPbPacket_60
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
	call NET_OutOfBandData
	mov eax, [sv_maxclients]
	jmp SV_SendPbPacket_50
SV_SendPbPacket_80:
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
	call NET_OutOfBandData
	mov eax, [sv_maxclients]
SV_SendPbPacket_70:
	add esi, 0x1
	add ebx, 0xa5634
	cmp [eax+0xc], esi
	jle SV_SendPbPacket_20
SV_SendPbPacket_30:
	cmp dword [ebx], 0x1
	jle SV_SendPbPacket_70
	cmp dword [ebx+0x20], 0x2
	jnz SV_SendPbPacket_80
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov edi, [ebp+0x8]
	mov [esp+0x4], edi
	mov dword [esp], 0xd
	call PbClAddEvent
	mov eax, [sv_maxclients]
	jmp SV_SendPbPacket_70
SV_SendPbPacket_60:
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov edi, [ebp+0x8]
	mov [esp+0x4], edi
	mov dword [esp], 0xd
	call PbClAddEvent
	mov eax, [sv_maxclients]
	jmp SV_SendPbPacket_50
	nop


;SV_CheckTimeouts()
SV_CheckTimeouts:
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
	jle SV_CheckTimeouts_10
	xor edi, edi
	mov dword [ebp-0x28], svs+0x46380c
	mov ebx, svs+0x504528
	jmp SV_CheckTimeouts_20
SV_CheckTimeouts_90:
	mov eax, [ebx-0x7f8bc]
	add eax, 0x1
	mov [ebx-0x7f8bc], eax
	cmp eax, 0x5
	jg SV_CheckTimeouts_30
SV_CheckTimeouts_50:
	add edi, 0x1
	add dword [ebp-0x28], 0xa5634
	add ebx, 0xa5634
	cmp edi, [esi+0xc]
	jge SV_CheckTimeouts_10
SV_CheckTimeouts_100:
	mov edx, [svs+0x463804]
SV_CheckTimeouts_20:
	lea ecx, [ebx-0x7f8c8]
	cmp [ebx-0x7f8c8], edx
	jle SV_CheckTimeouts_40
	mov [ebx-0x7f8c8], edx
SV_CheckTimeouts_40:
	mov eax, [ebx]
	test eax, eax
	jnz SV_CheckTimeouts_50
	mov eax, [ebx-0xa0d1c]
	cmp eax, 0x1
	jz SV_CheckTimeouts_60
	cmp eax, 0x4
	jz SV_CheckTimeouts_70
	sub eax, 0x1
	jle SV_CheckTimeouts_80
SV_CheckTimeouts_110:
	mov eax, [ebp-0x20]
	cmp eax, [ecx]
	jg SV_CheckTimeouts_90
SV_CheckTimeouts_80:
	mov dword [ebx-0x7f8bc], 0x0
	add edi, 0x1
	add dword [ebp-0x28], 0xa5634
	add ebx, 0xa5634
	cmp edi, [esi+0xc]
	jl SV_CheckTimeouts_100
SV_CheckTimeouts_10:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SV_CheckTimeouts_60:
	mov eax, [ebp-0x1c]
	cmp eax, [ebx-0x7f8c8]
	jle SV_CheckTimeouts_80
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_going_from_cs_zo
	mov dword [esp], 0xf
	call Com_DPrintf
	mov dword [ebx-0xa0d1c], 0x0
	mov dword [ebx-0x7f8c8], 0x0
	mov esi, [sv_maxclients]
	jmp SV_CheckTimeouts_50
SV_CheckTimeouts_70:
	mov eax, [ebp-0x24]
	cmp eax, [ebx-0x7f8c8]
	jle SV_CheckTimeouts_110
	mov eax, [ebx-0x7f8bc]
	add eax, 0x1
	mov [ebx-0x7f8bc], eax
	cmp eax, 0x5
	jle SV_CheckTimeouts_50
SV_CheckTimeouts_30:
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], _cstring_exe_timedout
	mov ecx, [ebp-0x28]
	mov [esp], ecx
	call SV_DropClient
	mov esi, [sv_maxclients]
	jmp SV_CheckTimeouts_50
	add [eax], al


;SV_GetAssignedTeam(unsigned int)
SV_GetAssignedTeam:
	push ebp
	mov ebp, esp
	xor eax, eax
	pop ebp
	ret
	nop


;SV_KillLocalServer()
SV_KillLocalServer:
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
SV_SetAssignedTeam:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop


;SV_AddServerCommand(client_t*, svscmd_type, char const*)
SV_AddServerCommand:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov eax, [ebp+0x8]
	mov edx, [eax+0xa0d1c]
	test edx, edx
	jnz SV_AddServerCommand_10
	mov edx, eax
	mov ebx, [eax+0x20e48]
	mov eax, ebx
	sub eax, [edx+0x20e4c]
	cmp eax, 0x3f
	jg SV_AddServerCommand_20
	cmp dword [edx], 0x4
	jz SV_AddServerCommand_30
	mov ecx, [ebp+0x8]
SV_AddServerCommand_140:
	mov edi, [ecx+0x20e50]
	add edi, 0x1
	cmp ebx, edi
	jl SV_AddServerCommand_40
	mov esi, edi
	mov ebx, [ebp+0x8]
SV_AddServerCommand_70:
	mov ecx, esi
	and ecx, 0x7f
	mov eax, ecx
	shl eax, 0xa
	lea eax, [eax+ecx*8]
	lea edx, [eax+ebx]
	mov eax, [edx+0xe4c]
	test eax, eax
	jz SV_AddServerCommand_50
	mov ebx, edi
	and ebx, 0x7f
	cmp ecx, ebx
	jz SV_AddServerCommand_60
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
SV_AddServerCommand_60:
	add edi, 0x1
	mov ebx, [ebp+0x8]
SV_AddServerCommand_50:
	add esi, 0x1
	cmp [ebx+0x20e48], esi
	jge SV_AddServerCommand_70
SV_AddServerCommand_40:
	lea eax, [edi-0x1]
	mov edi, [ebp+0x8]
	mov [edi+0x20e48], eax
	mov edx, [ebp+0xc]
	test edx, edx
	jz SV_AddServerCommand_10
	mov ebx, eax
SV_AddServerCommand_30:
	mov eax, [ebp+0x8]
	mov esi, [eax+0x20e50]
	add esi, 0x1
	cmp esi, ebx
	jg SV_AddServerCommand_80
	mov edi, eax
	jmp SV_AddServerCommand_90
SV_AddServerCommand_110:
	add esi, 0x1
	cmp esi, ebx
	jg SV_AddServerCommand_100
	mov edi, [ebp+0x8]
SV_AddServerCommand_90:
	mov edx, esi
	and edx, 0x7f
	mov eax, edx
	shl eax, 0xa
	lea ecx, [eax+edx*8]
	lea edx, [ecx+edi]
	mov eax, [edx+0xe4c]
	test eax, eax
	jz SV_AddServerCommand_110
	mov edi, [ebp+0x10]
	movzx eax, byte [edi]
	movsx edi, al
	cmp [edx+0xa48], al
	jnz SV_AddServerCommand_110
	sub al, 0x78
	cmp al, 0x2
	jbe SV_AddServerCommand_110
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
	jz SV_AddServerCommand_120
	lea eax, [edi-0x43]
	cmp eax, 0x33
	ja SV_AddServerCommand_110
	jmp dword [eax*4+SV_AddServerCommand_jumptab_0]
SV_AddServerCommand_80:
	mov edx, eax
SV_AddServerCommand_150:
	lea eax, [ebx+0x1]
	mov [edx+0x20e48], eax
	mov ebx, eax
	mov edi, [ebp+0x8]
SV_AddServerCommand_210:
	mov eax, ebx
	sub eax, [edi+0x20e4c]
	cmp eax, 0x81
	jz SV_AddServerCommand_130
	mov esi, [ebp+0xc]
	mov edx, [ebp+0x8]
	mov ecx, [ebp+0x10]
SV_AddServerCommand_170:
	and ebx, 0x7f
	mov dword [esp+0x8], 0x400
	mov eax, ebx
	shl eax, 0xa
	lea ebx, [eax+ebx*8]
	lea eax, [ebx+edx+0xa48]
	mov [esp+0x4], eax
	mov [esp], ecx
	call MSG_WriteReliableCommandToBuffer
	add ebx, [ebp+0x8]
	mov eax, [svs+0x463804]
	mov [ebx+0xe48], eax
	mov [ebx+0xe4c], esi
SV_AddServerCommand_10:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SV_AddServerCommand_20:
	mov ecx, edx
	jmp SV_AddServerCommand_140
SV_AddServerCommand_100:
	mov edx, [ebp+0x8]
	jmp SV_AddServerCommand_150
SV_AddServerCommand_130:
	mov dword [esp+0x4], _cstring__pending_server_
	mov dword [esp], 0xf
	call Com_Printf
	mov eax, [ebp+0x8]
	mov ebx, [eax+0x20e4c]
	add ebx, 0x1
	cmp ebx, [eax+0x20e48]
	jle SV_AddServerCommand_160
SV_AddServerCommand_290:
	mov eax, [ebp+0x10]
	mov [esp+0x10], eax
	mov eax, [svs+0x463804]
	mov [esp+0xc], eax
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_cmd_5d_8d_s
	mov dword [esp], 0xf
	call Com_Printf
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
	call NET_OutOfBandPrint
	mov dword [esp+0x4], _cstring_exe_servercomman
	mov [esp], ebx
	call SV_DelayDropClient
	mov dword [esp+0x4], 0x77
	mov dword [esp], _cstring_c_exe_servercomm
	call va
	mov [ebp+0x10], eax
	mov esi, 0x1
	mov edi, [ebp+0x8]
	mov ebx, [edi+0x20e48]
	mov edx, edi
	mov ecx, eax
	jmp SV_AddServerCommand_170
SV_AddServerCommand_230:
	cmp dl, 0x20
	jnz SV_AddServerCommand_110
SV_AddServerCommand_250:
	movzx eax, byte [ecx]
SV_AddServerCommand_240:
	test al, al
	jz SV_AddServerCommand_120
	cmp al, 0x20
	jnz SV_AddServerCommand_110
SV_AddServerCommand_120:
	test esi, esi
	js SV_AddServerCommand_100
	lea ecx, [esi+0x1]
	mov [ebp-0x30], ecx
	mov edi, ecx
	cmp ecx, ebx
	jg SV_AddServerCommand_180
	jmp SV_AddServerCommand_190
SV_AddServerCommand_200:
	mov eax, esi
	add eax, 0x1
	mov [ebp-0x30], eax
SV_AddServerCommand_190:
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
	jle SV_AddServerCommand_200
	mov ecx, [ebp+0x8]
	mov ebx, [ecx+0x20e48]
	mov edi, ecx
	jmp SV_AddServerCommand_210
SV_AddServerCommand_300:
	mov ecx, [ebp-0x2c]
	add ecx, 0x2
	mov edi, [ebp+0x10]
	add edi, 0x2
	mov [ebp-0x3c], edi
	mov eax, [ebp+0x10]
	movzx edx, byte [eax+0x2]
	test dl, dl
	jz SV_AddServerCommand_220
	mov edi, [ebp-0x2c]
	movzx eax, byte [edi+0x2]
	test al, al
	jz SV_AddServerCommand_230
	cmp dl, 0x20
	jz SV_AddServerCommand_240
	cmp al, 0x20
	jz SV_AddServerCommand_230
	cmp al, dl
	jnz SV_AddServerCommand_110
	mov edi, [ebp-0x3c]
SV_AddServerCommand_260:
	add ecx, 0x1
	movzx edx, byte [edi+0x1]
	test dl, dl
	jz SV_AddServerCommand_250
	movzx eax, byte [ecx]
	test al, al
	jz SV_AddServerCommand_230
	cmp dl, 0x20
	jz SV_AddServerCommand_240
	cmp al, 0x20
	jz SV_AddServerCommand_230
	add edi, 0x1
	cmp al, dl
	jz SV_AddServerCommand_260
	jmp SV_AddServerCommand_110
SV_AddServerCommand_160:
	mov ecx, eax
	jmp SV_AddServerCommand_270
SV_AddServerCommand_280:
	mov ecx, edi
SV_AddServerCommand_270:
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
	call Com_Printf
	add ebx, 0x1
	mov edi, [ebp+0x8]
	cmp ebx, [edi+0x20e48]
	jle SV_AddServerCommand_280
	jmp SV_AddServerCommand_290
SV_AddServerCommand_180:
	mov edi, [ebp+0x8]
	jmp SV_AddServerCommand_210
SV_AddServerCommand_220:
	mov edx, [ebp-0x2c]
	movzx eax, byte [edx+0x2]
	jmp SV_AddServerCommand_240
	nop
	
	
SV_AddServerCommand_jumptab_0:
	dd SV_AddServerCommand_120
	dd SV_AddServerCommand_120
	dd SV_AddServerCommand_110
	dd SV_AddServerCommand_110
	dd SV_AddServerCommand_110
	dd SV_AddServerCommand_110
	dd SV_AddServerCommand_110
	dd SV_AddServerCommand_110
	dd SV_AddServerCommand_110
	dd SV_AddServerCommand_110
	dd SV_AddServerCommand_110
	dd SV_AddServerCommand_110
	dd SV_AddServerCommand_110
	dd SV_AddServerCommand_110
	dd SV_AddServerCommand_110
	dd SV_AddServerCommand_110
	dd SV_AddServerCommand_110
	dd SV_AddServerCommand_110
	dd SV_AddServerCommand_110
	dd SV_AddServerCommand_110
	dd SV_AddServerCommand_110
	dd SV_AddServerCommand_110
	dd SV_AddServerCommand_110
	dd SV_AddServerCommand_110
	dd SV_AddServerCommand_110
	dd SV_AddServerCommand_110
	dd SV_AddServerCommand_110
	dd SV_AddServerCommand_110
	dd SV_AddServerCommand_110
	dd SV_AddServerCommand_110
	dd SV_AddServerCommand_120
	dd SV_AddServerCommand_120
	dd SV_AddServerCommand_110
	dd SV_AddServerCommand_300
	dd SV_AddServerCommand_110
	dd SV_AddServerCommand_110
	dd SV_AddServerCommand_110
	dd SV_AddServerCommand_110
	dd SV_AddServerCommand_110
	dd SV_AddServerCommand_110
	dd SV_AddServerCommand_110
	dd SV_AddServerCommand_110
	dd SV_AddServerCommand_110
	dd SV_AddServerCommand_110
	dd SV_AddServerCommand_120
	dd SV_AddServerCommand_120
	dd SV_AddServerCommand_120
	dd SV_AddServerCommand_120
	dd SV_AddServerCommand_110
	dd SV_AddServerCommand_120
	dd SV_AddServerCommand_110
	dd SV_AddServerCommand_300


;SV_SendServerCommand(client_t*, svscmd_type, char const*, ...)
SV_SendServerCommand:
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
	jz SV_SendServerCommand_10
	mov dword [esp+0x8], tempServerCommandBuf
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], ebx
	call SV_AddServerCommand
SV_SendServerCommand_30:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SV_SendServerCommand_10:
	mov eax, com_dedicated
	mov eax, [eax]
	mov ebx, [eax+0xc]
	test ebx, ebx
	jnz SV_SendServerCommand_20
SV_SendServerCommand_70:
	mov eax, [sv_maxclients]
	mov ecx, [eax+0xc]
	test ecx, ecx
	jle SV_SendServerCommand_30
	xor ebx, ebx
	mov esi, svs+0x46380c
	jmp SV_SendServerCommand_40
SV_SendServerCommand_50:
	add ebx, 0x1
	add esi, 0xa5634
	cmp ebx, [eax+0xc]
	jge SV_SendServerCommand_30
SV_SendServerCommand_40:
	cmp dword [esi], 0x2
	jle SV_SendServerCommand_50
	mov dword [esp+0x8], tempServerCommandBuf
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], esi
	call SV_AddServerCommand
	mov eax, [sv_maxclients]
	jmp SV_SendServerCommand_50
SV_SendServerCommand_20:
	mov edi, _cstring_print
	mov ecx, 0x5
	cld
	mov ebx, tempServerCommandBuf
	mov esi, ebx
	repe cmpsb
	mov ebx, 0x0
	jz SV_SendServerCommand_60
	movzx ebx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub ebx, ecx
SV_SendServerCommand_60:
	test ebx, ebx
	jnz SV_SendServerCommand_70
	mov ebx, tempServerCommandBuf
	xor ecx, ecx
SV_SendServerCommand_110:
	movzx edx, byte [ebx]
	test dl, dl
	jz SV_SendServerCommand_80
	cmp ecx, 0x3fc
	ja SV_SendServerCommand_80
	cmp dl, 0xa
	jz SV_SendServerCommand_90
	lea eax, [edx-0x14]
	cmp al, 0x1
	jbe SV_SendServerCommand_100
	mov [ecx+_ZZ17SV_ExpandNewlinesPcE6string], dl
	add ecx, 0x1
SV_SendServerCommand_100:
	add ebx, 0x1
	jmp SV_SendServerCommand_110
SV_SendServerCommand_90:
	mov byte [ecx+_ZZ17SV_ExpandNewlinesPcE6string], 0x5c
	mov byte [ecx+_ZZ17SV_ExpandNewlinesPcE6string+0x1], 0x6e
	add ecx, 0x2
	add ebx, 0x1
	jmp SV_SendServerCommand_110
SV_SendServerCommand_80:
	mov byte [ecx+_ZZ17SV_ExpandNewlinesPcE6string], 0x0
	mov dword [esp+0x8], _ZZ17SV_ExpandNewlinesPcE6string
	mov dword [esp+0x4], _cstring_broadcast_s
	mov dword [esp], 0xf
	call Com_Printf
	jmp SV_SendServerCommand_70
	nop


;SV_FreeClientScriptId(client_t*)
SV_FreeClientScriptId:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	movzx eax, word [ebx+0xa0d1a]
	mov [esp], eax
	call Scr_FreeValue
	mov word [ebx+0xa0d1a], 0x0
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;SVC_GameCompleteStatus(netadr_t)
SVC_GameCompleteStatus:
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
	call Cvar_InfoString
	mov [esp+0x4], eax
	lea eax, [ebp-0x824]
	mov [esp], eax
	call strcpy
	mov eax, sv_cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x1
	jle SVC_GameCompleteStatus_10
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x4]
SVC_GameCompleteStatus_70:
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_challenge
	lea edx, [ebp-0x824]
	mov [esp], edx
	call Info_SetValueForKey
	mov dword [esp], _cstring_fs_restrict
	call Cvar_VariableBooleanValue
	test al, al
	jnz SVC_GameCompleteStatus_20
SVC_GameCompleteStatus_60:
	mov byte [tempServerMsgBuf], 0x0
	mov eax, [sv_maxclients]
	mov esi, [eax+0xc]
	test esi, esi
	jle SVC_GameCompleteStatus_30
	mov dword [ebp-0xc38], 0x0
	mov dword [ebp-0xc3c], 0x0
	xor esi, esi
	mov dword [ebp-0xc40], svs+0x463800
SVC_GameCompleteStatus_50:
	cmp dword [esi+svs+0x46380c], 0x1
	jle SVC_GameCompleteStatus_40
	mov eax, [ebp-0xc3c]
	mov [esp], eax
	call SV_GameClientNum
	mov ebx, [esi+svs+0x4e3cf0]
	mov eax, esi
	sar eax, 0x2
	imul eax, eax, 0x4315b545
	mov [esp], eax
	call G_GetClientScore
	mov edx, [ebp-0xc40]
	add edx, 0x21294
	mov [esp+0x14], edx
	mov [esp+0x10], ebx
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_i_i_s
	mov dword [esp+0x4], 0x400
	lea edx, [ebp-0x424]
	mov [esp], edx
	call Com_sprintf
	cld
	mov ecx, 0xffffffff
	lea edi, [ebp-0x424]
	xor eax, eax
	repne scasb
	not ecx
	mov edx, [ebp-0xc38]
	lea ebx, [ecx+edx-0x1]
	cmp ebx, 0x1ffff
	jg SVC_GameCompleteStatus_30
	lea eax, [ebp-0x424]
	mov [esp+0x4], eax
	mov eax, edx
	add eax, tempServerMsgBuf
	mov [esp], eax
	call strcpy
	mov [ebp-0xc38], ebx
	mov eax, [sv_maxclients]
SVC_GameCompleteStatus_40:
	add dword [ebp-0xc3c], 0x1
	add dword [ebp-0xc40], 0xa5634
	add esi, 0xa5634
	mov edx, [ebp-0xc3c]
	cmp [eax+0xc], edx
	jg SVC_GameCompleteStatus_50
SVC_GameCompleteStatus_30:
	mov dword [esp+0x8], tempServerMsgBuf
	lea eax, [ebp-0x824]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_gamecompletestat
	call va
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
	call NET_OutOfBandPrint
	add esp, 0xc5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SVC_GameCompleteStatus_20:
	mov dword [esp+0x4], _cstring_sv_keywords
	lea eax, [ebp-0x824]
	mov [esp], eax
	call Info_ValueForKey
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_demo_s
	mov dword [esp+0x4], 0x400
	lea ebx, [ebp-0xc24]
	mov [esp], ebx
	call Com_sprintf
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_sv_keywords
	lea edx, [ebp-0x824]
	mov [esp], edx
	call Info_SetValueForKey
	jmp SVC_GameCompleteStatus_60
SVC_GameCompleteStatus_10:
	mov eax, _cstring_null
	jmp SVC_GameCompleteStatus_70


;SV_FindClientByAddress(netadr_t, int)
SV_FindClientByAddress:
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
	jle SV_FindClientByAddress_10
	xor esi, esi
	mov edi, svs+0x46380c
	mov ebx, svs+0x46380c
SV_FindClientByAddress_50:
	mov ecx, [ebx]
	test ecx, ecx
	jz SV_FindClientByAddress_20
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
	call NET_CompareBaseAdr
	test eax, eax
	jz SV_FindClientByAddress_30
	mov eax, [ebp+0x14]
	cmp [ebx+0x2c], eax
	jz SV_FindClientByAddress_40
SV_FindClientByAddress_30:
	mov eax, [sv_maxclients]
SV_FindClientByAddress_20:
	add esi, 0x1
	add edi, 0xa5634
	add ebx, 0xa5634
	cmp esi, [eax+0xc]
	jl SV_FindClientByAddress_50
SV_FindClientByAddress_10:
	xor edi, edi
SV_FindClientByAddress_60:
	mov eax, edi
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SV_FindClientByAddress_40:
	movzx eax, word [ebp-0x42]
	cmp [edi+0x28], ax
	jz SV_FindClientByAddress_60
	mov dword [esp+0x4], _cstring_sv_readpackets_f
	mov dword [esp], 0xf
	call Com_Printf
	movzx eax, word [ebp-0x42]
	mov [edi+0x28], ax
	jmp SV_FindClientByAddress_60


;SV_ConnectionlessPacket(netadr_t, msg_t*)
SV_ConnectionlessPacket:
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
	call MSG_BeginReading
	mov [esp], edi
	call MSG_ReadLong
	mov eax, [edi+0x14]
	mov [esp], eax
	call SV_Netchan_AddOOBProfilePacket
	mov dword [esp+0x8], 0x3
	mov dword [esp+0x4], _cstring_pb_
	mov eax, [edi+0x8]
	add eax, 0x4
	mov [esp], eax
	call Q_stricmpn
	test eax, eax
	jnz SV_ConnectionlessPacket_10
	mov eax, [sv_maxclients]
	mov esi, [eax+0xc]
	test esi, esi
	jle SV_ConnectionlessPacket_20
	xor esi, esi
	mov ebx, svs+0x46380c
	jmp SV_ConnectionlessPacket_30
SV_ConnectionlessPacket_40:
	add esi, 0x1
	add ebx, 0xa5634
	cmp [eax+0xc], esi
	jle SV_ConnectionlessPacket_20
SV_ConnectionlessPacket_30:
	mov edx, [ebx]
	test edx, edx
	jz SV_ConnectionlessPacket_40
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
	call NET_CompareBaseAdr
	test eax, eax
	jz SV_ConnectionlessPacket_50
	movzx eax, word [ebp-0x106]
	cmp ax, [ebx+0x28]
	jz SV_ConnectionlessPacket_60
SV_ConnectionlessPacket_50:
	mov eax, [sv_maxclients]
	add esi, 0x1
	add ebx, 0xa5634
	cmp [eax+0xc], esi
	jg SV_ConnectionlessPacket_30
SV_ConnectionlessPacket_20:
	mov ecx, 0xffffffff
SV_ConnectionlessPacket_240:
	mov edx, [edi+0x8]
	movzx eax, byte [edx+0x7]
	cmp al, 0x43
	jz SV_ConnectionlessPacket_70
	cmp al, 0x31
	jz SV_ConnectionlessPacket_80
	cmp al, 0x4a
	jz SV_ConnectionlessPacket_80
	lea eax, [edx+0x4]
	mov [esp+0xc], eax
	mov eax, [edi+0x14]
	sub eax, 0x4
	mov [esp+0x8], eax
	mov [esp+0x4], ecx
	mov dword [esp], 0xd
	call PbSvAddEvent
	mov edx, [edi+0x8]
	movzx eax, byte [edx+0x7]
SV_ConnectionlessPacket_70:
	cmp al, 0x53
	jz SV_ConnectionlessPacket_90
	cmp al, 0x32
	jz SV_ConnectionlessPacket_90
	cmp al, 0x47
	jz SV_ConnectionlessPacket_90
	cmp al, 0x49
	jz SV_ConnectionlessPacket_90
	cmp al, 0x59
	jz SV_ConnectionlessPacket_90
	cmp al, 0x42
	jz SV_ConnectionlessPacket_90
	cmp al, 0x4c
	jz SV_ConnectionlessPacket_90
	mov eax, com_dedicated
	mov eax, [eax]
	test eax, eax
	jz SV_ConnectionlessPacket_100
	mov ebx, [eax+0xc]
	test ebx, ebx
	jnz SV_ConnectionlessPacket_90
SV_ConnectionlessPacket_100:
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
	jmp PbClAddEvent
SV_ConnectionlessPacket_90:
	add esp, 0x12c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SV_ConnectionlessPacket_80:
	movzx eax, byte [edx+0x7]
	jmp SV_ConnectionlessPacket_70
SV_ConnectionlessPacket_10:
	mov [esp], edi
	call MSG_ReadStringLine
	mov [esp], eax
	call SV_Cmd_TokenizeString
	mov eax, sv_cmd_args
	mov edx, [eax]
	mov ecx, [eax+edx*4+0x44]
	test ecx, ecx
	jle SV_ConnectionlessPacket_110
	mov eax, [eax+edx*4+0x64]
	mov ebx, [eax]
SV_ConnectionlessPacket_230:
	mov eax, [sv_packet_info]
	cmp byte [eax+0xc], 0x0
	jnz SV_ConnectionlessPacket_120
SV_ConnectionlessPacket_200:
	mov dword [esp+0x4], _cstring_getstatus
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jz SV_ConnectionlessPacket_130
	mov dword [esp+0x4], _cstring_v
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz SV_ConnectionlessPacket_140
	mov [esp], edi
	call MSG_ReadShort
	mov [ebp-0x10c], eax
	mov eax, [sv_maxclients]
	mov ecx, [eax+0xc]
	test ecx, ecx
	jle SV_ConnectionlessPacket_150
	xor esi, esi
	mov dword [ebp-0xfc], svs+0x46380c
	mov ebx, svs+0x46380c
	jmp SV_ConnectionlessPacket_160
SV_ConnectionlessPacket_170:
	add esi, 0x1
	add dword [ebp-0xfc], 0xa5634
	add ebx, 0xa5634
	cmp esi, [eax+0xc]
	jge SV_ConnectionlessPacket_150
SV_ConnectionlessPacket_160:
	mov edx, [ebx]
	test edx, edx
	jz SV_ConnectionlessPacket_170
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
	call NET_CompareBaseAdr
	test eax, eax
	jz SV_ConnectionlessPacket_180
	mov edx, [ebp-0x10c]
	cmp edx, [ebx+0x2c]
	jz SV_ConnectionlessPacket_190
SV_ConnectionlessPacket_180:
	mov eax, [sv_maxclients]
	jmp SV_ConnectionlessPacket_170
SV_ConnectionlessPacket_130:
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
	call SV_UpdateLastTimeMasterServerCommunicated
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
	call SVC_Status
SV_ConnectionlessPacket_150:
	add esp, 0x12c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp SV_Cmd_EndTokenizedString
SV_ConnectionlessPacket_120:
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
	call NET_AdrToString
	mov [esp+0xc], ebx
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_sv_packet_s__s
	mov dword [esp], 0xf
	call Com_Printf
	jmp SV_ConnectionlessPacket_200
SV_ConnectionlessPacket_140:
	mov dword [esp+0x4], _cstring_getinfo
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jz SV_ConnectionlessPacket_210
	mov dword [esp+0x4], _cstring_getchallenge
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz SV_ConnectionlessPacket_220
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
	call SV_UpdateLastTimeMasterServerCommunicated
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
	call SV_GetChallenge
	jmp SV_ConnectionlessPacket_150
SV_ConnectionlessPacket_110:
	mov ebx, _cstring_null
	jmp SV_ConnectionlessPacket_230
SV_ConnectionlessPacket_210:
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
	call SVC_Info
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
	call SV_UpdateLastTimeMasterServerCommunicated
	jmp SV_ConnectionlessPacket_150
SV_ConnectionlessPacket_60:
	mov ecx, esi
	jmp SV_ConnectionlessPacket_240
SV_ConnectionlessPacket_220:
	mov dword [esp+0x4], _cstring_connect
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz SV_ConnectionlessPacket_250
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
	call NET_IsLocalAddress
	test eax, eax
	jz SV_ConnectionlessPacket_260
	mov eax, _cstring_localhost
SV_ConnectionlessPacket_290:
	mov [esp+0x4], ebx
	mov [esp], eax
	call PbPassConnectString
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
	call SV_DirectConnect
	jmp SV_ConnectionlessPacket_150
SV_ConnectionlessPacket_250:
	mov dword [esp+0x4], _cstring_stats
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz SV_ConnectionlessPacket_270
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
	call SV_ReceiveStats
	jmp SV_ConnectionlessPacket_150
SV_ConnectionlessPacket_270:
	mov dword [esp+0x4], _cstring_ipauthorize
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz SV_ConnectionlessPacket_280
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
	call SV_UpdateLastTimeMasterServerCommunicated
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
	call SV_AuthorizeIpPacket
	jmp SV_ConnectionlessPacket_150
SV_ConnectionlessPacket_260:
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
	call NET_AdrToString
	jmp SV_ConnectionlessPacket_290
SV_ConnectionlessPacket_190:
	movzx edx, word [ebp-0x106]
	mov eax, [ebp-0xfc]
	cmp [eax+0x28], dx
	jz SV_ConnectionlessPacket_300
	mov dword [esp+0x4], _cstring_sv_readpackets_f
	mov dword [esp], 0xf
	call Com_Printf
	movzx edx, word [ebp-0x106]
	mov eax, [ebp-0xfc]
	mov [eax+0x28], dx
SV_ConnectionlessPacket_300:
	mov eax, [ebp-0xfc]
	cmp dword [eax], 0x1
	jz SV_ConnectionlessPacket_150
	mov eax, [svs+0x463804]
	mov edx, [ebp-0xfc]
	mov [edx+0x21454], eax
	cmp dword [edx], 0x3
	jg SV_ConnectionlessPacket_310
	mov [esp+0x4], edi
	mov [esp], edx
	call SV_PreGameUserVoice
	jmp SV_ConnectionlessPacket_150
SV_ConnectionlessPacket_280:
	mov dword [esp+0x4], _cstring_rcon
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz SV_ConnectionlessPacket_320
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
	call SVC_RemoteCommand
	jmp SV_ConnectionlessPacket_150
SV_ConnectionlessPacket_320:
	mov dword [esp+0x4], _cstring_disconnect
	mov [esp], ebx
	call Q_stricmp
	jmp SV_ConnectionlessPacket_150
SV_ConnectionlessPacket_310:
	mov [esp+0x4], edi
	mov eax, [ebp-0xfc]
	mov [esp], eax
	call SV_UserVoice
	jmp SV_ConnectionlessPacket_150
	nop
	add [eax], al


;SVC_Info(netadr_t)
SVC_Info:
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
	jg SVC_Info_10
	xor edi, edi
SVC_Info_310:
	mov eax, [sv_maxclients]
	mov esi, [eax+0xc]
	cmp ecx, esi
	jl SVC_Info_20
	mov ebx, edi
	mov byte [ebp-0x424], 0x0
	mov eax, sv_cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x1
	jle SVC_Info_30
SVC_Info_280:
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x4]
SVC_Info_290:
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_challenge
	lea esi, [ebp-0x424]
	mov [esp], esi
	call Info_SetValueForKey
	mov dword [esp+0x4], 0x6
	mov dword [esp], _cstring_i
	call va
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_protocol
	mov [esp], esi
	call Info_SetValueForKey
	mov eax, [sv_hostname]
	mov eax, [eax+0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_hostname
	mov [esp], esi
	call Info_SetValueForKey
	mov eax, [sv_mapname]
	mov eax, [eax+0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_mapname
	mov [esp], esi
	call Info_SetValueForKey
	test ebx, ebx
	jnz SVC_Info_40
SVC_Info_380:
	mov eax, [sv_privateClients]
	mov eax, [eax+0xc]
	sub eax, edi
	mov edx, [sv_maxclients]
	mov edx, [edx+0xc]
	sub edx, eax
	test edx, edx
	jle SVC_Info_50
	mov [esp+0x4], edx
	mov dword [esp], _cstring_i
	call va
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_sv_maxclients
	mov [esp], esi
	call Info_SetValueForKey
SVC_Info_50:
	mov eax, [sv_gametype]
	mov eax, [eax+0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_gametype
	mov [esp], esi
	call Info_SetValueForKey
	mov eax, [sv_pure]
	cmp byte [eax+0xc], 0x0
	jnz SVC_Info_60
	mov eax, fs_numServerIwds
	mov eax, [eax]
	test eax, eax
	jnz SVC_Info_60
	mov eax, [sv_minPing]
	mov eax, [eax+0xc]
	test eax, eax
	jnz SVC_Info_70
SVC_Info_220:
	mov eax, [sv_maxPing]
	mov eax, [eax+0xc]
	test eax, eax
	jnz SVC_Info_80
SVC_Info_230:
	mov dword [esp], _cstring_fs_game
	call Cvar_VariableString
	mov ebx, eax
	cmp byte [eax], 0x0
	jnz SVC_Info_90
SVC_Info_240:
	mov eax, [sv_allowAnonymous]
	movzx eax, byte [eax+0xc]
	test al, al
	jnz SVC_Info_100
SVC_Info_250:
	mov eax, [sv_disableClientConsole]
	movzx eax, byte [eax+0xc]
	test al, al
	jnz SVC_Info_110
SVC_Info_260:
	mov dword [esp], _cstring_g_password
	call Cvar_VariableString
	test eax, eax
	jz SVC_Info_120
	cmp byte [eax], 0x0
	jnz SVC_Info_130
SVC_Info_120:
	mov dword [esp], _cstring_scr_team_fftype
	call Cvar_VariableIntegerValue
	test eax, eax
	jnz SVC_Info_140
SVC_Info_370:
	mov dword [esp], _cstring_scr_game_allowki
	call Cvar_VariableIntegerValue
	test eax, eax
	jnz SVC_Info_150
SVC_Info_360:
	mov dword [esp], _cstring_scr_hardcore
	call Cvar_VariableIntegerValue
	test eax, eax
	jnz SVC_Info_160
SVC_Info_350:
	mov dword [esp], _cstring_scr_oldschool
	call Cvar_VariableIntegerValue
	test eax, eax
	jnz SVC_Info_170
SVC_Info_340:
	mov eax, com_dedicated
	mov eax, [eax]
	test eax, eax
	jz SVC_Info_180
	mov edi, [eax+0xc]
	test edi, edi
	jnz SVC_Info_190
SVC_Info_180:
	mov dword [esp+0x4], 0x6
SVC_Info_390:
	mov dword [esp], _cstring_i
	call va
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_hw
	mov [esp], esi
	call Info_SetValueForKey
	mov eax, [sv_pure]
	cmp byte [eax+0xc], 0x0
	jz SVC_Info_200
	cmp byte [ebx], 0x0
	jz SVC_Info_210
SVC_Info_200:
	mov ebx, 0x1
SVC_Info_330:
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_i
	call va
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_mod
	mov [esp], esi
	call Info_SetValueForKey
	mov eax, [sv_voice]
	movzx eax, byte [eax+0xc]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_i
	call va
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_voice
	mov [esp], esi
	call Info_SetValueForKey
	mov eax, [sv_punkbuster]
	movzx eax, byte [eax+0xc]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_i
	call va
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_pb
	mov [esp], esi
	call Info_SetValueForKey
	mov dword [esp+0x8], 0x400
	mov dword [esp+0x4], _cstring_inforesponse
	lea ebx, [ebp-0x824]
	mov [esp], ebx
	call Q_strncpyz
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x400
	mov [esp], ebx
	call Q_strncat
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
	call NET_OutOfBandPrint
	add esp, 0x84c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SVC_Info_60:
	mov dword [esp+0x8], _cstring_1
	mov dword [esp+0x4], _cstring_pure
	mov [esp], esi
	call Info_SetValueForKey
	mov eax, [sv_minPing]
	mov eax, [eax+0xc]
	test eax, eax
	jz SVC_Info_220
SVC_Info_70:
	mov [esp+0x4], eax
	mov dword [esp], _cstring_i
	call va
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_minping
	mov [esp], esi
	call Info_SetValueForKey
	mov eax, [sv_maxPing]
	mov eax, [eax+0xc]
	test eax, eax
	jz SVC_Info_230
SVC_Info_80:
	mov [esp+0x4], eax
	mov dword [esp], _cstring_i
	call va
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_maxping
	mov [esp], esi
	call Info_SetValueForKey
	mov dword [esp], _cstring_fs_game
	call Cvar_VariableString
	mov ebx, eax
	cmp byte [eax], 0x0
	jz SVC_Info_240
SVC_Info_90:
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_game
	mov [esp], esi
	call Info_SetValueForKey
	mov eax, [sv_allowAnonymous]
	movzx eax, byte [eax+0xc]
	test al, al
	jz SVC_Info_250
SVC_Info_100:
	movzx eax, al
	mov [esp+0x4], eax
	mov dword [esp], _cstring_i
	call va
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_sv_allowanonymou
	mov [esp], esi
	call Info_SetValueForKey
	mov eax, [sv_disableClientConsole]
	movzx eax, byte [eax+0xc]
	test al, al
	jz SVC_Info_260
SVC_Info_110:
	movzx eax, al
	mov [esp+0x4], eax
	mov dword [esp], _cstring_i
	call va
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_con_disabled
	mov [esp], esi
	call Info_SetValueForKey
	jmp SVC_Info_260
SVC_Info_20:
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
SVC_Info_270:
	lea eax, [ebx+0x1]
	cmp dword [edx], 0x2
	cmovge ebx, eax
	add ecx, 0x1
	add edx, 0xa5634
	cmp esi, ecx
	jg SVC_Info_270
	mov byte [ebp-0x424], 0x0
	mov eax, sv_cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x1
	jg SVC_Info_280
SVC_Info_30:
	mov eax, _cstring_null
	jmp SVC_Info_290
SVC_Info_10:
	xor ebx, ebx
	xor edi, edi
	mov edx, svs+0x46380c
SVC_Info_300:
	lea eax, [edi+0x1]
	cmp dword [edx], 0x2
	cmovge edi, eax
	add ebx, 0x1
	add edx, 0xa5634
	cmp ecx, ebx
	jnz SVC_Info_300
	jmp SVC_Info_310
SVC_Info_210:
	mov dword [esp], _cstring_sv_referencediwd
	call Cvar_VariableString
	cmp byte [eax], 0x0
	jnz SVC_Info_320
	xor ebx, ebx
	jmp SVC_Info_330
SVC_Info_170:
	mov [esp+0x4], eax
	mov dword [esp], _cstring_i
	call va
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_od
	mov [esp], esi
	call Info_SetValueForKey
	jmp SVC_Info_340
SVC_Info_160:
	mov [esp+0x4], eax
	mov dword [esp], _cstring_i
	call va
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_hc
	mov [esp], esi
	call Info_SetValueForKey
	jmp SVC_Info_350
SVC_Info_150:
	mov [esp+0x4], eax
	mov dword [esp], _cstring_i
	call va
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_kc
	mov [esp], esi
	call Info_SetValueForKey
	jmp SVC_Info_360
SVC_Info_140:
	mov [esp+0x4], eax
	mov dword [esp], _cstring_i
	call va
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_ff
	mov [esp], esi
	call Info_SetValueForKey
	jmp SVC_Info_370
SVC_Info_40:
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_i
	call va
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_clients
	mov [esp], esi
	call Info_SetValueForKey
	jmp SVC_Info_380
SVC_Info_190:
	mov dword [esp+0x4], 0x2
	jmp SVC_Info_390
SVC_Info_130:
	mov dword [esp+0x8], _cstring_1
	mov dword [esp+0x4], _cstring_pswrd
	mov [esp], esi
	call Info_SetValueForKey
	jmp SVC_Info_120
SVC_Info_320:
	mov [esp], eax
	call SV_Cmd_TokenizeString
	mov edx, sv_cmd_args
	mov eax, [edx]
	mov edi, [edx+eax*4+0x44]
	test edi, edi
	jle SVC_Info_400
	xor ebx, ebx
	jmp SVC_Info_410
SVC_Info_430:
	mov eax, _cstring_null
SVC_Info_440:
	mov dword [esp+0x4], _cstring_main
	mov [esp], eax
	call FS_iwIwd
	test eax, eax
	jz SVC_Info_420
	add ebx, 0x1
	cmp edi, ebx
	jz SVC_Info_400
	mov edx, sv_cmd_args
SVC_Info_410:
	mov eax, [edx]
	cmp ebx, [edx+eax*4+0x44]
	jge SVC_Info_430
	mov eax, [edx+eax*4+0x64]
	mov eax, [eax+ebx*4]
	jmp SVC_Info_440
SVC_Info_400:
	xor ebx, ebx
	call SV_Cmd_EndTokenizedString
	jmp SVC_Info_330
SVC_Info_420:
	mov ebx, 0x1
	call SV_Cmd_EndTokenizedString
	jmp SVC_Info_330
	nop


;SV_Frame(int)
SV_Frame:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov edi, [ebp+0x8]
	cmp byte [sv+0x5fc48], 0x0
	jz SV_Frame_10
	mov eax, [sv+0x5fc4c]
	test eax, eax
	jz SV_Frame_20
	cmp byte [eax], 0x0
	jnz SV_Frame_30
SV_Frame_20:
	mov dword [esp], _cstring_exe_serverkilled
	call Com_Shutdown
SV_Frame_180:
	mov byte [sv+0x5fc48], 0x0
	mov dword [sv+0x5fc4c], 0x0
SV_Frame_40:
	mov eax, edi
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SV_Frame_10:
	mov eax, com_sv_running
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz SV_Frame_40
	mov eax, cl_paused
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	jz SV_Frame_50
	mov eax, [sv_maxclients]
	mov esi, [eax+0xc]
	test esi, esi
	jle SV_Frame_60
	xor ebx, ebx
	xor ecx, ecx
	mov edx, svs+0x46380c
SV_Frame_70:
	lea eax, [ecx+0x1]
	cmp dword [edx], 0x2
	cmovge ecx, eax
	add ebx, 0x1
	add edx, 0xa5634
	cmp ebx, esi
	jnz SV_Frame_70
	sub ecx, 0x1
	jle SV_Frame_60
	mov dword [esp+0x4], 0x0
	mov eax, sv_paused
	mov eax, [eax]
	mov [esp], eax
	call Cvar_SetInt
SV_Frame_50:
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
	jg SV_Frame_40
	cmp dword [svs+0x463804], 0x70000000
	jg SV_Frame_80
	mov edx, 0x7ffffffe
	mov eax, edx
	sub eax, [svs+0x2dbc50c]
	cmp [svs+0x2dbc514], eax
	jge SV_Frame_90
	cmp dword [svs+0x8246aa4], 0x7fffbffd
	jg SV_Frame_100
	cmp dword [svs+0x8246aa8], 0x7fffeffd
	jg SV_Frame_110
	cmp dword [svs+0x624451c], 0x7ffffb4d
	jg SV_Frame_120
	cmp dword [svs+0x8246aa0], 0x7dfffffd
	jg SV_Frame_130
	cmp dword [svs+0x8246aac], 0x7ffffdfd
	jg SV_Frame_140
	sub edx, [svs+0x2dbc510]
	cmp [svs+0x2dbc518], edx
	jge SV_Frame_150
	call SV_CalcPings
	call SV_PreFrame
	jmp SV_Frame_160
SV_Frame_170:
	call SV_CheckTimeouts
	call SV_SendClientMessages
	mov dword [esp], _cstring_cod4
	call SV_MasterHeartbeat
SV_Frame_160:
	sub [sv+0x4], ebx
	add [svs+0x463804], ebx
	call SV_ResetSkeletonCache
	call CL_FlushDebugServerData
	mov eax, [svs+0x463804]
	mov [esp], eax
	call G_RunFrame
	call CL_UpdateDebugServerData
	mov dword [esp], 0x0
	call Scr_SetLoading
	cmp ebx, [sv+0x4]
	jle SV_Frame_170
	call SV_CheckTimeouts
	call SV_SendClientMessages
	mov dword [esp], _cstring_cod4
	call SV_MasterHeartbeat
	jmp SV_Frame_40
SV_Frame_30:
	mov [esp], eax
	call Com_Shutdown
	jmp SV_Frame_180
SV_Frame_60:
	mov dword [esp+0x4], 0x1
	mov eax, sv_paused
	mov eax, [eax]
	mov [esp], eax
	call Cvar_SetInt
	mov eax, [com_inServerFrame]
	test eax, eax
	jz SV_Frame_40
	mov dword [com_inServerFrame], 0x0
	call SV_ResetSkeletonCache
	call CL_FlushDebugServerData
	mov eax, [svs+0x463804]
	mov [esp], eax
	call G_RunFrame
	call CL_UpdateDebugServerData
	jmp SV_Frame_40
SV_Frame_80:
	mov dword [esp+0x8], 0x40
	mov eax, [sv_mapname]
	mov eax, [eax+0xc]
	mov [esp+0x4], eax
	lea ebx, [ebp-0x58]
	mov [esp], ebx
	call Q_strncpyz
	mov dword [esp], _cstring_exe_serverrestar
SV_Frame_190:
	call Com_Shutdown
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_map_s
	call va
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Cbuf_AddText
	mov eax, edi
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SV_Frame_110:
	mov dword [esp+0x8], 0x40
	mov eax, [sv_mapname]
	mov eax, [eax+0xc]
	mov [esp+0x4], eax
	lea ebx, [ebp-0x58]
	mov [esp], ebx
	call Q_strncpyz
	mov dword [esp], _cstring_exe_serverrestar1
	jmp SV_Frame_190
SV_Frame_90:
	mov dword [esp+0x8], 0x40
	mov eax, [sv_mapname]
	mov eax, [eax+0xc]
	mov [esp+0x4], eax
	lea ebx, [ebp-0x58]
	mov [esp], ebx
	call Q_strncpyz
	mov dword [esp], _cstring_exe_serverrestar2
	jmp SV_Frame_190
SV_Frame_100:
	mov dword [esp+0x8], 0x40
	mov eax, [sv_mapname]
	mov eax, [eax+0xc]
	mov [esp+0x4], eax
	lea ebx, [ebp-0x58]
	mov [esp], ebx
	call Q_strncpyz
	mov dword [esp], _cstring_exe_serverrestar3
	jmp SV_Frame_190
SV_Frame_120:
	mov dword [esp+0x8], 0x40
	mov eax, [sv_mapname]
	mov eax, [eax+0xc]
	mov [esp+0x4], eax
	lea ebx, [ebp-0x58]
	mov [esp], ebx
	call Q_strncpyz
	mov dword [esp], _cstring_exe_serverrestar4
	jmp SV_Frame_190
SV_Frame_130:
	mov dword [esp+0x8], 0x40
	mov eax, [sv_mapname]
	mov eax, [eax+0xc]
	mov [esp+0x4], eax
	lea ebx, [ebp-0x58]
	mov [esp], ebx
	call Q_strncpyz
	mov dword [esp], _cstring_exe_serverrestar5
	jmp SV_Frame_190
SV_Frame_140:
	mov dword [esp+0x8], 0x40
	mov eax, [sv_mapname]
	mov eax, [eax+0xc]
	mov [esp+0x4], eax
	lea ebx, [ebp-0x58]
	mov [esp], ebx
	call Q_strncpyz
	mov dword [esp], _cstring_exe_serverrestar6
	jmp SV_Frame_190
SV_Frame_150:
	mov dword [esp+0x8], 0x40
	mov eax, [sv_mapname]
	mov eax, [eax+0xc]
	mov [esp+0x4], eax
	lea ebx, [ebp-0x58]
	mov [esp], ebx
	call Q_strncpyz
	mov dword [esp], _cstring_exe_serverrestar7
	jmp SV_Frame_190


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

