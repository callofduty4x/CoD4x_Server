;Imports of cl_scrn_mp:
	extern _Z10Com_PrintfiPKcz
	extern _Z12R_BeginFramev
	extern _Z16SND_InitFXSoundsv
	extern clientUIActives
	extern _Z16Sys_IsMainThreadv
	extern _Z20R_BeginSharedCmdListv
	extern _Z23R_AddCmdProjectionSet2Dv
	extern cls
	extern colorBlack
	extern _Z19R_AddCmdClearScreeniPKffh
	extern _Z15Con_DrawConsolei
	extern _Z10R_EndFramev
	extern _Z21R_IssueRenderCommandsj
	extern r_reflectionProbeGenerate
	extern clients
	extern _Z24R_BspGenerateReflectionsv
	extern _Z13UI_UpdateTimeii
	extern _Z15UI_IsFullscreeni
	extern _Z9Com_Error11errorParm_tPKcz
	extern net_showprofile
	extern _Z18Net_DisplayProfilei
	extern _Z14CL_UpdateSoundv
	extern _Z22R_BeginClientCmdList2Dv
	extern clientConnections
	extern _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii
	extern _Z17R_AddCmdEndOfListv
	extern _Z30CG_DrawFullScreenDebugOverlaysi
	extern _Z26CG_DrawUpperRightDebugInfoi
	extern _Z19Key_IsCatcherActiveii
	extern _Z10UI_Refreshi
	extern _Z14SND_StopSounds20snd_stopsounds_arg_t
	extern _Z20UI_DrawConnectScreeni
	extern _Z17SCR_DrawCinematici
	extern _Z11CL_DrawLogoi
	extern _Z8FS_FTelli
	extern sprintf
	extern _Z14CL_LookupColorihPf
	extern _Z21R_NormalizedTextScaleP6Font_sf
	extern scrPlaceView
	extern _Z18ScrPlace_ApplyRectPK15ScreenPlacementPfS2_S2_S2_ii
	extern _Z16R_AddCmdDrawTextPKciP6Font_sfffffPKfi
	extern _Z10CL_SendCmdi
	extern _Z21CL_IsCgameInitializedi
	extern cmd_args
	extern strcpy
	extern atoi
	extern _Z18R_SyncRenderThreadv
	extern _Z18R_BeginCubemapShotii
	extern _Z22R_ClearClientCmdList2Dv
	extern _Z16R_EndCubemapShot11CubemapShot
	extern _Z2vaPKcz
	extern _Z17R_SaveCubemapShotPKc11CubemapShotff
	extern _Z9I_stricmpPKcS0_
	extern atof
	extern _Z26R_LightingFromCubemapShotsPKf
	extern _Z16Sys_Millisecondsv
	extern com_errorEntered
	extern _Z20Sys_LoadingKeepAlivev
	extern _Z16UI_GetBlurRadiusi
	extern useFastFile
	extern _Z12R_TextHeightP6Font_s

;Exports of cl_scrn_mp:
	global s_lastUpdateScreenTime
	global _Z19CL_CubemapShotUsagev
	global _ZZ16CL_CubemapShot_fvE10szShotName
	global _Z15SCR_UpdateFramev
	global _Z16CL_CubemapShot_fv
	global _Z16SCR_UpdateRumblev
	global _Z16SCR_UpdateScreenv
	global _Z20CL_GetMenuBlurRadiusi
	global _Z20SCR_UpdateLoadScreenv
	global _Z22SCR_DrawSmallStringExtiiPKcPKf
	global _Z8SCR_Initv
	global scr_initialized
	global updateScreenCalled


SECTION .text


