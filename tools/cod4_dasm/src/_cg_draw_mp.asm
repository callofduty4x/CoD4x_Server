;Imports of cg_draw_mp:
	extern cgArray
	extern CG_Flashbanged
	extern vec3_origin
	extern CG_TraceCapsule
	extern Trace_GetEntityHitId
	extern cg_friendlyNameFadeOut
	extern cg_entitiesArray
	extern BG_GetWeaponDef
	extern cg_enemyNameFadeOut
	extern FX_GetClientVisibility
	extern cg_chatHeight
	extern CG_IsScoreboardDisplayed
	extern cg_hudChatIntermissionPosition
	extern cgsArray
	extern cg_chatTime
	extern scrPlaceView
	extern UI_GetFontHandle
	extern UI_TextWidth
	extern cgMedia
	extern UI_DrawHandlePic
	extern UI_DrawText
	extern cg_hudChatPosition
	extern CL_LookupColor
	extern cg_overheadNamesFont
	extern Com_GetClientDObj
	extern scr_const
	extern CG_DObjGetWorldTagPos
	extern CL_GetClientName
	extern Com_PrintError
	extern CG_RelativeTeamColor
	extern cg_overheadNamesNearDist
	extern cg_overheadNamesSize
	extern R_NormalizedTextScale
	extern R_TextWidth
	extern floorf
	extern cg_overheadNamesGlow
	extern Cvar_GetUnpackedColor
	extern CL_DrawTextPhysicalWithEffects
	extern CL_GetRankIcon
	extern R_TextHeight
	extern cg_overheadIconSize
	extern cg_overheadRankSize
	extern CL_GetRankData
	extern CL_DrawStretchPicPhysical
	extern CL_DrawTextPhysical
	extern cg_overheadNamesFarDist
	extern cg_overheadNamesFarScale
	extern cg_drawCrosshairNames
	extern cg_enemyNameFadeIn
	extern cg_friendlyNameFadeIn
	extern cg_drawFriendlyNames
	extern cg_drawThroughWalls
	extern cg_overheadNamesMaxDist
	extern CL_SetFOVSensitivityScale
	extern CL_SetUserCmdAimValues
	extern BG_AssertOffhandIndexOrNone
	extern CL_SetUserCmdWeapons
	extern CL_SetExtraButtons
	extern CL_RenderScene
	extern cg_centertime
	extern CG_FadeColor
	extern memset
	extern CG_AddAllPlayerSpriteDrawSurfs
	extern CG_AddDrawSurfsFor3dHudElems
	extern CG_AddLocalEntityTracerBeams
	extern CG_TranslateHudElemMessage
	extern Q_strncpyz
	extern cg_draw2D
	extern net_showprofile
	extern CG_ShouldDrawHud
	extern ui_showEndOfGame
	extern CG_CompassUpdateActors
	extern CG_DrawScoreboard
	extern CG_DrawFlashDamage
	extern CG_DrawDamageDirectionIndicators
	extern CG_DrawGrenadeIndicators
	extern cg_drawSpectatorMessages
	extern cg_descriptiveText
	extern SEH_LocalizeTextMessage
	extern CL_IsRenderingSplitScreen
	extern colorWhite
	extern cg_hudVotePosition
	extern UI_GetKeyBindingLocalizedString
	extern UI_SafeTranslateString
	extern va
	extern colorYellow
	extern CG_DrawLagometer
	extern CG_DrawDebugOverlays
	extern cg_minicon
	extern Con_DrawErrors
	extern cg_hudSayPosition
	extern Con_DrawSay
	extern CG_DrawNightVisionOverlay
	extern CL_GetCurrentCmdNumber
	extern CL_GetUserCmd
	extern CG_MenuShowNotify
	extern CG_CalcPlayerHealth
	extern hud_health_startpulse_injured
	extern hud_fade_healthbar
	extern CG_CheckPlayerForLowAmmo
	extern CG_CheckPlayerForLowClip
	extern hud_fade_ammodisplay
	extern hud_fade_compass
	extern hud_fade_stance
	extern hud_fade_offhand
	extern BG_GetMaxSprintTime
	extern PM_GetSprintLeft
	extern hud_fade_sprint
	extern CG_Draw2dHudElems
	extern Cvar_SetBool
	extern cgDC
	extern Menus_CloseByName
	extern UI_GetActiveMenu
	extern Con_DrawMiniConsole
	extern CL_GetLocalClientActiveCount
	extern Menus_HideByName
	extern CG_DrawCrosshair
	extern Menu_PaintAll
	extern UI_SetActiveMenu
	extern Key_IsCatcherActive
	extern UI_TextHeight
	extern UI_ReplaceConversionString
	extern UI_GetTopActiveMenuName
	extern Com_sprintf

;Exports of cg_draw_mp:
	global overheadFade
	global s_centerPrint
	global CG_ScanForCrosshairEntity
	global CG_DrawChatMessages
	global CG_DrawOverheadNames
	global CG_DrawCrosshairNames
	global CG_DrawFriendlyNames
	global CG_DrawActive
	global CG_ClearCenterPrint
	global CG_DrawCenterString
	global CG_ClearOverheadFade
	global CG_GenerateSceneVerts
	global CG_AddSceneTracerBeams
	global CG_PriorityCenterPrint
	global CG_Draw2D


SECTION .text


;CG_ScanForCrosshairEntity(int)
CG_ScanForCrosshairEntity:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xbc
	mov [ebp-0x78], eax
	mov esi, cgArray
	and dword [esi+0x4614c], 0xffffffe7
	mov [esp], eax
	call CG_Flashbanged
	test al, al
	jz CG_ScanForCrosshairEntity_10
CG_ScanForCrosshairEntity_20:
	add esp, 0xbc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_ScanForCrosshairEntity_10:
	mov eax, [esi+0x492e0]
	mov [ebp-0x24], eax
	mov eax, [esi+0x492e4]
	mov [ebp-0x20], eax
	movss xmm2, dword [esi+0x492e8]
	movss [ebp-0x1c], xmm2
	movss xmm1, dword [_float_8192_00000000]
	movss xmm0, dword [esi+0x492ec]
	mulss xmm0, xmm1
	addss xmm0, [ebp-0x24]
	movss [ebp-0x30], xmm0
	movss xmm0, dword [esi+0x492f0]
	mulss xmm0, xmm1
	addss xmm0, [ebp-0x20]
	movss [ebp-0x2c], xmm0
	mulss xmm1, [esi+0x492f4]
	addss xmm2, xmm1
	movss [ebp-0x28], xmm2
	mov dword [esp+0x18], 0x2803001
	mov eax, [esi+0x24]
	mov eax, [eax+0xe8]
	mov [esp+0x14], eax
	lea eax, [ebp-0x30]
	mov [esp+0x10], eax
	mov eax, vec3_origin
	mov [esp+0xc], eax
	mov [esp+0x8], eax
	lea eax, [ebp-0x24]
	mov [esp+0x4], eax
	lea ebx, [ebp-0x68]
	mov [esp], ebx
	call CG_TraceCapsule
	mov [esp], ebx
	call Trace_GetEntityHitId
	mov edi, eax
	cmp ax, 0x3f
	ja CG_ScanForCrosshairEntity_20
	mov eax, cg_friendlyNameFadeOut
	mov eax, [eax]
	mov eax, [eax+0xc]
	mov [ebp-0x70], eax
	mov edx, [esi+0x24]
	mov [ebp-0x6c], edx
	mov edx, [edx+0xe8]
	lea eax, [edx+edx*8]
	mov ecx, eax
	shl ecx, 0x4
	add eax, ecx
	lea eax, [edx+eax*2]
	mov ebx, [esi+eax*4+0xe9f50]
	cmp ebx, 0x3
	jz CG_ScanForCrosshairEntity_30
	mov eax, [esi+0x502f8]
	lea edx, [eax+eax*8]
	mov ecx, edx
	shl ecx, 0x4
	add edx, ecx
	lea edx, [eax+edx*2]
	cmp ebx, [esi+edx*4+0xe9f50]
	jz CG_ScanForCrosshairEntity_40
CG_ScanForCrosshairEntity_70:
	movzx eax, di
	lea edx, [eax*4]
	shl eax, 0x5
	sub eax, edx
	mov edx, eax
	shl edx, 0x4
	add eax, edx
	add eax, cg_entitiesArray
	lea edx, [eax+0x1c]
	movss xmm0, dword [eax+0x1c]
	subss xmm0, [ebp-0x24]
	movss xmm2, dword [edx+0x4]
	subss xmm2, [ebp-0x20]
	movss xmm3, dword [edx+0x8]
	subss xmm3, [ebp-0x1c]
	mov edx, [ebp-0x6c]
	mov eax, [edx+0xf4]
	mov [esp], eax
	movss [ebp-0x88], xmm0
	movss [ebp-0x98], xmm2
	movss [ebp-0xa8], xmm3
	call BG_GetWeaponDef
	movss xmm1, dword [eax+0x410]
	movss xmm0, dword [ebp-0x88]
	mulss xmm0, xmm0
	movss xmm2, dword [ebp-0x98]
	mulss xmm2, xmm2
	addss xmm0, xmm2
	movss xmm3, dword [ebp-0xa8]
	mulss xmm3, xmm3
	addss xmm0, xmm3
	mulss xmm1, xmm1
	ucomiss xmm0, xmm1
	ja CG_ScanForCrosshairEntity_20
	or dword [esi+0x4614c], 0x10
	mov eax, cg_enemyNameFadeOut
	mov eax, [eax]
	mov eax, [eax+0xc]
	mov [ebp-0x70], eax
CG_ScanForCrosshairEntity_30:
	movss xmm2, dword [ebp-0x68]
	movss xmm1, dword [ebp-0x24]
	movss xmm0, dword [ebp-0x30]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebp-0x3c], xmm1
	movss xmm1, dword [ebp-0x20]
	movss xmm0, dword [ebp-0x2c]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebp-0x38], xmm1
	movss xmm1, dword [ebp-0x1c]
	movss xmm0, dword [ebp-0x28]
	subss xmm0, xmm1
	mulss xmm2, xmm0
	addss xmm1, xmm2
	movss [ebp-0x34], xmm1
	lea eax, [ebp-0x3c]
	mov [esp+0x8], eax
	lea eax, [ebp-0x24]
	mov [esp+0x4], eax
	mov edx, [ebp-0x78]
	mov [esp], edx
	call FX_GetClientVisibility
	fstp dword [ebp-0x74]
	movss xmm0, dword [ebp-0x74]
	ucomiss xmm0, [_float_0_20000000]
	jp CG_ScanForCrosshairEntity_50
	jb CG_ScanForCrosshairEntity_20
CG_ScanForCrosshairEntity_50:
	movzx ebx, di
	mov edx, cgArray
	cmp [edx+0x502f8], ebx
	jz CG_ScanForCrosshairEntity_60
	mov ecx, [edx+0x46128]
CG_ScanForCrosshairEntity_80:
	mov [edx+0x502f8], ebx
	mov [edx+0x50300], ecx
	mov eax, [edx+0x46128]
CG_ScanForCrosshairEntity_90:
	mov [edx+0x502fc], eax
	add esp, 0xbc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_ScanForCrosshairEntity_40:
	test ebx, ebx
	jz CG_ScanForCrosshairEntity_70
	or dword [esi+0x4614c], 0x8
	jmp CG_ScanForCrosshairEntity_30
CG_ScanForCrosshairEntity_60:
	mov ecx, [edx+0x46128]
	mov eax, ecx
	sub eax, [edx+0x502fc]
	cmp [ebp-0x70], eax
	jl CG_ScanForCrosshairEntity_80
	mov eax, ecx
	jmp CG_ScanForCrosshairEntity_90


;CG_DrawChatMessages(int)
CG_DrawChatMessages:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x8c
	mov [ebp-0x5c], eax
	mov eax, cg_chatHeight
	mov eax, [eax]
	mov eax, [eax+0xc]
	mov [ebp-0x4c], eax
	test eax, eax
	jnz CG_DrawChatMessages_10
CG_DrawChatMessages_50:
	add esp, 0x8c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_DrawChatMessages_10:
	mov eax, [ebp-0x5c]
	mov [esp], eax
	call CG_IsScoreboardDisplayed
	test eax, eax
	jz CG_DrawChatMessages_20
	mov eax, cg_hudChatIntermissionPosition
	mov eax, [eax]
CG_DrawChatMessages_150:
	cvttss2si edx, [eax+0xc]
	mov [ebp-0x3c], edx
	cvttss2si esi, [eax+0x10]
	mov ecx, cgsArray
	cmp dword [ecx+0xc], 0x300
	jle CG_DrawChatMessages_30
	movss xmm0, dword [_float_10_00000000]
	movss [ebp-0x38], xmm0
	movss xmm1, dword [_float_0_20833333]
	movss [ebp-0x30], xmm1
CG_DrawChatMessages_140:
	mov eax, cgsArray
	cmp dword [eax+0x8], 0x300
	jle CG_DrawChatMessages_40
	movss xmm0, dword [_float_8_00000000]
	movss [ebp-0x34], xmm0
