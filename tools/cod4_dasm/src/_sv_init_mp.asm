;Imports of sv_init_mp:
	extern Cvar_ResetScriptInfo
	extern com_sv_running
	extern Com_SyncThreads
	extern Com_Printf
	extern SEH_StringEd_GetString
	extern sv_maxclients
	extern svs
	extern SV_EndClientSnapshot
	extern SV_GetServerStaticHeader
	extern SV_SendDisconnect
	extern SV_SetServerStaticHeader
	extern SV_BeginClientSnapshot
	extern SV_WriteSnapshotToClient
	extern SV_RemoveOperatorCommands
	extern SV_MasterShutdown
	extern SV_ShutdownGameProgs
	extern SV_DropClient
	extern SV_FreeClients
	extern sv
	extern SL_RemoveRefToString
	extern Com_Memset
	extern com_inServerFrame
	extern Cvar_SetBool
	extern CL_IsLocalClientActive
	extern memset
	extern bgs
	extern CL_Disconnect
	extern Com_Error
	extern g_assetEntryPool
	extern Q_strncpyz
	extern Info_ValueForKey
	extern Sys_BeginLoadThreadPriorities
	extern useFastFile
	extern com_dedicated
	extern Scr_ParseGameTypeList
	extern SV_SetGametype
	extern sv_gametype
	extern CL_InitLoad
	extern Cvar_SetStringByName
	extern CL_MapLoading
	extern CL_ShutdownAll
	extern Com_Restart
	extern Cvar_RegisterInt
	extern Cvar_ClearModified
	extern Sys_MillisecondsRaw
	extern ms_srand
	extern ms_rand
	extern Sys_Milliseconds
	extern FS_Restart
	extern CL_StartLoading
	extern SL_GetString_
	extern SV_InitSnapshot
	extern nextmap
	extern Cvar_SetString
	extern cl_paused
	extern Cvar_SetInt
	extern Com_GetBspFilename
	extern CM_LoadMap
	extern Com_LoadWorld
	extern CM_LinkWorld
	extern sv_serverid
	extern com_frameTime
	extern SV_InitGameProgs
	extern SV_RunFrame
	extern ClientConnect
	extern NET_OutOfBandPrint
	extern sv_pure
	extern FS_LoadedIwds
	extern sv_iwds
	extern sv_iwdNames
	extern FS_ReferencedIwds
	extern sv_referencedIwds
	extern sv_referencedIwdNames
	extern DB_ReferencedFFChecksums
	extern sv_referencedFFCheckSums
	extern DB_ReferencedFFNameList
	extern sv_referencedFFNames
	extern Cvar_InfoString
	extern dvar_modifiedFlags
	extern SV_SetConfig
	extern SV_Heartbeat_f
	extern Cvar_VariableBooleanValue
	extern EnablePbSv
	extern Sys_EndLoadThreadPriorities
	extern DisablePbSv
	extern Com_PrintWarning
	extern DB_AddUserMapDir
	extern DB_ResetZoneSize
	extern Com_sprintf
	extern DB_LoadXAssets
	extern DB_SyncXAssets
	extern DB_UpdateDebugZone
	extern G_GetSavePersist
	extern NET_Sleep
	extern memcpy
	extern SV_GentityNum
	extern Com_LoadSoundAliases
	extern Com_UnloadBsp
	extern Com_LoadBsp
	extern FS_Shutdown
	extern FS_ClearIwdReferences
	extern Q_stricmp
	extern Cvar_SetBoolByName
	extern SL_ConvertToString
	extern strcmp
	extern SL_GetLowercaseString_
	extern sprintf
	extern SV_SendServerCommand
	extern Hunk_AllocateTempMemory
	extern Hunk_FreeTempMemory
	extern Cvar_InfoString_Big
	extern fs_gameDirVar
	extern Q_strncat
	extern SL_FindLowercaseString
	extern CCS_GetConstConfigStringIndex
	extern CCS_GetConfigStringNumForConstIndex
	extern SL_FindString
	extern FS_FOpenFileByMode
	extern Z_MallocInternal
	extern FS_Read
	extern FS_FCloseFile
	extern Com_Parse
	extern atoi
	extern com_expectedHunkUsage
	extern Z_FreeInternal
	extern SV_AddOperatorCommands
	extern Cvar_RegisterString
	extern sv_mapname
	extern sv_privateClients
	extern sv_hostname
	extern Cvar_RegisterBool
	extern sv_clientSideBullets
	extern sv_punkbuster
	extern sv_maxRate
	extern sv_minPing
	extern sv_maxPing
	extern sv_floodProtect
	extern sv_showCommands
	extern sv_allowAnonymous
	extern sv_disableClientConsole
	extern sv_privatePassword
	extern sv_allowDownload
	extern sv_FFCheckSums
	extern sv_FFNames
	extern sv_voice
	extern sv_voiceQuality
	extern sv_cheats
	extern rcon_password
	extern sv_fps
	extern sv_timeout
	extern sv_connectTimeout
	extern sv_zombietime
	extern sv_reconnectlimit
	extern sv_padPackets
	extern sv_allowedClan1
	extern sv_allowedClan2
	extern sv_packet_info
	extern sv_showAverageBPS
	extern Cvar_RegisterFloat
	extern sv_kickBanTime
	extern sv_botsPressAttackBtn
	extern sv_mapRotation
	extern sv_mapRotationCurrent
	extern sv_debugRate
	extern sv_debugReliableCmds
	extern sv_wwwDownload
	extern sv_wwwBaseURL
	extern sv_wwwDlDisconnected
	extern sv_clientArchive

;Exports of sv_init_mp:
	global SV_InitDvar
	global SV_Shutdown
	global SV_GetUserinfo
	global SV_SetUserinfo
	global SV_SpawnServer
	global set_sv_punkbuster
	global SV_GetConfigstring
	global SV_SetConfigstring
	global SV_ChangeMaxClients
	global SV_SetSystemInfoConfig
	global SV_GetConfigstringConst
	global SV_InitArchivedSnapshot
	global SV_SetConfigValueForKey
	global SV_SetExpectedHunkUsage
	global SV_Init
	global SV_Loaded
	global sv_serverId_value


SECTION .text


;SV_InitDvar()
SV_InitDvar:
	push ebp
	mov ebp, esp
	pop ebp
	jmp Cvar_ResetScriptInfo
	nop


;SV_Shutdown(char const*)
SV_Shutdown:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov eax, com_sv_running
	mov eax, [eax]
	test eax, eax
	jz SV_Shutdown_10
	cmp byte [eax+0xc], 0x0
	jnz SV_Shutdown_20
SV_Shutdown_10:
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SV_Shutdown_20:
	call Com_SyncThreads
	mov dword [esp+0x4], _cstring__server_shutdown
	mov dword [esp], 0xf
	call Com_Printf
	mov eax, [ebp+0x8]
	mov [esp], eax
	call SEH_StringEd_GetString
	test eax, eax
	setnz byte [ebp-0x49]
	mov dword [ebp-0x50], 0x0
	mov ecx, sv_maxclients
	mov [ebp-0x54], ecx
SV_Shutdown_90:
	mov eax, [ecx]
	mov eax, [eax+0xc]
	test eax, eax
	jle SV_Shutdown_30
	xor edi, edi
	mov ebx, svs
	add ebx, 0x46380c
	mov esi, svs
	add esi, 0x484c68
	jmp SV_Shutdown_40
SV_Shutdown_80:
	lea eax, [ebp-0x40]
	mov [esp+0x4], eax
	mov [esp], ebx
	call SV_EndClientSnapshot
	call SV_GetServerStaticHeader
	mov ecx, [ebp-0x54]
SV_Shutdown_50:
	add edi, 0x1
	add ebx, 0xa5634
	add esi, 0xa5634
	mov eax, [ecx]
	cmp edi, [eax+0xc]
	jge SV_Shutdown_30
SV_Shutdown_40:
	mov edx, [esi-0x2145c]
	cmp edx, 0x1
	jle SV_Shutdown_50
	cmp dword [esi-0x2143c], 0x2
	jz SV_Shutdown_60
	lea eax, [ebx+0x21288]
	mov [esp+0x10], eax
	movzx eax, byte [ebp-0x49]
	mov [esp+0xc], eax
	mov eax, [ebp+0x8]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov [esp], ebx
	call SV_SendDisconnect
SV_Shutdown_60:
	mov dword [esi], 0xffffffff
	call SV_SetServerStaticHeader
	lea eax, [ebp-0x40]
	mov [esp+0x4], eax
	mov [esp], ebx
	call SV_BeginClientSnapshot
	mov eax, [esi-0x2145c]
	cmp eax, 0x4
	jz SV_Shutdown_70
	sub eax, 0x1
	jnz SV_Shutdown_80
SV_Shutdown_70:
	lea eax, [ebp-0x40]
	mov [esp+0x4], eax
	mov [esp], ebx
	call SV_WriteSnapshotToClient
	jmp SV_Shutdown_80
SV_Shutdown_30:
	add dword [ebp-0x50], 0x1
	cmp dword [ebp-0x50], 0x2
	jnz SV_Shutdown_90
	call SV_RemoveOperatorCommands
	call SV_MasterShutdown
	call SV_ShutdownGameProgs
	mov ecx, sv_maxclients
	mov eax, [ecx]
	mov eax, [eax+0xc]
	test eax, eax
	jle SV_Shutdown_100
	xor esi, esi
	mov ebx, svs
	add ebx, 0x46380c
	mov edi, ecx
SV_Shutdown_120:
	cmp dword [ebx], 0x1
	jle SV_Shutdown_110
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], _cstring_exe_disconnected
	mov [esp], ebx
	call SV_DropClient
	mov ecx, edi
SV_Shutdown_110:
	add esi, 0x1
	add ebx, 0xa5634
	mov eax, [ecx]
	cmp esi, [eax+0xc]
	jl SV_Shutdown_120
SV_Shutdown_100:
	call SV_FreeClients
	mov esi, sv
	mov ebx, esi
	mov edi, esi
	jmp SV_Shutdown_130
SV_Shutdown_150:
	add ebx, 0x2
	lea eax, [esi+0x1314]
	cmp eax, ebx
	jz SV_Shutdown_140