;CL_CubemapShotUsage()
_Z19CL_CubemapShotUsagev:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x4], _cstring_syntax_cubemapsh
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	mov dword [esp+0x4], _cstring__size_must_be_a_
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	mov dword [esp+0x4], _cstring__screenshots_wil
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	mov dword [esp+0x8], 0x28
	mov dword [esp+0x4], _cstring__basefilename_mu
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	mov dword [esp+0x4], _cstring__if_lighting_is_
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	mov dword [esp+0x4], _cstring___this_takes_exp
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	mov dword [esp+0x4], _cstring___16_is_a_good_i
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	mov dword [esp+0x4], _cstring__if_fresnel_is_s
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	mov dword [esp+0x4], _cstring___n0_and_n1_are_
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	mov dword [esp+0x4], _cstring___the_index_of_r
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	mov dword [esp+0x4], _cstring___this_is_always
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	leave
	ret


;SCR_UpdateFrame()
_Z15SCR_UpdateFramev:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x45c
	call _Z12R_BeginFramev
	call _Z16SND_InitFXSoundsv
	mov ebx, clientUIActives
	cmp dword [ebx+0xc], 0x9
	jz _Z15SCR_UpdateFramev_10
_Z15SCR_UpdateFramev_190:
	xor edi, edi
_Z15SCR_UpdateFramev_160:
	call _Z16Sys_IsMainThreadv
	test al, al
	jz _Z15SCR_UpdateFramev_20
	test edi, edi
	jz _Z15SCR_UpdateFramev_30
_Z15SCR_UpdateFramev_20:
	call _Z20R_BeginSharedCmdListv
	call _Z23R_AddCmdProjectionSet2Dv
	mov eax, cls
	mov edx, [eax+0x110]
	test edx, edx
	jnz _Z15SCR_UpdateFramev_40
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x3f800000
	mov eax, colorBlack
	mov [esp+0x4], eax
	mov dword [esp], 0x1
	call _Z19R_AddCmdClearScreeniPKffh
_Z15SCR_UpdateFramev_130:
	mov eax, cls
	mov ecx, [eax+0x108]
	test ecx, ecx
	jz _Z15SCR_UpdateFramev_50
	mov eax, clientUIActives
	cmp dword [eax+0xc], 0x9
	jz _Z15SCR_UpdateFramev_60
_Z15SCR_UpdateFramev_170:
	mov dword [esp], 0x0
	call _Z15Con_DrawConsolei
_Z15SCR_UpdateFramev_50:
	call _Z10R_EndFramev
	mov dword [esp], 0xffffffff
	call _Z21R_IssueRenderCommandsj
	mov eax, r_reflectionProbeGenerate
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z15SCR_UpdateFramev_70
	test edi, edi
	jz _Z15SCR_UpdateFramev_70
	mov eax, clients
	cmp dword [eax+0x2fa0], 0x3e8
	jle _Z15SCR_UpdateFramev_70
	call _Z24R_BspGenerateReflectionsv
_Z15SCR_UpdateFramev_70:
	add esp, 0x45c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z15SCR_UpdateFramev_40:
	mov eax, [eax+0x118]
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call _Z13UI_UpdateTimeii
	mov eax, clientUIActives
	mov ebx, [eax+0xc]
	mov dword [esp], 0x0
	call _Z15UI_IsFullscreeni
	test eax, eax
	jz _Z15SCR_UpdateFramev_80
	test ebx, ebx
	js _Z15SCR_UpdateFramev_90
	cmp ebx, 0x8
	jle _Z15SCR_UpdateFramev_100
	cmp ebx, 0x9
	jz _Z15SCR_UpdateFramev_110
_Z15SCR_UpdateFramev_90:
	mov dword [esp+0x4], _cstring_scr_drawscreenfi
	mov dword [esp], 0x1
	call _Z9Com_Error11errorParm_tPKcz
_Z15SCR_UpdateFramev_110:
	test edi, edi
	jz _Z15SCR_UpdateFramev_120
