;Imports of cg_newDraw_mp:
	extern cgArray
	extern CL_GetConfigString
	extern UI_GetKeyBindingLocalizedString
	extern SEH_LocalizeTextMessage
	extern UI_ReplaceConversionString
	extern UI_SafeTranslateString
	extern Q_strncpyz
	extern cg_drawMantleHint
	extern UI_TextWidth
	extern UI_TextHeight
	extern scrPlaceView
	extern UI_DrawText
	extern cgMedia
	extern UI_DrawHandlePic
	extern memcpy
	extern Key_IsCommandBound
	extern cg_cursorHints
	extern CG_FadeAlpha
	extern cg_hintFadeTime
	extern sinf
	extern BG_GetWeaponDef
	extern cg_weaponsArray
	extern cg_weaponHintsCoD1Style
	extern va
	extern BG_PlayerWeaponCountPrimaryTypes
	extern UI_GetTalkerClientNum
	extern Material_RegisterHandle
	extern CG_RelativeTeamColor
	extern perk_parabolicIcon
	extern Com_PrintWarning
	extern cg_invalidCmdHintDuration
	extern cg_invalidCmdHintBlinkInterval
	extern floorf
	extern cg_drawBreathHint
	extern BG_GetViewmodelWeaponIndex
	extern CL_GetCurrentCmdNumber
	extern CL_GetUserCmd
	extern BG_CanHoldBreath
	extern colorWhite
	extern cg_drawHealth
	extern CL_DrawStretchPic
	extern CG_FadeColor
	extern CL_ShouldDisplayHud
	extern PM_GetSprintLeft
	extern BG_GetMaxSprintTime
	extern PM_IsSprinting
	extern PM_GetSprintLeftLastTime
	extern cg_hudStanceHintPrints
	extern compassSize
	extern cgsArray
	extern cg_hudStanceFlash
	extern Cvar_GetUnpackedColor
	extern BG_WeaponBlocksProne
	extern sin
	extern cg_hudProneY
	extern CG_GetPredictedPlayerState
	extern CG_CompassDrawPlayerBack
	extern CG_CompassDrawPlayerMap
	extern CG_CompassDrawPlayerPointers_MP
	extern CG_CompassDrawPlayer
	extern CG_CompassDrawFriendlies
	extern CG_CompassDrawPlayerMapLocationSelector
	extern CG_CompassDrawBorder
	extern CG_CompassDrawEnemies
	extern cg_entitiesArray
	extern BG_GetTotalAmmoReserve
	extern BG_WeaponIsClipOnly
	extern BG_GetNumWeapons
	extern CG_DrawCenterString
	extern CG_DrawOffHandIcon
	extern CG_DrawOffHandAmmo
	extern CG_DrawOffHandName
	extern CG_DrawOffHandHighlight
	extern CG_DrawPlayerWeaponBackground
	extern CG_DrawPlayerWeaponAmmoClipGraphic
	extern CG_DrawPlayerWeaponIcon
	extern CG_DrawPlayerWeaponAmmoStock
	extern CG_DrawPlayerWeaponLowAmmoWarning
	extern CG_CompassDrawTickertape
	extern CG_CompassDrawVehicles
	extern CG_CompassDrawPlayerNorthCoord
	extern CG_CompassDrawPlayerEastCoord
	extern CG_CompassDrawPlayerNCoordScroll
	extern CG_CompassDrawPlayerECoordScroll
	extern CG_DrawPlayerActionSlotDpad
	extern CG_DrawPlayerActionSlot
	extern BG_AmmoForWeapon
	extern BG_GetAmmoPlayerMax
	extern sprintf
	extern BG_ClipForWeapon
	extern strcpy
	extern Cvar_RegisterFloat
	extern Cvar_RegisterBool
	extern Cvar_RegisterInt
	extern Cvar_RegisterVec4
	extern Cvar_RegisterEnum

;Exports of cg_newDraw_mp:
	global cg_sprintMeterDisabledColor
	global cg_sprintMeterEmptyColor
	global cg_sprintMeterFullColor
	global hud_healthOverlay_phaseEnd_pulseDuration
	global hud_healthOverlay_phaseEnd_toAlpha
	global hud_healthOverlay_regenPauseTime
	global hud_healthOverlay_phaseThree_pulseDuration
	global hud_healthOverlay_phaseThree_toAlphaMultiplier
	global hud_healthOverlay_phaseTwo_pulseDuration
	global hud_healthOverlay_phaseTwo_toAlphaMultiplier
	global hud_healthOverlay_phaseOne_pulseDuration
	global hud_healthOverlay_pulseStart
	global cg_drawTalk
	global hud_enable
	global cg_drawTalkNames
	global hud_fadeout_speed
	global CG_GetUseString
	global CG_DrawMantleHint
	global _ZZ23CG_DrawStanceHintPrintsiPK9rectDef_sfPKffP6Font_sfiE5C.227
	global _ZZ23CG_DrawStanceHintPrintsiPK9rectDef_sfPKffP6Font_sfiE5C.226
	global _ZZ23CG_DrawStanceHintPrintsiPK9rectDef_sfPKffP6Font_sfiE5C.225
	global CG_DrawStanceHintPrints
	global CG_DrawCursorhint
	global CG_DrawTalkerNum
	global pulseMags.138474
	global CG_PulseLowHealthOverlay
	global CG_DrawInvalidCmdHint
	global CG_DrawHoldBreathHint
	global CG_DrawPlayerBarHealthBack
	global CG_DrawPlayerBarHealth
	global CG_DrawPlayerSprintMeter
	global CG_DrawPlayerStance
	global CG_OwnerDraw
	global CG_FadeHudMenu
	global CG_ArchiveState
	global CG_ObjectiveIcon
	global CG_ShouldDrawHud
	global CG_ScriptMainMenu
	global CG_CalcPlayerHealth
	global CG_ServerMaterialName
	global CG_CheckPlayerForLowAmmo
	global CG_CheckPlayerForLowClip
	global CG_ResetLowHealthOverlay
	global CG_AntiBurnInHUD_RegisterDvars
	global CG_CheckPlayerForLowAmmoSpecific
	global CG_CheckPlayerForLowClipSpecific
	global hud_fade_ammodisplay
	global hud_fade_compass
	global hud_fade_offhand
	global hud_fade_healthbar
	global hud_fade_sprint
	global hud_fade_stance
	global hud_health_startpulse_injured
	global hud_deathQuoteFadeTime
	global hud_health_pulserate_critical
	global hud_health_pulserate_injured
	global hud_health_startpulse_critical


SECTION .text


;CG_GetUseString(int)
CG_GetUseString:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x11c
	mov esi, eax
	mov eax, cgArray
	mov eax, [eax+0x50314]
	add eax, 0x115
	mov [esp+0x4], eax
	mov [esp], esi
	call CL_GetConfigString
	mov ebx, eax
	test eax, eax
	jnz CG_GetUseString_10
CG_GetUseString_20:
	xor eax, eax
	add esp, 0x11c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_GetUseString_10:
	cmp byte [eax], 0x0
	jz CG_GetUseString_20
	lea edi, [ebp-0x118]
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_activate
	mov [esp], esi
	call UI_GetKeyBindingLocalizedString
	test eax, eax
	jz CG_GetUseString_30
CG_GetUseString_40:
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _cstring_hint_string
	mov [esp], ebx
	call SEH_LocalizeTextMessage
	mov [esp+0x4], edi
	mov [esp], eax
	call UI_ReplaceConversionString
	add esp, 0x11c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_GetUseString_30:
	mov dword [esp], _cstring_key_use
	call UI_SafeTranslateString
	mov dword [esp+0x8], 0x100
	mov [esp+0x4], eax
	mov [esp], edi
	call Q_strncpyz
	jmp CG_GetUseString_40
	nop


;CG_DrawMantleHint(int, rectDef_s const*, Font_s*, float, float const*, int)
CG_DrawMantleHint:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x15c
	mov ebx, eax
	mov edi, edx
	mov [ebp-0x120], ecx
	movss [ebp-0x124], xmm0
	mov eax, cg_drawMantleHint
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz CG_DrawMantleHint_10
	mov eax, cgArray
	test byte [eax+0x46728], 0x8
	jnz CG_DrawMantleHint_20
CG_DrawMantleHint_10:
	add esp, 0x15c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_DrawMantleHint_20:
	lea esi, [ebp-0x118]
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_gostand
	mov [esp], ebx
	call UI_GetKeyBindingLocalizedString
	test eax, eax
	jz CG_DrawMantleHint_30
CG_DrawMantleHint_40:
	mov dword [esp], _cstring_platform_mantle
	call UI_SafeTranslateString
	mov [esp+0x4], esi
	mov [esp], eax
	call UI_ReplaceConversionString
	mov esi, eax
	movss xmm0, dword [ebp-0x124]
	movss [esp+0xc], xmm0
	mov eax, [ebp-0x120]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call UI_TextWidth
	cvtsi2ss xmm0, eax
	movss [ebp-0x11c], xmm0
	movss xmm0, dword [ebp-0x124]
	movss [esp+0x4], xmm0
	mov eax, [ebp-0x120]
	mov [esp], eax
	call UI_TextHeight
	movss xmm1, dword [ebp-0x11c]
	addss xmm1, [edi+0x8]
	mulss xmm1, [_float__0_50000000]
	addss xmm1, [edi]
	mov edx, ebx
	shl edx, 0x6
	lea ebx, [edx+ebx*4]
	add ebx, scrPlaceView
	mov edx, [ebp+0xc]
	mov [esp+0x28], edx
	mov edx, [ebp+0x8]
	mov [esp+0x24], edx
	movss xmm0, dword [ebp-0x124]
	movss [esp+0x20], xmm0
	mov edx, [edi+0x14]
	mov [esp+0x1c], edx
	mov edx, [edi+0x10]
	mov [esp+0x18], edx
	cvtsi2ss xmm0, eax
	mulss xmm0, [_float_0_50000000]
	addss xmm0, [edi+0x4]
	movss [esp+0x14], xmm0
	movss [esp+0x10], xmm1
	mov eax, [ebp-0x120]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x7fffffff
	mov [esp+0x4], esi
	mov [esp], ebx
	movss [ebp-0x138], xmm1
	call UI_DrawText
	movss xmm0, dword [edi+0xc]
	mov eax, cgMedia
	mov eax, [eax+0x258]
	mov [esp+0x20], eax
	mov edx, [ebp+0x8]
	mov [esp+0x1c], edx
	mov eax, [edi+0x14]
	mov [esp+0x18], eax
	mov eax, [edi+0x10]
	mov [esp+0x14], eax
	movss [esp+0x10], xmm0
	mov eax, [edi+0x8]
	mov [esp+0xc], eax
	mulss xmm0, [_float__0_50000000]
	addss xmm0, [edi+0x4]
	movss [esp+0x8], xmm0
	movss xmm1, dword [ebp-0x138]
	addss xmm1, [ebp-0x11c]
	movss [esp+0x4], xmm1
	mov [esp], ebx
	call UI_DrawHandlePic
	add esp, 0x15c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_DrawMantleHint_30:
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_moveup
	mov [esp], ebx
	call UI_GetKeyBindingLocalizedString
	jmp CG_DrawMantleHint_40
	nop


;CG_DrawStanceHintPrints(int, rectDef_s const*, float, float const*, float, Font_s*, float, int)
CG_DrawStanceHintPrints:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x26c
	mov ebx, [ebp+0x14]
	mov dword [esp+0x8], 0x48
	mov dword [esp+0x4], _ZZ23CG_DrawStanceHintPrintsiPK9rectDef_sfPKffP6Font_sfiE5C.225
	lea eax, [ebp-0xd0]
	mov [esp], eax
	call memcpy
	mov dword [esp+0x8], 0x48
	mov dword [esp+0x4], _ZZ23CG_DrawStanceHintPrintsiPK9rectDef_sfPKffP6Font_sfiE5C.226
	lea edx, [ebp-0x88]
	mov [esp], edx
	call memcpy
	mov dword [esp+0x8], 0x48
	mov dword [esp+0x4], _ZZ23CG_DrawStanceHintPrintsiPK9rectDef_sfPKffP6Font_sfiE5C.227
	lea ecx, [ebp-0x118]
	mov [esp], ecx
	call memcpy
	mov dword [ebp-0x30], _cstring_platform_stanceh
	mov dword [ebp-0x2c], _cstring_platform_stanceh1
	mov dword [ebp-0x28], _cstring_platform_stanceh2
	mov eax, [ebx]
	mov [ebp-0x40], eax
	mov eax, [ebx+0x4]
	mov [ebp-0x3c], eax
	mov eax, [ebx+0x8]
	mov [ebp-0x38], eax
	mov edx, cgArray
	mov eax, [edx+0x50360]
	sub eax, [edx+0x46128]
	add eax, 0xbb8
	cmp eax, 0x3e8
	jle CG_DrawStanceHintPrints_10
	mov dword [ebp-0x34], 0x3f800000
CG_DrawStanceHintPrints_170:
	movss xmm0, dword [ebp+0x20]
	movss [esp+0x4], xmm0
	mov eax, [ebp+0x1c]
	mov [esp], eax
	call UI_TextHeight
	cvtsi2ss xmm0, eax
	movss [ebp-0x22c], xmm0
	mov dword [ebp-0x230], 0x0
	mov dword [ebp-0x234], 0x0
	mov dword [ebp-0x21c], 0x0
	mov dword [ebp-0x238], 0x0
	lea eax, [ebp-0x24]
	mov [ebp-0x23c], eax
	mov edx, eax
	mov dword [edx], 0x0
	mov eax, cgArray
	mov eax, [eax+0x5035c]
	test al, 0x1
	jz CG_DrawStanceHintPrints_20
CG_DrawStanceHintPrints_80:
	mov ecx, [ebp-0x21c]
	mov ebx, [ecx+ebp-0x118]
CG_DrawStanceHintPrints_100:
	test ebx, ebx
	jz CG_DrawStanceHintPrints_30
	lea eax, [ebp-0xd0]
	add eax, [ebp-0x238]
	mov [ebp-0x220], eax
	lea esi, [ebp-0x118]
	add esi, [ebp-0x238]
	lea edi, [ebp-0x88]
	add edi, [ebp-0x238]
	mov dword [ebp-0x224], 0x6
CG_DrawStanceHintPrints_60:
	mov [esp+0x4], ebx
	mov edx, [ebp+0x8]
	mov [esp], edx
	call Key_IsCommandBound
	test eax, eax
	jnz CG_DrawStanceHintPrints_40
	mov ecx, cgArray
	mov eax, [ecx+0x5035c]
	test al, 0x1
	jz CG_DrawStanceHintPrints_50
	mov ebx, [esi+0x4]
CG_DrawStanceHintPrints_120:
	sub dword [ebp-0x224], 0x1
	jz CG_DrawStanceHintPrints_30
	add dword [ebp-0x220], 0x4
	add esi, 0x4
	add edi, 0x4
	test ebx, ebx
	jnz CG_DrawStanceHintPrints_60
CG_DrawStanceHintPrints_30:
	add dword [ebp-0x234], 0x1
	add dword [ebp-0x23c], 0x4
	add dword [ebp-0x238], 0x18
	add dword [ebp-0x21c], 0x18
	cmp dword [ebp-0x234], 0x3
	jz CG_DrawStanceHintPrints_70
	mov edx, [ebp-0x23c]
	mov dword [edx], 0x0
	mov eax, cgArray
	mov eax, [eax+0x5035c]
	test al, 0x1
	jnz CG_DrawStanceHintPrints_80
CG_DrawStanceHintPrints_20:
	test al, 0x2
	jz CG_DrawStanceHintPrints_90
	mov eax, [ebp-0x21c]
	mov ebx, [eax+ebp-0x88]
	jmp CG_DrawStanceHintPrints_100
CG_DrawStanceHintPrints_50:
	test al, 0x2
	jz CG_DrawStanceHintPrints_110
	mov ebx, [edi+0x4]
	jmp CG_DrawStanceHintPrints_120
CG_DrawStanceHintPrints_110:
	mov eax, [ebp-0x220]
	mov ebx, [eax+0x4]
	jmp CG_DrawStanceHintPrints_120
CG_DrawStanceHintPrints_70:
	movss xmm0, dword [_float_0_50000000]
	mov edx, [ebp+0xc]
	movss xmm1, dword [edx+0xc]
	mulss xmm1, xmm0
	movss [ebp-0x228], xmm1
	addss xmm1, [edx+0x4]
	movss [ebp-0x228], xmm1
	movss xmm1, dword [_float_1_50000000]
	movss xmm2, dword [ebp-0x228]
	subss xmm2, xmm1
	movss [ebp-0x228], xmm2
	cmp dword [ebp-0x230], 0x1
	jz CG_DrawStanceHintPrints_130
	cmp dword [ebp-0x230], 0x3
	jz CG_DrawStanceHintPrints_140
CG_DrawStanceHintPrints_180:
	movss xmm0, dword [ebp-0x34]
	movss xmm1, dword [ebp+0x18]
	cmpss xmm1, xmm0, 0x5
	andps xmm0, xmm1
	movss xmm2, dword [ebp+0x18]
	andnps xmm1, xmm2
	orps xmm1, xmm0
	movss [ebp-0x34], xmm1
	mov esi, 0x1
	mov eax, [ebp+0x8]
	shl eax, 0x6
	mov edx, [ebp+0x8]
	lea edi, [eax+edx*4]
	add edi, scrPlaceView
CG_DrawStanceHintPrints_160:
	lea ebx, [esi*4]
	mov eax, [ebp+ebx-0x28]
	test eax, eax
	jz CG_DrawStanceHintPrints_150
	lea ecx, [ebp-0x218]
	mov [esp+0x8], ecx
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call UI_GetKeyBindingLocalizedString
	mov eax, [ebp+ebx-0x34]
	mov [esp], eax
	call UI_SafeTranslateString
	lea edx, [ebp-0x218]
	mov [esp+0x4], edx
	mov [esp], eax
	call UI_ReplaceConversionString
	mov ecx, [ebp+0x24]
	mov [esp+0x28], ecx
	lea edx, [ebp-0x40]
	mov [esp+0x24], edx
	movss xmm0, dword [ebp+0x20]
	movss [esp+0x20], xmm0
	mov ecx, [ebp+0xc]
	mov edx, [ecx+0x14]
	mov [esp+0x1c], edx
	mov edx, [ecx+0x10]
	mov [esp+0x18], edx
	movss xmm0, dword [ebp-0x228]
	movss [esp+0x14], xmm0
	movss xmm0, dword [ebp+0x10]
	addss xmm0, [ecx+0x8]
	movss [esp+0x10], xmm0
	mov edx, [ebp+0x1c]
	mov [esp+0xc], edx
	mov dword [esp+0x8], 0x7fffffff
	mov [esp+0x4], eax
	mov [esp], edi
	call UI_DrawText
	movss xmm0, dword [ebp-0x22c]
	addss xmm0, [_float_1_50000000]
	addss xmm0, [ebp-0x228]
	movss [ebp-0x228], xmm0
CG_DrawStanceHintPrints_150:
	add esi, 0x1
	cmp esi, 0x4
	jnz CG_DrawStanceHintPrints_160
	add esp, 0x26c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_DrawStanceHintPrints_90:
	mov edx, [ebp-0x21c]
	mov ebx, [edx+ebp-0xd0]
	jmp CG_DrawStanceHintPrints_100
CG_DrawStanceHintPrints_10:
	cvtsi2ss xmm0, eax
	mulss xmm0, [_float_0_00100000]
	movss [ebp-0x34], xmm0
	jmp CG_DrawStanceHintPrints_170
CG_DrawStanceHintPrints_130:
	mulss xmm0, [ebp-0x22c]
	addss xmm0, [ebp-0x228]
	movss [ebp-0x228], xmm0
	jmp CG_DrawStanceHintPrints_180
CG_DrawStanceHintPrints_40:
	mov ecx, [ebp-0x23c]
	mov [ecx], ebx
	add dword [ebp-0x230], 0x1
	jmp CG_DrawStanceHintPrints_30
CG_DrawStanceHintPrints_140:
	mulss xmm0, [ebp-0x22c]
	addss xmm0, xmm1
	subss xmm2, xmm0
	movss [ebp-0x228], xmm2
	jmp CG_DrawStanceHintPrints_180
	nop


;CG_DrawCursorhint(int, rectDef_s const*, Font_s*, float, float*, int)
CG_DrawCursorhint:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2bc
	mov [ebp-0x258], eax
	mov edi, edx
	mov [ebp-0x25c], ecx
	movss [ebp-0x260], xmm0
	mov eax, cg_cursorHints
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	jz CG_DrawCursorhint_10
	mov ebx, cgArray
	mov eax, [ebx+0x46138]
	test eax, eax
	jz CG_DrawCursorhint_20
CG_DrawCursorhint_120:
	mov esi, [ebp+0x8]
	add esi, 0xc
	mov eax, [ebp+0x8]
	movss xmm0, dword [eax+0xc]
	movss [ebp-0x250], xmm0
	mov dword [esp+0xc], 0x64
	mov eax, [ebx+0x50310]
	mov [esp+0x8], eax
	mov eax, [ebx+0x5030c]
	mov [esp+0x4], eax
	mov eax, [ebx+0x46128]
	mov [esp], eax
	call CG_FadeAlpha
	fstp dword [ebp-0x254]
	movss xmm1, dword [ebp-0x250]
	mulss xmm1, [ebp-0x254]
	movss [ebp-0x250], xmm1
	mov eax, [ebp+0x8]
	movss [eax+0xc], xmm1
	pxor xmm0, xmm0
	ucomiss xmm1, xmm0
	jz CG_DrawCursorhint_30
CG_DrawCursorhint_110:
	mov edx, cg_cursorHints
	mov eax, [edx]
	cmp dword [eax+0xc], 0x3
	jz CG_DrawCursorhint_40
	mov ebx, cgArray
CG_DrawCursorhint_270:
	cmp dword [eax+0xc], 0x2
	jle CG_DrawCursorhint_50
	mov dword [ebp-0x244], 0x0
	pxor xmm0, xmm0
	movss [ebp-0x248], xmm0
CG_DrawCursorhint_140:
	mov edx, [ebx+0x50308]
	cmp edx, 0x1
	jz CG_DrawCursorhint_60
	mov eax, cgMedia
	mov eax, [eax+edx*4+0x24]
	mov [ebp-0x24c], eax
	test eax, eax
	jz CG_DrawCursorhint_10
	lea eax, [edx-0x5]
	cmp eax, 0x7f
	jbe CG_DrawCursorhint_70
	mov ecx, [ebx+0x50314]
	test ecx, ecx
	js CG_DrawCursorhint_80
	mov eax, [ebp-0x258]
	call CG_GetUseString
CG_DrawCursorhint_260:
	mov ebx, eax
	movss xmm0, dword [_float_1_00000000]
	movss [ebp-0x240], xmm0
	pxor xmm1, xmm1
	movss [ebp-0x23c], xmm1
	movss [ebp-0x238], xmm0
	mov dword [ebp-0x228], 0x0
CG_DrawCursorhint_200:
	mov eax, [ebp-0x258]
	shl eax, 0x6
	mov edx, [ebp-0x258]
	lea eax, [eax+edx*4]
	mov edx, scrPlaceView
	add eax, edx
	mov [ebp-0x22c], eax
	test ebx, ebx
	jz CG_DrawCursorhint_90
	cmp byte [ebx], 0x0
	jnz CG_DrawCursorhint_100
CG_DrawCursorhint_90:
	movss xmm1, dword [edi+0x8]
	mov edx, [ebp-0x24c]
	mov [esp+0x20], edx
	mov eax, [ebp+0x8]
	mov [esp+0x1c], eax
	mov eax, [edi+0x14]
	mov [esp+0x18], eax
	mov eax, [edi+0x10]
	mov [esp+0x14], eax
	movss xmm0, dword [ebp-0x238]
	mulss xmm0, [edi+0xc]
	addss xmm0, [ebp-0x248]
	movss [esp+0x10], xmm0
	movss xmm0, dword [ebp-0x240]
	mulss xmm0, xmm1
	movss xmm3, dword [ebp-0x248]
	addss xmm3, xmm0
	movss [esp+0xc], xmm3
	movss xmm0, dword [ebp-0x238]
	mulss xmm0, [ebp-0x244]
	movss [ebp-0x238], xmm0
	movss xmm0, dword [edi+0x4]
	subss xmm0, [ebp-0x238]
	movss [esp+0x8], xmm0
	addss xmm1, [ebp-0x244]
	movss xmm3, dword [ebp-0x23c]
	addss xmm3, xmm1
	mulss xmm3, [_float__0_50000000]
	movss [ebp-0x23c], xmm3
	addss xmm3, [edi]
	movss [esp+0x4], xmm3
	mov eax, [ebp-0x22c]
	mov [esp], eax
	call UI_DrawHandlePic
CG_DrawCursorhint_10:
	add esp, 0x2bc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_DrawCursorhint_30:
	jp CG_DrawCursorhint_110
	mov dword [ebx+0x50308], 0x0
	add esp, 0x2bc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_DrawCursorhint_20:
	mov esi, [ebx+0x466dc]
	test esi, esi
	jz CG_DrawCursorhint_120
	mov eax, [ebx+0x46128]
	mov [ebx+0x5030c], eax
	mov eax, cg_hintFadeTime
	mov eax, [eax]
	mov eax, [eax+0xc]
	mov [ebx+0x50310], eax
	mov eax, [ebx+0x466dc]
	mov [ebx+0x50308], eax
	mov eax, [ebx+0x466e0]
	mov [ebx+0x50314], eax
	jmp CG_DrawCursorhint_120