CG_DrawChatMessages_130:
	mov eax, cgsArray
	mov ecx, [eax+0x13b4]
	cmp ecx, [eax+0x13b0]
	jz CG_DrawChatMessages_50
	mov ebx, eax
	mov eax, cgArray
	mov eax, [eax+0x46128]
	mov [ebp-0x50], eax
	mov eax, ecx
	cdq
	idiv dword [ebp-0x4c]
	mov eax, [ebp-0x50]
	sub eax, [ebx+edx*4+0x1390]
	mov edx, eax
	mov eax, cg_chatTime
	mov eax, [eax]
	cmp edx, [eax+0xc]
	jg CG_DrawChatMessages_60
CG_DrawChatMessages_160:
	mov eax, [ebp-0x5c]
	shl eax, 0x6
	mov edx, [ebp-0x5c]
	lea edi, [eax+edx*4]
	add edi, scrPlaceView
	movss xmm0, dword [ebp-0x30]
	movss [esp+0x8], xmm0
	mov dword [esp+0x4], 0x0
	mov [esp], edi
	call UI_GetFontHandle
	mov [ebp-0x40], eax
	mov eax, cgsArray
	mov ebx, [eax+0x13b0]
	sub ebx, 0x1
	cmp ebx, [eax+0x13b4]
	jl CG_DrawChatMessages_50
	movss xmm0, dword [ebp-0x34]
	mulss xmm0, [_float_3_00000000]
	movss [ebp-0x54], xmm0
	cvtsi2ss xmm1, esi
	movss [ebp-0x58], xmm1
	mov ecx, cgsArray
	jmp CG_DrawChatMessages_70
CG_DrawChatMessages_100:
	movss xmm0, dword [_float_1_00000000]
	movss [ebp-0x44], xmm0
	movss xmm1, dword [_float_0_60000002]
	movss [ebp-0x2c], xmm1
CG_DrawChatMessages_120:
	lea eax, [edx+edx*4]
	shl eax, 0x5
	mov edx, cgsArray
	lea esi, [eax+edx+0xe90]
	test esi, esi
	jz CG_DrawChatMessages_80
	cmp byte [esi], 0x5e
	jz CG_DrawChatMessages_90
CG_DrawChatMessages_80:
	mov dword [ebp-0x28], 0x3f800000
	mov dword [ebp-0x24], 0x3f800000
	mov dword [ebp-0x20], 0x3f800000
CG_DrawChatMessages_170:
	movss xmm0, dword [ebp-0x28]
	mulss xmm0, [_float_0_25000000]
	movss [ebp-0x28], xmm0
	movss xmm0, dword [ebp-0x24]
	mulss xmm0, [_float_0_25000000]
	movss [ebp-0x24], xmm0
	movss xmm0, dword [ebp-0x20]
	mulss xmm0, [_float_0_25000000]
	movss [ebp-0x20], xmm0
	movss xmm0, dword [ebp-0x2c]
	movss [ebp-0x1c], xmm0
	mov edx, cgsArray
	mov eax, [edx+0x13b0]
	sub eax, ebx
	cvtsi2ss xmm0, eax
	mulss xmm0, [ebp-0x38]
	movss xmm1, dword [ebp-0x58]
	subss xmm1, xmm0
	movss [ebp-0x48], xmm1
	movss xmm0, dword [ebp-0x30]
	movss [esp+0xc], xmm0
	mov eax, [ebp-0x40]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call UI_TextWidth
	mov edx, cgMedia
	mov edx, [edx+0x4]
	mov [esp+0x20], edx
	lea edx, [ebp-0x28]
	mov [esp+0x1c], edx
	mov dword [esp+0x18], 0x1
	mov dword [esp+0x14], 0x1
	movss xmm0, dword [ebp-0x38]
	movss [esp+0x10], xmm0
	cvtsi2ss xmm0, eax
	addss xmm0, [ebp-0x54]
	movss [esp+0xc], xmm0
	movss xmm1, dword [ebp-0x48]
	movss [esp+0x8], xmm1
	mov dword [esp+0x4], 0x0
	mov [esp], edi
	call UI_DrawHandlePic
	movss xmm0, dword [ebp-0x44]
	movss [ebp-0x1c], xmm0
	mov edx, cgsArray
	mov eax, [edx+0x13b0]
	sub eax, ebx
	cvtsi2ss xmm0, eax
	mulss xmm0, [ebp-0x38]
	movss xmm1, dword [ebp-0x58]
	subss xmm1, xmm0
	movss xmm0, dword [ebp-0x38]
	subss xmm0, [_float_1_00000000]
	addss xmm1, xmm0
	mov dword [ebp-0x28], 0x3f800000
	mov dword [ebp-0x24], 0x3f800000
	mov dword [ebp-0x20], 0x3f800000
	mov dword [esp+0x28], 0x3
	lea ecx, [ebp-0x28]
	mov [esp+0x24], ecx
	movss xmm0, dword [ebp-0x30]
	movss [esp+0x20], xmm0
	mov dword [esp+0x1c], 0x1
	mov dword [esp+0x18], 0x1
	movss [esp+0x14], xmm1
	cvtsi2ss xmm0, dword [ebp-0x3c]
	movss [esp+0x10], xmm0
	mov eax, [ebp-0x40]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x7fffffff
	mov [esp+0x4], esi
	mov [esp], edi
	call UI_DrawText
CG_DrawChatMessages_110:
	sub ebx, 0x1
	mov edx, cgsArray
	cmp ebx, [edx+0x13b4]
	jl CG_DrawChatMessages_50
	mov ecx, edx
CG_DrawChatMessages_70:
	mov eax, ebx
	cdq
	idiv dword [ebp-0x4c]
	mov eax, cg_chatTime
	mov eax, [eax]
	cvtsi2ss xmm1, dword [eax+0xc]
	mov eax, [ebp-0x50]
	sub eax, [ecx+edx*4+0x1390]
	cvtsi2ss xmm0, eax
	subss xmm1, xmm0
	ucomiss xmm1, [_float_200_00000000]
	ja CG_DrawChatMessages_100
	divss xmm1, dword [_float_200_00000000]
	movss [ebp-0x44], xmm1
	pxor xmm0, xmm0
	ucomiss xmm0, xmm1
	jae CG_DrawChatMessages_110
	mulss xmm1, [_float_0_60000002]
	movss [ebp-0x2c], xmm1
	jmp CG_DrawChatMessages_120
CG_DrawChatMessages_40:
	movss xmm1, dword [_float_12_00000000]
	movss [ebp-0x34], xmm1
	jmp CG_DrawChatMessages_130
CG_DrawChatMessages_30:
	movss xmm0, dword [_float_16_00000000]
	movss [ebp-0x38], xmm0
	movss xmm1, dword [_float_0_33333334]
	movss [ebp-0x30], xmm1
	jmp CG_DrawChatMessages_140
CG_DrawChatMessages_20:
	mov eax, cg_hudChatPosition
	mov eax, [eax]
	jmp CG_DrawChatMessages_150
CG_DrawChatMessages_60:
	lea eax, [ecx+0x1]
	mov [ebx+0x13b4], eax
	jmp CG_DrawChatMessages_160
CG_DrawChatMessages_90:
	movzx eax, byte [esi+0x1]
	test al, al
	jz CG_DrawChatMessages_80
	cmp al, 0x5e
	jz CG_DrawChatMessages_80
	cmp al, 0x2f
	jle CG_DrawChatMessages_80
	cmp al, 0x39
	jg CG_DrawChatMessages_80
	lea ecx, [ebp-0x28]
	mov [esp+0x8], ecx
	movzx eax, al
	mov [esp+0x4], eax
	mov eax, [ebp-0x5c]
	mov [esp], eax
	call CL_LookupColor
	jmp CG_DrawChatMessages_170
	nop


;CG_DrawOverheadNames(int, centity_s const*, float)
CG_DrawOverheadNames:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xec
	mov ebx, eax
	mov esi, edx
	movss [ebp-0xac], xmm0
	ucomiss xmm0, [_float_0_00100000]
	jp CG_DrawOverheadNames_10
	ja CG_DrawOverheadNames_10
CG_DrawOverheadNames_70:
	add esp, 0xec
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_DrawOverheadNames_10:
	mov dword [esp+0x8], 0x3f800000
	mov eax, cg_overheadNamesFont
	mov eax, [eax]
	mov eax, [eax+0xc]
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call UI_GetFontHandle
	mov edi, eax
	mov [esp+0x4], ebx
	mov eax, [esi+0xcc]
	mov [esp], eax
	call Com_GetClientDObj
	mov edx, eax
	test eax, eax
	jz CG_DrawOverheadNames_20
	lea eax, [ebp-0x28]
	mov [esp+0xc], eax
	mov eax, scr_const
	movzx eax, word [eax+0x130]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov [esp], esi
	call CG_DObjGetWorldTagPos
	test eax, eax
	jnz CG_DrawOverheadNames_30
CG_DrawOverheadNames_20:
	lea edx, [esi+0x1c]
	mov eax, [esi+0x1c]
	mov [ebp-0x28], eax
	mov eax, [edx+0x4]
	mov [ebp-0x24], eax
	movss xmm0, dword [_float_82_00000000]
	addss xmm0, [edx+0x8]
	movss [ebp-0x20], xmm0
CG_DrawOverheadNames_90:
	mov dword [esp+0xc], 0x26
	lea eax, [ebp-0x7a]
	mov [esp+0x8], eax
	mov eax, [esi+0x158]
	mov [esp+0x4], eax
	mov [esp], ebx
	call CL_GetClientName
	test eax, eax
	jnz CG_DrawOverheadNames_40
	mov eax, [esi+0x158]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_unable_to_get_na
	mov dword [esp], 0xe
	call Com_PrintError
	add esp, 0xec
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_DrawOverheadNames_40:
	mov [esp+0xc], ebx
	lea edx, [ebp-0x44]
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_g_teamcolor
	mov eax, [esi+0x158]
	mov [esp], eax
	call CG_RelativeTeamColor
	movss xmm0, dword [ebp-0xac]
	movss [ebp-0x38], xmm0
	mov eax, ebx
	shl eax, 0x6
	lea eax, [eax+ebx*4]
	add eax, scrPlaceView
	mov ebx, cgArray
	movss xmm4, dword [ebp-0x28]
	subss xmm4, [ebx+0x492e0]
	movss xmm3, dword [ebp-0x24]
	subss xmm3, [ebx+0x492e4]
	movss xmm2, dword [ebp-0x20]
	subss xmm2, [ebx+0x492e8]
	xor ecx, ecx
	mov [ebp-0xb0], ebx
	lea edx, [ebx+0x492e0]
CG_DrawOverheadNames_50:
	movaps xmm0, xmm4
	mulss xmm0, [edx+0xc]
	movaps xmm1, xmm3
	mulss xmm1, [edx+0x10]
	addss xmm0, xmm1
	movaps xmm1, xmm2
	mulss xmm1, [edx+0x14]
	addss xmm0, xmm1
	movss [ebp+ecx*4-0x34], xmm0
	add ecx, 0x1
	add edx, 0xc
	cmp ecx, 0x3
	jnz CG_DrawOverheadNames_50
	movss xmm2, dword [ebp-0x34]
	ucomiss xmm2, [_float_0_00000000]
	jp CG_DrawOverheadNames_60
	jb CG_DrawOverheadNames_70
CG_DrawOverheadNames_60:
	movss xmm1, dword [_float_0_50000000]
	movss xmm3, dword [eax+0x28]
	mulss xmm3, xmm1
	movss [ebp-0xa0], xmm3
	movss xmm0, dword [ebp-0x30]
	mov edx, [ebp-0xb0]
	divss xmm0, dword [edx+0x492d8]
	divss xmm0, xmm2
	movss xmm5, dword [_float_1_00000000]
	movaps xmm3, xmm5
	subss xmm3, xmm0
	movaps xmm0, xmm3
	mulss xmm0, [ebp-0xa0]
	movss [ebp-0xa0], xmm0
	movss [ebp-0x9c], xmm1
	mulss xmm1, [eax+0x2c]
	movss [ebp-0x9c], xmm1
	movss xmm0, dword [ebp-0x2c]
	divss xmm0, dword [edx+0x492dc]
	divss xmm0, xmm2
	movaps xmm1, xmm5
	subss xmm1, xmm0
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x9c]
	movss [ebp-0x9c], xmm0
	movss xmm2, dword [ebp-0x28]
	subss xmm2, [ebx+0x492e0]
	movss xmm0, dword [ebp-0x24]
	subss xmm0, [ebx+0x492e4]
	movss xmm1, dword [ebp-0x20]
	subss xmm1, [ebx+0x492e8]
	mulss xmm2, xmm2
	mulss xmm0, xmm0
	addss xmm2, xmm0
	mulss xmm1, xmm1
	addss xmm2, xmm1
	mov eax, cg_overheadNamesNearDist
	mov eax, [eax]
	movss xmm3, dword [eax+0xc]
	movaps xmm0, xmm3
	mulss xmm0, xmm3
	ucomiss xmm0, xmm2
	jbe CG_DrawOverheadNames_80
	movss [ebp-0xa8], xmm5
	movaps xmm0, xmm5