_Z15SCR_UpdateFramev_180:
	mov eax, net_showprofile
	mov eax, [eax]
	mov ebx, [eax+0xc]
	test ebx, ebx
	jz _Z15SCR_UpdateFramev_130
	mov dword [esp], 0x0
	call _Z18Net_DisplayProfilei
	jmp _Z15SCR_UpdateFramev_130
_Z15SCR_UpdateFramev_80:
	cmp ebx, 0x9
	ja _Z15SCR_UpdateFramev_90
	jmp dword [ebx*4+_Z15SCR_UpdateFramev_jumptab_0]
_Z15SCR_UpdateFramev_30:
	call _Z14CL_UpdateSoundv
	jmp _Z15SCR_UpdateFramev_20
_Z15SCR_UpdateFramev_10:
	call _Z22R_BeginClientCmdList2Dv
	mov dword [esp], 0x0
	call _Z15UI_IsFullscreeni
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
	call _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii
	test eax, eax
	jz _Z15SCR_UpdateFramev_140
	test byte [ebx+0x4], 0x10
	jnz _Z15SCR_UpdateFramev_150
_Z15SCR_UpdateFramev_200:
	call _Z17R_AddCmdEndOfListv
	mov edi, 0x1
	jmp _Z15SCR_UpdateFramev_160
_Z15SCR_UpdateFramev_60:
	mov dword [esp], 0x0
	call _Z30CG_DrawFullScreenDebugOverlaysi
	mov dword [esp], 0x0
	call _Z26CG_DrawUpperRightDebugInfoi
	jmp _Z15SCR_UpdateFramev_170
_Z15SCR_UpdateFramev_120:
	mov dword [esp+0x4], 0x10
	mov dword [esp], 0x0
	call _Z19Key_IsCatcherActiveii
	test al, al
	jz _Z15SCR_UpdateFramev_180
	mov dword [esp], 0x0
	call _Z10UI_Refreshi
	jmp _Z15SCR_UpdateFramev_180
_Z15SCR_UpdateFramev_100:
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x3f800000
	mov eax, colorBlack
	mov [esp+0x4], eax
	mov dword [esp], 0x1
	call _Z19R_AddCmdClearScreeniPKffh
	jmp _Z15SCR_UpdateFramev_110
_Z15SCR_UpdateFramev_210:
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x3f800000
	mov eax, colorBlack
	mov [esp+0x4], eax
	mov dword [esp], 0x1
	call _Z19R_AddCmdClearScreeniPKffh
	mov dword [esp], 0x0
	call _Z14SND_StopSounds20snd_stopsounds_arg_t
	call _Z16Sys_IsMainThreadv
	test al, al
	jz _Z15SCR_UpdateFramev_110
	mov eax, cls
	mov eax, [eax+0x2dc6b4]
	test eax, eax
	jz _Z15SCR_UpdateFramev_110
	mov dword [esp], 0x0
	call _Z10UI_Refreshi
	mov dword [esp], 0x0
	call _Z20UI_DrawConnectScreeni
	jmp _Z15SCR_UpdateFramev_110
_Z15SCR_UpdateFramev_220:
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x3f800000
	mov eax, colorBlack
	mov [esp+0x4], eax
	mov dword [esp], 0x1
	call _Z19R_AddCmdClearScreeniPKffh
	mov dword [esp], 0x0
	call _Z17SCR_DrawCinematici
	jmp _Z15SCR_UpdateFramev_110
_Z15SCR_UpdateFramev_230:
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x3f800000
	mov eax, colorBlack
	mov [esp+0x4], eax
	mov dword [esp], 0x1
	call _Z19R_AddCmdClearScreeniPKffh
	mov dword [esp], 0x0
	call _Z11CL_DrawLogoi
	jmp _Z15SCR_UpdateFramev_110