CG_DrawCursorhint_50:
	jnz CG_DrawCursorhint_130
	mov esi, [ebx+0x5030c]
	mov edx, 0x10624dd3
	mov eax, esi
	imul edx
	sar edx, 0x6
	mov ecx, esi
	sar ecx, 0x1f
	sub edx, ecx
	lea edx, [edx+edx*4]
	lea edx, [edx+edx*4]
	lea edx, [edx+edx*4]
	shl edx, 0x3
	sub esi, edx
	cvtsi2ss xmm0, esi
	divss xmm0, dword [_float_100_00000000]
	movss [ebp-0x248], xmm0
	movss xmm1, dword [_float_0_50000000]
CG_DrawCursorhint_150:
	mulss xmm1, [ebp-0x248]
	movss [ebp-0x244], xmm1
	jmp CG_DrawCursorhint_140
CG_DrawCursorhint_60:
	mov ecx, [ebx+0x50314]
	test ecx, ecx
	js CG_DrawCursorhint_10
	mov eax, [ebp-0x258]
	call CG_GetUseString
	mov esi, eax
	test eax, eax
	jz CG_DrawCursorhint_10
	cmp byte [eax], 0x0
	jz CG_DrawCursorhint_10
	movss xmm0, dword [ebp-0x260]
	movss [esp+0xc], xmm0
	mov eax, [ebp-0x25c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call UI_TextWidth
	mov ebx, eax
	movss xmm0, dword [ebp-0x260]
	movss [esp+0x4], xmm0
	mov eax, [ebp-0x25c]
	mov [esp], eax
	call UI_TextHeight
	mov edx, [ebp+0xc]
	mov [esp+0x28], edx
	mov edx, [ebp+0x8]
	mov [esp+0x24], edx
	movss xmm0, dword [ebp-0x260]
	movss [esp+0x20], xmm0
	mov edx, [edi+0x14]
	mov [esp+0x1c], edx
	mov edx, [edi+0x10]
	mov [esp+0x18], edx
	cvtsi2ss xmm0, eax
	mulss xmm0, [_float_0_50000000]
	addss xmm0, [edi+0x4]
	movss [esp+0x14], xmm0
	cvtsi2ss xmm0, ebx
	addss xmm0, [ebp-0x248]
	movss [ebp-0x248], xmm0
	mulss xmm0, [_float__0_50000000]
	movss [esp+0x10], xmm0
	mov eax, [ebp-0x25c]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x7fffffff
	mov [esp+0x4], esi
	mov eax, [ebp-0x258]
	shl eax, 0x6
	mov edx, [ebp-0x258]
	lea eax, [eax+edx*4]
	add eax, scrPlaceView
	mov [esp], eax
	call UI_DrawText
	jmp CG_DrawCursorhint_10
CG_DrawCursorhint_130:
	cvtsi2ss xmm0, dword [ebx+0x46128]
	divss xmm0, dword [_float_150_00000000]
	movss [esp], xmm0
	call sinf
	fstp dword [ebp-0x248]
	movss xmm1, dword [_float_0_50000000]
	movss xmm3, dword [ebp-0x248]
	mulss xmm3, xmm1
	addss xmm3, xmm1
	mulss xmm3, [_float_10_00000000]
	movss [ebp-0x248], xmm3
	jmp CG_DrawCursorhint_150
CG_DrawCursorhint_70:
	lea esi, [edx-0x4]
	mov [esp], esi
	call BG_GetWeaponDef
	mov edx, [eax+0x30c]
	test edx, edx
	jz CG_DrawCursorhint_160
	mov edx, [eax+0x310]
	test edx, edx
	jnz CG_DrawCursorhint_170
CG_DrawCursorhint_160:
	movss xmm0, dword [_float_1_00000000]
	movss [ebp-0x240], xmm0
	pxor xmm1, xmm1
	movss [ebp-0x23c], xmm1
	movss [ebp-0x238], xmm0
CG_DrawCursorhint_250:
	cmp dword [eax+0x130], 0x7
	jnz CG_DrawCursorhint_180
	mov eax, cgArray
	mov eax, [eax+0x50314]
	test eax, eax
	js CG_DrawCursorhint_190
	mov eax, [ebp-0x258]
	call CG_GetUseString
	mov ebx, eax
CG_DrawCursorhint_300:
	mov eax, esi
	shl eax, 0x6
	lea edx, [eax+esi*4]
	mov eax, cg_weaponsArray
	mov eax, [eax+edx+0x38]
	mov [ebp-0x228], eax
	jmp CG_DrawCursorhint_200
CG_DrawCursorhint_100:
	movss xmm0, dword [ebp-0x260]
	movss [esp+0xc], xmm0
	mov eax, [ebp-0x25c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call UI_TextWidth
	cvtsi2ss xmm0, eax
	movss [ebp-0x234], xmm0
	movss xmm1, dword [ebp-0x260]
	movss [esp+0x4], xmm1
	mov eax, [ebp-0x25c]
	mov [esp], eax
	call UI_TextHeight
	cvtsi2ss xmm0, eax
	movss [ebp-0x230], xmm0
	mov edx, [ebp-0x228]
	test edx, edx
	jz CG_DrawCursorhint_210
	mov eax, cg_weaponHintsCoD1Style
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz CG_DrawCursorhint_220
CG_DrawCursorhint_210:
	movss xmm2, dword [ebp-0x240]
	mulss xmm2, [edi+0x8]
	addss xmm2, [ebp-0x248]
	addss xmm2, [ebp-0x234]
	movss xmm0, dword [_float__0_50000000]
	mulss xmm2, xmm0
	movss xmm1, dword [edi+0x4]
	mulss xmm0, [edi+0xc]
	mulss xmm0, [ebp-0x238]
	addss xmm0, xmm1
	mov edx, [ebp+0xc]
	mov [esp+0x28], edx
	mov eax, [ebp+0x8]
	mov [esp+0x24], eax
	movss xmm3, dword [ebp-0x260]
	movss [esp+0x20], xmm3
	mov eax, [edi+0x14]
	mov [esp+0x1c], eax
	mov eax, [edi+0x10]
	mov [esp+0x18], eax
	movss xmm3, dword [ebp-0x230]
	mulss xmm3, [_float_0_50000000]
	addss xmm1, xmm3
	movss [esp+0x14], xmm1
	movss [esp+0x10], xmm2
	mov eax, [ebp-0x25c]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x7fffffff
	mov [esp+0x4], ebx
	mov edx, [ebp-0x22c]
	mov [esp], edx
	movss [ebp-0x278], xmm0
	movss [ebp-0x288], xmm2
	call UI_DrawText
	mov eax, [ebp-0x24c]
	mov [esp+0x20], eax
	mov edx, [ebp+0x8]
	mov [esp+0x1c], edx
	mov eax, [edi+0x14]
	mov [esp+0x18], eax
	mov eax, [edi+0x10]
	mov [esp+0x14], eax
	movss xmm1, dword [ebp-0x238]
	mulss xmm1, [edi+0xc]
	movss xmm3, dword [ebp-0x248]
	addss xmm3, xmm1
	movss [esp+0x10], xmm3
	movss xmm1, dword [ebp-0x240]
	mulss xmm1, [edi+0x8]
	movss xmm3, dword [ebp-0x248]
	addss xmm3, xmm1
	movss [esp+0xc], xmm3
	movss xmm0, dword [ebp-0x278]
	movss [esp+0x8], xmm0
	movss xmm2, dword [ebp-0x288]
	addss xmm2, [ebp-0x234]
	movss [esp+0x4], xmm2
	mov eax, [ebp-0x22c]
	mov [esp], eax
	call UI_DrawHandlePic
	jmp CG_DrawCursorhint_10
CG_DrawCursorhint_80:
	cmp edx, 0x3
	jz CG_DrawCursorhint_230
	movss xmm3, dword [_float_1_00000000]
	movss [ebp-0x240], xmm3
	mov dword [ebp-0x23c], 0x0
	movss [ebp-0x238], xmm3
	xor ebx, ebx
	mov dword [ebp-0x228], 0x0
	jmp CG_DrawCursorhint_200
CG_DrawCursorhint_170:
	sub edx, 0x1
	jz CG_DrawCursorhint_240
	movss xmm0, dword [_float__0_50000000]
	mulss xmm0, [edi+0x8]
	movss [ebp-0x23c], xmm0
	movss xmm1, dword [_float_2_00000000]
	movss [ebp-0x240], xmm1
	movss xmm3, dword [_float_0_50000000]
	movss [ebp-0x238], xmm3
	jmp CG_DrawCursorhint_250
CG_DrawCursorhint_220:
	movss xmm1, dword [ebp-0x260]
	movss [esp+0xc], xmm1
	mov eax, [ebp-0x25c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov edx, [ebp-0x228]
	mov [esp], edx
	call UI_TextWidth
	cvtsi2ss xmm0, eax
	movss xmm1, dword [ebp-0x234]
	addss xmm1, xmm0
	movss xmm3, dword [_float__0_50000000]
	mulss xmm3, xmm1
	movss [ebp-0x220], xmm3
	movss xmm0, dword [edi+0x4]
	movss xmm1, dword [_float__0_50000000]
	mulss xmm1, [edi+0xc]
	movss xmm3, dword [ebp-0x238]
	mulss xmm3, xmm1
	addss xmm3, xmm0
	movss [ebp-0x21c], xmm3
	movss xmm1, dword [ebp-0x230]
	mulss xmm1, [_float_0_50000000]
	movss [ebp-0x224], xmm1
	mov eax, [ebp+0xc]
	mov [esp+0x28], eax
	mov edx, [ebp+0x8]
	mov [esp+0x24], edx
	movss xmm1, dword [ebp-0x260]
	movss [esp+0x20], xmm1
	mov eax, [edi+0x14]
	mov [esp+0x1c], eax
	mov eax, [edi+0x10]
	mov [esp+0x18], eax
	addss xmm0, [ebp-0x224]
	movss [esp+0x14], xmm0
	movss xmm3, dword [ebp-0x220]
	movss [esp+0x10], xmm3
	mov eax, [ebp-0x25c]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x7fffffff
	mov [esp+0x4], ebx
	mov edx, [ebp-0x22c]
	mov [esp], edx
	call UI_DrawText
	mov ebx, [edi+0x14]
	mov esi, [edi+0x10]
	movss xmm0, dword [ebp-0x224]
	addss xmm0, [edi+0x4]
	movss [ebp-0x224], xmm0
	mov eax, [ebp-0x228]
	mov [esp+0x4], eax
	mov dword [esp], _cstring__s
	call va
	mov edx, [ebp+0xc]
	mov [esp+0x28], edx
	mov edx, [ebp+0x8]
	mov [esp+0x24], edx
	movss xmm0, dword [ebp-0x260]
	movss [esp+0x20], xmm0
	mov [esp+0x1c], ebx
	mov [esp+0x18], esi
	movss xmm1, dword [ebp-0x224]
	movss [esp+0x14], xmm1
	movss xmm3, dword [ebp-0x234]
	addss xmm3, [ebp-0x220]
	movss [esp+0x10], xmm3
	mov edx, [ebp-0x25c]
	mov [esp+0xc], edx
	mov dword [esp+0x8], 0x7fffffff
	mov [esp+0x4], eax
	mov eax, [ebp-0x22c]
	mov [esp], eax
	call UI_DrawText
	movss xmm0, dword [ebp-0x240]
	mulss xmm0, [edi+0x8]
	addss xmm0, [ebp-0x248]
	mov edx, [ebp-0x24c]
	mov [esp+0x20], edx
	mov eax, [ebp+0x8]
	mov [esp+0x1c], eax
	mov eax, [edi+0x14]
	mov [esp+0x18], eax
	mov eax, [edi+0x10]
	mov [esp+0x14], eax
	movss xmm1, dword [ebp-0x238]
	mulss xmm1, [edi+0xc]
	movss xmm3, dword [ebp-0x248]
	addss xmm3, xmm1
	movss [esp+0x10], xmm3
	movss [esp+0xc], xmm0
	movss xmm1, dword [ebp-0x230]
	mulss xmm1, [_float_1_50000000]
	movss xmm3, dword [ebp-0x21c]
	addss xmm3, xmm1
	movss [esp+0x8], xmm3
	mulss xmm0, [_float__0_50000000]
	movss [esp+0x4], xmm0
	mov eax, [ebp-0x22c]
	mov [esp], eax
	call UI_DrawHandlePic
	jmp CG_DrawCursorhint_10
CG_DrawCursorhint_230:
	lea ebx, [ebp-0x118]
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_activate
	mov eax, [ebp-0x258]
	mov [esp], eax
	call UI_GetKeyBindingLocalizedString
	mov dword [esp], _cstring_platform_pickuph
	call UI_SafeTranslateString
	mov [esp+0x4], ebx
	mov [esp], eax
	call UI_ReplaceConversionString
	jmp CG_DrawCursorhint_260
CG_DrawCursorhint_40:
	mov ebx, cgArray
	cvtsi2ss xmm0, dword [ebx+0x46128]
	divss xmm0, dword [_float_150_00000000]
	movss [esp], xmm0
	call sinf
	fstp dword [ebp-0x28c]
	movss xmm0, dword [ebp-0x28c]
	movss xmm1, dword [_float_0_50000000]
	mulss xmm0, xmm1
	addss xmm1, xmm0
	mulss xmm1, [ebp-0x250]
	movss [esi], xmm1
	mov edx, cg_cursorHints
	mov eax, [edx]
	jmp CG_DrawCursorhint_270
CG_DrawCursorhint_180:
	mov esi, cgArray
	mov ebx, [esi+0x50308]
	sub ebx, 0x4
	mov [esp], ebx
	call BG_GetWeaponDef
	mov edx, eax
	mov eax, ebx
	shl eax, 0x6
	lea ebx, [eax+ebx*4]
	add ebx, cg_weaponsArray
	mov eax, [edx+0x13c]
	test eax, eax
	jz CG_DrawCursorhint_280
	cmp dword [edx+0x144], 0x1
	jz CG_DrawCursorhint_290
	mov dword [esp], _cstring_platform_pickupn
	call UI_SafeTranslateString
	mov esi, eax
	lea eax, [ebp-0x218]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_activate
	mov edx, [ebp-0x258]
	mov [esp], edx
	call UI_GetKeyBindingLocalizedString
CG_DrawCursorhint_320:
	mov ebx, [ebx+0x38]
	mov [ebp-0x228], ebx
CG_DrawCursorhint_330:
	lea eax, [ebp-0x218]
	mov [esp+0x4], eax
	mov [esp], esi
	call UI_ReplaceConversionString
	mov ebx, eax
	jmp CG_DrawCursorhint_200
CG_DrawCursorhint_190:
	xor ebx, ebx
	jmp CG_DrawCursorhint_300
CG_DrawCursorhint_280:
	lea eax, [ebp-0x218]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_activate
	mov edx, [ebp-0x258]
	mov [esp], edx
	call UI_GetKeyBindingLocalizedString
	lea eax, [esi+0x4613c]
	mov [esp], eax
	call BG_PlayerWeaponCountPrimaryTypes
	sub eax, 0x1
	jle CG_DrawCursorhint_310
	mov dword [esp], _cstring_platform_swapwea
	call UI_SafeTranslateString
	mov esi, eax
	jmp CG_DrawCursorhint_320
CG_DrawCursorhint_240:
	movss xmm0, dword [_float__0_50000000]
	mulss xmm0, [edi+0x8]
	movss [ebp-0x23c], xmm0
	movss xmm1, dword [_float_2_00000000]
	movss [ebp-0x240], xmm1
	movss xmm3, dword [_float_1_00000000]
	movss [ebp-0x238], xmm3
	jmp CG_DrawCursorhint_250
CG_DrawCursorhint_290:
	mov dword [esp], _cstring_platform_throwba
	call UI_SafeTranslateString
	mov esi, eax
	lea eax, [ebp-0x218]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_frag
	mov edx, [ebp-0x258]
	mov [esp], edx
	call UI_GetKeyBindingLocalizedString
	mov dword [ebp-0x228], 0x0
	jmp CG_DrawCursorhint_330
CG_DrawCursorhint_310:
	mov dword [esp], _cstring_platform_pickupn
	call UI_SafeTranslateString
	mov esi, eax
	jmp CG_DrawCursorhint_320
	nop


;CG_DrawTalkerNum(int, int, rectDef_s*, Font_s*, float*, float, int)
CG_DrawTalkerNum:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov [ebp-0x34], eax
	mov edi, ecx
	movss [ebp-0x38], xmm0
	mov eax, [cg_drawTalk]
	mov ebx, [eax+0xc]
	test ebx, ebx
	jnz CG_DrawTalkerNum_10
CG_DrawTalkerNum_20:
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_DrawTalkerNum_10:
	mov [esp+0x4], edx
	mov eax, [ebp-0x34]
	mov [esp], eax
	call UI_GetTalkerClientNum
	mov esi, eax
	test eax, eax
	js CG_DrawTalkerNum_20
	lea eax, [eax+eax*8]
	mov edx, eax
	shl edx, 0x4
	add eax, edx
	lea eax, [esi+eax*2]
	shl eax, 0x2
	mov edx, cgArray
	mov [ebp-0x40], edx
	lea ecx, [eax+edx+0xe9f40]
	mov [ebp-0x2c], ecx
	add eax, edx
	mov [ebp-0x3c], eax
	mov eax, [eax+0xe9f34]
	test eax, eax
	jz CG_DrawTalkerNum_30
	mov eax, [edx]
	lea edx, [eax+eax*8]
	mov ecx, edx
	shl ecx, 0x4
	add edx, ecx
	lea edx, [eax+edx*2]
	mov ecx, [ebp-0x40]
	mov eax, [ecx+edx*4+0xe9f50]
	test eax, eax
	jnz CG_DrawTalkerNum_40
CG_DrawTalkerNum_90:
	xor edx, edx
CG_DrawTalkerNum_100:
	cmp ebx, 0x2
	jz CG_DrawTalkerNum_50
	cmp ebx, 0x3
	jz CG_DrawTalkerNum_60
CG_DrawTalkerNum_120:
	mov ecx, [ebp+0xc]
	mov eax, [ecx]
	mov [ebp-0x28], eax
	mov eax, [ecx+0x4]
	mov [ebp-0x24], eax
	mov eax, [ecx+0x8]
	mov [ebp-0x20], eax
	mov eax, [ecx+0xc]
	mov [ebp-0x1c], eax
	mov ecx, [ebp-0x40]
	mov eax, [ecx+0x24]
	cmp dword [eax+0x10], 0x5
	jz CG_DrawTalkerNum_70
	test dl, dl
	jnz CG_DrawTalkerNum_80
CG_DrawTalkerNum_70:
	mov dword [esp+0x4], 0x7
	mov dword [esp], _cstring_voice_on
	call Material_RegisterHandle
	mov [ebp-0x30], eax
CG_DrawTalkerNum_110:
	movss xmm0, dword [ebp-0x38]
	movss [esp+0x4], xmm0
	mov eax, [ebp+0x8]
	mov [esp], eax
	call UI_TextHeight
	mov esi, eax
	mov eax, [ebp-0x34]
	shl eax, 0x6
	mov edx, [ebp-0x34]
	lea ebx, [eax+edx*4]
	add ebx, scrPlaceView
	mov ecx, [ebp-0x30]
	mov [esp+0x20], ecx
	mov eax, [ebp+0xc]
	mov [esp+0x1c], eax
	mov eax, [edi+0x14]
	mov [esp+0x18], eax
	mov eax, [edi+0x10]
	mov [esp+0x14], eax
	mov eax, [edi+0xc]
	mov [esp+0x10], eax
	mov eax, [edi+0x8]
	mov [esp+0xc], eax
	mov eax, [edi+0x4]
	mov [esp+0x8], eax
	mov eax, [edi]
	mov [esp+0x4], eax
	mov [esp], ebx
	call UI_DrawHandlePic
	cvtsi2ss xmm2, esi
	mov edx, [ebp+0x10]
	mov [esp+0x28], edx
	lea ecx, [ebp-0x28]
	mov [esp+0x24], ecx
	movss xmm0, dword [ebp-0x38]
	movss [esp+0x20], xmm0
	mov eax, [edi+0x14]
	mov [esp+0x1c], eax
	mov eax, [edi+0x10]
	mov [esp+0x18], eax
	movaps xmm1, xmm2
	addss xmm1, [edi+0x4]
	movss xmm0, dword [edi+0xc]
	subss xmm0, xmm2
	mulss xmm0, [_float_0_50000000]
	addss xmm1, xmm0
	movss [esp+0x14], xmm1
	movss xmm0, dword [edi]
	addss xmm0, [edi+0x8]
	addss xmm0, [_float_2_00000000]
	movss [esp+0x10], xmm0
	mov eax, [ebp+0x8]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x20
	mov edx, [ebp-0x2c]
	mov [esp+0x4], edx
	mov [esp], ebx
	call UI_DrawText
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_DrawTalkerNum_40:
	mov edx, [ebp-0x3c]
	cmp eax, [edx+0xe9f50]
	jz CG_DrawTalkerNum_90
	mov edx, 0x1
	jmp CG_DrawTalkerNum_100
CG_DrawTalkerNum_80:
	test byte [eax+0x609], 0x2
	jz CG_DrawTalkerNum_70
	mov eax, [ebp-0x34]
	mov [esp+0xc], eax
	lea edx, [ebp-0x28]
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_g_teamcolor
	mov [esp], esi
	call CG_RelativeTeamColor
	mov dword [esp+0x4], 0x7
	mov eax, perk_parabolicIcon
	mov eax, [eax]
	mov eax, [eax+0xc]
	mov [esp], eax
	call Material_RegisterHandle
	mov [ebp-0x30], eax
	jmp CG_DrawTalkerNum_110
CG_DrawTalkerNum_60:
	test dl, dl
	jnz CG_DrawTalkerNum_120
	jmp CG_DrawTalkerNum_20
CG_DrawTalkerNum_30:
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_client_i_has_inv
	mov dword [esp], 0xd
	call Com_PrintWarning
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_DrawTalkerNum_50:
	test dl, dl
	jz CG_DrawTalkerNum_120
	jmp CG_DrawTalkerNum_20


;CG_PulseLowHealthOverlay(cg_s*, float)
CG_PulseLowHealthOverlay:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	mov esi, [ebp+0x8]
	movss xmm1, dword [ebp+0xc]
	movss xmm0, dword [esi+0x50350]
	ucomiss xmm0, xmm1
	jbe CG_PulseLowHealthOverlay_10
	mov eax, [hud_healthOverlay_pulseStart]
	movss xmm0, dword [eax+0xc]
	ucomiss xmm0, xmm1
	ja CG_PulseLowHealthOverlay_20
CG_PulseLowHealthOverlay_10:
	movss [esi+0x50350], xmm1
	mov eax, [esi+0x5033c]
	add eax, [esi+0x50340]
	cmp eax, [esi+0x46128]
	jg CG_PulseLowHealthOverlay_30
	mov eax, [hud_healthOverlay_pulseStart]
	movss xmm0, dword [eax+0xc]
	ucomiss xmm0, xmm1
	ja CG_PulseLowHealthOverlay_40
	cmp byte [esi+0x50348], 0x0
	jz CG_PulseLowHealthOverlay_30
CG_PulseLowHealthOverlay_80:
	mov eax, [esi+0x46128]
	mov [esi+0x5033c], eax
	mov eax, [esi+0x50338]
	mov [esi+0x50334], eax
	mov edi, [esi+0x50354]
	cmp edi, 0x3
	ja CG_PulseLowHealthOverlay_50
CG_PulseLowHealthOverlay_90:
	mov eax, [esi+0x50344]
	cmp eax, 0x1
	jz CG_PulseLowHealthOverlay_60
	cmp eax, 0x2
	jz CG_PulseLowHealthOverlay_70
	test eax, eax
	jnz CG_PulseLowHealthOverlay_30
	movss xmm1, dword [edi*4+pulseMags.138474]
	movss xmm3, dword [_float_1_00000000]
	movaps xmm0, xmm1
	subss xmm0, xmm3
	pxor xmm4, xmm4
	movaps xmm2, xmm4
	cmpss xmm2, xmm0, 0x6
	movaps xmm0, xmm2
	movaps xmm2, xmm1
	andps xmm2, xmm0
	andnps xmm0, xmm3
	orps xmm0, xmm2
	movaps xmm2, xmm4
	subss xmm2, xmm1
	movaps xmm1, xmm2
	movaps xmm2, xmm4
	cmpss xmm2, xmm1, 0x6
	andps xmm0, xmm2
	orps xmm0, xmm4
	movss [esi+0x50338], xmm0
	mov eax, [hud_healthOverlay_phaseOne_pulseDuration]
	mov eax, [eax+0xc]
	mov [esi+0x50340], eax
	mov dword [esi+0x50344], 0x1
CG_PulseLowHealthOverlay_30:
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_PulseLowHealthOverlay_40:
	cmp byte [esi+0x50348], 0x0
	jnz CG_PulseLowHealthOverlay_80
	mov byte [esi+0x50348], 0x1
	mov eax, [esi+0x46128]
	mov [esi+0x5033c], eax
	mov eax, [esi+0x50338]
	mov [esi+0x50334], eax
	mov edi, [esi+0x50354]
	cmp edi, 0x3
	jbe CG_PulseLowHealthOverlay_90
CG_PulseLowHealthOverlay_50:
	mov byte [esi+0x50348], 0x0
	mov eax, [hud_healthOverlay_phaseEnd_toAlpha]
	mov eax, [eax+0xc]
	mov [esi+0x50338], eax
	mov eax, [hud_healthOverlay_phaseEnd_pulseDuration]
	mov eax, [eax+0xc]
	mov [esi+0x50340], eax
	mov dword [esi+0x50344], 0x0
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_PulseLowHealthOverlay_20:
	mov eax, [esi+0x46128]
	mov [esi+0x5034c], eax
	mov dword [esi+0x50354], 0x0
	jmp CG_PulseLowHealthOverlay_10
CG_PulseLowHealthOverlay_60:
	movss xmm1, dword [edi*4+pulseMags.138474]
	mov eax, [hud_healthOverlay_phaseTwo_toAlphaMultiplier]
	mulss xmm1, [eax+0xc]
	movss xmm3, dword [_float_1_00000000]
	movaps xmm0, xmm1
	subss xmm0, xmm3
	pxor xmm4, xmm4
	movaps xmm2, xmm4
	cmpss xmm2, xmm0, 0x6
	movaps xmm0, xmm2
	movaps xmm2, xmm1
	andps xmm2, xmm0
	andnps xmm0, xmm3
	orps xmm0, xmm2
	movaps xmm2, xmm4
	subss xmm2, xmm1
	movaps xmm1, xmm2
	movaps xmm2, xmm4
	cmpss xmm2, xmm1, 0x6
	andps xmm0, xmm2
	orps xmm0, xmm4
	movss [esi+0x50338], xmm0
	mov eax, [hud_healthOverlay_phaseTwo_pulseDuration]
	mov eax, [eax+0xc]
	mov [esi+0x50340], eax
	mov dword [esi+0x50344], 0x2
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_PulseLowHealthOverlay_70:
	movss xmm1, dword [edi*4+pulseMags.138474]
	mov eax, [hud_healthOverlay_phaseThree_toAlphaMultiplier]
	mulss xmm1, [eax+0xc]
	movss xmm3, dword [_float_1_00000000]
	movaps xmm0, xmm1
	subss xmm0, xmm3
	pxor xmm4, xmm4
	movaps xmm2, xmm4
	cmpss xmm2, xmm0, 0x6
	movaps xmm0, xmm2
	movaps xmm2, xmm1
	andps xmm2, xmm0
	andnps xmm0, xmm3
	orps xmm0, xmm2
	movaps xmm2, xmm4
	subss xmm2, xmm1
	movaps xmm1, xmm2
	movaps xmm2, xmm4
	cmpss xmm2, xmm1, 0x6
	andps xmm0, xmm2
	orps xmm0, xmm4
	movss [esi+0x50338], xmm0
	mov ebx, [hud_healthOverlay_phaseThree_pulseDuration]
	mov eax, [ebx+0xc]
	mov [esi+0x50340], eax
	mov dword [esi+0x50344], 0x0
	mov ecx, [esi+0x5034c]
	mov eax, [hud_healthOverlay_regenPauseTime]
	add ecx, [eax+0xc]
	mov eax, [hud_healthOverlay_phaseOne_pulseDuration]
	mov eax, [eax+0xc]
	mov edx, [hud_healthOverlay_phaseTwo_pulseDuration]
	add eax, [edx+0xc]
	add eax, [ebx+0xc]
	lea eax, [eax+eax*2]
	sub ecx, eax
	cmp [esi+0x46128], ecx
	jl CG_PulseLowHealthOverlay_30
	lea eax, [edi+0x1]
	mov [esi+0x50354], eax
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;CG_DrawInvalidCmdHint(int, rectDef_s const*, Font_s*, float, float*, int)
CG_DrawInvalidCmdHint:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov [ebp-0x20], eax
	mov ebx, edx
	mov edi, ecx
	movss [ebp-0x24], xmm0
	mov ecx, cgArray
	mov eax, cg_invalidCmdHintDuration
	mov edx, [eax]
	mov eax, [ecx+0x50320]
	add eax, [edx+0xc]
	cmp eax, [ecx+0x46128]
	jge CG_DrawInvalidCmdHint_10
	mov dword [ecx+0x5031c], 0x0
CG_DrawInvalidCmdHint_10:
	cmp dword [ecx+0x5031c], 0x9
	ja CG_DrawInvalidCmdHint_20
	mov eax, [ecx+0x5031c]
	jmp dword [eax*4+CG_DrawInvalidCmdHint_jumptab_0]
CG_DrawInvalidCmdHint_40:
	mov dword [esp], _cstring_weapon_no_ammo
	call UI_SafeTranslateString
	mov esi, eax
CG_DrawInvalidCmdHint_30:
	mov eax, cg_invalidCmdHintBlinkInterval
	mov eax, [eax]
	mov ecx, [eax+0xc]
	mov edx, cgArray
	mov eax, [edx+0x46128]
	sub eax, [edx+0x50320]
	cdq
	idiv ecx
	cvtsi2ss xmm0, edx
	cvtsi2ss xmm1, ecx
	divss xmm0, xmm1
	mov eax, [ebp+0x8]
	movss [eax+0xc], xmm0
	movss xmm0, dword [ebx]
	movss [ebp-0x1c], xmm0
	movss xmm1, dword [ebp-0x24]
	movss [esp+0xc], xmm1
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call UI_TextWidth
	mov edx, [ebp+0xc]
	mov [esp+0x28], edx
	mov edx, [ebp+0x8]
	mov [esp+0x24], edx
	movss xmm0, dword [ebp-0x24]
	movss [esp+0x20], xmm0
	mov edx, [ebx+0x14]
	mov [esp+0x1c], edx
	mov edx, [ebx+0x10]
	mov [esp+0x18], edx
	mov edx, [ebx+0x4]
	mov [esp+0x14], edx
	cvtsi2ss xmm0, eax
	movss xmm1, dword [_float_0_50000000]
	mulss xmm0, xmm1
	addss xmm0, xmm1
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x28]
	cvttss2si eax, [ebp-0x28]
	cvtsi2ss xmm0, eax
	movss xmm1, dword [ebp-0x1c]
	subss xmm1, xmm0
	movss [esp+0x10], xmm1
	mov [esp+0xc], edi
	mov dword [esp+0x8], 0x7fffffff
	mov [esp+0x4], esi
	mov eax, [ebp-0x20]
	shl eax, 0x6
	mov edx, [ebp-0x20]
	lea eax, [eax+edx*4]
	add eax, scrPlaceView
	mov [esp], eax
	call UI_DrawText
CG_DrawInvalidCmdHint_20:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_DrawInvalidCmdHint_110:
	mov dword [esp], _cstring_weapon_target_no
	call UI_SafeTranslateString
	mov esi, eax
	jmp CG_DrawInvalidCmdHint_30
CG_DrawInvalidCmdHint_100:
	mov dword [esp], _cstring_weapon_lockon_re
	call UI_SafeTranslateString
	mov esi, eax
	jmp CG_DrawInvalidCmdHint_30
CG_DrawInvalidCmdHint_90:
	mov dword [esp], _cstring_weapon_target_to
	call UI_SafeTranslateString
	mov esi, eax
	jmp CG_DrawInvalidCmdHint_30
CG_DrawInvalidCmdHint_80:
	mov dword [esp], _cstring_game_crouch_bloc
	call UI_SafeTranslateString
	mov esi, eax
	jmp CG_DrawInvalidCmdHint_30
CG_DrawInvalidCmdHint_70:
	mov dword [esp], _cstring_game_stand_block
	call UI_SafeTranslateString
	mov esi, eax
	jmp CG_DrawInvalidCmdHint_30
CG_DrawInvalidCmdHint_60:
	mov dword [esp], _cstring_weapon_no_specia
	call UI_SafeTranslateString
	mov esi, eax
	jmp CG_DrawInvalidCmdHint_30
CG_DrawInvalidCmdHint_50:
	mov dword [esp], _cstring_weapon_no_frag_g
	call UI_SafeTranslateString
	mov esi, eax
	jmp CG_DrawInvalidCmdHint_30
	
	
CG_DrawInvalidCmdHint_jumptab_0:
	dd CG_DrawInvalidCmdHint_20
	dd CG_DrawInvalidCmdHint_40
	dd CG_DrawInvalidCmdHint_50
	dd CG_DrawInvalidCmdHint_60
	dd CG_DrawInvalidCmdHint_20
	dd CG_DrawInvalidCmdHint_70
	dd CG_DrawInvalidCmdHint_80
	dd CG_DrawInvalidCmdHint_90
	dd CG_DrawInvalidCmdHint_100
	dd CG_DrawInvalidCmdHint_110


;CG_DrawHoldBreathHint(int, rectDef_s const*, Font_s*, float, int)
CG_DrawHoldBreathHint:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x17c
	mov esi, eax
	mov [ebp-0x140], edx
	mov [ebp-0x144], ecx
	movss [ebp-0x148], xmm0
	mov eax, cg_drawBreathHint
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz CG_DrawHoldBreathHint_10
	mov ebx, cgArray
	test byte [ebx+0x4614c], 0x4
	jz CG_DrawHoldBreathHint_20
CG_DrawHoldBreathHint_10:
	add esp, 0x17c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_DrawHoldBreathHint_20:
	lea edi, [ebx+0x4613c]
	mov [esp], edi
	call BG_GetViewmodelWeaponIndex
	mov [esp], eax
	call BG_GetWeaponDef
	mov edx, [eax+0x438]
	test edx, edx
	jz CG_DrawHoldBreathHint_10
	cmp dword [eax+0x130], 0x9
	jz CG_DrawHoldBreathHint_10
	movss xmm0, dword [_float_1_00000000]
	ucomiss xmm0, [ebx+0x46230]
	jnz CG_DrawHoldBreathHint_10
	jp CG_DrawHoldBreathHint_10
	mov [esp], esi
	call CL_GetCurrentCmdNumber
	lea edx, [ebp-0x38]
	mov [esp+0x8], edx
	mov [esp+0x4], eax
	mov [esp], esi
	call CL_GetUserCmd
	test byte [ebp-0x33], 0x20
	jnz CG_DrawHoldBreathHint_10
	mov [esp], edi
	call BG_CanHoldBreath
	test eax, eax
	jz CG_DrawHoldBreathHint_10
	lea ebx, [ebp-0x138]
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_holdbreath
	mov [esp], esi
	call UI_GetKeyBindingLocalizedString
	test eax, eax
	jz CG_DrawHoldBreathHint_30
CG_DrawHoldBreathHint_40:
	mov dword [esp], _cstring_platform_hold_br
	call UI_SafeTranslateString
	mov [esp+0x4], ebx
	mov [esp], eax
	call UI_ReplaceConversionString
	mov ebx, eax
	mov eax, [ebp-0x140]
	movss xmm0, dword [eax]
	movss [ebp-0x13c], xmm0
	movss xmm1, dword [ebp-0x148]
	movss [esp+0xc], xmm1
	mov eax, [ebp-0x144]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call UI_TextWidth
	mov edx, [ebp+0x8]
	mov [esp+0x28], edx
	mov edx, colorWhite
	mov [esp+0x24], edx
	movss xmm0, dword [ebp-0x148]
	movss [esp+0x20], xmm0
	mov ecx, [ebp-0x140]
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
	fstp dword [ebp-0x14c]
	cvttss2si eax, [ebp-0x14c]
	cvtsi2ss xmm0, eax
	movss xmm1, dword [ebp-0x13c]
	subss xmm1, xmm0
	movss [esp+0x10], xmm1
	mov eax, [ebp-0x144]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x7fffffff
	mov [esp+0x4], ebx
	mov eax, esi
	shl eax, 0x6
	lea eax, [eax+esi*4]
	add eax, scrPlaceView
	mov [esp], eax
	call UI_DrawText
	jmp CG_DrawHoldBreathHint_10
CG_DrawHoldBreathHint_30:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_melee_breath
	mov [esp], esi
	call UI_GetKeyBindingLocalizedString
	test eax, eax
	jnz CG_DrawHoldBreathHint_40
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_breath_sprint
	mov [esp], esi
	call UI_GetKeyBindingLocalizedString
	jmp CG_DrawHoldBreathHint_40


;CG_DrawPlayerBarHealthBack(int, rectDef_s const*, Material*, float*)
CG_DrawPlayerBarHealthBack:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x8c
	mov ebx, eax
	mov edi, edx
	mov [ebp-0x3c], ecx
	mov eax, cg_drawHealth
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz CG_DrawPlayerBarHealthBack_10
CG_DrawPlayerBarHealthBack_20:
	add esp, 0x8c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_DrawPlayerBarHealthBack_10:
	mov esi, [hud_fade_healthbar]
	movss xmm0, dword [_float_1000_00000000]
	mulss xmm0, [esi+0xc]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x40]
	cvttss2si eax, [ebp-0x40]
	mov [ebp-0x20], eax
	mov edx, cgArray
	mov eax, [edx+0x504b8]
	mov [ebp-0x1c], eax
	mov eax, [hud_enable]
	cmp byte [eax+0xc], 0x0
	jz CG_DrawPlayerBarHealthBack_20
	mov eax, [edx+0x502f4]
	test eax, eax
	jnz CG_DrawPlayerBarHealthBack_30
CG_DrawPlayerBarHealthBack_110:
	xor eax, eax
CG_DrawPlayerBarHealthBack_120:
	test eax, eax
	jz CG_DrawPlayerBarHealthBack_20
	pxor xmm2, xmm2
	ucomiss xmm2, [esi+0xc]
	jnz CG_DrawPlayerBarHealthBack_40
	jp CG_DrawPlayerBarHealthBack_40
	movss xmm0, dword [_float_1_00000000]
	movss [ebp-0x24], xmm0
CG_DrawPlayerBarHealthBack_100:
	mov eax, [ebp+0x8]
	add eax, 0xc
	mov [ebp-0x38], eax
	mov eax, [ebp+0x8]
	movss [eax+0xc], xmm0
	movss xmm1, dword [edi]
	movss [ebp-0x34], xmm1
	movss xmm4, dword [edi+0x4]
	movss [ebp-0x30], xmm4
	movss xmm0, dword [edi+0x8]
	movss [ebp-0x2c], xmm0
	movss xmm1, dword [edi+0xc]
	movss [ebp-0x28], xmm1
	mov eax, ebx
	shl eax, 0x6
	lea ebx, [eax+ebx*4]
	add ebx, scrPlaceView
	mov eax, [ebp-0x3c]
	mov [esp+0x30], eax
	mov eax, [ebp+0x8]
	mov [esp+0x2c], eax
	mov dword [esp+0x28], 0x3f800000
	mov dword [esp+0x24], 0x3f800000
	mov dword [esp+0x20], 0x0
	mov dword [esp+0x1c], 0x0
	mov eax, [edi+0x14]
	mov [esp+0x18], eax
	mov eax, [edi+0x10]
	mov [esp+0x14], eax
	movss [esp+0x10], xmm1
	movss [esp+0xc], xmm0
	movss [esp+0x8], xmm4
	movss xmm0, dword [ebp-0x34]
	movss [esp+0x4], xmm0
	mov [esp], ebx
	movss [ebp-0x58], xmm2
	call CL_DrawStretchPic
	mov esi, cgArray
	mov eax, [esi+0x24]
	add eax, 0xc
	mov edx, [eax+0x148]
	test edx, edx
	movss xmm2, dword [ebp-0x58]
	jz CG_DrawPlayerBarHealthBack_20
	mov ecx, [eax+0x150]
	test ecx, ecx
	jz CG_DrawPlayerBarHealthBack_20
	cmp dword [eax+0x4], 0x7
	jz CG_DrawPlayerBarHealthBack_20
	cvtsi2ss xmm1, edx
	cvtsi2ss xmm0, ecx
	divss xmm1, xmm0
	movaps xmm0, xmm1
	subss xmm0, [_float_1_00000000]
	cmpss xmm2, xmm0, 0x6
	movaps xmm0, xmm2
	movaps xmm2, xmm1
	andps xmm2, xmm0
	movaps xmm3, xmm0
	movss xmm4, dword [_float_1_00000000]
	andnps xmm3, xmm4
	orps xmm3, xmm2
	pxor xmm2, xmm2
	movaps xmm0, xmm2
	subss xmm0, xmm1
	ucomiss xmm0, xmm2
	jae CG_DrawPlayerBarHealthBack_20
	ucomiss xmm3, xmm2
	jp CG_DrawPlayerBarHealthBack_50
	jz CG_DrawPlayerBarHealthBack_20
CG_DrawPlayerBarHealthBack_50:
	mov eax, [hud_health_startpulse_critical]
	movss xmm0, dword [eax+0xc]
	ucomiss xmm0, xmm3
	ja CG_DrawPlayerBarHealthBack_60
	mov eax, [hud_health_startpulse_injured]
	movss xmm0, dword [eax+0xc]
	ucomiss xmm0, xmm3
	jbe CG_DrawPlayerBarHealthBack_20
	movss xmm0, dword [_float_1000_00000000]
	mov eax, [hud_health_pulserate_injured]
	mulss xmm0, [eax+0xc]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x48]
	cvttss2si ecx, [ebp-0x48]
