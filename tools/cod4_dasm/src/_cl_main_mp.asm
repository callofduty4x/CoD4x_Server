;Imports of cl_main_mp:
	extern FS_Write
	extern memset
	extern cl_cdkey
	extern Q_strlwr
	extern g_largeLocalBuf
	extern MD5Init
	extern MD5Update
	extern MD5Final
	extern sprintf
	extern DB_AddUserMapDir
	extern DB_ResetZoneSize
	extern Com_sprintf
	extern DB_LoadXAssets
	extern DB_SyncXAssets
	extern DB_UpdateDebugZone
	extern Com_ShutdownWorld
	extern useFastFile
	extern R_Shutdown
	extern Con_ShutdownClientAssets
	extern CM_Shutdown
	extern cmd_args
	extern Com_Printf
	extern com_sv_running
	extern Q_stricmp
	extern FS_FOpenFileRead
	extern Q_strncpyz
	extern Con_Close
	extern va
	extern Com_Error
	extern NET_CompareAdr
	extern SEH_SafeTranslateString
	extern UI_ReplaceConversionString
	extern CL_VoicePacket
	extern atoi
	extern Com_DPrintf
	extern NET_CompareBaseAdr
	extern NET_AdrToString
	extern CL_ServerInfoPacket
	extern g_qport
	extern Netchan_Setup
	extern fs_gameDirVar
	extern CL_ServerStatusResponse
	extern LiveStorage_ReadStatsFromDir
	extern NET_OutOfBandPrint
	extern MSG_ReadBigString
	extern Com_PrintMessage
	extern Q_strncmp
	extern CL_ServersResponsePacket
	extern SEH_LocalizeTextMessage
	extern UI_CloseAllMenus
	extern Cbuf_AddText
	extern MSG_ReadStringLine
	extern Cvar_SetString
	extern Cbuf_Execute
	extern Sys_Milliseconds
	extern printf
	extern FS_FCloseFile
	extern Com_Quit_f
	extern R_SyncGpu
	extern R_AddCmdDrawStretchPic
	extern ScrPlace_ApplyRect
	extern R_AddCmdDrawText
	extern com_expectedHunkUsage
	extern UI_SetMap
	extern SCR_UpdateScreen
	extern _ZN10LargeLocalC1Ei
	extern _ZN10LargeLocal6GetBufEv
	extern _ZN10LargeLocalD1Ev
	extern FS_FileExists
	extern FS_FOpenFileWrite
	extern Com_PrintError
	extern MSG_Init
	extern MSG_WriteLong
	extern MSG_WriteByte
	extern MSG_WriteShort
	extern MSG_WriteBit0
	extern MSG_WriteBits
	extern MSG_WriteBigString
	extern svsHeader
	extern MSG_WriteEntity
	extern MSG_WriteBitsCompress
	extern _Unwind_Resume
	extern Q_strncat
	extern putenv
	extern getenv
	extern Sys_ShowIP
	extern Com_SyncThreads
	extern puts
	extern Sys_IsMainThread
	extern CL_ShutdownDebugData
	extern SND_Shutdown
	extern CL_ShutdownInput
	extern Cmd_RemoveCommand
	extern UI_IsFullscreen
	extern CL_ShutdownCGame
	extern Phys_Shutdown
	extern CL_ShutdownUI
	extern Com_ClientDObjClearAllSkel
	extern legacyHacks
	extern SCR_StopCinematic
	extern Ragdoll_Shutdown
	extern CL_ClearMutedList
	extern DynEntCl_Shutdown
	extern SND_DisconnectListener
	extern sv_disableClientConsole
	extern Cvar_SetBool
	extern cl_connectedToPureServer
	extern fs_checksumFeed
	extern LiveStorage_UploadStats
	extern LiveStorage_ReadStatsIfDirChanged
	extern DL_CancelDownload
	extern MSG_WriteReliableCommandToBuffer
	extern CL_WritePacket
	extern Cmd_ExecuteSingleCommand
	extern FS_DisablePureCheck
	extern nextmap
	extern UI_CloseAll
	extern NET_StringToAdr
	extern SND_FadeAllSounds
	extern Cbuf_ExecuteBuffer
	extern SND_StopSounds
	extern atof
	extern floorf
	extern Material_RegisterHandle
	extern UI_SetActiveMenu
	extern Netchan_Process
	extern MSG_ReadLong
	extern CL_Netchan_Decode
	extern CL_ParseServerMessage
	extern R_SyncRenderThread
	extern StatMon_Reset
	extern PIXBeginNamedEvent
	extern SND_PlayFXSounds
	extern SND_UpdateLoopingSounds
	extern SND_Update
	extern Cvar_InfoString
	extern Info_Print
	extern R_BeginRegistration
	extern scrPlaceFullUnsafe
	extern ScrPlace_SetupUnsafeViewport
	extern scrPlaceFull
	extern ScrPlace_SetupViewport
	extern scrPlaceView
	extern R_RegisterFont
	extern g_console_field_width
	extern g_consoleField
	extern g_console_char_height
	extern Con_InitClientAssets
	extern strchr
	extern memmove
	extern CL_IsCgameInitialized
	extern NET_OutOfBandData
	extern PbSvAddEvent
	extern UI_GetActiveMenu
	extern DB_ModFileExists
	extern R_MakeDedicated
	extern Sys_HideSplashWindow
	extern Sys_ShowConsole
	extern Sys_NormalExit
	extern Cvar_RegisterBool
	extern FS_ShiftStr
	extern FS_CompareWithServerFiles
	extern CG_GetClientNum
	extern Z_VirtualAllocInternal
	extern MemFile_InitForWriting
	extern SND_Save
	extern MemFile_StartSegment
	extern memcpy
	extern Z_VirtualFreeInternal
	extern SND_SaveListeners
	extern SND_InitDriver
	extern SND_Init
	extern SND_RestoreListeners
	extern MemFile_InitForReading
	extern SND_Restore
	extern MemFile_MoveToSegment
	extern FS_ShutDownIwdPureCheckReferences
	extern Com_Restart
	extern Cvar_RegisterInt
	extern FS_ConditionalRestart
	extern SEH_UpdateLanguageInfo
	extern cl_paused
	extern Cvar_SetInt
	extern R_ConfigureRenderer
	extern com_dedicated
	extern CL_ArchiveClientState
	extern LiveStorage_ReadStats
	extern CL_GetConfigString
	extern Info_ValueForKey
	extern CL_InitCGame
	extern FS_ReferencedIwdPureChecksums
	extern CL_InitUI
	extern CL_WriteVoicePacket
	extern Info_SetValueForKey
	extern PbClientConnecting
	extern dvar_modifiedFlags
	extern MSG_WriteString
	extern LiveStorage_DoWeHaveStats
	extern LiveStorage_GetStatBuffer
	extern MSG_WriteData
	extern net_lanauthorize
	extern Sys_IsLANAddress
	extern Com_Memset
	extern BigShort
	extern Cvar_SetBoolByName
	extern FS_LoadedIwds
	extern FS_Read
	extern UI_AllowScriptMenuResponse
	extern Cvar_VariableIntegerValue
	extern sv_voice
	extern cl_talking
	extern IN_IsTalkKeyHeld
	extern FS_Restart
	extern fs_homepath
	extern Sys_Mkdir
	extern Cmd_ArgsBuffer
	extern R_AddCmdDrawTextWithCursor
	extern FS_ReferencedIwds
	extern Sys_QuitAndStartProcess
	extern MSG_BeginReading
	extern CL_Netchan_AddOOBProfilePacket
	extern strncasecmp
	extern showpackets
	extern Cmd_TokenizeString
	extern Cmd_EndTokenizedString
	extern PbClAddEvent
	extern cl_cdkeychecksum
	extern CL_CDKeyValidate
	extern Cvar_VariableBooleanValue
	extern Sys_MillisecondsRaw
	extern ms_srand
	extern Con_Init
	extern CL_InitInput
	extern Cvar_RegisterString
	extern Cvar_RegisterFloat
	extern cl_yawspeed
	extern cl_pitchspeed
	extern cl_anglespeedkey
	extern cl_bypassMouseInput
	extern vehDriverViewHeightMin
	extern vehDriverViewHeightMax
	extern Cmd_AddCommand
	extern Cbuf_AddServerText_f
	extern Cmd_AddServerCommandInternal
	extern Cmd_SetAutoComplete
	extern CL_PlayCinematic_f
	extern CL_PlayUnskippableCinematic_f
	extern CL_Connect_f
	extern CL_GlobalServers_f
	extern CL_RconInit
	extern CL_Rcon_f
	extern CL_Ping_f
	extern CL_ServerStatus_f
	extern CL_UpdateLevelHunkUsage
	extern CL_CubemapShot_f
	extern Com_WriteLocalizedSoundAliasFiles
	extern UI_CloseMenu_f
	extern CL_SelectStringTableEntryInDvar_f
	extern SCR_Init
	extern CG_RegisterDvars
	extern Ragdoll_Register
	extern IN_Frame
	extern com_timescaleValue
	extern com_frameTime
	extern R_AddCmdDrawTextWithEffects
	extern Voice_GetLocalVoiceData
	extern Voice_Playback
	extern CL_UpdateColor
	extern DL_InProgress
	extern CL_SetCGameTime
	extern CL_CreateCmdsDuringConnection
	extern sv_paused
	extern CL_WWWDownload
	extern CL_SendCmd

;Exports of cl_main_mp:
	global CL_WriteDemoClientArchive
	global CL_BuildMd5StrFromCDKey
	global LoadMapLoadscreen
	global CL_ShutdownRenderer
	global _ZZ21CL_GetServerIPAddressvE17szServerIPAddress
	global _ZZ17CL_CheckForResendiE9msgBuffer
	global _ZZ24CL_InitOnceForAllClientsvE19CL_ResetStats_f_VAR
	global _ZZ24CL_InitOnceForAllClientsvE37CL_SelectStringTableEntryInDvar_f_VAR
	global _ZZ24CL_InitOnceForAllClientsvE18UI_CloseMenu_f_VAR
	global _ZZ24CL_InitOnceForAllClientsvE37Com_WriteLocalizedSoundAliasFiles_VAR
	global _ZZ24CL_InitOnceForAllClientsvE23CL_OpenScriptMenu_f_VAR
	global _ZZ24CL_InitOnceForAllClientsvE20CL_CubemapShot_f_VAR
	global _ZZ24CL_InitOnceForAllClientsvE26CL_startSingleplayer_f_VAR
	global _ZZ24CL_InitOnceForAllClientsvE27CL_UpdateLevelHunkUsage_VAR
	global _ZZ24CL_InitOnceForAllClientsvE26CL_ReferencedIWDList_f_VAR
	global _ZZ24CL_InitOnceForAllClientsvE22CL_OpenedIWDList_f_VAR
	global _ZZ24CL_InitOnceForAllClientsvE19CL_ToggleMenu_f_VAR
	global _ZZ24CL_InitOnceForAllClientsvE15CL_ShowIP_f_VAR
	global _ZZ24CL_InitOnceForAllClientsvE15CL_Setenv_f_VAR
	global _ZZ24CL_InitOnceForAllClientsvE28CL_ServerStatus_f_VAR_SERVER
	global _ZZ24CL_InitOnceForAllClientsvE21CL_ServerStatus_f_VAR
	global _ZZ24CL_InitOnceForAllClientsvE20CL_Ping_f_VAR_SERVER
	global _ZZ24CL_InitOnceForAllClientsvE13CL_Ping_f_VAR
	global _ZZ24CL_InitOnceForAllClientsvE13CL_Rcon_f_VAR
	global _ZZ24CL_InitOnceForAllClientsvE22CL_GlobalServers_f_VAR
	global _ZZ24CL_InitOnceForAllClientsvE21CL_LocalServers_f_VAR
	global _ZZ24CL_InitOnceForAllClientsvE25CL_Reconnect_f_VAR_SERVER
	global _ZZ24CL_InitOnceForAllClientsvE18CL_Reconnect_f_VAR
	global _ZZ24CL_InitOnceForAllClientsvE23CL_Connect_f_VAR_SERVER
	global _ZZ24CL_InitOnceForAllClientsvE16CL_Connect_f_VAR
	global _ZZ24CL_InitOnceForAllClientsvE17CL_PlayLogo_f_VAR
	global _ZZ24CL_InitOnceForAllClientsvE33CL_PlayUnskippableCinematic_f_VAR
	global _ZZ24CL_InitOnceForAllClientsvE22CL_PlayCinematic_f_VAR
	global _ZZ24CL_InitOnceForAllClientsvE24CL_PlayDemo_f_VAR_SERVER_0
	global _ZZ24CL_InitOnceForAllClientsvE17CL_PlayDemo_f_VAR_0
	global _ZZ24CL_InitOnceForAllClientsvE24CL_PlayDemo_f_VAR_SERVER
	global _ZZ24CL_InitOnceForAllClientsvE17CL_PlayDemo_f_VAR
	global _ZZ24CL_InitOnceForAllClientsvE19CL_StopRecord_f_VAR
	global _ZZ24CL_InitOnceForAllClientsvE15CL_Record_f_VAR
	global _ZZ24CL_InitOnceForAllClientsvE26CL_Disconnect_f_VAR_SERVER
	global _ZZ24CL_InitOnceForAllClientsvE19CL_Disconnect_f_VAR
	global _ZZ24CL_InitOnceForAllClientsvE27CL_Snd_Restart_f_VAR_SERVER
	global _ZZ24CL_InitOnceForAllClientsvE20CL_Snd_Restart_f_VAR
	global _ZZ24CL_InitOnceForAllClientsvE27CL_Vid_Restart_f_VAR_SERVER
	global _ZZ24CL_InitOnceForAllClientsvE20CL_Vid_Restart_f_VAR
	global _ZZ24CL_InitOnceForAllClientsvE19CL_Clientinfo_f_VAR
	global _ZZ24CL_InitOnceForAllClientsvE22CL_Configstrings_f_VAR
	global _ZZ24CL_InitOnceForAllClientsvE24CL_ForwardToServer_f_VAR
	global CL_Disconnect_f
	global CL_PlayDemo_f
	global _ZZ11CL_ShutdowniE9recursive
	global CL_DisconnectPacket
	global _ZZ31CL_DispatchConnectionlessPacketi8netadr_tP5msg_tiE8printBuf
	global CL_DispatchConnectionlessPacket
	global CL_DemoCompleted
	global CL_SyncGpu
	global CL_DrawLogo
	global CL_DrawText
	global CL_InitLoad
	global CL_Record_f
	global CL_Setenv_f
	global CL_ShowIP_f
	global CL_Shutdown
	global CL_ClearState
	global CL_Disconnect
	global CL_IsUIActive
	global CL_MapLoading
	global CL_PlayLogo_f
	global CL_PacketEvent
	global CL_Reconnect_f
	global CL_ShutdownAll
	global CL_ShutdownRef
	global CL_UpdateSound
	global PBget_cl_cdkey
	global CL_Clientinfo_f
	global CL_GetMapCenter
	global CL_InitRenderer
	global CL_NextDownload
	global CL_RegisterFont
	global CL_ResetStats_f
	global CL_SendPbPacket
	global CL_ShutdownDemo
	global CL_StopRecord_f
	global CL_ToggleMenu_f
	global PB_Q_Serveraddr
	global PB_Q_Serverinfo
	global CL_BeginDownload
	global CL_GetServerList
	global CL_InitDedicated
	global CL_InitDownloads
	global CL_IsClientLocal
	global CL_Snd_Restart_f
	global CL_Vid_Restart_f
	global CL_VoiceTransmit
	global CL_CheckForResend
	global CL_DrawTextRotate
	global CL_LocalServers_f
	global CL_StartHunkUsers
	global set_cl_punkbuster
	global CL_Configstrings_f
	global CL_DisconnectError
	global CL_OpenedIWDList_f
	global CL_ReadDemoMessage
	global CL_DrawTextPhysical
	global CL_OpenScriptMenu_f
	global CL_ShouldDisplayHud
	global CL_UpdateDirtyPings
	global Voice_SendVoiceData
	global CL_DownloadsComplete
	global CL_ForwardToServer_f
	global CL_ShutdownHunkUsers
	global Client_SendVoiceData
	global CL_AddReliableCommand
	global CL_DrawTextWithCursor
	global CL_GetServerIPAddress
	global CL_IsServerLoadingMap
	global CL_ResetSkeletonCache
	global CL_ScaledMilliseconds
	global CL_ClearStaticDownload
	global CL_IsLocalClientActive
	global CL_ReferencedIWDList_f
	global CL_StopLogoOrCinematic
	global CL_WasMapAlreadyLoaded
	global CL_startSingleplayer_f
	global CL_ConnectionlessPacket
	global CL_RequestAuthorization
	global CL_SetupForNewServerMap
	global CL_DisconnectLocalClient
	global CL_InitOnceForAllClients
	global CL_RunOncePerClientFrame
	global CL_AnyLocalClientsRunning
	global CL_ForwardCommandToServer
	global CL_IsRenderingSplitScreen
	global CL_IsLastActiveLocalClient
	global CL_IsFirstActiveLocalClient
	global CL_GetFirstActiveLocalClient
	global CL_GetLocalClientActiveCount
	global CL_GetUsernameForLocalClient
	global CL_DrawTextPhysicalWithCursor
	global CL_IsWaitingOnServerToLoadMap
	global CL_AllLocalClientsDisconnected
	global CL_DrawTextPhysicalWithEffects
	global CL_SetWaitingOnServerToLoadMap
	global CL_ControllerIndexFromClientNum
	global CL_LocalActiveIndexFromClientNum
	global CL_Init
	global CL_Frame
	global clientUIActives
	global g_waitingForServer
	global clients
	global cls
	global cl_noprint
	global cl_waitingOnServerToLoadMap
	global clientConnections
	global nextdemo
	global cl_activeAction
	global cl_freezeDemo
	global cl_serverLoadingMap
	global cl_showServerCommands
	global cl_showTimeDelta
	global cl_freelook
	global cl_maxpackets
	global cl_mouseAccel
	global cl_nodelta
	global cl_packetdup
	global cl_sensitivity
	global cl_showMouseRate
	global cl_showSend
	global frame_msec
	global m_filter
	global m_forward
	global m_pitch
	global m_side
	global m_yaw
	global cl_allowDownload
	global cl_avidemo
	global cl_connectTimeout
	global cl_connectionAttempts
	global cl_forceavidemo
	global cl_hudDrawsBehindUI
	global cl_inGameVideo
	global cl_ingame
	global cl_maxppf
	global cl_motdString
	global cl_pinglist
	global cl_serverStatusResendTime
	global cl_shownet
	global cl_shownuments
	global cl_timeout
	global cl_voice
	global cl_voiceCommunication
	global cl_wwwDownload
	global customClassDvars
	global customclass
	global lastUpdateKeyAuthTime
	global motd
	global name
	global old_com_frameTime
	global onlinegame


SECTION .text


;CL_WriteDemoClientArchive(clientConnection_t const*, clientActive_t const*, int, int)
CL_WriteDemoClientArchive:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov esi, eax
	mov ebx, [ebp+0x8]
	lea ebx, [ebx+ebx*2]
	shl ebx, 0x4
	lea ebx, [ebx+edx+0x666c0]
	lea edi, [ebx+0xc]
	mov byte [ebp-0x19], 0x1
	mov eax, [eax+0x401a0]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1
	lea eax, [ebp-0x19]
	mov [esp], eax
	call FS_Write
	mov eax, [esi+0x401a0]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x4
	lea eax, [ebp+0x8]
	mov [esp], eax
	call FS_Write
	mov eax, [esi+0x401a0]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0xc
	lea eax, [ebx+0x10]
	mov [esp], eax
	call FS_Write
	mov eax, [esi+0x401a0]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0xc
	lea eax, [ebx+0x1c]
	mov [esp], eax
	call FS_Write
	mov eax, [esi+0x401a0]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x4
	lea eax, [ebx+0x2c]
	mov [esp], eax
	call FS_Write
	mov eax, [esi+0x401a0]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x4
	lea eax, [ebx+0x28]
	mov [esp], eax
	call FS_Write
	mov eax, [esi+0x401a0]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x4
	mov [esp], edi
	call FS_Write
	mov eax, [esi+0x401a0]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0xc
	add ebx, 0x30
	mov [esp], ebx
	call FS_Write
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;CL_BuildMd5StrFromCDKey(char*)
CL_BuildMd5StrFromCDKey:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x11c
	mov [ebp-0xcc], eax
	mov dword [esp+0x8], 0x40
	mov dword [esp+0x4], 0x0
	lea eax, [ebp-0x58]
	mov [esp], eax
	call memset
	mov eax, cl_cdkey
	mov [ebp-0xd0], eax
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, [ebp-0xd0]
	repne scasb
	not ecx
	sub ecx, 0x1
	cmp ecx, 0x20
	jle CL_BuildMd5StrFromCDKey_10
	mov ecx, 0x20
CL_BuildMd5StrFromCDKey_130:
	xor ebx, ebx
	xor esi, esi
	jmp CL_BuildMd5StrFromCDKey_20
CL_BuildMd5StrFromCDKey_40:
	mov [ebp+esi-0x58], dl
	add esi, 0x1
	add ebx, 0x1
	cmp ecx, ebx
	jz CL_BuildMd5StrFromCDKey_30
CL_BuildMd5StrFromCDKey_20:
	mov eax, [ebp-0xd0]
	movzx edx, byte [ebx+eax]
	lea eax, [edx-0x30]
	cmp al, 0x9
	jbe CL_BuildMd5StrFromCDKey_40
	lea eax, [edx-0x61]
	cmp al, 0x19
	jbe CL_BuildMd5StrFromCDKey_40
	lea eax, [edx-0x41]
	cmp al, 0x19
	jbe CL_BuildMd5StrFromCDKey_40
	add ebx, 0x1
	cmp ecx, ebx
	jnz CL_BuildMd5StrFromCDKey_20
CL_BuildMd5StrFromCDKey_30:
	mov byte [ebp+esi-0x58], 0x0
	lea esi, [ebp-0x58]
CL_BuildMd5StrFromCDKey_70:
	movzx eax, byte [esi]
	cmp al, 0x20
	jz CL_BuildMd5StrFromCDKey_50
	cmp al, 0x9
	jz CL_BuildMd5StrFromCDKey_50
	cmp al, 0xa
	jz CL_BuildMd5StrFromCDKey_50
	cmp al, 0xd
	jnz CL_BuildMd5StrFromCDKey_60
CL_BuildMd5StrFromCDKey_50:
	add esi, 0x1
	jmp CL_BuildMd5StrFromCDKey_70
CL_BuildMd5StrFromCDKey_60:
	test al, al
	jz CL_BuildMd5StrFromCDKey_80
	mov ecx, esi
	mov edx, esi
CL_BuildMd5StrFromCDKey_110:
	cmp al, 0xa
	jz CL_BuildMd5StrFromCDKey_90
	cmp al, 0xd
	jz CL_BuildMd5StrFromCDKey_90
	add edx, 0x1
	mov ecx, edx
	movzx eax, byte [edx]
	test al, al
	jz CL_BuildMd5StrFromCDKey_100
CL_BuildMd5StrFromCDKey_120:
	cmp al, 0x20
	jz CL_BuildMd5StrFromCDKey_90
	cmp al, 0x9
	jnz CL_BuildMd5StrFromCDKey_110
CL_BuildMd5StrFromCDKey_90:
	add edx, 0x1
	movzx eax, byte [edx]
	test al, al
	jnz CL_BuildMd5StrFromCDKey_120
CL_BuildMd5StrFromCDKey_100:
	mov byte [ecx], 0x0
	mov [esp], esi
	call Q_strlwr
	mov dword [esp+0x4], g_largeLocalBuf+0x74783
	lea ebx, [ebp-0xc0]
	mov [esp], ebx
	call MD5Init
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, esi
	repne scasb
	not ecx
	sub ecx, 0x1
	mov [esp+0x8], ecx
	mov [esp+0x4], esi
	mov [esp], ebx
	call MD5Update
	mov [esp], ebx
	call MD5Final
	movzx eax, byte [ebp-0x59]
	mov [esp+0x44], eax
	movzx eax, byte [ebp-0x5a]
	mov [esp+0x40], eax
	movzx eax, byte [ebp-0x5b]
	mov [esp+0x3c], eax
	movzx eax, byte [ebp-0x5c]
	mov [esp+0x38], eax
	movzx eax, byte [ebp-0x5d]
	mov [esp+0x34], eax
	movzx eax, byte [ebp-0x5e]
	mov [esp+0x30], eax
	movzx eax, byte [ebp-0x5f]
	mov [esp+0x2c], eax
	movzx eax, byte [ebp-0x60]
	mov [esp+0x28], eax
	movzx eax, byte [ebp-0x61]
	mov [esp+0x24], eax
	movzx eax, byte [ebp-0x62]
	mov [esp+0x20], eax
	movzx eax, byte [ebp-0x63]
	mov [esp+0x1c], eax
	movzx eax, byte [ebp-0x64]
	mov [esp+0x18], eax
	movzx eax, byte [ebp-0x65]
	mov [esp+0x14], eax
	movzx eax, byte [ebp-0x66]
	mov [esp+0x10], eax
	movzx eax, byte [ebp-0x67]
	mov [esp+0xc], eax
	movzx eax, byte [ebp-0x68]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_02x02x02x02x02x0
	mov eax, [ebp-0xcc]
	mov [esp], eax
	call sprintf
	add esp, 0x11c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CL_BuildMd5StrFromCDKey_80:
	mov ecx, esi
	jmp CL_BuildMd5StrFromCDKey_100
CL_BuildMd5StrFromCDKey_10:
	test ecx, ecx
	jg CL_BuildMd5StrFromCDKey_130
	xor esi, esi
	jmp CL_BuildMd5StrFromCDKey_30


;LoadMapLoadscreen(char const*)
LoadMapLoadscreen:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x64
	mov ebx, eax
	mov [esp], eax
	call DB_AddUserMapDir
	mov dword [esp], 0x0
	call DB_ResetZoneSize
	mov [esp+0xc], ebx
	mov dword [esp+0x8], _cstring_s_load
	mov dword [esp+0x4], 0x40
	lea ebx, [ebp-0x54]
	mov [esp], ebx
	call Com_sprintf
	mov [ebp-0x14], ebx
	mov dword [ebp-0x10], 0x20
	mov dword [ebp-0xc], 0x60
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x1
	lea eax, [ebp-0x14]
	mov [esp], eax
	call DB_LoadXAssets
	call DB_SyncXAssets
	call DB_UpdateDebugZone
	add esp, 0x64
	pop ebx
	pop ebp
	ret


;CL_ShutdownRenderer(int)
CL_ShutdownRenderer:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, eax
	mov dword [cls+0x108], 0x0
	call Com_ShutdownWorld
	mov eax, useFastFile
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz CL_ShutdownRenderer_10
	test ebx, ebx
	jnz CL_ShutdownRenderer_20
CL_ShutdownRenderer_10:
	mov [esp], ebx
	call R_Shutdown
	mov dword [cls+0x2dbff0], 0x0
	mov dword [cls+0x2dbff4], 0x0
	mov dword [cls+0x2dbff8], 0x0
	add esp, 0x14
	pop ebx
	pop ebp
	jmp Con_ShutdownClientAssets
CL_ShutdownRenderer_20:
	call CM_Shutdown
	jmp CL_ShutdownRenderer_10


;CL_Disconnect_f()
CL_Disconnect_f:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp], 0x0
	call CL_DisconnectLocalClient
	leave
	ret


;CL_PlayDemo_f()
CL_PlayDemo_f:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x14c
	mov ebx, cmd_args
	mov edx, [ebx]
	mov eax, [ebx+edx*4+0x44]
	cmp eax, 0x1
	jle CL_PlayDemo_f_10
	cmp eax, 0x3
	jle CL_PlayDemo_f_20
CL_PlayDemo_f_120:
	mov eax, [ebx+edx*4+0x64]
	mov eax, [eax]
CL_PlayDemo_f_130:
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_s_demoname_quit
	mov dword [esp], 0xe
	call Com_Printf
	add esp, 0x14c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CL_PlayDemo_f_20:
	mov eax, com_sv_running
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz CL_PlayDemo_f_30
	mov dword [esp], 0x0
	call CL_Disconnect
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x1
	jle CL_PlayDemo_f_40
	mov eax, [eax+edx*4+0x64]
	mov esi, [eax+0x4]
CL_PlayDemo_f_210:
	mov dword [esp+0xc], 0x1
	mov dword [esp+0x8], _cstring_dm_d
	mov dword [esp+0x4], 0x20
	lea eax, [ebp-0x38]
	mov [esp], eax
	call Com_sprintf
	lea ecx, [ebp-0x38]
	mov [esp+0x4], ecx
	xor eax, eax
	cld
	mov ecx, 0xffffffff
	mov edi, esi
	repne scasb
	mov edx, ecx
	not edx
	mov ecx, 0xffffffff
	lea edi, [ebp-0x38]
	repne scasb
	not ecx
	mov eax, esi
	sub eax, ecx
	add eax, edx
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jnz CL_PlayDemo_f_50
	mov [esp+0xc], esi
	mov dword [esp+0x8], _cstring_demoss
	mov dword [esp+0x4], 0x100
	lea ebx, [ebp-0x138]
	mov [esp], ebx
	call Com_sprintf
CL_PlayDemo_f_150:
	mov dword [esp+0x4], clientConnections+0x401a0
	mov [esp], ebx
	call FS_FOpenFileRead
	mov esi, [clientConnections+0x401a0]
	test esi, esi
	jz CL_PlayDemo_f_60
CL_PlayDemo_f_160:
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x1
	jle CL_PlayDemo_f_70
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x4]
CL_PlayDemo_f_200:
	mov dword [esp+0x8], 0x40
	mov [esp+0x4], eax
	mov dword [esp], clientConnections+0x40148
	call Q_strncpyz
	mov dword [esp], 0x0
	call Con_Close
	mov dword [clientUIActives+0xc], 0x5
	mov dword [clientConnections+0x4018c], 0x1
	mov eax, cmd_args
	mov edx, [eax]
	mov ecx, [eax+edx*4+0x44]
	test ecx, ecx
	jle CL_PlayDemo_f_80
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax]
CL_PlayDemo_f_190:
	mov dword [esp+0x4], _cstring_timedemo
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	setz al
	movzx eax, al
	mov [clientConnections+0x40190], eax
	mov dword [clientConnections+0x40144], 0x0
	mov ebx, cmd_args
	mov eax, [ebx]
	cmp dword [ebx+eax*4+0x44], 0x3
	jz CL_PlayDemo_f_90
CL_PlayDemo_f_170:
	xor eax, eax
CL_PlayDemo_f_180:
	mov [clientConnections+0x40194], eax
	mov eax, [ebx]
	cmp dword [ebx+eax*4+0x44], 0x1
	jle CL_PlayDemo_f_100
	mov eax, [ebx+eax*4+0x64]
	mov eax, [eax+0x4]
CL_PlayDemo_f_220:
	mov dword [esp+0x8], 0x100
	mov [esp+0x4], eax
	mov dword [esp], cls+0x8
	call Q_strncpyz
	mov eax, [clientUIActives+0xc]
	sub eax, 0x5
	cmp eax, 0x2
	jbe CL_PlayDemo_f_110
CL_PlayDemo_f_140:
	mov dword [clientConnections+0x4019c], 0x0
	add esp, 0x14c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CL_PlayDemo_f_10:
	jz CL_PlayDemo_f_120
	mov eax, _cstring_null
	jmp CL_PlayDemo_f_130
CL_PlayDemo_f_30:
	mov dword [esp+0x4], _cstring_listen_server_ca
	mov dword [esp], 0xe
	call Com_Printf
	add esp, 0x14c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CL_PlayDemo_f_110:
	mov dword [esp], 0x0
	call CL_ReadDemoMessage
	mov eax, [clientUIActives+0xc]
	sub eax, 0x5
	cmp eax, 0x2
	ja CL_PlayDemo_f_140
	mov dword [esp], 0x0
	call CL_ReadDemoMessage
	mov eax, [clientUIActives+0xc]
	sub eax, 0x5
	cmp eax, 0x2
	jbe CL_PlayDemo_f_110
	jmp CL_PlayDemo_f_140
CL_PlayDemo_f_50:
	mov dword [esp+0x10], 0x1
	mov [esp+0xc], esi
	mov dword [esp+0x8], _cstring_demossdm_d
	mov dword [esp+0x4], 0x100
	lea ebx, [ebp-0x138]
	mov [esp], ebx
	call Com_sprintf
	jmp CL_PlayDemo_f_150
CL_PlayDemo_f_60:
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_exe_err_not_foun
	call va
	mov [esp+0x4], eax
	mov dword [esp], 0x2
	call Com_Error
	jmp CL_PlayDemo_f_160
CL_PlayDemo_f_90:
	mov dword [esp+0x4], _cstring_quit
	mov eax, [ebx+eax*4+0x64]
	mov eax, [eax+0x8]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jnz CL_PlayDemo_f_170
	mov al, 0x1
	jmp CL_PlayDemo_f_180
CL_PlayDemo_f_80:
	mov eax, _cstring_null
	jmp CL_PlayDemo_f_190
CL_PlayDemo_f_70:
	mov eax, _cstring_null
	jmp CL_PlayDemo_f_200
CL_PlayDemo_f_40:
	mov esi, _cstring_null
	jmp CL_PlayDemo_f_210
CL_PlayDemo_f_100:
	mov eax, _cstring_null
	jmp CL_PlayDemo_f_220
	nop


;CL_DisconnectPacket(int, netadr_t, char const*)
CL_DisconnectPacket:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov [ebp-0x40], eax
	mov eax, [ebp+0x14]
	mov [ebp-0x44], eax
	movzx esi, word [ebp+0x10]
	movzx ecx, byte [ebp+0xf]
	movzx edx, byte [ebp+0xe]
	movzx edi, byte [ebp+0xd]
	movzx eax, byte [ebp+0xc]
	mov [ebp-0x39], al
	mov ebx, [ebp+0x8]
	cmp dword [clientUIActives+0xc], 0x2
	jg CL_DisconnectPacket_10
