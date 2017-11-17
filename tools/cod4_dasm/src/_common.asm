;Imports of common:
	extern Sys_IsMainThread
	extern time
	extern localtime
	extern FS_FOpenTextFileWrite
	extern asctime
	extern getBuildNumber
	extern tolower
	extern Cvar_SetFromStringByNameFromSource
	extern Cvar_FindVar
	extern Cvar_AddFlags
	extern Cvar_RegisterEnum
	extern com_dedicated
	extern Cvar_RegisterInt
	extern Cvar_RegisterBool
	extern Sys_GetCpuCount
	extern Cvar_RegisterString
	extern Cvar_RegisterFloat
	extern FS_FOpenFileWriteToDir
	extern FS_Printf
	extern Key_WriteBindings
	extern Cvar_WriteVariables
	extern Con_WriteFilterConfigString
	extern FS_FCloseFile
	extern cmd_args
	extern atof
	extern Sys_Milliseconds
	extern CL_Disconnect
	extern SV_AllowPackets
	extern CL_ShutdownAll
	extern CL_ShutdownDemo
	extern SV_Shutdown
	extern Q_strncpyz
	extern Com_ParseOnLine
	extern SL_Init
	extern Swap_Init
	extern Cbuf_Init
	extern Cmd_Init
	extern CCS_InitConstantConfigStrings
	extern CL_InitKeyCommands
	extern FS_InitFilesystem
	extern Con_InitChannels
	extern LiveStorage_Init
	extern Com_InitPlayerProfiles
	extern CL_ControllerIndexFromClientNum
	extern Cbuf_Execute
	extern dvar_modifiedFlags
	extern Com_InitHunkMemory
	extern Hunk_InitDebugMemory
	extern Cmd_AddCommand
	extern va
	extern Cvar_SetString
	extern Sys_Init
	extern Netchan_Init
	extern Scr_InitVariables
	extern Scr_Init
	extern Scr_Settings
	extern XAnimInit
	extern DObjInit
	extern SV_Init
	extern NET_Init
	extern Cvar_ClearModified
	extern PMem_EndAlloc
	extern DB_SetInitializing
	extern Com_DvarDump
	extern ScrPlace_Init
	extern CL_InitOnceForAllClients
	extern CL_Init
	extern SND_InitDriver
	extern R_InitOnce
	extern CL_InitRenderer
	extern cls
	extern SND_Init
	extern DB_InitThread
	extern PMem_Init
	extern PMem_BeginAlloc
	extern CL_InitDedicated
	extern SEH_UpdateLanguageInfo
	extern Cbuf_AddText
	extern Cvar_SetBool
	extern Sys_GetValue
	extern setjmp
	extern UI_SetMap
	extern CL_StartHunkUsers
	extern UI_GetMenuScreen
	extern UI_SetActiveMenu
	extern IN_Frame
	extern DB_LoadXAssets
	extern Sys_Error
	extern LargeLocalReset
	extern R_SyncRenderThread
	extern R_WaitWorkerCmds
	extern Cmd_ComErrorCleanup
	extern Cvar_SetInAutoExec
	extern Hunk_ClearTempMemory
	extern Hunk_ClearTempMemoryHigh
	extern Cvar_SetIntByName
	extern FS_PureServerSetLoadedIwds
	extern strcpy
	extern SEH_LocalizeTextMessage
	extern SND_ErrorCleanup
	extern Com_CleanupBsp
	extern CM_Cleanup
	extern Com_ResetParseSessions
	extern CL_FlushDebugServerData
	extern CL_UpdateDebugServerData
	extern FS_ResetFiles
	extern updateScreenCalled
	extern bgs
	extern UI_GetMenuScreenForError
	extern FX_UnregisterAll
	extern DB_Cleanup
	extern R_ComErrorCleanup
	extern CL_ConsoleFixPosition
	extern QuitOnError
	extern Q_stricmp
	extern vsnprintf
	extern Scr_Cleanup
	extern Sys_EnterCriticalSection
	extern GScr_Shutdown
	extern Sys_Quit
	extern Sys_DestroySplashWindow
	extern CL_Shutdown
	extern CL_ShutdownRef
	extern FS_Shutdown
	extern FS_ShutDownIwdPureCheckReferences
	extern FS_ShutdownServerIwdNames
	extern FS_ShutdownServerReferencedIwds
	extern FS_ShutdownServerReferencedFFs
	extern FS_FCloseLogFile
	extern memset
	extern CL_ShutdownHunkUsers
	extern SV_ShutdownGameProgs
	extern Com_ShutdownDObj
	extern DObjShutdown
	extern XAnimShutdown
	extern Com_ShutdownWorld
	extern CM_Shutdown
	extern SND_ShutdownChannels
	extern Hunk_Clear
	extern Hunk_ResetDebugMem
	extern Com_InitDObj
	extern DB_ReleaseXAssets
	extern Cmd_EndTokenizedString
	extern Cmd_TokenizeString
	extern Sys_GetEvent
	extern CL_KeyEvent
	extern CL_CharEvent
	extern Z_FreeInternal
	extern _ZN14MacPreferences9GetStringEPKcPciS1_
	extern CL_CDKeyValidate
	extern Z_MallocInternal
	extern I_stristr
	extern _ZN14MacPreferences9PutStringEPKcS1_
	extern PbCaptureConsoleOutput
	extern Q_strncat
	extern Sys_LeaveCriticalSection
	extern Sys_Print
	extern FS_Initialized
	extern FS_WriteLog
	extern FS_Flush
	extern Con_IsChannelVisible
	extern CL_ConsolePrint
	extern Com_DefaultExtension
	extern Sys_GetInfo
	extern FS_ReadFile
	extern Com_BeginParseSession
	extern Com_SetCSV
	extern Com_Parse
	extern Com_SkipRestOfLine
	extern atoi
	extern Com_UngetToken
	extern Com_EndParseSession
	extern FS_FreeFile
	extern Sys_ArchiveInfo
	extern memcpy
	extern Cvar_AnyLatchedValues
	extern __maskrune
	extern strcmp
	extern Cvar_SetA_f
	extern Cvar_Set_f
	extern FS_FOpenFileWrite
	extern Cvar_WriteDefaults
	extern MSG_Init
	extern CL_PacketEvent
	extern NET_GetLoopPacket
	extern NET_GetClientPacket
	extern SV_PacketEvent
	extern NET_GetServerPacket
	extern Sys_HasConfigureChecksumChanged
	extern Sys_HasInfoChanged
	extern loc_language
	extern BG_ShutdownWeaponDefFiles
	extern snprintf
	extern SetAnimCheck
	extern Win_UpdateThreadLock
	extern PIXBeginNamedEvent
	extern Sys_Sleep
	extern floorf
	extern SV_Frame
	extern SV_AddDedicatedCommands
	extern R_SetEndTime
	extern CL_RunOncePerClientFrame
	extern CL_Frame
	extern clientUIActives
	extern UI_IsFullscreen
	extern SCR_UpdateScreen
	extern Ragdoll_Update
	extern SCR_UpdateRumble
	extern com_fileAccessed
	extern R_WaitEndTime
	extern Com_HasPlayerProfile
	extern Com_BuildPlayerProfilePath
	extern StatMon_Warning
	extern Com_sprintf
	extern Cbuf_ExecuteBuffer
	extern DB_ShutdownXAssets
	extern Scr_Shutdown
	extern Hunk_ShutdownDebugMemory
	extern longjmp
	extern DB_Update

;Exports of common:
	global weaponInfoSource
	global logfile
	global errorcode
	global com_errorMessage
	global com_lastFrameTime
	global com_lastFrameIndex
	global com_fullyInitialized
	global com_codeTimeScale
	global s_lockThreadNames
	global com_numConsoleLines
	global com_consoleLines
	global serverCommonMsgBuf
	global clientCommonMsgBuf
	global com_safemode
	global noticeErrors
	global rd_flush
	global rd_buffersize
	global rd_buffer
	global _ZZ15Com_OpenLogFilevE16opening_qconsole
	global Com_OpenLogFile
	global Com_Crash_f
	global Com_Assert_f
	global Com_GpuStringCompare
	global Com_SetConfigureDvars
	global Com_InitDvars
	global Com_WriteConfigToFile
	global _ZZ11Com_StatmonvE15timeClientFrame
	global Com_Freeze_f
	global Com_ShutdownInternal
	global Com_Error_f
	global Com_GetConfigureDvarNames
	global Com_GetConfigureDvarValues
	global _ZZ27Com_Init_Try_Block_FunctionPcE23Com_WriteDefaults_f_VAR
	global _ZZ27Com_Init_Try_Block_FunctionPcE21Com_WriteConfig_f_VAR
	global _ZZ27Com_Init_Try_Block_FunctionPcE14Com_Quit_f_VAR
	global _ZZ27Com_Init_Try_Block_FunctionPcE16Com_Assert_f_VAR
	global _ZZ27Com_Init_Try_Block_FunctionPcE16Com_Freeze_f_VAR
	global _ZZ27Com_Init_Try_Block_FunctionPcE15Com_Crash_f_VAR
	global _ZZ27Com_Init_Try_Block_FunctionPcE15Com_Error_f_VAR
	global Com_Init_Try_Block_Function
	global Com_StartHunkUsers
	global _ZZ16Com_ErrorCleanupvE10errorCount
	global _ZZ16Com_ErrorCleanupvE13lastErrorTime
	global Com_ErrorCleanup
	global Com_Printf
	global Com_Quit_f
	global Info_Print
	global Com_DPrintf
	global Com_Restart
	global Field_Clear
	global Com_SafeMode
	global Com_Shutdown
	global PIXSetMarker
	global Com_EventLoop
	global Com_ReadCDKey
	global Com_AllocEvent
	global Com_ErrorAbort
	global Com_PrintError
	global Com_WriteCDKey
	global Com_AddToString
	global Com_EndRedirect
	global Com_LogFileOpen
	global Com_SyncThreads
	global Com_PrintMessage
	global Com_PrintWarning
	global Com_BeginRedirect
	global Com_ForceSafeMode
	global Com_WriteConfig_f
	global Com_SetRecommended
	global Com_ShutdownEvents
	global Com_SetErrorMessage
	global Com_StartupVariable
	global Com_WriteDefaults_f
	global Com_ClientPacketEvent
	global Com_ServerPacketEvent
	global Com_ExecStartupConfigs
	global Com_GetTimescaleForSnd
	global Com_CheckSetRecommended
	global Com_GetDecimalDelimiter
	global Com_SetWeaponInfoMemory
	global Com_FreeWeaponInfoMemory
	global Com_LocalizedFloatToString
	global Com_Frame_Try_Block_Function
	global Com_SetLocalizedErrorMessage
	global Com_Init
	global Com_Close
	global Com_Error
	global Com_Frame
	global com_errorEntered
	global useFastFile
	global cl_paused
	global com_expectedHunkUsage
	global com_sv_running
	global nextmap
	global com_developer
	global com_statmon
	global com_timescaleValue
	global sv_paused
	global com_frameTime
	global cl_cdkey
	global cl_cdkeychecksum
	global com_missingAssetOpenFailed
	global g_dedicatedEnumNames
	global com_animCheck
	global com_authPort
	global com_authServerName
	global com_consoleLogOpenFailed
	global com_developer_script
	global com_errorPrintsCount
	global com_filter_output
	global com_fixedConsolePosition
	global com_fixedtime
	global com_frameNumber
	global com_hiDef
	global com_introPlayed
	global com_logfile
	global com_masterPort
	global com_masterServerName
	global com_maxFrameTime
	global com_maxfps
	global com_recommendedSet
	global com_timescale
	global com_wideScreen
	global dev_timescale
	global shortversion
	global sys_lockThreads
	global sys_smp_allowed
	global ui_errorMessage
	global ui_errorTitle
	global version


SECTION .text


;Com_OpenLogFile()
Com_OpenLogFile:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	call Sys_IsMainThread
	test al, al
	jz Com_OpenLogFile_10
	mov eax, [_ZZ15Com_OpenLogFilevE16opening_qconsole]
	test eax, eax
	jz Com_OpenLogFile_20
Com_OpenLogFile_10:
	add esp, 0x24
	pop ebx
	pop ebp
	ret
Com_OpenLogFile_20:
	mov dword [_ZZ15Com_OpenLogFilevE16opening_qconsole], 0x1
	lea ebx, [ebp-0xc]
	mov [esp], ebx
	call time
	mov [esp], ebx
	call localtime
	mov ebx, eax
	mov dword [esp], _cstring_console_mplog
	call FS_FOpenTextFileWrite
	mov [logfile], eax
	test eax, eax
	setz al
	movzx eax, al
	mov [com_consoleLogOpenFailed], eax
	mov [esp], ebx
	call asctime
	mov ebx, eax
	call getBuildNumber
	mov [esp+0xc], ebx
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_build_slogfile_o
	mov dword [esp], 0x10
	call Com_Printf
	mov dword [_ZZ15Com_OpenLogFilevE16opening_qconsole], 0x0
	add esp, 0x24
	pop ebx
	pop ebp
	ret
	nop


;Com_Crash_f()
Com_Crash_f:
	push ebp
	mov ebp, esp
	mov dword [0x0], 0x12345678
	pop ebp
	ret
	nop


;Com_Assert_f()
Com_Assert_f:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop


;Com_GpuStringCompare(char const*, char const*)
Com_GpuStringCompare:
Com_GpuStringCompare_80:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov ecx, eax
	mov edi, edx
	movzx ebx, byte [ecx]
	lea eax, [ecx+0x1]
	mov [ebp-0x1c], eax
	cmp bl, 0x2a
	jz Com_GpuStringCompare_10
Com_GpuStringCompare_60:
	cmp bl, 0x20
	jz Com_GpuStringCompare_20
	movzx eax, byte [edi]
	mov [ebp-0x1d], al
	add edi, 0x1
	cmp bl, al
	jz Com_GpuStringCompare_30
	cmp bl, 0x3f
	jz Com_GpuStringCompare_30
	movsx eax, bl
	mov [esp], eax
	call tolower
	mov esi, eax
	movsx eax, byte [ebp-0x1d]
	mov [esp], eax
	call tolower
	sub esi, eax
	cmp esi, 0x0
	jnz Com_GpuStringCompare_40
Com_GpuStringCompare_30:
	test bl, bl
	jz Com_GpuStringCompare_50
Com_GpuStringCompare_70:
	mov ecx, [ebp-0x1c]
	movzx ebx, byte [ecx]
	lea eax, [ecx+0x1]
	mov [ebp-0x1c], eax
	cmp bl, 0x2a
	jnz Com_GpuStringCompare_60
Com_GpuStringCompare_10:
	cmp byte [ecx+0x1], 0x0
	jz Com_GpuStringCompare_50
	cmp byte [edi], 0x0
	jz Com_GpuStringCompare_70
Com_GpuStringCompare_90:
	lea edx, [edi+0x1]
	mov eax, ecx
	call Com_GpuStringCompare_80
	test eax, eax
	jnz Com_GpuStringCompare_70
Com_GpuStringCompare_50:
	xor eax, eax
Com_GpuStringCompare_110:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Com_GpuStringCompare_20:
	movzx eax, byte [edi]
	test al, al
	jz Com_GpuStringCompare_70
	movsx edx, al
	cmp edx, 0xff
	ja Com_GpuStringCompare_90
	mov eax, [0xd5cc084]
	test byte [eax+edx*4+0x35], 0x4
	jnz Com_GpuStringCompare_70
	lea edx, [edi+0x1]
	mov eax, ecx
	call Com_GpuStringCompare_80
	test eax, eax
	jnz Com_GpuStringCompare_70
	jmp Com_GpuStringCompare_50
Com_GpuStringCompare_40:
	jl Com_GpuStringCompare_100
	mov eax, 0x1
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Com_GpuStringCompare_100:
	mov eax, 0xffffffff
	jmp Com_GpuStringCompare_110


;Com_SetConfigureDvars(int, char const (*) [32], char const (*) [32])
Com_SetConfigureDvars:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov [ebp-0x24], eax
	test eax, eax
	jg Com_SetConfigureDvars_10
Com_SetConfigureDvars_30:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Com_SetConfigureDvars_10:
	mov ebx, edx
	mov [ebp-0x1c], ecx
	mov dword [ebp-0x20], 0x0
	jmp Com_SetConfigureDvars_20
Com_SetConfigureDvars_50:
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], _cstring_1
Com_SetConfigureDvars_100:
	mov [esp], ebx
	call Cvar_SetFromStringByNameFromSource
	mov [esp], ebx
	call Cvar_FindVar
	mov dword [esp+0x4], 0x1
	mov [esp], eax
	call Cvar_AddFlags
	add dword [ebp-0x20], 0x1
	add ebx, 0x20
	add dword [ebp-0x1c], 0x20
	mov eax, [ebp-0x20]
	cmp [ebp-0x24], eax
	jz Com_SetConfigureDvars_30
Com_SetConfigureDvars_20:
	mov ecx, 0xc
	cld
	mov esi, ebx
	mov edi, _cstring_r_aasamples
	repe cmpsb
	mov eax, 0x0
	jz Com_SetConfigureDvars_40
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
Com_SetConfigureDvars_40:
	test eax, eax
	jz Com_SetConfigureDvars_50
	mov edi, _cstring_r_altmodellighti
	mov ecx, 0x19
	cld
	mov esi, ebx
	repe cmpsb
	mov edx, 0x0
	jz Com_SetConfigureDvars_60
	movzx edx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub edx, ecx
Com_SetConfigureDvars_60:
	test edx, edx
	jz Com_SetConfigureDvars_50
	mov edi, _cstring_r_zfeather
	mov ecx, 0xb
	cld
	mov esi, ebx
	repe cmpsb
	mov edx, 0x0
	jz Com_SetConfigureDvars_70
	movzx edx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub edx, ecx
Com_SetConfigureDvars_70:
	test edx, edx
	jz Com_SetConfigureDvars_80
	mov edi, _cstring_sm_enable
	mov ecx, 0xa
	cld
	mov esi, ebx
	repe cmpsb
	mov edx, 0x0
	jz Com_SetConfigureDvars_90
	movzx edx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub edx, ecx
Com_SetConfigureDvars_90:
	test edx, edx
	jz Com_SetConfigureDvars_80
	mov dword [esp+0x8], 0x1
	mov eax, [ebp-0x1c]
	mov [esp+0x4], eax
	jmp Com_SetConfigureDvars_100
Com_SetConfigureDvars_80:
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], _cstring_0
	jmp Com_SetConfigureDvars_100


;Com_InitDvars()
Com_InitDvars:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov dword [esp+0x10], _cstring_true_if_this_is_
	mov dword [esp+0xc], 0x20
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], g_dedicatedEnumNames
	mov dword [esp], _cstring_dedicated
	call Cvar_RegisterEnum
	mov edx, com_dedicated
	mov [edx], eax
	mov eax, [eax+0xc]
	test eax, eax
	jz Com_InitDvars_10
	mov dword [esp+0x10], _cstring_true_if_this_is_
	mov dword [esp+0xc], 0x40
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], g_dedicatedEnumNames
	mov dword [esp], _cstring_dedicated
	call Cvar_RegisterEnum
