;Imports of cg_hudelem:
	extern memcpy
	extern strstr
	extern UI_GetKeyBindingLocalizedString
	extern strchr
	extern Q_strncpyz
	extern Q_stricmp
	extern sscanf
	extern cgArray
	extern Com_sprintf
	extern UI_FilterStringForButtonAnimation
	extern UI_SafeTranslateString
	extern Com_PrintWarning
	extern R_NormalizedTextScale
	extern cl_paused
	extern SEH_PrintStrlen
	extern CL_PlayTextFXPulseSounds
	extern cgMedia
	extern CL_DrawTextPhysicalWithEffects
	extern CG_ServerMaterialName
	extern CG_Flashbanged
	extern BG_LerpHudColors
	extern Material_RegisterHandle
	extern scrPlaceView
	extern cg_entitiesArray
	extern Vec2Normalize
	extern atan2f
	extern CL_DrawStretchPicPhysicalRotateXY
	extern CL_DrawStretchPicPhysical
	extern Vec2Distance
	extern colorYellow
	extern colorGreen
	extern qsort
	extern AngleNormalize360
	extern CG_DrawRotatedPicPhysical
	extern UI_GetFontHandle
	extern UI_TextHeight
	extern va
	extern UI_TextWidth
	extern CL_GetScreenAspectRatioDisplayPixel
	extern UI_AnyMenuVisible
	extern ScrPlace_ApplyX
	extern ScrPlace_ApplyY
	extern floorf
	extern Q_strncat
	extern CL_GetConfigString
	extern SEH_LocalizeTextMessage
	extern Cvar_RegisterBool
	extern Cvar_RegisterFloat
	extern CG_ShouldDrawHud
	extern FX_SpriteAdd

;Exports of cg_hudelem:
	global hudElemPausedBrightness
	global s_alignScale
	global compare_hudelems
	global ReplaceDirective
	global _ZZ17DrawHudElemStringiPK15ScreenPlacementPKcPK9hudelem_sP12cg_hudelem_tE9glowColor
	global DrawHudElemString
	global DrawOffscreenViewableWaypoint
	global CG_Draw2dHudElems
	global CG_HudElemRegisterDvars
	global CG_TranslateHudElemMessage
	global CG_AddDrawSurfsFor3dHudElems
	global waypointDebugDraw
	global waypointDistScaleRangeMax
	global waypointDistScaleRangeMin
	global waypointDistScaleSmallest
	global waypointIconHeight
	global waypointIconWidth
	global waypointOffscreenCornerRadius
	global waypointOffscreenDistanceThresholdAlpha
	global waypointOffscreenPadBottom
	global waypointOffscreenPadLeft
	global waypointOffscreenPadRight
	global waypointOffscreenPadTop
	global waypointOffscreenPointerDistance
	global waypointOffscreenPointerHeight
	global waypointOffscreenPointerWidth
	global waypointOffscreenRoundedCorners
	global waypointOffscreenScaleLength
	global waypointOffscreenScaleSmallest
	global waypointPlayerOffsetCrouch
	global waypointPlayerOffsetProne
	global waypointPlayerOffsetStand
	global waypointSplitscreenScale
	global waypointTweakY


SECTION .text


;compare_hudelems(void const*, void const*)
compare_hudelems:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [eax]
	mov eax, [ebp+0xc]
	mov eax, [eax]
	movss xmm0, dword [edx+0x80]
	subss xmm0, [eax+0x80]
	ucomiss xmm0, [_float_0_00000000]
	jb compare_hudelems_10
compare_hudelems_20:
	xor eax, eax
	ucomiss xmm0, [_float_0_00000000]
	seta al
	pop ebp
	ret
compare_hudelems_10:
	jp compare_hudelems_20
	mov eax, 0xffffffff
	pop ebp
	ret
	nop


;ReplaceDirective(int, unsigned int*, unsigned int*, char*)
ReplaceDirective:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x55c
	mov ebx, eax
	mov [ebp-0x538], edx
	mov [ebp-0x53c], ecx
	mov eax, [ecx]
	mov [esp+0x8], eax
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	lea edx, [ebp-0x31c]
	mov [esp], edx
	call memcpy
	mov edx, [ebp-0x53c]
	mov eax, [edx]
	mov byte [ebp+eax-0x31c], 0x0
	lea eax, [ebp-0x31c]
	mov edx, [ebp-0x538]
	add eax, [edx]
	mov dword [esp+0x4], _cstring_
	mov [esp], eax
	call strstr
	mov esi, eax
	test eax, eax
	jz ReplaceDirective_10
	mov dword [esp+0x4], _cstring_1
	mov [esp], eax
	call strstr
	mov [ebp-0x540], eax
	test eax, eax
	jz ReplaceDirective_10
	sub eax, esi
	sub eax, 0x2
	mov [ebp-0x534], eax
	jnz ReplaceDirective_20
ReplaceDirective_10:
	xor eax, eax
	add esp, 0x55c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ReplaceDirective_20:
	mov edx, eax
	lea eax, [esi+0x2]
	mov [esp+0x8], edx
	mov [esp+0x4], eax
	lea eax, [ebp-0x21c]
	mov [esp], eax
	call memcpy
	mov edx, [ebp-0x534]
	mov byte [ebp+edx-0x21c], 0x0
	lea eax, [ebp-0x11c]
	mov [esp+0x8], eax
	lea edx, [ebp-0x21c]
	mov [esp+0x4], edx
	mov [esp], ebx
	call UI_GetKeyBindingLocalizedString
	test eax, eax
	jnz ReplaceDirective_30
	mov dword [esp+0x4], 0x3a
	lea edx, [ebp-0x21c]
	mov [esp], edx
	call strchr
	mov edi, eax
	test eax, eax
	jz ReplaceDirective_40
	mov ebx, eax
	lea eax, [ebp-0x21c]
	sub ebx, eax
	mov [esp+0x8], ebx
	mov [esp+0x4], eax
	lea eax, [ebp-0x41c]
	mov [esp], eax
	call memcpy
	mov byte [ebp+ebx-0x41c], 0x0
	mov dword [esp+0x8], 0x100
	lea eax, [edi+0x1]
	mov [esp+0x4], eax
	lea eax, [ebp-0x51c]
	mov [esp], eax
	call Q_strncpyz
ReplaceDirective_80:
	mov dword [esp+0x4], _cstring_fake_intro_secon
	lea edx, [ebp-0x41c]
	mov [esp], edx
	call Q_stricmp
	test eax, eax
	jnz ReplaceDirective_50
	mov dword [ebp-0x1c], 0x0
	lea eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_d
	lea ebx, [ebp-0x51c]
	mov [esp], ebx
	call sscanf
	cmp dword [ebp-0x1c], 0x28
	ja ReplaceDirective_60
ReplaceDirective_90:
	mov eax, cgArray
	mov ecx, [eax+0x46128]
	mov edx, 0x10624dd3
	mov eax, ecx
	imul edx
	sar edx, 0x6
	mov eax, ecx
	sar eax, 0x1f
	sub edx, eax
	add edx, [ebp-0x1c]
	mov [ebp-0x1c], edx
	mov [esp+0xc], edx
	mov dword [esp+0x8], _cstring_02d
	mov dword [esp+0x4], 0x4
	lea edx, [ebp-0x11c]
	mov [esp], edx
	call Com_sprintf
	jmp ReplaceDirective_70
ReplaceDirective_30:
	mov dword [esp+0x4], 0x100
	lea eax, [ebp-0x11c]
	mov [esp], eax
	call UI_FilterStringForButtonAnimation
ReplaceDirective_70:
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	lea edi, [ebp-0x11c]
	repne scasb
	not ecx
	sub ecx, 0x1
	mov [ebp-0x530], ecx
	mov edx, [ebp-0x53c]
	mov eax, [edx]
	sub eax, [ebp-0x534]
	add eax, ecx
	lea edx, [eax-0x4]
	mov [ebp-0x52c], edx
	sub eax, 0x3
	cmp eax, 0x100
	jg ReplaceDirective_10
	mov edi, esi
	lea eax, [ebp-0x31c]
	sub edi, eax
	mov esi, [ebp+0x8]
	add esi, edi
	mov [esp+0x8], ecx
	lea eax, [ebp-0x11c]
	mov [esp+0x4], eax
	mov [esp], esi
	call memcpy
	add esi, [ebp-0x530]
	mov ebx, [ebp-0x52c]
	sub ebx, edi
	sub ebx, [ebp-0x530]
	mov eax, [ebp-0x540]
	add eax, 0x2
	mov [esp+0x8], ebx
	mov [esp+0x4], eax
	mov [esp], esi
	call memcpy
	mov byte [esi+ebx], 0x0
	mov eax, [ebp-0x530]
	add eax, edi
	mov edx, [ebp-0x538]
	mov [edx], eax
	mov edx, [ebp-0x52c]
	mov eax, [ebp-0x53c]
	mov [eax], edx
	mov eax, 0x1
	add esp, 0x55c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ReplaceDirective_50:
	mov dword [esp], _cstring_key_unbound
	call UI_SafeTranslateString
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_s
	mov dword [esp+0x4], 0x100
	lea eax, [ebp-0x11c]
	mov [esp], eax
	call Com_sprintf
	jmp ReplaceDirective_70
ReplaceDirective_40:
	mov dword [esp+0x8], 0x100
	lea eax, [ebp-0x21c]
	mov [esp+0x4], eax
	lea edx, [ebp-0x41c]
	mov [esp], edx
	call Q_strncpyz
	mov byte [ebp-0x51c], 0x0
	jmp ReplaceDirective_80
ReplaceDirective_60:
	mov dword [ebp-0x1c], 0x0
	mov dword [esp+0x10], 0x28
	mov dword [esp+0xc], 0x0
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_argument_s_given
	mov dword [esp], 0x1
	call Com_PrintWarning
	jmp ReplaceDirective_90


;DrawHudElemString(int, ScreenPlacement const*, char const*, hudelem_s const*, cg_hudelem_t*)
DrawHudElemString:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov ebx, [ebp+0xc]
	mov esi, [ebp+0x14]
	mov edi, [ebp+0x18]
	movss xmm2, dword [edi+0xc]
	subss xmm2, [edi+0x220]
	xorps xmm2, [_data16_80000000]
	mov eax, [edi+0x234]
	mov edx, [esi+0x6c]
	test edx, edx
	jle DrawHudElemString_10
	sub eax, [esi+0x68]
	test eax, eax
	jle DrawHudElemString_20
	cmp edx, eax
	jg DrawHudElemString_30
DrawHudElemString_10:
	mov eax, [esi+0x1c]
	and eax, 0x3
	mulss xmm2, [eax*4+s_alignScale]
	movss xmm0, dword [edi+0x4]
	subss xmm0, xmm2
	movss [ebp-0x28], xmm0
DrawHudElemString_80:
	mov eax, [edi+0x21c]
	mov [esp+0x4], eax
	mov eax, [edi+0x218]
	mov [esp], eax
	call R_NormalizedTextScale
	fstp dword [ebp-0x24]
	movss xmm0, dword [ebp-0x24]
	mulss xmm0, [ebx+0x14]
	movss [ebp-0x20], xmm0
	mulss xmm0, [ebx]
	movss [ebp-0x20], xmm0
	movss xmm2, dword [edi+0x220]
	movss [ebp-0x1c], xmm2
	mov ebx, [esi+0x88]
	test ebx, ebx
	jz DrawHudElemString_40
	mov eax, [edi+0x234]
	cmp ebx, eax
	cmovg ebx, eax
DrawHudElemString_40:
	lea edx, [esi+0x84]
	movzx eax, byte [esi+0x84]
	cvtsi2ss xmm0, eax
	movss xmm1, dword [_float_0_00392157]
	mulss xmm0, xmm1
	movss [_ZZ17DrawHudElemStringiPK15ScreenPlacementPKcPK9hudelem_sP12cg_hudelem_tE9glowColor], xmm0
	movzx eax, byte [edx+0x1]
	cvtsi2ss xmm0, eax
	mulss xmm0, xmm1
	movss [_ZZ17DrawHudElemStringiPK15ScreenPlacementPKcPK9hudelem_sP12cg_hudelem_tE9glowColor+0x4], xmm0
	movzx eax, byte [edx+0x2]
	cvtsi2ss xmm0, eax
	mulss xmm0, xmm1
	movss [_ZZ17DrawHudElemStringiPK15ScreenPlacementPKcPK9hudelem_sP12cg_hudelem_tE9glowColor+0x8], xmm0
	movzx eax, byte [edx+0x3]
	cvtsi2ss xmm0, eax
	mulss xmm0, xmm1
	movss [_ZZ17DrawHudElemStringiPK15ScreenPlacementPKcPK9hudelem_sP12cg_hudelem_tE9glowColor+0xc], xmm0
	mov eax, cl_paused
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	jz DrawHudElemString_50
	mov eax, [hudElemPausedBrightness]
	movss xmm0, dword [eax+0xc]
	movaps xmm1, xmm0
	mulss xmm1, [_ZZ17DrawHudElemStringiPK15ScreenPlacementPKcPK9hudelem_sP12cg_hudelem_tE9glowColor]
	movss [_ZZ17DrawHudElemStringiPK15ScreenPlacementPKcPK9hudelem_sP12cg_hudelem_tE9glowColor], xmm1
	movaps xmm1, xmm0
	mulss xmm1, [_ZZ17DrawHudElemStringiPK15ScreenPlacementPKcPK9hudelem_sP12cg_hudelem_tE9glowColor+0x4]
	movss [_ZZ17DrawHudElemStringiPK15ScreenPlacementPKcPK9hudelem_sP12cg_hudelem_tE9glowColor+0x4], xmm1
	mulss xmm0, [_ZZ17DrawHudElemStringiPK15ScreenPlacementPKcPK9hudelem_sP12cg_hudelem_tE9glowColor+0x8]
	movss [_ZZ17DrawHudElemStringiPK15ScreenPlacementPKcPK9hudelem_sP12cg_hudelem_tE9glowColor+0x8], xmm0
DrawHudElemString_50:
	test ebx, ebx
	jz DrawHudElemString_60
	mov eax, [ebp+0x10]
	mov [esp], eax
	call SEH_PrintStrlen
	mov edx, [esi+0x98]
	mov ecx, cgArray
	lea edx, [ecx+edx*4+0xfd768]
	mov [esp+0x18], edx
	mov edx, [esi+0x90]
	mov [esp+0x14], edx
	mov edx, [esi+0x8c]
	mov [esp+0x10], edx
	mov [esp+0xc], ebx
	mov [esp+0x8], eax
	mov eax, [edi+0x234]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CL_PlayTextFXPulseSounds
DrawHudElemString_60:
	mov eax, [esi+0x94]
	mov [esp+0x3c], eax
	mov eax, [esi+0x90]
	mov [esp+0x38], eax
	mov eax, [esi+0x8c]
	mov [esp+0x34], eax
	mov [esp+0x30], ebx
	mov edx, cgMedia
	mov eax, [edx+0x27a4]
	mov [esp+0x2c], eax
	mov eax, [edx+0x27a0]
	mov [esp+0x28], eax
	mov dword [esp+0x24], _ZZ17DrawHudElemStringiPK15ScreenPlacementPKcPK9hudelem_sP12cg_hudelem_tE9glowColor
	mov dword [esp+0x20], 0x3
	lea eax, [edi+0x224]
	mov [esp+0x1c], eax
	movss xmm0, dword [ebp-0x24]
	movss [esp+0x18], xmm0
	movss xmm2, dword [ebp-0x20]
	movss [esp+0x14], xmm2
	movss xmm4, dword [ebp-0x28]
	addss xmm4, [ebp-0x1c]
	movss [esp+0x10], xmm4
	mov eax, [edi]
	mov [esp+0xc], eax
	mov eax, [edi+0x218]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x7fffffff
	mov eax, [ebp+0x10]
	mov [esp], eax
	call CL_DrawTextPhysicalWithEffects
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
DrawHudElemString_30:
	cvtsi2ss xmm3, eax
	cvtsi2ss xmm0, edx
	divss xmm3, xmm0
	ucomiss xmm3, [_float_1_00000000]
	jz DrawHudElemString_70