CL_DisconnectPacket_20:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CL_DisconnectPacket_10:
	mov eax, [clientConnections+0x401c8]
	mov [ebp-0x30], eax
	mov eax, [clientConnections+0x401cc]
	mov [ebp-0x2c], eax
	mov eax, [clientConnections+0x401d0]
	mov [ebp-0x28], eax
	mov [ebp-0x1c], si
	mov [ebp-0x1d], cl
	mov [ebp-0x1e], dl
	mov edx, edi
	mov [ebp-0x1f], dl
	movzx edx, byte [ebp-0x39]
	mov [ebp-0x20], dl
	mov [ebp-0x24], ebx
	mov edx, [clientConnections+0x401c8]
	mov [esp+0xc], edx
	mov edx, [clientConnections+0x401cc]
	mov [esp+0x10], edx
	mov [esp+0x14], eax
	mov [esp], ebx
	mov eax, [ebp-0x20]
	mov [esp+0x4], eax
	mov eax, [ebp-0x1c]
	mov [esp+0x8], eax
	call NET_CompareAdr
	test eax, eax
	jz CL_DisconnectPacket_20
	mov eax, [cls+0x118]
	sub eax, [clientConnections+0xc]
	cmp eax, 0xbb7
	jle CL_DisconnectPacket_20
	mov eax, [cls+0x2dc6b0]
	test eax, eax
	jnz CL_DisconnectPacket_30
	mov eax, [ebp-0x44]
	test eax, eax
	jz CL_DisconnectPacket_40
	mov eax, [ebp-0x44]
	mov [esp], eax
	call SEH_SafeTranslateString
	mov ebx, eax
	mov dword [esp], _cstring_exe_serverdiscon
	call SEH_SafeTranslateString
	mov [esp+0x4], ebx
	mov [esp], eax
	call UI_ReplaceConversionString
	mov [ebp+0xc], eax
	mov dword [ebp+0x8], 0x3
CL_DisconnectPacket_50:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp Com_Error
CL_DisconnectPacket_30:
	mov edx, [ebp-0x40]
	mov [ebp+0x8], edx
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp CL_Disconnect
CL_DisconnectPacket_40:
	mov dword [ebp+0xc], _cstring_exe_server_disco
	mov dword [ebp+0x8], 0x2
	jmp CL_DisconnectPacket_50
	nop


;CL_DispatchConnectionlessPacket(int, netadr_t, msg_t*, int)
CL_DispatchConnectionlessPacket:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x15c
	movzx eax, word [ebp+0x14]
	mov [ebp-0x12a], ax
	movzx edx, byte [ebp+0x13]
	mov [ebp-0x12b], dl
	movzx ebx, byte [ebp+0x12]
	mov [ebp-0x12c], bl
	movzx eax, byte [ebp+0x11]
	mov [ebp-0x12d], al
	movzx edx, byte [ebp+0x10]
	mov [ebp-0x12e], dl
	mov esi, [ebp+0xc]
	mov eax, cmd_args
	mov edx, [eax]
	mov ecx, [eax+edx*4+0x44]
	test ecx, ecx
	jle CL_DispatchConnectionlessPacket_10
	mov eax, [eax+edx*4+0x64]
	mov ebx, [eax]
CL_DispatchConnectionlessPacket_70:
	mov dword [esp+0x4], _cstring_v
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz CL_DispatchConnectionlessPacket_20
	mov ebx, [ebp+0x18]
	mov [esp+0x4], ebx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CL_VoicePacket
	mov eax, 0x1
CL_DispatchConnectionlessPacket_60:
	add esp, 0x15c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CL_DispatchConnectionlessPacket_20:
	mov dword [esp+0x4], _cstring_vt
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz CL_DispatchConnectionlessPacket_30
CL_DispatchConnectionlessPacket_320:
	mov eax, 0x1
	add esp, 0x15c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CL_DispatchConnectionlessPacket_30:
	mov edi, [clientUIActives+0xc]
	mov dword [esp+0x4], _cstring_challengerespons
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz CL_DispatchConnectionlessPacket_40
	cmp edi, 0x3
	jz CL_DispatchConnectionlessPacket_50
	mov dword [esp+0x4], _cstring_unwanted_challen
	mov dword [esp], 0xe
	call Com_Printf
	xor eax, eax
	jmp CL_DispatchConnectionlessPacket_60
CL_DispatchConnectionlessPacket_10:
	mov ebx, _cstring_null
	jmp CL_DispatchConnectionlessPacket_70
CL_DispatchConnectionlessPacket_40:
	mov dword [esp+0x4], _cstring_connectresponse
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz CL_DispatchConnectionlessPacket_80
	cmp edi, 0x4
	jg CL_DispatchConnectionlessPacket_90
	jz CL_DispatchConnectionlessPacket_100
	mov dword [esp+0x4], _cstring_connectresponse_
	mov dword [esp], 0xe
	call Com_Printf
	xor eax, eax
	jmp CL_DispatchConnectionlessPacket_60
CL_DispatchConnectionlessPacket_50:
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x1
	jle CL_DispatchConnectionlessPacket_110
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x4]
CL_DispatchConnectionlessPacket_150:
	mov [esp], eax
	call atoi
	mov [clientConnections+0x124], eax
	shl dword [ebp+0x8], 0x4
	mov edx, [ebp+0x8]
	mov dword [edx+clientUIActives+0xc], 0x4
	mov dword [clientConnections+0x20], 0x0
	mov dword [clientConnections+0x1c], 0xfffe7961
	movzx ebx, word [ebp-0x12a]
	mov [clientConnections+0x18], bx
	movzx edx, byte [ebp-0x12b]
	mov [clientConnections+0x17], dl
	movzx ebx, byte [ebp-0x12c]
	mov [clientConnections+0x16], bl
	movzx edx, byte [ebp-0x12d]
	mov [clientConnections+0x15], dl
	movzx ebx, byte [ebp-0x12e]
	mov [clientConnections+0x14], bl
	mov [clientConnections+0x10], esi
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_challenge_d
	mov dword [esp], 0xe
	call Com_DPrintf
	mov eax, 0x1
	jmp CL_DispatchConnectionlessPacket_60
CL_DispatchConnectionlessPacket_80:
	mov dword [esp+0x4], _cstring_statresponse
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz CL_DispatchConnectionlessPacket_120
	cmp edi, 0x6
	jg CL_DispatchConnectionlessPacket_130
	jz CL_DispatchConnectionlessPacket_140
	mov dword [esp+0x4], _cstring_statresponse_pac
	mov dword [esp], 0xe
	call Com_Printf
	xor eax, eax
	jmp CL_DispatchConnectionlessPacket_60
CL_DispatchConnectionlessPacket_110:
	mov eax, _cstring_null
	jmp CL_DispatchConnectionlessPacket_150
CL_DispatchConnectionlessPacket_90:
	mov dword [esp+0x4], _cstring_dup_connect_rece
	mov dword [esp], 0xe
	call Com_Printf
	xor eax, eax
	jmp CL_DispatchConnectionlessPacket_60
CL_DispatchConnectionlessPacket_100:
	mov ecx, [clientConnections+0x10]
	mov [ebp-0xe4], ecx
	mov edx, [clientConnections+0x14]
	mov [ebp-0xe0], edx
	mov eax, [clientConnections+0x18]
	mov [ebp-0xdc], eax
	movzx ebx, word [ebp-0x12a]
	mov [ebp-0xd0], bx
	movzx ebx, byte [ebp-0x12b]
	mov [ebp-0xd1], bl
	movzx ebx, byte [ebp-0x12c]
	mov [ebp-0xd2], bl
	movzx ebx, byte [ebp-0x12d]
	mov [ebp-0xd3], bl
	movzx ebx, byte [ebp-0x12e]
	mov [ebp-0xd4], bl
	mov [ebp-0xd8], esi
	mov [esp+0xc], ecx
	mov [esp+0x10], edx
	mov [esp+0x14], eax
	mov [esp], esi
	mov eax, [ebp-0xd4]
	mov [esp+0x4], eax
	mov eax, [ebp-0xd0]
	mov [esp+0x8], eax
	call NET_CompareBaseAdr
	test eax, eax
	jnz CL_DispatchConnectionlessPacket_160
	mov dword [esp+0x4], _cstring_connectresponse_1
	mov dword [esp], 0xe
	call Com_Printf
	mov ecx, [clientConnections+0x10]
	mov [ebp-0xcc], ecx
	mov edx, [clientConnections+0x14]
	mov [ebp-0xc8], edx
	mov eax, [clientConnections+0x18]
	mov [ebp-0xc4], eax
	mov [esp], ecx
	mov [esp+0x4], edx
	mov [esp+0x8], eax
	call NET_AdrToString
	mov ebx, eax
	movzx eax, word [ebp-0x12a]
	mov [ebp-0xb8], ax
	movzx edx, byte [ebp-0x12b]
	mov [ebp-0xb9], dl
	movzx eax, byte [ebp-0x12c]
	mov [ebp-0xba], al
	movzx edx, byte [ebp-0x12d]
	mov [ebp-0xbb], dl
	movzx eax, byte [ebp-0x12e]
	mov [ebp-0xbc], al
	mov [ebp-0xc0], esi
	mov [esp], esi
	mov eax, [ebp-0xbc]
	mov [esp+0x4], eax
	mov eax, [ebp-0xb8]
	mov [esp+0x8], eax
	call NET_AdrToString
	mov [esp+0xc], ebx
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_s_should_have_be
	mov dword [esp], 0xe
	call Com_Printf
	xor eax, eax
	jmp CL_DispatchConnectionlessPacket_60
CL_DispatchConnectionlessPacket_120:
	mov dword [esp+0x4], _cstring_inforesponse
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz CL_DispatchConnectionlessPacket_170
	movzx ebx, word [ebp-0x12a]
	mov [ebp-0xa0], bx
	movzx eax, byte [ebp-0x12b]
	mov [ebp-0xa1], al
	movzx edx, byte [ebp-0x12c]
	mov [ebp-0xa2], dl
	movzx ebx, byte [ebp-0x12d]
	mov [ebp-0xa3], bl
	movzx eax, byte [ebp-0x12e]
	mov [ebp-0xa4], al
	mov [ebp-0xa8], esi
	mov edx, [ebp+0x1c]
	mov [esp+0x10], edx
	mov ebx, [ebp+0x18]
	mov [esp+0xc], ebx
	mov [esp], esi
	mov eax, [ebp-0xa4]
	mov [esp+0x4], eax
	mov eax, [ebp-0xa0]
	mov [esp+0x8], eax
	call CL_ServerInfoPacket
	mov eax, 0x1
	jmp CL_DispatchConnectionlessPacket_60
CL_DispatchConnectionlessPacket_140:
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x1
	jle CL_DispatchConnectionlessPacket_180
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x4]
CL_DispatchConnectionlessPacket_270:
	mov [esp], eax
	call atoi
	test eax, eax
	jnz CL_DispatchConnectionlessPacket_190
	shl dword [ebp+0x8], 0x4
	mov edx, [ebp+0x8]
	mov dword [edx+clientUIActives+0xc], 0x5
	mov byte [clientConnections+0x615bc], 0x0
CL_DispatchConnectionlessPacket_230:
	mov eax, [cls+0x118]
	mov [clientConnections+0xc], eax
	mov dword [clientConnections+0x8], 0xffffd8f1
	mov eax, 0x1
	jmp CL_DispatchConnectionlessPacket_60
CL_DispatchConnectionlessPacket_160:
	mov eax, g_qport
	mov eax, [eax]
	add eax, [ebp+0x8]
	movzx edx, word [ebp-0x12a]
	mov [ebp-0xac], dx
	movzx ebx, byte [ebp-0x12b]
	mov [ebp-0xad], bl
	movzx edx, byte [ebp-0x12c]
	mov [ebp-0xae], dl
	movzx ebx, byte [ebp-0x12d]
	mov [ebp-0xaf], bl
	movzx edx, byte [ebp-0x12e]
	mov [ebp-0xb0], dl
	mov [ebp-0xb4], esi
	mov dword [esp+0x24], 0x20000
	mov dword [esp+0x20], clientConnections+0x40fdc
	mov dword [esp+0x1c], 0x800
	mov dword [esp+0x18], clientConnections+0x407dc
	mov [esp+0x14], eax
	mov [esp+0x8], esi
	mov eax, [ebp-0xb0]
	mov [esp+0xc], eax
	mov eax, [ebp-0xac]
	mov [esp+0x10], eax
	mov dword [esp+0x4], clientConnections+0x401b8
	mov ebx, [ebp+0x8]
	mov [esp], ebx
	call Netchan_Setup
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x1
	jle CL_DispatchConnectionlessPacket_200
	mov eax, [eax+edx*4+0x64]
	mov ebx, [eax+0x4]
CL_DispatchConnectionlessPacket_280:
	mov eax, fs_gameDirVar
	mov eax, [eax]
	mov eax, [eax+0xc]
	mov [esp+0x4], eax
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz CL_DispatchConnectionlessPacket_210
CL_DispatchConnectionlessPacket_260:
	shl dword [ebp+0x8], 0x4
	mov eax, [ebp+0x8]
	mov dword [eax+clientUIActives+0xc], 0x6
	mov edi, clientConnections+0x615c0
	cld
	mov ecx, 0x7
	xor eax, eax
	rep stosd
	mov byte [clientConnections+0x615bc], 0x7f
	mov eax, [cls+0x118]
	mov [clientConnections+0xc], eax
	mov dword [clientConnections+0x8], 0xffffd8f1
	mov eax, 0x1
	jmp CL_DispatchConnectionlessPacket_60
CL_DispatchConnectionlessPacket_130:
	mov dword [esp+0x4], _cstring_dup_statresponse
	mov dword [esp], 0xe
	call Com_Printf
	xor eax, eax
	jmp CL_DispatchConnectionlessPacket_60
CL_DispatchConnectionlessPacket_170:
	mov dword [esp+0x4], _cstring_statusresponse
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz CL_DispatchConnectionlessPacket_220
	movzx eax, word [ebp-0x12a]
	mov [ebp-0x94], ax
	movzx edx, byte [ebp-0x12b]
	mov [ebp-0x95], dl
	movzx ebx, byte [ebp-0x12c]
	mov [ebp-0x96], bl
	movzx eax, byte [ebp-0x12d]
	mov [ebp-0x97], al
	movzx edx, byte [ebp-0x12e]
	mov [ebp-0x98], dl
	mov [ebp-0x9c], esi
	mov ebx, [ebp+0x18]
	mov [esp+0xc], ebx
	mov [esp], esi
	mov eax, [ebp-0x98]
	mov [esp+0x4], eax
	mov eax, [ebp-0x94]
	mov [esp+0x8], eax
	call CL_ServerStatusResponse
	mov eax, 0x1
	jmp CL_DispatchConnectionlessPacket_60
CL_DispatchConnectionlessPacket_190:
	and al, 0x7f
	mov [clientConnections+0x615bc], al
	jmp CL_DispatchConnectionlessPacket_230
CL_DispatchConnectionlessPacket_220:
	mov dword [esp+0x4], _cstring_disconnect
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz CL_DispatchConnectionlessPacket_240
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x1
	jle CL_DispatchConnectionlessPacket_250
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x4]
	movzx edx, word [ebp-0x12a]
	mov [ebp-0x88], dx
	movzx ebx, byte [ebp-0x12b]
	mov [ebp-0x89], bl
	movzx edx, byte [ebp-0x12c]
	mov [ebp-0x8a], dl
	movzx ebx, byte [ebp-0x12d]
	mov [ebp-0x8b], bl
	movzx edx, byte [ebp-0x12e]
	mov [ebp-0x8c], dl
	mov [ebp-0x90], esi
	mov [esp+0xc], eax
	mov [esp], esi
	mov eax, [ebp-0x8c]
	mov [esp+0x4], eax
	mov eax, [ebp-0x88]
	mov [esp+0x8], eax
	mov eax, [ebp+0x8]
	call CL_DisconnectPacket
	mov eax, 0x1
	jmp CL_DispatchConnectionlessPacket_60
CL_DispatchConnectionlessPacket_210:
	mov [esp], ebx
	call LiveStorage_ReadStatsFromDir
	jmp CL_DispatchConnectionlessPacket_260
CL_DispatchConnectionlessPacket_180:
	mov eax, _cstring_null
	jmp CL_DispatchConnectionlessPacket_270
CL_DispatchConnectionlessPacket_200:
	mov ebx, _cstring_null
	jmp CL_DispatchConnectionlessPacket_280
CL_DispatchConnectionlessPacket_240:
	mov dword [esp+0x4], _cstring_echo
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz CL_DispatchConnectionlessPacket_290
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x1
	jle CL_DispatchConnectionlessPacket_300
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x4]
CL_DispatchConnectionlessPacket_310:
	mov [esp+0x4], eax
	mov dword [esp], _cstring_s
	call va
	movzx edx, word [ebp-0x12a]
	mov [ebp-0x70], dx
	movzx ebx, byte [ebp-0x12b]
	mov [ebp-0x71], bl
	movzx edx, byte [ebp-0x12c]
	mov [ebp-0x72], dl
	movzx ebx, byte [ebp-0x12d]
	mov [ebp-0x73], bl
	movzx edx, byte [ebp-0x12e]
	mov [ebp-0x74], dl
	mov [ebp-0x78], esi
	mov [esp+0x10], eax
	mov [esp+0x4], esi
	mov eax, [ebp-0x74]
	mov [esp+0x8], eax
	mov eax, [ebp-0x70]
	mov [esp+0xc], eax
	mov ebx, [ebp+0x8]
	mov [esp], ebx
	call NET_OutOfBandPrint
	mov eax, 0x1
	jmp CL_DispatchConnectionlessPacket_60
CL_DispatchConnectionlessPacket_250:
	movzx ebx, word [ebp-0x12a]
	mov [ebp-0x7c], bx
	movzx eax, byte [ebp-0x12b]
	mov [ebp-0x7d], al
	movzx edx, byte [ebp-0x12c]
	mov [ebp-0x7e], dl
	movzx ebx, byte [ebp-0x12d]
	mov [ebp-0x7f], bl
	movzx eax, byte [ebp-0x12e]
	mov [ebp-0x80], al
	mov [ebp-0x84], esi
	mov dword [esp+0xc], 0x0
	mov [esp], esi
	mov eax, [ebp-0x80]
	mov [esp+0x4], eax
	mov eax, [ebp-0x7c]
	mov [esp+0x8], eax
	mov eax, [ebp+0x8]
	call CL_DisconnectPacket
	mov eax, 0x1
	jmp CL_DispatchConnectionlessPacket_60
CL_DispatchConnectionlessPacket_300:
	mov eax, _cstring_null
	jmp CL_DispatchConnectionlessPacket_310
CL_DispatchConnectionlessPacket_290:
	mov dword [esp+0x4], _cstring_keyauthorize
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jz CL_DispatchConnectionlessPacket_320
	mov dword [esp+0x4], _cstring_print
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz CL_DispatchConnectionlessPacket_330
	mov eax, [ebp+0x18]
	mov [esp], eax
	call MSG_ReadBigString
	mov ebx, eax
	mov dword [esp+0x8], 0x100
	mov [esp+0x4], eax
	mov dword [esp], clientConnections+0x24
	call Q_strncpyz
	mov [esp+0xc], ebx
	mov dword [esp+0x8], _cstring_s
	mov dword [esp+0x4], 0x800
	mov dword [esp], _ZZ31CL_DispatchConnectionlessPacketi8netadr_tP5msg_tiE8printBuf
	call Com_sprintf
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _ZZ31CL_DispatchConnectionlessPacketi8netadr_tP5msg_tiE8printBuf
	mov dword [esp], 0xe
	call Com_PrintMessage
	mov eax, 0x1
	jmp CL_DispatchConnectionlessPacket_60
CL_DispatchConnectionlessPacket_330:
	mov dword [esp+0x4], _cstring_error
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz CL_DispatchConnectionlessPacket_340
	test edi, edi
	jnz CL_DispatchConnectionlessPacket_350
CL_DispatchConnectionlessPacket_370:
	xor eax, eax
	jmp CL_DispatchConnectionlessPacket_60
CL_DispatchConnectionlessPacket_340:
	mov dword [esp+0x8], 0x12
	mov dword [esp+0x4], _cstring_getserversrespon
	mov [esp], ebx
	call Q_strncmp
	test eax, eax
	jnz CL_DispatchConnectionlessPacket_360
	movzx edx, word [ebp-0x12a]
	mov [ebp-0x4c], dx
	movzx ebx, byte [ebp-0x12b]
	mov [ebp-0x4d], bl
	movzx eax, byte [ebp-0x12c]
	mov [ebp-0x4e], al
	movzx edx, byte [ebp-0x12d]
	mov [ebp-0x4f], dl
	movzx ebx, byte [ebp-0x12e]
	mov [ebp-0x50], bl
	mov [ebp-0x54], esi
	mov eax, [ebp+0x18]
	mov [esp+0xc], eax
	mov [esp], esi
	mov eax, [ebp-0x50]
	mov [esp+0x4], eax
	mov eax, [ebp-0x4c]
	mov [esp+0x8], eax
	call CL_ServersResponsePacket
	mov eax, 0x1
	jmp CL_DispatchConnectionlessPacket_60
CL_DispatchConnectionlessPacket_350:
	mov eax, [clientConnections+0x10]
	mov [ebp-0x6c], eax
	mov edx, [clientConnections+0x14]
	mov [ebp-0x68], edx
	mov ecx, [clientConnections+0x18]
	mov [ebp-0x64], ecx
	movzx ebx, word [ebp-0x12a]
	mov [ebp-0x58], bx
	movzx ebx, byte [ebp-0x12b]
	mov [ebp-0x59], bl
	movzx ebx, byte [ebp-0x12c]
	mov [ebp-0x5a], bl
	movzx ebx, byte [ebp-0x12d]
	mov [ebp-0x5b], bl
	movzx ebx, byte [ebp-0x12e]
	mov [ebp-0x5c], bl
	mov [ebp-0x60], esi
	mov [esp+0xc], eax
	mov [esp+0x10], edx
	mov [esp+0x14], ecx
	mov [esp], esi
	mov eax, [ebp-0x5c]
	mov [esp+0x4], eax
	mov eax, [ebp-0x58]
	mov [esp+0x8], eax
	call NET_CompareBaseAdr
	test eax, eax
	jz CL_DispatchConnectionlessPacket_370
	mov eax, [ebp+0x18]
	mov [esp], eax
	call MSG_ReadBigString
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_s
	mov dword [esp], 0x2
	call Com_Error
	mov eax, 0x1
	jmp CL_DispatchConnectionlessPacket_60
CL_DispatchConnectionlessPacket_360:
	mov dword [esp+0x8], 0x9
	mov dword [esp+0x4], _cstring_needcdkey
	mov [esp], ebx
	call Q_strncmp
	test eax, eax
	jnz CL_DispatchConnectionlessPacket_380
	mov dword [esp+0x8], 0x100
	mov dword [esp+0x4], _cstring_exe_awaitingcdke
	mov dword [esp], clientConnections+0x24
	call Q_strncpyz
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _cstring_need_cd_key_mess
	mov dword [esp], _cstring_exe_awaitingcdke
	call SEH_LocalizeTextMessage
	mov dword [esp+0x8], clientConnections+0x24
	mov dword [esp+0x4], _cstring_s1
	mov dword [esp], 0xe
	call Com_Printf
	mov edx, [ebp+0x8]
	mov [esp], edx
	call CL_RequestAuthorization
	mov eax, 0x1
	jmp CL_DispatchConnectionlessPacket_60
CL_DispatchConnectionlessPacket_380:
	mov dword [esp+0x4], _cstring_loadingnewmap
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz CL_DispatchConnectionlessPacket_390
	mov eax, [clientConnections+0x10]
	mov [ebp-0x48], eax
	mov edx, [clientConnections+0x14]
	mov [ebp-0x44], edx
	mov ecx, [clientConnections+0x18]
	mov [ebp-0x40], ecx
	movzx ebx, word [ebp-0x12a]
	mov [ebp-0x34], bx
	movzx ebx, byte [ebp-0x12b]
	mov [ebp-0x35], bl
	movzx ebx, byte [ebp-0x12c]
	mov [ebp-0x36], bl
	movzx ebx, byte [ebp-0x12d]
	mov [ebp-0x37], bl
	movzx ebx, byte [ebp-0x12e]
	mov [ebp-0x38], bl
	mov [ebp-0x3c], esi
	mov [esp+0xc], eax
	mov [esp+0x10], edx
	mov [esp+0x14], ecx
	mov [esp], esi
	mov eax, [ebp-0x38]
	mov [esp+0x4], eax
	mov eax, [ebp-0x34]
	mov [esp+0x8], eax
	call NET_CompareBaseAdr
	test eax, eax
	jz CL_DispatchConnectionlessPacket_320
	cmp byte [cls+0x2dc198], 0x0
	jnz CL_DispatchConnectionlessPacket_320
	mov eax, [ebp+0x8]
	mov [esp], eax
	call UI_CloseAllMenus
	mov dword [esp+0x4], _cstring_uploadstats
	mov edx, [ebp+0x8]
	mov [esp], edx
	call Cbuf_AddText
	mov ebx, [ebp+0x18]
	mov [esp], ebx
	call MSG_ReadStringLine
	mov dword [esp+0x8], 0x40
	mov [esp+0x4], eax
	lea ebx, [ebp-0x124]
	mov [esp], ebx
	call Q_strncpyz
	shl dword [ebp+0x8], 0x4
	mov eax, [ebp+0x8]
	mov dword [eax+clientUIActives+0xc], 0x5
	mov edx, [ebp+0x18]
	mov [esp], edx
	call MSG_ReadStringLine
	mov [esp+0x4], eax
	mov [esp], ebx
	call CL_SetupForNewServerMap
	mov eax, 0x1
	jmp CL_DispatchConnectionlessPacket_60
CL_DispatchConnectionlessPacket_390:
	mov dword [esp+0x4], _cstring_requeststats
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz CL_DispatchConnectionlessPacket_400
	cmp byte [cls+0x2dc198], 0x0
	jnz CL_DispatchConnectionlessPacket_320
	cmp dword [clientUIActives+0xc], 0x6
	jz CL_DispatchConnectionlessPacket_400
	shl dword [ebp+0x8], 0x4
	mov edx, [ebp+0x8]
	mov dword [edx+clientUIActives+0xc], 0x6
	mov edi, clientConnections+0x615c0
	cld
	mov ecx, 0x7
	rep stosd
	mov byte [clientConnections+0x615bc], 0x7f
	mov eax, [cls+0x118]
	mov [clientConnections+0xc], eax
	mov dword [clientConnections+0x8], 0xffffd8f1
CL_DispatchConnectionlessPacket_400:
	mov dword [esp+0x4], _cstring_fastrestart
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz CL_DispatchConnectionlessPacket_370
	cmp dword [clientUIActives+0xc], 0x9
	jz CL_DispatchConnectionlessPacket_410
CL_DispatchConnectionlessPacket_420:
	xor eax, eax
CL_DispatchConnectionlessPacket_430:
	mov [clientConnections+0x40140], al
	mov eax, 0x1
	jmp CL_DispatchConnectionlessPacket_60
CL_DispatchConnectionlessPacket_410:
	mov eax, [clientConnections+0x10]
	mov [ebp-0x30], eax
	mov edx, [clientConnections+0x14]
	mov [ebp-0x2c], edx
	mov ecx, [clientConnections+0x18]
	mov [ebp-0x28], ecx
	movzx ebx, word [ebp-0x12a]
	mov [ebp-0x1c], bx
	movzx ebx, byte [ebp-0x12b]
	mov [ebp-0x1d], bl
	movzx ebx, byte [ebp-0x12c]
	mov [ebp-0x1e], bl
	movzx ebx, byte [ebp-0x12d]
	mov [ebp-0x1f], bl
	movzx ebx, byte [ebp-0x12e]
	mov [ebp-0x20], bl
	mov [ebp-0x24], esi
	mov [esp+0xc], eax
	mov [esp+0x10], edx
	mov [esp+0x14], ecx
	mov [esp], esi
	mov eax, [ebp-0x20]
	mov [esp+0x4], eax
	mov eax, [ebp-0x1c]
	mov [esp+0x8], eax
	call NET_CompareBaseAdr
	test eax, eax
	jz CL_DispatchConnectionlessPacket_420
	mov eax, 0x1
	jmp CL_DispatchConnectionlessPacket_430


;CL_DemoCompleted(int)
CL_DemoCompleted:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x434
	mov eax, [clientConnections+0x40190]
	test eax, eax
	jnz CL_DemoCompleted_10
CL_DemoCompleted_50:
	mov eax, [clientConnections+0x401a4]
	test eax, eax
	jnz CL_DemoCompleted_20
CL_DemoCompleted_60:
	mov eax, [clientConnections+0x40194]
	test eax, eax
	jnz CL_DemoCompleted_30
CL_DemoCompleted_70:
	mov dword [esp], 0x0
	call CL_Disconnect
	mov dword [esp+0x8], 0x400
	mov eax, [nextdemo]
	mov eax, [eax+0xc]
	mov [esp+0x4], eax
	lea ebx, [ebp-0x408]
	mov [esp], ebx
	call Q_strncpyz
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_cl_nextdemo_s
	mov dword [esp], 0xe
	call Com_DPrintf
	cmp byte [ebp-0x408], 0x0
	jnz CL_DemoCompleted_40
	mov dword [esp+0x4], _cstring_demo_is_over
	mov dword [esp], 0x4
	call Com_Error
	add esp, 0x434
	pop ebx
	pop ebp
	ret
CL_DemoCompleted_40:
	mov dword [esp+0x4], _cstring_null
	mov eax, [nextdemo]
	mov [esp], eax
	call Cvar_SetString
	mov [esp+0x4], ebx
	mov dword [esp], 0x0
	call Cbuf_AddText
	mov dword [esp+0x4], _cstring_
	mov dword [esp], 0x0
	call Cbuf_AddText
	mov dword [esp+0x4], 0x0
	mov dword [esp], 0x0
	call Cbuf_Execute
	add esp, 0x434
	pop ebx
	pop ebp
	ret
CL_DemoCompleted_10:
	call Sys_Milliseconds
	mov edx, eax
	sub edx, [clientConnections+0x401ac]
	test edx, edx
	jle CL_DemoCompleted_50
	mov eax, [clientConnections+0x401a8]
	cvtsi2sd xmm0, edx
	movsd [ebp-0x418], xmm0
	divsd xmm0, qword [_double_1000_00000000]
	movsd [ebp-0x410], xmm0
	cvtsi2sd xmm0, eax
	mulsd xmm0, [_double_1000_00000000]
	divsd xmm0, qword [ebp-0x418]
	movsd [esp+0x14], xmm0
	movsd xmm0, qword [ebp-0x410]
	movsd [esp+0xc], xmm0
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_i_frames_31f_sec
	mov dword [esp], 0xe
	call Com_Printf
	mov eax, [clientConnections+0x401a8]
	cvtsi2sd xmm0, eax
	mulsd xmm0, [_double_1000_00000000]
	divsd xmm0, qword [ebp-0x418]
	movsd [esp+0x10], xmm0
	movsd xmm0, qword [ebp-0x410]
	movsd [esp+0x8], xmm0
	mov [esp+0x4], eax
	mov dword [esp], _cstring_i_frames_31f_sec
	call printf
	mov eax, [clientConnections+0x401a4]
	test eax, eax
	jz CL_DemoCompleted_60
CL_DemoCompleted_20:
	mov [esp], eax
	call FS_FCloseFile
	mov dword [clientConnections+0x401a4], 0x0
	mov eax, [clientConnections+0x40194]
	test eax, eax
	jz CL_DemoCompleted_70
CL_DemoCompleted_30:
	call Com_Quit_f
	jmp CL_DemoCompleted_70


;CL_SyncGpu(int (*)(unsigned long long))
CL_SyncGpu:
	push ebp
	mov ebp, esp
	pop ebp
	jmp R_SyncGpu
	nop


;CL_DrawLogo(int)
CL_DrawLogo:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x7c
	mov edi, [ebp+0x8]
	mov esi, [cls+0x118]
	sub esi, [cls+0x120]
	mov eax, [cls+0x128]
	cmp esi, eax
	jge CL_DrawLogo_10
	cvtsi2ss xmm1, esi
	cvtsi2ss xmm0, eax
	divss xmm1, xmm0
	ucomiss xmm1, [_float_0_00000000]
	jb CL_DrawLogo_20
CL_DrawLogo_70:
	movss xmm0, dword [_float_1_00000000]
	minss xmm0, xmm1
	movaps xmm1, xmm0
CL_DrawLogo_110:
	movss [ebp-0x28], xmm1
	movss [ebp-0x24], xmm1
	movss [ebp-0x20], xmm1
	mov dword [ebp-0x1c], 0x3f800000
	mov edx, [cls+0x2dc004]
	test edx, edx
	js CL_DrawLogo_30
CL_DrawLogo_80:
	cvtsi2ss xmm2, edx
	mov edx, [cls+0x2dc008]
	test edx, edx
	js CL_DrawLogo_40
CL_DrawLogo_90:
	cvtsi2ss xmm1, edx
CL_DrawLogo_100:
	movaps xmm0, xmm1
	addss xmm0, xmm1
	divss xmm0, dword [_float_3_00000000]
	mov eax, [cls+0x130]
	mov [esp+0x24], eax
	lea ebx, [ebp-0x28]
	mov [esp+0x20], ebx
	mov dword [esp+0x1c], 0x3f800000
	mov dword [esp+0x18], 0x3f800000
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x0
	movss [esp+0xc], xmm0
	movss [esp+0x8], xmm2
	mov dword [esp+0x4], 0x0
	mov dword [esp], 0x0
	movss [ebp-0x38], xmm0
	movss [ebp-0x48], xmm1
	movss [ebp-0x58], xmm2
	call R_AddCmdDrawStretchPic
	mov eax, [cls+0x134]
	mov [esp+0x24], eax
	mov [esp+0x20], ebx
	mov dword [esp+0x1c], 0x3f800000
	mov dword [esp+0x18], 0x3f800000
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x0
	movss xmm0, dword [ebp-0x38]
	movss xmm1, dword [ebp-0x48]
	subss xmm1, xmm0
	movss [esp+0xc], xmm1
	movss xmm2, dword [ebp-0x58]
	movss [esp+0x8], xmm2
	movss [esp+0x4], xmm0
	mov dword [esp], 0x0
	call R_AddCmdDrawStretchPic
	cmp esi, [cls+0x124]
	jle CL_DrawLogo_50
	shl edi, 0x4
	mov dword [edi+clientUIActives+0xc], 0x0
CL_DrawLogo_50:
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CL_DrawLogo_10:
	mov edx, [cls+0x124]
	mov ecx, [cls+0x12c]
	mov eax, edx
	sub eax, ecx
	cmp esi, eax
	jle CL_DrawLogo_60
	sub edx, esi
	cvtsi2ss xmm1, edx
	cvtsi2ss xmm0, ecx
	divss xmm1, xmm0
	ucomiss xmm1, [_float_0_00000000]
	jae CL_DrawLogo_70