Com_InitDvars_10:
	mov dword [esp+0x14], _cstring_cap_frames_per_s
	mov dword [esp+0x10], 0x1
	mov dword [esp+0xc], 0x3e8
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x55
	mov dword [esp], _cstring_com_maxfps
	call Cvar_RegisterInt
	mov [com_maxfps], eax
	mov dword [esp+0xc], _cstring_enables_loading_
	mov dword [esp+0x8], 0x10
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_usefastfile
	call Cvar_RegisterBool
	mov [useFastFile], eax
	mov dword [esp+0x10], _cstring_prevents_specifi
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], s_lockThreadNames
	mov dword [esp], _cstring_sys_lockthreads
	call Cvar_RegisterEnum
	mov [sys_lockThreads], eax
	call Sys_GetCpuCount
	mov dword [esp+0xc], _cstring_allow_multithrea
	mov dword [esp+0x8], 0x10
	cmp eax, 0x1
	seta al
	movzx eax, al
	mov [esp+0x4], eax
	mov dword [esp], _cstring_sys_smp_allowed
	call Cvar_RegisterBool
	mov [sys_smp_allowed], eax
	mov dword [esp+0xc], _cstring_master_server_na
	mov dword [esp+0x8], 0x80
	mov dword [esp+0x4], _cstring_cod4masteractivi
	mov dword [esp], _cstring_masterservername
	call Cvar_RegisterString
	mov [com_masterServerName], eax
	mov dword [esp+0xc], _cstring_authentication_s
	mov dword [esp+0x8], 0x80
	mov dword [esp+0x4], _cstring_cod4masteractivi
	mov dword [esp], _cstring_authservername
	call Cvar_RegisterString
	mov [com_authServerName], eax
	mov dword [esp+0x14], _cstring_master_server_po
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0xffff
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x514a
	mov dword [esp], _cstring_masterport
	call Cvar_RegisterInt
	mov [com_masterPort], eax
	mov dword [esp+0x14], _cstring_auth_server_port
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0xffff
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x5140
	mov dword [esp], _cstring_authport
	call Cvar_RegisterInt
	mov [com_authPort], eax
	mov dword [esp+0x14], _cstring_enable_developme
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x2
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_developer
	call Cvar_RegisterInt
	mov [com_developer], eax
	mov dword [esp+0xc], _cstring_enable_developer
	mov dword [esp+0x8], 0x10
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_developer_script
	call Cvar_RegisterBool
	mov [com_developer_script], eax
	mov dword [esp+0x14], _cstring_write_to_log_fil
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x2
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_logfile
	call Cvar_RegisterInt
	mov [com_logfile], eax
	mov dword [esp+0xc], _cstring_draw_stats_monit
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_com_statmon
	call Cvar_RegisterBool
	mov [com_statmon], eax
	mov dword [esp+0x14], _cstring_scale_time_of_ea
	mov dword [esp+0x10], 0x10c8
	mov edi, 0x447a0000
	mov [esp+0xc], edi
	mov esi, 0x3a83126f
	mov [esp+0x8], esi
	mov ebx, 0x3f800000
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_com_timescale
	call Cvar_RegisterFloat
	mov [com_timescale], eax
	mov dword [esp+0x14], _cstring_scale_time_of_ea
	mov dword [esp+0x10], 0x88
	mov [esp+0xc], edi
	mov [esp+0x8], esi
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_timescale
	call Cvar_RegisterFloat
	mov [dev_timescale], eax
	mov dword [esp+0x14], _cstring_use_a_fixed_time
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x3e8
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_fixedtime
	call Cvar_RegisterInt
	mov [com_fixedtime], eax
	mov dword [esp+0x14], _cstring_time_slows_down_
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x1388
	mov dword [esp+0x8], 0x32
	mov dword [esp+0x4], 0x64
	mov dword [esp], _cstring_com_maxframetime
	call Cvar_RegisterInt
	mov [com_maxFrameTime], eax
	mov dword [esp+0x14], _cstring_pause_the_server
	mov dword [esp+0x10], 0x40
	mov dword [esp+0xc], 0x2
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_sv_paused
	call Cvar_RegisterInt
	mov [sv_paused], eax
	mov dword [esp+0x14], _cstring_pause_the_client
	mov dword [esp+0x10], 0x40
	mov dword [esp+0xc], 0x2
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_cl_paused
	call Cvar_RegisterInt
	mov [cl_paused], eax
	mov dword [esp+0xc], _cstring_server_is_runnin
	mov dword [esp+0x8], 0x40
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_sv_running
	call Cvar_RegisterBool
	mov [com_sv_running], eax
	mov dword [esp+0xc], _cstring_use_console_filt
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_com_filter_outpu
	call Cvar_RegisterBool
	mov [com_filter_output], eax
	mov dword [esp+0xc], _cstring_intro_movie_has_
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_com_introplayed
	call Cvar_RegisterBool
	mov [com_introPlayed], eax
	mov dword [esp+0xc], _cstring_check_anim_tree
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_com_animcheck
	call Cvar_RegisterBool
	mov [com_animCheck], eax
	mov dword [esp+0xc], _cstring_true_if_the_game
	mov dword [esp+0x8], 0x40
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_hidef
	call Cvar_RegisterBool
	mov [com_hiDef], eax
	mov dword [esp+0xc], _cstring_true_if_the_game1
	mov dword [esp+0x8], 0x40
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_widescreen
	call Cvar_RegisterBool
	mov [com_wideScreen], eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Com_WriteConfigToFile(int, char const*)
Com_WriteConfigToFile:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, eax
	mov esi, edx
	mov dword [esp+0x4], _cstring_players
	mov [esp], edx
	call FS_FOpenFileWriteToDir
	mov ebx, eax
	test eax, eax
	jnz Com_WriteConfigToFile_10
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_couldnt_write_s
	mov dword [esp], 0x10
	call Com_Printf
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Com_WriteConfigToFile_10:
	mov dword [esp+0x4], _cstring__generated_by_ca
	mov [esp], eax
	call FS_Printf
	mov dword [esp+0x4], _cstring_unbindall
	mov [esp], ebx
	call FS_Printf
	mov [esp+0x4], ebx
	mov [esp], edi
	call Key_WriteBindings
	mov [esp], ebx
	call Cvar_WriteVariables
	mov [esp], ebx
	call Con_WriteFilterConfigString
	mov [esp], ebx
	call FS_FCloseFile
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop
	add [eax], al


;Com_Freeze_f()
Com_Freeze_f:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x2
	jz Com_Freeze_f_10
	mov dword [esp+0x4], _cstring_freeze_seconds
	mov dword [esp], 0x0
	call Com_Printf
	add esp, 0x24
	pop ebx
	pop ebp
	ret
Com_Freeze_f_10:
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x4]
	mov [esp], eax
	call atof
	fstp qword [ebp-0x18]
	call Sys_Milliseconds
	mov ebx, eax
	cvtsd2ss xmm0, [ebp-0x18]
	cvtss2sd xmm0, xmm0
	movsd [ebp-0x10], xmm0
Com_Freeze_f_20:
	call Sys_Milliseconds
	sub eax, ebx
	cvtsi2sd xmm0, eax
	mulsd xmm0, [_double_0_00100000]
	ucomisd xmm0, [ebp-0x10]
	jbe Com_Freeze_f_20
	add esp, 0x24
	pop ebx
	pop ebp
	ret


;Com_ShutdownInternal(char const*)
Com_ShutdownInternal:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, eax
	mov dword [esp], 0x0
	call CL_Disconnect
	mov dword [esp], 0x0
	call SV_AllowPackets
	call CL_ShutdownAll
	call CL_ShutdownDemo
	mov [esp], ebx
	call SV_Shutdown
	add esp, 0x14
	pop ebx
	pop ebp
	jmp Com_Restart
	nop


;Com_Error_f()
Com_Error_f:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov edx, cmd_args
	mov eax, [edx]
	cmp dword [edx+eax*4+0x44], 0x1
	jle Com_Error_f_10
	mov dword [esp+0x4], _cstring_testing_drop_err
	mov dword [esp], 0x2
	call Com_Error
	leave
	ret
Com_Error_f_10:
	mov dword [esp+0x4], _cstring_testing_fatal_er
	mov dword [esp], 0x1
	call Com_Error
	leave
	ret
	nop


;Com_GetConfigureDvarNames(char const**, char (*) [32])
Com_GetConfigureDvarNames:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov [ebp-0x20], eax
	mov esi, edx
	mov dword [ebp-0x1c], 0x0
	jmp Com_GetConfigureDvarNames_10
Com_GetConfigureDvarNames_50:
	cmp dword [ebp-0x1c], 0x3f
	jg Com_GetConfigureDvarNames_20
Com_GetConfigureDvarNames_60:
	mov dword [esp+0x8], 0x20
	mov [esp+0x4], ebx
	mov [esp], esi
	call Q_strncpyz
	add dword [ebp-0x1c], 0x1
	add esi, 0x20
	mov eax, [ebp-0x20]
Com_GetConfigureDvarNames_10:
	mov [esp], eax
	call Com_ParseOnLine
	mov ebx, eax
	mov eax, [ebp-0x20]
	mov eax, [eax]
	test eax, eax
	jz Com_GetConfigureDvarNames_30
Com_GetConfigureDvarNames_70:
	cmp byte [ebx], 0x0
	jz Com_GetConfigureDvarNames_40
	cld
	mov ecx, 0xffffffff
	mov edi, ebx
	xor eax, eax
	repne scasb
	not ecx
	sub ecx, 0x1
	cmp ecx, 0x1f
	jbe Com_GetConfigureDvarNames_50
	mov dword [esp+0xc], 0x1f
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_configure_mpcsv_
	mov dword [esp], 0x1
	call Com_Error
	cmp dword [ebp-0x1c], 0x3f
	jle Com_GetConfigureDvarNames_60
Com_GetConfigureDvarNames_20:
	mov dword [esp+0x8], 0x40
	mov dword [esp+0x4], _cstring_configure_mpcsv_1
	mov dword [esp], 0x1
	call Com_Error
	jmp Com_GetConfigureDvarNames_60
Com_GetConfigureDvarNames_40:
	mov eax, [ebp-0x1c]
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Com_GetConfigureDvarNames_30:
	mov dword [esp+0x4], _cstring_configure_mpcsv_2
	mov dword [esp], 0x1
	call Com_Error
	jmp Com_GetConfigureDvarNames_70


;Com_GetConfigureDvarValues(int, char const**, char (*) [32])
Com_GetConfigureDvarValues:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov [ebp-0x20], eax
	mov [ebp-0x24], edx
	test eax, eax
	jg Com_GetConfigureDvarValues_10
	mov eax, edx
Com_GetConfigureDvarValues_120:
	mov [esp], eax
	call Com_ParseOnLine
	cmp byte [eax], 0x0
	jz Com_GetConfigureDvarValues_20
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_configure_mpcsv_3
	mov dword [esp], 0x1
	call Com_Error
Com_GetConfigureDvarValues_20:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Com_GetConfigureDvarValues_10:
	mov [ebp-0x1c], ecx
	xor esi, esi
	test ecx, ecx
	jnz Com_GetConfigureDvarValues_30
	mov eax, [ebp-0x24]
	mov [esp], eax
	call Com_ParseOnLine
	mov ebx, eax
	mov eax, [ebp-0x24]
	mov eax, [eax]
	test eax, eax
	jnz Com_GetConfigureDvarValues_40
Com_GetConfigureDvarValues_80:
	mov dword [esp+0x4], _cstring_configure_mpcsv_2
	mov dword [esp], 0x1
	call Com_Error
	cmp byte [ebx], 0x0
	jz Com_GetConfigureDvarValues_50
Com_GetConfigureDvarValues_90:
	cld
	mov ecx, 0xffffffff
	mov edi, ebx
	xor eax, eax
	repne scasb
	not ecx
	lea eax, [ecx-0x1]
	cmp eax, 0x1f
	ja Com_GetConfigureDvarValues_60
Com_GetConfigureDvarValues_100:
	add esi, 0x1
	cmp [ebp-0x20], esi
	jz Com_GetConfigureDvarValues_70
Com_GetConfigureDvarValues_110:
	mov eax, [ebp-0x24]
	mov [esp], eax
	call Com_ParseOnLine
	mov ebx, eax
	mov eax, [ebp-0x24]
	mov eax, [eax]
	test eax, eax
	jz Com_GetConfigureDvarValues_80
Com_GetConfigureDvarValues_40:
	cmp byte [ebx], 0x0
	jnz Com_GetConfigureDvarValues_90
Com_GetConfigureDvarValues_50:
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_configure_mpcsv_4
	mov dword [esp], 0x1
	call Com_Error
	cld
	mov ecx, 0xffffffff
	mov edi, ebx
	xor eax, eax
	repne scasb
	not ecx
	lea eax, [ecx-0x1]
	cmp eax, 0x1f
	jbe Com_GetConfigureDvarValues_100
Com_GetConfigureDvarValues_60:
	mov dword [esp+0x10], 0x1f
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_configure_mpcsv_5
	mov dword [esp], 0x1
	call Com_Error
	add esi, 0x1
	cmp [ebp-0x20], esi
	jnz Com_GetConfigureDvarValues_110
Com_GetConfigureDvarValues_70:
	mov eax, [ebp-0x24]
	jmp Com_GetConfigureDvarValues_120
Com_GetConfigureDvarValues_150:
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_configure_mpcsv_4
	mov dword [esp], 0x1
	call Com_Error
	cld
	mov ecx, 0xffffffff
	mov edi, ebx
	xor eax, eax
	repne scasb
	not ecx
	lea eax, [ecx-0x1]
	cmp eax, 0x1f
	ja Com_GetConfigureDvarValues_130
Com_GetConfigureDvarValues_160:
	mov dword [esp+0x8], 0x20
	mov [esp+0x4], ebx
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call Q_strncpyz
	add esi, 0x1
	add dword [ebp-0x1c], 0x20
	cmp [ebp-0x20], esi
	jz Com_GetConfigureDvarValues_70
Com_GetConfigureDvarValues_30:
	mov eax, [ebp-0x24]
	mov [esp], eax
	call Com_ParseOnLine
	mov ebx, eax
	mov eax, [ebp-0x24]
	mov eax, [eax]
	test eax, eax
	jz Com_GetConfigureDvarValues_140
Com_GetConfigureDvarValues_170:
	cmp byte [ebx], 0x0
	jz Com_GetConfigureDvarValues_150
	cld
	mov ecx, 0xffffffff
	mov edi, ebx
	xor eax, eax
	repne scasb
	not ecx
	lea eax, [ecx-0x1]
	cmp eax, 0x1f
	jbe Com_GetConfigureDvarValues_160
Com_GetConfigureDvarValues_130:
	mov dword [esp+0x10], 0x1f
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_configure_mpcsv_5
	mov dword [esp], 0x1
	call Com_Error
	jmp Com_GetConfigureDvarValues_160
Com_GetConfigureDvarValues_140:
	mov dword [esp+0x4], _cstring_configure_mpcsv_2
	mov dword [esp], 0x1
	call Com_Error
	jmp Com_GetConfigureDvarValues_170
	nop


;Com_Init_Try_Block_Function(char*)
Com_Init_Try_Block_Function:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x20
	mov ebx, [ebp+0x8]
	mov dword [esp+0x14], _cstring_feb_12_2009
	mov dword [esp+0x10], _cstring_macosxsi386
	mov dword [esp+0xc], _cstring_17
	mov dword [esp+0x8], _cstring_cod4_mp
	mov dword [esp+0x4], _cstring_s_s_build_s_s
	mov dword [esp], 0x10
	call Com_Printf
	mov [com_consoleLines], ebx
	mov dword [com_numConsoleLines], 0x1
	movzx eax, byte [ebx]
	test al, al
	jz Com_Init_Try_Block_Function_10
	mov ecx, 0x1
	jmp Com_Init_Try_Block_Function_20
Com_Init_Try_Block_Function_50:
	cmp al, 0xa
	jz Com_Init_Try_Block_Function_30
	lea edx, [ebx+0x1]
	movzx eax, byte [edx]
	test al, al
	jz Com_Init_Try_Block_Function_40
Com_Init_Try_Block_Function_70:
	mov ebx, edx
Com_Init_Try_Block_Function_20:
	cmp al, 0x2b
	jnz Com_Init_Try_Block_Function_50
Com_Init_Try_Block_Function_30:
	cmp ecx, 0x20
	jz Com_Init_Try_Block_Function_60
	lea edx, [ebx+0x1]
	mov [ecx*4+com_consoleLines], edx
	add ecx, 0x1
	mov byte [ebx], 0x0
	movzx eax, byte [edx]
	test al, al
	jnz Com_Init_Try_Block_Function_70
Com_Init_Try_Block_Function_40:
	mov [com_numConsoleLines], ecx
Com_Init_Try_Block_Function_10:
	call SL_Init
	call Swap_Init
	call Cbuf_Init
	call Cmd_Init
	mov dword [esp], 0x0
	call Com_StartupVariable
	call Com_InitDvars
	call CCS_InitConstantConfigStrings
	mov eax, [useFastFile]
	cmp byte [eax+0xc], 0x0
	jnz Com_Init_Try_Block_Function_80
	xor esi, esi
Com_Init_Try_Block_Function_240:
	cmp byte [eax+0xc], 0x0
	jnz Com_Init_Try_Block_Function_90
Com_Init_Try_Block_Function_230:
	call CL_InitKeyCommands
	call FS_InitFilesystem
	call Con_InitChannels
	call LiveStorage_Init
	mov dword [esp], 0x0
	call Com_InitPlayerProfiles
	mov dword [esp], 0x0
	call CL_ControllerIndexFromClientNum
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Cbuf_Execute
	mov ebx, dvar_modifiedFlags
	test byte [ebx], 0x20
	jnz Com_Init_Try_Block_Function_100
Com_Init_Try_Block_Function_280:
	mov dword [esp+0xc], _cstring_use_recommended_
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_com_recommendeds
	call Cvar_RegisterBool
	mov [com_recommendedSet], eax
	mov dword [esp], 0x0
	call Com_CheckSetRecommended
	mov dword [esp], 0x0
	call Com_StartupVariable
	mov eax, [useFastFile]
	cmp byte [eax+0xc], 0x0
	jz Com_Init_Try_Block_Function_110
Com_Init_Try_Block_Function_270:
	mov eax, com_dedicated
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	jnz Com_Init_Try_Block_Function_120
Com_Init_Try_Block_Function_260:
	call Com_InitHunkMemory
	call Hunk_InitDebugMemory
	and dword [ebx], 0xfffffffe
	mov dword [com_codeTimeScale], 0x3f800000
	mov eax, [com_developer]
	mov eax, [eax+0xc]
	test eax, eax
	jnz Com_Init_Try_Block_Function_130