CG_DrawOverheadNames_110:
	mov eax, cg_overheadNamesSize
	mov eax, [eax]
	mulss xmm0, [eax+0xc]
	movss [esp+0x4], xmm0
	mov [esp], edi
	call R_NormalizedTextScale
	fstp dword [ebp-0xa4]
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x20
	lea eax, [ebp-0x7a]
	mov [esp], eax
	call R_TextWidth
	movss xmm0, dword [ebp-0xa4]
	mulss xmm0, [_float__0_50000000]
	cvtsi2ss xmm1, eax
	mulss xmm0, xmm1
	addss xmm0, [ebp-0xa0]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0xb4]
	movss xmm0, dword [_float_0_50000000]
	addss xmm0, [ebp-0x9c]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0xb8]
	lea ebx, [ebp-0x54]
	mov [esp+0x4], ebx
	mov eax, cg_overheadNamesGlow
	mov eax, [eax]
	mov [esp], eax
	call Cvar_GetUnpackedColor
	movss xmm0, dword [ebp-0xac]
	mulss xmm0, [ebp-0x48]
	movss [ebp-0x48], xmm0
	mov dword [esp+0x3c], 0x0
	mov dword [esp+0x38], 0x0
	mov dword [esp+0x34], 0x0
	mov dword [esp+0x30], 0x0
	mov dword [esp+0x2c], 0x0
	mov dword [esp+0x28], 0x0
	mov [esp+0x24], ebx
	mov dword [esp+0x20], 0x3
	lea eax, [ebp-0x44]
	mov [esp+0x1c], eax
	movss xmm0, dword [ebp-0xa4]
	movss [esp+0x18], xmm0
	movss [esp+0x14], xmm0
	movss xmm1, dword [ebp-0xb8]
	movss [esp+0x10], xmm1
	movss xmm3, dword [ebp-0xb4]
	movss [esp+0xc], xmm3
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x20
	lea eax, [ebp-0x7a]
	mov [esp], eax
	call CL_DrawTextPhysicalWithEffects
	mov edx, [esi+0x158]
	lea eax, [edx+edx*8]
	mov ecx, eax
	shl ecx, 0x4
	add eax, ecx
	lea eax, [edx+eax*2]
	shl eax, 0x2
	add eax, cgArray
	mov ebx, [eax+0xe9f58]
	lea edx, [ebp-0x1c]
	mov [esp+0x8], edx
	mov eax, [eax+0xe9f5c]
	mov [esp+0x4], eax
	mov [esp], ebx
	call CL_GetRankIcon
	mov edx, [ebp-0x1c]
	test edx, edx
	jz CG_DrawOverheadNames_70
	mov [esp], edi
	call R_TextHeight
	cvtsi2ss xmm0, eax
	movss xmm1, dword [ebp-0xa4]
	mulss xmm1, xmm0
	movss [ebp-0x94], xmm1
	mov eax, cg_overheadIconSize
	mov eax, [eax]
	mulss xmm1, [eax+0xc]
	movss [ebp-0x98], xmm1
	mov eax, cg_overheadRankSize
	mov eax, [eax]
	movss xmm0, dword [ebp-0xa8]
	mulss xmm0, [eax+0xc]
	movss [esp+0x4], xmm0
	mov [esp], edi
	call R_NormalizedTextScale
	fstp dword [ebp-0x8c]
	mov dword [esp+0x4], 0xe
	mov [esp], ebx
	call CL_GetRankData
	mov ebx, eax
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x20
	mov [esp], eax
	call R_TextWidth
	movss xmm3, dword [ebp-0xa8]
	addss xmm3, xmm3
	movss xmm0, dword [ebp-0x98]
	addss xmm0, xmm3
	movss [ebp-0xa8], xmm0
	cvtsi2ss xmm0, eax
	mulss xmm0, [ebp-0x8c]
	addss xmm0, [ebp-0xa8]
	movss xmm1, dword [ebp-0xb4]
	subss xmm1, xmm0
	movss [ebp-0x90], xmm1
	mov edx, 0x3f800000
	mov [ebp-0x44], edx
	mov [ebp-0x40], edx
	mov [ebp-0x3c], edx
	movss xmm3, dword [ebp-0xac]
	movss [ebp-0x38], xmm3
	mov eax, [ebp-0x1c]
	mov [esp+0x24], eax
	lea eax, [ebp-0x44]
	mov [esp+0x20], eax
	mov [esp+0x1c], edx
	mov [esp+0x18], edx
	xor eax, eax
	mov [esp+0x14], eax
	mov [esp+0x10], eax
	movss xmm0, dword [ebp-0x98]
	movss [esp+0xc], xmm0
	movss [esp+0x8], xmm0
	movss xmm1, dword [ebp-0x94]
	addss xmm1, xmm0
	movss xmm3, dword [_float__0_50000000]
	mulss xmm3, xmm1
	movss xmm0, dword [ebp-0xb8]
	addss xmm0, xmm3
	movss [esp+0x4], xmm0
	movss xmm1, dword [ebp-0x90]
	movss [esp], xmm1
	call CL_DrawStretchPicPhysical
	mov [esp], edi
	call R_TextHeight
	mov dword [esp+0x20], 0x3
	lea edx, [ebp-0x44]
	mov [esp+0x1c], edx
	movss xmm0, dword [ebp-0x8c]
	movss [esp+0x18], xmm0
	movss [esp+0x14], xmm0
	cvtsi2ss xmm0, eax
	mulss xmm0, [ebp-0x8c]
	movss [ebp-0x8c], xmm0
	mulss xmm0, [_float_0_25000000]
	movss xmm1, dword [ebp-0xb8]
	addss xmm1, xmm0
	movss [esp+0x10], xmm1
	movss xmm3, dword [ebp-0x98]
	addss xmm3, [ebp-0x90]
	movss [esp+0xc], xmm3
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x3
	mov [esp], ebx
	call CL_DrawTextPhysical
	add esp, 0xec
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_DrawOverheadNames_30:
	movss xmm0, dword [_float_10_00000000]
	addss xmm0, [ebp-0x20]
	movss [ebp-0x20], xmm0
	jmp CG_DrawOverheadNames_90
CG_DrawOverheadNames_80:
	mov eax, cg_overheadNamesFarDist
	mov eax, [eax]
	movss xmm4, dword [eax+0xc]
	movaps xmm0, xmm4
	mulss xmm0, xmm4
	ucomiss xmm2, xmm0
	jbe CG_DrawOverheadNames_100
	mov eax, cg_overheadNamesFarScale
	mov eax, [eax]
	movss xmm3, dword [eax+0xc]
	movss [ebp-0xa8], xmm3
	movaps xmm0, xmm3
	jmp CG_DrawOverheadNames_110
CG_DrawOverheadNames_100:
	sqrtss xmm1, xmm2
	subss xmm1, xmm3
	subss xmm4, xmm3
	divss xmm1, xmm4
	mov eax, cg_overheadNamesFarScale
	mov eax, [eax]
	movaps xmm0, xmm1
	mulss xmm0, [eax+0xc]
	movss [ebp-0xa8], xmm0
	movaps xmm0, xmm5
	subss xmm0, xmm1
	addss xmm0, [ebp-0xa8]
	movss [ebp-0xa8], xmm0
	jmp CG_DrawOverheadNames_110


;CG_DrawCrosshairNames(int)
CG_DrawCrosshairNames:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov [ebp-0x1c], eax
	mov eax, cg_drawCrosshairNames
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz CG_DrawCrosshairNames_10
	mov edi, cgArray
	mov eax, [edi+0x46138]
	test eax, eax
	jnz CG_DrawCrosshairNames_10
	mov esi, [edi+0x502f8]
	cmp esi, 0x40
	jg CG_DrawCrosshairNames_10
	mov ebx, [edi+0x24]
	mov eax, [ebx+0xe8]
	lea edx, [eax+eax*8]
	mov ecx, edx
	shl ecx, 0x4
	add edx, ecx
	lea edx, [eax+edx*2]
	shl edx, 0x2
	mov [ebp-0x20], edx
	mov eax, [edx+edi+0xe9f34]
	test eax, eax
	jz CG_DrawCrosshairNames_10
	lea eax, [esi+esi*8]
	mov edx, eax
	shl edx, 0x4
	add eax, edx
	lea eax, [esi+eax*2]
	shl eax, 0x2
	mov ecx, [eax+edi+0xe9f34]
	test ecx, ecx
	jz CG_DrawCrosshairNames_10
	mov edx, [ebx+0x2f70]
	mov [ebp-0x18], edx
	test edx, edx
	jle CG_DrawCrosshairNames_10
	mov ecx, ebx
	xor ebx, ebx
	mov edx, [ebp-0x20]
	mov [ebp-0x24], edx
	mov [ebp-0x28], eax
	jmp CG_DrawCrosshairNames_20
CG_DrawCrosshairNames_30:
	add ebx, 0x1
	add ecx, 0xf4
	cmp ebx, [ebp-0x18]
	jz CG_DrawCrosshairNames_10
CG_DrawCrosshairNames_20:
	mov eax, [ecx+0x2f78]
	lea edx, [eax*4]
	shl eax, 0x5
	sub eax, edx
	mov edx, eax
	shl edx, 0x4
	lea edx, [eax+edx]
	add edx, cg_entitiesArray
	cmp dword [edx+0xd0], 0x1
	jnz CG_DrawCrosshairNames_30
	cmp esi, [edx+0x158]
	jnz CG_DrawCrosshairNames_30
	mov ecx, [ebp-0x24]
	mov eax, [ecx+edi+0xe9f50]
	cmp eax, 0x3
	jz CG_DrawCrosshairNames_40
	test eax, eax
	jz CG_DrawCrosshairNames_50
	mov ecx, [ebp-0x28]
	cmp eax, [ecx+edi+0xe9f50]
	jz CG_DrawCrosshairNames_40
CG_DrawCrosshairNames_50:
	mov eax, cg_enemyNameFadeOut
	mov eax, [eax]
	mov ebx, [eax+0xc]
	mov eax, cg_enemyNameFadeIn
	mov eax, [eax]
	mov eax, [eax+0xc]
	mov [ebp-0x10], eax
	mov ecx, [edi+0x502fc]
	mov esi, [edi+0x50300]
	mov eax, [edi+0x46128]
	sub eax, ecx
	cmp ebx, eax
	jle CG_DrawCrosshairNames_60
	sub ecx, esi
	cmp [ebp-0x10], ecx
	jg CG_DrawCrosshairNames_60
CG_DrawCrosshairNames_70:
	mov ecx, ebx
	sub ecx, eax
	cvtsi2ss xmm1, ecx
	cvtsi2ss xmm0, ebx
	divss xmm1, xmm0
CG_DrawCrosshairNames_80:
	movaps xmm0, xmm1
	mov eax, [ebp-0x1c]
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp CG_DrawOverheadNames
CG_DrawCrosshairNames_10:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_DrawCrosshairNames_40:
	mov eax, cg_friendlyNameFadeOut
	mov eax, [eax]
	mov ebx, [eax+0xc]
	mov eax, cg_friendlyNameFadeIn
	mov eax, [eax]
	mov eax, [eax+0xc]
	mov [ebp-0x14], eax
	mov ecx, [edi+0x502fc]
	mov esi, [edi+0x50300]
	mov eax, [edi+0x46128]
	sub eax, ecx
	cmp ebx, eax
	jle CG_DrawCrosshairNames_60
	sub ecx, esi
	cmp [ebp-0x14], ecx
	jle CG_DrawCrosshairNames_70
CG_DrawCrosshairNames_60:
	pxor xmm1, xmm1
	jmp CG_DrawCrosshairNames_80


;CG_DrawFriendlyNames(int)
CG_DrawFriendlyNames:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xbc
	mov [ebp-0x90], eax
	mov eax, cg_drawFriendlyNames
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz CG_DrawFriendlyNames_10
CG_DrawFriendlyNames_20:
	add esp, 0xbc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_DrawFriendlyNames_10:
	mov ebx, cgArray
	mov eax, [ebx+0x24]
	mov [ebp-0x8c], eax
	mov eax, [eax+0xe8]
	lea edx, [eax+eax*8]
	mov ecx, edx
	shl ecx, 0x4
	add edx, ecx
	lea edx, [eax+edx*2]
	mov edx, [ebx+edx*4+0xe9f50]
	mov [ebp-0x84], edx
	mov ecx, [ebp-0x90]
	mov [esp], ecx
	call CG_Flashbanged
	mov [ebp-0x7d], al
	mov eax, [ebp-0x8c]
	mov edx, [eax+0x2f70]
	test edx, edx
	jle CG_DrawFriendlyNames_20
	mov edi, eax
	mov dword [ebp-0x88], 0x0
	lea edx, [ebx+0x492f0]
	mov [ebp-0x74], edx
	add ebx, 0x492f4
	mov [ebp-0x70], ebx
	jmp CG_DrawFriendlyNames_30
