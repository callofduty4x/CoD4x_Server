;Imports of cl_scrn_mp:
	extern Com_Printf
	extern R_BeginFrame
	extern SND_InitFXSounds
	extern clientUIActives
	extern Sys_IsMainThread
	extern R_BeginSharedCmdList
	extern R_AddCmdProjectionSet2D
	extern cls
	extern colorBlack
	extern R_AddCmdClearScreen
	extern Con_DrawConsole
	extern R_EndFrame
	extern R_IssueRenderCommands
	extern r_reflectionProbeGenerate
	extern clients
	extern R_BspGenerateReflections
	extern UI_UpdateTime
	extern UI_IsFullscreen
	extern Com_Error
	extern net_showprofile
	extern Net_DisplayProfile
	extern CL_UpdateSound
	extern R_BeginClientCmdList2D
	extern clientConnections
	extern CG_DrawActiveFrame
	extern R_AddCmdEndOfList
	extern CG_DrawFullScreenDebugOverlays
	extern CG_DrawUpperRightDebugInfo
	extern Key_IsCatcherActive
	extern UI_Refresh
	extern SND_StopSounds
	extern UI_DrawConnectScreen
	extern SCR_DrawCinematic
	extern CL_DrawLogo
	extern FS_FTell
	extern sprintf
	extern CL_LookupColor
	extern R_NormalizedTextScale
	extern scrPlaceView
	extern ScrPlace_ApplyRect
	extern R_AddCmdDrawText
	extern CL_SendCmd
	extern CL_IsCgameInitialized
	extern cmd_args
	extern strcpy
	extern atoi
	extern R_SyncRenderThread
	extern R_BeginCubemapShot
	extern R_ClearClientCmdList2D
	extern R_EndCubemapShot
	extern va
	extern R_SaveCubemapShot
	extern Q_stricmp
	extern atof
	extern R_LightingFromCubemapShots
	extern Sys_Milliseconds
	extern com_errorEntered
	extern Sys_LoadingKeepAlive
	extern UI_GetBlurRadius
	extern useFastFile
	extern R_TextHeight

;Exports of cl_scrn_mp:
	global s_lastUpdateScreenTime
	global CL_CubemapShotUsage
	global _ZZ16CL_CubemapShot_fvE10szShotName
	global SCR_UpdateFrame
	global CL_CubemapShot_f
	global SCR_UpdateRumble
	global SCR_UpdateScreen
	global CL_GetMenuBlurRadius
	global SCR_UpdateLoadScreen
	global SCR_DrawSmallStringExt
	global SCR_Init
	global scr_initialized
	global updateScreenCalled


SECTION .text


;CL_CubemapShotUsage()
CL_CubemapShotUsage:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x4], _cstring_syntax_cubemapsh
	mov dword [esp], 0x0
	call Com_Printf
	mov dword [esp+0x4], _cstring__size_must_be_a_
	mov dword [esp], 0x0
	call Com_Printf
	mov dword [esp+0x4], _cstring__screenshots_wil
	mov dword [esp], 0x0
	call Com_Printf
	mov dword [esp+0x8], 0x28
	mov dword [esp+0x4], _cstring__basefilename_mu
	mov dword [esp], 0x0
	call Com_Printf
	mov dword [esp+0x4], _cstring__if_lighting_is_
	mov dword [esp], 0x0
	call Com_Printf
	mov dword [esp+0x4], _cstring___this_takes_exp
	mov dword [esp], 0x0
	call Com_Printf
	mov dword [esp+0x4], _cstring___16_is_a_good_i
	mov dword [esp], 0x0
	call Com_Printf
	mov dword [esp+0x4], _cstring__if_fresnel_is_s
	mov dword [esp], 0x0
	call Com_Printf
	mov dword [esp+0x4], _cstring___n0_and_n1_are_
	mov dword [esp], 0x0
	call Com_Printf
	mov dword [esp+0x4], _cstring___the_index_of_r
	mov dword [esp], 0x0
	call Com_Printf
	mov dword [esp+0x4], _cstring___this_is_always
	mov dword [esp], 0x0
	call Com_Printf
	leave
	ret


;SCR_UpdateFrame()
SCR_UpdateFrame:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x45c
	call R_BeginFrame
	call SND_InitFXSounds
	mov ebx, clientUIActives
	cmp dword [ebx+0xc], 0x9
	jz SCR_UpdateFrame_10