Com_Init_Try_Block_Function_250:
	mov dword [esp+0x8], _ZZ27Com_Init_Try_Block_FunctionPcE14Com_Quit_f_VAR
	mov dword [esp+0x4], Com_Quit_f
	mov dword [esp], _cstring_quit
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ27Com_Init_Try_Block_FunctionPcE21Com_WriteConfig_f_VAR
	mov dword [esp+0x4], Com_WriteConfig_f
	mov dword [esp], _cstring_writeconfig
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ27Com_Init_Try_Block_FunctionPcE23Com_WriteDefaults_f_VAR
	mov dword [esp+0x4], Com_WriteDefaults_f
	mov dword [esp], _cstring_writedefaults
	call Cmd_AddCommand
	call getBuildNumber
	mov dword [esp+0x10], _cstring_macosxsi386
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_17
	mov dword [esp+0x4], _cstring_cod4_mp
	mov dword [esp], _cstring_s_s_build_s_s1
	call va
	mov ebx, eax
	mov dword [esp+0xc], _cstring_game_version
	mov dword [esp+0x8], 0x40
	mov dword [esp+0x4], _cstring_null
	mov dword [esp], _cstring_version
	call Cvar_RegisterString
	mov [version], eax
	mov [esp+0x4], ebx
	mov [esp], eax
	call Cvar_SetString
	mov dword [esp+0xc], _cstring_short_game_versi
	mov dword [esp+0x8], 0x44
	mov dword [esp+0x4], _cstring_17
	mov dword [esp], _cstring_shortversion
	call Cvar_RegisterString
	mov [shortversion], eax
	call Sys_Init
	rdtsc
	mov [esp], eax
	call Netchan_Init
	call Scr_InitVariables
	call Scr_Init
	mov eax, [com_developer]
	mov edx, [eax+0xc]
	test edx, edx
	jnz Com_Init_Try_Block_Function_140
	mov eax, [com_logfile]
	mov ebx, [eax+0xc]
	test ebx, ebx
	jz Com_Init_Try_Block_Function_150
Com_Init_Try_Block_Function_140:
	mov ecx, 0x1
Com_Init_Try_Block_Function_210:
	mov [esp+0x8], edx
	mov eax, [com_developer_script]
	movzx eax, byte [eax+0xc]
	mov [esp+0x4], eax
	mov [esp], ecx
	call Scr_Settings
	call XAnimInit
	call DObjInit
	call SV_Init
	call NET_Init
	mov ebx, com_dedicated
	mov eax, [ebx]
	mov [esp], eax
	call Cvar_ClearModified
	mov eax, [ebx]
	mov ecx, [eax+0xc]
	test ecx, ecx
	jz Com_Init_Try_Block_Function_160
	call Sys_Milliseconds
	mov [com_frameTime], eax
	mov dword [esp], 0x0
	call Com_StartupVariable
	mov eax, [ebx]
	mov edx, [eax+0xc]
	test edx, edx
	jz Com_Init_Try_Block_Function_170
Com_Init_Try_Block_Function_220:
	mov ecx, [eax+0xc]
	test ecx, ecx
	jnz Com_Init_Try_Block_Function_180
	mov eax, [com_introPlayed]
	cmp byte [eax+0xc], 0x0
	jz Com_Init_Try_Block_Function_190
Com_Init_Try_Block_Function_180:
	mov eax, [useFastFile]
	cmp byte [eax+0xc], 0x0
	jz Com_Init_Try_Block_Function_200
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_init
	call PMem_EndAlloc
	mov dword [esp], 0x0
	call DB_SetInitializing
	call Sys_Milliseconds
	sub eax, esi
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_end_init_d_ms
	mov dword [esp], 0x10
	call Com_Printf
Com_Init_Try_Block_Function_200:
	mov dword [com_fullyInitialized], 0x1
	mov dword [esp+0x4], _cstring__common_initiali
	mov dword [esp], 0x10
	call Com_Printf
	mov dword [esp+0x4], 0x0
	mov dword [esp], 0x6
	call Com_DvarDump
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
Com_Init_Try_Block_Function_150:
	xor ecx, ecx
	jmp Com_Init_Try_Block_Function_210
Com_Init_Try_Block_Function_160:
	call ScrPlace_Init
	call CL_InitOnceForAllClients
	mov dword [esp], 0x0
	call CL_Init
	call Sys_Milliseconds
	mov [com_frameTime], eax
	mov dword [esp], 0x0
	call Com_StartupVariable
	mov eax, [ebx]
	mov edx, [eax+0xc]
	test edx, edx
	jnz Com_Init_Try_Block_Function_220
Com_Init_Try_Block_Function_170:
	call SND_InitDriver
	call R_InitOnce
	call CL_InitRenderer
	mov eax, cls
	mov dword [eax+0x10c], 0x1
	call SND_Init
	mov eax, [ebx]
	jmp Com_Init_Try_Block_Function_220
Com_Init_Try_Block_Function_90:
	call DB_InitThread
	jmp Com_Init_Try_Block_Function_230
Com_Init_Try_Block_Function_80:
	call PMem_Init
	mov dword [esp], 0x1
	call DB_SetInitializing
	mov dword [esp+0x4], _cstring_begin_init
	mov dword [esp], 0x7
	call Com_Printf
	call Sys_Milliseconds
	mov esi, eax
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_init
	call PMem_BeginAlloc
	mov eax, [useFastFile]
	jmp Com_Init_Try_Block_Function_240
Com_Init_Try_Block_Function_130:
	mov dword [esp+0x8], _ZZ27Com_Init_Try_Block_FunctionPcE15Com_Error_f_VAR
	mov dword [esp+0x4], Com_Error_f
	mov dword [esp], _cstring_error
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ27Com_Init_Try_Block_FunctionPcE15Com_Crash_f_VAR
	mov dword [esp+0x4], Com_Crash_f
	mov dword [esp], _cstring_crash
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ27Com_Init_Try_Block_FunctionPcE16Com_Freeze_f_VAR
	mov dword [esp+0x4], Com_Freeze_f
	mov dword [esp], _cstring_freeze
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ27Com_Init_Try_Block_FunctionPcE16Com_Assert_f_VAR
	mov dword [esp+0x4], Com_Assert_f
	mov dword [esp], _cstring_assert
	call Cmd_AddCommand
	jmp Com_Init_Try_Block_Function_250
Com_Init_Try_Block_Function_120:
	call CL_InitDedicated
	jmp Com_Init_Try_Block_Function_260
Com_Init_Try_Block_Function_110:
	call SEH_UpdateLanguageInfo
	jmp Com_Init_Try_Block_Function_270
Com_Init_Try_Block_Function_100:
	call Com_InitDvars
	jmp Com_Init_Try_Block_Function_280
Com_Init_Try_Block_Function_190:
	mov dword [esp+0x4], _cstring_cinematic_iw_log
	mov dword [esp], 0x0
	call Cbuf_AddText
	mov dword [esp+0x4], _cstring_cinematic_atvi_s
	mov eax, [nextmap]
	mov [esp], eax
	call Cvar_SetString
	mov dword [esp+0x4], 0x1
	mov eax, [com_introPlayed]
	mov [esp], eax
	call Cvar_SetBool
	jmp Com_Init_Try_Block_Function_180
Com_Init_Try_Block_Function_60:
	mov dword [com_numConsoleLines], 0x20
	jmp Com_Init_Try_Block_Function_10


;Com_StartHunkUsers()
Com_StartHunkUsers:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	mov dword [esp], 0x2
	call Sys_GetValue
	mov [esp], eax
	call setjmp
	test eax, eax
	jnz Com_StartHunkUsers_10
	mov eax, [useFastFile]
	cmp byte [eax+0xc], 0x0
	jnz Com_StartHunkUsers_20
Com_StartHunkUsers_30:
	mov dword [esp+0x4], _cstring_null
	mov dword [esp], _cstring_null
	call UI_SetMap
	call CL_StartHunkUsers
	call UI_GetMenuScreen
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call UI_SetActiveMenu
	call IN_Frame
	call Com_EventLoop
	leave
	ret
Com_StartHunkUsers_20:
	mov dword [ebp-0x14], _cstring_ui_mp
	mov dword [ebp-0x10], 0x8
	mov dword [ebp-0xc], 0x68
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x1
	lea eax, [ebp-0x14]
	mov [esp], eax
	call DB_LoadXAssets
	jmp Com_StartHunkUsers_30
Com_StartHunkUsers_10:
	mov dword [esp+0x4], com_errorMessage
	mov dword [esp], _cstring_error_during_ini
	call Sys_Error
	leave
	ret
	nop


;Com_ErrorCleanup()
Com_ErrorCleanup:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x1010
	call LargeLocalReset
	call R_SyncRenderThread
	call R_WaitWorkerCmds
	mov eax, com_dedicated
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz Com_ErrorCleanup_10
Com_ErrorCleanup_230:
	call Cmd_ComErrorCleanup
	mov dword [esp], 0x0
	call Cvar_SetInAutoExec
	mov eax, [useFastFile]
	cmp byte [eax+0xc], 0x0
	jnz Com_ErrorCleanup_20
Com_ErrorCleanup_220:
	call Hunk_ClearTempMemory
	call Hunk_ClearTempMemoryHigh
	mov eax, [useFastFile]
	cmp byte [eax+0xc], 0x0
	jz Com_ErrorCleanup_30
Com_ErrorCleanup_210:
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_cl_paused
	call Cvar_SetIntByName
	mov dword [esp+0x4], _cstring_null
	mov dword [esp], _cstring_null
	call FS_PureServerSetLoadedIwds
	call SEH_UpdateLanguageInfo
	mov dword [esp+0x4], com_errorMessage
	lea esi, [ebp-0x1008]
	mov [esp], esi
	call strcpy
	mov edx, [errorcode]
	cmp edx, 0x4
	jz Com_ErrorCleanup_40
	mov eax, cls
	mov eax, [eax+0x110]
	test eax, eax
	jnz Com_ErrorCleanup_50
Com_ErrorCleanup_150:
	cmp dword [errorcode], 0x3
	jz Com_ErrorCleanup_60
Com_ErrorCleanup_160:
	mov eax, [noticeErrors]
	cmp byte [eax], 0x0
	jnz Com_ErrorCleanup_70
Com_ErrorCleanup_270:
	mov ebx, _cstring_menu_error
Com_ErrorCleanup_170:
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], _cstring_error_message
	mov dword [esp], com_errorMessage
	call SEH_LocalizeTextMessage
	test eax, eax
	mov edx, com_errorMessage
	cmovz eax, edx
	mov [esp+0x4], ebx
	mov [esp], eax
	call Com_SetLocalizedErrorMessage
Com_ErrorCleanup_240:
	call SND_ErrorCleanup
	call Com_CleanupBsp
	call CM_Cleanup
	call Com_ResetParseSessions
	call CL_FlushDebugServerData
	call CL_UpdateDebugServerData
	call FS_ResetFiles
	cmp dword [errorcode], 0x2
	jz Com_ErrorCleanup_80
Com_ErrorCleanup_280:
	call Sys_Milliseconds
	mov edx, eax
	sub eax, [_ZZ16Com_ErrorCleanupvE13lastErrorTime]
	cmp eax, 0x63
	jg Com_ErrorCleanup_90
	mov eax, [_ZZ16Com_ErrorCleanupvE10errorCount]
	add eax, 0x1
	mov [_ZZ16Com_ErrorCleanupvE10errorCount], eax
	cmp eax, 0x3
	jle Com_ErrorCleanup_100
	mov dword [errorcode], 0x1
Com_ErrorCleanup_100:
	mov [_ZZ16Com_ErrorCleanupvE13lastErrorTime], edx
	mov edx, [errorcode]
	lea eax, [edx-0x2]
	cmp eax, 0x2
	ja Com_ErrorCleanup_110
Com_ErrorCleanup_180:
	mov eax, updateScreenCalled
	mov byte [eax], 0x0
	cmp edx, 0x3
	jz Com_ErrorCleanup_120
Com_ErrorCleanup_190:
	cmp edx, 0x2
	jz Com_ErrorCleanup_130
	mov dword [esp+0x8], com_errorMessage
	mov dword [esp+0x4], _cstring_disconnecting_s
	mov dword [esp], 0x10
	call Com_Printf
Com_ErrorCleanup_250:
	mov eax, esi
	call Com_ShutdownInternal
	cmp dword [errorcode], 0x2
	jz Com_ErrorCleanup_140
Com_ErrorCleanup_200:
	mov eax, bgs
	mov dword [eax], 0x0
	mov dword [com_fixedConsolePosition], 0x0
	mov dword [com_errorEntered], 0x0
	add esp, 0x1010
	pop ebx
	pop esi
	pop ebp
	ret
Com_ErrorCleanup_50:
	cmp edx, 0x2
	jz Com_ErrorCleanup_150
	call UI_GetMenuScreenForError
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call UI_SetActiveMenu
	cmp dword [errorcode], 0x3
	jnz Com_ErrorCleanup_160
Com_ErrorCleanup_60:
	mov ebx, _cstring_menu_notice
	jmp Com_ErrorCleanup_170
Com_ErrorCleanup_90:
	mov dword [_ZZ16Com_ErrorCleanupvE10errorCount], 0x0
	mov [_ZZ16Com_ErrorCleanupvE13lastErrorTime], edx
	mov edx, [errorcode]
	lea eax, [edx-0x2]
	cmp eax, 0x2
	jbe Com_ErrorCleanup_180
Com_ErrorCleanup_110:
	mov dword [esp+0x4], com_errorMessage
	mov dword [esp], _cstring_s
	call Sys_Error
	mov edx, [errorcode]
	mov eax, updateScreenCalled
	mov byte [eax], 0x0
	cmp edx, 0x3
	jnz Com_ErrorCleanup_190
Com_ErrorCleanup_120:
	mov eax, _cstring_exe_disconnected
	call Com_ShutdownInternal
	jmp Com_ErrorCleanup_200
Com_ErrorCleanup_30:
	call FX_UnregisterAll
	jmp Com_ErrorCleanup_210
Com_ErrorCleanup_20:
	call DB_Cleanup
	jmp Com_ErrorCleanup_220
Com_ErrorCleanup_10:
	call R_ComErrorCleanup
	jmp Com_ErrorCleanup_230
Com_ErrorCleanup_40:
	cmp byte [com_errorMessage], 0x0
	jz Com_ErrorCleanup_240
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], _cstring_error_message
	mov dword [esp], com_errorMessage
	call SEH_LocalizeTextMessage
	test eax, eax
	jz Com_ErrorCleanup_240
	mov dword [esp+0x8], 0x1000
	mov [esp+0x4], eax
	mov dword [esp], com_errorMessage
	call Q_strncpyz
	jmp Com_ErrorCleanup_240
Com_ErrorCleanup_130:
	mov dword [esp+0x8], com_errorMessage
	mov dword [esp+0x4], _cstring_error_s
	mov dword [esp], 0x10
	call Com_PrintError
	mov eax, cls
	mov eax, [eax+0x110]
	test eax, eax
	jz Com_ErrorCleanup_250
	mov eax, [com_fixedConsolePosition]
	test eax, eax
	jnz Com_ErrorCleanup_250
	call CL_ConsoleFixPosition
	jmp Com_ErrorCleanup_250
Com_ErrorCleanup_140:
	call QuitOnError
	test al, al
	jz Com_ErrorCleanup_200
	call Com_Quit_f
	jmp Com_ErrorCleanup_200
Com_ErrorCleanup_70:
	mov ebx, noticeErrors
Com_ErrorCleanup_260:
	mov dword [esp+0x4], com_errorMessage
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jz Com_ErrorCleanup_60
	mov eax, [ebx+0x4]
	add ebx, 0x4
	cmp byte [eax], 0x0
	jnz Com_ErrorCleanup_260
	jmp Com_ErrorCleanup_270
Com_ErrorCleanup_80:
	call Cbuf_Init
	jmp Com_ErrorCleanup_280
	nop


;Com_Printf(int, char const*, ...)
Com_Printf:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x1024
	lea eax, [ebp+0x10]
	mov [ebp-0xc], eax
	mov [esp+0xc], eax
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1000
	lea ebx, [ebp-0x100c]
	mov [esp], ebx
	call vsnprintf
	mov byte [ebp-0xd], 0x0
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], ebx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Com_PrintMessage
	add esp, 0x1024
	pop ebx
	pop ebp
	ret
	nop


;Com_Quit_f()
Com_Quit_f:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x4], _cstring_quitting
	mov dword [esp], 0x0
	call Com_Printf
	call R_SyncRenderThread
	call R_WaitWorkerCmds
	call Scr_Cleanup
	mov dword [esp], 0x2
	call Sys_EnterCriticalSection
	call GScr_Shutdown
	mov eax, [com_errorEntered]
	test eax, eax
	jz Com_Quit_f_10
	leave
	jmp Sys_Quit
Com_Quit_f_10:
	call Hunk_ClearTempMemory
	call Hunk_ClearTempMemoryHigh
	call Sys_DestroySplashWindow
	mov dword [esp], 0x0
	call CL_Shutdown
	mov dword [esp], _cstring_exe_serverquit
	call SV_Shutdown
	call CL_ShutdownRef
	call Com_Close
	mov eax, [logfile]
	test eax, eax
	jnz Com_Quit_f_20
Com_Quit_f_30:
	mov dword [esp], 0x1
	call FS_Shutdown
	call FS_ShutDownIwdPureCheckReferences
	call FS_ShutdownServerIwdNames
	call FS_ShutdownServerReferencedIwds
	call FS_ShutdownServerReferencedFFs
	leave
	jmp Sys_Quit
Com_Quit_f_20:
	mov [esp], eax
	call FS_FCloseLogFile
	mov dword [logfile], 0x0
	jmp Com_Quit_f_30
	nop


;Info_Print(char const*)
Info_Print:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x410
	mov ebx, [ebp+0x8]
	lea eax, [ebx+0x1]
	cmp byte [ebx], 0x5c
	cmovz ebx, eax
	cmp byte [ebx], 0x0
	jz Info_Print_10
	lea esi, [ebp-0x208]
Info_Print_90:
	movzx eax, byte [ebx]
	cmp al, 0x5c
	jz Info_Print_20
	mov [ebp-0x208], al
	add ebx, 0x1
	movzx eax, byte [ebx]
	test al, al
	jnz Info_Print_30
	lea edx, [ebp-0x207]
Info_Print_100:
	mov ecx, edx
	sub ecx, esi
	cmp ecx, 0x13
	jle Info_Print_40
Info_Print_120:
	mov byte [edx], 0x0
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_s
	mov dword [esp], 0x0
	call Com_Printf
	cmp byte [ebx], 0x0
	jz Info_Print_50
Info_Print_130:
	add ebx, 0x1
	movzx eax, byte [ebx]
	test al, al
	jz Info_Print_60
	cmp al, 0x5c
	jz Info_Print_60
	lea ecx, [ebp-0x408]
	mov edx, ecx
Info_Print_80:
	mov [edx], al
	add edx, 0x1
	add ebx, 0x1
	movzx eax, byte [ebx]
	test al, al
	jz Info_Print_70
	cmp al, 0x5c
	jnz Info_Print_80
Info_Print_70:
	mov byte [edx], 0x0
	cmp byte [ebx], 0x1
	sbb ebx, 0xffffffff
	mov [esp+0x8], ecx
	mov dword [esp+0x4], _cstring_s1
	mov dword [esp], 0x0
	call Com_Printf
	cmp byte [ebx], 0x0
	jnz Info_Print_90
Info_Print_10:
	add esp, 0x410
	pop ebx
	pop esi
	pop ebp
	ret
Info_Print_60:
	lea ecx, [ebp-0x408]
	mov edx, ecx
	jmp Info_Print_70
Info_Print_30:
	lea edx, [ebp-0x207]
Info_Print_110:
	cmp al, 0x5c
	jz Info_Print_100
	mov [edx], al
	add edx, 0x1
	add ebx, 0x1
	movzx eax, byte [ebx]
	test al, al
	jnz Info_Print_110
	mov ecx, edx
	sub ecx, esi
	cmp ecx, 0x13
	jg Info_Print_120