CG_DrawFriendlyNames_40:
	add dword [ebp-0x88], 0x1
	add edi, 0xf4
	mov ecx, [ebp-0x88]
	mov edx, [ebp-0x8c]
	cmp ecx, [edx+0x2f70]
	jge CG_DrawFriendlyNames_20
CG_DrawFriendlyNames_30:
	mov eax, [edi+0x2f78]
	lea edx, [eax*4]
	shl eax, 0x5
	sub eax, edx
	mov edx, eax
	shl edx, 0x4
	lea esi, [eax+edx]
	add esi, cg_entitiesArray
	cmp dword [esi+0xd0], 0x1
	jnz CG_DrawFriendlyNames_40
	mov ecx, [esi+0xcc]
	mov [ebp-0x7c], ecx
	mov eax, cgArray
	mov ebx, [eax+0x24]
	test byte [ebx+0x20], 0x6
	jz CG_DrawFriendlyNames_50
	cmp ecx, [ebx+0xe8]
	jz CG_DrawFriendlyNames_60
CG_DrawFriendlyNames_50:
	xor eax, eax
CG_DrawFriendlyNames_120:
	test eax, eax
	jz CG_DrawFriendlyNames_70
	mov edx, cgArray
	mov eax, [edx+0x46138]
	test eax, eax
	jz CG_DrawFriendlyNames_40
CG_DrawFriendlyNames_70:
	mov eax, [ebp-0x84]
	test eax, eax
	jz CG_DrawFriendlyNames_40
	cmp dword [ebp-0x84], 0x3
	jz CG_DrawFriendlyNames_80
	mov eax, [esi+0x158]
	lea edx, [eax+eax*8]
	mov ecx, edx
	shl ecx, 0x4
	add edx, ecx
	lea edx, [eax+edx*2]
	mov eax, [ebp-0x84]
	mov ecx, cgArray
	cmp eax, [ecx+edx*4+0xe9f50]
	jnz CG_DrawFriendlyNames_40
CG_DrawFriendlyNames_80:
	cmp byte [ebp-0x7d], 0x0
	jnz CG_DrawFriendlyNames_90
	mov eax, cg_drawThroughWalls
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz CG_DrawFriendlyNames_100
CG_DrawFriendlyNames_170:
	mov edx, [esi+0x158]
	lea eax, [edx+edx*2]
	lea ecx, [eax*4]
	cmp byte [ecx+overheadFade+0x8], 0x0
	jnz CG_DrawFriendlyNames_110
	mov byte [ecx+overheadFade+0x8], 0x1
	mov edx, cgArray
	mov eax, [edx+0x46128]
	mov [ecx+overheadFade+0x4], eax
	mov edx, [esi+0x158]
	jmp CG_DrawFriendlyNames_110
CG_DrawFriendlyNames_60:
	mov eax, 0x1
	jmp CG_DrawFriendlyNames_120
CG_DrawFriendlyNames_100:
	add ebx, 0xc
	mov edx, cgArray
	mov eax, [edx+0x492e0]
	mov [ebp-0x24], eax
	mov eax, [edx+0x492e4]
	mov [ebp-0x20], eax
	mov eax, [edx+0x492e8]
	mov [ebp-0x1c], eax
	mov ecx, [ebp-0x90]
	mov [esp+0x4], ecx
	mov eax, [ebp-0x7c]
	mov [esp], eax
	call Com_GetClientDObj
	mov edx, eax
	test eax, eax
	jz CG_DrawFriendlyNames_130
	lea eax, [ebp-0x30]
	mov [esp+0xc], eax
	mov eax, scr_const
	movzx eax, word [eax+0x130]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov [esp], esi
	call CG_DObjGetWorldTagPos
	test eax, eax
	jnz CG_DrawFriendlyNames_140
CG_DrawFriendlyNames_130:
	lea edx, [esi+0x1c]
	mov eax, [esi+0x1c]
	mov [ebp-0x30], eax
	mov eax, [edx+0x4]
	mov [ebp-0x2c], eax
	mov eax, [edx+0x8]
	mov [ebp-0x28], eax
CG_DrawFriendlyNames_140:
	movss xmm2, dword [ebp-0x30]
	movss xmm3, dword [ebp-0x2c]
	movss xmm4, dword [ebp-0x28]
	movaps xmm0, xmm2
	mov edx, cgArray
	subss xmm0, [edx+0x492e0]
	mulss xmm0, [edx+0x492ec]
	movaps xmm1, xmm3
	subss xmm1, [edx+0x492e4]
	mov ecx, [ebp-0x74]
	mulss xmm1, [ecx]
	addss xmm0, xmm1
	movaps xmm1, xmm4
	subss xmm1, [edx+0x492e8]
	mov eax, [ebp-0x70]
	mulss xmm1, [eax]
	addss xmm0, xmm1
	ucomiss xmm0, [_float_0_00000000]
	jp CG_DrawFriendlyNames_150
	jb CG_DrawFriendlyNames_90
CG_DrawFriendlyNames_150:
	subss xmm2, [ebp-0x24]
	subss xmm3, [ebp-0x20]
	subss xmm4, [ebp-0x1c]
	mov eax, cg_overheadNamesMaxDist
	mov eax, [eax]
	movss xmm0, dword [eax+0xc]
	mulss xmm2, xmm2
	mulss xmm3, xmm3
	addss xmm2, xmm3
	mulss xmm4, xmm4
	addss xmm2, xmm4
	mulss xmm0, xmm0
	ucomiss xmm2, xmm0
	ja CG_DrawFriendlyNames_90
	mov dword [esp+0x18], 0x2803001
	mov eax, [ebx+0xdc]
	mov [esp+0x14], eax
	lea eax, [ebp-0x30]
	mov [esp+0x10], eax
	mov eax, vec3_origin
	mov [esp+0xc], eax
	mov [esp+0x8], eax
	lea edx, [ebp-0x24]
	mov [esp+0x4], edx
	lea ebx, [ebp-0x68]
	mov [esp], ebx
	call CG_TraceCapsule
	mov [esp], ebx
	call Trace_GetEntityHitId
	cmp ax, 0x3ff
	jz CG_DrawFriendlyNames_160
	movzx eax, ax
	cmp eax, [esi+0x158]
	jnz CG_DrawFriendlyNames_90
CG_DrawFriendlyNames_160:
	movss xmm2, dword [ebp-0x68]
	movss xmm1, dword [ebp-0x24]
	movss xmm0, dword [ebp-0x30]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebp-0x3c], xmm1
	movss xmm1, dword [ebp-0x20]
	movss xmm0, dword [ebp-0x2c]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebp-0x38], xmm1
	movss xmm1, dword [ebp-0x1c]
	movss xmm0, dword [ebp-0x28]
	subss xmm0, xmm1
	mulss xmm2, xmm0
	addss xmm1, xmm2
	movss [ebp-0x34], xmm1
	lea eax, [ebp-0x3c]
	mov [esp+0x8], eax
	lea ecx, [ebp-0x24]
	mov [esp+0x4], ecx
	mov eax, [ebp-0x90]
	mov [esp], eax
	call FX_GetClientVisibility
	fstp dword [ebp-0x78]
	movss xmm0, dword [ebp-0x78]
	ucomiss xmm0, [_float_0_20000000]
	jae CG_DrawFriendlyNames_170
	jp CG_DrawFriendlyNames_170
CG_DrawFriendlyNames_90:
	mov eax, [esi+0x158]
	lea eax, [eax+eax*2]
	mov byte [eax*4+overheadFade+0x8], 0x0
	mov edx, [esi+0x158]
CG_DrawFriendlyNames_110:
	lea eax, [edx+edx*2]
	lea edx, [eax*4]
	cmp byte [edx+overheadFade+0x8], 0x0
	jz CG_DrawFriendlyNames_180
	mov ecx, cgArray
	mov eax, [ecx+0x46128]
	mov [edx+overheadFade], eax
	mov ecx, eax
CG_DrawFriendlyNames_210:
	mov eax, cg_friendlyNameFadeOut
	mov eax, [eax]
	mov ebx, [eax+0xc]
	mov eax, cg_friendlyNameFadeIn
	mov eax, [eax]
	mov eax, [eax+0xc]
	mov [ebp-0x6c], eax
	mov edx, [edx+overheadFade+0x4]
	mov [ebp-0x9c], edx
	mov eax, cgArray
	mov edx, [eax+0x46128]
	sub edx, ecx
	cmp ebx, edx
	jle CG_DrawFriendlyNames_190
	sub ecx, [ebp-0x9c]
	cmp [ebp-0x6c], ecx
	jle CG_DrawFriendlyNames_200
CG_DrawFriendlyNames_190:
	pxor xmm1, xmm1
CG_DrawFriendlyNames_220:
	movaps xmm0, xmm1
	mov edx, esi
	mov eax, [ebp-0x90]
	call CG_DrawOverheadNames
	jmp CG_DrawFriendlyNames_40
CG_DrawFriendlyNames_180:
	mov ecx, [edx+overheadFade]
	jmp CG_DrawFriendlyNames_210
CG_DrawFriendlyNames_200:
	mov eax, ebx
	sub eax, edx
	cvtsi2ss xmm1, eax
	cvtsi2ss xmm0, ebx
	divss xmm1, xmm0
	jmp CG_DrawFriendlyNames_220


;CG_DrawActive(int)
CG_DrawActive:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x20
	mov esi, [ebp+0x8]
	mov eax, cgArray
	movss xmm0, dword [eax+0x4f39c]
	movss xmm1, dword [eax+0x504e0]
	ucomiss xmm1, [_float_0_00000000]
	jp CG_DrawActive_10
	jz CG_DrawActive_20
CG_DrawActive_10:
	mulss xmm0, xmm1
CG_DrawActive_20:
	movss [esp+0x4], xmm0
	mov [esp], esi
	call CL_SetFOVSensitivityScale
	mov ebx, cgArray
	movss xmm0, dword [ebx+0x5041c]
	addss xmm0, [ebx+0x50428]
	movss [ebp-0x14], xmm0
	movss xmm0, dword [ebx+0x50420]
	addss xmm0, [ebx+0x5042c]
	movss [ebp-0x10], xmm0
	movss xmm0, dword [ebx+0x50424]
	addss xmm0, [ebx+0x50430]
	movss [ebp-0xc], xmm0
	lea eax, [ebp-0x14]
	mov [esp+0x4], eax
	mov [esp], esi
	call CL_SetUserCmdAimValues
	mov eax, [ebx+0x5037c]
	mov [esp], eax
	call BG_AssertOffhandIndexOrNone
	mov eax, [ebx+0x5037c]
	mov [esp+0x8], eax
	mov eax, [ebx+0x5036c]
	mov [esp+0x4], eax
	mov [esp], esi
	call CL_SetUserCmdWeapons
	mov eax, [ebx+0xfd750]
	mov [esp+0x4], eax
	mov [esp], esi
	call CL_SetExtraButtons
	mov dword [ebx+0xfd750], 0x0
	add ebx, 0x492c8
	mov [esp], ebx
	call CL_RenderScene
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret


;CG_ClearCenterPrint(int)
CG_ClearCenterPrint:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	mov eax, edx
	shl eax, 0xa
	mov dword [eax+edx*8+s_centerPrint], 0x0
	pop ebp
	ret


;CG_DrawCenterString(int, rectDef_s const*, Font_s*, float, float*, int)
CG_DrawCenterString:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov edi, [ebp+0x8]
	mov esi, [ebp+0x18]
	mov eax, cgArray
	mov ecx, [eax+0x46128]
	mov eax, edi
	shl eax, 0xa
	lea ebx, [eax+edi*8]
	lea eax, [ebx+s_centerPrint]
	mov [ebp-0x1c], eax
	cmp ecx, [ebx+s_centerPrint]
	jge CG_DrawCenterString_10
	mov dword [ebx+s_centerPrint], 0x0
