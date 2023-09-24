;Imports of cg_hudelem:
	extern memcpy
	extern strstr
	extern _Z31UI_GetKeyBindingLocalizedStringiPKcPc
	extern strchr
	extern _Z10I_strncpyzPcPKci
	extern _Z9I_stricmpPKcS0_
	extern sscanf
	extern cgArray
	extern _Z11Com_sprintfPciPKcz
	extern _Z33UI_FilterStringForButtonAnimationPcj
	extern _Z22UI_SafeTranslateStringPKc
	extern _Z16Com_PrintWarningiPKcz
	extern _Z21R_NormalizedTextScaleP6Font_sf
	extern cl_paused
	extern _Z15SEH_PrintStrlenPKc
	extern _Z24CL_PlayTextFXPulseSoundsiiiiiiPi
	extern cgMedia
	extern _Z30CL_DrawTextPhysicalWithEffectsPKciP6Font_sffffPKfiS4_P8MaterialS6_iiii
	extern _Z21CG_ServerMaterialNameiiPcj
	extern _Z14CG_Flashbangedi
	extern _Z16BG_LerpHudColorsPK9hudelem_siP15hudelem_color_t
	extern _Z23Material_RegisterHandlePKci
	extern scrPlaceView
	extern cg_entitiesArray
	extern _Z13Vec2NormalizePf
	extern atan2f
	extern _Z33CL_DrawStretchPicPhysicalRotateXYfffffffffPKfP8Material
	extern _Z25CL_DrawStretchPicPhysicalffffffffPKfP8Material
	extern _Z12Vec2DistancePKfS0_
	extern colorYellow
	extern colorGreen
	extern qsort
	extern _Z17AngleNormalize360f
	extern _Z25CG_DrawRotatedPicPhysicalPK15ScreenPlacementfffffPKfP8Material
	extern _Z16UI_GetFontHandlePK15ScreenPlacementif
	extern _Z13UI_TextHeightP6Font_sf
	extern _Z2vaPKcz
	extern _Z12UI_TextWidthPKciP6Font_sf
	extern _Z35CL_GetScreenAspectRatioDisplayPixelv
	extern _Z17UI_AnyMenuVisiblei
	extern _Z15ScrPlace_ApplyXPK15ScreenPlacementfi
	extern _Z15ScrPlace_ApplyYPK15ScreenPlacementfi
	extern floorf
	extern _Z9I_strncatPciPKc
	extern _Z18CL_GetConfigStringii
	extern _Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t
	extern _Z17Dvar_RegisterBoolPKchtS0_
	extern _Z18Dvar_RegisterFloatPKcffftS0_
	extern _Z16CG_ShouldDrawHudi
	extern _Z12FX_SpriteAddP8FxSprite

;Exports of cg_hudelem:
	global hudElemPausedBrightness
	global s_alignScale
	global _Z16compare_hudelemsPKvS0_
	global _Z16ReplaceDirectiveiPjS_Pc
	global _ZZ17DrawHudElemStringiPK15ScreenPlacementPKcPK9hudelem_sP12cg_hudelem_tE9glowColor
	global _Z17DrawHudElemStringiPK15ScreenPlacementPKcPK9hudelem_sP12cg_hudelem_t
	global _Z29DrawOffscreenViewableWaypointiPK9hudelem_s
	global _Z17CG_Draw2dHudElemsii
	global _Z23CG_HudElemRegisterDvarsv
	global _Z26CG_TranslateHudElemMessageiPKcS0_Pc
	global _Z28CG_AddDrawSurfsFor3dHudElemsi
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
_Z16compare_hudelemsPKvS0_:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [eax]
	mov eax, [ebp+0xc]
	mov eax, [eax]
	movss xmm0, dword [edx+0x80]
	subss xmm0, [eax+0x80]
	ucomiss xmm0, [_float_0_00000000]
	jb _Z16compare_hudelemsPKvS0__10
_Z16compare_hudelemsPKvS0__20:
	xor eax, eax
	ucomiss xmm0, [_float_0_00000000]
	seta al
	pop ebp
	ret
_Z16compare_hudelemsPKvS0__10:
	jp _Z16compare_hudelemsPKvS0__20
	mov eax, 0xffffffff
	pop ebp
	ret
	nop


;ReplaceDirective(int, unsigned int*, unsigned int*, char*)
_Z16ReplaceDirectiveiPjS_Pc:
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
	jz _Z16ReplaceDirectiveiPjS_Pc_10
	mov dword [esp+0x4], _cstring_1
	mov [esp], eax
	call strstr
	mov [ebp-0x540], eax
	test eax, eax
	jz _Z16ReplaceDirectiveiPjS_Pc_10
	sub eax, esi
	sub eax, 0x2
	mov [ebp-0x534], eax
	jnz _Z16ReplaceDirectiveiPjS_Pc_20
_Z16ReplaceDirectiveiPjS_Pc_10:
	xor eax, eax
	add esp, 0x55c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z16ReplaceDirectiveiPjS_Pc_20:
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
	call _Z31UI_GetKeyBindingLocalizedStringiPKcPc
	test eax, eax
	jnz _Z16ReplaceDirectiveiPjS_Pc_30
	mov dword [esp+0x4], 0x3a
	lea edx, [ebp-0x21c]
	mov [esp], edx
	call strchr
	mov edi, eax
	test eax, eax
	jz _Z16ReplaceDirectiveiPjS_Pc_40
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
	call _Z10I_strncpyzPcPKci
_Z16ReplaceDirectiveiPjS_Pc_80:
	mov dword [esp+0x4], _cstring_fake_intro_secon
	lea edx, [ebp-0x41c]
	mov [esp], edx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z16ReplaceDirectiveiPjS_Pc_50
	mov dword [ebp-0x1c], 0x0
	lea eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_d
	lea ebx, [ebp-0x51c]
	mov [esp], ebx
	call sscanf
	cmp dword [ebp-0x1c], 0x28
	ja _Z16ReplaceDirectiveiPjS_Pc_60
_Z16ReplaceDirectiveiPjS_Pc_90:
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
	call _Z11Com_sprintfPciPKcz
	jmp _Z16ReplaceDirectiveiPjS_Pc_70
_Z16ReplaceDirectiveiPjS_Pc_30:
	mov dword [esp+0x4], 0x100
	lea eax, [ebp-0x11c]
	mov [esp], eax
	call _Z33UI_FilterStringForButtonAnimationPcj
_Z16ReplaceDirectiveiPjS_Pc_70:
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
	jg _Z16ReplaceDirectiveiPjS_Pc_10
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
_Z16ReplaceDirectiveiPjS_Pc_50:
	mov dword [esp], _cstring_key_unbound
	call _Z22UI_SafeTranslateStringPKc
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_s
	mov dword [esp+0x4], 0x100
	lea eax, [ebp-0x11c]
	mov [esp], eax
	call _Z11Com_sprintfPciPKcz
	jmp _Z16ReplaceDirectiveiPjS_Pc_70
_Z16ReplaceDirectiveiPjS_Pc_40:
	mov dword [esp+0x8], 0x100
	lea eax, [ebp-0x21c]
	mov [esp+0x4], eax
	lea edx, [ebp-0x41c]
	mov [esp], edx
	call _Z10I_strncpyzPcPKci
	mov byte [ebp-0x51c], 0x0
	jmp _Z16ReplaceDirectiveiPjS_Pc_80
_Z16ReplaceDirectiveiPjS_Pc_60:
	mov dword [ebp-0x1c], 0x0
	mov dword [esp+0x10], 0x28
	mov dword [esp+0xc], 0x0
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_argument_s_given
	mov dword [esp], 0x1
	call _Z16Com_PrintWarningiPKcz
	jmp _Z16ReplaceDirectiveiPjS_Pc_90


;DrawHudElemString(int, ScreenPlacement const*, char const*, hudelem_s const*, cg_hudelem_t*)
_Z17DrawHudElemStringiPK15ScreenPlacementPKcPK9hudelem_sP12cg_hudelem_t:
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
	jle _Z17DrawHudElemStringiPK15ScreenPlacementPKcPK9hudelem_sP12cg_hudelem_t_10
	sub eax, [esi+0x68]
	test eax, eax
	jle _Z17DrawHudElemStringiPK15ScreenPlacementPKcPK9hudelem_sP12cg_hudelem_t_20
	cmp edx, eax
	jg _Z17DrawHudElemStringiPK15ScreenPlacementPKcPK9hudelem_sP12cg_hudelem_t_30
_Z17DrawHudElemStringiPK15ScreenPlacementPKcPK9hudelem_sP12cg_hudelem_t_10:
	mov eax, [esi+0x1c]
	and eax, 0x3
	mulss xmm2, [eax*4+s_alignScale]
	movss xmm0, dword [edi+0x4]
	subss xmm0, xmm2
	movss [ebp-0x28], xmm0
_Z17DrawHudElemStringiPK15ScreenPlacementPKcPK9hudelem_sP12cg_hudelem_t_80:
	mov eax, [edi+0x21c]
	mov [esp+0x4], eax
	mov eax, [edi+0x218]
	mov [esp], eax
	call _Z21R_NormalizedTextScaleP6Font_sf
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
	jz _Z17DrawHudElemStringiPK15ScreenPlacementPKcPK9hudelem_sP12cg_hudelem_t_40
	mov eax, [edi+0x234]
	cmp ebx, eax
	cmovg ebx, eax
_Z17DrawHudElemStringiPK15ScreenPlacementPKcPK9hudelem_sP12cg_hudelem_t_40:
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
	jz _Z17DrawHudElemStringiPK15ScreenPlacementPKcPK9hudelem_sP12cg_hudelem_t_50
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
_Z17DrawHudElemStringiPK15ScreenPlacementPKcPK9hudelem_sP12cg_hudelem_t_50:
	test ebx, ebx
	jz _Z17DrawHudElemStringiPK15ScreenPlacementPKcPK9hudelem_sP12cg_hudelem_t_60
	mov eax, [ebp+0x10]
	mov [esp], eax
	call _Z15SEH_PrintStrlenPKc
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
	call _Z24CL_PlayTextFXPulseSoundsiiiiiiPi
_Z17DrawHudElemStringiPK15ScreenPlacementPKcPK9hudelem_sP12cg_hudelem_t_60:
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
	call _Z30CL_DrawTextPhysicalWithEffectsPKciP6Font_sffffPKfiS4_P8MaterialS6_iiii
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z17DrawHudElemStringiPK15ScreenPlacementPKcPK9hudelem_sP12cg_hudelem_t_30:
	cvtsi2ss xmm3, eax
	cvtsi2ss xmm0, edx
	divss xmm3, xmm0
	ucomiss xmm3, [_float_1_00000000]
	jz _Z17DrawHudElemStringiPK15ScreenPlacementPKcPK9hudelem_sP12cg_hudelem_t_70
_Z17DrawHudElemStringiPK15ScreenPlacementPKcPK9hudelem_sP12cg_hudelem_t_90:
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
	jmp _Z17DrawHudElemStringiPK15ScreenPlacementPKcPK9hudelem_sP12cg_hudelem_t_80
_Z17DrawHudElemStringiPK15ScreenPlacementPKcPK9hudelem_sP12cg_hudelem_t_70:
	jnp _Z17DrawHudElemStringiPK15ScreenPlacementPKcPK9hudelem_sP12cg_hudelem_t_10
	jmp _Z17DrawHudElemStringiPK15ScreenPlacementPKcPK9hudelem_sP12cg_hudelem_t_90
_Z17DrawHudElemStringiPK15ScreenPlacementPKcPK9hudelem_sP12cg_hudelem_t_20:
	pxor xmm3, xmm3
	jmp _Z17DrawHudElemStringiPK15ScreenPlacementPKcPK9hudelem_sP12cg_hudelem_t_90


;DrawOffscreenViewableWaypoint(int, hudelem_s const*)
_Z29DrawOffscreenViewableWaypointiPK9hudelem_s:
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
	call _Z21CG_ServerMaterialNameiiPcj
	test eax, eax
	jnz _Z29DrawOffscreenViewableWaypointiPK9hudelem_s_10