DrawHudElemString_90:
	movss xmm1, dword [edi+0x4]
	mov eax, [esi+0x60]
	and eax, 0x3
	movaps xmm0, xmm2
	mulss xmm0, [eax*4+s_alignScale]
	movaps xmm4, xmm1
	subss xmm4, xmm0
	movaps xmm0, xmm4
	mov eax, [esi+0x1c]
	and eax, 0x3
	mulss xmm2, [eax*4+s_alignScale]
	subss xmm1, xmm2
	subss xmm4, xmm1
	mulss xmm3, xmm4
	addss xmm0, xmm3
	movss [ebp-0x28], xmm0
	jmp DrawHudElemString_80
DrawHudElemString_70:
	jnp DrawHudElemString_10
	jmp DrawHudElemString_90
DrawHudElemString_20:
	pxor xmm3, xmm3
	jmp DrawHudElemString_90


;DrawOffscreenViewableWaypoint(int, hudelem_s const*)
DrawOffscreenViewableWaypoint:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x13c
	mov ebx, [ebp+0x8]
	mov edi, [ebp+0xc]
	mov dword [esp+0xc], 0x40
	lea esi, [ebp-0x9c]
	mov [esp+0x8], esi
	mov eax, [edi+0x44]
	mov [esp+0x4], eax
	mov [esp], ebx
	call CG_ServerMaterialName
	test eax, eax
	jnz DrawOffscreenViewableWaypoint_10
DrawOffscreenViewableWaypoint_20:
	add esp, 0x13c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
DrawOffscreenViewableWaypoint_10:
	mov [esp], ebx
	call CG_Flashbanged
	test al, al
	jnz DrawOffscreenViewableWaypoint_20
	lea eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov edx, cgArray
	mov eax, [edx+0x46128]
	mov [esp+0x4], eax
	mov [esp], edi
	call BG_LerpHudColors
	cmp byte [ebp-0x19], 0x0
	jz DrawOffscreenViewableWaypoint_20
	mov dword [esp+0x4], 0x7
	mov [esp], esi
	call Material_RegisterHandle
	mov [ebp-0xf4], eax
	movzx eax, byte [ebp-0x1c]
	cvtsi2ss xmm0, eax
	movss xmm1, dword [_float_0_00392157]
	mulss xmm0, xmm1
	movss [ebp-0x5c], xmm0
	movzx eax, byte [ebp-0x1b]
	cvtsi2ss xmm0, eax
	mulss xmm0, xmm1
	movss [ebp-0x58], xmm0
	movzx eax, byte [ebp-0x1a]
	cvtsi2ss xmm0, eax
	mulss xmm0, xmm1
	movss [ebp-0x54], xmm0
	movzx eax, byte [ebp-0x19]
	cvtsi2ss xmm0, eax
	mulss xmm0, xmm1
	movss [ebp-0x50], xmm0
	mov eax, cl_paused
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	jz DrawOffscreenViewableWaypoint_30
	mov eax, [hudElemPausedBrightness]
	movss xmm0, dword [eax+0xc]
	movaps xmm1, xmm0
	mulss xmm1, [ebp-0x5c]
	movss [ebp-0x5c], xmm1
	movaps xmm1, xmm0
	mulss xmm1, [ebp-0x58]
	movss [ebp-0x58], xmm1
	mulss xmm0, [ebp-0x54]
	movss [ebp-0x54], xmm0
DrawOffscreenViewableWaypoint_30:
	mov eax, ebx
	shl eax, 0x6
	lea ebx, [eax+ebx*4]
	add ebx, scrPlaceView
	movss xmm1, dword [ebx]
	movss xmm2, dword [ebx+0x4]
	movaps xmm0, xmm1
	addss xmm0, xmm2
	movss xmm3, dword [_float_0_50000000]
	mulss xmm3, xmm0
	movss [ebp-0xf0], xmm3
	mov eax, [waypointIconWidth]
	movaps xmm4, xmm1
	mulss xmm4, [eax+0xc]
	movss [ebp-0xec], xmm4
	mov eax, [waypointIconHeight]
	movaps xmm0, xmm2
	mulss xmm0, [eax+0xc]
	movss [ebp-0xe8], xmm0
	mov eax, [waypointOffscreenPointerWidth]
	movaps xmm3, xmm1
	mulss xmm3, [eax+0xc]
	movss [ebp-0xe4], xmm3
	mov eax, [waypointOffscreenPointerHeight]
	movaps xmm4, xmm2
	mulss xmm4, [eax+0xc]
	movss [ebp-0xe0], xmm4
	mov eax, [waypointOffscreenPointerDistance]
	movss xmm0, dword [ebp-0xf0]
	mulss xmm0, [eax+0xc]
	movss [ebp-0xdc], xmm0
	mov eax, [waypointOffscreenDistanceThresholdAlpha]
	movss xmm3, dword [ebp-0xf0]
	mulss xmm3, [eax+0xc]
	movss xmm0, dword [_float_0_10000000]
	maxss xmm0, xmm3
	movss [ebp-0xd8], xmm0
	movaps xmm0, xmm4
	mulss xmm0, [_float_0_50000000]
	addss xmm0, [ebp-0xdc]
	mov eax, [waypointOffscreenPadLeft]
	movaps xmm4, xmm1
	mulss xmm4, [eax+0xc]
	addss xmm4, xmm0
	movss [ebp-0xd4], xmm4
	mov eax, [waypointOffscreenPadRight]
	movaps xmm6, xmm1
	mulss xmm6, [eax+0xc]
	addss xmm6, xmm0
	mov eax, [waypointOffscreenPadTop]
	movaps xmm7, xmm2
	mulss xmm7, [eax+0xc]
	addss xmm7, xmm0
	mov eax, [waypointOffscreenPadBottom]
	movaps xmm5, xmm2
	mulss xmm5, [eax+0xc]
	addss xmm5, xmm0
	mov eax, [waypointTweakY]
	mulss xmm2, [eax+0xc]
	movss [ebp-0xcc], xmm2
	mov ecx, [edi+0x10]
	cmp ecx, 0x3ff
	jz DrawOffscreenViewableWaypoint_40
	mov eax, cgArray
	cmp ecx, [eax+0x4916c]
	jz DrawOffscreenViewableWaypoint_20
	lea eax, [ecx*4]
	mov edx, ecx
	shl edx, 0x5
	sub edx, eax
	mov eax, edx
	shl eax, 0x4
	add edx, eax
	add edx, cg_entitiesArray
	cmp byte [edx+0x1c0], 0x0
	jz DrawOffscreenViewableWaypoint_50
	lea eax, [edx+0x1c]
	movss xmm0, dword [edx+0x1c]
	movss [ebp-0xac], xmm0
	movss xmm1, dword [eax+0x4]
	movss [ebp-0xb0], xmm1
	movss xmm2, dword [eax+0x8]
	movss [ebp-0xb4], xmm2
	cmp dword [edx+0xd0], 0x1
	jz DrawOffscreenViewableWaypoint_60
	movaps xmm4, xmm0
	movaps xmm3, xmm1
DrawOffscreenViewableWaypoint_360:
	mov eax, cgArray
	subss xmm4, [eax+0x492e0]
	subss xmm3, [eax+0x492e4]
	subss xmm2, [eax+0x492e8]
	xor ecx, ecx
	lea edx, [eax+0x492e0]
DrawOffscreenViewableWaypoint_70:
	movaps xmm0, xmm4
	mulss xmm0, [edx+0xc]
	movaps xmm1, xmm3
	mulss xmm1, [edx+0x10]
	addss xmm0, xmm1
	movaps xmm1, xmm2
	mulss xmm1, [edx+0x14]
	addss xmm0, xmm1
	movss [ebp+ecx*4-0x4c], xmm0
	add ecx, 0x1
	add edx, 0xc
	cmp ecx, 0x3
	jnz DrawOffscreenViewableWaypoint_70
	movss xmm2, dword [ebp-0x4c]
	pxor xmm0, xmm0
	movss [ebp-0xf8], xmm0
	ucomiss xmm0, xmm2
	ja DrawOffscreenViewableWaypoint_80
	movss xmm1, dword [ebx+0x28]
	mulss xmm1, [_float_0_50000000]
	movss xmm0, dword [ebp-0x48]
	divss xmm0, dword [eax+0x492d8]
	divss xmm0, xmm2
	movss xmm3, dword [_float_1_00000000]
	movaps xmm4, xmm3
	subss xmm4, xmm0
	mulss xmm1, xmm4
	movss [ebp-0x3c], xmm1
	movss xmm1, dword [ebx+0x2c]
	mulss xmm1, [_float_0_50000000]
	movss xmm0, dword [ebp-0x44]
	divss xmm0, dword [eax+0x492dc]
	divss xmm0, xmm2
	subss xmm3, xmm0
	mulss xmm1, xmm3
	movss [ebp-0x38], xmm1
DrawOffscreenViewableWaypoint_440:
	movss xmm0, dword [ebp-0xcc]
	addss xmm0, [ebp-0x38]
	movss [ebp-0x38], xmm0
	movss xmm1, dword [_float_0_50000000]
	mulss xmm1, [ebx+0x28]
	movss [ebp-0xc8], xmm1
	movss xmm2, dword [_float_0_50000000]
	mulss xmm2, [ebx+0x2c]
	movss [ebp-0xc4], xmm2
	movss xmm1, dword [ebp-0x3c]
	movss [ebp-0x4c], xmm1
	movss [ebp-0x48], xmm0
	subss xmm1, [ebp-0xc8]
	movss [ebp-0x3c], xmm1
	subss xmm0, xmm2
	movss [ebp-0x38], xmm0
	movss xmm3, dword [ebp-0xd4]
	addss xmm3, [ebx+0x30]
	subss xmm3, [ebp-0xc8]
	movss xmm0, dword [ebx+0x28]
	subss xmm0, [ebx+0x38]
	addss xmm6, xmm0
	movss xmm4, dword [ebp-0xc8]
	subss xmm4, xmm6
	movaps xmm6, xmm4
	movaps xmm2, xmm7
	addss xmm2, [ebx+0x34]
	subss xmm2, [ebp-0xc4]
	movss xmm0, dword [ebx+0x2c]
	subss xmm0, [ebx+0x3c]
	addss xmm5, xmm0
	movss xmm4, dword [ebp-0xc4]
	subss xmm4, xmm5
	ucomiss xmm3, xmm1
	jbe DrawOffscreenViewableWaypoint_90
	movaps xmm0, xmm3
DrawOffscreenViewableWaypoint_410:
	divss xmm0, xmm1
	mulss xmm1, xmm0
	movss [ebp-0x3c], xmm1
	mulss xmm0, [ebp-0x38]
	movss [ebp-0x38], xmm0
	mov edi, 0x1
DrawOffscreenViewableWaypoint_330:
	ucomiss xmm2, xmm0
	jbe DrawOffscreenViewableWaypoint_100
	movaps xmm1, xmm2
DrawOffscreenViewableWaypoint_350:
	divss xmm1, xmm0
	movaps xmm0, xmm1
	mulss xmm1, [ebp-0x3c]
	movss [ebp-0x3c], xmm1
	mulss xmm0, [ebp-0x38]
	movss [ebp-0x38], xmm0
	mov edi, 0x1
DrawOffscreenViewableWaypoint_340:
	mov eax, [waypointOffscreenRoundedCorners]
	cmp byte [eax+0xc], 0x0
	jz DrawOffscreenViewableWaypoint_110
	movss xmm0, dword [ebx]
	movss [ebp-0xb8], xmm0
	addss xmm0, [ebx+0x4]
	movss [ebp-0xb8], xmm0
	mov eax, [waypointOffscreenCornerRadius]
	mulss xmm0, [eax+0xc]
	movss xmm1, dword [_float_0_50000000]
	mulss xmm1, xmm0
	movss [ebp-0xb8], xmm1
	movss xmm0, dword [ebp-0xf8]
	ucomiss xmm0, [ebp-0x3c]
	seta byte [ebp-0xbe]
	ucomiss xmm0, [ebp-0x38]
	seta byte [ebp-0xbd]
	cmp byte [ebp-0xbe], 0x0
	jz DrawOffscreenViewableWaypoint_120
	movaps xmm0, xmm1
	addss xmm0, xmm3
DrawOffscreenViewableWaypoint_390:
	movss [ebp-0x2c], xmm0
	cmp byte [ebp-0xbd], 0x0
	jz DrawOffscreenViewableWaypoint_130
	movss xmm0, dword [ebp-0xb8]
	addss xmm0, xmm2
DrawOffscreenViewableWaypoint_380:
	movss [ebp-0x28], xmm0
	mov eax, [waypointDebugDraw]
	cmp byte [eax+0xc], 0x0
	jnz DrawOffscreenViewableWaypoint_140
DrawOffscreenViewableWaypoint_500:
	movss xmm0, dword [ebp-0x3c]
	subss xmm0, [ebp-0x2c]
	movss [ebp-0x24], xmm0
	movss xmm0, dword [ebp-0x38]
	subss xmm0, [ebp-0x28]
	movss [ebp-0x20], xmm0
	lea eax, [ebp-0x24]
	mov [esp], eax
	call Vec2Normalize
	fstp st0
	cmp byte [ebp-0xbe], 0x0
	jz DrawOffscreenViewableWaypoint_150
	pxor xmm1, xmm1
	movss [ebp-0xf8], xmm1
	ucomiss xmm1, [ebp-0x24]
	ja DrawOffscreenViewableWaypoint_160
DrawOffscreenViewableWaypoint_280:
	xor edx, edx
DrawOffscreenViewableWaypoint_290:
	cmp byte [ebp-0xbd], 0x0
	jnz DrawOffscreenViewableWaypoint_170
	movss xmm0, dword [ebp-0x20]
	ucomiss xmm0, [ebp-0xf8]
	jbe DrawOffscreenViewableWaypoint_180
DrawOffscreenViewableWaypoint_260:
	mov eax, 0x1
DrawOffscreenViewableWaypoint_270:
	test dl, dl
	jnz DrawOffscreenViewableWaypoint_190
DrawOffscreenViewableWaypoint_110:
	movss xmm0, dword [ebp-0xc8]
	addss xmm0, [ebp-0x3c]
	movss [ebp-0x3c], xmm0
	movss xmm1, dword [ebp-0xc4]
	addss xmm1, [ebp-0x38]
	movss [ebp-0x38], xmm1
	mov eax, edi
	test al, al
	jnz DrawOffscreenViewableWaypoint_200
DrawOffscreenViewableWaypoint_370:
	mov edx, edi
	test dl, dl
	jz DrawOffscreenViewableWaypoint_210
	pxor xmm0, xmm0
	movss [ebp-0xf8], xmm0
	movss xmm1, dword [ebp-0xd0]
	ucomiss xmm1, xmm0
	jbe DrawOffscreenViewableWaypoint_220
	mov eax, [ebp-0x5c]
	mov [ebp-0x4c], eax
	mov eax, [ebp-0x58]
	mov [ebp-0x48], eax
	mov eax, [ebp-0x54]
	mov [ebp-0x44], eax
	mov eax, [ebp-0x50]
	mov [ebp-0x40], eax
	movss xmm2, dword [ebp-0xd8]
	ucomiss xmm2, xmm1
	jbe DrawOffscreenViewableWaypoint_230
	movaps xmm0, xmm1
	divss xmm0, xmm2
	mulss xmm0, [ebp-0x40]
	movss [ebp-0x40], xmm0
DrawOffscreenViewableWaypoint_230:
	mov eax, [waypointOffscreenScaleLength]
	movss xmm0, dword [ebp-0xf0]
	mulss xmm0, [eax+0xc]
	ucomiss xmm0, [ebp-0xd0]
	jbe DrawOffscreenViewableWaypoint_240
	movss xmm3, dword [ebp-0xd0]
	divss xmm3, xmm0
	movaps xmm0, xmm3
	movss xmm1, dword [_float_1_00000000]
	subss xmm1, xmm3
	mov eax, [waypointOffscreenScaleSmallest]
	mulss xmm0, [eax+0xc]
	addss xmm1, xmm0