SCR_UpdateFrame_190:
	xor edi, edi
SCR_UpdateFrame_160:
	call Sys_IsMainThread
	test al, al
	jz SCR_UpdateFrame_20
	test edi, edi
	jz SCR_UpdateFrame_30
SCR_UpdateFrame_20:
	call R_BeginSharedCmdList
	call R_AddCmdProjectionSet2D
	mov eax, cls
	mov edx, [eax+0x110]
	test edx, edx
	jnz SCR_UpdateFrame_40
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x3f800000
	mov eax, colorBlack
	mov [esp+0x4], eax
	mov dword [esp], 0x1
	call R_AddCmdClearScreen
SCR_UpdateFrame_130:
	mov eax, cls
	mov ecx, [eax+0x108]
	test ecx, ecx
	jz SCR_UpdateFrame_50
	mov eax, clientUIActives
	cmp dword [eax+0xc], 0x9
	jz SCR_UpdateFrame_60
SCR_UpdateFrame_170:
	mov dword [esp], 0x0
	call Con_DrawConsole
SCR_UpdateFrame_50:
	call R_EndFrame
	mov dword [esp], 0xffffffff
	call R_IssueRenderCommands
	mov eax, r_reflectionProbeGenerate
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz SCR_UpdateFrame_70
	test edi, edi
	jz SCR_UpdateFrame_70
	mov eax, clients
	cmp dword [eax+0x2fa0], 0x3e8
	jle SCR_UpdateFrame_70
	call R_BspGenerateReflections
SCR_UpdateFrame_70:
	add esp, 0x45c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SCR_UpdateFrame_40:
	mov eax, [eax+0x118]
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call UI_UpdateTime
	mov eax, clientUIActives
	mov ebx, [eax+0xc]
	mov dword [esp], 0x0
	call UI_IsFullscreen
	test eax, eax
	jz SCR_UpdateFrame_80
	test ebx, ebx
	js SCR_UpdateFrame_90
	cmp ebx, 0x8
	jle SCR_UpdateFrame_100
	cmp ebx, 0x9
	jz SCR_UpdateFrame_110
SCR_UpdateFrame_90:
	mov dword [esp+0x4], _cstring_scr_drawscreenfi
	mov dword [esp], 0x1
	call Com_Error
SCR_UpdateFrame_110:
	test edi, edi
	jz SCR_UpdateFrame_120
SCR_UpdateFrame_180:
	mov eax, net_showprofile
	mov eax, [eax]
	mov ebx, [eax+0xc]
	test ebx, ebx
	jz SCR_UpdateFrame_130
	mov dword [esp], 0x0
	call Net_DisplayProfile
	jmp SCR_UpdateFrame_130
SCR_UpdateFrame_80:
	cmp ebx, 0x9
	ja SCR_UpdateFrame_90
	jmp dword [ebx*4+SCR_UpdateFrame_jumptab_0]
SCR_UpdateFrame_30:
	call CL_UpdateSound
	jmp SCR_UpdateFrame_20
SCR_UpdateFrame_10:
	call R_BeginClientCmdList2D
	mov dword [esp], 0x0
	call UI_IsFullscreen
	test eax, eax
	setz al
	movzx eax, al
	mov [esp+0x14], eax
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x0
	mov eax, clientConnections
	mov ecx, [eax+0x4018c]
	test ecx, ecx
	setnz al
	movzx eax, al
	mov [esp+0x8], eax
	mov eax, clients
	mov eax, [eax+0x2fa0]
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call CG_DrawActiveFrame
	test eax, eax
	jz SCR_UpdateFrame_140
	test byte [ebx+0x4], 0x10
	jnz SCR_UpdateFrame_150
SCR_UpdateFrame_200:
	call R_AddCmdEndOfList
	mov edi, 0x1
	jmp SCR_UpdateFrame_160
SCR_UpdateFrame_60:
	mov dword [esp], 0x0
	call CG_DrawFullScreenDebugOverlays
	mov dword [esp], 0x0
	call CG_DrawUpperRightDebugInfo
	jmp SCR_UpdateFrame_170
SCR_UpdateFrame_120:
	mov dword [esp+0x4], 0x10
	mov dword [esp], 0x0
	call Key_IsCatcherActive
	test al, al
	jz SCR_UpdateFrame_180
	mov dword [esp], 0x0
	call UI_Refresh
	jmp SCR_UpdateFrame_180