CG_DrawCenterString_10:
	mov edx, [ebx+s_centerPrint]
	test edx, edx
	jnz CG_DrawCenterString_20
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_DrawCenterString_20:
	mov dword [esp+0xc], 0x64
	mov eax, cg_centertime
	mov eax, [eax]
	movss xmm0, dword [_float_1000_00000000]
	mulss xmm0, [eax+0xc]
	cvttss2si eax, xmm0
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov [esp], ecx
	call CG_FadeColor
	test eax, eax
	jz CG_DrawCenterString_30
	movss xmm0, dword [esi]
	mulss xmm0, [eax]
	movss [esi], xmm0
	movss xmm0, dword [esi+0x4]
	mulss xmm0, [eax+0x4]
	movss [esi+0x4], xmm0
	movss xmm0, dword [esi+0x8]
	mulss xmm0, [eax+0x8]
	movss [esi+0x8], xmm0
	movss xmm0, dword [esi+0xc]
	mulss xmm0, [eax+0xc]
	movss [esi+0xc], xmm0
	mov ecx, [ebp+0xc]
	movss xmm0, dword [ecx]
	movss [ebp-0x20], xmm0
	mov ebx, [ebp-0x1c]
	add ebx, 0x4
	movss xmm1, dword [ebp+0x14]
	movss [esp+0xc], xmm1
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call UI_TextWidth
	mov edx, [ebp+0x1c]
	mov [esp+0x28], edx
	mov [esp+0x24], esi
	movss xmm0, dword [ebp+0x14]
	movss [esp+0x20], xmm0
	mov ecx, [ebp+0xc]
	mov edx, [ecx+0x14]
	mov [esp+0x1c], edx
	mov edx, [ecx+0x10]
	mov [esp+0x18], edx
	mov edx, [ecx+0x4]
	mov [esp+0x14], edx
	cvtsi2ss xmm0, eax
	movss xmm1, dword [_float_0_50000000]
	mulss xmm0, xmm1
	addss xmm0, xmm1
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x24]
	cvttss2si eax, [ebp-0x24]
	cvtsi2ss xmm0, eax
	movss xmm1, dword [ebp-0x20]
	subss xmm1, xmm0
	movss [esp+0x10], xmm1
	mov eax, [ebp+0x10]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x7fffffff
	mov [esp+0x4], ebx
	mov eax, edi
	shl eax, 0x6
	lea eax, [eax+edi*4]
	add eax, scrPlaceView
	mov [esp], eax
	call UI_DrawText
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_DrawCenterString_30:
	mov dword [ebx+s_centerPrint], 0x0
	mov edx, [ebp-0x1c]
	mov dword [edx+0x404], 0x0
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;CG_ClearOverheadFade()
CG_ClearOverheadFade:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x8], 0x300
	mov dword [esp+0x4], 0x0
	mov dword [esp], overheadFade
	call memset
	leave
	ret


;CG_GenerateSceneVerts(int)
CG_GenerateSceneVerts:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov [esp], ebx
	call CG_AddAllPlayerSpriteDrawSurfs
	mov [ebp+0x8], ebx
	add esp, 0x14
	pop ebx
	pop ebp
	jmp CG_AddDrawSurfsFor3dHudElems
	nop


;CG_AddSceneTracerBeams(int)
CG_AddSceneTracerBeams:
	push ebp
	mov ebp, esp
	pop ebp
	jmp CG_AddLocalEntityTracerBeams
	nop


;CG_PriorityCenterPrint(int, char const*, int)
CG_PriorityCenterPrint:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x11c
	mov edx, [ebp+0x8]
	mov eax, edx
	shl eax, 0xa
	lea edi, [eax+edx*8]
	lea esi, [edi+s_centerPrint]
	mov eax, [edi+s_centerPrint]
	test eax, eax
	jz CG_PriorityCenterPrint_10
	mov eax, [ebp+0x10]
	cmp eax, [esi+0x404]
	jl CG_PriorityCenterPrint_20
CG_PriorityCenterPrint_10:
	lea ebx, [ebp-0x118]
	mov [esp+0xc], ebx
	mov dword [esp+0x8], _cstring_center_print
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], edx
	call CG_TranslateHudElemMessage
	mov dword [esp+0x8], 0x100
	mov [esp+0x4], ebx
	lea eax, [esi+0x4]
	mov [esp], eax
	call Q_strncpyz
	mov eax, [ebp+0x10]
	mov [esi+0x404], eax
	mov eax, cgArray
	mov eax, [eax+0x46128]
	mov [edi+s_centerPrint], eax
CG_PriorityCenterPrint_20:
	add esp, 0x11c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;CG_Draw2D(int)
CG_Draw2D:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x42c
	mov ebx, cgArray
	mov eax, [ebx+0xc]
	test eax, eax
	jnz CG_Draw2D_10
	mov eax, cg_draw2D
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz CG_Draw2D_10
	mov eax, net_showprofile
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	jnz CG_Draw2D_10
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_ShouldDrawHud
	mov [ebp-0x3b5], al
	mov esi, [ebx+0x24]
	add esi, 0xc
	cmp dword [esi+0x4], 0x5
	jz CG_Draw2D_20
	mov eax, ui_showEndOfGame
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz CG_Draw2D_30
CG_Draw2D_630:
	mov edx, [ebp+0x8]
	mov [esp], edx
	call CG_CompassUpdateActors
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call CG_IsScoreboardDisplayed
	mov [ebp-0x3bc], eax
	cmp dword [esi+0x4], 0x4
	jnz CG_Draw2D_40
	cmp byte [ebp-0x3b5], 0x0
	jnz CG_Draw2D_50
CG_Draw2D_620:
	mov edx, [ebp+0x8]
	mov [esp], edx
	call CG_DrawScoreboard
	mov [ebp-0x3c0], eax
	cmp byte [ebp-0x3b5], 0x0
	jz CG_Draw2D_10
	mov eax, [ebp-0x3bc]
	test eax, eax
	jnz CG_Draw2D_60
CG_Draw2D_790:
	mov ebx, cgArray
	mov [esp], ebx
	call CG_DrawFlashDamage
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call CG_DrawDamageDirectionIndicators
	mov esi, [ebp+0x8]
	mov [esp], esi
	call CG_DrawGrenadeIndicators
	mov eax, [ebp-0x3c0]
	test eax, eax
	jnz CG_Draw2D_70
	mov eax, cg_drawSpectatorMessages
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz CG_Draw2D_70
	mov dword [ebp-0x78], _cstring_toggleads_throw
	mov dword [ebp-0x74], _cstring_speed_throw
	mov dword [ebp-0x70], _cstring_speed
	mov dword [ebp-0x6c], _cstring_toggleads
	mov dword [ebp-0x378], _cstring_melee
	mov dword [ebp-0x374], _cstring_melee_breath
	mov eax, cg_descriptiveText
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz CG_Draw2D_80
CG_Draw2D_910:
	mov eax, cgArray
	mov edx, [eax+0x24]
	add edx, 0xc
	test byte [edx+0x14], 0x2
	jz CG_Draw2D_70
	mov esi, [eax+0x5052c]
	test esi, esi
	jnz CG_Draw2D_70
	mov dword [esp+0xc], 0x26
	lea eax, [ebp-0x378]
	mov [esp+0x8], eax
	mov eax, [edx+0xdc]
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov [esp], edx
	call CL_GetClientName
	test eax, eax
	jz CG_Draw2D_90
CG_Draw2D_1100:
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _cstring_spectator_follow
	mov dword [esp], _cstring_cgame_following
	call SEH_LocalizeTextMessage
	mov [ebp-0x398], eax
	call CL_IsRenderingSplitScreen
	test al, al
	jz CG_Draw2D_100
	movss xmm0, dword [_float_0_50000000]
	movss [ebp-0x394], xmm0
CG_Draw2D_1030:
	mov eax, [ebp+0x8]
	shl eax, 0x6
	mov edx, [ebp+0x8]
	lea esi, [eax+edx*4]
	add esi, scrPlaceView
	mov dword [esp+0x8], 0x3eaaaaab
	mov dword [esp+0x4], 0x6
	mov [esp], esi
	call UI_GetFontHandle
	mov ebx, eax
	movss xmm0, dword [ebp-0x394]
	movss [esp+0xc], xmm0
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov eax, [ebp-0x398]
	mov [esp], eax
	call UI_TextWidth
	mov dword [esp+0x28], 0x3
	mov edi, colorWhite
	mov [esp+0x24], edi
	movss xmm0, dword [ebp-0x394]
	movss [esp+0x20], xmm0
	mov dword [esp+0x1c], 0x1
	mov dword [esp+0x18], 0x7
	mov dword [esp+0x14], 0x41a00000
	neg eax
	cvtsi2ss xmm0, eax
	mulss xmm0, [_float_0_50000000]
	movss [esp+0x10], xmm0
	mov [esp+0xc], ebx
	mov dword [esp+0x8], 0x7fffffff
	mov eax, [ebp-0x398]
	mov [esp+0x4], eax
	mov [esp], esi
	call UI_DrawText
	movss xmm0, dword [ebp-0x394]
	movss [esp+0xc], xmm0
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x0
	lea eax, [ebp-0x378]
	mov [esp], eax
	call UI_TextWidth
	mov dword [esp+0x28], 0x3
	mov [esp+0x24], edi
	movss xmm0, dword [ebp-0x394]
	movss [esp+0x20], xmm0
	mov dword [esp+0x1c], 0x1
	mov dword [esp+0x18], 0x7
	mov dword [esp+0x14], 0x42100000
	neg eax
	cvtsi2ss xmm0, eax
	mulss xmm0, [_float_0_50000000]
	movss [esp+0x10], xmm0
	mov [esp+0xc], ebx
	mov dword [esp+0x8], 0x7fffffff
	lea eax, [ebp-0x378]
	mov [esp+0x4], eax
	mov [esp], esi
	call UI_DrawText
CG_Draw2D_70:
	mov edx, cgsArray
	mov ebx, [edx+0x188]
	test ebx, ebx
	jz CG_Draw2D_110
	mov eax, [ebp+0x8]
	shl eax, 0x6
	mov ecx, [ebp+0x8]
	lea eax, [eax+ecx*4]
	mov esi, scrPlaceView
	add eax, esi
	mov [ebp-0x380], eax
	cmp dword [edx+0xc], 0x300
	jg CG_Draw2D_120
	movss xmm0, dword [_float_16_00000000]
	movss [ebp-0x388], xmm0
	movss xmm0, dword [_float_0_33333334]
	movss [ebp-0x37c], xmm0
CG_Draw2D_730:
	movss [esp+0x8], xmm0
	mov dword [esp+0x4], 0x0
	mov eax, [ebp-0x380]
	mov [esp], eax
	call UI_GetFontHandle
	mov [ebp-0x384], eax
	mov eax, cg_hudVotePosition
	mov eax, [eax]
	movss xmm0, dword [eax+0xc]
	movss [ebp-0x390], xmm0
	movss xmm0, dword [ebp-0x388]
	addss xmm0, [eax+0x10]
	movss [ebp-0x38c], xmm0
	lea eax, [ebp-0x378]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_vote_yes
	mov edx, [ebp+0x8]
	mov [esp], edx
	call UI_GetKeyBindingLocalizedString
	test eax, eax
	jz CG_Draw2D_130
	mov dword [esp+0x8], 0x100
	lea ecx, [ebp-0x378]
	mov [esp+0x4], ecx
	lea esi, [ebp-0x178]
	mov [esp], esi
	call Q_strncpyz
CG_Draw2D_820:
	lea eax, [ebp-0x378]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_vote_no
	mov edx, [ebp+0x8]
	mov [esp], edx
	call UI_GetKeyBindingLocalizedString
	test eax, eax
	jz CG_Draw2D_140
	mov dword [esp+0x8], 0x100
	lea ecx, [ebp-0x378]
	mov [esp+0x4], ecx
	lea esi, [ebp-0x278]
	mov [esp], esi
	call Q_strncpyz
CG_Draw2D_810:
	mov esi, cgsArray
	mov ecx, cgArray
	mov ebx, [esi+0x188]
	sub ebx, [ecx+0x46128]
	mov edx, 0x10624dd3
	mov eax, ebx
	imul edx
	sar edx, 0x6
	mov eax, ebx
	sar eax, 0x1f
	mov ebx, edx
	sub ebx, eax
	mov eax, 0x0
	cmovs ebx, eax
	mov eax, [ecx+0x24]
	test byte [eax+0xbe], 0x10
	jz CG_Draw2D_150
	mov dword [esp], _cstring_cgame_vote
	call UI_SafeTranslateString
	lea edx, [esi+0x194]
	mov [esp+0xc], edx
	mov [esp+0x8], ebx
	mov [esp+0x4], eax
	mov dword [esp], _cstring_sis
	call va
	mov dword [esp+0x28], 0x3
	mov edx, colorYellow
	mov [esp+0x24], edx
	movss xmm0, dword [ebp-0x37c]
	movss [esp+0x20], xmm0
	mov dword [esp+0x1c], 0x1
	mov dword [esp+0x18], 0x1
	movss xmm0, dword [ebp-0x38c]
	movss [esp+0x14], xmm0
	movss xmm0, dword [ebp-0x390]
	movss [esp+0x10], xmm0
	mov edx, [ebp-0x384]
	mov [esp+0xc], edx
	mov dword [esp+0x8], 0x7fffffff
	mov [esp+0x4], eax
	mov ecx, [ebp-0x380]
	mov [esp], ecx
	call UI_DrawText
	mov edi, [esi+0x190]
	mov dword [esp], _cstring_cgame_no
	call UI_SafeTranslateString
	mov ebx, eax
	mov esi, [esi+0x18c]
	mov dword [esp], _cstring_cgame_yes
	call UI_SafeTranslateString
	mov [esp+0x10], edi
	mov [esp+0xc], ebx
	mov [esp+0x8], esi
	mov [esp+0x4], eax
	mov dword [esp], _cstring_si_si
	call va
	mov dword [esp+0x28], 0x3
	mov esi, colorYellow
	mov [esp+0x24], esi