_Z15SCR_UpdateFramev_240:
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x3f800000
	mov eax, colorBlack
	mov [esp+0x4], eax
	mov dword [esp], 0x1
	call _Z19R_AddCmdClearScreeniPKffh
	mov dword [esp], 0x0
	call _Z10UI_Refreshi
	mov dword [esp], 0x0
	call _Z20UI_DrawConnectScreeni
	jmp _Z15SCR_UpdateFramev_180
_Z15SCR_UpdateFramev_250:
	mov ebx, clientConnections
	mov esi, [ebx+0x40188]
	test esi, esi
	jz _Z15SCR_UpdateFramev_110
	mov eax, [ebx+0x401a0]
	mov [esp], eax
	call _Z8FS_FTelli
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
	call _Z14CL_LookupColorihPf
	mov dword [ebp-0x1c], 0x40a00000
	mov dword [ebp-0x20], 0x43ef8000
	mov dword [esp+0x4], 0x3eaaaaab
	mov esi, cls
	mov eax, [esi+0x2dbff8]
	mov [esp], eax
	call _Z21R_NormalizedTextScaleP6Font_sf
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
	call _Z18ScrPlace_ApplyRectPK15ScreenPlacementPfS2_S2_S2_ii
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
	call _Z16R_AddCmdDrawTextPKciP6Font_sfffffPKfi
	jmp _Z15SCR_UpdateFramev_110
_Z15SCR_UpdateFramev_140:
	mov dword [esp], 0x0
	call _Z10CL_SendCmdi
	jmp _Z15SCR_UpdateFramev_190
_Z15SCR_UpdateFramev_150:
	mov eax, cls
	mov eax, [eax+0x118]
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call _Z13UI_UpdateTimeii
	mov dword [esp], 0x0
	call _Z10UI_Refreshi
	jmp _Z15SCR_UpdateFramev_200
	
	
_Z15SCR_UpdateFramev_jumptab_0:
	dd _Z15SCR_UpdateFramev_210
	dd _Z15SCR_UpdateFramev_220
	dd _Z15SCR_UpdateFramev_230
	dd _Z15SCR_UpdateFramev_240
	dd _Z15SCR_UpdateFramev_240
	dd _Z15SCR_UpdateFramev_240
	dd _Z15SCR_UpdateFramev_240
	dd _Z15SCR_UpdateFramev_240
	dd _Z15SCR_UpdateFramev_240
	dd _Z15SCR_UpdateFramev_250


;CL_CubemapShot_f()
_Z16CL_CubemapShot_fv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xbc
	mov dword [esp], 0x0
	call _Z21CL_IsCgameInitializedi
	test eax, eax
	jz _Z16CL_CubemapShot_fv_10
	mov ebx, cmd_args
	mov eax, [ebx]
	cmp dword [ebx+eax*4+0x44], 0x2
	jg _Z16CL_CubemapShot_fv_20
_Z16CL_CubemapShot_fv_30:
	call _Z19CL_CubemapShotUsagev
_Z16CL_CubemapShot_fv_100:
	add esp, 0xbc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z16CL_CubemapShot_fv_20:
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
	ja _Z16CL_CubemapShot_fv_30
	mov [esp+0x4], edx
	lea eax, [ebp-0x64]
	mov [esp], eax
	call strcpy
	mov eax, [ebx]
	cmp dword [ebx+eax*4+0x44], 0x1
	jle _Z16CL_CubemapShot_fv_40
	mov eax, [ebx+eax*4+0x64]
	mov eax, [eax+0x4]
_Z16CL_CubemapShot_fv_110:
	mov [esp], eax
	call atoi
	mov edi, eax
	lea eax, [eax-0x4]
	cmp eax, 0x3fc
	ja _Z16CL_CubemapShot_fv_30
	lea eax, [edi-0x1]
	test eax, edi
	jnz _Z16CL_CubemapShot_fv_30
	xor eax, eax
	mov [ebp-0x24], eax
	mov [ebp-0x20], eax
	mov [ebp-0x1c], eax
	mov ebx, cmd_args
	mov edx, [ebx]
	mov eax, [ebx+edx*4+0x44]
	cmp eax, 0x7
	jz _Z16CL_CubemapShot_fv_50
	cmp eax, 0x6
	jz _Z16CL_CubemapShot_fv_60
	cmp eax, 0x3
	jnz _Z16CL_CubemapShot_fv_30
	mov byte [ebp-0x71], 0x0
	movss xmm0, dword [_float_1_00000000]
	movss [ebp-0x70], xmm0
	movss xmm0, dword [_float_1_33299994]
	movss [ebp-0x6c], xmm0