CG_DrawPlayerBarHealthBack_130:
	test ecx, ecx
	jz CG_DrawPlayerBarHealthBack_20
	mov eax, [esi+0x50324]
	mov edx, [esi+0x46128]
	cmp eax, edx
	jg CG_DrawPlayerBarHealthBack_70
	add eax, ecx
	cmp edx, eax
	jle CG_DrawPlayerBarHealthBack_80
CG_DrawPlayerBarHealthBack_70:
	mov [esi+0x50324], edx
CG_DrawPlayerBarHealthBack_80:
	mov eax, [ebp+0x8]
	mov dword [eax], 0x3f63d70a
	mov dword [eax+0x4], 0x3e3851ec
	mov dword [eax+0x8], 0x3c23d70a
	mov eax, ecx
	add eax, [esi+0x50324]
	sub eax, [esi+0x46128]
	cvtsi2ss xmm0, eax
	cvtsi2ss xmm1, ecx
	divss xmm0, xmm1
	movss xmm1, dword [ebp-0x24]
	minss xmm1, xmm0
	mov eax, [ebp-0x38]
	movss [eax], xmm1
	mov eax, [ebp-0x3c]
	mov [esp+0x30], eax
	mov eax, [ebp+0x8]
	mov [esp+0x2c], eax
	mov eax, 0x3f800000
	mov [esp+0x28], eax
	mov [esp+0x24], eax
	mov dword [esp+0x20], 0x0
	mov dword [esp+0x1c], 0x0
	mov eax, [edi+0x14]
	mov [esp+0x18], eax
	mov eax, [edi+0x10]
	mov [esp+0x14], eax
	movss xmm0, dword [ebp-0x28]
	movss [esp+0x10], xmm0
	movss xmm1, dword [ebp-0x2c]
	movss [esp+0xc], xmm1
	movss xmm4, dword [ebp-0x30]
	movss [esp+0x8], xmm4
	movss xmm0, dword [ebp-0x34]
	movss [esp+0x4], xmm0
	mov [esp], ebx
	call CL_DrawStretchPic
	jmp CG_DrawPlayerBarHealthBack_20
CG_DrawPlayerBarHealthBack_40:
	mov dword [esp+0xc], 0x2bc
	mov eax, [ebp-0x20]
	mov [esp+0x8], eax
	mov eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov eax, cgArray
	mov eax, [eax+0x46128]
	mov [esp], eax
	call CG_FadeColor
	test eax, eax
	jz CG_DrawPlayerBarHealthBack_20
	movss xmm0, dword [eax+0xc]
	movss [ebp-0x24], xmm0
	pxor xmm2, xmm2
	ucomiss xmm0, xmm2
	jp CG_DrawPlayerBarHealthBack_90
	jz CG_DrawPlayerBarHealthBack_20
CG_DrawPlayerBarHealthBack_90:
	movss xmm0, dword [ebp-0x24]
	jmp CG_DrawPlayerBarHealthBack_100
CG_DrawPlayerBarHealthBack_30:
	mov [esp], ebx
	call CL_ShouldDisplayHud
	test al, al
	jz CG_DrawPlayerBarHealthBack_110
	mov eax, 0x1
	jmp CG_DrawPlayerBarHealthBack_120
CG_DrawPlayerBarHealthBack_60:
	movss xmm0, dword [_float_1000_00000000]
	mov eax, [hud_health_pulserate_critical]
	mulss xmm0, [eax+0xc]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x44]
	cvttss2si ecx, [ebp-0x44]
	jmp CG_DrawPlayerBarHealthBack_130


;CG_DrawPlayerBarHealth(int, rectDef_s const*, Material*, float*)
CG_DrawPlayerBarHealth:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x8c
	mov [ebp-0x24], eax
	mov esi, edx
	mov [ebp-0x28], ecx
	mov eax, cg_drawHealth
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz CG_DrawPlayerBarHealth_10
	mov edx, cgArray
	mov eax, [edx+0x24]
	add eax, 0xc
	mov edx, [eax+0x148]
	test edx, edx
	jnz CG_DrawPlayerBarHealth_20
CG_DrawPlayerBarHealth_120:
	pxor xmm3, xmm3
	movaps xmm4, xmm3
CG_DrawPlayerBarHealth_130:
	mov eax, [ebp+0x8]
	add eax, 0xc
	mov [ebp-0x20], eax
	mov ebx, [hud_fade_healthbar]
	movss xmm0, dword [_float_1000_00000000]
	mulss xmm0, [ebx+0xc]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	movss [ebp-0x48], xmm3
	movss [ebp-0x58], xmm4
	call floorf
	fstp dword [ebp-0x2c]
	cvttss2si edx, [ebp-0x2c]
	mov [ebp-0x1c], edx
	mov eax, cgArray
	mov edi, [eax+0x504b8]
	mov eax, [hud_enable]
	cmp byte [eax+0xc], 0x0
	movss xmm3, dword [ebp-0x48]
	movss xmm4, dword [ebp-0x58]
	jnz CG_DrawPlayerBarHealth_30
CG_DrawPlayerBarHealth_90:
	movaps xmm0, xmm4
CG_DrawPlayerBarHealth_110:
	mov edi, [ebp-0x20]
	movss [edi], xmm0
	ucomiss xmm0, xmm4
	jp CG_DrawPlayerBarHealth_40
	jz CG_DrawPlayerBarHealth_10
CG_DrawPlayerBarHealth_40:
	mov eax, cgArray
	mov edi, [eax+0x24]
	add edi, 0xc
	movss xmm2, dword [_float_1_00000000]
	movaps xmm0, xmm3
	subss xmm0, xmm2
	movaps xmm1, xmm4
	cmpss xmm1, xmm0, 0x6
	movaps xmm0, xmm1
	movaps xmm1, xmm3
	andps xmm1, xmm0
	andnps xmm0, xmm2
	orps xmm0, xmm1
	movaps xmm1, xmm4
	subss xmm1, xmm3
	movaps xmm5, xmm4
	cmpss xmm5, xmm1, 0x6
	movaps xmm1, xmm5
	andps xmm0, xmm5
	andnps xmm1, xmm4
	orps xmm1, xmm0
	ucomiss xmm3, xmm4
	jbe CG_DrawPlayerBarHealth_50
	mov ebx, [esi]
	mov ecx, [esi+0x4]
	movaps xmm4, xmm3
	mulss xmm4, [esi+0x8]
	mov edx, [esi+0xc]
	ucomiss xmm1, [_float_0_50000000]
	jbe CG_DrawPlayerBarHealth_60
	movaps xmm0, xmm2
	subss xmm0, xmm1
	addss xmm0, xmm0
	movaps xmm1, xmm0
	mov eax, [ebp+0x8]
	mulss xmm1, [eax]
	movss [eax], xmm1
	mulss xmm0, [eax+0x8]
	movss [eax+0x8], xmm0
CG_DrawPlayerBarHealth_140:
	mov eax, [ebp-0x28]
	mov [esp+0x30], eax
	mov eax, [ebp+0x8]
	mov [esp+0x2c], eax
	mov dword [esp+0x28], 0x3f800000
	movss [esp+0x24], xmm3
	mov dword [esp+0x20], 0x0
	mov dword [esp+0x1c], 0x0
	mov eax, [esi+0x14]
	mov [esp+0x18], eax
	mov eax, [esi+0x10]
	mov [esp+0x14], eax
	mov [esp+0x10], edx
	movss [esp+0xc], xmm4
	mov [esp+0x8], ecx
	mov [esp+0x4], ebx
	mov eax, [ebp-0x24]
	shl eax, 0x6
	mov edx, [ebp-0x24]
	lea eax, [eax+edx*4]
	add eax, scrPlaceView
	mov [esp], eax
	movss [ebp-0x48], xmm3
	call CL_DrawStretchPic
	movss xmm3, dword [ebp-0x48]
CG_DrawPlayerBarHealth_50:
	mov eax, [edi+0xdc]
	mov edi, cgArray
	cmp [edi+0x5032c], eax
	jz CG_DrawPlayerBarHealth_70
	mov [edi+0x5032c], eax
CG_DrawPlayerBarHealth_190:
	movss [edi+0x50330], xmm3
	mov dword [edi+0x50328], 0x1
CG_DrawPlayerBarHealth_230:
	mov edx, cgArray