CG_Draw2D_800:
	movss xmm0, dword [ebp-0x37c]
	movss [esp+0x20], xmm0
	mov dword [esp+0x1c], 0x1
	mov dword [esp+0x18], 0x1
	movss xmm0, dword [ebp-0x388]
	addss xmm0, [ebp-0x38c]
	movss [esp+0x14], xmm0
	movss xmm0, dword [ebp-0x390]
	movss [esp+0x10], xmm0
	mov edx, [ebp-0x384]
	mov [esp+0xc], edx
	mov dword [esp+0x8], 0x7fffffff
	mov [esp+0x4], eax
	mov ecx, [ebp-0x380]
	mov [esp], ecx
	call UI_DrawText
CG_Draw2D_110:
	mov esi, [ebp+0x8]
	mov [esp], esi
	call CG_DrawLagometer
	mov [esp], esi
	call CG_DrawDebugOverlays
	mov ecx, [ebp-0x3c0]
	test ecx, ecx
	jnz CG_Draw2D_160
	mov eax, cg_minicon
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz CG_Draw2D_170
CG_Draw2D_760:
	mov dword [esp+0xc], 0x3f800000
	mov dword [esp+0x8], 0x12c
	mov dword [esp+0x4], 0x2
	mov edi, [ebp+0x8]
	mov [esp], edi
	call Con_DrawErrors
CG_Draw2D_160:
	mov eax, cg_hudSayPosition
	mov edx, [eax]
	cvttss2si eax, [edx+0x10]
	add eax, 0x18
	mov [esp+0x8], eax
	cvttss2si eax, [edx+0xc]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Con_DrawSay
CG_Draw2D_10:
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_Draw2D_40:
	mov edi, [ebp+0x8]
	mov [esp], edi
	call CG_DrawNightVisionOverlay
	mov eax, edi
	call CG_ScanForCrosshairEntity
	cmp dword [esi+0x4], 0x6
	jle CG_Draw2D_180
CG_Draw2D_830:
	cmp byte [ebp-0x3b5], 0x0
	jz CG_Draw2D_190
	cmp dword [esi+0x4], 0x6
	jle CG_Draw2D_200
CG_Draw2D_890:
	mov eax, [ebp-0x3bc]
	test eax, eax
	jnz CG_Draw2D_190
	mov eax, [ebp+0x8]
	call CG_DrawChatMessages
CG_Draw2D_190:
	mov ebx, cgArray
	mov edx, [ebx+0x50368]
	test edx, edx
	jnz CG_Draw2D_210
CG_Draw2D_640:
	mov edx, [ebp+0x8]
	mov [esp], edx
	call CL_GetCurrentCmdNumber
	mov ebx, eax
	cmp eax, 0x1
	jle CG_Draw2D_220
	lea eax, [ebp-0x38]
	mov [esp+0x8], eax
	lea eax, [ebx-0x1]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call CL_GetUserCmd
	lea eax, [ebp-0x58]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov esi, [ebp+0x8]
	mov [esp], esi
	call CL_GetUserCmd
	mov edx, [ebp-0x34]
	mov edi, [ebp-0x54]
	mov [ebp-0x3c4], edi
	xor edi, edx
	mov [ebp-0x3b4], edi
	movzx eax, byte [ebp-0x1a]
	mov [ebp-0x35a], al
	movzx eax, byte [ebp-0x1b]
	mov [ebp-0x35b], al
	movzx eax, byte [ebp-0x1c]
	mov [ebp-0x35c], al
	mov eax, [ebp-0x20]
	mov [ebp-0x360], eax
	movzx eax, byte [ebp-0x21]
	mov [ebp-0x361], al
	movzx eax, byte [ebp-0x22]
	mov [ebp-0x362], al
	movzx eax, byte [ebp-0x23]
	mov [ebp-0x363], al
	movzx eax, byte [ebp-0x24]
	mov [ebp-0x364], al
	mov eax, [ebp-0x28]
	mov [ebp-0x368], eax
	mov eax, [ebp-0x2c]
	mov [ebp-0x36c], eax
	mov eax, [ebp-0x30]
	mov [ebp-0x370], eax
	mov [ebp-0x374], edx
	mov eax, [ebp-0x38]
	mov [ebp-0x378], eax
	movzx eax, byte [ebp-0x3a]
	mov [ebp-0x5a], al
	movzx eax, byte [ebp-0x3b]
	mov [ebp-0x5b], al
	movzx eax, byte [ebp-0x3c]
	mov [ebp-0x5c], al
	mov eax, [ebp-0x40]
	mov [ebp-0x60], eax
	movzx eax, byte [ebp-0x41]
	mov [ebp-0x61], al
	movzx eax, byte [ebp-0x42]
	mov [ebp-0x62], al
	movzx eax, byte [ebp-0x43]
	mov [ebp-0x63], al
	movzx eax, byte [ebp-0x44]
	mov [ebp-0x64], al
	mov eax, [ebp-0x48]
	mov [ebp-0x68], eax
	mov eax, [ebp-0x4c]
	mov [ebp-0x6c], eax
	mov eax, [ebp-0x50]
	mov [ebp-0x70], eax
	mov eax, [ebp-0x3c4]
	mov [ebp-0x74], eax
	mov eax, [ebp-0x58]
	mov [ebp-0x78], eax
	mov ebx, 0xc
	cld
	lea esi, [ebp-0x370]
	lea edi, [ebp-0x70]
	mov ecx, ebx
	repe cmpsb
	mov eax, 0x0
	jz CG_Draw2D_230
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
CG_Draw2D_230:
	test eax, eax
	jz CG_Draw2D_240
CG_Draw2D_740:
	mov ebx, 0x1
CG_Draw2D_750:
	test byte [ebp-0x3c4], 0x1
	jz CG_Draw2D_250
	mov eax, cgArray
	test dword [eax+0x461ec], 0x300
	jz CG_Draw2D_260
CG_Draw2D_250:
	test byte [ebp-0x3c4], 0x30
	jz CG_Draw2D_270
	mov eax, cgArray
	test byte [eax+0x46148], 0x4
	jnz CG_Draw2D_270
	test dword [eax+0x461ec], 0x300
	jnz CG_Draw2D_270
CG_Draw2D_260:
	mov dword [esp+0x4], 0x1
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call CG_MenuShowNotify
	mov ebx, 0x1
	mov esi, [ebp-0x54]
	mov [ebp-0x3c4], esi
CG_Draw2D_270:
	test word [ebp-0x3c4], 0xc000
	jnz CG_Draw2D_280
CG_Draw2D_860:
	test dword [ebp-0x3b4], 0x1300
	jnz CG_Draw2D_290
	test dword [ebp-0x3c4], 0x1300
	jnz CG_Draw2D_300
CG_Draw2D_900:
	test ebx, ebx
	jnz CG_Draw2D_310
	test dword [ebp-0x3b4], 0xffffecff
	jz CG_Draw2D_220
CG_Draw2D_310:
	mov dword [esp+0x4], 0x2
	mov esi, [ebp+0x8]
	mov [esp], esi
	call CG_MenuShowNotify
CG_Draw2D_220:
	mov ebx, cgArray
	mov eax, [ebx+0x24]
	add eax, 0xc
	mov [esp], eax
	call CG_CalcPlayerHealth
	fstp dword [ebp-0x3b0]
	mov eax, hud_health_startpulse_injured
	mov eax, [eax]
	movss xmm0, dword [eax+0xc]
	ucomiss xmm0, [ebp-0x3b0]
	ja CG_Draw2D_320
	mov eax, hud_fade_healthbar
	mov eax, [eax]
	movss xmm1, dword [eax+0xc]
	ucomiss xmm1, [_float_0_00000000]
	jp CG_Draw2D_330
	jnz CG_Draw2D_330
	mov esi, cgArray
CG_Draw2D_670:
	mov [esp], esi
	call CG_CheckPlayerForLowAmmo
	test al, al
	jnz CG_Draw2D_340
	mov [esp], esi
	call CG_CheckPlayerForLowClip
	test al, al
	jz CG_Draw2D_350
CG_Draw2D_340:
	mov dword [esp+0x4], 0x1
	mov esi, [ebp+0x8]
	mov [esp], esi
	call CG_MenuShowNotify
CG_Draw2D_350:
	mov eax, hud_fade_ammodisplay
	mov eax, [eax]
	movss xmm1, dword [eax+0xc]
	pxor xmm2, xmm2
	ucomiss xmm1, xmm2
	jp CG_Draw2D_360
	jz CG_Draw2D_370
CG_Draw2D_360:
	mov esi, cgArray
	mov edx, [esi+0x504bc]
	test edx, edx
	jz CG_Draw2D_380
	mov eax, [esi+0x46128]
	sub eax, edx
	cvtsi2ss xmm0, eax
	mulss xmm1, [_float_1000_00000000]
	ucomiss xmm0, xmm1
	ja CG_Draw2D_390
CG_Draw2D_380:
	mov eax, hud_fade_compass
	mov eax, [eax]
	movss xmm1, dword [eax+0xc]
	ucomiss xmm1, xmm2
	jp CG_Draw2D_400
	jz CG_Draw2D_410
CG_Draw2D_400:
	mov edx, [esi+0x504b4]
	test edx, edx
	jz CG_Draw2D_410
	mov eax, [esi+0x46128]
	sub eax, edx
	cvtsi2ss xmm0, eax
	mulss xmm1, [_float_1000_00000000]
	ucomiss xmm0, xmm1
	ja CG_Draw2D_420
CG_Draw2D_410:
	mov eax, [esi+0x24]
	mov eax, [eax+0xbc]
	test al, 0x8
	jz CG_Draw2D_430
	test ah, 0x1
	jnz CG_Draw2D_440
CG_Draw2D_430:
	test al, 0x4
	jz CG_Draw2D_450
	test ah, 0x2
	jnz CG_Draw2D_460
CG_Draw2D_450:
	mov eax, hud_fade_stance
	mov eax, [eax]
	movss xmm1, dword [eax+0xc]
	pxor xmm2, xmm2
	ucomiss xmm1, xmm2
	jp CG_Draw2D_470
	jz CG_Draw2D_480
CG_Draw2D_470:
	mov eax, cgArray
	mov edx, [eax+0x504c0]
	test edx, edx
	jz CG_Draw2D_480
	mov eax, [eax+0x46128]
	sub eax, edx
	cvtsi2ss xmm0, eax
	mulss xmm1, [_float_1000_00000000]
	ucomiss xmm0, xmm1
	ja CG_Draw2D_490
CG_Draw2D_480:
	mov eax, hud_fade_offhand
	mov eax, [eax]
	movss xmm1, dword [eax+0xc]
	ucomiss xmm1, xmm2
	jp CG_Draw2D_500
	jz CG_Draw2D_510
CG_Draw2D_500:
	mov eax, cgArray
	mov edx, [eax+0x504c8]
	test edx, edx
	jz CG_Draw2D_510
	mov eax, [eax+0x46128]
	sub eax, edx
	cvtsi2ss xmm0, eax
	mulss xmm1, [_float_1000_00000000]
	ucomiss xmm0, xmm1
	ja CG_Draw2D_520
CG_Draw2D_510:
	mov edx, [ebp+0x8]
	mov [esp], edx
	call CG_IsScoreboardDisplayed
	test eax, eax
	jz CG_Draw2D_530
	mov esi, cgArray
	mov eax, [esi+0x46128]
	sub eax, [esi+0x502e4]
	cmp eax, 0x64
	jg CG_Draw2D_540
CG_Draw2D_780:
	mov edi, [esi+0x24]
	add edi, 0xc
	cmp dword [edi+0x4], 0x7
	jz CG_Draw2D_550
	mov [esp], edi
	call BG_GetMaxSprintTime
	mov ebx, eax
	mov eax, [esi+0x46128]
	mov [esp+0x4], eax
	mov [esp], edi
	call PM_GetSprintLeft
	cmp ebx, eax
	jg CG_Draw2D_560
CG_Draw2D_880:
	cmp dword [edi+0x4], 0x7
	jz CG_Draw2D_550
	mov eax, [esi+0x466fc]
	cmp eax, [esi+0x46700]
	jg CG_Draw2D_570
CG_Draw2D_550:
	mov eax, hud_fade_sprint
	mov eax, [eax]
	pxor xmm0, xmm0
	ucomiss xmm0, [eax+0xc]
	jp CG_Draw2D_580
	jz CG_Draw2D_590
CG_Draw2D_580:
	mov eax, cgArray
	mov edx, [eax+0x504c4]
	test edx, edx
	jz CG_Draw2D_590
	mov eax, [eax+0x46128]
	sub eax, edx
	cvtsi2ss xmm1, eax
	mov eax, hud_fade_stance
	mov eax, [eax]
	movss xmm0, dword [_float_1000_00000000]
	mulss xmm0, [eax+0xc]
	ucomiss xmm1, xmm0
	ja CG_Draw2D_600
CG_Draw2D_590:
	cmp byte [ebp-0x3b5], 0x0
	jnz CG_Draw2D_610
CG_Draw2D_840:
	mov dword [esp+0x4], 0x1
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_Draw2dHudElems
	jmp CG_Draw2D_620
CG_Draw2D_30:
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call Cvar_SetBool
	jmp CG_Draw2D_630