Info_Print_40:
	mov eax, 0x14
	sub eax, ecx
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x20
	mov [esp], edx
	call memset
	mov byte [ebp-0x1f4], 0x0
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_s
	mov dword [esp], 0x0
	call Com_Printf
	cmp byte [ebx], 0x0
	jnz Info_Print_130
Info_Print_50:
	mov dword [esp+0x4], _cstring_missing_value
	mov dword [esp], 0x10
	call Com_Printf
	add esp, 0x410
	pop ebx
	pop esi
	pop ebp
	ret
Info_Print_20:
	mov edx, esi
	jmp Info_Print_100
	nop


;Com_DPrintf(int, char const*, ...)
Com_DPrintf:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x1024
	mov eax, [com_developer]
	test eax, eax
	jz Com_DPrintf_10
	mov eax, [eax+0xc]
	test eax, eax
	jnz Com_DPrintf_20
Com_DPrintf_10:
	add esp, 0x1024
	pop ebx
	pop ebp
	ret
Com_DPrintf_20:
	lea eax, [ebp+0x10]
	mov [ebp-0xc], eax
	mov [esp+0xc], eax
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1000
	lea ebx, [ebp-0x100c]
	mov [esp], ebx
	call vsnprintf
	mov byte [ebp-0xd], 0x0
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_s
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Com_Printf
	add esp, 0x1024
	pop ebx
	pop ebp
	ret


;Com_Restart()
Com_Restart:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	call CL_ShutdownHunkUsers
	call SV_ShutdownGameProgs
	call Com_ShutdownDObj
	call DObjShutdown
	call XAnimShutdown
	call Com_ShutdownWorld
	call CM_Shutdown
	call SND_ShutdownChannels
	call Hunk_Clear
	call Hunk_ResetDebugMem
	mov eax, [useFastFile]
	cmp byte [eax+0xc], 0x0
	jnz Com_Restart_10
Com_Restart_40:
	mov eax, [com_developer]
	mov edx, [eax+0xc]
	test edx, edx
	jnz Com_Restart_20
	mov eax, [com_logfile]
	mov eax, [eax+0xc]
	test eax, eax
	jz Com_Restart_30
Com_Restart_20:
	mov ecx, 0x1
Com_Restart_50:
	mov [esp+0x8], edx
	mov eax, [com_developer_script]
	movzx eax, byte [eax+0xc]
	mov [esp+0x4], eax
	mov [esp], ecx
	call Scr_Settings
	mov dword [com_fixedConsolePosition], 0x0
	call XAnimInit
	call DObjInit
	leave
	jmp Com_InitDObj
Com_Restart_10:
	call DB_ReleaseXAssets
	jmp Com_Restart_40
Com_Restart_30:
	xor ecx, ecx
	jmp Com_Restart_50


;Field_Clear(field_t*)
Field_Clear:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	lea eax, [ebx+0x18]
	mov dword [esp+0x8], 0x100
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call memset
	mov dword [ebx], 0x0
	mov dword [ebx+0x4], 0x0
	mov dword [ebx+0x8], 0x100
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;Com_SafeMode()
Com_SafeMode:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov ecx, [com_numConsoleLines]
	test ecx, ecx
	jg Com_SafeMode_10
Com_SafeMode_60:
	mov eax, [com_safemode]
Com_SafeMode_120:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Com_SafeMode_10:
	mov dword [ebp-0x1c], 0x0
	mov edi, com_consoleLines
	mov esi, cmd_args
	jmp Com_SafeMode_20
Com_SafeMode_80:
	mov edx, cmd_args
	mov eax, [edx]
	mov ebx, [edx+eax*4+0x44]
	test ebx, ebx
	jle Com_SafeMode_30
	mov eax, [edx+eax*4+0x64]
	mov eax, [eax]
Com_SafeMode_110:
	mov dword [esp+0x4], _cstring_dvar_restart
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jz Com_SafeMode_40
	xor ebx, ebx
Com_SafeMode_90:
	call Cmd_EndTokenizedString
	test bl, bl
	jnz Com_SafeMode_50
	add dword [ebp-0x1c], 0x1
	add edi, 0x4
	mov eax, [ebp-0x1c]
	cmp eax, [com_numConsoleLines]
	jge Com_SafeMode_60
Com_SafeMode_20:
	mov eax, [edi]
	mov [esp], eax
	call Cmd_TokenizeString
	mov eax, [esi]
	mov edx, [esi+eax*4+0x44]
	test edx, edx
	jle Com_SafeMode_70
	mov eax, [esi+eax*4+0x64]
	mov eax, [eax]
Com_SafeMode_100:
	mov dword [esp+0x4], _cstring_safe
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jnz Com_SafeMode_80
Com_SafeMode_40:
	mov ebx, 0x1
	jmp Com_SafeMode_90
Com_SafeMode_70:
	mov eax, _cstring_null
	jmp Com_SafeMode_100
Com_SafeMode_30:
	mov eax, _cstring_null
	jmp Com_SafeMode_110
Com_SafeMode_50:
	mov edx, [ebp-0x1c]
	mov eax, [edx*4+com_consoleLines]
	mov byte [eax], 0x0
	mov eax, 0x1
	jmp Com_SafeMode_120
	nop


;Com_Shutdown(char const*)
Com_Shutdown:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	mov eax, [ebp+0x8]
	call Com_ShutdownInternal
	mov eax, com_dedicated
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	jz Com_Shutdown_10
	leave
	ret
Com_Shutdown_10:
	call CL_InitRenderer
	mov eax, [useFastFile]
	cmp byte [eax+0xc], 0x0
	jnz Com_Shutdown_20
Com_Shutdown_30:
	mov dword [esp+0x4], _cstring_null
	mov dword [esp], _cstring_null
	call UI_SetMap
	call CL_StartHunkUsers
	leave
	ret
Com_Shutdown_20:
	mov dword [ebp-0x14], _cstring_ui_mp
	mov dword [ebp-0x10], 0x8
	mov dword [ebp-0xc], 0x68
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x1
	lea eax, [ebp-0x14]
	mov [esp], eax
	call DB_LoadXAssets
	jmp Com_Shutdown_30
	nop


;PIXSetMarker(int, char const*, ...)
PIXSetMarker:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop


;Com_EventLoop()
Com_EventLoop:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
Com_EventLoop_50:
	lea eax, [ebp-0x58]
	mov [esp], eax
	call Sys_GetEvent
	sub esp, 0x4
	mov edi, [ebp-0x58]
	mov [ebp-0x30], edi
	mov edx, [ebp-0x54]
	mov [ebp-0x2c], edx
	mov ecx, [ebp-0x50]
	mov [ebp-0x28], ecx
	mov esi, [ebp-0x4c]
	mov [ebp-0x24], esi
	mov eax, [ebp-0x48]
	mov [ebp-0x20], eax
	mov ebx, [ebp-0x44]
	mov [ebp-0x1c], ebx
	cmp edx, 0x1
	jz Com_EventLoop_10
	jle Com_EventLoop_20
	cmp edx, 0x2
	jz Com_EventLoop_30
	cmp edx, 0x3
	jz Com_EventLoop_40
Com_EventLoop_60:
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_com_eventloop_ba
	mov dword [esp], 0x1
	call Com_Error
	jmp Com_EventLoop_50
Com_EventLoop_10:
	mov [esp+0xc], edi
	mov [esp+0x8], esi
	mov [esp+0x4], ecx
	mov dword [esp], 0x0
	call CL_KeyEvent
	jmp Com_EventLoop_50
Com_EventLoop_30:
	mov [esp+0x4], ecx
	mov dword [esp], 0x0
	call CL_CharEvent
	jmp Com_EventLoop_50
Com_EventLoop_20:
	test edx, edx
	jnz Com_EventLoop_60
	call Com_ClientPacketEvent
	lea esp, [ebp-0xc]
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp Com_ServerPacketEvent
Com_EventLoop_40:
	mov [esp+0x4], ebx
	mov dword [esp], 0x0
	call Cbuf_AddText
	mov [esp], ebx
	call Z_FreeInternal
	mov dword [esp+0x4], _cstring_
	mov dword [esp], 0x0
	call Cbuf_AddText
	jmp Com_EventLoop_50
	nop


;Com_ReadCDKey()
Com_ReadCDKey:
	push ebp
	mov ebp, esp
	sub esp, 0x38
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x15
	lea eax, [ebp-0x1d]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_codkey
	call _ZN14MacPreferences9GetStringEPKcPciS1_
	test al, al
	jz Com_ReadCDKey_10
	mov eax, [ebp-0x1d]
	mov [cl_cdkey], eax
	mov eax, [ebp-0x19]
	mov [cl_cdkey+0x4], eax
	mov eax, [ebp-0x15]
	mov [cl_cdkey+0x8], eax
	mov eax, [ebp-0x11]
	mov [cl_cdkey+0xc], eax
	mov byte [cl_cdkey+0x10], 0x0
	mov eax, [ebp-0xd]
	mov [cl_cdkeychecksum], eax
	mov byte [cl_cdkeychecksum+0x4], 0x0
	mov dword [esp+0x4], cl_cdkeychecksum
	mov dword [esp], cl_cdkey
	call CL_CDKeyValidate
	test eax, eax
	jz Com_ReadCDKey_10
	leave
	ret
Com_ReadCDKey_10:
	mov dword [cl_cdkey], 0x20202020
	mov dword [cl_cdkey+0x4], 0x20202020
	mov dword [cl_cdkey+0x8], 0x20202020
	mov dword [cl_cdkey+0xc], 0x20202020
	mov byte [cl_cdkey+0x10], 0x0
	leave
	ret


;Com_AllocEvent(int)
Com_AllocEvent:
	push ebp
	mov ebp, esp
	pop ebp
	jmp Z_MallocInternal
	nop
	add [eax], al


;Com_ErrorAbort()
Com_ErrorAbort:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x4], com_errorMessage
	mov dword [esp], _cstring_s
	call Sys_Error
	leave
	ret


;Com_PrintError(int, char const*, ...)
Com_PrintError:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x102c
	mov esi, [ebp+0xc]
	mov dword [esp+0x4], _cstring_error
	mov [esp], esi
	call I_stristr
	test eax, eax
	jz Com_PrintError_10
	mov dword [esp+0x8], 0x1000
	mov dword [esp+0x4], _cstring_11
	lea ebx, [ebp-0x101c]
	mov [esp], ebx
	call Q_strncpyz
Com_PrintError_20:
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, ebx
	repne scasb
	not ecx
	sub ecx, 0x1
	lea eax, [ebp+0x10]
	mov [ebp-0x1c], eax
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	mov eax, 0x1000
	sub eax, ecx
	mov [esp+0x4], eax
	lea ecx, [ebx+ecx]
	mov [esp], ecx
	call vsnprintf
	mov byte [ebp-0x1d], 0x0
	add dword [com_errorPrintsCount], 0x1
	mov dword [esp+0x8], 0x3
	mov [esp+0x4], ebx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Com_PrintMessage
	add esp, 0x102c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Com_PrintError_10:
	mov dword [esp+0x8], 0x1000
	mov dword [esp+0x4], _cstring_1error_
	lea ebx, [ebp-0x101c]
	mov [esp], ebx
	call Q_strncpyz
	jmp Com_PrintError_20


;Com_WriteCDKey()
Com_WriteCDKey:
	push ebp
	mov ebp, esp
	sub esp, 0x38
	mov dword [esp+0x4], cl_cdkeychecksum
	mov dword [esp], cl_cdkey
	call CL_CDKeyValidate
	test eax, eax
	jnz Com_WriteCDKey_10
	mov dword [cl_cdkey], 0x20202020
	mov dword [cl_cdkey+0x4], 0x20202020
	mov dword [cl_cdkey+0x8], 0x20202020
	mov dword [cl_cdkey+0xc], 0x20202020
	mov byte [cl_cdkey+0x10], 0x0
	leave
	ret
Com_WriteCDKey_10:
	lea edx, [ebp-0x1d]
	mov eax, [cl_cdkey]
	mov [ebp-0x1d], eax
	mov eax, [cl_cdkey+0x4]
	mov [ebp-0x19], eax
	mov eax, [cl_cdkey+0x8]
	mov [ebp-0x15], eax
	mov eax, [cl_cdkey+0xc]
	mov [ebp-0x11], eax
	mov eax, [cl_cdkeychecksum]
	mov [ebp-0xd], eax
	mov byte [ebp-0x9], 0x0
	mov [esp+0x4], edx
	mov dword [esp], _cstring_codkey
	call _ZN14MacPreferences9PutStringEPKcS1_
	leave
	ret


;Com_AddToString(char const*, char*, int, int, int)
Com_AddToString:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x8
	mov eax, [ebp+0x10]
	mov ecx, [ebp+0x18]
	test ecx, ecx
	jz Com_AddToString_10
	mov ecx, [ebp+0x8]
	movzx edx, byte [ecx]
	test dl, dl
	jnz Com_AddToString_20
Com_AddToString_100:
	cmp eax, [ebp+0x14]
	jge Com_AddToString_30
	mov edx, [ebp+0xc]
	mov byte [edx+eax], 0x22
	add eax, 0x1
	mov dword [ebp-0x10], 0x1
	cmp eax, [ebp+0x14]
	jl Com_AddToString_40
Com_AddToString_70:
	mov edx, [ebp-0x10]
	test edx, edx
	jz Com_AddToString_50
Com_AddToString_30:
	cmp [ebp+0x14], eax
	jle Com_AddToString_50
	mov esi, [ebp+0xc]
	mov byte [eax+esi], 0x22
	add eax, 0x1
Com_AddToString_50:
	add esp, 0x8
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Com_AddToString_20:
	mov ebx, [ebp+0x14]
	sub ebx, eax
	test ebx, ebx
	jg Com_AddToString_60
Com_AddToString_10:
	mov dword [ebp-0x10], 0x0
	cmp eax, [ebp+0x14]
	jge Com_AddToString_70
Com_AddToString_40:
	mov ecx, [ebp+0x8]
	movzx edx, byte [ecx]
	test dl, dl
	jz Com_AddToString_70
	mov ecx, 0x1
	mov ebx, [ebp+0xc]
	lea edi, [ebx+eax]
	mov esi, [ebp+0x14]
	sub esi, eax
Com_AddToString_90:
	mov [edi+ecx-0x1], dl
	lea edx, [eax+ecx]
	mov [ebp-0x14], edx
	cmp ecx, esi
	jz Com_AddToString_80
	mov ebx, [ebp+0x8]
	movzx edx, byte [ebx+ecx]
	add ecx, 0x1
	test dl, dl
	jnz Com_AddToString_90
	mov eax, [ebp-0x14]
	jmp Com_AddToString_70
Com_AddToString_60:
	cmp dl, 0x20
	jle Com_AddToString_100
	xor edx, edx
Com_AddToString_110:
	add edx, 0x1
	cmp ebx, edx
	jz Com_AddToString_10
	mov esi, [ebp+0x8]
	movzx ecx, byte [edx+esi]
	test cl, cl
	jz Com_AddToString_10
	cmp cl, 0x20
	jg Com_AddToString_110
	jmp Com_AddToString_100
Com_AddToString_80:
	mov eax, edx
	jmp Com_AddToString_70


;Com_EndRedirect()
Com_EndRedirect:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov edx, [rd_flush]
	test edx, edx
	jz Com_EndRedirect_10
	mov eax, [rd_buffer]
	mov [esp], eax
	call edx
Com_EndRedirect_10:
	mov dword [rd_buffer], 0x0
	mov dword [rd_buffersize], 0x0
	mov dword [rd_flush], 0x0
	leave
	ret


;Com_LogFileOpen()
Com_LogFileOpen:
	push ebp
	mov ebp, esp
	xor eax, eax
	cmp dword [logfile], 0x0
	setnz al
	pop ebp
	ret
	nop


;Com_SyncThreads()
Com_SyncThreads:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	call R_SyncRenderThread
	leave
	jmp R_WaitWorkerCmds
	nop


;Com_PrintMessage(int, char const*, int)
Com_PrintMessage:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov edi, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov ebx, [ebp+0x10]
	mov dword [esp+0x4], 0x1000
	mov [esp], esi
	call PbCaptureConsoleOutput
	mov eax, [rd_buffer]
	test eax, eax
	jz Com_PrintMessage_10
	cmp edi, 0x6
	jz Com_PrintMessage_20
	mov dword [esp], 0x6
	call Sys_EnterCriticalSection
	mov ebx, [rd_buffer]
	xor edx, edx
	cld
	mov ecx, 0xffffffff
	mov edi, esi
	mov eax, edx
	repne scasb
	not ecx
	mov [ebp-0x1c], ecx
	mov ecx, 0xffffffff
	mov edi, ebx
	repne scasb
	not ecx
	mov eax, [ebp-0x1c]
	lea ecx, [ecx+eax-0x2]
	mov edx, [rd_buffersize]
	lea eax, [edx-0x1]
	cmp ecx, eax
	ja Com_PrintMessage_30
Com_PrintMessage_40:
	mov [esp+0x8], esi
	mov [esp+0x4], edx
	mov [esp], ebx
	call Q_strncat
	mov dword [ebp+0x8], 0x6
Com_PrintMessage_130:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp Sys_LeaveCriticalSection
Com_PrintMessage_20:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Com_PrintMessage_30:
	mov [esp], ebx
	call dword [rd_flush]
	mov eax, [rd_buffer]
	mov byte [eax], 0x0
	mov ebx, [rd_buffer]
	mov edx, [rd_buffersize]
	jmp Com_PrintMessage_40
Com_PrintMessage_10:
	cmp edi, 0x6
	jz Com_PrintMessage_50
	mov eax, com_dedicated
	mov eax, [eax]
	test eax, eax
	jz Com_PrintMessage_50
	mov ecx, [eax+0xc]
	test ecx, ecx
	jz Com_PrintMessage_60
Com_PrintMessage_50:
	cmp byte [esi], 0x5e
	jz Com_PrintMessage_70
Com_PrintMessage_140:
	cmp edi, 0x6
	jz Com_PrintMessage_80
	mov eax, [com_filter_output]
	test eax, eax
	jz Com_PrintMessage_90
	cmp byte [eax+0xc], 0x0
	jnz Com_PrintMessage_100
Com_PrintMessage_90:
	mov [esp], esi
	call Sys_Print
Com_PrintMessage_80:
	cmp edi, 0x7
	jz Com_PrintMessage_20
	mov eax, [com_logfile]
	test eax, eax
	jz Com_PrintMessage_20
	mov edx, [eax+0xc]
	test edx, edx
	jz Com_PrintMessage_20
	mov dword [esp], 0x0
	call Sys_EnterCriticalSection
	call FS_Initialized
	test eax, eax
	jz Com_PrintMessage_110
	mov eax, [logfile]
	test eax, eax
	jnz Com_PrintMessage_120
	call Com_OpenLogFile
	mov eax, [logfile]
	test eax, eax
	jz Com_PrintMessage_110
Com_PrintMessage_120:
	mov [esp+0x8], eax
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, esi
	repne scasb
	not ecx
	sub ecx, 0x1
	mov [esp+0x4], ecx
	mov [esp], esi
	call FS_WriteLog
	mov eax, [com_logfile]
	cmp dword [eax+0xc], 0x1
	jle Com_PrintMessage_110
	mov eax, [logfile]
	mov [esp], eax
	call FS_Flush
Com_PrintMessage_110:
	mov dword [ebp+0x8], 0x0
	jmp Com_PrintMessage_130