CG_DrawPlayerBarHealth_200:
	movss xmm2, dword [edx+0x50330]
	ucomiss xmm2, xmm3
	jbe CG_DrawPlayerBarHealth_10
	movss xmm0, dword [esi+0x8]
	movaps xmm1, xmm3
	mulss xmm1, xmm0
	addss xmm1, [esi]
	mov ebx, [esi+0x4]
	mov ecx, [esi+0xc]
	mov eax, 0x3f800000
	mov edi, [ebp+0x8]
	mov [edi], eax
	xor edx, edx
	mov [edi+0x4], edx
	mov [edi+0x8], edx
	mov edi, [ebp-0x28]
	mov [esp+0x30], edi
	mov edi, [ebp+0x8]
	mov [esp+0x2c], edi
	mov [esp+0x28], eax
	mov edi, cgArray
	mov eax, [edi+0x50330]
	mov [esp+0x24], eax
	mov [esp+0x20], edx
	movss [esp+0x1c], xmm3
	mov eax, [esi+0x14]
	mov [esp+0x18], eax
	mov eax, [esi+0x10]
	mov [esp+0x14], eax
	mov [esp+0x10], ecx
	subss xmm2, xmm3
	mulss xmm0, xmm2
	movss [esp+0xc], xmm0
	mov [esp+0x8], ebx
	movss [esp+0x4], xmm1
	mov eax, [ebp-0x24]
	shl eax, 0x6
	mov edx, [ebp-0x24]
	lea eax, [eax+edx*4]
	add eax, scrPlaceView
	mov [esp], eax
	call CL_DrawStretchPic
CG_DrawPlayerBarHealth_10:
	add esp, 0x8c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_DrawPlayerBarHealth_30:
	mov edx, cgArray
	mov eax, [edx+0x502f4]
	test eax, eax
	jnz CG_DrawPlayerBarHealth_80
CG_DrawPlayerBarHealth_220:
	xor eax, eax
CG_DrawPlayerBarHealth_160:
	test eax, eax
	jz CG_DrawPlayerBarHealth_90
	ucomiss xmm4, [ebx+0xc]
	jnz CG_DrawPlayerBarHealth_100
	jp CG_DrawPlayerBarHealth_100
	movss xmm0, dword [_float_1_00000000]
	jmp CG_DrawPlayerBarHealth_110
CG_DrawPlayerBarHealth_20:
	mov ecx, [eax+0x150]
	test ecx, ecx
	jz CG_DrawPlayerBarHealth_120
	cmp dword [eax+0x4], 0x7
	jz CG_DrawPlayerBarHealth_120
	cvtsi2ss xmm1, edx
	cvtsi2ss xmm0, ecx
	divss xmm1, xmm0
	movss xmm3, dword [_float_1_00000000]
	movaps xmm0, xmm1
	subss xmm0, xmm3
	pxor xmm4, xmm4
	movaps xmm2, xmm4
	cmpss xmm2, xmm0, 0x6
	movaps xmm0, xmm2
	movaps xmm2, xmm1
	andps xmm2, xmm0
	andnps xmm0, xmm3
	movaps xmm3, xmm0
	orps xmm3, xmm2
	movaps xmm0, xmm4
	subss xmm0, xmm1
	ucomiss xmm0, xmm4
	jb CG_DrawPlayerBarHealth_130
	movaps xmm3, xmm4
	jmp CG_DrawPlayerBarHealth_130
CG_DrawPlayerBarHealth_60:
	addss xmm1, [_float_0_20000000]
	mov eax, [ebp+0x8]
	mulss xmm1, [eax+0x4]
	addss xmm1, [_float_0_30000001]
	movss [eax+0x4], xmm1
	jmp CG_DrawPlayerBarHealth_140
CG_DrawPlayerBarHealth_80:
	mov eax, [ebp-0x24]
	mov [esp], eax
	movss [ebp-0x48], xmm3
	call CL_ShouldDisplayHud
	test al, al
	movss xmm3, dword [ebp-0x48]
	jz CG_DrawPlayerBarHealth_150
	mov eax, 0x1
	pxor xmm4, xmm4
	jmp CG_DrawPlayerBarHealth_160
CG_DrawPlayerBarHealth_70:
	movss xmm1, dword [edi+0x50330]
	ucomiss xmm1, xmm3
	jbe CG_DrawPlayerBarHealth_170
	mov eax, [edi+0x50328]
	test eax, eax
	jnz CG_DrawPlayerBarHealth_180
	mov edi, cgArray
	cvtsi2ss xmm0, dword [edi+0x46124]
	mulss xmm0, [_float_0_00120000]
	subss xmm1, xmm0
	movss [edi+0x50330], xmm1
	ucomiss xmm3, xmm1
	jae CG_DrawPlayerBarHealth_190
	mov edx, edi
	jmp CG_DrawPlayerBarHealth_200
CG_DrawPlayerBarHealth_170:
	movss [edi+0x50330], xmm3
	mov dword [edi+0x50328], 0x1
	mov edx, edi
	jmp CG_DrawPlayerBarHealth_200
CG_DrawPlayerBarHealth_100:
	mov dword [esp+0xc], 0x2bc
	mov edx, [ebp-0x1c]
	mov [esp+0x8], edx
	mov [esp+0x4], edi
	mov eax, cgArray
	mov eax, [eax+0x46128]
	mov [esp], eax
	movss [ebp-0x48], xmm3
	call CG_FadeColor
	test eax, eax
	movss xmm3, dword [ebp-0x48]
	jz CG_DrawPlayerBarHealth_210
	movss xmm0, dword [eax+0xc]
	pxor xmm4, xmm4
	jmp CG_DrawPlayerBarHealth_110
CG_DrawPlayerBarHealth_150:
	pxor xmm4, xmm4
	jmp CG_DrawPlayerBarHealth_220
CG_DrawPlayerBarHealth_180:
	sub eax, [edi+0x46124]
	mov [edi+0x50328], eax
	test eax, eax
	jns CG_DrawPlayerBarHealth_230
	mov dword [edi+0x50328], 0x0
	mov edx, cgArray
	jmp CG_DrawPlayerBarHealth_200
CG_DrawPlayerBarHealth_210:
	pxor xmm4, xmm4
	jmp CG_DrawPlayerBarHealth_90
	nop


;CG_DrawPlayerSprintMeter(int, rectDef_s const*, Material*, float*)
CG_DrawPlayerSprintMeter:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x8c
	mov [ebp-0x44], eax
	mov [ebp-0x48], edx
	mov [ebp-0x4c], ecx
	mov ebx, [hud_fade_sprint]
	movss xmm0, dword [_float_1000_00000000]
	mulss xmm0, [ebx+0xc]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x50]
	cvttss2si edi, [ebp-0x50]
	mov edx, cgArray
	mov esi, [edx+0x504c4]
	mov eax, [hud_enable]
	cmp byte [eax+0xc], 0x0
	jz CG_DrawPlayerSprintMeter_10
	mov eax, [edx+0x502f4]
	test eax, eax
	jnz CG_DrawPlayerSprintMeter_20
CG_DrawPlayerSprintMeter_70:
	xor eax, eax
CG_DrawPlayerSprintMeter_80:
	test eax, eax
	jz CG_DrawPlayerSprintMeter_10
	pxor xmm0, xmm0
	ucomiss xmm0, [ebx+0xc]
	jnz CG_DrawPlayerSprintMeter_30
	jp CG_DrawPlayerSprintMeter_30
	movss xmm0, dword [_float_1_00000000]
	movss [ebp-0x2c], xmm0
CG_DrawPlayerSprintMeter_90:
	mov edi, cgArray
	mov eax, [edi+0x46128]
	mov [esp+0x4], eax
	lea esi, [edi+0x4613c]
	mov [esp], esi
	call PM_GetSprintLeft
	mov ebx, eax
	mov [esp], esi
	call BG_GetMaxSprintTime
	cvtsi2ss xmm0, ebx
	movss [ebp-0x40], xmm0
	cvtsi2ss xmm0, eax
	movss xmm1, dword [ebp-0x40]
	divss xmm1, xmm0
	movss [ebp-0x40], xmm1
	ucomiss xmm1, [_float_0_00000000]
	jbe CG_DrawPlayerSprintMeter_10
	mov eax, [ebp-0x48]
	movss xmm0, dword [eax]
	movss [ebp-0x3c], xmm0
	movss xmm1, dword [eax+0x4]
	movss [ebp-0x38], xmm1
	movss xmm0, dword [ebp-0x40]
	mulss xmm0, [eax+0x8]
	movss [ebp-0x34], xmm0
	movss xmm1, dword [eax+0xc]
	movss [ebp-0x30], xmm1
	mov eax, [ebp-0x4c]
	test eax, eax
	jz CG_DrawPlayerSprintMeter_40
CG_DrawPlayerSprintMeter_130:
	mov [esp], esi
	call BG_GetMaxSprintTime
	mov ebx, eax
	cmp dword [edi+0x46140], 0x7
	jz CG_DrawPlayerSprintMeter_50
	test eax, eax
	jnz CG_DrawPlayerSprintMeter_60
CG_DrawPlayerSprintMeter_50:
	mov eax, [cg_sprintMeterFullColor]
	lea edx, [eax+0xc]
	mov eax, [eax+0xc]
	mov ecx, [ebp+0x8]
	mov [ecx], eax
	mov eax, [edx+0x4]
	mov [ecx+0x4], eax
	mov eax, [edx+0x8]
	mov [ecx+0x8], eax
CG_DrawPlayerSprintMeter_120:
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov [ebp-0x28], eax
	mov eax, [edx+0x4]
	mov [ebp-0x24], eax
	mov eax, [edx+0x8]
	mov [ebp-0x20], eax
	mov eax, [edx+0xc]
	mov [ebp-0x1c], eax
	movss xmm0, dword [ebp-0x2c]
	mulss xmm0, [ebp-0x1c]
	movss [ebp-0x1c], xmm0
	mov eax, [ebp-0x4c]
	mov [esp+0x30], eax
	lea eax, [ebp-0x28]
	mov [esp+0x2c], eax
	mov dword [esp+0x28], 0x3f800000
	movss xmm0, dword [ebp-0x40]
	movss [esp+0x24], xmm0
	xor eax, eax
	mov [esp+0x20], eax
	mov [esp+0x1c], eax
	mov edx, [ebp-0x48]
	mov eax, [edx+0x14]
	mov [esp+0x18], eax
	mov eax, [edx+0x10]
	mov [esp+0x14], eax
	movss xmm0, dword [ebp-0x30]
	movss [esp+0x10], xmm0
	movss xmm1, dword [ebp-0x34]
	movss [esp+0xc], xmm1
	movss xmm0, dword [ebp-0x38]
	movss [esp+0x8], xmm0
	movss xmm1, dword [ebp-0x3c]
	movss [esp+0x4], xmm1
	mov eax, [ebp-0x44]
	shl eax, 0x6
	mov edx, [ebp-0x44]
	lea eax, [eax+edx*4]
	add eax, scrPlaceView
	mov [esp], eax
	call CL_DrawStretchPic
CG_DrawPlayerSprintMeter_10:
	add esp, 0x8c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_DrawPlayerSprintMeter_20:
	mov eax, [ebp-0x44]
	mov [esp], eax
	call CL_ShouldDisplayHud
	test al, al
	jz CG_DrawPlayerSprintMeter_70
	mov eax, 0x1
	jmp CG_DrawPlayerSprintMeter_80
CG_DrawPlayerSprintMeter_30:
	mov dword [esp+0xc], 0x2bc
	mov [esp+0x8], edi
	mov [esp+0x4], esi
	mov eax, cgArray
	mov eax, [eax+0x46128]
	mov [esp], eax
	call CG_FadeColor
	test eax, eax
	jz CG_DrawPlayerSprintMeter_10
	movss xmm1, dword [eax+0xc]
	movss [ebp-0x2c], xmm1
	ucomiss xmm1, [_float_0_00000000]
	jp CG_DrawPlayerSprintMeter_90
	jnz CG_DrawPlayerSprintMeter_90
	jmp CG_DrawPlayerSprintMeter_10
CG_DrawPlayerSprintMeter_60:
	mov [esp], esi
	call PM_IsSprinting
	test al, al
	jz CG_DrawPlayerSprintMeter_100
	mov eax, [edi+0x46128]
	mov [esp+0x4], eax
	mov [esp], esi
	call PM_GetSprintLeft
CG_DrawPlayerSprintMeter_140:
	test eax, eax
	jz CG_DrawPlayerSprintMeter_110
	cvtsi2ss xmm2, eax
	cvtsi2ss xmm0, ebx
	divss xmm2, xmm0
	mov edx, [cg_sprintMeterFullColor]
	lea ebx, [edx+0xc]
	mov eax, [cg_sprintMeterEmptyColor]
	lea ecx, [eax+0xc]
	movss xmm1, dword [eax+0xc]
	movss xmm0, dword [edx+0xc]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	mov eax, [ebp+0x8]
	movss [eax], xmm1
	movss xmm1, dword [ecx+0x4]
	movss xmm0, dword [ebx+0x4]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [eax+0x4], xmm1
	movss xmm1, dword [ecx+0x8]
	movss xmm0, dword [ebx+0x8]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [eax+0x8], xmm1
	movss xmm1, dword [ecx+0xc]
	movss xmm0, dword [ebx+0xc]
	subss xmm0, xmm1
	mulss xmm2, xmm0
	addss xmm1, xmm2
	movss [eax+0xc], xmm1
	jmp CG_DrawPlayerSprintMeter_120
CG_DrawPlayerSprintMeter_40:
	mov eax, cgMedia
	mov eax, [eax]
	mov [ebp-0x4c], eax
	jmp CG_DrawPlayerSprintMeter_130
CG_DrawPlayerSprintMeter_100:
	mov [esp], esi
	call PM_GetSprintLeftLastTime
	jmp CG_DrawPlayerSprintMeter_140
CG_DrawPlayerSprintMeter_110:
	mov eax, [cg_sprintMeterDisabledColor]
	lea edx, [eax+0xc]
	mov eax, [eax+0xc]
	mov ecx, [ebp+0x8]
	mov [ecx], eax
	mov eax, [edx+0x4]
	mov [ecx+0x4], eax
	mov eax, [edx+0x8]
	mov [ecx+0x8], eax
	mov eax, [edx+0xc]
	mov [ecx+0xc], eax
	jmp CG_DrawPlayerSprintMeter_120
	nop


;CG_DrawPlayerStance(int, rectDef_s const*, float const*, Font_s*, float, int)
CG_DrawPlayerStance:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x8c
	mov [ebp-0x48], eax
	mov edi, edx
	mov [ebp-0x4c], ecx
	movss [ebp-0x50], xmm0
	mov ebx, [hud_fade_stance]
	movss xmm0, dword [_float_1000_00000000]
	mulss xmm0, [ebx+0xc]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x54]
	cvttss2si eax, [ebp-0x54]
	mov [ebp-0x34], eax
	mov edx, cgArray
	mov esi, [edx+0x504c0]
	mov eax, [hud_enable]
	cmp byte [eax+0xc], 0x0
	jz CG_DrawPlayerStance_10
	mov eax, [edx+0x502f4]
	test eax, eax
	jnz CG_DrawPlayerStance_20
CG_DrawPlayerStance_100:
	xor eax, eax
CG_DrawPlayerStance_110:
	test eax, eax
	jz CG_DrawPlayerStance_10
	pxor xmm0, xmm0
	ucomiss xmm0, [ebx+0xc]
	jnz CG_DrawPlayerStance_30
	jp CG_DrawPlayerStance_30
	movss xmm0, dword [_float_1_00000000]
	movss [ebp-0x3c], xmm0
CG_DrawPlayerStance_180:
	mov ecx, cg_hudStanceHintPrints
	mov eax, [ecx]
	cmp byte [eax+0xc], 0x0
	jnz CG_DrawPlayerStance_40
	mov edx, cgArray
	mov dword [edx+0x50360], 0x0
CG_DrawPlayerStance_120:
	mov eax, [edx+0x46148]
	and eax, 0x3
	mov [edx+0x5035c], eax
	mov eax, compassSize
	mov eax, [eax]
	movss xmm1, dword [eax+0xc]
	subss xmm1, xmm0
	movss [ebp-0x44], xmm1
	mov eax, cgsArray
	mulss xmm1, [eax+0x13b8]
	mulss xmm1, [_float_0_69999999]
	addss xmm1, [edi]
	movss [ebp-0x44], xmm1
	movss xmm0, dword [edi+0x4]
	movss [ebp-0x40], xmm0
	mov ebx, [ebp-0x4c]
	mov eax, [ebx]
	mov [ebp-0x28], eax
	mov eax, [ebx+0x4]
	mov [ebp-0x24], eax
	mov eax, [ebx+0x8]
	mov [ebp-0x20], eax
	test byte [edx+0x46149], 0x10
	jz CG_DrawPlayerStance_50
	mov eax, [edx+0x46128]
	cmp [edx+0x50358], eax
	jge CG_DrawPlayerStance_50
	add eax, 0x5dc
	mov [edx+0x50358], eax
	cmp eax, [edx+0x46128]
	jg CG_DrawPlayerStance_60
CG_DrawPlayerStance_130:
	mov eax, [ecx]
	cmp byte [eax+0xc], 0x0
	jz CG_DrawPlayerStance_70
	mov eax, [edx+0x50360]
	add eax, 0xbb8
	cmp eax, [edx+0x46128]
	jg CG_DrawPlayerStance_80
CG_DrawPlayerStance_70:
	movss xmm0, dword [ebp-0x3c]
	mov ecx, [ebp-0x4c]
	mulss xmm0, [ecx+0xc]
	movss [ebp-0x1c], xmm0
	movss xmm0, dword [edi+0x8]
	movss [ebp-0x30], xmm0
	movss xmm1, dword [edi+0xc]
	movss [ebp-0x2c], xmm1
	mov eax, [edx+0x5035c]
	test al, 0x1
	jz CG_DrawPlayerStance_90
	mov eax, cgMedia
	mov edx, [eax+0x240]
CG_DrawPlayerStance_160:
	mov eax, [ebp-0x48]
	shl eax, 0x6
	mov ecx, [ebp-0x48]
	lea esi, [eax+ecx*4]
	add esi, scrPlaceView
	mov [esp+0x20], edx
	lea ebx, [ebp-0x28]
	mov [esp+0x1c], ebx
	mov eax, [edi+0x14]
	mov [esp+0x18], eax
	mov eax, [edi+0x10]
	mov [esp+0x14], eax
	movss xmm0, dword [ebp-0x2c]
	movss [esp+0x10], xmm0
	movss xmm1, dword [ebp-0x30]
	movss [esp+0xc], xmm1
	movss xmm0, dword [ebp-0x40]
	movss [esp+0x8], xmm0
	movss xmm1, dword [ebp-0x44]
	movss [esp+0x4], xmm1
	mov [esp], esi
	call UI_DrawHandlePic
	mov ebx, cgArray
	mov eax, [ebx+0x50360]
	add eax, 0x3e8
	cmp eax, [ebx+0x46128]
	jle CG_DrawPlayerStance_10
	lea eax, [ebp-0x28]
	mov [esp+0x4], eax
	mov eax, cg_hudStanceFlash
	mov eax, [eax]
	mov [esp], eax
	call Cvar_GetUnpackedColor
	mov eax, [ebx+0x50360]
	sub eax, [ebx+0x46128]
	add eax, 0x3e8
	cvtsi2ss xmm0, eax
	divss xmm0, dword [_float_1000_00000000]
	mulss xmm0, [_float_0_80000001]
	movss xmm1, dword [ebp-0x3c]
	minss xmm1, xmm0
	movss [ebp-0x1c], xmm1
	mov eax, cgMedia
	mov eax, [eax+0x244]
	mov [esp+0x20], eax
	lea eax, [ebp-0x28]
	mov [esp+0x1c], eax
	mov eax, [edi+0x14]
	mov [esp+0x18], eax
	mov eax, [edi+0x10]
	mov [esp+0x14], eax
	movss xmm0, dword [ebp-0x2c]
	movss [esp+0x10], xmm0
	movss xmm1, dword [ebp-0x30]
	movss [esp+0xc], xmm1
	movss xmm0, dword [ebp-0x40]
	movss [esp+0x8], xmm0
	movss xmm1, dword [ebp-0x44]
	movss [esp+0x4], xmm1
	mov [esp], esi
	call UI_DrawHandlePic
CG_DrawPlayerStance_10:
	add esp, 0x8c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_DrawPlayerStance_20:
	mov edx, [ebp-0x48]
	mov [esp], edx
	call CL_ShouldDisplayHud
	test al, al
	jz CG_DrawPlayerStance_100
	mov eax, 0x1
	jmp CG_DrawPlayerStance_110
CG_DrawPlayerStance_40:
	mov edx, cgArray
	mov eax, [edx+0x46148]
	and eax, 0x3
	cmp [edx+0x5035c], eax
	jz CG_DrawPlayerStance_120
	mov eax, [edx+0x46128]
	mov [edx+0x50360], eax
	jmp CG_DrawPlayerStance_120
CG_DrawPlayerStance_50:
	mov eax, [edx+0x50358]
	cmp eax, [edx+0x46128]
	jle CG_DrawPlayerStance_130
CG_DrawPlayerStance_60:
	mov eax, [edx+0x46224]
	mov [esp], eax
	call BG_WeaponBlocksProne
	test al, al
	jz CG_DrawPlayerStance_140
	mov dword [esp], _cstring_cgame_prone_bloc
	call UI_SafeTranslateString
	mov [ebp-0x38], eax
	mov edx, eax
CG_DrawPlayerStance_190:
	movss xmm0, dword [ebp-0x50]
	movss [esp+0xc], xmm0
	mov eax, [ebp+0x8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov [esp], edx
	call UI_TextWidth
	mov esi, eax
	mov ebx, cgArray
	mov eax, [ebx+0x50358]
	sub eax, [ebx+0x46128]
	cvtsi2ss xmm0, eax
	divss xmm0, dword [_float_1500_00000000]
	mulss xmm0, [_float_540_00000000]
	cvtss2sd xmm0, xmm0
	mulsd xmm0, [_double_0_01745329]
	movsd [esp], xmm0
	call sin
	fstp qword [ebp-0x60]
	cvtsd2ss xmm0, [ebp-0x60]
	andps xmm0, [_data16_7fffffff]
	movss [ebp-0x1c], xmm0
	mov ecx, [ebp+0xc]
	mov [esp+0x28], ecx
	lea eax, [ebp-0x28]
	mov [esp+0x24], eax
	movss xmm0, dword [ebp-0x50]
	movss [esp+0x20], xmm0
	mov dword [esp+0x1c], 0x3
	mov dword [esp+0x18], 0x7
	mov eax, cg_hudProneY
	mov eax, [eax]
	mov eax, [eax+0xc]
	mov [esp+0x14], eax
	cvtsi2ss xmm0, esi
	mulss xmm0, [_float_0_50000000]
	xorps xmm0, [_data16_80000000]
	movss [esp+0x10], xmm0
	mov eax, [ebp+0x8]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x7fffffff
	mov edx, [ebp-0x38]
	mov [esp+0x4], edx
	mov eax, [ebp-0x48]
	shl eax, 0x6
	mov ecx, [ebp-0x48]
	lea eax, [eax+ecx*4]
	add eax, scrPlaceView
	mov [esp], eax
	call UI_DrawText
	mov edx, ebx
	mov ecx, cg_hudStanceHintPrints
	jmp CG_DrawPlayerStance_130
CG_DrawPlayerStance_90:
	test al, 0x2
	jz CG_DrawPlayerStance_150
	mov eax, cgMedia
	mov edx, [eax+0x23c]
	jmp CG_DrawPlayerStance_160
CG_DrawPlayerStance_30:
	mov dword [esp+0xc], 0x2bc
	mov eax, [ebp-0x34]
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov eax, cgArray
	mov eax, [eax+0x46128]
	mov [esp], eax
	call CG_FadeColor
	test eax, eax
	jz CG_DrawPlayerStance_10
	movss xmm0, dword [eax+0xc]
	movss [ebp-0x3c], xmm0
	ucomiss xmm0, [_float_0_00000000]
	jp CG_DrawPlayerStance_170
	jz CG_DrawPlayerStance_10
CG_DrawPlayerStance_170:
	movss xmm0, dword [_float_1_00000000]
	jmp CG_DrawPlayerStance_180
CG_DrawPlayerStance_150:
	mov eax, cgMedia
	mov edx, [eax+0x238]
	jmp CG_DrawPlayerStance_160
CG_DrawPlayerStance_80:
	mov ebx, [ebp+0xc]
	mov [esp+0x1c], ebx
	movss xmm0, dword [ebp-0x50]
	movss [esp+0x18], xmm0
	mov eax, [ebp+0x8]
	mov [esp+0x14], eax
	movss xmm0, dword [ebp-0x3c]
	movss [esp+0x10], xmm0
	mov eax, [ebp-0x4c]
	mov [esp+0xc], eax
	movss xmm0, dword [ebp-0x44]
	movss [esp+0x8], xmm0
	mov [esp+0x4], edi
	mov eax, [ebp-0x48]
	mov [esp], eax
	call CG_DrawStanceHintPrints
	mov edx, cgArray
	jmp CG_DrawPlayerStance_70
CG_DrawPlayerStance_140:
	mov dword [esp], _cstring_cgame_prone_bloc1
	call UI_SafeTranslateString
	mov [ebp-0x38], eax
	mov edx, eax
	jmp CG_DrawPlayerStance_190


;CG_OwnerDraw(int, rectDef_s, float, float, float, float, int, int, float, float, int, int, int, float, Font_s*, float, float*, Material*, int, int)
CG_OwnerDraw:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2ec
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0x44]
	mov [esp], esi
	call CG_GetPredictedPlayerState
	cmp dword [eax+0xe4], 0x1
	sbb edx, edx
	add edx, 0x3
	mov eax, [ebp+0x24]
	mov [ebp-0x50], eax
	mov eax, [ebp+0x28]
	mov [ebp-0x4c], eax
	mov eax, [ebp+0x2c]
	mov [ebp-0x48], eax
	mov eax, [ebp+0x30]
	mov [ebp-0x44], eax
	mov eax, [ebp+0x34]
	mov [ebp-0x40], eax
	mov eax, [ebp+0x38]
	mov [ebp-0x3c], eax
	lea eax, [ebx-0x5]
	cmp eax, 0xbf
	ja CG_OwnerDraw_10
	jmp dword [eax*4+CG_OwnerDraw_jumptab_0]