_Z29DrawOffscreenViewableWaypointiPK9hudelem_s_20:
	add esp, 0x13c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z29DrawOffscreenViewableWaypointiPK9hudelem_s_10:
	mov [esp], ebx
	call _Z14CG_Flashbangedi
	test al, al
	jnz _Z29DrawOffscreenViewableWaypointiPK9hudelem_s_20
	lea eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov edx, cgArray
	mov eax, [edx+0x46128]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z16BG_LerpHudColorsPK9hudelem_siP15hudelem_color_t
	cmp byte [ebp-0x19], 0x0
	jz _Z29DrawOffscreenViewableWaypointiPK9hudelem_s_20
	mov dword [esp+0x4], 0x7
	mov [esp], esi
	call _Z23Material_RegisterHandlePKci
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
	jz _Z29DrawOffscreenViewableWaypointiPK9hudelem_s_30
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
_Z29DrawOffscreenViewableWaypointiPK9hudelem_s_30:
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
	jz _Z29DrawOffscreenViewableWaypointiPK9hudelem_s_40
	mov eax, cgArray
	cmp ecx, [eax+0x4916c]
	jz _Z29DrawOffscreenViewableWaypointiPK9hudelem_s_20
	lea eax, [ecx*4]
	mov edx, ecx
	shl edx, 0x5
	sub edx, eax
	mov eax, edx
	shl eax, 0x4
	add edx, eax
	add edx, cg_entitiesArray
	cmp byte [edx+0x1c0], 0x0
	jz _Z29DrawOffscreenViewableWaypointiPK9hudelem_s_50
	lea eax, [edx+0x1c]
	movss xmm0, dword [edx+0x1c]
	movss [ebp-0xac], xmm0
	movss xmm1, dword [eax+0x4]
	movss [ebp-0xb0], xmm1
	movss xmm2, dword [eax+0x8]
	movss [ebp-0xb4], xmm2
	cmp dword [edx+0xd0], 0x1
	jz _Z29DrawOffscreenViewableWaypointiPK9hudelem_s_60
	movaps xmm4, xmm0
	movaps xmm3, xmm1
_Z29DrawOffscreenViewableWaypointiPK9hudelem_s_360:
	mov eax, cgArray
	subss xmm4, [eax+0x492e0]
	subss xmm3, [eax+0x492e4]
	subss xmm2, [eax+0x492e8]
	xor ecx, ecx
	lea edx, [eax+0x492e0]
_Z29DrawOffscreenViewableWaypointiPK9hudelem_s_70:
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
	jnz _Z29DrawOffscreenViewableWaypointiPK9hudelem_s_70
	movss xmm2, dword [ebp-0x4c]
	pxor xmm0, xmm0
	movss [ebp-0xf8], xmm0
	ucomiss xmm0, xmm2
	ja _Z29DrawOffscreenViewableWaypointiPK9hudelem_s_80
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
_Z29DrawOffscreenViewableWaypointiPK9hudelem_s_440:
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
	jbe _Z29DrawOffscreenViewableWaypointiPK9hudelem_s_90
	movaps xmm0, xmm3
_Z29DrawOffscreenViewableWaypointiPK9hudelem_s_410:
	divss xmm0, xmm1
	mulss xmm1, xmm0
	movss [ebp-0x3c], xmm1
	mulss xmm0, [ebp-0x38]
	movss [ebp-0x38], xmm0
	mov edi, 0x1
_Z29DrawOffscreenViewableWaypointiPK9hudelem_s_330:
	ucomiss xmm2, xmm0
	jbe _Z29DrawOffscreenViewableWaypointiPK9hudelem_s_100
	movaps xmm1, xmm2
_Z29DrawOffscreenViewableWaypointiPK9hudelem_s_350:
	divss xmm1, xmm0
	movaps xmm0, xmm1
	mulss xmm1, [ebp-0x3c]
	movss [ebp-0x3c], xmm1
	mulss xmm0, [ebp-0x38]
	movss [ebp-0x38], xmm0
	mov edi, 0x1
_Z29DrawOffscreenViewableWaypointiPK9hudelem_s_340:
	mov eax, [waypointOffscreenRoundedCorners]
	cmp byte [eax+0xc], 0x0
	jz _Z29DrawOffscreenViewableWaypointiPK9hudelem_s_110
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
	jz _Z29DrawOffscreenViewableWaypointiPK9hudelem_s_120
	movaps xmm0, xmm1
	addss xmm0, xmm3
_Z29DrawOffscreenViewableWaypointiPK9hudelem_s_390:
	movss [ebp-0x2c], xmm0
	cmp byte [ebp-0xbd], 0x0
	jz _Z29DrawOffscreenViewableWaypointiPK9hudelem_s_130
	movss xmm0, dword [ebp-0xb8]
	addss xmm0, xmm2
_Z29DrawOffscreenViewableWaypointiPK9hudelem_s_380:
	movss [ebp-0x28], xmm0
	mov eax, [waypointDebugDraw]
	cmp byte [eax+0xc], 0x0
	jnz _Z29DrawOffscreenViewableWaypointiPK9hudelem_s_140
_Z29DrawOffscreenViewableWaypointiPK9hudelem_s_500:
	movss xmm0, dword [ebp-0x3c]
	subss xmm0, [ebp-0x2c]
	movss [ebp-0x24], xmm0
	movss xmm0, dword [ebp-0x38]
	subss xmm0, [ebp-0x28]
	movss [ebp-0x20], xmm0
	lea eax, [ebp-0x24]
	mov [esp], eax
	call _Z13Vec2NormalizePf
	fstp st0
	cmp byte [ebp-0xbe], 0x0
	jz _Z29DrawOffscreenViewableWaypointiPK9hudelem_s_150
	pxor xmm1, xmm1
	movss [ebp-0xf8], xmm1
	ucomiss xmm1, [ebp-0x24]
	ja _Z29DrawOffscreenViewableWaypointiPK9hudelem_s_160
_Z29DrawOffscreenViewableWaypointiPK9hudelem_s_280:
	xor edx, edx
_Z29DrawOffscreenViewableWaypointiPK9hudelem_s_290:
	cmp byte [ebp-0xbd], 0x0
	jnz _Z29DrawOffscreenViewableWaypointiPK9hudelem_s_170
	movss xmm0, dword [ebp-0x20]
	ucomiss xmm0, [ebp-0xf8]
	jbe _Z29DrawOffscreenViewableWaypointiPK9hudelem_s_180
_Z29DrawOffscreenViewableWaypointiPK9hudelem_s_260:
	mov eax, 0x1
_Z29DrawOffscreenViewableWaypointiPK9hudelem_s_270:
	test dl, dl
	jnz _Z29DrawOffscreenViewableWaypointiPK9hudelem_s_190
_Z29DrawOffscreenViewableWaypointiPK9hudelem_s_110:
	movss xmm0, dword [ebp-0xc8]
	addss xmm0, [ebp-0x3c]
	movss [ebp-0x3c], xmm0
	movss xmm1, dword [ebp-0xc4]
	addss xmm1, [ebp-0x38]
	movss [ebp-0x38], xmm1
	mov eax, edi
	test al, al
	jnz _Z29DrawOffscreenViewableWaypointiPK9hudelem_s_200
_Z29DrawOffscreenViewableWaypointiPK9hudelem_s_370:
	mov edx, edi
	test dl, dl
	jz _Z29DrawOffscreenViewableWaypointiPK9hudelem_s_210
	pxor xmm0, xmm0
	movss [ebp-0xf8], xmm0
	movss xmm1, dword [ebp-0xd0]
	ucomiss xmm1, xmm0
	jbe _Z29DrawOffscreenViewableWaypointiPK9hudelem_s_220
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
	jbe _Z29DrawOffscreenViewableWaypointiPK9hudelem_s_230
	movaps xmm0, xmm1
	divss xmm0, xmm2
	mulss xmm0, [ebp-0x40]
	movss [ebp-0x40], xmm0
_Z29DrawOffscreenViewableWaypointiPK9hudelem_s_230:
	mov eax, [waypointOffscreenScaleLength]
	movss xmm0, dword [ebp-0xf0]
	mulss xmm0, [eax+0xc]
	ucomiss xmm0, [ebp-0xd0]
	jbe _Z29DrawOffscreenViewableWaypointiPK9hudelem_s_240
	movss xmm3, dword [ebp-0xd0]
	divss xmm3, xmm0
	movaps xmm0, xmm3
	movss xmm1, dword [_float_1_00000000]
	subss xmm1, xmm3
	mov eax, [waypointOffscreenScaleSmallest]
	mulss xmm0, [eax+0xc]
	addss xmm1, xmm0
_Z29DrawOffscreenViewableWaypointiPK9hudelem_s_450:
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
	call _Z33CL_DrawStretchPicPhysicalRotateXYfffffffffPKfP8Material
	pxor xmm4, xmm4
	movss [ebp-0xf8], xmm4
_Z29DrawOffscreenViewableWaypointiPK9hudelem_s_220:
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
	jb _Z29DrawOffscreenViewableWaypointiPK9hudelem_s_250
	movss xmm2, dword [_float_1_00000000]
_Z29DrawOffscreenViewableWaypointiPK9hudelem_s_310:
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
	call _Z25CL_DrawStretchPicPhysicalffffffffPKfP8Material
	jmp _Z29DrawOffscreenViewableWaypointiPK9hudelem_s_20
_Z29DrawOffscreenViewableWaypointiPK9hudelem_s_50:
	mov [esp+0x8], ecx
	mov dword [esp+0x4], _cstring_drawoffscreenvie
	mov dword [esp], 0x1
	call _Z16Com_PrintWarningiPKcz
	jmp _Z29DrawOffscreenViewableWaypointiPK9hudelem_s_20
_Z29DrawOffscreenViewableWaypointiPK9hudelem_s_170:
	movss xmm3, dword [ebp-0xf8]
	ucomiss xmm3, [ebp-0x20]
	ja _Z29DrawOffscreenViewableWaypointiPK9hudelem_s_260
_Z29DrawOffscreenViewableWaypointiPK9hudelem_s_180:
	xor eax, eax
	jmp _Z29DrawOffscreenViewableWaypointiPK9hudelem_s_270
_Z29DrawOffscreenViewableWaypointiPK9hudelem_s_150:
	pxor xmm2, xmm2
	movss [ebp-0xf8], xmm2
	movss xmm0, dword [ebp-0x24]
	ucomiss xmm0, xmm2
	jbe _Z29DrawOffscreenViewableWaypointiPK9hudelem_s_280
_Z29DrawOffscreenViewableWaypointiPK9hudelem_s_160:
	mov edx, 0x1
	jmp _Z29DrawOffscreenViewableWaypointiPK9hudelem_s_290
_Z29DrawOffscreenViewableWaypointiPK9hudelem_s_210:
	pxor xmm0, xmm0
	movss [ebp-0xf8], xmm0
	jmp _Z29DrawOffscreenViewableWaypointiPK9hudelem_s_220
_Z29DrawOffscreenViewableWaypointiPK9hudelem_s_250:
	mov eax, [waypointDistScaleRangeMax]
	movss xmm2, dword [eax+0xc]
	ucomiss xmm1, xmm2
	jb _Z29DrawOffscreenViewableWaypointiPK9hudelem_s_300
	mov eax, [waypointDistScaleSmallest]
	movss xmm2, dword [eax+0xc]
	jmp _Z29DrawOffscreenViewableWaypointiPK9hudelem_s_310
_Z29DrawOffscreenViewableWaypointiPK9hudelem_s_90:
	ucomiss xmm1, xmm6
	ja _Z29DrawOffscreenViewableWaypointiPK9hudelem_s_320
	xor edi, edi
	movss xmm0, dword [ebp-0x38]
	jmp _Z29DrawOffscreenViewableWaypointiPK9hudelem_s_330
_Z29DrawOffscreenViewableWaypointiPK9hudelem_s_100:
	ucomiss xmm0, xmm4
	jbe _Z29DrawOffscreenViewableWaypointiPK9hudelem_s_340
	movaps xmm1, xmm4
	jmp _Z29DrawOffscreenViewableWaypointiPK9hudelem_s_350
_Z29DrawOffscreenViewableWaypointiPK9hudelem_s_40:
	movss xmm0, dword [edi+0xc]
	movss [ebp-0xb4], xmm0
	movss xmm1, dword [edi+0x8]
	movss [ebp-0xb0], xmm1
	movss xmm2, dword [edi+0x4]
	movss [ebp-0xac], xmm2
	movaps xmm4, xmm2
	movaps xmm3, xmm1
	movss xmm2, dword [ebp-0xb4]
	jmp _Z29DrawOffscreenViewableWaypointiPK9hudelem_s_360