CL_DrawLogo_20:
	jp CL_DrawLogo_70
	pxor xmm1, xmm1
	movss [ebp-0x28], xmm1
	movss [ebp-0x24], xmm1
	movss [ebp-0x20], xmm1
	mov dword [ebp-0x1c], 0x3f800000
	mov edx, [cls+0x2dc004]
	test edx, edx
	jns CL_DrawLogo_80
CL_DrawLogo_30:
	mov eax, edx
	shr eax, 1
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm2, eax
	addss xmm2, xmm2
	mov edx, [cls+0x2dc008]
	test edx, edx
	jns CL_DrawLogo_90
CL_DrawLogo_40:
	mov eax, edx
	shr eax, 1
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm1, eax
	addss xmm1, xmm1
	jmp CL_DrawLogo_100
CL_DrawLogo_60:
	movss xmm1, dword [_float_1_00000000]
	jmp CL_DrawLogo_110
	nop


;CL_DrawText(ScreenPlacement const*, char const*, int, Font_s*, float, float, int, int, float, float, float const*, int)
CL_DrawText:
	push ebp
	mov ebp, esp
	sub esp, 0x38
	mov eax, [ebp+0x24]
	mov [esp+0x18], eax
	mov eax, [ebp+0x20]
	mov [esp+0x14], eax
	lea eax, [ebp+0x2c]
	mov [esp+0x10], eax
	lea eax, [ebp+0x28]
	mov [esp+0xc], eax
	lea eax, [ebp+0x1c]
	mov [esp+0x8], eax
	lea eax, [ebp+0x18]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call ScrPlace_ApplyRect
	mov eax, [ebp+0x34]
	mov [esp+0x24], eax
	mov eax, [ebp+0x30]
	mov [esp+0x20], eax
	mov dword [esp+0x1c], 0x0
	mov eax, [ebp+0x2c]
	mov [esp+0x18], eax
	mov eax, [ebp+0x28]
	mov [esp+0x14], eax
	mov eax, [ebp+0x1c]
	mov [esp+0x10], eax
	mov eax, [ebp+0x18]
	mov [esp+0xc], eax
	mov eax, [ebp+0x14]
	mov [esp+0x8], eax
	mov eax, [ebp+0x10]
	mov [esp+0x4], eax
	mov eax, [ebp+0xc]
	mov [esp], eax
	call R_AddCmdDrawText
	leave
	ret


;CL_InitLoad(char const*, char const*)
CL_InitLoad:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov ecx, [ebp+0x8]
	mov edx, [ebp+0xc]
	cmp byte [clientUIActives+0x1], 0x0
	jnz CL_InitLoad_10
	leave
	ret
CL_InitLoad_10:
	mov eax, com_expectedHunkUsage
	mov dword [eax], 0x0
	mov [esp+0x4], edx
	mov [esp], ecx
	call UI_SetMap
	xor eax, eax
	cmp dword [clientUIActives+0xc], 0x5
	setge al
	lea eax, [eax+eax*4]
	mov [clientUIActives+0xc], eax
	leave
	jmp SCR_UpdateScreen


;CL_Record_f()
CL_Record_f:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2cc
	mov dword [esp+0x4], 0x20000
	lea eax, [ebp-0x30]
	mov [esp], eax
	call _ZN10LargeLocalC1Ei
	lea edx, [ebp-0x30]
	mov [esp], edx
	call _ZN10LargeLocal6GetBufEv
	mov [ebp-0x2b0], eax
	mov dword [esp+0x4], 0x20000
	lea eax, [ebp-0x28]
	mov [esp], eax
	call _ZN10LargeLocalC1Ei
	lea edx, [ebp-0x28]
	mov [esp], edx
	call _ZN10LargeLocal6GetBufEv
	mov [ebp-0x2ac], eax
	mov ecx, cmd_args
	mov ebx, [ecx]
	mov edx, [ecx+ebx*4+0x44]
	cmp edx, 0x2
	jg CL_Record_f_10
	mov eax, [clientUIActives+0xc]
	mov esi, [clientConnections+0x40188]
	test esi, esi
	jnz CL_Record_f_20
	cmp eax, 0x9
	jz CL_Record_f_30
	mov dword [esp+0x4], _cstring_you_must_be_in_a
	mov dword [esp], 0x0
	call Com_Printf
CL_Record_f_80:
	lea eax, [ebp-0x28]
	mov [esp], eax
	call _ZN10LargeLocalD1Ev
	lea eax, [ebp-0x30]
	mov [esp], eax
	call _ZN10LargeLocalD1Ev
	add esp, 0x2cc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CL_Record_f_30:
	cmp edx, 0x2
	jz CL_Record_f_40
	xor ebx, ebx
	lea edi, [ebp-0xa8]
	lea esi, [ebp-0x29c]
	jmp CL_Record_f_50
CL_Record_f_70:
	add ebx, 0x1
	cmp ebx, 0x2710
	jz CL_Record_f_60
CL_Record_f_50:
	mov [esp+0xc], ebx
	mov dword [esp+0x8], _cstring_demo04i
	mov dword [esp+0x4], 0x40
	mov [esp], edi
	call Com_sprintf
	mov dword [esp+0x10], 0x1
	mov [esp+0xc], edi
	mov dword [esp+0x8], _cstring_demossdm_d
	mov dword [esp+0x4], 0x100
	mov [esp], esi
	call Com_sprintf
	mov [esp], esi
	call FS_FileExists
	test eax, eax
	jnz CL_Record_f_70
	jmp CL_Record_f_60
CL_Record_f_10:
	mov dword [esp+0x4], _cstring_record_demoname
	mov dword [esp], 0x0
	call Com_Printf
	jmp CL_Record_f_80
CL_Record_f_20:
	mov dword [esp+0x4], _cstring_already_recordin
	mov dword [esp], 0x0
	call Com_Printf
	jmp CL_Record_f_80
CL_Record_f_40:
	mov dword [esp+0x8], 0x40
	mov eax, [ecx+ebx*4+0x64]
	mov eax, [eax+0x4]
	mov [esp+0x4], eax
	lea edi, [ebp-0xa8]
	mov [esp], edi
	call Q_strncpyz
	mov dword [esp+0x10], 0x1
	mov [esp+0xc], edi
	mov dword [esp+0x8], _cstring_demossdm_d
	mov dword [esp+0x4], 0x100
	lea esi, [ebp-0x29c]
	mov [esp], esi
	call Com_sprintf
CL_Record_f_60:
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_recording_to_s
	mov dword [esp], 0x0
	call Com_Printf
	mov [esp], esi
	call FS_FOpenFileWrite
	mov [clientConnections+0x401a0], eax
	test eax, eax
	jnz CL_Record_f_90
	mov dword [esp+0x4], _cstring_error_couldnt_op
	mov dword [esp], 0x0
	call Com_PrintError
	jmp CL_Record_f_80
CL_Record_f_90:
	mov dword [clientConnections+0x40188], 0x1
	mov dword [esp+0x8], 0x40
	mov [esp+0x4], edi
	mov dword [esp], clientConnections+0x40148
	call Q_strncpyz
	mov dword [clientConnections+0x40198], 0x1
	mov dword [esp+0x8], 0x20000
	mov edx, [ebp-0x2b0]
	mov [esp+0x4], edx
	lea eax, [ebp-0x68]
	mov [esp], eax
	call MSG_Init
	mov eax, [clientConnections+0x12c]
	mov [esp+0x4], eax
	lea edx, [ebp-0x68]
	mov [esp], edx
	call MSG_WriteLong
	mov dword [esp+0x4], 0x1
	lea eax, [ebp-0x68]
	mov [esp], eax
	call MSG_WriteByte
	mov eax, [clientConnections+0x20138]
	mov [esp+0x4], eax
	lea edx, [ebp-0x68]
	mov [esp], edx
	call MSG_WriteLong
	mov dword [esp+0x4], 0x2
	lea eax, [ebp-0x68]
	mov [esp], eax
	call MSG_WriteByte
	xor edx, edx
	mov eax, clients
	mov ecx, clients+0x2628
CL_Record_f_100:
	cmp dword [eax+0x2fbc], 0x1
	sbb edx, 0xffffffff
	add eax, 0x4
	cmp ecx, eax
	jnz CL_Record_f_100
	mov [esp+0x4], edx
	lea edx, [ebp-0x68]
	mov [esp], edx
	call MSG_WriteShort
	xor ebx, ebx
	mov esi, clients
	jmp CL_Record_f_110
CL_Record_f_130:
	add ebx, 0x1
	add esi, 0x4
	cmp ebx, 0x98a
	jz CL_Record_f_120
CL_Record_f_110:
	mov eax, [esi+0x2fbc]
	test eax, eax
	jz CL_Record_f_130
	lea edi, [eax+clients+0x55e4]
	lea eax, [ebp-0x68]
	mov [esp], eax
	call MSG_WriteBit0
	mov dword [esp+0x8], 0xc
	mov [esp+0x4], ebx
	lea edx, [ebp-0x68]
	mov [esp], edx
	call MSG_WriteBits
	mov [esp+0x4], edi
	lea eax, [ebp-0x68]
	mov [esp], eax
	call MSG_WriteBigString
	add ebx, 0x1
	add esi, 0x4
	cmp ebx, 0x98a
	jnz CL_Record_f_110
CL_Record_f_120:
	mov edx, svsHeader
	mov eax, [cls+0x138]
	mov [edx+0x28], eax
	mov eax, [cls+0x13c]
	mov [edx+0x2c], eax
	mov eax, [cls+0x140]
	mov [edx+0x30], eax
	mov dword [ebp-0x40], 0x0
	mov dword [ebp-0x3c], 0x0
	mov dword [ebp-0x38], 0x0
	mov dword [ebp-0x34], 0x0
	mov dword [esp+0x8], 0xf4
	mov dword [esp+0x4], 0x0
	lea edx, [ebp-0x19c]
	mov [esp], edx
	call memset
	xor edi, edi
	mov ebx, 0xc8ad0
	jmp CL_Record_f_140
CL_Record_f_160:
	add edi, 0x1
	add ebx, 0xf4
	cmp edi, 0x400
	jz CL_Record_f_150
CL_Record_f_140:
	lea esi, [ebx+clients]
	mov eax, [ebx+clients]
	test eax, eax
	jz CL_Record_f_160
	mov dword [esp+0x4], 0x3
	lea eax, [ebp-0x68]
	mov [esp], eax
	call MSG_WriteByte
	mov dword [esp+0x14], 0x1
	mov [esp+0x10], esi
	lea edx, [ebp-0x19c]
	mov [esp+0xc], edx
	mov dword [esp+0x8], 0xfffea070
	lea eax, [ebp-0x68]
	mov [esp+0x4], eax
	lea edx, [ebp-0x40]
	mov [esp], edx
	call MSG_WriteEntity
	add edi, 0x1
	add ebx, 0xf4
	cmp edi, 0x400
	jnz CL_Record_f_140
CL_Record_f_150:
	mov dword [esp+0x4], 0x7
	lea eax, [ebp-0x68]
	mov [esp], eax
	call MSG_WriteByte
	mov eax, [clientConnections+0x4]
	mov [esp+0x4], eax
	lea edx, [ebp-0x68]
	mov [esp], edx
	call MSG_WriteLong
	mov eax, [clientConnections+0x128]
	mov [esp+0x4], eax
	lea eax, [ebp-0x68]
	mov [esp], eax
	call MSG_WriteLong
	mov dword [esp+0x4], 0x7
	lea edx, [ebp-0x68]
	mov [esp], edx
	call MSG_WriteByte
	mov eax, [ebp-0x60]
	mov eax, [eax]
	mov edx, [ebp-0x2ac]
	mov [edx], eax
	mov eax, [ebp-0x54]
	sub eax, 0x4
	mov [esp+0xc], eax
	mov eax, edx
	add eax, 0x4
	mov [esp+0x8], eax
	mov eax, [ebp-0x60]
	add eax, 0x4
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call MSG_WriteBitsCompress
	lea ebx, [eax+0x4]
	mov byte [ebp-0x19], 0x0
	mov eax, [clientConnections+0x401a0]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1
	lea eax, [ebp-0x19]
	mov [esp], eax
	call FS_Write
	mov eax, [clientConnections+0x20134]
	mov [ebp-0x20], eax
	mov eax, [clientConnections+0x401a0]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x4
	lea esi, [ebp-0x20]
	mov [esp], esi
	call FS_Write
	mov [ebp-0x20], ebx
	mov eax, [clientConnections+0x401a0]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x4
	mov [esp], esi
	call FS_Write
	mov eax, [clientConnections+0x401a0]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov eax, [ebp-0x2ac]
	mov [esp], eax
	call FS_Write
	xor ebx, ebx
CL_Record_f_170:
	mov [esp], ebx
	xor ecx, ecx
	mov edx, clients
	mov eax, clientConnections
	call CL_WriteDemoClientArchive
	add ebx, 0x1
	cmp ebx, 0x100
	jnz CL_Record_f_170
	mov eax, [clients+0x696cc]
	mov [clientConnections+0x40144], eax
	lea edx, [ebp-0x28]
	mov [esp], edx
	call _ZN10LargeLocalD1Ev
	lea eax, [ebp-0x30]
	mov [esp], eax
	call _ZN10LargeLocalD1Ev
	add esp, 0x2cc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	mov ebx, eax
CL_Record_f_180:
	lea edx, [ebp-0x30]
	mov [esp], edx
	call _ZN10LargeLocalD1Ev
	mov [esp], ebx
	call _Unwind_Resume
	mov ebx, eax
	lea edx, [ebp-0x28]
	mov [esp], edx
	call _ZN10LargeLocalD1Ev
	jmp CL_Record_f_180


;CL_Setenv_f()
CL_Setenv_f:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x42c
	mov ebx, cmd_args
	mov eax, [ebx]
	mov edx, [ebx+eax*4+0x44]
	mov [ebp-0x41c], edx
	cmp edx, 0x2
	jg CL_Setenv_f_10
	jz CL_Setenv_f_20
CL_Setenv_f_100:
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CL_Setenv_f_10:
	mov dword [esp+0x8], 0x400
	mov eax, [ebx+eax*4+0x64]
	mov eax, [eax+0x4]
	mov [esp+0x4], eax
	lea edi, [ebp-0x418]
	mov [esp], edi
	call Q_strncpyz
	mov dword [esp+0x8], _cstring_1
	mov dword [esp+0x4], 0x400
	mov [esp], edi
	call Q_strncat
	mov esi, 0x2
	jmp CL_Setenv_f_30
CL_Setenv_f_50:
	mov eax, _cstring_null
CL_Setenv_f_60:
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x400
	mov [esp], edi
	call Q_strncat
	mov dword [esp+0x8], _cstring_space
	mov dword [esp+0x4], 0x400
	mov [esp], edi
	call Q_strncat
	add esi, 0x1
	cmp [ebp-0x41c], esi
	jz CL_Setenv_f_40
CL_Setenv_f_30:
	mov eax, [ebx]
	cmp esi, [ebx+eax*4+0x44]
	jge CL_Setenv_f_50
	mov eax, [ebx+eax*4+0x64]
	mov eax, [eax+esi*4]
	jmp CL_Setenv_f_60
CL_Setenv_f_40:
	mov [esp], edi
	call putenv
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CL_Setenv_f_20:
	mov eax, [ebx+eax*4+0x64]
	mov eax, [eax+0x4]
	mov [esp], eax
	call getenv
	mov edx, eax
	test eax, eax
	jz CL_Setenv_f_70
	mov eax, [ebx]
	cmp dword [ebx+eax*4+0x44], 0x1
	jle CL_Setenv_f_80
	mov eax, [ebx+eax*4+0x64]
	mov eax, [eax+0x4]
CL_Setenv_f_110:
	mov [esp+0xc], edx
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_ss
	mov dword [esp], 0x0
	call Com_Printf
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CL_Setenv_f_70:
	mov eax, [ebx]
	cmp dword [ebx+eax*4+0x44], 0x1
	jle CL_Setenv_f_90
	mov eax, [ebx+eax*4+0x64]
	mov eax, [eax+0x4]
CL_Setenv_f_120:
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_s_undefined
	mov dword [esp], 0x0
	call Com_Printf
	jmp CL_Setenv_f_100
CL_Setenv_f_80:
	mov eax, _cstring_null
	jmp CL_Setenv_f_110
CL_Setenv_f_90:
	mov eax, _cstring_null
	jmp CL_Setenv_f_120
	nop


;CL_ShowIP_f()
CL_ShowIP_f:
	push ebp
	mov ebp, esp
	pop ebp
	jmp Sys_ShowIP
	nop


;CL_Shutdown(int)
CL_Shutdown:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	call Com_SyncThreads
	mov dword [esp+0x4], _cstring__cl_shutdown_
	mov dword [esp], 0xe
	call Com_Printf
	mov eax, [_ZZ11CL_ShutdowniE9recursive]
	test eax, eax
	jz CL_Shutdown_10
	mov dword [esp], _cstring_recursive_shutdo
	call puts
	add esp, 0x14
	pop ebx
	pop ebp
	ret
CL_Shutdown_10:
	mov dword [_ZZ11CL_ShutdowniE9recursive], 0x1
	mov [esp], ebx
	call CL_Disconnect
	call Sys_IsMainThread
	test al, al
	jnz CL_Shutdown_20
CL_Shutdown_40:
	call CL_ShutdownDebugData
	call Com_SyncThreads
	mov eax, [cls+0x4]
	test eax, eax
	jnz CL_Shutdown_30
CL_Shutdown_60:
	call SND_Shutdown
	call CL_ShutdownInput
	mov dword [esp], _cstring_cmd
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_configstrings
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_clientinfo
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_vid_restart
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_snd_restart
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_disconnect
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_record
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_demo
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_cinematic
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_logo
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_stoprecord
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_connect
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_reconnect
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_localservers
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_globalservers
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_rcon
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_setenv
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_ping
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_serverstatus
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_showip
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_fs_openedlist
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_fs_referencedlis
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_updatehunkusage
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_savetranslations
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_savenewtranslati
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_loadtranslations
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_startsingleplaye
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_buynow
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_singleplaylink
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_setrecommended
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_cubemapshot
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_openscriptmenu
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_closemenu
	call Cmd_RemoveCommand
	mov dword [esp+0x8], 0x2dc708
	mov dword [esp+0x4], 0x0
	mov dword [esp], cls
	call memset
CL_Shutdown_50:
	shl ebx, 0x4
	mov byte [ebx+clientUIActives+0x1], 0x0
	mov dword [_ZZ11CL_ShutdowniE9recursive], 0x0
	mov dword [esp+0x4], _cstring_2
	mov dword [esp], 0xe
	call Com_Printf
	add esp, 0x14
	pop ebx
	pop ebp
	ret
CL_Shutdown_20:
	mov dword [esp], 0x0
	call UI_IsFullscreen
	test eax, eax
	jnz CL_Shutdown_40
	cmp byte [clientUIActives], 0x0
	jz CL_Shutdown_40
	cmp dword [clientUIActives+0xc], 0x2
	jle CL_Shutdown_40
	jmp CL_Shutdown_50
CL_Shutdown_30:
	mov dword [esp], 0x0
	call CL_ShutdownCGame
	call Phys_Shutdown
	call CL_ShutdownUI
	mov dword [cls+0x4], 0x0
	jmp CL_Shutdown_60
	nop


;CL_ClearState(int)
CL_ClearState:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	test ebx, ebx
	jle CL_ClearState_10
	mov [ebp+0x8], ebx
	add esp, 0x14
	pop ebx
	pop ebp
	jmp Com_ClientDObjClearAllSkel
CL_ClearState_10:
	mov dword [esp+0x8], 0x1b1bdc
	mov dword [esp+0x4], 0x0
	mov dword [esp], clients
	call memset
	mov [ebp+0x8], ebx
	add esp, 0x14
	pop ebx
	pop ebp
	jmp Com_ClientDObjClearAllSkel


;CL_Disconnect(int)
CL_Disconnect:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov ebx, [ebp+0x8]
	cmp byte [clientUIActives+0x1], 0x0
	jz CL_Disconnect_10
	mov esi, [clientUIActives+0xc]
	cmp esi, 0x4
	jg CL_Disconnect_20
	xor edi, edi
	mov eax, [cls+0x2dc6b0]
	test eax, eax
	jnz CL_Disconnect_30
CL_Disconnect_150:
	mov eax, [cls+0x2dc094]
	test eax, eax
	jnz CL_Disconnect_40
CL_Disconnect_220:
	mov byte [cls+0x2dc198], 0x0
	mov byte [cls+0x2dc098], 0x0
	mov eax, legacyHacks
	mov byte [eax+0xc], 0x0
CL_Disconnect_160:
	mov byte [eax+0xc], 0x0
	cmp esi, 0x4
	jle CL_Disconnect_50
	mov eax, [edi+0x401a0]
	test eax, eax
	jnz CL_Disconnect_60
CL_Disconnect_50:
	mov [esp], ebx
	call SCR_StopCinematic
	cmp esi, 0x4
	jle CL_Disconnect_70
	mov eax, [edi+0x12c]
	sub eax, [edi+0x130]
	add eax, 0xffffff80
	jle CL_Disconnect_80
CL_Disconnect_70:
	test ebx, ebx
	jle CL_Disconnect_90
CL_Disconnect_230:
	mov [esp], ebx
	call Com_ClientDObjClearAllSkel
	call Ragdoll_Shutdown
	call CL_ClearMutedList
	cmp esi, 0x4
	jg CL_Disconnect_100
CL_Disconnect_190:
	mov eax, ebx
	shl eax, 0x4
	mov dword [eax+clientUIActives+0xc], 0x0
	mov edi, [cls+0x2dc6b0]
	test edi, edi
	jz CL_Disconnect_110
CL_Disconnect_180:
	mov [esp], ebx
	call DynEntCl_Shutdown
	mov [esp], ebx
	call SND_DisconnectListener
	cmp esi, 0x2
	jle CL_Disconnect_120
	and dword [clientUIActives+0x4], 0x1
CL_Disconnect_120:
	call Sys_IsMainThread
	test al, al
	jnz CL_Disconnect_130
CL_Disconnect_170:
	mov dword [esp+0x4], 0x0
	mov eax, sv_disableClientConsole
	mov eax, [eax]
	mov [esp], eax
	call Cvar_SetBool
	mov eax, cl_connectedToPureServer
	mov dword [eax], 0x0
	mov eax, fs_checksumFeed
	mov dword [eax], 0x0
	mov dword [esp], 0x0
	call LiveStorage_UploadStats
	mov dword [ebp+0x8], 0x0
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp LiveStorage_ReadStatsIfDirChanged
CL_Disconnect_20:
	mov eax, [clientConnections+0x40188]
	test eax, eax
	jnz CL_Disconnect_140
	mov edi, clientConnections
CL_Disconnect_210:
	mov eax, [cls+0x2dc6b0]
	test eax, eax
	jz CL_Disconnect_150
CL_Disconnect_30:
	mov eax, legacyHacks
	jmp CL_Disconnect_160
CL_Disconnect_130:
	mov dword [esp], 0x0
	call UI_IsFullscreen
	test eax, eax
	jnz CL_Disconnect_170
	cmp byte [clientUIActives], 0x0
	jz CL_Disconnect_170
	cmp dword [clientUIActives+0xc], 0x2
	jle CL_Disconnect_170
CL_Disconnect_10:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CL_Disconnect_110:
	mov dword [cls+0x2dc6a8], 0x0
	mov byte [cls+0x2dc098], 0x0
	mov byte [cls+0x2dc198], 0x0
	mov byte [cls+0x2dc6bc], 0x0
	mov dword [cls+0x2dc6b4], 0x0
	mov dword [cls+0x2dc6b0], 0x0
	mov dword [cls+0x2dc6b8], 0x0
	call DL_CancelDownload
	jmp CL_Disconnect_180
CL_Disconnect_100:
	mov dword [esp+0x8], 0x615dc
	mov dword [esp+0x4], 0x0
	mov [esp], edi
	call memset
	jmp CL_Disconnect_190
CL_Disconnect_80:
	mov edx, [clientConnections+0x12c]
	mov eax, edx
	sub eax, [clientConnections+0x130]
	add eax, 0xffffff80
	jg CL_Disconnect_200
CL_Disconnect_240:
	lea eax, [edx+0x1]
	mov [clientConnections+0x12c], eax
	mov dword [esp+0x8], 0x400
	and eax, 0x7f
	shl eax, 0xa
	add eax, clientConnections+0x134
	mov [esp+0x4], eax
	mov dword [esp], _cstring_disconnect
	call MSG_WriteReliableCommandToBuffer
	mov [esp], ebx
	call CL_WritePacket
	mov [esp], ebx
	call CL_WritePacket
	mov [esp], ebx
	call CL_WritePacket
	jmp CL_Disconnect_70
CL_Disconnect_140:
	mov dword [esp+0x8], _cstring_stoprecord
	mov [esp+0x4], ebx
	mov [esp], ebx
	call Cmd_ExecuteSingleCommand
	mov edi, clientConnections
	jmp CL_Disconnect_210
CL_Disconnect_60:
	mov [esp], eax
	call FS_FCloseFile
	mov dword [edi+0x401a0], 0x0
	mov dword [edi+0x4018c], 0x0
	mov dword [edi+0x40188], 0x0
	jmp CL_Disconnect_50
CL_Disconnect_40:
	mov [esp], eax
	call FS_FCloseFile
	mov dword [cls+0x2dc094], 0x0
	jmp CL_Disconnect_220
CL_Disconnect_90:
	mov dword [esp+0x8], 0x1b1bdc
	mov dword [esp+0x4], 0x0
	mov dword [esp], clients
	call memset
	jmp CL_Disconnect_230
CL_Disconnect_200:
	mov dword [esp+0x4], _cstring_exe_err_client_c
	mov dword [esp], 0x2
	call Com_Error
	mov edx, [clientConnections+0x12c]
	jmp CL_Disconnect_240
	nop


;CL_IsUIActive(int)
CL_IsUIActive:
	push ebp
	mov ebp, esp
	xor eax, eax
	test byte [clientUIActives+0x4], 0x10
	setnz al
	pop ebp
	ret
	nop


;CL_MapLoading(char const*)
CL_MapLoading:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	cmp byte [clientUIActives+0x1], 0x0
	jnz CL_MapLoading_10
	leave
	ret
CL_MapLoading_10:
	mov byte [g_waitingForServer], 0x0
	mov dword [esp], 0x0
	call FS_DisablePureCheck
	mov dword [esp], 0x0
	call Con_Close
	mov dword [clientUIActives+0x4], 0x0
	mov byte [clientUIActives+0x8], 0x0
	mov dword [esp], 0x0
	call LiveStorage_UploadStats
	mov dword [esp], 0x0
	call UI_CloseAllMenus
	mov byte [cl_serverLoadingMap], 0x1
	mov eax, com_sv_running
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz CL_MapLoading_20
	cmp dword [clientUIActives+0xc], 0x4
	jg CL_MapLoading_30
CL_MapLoading_40:
	mov dword [esp+0x4], _cstring_null
	mov eax, nextmap
	mov eax, [eax]
	mov [esp], eax
	call Cvar_SetString
	mov dword [esp+0x8], 0x100
	mov dword [esp+0x4], _cstring_localhost
	mov dword [esp], cls+0x8
	call Q_strncpyz
	mov dword [esp], 0x0
	call CL_Disconnect
	mov dword [esp], 0x0
	call UI_CloseAll
	mov dword [clientUIActives+0xc], 0x4
	mov dword [clientConnections+0x1c], 0xfffff448
	mov eax, g_qport
	mov eax, [eax]
	mov [clientConnections], eax
	mov dword [esp+0x4], clientConnections+0x10
	mov dword [esp], cls+0x8
	call NET_StringToAdr
	mov dword [esp], 0x0
	call CL_CheckForResend
	mov byte [cl_waitingOnServerToLoadMap], 0x0
CL_MapLoading_50:
	mov dword [esp+0x4], 0x0
	mov dword [esp], 0x0
	call SND_FadeAllSounds
	leave
	ret
CL_MapLoading_20:
	mov dword [esp+0x8], _cstring_selectstringtabl
	mov dword [esp+0x4], 0x0
	mov dword [esp], 0x0
	call Cbuf_ExecuteBuffer
	cmp dword [clientUIActives+0xc], 0x4
	jle CL_MapLoading_40
CL_MapLoading_30:
	mov dword [esp+0x4], _cstring_localhost
	mov dword [esp], cls+0x8
	call Q_stricmp
	test eax, eax
	jnz CL_MapLoading_40
	mov dword [clientUIActives+0xc], 0x5
	mov dword [esp+0x8], 0x100
	mov dword [esp+0x4], 0x0
	mov dword [esp], clientConnections+0x24
	call memset
	mov dword [esp+0x8], 0x2262c
	mov dword [esp+0x4], 0x0
	mov dword [esp], clients+0x2fbc
	call memset
	mov dword [clientConnections+0x8], 0xffffd8f1
	mov byte [cl_waitingOnServerToLoadMap], 0x0
	jmp CL_MapLoading_50
	nop


;CL_PlayLogo_f()
CL_PlayLogo_f:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x40
	mov edx, cmd_args
	mov eax, [edx]
	cmp dword [edx+eax*4+0x44], 0x5
	jz CL_PlayLogo_f_10
	mov dword [esp+0x4], _cstring_usage_logo_image
	mov dword [esp], 0x0
	call Com_Printf
CL_PlayLogo_f_40:
	add esp, 0x40
	pop ebx
	pop esi
	pop ebp
	ret
CL_PlayLogo_f_10:
	mov dword [esp+0x4], _cstring_cl_playlogo_f
	mov dword [esp], 0x0
	call Com_DPrintf
	mov eax, [clientUIActives+0xc]
	cmp eax, 0x1
	jz CL_PlayLogo_f_20
	cmp eax, 0x2
	jz CL_PlayLogo_f_30
	test eax, eax
	jnz CL_PlayLogo_f_40
CL_PlayLogo_f_100:
	mov dword [clientUIActives+0xc], 0x2
	mov eax, [cls+0x110]
	test eax, eax
	jnz CL_PlayLogo_f_50
CL_PlayLogo_f_140:
	mov dword [esp], 0x0
	call SND_StopSounds
	mov dword [esp+0x4], 0x0
	mov dword [esp], 0x3f800000
	call SND_FadeAllSounds
	mov ebx, cmd_args
	mov edx, [ebx]
	mov ecx, [ebx+edx*4+0x44]
	cmp ecx, 0x1
	jle CL_PlayLogo_f_60
	mov eax, [ebx+edx*4+0x64]
	mov esi, [eax+0x4]
CL_PlayLogo_f_150:
	cmp ecx, 0x2
	jg CL_PlayLogo_f_70
	mov eax, _cstring_null
CL_PlayLogo_f_130:
	mov [esp], eax
	call atof
	fstp qword [ebp-0x20]
	cvtsd2ss xmm0, [ebp-0x20]
	mulss xmm0, [_float_1000_00000000]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x24]
	cvttss2si eax, [ebp-0x24]
	mov [cls+0x128], eax
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x3
	jg CL_PlayLogo_f_80
	mov eax, _cstring_null
CL_PlayLogo_f_120:
	mov [esp], eax
	call atof
	fstp qword [ebp-0x18]
	cvtsd2ss xmm0, [ebp-0x18]
	mulss xmm0, [_float_1000_00000000]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x28]
	cvttss2si eax, [ebp-0x28]
	mov [cls+0x124], eax
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x4
	jg CL_PlayLogo_f_90
	mov eax, _cstring_null
CL_PlayLogo_f_110:
	mov [esp], eax
	call atof
	fstp qword [ebp-0x10]
	cvtsd2ss xmm0, [ebp-0x10]
	mulss xmm0, [_float_1000_00000000]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x2c]
	cvttss2si eax, [ebp-0x2c]
	mov [cls+0x12c], eax
	add eax, [cls+0x128]
	add [cls+0x124], eax
	mov [esp+0x4], esi
	mov dword [esp], _cstring_s11
	call va
	mov dword [esp+0x4], 0x3
	mov [esp], eax
	call Material_RegisterHandle
	mov [cls+0x130], eax
	mov [esp+0x4], esi
	mov dword [esp], _cstring_s2
	call va
	mov dword [esp+0x4], 0x3
	mov [esp], eax
	call Material_RegisterHandle
	mov [cls+0x134], eax
	mov eax, [cls+0x118]
	add eax, 0x64
	mov [cls+0x120], eax
	add esp, 0x40
	pop ebx
	pop esi
	pop ebp
	ret
CL_PlayLogo_f_30:
	mov dword [clientUIActives+0xc], 0x0
	jmp CL_PlayLogo_f_100
CL_PlayLogo_f_90:
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x10]
	jmp CL_PlayLogo_f_110
CL_PlayLogo_f_80:
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0xc]
	jmp CL_PlayLogo_f_120
CL_PlayLogo_f_70:
	mov eax, [ebx+edx*4+0x64]
	mov eax, [eax+0x8]
	jmp CL_PlayLogo_f_130
CL_PlayLogo_f_50:
	mov dword [esp+0x4], 0x0
	mov dword [esp], 0x0
	call UI_SetActiveMenu
	jmp CL_PlayLogo_f_140
CL_PlayLogo_f_60:
	mov esi, _cstring_null
	jmp CL_PlayLogo_f_150
CL_PlayLogo_f_20:
	mov dword [esp], 0x0
	call SCR_StopCinematic
	jmp CL_PlayLogo_f_100


;CL_PacketEvent(int, netadr_t, msg_t*, int)
CL_PacketEvent:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x8c
	movzx ebx, word [ebp+0x14]
	movzx eax, byte [ebp+0x13]
	mov [ebp-0x69], al
	movzx edx, byte [ebp+0x12]
	mov [ebp-0x6a], dl
	movzx ecx, byte [ebp+0x11]
	mov [ebp-0x6b], cl
	movzx eax, byte [ebp+0x10]
	mov [ebp-0x6c], al
	mov esi, [ebp+0xc]
	mov ecx, [ebp+0x18]
	mov edx, [ecx+0x14]
	cmp edx, 0x3
	jle CL_PacketEvent_10
	mov eax, [ecx+0x8]
	cmp dword [eax], 0xffffffff
	jz CL_PacketEvent_20