CG_OwnerDraw_10:
	mov eax, cgArray
	mov eax, [eax+0x5052c]
	test eax, eax
	jnz CG_OwnerDraw_20
	lea eax, [ebx-0xb4]
	cmp eax, 0x8
	jbe CG_OwnerDraw_30
CG_OwnerDraw_20:
	add esp, 0x2ec
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_OwnerDraw_30:
	jmp dword [eax*4+CG_OwnerDraw_jumptab_1]
CG_OwnerDraw_1430:
	mov edx, [ebp+0x5c]
	mov [esp+0x14], edx
	mov ecx, [ebp+0x60]
	mov [esp+0x10], ecx
	lea eax, [ebp-0x50]
	mov [esp+0xc], eax
	lea eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1
	mov [esp], esi
	call CG_CompassDrawPlayerBack
	jmp CG_OwnerDraw_20
CG_OwnerDraw_1440:
	mov eax, [ebp+0x5c]
	mov [esp+0x14], eax
	mov edx, [ebp+0x60]
	mov [esp+0x10], edx
	lea eax, [ebp-0x50]
	mov [esp+0xc], eax
	lea eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1
	mov [esp], esi
	call CG_CompassDrawPlayerMap
	jmp CG_OwnerDraw_20
CG_OwnerDraw_1450:
	mov edx, [ebp+0x5c]
	mov [esp+0x14], edx
	mov ecx, [ebp+0x60]
	mov [esp+0x10], ecx
	lea eax, [ebp-0x50]
	mov [esp+0xc], eax
	lea eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1
	mov [esp], esi
	call CG_CompassDrawPlayerPointers_MP
	jmp CG_OwnerDraw_20
CG_OwnerDraw_1460:
	mov ecx, [ebp+0x5c]
	mov [esp+0x14], ecx
	mov eax, [ebp+0x60]
	mov [esp+0x10], eax
	lea eax, [ebp-0x50]
	mov [esp+0xc], eax
	lea eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1
	mov [esp], esi
	call CG_CompassDrawPlayer
	jmp CG_OwnerDraw_20
CG_OwnerDraw_1470:
	mov eax, [ebp+0x5c]
	mov [esp+0x10], eax
	lea eax, [ebp-0x50]
	mov [esp+0xc], eax
	lea eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1
	mov [esp], esi
	call CG_CompassDrawFriendlies
	jmp CG_OwnerDraw_20
CG_OwnerDraw_1480:
	mov ecx, [ebp+0x5c]
	mov [esp+0x14], ecx
	mov eax, [ebp+0x60]
	mov [esp+0x10], eax
	lea eax, [ebp-0x50]
	mov [esp+0xc], eax
	lea eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1
	mov [esp], esi
	call CG_CompassDrawPlayerMapLocationSelector
	jmp CG_OwnerDraw_20
CG_OwnerDraw_1490:
	mov edx, [ebp+0x5c]
	mov [esp+0x14], edx
	mov ecx, [ebp+0x60]
	mov [esp+0x10], ecx
	lea eax, [ebp-0x50]
	mov [esp+0xc], eax
	lea eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1
	mov [esp], esi
	call CG_CompassDrawBorder
	jmp CG_OwnerDraw_20
CG_OwnerDraw_1500:
	mov edx, [ebp+0x5c]
	mov [esp+0x10], edx
	lea eax, [ebp-0x50]
	mov [esp+0xc], eax
	lea eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1
	mov [esp], esi
	call CG_CompassDrawEnemies
	jmp CG_OwnerDraw_20
CG_OwnerDraw_980:
	mov ebx, cgArray
	mov eax, [ebx+0x46224]
	test eax, eax
	jz CG_OwnerDraw_20
	mov eax, [ebp+0x5c]
	add eax, 0xc
	mov [ebp-0x27c], eax
	mov edi, [hud_fade_ammodisplay]
	movss xmm0, dword [_float_1000_00000000]
	mulss xmm0, [edi+0xc]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x290]
	cvttss2si edx, [ebp-0x290]
	mov [ebp-0x26c], edx
	mov ecx, [ebx+0x504bc]
	mov [ebp-0x268], ecx
	mov eax, [hud_enable]
	cmp byte [eax+0xc], 0x0
	jz CG_OwnerDraw_40
	mov eax, [ebx+0x502f4]
	test eax, eax
	jnz CG_OwnerDraw_50
CG_OwnerDraw_560:
	xor eax, eax
CG_OwnerDraw_570:
	test eax, eax
	jz CG_OwnerDraw_40
	pxor xmm4, xmm4
	ucomiss xmm4, [edi+0xc]
	jnz CG_OwnerDraw_60
	jp CG_OwnerDraw_60
	movss xmm0, dword [_float_1_00000000]
CG_OwnerDraw_630:
	mov ecx, [ebp-0x27c]
	movss [ecx], xmm0
	ucomiss xmm0, xmm4
	jp CG_OwnerDraw_70
	jz CG_OwnerDraw_20
CG_OwnerDraw_70:
	mov eax, cgArray
	mov ecx, [eax+0x24]
	mov eax, [ecx+0xe8]
	lea edx, [eax*4]
	shl eax, 0x5
	sub eax, edx
	mov edx, eax
	shl edx, 0x4
	lea edi, [eax+edx]
	add edi, cg_entitiesArray
	test byte [ecx+0x20], 0x4
	jnz CG_OwnerDraw_80
CG_OwnerDraw_710:
	mov ebx, [edi+0x190]
CG_OwnerDraw_720:
	test ebx, ebx
	jz CG_OwnerDraw_20
	mov [esp+0x4], ebx
	mov edi, cgArray
	lea eax, [edi+0x4613c]
	mov [esp], eax
	call BG_GetTotalAmmoReserve
	mov [ebp-0x270], eax
	mov [esp], ebx
	call BG_WeaponIsClipOnly
	test eax, eax
	jz CG_OwnerDraw_90
	mov eax, 0xffffffff
CG_OwnerDraw_870:
	mov byte [ebp-0x272], 0x0
CG_OwnerDraw_890:
	mov ebx, [ebp-0x270]
	test ebx, ebx
	js CG_OwnerDraw_100
	cmp dword [ebp-0x270], 0x3e7
	jle CG_OwnerDraw_110
	mov dword [ebp-0x270], 0x3e7
CG_OwnerDraw_110:
	mov byte [ebp-0x273], 0x1
CG_OwnerDraw_940:
	cmp byte [ebp-0x272], 0x0
	jnz CG_OwnerDraw_120
	mov byte [ebp-0x271], 0x0
CG_OwnerDraw_770:
	cmp byte [ebp-0x273], 0x0
	jnz CG_OwnerDraw_130
	xor ecx, ecx
CG_OwnerDraw_840:
	cmp byte [ebp-0x271], 0x0
	jz CG_OwnerDraw_140
	mov ebx, cgArray
	mov eax, [ebx+0x50318]
	mov edx, [ebx+0x46128]
	cmp eax, edx
	jg CG_OwnerDraw_150
	add eax, 0x320
	cmp edx, eax
	jle CG_OwnerDraw_160
CG_OwnerDraw_150:
	mov [ebx+0x50318], edx
CG_OwnerDraw_160:
	mov dword [ebp-0x38], 0x3f63d70a
	mov dword [ebp-0x34], 0x3e3851ec
	mov dword [ebp-0x30], 0x3c23d70a
	mov eax, [ebx+0x50318]
	sub eax, [ebx+0x46128]
	add eax, 0x320
	cvtsi2ss xmm0, eax
	divss xmm0, dword [_float_800_00000000]
	movss [ebp-0x2c], xmm0
	mov eax, [ebp-0x27c]
	movss xmm1, dword [eax]
	ucomiss xmm0, xmm1
	jbe CG_OwnerDraw_170
	movss [ebp-0x2c], xmm1
CG_OwnerDraw_170:
	test cl, cl
	jz CG_OwnerDraw_180
	mov dword [ebp-0x28], 0x3f63d70a
	mov dword [ebp-0x24], 0x3e3851ec
	mov dword [ebp-0x20], 0x3c23d70a
CG_OwnerDraw_730:
	movss [ebp-0x1c], xmm1
	mov eax, esi
	shl eax, 0x6
	lea edi, [eax+esi*4]
	add edi, scrPlaceView
	cmp byte [ebp-0x272], 0x0
	jz CG_OwnerDraw_190
	cmp byte [ebp-0x273], 0x0
	jz CG_OwnerDraw_200
	mov eax, [ebp+0x64]
	mov [esp+0x28], eax
	mov edx, [ebp+0x5c]
	mov [esp+0x24], edx
	movss xmm0, dword [ebp+0x58]
	movss [esp+0x20], xmm0
	mov eax, [ebp-0x3c]
	mov [esp+0x1c], eax
	mov eax, [ebp-0x40]
	mov [esp+0x18], eax
	mov eax, [ebp-0x4c]
	mov [esp+0x14], eax
	mov eax, [ebp-0x50]
	mov [esp+0x10], eax
	mov eax, [ebp+0x54]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x7fffffff
	lea ebx, [ebp-0x150]
	mov [esp+0x4], ebx
	mov [esp], edi
	call UI_DrawText
	cmp byte [ebp-0x271], 0x0
	jnz CG_OwnerDraw_210
CG_OwnerDraw_950:
	movss xmm1, dword [ebp-0x50]
	addss xmm1, [ebp-0x48]
	movss xmm0, dword [ebp+0x58]
	movss [esp+0xc], xmm0
	mov eax, [ebp+0x54]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	lea ebx, [ebp-0x250]
	mov [esp], ebx
	movss [ebp-0x2a8], xmm1
	call UI_TextWidth
	mov edx, [ebp+0x64]
	mov [esp+0x28], edx
	lea esi, [ebp-0x28]
	mov [esp+0x24], esi
	movss xmm0, dword [ebp+0x58]
	movss [esp+0x20], xmm0
	mov edx, [ebp-0x3c]
	mov [esp+0x1c], edx
	mov edx, [ebp-0x40]
	mov [esp+0x18], edx
	mov edx, [ebp-0x4c]
	mov [esp+0x14], edx
	cvtsi2ss xmm0, eax
	movss xmm1, dword [ebp-0x2a8]
	subss xmm1, xmm0
	movss [esp+0x10], xmm1
	mov eax, [ebp+0x54]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x7fffffff
	mov [esp+0x4], ebx
	mov [esp], edi
	call UI_DrawText
	movss xmm2, dword [ebp-0x50]
	movss xmm1, dword [ebp-0x48]
	movss xmm0, dword [ebp+0x58]
	movss [esp+0xc], xmm0
	mov eax, [ebp+0x54]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_
	movss [ebp-0x2a8], xmm1
	movss [ebp-0x2b8], xmm2
	call UI_TextWidth
	mov edx, [ebp+0x64]
	mov [esp+0x28], edx
	mov [esp+0x24], esi
	movss xmm0, dword [ebp+0x58]
	movss [esp+0x20], xmm0
	mov edx, [ebp-0x3c]
	mov [esp+0x1c], edx
	mov edx, [ebp-0x40]
	mov [esp+0x18], edx
	mov edx, [ebp-0x4c]
	mov [esp+0x14], edx
	cvtsi2ss xmm0, eax
	movss xmm1, dword [ebp-0x2a8]
	subss xmm1, xmm0
	mulss xmm1, [_float_0_50000000]
	movss xmm2, dword [ebp-0x2b8]
	addss xmm2, xmm1
	subss xmm2, [_float_5_00000000]
	movss [esp+0x10], xmm2
	mov eax, [ebp+0x54]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x7fffffff
	mov dword [esp+0x4], _cstring_
	mov [esp], edi
	call UI_DrawText
	jmp CG_OwnerDraw_20
CG_OwnerDraw_990:
	mov ebx, cgArray
	mov eax, [ebx+0x46224]
	test eax, eax
	jz CG_OwnerDraw_20
	mov edi, [hud_fade_ammodisplay]
	movss xmm0, dword [_float_1000_00000000]
	mulss xmm0, [edi+0xc]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x28c]
	cvttss2si eax, [ebp-0x28c]
	mov [ebp-0x288], eax
	mov edx, [ebx+0x504bc]
	mov [ebp-0x284], edx
	mov eax, [hud_enable]
	cmp byte [eax+0xc], 0x0
	jz CG_OwnerDraw_220
	mov eax, [ebx+0x502f4]
	test eax, eax
	jnz CG_OwnerDraw_230
CG_OwnerDraw_540:
	xor eax, eax
CG_OwnerDraw_550:
	test eax, eax
	jz CG_OwnerDraw_220
	pxor xmm4, xmm4
	ucomiss xmm4, [edi+0xc]
	jnz CG_OwnerDraw_240
	jp CG_OwnerDraw_240
	movss xmm0, dword [_float_1_00000000]
CG_OwnerDraw_620:
	movss [ebp-0x1c], xmm0
	ucomiss xmm0, xmm4
	jp CG_OwnerDraw_250
	jz CG_OwnerDraw_20
CG_OwnerDraw_250:
	mov edx, cgArray
	mov ebx, [edx+0x5036c]
	call BG_GetNumWeapons
	cmp ebx, eax
	jae CG_OwnerDraw_260
	mov ecx, cgArray
	mov edi, [ecx+0x5036c]
	mov edx, edi
	sar edx, 0x5
	mov ecx, edi
	and ecx, 0x1f
	mov eax, 0x1
	shl eax, cl
	mov ecx, cgArray
	test [ecx+edx*4+0x46698], eax
	jz CG_OwnerDraw_270
CG_OwnerDraw_680:
	test edi, edi
	jnz CG_OwnerDraw_280
CG_OwnerDraw_590:
	xor eax, eax
CG_OwnerDraw_600:
	test al, al
	jz CG_OwnerDraw_290
	mov dword [ebp-0x28], 0x3f63d70a
	mov dword [ebp-0x24], 0x3e3851ec
	mov dword [ebp-0x20], 0x3c23d70a
CG_OwnerDraw_670:
	mov ecx, [ebp+0x60]
	mov [esp+0x20], ecx
	lea eax, [ebp-0x28]
	mov [esp+0x1c], eax
	mov eax, [ebp-0x3c]
	mov [esp+0x18], eax
	mov eax, [ebp-0x40]
	mov [esp+0x14], eax
	mov eax, [ebp-0x44]
	mov [esp+0x10], eax
	mov eax, [ebp-0x48]
	mov [esp+0xc], eax
	mov eax, [ebp-0x4c]
	mov [esp+0x8], eax
	mov eax, [ebp-0x50]
	mov [esp+0x4], eax
	jmp CG_OwnerDraw_300
CG_OwnerDraw_1010:
	lea edx, [ebp-0x50]
	mov ecx, [ebp+0x64]
	mov [esp], ecx
	movss xmm0, dword [ebp+0x58]
	mov ecx, [ebp+0x54]
	mov eax, esi
	call CG_DrawHoldBreathHint
	jmp CG_OwnerDraw_20
CG_OwnerDraw_1020:
	lea edx, [ebp-0x50]
	mov eax, [ebp+0x64]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x5c]
	mov [esp], ecx
	movss xmm0, dword [ebp+0x58]
	mov ecx, [ebp+0x54]
	mov eax, esi
	call CG_DrawCursorhint
	jmp CG_OwnerDraw_20
CG_OwnerDraw_1000:
	lea edx, [ebp-0x50]
	mov eax, [ebp+0x64]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x54]
	mov [esp], ecx
	movss xmm0, dword [ebp+0x58]
	mov ecx, [ebp+0x5c]
	mov eax, esi
	call CG_DrawPlayerStance
	jmp CG_OwnerDraw_20
CG_OwnerDraw_1030:
	lea edx, [ebp-0x50]
	mov ecx, [ebp+0x5c]
	mov [esp], ecx
	mov ecx, [ebp+0x60]
	mov eax, esi
	call CG_DrawPlayerBarHealth
	jmp CG_OwnerDraw_20
CG_OwnerDraw_1040:
	lea edx, [ebp-0x50]
	mov eax, [ebp+0x64]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x5c]
	mov [esp], ecx
	movss xmm0, dword [ebp+0x58]
	mov ecx, [ebp+0x54]
	mov eax, esi
	call CG_DrawMantleHint
	jmp CG_OwnerDraw_20
CG_OwnerDraw_1050:
	mov dword [esp+0xc], 0x2bc
	mov dword [esp+0x8], 0x708
	mov edi, cgArray
	mov eax, [edi+0x50370]
	mov [esp+0x4], eax
	mov eax, [edi+0x46128]
	mov [esp], eax
	call CG_FadeColor
	test eax, eax
	jz CG_OwnerDraw_20
	cmp byte [edi+0x4614c], 0x0
	js CG_OwnerDraw_20
	mov eax, [eax+0xc]
	mov [ebp-0x1c], eax
	mov edx, [ebp+0x5c]
	mov eax, [edx]
	mov [ebp-0x28], eax
	mov eax, [edx+0x4]
	mov [ebp-0x24], eax
	mov eax, [edx+0x8]
	mov [ebp-0x20], eax
	mov ebx, [edi+0x5036c]
	call BG_GetNumWeapons
	cmp ebx, eax
	jae CG_OwnerDraw_310
	mov ebx, [edi+0x5036c]
	mov edx, ebx
	sar edx, 0x5
	mov ecx, ebx
	and ecx, 0x1f
	mov eax, 0x1
	shl eax, cl
	test [edi+edx*4+0x46698], eax
	jz CG_OwnerDraw_310
CG_OwnerDraw_650:
	test ebx, ebx
	jz CG_OwnerDraw_20
	mov eax, ebx
	shl eax, 0x6
	lea edi, [eax+ebx*4]
	add edi, cg_weaponsArray
	mov [esp], ebx
	call BG_GetWeaponDef
	mov eax, [eax+0xd4]
	cmp byte [eax], 0x0
	jz CG_OwnerDraw_320
	mov eax, [edi+0x3c]
	mov [esp+0x8], eax
	mov eax, [edi+0x38]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_s__s
	call va
	mov ebx, eax
CG_OwnerDraw_700:
	movss xmm1, dword [ebp-0x50]
	addss xmm1, [ebp-0x48]
	movss xmm0, dword [ebp+0x58]
	movss [esp+0xc], xmm0
	mov eax, [ebp+0x54]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	movss [ebp-0x2a8], xmm1
	call UI_TextWidth
	mov edx, [ebp+0x64]
	mov [esp+0x28], edx
	lea edx, [ebp-0x28]
	mov [esp+0x24], edx
	movss xmm0, dword [ebp+0x58]
	movss [esp+0x20], xmm0
	mov edx, [ebp-0x3c]
	mov [esp+0x1c], edx
	mov edx, [ebp-0x40]
	mov [esp+0x18], edx
	mov edx, [ebp-0x4c]
	mov [esp+0x14], edx
	cvtsi2ss xmm0, eax
	movss xmm1, dword [ebp-0x2a8]
	subss xmm1, xmm0
	subss xmm1, [_float_28_00000000]
	movss [esp+0x10], xmm1
	mov eax, [ebp+0x54]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x7fffffff
	mov [esp+0x4], ebx
	mov eax, esi
	shl eax, 0x6
	lea eax, [eax+esi*4]
	add eax, scrPlaceView
	mov [esp], eax
	call UI_DrawText
	jmp CG_OwnerDraw_20
CG_OwnerDraw_1060:
	mov edx, cgArray
	mov edi, [edx+0x50370]
	mov ebx, [hud_fade_ammodisplay]
	mov eax, [hud_enable]
	cmp byte [eax+0xc], 0x0
	jz CG_OwnerDraw_330
	mov ecx, [edx+0x502f4]
	test ecx, ecx
	jnz CG_OwnerDraw_340
CG_OwnerDraw_520:
	xor eax, eax
CG_OwnerDraw_530:
	test eax, eax
	jz CG_OwnerDraw_330
	pxor xmm4, xmm4
	ucomiss xmm4, [ebx+0xc]
	jnz CG_OwnerDraw_350
	jp CG_OwnerDraw_350
	movss xmm0, dword [_float_1_00000000]
CG_OwnerDraw_610:
	movss [ebp-0x1c], xmm0
	ucomiss xmm0, xmm4
	jp CG_OwnerDraw_360
	jz CG_OwnerDraw_20
CG_OwnerDraw_360:
	mov edx, [ebp+0x5c]
	mov eax, [edx]
	mov [ebp-0x28], eax
	mov eax, [edx+0x4]
	mov [ebp-0x24], eax
	mov eax, [edx+0x8]
	mov [ebp-0x20], eax
	mov edi, cgArray
	mov ebx, [edi+0x5036c]
	call BG_GetNumWeapons
	cmp ebx, eax
	jae CG_OwnerDraw_370
	mov ebx, [edi+0x5036c]
	mov edx, ebx
	sar edx, 0x5
	mov ecx, ebx
	and ecx, 0x1f
	mov eax, 0x1
	shl eax, cl
	test [edi+edx*4+0x46698], eax
	jz CG_OwnerDraw_370
CG_OwnerDraw_640:
	test ebx, ebx
	jz CG_OwnerDraw_20
	mov eax, ebx
	shl eax, 0x6
	lea edi, [eax+ebx*4]
	add edi, cg_weaponsArray
	mov [esp], ebx
	call BG_GetWeaponDef
	mov eax, [eax+0xd4]
	cmp byte [eax], 0x0
	jz CG_OwnerDraw_380
	mov eax, [edi+0x3c]
	mov [esp+0x8], eax
	mov eax, [edi+0x38]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_s__s
	call va
CG_OwnerDraw_690:
	movss xmm0, dword [ebp+0x58]
	movss [esp+0xc], xmm0
	mov edx, [ebp+0x54]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call UI_TextWidth
	cvtsi2ss xmm1, eax
	addss xmm1, [_float_28_00000000]
	addss xmm1, [_float_8_00000000]
	mov ecx, [ebp+0x60]
	mov [esp+0x20], ecx
	lea eax, [ebp-0x28]
	mov [esp+0x1c], eax
	mov eax, [ebp-0x3c]
	mov [esp+0x18], eax
	mov eax, [ebp-0x40]
	mov [esp+0x14], eax
	mov eax, [ebp-0x44]
	mov [esp+0x10], eax
	movss [esp+0xc], xmm1
	mov eax, [ebp-0x4c]
	mov [esp+0x8], eax
	movss xmm0, dword [ebp-0x50]
	addss xmm0, [ebp-0x48]
	subss xmm0, xmm1
	movss [esp+0x4], xmm0
CG_OwnerDraw_300:
	mov eax, esi
	shl eax, 0x6
	lea eax, [eax+esi*4]
	add eax, scrPlaceView
	mov [esp], eax
	call UI_DrawHandlePic
	jmp CG_OwnerDraw_20
CG_OwnerDraw_1070:
	mov eax, [ebp+0x64]
	mov [esp+0x14], eax
	mov edx, [ebp+0x5c]
	mov [esp+0x10], edx
	movss xmm0, dword [ebp+0x58]
	movss [esp+0xc], xmm0
	mov eax, [ebp+0x54]
	mov [esp+0x8], eax
	lea eax, [ebp-0x50]
	mov [esp+0x4], eax
	mov [esp], esi
	call CG_DrawCenterString
	jmp CG_OwnerDraw_20
CG_OwnerDraw_1090:
	mov dword [esp+0x14], 0x1
	mov ecx, [ebp+0x60]
	mov [esp+0x10], ecx
	mov eax, [ebp+0x5c]
	mov [esp+0xc], eax
CG_OwnerDraw_390:
	movss xmm0, dword [ebp+0x58]
	movss [esp+0x8], xmm0
	lea eax, [ebp-0x50]
	mov [esp+0x4], eax
	mov [esp], esi
	call CG_DrawOffHandIcon
	jmp CG_OwnerDraw_20
CG_OwnerDraw_1100:
	mov [esp+0x14], edx
	mov eax, [ebp+0x60]
	mov [esp+0x10], eax
	mov edx, [ebp+0x5c]
	mov [esp+0xc], edx
	jmp CG_OwnerDraw_390
CG_OwnerDraw_1080:
	lea edx, [ebp-0x50]
	mov eax, [ebp+0x5c]
	mov [esp], eax
	mov ecx, [ebp+0x60]
	mov eax, esi
	call CG_DrawPlayerBarHealthBack
	jmp CG_OwnerDraw_20
CG_OwnerDraw_1110:
	mov dword [esp+0x18], 0x1
CG_OwnerDraw_400:
	mov eax, [ebp+0x64]
	mov [esp+0x14], eax
	mov edx, [ebp+0x5c]
	mov [esp+0x10], edx
	movss xmm0, dword [ebp+0x58]
	movss [esp+0xc], xmm0
	mov eax, [ebp+0x54]
	mov [esp+0x8], eax
	lea eax, [ebp-0x50]
	mov [esp+0x4], eax
	mov [esp], esi
	call CG_DrawOffHandAmmo
	jmp CG_OwnerDraw_20