Com_PrintMessage_70:
	lea eax, [esi+0x2]
	cmp byte [esi+0x1], 0x0
	cmovnz esi, eax
	jmp Com_PrintMessage_140
Com_PrintMessage_100:
	mov dword [esp+0x8], 0x3
	mov [esp+0x4], edi
	mov dword [esp], 0x0
	call Con_IsChannelVisible
	test al, al
	jz Com_PrintMessage_80
	jmp Com_PrintMessage_90
Com_PrintMessage_60:
	shl ebx, 0x5
	mov [esp+0x14], ebx
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x0
	mov [esp+0x8], esi
	mov [esp+0x4], edi
	mov dword [esp], 0x0
	call CL_ConsolePrint
	jmp Com_PrintMessage_50
	add [eax], al


;Com_PrintWarning(int, char const*, ...)
Com_PrintWarning:
	push ebp
	mov ebp, esp
	push edi
	push ebx
	sub esp, 0x1020
	mov dword [esp+0x8], 0x1000
	mov dword [esp+0x4], _cstring_3
	lea ebx, [ebp-0x100c]
	mov [esp], ebx
	call Q_strncpyz
	mov edi, ebx
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	repne scasb
	not ecx
	sub ecx, 0x1
	lea eax, [ebp+0x10]
	mov [ebp-0xc], eax
	mov [esp+0xc], eax
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov eax, 0x1000
	sub eax, ecx
	mov [esp+0x4], eax
	lea ecx, [ebx+ecx]
	mov [esp], ecx
	call vsnprintf
	mov byte [ebp-0xd], 0x0
	mov dword [esp+0x8], 0x2
	mov [esp+0x4], ebx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Com_PrintMessage
	add esp, 0x1020
	pop ebx
	pop edi
	pop ebp
	ret
	add [eax], al


;Com_BeginRedirect(char*, unsigned int, void (*)(char*))
Com_BeginRedirect:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov ecx, [ebp+0x10]
	test eax, eax
	jz Com_BeginRedirect_10
	test edx, edx
	jz Com_BeginRedirect_10
	test ecx, ecx
	jz Com_BeginRedirect_10
	mov [rd_buffer], eax
	mov [rd_buffersize], edx
	mov [rd_flush], ecx
	mov byte [eax], 0x0
Com_BeginRedirect_10:
	pop ebp
	ret


;Com_ForceSafeMode()
Com_ForceSafeMode:
	push ebp
	mov ebp, esp
	mov dword [com_safemode], 0x1
	pop ebp
	ret
	nop


;Com_WriteConfig_f()
Com_WriteConfig_f:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x54
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x2
	jz Com_WriteConfig_f_10
	mov dword [esp+0x4], _cstring_usage_writeconfi
	mov dword [esp], 0x0
	call Com_Printf
	add esp, 0x54
	pop ebx
	pop ebp
	ret
Com_WriteConfig_f_10:
	mov dword [esp+0x8], 0x40
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x4]
	mov [esp+0x4], eax
	lea ebx, [ebp-0x48]
	mov [esp], ebx
	call Q_strncpyz
	mov dword [esp+0x8], _cstring_cfg
	mov dword [esp+0x4], 0x40
	mov [esp], ebx
	call Com_DefaultExtension
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_writing_s
	mov dword [esp], 0x0
	call Com_Printf
	mov edx, ebx
	xor eax, eax
	call Com_WriteConfigToFile
	add esp, 0x54
	pop ebx
	pop ebp
	ret


;Com_SetRecommended(int, int)
Com_SetRecommended:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1edc
	mov dword [esp+0x4], _cstring__autoconfigure
	mov dword [esp], 0x10
	call Com_Printf
	lea eax, [ebp-0x280]
	mov [esp], eax
	call Sys_GetInfo
	movsd xmm0, qword [_double_1_02000000]
	mulsd xmm0, [ebp-0x278]
	movsd [ebp-0x278], xmm0
	mov eax, [ebp-0x268]
	cmp eax, 0x7f
	jg Com_SetRecommended_10
	mov dword [ebp-0x268], 0x80
	lea eax, [ebp-0x20]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_configure_mpcsv
	call FS_ReadFile
	mov [ebp-0x1eb0], eax
	test eax, eax
	js Com_SetRecommended_20
Com_SetRecommended_230:
	mov eax, [ebp-0x20]
	mov [ebp-0x1c], eax
	mov dword [esp], _cstring_configure_mpcsv
	call Com_BeginParseSession
	mov dword [esp], 0x1
	call Com_SetCSV
	xor ebx, ebx
	mov byte [ebp-0x1ea9], 0x0
	xor edi, edi
	movsd xmm0, qword [_double__1_00000000]
	movsd [ebp-0x1ea0], xmm0
Com_SetRecommended_90:
	lea eax, [ebp-0x1c]
	mov [esp], eax
	call Com_Parse
	mov esi, eax
	movzx eax, byte [eax]
	test al, al
	jz Com_SetRecommended_30
Com_SetRecommended_80:
	cmp al, 0x23
	jz Com_SetRecommended_30
	mov dword [esp+0x4], _cstring_gpu
	mov [esp], esi
	call Q_stricmp
	test eax, eax
	jz Com_SetRecommended_40
	test ebx, ebx
	jnz Com_SetRecommended_50
	mov dword [esp+0x4], _cstring_cpu_ghz
	mov [esp], esi
	call Q_stricmp
	test eax, eax
	jnz Com_SetRecommended_60
Com_SetRecommended_170:
	lea eax, [ebp-0x1c]
	mov [esp], eax
	call Com_ParseOnLine
	mov dword [esp+0x4], _cstring_sys_mb
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jnz Com_SetRecommended_70
Com_SetRecommended_160:
	lea edx, [ebp-0x1680]
	lea eax, [ebp-0x1c]
	call Com_GetConfigureDvarNames
	mov ebx, eax
	lea eax, [ebp-0x1c]
	mov [esp], eax
	call Com_Parse
	mov esi, eax
	movzx eax, byte [eax]
	test al, al
	jnz Com_SetRecommended_80
Com_SetRecommended_30:
	lea edx, [ebp-0x1c]
	mov [esp], edx
	call Com_SkipRestOfLine
	jmp Com_SetRecommended_90
Com_SetRecommended_50:
	mov [esp], esi
	call atof
	fstp qword [ebp-0x1e98]
	movsd xmm0, qword [ebp-0x1e98]
	ucomisd xmm0, [_double_0_00000000]
	jb Com_SetRecommended_100
Com_SetRecommended_470:
	lea eax, [ebp-0x1c]
	mov [esp], eax
	call Com_ParseOnLine
	mov [esp], eax
	call atoi
	mov esi, eax
	cmp eax, 0x7f
	jle Com_SetRecommended_110
Com_SetRecommended_150:
	movsd xmm0, qword [ebp-0x278]
	ucomisd xmm0, [ebp-0x1e98]
	jb Com_SetRecommended_120
	cmp esi, [ebp-0x268]
	jg Com_SetRecommended_120
	movsd xmm0, qword [ebp-0x1e98]
	ucomisd xmm0, [ebp-0x1ea0]
	ja Com_SetRecommended_130
	movsd xmm0, qword [ebp-0x1ea0]
	ucomisd xmm0, [ebp-0x1e98]
	jz Com_SetRecommended_140
Com_SetRecommended_120:
	xor ecx, ecx
Com_SetRecommended_220:
	lea edx, [ebp-0x1c]
	mov eax, ebx
	call Com_GetConfigureDvarValues
	jmp Com_SetRecommended_90
Com_SetRecommended_110:
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_configure_mpcsv_6
	mov dword [esp], 0x1
	call Com_Error
	jmp Com_SetRecommended_150
Com_SetRecommended_70:
	mov dword [esp+0x4], _cstring_configure_mpcsv_7
	mov dword [esp], 0x1
	call Com_Error
	jmp Com_SetRecommended_160
Com_SetRecommended_60:
	mov dword [esp+0x4], _cstring_configure_mpcsv_8
	mov dword [esp], 0x1
	call Com_Error
	jmp Com_SetRecommended_170
Com_SetRecommended_40:
	call Com_UngetToken
	cmp byte [ebp-0x1ea9], 0x0
	jnz Com_SetRecommended_180
	lea edi, [ebp-0x280]
	mov [esp], edi
	call Sys_GetInfo
	mov eax, [ebp-0x268]
	mov [esp+0x10], eax
	movsd xmm0, qword [ebp-0x278]
	movsd [esp+0x8], xmm0
	mov dword [esp+0x4], _cstring_configure_mpcsv_9
	mov dword [esp], 0x1
	call Com_Error
Com_SetRecommended_480:
	lea eax, [ebp-0x1c]
	mov [esp], eax
	call Com_Parse
	mov dword [esp+0x4], _cstring_gpu
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jz Com_SetRecommended_190
	call Com_UngetToken
Com_SetRecommended_340:
	lea eax, [ebp-0x264]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_configure_mpcsv_10
	mov dword [esp], 0x1
	call Com_Error
Com_SetRecommended_330:
	call Com_EndParseSession
	mov ebx, [ebp-0x20]
	mov eax, [ebp-0x1eb0]
	test eax, eax
	jg Com_SetRecommended_200
	xor esi, esi
	mov [esp], ebx
	call FS_FreeFile
	lea eax, [esi+0x1]
	mov [esp], eax
	call Sys_ArchiveInfo
	mov eax, [ebp+0xc]
	test eax, eax
	jnz Com_SetRecommended_210
Com_SetRecommended_250:
	add esp, 0x1edc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Com_SetRecommended_140:
	jp Com_SetRecommended_120
	cmp esi, edi
	jle Com_SetRecommended_120
	movsd xmm0, qword [ebp-0x1e98]
Com_SetRecommended_130:
	mov [ebp-0x668], esi
	movsd [ebp-0x680], xmm0
	lea edx, [ebp-0xe80]
	lea eax, [ebp-0x680]
	mov dword [esp+0x8], 0x25c
	mov [esp+0x4], eax
	mov [esp], edx
	call memcpy
	mov edi, [ebp-0xe68]
	movsd xmm0, qword [ebp-0xe80]
	movsd [ebp-0x1ea0], xmm0
	lea ecx, [ebp-0x1e80]
	mov byte [ebp-0x1ea9], 0x1
	jmp Com_SetRecommended_220
Com_SetRecommended_10:
	add eax, 0x8
	mov [ebp-0x268], eax
	lea eax, [ebp-0x20]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_configure_mpcsv
	call FS_ReadFile
	mov [ebp-0x1eb0], eax
	test eax, eax
	jns Com_SetRecommended_230
Com_SetRecommended_20:
	mov dword [esp+0x4], _cstring_exe_err_not_foun
	mov dword [esp], 0x1
	call Com_Error
	jmp Com_SetRecommended_230
Com_SetRecommended_200:
	xor ecx, ecx
	xor edx, edx
Com_SetRecommended_240:
	mov eax, edx
	shl eax, 0x4
	sub eax, edx
	lea eax, [edx+eax*4]
	lea eax, [edx+eax*8]
	lea eax, [edx+eax*2]
	lea eax, [edx+eax*4]
	lea eax, [edx+eax*8]
	movsx edx, byte [ebx+ecx]
	lea edx, [eax+edx]
	add ecx, 0x1
	cmp [ebp-0x1eb0], ecx
	jnz Com_SetRecommended_240
	mov esi, edx
	and esi, 0xfffffff
	mov [esp], ebx
	call FS_FreeFile
	lea eax, [esi+0x1]
	mov [esp], eax
	call Sys_ArchiveInfo
	mov eax, [ebp+0xc]
	test eax, eax
	jz Com_SetRecommended_250
Com_SetRecommended_210:
	call Cvar_AnyLatchedValues
	test al, al
	jz Com_SetRecommended_250
	mov dword [esp+0x4], _cstring_snd_restart
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Cbuf_AddText
	add esp, 0x1edc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Com_SetRecommended_190:
	lea edx, [ebp-0x1680]
	lea eax, [ebp-0x1c]
	call Com_GetConfigureDvarNames
	mov [ebp-0x1ea8], eax
	mov byte [ebp-0x1ea1], 0x0
Com_SetRecommended_350:
	lea edx, [ebp-0x1c]
	mov [esp], edx
	call Com_Parse
	mov [ebp-0x1ebc], eax
	mov edx, [ebp-0x1c]
	test edx, edx
	jz Com_SetRecommended_260
Com_SetRecommended_320:
	movzx eax, byte [eax]
	test al, al
	jz Com_SetRecommended_270
	cmp al, 0x23
	jz Com_SetRecommended_270
	cmp byte [ebp-0x1ea1], 0x0
	jnz Com_SetRecommended_280
	mov byte [ebp-0x680], 0x2a
	mov edx, [ebp-0x1ebc]
	movzx eax, byte [edx]
	test al, al
	jnz Com_SetRecommended_290
	mov ebx, 0x1
	xor eax, eax
Com_SetRecommended_420:
	cmp byte [ebp+eax-0x680], 0x2a
	jz Com_SetRecommended_300
	mov byte [ebp+ebx-0x680], 0x2a
	add ebx, 0x1
Com_SetRecommended_300:
	mov byte [ebp+ebx-0x680], 0x0
	lea edx, [ebp-0x264]
	lea eax, [ebp-0x680]
	call Com_GpuStringCompare
	test eax, eax
	jz Com_SetRecommended_310
Com_SetRecommended_280:
	xor ecx, ecx
	lea edx, [ebp-0x1c]
	mov eax, [ebp-0x1ea8]
	call Com_GetConfigureDvarValues
	lea edx, [ebp-0x1c]
	mov [esp], edx
	call Com_Parse
	mov [ebp-0x1ebc], eax
	mov edx, [ebp-0x1c]
	test edx, edx
	jnz Com_SetRecommended_320
Com_SetRecommended_260:
	cmp byte [ebp-0x1ea1], 0x0
	jnz Com_SetRecommended_330
	jmp Com_SetRecommended_340
Com_SetRecommended_270:
	lea eax, [ebp-0x1c]
	mov [esp], eax
	call Com_SkipRestOfLine
	jmp Com_SetRecommended_350
Com_SetRecommended_290:
	mov esi, edx
	add esi, 0x1
	mov [ebp-0x1e8c], edx
	mov ebx, 0x1
	jmp Com_SetRecommended_360
Com_SetRecommended_400:
	mov edx, [ebp-0x1e8c]
	movzx eax, byte [edx]
	mov [ebp+ebx-0x680], al
	add ebx, 0x1
	cmp ebx, 0x3ff
	jz Com_SetRecommended_370
Com_SetRecommended_410:
	mov [ebp-0x1e8c], esi
	movzx eax, byte [esi]
	add esi, 0x1
	test al, al
	jz Com_SetRecommended_380
Com_SetRecommended_360:
	movsx edx, al
	test edx, 0xffffff80
	jnz Com_SetRecommended_390
	mov eax, [0xd5cc084]
	mov eax, [eax+edx*4+0x34]
	shr eax, 0xe
	and eax, 0x1
Com_SetRecommended_430:
	test eax, eax
	jz Com_SetRecommended_400
	cmp byte [ebp+ebx-0x681], 0x20
	jz Com_SetRecommended_410
	mov byte [ebp+ebx-0x680], 0x20
	add ebx, 0x1
	cmp ebx, 0x3ff
	jnz Com_SetRecommended_410
Com_SetRecommended_370:
	mov dword [esp+0x4], _cstring_configure_mpcsv_11
	mov dword [esp], 0x1
	call Com_Error
	mov [ebp-0x1e8c], esi
	movzx eax, byte [esi]
	add esi, 0x1
	test al, al
	jnz Com_SetRecommended_360
Com_SetRecommended_380:
	lea eax, [ebx-0x1]
	jmp Com_SetRecommended_420
Com_SetRecommended_390:
	mov dword [esp+0x4], 0x4000
	mov [esp], edx
	call __maskrune
	test eax, eax
	setnz al
	movzx eax, al
	jmp Com_SetRecommended_430
Com_SetRecommended_310:
	mov edi, [ebp-0x1ebc]
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_configure_mpcsv_12
	mov dword [esp], 0x10
	call Com_Printf
	mov ebx, _cstring_radeon_x16
	mov ecx, 0xc
	cld
	mov esi, [ebp-0x1ebc]
	mov edi, ebx
	repe cmpsb
	mov edx, 0x0
	jz Com_SetRecommended_440
	movzx edx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub edx, ecx
Com_SetRecommended_440:
	test edx, edx
	jnz Com_SetRecommended_450
Com_SetRecommended_500:
	mov ebx, 0x1
Com_SetRecommended_510:
	lea ecx, [ebp-0xe80]
	lea edx, [ebp-0x1c]
	mov eax, [ebp-0x1ea8]
	call Com_GetConfigureDvarValues
	test bl, bl
	jnz Com_SetRecommended_460
Com_SetRecommended_520:
	lea ecx, [ebp-0xe80]
	lea edx, [ebp-0x1680]
	mov eax, [ebp-0x1ea8]
	call Com_SetConfigureDvars
	mov byte [ebp-0x1ea1], 0x1
	jmp Com_SetRecommended_350
Com_SetRecommended_100:
	jp Com_SetRecommended_470
	movsd [esp+0x8], xmm0
	mov dword [esp+0x4], _cstring_configure_mpcsv_13
	mov dword [esp], 0x1
	call Com_Error
	jmp Com_SetRecommended_470
Com_SetRecommended_180:
	mov [esp+0x10], edi
	movsd xmm0, qword [ebp-0x1ea0]
	movsd [esp+0x8], xmm0
	mov dword [esp+0x4], _cstring_configure_mpcsv_14
	mov dword [esp], 0x10
	call Com_Printf
	mov dword [esp+0x4], _cstring_exec_configure_m
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Cbuf_AddText
	mov dword [esp+0x4], 0x0
	mov edx, [ebp+0x8]
	mov [esp], edx
	call Cbuf_Execute
	lea ecx, [ebp-0x1e80]
	lea edx, [ebp-0x1680]
	mov eax, ebx
	call Com_SetConfigureDvars
	jmp Com_SetRecommended_480
Com_SetRecommended_450:
	mov ebx, _cstring_geforce_73
	mov ecx, 0xc
	mov esi, [ebp-0x1ebc]
	mov edi, ebx
	repe cmpsb
	mov edx, 0x0
	jz Com_SetRecommended_490
	movzx edx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub edx, ecx
Com_SetRecommended_490:
	test edx, edx
	jz Com_SetRecommended_500
	xor ebx, ebx
	jmp Com_SetRecommended_510
Com_SetRecommended_460:
	mov dword [ebp-0xe60], 0x78303038
	mov dword [ebp-0xe5c], _cstring_lue_returnvaluec
	jmp Com_SetRecommended_520


;Com_ShutdownEvents()
Com_ShutdownEvents:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop


;Com_SetErrorMessage(char const*)
Com_SetErrorMessage:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	cmp dword [errorcode], 0x3
	jz Com_SetErrorMessage_10
	mov eax, [noticeErrors]
	cmp byte [eax], 0x0
	jnz Com_SetErrorMessage_20
Com_SetErrorMessage_40:
	mov ebx, _cstring_menu_error
Com_SetErrorMessage_50:
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], _cstring_error_message
	mov [esp], esi
	call SEH_LocalizeTextMessage
	test eax, eax
	cmovz eax, esi
	mov [esp+0x4], ebx
	mov [esp], eax
	call Com_SetLocalizedErrorMessage
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
Com_SetErrorMessage_20:
	mov ebx, noticeErrors