CL_PacketEvent_10:
	mov edi, [clientUIActives+0xc]
	cmp edi, 0x4
	jle CL_PacketEvent_30
	cmp edx, 0x3
	jg CL_PacketEvent_40
	mov [ebp-0x30], bx
	movzx ecx, byte [ebp-0x69]
	mov [ebp-0x31], cl
	movzx eax, byte [ebp-0x6a]
	mov [ebp-0x32], al
	movzx edx, byte [ebp-0x6b]
	mov [ebp-0x33], dl
	movzx ecx, byte [ebp-0x6c]
	mov [ebp-0x34], cl
	mov [ebp-0x38], esi
	mov [esp], esi
	mov eax, [ebp-0x34]
	mov [esp+0x4], eax
	mov eax, [ebp-0x30]
	mov [esp+0x8], eax
	call NET_AdrToString
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_s_runt_packet
	mov dword [esp], 0xe
	call Com_Printf
	mov eax, 0x1
CL_PacketEvent_60:
	add esp, 0x8c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CL_PacketEvent_40:
	mov ecx, [clientConnections+0x401c8]
	mov [ebp-0x2c], ecx
	mov edx, [clientConnections+0x401cc]
	mov [ebp-0x28], edx
	mov edi, [clientConnections+0x401d0]
	mov [ebp-0x24], edi
	mov [ebp-0x60], bx
	movzx eax, byte [ebp-0x69]
	mov [ebp-0x61], al
	movzx eax, byte [ebp-0x6a]
	mov [ebp-0x62], al
	movzx eax, byte [ebp-0x6b]
	mov [ebp-0x63], al
	movzx eax, byte [ebp-0x6c]
	mov [ebp-0x64], al
	mov [ebp-0x68], esi
	mov [esp+0xc], ecx
	mov [esp+0x10], edx
	mov [esp+0x14], edi
	mov [esp], esi
	mov eax, [ebp-0x64]
	mov [esp+0x4], eax
	mov eax, [ebp-0x60]
	mov [esp+0x8], eax
	call NET_CompareAdr
	test eax, eax
	jz CL_PacketEvent_50
	mov eax, [cls+0x118]
	mov [clientConnections+0xc], eax
	mov ecx, [ebp+0x18]
	mov [esp+0x4], ecx
	mov dword [esp], clientConnections+0x401b8
	call Netchan_Process
	test eax, eax
	jz CL_PacketEvent_60
	mov eax, [ebp+0x18]
	mov eax, [eax+0x1c]
	mov [ebp-0x70], eax
	mov esi, [clientConnections+0x20134]
	mov ebx, [clientConnections+0x130]
	mov edx, [ebp+0x18]
	mov eax, [edx+0x8]
	mov eax, [eax]
	mov [clientConnections+0x20134], eax
	mov [esp], edx
	call MSG_ReadLong
	mov [clientConnections+0x130], eax
	mov ecx, [clientConnections+0x12c]
	lea edx, [ecx-0x80]
	cmp eax, edx
	jge CL_PacketEvent_70
	mov [clientConnections+0x130], ecx
	xor eax, eax
	jmp CL_PacketEvent_60
CL_PacketEvent_30:
	mov edx, [ebp+0x18]
	mov eax, [edx+0x8]
	mov eax, [eax]
	mov [ebp-0x74], eax
	mov [ebp-0x54], bx
	movzx ecx, byte [ebp-0x69]
	mov [ebp-0x55], cl
	movzx eax, byte [ebp-0x6a]
	mov [ebp-0x56], al
	movzx edx, byte [ebp-0x6b]
	mov [ebp-0x57], dl
	movzx ecx, byte [ebp-0x6c]
	mov [ebp-0x58], cl
	mov [ebp-0x5c], esi
	mov [esp], esi
	mov eax, [ebp-0x58]
	mov [esp+0x4], eax
	mov eax, [ebp-0x54]
	mov [esp+0x8], eax
	call NET_AdrToString
	mov [esp+0x10], edi
	mov edx, [ebp-0x74]
	mov [esp+0xc], edx
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_s_got_msg_sequen
	mov dword [esp], 0xe
	call Com_DPrintf
	xor eax, eax
	add esp, 0x8c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CL_PacketEvent_50:
	mov [ebp-0x3c], bx
	movzx edx, byte [ebp-0x69]
	mov [ebp-0x3d], dl
	movzx ecx, byte [ebp-0x6a]
	mov [ebp-0x3e], cl
	movzx eax, byte [ebp-0x6b]
	mov [ebp-0x3f], al
	movzx edx, byte [ebp-0x6c]
	mov [ebp-0x40], dl
	mov [ebp-0x44], esi
	mov [esp], esi
	mov eax, [ebp-0x40]
	mov [esp+0x4], eax
	mov eax, [ebp-0x3c]
	mov [esp+0x8], eax
	call NET_AdrToString
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_ssequenced_packe
	mov dword [esp], 0xe
	call Com_DPrintf
	xor eax, eax
	add esp, 0x8c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CL_PacketEvent_20:
	mov [ebp-0x48], bx
	movzx eax, byte [ebp-0x69]
	mov [ebp-0x49], al
	movzx edx, byte [ebp-0x6a]
	mov [ebp-0x4a], dl
	movzx ecx, byte [ebp-0x6b]
	mov [ebp-0x4b], cl
	movzx eax, byte [ebp-0x6c]
	mov [ebp-0x4c], al
	mov [ebp-0x50], esi
	mov edx, [ebp+0x1c]
	mov [esp+0x14], edx
	mov ecx, [ebp+0x18]
	mov [esp+0x10], ecx
	mov [esp+0x4], esi
	mov eax, [ebp-0x4c]
	mov [esp+0x8], eax
	mov eax, [ebp-0x48]
	mov [esp+0xc], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CL_ConnectionlessPacket
	movzx eax, al
	jmp CL_PacketEvent_60
CL_PacketEvent_70:
	mov ecx, [ebp+0x18]
	mov edx, [ecx+0x1c]
	mov eax, [ecx+0x14]
	sub eax, edx
	mov [esp+0x4], eax
	add edx, [ecx+0x8]
	mov [esp], edx
	call CL_Netchan_Decode
	mov eax, [ebp+0x18]
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov [esp], edx
	call CL_ParseServerMessage
	mov ecx, [ebp+0x18]
	mov eax, [ecx]
	test eax, eax
	jnz CL_PacketEvent_80
	mov eax, [clientConnections+0x40188]
	test eax, eax
	jz CL_PacketEvent_90
	mov eax, [clientConnections+0x40198]
	test eax, eax
	jnz CL_PacketEvent_90
	mov eax, [clientConnections+0x40144]
	cmp [clients+0x696cc], eax
	jnz CL_PacketEvent_100
	jmp CL_PacketEvent_110
CL_PacketEvent_120:
	mov [clientConnections+0x40144], eax
	cmp eax, [clients+0x696cc]
	jz CL_PacketEvent_110
CL_PacketEvent_100:
	mov [esp], eax
	mov ecx, [ebp+0x8]
	mov edx, clients
	mov eax, clientConnections
	call CL_WriteDemoClientArchive
	mov eax, [clientConnections+0x40144]
	add eax, 0x1
	and eax, 0x800000ff
	jns CL_PacketEvent_120
	sub eax, 0x1
	or eax, 0xffffff00
	add eax, 0x1
	jmp CL_PacketEvent_120
CL_PacketEvent_110:
	mov byte [ebp-0x19], 0x0
	mov eax, [clientConnections+0x401a0]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1
	lea eax, [ebp-0x19]
	mov [esp], eax
	call FS_Write
	mov eax, [clientConnections+0x20134]
	mov [ebp-0x20], eax
	mov eax, [clientConnections+0x401a0]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x4
	lea esi, [ebp-0x20]
	mov [esp], esi
	call FS_Write
	mov eax, [ebp+0x18]
	mov edi, [eax+0x14]
	sub edi, [ebp-0x70]
	mov [ebp-0x20], edi
	mov eax, [clientConnections+0x401a0]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x4
	mov [esp], esi
	call FS_Write
	mov eax, [clientConnections+0x401a0]
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	mov edx, [ebp+0x18]
	mov edx, [edx+0x8]
	add [ebp-0x70], edx
	mov ecx, [ebp-0x70]
	mov [esp], ecx
	call FS_Write
CL_PacketEvent_90:
	mov eax, 0x1
	jmp CL_PacketEvent_60
CL_PacketEvent_80:
	mov dword [esp+0x4], _cstring_ignoring_illegib
	mov dword [esp], 0xe
	call Com_DPrintf
	mov [clientConnections+0x20134], esi
	mov [clientConnections+0x130], ebx
	xor eax, eax
	jmp CL_PacketEvent_60


;CL_Reconnect_f()
CL_Reconnect_f:
	push ebp
	mov ebp, esp
	push edi
	push esi
	sub esp, 0x10
	cmp byte [cls+0x8], 0x0
	jz CL_Reconnect_f_10
	mov esi, cls+0x8
	mov edi, _cstring_localhost
	mov ecx, 0xa
	cld
	repe cmpsb
	mov eax, 0x0
	jz CL_Reconnect_f_20
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
CL_Reconnect_f_20:
	test eax, eax
	jnz CL_Reconnect_f_30
CL_Reconnect_f_10:
	mov dword [esp+0x4], _cstring_cant_reconnect_t
	mov dword [esp], 0x0
	call Com_Printf
	add esp, 0x10
	pop esi
	pop edi
	pop ebp
	ret
CL_Reconnect_f_30:
	mov dword [esp+0x4], cls+0x8
	mov dword [esp], _cstring_connect_s_reconn
	call va
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Cbuf_AddText
	add esp, 0x10
	pop esi
	pop edi
	pop ebp
	ret


;CL_ShutdownAll()
CL_ShutdownAll:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	call R_SyncRenderThread
	call Com_SyncThreads
	mov eax, [cls+0x4]
	test eax, eax
	jnz CL_ShutdownAll_10
CL_ShutdownAll_30:
	mov eax, [cls+0x108]
	test eax, eax
	jnz CL_ShutdownAll_20
	leave
	ret
CL_ShutdownAll_20:
	xor eax, eax
	leave
	jmp CL_ShutdownRenderer
CL_ShutdownAll_10:
	mov dword [esp], 0x0
	call CL_ShutdownCGame
	call Phys_Shutdown
	call CL_ShutdownUI
	mov dword [cls+0x4], 0x0
	jmp CL_ShutdownAll_30


;CL_ShutdownRef()
CL_ShutdownRef:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	call R_SyncRenderThread
	mov eax, 0x1
	call CL_ShutdownRenderer
	leave
	jmp StatMon_Reset
	nop


;CL_UpdateSound()
CL_UpdateSound:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x4], _cstring_update_sound
	mov dword [esp], 0xffffffff
	call PIXBeginNamedEvent
	call SND_PlayFXSounds
	call SND_UpdateLoopingSounds
	leave
	jmp SND_Update


;PBget_cl_cdkey(char*)
PBget_cl_cdkey:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	mov eax, [ebp+0x8]
	mov byte [eax], 0x0
	mov esi, cl_cdkey
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, esi
	repne scasb
	not ecx
	lea ebx, [ecx-0x1]
	cmp ebx, 0x20
	jle PBget_cl_cdkey_10
	mov ebx, 0x20
PBget_cl_cdkey_50:
	xor edi, edi
	xor ecx, ecx
	jmp PBget_cl_cdkey_20
PBget_cl_cdkey_40:
	mov eax, [ebp+0x8]
	mov [eax+ecx], dl
	add ecx, 0x1
	add edi, 0x1
	cmp ebx, edi
	jz PBget_cl_cdkey_30
PBget_cl_cdkey_20:
	movzx edx, byte [edi+esi]
	lea eax, [edx-0x30]
	cmp al, 0x9
	jbe PBget_cl_cdkey_40
	lea eax, [edx-0x61]
	cmp al, 0x19
	jbe PBget_cl_cdkey_40
	lea eax, [edx-0x41]
	cmp al, 0x19
	jbe PBget_cl_cdkey_40
	add edi, 0x1
	cmp ebx, edi
	jnz PBget_cl_cdkey_20
PBget_cl_cdkey_30:
	mov eax, ecx
	mov edx, [ebp+0x8]
	mov byte [edx+eax], 0x0
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
PBget_cl_cdkey_10:
	test ebx, ebx
	jg PBget_cl_cdkey_50
	xor eax, eax
	mov edx, [ebp+0x8]
	mov byte [edx+eax], 0x0
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;CL_Clientinfo_f()
CL_Clientinfo_f:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x4], _cstring__client_informat
	mov dword [esp], 0x0
	call Com_Printf
	mov eax, [clientUIActives+0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_state_i
	mov dword [esp], 0x0
	call Com_Printf
	mov dword [esp+0x8], cls+0x8
	mov dword [esp+0x4], _cstring_server_s
	mov dword [esp], 0x0
	call Com_Printf
	mov dword [esp+0x4], _cstring_user_info_settin
	mov dword [esp], 0x0
	call Com_Printf
	mov dword [esp+0x4], 0x2
	mov dword [esp], 0x0
	call Cvar_InfoString
	mov [esp], eax
	call Info_Print
	mov dword [esp+0x4], _cstring_3
	mov dword [esp], 0x0
	call Com_Printf
	leave
	ret
	nop


;CL_GetMapCenter()
CL_GetMapCenter:
	push ebp
	mov ebp, esp
	mov eax, cls+0x138
	pop ebp
	ret


;CL_InitRenderer()
CL_InitRenderer:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	mov dword [cls+0x108], 0x1
	mov dword [esp], cls+0x2dbffc
	call R_BeginRegistration
	mov eax, [cls+0x2dc008]
	mov [esp+0x10], eax
	mov eax, [cls+0x2dc004]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov eax, scrPlaceFullUnsafe
	mov [esp], eax
	call ScrPlace_SetupUnsafeViewport
	mov eax, [cls+0x2dc008]
	mov [esp+0x10], eax
	mov eax, [cls+0x2dc004]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov eax, scrPlaceFull
	mov [esp], eax
	call ScrPlace_SetupViewport
	mov eax, [cls+0x2dc008]
	mov [esp+0x10], eax
	mov eax, [cls+0x2dc004]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov eax, scrPlaceView
	mov [esp], eax
	call ScrPlace_SetupViewport
	mov dword [esp+0x4], 0x3
	mov dword [esp], _cstring_white
	call Material_RegisterHandle
	mov [cls+0x2dbff0], eax
	mov dword [esp+0x4], 0x3
	mov dword [esp], _cstring_console
	call Material_RegisterHandle
	mov [cls+0x2dbff4], eax
	mov dword [esp+0x4], 0x3
	mov dword [esp], _cstring_fontsconsolefont
	call R_RegisterFont
	mov [cls+0x2dbff8], eax
	mov ecx, [cls+0x2dc004]
	sub ecx, 0x30
	mov eax, g_console_field_width
	mov [eax], ecx
	mov edx, g_consoleField
	mov [edx+0xc], ecx
	mov eax, g_console_char_height
	mov eax, [eax]
	mov [edx+0x10], eax
	mov dword [edx+0x14], 0x1
	call StatMon_Reset
	leave
	jmp Con_InitClientAssets
	nop


;CL_NextDownload(int)
CL_NextDownload:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov ebx, [ebp+0x8]
	cmp byte [cls+0x2dc2a8], 0x0
	jz CL_NextDownload_10
	mov dword [ebp-0x1c], cls+0x2dc2a9
	cmp byte [cls+0x2dc2a8], 0x40
	mov eax, cls+0x2dc2a8
	cmovz eax, [ebp-0x1c]
	mov [ebp-0x1c], eax
	mov dword [esp+0x4], 0x40
	mov [esp], eax
	call strchr
	test eax, eax
	jz CL_NextDownload_20
	mov byte [eax], 0x0
	lea esi, [eax+0x1]
	mov dword [esp+0x4], 0x40
	mov [esp], esi
	call strchr
	test eax, eax
	jz CL_NextDownload_30
	mov byte [eax], 0x0
	lea ebx, [eax+0x1]
CL_NextDownload_40:
	mov eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov [esp], esi
	call CL_BeginDownload
	mov dword [cls+0x2dc6a8], 0x1
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, ebx
	repne scasb
	not ecx
	mov [esp+0x8], ecx
	mov [esp+0x4], ebx
	mov dword [esp], cls+0x2dc2a8
	call memmove
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CL_NextDownload_10:
	mov [ebp+0x8], ebx
CL_NextDownload_20:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp CL_DownloadsComplete
CL_NextDownload_30:
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, esi
	repne scasb
	not ecx
	lea ebx, [ecx+esi-0x1]
	jmp CL_NextDownload_40
	nop


;CL_RegisterFont(char const*, int)
CL_RegisterFont:
	push ebp
	mov ebp, esp
	pop ebp
	jmp R_RegisterFont
	nop


;CL_ResetStats_f()
CL_ResetStats_f:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop


;CL_SendPbPacket(int, int, char*)
CL_SendPbPacket:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov ebx, [ebp+0x8]
	mov edi, [ebp+0xc]
	mov esi, [ebp+0x10]
	mov [esp], ebx
	call CL_IsCgameInitialized
	test eax, eax
	jz CL_SendPbPacket_10
	mov ecx, [clientUIActives+0xc]
	test ecx, ecx
	jz CL_SendPbPacket_20
	cmp dword [clientConnections+0x10], 0x2
	jz CL_SendPbPacket_30
	mov ecx, [clientConnections+0x10]
	mov [ebp-0x24], ecx
	mov edx, [clientConnections+0x14]
	mov [ebp-0x20], edx
	mov eax, [clientConnections+0x18]
	mov [ebp-0x1c], eax
	mov [esp+0x14], edi
	mov [esp+0x10], esi
	mov [esp+0x4], ecx
	mov [esp+0x8], edx
	mov [esp+0xc], eax
	mov dword [esp], 0x0
	call NET_OutOfBandData
CL_SendPbPacket_10:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CL_SendPbPacket_20:
	mov dword [ebp+0xc], _cstring_trying_to_send_p
	mov dword [ebp+0x8], 0x10
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp Com_PrintError
CL_SendPbPacket_30:
	mov [esp+0xc], esi
	mov [esp+0x8], edi
	mov [esp+0x4], ebx
	mov dword [esp], 0xd
	call PbSvAddEvent
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;CL_ShutdownDemo()
CL_ShutdownDemo:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [clientConnections+0x401a0]
	test eax, eax
	jnz CL_ShutdownDemo_10
	leave
	ret
CL_ShutdownDemo_10:
	mov [esp], eax
	call FS_FCloseFile
	mov dword [clientConnections+0x401a0], 0x0
	mov dword [clientConnections+0x4018c], 0x0
	mov dword [clientConnections+0x40188], 0x0
	leave
	ret
	nop


;CL_StopRecord_f()
CL_StopRecord_f:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov eax, [clientConnections+0x40188]
	test eax, eax
	jnz CL_StopRecord_f_10
	mov dword [esp+0x4], _cstring_not_recording_a_
	mov dword [esp], 0x0
	call Com_Printf
	add esp, 0x24
	pop ebx
	pop ebp
	ret
CL_StopRecord_f_10:
	mov byte [ebp-0x9], 0x0
	mov eax, [clientConnections+0x401a0]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1
	lea eax, [ebp-0x9]
	mov [esp], eax
	call FS_Write
	mov dword [ebp-0x10], 0xffffffff
	mov eax, [clientConnections+0x401a0]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x4
	lea ebx, [ebp-0x10]
	mov [esp], ebx
	call FS_Write
	mov eax, [clientConnections+0x401a0]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x4
	mov [esp], ebx
	call FS_Write
	mov eax, [clientConnections+0x401a0]
	mov [esp], eax
	call FS_FCloseFile
	mov dword [clientConnections+0x401a0], 0x0
	mov dword [clientConnections+0x40188], 0x0
	mov dword [esp+0x4], _cstring_stopped_demo
	mov dword [esp], 0x0
	call Com_Printf
	add esp, 0x24
	pop ebx
	pop ebp
	ret
	nop


;CL_ToggleMenu_f()
CL_ToggleMenu_f:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [clientUIActives+0xc]
	test byte [clientUIActives+0x4], 0x10
	jnz CL_ToggleMenu_f_10
	xor eax, eax
CL_ToggleMenu_f_60:
	mov edx, [clientConnections+0x4018c]
	test edx, edx
	jnz CL_ToggleMenu_f_20
	cmp ebx, 0x9
	jz CL_ToggleMenu_f_30
	cmp byte [cl_waitingOnServerToLoadMap], 0x0
	jz CL_ToggleMenu_f_40
CL_ToggleMenu_f_20:
	mov dword [esp+0x4], 0x1
	mov dword [esp], 0x0
	call UI_SetActiveMenu
CL_ToggleMenu_f_40:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
CL_ToggleMenu_f_30:
	mov edx, [clientUIActives+0x4]
	test dl, 0x10
	jnz CL_ToggleMenu_f_50
CL_ToggleMenu_f_70:
	test edx, edx
	jnz CL_ToggleMenu_f_40
	mov dword [esp+0x4], 0x2
	mov dword [esp], 0x0
	call UI_SetActiveMenu
	jmp CL_ToggleMenu_f_40
CL_ToggleMenu_f_10:
	mov dword [esp], 0x0
	call UI_GetActiveMenu
	jmp CL_ToggleMenu_f_60
CL_ToggleMenu_f_50:
	cmp eax, 0x2
	jnz CL_ToggleMenu_f_70
	mov dword [esp+0x4], 0x0
	mov dword [esp], 0x0
	call UI_SetActiveMenu
	jmp CL_ToggleMenu_f_40


;PB_Q_Serveraddr(int)
PB_Q_Serveraddr:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CL_IsCgameInitialized
	test eax, eax
	jz PB_Q_Serveraddr_10
	mov eax, [clientUIActives+0xc]
	test eax, eax
	jz PB_Q_Serveraddr_20
	mov ecx, [clientConnections+0x10]
	mov [ebp-0x14], ecx
	mov edx, [clientConnections+0x14]
	mov [ebp-0x10], edx
	mov eax, [clientConnections+0x18]
	mov [ebp-0xc], eax
	mov [esp], ecx
	mov [esp+0x4], edx
	mov [esp+0x8], eax
	call NET_AdrToString
	leave
	ret
PB_Q_Serveraddr_20:
	mov dword [esp+0x4], _cstring_trying_to_get_se
	mov dword [esp], 0x10
	call Com_PrintError
PB_Q_Serveraddr_10:
	mov eax, _cstring_bot
	leave
	ret
	nop
	add [eax], al


;PB_Q_Serverinfo(int)
PB_Q_Serverinfo:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CL_IsCgameInitialized
	test eax, eax
	jz PB_Q_Serverinfo_10
	mov eax, [clientUIActives+0xc]
	test eax, eax
	jz PB_Q_Serverinfo_20
	mov eax, [clients+0x2fbc]
	add eax, clients+0x55e4
	leave
	ret
PB_Q_Serverinfo_20:
	mov dword [esp+0x4], _cstring_trying_to_get_se1
	mov dword [esp], 0x10
	call Com_PrintError
PB_Q_Serverinfo_10:
	mov eax, _cstring_null
	leave
	ret
	nop


;CL_BeginDownload(char const*, char const*)
CL_BeginDownload:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring__cl_begindownloa
	mov dword [esp], 0xe
	call Com_DPrintf
	mov dword [esp+0x8], 0x100
	mov [esp+0x4], ebx
	mov dword [esp], cls+0x2dc198
	call Q_strncpyz
	mov [esp+0xc], ebx
	mov dword [esp+0x8], _cstring_stmp
	mov dword [esp+0x4], 0x100
	mov dword [esp], cls+0x2dc098
	call Com_sprintf
	mov dword [esp+0x8], 0x40
	mov [esp+0x4], esi
	mov ebx, legacyHacks
	lea eax, [ebx+0xc]
	mov [esp], eax
	call Q_strncpyz
	mov dword [ebx], 0x0
	mov dword [ebx+0x4], 0x0
	mov eax, [cls+0x118]
	mov [ebx+0x8], eax
	mov dword [cls+0x2dc29c], 0x0
	mov dword [cls+0x2dc2a0], 0x0
	mov [esp+0x4], esi
	mov dword [esp], _cstring_download_s
	call va
	mov ebx, eax
	mov edx, [clientConnections+0x12c]
	mov eax, edx
	sub eax, [clientConnections+0x130]
	add eax, 0xffffff80
	jle CL_BeginDownload_10
	mov dword [esp+0x4], _cstring_exe_err_client_c
	mov dword [esp], 0x2
	call Com_Error
	mov edx, [clientConnections+0x12c]
CL_BeginDownload_10:
	lea eax, [edx+0x1]
	mov [clientConnections+0x12c], eax
	mov dword [esp+0x8], 0x400
	and eax, 0x7f
	shl eax, 0xa
	add eax, clientConnections+0x134
	mov [esp+0x4], eax
	mov [esp], ebx
	call MSG_WriteReliableCommandToBuffer
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;CL_GetServerList(int, serverInfo_t**, int*)
CL_GetServerList:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	cmp eax, 0x1
	jz CL_GetServerList_10
	cmp eax, 0x2
	jz CL_GetServerList_20
	test eax, eax
	jz CL_GetServerList_30
	pop ebp
	ret
CL_GetServerList_30:
	mov eax, [ebp+0xc]
	mov dword [eax], cls+0x148
	mov eax, [cls+0x144]
	mov edx, [ebp+0x10]
	mov [edx], eax
	pop ebp
	ret
CL_GetServerList_10:
	mov eax, [ebp+0xc]
	mov dword [eax], cls+0x4b5c
	mov eax, [cls+0x4b58]
	mov edx, [ebp+0x10]
	mov [edx], eax
	pop ebp
	ret
CL_GetServerList_20:
	mov eax, [ebp+0xc]
	mov dword [eax], cls+0x2d75e0
	mov eax, [cls+0x2d75dc]
	mov edx, [ebp+0x10]
	mov [edx], eax
	pop ebp
	ret
	nop


;CL_InitDedicated()
CL_InitDedicated:
	push ebp
	mov ebp, esp
	sub esp, 0x48
	mov edx, [onlinegame]
	test edx, edx
	jz CL_InitDedicated_10
CL_InitDedicated_20:
	mov dword [ebp-0x38], 0x1
	mov dword [ebp-0x34], 0x400
	mov dword [ebp-0x30], 0x3ff
	mov dword [ebp-0x2c], 0x3fe
	mov dword [ebp-0x28], 0x2
	mov dword [ebp-0x24], 0x11
	mov dword [ebp-0x20], _cstring_code_post_gfx_mp
	mov dword [ebp-0x1c], 0x0
	mov dword [ebp-0x18], _cstring_common_mp
	mov dword [ebp-0x14], _cstring_localized_code_p
	mov dword [ebp-0x10], _cstring_localized_common
	call DB_ModFileExists
	xor edx, edx
	test al, al
	mov eax, _cstring_mod
	cmovnz edx, eax
	mov [ebp-0xc], edx
	lea eax, [ebp-0x38]
	mov [esp], eax
	call R_MakeDedicated
	call Sys_HideSplashWindow
	call Sys_ShowConsole
	call Sys_NormalExit
	leave
	ret
CL_InitDedicated_10:
	mov dword [esp+0xc], _cstring_current_game_is_
	mov dword [esp+0x8], 0x80
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_onlinegame
	call Cvar_RegisterBool
	mov [onlinegame], eax
	jmp CL_InitDedicated_20
	nop


;CL_InitDownloads(int)
CL_InitDownloads:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x410
	mov esi, [ebp+0x8]
	mov dword [esp+0x4], 0x7
	mov dword [esp], _cstring_nizml
	call FS_ShiftStr
	mov dword [cls+0x2dc6a8], 0x0
	mov byte [cls+0x2dc098], 0x0
	mov byte [cls+0x2dc198], 0x0
	mov byte [cls+0x2dc6bc], 0x0
	mov dword [cls+0x2dc6b4], 0x0
	mov dword [cls+0x2dc6b0], 0x0
	mov dword [cls+0x2dc6b8], 0x0
	call DL_CancelDownload
	mov eax, com_sv_running
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz CL_InitDownloads_10
	mov eax, [cl_allowDownload]
	cmp byte [eax+0xc], 0x0
	jz CL_InitDownloads_20
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x400
	mov dword [esp], cls+0x2dc2a8
	call FS_CompareWithServerFiles
	cmp eax, 0x1
	jz CL_InitDownloads_30
	cmp eax, 0x2
	jz CL_InitDownloads_40
CL_InitDownloads_10:
	mov [esp], esi
	call CL_DownloadsComplete
CL_InitDownloads_60:
	add esp, 0x410
	pop ebx
	pop esi
	pop ebp
	ret
CL_InitDownloads_20:
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x400
	lea ebx, [ebp-0x408]
	mov [esp], ebx
	call FS_CompareWithServerFiles
	cmp eax, 0x1
	jz CL_InitDownloads_50
	cmp eax, 0x2
	jnz CL_InitDownloads_10
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_s_is_different_f
	mov dword [esp], 0x2
	call Com_Error
	jmp CL_InitDownloads_10
CL_InitDownloads_30:
	mov dword [esp+0x8], cls+0x2dc2a8
	mov dword [esp+0x4], _cstring_need_files_s
	mov dword [esp], 0xe
	call Com_Printf
	cmp byte [cls+0x2dc2a8], 0x0
	jz CL_InitDownloads_10
	mov eax, esi
	shl eax, 0x4
	mov dword [eax+clientUIActives+0xc], 0x5
	mov [esp], esi
	call CL_NextDownload
	jmp CL_InitDownloads_60
CL_InitDownloads_50:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_you_are_missing_
	mov dword [esp], 0x2
	call Com_Error
	jmp CL_InitDownloads_10
CL_InitDownloads_40:
	mov dword [esp+0x8], cls+0x2dc2a8
	mov dword [esp+0x4], _cstring_s_is_different_f
	mov dword [esp], 0x2
	call Com_Error
	jmp CL_InitDownloads_10
	nop


;CL_IsClientLocal(int)
CL_IsClientLocal:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	cmp dword [clientUIActives+0xc], 0x7
	jg CL_IsClientLocal_10
CL_IsClientLocal_20:
	xor eax, eax
	leave
	ret
CL_IsClientLocal_10:
	mov dword [esp], 0x0
	call CG_GetClientNum
	cmp eax, [ebp+0x8]
	jnz CL_IsClientLocal_20
	mov eax, 0x1
	leave
	ret
	nop


;CL_Snd_Restart_f()
CL_Snd_Restart_f:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xbc
	mov eax, com_sv_running
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz CL_Snd_Restart_f_10
	mov dword [esp+0x4], _cstring_listen_server_ca1
	mov dword [esp], 0x0
	call Com_Printf
	add esp, 0xbc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CL_Snd_Restart_f_10:
	mov dword [esp], 0xa00000
	call Z_VirtualAllocInternal
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x1
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0xa00000
	lea esi, [ebp-0x34]
	mov [esp], esi
	call MemFile_InitForWriting
	mov [esp], esi
	call SND_Save
	mov dword [esp+0x4], 0xffffffff
	mov [esp], esi
	call MemFile_StartSegment
	mov eax, [ebp-0x2c]
	mov [esp], eax
	call Z_VirtualAllocInternal
	mov edi, eax
	mov eax, [ebp-0x2c]
	mov [esp+0x8], eax
	mov eax, [ebp-0x34]
	mov [esp+0x4], eax
	mov [esp], edi
	call memcpy
	mov eax, [ebp-0x34]
	mov [esp], eax
	call Z_VirtualFreeInternal
	lea ebx, [ebp-0xa4]
	mov [esp], ebx
	call SND_SaveListeners
	call SND_Shutdown
	call SND_InitDriver
	call SND_Init
	mov [esp], ebx
	call SND_RestoreListeners
	call CL_Vid_Restart_f
	mov dword [esp+0xc], 0x0
	mov [esp+0x8], edi
	mov eax, [ebp-0x2c]
	mov [esp+0x4], eax
	mov [esp], esi
	call MemFile_InitForReading
	mov [esp], esi
	call SND_Restore
	mov dword [esp+0x4], 0xffffffff
	mov [esp], esi
	call MemFile_MoveToSegment
	mov [esp], edi
	call Z_VirtualFreeInternal
	add esp, 0xbc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;CL_Vid_Restart_f()
CL_Vid_Restart_f:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x50c
	mov eax, [cls+0x2dc6ac]
	mov [ebp-0x4f8], eax
	mov dword [cls+0x2dc6ac], 0x0
	mov eax, com_sv_running
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz CL_Vid_Restart_f_10
	mov eax, [clientUIActives+0xc]
	mov [ebp-0x4f0], eax
	cmp byte [clientUIActives+0x2], 0x0
	jnz CL_Vid_Restart_f_20
	xor edi, edi
	mov dword [ebp-0x4ec], 0x0
CL_Vid_Restart_f_150:
	mov eax, com_expectedHunkUsage
	mov dword [eax], 0x0
	mov byte [g_waitingForServer], 0x0
	mov dword [esp], 0x0
	call FS_DisablePureCheck
	mov dword [esp], 0x1
	call SND_StopSounds
	call Com_SyncThreads
	mov ecx, [cls+0x4]
	test ecx, ecx
	jnz CL_Vid_Restart_f_30
CL_Vid_Restart_f_170:
	call R_SyncRenderThread
	mov eax, 0x1
	call CL_ShutdownRenderer
	call StatMon_Reset
	mov dword [cls+0x108], 0x0
	call FS_ShutDownIwdPureCheckReferences
	mov dword [esp], _cstring_vdr
	call va
	mov ebx, eax
	mov edx, [clientConnections+0x12c]
	mov eax, edx
	sub eax, [clientConnections+0x130]
	add eax, 0xffffff80
	jg CL_Vid_Restart_f_40
CL_Vid_Restart_f_160:
	add edx, 0x1
	mov [clientConnections+0x12c], edx
	mov dword [esp+0x8], 0x400
	and edx, 0x7f
	shl edx, 0xa
	lea eax, [edx+clientConnections+0x134]
	mov [esp+0x4], eax
	mov [esp], ebx
	call MSG_WriteReliableCommandToBuffer
	call Com_Restart
	mov dword [esp+0x14], _cstring_the_current_lang
	mov dword [esp+0x10], 0x21
	mov dword [esp+0xc], 0xe
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_loc_language
	call Cvar_RegisterInt
	mov dword [esp+0xc], _cstring_turn_on_string_t
	mov dword [esp+0x8], 0x20
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_loc_translate
	call Cvar_RegisterBool
	mov dword [esp+0xc], _cstring_ignore_localized
	mov dword [esp+0x8], 0xa0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_fs_ignorelocaliz
	call Cvar_RegisterBool
	mov eax, [clientConnections+0x128]
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call FS_ConditionalRestart
	test eax, eax
	jnz CL_Vid_Restart_f_50
	mov edx, [cls+0x2dc6ac]
	test edx, edx
	jz CL_Vid_Restart_f_60
CL_Vid_Restart_f_50:
	mov byte [ebp-0x4f1], 0x1
CL_Vid_Restart_f_180:
	call SEH_UpdateLanguageInfo
	mov dword [esp+0x4], 0x0
	mov ebx, cl_paused
	mov eax, [ebx]
	mov [esp], eax
	call Cvar_SetInt
	mov dword [esp+0x4], _cstring__initializing_re
	mov dword [esp], 0xe
	call Com_Printf
	mov dword [ebp-0x64], 0x1
	mov dword [ebp-0x60], 0x400
	mov dword [ebp-0x5c], 0x3ff
	mov dword [ebp-0x58], 0x3fe
	mov dword [ebp-0x54], 0x2
	mov dword [ebp-0x50], 0x11
	mov dword [ebp-0x4c], _cstring_code_post_gfx_mp
	mov dword [ebp-0x48], _cstring_ui_mp
	mov dword [ebp-0x44], _cstring_common_mp
	mov dword [ebp-0x40], _cstring_localized_code_p
	mov dword [ebp-0x3c], _cstring_localized_common
	call DB_ModFileExists
	xor edx, edx
	test al, al
	mov eax, _cstring_mod
	cmovnz edx, eax
	mov [ebp-0x38], edx
	lea esi, [ebp-0x64]
	mov [esp], esi
	call R_ConfigureRenderer
	mov dword [esp+0x4], 0x0
	mov eax, [ebx]
	mov [esp], eax
	call Cvar_SetInt
	call CL_InitRenderer
	cmp byte [clientUIActives+0x1], 0x0
	jz CL_Vid_Restart_f_70
	mov eax, [cls+0x110]
	test eax, eax
	jz CL_Vid_Restart_f_80
CL_Vid_Restart_f_210:
	mov dword [cls+0x4], 0x1
CL_Vid_Restart_f_70:
	mov eax, [ebp-0x4f0]
	sub eax, 0x6
	cmp eax, 0x7ffffff9
	ja CL_Vid_Restart_f_90
	mov eax, [ebp-0x4f8]
	test eax, eax
	jz CL_Vid_Restart_f_100
CL_Vid_Restart_f_90:
	cmp byte [ebp-0x4f1], 0x0
	jz CL_Vid_Restart_f_110
	mov eax, com_dedicated
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	jz CL_Vid_Restart_f_120
CL_Vid_Restart_f_110:
	test edi, edi
	jz CL_Vid_Restart_f_130
	cmp byte [clientUIActives+0x2], 0x0
	jnz CL_Vid_Restart_f_140
CL_Vid_Restart_f_190:
	mov [esp], edi
	call Z_VirtualFreeInternal
CL_Vid_Restart_f_130:
	add esp, 0x50c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CL_Vid_Restart_f_20:
	mov dword [esp], 0xa00000
	call Z_VirtualAllocInternal
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x1
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0xa00000
	lea ebx, [ebp-0x34]
	mov [esp], ebx
	call MemFile_InitForWriting
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], ebx
	mov dword [esp], 0x0
	call CL_ArchiveClientState
	mov dword [esp+0x4], 0xffffffff
	mov [esp], ebx
	call MemFile_StartSegment
	mov eax, [ebp-0x2c]
	mov [ebp-0x4ec], eax
	mov [esp], eax
	call Z_VirtualAllocInternal
	mov edi, eax
	mov eax, [ebp-0x4ec]
	mov [esp+0x8], eax
	mov eax, [ebp-0x34]
	mov [esp+0x4], eax
	mov [esp], edi
	call memcpy
	mov eax, [ebp-0x34]
	mov [esp], eax
	call Z_VirtualFreeInternal
	jmp CL_Vid_Restart_f_150