DrawOffscreenViewableWaypoint_450:
	movss xmm4, dword [ebp-0xec]
	mulss xmm4, xmm1
	movss [ebp-0xec], xmm4
	mulss xmm1, [ebp-0xe8]
	movss [ebp-0xe8], xmm1
	mov eax, cgMedia
	mov eax, [eax+0x2750]
	mov [esp+0x28], eax
	lea eax, [ebp-0x4c]
	mov [esp+0x24], eax
	mov eax, [ebp-0x30]
	xor eax, 0x80000000
	mov [esp+0x4], eax
	mov eax, [ebp-0x34]
	mov [esp], eax
	call atan2f
	fstp dword [ebp-0x10c]
	movss xmm0, dword [ebp-0x10c]
	mulss xmm0, [_float_180_00000000]
	cvtss2sd xmm0, xmm0
	divsd xmm0, qword [_double_3_14159265]
	cvtsd2ss xmm0, xmm0
	movss [esp+0x20], xmm0
	mov dword [esp+0x1c], 0x3f800000
	mov dword [esp+0x18], 0x3f800000
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x0
	movss xmm0, dword [ebp-0xe0]
	movss [esp+0xc], xmm0
	movss xmm1, dword [ebp-0xe4]
	movss [esp+0x8], xmm1
	movss xmm0, dword [ebp-0xdc]
	mulss xmm0, [ebp-0x30]
	addss xmm0, [ebp-0x38]
	movss xmm1, dword [_float__0_50000000]
	movss xmm2, dword [ebp-0xe0]
	mulss xmm2, xmm1
	addss xmm0, xmm2
	movss [esp+0x4], xmm0
	movss xmm3, dword [ebp-0xdc]
	mulss xmm3, [ebp-0x34]
	addss xmm3, [ebp-0x3c]
	movss [ebp-0xdc], xmm3
	mulss xmm1, [ebp-0xe4]
	addss xmm3, xmm1
	movss [esp], xmm3
	call CL_DrawStretchPicPhysicalRotateXY
	pxor xmm4, xmm4
	movss [ebp-0xf8], xmm4
DrawOffscreenViewableWaypoint_220:
	mov eax, cgArray
	movss xmm1, dword [ebp-0xac]
	subss xmm1, [eax+0x492e0]
	movss [ebp-0xac], xmm1
	movss xmm2, dword [ebp-0xb0]
	subss xmm2, [eax+0x492e4]
	movss [ebp-0xb0], xmm2
	movss xmm3, dword [ebp-0xb4]
	subss xmm3, [eax+0x492e8]
	movss [ebp-0xb4], xmm3
	mulss xmm1, xmm1
	mulss xmm2, xmm2
	addss xmm1, xmm2
	mulss xmm3, xmm3
	addss xmm1, xmm3
	movss [ebp-0xac], xmm1
	sqrtss xmm1, xmm1
	mov eax, [waypointDistScaleRangeMin]
	movss xmm0, dword [eax+0xc]
	ucomiss xmm0, xmm1
	jb DrawOffscreenViewableWaypoint_250
	movss xmm2, dword [_float_1_00000000]
DrawOffscreenViewableWaypoint_310:
	movss xmm1, dword [ebp-0xec]
	mulss xmm1, xmm2
	movss xmm0, dword [ebp-0xe8]
	mulss xmm0, xmm2
	mov eax, [ebp-0xf4]
	mov [esp+0x24], eax
	lea eax, [ebp-0x5c]
	mov [esp+0x20], eax
	mov dword [esp+0x1c], 0x3f800000
	mov dword [esp+0x18], 0x3f800000
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x0
	movss [esp+0xc], xmm0
	movss [esp+0x8], xmm1
	movss xmm2, dword [_float__0_50000000]
	mulss xmm0, xmm2
	addss xmm0, [ebp-0x38]
	movss [esp+0x4], xmm0
	mulss xmm1, xmm2
	addss xmm1, [ebp-0x3c]
	movss [esp], xmm1
	call CL_DrawStretchPicPhysical
	jmp DrawOffscreenViewableWaypoint_20
DrawOffscreenViewableWaypoint_50:
	mov [esp+0x8], ecx
	mov dword [esp+0x4], _cstring_drawoffscreenvie
	mov dword [esp], 0x1
	call Com_PrintWarning
	jmp DrawOffscreenViewableWaypoint_20
DrawOffscreenViewableWaypoint_170:
	movss xmm3, dword [ebp-0xf8]
	ucomiss xmm3, [ebp-0x20]
	ja DrawOffscreenViewableWaypoint_260
DrawOffscreenViewableWaypoint_180:
	xor eax, eax
	jmp DrawOffscreenViewableWaypoint_270
DrawOffscreenViewableWaypoint_150:
	pxor xmm2, xmm2
	movss [ebp-0xf8], xmm2
	movss xmm0, dword [ebp-0x24]
	ucomiss xmm0, xmm2
	jbe DrawOffscreenViewableWaypoint_280
DrawOffscreenViewableWaypoint_160:
	mov edx, 0x1
	jmp DrawOffscreenViewableWaypoint_290
DrawOffscreenViewableWaypoint_210:
	pxor xmm0, xmm0
	movss [ebp-0xf8], xmm0
	jmp DrawOffscreenViewableWaypoint_220
DrawOffscreenViewableWaypoint_250:
	mov eax, [waypointDistScaleRangeMax]
	movss xmm2, dword [eax+0xc]
	ucomiss xmm1, xmm2
	jb DrawOffscreenViewableWaypoint_300
	mov eax, [waypointDistScaleSmallest]
	movss xmm2, dword [eax+0xc]
	jmp DrawOffscreenViewableWaypoint_310
DrawOffscreenViewableWaypoint_90:
	ucomiss xmm1, xmm6
	ja DrawOffscreenViewableWaypoint_320
	xor edi, edi
	movss xmm0, dword [ebp-0x38]
	jmp DrawOffscreenViewableWaypoint_330
DrawOffscreenViewableWaypoint_100:
	ucomiss xmm0, xmm4
	jbe DrawOffscreenViewableWaypoint_340
	movaps xmm1, xmm4
	jmp DrawOffscreenViewableWaypoint_350
DrawOffscreenViewableWaypoint_40:
	movss xmm0, dword [edi+0xc]
	movss [ebp-0xb4], xmm0
	movss xmm1, dword [edi+0x8]
	movss [ebp-0xb0], xmm1
	movss xmm2, dword [edi+0x4]
	movss [ebp-0xac], xmm2
	movaps xmm4, xmm2
	movaps xmm3, xmm1
	movss xmm2, dword [ebp-0xb4]
	jmp DrawOffscreenViewableWaypoint_360
DrawOffscreenViewableWaypoint_200:
	lea eax, [ebp-0x4c]
	mov [esp+0x4], eax
	lea eax, [ebp-0x3c]
	mov [esp], eax
	call Vec2Distance
	fstp dword [ebp-0xd0]
	movss xmm0, dword [ebp-0x4c]
	subss xmm0, [ebp-0x3c]
	movss [ebp-0x34], xmm0
	movss xmm0, dword [ebp-0x48]
	subss xmm0, [ebp-0x38]
	movss [ebp-0x30], xmm0
	lea eax, [ebp-0x34]
	mov [esp], eax
	call Vec2Normalize
	fstp st0
	jmp DrawOffscreenViewableWaypoint_370
DrawOffscreenViewableWaypoint_130:
	movaps xmm0, xmm4
	subss xmm0, [ebp-0xb8]
	jmp DrawOffscreenViewableWaypoint_380
DrawOffscreenViewableWaypoint_120:
	movaps xmm0, xmm6
	subss xmm0, [ebp-0xb8]
	jmp DrawOffscreenViewableWaypoint_390
DrawOffscreenViewableWaypoint_300:
	subss xmm2, xmm0
	movss xmm4, dword [ebp-0xf8]
	ucomiss xmm4, xmm2
	jae DrawOffscreenViewableWaypoint_400
	movss xmm3, dword [_float_1_00000000]
DrawOffscreenViewableWaypoint_520:
	subss xmm1, xmm0
	movaps xmm0, xmm1
	divss xmm0, xmm2
	movaps xmm2, xmm3
	subss xmm2, xmm0
	mov eax, [waypointDistScaleSmallest]
	mulss xmm0, [eax+0xc]
	addss xmm2, xmm0
	jmp DrawOffscreenViewableWaypoint_310
DrawOffscreenViewableWaypoint_190:
	test al, al
	jz DrawOffscreenViewableWaypoint_110
	lea eax, [ebp-0x3c]
	mov [esp+0x4], eax
	lea eax, [ebp-0x2c]
	mov [esp], eax
	call Vec2Distance
	fstp dword [ebp-0xbc]
	movss xmm4, dword [ebp-0xbc]
	ucomiss xmm4, [ebp-0xb8]
	jbe DrawOffscreenViewableWaypoint_110
	movss xmm0, dword [ebp-0xb8]
	mulss xmm0, [ebp-0x24]
	addss xmm0, [ebp-0x2c]
	movss [ebp-0x3c], xmm0
	movss xmm0, dword [ebp-0xb8]
	mulss xmm0, [ebp-0x20]
	addss xmm0, [ebp-0x28]
	movss [ebp-0x38], xmm0
	mov edi, 0x1
	jmp DrawOffscreenViewableWaypoint_110
DrawOffscreenViewableWaypoint_320:
	movaps xmm0, xmm6
	jmp DrawOffscreenViewableWaypoint_410
DrawOffscreenViewableWaypoint_80:
	movss xmm1, dword [_data16_80000000]
	movss xmm0, dword [ebp-0x48]
	xorps xmm0, xmm1
	movss [ebp-0x3c], xmm0
	movss xmm2, dword [ebp-0x44]
	xorps xmm2, xmm1
	movss [ebp-0x38], xmm2
	movss xmm3, dword [_data16_7fffffff]
	andps xmm0, xmm3
	movss xmm1, dword [_float_0_00100000]
	ucomiss xmm1, xmm0
	jbe DrawOffscreenViewableWaypoint_420
	movaps xmm0, xmm2
	andps xmm0, xmm3
	ucomiss xmm1, xmm0
	jbe DrawOffscreenViewableWaypoint_430
	movss xmm0, dword [ebx+0x2c]
	addss xmm0, xmm0
	movss [ebp-0x38], xmm0
	jmp DrawOffscreenViewableWaypoint_440
DrawOffscreenViewableWaypoint_240:
	mov eax, [waypointOffscreenScaleSmallest]
	movss xmm1, dword [eax+0xc]
	jmp DrawOffscreenViewableWaypoint_450
DrawOffscreenViewableWaypoint_60:
	mov eax, [edx+0x64]
	test al, 0x8
	jz DrawOffscreenViewableWaypoint_460
	mov eax, [waypointPlayerOffsetProne]
	addss xmm2, [eax+0xc]
	movss [ebp-0xb4], xmm2
	movss xmm4, dword [ebp-0xac]
	movss xmm3, dword [ebp-0xb0]
	jmp DrawOffscreenViewableWaypoint_360
DrawOffscreenViewableWaypoint_430:
	movss [ebp-0x3c], xmm1
	movss xmm2, dword [ebp-0x38]
DrawOffscreenViewableWaypoint_420:
	movaps xmm0, xmm2
	andps xmm0, xmm3
	cmpss xmm0, xmm1, 0x5
	andps xmm2, xmm0
	movss xmm1, dword [_float_0_00100000]
	andnps xmm0, xmm1
	orps xmm0, xmm2
	movss [ebp-0x38], xmm0
	movss xmm2, dword [ebp-0x3c]
	movss xmm1, dword [ebx+0x28]
	movaps xmm0, xmm2
	andps xmm0, xmm3
	ucomiss xmm1, xmm0
	jbe DrawOffscreenViewableWaypoint_470
DrawOffscreenViewableWaypoint_480:
	movaps xmm0, xmm2
	mulss xmm0, xmm1
	movss [ebp-0x3c], xmm0
	mulss xmm1, [ebp-0x38]
	movss [ebp-0x38], xmm1
	movaps xmm2, xmm0
	movss xmm1, dword [ebx+0x28]
	andps xmm0, xmm3
	ucomiss xmm1, xmm0
	ja DrawOffscreenViewableWaypoint_480
DrawOffscreenViewableWaypoint_470:
	movss xmm1, dword [ebx+0x2c]
	movss xmm0, dword [ebp-0x38]
	andps xmm0, xmm3
	ucomiss xmm1, xmm0
	jbe DrawOffscreenViewableWaypoint_440
DrawOffscreenViewableWaypoint_490:
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x3c]
	movss [ebp-0x3c], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x38]
	movss [ebp-0x38], xmm0
	movss xmm1, dword [ebx+0x2c]
	andps xmm0, xmm3
	ucomiss xmm1, xmm0
	ja DrawOffscreenViewableWaypoint_490
	jmp DrawOffscreenViewableWaypoint_440
DrawOffscreenViewableWaypoint_140:
	mov esi, cgMedia
	mov eax, [esi]
	mov [esp+0x24], eax
	mov eax, colorYellow
	mov [esp+0x20], eax
	movss xmm1, dword [_float_1_00000000]
	movss [esp+0x1c], xmm1
	movss [esp+0x18], xmm1
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x0
	mov ebx, 0x40400000
	mov [esp+0xc], ebx
	mov [esp+0x8], ebx
	addss xmm0, [ebp-0xc4]
	subss xmm0, xmm1
	movss [esp+0x4], xmm0
	movss xmm0, dword [ebp-0xc8]
	addss xmm0, [ebp-0x2c]
	subss xmm0, xmm1
	movss [esp], xmm0
	movss [ebp-0x108], xmm1
	call CL_DrawStretchPicPhysical
	mov eax, [esi]
	mov [esp+0x24], eax
	mov eax, colorGreen
	mov [esp+0x20], eax
	movss xmm1, dword [ebp-0x108]
	movss [esp+0x1c], xmm1
	movss [esp+0x18], xmm1
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x0
	mov [esp+0xc], ebx
	mov [esp+0x8], ebx
	movss xmm0, dword [ebp-0xc4]
	addss xmm0, [ebp-0x38]
	subss xmm0, xmm1
	movss [esp+0x4], xmm0
	movss xmm0, dword [ebp-0xc8]
	addss xmm0, [ebp-0x3c]
	subss xmm0, xmm1
	movss [esp], xmm0
	call CL_DrawStretchPicPhysical
	jmp DrawOffscreenViewableWaypoint_500
DrawOffscreenViewableWaypoint_460:
	test al, 0x4
	jz DrawOffscreenViewableWaypoint_510
	mov eax, [waypointPlayerOffsetCrouch]
	movss xmm3, dword [ebp-0xb4]
	addss xmm3, [eax+0xc]
	movss [ebp-0xb4], xmm3
	movss xmm4, dword [ebp-0xac]
	movss xmm3, dword [ebp-0xb0]
	movss xmm2, dword [ebp-0xb4]
	jmp DrawOffscreenViewableWaypoint_360
DrawOffscreenViewableWaypoint_400:
	movss xmm3, dword [_float_1_00000000]
	movaps xmm2, xmm3
	jmp DrawOffscreenViewableWaypoint_520
DrawOffscreenViewableWaypoint_510:
	mov eax, [waypointPlayerOffsetStand]
	movss xmm4, dword [ebp-0xb4]
	addss xmm4, [eax+0xc]
	movss [ebp-0xb4], xmm4
	movss xmm4, dword [ebp-0xac]
	movss xmm3, dword [ebp-0xb0]
	movss xmm2, dword [ebp-0xb4]
	jmp DrawOffscreenViewableWaypoint_360
	nop


;CG_Draw2dHudElems(int, int)
CG_Draw2dHudElems:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x147c
	mov eax, cgArray
	mov eax, [eax+0x24]
	lea edx, [eax+0xc]
	add eax, 0x8b0
	mov dword [ebp-0x13ec], 0x0
	jmp CG_Draw2dHudElems_10
CG_Draw2dHudElems_30:
	mov ecx, [ebp-0x13ec]
	mov [ebp+ecx*4-0x139c], eax
	add ecx, 0x1
	mov [ebp-0x13ec], ecx
	add eax, 0xa0
	cmp ecx, 0x1f
	jz CG_Draw2dHudElems_20
CG_Draw2dHudElems_10:
	mov esi, [eax]
	test esi, esi
	jnz CG_Draw2dHudElems_30
CG_Draw2dHudElems_20:
	lea eax, [edx+0x1c04]
	mov edx, [ebp-0x13ec]
	shl edx, 0x2
	xor ecx, ecx
	jmp CG_Draw2dHudElems_40