Com_SetErrorMessage_30:
	mov [esp+0x4], esi
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jz Com_SetErrorMessage_10
	mov eax, [ebx+0x4]
	add ebx, 0x4
	cmp byte [eax], 0x0
	jnz Com_SetErrorMessage_30
	jmp Com_SetErrorMessage_40
Com_SetErrorMessage_10:
	mov ebx, _cstring_menu_notice
	jmp Com_SetErrorMessage_50


;Com_StartupVariable(char const*)
Com_StartupVariable:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov ebx, [com_numConsoleLines]
	test ebx, ebx
	jg Com_StartupVariable_10
Com_StartupVariable_30:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Com_StartupVariable_10:
	xor edi, edi
	mov esi, com_consoleLines
	jmp Com_StartupVariable_20
Com_StartupVariable_60:
	call Cmd_EndTokenizedString
	add edi, 0x1
	add esi, 0x4
	cmp edi, [com_numConsoleLines]
	jge Com_StartupVariable_30
Com_StartupVariable_20:
	mov eax, [esi]
	mov [esp], eax
	call Cmd_TokenizeString
	mov ecx, [ebp+0x8]
	test ecx, ecx
	jz Com_StartupVariable_40
	mov ebx, cmd_args
	mov eax, [ebx]
	cmp dword [ebx+eax*4+0x44], 0x1
	jle Com_StartupVariable_50
	mov eax, [ebx+eax*4+0x64]
	mov eax, [eax+0x4]
Com_StartupVariable_120:
	mov edx, [ebp+0x8]
	mov [esp+0x4], edx
	mov [esp], eax
	call strcmp
	test eax, eax
	jnz Com_StartupVariable_60
	mov eax, [ebx]
	mov edx, [ebx+eax*4+0x44]
	test edx, edx
	jle Com_StartupVariable_70
Com_StartupVariable_100:
	mov eax, [ebx+eax*4+0x64]
	mov eax, [eax]
	mov dword [esp+0x4], _cstring_set
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jz Com_StartupVariable_80
Com_StartupVariable_110:
	mov edx, cmd_args
	mov eax, [edx]
	mov ebx, [edx+eax*4+0x44]
	test ebx, ebx
	jle Com_StartupVariable_90
	mov eax, [edx+eax*4+0x64]
	mov eax, [eax]
Com_StartupVariable_130:
	mov dword [esp+0x4], _cstring_seta
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jnz Com_StartupVariable_60
	call Cvar_SetA_f
	jmp Com_StartupVariable_60
Com_StartupVariable_40:
	mov ebx, cmd_args
	mov eax, [ebx]
	mov edx, [ebx+eax*4+0x44]
	test edx, edx
	jg Com_StartupVariable_100
Com_StartupVariable_70:
	mov eax, _cstring_null
	mov dword [esp+0x4], _cstring_set
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jnz Com_StartupVariable_110
Com_StartupVariable_80:
	call Cvar_Set_f
	jmp Com_StartupVariable_60
Com_StartupVariable_50:
	mov eax, _cstring_null
	jmp Com_StartupVariable_120
Com_StartupVariable_90:
	mov eax, _cstring_null
	jmp Com_StartupVariable_130
	nop


;Com_WriteDefaults_f()
Com_WriteDefaults_f:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x50
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x2
	jz Com_WriteDefaults_f_10
	mov dword [esp+0x4], _cstring_usage_writedefau
	mov dword [esp], 0x0
	call Com_Printf
	add esp, 0x50
	pop ebx
	pop esi
	pop ebp
	ret
Com_WriteDefaults_f_10:
	mov dword [esp+0x8], 0x40
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x4]
	mov [esp+0x4], eax
	lea esi, [ebp-0x48]
	mov [esp], esi
	call Q_strncpyz
	mov dword [esp+0x8], _cstring_cfg
	mov dword [esp+0x4], 0x40
	mov [esp], esi
	call Com_DefaultExtension
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_writing_s
	mov dword [esp], 0x0
	call Com_Printf
	mov [esp], esi
	call FS_FOpenFileWrite
	mov ebx, eax
	test eax, eax
	jnz Com_WriteDefaults_f_20
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_couldnt_write_s
	mov dword [esp], 0x10
	call Com_Printf
	add esp, 0x50
	pop ebx
	pop esi
	pop ebp
	ret
Com_WriteDefaults_f_20:
	mov dword [esp+0x4], _cstring__generated_by_ca
	mov [esp], eax
	call FS_Printf
	mov [esp], ebx
	call Cvar_WriteDefaults
	mov [esp], ebx
	call FS_FCloseFile
	add esp, 0x50
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;Com_ClientPacketEvent()
Com_ClientPacketEvent:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x9c
	mov dword [esp+0x8], 0x20000
	mov dword [esp+0x4], clientCommonMsgBuf
	lea eax, [ebp-0x70]
	mov [esp], eax
	call MSG_Init
	lea esi, [ebp-0x48]
	jmp Com_ClientPacketEvent_10
Com_ClientPacketEvent_20:
	call Sys_Milliseconds
	mov ebx, [ebp-0x48]
	mov [ebp-0x30], ebx
	mov ecx, [ebp-0x44]
	mov [ebp-0x2c], ecx
	mov edx, [ebp-0x40]
	mov [ebp-0x28], edx
	mov [esp+0x14], eax
	lea eax, [ebp-0x70]
	mov [esp+0x10], eax
	mov [esp+0x4], ebx
	mov [esp+0x8], ecx
	mov [esp+0xc], edx
	mov dword [esp], 0x0
	call CL_PacketEvent
Com_ClientPacketEvent_10:
	lea edx, [ebp-0x70]
	mov [esp+0x8], edx
	mov [esp+0x4], esi
	mov dword [esp], 0x0
	call NET_GetLoopPacket
	test eax, eax
	jnz Com_ClientPacketEvent_20
	mov eax, [com_sv_running]
	cmp byte [eax+0xc], 0x0
	jz Com_ClientPacketEvent_30
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Com_ClientPacketEvent_40:
	movzx esi, word [ebp-0x34]
	movzx edi, byte [ebp-0x35]
	movzx eax, byte [ebp-0x36]
	mov [ebp-0x79], al
	movzx edx, byte [ebp-0x37]
	mov [ebp-0x7a], dl
	movzx eax, byte [ebp-0x38]
	mov [ebp-0x7b], al
	mov ebx, [ebp-0x3c]
	call Sys_Milliseconds
	mov [ebp-0x1c], si
	mov edx, edi
	mov [ebp-0x1d], dl
	movzx edx, byte [ebp-0x79]
	mov [ebp-0x1e], dl
	movzx edx, byte [ebp-0x7a]
	mov [ebp-0x1f], dl
	movzx edx, byte [ebp-0x7b]
	mov [ebp-0x20], dl
	mov [ebp-0x24], ebx
	mov [esp+0x14], eax
	lea eax, [ebp-0x70]
	mov [esp+0x10], eax
	mov [esp+0x4], ebx
	mov eax, [ebp-0x20]
	mov [esp+0x8], eax
	mov eax, [ebp-0x1c]
	mov [esp+0xc], eax
	mov dword [esp], 0x0
	call CL_PacketEvent
Com_ClientPacketEvent_30:
	lea edx, [ebp-0x70]
	mov [esp+0x4], edx
	lea eax, [ebp-0x3c]
	mov [esp], eax
	call NET_GetClientPacket
	test eax, eax
	jnz Com_ClientPacketEvent_40
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Com_ServerPacketEvent()
Com_ServerPacketEvent:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x60
	mov dword [esp+0x8], 0x20000
	mov dword [esp+0x4], serverCommonMsgBuf
	lea ebx, [ebp-0x54]
	mov [esp], ebx
	call MSG_Init
	mov eax, [com_sv_running]
	cmp byte [eax+0xc], 0x0
	jnz Com_ServerPacketEvent_10
	lea esi, [ebp-0x2c]
Com_ServerPacketEvent_30:
	mov [esp+0x8], ebx
	mov [esp+0x4], esi
	mov dword [esp], 0x1
	call NET_GetLoopPacket
	test eax, eax
	jz Com_ServerPacketEvent_20
Com_ServerPacketEvent_40:
	mov eax, [com_sv_running]
	cmp byte [eax+0xc], 0x0
	jz Com_ServerPacketEvent_30
	mov ecx, [ebp-0x2c]
	mov [ebp-0x14], ecx
	mov edx, [ebp-0x28]
	mov [ebp-0x10], edx
	mov eax, [ebp-0x24]
	mov [ebp-0xc], eax
	mov [esp+0xc], ebx
	mov [esp], ecx
	mov [esp+0x4], edx
	mov [esp+0x8], eax
	call SV_PacketEvent
	mov [esp+0x8], ebx
	mov [esp+0x4], esi
	mov dword [esp], 0x1
	call NET_GetLoopPacket
	test eax, eax
	jnz Com_ServerPacketEvent_40
Com_ServerPacketEvent_20:
	add esp, 0x60
	pop ebx
	pop esi
	pop ebp
	ret
Com_ServerPacketEvent_10:
	lea esi, [ebp-0x2c]
	jmp Com_ServerPacketEvent_50
Com_ServerPacketEvent_60:
	mov ecx, [ebp-0x2c]
	mov [ebp-0x20], ecx
	mov edx, [ebp-0x28]
	mov [ebp-0x1c], edx
	mov eax, [ebp-0x24]
	mov [ebp-0x18], eax
	mov [esp+0xc], ebx
	mov [esp], ecx
	mov [esp+0x4], edx
	mov [esp+0x8], eax
	call SV_PacketEvent
Com_ServerPacketEvent_50:
	mov [esp+0x4], ebx
	mov [esp], esi
	call NET_GetServerPacket
	test eax, eax
	jnz Com_ServerPacketEvent_60
	jmp Com_ServerPacketEvent_30
	nop


;Com_ExecStartupConfigs(int, char const*)
Com_ExecStartupConfigs:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov dword [esp+0x4], _cstring_exec_default_mpc
	mov [esp], ebx
	call Cbuf_AddText
	mov dword [esp+0x4], _cstring_exec_languagecfg
	mov [esp], ebx
	call Cbuf_AddText
	test esi, esi
	jz Com_ExecStartupConfigs_10
	mov [esp+0x4], esi
	mov dword [esp], _cstring_exec_s
	call va
	mov [esp+0x4], eax
	mov [esp], ebx
	call Cbuf_AddText
Com_ExecStartupConfigs_10:
	mov [esp], ebx
	call CL_ControllerIndexFromClientNum
	mov [esp+0x4], eax
	mov [esp], ebx
	call Cbuf_Execute
	mov [esp], ebx
	call CL_ControllerIndexFromClientNum
	mov dword [esp], 0x1
	call Cvar_SetInAutoExec
	mov dword [esp], 0x0
	call Cvar_SetInAutoExec
	call Com_SafeMode
	test eax, eax
	jz Com_ExecStartupConfigs_20
	mov dword [esp+0x4], _cstring_exec_safemode_mp
	mov [esp], ebx
	call Cbuf_AddText
Com_ExecStartupConfigs_20:
	mov [esp], ebx
	call CL_ControllerIndexFromClientNum
	mov [ebp+0xc], eax
	mov [ebp+0x8], ebx
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp Cbuf_Execute


;Com_GetTimescaleForSnd()
Com_GetTimescaleForSnd:
	push ebp
	mov ebp, esp
	sub esp, 0x4
	mov eax, [com_fixedtime]
	mov eax, [eax+0xc]
	test eax, eax
	jz Com_GetTimescaleForSnd_10
	cvtsi2ss xmm0, eax
	movss [ebp-0x4], xmm0
	fld dword [ebp-0x4]
	leave
	ret
Com_GetTimescaleForSnd_10:
	mov eax, [com_timescale]
	movss xmm0, dword [eax+0xc]
	mov eax, [dev_timescale]
	mulss xmm0, [eax+0xc]
	movss [ebp-0x4], xmm0
	fld dword [ebp-0x4]
	leave
	ret
	add [eax], al


;Com_CheckSetRecommended(int)
Com_CheckSetRecommended:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edi, [ebp+0x8]
	mov eax, [com_recommendedSet]
	cmp byte [eax+0xc], 0x0
	jz Com_CheckSetRecommended_10
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_configure_mpcsv
	call FS_ReadFile
	mov ebx, eax
	test eax, eax
	js Com_CheckSetRecommended_20
Com_CheckSetRecommended_70:
	mov esi, [ebp-0x1c]
	test ebx, ebx
	jle Com_CheckSetRecommended_30
	xor ecx, ecx
	xor edx, edx
Com_CheckSetRecommended_40:
	mov eax, edx
	shl eax, 0x4
	sub eax, edx
	lea eax, [edx+eax*4]
	lea eax, [edx+eax*8]
	lea eax, [edx+eax*2]
	lea eax, [edx+eax*4]
	lea eax, [edx+eax*8]
	movsx edx, byte [esi+ecx]
	lea edx, [eax+edx]
	add ecx, 0x1
	cmp ebx, ecx
	jnz Com_CheckSetRecommended_40
	mov ebx, edx
	and ebx, 0xfffffff
	mov [esp], esi
	call FS_FreeFile
	lea eax, [ebx+0x1]
	mov [esp], eax
	call Sys_HasConfigureChecksumChanged
	test al, al
	jz Com_CheckSetRecommended_50
Com_CheckSetRecommended_10:
	mov dword [esp+0x4], 0x0
	mov [esp], edi
	call Com_SetRecommended
	mov dword [esp+0x4], 0x1
	mov eax, [com_recommendedSet]
	mov [esp], eax
	call Cvar_SetBool
Com_CheckSetRecommended_50:
	call Sys_HasInfoChanged
	test al, al
	jz Com_CheckSetRecommended_60
	mov dword [esp+0x4], 0x0
	mov [esp], edi
	call Com_SetRecommended
Com_CheckSetRecommended_60:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Com_CheckSetRecommended_30:
	xor ebx, ebx
	mov [esp], esi
	call FS_FreeFile
	lea eax, [ebx+0x1]
	mov [esp], eax
	call Sys_HasConfigureChecksumChanged
	test al, al
	jz Com_CheckSetRecommended_50
	jmp Com_CheckSetRecommended_10
Com_CheckSetRecommended_20:
	mov dword [esp+0x4], _cstring_exe_err_not_foun
	mov dword [esp], 0x1
	call Com_Error
	jmp Com_CheckSetRecommended_70


;Com_GetDecimalDelimiter()
Com_GetDecimalDelimiter:
	push ebp
	mov ebp, esp
	mov eax, loc_language
	mov eax, [eax]
	mov edx, [eax+0xc]
	lea eax, [edx-0x1]
	cmp eax, 0x3
	jbe Com_GetDecimalDelimiter_10
	cmp edx, 0x6
	jz Com_GetDecimalDelimiter_10
	cmp edx, 0x7
	jz Com_GetDecimalDelimiter_10
	cmp edx, 0xe
	jz Com_GetDecimalDelimiter_10
	mov eax, 0x2e
	pop ebp
	ret
Com_GetDecimalDelimiter_10:
	mov eax, 0x2c
	pop ebp
	ret


;Com_SetWeaponInfoMemory(int)
Com_SetWeaponInfoMemory:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov [weaponInfoSource], eax
	pop ebp
	ret
	nop


;Com_FreeWeaponInfoMemory(int)
Com_FreeWeaponInfoMemory:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	cmp [weaponInfoSource], eax
	jz Com_FreeWeaponInfoMemory_10
	pop ebp
	ret
Com_FreeWeaponInfoMemory_10:
	mov dword [weaponInfoSource], 0x0
	pop ebp
	jmp BG_ShutdownWeaponDefFiles


;Com_LocalizedFloatToString(float, char*, unsigned int, unsigned int)
Com_LocalizedFloatToString:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x20
	mov esi, [ebp+0xc]
	mov ebx, [ebp+0x10]
	cvtss2sd xmm0, [ebp+0x8]
	movsd [esp+0x10], xmm0
	mov eax, [ebp+0x14]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_f
	lea eax, [ebx-0x1]
	mov [esp+0x4], eax
	mov [esp], esi
	call snprintf
	mov byte [esi+ebx-0x1], 0x0
	mov eax, loc_language
	mov eax, [eax]
	mov edx, [eax+0xc]
	lea eax, [edx-0x1]
	cmp eax, 0x3
	jbe Com_LocalizedFloatToString_10
	cmp edx, 0x6
	jz Com_LocalizedFloatToString_10
	cmp edx, 0x7
	jz Com_LocalizedFloatToString_10
	cmp edx, 0xe
	jz Com_LocalizedFloatToString_10
Com_LocalizedFloatToString_20:
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
Com_LocalizedFloatToString_10:
	test ebx, ebx
	jz Com_LocalizedFloatToString_20
	cmp byte [esi], 0x2e
	jz Com_LocalizedFloatToString_30
	xor edx, edx
Com_LocalizedFloatToString_40:
	add edx, 0x1
	cmp ebx, edx
	jz Com_LocalizedFloatToString_20
	lea eax, [esi+edx]
	cmp byte [eax], 0x2e
	jnz Com_LocalizedFloatToString_40
	mov byte [eax], 0x2c
Com_LocalizedFloatToString_50:
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
Com_LocalizedFloatToString_30:
	mov eax, esi
	mov byte [eax], 0x2c
	jmp Com_LocalizedFloatToString_50
	nop


;Com_Frame_Try_Block_Function()
Com_Frame_Try_Block_Function:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x7c
	mov edi, [com_fullyInitialized]
	test edi, edi
	jz Com_Frame_Try_Block_Function_10
	mov edx, dvar_modifiedFlags
	mov eax, [edx]
	test al, 0x1
	jnz Com_Frame_Try_Block_Function_20
Com_Frame_Try_Block_Function_10:
	mov eax, [com_animCheck]
	movzx eax, byte [eax+0xc]
	mov [esp], eax
	call SetAnimCheck
	mov eax, [com_maxfps]
	mov edx, [eax+0xc]
	test edx, edx
	jle Com_Frame_Try_Block_Function_30
	mov eax, com_dedicated
	mov eax, [eax]
	mov esi, [eax+0xc]
	test esi, esi
	jz Com_Frame_Try_Block_Function_40
Com_Frame_Try_Block_Function_30:
	mov esi, 0x1
Com_Frame_Try_Block_Function_340:
	call Win_UpdateThreadLock
	add dword [com_lastFrameIndex], 0x1
	mov eax, com_dedicated
	mov eax, [eax]
	mov ebx, [eax+0xc]
	test ebx, ebx
	jnz Com_Frame_Try_Block_Function_50
	mov dword [esp+0x4], _cstring_progress_time_sp
	mov dword [esp], 0xffffffff
	call PIXBeginNamedEvent
	jmp Com_Frame_Try_Block_Function_60
Com_Frame_Try_Block_Function_80:
	mov ebx, eax
	sub ebx, edx
	test ebx, ebx
	jg Com_Frame_Try_Block_Function_70
Com_Frame_Try_Block_Function_90:
	mov dword [esp], 0x1
	call Sys_Sleep