CL_Vid_Restart_f_10:
	mov dword [esp+0x4], _cstring_listen_server_ca2
	mov dword [esp], 0x0
	call Com_Printf
	add esp, 0x50c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CL_Vid_Restart_f_40:
	mov dword [esp+0x4], _cstring_exe_err_client_c
	mov dword [esp], 0x2
	call Com_Error
	mov edx, [clientConnections+0x12c]
	jmp CL_Vid_Restart_f_160
CL_Vid_Restart_f_30:
	mov dword [esp], 0x0
	call CL_ShutdownCGame
	call Phys_Shutdown
	call CL_ShutdownUI
	mov dword [cls+0x4], 0x0
	jmp CL_Vid_Restart_f_170
CL_Vid_Restart_f_60:
	mov byte [ebp-0x4f1], 0x0
	jmp CL_Vid_Restart_f_180
CL_Vid_Restart_f_140:
	mov dword [esp+0xc], 0x0
	mov [esp+0x8], edi
	mov eax, [ebp-0x4ec]
	mov [esp+0x4], eax
	lea ebx, [ebp-0x34]
	mov [esp], ebx
	call MemFile_InitForReading
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], ebx
	mov dword [esp], 0x0
	call CL_ArchiveClientState
	mov dword [esp+0x4], 0xffffffff
	mov [esp], ebx
	call MemFile_MoveToSegment
	jmp CL_Vid_Restart_f_190
CL_Vid_Restart_f_120:
	mov dword [esp], 0x0
	call LiveStorage_ReadStats
	jmp CL_Vid_Restart_f_110
CL_Vid_Restart_f_100:
	mov dword [esp+0x4], 0x0
	mov dword [esp], 0x0
	call CL_GetConfigString
	mov dword [esp+0x4], _cstring_mapname
	mov [esp], eax
	call Info_ValueForKey
	mov dword [esp+0x8], 0x40
	mov [esp+0x4], eax
	lea ebx, [ebp-0xa4]
	mov [esp], ebx
	call Q_strncpyz
	mov [esp], ebx
	call DB_AddUserMapDir
	mov dword [esp], 0x0
	call DB_ResetZoneSize
	mov [esp+0xc], ebx
	mov dword [esp+0x8], _cstring_s_load
	mov dword [esp+0x4], 0x40
	lea ebx, [ebp-0xe4]
	mov [esp], ebx
	call Com_sprintf
	mov [ebp-0x64], ebx
	mov dword [ebp-0x60], 0x20
	mov dword [ebp-0x5c], 0x60
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x1
	mov [esp], esi
	call DB_LoadXAssets
	call DB_SyncXAssets
	call DB_UpdateDebugZone
	mov dword [esp], 0x0
	call CL_InitCGame
	call FS_ReferencedIwdPureChecksums
	mov ebx, eax
	mov dword [esp+0x8], _cstring_va_
	mov dword [esp+0x4], 0x400
	lea esi, [ebp-0x4e4]
	mov [esp], esi
	call Com_sprintf
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x400
	mov [esp], esi
	call Q_strncat
	add byte [ebp-0x4e4], 0xd
	add byte [ebp-0x4e3], 0xf
	mov edx, [clientConnections+0x12c]
	mov eax, edx
	sub eax, [clientConnections+0x130]
	add eax, 0xffffff80
	jg CL_Vid_Restart_f_200
CL_Vid_Restart_f_220:
	lea eax, [edx+0x1]
	mov [clientConnections+0x12c], eax
	mov dword [esp+0x8], 0x400
	and eax, 0x7f
	shl eax, 0xa
	add eax, clientConnections+0x134
	mov [esp+0x4], eax
	mov [esp], esi
	call MSG_WriteReliableCommandToBuffer
	jmp CL_Vid_Restart_f_90
CL_Vid_Restart_f_80:
	call CL_InitUI
	jmp CL_Vid_Restart_f_210
CL_Vid_Restart_f_200:
	mov dword [esp+0x4], _cstring_exe_err_client_c
	mov dword [esp], 0x2
	call Com_Error
	mov edx, [clientConnections+0x12c]
	jmp CL_Vid_Restart_f_220


;CL_VoiceTransmit(int)
CL_VoiceTransmit:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	call Sys_Milliseconds
	sub eax, [cl_voiceCommunication+0xa2c]
	cmp eax, 0xc7
	jg CL_VoiceTransmit_10
	cmp dword [cl_voiceCommunication+0xa28], 0x9
	jle CL_VoiceTransmit_20
CL_VoiceTransmit_10:
	mov eax, [cl_voiceCommunication+0xa28]
	test eax, eax
	jle CL_VoiceTransmit_30
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CL_WriteVoicePacket
	mov dword [cl_voiceCommunication+0xa28], 0x0
CL_VoiceTransmit_30:
	call Sys_Milliseconds
	mov [cl_voiceCommunication+0xa2c], eax
CL_VoiceTransmit_20:
	leave
	ret
	nop


;CL_CheckForResend(int)
CL_CheckForResend:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x118c
	mov edx, [clientUIActives+0xc]
	lea eax, [edx-0x3]
	cmp eax, 0x1
	jbe CL_CheckForResend_10
	cmp edx, 0x6
	jz CL_CheckForResend_20
CL_CheckForResend_40:
	add esp, 0x118c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CL_CheckForResend_10:
	cmp edx, 0x6
	jnz CL_CheckForResend_30
CL_CheckForResend_20:
	mov ecx, [cls+0x118]
	mov eax, ecx
	sub eax, [clientConnections+0x8]
	cmp eax, 0x63
	jle CL_CheckForResend_40
CL_CheckForResend_80:
	mov ebx, [clientConnections+0x4018c]
	test ebx, ebx
	jnz CL_CheckForResend_40
	mov [clientConnections+0x1c], ecx
	add dword [clientConnections+0x20], 0x1
	cmp edx, 0x4
	jz CL_CheckForResend_50
	cmp edx, 0x6
	jz CL_CheckForResend_60
	cmp edx, 0x3
	jz CL_CheckForResend_70
	mov dword [esp+0x4], _cstring_cl_checkforresen
	mov dword [esp], 0x1
	call Com_Error
	jmp CL_CheckForResend_40
CL_CheckForResend_30:
	mov ecx, [cls+0x118]
	mov eax, ecx
	sub eax, [clientConnections+0x1c]
	cmp eax, 0xbb7
	jg CL_CheckForResend_80
	jmp CL_CheckForResend_40
CL_CheckForResend_50:
	mov dword [esp+0x4], 0x2
	mov edx, [ebp+0x8]
	mov [esp], edx
	call Cvar_InfoString
	mov dword [esp+0x8], 0x400
	mov [esp+0x4], eax
	lea ebx, [ebp-0x898]
	mov [esp], ebx
	call Q_strncpyz
	mov dword [esp+0x4], 0x6
	mov dword [esp], _cstring_i
	call va
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_protocol
	mov edi, ebx
	mov [esp], ebx
	call Info_SetValueForKey
	mov eax, [clientConnections+0x124]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_i
	call va
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_challenge
	mov [esp], ebx
	call Info_SetValueForKey
	mov eax, [clientConnections]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_i
	call va
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_qport
	mov [esp], ebx
	call Info_SetValueForKey
	mov dword [ebp-0x498], 0x6e6e6f63
	mov dword [ebp-0x494], 0x20746365
	mov byte [ebp-0x490], 0x22
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	repne scasb
	mov ebx, ecx
	not ebx
	lea esi, [ebx-0x1]
	lea eax, [ebp-0x48f]
	mov [esp+0x8], esi
	lea edx, [ebp-0x898]
	mov [esp+0x4], edx
	mov [esp], eax
	call memcpy
	mov byte [ebp+esi-0x48f], 0x22
	add ebx, 0x9
	mov byte [ebp+ebx-0x498], 0x0
	mov [ebp-0x1c], ebx
	lea esi, [ebp-0xc99]
	mov [esp+0x8], ebx
	lea edi, [ebp-0x498]
	mov [esp+0x4], edi
	mov [esp], esi
	call memcpy
	lea eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov dword [esp], 0x2
	call PbClientConnecting
	mov ecx, [clientConnections+0x10]
	mov [ebp-0x28], ecx
	mov edx, [clientConnections+0x14]
	mov [ebp-0x24], edx
	mov eax, [clientConnections+0x18]
	mov [ebp-0x20], eax
	mov [esp+0x14], ebx
	mov [esp+0x10], edi
	mov [esp+0x4], ecx
	mov [esp+0x8], edx
	mov [esp+0xc], eax
	mov edi, [ebp+0x8]
	mov [esp], edi
	call NET_OutOfBandData
	mov eax, dvar_modifiedFlags
	and dword [eax], 0xfffffffd
	jmp CL_CheckForResend_40
CL_CheckForResend_60:
	mov dword [esp+0x8], 0x800
	mov dword [esp+0x4], _ZZ17CL_CheckForResendiE9msgBuffer
	lea eax, [ebp-0x98]
	mov [esp], eax
	call MSG_Init
	mov dword [esp+0x4], _cstring_stats
	lea edx, [ebp-0x98]
	mov [esp], edx
	call MSG_WriteString
	mov esi, [cls+0x118]
	movzx ebx, byte [clientConnections+0x615bc]
	mov edi, 0xffffffff
	xor ecx, ecx
	mov edx, clientConnections
CL_CheckForResend_110:
	mov eax, ebx
	sar eax, cl
	test al, 0x1
	jz CL_CheckForResend_90
	mov eax, [edx+0x615c0]
	test eax, eax
	jz CL_CheckForResend_100
	cmp eax, esi
	jge CL_CheckForResend_90
	mov esi, eax
	mov edi, ecx
CL_CheckForResend_90:
	add ecx, 0x1
	add edx, 0x4
	cmp ecx, 0x7
	jnz CL_CheckForResend_110
CL_CheckForResend_160:
	mov ebx, [ebp+0x8]
	mov [esp], ebx
	call LiveStorage_DoWeHaveStats
	test al, al
	jz CL_CheckForResend_120
	mov [esp], ebx
	call LiveStorage_GetStatBuffer
	lea ecx, [edi+edi*4]
	mov edx, ecx
	shl edx, 0x5
	sub edx, ecx
	lea esi, [edx*8]
	lea ebx, [eax+esi]
CL_CheckForResend_130:
	mov eax, [clientConnections]
	mov [esp+0x4], eax
	lea eax, [ebp-0x98]
	mov [esp], eax
	call MSG_WriteShort
	mov [esp+0x4], edi
	lea edx, [ebp-0x98]
	mov [esp], edx
	call MSG_WriteByte
	mov eax, 0x2000
	sub eax, esi
	cmp eax, 0x4d9
	mov edx, 0x4d8
	cmovge eax, edx
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	lea ebx, [ebp-0x98]
	mov [esp], ebx
	call MSG_WriteData
	mov eax, [cls+0x118]
	mov [edi*4+clientConnections+0x615c0], eax
	mov [clientConnections+0x8], eax
	mov ebx, [clientConnections+0x10]
	mov [ebp-0x4c], ebx
	mov ecx, [clientConnections+0x14]
	mov [ebp-0x48], ecx
	mov edx, [clientConnections+0x18]
	mov [ebp-0x44], edx
	mov eax, [ebp-0x84]
	mov [esp+0x14], eax
	mov eax, [ebp-0x90]
	mov [esp+0x10], eax
	mov [esp+0x4], ebx
	mov [esp+0x8], ecx
	mov [esp+0xc], edx
	mov edi, [ebp+0x8]
	mov [esp], edi
	call NET_OutOfBandData
	jmp CL_CheckForResend_40
CL_CheckForResend_120:
	lea ebx, [ebp-0x1171]
	mov dword [esp+0x8], 0x4d8
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call memset
	lea edx, [edi+edi*4]
	mov eax, edx
	shl eax, 0x5
	sub eax, edx
	lea esi, [eax*8]
	jmp CL_CheckForResend_130
CL_CheckForResend_70:
	mov eax, net_lanauthorize
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz CL_CheckForResend_140
	mov ecx, [clientConnections+0x10]
	mov [ebp-0x40], ecx
	mov edx, [clientConnections+0x14]
	mov [ebp-0x3c], edx
	mov eax, [clientConnections+0x18]
	mov [ebp-0x38], eax
	mov [esp], ecx
	mov [esp+0x4], edx
	mov [esp+0x8], eax
	call Sys_IsLANAddress
	test eax, eax
	jnz CL_CheckForResend_150
CL_CheckForResend_140:
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CL_RequestAuthorization
CL_CheckForResend_150:
	lea ebx, [ebp-0xc99]
	mov dword [ebp-0xc99], 0x63746567
	mov dword [ebp-0xc95], 0x6c6c6168
	mov dword [ebp-0xc91], 0x65676e65
	mov byte [ebp-0xc8d], 0x0
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, ebx
	repne scasb
	not ecx
	sub ecx, 0x1
	mov [ebp-0x1c], ecx
	lea eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov dword [esp], 0x1
	call PbClientConnecting
	lea ebx, [ebp-0x6d]
	mov eax, ebx
	call CL_BuildMd5StrFromCDKey
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_getchallenge_0_s
	call va
	mov ebx, [clientConnections+0x10]
	mov [ebp-0x34], ebx
	mov ecx, [clientConnections+0x14]
	mov [ebp-0x30], ecx
	mov edx, [clientConnections+0x18]
	mov [ebp-0x2c], edx
	mov [esp+0x10], eax
	mov [esp+0x4], ebx
	mov [esp+0x8], ecx
	mov [esp+0xc], edx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call NET_OutOfBandPrint
	jmp CL_CheckForResend_40
CL_CheckForResend_100:
	mov edi, ecx
	jmp CL_CheckForResend_160
	nop


;CL_DrawTextRotate(ScreenPlacement const*, char const*, int, Font_s*, float, float, float, int, int, float, float, float const*, int)
CL_DrawTextRotate:
	push ebp
	mov ebp, esp
	sub esp, 0x38
	mov eax, [ebp+0x28]
	mov [esp+0x18], eax
	mov eax, [ebp+0x24]
	mov [esp+0x14], eax
	lea eax, [ebp+0x30]
	mov [esp+0x10], eax
	lea eax, [ebp+0x2c]
	mov [esp+0xc], eax
	lea eax, [ebp+0x1c]
	mov [esp+0x8], eax
	lea eax, [ebp+0x18]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call ScrPlace_ApplyRect
	mov eax, [ebp+0x38]
	mov [esp+0x24], eax
	mov eax, [ebp+0x34]
	mov [esp+0x20], eax
	mov eax, [ebp+0x20]
	mov [esp+0x1c], eax
	mov eax, [ebp+0x30]
	mov [esp+0x18], eax
	mov eax, [ebp+0x2c]
	mov [esp+0x14], eax
	mov eax, [ebp+0x1c]
	mov [esp+0x10], eax
	mov eax, [ebp+0x18]
	mov [esp+0xc], eax
	mov eax, [ebp+0x14]
	mov [esp+0x8], eax
	mov eax, [ebp+0x10]
	mov [esp+0x4], eax
	mov eax, [ebp+0xc]
	mov [esp], eax
	call R_AddCmdDrawText
	leave
	ret
	nop


;CL_LocalServers_f()
CL_LocalServers_f:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov dword [esp+0x4], _cstring_scanning_for_ser
	mov dword [esp], 0x0
	call Com_Printf
	mov dword [cls+0x144], 0x0
	mov dword [cls+0x2dbfe0], 0x0
	mov dword [ebp-0x3c], 0x0
	mov esi, cls
	mov edi, cls+0x148
CL_LocalServers_f_10:
	movzx ebx, byte [esi+0x15b]
	mov dword [esp+0x8], 0x94
	mov dword [esp+0x4], 0x0
	mov [esp], edi
	call Com_Memset
	mov [esi+0x15b], bl
	add dword [ebp-0x3c], 0x1
	add edi, 0x94
	add esi, 0x94
	cmp dword [ebp-0x3c], 0x80
	jnz CL_LocalServers_f_10
	mov dword [esp+0x8], 0xc
	mov dword [esp+0x4], 0x0
	lea eax, [ebp-0x30]
	mov [esp], eax
	call Com_Memset
	mov esi, 0x2
CL_LocalServers_f_30:
	mov ebx, 0x7120
CL_LocalServers_f_20:
	mov [esp], ebx
	call BigShort
	mov [ebp-0x28], ax
	mov dword [ebp-0x30], 0x3
	mov dword [ebp-0x24], 0x3
	mov edx, [ebp-0x2c]
	mov [ebp-0x20], edx
	mov eax, [ebp-0x28]
	mov [ebp-0x1c], eax
	mov dword [esp+0x14], 0xb
	mov dword [esp+0x10], _cstring_getinfo_xxx
	mov dword [esp+0x4], 0x3
	mov [esp+0x8], edx
	mov [esp+0xc], eax
	mov dword [esp], 0x0
	call NET_OutOfBandData
	add ebx, 0x1
	cmp ebx, 0x7124
	jnz CL_LocalServers_f_20
	sub esi, 0x1
	jnz CL_LocalServers_f_30
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;CL_StartHunkUsers()
CL_StartHunkUsers:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	cmp byte [clientUIActives+0x1], 0x0
	jz CL_StartHunkUsers_10
	mov eax, [cls+0x110]
	test eax, eax
	jz CL_StartHunkUsers_20
	mov dword [cls+0x4], 0x1
CL_StartHunkUsers_10:
	leave
	ret
CL_StartHunkUsers_20:
	call CL_InitUI
	mov dword [cls+0x4], 0x1
	jmp CL_StartHunkUsers_10
	nop


;set_cl_punkbuster(char*)
set_cl_punkbuster:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x4], _cstring_0
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	setnz al
	movzx eax, al
	mov [esp+0x4], eax
	mov dword [esp], _cstring_cl_punkbuster
	call Cvar_SetBoolByName
	leave
	ret
	nop
	add [eax], al


;CL_Configstrings_f()
CL_Configstrings_f:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	cmp dword [clientUIActives+0xc], 0x9
	jz CL_Configstrings_f_10
	mov dword [esp+0x4], _cstring_not_connected_to
	mov dword [esp], 0x0
	call Com_Printf
CL_Configstrings_f_30:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
CL_Configstrings_f_10:
	xor ebx, ebx
	mov esi, clients
	jmp CL_Configstrings_f_20
CL_Configstrings_f_40:
	add ebx, 0x1
	add esi, 0x4
	cmp ebx, 0x98a
	jz CL_Configstrings_f_30
CL_Configstrings_f_20:
	mov eax, [esi+0x2fbc]
	test eax, eax
	jz CL_Configstrings_f_40
	add eax, clients+0x55e4
	mov [esp+0xc], eax
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_4i_s
	mov dword [esp], 0x0
	call Com_Printf
	jmp CL_Configstrings_f_40


;CL_DisconnectError(char const*)
CL_DisconnectError:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	mov [esp], eax
	call SEH_SafeTranslateString
	mov ebx, eax
	mov dword [esp], _cstring_exe_serverdiscon
	call SEH_SafeTranslateString
	mov [esp+0x4], ebx
	mov [esp], eax
	call UI_ReplaceConversionString
	mov [esp+0x4], eax
	mov dword [esp], 0x3
	call Com_Error
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;CL_OpenedIWDList_f()
CL_OpenedIWDList_f:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	lea eax, [ebp-0x10]
	mov [esp+0x4], eax
	lea eax, [ebp-0xc]
	mov [esp], eax
	call FS_LoadedIwds
	mov eax, [ebp-0x10]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_opened_iwd_names
	mov dword [esp], 0x0
	call Com_Printf
	leave
	ret
	nop


;CL_ReadDemoMessage(int)
CL_ReadDemoMessage:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x50
	mov eax, [clientConnections+0x401a0]
	test eax, eax
	jz CL_ReadDemoMessage_10
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1
	lea eax, [ebp-0x9]
	mov [esp], eax
	call FS_Read
	sub eax, 0x1
	jz CL_ReadDemoMessage_20
CL_ReadDemoMessage_10:
	mov eax, [ebp+0x8]
	call CL_DemoCompleted
CL_ReadDemoMessage_50:
	add esp, 0x50
	pop ebx
	pop esi
	pop ebp
	ret
CL_ReadDemoMessage_20:
	movzx eax, byte [ebp-0x9]
	test al, al
	jnz CL_ReadDemoMessage_30
	mov dword [esp+0x4], 0x20000
	lea esi, [ebp-0x18]
	mov [esp], esi
	call _ZN10LargeLocalC1Ei
	mov [esp], esi
	call _ZN10LargeLocal6GetBufEv
	mov ebx, eax
	mov eax, [clientConnections+0x401a0]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x4
	lea eax, [ebp-0x10]
	mov [esp], eax
	call FS_Read
	cmp eax, 0x4
	jz CL_ReadDemoMessage_40
CL_ReadDemoMessage_70:
	mov eax, [ebp+0x8]
	call CL_DemoCompleted
CL_ReadDemoMessage_110:
	mov [esp], esi
	call _ZN10LargeLocalD1Ev
	add esp, 0x50
	pop ebx
	pop esi
	pop ebp
	ret
CL_ReadDemoMessage_30:
	sub al, 0x1
	jnz CL_ReadDemoMessage_50
	mov eax, [clientConnections+0x401a0]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x4
	lea eax, [ebp-0x10]
	mov [esp], eax
	call FS_Read
	cmp eax, 0x4
	jnz CL_ReadDemoMessage_10
	mov eax, [ebp-0x10]
	cmp eax, 0xff
	jbe CL_ReadDemoMessage_60
	mov dword [esp+0x4], _cstring_demo_file_was_co
	mov dword [esp], 0xe
	call Com_Printf
	jmp CL_ReadDemoMessage_10
CL_ReadDemoMessage_40:
	mov eax, [ebp-0x10]
	mov [clientConnections+0x20134], eax
	mov dword [esp+0x8], 0x20000
	mov [esp+0x4], ebx
	lea ebx, [ebp-0x40]
	mov [esp], ebx
	call MSG_Init
	mov eax, [clientConnections+0x401a0]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x4
	lea eax, [ebp-0x2c]
	mov [esp], eax
	call FS_Read
	cmp eax, 0x4
	jnz CL_ReadDemoMessage_70
	mov eax, [ebp-0x2c]
	cmp eax, 0xffffffff
	jz CL_ReadDemoMessage_70
	cmp eax, [ebp-0x30]
	jle CL_ReadDemoMessage_80
	mov dword [esp+0x4], _cstring_cl_readdemomessa
	mov dword [esp], 0x2
	call Com_Error
CL_ReadDemoMessage_80:
	mov eax, [clientConnections+0x401a0]
	mov [esp+0x8], eax
	mov eax, [ebp-0x2c]
	mov [esp+0x4], eax
	mov eax, [ebp-0x38]
	mov [esp], eax
	call FS_Read
	cmp eax, [ebp-0x2c]
	jz CL_ReadDemoMessage_90
	mov dword [esp+0x4], _cstring_demo_file_was_tr
	mov dword [esp], 0xe
	call Com_Printf
	jmp CL_ReadDemoMessage_70
CL_ReadDemoMessage_60:
	lea ebx, [eax+eax*2]
	shl ebx, 0x4
	add ebx, clients+0x666c0
	lea esi, [ebx+0xc]
	mov eax, [clientConnections+0x401a0]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0xc
	lea eax, [ebx+0x10]
	mov [esp], eax
	call FS_Read
	mov eax, [clientConnections+0x401a0]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0xc
	lea eax, [ebx+0x1c]
	mov [esp], eax
	call FS_Read
	mov eax, [clientConnections+0x401a0]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x4
	lea eax, [ebx+0x2c]
	mov [esp], eax
	call FS_Read
	mov eax, [clientConnections+0x401a0]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x4
	lea eax, [ebx+0x28]
	mov [esp], eax
	call FS_Read
	mov eax, [clientConnections+0x401a0]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x4
	mov [esp], esi
	call FS_Read
	mov eax, [clientConnections+0x401a0]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0xc
	add ebx, 0x30
	mov [esp], ebx
	call FS_Read
	mov eax, [ebp-0x10]
	add eax, 0x1
	mov [clients+0x696cc], eax
	jmp CL_ReadDemoMessage_50
CL_ReadDemoMessage_90:
	mov eax, [cls+0x118]
	mov [clientConnections+0xc], eax
	mov dword [ebp-0x24], 0x0
	mov [esp], ebx
	call MSG_ReadLong
	mov [clientConnections+0x130], eax
	mov ecx, [clientConnections+0x12c]
	lea edx, [ecx-0x80]
	cmp eax, edx
	jge CL_ReadDemoMessage_100
	mov [clientConnections+0x130], ecx
	jmp CL_ReadDemoMessage_110
CL_ReadDemoMessage_100:
	mov [esp+0x4], ebx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CL_ParseServerMessage
	jmp CL_ReadDemoMessage_110
	mov ebx, eax
	mov [esp], esi
	call _ZN10LargeLocalD1Ev
	mov [esp], ebx
	call _Unwind_Resume
	nop


;CL_DrawTextPhysical(char const*, int, Font_s*, float, float, float, float, float const*, int)
CL_DrawTextPhysical:
	push ebp
	mov ebp, esp
	sub esp, 0x38
	mov eax, [ebp+0x28]
	mov [esp+0x24], eax
	mov eax, [ebp+0x24]
	mov [esp+0x20], eax
	mov dword [esp+0x1c], 0x0
	mov eax, [ebp+0x20]
	mov [esp+0x18], eax
	mov eax, [ebp+0x1c]
	mov [esp+0x14], eax
	mov eax, [ebp+0x18]
	mov [esp+0x10], eax
	mov eax, [ebp+0x14]
	mov [esp+0xc], eax
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call R_AddCmdDrawText
	leave
	ret
	nop


;CL_OpenScriptMenu_f()
CL_OpenScriptMenu_f:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov ebx, cmd_args
	mov eax, [ebx]
	cmp dword [ebx+eax*4+0x44], 0x3
	jz CL_OpenScriptMenu_f_10
	mov dword [esp+0x4], _cstring_usage_openscript
	mov dword [esp], 0x0
	call Com_Printf
	mov dword [esp+0x4], _cstring_example_openscri
	mov dword [esp], 0x0
	call Com_Printf
CL_OpenScriptMenu_f_20:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CL_OpenScriptMenu_f_10:
	mov dword [esp], 0x0
	call UI_AllowScriptMenuResponse
	test al, al
	jz CL_OpenScriptMenu_f_20
	mov eax, [cls+0x110]
	test eax, eax
	jz CL_OpenScriptMenu_f_20
	mov edx, [ebx]
	mov ecx, [ebx+edx*4+0x44]
	cmp ecx, 0x1
	jle CL_OpenScriptMenu_f_30
	mov eax, [ebx+edx*4+0x64]
	mov esi, [eax+0x4]
CL_OpenScriptMenu_f_100:
	cmp ecx, 0x2
	jg CL_OpenScriptMenu_f_40
	mov edi, _cstring_null
CL_OpenScriptMenu_f_80:
	test esi, esi
	jz CL_OpenScriptMenu_f_20
	test edi, edi
	jz CL_OpenScriptMenu_f_20
	xor ebx, ebx
	jmp CL_OpenScriptMenu_f_50
CL_OpenScriptMenu_f_70:
	add ebx, 0x1
	cmp ebx, 0x20
	jz CL_OpenScriptMenu_f_60
CL_OpenScriptMenu_f_50:
	lea eax, [ebx+0x7b2]
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call CL_GetConfigString
	cmp byte [eax], 0x0
	jz CL_OpenScriptMenu_f_70
	mov [esp+0x4], eax
	mov [esp], esi
	call Q_stricmp
	test eax, eax
	jnz CL_OpenScriptMenu_f_70
CL_OpenScriptMenu_f_90:
	mov dword [esp], _cstring_sv_serverid
	call Cvar_VariableIntegerValue
	mov [esp+0xc], edi
	mov [esp+0x8], ebx
	mov [esp+0x4], eax
	mov dword [esp], _cstring_cmd_mr_i_i_s
	call va
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Cbuf_AddText
	jmp CL_OpenScriptMenu_f_20
CL_OpenScriptMenu_f_40:
	mov eax, cmd_args
	mov eax, [eax+edx*4+0x64]
	mov edi, [eax+0x8]
	jmp CL_OpenScriptMenu_f_80
CL_OpenScriptMenu_f_60:
	mov ebx, 0xffffffff
	jmp CL_OpenScriptMenu_f_90
CL_OpenScriptMenu_f_30:
	mov esi, _cstring_null
	jmp CL_OpenScriptMenu_f_100
	nop


;CL_ShouldDisplayHud(int)
CL_ShouldDisplayHud:
	push ebp
	mov ebp, esp
	mov eax, [cl_hudDrawsBehindUI]
	cmp byte [eax+0xc], 0x0
	jnz CL_ShouldDisplayHud_10
	test byte [clientUIActives+0x4], 0x10
	jz CL_ShouldDisplayHud_10
	cmp byte [clientUIActives+0x8], 0x0
	jnz CL_ShouldDisplayHud_10
	xor eax, eax
	pop ebp
	ret
CL_ShouldDisplayHud_10:
	mov eax, 0x1
	pop ebp
	ret
	nop


;CL_UpdateDirtyPings(int, int)
CL_UpdateDirtyPings:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov eax, [ebp+0xc]
	mov edx, [clientUIActives+0xc]
	test edx, edx
	jnz CL_UpdateDirtyPings_10
	cmp eax, 0x2
	ja CL_UpdateDirtyPings_10
	mov [cls+0x2dbfe0], eax
	cmp eax, 0x1
	jz CL_UpdateDirtyPings_20
	cmp eax, 0x2
	jz CL_UpdateDirtyPings_30
	test eax, eax
	jz CL_UpdateDirtyPings_40
CL_UpdateDirtyPings_100:
	test esi, esi
	jz CL_UpdateDirtyPings_10
	xor eax, eax
	cmp [cls+0x4b48], esi
	cmovl eax, [cls+0x4b48]
	mov [cls+0x4b48], eax
	mov [ebp-0x30], eax
	mov ecx, eax
	xor edi, edi
	mov dword [ebp-0x2c], 0x0
	jmp CL_UpdateDirtyPings_50
CL_UpdateDirtyPings_70:
	mov eax, [cl_maxppf]
	cmp [eax+0xc], edi
	jle CL_UpdateDirtyPings_60
	mov edx, [ebp-0x30]
	cmp edx, [cls+0x4b48]
	jz CL_UpdateDirtyPings_60
	mov ecx, [cls+0x4b48]