_Z29DrawOffscreenViewableWaypointiPK9hudelem_s_200:
	lea eax, [ebp-0x4c]
	mov [esp+0x4], eax
	lea eax, [ebp-0x3c]
	mov [esp], eax
	call _Z12Vec2DistancePKfS0_
	fstp dword [ebp-0xd0]
	movss xmm0, dword [ebp-0x4c]
	subss xmm0, [ebp-0x3c]
	movss [ebp-0x34], xmm0
	movss xmm0, dword [ebp-0x48]
	subss xmm0, [ebp-0x38]
	movss [ebp-0x30], xmm0
	lea eax, [ebp-0x34]
	mov [esp], eax
	call _Z13Vec2NormalizePf
	fstp st0
	jmp _Z29DrawOffscreenViewableWaypointiPK9hudelem_s_370
_Z29DrawOffscreenViewableWaypointiPK9hudelem_s_130:
	movaps xmm0, xmm4
	subss xmm0, [ebp-0xb8]
	jmp _Z29DrawOffscreenViewableWaypointiPK9hudelem_s_380
_Z29DrawOffscreenViewableWaypointiPK9hudelem_s_120:
	movaps xmm0, xmm6
	subss xmm0, [ebp-0xb8]
	jmp _Z29DrawOffscreenViewableWaypointiPK9hudelem_s_390
_Z29DrawOffscreenViewableWaypointiPK9hudelem_s_300:
	subss xmm2, xmm0
	movss xmm4, dword [ebp-0xf8]
	ucomiss xmm4, xmm2
	jae _Z29DrawOffscreenViewableWaypointiPK9hudelem_s_400
	movss xmm3, dword [_float_1_00000000]
_Z29DrawOffscreenViewableWaypointiPK9hudelem_s_520:
	subss xmm1, xmm0
	movaps xmm0, xmm1
	divss xmm0, xmm2
	movaps xmm2, xmm3
	subss xmm2, xmm0
	mov eax, [waypointDistScaleSmallest]
	mulss xmm0, [eax+0xc]
	addss xmm2, xmm0
	jmp _Z29DrawOffscreenViewableWaypointiPK9hudelem_s_310
_Z29DrawOffscreenViewableWaypointiPK9hudelem_s_190:
	test al, al
	jz _Z29DrawOffscreenViewableWaypointiPK9hudelem_s_110
	lea eax, [ebp-0x3c]
	mov [esp+0x4], eax
	lea eax, [ebp-0x2c]
	mov [esp], eax
	call _Z12Vec2DistancePKfS0_
	fstp dword [ebp-0xbc]
	movss xmm4, dword [ebp-0xbc]
	ucomiss xmm4, [ebp-0xb8]
	jbe _Z29DrawOffscreenViewableWaypointiPK9hudelem_s_110
	movss xmm0, dword [ebp-0xb8]
	mulss xmm0, [ebp-0x24]
	addss xmm0, [ebp-0x2c]
	movss [ebp-0x3c], xmm0
	movss xmm0, dword [ebp-0xb8]
	mulss xmm0, [ebp-0x20]
	addss xmm0, [ebp-0x28]
	movss [ebp-0x38], xmm0
	mov edi, 0x1
	jmp _Z29DrawOffscreenViewableWaypointiPK9hudelem_s_110
_Z29DrawOffscreenViewableWaypointiPK9hudelem_s_320:
	movaps xmm0, xmm6
	jmp _Z29DrawOffscreenViewableWaypointiPK9hudelem_s_410
_Z29DrawOffscreenViewableWaypointiPK9hudelem_s_80:
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
	jbe _Z29DrawOffscreenViewableWaypointiPK9hudelem_s_420
	movaps xmm0, xmm2
	andps xmm0, xmm3
	ucomiss xmm1, xmm0
	jbe _Z29DrawOffscreenViewableWaypointiPK9hudelem_s_430
	movss xmm0, dword [ebx+0x2c]
	addss xmm0, xmm0
	movss [ebp-0x38], xmm0
	jmp _Z29DrawOffscreenViewableWaypointiPK9hudelem_s_440
_Z29DrawOffscreenViewableWaypointiPK9hudelem_s_240:
	mov eax, [waypointOffscreenScaleSmallest]
	movss xmm1, dword [eax+0xc]
	jmp _Z29DrawOffscreenViewableWaypointiPK9hudelem_s_450
_Z29DrawOffscreenViewableWaypointiPK9hudelem_s_60:
	mov eax, [edx+0x64]
	test al, 0x8
	jz _Z29DrawOffscreenViewableWaypointiPK9hudelem_s_460
	mov eax, [waypointPlayerOffsetProne]
	addss xmm2, [eax+0xc]
	movss [ebp-0xb4], xmm2
	movss xmm4, dword [ebp-0xac]
	movss xmm3, dword [ebp-0xb0]
	jmp _Z29DrawOffscreenViewableWaypointiPK9hudelem_s_360
_Z29DrawOffscreenViewableWaypointiPK9hudelem_s_430:
	movss [ebp-0x3c], xmm1
	movss xmm2, dword [ebp-0x38]
_Z29DrawOffscreenViewableWaypointiPK9hudelem_s_420:
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
	jbe _Z29DrawOffscreenViewableWaypointiPK9hudelem_s_470
_Z29DrawOffscreenViewableWaypointiPK9hudelem_s_480:
	movaps xmm0, xmm2
	mulss xmm0, xmm1
	movss [ebp-0x3c], xmm0
	mulss xmm1, [ebp-0x38]
	movss [ebp-0x38], xmm1
	movaps xmm2, xmm0
	movss xmm1, dword [ebx+0x28]
	andps xmm0, xmm3
	ucomiss xmm1, xmm0
	ja _Z29DrawOffscreenViewableWaypointiPK9hudelem_s_480
_Z29DrawOffscreenViewableWaypointiPK9hudelem_s_470:
	movss xmm1, dword [ebx+0x2c]
	movss xmm0, dword [ebp-0x38]
	andps xmm0, xmm3
	ucomiss xmm1, xmm0
	jbe _Z29DrawOffscreenViewableWaypointiPK9hudelem_s_440
_Z29DrawOffscreenViewableWaypointiPK9hudelem_s_490:
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x3c]
	movss [ebp-0x3c], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x38]
	movss [ebp-0x38], xmm0
	movss xmm1, dword [ebx+0x2c]
	andps xmm0, xmm3
	ucomiss xmm1, xmm0
	ja _Z29DrawOffscreenViewableWaypointiPK9hudelem_s_490
	jmp _Z29DrawOffscreenViewableWaypointiPK9hudelem_s_440
_Z29DrawOffscreenViewableWaypointiPK9hudelem_s_140:
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
	call _Z25CL_DrawStretchPicPhysicalffffffffPKfP8Material
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
	call _Z25CL_DrawStretchPicPhysicalffffffffPKfP8Material
	jmp _Z29DrawOffscreenViewableWaypointiPK9hudelem_s_500
_Z29DrawOffscreenViewableWaypointiPK9hudelem_s_460:
	test al, 0x4
	jz _Z29DrawOffscreenViewableWaypointiPK9hudelem_s_510
	mov eax, [waypointPlayerOffsetCrouch]
	movss xmm3, dword [ebp-0xb4]
	addss xmm3, [eax+0xc]
	movss [ebp-0xb4], xmm3
	movss xmm4, dword [ebp-0xac]
	movss xmm3, dword [ebp-0xb0]
	movss xmm2, dword [ebp-0xb4]
	jmp _Z29DrawOffscreenViewableWaypointiPK9hudelem_s_360
_Z29DrawOffscreenViewableWaypointiPK9hudelem_s_400:
	movss xmm3, dword [_float_1_00000000]
	movaps xmm2, xmm3
	jmp _Z29DrawOffscreenViewableWaypointiPK9hudelem_s_520
_Z29DrawOffscreenViewableWaypointiPK9hudelem_s_510:
	mov eax, [waypointPlayerOffsetStand]
	movss xmm4, dword [ebp-0xb4]
	addss xmm4, [eax+0xc]
	movss [ebp-0xb4], xmm4
	movss xmm4, dword [ebp-0xac]
	movss xmm3, dword [ebp-0xb0]
	movss xmm2, dword [ebp-0xb4]
	jmp _Z29DrawOffscreenViewableWaypointiPK9hudelem_s_360
	nop


;CG_Draw2dHudElems(int, int)
_Z17CG_Draw2dHudElemsii:
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
	jmp _Z17CG_Draw2dHudElemsii_10
_Z17CG_Draw2dHudElemsii_30:
	mov ecx, [ebp-0x13ec]
	mov [ebp+ecx*4-0x139c], eax
	add ecx, 0x1
	mov [ebp-0x13ec], ecx
	add eax, 0xa0
	cmp ecx, 0x1f
	jz _Z17CG_Draw2dHudElemsii_20
_Z17CG_Draw2dHudElemsii_10:
	mov esi, [eax]
	test esi, esi
	jnz _Z17CG_Draw2dHudElemsii_30
_Z17CG_Draw2dHudElemsii_20:
	lea eax, [edx+0x1c04]
	mov edx, [ebp-0x13ec]
	shl edx, 0x2
	xor ecx, ecx
	jmp _Z17CG_Draw2dHudElemsii_40
_Z17CG_Draw2dHudElemsii_60:
	mov [ebp+edx-0x139c], eax
	add dword [ebp-0x13ec], 0x1
	add ecx, 0x1
	add eax, 0xa0
	add edx, 0x4
	cmp ecx, 0x1f
	jz _Z17CG_Draw2dHudElemsii_50
_Z17CG_Draw2dHudElemsii_40:
	mov ebx, [eax]
	test ebx, ebx
	jnz _Z17CG_Draw2dHudElemsii_60
_Z17CG_Draw2dHudElemsii_50:
	mov dword [esp+0xc], _Z16compare_hudelemsPKvS0_
	mov dword [esp+0x8], 0x4
	mov edi, [ebp-0x13ec]
	mov [esp+0x4], edi
	lea eax, [ebp-0x139c]
	mov [esp], eax
	call qsort
	cmp edi, 0x0
	jz _Z17CG_Draw2dHudElemsii_70
	mov eax, cgArray
	mov eax, [eax+0x24]
	mov eax, [eax+0x10]
	mov [ebp-0x13f4], eax
	jle _Z17CG_Draw2dHudElemsii_70
	mov dword [ebp-0x13f0], 0x0
_Z17CG_Draw2dHudElemsii_290:
	cmp dword [ebp-0x13f4], 0x6
	jle _Z17CG_Draw2dHudElemsii_80
	mov edx, [ebp-0x13f0]
	mov eax, [ebp+edx*4-0x139c]
	test byte [eax+0x9c], 0x2
	jnz _Z17CG_Draw2dHudElemsii_90
_Z17CG_Draw2dHudElemsii_80:
	mov eax, [ebp+0xc]
	test eax, eax
	jz _Z17CG_Draw2dHudElemsii_100
	mov ecx, [ebp-0x13f0]
	mov eax, [ebp+ecx*4-0x139c]
	test byte [eax+0x9c], 0x1
	jz _Z17CG_Draw2dHudElemsii_90
	mov eax, [ebp-0x13f0]
	lea ebx, [ebp+eax*4-0x139c]
	mov edx, [ebx]
	mov [ebp-0x1404], edx
	test byte [edx+0x9c], 0x4
	jnz _Z17CG_Draw2dHudElemsii_110
_Z17CG_Draw2dHudElemsii_550:
	mov edi, edx
	cmp dword [edi], 0xd
	jz _Z17CG_Draw2dHudElemsii_120
_Z17CG_Draw2dHudElemsii_560:
	mov eax, cgArray
	mov ebx, [eax+0x46128]
	mov [ebp-0x168], ebx
	lea eax, [ebp-0x20]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov [esp], edi
	call _Z16BG_LerpHudColorsPK9hudelem_siP15hudelem_color_t
	cmp byte [ebp-0x1d], 0x0
	jz _Z17CG_Draw2dHudElemsii_90
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
	jz _Z17CG_Draw2dHudElemsii_130
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
_Z17CG_Draw2dHudElemsii_130:
	mov eax, [ebp+0x8]
	shl eax, 0x6
	mov ecx, [ebp+0x8]
	lea eax, [eax+ecx*4]
	mov edi, scrPlaceView
	add eax, edi
	mov [ebp-0x13dc], eax
	mov eax, [ebp-0x1404]
	cmp dword [eax+0x18], 0x5
	ja _Z17CG_Draw2dHudElemsii_140
	mov eax, [eax+0x18]
	jmp dword [eax*4+_Z17CG_Draw2dHudElemsii_jumptab_0]