_Z16CL_CubemapShot_fv_150:
	call _Z18R_SyncRenderThreadv
	mov ebx, 0x1
	mov esi, clients
_Z16CL_CubemapShot_fv_70:
	mov dword [esp+0x4], 0x1
	mov [esp], edi
	call _Z18R_BeginCubemapShotii
	call _Z12R_BeginFramev
	call _Z20R_BeginSharedCmdListv
	call _Z22R_ClearClientCmdList2Dv
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
	call _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii
	call _Z10R_EndFramev
	mov dword [esp], 0xffffffff
	call _Z21R_IssueRenderCommandsj
	mov [esp], ebx
	call _Z16R_EndCubemapShot11CubemapShot
	add ebx, 0x1
	cmp ebx, 0x7
	jnz _Z16CL_CubemapShot_fv_70
	cmp byte [ebp-0x71], 0x0
	jnz _Z16CL_CubemapShot_fv_80
_Z16CL_CubemapShot_fv_190:
	mov ebx, 0x1
	mov edi, _ZZ16CL_CubemapShot_fvE10szShotName
_Z16CL_CubemapShot_fv_90:
	mov eax, [edi-0x10]
	mov [esp+0x8], eax
	lea eax, [ebp-0x64]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_envsstga
	call _Z2vaPKcz
	movss xmm0, dword [ebp-0x6c]
	movss [esp+0xc], xmm0
	movss xmm0, dword [ebp-0x70]
	movss [esp+0x8], xmm0
	mov [esp+0x4], ebx
	mov [esp], eax
	call _Z17R_SaveCubemapShotPKc11CubemapShotff
	add ebx, 0x1
	add edi, 0x4
	cmp ebx, 0x7
	jnz _Z16CL_CubemapShot_fv_90
	jmp _Z16CL_CubemapShot_fv_100
_Z16CL_CubemapShot_fv_10:
	mov dword [esp+0x4], _cstring_must_be_in_a_map
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	add esp, 0xbc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z16CL_CubemapShot_fv_40:
	mov eax, _cstring_null
	jmp _Z16CL_CubemapShot_fv_110
_Z16CL_CubemapShot_fv_50:
	mov dword [esp+0x4], _cstring_lighting
	mov eax, [ebx+edx*4+0x64]
	mov eax, [eax+0xc]
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z16CL_CubemapShot_fv_30
	mov eax, [ebx]
	cmp dword [ebx+eax*4+0x44], 0x4
	jg _Z16CL_CubemapShot_fv_120
	mov eax, _cstring_null
_Z16CL_CubemapShot_fv_220:
	mov [esp], eax
	call atof
	fstp qword [ebp-0xa0]
	cvtsd2ss xmm0, [ebp-0xa0]
	movss [ebp-0x24], xmm0
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x5
	jg _Z16CL_CubemapShot_fv_130
	mov eax, _cstring_null
_Z16CL_CubemapShot_fv_210:
	mov [esp], eax
	call atof
	fstp qword [ebp-0x98]
	cvtsd2ss xmm0, [ebp-0x98]
	movss [ebp-0x20], xmm0
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x6
	jg _Z16CL_CubemapShot_fv_140
	mov eax, _cstring_null
_Z16CL_CubemapShot_fv_200:
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
	jmp _Z16CL_CubemapShot_fv_150