CL_UpdateDirtyPings_50:
	lea edx, [ecx+0x1]
	xor eax, eax
	cmp edx, esi
	cmovl eax, edx
	mov [cls+0x4b48], eax
	lea eax, [ecx+ecx*8]
	lea eax, [ecx+eax*4]
	mov edx, [ebp-0x34]
	lea ebx, [edx+eax*4]
	cmp byte [ebx+0x13], 0x0
	jz CL_UpdateDirtyPings_70
	cmp word [ebx+0x22], 0xffff
	jnz CL_UpdateDirtyPings_70
	mov eax, [ebx+0x24]
	test eax, eax
	jz CL_UpdateDirtyPings_80
CL_UpdateDirtyPings_110:
	mov eax, [ebx+0x24]
	cmp [ebp-0x2c], eax
	cmovge eax, [ebp-0x2c]
	mov [ebp-0x2c], eax
	jmp CL_UpdateDirtyPings_70
CL_UpdateDirtyPings_60:
	test edi, edi
	jnz CL_UpdateDirtyPings_90
	call Sys_Milliseconds
	mov edx, [ebp-0x2c]
	add edx, 0x7d0
	cmp eax, edx
	jl CL_UpdateDirtyPings_90
CL_UpdateDirtyPings_10:
	xor eax, eax
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CL_UpdateDirtyPings_90:
	mov eax, 0x1
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CL_UpdateDirtyPings_40:
	mov esi, [cls+0x144]
	mov dword [ebp-0x34], cls+0x148
	jmp CL_UpdateDirtyPings_100
CL_UpdateDirtyPings_80:
	call Sys_Milliseconds
	mov [ebx+0x24], eax
	mov ecx, [ebx]
	mov [ebp-0x24], ecx
	mov edx, [ebx+0x4]
	mov [ebp-0x20], edx
	mov eax, [ebx+0x8]
	mov [ebp-0x1c], eax
	mov dword [esp+0x10], _cstring_getinfo_xxx
	mov [esp+0x4], ecx
	mov [esp+0x8], edx
	mov [esp+0xc], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call NET_OutOfBandPrint
	add edi, 0x1
	add dword [cls+0x4b4c], 0x1
	jmp CL_UpdateDirtyPings_110
CL_UpdateDirtyPings_20:
	mov esi, [cls+0x4b58]
	mov dword [ebp-0x34], cls+0x4b5c
	jmp CL_UpdateDirtyPings_100
CL_UpdateDirtyPings_30:
	mov esi, [cls+0x2d75dc]
	mov dword [ebp-0x34], cls+0x2d75e0
	jmp CL_UpdateDirtyPings_100
	nop


;Voice_SendVoiceData()
Voice_SendVoiceData:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, sv_voice
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz Voice_SendVoiceData_10
	mov eax, [cl_voice]
	cmp byte [eax+0xc], 0x0
	jnz Voice_SendVoiceData_20
Voice_SendVoiceData_10:
	xor eax, eax
	leave
	ret
Voice_SendVoiceData_20:
	mov dword [esp], _cstring_rate
	call Cvar_VariableIntegerValue
	cmp eax, 0x1387
	jle Voice_SendVoiceData_10
	cmp dword [clientUIActives+0xc], 0x9
	jnz Voice_SendVoiceData_10
	mov eax, cl_talking
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz Voice_SendVoiceData_30
Voice_SendVoiceData_40:
	mov eax, 0x1
Voice_SendVoiceData_50:
	leave
	ret
Voice_SendVoiceData_30:
	call IN_IsTalkKeyHeld
	test al, al
	jnz Voice_SendVoiceData_40
	mov eax, [cl_voiceCommunication+0xa28]
	test eax, eax
	jz Voice_SendVoiceData_10
	mov eax, 0x1
	jmp Voice_SendVoiceData_50
	nop


;CL_DownloadsComplete(int)
CL_DownloadsComplete:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x49c
	mov edi, [ebp+0x8]
	mov eax, [cls+0x2dc6a8]
	test eax, eax
	jz CL_DownloadsComplete_10
	mov dword [cls+0x2dc6a8], 0x0
	mov eax, [clientConnections+0x128]
	mov [esp+0x4], eax
	mov [esp], edi
	call FS_Restart
	call CL_Vid_Restart_f
	mov eax, [cls+0x2dc6b0]
	test eax, eax
	jz CL_DownloadsComplete_20
CL_DownloadsComplete_150:
	mov dword [cls+0x2dc6a8], 0x0
	mov byte [cls+0x2dc098], 0x0
	mov byte [cls+0x2dc198], 0x0
	mov byte [cls+0x2dc6bc], 0x0
	mov dword [cls+0x2dc6b4], 0x0
	mov dword [cls+0x2dc6b0], 0x0
	mov dword [cls+0x2dc6b8], 0x0
	call DL_CancelDownload
CL_DownloadsComplete_50:
	add esp, 0x49c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CL_DownloadsComplete_10:
	call Com_SyncThreads
	mov eax, fs_gameDirVar
	mov eax, [eax]
	mov eax, [eax+0xc]
	cmp byte [eax], 0x0
	jnz CL_DownloadsComplete_30
CL_DownloadsComplete_160:
	mov eax, edi
	shl eax, 0x4
	mov dword [eax+clientUIActives+0xc], 0x7
	mov dword [esp+0x4], _cstring_setting_state_to
	mov dword [esp], 0xe
	call Com_Printf
	mov eax, com_sv_running
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz CL_DownloadsComplete_40
	mov [esp], edi
	call CL_IsCgameInitialized
	test eax, eax
	jnz CL_DownloadsComplete_50
CL_DownloadsComplete_130:
	mov dword [esp+0x4], 0x1
	mov eax, cl_paused
	mov eax, [eax]
	mov [esp], eax
	call Cvar_SetInt
	mov [esp], edi
	call CL_InitCGame
	call FS_ReferencedIwdPureChecksums
	mov ebx, eax
	mov dword [esp+0x8], _cstring_va_
	mov dword [esp+0x4], 0x400
	lea esi, [ebp-0x498]
	mov [esp], esi
	call Com_sprintf
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x400
	mov [esp], esi
	call Q_strncat
	add byte [ebp-0x498], 0xd
	add byte [ebp-0x497], 0xf
	mov edx, [clientConnections+0x12c]
	mov eax, edx
	sub eax, [clientConnections+0x130]
	add eax, 0xffffff80
	jg CL_DownloadsComplete_60
CL_DownloadsComplete_220:
	lea eax, [edx+0x1]
	mov [clientConnections+0x12c], eax
	mov dword [esp+0x8], 0x400
	and eax, 0x7f
	shl eax, 0xa
	add eax, clientConnections+0x134
	mov [esp+0x4], eax
	mov [esp], esi
	call MSG_WriteReliableCommandToBuffer
	mov [esp], edi
	call CL_WritePacket
	mov [esp], edi
	call CL_WritePacket
	mov [esp], edi
	call CL_WritePacket
	add esp, 0x49c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CL_DownloadsComplete_40:
	mov dword [esp+0x4], 0x0
	mov [esp], edi
	call CL_GetConfigString
	mov ebx, eax
	mov dword [esp+0x4], _cstring_mapname
	mov [esp], eax
	call Info_ValueForKey
	mov dword [esp+0x8], 0x40
	mov [esp+0x4], eax
	lea esi, [ebp-0x58]
	mov [esp], esi
	call Q_strncpyz
	mov dword [esp+0x4], _cstring_g_gametype
	mov [esp], ebx
	call Info_ValueForKey
	mov dword [esp+0x8], 0x40
	mov [esp+0x4], eax
	lea ebx, [ebp-0x98]
	mov [esp], ebx
	call Q_strncpyz
	mov eax, [cls+0x2dc6ac]
	test eax, eax
	jnz CL_DownloadsComplete_70
CL_DownloadsComplete_210:
	cmp byte [g_waitingForServer], 0x0
	jz CL_DownloadsComplete_80
CL_DownloadsComplete_190:
	mov [esp+0x4], ebx
	mov [esp], esi
	call UI_SetMap
	call SCR_UpdateScreen
	call R_SyncRenderThread
	call Com_SyncThreads
	mov esi, [cls+0x4]
	test esi, esi
	jnz CL_DownloadsComplete_90
CL_DownloadsComplete_180:
	mov ebx, [cls+0x108]
	test ebx, ebx
	jnz CL_DownloadsComplete_100
CL_DownloadsComplete_170:
	call Com_Restart
	call CL_InitRenderer
	cmp byte [clientUIActives+0x1], 0x0
	jz CL_DownloadsComplete_110
	mov ecx, [cls+0x110]
	test ecx, ecx
	jz CL_DownloadsComplete_120
CL_DownloadsComplete_230:
	mov dword [cls+0x4], 0x1
CL_DownloadsComplete_110:
	call SCR_UpdateScreen
	jmp CL_DownloadsComplete_130
CL_DownloadsComplete_20:
	mov edx, [clientConnections+0x12c]
	mov eax, edx
	sub eax, [clientConnections+0x130]
	add eax, 0xffffff80
	jg CL_DownloadsComplete_140
CL_DownloadsComplete_200:
	add edx, 0x1
	mov [clientConnections+0x12c], edx
	mov dword [esp+0x8], 0x400
	and edx, 0x7f
	shl edx, 0xa
	lea eax, [edx+clientConnections+0x134]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_donedl
	call MSG_WriteReliableCommandToBuffer
	jmp CL_DownloadsComplete_150
CL_DownloadsComplete_30:
	mov [esp+0x8], eax
	mov eax, fs_homepath
	mov eax, [eax]
	mov eax, [eax+0xc]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_ss1
	call va
	mov [esp], eax
	call Sys_Mkdir
	jmp CL_DownloadsComplete_160
CL_DownloadsComplete_100:
	xor eax, eax
	call CL_ShutdownRenderer
	jmp CL_DownloadsComplete_170
CL_DownloadsComplete_90:
	mov dword [esp], 0x0
	call CL_ShutdownCGame
	call Phys_Shutdown
	call CL_ShutdownUI
	mov dword [cls+0x4], 0x0
	jmp CL_DownloadsComplete_180
CL_DownloadsComplete_80:
	mov eax, esi
	call LoadMapLoadscreen
	jmp CL_DownloadsComplete_190
CL_DownloadsComplete_140:
	mov dword [esp+0x4], _cstring_exe_err_client_c
	mov dword [esp], 0x2
	call Com_Error
	mov edx, [clientConnections+0x12c]
	jmp CL_DownloadsComplete_200
CL_DownloadsComplete_70:
	mov dword [esp+0x4], _cstring_null
	mov dword [esp], _cstring_null
	call UI_SetMap
	call CL_Vid_Restart_f
	jmp CL_DownloadsComplete_210
CL_DownloadsComplete_60:
	mov dword [esp+0x4], _cstring_exe_err_client_c
	mov dword [esp], 0x2
	call Com_Error
	mov edx, [clientConnections+0x12c]
	jmp CL_DownloadsComplete_220
CL_DownloadsComplete_120:
	call CL_InitUI
	jmp CL_DownloadsComplete_230
	nop


;CL_ForwardToServer_f()
CL_ForwardToServer_f:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x414
	mov eax, [clientUIActives+0xc]
	mov edx, [clientConnections+0x4018c]
	test edx, edx
	jnz CL_ForwardToServer_f_10
	cmp eax, 0x9
	jz CL_ForwardToServer_f_20
CL_ForwardToServer_f_10:
	mov dword [esp+0x4], _cstring_not_connected_to
	mov dword [esp], 0x0
	call Com_Printf
CL_ForwardToServer_f_30:
	add esp, 0x414
	pop ebx
	pop ebp
	ret
CL_ForwardToServer_f_20:
	mov edx, cmd_args
	mov eax, [edx]
	cmp dword [edx+eax*4+0x44], 0x1
	jle CL_ForwardToServer_f_30
	mov dword [esp+0x8], 0x400
	lea ebx, [ebp-0x408]
	mov [esp+0x4], ebx
	mov dword [esp], 0x1
	call Cmd_ArgsBuffer
	mov edx, [clientConnections+0x12c]
	mov eax, edx
	sub eax, [clientConnections+0x130]
	add eax, 0xffffff80
	jg CL_ForwardToServer_f_40
CL_ForwardToServer_f_50:
	lea eax, [edx+0x1]
	mov [clientConnections+0x12c], eax
	mov dword [esp+0x8], 0x400
	and eax, 0x7f
	shl eax, 0xa
	add eax, clientConnections+0x134
	mov [esp+0x4], eax
	mov [esp], ebx
	call MSG_WriteReliableCommandToBuffer
	add esp, 0x414
	pop ebx
	pop ebp
	ret
CL_ForwardToServer_f_40:
	mov dword [esp+0x4], _cstring_exe_err_client_c
	mov dword [esp], 0x2
	call Com_Error
	mov edx, [clientConnections+0x12c]
	jmp CL_ForwardToServer_f_50
	nop


;CL_ShutdownHunkUsers()
CL_ShutdownHunkUsers:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	call Com_SyncThreads
	mov eax, [cls+0x4]
	test eax, eax
	jnz CL_ShutdownHunkUsers_10
	leave
	ret
CL_ShutdownHunkUsers_10:
	mov dword [esp], 0x0
	call CL_ShutdownCGame
	call Phys_Shutdown
	call CL_ShutdownUI
	mov dword [cls+0x4], 0x0
	leave
	ret


;Client_SendVoiceData(int, char*)
Client_SendVoiceData:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	test ebx, ebx
	jle Client_SendVoiceData_10
	mov edx, [cl_voiceCommunication+0xa28]
	mov eax, edx
	shl eax, 0x8
	lea edx, [eax+edx*4+cl_voiceCommunication]
	mov [esp+0x8], ebx
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], edx
	call memcpy
	mov edx, [cl_voiceCommunication+0xa28]
	mov eax, edx
	shl eax, 0x8
	mov [eax+edx*4+cl_voiceCommunication+0x100], ebx
	add dword [cl_voiceCommunication+0xa28], 0x1
	call Sys_Milliseconds
	sub eax, [cl_voiceCommunication+0xa2c]
	cmp eax, 0xc7
	jle Client_SendVoiceData_20
	mov eax, [cl_voiceCommunication+0xa28]
	test eax, eax
	jle Client_SendVoiceData_30
Client_SendVoiceData_40:
	mov dword [esp], 0x0
	call CL_WriteVoicePacket
	mov dword [cl_voiceCommunication+0xa28], 0x0
Client_SendVoiceData_30:
	call Sys_Milliseconds
	mov [cl_voiceCommunication+0xa2c], eax
Client_SendVoiceData_10:
	mov eax, ebx
	add esp, 0x14
	pop ebx
	pop ebp
	ret
Client_SendVoiceData_20:
	cmp dword [cl_voiceCommunication+0xa28], 0x9
	jle Client_SendVoiceData_10
	mov eax, [cl_voiceCommunication+0xa28]
	test eax, eax
	jg Client_SendVoiceData_40
	jmp Client_SendVoiceData_30
	nop


;CL_AddReliableCommand(int, char const*)
CL_AddReliableCommand:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov edx, [clientConnections+0x12c]
	mov eax, edx
	sub eax, [clientConnections+0x130]
	add eax, 0xffffff80
	jle CL_AddReliableCommand_10
	mov dword [esp+0x4], _cstring_exe_err_client_c
	mov dword [esp], 0x2
	call Com_Error
	mov edx, [clientConnections+0x12c]
CL_AddReliableCommand_10:
	lea eax, [edx+0x1]
	mov [clientConnections+0x12c], eax
	mov dword [esp+0x8], 0x400
	and eax, 0x7f
	shl eax, 0xa
	add eax, clientConnections+0x134
	mov [esp+0x4], eax
	mov eax, [ebp+0xc]
	mov [esp], eax
	call MSG_WriteReliableCommandToBuffer
	leave
	ret
	nop


;CL_DrawTextWithCursor(ScreenPlacement const*, char const*, int, Font_s*, float, float, int, int, float, float, float const*, int, int, char)
CL_DrawTextWithCursor:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x34
	movsx ebx, byte [ebp+0x3c]
	mov eax, [ebp+0x24]
	mov [esp+0x18], eax
	mov eax, [ebp+0x20]
	mov [esp+0x14], eax
	lea eax, [ebp+0x2c]
	mov [esp+0x10], eax
	lea eax, [ebp+0x28]
	mov [esp+0xc], eax
	lea eax, [ebp+0x1c]
	mov [esp+0x8], eax
	lea eax, [ebp+0x18]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call ScrPlace_ApplyRect
	mov [esp+0x2c], ebx
	mov eax, [ebp+0x38]
	mov [esp+0x28], eax
	mov eax, [ebp+0x34]
	mov [esp+0x24], eax
	mov eax, [ebp+0x30]
	mov [esp+0x20], eax
	mov dword [esp+0x1c], 0x0
	mov eax, [ebp+0x2c]
	mov [esp+0x18], eax
	mov eax, [ebp+0x28]
	mov [esp+0x14], eax
	mov eax, [ebp+0x1c]
	mov [esp+0x10], eax
	mov eax, [ebp+0x18]
	mov [esp+0xc], eax
	mov eax, [ebp+0x14]
	mov [esp+0x8], eax
	mov eax, [ebp+0x10]
	mov [esp+0x4], eax
	mov eax, [ebp+0xc]
	mov [esp], eax
	call R_AddCmdDrawTextWithCursor
	add esp, 0x34
	pop ebx
	pop ebp
	ret


;CL_GetServerIPAddress()
CL_GetServerIPAddress:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	cmp dword [clientUIActives+0xc], 0x4
	jg CL_GetServerIPAddress_10
	mov dword [esp+0x8], 0x80
	mov dword [esp+0x4], 0x0
	mov dword [esp], _ZZ21CL_GetServerIPAddressvE17szServerIPAddress
	call memset
	mov eax, _ZZ21CL_GetServerIPAddressvE17szServerIPAddress
	leave
	ret
CL_GetServerIPAddress_10:
	movsx eax, word [clientConnections+0x18]
	mov [esp], eax
	call BigShort
	cwde
	mov [esp+0x1c], eax
	movzx eax, byte [clientConnections+0x17]
	mov [esp+0x18], eax
	movzx eax, byte [clientConnections+0x16]
	mov [esp+0x14], eax
	movzx eax, byte [clientConnections+0x15]
	mov [esp+0x10], eax
	movzx eax, byte [clientConnections+0x14]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_iiiii
	mov dword [esp+0x4], 0x80
	mov dword [esp], _ZZ21CL_GetServerIPAddressvE17szServerIPAddress
	call Com_sprintf
	mov eax, _ZZ21CL_GetServerIPAddressvE17szServerIPAddress
	leave
	ret
	nop


;CL_IsServerLoadingMap()
CL_IsServerLoadingMap:
	push ebp
	mov ebp, esp
	movzx eax, byte [cl_serverLoadingMap]
	pop ebp
	ret


;CL_ResetSkeletonCache(int)
CL_ResetSkeletonCache:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	lea eax, [ecx+ecx*2]
	lea eax, [eax+eax*8]
	lea eax, [ecx+eax*4]
	lea eax, [ecx+eax*4]
	lea eax, [ecx+eax*8]
	lea eax, [ecx+eax*4]
	mov edx, eax
	shl edx, 0x7
	sub edx, eax
	lea edx, [edx+ecx+clients]
	mov eax, 0x1
	mov ecx, [edx+0x256b8]
	add ecx, 0x1
	cmovnz eax, ecx
	mov [edx+0x256b8], eax
	lea eax, [edx+0x256cf]
	and eax, 0xfffffff0
	mov [edx+0x656c0], eax
	mov dword [edx+0x256bc], 0x0
	pop ebp
	ret


;CL_ScaledMilliseconds()
CL_ScaledMilliseconds:
	push ebp
	mov ebp, esp
	mov eax, [cls+0x118]
	pop ebp
	ret


;CL_ClearStaticDownload()
CL_ClearStaticDownload:
	push ebp
	mov ebp, esp
	mov dword [cls+0x2dc6a8], 0x0
	mov byte [cls+0x2dc098], 0x0
	mov byte [cls+0x2dc198], 0x0
	mov byte [cls+0x2dc6bc], 0x0
	mov dword [cls+0x2dc6b4], 0x0
	mov dword [cls+0x2dc6b0], 0x0
	mov dword [cls+0x2dc6b8], 0x0
	pop ebp
	jmp DL_CancelDownload


;CL_IsLocalClientActive(int)
CL_IsLocalClientActive:
	push ebp
	mov ebp, esp
	mov eax, 0x1
	pop ebp
	ret


;CL_ReferencedIWDList_f()
CL_ReferencedIWDList_f:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	lea eax, [ebp-0x10]
	mov [esp+0x4], eax
	lea eax, [ebp-0xc]
	mov [esp], eax
	call FS_ReferencedIwds
	mov eax, [ebp-0x10]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_referenced_iwd_n
	mov dword [esp], 0x0
	call Com_Printf
	leave
	ret
	nop


;CL_StopLogoOrCinematic(int)
CL_StopLogoOrCinematic:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov ebx, [clientUIActives+0xc]
	cmp ebx, 0x1
	jz CL_StopLogoOrCinematic_10
	mov eax, esi
	shl eax, 0x4
	mov dword [eax+clientUIActives+0xc], 0x0
CL_StopLogoOrCinematic_30:
	mov dword [esp], 0x0
	call SND_StopSounds
	test ebx, ebx
	jnz CL_StopLogoOrCinematic_20
	mov dword [esp+0x4], 0x1
	mov [esp], esi
	call UI_SetActiveMenu
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
CL_StopLogoOrCinematic_20:
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call UI_SetActiveMenu
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
CL_StopLogoOrCinematic_10:
	mov [esp], esi
	call SCR_StopCinematic
	jmp CL_StopLogoOrCinematic_30
	nop


;CL_WasMapAlreadyLoaded(int)
CL_WasMapAlreadyLoaded:
	push ebp
	mov ebp, esp
	mov eax, com_sv_running
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	setnz al
	movzx eax, al
	pop ebp
	ret


;CL_startSingleplayer_f()
CL_startSingleplayer_f:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_iw3spexe
	call Sys_QuitAndStartProcess
	leave
	ret


;CL_ConnectionlessPacket(int, netadr_t, msg_t*, int)
CL_ConnectionlessPacket:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov ebx, [ebp+0x18]
	movzx eax, word [ebp+0x14]
	mov [ebp-0x3a], ax
	movzx eax, byte [ebp+0x13]
	mov [ebp-0x3b], al
	movzx eax, byte [ebp+0x12]
	mov [ebp-0x3c], al
	movzx eax, byte [ebp+0x11]
	mov [ebp-0x3d], al
	movzx eax, byte [ebp+0x10]
	mov [ebp-0x3e], al
	mov esi, [ebp+0xc]
	mov [esp], ebx
	call MSG_BeginReading
	mov [esp], ebx
	call MSG_ReadLong
	mov eax, [ebx+0x14]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CL_Netchan_AddOOBProfilePacket
	mov dword [esp+0x8], 0x3
	mov dword [esp+0x4], _cstring_pb_
	mov eax, [ebx+0x8]
	add eax, 0x4
	mov [esp], eax
	call strncasecmp
	test eax, eax
	jnz CL_ConnectionlessPacket_10
	mov eax, [ebx+0x8]
	movzx edx, byte [eax+0x7]
	cmp dl, 0x53
	jz CL_ConnectionlessPacket_20
	cmp dl, 0x32
	jz CL_ConnectionlessPacket_20
	cmp dl, 0x49
	jnz CL_ConnectionlessPacket_30
CL_ConnectionlessPacket_20:
	add eax, 0x4
	mov [esp+0xc], eax
	mov eax, [ebx+0x14]
	sub eax, 0x4
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0xffffffff
	mov dword [esp], 0xd
	call PbSvAddEvent
	mov eax, 0x1
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CL_ConnectionlessPacket_10:
	mov [esp], ebx
	call MSG_ReadStringLine
	mov edi, eax
	mov eax, showpackets
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	jnz CL_ConnectionlessPacket_40
CL_ConnectionlessPacket_50:
	mov [esp], edi
	call Cmd_TokenizeString
	movzx eax, word [ebp-0x3a]
	mov [ebp-0x1c], ax
	movzx eax, byte [ebp-0x3b]
	mov [ebp-0x1d], al
	movzx eax, byte [ebp-0x3c]
	mov [ebp-0x1e], al
	movzx eax, byte [ebp-0x3d]
	mov [ebp-0x1f], al
	movzx eax, byte [ebp-0x3e]
	mov [ebp-0x20], al
	mov [ebp-0x24], esi
	mov eax, [ebp+0x1c]
	mov [esp+0x14], eax
	mov [esp+0x10], ebx
	mov [esp+0x4], esi
	mov eax, [ebp-0x20]
	mov [esp+0x8], eax
	mov eax, [ebp-0x1c]
	mov [esp+0xc], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CL_DispatchConnectionlessPacket
	mov ebx, eax
	call Cmd_EndTokenizedString
	movzx eax, bl
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CL_ConnectionlessPacket_30:
	add eax, 0x4
	mov [esp+0x8], eax
	mov eax, [ebx+0x14]
	sub eax, 0x4
	mov [esp+0x4], eax
	mov dword [esp], 0xd
	call PbClAddEvent
	mov eax, 0x1
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CL_ConnectionlessPacket_40:
	movzx eax, word [ebp-0x3a]
	mov [ebp-0x28], ax
	movzx eax, byte [ebp-0x3b]
	mov [ebp-0x29], al
	movzx eax, byte [ebp-0x3c]
	mov [ebp-0x2a], al
	movzx eax, byte [ebp-0x3d]
	mov [ebp-0x2b], al
	movzx eax, byte [ebp-0x3e]
	mov [ebp-0x2c], al
	mov [ebp-0x30], esi
	mov [esp], esi
	mov eax, [ebp-0x2c]
	mov [esp+0x4], eax
	mov eax, [ebp-0x28]
	mov [esp+0x8], eax
	call NET_AdrToString
	mov [esp+0xc], edi
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_recv_ss
	mov dword [esp], 0x10
	call Com_Printf
	jmp CL_ConnectionlessPacket_50


;CL_RequestAuthorization(int)
CL_RequestAuthorization:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xac
	mov eax, [cls+0x118]
	mov [lastUpdateKeyAuthTime], eax
	mov eax, cl_cdkeychecksum
	mov [esp+0x4], eax
	mov eax, cl_cdkey
	mov [esp], eax
	call CL_CDKeyValidate
	test eax, eax
	jz CL_RequestAuthorization_10
	cmp word [cls+0x2dbfec], 0x0
	jz CL_RequestAuthorization_20
	cmp dword [cls+0x2dbfe4], 0x1
	jz CL_RequestAuthorization_30
CL_RequestAuthorization_60:
	mov dword [esp], _cstring_fs_restrict
	call Cvar_VariableBooleanValue
	test al, al
	jz CL_RequestAuthorization_40
	mov dword [esp+0x8], 0x40
	mov dword [esp+0x4], _cstring_demo
	lea edi, [ebp-0x85]
	mov [esp], edi
	call Q_strncpyz
CL_RequestAuthorization_90:
	mov dword [esp+0xc], _cstring_allow_anonymous_
	mov dword [esp+0x8], 0x1b
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_cl_anonymous
	call Cvar_RegisterBool
	mov esi, eax
	lea ebx, [ebp-0x45]
	mov eax, ebx
	call CL_BuildMd5StrFromCDKey
	mov [esp+0xc], ebx
	mov [esp+0x8], edi
	movzx eax, byte [esi+0xc]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_getkeyauthorize_
	call va
	mov ebx, [cls+0x2dbfe4]
	mov [ebp-0x24], ebx
	mov ecx, [cls+0x2dbfe8]
	mov [ebp-0x20], ecx
	mov edx, [cls+0x2dbfec]
	mov [ebp-0x1c], edx
	mov [esp+0x10], eax
	mov [esp+0x4], ebx
	mov [esp+0x8], ecx
	mov [esp+0xc], edx
	mov edx, [ebp+0x8]
	mov [esp], edx
	call NET_OutOfBandPrint
CL_RequestAuthorization_30:
	add esp, 0xac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CL_RequestAuthorization_20:
	mov dword [esp+0x8], _cstring_cod4masteractivi
	mov dword [esp+0x4], _cstring_resolving_s
	mov dword [esp], 0xe
	call Com_Printf
	mov dword [esp+0x4], cls+0x2dbfe4
	mov dword [esp], _cstring_cod4masteractivi
	call NET_StringToAdr
	test eax, eax
	jz CL_RequestAuthorization_50
	mov dword [esp], 0x5140
	call BigShort
	mov [cls+0x2dbfec], ax
	cwde
	mov [esp], eax
	call BigShort
	cwde
	mov [esp+0x1c], eax
	movzx eax, byte [cls+0x2dbfeb]
	mov [esp+0x18], eax
	movzx eax, byte [cls+0x2dbfea]
	mov [esp+0x14], eax
	movzx eax, byte [cls+0x2dbfe9]
	mov [esp+0x10], eax
	movzx eax, byte [cls+0x2dbfe8]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_cod4masteractivi
	mov dword [esp+0x4], _cstring_s_resolved_to_ii
	mov dword [esp], 0xe
	call Com_Printf
	cmp dword [cls+0x2dbfe4], 0x1
	jnz CL_RequestAuthorization_60
	jmp CL_RequestAuthorization_30
CL_RequestAuthorization_10:
	mov dword [esp+0x4], _cstring_exe_err_invalid_
	mov dword [esp], 0x2
	call Com_Error
	add esp, 0xac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CL_RequestAuthorization_40:
	mov edx, cl_cdkey
	mov [ebp-0x8c], edx
	cld
	mov ecx, 0xffffffff
	mov edi, edx
	repne scasb
	not ecx
	sub ecx, 0x1
	cmp ecx, 0x20
	jg CL_RequestAuthorization_70
	test ecx, ecx
	jg CL_RequestAuthorization_80
	xor esi, esi
CL_RequestAuthorization_110:
	mov byte [ebp+esi-0x85], 0x0
	lea edi, [ebp-0x85]
	jmp CL_RequestAuthorization_90
CL_RequestAuthorization_50:
	mov dword [esp+0x4], _cstring_couldnt_resolve_
	mov dword [esp], 0xe
	call Com_Printf
	add esp, 0xac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CL_RequestAuthorization_70:
	mov ecx, 0x20
CL_RequestAuthorization_80:
	xor ebx, ebx
	xor esi, esi
	jmp CL_RequestAuthorization_100
CL_RequestAuthorization_120:
	mov [ebp+esi-0x85], dl
	add esi, 0x1
CL_RequestAuthorization_130:
	add ebx, 0x1
	cmp ecx, ebx
	jz CL_RequestAuthorization_110
CL_RequestAuthorization_100:
	mov eax, [ebp-0x8c]
	movzx edx, byte [ebx+eax]
	lea eax, [edx-0x30]
	cmp al, 0x9
	jbe CL_RequestAuthorization_120
	lea eax, [edx-0x61]
	cmp al, 0x19
	jbe CL_RequestAuthorization_120
	lea eax, [edx-0x41]
	cmp al, 0x19
	ja CL_RequestAuthorization_130
	jmp CL_RequestAuthorization_120


;CL_SetupForNewServerMap(char const*, char const*)
CL_SetupForNewServerMap:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov ebx, [ebp+0x8]
	mov edi, [ebp+0xc]
	mov [esp+0xc], edi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_server_changing_
	mov dword [esp], 0xe
	call Com_Printf
	mov esi, com_sv_running
	mov eax, [esi]
	cmp byte [eax+0xc], 0x0
	jz CL_SetupForNewServerMap_10
CL_SetupForNewServerMap_30:
	mov byte [cl_serverLoadingMap], 0x1
	mov byte [cl_waitingOnServerToLoadMap], 0x0
	cmp byte [eax+0xc], 0x0
	jnz CL_SetupForNewServerMap_20
	mov eax, com_expectedHunkUsage
	mov dword [eax], 0x0
	mov byte [g_waitingForServer], 0x1
	mov dword [esp], 0x1
	call FS_DisablePureCheck
	mov dword [esp+0x4], _cstring_null
	mov dword [esp], _cstring_null
	call UI_SetMap
	mov eax, ebx
	call LoadMapLoadscreen
	mov [esp+0x4], edi
	mov [esp], ebx
	call UI_SetMap
CL_SetupForNewServerMap_20:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp SCR_UpdateScreen
CL_SetupForNewServerMap_10:
	mov dword [esp+0x8], _cstring_selectstringtabl
	mov dword [esp+0x4], 0x0
	mov dword [esp], 0x0
	call Cbuf_ExecuteBuffer
	mov eax, [esi]
	jmp CL_SetupForNewServerMap_30
	nop


;CL_DisconnectLocalClient(int)
CL_DisconnectLocalClient:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0x8]
	mov [esp], ebx
	call SCR_StopCinematic
	mov esi, [clientUIActives+0xc]
	mov [esp], ebx
	call CL_Disconnect
	cmp esi, 0x2
	ja CL_DisconnectLocalClient_10
CL_DisconnectLocalClient_40:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
CL_DisconnectLocalClient_10:
	call Sys_IsMainThread
	test al, al
	jnz CL_DisconnectLocalClient_20
CL_DisconnectLocalClient_30:
	mov dword [esp+0x4], _cstring_platform_disconn
	mov dword [esp], 0x4
	call Com_Error
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
CL_DisconnectLocalClient_20:
	mov dword [esp], 0x0
	call UI_IsFullscreen
	test eax, eax
	jnz CL_DisconnectLocalClient_30
	cmp byte [clientUIActives], 0x0
	jz CL_DisconnectLocalClient_30
	cmp dword [clientUIActives+0xc], 0x2
	jle CL_DisconnectLocalClient_30
	jmp CL_DisconnectLocalClient_40
	nop


;CL_InitOnceForAllClients()
CL_InitOnceForAllClients:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	call Sys_MillisecondsRaw
	mov [esp], eax
	call ms_srand
	call Con_Init
	call CL_InitInput
	mov dword [esp+0xc], _cstring_print_nothing_to
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_cl_noprint
	call Cvar_RegisterBool
	mov [cl_noprint], eax
	xor ebx, ebx