Com_Frame_Try_Block_Function_60:
	call Com_EventLoop
	call Sys_Milliseconds
	mov [com_frameTime], eax
	mov edx, [com_lastFrameTime]
	cmp eax, edx
	jns Com_Frame_Try_Block_Function_80
	mov edx, eax
	mov [com_lastFrameTime], eax
	mov ebx, eax
	sub ebx, edx
	test ebx, ebx
	jle Com_Frame_Try_Block_Function_90
Com_Frame_Try_Block_Function_70:
	cmp esi, ebx
	cmovg ebx, esi
	lea eax, [ebx+edx]
	mov [com_lastFrameTime], eax
	test ebx, ebx
	mov eax, 0x1
	cmovz ebx, eax
	jmp Com_Frame_Try_Block_Function_100
Com_Frame_Try_Block_Function_120:
	mov edx, eax
	mov [com_lastFrameTime], eax
	mov ebx, eax
	sub ebx, edx
	cmp esi, ebx
	jle Com_Frame_Try_Block_Function_110
Com_Frame_Try_Block_Function_130:
	mov dword [esp], 0x1
	call Sys_Sleep
Com_Frame_Try_Block_Function_50:
	call Com_EventLoop
	call Sys_Milliseconds
	mov [com_frameTime], eax
	mov edx, [com_lastFrameTime]
	cmp eax, edx
	js Com_Frame_Try_Block_Function_120
	mov ebx, eax
	sub ebx, edx
	cmp esi, ebx
	jg Com_Frame_Try_Block_Function_130
Com_Frame_Try_Block_Function_110:
	mov [com_lastFrameTime], eax
Com_Frame_Try_Block_Function_100:
	mov dword [esp], 0x0
	call CL_ControllerIndexFromClientNum
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Cbuf_Execute
	mov eax, [com_fixedtime]
	mov esi, [eax+0xc]
	test esi, esi
	jnz Com_Frame_Try_Block_Function_140
	mov eax, [com_timescale]
	movss xmm1, dword [eax+0xc]
	movss xmm0, dword [_float_1_00000000]
	ucomiss xmm1, xmm0
	jnz Com_Frame_Try_Block_Function_150
	jp Com_Frame_Try_Block_Function_150
	ucomiss xmm0, [com_codeTimeScale]
	jnz Com_Frame_Try_Block_Function_150
	jp Com_Frame_Try_Block_Function_150
	mov eax, [dev_timescale]
	ucomiss xmm0, [eax+0xc]
	jnz Com_Frame_Try_Block_Function_160
	jp Com_Frame_Try_Block_Function_160
	mov esi, ebx
	xor edi, edi
	jmp Com_Frame_Try_Block_Function_170
Com_Frame_Try_Block_Function_150:
	mov eax, [dev_timescale]
Com_Frame_Try_Block_Function_160:
	cvtsi2ss xmm0, ebx
	mulss xmm1, xmm0
	mulss xmm1, [com_codeTimeScale]
	mulss xmm1, [eax+0xc]
	addss xmm1, [_float_0_50000000]
	movss [esp], xmm1
	call floorf
	fstp dword [ebp-0x5c]
	cvttss2si esi, [ebp-0x5c]
Com_Frame_Try_Block_Function_140:
	mov edi, 0x1
Com_Frame_Try_Block_Function_170:
	test esi, esi
	mov eax, 0x1
	cmovle esi, eax
	mov eax, com_dedicated
	mov eax, [eax]
	mov ecx, [eax+0xc]
	test ecx, ecx
	jz Com_Frame_Try_Block_Function_180
	lea eax, [esi-0x1f5]
	cmp eax, 0x79f2a
	jbe Com_Frame_Try_Block_Function_190
Com_Frame_Try_Block_Function_320:
	mov eax, 0x1388
Com_Frame_Try_Block_Function_330:
	cmp esi, eax
	cmovle eax, esi
	mov edx, edi
	test dl, dl
	jz Com_Frame_Try_Block_Function_200
	test ebx, ebx
	jnz Com_Frame_Try_Block_Function_210
Com_Frame_Try_Block_Function_200:
	movss xmm1, dword [_float_1_00000000]
Com_Frame_Try_Block_Function_350:
	movss [com_timescaleValue], xmm1
	mov [esp], eax
	call SV_Frame
	mov esi, eax
	mov ebx, com_dedicated
	mov edx, [ebx]
	test byte [edx+0x8], 0x40
	jnz Com_Frame_Try_Block_Function_220
	mov eax, [edx+0x1c]
	cmp eax, [edx+0xc]
	jz Com_Frame_Try_Block_Function_230
	mov dword [esp+0x10], _cstring_true_if_this_is_
	mov dword [esp+0xc], 0x20
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], g_dedicatedEnumNames
	mov dword [esp], _cstring_dedicated
	call Cvar_RegisterEnum
	mov [ebx], eax
	mov edx, [eax+0xc]
	test edx, edx
	jnz Com_Frame_Try_Block_Function_240
Com_Frame_Try_Block_Function_360:
	mov [esp], eax
	call Cvar_ClearModified
	mov dword [esp], 0x0
	call CL_Shutdown
	call CL_ShutdownRef
	call CL_InitDedicated
	call SV_AddDedicatedCommands
Com_Frame_Try_Block_Function_230:
	mov eax, [ebx]
	mov eax, [eax+0xc]
	test eax, eax
	jz Com_Frame_Try_Block_Function_250
Com_Frame_Try_Block_Function_260:
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Com_Frame_Try_Block_Function_220:
	mov eax, edx
	mov eax, [eax+0xc]
	test eax, eax
	jnz Com_Frame_Try_Block_Function_260
Com_Frame_Try_Block_Function_250:
	mov eax, [com_lastFrameTime]
	mov [esp], eax
	call R_SetEndTime
	mov dword [esp+0x4], _cstring_pre_frame
	mov dword [esp], 0xffffffff
	call PIXBeginNamedEvent
	mov [esp+0x4], esi
	mov dword [esp], 0x0
	call CL_RunOncePerClientFrame
	call Com_EventLoop
	mov dword [esp], 0x0
	call CL_ControllerIndexFromClientNum
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Cbuf_Execute
	mov dword [esp+0x4], _cstring_cl_frame
	mov dword [esp], 0xffffffff
	call PIXBeginNamedEvent
	mov [esp+0x4], esi
	mov dword [esp], 0x0
	call CL_Frame
	mov eax, dvar_modifiedFlags
	and dword [eax], 0xfffffffd
	mov eax, clientUIActives
	mov ebx, [eax+0xc]
	mov dword [esp], 0x0
	call UI_IsFullscreen
	test eax, eax
	jnz Com_Frame_Try_Block_Function_270
	test ebx, ebx
	jz Com_Frame_Try_Block_Function_280
Com_Frame_Try_Block_Function_270:
	call SCR_UpdateScreen
	mov [esp], esi
	call Ragdoll_Update
	call SCR_UpdateRumble
	mov eax, [com_statmon]
	cmp byte [eax+0xc], 0x0
	jz Com_Frame_Try_Block_Function_290
	mov ebx, com_fileAccessed
	mov eax, [ebx]
	test eax, eax
	jnz Com_Frame_Try_Block_Function_300
Com_Frame_Try_Block_Function_370:
	mov ebx, [_ZZ11Com_StatmonvE15timeClientFrame]
	call Sys_Milliseconds
	mov edx, eax
	mov [_ZZ11Com_StatmonvE15timeClientFrame], eax
	mov eax, [com_statmon]
	cmp byte [eax+0xc], 0x0
	jz Com_Frame_Try_Block_Function_290
	sub edx, ebx
	cmp edx, 0x21
	jle Com_Frame_Try_Block_Function_290
	test ebx, ebx
	jnz Com_Frame_Try_Block_Function_310
Com_Frame_Try_Block_Function_290:
	call R_WaitEndTime
Com_Frame_Try_Block_Function_380:
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Com_Frame_Try_Block_Function_180:
	mov eax, [com_sv_running]
	cmp byte [eax+0xc], 0x0
	jz Com_Frame_Try_Block_Function_320
	mov eax, [com_maxFrameTime]
	mov eax, [eax+0xc]
	jmp Com_Frame_Try_Block_Function_330
Com_Frame_Try_Block_Function_40:
	mov ecx, 0x3e8
	mov eax, ecx
	mov ebx, edx
	cdq
	idiv ebx
	mov esi, eax
	test eax, eax
	jnz Com_Frame_Try_Block_Function_340
	jmp Com_Frame_Try_Block_Function_30
Com_Frame_Try_Block_Function_210:
	cvtsi2ss xmm1, eax
	cvtsi2ss xmm0, ebx
	divss xmm1, xmm0
	jmp Com_Frame_Try_Block_Function_350
Com_Frame_Try_Block_Function_190:
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_hitch_warning_i_
	mov dword [esp], 0x10
	call Com_PrintWarning
	mov eax, 0x1388
	jmp Com_Frame_Try_Block_Function_330
Com_Frame_Try_Block_Function_20:
	and eax, 0xfffffffe
	mov [edx], eax
	call Com_HasPlayerProfile
	test al, al
	jz Com_Frame_Try_Block_Function_10
	mov dword [esp+0x8], _cstring_config_mpcfg
	mov dword [esp+0x4], 0x40
	lea ebx, [ebp-0x58]
	mov [esp], ebx
	call Com_BuildPlayerProfilePath
	mov edx, ebx
	xor eax, eax
	call Com_WriteConfigToFile
	jmp Com_Frame_Try_Block_Function_10
Com_Frame_Try_Block_Function_240:
	mov dword [esp+0x10], _cstring_true_if_this_is_
	mov dword [esp+0xc], 0x40
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], g_dedicatedEnumNames
	mov dword [esp], _cstring_dedicated
	call Cvar_RegisterEnum
	mov eax, [ebx]
	jmp Com_Frame_Try_Block_Function_360
Com_Frame_Try_Block_Function_300:
	mov dword [esp+0x8], _cstring_code_warning_fil
	mov dword [esp+0x4], 0xbb8
	mov dword [esp], 0x1
	call StatMon_Warning
	mov dword [ebx], 0x0
	jmp Com_Frame_Try_Block_Function_370
Com_Frame_Try_Block_Function_280:
	call UI_GetMenuScreen
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call UI_SetActiveMenu
	jmp Com_Frame_Try_Block_Function_270
Com_Frame_Try_Block_Function_310:
	mov dword [esp+0x8], _cstring_code_warning_fps
	mov dword [esp+0x4], 0xbb8
	mov dword [esp], 0x0
	call StatMon_Warning
	call R_WaitEndTime
	jmp Com_Frame_Try_Block_Function_380
	nop


;Com_SetLocalizedErrorMessage(char const*, char const*)
Com_SetLocalizedErrorMessage:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov dword [esp+0xc], _cstring_most_recent_erro
	mov dword [esp+0x8], 0x40
	mov dword [esp+0x4], _cstring_null
	mov dword [esp], _cstring_com_errormessage
	call Cvar_RegisterString
	mov [ui_errorMessage], eax
	mov dword [esp+0xc], _cstring_title_of_the_mos
	mov dword [esp+0x8], 0x40
	mov dword [esp+0x4], _cstring_null
	mov dword [esp], _cstring_com_errortitle
	call Cvar_RegisterString
	mov [ui_errorTitle], eax
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], _cstring_error_message
	mov eax, [ebp+0xc]
	mov [esp], eax
	call SEH_LocalizeTextMessage
	test eax, eax
	jz Com_SetLocalizedErrorMessage_10
	mov [esp+0x4], eax
	mov eax, [ui_errorTitle]
	mov [esp], eax
	call Cvar_SetString
Com_SetLocalizedErrorMessage_20:
	mov [esp+0x4], ebx
	mov eax, [ui_errorMessage]
	mov [esp], eax
	call Cvar_SetString
	mov dword [esp+0x8], 0x1000
	mov [esp+0x4], ebx
	mov dword [esp], com_errorMessage
	call Q_strncpyz
	add esp, 0x14
	pop ebx
	pop ebp
	ret
Com_SetLocalizedErrorMessage_10:
	mov dword [esp+0x4], _cstring_null
	mov eax, [ui_errorTitle]
	mov [esp], eax
	call Cvar_SetString
	jmp Com_SetLocalizedErrorMessage_20


;Com_Init(char*)
Com_Init:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x42c
	mov dword [esp], 0x2
	call Sys_GetValue
	mov [esp], eax
	call setjmp
	test eax, eax
	jnz Com_Init_10
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Com_Init_Try_Block_Function
Com_Init_70:
	mov dword [esp], 0x2
	call Sys_GetValue
	mov [esp], eax
	call setjmp
	test eax, eax
	jnz Com_Init_20
	mov eax, [com_numConsoleLines]
	test eax, eax
	jg Com_Init_30
Com_Init_20:
	mov ebx, [com_errorEntered]
	test ebx, ebx
	jnz Com_Init_40
Com_Init_120:
	mov eax, [com_sv_running]
	cmp byte [eax+0xc], 0x0
	jnz Com_Init_50
	mov eax, com_dedicated
	mov eax, [eax]
	mov ecx, [eax+0xc]
	test ecx, ecx
	jz Com_Init_60
Com_Init_50:
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Com_Init_10:
	mov dword [esp+0x4], com_errorMessage
	mov dword [esp], _cstring_error_during_ini
	call va
	mov [esp], eax
	call Sys_Error
	jmp Com_Init_70
Com_Init_60:
	mov dword [esp], 0x2
	call Sys_GetValue
	mov [esp], eax
	call setjmp
	test eax, eax
	jnz Com_Init_80
	mov eax, cls
	mov edx, [eax+0x108]
	test edx, edx
	jz Com_Init_90
	call CL_StartHunkUsers
Com_Init_130:
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Com_Init_30:
	xor edi, edi
	mov esi, com_consoleLines
	jmp Com_Init_100
Com_Init_110:
	add edi, 0x1
	add esi, 0x4
	cmp edi, [com_numConsoleLines]
	jge Com_Init_20
Com_Init_100:
	mov eax, [esi]
	cmp byte [eax], 0x0
	jz Com_Init_110
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_s1
	mov dword [esp+0x4], 0x401
	lea ebx, [ebp-0x419]
	mov [esp], ebx
	call Com_sprintf
	mov dword [esp], 0x0
	call CL_ControllerIndexFromClientNum
	mov [esp+0x8], ebx
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Cbuf_ExecuteBuffer
	jmp Com_Init_110
Com_Init_40:
	call Com_ErrorCleanup
	jmp Com_Init_120
Com_Init_90:
	call CL_InitRenderer
	call CL_StartHunkUsers
	jmp Com_Init_130
Com_Init_80:
	mov dword [esp+0x4], com_errorMessage
	mov dword [esp], _cstring_error_during_ini
	call va
	mov [esp], eax
	call Sys_Error
	jmp Com_Init_50
	add [eax], al


;Com_Close()
Com_Close:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	call Com_ShutdownDObj
	call DObjShutdown
	call XAnimShutdown
	call Com_ShutdownWorld
	call CM_Shutdown
	call SND_ShutdownChannels
	call Hunk_Clear
	mov eax, [useFastFile]
	cmp byte [eax+0xc], 0x0
	jz Com_Close_10
	call DB_ShutdownXAssets
Com_Close_10:
	call Scr_Shutdown
	leave
	jmp Hunk_ShutdownDebugMemory


;Com_Error(errorParm_t, char const*, ...)
Com_Error:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov ebx, [ebp+0x8]
	mov dword [esp], 0x2
	call Sys_EnterCriticalSection
	mov eax, [com_errorEntered]
	test eax, eax
	jnz Com_Error_10
Com_Error_110:
	mov dword [com_errorEntered], 0x1
	lea eax, [ebp+0x10]
	mov [ebp-0xc], eax
	mov [esp+0xc], eax
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1000
	mov dword [esp], com_errorMessage
	call vsnprintf
	mov byte [com_errorMessage+0xfff], 0x0
	cmp ebx, 0x5
	jz Com_Error_20
	cmp ebx, 0x7
	jz Com_Error_20
	cmp ebx, 0x6
	jz Com_Error_30
	cmp ebx, 0x8
	jz Com_Error_40
	mov dword [com_fixedConsolePosition], 0x0
Com_Error_100:
	mov [errorcode], ebx
	mov dword [esp], 0x2
	call Sys_LeaveCriticalSection
	mov dword [esp], 0x2
	call Sys_GetValue
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call longjmp
Com_Error_20:
	mov ecx, [com_fixedConsolePosition]
	test ecx, ecx
	jz Com_Error_50
Com_Error_150:
	mov eax, cls
	mov edx, [eax+0x110]
	test edx, edx
	jz Com_Error_60
	cmp dword [errorcode], 0x3
	jz Com_Error_70
	mov eax, [noticeErrors]
	cmp byte [eax], 0x0
	jnz Com_Error_80
Com_Error_140:
	mov ebx, _cstring_menu_error
Com_Error_120:
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], _cstring_error_message
	mov dword [esp], com_errorMessage
	call SEH_LocalizeTextMessage
	test eax, eax
	mov edx, com_errorMessage
	cmovz eax, edx
	mov [esp+0x4], ebx
	mov [esp], eax
	call Com_SetLocalizedErrorMessage
	call Sys_IsMainThread
	test al, al
	jnz Com_Error_90
Com_Error_160:
	mov eax, cls
	mov eax, [eax+0x110]
	test eax, eax
	jz Com_Error_60
Com_Error_180:
	mov dword [com_errorEntered], 0x0
	mov dword [esp], 0x2
	call Sys_LeaveCriticalSection
	add esp, 0x24
	pop ebx
	pop ebp
	ret
Com_Error_60:
	mov ebx, 0x2
	jmp Com_Error_100
Com_Error_10:
	mov dword [esp+0x4], com_errorMessage
	mov dword [esp], _cstring_recursive_error_
	call Sys_Error
	jmp Com_Error_110
Com_Error_30:
	mov dword [com_fixedConsolePosition], 0x1
	call CL_ConsoleFixPosition
	mov bl, 0x2
	jmp Com_Error_100
Com_Error_70:
	mov ebx, _cstring_menu_notice
	jmp Com_Error_120
Com_Error_80:
	mov ebx, noticeErrors
Com_Error_130:
	mov dword [esp+0x4], com_errorMessage
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jz Com_Error_70
	mov eax, [ebx+0x4]
	add ebx, 0x4
	cmp byte [eax], 0x0
	jnz Com_Error_130
	jmp Com_Error_140
Com_Error_50:
	mov dword [com_fixedConsolePosition], 0x1
	call CL_ConsoleFixPosition
	jmp Com_Error_150
Com_Error_90:
	mov dword [esp+0x4], 0x1
	mov dword [esp], 0x0
	call UI_SetActiveMenu
	jmp Com_Error_160
Com_Error_40:
	mov dword [com_fixedConsolePosition], 0x1
	call CL_ConsoleFixPosition
	mov eax, cls
	mov eax, [eax+0x110]
	test eax, eax
	jnz Com_Error_170
Com_Error_190:
	mov eax, com_dedicated
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	jz Com_Error_100
	mov dword [esp], _cstring_2
	call Sys_Print
	mov dword [esp], com_errorMessage
	call Sys_Print
	mov dword [esp], _cstring_2
	call Sys_Print
	jmp Com_Error_180
Com_Error_170:
	call Sys_IsMainThread
	test al, al
	jz Com_Error_190
	cmp dword [errorcode], 0x3
	jz Com_Error_200
	mov eax, [noticeErrors]
	cmp byte [eax], 0x0
	jnz Com_Error_210