CG_OwnerDraw_1120:
	mov [esp+0x18], edx
	jmp CG_OwnerDraw_400
CG_OwnerDraw_1130:
	mov dword [esp+0x18], 0x1
CG_OwnerDraw_410:
	mov edx, [ebp+0x64]
	mov [esp+0x14], edx
	mov ecx, [ebp+0x5c]
	mov [esp+0x10], ecx
	movss xmm0, dword [ebp+0x58]
	movss [esp+0xc], xmm0
	mov eax, [ebp+0x54]
	mov [esp+0x8], eax
	lea eax, [ebp-0x50]
	mov [esp+0x4], eax
	mov [esp], esi
	call CG_DrawOffHandName
	jmp CG_OwnerDraw_20
CG_OwnerDraw_1140:
	mov [esp+0x18], edx
	jmp CG_OwnerDraw_410
CG_OwnerDraw_1150:
	mov dword [esp+0x14], 0x1
CG_OwnerDraw_420:
	mov edx, [ebp+0x60]
	mov [esp+0x10], edx
	mov ecx, [ebp+0x5c]
	mov [esp+0xc], ecx
	movss xmm0, dword [ebp+0x58]
	movss [esp+0x8], xmm0
	lea eax, [ebp-0x50]
	mov [esp+0x4], eax
	mov [esp], esi
	call CG_DrawOffHandHighlight
	jmp CG_OwnerDraw_20
CG_OwnerDraw_1160:
	mov [esp+0x14], edx
	jmp CG_OwnerDraw_420
CG_OwnerDraw_1170:
	mov ebx, cgArray
	mov eax, [ebx+0x24]
	add eax, 0xc
	mov edx, [eax+0x148]
	test edx, edx
	jz CG_OwnerDraw_20
	mov ecx, [eax+0x150]
	test ecx, ecx
	jz CG_OwnerDraw_20
	cmp dword [eax+0x4], 0x7
	jz CG_OwnerDraw_20
	cvtsi2ss xmm1, edx
	cvtsi2ss xmm0, ecx
	divss xmm1, xmm0
	movss xmm3, dword [_float_1_00000000]
	movaps xmm0, xmm1
	subss xmm0, xmm3
	pxor xmm4, xmm4
	movaps xmm2, xmm4
	cmpss xmm2, xmm0, 0x6
	movaps xmm0, xmm2
	movaps xmm2, xmm1
	andps xmm2, xmm0
	andnps xmm0, xmm3
	movaps xmm3, xmm0
	orps xmm3, xmm2
	movaps xmm0, xmm4
	subss xmm0, xmm1
	ucomiss xmm0, xmm4
	jae CG_OwnerDraw_20
	ucomiss xmm3, xmm4
	jp CG_OwnerDraw_430
	jz CG_OwnerDraw_20
CG_OwnerDraw_430:
	movss [esp+0x4], xmm3
	mov [esp], ebx
	call CG_PulseLowHealthOverlay
	mov ecx, [ebp+0x5c]
	add ecx, 0xc
	mov eax, [ebx+0x46128]
	mov edx, eax
	sub edx, [ebx+0x5033c]
	mov eax, 0x0
	cmovs edx, eax
	mov eax, [ebx+0x50340]
	test eax, eax
	jle CG_OwnerDraw_440
	cmp edx, eax
	jge CG_OwnerDraw_440
	movss xmm1, dword [ebx+0x50334]
	cvtsi2ss xmm2, edx
	cvtsi2ss xmm0, eax
	divss xmm2, xmm0
	movss xmm0, dword [ebx+0x50338]
	subss xmm0, xmm1
	mulss xmm2, xmm0
	addss xmm2, xmm1
CG_OwnerDraw_810:
	movss [ecx], xmm2
	pxor xmm0, xmm0
	ucomiss xmm2, xmm0
	jp CG_OwnerDraw_450
	jz CG_OwnerDraw_20
CG_OwnerDraw_450:
	mov eax, [ebp+0x60]
	mov [esp+0x30], eax
	mov edx, [ebp+0x5c]
	mov [esp+0x2c], edx
	mov eax, 0x3f800000
	mov [esp+0x28], eax
	mov [esp+0x24], eax
	movss [esp+0x20], xmm0
	movss [esp+0x1c], xmm0
CG_OwnerDraw_480:
	mov eax, [ebp-0x3c]
	mov [esp+0x18], eax
	mov eax, [ebp-0x40]
	mov [esp+0x14], eax
	mov eax, [ebp-0x44]
	mov [esp+0x10], eax
	mov eax, [ebp-0x48]
	mov [esp+0xc], eax
	mov eax, [ebp-0x4c]
	mov [esp+0x8], eax
	mov eax, [ebp-0x50]
	mov [esp+0x4], eax
	mov eax, esi
	shl eax, 0x6
	lea eax, [eax+esi*4]
	add eax, scrPlaceView
	mov [esp], eax
	call CL_DrawStretchPic
	jmp CG_OwnerDraw_20
CG_OwnerDraw_1180:
	lea edx, [ebp-0x50]
	mov eax, [ebp+0x64]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x5c]
	mov [esp], ecx
	movss xmm0, dword [ebp+0x58]
	mov ecx, [ebp+0x54]
	mov eax, esi
	call CG_DrawInvalidCmdHint
	jmp CG_OwnerDraw_20
CG_OwnerDraw_1190:
	lea edx, [ebp-0x50]
	mov eax, [ebp+0x5c]
	mov [esp], eax
	mov ecx, [ebp+0x60]
	mov eax, esi
	call CG_DrawPlayerSprintMeter
	jmp CG_OwnerDraw_20
CG_OwnerDraw_1200:
	mov ebx, [hud_fade_sprint]
	movss xmm0, dword [_float_1000_00000000]
	mulss xmm0, [ebx+0xc]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x294]
	cvttss2si edx, [ebp-0x294]
	mov [ebp-0x260], edx
	mov edx, cgArray
	mov edi, [edx+0x504c4]
	mov eax, [hud_enable]
	cmp byte [eax+0xc], 0x0
	jz CG_OwnerDraw_20
	mov edx, [edx+0x502f4]
	test edx, edx
	jnz CG_OwnerDraw_460
CG_OwnerDraw_500:
	xor eax, eax
CG_OwnerDraw_510:
	test eax, eax
	jz CG_OwnerDraw_20
	pxor xmm4, xmm4
	ucomiss xmm4, [ebx+0xc]
	jnz CG_OwnerDraw_470
	jp CG_OwnerDraw_470
	movss xmm0, dword [_float_1_00000000]
CG_OwnerDraw_660:
	mov edx, [ebp+0x5c]
	mov eax, [edx]
	mov [ebp-0x28], eax
	mov eax, [edx+0x4]
	mov [ebp-0x24], eax
	mov eax, [edx+0x8]
	mov [ebp-0x20], eax
	mov eax, [edx+0xc]
	mov [ebp-0x1c], eax
	mulss xmm0, [ebp-0x1c]
	movss [ebp-0x1c], xmm0
	mov ecx, [ebp+0x60]
	mov [esp+0x30], ecx
	lea eax, [ebp-0x28]
	mov [esp+0x2c], eax
	mov dword [esp+0x28], 0x3f800000
	mov dword [esp+0x24], 0x3f800000
	mov dword [esp+0x20], 0x0
	mov dword [esp+0x1c], 0x0
	jmp CG_OwnerDraw_480
CG_OwnerDraw_1210:
	mov ecx, [ebp+0x60]
	mov [esp+0xc], ecx
	mov eax, [ebp+0x5c]
	mov [esp+0x8], eax
	lea eax, [ebp-0x50]
	mov [esp+0x4], eax
	mov [esp], esi
	call CG_DrawPlayerWeaponBackground
	jmp CG_OwnerDraw_20
CG_OwnerDraw_1220:
	mov edx, [ebp+0x5c]
	mov [esp+0x8], edx
	lea eax, [ebp-0x50]
	mov [esp+0x4], eax
	mov [esp], esi
	call CG_DrawPlayerWeaponAmmoClipGraphic
	jmp CG_OwnerDraw_20
CG_OwnerDraw_1230:
	mov ecx, [ebp+0x5c]
	mov [esp+0x8], ecx
	lea eax, [ebp-0x50]
	mov [esp+0x4], eax
	mov [esp], esi
	call CG_DrawPlayerWeaponIcon
	jmp CG_OwnerDraw_20
CG_OwnerDraw_1240:
	mov eax, [ebp+0x64]
	mov [esp+0x18], eax
	mov edx, [ebp+0x60]
	mov [esp+0x14], edx
	mov ecx, [ebp+0x5c]
	mov [esp+0x10], ecx
	movss xmm0, dword [ebp+0x58]
	movss [esp+0xc], xmm0
	mov eax, [ebp+0x54]
	mov [esp+0x8], eax
	lea eax, [ebp-0x50]
	mov [esp+0x4], eax
	mov [esp], esi
	call CG_DrawPlayerWeaponAmmoStock
	jmp CG_OwnerDraw_20
CG_OwnerDraw_1250:
	mov eax, [ebp+0x60]
	mov [esp+0x20], eax
	mov edx, [ebp+0x68]
	mov [esp+0x1c], edx
	movss xmm0, dword [ebp+0x40]
	movss [esp+0x18], xmm0
	movss xmm2, dword [ebp+0x3c]
	movss [esp+0x14], xmm2
	mov eax, [ebp+0x64]
	mov [esp+0x10], eax
	movss xmm0, dword [ebp+0x58]
	movss [esp+0xc], xmm0
	mov eax, [ebp+0x54]
	mov [esp+0x8], eax
	lea eax, [ebp-0x50]
	mov [esp+0x4], eax
	mov [esp], esi
	call CG_DrawPlayerWeaponLowAmmoWarning
	jmp CG_OwnerDraw_20
CG_OwnerDraw_1260:
	mov dword [esp+0x24], 0x1
	mov edx, [ebp+0x64]
	mov [esp+0x20], edx
CG_OwnerDraw_490:
	movss xmm0, dword [ebp+0x58]
	movss [esp+0x1c], xmm0
	mov eax, [ebp+0x54]
	mov [esp+0x18], eax
	mov edx, [ebp+0x5c]
	mov [esp+0x14], edx
	mov ecx, [ebp+0x60]
	mov [esp+0x10], ecx
	lea eax, [ebp-0x50]
	mov [esp+0xc], eax
	lea eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call CG_CompassDrawTickertape
	jmp CG_OwnerDraw_20
CG_OwnerDraw_1270:
	mov dword [esp+0x24], 0x0
	mov eax, [ebp+0x64]
	mov [esp+0x20], eax
	jmp CG_OwnerDraw_490
CG_OwnerDraw_1280:
	mov ecx, [ebp+0x5c]
	mov [esp+0x14], ecx
	mov eax, [ebp+0x60]
	mov [esp+0x10], eax
	lea eax, [ebp-0x50]
	mov [esp+0xc], eax
	lea eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call CG_CompassDrawPlayer
	jmp CG_OwnerDraw_20
CG_OwnerDraw_1290:
	mov eax, [ebp+0x5c]
	mov [esp+0x14], eax
	mov edx, [ebp+0x60]
	mov [esp+0x10], edx
	lea eax, [ebp-0x50]
	mov [esp+0xc], eax
	lea eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call CG_CompassDrawPlayerBack
	jmp CG_OwnerDraw_20
CG_OwnerDraw_1300:
	mov ecx, [ebp+0x5c]
	mov [esp+0x14], ecx
	mov eax, [ebp+0x60]
	mov [esp+0x10], eax
	lea eax, [ebp-0x50]
	mov [esp+0xc], eax
	lea eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call CG_CompassDrawPlayerPointers_MP
	jmp CG_OwnerDraw_20
CG_OwnerDraw_1310:
	mov edx, [ebp+0x5c]
	mov [esp+0x1c], edx
	mov edx, cgMedia
	mov eax, [edx+0x2730]
	mov [esp+0x18], eax
	mov eax, [edx+0x2734]
	mov [esp+0x14], eax
	lea eax, [ebp-0x50]
	mov [esp+0x10], eax
	lea eax, [ebp+0xc]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0xc
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call CG_CompassDrawVehicles
	jmp CG_OwnerDraw_20
CG_OwnerDraw_1320:
	mov ecx, [ebp+0x5c]
	mov [esp+0x1c], ecx
	mov edx, cgMedia
	mov eax, [edx+0x2738]
	mov [esp+0x18], eax
	mov eax, [edx+0x273c]
	mov [esp+0x14], eax
	lea eax, [ebp-0x50]
	mov [esp+0x10], eax
	lea eax, [ebp+0xc]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0xd
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call CG_CompassDrawVehicles
	jmp CG_OwnerDraw_20
CG_OwnerDraw_1330:
	mov eax, [ebp+0x5c]
	mov [esp+0x10], eax
	lea eax, [ebp-0x50]
	mov [esp+0xc], eax
	lea eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call CG_CompassDrawFriendlies
	jmp CG_OwnerDraw_20
CG_OwnerDraw_1340:
	mov eax, [ebp+0x5c]
	mov [esp+0x14], eax
	mov edx, [ebp+0x60]
	mov [esp+0x10], edx
	lea eax, [ebp-0x50]
	mov [esp+0xc], eax
	lea eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call CG_CompassDrawPlayerMap
	jmp CG_OwnerDraw_20
CG_OwnerDraw_1350:
	mov ecx, [ebp+0x64]
	mov [esp+0x1c], ecx
	mov eax, [ebp+0x5c]
	mov [esp+0x18], eax
	mov edx, [ebp+0x60]
	mov [esp+0x14], edx
	mov ecx, [ebp+0x54]
	mov [esp+0x10], ecx
	lea eax, [ebp-0x50]
	mov [esp+0xc], eax
	lea eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call CG_CompassDrawPlayerNorthCoord
	jmp CG_OwnerDraw_20
CG_OwnerDraw_1360:
	mov eax, [ebp+0x64]
	mov [esp+0x1c], eax
	mov edx, [ebp+0x5c]
	mov [esp+0x18], edx
	mov ecx, [ebp+0x60]
	mov [esp+0x14], ecx
	mov eax, [ebp+0x54]
	mov [esp+0x10], eax
	lea eax, [ebp-0x50]
	mov [esp+0xc], eax
	lea eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call CG_CompassDrawPlayerEastCoord
	jmp CG_OwnerDraw_20
CG_OwnerDraw_1370:
	mov edx, [ebp+0x64]
	mov [esp+0x1c], edx
	mov ecx, [ebp+0x5c]
	mov [esp+0x18], ecx
	mov eax, [ebp+0x60]
	mov [esp+0x14], eax
	mov edx, [ebp+0x54]
	mov [esp+0x10], edx
	lea eax, [ebp-0x50]
	mov [esp+0xc], eax
	lea eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call CG_CompassDrawPlayerNCoordScroll
	jmp CG_OwnerDraw_20
CG_OwnerDraw_1380:
	mov ecx, [ebp+0x64]
	mov [esp+0x1c], ecx
	mov eax, [ebp+0x5c]
	mov [esp+0x18], eax
	mov edx, [ebp+0x60]
	mov [esp+0x14], edx
	mov ecx, [ebp+0x54]
	mov [esp+0x10], ecx
	lea eax, [ebp-0x50]
	mov [esp+0xc], eax
	lea eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call CG_CompassDrawPlayerECoordScroll
	jmp CG_OwnerDraw_20
CG_OwnerDraw_1390:
	mov edx, [ebp+0x60]
	mov [esp+0xc], edx
	mov ecx, [ebp+0x5c]
	mov [esp+0x8], ecx
	lea eax, [ebp-0x50]
	mov [esp+0x4], eax
	mov [esp], esi
	call CG_DrawPlayerActionSlotDpad
	jmp CG_OwnerDraw_20
CG_OwnerDraw_1400:
	mov eax, [ebp+0x64]
	mov [esp+0x18], eax
	movss xmm0, dword [ebp+0x58]
	movss [esp+0x14], xmm0
	mov eax, [ebp+0x54]
	mov [esp+0x10], eax
	mov edx, [ebp+0x5c]
	mov [esp+0xc], edx
	lea eax, [ebx-0xa6]
	mov [esp+0x8], eax
	lea eax, [ebp-0x50]
	mov [esp+0x4], eax
	mov [esp], esi
	call CG_DrawPlayerActionSlot
	jmp CG_OwnerDraw_20
CG_OwnerDraw_1410:
	mov edx, [ebp+0x5c]
	mov [esp+0x10], edx
	lea eax, [ebp-0x50]
	mov [esp+0xc], eax
	lea eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call CG_CompassDrawEnemies
	jmp CG_OwnerDraw_20
CG_OwnerDraw_1420:
	lea ecx, [ebp-0x50]
	lea edx, [ebx-0xc1]
	mov eax, [ebp+0x64]
	mov [esp+0x8], eax
	mov eax, [ebp+0x5c]
	mov [esp+0x4], eax
	mov eax, [ebp+0x54]
	mov [esp], eax
	movss xmm0, dword [ebp+0x58]
	mov eax, esi
	call CG_DrawTalkerNum
	jmp CG_OwnerDraw_20
CG_OwnerDraw_460:
	mov [esp], esi
	call CL_ShouldDisplayHud
	test al, al
	jz CG_OwnerDraw_500
	mov eax, 0x1
	jmp CG_OwnerDraw_510
CG_OwnerDraw_340:
	mov [esp], esi
	call CL_ShouldDisplayHud
	test al, al
	jz CG_OwnerDraw_520
	mov eax, 0x1
	jmp CG_OwnerDraw_530
CG_OwnerDraw_230:
	mov [esp], esi
	call CL_ShouldDisplayHud
	test al, al
	jz CG_OwnerDraw_540
	mov eax, 0x1
	jmp CG_OwnerDraw_550
CG_OwnerDraw_50:
	mov [esp], esi
	call CL_ShouldDisplayHud
	test al, al
	jz CG_OwnerDraw_560
	mov eax, 0x1
	jmp CG_OwnerDraw_570
CG_OwnerDraw_280:
	mov [esp], edi
	call BG_AmmoForWeapon
	mov [esp+0x4], edi
	mov ebx, cgArray
	add ebx, 0x4613c
	mov [esp], ebx
	call BG_GetTotalAmmoReserve
	mov [ebp-0x280], eax
	cmp eax, 0x3e8
	mov eax, 0x3e7
	cmovl eax, [ebp-0x280]
	mov [ebp-0x280], eax
	mov [esp], edi
	call BG_GetWeaponDef
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], edi
	mov [esp], ebx
	call BG_GetAmmoPlayerMax
	cmp eax, 0x3e7
	jle CG_OwnerDraw_580
	movss xmm1, dword [_float_999_00000000]
CG_OwnerDraw_920:
	cvtsi2ss xmm0, dword [ebp-0x280]
	mulss xmm1, [_float_0_20000000]
	ucomiss xmm1, xmm0
	jb CG_OwnerDraw_590
	mov eax, 0x1
	jmp CG_OwnerDraw_600
CG_OwnerDraw_330:
	pxor xmm4, xmm4
	movaps xmm0, xmm4
	jmp CG_OwnerDraw_610
CG_OwnerDraw_220:
	pxor xmm4, xmm4
	movaps xmm0, xmm4
	jmp CG_OwnerDraw_620
CG_OwnerDraw_40:
	pxor xmm4, xmm4
	movaps xmm0, xmm4
	jmp CG_OwnerDraw_630
CG_OwnerDraw_370:
	mov eax, cgArray
	mov ebx, [eax+0x46224]
	jmp CG_OwnerDraw_640
CG_OwnerDraw_310:
	mov eax, cgArray
	mov ebx, [eax+0x46224]
	jmp CG_OwnerDraw_650
CG_OwnerDraw_470:
	mov dword [esp+0xc], 0x2bc
	mov ecx, [ebp-0x260]
	mov [esp+0x8], ecx
	mov [esp+0x4], edi
	mov eax, cgArray
	mov eax, [eax+0x46128]
	mov [esp], eax
	call CG_FadeColor
	test eax, eax
	jz CG_OwnerDraw_20
	movss xmm0, dword [eax+0xc]
	ucomiss xmm0, [_float_0_00000000]
	jp CG_OwnerDraw_660
	jnz CG_OwnerDraw_660
	jmp CG_OwnerDraw_20
CG_OwnerDraw_290:
	mov edx, [ebp+0x5c]
	mov eax, [edx]
	mov [ebp-0x28], eax
	mov eax, [edx+0x4]
	mov [ebp-0x24], eax
	mov eax, [edx+0x8]
	mov [ebp-0x20], eax
	jmp CG_OwnerDraw_670
CG_OwnerDraw_260:
	mov eax, cgArray
CG_OwnerDraw_740:
	mov edi, [eax+0x46224]
	jmp CG_OwnerDraw_680
CG_OwnerDraw_380:
	mov eax, [edi+0x38]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_s
	call va
	jmp CG_OwnerDraw_690
CG_OwnerDraw_320:
	mov eax, [edi+0x38]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_s
	call va
	mov ebx, eax
	jmp CG_OwnerDraw_700
CG_OwnerDraw_80:
	mov edx, cgArray
	mov ebx, [edx+0x5036c]
	call BG_GetNumWeapons
	cmp ebx, eax
	jae CG_OwnerDraw_710
	mov ecx, cgArray
	mov ebx, [ecx+0x5036c]
	jmp CG_OwnerDraw_720
CG_OwnerDraw_140:
	mov edx, [ebp-0x27c]
	movss xmm1, dword [edx]
	jmp CG_OwnerDraw_170
CG_OwnerDraw_350:
	mov dword [esp+0xc], 0x2bc
	mov dword [esp+0x8], 0x708
	mov [esp+0x4], edi
	mov eax, cgArray
	mov eax, [eax+0x46128]
	mov [esp], eax
	call CG_FadeColor
	test eax, eax
	jz CG_OwnerDraw_330
	movss xmm0, dword [eax+0xc]
	pxor xmm4, xmm4
	jmp CG_OwnerDraw_610
CG_OwnerDraw_190:
	cmp byte [ebp-0x273], 0x0
	jz CG_OwnerDraw_20
	movss xmm0, dword [ebp-0x50]
	movss [ebp-0x278], xmm0
	movss xmm1, dword [ebp-0x48]
	movss xmm2, dword [ebp+0x58]
	movss [esp+0xc], xmm2
	mov eax, [ebp+0x54]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	lea ebx, [ebp-0x250]
	mov [esp], ebx
	movss [ebp-0x2a8], xmm1
	call UI_TextWidth
	mov edx, [ebp+0x64]
	mov [esp+0x28], edx
	lea edx, [ebp-0x28]
	mov [esp+0x24], edx
	movss xmm0, dword [ebp+0x58]
	movss [esp+0x20], xmm0
	mov edx, [ebp-0x3c]
	mov [esp+0x1c], edx
	mov edx, [ebp-0x40]
	mov [esp+0x18], edx
	mov edx, [ebp-0x4c]
	mov [esp+0x14], edx
	cvtsi2ss xmm0, eax
	movss xmm1, dword [ebp-0x2a8]
	subss xmm1, xmm0
	mulss xmm1, [_float_0_50000000]
	addss xmm1, [ebp-0x278]
	movaps xmm2, xmm1
CG_OwnerDraw_910:
	movss [esp+0x10], xmm2
	mov eax, [ebp+0x54]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x7fffffff
	mov [esp+0x4], ebx
	mov [esp], edi
	call UI_DrawText
	jmp CG_OwnerDraw_20
CG_OwnerDraw_180:
	mov ecx, [ebp+0x5c]
	mov eax, [ecx]
	mov [ebp-0x28], eax
	mov eax, [ecx+0x4]
	mov [ebp-0x24], eax
	mov eax, [ecx+0x8]
	mov [ebp-0x20], eax
	jmp CG_OwnerDraw_730
CG_OwnerDraw_270:
	mov eax, ecx
	jmp CG_OwnerDraw_740
CG_OwnerDraw_120:
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_2i
	lea eax, [ebp-0x150]
	mov [esp], eax
	call sprintf
	mov edi, cgArray
	mov ebx, [edi+0x5036c]
	call BG_GetNumWeapons
	cmp ebx, eax
	jae CG_OwnerDraw_750
	mov ebx, [edi+0x5036c]
	mov edx, ebx
	sar edx, 0x5
	mov ecx, ebx
	and ecx, 0x1f
	mov eax, 0x1
	shl eax, cl
	test [edi+edx*4+0x46698], eax
	jz CG_OwnerDraw_750
CG_OwnerDraw_930:
	test ebx, ebx
	jnz CG_OwnerDraw_760
CG_OwnerDraw_780:
	xor eax, eax
CG_OwnerDraw_800:
	mov [ebp-0x271], al
	jmp CG_OwnerDraw_770
CG_OwnerDraw_760:
	mov [esp], ebx
	call BG_WeaponIsClipOnly
	test eax, eax
	jnz CG_OwnerDraw_780
	mov [esp], ebx
	call BG_ClipForWeapon
	mov edx, cgArray
	mov edi, [edx+eax*4+0x46498]
	test edi, edi
	js CG_OwnerDraw_780
	cmp edi, 0x3e8
	mov eax, 0x3e7
	cmovge edi, eax
	mov [esp], ebx
	call BG_GetWeaponDef
	mov edx, [eax+0x338]
	cmp edx, 0x3e7
	jle CG_OwnerDraw_790
	movss xmm1, dword [_float_999_00000000]