CG_Draw2dHudElems_60:
	mov [ebp+edx-0x139c], eax
	add dword [ebp-0x13ec], 0x1
	add ecx, 0x1
	add eax, 0xa0
	add edx, 0x4
	cmp ecx, 0x1f
	jz CG_Draw2dHudElems_50
CG_Draw2dHudElems_40:
	mov ebx, [eax]
	test ebx, ebx
	jnz CG_Draw2dHudElems_60
CG_Draw2dHudElems_50:
	mov dword [esp+0xc], compare_hudelems
	mov dword [esp+0x8], 0x4
	mov edi, [ebp-0x13ec]
	mov [esp+0x4], edi
	lea eax, [ebp-0x139c]
	mov [esp], eax
	call qsort
	cmp edi, 0x0
	jz CG_Draw2dHudElems_70
	mov eax, cgArray
	mov eax, [eax+0x24]
	mov eax, [eax+0x10]
	mov [ebp-0x13f4], eax
	jle CG_Draw2dHudElems_70
	mov dword [ebp-0x13f0], 0x0
CG_Draw2dHudElems_290:
	cmp dword [ebp-0x13f4], 0x6
	jle CG_Draw2dHudElems_80
	mov edx, [ebp-0x13f0]
	mov eax, [ebp+edx*4-0x139c]
	test byte [eax+0x9c], 0x2
	jnz CG_Draw2dHudElems_90
CG_Draw2dHudElems_80:
	mov eax, [ebp+0xc]
	test eax, eax
	jz CG_Draw2dHudElems_100
	mov ecx, [ebp-0x13f0]
	mov eax, [ebp+ecx*4-0x139c]
	test byte [eax+0x9c], 0x1
	jz CG_Draw2dHudElems_90
	mov eax, [ebp-0x13f0]
	lea ebx, [ebp+eax*4-0x139c]
	mov edx, [ebx]
	mov [ebp-0x1404], edx
	test byte [edx+0x9c], 0x4
	jnz CG_Draw2dHudElems_110
CG_Draw2dHudElems_550:
	mov edi, edx
	cmp dword [edi], 0xd
	jz CG_Draw2dHudElems_120
CG_Draw2dHudElems_560:
	mov eax, cgArray
	mov ebx, [eax+0x46128]
	mov [ebp-0x168], ebx
	lea eax, [ebp-0x20]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov [esp], edi
	call BG_LerpHudColors
	cmp byte [ebp-0x1d], 0x0
	jz CG_Draw2dHudElems_90
	movzx eax, byte [ebp-0x20]
	cvtsi2ss xmm0, eax
	movss xmm1, dword [_float_0_00392157]
	mulss xmm0, xmm1
	movss [ebp-0x178], xmm0
	movzx eax, byte [ebp-0x1f]
	cvtsi2ss xmm0, eax
	mulss xmm0, xmm1
	movss [ebp-0x174], xmm0
	movzx eax, byte [ebp-0x1e]
	cvtsi2ss xmm0, eax
	mulss xmm0, xmm1
	movss [ebp-0x170], xmm0
	movzx eax, byte [ebp-0x1d]
	cvtsi2ss xmm0, eax
	mulss xmm0, xmm1
	movss [ebp-0x16c], xmm0
	mov eax, cl_paused
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	jz CG_Draw2dHudElems_130
	mov eax, [hudElemPausedBrightness]
	movss xmm0, dword [eax+0xc]
	movaps xmm1, xmm0
	mulss xmm1, [ebp-0x178]
	movss [ebp-0x178], xmm1
	movaps xmm1, xmm0
	mulss xmm1, [ebp-0x174]
	movss [ebp-0x174], xmm1
	mulss xmm0, [ebp-0x170]
	movss [ebp-0x170], xmm0
CG_Draw2dHudElems_130:
	mov eax, [ebp+0x8]
	shl eax, 0x6
	mov ecx, [ebp+0x8]
	lea eax, [eax+ecx*4]
	mov edi, scrPlaceView
	add eax, edi
	mov [ebp-0x13dc], eax
	mov eax, [ebp-0x1404]
	cmp dword [eax+0x18], 0x5
	ja CG_Draw2dHudElems_140
	mov eax, [eax+0x18]
	jmp dword [eax*4+CG_Draw2dHudElems_jumptab_0]
CG_Draw2dHudElems_1510:
	mov edi, [ebp-0x1404]
	mov eax, [edi+0x70]
	sub eax, edx
	add eax, 0x63
CG_Draw2dHudElems_1070:
	test eax, eax
	js CG_Draw2dHudElems_150
	cvtsi2ss xmm1, eax
CG_Draw2dHudElems_1220:
	mov edx, [ebp-0x1404]
	mov eax, [edx+0x74]
	test eax, eax
	jz CG_Draw2dHudElems_160
	mulss xmm1, [_float_360_00000000]
	cvtsi2ss xmm0, eax
	divss xmm1, xmm0
	movss [esp], xmm1
	call AngleNormalize360
	fstp dword [ebp-0x13bc]
CG_Draw2dHudElems_1290:
	mov ecx, [ebp-0x1404]
	mov edx, [ecx+0x38]
	mov edi, [ecx+0x20]
	test edx, edx
	jnz CG_Draw2dHudElems_170
	movss xmm5, dword [ebp-0x17c]
CG_Draw2dHudElems_1310:
	mov ecx, [ebp-0x1404]
	mov esi, [ecx+0x54]
	test esi, esi
	jle CG_Draw2dHudElems_180
	mov ebx, [ebp-0x168]
	mov ecx, ebx
	mov eax, [ebp-0x1404]
	sub ecx, [eax+0x50]
	cmp esi, ecx
	jle CG_Draw2dHudElems_190
	mov edx, [eax+0x48]
	mov eax, [eax+0x64]
	mov [ebp-0x1450], eax
	test edx, edx
	jnz CG_Draw2dHudElems_200
	movss xmm2, dword [ebp-0x17c]
CG_Draw2dHudElems_1340:
	test ecx, ecx
	jle CG_Draw2dHudElems_210
	cvtsi2ss xmm0, ecx
	cvtsi2ss xmm1, esi
	divss xmm0, xmm1
	subss xmm5, xmm2
	mulss xmm5, xmm0
	addss xmm5, xmm2
CG_Draw2dHudElems_190:
	mov edx, [ebp-0x1404]
	mov eax, [edx+0x3c]
	test eax, eax
	jnz CG_Draw2dHudElems_220
	movss xmm4, dword [ebp-0x17c]
CG_Draw2dHudElems_1280:
	test esi, esi
	jle CG_Draw2dHudElems_230
	mov ecx, ebx
	mov eax, [ebp-0x1404]
	sub ecx, [eax+0x50]
	cmp esi, ecx
	jle CG_Draw2dHudElems_230
	mov edx, [eax+0x4c]
	mov eax, [eax+0x64]
	test edx, edx
	jnz CG_Draw2dHudElems_240
	movss xmm2, dword [ebp-0x17c]
CG_Draw2dHudElems_1360:
	test ecx, ecx
	jle CG_Draw2dHudElems_250
	cvtsi2ss xmm0, ecx
	cvtsi2ss xmm1, esi
	divss xmm0, xmm1
	subss xmm4, xmm2
	mulss xmm4, xmm0
	addss xmm4, xmm2
CG_Draw2dHudElems_230:
	movss xmm2, dword [ebp-0x390]
	subss xmm2, xmm4
	xorps xmm2, [_data16_80000000]
	mov ecx, [ebp-0x1404]
	mov edx, [ecx+0x6c]
	test edx, edx
	jle CG_Draw2dHudElems_260
	mov eax, ebx
	sub eax, [ecx+0x68]
	test eax, eax
	jle CG_Draw2dHudElems_270
	cmp edx, eax
	jle CG_Draw2dHudElems_260
	cvtsi2ss xmm3, eax
	cvtsi2ss xmm0, edx
	divss xmm3, xmm0
	ucomiss xmm3, [_float_1_00000000]
	jnz CG_Draw2dHudElems_280
	jp CG_Draw2dHudElems_280
CG_Draw2dHudElems_260:
	mov edi, [ebp-0x1404]
	mov eax, [edi+0x1c]
	and eax, 0x3
	mulss xmm2, [eax*4+s_alignScale]
	movss xmm1, dword [ebp-0x398]
	subss xmm1, xmm2
CG_Draw2dHudElems_1320:
	mov eax, [ebp-0x13c4]
	mov [esp+0x24], eax
	lea ebx, [ebp-0x178]
	mov [esp+0x20], ebx
	mov dword [esp+0x1c], 0x3f800000
	mov dword [esp+0x18], 0x3f800000
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x0
	movss [esp+0xc], xmm4
	movss [esp+0x8], xmm5
	movss [esp+0x4], xmm1
	mov eax, [ebp-0x39c]
	mov [esp], eax
	movss [ebp-0x1428], xmm1
	movss [ebp-0x1438], xmm4
	movss [ebp-0x1448], xmm5
	call CL_DrawStretchPicPhysical
	mov edx, [ebp-0x13c0]
	mov [esp+0x1c], edx
	mov [esp+0x18], ebx
	movss xmm0, dword [ebp-0x13bc]
	movss [esp+0x14], xmm0
	movss xmm4, dword [ebp-0x1438]
	movss [esp+0x10], xmm4
	movss xmm5, dword [ebp-0x1448]
	movss [esp+0xc], xmm5
	movss xmm1, dword [ebp-0x1428]
	movss [esp+0x8], xmm1
	mov eax, [ebp-0x39c]
	mov [esp+0x4], eax
	mov eax, [ebp-0x13dc]
	mov [esp], eax
	call CG_DrawRotatedPicPhysical
CG_Draw2dHudElems_90:
	add dword [ebp-0x13f0], 0x1
	mov edx, [ebp-0x13ec]
	cmp [ebp-0x13f0], edx
	jnz CG_Draw2dHudElems_290
CG_Draw2dHudElems_70:
	add esp, 0x147c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_Draw2dHudElems_140:
	movss xmm0, dword [_float_0_25000000]
	xor eax, eax
CG_Draw2dHudElems_960:
	mov ecx, [ebp-0x1404]
	mulss xmm0, [ecx+0x14]
	mov edi, [ebp-0x13dc]
	mulss xmm0, [edi+0x4]
	movss [ebp-0x180], xmm0
	movss [esp+0x8], xmm0
	mov [esp+0x4], eax
	mov [esp], edi
	call UI_GetFontHandle
	mov [ebp-0x184], eax
	mov edx, [ebp-0x180]
	mov [esp+0x4], edx
	mov [esp], eax
	call UI_TextHeight
	cvtsi2ss xmm2, eax
	movss [ebp-0x17c], xmm2
	mov byte [ebp-0x38c], 0x0
	mov edx, [ebp-0x1404]
	mov eax, [edx+0x34]
	test eax, eax
	jnz CG_Draw2dHudElems_300
	mov edi, edx
CG_Draw2dHudElems_710:
	mov byte [ebp-0x288], 0x0
	mov eax, [edi]
	cmp eax, 0xa
	ja CG_Draw2dHudElems_310
	jmp dword [eax*4+CG_Draw2dHudElems_jumptab_1]
CG_Draw2dHudElems_1530:
	mov edx, [ebp-0x1404]
	mov eax, [edx+0x70]
	sub eax, ecx
	lea ebx, [eax+0x3e7]
CG_Draw2dHudElems_1030:
	test ebx, ebx
	js CG_Draw2dHudElems_320
	mov eax, 0x51eb851f
	imul ebx
	mov ecx, edx
	sar ecx, 0x5
	mov eax, ebx
	sar eax, 0x1f
	sub ecx, eax
CG_Draw2dHudElems_1100:
	mov eax, 0x7482296b
	imul ecx
	mov esi, edx
	sar esi, 0xe
	mov eax, ecx
	sar eax, 0x1f
	sub esi, eax
	lea eax, [esi+esi*4]
	mov edx, eax
	shl edx, 0x4
	sub edx, eax
	mov eax, edx
	shl eax, 0x4
	sub eax, edx
	shl eax, 0x5
	sub ecx, eax
	mov eax, 0x1b4e81b5
	imul ecx
	mov ebx, edx
	sar ebx, 0x6
	mov eax, ecx
	sar eax, 0x1f
	sub ebx, eax
	lea edx, [ebx+ebx*4]
	mov eax, edx
	shl eax, 0x4
	sub eax, edx
	shl eax, 0x3
	sub ecx, eax
	mov eax, 0x66666667
	imul ecx
	sar edx, 0x2
	mov eax, ecx
	sar eax, 0x1f
	sub edx, eax
	lea eax, [edx+edx*4]
	add eax, eax
	sub ecx, eax
	test esi, esi
	jz CG_Draw2dHudElems_330
	mov [esp+0x10], ecx
	mov [esp+0xc], edx
	mov [esp+0x8], ebx
	mov [esp+0x4], esi
	mov dword [esp], _cstring_i02i02ii
	call va
	mov edx, eax
CG_Draw2dHudElems_1050:
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, edx
	repne scasb
	not ecx
	lea esi, [ecx-0x1]
	cmp esi, 0xff
	jg CG_Draw2dHudElems_310
	lea ebx, [ebp-0x39c]
	lea eax, [ebp-0x288]
	mov [esp+0x8], esi
	mov [esp+0x4], edx
	mov [esp], eax
	call memcpy
	mov byte [ebx+esi+0x114], 0x0
CG_Draw2dHudElems_310:
	cmp byte [ebp-0x38c], 0x0
	jz CG_Draw2dHudElems_340
	cmp byte [ebp-0x288], 0x0
	jz CG_Draw2dHudElems_350
	xor ecx, ecx
	xor ebx, ebx
	lea edi, [ebp-0x164]
	jmp CG_Draw2dHudElems_360
CG_Draw2dHudElems_390:
	lea edx, [ebx+0x1]
CG_Draw2dHudElems_400:
	mov [ecx+edi], al
	add ecx, 0x1
	cmp ecx, 0xff
	jz CG_Draw2dHudElems_370
	mov ebx, edx
CG_Draw2dHudElems_360:
	movzx eax, byte [ebp+ebx-0x38c]
	test al, al
	jz CG_Draw2dHudElems_380
	cmp al, 0x26
	jnz CG_Draw2dHudElems_390
	lea edx, [ebx+0x1]
	cmp byte [ebp+edx-0x38c], 0x26
	jnz CG_Draw2dHudElems_400
	cmp byte [ebp+ebx-0x38a], 0x31
	jnz CG_Draw2dHudElems_400
	add ebx, 0x3
CG_Draw2dHudElems_380:
	cmp ecx, 0xfe
	jg CG_Draw2dHudElems_410
	movzx edx, byte [ebp-0x288]
	test dl, dl
	jz CG_Draw2dHudElems_420
	mov eax, ecx
	xor esi, esi
	lea ecx, [edi+ecx]
CG_Draw2dHudElems_440:
	mov [ecx], dl
	add eax, 0x1
	add esi, 0x1
	add ecx, 0x1
	cmp eax, 0xff
	jz CG_Draw2dHudElems_430
	movzx edx, byte [ebp+esi-0x288]
	test dl, dl
	jnz CG_Draw2dHudElems_440
	cmp eax, 0xfe
	jg CG_Draw2dHudElems_450
	mov ecx, eax
CG_Draw2dHudElems_420:
	movzx eax, byte [ebp+ebx-0x38c]
	test al, al
	jz CG_Draw2dHudElems_410
	lea esi, [edi+ecx]
	lea edx, [ebx+ebp-0x38c]
CG_Draw2dHudElems_460:
	mov [esi], al
	add ecx, 0x1
	cmp ecx, 0xff
	jz CG_Draw2dHudElems_370
	movzx eax, byte [edx+0x1]
	add esi, 0x1
	add edx, 0x1
	test al, al
	jnz CG_Draw2dHudElems_460
CG_Draw2dHudElems_410:
	mov eax, ecx
CG_Draw2dHudElems_450:
	mov byte [ebp+eax-0x164], 0x0
	lea ebx, [ebp-0x288]
	mov dword [esp+0x8], 0x100
	mov [esp+0x4], edi
	mov [esp], ebx
	call memcpy
	mov eax, [ebp-0x180]
	mov [esp+0xc], eax
	mov eax, [ebp-0x184]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call UI_TextWidth
	mov ebx, eax
	call CL_GetScreenAspectRatioDisplayPixel
	fstp dword [ebp-0x13e8]
	cvtsi2ss xmm0, ebx
	divss xmm0, dword [ebp-0x13e8]
	movss [ebp-0x188], xmm0
	mov byte [ebp-0x38c], 0x0
	mov dword [ebp-0x28c], 0x0