CG_Draw2D_210:
	mov eax, [ebx+0x46128]
	sub eax, edx
	cmp eax, 0x9c4
	jle CG_Draw2D_640
	mov dword [esp+0x4], _cstring_voicemenu
	mov eax, [ebp+0x8]
	lea edx, [eax+eax*4]
	shl edx, 0x7
	mov eax, edx
	sub eax, [ebp+0x8]
	lea eax, [edx+eax*8]
	add eax, cgDC
	mov [esp], eax
	call Menus_CloseByName
	mov dword [ebx+0x50368], 0x0
	jmp CG_Draw2D_640
CG_Draw2D_330:
	mov edx, [ebx+0x504b8]
	test edx, edx
	jz CG_Draw2D_650
	mov eax, [ebx+0x46128]
	sub eax, edx
	cvtsi2ss xmm0, eax
	mulss xmm1, [_float_1000_00000000]
	ucomiss xmm0, xmm1
	ja CG_Draw2D_660
CG_Draw2D_650:
	mov esi, ebx
	jmp CG_Draw2D_670
CG_Draw2D_20:
	mov edx, [ebp+0x8]
	mov [esp], edx
	call UI_GetActiveMenu
	cmp eax, 0x9
	jz CG_Draw2D_680
CG_Draw2D_1020:
	mov esi, ui_showEndOfGame
	mov eax, [esi]
	cmp byte [eax+0xc], 0x0
	jnz CG_Draw2D_690
	mov dword [ebx+0x502e0], 0x1
	mov eax, [ebx+0x46128]
	mov [ebx+0x502e4], eax
	mov edi, [ebp+0x8]
	mov [esp], edi
	call UI_GetActiveMenu
	cmp eax, 0xa
	jz CG_Draw2D_700
	mov eax, [esi]
	cmp byte [eax+0xc], 0x0
	jz CG_Draw2D_710
CG_Draw2D_700:
	mov edi, [ebp+0x8]
	mov [esp], edi
	call UI_GetActiveMenu
	cmp eax, 0xa
	jz CG_Draw2D_720
CG_Draw2D_870:
	mov eax, [ebp+0x8]
	call CG_DrawChatMessages
	jmp CG_Draw2D_160
CG_Draw2D_120:
	movss xmm0, dword [_float_10_00000000]
	movss [ebp-0x388], xmm0
	movss xmm0, dword [_float_0_20833333]
	movss [ebp-0x37c], xmm0
	jmp CG_Draw2D_730
CG_Draw2D_240:
	cmp word [ebp-0x62], 0x0
	jnz CG_Draw2D_740
	and ebx, 0xffffff00
	jmp CG_Draw2D_750
CG_Draw2D_170:
	mov dword [esp+0xc], 0x3f800000
	mov dword [esp+0x8], 0x4
	mov dword [esp+0x4], 0x2
	mov [esp], esi
	call Con_DrawMiniConsole
	jmp CG_Draw2D_760
CG_Draw2D_660:
	call CL_GetLocalClientActiveCount
	sub eax, 0x1
	jz CG_Draw2D_770
	mov dword [esp+0x4], _cstring_health_mp
	mov ecx, [ebp+0x8]
	lea edx, [ecx+ecx*4]
	shl edx, 0x7
	mov eax, edx
	sub eax, ecx
	lea eax, [edx+eax*8]
	add eax, cgDC
	mov [esp], eax
	call Menus_HideByName
CG_Draw2D_1090:
	mov esi, cgArray
	mov dword [esi+0x504b8], 0x0
	jmp CG_Draw2D_670
CG_Draw2D_370:
	mov esi, cgArray
	jmp CG_Draw2D_380
CG_Draw2D_530:
	mov esi, cgArray
	jmp CG_Draw2D_780
CG_Draw2D_60:
	mov eax, [ebp+0x8]
	call CG_DrawChatMessages
	jmp CG_Draw2D_790
CG_Draw2D_150:
	mov dword [esp], _cstring_cgame_vote
	call UI_SafeTranslateString
	lea edx, [esi+0x194]
	mov [esp+0xc], edx
	mov [esp+0x8], ebx
	mov [esp+0x4], eax
	mov dword [esp], _cstring_sis
	call va
	mov dword [esp+0x28], 0x3
	mov edi, colorYellow
	mov [esp+0x24], edi
	movss xmm0, dword [ebp-0x37c]
	movss [esp+0x20], xmm0
	mov dword [esp+0x1c], 0x1
	mov dword [esp+0x18], 0x1
	movss xmm0, dword [ebp-0x38c]
	movss [esp+0x14], xmm0
	movss xmm0, dword [ebp-0x390]
	movss [esp+0x10], xmm0
	mov edx, [ebp-0x384]
	mov [esp+0xc], edx
	mov dword [esp+0x8], 0x7fffffff
	mov [esp+0x4], eax
	mov ecx, [ebp-0x380]
	mov [esp], ecx
	call UI_DrawText
	mov edi, [esi+0x190]
	mov dword [esp], _cstring_cgame_no
	call UI_SafeTranslateString
	mov ebx, eax
	mov esi, [esi+0x18c]
	mov dword [esp], _cstring_cgame_yes
	call UI_SafeTranslateString
	mov [esp+0x18], edi
	lea edi, [ebp-0x278]
	mov [esp+0x14], edi
	mov [esp+0x10], ebx
	mov [esp+0xc], esi
	lea edx, [ebp-0x178]
	mov [esp+0x8], edx
	mov [esp+0x4], eax
	mov dword [esp], _cstring_ssi_ssi
	call va
	mov dword [esp+0x28], 0x3
	mov ecx, colorYellow
	mov [esp+0x24], ecx
	jmp CG_Draw2D_800
CG_Draw2D_140:
	mov dword [esp+0x8], 0x100
	mov dword [esp+0x4], _cstring_vote_no
	lea edi, [ebp-0x278]
	mov [esp], edi
	call Q_strncpyz
	jmp CG_Draw2D_810
CG_Draw2D_130:
	mov dword [esp+0x8], 0x100
	mov dword [esp+0x4], _cstring_vote_yes
	lea edi, [ebp-0x178]
	mov [esp], edi
	call Q_strncpyz
	jmp CG_Draw2D_820
CG_Draw2D_180:
	mov [esp], edi
	call CG_DrawCrosshair
	jmp CG_Draw2D_830
CG_Draw2D_320:
	mov dword [esp+0x4], 0x0
	mov edi, [ebp+0x8]
	mov [esp], edi
	call CG_MenuShowNotify
	mov esi, ebx
	jmp CG_Draw2D_670
CG_Draw2D_610:
	mov dword [esp+0x4], 0x0
	mov edi, [ebp+0x8]
	mov [esp], edi
	call CG_Draw2dHudElems
	lea edx, [edi+edi*4]
	shl edx, 0x7
	mov eax, edx
	sub eax, edi
	lea eax, [edx+eax*8]
	add eax, cgDC
	mov [esp], eax
	call Menu_PaintAll
	jmp CG_Draw2D_840
CG_Draw2D_50:
	mov eax, [ebp+0x8]
	call CG_ScanForCrosshairEntity
	mov eax, [ebp+0x8]
	call CG_DrawCrosshairNames
	mov eax, [ebp+0x8]
	call CG_DrawFriendlyNames
	mov eax, [ebp-0x3bc]
	test eax, eax
	jz CG_Draw2D_850
CG_Draw2D_960:
	mov dword [esp+0x4], 0x0
	mov esi, [ebp+0x8]
	mov [esp], esi
	call CG_Draw2dHudElems
	lea edx, [esi+esi*4]
	shl edx, 0x7
	mov eax, edx
	sub eax, esi
	lea eax, [edx+eax*8]
	add eax, cgDC
	mov [esp], eax
	call Menu_PaintAll
	mov dword [esp+0x4], 0x1
	mov [esp], esi
	call CG_Draw2dHudElems
	jmp CG_Draw2D_620
CG_Draw2D_290:
	mov dword [esp+0x4], 0x3
	mov edx, [ebp+0x8]
	mov [esp], edx
	call CG_MenuShowNotify
	jmp CG_Draw2D_310
CG_Draw2D_280:
	mov dword [esp+0x4], 0x4
	mov edi, [ebp+0x8]
	mov [esp], edi
	call CG_MenuShowNotify
	mov ebx, 0x1
	mov eax, [ebp-0x54]
	mov [ebp-0x3c4], eax
	jmp CG_Draw2D_860
CG_Draw2D_690:
	mov edx, [ebp+0x8]
	mov [esp], edx
	call UI_GetActiveMenu
	cmp eax, 0xb
	jz CG_Draw2D_870
	mov dword [esp+0x4], 0xb
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call UI_SetActiveMenu
	jmp CG_Draw2D_870
CG_Draw2D_560:
	mov dword [esp+0x4], 0x6
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_MenuShowNotify
	jmp CG_Draw2D_880
CG_Draw2D_540:
	mov dword [esp+0x4], _cstring_objectiveinfo
	mov ecx, [ebp+0x8]
	lea edx, [ecx+ecx*4]
	shl edx, 0x7
	mov eax, edx
	sub eax, ecx
	lea eax, [edx+eax*8]
	add eax, cgDC
	mov [esp], eax
	call Menus_HideByName
	jmp CG_Draw2D_780
CG_Draw2D_200:
	mov eax, [ebp+0x8]
	call CG_DrawCrosshairNames
	mov eax, [ebp+0x8]
	call CG_DrawFriendlyNames
	jmp CG_Draw2D_890
CG_Draw2D_440:
	mov dword [esp+0x4], 0x3
	mov edi, [ebp+0x8]
	mov [esp], edi
	call CG_MenuShowNotify
	jmp CG_Draw2D_450
CG_Draw2D_300:
	mov dword [esp+0x4], 0x3
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call CG_MenuShowNotify
	jmp CG_Draw2D_900
CG_Draw2D_460:
	mov dword [esp+0x4], 0x3
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_MenuShowNotify
	jmp CG_Draw2D_450
CG_Draw2D_570:
	mov dword [esp+0x4], 0x6
	mov edx, [ebp+0x8]
	mov [esp], edx
	call CG_MenuShowNotify
	jmp CG_Draw2D_550
CG_Draw2D_80:
	mov dword [esp+0x4], 0x10
	mov [esp], esi
	call Key_IsCatcherActive
	test al, al
	jnz CG_Draw2D_910
	mov edi, [ebx+0x24]
	add edi, 0xc
	test byte [edi+0x14], 0x18
	jz CG_Draw2D_910
	mov eax, esi
	shl eax, 0x6
	lea eax, [eax+esi*4]
	mov edx, scrPlaceView
	add eax, edx
	mov [ebp-0x39c], eax
	mov ebx, 0x3e555555
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call UI_GetFontHandle
	mov [ebp-0x3a4], eax
	mov [esp+0x4], ebx
	mov [esp], eax
	call UI_TextHeight
	cvtsi2ss xmm0, eax
	movss [ebp-0x3a0], xmm0
	mulss xmm0, [_float__2_00000000]
	addss xmm0, [_float_436_00000000]
	movss [ebp-0x3ac], xmm0
	mov eax, [edi+0x14]
	test al, 0x8
	jnz CG_Draw2D_920
	mov dword [ebp-0x3a8], 0x0
CG_Draw2D_1130:
	test al, 0x10
	jnz CG_Draw2D_930
CG_Draw2D_1160:
	mov edi, [ebp-0x3a8]
	test edi, edi
	jle CG_Draw2D_910
	xor esi, esi
	jmp CG_Draw2D_940
CG_Draw2D_950:
	mov eax, [ebp+ebx-0x38]
	mov [esp], eax
	call UI_SafeTranslateString
	lea ecx, [ebp-0x178]
	mov [esp+0x4], ecx
	mov [esp], eax
	call UI_ReplaceConversionString
	mov dword [esp+0x28], 0x3
	mov edx, colorWhite
	mov [esp+0x24], edx
	mov dword [esp+0x20], 0x3e555555
	mov dword [esp+0x1c], 0x0
	mov dword [esp+0x18], 0x0
	movss xmm0, dword [ebp-0x3ac]
	movss [esp+0x14], xmm0
	mov dword [esp+0x10], 0x43700000
	mov edx, [ebp-0x3a4]
	mov [esp+0xc], edx
	mov dword [esp+0x8], 0x7fffffff
	mov [esp+0x4], eax
	mov ecx, [ebp-0x39c]
	mov [esp], ecx
	call UI_DrawText
	movss xmm0, dword [ebp-0x3ac]
	addss xmm0, [ebp-0x3a0]
	movss [ebp-0x3ac], xmm0
	add esi, 0x1
	cmp [ebp-0x3a8], esi
	jz CG_Draw2D_910
CG_Draw2D_940:
	lea edi, [ebp-0x178]
	mov [esp+0x8], edi
	lea ebx, [esi*4]
	mov eax, [ebp+ebx-0x58]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call UI_GetKeyBindingLocalizedString
	test eax, eax
	jnz CG_Draw2D_950
	mov dword [esp], _cstring_key_unbound
	call UI_SafeTranslateString
	mov dword [esp+0x8], 0x100
	mov [esp+0x4], eax
	mov [esp], edi
	call Q_strncpyz
	jmp CG_Draw2D_950