_Z17CG_Draw2dHudElemsii_1510:
	mov edi, [ebp-0x1404]
	mov eax, [edi+0x70]
	sub eax, edx
	add eax, 0x63
_Z17CG_Draw2dHudElemsii_1070:
	test eax, eax
	js _Z17CG_Draw2dHudElemsii_150
	cvtsi2ss xmm1, eax
_Z17CG_Draw2dHudElemsii_1220:
	mov edx, [ebp-0x1404]
	mov eax, [edx+0x74]
	test eax, eax
	jz _Z17CG_Draw2dHudElemsii_160
	mulss xmm1, [_float_360_00000000]
	cvtsi2ss xmm0, eax
	divss xmm1, xmm0
	movss [esp], xmm1
	call _Z17AngleNormalize360f
	fstp dword [ebp-0x13bc]
_Z17CG_Draw2dHudElemsii_1290:
	mov ecx, [ebp-0x1404]
	mov edx, [ecx+0x38]
	mov edi, [ecx+0x20]
	test edx, edx
	jnz _Z17CG_Draw2dHudElemsii_170
	movss xmm5, dword [ebp-0x17c]
_Z17CG_Draw2dHudElemsii_1310:
	mov ecx, [ebp-0x1404]
	mov esi, [ecx+0x54]
	test esi, esi
	jle _Z17CG_Draw2dHudElemsii_180
	mov ebx, [ebp-0x168]
	mov ecx, ebx
	mov eax, [ebp-0x1404]
	sub ecx, [eax+0x50]
	cmp esi, ecx
	jle _Z17CG_Draw2dHudElemsii_190
	mov edx, [eax+0x48]
	mov eax, [eax+0x64]
	mov [ebp-0x1450], eax
	test edx, edx
	jnz _Z17CG_Draw2dHudElemsii_200
	movss xmm2, dword [ebp-0x17c]
_Z17CG_Draw2dHudElemsii_1340:
	test ecx, ecx
	jle _Z17CG_Draw2dHudElemsii_210
	cvtsi2ss xmm0, ecx
	cvtsi2ss xmm1, esi
	divss xmm0, xmm1
	subss xmm5, xmm2
	mulss xmm5, xmm0
	addss xmm5, xmm2
_Z17CG_Draw2dHudElemsii_190:
	mov edx, [ebp-0x1404]
	mov eax, [edx+0x3c]
	test eax, eax
	jnz _Z17CG_Draw2dHudElemsii_220
	movss xmm4, dword [ebp-0x17c]
_Z17CG_Draw2dHudElemsii_1280:
	test esi, esi
	jle _Z17CG_Draw2dHudElemsii_230
	mov ecx, ebx
	mov eax, [ebp-0x1404]
	sub ecx, [eax+0x50]
	cmp esi, ecx
	jle _Z17CG_Draw2dHudElemsii_230
	mov edx, [eax+0x4c]
	mov eax, [eax+0x64]
	test edx, edx
	jnz _Z17CG_Draw2dHudElemsii_240
	movss xmm2, dword [ebp-0x17c]
_Z17CG_Draw2dHudElemsii_1360:
	test ecx, ecx
	jle _Z17CG_Draw2dHudElemsii_250
	cvtsi2ss xmm0, ecx
	cvtsi2ss xmm1, esi
	divss xmm0, xmm1
	subss xmm4, xmm2
	mulss xmm4, xmm0
	addss xmm4, xmm2
_Z17CG_Draw2dHudElemsii_230:
	movss xmm2, dword [ebp-0x390]
	subss xmm2, xmm4
	xorps xmm2, [_data16_80000000]
	mov ecx, [ebp-0x1404]
	mov edx, [ecx+0x6c]
	test edx, edx
	jle _Z17CG_Draw2dHudElemsii_260
	mov eax, ebx
	sub eax, [ecx+0x68]
	test eax, eax
	jle _Z17CG_Draw2dHudElemsii_270
	cmp edx, eax
	jle _Z17CG_Draw2dHudElemsii_260
	cvtsi2ss xmm3, eax
	cvtsi2ss xmm0, edx
	divss xmm3, xmm0
	ucomiss xmm3, [_float_1_00000000]
	jnz _Z17CG_Draw2dHudElemsii_280
	jp _Z17CG_Draw2dHudElemsii_280
_Z17CG_Draw2dHudElemsii_260:
	mov edi, [ebp-0x1404]
	mov eax, [edi+0x1c]
	and eax, 0x3
	mulss xmm2, [eax*4+s_alignScale]
	movss xmm1, dword [ebp-0x398]
	subss xmm1, xmm2
_Z17CG_Draw2dHudElemsii_1320:
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
	call _Z25CL_DrawStretchPicPhysicalffffffffPKfP8Material
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
	call _Z25CG_DrawRotatedPicPhysicalPK15ScreenPlacementfffffPKfP8Material
_Z17CG_Draw2dHudElemsii_90:
	add dword [ebp-0x13f0], 0x1
	mov edx, [ebp-0x13ec]
	cmp [ebp-0x13f0], edx
	jnz _Z17CG_Draw2dHudElemsii_290
_Z17CG_Draw2dHudElemsii_70:
	add esp, 0x147c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z17CG_Draw2dHudElemsii_140:
	movss xmm0, dword [_float_0_25000000]
	xor eax, eax
_Z17CG_Draw2dHudElemsii_960:
	mov ecx, [ebp-0x1404]
	mulss xmm0, [ecx+0x14]
	mov edi, [ebp-0x13dc]
	mulss xmm0, [edi+0x4]
	movss [ebp-0x180], xmm0
	movss [esp+0x8], xmm0
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z16UI_GetFontHandlePK15ScreenPlacementif
	mov [ebp-0x184], eax
	mov edx, [ebp-0x180]
	mov [esp+0x4], edx
	mov [esp], eax
	call _Z13UI_TextHeightP6Font_sf
	cvtsi2ss xmm2, eax
	movss [ebp-0x17c], xmm2
	mov byte [ebp-0x38c], 0x0
	mov edx, [ebp-0x1404]
	mov eax, [edx+0x34]
	test eax, eax
	jnz _Z17CG_Draw2dHudElemsii_300
	mov edi, edx
_Z17CG_Draw2dHudElemsii_710:
	mov byte [ebp-0x288], 0x0
	mov eax, [edi]
	cmp eax, 0xa
	ja _Z17CG_Draw2dHudElemsii_310
	jmp dword [eax*4+_Z17CG_Draw2dHudElemsii_jumptab_1]
_Z17CG_Draw2dHudElemsii_1530:
	mov edx, [ebp-0x1404]
	mov eax, [edx+0x70]
	sub eax, ecx
	lea ebx, [eax+0x3e7]
_Z17CG_Draw2dHudElemsii_1030:
	test ebx, ebx
	js _Z17CG_Draw2dHudElemsii_320
	mov eax, 0x51eb851f
	imul ebx
	mov ecx, edx
	sar ecx, 0x5
	mov eax, ebx
	sar eax, 0x1f
	sub ecx, eax
_Z17CG_Draw2dHudElemsii_1100:
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
	jz _Z17CG_Draw2dHudElemsii_330
	mov [esp+0x10], ecx
	mov [esp+0xc], edx
	mov [esp+0x8], ebx
	mov [esp+0x4], esi
	mov dword [esp], _cstring_i02i02ii
	call _Z2vaPKcz
	mov edx, eax
_Z17CG_Draw2dHudElemsii_1050:
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, edx
	repne scasb
	not ecx
	lea esi, [ecx-0x1]
	cmp esi, 0xff
	jg _Z17CG_Draw2dHudElemsii_310
	lea ebx, [ebp-0x39c]
	lea eax, [ebp-0x288]
	mov [esp+0x8], esi
	mov [esp+0x4], edx
	mov [esp], eax
	call memcpy
	mov byte [ebx+esi+0x114], 0x0
_Z17CG_Draw2dHudElemsii_310:
	cmp byte [ebp-0x38c], 0x0
	jz _Z17CG_Draw2dHudElemsii_340
	cmp byte [ebp-0x288], 0x0
	jz _Z17CG_Draw2dHudElemsii_350
	xor ecx, ecx
	xor ebx, ebx
	lea edi, [ebp-0x164]
	jmp _Z17CG_Draw2dHudElemsii_360
_Z17CG_Draw2dHudElemsii_390:
	lea edx, [ebx+0x1]
_Z17CG_Draw2dHudElemsii_400:
	mov [ecx+edi], al
	add ecx, 0x1
	cmp ecx, 0xff
	jz _Z17CG_Draw2dHudElemsii_370
	mov ebx, edx
_Z17CG_Draw2dHudElemsii_360:
	movzx eax, byte [ebp+ebx-0x38c]
	test al, al
	jz _Z17CG_Draw2dHudElemsii_380
	cmp al, 0x26
	jnz _Z17CG_Draw2dHudElemsii_390
	lea edx, [ebx+0x1]
	cmp byte [ebp+edx-0x38c], 0x26
	jnz _Z17CG_Draw2dHudElemsii_400
	cmp byte [ebp+ebx-0x38a], 0x31
	jnz _Z17CG_Draw2dHudElemsii_400
	add ebx, 0x3
_Z17CG_Draw2dHudElemsii_380:
	cmp ecx, 0xfe
	jg _Z17CG_Draw2dHudElemsii_410
	movzx edx, byte [ebp-0x288]
	test dl, dl
	jz _Z17CG_Draw2dHudElemsii_420
	mov eax, ecx
	xor esi, esi
	lea ecx, [edi+ecx]
_Z17CG_Draw2dHudElemsii_440:
	mov [ecx], dl
	add eax, 0x1
	add esi, 0x1
	add ecx, 0x1
	cmp eax, 0xff
	jz _Z17CG_Draw2dHudElemsii_430
	movzx edx, byte [ebp+esi-0x288]
	test dl, dl
	jnz _Z17CG_Draw2dHudElemsii_440
	cmp eax, 0xfe
	jg _Z17CG_Draw2dHudElemsii_450
	mov ecx, eax
_Z17CG_Draw2dHudElemsii_420:
	movzx eax, byte [ebp+ebx-0x38c]
	test al, al
	jz _Z17CG_Draw2dHudElemsii_410
	lea esi, [edi+ecx]
	lea edx, [ebx+ebp-0x38c]
_Z17CG_Draw2dHudElemsii_460:
	mov [esi], al
	add ecx, 0x1
	cmp ecx, 0xff
	jz _Z17CG_Draw2dHudElemsii_370
	movzx eax, byte [edx+0x1]
	add esi, 0x1
	add edx, 0x1
	test al, al
	jnz _Z17CG_Draw2dHudElemsii_460
_Z17CG_Draw2dHudElemsii_410:
	mov eax, ecx
_Z17CG_Draw2dHudElemsii_450:
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
	call _Z12UI_TextWidthPKciP6Font_sf
	mov ebx, eax
	call _Z35CL_GetScreenAspectRatioDisplayPixelv
	fstp dword [ebp-0x13e8]
	cvtsi2ss xmm0, ebx
	divss xmm0, dword [ebp-0x13e8]
	movss [ebp-0x188], xmm0
	mov byte [ebp-0x38c], 0x0
	mov dword [ebp-0x28c], 0x0
_Z17CG_Draw2dHudElemsii_340:
	mov dword [ebp-0x28c], 0x0
_Z17CG_Draw2dHudElemsii_690:
	cmp byte [ebp-0x288], 0x0
	jnz _Z17CG_Draw2dHudElemsii_470
	mov dword [ebp-0x188], 0x0
_Z17CG_Draw2dHudElemsii_720:
	mov edi, [ebp-0x1404]
	cmp dword [edi], 0xd
	ja _Z17CG_Draw2dHudElemsii_480
	mov ecx, [edi]
	mov eax, 0x1
	shl eax, cl
	test eax, 0x7be
	jnz _Z17CG_Draw2dHudElemsii_490
	test eax, 0x1840
	jnz _Z17CG_Draw2dHudElemsii_500
	test ah, 0x20
	jnz _Z17CG_Draw2dHudElemsii_510
_Z17CG_Draw2dHudElemsii_480:
	pxor xmm0, xmm0
	mov ebx, [ebp-0x168]
	mov eax, [ebp-0x1404]
_Z17CG_Draw2dHudElemsii_680:
	movss [ebp-0x394], xmm0
	cmp dword [eax], 0xd
	ja _Z17CG_Draw2dHudElemsii_520
	mov ecx, [eax]
	mov eax, 0x1
	shl eax, cl
	test eax, 0x7be
	jz _Z17CG_Draw2dHudElemsii_530
	movss xmm3, dword [ebp-0x17c]
	movaps xmm2, xmm3