Com_Error_230:
	mov ebx, _cstring_menu_error
Com_Error_240:
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], _cstring_error_message
	mov dword [esp], com_errorMessage
	call SEH_LocalizeTextMessage
	test eax, eax
	mov edx, com_errorMessage
	cmovz eax, edx
	mov [esp+0x4], ebx
	mov [esp], eax
	call Com_SetLocalizedErrorMessage
	mov dword [esp+0x4], 0x5
	mov dword [esp], 0x0
	call UI_SetActiveMenu
	jmp Com_Error_180
Com_Error_210:
	mov ebx, noticeErrors
Com_Error_220:
	mov dword [esp+0x4], com_errorMessage
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jz Com_Error_200
	mov eax, [ebx+0x4]
	add ebx, 0x4
	cmp byte [eax], 0x0
	jnz Com_Error_220
	jmp Com_Error_230
Com_Error_200:
	mov ebx, _cstring_menu_notice
	jmp Com_Error_240
	nop


;Com_Frame()
Com_Frame:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x4], _cstring_com_frame
	mov dword [esp], 0xffffffff
	call PIXSetMarker
	mov dword [esp], 0x2
	call Sys_GetValue
	mov [esp], eax
	call setjmp
	test eax, eax
	jz Com_Frame_10
Com_Frame_40:
	mov dword [esp], 0x2
	call Sys_EnterCriticalSection
	mov eax, [com_errorEntered]
	test eax, eax
	jnz Com_Frame_20
	mov dword [esp], 0x2
	call Sys_LeaveCriticalSection
Com_Frame_30:
	leave
	ret
Com_Frame_20:
	call Com_ErrorCleanup
	mov dword [esp], 0x2
	call Sys_LeaveCriticalSection
	mov eax, com_dedicated
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	jnz Com_Frame_30
	call CL_InitRenderer
	call Com_StartHunkUsers
	leave
	ret
Com_Frame_10:
	call DB_Update
	call Com_Frame_Try_Block_Function
	add dword [com_frameNumber], 0x1
	jmp Com_Frame_40
	nop


;Initialized global or static variables of common:
SECTION .data
s_lockThreadNames: dd _cstring_none, _cstring_minimal, _cstring_all, 0x0, 0x0, 0x0
noticeErrors: dd _cstring_exe_server_disco, _cstring_exe_disconnected1, _cstring_exe_serverisfull, _cstring_xboxlive_signedo, _cstring_xboxlive_cantjoi, _cstring_xboxlive_mpnotal, _cstring_xboxlive_mustlog, _cstring_menu_resetcustom, _cstring_xboxlive_netconn, _cstring_null, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
cl_cdkey: dd 0x20202020, 0x20202020, 0x20202020, 0x20202020, 0x20202020, 0x20202020, 0x20202020, 0x20202020, 0x0
cl_cdkeychecksum: dd 0x20202020, 0x0, 0x0
com_missingAssetOpenFailed: dd 0x0
g_dedicatedEnumNames: dd _cstring_listen_server, _cstring_dedicated_lan_se, _cstring_dedicated_intern, 0x0
com_consoleLogOpenFailed: dd 0x0


;Initialized constant data of common:
SECTION .rdata


;Zero initialized global or static variables of common:
SECTION .bss
weaponInfoSource: resb 0x4
logfile: resb 0x4
errorcode: resb 0x18
com_errorMessage: resb 0x1000
com_lastFrameTime: resb 0x4
com_lastFrameIndex: resb 0x4
com_fullyInitialized: resb 0x4
com_codeTimeScale: resb 0x4
com_numConsoleLines: resb 0x10
com_consoleLines: resb 0xc0
serverCommonMsgBuf: resb 0x20000
clientCommonMsgBuf: resb 0x20000
com_safemode: resb 0x4
rd_flush: resb 0x4
rd_buffersize: resb 0x4
rd_buffer: resb 0x4
_ZZ15Com_OpenLogFilevE16opening_qconsole: resb 0x4
_ZZ11Com_StatmonvE15timeClientFrame: resb 0x4
_ZZ27Com_Init_Try_Block_FunctionPcE23Com_WriteDefaults_f_VAR: resb 0x14
_ZZ27Com_Init_Try_Block_FunctionPcE21Com_WriteConfig_f_VAR: resb 0x14
_ZZ27Com_Init_Try_Block_FunctionPcE14Com_Quit_f_VAR: resb 0x14
_ZZ27Com_Init_Try_Block_FunctionPcE16Com_Assert_f_VAR: resb 0x14
_ZZ27Com_Init_Try_Block_FunctionPcE16Com_Freeze_f_VAR: resb 0x14
_ZZ27Com_Init_Try_Block_FunctionPcE15Com_Crash_f_VAR: resb 0x14
_ZZ27Com_Init_Try_Block_FunctionPcE15Com_Error_f_VAR: resb 0x14
_ZZ16Com_ErrorCleanupvE10errorCount: resb 0x4
_ZZ16Com_ErrorCleanupvE13lastErrorTime: resb 0x58
com_errorEntered: resb 0x4
useFastFile: resb 0x8
cl_paused: resb 0x4
com_expectedHunkUsage: resb 0x4
com_sv_running: resb 0x4
nextmap: resb 0x4
com_developer: resb 0x4
com_statmon: resb 0x4
com_timescaleValue: resb 0x4
sv_paused: resb 0x4
com_frameTime: resb 0x4
com_animCheck: resb 0x4
com_authPort: resb 0x4
com_authServerName: resb 0x4
com_developer_script: resb 0x4
com_errorPrintsCount: resb 0x4
com_filter_output: resb 0x4
com_fixedConsolePosition: resb 0x4
com_fixedtime: resb 0x4
com_frameNumber: resb 0x4
com_hiDef: resb 0x4
com_introPlayed: resb 0x4
com_logfile: resb 0x4
com_masterPort: resb 0x4
com_masterServerName: resb 0x4
com_maxFrameTime: resb 0x4
com_maxfps: resb 0x4
com_recommendedSet: resb 0x4
com_timescale: resb 0x4
com_wideScreen: resb 0x4
dev_timescale: resb 0x4
shortversion: resb 0x4
sys_lockThreads: resb 0x4
sys_smp_allowed: resb 0x4
ui_errorMessage: resb 0x4
ui_errorTitle: resb 0x4
version: resb 0x4


;All cstrings:
SECTION .rdata
_cstring_console_mplog:		db "console_mp.log",0
_cstring_build_slogfile_o:		db "Build %s",0ah,"logfile opened on %s",0ah,0
_cstring_1:		db "1",0
_cstring_r_aasamples:		db "r_aaSamples",0
_cstring_r_altmodellighti:		db "r_altModelLightingUpdate",0
_cstring_r_zfeather:		db "r_zfeather",0
_cstring_sm_enable:		db "sm_enable",0
_cstring_0:		db "0",0
_cstring_true_if_this_is_:		db "True if this is a dedicated server",0
_cstring_dedicated:		db "dedicated",0
_cstring_cap_frames_per_s:		db "Cap frames per second",0
_cstring_com_maxfps:		db "com_maxfps",0
_cstring_enables_loading_:		db "Enables loading data from fast files. Only tools can run without fast files.",0
_cstring_usefastfile:		db "useFastFile",0
_cstring_prevents_specifi:		db "Prevents specified threads from changing CPUs; improves profiling and may fix some bugs, but can hurt performance",0
_cstring_sys_lockthreads:		db "sys_lockThreads",0
_cstring_allow_multithrea:		db "Allow multi-threading",0
_cstring_sys_smp_allowed:		db "sys_smp_allowed",0
_cstring_master_server_na:		db "Master server name for listing public inet games",0
_cstring_cod4masteractivi:		db "cod4master.activision.com",0
_cstring_masterservername:		db "masterServerName",0
_cstring_authentication_s:		db "Authentication server name for listing public inet games",0
_cstring_authservername:		db "authServerName",0
_cstring_master_server_po:		db "Master server port",0
_cstring_masterport:		db "masterPort",0
_cstring_auth_server_port:		db "Auth server port",0
_cstring_authport:		db "authPort",0
_cstring_enable_developme:		db "Enable development options",0
_cstring_developer:		db "developer",0
_cstring_enable_developer:		db "Enable developer script comments",0
_cstring_developer_script:		db "developer_script",0
_cstring_write_to_log_fil:		db "Write to log file - 0 = disabled, 1 = async file write, 2 = Sync every write",0
_cstring_logfile:		db "logfile",0
_cstring_draw_stats_monit:		db "Draw stats monitor",0
_cstring_com_statmon:		db "com_statmon",0
_cstring_scale_time_of_ea:		db "Scale time of each frame",0
_cstring_com_timescale:		db "com_timescale",0
_cstring_timescale:		db "timescale",0
_cstring_use_a_fixed_time:		db "Use a fixed time rate for each frame",0
_cstring_fixedtime:		db "fixedtime",0
_cstring_time_slows_down_:		db "Time slows down if a frame takes longer than this many milliseconds",0
_cstring_com_maxframetime:		db "com_maxFrameTime",0
_cstring_pause_the_server:		db "Pause the server",0
_cstring_sv_paused:		db "sv_paused",0
_cstring_pause_the_client:		db "Pause the client",0
_cstring_cl_paused:		db "cl_paused",0
_cstring_server_is_runnin:		db "Server is running",0
_cstring_sv_running:		db "sv_running",0
_cstring_use_console_filt:		db "Use console filters for filtering output.",0
_cstring_com_filter_outpu:		db "com_filter_output",0
_cstring_intro_movie_has_:		db "Intro movie has been played",0
_cstring_com_introplayed:		db "com_introPlayed",0
_cstring_check_anim_tree:		db "Check anim tree",0
_cstring_com_animcheck:		db "com_animCheck",0
_cstring_true_if_the_game:		db "True if the game video is running in high-def.",0
_cstring_hidef:		db "hiDef",0
_cstring_true_if_the_game1:		db "True if the game video is running in 16x9 aspect, false if 4x3.",0
_cstring_widescreen:		db "wideScreen",0
_cstring_players:		db "players",0
_cstring_couldnt_write_s:		db "Couldn",27h,"t write %s.",0ah,0
_cstring__generated_by_ca:		db "// generated by Call of Duty, do not modify",0ah,0
_cstring_unbindall:		db "unbindall",0ah,0
_cstring_freeze_seconds:		db "freeze <seconds>",0ah,0
_cstring_testing_drop_err:		db 015h,"Testing drop error",0
_cstring_testing_fatal_er:		db 015h,"Testing fatal error",0
_cstring_configure_mpcsv_:		db 015h,"configure_mp.csv: dvar name ",22h,"%s",22h," longer than %i",0ah,0
_cstring_configure_mpcsv_1:		db 015h,"configure_mp.csv: more than %i dvars",0ah,0
_cstring_configure_mpcsv_2:		db 015h,"configure_mp.csv: unexpected end-of-file",0
_cstring_configure_mpcsv_3:		db 015h,"configure_mp.csv: extra dvar value column(s): value = %s",0ah,0
_cstring_configure_mpcsv_4:		db 015h,"configure_mp.csv: missing entry in dvar value column %i",0ah,0
_cstring_configure_mpcsv_5:		db 015h,"configure_mp.csv: entry ",27h,"%s",27h," in dvar value column %i is longer than %i",0ah,0
_cstring_feb_12_2009:		db "Feb 12 2009",0
_cstring_macosxsi386:		db "MacOSXS-i386",0
_cstring_17:		db "1.7",0
_cstring_cod4_mp:		db "CoD4 MP",0
_cstring_s_s_build_s_s:		db "%s %s build %s %s",0ah,0
_cstring_use_recommended_:		db "Use recommended settings",0
_cstring_com_recommendeds:		db "com_recommendedSet",0
_cstring_quit:		db "quit",0
_cstring_writeconfig:		db "writeconfig",0
_cstring_writedefaults:		db "writedefaults",0
_cstring_s_s_build_s_s1:		db "%s %s build %s %s",0
_cstring_game_version:		db "Game version",0
_cstring_null:		db 0
_cstring_version:		db "version",0
_cstring_short_game_versi:		db "Short game version",0
_cstring_shortversion:		db "shortversion",0
_cstring_init:		db "$init",0
_cstring_end_init_d_ms:		db "end $init %d ms",0ah,0
_cstring__common_initiali:		db "--- Common Initialization Complete ---",0ah,0
_cstring_begin_init:		db "begin $init",0ah,0
_cstring_error:		db "error",0
_cstring_crash:		db "crash",0
_cstring_freeze:		db "freeze",0
_cstring_assert:		db "assert",0
_cstring_cinematic_iw_log:		db "cinematic IW_logo",0ah,0
_cstring_cinematic_atvi_s:		db "cinematic atvi; set nextmap ",22h,"cinematic Aspyr; set nextmap cinematic cod_intro",22h,0
_cstring_ui_mp:		db "ui_mp",0
_cstring_error_during_ini:		db "Error during initialization:",0ah,"%s",0ah,0
_cstring_menu_error:		db "MENU_ERROR",0
_cstring_error_message:		db "error message",0
_cstring_disconnecting_s:		db "********************",0ah,"Disconnecting: %s",0ah,"********************",0ah,0
_cstring_menu_notice:		db "MENU_NOTICE",0
_cstring_s:		db "%s",0
_cstring_exe_disconnected:		db "EXE_DISCONNECTEDFROMOWNLISTENSERVER",0
_cstring_error_s:		db "********************",0ah,"ERROR: %s",0ah,"********************",0ah,0
_cstring_quitting:		db "quitting...",0ah,0
_cstring_exe_serverquit:		db "EXE_SERVERQUIT",0
_cstring_s1:		db "%s",0ah,0
_cstring_missing_value:		db "MISSING VALUE",0ah,0
_cstring_dvar_restart:		db "dvar_restart",0
_cstring_safe:		db "safe",0
_cstring_com_eventloop_ba:		db 015h,"Com_EventLoop: bad event type %i",0
_cstring_:		db 0ah,0
_cstring_codkey:		db "codkey",0
_cstring_11:		db "^1",0
_cstring_1error_:		db "^1Error: ",0
_cstring_3:		db "^3",0
_cstring_usage_writeconfi:		db "Usage: writeconfig <filename>",0ah,0
_cstring_cfg:		db ".cfg",0
_cstring_writing_s:		db "Writing %s.",0ah,0
_cstring__autoconfigure:		db "========= autoconfigure",0ah,0
_cstring_configure_mpcsv:		db "configure_mp.csv",0
_cstring_gpu:		db "gpu",0
_cstring_cpu_ghz:		db "cpu ghz",0
_cstring_sys_mb:		db "sys mb",0
_cstring_configure_mpcsv_6:		db 015h,"configure_mp.csv: sys mb %i not allowed to be less than 128",0ah,0
_cstring_configure_mpcsv_7:		db 015h,"configure_mp.csv: ",22h,"sys mb",22h," should be the second column",0ah,0
_cstring_configure_mpcsv_8:		db 015h,"configure_mp.csv: ",22h,"cpu ghz",22h," should be the first column",0ah,0
_cstring_configure_mpcsv_9:		db 015h,"configure_mp.csv: ",014h,"EXE_ERR_COULDNT_CONFIGURE",015h," %.0f GHz %i MB",0ah,0
_cstring_configure_mpcsv_10:		db 015h,"configure_mp.csv: ",014h,"EXE_ERR_COULDNT_CONFIGURE",015h," ",22h,"%s",22h,0ah,0
_cstring_exe_err_not_foun:		db "EXE_ERR_NOT_FOUND",015h,"configure_mp.csv",0
_cstring_snd_restart:		db "snd_restart",0ah,0
_cstring_configure_mpcsv_11:		db 015h,"configure_mp.csv: ",22h,"find",22h," string is too long",0ah,0
_cstring_configure_mpcsv_12:		db "configure_mp.csv: using GPU configuration ",22h,"%s",22h,0ah,0
_cstring_radeon_x16:		db "Radeon X16*",0
_cstring_configure_mpcsv_13:		db 015h,"configure_mp.csv: cpu ghz %g not allowed to be less than 0",0ah,0
_cstring_configure_mpcsv_14:		db "configure_mp.csv: using CPU configuration %.0f GHz %i MB",0ah,0
_cstring_exec_configure_m:		db "exec configure_mp.cfg",0
_cstring_geforce_73:		db "GeForce 73*",0
_cstring_lue_returnvaluec:		db "lue, returnValueColumnNum )",0ah,0
_cstring_set:		db "set",0
_cstring_seta:		db "seta",0
_cstring_usage_writedefau:		db "Usage: writedefaults <filename>",0ah,0
_cstring_exec_default_mpc:		db "exec default_mp.cfg",0ah,0
_cstring_exec_languagecfg:		db "exec language.cfg",0ah,0
_cstring_exec_s:		db "exec %s",0ah,0
_cstring_exec_safemode_mp:		db "exec safemode_mp.cfg",0ah,0
_cstring_f:		db "%.*f",0
_cstring_progress_time_sp:		db "progress time spin",0
_cstring_pre_frame:		db "pre frame",0
_cstring_cl_frame:		db "CL_Frame",0
_cstring_hitch_warning_i_:		db "Hitch warning: %i msec frame time",0ah,0
_cstring_config_mpcfg:		db "config_mp.cfg",0
_cstring_code_warning_fil:		db "code_warning_file",0
_cstring_code_warning_fps:		db "code_warning_fps",0
_cstring_most_recent_erro:		db "Most recent error message",0
_cstring_com_errormessage:		db "com_errorMessage",0
_cstring_title_of_the_mos:		db "Title of the most recent error message",0
_cstring_com_errortitle:		db "com_errorTitle",0
_cstring_recursive_error_:		db "recursive error after: %s",0
_cstring_2:		db 0ah,"==========================",0ah,0
_cstring_com_frame:		db "Com_Frame",0
_cstring_none:		db "none",0
_cstring_minimal:		db "minimal",0
_cstring_all:		db "all",0
_cstring_exe_server_disco:		db "EXE_SERVER_DISCONNECTED",0
_cstring_exe_disconnected1:		db "EXE_DISCONNECTED",0
_cstring_exe_serverisfull:		db "EXE_SERVERISFULL",0
_cstring_xboxlive_signedo:		db "XBOXLIVE_SIGNEDOUTOFLIVE",0
_cstring_xboxlive_cantjoi:		db "XBOXLIVE_CANTJOINSESSION",0
_cstring_xboxlive_mpnotal:		db "XBOXLIVE_MPNOTALLOWED",0
_cstring_xboxlive_mustlog:		db "XBOXLIVE_MUSTLOGIN",0
_cstring_menu_resetcustom:		db "MENU_RESETCUSTOMCLASSES",0
_cstring_xboxlive_netconn:		db "XBOXLIVE_NETCONNECTION",0
_cstring_listen_server:		db "listen server",0
_cstring_dedicated_lan_se:		db "dedicated LAN server",0
_cstring_dedicated_intern:		db "dedicated internet server",0



;All constant floats and doubles:
SECTION .rdata
_double_0_00100000:		dq 0x3f50624dd2f1a9fc	; 0.001
_double_1_02000000:		dq 0x3ff051eb851eb852	; 1.02
_double__1_00000000:		dq 0xbff0000000000000	; -1
_double_0_00000000:		dq 0x0	; 0
_float_1_00000000:		dd 0x3f800000	; 1
_float_0_50000000:		dd 0x3f000000	; 0.5

