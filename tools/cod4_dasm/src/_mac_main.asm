;Imports of mac_main:
	extern Cvar_RegisterFloat
	extern Cvar_RegisterInt
	extern Cvar_RegisterString
	extern Cvar_RegisterBool
	extern IN_Shutdown
	extern IN_Init
	extern NET_Restart
	extern _ZN10MacBuilder15QuitModalWindowEP15OpaqueWindowPtrm
	extern Cvar_SetFloat
	extern Cvar_SetInt
	extern Cvar_SetString
	extern Win_LocalizeRef
	extern GetActiveWindow
	extern MessageBoxA
	extern Sys_InitializeCriticalSections
	extern Sys_InitMainThread
	extern Win_InitLocalization
	extern _Znaj
	extern _ZN10MacFolders35GetApplicationSupportFolderItemPathEPKcPci
	extern Com_InitParse
	extern Cvar_Init
	extern InitTiming
	extern Sys_GetCpuCount
	extern Sys_CpuGHz
	extern Sys_SystemMemoryMB
	extern Sys_DetectVideoCard
	extern Sys_SupportsSSE
	extern Sys_DetectCpuVendorAndName
	extern Sys_SetAutoConfigureGHz
	extern Q_strncpyz
	extern Sys_CreateSplashWindow
	extern Sys_ShowSplashWindow
	extern D3DXCompileShaderInit
	extern Sys_Milliseconds
	extern Sys_InitStreamThread
	extern Com_Init
	extern com_dedicated
	extern _getcwd
	extern Com_Printf
	extern PbClientInitialize
	extern PbServerInitialize
	extern GetMacGameEngine
	extern _ZN14CMacGameEngine12SetIsRunningEh
	extern WinSleep
	extern Com_Frame
	extern PbServerProcessEvents
	extern PbClientProcessEvents
	extern Win_ShutdownLocalization
	extern Cbuf_AddText
	extern Com_PrintError
	extern Com_SetErrorMessage
	extern memcpy
	extern CFURLCreateWithBytes
	extern LSOpenCFURLRef
	extern CFRelease
	extern Sys_EnterCriticalSection
	extern _ZN14CMacGameEngine16ProcessAllEventsEv
	extern Sys_ConsoleInput
	extern Com_AllocEvent
	extern Sys_LeaveCriticalSection
	extern Com_Quit_f
	extern Z_FreeInternal
	extern DeleteFileA
	extern strcmp
	extern GetCurrentScrap
	extern GetScrapFlavorSize
	extern Z_MallocInternal
	extern GetScrapFlavorData
	extern strtok
	extern R_CheckLostDevice
	extern UpdateSystemActivity
	extern AIL_UpdateAllSounds
	extern fopen
	extern fread
	extern fclose
	extern fwrite
	extern _ZN10MacBuilder11BuildWindowEPK10__CFStringS2_hPFhP15OpaqueWindowPtrmE
	extern _ZN10MacStrings20TranslateToMacStringEPKc
	extern _ZN10MacBuilder14SetWindowTitleEP15OpaqueWindowPtrPKc
	extern _ZN10MacBuilder14SetControlTextEP15OpaqueWindowPtrlPKc
	extern _ZN10MacBuilder14RunModalWindowEP15OpaqueWindowPtr
	extern _ZN10MacBuilder13ReleaseWindowEP15OpaqueWindowPtr
	extern Com_ForceSafeMode
	extern exit
	extern Com_sprintf
	extern clientUIActives
	extern SCR_UpdateLoadScreen
	extern timeBeginPeriod
	extern Cmd_AddCommand
	extern timeEndPeriod
	extern Key_Shutdown
	extern Sys_DestroyConsole
	extern RefreshQuitOnErrorCondition
	extern Cvar_Shutdown
	extern Cmd_Shutdown
	extern Con_Shutdown
	extern Com_ShutdownEvents
	extern SL_Shutdown
	extern Con_ShutdownChannels
	extern _ZN14MacPreferences11SynchronizeEv
	extern _ZN10MacFolders23GetApplicationFolderRefER5FSRef
	extern strstr
	extern _ZN8MacTools15FindApplicationEmRK5FSRefRS0_
	extern va
	extern Com_Error
	extern LSOpenApplication
	extern com_errorEntered
	extern Sys_SuspendOtherThreads
	extern vsnprintf
	extern Sys_IsMainThread
	extern Sys_SetErrorText
	extern Sys_ShowConsole
	extern Conbuf_AppendText
	extern gConsoleRunning
	extern Conbuf_AppendTextInMainThread

;Exports of mac_main:
	global sys_cmdline
	global sys_processSemaphoreFile
	global sys_info
	global sys_exitCmdLine
	global sys_configSum
	global sys_gpu
	global sys_sysMB
	global sys_configureGHz
	global Sys_RegisterInfoDvars
	global Sys_In_Restart_f
	global Sys_Net_Restart_f
	global _ZZ8Sys_InitvE21Sys_Net_Restart_f_VAR
	global _ZZ8Sys_InitvE20Sys_In_Restart_f_VAR
	global _ZZ24Sys_GetSemaphoreFileNamevE18sSemaphoreFileName
	global Sys_ShouldUpdateForInfoChange
	global WinMain
	global Sys_GetInfo
	global Sys_OpenURL
	global Sys_GetEvent
	global Sys_QueEvent
	global Sys_NormalExit
	global Sys_ArchiveInfo
	global Sys_HasInfoChanged
	global Sys_GetClipboardData
	global Sys_LoadingKeepAlive
	global Sys_CheckCrashOrRerun
	global Sys_DirectXFatalError
	global Sys_FreeClipboardData
	global Sys_QuitAndStartProcess
	global Sys_OutOfMemErrorInternal
	global Sys_FastFileBlockedCallback
	global Sys_HasConfigureChecksumChanged
	global Sys_Init
	global Sys_Quit
	global Sys_Error
	global Sys_Print
	global g_wv
	global eventHead
	global eventQue
	global eventTail
	global sys_SSE