_Z17CG_Draw2dHudElemsii_930:
	maxss xmm2, xmm3
	movss [ebp-0x13ac], xmm2
	movaps xmm0, xmm2
	jmp _Z17CG_Draw2dHudElemsii_540
_Z17CG_Draw2dHudElemsii_100:
	mov edi, [ebp-0x13f0]
	mov eax, [ebp+edi*4-0x139c]
	test byte [eax+0x9c], 0x1
	jnz _Z17CG_Draw2dHudElemsii_90
	mov eax, edi
	lea ebx, [ebp+eax*4-0x139c]
	mov edx, [ebx]
	mov [ebp-0x1404], edx
	test byte [edx+0x9c], 0x4
	jz _Z17CG_Draw2dHudElemsii_550
_Z17CG_Draw2dHudElemsii_110:
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z17UI_AnyMenuVisiblei
	test eax, eax
	jnz _Z17CG_Draw2dHudElemsii_90
	mov ebx, [ebx]
	mov [ebp-0x1404], ebx
	mov edi, ebx
	cmp dword [edi], 0xd
	jnz _Z17CG_Draw2dHudElemsii_560
_Z17CG_Draw2dHudElemsii_120:
	mov [esp+0x4], edi
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z29DrawOffscreenViewableWaypointiPK9hudelem_s
	add dword [ebp-0x13f0], 0x1
	mov edx, [ebp-0x13ec]
	cmp [ebp-0x13f0], edx
	jnz _Z17CG_Draw2dHudElemsii_290
	jmp _Z17CG_Draw2dHudElemsii_70
_Z17CG_Draw2dHudElemsii_530:
	test eax, 0x1840
	jnz _Z17CG_Draw2dHudElemsii_570
	test ah, 0x20
	jnz _Z17CG_Draw2dHudElemsii_580
_Z17CG_Draw2dHudElemsii_520:
	pxor xmm0, xmm0
	movss [ebp-0x13ac], xmm0
_Z17CG_Draw2dHudElemsii_540:
	movss [ebp-0x390], xmm0
	mov eax, [ebp-0x1404]
	mov edx, [eax+0x6c]
	test edx, edx
	jle _Z17CG_Draw2dHudElemsii_590
	mov ecx, eax
	mov eax, ebx
	sub eax, [ecx+0x68]
	test eax, eax
	jle _Z17CG_Draw2dHudElemsii_600
	cmp edx, eax
	jg _Z17CG_Draw2dHudElemsii_610
_Z17CG_Draw2dHudElemsii_660:
	mov eax, [ebp-0x1404]
_Z17CG_Draw2dHudElemsii_590:
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
	call _Z15ScrPlace_ApplyXPK15ScreenPlacementfi
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
	call _Z15ScrPlace_ApplyYPK15ScreenPlacementfi
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
	jnz _Z17CG_Draw2dHudElemsii_620
_Z17CG_Draw2dHudElemsii_670:
	mov edi, [ebp-0x1404]
	cmp dword [edi], 0xc
	ja _Z17CG_Draw2dHudElemsii_90
	mov ecx, [edi]
	mov eax, 0x1
	shl eax, cl
	test eax, 0x7be
	jnz _Z17CG_Draw2dHudElemsii_630
	test al, 0x40
	jnz _Z17CG_Draw2dHudElemsii_640
	test ah, 0x18
	jz _Z17CG_Draw2dHudElemsii_90
	mov dword [esp+0xc], 0x3a
	lea ebx, [ebp-0x64]
	mov [esp+0x8], ebx
	mov edi, [ebp-0x1404]
	mov eax, [edi+0x40]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z21CG_ServerMaterialNameiiPcj
	test eax, eax
	jz _Z17CG_Draw2dHudElemsii_90
	mov dword [esp+0x4], 0x7
	mov [esp], ebx
	call _Z23Material_RegisterHandlePKci
	mov [ebp-0x13c4], eax
	mov dword [esp+0x8], _cstring_needle
	mov dword [esp+0x4], 0x40
	mov [esp], ebx
	call _Z9I_strncatPciPKc
	mov dword [esp+0x4], 0x7
	mov [esp], ebx
	call _Z23Material_RegisterHandlePKci
	mov [ebp-0x13c0], eax
	mov edx, [ebp-0x168]
	mov eax, [edi]
	sub eax, 0x7
	cmp eax, 0x5
	ja _Z17CG_Draw2dHudElemsii_150
	jmp dword [eax*4+_Z17CG_Draw2dHudElemsii_jumptab_2]
_Z17CG_Draw2dHudElemsii_610:
	cvtsi2ss xmm0, eax
	movss [ebp-0x13d8], xmm0
	cvtsi2ss xmm0, edx
	movss xmm1, dword [ebp-0x13d8]
	divss xmm1, xmm0
	movss [ebp-0x13d8], xmm1
	ucomiss xmm1, [_float_1_00000000]
	jnz _Z17CG_Draw2dHudElemsii_650
	jnp _Z17CG_Draw2dHudElemsii_660
_Z17CG_Draw2dHudElemsii_650:
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
	call _Z15ScrPlace_ApplyXPK15ScreenPlacementfi
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
	call _Z15ScrPlace_ApplyYPK15ScreenPlacementfi
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
	call _Z15ScrPlace_ApplyXPK15ScreenPlacementfi
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
	call _Z15ScrPlace_ApplyYPK15ScreenPlacementfi
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
	jz _Z17CG_Draw2dHudElemsii_670
_Z17CG_Draw2dHudElemsii_620:
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
	call _Z17DrawHudElemStringiPK15ScreenPlacementPKcPK9hudelem_sP12cg_hudelem_t
	movss xmm0, dword [ebp-0x39c]
	addss xmm0, [ebp-0x28c]
	movss [ebp-0x39c], xmm0
	jmp _Z17CG_Draw2dHudElemsii_670
_Z17CG_Draw2dHudElemsii_490:
	movss xmm0, dword [ebp-0x28c]
	addss xmm0, [ebp-0x188]
	mov ebx, [ebp-0x168]
	mov eax, [ebp-0x1404]
	jmp _Z17CG_Draw2dHudElemsii_680
_Z17CG_Draw2dHudElemsii_630:
	cmp byte [ebp-0x288], 0x0
	jz _Z17CG_Draw2dHudElemsii_90
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
	call _Z17DrawHudElemStringiPK15ScreenPlacementPKcPK9hudelem_sP12cg_hudelem_t
	jmp _Z17CG_Draw2dHudElemsii_90
_Z17CG_Draw2dHudElemsii_350:
	mov eax, [ebp-0x180]
	mov [esp+0xc], eax
	mov eax, [ebp-0x184]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	lea eax, [ebp-0x38c]
	mov [esp], eax
	call _Z12UI_TextWidthPKciP6Font_sf
	mov ebx, eax
	call _Z35CL_GetScreenAspectRatioDisplayPixelv
	fstp dword [ebp-0x13e4]
	cvtsi2ss xmm0, ebx
	divss xmm0, dword [ebp-0x13e4]
	movss [ebp-0x28c], xmm0
	jmp _Z17CG_Draw2dHudElemsii_690
_Z17CG_Draw2dHudElemsii_300:
	add eax, 0x135
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z18CL_GetConfigStringii
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _cstring_hudelem_string
	mov [esp], eax
	call _Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t
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
	jbe _Z17CG_Draw2dHudElemsii_700
_Z17CG_Draw2dHudElemsii_1090:
	mov edi, [ebp-0x1404]
	jmp _Z17CG_Draw2dHudElemsii_710
_Z17CG_Draw2dHudElemsii_470:
	mov eax, [ebp-0x180]
	mov [esp+0xc], eax
	mov eax, [ebp-0x184]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	lea eax, [ebp-0x288]
	mov [esp], eax
	call _Z12UI_TextWidthPKciP6Font_sf
	mov ebx, eax
	call _Z35CL_GetScreenAspectRatioDisplayPixelv
	fstp dword [ebp-0x13e0]
	cvtsi2ss xmm0, ebx
	divss xmm0, dword [ebp-0x13e0]
	movss [ebp-0x188], xmm0
	jmp _Z17CG_Draw2dHudElemsii_720
_Z17CG_Draw2dHudElemsii_640:
	mov dword [esp+0xc], 0x40
	lea ebx, [ebp-0x64]
	mov [esp+0x8], ebx
	mov edx, [ebp-0x1404]
	mov eax, [edx+0x40]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z21CG_ServerMaterialNameiiPcj
	test eax, eax
	jz _Z17CG_Draw2dHudElemsii_90
	mov dword [esp+0x4], 0x7
	mov [esp], ebx
	call _Z23Material_RegisterHandlePKci
	mov [ebp-0x13b8], eax
	mov edi, [ebp-0x1404]
	mov edx, [edi+0x38]
	mov edi, [edi+0x20]
	test edx, edx
	jnz _Z17CG_Draw2dHudElemsii_730
	movss xmm5, dword [ebp-0x17c]
_Z17CG_Draw2dHudElemsii_1170:
	mov eax, [ebp-0x1404]
	mov esi, [eax+0x54]
	test esi, esi
	jle _Z17CG_Draw2dHudElemsii_740
	mov ebx, [ebp-0x168]
	mov ecx, ebx
	sub ecx, [eax+0x50]
	cmp esi, ecx
	jle _Z17CG_Draw2dHudElemsii_750
	mov edx, [eax+0x48]
	mov eax, [eax+0x64]
	mov [ebp-0x1450], eax
	test edx, edx
	jnz _Z17CG_Draw2dHudElemsii_760
	movss xmm2, dword [ebp-0x17c]
_Z17CG_Draw2dHudElemsii_1240:
	test ecx, ecx
	jle _Z17CG_Draw2dHudElemsii_770
	cvtsi2ss xmm0, ecx
	cvtsi2ss xmm1, esi
	divss xmm0, xmm1
	subss xmm5, xmm2
	mulss xmm5, xmm0
	addss xmm5, xmm2
_Z17CG_Draw2dHudElemsii_750:
	mov edx, [ebp-0x1404]
	mov eax, [edx+0x3c]
	test eax, eax
	jnz _Z17CG_Draw2dHudElemsii_780
	movss xmm4, dword [ebp-0x17c]
_Z17CG_Draw2dHudElemsii_1190:
	test esi, esi
	jle _Z17CG_Draw2dHudElemsii_790
	mov ecx, ebx
	mov eax, [ebp-0x1404]
	sub ecx, [eax+0x50]
	cmp esi, ecx
	jle _Z17CG_Draw2dHudElemsii_800
	mov edx, [eax+0x4c]
	mov eax, [eax+0x64]
	test edx, edx
	jnz _Z17CG_Draw2dHudElemsii_810
	movss xmm2, dword [ebp-0x17c]
_Z17CG_Draw2dHudElemsii_1260:
	test ecx, ecx
	jle _Z17CG_Draw2dHudElemsii_820
	cvtsi2ss xmm0, ecx
	cvtsi2ss xmm1, esi
	divss xmm0, xmm1
	subss xmm4, xmm2
	mulss xmm4, xmm0
	addss xmm4, xmm2
_Z17CG_Draw2dHudElemsii_790:
	mov ecx, [ebp-0x1404]
_Z17CG_Draw2dHudElemsii_1200:
	movss xmm2, dword [ebp-0x390]
	subss xmm2, xmm4
	xorps xmm2, [_data16_80000000]
	mov edx, [ecx+0x6c]
	test edx, edx
	jle _Z17CG_Draw2dHudElemsii_830
	mov eax, ebx
	sub eax, [ecx+0x68]
	test eax, eax
	jle _Z17CG_Draw2dHudElemsii_840
	cmp edx, eax
	jle _Z17CG_Draw2dHudElemsii_830
	cvtsi2ss xmm3, eax
	cvtsi2ss xmm0, edx
	divss xmm3, xmm0
	ucomiss xmm3, [_float_1_00000000]
	jnz _Z17CG_Draw2dHudElemsii_850
	jp _Z17CG_Draw2dHudElemsii_850
_Z17CG_Draw2dHudElemsii_830:
	mov edi, [ebp-0x1404]
	mov eax, [edi+0x1c]
	and eax, 0x3
	mulss xmm2, [eax*4+s_alignScale]
	movss xmm1, dword [ebp-0x398]
	subss xmm1, xmm2