_Z16CL_CubemapShot_fv_60:
	mov dword [esp+0x4], _cstring_fresnel
	mov eax, [ebx+edx*4+0x64]
	mov eax, [eax+0xc]
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z16CL_CubemapShot_fv_30
	mov eax, [ebx]
	cmp dword [ebx+eax*4+0x44], 0x4
	jg _Z16CL_CubemapShot_fv_160
	mov eax, _cstring_null
_Z16CL_CubemapShot_fv_240:
	mov [esp], eax
	call atof
	fstp qword [ebp-0x88]
	cvtsd2ss xmm0, [ebp-0x88]
	movss [ebp-0x70], xmm0
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x5
	jg _Z16CL_CubemapShot_fv_170
	mov eax, _cstring_null
_Z16CL_CubemapShot_fv_230:
	mov [esp], eax
	call atof
	fstp qword [ebp-0x80]
	cvtsd2ss xmm0, [ebp-0x80]
	movss [ebp-0x6c], xmm0
	movss xmm0, dword [ebp-0x70]
	ucomiss xmm0, [_float_1_00000000]
	jp _Z16CL_CubemapShot_fv_180
	jb _Z16CL_CubemapShot_fv_30
_Z16CL_CubemapShot_fv_180:
	movss xmm0, dword [_float_1_00000000]
	ucomiss xmm0, [ebp-0x6c]
	ja _Z16CL_CubemapShot_fv_30
	mov byte [ebp-0x71], 0x0
	jmp _Z16CL_CubemapShot_fv_150
_Z16CL_CubemapShot_fv_80:
	lea eax, [ebp-0x24]
	mov [esp], eax
	call _Z26R_LightingFromCubemapShotsPKf
	jmp _Z16CL_CubemapShot_fv_190
_Z16CL_CubemapShot_fv_140:
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x18]
	jmp _Z16CL_CubemapShot_fv_200
_Z16CL_CubemapShot_fv_130:
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x14]
	jmp _Z16CL_CubemapShot_fv_210
_Z16CL_CubemapShot_fv_120:
	mov eax, [ebx+eax*4+0x64]
	mov eax, [eax+0x10]
	jmp _Z16CL_CubemapShot_fv_220
_Z16CL_CubemapShot_fv_170:
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x14]
	jmp _Z16CL_CubemapShot_fv_230
_Z16CL_CubemapShot_fv_160:
	mov eax, [ebx+eax*4+0x64]
	mov eax, [eax+0x10]
	jmp _Z16CL_CubemapShot_fv_240


;SCR_UpdateRumble()
_Z16SCR_UpdateRumblev:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop


;SCR_UpdateScreen()
_Z16SCR_UpdateScreenv:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x4
	cmp byte [updateScreenCalled], 0x0
	jnz _Z16SCR_UpdateScreenv_10
	mov eax, clientUIActives
	mov eax, [eax+0xc]
	cmp eax, 0x8
	jg _Z16SCR_UpdateScreenv_20
	mov ebx, 0x21
	cmp eax, 0x7
	mov eax, 0x10
	cmovl ebx, eax
	call _Z16Sys_Millisecondsv
	mov edx, eax
	sub eax, [s_lastUpdateScreenTime]
	cmp ebx, eax
	jg _Z16SCR_UpdateScreenv_10
	mov [s_lastUpdateScreenTime], edx
_Z16SCR_UpdateScreenv_20:
	mov eax, clientUIActives
	cmp dword [eax+0xc], 0x7
	jz _Z16SCR_UpdateScreenv_30
	mov eax, [scr_initialized]
	test eax, eax
	jz _Z16SCR_UpdateScreenv_10
_Z16SCR_UpdateScreenv_50:
	mov eax, com_errorEntered
	mov ebx, [eax]
	test ebx, ebx
	jz _Z16SCR_UpdateScreenv_40