CG_Draw2dHudElems_340:
	mov dword [ebp-0x28c], 0x0
CG_Draw2dHudElems_690:
	cmp byte [ebp-0x288], 0x0
	jnz CG_Draw2dHudElems_470
	mov dword [ebp-0x188], 0x0
CG_Draw2dHudElems_720:
	mov edi, [ebp-0x1404]
	cmp dword [edi], 0xd
	ja CG_Draw2dHudElems_480
	mov ecx, [edi]
	mov eax, 0x1
	shl eax, cl
	test eax, 0x7be
	jnz CG_Draw2dHudElems_490
	test eax, 0x1840
	jnz CG_Draw2dHudElems_500
	test ah, 0x20
	jnz CG_Draw2dHudElems_510
CG_Draw2dHudElems_480:
	pxor xmm0, xmm0
	mov ebx, [ebp-0x168]
	mov eax, [ebp-0x1404]
CG_Draw2dHudElems_680:
	movss [ebp-0x394], xmm0
	cmp dword [eax], 0xd
	ja CG_Draw2dHudElems_520
	mov ecx, [eax]
	mov eax, 0x1
	shl eax, cl
	test eax, 0x7be
	jz CG_Draw2dHudElems_530
	movss xmm3, dword [ebp-0x17c]
	movaps xmm2, xmm3
CG_Draw2dHudElems_930:
	maxss xmm2, xmm3
	movss [ebp-0x13ac], xmm2
	movaps xmm0, xmm2
	jmp CG_Draw2dHudElems_540
CG_Draw2dHudElems_100:
	mov edi, [ebp-0x13f0]
	mov eax, [ebp+edi*4-0x139c]
	test byte [eax+0x9c], 0x1
	jnz CG_Draw2dHudElems_90
	mov eax, edi
	lea ebx, [ebp+eax*4-0x139c]
	mov edx, [ebx]
	mov [ebp-0x1404], edx
	test byte [edx+0x9c], 0x4
	jz CG_Draw2dHudElems_550
CG_Draw2dHudElems_110:
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call UI_AnyMenuVisible
	test eax, eax
	jnz CG_Draw2dHudElems_90
	mov ebx, [ebx]
	mov [ebp-0x1404], ebx
	mov edi, ebx
	cmp dword [edi], 0xd
	jnz CG_Draw2dHudElems_560
CG_Draw2dHudElems_120:
	mov [esp+0x4], edi
	mov eax, [ebp+0x8]
	mov [esp], eax
	call DrawOffscreenViewableWaypoint
	add dword [ebp-0x13f0], 0x1
	mov edx, [ebp-0x13ec]
	cmp [ebp-0x13f0], edx
	jnz CG_Draw2dHudElems_290
	jmp CG_Draw2dHudElems_70
CG_Draw2dHudElems_530:
	test eax, 0x1840
	jnz CG_Draw2dHudElems_570
	test ah, 0x20
	jnz CG_Draw2dHudElems_580
CG_Draw2dHudElems_520:
	pxor xmm0, xmm0
	movss [ebp-0x13ac], xmm0
CG_Draw2dHudElems_540:
	movss [ebp-0x390], xmm0
	mov eax, [ebp-0x1404]
	mov edx, [eax+0x6c]
	test edx, edx
	jle CG_Draw2dHudElems_590
	mov ecx, eax
	mov eax, ebx
	sub eax, [ecx+0x68]
	test eax, eax
	jle CG_Draw2dHudElems_600
	cmp edx, eax
	jg CG_Draw2dHudElems_610
CG_Draw2dHudElems_660:
	mov eax, [ebp-0x1404]
CG_Draw2dHudElems_590:
	movss xmm2, dword [ebp-0x394]
	movss [ebp-0x13d4], xmm2
	mov edi, [eax+0x8]
	mov ebx, [eax+0x20]
	mov esi, [eax+0x1c]
	mov eax, ebx
	sar eax, 0x3
	and eax, 0x7
	mov [esp+0x8], eax
	mov edx, [ebp-0x1404]
	mov eax, [edx+0x4]
	mov [esp+0x4], eax
	mov ecx, [ebp-0x13dc]
	mov [esp], ecx
	call ScrPlace_ApplyX
	fstp dword [ebp-0x144c]
	movss xmm0, dword [ebp-0x144c]
	mov eax, esi
	sar eax, 0x2
	and eax, 0x3
	movss xmm1, dword [ebp-0x13d4]
	mulss xmm1, [eax*4+s_alignScale]
	subss xmm0, xmm1
	movss [ebp-0x39c], xmm0
	and ebx, 0x7
	mov [esp+0x8], ebx
	mov [esp+0x4], edi
	mov eax, [ebp-0x13dc]
	mov [esp], eax
	call ScrPlace_ApplyY
	fstp dword [ebp-0x144c]
	movss xmm1, dword [ebp-0x144c]
	and esi, 0x3
	movss xmm0, dword [ebp-0x13ac]
	mulss xmm0, [esi*4+s_alignScale]
	subss xmm1, xmm0
	movss xmm0, dword [ebp-0x39c]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	movss [ebp-0x1428], xmm1
	call floorf
	fstp dword [ebp-0x13fc]
	cvttss2si eax, [ebp-0x13fc]
	cvtsi2ss xmm0, eax
	movss [ebp-0x39c], xmm0
	movss xmm1, dword [ebp-0x1428]
	addss xmm1, [_float_0_50000000]
	movss [esp], xmm1
	call floorf
	fstp dword [ebp-0x1400]
	cvttss2si eax, [ebp-0x1400]
	cvtsi2ss xmm0, eax
	movss [ebp-0x398], xmm0
	cmp byte [ebp-0x38c], 0x0
	jnz CG_Draw2dHudElems_620
CG_Draw2dHudElems_670:
	mov edi, [ebp-0x1404]
	cmp dword [edi], 0xc
	ja CG_Draw2dHudElems_90
	mov ecx, [edi]
	mov eax, 0x1
	shl eax, cl
	test eax, 0x7be
	jnz CG_Draw2dHudElems_630
	test al, 0x40
	jnz CG_Draw2dHudElems_640
	test ah, 0x18
	jz CG_Draw2dHudElems_90
	mov dword [esp+0xc], 0x3a
	lea ebx, [ebp-0x64]
	mov [esp+0x8], ebx
	mov edi, [ebp-0x1404]
	mov eax, [edi+0x40]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_ServerMaterialName
	test eax, eax
	jz CG_Draw2dHudElems_90
	mov dword [esp+0x4], 0x7
	mov [esp], ebx
	call Material_RegisterHandle
	mov [ebp-0x13c4], eax
	mov dword [esp+0x8], _cstring_needle
	mov dword [esp+0x4], 0x40
	mov [esp], ebx
	call Q_strncat
	mov dword [esp+0x4], 0x7
	mov [esp], ebx
	call Material_RegisterHandle
	mov [ebp-0x13c0], eax
	mov edx, [ebp-0x168]
	mov eax, [edi]
	sub eax, 0x7
	cmp eax, 0x5
	ja CG_Draw2dHudElems_150
	jmp dword [eax*4+CG_Draw2dHudElems_jumptab_2]
CG_Draw2dHudElems_610:
	cvtsi2ss xmm0, eax
	movss [ebp-0x13d8], xmm0
	cvtsi2ss xmm0, edx
	movss xmm1, dword [ebp-0x13d8]
	divss xmm1, xmm0
	movss [ebp-0x13d8], xmm1
	ucomiss xmm1, [_float_1_00000000]
	jnz CG_Draw2dHudElems_650
	jnp CG_Draw2dHudElems_660
CG_Draw2dHudElems_650:
	movss xmm2, dword [ebp-0x394]
	movss [ebp-0x13d0], xmm2
	mov eax, [ebp-0x1404]
	mov edi, [eax+0x5c]
	mov ebx, [eax+0x64]
	mov esi, [eax+0x60]
	mov eax, ebx
	sar eax, 0x3
	and eax, 0x7
	mov [esp+0x8], eax
	mov edx, [ebp-0x1404]
	mov eax, [edx+0x58]
	mov [esp+0x4], eax
	mov ecx, [ebp-0x13dc]
	mov [esp], ecx
	call ScrPlace_ApplyX
	fstp dword [ebp-0x13b0]
	mov eax, esi
	sar eax, 0x2
	and eax, 0x3
	movss xmm0, dword [ebp-0x13d0]
	mulss xmm0, [eax*4+s_alignScale]
	movss xmm1, dword [ebp-0x13b0]
	subss xmm1, xmm0
	movss [ebp-0x13b0], xmm1
	and ebx, 0x7
	mov [esp+0x8], ebx
	mov [esp+0x4], edi
	mov eax, [ebp-0x13dc]
	mov [esp], eax
	call ScrPlace_ApplyY
	fstp dword [ebp-0x13b4]
	and esi, 0x3
	movss xmm0, dword [ebp-0x13ac]
	mulss xmm0, [esi*4+s_alignScale]
	movss xmm1, dword [ebp-0x13b4]
	subss xmm1, xmm0
	movss [ebp-0x13b4], xmm1
	movss xmm2, dword [ebp-0x390]
	movss [ebp-0x13c8], xmm2
	movss xmm6, dword [ebp-0x394]
	movss [ebp-0x13cc], xmm6
	mov eax, [ebp-0x1404]
	mov edi, [eax+0x8]
	mov ebx, [eax+0x20]
	mov esi, [eax+0x1c]
	mov eax, ebx
	sar eax, 0x3
	and eax, 0x7
	mov [esp+0x8], eax
	mov edx, [ebp-0x1404]
	mov eax, [edx+0x4]
	mov [esp+0x4], eax
	mov ecx, [ebp-0x13dc]
	mov [esp], ecx
	call ScrPlace_ApplyX
	fstp dword [ebp-0x144c]
	movss xmm0, dword [ebp-0x144c]
	mov eax, esi
	sar eax, 0x2
	and eax, 0x3
	movss xmm1, dword [ebp-0x13cc]
	mulss xmm1, [eax*4+s_alignScale]
	subss xmm0, xmm1
	and ebx, 0x7
	mov [esp+0x8], ebx
	mov [esp+0x4], edi
	mov eax, [ebp-0x13dc]
	mov [esp], eax
	movss [ebp-0x1418], xmm0
	call ScrPlace_ApplyY
	fstp dword [ebp-0x144c]
	movss xmm1, dword [ebp-0x144c]
	and esi, 0x3
	movss xmm2, dword [ebp-0x13c8]
	mulss xmm2, [esi*4+s_alignScale]
	subss xmm1, xmm2
	movss xmm0, dword [ebp-0x1418]
	subss xmm0, [ebp-0x13b0]
	mulss xmm0, [ebp-0x13d8]
	addss xmm0, [ebp-0x13b0]
	movss [ebp-0x39c], xmm0
	subss xmm1, [ebp-0x13b4]
	mulss xmm1, [ebp-0x13d8]
	movss xmm6, dword [ebp-0x13b4]
	addss xmm6, xmm1
	movss [ebp-0x398], xmm6
	cmp byte [ebp-0x38c], 0x0
	jz CG_Draw2dHudElems_670
CG_Draw2dHudElems_620:
	lea eax, [ebp-0x39c]
	mov [esp+0x10], eax
	mov eax, [ebp-0x1404]
	mov [esp+0xc], eax
	lea eax, [ebp-0x38c]
	mov [esp+0x8], eax
	mov edx, [ebp-0x13dc]
	mov [esp+0x4], edx
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call DrawHudElemString
	movss xmm0, dword [ebp-0x39c]
	addss xmm0, [ebp-0x28c]
	movss [ebp-0x39c], xmm0
	jmp CG_Draw2dHudElems_670
CG_Draw2dHudElems_490:
	movss xmm0, dword [ebp-0x28c]
	addss xmm0, [ebp-0x188]
	mov ebx, [ebp-0x168]
	mov eax, [ebp-0x1404]
	jmp CG_Draw2dHudElems_680
CG_Draw2dHudElems_630:
	cmp byte [ebp-0x288], 0x0
	jz CG_Draw2dHudElems_90
	lea eax, [ebp-0x39c]
	mov [esp+0x10], eax
	mov eax, [ebp-0x1404]
	mov [esp+0xc], eax
	lea eax, [ebp-0x288]
	mov [esp+0x8], eax
	mov edx, [ebp-0x13dc]
	mov [esp+0x4], edx
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call DrawHudElemString
	jmp CG_Draw2dHudElems_90
CG_Draw2dHudElems_350:
	mov eax, [ebp-0x180]
	mov [esp+0xc], eax
	mov eax, [ebp-0x184]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	lea eax, [ebp-0x38c]
	mov [esp], eax
	call UI_TextWidth
	mov ebx, eax
	call CL_GetScreenAspectRatioDisplayPixel
	fstp dword [ebp-0x13e4]
	cvtsi2ss xmm0, ebx
	divss xmm0, dword [ebp-0x13e4]
	movss [ebp-0x28c], xmm0
	jmp CG_Draw2dHudElems_690
CG_Draw2dHudElems_300:
	add eax, 0x135
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call CL_GetConfigString
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _cstring_hudelem_string
	mov [esp], eax
	call SEH_LocalizeTextMessage
	mov edx, eax
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, edx
	repne scasb
	not ecx
	lea eax, [ecx-0x1]
	mov [ebp-0x1c], eax
	cmp ecx, 0x100
	jbe CG_Draw2dHudElems_700
CG_Draw2dHudElems_1090:
	mov edi, [ebp-0x1404]
	jmp CG_Draw2dHudElems_710
CG_Draw2dHudElems_470:
	mov eax, [ebp-0x180]
	mov [esp+0xc], eax
	mov eax, [ebp-0x184]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	lea eax, [ebp-0x288]
	mov [esp], eax
	call UI_TextWidth
	mov ebx, eax
	call CL_GetScreenAspectRatioDisplayPixel
	fstp dword [ebp-0x13e0]
	cvtsi2ss xmm0, ebx
	divss xmm0, dword [ebp-0x13e0]
	movss [ebp-0x188], xmm0
	jmp CG_Draw2dHudElems_720
CG_Draw2dHudElems_640:
	mov dword [esp+0xc], 0x40
	lea ebx, [ebp-0x64]
	mov [esp+0x8], ebx
	mov edx, [ebp-0x1404]
	mov eax, [edx+0x40]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call CG_ServerMaterialName
	test eax, eax
	jz CG_Draw2dHudElems_90
	mov dword [esp+0x4], 0x7
	mov [esp], ebx
	call Material_RegisterHandle
	mov [ebp-0x13b8], eax
	mov edi, [ebp-0x1404]
	mov edx, [edi+0x38]
	mov edi, [edi+0x20]
	test edx, edx
	jnz CG_Draw2dHudElems_730
	movss xmm5, dword [ebp-0x17c]
CG_Draw2dHudElems_1170:
	mov eax, [ebp-0x1404]
	mov esi, [eax+0x54]
	test esi, esi
	jle CG_Draw2dHudElems_740
	mov ebx, [ebp-0x168]
	mov ecx, ebx
	sub ecx, [eax+0x50]
	cmp esi, ecx
	jle CG_Draw2dHudElems_750
	mov edx, [eax+0x48]
	mov eax, [eax+0x64]
	mov [ebp-0x1450], eax
	test edx, edx
	jnz CG_Draw2dHudElems_760
	movss xmm2, dword [ebp-0x17c]
CG_Draw2dHudElems_1240:
	test ecx, ecx
	jle CG_Draw2dHudElems_770
	cvtsi2ss xmm0, ecx
	cvtsi2ss xmm1, esi
	divss xmm0, xmm1
	subss xmm5, xmm2
	mulss xmm5, xmm0
	addss xmm5, xmm2
CG_Draw2dHudElems_750:
	mov edx, [ebp-0x1404]
	mov eax, [edx+0x3c]
	test eax, eax
	jnz CG_Draw2dHudElems_780
	movss xmm4, dword [ebp-0x17c]