SCR_UpdateFrame_100:
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x3f800000
	mov eax, colorBlack
	mov [esp+0x4], eax
	mov dword [esp], 0x1
	call R_AddCmdClearScreen
	jmp SCR_UpdateFrame_110
SCR_UpdateFrame_210:
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x3f800000
	mov eax, colorBlack
	mov [esp+0x4], eax
	mov dword [esp], 0x1
	call R_AddCmdClearScreen
	mov dword [esp], 0x0
	call SND_StopSounds
	call Sys_IsMainThread
	test al, al
	jz SCR_UpdateFrame_110
	mov eax, cls
	mov eax, [eax+0x2dc6b4]
	test eax, eax
	jz SCR_UpdateFrame_110
	mov dword [esp], 0x0
	call UI_Refresh
	mov dword [esp], 0x0
	call UI_DrawConnectScreen
	jmp SCR_UpdateFrame_110
SCR_UpdateFrame_220:
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x3f800000
	mov eax, colorBlack
	mov [esp+0x4], eax
	mov dword [esp], 0x1
	call R_AddCmdClearScreen
	mov dword [esp], 0x0
	call SCR_DrawCinematic
	jmp SCR_UpdateFrame_110
SCR_UpdateFrame_230:
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x3f800000
	mov eax, colorBlack
	mov [esp+0x4], eax
	mov dword [esp], 0x1
	call R_AddCmdClearScreen
	mov dword [esp], 0x0
	call CL_DrawLogo
	jmp SCR_UpdateFrame_110
SCR_UpdateFrame_240:
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x3f800000
	mov eax, colorBlack
	mov [esp+0x4], eax
	mov dword [esp], 0x1
	call R_AddCmdClearScreen
	mov dword [esp], 0x0
	call UI_Refresh
	mov dword [esp], 0x0
	call UI_DrawConnectScreen
	jmp SCR_UpdateFrame_180