_Z16SCR_UpdateScreenv_10:
	add esp, 0x4
	pop ebx
	pop ebp
	ret
_Z16SCR_UpdateScreenv_40:
	mov byte [updateScreenCalled], 0x1
	call _Z15SCR_UpdateFramev
	mov byte [updateScreenCalled], 0x0
	add esp, 0x4
	pop ebx
	pop ebp
	ret
_Z16SCR_UpdateScreenv_30:
	call _Z20Sys_LoadingKeepAlivev
	mov eax, [scr_initialized]
	test eax, eax
	jnz _Z16SCR_UpdateScreenv_50
	jmp _Z16SCR_UpdateScreenv_10


;CL_GetMenuBlurRadius(int)
_Z20CL_GetMenuBlurRadiusi:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov dword [esp+0x4], 0x10
	mov [esp], ebx
	call _Z19Key_IsCatcherActiveii
	test al, al
	jz _Z20CL_GetMenuBlurRadiusi_10
	mov eax, cls
	mov eax, [eax+0x110]
	test eax, eax
	jnz _Z20CL_GetMenuBlurRadiusi_20
_Z20CL_GetMenuBlurRadiusi_10:
	fldz
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z20CL_GetMenuBlurRadiusi_20:
	mov [ebp+0x8], ebx
	add esp, 0x14
	pop ebx
	pop ebp
	jmp _Z16UI_GetBlurRadiusi


;SCR_UpdateLoadScreen()
_Z20SCR_UpdateLoadScreenv:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x4
	mov eax, useFastFile
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z20SCR_UpdateLoadScreenv_10
	cmp byte [updateScreenCalled], 0x0
	jnz _Z20SCR_UpdateLoadScreenv_10
	mov eax, clientUIActives
	mov eax, [eax+0xc]
	cmp eax, 0x8
	jg _Z20SCR_UpdateLoadScreenv_20
	mov ebx, 0x21
	cmp eax, 0x7
	mov eax, 0x10
	cmovl ebx, eax
	call _Z16Sys_Millisecondsv
	mov edx, eax
	sub eax, [s_lastUpdateScreenTime]
	cmp ebx, eax
	jg _Z20SCR_UpdateLoadScreenv_10
	mov [s_lastUpdateScreenTime], edx
_Z20SCR_UpdateLoadScreenv_20:
	mov eax, clientUIActives
	cmp dword [eax+0xc], 0x7
	jz _Z20SCR_UpdateLoadScreenv_30
_Z20SCR_UpdateLoadScreenv_50:
	mov eax, [scr_initialized]
	test eax, eax
	jz _Z20SCR_UpdateLoadScreenv_10
	mov eax, com_errorEntered
	mov eax, [eax]
	test eax, eax
	jz _Z20SCR_UpdateLoadScreenv_40
_Z20SCR_UpdateLoadScreenv_10:
	add esp, 0x4
	pop ebx
	pop ebp
	ret
_Z20SCR_UpdateLoadScreenv_40:
	mov byte [updateScreenCalled], 0x1
	call _Z15SCR_UpdateFramev
	mov byte [updateScreenCalled], 0x0
	add esp, 0x4
	pop ebx
	pop ebp
	ret
_Z20SCR_UpdateLoadScreenv_30:
	call _Z20Sys_LoadingKeepAlivev
	jmp _Z20SCR_UpdateLoadScreenv_50
	add [eax], al


;SCR_DrawSmallStringExt(int, int, char const*, float const*)
_Z22SCR_DrawSmallStringExtiiPKcPKf:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x34
	mov ebx, cls
	mov eax, [ebx+0x2dbff8]
	mov [esp], eax
	call _Z12R_TextHeightP6Font_s
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
	call _Z16R_AddCmdDrawTextPKciP6Font_sfffffPKfi
	add esp, 0x34
	pop ebx
	pop ebp
	ret


;SCR_Init()
_Z8SCR_Initv:
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