CG_Draw2dHudElems_1190:
	test esi, esi
	jle CG_Draw2dHudElems_790
	mov ecx, ebx
	mov eax, [ebp-0x1404]
	sub ecx, [eax+0x50]
	cmp esi, ecx
	jle CG_Draw2dHudElems_800
	mov edx, [eax+0x4c]
	mov eax, [eax+0x64]
	test edx, edx
	jnz CG_Draw2dHudElems_810
	movss xmm2, dword [ebp-0x17c]
CG_Draw2dHudElems_1260:
	test ecx, ecx
	jle CG_Draw2dHudElems_820
	cvtsi2ss xmm0, ecx
	cvtsi2ss xmm1, esi
	divss xmm0, xmm1
	subss xmm4, xmm2
	mulss xmm4, xmm0
	addss xmm4, xmm2
CG_Draw2dHudElems_790:
	mov ecx, [ebp-0x1404]
CG_Draw2dHudElems_1200:
	movss xmm2, dword [ebp-0x390]
	subss xmm2, xmm4
	xorps xmm2, [_data16_80000000]
	mov edx, [ecx+0x6c]
	test edx, edx
	jle CG_Draw2dHudElems_830
	mov eax, ebx
	sub eax, [ecx+0x68]
	test eax, eax
	jle CG_Draw2dHudElems_840
	cmp edx, eax
	jle CG_Draw2dHudElems_830
	cvtsi2ss xmm3, eax
	cvtsi2ss xmm0, edx
	divss xmm3, xmm0
	ucomiss xmm3, [_float_1_00000000]
	jnz CG_Draw2dHudElems_850
	jp CG_Draw2dHudElems_850
CG_Draw2dHudElems_830:
	mov edi, [ebp-0x1404]
	mov eax, [edi+0x1c]
	and eax, 0x3
	mulss xmm2, [eax*4+s_alignScale]
	movss xmm1, dword [ebp-0x398]
	subss xmm1, xmm2
CG_Draw2dHudElems_1210:
	mov eax, [ebp-0x13b8]
	mov [esp+0x24], eax
	lea eax, [ebp-0x178]
	mov [esp+0x20], eax
	mov dword [esp+0x1c], 0x3f800000
	mov dword [esp+0x18], 0x3f800000
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x0
	movss [esp+0xc], xmm4
	movss [esp+0x8], xmm5
	movss [esp+0x4], xmm1
	mov eax, [ebp-0x39c]
	mov [esp], eax
	call CL_DrawStretchPicPhysical
	jmp CG_Draw2dHudElems_90
CG_Draw2dHudElems_500:
	movss xmm4, dword [ebp-0x28c]
	mov eax, [ebp-0x1404]
	mov edx, [eax+0x38]
	mov eax, [eax+0x20]
	test edx, edx
	jz CG_Draw2dHudElems_860
	and eax, 0x38
	cmp eax, 0x20
	jz CG_Draw2dHudElems_870
	cvtsi2ss xmm3, edx
	mov eax, [ebp-0x13dc]
	mulss xmm3, [eax]
CG_Draw2dHudElems_990:
	mov ecx, [ebp-0x1404]
	mov edx, [ecx+0x54]
	test edx, edx
	jle CG_Draw2dHudElems_880
	mov ebx, [ebp-0x168]
	mov esi, ebx
	sub esi, [ecx+0x50]
	cmp edx, esi
	jle CG_Draw2dHudElems_890
	mov edi, ecx
	mov ecx, [ecx+0x48]
	mov eax, [edi+0x64]
	test ecx, ecx
	jnz CG_Draw2dHudElems_900
	movss xmm2, dword [ebp-0x17c]
CG_Draw2dHudElems_1150:
	test esi, esi
	jle CG_Draw2dHudElems_910
	cvtsi2ss xmm0, esi
	cvtsi2ss xmm1, edx
	divss xmm0, xmm1
	subss xmm3, xmm2
	mulss xmm3, xmm0
	addss xmm3, xmm2
CG_Draw2dHudElems_890:
	movaps xmm0, xmm3
	addss xmm0, xmm4
	mov eax, [ebp-0x1404]
	jmp CG_Draw2dHudElems_680
CG_Draw2dHudElems_570:
	mov eax, [ebp-0x1404]
	mov edx, [eax+0x3c]
	mov eax, [eax+0x20]
	test edx, edx
	jnz CG_Draw2dHudElems_920
	movss xmm3, dword [ebp-0x17c]
	movaps xmm2, xmm3
CG_Draw2dHudElems_980:
	mov ecx, [ebp-0x1404]
	mov edx, [ecx+0x54]
	test edx, edx
	jle CG_Draw2dHudElems_930
	mov esi, ebx
	sub esi, [ecx+0x50]
	cmp edx, esi
	jle CG_Draw2dHudElems_930
	mov edi, ecx
	mov ecx, [ecx+0x4c]
	mov eax, [edi+0x64]
	test ecx, ecx
	jnz CG_Draw2dHudElems_940
	movaps xmm4, xmm2
CG_Draw2dHudElems_1130:
	test esi, esi
	jle CG_Draw2dHudElems_950
	cvtsi2ss xmm0, esi
	cvtsi2ss xmm1, edx
	divss xmm0, xmm1
	subss xmm3, xmm4
	mulss xmm3, xmm0
	addss xmm3, xmm4
	jmp CG_Draw2dHudElems_930
CG_Draw2dHudElems_1410:
	movss xmm0, dword [_float_0_25000000]
	mov eax, 0x3
	jmp CG_Draw2dHudElems_960
CG_Draw2dHudElems_1400:
	movss xmm0, dword [_float_0_25000000]
	mov eax, 0x2
	jmp CG_Draw2dHudElems_960
CG_Draw2dHudElems_1390:
	movss xmm0, dword [_float_0_25000000]
	mov eax, 0x6
	jmp CG_Draw2dHudElems_960
CG_Draw2dHudElems_1380:
	movss xmm0, dword [_float_0_33333334]
	mov eax, 0x5
	jmp CG_Draw2dHudElems_960
CG_Draw2dHudElems_1370:
	movss xmm0, dword [_float_0_50000000]
	mov eax, 0x4
	jmp CG_Draw2dHudElems_960
CG_Draw2dHudElems_510:
	mov edi, [ebp-0x1404]
	cvtsi2ss xmm0, dword [edi+0x38]
	mov ebx, [ebp-0x168]
	mov eax, edi
	jmp CG_Draw2dHudElems_680
CG_Draw2dHudElems_580:
	mov edi, [ebp-0x1404]
	cvtsi2ss xmm3, dword [edi+0x3c]
	movss xmm2, dword [ebp-0x17c]
	jmp CG_Draw2dHudElems_930
CG_Draw2dHudElems_920:
	and eax, 0x7
	cmp eax, 0x4
	jz CG_Draw2dHudElems_970
	cvtsi2ss xmm3, edx
	mov eax, [ebp-0x13dc]
	mulss xmm3, [eax+0x4]
	movss xmm2, dword [ebp-0x17c]
	jmp CG_Draw2dHudElems_980
CG_Draw2dHudElems_860:
	movss xmm3, dword [ebp-0x17c]
	jmp CG_Draw2dHudElems_990
CG_Draw2dHudElems_1480:
	mov ecx, [ebp-0x168]
	sub eax, 0x7
	cmp eax, 0x5
	ja CG_Draw2dHudElems_320
	jmp dword [eax*4+CG_Draw2dHudElems_jumptab_3]
CG_Draw2dHudElems_1470:
	mov ecx, [ebp-0x168]
	sub eax, 0x7
	cmp eax, 0x5
	ja CG_Draw2dHudElems_1000
	jmp dword [eax*4+CG_Draw2dHudElems_jumptab_4]
CG_Draw2dHudElems_1460:
	mov dword [esp+0x4], 0x12
	mov ecx, [ebp+0x8]
	mov [esp], ecx
CG_Draw2dHudElems_1010:
	call CL_GetConfigString
	mov dword [esp+0x8], 0x100
	mov [esp+0x4], eax
	lea eax, [ebp-0x288]
	mov [esp], eax
	call Q_strncpyz
	jmp CG_Draw2dHudElems_310
CG_Draw2dHudElems_1440:
	movss xmm0, dword [_float_0_50000000]
	mov eax, [ebp-0x1404]
	addss xmm0, [eax+0x78]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x13f8]
	cvttss2si ecx, [ebp-0x13f8]
	cmp ecx, 0x3f
	ja CG_Draw2dHudElems_310
	mov dword [esp+0x8], 0x100
	lea eax, [ecx+ecx*8]
	mov edx, eax
	shl edx, 0x4
	add eax, edx
	lea eax, [ecx+eax*2]
	mov edx, cgArray
	lea eax, [edx+eax*4+0xe9f40]
	mov [esp+0x4], eax
	lea eax, [ebp-0x288]
	mov [esp], eax
	call Q_strncpyz
	jmp CG_Draw2dHudElems_310
CG_Draw2dHudElems_1430:
	mov ecx, [ebp-0x1404]
	cvtss2sd xmm0, [ecx+0x78]
	movsd [esp+0xc], xmm0
	mov dword [esp+0x8], _cstring_g
	mov dword [esp+0x4], 0x100
	lea eax, [ebp-0x288]
	mov [esp], eax
	call Com_sprintf
	jmp CG_Draw2dHudElems_310
CG_Draw2dHudElems_1450:
	mov dword [esp+0x4], 0x11
	mov edx, [ebp+0x8]
	mov [esp], edx
	jmp CG_Draw2dHudElems_1010
CG_Draw2dHudElems_1420:
	mov edi, [ebp-0x1404]
	mov eax, [edi+0x7c]
	test eax, eax
	jz CG_Draw2dHudElems_310
	add eax, 0x135
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CL_GetConfigString
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _cstring_hudelem_string
	mov [esp], eax
	call SEH_LocalizeTextMessage
	mov edx, eax
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, edx
	repne scasb
	not ecx
	lea eax, [ecx-0x1]
	mov [ebp-0x1c], eax
	cmp ecx, 0x100
	ja CG_Draw2dHudElems_310
	lea ebx, [ebp-0x39c]
	lea esi, [ebp-0x288]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov [esp], esi
	call memcpy
	mov eax, [ebp-0x1c]
	mov byte [ebx+eax+0x114], 0x0
	mov dword [ebp-0x24], 0x0
	lea edi, [ebp-0x1c]
	lea ebx, [ebp-0x24]
CG_Draw2dHudElems_1020:
	mov [esp], esi
	mov ecx, edi
	mov edx, ebx
	mov eax, [ebp+0x8]
	call ReplaceDirective
	test al, al
	jnz CG_Draw2dHudElems_1020
	jmp CG_Draw2dHudElems_310
CG_Draw2dHudElems_1550:
	mov edi, [ebp-0x1404]
	mov eax, [edi+0x70]
	sub eax, ecx
	lea ebx, [eax+0x63]
	jmp CG_Draw2dHudElems_1030
CG_Draw2dHudElems_1570:
	mov edx, [ebp-0x1404]
	mov eax, [edx+0x70]
	sub eax, ecx
	lea ebx, [eax+0x3e7]
CG_Draw2dHudElems_1060:
	test ebx, ebx
	js CG_Draw2dHudElems_1000
	mov eax, 0x10624dd3
	imul ebx
	mov ecx, edx
	sar ecx, 0x6
	mov eax, ebx
	sar eax, 0x1f
	sub ecx, eax
CG_Draw2dHudElems_1110:
	mov edx, 0x91a2b3c5
	mov eax, ecx
	imul edx
	lea esi, [edx+ecx]
	sar esi, 0xb
	mov eax, ecx
	sar eax, 0x1f
	sub esi, eax
	mov eax, esi
	shl eax, 0x4
	mov edx, esi
	shl edx, 0x8
	sub edx, eax
	mov eax, edx
	shl eax, 0x4
	sub eax, edx
	sub ecx, eax
	mov edx, 0x88888889
	mov eax, ecx
	imul edx
	lea ebx, [edx+ecx]
	sar ebx, 0x5
	mov eax, ecx
	sar eax, 0x1f
	sub ebx, eax
	lea edx, [ebx*4]
	mov eax, ebx
	shl eax, 0x6
	sub eax, edx
	sub ecx, eax
	test esi, esi
	jz CG_Draw2dHudElems_1040
	mov [esp+0xc], ecx
	mov [esp+0x8], ebx
	mov [esp+0x4], esi
	mov dword [esp], _cstring_i02i02i
	call va
	mov edx, eax
	jmp CG_Draw2dHudElems_1050
CG_Draw2dHudElems_1590:
	mov edi, [ebp-0x1404]
	mov eax, [edi+0x70]
	sub eax, ecx
	lea ebx, [eax+0x63]
	jmp CG_Draw2dHudElems_1060
CG_Draw2dHudElems_1540:
	mov ebx, ecx
	mov edx, [ebp-0x1404]
	sub ebx, [edx+0x70]
	jmp CG_Draw2dHudElems_1030
CG_Draw2dHudElems_1560:
	mov eax, [ebp-0x1404]
	mov ebx, [eax+0x70]
	sub ebx, ecx
	jmp CG_Draw2dHudElems_1030
CG_Draw2dHudElems_1580:
	mov ebx, ecx
	mov edx, [ebp-0x1404]
	sub ebx, [edx+0x70]
	jmp CG_Draw2dHudElems_1060
CG_Draw2dHudElems_1600:
	mov eax, [ebp-0x1404]
	mov ebx, [eax+0x70]
	sub ebx, ecx
	jmp CG_Draw2dHudElems_1060
CG_Draw2dHudElems_1520:
	mov ecx, [ebp-0x1404]
	mov eax, [ecx+0x70]
	sub eax, edx
	jmp CG_Draw2dHudElems_1070
CG_Draw2dHudElems_1500:
	mov eax, edx
	mov edi, [ebp-0x1404]
	sub eax, [edi+0x70]
	jmp CG_Draw2dHudElems_1070
CG_Draw2dHudElems_1490:
	mov ecx, [ebp-0x1404]
	mov eax, [ecx+0x70]
	sub eax, edx
	add eax, 0x3e7
	jmp CG_Draw2dHudElems_1070
CG_Draw2dHudElems_700:
	lea ebx, [ebp-0x39c]
	lea esi, [ebp-0x38c]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov [esp], esi
	call memcpy
	mov eax, [ebp-0x1c]
	mov byte [ebx+eax+0x10], 0x0
	mov dword [ebp-0x24], 0x0
	lea edi, [ebp-0x1c]
	lea ebx, [ebp-0x24]
CG_Draw2dHudElems_1080:
	mov [esp], esi
	mov ecx, edi
	mov edx, ebx
	mov eax, [ebp+0x8]
	call ReplaceDirective
	test al, al
	jnz CG_Draw2dHudElems_1080
	jmp CG_Draw2dHudElems_1090
CG_Draw2dHudElems_600:
	pxor xmm1, xmm1
	movss [ebp-0x13d8], xmm1
	jmp CG_Draw2dHudElems_650
CG_Draw2dHudElems_370:
	mov eax, 0xff
	jmp CG_Draw2dHudElems_450
CG_Draw2dHudElems_320:
	xor ecx, ecx
	jmp CG_Draw2dHudElems_1100
CG_Draw2dHudElems_1000:
	xor ecx, ecx
	jmp CG_Draw2dHudElems_1110
CG_Draw2dHudElems_1040:
	mov [esp+0x8], ecx
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_i02i
	call va
	mov edx, eax
	jmp CG_Draw2dHudElems_1050
CG_Draw2dHudElems_330:
	mov [esp+0xc], ecx
	mov [esp+0x8], edx
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_i02ii
	call va
	mov edx, eax
	jmp CG_Draw2dHudElems_1050
CG_Draw2dHudElems_430:
	mov ecx, 0xff
	jmp CG_Draw2dHudElems_410
CG_Draw2dHudElems_880:
	mov ebx, [ebp-0x168]
	jmp CG_Draw2dHudElems_890
CG_Draw2dHudElems_940:
	and eax, 0x7
	cmp eax, 0x4
	jz CG_Draw2dHudElems_1120
	cvtsi2ss xmm4, ecx
	mov ecx, [ebp-0x13dc]
	mulss xmm4, [ecx+0x4]
	jmp CG_Draw2dHudElems_1130
