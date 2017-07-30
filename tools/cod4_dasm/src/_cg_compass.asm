;Imports of cg_compass:
	extern hud_fade_compass
	extern floorf
	extern CG_FadeHudMenu
	extern cgArray
	extern scrPlaceView
	extern CL_DrawStretchPic
	extern CG_DrawRotatedPic
	extern YawVectors2D
	extern CL_DrawStretchPicRotatedST
	extern CG_CompassDrawRadarEffects
	extern Cvar_RegisterBool
	extern Cvar_RegisterFloat
	extern Cvar_RegisterVec3
	extern Cvar_RegisterInt
	extern Com_Error
	extern AngleNormalize360
	extern cg_entitiesArray
	extern atan2f
	extern AngleDelta
	extern CG_ObjectiveIcon
	extern Com_sprintf
	extern UI_TextWidth
	extern UI_TextHeight
	extern UI_DrawTextNoSnap
	extern R_TextHeight
	extern va
	extern R_TextWidth
	extern CL_DrawText
	extern CL_DrawTextRotate
	extern UI_DrawHandlePic
	extern CG_DrawVLine
	extern CL_GetConfigString
	extern Material_RegisterHandle

;Exports of cg_compass:
	global colorObjectiveText
	global CG_FadeCompass
	global CG_CompassDrawBorder
	global CG_CompassDrawPlayer
	global CG_WorldPosToCompass
	global CG_CompassUpYawVector
	global CG_GetHudAlphaCompass
	global CG_IsSelectingLocation
	global CG_CompassDrawPlayerMap
	global CG_CompassRegisterDvars
	global CalcCompassFriendlySize
	global CG_CompassCalcDimensions
	global CG_CompassDrawPlayerBack
	global CG_CompassDrawTickertape
	global CG_CompassDrawPlayerEastCoord
	global CG_CompassDrawPlayerNorthCoord
	global CG_CompassDrawPlayerPointers_MP
	global CG_CompassDrawPlayerECoordScroll
	global CG_CompassDrawPlayerNCoordScroll
	global CG_CompassDrawPlayerMapLocationSelector
	global cg_hudMapBorderWidth
	global cg_hudMapFriendlyHeight
	global cg_hudMapFriendlyWidth
	global cg_hudMapPlayerHeight
	global cg_hudMapPlayerWidth
	global cg_hudMapRadarLineThickness
	global compass
	global compassClampIcons
	global compassCoords
	global compassECoordCutoff
	global compassEnemyFootstepEnabled
	global compassEnemyFootstepMaxRange
	global compassEnemyFootstepMaxZ
	global compassEnemyFootstepMinSpeed
	global compassFriendlyHeight
	global compassFriendlyWidth
	global compassMaxRange
	global compassMinRadius
	global compassMinRange
	global compassObjectiveArrowHeight
	global compassObjectiveArrowOffset
	global compassObjectiveArrowRotateDist
	global compassObjectiveArrowWidth
	global compassObjectiveDetailDist
	global compassObjectiveDrawLines
	global compassObjectiveHeight
	global compassObjectiveIconHeight
	global compassObjectiveIconWidth
	global compassObjectiveMaxHeight
	global compassObjectiveMaxRange
	global compassObjectiveMinAlpha
	global compassObjectiveMinDistRange
	global compassObjectiveMinHeight
	global compassObjectiveNearbyDist
	global compassObjectiveNumRings
	global compassObjectiveRingSize
	global compassObjectiveRingTime
	global compassObjectiveTextHeight
	global compassObjectiveTextScale
	global compassObjectiveWidth
	global compassPlayerHeight
	global compassPlayerWidth
	global compassRadarLineThickness
	global compassRadarPingFadeTime
	global compassRadarUpdateTime
	global compassRotation
	global compassSize
	global compassSoundPingFadeTime
	global compassTickertapeStretch


SECTION .text


;CG_FadeCompass(int, int, CompassType)
CG_FadeCompass:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov eax, [ebp+0x10]
	test eax, eax
	jz CG_FadeCompass_10
	fld1
	add esp, 0x24
	pop ebx
	pop ebp
	ret
CG_FadeCompass_10:
	mov eax, hud_fade_compass
	mov ebx, [eax]
	movss xmm0, dword [_float_1000_00000000]
	mulss xmm0, [ebx+0xc]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0xc]
	cvttss2si eax, [ebp-0xc]
	mov [esp+0xc], eax
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_FadeHudMenu
	add esp, 0x24
	pop ebx
	pop ebp
	ret


;CG_CompassDrawBorder(int, CompassType, rectDef_s const*, rectDef_s*, Material*, float*)
CG_CompassDrawBorder:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x9c
	mov eax, [cg_hudMapBorderWidth]
	movss xmm0, dword [eax+0xc]
	movss [ebp-0x44], xmm0
	ucomiss xmm0, [_float_0_00000000]
	jp CG_CompassDrawBorder_10
	jbe CG_CompassDrawBorder_20
CG_CompassDrawBorder_10:
	mov edi, [ebp+0x1c]
	add edi, 0xc
	mov eax, cgArray
	mov esi, [eax+0x504b4]
	mov ecx, [ebp+0xc]
	test ecx, ecx
	jz CG_CompassDrawBorder_30
	movss xmm0, dword [_float_1_00000000]
CG_CompassDrawBorder_50:
	movss [edi], xmm0
	ucomiss xmm0, [_float_0_00000000]
	jp CG_CompassDrawBorder_40
	jnz CG_CompassDrawBorder_40
CG_CompassDrawBorder_20:
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_CompassDrawBorder_40:
	lea edx, [ebp-0x30]
	lea eax, [ebp-0x24]
	mov [esp+0x1c], eax
	lea eax, [ebp-0x28]
	mov [esp+0x18], eax
	lea eax, [ebp-0x2c]
	mov [esp+0x14], eax
	mov [esp+0x10], edx
	mov edx, [ebp+0x14]
	mov [esp+0xc], edx
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov eax, cgArray
	mov [esp+0x4], eax
	mov edx, [ebp+0xc]
	mov [esp], edx
	call CG_CompassCalcDimensions
	movss xmm0, dword [ebp-0x28]
	mulss xmm0, [_float_0_50000000]
	minss xmm0, dword [ebp-0x44]
	movss xmm1, dword [ebp-0x24]
	movss xmm2, dword [_float_0_50000000]
	mulss xmm2, xmm1
	minss xmm2, xmm0
	movss [ebp-0x3c], xmm2
	addss xmm2, xmm2
	movss [ebp-0x40], xmm2
	mov eax, [ebp+0x8]
	shl eax, 0x6
	mov edx, [ebp+0x8]
	lea ebx, [eax+edx*4]
	add ebx, scrPlaceView
	mov eax, [ebp+0x18]
	mov [esp+0x30], eax
	mov edx, [ebp+0x1c]
	mov [esp+0x2c], edx
	mov esi, 0x3f800000
	mov [esp+0x28], esi
	mov dword [esp+0x24], 0x3f000000
	mov dword [esp+0x20], 0x3f000000
	mov dword [esp+0x1c], 0x0
	mov edx, [ebp+0x14]
	mov eax, [edx+0x14]
	mov [esp+0x18], eax
	mov eax, [edx+0x10]
	mov [esp+0x14], eax
	movss [esp+0x10], xmm2
	movss [esp+0xc], xmm2
	addss xmm1, [ebp-0x2c]
	subss xmm1, [ebp-0x3c]
	movss [esp+0x8], xmm1
	movss xmm0, dword [ebp-0x30]
	subss xmm0, [ebp-0x3c]
	movss [esp+0x4], xmm0
	mov [esp], ebx
	call CL_DrawStretchPic
	mov eax, [ebp+0x18]
	mov [esp+0x30], eax
	mov edx, [ebp+0x1c]
	mov [esp+0x2c], edx
	mov dword [esp+0x28], 0x3f000000
	mov dword [esp+0x24], 0x3f000000
	mov dword [esp+0x20], 0x0
	mov dword [esp+0x1c], 0x0
	mov edx, [ebp+0x14]
	mov eax, [edx+0x14]
	mov [esp+0x18], eax
	mov eax, [edx+0x10]
	mov [esp+0x14], eax
	movss xmm0, dword [ebp-0x40]
	movss [esp+0x10], xmm0
	movss [esp+0xc], xmm0
	movss xmm0, dword [ebp-0x2c]
	subss xmm0, [ebp-0x3c]
	movss [esp+0x8], xmm0
	movss xmm0, dword [ebp-0x30]
	subss xmm0, [ebp-0x3c]
	movss [esp+0x4], xmm0
	mov [esp], ebx
	call CL_DrawStretchPic
	mov eax, [ebp+0x18]
	mov [esp+0x30], eax
	mov edx, [ebp+0x1c]
	mov [esp+0x2c], edx
	mov [esp+0x28], esi
	mov [esp+0x24], esi
	mov dword [esp+0x20], 0x3f000000
	mov dword [esp+0x1c], 0x3f000000
	mov edx, [ebp+0x14]
	mov eax, [edx+0x14]
	mov [esp+0x18], eax
	mov eax, [edx+0x10]
	mov [esp+0x14], eax
	movss xmm0, dword [ebp-0x40]
	movss [esp+0x10], xmm0
	movss [esp+0xc], xmm0
	movss xmm0, dword [ebp-0x2c]
	addss xmm0, [ebp-0x24]
	subss xmm0, [ebp-0x3c]
	movss [esp+0x8], xmm0
	movss xmm0, dword [ebp-0x30]
	addss xmm0, [ebp-0x28]
	subss xmm0, [ebp-0x3c]
	movss [esp+0x4], xmm0
	mov [esp], ebx
	call CL_DrawStretchPic
	mov eax, [ebp+0x18]
	mov [esp+0x30], eax
	mov edx, [ebp+0x1c]
	mov [esp+0x2c], edx
	mov dword [esp+0x28], 0x3f000000
	mov [esp+0x24], esi
	mov dword [esp+0x20], 0x0
	mov dword [esp+0x1c], 0x3f000000
	mov edx, [ebp+0x14]
	mov eax, [edx+0x14]
	mov [esp+0x18], eax
	mov eax, [edx+0x10]
	mov [esp+0x14], eax
	movss xmm0, dword [ebp-0x40]
	movss [esp+0x10], xmm0
	movss [esp+0xc], xmm0
	movss xmm0, dword [ebp-0x2c]
	subss xmm0, [ebp-0x3c]
	movss [esp+0x8], xmm0
	movss xmm0, dword [ebp-0x30]
	addss xmm0, [ebp-0x28]
	subss xmm0, [ebp-0x3c]
	movss [esp+0x4], xmm0
	mov [esp], ebx
	call CL_DrawStretchPic
	movss xmm2, dword [ebp-0x3c]
	mulss xmm2, [_float__2_00000000]
	movss [ebp-0x48], xmm2
	mov eax, [ebp+0x18]
	mov [esp+0x30], eax
	mov edx, [ebp+0x1c]
	mov [esp+0x2c], edx
	mov dword [esp+0x28], 0x3f000000
	mov dword [esp+0x24], 0x3f000000
	mov dword [esp+0x20], 0x3f000000
	mov dword [esp+0x1c], 0x0
	mov edx, [ebp+0x14]
	mov eax, [edx+0x14]
	mov [esp+0x18], eax
	mov eax, [edx+0x10]
	mov [esp+0x14], eax
	movaps xmm0, xmm2
	addss xmm0, [ebp-0x24]
	movss [esp+0x10], xmm0
	movss xmm0, dword [ebp-0x40]
	movss [esp+0xc], xmm0
	movss xmm0, dword [ebp-0x3c]
	addss xmm0, [ebp-0x2c]
	movss [esp+0x8], xmm0
	movss xmm0, dword [ebp-0x30]
	subss xmm0, [ebp-0x3c]
	movss [esp+0x4], xmm0
	mov [esp], ebx
	call CL_DrawStretchPic
	mov eax, [ebp+0x18]
	mov [esp+0x30], eax
	mov edx, [ebp+0x1c]
	mov [esp+0x2c], edx
	mov dword [esp+0x28], 0x3f000000
	mov [esp+0x24], esi
	mov dword [esp+0x20], 0x3f000000
	mov dword [esp+0x1c], 0x3f000000
	mov edx, [ebp+0x14]
	mov eax, [edx+0x14]
	mov [esp+0x18], eax
	mov eax, [edx+0x10]
	mov [esp+0x14], eax
	movss xmm0, dword [ebp-0x48]
	addss xmm0, [ebp-0x24]
	movss [esp+0x10], xmm0
	movss xmm0, dword [ebp-0x40]
	movss [esp+0xc], xmm0
	movss xmm0, dword [ebp-0x3c]
	addss xmm0, [ebp-0x2c]
	movss [esp+0x8], xmm0
	movss xmm0, dword [ebp-0x30]
	addss xmm0, [ebp-0x28]
	subss xmm0, [ebp-0x3c]
	movss [esp+0x4], xmm0
	mov [esp], ebx
	call CL_DrawStretchPic
	mov eax, [ebp+0x18]
	mov [esp+0x30], eax
	mov edx, [ebp+0x1c]
	mov [esp+0x2c], edx
	mov dword [esp+0x28], 0x3f000000
	mov dword [esp+0x24], 0x3f000000
	mov dword [esp+0x20], 0x0
	mov dword [esp+0x1c], 0x3f000000
	mov edx, [ebp+0x14]
	mov eax, [edx+0x14]
	mov [esp+0x18], eax
	mov eax, [edx+0x10]
	mov [esp+0x14], eax
	movss xmm0, dword [ebp-0x40]
	movss [esp+0x10], xmm0
	movss xmm0, dword [ebp-0x48]
	addss xmm0, [ebp-0x28]
	movss [esp+0xc], xmm0
	movss xmm0, dword [ebp-0x2c]
	subss xmm0, [ebp-0x3c]
	movss [esp+0x8], xmm0
	movss xmm0, dword [ebp-0x3c]
	addss xmm0, [ebp-0x30]
	movss [esp+0x4], xmm0
	mov [esp], ebx
	call CL_DrawStretchPic
	mov eax, [ebp+0x18]
	mov [esp+0x30], eax
	mov edx, [ebp+0x1c]
	mov [esp+0x2c], edx
	mov [esp+0x28], esi
	mov dword [esp+0x24], 0x3f000000
	mov dword [esp+0x20], 0x3f000000
	mov dword [esp+0x1c], 0x3f000000
	mov edx, [ebp+0x14]
	mov eax, [edx+0x14]
	mov [esp+0x18], eax
	mov eax, [edx+0x10]
	mov [esp+0x14], eax
	movss xmm0, dword [ebp-0x40]
	movss [esp+0x10], xmm0
	movss xmm2, dword [ebp-0x48]
	addss xmm2, [ebp-0x28]
	movss [esp+0xc], xmm2
	movss xmm0, dword [ebp-0x2c]
	addss xmm0, [ebp-0x24]
	subss xmm0, [ebp-0x3c]
	movss [esp+0x8], xmm0
	movss xmm0, dword [ebp-0x3c]
	addss xmm0, [ebp-0x30]
	movss [esp+0x4], xmm0
	mov [esp], ebx
	call CL_DrawStretchPic
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_CompassDrawBorder_30:
	mov eax, hud_fade_compass
	mov ebx, [eax]
	movss xmm0, dword [_float_1000_00000000]
	mulss xmm0, [ebx+0xc]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x4c]
	cvttss2si eax, [ebp-0x4c]
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	mov [esp+0x4], ebx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_FadeHudMenu
	fstp dword [ebp-0x5c]
	movss xmm0, dword [ebp-0x5c]
	jmp CG_CompassDrawBorder_50
	nop


;CG_CompassDrawPlayer(int, CompassType, rectDef_s const*, rectDef_s*, Material*, float*)
CG_CompassDrawPlayer:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xdc
	mov edi, [ebp+0x1c]
	add edi, 0xc
	mov eax, [ebp+0x1c]
	movss xmm0, dword [eax+0xc]
	movss [ebp-0x48], xmm0
	mov eax, cgArray
	mov esi, [eax+0x504b4]
	mov edx, [ebp+0xc]
	test edx, edx
	jz CG_CompassDrawPlayer_10
	movss xmm0, dword [_float_1_00000000]
CG_CompassDrawPlayer_60:
	mulss xmm0, [ebp-0x48]
	movss [edi], xmm0
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jp CG_CompassDrawPlayer_20
	jnz CG_CompassDrawPlayer_20
	add esp, 0xdc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_CompassDrawPlayer_20:
	lea esi, [ebp-0x38]
	lea eax, [ebp-0x2c]
	mov [esp+0x1c], eax
	lea eax, [ebp-0x30]
	mov [esp+0x18], eax
	lea eax, [ebp-0x34]
	mov [esp+0x14], eax
	mov [esp+0x10], esi
	mov edx, [ebp+0x14]
	mov [esp+0xc], edx
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov ebx, cgArray
	mov [esp+0x4], ebx
	mov edx, [ebp+0xc]
	mov [esp], edx
	movss [ebp-0x78], xmm1
	call CG_CompassCalcDimensions
	movss xmm0, dword [_float_0_50000000]
	movss xmm2, dword [ebp-0x30]
	mulss xmm2, xmm0
	addss xmm2, [ebp-0x38]
	movss [ebp-0x44], xmm2
	movaps xmm4, xmm0
	mulss xmm4, [ebp-0x2c]
	addss xmm4, [ebp-0x34]
	cmp dword [ebp+0xc], 0x1
	movss xmm1, dword [ebp-0x78]
	jz CG_CompassDrawPlayer_30
	mov eax, [compassSize]
	movss xmm0, dword [eax+0xc]
	mov eax, [compassPlayerWidth]
	movaps xmm2, xmm0
	mulss xmm2, [eax+0xc]
	movss [ebp-0x40], xmm2
	mov eax, [compassPlayerHeight]
	mulss xmm0, [eax+0xc]
	movss [ebp-0x3c], xmm0
	movaps xmm2, xmm1