SCR_UpdateFrame_250:
	mov ebx, clientConnections
	mov esi, [ebx+0x40188]
	test esi, esi
	jz SCR_UpdateFrame_110
	mov eax, [ebx+0x401a0]
	mov [esp], eax
	call FS_FTell
	lea edx, [eax+0x3ff]
	cmp eax, 0xffffffff
	cmovle eax, edx
	sar eax, 0xa
	mov [esp+0xc], eax
	lea eax, [ebx+0x40148]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_recording_s_ik
	lea eax, [ebp-0x438]
	mov [esp], eax
	call sprintf
	lea ebx, [ebp-0x38]
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x37
	mov dword [esp], 0x0
	call CL_LookupColor
	mov dword [ebp-0x1c], 0x40a00000
	mov dword [ebp-0x20], 0x43ef8000
	mov dword [esp+0x4], 0x3eaaaaab
	mov esi, cls
	mov eax, [esi+0x2dbff8]
	mov [esp], eax
	call R_NormalizedTextScale
	fst dword [ebp-0x24]
	fstp dword [ebp-0x28]
	mov dword [esp+0x18], 0x1
	mov dword [esp+0x14], 0x1
	lea eax, [ebp-0x28]
	mov [esp+0x10], eax
	lea eax, [ebp-0x24]
	mov [esp+0xc], eax
	lea eax, [ebp-0x20]
	mov [esp+0x8], eax
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov eax, scrPlaceView
	mov [esp], eax
	call ScrPlace_ApplyRect
	mov dword [esp+0x24], 0x0
	mov [esp+0x20], ebx
	mov dword [esp+0x1c], 0x0
	mov eax, [ebp-0x28]
	mov [esp+0x18], eax
	mov eax, [ebp-0x24]
	mov [esp+0x14], eax
	mov eax, [ebp-0x20]
	mov [esp+0x10], eax
	mov eax, [ebp-0x1c]
	mov [esp+0xc], eax
	mov eax, [esi+0x2dbff8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x7fffffff
	lea eax, [ebp-0x438]
	mov [esp], eax
	call R_AddCmdDrawText
	jmp SCR_UpdateFrame_110
SCR_UpdateFrame_140:
	mov dword [esp], 0x0
	call CL_SendCmd
	jmp SCR_UpdateFrame_190
SCR_UpdateFrame_150:
	mov eax, cls
	mov eax, [eax+0x118]
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call UI_UpdateTime
	mov dword [esp], 0x0
	call UI_Refresh
	jmp SCR_UpdateFrame_200
	
	
SCR_UpdateFrame_jumptab_0:
	dd SCR_UpdateFrame_210
	dd SCR_UpdateFrame_220
	dd SCR_UpdateFrame_230
	dd SCR_UpdateFrame_240
	dd SCR_UpdateFrame_240
	dd SCR_UpdateFrame_240
	dd SCR_UpdateFrame_240
	dd SCR_UpdateFrame_240
	dd SCR_UpdateFrame_240
	dd SCR_UpdateFrame_250


;CL_CubemapShot_f()
CL_CubemapShot_f:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xbc
	mov dword [esp], 0x0
	call CL_IsCgameInitialized
	test eax, eax
	jz CL_CubemapShot_f_10
	mov ebx, cmd_args
	mov eax, [ebx]
	cmp dword [ebx+eax*4+0x44], 0x2
	jg CL_CubemapShot_f_20
CL_CubemapShot_f_30:
	call CL_CubemapShotUsage
CL_CubemapShot_f_100:
	add esp, 0xbc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CL_CubemapShot_f_20:
	mov eax, [ebx+eax*4+0x64]
	mov edx, [eax+0x8]
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, edx
	repne scasb
	not ecx
	sub ecx, 0x1
	cmp ecx, 0x28
	ja CL_CubemapShot_f_30
	mov [esp+0x4], edx
	lea eax, [ebp-0x64]
	mov [esp], eax
	call strcpy
	mov eax, [ebx]
	cmp dword [ebx+eax*4+0x44], 0x1
	jle CL_CubemapShot_f_40
	mov eax, [ebx+eax*4+0x64]
	mov eax, [eax+0x4]
CL_CubemapShot_f_110:
	mov [esp], eax
	call atoi
	mov edi, eax
	lea eax, [eax-0x4]
	cmp eax, 0x3fc
	ja CL_CubemapShot_f_30
	lea eax, [edi-0x1]
	test eax, edi
	jnz CL_CubemapShot_f_30
	xor eax, eax
	mov [ebp-0x24], eax
	mov [ebp-0x20], eax
	mov [ebp-0x1c], eax
	mov ebx, cmd_args
	mov edx, [ebx]
	mov eax, [ebx+edx*4+0x44]
	cmp eax, 0x7
	jz CL_CubemapShot_f_50
	cmp eax, 0x6
	jz CL_CubemapShot_f_60
	cmp eax, 0x3
	jnz CL_CubemapShot_f_30
	mov byte [ebp-0x71], 0x0
	movss xmm0, dword [_float_1_00000000]
	movss [ebp-0x70], xmm0
	movss xmm0, dword [_float_1_33299994]
	movss [ebp-0x6c], xmm0
CL_CubemapShot_f_150:
	call R_SyncRenderThread
	mov ebx, 0x1
	mov esi, clients
CL_CubemapShot_f_70:
	mov dword [esp+0x4], 0x1
	mov [esp], edi
	call R_BeginCubemapShot
	call R_BeginFrame
	call R_BeginSharedCmdList
	call R_ClearClientCmdList2D
	mov dword [esp+0x14], 0x1
	mov [esp+0x10], edi
	mov [esp+0xc], ebx
	mov eax, clientConnections
	mov edx, [eax+0x4018c]
	test edx, edx
	setnz al
	movzx eax, al
	mov [esp+0x8], eax
	mov eax, [esi+0x2fa0]
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call CG_DrawActiveFrame
	call R_EndFrame
	mov dword [esp], 0xffffffff
	call R_IssueRenderCommands
	mov [esp], ebx
	call R_EndCubemapShot
	add ebx, 0x1
	cmp ebx, 0x7
	jnz CL_CubemapShot_f_70
	cmp byte [ebp-0x71], 0x0
	jnz CL_CubemapShot_f_80
CL_CubemapShot_f_190:
	mov ebx, 0x1
	mov edi, _ZZ16CL_CubemapShot_fvE10szShotName
CL_CubemapShot_f_90:
	mov eax, [edi-0x10]
	mov [esp+0x8], eax
	lea eax, [ebp-0x64]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_envsstga
	call va
	movss xmm0, dword [ebp-0x6c]
	movss [esp+0xc], xmm0
	movss xmm0, dword [ebp-0x70]
	movss [esp+0x8], xmm0
	mov [esp+0x4], ebx
	mov [esp], eax
	call R_SaveCubemapShot
	add ebx, 0x1
	add edi, 0x4
	cmp ebx, 0x7
	jnz CL_CubemapShot_f_90
	jmp CL_CubemapShot_f_100
CL_CubemapShot_f_10:
	mov dword [esp+0x4], _cstring_must_be_in_a_map
	mov dword [esp], 0x0
	call Com_Printf
	add esp, 0xbc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CL_CubemapShot_f_40:
	mov eax, _cstring_null
	jmp CL_CubemapShot_f_110
CL_CubemapShot_f_50:
	mov dword [esp+0x4], _cstring_lighting
	mov eax, [ebx+edx*4+0x64]
	mov eax, [eax+0xc]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jnz CL_CubemapShot_f_30
	mov eax, [ebx]
	cmp dword [ebx+eax*4+0x44], 0x4
	jg CL_CubemapShot_f_120
	mov eax, _cstring_null
CL_CubemapShot_f_220:
	mov [esp], eax
	call atof
	fstp qword [ebp-0xa0]
	cvtsd2ss xmm0, [ebp-0xa0]
	movss [ebp-0x24], xmm0
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x5
	jg CL_CubemapShot_f_130
	mov eax, _cstring_null
CL_CubemapShot_f_210:
	mov [esp], eax
	call atof
	fstp qword [ebp-0x98]
	cvtsd2ss xmm0, [ebp-0x98]
	movss [ebp-0x20], xmm0
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x6
	jg CL_CubemapShot_f_140
	mov eax, _cstring_null
CL_CubemapShot_f_200:
	mov [esp], eax
	call atof
	fstp qword [ebp-0x90]
	cvtsd2ss xmm0, [ebp-0x90]
	movss [ebp-0x1c], xmm0
	mov byte [ebp-0x71], 0x1
	movss xmm0, dword [_float_1_00000000]
	movss [ebp-0x70], xmm0
	movss xmm0, dword [_float_1_33299994]
	movss [ebp-0x6c], xmm0
	jmp CL_CubemapShot_f_150
CL_CubemapShot_f_60:
	mov dword [esp+0x4], _cstring_fresnel
	mov eax, [ebx+edx*4+0x64]
	mov eax, [eax+0xc]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jnz CL_CubemapShot_f_30
	mov eax, [ebx]
	cmp dword [ebx+eax*4+0x44], 0x4
	jg CL_CubemapShot_f_160
	mov eax, _cstring_null
CL_CubemapShot_f_240:
	mov [esp], eax
	call atof
	fstp qword [ebp-0x88]
	cvtsd2ss xmm0, [ebp-0x88]
	movss [ebp-0x70], xmm0
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x5
	jg CL_CubemapShot_f_170
	mov eax, _cstring_null
CL_CubemapShot_f_230:
	mov [esp], eax
	call atof
	fstp qword [ebp-0x80]
	cvtsd2ss xmm0, [ebp-0x80]
	movss [ebp-0x6c], xmm0
	movss xmm0, dword [ebp-0x70]
	ucomiss xmm0, [_float_1_00000000]
	jp CL_CubemapShot_f_180
	jb CL_CubemapShot_f_30
CL_CubemapShot_f_180:
	movss xmm0, dword [_float_1_00000000]
	ucomiss xmm0, [ebp-0x6c]
	ja CL_CubemapShot_f_30
	mov byte [ebp-0x71], 0x0
	jmp CL_CubemapShot_f_150
CL_CubemapShot_f_80:
	lea eax, [ebp-0x24]
	mov [esp], eax
	call R_LightingFromCubemapShots
	jmp CL_CubemapShot_f_190
CL_CubemapShot_f_140:
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x18]
	jmp CL_CubemapShot_f_200