CG_Draw2dHudElems_900:
	and eax, 0x38
	cmp eax, 0x20
	jz CG_Draw2dHudElems_1140
	cvtsi2ss xmm2, ecx
	mov ecx, [ebp-0x13dc]
	mulss xmm2, [ecx]
	jmp CG_Draw2dHudElems_1150
CG_Draw2dHudElems_970:
	cvtsi2ss xmm3, edx
	mov edi, [ebp-0x13dc]
	mulss xmm3, [edi+0xc]
	movss xmm2, dword [ebp-0x17c]
	jmp CG_Draw2dHudElems_980
CG_Draw2dHudElems_730:
	mov eax, edi
	and eax, 0x38
	cmp eax, 0x20
	jz CG_Draw2dHudElems_1160
	cvtsi2ss xmm5, edx
	mov ecx, [ebp-0x13dc]
	mulss xmm5, [ecx]
	jmp CG_Draw2dHudElems_1170
CG_Draw2dHudElems_780:
	and edi, 0x7
	cmp edi, 0x4
	jz CG_Draw2dHudElems_1180
	cvtsi2ss xmm4, eax
	mov edi, [ebp-0x13dc]
	mulss xmm4, [edi+0x4]
	jmp CG_Draw2dHudElems_1190
CG_Draw2dHudElems_870:
	cvtsi2ss xmm3, edx
	mov edi, [ebp-0x13dc]
	mulss xmm3, [edi+0x8]
	jmp CG_Draw2dHudElems_990
CG_Draw2dHudElems_800:
	mov ecx, eax
	jmp CG_Draw2dHudElems_1200
CG_Draw2dHudElems_950:
	movaps xmm3, xmm4
	jmp CG_Draw2dHudElems_930
CG_Draw2dHudElems_840:
	pxor xmm3, xmm3
CG_Draw2dHudElems_850:
	movss xmm1, dword [ebp-0x398]
	mov edx, [ebp-0x1404]
	mov eax, [edx+0x60]
	and eax, 0x3
	movaps xmm0, xmm2
	mulss xmm0, [eax*4+s_alignScale]
	movaps xmm6, xmm1
	subss xmm6, xmm0
	movaps xmm0, xmm6
	mov eax, [edx+0x1c]
	and eax, 0x3
	mulss xmm2, [eax*4+s_alignScale]
	subss xmm1, xmm2
	subss xmm6, xmm1
	movaps xmm1, xmm6
	mulss xmm1, xmm3
	addss xmm1, xmm0
	jmp CG_Draw2dHudElems_1210
CG_Draw2dHudElems_150:
	pxor xmm1, xmm1
	jmp CG_Draw2dHudElems_1220
CG_Draw2dHudElems_910:
	movaps xmm3, xmm2
	jmp CG_Draw2dHudElems_890
CG_Draw2dHudElems_760:
	and dword [ebp-0x1450], 0x38
	cmp dword [ebp-0x1450], 0x20
	jz CG_Draw2dHudElems_1230
	cvtsi2ss xmm2, edx
	mov eax, [ebp-0x13dc]
	mulss xmm2, [eax]
	jmp CG_Draw2dHudElems_1240
CG_Draw2dHudElems_810:
	and eax, 0x7
	cmp eax, 0x4
	jz CG_Draw2dHudElems_1250
	cvtsi2ss xmm2, edx
	mov edx, [ebp-0x13dc]
	mulss xmm2, [edx+0x4]
	jmp CG_Draw2dHudElems_1260
CG_Draw2dHudElems_1140:
	cvtsi2ss xmm2, ecx
	mov eax, [ebp-0x13dc]
	mulss xmm2, [eax+0x8]
	jmp CG_Draw2dHudElems_1150
CG_Draw2dHudElems_220:
	and edi, 0x7
	cmp edi, 0x4
	jz CG_Draw2dHudElems_1270
	cvtsi2ss xmm4, eax
	mov edi, [ebp-0x13dc]
	mulss xmm4, [edi+0x4]
	jmp CG_Draw2dHudElems_1280
CG_Draw2dHudElems_160:
	mulss xmm1, [_float_0_00600000]
	movss [esp], xmm1
	call AngleNormalize360
	fstp dword [ebp-0x13bc]
	jmp CG_Draw2dHudElems_1290
CG_Draw2dHudElems_170:
	mov eax, edi
	and eax, 0x38
	cmp eax, 0x20
	jz CG_Draw2dHudElems_1300
	cvtsi2ss xmm5, edx
	mov edx, [ebp-0x13dc]
	mulss xmm5, [edx]
	jmp CG_Draw2dHudElems_1310
CG_Draw2dHudElems_740:
	mov ebx, [ebp-0x168]
	jmp CG_Draw2dHudElems_750
CG_Draw2dHudElems_1120:
	cvtsi2ss xmm4, ecx
	mov eax, [ebp-0x13dc]
	mulss xmm4, [eax+0xc]
	jmp CG_Draw2dHudElems_1130
CG_Draw2dHudElems_1160:
	cvtsi2ss xmm5, edx
	mov edx, [ebp-0x13dc]
	mulss xmm5, [edx+0x8]
	jmp CG_Draw2dHudElems_1170
CG_Draw2dHudElems_1180:
	cvtsi2ss xmm4, eax
	mov ecx, [ebp-0x13dc]
	mulss xmm4, [ecx+0xc]
	jmp CG_Draw2dHudElems_1190
CG_Draw2dHudElems_270:
	pxor xmm3, xmm3
CG_Draw2dHudElems_280:
	movss xmm1, dword [ebp-0x398]
	mov edx, [ebp-0x1404]
	mov eax, [edx+0x60]
	and eax, 0x3
	movaps xmm0, xmm2
	mulss xmm0, [eax*4+s_alignScale]
	movaps xmm6, xmm1
	subss xmm6, xmm0
	movaps xmm0, xmm6
	mov eax, [edx+0x1c]
	and eax, 0x3
	mulss xmm2, [eax*4+s_alignScale]
	subss xmm1, xmm2
	subss xmm6, xmm1
	movaps xmm1, xmm6
	mulss xmm1, xmm3
	addss xmm1, xmm0
	jmp CG_Draw2dHudElems_1320
CG_Draw2dHudElems_210:
	movaps xmm5, xmm2
	jmp CG_Draw2dHudElems_190
CG_Draw2dHudElems_200:
	and dword [ebp-0x1450], 0x38
	cmp dword [ebp-0x1450], 0x20
	jz CG_Draw2dHudElems_1330
	cvtsi2ss xmm2, edx
	mov eax, [ebp-0x13dc]
	mulss xmm2, [eax]
	jmp CG_Draw2dHudElems_1340
CG_Draw2dHudElems_770:
	movaps xmm5, xmm2
	jmp CG_Draw2dHudElems_750
CG_Draw2dHudElems_1270:
	cvtsi2ss xmm4, eax
	mov ecx, [ebp-0x13dc]
	mulss xmm4, [ecx+0xc]
	jmp CG_Draw2dHudElems_1280
CG_Draw2dHudElems_1250:
	cvtsi2ss xmm2, edx
	mov eax, [ebp-0x13dc]
	mulss xmm2, [eax+0xc]
	jmp CG_Draw2dHudElems_1260
CG_Draw2dHudElems_820:
	movaps xmm4, xmm2
	mov ecx, [ebp-0x1404]
	jmp CG_Draw2dHudElems_1200
CG_Draw2dHudElems_1300:
	cvtsi2ss xmm5, edx
	mov eax, [ebp-0x13dc]
	mulss xmm5, [eax+0x8]
	jmp CG_Draw2dHudElems_1310
CG_Draw2dHudElems_180:
	mov ebx, [ebp-0x168]
	jmp CG_Draw2dHudElems_190
CG_Draw2dHudElems_1230:
	cvtsi2ss xmm2, edx
	mov edx, [ebp-0x13dc]
	mulss xmm2, [edx+0x8]
	jmp CG_Draw2dHudElems_1240
CG_Draw2dHudElems_250:
	movaps xmm4, xmm2
	jmp CG_Draw2dHudElems_230
CG_Draw2dHudElems_240:
	and eax, 0x7
	cmp eax, 0x4
	jz CG_Draw2dHudElems_1350
	cvtsi2ss xmm2, edx
	mov edx, [ebp-0x13dc]
	mulss xmm2, [edx+0x4]
	jmp CG_Draw2dHudElems_1360
CG_Draw2dHudElems_1330:
	cvtsi2ss xmm2, edx
	mov edx, [ebp-0x13dc]
	mulss xmm2, [edx+0x8]
	jmp CG_Draw2dHudElems_1340
CG_Draw2dHudElems_1350:
	cvtsi2ss xmm2, edx
	mov eax, [ebp-0x13dc]
	mulss xmm2, [eax+0xc]
	jmp CG_Draw2dHudElems_1360
	
	
CG_Draw2dHudElems_jumptab_0:
	dd CG_Draw2dHudElems_140
	dd CG_Draw2dHudElems_1370
	dd CG_Draw2dHudElems_1380
	dd CG_Draw2dHudElems_1390
	dd CG_Draw2dHudElems_1400
	dd CG_Draw2dHudElems_1410
CG_Draw2dHudElems_jumptab_1:
	dd CG_Draw2dHudElems_310
	dd CG_Draw2dHudElems_1420
	dd CG_Draw2dHudElems_1430
	dd CG_Draw2dHudElems_1440
	dd CG_Draw2dHudElems_1450
	dd CG_Draw2dHudElems_1460
	dd CG_Draw2dHudElems_310
	dd CG_Draw2dHudElems_1470
	dd CG_Draw2dHudElems_1470
	dd CG_Draw2dHudElems_1480
	dd CG_Draw2dHudElems_1480
CG_Draw2dHudElems_jumptab_2:
	dd CG_Draw2dHudElems_1490
	dd CG_Draw2dHudElems_1500
	dd CG_Draw2dHudElems_1510
	dd CG_Draw2dHudElems_1500
	dd CG_Draw2dHudElems_1520
	dd CG_Draw2dHudElems_1500
CG_Draw2dHudElems_jumptab_3:
	dd CG_Draw2dHudElems_1530
	dd CG_Draw2dHudElems_1540
	dd CG_Draw2dHudElems_1550
	dd CG_Draw2dHudElems_1540
	dd CG_Draw2dHudElems_1560
	dd CG_Draw2dHudElems_1540
CG_Draw2dHudElems_jumptab_4:
	dd CG_Draw2dHudElems_1570
	dd CG_Draw2dHudElems_1580
	dd CG_Draw2dHudElems_1590
	dd CG_Draw2dHudElems_1580
	dd CG_Draw2dHudElems_1600
	dd CG_Draw2dHudElems_1580


;CG_HudElemRegisterDvars()
CG_HudElemRegisterDvars:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov dword [esp+0xc], _cstring_null
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_waypointdebugdra
	call Cvar_RegisterBool
	mov [waypointDebugDraw], eax
	mov dword [esp+0x14], _cstring_width_of_the_off
	mov dword [esp+0x10], 0x0
	mov esi, 0x7f7fffff
	mov [esp+0xc], esi
	mov edi, 0x800000
	mov [esp+0x8], edi
	mov ebx, 0x42100000
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_waypointiconwidt
	call Cvar_RegisterFloat
	mov [waypointIconWidth], eax
	mov dword [esp+0x14], _cstring_height_of_the_of
	mov dword [esp+0x10], 0x0
	mov [esp+0xc], esi
	mov [esp+0x8], edi
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_waypointiconheig
	call Cvar_RegisterFloat
	mov [waypointIconHeight], eax
	mov dword [esp+0x14], _cstring_width_of_the_off
	mov dword [esp+0x10], 0x0
	mov [esp+0xc], esi
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x41c80000
	mov dword [esp], _cstring_waypointoffscree
	call Cvar_RegisterFloat
	mov [waypointOffscreenPointerWidth], eax
	mov dword [esp+0x14], _cstring_height_of_the_of
	mov dword [esp+0x10], 0x0
	mov [esp+0xc], esi
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x41400000
	mov dword [esp], _cstring_waypointoffscree1
	call Cvar_RegisterFloat
	mov [waypointOffscreenPointerHeight], eax
	mov dword [esp+0x14], _cstring_distance_from_th
	mov dword [esp+0x10], 0x0
	mov [esp+0xc], esi
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x41f00000
	mov dword [esp], _cstring_waypointoffscree2
	call Cvar_RegisterFloat
	mov [waypointOffscreenPointerDistance], eax
	mov dword [esp+0x14], _cstring_distance_from_th1
	mov dword [esp+0x10], 0x0
	mov [esp+0xc], esi
	xor ebx, ebx
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x41f00000
	mov dword [esp], _cstring_waypointoffscree3
	call Cvar_RegisterFloat
	mov [waypointOffscreenDistanceThresholdAlpha], eax
	mov dword [esp+0x14], _cstring_offset_from_the_
	mov dword [esp+0x10], 0x0
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x42ce0000
	mov dword [esp], _cstring_waypointoffscree4
	call Cvar_RegisterFloat
	mov [waypointOffscreenPadLeft], eax
	mov dword [esp+0x14], _cstring_offset_from_the_
	mov dword [esp+0x10], 0x0
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_waypointoffscree5
	call Cvar_RegisterFloat
	mov [waypointOffscreenPadRight], eax
	mov dword [esp+0x14], _cstring_offset_from_the_
	mov dword [esp+0x10], 0x0
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_waypointoffscree6
	call Cvar_RegisterFloat
	mov [waypointOffscreenPadTop], eax
	mov dword [esp+0x14], _cstring_offset_from_the_
	mov dword [esp+0x10], 0x0
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x41f00000
	mov dword [esp], _cstring_waypointoffscree7
	call Cvar_RegisterFloat
	mov [waypointOffscreenPadBottom], eax
	mov dword [esp+0xc], _cstring_offscreen_icons_
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_waypointoffscree8
	call Cvar_RegisterBool
	mov [waypointOffscreenRoundedCorners], eax
	mov dword [esp+0x14], _cstring_size_of_the_roun
	mov dword [esp+0x10], 0x0
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x42d20000
	mov dword [esp], _cstring_waypointoffscree9
	call Cvar_RegisterFloat
	mov [waypointOffscreenCornerRadius], eax
	mov dword [esp+0x14], _cstring_how_far_the_offs
	mov dword [esp+0x10], 0x0
	mov [esp+0xc], esi
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x43fa0000
	mov dword [esp], _cstring_waypointoffscree10
	call Cvar_RegisterFloat
	mov [waypointOffscreenScaleLength], eax
	mov dword [esp+0x14], _cstring_smallest_scale_t
	mov dword [esp+0x10], 0x0
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov edi, 0x3f800000
	mov [esp+0x4], edi
	mov dword [esp], _cstring_waypointoffscree11
	call Cvar_RegisterFloat
	mov [waypointOffscreenScaleSmallest], eax
	mov dword [esp+0x14], _cstring_distance_from_pl
	mov dword [esp+0x10], 0x0
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x447a0000
	mov dword [esp], _cstring_waypointdistscal
	call Cvar_RegisterFloat
	mov [waypointDistScaleRangeMin], eax
	mov dword [esp+0x14], _cstring_distance_from_pl1
	mov dword [esp+0x10], 0x0
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x453b8000
	mov dword [esp], _cstring_waypointdistscal1
	call Cvar_RegisterFloat
	mov [waypointDistScaleRangeMax], eax
	mov dword [esp+0x14], _cstring_smallest_scale_t1
	mov dword [esp+0x10], 0x0
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x3f4ccccd
	mov dword [esp], _cstring_waypointdistscal2
	call Cvar_RegisterFloat
	mov [waypointDistScaleSmallest], eax
	mov dword [esp+0x14], _cstring_scale_applied_to
	mov dword [esp+0x10], 0x0
	mov [esp+0xc], esi
	mov dword [esp+0x8], 0x3dcccccd
	mov dword [esp+0x4], 0x3fe66666
	mov dword [esp], _cstring_waypointsplitscr
	call Cvar_RegisterFloat
	mov [waypointSplitscreenScale], eax
	mov dword [esp+0x14], _cstring_null
	mov dword [esp+0x10], 0x0
	mov [esp+0xc], esi
	mov dword [esp+0x8], 0xff7fffff
	mov dword [esp+0x4], 0xc1880000
	mov dword [esp], _cstring_waypointtweaky
	call Cvar_RegisterFloat
	mov [waypointTweakY], eax
	mov dword [esp+0x14], _cstring_brightness_of_th
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], edi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x3ecccccd
	mov dword [esp], _cstring_hudelempausedbri
	call Cvar_RegisterFloat
	mov [hudElemPausedBrightness], eax
	mov dword [esp+0x14], _cstring_for_waypoints_po
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x41f00000
	mov dword [esp], _cstring_waypointplayerof
	call Cvar_RegisterFloat
	mov [waypointPlayerOffsetProne], eax
	mov dword [esp+0x14], _cstring_for_waypoints_po1
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x42600000
	mov dword [esp], _cstring_waypointplayerof1
	call Cvar_RegisterFloat
	mov [waypointPlayerOffsetCrouch], eax
	mov dword [esp+0x14], _cstring_for_waypoints_po2
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x42940000
	mov dword [esp], _cstring_waypointplayerof2
	call Cvar_RegisterFloat
	mov [waypointPlayerOffsetStand], eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;CG_TranslateHudElemMessage(int, char const*, char const*, char*)