CG_CompassDrawPlayer_70:
	movss xmm0, dword [_float__0_50000000]
	movss xmm3, dword [ebp-0x40]
	mulss xmm3, xmm0
	addss xmm3, [ebp-0x44]
	addss xmm3, xmm2
	movaps xmm2, xmm0
	mulss xmm2, [ebp-0x3c]
	addss xmm2, xmm4
	addss xmm2, xmm1
	mov eax, [ebp+0xc]
	test eax, eax
	jnz CG_CompassDrawPlayer_40
	mov eax, [compassRotation]
	pxor xmm0, xmm0
	cmp byte [eax+0xc], 0x0
	jz CG_CompassDrawPlayer_40
CG_CompassDrawPlayer_50:
	mov eax, [ebp+0x18]
	mov [esp+0x24], eax
	mov edx, [ebp+0x1c]
	mov [esp+0x20], edx
	movss [esp+0x1c], xmm0
	mov edx, [ebp+0x14]
	mov eax, [edx+0x14]
	mov [esp+0x18], eax
	mov eax, [edx+0x10]
	mov [esp+0x14], eax
	movss xmm0, dword [ebp-0x3c]
	movss [esp+0x10], xmm0
	movss xmm0, dword [ebp-0x40]
	movss [esp+0xc], xmm0
	movss [esp+0x8], xmm2
	movss [esp+0x4], xmm3
	mov eax, [ebp+0x8]
	shl eax, 0x6
	mov edx, [ebp+0x8]
	lea eax, [eax+edx*4]
	add eax, scrPlaceView
	mov [esp], eax
	call CG_DrawRotatedPic
	add esp, 0xdc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_CompassDrawPlayer_40:
	mov eax, cgArray
	movss xmm0, dword [eax+0x50494]
	subss xmm0, [eax+0x4d364]
	mulss xmm0, [_float_0_00277778]
	movaps xmm1, xmm0
	addss xmm1, [_float_0_50000000]
	movss [esp], xmm1
	movss [ebp-0x68], xmm0
	movss [ebp-0x88], xmm2
	movss [ebp-0x98], xmm3
	call floorf
	fstp dword [ebp-0x50]
	movss xmm0, dword [ebp-0x68]
	subss xmm0, [ebp-0x50]
	mulss xmm0, [_float_360_00000000]
	movss xmm3, dword [ebp-0x98]
	movss xmm2, dword [ebp-0x88]
	jmp CG_CompassDrawPlayer_50
CG_CompassDrawPlayer_10:
	mov eax, hud_fade_compass
	mov ebx, [eax]
	movss xmm0, dword [_float_1000_00000000]
	mulss xmm0, [ebx+0xc]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x4c]
	cvttss2si eax, [ebp-0x4c]
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	mov [esp+0x4], ebx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_FadeHudMenu
	fstp dword [ebp-0xac]
	movss xmm0, dword [ebp-0xac]
	jmp CG_CompassDrawPlayer_60
CG_CompassDrawPlayer_30:
	mov eax, [cg_hudMapPlayerWidth]
	movss xmm0, dword [eax+0xc]
	movss [ebp-0x40], xmm0
	mov eax, [cg_hudMapPlayerHeight]
	movss xmm2, dword [eax+0xc]
	movss [ebp-0x3c], xmm2
	movss [ebp-0x20], xmm1
	movss [ebp-0x1c], xmm1
	lea eax, [ebp-0x20]
	mov [esp+0x1c], eax
	mov dword [esp+0x18], 0x0
	lea eax, [ebx+0x492e0]
	mov [esp+0x14], eax
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x0
	mov [esp+0x8], esi
	mov [esp+0x4], ebx
	mov dword [esp], 0x1
	movss [ebp-0xa8], xmm4
	call CG_WorldPosToCompass
	movss xmm2, dword [ebp-0x20]
	movss xmm1, dword [ebp-0x1c]
	movss xmm4, dword [ebp-0xa8]
	jmp CG_CompassDrawPlayer_70


;CG_WorldPosToCompass(CompassType, cg_s const*, rectDef_s const*, float const*, float const*, float const*, float*, float*)
CG_WorldPosToCompass:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xc
	mov eax, [ebp+0xc]
	mov ebx, [ebp+0x10]
	mov edi, [ebp+0x14]
	mov esi, [ebp+0x18]
	mov edx, [ebp+0x1c]
	mov ecx, [ebp+0x24]
	cmp dword [ebp+0x8], 0x0
	jnz CG_WorldPosToCompass_10
	movss xmm0, dword [ebx+0xc]
	mov eax, [compassMaxRange]
	divss xmm0, dword [eax+0xc]
	movss xmm1, dword [edx]
	subss xmm1, [esi]
	movss xmm2, dword [edx+0x4]
	subss xmm2, [esi+0x4]
	mulss xmm1, xmm0
	mulss xmm2, xmm0
	movss xmm3, dword [edi+0x4]
	movss xmm4, dword [edi]
	movaps xmm5, xmm1
	mulss xmm5, xmm3
	movaps xmm0, xmm2
	mulss xmm0, xmm4
	subss xmm5, xmm0
	xorps xmm3, [_data16_80000000]
	mulss xmm3, xmm2
	mulss xmm1, xmm4
	subss xmm3, xmm1
	test ecx, ecx
	jz CG_WorldPosToCompass_20
CG_WorldPosToCompass_70:
	pxor xmm1, xmm1
	movss xmm0, dword [ebx+0x8]
	ucomiss xmm0, xmm1
	jb CG_WorldPosToCompass_20
	movss xmm0, dword [ebx+0xc]
	ucomiss xmm0, xmm1
	jb CG_WorldPosToCompass_20
	movss [ecx], xmm5
	lea edx, [ecx+0x4]
	movss [ecx+0x4], xmm3
	movss xmm1, dword [ebx+0x8]
	movss xmm4, dword [_float_0_50000000]
	movaps xmm0, xmm1
	mulss xmm0, xmm4
	ucomiss xmm5, xmm0
	jbe CG_WorldPosToCompass_30
	divss xmm0, xmm5
	movaps xmm1, xmm0
	mulss xmm1, xmm5
	movss [ecx], xmm1
	mulss xmm0, xmm3
	movss [ecx+0x4], xmm0
	mov eax, 0x1
CG_WorldPosToCompass_100:
	movss xmm1, dword [edx]
	movss xmm2, dword [ebx+0xc]
	movaps xmm0, xmm4
	mulss xmm0, xmm2
	ucomiss xmm1, xmm0
	ja CG_WorldPosToCompass_40
	movaps xmm0, xmm2
	mulss xmm0, [_float__0_50000000]
	ucomiss xmm0, xmm1
	jbe CG_WorldPosToCompass_50
CG_WorldPosToCompass_40:
	divss xmm0, xmm1
	movaps xmm1, xmm0
	mulss xmm1, [ecx]
	movss [ecx], xmm1
	mulss xmm0, [ecx+0x4]
	movss [edx], xmm0
	mov eax, 0x1
CG_WorldPosToCompass_80:
	mov edx, [ebp+0x20]
	test edx, edx
	jz CG_WorldPosToCompass_60
	mov edx, [ebp+0x20]
	movss [edx], xmm5
	movss [edx+0x4], xmm3
CG_WorldPosToCompass_60:
	add esp, 0xc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_WorldPosToCompass_10:
	movss xmm1, dword [edx]
	subss xmm1, [eax+0x504a4]
	movss xmm2, dword [edx+0x4]
	subss xmm2, [eax+0x504a8]
	movss xmm3, dword [eax+0x5049c]
	movss xmm4, dword [eax+0x50498]
	movaps xmm5, xmm1
	mulss xmm5, xmm3
	movaps xmm0, xmm2
	mulss xmm0, xmm4
	subss xmm5, xmm0
	divss xmm5, dword [eax+0x504ac]
	movss xmm0, dword [_float_0_50000000]
	subss xmm5, xmm0
	xorps xmm3, [_data16_80000000]
	mulss xmm3, xmm2
	mulss xmm1, xmm4
	subss xmm3, xmm1
	divss xmm3, dword [eax+0x504b0]
	subss xmm3, xmm0
	mulss xmm5, [ebx+0x8]
	mulss xmm3, [ebx+0xc]
	test ecx, ecx
	jnz CG_WorldPosToCompass_70
CG_WorldPosToCompass_20:
	xor eax, eax
	jmp CG_WorldPosToCompass_80
CG_WorldPosToCompass_30:
	movaps xmm0, xmm1
	mulss xmm0, [_float__0_50000000]
	ucomiss xmm0, xmm5
	jbe CG_WorldPosToCompass_90
	divss xmm0, xmm5
	movaps xmm1, xmm0
	mulss xmm1, [ecx]
	movss [ecx], xmm1
	mulss xmm0, [ecx+0x4]
	movss [ecx+0x4], xmm0
	mov eax, 0x1
	jmp CG_WorldPosToCompass_100
CG_WorldPosToCompass_90:
	xor eax, eax
	jmp CG_WorldPosToCompass_100
CG_WorldPosToCompass_50:
	movzx eax, al
	jmp CG_WorldPosToCompass_80


;CG_CompassUpYawVector(cg_s const*, float*)
CG_CompassUpYawVector:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov ecx, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov eax, [compassRotation]
	cmp byte [eax+0xc], 0x0
	jnz CG_CompassUpYawVector_10
	mov eax, [ecx+0x50498]
	mov [edx], eax
	mov eax, [ecx+0x5049c]
	mov [edx+0x4], eax
	leave
	ret
CG_CompassUpYawVector_10:
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], edx
	mov eax, [ecx+0x4d364]
	mov [esp], eax
	call YawVectors2D
	leave
	ret


;CG_GetHudAlphaCompass(int)
CG_GetHudAlphaCompass:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov eax, hud_fade_compass
	mov ebx, [eax]
	movss xmm0, dword [_float_1000_00000000]
	mulss xmm0, [ebx+0xc]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0xc]
	cvttss2si eax, [ebp-0xc]
	mov [esp+0xc], eax
	mov eax, cgArray
	mov eax, [eax+0x504b4]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_FadeHudMenu
	add esp, 0x24
	pop ebx
	pop ebp
	ret
	nop


;CG_IsSelectingLocation(int)
CG_IsSelectingLocation:
	push ebp
	mov ebp, esp
	mov eax, cgArray
	mov eax, [eax+0x466f0]
	test eax, eax
	setnz al
	movzx eax, al
	pop ebp
	ret


;CG_CompassDrawPlayerMap(int, CompassType, rectDef_s const*, rectDef_s const*, Material*, float*)
CG_CompassDrawPlayerMap:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xbc
	mov edi, [ebp+0x1c]
	add edi, 0xc
	mov eax, cgArray
	mov esi, [eax+0x504b4]
	mov eax, [ebp+0xc]
	test eax, eax
	jz CG_CompassDrawPlayerMap_10
	movss xmm0, dword [_float_1_00000000]
CG_CompassDrawPlayerMap_80:
	movss [edi], xmm0
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jp CG_CompassDrawPlayerMap_20
	jz CG_CompassDrawPlayerMap_30
CG_CompassDrawPlayerMap_20:
	mov eax, [ebp+0xc]
	test eax, eax
	jnz CG_CompassDrawPlayerMap_40
	mov ebx, cgArray
	movss xmm4, dword [ebx+0x5049c]
	movss xmm7, dword [_data16_80000000]
	movss xmm3, dword [ebx+0x50498]
	xorps xmm3, xmm7
	movss xmm2, dword [ebx+0x492e0]
	subss xmm2, [ebx+0x504a4]
	movss xmm1, dword [ebx+0x492e4]
	subss xmm1, [ebx+0x504a8]
	movss xmm5, dword [ebx+0x504ac]
	movaps xmm6, xmm4
	mulss xmm6, xmm2
	movaps xmm0, xmm3
	mulss xmm0, xmm1
	addss xmm6, xmm0
	divss xmm6, xmm5
	movss xmm0, dword [ebx+0x504b0]
	mulss xmm3, xmm2
	mulss xmm4, xmm1
	subss xmm3, xmm4
	divss xmm3, xmm0
	ucomiss xmm5, xmm0
	jbe CG_CompassDrawPlayerMap_50
	movss xmm1, dword [_float_0_50000000]
	mov eax, [compassMaxRange]
	mulss xmm1, [eax+0xc]
	divss xmm1, xmm5
	divss xmm5, xmm0
	movss [ebp-0x2c], xmm5
	movss xmm0, dword [_float_1_00000000]
	movss [ebp-0x30], xmm0
CG_CompassDrawPlayerMap_90:
	mov eax, [compassRotation]
	pxor xmm0, xmm0
	cmp byte [eax+0xc], 0x0
	jz CG_CompassDrawPlayerMap_60
	movss xmm0, dword [ebx+0x4d364]
	subss xmm0, [ebx+0x50494]
	xorps xmm0, xmm7
CG_CompassDrawPlayerMap_60:
	lea eax, [ebp-0x28]
	mov [esp+0x1c], eax
	lea eax, [ebp-0x24]
	mov [esp+0x18], eax
	lea eax, [ebp-0x20]
	mov [esp+0x14], eax
	lea eax, [ebp-0x1c]
	mov [esp+0x10], eax
	mov eax, [ebp+0x14]
	mov [esp+0xc], eax
	mov edx, [ebp+0x10]
	mov [esp+0x8], edx
	mov [esp+0x4], ebx
	mov dword [esp], 0x0
	movss [ebp-0x48], xmm0
	movss [ebp-0x58], xmm1
	movss [ebp-0x68], xmm3
	movss [ebp-0x78], xmm6
	call CG_CompassCalcDimensions
	mov eax, [ebx+0x504a0]
	mov [esp+0x38], eax
	mov eax, [ebp+0x1c]
	mov [esp+0x34], eax
	movss xmm0, dword [ebp-0x48]
	movss [esp+0x30], xmm0
	movss xmm0, dword [ebp-0x2c]
	movss [esp+0x2c], xmm0
	movss xmm0, dword [ebp-0x30]
	movss [esp+0x28], xmm0
	movss xmm1, dword [ebp-0x58]
	movss [esp+0x24], xmm1
	movss xmm3, dword [ebp-0x68]
	movss [esp+0x20], xmm3
	movss xmm6, dword [ebp-0x78]
	movss [esp+0x1c], xmm6
	mov edx, [ebp+0x14]
	mov eax, [edx+0x14]
	mov [esp+0x18], eax
	mov eax, [edx+0x10]
	mov [esp+0x14], eax
	mov eax, [ebp-0x28]
	mov [esp+0x10], eax
	mov eax, [ebp-0x24]
	mov [esp+0xc], eax
	mov eax, [ebp-0x20]
	mov [esp+0x8], eax
	mov eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	shl eax, 0x6
	mov edx, [ebp+0x8]
	lea eax, [eax+edx*4]
	add eax, scrPlaceView
	mov [esp], eax
	call CL_DrawStretchPicRotatedST
CG_CompassDrawPlayerMap_70:
	mov eax, [ebp+0x1c]
	mov [esp+0x10], eax
	mov edx, [ebp+0x14]
	mov [esp+0xc], edx
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_CompassDrawRadarEffects
CG_CompassDrawPlayerMap_30:
	add esp, 0xbc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_CompassDrawPlayerMap_40:
	lea eax, [ebp-0x28]
	mov [esp+0x1c], eax
	lea eax, [ebp-0x24]
	mov [esp+0x18], eax
	lea eax, [ebp-0x20]
	mov [esp+0x14], eax
	lea eax, [ebp-0x1c]
	mov [esp+0x10], eax
	mov eax, [ebp+0x14]
	mov [esp+0xc], eax
	mov edx, [ebp+0x10]
	mov [esp+0x8], edx
	mov ebx, cgArray
	mov [esp+0x4], ebx
	mov eax, [ebp+0xc]
	mov [esp], eax
	call CG_CompassCalcDimensions
	mov eax, [ebx+0x504a0]
	mov [esp+0x30], eax
	mov edx, [ebp+0x1c]
	mov [esp+0x2c], edx
	mov eax, 0x3f800000
	mov [esp+0x28], eax
	mov [esp+0x24], eax
	mov dword [esp+0x20], 0x0
	mov dword [esp+0x1c], 0x0
	mov edx, [ebp+0x14]
	mov eax, [edx+0x14]
	mov [esp+0x18], eax
	mov eax, [edx+0x10]
	mov [esp+0x14], eax
	mov eax, [ebp-0x28]
	mov [esp+0x10], eax
	mov eax, [ebp-0x24]
	mov [esp+0xc], eax
	mov eax, [ebp-0x20]
	mov [esp+0x8], eax
	mov eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	shl eax, 0x6
	mov edx, [ebp+0x8]
	lea eax, [eax+edx*4]
	add eax, scrPlaceView
	mov [esp], eax
	call CL_DrawStretchPic
	jmp CG_CompassDrawPlayerMap_70