CL_InitOnceForAllClients_10:
	mov dword [esp+0xc], _cstring_custom_class_nam
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], _cstring_null
	mov eax, [ebx+customClassDvars]
	mov [esp], eax
	call Cvar_RegisterString
	mov [ebx+customclass], eax
	add ebx, 0x4
	cmp ebx, 0x14
	jnz CL_InitOnceForAllClients_10
	mov dword [esp+0xc], _cstring_current_game_is_
	mov dword [esp+0x8], 0x80
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_onlinegame
	call Cvar_RegisterBool
	mov [onlinegame], eax
	mov dword [esp+0x4], 0x1
	mov [esp], eax
	call Cvar_SetBool
	mov dword [esp+0xc], _cstring_should_the_hud_d
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_cl_huddrawsbehin
	call Cvar_RegisterBool
	mov [cl_hudDrawsBehindUI], eax
	mov dword [esp+0xc], _cstring_use_voice_commun
	mov dword [esp+0x8], 0x3
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_cl_voice
	call Cvar_RegisterBool
	mov [cl_voice], eax
	mov dword [esp+0x14], _cstring_seconds_with_no_
	mov dword [esp+0x10], 0x0
	mov ebx, 0x45610000
	mov [esp+0xc], ebx
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x42200000
	mov dword [esp], _cstring_cl_timeout
	call Cvar_RegisterFloat
	mov [cl_timeout], eax
	mov dword [esp+0x14], _cstring_timeout_time_in_
	mov dword [esp+0x10], 0x0
	mov [esp+0xc], ebx
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x43480000
	mov dword [esp], _cstring_cl_connecttimeou
	call Cvar_RegisterFloat
	mov [cl_connectTimeout], eax
	mov dword [esp+0x14], _cstring_maximum_number_o
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x7fffffff
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0xa
	mov dword [esp], _cstring_cl_connectionatt
	call Cvar_RegisterInt
	mov [cl_connectionAttempts], eax
	mov dword [esp+0x14], _cstring_display_network_
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x4
	mov dword [esp+0x8], 0xfffffffe
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_cl_shownet
	call Cvar_RegisterInt
	mov [cl_shownet], eax
	mov dword [esp+0xc], _cstring_show_the_number_
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_cl_shownuments
	call Cvar_RegisterBool
	mov [cl_shownuments], eax
	mov dword [esp+0xc], _cstring_enable_debugging
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_cl_showservercom
	call Cvar_RegisterBool
	mov [cl_showServerCommands], eax
	mov dword [esp+0xc], _cstring_enable_debugging1
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_cl_showsend
	call Cvar_RegisterBool
	mov [cl_showSend], eax
	mov dword [esp+0xc], _cstring_enable_debugging2
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_cl_showtimedelta
	call Cvar_RegisterBool
	mov [cl_showTimeDelta], eax
	mov dword [esp+0xc], _cstring_cl_freezedemo_is
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_cl_freezedemo
	call Cvar_RegisterBool
	mov [cl_freezeDemo], eax
	mov dword [esp+0xc], _cstring_action_to_execut
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _cstring_null
	mov dword [esp], _cstring_activeaction
	call Cvar_RegisterString
	mov [cl_activeAction], eax
	mov dword [esp+0x14], _cstring_avi_demo_frames_
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x7fffffff
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_cl_avidemo
	call Cvar_RegisterInt
	mov [cl_avidemo], eax
	mov dword [esp+0xc], _cstring_record_avi_demo_
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_cl_forceavidemo
	call Cvar_RegisterBool
	mov [cl_forceavidemo], eax
	mov dword [esp+0x14], _cstring_max_yaw_speed_in
	mov dword [esp+0x10], 0x1
	mov ebx, 0x7f7fffff
	mov [esp+0xc], ebx
	mov edi, 0xff7fffff
	mov [esp+0x8], edi
	mov esi, 0x430c0000
	mov [esp+0x4], esi
	mov dword [esp], _cstring_cl_yawspeed
	call Cvar_RegisterFloat
	mov edx, cl_yawspeed
	mov [edx], eax
	mov dword [esp+0x14], _cstring_max_pitch_speed_
	mov dword [esp+0x10], 0x1
	mov [esp+0xc], ebx
	mov [esp+0x8], edi
	mov [esp+0x4], esi
	mov dword [esp], _cstring_cl_pitchspeed
	call Cvar_RegisterFloat
	mov edx, cl_pitchspeed
	mov [edx], eax
	mov dword [esp+0x14], _cstring_multiplier_for_m
	mov dword [esp+0x10], 0x0
	mov [esp+0xc], ebx
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x3fc00000
	mov dword [esp], _cstring_cl_anglespeedkey
	call Cvar_RegisterFloat
	mov edx, cl_anglespeedkey
	mov [edx], eax
	mov dword [esp+0x14], _cstring_maximum_number_o1
	mov dword [esp+0x10], 0x1
	mov dword [esp+0xc], 0x64
	mov dword [esp+0x8], 0xf
	mov dword [esp+0x4], 0x1e
	mov dword [esp], _cstring_cl_maxpackets
	call Cvar_RegisterInt
	mov [cl_maxpackets], eax
	mov dword [esp+0x14], _cstring_enable_packet_du
	mov dword [esp+0x10], 0x1
	mov dword [esp+0xc], 0x5
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_cl_packetdup
	call Cvar_RegisterInt
	mov [cl_packetdup], eax
	mov dword [esp+0x14], _cstring_mouse_sensitivit
	mov dword [esp+0x10], 0x1
	mov ebx, 0x42c80000
	mov [esp+0xc], ebx
	mov dword [esp+0x8], 0x3c23d70a
	mov dword [esp+0x4], 0x40a00000
	mov dword [esp], _cstring_sensitivity
	call Cvar_RegisterFloat
	mov [cl_sensitivity], eax
	mov dword [esp+0x14], _cstring_mouse_accelerati
	mov dword [esp+0x10], 0x1
	mov [esp+0xc], ebx
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_cl_mouseaccel
	call Cvar_RegisterFloat
	mov [cl_mouseAccel], eax
	mov dword [esp+0xc], _cstring_enable_looking_w
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_cl_freelook
	call Cvar_RegisterBool
	mov [cl_freelook], eax
	mov dword [esp+0xc], _cstring_print_mouse_rate
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_cl_showmouserate
	call Cvar_RegisterBool
	mov [cl_showMouseRate], eax
	mov dword [esp+0xc], _cstring_allow_client_dow
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_cl_allowdownload
	call Cvar_RegisterBool
	mov [cl_allowDownload], eax
	mov dword [esp+0xc], _cstring_download_files_v
	mov dword [esp+0x8], 0x3
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_cl_wwwdownload
	call Cvar_RegisterBool
	mov [cl_wwwDownload], eax
	mov dword [esp+0xc], _cstring_client_is_talkin
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_cl_talking
	call Cvar_RegisterBool
	mov edx, cl_talking
	mov [edx], eax
	mov dword [esp+0xc], _cstring_allow_in_game_ci
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_r_ingamevideo
	call Cvar_RegisterBool
	mov [cl_inGameVideo], eax
	mov dword [esp+0x14], _cstring_time_in_millisec
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0xe10
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x2ee
	mov dword [esp], _cstring_cl_serverstatusr
	call Cvar_RegisterInt
	mov [cl_serverStatusResendTime], eax
	mov dword [esp+0x14], _cstring_maximum_servers_
	mov dword [esp+0x10], 0x1
	mov dword [esp+0xc], 0xa
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x5
	mov dword [esp], _cstring_cl_maxppf
	call Cvar_RegisterInt
	mov [cl_maxppf], eax
	mov dword [esp+0xc], _cstring_bypass_ui_mouse_
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_cl_bypassmousein
	call Cvar_RegisterBool
	mov edx, cl_bypassMouseInput
	mov [edx], eax
	mov dword [esp+0x14], _cstring_default_pitch
	mov dword [esp+0x10], 0x1
	mov esi, 0x3f800000
	mov [esp+0xc], esi
	mov ebx, 0xbf800000
	mov [esp+0x8], ebx
	mov edi, 0x3cb43958
	mov [esp+0x4], edi
	mov dword [esp], _cstring_m_pitch
	call Cvar_RegisterFloat
	mov [m_pitch], eax
	mov dword [esp+0x14], _cstring_default_yaw
	mov dword [esp+0x10], 0x1
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov [esp+0x4], edi
	mov dword [esp], _cstring_m_yaw
	call Cvar_RegisterFloat
	mov [m_yaw], eax
	mov dword [esp+0x14], _cstring_forward_speed_in
	mov dword [esp+0x10], 0x1
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov edi, 0x3e800000
	mov [esp+0x4], edi
	mov dword [esp], _cstring_m_forward
	call Cvar_RegisterFloat
	mov [m_forward], eax
	mov dword [esp+0x14], _cstring_sideways_motion_
	mov dword [esp+0x10], 0x1
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov [esp+0x4], edi
	mov dword [esp], _cstring_m_side
	call Cvar_RegisterFloat
	mov [m_side], eax
	mov dword [esp+0xc], _cstring_allow_mouse_move
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_m_filter
	call Cvar_RegisterBool
	mov [m_filter], eax
	mov dword [esp+0xc], _cstring_message_of_the_d
	mov dword [esp+0x8], 0x40
	mov dword [esp+0x4], _cstring_null
	mov dword [esp], _cstring_cl_motdstring
	call Cvar_RegisterString
	mov [cl_motdString], eax
	mov dword [esp+0xc], _cstring_true_if_the_game
	mov dword [esp+0x8], 0x40
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_cl_ingame
	call Cvar_RegisterBool
	mov [cl_ingame], eax
	mov dword [esp+0x14], _cstring_maximum_ping_for
	mov dword [esp+0x10], 0x1
	mov dword [esp+0xc], 0x7d0
	mov dword [esp+0x8], 0x14
	mov dword [esp+0x4], 0x320
	mov dword [esp], _cstring_cl_maxping
	call Cvar_RegisterInt
	mov dword [esp+0xc], _cstring_player_name
	mov dword [esp+0x8], 0x3
	mov dword [esp+0x4], _cstring_null
	mov dword [esp], _cstring_name
	call Cvar_RegisterString
	mov [name], eax
	mov dword [esp+0x14], _cstring_players_preferre
	mov dword [esp+0x10], 0x3
	mov dword [esp+0xc], 0x61a8
	mov dword [esp+0x8], 0x3e8
	mov dword [esp+0x4], 0x61a8
	mov dword [esp], _cstring_rate
	call Cvar_RegisterInt
	mov dword [esp+0x14], _cstring_snapshot_rate
	mov dword [esp+0x10], 0x3
	mov dword [esp+0xc], 0x1e
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x14
	mov dword [esp], _cstring_snaps
	call Cvar_RegisterInt
	mov dword [esp+0xc], _cstring_determines_wheth
	mov dword [esp+0x8], 0x13
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_cl_punkbuster
	call Cvar_RegisterBool
	mov dword [esp+0xc], _cstring_password
	mov dword [esp+0x8], 0x2
	mov dword [esp+0x4], _cstring_null
	mov dword [esp], _cstring_password
	call Cvar_RegisterString
	mov dword [esp+0xc], _cstring_the_next_demo_to
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _cstring_null
	mov dword [esp], _cstring_nextdemo
	call Cvar_RegisterString
	mov [nextdemo], eax
	mov dword [esp+0xc], _cstring_enable_the_hud_d
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_hud_enable
	call Cvar_RegisterBool
	mov dword [esp+0xc], _cstring_show_blood
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_cg_blood
	call Cvar_RegisterBool
	mov dword [esp+0xc], _cstring_message_of_the_d
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _cstring_null
	mov dword [esp], _cstring_motd
	call Cvar_RegisterString
	mov [motd], eax
	mov dword [esp+0x14], _cstring_min_orbit_altitu
	mov dword [esp+0x10], 0x1
	mov esi, 0x42a00000
	mov [esp+0xc], esi
	mov ebx, 0xc2a00000
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0xc1700000
	mov dword [esp], _cstring_vehdriverviewhei
	call Cvar_RegisterFloat
	mov edx, vehDriverViewHeightMin
	mov [edx], eax
	mov dword [esp+0x14], _cstring_max_orbit_altitu
	mov dword [esp+0x10], 0x1
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x42480000
	mov dword [esp], _cstring_vehdriverviewhei1
	call Cvar_RegisterFloat
	mov edx, vehDriverViewHeightMax
	mov [edx], eax
	mov dword [esp+0x8], _ZZ24CL_InitOnceForAllClientsvE24CL_ForwardToServer_f_VAR
	mov dword [esp+0x4], CL_ForwardToServer_f
	mov dword [esp], _cstring_cmd
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ24CL_InitOnceForAllClientsvE22CL_Configstrings_f_VAR
	mov dword [esp+0x4], CL_Configstrings_f
	mov dword [esp], _cstring_configstrings
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ24CL_InitOnceForAllClientsvE19CL_Clientinfo_f_VAR
	mov dword [esp+0x4], CL_Clientinfo_f
	mov dword [esp], _cstring_clientinfo
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ24CL_InitOnceForAllClientsvE20CL_Vid_Restart_f_VAR
	mov ebx, Cbuf_AddServerText_f
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_vid_restart
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ24CL_InitOnceForAllClientsvE27CL_Vid_Restart_f_VAR_SERVER
	mov dword [esp+0x4], CL_Vid_Restart_f
	mov dword [esp], _cstring_vid_restart
	call Cmd_AddServerCommandInternal
	mov dword [esp+0x8], _ZZ24CL_InitOnceForAllClientsvE20CL_Snd_Restart_f_VAR
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_snd_restart
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ24CL_InitOnceForAllClientsvE27CL_Snd_Restart_f_VAR_SERVER
	mov dword [esp+0x4], CL_Snd_Restart_f
	mov dword [esp], _cstring_snd_restart
	call Cmd_AddServerCommandInternal
	mov dword [esp+0x8], _ZZ24CL_InitOnceForAllClientsvE19CL_Disconnect_f_VAR
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_disconnect
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ24CL_InitOnceForAllClientsvE26CL_Disconnect_f_VAR_SERVER
	mov dword [esp+0x4], CL_Disconnect_f
	mov dword [esp], _cstring_disconnect
	call Cmd_AddServerCommandInternal
	mov dword [esp+0x8], _ZZ24CL_InitOnceForAllClientsvE15CL_Record_f_VAR
	mov dword [esp+0x4], CL_Record_f
	mov dword [esp], _cstring_record
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ24CL_InitOnceForAllClientsvE19CL_StopRecord_f_VAR
	mov dword [esp+0x4], CL_StopRecord_f
	mov dword [esp], _cstring_stoprecord
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ24CL_InitOnceForAllClientsvE17CL_PlayDemo_f_VAR
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_demo
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ24CL_InitOnceForAllClientsvE24CL_PlayDemo_f_VAR_SERVER
	mov dword [esp+0x4], CL_PlayDemo_f
	mov dword [esp], _cstring_demo
	call Cmd_AddServerCommandInternal
	mov dword [esp+0x8], _ZZ24CL_InitOnceForAllClientsvE17CL_PlayDemo_f_VAR_0
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_timedemo
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ24CL_InitOnceForAllClientsvE24CL_PlayDemo_f_VAR_SERVER_0
	mov dword [esp+0x4], CL_PlayDemo_f
	mov dword [esp], _cstring_timedemo
	call Cmd_AddServerCommandInternal
	mov dword [esp+0x8], _cstring_dm_1
	mov dword [esp+0x4], _cstring_demos
	mov dword [esp], _cstring_demo
	call Cmd_SetAutoComplete
	mov dword [esp+0x8], _cstring_dm_1
	mov dword [esp+0x4], _cstring_demos
	mov dword [esp], _cstring_timedemo
	call Cmd_SetAutoComplete
	mov dword [esp+0x8], _ZZ24CL_InitOnceForAllClientsvE22CL_PlayCinematic_f_VAR
	mov eax, CL_PlayCinematic_f
	mov [esp+0x4], eax
	mov dword [esp], _cstring_cinematic
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ24CL_InitOnceForAllClientsvE33CL_PlayUnskippableCinematic_f_VAR
	mov eax, CL_PlayUnskippableCinematic_f
	mov [esp+0x4], eax
	mov dword [esp], _cstring_unskippablecinem
	call Cmd_AddCommand
	mov dword [esp+0x8], _cstring_roq
	mov dword [esp+0x4], _cstring_video
	mov dword [esp], _cstring_cinematic
	call Cmd_SetAutoComplete
	mov dword [esp+0x8], _ZZ24CL_InitOnceForAllClientsvE17CL_PlayLogo_f_VAR
	mov dword [esp+0x4], CL_PlayLogo_f
	mov dword [esp], _cstring_logo
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ24CL_InitOnceForAllClientsvE16CL_Connect_f_VAR
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_connect
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ24CL_InitOnceForAllClientsvE23CL_Connect_f_VAR_SERVER
	mov eax, CL_Connect_f
	mov [esp+0x4], eax
	mov dword [esp], _cstring_connect
	call Cmd_AddServerCommandInternal
	mov dword [esp+0x8], _ZZ24CL_InitOnceForAllClientsvE18CL_Reconnect_f_VAR
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_reconnect
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ24CL_InitOnceForAllClientsvE25CL_Reconnect_f_VAR_SERVER
	mov dword [esp+0x4], CL_Reconnect_f
	mov dword [esp], _cstring_reconnect
	call Cmd_AddServerCommandInternal
	mov dword [esp+0x8], _ZZ24CL_InitOnceForAllClientsvE21CL_LocalServers_f_VAR
	mov dword [esp+0x4], CL_LocalServers_f
	mov dword [esp], _cstring_localservers
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ24CL_InitOnceForAllClientsvE22CL_GlobalServers_f_VAR
	mov eax, CL_GlobalServers_f
	mov [esp+0x4], eax
	mov dword [esp], _cstring_globalservers
	call Cmd_AddCommand
	call CL_RconInit
	mov dword [esp+0x8], _ZZ24CL_InitOnceForAllClientsvE13CL_Rcon_f_VAR
	mov eax, CL_Rcon_f
	mov [esp+0x4], eax
	mov dword [esp], _cstring_rcon
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ24CL_InitOnceForAllClientsvE13CL_Ping_f_VAR
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_ping
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ24CL_InitOnceForAllClientsvE20CL_Ping_f_VAR_SERVER
	mov eax, CL_Ping_f
	mov [esp+0x4], eax
	mov dword [esp], _cstring_ping
	call Cmd_AddServerCommandInternal
	mov dword [esp+0x8], _ZZ24CL_InitOnceForAllClientsvE21CL_ServerStatus_f_VAR
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_serverstatus
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ24CL_InitOnceForAllClientsvE28CL_ServerStatus_f_VAR_SERVER
	mov eax, CL_ServerStatus_f
	mov [esp+0x4], eax
	mov dword [esp], _cstring_serverstatus
	call Cmd_AddServerCommandInternal
	mov dword [esp+0x8], _ZZ24CL_InitOnceForAllClientsvE15CL_Setenv_f_VAR
	mov dword [esp+0x4], CL_Setenv_f
	mov dword [esp], _cstring_setenv
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ24CL_InitOnceForAllClientsvE15CL_ShowIP_f_VAR
	mov dword [esp+0x4], CL_ShowIP_f
	mov dword [esp], _cstring_showip
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ24CL_InitOnceForAllClientsvE19CL_ToggleMenu_f_VAR
	mov dword [esp+0x4], CL_ToggleMenu_f
	mov dword [esp], _cstring_togglemenu
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ24CL_InitOnceForAllClientsvE22CL_OpenedIWDList_f_VAR
	mov dword [esp+0x4], CL_OpenedIWDList_f
	mov dword [esp], _cstring_fs_openedlist
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ24CL_InitOnceForAllClientsvE26CL_ReferencedIWDList_f_VAR
	mov dword [esp+0x4], CL_ReferencedIWDList_f
	mov dword [esp], _cstring_fs_referencedlis
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ24CL_InitOnceForAllClientsvE27CL_UpdateLevelHunkUsage_VAR
	mov eax, CL_UpdateLevelHunkUsage
	mov [esp+0x4], eax
	mov dword [esp], _cstring_updatehunkusage
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ24CL_InitOnceForAllClientsvE26CL_startSingleplayer_f_VAR
	mov dword [esp+0x4], CL_startSingleplayer_f
	mov dword [esp], _cstring_startsingleplaye
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ24CL_InitOnceForAllClientsvE20CL_CubemapShot_f_VAR
	mov eax, CL_CubemapShot_f
	mov [esp+0x4], eax
	mov dword [esp], _cstring_cubemapshot
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ24CL_InitOnceForAllClientsvE23CL_OpenScriptMenu_f_VAR
	mov dword [esp+0x4], CL_OpenScriptMenu_f
	mov dword [esp], _cstring_openscriptmenu
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ24CL_InitOnceForAllClientsvE37Com_WriteLocalizedSoundAliasFiles_VAR
	mov eax, Com_WriteLocalizedSoundAliasFiles
	mov [esp+0x4], eax
	mov dword [esp], _cstring_localizesoundali
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ24CL_InitOnceForAllClientsvE18UI_CloseMenu_f_VAR
	mov eax, UI_CloseMenu_f
	mov [esp+0x4], eax
	mov dword [esp], _cstring_closemenu
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ24CL_InitOnceForAllClientsvE37CL_SelectStringTableEntryInDvar_f_VAR
	mov eax, CL_SelectStringTableEntryInDvar_f
	mov [esp+0x4], eax
	mov dword [esp], _cstring_selectstringtabl1
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ24CL_InitOnceForAllClientsvE19CL_ResetStats_f_VAR
	mov dword [esp+0x4], CL_ResetStats_f
	mov dword [esp], _cstring_resetstats
	call Cmd_AddCommand
	mov dword [esp+0x4], _cstring__initializing_re
	mov dword [esp], 0xe
	call Com_Printf
	mov dword [ebp-0x48], 0x1
	mov dword [ebp-0x44], 0x400
	mov dword [ebp-0x40], 0x3ff
	mov dword [ebp-0x3c], 0x3fe
	mov dword [ebp-0x38], 0x2
	mov dword [ebp-0x34], 0x11
	mov dword [ebp-0x30], _cstring_code_post_gfx_mp
	mov dword [ebp-0x2c], _cstring_ui_mp
	mov dword [ebp-0x28], _cstring_common_mp
	mov dword [ebp-0x24], _cstring_localized_code_p
	mov dword [ebp-0x20], _cstring_localized_common
	call DB_ModFileExists
	xor edx, edx
	test al, al
	mov eax, _cstring_mod
	cmovnz edx, eax
	mov [ebp-0x1c], edx
	lea eax, [ebp-0x48]
	mov [esp], eax
	call R_ConfigureRenderer
	mov dword [esp+0x4], 0x0
	mov eax, cl_paused
	mov eax, [eax]
	mov [esp], eax
	call Cvar_SetInt
	call SCR_Init
	call CG_RegisterDvars
	call Ragdoll_Register
	mov dword [cl_voiceCommunication+0xa28], 0x0
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;CL_RunOncePerClientFrame(int, int)
CL_RunOncePerClientFrame:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	mov [esp], esi
	call UI_IsFullscreen
	test eax, eax
	jnz CL_RunOncePerClientFrame_10
CL_RunOncePerClientFrame_40:
	call IN_Frame
	mov edx, [cl_avidemo]
	mov ecx, [edx+0xc]
	test ecx, ecx
	jz CL_RunOncePerClientFrame_20
	test ebx, ebx
	jz CL_RunOncePerClientFrame_20
	cmp dword [clientUIActives+0xc], 0x9
	jz CL_RunOncePerClientFrame_30
	mov eax, [cl_forceavidemo]
	cmp byte [eax+0xc], 0x0
	jnz CL_RunOncePerClientFrame_30
CL_RunOncePerClientFrame_50:
	cvtsi2ss xmm1, dword [edx+0xc]
	movss xmm0, dword [_float_1000_00000000]
	divss xmm0, xmm1
	mov eax, com_timescaleValue
	mulss xmm0, [eax]
	cvttss2si ebx, xmm0
	test ebx, ebx
	mov eax, 0x1
	cmovz ebx, eax
CL_RunOncePerClientFrame_20:
	mov [cls+0x11c], ebx
	mov [cls+0x114], ebx
	add [cls+0x118], ebx
	mov eax, com_frameTime
	mov ecx, [eax]
	mov eax, 0x1
	mov edx, ecx
	sub edx, [old_com_frameTime]
	cmovnz eax, edx
	mov [frame_msec], eax
	mov eax, 0xc8
	cmp dword [frame_msec], 0xc9
	cmovb eax, [frame_msec]
	mov [frame_msec], eax
	mov [old_com_frameTime], ecx
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
CL_RunOncePerClientFrame_10:
	mov dword [esp], 0x0
	call R_SyncGpu
	jmp CL_RunOncePerClientFrame_40
CL_RunOncePerClientFrame_30:
	mov dword [esp+0x8], _cstring_screenshot_silen
	mov [esp+0x4], esi
	mov dword [esp], 0x0
	call Cmd_ExecuteSingleCommand
	mov edx, [cl_avidemo]
	jmp CL_RunOncePerClientFrame_50


;CL_AnyLocalClientsRunning()
CL_AnyLocalClientsRunning:
	push ebp
	mov ebp, esp
	xor eax, eax
	cmp byte [clientUIActives+0x1], 0x0
	setnz al
	pop ebp
	ret
	nop


;CL_ForwardCommandToServer(int, char const*)
CL_ForwardCommandToServer:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, cmd_args
	mov edx, [eax]
	mov ecx, [eax+edx*4+0x44]
	test ecx, ecx
	jle CL_ForwardCommandToServer_10
	mov eax, [eax+edx*4+0x64]
	mov ebx, [eax]
CL_ForwardCommandToServer_60:
	movzx eax, byte [ebx]
	cmp al, 0x2d
	jz CL_ForwardCommandToServer_20
	cmp dword [clientUIActives+0xc], 0x4
	jle CL_ForwardCommandToServer_30
	cmp al, 0x2b
	jz CL_ForwardCommandToServer_30
	mov eax, [clientConnections+0x4018c]
	test eax, eax
	jnz CL_ForwardCommandToServer_30
	sub ecx, 0x1
	jle CL_ForwardCommandToServer_40
	mov edx, [clientConnections+0x12c]
	mov eax, edx
	sub eax, [clientConnections+0x130]
	add eax, 0xffffff80
	jg CL_ForwardCommandToServer_50
CL_ForwardCommandToServer_70:
	add edx, 0x1
	mov [clientConnections+0x12c], edx
	mov dword [esp+0x8], 0x400
	and edx, 0x7f
	shl edx, 0xa
	lea eax, [edx+clientConnections+0x134]
	mov [esp+0x4], eax
	mov eax, [ebp+0xc]
	mov [esp], eax
	call MSG_WriteReliableCommandToBuffer
	add esp, 0x14
	pop ebx
	pop ebp
	ret
CL_ForwardCommandToServer_30:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_unknown_command_
	mov dword [esp], 0xe
	call Com_Printf
CL_ForwardCommandToServer_20:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
CL_ForwardCommandToServer_10:
	mov ebx, _cstring_null
	jmp CL_ForwardCommandToServer_60
CL_ForwardCommandToServer_50:
	mov dword [esp+0x4], _cstring_exe_err_client_c
	mov dword [esp], 0x2
	call Com_Error
	mov edx, [clientConnections+0x12c]
	jmp CL_ForwardCommandToServer_70
CL_ForwardCommandToServer_40:
	mov edx, [clientConnections+0x12c]
	mov eax, edx
	sub eax, [clientConnections+0x130]
	add eax, 0xffffff80
	jg CL_ForwardCommandToServer_80
CL_ForwardCommandToServer_90:
	lea eax, [edx+0x1]
	mov [clientConnections+0x12c], eax
	mov dword [esp+0x8], 0x400
	and eax, 0x7f
	shl eax, 0xa
	add eax, clientConnections+0x134
	mov [esp+0x4], eax
	mov [esp], ebx
	call MSG_WriteReliableCommandToBuffer
	jmp CL_ForwardCommandToServer_20
CL_ForwardCommandToServer_80:
	mov dword [esp+0x4], _cstring_exe_err_client_c
	mov dword [esp], 0x2
	call Com_Error
	mov edx, [clientConnections+0x12c]
	jmp CL_ForwardCommandToServer_90
	nop


;CL_IsRenderingSplitScreen()
CL_IsRenderingSplitScreen:
	push ebp
	mov ebp, esp
	xor eax, eax
	pop ebp
	ret
	nop


;CL_IsLastActiveLocalClient(int)
CL_IsLastActiveLocalClient:
	push ebp
	mov ebp, esp
	mov eax, 0x1
	pop ebp
	ret


;CL_IsFirstActiveLocalClient(int)
CL_IsFirstActiveLocalClient:
	push ebp
	mov ebp, esp
	mov eax, 0x1
	pop ebp
	ret


;CL_GetFirstActiveLocalClient()
CL_GetFirstActiveLocalClient:
	push ebp
	mov ebp, esp
	xor eax, eax
	pop ebp
	ret
	nop


;CL_GetLocalClientActiveCount()
CL_GetLocalClientActiveCount:
	push ebp
	mov ebp, esp
	mov eax, 0x1
	pop ebp
	ret


;CL_GetUsernameForLocalClient(int)
CL_GetUsernameForLocalClient:
	push ebp
	mov ebp, esp
	mov eax, [name]
	mov eax, [eax+0xc]
	pop ebp
	ret
	nop


;CL_DrawTextPhysicalWithCursor(char const*, int, Font_s*, float, float, float, float, float const*, int, int, char)
CL_DrawTextPhysicalWithCursor:
	push ebp
	mov ebp, esp
	sub esp, 0x38
	movsx eax, byte [ebp+0x30]
	mov [esp+0x2c], eax
	mov eax, [ebp+0x2c]
	mov [esp+0x28], eax
	mov eax, [ebp+0x28]
	mov [esp+0x24], eax
	mov eax, [ebp+0x24]
	mov [esp+0x20], eax
	mov dword [esp+0x1c], 0x0
	mov eax, [ebp+0x20]
	mov [esp+0x18], eax
	mov eax, [ebp+0x1c]
	mov [esp+0x14], eax
	mov eax, [ebp+0x18]
	mov [esp+0x10], eax
	mov eax, [ebp+0x14]
	mov [esp+0xc], eax
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call R_AddCmdDrawTextWithCursor
	leave
	ret


;CL_IsWaitingOnServerToLoadMap(int)
CL_IsWaitingOnServerToLoadMap:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	movzx eax, byte [eax+cl_waitingOnServerToLoadMap]
	pop ebp
	ret
	nop


;CL_AllLocalClientsDisconnected()
CL_AllLocalClientsDisconnected:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	call Sys_IsMainThread
	test al, al
	jnz CL_AllLocalClientsDisconnected_10
CL_AllLocalClientsDisconnected_20:
	mov eax, 0x1
CL_AllLocalClientsDisconnected_30:
	leave
	ret
CL_AllLocalClientsDisconnected_10:
	mov dword [esp], 0x0
	call UI_IsFullscreen
	test eax, eax
	jnz CL_AllLocalClientsDisconnected_20
	cmp byte [clientUIActives], 0x0
	jz CL_AllLocalClientsDisconnected_20
	cmp dword [clientUIActives+0xc], 0x2
	jg CL_AllLocalClientsDisconnected_30
	mov eax, 0x1
	jmp CL_AllLocalClientsDisconnected_30
	nop
	add [eax], al


;CL_DrawTextPhysicalWithEffects(char const*, int, Font_s*, float, float, float, float, float const*, int, float const*, Material*, Material*, int, int, int, int)
CL_DrawTextPhysicalWithEffects:
	push ebp
	mov ebp, esp
	sub esp, 0x58
	mov eax, [ebp+0x44]
	mov [esp+0x40], eax
	mov eax, [ebp+0x40]
	mov [esp+0x3c], eax
	mov eax, [ebp+0x3c]
	mov [esp+0x38], eax
	mov eax, [ebp+0x38]
	mov [esp+0x34], eax
	mov eax, [ebp+0x34]
	mov [esp+0x30], eax
	mov eax, [ebp+0x30]
	mov [esp+0x2c], eax
	mov eax, [ebp+0x2c]
	mov [esp+0x28], eax
	mov eax, [ebp+0x28]
	mov [esp+0x24], eax
	mov eax, [ebp+0x24]
	mov [esp+0x20], eax
	mov dword [esp+0x1c], 0x0
	mov eax, [ebp+0x20]
	mov [esp+0x18], eax
	mov eax, [ebp+0x1c]
	mov [esp+0x14], eax
	mov eax, [ebp+0x18]
	mov [esp+0x10], eax
	mov eax, [ebp+0x14]
	mov [esp+0xc], eax
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call R_AddCmdDrawTextWithEffects
	leave
	ret


;CL_SetWaitingOnServerToLoadMap(int, unsigned char)
CL_SetWaitingOnServerToLoadMap:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0xc]
	mov eax, [ebp+0x8]
	mov [eax+cl_waitingOnServerToLoadMap], dl
	pop ebp
	ret
	nop


;CL_ControllerIndexFromClientNum(int)
CL_ControllerIndexFromClientNum:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	pop ebp
	ret


;CL_LocalActiveIndexFromClientNum(int)
CL_LocalActiveIndexFromClientNum:
	push ebp
	mov ebp, esp
	xor eax, eax
	pop ebp
	ret
	nop


;CL_Init(int)
CL_Init:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov dword [esp+0x4], _cstring__client_initiali
	mov dword [esp], 0xe
	call Com_Printf
	test ebx, ebx
	jle CL_Init_10
CL_Init_20:
	mov [esp], ebx
	call Com_ClientDObjClearAllSkel
	call CL_ClearMutedList
	mov dword [clientUIActives+0xc], 0x0
	mov dword [cls+0x118], 0x0
	mov byte [clientUIActives], 0x1
	mov byte [cl_serverLoadingMap], 0x0
	mov byte [ebx+cl_waitingOnServerToLoadMap], 0x0
	mov byte [g_waitingForServer], 0x0
	mov dword [esp], 0x0
	call FS_DisablePureCheck
	mov [esp+0x4], ebx
	mov [esp], ebx
	call Cbuf_Execute
	mov byte [clientUIActives+0x1], 0x1
	mov dword [esp+0x4], _cstring__client_initiali1
	mov dword [esp], 0xe
	call Com_Printf
	add esp, 0x14
	pop ebx
	pop ebp
	ret
CL_Init_10:
	mov dword [esp+0x8], 0x1b1bdc
	mov dword [esp+0x4], 0x0
	mov dword [esp], clients
	call memset
	jmp CL_Init_20
	nop


;CL_Frame(int, int)
CL_Frame:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov ebx, [ebp+0x8]
	mov esi, [clientUIActives+0xc]
	cmp byte [clientUIActives+0x1], 0x0
	jnz CL_Frame_10