SECTION .text


;Sys_RegisterInfoDvars()
Sys_RegisterInfoDvars:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x20
	mov dword [esp+0x14], _cstring_normalized_total
	mov dword [esp+0x10], 0x11
	mov esi, 0x7f7fffff
	mov [esp+0xc], esi
	mov ebx, 0xff7fffff
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_sys_configureghz
	call Cvar_RegisterFloat
	mov [sys_configureGHz], eax
	mov dword [esp+0x14], _cstring_physical_memory_
	mov dword [esp+0x10], 0x11
	mov dword [esp+0xc], 0x7fffffff
	mov dword [esp+0x8], 0x80000000
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_sys_sysmb
	call Cvar_RegisterInt
	mov [sys_sysMB], eax
	mov dword [esp+0xc], _cstring_gpu_description
	mov dword [esp+0x8], 0x11
	mov dword [esp+0x4], _cstring_null
	mov dword [esp], _cstring_sys_gpu
	call Cvar_RegisterString
	mov [sys_gpu], eax
	mov dword [esp+0x14], _cstring_configuration_ch
	mov dword [esp+0x10], 0x11
	mov dword [esp+0xc], 0x7fffffff
	mov dword [esp+0x8], 0x80000000
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_sys_configsum
	call Cvar_RegisterInt
	mov [sys_configSum], eax
	mov dword [esp+0xc], _cstring_operating_system
	mov dword [esp+0x8], 0x40
	movzx eax, byte [sys_info+0x21c]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_sys_sse
	call Cvar_RegisterBool
	mov [sys_SSE], eax
	mov dword [esp+0x14], _cstring_measured_cpu_spe
	mov dword [esp+0x10], 0x40
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	cvtsd2ss xmm0, [sys_info]
	movss [esp+0x4], xmm0
	mov dword [esp], _cstring_sys_cpughz
	call Cvar_RegisterFloat
	mov dword [esp+0xc], _cstring_cpu_name_descrip
	mov dword [esp+0x8], 0x40
	mov dword [esp+0x4], sys_info+0x22a
	mov dword [esp], _cstring_sys_cpuname
	call Cvar_RegisterString
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;Sys_In_Restart_f()
Sys_In_Restart_f:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	call IN_Shutdown
	leave
	jmp IN_Init
	nop


;Sys_Net_Restart_f()
Sys_Net_Restart_f:
	push ebp
	mov ebp, esp
	pop ebp
	jmp NET_Restart
	nop


;BuilderCallback(OpaqueWindowPtr*, unsigned long)
BuilderCallback:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0xc]
	test eax, eax
	jnz BuilderCallback_10
	leave
	ret
BuilderCallback_10:
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _ZN10MacBuilder15QuitModalWindowEP15OpaqueWindowPtrm
	mov eax, 0x1
	leave
	ret
	nop


;Sys_ShouldUpdateForInfoChange()
Sys_ShouldUpdateForInfoChange:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	call Sys_RegisterInfoDvars
	cvtsd2ss xmm0, [sys_info+0x8]
	movss [esp+0x4], xmm0
	mov eax, [sys_configureGHz]
	mov [esp], eax
	call Cvar_SetFloat
	mov eax, [sys_info+0x18]
	mov [esp+0x4], eax
	mov eax, [sys_sysMB]
	mov [esp], eax
	call Cvar_SetInt
	mov dword [esp+0x4], sys_info+0x1c
	mov eax, [sys_gpu]
	mov [esp], eax
	call Cvar_SetString
	mov dword [esp+0x4], 0x0
	mov eax, [sys_configSum]
	mov [esp], eax
	call Cvar_SetInt
	mov dword [esp], _cstring_win_computer_cha
	call Win_LocalizeRef
	mov esi, eax
	mov dword [esp], _cstring_win_computer_cha1
	call Win_LocalizeRef
	mov ebx, eax
	call GetActiveWindow
	mov dword [esp+0xc], 0x44
	mov [esp+0x8], esi
	mov [esp+0x4], ebx
	mov [esp], eax
	call MessageBoxA
	cmp eax, 0x6
	setz al
	movzx eax, al
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;WinMain
WinMain:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x11c
	mov esi, [ebp+0x8]
	call Sys_InitializeCriticalSections
	call Sys_InitMainThread
	call Win_InitLocalization
	mov dword [esp], 0x400
	call _Znaj
	mov [sys_processSemaphoreFile], eax
	mov byte [eax], 0x0
	mov dword [esp+0x8], 0x400
	mov [esp+0x4], eax
	mov eax, [_ZZ24Sys_GetSemaphoreFileNamevE18sSemaphoreFileName]
	mov [esp], eax
	call _ZN10MacFolders35GetApplicationSupportFolderItemPathEPKcPci
	call Sys_CheckCrashOrRerun
	test eax, eax
	jz WinMain_10
	call Com_InitParse
	call Cvar_Init
	call InitTiming
	call Sys_GetCpuCount
	mov [sys_info+0x10], eax
	call Sys_CpuGHz
	fstp qword [sys_info]
	call Sys_SystemMemoryMB
	mov [sys_info+0x18], eax
	mov dword [esp+0x4], sys_info+0x1c
	mov dword [esp], 0x200
	call Sys_DetectVideoCard
	call Sys_SupportsSSE
	mov [sys_info+0x21c], al
	mov dword [esp+0x4], sys_info+0x22a
	mov dword [esp], sys_info+0x21d
	call Sys_DetectCpuVendorAndName
	mov dword [esp], sys_info
	call Sys_SetAutoConfigureGHz
	mov [g_wv+0xc], esi
	mov dword [esp+0x8], 0x400
	mov eax, [ebp+0x10]
	mov [esp+0x4], eax
	mov dword [esp], sys_cmdline
	call Q_strncpyz
	call Sys_CreateSplashWindow
	call Sys_ShowSplashWindow
	call D3DXCompileShaderInit
	call Sys_Milliseconds
	call Sys_InitStreamThread
	mov dword [esp], sys_cmdline
	call Com_Init
	mov edi, com_dedicated
	mov eax, [edi]
	mov eax, [eax+0xc]
	test eax, eax
	jz WinMain_20