CL_CubemapShot_f_130:
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x14]
	jmp CL_CubemapShot_f_210
CL_CubemapShot_f_120:
	mov eax, [ebx+eax*4+0x64]
	mov eax, [eax+0x10]
	jmp CL_CubemapShot_f_220
CL_CubemapShot_f_170:
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x14]
	jmp CL_CubemapShot_f_230
CL_CubemapShot_f_160:
	mov eax, [ebx+eax*4+0x64]
	mov eax, [eax+0x10]
	jmp CL_CubemapShot_f_240


;SCR_UpdateRumble()
SCR_UpdateRumble:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop


;SCR_UpdateScreen()
SCR_UpdateScreen:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x4
	cmp byte [updateScreenCalled], 0x0
	jnz SCR_UpdateScreen_10
	mov eax, clientUIActives
	mov eax, [eax+0xc]
	cmp eax, 0x8
	jg SCR_UpdateScreen_20
	mov ebx, 0x21
	cmp eax, 0x7
	mov eax, 0x10
	cmovl ebx, eax
	call Sys_Milliseconds
	mov edx, eax
	sub eax, [s_lastUpdateScreenTime]
	cmp ebx, eax
	jg SCR_UpdateScreen_10
	mov [s_lastUpdateScreenTime], edx
SCR_UpdateScreen_20:
	mov eax, clientUIActives
	cmp dword [eax+0xc], 0x7
	jz SCR_UpdateScreen_30
	mov eax, [scr_initialized]
	test eax, eax
	jz SCR_UpdateScreen_10