_Z17CG_Draw2dHudElemsii_1210:
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
	call _Z25CL_DrawStretchPicPhysicalffffffffPKfP8Material
	jmp _Z17CG_Draw2dHudElemsii_90
_Z17CG_Draw2dHudElemsii_500:
	movss xmm4, dword [ebp-0x28c]
	mov eax, [ebp-0x1404]
	mov edx, [eax+0x38]
	mov eax, [eax+0x20]
	test edx, edx
	jz _Z17CG_Draw2dHudElemsii_860
	and eax, 0x38
	cmp eax, 0x20
	jz _Z17CG_Draw2dHudElemsii_870
	cvtsi2ss xmm3, edx
	mov eax, [ebp-0x13dc]
	mulss xmm3, [eax]
_Z17CG_Draw2dHudElemsii_990:
	mov ecx, [ebp-0x1404]
	mov edx, [ecx+0x54]
	test edx, edx
	jle _Z17CG_Draw2dHudElemsii_880
	mov ebx, [ebp-0x168]
	mov esi, ebx
	sub esi, [ecx+0x50]
	cmp edx, esi
	jle _Z17CG_Draw2dHudElemsii_890
	mov edi, ecx
	mov ecx, [ecx+0x48]
	mov eax, [edi+0x64]
	test ecx, ecx
	jnz _Z17CG_Draw2dHudElemsii_900
	movss xmm2, dword [ebp-0x17c]
_Z17CG_Draw2dHudElemsii_1150:
	test esi, esi
	jle _Z17CG_Draw2dHudElemsii_910
	cvtsi2ss xmm0, esi
	cvtsi2ss xmm1, edx
	divss xmm0, xmm1
	subss xmm3, xmm2
	mulss xmm3, xmm0
	addss xmm3, xmm2
_Z17CG_Draw2dHudElemsii_890:
	movaps xmm0, xmm3
	addss xmm0, xmm4
	mov eax, [ebp-0x1404]
	jmp _Z17CG_Draw2dHudElemsii_680
_Z17CG_Draw2dHudElemsii_570:
	mov eax, [ebp-0x1404]
	mov edx, [eax+0x3c]
	mov eax, [eax+0x20]
	test edx, edx
	jnz _Z17CG_Draw2dHudElemsii_920
	movss xmm3, dword [ebp-0x17c]
	movaps xmm2, xmm3
_Z17CG_Draw2dHudElemsii_980:
	mov ecx, [ebp-0x1404]
	mov edx, [ecx+0x54]
	test edx, edx
	jle _Z17CG_Draw2dHudElemsii_930
	mov esi, ebx
	sub esi, [ecx+0x50]
	cmp edx, esi
	jle _Z17CG_Draw2dHudElemsii_930
	mov edi, ecx
	mov ecx, [ecx+0x4c]
	mov eax, [edi+0x64]
	test ecx, ecx
	jnz _Z17CG_Draw2dHudElemsii_940
	movaps xmm4, xmm2
_Z17CG_Draw2dHudElemsii_1130:
	test esi, esi
	jle _Z17CG_Draw2dHudElemsii_950
	cvtsi2ss xmm0, esi
	cvtsi2ss xmm1, edx
	divss xmm0, xmm1
	subss xmm3, xmm4
	mulss xmm3, xmm0
	addss xmm3, xmm4
	jmp _Z17CG_Draw2dHudElemsii_930
_Z17CG_Draw2dHudElemsii_1410:
	movss xmm0, dword [_float_0_25000000]
	mov eax, 0x3
	jmp _Z17CG_Draw2dHudElemsii_960
_Z17CG_Draw2dHudElemsii_1400:
	movss xmm0, dword [_float_0_25000000]
	mov eax, 0x2
	jmp _Z17CG_Draw2dHudElemsii_960
_Z17CG_Draw2dHudElemsii_1390:
	movss xmm0, dword [_float_0_25000000]
	mov eax, 0x6
	jmp _Z17CG_Draw2dHudElemsii_960
_Z17CG_Draw2dHudElemsii_1380:
	movss xmm0, dword [_float_0_33333334]
	mov eax, 0x5
	jmp _Z17CG_Draw2dHudElemsii_960
_Z17CG_Draw2dHudElemsii_1370:
	movss xmm0, dword [_float_0_50000000]
	mov eax, 0x4
	jmp _Z17CG_Draw2dHudElemsii_960
_Z17CG_Draw2dHudElemsii_510:
	mov edi, [ebp-0x1404]
	cvtsi2ss xmm0, dword [edi+0x38]
	mov ebx, [ebp-0x168]
	mov eax, edi
	jmp _Z17CG_Draw2dHudElemsii_680
_Z17CG_Draw2dHudElemsii_580:
	mov edi, [ebp-0x1404]
	cvtsi2ss xmm3, dword [edi+0x3c]
	movss xmm2, dword [ebp-0x17c]
	jmp _Z17CG_Draw2dHudElemsii_930
_Z17CG_Draw2dHudElemsii_920:
	and eax, 0x7
	cmp eax, 0x4
	jz _Z17CG_Draw2dHudElemsii_970
	cvtsi2ss xmm3, edx
	mov eax, [ebp-0x13dc]
	mulss xmm3, [eax+0x4]
	movss xmm2, dword [ebp-0x17c]
	jmp _Z17CG_Draw2dHudElemsii_980
_Z17CG_Draw2dHudElemsii_860:
	movss xmm3, dword [ebp-0x17c]
	jmp _Z17CG_Draw2dHudElemsii_990
_Z17CG_Draw2dHudElemsii_1480:
	mov ecx, [ebp-0x168]
	sub eax, 0x7
	cmp eax, 0x5
	ja _Z17CG_Draw2dHudElemsii_320
	jmp dword [eax*4+_Z17CG_Draw2dHudElemsii_jumptab_3]
_Z17CG_Draw2dHudElemsii_1470:
	mov ecx, [ebp-0x168]
	sub eax, 0x7
	cmp eax, 0x5
	ja _Z17CG_Draw2dHudElemsii_1000
	jmp dword [eax*4+_Z17CG_Draw2dHudElemsii_jumptab_4]
_Z17CG_Draw2dHudElemsii_1460:
	mov dword [esp+0x4], 0x12
	mov ecx, [ebp+0x8]
	mov [esp], ecx
_Z17CG_Draw2dHudElemsii_1010:
	call _Z18CL_GetConfigStringii
	mov dword [esp+0x8], 0x100
	mov [esp+0x4], eax
	lea eax, [ebp-0x288]
	mov [esp], eax
	call _Z10I_strncpyzPcPKci
	jmp _Z17CG_Draw2dHudElemsii_310
_Z17CG_Draw2dHudElemsii_1440:
	movss xmm0, dword [_float_0_50000000]
	mov eax, [ebp-0x1404]
	addss xmm0, [eax+0x78]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x13f8]
	cvttss2si ecx, [ebp-0x13f8]
	cmp ecx, 0x3f
	ja _Z17CG_Draw2dHudElemsii_310
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
	call _Z10I_strncpyzPcPKci
	jmp _Z17CG_Draw2dHudElemsii_310
_Z17CG_Draw2dHudElemsii_1430:
	mov ecx, [ebp-0x1404]
	cvtss2sd xmm0, [ecx+0x78]
	movsd [esp+0xc], xmm0
	mov dword [esp+0x8], _cstring_g
	mov dword [esp+0x4], 0x100
	lea eax, [ebp-0x288]
	mov [esp], eax
	call _Z11Com_sprintfPciPKcz
	jmp _Z17CG_Draw2dHudElemsii_310
_Z17CG_Draw2dHudElemsii_1450:
	mov dword [esp+0x4], 0x11
	mov edx, [ebp+0x8]
	mov [esp], edx
	jmp _Z17CG_Draw2dHudElemsii_1010
_Z17CG_Draw2dHudElemsii_1420:
	mov edi, [ebp-0x1404]
	mov eax, [edi+0x7c]
	test eax, eax
	jz _Z17CG_Draw2dHudElemsii_310
	add eax, 0x135
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z18CL_GetConfigStringii
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _cstring_hudelem_string
	mov [esp], eax
	call _Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t
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
	ja _Z17CG_Draw2dHudElemsii_310
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
_Z17CG_Draw2dHudElemsii_1020:
	mov [esp], esi
	mov ecx, edi
	mov edx, ebx
	mov eax, [ebp+0x8]
	call _Z16ReplaceDirectiveiPjS_Pc
	test al, al
	jnz _Z17CG_Draw2dHudElemsii_1020
	jmp _Z17CG_Draw2dHudElemsii_310
_Z17CG_Draw2dHudElemsii_1550:
	mov edi, [ebp-0x1404]
	mov eax, [edi+0x70]
	sub eax, ecx
	lea ebx, [eax+0x63]
	jmp _Z17CG_Draw2dHudElemsii_1030
_Z17CG_Draw2dHudElemsii_1570:
	mov edx, [ebp-0x1404]
	mov eax, [edx+0x70]
	sub eax, ecx
	lea ebx, [eax+0x3e7]
_Z17CG_Draw2dHudElemsii_1060:
	test ebx, ebx
	js _Z17CG_Draw2dHudElemsii_1000
	mov eax, 0x10624dd3
	imul ebx
	mov ecx, edx
	sar ecx, 0x6
	mov eax, ebx
	sar eax, 0x1f
	sub ecx, eax
_Z17CG_Draw2dHudElemsii_1110:
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
	jz _Z17CG_Draw2dHudElemsii_1040
	mov [esp+0xc], ecx
	mov [esp+0x8], ebx
	mov [esp+0x4], esi
	mov dword [esp], _cstring_i02i02i
	call _Z2vaPKcz
	mov edx, eax
	jmp _Z17CG_Draw2dHudElemsii_1050
_Z17CG_Draw2dHudElemsii_1590:
	mov edi, [ebp-0x1404]
	mov eax, [edi+0x70]
	sub eax, ecx
	lea ebx, [eax+0x63]
	jmp _Z17CG_Draw2dHudElemsii_1060
_Z17CG_Draw2dHudElemsii_1540:
	mov ebx, ecx
	mov edx, [ebp-0x1404]
	sub ebx, [edx+0x70]
	jmp _Z17CG_Draw2dHudElemsii_1030
_Z17CG_Draw2dHudElemsii_1560:
	mov eax, [ebp-0x1404]
	mov ebx, [eax+0x70]
	sub ebx, ecx
	jmp _Z17CG_Draw2dHudElemsii_1030
_Z17CG_Draw2dHudElemsii_1580:
	mov ebx, ecx
	mov edx, [ebp-0x1404]
	sub ebx, [edx+0x70]
	jmp _Z17CG_Draw2dHudElemsii_1060
_Z17CG_Draw2dHudElemsii_1600:
	mov eax, [ebp-0x1404]
	mov ebx, [eax+0x70]
	sub ebx, ecx
	jmp _Z17CG_Draw2dHudElemsii_1060
_Z17CG_Draw2dHudElemsii_1520:
	mov ecx, [ebp-0x1404]
	mov eax, [ecx+0x70]
	sub eax, edx
	jmp _Z17CG_Draw2dHudElemsii_1070
_Z17CG_Draw2dHudElemsii_1500:
	mov eax, edx
	mov edi, [ebp-0x1404]
	sub eax, [edi+0x70]
	jmp _Z17CG_Draw2dHudElemsii_1070
_Z17CG_Draw2dHudElemsii_1490:
	mov ecx, [ebp-0x1404]
	mov eax, [ecx+0x70]
	sub eax, edx
	add eax, 0x3e7
	jmp _Z17CG_Draw2dHudElemsii_1070
_Z17CG_Draw2dHudElemsii_700:
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
_Z17CG_Draw2dHudElemsii_1080:
	mov [esp], esi
	mov ecx, edi
	mov edx, ebx
	mov eax, [ebp+0x8]
	call _Z16ReplaceDirectiveiPjS_Pc
	test al, al
	jnz _Z17CG_Draw2dHudElemsii_1080
	jmp _Z17CG_Draw2dHudElemsii_1090
_Z17CG_Draw2dHudElemsii_600:
	pxor xmm1, xmm1
	movss [ebp-0x13d8], xmm1
	jmp _Z17CG_Draw2dHudElemsii_650
_Z17CG_Draw2dHudElemsii_370:
	mov eax, 0xff
	jmp _Z17CG_Draw2dHudElemsii_450
_Z17CG_Draw2dHudElemsii_320:
	xor ecx, ecx
	jmp _Z17CG_Draw2dHudElemsii_1100