CG_CompassDrawPlayerMap_10:
	mov eax, hud_fade_compass
	mov ebx, [eax]
	movss xmm0, dword [_float_1000_00000000]
	mulss xmm0, [ebx+0xc]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x34]
	cvttss2si eax, [ebp-0x34]
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	mov [esp+0x4], ebx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_FadeHudMenu
	fstp dword [ebp-0x7c]
	movss xmm0, dword [ebp-0x7c]
	jmp CG_CompassDrawPlayerMap_80
CG_CompassDrawPlayerMap_50:
	movss xmm1, dword [_float_0_50000000]
	mov eax, [compassMaxRange]
	mulss xmm1, [eax+0xc]
	divss xmm1, xmm0
	divss xmm0, xmm5
	movss [ebp-0x30], xmm0
	movss xmm0, dword [_float_1_00000000]
	movss [ebp-0x2c], xmm0
	jmp CG_CompassDrawPlayerMap_90


;CG_CompassRegisterDvars()
CG_CompassRegisterDvars:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov dword [esp+0xc], _cstring_display_compass
	mov dword [esp+0x8], 0x1000
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_compass
	call Cvar_RegisterBool
	mov [compass], eax
	mov dword [esp+0x14], _cstring_scale_the_compas
	mov dword [esp+0x10], 0x1
	mov esi, 0x7f7fffff
	mov [esp+0xc], esi
	xor edi, edi
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x3f800000
	mov dword [esp], _cstring_compasssize
	call Cvar_RegisterFloat
	mov [compassSize], eax
	mov dword [esp+0x14], _cstring_the_maximum_rang
	mov dword [esp+0x10], 0x1081
	mov [esp+0xc], esi
	mov ebx, 0x38d1b717
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x451c4000
	mov dword [esp], _cstring_compassmaxrange
	call Cvar_RegisterFloat
	mov [compassMaxRange], eax
	mov dword [esp+0x14], _cstring_the_minimum_rang
	mov dword [esp+0x10], 0x1
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_compassminrange
	call Cvar_RegisterFloat
	mov [compassMinRange], eax
	mov dword [esp+0x14], _cstring_the_minimum_radi
	mov dword [esp+0x10], 0x1
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_compassminradius
	call Cvar_RegisterFloat
	mov [compassMinRadius], eax
	mov dword [esp+0x14], _cstring_the_time_in_seco
	mov dword [esp+0x10], 0x81
	mov dword [esp+0xc], 0x41200000
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x40000000
	mov dword [esp], _cstring_compasssoundping
	call Cvar_RegisterFloat
	mov [compassSoundPingFadeTime], eax
	mov dword [esp+0xc], _cstring_if_true_friendli
	mov dword [esp+0x8], 0x81
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_compassclampicon
	call Cvar_RegisterBool
	mov [compassClampIcons], eax
	mov dword [esp+0x14], _cstring_the_size_of_the_
	mov dword [esp+0x10], 0x1
	mov [esp+0xc], esi
	mov [esp+0x8], edi
	mov ebx, 0x41960000
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_compassfriendlyw
	call Cvar_RegisterFloat
	mov [compassFriendlyWidth], eax
	mov dword [esp+0x14], _cstring_the_size_of_the_
	mov dword [esp+0x10], 0x1
	mov [esp+0xc], esi
	mov [esp+0x8], edi
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_compassfriendlyh
	call Cvar_RegisterFloat
	mov [compassFriendlyHeight], eax
	mov dword [esp+0x14], _cstring_the_size_of_the_1
	mov dword [esp+0x10], 0x1
	mov [esp+0xc], esi
	mov [esp+0x8], edi
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_compassplayerwid
	call Cvar_RegisterFloat
	mov [compassPlayerWidth], eax
	mov dword [esp+0x14], _cstring_the_size_of_the_1
	mov dword [esp+0x10], 0x1
	mov [esp+0xc], esi
	mov [esp+0x8], edi
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_compassplayerhei
	call Cvar_RegisterFloat
	mov [compassPlayerHeight], eax
	mov dword [esp+0x1c], _cstring_x__northsouth_co
	mov dword [esp+0x18], 0x1
	mov [esp+0x14], esi
	mov [esp+0x10], edi
	mov dword [esp+0xc], 0x43c80000
	mov dword [esp+0x8], 0x45606000
	mov dword [esp+0x4], 0x44390000
	mov dword [esp], _cstring_compasscoords
	call Cvar_RegisterVec3
	mov [compassCoords], eax
	mov dword [esp+0x14], _cstring_left_cutoff_for_
	mov dword [esp+0x10], 0x1
	mov [esp+0xc], esi
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x42140000
	mov dword [esp], _cstring_compassecoordcut
	call Cvar_RegisterFloat
	mov [compassECoordCutoff], eax
	mov dword [esp+0xc], _cstring_style_of_compass
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_compassrotation
	call Cvar_RegisterBool
	mov [compassRotation], eax
	mov dword [esp+0x14], _cstring_how_far_the_tick
	mov dword [esp+0x10], 0x1
	mov dword [esp+0xc], 0x3f800000
	mov dword [esp+0x8], 0x3c23d70a
	mov dword [esp+0x4], 0x3f000000
	mov dword [esp], _cstring_compasstickertap
	call Cvar_RegisterFloat
	mov [compassTickertapeStretch], eax
	mov dword [esp+0x14], _cstring_how_long_an_enem
	mov dword [esp+0x10], 0x81
	mov ebx, 0x42700000
	mov [esp+0xc], ebx
	mov dword [esp+0x8], 0x3c23d70a
	mov dword [esp+0x4], 0x40800000
	mov dword [esp], _cstring_compassradarping
	call Cvar_RegisterFloat
	mov [compassRadarPingFadeTime], eax
	mov dword [esp+0x14], _cstring_time_between_rad
	mov dword [esp+0x10], 0x81
	mov [esp+0xc], ebx
	mov dword [esp+0x8], 0x3c23d70a
	mov dword [esp+0x4], 0x40800000
	mov dword [esp], _cstring_compassradarupda
	call Cvar_RegisterFloat
	mov [compassRadarUpdateTime], eax
	mov dword [esp+0x14], _cstring_thickness_relati
	mov dword [esp+0x10], 0x81
	mov dword [esp+0xc], 0x41200000
	mov dword [esp+0x8], 0x3c23d70a
	mov dword [esp+0x4], 0x3ecccccd
	mov dword [esp], _cstring_compassradarline
	call Cvar_RegisterFloat
	mov [compassRadarLineThickness], eax
	mov dword [esp+0x14], _cstring_the_size_of_the_2
	mov dword [esp+0x10], 0x1
	mov [esp+0xc], esi
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x41a00000
	mov dword [esp], _cstring_compassobjective
	call Cvar_RegisterFloat
	mov [compassObjectiveWidth], eax
	mov dword [esp+0x14], _cstring_the_size_of_the_2
	mov dword [esp+0x10], 0x1
	mov [esp+0xc], esi
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x41a00000
	mov dword [esp], _cstring_compassobjective1
	call Cvar_RegisterFloat
	mov [compassObjectiveHeight], eax
	mov dword [esp+0x14], _cstring_the_size_of_the_3
	mov dword [esp+0x10], 0x1
	mov [esp+0xc], esi
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x41a00000
	mov dword [esp], _cstring_compassobjective2
	call Cvar_RegisterFloat
	mov [compassObjectiveArrowWidth], eax
	mov dword [esp+0x14], _cstring_the_size_of_the_3
	mov dword [esp+0x10], 0x1
	mov [esp+0xc], esi
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x41a00000
	mov dword [esp], _cstring_compassobjective3
	call Cvar_RegisterFloat
	mov [compassObjectiveArrowHeight], eax
	mov dword [esp+0x14], _cstring_the_offset_of_th
	mov dword [esp+0x10], 0x1
	mov [esp+0xc], esi
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x40000000
	mov dword [esp], _cstring_compassobjective4
	call Cvar_RegisterFloat
	mov [compassObjectiveArrowOffset], eax
	mov dword [esp+0x14], _cstring_distance_from_th
	mov dword [esp+0x10], 0x1
	mov [esp+0xc], esi
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x40a00000
	mov dword [esp], _cstring_compassobjective5
	call Cvar_RegisterFloat
	mov [compassObjectiveArrowRotateDist], eax
	mov dword [esp+0x14], _cstring_the_maximum_rang1
	mov dword [esp+0x10], 0x1
	mov [esp+0xc], esi
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x45000000
	mov dword [esp], _cstring_compassobjective6
	call Cvar_RegisterFloat
	mov [compassObjectiveMaxRange], eax
	mov dword [esp+0x14], _cstring_the_minimum_alph
	mov dword [esp+0x10], 0x1
	mov dword [esp+0xc], 0x3f800000
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x3f800000
	mov dword [esp], _cstring_compassobjective7
	call Cvar_RegisterFloat
	mov [compassObjectiveMinAlpha], eax
	mov dword [esp+0x14], _cstring_the_number_of_ri
	mov dword [esp+0x10], 0x1
	mov dword [esp+0xc], 0x14
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0xa
	mov dword [esp], _cstring_compassobjective8
	call Cvar_RegisterInt
	mov [compassObjectiveNumRings], eax
	mov dword [esp+0x14], _cstring_the_amount_of_ti
	mov dword [esp+0x10], 0x1
	mov dword [esp+0xc], 0x7fffffff
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x2710
	mov dword [esp], _cstring_compassobjective9
	call Cvar_RegisterInt
	mov [compassObjectiveRingTime], eax
	mov dword [esp+0x14], _cstring_the_maximum_obje
	mov dword [esp+0x10], 0x1
	mov [esp+0xc], esi
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x42a00000
	mov dword [esp], _cstring_compassobjective10
	call Cvar_RegisterFloat
	mov [compassObjectiveRingSize], eax
	mov dword [esp+0x14], _cstring_scale_to_apply_t
	mov dword [esp+0x10], 0x1
	mov [esp+0xc], esi
	mov ebx, 0x3727c5ac
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x3e99999a
	mov dword [esp], _cstring_compassobjective11
	call Cvar_RegisterFloat
	mov [compassObjectiveTextScale], eax
	mov dword [esp+0x14], _cstring_objective_text_h
	mov dword [esp+0x10], 0x1
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x41900000
	mov dword [esp], _cstring_compassobjective12
	call Cvar_RegisterFloat
	mov [compassObjectiveTextHeight], eax
	mov dword [esp+0xc], _cstring_draw_horizontal_
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_compassobjective13
	call Cvar_RegisterBool
	mov [compassObjectiveDrawLines], eax
	mov dword [esp+0x14], _cstring_the_size_of_the_4
	mov dword [esp+0x10], 0x1
	mov [esp+0xc], esi
	mov [esp+0x8], edi
	mov ebx, 0x41800000
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_compassobjective14
	call Cvar_RegisterFloat
	mov [compassObjectiveIconWidth], eax
	mov dword [esp+0x14], _cstring_the_size_of_the_4
	mov dword [esp+0x10], 0x1
	mov [esp+0xc], esi
	mov [esp+0x8], edi
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_compassobjective15
	call Cvar_RegisterFloat
	mov [compassObjectiveIconHeight], eax
	mov dword [esp+0x14], _cstring_when_an_objectiv
	mov dword [esp+0x10], 0x1000
	mov [esp+0xc], esi
	mov dword [esp+0x8], 0x3c23d70a
	mov dword [esp+0x4], 0x40800000
	mov dword [esp], _cstring_compassobjective16
	call Cvar_RegisterFloat
	mov [compassObjectiveNearbyDist], eax
	mov dword [esp+0x14], _cstring_the_distance_tha
	mov dword [esp+0x10], 0x1000
	mov [esp+0xc], esi
	mov dword [esp+0x8], 0x3c23d70a
	mov dword [esp+0x4], 0x3f800000
	mov dword [esp], _cstring_compassobjective17
	call Cvar_RegisterFloat
	mov [compassObjectiveMinDistRange], eax
	mov dword [esp+0x14], _cstring_when_an_objectiv1
	mov dword [esp+0x10], 0x1000
	mov [esp+0xc], esi
	mov dword [esp+0x8], 0x3c23d70a
	mov dword [esp+0x4], 0x41200000
	mov dword [esp], _cstring_compassobjective18
	call Cvar_RegisterFloat
	mov [compassObjectiveDetailDist], eax
	mov dword [esp+0x14], _cstring_the_minimum_heig
	mov dword [esp+0x10], 0x1000
	mov [esp+0xc], edi
	mov dword [esp+0x8], 0xff7fffff
	mov dword [esp+0x4], 0xc28c0000
	mov dword [esp], _cstring_compassobjective19
	call Cvar_RegisterFloat
	mov [compassObjectiveMinHeight], eax
	mov dword [esp+0x14], _cstring_the_maximum_heig
	mov dword [esp+0x10], 0x1000
	mov [esp+0xc], esi
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x428c0000
	mov dword [esp], _cstring_compassobjective20
	call Cvar_RegisterFloat
	mov [compassObjectiveMaxHeight], eax
	mov dword [esp+0x14], _cstring_the_maximum_dist
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], esi
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x43fa0000
	mov dword [esp], _cstring_compassenemyfoot
	call Cvar_RegisterFloat
	mov [compassEnemyFootstepMaxRange], eax
	mov dword [esp+0x14], _cstring_the_maximum_vert
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], esi
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x42c80000
	mov dword [esp], _cstring_compassenemyfoot1
	call Cvar_RegisterFloat
	mov [compassEnemyFootstepMaxZ], eax
	mov dword [esp+0x14], _cstring_the_minimum_spee
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], esi
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x430c0000
	mov dword [esp], _cstring_compassenemyfoot2
	call Cvar_RegisterFloat
	mov [compassEnemyFootstepMinSpeed], eax
	mov dword [esp+0xc], _cstring_enables_enemies_
	mov dword [esp+0x8], 0x80
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_compassenemyfoot3
	call Cvar_RegisterBool
	mov [compassEnemyFootstepEnabled], eax
	mov dword [esp+0x14], _cstring_thickness_relati1
	mov dword [esp+0x10], 0x81
	mov dword [esp+0xc], 0x41200000
	mov dword [esp+0x8], 0x3c23d70a
	mov dword [esp+0x4], 0x3e19999a
	mov dword [esp], _cstring_cg_hudmapradarli
	call Cvar_RegisterFloat
	mov [cg_hudMapRadarLineThickness], eax
	mov dword [esp+0x14], _cstring_the_size_of_the_5
	mov dword [esp+0x10], 0x1
	mov [esp+0xc], esi
	mov [esp+0x8], edi
	mov ebx, 0x41700000
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_cg_hudmapfriendl
	call Cvar_RegisterFloat
	mov [cg_hudMapFriendlyWidth], eax
	mov dword [esp+0x14], _cstring_the_size_of_the_5
	mov dword [esp+0x10], 0x1
	mov [esp+0xc], esi
	mov [esp+0x8], edi
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_cg_hudmapfriendl1
	call Cvar_RegisterFloat
	mov [cg_hudMapFriendlyHeight], eax
	mov dword [esp+0x14], _cstring_the_size_of_the_6
	mov dword [esp+0x10], 0x1
	mov [esp+0xc], esi
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x41a00000
	mov dword [esp], _cstring_cg_hudmapplayerw
	call Cvar_RegisterFloat
	mov [cg_hudMapPlayerWidth], eax
	mov dword [esp+0x14], _cstring_the_size_of_the_6
	mov dword [esp+0x10], 0x1
	mov [esp+0xc], esi
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x41a00000
	mov dword [esp], _cstring_cg_hudmapplayerh
	call Cvar_RegisterFloat
	mov [cg_hudMapPlayerHeight], eax
	mov dword [esp+0x14], _cstring_the_size_of_the_7
	mov dword [esp+0x10], 0x1
	mov [esp+0xc], esi
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x40000000
	mov dword [esp], _cstring_cg_hudmapborderw
	call Cvar_RegisterFloat
	mov [cg_hudMapBorderWidth], eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop
	add [eax], al


;CalcCompassFriendlySize(CompassType, float*, float*)
CalcCompassFriendlySize:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0xc]
	mov ecx, [ebp+0x10]
	mov eax, [ebp+0x8]
	test eax, eax
	jnz CalcCompassFriendlySize_10
	mov eax, [compassFriendlyWidth]
	movss xmm0, dword [eax+0xc]
	mov eax, [compassSize]
	mulss xmm0, [eax+0xc]
	movss [edx], xmm0
	mov eax, [compassFriendlyHeight]
	movss xmm0, dword [eax+0xc]
	mov eax, [compassSize]
	mulss xmm0, [eax+0xc]
	movss [ecx], xmm0
	pop ebp
	ret
CalcCompassFriendlySize_10:
	mov eax, [cg_hudMapFriendlyWidth]
	mov eax, [eax+0xc]
	mov [edx], eax
	mov eax, [cg_hudMapFriendlyHeight]
	mov eax, [eax+0xc]
	mov [ecx], eax
	pop ebp
	ret