SCR_UpdateScreen_50:
	mov eax, com_errorEntered
	mov ebx, [eax]
	test ebx, ebx
	jz SCR_UpdateScreen_40
SCR_UpdateScreen_10:
	add esp, 0x4
	pop ebx
	pop ebp
	ret
SCR_UpdateScreen_40:
	mov byte [updateScreenCalled], 0x1
	call SCR_UpdateFrame
	mov byte [updateScreenCalled], 0x0
	add esp, 0x4
	pop ebx
	pop ebp
	ret
SCR_UpdateScreen_30:
	call Sys_LoadingKeepAlive
	mov eax, [scr_initialized]
	test eax, eax
	jnz SCR_UpdateScreen_50
	jmp SCR_UpdateScreen_10


;CL_GetMenuBlurRadius(int)
CL_GetMenuBlurRadius:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov dword [esp+0x4], 0x10
	mov [esp], ebx
	call Key_IsCatcherActive
	test al, al
	jz CL_GetMenuBlurRadius_10
	mov eax, cls
	mov eax, [eax+0x110]
	test eax, eax
	jnz CL_GetMenuBlurRadius_20
CL_GetMenuBlurRadius_10:
	fldz
	add esp, 0x14
	pop ebx
	pop ebp
	ret
CL_GetMenuBlurRadius_20:
	mov [ebp+0x8], ebx
	add esp, 0x14
	pop ebx
	pop ebp
	jmp UI_GetBlurRadius


;SCR_UpdateLoadScreen()
SCR_UpdateLoadScreen:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x4
	mov eax, useFastFile
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz SCR_UpdateLoadScreen_10
	cmp byte [updateScreenCalled], 0x0
	jnz SCR_UpdateLoadScreen_10
	mov eax, clientUIActives
	mov eax, [eax+0xc]
	cmp eax, 0x8
	jg SCR_UpdateLoadScreen_20
	mov ebx, 0x21
	cmp eax, 0x7
	mov eax, 0x10
	cmovl ebx, eax
	call Sys_Milliseconds
	mov edx, eax
	sub eax, [s_lastUpdateScreenTime]
	cmp ebx, eax
	jg SCR_UpdateLoadScreen_10
	mov [s_lastUpdateScreenTime], edx
SCR_UpdateLoadScreen_20:
	mov eax, clientUIActives
	cmp dword [eax+0xc], 0x7
	jz SCR_UpdateLoadScreen_30
SCR_UpdateLoadScreen_50:
	mov eax, [scr_initialized]
	test eax, eax
	jz SCR_UpdateLoadScreen_10
	mov eax, com_errorEntered
	mov eax, [eax]
	test eax, eax
	jz SCR_UpdateLoadScreen_40
SCR_UpdateLoadScreen_10:
	add esp, 0x4
	pop ebx
	pop ebp
	ret
SCR_UpdateLoadScreen_40:
	mov byte [updateScreenCalled], 0x1
	call SCR_UpdateFrame
	mov byte [updateScreenCalled], 0x0
	add esp, 0x4
	pop ebx
	pop ebp
	ret