WinMain_110:
	mov dword [esp+0x4], 0x100
	lea ebx, [ebp-0x118]
	mov [esp], ebx
	call _getcwd
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_working_director
	mov dword [esp], 0x10
	call Com_Printf
	mov eax, [edi]
	test eax, eax
	jz WinMain_30
	mov edi, [eax+0xc]
	test edi, edi
	jnz WinMain_40
WinMain_30:
	mov [esp], esi
	call PbClientInitialize
	test al, al
	jz WinMain_50
WinMain_40:
	call PbServerInitialize
	test al, al
	jz WinMain_60
WinMain_120:
	call GetMacGameEngine
	mov dword [esp+0x4], 0x1
	mov [esp], eax
	call _ZN14CMacGameEngine12SetIsRunningEh
	mov ebx, com_dedicated
WinMain_100:
	mov esi, [g_wv+0x14]
	test esi, esi
	jnz WinMain_70
	mov eax, [ebx]
	test eax, eax
	jz WinMain_80
	mov ecx, [eax+0xc]
	test ecx, ecx
	jz WinMain_80
WinMain_70:
	mov dword [esp], 0x5
	call WinSleep
WinMain_80:
	call Com_Frame
	mov eax, [ebx]
	test eax, eax
	jz WinMain_90
	mov edx, [eax+0xc]
	test edx, edx
	jz WinMain_90
	call PbServerProcessEvents
	jmp WinMain_100
WinMain_90:
	call PbClientProcessEvents
	call PbServerProcessEvents
	jmp WinMain_100
WinMain_10:
	call Win_ShutdownLocalization
	xor eax, eax
	add esp, 0x11c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
WinMain_20:
	mov dword [esp+0x4], _cstring_readstats
	mov dword [esp], 0x0
	call Cbuf_AddText
	jmp WinMain_110
WinMain_60:
	mov dword [esp+0x4], _cstring_unable_to_initia
	mov dword [esp], 0x10
	call Com_PrintError
	mov dword [esp], _cstring_mpui_nopunkbuste
	call Com_SetErrorMessage
	jmp WinMain_120
WinMain_50:
	mov dword [esp], _cstring_mpui_nopunkbuste
	call Com_SetErrorMessage
	jmp WinMain_40
	nop


;Sys_GetInfo(SysInfo*)
Sys_GetInfo:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x8], 0x25c
	mov dword [esp+0x4], sys_info
	mov eax, [ebp+0x8]
	mov [esp], eax
	call memcpy
	leave
	ret
	nop


;Sys_OpenURL(char const*, int)
Sys_OpenURL:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x0
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, esi
	repne scasb
	not ecx
	sub ecx, 0x1
	mov [esp+0x8], ecx
	mov [esp+0x4], esi
	mov dword [esp], 0x0
	call CFURLCreateWithBytes
	mov edi, eax
	test eax, eax
	jz Sys_OpenURL_10
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call LSOpenCFURLRef
	test eax, eax
	jz Sys_OpenURL_20
Sys_OpenURL_30:
	mov [ebp+0x8], edi
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp CFRelease
Sys_OpenURL_20:
	test ebx, ebx
	jz Sys_OpenURL_30
	mov dword [esp+0x4], _cstring_quit
	mov dword [esp], 0x0
	call Cbuf_AddText
	mov [ebp+0x8], edi
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp CFRelease
Sys_OpenURL_10:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Sys_GetEvent()
Sys_GetEvent:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov dword [esp], 0x7
	call Sys_EnterCriticalSection
	mov edx, [eventTail]
	cmp [eventHead], edx
	jg Sys_GetEvent_10
	call _ZN14CMacGameEngine16ProcessAllEventsEv
	test al, al
	jnz Sys_GetEvent_20
	call Sys_ConsoleInput
	mov [ebp-0x3c], eax
	test eax, eax
	jz Sys_GetEvent_30
Sys_GetEvent_60:
	mov edi, eax
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	repne scasb
	mov ebx, ecx
	not ebx
	lea edi, [ebx-0x1]
	mov [esp], ebx
	call Com_AllocEvent
	mov esi, eax
	mov [esp+0x8], edi
	mov eax, [ebp-0x3c]
	mov [esp+0x4], eax
	mov [esp], esi
	call Q_strncpyz
	mov [esp+0x14], esi
	mov [esp+0x10], ebx
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x3
	mov dword [esp], 0x0
	call Sys_QueEvent
Sys_GetEvent_30:
	mov edx, [eventTail]
	cmp [eventHead], edx
	jle Sys_GetEvent_40
Sys_GetEvent_10:
	lea eax, [edx+0x1]
	mov [eventTail], eax
	movzx eax, dl
	lea eax, [eax+eax*2]
	shl eax, 0x3
	mov edx, [eax+eventQue]
	mov [ebp-0x30], edx
	mov edx, [eax+eventQue+0x4]
	mov [ebp-0x2c], edx
	mov edx, [eax+eventQue+0x8]
	mov [ebp-0x28], edx
	mov edx, [eax+eventQue+0xc]
	mov [ebp-0x24], edx
	mov edx, [eax+eventQue+0x10]
	mov [ebp-0x20], edx
	mov eax, [eax+eventQue+0x14]
	mov [ebp-0x1c], eax
	mov dword [esp], 0x7
	call Sys_LeaveCriticalSection