CG_OwnerDraw_970:
	cvtsi2ss xmm0, edi
	mulss xmm1, [eax+0x5bc]
	ucomiss xmm1, xmm0
	jb CG_OwnerDraw_780
	mov eax, 0x1
	jmp CG_OwnerDraw_800
CG_OwnerDraw_440:
	mov eax, cgArray
	movss xmm2, dword [eax+0x50338]
	jmp CG_OwnerDraw_810
CG_OwnerDraw_130:
	mov eax, [ebp-0x270]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_3i
	lea eax, [ebp-0x250]
	mov [esp], eax
	call sprintf
	mov edx, cgArray
	mov ebx, [edx+0x5036c]
	call BG_GetNumWeapons
	cmp ebx, eax
	jae CG_OwnerDraw_820
	mov ecx, cgArray
	mov edi, [ecx+0x5036c]
	mov edx, edi
	sar edx, 0x5
	mov ecx, edi
	and ecx, 0x1f
	mov eax, 0x1
	shl eax, cl
	mov ecx, cgArray
	test [ecx+edx*4+0x46698], eax
	jz CG_OwnerDraw_820
CG_OwnerDraw_900:
	test edi, edi
	jnz CG_OwnerDraw_830
CG_OwnerDraw_860:
	xor eax, eax
	mov ecx, eax
	jmp CG_OwnerDraw_840
CG_OwnerDraw_830:
	mov [esp], edi
	call BG_AmmoForWeapon
	mov [esp+0x4], edi
	mov ebx, cgArray
	add ebx, 0x4613c
	mov [esp], ebx
	call BG_GetTotalAmmoReserve
	mov [ebp-0x264], eax
	cmp eax, 0x3e8
	mov eax, 0x3e7
	cmovl eax, [ebp-0x264]
	mov [ebp-0x264], eax
	mov [esp], edi
	call BG_GetWeaponDef
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], edi
	mov [esp], ebx
	call BG_GetAmmoPlayerMax
	cmp eax, 0x3e7
	jle CG_OwnerDraw_850
	movss xmm1, dword [_float_999_00000000]
CG_OwnerDraw_960:
	cvtsi2ss xmm0, dword [ebp-0x264]
	mulss xmm1, [_float_0_20000000]
	ucomiss xmm1, xmm0
	jb CG_OwnerDraw_860
	mov eax, 0x1
	mov ecx, eax
	jmp CG_OwnerDraw_840
CG_OwnerDraw_90:
	mov [esp], ebx
	call BG_ClipForWeapon
	mov eax, [edi+eax*4+0x46498]
	test eax, eax
	js CG_OwnerDraw_870
	cmp eax, 0x3e7
	jle CG_OwnerDraw_880
	mov eax, 0x3e7
	mov byte [ebp-0x272], 0x1
	jmp CG_OwnerDraw_890
CG_OwnerDraw_820:
	mov eax, cgArray
	mov edi, [eax+0x46224]
	jmp CG_OwnerDraw_900
CG_OwnerDraw_60:
	mov dword [esp+0xc], 0x2bc
	mov eax, [ebp-0x26c]
	mov [esp+0x8], eax
	mov edx, [ebp-0x268]
	mov [esp+0x4], edx
	mov eax, cgArray
	mov eax, [eax+0x46128]
	mov [esp], eax
	call CG_FadeColor
	test eax, eax
	jz CG_OwnerDraw_40
	movss xmm0, dword [eax+0xc]
	pxor xmm4, xmm4
	jmp CG_OwnerDraw_630
CG_OwnerDraw_200:
	movss xmm0, dword [ebp-0x50]
	movss [ebp-0x25c], xmm0
	movss xmm1, dword [ebp-0x48]
	movss xmm2, dword [ebp+0x58]
	movss [esp+0xc], xmm2
	mov eax, [ebp+0x54]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	lea ebx, [ebp-0x150]
	mov [esp], ebx
	movss [ebp-0x2a8], xmm1
	call UI_TextWidth
	cvtsi2ss xmm0, eax
	movss xmm1, dword [ebp-0x2a8]
	subss xmm1, xmm0
	mulss xmm1, [_float_0_50000000]
	addss xmm1, [ebp-0x25c]
	movss [ebp-0x25c], xmm1
	mov edx, [ebp+0x64]
	mov [esp+0x28], edx
	mov ecx, [ebp+0x5c]
	mov [esp+0x24], ecx
	movss xmm0, dword [ebp+0x58]
	movss [esp+0x20], xmm0
	mov eax, [ebp-0x3c]
	mov [esp+0x1c], eax
	mov eax, [ebp-0x40]
	mov [esp+0x18], eax
	mov eax, [ebp-0x4c]
	mov [esp+0x14], eax
	movss [esp+0x10], xmm1
	mov eax, [ebp+0x54]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x7fffffff
	mov [esp+0x4], ebx
	mov [esp], edi
	call UI_DrawText
	cmp byte [ebp-0x271], 0x0
	jz CG_OwnerDraw_20
	mov edx, [ebp+0x64]
	mov [esp+0x28], edx
	lea eax, [ebp-0x38]
	mov [esp+0x24], eax
	movss xmm0, dword [ebp+0x58]
	movss [esp+0x20], xmm0
	mov eax, [ebp-0x3c]
	mov [esp+0x1c], eax
	mov eax, [ebp-0x40]
	mov [esp+0x18], eax
	mov eax, [ebp-0x4c]
	mov [esp+0x14], eax
	movss xmm2, dword [ebp-0x25c]
	jmp CG_OwnerDraw_910
CG_OwnerDraw_240:
	mov dword [esp+0xc], 0x2bc
	mov ecx, [ebp-0x288]
	mov [esp+0x8], ecx
	mov eax, [ebp-0x284]
	mov [esp+0x4], eax
	mov eax, cgArray
	mov eax, [eax+0x46128]
	mov [esp], eax
	call CG_FadeColor
	test eax, eax
	jz CG_OwnerDraw_220
	movss xmm0, dword [eax+0xc]
	pxor xmm4, xmm4
	jmp CG_OwnerDraw_620
CG_OwnerDraw_580:
	test eax, eax
	js CG_OwnerDraw_590
	cvtsi2ss xmm1, eax
	jmp CG_OwnerDraw_920
CG_OwnerDraw_750:
	mov eax, cgArray
	mov ebx, [eax+0x46224]
	jmp CG_OwnerDraw_930
CG_OwnerDraw_100:
	mov byte [ebp-0x273], 0x0
	jmp CG_OwnerDraw_940
CG_OwnerDraw_880:
	mov byte [ebp-0x272], 0x1
	jmp CG_OwnerDraw_890
CG_OwnerDraw_210:
	mov edx, [ebp+0x64]
	mov [esp+0x28], edx
	lea eax, [ebp-0x38]
	mov [esp+0x24], eax
	movss xmm0, dword [ebp+0x58]
	movss [esp+0x20], xmm0
	mov eax, [ebp-0x3c]
	mov [esp+0x1c], eax
	mov eax, [ebp-0x40]
	mov [esp+0x18], eax
	mov eax, [ebp-0x4c]
	mov [esp+0x14], eax
	mov eax, [ebp-0x50]
	mov [esp+0x10], eax
	mov eax, [ebp+0x54]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x7fffffff
	mov [esp+0x4], ebx
	mov [esp], edi
	call UI_DrawText
	jmp CG_OwnerDraw_950
CG_OwnerDraw_850:
	test eax, eax
	js CG_OwnerDraw_860
	cvtsi2ss xmm1, eax
	jmp CG_OwnerDraw_960
CG_OwnerDraw_790:
	test edx, edx
	jle CG_OwnerDraw_780
	cvtsi2ss xmm1, edx
	jmp CG_OwnerDraw_970
	
	
CG_OwnerDraw_jumptab_0:
	dd CG_OwnerDraw_980
	dd CG_OwnerDraw_990
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_1000
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_1010
	dd CG_OwnerDraw_1020
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_1030
	dd CG_OwnerDraw_1040
	dd CG_OwnerDraw_1050
	dd CG_OwnerDraw_1060
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_1070
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_1080
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_1090
	dd CG_OwnerDraw_1100
	dd CG_OwnerDraw_1110
	dd CG_OwnerDraw_1120
	dd CG_OwnerDraw_1130
	dd CG_OwnerDraw_1140
	dd CG_OwnerDraw_1150
	dd CG_OwnerDraw_1160
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_1170
	dd CG_OwnerDraw_1180
	dd CG_OwnerDraw_1190
	dd CG_OwnerDraw_1200
	dd CG_OwnerDraw_1210
	dd CG_OwnerDraw_1220
	dd CG_OwnerDraw_1230
	dd CG_OwnerDraw_1240
	dd CG_OwnerDraw_1250
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_1260
	dd CG_OwnerDraw_1270
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_1280
	dd CG_OwnerDraw_1290
	dd CG_OwnerDraw_1300
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_1310
	dd CG_OwnerDraw_1320
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_1330
	dd CG_OwnerDraw_1340
	dd CG_OwnerDraw_1350
	dd CG_OwnerDraw_1360
	dd CG_OwnerDraw_1370
	dd CG_OwnerDraw_1380
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_1390
	dd CG_OwnerDraw_1400
	dd CG_OwnerDraw_1400
	dd CG_OwnerDraw_1400
	dd CG_OwnerDraw_1400
	dd CG_OwnerDraw_1410
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_10
	dd CG_OwnerDraw_1420
	dd CG_OwnerDraw_1420
	dd CG_OwnerDraw_1420
	dd CG_OwnerDraw_1420
CG_OwnerDraw_jumptab_1:
	dd CG_OwnerDraw_1430
	dd CG_OwnerDraw_1440
	dd CG_OwnerDraw_1450
	dd CG_OwnerDraw_1460
	dd CG_OwnerDraw_20
	dd CG_OwnerDraw_1470
	dd CG_OwnerDraw_1480
	dd CG_OwnerDraw_1490
	dd CG_OwnerDraw_1500


;CG_FadeHudMenu(int, dvar_s const*, int, int)
CG_FadeHudMenu:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [hud_enable]
	cmp byte [eax+0xc], 0x0
	jz CG_FadeHudMenu_10
	mov eax, cgArray
	mov ecx, [eax+0x502f4]
	test ecx, ecx
	jnz CG_FadeHudMenu_20
CG_FadeHudMenu_50:
	xor eax, eax
CG_FadeHudMenu_60:
	test eax, eax
	jz CG_FadeHudMenu_10
	pxor xmm0, xmm0
	mov eax, [ebp+0xc]
	ucomiss xmm0, [eax+0xc]
	jnz CG_FadeHudMenu_30
	jp CG_FadeHudMenu_30
	fld1
	leave
	ret
CG_FadeHudMenu_30:
	mov dword [esp+0xc], 0x2bc
	mov eax, [ebp+0x14]
	mov [esp+0x8], eax
	mov eax, [ebp+0x10]
	mov [esp+0x4], eax
	mov eax, cgArray
	mov eax, [eax+0x46128]
	mov [esp], eax
	call CG_FadeColor
	test eax, eax
	jnz CG_FadeHudMenu_40
CG_FadeHudMenu_10:
	fldz
	leave
	ret
CG_FadeHudMenu_20:
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CL_ShouldDisplayHud
	test al, al
	jz CG_FadeHudMenu_50
	mov eax, 0x1
	jmp CG_FadeHudMenu_60
CG_FadeHudMenu_40:
	fld dword [eax+0xc]
	leave
	ret
	nop