;CG_CompassCalcDimensions(CompassType, cg_s const*, rectDef_s const*, rectDef_s const*, float*, float*, float*, float*)
CG_CompassCalcDimensions:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov eax, [ebp+0xc]
	mov [ebp-0x1c], eax
	mov edx, [ebp+0x10]
	mov [ebp-0x20], edx
	mov ebx, [ebp+0x14]
	mov edi, [ebp+0x18]
	mov eax, [ebp+0x1c]
	mov [ebp-0x24], eax
	mov esi, [ebp+0x20]
	mov edx, [ebp+0x24]
	mov [ebp-0x28], edx
	mov eax, [ebp+0x8]
	test eax, eax
	jnz CG_CompassCalcDimensions_10
	mov eax, [ebx]
	mov [edi], eax
	mov eax, [ebx+0x4]
	mov edx, [ebp-0x24]
	mov [edx], eax
	movss xmm0, dword [ebx+0x8]
	mov eax, [compassSize]
	mulss xmm0, [eax+0xc]
	movss [esi], xmm0
	movss xmm0, dword [ebx+0xc]
	mov eax, [compassSize]
	mulss xmm0, [eax+0xc]
	mov eax, [ebp-0x28]
	movss [eax], xmm0
	pxor xmm1, xmm1
	ucomiss xmm1, [esi]
	jae CG_CompassCalcDimensions_20
	ucomiss xmm1, xmm0
	jb CG_CompassCalcDimensions_30
CG_CompassCalcDimensions_20:
	mov dword [ebp+0xc], _cstring_compass_ownerdra
	mov dword [ebp+0x8], 0x1
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp Com_Error
CG_CompassCalcDimensions_10:
	pxor xmm0, xmm0
	ucomiss xmm0, [ebx+0x8]
	jae CG_CompassCalcDimensions_40
	ucomiss xmm0, [ebx+0xc]
	jae CG_CompassCalcDimensions_40
CG_CompassCalcDimensions_70:
	movss xmm4, dword [ebx+0x8]
	movss xmm5, dword [ebx+0xc]
	movaps xmm1, xmm4
	divss xmm1, xmm5
	mov edx, [ebp-0x1c]
	movss xmm0, dword [edx+0x504ac]
	divss xmm0, dword [edx+0x504b0]
	mov eax, [ebp-0x20]
	movss xmm2, dword [eax]
	addss xmm2, [ebx]
	movss xmm3, dword [eax+0x4]
	addss xmm3, [ebx+0x4]
	ucomiss xmm0, xmm1
	jbe CG_CompassCalcDimensions_50
	divss xmm1, xmm0
	movaps xmm0, xmm1
	mulss xmm0, xmm5
	movss [edi], xmm2
	mulss xmm5, [_float_0_50000000]
	addss xmm3, xmm5
	movaps xmm1, xmm0
	mulss xmm1, [_float__0_50000000]
	addss xmm3, xmm1
	mov edx, [ebp-0x24]
	movss [edx], xmm3
	mov eax, [ebx+0x8]
	mov [esi], eax
	mov eax, [ebp-0x28]
	movss [eax], xmm0
CG_CompassCalcDimensions_60:
	movss xmm0, dword [_float_0_25000000]
	movss xmm1, dword [esi]
	mulss xmm1, xmm0
	mov eax, [cg_hudMapBorderWidth]
	minss xmm1, dword [eax+0xc]
	mov eax, [ebp-0x28]
	mulss xmm0, [eax]
	minss xmm0, xmm1
	movaps xmm1, xmm0
	addss xmm1, [edi]
	movss [edi], xmm1
	movaps xmm1, xmm0
	mov edx, [ebp-0x24]
	addss xmm1, [edx]
	movss [edx], xmm1
	mulss xmm0, [_float__2_00000000]
	movaps xmm1, xmm0
	addss xmm1, [esi]
	movss [esi], xmm1
	addss xmm0, [eax]
	movss [eax], xmm0
CG_CompassCalcDimensions_30:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_CompassCalcDimensions_50:
	divss xmm0, xmm1
	mulss xmm0, xmm4
	mulss xmm4, [_float_0_50000000]
	addss xmm2, xmm4
	movaps xmm1, xmm0
	mulss xmm1, [_float__0_50000000]
	addss xmm2, xmm1
	movss [edi], xmm2
	mov edx, [ebp-0x24]
	movss [edx], xmm3
	movss [esi], xmm0
	mov eax, [ebx+0xc]
	mov edx, [ebp-0x28]
	mov [edx], eax
	jmp CG_CompassCalcDimensions_60
CG_CompassCalcDimensions_40:
	mov dword [esp+0x4], _cstring_compass_ownerdra
	mov dword [esp], 0x1
	call Com_Error
	jmp CG_CompassCalcDimensions_70


;CG_CompassDrawPlayerBack(int, CompassType, rectDef_s const*, rectDef_s const*, Material*, float*)
CG_CompassDrawPlayerBack:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x7c
	mov edi, [ebp+0x1c]
	add edi, 0xc
	mov eax, cgArray
	mov esi, [eax+0x504b4]
	mov ecx, [ebp+0xc]
	test ecx, ecx
	jz CG_CompassDrawPlayerBack_10
	movss xmm0, dword [_float_1_00000000]
CG_CompassDrawPlayerBack_30:
	movss [edi], xmm0
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jp CG_CompassDrawPlayerBack_20
	jnz CG_CompassDrawPlayerBack_20
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_CompassDrawPlayerBack_20:
	lea eax, [ebp-0x28]
	mov [esp+0x1c], eax
	lea eax, [ebp-0x24]
	mov [esp+0x18], eax
	lea eax, [ebp-0x20]
	mov [esp+0x14], eax
	lea eax, [ebp-0x1c]
	mov [esp+0x10], eax
	mov eax, [ebp+0x14]
	mov [esp+0xc], eax
	mov edx, [ebp+0x10]
	mov [esp+0x8], edx
	mov eax, cgArray
	mov [esp+0x4], eax
	mov eax, [ebp+0xc]
	mov [esp], eax
	call CG_CompassCalcDimensions
	mov edx, [ebp+0x18]
	mov [esp+0x30], edx
	mov eax, [ebp+0x1c]
	mov [esp+0x2c], eax
	mov eax, 0x3f800000
	mov [esp+0x28], eax
	mov [esp+0x24], eax
	mov dword [esp+0x20], 0x0
	mov dword [esp+0x1c], 0x0
	mov edx, [ebp+0x14]
	mov eax, [edx+0x14]
	mov [esp+0x18], eax
	mov eax, [edx+0x10]
	mov [esp+0x14], eax
	mov eax, [ebp-0x28]
	mov [esp+0x10], eax
	mov eax, [ebp-0x24]
	mov [esp+0xc], eax
	mov eax, [ebp-0x20]
	mov [esp+0x8], eax
	mov eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	shl eax, 0x6
	mov edx, [ebp+0x8]
	lea eax, [eax+edx*4]
	add eax, scrPlaceView
	mov [esp], eax
	call CL_DrawStretchPic
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_CompassDrawPlayerBack_10:
	mov eax, hud_fade_compass
	mov ebx, [eax]
	movss xmm0, dword [_float_1000_00000000]
	mulss xmm0, [ebx+0xc]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x2c]
	cvttss2si eax, [ebp-0x2c]
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	mov [esp+0x4], ebx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_FadeHudMenu
	fstp dword [ebp-0x3c]
	movss xmm0, dword [ebp-0x3c]
	jmp CG_CompassDrawPlayerBack_30


;CG_CompassDrawTickertape(int, CompassType, rectDef_s const*, rectDef_s const*, Material*, float const*, Font_s*, float, int, unsigned char)
CG_CompassDrawTickertape:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x14c
	mov esi, [ebp+0x1c]
	movzx eax, byte [ebp+0x2c]
	mov [ebp-0xc1], al
	mov edx, cgArray
	mov edi, [edx+0x504b4]
	mov eax, [ebp+0xc]
	test eax, eax
	jz CG_CompassDrawTickertape_10
	movss xmm0, dword [_float_1_00000000]
CG_CompassDrawTickertape_180:
	movss xmm1, dword [esi+0xc]
	minss xmm1, xmm0
	movss [ebp-0xa4], xmm1
	mov eax, [esi]
	mov [ebp-0x38], eax
	mov eax, [esi+0x4]
	mov [ebp-0x34], eax
	mov eax, [esi+0x8]
	mov [ebp-0x30], eax
	movss [ebp-0x2c], xmm1
	mov eax, cgArray
	movss xmm0, dword [eax+0x4d364]
	movss [ebp-0xc0], xmm0
	subss xmm0, [eax+0x50494]
	movss [ebp-0xc0], xmm0
	movaps xmm1, xmm0
	xorps xmm1, [_data16_80000000]
	divss xmm1, dword [_float_360_00000000]
	mov eax, [compassTickertapeStretch]
	movss xmm2, dword [eax+0xc]
	lea eax, [ebp-0x1c]
	mov [esp+0x1c], eax
	lea eax, [ebp-0x24]
	mov [esp+0x18], eax
	lea eax, [ebp-0x20]
	mov [esp+0x14], eax
	lea eax, [ebp-0x28]
	mov [esp+0x10], eax
	mov eax, [ebp+0x14]
	mov [esp+0xc], eax
	mov edx, [ebp+0x10]
	mov [esp+0x8], edx
	mov eax, cgArray
	mov [esp+0x4], eax
	mov edx, [ebp+0xc]
	mov [esp], edx
	movss [ebp-0xf8], xmm1
	movss [ebp-0x108], xmm2
	call CG_CompassCalcDimensions
	mov eax, [ebp+0x8]
	shl eax, 0x6
	mov edx, [ebp+0x8]
	lea eax, [eax+edx*4]
	mov edx, scrPlaceView
	add eax, edx
	mov [ebp-0xbc], eax
	mov eax, [ebp+0x18]
	mov [esp+0x30], eax
	lea edx, [ebp-0x38]
	mov [esp+0x2c], edx
	mov dword [esp+0x28], 0x3f800000
	movss xmm2, dword [ebp-0x108]
	movaps xmm0, xmm2
	mulss xmm0, [_float_0_50000000]
	movss xmm1, dword [ebp-0xf8]
	addss xmm0, xmm1
	movss [esp+0x24], xmm0
	mov dword [esp+0x20], 0x0
	mulss xmm2, [_float__0_50000000]
	addss xmm1, xmm2
	movss [esp+0x1c], xmm1
	mov edx, [ebp+0x14]
	mov eax, [edx+0x14]
	mov [esp+0x18], eax
	mov eax, [edx+0x10]
	mov [esp+0x14], eax
	mov eax, [ebp-0x1c]
	mov [esp+0x10], eax
	mov eax, [ebp-0x24]
	mov [esp+0xc], eax
	mov eax, [ebp-0x20]
	mov [esp+0x8], eax
	mov eax, [ebp-0x28]
	mov [esp+0x4], eax
	mov eax, [ebp-0xbc]
	mov [esp], eax
	call CL_DrawStretchPic
	cmp byte [ebp-0xc1], 0x0
	jz CG_CompassDrawTickertape_20
	mov ebx, [ebp+0xc]
	test ebx, ebx
	jnz CG_CompassDrawTickertape_30
	mov eax, [compassSize]
	movss xmm0, dword [eax+0xc]
	mov eax, [compassObjectiveWidth]
	movaps xmm1, xmm0
	mulss xmm1, [eax+0xc]
	movss [ebp-0x98], xmm1
	mov eax, [compassObjectiveHeight]
	mulss xmm0, [eax+0xc]
	movss [ebp-0x94], xmm0
CG_CompassDrawTickertape_130:
	movss xmm0, dword [_float_0_50000000]
	movss xmm1, dword [ebp-0x1c]
	mulss xmm1, xmm0
	addss xmm1, [ebp-0x20]
	movss [ebp-0xa0], xmm1
	movss xmm1, dword [_float__0_50000000]
	mulss xmm1, [ebp-0x94]
	movss [ebp-0x9c], xmm1
	movss xmm1, dword [ebp-0xa0]
	addss xmm1, [ebp-0x9c]
	movss [ebp-0x9c], xmm1
	movss xmm1, dword [_float_360_00000000]
	movss [ebp-0xac], xmm1
	mov eax, [compassTickertapeStretch]
	mulss xmm1, [eax+0xc]
	mulss xmm0, xmm1
	movss [ebp-0xac], xmm0
	movss xmm0, dword [ebp-0xc0]
	movss [esp], xmm0
	call AngleNormalize360
	fstp dword [ebp-0xa8]
	mov dword [ebp-0xb4], 0xbf000000
	movss xmm1, dword [ebp-0x98]
	mulss xmm1, [ebp-0xb4]
	movss [ebp-0xb4], xmm1
	movss xmm0, dword [ebp-0xac]
	addss xmm0, xmm0
	movss [ebp-0xb8], xmm0
	mov dword [ebp-0xb0], 0x0
	mov edi, 0x650
	movss xmm1, dword [ebp-0xac]
	xorps xmm1, [_data16_80000000]
	movss [ebp-0xcc], xmm1
	jmp CG_CompassDrawTickertape_40
CG_CompassDrawTickertape_60:
	sub ecx, 0x1
	jz CG_CompassDrawTickertape_50
CG_CompassDrawTickertape_100:
	add dword [ebp-0xb0], 0x1
	add edi, 0x1c
	cmp dword [ebp-0xb0], 0x10
	jz CG_CompassDrawTickertape_20
CG_CompassDrawTickertape_40:
	mov eax, edi
	mov edx, cgArray
	add eax, [edx+0x24]
	lea ebx, [eax+0x18]
	mov ecx, [eax+0x18]
	cmp ecx, 0x4
	jnz CG_CompassDrawTickertape_60
CG_CompassDrawTickertape_50:
	mov edx, [ebx+0x10]
	cmp edx, 0x3ff
	jz CG_CompassDrawTickertape_70
	lea eax, [edx*4]
	shl edx, 0x5
	sub edx, eax
	mov eax, edx
	shl eax, 0x4
	add edx, eax
	add edx, cg_entitiesArray
	lea eax, [edx+0x1c]
CG_CompassDrawTickertape_170:
	movss xmm0, dword [ebp-0xa4]
	movss [ebp-0x2c], xmm0
	movss xmm3, dword [eax]
	pxor xmm0, xmm0
	ucomiss xmm3, xmm0
	jp CG_CompassDrawTickertape_80
	jnz CG_CompassDrawTickertape_80
	lea edx, [eax+0x4]
	ucomiss xmm0, [eax+0x4]
	jnz CG_CompassDrawTickertape_90
	jp CG_CompassDrawTickertape_90
	ucomiss xmm0, [eax+0x8]
	jp CG_CompassDrawTickertape_90
	jz CG_CompassDrawTickertape_100
CG_CompassDrawTickertape_90:
	mov eax, cgArray
	subss xmm3, [eax+0x492e0]
	movss xmm2, dword [edx]
	subss xmm2, [eax+0x492e4]
	movaps xmm0, xmm3
	mulss xmm0, xmm3
	movaps xmm1, xmm2
	mulss xmm1, xmm2
	addss xmm0, xmm1
	sqrtss xmm0, xmm0
	mulss xmm0, [_float_0_02540000]
	movss [ebp-0x8c], xmm0
	movss [esp+0x4], xmm3
	movss [esp], xmm2
	call atan2f
	fstp dword [ebp-0x10c]
	movss xmm0, dword [ebp-0x10c]
	mulss xmm0, [_float_180_00000000]
	cvtss2sd xmm0, xmm0
	divsd xmm0, qword [_double_3_14159265]
	cvtsd2ss xmm0, xmm0
	mov edx, cgArray
	subss xmm0, [edx+0x50494]
	movss [esp], xmm0
	call AngleNormalize360
	movss xmm0, dword [ebp-0xa8]
	movss [esp+0x4], xmm0
	fstp dword [esp]
	call AngleDelta
	fstp dword [ebp-0x10c]
	movss xmm0, dword [ebp-0x10c]
	xorps xmm0, [_data16_80000000]
	movss xmm1, dword [ebp-0xcc]
	ucomiss xmm1, xmm0
	jbe CG_CompassDrawTickertape_110
	pxor xmm0, xmm0