Sys_GetEvent_50:
	mov eax, [ebp-0x30]
	mov edx, [ebp+0x8]
	mov [edx], eax
	mov eax, [ebp-0x2c]
	mov [edx+0x4], eax
	mov eax, [ebp-0x28]
	mov [edx+0x8], eax
	mov eax, [ebp-0x24]
	mov [edx+0xc], eax
	mov eax, [ebp-0x20]
	mov [edx+0x10], eax
	mov eax, [ebp-0x1c]
	mov [edx+0x14], eax
	mov eax, edx
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret 0x4
Sys_GetEvent_40:
	lea edi, [ebp-0x30]
	cld
	mov ecx, 0x6
	xor eax, eax
	rep stosd
	call Sys_Milliseconds
	mov [ebp-0x30], eax
	mov dword [esp], 0x7
	call Sys_LeaveCriticalSection
	jmp Sys_GetEvent_50
Sys_GetEvent_20:
	call Com_Quit_f
	call Sys_ConsoleInput
	mov [ebp-0x3c], eax
	test eax, eax
	jnz Sys_GetEvent_60
	jmp Sys_GetEvent_30


;Sys_QueEvent(int, sysEventType_t, int, int, int, void*)
Sys_QueEvent:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov esi, [ebp+0x8]
	mov edi, [ebp+0xc]
	mov eax, [ebp+0x10]
	mov [ebp-0x1c], eax
	mov eax, [ebp+0x14]
	mov [ebp-0x20], eax
	mov eax, [ebp+0x18]
	mov [ebp-0x24], eax
	mov eax, [ebp+0x1c]
	mov [ebp-0x28], eax
	mov dword [esp], 0x7
	call Sys_EnterCriticalSection
	mov edx, [eventHead]
	movzx eax, dl
	lea eax, [eax+eax*2]
	lea ebx, [eax*8+eventQue]
	mov eax, edx
	sub eax, [eventTail]
	cmp eax, 0xff
	jg Sys_QueEvent_10
Sys_QueEvent_40:
	lea eax, [edx+0x1]
	mov [eventHead], eax
	test esi, esi
	jnz Sys_QueEvent_20
	call Sys_Milliseconds
	mov esi, eax
Sys_QueEvent_20:
	mov [ebx], esi
	mov [ebx+0x4], edi
	mov eax, [ebp-0x1c]
	mov [ebx+0x8], eax
	mov eax, [ebp-0x20]
	mov [ebx+0xc], eax
	mov eax, [ebp-0x24]
	mov [ebx+0x10], eax
	mov eax, [ebp-0x28]
	mov [ebx+0x14], eax
	mov dword [ebp+0x8], 0x7
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp Sys_LeaveCriticalSection
Sys_QueEvent_10:
	mov dword [esp+0x4], _cstring_sys_queevent_ove
	mov dword [esp], 0x10
	call Com_Printf
	mov eax, [ebx+0x14]
	test eax, eax
	jz Sys_QueEvent_30
	mov [esp], eax
	call Z_FreeInternal
Sys_QueEvent_30:
	add dword [eventTail], 0x1
	mov edx, [eventHead]
	jmp Sys_QueEvent_40


;Sys_NormalExit()
Sys_NormalExit:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [sys_processSemaphoreFile]
	mov [esp], eax
	call DeleteFileA
	leave
	ret
	nop


;Sys_ArchiveInfo(int)
Sys_ArchiveInfo:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	call Sys_RegisterInfoDvars
	cvtsd2ss xmm0, [sys_info+0x8]
	movss [esp+0x4], xmm0
	mov eax, [sys_configureGHz]
	mov [esp], eax
	call Cvar_SetFloat
	mov eax, [sys_info+0x18]
	mov [esp+0x4], eax
	mov eax, [sys_sysMB]
	mov [esp], eax
	call Cvar_SetInt
	mov dword [esp+0x4], sys_info+0x1c
	mov eax, [sys_gpu]
	mov [esp], eax
	call Cvar_SetString
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov eax, [sys_configSum]
	mov [esp], eax
	call Cvar_SetInt
	leave
	ret
	nop


;Sys_HasInfoChanged()
Sys_HasInfoChanged:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	call Sys_RegisterInfoDvars
	mov eax, [sys_configureGHz]
	cvtss2sd xmm2, [eax+0xc]
	movsd xmm1, qword [sys_info+0x8]
	movapd xmm0, xmm1
	mulsd xmm0, [_double_1_10000002]
	ucomisd xmm2, xmm0
	ja Sys_HasInfoChanged_10
	mulsd xmm1, [_double_0_89999998]
	ucomisd xmm1, xmm2
	ja Sys_HasInfoChanged_10
	mov eax, [sys_sysMB]
	mov ecx, [eax+0xc]
	mov edx, [sys_info+0x18]
	lea eax, [edx+0x20]
	cmp ecx, eax
	jg Sys_HasInfoChanged_10
	lea eax, [edx-0x20]
	cmp ecx, eax
	jge Sys_HasInfoChanged_20
Sys_HasInfoChanged_10:
	call Sys_ShouldUpdateForInfoChange
	movzx eax, al
	leave
	ret
Sys_HasInfoChanged_20:
	mov dword [esp+0x4], sys_info+0x1c
	mov eax, [sys_gpu]
	mov eax, [eax+0xc]
	mov [esp], eax
	call strcmp
	test eax, eax
	jnz Sys_HasInfoChanged_10
	leave
	ret
	add [eax], al


;Sys_GetClipboardData()
Sys_GetClipboardData:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x20
	lea eax, [ebp-0xc]
	mov [esp], eax
	call GetCurrentScrap
	test eax, eax
	jz Sys_GetClipboardData_10
Sys_GetClipboardData_20:
	xor ebx, ebx