SV_Shutdown_130:
	movzx eax, word [ebx+0x81a]
	test ax, ax
	jz SV_Shutdown_150
	movzx eax, ax
	mov [esp], eax
	call SL_RemoveRefToString
	mov esi, edi
	add ebx, 0x2
	lea eax, [esi+0x1314]
	cmp eax, ebx
	jnz SV_Shutdown_130
SV_Shutdown_140:
	movzx eax, word [esi+0x818]
	test ax, ax
	jnz SV_Shutdown_160
SV_Shutdown_180:
	mov dword [esp+0x8], 0x5fc50
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call Com_Memset
	mov eax, com_inServerFrame
	mov dword [eax], 0x0
	mov dword [esp+0x4], 0x0
	mov eax, com_sv_running
	mov eax, [eax]
	mov [esp], eax
	call Cvar_SetBool
	mov dword [esp], 0x0
	call CL_IsLocalClientActive
	test al, al
	jnz SV_Shutdown_170
SV_Shutdown_190:
	mov dword [esp+0x8], svs+0x9778e80
	mov dword [esp+0x4], 0x0
	mov eax, svs
	mov [esp], eax
	call memset
	mov eax, bgs
	mov dword [eax], 0x0
	mov dword [esp+0x4], _cstring_
	mov dword [esp], 0xf
	call Com_Printf
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SV_Shutdown_160:
	movzx eax, ax
	mov [esp], eax
	call SL_RemoveRefToString
	jmp SV_Shutdown_180
SV_Shutdown_170:
	mov dword [esp], 0x0
	call CL_Disconnect
	jmp SV_Shutdown_190
	add [eax], al


;SV_GetUserinfo(int, char*, int)
SV_GetUserinfo:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov ebx, [ebp+0x8]
	mov edi, [ebp+0xc]
	mov esi, [ebp+0x10]
	test esi, esi
	jle SV_GetUserinfo_10
SV_GetUserinfo_40:
	test ebx, ebx
	js SV_GetUserinfo_20
	mov eax, sv_maxclients
	mov eax, [eax]
	cmp ebx, [eax+0xc]
	jl SV_GetUserinfo_30
SV_GetUserinfo_20:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_sv_getuserinfo_b
	mov dword [esp], 0x2
	call Com_Error