_Z17CG_Draw2dHudElemsii_1000:
	xor ecx, ecx
	jmp _Z17CG_Draw2dHudElemsii_1110
_Z17CG_Draw2dHudElemsii_1040:
	mov [esp+0x8], ecx
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_i02i
	call _Z2vaPKcz
	mov edx, eax
	jmp _Z17CG_Draw2dHudElemsii_1050
_Z17CG_Draw2dHudElemsii_330:
	mov [esp+0xc], ecx
	mov [esp+0x8], edx
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_i02ii
	call _Z2vaPKcz
	mov edx, eax
	jmp _Z17CG_Draw2dHudElemsii_1050
_Z17CG_Draw2dHudElemsii_430:
	mov ecx, 0xff
	jmp _Z17CG_Draw2dHudElemsii_410
_Z17CG_Draw2dHudElemsii_880:
	mov ebx, [ebp-0x168]
	jmp _Z17CG_Draw2dHudElemsii_890
_Z17CG_Draw2dHudElemsii_940:
	and eax, 0x7
	cmp eax, 0x4
	jz _Z17CG_Draw2dHudElemsii_1120
	cvtsi2ss xmm4, ecx
	mov ecx, [ebp-0x13dc]
	mulss xmm4, [ecx+0x4]
	jmp _Z17CG_Draw2dHudElemsii_1130
_Z17CG_Draw2dHudElemsii_900:
	and eax, 0x38
	cmp eax, 0x20
	jz _Z17CG_Draw2dHudElemsii_1140
	cvtsi2ss xmm2, ecx
	mov ecx, [ebp-0x13dc]
	mulss xmm2, [ecx]
	jmp _Z17CG_Draw2dHudElemsii_1150
_Z17CG_Draw2dHudElemsii_970:
	cvtsi2ss xmm3, edx
	mov edi, [ebp-0x13dc]
	mulss xmm3, [edi+0xc]
	movss xmm2, dword [ebp-0x17c]
	jmp _Z17CG_Draw2dHudElemsii_980
_Z17CG_Draw2dHudElemsii_730:
	mov eax, edi
	and eax, 0x38
	cmp eax, 0x20
	jz _Z17CG_Draw2dHudElemsii_1160
	cvtsi2ss xmm5, edx
	mov ecx, [ebp-0x13dc]
	mulss xmm5, [ecx]
	jmp _Z17CG_Draw2dHudElemsii_1170
_Z17CG_Draw2dHudElemsii_780:
	and edi, 0x7
	cmp edi, 0x4
	jz _Z17CG_Draw2dHudElemsii_1180
	cvtsi2ss xmm4, eax
	mov edi, [ebp-0x13dc]
	mulss xmm4, [edi+0x4]
	jmp _Z17CG_Draw2dHudElemsii_1190
_Z17CG_Draw2dHudElemsii_870:
	cvtsi2ss xmm3, edx
	mov edi, [ebp-0x13dc]
	mulss xmm3, [edi+0x8]
	jmp _Z17CG_Draw2dHudElemsii_990
_Z17CG_Draw2dHudElemsii_800:
	mov ecx, eax
	jmp _Z17CG_Draw2dHudElemsii_1200
_Z17CG_Draw2dHudElemsii_950:
	movaps xmm3, xmm4
	jmp _Z17CG_Draw2dHudElemsii_930
_Z17CG_Draw2dHudElemsii_840:
	pxor xmm3, xmm3
_Z17CG_Draw2dHudElemsii_850:
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
	jmp _Z17CG_Draw2dHudElemsii_1210
_Z17CG_Draw2dHudElemsii_150:
	pxor xmm1, xmm1
	jmp _Z17CG_Draw2dHudElemsii_1220
_Z17CG_Draw2dHudElemsii_910:
	movaps xmm3, xmm2
	jmp _Z17CG_Draw2dHudElemsii_890
_Z17CG_Draw2dHudElemsii_760:
	and dword [ebp-0x1450], 0x38
	cmp dword [ebp-0x1450], 0x20
	jz _Z17CG_Draw2dHudElemsii_1230
	cvtsi2ss xmm2, edx
	mov eax, [ebp-0x13dc]
	mulss xmm2, [eax]
	jmp _Z17CG_Draw2dHudElemsii_1240
_Z17CG_Draw2dHudElemsii_810:
	and eax, 0x7
	cmp eax, 0x4
	jz _Z17CG_Draw2dHudElemsii_1250
	cvtsi2ss xmm2, edx
	mov edx, [ebp-0x13dc]
	mulss xmm2, [edx+0x4]
	jmp _Z17CG_Draw2dHudElemsii_1260
_Z17CG_Draw2dHudElemsii_1140:
	cvtsi2ss xmm2, ecx
	mov eax, [ebp-0x13dc]
	mulss xmm2, [eax+0x8]
	jmp _Z17CG_Draw2dHudElemsii_1150
_Z17CG_Draw2dHudElemsii_220:
	and edi, 0x7
	cmp edi, 0x4
	jz _Z17CG_Draw2dHudElemsii_1270
	cvtsi2ss xmm4, eax
	mov edi, [ebp-0x13dc]
	mulss xmm4, [edi+0x4]
	jmp _Z17CG_Draw2dHudElemsii_1280
_Z17CG_Draw2dHudElemsii_160:
	mulss xmm1, [_float_0_00600000]
	movss [esp], xmm1
	call _Z17AngleNormalize360f
	fstp dword [ebp-0x13bc]
	jmp _Z17CG_Draw2dHudElemsii_1290
_Z17CG_Draw2dHudElemsii_170:
	mov eax, edi
	and eax, 0x38
	cmp eax, 0x20
	jz _Z17CG_Draw2dHudElemsii_1300
	cvtsi2ss xmm5, edx
	mov edx, [ebp-0x13dc]
	mulss xmm5, [edx]
	jmp _Z17CG_Draw2dHudElemsii_1310
_Z17CG_Draw2dHudElemsii_740:
	mov ebx, [ebp-0x168]
	jmp _Z17CG_Draw2dHudElemsii_750
_Z17CG_Draw2dHudElemsii_1120:
	cvtsi2ss xmm4, ecx
	mov eax, [ebp-0x13dc]
	mulss xmm4, [eax+0xc]
	jmp _Z17CG_Draw2dHudElemsii_1130
_Z17CG_Draw2dHudElemsii_1160:
	cvtsi2ss xmm5, edx
	mov edx, [ebp-0x13dc]
	mulss xmm5, [edx+0x8]
	jmp _Z17CG_Draw2dHudElemsii_1170
_Z17CG_Draw2dHudElemsii_1180:
	cvtsi2ss xmm4, eax
	mov ecx, [ebp-0x13dc]
	mulss xmm4, [ecx+0xc]
	jmp _Z17CG_Draw2dHudElemsii_1190
_Z17CG_Draw2dHudElemsii_270:
	pxor xmm3, xmm3
_Z17CG_Draw2dHudElemsii_280:
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
	jmp _Z17CG_Draw2dHudElemsii_1320
_Z17CG_Draw2dHudElemsii_210:
	movaps xmm5, xmm2
	jmp _Z17CG_Draw2dHudElemsii_190
_Z17CG_Draw2dHudElemsii_200:
	and dword [ebp-0x1450], 0x38
	cmp dword [ebp-0x1450], 0x20
	jz _Z17CG_Draw2dHudElemsii_1330
	cvtsi2ss xmm2, edx
	mov eax, [ebp-0x13dc]
	mulss xmm2, [eax]
	jmp _Z17CG_Draw2dHudElemsii_1340
_Z17CG_Draw2dHudElemsii_770:
	movaps xmm5, xmm2
	jmp _Z17CG_Draw2dHudElemsii_750
_Z17CG_Draw2dHudElemsii_1270:
	cvtsi2ss xmm4, eax
	mov ecx, [ebp-0x13dc]
	mulss xmm4, [ecx+0xc]
	jmp _Z17CG_Draw2dHudElemsii_1280
_Z17CG_Draw2dHudElemsii_1250:
	cvtsi2ss xmm2, edx
	mov eax, [ebp-0x13dc]
	mulss xmm2, [eax+0xc]
	jmp _Z17CG_Draw2dHudElemsii_1260
_Z17CG_Draw2dHudElemsii_820:
	movaps xmm4, xmm2
	mov ecx, [ebp-0x1404]
	jmp _Z17CG_Draw2dHudElemsii_1200
_Z17CG_Draw2dHudElemsii_1300:
	cvtsi2ss xmm5, edx
	mov eax, [ebp-0x13dc]
	mulss xmm5, [eax+0x8]
	jmp _Z17CG_Draw2dHudElemsii_1310
_Z17CG_Draw2dHudElemsii_180:
	mov ebx, [ebp-0x168]
	jmp _Z17CG_Draw2dHudElemsii_190
_Z17CG_Draw2dHudElemsii_1230:
	cvtsi2ss xmm2, edx
	mov edx, [ebp-0x13dc]
	mulss xmm2, [edx+0x8]
	jmp _Z17CG_Draw2dHudElemsii_1240
_Z17CG_Draw2dHudElemsii_250:
	movaps xmm4, xmm2
	jmp _Z17CG_Draw2dHudElemsii_230
_Z17CG_Draw2dHudElemsii_240:
	and eax, 0x7
	cmp eax, 0x4
	jz _Z17CG_Draw2dHudElemsii_1350
	cvtsi2ss xmm2, edx
	mov edx, [ebp-0x13dc]
	mulss xmm2, [edx+0x4]
	jmp _Z17CG_Draw2dHudElemsii_1360
_Z17CG_Draw2dHudElemsii_1330:
	cvtsi2ss xmm2, edx
	mov edx, [ebp-0x13dc]
	mulss xmm2, [edx+0x8]
	jmp _Z17CG_Draw2dHudElemsii_1340
_Z17CG_Draw2dHudElemsii_1350:
	cvtsi2ss xmm2, edx
	mov eax, [ebp-0x13dc]
	mulss xmm2, [eax+0xc]
	jmp _Z17CG_Draw2dHudElemsii_1360
	
	
_Z17CG_Draw2dHudElemsii_jumptab_0:
	dd _Z17CG_Draw2dHudElemsii_140
	dd _Z17CG_Draw2dHudElemsii_1370
	dd _Z17CG_Draw2dHudElemsii_1380
	dd _Z17CG_Draw2dHudElemsii_1390
	dd _Z17CG_Draw2dHudElemsii_1400
	dd _Z17CG_Draw2dHudElemsii_1410
_Z17CG_Draw2dHudElemsii_jumptab_1:
	dd _Z17CG_Draw2dHudElemsii_310
	dd _Z17CG_Draw2dHudElemsii_1420
	dd _Z17CG_Draw2dHudElemsii_1430
	dd _Z17CG_Draw2dHudElemsii_1440
	dd _Z17CG_Draw2dHudElemsii_1450
	dd _Z17CG_Draw2dHudElemsii_1460
	dd _Z17CG_Draw2dHudElemsii_310
	dd _Z17CG_Draw2dHudElemsii_1470
	dd _Z17CG_Draw2dHudElemsii_1470
	dd _Z17CG_Draw2dHudElemsii_1480
	dd _Z17CG_Draw2dHudElemsii_1480
_Z17CG_Draw2dHudElemsii_jumptab_2:
	dd _Z17CG_Draw2dHudElemsii_1490
	dd _Z17CG_Draw2dHudElemsii_1500
	dd _Z17CG_Draw2dHudElemsii_1510
	dd _Z17CG_Draw2dHudElemsii_1500
	dd _Z17CG_Draw2dHudElemsii_1520
	dd _Z17CG_Draw2dHudElemsii_1500
_Z17CG_Draw2dHudElemsii_jumptab_3:
	dd _Z17CG_Draw2dHudElemsii_1530
	dd _Z17CG_Draw2dHudElemsii_1540
	dd _Z17CG_Draw2dHudElemsii_1550
	dd _Z17CG_Draw2dHudElemsii_1540
	dd _Z17CG_Draw2dHudElemsii_1560
	dd _Z17CG_Draw2dHudElemsii_1540
_Z17CG_Draw2dHudElemsii_jumptab_4:
	dd _Z17CG_Draw2dHudElemsii_1570
	dd _Z17CG_Draw2dHudElemsii_1580
	dd _Z17CG_Draw2dHudElemsii_1590
	dd _Z17CG_Draw2dHudElemsii_1580
	dd _Z17CG_Draw2dHudElemsii_1600
	dd _Z17CG_Draw2dHudElemsii_1580