Sys_GetClipboardData_40:
	mov eax, ebx
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
Sys_GetClipboardData_10:
	lea esi, [ebp-0x10]
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x54455854
	mov eax, [ebp-0xc]
	mov [esp], eax
	call GetScrapFlavorSize
	test eax, eax
	jnz Sys_GetClipboardData_20
	mov eax, [ebp-0x10]
	test eax, eax
	jle Sys_GetClipboardData_20
	add eax, 0x1
	mov [esp], eax
	call Z_MallocInternal
	mov ebx, eax
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x54455854
	mov eax, [ebp-0xc]
	mov [esp], eax
	call GetScrapFlavorData
	test eax, eax
	jnz Sys_GetClipboardData_30
	mov eax, [ebp-0x10]
	mov byte [ebx+eax], 0x0
	mov dword [esp+0x4], _cstring_
	mov [esp], ebx
	call strtok
	jmp Sys_GetClipboardData_40
Sys_GetClipboardData_30:
	mov [esp], ebx
	call Z_FreeInternal
	xor ebx, ebx
	jmp Sys_GetClipboardData_40


;Sys_LoadingKeepAlive()
Sys_LoadingKeepAlive:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	call R_CheckLostDevice
	mov dword [esp], 0x0
	call UpdateSystemActivity
	leave
	jmp AIL_UpdateAllSounds
	nop


;Sys_CheckCrashOrRerun()
Sys_CheckCrashOrRerun:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov eax, [sys_processSemaphoreFile]
	test eax, eax
	jz Sys_CheckCrashOrRerun_10
	cmp byte [eax], 0x0
	jnz Sys_CheckCrashOrRerun_20
Sys_CheckCrashOrRerun_10:
	mov eax, 0x1
Sys_CheckCrashOrRerun_70:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Sys_CheckCrashOrRerun_20:
	mov dword [esp+0x4], _cstring_rb
	mov [esp], eax
	call fopen
	mov esi, eax
	test eax, eax
	jz Sys_CheckCrashOrRerun_30
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x21
	mov dword [esp+0x4], 0x1
	lea ebx, [ebp-0x39]
	mov [esp], ebx
	call fread
	cmp eax, 0x21
	jz Sys_CheckCrashOrRerun_40
	mov [esp], esi
	call fclose
Sys_CheckCrashOrRerun_30:
	mov dword [esp+0x4], _cstring_wb
	mov eax, [sys_processSemaphoreFile]
	mov [esp], eax
	call fopen
	mov esi, eax
	test eax, eax
	jz Sys_CheckCrashOrRerun_10
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x21
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_0c65b5a5399d11dc
	call fwrite
	mov [esp], esi
	call fclose
	mov eax, 0x1
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Sys_CheckCrashOrRerun_40:
	mov [esp], esi
	call fclose
	mov edi, _cstring_0c65b5a5399d11dc
	mov ecx, 0x21
	cld
	mov esi, ebx
	repe cmpsb
	mov edx, 0x0
	jz Sys_CheckCrashOrRerun_50
	movzx edx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub edx, ecx
Sys_CheckCrashOrRerun_50:
	test edx, edx
	jnz Sys_CheckCrashOrRerun_10
	mov dword [esp+0xc], BuilderCallback
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], _cfstring_game
	mov dword [esp], _cfstring_safemode
	call _ZN10MacBuilder11BuildWindowEPK10__CFStringS2_hPFhP15OpaqueWindowPtrmE
	mov esi, eax
	test eax, eax
	jz Sys_CheckCrashOrRerun_30
	mov dword [esp], _cstring_win_improper_qui
	call Win_LocalizeRef
	mov [esp], eax
	call _ZN10MacStrings20TranslateToMacStringEPKc
	mov [esp+0x4], eax
	mov [esp], esi
	call _ZN10MacBuilder14SetWindowTitleEP15OpaqueWindowPtrPKc
	mov dword [esp], _cstring_win_improper_qui1
	call Win_LocalizeRef
	mov [esp], eax
	call _ZN10MacStrings20TranslateToMacStringEPKc
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1
	mov [esp], esi
	call _ZN10MacBuilder14SetControlTextEP15OpaqueWindowPtrlPKc
	mov [esp], esi
	call _ZN10MacBuilder14RunModalWindowEP15OpaqueWindowPtr
	mov ebx, eax
	mov [esp], esi
	call _ZN10MacBuilder13ReleaseWindowEP15OpaqueWindowPtr
	cmp ebx, 0x5965735f
	jz Sys_CheckCrashOrRerun_60
	cmp ebx, 0x4e6f5f5f
	jz Sys_CheckCrashOrRerun_30
	cmp ebx, 0x51756974
	jnz Sys_CheckCrashOrRerun_30
	xor eax, eax
	jmp Sys_CheckCrashOrRerun_70
Sys_CheckCrashOrRerun_60:
	call Com_ForceSafeMode
	jmp Sys_CheckCrashOrRerun_30
	nop


;Sys_DirectXFatalError()
Sys_DirectXFatalError:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov dword [esp], 0x9
	call Sys_EnterCriticalSection
	mov dword [esp], _cstring_win_directx_init
	call Win_LocalizeRef
	mov esi, eax
	mov dword [esp], _cstring_win_directx_init1
	call Win_LocalizeRef
	mov ebx, eax
	call GetActiveWindow
	mov dword [esp+0xc], 0x10
	mov [esp+0x8], esi
	mov [esp+0x4], ebx
	mov [esp], eax
	call MessageBoxA
	mov dword [esp], 0xffffffff
	call exit
	nop


;Sys_FreeClipboardData(char*)
Sys_FreeClipboardData:
	push ebp
	mov ebp, esp
	pop ebp
	jmp Z_FreeInternal
	nop
	add [eax], al


;Sys_QuitAndStartProcess(char const*, char const*)
Sys_QuitAndStartProcess:
	push ebp
	mov ebp, esp
	sub esp, 0x138
	mov byte [ebp-0x10c], 0x0
	mov eax, [ebp+0x8]
	mov [esp+0x10], eax
	lea eax, [ebp-0x10c]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_ss
	mov dword [esp+0x4], 0x400
	mov dword [esp], sys_exitCmdLine
	call Com_sprintf
	mov dword [esp+0x4], _cstring_quit
	mov dword [esp], 0x0
	call Cbuf_AddText
	leave
	ret
	nop