CG_CompassDrawTickertape_160:
	mov dword [esp+0x8], 0x0
	mov eax, [ebx+0x18]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	movss [ebp-0xe8], xmm0
	call CG_ObjectiveIcon
	movss xmm0, dword [ebp-0xe8]
	mulss xmm0, [ebp-0x24]
	addss xmm0, [ebp-0x28]
	movss [ebp-0x90], xmm0
	mov [esp+0x30], eax
	lea edx, [ebp-0x38]
	mov [esp+0x2c], edx
	mov dword [esp+0x28], 0x3f800000
	mov dword [esp+0x24], 0x3f800000
	xor eax, eax
	mov [esp+0x20], eax
	mov [esp+0x1c], eax
	mov edx, [ebp+0x14]
	mov eax, [edx+0x14]
	mov [esp+0x18], eax
	mov eax, [edx+0x10]
	mov [esp+0x14], eax
	movss xmm0, dword [ebp-0x94]
	movss [esp+0x10], xmm0
	movss xmm1, dword [ebp-0x98]
	movss [esp+0xc], xmm1
	movss xmm0, dword [ebp-0x9c]
	movss [esp+0x8], xmm0
	movss xmm0, dword [ebp-0x90]
	addss xmm0, [ebp-0xb4]
	movss [esp+0x4], xmm0
	mov eax, [ebp-0xbc]
	mov [esp], eax
	call CL_DrawStretchPic
	movss xmm0, dword [ebp-0xa4]
	movss [ebp-0x2c], xmm0
	mov dword [ebp-0x48], 0x3f666666
	mov dword [ebp-0x44], 0x3f800000
	mov dword [ebp-0x40], 0x3dcccccd
	movss [ebp-0x3c], xmm0
	mov eax, [compassObjectiveDetailDist]
	movss xmm0, dword [eax+0xc]
	ucomiss xmm0, [ebp-0x8c]
	jbe CG_CompassDrawTickertape_120
	movss xmm1, dword [ebp-0x8c]
	mulss xmm1, [_float_10_00000000]
	cvttss2si eax, xmm1
	cvtsi2ss xmm0, eax
	mulss xmm0, [_float_0_10000000]
	cvtss2sd xmm0, xmm0
	movsd [esp+0xc], xmm0
	mov dword [esp+0x8], _cstring_1fm
	mov dword [esp+0x4], 0x40
	lea esi, [ebp-0x88]
	mov [esp], esi
	call Com_sprintf
CG_CompassDrawTickertape_140:
	movss xmm0, dword [ebp+0x24]
	movss [esp+0xc], xmm0
	mov eax, [ebp+0x20]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x14
	mov [esp], esi
	call UI_TextWidth
	mov ebx, eax
	movss xmm0, dword [ebp+0x24]
	movss [esp+0x4], xmm0
	mov eax, [ebp+0x20]
	mov [esp], eax
	call UI_TextHeight
	mov edx, [ebp+0x28]
	mov [esp+0x28], edx
	lea eax, [ebp-0x48]
	mov [esp+0x24], eax
	movss xmm0, dword [ebp+0x24]
	movss [esp+0x20], xmm0
	mov edx, [ebp+0x14]
	mov eax, [edx+0x14]
	mov [esp+0x1c], eax
	mov eax, [edx+0x10]
	mov [esp+0x18], eax
	movss xmm0, dword [ebp-0x94]
	addss xmm0, [ebp-0xa0]
	addss xmm0, [_float_2_00000000]
	movss [esp+0x14], xmm0
	cvtsi2ss xmm0, ebx
	mulss xmm0, [_float__0_50000000]
	addss xmm0, [ebp-0x90]
	movss [esp+0x10], xmm0
	mov eax, [ebp+0x20]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x7fffffff
	mov [esp+0x4], esi
	mov edx, [ebp-0xbc]
	mov [esp], edx
	call UI_DrawTextNoSnap
	add dword [ebp-0xb0], 0x1
	add edi, 0x1c
	cmp dword [ebp-0xb0], 0x10
	jnz CG_CompassDrawTickertape_40
CG_CompassDrawTickertape_20:
	add esp, 0x14c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_CompassDrawTickertape_30:
	mov eax, [compassObjectiveIconWidth]
	movss xmm0, dword [eax+0xc]
	movss [ebp-0x98], xmm0
	mov eax, [compassObjectiveIconHeight]
	movss xmm1, dword [eax+0xc]
	movss [ebp-0x94], xmm1
	jmp CG_CompassDrawTickertape_130
CG_CompassDrawTickertape_120:
	cvttss2si eax, [ebp-0x8c]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_im
	mov dword [esp+0x4], 0x40
	lea esi, [ebp-0x88]
	mov [esp], esi
	call Com_sprintf
	jmp CG_CompassDrawTickertape_140
CG_CompassDrawTickertape_110:
	ucomiss xmm0, [ebp-0xac]
	jbe CG_CompassDrawTickertape_150
	movss xmm0, dword [_float_1_00000000]
	jmp CG_CompassDrawTickertape_160
CG_CompassDrawTickertape_80:
	lea edx, [eax+0x4]
	jmp CG_CompassDrawTickertape_90
CG_CompassDrawTickertape_70:
	add eax, 0x1c
	jmp CG_CompassDrawTickertape_170
CG_CompassDrawTickertape_150:
	addss xmm0, [ebp-0xac]
	divss xmm0, dword [ebp-0xb8]
	jmp CG_CompassDrawTickertape_160
CG_CompassDrawTickertape_10:
	mov eax, hud_fade_compass
	mov ebx, [eax]
	movss xmm0, dword [_float_1000_00000000]
	mulss xmm0, [ebx+0xc]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0xc8]
	cvttss2si eax, [ebp-0xc8]
	mov [esp+0xc], eax
	mov [esp+0x8], edi
	mov [esp+0x4], ebx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_FadeHudMenu
	fstp dword [ebp-0x10c]
	movss xmm0, dword [ebp-0x10c]
	ucomiss xmm0, [_float_0_00000000]
	jp CG_CompassDrawTickertape_180
	jnz CG_CompassDrawTickertape_180
	add esp, 0x14c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;CG_CompassDrawPlayerEastCoord(int, CompassType, rectDef_s const*, rectDef_s const*, Font_s*, Material*, float*, int)
CG_CompassDrawPlayerEastCoord:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x8c
	mov edi, [ebp+0x20]
	add edi, 0xc
	mov eax, cgArray
	mov esi, [eax+0x504b4]
	mov eax, [ebp+0xc]
	test eax, eax
	jz CG_CompassDrawPlayerEastCoord_10
	movss xmm0, dword [_float_1_00000000]
CG_CompassDrawPlayerEastCoord_30:
	movss [edi], xmm0
	ucomiss xmm0, [_float_0_00000000]
	jp CG_CompassDrawPlayerEastCoord_20
	jnz CG_CompassDrawPlayerEastCoord_20
	add esp, 0x8c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_CompassDrawPlayerEastCoord_20:
	lea eax, [ebp-0x28]
	mov [esp+0x1c], eax
	lea eax, [ebp-0x24]
	mov [esp+0x18], eax
	lea eax, [ebp-0x20]
	mov [esp+0x14], eax
	lea eax, [ebp-0x1c]
	mov [esp+0x10], eax
	mov edx, [ebp+0x14]
	mov [esp+0xc], edx
	mov ecx, [ebp+0x10]
	mov [esp+0x8], ecx
	mov ebx, cgArray
	mov [esp+0x4], ebx
	mov eax, [ebp+0xc]
	mov [esp], eax
	call CG_CompassCalcDimensions
	mov eax, [compassCoords]
	movss xmm0, dword [ebx+0x5049c]
	movss [ebp-0x2c], xmm0
	mulss xmm0, [ebx+0x492e0]
	movss [ebp-0x2c], xmm0
	movss xmm0, dword [ebx+0x50498]
	mulss xmm0, [ebx+0x492e4]
	movss xmm1, dword [ebp-0x2c]
	subss xmm1, xmm0
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, dword [eax+0x14]
	mulss xmm0, xmm1
	movss [ebp-0x2c], xmm0
	addss xmm0, [eax+0xc]
	movss [ebp-0x2c], xmm0
	movss xmm0, dword [ebp-0x28]
	movss [ebp-0x38], xmm0
	mov eax, [ebp+0x18]
	mov [esp], eax
	call R_TextHeight
	cvtsi2ss xmm0, eax
	movss xmm1, dword [ebp-0x38]
	divss xmm1, xmm0
	movss [ebp-0x38], xmm1
	movss xmm0, dword [_float_0_85000002]
	mulss xmm1, xmm0
	movss [ebp-0x34], xmm1
	cvttss2si eax, [ebp-0x2c]
	mov [ebp-0x30], eax
	mov eax, 0x51eb851f
	imul dword [ebp-0x30]
	mov edi, edx
	sar edi, 0x5
	mov eax, [ebp-0x30]
	sar eax, 0x1f
	sub edi, eax
	mov [esp+0x4], edi
	mov dword [esp], _cstring_i_
	movss [ebp-0x58], xmm0
	call va
	mov esi, eax
	mov ecx, [ebp+0x18]
	mov [esp+0x8], ecx
	mov dword [esp+0x4], 0xa
	mov [esp], eax
	call R_TextWidth
	mov [ebp-0x40], eax
	mov eax, [ebp+0x8]
	shl eax, 0x6
	mov edx, [ebp+0x8]
	lea ebx, [eax+edx*4]
	add ebx, scrPlaceView
	mov ecx, [ebp+0x24]
	mov [esp+0x2c], ecx
	mov eax, [ebp+0x20]
	mov [esp+0x28], eax
	movss xmm1, dword [ebp-0x34]
	movss [esp+0x24], xmm1
	movss [esp+0x20], xmm1
	mov edx, [ebp+0x14]
	mov eax, [edx+0x14]
	mov [esp+0x1c], eax
	mov eax, [edx+0x10]
	mov [esp+0x18], eax
	movss xmm0, dword [ebp-0x58]
	mulss xmm0, [ebp-0x28]
	addss xmm0, [ebp-0x20]
	movss [esp+0x14], xmm0
	mov eax, [ebp-0x1c]
	mov [esp+0x10], eax
	mov ecx, [ebp+0x18]
	mov [esp+0xc], ecx
	mov dword [esp+0x8], 0x28
	mov [esp+0x4], esi
	mov [esp], ebx
	call CL_DrawText
	cvtsi2ss xmm0, dword [ebp-0x40]
	mulss xmm0, [ebp-0x34]
	addss xmm0, [ebp-0x1c]
	movss [ebp-0x1c], xmm0
	lea eax, [edi+edi*4]
	lea eax, [eax+eax*4]
	shl eax, 0x2
	mov edx, [ebp-0x30]
	sub edx, eax
	mov [esp+0x4], edx
	mov dword [esp], _cstring_i_
	call va
	mov esi, eax
	mov ecx, [ebp+0x18]
	mov [esp+0x8], ecx
	mov dword [esp+0x4], 0xa
	mov [esp], eax
	call R_TextWidth
	mov [ebp-0x3c], eax
	mov eax, [ebp+0x24]
	mov [esp+0x2c], eax
	mov edx, [ebp+0x20]
	mov [esp+0x28], edx
	movss xmm0, dword [ebp-0x38]
	movss [esp+0x24], xmm0
	movss [esp+0x20], xmm0
	mov edx, [ebp+0x14]
	mov eax, [edx+0x14]
	mov [esp+0x1c], eax
	mov eax, [edx+0x10]
	mov [esp+0x18], eax
	movss xmm0, dword [ebp-0x20]
	addss xmm0, [ebp-0x28]
	movss [esp+0x14], xmm0
	mov eax, [ebp-0x1c]
	mov [esp+0x10], eax
	mov ecx, [ebp+0x18]
	mov [esp+0xc], ecx
	mov dword [esp+0x8], 0x28
	mov [esp+0x4], esi
	mov [esp], ebx
	call CL_DrawText
	cvtsi2ss xmm0, dword [ebp-0x3c]
	mulss xmm0, [ebp-0x38]
	movss [ebp-0x38], xmm0
	addss xmm0, [ebp-0x1c]
	movss [ebp-0x1c], xmm0
	cvtsi2ss xmm0, dword [ebp-0x30]
	movss xmm1, dword [ebp-0x2c]
	subss xmm1, xmm0
	cvtss2sd xmm0, xmm1
	movsd [esp+0x4], xmm0
	mov dword [esp], _cstring_4f
	call va
	mov edx, [ebp+0x24]
	mov [esp+0x2c], edx
	mov ecx, [ebp+0x20]
	mov [esp+0x28], ecx
	movss xmm0, dword [ebp-0x34]
	movss [esp+0x24], xmm0
	movss [esp+0x20], xmm0
	mov ecx, [ebp+0x14]
	mov edx, [ecx+0x14]
	mov [esp+0x1c], edx
	mov edx, [ecx+0x10]
	mov [esp+0x18], edx
	movss xmm0, dword [ebp-0x20]
	addss xmm0, [ebp-0x28]
	movss [esp+0x14], xmm0
	mov edx, [ebp-0x1c]
	mov [esp+0x10], edx
	mov edx, [ebp+0x18]
	mov [esp+0xc], edx
	mov dword [esp+0x8], 0x28
	add eax, 0x2
	mov [esp+0x4], eax
	mov [esp], ebx
	call CL_DrawText
	add esp, 0x8c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_CompassDrawPlayerEastCoord_10:
	mov eax, hud_fade_compass
	mov ebx, [eax]
	movss xmm0, dword [_float_1000_00000000]
	mulss xmm0, [ebx+0xc]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x44]
	cvttss2si eax, [ebp-0x44]
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	mov [esp+0x4], ebx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_FadeHudMenu
	fstp dword [ebp-0x5c]
	movss xmm0, dword [ebp-0x5c]
	jmp CG_CompassDrawPlayerEastCoord_30
	nop


;CG_CompassDrawPlayerNorthCoord(int, CompassType, rectDef_s const*, rectDef_s const*, Font_s*, Material*, float*, int)
CG_CompassDrawPlayerNorthCoord:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x9c
	mov edi, [ebp+0x20]
	add edi, 0xc
	mov eax, cgArray
	mov esi, [eax+0x504b4]
	mov ebx, [ebp+0xc]
	test ebx, ebx
	jz CG_CompassDrawPlayerNorthCoord_10
	movss xmm0, dword [_float_1_00000000]