;CG_HudElemRegisterDvars()
_Z23CG_HudElemRegisterDvarsv:
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
	call _Z17Dvar_RegisterBoolPKchtS0_
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
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [waypointIconWidth], eax
	mov dword [esp+0x14], _cstring_height_of_the_of
	mov dword [esp+0x10], 0x0
	mov [esp+0xc], esi
	mov [esp+0x8], edi
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_waypointiconheig
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [waypointIconHeight], eax
	mov dword [esp+0x14], _cstring_width_of_the_off
	mov dword [esp+0x10], 0x0
	mov [esp+0xc], esi
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x41c80000
	mov dword [esp], _cstring_waypointoffscree
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [waypointOffscreenPointerWidth], eax
	mov dword [esp+0x14], _cstring_height_of_the_of
	mov dword [esp+0x10], 0x0
	mov [esp+0xc], esi
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x41400000
	mov dword [esp], _cstring_waypointoffscree1
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [waypointOffscreenPointerHeight], eax
	mov dword [esp+0x14], _cstring_distance_from_th
	mov dword [esp+0x10], 0x0
	mov [esp+0xc], esi
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x41f00000
	mov dword [esp], _cstring_waypointoffscree2
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [waypointOffscreenPointerDistance], eax
	mov dword [esp+0x14], _cstring_distance_from_th1
	mov dword [esp+0x10], 0x0
	mov [esp+0xc], esi
	xor ebx, ebx
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x41f00000
	mov dword [esp], _cstring_waypointoffscree3
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [waypointOffscreenDistanceThresholdAlpha], eax
	mov dword [esp+0x14], _cstring_offset_from_the_
	mov dword [esp+0x10], 0x0
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x42ce0000
	mov dword [esp], _cstring_waypointoffscree4
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [waypointOffscreenPadLeft], eax
	mov dword [esp+0x14], _cstring_offset_from_the_
	mov dword [esp+0x10], 0x0
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_waypointoffscree5
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [waypointOffscreenPadRight], eax
	mov dword [esp+0x14], _cstring_offset_from_the_
	mov dword [esp+0x10], 0x0
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_waypointoffscree6
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [waypointOffscreenPadTop], eax
	mov dword [esp+0x14], _cstring_offset_from_the_
	mov dword [esp+0x10], 0x0
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x41f00000
	mov dword [esp], _cstring_waypointoffscree7
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [waypointOffscreenPadBottom], eax
	mov dword [esp+0xc], _cstring_offscreen_icons_
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_waypointoffscree8
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [waypointOffscreenRoundedCorners], eax
	mov dword [esp+0x14], _cstring_size_of_the_roun
	mov dword [esp+0x10], 0x0
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x42d20000
	mov dword [esp], _cstring_waypointoffscree9
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [waypointOffscreenCornerRadius], eax
	mov dword [esp+0x14], _cstring_how_far_the_offs
	mov dword [esp+0x10], 0x0
	mov [esp+0xc], esi
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x43fa0000
	mov dword [esp], _cstring_waypointoffscree10
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [waypointOffscreenScaleLength], eax
	mov dword [esp+0x14], _cstring_smallest_scale_t
	mov dword [esp+0x10], 0x0
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov edi, 0x3f800000
	mov [esp+0x4], edi
	mov dword [esp], _cstring_waypointoffscree11
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [waypointOffscreenScaleSmallest], eax
	mov dword [esp+0x14], _cstring_distance_from_pl
	mov dword [esp+0x10], 0x0
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x447a0000
	mov dword [esp], _cstring_waypointdistscal
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [waypointDistScaleRangeMin], eax
	mov dword [esp+0x14], _cstring_distance_from_pl1
	mov dword [esp+0x10], 0x0
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x453b8000
	mov dword [esp], _cstring_waypointdistscal1
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [waypointDistScaleRangeMax], eax
	mov dword [esp+0x14], _cstring_smallest_scale_t1
	mov dword [esp+0x10], 0x0
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x3f4ccccd
	mov dword [esp], _cstring_waypointdistscal2
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [waypointDistScaleSmallest], eax
	mov dword [esp+0x14], _cstring_scale_applied_to
	mov dword [esp+0x10], 0x0
	mov [esp+0xc], esi
	mov dword [esp+0x8], 0x3dcccccd
	mov dword [esp+0x4], 0x3fe66666
	mov dword [esp], _cstring_waypointsplitscr
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [waypointSplitscreenScale], eax
	mov dword [esp+0x14], _cstring_null
	mov dword [esp+0x10], 0x0
	mov [esp+0xc], esi
	mov dword [esp+0x8], 0xff7fffff
	mov dword [esp+0x4], 0xc1880000
	mov dword [esp], _cstring_waypointtweaky
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [waypointTweakY], eax
	mov dword [esp+0x14], _cstring_brightness_of_th
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], edi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x3ecccccd
	mov dword [esp], _cstring_hudelempausedbri
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [hudElemPausedBrightness], eax
	mov dword [esp+0x14], _cstring_for_waypoints_po
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x41f00000
	mov dword [esp], _cstring_waypointplayerof
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [waypointPlayerOffsetProne], eax
	mov dword [esp+0x14], _cstring_for_waypoints_po1
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x42600000
	mov dword [esp], _cstring_waypointplayerof1
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [waypointPlayerOffsetCrouch], eax
	mov dword [esp+0x14], _cstring_for_waypoints_po2
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x42940000
	mov dword [esp], _cstring_waypointplayerof2
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [waypointPlayerOffsetStand], eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;CG_TranslateHudElemMessage(int, char const*, char const*, char*)
_Z26CG_TranslateHudElemMessageiPKcS0_Pc:
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
	call _Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t
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
	jbe _Z26CG_TranslateHudElemMessageiPKcS0_Pc_10
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z26CG_TranslateHudElemMessageiPKcS0_Pc_10:
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov [esp], esi
	call memcpy
	mov eax, [ebp-0x20]
	mov byte [esi+eax], 0x0
	mov dword [ebp-0x1c], 0x0
	lea ebx, [ebp-0x20]
	lea edi, [ebp-0x1c]
_Z26CG_TranslateHudElemMessageiPKcS0_Pc_20:
	mov [esp], esi
	mov ecx, ebx
	mov edx, edi
	mov eax, [ebp+0x8]
	call _Z16ReplaceDirectiveiPjS_Pc
	test al, al
	jnz _Z26CG_TranslateHudElemMessageiPKcS0_Pc_20
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;CG_AddDrawSurfsFor3dHudElems(int)
_Z28CG_AddDrawSurfsFor3dHudElemsi:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x19c
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z16CG_ShouldDrawHudi
	test al, al
	jz _Z28CG_AddDrawSurfsFor3dHudElemsi_10
	mov eax, cgArray
	mov eax, [eax+0x24]
	lea edx, [eax+0xc]
	add eax, 0x8b0
	xor ebx, ebx
	jmp _Z28CG_AddDrawSurfsFor3dHudElemsi_20
_Z28CG_AddDrawSurfsFor3dHudElemsi_40:
	mov [ebp+ebx*4-0x180], eax
	add ebx, 0x1
	add eax, 0xa0
	cmp ebx, 0x1f
	jz _Z28CG_AddDrawSurfsFor3dHudElemsi_30
_Z28CG_AddDrawSurfsFor3dHudElemsi_20:
	mov edi, [eax]
	test edi, edi
	jnz _Z28CG_AddDrawSurfsFor3dHudElemsi_40
_Z28CG_AddDrawSurfsFor3dHudElemsi_30:
	lea eax, [edx+0x1c04]
	lea edx, [ebx*4]
	xor ecx, ecx
	jmp _Z28CG_AddDrawSurfsFor3dHudElemsi_50
_Z28CG_AddDrawSurfsFor3dHudElemsi_70:
	mov [ebp+edx-0x180], eax
	add ebx, 0x1
	add ecx, 0x1
	add eax, 0xa0
	add edx, 0x4
	cmp ecx, 0x1f
	jz _Z28CG_AddDrawSurfsFor3dHudElemsi_60
_Z28CG_AddDrawSurfsFor3dHudElemsi_50:
	mov esi, [eax]
	test esi, esi
	jnz _Z28CG_AddDrawSurfsFor3dHudElemsi_70
_Z28CG_AddDrawSurfsFor3dHudElemsi_60:
	mov dword [esp+0xc], _Z16compare_hudelemsPKvS0_
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], ebx
	lea eax, [ebp-0x180]
	mov [esp], eax
	call qsort
	test ebx, ebx
	jle _Z28CG_AddDrawSurfsFor3dHudElemsi_10
	xor edi, edi
	jmp _Z28CG_AddDrawSurfsFor3dHudElemsi_80
_Z28CG_AddDrawSurfsFor3dHudElemsi_90:
	add edi, 0x1
	cmp edi, ebx
	jz _Z28CG_AddDrawSurfsFor3dHudElemsi_10
_Z28CG_AddDrawSurfsFor3dHudElemsi_80:
	mov esi, [ebp+edi*4-0x180]
	cmp dword [esi], 0xd
	jnz _Z28CG_AddDrawSurfsFor3dHudElemsi_90
	lea eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov edx, cgArray
	mov eax, [edx+0x46128]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z16BG_LerpHudColorsPK9hudelem_siP15hudelem_color_t
	cmp byte [ebp-0x19], 0x0
	jz _Z28CG_AddDrawSurfsFor3dHudElemsi_90
	mov dword [esp+0xc], 0x40
	lea ecx, [ebp-0x88]
	mov [esp+0x8], ecx
	mov eax, [esi+0x44]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z21CG_ServerMaterialNameiiPcj
	test eax, eax
	jnz _Z28CG_AddDrawSurfsFor3dHudElemsi_90
	mov dword [esp+0xc], 0x40
	lea edx, [ebp-0x88]
	mov [esp+0x8], edx
	mov eax, [esi+0x40]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z21CG_ServerMaterialNameiiPcj
	test eax, eax
	jz _Z28CG_AddDrawSurfsFor3dHudElemsi_90
	mov dword [esp+0x4], 0x7
	lea eax, [ebp-0x88]
	mov [esp], eax
	call _Z23Material_RegisterHandlePKci
	mov [ebp-0x190], eax
	cvtsi2ss xmm3, dword [esi+0x3c]
	mov edx, [esi+0x54]
	test edx, edx
	jle _Z28CG_AddDrawSurfsFor3dHudElemsi_100
	mov ecx, cgArray
	mov eax, [ecx+0x46128]
	sub eax, [esi+0x50]
	cmp edx, eax
	jle _Z28CG_AddDrawSurfsFor3dHudElemsi_100
	cvtsi2ss xmm2, dword [esi+0x4c]
	test eax, eax
	jle _Z28CG_AddDrawSurfsFor3dHudElemsi_110
	cvtsi2ss xmm0, eax
	cvtsi2ss xmm1, edx
	divss xmm0, xmm1
	subss xmm3, xmm2
	mulss xmm3, xmm0
	addss xmm3, xmm2
_Z28CG_AddDrawSurfsFor3dHudElemsi_100:
	pxor xmm0, xmm0
	ucomiss xmm3, xmm0
	jp _Z28CG_AddDrawSurfsFor3dHudElemsi_120
	jz _Z28CG_AddDrawSurfsFor3dHudElemsi_90
_Z28CG_AddDrawSurfsFor3dHudElemsi_120:
	movss xmm0, dword [esi+0x78]
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jbe _Z28CG_AddDrawSurfsFor3dHudElemsi_130
	mulss xmm3, [_float_0_00430000]
	mov dword [ebp-0x18c], 0x3
_Z28CG_AddDrawSurfsFor3dHudElemsi_140:
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
	call _Z12FX_SpriteAddP8FxSprite
	jmp _Z28CG_AddDrawSurfsFor3dHudElemsi_90
_Z28CG_AddDrawSurfsFor3dHudElemsi_10:
	add esp, 0x19c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z28CG_AddDrawSurfsFor3dHudElemsi_130:
	mov dword [ebp-0x18c], 0x0
	jmp _Z28CG_AddDrawSurfsFor3dHudElemsi_140
_Z28CG_AddDrawSurfsFor3dHudElemsi_110:
	movaps xmm3, xmm2
	jmp _Z28CG_AddDrawSurfsFor3dHudElemsi_100


;Initialized global or static variables of cg_hudelem:
SECTION .data


;Initialized constant data of cg_hudelem:
SECTION .rdata
s_alignScale: dd 0x0, 0x3f000000, 0x3f800000, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x7fffffff, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0


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