;Sys_OutOfMemErrorInternal(char const*, int)
Sys_OutOfMemErrorInternal:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov dword [esp], 0x9
	call Sys_EnterCriticalSection
	mov eax, [ebp+0xc]
	mov [esp+0xc], eax
	mov eax, [ebp+0x8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_out_of_memory_fi
	mov dword [esp], 0x10
	call Com_Printf
	mov dword [esp], _cstring_win_out_of_mem_t
	call Win_LocalizeRef
	mov esi, eax
	mov dword [esp], _cstring_win_out_of_mem_b
	call Win_LocalizeRef
	mov ebx, eax
	call GetActiveWindow
	mov dword [esp+0xc], 0x10
	mov [esp+0x8], esi
	mov [esp+0x4], ebx
	mov [esp], eax
	call MessageBoxA
	mov dword [esp], 0xffffffff
	call exit
	nop


;Sys_FastFileBlockedCallback()
Sys_FastFileBlockedCallback:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, clientUIActives
	cmp dword [eax+0xc], 0x7
	jz Sys_FastFileBlockedCallback_10
	call R_CheckLostDevice
	mov dword [esp], 0x0
	call UpdateSystemActivity
	leave
	jmp AIL_UpdateAllSounds
Sys_FastFileBlockedCallback_10:
	leave
	jmp SCR_UpdateLoadScreen


;Sys_HasConfigureChecksumChanged(int)
Sys_HasConfigureChecksumChanged:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0x8]
	call Sys_RegisterInfoDvars
	mov edx, [sys_configSum]
	mov eax, [edx+0xc]
	test eax, eax
	jnz Sys_HasConfigureChecksumChanged_10
	xor ebx, ebx
Sys_HasConfigureChecksumChanged_40:
	mov [esp+0x4], edi
	mov [esp], edx
	call Cvar_SetInt
Sys_HasConfigureChecksumChanged_50:
	mov eax, ebx
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Sys_HasConfigureChecksumChanged_10:
	cmp eax, edi
	jz Sys_HasConfigureChecksumChanged_20
	mov dword [esp], _cstring_win_configure_up
	call Win_LocalizeRef
	mov esi, eax
	mov dword [esp], _cstring_win_configure_up1
	call Win_LocalizeRef
	mov ebx, eax
	call GetActiveWindow
	mov dword [esp+0xc], 0x44
	mov [esp+0x8], esi
	mov [esp+0x4], ebx
	mov [esp], eax
	call MessageBoxA
	cmp eax, 0x6
	setz al
	mov edx, [sys_configSum]
	mov ecx, [edx+0xc]
	test ecx, ecx
	jnz Sys_HasConfigureChecksumChanged_30
	movzx ebx, al
	jmp Sys_HasConfigureChecksumChanged_40
Sys_HasConfigureChecksumChanged_20:
	xor ebx, ebx
	mov eax, ebx
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Sys_HasConfigureChecksumChanged_30:
	movzx ebx, al
	cmp edi, ecx
	jnz Sys_HasConfigureChecksumChanged_40
	jmp Sys_HasConfigureChecksumChanged_50


;Sys_Init()
Sys_Init:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov dword [esp], 0x1
	call timeBeginPeriod
	mov dword [esp+0x8], _ZZ8Sys_InitvE20Sys_In_Restart_f_VAR
	mov dword [esp+0x4], Sys_In_Restart_f
	mov dword [esp], _cstring_in_restart
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ8Sys_InitvE21Sys_Net_Restart_f_VAR
	mov dword [esp+0x4], Sys_Net_Restart_f
	mov dword [esp], _cstring_net_restart
	call Cmd_AddCommand
	mov dword [esp+0x8], sys_info+0x21d
	mov dword [esp+0x4], _cstring_cpu_vendor_is_s
	mov dword [esp], 0x10
	call Com_Printf
	mov dword [esp+0x8], sys_info+0x22a
	mov dword [esp+0x4], _cstring_cpu_name_is_s
	mov dword [esp], 0x10
	call Com_Printf
	mov edx, [sys_info+0x10]
	mov ebx, _cstring_s
	mov esi, _cstring_null
	cmp edx, 0x1
	mov eax, esi
	cmovnz eax, ebx
	mov [esp+0xc], eax
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_i_logical_cpus_r
	mov dword [esp], 0x10
	call Com_Printf
	mov eax, [sys_info+0x14]
	cmp eax, 0x1
	cmovz ebx, esi
	mov [esp+0xc], ebx
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_i_physical_cpus_
	mov dword [esp], 0x10
	call Com_Printf
	movsd xmm0, qword [sys_info]
	movsd [esp+0x8], xmm0
	mov dword [esp+0x4], _cstring_measured_cpu_spe1
	mov dword [esp], 0x10
	call Com_Printf
	movsd xmm0, qword [sys_info+0x8]
	movsd [esp+0x8], xmm0
	mov dword [esp+0x4], _cstring_total_cpu_perfor
	mov dword [esp], 0x10
	call Com_Printf
	mov eax, [sys_info+0x18]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_system_memory_is
	mov dword [esp], 0x10
	call Com_Printf
	mov dword [esp+0x8], sys_info+0x1c
	mov dword [esp+0x4], _cstring_video_card_is_s
	mov dword [esp], 0x10
	call Com_Printf
	cmp byte [sys_info+0x21c], 0x0
	mov eax, _cstring_not_
	cmovz esi, eax
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_streaming_simd_e
	mov dword [esp], 0x10
	call Com_Printf
	mov dword [esp+0x4], _cstring_1
	mov dword [esp], 0x10
	call Com_Printf
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp IN_Init
	add [eax], al