CG_TranslateHudElemMessage:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov esi, [ebp+0x14]
	mov dword [esp+0x8], 0x0
	mov eax, [ebp+0x10]
	mov [esp+0x4], eax
	mov eax, [ebp+0xc]
	mov [esp], eax
	call SEH_LocalizeTextMessage
	mov edx, eax
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, edx
	repne scasb
	not ecx
	lea eax, [ecx-0x1]
	mov [ebp-0x20], eax
	cmp ecx, 0x100
	jbe CG_TranslateHudElemMessage_10
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_TranslateHudElemMessage_10:
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov [esp], esi
	call memcpy
	mov eax, [ebp-0x20]
	mov byte [esi+eax], 0x0
	mov dword [ebp-0x1c], 0x0
	lea ebx, [ebp-0x20]
	lea edi, [ebp-0x1c]
CG_TranslateHudElemMessage_20:
	mov [esp], esi
	mov ecx, ebx
	mov edx, edi
	mov eax, [ebp+0x8]
	call ReplaceDirective
	test al, al
	jnz CG_TranslateHudElemMessage_20
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;CG_AddDrawSurfsFor3dHudElems(int)
CG_AddDrawSurfsFor3dHudElems:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x19c
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_ShouldDrawHud
	test al, al
	jz CG_AddDrawSurfsFor3dHudElems_10
	mov eax, cgArray
	mov eax, [eax+0x24]
	lea edx, [eax+0xc]
	add eax, 0x8b0
	xor ebx, ebx
	jmp CG_AddDrawSurfsFor3dHudElems_20
CG_AddDrawSurfsFor3dHudElems_40:
	mov [ebp+ebx*4-0x180], eax
	add ebx, 0x1
	add eax, 0xa0
	cmp ebx, 0x1f
	jz CG_AddDrawSurfsFor3dHudElems_30
CG_AddDrawSurfsFor3dHudElems_20:
	mov edi, [eax]
	test edi, edi
	jnz CG_AddDrawSurfsFor3dHudElems_40
CG_AddDrawSurfsFor3dHudElems_30:
	lea eax, [edx+0x1c04]
	lea edx, [ebx*4]
	xor ecx, ecx
	jmp CG_AddDrawSurfsFor3dHudElems_50
CG_AddDrawSurfsFor3dHudElems_70:
	mov [ebp+edx-0x180], eax
	add ebx, 0x1
	add ecx, 0x1
	add eax, 0xa0
	add edx, 0x4
	cmp ecx, 0x1f
	jz CG_AddDrawSurfsFor3dHudElems_60
CG_AddDrawSurfsFor3dHudElems_50:
	mov esi, [eax]
	test esi, esi
	jnz CG_AddDrawSurfsFor3dHudElems_70
CG_AddDrawSurfsFor3dHudElems_60:
	mov dword [esp+0xc], compare_hudelems
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], ebx
	lea eax, [ebp-0x180]
	mov [esp], eax
	call qsort
	test ebx, ebx
	jle CG_AddDrawSurfsFor3dHudElems_10
	xor edi, edi
	jmp CG_AddDrawSurfsFor3dHudElems_80
CG_AddDrawSurfsFor3dHudElems_90:
	add edi, 0x1
	cmp edi, ebx
	jz CG_AddDrawSurfsFor3dHudElems_10
CG_AddDrawSurfsFor3dHudElems_80:
	mov esi, [ebp+edi*4-0x180]
	cmp dword [esi], 0xd
	jnz CG_AddDrawSurfsFor3dHudElems_90
	lea eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov edx, cgArray
	mov eax, [edx+0x46128]
	mov [esp+0x4], eax
	mov [esp], esi
	call BG_LerpHudColors
	cmp byte [ebp-0x19], 0x0
	jz CG_AddDrawSurfsFor3dHudElems_90
	mov dword [esp+0xc], 0x40
	lea ecx, [ebp-0x88]
	mov [esp+0x8], ecx
	mov eax, [esi+0x44]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_ServerMaterialName
	test eax, eax
	jnz CG_AddDrawSurfsFor3dHudElems_90
	mov dword [esp+0xc], 0x40
	lea edx, [ebp-0x88]
	mov [esp+0x8], edx
	mov eax, [esi+0x40]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call CG_ServerMaterialName
	test eax, eax
	jz CG_AddDrawSurfsFor3dHudElems_90
	mov dword [esp+0x4], 0x7
	lea eax, [ebp-0x88]
	mov [esp], eax
	call Material_RegisterHandle
	mov [ebp-0x190], eax
	cvtsi2ss xmm3, dword [esi+0x3c]
	mov edx, [esi+0x54]
	test edx, edx
	jle CG_AddDrawSurfsFor3dHudElems_100
	mov ecx, cgArray
	mov eax, [ecx+0x46128]
	sub eax, [esi+0x50]
	cmp edx, eax
	jle CG_AddDrawSurfsFor3dHudElems_100
	cvtsi2ss xmm2, dword [esi+0x4c]
	test eax, eax
	jle CG_AddDrawSurfsFor3dHudElems_110
	cvtsi2ss xmm0, eax
	cvtsi2ss xmm1, edx
	divss xmm0, xmm1
	subss xmm3, xmm2
	mulss xmm3, xmm0
	addss xmm3, xmm2
CG_AddDrawSurfsFor3dHudElems_100:
	pxor xmm0, xmm0
	ucomiss xmm3, xmm0
	jp CG_AddDrawSurfsFor3dHudElems_120
	jz CG_AddDrawSurfsFor3dHudElems_90
CG_AddDrawSurfsFor3dHudElems_120:
	movss xmm0, dword [esi+0x78]
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jbe CG_AddDrawSurfsFor3dHudElems_130
	mulss xmm3, [_float_0_00430000]
	mov dword [ebp-0x18c], 0x3
CG_AddDrawSurfsFor3dHudElems_140:
	mov ecx, [esi+0xc]
	mov edx, [esi+0x8]
	mov eax, [esi+0x4]
	mov [ebp-0x44], eax
	mov [ebp-0x40], edx
	mov [ebp-0x3c], ecx
	movzx edx, byte [ebp-0x1c]
	movzx eax, byte [ebp-0x1b]
	shl eax, 0x8
	or edx, eax
	movzx eax, byte [ebp-0x1a]
	shl eax, 0x10
	or edx, eax
	movzx eax, byte [ebp-0x19]
	shl eax, 0x18
	or edx, eax
	mov [ebp-0x38], edx
	mov eax, [ebp-0x18c]
	mov [ebp-0x2c], eax
	movss [ebp-0x34], xmm3
	mov dword [ebp-0x30], 0x0
	mov edx, [ebp-0x190]
	mov [ebp-0x48], edx
	lea ecx, [ebp-0x48]
	mov [esp], ecx
	call FX_SpriteAdd
	jmp CG_AddDrawSurfsFor3dHudElems_90
CG_AddDrawSurfsFor3dHudElems_10:
	add esp, 0x19c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_AddDrawSurfsFor3dHudElems_130:
	mov dword [ebp-0x18c], 0x0
	jmp CG_AddDrawSurfsFor3dHudElems_140
CG_AddDrawSurfsFor3dHudElems_110:
	movaps xmm3, xmm2
	jmp CG_AddDrawSurfsFor3dHudElems_100


;Initialized global or static variables of cg_hudelem:
SECTION .data


;Initialized constant data of cg_hudelem:
SECTION .rdata
s_alignScale: dd 0x0, 0x3f000000, 0x3f800000, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x7fffffff, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x586c2, 0x59423, 0x59411, 0x593ff, 0x593ed, 0x593db, 0x58845, 0x595b2, 0x5956b, 0x594fe, 0x5959f, 0x594cc, 0x58845, 0x594b3, 0x594b3, 0x5949a, 0x5949a, 0x59787, 0x59777, 0x58438, 0x59777, 0x59767, 0x59777, 0x58753, 0x59727, 0x5965d, 0x59727, 0x59737, 0x59727, 0x59670, 0x59747, 0x59714, 0x59747, 0x59757, 0x59747, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0


;Zero initialized global or static variables of cg_hudelem:
SECTION .bss
hudElemPausedBrightness: resb 0x4
_ZZ17DrawHudElemStringiPK15ScreenPlacementPKcPK9hudelem_sP12cg_hudelem_tE9glowColor: resb 0x7c
waypointDebugDraw: resb 0x28
waypointDistScaleRangeMax: resb 0x4
waypointDistScaleRangeMin: resb 0x4
waypointDistScaleSmallest: resb 0x4
waypointIconHeight: resb 0x4
waypointIconWidth: resb 0x4
waypointOffscreenCornerRadius: resb 0x4
waypointOffscreenDistanceThresholdAlpha: resb 0x4
waypointOffscreenPadBottom: resb 0x4
waypointOffscreenPadLeft: resb 0x4
waypointOffscreenPadRight: resb 0x4
waypointOffscreenPadTop: resb 0x4
waypointOffscreenPointerDistance: resb 0x4
waypointOffscreenPointerHeight: resb 0x4
waypointOffscreenPointerWidth: resb 0x4
waypointOffscreenRoundedCorners: resb 0x4
waypointOffscreenScaleLength: resb 0x4
waypointOffscreenScaleSmallest: resb 0x4
waypointPlayerOffsetCrouch: resb 0x4
waypointPlayerOffsetProne: resb 0x4
waypointPlayerOffsetStand: resb 0x4
waypointSplitscreenScale: resb 0x4
waypointTweakY: resb 0x4


;All cstrings:
SECTION .rdata
_cstring_:		db "[{",0
_cstring_1:		db "}]",0
_cstring_fake_intro_secon:		db "FAKE_INTRO_SECONDS",0
_cstring_d:		db "%d",0
_cstring_02d:		db "%02d",0
_cstring_key_unbound:		db "KEY_UNBOUND",0
_cstring_s:		db "%s",0
_cstring_argument_s_given:		db "Argument ",22h,"%s",22h," given for FAKE_INTRO_SECONDS is outside the acceptible range of (%d,%d).",0ah,0
_cstring_drawoffscreenvie:		db "DrawOffscreenViewableWaypoint(): targetEnt %i not in snapshot, may not be a network-broadcasting entity.",0
_cstring_i02i02ii:		db "%i:%02i:%02i.%i",0
_cstring_needle:		db "needle",0
_cstring_hudelem_string:		db "hudelem string",0
_cstring_g:		db "%g",0
_cstring_i02i02i:		db "%i:%02i:%02i",0
_cstring_i02i:		db "%i:%02i",0
_cstring_i02ii:		db "%i:%02i.%i",0
_cstring_null:		db 0
_cstring_waypointdebugdra:		db "waypointDebugDraw",0
_cstring_width_of_the_off:		db "Width of the offscreen pointer.",0
_cstring_waypointiconwidt:		db "waypointIconWidth",0
_cstring_height_of_the_of:		db "Height of the offscreen pointer.",0
_cstring_waypointiconheig:		db "waypointIconHeight",0
_cstring_waypointoffscree:		db "waypointOffscreenPointerWidth",0
_cstring_waypointoffscree1:		db "waypointOffscreenPointerHeight",0
_cstring_distance_from_th:		db "Distance from the center of the offscreen objective icon to the center its arrow.",0
_cstring_waypointoffscree2:		db "waypointOffscreenPointerDistance",0
_cstring_distance_from_th1:		db "Distance from the threshold over which offscreen objective icons lerp their alpha.",0
_cstring_waypointoffscree3:		db "waypointOffscreenDistanceThresholdAlpha",0
_cstring_offset_from_the_:		db "Offset from the edge.",0
_cstring_waypointoffscree4:		db "waypointOffscreenPadLeft",0
_cstring_waypointoffscree5:		db "waypointOffscreenPadRight",0
_cstring_waypointoffscree6:		db "waypointOffscreenPadTop",0
_cstring_waypointoffscree7:		db "waypointOffscreenPadBottom",0
_cstring_offscreen_icons_:		db "Off-screen icons take rounded corners when true.  90-degree corners when false.",0
_cstring_waypointoffscree8:		db "waypointOffscreenRoundedCorners",0
_cstring_size_of_the_roun:		db "Size of the rounded corners.",0
_cstring_waypointoffscree9:		db "waypointOffscreenCornerRadius",0
_cstring_how_far_the_offs:		db "How far the offscreen icon scale travels from full to smallest scale.",0
_cstring_waypointoffscree10:		db "waypointOffscreenScaleLength",0
_cstring_smallest_scale_t:		db "Smallest scale that the offscreen effect uses.",0
_cstring_waypointoffscree11:		db "waypointOffscreenScaleSmallest",0
_cstring_distance_from_pl:		db "Distance from player that icon distance scaling starts.",0
_cstring_waypointdistscal:		db "waypointDistScaleRangeMin",0
_cstring_distance_from_pl1:		db "Distance from player that icon distance scaling ends.",0
_cstring_waypointdistscal1:		db "waypointDistScaleRangeMax",0
_cstring_smallest_scale_t1:		db "Smallest scale that the distance effect uses.",0
_cstring_waypointdistscal2:		db "waypointDistScaleSmallest",0
_cstring_scale_applied_to:		db "Scale applied to waypoint icons in splitscreen views.",0
_cstring_waypointsplitscr:		db "waypointSplitscreenScale",0
_cstring_waypointtweaky:		db "waypointTweakY",0
_cstring_brightness_of_th:		db "Brightness of the hudelems when the game is paused.",0
_cstring_hudelempausedbri:		db "hudElemPausedBrightness",0
_cstring_for_waypoints_po:		db "For waypoints pointing to players, how high to offset off of their origin when they are prone.",0
_cstring_waypointplayerof:		db "waypointPlayerOffsetProne",0
_cstring_for_waypoints_po1:		db "For waypoints pointing to players, how high to offset off of their origin when they are crouching.",0
_cstring_waypointplayerof1:		db "waypointPlayerOffsetCrouch",0
_cstring_for_waypoints_po2:		db "For waypoints pointing to players, how high to offset off of their origin when they are standing.",0
_cstring_waypointplayerof2:		db "waypointPlayerOffsetStand",0



;All constant floats and doubles:
SECTION .rdata
_float_0_00000000:		dd 0x0	; 0
_data16_80000000:		dd 0x80000000, 0x0, 0x0, 0x0	; OWORD
_float_0_00392157:		dd 0x3b808081	; 0.00392157
_float_1_00000000:		dd 0x3f800000	; 1
_float_0_50000000:		dd 0x3f000000	; 0.5
_float_0_10000000:		dd 0x3dcccccd	; 0.1
_float_180_00000000:		dd 0x43340000	; 180
_double_3_14159265:		dq 0x400921fb54442d18	; 3.14159
_float__0_50000000:		dd 0xbf000000	; -0.5
_data16_7fffffff:		dd 0x7fffffff, 0x0, 0x0, 0x0	; OWORD
_float_0_00100000:		dd 0x3a83126f	; 0.001
_float_360_00000000:		dd 0x43b40000	; 360
_float_0_25000000:		dd 0x3e800000	; 0.25
_float_0_33333334:		dd 0x3eaaaaab	; 0.333333
_float_0_00600000:		dd 0x3bc49ba6	; 0.006
_float_0_00430000:		dd 0x3b8ce704	; 0.0043