CL_Frame_100:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CL_Frame_10:
	mov eax, [cl_voiceCommunication+0xa28]
	mov edx, eax
	shl edx, 0x8
	lea eax, [edx+eax*4+cl_voiceCommunication]
	mov [esp], eax
	call Voice_GetLocalVoiceData
	call Voice_Playback
	mov [esp], ebx
	call CL_UpdateColor
	cmp dword [clientUIActives+0xc], 0x3
	jle CL_Frame_20
	mov eax, cl_paused
	mov eax, [eax]
	mov edx, [eax+0xc]
	test edx, edx
	jz CL_Frame_30
CL_Frame_20:
	mov [esp], ebx
	call CL_CheckForResend
	mov edx, [clientUIActives+0xc]
	cmp edx, 0x2
	jg CL_Frame_40
	test ebx, ebx
	jle CL_Frame_50
CL_Frame_200:
	call DL_InProgress
	test al, al
	jnz CL_Frame_60
CL_Frame_160:
	cmp dword [clientUIActives+0xc], 0x9
	jz CL_Frame_70
CL_Frame_170:
	mov eax, [cl_ingame]
	cmp byte [eax+0xc], 0x0
	jnz CL_Frame_80
CL_Frame_180:
	mov [esp], ebx
	call CL_SetCGameTime
	mov [esp], ebx
	call CL_CreateCmdsDuringConnection
	lea eax, [esi-0x5]
	cmp eax, 0x3
	jbe CL_Frame_90
CL_Frame_220:
	cmp dword [clientUIActives+0xc], 0x9
	jnz CL_Frame_100
	mov eax, [cls+0x118]
	sub eax, [lastUpdateKeyAuthTime]
	cmp eax, 0x493e0
	jle CL_Frame_100
	mov eax, net_lanauthorize
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz CL_Frame_110
	mov ecx, [clientConnections+0x10]
	mov [ebp-0x24], ecx
	mov edx, [clientConnections+0x14]
	mov [ebp-0x20], edx
	mov eax, [clientConnections+0x18]
	mov [ebp-0x1c], eax
	mov [esp], ecx
	mov [esp+0x4], edx
	mov [esp+0x8], eax
	call Sys_IsLANAddress
	test eax, eax
	jnz CL_Frame_100
CL_Frame_110:
	mov [ebp+0x8], ebx
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp CL_RequestAuthorization
CL_Frame_40:
	mov eax, cl_paused
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	jz CL_Frame_120
	mov eax, sv_paused
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	jz CL_Frame_120
CL_Frame_190:
	lea eax, [edx-0x4]
	cmp eax, 0x3
	ja CL_Frame_130
	mov ecx, [clientConnections+0xc]
	test ecx, ecx
	jle CL_Frame_130
	mov eax, [cls+0x118]
	sub eax, ecx
	cvtsi2ss xmm1, eax
	movss xmm0, dword [_float_1000_00000000]
	mov eax, [cl_connectTimeout]
	mulss xmm0, [eax+0xc]
	ucomiss xmm1, xmm0
	ja CL_Frame_140
CL_Frame_130:
	cmp edx, 0x3
	jz CL_Frame_150
CL_Frame_50:
	mov dword [clients+0x4], 0x0
	call DL_InProgress
	test al, al
	jz CL_Frame_160
CL_Frame_60:
	call CL_WWWDownload
	cmp dword [clientUIActives+0xc], 0x9
	jnz CL_Frame_170
CL_Frame_70:
	mov eax, [cl_ingame]
	cmp byte [eax+0xc], 0x0
	jnz CL_Frame_180
	mov dword [esp+0x4], 0x1
	mov [esp], eax
	call Cvar_SetBool
	jmp CL_Frame_180
CL_Frame_120:
	cmp edx, 0x7
	jle CL_Frame_190
	mov ecx, [clientConnections+0xc]
	test ecx, ecx
	jle CL_Frame_190
	mov eax, [cls+0x118]
	sub eax, ecx
	cvtsi2ss xmm1, eax
	movss xmm0, dword [_float_1000_00000000]
	mov eax, [cl_timeout]
	mulss xmm0, [eax+0xc]
	ucomiss xmm1, xmm0
	jbe CL_Frame_190
CL_Frame_140:
	mov eax, [clients+0x4]
	add eax, 0x1
	mov [clients+0x4], eax
	cmp eax, 0x5
	jle CL_Frame_200
	mov dword [esp+0x4], _cstring_exe_err_server_t
	mov dword [esp], 0x2
	call Com_Error
	jmp CL_Frame_200
CL_Frame_30:
	mov eax, dvar_modifiedFlags
	test byte [eax], 0x2
	jz CL_Frame_20
	mov dword [esp+0x4], 0x2
	mov [esp], ebx
	call Cvar_InfoString
	mov [esp+0x4], eax
	mov dword [esp], _cstring_userinfo_s
	call va
	mov edi, eax
	mov edx, [clientConnections+0x12c]
	mov eax, edx
	sub eax, [clientConnections+0x130]
	add eax, 0xffffff80
	jg CL_Frame_210
CL_Frame_230:
	lea eax, [edx+0x1]
	mov [clientConnections+0x12c], eax
	mov dword [esp+0x8], 0x400
	and eax, 0x7f
	shl eax, 0xa
	add eax, clientConnections+0x134
	mov [esp+0x4], eax
	mov [esp], edi
	call MSG_WriteReliableCommandToBuffer
	jmp CL_Frame_20
CL_Frame_90:
	mov [esp], ebx
	call CL_SendCmd
	jmp CL_Frame_220
CL_Frame_80:
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call Cvar_SetBool
	jmp CL_Frame_180
CL_Frame_150:
	mov eax, [clientConnections+0xc]
	test eax, eax
	jnz CL_Frame_50
	mov edx, [clientConnections+0x20]
	mov eax, [cl_connectionAttempts]
	cmp edx, [eax+0xc]
	jle CL_Frame_50
	jmp CL_Frame_140
CL_Frame_210:
	mov dword [esp+0x4], _cstring_exe_err_client_c
	mov dword [esp], 0x2
	call Com_Error
	mov edx, [clientConnections+0x12c]
	jmp CL_Frame_230


;Initialized global or static variables of cl_main_mp:
SECTION .data
cl_shownet: dd 0x0, 0x0
customClassDvars: dd _cstring_customclass1, _cstring_customclass2, _cstring_customclass3, _cstring_customclass4, _cstring_customclass5, 0x0


;Initialized constant data of cl_main_mp:
SECTION .rdata


;Zero initialized global or static variables of cl_main_mp:
SECTION .bss
_ZZ21CL_GetServerIPAddressvE17szServerIPAddress: resb 0x80
_ZZ17CL_CheckForResendiE9msgBuffer: resb 0x800
_ZZ24CL_InitOnceForAllClientsvE19CL_ResetStats_f_VAR: resb 0x14
_ZZ24CL_InitOnceForAllClientsvE37CL_SelectStringTableEntryInDvar_f_VAR: resb 0x14
_ZZ24CL_InitOnceForAllClientsvE18UI_CloseMenu_f_VAR: resb 0x14
_ZZ24CL_InitOnceForAllClientsvE37Com_WriteLocalizedSoundAliasFiles_VAR: resb 0x14
_ZZ24CL_InitOnceForAllClientsvE23CL_OpenScriptMenu_f_VAR: resb 0x14
_ZZ24CL_InitOnceForAllClientsvE20CL_CubemapShot_f_VAR: resb 0x14
_ZZ24CL_InitOnceForAllClientsvE26CL_startSingleplayer_f_VAR: resb 0x14
_ZZ24CL_InitOnceForAllClientsvE27CL_UpdateLevelHunkUsage_VAR: resb 0x14
_ZZ24CL_InitOnceForAllClientsvE26CL_ReferencedIWDList_f_VAR: resb 0x14
_ZZ24CL_InitOnceForAllClientsvE22CL_OpenedIWDList_f_VAR: resb 0x14
_ZZ24CL_InitOnceForAllClientsvE19CL_ToggleMenu_f_VAR: resb 0x14
_ZZ24CL_InitOnceForAllClientsvE15CL_ShowIP_f_VAR: resb 0x14
_ZZ24CL_InitOnceForAllClientsvE15CL_Setenv_f_VAR: resb 0x14
_ZZ24CL_InitOnceForAllClientsvE28CL_ServerStatus_f_VAR_SERVER: resb 0x14
_ZZ24CL_InitOnceForAllClientsvE21CL_ServerStatus_f_VAR: resb 0x14
_ZZ24CL_InitOnceForAllClientsvE20CL_Ping_f_VAR_SERVER: resb 0x14
_ZZ24CL_InitOnceForAllClientsvE13CL_Ping_f_VAR: resb 0x14
_ZZ24CL_InitOnceForAllClientsvE13CL_Rcon_f_VAR: resb 0x14
_ZZ24CL_InitOnceForAllClientsvE22CL_GlobalServers_f_VAR: resb 0x14
_ZZ24CL_InitOnceForAllClientsvE21CL_LocalServers_f_VAR: resb 0x14
_ZZ24CL_InitOnceForAllClientsvE25CL_Reconnect_f_VAR_SERVER: resb 0x14
_ZZ24CL_InitOnceForAllClientsvE18CL_Reconnect_f_VAR: resb 0x14
_ZZ24CL_InitOnceForAllClientsvE23CL_Connect_f_VAR_SERVER: resb 0x14
_ZZ24CL_InitOnceForAllClientsvE16CL_Connect_f_VAR: resb 0x14
_ZZ24CL_InitOnceForAllClientsvE17CL_PlayLogo_f_VAR: resb 0x14
_ZZ24CL_InitOnceForAllClientsvE33CL_PlayUnskippableCinematic_f_VAR: resb 0x14
_ZZ24CL_InitOnceForAllClientsvE22CL_PlayCinematic_f_VAR: resb 0x14
_ZZ24CL_InitOnceForAllClientsvE24CL_PlayDemo_f_VAR_SERVER_0: resb 0x14
_ZZ24CL_InitOnceForAllClientsvE17CL_PlayDemo_f_VAR_0: resb 0x14
_ZZ24CL_InitOnceForAllClientsvE24CL_PlayDemo_f_VAR_SERVER: resb 0x14
_ZZ24CL_InitOnceForAllClientsvE17CL_PlayDemo_f_VAR: resb 0x14
_ZZ24CL_InitOnceForAllClientsvE19CL_StopRecord_f_VAR: resb 0x14
_ZZ24CL_InitOnceForAllClientsvE15CL_Record_f_VAR: resb 0x14
_ZZ24CL_InitOnceForAllClientsvE26CL_Disconnect_f_VAR_SERVER: resb 0x14
_ZZ24CL_InitOnceForAllClientsvE19CL_Disconnect_f_VAR: resb 0x14
_ZZ24CL_InitOnceForAllClientsvE27CL_Snd_Restart_f_VAR_SERVER: resb 0x14
_ZZ24CL_InitOnceForAllClientsvE20CL_Snd_Restart_f_VAR: resb 0x14
_ZZ24CL_InitOnceForAllClientsvE27CL_Vid_Restart_f_VAR_SERVER: resb 0x14
_ZZ24CL_InitOnceForAllClientsvE20CL_Vid_Restart_f_VAR: resb 0x14
_ZZ24CL_InitOnceForAllClientsvE19CL_Clientinfo_f_VAR: resb 0x14
_ZZ24CL_InitOnceForAllClientsvE22CL_Configstrings_f_VAR: resb 0x14
_ZZ24CL_InitOnceForAllClientsvE24CL_ForwardToServer_f_VAR: resb 0x14
_ZZ11CL_ShutdowniE9recursive: resb 0x18
_ZZ31CL_DispatchConnectionlessPacketi8netadr_tP5msg_tiE8printBuf: resb 0x820
clientUIActives: resb 0x10
g_waitingForServer: resb 0x1e
clients: resb 0x1b1bdc
cls: resb 0x2dc708
cl_noprint: resb 0x4
cl_waitingOnServerToLoadMap: resb 0x1
clientConnections: resb 0x615e0
nextdemo: resb 0x4
cl_activeAction: resb 0x4
cl_freezeDemo: resb 0x4
cl_serverLoadingMap: resb 0x1
cl_showServerCommands: resb 0x4
cl_showTimeDelta: resb 0x4
cl_freelook: resb 0x4
cl_maxpackets: resb 0x4
cl_mouseAccel: resb 0x4
cl_nodelta: resb 0x64
cl_packetdup: resb 0x4
cl_sensitivity: resb 0x4
cl_showMouseRate: resb 0x4
cl_showSend: resb 0x4
frame_msec: resb 0x18
m_filter: resb 0x4
m_forward: resb 0x4
m_pitch: resb 0x4
m_side: resb 0x4
m_yaw: resb 0x4
cl_allowDownload: resb 0x4
cl_avidemo: resb 0x4
cl_connectTimeout: resb 0x4
cl_connectionAttempts: resb 0x4
cl_forceavidemo: resb 0x4
cl_hudDrawsBehindUI: resb 0x4
cl_inGameVideo: resb 0x8
cl_ingame: resb 0x4
cl_maxppf: resb 0x4
cl_motdString: resb 0x4
cl_pinglist: resb 0x4140
cl_serverStatusResendTime: resb 0x4
cl_shownuments: resb 0x4
cl_timeout: resb 0x4
cl_voice: resb 0x4
cl_voiceCommunication: resb 0xa40
cl_wwwDownload: resb 0x4
customclass: resb 0x14
lastUpdateKeyAuthTime: resb 0x4
motd: resb 0x4
name: resb 0x4
old_com_frameTime: resb 0x4
onlinegame: resb 0x4


;All cstrings:
SECTION .rdata
_cstring_02x02x02x02x02x0:		db "%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x",0
_cstring_s_load:		db "%s_load",0
_cstring_s_demoname_quit:		db "%s <demoname> [quit]",0ah,0
_cstring_dm_d:		db ".dm_%d",0
_cstring_demoss:		db "demos/%s",0
_cstring_timedemo:		db "timedemo",0
_cstring_null:		db 0
_cstring_listen_server_ca:		db "listen server cannot play a demo.",0ah,0
_cstring_demossdm_d:		db "demos/%s.dm_%d",0
_cstring_exe_err_not_foun:		db "EXE_ERR_NOT_FOUND",015h,"%s",0
_cstring_quit:		db "quit",0
_cstring_exe_serverdiscon:		db "EXE_SERVERDISCONNECTREASON",0
_cstring_exe_server_disco:		db "EXE_SERVER_DISCONNECTED",0
_cstring_v:		db "v",0
_cstring_vt:		db "vt",0
_cstring_challengerespons:		db "challengeResponse",0
_cstring_unwanted_challen:		db "Unwanted challenge response received.  Ignored.",0ah,0
_cstring_connectresponse:		db "connectResponse",0
_cstring_connectresponse_:		db "connectResponse packet while not connecting.  Ignored.",0ah,0
_cstring_challenge_d:		db "challenge: %d",0ah,0
_cstring_statresponse:		db "statResponse",0
_cstring_statresponse_pac:		db "statResponse packet while not syncing stats.  Ignored.",0ah,0
_cstring_dup_connect_rece:		db "Dup connect received.  Ignored.",0ah,0
_cstring_connectresponse_1:		db "connectResponse from a different address.  Ignored.",0ah,0
_cstring_s_should_have_be:		db "%s should have been %s",0ah,0
_cstring_inforesponse:		db "infoResponse",0
_cstring_dup_statresponse:		db "Dup statResponse received.  Ignored.",0ah,0
_cstring_statusresponse:		db "statusResponse",0
_cstring_disconnect:		db "disconnect",0
_cstring_echo:		db "echo",0
_cstring_s:		db "%s",0
_cstring_keyauthorize:		db "keyAuthorize",0
_cstring_print:		db "print",0
_cstring_error:		db "error",0
_cstring_getserversrespon:		db "getserversResponse",0
_cstring_needcdkey:		db "needcdkey",0
_cstring_exe_awaitingcdke:		db "EXE_AWAITINGCDKEYAUTH",0
_cstring_need_cd_key_mess:		db "need cd key message",0
_cstring_s1:		db "%s",0ah,0
_cstring_loadingnewmap:		db "loadingnewmap",0
_cstring_uploadstats:		db "uploadStats",0ah,0
_cstring_requeststats:		db "requeststats",0
_cstring_fastrestart:		db "fastrestart",0
_cstring_cl_nextdemo_s:		db "CL_NextDemo: %s",0ah,0
_cstring_demo_is_over:		db "Demo is over",0
_cstring_:		db 0ah,0
_cstring_i_frames_31f_sec:		db "%i frames, %3.1f seconds: %3.1f fps",0ah,0
_cstring_you_must_be_in_a:		db "You must be in a level to record.",0ah,0
_cstring_demo04i:		db "demo%04i",0
_cstring_record_demoname:		db "record <demoname>",0ah,0
_cstring_already_recordin:		db "Already recording.",0ah,0
_cstring_recording_to_s:		db "recording to %s.",0ah,0
_cstring_error_couldnt_op:		db "ERROR: couldn",27h,"t open.",0ah,0
_cstring_1:		db "=",0
_cstring_space:		db " ",0
_cstring_ss:		db "%s=%s",0ah,0
_cstring_s_undefined:		db "%s undefined",0ah,0
_cstring__cl_shutdown_:		db "----- CL_Shutdown -----",0ah,0
_cstring_recursive_shutdo:		db "recursive shutdown",0
_cstring_cmd:		db "cmd",0
_cstring_configstrings:		db "configstrings",0
_cstring_clientinfo:		db "clientinfo",0
_cstring_vid_restart:		db "vid_restart",0
_cstring_snd_restart:		db "snd_restart",0
_cstring_record:		db "record",0
_cstring_demo:		db "demo",0
_cstring_cinematic:		db "cinematic",0
_cstring_logo:		db "logo",0
_cstring_stoprecord:		db "stoprecord",0
_cstring_connect:		db "connect",0
_cstring_reconnect:		db "reconnect",0
_cstring_localservers:		db "localservers",0
_cstring_globalservers:		db "globalservers",0
_cstring_rcon:		db "rcon",0
_cstring_setenv:		db "setenv",0
_cstring_ping:		db "ping",0
_cstring_serverstatus:		db "serverstatus",0
_cstring_showip:		db "showip",0
_cstring_fs_openedlist:		db "fs_openedList",0
_cstring_fs_referencedlis:		db "fs_referencedList",0
_cstring_updatehunkusage:		db "updatehunkusage",0
_cstring_savetranslations:		db "SaveTranslations",0
_cstring_savenewtranslati:		db "SaveNewTranslations",0
_cstring_loadtranslations:		db "LoadTranslations",0
_cstring_startsingleplaye:		db "startSingleplayer",0
_cstring_buynow:		db "buyNow",0
_cstring_singleplaylink:		db "singlePlayLink",0
_cstring_setrecommended:		db "setRecommended",0
_cstring_cubemapshot:		db "cubemapShot",0
_cstring_openscriptmenu:		db "openScriptMenu",0
_cstring_closemenu:		db "closemenu",0
_cstring_2:		db "-----------------------",0ah,0
_cstring_exe_err_client_c:		db "EXE_ERR_CLIENT_CMD_OVERFLOW",0
_cstring_localhost:		db "localhost",0
_cstring_selectstringtabl:		db "selectStringTableEntryInDvar mp/didyouknow.csv 0 didyouknow",0
_cstring_usage_logo_image:		db "USAGE: logo <image name> <fadein seconds> <full duration seconds> <fadeout seconds>",0ah,0
_cstring_cl_playlogo_f:		db "CL_PlayLogo_f",0ah,0
_cstring_s11:		db "%s1",0
_cstring_s2:		db "%s2",0
_cstring_s_runt_packet:		db "%s: Runt packet",0ah,0
_cstring_s_got_msg_sequen:		db "%s: Got msg sequence %i but connstate (%i) is < CA_CONNECTED",0ah,0
_cstring_ssequenced_packe:		db "%s:sequenced packet without connection",0ah,0
_cstring_ignoring_illegib:		db "ignoring illegible message",0
_cstring_cant_reconnect_t:		db "Can",27h,"t reconnect to localhost.",0ah,0
_cstring_connect_s_reconn:		db "connect %s reconnect",0ah,0
_cstring_update_sound:		db "update sound",0
_cstring__client_informat:		db "--------- Client Information ---------",0ah,0
_cstring_state_i:		db "state: %i",0ah,0
_cstring_server_s:		db "Server: %s",0ah,0
_cstring_user_info_settin:		db "User info settings:",0ah,0
_cstring_3:		db "--------------------------------------",0ah,0
_cstring_white:		db "white",0
_cstring_console:		db "console",0
_cstring_fontsconsolefont:		db "fonts/consoleFont",0
_cstring_trying_to_send_p:		db "Trying to send PB Packet but connection state is ",27h,"disconnected",27h,0ah,0
_cstring_not_recording_a_:		db "Not recording a demo.",0ah,0
_cstring_stopped_demo:		db "Stopped demo.",0ah,0
_cstring_trying_to_get_se:		db "Trying to get server address but connection state is ",27h,"disconnected",27h,0ah,0
_cstring_bot:		db "bot",0
_cstring_trying_to_get_se1:		db "Trying to get serverinfo but connection state is ",27h,"disconnected",27h,0ah,0
_cstring__cl_begindownloa:		db "***** CL_BeginDownload *****",0ah,"Localname: %s",0ah,"Remotename: %s",0ah,"****************************",0ah,0
_cstring_stmp:		db "%s.tmp",0
_cstring_download_s:		db "download %s",0
_cstring_code_post_gfx_mp:		db "code_post_gfx_mp",0
_cstring_common_mp:		db "common_mp",0
_cstring_localized_code_p:		db "localized_code_post_gfx_mp",0
_cstring_localized_common:		db "localized_common_mp",0
_cstring_mod:		db "mod",0
_cstring_current_game_is_:		db "Current game is an online game with stats, custom classes, unlocks",0
_cstring_onlinegame:		db "onlinegame",0
_cstring_nizml:		db "ni]Zm^l",0
_cstring_s_is_different_f:		db 015h,"%s is different from the server",0ah,0
_cstring_need_files_s:		db "Need files: %s",0ah,0
_cstring_you_are_missing_:		db 015h,"You are missing some files referenced by the server:",0ah,"%sGo to the Multiplayer options menu to allow downloads",0ah,0ah,0
_cstring_listen_server_ca1:		db "Listen server cannot sound restart.",0ah,0
_cstring_vdr:		db "vdr",0
_cstring_the_current_lang:		db "The current language locale",0
_cstring_loc_language:		db "loc_language",0
_cstring_turn_on_string_t:		db "Turn on string translation",0
_cstring_loc_translate:		db "loc_translate",0
_cstring_ignore_localized:		db "Ignore localized assets",0
_cstring_fs_ignorelocaliz:		db "fs_ignoreLocalized",0
_cstring__initializing_re:		db "----- Initializing Renderer ----",0ah,0
_cstring_ui_mp:		db "ui_mp",0
_cstring_listen_server_ca2:		db "Listen server cannot video restart.",0ah,0
_cstring_mapname:		db "mapname",0
_cstring_va_:		db "Va ",0
_cstring_cl_checkforresen:		db 015h,"CL_CheckForResend: bad connstate",0
_cstring_i:		db "%i",0
_cstring_protocol:		db "protocol",0
_cstring_challenge:		db "challenge",0
_cstring_qport:		db "qport",0
_cstring_stats:		db "stats",0
_cstring_getchallenge_0_s:		db "getchallenge 0 ",22h,"%s",22h,0
_cstring_scanning_for_ser:		db "Scanning for servers on the local network...",0ah,0
_cstring_getinfo_xxx:		db "getinfo xxx",0
_cstring_0:		db "0",0
_cstring_cl_punkbuster:		db "cl_punkbuster",0
_cstring_not_connected_to:		db "Not connected to a server.",0ah,0
_cstring_4i_s:		db "%4i: %s",0ah,0
_cstring_opened_iwd_names:		db "Opened IWD Names: %s",0ah,0
_cstring_demo_file_was_co:		db "Demo file was corrupt.",0ah,0
_cstring_cl_readdemomessa:		db 015h,"CL_ReadDemoMessage: demoMsglen > MAX_MSGLEN",0
_cstring_demo_file_was_tr:		db "Demo file was truncated.",0ah,0
_cstring_usage_openscript:		db "USAGE: openscriptmenu <parent menu name> <script menu response>",0ah,0
_cstring_example_openscri:		db "EXAMPLE: openscriptmenu ingame changeweapon",0ah,0
_cstring_sv_serverid:		db "sv_serverId",0
_cstring_cmd_mr_i_i_s:		db "cmd mr %i %i %s",0ah,0
_cstring_rate:		db "rate",0
_cstring_setting_state_to:		db "Setting state to CA_LOADING in CL_DownloadsComplete",0ah,0
_cstring_g_gametype:		db "g_gametype",0
_cstring_donedl:		db "donedl",0
_cstring_ss1:		db "%s/%s",0
_cstring_iiiii:		db "%i.%i.%i.%i:%i",0
_cstring_referenced_iwd_n:		db "Referenced IWD Names: %s",0ah,0
_cstring_iw3spexe:		db "iw3sp.exe",0
_cstring_pb_:		db "PB_",0
_cstring_recv_ss:		db "recv: %s->",27h,"%s",27h,0ah,0
_cstring_fs_restrict:		db "fs_restrict",0
_cstring_allow_anonymous_:		db "Allow anonymous log in",0
_cstring_cl_anonymous:		db "cl_anonymous",0
_cstring_getkeyauthorize_:		db "getKeyAuthorize %i %s PB %s",0
_cstring_cod4masteractivi:		db "cod4master.activision.com",0
_cstring_resolving_s:		db "Resolving %s",0ah,0
_cstring_s_resolved_to_ii:		db "%s resolved to %i.%i.%i.%i:%i",0ah,0
_cstring_exe_err_invalid_:		db "EXE_ERR_INVALID_CD_KEY",0
_cstring_couldnt_resolve_:		db "Couldn",27h,"t resolve address",0ah,0
_cstring_server_changing_:		db "Server changing map %s, gametype %s",0ah,0
_cstring_platform_disconn:		db "PLATFORM_DISCONNECTED_FROM_SERVER",0
_cstring_print_nothing_to:		db "Print nothing to the console",0
_cstring_cl_noprint:		db "cl_noprint",0
_cstring_custom_class_nam:		db "Custom class name",0
_cstring_should_the_hud_d:		db "Should the HUD draw when the UI is up",3fh,0
_cstring_cl_huddrawsbehin:		db "cl_hudDrawsBehindUI",0
_cstring_use_voice_commun:		db "Use voice communications",0
_cstring_cl_voice:		db "cl_voice",0
_cstring_seconds_with_no_:		db "Seconds with no received packets until a timeout occurs",0
_cstring_cl_timeout:		db "cl_timeout",0
_cstring_timeout_time_in_:		db "Timeout time in seconds while connecting to a server",0
_cstring_cl_connecttimeou:		db "cl_connectTimeout",0
_cstring_maximum_number_o:		db "Maximum number of connection attempts before aborting",0
_cstring_cl_connectionatt:		db "cl_connectionAttempts",0
_cstring_display_network_:		db "Display network debugging information",0
_cstring_cl_shownet:		db "cl_shownet",0
_cstring_show_the_number_:		db "Show the number of entities",0
_cstring_cl_shownuments:		db "cl_shownuments",0
_cstring_enable_debugging:		db "Enable debugging information for server commands",0
_cstring_cl_showservercom:		db "cl_showServerCommands",0
_cstring_enable_debugging1:		db "Enable debugging information for sent commands",0
_cstring_cl_showsend:		db "cl_showSend",0
_cstring_enable_debugging2:		db "Enable debugging information for time delta",0
_cstring_cl_showtimedelta:		db "cl_showTimeDelta",0
_cstring_cl_freezedemo_is:		db "cl_freezeDemo is used to lock a demo in place for single frame advances",0
_cstring_cl_freezedemo:		db "cl_freezeDemo",0
_cstring_action_to_execut:		db "Action to execute in first frame",0
_cstring_activeaction:		db "activeAction",0
_cstring_avi_demo_frames_:		db "AVI demo frames per second",0
_cstring_cl_avidemo:		db "cl_avidemo",0
_cstring_record_avi_demo_:		db "Record AVI demo even if client is not active",0
_cstring_cl_forceavidemo:		db "cl_forceavidemo",0
_cstring_max_yaw_speed_in:		db "Max yaw speed in degrees for game pad and keyboard",0
_cstring_cl_yawspeed:		db "cl_yawspeed",0
_cstring_max_pitch_speed_:		db "Max pitch speed in degrees for game pad",0
_cstring_cl_pitchspeed:		db "cl_pitchspeed",0
_cstring_multiplier_for_m:		db "Multiplier for max angle speed for game pad and keyboard",0
_cstring_cl_anglespeedkey:		db "cl_anglespeedkey",0
_cstring_maximum_number_o1:		db "Maximum number of packets sent per frame",0
_cstring_cl_maxpackets:		db "cl_maxpackets",0
_cstring_enable_packet_du:		db "Enable packet duplication",0
_cstring_cl_packetdup:		db "cl_packetdup",0
_cstring_mouse_sensitivit:		db "Mouse sensitivity",0
_cstring_sensitivity:		db "sensitivity",0
_cstring_mouse_accelerati:		db "Mouse acceleration",0
_cstring_cl_mouseaccel:		db "cl_mouseAccel",0
_cstring_enable_looking_w:		db "Enable looking with mouse",0
_cstring_cl_freelook:		db "cl_freelook",0
_cstring_print_mouse_rate:		db "Print mouse rate debugging information to the console",0
_cstring_cl_showmouserate:		db "cl_showmouserate",0
_cstring_allow_client_dow:		db "Allow client downloads from the server",0
_cstring_cl_allowdownload:		db "cl_allowDownload",0
_cstring_download_files_v:		db "Download files via HTTP",0
_cstring_cl_wwwdownload:		db "cl_wwwDownload",0
_cstring_client_is_talkin:		db "Client is talking",0
_cstring_cl_talking:		db "cl_talking",0
_cstring_allow_in_game_ci:		db "Allow in game cinematics",0
_cstring_r_ingamevideo:		db "r_inGameVideo",0
_cstring_time_in_millisec:		db "Time in milliseconds to resend a server status message",0
_cstring_cl_serverstatusr:		db "cl_serverStatusResendTime",0
_cstring_maximum_servers_:		db "Maximum servers to ping per frame in server browser",0
_cstring_cl_maxppf:		db "cl_maxppf",0
_cstring_bypass_ui_mouse_:		db "Bypass UI mouse input and send directly to the game",0
_cstring_cl_bypassmousein:		db "cl_bypassMouseInput",0
_cstring_default_pitch:		db "Default pitch",0
_cstring_m_pitch:		db "m_pitch",0
_cstring_default_yaw:		db "Default yaw",0
_cstring_m_yaw:		db "m_yaw",0
_cstring_forward_speed_in:		db "Forward speed in units per second",0
_cstring_m_forward:		db "m_forward",0
_cstring_sideways_motion_:		db "Sideways motion in units per second",0
_cstring_m_side:		db "m_side",0
_cstring_allow_mouse_move:		db "Allow mouse movement smoothing",0
_cstring_m_filter:		db "m_filter",0
_cstring_message_of_the_d:		db "Message of the day",0
_cstring_cl_motdstring:		db "cl_motdString",0
_cstring_true_if_the_game:		db "True if the game is active",0
_cstring_cl_ingame:		db "cl_ingame",0
_cstring_maximum_ping_for:		db "Maximum ping for the client",0
_cstring_cl_maxping:		db "cl_maxPing",0
_cstring_player_name:		db "Player name",0
_cstring_name:		db "name",0
_cstring_players_preferre:		db "Player",27h,"s preferred baud rate",0
_cstring_snapshot_rate:		db "Snapshot rate",0
_cstring_snaps:		db "snaps",0
_cstring_determines_wheth:		db "Determines whether PunkBuster is enabled",0
_cstring_password:		db "password",0
_cstring_the_next_demo_to:		db "The next demo to play",0
_cstring_nextdemo:		db "nextdemo",0
_cstring_enable_the_hud_d:		db "Enable the HUD display",0
_cstring_hud_enable:		db "hud_enable",0
_cstring_show_blood:		db "Show blood",0
_cstring_cg_blood:		db "cg_blood",0
_cstring_motd:		db "motd",0
_cstring_min_orbit_altitu:		db "Min orbit altitude for driver",27h,"s view",0
_cstring_vehdriverviewhei:		db "vehDriverViewHeightMin",0
_cstring_max_orbit_altitu:		db "Max orbit altitude for driver",27h,"s view",0
_cstring_vehdriverviewhei1:		db "vehDriverViewHeightMax",0
_cstring_dm_1:		db "dm_1",0
_cstring_demos:		db "demos",0
_cstring_unskippablecinem:		db "unskippablecinematic",0
_cstring_roq:		db "roq",0
_cstring_video:		db "video",0
_cstring_togglemenu:		db "toggleMenu",0
_cstring_localizesoundali:		db "localizeSoundAliasFiles",0
_cstring_selectstringtabl1:		db "selectStringTableEntryInDvar",0
_cstring_resetstats:		db "resetStats",0
_cstring_screenshot_silen:		db "screenshot silent",0ah,0
_cstring_unknown_command_:		db "Unknown command ",22h,"%s",22h,0ah,0
_cstring__client_initiali:		db "----- Client Initialization -----",0ah,0
_cstring__client_initiali1:		db "----- Client Initialization Complete -----",0ah,0
_cstring_exe_err_server_t:		db "EXE_ERR_SERVER_TIMEOUT",0
_cstring_userinfo_s:		db "userinfo ",22h,"%s",22h,0
_cstring_customclass1:		db "customclass1",0
_cstring_customclass2:		db "customclass2",0
_cstring_customclass3:		db "customclass3",0
_cstring_customclass4:		db "customclass4",0
_cstring_customclass5:		db "customclass5",0



;All constant floats and doubles:
SECTION .rdata
_double_1000_00000000:		dq 0x408f400000000000	; 1000
_float_0_00000000:		dd 0x0	; 0
_float_1_00000000:		dd 0x3f800000	; 1
_float_3_00000000:		dd 0x40400000	; 3
_float_1000_00000000:		dd 0x447a0000	; 1000
_float_0_50000000:		dd 0x3f000000	; 0.5