;Sys_Quit()
Sys_Quit:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x84
	mov dword [esp], 0x2
	call Sys_EnterCriticalSection
	mov dword [esp], 0x1
	call timeEndPeriod
	cmp byte [sys_exitCmdLine], 0x0
	jnz Sys_Quit_10
Sys_Quit_80:
	call IN_Shutdown
	call Key_Shutdown
	call Sys_DestroyConsole
	mov eax, [sys_processSemaphoreFile]
	mov [esp], eax
	call DeleteFileA
	call Win_ShutdownLocalization
	call RefreshQuitOnErrorCondition
	call Cvar_Shutdown
	call Cmd_Shutdown
	call Con_Shutdown
	call Com_ShutdownEvents
	mov dword [esp], 0x7
	call Sys_EnterCriticalSection
Sys_Quit_30:
	mov edx, [eventTail]
	cmp [eventHead], edx
	jle Sys_Quit_20
Sys_Quit_40:
	lea eax, [edx+0x1]
	mov [eventTail], eax
	movzx eax, dl
	lea eax, [eax+eax*2]
	mov eax, [eax*8+eventQue+0x14]
	test eax, eax
	jz Sys_Quit_30
	mov [esp], eax
	call Z_FreeInternal
	mov edx, [eventTail]
	cmp [eventHead], edx
	jg Sys_Quit_40
Sys_Quit_20:
	mov dword [esp], 0x7
	call Sys_LeaveCriticalSection
	call SL_Shutdown
	call Con_ShutdownChannels
	call _ZN14MacPreferences11SynchronizeEv
	mov dword [esp], 0x0
	call exit
Sys_Quit_10:
	lea ebx, [ebp-0x74]
	mov [esp], ebx
	call _ZN10MacFolders23GetApplicationFolderRefER5FSRef
	test eax, eax
	jnz Sys_Quit_50
	mov dword [esp+0x4], _cstring_3sp
	mov dword [esp], sys_exitCmdLine
	call strstr
	test eax, eax
	jz Sys_Quit_60
	mov [esp+0x8], ebx
	mov [esp+0x4], ebx
	mov dword [esp], 0x43443453
	call _ZN8MacTools15FindApplicationEmRK5FSRefRS0_
Sys_Quit_100:
	test al, al
	jnz Sys_Quit_70
Sys_Quit_90:
	mov eax, 0xffffffd5
Sys_Quit_50:
	mov [esp+0x8], eax
	mov dword [esp+0x4], sys_exitCmdLine
	mov dword [esp], _cstring_exe_err_couldnt_
	call va
	mov [esp+0x4], eax
	mov dword [esp], 0x2
	call Com_Error
	jmp Sys_Quit_80
Sys_Quit_70:
	mov dword [ebp-0x24], 0x0
	mov dword [ebp-0x20], 0x100
	mov [ebp-0x1c], ebx
	mov dword [ebp-0x18], 0x0
	mov dword [ebp-0x14], 0x0
	mov dword [ebp-0x10], 0x0
	mov dword [ebp-0xc], 0x0
	mov dword [esp+0x4], 0x0
	lea eax, [ebp-0x24]
	mov [esp], eax
	call LSOpenApplication
	test eax, eax
	jnz Sys_Quit_50
	jmp Sys_Quit_80
Sys_Quit_60:
	mov dword [esp+0x4], _cstring_3mp
	mov dword [esp], sys_exitCmdLine
	call strstr
	test eax, eax
	jz Sys_Quit_90
	mov [esp+0x8], ebx
	mov [esp+0x4], ebx
	mov dword [esp], 0x4344344d
	call _ZN8MacTools15FindApplicationEmRK5FSRefRS0_
	jmp Sys_Quit_100