SCR_UpdateLoadScreen_30:
	call Sys_LoadingKeepAlive
	jmp SCR_UpdateLoadScreen_50
	add [eax], al


;SCR_DrawSmallStringExt(int, int, char const*, float const*)
SCR_DrawSmallStringExt:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x34
	mov ebx, cls
	mov eax, [ebx+0x2dbff8]
	mov [esp], eax
	call R_TextHeight
	mov dword [esp+0x24], 0x0
	mov edx, [ebp+0x14]
	mov [esp+0x20], edx
	mov dword [esp+0x1c], 0x0
	mov edx, 0x3f800000
	mov [esp+0x18], edx
	mov [esp+0x14], edx
	cvtsi2ss xmm0, dword [ebp+0xc]
	cvtsi2ss xmm1, eax
	addss xmm0, xmm1
	movss [esp+0x10], xmm0
	cvtsi2ss xmm0, dword [ebp+0x8]
	movss [esp+0xc], xmm0
	mov eax, [ebx+0x2dbff8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x7fffffff
	mov eax, [ebp+0x10]
	mov [esp], eax
	call R_AddCmdDrawText
	add esp, 0x34
	pop ebx
	pop ebp
	ret


;SCR_Init()
SCR_Init:
	push ebp
	mov ebp, esp
	mov dword [scr_initialized], 0x1
	pop ebp
	ret
	nop


;Initialized global or static variables of cl_scrn_mp:
SECTION .data
_ZZ16CL_CubemapShot_fvE10szShotName: dd _cstring__rt, _cstring__lf, _cstring__bk, _cstring__ft, _cstring__up, _cstring__dn, 0x0
updateScreenCalled: dd 0x0


;Initialized constant data of cl_scrn_mp:
SECTION .rdata


;Zero initialized global or static variables of cl_scrn_mp:
SECTION .bss
s_lastUpdateScreenTime: resb 0x80
scr_initialized: resb 0x4


;All cstrings:
SECTION .rdata
_cstring_syntax_cubemapsh:		db "Syntax: cubemapShot size basefilename [lighting r g b | fresnel n0 n1]",0ah,0
_cstring__size_must_be_a_:		db "* size must be a power of 2 that is at least 4 and not more than 1024.",0ah,0
_cstring__screenshots_wil:		db "* screenshots will be written to ",27h,"env/basefilename_*.tga",27h,0ah,0
_cstring__basefilename_mu:		db "* basefilename must not exceed %i chars",0ah,0
_cstring__if_lighting_is_:		db "* If ",27h,"lighting",27h," is specified, a diffuse environment-based lighting cubemap is generated.",0ah,0
_cstring___this_takes_exp:		db "  This takes exponentially longer to make larger image sizes.",0ah,0
_cstring___16_is_a_good_i:		db "  16 is a good iteration size.  32 is a good final image size.",0ah,0
_cstring__if_fresnel_is_s:		db "* If ",27h,"fresnel",27h," is specified, the alpha channel of the cubemap contains the reflection factor.",0ah,0
_cstring___n0_and_n1_are_:		db "  n0 and n1 are the index of refraction of the ",27h,"air",27h," and ",27h,"water",27h," surfaces, respectively.",0ah,0
_cstring___the_index_of_r:		db "  The index of refraction must always be 1 or greater.",0ah,0
_cstring___this_is_always:		db "  This is always calculated, and defaults to air-water interface (n0 = 1, n1 = 1.333).",0ah,0
_cstring_scr_drawscreenfi:		db 015h,"SCR_DrawScreenField: bad clcState",0
_cstring_recording_s_ik:		db "RECORDING %s: %ik",0
_cstring_envsstga:		db "env/%s%s.tga",0
_cstring_must_be_in_a_map:		db "must be in a map to use this command",0ah,0
_cstring_null:		db 0
_cstring_lighting:		db "lighting",0
_cstring_fresnel:		db "fresnel",0
_cstring__rt:		db "_rt",0
_cstring__lf:		db "_lf",0
_cstring__bk:		db "_bk",0
_cstring__ft:		db "_ft",0
_cstring__up:		db "_up",0
_cstring__dn:		db "_dn",0



;All constant floats and doubles:
SECTION .rdata
_float_1_00000000:		dd 0x3f800000	; 1
_float_1_33299994:		dd 0x3faa9fbe	; 1.333