CG_CompassDrawPlayerNorthCoord_30:
	movss [edi], xmm0
	ucomiss xmm0, [_float_0_00000000]
	jp CG_CompassDrawPlayerNorthCoord_20
	jnz CG_CompassDrawPlayerNorthCoord_20
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_CompassDrawPlayerNorthCoord_20:
	lea eax, [ebp-0x28]
	mov [esp+0x1c], eax
	lea eax, [ebp-0x24]
	mov [esp+0x18], eax
	lea eax, [ebp-0x20]
	mov [esp+0x14], eax
	lea eax, [ebp-0x1c]
	mov [esp+0x10], eax
	mov edx, [ebp+0x14]
	mov [esp+0xc], edx
	mov ecx, [ebp+0x10]
	mov [esp+0x8], ecx
	mov ebx, cgArray
	mov [esp+0x4], ebx
	mov eax, [ebp+0xc]
	mov [esp], eax
	call CG_CompassCalcDimensions
	mov eax, [compassCoords]
	movss xmm0, dword [ebx+0x50498]
	movss [ebp-0x2c], xmm0
	mulss xmm0, [ebx+0x492e0]
	movss [ebp-0x2c], xmm0
	movss xmm0, dword [ebx+0x5049c]
	mulss xmm0, [ebx+0x492e4]
	addss xmm0, [ebp-0x2c]
	movss [ebp-0x2c], xmm0
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, dword [eax+0x14]
	mulss xmm0, [ebp-0x2c]
	movss [ebp-0x2c], xmm0
	addss xmm0, [eax+0x10]
	movss [ebp-0x2c], xmm0
	movss xmm1, dword [ebp-0x24]
	movss [ebp-0x38], xmm1
	mov eax, [ebp+0x18]
	mov [esp], eax
	call R_TextHeight
	cvtsi2ss xmm0, eax
	movss xmm1, dword [ebp-0x38]
	divss xmm1, xmm0
	movss [ebp-0x38], xmm1
	movss xmm1, dword [_float_0_80000001]
	movss xmm0, dword [ebp-0x38]
	mulss xmm0, xmm1
	movss [ebp-0x34], xmm0
	cvttss2si eax, [ebp-0x2c]
	mov [ebp-0x30], eax
	mov eax, 0x51eb851f
	imul dword [ebp-0x30]
	mov edi, edx
	sar edi, 0x5
	mov eax, [ebp-0x30]
	sar eax, 0x1f
	sub edi, eax
	mov [esp+0x4], edi
	mov dword [esp], _cstring_i_
	movss [ebp-0x58], xmm1
	call va
	mov esi, eax
	mov ecx, [ebp+0x18]
	mov [esp+0x8], ecx
	mov dword [esp+0x4], 0xa
	mov [esp], eax
	call R_TextWidth
	mov [ebp-0x40], eax
	mov eax, [ebp+0x8]
	shl eax, 0x6
	mov edx, [ebp+0x8]
	lea ebx, [eax+edx*4]
	add ebx, scrPlaceView
	mov ecx, [ebp+0x24]
	mov [esp+0x30], ecx
	mov eax, [ebp+0x20]
	mov [esp+0x2c], eax
	movss xmm0, dword [ebp-0x34]
	movss [esp+0x28], xmm0
	movss [esp+0x24], xmm0
	mov edx, [ebp+0x14]
	mov eax, [edx+0x14]
	mov [esp+0x20], eax
	mov eax, [edx+0x10]
	mov [esp+0x1c], eax
	mov dword [esp+0x18], 0xc2b40000
	movss xmm0, dword [ebp-0x20]
	addss xmm0, [ebp-0x28]
	movss [esp+0x14], xmm0
	movss xmm1, dword [ebp-0x58]
	mulss xmm1, [ebp-0x24]
	addss xmm1, [ebp-0x1c]
	movss [esp+0x10], xmm1
	mov ecx, [ebp+0x18]
	mov [esp+0xc], ecx
	mov dword [esp+0x8], 0x28
	mov [esp+0x4], esi
	mov [esp], ebx
	call CL_DrawTextRotate
	cvtsi2ss xmm1, dword [ebp-0x40]
	mulss xmm1, [ebp-0x34]
	movss xmm0, dword [ebp-0x20]
	subss xmm0, xmm1
	movss [ebp-0x20], xmm0
	lea eax, [edi+edi*4]
	lea eax, [eax+eax*4]
	shl eax, 0x2
	mov edx, [ebp-0x30]
	sub edx, eax
	mov [esp+0x4], edx
	mov dword [esp], _cstring_i_
	call va
	mov esi, eax
	mov ecx, [ebp+0x18]
	mov [esp+0x8], ecx
	mov dword [esp+0x4], 0xa
	mov [esp], eax
	call R_TextWidth
	mov [ebp-0x3c], eax
	mov eax, [ebp+0x24]
	mov [esp+0x30], eax
	mov edx, [ebp+0x20]
	mov [esp+0x2c], edx
	movss xmm0, dword [ebp-0x38]
	movss [esp+0x28], xmm0
	movss [esp+0x24], xmm0
	mov edx, [ebp+0x14]
	mov eax, [edx+0x14]
	mov [esp+0x20], eax
	mov eax, [edx+0x10]
	mov [esp+0x1c], eax
	mov dword [esp+0x18], 0xc2b40000
	movss xmm0, dword [ebp-0x20]
	addss xmm0, [ebp-0x28]
	movss [esp+0x14], xmm0
	movss xmm0, dword [ebp-0x1c]
	addss xmm0, [ebp-0x24]
	movss [esp+0x10], xmm0
	mov ecx, [ebp+0x18]
	mov [esp+0xc], ecx
	mov dword [esp+0x8], 0x28
	mov [esp+0x4], esi
	mov [esp], ebx
	call CL_DrawTextRotate
	cvtsi2ss xmm0, dword [ebp-0x3c]
	mulss xmm0, [ebp-0x38]
	movss [ebp-0x38], xmm0
	movss xmm0, dword [ebp-0x20]
	subss xmm0, [ebp-0x38]
	movss [ebp-0x20], xmm0
	cvtsi2ss xmm0, dword [ebp-0x30]
	movss xmm1, dword [ebp-0x2c]
	subss xmm1, xmm0
	cvtss2sd xmm0, xmm1
	movsd [esp+0x4], xmm0
	mov dword [esp], _cstring_4f
	call va
	mov edx, [ebp+0x24]
	mov [esp+0x30], edx
	mov ecx, [ebp+0x20]
	mov [esp+0x2c], ecx
	movss xmm0, dword [ebp-0x34]
	movss [esp+0x28], xmm0
	movss [esp+0x24], xmm0
	mov ecx, [ebp+0x14]
	mov edx, [ecx+0x14]
	mov [esp+0x20], edx
	mov edx, [ecx+0x10]
	mov [esp+0x1c], edx
	mov dword [esp+0x18], 0xc2b40000
	movss xmm0, dword [ebp-0x20]
	addss xmm0, [ebp-0x28]
	movss [esp+0x14], xmm0
	movss xmm0, dword [ebp-0x1c]
	addss xmm0, [ebp-0x24]
	movss [esp+0x10], xmm0
	mov edx, [ebp+0x18]
	mov [esp+0xc], edx
	mov dword [esp+0x8], 0x28
	add eax, 0x2
	mov [esp+0x4], eax
	mov [esp], ebx
	call CL_DrawTextRotate
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_CompassDrawPlayerNorthCoord_10:
	mov eax, hud_fade_compass
	mov ebx, [eax]
	movss xmm0, dword [_float_1000_00000000]
	mulss xmm0, [ebx+0xc]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x44]
	cvttss2si eax, [ebp-0x44]
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	mov [esp+0x4], ebx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_FadeHudMenu
	fstp dword [ebp-0x5c]
	movss xmm0, dword [ebp-0x5c]
	jmp CG_CompassDrawPlayerNorthCoord_30


;CG_CompassDrawPlayerPointers_MP(int, CompassType, rectDef_s const*, rectDef_s const*, Material*, float const*)
CG_CompassDrawPlayerPointers_MP:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xbc
	mov esi, cgArray
	mov edi, [esi+0x504b4]
	mov eax, [ebp+0xc]
	test eax, eax
	jz CG_CompassDrawPlayerPointers_MP_10
	movss xmm0, dword [_float_1_00000000]
	movss [ebp-0x70], xmm0
CG_CompassDrawPlayerPointers_MP_130:
	lea eax, [ebp-0x58]
	mov [esp+0x1c], eax
	lea eax, [ebp-0x5c]
	mov [esp+0x18], eax
	lea eax, [ebp-0x60]
	mov [esp+0x14], eax
	lea eax, [ebp-0x64]
	mov [esp+0x10], eax
	mov edx, [ebp+0x14]
	mov [esp+0xc], edx
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov edx, [ebp+0xc]
	mov [esp], edx
	call CG_CompassCalcDimensions
	movss xmm0, dword [_float_0_50000000]
	movss xmm1, dword [ebp-0x5c]
	mulss xmm1, xmm0
	addss xmm1, [ebp-0x64]
	movss [ebp-0x80], xmm1
	mulss xmm0, [ebp-0x58]
	addss xmm0, [ebp-0x60]
	movss [ebp-0x7c], xmm0
	mov ebx, [esi+0x24]
	add ebx, 0xc
	mov edx, [ebx+0xdc]
	lea eax, [edx+edx*8]
	mov ecx, eax
	shl ecx, 0x4
	add eax, ecx
	lea eax, [edx+eax*2]
	mov eax, [esi+eax*4+0xe9f34]
	test eax, eax
	jz CG_CompassDrawPlayerPointers_MP_20
	mov eax, [compassRotation]
	cmp byte [eax+0xc], 0x0
	jnz CG_CompassDrawPlayerPointers_MP_30
	mov eax, [esi+0x50498]
	mov [ebp-0x30], eax
	mov eax, [esi+0x5049c]
	mov [ebp-0x2c], eax
CG_CompassDrawPlayerPointers_MP_250:
	xor esi, esi
	mov eax, [ebp+0x8]
	shl eax, 0x6
	mov edx, [ebp+0x8]
	lea eax, [eax+edx*4]
	mov edx, scrPlaceView
	add eax, edx
	mov [ebp-0x90], eax
	add ebx, 0x650
	jmp CG_CompassDrawPlayerPointers_MP_40
CG_CompassDrawPlayerPointers_MP_60:
	sub eax, 0x1
	jz CG_CompassDrawPlayerPointers_MP_50
	add esi, 0x1
	add ebx, 0x1c
	cmp esi, 0x10
	jz CG_CompassDrawPlayerPointers_MP_20
CG_CompassDrawPlayerPointers_MP_40:
	mov eax, [ebx+0xc]
	cmp eax, 0x4
	jnz CG_CompassDrawPlayerPointers_MP_60
CG_CompassDrawPlayerPointers_MP_50:
	mov eax, [ebx+0x1c]
	cmp eax, 0x3ff
	jz CG_CompassDrawPlayerPointers_MP_70
	lea edx, [eax*4]
	shl eax, 0x5
	sub eax, edx
	mov edx, eax
	shl edx, 0x4
	add eax, edx
	add eax, cg_entitiesArray
	lea edx, [eax+0x1c]
	mov eax, [eax+0x1c]
	mov [ebp-0x3c], eax
	mov eax, [edx+0x4]
	mov [ebp-0x38], eax
	mov eax, [edx+0x8]
	mov [ebp-0x34], eax
CG_CompassDrawPlayerPointers_MP_170:
	movss xmm0, dword [ebp-0x3c]
	mov eax, cgArray
	subss xmm0, [eax+0x492e0]
	movss xmm1, dword [ebp-0x38]
	subss xmm1, [eax+0x492e4]
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	sqrtss xmm2, xmm0
	mov edx, [ebp+0x1c]
	mov eax, [edx]
	mov [ebp-0x4c], eax
	mov eax, [edx+0x4]
	mov [ebp-0x48], eax
	mov eax, [edx+0x8]
	mov [ebp-0x44], eax
	mov eax, [edx+0xc]
	mov [ebp-0x40], eax
	mov eax, [compassMaxRange]
	movss xmm0, dword [eax+0xc]
	ucomiss xmm0, xmm2
	jb CG_CompassDrawPlayerPointers_MP_80
	mov dword [ebp-0x40], 0x3f800000
CG_CompassDrawPlayerPointers_MP_160:
	mov dword [ebp-0x28], 0x0
	mov dword [ebp-0x24], 0x0
	lea eax, [ebp-0x28]
	mov [esp+0x1c], eax
	lea eax, [ebp-0x20]
	mov [esp+0x18], eax
	lea eax, [ebp-0x3c]
	mov [esp+0x14], eax
	mov eax, cgArray
	add eax, 0x492e0
	mov [esp+0x10], eax
	lea eax, [ebp-0x30]
	mov [esp+0xc], eax
	lea eax, [ebp-0x64]
	mov [esp+0x8], eax
	mov edx, cgArray
	mov [esp+0x4], edx
	mov eax, [ebp+0xc]
	mov [esp], eax
	call CG_WorldPosToCompass
	movss xmm0, dword [ebp-0x80]
	addss xmm0, [ebp-0x20]
	movss [ebp-0x20], xmm0
	movss xmm0, dword [ebp-0x7c]
	addss xmm0, [ebp-0x1c]
	movss [ebp-0x1c], xmm0
	movss xmm0, dword [ebp-0x80]
	addss xmm0, [ebp-0x28]
	movss [ebp-0x28], xmm0
	movss xmm0, dword [ebp-0x7c]
	addss xmm0, [ebp-0x24]
	movss [ebp-0x24], xmm0
	mov eax, [ebp+0xc]
	test eax, eax
	jnz CG_CompassDrawPlayerPointers_MP_90
	mov eax, [compassSize]
	movss xmm0, dword [eax+0xc]
	mov eax, [compassObjectiveWidth]
	movaps xmm1, xmm0
	mulss xmm1, [eax+0xc]
	movss [ebp-0x78], xmm1
	mov eax, [compassObjectiveHeight]
	mulss xmm0, [eax+0xc]
	movss [ebp-0x74], xmm0
CG_CompassDrawPlayerPointers_MP_140:
	mov dword [esp+0x8], 0x0
	mov eax, [ebx+0x24]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_ObjectiveIcon
	mov edi, eax
	movss xmm1, dword [ebp-0x40]
	movss xmm0, dword [ebp-0x70]
	cmpss xmm0, xmm1, 0x5
	andps xmm1, xmm0
	movss xmm2, dword [ebp-0x70]
	andnps xmm0, xmm2
	orps xmm0, xmm1
	movss [ebp-0x40], xmm0
	movss xmm0, dword [_float__0_50000000]
	movss xmm1, dword [ebp-0x78]
	mulss xmm1, xmm0
	movss [ebp-0x88], xmm1
	addss xmm1, [ebp-0x20]
	movss xmm2, dword [ebp-0x74]
	mulss xmm2, xmm0
	movss [ebp-0x84], xmm2
	movaps xmm3, xmm2
	addss xmm3, [ebp-0x1c]
	movss xmm5, dword [ebp-0x64]
	movaps xmm0, xmm5
	subss xmm0, xmm1
	divss xmm0, dword [ebp-0x78]
	pxor xmm6, xmm6
	maxss xmm0, xmm6
	movss xmm4, dword [ebp-0x60]
	movaps xmm2, xmm4
	subss xmm2, xmm3
	divss xmm2, dword [ebp-0x74]
	maxss xmm2, xmm0
	movss xmm0, dword [ebp-0x78]
	addss xmm0, xmm1
	movaps xmm1, xmm5
	addss xmm1, [ebp-0x5c]
	subss xmm0, xmm1
	divss xmm0, dword [ebp-0x78]
	maxss xmm0, xmm2
	movss xmm2, dword [ebp-0x74]
	addss xmm2, xmm3
	movaps xmm1, xmm4
	addss xmm1, [ebp-0x58]
	subss xmm2, xmm1
	divss xmm2, dword [ebp-0x74]
	maxss xmm2, xmm0
	movss xmm1, dword [_float_1_00000000]
	ucomiss xmm2, xmm1
	jbe CG_CompassDrawPlayerPointers_MP_100
	movaps xmm0, xmm6
CG_CompassDrawPlayerPointers_MP_230:
	ucomiss xmm0, xmm6
	jbe CG_CompassDrawPlayerPointers_MP_110
	cmp dword [ebx+0xc], 0x4
	jz CG_CompassDrawPlayerPointers_MP_120
CG_CompassDrawPlayerPointers_MP_110:
	mov [esp+0x20], edi
	lea eax, [ebp-0x4c]
	mov [esp+0x1c], eax
	mov edx, [ebp+0x14]
	mov eax, [edx+0x14]
	mov [esp+0x18], eax
	mov eax, [edx+0x10]
	mov [esp+0x14], eax
	movss xmm0, dword [ebp-0x74]
	movss [esp+0x10], xmm0
	movss xmm1, dword [ebp-0x78]
	movss [esp+0xc], xmm1
	movss xmm2, dword [ebp-0x84]
	addss xmm2, [ebp-0x24]
	movss [esp+0x8], xmm2
	movss xmm0, dword [ebp-0x88]
	addss xmm0, [ebp-0x28]
	movss [esp+0x4], xmm0
	mov eax, [ebp-0x90]
	mov [esp], eax
	call UI_DrawHandlePic
	add esi, 0x1
	add ebx, 0x1c
	cmp esi, 0x10
	jnz CG_CompassDrawPlayerPointers_MP_40
CG_CompassDrawPlayerPointers_MP_20:
	add esp, 0xbc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_CompassDrawPlayerPointers_MP_10:
	mov eax, hud_fade_compass
	mov ebx, [eax]
	movss xmm0, dword [_float_1000_00000000]
	mulss xmm0, [ebx+0xc]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x8c]
	cvttss2si eax, [ebp-0x8c]
	mov [esp+0xc], eax
	mov [esp+0x8], edi
	mov [esp+0x4], ebx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_FadeHudMenu
	fstp dword [ebp-0x70]
	movss xmm0, dword [ebp-0x70]
	ucomiss xmm0, [_float_0_00000000]
	jp CG_CompassDrawPlayerPointers_MP_130
	jnz CG_CompassDrawPlayerPointers_MP_130
	add esp, 0xbc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_CompassDrawPlayerPointers_MP_90:
	mov eax, [compassObjectiveIconWidth]
	movss xmm2, dword [eax+0xc]
	movss [ebp-0x78], xmm2
	mov eax, [compassObjectiveIconHeight]
	movss xmm0, dword [eax+0xc]
	movss [ebp-0x74], xmm0
	jmp CG_CompassDrawPlayerPointers_MP_140
CG_CompassDrawPlayerPointers_MP_80:
	mov eax, [compassObjectiveMaxRange]
	movss xmm1, dword [eax+0xc]
	ucomiss xmm2, xmm1
	jb CG_CompassDrawPlayerPointers_MP_150
	mov eax, [compassObjectiveMinAlpha]
	mov eax, [eax+0xc]
	mov [ebp-0x40], eax
	jmp CG_CompassDrawPlayerPointers_MP_160
CG_CompassDrawPlayerPointers_MP_70:
	mov eax, [ebx+0x10]
	mov [ebp-0x3c], eax
	mov eax, [ebx+0x14]
	mov [ebp-0x38], eax
	mov eax, [ebx+0x18]
	mov [ebp-0x34], eax
	jmp CG_CompassDrawPlayerPointers_MP_170
CG_CompassDrawPlayerPointers_MP_150:
	subss xmm1, xmm0
	pxor xmm6, xmm6
	ucomiss xmm1, xmm6
	jnz CG_CompassDrawPlayerPointers_MP_180
	jp CG_CompassDrawPlayerPointers_MP_180
	movaps xmm2, xmm6
CG_CompassDrawPlayerPointers_MP_240:
	mov eax, [compassObjectiveMinAlpha]
	movss xmm0, dword [_float_1_00000000]
	subss xmm0, [eax+0xc]
	mulss xmm0, xmm2
	movss xmm1, dword [_float_1_00000000]
	subss xmm1, xmm0
	movss [ebp-0x40], xmm1
	jmp CG_CompassDrawPlayerPointers_MP_160
CG_CompassDrawPlayerPointers_MP_120:
	movss xmm2, dword [ebp-0x40]
	movss [ebp-0x6c], xmm2
	mulss xmm0, xmm2
	movss [ebp-0x40], xmm0
	movss xmm0, dword [ebp-0x1c]
	ucomiss xmm0, xmm4
	jb CG_CompassDrawPlayerPointers_MP_190
	addss xmm4, [ebp-0x58]
	ucomiss xmm4, xmm0
	jae CG_CompassDrawPlayerPointers_MP_200
CG_CompassDrawPlayerPointers_MP_190:
	movss xmm0, dword [ebp-0x20]
	ucomiss xmm0, xmm5
	jb CG_CompassDrawPlayerPointers_MP_210
	addss xmm5, [ebp-0x5c]
	ucomiss xmm5, xmm0
	jae CG_CompassDrawPlayerPointers_MP_220