;CG_ArchiveState(int, MemoryFile*)
CG_ArchiveState:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0xc]
	mov esi, cgArray
	lea eax, [esi+0x504b8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x4
	mov [esp], ebx
	call dword [ebx+0x18]
	lea eax, [esi+0x504bc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x4
	mov [esp], ebx
	call dword [ebx+0x18]
	lea eax, [esi+0x504c0]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x4
	mov [esp], ebx
	call dword [ebx+0x18]
	lea eax, [esi+0x504b4]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x4
	mov [esp], ebx
	call dword [ebx+0x18]
	lea eax, [esi+0x504c8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x4
	mov [esp], ebx
	call dword [ebx+0x18]
	lea eax, [esi+0x504c4]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x4
	mov [esp], ebx
	call dword [ebx+0x18]
	lea eax, [esi+0x502f4]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x4
	mov [esp], ebx
	call dword [ebx+0x18]
	lea eax, [esi+0x4f3a1]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x400
	mov [esp], ebx
	call dword [ebx+0x18]
	lea eax, [esi+0x4f7a1]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x100
	mov [esp], ebx
	call dword [ebx+0x18]
	lea eax, [esi+0xfd4d8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0xa0
	mov [esp], ebx
	call dword [ebx+0x18]
	lea eax, [esi+0xfd578]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0xa0
	mov [esp], ebx
	call dword [ebx+0x18]
	lea eax, [esi+0xfd618]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0xa0
	mov [esp], ebx
	call dword [ebx+0x18]
	lea eax, [esi+0xfd6b8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x18
	mov [esp], ebx
	call dword [ebx+0x18]
	lea eax, [esi+0xfd6d0]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x40
	mov [esp], ebx
	call dword [ebx+0x18]
	lea eax, [esi+0xfd710]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x40
	mov [esp], ebx
	call dword [ebx+0x18]
	add esi, 0xfd768
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x80
	mov [esp], ebx
	call dword [ebx+0x18]
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret


;CG_ObjectiveIcon(int, int, int)
CG_ObjectiveIcon:
	push ebp
	mov ebp, esp
	push edi
	push ebx
	sub esp, 0x50
	mov edx, [ebp+0xc]
	test edx, edx
	jz CG_ObjectiveIcon_10
	lea eax, [edx-0x1]
	cmp eax, 0xfe
	jbe CG_ObjectiveIcon_20
CG_ObjectiveIcon_10:
	mov eax, cgMedia
	mov edx, [ebp+0x10]
	mov eax, [eax+edx*4+0x248]
CG_ObjectiveIcon_30:
	add esp, 0x50
	pop ebx
	pop edi
	pop ebp
	ret
CG_ObjectiveIcon_20:
	lea eax, [edx+0x7d2]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CL_GetConfigString
	mov edx, eax
	cmp byte [eax], 0x0
	jz CG_ObjectiveIcon_10
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, edx
	repne scasb
	not ecx
	sub ecx, 0x1
	cmp ecx, 0x3f
	ja CG_ObjectiveIcon_10
	mov [esp+0x4], edx
	lea ebx, [ebp-0x48]
	mov [esp], ebx
	call strcpy
	mov dword [esp+0x4], 0x7
	mov [esp], ebx
	call Material_RegisterHandle
	jmp CG_ObjectiveIcon_30


;CG_ShouldDrawHud(int)
CG_ShouldDrawHud:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, cgArray
	mov eax, [eax+0x502f4]
	test eax, eax
	jnz CG_ShouldDrawHud_10
CG_ShouldDrawHud_20:
	xor eax, eax
	leave
	ret
CG_ShouldDrawHud_10:
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CL_ShouldDisplayHud
	test al, al
	jz CG_ShouldDrawHud_20
	mov eax, 0x1
	leave
	ret
	nop


;CG_ScriptMainMenu(int)
CG_ScriptMainMenu:
	push ebp
	mov ebp, esp
	mov eax, cgArray
	add eax, 0x4f7a1
	pop ebp
	ret
	nop


;CG_CalcPlayerHealth(playerState_s const*)
CG_CalcPlayerHealth:
	push ebp
	mov ebp, esp
	sub esp, 0x4
	mov eax, [ebp+0x8]
	mov edx, [eax+0x148]
	test edx, edx
	jz CG_CalcPlayerHealth_10
	mov ecx, [eax+0x150]
	test ecx, ecx
	jz CG_CalcPlayerHealth_10
	cmp dword [eax+0x4], 0x7
	jz CG_CalcPlayerHealth_10
	cvtsi2ss xmm1, edx
	cvtsi2ss xmm0, ecx
	divss xmm1, xmm0
	movss xmm3, dword [_float_1_00000000]
	movaps xmm0, xmm1
	subss xmm0, xmm3
	pxor xmm4, xmm4
	movaps xmm2, xmm4
	cmpss xmm2, xmm0, 0x6
	movaps xmm0, xmm2
	movaps xmm2, xmm1
	andps xmm2, xmm0
	andnps xmm0, xmm3
	movaps xmm3, xmm0
	orps xmm3, xmm2
	movaps xmm0, xmm4
	subss xmm0, xmm1
	ucomiss xmm0, xmm4
	jb CG_CalcPlayerHealth_20
	movaps xmm3, xmm4
	movss [ebp-0x4], xmm3
	fld dword [ebp-0x4]
	leave
	ret
CG_CalcPlayerHealth_10:
	pxor xmm3, xmm3
CG_CalcPlayerHealth_20:
	movss [ebp-0x4], xmm3
	fld dword [ebp-0x4]
	leave
	ret
	nop


;CG_ServerMaterialName(int, int, char*, unsigned int)
CG_ServerMaterialName:
	push ebp
	mov ebp, esp
	push edi
	sub esp, 0x14
	mov edx, [ebp+0xc]
	lea eax, [edx-0x1]
	cmp eax, 0xfe
	jbe CG_ServerMaterialName_10
CG_ServerMaterialName_20:
	xor eax, eax
	add esp, 0x14
	pop edi
	pop ebp
	ret
CG_ServerMaterialName_10:
	lea eax, [edx+0x7d2]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CL_GetConfigString
	mov edx, eax
	cmp byte [eax], 0x0
	jz CG_ServerMaterialName_20
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, edx
	repne scasb
	not ecx
	sub ecx, 0x1
	cmp ecx, [ebp+0x14]
	jae CG_ServerMaterialName_20
	mov [esp+0x4], edx
	mov eax, [ebp+0x10]
	mov [esp], eax
	call strcpy
	mov eax, 0x1
	add esp, 0x14
	pop edi
	pop ebp
	ret


;CG_CheckPlayerForLowAmmo(cg_s const*)
CG_CheckPlayerForLowAmmo:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov esi, [ebp+0x8]
	mov ebx, [esi+0x5036c]
	call BG_GetNumWeapons
	cmp ebx, eax
	jae CG_CheckPlayerForLowAmmo_10
	mov ebx, [esi+0x5036c]
	lea edi, [esi+0x4613c]
	mov edx, ebx
	sar edx, 0x5
	mov ecx, ebx
	and ecx, 0x1f
	mov eax, 0x1
	shl eax, cl
	test [edi+edx*4+0x55c], eax
	jnz CG_CheckPlayerForLowAmmo_20
	mov ebx, [esi+0x46224]
CG_CheckPlayerForLowAmmo_20:
	test ebx, ebx
	jnz CG_CheckPlayerForLowAmmo_30
CG_CheckPlayerForLowAmmo_50:
	xor eax, eax
	movzx eax, al
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_CheckPlayerForLowAmmo_10:
	lea edi, [esi+0x4613c]
	mov ebx, [esi+0x46224]
	jmp CG_CheckPlayerForLowAmmo_20
CG_CheckPlayerForLowAmmo_30:
	mov [esp], ebx
	call BG_AmmoForWeapon
	mov [esp+0x4], ebx
	mov [esp], edi
	call BG_GetTotalAmmoReserve
	mov esi, eax
	cmp eax, 0x3e8
	mov eax, 0x3e7
	cmovge esi, eax
	mov [esp], ebx
	call BG_GetWeaponDef
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], ebx
	mov [esp], edi
	call BG_GetAmmoPlayerMax
	cmp eax, 0x3e7
	jle CG_CheckPlayerForLowAmmo_40
	movss xmm1, dword [_float_999_00000000]
CG_CheckPlayerForLowAmmo_60:
	cvtsi2ss xmm0, esi
	mulss xmm1, [_float_0_20000000]
	ucomiss xmm1, xmm0
	jb CG_CheckPlayerForLowAmmo_50
	mov eax, 0x1
	movzx eax, al
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_CheckPlayerForLowAmmo_40:
	test eax, eax
	js CG_CheckPlayerForLowAmmo_50
	cvtsi2ss xmm1, eax
	jmp CG_CheckPlayerForLowAmmo_60
	nop


;CG_CheckPlayerForLowClip(cg_s const*)
CG_CheckPlayerForLowClip:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov esi, [ebp+0x8]
	mov ebx, [esi+0x5036c]
	call BG_GetNumWeapons
	cmp ebx, eax
	jae CG_CheckPlayerForLowClip_10
	mov ebx, [esi+0x5036c]
	lea edi, [esi+0x4613c]
	mov edx, ebx
	sar edx, 0x5
	mov ecx, ebx
	and ecx, 0x1f
	mov eax, 0x1
	shl eax, cl
	test [edi+edx*4+0x55c], eax
	jnz CG_CheckPlayerForLowClip_20
	mov ebx, [esi+0x46224]
CG_CheckPlayerForLowClip_20:
	test ebx, ebx
	jnz CG_CheckPlayerForLowClip_30
CG_CheckPlayerForLowClip_40:
	xor eax, eax
	movzx eax, al
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_CheckPlayerForLowClip_10:
	lea edi, [esi+0x4613c]
	mov ebx, [esi+0x46224]
	jmp CG_CheckPlayerForLowClip_20
CG_CheckPlayerForLowClip_30:
	mov [esp], ebx
	call BG_WeaponIsClipOnly
	test eax, eax
	jnz CG_CheckPlayerForLowClip_40
	mov [esp], ebx
	call BG_ClipForWeapon
	mov esi, [edi+eax*4+0x35c]
	test esi, esi
	js CG_CheckPlayerForLowClip_40
	cmp esi, 0x3e8
	mov eax, 0x3e7
	cmovge esi, eax
	mov [esp], ebx
	call BG_GetWeaponDef
	mov edx, [eax+0x338]
	cmp edx, 0x3e7
	jle CG_CheckPlayerForLowClip_50
	movss xmm1, dword [_float_999_00000000]
CG_CheckPlayerForLowClip_60:
	cvtsi2ss xmm0, esi
	mulss xmm1, [eax+0x5bc]
	ucomiss xmm1, xmm0
	jb CG_CheckPlayerForLowClip_40
	mov eax, 0x1
	movzx eax, al
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_CheckPlayerForLowClip_50:
	test edx, edx
	jle CG_CheckPlayerForLowClip_40
	cvtsi2ss xmm1, edx
	jmp CG_CheckPlayerForLowClip_60


;CG_ResetLowHealthOverlay(cg_s*)
CG_ResetLowHealthOverlay:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov byte [eax+0x50348], 0x0
	mov edx, [hud_healthOverlay_phaseEnd_toAlpha]
	mov edx, [edx+0xc]
	mov [eax+0x50338], edx
	mov dword [eax+0x50340], 0x0
	mov dword [eax+0x50344], 0x0
	mov dword [eax+0x50354], 0x0
	mov dword [eax+0x50350], 0x3f800000
	pop ebp
	ret


;CG_AntiBurnInHUD_RegisterDvars()
CG_AntiBurnInHUD_RegisterDvars:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov dword [esp+0x14], _cstring_the_speed_that_t
	mov dword [esp+0x10], 0x1
	mov dword [esp+0xc], 0x3f800000
	xor esi, esi
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x3dcccccd
	mov dword [esp], _cstring_hud_fadeout_spee
	call Cvar_RegisterFloat
	mov [hud_fadeout_speed], eax
	mov dword [esp+0xc], _cstring_enable_hud_eleme
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_hud_enable
	call Cvar_RegisterBool
	mov [hud_enable], eax
	mov dword [esp+0x14], _cstring_the_time_for_the
	mov dword [esp+0x10], 0x1
	mov ebx, 0x41f00000
	mov [esp+0xc], ebx
	mov [esp+0x8], esi
	mov [esp+0x4], esi
	mov dword [esp], _cstring_hud_fade_ammodis
	call Cvar_RegisterFloat
	mov [hud_fade_ammodisplay], eax
	mov dword [esp+0x14], _cstring_the_time_for_the1
	mov dword [esp+0x10], 0x1
	mov [esp+0xc], ebx
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x40000000
	mov dword [esp], _cstring_hud_fade_healthb
	call Cvar_RegisterFloat
	mov [hud_fade_healthbar], eax
	mov dword [esp+0x14], _cstring_the_time_for_the2
	mov dword [esp+0x10], 0x1
	mov [esp+0xc], ebx
	mov [esp+0x8], esi
	mov [esp+0x4], esi
	mov dword [esp], _cstring_hud_fade_compass
	call Cvar_RegisterFloat
	mov [hud_fade_compass], eax
	mov dword [esp+0x14], _cstring_the_time_for_the3
	mov dword [esp+0x10], 0x1
	mov [esp+0xc], ebx
	mov [esp+0x8], esi
	mov edi, 0x3fd9999a
	mov [esp+0x4], edi
	mov dword [esp], _cstring_hud_fade_stance
	call Cvar_RegisterFloat
	mov [hud_fade_stance], eax
	mov dword [esp+0x14], _cstring_the_time_for_the4
	mov dword [esp+0x10], 0x1
	mov [esp+0xc], ebx
	mov [esp+0x8], esi
	mov [esp+0x4], esi
	mov dword [esp], _cstring_hud_fade_offhand
	call Cvar_RegisterFloat
	mov [hud_fade_offhand], eax
	mov dword [esp+0x14], _cstring_the_time_for_the5
	mov dword [esp+0x10], 0x1
	mov [esp+0xc], ebx
	mov [esp+0x8], esi
	mov [esp+0x4], edi
	mov dword [esp], _cstring_hud_fade_sprint
	call Cvar_RegisterFloat
	mov [hud_fade_sprint], eax
	mov dword [esp+0x14], _cstring_the_health_level
	mov dword [esp+0x10], 0x1
	mov ebx, 0x3f8ccccd
	mov [esp+0xc], ebx
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x3f800000
	mov dword [esp], _cstring_hud_health_start
	call Cvar_RegisterFloat
	mov [hud_health_startpulse_injured], eax
	mov dword [esp+0x14], _cstring_the_health_level1
	mov dword [esp+0x10], 0x1
	mov [esp+0xc], ebx
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x3ea8f5c3
	mov dword [esp], _cstring_hud_health_start1
	call Cvar_RegisterFloat
	mov [hud_health_startpulse_critical], eax
	mov dword [esp+0x14], _cstring_the_pulse_rate_o
	mov dword [esp+0x10], 0x1
	mov ebx, 0x40400000
	mov [esp+0xc], ebx
	mov dword [esp+0x8], 0x3dcccccd
	mov dword [esp+0x4], 0x3f800000
	mov dword [esp], _cstring_hud_health_pulse
	call Cvar_RegisterFloat
	mov [hud_health_pulserate_injured], eax
	mov dword [esp+0x14], _cstring_the_pulse_rate_o1
	mov dword [esp+0x10], 0x1
	mov [esp+0xc], ebx
	mov dword [esp+0x8], 0x3dcccccd
	mov dword [esp+0x4], 0x3f000000
	mov dword [esp], _cstring_hud_health_pulse1
	call Cvar_RegisterFloat
	mov [hud_health_pulserate_critical], eax
	mov dword [esp+0x14], _cstring_the_time_for_the6
	mov dword [esp+0x10], 0x1
	mov dword [esp+0xc], 0x186a0
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x3e8
	mov dword [esp], _cstring_hud_deathquotefa
	call Cvar_RegisterInt
	mov [hud_deathQuoteFadeTime], eax
	mov dword [esp+0x14], _cstring_the_time_in_mill
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x2710
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x1f40
	mov dword [esp], _cstring_hud_healthoverla
	call Cvar_RegisterInt
	mov [hud_healthOverlay_regenPauseTime], eax
	mov dword [esp+0x14], _cstring_the_percentage_o
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x3f800000
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x3f0ccccd
	mov dword [esp], _cstring_hud_healthoverla1
	call Cvar_RegisterFloat
	mov [hud_healthOverlay_pulseStart], eax
	mov dword [esp+0x14], _cstring_time_in_millisec
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x3e8
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x96
	mov dword [esp], _cstring_hud_healthoverla2
	call Cvar_RegisterInt
	mov [hud_healthOverlay_phaseOne_pulseDuration], eax
	mov dword [esp+0x14], _cstring_alpha_multiplier
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x3f800000
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x3f333333
	mov dword [esp], _cstring_hud_healthoverla3
	call Cvar_RegisterFloat
	mov [hud_healthOverlay_phaseTwo_toAlphaMultiplier], eax
	mov dword [esp+0x14], _cstring_time_in_millisec1
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x3e8
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x140
	mov dword [esp], _cstring_hud_healthoverla4
	call Cvar_RegisterInt
	mov [hud_healthOverlay_phaseTwo_pulseDuration], eax
	mov dword [esp+0x14], _cstring_alpha_multiplier1
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x3f800000
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x3f19999a
	mov dword [esp], _cstring_hud_healthoverla5
	call Cvar_RegisterFloat
	mov [hud_healthOverlay_phaseThree_toAlphaMultiplier], eax
	mov dword [esp+0x14], _cstring_time_in_millisec2
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x3e8
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x190
	mov dword [esp], _cstring_hud_healthoverla6
	call Cvar_RegisterInt
	mov [hud_healthOverlay_phaseThree_pulseDuration], eax
	mov dword [esp+0x14], _cstring_alpha_multiplier2
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x3f800000
	mov [esp+0x8], esi
	mov [esp+0x4], esi
	mov dword [esp], _cstring_hud_healthoverla7
	call Cvar_RegisterFloat
	mov [hud_healthOverlay_phaseEnd_toAlpha], eax
	mov dword [esp+0x14], _cstring_time_in_millisec3
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x3e8
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x2bc
	mov dword [esp], _cstring_hud_healthoverla8
	call Cvar_RegisterInt
	mov [hud_healthOverlay_phaseEnd_pulseDuration], eax
	mov dword [esp+0x20], _cstring_the_color_of_the
	mov dword [esp+0x1c], 0x1
	mov dword [esp+0x18], 0x3f800000
	mov [esp+0x14], esi
	mov ebx, 0x3f4ccccd
	mov [esp+0x10], ebx
	mov [esp+0xc], ebx
	mov [esp+0x8], ebx
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_cg_sprintmeterfu
	call Cvar_RegisterVec4
	mov [cg_sprintMeterFullColor], eax
	mov dword [esp+0x20], _cstring_the_color_of_the1
	mov dword [esp+0x1c], 0x1
	mov dword [esp+0x18], 0x3f800000
	mov [esp+0x14], esi
	mov [esp+0x10], ebx
	mov edi, 0x3e4ccccd
	mov [esp+0xc], edi
	mov dword [esp+0x8], 0x3f000000
	mov dword [esp+0x4], 0x3f333333
	mov dword [esp], _cstring_cg_sprintmeterem
	call Cvar_RegisterVec4
	mov [cg_sprintMeterEmptyColor], eax
	mov dword [esp+0x20], _cstring_the_color_of_the2
	mov dword [esp+0x1c], 0x1
	mov dword [esp+0x18], 0x3f800000
	mov [esp+0x14], esi
	mov [esp+0x10], edi
	mov dword [esp+0xc], 0x3dcccccd
	mov dword [esp+0x8], 0x3dcccccd
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_cg_sprintmeterdi
	call Cvar_RegisterVec4
	mov [cg_sprintMeterDisabledColor], eax
	mov dword [esp+0x10], _cstring_controls_which_i
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], cg_drawTalkNames
	mov dword [esp], _cstring_cg_drawtalk
	call Cvar_RegisterEnum
	mov [cg_drawTalk], eax
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;CG_CheckPlayerForLowAmmoSpecific(cg_s const*, unsigned int)
CG_CheckPlayerForLowAmmoSpecific:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov esi, [ebp+0xc]
	mov edi, [ebp+0x8]
	add edi, 0x4613c
	test esi, esi
	jnz CG_CheckPlayerForLowAmmoSpecific_10
CG_CheckPlayerForLowAmmoSpecific_30:
	xor eax, eax
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_CheckPlayerForLowAmmoSpecific_10:
	mov [esp], esi
	call BG_AmmoForWeapon
	mov [esp+0x4], esi
	mov [esp], edi
	call BG_GetTotalAmmoReserve
	mov ebx, eax
	cmp eax, 0x3e8
	mov eax, 0x3e7
	cmovge ebx, eax
	mov [esp], esi
	call BG_GetWeaponDef
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], esi
	mov [esp], edi
	call BG_GetAmmoPlayerMax
	cmp eax, 0x3e7
	jle CG_CheckPlayerForLowAmmoSpecific_20
	movss xmm1, dword [_float_999_00000000]
CG_CheckPlayerForLowAmmoSpecific_40:
	cvtsi2ss xmm0, ebx
	mulss xmm1, [_float_0_20000000]
	ucomiss xmm1, xmm0
	jb CG_CheckPlayerForLowAmmoSpecific_30
	mov eax, 0x1
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_CheckPlayerForLowAmmoSpecific_20:
	test eax, eax
	js CG_CheckPlayerForLowAmmoSpecific_30
	cvtsi2ss xmm1, eax
	jmp CG_CheckPlayerForLowAmmoSpecific_40
	nop


;CG_CheckPlayerForLowClipSpecific(cg_s const*, unsigned int)
CG_CheckPlayerForLowClipSpecific:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0xc]
	mov esi, [ebp+0x8]
	add esi, 0x4613c
	test ebx, ebx
	jnz CG_CheckPlayerForLowClipSpecific_10
CG_CheckPlayerForLowClipSpecific_20:
	xor eax, eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
CG_CheckPlayerForLowClipSpecific_10:
	mov [esp], ebx
	call BG_WeaponIsClipOnly
	test eax, eax
	jnz CG_CheckPlayerForLowClipSpecific_20
	mov [esp], ebx
	call BG_ClipForWeapon
	mov esi, [esi+eax*4+0x35c]
	test esi, esi
	js CG_CheckPlayerForLowClipSpecific_20
	cmp esi, 0x3e8
	mov eax, 0x3e7
	cmovge esi, eax
	mov [esp], ebx
	call BG_GetWeaponDef
	mov edx, [eax+0x338]
	cmp edx, 0x3e7
	jle CG_CheckPlayerForLowClipSpecific_30
	movss xmm1, dword [_float_999_00000000]
CG_CheckPlayerForLowClipSpecific_40:
	cvtsi2ss xmm0, esi
	mulss xmm1, [eax+0x5bc]
	ucomiss xmm1, xmm0
	jb CG_CheckPlayerForLowClipSpecific_20
	mov eax, 0x1
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
CG_CheckPlayerForLowClipSpecific_30:
	test edx, edx
	jle CG_CheckPlayerForLowClipSpecific_20
	cvtsi2ss xmm1, edx
	jmp CG_CheckPlayerForLowClipSpecific_40
	nop


;Initialized global or static variables of cg_newDraw_mp:
SECTION .data
cg_drawTalkNames: dd _cstring_none, _cstring_all, _cstring_friendly, _cstring_enemy, 0x0, 0x0, 0x0, 0x0


;Initialized constant data of cg_newDraw_mp:
SECTION .rdata
_ZZ23CG_DrawStanceHintPrintsiPK9rectDef_sfPKffP6Font_sfiE5C.227: dd _cstring_gostand, _cstring_toggleprone, 0x0, 0x0, 0x0, 0x0, _cstring_gocrouch, _cstring_togglecrouch, _cstring_raisestance, _cstring_movedown, _cstring_moveup, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
_ZZ23CG_DrawStanceHintPrintsiPK9rectDef_sfPKffP6Font_sfiE5C.226: dd _cstring_gostand, _cstring_raisestance, _cstring_moveup, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, _cstring_goprone, _cstring_lowerstance, _cstring_toggleprone, _cstring_prone, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
_ZZ23CG_DrawStanceHintPrintsiPK9rectDef_sfPKffP6Font_sfiE5C.225: dd 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, _cstring_gocrouch, _cstring_togglecrouch, _cstring_lowerstance, _cstring_movedown, 0x0, 0x0, _cstring_goprone, _cstring_prone, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
pulseMags.138474: dd 0x3f800000, 0x3f4ccccd, 0x3f19999a, 0x3e99999a, 0x74a17, 0x7491d, 0x74a91, 0x74a7e, 0x74a17, 0x74a6b, 0x74a58, 0x74a45, 0x74a32, 0x74a1f, 0x0, 0x0, 0x7fffffff, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x7624f, 0x76658, 0x760af, 0x760af, 0x760af, 0x760af, 0x760af, 0x760af, 0x760af, 0x760af, 0x760af, 0x760af, 0x760af, 0x760af, 0x760af, 0x767f2, 0x760af, 0x760af, 0x760af, 0x760af, 0x760af, 0x760af, 0x760af, 0x760af, 0x760af, 0x760af, 0x760af, 0x760af, 0x760af, 0x760af, 0x760af, 0x760af, 0x760af, 0x760af, 0x760af, 0x760af, 0x760af, 0x760af, 0x760af, 0x760af, 0x760af, 0x760af, 0x760af, 0x760af, 0x760af, 0x760af, 0x760af, 0x760af, 0x760af, 0x760af, 0x760af, 0x760af, 0x760af, 0x760af, 0x760af, 0x760af, 0x760af, 0x760af, 0x760af, 0x760af, 0x760af, 0x760af, 0x760af, 0x760af, 0x760af, 0x760af, 0x767b1, 0x767ce, 0x760af, 0x760af, 0x760af, 0x760af, 0x760af, 0x760af, 0x76816, 0x7682e, 0x76852, 0x769dd, 0x760af, 0x760af, 0x760af, 0x760af, 0x760af, 0x760af, 0x760af, 0x76b6f, 0x760af, 0x760af, 0x760af, 0x760af, 0x760af, 0x760af, 0x760af, 0x76bec, 0x760af, 0x760af, 0x760af, 0x760af, 0x76ba3, 0x76bd8, 0x76c04, 0x76c40, 0x76c46, 0x76c82, 0x76c88, 0x76cbd, 0x760af, 0x76cc3, 0x76e30, 0x76e54, 0x76e6c, 0x76f4b, 0x76f6d, 0x76f88, 0x76fa3, 0x76fde, 0x760af, 0x760af, 0x760af, 0x760af, 0x760af, 0x760af, 0x760af, 0x760af, 0x760af, 0x760af, 0x760af, 0x760af, 0x760af, 0x760af, 0x760af, 0x760af, 0x760af, 0x760af, 0x760af, 0x760af, 0x760af, 0x760af, 0x760af, 0x760af, 0x7702f, 0x77081, 0x760af, 0x760af, 0x760af, 0x77092, 0x770c3, 0x770f4, 0x760af, 0x760af, 0x77125, 0x77171, 0x760af, 0x771bd, 0x771e7, 0x77218, 0x77257, 0x77296, 0x772d5, 0x760af, 0x77314, 0x77336, 0x77336, 0x77336, 0x77336, 0x77374, 0x760af, 0x760af, 0x760af, 0x760af, 0x760af, 0x760af, 0x760af, 0x760af, 0x760af, 0x760af, 0x760af, 0x760af, 0x760af, 0x760af, 0x760af, 0x760af, 0x760af, 0x760af, 0x760af, 0x760af, 0x760af, 0x760af, 0x7739e, 0x7739e, 0x7739e, 0x7739e, 0x760db, 0x76109, 0x76137, 0x76168, 0x760c9, 0x76199, 0x761c3, 0x761f4, 0x76225, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0


;Zero initialized global or static variables of cg_newDraw_mp:
SECTION .bss
cg_sprintMeterDisabledColor: resb 0x4
cg_sprintMeterEmptyColor: resb 0x4
cg_sprintMeterFullColor: resb 0x4
hud_healthOverlay_phaseEnd_pulseDuration: resb 0x4
hud_healthOverlay_phaseEnd_toAlpha: resb 0x4
hud_healthOverlay_regenPauseTime: resb 0x4
hud_healthOverlay_phaseThree_pulseDuration: resb 0x4
hud_healthOverlay_phaseThree_toAlphaMultiplier: resb 0x4
hud_healthOverlay_phaseTwo_pulseDuration: resb 0x4
hud_healthOverlay_phaseTwo_toAlphaMultiplier: resb 0x4
hud_healthOverlay_phaseOne_pulseDuration: resb 0x4
hud_healthOverlay_pulseStart: resb 0x4
cg_drawTalk: resb 0x4
hud_enable: resb 0x4
hud_fadeout_speed: resb 0x48
hud_fade_ammodisplay: resb 0x58
hud_fade_compass: resb 0x4
hud_fade_offhand: resb 0x4
hud_fade_healthbar: resb 0x4
hud_fade_sprint: resb 0x4
hud_fade_stance: resb 0x4
hud_health_startpulse_injured: resb 0x4
hud_deathQuoteFadeTime: resb 0x4
hud_health_pulserate_critical: resb 0x4
hud_health_pulserate_injured: resb 0x4
hud_health_startpulse_critical: resb 0x4


;All cstrings:
SECTION .rdata
_cstring_activate:		db "+activate",0
_cstring_hint_string:		db "Hint String",0
_cstring_key_use:		db "KEY_USE",0
_cstring_gostand:		db "+gostand",0
_cstring_platform_mantle:		db "PLATFORM_MANTLE",0
_cstring_moveup:		db "+moveup",0
_cstring_platform_stanceh:		db "PLATFORM_STANCEHINT_STAND",0
_cstring_platform_stanceh1:		db "PLATFORM_STANCEHINT_CROUCH",0
_cstring_platform_stanceh2:		db "PLATFORM_STANCEHINT_PRONE",0
_cstring__s:		db " %s",0
_cstring_platform_pickuph:		db "PLATFORM_PICKUPHEALTH",0
_cstring_platform_pickupn:		db "PLATFORM_PICKUPNEWWEAPON",0
_cstring_platform_swapwea:		db "PLATFORM_SWAPWEAPONS",0
_cstring_platform_throwba:		db "PLATFORM_THROWBACKGRENADE",0
_cstring_frag:		db "+frag",0
_cstring_voice_on:		db "voice_on",0
_cstring_g_teamcolor:		db "g_TeamColor",0
_cstring_client_i_has_inv:		db "client %i has invalid info but they are talking",0ah,0
_cstring_weapon_no_ammo:		db "WEAPON_NO_AMMO",0
_cstring_weapon_target_no:		db "WEAPON_TARGET_NOT_ENOUGH_CLEARANCE",0
_cstring_weapon_lockon_re:		db "WEAPON_LOCKON_REQUIRED",0
_cstring_weapon_target_to:		db "WEAPON_TARGET_TOO_CLOSE",0
_cstring_game_crouch_bloc:		db "GAME_CROUCH_BLOCKED",0
_cstring_game_stand_block:		db "GAME_STAND_BLOCKED",0
_cstring_weapon_no_specia:		db "WEAPON_NO_SPECIAL_GRENADE",0
_cstring_weapon_no_frag_g:		db "WEAPON_NO_FRAG_GRENADE",0
_cstring_holdbreath:		db "+holdbreath",0
_cstring_platform_hold_br:		db "PLATFORM_HOLD_BREATH",0
_cstring_melee_breath:		db "+melee_breath",0
_cstring_breath_sprint:		db "+breath_sprint",0
_cstring_cgame_prone_bloc:		db "CGAME_PRONE_BLOCKED_WEAPON",0
_cstring_cgame_prone_bloc1:		db "CGAME_PRONE_BLOCKED",0
_cstring_:		db "|",0
_cstring_s__s:		db "%s / %s",0
_cstring_s:		db "%s",0
_cstring_2i:		db "%2i",0
_cstring_3i:		db "%3i",0
_cstring_the_speed_that_t:		db "The speed that the HUD will fade at",0
_cstring_hud_fadeout_spee:		db "hud_fadeout_speed",0
_cstring_enable_hud_eleme:		db "Enable hud elements",0
_cstring_hud_enable:		db "hud_enable",0
_cstring_the_time_for_the:		db "The time for the ammo display to fade in seconds",0
_cstring_hud_fade_ammodis:		db "hud_fade_ammodisplay",0
_cstring_the_time_for_the1:		db "The time for the health bar to fade in seconds",0
_cstring_hud_fade_healthb:		db "hud_fade_healthbar",0
_cstring_the_time_for_the2:		db "The time for the compass to fade in seconds",0
_cstring_hud_fade_compass:		db "hud_fade_compass",0
_cstring_the_time_for_the3:		db "The time for the stance to fade in seconds",0
_cstring_hud_fade_stance:		db "hud_fade_stance",0
_cstring_the_time_for_the4:		db "The time for the offhand weapons to fade in seconds",0
_cstring_hud_fade_offhand:		db "hud_fade_offhand",0
_cstring_the_time_for_the5:		db "The time for the sprint meter to fade in seconds",0
_cstring_hud_fade_sprint:		db "hud_fade_sprint",0
_cstring_the_health_level:		db "The health level at which to start the ",27h,"injured",27h," pulse effect",0
_cstring_hud_health_start:		db "hud_health_startpulse_injured",0
_cstring_the_health_level1:		db "The health level at which to start the ",27h,"critical",27h," pulse effect",0
_cstring_hud_health_start1:		db "hud_health_startpulse_critical",0
_cstring_the_pulse_rate_o:		db "The pulse rate of the ",27h,"injured",27h," pulse effect",0
_cstring_hud_health_pulse:		db "hud_health_pulserate_injured",0
_cstring_the_pulse_rate_o1:		db "The pulse rate of the ",27h,"critical",27h," pulse effect",0
_cstring_hud_health_pulse1:		db "hud_health_pulserate_critical",0
_cstring_the_time_for_the6:		db "The time for the death quote to fade",0
_cstring_hud_deathquotefa:		db "hud_deathQuoteFadeTime",0
_cstring_the_time_in_mill:		db "The time in milliseconds before the health regeneration kicks in",0
_cstring_hud_healthoverla:		db "hud_healthOverlay_regenPauseTime",0
_cstring_the_percentage_o:		db "The percentage of full health at which the low-health warning overlay begins flashing",0
_cstring_hud_healthoverla1:		db "hud_healthOverlay_pulseStart",0
_cstring_time_in_millisec:		db "Time in milliseconds to ramp up to the first alpha value (the peak of the pulse)",0
_cstring_hud_healthoverla2:		db "hud_healthOverlay_phaseOne_pulseDuration",0
_cstring_alpha_multiplier:		db "Alpha multiplier for the second health overlay phase (percentage of the pulse peak)",0
_cstring_hud_healthoverla3:		db "hud_healthOverlay_phaseTwo_toAlphaMultiplier",0
_cstring_time_in_millisec1:		db "Time in milliseconds to fade the alpha to hud_healthOverlay_phaseTwo_toAlphaMultiplier",0
_cstring_hud_healthoverla4:		db "hud_healthOverlay_phaseTwo_pulseDuration",0
_cstring_alpha_multiplier1:		db "Alpha multiplier for the third health overlay phase (percentage of the pulse peak)",0
_cstring_hud_healthoverla5:		db "hud_healthOverlay_phaseThree_toAlphaMultiplier",0
_cstring_time_in_millisec2:		db "Time in milliseconds to fade the alpha to hud_healthOverlay_phaseThree_toAlphaMultiplier",0
_cstring_hud_healthoverla6:		db "hud_healthOverlay_phaseThree_pulseDuration",0
_cstring_alpha_multiplier2:		db "Alpha multiplier to fade to before turning off the overlay (percentage of the pulse peak)",0
_cstring_hud_healthoverla7:		db "hud_healthOverlay_phaseEnd_toAlpha",0
_cstring_time_in_millisec3:		db "Time in milliseconds to fade out the health overlay after it is done flashing",0
_cstring_hud_healthoverla8:		db "hud_healthOverlay_phaseEnd_pulseDuration",0
_cstring_the_color_of_the:		db "The color of the sprint meter when the sprint meter is full",0
_cstring_cg_sprintmeterfu:		db "cg_sprintMeterFullColor",0
_cstring_the_color_of_the1:		db "The color of the sprint meter when the sprint meter is empty",0
_cstring_cg_sprintmeterem:		db "cg_sprintMeterEmptyColor",0
_cstring_the_color_of_the2:		db "The color of the sprint meter when the sprint meter is disabled",0
_cstring_cg_sprintmeterdi:		db "cg_sprintMeterDisabledColor",0
_cstring_controls_which_i:		db "Controls which icons CG_TALKER ownerdraw draws",0
_cstring_cg_drawtalk:		db "cg_drawTalk",0
_cstring_none:		db "NONE",0
_cstring_all:		db "ALL",0
_cstring_friendly:		db "FRIENDLY",0
_cstring_enemy:		db "ENEMY",0
_cstring_toggleprone:		db "toggleprone",0
_cstring_gocrouch:		db "gocrouch",0
_cstring_togglecrouch:		db "togglecrouch",0
_cstring_raisestance:		db "raisestance",0
_cstring_movedown:		db "+movedown",0
_cstring_goprone:		db "goprone",0
_cstring_lowerstance:		db "lowerstance",0
_cstring_prone:		db "+prone",0



;All constant floats and doubles:
SECTION .rdata
_float__0_50000000:		dd 0xbf000000	; -0.5
_float_0_50000000:		dd 0x3f000000	; 0.5
_float_1_50000000:		dd 0x3fc00000	; 1.5
_float_0_00100000:		dd 0x3a83126f	; 0.001
_float_1_00000000:		dd 0x3f800000	; 1
_float_100_00000000:		dd 0x42c80000	; 100
_float_150_00000000:		dd 0x43160000	; 150
_float_10_00000000:		dd 0x41200000	; 10
_float_2_00000000:		dd 0x40000000	; 2
_float_1000_00000000:		dd 0x447a0000	; 1000
_float_0_20000000:		dd 0x3e4ccccd	; 0.2
_float_0_30000001:		dd 0x3e99999a	; 0.3
_float_0_00120000:		dd 0x3a9d4952	; 0.0012
_float_0_00000000:		dd 0x0	; 0
_float_0_69999999:		dd 0x3f333333	; 0.7
_float_0_80000001:		dd 0x3f4ccccd	; 0.8
_float_1500_00000000:		dd 0x44bb8000	; 1500
_float_540_00000000:		dd 0x44070000	; 540
_double_0_01745329:		dq 0x3f91df46a2529d39	; 0.0174533
_data16_7fffffff:		dd 0x7fffffff, 0x0, 0x0, 0x0	; OWORD
_data16_80000000:		dd 0x80000000, 0x0, 0x0, 0x0	; OWORD
_float_800_00000000:		dd 0x44480000	; 800
_float_5_00000000:		dd 0x40a00000	; 5
_float_28_00000000:		dd 0x41e00000	; 28
_float_8_00000000:		dd 0x41000000	; 8
_float_999_00000000:		dd 0x4479c000	; 999