CG_Draw2D_850:
	mov eax, [ebp+0x8]
	call CG_DrawChatMessages
	jmp CG_Draw2D_960
CG_Draw2D_600:
	call CL_GetLocalClientActiveCount
	sub eax, 0x1
	jz CG_Draw2D_970
	mov dword [esp+0x4], _cstring_sprintmeter_mp
	mov esi, [ebp+0x8]
	lea edx, [esi+esi*4]
	shl edx, 0x7
	mov eax, edx
	sub eax, esi
	lea eax, [edx+eax*8]
	add eax, cgDC
	mov [esp], eax
	call Menus_HideByName
CG_Draw2D_1070:
	mov eax, cgArray
	mov dword [eax+0x504c4], 0x0
	jmp CG_Draw2D_590
CG_Draw2D_490:
	call CL_GetLocalClientActiveCount
	sub eax, 0x1
	jz CG_Draw2D_980
	mov dword [esp+0x4], _cstring_stance_mp
	mov esi, [ebp+0x8]
	lea edx, [esi+esi*4]
	shl edx, 0x7
	mov eax, edx
	sub eax, esi
	lea eax, [edx+eax*8]
	add eax, cgDC
	mov [esp], eax
	call Menus_HideByName
CG_Draw2D_1050:
	mov eax, cgArray
	mov dword [eax+0x504c0], 0x0
	pxor xmm2, xmm2
	jmp CG_Draw2D_480
CG_Draw2D_420:
	call CL_GetLocalClientActiveCount
	sub eax, 0x1
	jz CG_Draw2D_990
	mov dword [esp+0x4], _cstring_compass_mp
	mov esi, [ebp+0x8]
	lea edx, [esi+esi*4]
	shl edx, 0x7
	mov eax, edx
	sub eax, esi
	lea eax, [edx+eax*8]
	add eax, cgDC
	mov [esp], eax
	call Menus_HideByName
CG_Draw2D_1080:
	mov esi, cgArray
	mov dword [esi+0x504b4], 0x0
	jmp CG_Draw2D_410
CG_Draw2D_520:
	call CL_GetLocalClientActiveCount
	sub eax, 0x1
	jz CG_Draw2D_1000
	mov dword [esp+0x4], _cstring_offhandinfo_mp
	mov eax, [ebp+0x8]
	lea edx, [eax+eax*4]
	shl edx, 0x7
	mov eax, edx
	sub eax, [ebp+0x8]
	lea eax, [edx+eax*8]
	add eax, cgDC
	mov [esp], eax
	call Menus_HideByName
CG_Draw2D_1060:
	mov eax, cgArray
	mov dword [eax+0x504c8], 0x0
	jmp CG_Draw2D_510
CG_Draw2D_390:
	call CL_GetLocalClientActiveCount
	sub eax, 0x1
	jz CG_Draw2D_1010
	mov dword [esp+0x4], _cstring_weaponinfo_mp
	mov eax, [ebp+0x8]
	lea edx, [eax+eax*4]
	shl edx, 0x7
	mov eax, edx
	sub eax, [ebp+0x8]
	lea eax, [edx+eax*8]
	add eax, cgDC
	mov [esp], eax
	call Menus_HideByName
CG_Draw2D_1040:
	mov esi, cgArray
	mov dword [esi+0x504bc], 0x0
	pxor xmm2, xmm2
	jmp CG_Draw2D_380
CG_Draw2D_680:
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call UI_GetTopActiveMenuName
	test eax, eax
	jz CG_Draw2D_1020
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_DrawScoreboard
	jmp CG_Draw2D_870
CG_Draw2D_710:
	mov dword [esp+0x4], 0xa
	mov esi, [ebp+0x8]
	mov [esp], esi
	call UI_SetActiveMenu
	jmp CG_Draw2D_700
CG_Draw2D_100:
	movss xmm0, dword [_float_0_33333334]
	movss [ebp-0x394], xmm0
	jmp CG_Draw2D_1030
CG_Draw2D_720:
	mov [esp], edi
	call CG_DrawScoreboard
	jmp CG_Draw2D_870
CG_Draw2D_1010:
	mov edi, [ebp+0x8]
	lea eax, [edi+edi*4]
	shl eax, 0x7
	mov ebx, eax
	sub ebx, edi
	lea ebx, [eax+ebx*8]
	add ebx, cgDC
	mov dword [esp+0x4], _cstring_weaponinfo
	mov [esp], ebx
	call Menus_HideByName
	mov dword [esp+0x4], _cstring_weaponinfo_lowde
	mov [esp], ebx
	call Menus_HideByName
	jmp CG_Draw2D_1040
CG_Draw2D_980:
	mov dword [esp+0x4], _cstring_stance
	mov ecx, [ebp+0x8]
	lea edx, [ecx+ecx*4]
	shl edx, 0x7
	mov eax, edx
	sub eax, ecx
	lea eax, [edx+eax*8]
	add eax, cgDC
	mov [esp], eax
	call Menus_HideByName
	jmp CG_Draw2D_1050
CG_Draw2D_1000:
	mov dword [esp+0x4], _cstring_offhandinfo
	mov edi, [ebp+0x8]
	lea edx, [edi+edi*4]
	shl edx, 0x7
	mov eax, edx
	sub eax, edi
	lea eax, [edx+eax*8]
	add eax, cgDC
	mov [esp], eax
	call Menus_HideByName
	jmp CG_Draw2D_1060
CG_Draw2D_970:
	mov dword [esp+0x4], _cstring_sprintmeter
	mov ecx, [ebp+0x8]
	lea edx, [ecx+ecx*4]
	shl edx, 0x7
	mov eax, edx
	sub eax, ecx
	lea eax, [edx+eax*8]
	add eax, cgDC
	mov [esp], eax
	call Menus_HideByName
	jmp CG_Draw2D_1070
CG_Draw2D_990:
	mov dword [esp+0x4], _cstring_compass
	mov ecx, [ebp+0x8]
	lea edx, [ecx+ecx*4]
	shl edx, 0x7
	mov eax, edx
	sub eax, ecx
	lea eax, [edx+eax*8]
	add eax, cgDC
	mov [esp], eax
	call Menus_HideByName
	jmp CG_Draw2D_1080
CG_Draw2D_770:
	mov dword [esp+0x4], _cstring_health
	mov eax, [ebp+0x8]
	lea edx, [eax+eax*4]
	shl edx, 0x7
	mov eax, edx
	sub eax, [ebp+0x8]
	lea eax, [edx+eax*8]
	add eax, cgDC
	mov [esp], eax
	call Menus_HideByName
	jmp CG_Draw2D_1090
CG_Draw2D_90:
	mov dword [esp+0x8], _cstring_
	mov dword [esp+0x4], 0x26
	lea ecx, [ebp-0x378]
	mov [esp], ecx
	call Com_sprintf
	jmp CG_Draw2D_1100
CG_Draw2D_920:
	mov dword [ebp-0x58], _cstring_attack
	mov dword [ebp-0x38], _cstring_platform_follown
	xor ebx, ebx
CG_Draw2D_1120:
	lea eax, [ebp-0x78]
	lea esi, [ebx+eax]
	lea edx, [ebp-0x278]
	mov [esp+0x8], edx
	mov eax, [esi]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call UI_GetKeyBindingLocalizedString
	test eax, eax
	jnz CG_Draw2D_1110
	add ebx, 0x4
	cmp ebx, 0x10
	jnz CG_Draw2D_1120
	mov eax, [ebp-0x78]
CG_Draw2D_1170:
	mov [ebp-0x54], eax
	mov dword [ebp-0x34], _cstring_platform_followp
	mov dword [ebp-0x3a8], 0x2
	mov eax, [edi+0x14]
	jmp CG_Draw2D_1130
CG_Draw2D_930:
	xor ebx, ebx
CG_Draw2D_1150:
	lea edi, [ebp-0x378]
	lea esi, [ebx+edi]
	lea eax, [ebp-0x278]
	mov [esp+0x8], eax
	mov eax, [esi]
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov [esp], edx
	call UI_GetKeyBindingLocalizedString
	test eax, eax
	jnz CG_Draw2D_1140
	add ebx, 0x4
	cmp ebx, 0x8
	jnz CG_Draw2D_1150
	mov eax, [ebp-0x378]
CG_Draw2D_1180:
	mov ecx, [ebp-0x3a8]
	mov [ebp+ecx*4-0x58], eax
	mov dword [ebp+ecx*4-0x38], _cstring_platform_follows
	add ecx, 0x1
	mov [ebp-0x3a8], ecx
	jmp CG_Draw2D_1160
CG_Draw2D_1110:
	mov eax, [esi]
	jmp CG_Draw2D_1170
CG_Draw2D_1140:
	mov eax, [esi]
	jmp CG_Draw2D_1180


;Initialized global or static variables of cg_draw_mp:
SECTION .data


;Initialized constant data of cg_draw_mp:
SECTION .rdata


;Zero initialized global or static variables of cg_draw_mp:
SECTION .bss
overheadFade: resb 0x300
s_centerPrint: resb 0x480


;All cstrings:
SECTION .rdata
_cstring_unable_to_get_na:		db "Unable to get name for client num: %i",0ah,0
_cstring_g_teamcolor:		db "g_TeamColor",0
_cstring_center_print:		db "Center Print",0
_cstring_toggleads_throw:		db "+toggleads_throw",0
_cstring_speed_throw:		db "+speed_throw",0
_cstring_speed:		db "+speed",0
_cstring_toggleads:		db "toggleads",0
_cstring_melee:		db "+melee",0
_cstring_melee_breath:		db "+melee_breath",0
_cstring_spectator_follow:		db "spectator follow string",0
_cstring_cgame_following:		db "CGAME_FOLLOWING",015h,0
_cstring_vote_yes:		db "vote yes",0
_cstring_vote_no:		db "vote no",0
_cstring_cgame_vote:		db "CGAME_VOTE",0
_cstring_sis:		db "%s(%i):%s",0
_cstring_cgame_no:		db "CGAME_NO",0
_cstring_cgame_yes:		db "CGAME_YES",0
_cstring_si_si:		db "%s:%i, %s:%i",0
_cstring_voicemenu:		db "voiceMenu",0
_cstring_health_mp:		db "Health_mp",0
_cstring_ssi_ssi:		db "%s(%s):%i, %s(%s):%i",0
_cstring_objectiveinfo:		db "objectiveinfo",0
_cstring_key_unbound:		db "KEY_UNBOUND",0
_cstring_sprintmeter_mp:		db "sprintMeter_mp",0
_cstring_stance_mp:		db "stance_mp",0
_cstring_compass_mp:		db "Compass_mp",0
_cstring_offhandinfo_mp:		db "offhandinfo_mp",0
_cstring_weaponinfo_mp:		db "weaponinfo_mp",0
_cstring_weaponinfo:		db "weaponinfo",0
_cstring_weaponinfo_lowde:		db "weaponinfo_lowdef",0
_cstring_stance:		db "stance",0
_cstring_offhandinfo:		db "offhandinfo",0
_cstring_sprintmeter:		db "sprintMeter",0
_cstring_compass:		db "Compass",0
_cstring_health:		db "Health",0
_cstring_:		db 3fh,0
_cstring_attack:		db "+attack",0
_cstring_platform_follown:		db "PLATFORM_FOLLOWNEXTPLAYER",0
_cstring_platform_followp:		db "PLATFORM_FOLLOWPREVIOUSPLAYER",0
_cstring_platform_follows:		db "PLATFORM_FOLLOWSTOP",0



;All constant floats and doubles:
SECTION .rdata
_float_8192_00000000:		dd 0x46000000	; 8192
_float_0_20000000:		dd 0x3e4ccccd	; 0.2
_float_10_00000000:		dd 0x41200000	; 10
_float_0_20833333:		dd 0x3e555555	; 0.208333
_float_8_00000000:		dd 0x41000000	; 8
_float_3_00000000:		dd 0x40400000	; 3
_float_1_00000000:		dd 0x3f800000	; 1
_float_0_60000002:		dd 0x3f19999a	; 0.6
_float_0_25000000:		dd 0x3e800000	; 0.25
_float_200_00000000:		dd 0x43480000	; 200
_float_12_00000000:		dd 0x41400000	; 12
_float_16_00000000:		dd 0x41800000	; 16
_float_0_33333334:		dd 0x3eaaaaab	; 0.333333
_float_0_00100000:		dd 0x3a83126f	; 0.001
_float_82_00000000:		dd 0x42a40000	; 82
_float_0_00000000:		dd 0x0	; 0
_float_0_50000000:		dd 0x3f000000	; 0.5
_float__0_50000000:		dd 0xbf000000	; -0.5
_float_1000_00000000:		dd 0x447a0000	; 1000
_float__2_00000000:		dd 0xc0000000	; -2
_float_436_00000000:		dd 0x43da0000	; 436