CG_CompassDrawPlayerPointers_MP_210:
	movss xmm0, dword [ebp-0x6c]
	movss [ebp-0x40], xmm0
	jmp CG_CompassDrawPlayerPointers_MP_110
CG_CompassDrawPlayerPointers_MP_100:
	movaps xmm0, xmm1
	subss xmm0, xmm2
	jmp CG_CompassDrawPlayerPointers_MP_230
CG_CompassDrawPlayerPointers_MP_180:
	subss xmm2, xmm0
	divss xmm2, xmm1
	jmp CG_CompassDrawPlayerPointers_MP_240
CG_CompassDrawPlayerPointers_MP_30:
	mov dword [esp+0x8], 0x0
	lea eax, [ebp-0x30]
	mov [esp+0x4], eax
	mov eax, [esi+0x4d364]
	mov [esp], eax
	call YawVectors2D
	jmp CG_CompassDrawPlayerPointers_MP_250
CG_CompassDrawPlayerPointers_MP_220:
	mov edx, [ebp+0x18]
	mov [esp+0x20], edx
	lea eax, [ebp-0x4c]
	mov [esp+0x1c], eax
	mov edx, [ebp+0x14]
	mov eax, [edx+0x14]
	mov [esp+0x18], eax
	mov eax, [edx+0x10]
	mov [esp+0x14], eax
	mov eax, [ebp-0x58]
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x40000000
	mov eax, [ebp-0x60]
	mov [esp+0x8], eax
	movss [esp+0x4], xmm0
	mov eax, [ebp-0x90]
	mov [esp], eax
	call CG_DrawVLine
	jmp CG_CompassDrawPlayerPointers_MP_210
CG_CompassDrawPlayerPointers_MP_200:
	mov eax, [ebp+0x18]
	mov [esp+0x20], eax
	lea edx, [ebp-0x4c]
	mov [esp+0x1c], edx
	mov edx, [ebp+0x14]
	mov eax, [edx+0x14]
	mov [esp+0x18], eax
	mov eax, [edx+0x10]
	mov [esp+0x14], eax
	mov dword [esp+0x10], 0x40000000
	mov eax, [ebp-0x5c]
	mov [esp+0xc], eax
	subss xmm0, xmm1
	movss [esp+0x8], xmm0
	movss [esp+0x4], xmm5
	mov eax, [ebp-0x90]
	mov [esp], eax
	call UI_DrawHandlePic
	movss xmm5, dword [ebp-0x64]
	jmp CG_CompassDrawPlayerPointers_MP_190
	add [eax], al


;CG_CompassDrawPlayerECoordScroll(int, CompassType, rectDef_s const*, rectDef_s const*, Font_s*, Material*, float*, int)
CG_CompassDrawPlayerECoordScroll:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x7c
	mov edi, [ebp+0x20]
	add edi, 0xc
	mov eax, cgArray
	mov esi, [eax+0x504b4]
	mov eax, [ebp+0xc]
	test eax, eax
	jz CG_CompassDrawPlayerECoordScroll_10
	movss xmm0, dword [_float_1_00000000]
CG_CompassDrawPlayerECoordScroll_70:
	movss [edi], xmm0
	ucomiss xmm0, [_float_0_00000000]
	jp CG_CompassDrawPlayerECoordScroll_20
	jnz CG_CompassDrawPlayerECoordScroll_20
CG_CompassDrawPlayerECoordScroll_50:
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_CompassDrawPlayerECoordScroll_20:
	lea eax, [ebp-0x28]
	mov [esp+0x1c], eax
	lea eax, [ebp-0x24]
	mov [esp+0x18], eax
	lea eax, [ebp-0x20]
	mov [esp+0x14], eax
	lea eax, [ebp-0x1c]
	mov [esp+0x10], eax
	mov edx, [ebp+0x14]
	mov [esp+0xc], edx
	mov ecx, [ebp+0x10]
	mov [esp+0x8], ecx
	mov ebx, cgArray
	mov [esp+0x4], ebx
	mov eax, [ebp+0xc]
	mov [esp], eax
	call CG_CompassCalcDimensions
	mov eax, [compassCoords]
	movss xmm2, dword [eax+0x14]
	movss xmm1, dword [ebx+0x5049c]
	mulss xmm1, [ebx+0x492e0]
	movss xmm0, dword [ebx+0x50498]
	mulss xmm0, [ebx+0x492e4]
	subss xmm1, xmm0
	divss xmm1, xmm2
	addss xmm1, [eax+0xc]
	mov eax, [compassMaxRange]
	movss xmm3, dword [eax+0xc]
	movaps xmm0, xmm3
	mulss xmm0, [_float__0_50000000]
	divss xmm0, xmm2
	addss xmm1, xmm0
	mulss xmm2, [ebp-0x24]
	divss xmm2, xmm3
	movss [ebp-0x38], xmm2
	cvttss2si ebx, xmm1
	cvtsi2ss xmm0, ebx
	subss xmm1, xmm0
	mulss xmm1, xmm2
	movss xmm0, dword [ebp-0x1c]
	subss xmm0, xmm1
	movss [ebp-0x34], xmm0
	movss xmm1, dword [ebp-0x28]
	movss [ebp-0x2c], xmm1
	mov eax, [ebp+0x18]
	mov [esp], eax
	call R_TextHeight
	cvtsi2ss xmm0, eax
	movss xmm1, dword [ebp-0x2c]
	divss xmm1, xmm0
	movss [ebp-0x2c], xmm1
	mov eax, [ebp+0x18]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x2
	mov dword [esp], _cstring_99
	call R_TextWidth
	cvtsi2ss xmm0, eax
	movss xmm1, dword [ebp-0x2c]
	mulss xmm1, xmm0
	movss [ebp-0x30], xmm1
	movss xmm1, dword [ebp-0x1c]
	mov eax, [compassECoordCutoff]
	movss xmm0, dword [eax+0xc]
	mov eax, [compassSize]
	mulss xmm0, [eax+0xc]
	addss xmm0, xmm1
	ucomiss xmm0, [ebp-0x34]
	jbe CG_CompassDrawPlayerECoordScroll_30
	movss xmm2, dword [ebp-0x34]
CG_CompassDrawPlayerECoordScroll_40:
	addss xmm2, [ebp-0x38]
	movss [ebp-0x34], xmm2
	add ebx, 0x1
	ucomiss xmm0, xmm2
	ja CG_CompassDrawPlayerECoordScroll_40
CG_CompassDrawPlayerECoordScroll_30:
	addss xmm1, [ebp-0x24]
	subss xmm1, [ebp-0x30]
	ucomiss xmm1, [ebp-0x34]
	jbe CG_CompassDrawPlayerECoordScroll_50
	mov eax, [ebp+0x8]
	shl eax, 0x6
	mov edx, [ebp+0x8]
	lea esi, [eax+edx*4]
	add esi, scrPlaceView
CG_CompassDrawPlayerECoordScroll_60:
	mov edx, 0x51eb851f
	mov eax, ebx
	imul edx
	sar edx, 0x5
	mov eax, ebx
	sar eax, 0x1f
	sub edx, eax
	lea edx, [edx+edx*4]
	lea edx, [edx+edx*4]
	shl edx, 0x2
	mov eax, ebx
	sub eax, edx
	mov [esp+0x4], eax
	mov dword [esp], _cstring_2i
	call va
	mov edx, [ebp+0x24]
	mov [esp+0x2c], edx
	mov ecx, [ebp+0x20]
	mov [esp+0x28], ecx
	movss xmm0, dword [ebp-0x2c]
	movss [esp+0x24], xmm0
	movss [esp+0x20], xmm0
	mov ecx, [ebp+0x14]
	mov edx, [ecx+0x14]
	mov [esp+0x1c], edx
	mov edx, [ecx+0x10]
	mov [esp+0x18], edx
	movss xmm0, dword [ebp-0x20]
	addss xmm0, [ebp-0x28]
	movss [esp+0x14], xmm0
	movss xmm0, dword [ebp-0x34]
	movss [esp+0x10], xmm0
	mov edx, [ebp+0x18]
	mov [esp+0xc], edx
	mov dword [esp+0x8], 0x28
	mov [esp+0x4], eax
	mov [esp], esi
	call CL_DrawText
	movss xmm0, dword [ebp-0x34]
	addss xmm0, [ebp-0x38]
	movss [ebp-0x34], xmm0
	add ebx, 0x1
	movss xmm0, dword [ebp-0x24]
	addss xmm0, [ebp-0x1c]
	subss xmm0, [ebp-0x30]
	ucomiss xmm0, [ebp-0x34]
	ja CG_CompassDrawPlayerECoordScroll_60
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_CompassDrawPlayerECoordScroll_10:
	mov eax, hud_fade_compass
	mov ebx, [eax]
	movss xmm0, dword [_float_1000_00000000]
	mulss xmm0, [ebx+0xc]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x3c]
	cvttss2si eax, [ebp-0x3c]
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	mov [esp+0x4], ebx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_FadeHudMenu
	fstp dword [ebp-0x4c]
	movss xmm0, dword [ebp-0x4c]
	jmp CG_CompassDrawPlayerECoordScroll_70


;CG_CompassDrawPlayerNCoordScroll(int, CompassType, rectDef_s const*, rectDef_s const*, Font_s*, Material*, float*, int)
CG_CompassDrawPlayerNCoordScroll:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x7c
	mov edi, [ebp+0x20]
	add edi, 0xc
	mov eax, cgArray
	mov esi, [eax+0x504b4]
	mov eax, [ebp+0xc]
	test eax, eax
	jz CG_CompassDrawPlayerNCoordScroll_10
	movss xmm0, dword [_float_1_00000000]
CG_CompassDrawPlayerNCoordScroll_70:
	movss [edi], xmm0
	ucomiss xmm0, [_float_0_00000000]
	jp CG_CompassDrawPlayerNCoordScroll_20
	jnz CG_CompassDrawPlayerNCoordScroll_20
CG_CompassDrawPlayerNCoordScroll_50:
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_CompassDrawPlayerNCoordScroll_20:
	lea eax, [ebp-0x28]
	mov [esp+0x1c], eax
	lea eax, [ebp-0x24]
	mov [esp+0x18], eax
	lea eax, [ebp-0x20]
	mov [esp+0x14], eax
	lea eax, [ebp-0x1c]
	mov [esp+0x10], eax
	mov edx, [ebp+0x14]
	mov [esp+0xc], edx
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov ebx, cgArray
	mov [esp+0x4], ebx
	mov edx, [ebp+0xc]
	mov [esp], edx
	call CG_CompassCalcDimensions
	mov eax, [compassCoords]
	movss xmm2, dword [eax+0x14]
	movss xmm1, dword [ebx+0x50498]
	mulss xmm1, [ebx+0x492e0]
	movss xmm0, dword [ebx+0x5049c]
	mulss xmm0, [ebx+0x492e4]
	addss xmm1, xmm0
	divss xmm1, xmm2
	addss xmm1, [eax+0x10]
	mov eax, [compassMaxRange]
	movss xmm3, dword [eax+0xc]
	movaps xmm0, xmm3
	mulss xmm0, [_float_0_50000000]
	divss xmm0, xmm2
	addss xmm1, xmm0
	mulss xmm2, [ebp-0x28]
	divss xmm2, xmm3
	movss [ebp-0x34], xmm2
	cvttss2si eax, xmm1
	cvtsi2ss xmm0, eax
	movaps xmm2, xmm1
	subss xmm2, xmm0
	movaps xmm0, xmm2
	movss xmm2, dword [_float_1_00000000]
	subss xmm2, xmm0
	movss xmm0, dword [ebp-0x34]
	mulss xmm0, xmm2
	movss xmm3, dword [ebp-0x20]
	subss xmm3, xmm0
	movss [ebp-0x30], xmm3
	addss xmm1, xmm2
	movss [ebp-0x2c], xmm1
	movss xmm0, dword [ebp-0x24]
	movss [ebp-0x38], xmm0
	mov eax, [ebp+0x18]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x2
	mov dword [esp], _cstring_99
	call R_TextWidth
	mov ebx, eax
	mov edx, [ebp+0x18]
	mov [esp], edx
	call R_TextHeight
	movss xmm3, dword [ebp-0x20]
	cvtsi2ss xmm0, ebx
	movss xmm1, dword [ebp-0x38]
	divss xmm1, xmm0
	cvtsi2ss xmm0, eax
	mulss xmm1, xmm0
	addss xmm1, xmm3
	ucomiss xmm1, [ebp-0x30]
	jbe CG_CompassDrawPlayerNCoordScroll_30
	movss xmm2, dword [_float_1_00000000]
CG_CompassDrawPlayerNCoordScroll_40:
	movss xmm0, dword [ebp-0x30]
	addss xmm0, [ebp-0x34]
	movss [ebp-0x30], xmm0
	movss xmm0, dword [ebp-0x2c]
	subss xmm0, xmm2
	movss [ebp-0x2c], xmm0
	ucomiss xmm1, [ebp-0x30]
	ja CG_CompassDrawPlayerNCoordScroll_40
CG_CompassDrawPlayerNCoordScroll_30:
	addss xmm3, [ebp-0x28]
	ucomiss xmm3, [ebp-0x30]
	jbe CG_CompassDrawPlayerNCoordScroll_50
	mov eax, [ebp+0x8]
	shl eax, 0x6
	mov edx, [ebp+0x8]
	lea esi, [eax+edx*4]
	add esi, scrPlaceView
CG_CompassDrawPlayerNCoordScroll_60:
	cvttss2si ecx, [ebp-0x2c]
	mov edx, 0x51eb851f
	mov eax, ecx
	imul edx
	sar edx, 0x5
	mov eax, ecx
	sar eax, 0x1f
	sub edx, eax
	lea edx, [edx+edx*4]
	lea edx, [edx+edx*4]
	shl edx, 0x2
	sub ecx, edx
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_2i
	call va
	mov ebx, eax
	mov edx, [ebp+0x18]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0xa
	mov [esp], eax
	call R_TextWidth
	cvtsi2ss xmm1, eax
	movss xmm0, dword [ebp-0x24]
	divss xmm0, xmm1
	mov eax, [ebp+0x24]
	mov [esp+0x2c], eax
	mov edx, [ebp+0x20]
	mov [esp+0x28], edx
	movss [esp+0x24], xmm0
	movss [esp+0x20], xmm0
	mov edx, [ebp+0x14]
	mov eax, [edx+0x14]
	mov [esp+0x1c], eax
	mov eax, [edx+0x10]
	mov [esp+0x18], eax
	movss xmm0, dword [ebp-0x30]
	movss [esp+0x14], xmm0
	mov eax, [ebp-0x1c]
	mov [esp+0x10], eax
	mov eax, [ebp+0x18]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x28
	mov [esp+0x4], ebx
	mov [esp], esi
	call CL_DrawText
	movss xmm0, dword [ebp-0x30]
	addss xmm0, [ebp-0x34]
	movss [ebp-0x30], xmm0
	movss xmm2, dword [ebp-0x2c]
	subss xmm2, [_float_1_00000000]
	movss [ebp-0x2c], xmm2
	movss xmm0, dword [ebp-0x28]
	addss xmm0, [ebp-0x20]
	ucomiss xmm0, [ebp-0x30]
	ja CG_CompassDrawPlayerNCoordScroll_60
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_CompassDrawPlayerNCoordScroll_10:
	mov eax, hud_fade_compass
	mov ebx, [eax]
	movss xmm0, dword [_float_1000_00000000]
	mulss xmm0, [ebx+0xc]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x3c]
	cvttss2si eax, [ebp-0x3c]
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	mov [esp+0x4], ebx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_FadeHudMenu
	fstp dword [ebp-0x4c]
	movss xmm0, dword [ebp-0x4c]
	jmp CG_CompassDrawPlayerNCoordScroll_70
	nop


;CG_CompassDrawPlayerMapLocationSelector(int, CompassType, rectDef_s const*, rectDef_s const*, Material*, float*)
CG_CompassDrawPlayerMapLocationSelector:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x7c
	mov edi, [ebp+0x8]
	mov esi, [ebp+0x14]
	mov ebx, cgArray
	mov edx, [ebx+0x466f0]
	test edx, edx
	jnz CG_CompassDrawPlayerMapLocationSelector_10
CG_CompassDrawPlayerMapLocationSelector_30:
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_CompassDrawPlayerMapLocationSelector_10:
	lea edx, [ebp-0x30]
	lea eax, [ebp-0x24]
	mov [esp+0x1c], eax
	lea eax, [ebp-0x28]
	mov [esp+0x18], eax
	lea eax, [ebp-0x2c]
	mov [esp+0x14], eax
	mov [esp+0x10], edx
	mov [esp+0xc], esi
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov eax, [ebp+0xc]
	mov [esp], eax
	call CG_CompassCalcDimensions
	mov eax, [ebx+0x466f0]
	and eax, 0x2
	add eax, 0x33b
	mov [esp+0x4], eax
	mov [esp], edi
	call CL_GetConfigString
	mov dword [esp+0x4], 0x7
	mov [esp], eax
	call Material_RegisterHandle
	mov edx, eax
	mov eax, [ebx+0x466f0]
	sar eax, 0x2
	cvtsi2ss xmm3, eax
	divss xmm3, dword [_float_63_00000000]
	ucomiss xmm3, [_float_0_00000000]
	jp CG_CompassDrawPlayerMapLocationSelector_20
	jbe CG_CompassDrawPlayerMapLocationSelector_30