SV_GetUserinfo_30:
	mov [ebp+0x10], esi
	lea eax, [ebx+ebx*4]
	shl eax, 0x7
	add eax, ebx
	lea eax, [ebx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	lea eax, [ebx+eax*4]
	mov edx, svs
	lea eax, [edx+eax*4+g_assetEntryPool+0x2cd14]
	mov [ebp+0xc], eax
	mov [ebp+0x8], edi
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp Q_strncpyz
SV_GetUserinfo_10:
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_sv_getuserinfo_b1
	mov dword [esp], 0x2
	call Com_Error
	jmp SV_GetUserinfo_40
	nop


;SV_SetUserinfo(int, char const*)
SV_SetUserinfo:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov esi, [ebp+0x8]
	mov edi, [ebp+0xc]
	test esi, esi
	js SV_SetUserinfo_10
	mov eax, sv_maxclients
	mov eax, [eax]
	cmp esi, [eax+0xc]
	jge SV_SetUserinfo_10
SV_SetUserinfo_20:
	test edi, edi
	mov eax, _cstring_null
	cmovz edi, eax
	mov dword [esp+0x8], 0x400
	mov [esp+0x4], edi
	lea ebx, [esi+esi*4]
	shl ebx, 0x7
	add ebx, esi
	lea ebx, [esi+ebx*2]
	mov eax, ebx
	shl eax, 0x5
	add ebx, eax
	lea ebx, [esi+ebx*4]
	shl ebx, 0x2
	mov esi, svs
	lea eax, [ebx+esi+g_assetEntryPool+0x2cd14]
	mov [esp], eax
	call Q_strncpyz
	mov dword [esp+0x4], _cstring_name
	mov [esp], edi
	call Info_ValueForKey
	mov dword [esp+0x8], 0x10
	mov [esp+0x4], eax
	lea ebx, [ebx+esi+g_assetEntryPool+0x4d954]
	mov [esp], ebx
	call Q_strncpyz
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SV_SetUserinfo_10:
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_sv_setuserinfo_b
	mov dword [esp], 0x2
	call Com_Error
	jmp SV_SetUserinfo_20


;SV_SpawnServer(char const*)
SV_SpawnServer:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x11c
	call Com_SyncThreads
	call Sys_BeginLoadThreadPriorities
	mov eax, useFastFile
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz SV_SpawnServer_10
	mov eax, com_dedicated
	mov eax, [eax]
	mov ebx, [eax+0xc]
	test ebx, ebx
	jz SV_SpawnServer_20
SV_SpawnServer_10:
	call Scr_ParseGameTypeList
	call SV_SetGametype
	mov edi, sv_gametype
	mov eax, [edi]
	mov eax, [eax+0xc]
	mov [esp+0x4], eax
	mov esi, [ebp+0x8]
	mov [esp], esi
	call CL_InitLoad
	mov eax, useFastFile
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz SV_SpawnServer_30
SV_SpawnServer_350:
	mov eax, com_sv_running
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz SV_SpawnServer_40
	mov dword [ebp-0xd8], 0x0
SV_SpawnServer_400:
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_mapname
	call Cvar_SetStringByName
	mov edx, [ebp+0x8]
	mov [esp], edx
	call CL_MapLoading
	call CL_ShutdownAll
	call SV_ShutdownGameProgs
	mov dword [esp+0x4], _cstring__server_initiali
	mov dword [esp], 0xf
	call Com_Printf
	mov esi, [ebp+0x8]
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_server_s
	mov dword [esp], 0xf
	call Com_Printf
	mov edi, sv
	mov esi, edi
	mov ebx, edi
	jmp SV_SpawnServer_50
SV_SpawnServer_70:
	add esi, 0x2
	lea eax, [edi+0x1314]
	cmp esi, eax
	jz SV_SpawnServer_60
SV_SpawnServer_50:
	movzx eax, word [esi+0x81a]
	test ax, ax
	jz SV_SpawnServer_70
	movzx eax, ax
	mov [esp], eax
	call SL_RemoveRefToString
	mov edi, ebx
	add esi, 0x2
	lea eax, [edi+0x1314]
	cmp esi, eax
	jnz SV_SpawnServer_50
SV_SpawnServer_60:
	movzx eax, word [edi+0x818]
	test ax, ax
	jnz SV_SpawnServer_80
SV_SpawnServer_360:
	mov dword [esp+0x8], 0x5fc50
	mov dword [esp+0x4], 0x0
	mov [esp], edi
	call Com_Memset
	mov eax, com_inServerFrame
	mov dword [eax], 0x0
	mov eax, useFastFile
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz SV_SpawnServer_90
SV_SpawnServer_500:
	call Com_Restart
	mov edi, com_sv_running
	mov eax, [edi]
	cmp byte [eax+0xc], 0x0
	jnz SV_SpawnServer_100
	mov dword [esp+0x14], _cstring_the_maximum_numb
	mov dword [esp+0x10], 0x25
	mov dword [esp+0xc], 0x40
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x20
	mov dword [esp], _cstring_ui_maxclients
	call Cvar_RegisterInt
	mov dword [esp+0x14], _cstring_the_maximum_numb
	mov dword [esp+0x10], 0x25
	mov eax, [eax+0xc]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x20
	mov dword [esp], _cstring_sv_maxclients
	call Cvar_RegisterInt
	mov ebx, sv_maxclients
	mov [ebx], eax
	mov [esp], eax
	call Cvar_ClearModified
	mov eax, [ebx]
	mov edx, [eax+0xc]
	test edx, edx
	jle SV_SpawnServer_110
SV_SpawnServer_510:
	mov edx, svs
	mov dword [edx+svs+0x131008c], 0x2a000
	mov eax, [eax+0xc]
	imul eax, eax
	shl eax, 0x5
	mov [edx+svs+0x1310090], eax
	mov eax, [edx+0x463804]
	mov [edx+svs+0x9778650], eax
	mov dword [edx+0x463800], 0x1
	mov dword [esp+0x4], 0x1
	mov eax, [edi]
	mov [esp], eax
	call Cvar_SetBool
SV_SpawnServer_320:
	mov dword [esp+0x8], 0x40
	mov eax, sv_gametype
	mov eax, [eax]
	mov eax, [eax+0xc]
	mov [esp+0x4], eax
	mov edi, sv
	add edi, 0x5fc08
	mov [ebp-0xdc], edi
	mov [esp], edi
	call Q_strncpyz
	call Sys_MillisecondsRaw
	mov [esp], eax
	call ms_srand
	call ms_rand
	mov edi, eax
	call ms_rand
	mov ebx, eax
	call Sys_Milliseconds
	mov edx, edi
	shl edx, 0x10
	xor edx, ebx
	xor edx, eax
	mov eax, sv
	mov [eax+0x14], edx
	mov [esp+0x4], edx
	mov dword [esp], 0x0
	call FS_Restart
	mov ebx, useFastFile
	mov eax, [ebx]
	cmp byte [eax+0xc], 0x0
	jz SV_SpawnServer_120
SV_SpawnServer_490:
	mov edx, [ebp-0xdc]
	mov [esp+0x4], edx
	mov edi, [ebp+0x8]
	mov [esp], edi
	call CL_StartLoading
	mov eax, [ebx]
	cmp byte [eax+0xc], 0x0
	jnz SV_SpawnServer_130
SV_SpawnServer_480:
	mov dword [esp+0x8], 0x13
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_null
	call SL_GetString_
	mov edx, sv
	mov [edx+0x818], ax
	mov ebx, edx
SV_SpawnServer_140:
	mov dword [esp+0x8], 0x13
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_null
	call SL_GetString_
	mov [ebx+0x81a], ax
	add ebx, 0x2
	cmp esi, ebx
	jnz SV_SpawnServer_140
	call Cvar_ResetScriptInfo
	mov ebx, svs
	mov dword [ebx+0x2dbc514], 0x0
	mov dword [ebx+0x2dbc518], 0x0
	mov dword [ebx+0x624451c], 0x0
	mov dword [ebx+0x8246aa0], 0x0
	mov dword [ebx+0x8246aa4], 0x0
	mov dword [ebx+0x8246aa8], 0x0
	mov dword [ebx+0x8246aac], 0x0
	call SV_InitSnapshot
	xor dword [ebx+0x463808], 0x4
	mov dword [esp+0x4], _cstring_map_restart
	mov eax, nextmap
	mov eax, [eax]
	mov [esp], eax
	call Cvar_SetString
	mov dword [esp+0x4], 0x0
	mov eax, cl_paused
	mov eax, [eax]
	mov [esp], eax
	call Cvar_SetInt
	mov esi, [ebp+0x8]
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x40
	lea edi, [ebp-0xc8]
	mov [esp], edi
	call Com_GetBspFilename
	mov esi, useFastFile
	mov eax, [esi]
	cmp byte [eax+0xc], 0x0
	jz SV_SpawnServer_150
SV_SpawnServer_470:
	lea eax, [ebp-0x24]
	mov [esp+0x4], eax
	lea edx, [ebp-0xc8]
	mov [esp], edx
	call CM_LoadMap
	lea edi, [ebp-0xc8]
	mov [esp], edi
	call Com_LoadWorld
	mov eax, [esi]
	cmp byte [eax+0xc], 0x0
	jz SV_SpawnServer_160
SV_SpawnServer_460:
	call CM_LinkWorld
	movzx eax, byte [sv_serverId_value]
	add al, 0x10
	movzx eax, al
	mov [sv_serverId_value], eax
	test al, 0xf0
	jnz SV_SpawnServer_170
	add eax, 0x10
	mov [sv_serverId_value], eax
SV_SpawnServer_170:
	mov [esp+0x4], eax
	mov eax, sv_serverid
	mov eax, [eax]
	mov [esp], eax
	call Cvar_SetInt
	mov edx, sv
	mov eax, com_frameTime
	mov eax, [eax]
	mov [edx+0x10], eax
	mov dword [edx], 0x1
	mov eax, [esi]
	cmp byte [eax+0xc], 0x0
	jz SV_SpawnServer_180
SV_SpawnServer_450:
	mov edi, [ebp-0xd8]
	mov [esp], edi
	call SV_InitGameProgs
	mov esi, 0x3
SV_SpawnServer_190:
	add dword [ebx+0x463804], 0x64
	call SV_RunFrame
	sub esi, 0x1
	jnz SV_SpawnServer_190
	mov edi, sv
	cmp dword [edi+0x5fb38], 0x1
	jg SV_SpawnServer_200
SV_SpawnServer_430:
	mov edx, sv_maxclients
	mov eax, [edx]
	mov edi, [eax+0xc]
	test edi, edi
	jle SV_SpawnServer_210
	xor esi, esi
	mov ebx, svs
	add ebx, 0x504526
	mov edi, svs
	add edi, 0x46380c
	jmp SV_SpawnServer_220
SV_SpawnServer_240:
	mov dword [esp+0x8], 0x1
	mov [esp+0x4], eax
	mov [esp], edi
	call SV_DropClient
	mov edx, sv_maxclients
SV_SpawnServer_230:
	add esi, 0x1
	add edi, 0xa5634
	add ebx, 0xa5634
	mov eax, [edx]
	cmp [eax+0xc], esi
	jle SV_SpawnServer_210
SV_SpawnServer_220:
	cmp dword [ebx-0xa0d1a], 0x1
	jle SV_SpawnServer_230
	movzx eax, word [ebx]
	mov [esp+0x4], eax
	mov [esp], esi
	call ClientConnect
	test eax, eax
	jnz SV_SpawnServer_240
	mov dword [ebx-0xa0d1a], 0x2
	mov edx, sv_maxclients
	add esi, 0x1
	add edi, 0xa5634
	add ebx, 0xa5634
	mov eax, [edx]
	cmp [eax+0xc], esi
	jg SV_SpawnServer_220
SV_SpawnServer_210:
	mov eax, com_sv_running
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz SV_SpawnServer_250
	mov eax, [edx]
	mov esi, [eax+0xc]
	test esi, esi
	jle SV_SpawnServer_250
	xor esi, esi
	mov ebx, svs
	add ebx, 0x46380c
SV_SpawnServer_270:
	cmp dword [ebx], 0x1
	jle SV_SpawnServer_260
	mov byte [ebx+0xa5631], 0x0
	mov eax, [ebx+0x20]
	mov [ebp-0x48], eax
	mov ecx, [ebx+0x24]
	mov [ebp-0x44], ecx
	mov edx, [ebx+0x28]
	mov [ebp-0x40], edx
	mov dword [esp+0x10], _cstring_requeststats
	mov [esp+0x4], eax
	mov [esp+0x8], ecx
	mov [esp+0xc], edx
	mov dword [esp], 0x1
	call NET_OutOfBandPrint
	mov edx, sv_maxclients
SV_SpawnServer_260:
	add esi, 0x1
	add ebx, 0xa5634
	mov eax, [edx]
	cmp [eax+0xc], esi
	jg SV_SpawnServer_270
SV_SpawnServer_250:
	mov eax, sv_pure
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz SV_SpawnServer_280
	lea esi, [ebp-0x1c]
	mov [esp+0x4], esi
	lea ebx, [ebp-0x20]
	mov [esp], ebx
	call FS_LoadedIwds
	mov eax, [ebp-0x20]
	cmp byte [eax], 0x0
	jz SV_SpawnServer_290
SV_SpawnServer_340:
	mov [esp+0x4], eax
	mov eax, sv_iwds
	mov eax, [eax]
	mov [esp], eax
	call Cvar_SetString
	mov eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov eax, sv_iwdNames
	mov eax, [eax]
	mov [esp], eax
	call Cvar_SetString
SV_SpawnServer_310:
	mov [esp+0x4], esi
	mov [esp], ebx
	call FS_ReferencedIwds
	mov eax, [ebp-0x20]
	mov [esp+0x4], eax
	mov eax, sv_referencedIwds
	mov eax, [eax]
	mov [esp], eax
	call Cvar_SetString
	mov eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov eax, sv_referencedIwdNames
	mov eax, [eax]
	mov [esp], eax
	call Cvar_SetString
	call DB_ReferencedFFChecksums
	mov [ebp-0x20], eax
	mov [esp+0x4], eax
	mov eax, sv_referencedFFCheckSums
	mov eax, [eax]
	mov [esp], eax
	call Cvar_SetString
	call DB_ReferencedFFNameList
	mov [ebp-0x1c], eax
	mov [esp+0x4], eax
	mov eax, sv_referencedFFNames
	mov eax, [eax]
	mov [esp], eax
	call Cvar_SetString
	call SV_SetSystemInfoConfig
	mov dword [esp+0x4], 0x404
	mov dword [esp], 0x0
	call Cvar_InfoString
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call SV_SetConfigstring
	mov ebx, dvar_modifiedFlags
	and dword [ebx], 0xfffffbfb
	mov dword [esp+0x8], 0x100
	mov dword [esp+0x4], 0x80
	mov dword [esp], 0x14
	call SV_SetConfig
	and dword [ebx], 0xfffffeff
	mov eax, sv
	mov dword [eax], 0x2
	call SV_Heartbeat_f
	mov dword [esp+0x4], _cstring_1
	mov dword [esp], 0xf
	call Com_Printf
	mov dword [esp], _cstring_sv_punkbuster
	call Cvar_VariableBooleanValue
	test al, al
	jz SV_SpawnServer_300
	call EnablePbSv
SV_SpawnServer_330:
	call Sys_EndLoadThreadPriorities
	add esp, 0x11c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SV_SpawnServer_280:
	mov dword [esp+0x4], _cstring_null
	mov eax, sv_iwds
	mov eax, [eax]
	mov [esp], eax
	call Cvar_SetString
	mov dword [esp+0x4], _cstring_null
	mov eax, sv_iwdNames
	mov eax, [eax]
	mov [esp], eax
	call Cvar_SetString
	lea esi, [ebp-0x1c]
	lea ebx, [ebp-0x20]
	jmp SV_SpawnServer_310
SV_SpawnServer_100:
	call SV_ChangeMaxClients
	jmp SV_SpawnServer_320
SV_SpawnServer_300:
	call DisablePbSv
	jmp SV_SpawnServer_330
SV_SpawnServer_290:
	mov dword [esp+0x4], _cstring_warning_sv_pure_
	mov dword [esp], 0xf
	call Com_PrintWarning
	mov eax, [ebp-0x20]
	jmp SV_SpawnServer_340
SV_SpawnServer_20:
	mov eax, [ebp+0x8]
	mov [esp], eax
	call DB_AddUserMapDir
	mov dword [esp], 0x0
	call DB_ResetZoneSize
	mov edx, [ebp+0x8]
	mov [esp+0xc], edx
	mov dword [esp+0x8], _cstring_s_load
	mov dword [esp+0x4], 0x40
	lea ebx, [ebp-0x88]
	mov [esp], ebx
	call Com_sprintf
	mov [ebp-0x30], ebx
	mov dword [ebp-0x2c], 0x20
	mov dword [ebp-0x28], 0x60
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x1
	lea eax, [ebp-0x30]
	mov [esp], eax
	call DB_LoadXAssets
	jmp SV_SpawnServer_10
SV_SpawnServer_30:
	call DB_SyncXAssets
	call DB_UpdateDebugZone
	jmp SV_SpawnServer_350
SV_SpawnServer_80:
	movzx eax, ax
	mov [esp], eax
	call SL_RemoveRefToString
	jmp SV_SpawnServer_360
SV_SpawnServer_40:
	call G_GetSavePersist
	mov [ebp-0xd8], eax
	mov edx, sv_maxclients
	mov eax, [edx]
	mov ecx, [eax+0xc]
	test ecx, ecx
	jle SV_SpawnServer_370
	xor esi, esi
	mov ebx, svs
	add ebx, 0x46380c
	mov [ebp-0xec], edi
	mov [ebp-0xe0], edx
SV_SpawnServer_390:
	cmp dword [ebx], 0x2
	jle SV_SpawnServer_380
	mov edi, [ebp-0xec]
	mov eax, [edi]
	mov eax, [eax+0xc]
	mov [esp+0x10], eax
	mov eax, [ebp+0x8]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_loadingnewmapss
	mov dword [esp+0x4], 0x40
	lea edx, [ebp-0xc8]
	mov [esp], edx
	call Com_sprintf
	mov edx, [ebx+0x20]
	mov [ebp-0x3c], edx
	mov ecx, [ebx+0x24]
	mov [ebp-0x38], ecx
	mov eax, [ebx+0x28]
	mov [ebp-0x34], eax
	lea edi, [ebp-0xc8]
	mov [esp+0x10], edi
	mov [esp+0x4], edx
	mov [esp+0x8], ecx
	mov [esp+0xc], eax
	mov dword [esp], 0x1
	call NET_OutOfBandPrint
	mov edx, [ebp-0xe0]
SV_SpawnServer_380:
	add esi, 0x1
	add ebx, 0xa5634
	mov eax, [edx]
	cmp [eax+0xc], esi
	jg SV_SpawnServer_390
SV_SpawnServer_370:
	mov dword [esp], 0xfa
	call NET_Sleep
	jmp SV_SpawnServer_400
SV_SpawnServer_200:
	mov dword [ebp-0xd0], 0x1
	mov [ebp-0xcc], edi
	mov eax, [ebp-0xd0]
	jmp SV_SpawnServer_410
SV_SpawnServer_440:
	mov edx, [ebp-0xd0]
	mov [eax], edx
	mov eax, [ebp-0xcc]
	add eax, 0x1cac
	mov dword [esp+0x8], 0xf4
	mov esi, [ebp-0xd4]
	mov [esp+0x4], esi
	mov [esp], eax
	call memcpy
	movzx eax, byte [esi+0xf6]
	mov edi, [ebp-0xcc]
	mov [edi+0x1da0], eax
	mov eax, [esi+0xf8]
	mov [edi+0x1da4], eax
	mov eax, [esi+0xfc]
	mov [edi+0x1da8], eax
	mov edx, [ebp-0xd0]
	lea eax, [edx+edx*2]
	shl eax, 0x4
	sub eax, edx
	shl eax, 0x3
	mov edi, sv
	lea ecx, [eax+edi+0x1c20]
	lea esi, [ecx+0x14]
	mov ebx, [ebp-0xd4]
	add ebx, 0x124
	mov edx, [ebp-0xd4]
	movss xmm0, dword [edx+0x124]
	movss [ecx+0x14], xmm0
	mov edx, [ebx+0x4]
	mov [esi+0x4], edx
	mov edx, [ebx+0x8]
	mov [esi+0x8], edx
	lea eax, [eax+edi+0x1c30]
	lea ebx, [eax+0x10]
	mov ecx, [ebp-0xd4]
	add ecx, 0x130
	mov esi, [ebp-0xd4]
	mov edx, [esi+0x130]
	mov [eax+0x10], edx
	mov eax, [ecx+0x4]
	mov [ebx+0x4], eax
	mov eax, [ecx+0x8]
	mov [ebx+0x8], eax
	cmp dword [esi+0x8c], 0x3f
	jle SV_SpawnServer_420
	mov dword [esi+0x8c], 0x40
SV_SpawnServer_420:
	add dword [ebp-0xd0], 0x1
	add dword [ebp-0xcc], 0x178
	mov eax, [ebp-0xd0]
	cmp eax, [edi+0x5fb38]
	jge SV_SpawnServer_430
SV_SpawnServer_410:
	mov [esp], eax
	call SV_GentityNum
	mov [ebp-0xd4], eax
	cmp byte [eax+0xf4], 0x0
	jnz SV_SpawnServer_440
	mov edi, sv
	jmp SV_SpawnServer_420
SV_SpawnServer_180:
	mov eax, [ebp+0x8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x40
	lea edx, [ebp-0xc8]
	mov [esp], edx
	call Com_GetBspFilename
	mov dword [esp+0x8], 0x2
	mov dword [esp+0x4], _cstring_all_mp
	lea esi, [ebp-0xc8]
	mov [esp], esi
	call Com_LoadSoundAliases
	jmp SV_SpawnServer_450
SV_SpawnServer_160:
	call Com_UnloadBsp
	jmp SV_SpawnServer_460
SV_SpawnServer_150:
	mov [esp], edi
	call Com_LoadBsp
	jmp SV_SpawnServer_470
SV_SpawnServer_130:
	mov [esp], edi
	call DB_AddUserMapDir
	mov [ebp-0x30], edi
	mov dword [ebp-0x2c], 0x8
	mov dword [ebp-0x28], 0x8
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x1
	lea eax, [ebp-0x30]
	mov [esp], eax
	call DB_LoadXAssets
	jmp SV_SpawnServer_480
SV_SpawnServer_120:
	mov edx, [ebp+0x8]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x40
	lea edi, [ebp-0xc8]
	mov [esp], edi
	call Com_GetBspFilename
	mov [esp], edi
	call SV_SetExpectedHunkUsage
	jmp SV_SpawnServer_490
SV_SpawnServer_90:
	mov dword [esp], 0x1
	call FS_Shutdown
	call FS_ClearIwdReferences
	jmp SV_SpawnServer_500
SV_SpawnServer_110:
	mov dword [esp+0x4], 0x1
	mov [esp], eax
	call Cvar_SetInt
	mov eax, [ebx]
	jmp SV_SpawnServer_510


;set_sv_punkbuster(char*)
set_sv_punkbuster:
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
	mov dword [esp], _cstring_sv_punkbuster
	call Cvar_SetBoolByName
	leave
	ret
	nop


;SV_GetConfigstring(int, char*, int)
SV_GetConfigstring:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov ebx, [ebp+0x8]
	mov edi, [ebp+0xc]
	mov esi, [ebp+0x10]
	test esi, esi
	jle SV_GetConfigstring_10
SV_GetConfigstring_30:
	cmp ebx, 0x989
	jbe SV_GetConfigstring_20
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_sv_getconfigstri
	mov dword [esp], 0x2
	call Com_Error
SV_GetConfigstring_20:
	mov eax, sv
	movzx eax, word [eax+ebx*2+0x81a]
	mov [esp], eax
	call SL_ConvertToString
	mov [ebp+0x10], esi
	mov [ebp+0xc], eax
	mov [ebp+0x8], edi
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp Q_strncpyz
SV_GetConfigstring_10:
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_sv_getconfigstri1
	mov dword [esp], 0x2
	call Com_Error
	jmp SV_GetConfigstring_30


;SV_SetConfigstring(int, char const*)
SV_SetConfigstring:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x44c
	cmp dword [ebp+0x8], 0x989
	ja SV_SetConfigstring_10
SV_SetConfigstring_110:
	mov ebx, sv
	mov ecx, [ebp+0x8]
	movzx edx, word [ebx+ecx*2+0x81a]
	test dx, dx
	jz SV_SetConfigstring_20
	mov edi, [ebp+0xc]
	test edi, edi
	mov eax, _cstring_null
	cmovnz eax, [ebp+0xc]
	mov [ebp+0xc], eax
	movzx eax, dx
	mov [esp], eax
	call SL_ConvertToString
	mov [esp+0x4], eax
	mov eax, [ebp+0xc]
	mov [esp], eax
	call strcmp
	test eax, eax
	jnz SV_SetConfigstring_30
SV_SetConfigstring_20:
	add esp, 0x44c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SV_SetConfigstring_30:
	mov edx, [ebp+0x8]
	movzx eax, word [ebx+edx*2+0x81a]
	mov [esp], eax
	call SL_RemoveRefToString
	cmp dword [ebp+0x8], 0x334
	jle SV_SetConfigstring_40
	mov dword [esp+0x8], 0x13
	mov dword [esp+0x4], 0x0
	mov ecx, [ebp+0xc]
	mov [esp], ecx
	call SL_GetLowercaseString_
SV_SetConfigstring_120:
	mov edx, sv
	mov ecx, [ebp+0x8]
	mov [edx+ecx*2+0x81a], ax
	cmp dword [edx], 0x2
	jz SV_SetConfigstring_50
	mov esi, [edx+0xc]
	test esi, esi
	jz SV_SetConfigstring_20
	mov edx, [ebp+0x8]
SV_SetConfigstring_140:
	mov esi, 0xffffffff
	xor ebx, ebx
	cld
	mov ecx, esi
	mov edi, [ebp+0xc]
	mov eax, ebx
	repne scasb
	not ecx
	sub ecx, 0x1
	mov [ebp-0x42c], ecx
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_i
	lea ecx, [ebp-0x418]
	mov [esp], ecx
	call sprintf
	cld
	mov ecx, esi
	lea edi, [ebp-0x418]
	mov eax, ebx
	repne scasb
	not ecx
	mov dword [ebp-0x424], 0x3fd
	sub [ebp-0x424], ecx
	mov edx, sv_maxclients
	mov eax, [edx]
	mov ebx, [eax+0xc]
	test ebx, ebx
	jle SV_SetConfigstring_20
	mov dword [ebp-0x428], 0x0
	mov ecx, svs
	add ecx, 0x46380c
	mov [ebp-0x420], ecx
	mov eax, ecx
SV_SetConfigstring_130:
	cmp dword [eax], 0x2
	jle SV_SetConfigstring_60
	mov ecx, [ebp-0x424]
	cmp [ebp-0x42c], ecx
	jle SV_SetConfigstring_70
	mov ecx, [ebp-0x42c]
	test ecx, ecx
	jle SV_SetConfigstring_60
	mov eax, [ebp-0x424]
	add eax, 0x1
	mov [ebp-0x41c], eax
	mov esi, [ebp-0x42c]
	mov edi, 0x78
	xor ebx, ebx
SV_SetConfigstring_100:
	mov [esp+0x8], eax
	mov eax, [ebp+0xc]
	add eax, ebx
	mov [esp+0x4], eax
	lea edx, [ebp-0x418]
	mov [esp], edx
	call Q_strncpyz
	lea ecx, [ebp-0x418]
	mov [esp+0x14], ecx
	mov eax, [ebp+0x8]
	mov [esp+0x10], eax
	mov edx, edi
	movsx eax, dl
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_c_i_s
	mov dword [esp+0x4], 0x1
	mov ecx, [ebp-0x420]
	mov [esp], ecx
	call SV_SendServerCommand
	add ebx, [ebp-0x424]
	sub esi, [ebp-0x424]
	test esi, esi
	jle SV_SetConfigstring_80
	test ebx, ebx
	jnz SV_SetConfigstring_90
	mov edi, 0x78
	mov eax, [ebp-0x41c]
	jmp SV_SetConfigstring_100
SV_SetConfigstring_10:
	mov eax, [ebp+0x8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_sv_setconfigstri
	mov dword [esp], 0x2
	call Com_Error
	jmp SV_SetConfigstring_110
SV_SetConfigstring_40:
	mov dword [esp+0x8], 0x13
	mov dword [esp+0x4], 0x0
	mov eax, [ebp+0xc]
	mov [esp], eax
	call SL_GetString_
	jmp SV_SetConfigstring_120
SV_SetConfigstring_90:
	cmp [ebp-0x424], esi
	setge al
	lea edi, [eax+0x79]
	mov eax, [ebp-0x41c]
	jmp SV_SetConfigstring_100
SV_SetConfigstring_70:
	mov eax, [ebp+0xc]
	mov [esp+0x14], eax
	mov edx, [ebp+0x8]
	mov [esp+0x10], edx
	mov dword [esp+0xc], 0x64
	mov dword [esp+0x8], _cstring_c_i_s
	mov dword [esp+0x4], 0x1
	mov ecx, [ebp-0x420]
	mov [esp], ecx
	call SV_SendServerCommand
SV_SetConfigstring_80:
	mov edx, sv_maxclients
SV_SetConfigstring_60:
	add dword [ebp-0x428], 0x1
	add dword [ebp-0x420], 0xa5634
	mov eax, [edx]
	mov ecx, [ebp-0x428]
	cmp ecx, [eax+0xc]
	jge SV_SetConfigstring_20
	mov eax, [ebp-0x420]
	jmp SV_SetConfigstring_130
SV_SetConfigstring_50:
	mov edx, ecx
	jmp SV_SetConfigstring_140


;SV_ChangeMaxClients()
SV_ChangeMaxClients:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov eax, sv_maxclients
	mov eax, [eax]
	mov ebx, [eax+0xc]
	test ebx, ebx
	jg SV_ChangeMaxClients_10
	mov dword [ebp-0x1c], 0x1
SV_ChangeMaxClients_120:
	mov dword [esp+0x14], _cstring_the_maximum_numb
	mov dword [esp+0x10], 0x25
	mov dword [esp+0xc], 0x40
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x20
	mov dword [esp], _cstring_ui_maxclients
	call Cvar_RegisterInt
	mov dword [esp+0x14], _cstring_the_maximum_numb
	mov dword [esp+0x10], 0x25
	mov eax, [eax+0xc]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x20
	mov dword [esp], _cstring_sv_maxclients
	call Cvar_RegisterInt
	mov esi, sv_maxclients
	mov [esi], eax
	mov [esp], eax
	call Cvar_ClearModified
	mov eax, [esi]
	mov edx, [ebp-0x1c]
	cmp [eax+0xc], edx
	jl SV_ChangeMaxClients_20
SV_ChangeMaxClients_140:
	cmp ebx, [eax+0xc]
	jz SV_ChangeMaxClients_30
	mov edx, [ebp-0x1c]
	lea eax, [edx+edx*4]
	shl eax, 0x7
	add eax, edx
	lea eax, [edx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	mov edx, [ebp-0x1c]
	lea eax, [edx+eax*4]
	shl eax, 0x2
	mov [esp], eax
	call Hunk_AllocateTempMemory
	mov [ebp-0x20], eax
	mov ebx, [ebp-0x1c]
	test ebx, ebx
	jle SV_ChangeMaxClients_40
	mov ebx, eax
	xor edi, edi
	mov esi, svs
	add esi, 0x46380c
SV_ChangeMaxClients_60:
	cmp dword [esi], 0x1
	jle SV_ChangeMaxClients_50
	mov dword [esp+0x8], 0xa5634
	mov [esp+0x4], esi
	mov [esp], ebx
	call memcpy
SV_ChangeMaxClients_130:
	add edi, 0x1
	add esi, 0xa5634
	add ebx, 0xa5634
	cmp edi, [ebp-0x1c]
	jnz SV_ChangeMaxClients_60
SV_ChangeMaxClients_40:
	mov eax, sv_maxclients
	mov eax, [eax]
	mov ecx, [eax+0xc]
	lea eax, [ecx+ecx*4]
	shl eax, 0x7
	add eax, ecx
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	lea eax, [ecx+eax*4]
	shl eax, 0x2
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov esi, svs
	add esi, 0x46380c
	mov [esp], esi
	call Com_Memset
	mov ecx, [ebp-0x1c]
	test ecx, ecx
	jle SV_ChangeMaxClients_70
	mov ebx, [ebp-0x20]
	xor edi, edi
SV_ChangeMaxClients_90:
	cmp dword [ebx], 0x1
	jle SV_ChangeMaxClients_80
	mov dword [esp+0x8], 0xa5634
	mov [esp+0x4], ebx
	mov [esp], esi
	call memcpy
SV_ChangeMaxClients_80:
	add edi, 0x1
	add ebx, 0xa5634
	add esi, 0xa5634
	cmp edi, [ebp-0x1c]
	jnz SV_ChangeMaxClients_90
SV_ChangeMaxClients_70:
	mov eax, [ebp-0x20]
	mov [esp], eax
	call Hunk_FreeTempMemory
	mov edx, svs
	mov dword [edx+svs+0x131008c], 0x2a000
	mov eax, sv_maxclients
	mov eax, [eax]
	mov eax, [eax+0xc]
	imul eax, eax
	shl eax, 0x5
	mov [edx+svs+0x1310090], eax
SV_ChangeMaxClients_30:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SV_ChangeMaxClients_10:
	xor eax, eax
	xor ecx, ecx
	mov edx, svs
	add edx, 0x46380c
SV_ChangeMaxClients_110:
	cmp dword [edx], 0x1
	jle SV_ChangeMaxClients_100
	cmp eax, ecx
	cmovg ecx, eax
SV_ChangeMaxClients_100:
	add eax, 0x1
	add edx, 0xa5634
	cmp ebx, eax
	jnz SV_ChangeMaxClients_110
	add ecx, 0x1
	mov [ebp-0x1c], ecx
	jmp SV_ChangeMaxClients_120
SV_ChangeMaxClients_50:
	mov dword [esp+0x8], 0xa5634
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call Com_Memset
	jmp SV_ChangeMaxClients_130
SV_ChangeMaxClients_20:
	mov [esp+0x4], edx
	mov [esp], eax
	call Cvar_SetInt
	mov eax, [esi]
	jmp SV_ChangeMaxClients_140
	nop


;SV_SetSystemInfoConfig()
SV_SetSystemInfoConfig:
	push ebp
	mov ebp, esp
	push edi
	push ebx
	sub esp, 0x2010
	mov dword [esp], 0x8
	call Cvar_InfoString_Big
	mov dword [esp+0x8], 0x2000
	mov [esp+0x4], eax
	lea ebx, [ebp-0x2008]
	mov [esp], ebx
	call Q_strncpyz
	mov eax, fs_gameDirVar
	mov eax, [eax]
	mov eax, [eax+0xc]
	cmp byte [eax], 0x0
	jz SV_SetSystemInfoConfig_10
	mov [esp+0x4], ebx
	mov dword [esp], 0x1
	call SV_SetConfigstring
	mov eax, dvar_modifiedFlags
	and dword [eax], 0xfffffff7
	add esp, 0x2010
	pop ebx
	pop edi
	pop ebp
	ret
SV_SetSystemInfoConfig_10:
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, ebx
	repne scasb
	not ecx
	add ecx, 0x9
	cmp ecx, 0x400
	jbe SV_SetSystemInfoConfig_20
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_info_string_leng
	mov dword [esp], 0x10
	call Com_Printf
	mov [esp+0x4], ebx
	mov dword [esp], 0x1
	call SV_SetConfigstring
	mov eax, dvar_modifiedFlags
	and dword [eax], 0xfffffff7
	add esp, 0x2010
	pop ebx
	pop edi
	pop ebp
	ret
SV_SetSystemInfoConfig_20:
	mov dword [esp+0x8], _cstring_fs_game
	mov dword [esp+0x4], 0x400
	mov [esp], ebx
	call Q_strncat
	mov [esp+0x4], ebx
	mov dword [esp], 0x1
	call SV_SetConfigstring
	mov eax, dvar_modifiedFlags
	and dword [eax], 0xfffffff7
	add esp, 0x2010
	pop ebx
	pop edi
	pop ebp
	ret
	nop


;SV_GetConfigstringConst(int)
SV_GetConfigstringConst:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, sv
	movzx eax, word [edx+eax*2+0x81a]
	pop ebp
	ret


;SV_InitArchivedSnapshot()
SV_InitArchivedSnapshot:
	push ebp
	mov ebp, esp
	mov eax, svs
	mov dword [eax+0x624451c], 0x0
	mov dword [eax+0x8246aa0], 0x0
	mov dword [eax+0x8246aa4], 0x0
	mov dword [eax+0x8246aa8], 0x0
	mov dword [eax+0x8246aac], 0x0
	pop ebp
	ret


;SV_SetConfigValueForKey(int, int, char const*, char const*)
SV_SetConfigValueForKey:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov edi, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov eax, [ebp+0x10]
	mov [ebp-0x28], eax
	mov edx, [ebp+0x14]
	mov [ebp-0x2c], edx
	cmp edi, 0x334
	jle SV_SetConfigValueForKey_10
	mov [esp], eax
	call SL_FindLowercaseString
	mov [ebp-0x20], eax
	mov edx, [ebp-0x2c]
	mov [esp], edx
	call CCS_GetConstConfigStringIndex
	test eax, eax
	js SV_SetConfigValueForKey_20
SV_SetConfigValueForKey_60:
	mov [esp], eax
	call CCS_GetConfigStringNumForConstIndex
	mov ebx, eax
	cmp edi, eax
	jg SV_SetConfigValueForKey_30
	lea eax, [edi+esi]
	mov [ebp-0x30], eax
	cmp ebx, eax
	jl SV_SetConfigValueForKey_40
SV_SetConfigValueForKey_140:
	cmp ebx, esi
	jz SV_SetConfigValueForKey_50
SV_SetConfigValueForKey_120:
	mov edx, [ebp-0x2c]
	mov [ebp+0xc], edx
	mov edx, [ebp-0x30]
	lea eax, [ebx+edx]
	mov [ebp+0x8], eax
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp SV_SetConfigstring
SV_SetConfigValueForKey_10:
	mov [esp], eax
	call SL_FindString
	mov [ebp-0x20], eax
	mov edx, [ebp-0x2c]
	mov [esp], edx
	call CCS_GetConstConfigStringIndex
	test eax, eax
	jns SV_SetConfigValueForKey_60
SV_SetConfigValueForKey_20:
	test esi, esi
	jle SV_SetConfigValueForKey_70
	mov edx, sv
	movzx eax, word [edx+edi*2+0x81a]
	movzx edx, word [edx+0x818]
	mov [ebp-0x24], edx
	cmp eax, edx
	jz SV_SetConfigValueForKey_80
	cmp [ebp-0x20], eax
	jz SV_SetConfigValueForKey_70
	mov eax, sv
	lea edx, [eax+edi*2+0x81a]
	xor ebx, ebx
SV_SetConfigValueForKey_110:
	add ebx, 0x1
	cmp esi, ebx
	jz SV_SetConfigValueForKey_90
	lea ecx, [edi+ebx]
	movzx eax, word [edx+0x2]
	cmp eax, [ebp-0x24]
	jz SV_SetConfigValueForKey_100
	add edx, 0x2
	cmp [ebp-0x20], eax
	jnz SV_SetConfigValueForKey_110
	add edi, esi
	mov [ebp-0x30], edi
	jmp SV_SetConfigValueForKey_120
SV_SetConfigValueForKey_30:
	lea eax, [edi+esi]
	mov [ebp-0x30], eax
	cmp ebx, esi
	jnz SV_SetConfigValueForKey_120
SV_SetConfigValueForKey_50:
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_overflow_at_conf
	mov dword [esp], 0xf
	call Com_Printf
	test ebx, ebx
	jg SV_SetConfigValueForKey_130
	xor ebx, ebx
SV_SetConfigValueForKey_160:
	mov dword [esp+0x4], _cstring_sv_setconfigvalu
	mov dword [esp], 0x2
	call Com_Error
	mov edx, [ebp-0x2c]
	mov [ebp+0xc], edx
	mov edx, [ebp-0x30]
	lea eax, [ebx+edx]
	mov [ebp+0x8], eax
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp SV_SetConfigstring
SV_SetConfigValueForKey_70:
	xor ebx, ebx
	lea edx, [edi+esi]
	mov [ebp-0x30], edx
	jmp SV_SetConfigValueForKey_140
SV_SetConfigValueForKey_130:
	mov eax, sv
	lea esi, [eax+edi*2+0x81a]
	mov dword [ebp-0x1c], 0x0
SV_SetConfigValueForKey_150:
	movzx eax, word [esi]
	mov [esp], eax
	call SL_ConvertToString
	mov [esp+0x10], eax
	movzx eax, word [esi]
	mov [esp+0xc], eax
	mov eax, [ebp-0x1c]
	add eax, edi
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_i_i__s_
	mov dword [esp], 0xf
	call Com_Printf
	add dword [ebp-0x1c], 0x1
	add esi, 0x2
	cmp ebx, [ebp-0x1c]
	jnz SV_SetConfigValueForKey_150
	jmp SV_SetConfigValueForKey_160
SV_SetConfigValueForKey_40:
	mov edx, [ebp-0x28]
	mov [esp+0x4], edx
	lea eax, [edi+ebx]
	mov [esp], eax
	call SV_SetConfigstring
	jmp SV_SetConfigValueForKey_140
SV_SetConfigValueForKey_80:
	mov ecx, edi
	xor ebx, ebx
SV_SetConfigValueForKey_100:
	mov eax, [ebp-0x28]
	mov [esp+0x4], eax
	mov [esp], ecx
	call SV_SetConfigstring
	lea edx, [edi+esi]
	mov [ebp-0x30], edx
	jmp SV_SetConfigValueForKey_140
SV_SetConfigValueForKey_90:
	lea eax, [edi+ebx]
	mov [ebp-0x30], eax
	jmp SV_SetConfigValueForKey_50
	nop


;SV_SetExpectedHunkUsage(char*)
SV_SetExpectedHunkUsage:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov dword [esp+0x8], 0x0
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_hunkusagedat
	call FS_FOpenFileByMode
	mov esi, eax
	test eax, eax
	js SV_SetExpectedHunkUsage_10
	lea ebx, [eax+0x1]
	mov [esp], ebx
	call Z_MallocInternal
	mov edi, eax
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call memset
	mov eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov [esp], edi
	call FS_Read
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call FS_FCloseFile
	mov [ebp-0x20], edi
	lea ebx, [ebp-0x20]
SV_SetExpectedHunkUsage_30:
	mov [esp], ebx
	call Com_Parse
	cmp byte [eax], 0x0
	jz SV_SetExpectedHunkUsage_20
	mov edx, [ebp+0x8]
	mov [esp+0x4], edx
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jnz SV_SetExpectedHunkUsage_30
	mov [esp], ebx
	call Com_Parse
	test eax, eax
	jz SV_SetExpectedHunkUsage_30
	cmp byte [eax], 0x0
	jz SV_SetExpectedHunkUsage_30
	mov [esp], eax
	call atoi
	mov edx, com_expectedHunkUsage
	mov [edx], eax
	mov [esp], edi
	call Z_FreeInternal
SV_SetExpectedHunkUsage_10:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SV_SetExpectedHunkUsage_20:
	mov [esp], edi
	call Z_FreeInternal
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	add [eax], al


;SV_Init()
SV_Init:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	call SV_AddOperatorCommands
	mov dword [esp+0xc], _cstring_current_game_typ
	mov dword [esp+0x8], 0x24
	mov dword [esp+0x4], _cstring_war
	mov dword [esp], _cstring_g_gametype
	call Cvar_RegisterString
	mov edx, sv_gametype
	mov [edx], eax
	mov dword [esp+0xc], _cstring_server_keywords
	mov dword [esp+0x8], 0x4
	mov dword [esp+0x4], _cstring_null
	mov dword [esp], _cstring_sv_keywords
	call Cvar_RegisterString
	mov dword [esp+0x14], _cstring_protocol_version
	mov dword [esp+0x10], 0x44
	mov dword [esp+0xc], 0x6
	mov dword [esp+0x8], 0x6
	mov dword [esp+0x4], 0x6
	mov dword [esp], _cstring_protocol
	call Cvar_RegisterInt
	mov dword [esp+0xc], _cstring_current_map_name
	mov dword [esp+0x8], 0x44
	mov dword [esp+0x4], _cstring_null
	mov dword [esp], _cstring_mapname
	call Cvar_RegisterString
	mov edx, sv_mapname
	mov [edx], eax
	mov dword [esp+0x14], _cstring_maximum_number_o
	mov dword [esp+0x10], 0x4
	mov dword [esp+0xc], 0x40
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_sv_privateclient
	call Cvar_RegisterInt
	mov edx, sv_privateClients
	mov [edx], eax
	mov dword [esp+0x14], _cstring_the_maximum_numb
	mov dword [esp+0x10], 0x25
	mov dword [esp+0xc], 0x40
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x20
	mov dword [esp], _cstring_ui_maxclients
	call Cvar_RegisterInt
	mov dword [esp+0x14], _cstring_the_maximum_numb
	mov dword [esp+0x10], 0x25
	mov eax, [eax+0xc]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x20
	mov dword [esp], _cstring_sv_maxclients
	call Cvar_RegisterInt
	mov edx, sv_maxclients
	mov [edx], eax
	mov dword [esp+0xc], _cstring_host_name_of_the
	mov dword [esp+0x8], 0x5
	mov dword [esp+0x4], _cstring_cod4host
	mov dword [esp], _cstring_sv_hostname
	call Cvar_RegisterString
	mov edx, sv_hostname
	mov [edx], eax
	mov dword [esp+0xc], _cstring_if_true_clients_
	mov dword [esp+0x8], 0x8
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_sv_clientsidebul
	call Cvar_RegisterBool
	mov edx, sv_clientSideBullets
	mov [edx], eax
	mov dword [esp+0xc], _cstring_enable_punkbuste
	mov dword [esp+0x8], 0x15
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_sv_punkbuster
	call Cvar_RegisterBool
	mov edx, sv_punkbuster
	mov [edx], eax
	mov dword [esp+0x14], _cstring_maximum_bit_rate
	mov dword [esp+0x10], 0x5
	mov dword [esp+0xc], 0x61a8
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x1388
	mov dword [esp], _cstring_sv_maxrate
	call Cvar_RegisterInt
	mov edx, sv_maxRate
	mov [edx], eax
	mov dword [esp+0x14], _cstring_minimum_ping_all
	mov dword [esp+0x10], 0x5
	mov dword [esp+0xc], 0x3e7
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_sv_minping
	call Cvar_RegisterInt
	mov edx, sv_minPing
	mov [edx], eax
	mov dword [esp+0x14], _cstring_maximum_ping_all
	mov dword [esp+0x10], 0x5
	mov dword [esp+0xc], 0x3e7
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_sv_maxping
	call Cvar_RegisterInt
	mov edx, sv_maxPing
	mov [edx], eax
	mov dword [esp+0x14], _cstring_prevent_maliciou
	mov dword [esp+0x10], 0x5
	mov dword [esp+0xc], 0x7fffffff
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x4
	mov dword [esp], _cstring_sv_floodprotect
	call Cvar_RegisterInt
	mov edx, sv_floodProtect
	mov [edx], eax
	mov dword [esp+0xc], _cstring_print_client_com
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_sv_showcommands
	call Cvar_RegisterBool
	mov edx, sv_showCommands
	mov [edx], eax
	mov dword [esp+0xc], _cstring_allow_anonymous_
	mov dword [esp+0x8], 0x4
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_sv_allowanonymou
	call Cvar_RegisterBool
	mov edx, sv_allowAnonymous
	mov [edx], eax
	mov dword [esp+0xc], _cstring_disallow_remote_
	mov dword [esp+0x8], 0x4
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_sv_disableclient
	call Cvar_RegisterBool
	mov edx, sv_disableClientConsole
	mov [edx], eax
	mov dword [esp+0xc], _cstring_password_for_the
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _cstring_null
	mov dword [esp], _cstring_sv_privatepasswo
	call Cvar_RegisterString
	mov edx, sv_privatePassword
	mov [edx], eax
	mov dword [esp+0xc], _cstring_allow_auto_downl
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_sv_allowdownload
	call Cvar_RegisterBool
	mov edx, sv_allowDownload
	mov [edx], eax
	mov dword [esp+0xc], _cstring_iwd_server_check
	mov dword [esp+0x8], 0x48
	mov dword [esp+0x4], _cstring_null
	mov dword [esp], _cstring_sv_iwds
	call Cvar_RegisterString
	mov edx, sv_iwds
	mov [edx], eax
	mov dword [esp+0xc], _cstring_names_of_iwd_fil
	mov dword [esp+0x8], 0x48
	mov dword [esp+0x4], _cstring_null
	mov dword [esp], _cstring_sv_iwdnames
	call Cvar_RegisterString
	mov edx, sv_iwdNames
	mov [edx], eax
	mov dword [esp+0xc], _cstring_checksum_of_all_
	mov dword [esp+0x8], 0x48
	mov dword [esp+0x4], _cstring_null
	mov dword [esp], _cstring_sv_referencediwd
	call Cvar_RegisterString
	mov edx, sv_referencedIwds
	mov [edx], eax
	mov dword [esp+0xc], _cstring_names_of_all_ref
	mov dword [esp+0x8], 0x48
	mov dword [esp+0x4], _cstring_null
	mov dword [esp], _cstring_sv_referencediwd1
	call Cvar_RegisterString
	mov edx, sv_referencedIwdNames
	mov [edx], eax
	mov dword [esp+0xc], _cstring_fast_file_server
	mov dword [esp+0x8], 0x48
	mov dword [esp+0x4], _cstring_null
	mov dword [esp], _cstring_sv_ffchecksums
	call Cvar_RegisterString
	mov edx, sv_FFCheckSums
	mov [edx], eax
	mov dword [esp+0xc], _cstring_names_of_fast_fi
	mov dword [esp+0x8], 0x48
	mov dword [esp+0x4], _cstring_null
	mov dword [esp], _cstring_sv_ffnames
	call Cvar_RegisterString
	mov edx, sv_FFNames
	mov [edx], eax
	mov dword [esp+0xc], _cstring_checksum_of_all_1
	mov dword [esp+0x8], 0x48
	mov dword [esp+0x4], _cstring_null
	mov dword [esp], _cstring_sv_referencedffc
	call Cvar_RegisterString
	mov edx, sv_referencedFFCheckSums
	mov [edx], eax
	mov dword [esp+0xc], _cstring_names_of_all_ref1
	mov dword [esp+0x8], 0x48
	mov dword [esp+0x4], _cstring_null
	mov dword [esp], _cstring_sv_referencedffn
	call Cvar_RegisterString
	mov edx, sv_referencedFFNames
	mov [edx], eax
	mov dword [esp+0xc], _cstring_use_server_side_
	mov dword [esp+0x8], 0xd
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_sv_voice
	call Cvar_RegisterBool
	mov edx, sv_voice
	mov [edx], eax
	mov dword [esp+0x14], _cstring_voice_quality
	mov dword [esp+0x10], 0x8
	mov dword [esp+0xc], 0x9
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x3
	mov dword [esp], _cstring_sv_voicequality
	call Cvar_RegisterInt
	mov edx, sv_voiceQuality
	mov [edx], eax
	mov dword [esp+0xc], _cstring_enable_cheats_on
	mov dword [esp+0x8], 0x18
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_sv_cheats
	call Cvar_RegisterBool
	mov edx, sv_cheats
	mov [edx], eax
	mov dword [esp+0x14], _cstring_server_identific
	mov dword [esp+0x10], 0x48
	mov dword [esp+0xc], 0x7fffffff
	mov dword [esp+0x8], 0x80000000
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_sv_serverid
	call Cvar_RegisterInt
	mov edx, sv_serverid
	mov [edx], eax
	mov dword [esp+0xc], _cstring_cannot_use_modif
	mov dword [esp+0x8], 0xc
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_sv_pure
	call Cvar_RegisterBool
	mov edx, sv_pure
	mov [edx], eax
	mov dword [esp+0xc], _cstring_password_for_the1
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _cstring_null
	mov dword [esp], _cstring_rcon_password
	call Cvar_RegisterString
	mov edx, rcon_password
	mov [edx], eax
	mov dword [esp+0x14], _cstring_server_frames_pe
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x3e8
	mov dword [esp+0x8], 0xa
	mov dword [esp+0x4], 0x14
	mov dword [esp], _cstring_sv_fps
	call Cvar_RegisterInt
	mov edx, sv_fps
	mov [edx], eax
	mov dword [esp+0x14], _cstring_seconds_without_
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x708
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0xf0
	mov dword [esp], _cstring_sv_timeout
	call Cvar_RegisterInt
	mov edx, sv_timeout
	mov [edx], eax
	mov dword [esp+0x14], _cstring_seconds_without_1
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x708
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x2d
	mov dword [esp], _cstring_sv_connecttimeou
	call Cvar_RegisterInt
	mov edx, sv_connectTimeout
	mov [edx], eax
	mov dword [esp+0x14], _cstring_seconds_to_sync_
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x708
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x2
	mov dword [esp], _cstring_sv_zombietime
	call Cvar_RegisterInt
	mov edx, sv_zombietime
	mov [edx], eax
	mov dword [esp+0x14], _cstring_minimum_seconds_
	mov dword [esp+0x10], 0x1
	mov dword [esp+0xc], 0x708
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x3
	mov dword [esp], _cstring_sv_reconnectlimi
	call Cvar_RegisterInt
	mov edx, sv_reconnectlimit
	mov [edx], eax
	mov dword [esp+0x14], _cstring_add_nop_bytes_to
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x7fffffff
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_sv_padpackets
	call Cvar_RegisterInt
	mov edx, sv_padPackets
	mov [edx], eax
	mov dword [esp+0xc], _cstring_allow_this_clan_
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _cstring_null
	mov dword [esp], _cstring_sv_allowedclan1
	call Cvar_RegisterString
	mov edx, sv_allowedClan1
	mov [edx], eax
	mov dword [esp+0xc], _cstring_allow_this_clan_
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _cstring_null
	mov dword [esp], _cstring_sv_allowedclan2
	call Cvar_RegisterString
	mov edx, sv_allowedClan2
	mov [edx], eax
	mov dword [esp+0xc], _cstring_enable_packet_in
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_sv_packet_info
	call Cvar_RegisterBool
	mov edx, sv_packet_info
	mov [edx], eax
	mov dword [esp+0xc], _cstring_show_average_byt
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_sv_showaveragebp
	call Cvar_RegisterBool
	mov edx, sv_showAverageBPS
	mov [edx], eax
	mov dword [esp+0x14], _cstring_time_in_seconds_
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x45610000
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x43960000
	mov dword [esp], _cstring_sv_kickbantime
	call Cvar_RegisterFloat
	mov edx, sv_kickBanTime
	mov [edx], eax
	mov dword [esp+0xc], _cstring_allow_testclient
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_sv_botspressatta
	call Cvar_RegisterBool
	mov edx, sv_botsPressAttackBtn
	mov [edx], eax
	mov dword [esp+0xc], _cstring_list_of_maps_for
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _cstring_null
	mov dword [esp], _cstring_sv_maprotation
	call Cvar_RegisterString
	mov edx, sv_mapRotation
	mov [edx], eax
	mov dword [esp+0xc], _cstring_current_map_in_t
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _cstring_null
	mov dword [esp], _cstring_sv_maprotationcu
	call Cvar_RegisterString
	mov edx, sv_mapRotationCurrent
	mov [edx], eax
	mov dword [esp+0xc], _cstring_enable_snapshot_
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_sv_debugrate
	call Cvar_RegisterBool
	mov edx, sv_debugRate
	mov [edx], eax
	mov dword [esp+0xc], _cstring_enable_debugging
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_sv_debugreliable
	call Cvar_RegisterBool
	mov edx, sv_debugReliableCmds
	mov [edx], eax
	mov dword [esp+0xc], _cstring_next_map_to_play
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _cstring_null
	mov dword [esp], _cstring_nextmap
	call Cvar_RegisterString
	mov edx, nextmap
	mov [edx], eax
	mov dword [esp+0xc], _cstring_enable_http_down
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_sv_wwwdownload
	call Cvar_RegisterBool
	mov edx, sv_wwwDownload
	mov [edx], eax
	mov dword [esp+0xc], _cstring_the_base_url_for
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], _cstring_null
	mov dword [esp], _cstring_sv_wwwbaseurl
	call Cvar_RegisterString
	mov edx, sv_wwwBaseURL
	mov [edx], eax
	mov dword [esp+0xc], _cstring_should_clients_s
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_sv_wwwdldisconne
	call Cvar_RegisterBool
	mov edx, sv_wwwDlDisconnected
	mov [edx], eax
	mov dword [esp+0xc], _cstring_have_the_clients
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_sv_clientarchive
	call Cvar_RegisterBool
	mov edx, sv_clientArchive
	mov [edx], eax
	mov dword [esp+0xc], _cstring_enable_loading__
	mov dword [esp+0x8], 0x80
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_clientsideeffect
	call Cvar_RegisterBool
	leave
	ret


;SV_Loaded()
SV_Loaded:
	push ebp
	mov ebp, esp
	mov eax, sv
	cmp dword [eax], 0x2
	setz al
	movzx eax, al
	pop ebp
	ret
	nop


;Initialized global or static variables of sv_init_mp:
SECTION .data
sv_serverId_value: dd 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0


;Initialized constant data of sv_init_mp:
SECTION .rdata


;Zero initialized global or static variables of sv_init_mp:
SECTION .bss


;All cstrings:
SECTION .rdata
_cstring__server_shutdown:		db "----- Server Shutdown -----",0ah,0
_cstring_exe_disconnected:		db "EXE_DISCONNECTED",0
_cstring_:		db "---------------------------",0ah,0
_cstring_sv_getuserinfo_b:		db 015h,"SV_GetUserinfo: bad index %i",0ah,0
_cstring_sv_getuserinfo_b1:		db 015h,"SV_GetUserinfo: bufferSize == %i",0
_cstring_null:		db 0
_cstring_name:		db "name",0
_cstring_sv_setuserinfo_b:		db 015h,"SV_SetUserinfo: bad index %i",0ah,0
_cstring_mapname:		db "mapname",0
_cstring__server_initiali:		db "------ Server Initialization ------",0ah,0
_cstring_server_s:		db "Server: %s",0ah,0
_cstring_the_maximum_numb:		db "The maximum number of clients that can connect to a server",0
_cstring_ui_maxclients:		db "ui_maxclients",0
_cstring_sv_maxclients:		db "sv_maxclients",0
_cstring_map_restart:		db "map_restart",0
_cstring_requeststats:		db "requeststats",0ah,0
_cstring_1:		db "-----------------------------------",0ah,0
_cstring_sv_punkbuster:		db "sv_punkbuster",0
_cstring_warning_sv_pure_:		db "WARNING: sv_pure set but no IWD files loaded",0ah,0
_cstring_s_load:		db "%s_load",0
_cstring_loadingnewmapss:		db "loadingnewmap",0ah,"%s",0ah,"%s",0
_cstring_all_mp:		db "all_mp",0
_cstring_0:		db "0",0
_cstring_sv_getconfigstri:		db 015h,"SV_GetConfigstring: bad index %i",0ah,0
_cstring_sv_getconfigstri1:		db 015h,"SV_GetConfigstring: bufferSize == %i",0
_cstring_i:		db "%i",0
_cstring_c_i_s:		db "%c %i %s",0
_cstring_sv_setconfigstri:		db 015h,"SV_SetConfigstring: bad index %i",0ah,0
_cstring_info_string_leng:		db 015h,"Info string length exceeded",0ah,"key: fs_game",0ah,"Info string:",0ah,"%s",0ah,0
_cstring_fs_game:		db 5ch,"fs_game",5ch,5ch,0
_cstring_overflow_at_conf:		db "Overflow at config string start value of %i: key values printed below",0ah,0
_cstring_sv_setconfigvalu:		db 015h,"SV_SetConfigValueForKey: overflow",0
_cstring_i_i__s_:		db "%i: %i ( %s )",0ah,0
_cstring_hunkusagedat:		db "hunkusage.dat",0
_cstring_current_game_typ:		db "Current game type",0
_cstring_war:		db "war",0
_cstring_g_gametype:		db "g_gametype",0
_cstring_server_keywords:		db "Server keywords",0
_cstring_sv_keywords:		db "sv_keywords",0
_cstring_protocol_version:		db "Protocol version",0
_cstring_protocol:		db "protocol",0
_cstring_current_map_name:		db "Current map name",0
_cstring_maximum_number_o:		db "Maximum number of private clients allowed on the server",0
_cstring_sv_privateclient:		db "sv_privateClients",0
_cstring_host_name_of_the:		db "Host name of the server",0
_cstring_cod4host:		db "CoD4Host",0
_cstring_sv_hostname:		db "sv_hostname",0
_cstring_if_true_clients_:		db "If true, clients will synthesize tracers and bullet impacts",0
_cstring_sv_clientsidebul:		db "sv_clientSideBullets",0
_cstring_enable_punkbuste:		db "Enable PunkBuster on this server",0
_cstring_maximum_bit_rate:		db "Maximum bit rate",0
_cstring_sv_maxrate:		db "sv_maxRate",0
_cstring_minimum_ping_all:		db "Minimum ping allowed on the server",0
_cstring_sv_minping:		db "sv_minPing",0
_cstring_maximum_ping_all:		db "Maximum ping allowed on the server",0
_cstring_sv_maxping:		db "sv_maxPing",0
_cstring_prevent_maliciou:		db "Prevent malicious lagging by flooding the server with commands.  Is the number of client commands the server will process per 800ms.  0 means no flood protection.",0
_cstring_sv_floodprotect:		db "sv_floodprotect",0
_cstring_print_client_com:		db "Print client commands in the log file",0
_cstring_sv_showcommands:		db "sv_showCommands",0
_cstring_allow_anonymous_:		db "Allow anonymous access",0
_cstring_sv_allowanonymou:		db "sv_allowAnonymous",0
_cstring_disallow_remote_:		db "Disallow remote clients from accessing the console",0
_cstring_sv_disableclient:		db "sv_disableClientConsole",0
_cstring_password_for_the:		db "password for the privateClient slots",0
_cstring_sv_privatepasswo:		db "sv_privatePassword",0
_cstring_allow_auto_downl:		db "Allow auto download of files",0
_cstring_sv_allowdownload:		db "sv_allowDownload",0
_cstring_iwd_server_check:		db "IWD server checksums",0
_cstring_sv_iwds:		db "sv_iwds",0
_cstring_names_of_iwd_fil:		db "Names of IWD files used by the server",0
_cstring_sv_iwdnames:		db "sv_iwdNames",0
_cstring_checksum_of_all_:		db "Checksum of all referenced IWD files",0
_cstring_sv_referencediwd:		db "sv_referencedIwds",0
_cstring_names_of_all_ref:		db "Names of all referenced IWD files",0
_cstring_sv_referencediwd1:		db "sv_referencedIwdNames",0
_cstring_fast_file_server:		db "Fast File server checksums",0
_cstring_sv_ffchecksums:		db "sv_FFCheckSums",0
_cstring_names_of_fast_fi:		db "Names of Fast Files used by the server",0
_cstring_sv_ffnames:		db "sv_FFNames",0
_cstring_checksum_of_all_1:		db "Checksum of all referenced Fast Files",0
_cstring_sv_referencedffc:		db "sv_referencedFFCheckSums",0
_cstring_names_of_all_ref1:		db "Names of all referenced Fast Files",0
_cstring_sv_referencedffn:		db "sv_referencedFFNames",0
_cstring_use_server_side_:		db "Use server side voice communications",0
_cstring_sv_voice:		db "sv_voice",0
_cstring_voice_quality:		db "Voice quality",0
_cstring_sv_voicequality:		db "sv_voiceQuality",0
_cstring_enable_cheats_on:		db "Enable cheats on the server",0
_cstring_sv_cheats:		db "sv_cheats",0
_cstring_server_identific:		db "Server identification",0
_cstring_sv_serverid:		db "sv_serverid",0
_cstring_cannot_use_modif:		db "Cannot use modified IWD files",0
_cstring_sv_pure:		db "sv_pure",0
_cstring_password_for_the1:		db "Password for the rcon command",0
_cstring_rcon_password:		db "rcon_password",0
_cstring_server_frames_pe:		db "Server frames per second",0
_cstring_sv_fps:		db "sv_fps",0
_cstring_seconds_without_:		db "seconds without any message",0
_cstring_sv_timeout:		db "sv_timeout",0
_cstring_seconds_without_1:		db "seconds without any message when a client is loading",0
_cstring_sv_connecttimeou:		db "sv_connectTimeout",0
_cstring_seconds_to_sync_:		db "seconds to sync messages after disconnect",0
_cstring_sv_zombietime:		db "sv_zombietime",0
_cstring_minimum_seconds_:		db "minimum seconds between connect messages",0
_cstring_sv_reconnectlimi:		db "sv_reconnectlimit",0
_cstring_add_nop_bytes_to:		db "add nop bytes to messages",0
_cstring_sv_padpackets:		db "sv_padPackets",0
_cstring_allow_this_clan_:		db "Allow this clan to join the server",0
_cstring_sv_allowedclan1:		db "sv_allowedClan1",0
_cstring_sv_allowedclan2:		db "sv_allowedClan2",0
_cstring_enable_packet_in:		db "Enable packet info debugging information",0
_cstring_sv_packet_info:		db "sv_packet_info",0
_cstring_show_average_byt:		db "Show average bytes per second for net debugging",0
_cstring_sv_showaveragebp:		db "sv_showAverageBPS",0
_cstring_time_in_seconds_:		db "Time in seconds for a player to be banned from the server after being kicked",0
_cstring_sv_kickbantime:		db "sv_kickBanTime",0
_cstring_allow_testclient:		db "Allow testclients to press attack button",0
_cstring_sv_botspressatta:		db "sv_botsPressAttackBtn",0
_cstring_list_of_maps_for:		db "List of maps for the server to play",0
_cstring_sv_maprotation:		db "sv_mapRotation",0
_cstring_current_map_in_t:		db "Current map in the map rotation",0
_cstring_sv_maprotationcu:		db "sv_mapRotationCurrent",0
_cstring_enable_snapshot_:		db "Enable snapshot rate debugging info",0
_cstring_sv_debugrate:		db "sv_debugRate",0
_cstring_enable_debugging:		db "Enable debugging information for ",27h,"reliable",27h," commands",0
_cstring_sv_debugreliable:		db "sv_debugReliableCmds",0
_cstring_next_map_to_play:		db "Next map to play",0
_cstring_nextmap:		db "nextmap",0
_cstring_enable_http_down:		db "Enable http downloads",0
_cstring_sv_wwwdownload:		db "sv_wwwDownload",0
_cstring_the_base_url_for:		db "The base url for files downloaded via http",0
_cstring_sv_wwwbaseurl:		db "sv_wwwBaseURL",0
_cstring_should_clients_s:		db "Should clients stay connected while downloading",3fh,0
_cstring_sv_wwwdldisconne:		db "sv_wwwDlDisconnected",0
_cstring_have_the_clients:		db "Have the clients archive data to save bandwidth on the server",0
_cstring_sv_clientarchive:		db "sv_clientArchive",0
_cstring_enable_loading__:		db "Enable loading _fx.gsc files on the client",0
_cstring_clientsideeffect:		db "clientSideEffects",0



;All constant floats and doubles:
SECTION .rdata