;Sys_Error(char const*, ...)
Sys_Error:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x1024
	mov dword [esp], 0x2
	call Sys_EnterCriticalSection
	mov eax, com_errorEntered
	mov dword [eax], 0x1
	call Sys_SuspendOtherThreads
	lea eax, [ebp+0xc]
	mov [ebp-0xc], eax
	mov [esp+0xc], eax
	mov eax, [ebp+0x8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1000
	lea ebx, [ebp-0x100c]
	mov [esp], ebx
	call vsnprintf
	mov eax, com_dedicated
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	jz Sys_Error_10
	call Sys_IsMainThread
	test al, al
	jnz Sys_Error_20
Sys_Error_10:
	mov [esp], ebx
	call Sys_SetErrorText
	mov dword [esp], 0x0
	call exit
Sys_Error_20:
	call Sys_ShowConsole
	mov dword [esp], _cstring_2
	call Conbuf_AppendText
	mov [esp], ebx
	call Conbuf_AppendText
	mov dword [esp], _cstring_1
	call Conbuf_AppendText
	mov [esp], ebx
	call Sys_SetErrorText
	mov ebx, gConsoleRunning
Sys_Error_40:
	call _ZN14CMacGameEngine16ProcessAllEventsEv
	test al, al
	jnz Sys_Error_30
	cmp byte [ebx], 0x0
	jnz Sys_Error_40
Sys_Error_30:
	mov dword [esp], 0x0
	call exit
	nop


;Sys_Print(char const*)
Sys_Print:
	push ebp
	mov ebp, esp
	pop ebp
	jmp Conbuf_AppendTextInMainThread
	nop


;Initialized global or static variables of mac_main:
SECTION .data
_ZZ24Sys_GetSemaphoreFileNamevE18sSemaphoreFileName: dd _cstring_cod4mp, 0x0, 0x0, 0x0, 0x0, 0x0
eventHead: dd 0x0
eventTail: dd 0x0


;Initialized constant data of mac_main:
SECTION .rdata


;Zero initialized global or static variables of mac_main:
SECTION .bss
sys_cmdline: resb 0x400
sys_processSemaphoreFile: resb 0x20
sys_info: resb 0x260
sys_exitCmdLine: resb 0x400
sys_configSum: resb 0x4
sys_gpu: resb 0x4
sys_sysMB: resb 0x4
sys_configureGHz: resb 0x4
_ZZ8Sys_InitvE21Sys_Net_Restart_f_VAR: resb 0x14
_ZZ8Sys_InitvE20Sys_In_Restart_f_VAR: resb 0x5c
g_wv: resb 0x20
eventQue: resb 0x1800
sys_SSE: resb 0x60


;All CFStrings:

STRUC CFString
.isa: RESD 1
.flags: RESD 1
.str: RESD 1
.length: RESD 1
ENDSTRUC

SECTION .rdata
_cfstring_game:		ISTRUCT CFString
AT CFString.isa, dd 0
AT CFString.flags, dd 0x7c8
AT CFString.str dd _cstring_game
AT CFString.length dd 4
IEND

_cfstring_safemode:		ISTRUCT CFString
AT CFString.isa, dd 0
AT CFString.flags, dd 0x7c8
AT CFString.str dd _cstring_safemode
AT CFString.length dd 8
IEND




;All cstrings:
SECTION .rdata
_cstring_normalized_total:		db "Normalized total CPU power, based on cpu type, count, and speed; used in autoconfigure",0
_cstring_sys_configureghz:		db "sys_configureGHz",0
_cstring_physical_memory_:		db "Physical memory in the system",0
_cstring_sys_sysmb:		db "sys_sysMB",0
_cstring_gpu_description:		db "GPU description",0
_cstring_null:		db 0
_cstring_sys_gpu:		db "sys_gpu",0
_cstring_configuration_ch:		db "Configuration checksum",0
_cstring_sys_configsum:		db "sys_configSum",0
_cstring_operating_system:		db "Operating system allows Streaming SIMD Extensions",0
_cstring_sys_sse:		db "sys_SSE",0
_cstring_measured_cpu_spe:		db "Measured CPU speed",0
_cstring_sys_cpughz:		db "sys_cpuGHz",0
_cstring_cpu_name_descrip:		db "CPU name description",0
_cstring_sys_cpuname:		db "sys_cpuName",0
_cstring_win_computer_cha:		db "WIN_COMPUTER_CHANGE_TITLE",0
_cstring_win_computer_cha1:		db "WIN_COMPUTER_CHANGE_BODY",0
_cstring_working_director:		db "Working directory: %s",0ah,0
_cstring_readstats:		db "readStats",0ah,0
_cstring_unable_to_initia:		db "Unable to initialize punkbuster.  Punkbuster is disabled",0ah,0
_cstring_mpui_nopunkbuste:		db "MPUI_NOPUNKBUSTER",0
_cstring_quit:		db "quit",0ah,0
_cstring_sys_queevent_ove:		db "Sys_QueEvent: overflow",0ah,0
_cstring_:		db 0ah,0dh,008h,0
_cstring_rb:		db "rb",0
_cstring_wb:		db "wb",0
_cstring_0c65b5a5399d11dc:		db "0C65B5A5399D11DCA265000A95675086",0
_cstring_win_improper_qui:		db "WIN_IMPROPER_QUIT_TITLE",0
_cstring_win_improper_qui1:		db "WIN_IMPROPER_QUIT_BODY",0
_cstring_win_directx_init:		db "WIN_DIRECTX_INIT_TITLE",0
_cstring_win_directx_init1:		db "WIN_DIRECTX_INIT_BODY",0
_cstring_ss:		db 22h,"%s",5ch,"%s",22h,0
_cstring_out_of_memory_fi:		db "Out of memory: filename ",27h,"%s",27h,", line %d",0ah,0
_cstring_win_out_of_mem_t:		db "WIN_OUT_OF_MEM_TITLE",0
_cstring_win_out_of_mem_b:		db "WIN_OUT_OF_MEM_BODY",0
_cstring_win_configure_up:		db "WIN_CONFIGURE_UPDATED_TITLE",0
_cstring_win_configure_up1:		db "WIN_CONFIGURE_UPDATED_BODY",0
_cstring_in_restart:		db "in_restart",0
_cstring_net_restart:		db "net_restart",0
_cstring_cpu_vendor_is_s:		db "CPU vendor is ",22h,"%s",22h,0ah,0
_cstring_cpu_name_is_s:		db "CPU name is ",22h,"%s",22h,0ah,0
_cstring_s:		db "s",0
_cstring_i_logical_cpus_r:		db "%i logical CPU%s reported",0ah,0
_cstring_i_physical_cpus_:		db "%i physical CPU%s detected",0ah,0
_cstring_measured_cpu_spe1:		db "Measured CPU speed is %.2lf GHz",0ah,0
_cstring_total_cpu_perfor:		db "Total CPU performance is estimated as %.2lf GHz",0ah,0
_cstring_system_memory_is:		db "System memory is %i MB (capped at 1 GB)",0ah,0
_cstring_video_card_is_s:		db "Video card is ",22h,"%s",22h,0ah,0
_cstring_not_:		db "not ",0
_cstring_streaming_simd_e:		db "Streaming SIMD Extensions (SSE) %ssupported",0ah,0
_cstring_1:		db 0ah,0
_cstring_3sp:		db "3sp",0
_cstring_exe_err_couldnt_:		db "EXE_ERR_COULDNT_START_PROCESS",015h,"%s",0ah,"%08x",0
_cstring_3mp:		db "3mp",0
_cstring_2:		db 0ah,0ah,0
_cstring_cod4mp:		db "CoD4-MP",0
_cstring_game:		db "Game",0
_cstring_safemode:		db "SafeMode",0



;All constant floats and doubles:
SECTION .rdata
_double_1_10000002:		dq 0x3ff19999a0000000	; 1.1
_double_0_89999998:		dq 0x3fecccccc0000000	; 0.9