CG_CompassDrawPlayerMapLocationSelector_20:
	movss xmm4, dword [ebp-0x24]
	mulss xmm3, xmm4
	movss xmm0, dword [ebp-0x30]
	movss [ebp-0x40], xmm0
	movss xmm5, dword [ebp-0x28]
	movaps xmm1, xmm5
	mulss xmm1, [ebx+0x5050c]
	addss xmm1, xmm0
	movss xmm0, dword [ebp-0x2c]
	movss [ebp-0x44], xmm0
	movaps xmm2, xmm4
	mulss xmm2, [ebx+0x50510]
	addss xmm2, xmm0
	movss xmm7, dword [ebp-0x40]
	subss xmm7, xmm1
	divss xmm7, xmm3
	movss xmm0, dword [_float_0_50000000]
	addss xmm7, xmm0
	movss xmm6, dword [ebp-0x44]
	subss xmm6, xmm2
	divss xmm6, xmm3
	addss xmm6, xmm0
	addss xmm5, [ebp-0x40]
	movss [ebp-0x3c], xmm5
	subss xmm5, xmm1
	divss xmm5, xmm3
	addss xmm5, xmm0
	addss xmm4, [ebp-0x44]
	movaps xmm1, xmm4
	subss xmm1, xmm2
	movaps xmm2, xmm1
	divss xmm2, xmm3
	addss xmm2, xmm0
	pxor xmm3, xmm3
	ucomiss xmm3, xmm7
	ja CG_CompassDrawPlayerMapLocationSelector_40
	movaps xmm0, xmm3
CG_CompassDrawPlayerMapLocationSelector_80:
	ucomiss xmm0, xmm6
	ja CG_CompassDrawPlayerMapLocationSelector_50
CG_CompassDrawPlayerMapLocationSelector_90:
	movss xmm1, dword [_float_1_00000000]
	ucomiss xmm5, xmm1
	jbe CG_CompassDrawPlayerMapLocationSelector_60
	movaps xmm0, xmm1
	subss xmm0, xmm7
	subss xmm5, xmm7
	divss xmm0, xmm5
	movss xmm3, dword [ebp-0x3c]
	subss xmm3, [ebp-0x40]
	mulss xmm0, xmm3
	movss xmm3, dword [ebp-0x40]
	addss xmm3, xmm0
	movss [ebp-0x3c], xmm3
	movaps xmm5, xmm1
CG_CompassDrawPlayerMapLocationSelector_60:
	ucomiss xmm2, xmm1
	jbe CG_CompassDrawPlayerMapLocationSelector_70
	movaps xmm0, xmm1
	subss xmm0, xmm6
	subss xmm2, xmm6
	divss xmm0, xmm2
	subss xmm4, [ebp-0x44]
	mulss xmm4, xmm0
	addss xmm4, [ebp-0x44]
	movaps xmm2, xmm1
CG_CompassDrawPlayerMapLocationSelector_70:
	mov [esp+0x30], edx
	mov eax, [ebp+0x1c]
	mov [esp+0x2c], eax
	movss [esp+0x28], xmm2
	movss [esp+0x24], xmm5
	movss [esp+0x20], xmm6
	movss [esp+0x1c], xmm7
	mov eax, [esi+0x14]
	mov [esp+0x18], eax
	mov eax, [esi+0x10]
	mov [esp+0x14], eax
	subss xmm4, [ebp-0x44]
	movss [esp+0x10], xmm4
	movss xmm0, dword [ebp-0x3c]
	subss xmm0, [ebp-0x40]
	movss [esp+0xc], xmm0
	movss xmm1, dword [ebp-0x44]
	movss [esp+0x8], xmm1
	movss xmm3, dword [ebp-0x40]
	movss [esp+0x4], xmm3
	mov eax, edi
	shl eax, 0x6
	lea eax, [eax+edi*4]
	add eax, scrPlaceView
	mov [esp], eax
	call CL_DrawStretchPic
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_CompassDrawPlayerMapLocationSelector_40:
	movaps xmm0, xmm3
	subss xmm0, xmm7
	movaps xmm1, xmm5
	subss xmm1, xmm7
	divss xmm0, xmm1
	movss xmm1, dword [ebp-0x3c]
	subss xmm1, [ebp-0x40]
	mulss xmm0, xmm1
	addss xmm0, [ebp-0x40]
	movss [ebp-0x40], xmm0
	movaps xmm7, xmm3
	pxor xmm0, xmm0
	jmp CG_CompassDrawPlayerMapLocationSelector_80
CG_CompassDrawPlayerMapLocationSelector_50:
	subss xmm0, xmm6
	movaps xmm1, xmm2
	subss xmm1, xmm6
	divss xmm0, xmm1
	movaps xmm1, xmm4
	subss xmm1, [ebp-0x44]
	mulss xmm0, xmm1
	addss xmm0, [ebp-0x44]
	movss [ebp-0x44], xmm0
	pxor xmm6, xmm6
	jmp CG_CompassDrawPlayerMapLocationSelector_90
	nop


;Initialized global or static variables of cg_compass:
SECTION .data


;Initialized constant data of cg_compass:
SECTION .rdata
colorObjectiveText: dd 0x3f666666, 0x3f800000, 0x3dcccccd, 0x3f800000, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0


;Zero initialized global or static variables of cg_compass:
SECTION .bss
cg_hudMapBorderWidth: resb 0x4
cg_hudMapFriendlyHeight: resb 0x4
cg_hudMapFriendlyWidth: resb 0x4
cg_hudMapPlayerHeight: resb 0x4
cg_hudMapPlayerWidth: resb 0x4
cg_hudMapRadarLineThickness: resb 0x4
compass: resb 0x44
compassClampIcons: resb 0x4
compassCoords: resb 0x4
compassECoordCutoff: resb 0x4
compassEnemyFootstepEnabled: resb 0x4
compassEnemyFootstepMaxRange: resb 0x4
compassEnemyFootstepMaxZ: resb 0x4
compassEnemyFootstepMinSpeed: resb 0x4
compassFriendlyHeight: resb 0x4
compassFriendlyWidth: resb 0x4
compassMaxRange: resb 0x4
compassMinRadius: resb 0x4
compassMinRange: resb 0x4
compassObjectiveArrowHeight: resb 0x4
compassObjectiveArrowOffset: resb 0x4
compassObjectiveArrowRotateDist: resb 0x4
compassObjectiveArrowWidth: resb 0x4
compassObjectiveDetailDist: resb 0x4
compassObjectiveDrawLines: resb 0x4
compassObjectiveHeight: resb 0x4
compassObjectiveIconHeight: resb 0x4
compassObjectiveIconWidth: resb 0x4
compassObjectiveMaxHeight: resb 0x4
compassObjectiveMaxRange: resb 0x4
compassObjectiveMinAlpha: resb 0x4
compassObjectiveMinDistRange: resb 0x4
compassObjectiveMinHeight: resb 0x4
compassObjectiveNearbyDist: resb 0x4
compassObjectiveNumRings: resb 0x4
compassObjectiveRingSize: resb 0x4
compassObjectiveRingTime: resb 0x4
compassObjectiveTextHeight: resb 0x4
compassObjectiveTextScale: resb 0x4
compassObjectiveWidth: resb 0x4
compassPlayerHeight: resb 0x4
compassPlayerWidth: resb 0x4
compassRadarLineThickness: resb 0x4
compassRadarPingFadeTime: resb 0x4
compassRadarUpdateTime: resb 0x4
compassRotation: resb 0x4
compassSize: resb 0x4
compassSoundPingFadeTime: resb 0x4
compassTickertapeStretch: resb 0x4


;All cstrings:
SECTION .rdata
_cstring_display_compass:		db "Display Compass",0
_cstring_compass:		db "compass",0
_cstring_scale_the_compas:		db "Scale the compass",0
_cstring_compasssize:		db "compassSize",0
_cstring_the_maximum_rang:		db "The maximum range from the player in world space that objects will be shown on the compass",0
_cstring_compassmaxrange:		db "compassMaxRange",0
_cstring_the_minimum_rang:		db "The minimum range from the player in world space that objects will appear on the compass",0
_cstring_compassminrange:		db "compassMinRange",0
_cstring_the_minimum_radi:		db "The minimum radius from the center of the compass that objects will appear.",0
_cstring_compassminradius:		db "compassMinRadius",0
_cstring_the_time_in_seco:		db "The time in seconds for the sound overlay on the compass to fade",0
_cstring_compasssoundping:		db "compassSoundPingFadeTime",0
_cstring_if_true_friendli:		db "If true, friendlies and enemy pings clamp to the edge of the radar.  If false, they disappear off the edge.",0
_cstring_compassclampicon:		db "compassClampIcons",0
_cstring_the_size_of_the_:		db "The size of the friendly icon on the compass",0
_cstring_compassfriendlyw:		db "compassFriendlyWidth",0
_cstring_compassfriendlyh:		db "compassFriendlyHeight",0
_cstring_the_size_of_the_1:		db "The size of the player",27h,"s icon on the compass",0
_cstring_compassplayerwid:		db "compassPlayerWidth",0
_cstring_compassplayerhei:		db "compassPlayerHeight",0
_cstring_x__northsouth_co:		db "x = North-South coord base value, ",0ah,"y = East-West coord base value, ",0ah,"z = scale (game units per coord unit)",0
_cstring_compasscoords:		db "compassCoords",0
_cstring_left_cutoff_for_:		db "Left cutoff for the scrolling east-west coords",0
_cstring_compassecoordcut:		db "compassECoordCutoff",0
_cstring_style_of_compass:		db "Style of compass",0
_cstring_compassrotation:		db "compassRotation",0
_cstring_how_far_the_tick:		db "How far the tickertape should stretch from its center.",0
_cstring_compasstickertap:		db "compassTickertapeStretch",0
_cstring_how_long_an_enem:		db "How long an enemy is visible on the compass after it is detected by radar",0
_cstring_compassradarping:		db "compassRadarPingFadeTime",0
_cstring_time_between_rad:		db "Time between radar updates",0
_cstring_compassradarupda:		db "compassRadarUpdateTime",0
_cstring_thickness_relati:		db "Thickness, relative to the compass size, of the radar texture that sweeps across the map",0
_cstring_compassradarline:		db "compassRadarLineThickness",0
_cstring_the_size_of_the_2:		db "The size of the objective on the compass",0
_cstring_compassobjective:		db "compassObjectiveWidth",0
_cstring_compassobjective1:		db "compassObjectiveHeight",0
_cstring_the_size_of_the_3:		db "The size of the objective arrow on the compass",0
_cstring_compassobjective2:		db "compassObjectiveArrowWidth",0
_cstring_compassobjective3:		db "compassObjectiveArrowHeight",0
_cstring_the_offset_of_th:		db "The offset of the objective arrow inward from the edge of the compass map",0
_cstring_compassobjective4:		db "compassObjectiveArrowOffset",0
_cstring_distance_from_th:		db "Distance from the corner of the compass map at which the objective arrow rotates to 45 degrees",0
_cstring_compassobjective5:		db "compassObjectiveArrowRotateDist",0
_cstring_the_maximum_rang1:		db "The maximum range at which an objective is visible on the compass",0
_cstring_compassobjective6:		db "compassObjectiveMaxRange",0
_cstring_the_minimum_alph:		db "The minimum alpha for an objective at the edge of the compass",0
_cstring_compassobjective7:		db "compassObjectiveMinAlpha",0
_cstring_the_number_of_ri:		db "The number of rings when a new objective appears",0
_cstring_compassobjective8:		db "compassObjectiveNumRings",0
_cstring_the_amount_of_ti:		db "The amount of time between each ring when an objective appears",0
_cstring_compassobjective9:		db "compassObjectiveRingTime",0
_cstring_the_maximum_obje:		db "The maximum objective ring sige when a new objective appears on the compass",0
_cstring_compassobjective10:		db "compassObjectiveRingSize",0
_cstring_scale_to_apply_t:		db "Scale to apply to hud objectives",0
_cstring_compassobjective11:		db "compassObjectiveTextScale",0
_cstring_objective_text_h:		db "Objective text height",0
_cstring_compassobjective12:		db "compassObjectiveTextHeight",0
_cstring_draw_horizontal_:		db "Draw horizontal and vertical lines to the active target, if it is within the minimap boundries",0
_cstring_compassobjective13:		db "compassObjectiveDrawLines",0
_cstring_the_size_of_the_4:		db "The size of the objective on the full map",0
_cstring_compassobjective14:		db "compassObjectiveIconWidth",0
_cstring_compassobjective15:		db "compassObjectiveIconHeight",0
_cstring_when_an_objectiv:		db "When an objective is closer than this distance (in meters), an ",22h,"Objective Nearby",22h," type of indicator is shown.",0
_cstring_compassobjective16:		db "compassObjectiveNearbyDist",0
_cstring_the_distance_tha:		db "The distance that objective transition effects play over, centered on compassObjectiveNearbyDist.",0
_cstring_compassobjective17:		db "compassObjectiveMinDistRange",0
_cstring_when_an_objectiv1:		db "When an objective is closer than this distance (in meters), the icon will not be drawn on the tickertape.",0
_cstring_compassobjective18:		db "compassObjectiveDetailDist",0
_cstring_the_minimum_heig:		db "The minimum height that an objective is considered to be on this level",0
_cstring_compassobjective19:		db "compassObjectiveMinHeight",0
_cstring_the_maximum_heig:		db "The maximum height that an objective is considered to be on this level",0
_cstring_compassobjective20:		db "compassObjectiveMaxHeight",0
_cstring_the_maximum_dist:		db "The maximum distance at which an enemy may appear on the compass due to ",27h,"footsteps",27h,0
_cstring_compassenemyfoot:		db "compassEnemyFootstepMaxRange",0
_cstring_the_maximum_vert:		db "The maximum vertical distance enemy may be from the player and appear on the compass due to ",27h,"footsteps",27h,0
_cstring_compassenemyfoot1:		db "compassEnemyFootstepMaxZ",0
_cstring_the_minimum_spee:		db "The minimum speed an enemy must be moving to appear on the compass due to ",27h,"footsteps",27h,0
_cstring_compassenemyfoot2:		db "compassEnemyFootstepMinSpeed",0
_cstring_enables_enemies_:		db "Enables enemies showing on the compass because of moving rapidly nearby.",0
_cstring_compassenemyfoot3:		db "compassEnemyFootstepEnabled",0
_cstring_thickness_relati1:		db "Thickness, relative to the map width, of the radar texture that sweeps across the full screen map",0
_cstring_cg_hudmapradarli:		db "cg_hudMapRadarLineThickness",0
_cstring_the_size_of_the_5:		db "The size of the friendly icon on the full map",0
_cstring_cg_hudmapfriendl:		db "cg_hudMapFriendlyWidth",0
_cstring_cg_hudmapfriendl1:		db "cg_hudMapFriendlyHeight",0
_cstring_the_size_of_the_6:		db "The size of the player",27h,"s icon on the full map",0
_cstring_cg_hudmapplayerw:		db "cg_hudMapPlayerWidth",0
_cstring_cg_hudmapplayerh:		db "cg_hudMapPlayerHeight",0
_cstring_the_size_of_the_7:		db "The size of the full map",27h,"s border, filled by the CG_PLAYER_FULLMAP_BORDER ownerdraw",0
_cstring_cg_hudmapborderw:		db "cg_hudMapBorderWidth",0
_cstring_compass_ownerdra:		db "Compass ownerdraw had width or height of 0",0
_cstring_1fm:		db "%.1fm",0
_cstring_im:		db "%im",0
_cstring_i_:		db "%i ",0
_cstring_4f:		db "%.4f",0
_cstring_99:		db "99",0
_cstring_2i:		db "%2i",0



;All constant floats and doubles:
SECTION .rdata
_float_1000_00000000:		dd 0x447a0000	; 1000
_float_0_50000000:		dd 0x3f000000	; 0.5
_float_0_00000000:		dd 0x0	; 0
_float_1_00000000:		dd 0x3f800000	; 1
_float__2_00000000:		dd 0xc0000000	; -2
_float__0_50000000:		dd 0xbf000000	; -0.5
_float_0_00277778:		dd 0x3b360b61	; 0.00277778
_float_360_00000000:		dd 0x43b40000	; 360
_data16_80000000:		dd 0x80000000, 0x0, 0x0, 0x0	; OWORD
_float_0_25000000:		dd 0x3e800000	; 0.25
_float_0_02540000:		dd 0x3cd013a9	; 0.0254
_float_180_00000000:		dd 0x43340000	; 180
_double_3_14159265:		dq 0x400921fb54442d18	; 3.14159
_float_10_00000000:		dd 0x41200000	; 10
_float_0_10000000:		dd 0x3dcccccd	; 0.1
_float_2_00000000:		dd 0x40000000	; 2
_float_0_85000002:		dd 0x3f59999a	; 0.85
_float_0_80000001:		dd 0x3f4ccccd	; 0.8
_float_63_00000000:		dd 0x427c0000	; 63

