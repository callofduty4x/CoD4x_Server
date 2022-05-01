;Imports of bg_misc:
	extern _Z23Hunk_AllocAlignInternalii
	extern _Z15BG_GetWeaponDefj
	extern _Z16BG_GetNumWeaponsv
	extern _Z28BG_PlayerHasCompatibleWeaponPK13playerState_sj
	extern _Z23BG_GetMaxPickupableAmmoPK13playerState_sj
	extern _Z23G_GetWeaponIndexForNamePKc
	extern bg_itemlist
	extern useFastFile
	extern _Z13XAnimPrecachePKcPFPviE
	extern _Z11XAnimCreateP7XAnim_sjPKc
	extern _Z18Dvar_RegisterFloatPKcffftS0_
	extern _Z16Dvar_RegisterIntPKciiitS0_
	extern _Z17Dvar_RegisterBoolPKchtS0_
	extern _Z17Dvar_RegisterVec2PKcfffftS0_
	extern _Z19Dvar_RegisterStringPKcS0_tS0_
	extern _Z17Dvar_RegisterEnumPKcPS0_itS0_
	extern _Z21SND_GetEntChannelNamei
	extern sprintf
	extern _Z22SND_GetEntChannelCountv
	extern _Z18Jump_RegisterDvarsv
	extern _Z20Mantle_RegisterDvarsv
	extern _Z19Perks_RegisterDvarsv
	extern pmoveHandlers
	extern _Z12AngleVectorsPKfPfS1_S1_
	extern _Z10vectopitchPKf
	extern floorf
	extern _Z15Vec3NormalizeToPKfPf
	extern _Z2vaPKcz
	extern _Z9Com_Error11errorParm_tPKcz
	extern perk_sprintMultiplier
	extern sin
	extern _Z14BG_GetBobCyclePK13playerState_s
	extern _Z11BG_GetSpeedPK13playerState_si
	extern _Z23BG_GetVerticalBobFactorPK13playerState_sfff
	extern _Z25BG_GetHorizontalBobFactorPK13playerState_sfff
	extern _Z17AddLeanToPositionPfffff
	extern _Z11Com_sprintfPciPKcz
	extern _Z19Com_LoadRawTextFilePKc
	extern _Z23Com_LoadDvarsFromBufferPPKcjS0_S0_
	extern _Z21Com_UnloadRawTextFilePKc
	extern _Z14Com_PrintErroriPKcz
	extern _Z21Com_SaveDvarsToBufferPPKcjPcj
	extern _Z18FS_FOpenFileByModePKcPi8fsMode_t
	extern _Z8FS_WritePKvii
	extern _Z13FS_FCloseFilei
	extern cos
	extern _Z21PM_GetEffectiveStancePK13playerState_s
	extern _Z24PM_GetViewHeightLerpTimePK13playerState_sii
	extern strncpy
	extern _Z17Dvar_EnumToStringPK6dvar_s

;Exports of bg_misc:
	global bg_soundRoomTypes
	global bg_ShockScreenTypeNames
	global _ZZ22BG_SaveShellShockDvarsPKcE7filebuf
	global _Z21WeaponEntCanBeGrabbedPK13entityState_sPK13playerState_sij
	global _Z10G_FindItemPKci
	global _Z13BG_CheckProneiPKffffPfS1_hhhh16proneCheckType_tf
	global _Z14BG_CreateXAnimP7XAnim_sjPKc
	global _Z16BG_LerpHudColorsPK9hudelem_siP15hudelem_color_t
	global _Z16BG_RegisterDvarsv
	global _Z18BG_CheckProneValidiPKffffPfS1_hhhh16proneCheckType_tf
	global _Z19BG_CanItemBeGrabbedPK13entityState_sPK13playerState_si
	global _Z19BG_GetMaxSprintTimePK13playerState_s
	global _Z20BG_FindItemForWeaponii
	global _Z20BG_GetEntityTypeNamei
	global _Z20BG_PlayerTouchesItemPK13playerState_sPK13entityState_si
	global _Z21BG_EvaluateTrajectoryPK12trajectory_tiPf
	global _Z21BG_GetShellshockParmsi
	global _Z22BG_GetPlayerViewOriginPK13playerState_sPfi
	global _Z22BG_LoadShellShockDvarsPKc
	global _Z22BG_SaveShellShockDvarsPKc
	global _Z25BG_GetPlayerViewDirectionPK13playerState_sPfS2_S2_
	global _Z26BG_EvaluateTrajectoryDeltaPK12trajectory_tiPf
	global _Z27BG_PlayerStateToEntityStateP13playerState_sP13entityState_sih
	global _Z27BG_RegisterShockVolumeDvarsv
	global _Z28BG_PlayerCanPickUpWeaponTypePK9WeaponDefPK13playerState_s
	global _Z30BG_SetShellShockParmsFromDvarsP18shellshock_parms_t
	global _Z34BG_PlayerHasRoomForEntAllAmmoTypesPK13entityState_sPK13playerState_s
	global _Z35BG_AddPredictableEventToPlayerstateijP13playerState_s
	global player_meleeRange
	global bg_legYawTolerance
	global bg_swingSpeed
	global player_lean_rotate_crouch_left
	global player_lean_rotate_crouch_right
	global player_lean_rotate_left
	global player_lean_rotate_right
	global player_lean_shift_crouch_left
	global player_lean_shift_crouch_right
	global player_lean_shift_left
	global player_lean_shift_right
	global player_move_factor_on_torso
	global bgShockChannelNames
	global bgShockDvarNames
	global bg_aimSpreadMoveSpeedThreshold
	global bg_bobAmplitudeDucked
	global bg_bobAmplitudeProne
	global bg_bobAmplitudeSprinting
	global bg_bobAmplitudeStanding
	global bg_bobMax
	global bg_fallDamageMaxHeight
	global bg_fallDamageMinHeight
	global bg_foliagesnd_fastinterval
	global bg_foliagesnd_maxspeed
	global bg_foliagesnd_minspeed
	global bg_foliagesnd_resetinterval
	global bg_foliagesnd_slowinterval
	global bg_ladder_yawcap
	global bg_maxGrenadeIndicatorSpeed
	global bg_prone_yawcap
	global bg_shellshockParms
	global bg_shock_lookControl
	global bg_shock_lookControl_fadeTime
	global bg_shock_lookControl_maxpitchspeed
	global bg_shock_lookControl_maxyawspeed
	global bg_shock_lookControl_mousesensitivityscale
	global bg_shock_movement
	global bg_shock_screenBlurBlendFadeTime
	global bg_shock_screenBlurBlendTime
	global bg_shock_screenFlashShotFadeTime
	global bg_shock_screenFlashWhiteFadeTime
	global bg_shock_screenType
	global bg_shock_sound
	global bg_shock_soundDryLevel
	global bg_shock_soundEnd
	global bg_shock_soundEndAbort
	global bg_shock_soundFadeInTime
	global bg_shock_soundFadeOutTime
	global bg_shock_soundLoop
	global bg_shock_soundLoopEndDelay
	global bg_shock_soundLoopFadeTime
	global bg_shock_soundLoopSilent
	global bg_shock_soundModEndDelay
	global bg_shock_soundRoomType
	global bg_shock_soundWetLevel
	global bg_shock_viewKickFadeTime
	global bg_shock_viewKickPeriod
	global bg_shock_viewKickRadius
	global bg_shock_volume
	global bg_viewKickMax
	global bg_viewKickMin
	global bg_viewKickRandom
	global bg_viewKickScale
	global bullet_penetrationMinFxDist
	global eventnames
	global friction
	global inertiaAngle
	global inertiaDebug
	global inertiaMax
	global player_adsExitDelay
	global player_backSpeedScale
	global player_breath_fire_delay
	global player_breath_gasp_lerp
	global player_breath_gasp_scale
	global player_breath_gasp_time
	global player_breath_hold_lerp
	global player_breath_hold_time
	global player_breath_snd_delay
	global player_breath_snd_lerp
	global player_burstFireCooldown
	global player_debugHealth
	global player_dmgtimer_flinchTime
	global player_dmgtimer_maxTime
	global player_dmgtimer_minScale
	global player_dmgtimer_stumbleTime
	global player_dmgtimer_timePerPoint
	global player_footstepsThreshhold
	global player_meleeChargeFriction
	global player_meleeHeight
	global player_meleeWidth
	global player_moveThreshhold
	global player_scopeExitOnDamage
	global player_spectateSpeedScale
	global player_sprintCameraBob
	global player_sprintForwardMinimum
	global player_sprintMinTime
	global player_sprintRechargePause
	global player_sprintSpeedScale
	global player_sprintStrafeSpeedScale
	global player_sprintTime
	global player_strafeAnimCosAngle
	global player_strafeSpeedScale
	global player_sustainAmmo
	global player_turnAnims
	global player_view_pitch_down
	global player_view_pitch_up
	global serverOnlyEvents
	global singleClientEvents
	global stopspeed


SECTION .text


;Hunk_AllocXAnimPrecache(int)
_Z23Hunk_AllocXAnimPrecachei:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x4], 0x4
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z23Hunk_AllocAlignInternalii
	leave
	ret
	nop


;WeaponEntCanBeGrabbed(entityState_s const*, playerState_s const*, int, unsigned int)
_Z21WeaponEntCanBeGrabbedPK13entityState_sPK13playerState_sij:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov esi, eax
	mov [ebp-0x1c], edx
	mov edi, ecx
	mov ebx, [ebp+0x8]
	mov [esp], ebx
	call _Z15BG_GetWeaponDefj
	mov eax, [eax+0x144]
	cmp eax, 0x3
	jz _Z21WeaponEntCanBeGrabbedPK13entityState_sPK13playerState_sij_10
	cmp eax, 0x2
	jz _Z21WeaponEntCanBeGrabbedPK13entityState_sPK13playerState_sij_20
_Z21WeaponEntCanBeGrabbedPK13entityState_sPK13playerState_sij_100:
	cmp dword [esi+0x4], 0x4
	jz _Z21WeaponEntCanBeGrabbedPK13entityState_sPK13playerState_sij_30
	test edi, edi
	jnz _Z21WeaponEntCanBeGrabbedPK13entityState_sPK13playerState_sij_40
_Z21WeaponEntCanBeGrabbedPK13entityState_sPK13playerState_sij_90:
	mov edx, ebx
	sar edx, 0x5
	and ebx, 0x1f
	mov eax, 0x1
	mov ecx, ebx
	shl eax, cl
	mov ecx, [ebp-0x1c]
	test [ecx+edx*4+0x55c], eax
	jnz _Z21WeaponEntCanBeGrabbedPK13entityState_sPK13playerState_sij_50
_Z21WeaponEntCanBeGrabbedPK13entityState_sPK13playerState_sij_70:
	mov eax, 0x1
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z21WeaponEntCanBeGrabbedPK13entityState_sPK13playerState_sij_40:
	mov edx, ebx
	sar edx, 0x5
	mov ecx, ebx
	and ecx, 0x1f
	mov eax, 0x1
	shl eax, cl
	mov ecx, [ebp-0x1c]
	test [ecx+edx*4+0x55c], eax
	jz _Z21WeaponEntCanBeGrabbedPK13entityState_sPK13playerState_sij_60
	call _Z16BG_GetNumWeaponsv
	mov esi, eax
	mov [esp], ebx
	call _Z15BG_GetWeaponDefj
	mov edi, [eax+0x328]
	mov eax, [eax+0x324]
	cmp byte [eax], 0x0
	jz _Z21WeaponEntCanBeGrabbedPK13entityState_sPK13playerState_sij_70
_Z21WeaponEntCanBeGrabbedPK13entityState_sPK13playerState_sij_120:
	cmp esi, 0x1
	jg _Z21WeaponEntCanBeGrabbedPK13entityState_sPK13playerState_sij_80
_Z21WeaponEntCanBeGrabbedPK13entityState_sPK13playerState_sij_50:
	xor eax, eax
_Z21WeaponEntCanBeGrabbedPK13entityState_sPK13playerState_sij_110:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z21WeaponEntCanBeGrabbedPK13entityState_sPK13playerState_sij_30:
	sub eax, 0x1
	jz _Z21WeaponEntCanBeGrabbedPK13entityState_sPK13playerState_sij_70
	test edi, edi
	jz _Z21WeaponEntCanBeGrabbedPK13entityState_sPK13playerState_sij_90
	jmp _Z21WeaponEntCanBeGrabbedPK13entityState_sPK13playerState_sij_40
_Z21WeaponEntCanBeGrabbedPK13entityState_sPK13playerState_sij_10:
	mov edx, [ebp-0x1c]
	cmp dword [edx+0xe4], 0x1
	jz _Z21WeaponEntCanBeGrabbedPK13entityState_sPK13playerState_sij_100
	xor eax, eax
	jmp _Z21WeaponEntCanBeGrabbedPK13entityState_sPK13playerState_sij_110
_Z21WeaponEntCanBeGrabbedPK13entityState_sPK13playerState_sij_20:
	mov ecx, [ebp-0x1c]
	mov edx, [ecx+0xe4]
	test edx, edx
	jz _Z21WeaponEntCanBeGrabbedPK13entityState_sPK13playerState_sij_100
	xor eax, eax
	jmp _Z21WeaponEntCanBeGrabbedPK13entityState_sPK13playerState_sij_110
_Z21WeaponEntCanBeGrabbedPK13entityState_sPK13playerState_sij_60:
	mov [esp+0x4], ebx
	mov [esp], ecx
	call _Z28BG_PlayerHasCompatibleWeaponPK13playerState_sj
	test al, al
	jz _Z21WeaponEntCanBeGrabbedPK13entityState_sPK13playerState_sij_50
	call _Z16BG_GetNumWeaponsv
	mov esi, eax
	mov [esp], ebx
	call _Z15BG_GetWeaponDefj
	mov edi, [eax+0x328]
	mov eax, [eax+0x324]
	cmp byte [eax], 0x0
	jz _Z21WeaponEntCanBeGrabbedPK13entityState_sPK13playerState_sij_70
	jmp _Z21WeaponEntCanBeGrabbedPK13entityState_sPK13playerState_sij_120
_Z21WeaponEntCanBeGrabbedPK13entityState_sPK13playerState_sij_80:
	mov ebx, 0x1
	jmp _Z21WeaponEntCanBeGrabbedPK13entityState_sPK13playerState_sij_130
_Z21WeaponEntCanBeGrabbedPK13entityState_sPK13playerState_sij_140:
	add ebx, 0x1
	cmp esi, ebx
	jz _Z21WeaponEntCanBeGrabbedPK13entityState_sPK13playerState_sij_50
_Z21WeaponEntCanBeGrabbedPK13entityState_sPK13playerState_sij_130:
	mov [esp], ebx
	call _Z15BG_GetWeaponDefj
	cmp edi, [eax+0x328]
	jnz _Z21WeaponEntCanBeGrabbedPK13entityState_sPK13playerState_sij_140
	mov [esp+0x4], ebx
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call _Z23BG_GetMaxPickupableAmmoPK13playerState_sj
	test eax, eax
	jle _Z21WeaponEntCanBeGrabbedPK13entityState_sPK13playerState_sij_140
	jmp _Z21WeaponEntCanBeGrabbedPK13entityState_sPK13playerState_sij_70
	nop


;G_FindItem(char const*, int)
_Z10G_FindItemPKci:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0xc]
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z23G_GetWeaponIndexForNamePKc
	test eax, eax
	jz _Z10G_FindItemPKci_10
	shl ebx, 0x7
	lea edx, [eax+ebx]
	mov eax, bg_itemlist
	lea eax, [eax+edx*4]
_Z10G_FindItemPKci_10:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;BG_CheckProne(int, float const*, float, float, float, float*, float*, unsigned char, unsigned char, unsigned char, unsigned char, proneCheckType_t, float)
_Z13BG_CheckProneiPKffffPfS1_hhhh16proneCheckType_tf:
	push ebp
	mov ebp, esp
	sub esp, 0x48
	mov eax, [ebp+0x38]
	mov [esp+0x30], eax
	mov eax, [ebp+0x34]
	mov [esp+0x2c], eax
	movzx eax, byte [ebp+0x30]
	mov [esp+0x28], eax
	movzx eax, byte [ebp+0x2c]
	mov [esp+0x24], eax
	movzx eax, byte [ebp+0x28]
	mov [esp+0x20], eax
	movzx eax, byte [ebp+0x24]
	mov [esp+0x1c], eax
	mov eax, [ebp+0x20]
	mov [esp+0x18], eax
	mov eax, [ebp+0x1c]
	mov [esp+0x14], eax
	mov eax, [ebp+0x18]
	mov [esp+0x10], eax
	mov eax, [ebp+0x14]
	mov [esp+0xc], eax
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z18BG_CheckProneValidiPKffffPfS1_hhhh16proneCheckType_tf
	movzx eax, al
	leave
	ret


;BG_CreateXAnim(XAnim_s*, unsigned int, char const*)
_Z14BG_CreateXAnimP7XAnim_sjPKc:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov ebx, [ebp+0x10]
	mov eax, useFastFile
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z14BG_CreateXAnimP7XAnim_sjPKc_10
	mov dword [esp+0x4], _Z23Hunk_AllocXAnimPrecachei
	mov [esp], ebx
	call _Z13XAnimPrecachePKcPFPviE
_Z14BG_CreateXAnimP7XAnim_sjPKc_10:
	mov [ebp+0x10], ebx
	mov [ebp+0xc], esi
	mov [ebp+0x8], edi
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z11XAnimCreateP7XAnim_sjPKc


;BG_LerpHudColors(hudelem_s const*, int, hudelem_color_t*)
_Z16BG_LerpHudColorsPK9hudelem_siP15hudelem_color_t:
	push ebp
	mov ebp, esp
	push ebx
	mov ecx, [ebp+0x8]
	mov eax, [ebp+0xc]
	mov ebx, [ebp+0x10]
	sub eax, [ecx+0x2c]
	mov edx, [ecx+0x30]
	test edx, edx
	jle _Z16BG_LerpHudColorsPK9hudelem_siP15hudelem_color_t_10
	cmp eax, edx
	jge _Z16BG_LerpHudColorsPK9hudelem_siP15hudelem_color_t_10
	pxor xmm2, xmm2
	test eax, eax
	js _Z16BG_LerpHudColorsPK9hudelem_siP15hudelem_color_t_20
	cvtsi2ss xmm2, eax
_Z16BG_LerpHudColorsPK9hudelem_siP15hudelem_color_t_20:
	cvtsi2ss xmm0, edx
	divss xmm2, xmm0
	movzx edx, byte [ecx+0x28]
	cvtsi2ss xmm1, edx
	movzx eax, byte [ecx+0x24]
	sub eax, edx
	cvtsi2ss xmm0, eax
	mulss xmm0, xmm2
	addss xmm1, xmm0
	cvttss2si eax, xmm1
	mov [ebx], al
	movzx edx, byte [ecx+0x29]
	cvtsi2ss xmm1, edx
	movzx eax, byte [ecx+0x25]
	sub eax, edx
	cvtsi2ss xmm0, eax
	mulss xmm0, xmm2
	addss xmm1, xmm0
	cvttss2si eax, xmm1
	mov [ebx+0x1], al
	movzx edx, byte [ecx+0x2a]
	cvtsi2ss xmm1, edx
	movzx eax, byte [ecx+0x26]
	sub eax, edx
	cvtsi2ss xmm0, eax
	mulss xmm0, xmm2
	addss xmm1, xmm0
	cvttss2si eax, xmm1
	mov [ebx+0x2], al
	movzx edx, byte [ecx+0x2b]
	cvtsi2ss xmm1, edx
	movzx eax, byte [ecx+0x27]
	sub eax, edx
	cvtsi2ss xmm0, eax
	mulss xmm2, xmm0
	addss xmm1, xmm2
	cvttss2si eax, xmm1
	mov [ebx+0x3], al
	pop ebx
	pop ebp
	ret
_Z16BG_LerpHudColorsPK9hudelem_siP15hudelem_color_t_10:
	mov eax, [ecx+0x24]
	mov [ebx], eax
	pop ebx
	pop ebp
	ret
	nop


;BG_RegisterDvars()
_Z16BG_RegisterDvarsv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov dword [esp+0x14], _cstring_the_scale_to_app
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x41200000
	xor ebx, ebx
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x3e4ccccd
	mov dword [esp], _cstring_bg_viewkickscale
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [bg_viewKickScale], eax
	mov dword [esp+0x14], _cstring_the_maximum_view
	mov dword [esp+0x10], 0x80
	mov esi, 0x42b40000
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov [esp+0x4], esi
	mov dword [esp], _cstring_bg_viewkickmax
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [bg_viewKickMax], eax
	mov dword [esp+0x14], _cstring_the_minimum_view
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x40a00000
	mov dword [esp], _cstring_bg_viewkickmin
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [bg_viewKickMin], eax
	mov dword [esp+0x14], _cstring_the_random_direc
	mov dword [esp+0x10], 0x80
	mov edi, 0x3f800000
	mov [esp+0xc], edi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x3ecccccd
	mov dword [esp], _cstring_bg_viewkickrando
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [bg_viewKickRandom], eax
	mov dword [esp+0x14], _cstring_maximum_angle_th
	mov dword [esp+0x10], 0x180
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x42aa0000
	mov dword [esp], _cstring_player_view_pitc
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [player_view_pitch_up], eax
	mov dword [esp+0x14], _cstring_maximum_angle_th1
	mov dword [esp+0x10], 0x180
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x42aa0000
	mov dword [esp], _cstring_player_view_pitc1
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [player_view_pitch_down], eax
	mov dword [esp+0x14], _cstring_amount_to_shift_
	mov dword [esp+0x10], 0x180
	mov dword [esp+0xc], 0x41a00000
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x40a00000
	mov dword [esp], _cstring_player_lean_shif
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [player_lean_shift_left], eax
	mov dword [esp+0x14], _cstring_amount_to_shift_1
	mov dword [esp+0x10], 0x180
	mov dword [esp+0xc], 0x41a00000
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x41100000
	mov dword [esp], _cstring_player_lean_shif1
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [player_lean_shift_right], eax
	mov dword [esp+0x14], _cstring_amount_to_shift_2
	mov dword [esp+0x10], 0x180
	mov dword [esp+0xc], 0x41a00000
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x40800000
	mov dword [esp], _cstring_player_lean_shif2
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [player_lean_shift_crouch_left], eax
	mov dword [esp+0x14], _cstring_amount_to_shift_3
	mov dword [esp+0x10], 0x180
	mov dword [esp+0xc], 0x41a00000
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x41700000
	mov dword [esp], _cstring_player_lean_shif3
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [player_lean_shift_crouch_right], eax
	mov dword [esp+0x14], _cstring_amount_to_rotate
	mov dword [esp+0x10], 0x180
	mov dword [esp+0xc], 0x40400000
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x3f4ccccd
	mov dword [esp], _cstring_player_lean_rota
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [player_lean_rotate_left], eax
	mov dword [esp+0x14], _cstring_amount_to_rotate1
	mov dword [esp+0x10], 0x180
	mov dword [esp+0xc], 0x40400000
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x3ecccccd
	mov dword [esp], _cstring_player_lean_rota1
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [player_lean_rotate_right], eax
	mov dword [esp+0x14], _cstring_amount_to_rotate2
	mov dword [esp+0x10], 0x180
	mov dword [esp+0xc], 0x40400000
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x3f4ccccd
	mov dword [esp], _cstring_player_lean_rota2
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [player_lean_rotate_crouch_left], eax
	mov dword [esp+0x14], _cstring_amount_to_rotate3
	mov dword [esp+0x10], 0x180
	mov dword [esp+0xc], 0x40400000
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x3e99999a
	mov dword [esp], _cstring_player_lean_rota3
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [player_lean_rotate_crouch_right], eax
	mov dword [esp+0x14], _cstring_the_maximum_angl
	mov dword [esp+0x10], 0x180
	mov esi, 0x43b40000
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x42c80000
	mov dword [esp], _cstring_bg_ladder_yawcap
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [bg_ladder_yawcap], eax
	mov dword [esp+0x14], _cstring_the_maximum_angl1
	mov dword [esp+0x10], 0x180
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x42aa0000
	mov dword [esp], _cstring_bg_prone_yawcap
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [bg_prone_yawcap], eax
	mov dword [esp+0x14], _cstring_the_speed_that_a
	mov dword [esp+0x10], 0x180
	mov dword [esp+0xc], 0x7f7fffff
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x42200000
	mov dword [esp], _cstring_bg_foliagesnd_mi
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [bg_foliagesnd_minspeed], eax
	mov dword [esp+0x14], _cstring_the_speed_that_a1
	mov dword [esp+0x10], 0x180
	mov dword [esp+0xc], 0x7f7fffff
	mov [esp+0x8], ebx
	mov esi, 0x43340000
	mov [esp+0x4], esi
	mov dword [esp], _cstring_bg_foliagesnd_ma
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [bg_foliagesnd_maxspeed], eax
	mov dword [esp+0x14], _cstring_the_time_between
	mov dword [esp+0x10], 0x180
	mov dword [esp+0xc], 0x7fffffff
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x5dc
	mov dword [esp], _cstring_bg_foliagesnd_sl
	call _Z16Dvar_RegisterIntPKciiitS0_
	mov [bg_foliagesnd_slowinterval], eax
	mov dword [esp+0x14], _cstring_the_time_between1
	mov dword [esp+0x10], 0x180
	mov dword [esp+0xc], 0x7fffffff
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x1f4
	mov dword [esp], _cstring_bg_foliagesnd_fa
	call _Z16Dvar_RegisterIntPKciiitS0_
	mov [bg_foliagesnd_fastinterval], eax
	mov dword [esp+0x14], _cstring_the_time_interva
	mov dword [esp+0x10], 0x180
	mov dword [esp+0xc], 0x7fffffff
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x1f4
	mov dword [esp], _cstring_bg_foliagesnd_re
	call _Z16Dvar_RegisterIntPKciiitS0_
	mov [bg_foliagesnd_resetinterval], eax
	mov dword [esp+0x14], _cstring_the_height_that_
	mov dword [esp+0x10], 0x188
	mov dword [esp+0xc], 0x7f7fffff
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x43000000
	mov dword [esp], _cstring_bg_falldamagemin
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [bg_fallDamageMinHeight], eax
	mov dword [esp+0x14], _cstring_the_height_that_1
	mov dword [esp+0x10], 0x188
	mov dword [esp+0xc], 0x7f7fffff
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x43960000
	mov dword [esp], _cstring_bg_falldamagemax
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [bg_fallDamageMaxHeight], eax
	mov dword [esp+0x14], _cstring_maximum_player_i
	mov dword [esp+0x10], 0x180
	mov dword [esp+0xc], 0x447a0000
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x42480000
	mov dword [esp], _cstring_inertiamax
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [inertiaMax], eax
	mov dword [esp+0xc], _cstring_show_inertia_deb
	mov dword [esp+0x8], 0x180
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_inertiadebug
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [inertiaDebug], eax
	mov dword [esp+0x14], _cstring_the_cosine_of_th
	mov dword [esp+0x10], 0x180
	mov [esp+0xc], edi
	mov dword [esp+0x8], 0xbf800000
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_inertiaangle
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [inertiaAngle], eax
	mov dword [esp+0x14], _cstring_player_friction
	mov dword [esp+0x10], 0x180
	mov dword [esp+0xc], 0x42c80000
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x40b00000
	mov dword [esp], _cstring_friction
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [friction], eax
	mov dword [esp+0x14], _cstring_the_player_decel
	mov dword [esp+0x10], 0x180
	mov dword [esp+0xc], 0x447a0000
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x42c80000
	mov dword [esp], _cstring_stopspeed
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [stopspeed], eax
	mov dword [esp+0x14], _cstring_the_rate_at_whic
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], edi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x3e4ccccd
	mov dword [esp], _cstring_bg_swingspeed
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [bg_swingSpeed], eax
	mov dword [esp+0x14], _cstring_the_amount_the_p
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x41a00000
	mov dword [esp], _cstring_bg_legyawtoleran
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [bg_legYawTolerance], eax
	mov dword [esp+0x18], _cstring_the_multiplier_t
	mov dword [esp+0x14], 0x180
	mov [esp+0x10], edi
	mov [esp+0xc], ebx
	mov dword [esp+0x8], 0x3c656042
	mov esi, 0x3ca3d70a
	mov [esp+0x4], esi
	mov dword [esp], _cstring_bg_bobamplitudes
	call _Z17Dvar_RegisterVec2PKcfffftS0_
	mov [bg_bobAmplitudeSprinting], eax
	mov dword [esp+0x18], _cstring_the_multiplier_t1
	mov dword [esp+0x14], 0x1180
	mov [esp+0x10], edi
	mov [esp+0xc], ebx
	mov eax, 0x3be56042
	mov [esp+0x8], eax
	mov [esp+0x4], eax
	mov dword [esp], _cstring_bg_bobamplitudes1
	call _Z17Dvar_RegisterVec2PKcfffftS0_
	mov [bg_bobAmplitudeStanding], eax
	mov dword [esp+0x18], _cstring_the_multiplier_t2
	mov dword [esp+0x14], 0x180
	mov [esp+0x10], edi
	mov [esp+0xc], ebx
	mov eax, 0x3bf5c28f
	mov [esp+0x8], eax
	mov [esp+0x4], eax
	mov dword [esp], _cstring_bg_bobamplituded
	call _Z17Dvar_RegisterVec2PKcfffftS0_
	mov [bg_bobAmplitudeDucked], eax
	mov dword [esp+0x18], _cstring_the_multiplier_t3
	mov dword [esp+0x14], 0x180
	mov [esp+0x10], edi
	mov [esp+0xc], ebx
	mov dword [esp+0x8], 0x3ba3d70a
	mov [esp+0x4], esi
	mov dword [esp], _cstring_bg_bobamplitudep
	call _Z17Dvar_RegisterVec2PKcfffftS0_
	mov [bg_bobAmplitudeProne], eax
	mov dword [esp+0x14], _cstring_the_maximum_allo
	mov dword [esp+0x10], 0x180
	mov dword [esp+0xc], 0x42100000
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x41000000
	mov dword [esp], _cstring_bg_bobmax
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [bg_bobMax], eax
	mov dword [esp+0x14], _cstring_when_player_is_m
	mov dword [esp+0x10], 0x180
	mov dword [esp+0xc], 0x43960000
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x41300000
	mov dword [esp], _cstring_bg_aimspreadmove
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [bg_aimSpreadMoveSpeedThreshold], eax
	mov dword [esp+0x14], _cstring_maximum_speed_of
	mov dword [esp+0x10], 0x180
	mov dword [esp+0xc], 0x447a0000
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x41a00000
	mov dword [esp], _cstring_bg_maxgrenadeind
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [bg_maxGrenadeIndicatorSpeed], eax
	mov dword [esp+0x14], _cstring_the_maximum_time
	mov dword [esp+0x10], 0x180
	mov esi, 0x41f00000
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x40900000
	mov dword [esp], _cstring_player_breath_ho
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [player_breath_hold_time], eax
	mov dword [esp+0x14], _cstring_the_amount_of_ti
	mov dword [esp+0x10], 0x180
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov [esp+0x4], edi
	mov dword [esp], _cstring_player_breath_ga
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [player_breath_gasp_time], eax
	mov dword [esp+0x14], _cstring_the_amount_of_ti1
	mov dword [esp+0x10], 0x180
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_player_breath_fi
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [player_breath_fire_delay], eax
	mov dword [esp+0x14], _cstring_scale_value_to_a
	mov dword [esp+0x10], 0x180
	mov dword [esp+0xc], 0x42480000
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x40900000
	mov dword [esp], _cstring_player_breath_ga1
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [player_breath_gasp_scale], eax
	mov dword [esp+0x14], _cstring_the_interpolatio
	mov dword [esp+0x10], 0x180
	mov dword [esp+0xc], 0x42480000
	mov [esp+0x8], ebx
	mov [esp+0x4], edi
	mov dword [esp], _cstring_player_breath_ho1
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [player_breath_hold_lerp], eax
	mov dword [esp+0x14], _cstring_the_interpolatio1
	mov dword [esp+0x10], 0x180
	mov dword [esp+0xc], 0x42480000
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x40c00000
	mov dword [esp], _cstring_player_breath_ga2
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [player_breath_gasp_lerp], eax
	mov dword [esp+0x14], _cstring_the_interpolatio2
	mov dword [esp+0x10], 0x180
	mov dword [esp+0xc], 0x42c80000
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x40000000
	mov dword [esp], _cstring_player_breath_sn
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [player_breath_snd_lerp], eax
	mov dword [esp+0x14], _cstring_the_delay_before
	mov dword [esp+0x10], 0x180
	mov dword [esp+0xc], 0x40000000
	mov [esp+0x8], ebx
	mov [esp+0x4], edi
	mov dword [esp], _cstring_player_breath_sn1
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [player_breath_snd_delay], eax
	mov dword [esp+0xc], _cstring_exit_the_scope_i
	mov dword [esp+0x8], 0x180
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_player_scopeexit
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [player_scopeExitOnDamage], eax
	mov dword [esp+0x14], _cstring_delay_before_exi
	mov dword [esp+0x10], 0x180
	mov dword [esp+0xc], 0x3e8
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_player_adsexitde
	call _Z16Dvar_RegisterIntPKciiitS0_
	mov [player_adsExitDelay], eax
	mov dword [esp+0x14], _cstring_the_contribution
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], edi
	mov [esp+0x8], ebx
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_player_move_fact
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [player_move_factor_on_torso], eax
	mov dword [esp+0xc], _cstring_turn_on_debuggin
	mov dword [esp+0x8], 0x180
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_player_debugheal
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [player_debugHealth], eax
	mov dword [esp+0xc], _cstring_firing_weapon_wi
	mov dword [esp+0x8], 0x80
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_player_sustainam
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [player_sustainAmmo], eax
	mov dword [esp+0x14], _cstring_the_speed_at_whi
	mov dword [esp+0x10], 0x1c0
	mov dword [esp+0xc], 0x41a00000
	mov dword [esp+0x8], 0x322bcc77
	mov dword [esp+0x4], 0x41200000
	mov dword [esp], _cstring_player_movethres
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [player_moveThreshhold], eax
	mov dword [esp+0x14], _cstring_the_minimum_spee
	mov dword [esp+0x10], 0x1c0
	mov dword [esp+0xc], 0x47435000
	mov [esp+0x8], ebx
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_player_footsteps
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [player_footstepsThreshhold], eax
	mov dword [esp+0x14], _cstring_the_scale_applie
	mov dword [esp+0x10], 0x180
	mov dword [esp+0xc], 0x41a00000
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x3f4ccccd
	mov dword [esp], _cstring_player_strafespe
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [player_strafeSpeedScale], eax
	mov dword [esp+0x14], _cstring_the_scale_applie1
	mov dword [esp+0x10], 0x180
	mov dword [esp+0xc], 0x41a00000
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x3f333333
	mov dword [esp], _cstring_player_backspeed
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [player_backSpeedScale], eax
	mov dword [esp+0x14], _cstring_cosine_of_the_an
	mov dword [esp+0x10], 0x180
	mov [esp+0xc], edi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x3f000000
	mov dword [esp], _cstring_player_strafeani
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [player_strafeAnimCosAngle], eax
	mov dword [esp+0x14], _cstring_the_scale_applie2
	mov dword [esp+0x10], 0x180
	mov dword [esp+0xc], 0x41a00000
	mov [esp+0x8], ebx
	mov [esp+0x4], edi
	mov dword [esp], _cstring_player_spectates
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [player_spectateSpeedScale], eax
	mov dword [esp+0x14], _cstring_the_minimum_forw
	mov dword [esp+0x10], 0x100
	mov dword [esp+0xc], 0xff
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x69
	mov dword [esp], _cstring_player_sprintfor
	call _Z16Dvar_RegisterIntPKciiitS0_
	mov [player_sprintForwardMinimum], eax
	mov dword [esp+0x14], _cstring_the_scale_applie3
	mov dword [esp+0x10], 0x180
	mov dword [esp+0xc], 0x40a00000
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x3fc00000
	mov dword [esp], _cstring_player_sprintspe
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [player_sprintSpeedScale], eax
	mov dword [esp+0x14], _cstring_the_base_length_
	mov dword [esp+0x10], 0x180
	mov esi, 0x414ccccd
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x40800000
	mov dword [esp], _cstring_player_sprinttim
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [player_sprintTime], eax
	mov dword [esp+0x14], _cstring_the_minimum_spri
	mov dword [esp+0x10], 0x180
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov [esp+0x4], edi
	mov dword [esp], _cstring_player_sprintmin
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [player_sprintMinTime], eax
	mov dword [esp+0x14], _cstring_the_length_of_ti
	mov dword [esp+0x10], 0x180
	mov dword [esp+0xc], 0x460ca000
	mov [esp+0x8], ebx
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_player_sprintrec
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [player_sprintRechargePause], eax
	mov dword [esp+0x14], _cstring_the_speed_at_whi1
	mov dword [esp+0x10], 0x180
	mov dword [esp+0xc], 0x459c4000
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x3f2ac083
	mov dword [esp], _cstring_player_sprintstr
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [player_sprintStrafeSpeedScale], eax
	mov dword [esp+0x14], _cstring_the_speed_the_ca
	mov dword [esp+0x10], 0x180
	mov dword [esp+0xc], 0x40000000
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x3f000000
	mov dword [esp], _cstring_player_sprintcam
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [player_sprintCameraBob], eax
	mov dword [esp+0xc], _cstring_use_animations_t
	mov dword [esp+0x8], 0x180
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_player_turnanims
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [player_turnAnims], eax
	mov dword [esp+0x14], _cstring_the_time_in_mill
	mov dword [esp+0x10], 0x180
	mov dword [esp+0xc], 0x7f7fffff
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x42c80000
	mov dword [esp], _cstring_player_dmgtimer_
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [player_dmgtimer_timePerPoint], eax
	mov dword [esp+0x14], _cstring_the_maximum_time1
	mov dword [esp+0x10], 0x180
	mov dword [esp+0xc], 0x7f7fffff
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x443b8000
	mov dword [esp], _cstring_player_dmgtimer_1
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [player_dmgtimer_maxTime], eax
	mov dword [esp+0x14], _cstring_the_minimum_scal
	mov dword [esp+0x10], 0x180
	mov [esp+0xc], edi
	mov [esp+0x8], ebx
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_player_dmgtimer_2
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [player_dmgtimer_minScale], eax
	mov dword [esp+0x14], _cstring_maximum_time_to_
	mov dword [esp+0x10], 0x180
	mov dword [esp+0xc], 0x7d0
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x1f4
	mov dword [esp], _cstring_player_dmgtimer_3
	call _Z16Dvar_RegisterIntPKciiitS0_
	mov [player_dmgtimer_stumbleTime], eax
	mov dword [esp+0x14], _cstring_maximum_time_to_1
	mov dword [esp+0x10], 0x180
	mov dword [esp+0xc], 0x7d0
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x1f4
	mov dword [esp], _cstring_player_dmgtimer_4
	call _Z16Dvar_RegisterIntPKciiitS0_
	mov [player_dmgtimer_flinchTime], eax
	mov dword [esp+0xc], _cstring_shellshock_loop_
	mov dword [esp+0x8], 0x80
	mov dword [esp+0x4], _cstring_shellshock_loop
	mov dword [esp], _cstring_bg_shock_soundlo
	call _Z19Dvar_RegisterStringPKcS0_tS0_
	mov [bg_shock_soundLoop], eax
	mov dword [esp+0xc], _cstring_the_sound_that_g
	mov dword [esp+0x8], 0x80
	mov dword [esp+0x4], _cstring_shellshock_loop_1
	mov dword [esp], _cstring_bg_shock_soundlo1
	call _Z19Dvar_RegisterStringPKcS0_tS0_
	mov [bg_shock_soundLoopSilent], eax
	mov dword [esp+0xc], _cstring_shellshock_end_s
	mov dword [esp+0x8], 0x80
	mov dword [esp+0x4], _cstring_shellshock_end
	mov dword [esp], _cstring_bg_shock_sounden
	call _Z19Dvar_RegisterStringPKcS0_tS0_
	mov [bg_shock_soundEnd], eax
	mov dword [esp+0xc], _cstring_shellshock_abort
	mov dword [esp+0x8], 0x80
	mov dword [esp+0x4], _cstring_shellshock_end_a
	mov dword [esp], _cstring_bg_shock_sounden1
	call _Z19Dvar_RegisterStringPKcS0_tS0_
	mov [bg_shock_soundEndAbort], eax
	mov dword [esp+0x10], _cstring_shell_shock_scre
	mov dword [esp+0xc], 0x80
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], bg_ShockScreenTypeNames
	mov dword [esp], _cstring_bg_shock_screent
	call _Z17Dvar_RegisterEnumPKcPS0_itS0_
	mov [bg_shock_screenType], eax
	mov dword [esp+0x14], _cstring_the_amount_of_ti2
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x41200000
	mov esi, 0x3a83126f
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x3ecccccd
	mov dword [esp], _cstring_bg_shock_screenb
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [bg_shock_screenBlurBlendTime], eax
	mov dword [esp+0x14], _cstring_the_amount_of_ti3
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x447a0000
	mov [esp+0x8], esi
	mov [esp+0x4], edi
	mov dword [esp], _cstring_bg_shock_screenb1
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [bg_shock_screenBlurBlendFadeTime], eax
	mov dword [esp+0x14], _cstring_in_seconds_how_s
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x447a0000
	mov [esp+0x8], ebx
	mov [esp+0x4], edi
	mov dword [esp], _cstring_bg_shock_screenf
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [bg_shock_screenFlashWhiteFadeTime], eax
	mov dword [esp+0x14], _cstring_in_seconds_how_s1
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x447a0000
	mov [esp+0x8], ebx
	mov [esp+0x4], edi
	mov dword [esp], _cstring_bg_shock_screenf1
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [bg_shock_screenFlashShotFadeTime], eax
	mov dword [esp+0x14], _cstring_the_period_of_th
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x447a0000
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x3f400000
	mov dword [esp], _cstring_bg_shock_viewkic
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [bg_shock_viewKickPeriod], eax
	mov dword [esp+0x14], _cstring_shell_shock_kick
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], edi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x3d4ccccd
	mov dword [esp], _cstring_bg_shock_viewkic1
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [bg_shock_viewKickRadius], eax
	mov dword [esp+0x14], _cstring_the_time_for_the
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x447a0000
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x40400000
	mov dword [esp], _cstring_bg_shock_viewkic2
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [bg_shock_viewKickFadeTime], eax
	mov dword [esp+0xc], _cstring_play_shell_shock
	mov dword [esp+0x8], 0x80
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_bg_shock_sound
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [bg_shock_sound], eax
	mov dword [esp+0x14], _cstring_shell_shock_soun
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x447a0000
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x3e800000
	mov dword [esp], _cstring_bg_shock_soundfa
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [bg_shock_soundFadeInTime], eax
	mov dword [esp+0x14], _cstring_shell_shock_soun1
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x447a0000
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x40200000
	mov dword [esp], _cstring_bg_shock_soundfa1
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [bg_shock_soundFadeOutTime], eax
	mov dword [esp+0x14], _cstring_shell_shock_soun2
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x447a0000
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x3fc00000
	mov dword [esp], _cstring_bg_shock_soundlo2
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [bg_shock_soundLoopFadeTime], eax
	mov dword [esp+0x14], _cstring_sound_loop_end_o
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x447a0000
	mov dword [esp+0x8], 0xc1200000
	mov dword [esp+0x4], 0xc0400000
	mov dword [esp], _cstring_bg_shock_soundlo3
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [bg_shock_soundLoopEndDelay], eax
	mov dword [esp+0x10], _cstring_shell_shock_soun3
	mov dword [esp+0xc], 0x80
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], bg_soundRoomTypes
	mov dword [esp], _cstring_bg_shock_soundro
	call _Z17Dvar_RegisterEnumPKcPS0_itS0_
	mov [bg_shock_soundRoomType], eax
	mov dword [esp+0x14], _cstring_shell_shock_soun4
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], edi
	mov [esp+0x8], ebx
	mov [esp+0x4], edi
	mov dword [esp], _cstring_bg_shock_sounddr
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [bg_shock_soundDryLevel], eax
	mov dword [esp+0x14], _cstring_shell_shock_soun5
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], edi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x3f000000
	mov dword [esp], _cstring_bg_shock_soundwe
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [bg_shock_soundWetLevel], eax
	mov dword [esp+0x14], _cstring_the_delay_from_t
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x447a0000
	mov dword [esp+0x8], 0xc47a0000
	mov dword [esp+0x4], 0x40000000
	mov dword [esp], _cstring_bg_shock_soundmo
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [bg_shock_soundModEndDelay], eax
	xor esi, esi
	mov edi, bg_shock_volume
	mov ebx, bgShockChannelNames
	jmp _Z16BG_RegisterDvarsv_10
_Z16BG_RegisterDvarsv_20:
	mov [esp], esi
	call _Z21SND_GetEntChannelNamei
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_bg_shock_volume_
	mov [esp], ebx
	call sprintf
	mov dword [esp+0x14], _cstring_null
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x3f800000
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x3f000000
	mov [esp], ebx
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [edi-0x4], eax
	add esi, 0x1
	add ebx, 0x50
_Z16BG_RegisterDvarsv_10:
	call _Z22SND_GetEntChannelCountv
	add edi, 0x4
	cmp esi, eax
	jl _Z16BG_RegisterDvarsv_20
	mov dword [esp+0xc], _cstring_alter_player_con
	mov dword [esp+0x8], 0x80
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_bg_shock_lookcon
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [bg_shock_lookControl], eax
	mov dword [esp+0x14], _cstring_maximum_pitch_mo
	mov dword [esp+0x10], 0x80
	mov edi, 0x7f7fffff
	mov [esp+0xc], edi
	xor esi, esi
	mov [esp+0x8], esi
	mov ebx, 0x42b40000
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_bg_shock_lookcon1
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [bg_shock_lookControl_maxpitchspeed], eax
	mov dword [esp+0x14], _cstring_maximum_yaw_move
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], edi
	mov [esp+0x8], esi
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_bg_shock_lookcon2
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [bg_shock_lookControl_maxyawspeed], eax
	mov dword [esp+0x14], _cstring_sensitivity_scal
	mov dword [esp+0x10], 0x80
	mov ebx, 0x40000000
	mov [esp+0xc], ebx
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x3f000000
	mov dword [esp], _cstring_bg_shock_lookcon3
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [bg_shock_lookControl_mousesensitivityscale], eax
	mov dword [esp+0x14], _cstring_the_time_for_the1
	mov dword [esp+0x10], 0x80
	mov edi, 0x447a0000
	mov [esp+0xc], edi
	mov dword [esp+0x8], 0x3a83126f
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_bg_shock_lookcon4
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [bg_shock_lookControl_fadeTime], eax
	mov dword [esp+0xc], _cstring_affect_players_m
	mov dword [esp+0x8], 0x80
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_bg_shock_movemen
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [bg_shock_movement], eax
	mov dword [esp+0x14], _cstring_the_maximum_rang
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], edi
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x42800000
	mov dword [esp], _cstring_player_meleerang
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [player_meleeRange], eax
	mov dword [esp+0x14], _cstring_the_width_of_the
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], edi
	mov [esp+0x8], esi
	mov ebx, 0x41200000
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_player_meleewidt
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [player_meleeWidth], eax
	mov dword [esp+0x14], _cstring_the_height_of_th
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], edi
	mov [esp+0x8], esi
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_player_meleeheig
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [player_meleeHeight], eax
	mov dword [esp+0x14], _cstring_friction_used_du
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x459c4000
	mov dword [esp+0x8], 0x3f800000
	mov dword [esp+0x4], 0x44960000
	mov dword [esp], _cstring_player_meleechar
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [player_meleeChargeFriction], eax
	mov dword [esp+0x14], _cstring_seconds_after_a_
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x42700000
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x3e4ccccd
	mov dword [esp], _cstring_player_burstfire
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [player_burstFireCooldown], eax
	mov dword [esp+0x14], _cstring_min_distance_a_p
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x44800000
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x41f00000
	mov dword [esp], _cstring_bullet_penetrati
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [bullet_penetrationMinFxDist], eax
	call _Z18Jump_RegisterDvarsv
	call _Z20Mantle_RegisterDvarsv
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z19Perks_RegisterDvarsv


;BG_CheckProneValid(int, float const*, float, float, float, float*, float*, unsigned char, unsigned char, unsigned char, unsigned char, proneCheckType_t, float)
_Z18BG_CheckProneValidiPKffffPfS1_hhhh16proneCheckType_tf:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x19c
	mov edi, [ebp+0xc]
	movzx eax, byte [ebp+0x28]
	mov [ebp-0xe9], al
	movzx ebx, byte [ebp+0x2c]
	movzx edx, byte [ebp+0x30]
	mov eax, pmoveHandlers
	mov edx, [eax+edx*8]
	mov [ebp-0xd8], edx
	cmp dword [ebp+0x34], 0x1
	sbb esi, esi
	xor si, si
	add esi, 0x820011
	cmp byte [ebp+0x24], 0x0
	jz _Z18BG_CheckProneValidiPKffffPfS1_hhhh16proneCheckType_tf_10
_Z18BG_CheckProneValidiPKffffPfS1_hhhh16proneCheckType_tf_130:
	cmp byte [ebp-0xe9], 0x0
	jz _Z18BG_CheckProneValidiPKffffPfS1_hhhh16proneCheckType_tf_20
	test bl, bl
	jz _Z18BG_CheckProneValidiPKffffPfS1_hhhh16proneCheckType_tf_30
_Z18BG_CheckProneValidiPKffffPfS1_hhhh16proneCheckType_tf_20:
	mov eax, 0xc0c00000
	mov [ebp-0x24], eax
	mov [ebp-0x20], eax
	mov [ebp-0x1c], eax
	mov dword [ebp-0x54], 0x40c00000
	mov dword [ebp-0x50], 0x40c00000
	mov dword [ebp-0x4c], 0x40c00000
	xor eax, eax
	mov [ebp-0x3c], eax
	movss xmm0, dword [ebp+0x18]
	subss xmm0, [_float_180_00000000]
	movss [ebp-0x38], xmm0
	mov [ebp-0x34], eax
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	lea ebx, [ebp-0x48]
	mov [esp+0x4], ebx
	lea eax, [ebp-0x3c]
	mov [esp], eax
	call _Z12AngleVectorsPKfPfS1_S1_
	movss xmm0, dword [ebp+0x14]
	subss xmm0, [_float_6_00000000]
	movss [ebp-0xdc], xmm0
	mov eax, [edi]
	mov [ebp-0x30], eax
	lea eax, [edi+0x4]
	mov [ebp-0xd4], eax
	mov eax, [edi+0x4]
	mov [ebp-0x2c], eax
	lea eax, [edi+0x8]
	mov [ebp-0xd0], eax
	mov eax, [edi+0x8]
	mov [ebp-0x28], eax
	addss xmm0, [ebp-0x28]
	movss [ebp-0x28], xmm0
	movss xmm0, dword [ebp+0x38]
	subss xmm0, [_float_6_00000000]
	movss [ebp-0xcc], xmm0
	mulss xmm0, [ebp-0x48]
	addss xmm0, [ebp-0x30]
	movss [ebp-0x3c], xmm0
	movss xmm0, dword [ebp-0xcc]
	mulss xmm0, [ebp-0x44]
	addss xmm0, [ebp-0x2c]
	movss [ebp-0x38], xmm0
	movss xmm0, dword [ebp-0xcc]
	mulss xmm0, [ebp-0x40]
	addss xmm0, [ebp-0x28]
	movss [ebp-0x34], xmm0
	mov [esp+0x18], esi
	mov eax, [ebp+0x8]
	mov [esp+0x14], eax
	lea eax, [ebp-0x3c]
	mov [esp+0x10], eax
	lea eax, [ebp-0x54]
	mov [esp+0xc], eax
	lea eax, [ebp-0x24]
	mov [esp+0x8], eax
	lea eax, [ebp-0x30]
	mov [esp+0x4], eax
	lea eax, [ebp-0x8c]
	mov [esp], eax
	call dword [ebp-0xd8]
	movss xmm5, dword [ebp-0x8c]
	ucomiss xmm5, [_float_1_00000000]
	jb _Z18BG_CheckProneValidiPKffffPfS1_hhhh16proneCheckType_tf_40
_Z18BG_CheckProneValidiPKffffPfS1_hhhh16proneCheckType_tf_110:
	movss xmm7, dword [ebp+0x38]
	xor ebx, ebx
	movss xmm1, dword [_float_18_00000000]
	movss [ebp-0xfc], xmm1
	movaps xmm2, xmm1
_Z18BG_CheckProneValidiPKffffPfS1_hhhh16proneCheckType_tf_150:
	movss xmm0, dword [ebp-0x30]
	movss xmm6, dword [ebp-0x3c]
	subss xmm6, xmm0
	mulss xmm6, xmm5
	addss xmm6, xmm0
	movss xmm0, dword [ebp-0x2c]
	movss xmm4, dword [ebp-0x38]
	subss xmm4, xmm0
	mulss xmm4, xmm5
	addss xmm4, xmm0
	movss xmm0, dword [ebp-0x28]
	movss xmm3, dword [ebp-0x34]
	subss xmm3, xmm0
	mulss xmm3, xmm5
	addss xmm3, xmm0
	mulss xmm2, [ebp-0x48]
	addss xmm2, [edi]
	movss [ebp-0x30], xmm2
	movss xmm0, dword [ebp-0xfc]
	mulss xmm0, [ebp-0x44]
	mov eax, [ebp-0xd4]
	addss xmm0, [eax]
	movss [ebp-0x2c], xmm0
	movss xmm1, dword [ebp-0xfc]
	mulss xmm1, [ebp-0x40]
	movss [ebp-0xfc], xmm1
	mov eax, [ebp-0xd0]
	addss xmm1, [eax]
	movss [ebp-0x28], xmm1
	movss xmm1, dword [ebp-0xdc]
	addss xmm1, [ebp-0x28]
	movss [ebp-0x28], xmm1
	movss [ebp-0x3c], xmm2
	movss [ebp-0x38], xmm0
	movss xmm0, dword [ebp+0x10]
	mulss xmm0, [_float_2_50000000]
	addss xmm0, [ebp-0xdc]
	movss xmm2, dword [_float_6_00000000]
	subss xmm0, xmm2
	subss xmm1, xmm0
	movss [ebp-0x34], xmm1
	mov [esp+0x18], esi
	mov eax, [ebp+0x8]
	mov [esp+0x14], eax
	lea eax, [ebp-0x3c]
	mov [esp+0x10], eax
	lea eax, [ebp-0x54]
	mov [esp+0xc], eax
	lea eax, [ebp-0x24]
	mov [esp+0x8], eax
	lea eax, [ebp-0x30]
	mov [esp+0x4], eax
	lea eax, [ebp-0x8c]
	mov [esp], eax
	movss [ebp-0x118], xmm0
	movss [ebp-0x138], xmm2
	movss [ebp-0x148], xmm3
	movss [ebp-0x158], xmm4
	movss [ebp-0x168], xmm6
	movss [ebp-0x178], xmm7
	call dword [ebp-0xd8]
	movss xmm1, dword [ebp-0x8c]
	movss xmm0, dword [ebp-0x118]
	movss xmm2, dword [ebp-0x138]
	movss xmm3, dword [ebp-0x148]
	movss xmm4, dword [ebp-0x158]
	movss xmm6, dword [ebp-0x168]
	movss xmm7, dword [ebp-0x178]
	ucomiss xmm1, [_float_1_00000000]
	jp _Z18BG_CheckProneValidiPKffffPfS1_hhhh16proneCheckType_tf_50
	jz _Z18BG_CheckProneValidiPKffffPfS1_hhhh16proneCheckType_tf_60
_Z18BG_CheckProneValidiPKffffPfS1_hhhh16proneCheckType_tf_50:
	cmp byte [ebp-0x62], 0x0
	jz _Z18BG_CheckProneValidiPKffffPfS1_hhhh16proneCheckType_tf_30
	mulss xmm0, xmm1
	addss xmm0, xmm2
	movss xmm5, dword [ebp-0x30]
	movss [ebp-0xc8], xmm5
	movss xmm5, dword [ebp-0x3c]
	subss xmm5, [ebp-0xc8]
	mulss xmm5, xmm1
	movss [ebp-0xb8], xmm5
	movss xmm5, dword [ebp-0xc8]
	addss xmm5, [ebp-0xb8]
	movss [ebp-0xb8], xmm5
	movss xmm5, dword [ebp-0x2c]
	movss [ebp-0xc4], xmm5
	movss xmm5, dword [ebp-0x38]
	subss xmm5, [ebp-0xc4]
	mulss xmm5, xmm1
	movss [ebp-0xbc], xmm5
	movss xmm5, dword [ebp-0xc4]
	addss xmm5, [ebp-0xbc]
	movss [ebp-0xbc], xmm5
	movss xmm5, dword [ebp-0x28]
	movss [ebp-0x180], xmm5
	movss xmm5, dword [ebp-0x34]
	subss xmm5, [ebp-0x180]
	mulss xmm1, xmm5
	addss xmm1, [ebp-0x180]
	subss xmm1, xmm2
	movss [ebp-0x9c], xmm1
	test ebx, ebx
	jz _Z18BG_CheckProneValidiPKffffPfS1_hhhh16proneCheckType_tf_70
	subss xmm7, xmm0
	mulss xmm0, [_float__0_75000000]
	ucomiss xmm0, xmm7
	jbe _Z18BG_CheckProneValidiPKffffPfS1_hhhh16proneCheckType_tf_80
_Z18BG_CheckProneValidiPKffffPfS1_hhhh16proneCheckType_tf_60:
	cmp byte [ebp-0xe9], 0x0
	jnz _Z18BG_CheckProneValidiPKffffPfS1_hhhh16proneCheckType_tf_30
	mov eax, [ebp+0x1c]
	test eax, eax
	jz _Z18BG_CheckProneValidiPKffffPfS1_hhhh16proneCheckType_tf_90
	mov eax, [ebp+0x1c]
	mov dword [eax], 0x0
_Z18BG_CheckProneValidiPKffffPfS1_hhhh16proneCheckType_tf_90:
	mov eax, [ebp+0x20]
	test eax, eax
	jz _Z18BG_CheckProneValidiPKffffPfS1_hhhh16proneCheckType_tf_100
	mov eax, [ebp+0x20]
	mov dword [eax], 0x0
	mov eax, 0x1
	add esp, 0x19c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z18BG_CheckProneValidiPKffffPfS1_hhhh16proneCheckType_tf_40:
	jp _Z18BG_CheckProneValidiPKffffPfS1_hhhh16proneCheckType_tf_110
	cmp byte [ebp-0xe9], 0x0
	jnz _Z18BG_CheckProneValidiPKffffPfS1_hhhh16proneCheckType_tf_120
_Z18BG_CheckProneValidiPKffffPfS1_hhhh16proneCheckType_tf_30:
	xor eax, eax
_Z18BG_CheckProneValidiPKffffPfS1_hhhh16proneCheckType_tf_230:
	add esp, 0x19c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z18BG_CheckProneValidiPKffffPfS1_hhhh16proneCheckType_tf_10:
	movss xmm0, dword [ebp+0x10]
	xorps xmm0, [_data16_80000000]
	movss [ebp-0x24], xmm0
	movss [ebp-0x20], xmm0
	mov dword [ebp-0x1c], 0x0
	movss xmm0, dword [ebp+0x10]
	movss [ebp-0x54], xmm0
	movss [ebp-0x50], xmm0
	movss xmm1, dword [ebp+0x14]
	movss [ebp-0x4c], xmm1
	mov edx, [edi]
	mov [ebp-0x30], edx
	mov eax, [edi+0x4]
	mov [ebp-0x2c], eax
	movss xmm0, dword [edi+0x8]
	movss [ebp-0x28], xmm0
	mov [ebp-0x3c], edx
	mov [ebp-0x38], eax
	addss xmm0, [_float_10_00000000]
	movss [ebp-0x34], xmm0
	mov [esp+0x18], esi
	mov eax, [ebp+0x8]
	mov [esp+0x14], eax
	lea eax, [ebp-0x3c]
	mov [esp+0x10], eax
	lea eax, [ebp-0x54]
	mov [esp+0xc], eax
	lea eax, [ebp-0x24]
	mov [esp+0x8], eax
	lea eax, [ebp-0x30]
	mov [esp+0x4], eax
	lea eax, [ebp-0x8c]
	mov [esp], eax
	call dword [ebp-0xd8]
	cmp byte [ebp-0x64], 0x0
	jz _Z18BG_CheckProneValidiPKffffPfS1_hhhh16proneCheckType_tf_130
	jmp _Z18BG_CheckProneValidiPKffffPfS1_hhhh16proneCheckType_tf_30
_Z18BG_CheckProneValidiPKffffPfS1_hhhh16proneCheckType_tf_120:
	movss xmm7, dword [ebp-0xcc]
	mulss xmm7, xmm5
	addss xmm7, [_float_6_00000000]
	movss xmm0, dword [ebp+0x10]
	addss xmm0, [_float_2_00000000]
	ucomiss xmm0, xmm7
	ja _Z18BG_CheckProneValidiPKffffPfS1_hhhh16proneCheckType_tf_30
	movss xmm0, dword [ebp-0xdc]
	mulss xmm0, [_float_0_69999999]
	movss xmm1, dword [_float_18_00000000]
	movss [ebp-0xfc], xmm1
	addss xmm0, xmm1
	movss [ebp-0xe8], xmm0
	ucomiss xmm0, xmm7
	ja _Z18BG_CheckProneValidiPKffffPfS1_hhhh16proneCheckType_tf_140
_Z18BG_CheckProneValidiPKffffPfS1_hhhh16proneCheckType_tf_240:
	mov ebx, 0x1
	movss xmm2, dword [ebp-0xfc]
	jmp _Z18BG_CheckProneValidiPKffffPfS1_hhhh16proneCheckType_tf_150
_Z18BG_CheckProneValidiPKffffPfS1_hhhh16proneCheckType_tf_80:
	subss xmm6, [ebp-0xb8]
	subss xmm4, [ebp-0xbc]
	subss xmm3, xmm1
	movss [ebp-0x58], xmm3
	movss xmm3, dword [ebp-0x48]
	mulss xmm3, xmm2
	addss xmm3, xmm6
	movss [ebp-0x60], xmm3
	movss xmm1, dword [ebp-0x44]
	mulss xmm1, xmm2
	addss xmm1, xmm4
	movss [ebp-0x5c], xmm1
	movss xmm0, dword [ebp-0x40]
	mulss xmm0, xmm2
	addss xmm0, [ebp-0x58]
	addss xmm0, xmm2
	movss [ebp-0x58], xmm0
	movaps xmm2, xmm3
	mulss xmm2, xmm3
	mulss xmm1, xmm1
	addss xmm2, xmm1
	mulss xmm0, xmm0
	addss xmm2, xmm0
	sqrtss xmm1, xmm2
	movaps xmm0, xmm1
	xorps xmm0, [_data16_80000000]
	ucomiss xmm0, [_float_0_00000000]
	jb _Z18BG_CheckProneValidiPKffffPfS1_hhhh16proneCheckType_tf_160
	movss xmm2, dword [_float_1_00000000]
_Z18BG_CheckProneValidiPKffffPfS1_hhhh16proneCheckType_tf_260:
	mulss xmm3, xmm2
	movss [ebp-0x60], xmm3
	movaps xmm0, xmm2
	mulss xmm0, [ebp-0x5c]
	movss [ebp-0x5c], xmm0
	mulss xmm2, [ebp-0x58]
	movss [ebp-0x58], xmm2
	movss xmm1, dword [ebp-0xcc]
	subss xmm1, [_float_18_00000000]
	movaps xmm0, xmm1
	mulss xmm0, xmm3
	addss xmm0, [ebp-0xc8]
	movss [ebp-0x3c], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x5c]
	addss xmm0, [ebp-0xc4]
	movss [ebp-0x38], xmm0
	mulss xmm2, xmm1
	addss xmm2, [ebp-0x180]
	movss [ebp-0x34], xmm2
	movss xmm0, dword [ebp-0xcc]
	mulss xmm0, [ebp-0x48]
	addss xmm0, [edi]
	addss xmm0, [ebp-0x3c]
	movss xmm1, dword [_float_0_50000000]
	mulss xmm0, xmm1
	movss [ebp-0x3c], xmm0
	movss xmm0, dword [ebp-0xcc]
	mulss xmm0, [ebp-0x44]
	movss [ebp-0xcc], xmm0
	mov eax, [ebp-0xd4]
	addss xmm0, [eax]
	movss [ebp-0xcc], xmm0
	addss xmm0, [ebp-0x38]
	mulss xmm1, xmm0
	movss [ebp-0x38], xmm1
	mov [esp+0x18], esi
	mov eax, [ebp+0x8]
	mov [esp+0x14], eax
	lea eax, [ebp-0x3c]
	mov [esp+0x10], eax
	lea eax, [ebp-0x54]
	mov [esp+0xc], eax
	lea eax, [ebp-0x24]
	mov [esp+0x8], eax
	lea eax, [ebp-0x30]
	mov [esp+0x4], eax
	lea eax, [ebp-0x8c]
	mov [esp], eax
	call dword [ebp-0xd8]
	movss xmm5, dword [ebp-0x8c]
	ucomiss xmm5, [_float_1_00000000]
	jb _Z18BG_CheckProneValidiPKffffPfS1_hhhh16proneCheckType_tf_170
_Z18BG_CheckProneValidiPKffffPfS1_hhhh16proneCheckType_tf_270:
	movss xmm0, dword [ebp-0x30]
	movss xmm6, dword [ebp-0x3c]
	subss xmm6, xmm0
	mulss xmm6, xmm5
	addss xmm6, xmm0
	movss xmm0, dword [ebp-0x2c]
	movss xmm4, dword [ebp-0x38]
	subss xmm4, xmm0
	mulss xmm4, xmm5
	addss xmm4, xmm0
	movss xmm0, dword [ebp-0x28]
	movss xmm3, dword [ebp-0x34]
	subss xmm3, xmm0
	mulss xmm3, xmm5
	addss xmm3, xmm0
_Z18BG_CheckProneValidiPKffffPfS1_hhhh16proneCheckType_tf_70:
	movss [ebp-0x30], xmm6
	movss [ebp-0x2c], xmm4
	movss [ebp-0x28], xmm3
	movss [ebp-0x3c], xmm6
	movss [ebp-0x38], xmm4
	movaps xmm0, xmm3
	subss xmm0, [ebp-0x9c]
	addss xmm0, xmm0
	addss xmm0, [ebp+0x10]
	subss xmm3, xmm0
	movss [ebp-0x34], xmm3
	mov [esp+0x18], esi
	mov eax, [ebp+0x8]
	mov [esp+0x14], eax
	lea eax, [ebp-0x3c]
	mov [esp+0x10], eax
	lea eax, [ebp-0x54]
	mov [esp+0xc], eax
	lea eax, [ebp-0x24]
	mov [esp+0x8], eax
	lea eax, [ebp-0x30]
	mov [esp+0x4], eax
	lea eax, [ebp-0x8c]
	mov [esp], eax
	call dword [ebp-0xd8]
	movss xmm1, dword [ebp-0x8c]
	ucomiss xmm1, [_float_1_00000000]
	jp _Z18BG_CheckProneValidiPKffffPfS1_hhhh16proneCheckType_tf_180
	jz _Z18BG_CheckProneValidiPKffffPfS1_hhhh16proneCheckType_tf_60
_Z18BG_CheckProneValidiPKffffPfS1_hhhh16proneCheckType_tf_180:
	cmp byte [ebp-0x62], 0x0
	jz _Z18BG_CheckProneValidiPKffffPfS1_hhhh16proneCheckType_tf_30
	movss xmm0, dword [ebp-0x30]
	movss xmm2, dword [ebp-0x3c]
	subss xmm2, xmm0
	mulss xmm2, xmm1
	addss xmm0, xmm2
	movss [ebp-0xa0], xmm0
	movss xmm0, dword [ebp-0x2c]
	movss xmm5, dword [ebp-0x38]
	subss xmm5, xmm0
	mulss xmm5, xmm1
	addss xmm0, xmm5
	movss [ebp-0xc0], xmm0
	movss xmm0, dword [ebp-0x28]
	movss xmm2, dword [ebp-0x34]
	subss xmm2, xmm0
	mulss xmm1, xmm2
	addss xmm0, xmm1
	subss xmm0, [_float_6_00000000]
	movss [ebp-0xa4], xmm0
	movss xmm5, dword [edi]
	movss [ebp-0xac], xmm5
	mov eax, [ebp-0xd4]
	movss xmm0, dword [eax]
	movss [ebp-0xb0], xmm0
	mov eax, [ebp-0xd0]
	movss xmm0, dword [eax]
	movss [ebp-0xb4], xmm0
	movaps xmm0, xmm5
	subss xmm0, [ebp-0xb8]
	movss [ebp-0x60], xmm0
	movss xmm0, dword [ebp-0xb0]
	subss xmm0, [ebp-0xbc]
	movss [ebp-0x5c], xmm0
	movss xmm0, dword [ebp-0xb4]
	subss xmm0, [ebp-0x9c]
	movss [ebp-0x58], xmm0
	lea ebx, [ebp-0x60]
	mov [esp], ebx
	call _Z10vectopitchPKf
	fstp dword [ebp-0x17c]
	movss xmm1, dword [ebp-0x17c]
	mulss xmm1, [_float_0_00277778]
	movaps xmm0, xmm1
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	movss [ebp-0x128], xmm1
	call floorf
	fstp dword [ebp-0xf0]
	movss xmm1, dword [ebp-0x128]
	subss xmm1, [ebp-0xf0]
	movss xmm2, dword [_float_360_00000000]
	mulss xmm2, xmm1
	movss [ebp-0xe4], xmm2
	movss xmm0, dword [ebp-0xb8]
	subss xmm0, [ebp-0xa0]
	movss [ebp-0x60], xmm0
	movss xmm0, dword [ebp-0xbc]
	subss xmm0, [ebp-0xc0]
	movss [ebp-0x5c], xmm0
	movss xmm0, dword [ebp-0x9c]
	subss xmm0, [ebp-0xa4]
	movss [ebp-0x58], xmm0
	mov [esp], ebx
	call _Z10vectopitchPKf
	fstp dword [ebp-0x17c]
	movss xmm1, dword [ebp-0x17c]
	mulss xmm1, [_float_0_00277778]
	movaps xmm0, xmm1
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	movss [ebp-0x128], xmm1
	call floorf
	fstp dword [ebp-0xf4]
	movss xmm1, dword [ebp-0x128]
	subss xmm1, [ebp-0xf4]
	movss xmm5, dword [_float_360_00000000]
	mulss xmm5, xmm1
	movss [ebp-0xe0], xmm5
	movss xmm0, dword [ebp-0xe4]
	subss xmm0, xmm5
	mulss xmm0, [_float_0_00277778]
	movss xmm1, dword [_float_0_50000000]
	addss xmm1, xmm0
	movss [esp], xmm1
	movss [ebp-0x118], xmm0
	call floorf
	fstp dword [ebp-0xf8]
	movss xmm0, dword [ebp-0x118]
	subss xmm0, [ebp-0xf8]
	mulss xmm0, [_float_360_00000000]
	ucomiss xmm0, [_float__50_00000000]
	jp _Z18BG_CheckProneValidiPKffffPfS1_hhhh16proneCheckType_tf_190
	jb _Z18BG_CheckProneValidiPKffffPfS1_hhhh16proneCheckType_tf_200
_Z18BG_CheckProneValidiPKffffPfS1_hhhh16proneCheckType_tf_190:
	ucomiss xmm0, [_float_70_00000000]
	ja _Z18BG_CheckProneValidiPKffffPfS1_hhhh16proneCheckType_tf_200
	mov edi, 0x1
_Z18BG_CheckProneValidiPKffffPfS1_hhhh16proneCheckType_tf_250:
	mov eax, 0x80000000
	mov [ebp-0x24], eax
	mov [ebp-0x20], eax
	mov [ebp-0x1c], eax
	xor eax, eax
	mov [ebp-0x54], eax
	mov [ebp-0x50], eax
	mov [ebp-0x4c], eax
	movss xmm0, dword [ebp-0xac]
	movss [ebp-0x30], xmm0
	movss xmm1, dword [ebp-0xb0]
	movss [ebp-0x2c], xmm1
	movss xmm2, dword [_float_5_00000000]
	addss xmm2, [ebp-0xb4]
	movss [ebp-0x28], xmm2
	movss xmm5, dword [ebp-0xb8]
	movss [ebp-0x3c], xmm5
	movss xmm0, dword [ebp-0xbc]
	movss [ebp-0x38], xmm0
	movss xmm0, dword [ebp-0x9c]
	addss xmm0, [_float_5_00000000]
	movss [ebp-0x34], xmm0
	mov [esp+0x18], esi
	mov eax, [ebp+0x8]
	mov [esp+0x14], eax
	lea eax, [ebp-0x3c]
	mov [esp+0x10], eax
	lea eax, [ebp-0x54]
	mov [esp+0xc], eax
	lea eax, [ebp-0x24]
	mov [esp+0x8], eax
	lea eax, [ebp-0x30]
	mov [esp+0x4], eax
	lea eax, [ebp-0x8c]
	mov [esp], eax
	call dword [ebp-0xd8]
	xor ebx, ebx
	movss xmm0, dword [_float_1_00000000]
	ucomiss xmm0, [ebp-0x8c]
	cmova edi, ebx
	mov eax, [ebp-0x3c]
	mov [ebp-0x30], eax
	mov eax, [ebp-0x38]
	mov [ebp-0x2c], eax
	mov eax, [ebp-0x34]
	mov [ebp-0x28], eax
	movss xmm1, dword [ebp-0xa0]
	movss [ebp-0x3c], xmm1
	movss xmm2, dword [ebp-0xc0]
	movss [ebp-0x38], xmm2
	movss xmm5, dword [_float_5_00000000]
	addss xmm5, [ebp-0xa4]
	movss [ebp-0x34], xmm5
	mov [esp+0x18], esi
	mov eax, [ebp+0x8]
	mov [esp+0x14], eax
	lea eax, [ebp-0x3c]
	mov [esp+0x10], eax
	lea eax, [ebp-0x54]
	mov [esp+0xc], eax
	lea eax, [ebp-0x24]
	mov [esp+0x8], eax
	lea eax, [ebp-0x30]
	mov [esp+0x4], eax
	lea eax, [ebp-0x8c]
	mov [esp], eax
	call dword [ebp-0xd8]
	movss xmm0, dword [_float_1_00000000]
	ucomiss xmm0, [ebp-0x8c]
	cmova edi, ebx
	mov eax, [ebp+0x1c]
	test eax, eax
	jz _Z18BG_CheckProneValidiPKffffPfS1_hhhh16proneCheckType_tf_210
	movss xmm0, dword [ebp-0xe4]
	mov eax, [ebp+0x1c]
	movss [eax], xmm0
_Z18BG_CheckProneValidiPKffffPfS1_hhhh16proneCheckType_tf_210:
	mov eax, [ebp+0x20]
	test eax, eax
	jz _Z18BG_CheckProneValidiPKffffPfS1_hhhh16proneCheckType_tf_220
	movss xmm0, dword [ebp-0xe0]
	mov eax, [ebp+0x20]
	movss [eax], xmm0
_Z18BG_CheckProneValidiPKffffPfS1_hhhh16proneCheckType_tf_220:
	mov eax, edi
	test al, al
	jz _Z18BG_CheckProneValidiPKffffPfS1_hhhh16proneCheckType_tf_60
_Z18BG_CheckProneValidiPKffffPfS1_hhhh16proneCheckType_tf_100:
	mov eax, 0x1
	jmp _Z18BG_CheckProneValidiPKffffPfS1_hhhh16proneCheckType_tf_230
_Z18BG_CheckProneValidiPKffffPfS1_hhhh16proneCheckType_tf_140:
	movss xmm1, dword [_float_22_00000000]
	addss xmm1, [ebp-0x34]
	movss [ebp-0x34], xmm1
	movss xmm0, dword [ebp-0x3c]
	subss xmm0, [ebp-0x30]
	movss [ebp-0x60], xmm0
	movss xmm0, dword [ebp-0x38]
	subss xmm0, [ebp-0x2c]
	movss [ebp-0x5c], xmm0
	subss xmm1, [ebp-0x28]
	movss [ebp-0x58], xmm1
	mov [esp+0x4], ebx
	lea eax, [ebp-0x60]
	mov [esp], eax
	call _Z15Vec3NormalizeToPKfPf
	fstp dword [ebp-0xa8]
	mov [esp+0x18], esi
	mov eax, [ebp+0x8]
	mov [esp+0x14], eax
	lea eax, [ebp-0x3c]
	mov [esp+0x10], eax
	lea eax, [ebp-0x54]
	mov [esp+0xc], eax
	lea eax, [ebp-0x24]
	mov [esp+0x8], eax
	lea eax, [ebp-0x30]
	mov [esp+0x4], eax
	lea eax, [ebp-0x8c]
	mov [esp], eax
	call dword [ebp-0xd8]
	movss xmm5, dword [ebp-0x8c]
	movss xmm0, dword [_float_1_00000000]
	ucomiss xmm0, xmm5
	jbe _Z18BG_CheckProneValidiPKffffPfS1_hhhh16proneCheckType_tf_110
	movss xmm7, dword [ebp-0xa8]
	mulss xmm7, xmm5
	addss xmm7, [_float_6_00000000]
	movss xmm0, dword [ebp-0xe8]
	ucomiss xmm0, xmm7
	jbe _Z18BG_CheckProneValidiPKffffPfS1_hhhh16proneCheckType_tf_240
	jmp _Z18BG_CheckProneValidiPKffffPfS1_hhhh16proneCheckType_tf_30
_Z18BG_CheckProneValidiPKffffPfS1_hhhh16proneCheckType_tf_200:
	xor edi, edi
	jmp _Z18BG_CheckProneValidiPKffffPfS1_hhhh16proneCheckType_tf_250
_Z18BG_CheckProneValidiPKffffPfS1_hhhh16proneCheckType_tf_160:
	movss xmm2, dword [_float_1_00000000]
	divss xmm2, xmm1
	jmp _Z18BG_CheckProneValidiPKffffPfS1_hhhh16proneCheckType_tf_260
_Z18BG_CheckProneValidiPKffffPfS1_hhhh16proneCheckType_tf_170:
	jp _Z18BG_CheckProneValidiPKffffPfS1_hhhh16proneCheckType_tf_270
	movss xmm1, dword [ebp-0x30]
	movss xmm0, dword [ebp-0x3c]
	subss xmm0, xmm1
	mulss xmm0, xmm5
	addss xmm1, xmm0
	movss [ebp-0x30], xmm1
	movss xmm1, dword [ebp-0x2c]
	movss xmm0, dword [ebp-0x38]
	subss xmm0, xmm1
	mulss xmm0, xmm5
	addss xmm1, xmm0
	movss [ebp-0x2c], xmm1
	movss xmm0, dword [ebp-0x28]
	movss xmm2, dword [ebp-0x34]
	movaps xmm1, xmm2
	subss xmm1, xmm0
	mulss xmm5, xmm1
	addss xmm0, xmm5
	addss xmm0, [_float_18_00000000]
	movss [ebp-0x28], xmm0
	addss xmm2, [_float_18_00000000]
	movss [ebp-0x34], xmm2
	mov [esp+0x18], esi
	mov eax, [ebp+0x8]
	mov [esp+0x14], eax
	lea eax, [ebp-0x3c]
	mov [esp+0x10], eax
	lea eax, [ebp-0x54]
	mov [esp+0xc], eax
	lea eax, [ebp-0x24]
	mov [esp+0x8], eax
	lea eax, [ebp-0x30]
	mov [esp+0x4], eax
	lea eax, [ebp-0x8c]
	mov [esp], eax
	call dword [ebp-0xd8]
	movss xmm0, dword [_float_1_00000000]
	ucomiss xmm0, [ebp-0x8c]
	ja _Z18BG_CheckProneValidiPKffffPfS1_hhhh16proneCheckType_tf_60
	movss xmm5, dword [ebp-0x8c]
	jmp _Z18BG_CheckProneValidiPKffffPfS1_hhhh16proneCheckType_tf_270


;BG_CanItemBeGrabbed(entityState_s const*, playerState_s const*, int)
_Z19BG_CanItemBeGrabbedPK13entityState_sPK13playerState_si:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov esi, [ebp+0x8]
	mov edi, [ebp+0xc]
	cmp byte [edi+0x10], 0x0
	js _Z19BG_CanItemBeGrabbedPK13entityState_sPK13playerState_si_10
	mov edx, [esi+0x88]
	lea eax, [edx-0x1]
	cmp eax, 0x7fe
	ja _Z19BG_CanItemBeGrabbedPK13entityState_sPK13playerState_si_20
_Z19BG_CanItemBeGrabbedPK13entityState_sPK13playerState_si_60:
	mov eax, [esi+0x8c]
	cmp eax, [edi+0xdc]
	jz _Z19BG_CanItemBeGrabbedPK13entityState_sPK13playerState_si_10
	test byte [edi+0xe], 0x10
	jz _Z19BG_CanItemBeGrabbedPK13entityState_sPK13playerState_si_30
_Z19BG_CanItemBeGrabbedPK13entityState_sPK13playerState_si_10:
	xor eax, eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19BG_CanItemBeGrabbedPK13entityState_sPK13playerState_si_30:
	mov ebx, [esi+0x88]
	and ebx, 0x8000007f
	js _Z19BG_CanItemBeGrabbedPK13entityState_sPK13playerState_si_40
_Z19BG_CanItemBeGrabbedPK13entityState_sPK13playerState_si_70:
	mov [esp], ebx
	call _Z15BG_GetWeaponDefj
	mov [ebp-0x1c], eax
	mov [esp], ebx
	mov ecx, [ebp+0x10]
	mov edx, edi
	mov eax, esi
	call _Z21WeaponEntCanBeGrabbedPK13entityState_sPK13playerState_sij
	test al, al
	jnz _Z19BG_CanItemBeGrabbedPK13entityState_sPK13playerState_si_50
	mov edx, [ebp-0x1c]
	mov eax, [edx+0x540]
	test eax, eax
	jz _Z19BG_CanItemBeGrabbedPK13entityState_sPK13playerState_si_10
	mov [esp], eax
	mov ecx, [ebp+0x10]
	mov edx, edi
	mov eax, esi
	call _Z21WeaponEntCanBeGrabbedPK13entityState_sPK13playerState_sij
	test al, al
	jz _Z19BG_CanItemBeGrabbedPK13entityState_sPK13playerState_si_10
_Z19BG_CanItemBeGrabbedPK13entityState_sPK13playerState_si_50:
	mov eax, 0x1
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19BG_CanItemBeGrabbedPK13entityState_sPK13playerState_si_20:
	mov eax, [esi+0x4]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], _cstring_bg_canitembegrab
	call _Z2vaPKcz
	mov [esp+0x4], eax
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z19BG_CanItemBeGrabbedPK13entityState_sPK13playerState_si_60
_Z19BG_CanItemBeGrabbedPK13entityState_sPK13playerState_si_40:
	sub ebx, 0x1
	or ebx, 0xffffff80
	add ebx, 0x1
	jmp _Z19BG_CanItemBeGrabbedPK13entityState_sPK13playerState_si_70


;BG_GetMaxSprintTime(playerState_s const*)
_Z19BG_GetMaxSprintTimePK13playerState_s:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov ebx, [ebp+0x8]
	movss xmm0, dword [_float_1000_00000000]
	movss [ebp-0xc], xmm0
	mov eax, [player_sprintTime]
	mulss xmm0, [eax+0xc]
	movss [ebp-0xc], xmm0
	mov eax, [ebx+0xe8]
	mov [esp], eax
	call _Z15BG_GetWeaponDefj
	movss xmm0, dword [ebp-0xc]
	mulss xmm0, [eax+0x420]
	test byte [ebx+0x5fd], 0x4
	jz _Z19BG_GetMaxSprintTimePK13playerState_s_10
	mov eax, perk_sprintMultiplier
	mov eax, [eax]
	mulss xmm0, [eax+0xc]
_Z19BG_GetMaxSprintTimePK13playerState_s_10:
	cvttss2si eax, xmm0
	cmp eax, 0x4000
	mov edx, 0x3fff
	cmovge eax, edx
	add esp, 0x24
	pop ebx
	pop ebp
	ret
	nop


;BG_FindItemForWeapon(int, int)
_Z20BG_FindItemForWeaponii:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0xc]
	shl eax, 0x7
	add eax, [ebp+0x8]
	shl eax, 0x2
	add eax, bg_itemlist
	pop ebp
	ret
	nop


;BG_GetEntityTypeName(int)
_Z20BG_GetEntityTypeNamei:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	cmp eax, 0x10
	jg _Z20BG_GetEntityTypeNamei_10
	mov eax, [eax*4+entityTypeNames]
	leave
	ret
_Z20BG_GetEntityTypeNamei_10:
	sub eax, 0x11
	mov [esp+0x8], eax
	mov eax, [eax*4+eventnames]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_event_s_i
	call _Z2vaPKcz
	leave
	ret
	nop


;BG_PlayerTouchesItem(playerState_s const*, entityState_s const*, int)
_Z20BG_PlayerTouchesItemPK13playerState_sPK13entityState_si:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov ebx, [ebp+0x8]
	lea eax, [ebp-0x14]
	mov [esp+0x8], eax
	mov eax, [ebp+0x10]
	mov [esp+0x4], eax
	mov eax, [ebp+0xc]
	add eax, 0xc
	mov [esp], eax
	call _Z21BG_EvaluateTrajectoryPK12trajectory_tiPf
	movss xmm0, dword [ebx+0x1c]
	subss xmm0, [ebp-0x14]
	ucomiss xmm0, [_float_36_00000000]
	ja _Z20BG_PlayerTouchesItemPK13playerState_sPK13entityState_si_10
	ucomiss xmm0, [_float__36_00000000]
	jp _Z20BG_PlayerTouchesItemPK13playerState_sPK13entityState_si_20
	jae _Z20BG_PlayerTouchesItemPK13playerState_sPK13entityState_si_20
_Z20BG_PlayerTouchesItemPK13playerState_sPK13entityState_si_10:
	xor eax, eax
_Z20BG_PlayerTouchesItemPK13playerState_sPK13entityState_si_40:
	add esp, 0x24
	pop ebx
	pop ebp
	ret
_Z20BG_PlayerTouchesItemPK13playerState_sPK13entityState_si_20:
	movss xmm1, dword [ebx+0x20]
	subss xmm1, [ebp-0x10]
	ucomiss xmm1, [_float_36_00000000]
	ja _Z20BG_PlayerTouchesItemPK13playerState_sPK13entityState_si_10
	movss xmm0, dword [_float__36_00000000]
	ucomiss xmm0, xmm1
	ja _Z20BG_PlayerTouchesItemPK13playerState_sPK13entityState_si_10
	movss xmm0, dword [ebx+0x24]
	subss xmm0, [ebp-0xc]
	ucomiss xmm0, [_float_18_00000000]
	ja _Z20BG_PlayerTouchesItemPK13playerState_sPK13entityState_si_10
	ucomiss xmm0, [_float__88_00000000]
	jp _Z20BG_PlayerTouchesItemPK13playerState_sPK13entityState_si_30
	jb _Z20BG_PlayerTouchesItemPK13playerState_sPK13entityState_si_10
_Z20BG_PlayerTouchesItemPK13playerState_sPK13entityState_si_30:
	mov eax, 0x1
	jmp _Z20BG_PlayerTouchesItemPK13playerState_sPK13entityState_si_40
	nop


;BG_EvaluateTrajectory(trajectory_t const*, int, float*)
_Z21BG_EvaluateTrajectoryPK12trajectory_tiPf:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	mov edi, [ebp+0x10]
	mov eax, [esi]
	cmp eax, 0xb
	ja _Z21BG_EvaluateTrajectoryPK12trajectory_tiPf_10
	jmp dword [eax*4+_Z21BG_EvaluateTrajectoryPK12trajectory_tiPf_jumptab_0]
_Z21BG_EvaluateTrajectoryPK12trajectory_tiPf_10:
	mov [ebp+0x10], eax
	mov dword [ebp+0xc], _cstring_bg_evaluatetraje
	mov dword [ebp+0x8], 0x2
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z9Com_Error11errorParm_tPKcz
_Z21BG_EvaluateTrajectoryPK12trajectory_tiPf_70:
	mov edx, [esi+0x4]
	mov eax, edx
	add eax, [esi+0x8]
	cmp ebx, eax
	cmovg ebx, eax
	sub ebx, edx
	cvtsi2ss xmm1, ebx
	mulss xmm1, [_float_0_00100000]
	pxor xmm0, xmm0
	maxss xmm0, xmm1
	movaps xmm1, xmm0
	lea eax, [esi+0x18]
	lea edx, [esi+0xc]
_Z21BG_EvaluateTrajectoryPK12trajectory_tiPf_30:
	mulss xmm0, [esi+0x18]
	addss xmm0, [esi+0xc]
	movss [edi], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [eax+0x4]
	addss xmm0, [edx+0x4]
	movss [edi+0x4], xmm0
	mulss xmm1, [eax+0x8]
	addss xmm1, [edx+0x8]
	movss [edi+0x8], xmm1
_Z21BG_EvaluateTrajectoryPK12trajectory_tiPf_20:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z21BG_EvaluateTrajectoryPK12trajectory_tiPf_50:
	lea edx, [esi+0xc]
	mov eax, [esi+0xc]
	mov [edi], eax
	mov eax, [edx+0x4]
	mov [edi+0x4], eax
	mov eax, [edx+0x8]
	mov [edi+0x8], eax
	jmp _Z21BG_EvaluateTrajectoryPK12trajectory_tiPf_20
_Z21BG_EvaluateTrajectoryPK12trajectory_tiPf_90:
	sub ebx, [esi+0x4]
	cvtsi2ss xmm1, ebx
	mulss xmm1, [_float_0_00100000]
	lea eax, [esi+0x18]
	lea edx, [esi+0xc]
	movaps xmm0, xmm1
	mulss xmm0, [esi+0x18]
	addss xmm0, [esi+0xc]
	movss [edi], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [eax+0x4]
	addss xmm0, [edx+0x4]
	movss [edi+0x4], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [eax+0x8]
	addss xmm0, [edx+0x8]
	movaps xmm2, xmm1
	mulss xmm2, [_float__400_00000000]
	mulss xmm1, xmm2
	addss xmm0, xmm1
	movss [edi+0x8], xmm0
	jmp _Z21BG_EvaluateTrajectoryPK12trajectory_tiPf_20
_Z21BG_EvaluateTrajectoryPK12trajectory_tiPf_60:
	sub ebx, [esi+0x4]
	cvtsi2ss xmm1, ebx
	mulss xmm1, [_float_0_00100000]
_Z21BG_EvaluateTrajectoryPK12trajectory_tiPf_40:
	lea eax, [esi+0x18]
	lea edx, [esi+0xc]
	movaps xmm0, xmm1
	jmp _Z21BG_EvaluateTrajectoryPK12trajectory_tiPf_30
_Z21BG_EvaluateTrajectoryPK12trajectory_tiPf_110:
	mov edx, [esi+0x4]
	mov ecx, [esi+0x8]
	lea eax, [edx+ecx]
	cmp eax, ebx
	cmovge eax, ebx
	sub eax, edx
	cvtsi2ss xmm3, eax
	movss xmm4, dword [_float_0_00100000]
	mulss xmm3, xmm4
	lea eax, [esi+0x18]
	movss xmm1, dword [esi+0x18]
	movss xmm0, dword [esi+0x1c]
	movss xmm2, dword [esi+0x20]
	mulss xmm1, xmm1
	mulss xmm0, xmm0
	addss xmm1, xmm0
	mulss xmm2, xmm2
	addss xmm1, xmm2
	sqrtss xmm1, xmm1
	cvtsi2ss xmm0, ecx
	mulss xmm0, xmm4
	divss xmm1, xmm0
	mov [esp+0x4], edi
	mov [esp], eax
	movss [ebp-0x38], xmm1
	movss [ebp-0x48], xmm3
	call _Z15Vec3NormalizeToPKfPf
	fstp st0
	lea eax, [esi+0xc]
	movss xmm3, dword [ebp-0x48]
	movaps xmm2, xmm3
	mulss xmm2, [esi+0x1c]
	addss xmm2, [eax+0x4]
	movaps xmm4, xmm3
	mulss xmm4, [esi+0x20]
	addss xmm4, [eax+0x8]
	movss xmm1, dword [ebp-0x38]
	mulss xmm1, [_float__0_50000000]
	mulss xmm1, xmm3
	mulss xmm1, xmm3
	mulss xmm3, [esi+0x18]
	addss xmm3, [esi+0xc]
	movaps xmm0, xmm1
	mulss xmm0, [edi]
	addss xmm3, xmm0
	movss [edi], xmm3
	movaps xmm0, xmm1
	mulss xmm0, [edi+0x4]
	addss xmm2, xmm0
	movss [edi+0x4], xmm2
	mulss xmm1, [edi+0x8]
	addss xmm4, xmm1
	movss [edi+0x8], xmm4
	jmp _Z21BG_EvaluateTrajectoryPK12trajectory_tiPf_20
_Z21BG_EvaluateTrajectoryPK12trajectory_tiPf_100:
	mov edx, [esi+0x4]
	mov ecx, [esi+0x8]
	lea eax, [edx+ecx]
	cmp ebx, eax
	cmovg ebx, eax
	sub ebx, edx
	cvtsi2ss xmm3, ebx
	movss xmm4, dword [_float_0_00100000]
	mulss xmm3, xmm4
	lea eax, [esi+0x18]
	movss xmm1, dword [esi+0x18]
	movss xmm0, dword [eax+0x4]
	movss xmm2, dword [eax+0x8]
	mulss xmm1, xmm1
	mulss xmm0, xmm0
	addss xmm1, xmm0
	mulss xmm2, xmm2
	addss xmm1, xmm2
	sqrtss xmm1, xmm1
	cvtsi2ss xmm0, ecx
	mulss xmm0, xmm4
	divss xmm1, xmm0
	mov [esp+0x4], edi
	mov [esp], eax
	movss [ebp-0x38], xmm1
	movss [ebp-0x48], xmm3
	call _Z15Vec3NormalizeToPKfPf
	fstp st0
	movss xmm1, dword [ebp-0x38]
	mulss xmm1, [_float_0_50000000]
	movss xmm3, dword [ebp-0x48]
	mulss xmm1, xmm3
	mulss xmm1, xmm3
	lea eax, [esi+0xc]
	movaps xmm0, xmm1
	mulss xmm0, [edi]
	addss xmm0, [esi+0xc]
	movss [edi], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [edi+0x4]
	addss xmm0, [eax+0x4]
	movss [edi+0x4], xmm0
	mulss xmm1, [edi+0x8]
	addss xmm1, [eax+0x8]
	movss [edi+0x8], xmm1
	jmp _Z21BG_EvaluateTrajectoryPK12trajectory_tiPf_20
_Z21BG_EvaluateTrajectoryPK12trajectory_tiPf_80:
	sub ebx, [esi+0x4]
	cvtsi2ss xmm0, ebx
	cvtsi2ss xmm1, dword [esi+0x8]
	divss xmm0, xmm1
	cvtss2sd xmm0, xmm0
	mulsd xmm0, [_double_3_14159265]
	addsd xmm0, xmm0
	movsd [esp], xmm0
	call sin
	fstp qword [ebp-0x20]
	cvtsd2ss xmm1, [ebp-0x20]
	jmp _Z21BG_EvaluateTrajectoryPK12trajectory_tiPf_40
	
	
_Z21BG_EvaluateTrajectoryPK12trajectory_tiPf_jumptab_0:
	dd _Z21BG_EvaluateTrajectoryPK12trajectory_tiPf_50
	dd _Z21BG_EvaluateTrajectoryPK12trajectory_tiPf_50
	dd _Z21BG_EvaluateTrajectoryPK12trajectory_tiPf_60
	dd _Z21BG_EvaluateTrajectoryPK12trajectory_tiPf_70
	dd _Z21BG_EvaluateTrajectoryPK12trajectory_tiPf_80
	dd _Z21BG_EvaluateTrajectoryPK12trajectory_tiPf_90
	dd _Z21BG_EvaluateTrajectoryPK12trajectory_tiPf_100
	dd _Z21BG_EvaluateTrajectoryPK12trajectory_tiPf_110
	dd _Z21BG_EvaluateTrajectoryPK12trajectory_tiPf_50
	dd _Z21BG_EvaluateTrajectoryPK12trajectory_tiPf_60
	dd _Z21BG_EvaluateTrajectoryPK12trajectory_tiPf_90
	dd _Z21BG_EvaluateTrajectoryPK12trajectory_tiPf_50


;BG_GetShellshockParms(int)
_Z21BG_GetShellshockParmsi:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	lea eax, [edx+edx*8]
	lea eax, [edx+eax*2]
	lea eax, [edx+eax*4]
	lea eax, [eax*8+bg_shellshockParms]
	pop ebp
	ret


;BG_GetPlayerViewOrigin(playerState_s const*, float*, int)
_Z22BG_GetPlayerViewOriginPK13playerState_sPfi:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x60
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0xc]
	lea edx, [ebx+0x1c]
	mov eax, [ebx+0x1c]
	mov [esi], eax
	mov eax, [edx+0x4]
	mov [esi+0x4], eax
	movss xmm0, dword [edx+0x8]
	movss [esi+0x8], xmm0
	addss xmm0, [ebx+0x118]
	movss [esi+0x8], xmm0
	mov [esp], ebx
	call _Z14BG_GetBobCyclePK13playerState_s
	fstp dword [ebp-0x20]
	mov eax, [ebp+0x10]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z11BG_GetSpeedPK13playerState_si
	fstp dword [ebp-0x1c]
	mov eax, [bg_bobMax]
	mov eax, [eax+0xc]
	mov [esp+0xc], eax
	movss xmm0, dword [ebp-0x1c]
	movss [esp+0x8], xmm0
	movss xmm0, dword [ebp-0x20]
	movss [esp+0x4], xmm0
	mov [esp], ebx
	call _Z23BG_GetVerticalBobFactorPK13playerState_sfff
	fstp dword [ebp-0x3c]
	movss xmm0, dword [ebp-0x3c]
	addss xmm0, [esi+0x8]
	movss [esi+0x8], xmm0
	mov eax, [bg_bobMax]
	mov eax, [eax+0xc]
	mov [esp+0xc], eax
	movss xmm0, dword [ebp-0x1c]
	movss [esp+0x8], xmm0
	movss xmm0, dword [ebp-0x20]
	movss [esp+0x4], xmm0
	mov [esp], ebx
	call _Z25BG_GetHorizontalBobFactorPK13playerState_sfff
	fstp dword [ebp-0x3c]
	movss xmm1, dword [ebp-0x3c]
	mov dword [esp+0xc], 0x0
	lea eax, [ebp-0x14]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	lea eax, [ebx+0x108]
	mov [esp], eax
	movss [ebp-0x38], xmm1
	call _Z12AngleVectorsPKfPfS1_S1_
	movss xmm1, dword [ebp-0x38]
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x14]
	addss xmm0, [esi]
	movss [esi], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x10]
	addss xmm0, [esi+0x4]
	movss [esi+0x4], xmm0
	mulss xmm1, [ebp-0xc]
	addss xmm1, [esi+0x8]
	movss [esi+0x8], xmm1
	mov dword [esp+0x10], 0x41a00000
	mov dword [esp+0xc], 0x41800000
	mov eax, [ebx+0x5c]
	mov [esp+0x8], eax
	mov eax, [ebx+0x10c]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z17AddLeanToPositionPfffff
	movss xmm0, dword [_float_8_00000000]
	addss xmm0, [ebx+0x24]
	ucomiss xmm0, [esi+0x8]
	jbe _Z22BG_GetPlayerViewOriginPK13playerState_sPfi_10
	movss [esi+0x8], xmm0
_Z22BG_GetPlayerViewOriginPK13playerState_sPfi_10:
	add esp, 0x60
	pop ebx
	pop esi
	pop ebp
	ret


;BG_LoadShellShockDvars(char const*)
_Z22BG_LoadShellShockDvarsPKc:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1dc
	mov eax, [ebp+0x8]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_shocksshock
	mov dword [esp+0x4], 0x40
	lea eax, [ebp-0x58]
	mov [esp], eax
	call _Z11Com_sprintfPciPKcz
	lea edx, [ebp-0x58]
	mov [esp], edx
	call _Z19Com_LoadRawTextFilePKc
	mov [ebp-0x1cc], eax
	test eax, eax
	jz _Z22BG_LoadShellShockDvarsPKc_10
_Z22BG_LoadShellShockDvarsPKc_50:
	xor edx, edx
_Z22BG_LoadShellShockDvarsPKc_20:
	mov eax, [edx+bgShockDvarNames]
	mov [edx+ebp-0x1c4], eax
	add edx, 0x4
	cmp edx, 0x6c
	jnz _Z22BG_LoadShellShockDvarsPKc_20
	xor edi, edi
	mov esi, bgShockChannelNames
	xor ebx, ebx
	jmp _Z22BG_LoadShellShockDvarsPKc_30
_Z22BG_LoadShellShockDvarsPKc_40:
	mov [ebx+ebp-0x158], esi
	add edi, 0x1
	add ebx, 0x4
	add esi, 0x50
_Z22BG_LoadShellShockDvarsPKc_30:
	call _Z22SND_GetEntChannelCountv
	cmp edi, eax
	jl _Z22BG_LoadShellShockDvarsPKc_40
	call _Z22SND_GetEntChannelCountv
	lea edx, [ebp-0x58]
	mov [esp+0xc], edx
	mov edx, [ebp-0x1cc]
	mov [esp+0x8], edx
	add eax, 0x1b
	mov [esp+0x4], eax
	lea eax, [ebp-0x1c4]
	mov [esp], eax
	call _Z23Com_LoadDvarsFromBufferPPKcjS0_S0_
	mov ebx, eax
	mov edx, [ebp-0x1cc]
	mov [esp], edx
	call _Z21Com_UnloadRawTextFilePKc
_Z22BG_LoadShellShockDvarsPKc_60:
	mov eax, ebx
	add esp, 0x1dc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z22BG_LoadShellShockDvarsPKc_10:
	lea eax, [ebp-0x58]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_couldnt_open_s
	mov dword [esp], 0x11
	call _Z14Com_PrintErroriPKcz
	mov dword [esp], _cstring_shockdefaultshoc
	call _Z19Com_LoadRawTextFilePKc
	mov [ebp-0x1cc], eax
	test eax, eax
	jnz _Z22BG_LoadShellShockDvarsPKc_50
	mov dword [esp+0x4], _cstring_couldnt_open_sho
	mov dword [esp], 0x11
	call _Z14Com_PrintErroriPKcz
	xor ebx, ebx
	jmp _Z22BG_LoadShellShockDvarsPKc_60
	nop


;BG_SaveShellShockDvars(char const*)
_Z22BG_SaveShellShockDvarsPKc:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x18c
	xor edx, edx
_Z22BG_SaveShellShockDvarsPKc_10:
	mov eax, [edx+bgShockDvarNames]
	mov [edx+ebp-0x188], eax
	add edx, 0x4
	cmp edx, 0x6c
	jnz _Z22BG_SaveShellShockDvarsPKc_10
	xor edi, edi
	mov esi, bgShockChannelNames
	xor ebx, ebx
	jmp _Z22BG_SaveShellShockDvarsPKc_20
_Z22BG_SaveShellShockDvarsPKc_30:
	mov [ebx+ebp-0x11c], esi
	add edi, 0x1
	add ebx, 0x4
	add esi, 0x50
_Z22BG_SaveShellShockDvarsPKc_20:
	call _Z22SND_GetEntChannelCountv
	cmp edi, eax
	jl _Z22BG_SaveShellShockDvarsPKc_30
	call _Z22SND_GetEntChannelCountv
	mov dword [esp+0xc], 0x10000
	mov dword [esp+0x8], _ZZ22BG_SaveShellShockDvarsPKcE7filebuf
	add eax, 0x1b
	mov [esp+0x4], eax
	lea eax, [ebp-0x188]
	mov [esp], eax
	call _Z21Com_SaveDvarsToBufferPPKcjPcj
	test eax, eax
	jnz _Z22BG_SaveShellShockDvarsPKc_40
_Z22BG_SaveShellShockDvarsPKc_50:
	xor eax, eax
	add esp, 0x18c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z22BG_SaveShellShockDvarsPKc_40:
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_shocksshock
	call _Z2vaPKcz
	mov dword [esp+0x8], 0x1
	lea edx, [ebp-0x1c]
	mov [esp+0x4], edx
	mov [esp], eax
	call _Z18FS_FOpenFileByModePKcPi8fsMode_t
	test eax, eax
	js _Z22BG_SaveShellShockDvarsPKc_50
	mov eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov edi, _ZZ22BG_SaveShellShockDvarsPKcE7filebuf
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	repne scasb
	not ecx
	sub ecx, 0x1
	mov [esp+0x4], ecx
	mov dword [esp], _ZZ22BG_SaveShellShockDvarsPKcE7filebuf
	call _Z8FS_WritePKvii
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call _Z13FS_FCloseFilei
	mov eax, 0x1
	add esp, 0x18c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;BG_GetPlayerViewDirection(playerState_s const*, float*, float*, float*)
_Z25BG_GetPlayerViewDirectionPK13playerState_sPfS2_S2_:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	add eax, 0x108
	mov [ebp+0x8], eax
	pop ebp
	jmp _Z12AngleVectorsPKfPfS1_S1_


;BG_EvaluateTrajectoryDelta(trajectory_t const*, int, float*)
_Z26BG_EvaluateTrajectoryDeltaPK12trajectory_tiPf:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x20
	mov ebx, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov esi, [ebp+0x10]
	mov eax, [ebx]
	cmp eax, 0x7
	ja _Z26BG_EvaluateTrajectoryDeltaPK12trajectory_tiPf_10
	jmp dword [eax*4+_Z26BG_EvaluateTrajectoryDeltaPK12trajectory_tiPf_jumptab_0]
_Z26BG_EvaluateTrajectoryDeltaPK12trajectory_tiPf_10:
	mov [ebp+0x10], eax
	mov dword [ebp+0xc], _cstring_bg_evaluatetraje1
	mov dword [ebp+0x8], 0x2
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	jmp _Z9Com_Error11errorParm_tPKcz
_Z26BG_EvaluateTrajectoryDeltaPK12trajectory_tiPf_110:
	mov ecx, [ebx+0x4]
	mov eax, ecx
	add eax, [ebx+0x8]
	cmp eax, edx
	jge _Z26BG_EvaluateTrajectoryDeltaPK12trajectory_tiPf_20
_Z26BG_EvaluateTrajectoryDeltaPK12trajectory_tiPf_30:
	xor eax, eax
	mov [esi], eax
	mov [esi+0x4], eax
	mov [esi+0x8], eax
_Z26BG_EvaluateTrajectoryDeltaPK12trajectory_tiPf_50:
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
_Z26BG_EvaluateTrajectoryDeltaPK12trajectory_tiPf_70:
	mov eax, [ebx+0x4]
	add eax, [ebx+0x8]
	cmp edx, eax
	jg _Z26BG_EvaluateTrajectoryDeltaPK12trajectory_tiPf_30
_Z26BG_EvaluateTrajectoryDeltaPK12trajectory_tiPf_60:
	lea edx, [ebx+0x18]
	mov eax, [ebx+0x18]
	mov [esi], eax
	mov eax, [edx+0x4]
	mov [esi+0x4], eax
	mov eax, [edx+0x8]
	mov [esi+0x8], eax
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
_Z26BG_EvaluateTrajectoryDeltaPK12trajectory_tiPf_100:
	mov ecx, [ebx+0x4]
	mov eax, ecx
	add eax, [ebx+0x8]
	cmp edx, eax
	jg _Z26BG_EvaluateTrajectoryDeltaPK12trajectory_tiPf_30
	sub edx, ecx
	cvtsi2ss xmm0, edx
	mulss xmm0, [_float_0_00100000]
	mulss xmm0, xmm0
	jmp _Z26BG_EvaluateTrajectoryDeltaPK12trajectory_tiPf_40
_Z26BG_EvaluateTrajectoryDeltaPK12trajectory_tiPf_90:
	sub edx, [ebx+0x4]
	cvtsi2ss xmm0, edx
	mulss xmm0, [_float_0_00100000]
	lea edx, [ebx+0x18]
	mov eax, [ebx+0x18]
	mov [esi], eax
	mov eax, [edx+0x4]
	mov [esi+0x4], eax
	mulss xmm0, [_float__800_00000000]
	addss xmm0, [edx+0x8]
	movss [esi+0x8], xmm0
	jmp _Z26BG_EvaluateTrajectoryDeltaPK12trajectory_tiPf_50
_Z26BG_EvaluateTrajectoryDeltaPK12trajectory_tiPf_80:
	sub edx, [ebx+0x4]
	cvtsi2ss xmm0, edx
	cvtsi2ss xmm1, dword [ebx+0x8]
	divss xmm0, xmm1
	cvtss2sd xmm0, xmm0
	mulsd xmm0, [_double_3_14159265]
	addsd xmm0, xmm0
	movsd [esp], xmm0
	call cos
	fstp qword [ebp-0x10]
	cvtsd2ss xmm0, [ebp-0x10]
	mulss xmm0, [_float_0_50000000]
_Z26BG_EvaluateTrajectoryDeltaPK12trajectory_tiPf_40:
	lea eax, [ebx+0x18]
	movaps xmm1, xmm0
	mulss xmm1, [ebx+0x18]
	movss [esi], xmm1
	movaps xmm1, xmm0
	mulss xmm1, [eax+0x4]
	movss [esi+0x4], xmm1
	mulss xmm0, [eax+0x8]
	movss [esi+0x8], xmm0
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
_Z26BG_EvaluateTrajectoryDeltaPK12trajectory_tiPf_20:
	sub edx, ecx
	cvtsi2ss xmm0, edx
	mulss xmm0, [_float_0_00100000]
	jmp _Z26BG_EvaluateTrajectoryDeltaPK12trajectory_tiPf_40
	nop
	
	
_Z26BG_EvaluateTrajectoryDeltaPK12trajectory_tiPf_jumptab_0:
	dd _Z26BG_EvaluateTrajectoryDeltaPK12trajectory_tiPf_30
	dd _Z26BG_EvaluateTrajectoryDeltaPK12trajectory_tiPf_30
	dd _Z26BG_EvaluateTrajectoryDeltaPK12trajectory_tiPf_60
	dd _Z26BG_EvaluateTrajectoryDeltaPK12trajectory_tiPf_70
	dd _Z26BG_EvaluateTrajectoryDeltaPK12trajectory_tiPf_80
	dd _Z26BG_EvaluateTrajectoryDeltaPK12trajectory_tiPf_90
	dd _Z26BG_EvaluateTrajectoryDeltaPK12trajectory_tiPf_100
	dd _Z26BG_EvaluateTrajectoryDeltaPK12trajectory_tiPf_110


;BG_PlayerStateToEntityState(playerState_s*, entityState_s*, int, unsigned char)
_Z27BG_PlayerStateToEntityStateP13playerState_sP13entityState_sih:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	movzx esi, byte [ebp+0x14]
	mov eax, [ebp+0xc]
	mov dword [eax+0xc], 0x1
	mov dword [eax+0x14], 0x0
	mov dword [eax+0x10], 0x0
	mov eax, [ebp+0xc]
	add eax, 0x24
	xor edx, edx
	mov ecx, [ebp+0xc]
	mov [ecx+0x24], edx
	mov [eax+0x4], edx
	mov [eax+0x8], edx
	mov ebx, ecx
	add ebx, 0x18
	mov ecx, [ebp+0x8]
	add ecx, 0x1c
	mov edi, [ebp+0x8]
	mov eax, [edi+0x1c]
	mov edi, [ebp+0xc]
	mov [edi+0x18], eax
	mov eax, [ecx+0x4]
	mov [ebx+0x4], eax
	mov eax, [ecx+0x8]
	mov [ebx+0x8], eax
	mov dword [edi+0x30], 0x1
	mov dword [edi+0x38], 0x0
	mov dword [edi+0x34], 0x0
	mov eax, edi
	add eax, 0x48
	mov [edi+0x48], edx
	mov [eax+0x4], edx
	mov [eax+0x8], edx
	mov ecx, edi
	add ecx, 0x3c
	mov edx, [ebp+0x8]
	add edx, 0x108
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x108]
	mov [edi+0x3c], eax
	mov eax, [edx+0x4]
	mov [ecx+0x4], eax
	mov eax, [edx+0x8]
	mov [ecx+0x8], eax
	mov eax, [ebx+0xac]
	mov [edi+0x58], eax
	mov eax, [ebp+0x10]
	test eax, eax
	jz _Z27BG_PlayerStateToEntityStateP13playerState_sP13entityState_sih_10
	cvttss2si eax, [edi+0x18]
	cvtsi2ss xmm0, eax
	movss [edi+0x18], xmm0
	cvttss2si eax, [edi+0x1c]
	cvtsi2ss xmm0, eax
	movss [edi+0x1c], xmm0
	cvttss2si eax, [edi+0x20]
	cvtsi2ss xmm0, eax
	movss [edi+0x20], xmm0
	cvttss2si eax, [edi+0x3c]
	cvtsi2ss xmm0, eax
	movss [edi+0x3c], xmm0
	cvttss2si eax, [edi+0x40]
	cvtsi2ss xmm0, eax
	movss [edi+0x40], xmm0
	cvttss2si eax, [edi+0x44]
	cvtsi2ss xmm0, eax
	movss [edi+0x44], xmm0
_Z27BG_PlayerStateToEntityStateP13playerState_sP13entityState_sih_10:
	mov edi, [ebp+0x8]
	mov eax, [edi+0xb0]
	mov edx, [ebp+0xc]
	mov [edx+0x8], eax
	cmp dword [edi+0x4], 0x6
	jle _Z27BG_PlayerStateToEntityStateP13playerState_sP13entityState_sih_20
	or eax, 0x20000
	mov [edx+0x8], eax
_Z27BG_PlayerStateToEntityStateP13playerState_sP13entityState_sih_200:
	mov ebx, [ebp+0x8]
	test byte [ebx+0xc], 0x10
	jz _Z27BG_PlayerStateToEntityStateP13playerState_sP13entityState_sih_30
	mov edi, [ebp+0xc]
	or dword [edi+0x8], 0x40000
_Z27BG_PlayerStateToEntityStateP13playerState_sP13entityState_sih_190:
	mov edx, [ebp+0x8]
	mov eax, [edx+0x8c]
	mov ecx, [ebp+0xc]
	mov [ecx+0xcc], eax
	mov eax, [edx+0x94]
	mov [ecx+0xd0], eax
	mov eax, [edx+0x5c]
	mov [ecx+0x54], eax
	mov eax, [edx+0xdc]
	mov [ecx+0x8c], eax
	test dword [edx+0xb0], 0x300
	jz _Z27BG_PlayerStateToEntityStateP13playerState_sP13entityState_sih_40
	mov eax, [edx+0x59c]
	mov [ecx+0x74], eax
_Z27BG_PlayerStateToEntityStateP13playerState_sP13entityState_sih_40:
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x14]
	and eax, 0x6
	cmp eax, 0x1
	sbb eax, eax
	and eax, 0x4
	add eax, 0x1
	mov edi, [ebp+0xc]
	mov [edi+0x4], eax
	movzx eax, byte [ebx+0xe8]
	mov [edi+0xc4], eax
	mov eax, [ebx+0xe8]
	movzx eax, byte [eax+ebx+0x81c]
	mov [edi+0xc8], eax
	movzx eax, word [ebx+0x70]
	mov [edi+0x7c], eax
	mov [esp], ebx
	call _Z21PM_GetEffectiveStancePK13playerState_s
	sub eax, 0x1
	jz _Z27BG_PlayerStateToEntityStateP13playerState_sP13entityState_sih_50
	xor eax, eax
	mov ecx, [ebp+0xc]
	mov [ecx+0xdc], eax
	mov [ecx+0xe0], eax
_Z27BG_PlayerStateToEntityStateP13playerState_sP13entityState_sih_220:
	mov ebx, [ebp+0x8]
	mov ecx, [ebx+0x620]
	mov edi, ebx
	mov ebx, [ebx+0xb4]
	lea eax, [ebx+0x40]
	lea edx, [ecx-0x100]
	cmp ecx, eax
	cmovg ecx, edx
	mov [edi+0x620], ecx
	cmp ecx, ebx
	js _Z27BG_PlayerStateToEntityStateP13playerState_sP13entityState_sih_60
	mov ebx, [ebp+0xc]
	mov dword [ebx+0x9c], 0x0
_Z27BG_PlayerStateToEntityStateP13playerState_sP13entityState_sih_240:
	mov ebx, esi
	mov edi, [ebp+0x8]
	mov ecx, [edi+0xb4]
	mov edx, [edi+0xd8]
	mov eax, ecx
	sub eax, edx
	cmp eax, 0x4
	jle _Z27BG_PlayerStateToEntityStateP13playerState_sP13entityState_sih_70
	lea edx, [ecx-0x4]
	mov [edi+0xd8], edx
_Z27BG_PlayerStateToEntityStateP13playerState_sP13entityState_sih_70:
	mov eax, edx
	sub eax, ecx
	test eax, eax
	jle _Z27BG_PlayerStateToEntityStateP13playerState_sP13entityState_sih_80
	mov edx, ecx
	mov eax, [ebp+0x8]
	mov [eax+0xd8], ecx
_Z27BG_PlayerStateToEntityStateP13playerState_sP13entityState_sih_80:
	mov esi, edx
	mov edx, [ebp+0x8]
	cmp [edx+0xb4], esi
	jz _Z27BG_PlayerStateToEntityStateP13playerState_sP13entityState_sih_90
	movzx ebx, bl
	mov [ebp-0x1c], ebx
	mov ebx, [ebp+0x8]
_Z27BG_PlayerStateToEntityStateP13playerState_sP13entityState_sih_150:
	mov ecx, esi
	and ecx, 0x3
	mov [ebp-0x20], ecx
	movzx edi, byte [ebx+ecx*4+0xb8]
	mov eax, pmoveHandlers
	mov ecx, [ebp-0x1c]
	mov edx, [eax+ecx*8+0x4]
	test edx, edx
	jz _Z27BG_PlayerStateToEntityStateP13playerState_sP13entityState_sih_100
	mov ebx, edi
	movzx eax, bl
	mov [esp+0x4], eax
	mov ecx, [ebp+0xc]
	mov eax, [ecx]
	mov [esp], eax
	call edx
_Z27BG_PlayerStateToEntityStateP13playerState_sP13entityState_sih_100:
	mov eax, edi
	movzx ebx, al
	mov edx, 0x1f
	cmp edx, ebx
	jz _Z27BG_PlayerStateToEntityStateP13playerState_sP13entityState_sih_110
	xor ecx, ecx
	mov edx, serverOnlyEvents
_Z27BG_PlayerStateToEntityStateP13playerState_sP13entityState_sih_130:
	add ecx, 0x1
	mov eax, [edx+0x4]
	test eax, eax
	jle _Z27BG_PlayerStateToEntityStateP13playerState_sP13entityState_sih_120
	add edx, 0x4
	cmp eax, ebx
	jnz _Z27BG_PlayerStateToEntityStateP13playerState_sP13entityState_sih_130
_Z27BG_PlayerStateToEntityStateP13playerState_sP13entityState_sih_110:
	add esi, 0x1
	mov edi, [ebp+0x8]
	cmp esi, [edi+0xb4]
	jz _Z27BG_PlayerStateToEntityStateP13playerState_sP13entityState_sih_140
_Z27BG_PlayerStateToEntityStateP13playerState_sP13entityState_sih_180:
	mov ebx, edi
	jmp _Z27BG_PlayerStateToEntityStateP13playerState_sP13entityState_sih_150
_Z27BG_PlayerStateToEntityStateP13playerState_sP13entityState_sih_120:
	mov ecx, [ecx*4+serverOnlyEvents]
	test ecx, ecx
	jns _Z27BG_PlayerStateToEntityStateP13playerState_sP13entityState_sih_110
	mov ecx, edi
	movzx ebx, cl
	cmp ebx, 0x6
	jz _Z27BG_PlayerStateToEntityStateP13playerState_sP13entityState_sih_110
	xor ecx, ecx
	mov edx, singleClientEvents
	add ecx, 0x1
	mov eax, [edx+0x4]
	test eax, eax
	jle _Z27BG_PlayerStateToEntityStateP13playerState_sP13entityState_sih_160
_Z27BG_PlayerStateToEntityStateP13playerState_sP13entityState_sih_170:
	add edx, 0x4
	cmp ebx, eax
	jz _Z27BG_PlayerStateToEntityStateP13playerState_sP13entityState_sih_110
	add ecx, 0x1
	mov eax, [edx+0x4]
	test eax, eax
	jg _Z27BG_PlayerStateToEntityStateP13playerState_sP13entityState_sih_170
_Z27BG_PlayerStateToEntityStateP13playerState_sP13entityState_sih_160:
	mov edx, [ecx*4+singleClientEvents]
	test edx, edx
	jns _Z27BG_PlayerStateToEntityStateP13playerState_sP13entityState_sih_110
	mov ebx, [ebp+0xc]
	mov edx, [ebx+0xa0]
	mov ecx, edx
	and ecx, 0x3
	mov ebx, edi
	movzx eax, bl
	mov edi, [ebp+0xc]
	mov [edi+ecx*4+0xa4], eax
	mov ebx, [ebp-0x20]
	mov edi, [ebp+0x8]
	movzx eax, byte [edi+ebx*4+0xc8]
	mov ebx, [ebp+0xc]
	mov [ebx+ecx*4+0xb4], eax
	add edx, 0x1
	and edx, 0xff
	mov [ebx+0xa0], edx
	add esi, 0x1
	mov edi, [ebp+0x8]
	cmp esi, [edi+0xb4]
	jnz _Z27BG_PlayerStateToEntityStateP13playerState_sP13entityState_sih_180
_Z27BG_PlayerStateToEntityStateP13playerState_sP13entityState_sih_140:
	mov eax, edi
	mov [eax+0xd8], esi
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z27BG_PlayerStateToEntityStateP13playerState_sP13entityState_sih_30:
	mov eax, [ebp+0xc]
	and dword [eax+0x8], 0xfffbffff
	jmp _Z27BG_PlayerStateToEntityStateP13playerState_sP13entityState_sih_190
_Z27BG_PlayerStateToEntityStateP13playerState_sP13entityState_sih_20:
	and eax, 0xfffdffff
	mov ecx, [ebp+0xc]
	mov [ecx+0x8], eax
	jmp _Z27BG_PlayerStateToEntityStateP13playerState_sP13entityState_sih_200
_Z27BG_PlayerStateToEntityStateP13playerState_sP13entityState_sih_50:
	mov eax, [ebx+0x11c]
	test eax, eax
	jnz _Z27BG_PlayerStateToEntityStateP13playerState_sP13entityState_sih_210
	movss xmm4, dword [_float_1_00000000]
	mov edi, [ebp+0x8]
_Z27BG_PlayerStateToEntityStateP13playerState_sP13entityState_sih_280:
	movss xmm2, dword [_float_0_00277778]
	movss xmm0, dword [edi+0x5cc]
	mulss xmm0, xmm2
	movss xmm3, dword [_float_0_50000000]
	movaps xmm1, xmm0
	addss xmm1, xmm3
	movss [esp], xmm1
	movss [ebp-0x38], xmm0
	movss [ebp-0x48], xmm2
	movss [ebp-0x58], xmm3
	movss [ebp-0x68], xmm4
	call floorf
	fstp dword [ebp-0x24]
	movss xmm0, dword [ebp-0x38]
	subss xmm0, [ebp-0x24]
	mulss xmm0, [_float_360_00000000]
	movss xmm4, dword [ebp-0x68]
	mulss xmm0, xmm4
	mov eax, [ebp+0xc]
	movss [eax+0xdc], xmm0
	movss xmm2, dword [ebp-0x48]
	mulss xmm2, [edi+0x5d0]
	movss xmm3, dword [ebp-0x58]
	addss xmm3, xmm2
	movss [esp], xmm3
	movss [ebp-0x48], xmm2
	movss [ebp-0x68], xmm4
	call floorf
	fstp dword [ebp-0x28]
	movss xmm2, dword [ebp-0x48]
	subss xmm2, [ebp-0x28]
	mulss xmm2, [_float_360_00000000]
	movss xmm4, dword [ebp-0x68]
	mulss xmm2, xmm4
	mov edx, [ebp+0xc]
	movss [edx+0xe0], xmm2
	jmp _Z27BG_PlayerStateToEntityStateP13playerState_sP13entityState_sih_220
_Z27BG_PlayerStateToEntityStateP13playerState_sP13entityState_sih_60:
	mov eax, ebx
	sub eax, ecx
	cmp eax, 0x4
	jg _Z27BG_PlayerStateToEntityStateP13playerState_sP13entityState_sih_230
_Z27BG_PlayerStateToEntityStateP13playerState_sP13entityState_sih_250:
	mov edx, [ebp+0x8]
	mov eax, [edx+0x620]
	and eax, 0x3
	movzx eax, byte [edx+eax*4+0xc8]
	mov ecx, [ebp+0xc]
	mov [ecx+0x9c], eax
	mov eax, [edx+0x620]
	add eax, 0x1
	and eax, 0xff
	mov [edx+0x620], eax
	jmp _Z27BG_PlayerStateToEntityStateP13playerState_sP13entityState_sih_240
_Z27BG_PlayerStateToEntityStateP13playerState_sP13entityState_sih_230:
	lea eax, [ebx-0x4]
	mov [edi+0x620], eax
	jmp _Z27BG_PlayerStateToEntityStateP13playerState_sP13entityState_sih_250
_Z27BG_PlayerStateToEntityStateP13playerState_sP13entityState_sih_90:
	mov eax, edx
	mov [eax+0xd8], esi
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z27BG_PlayerStateToEntityStateP13playerState_sP13entityState_sih_210:
	mov edx, [ebp+0x8]
	mov eax, [edx+0x124]
	mov [esp+0x8], eax
	mov eax, [edx+0x120]
	mov [esp+0x4], eax
	mov [esp], edx
	call _Z24PM_GetViewHeightLerpTimePK13playerState_sii
	mov ecx, [ebp+0x8]
	mov edx, [ecx]
	sub edx, [ecx+0x11c]
	cvtsi2ss xmm4, edx
	cvtsi2ss xmm0, eax
	divss xmm4, xmm0
	ucomiss xmm4, [_float_0_00000000]
	jb _Z27BG_PlayerStateToEntityStateP13playerState_sP13entityState_sih_260
_Z27BG_PlayerStateToEntityStateP13playerState_sP13entityState_sih_290:
	movss xmm0, dword [_float_1_00000000]
	minss xmm0, xmm4
	movaps xmm4, xmm0
_Z27BG_PlayerStateToEntityStateP13playerState_sP13entityState_sih_300:
	mov ebx, [ebp+0x8]
	mov edi, [ebx+0x124]
	test edi, edi
	jz _Z27BG_PlayerStateToEntityStateP13playerState_sP13entityState_sih_270
	mov edi, ebx
	jmp _Z27BG_PlayerStateToEntityStateP13playerState_sP13entityState_sih_280
_Z27BG_PlayerStateToEntityStateP13playerState_sP13entityState_sih_270:
	movss xmm0, dword [_float_1_00000000]
	subss xmm0, xmm4
	movaps xmm4, xmm0
	mov edi, [ebp+0x8]
	jmp _Z27BG_PlayerStateToEntityStateP13playerState_sP13entityState_sih_280
_Z27BG_PlayerStateToEntityStateP13playerState_sP13entityState_sih_260:
	jp _Z27BG_PlayerStateToEntityStateP13playerState_sP13entityState_sih_290
	pxor xmm4, xmm4
	jmp _Z27BG_PlayerStateToEntityStateP13playerState_sP13entityState_sih_300


;BG_RegisterShockVolumeDvars()
_Z27BG_RegisterShockVolumeDvarsv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	xor esi, esi
	mov edi, bg_shock_volume
	mov ebx, bgShockChannelNames
	jmp _Z27BG_RegisterShockVolumeDvarsv_10
_Z27BG_RegisterShockVolumeDvarsv_20:
	mov [esp], esi
	call _Z21SND_GetEntChannelNamei
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_bg_shock_volume_
	mov [esp], ebx
	call sprintf
	mov dword [esp+0x14], _cstring_null
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x3f800000
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x3f000000
	mov [esp], ebx
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [edi-0x4], eax
	add esi, 0x1
	add ebx, 0x50
_Z27BG_RegisterShockVolumeDvarsv_10:
	call _Z22SND_GetEntChannelCountv
	add edi, 0x4
	cmp esi, eax
	jl _Z27BG_RegisterShockVolumeDvarsv_20
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;BG_PlayerCanPickUpWeaponType(WeaponDef const*, playerState_s const*)
_Z28BG_PlayerCanPickUpWeaponTypePK9WeaponDefPK13playerState_s:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax+0x144]
	cmp eax, 0x3
	jz _Z28BG_PlayerCanPickUpWeaponTypePK9WeaponDefPK13playerState_s_10
	cmp eax, 0x2
	jz _Z28BG_PlayerCanPickUpWeaponTypePK9WeaponDefPK13playerState_s_20
_Z28BG_PlayerCanPickUpWeaponTypePK9WeaponDefPK13playerState_s_30:
	mov eax, 0x1
	pop ebp
	ret
_Z28BG_PlayerCanPickUpWeaponTypePK9WeaponDefPK13playerState_s_20:
	mov eax, [ebp+0xc]
	mov eax, [eax+0xe4]
	test eax, eax
	jz _Z28BG_PlayerCanPickUpWeaponTypePK9WeaponDefPK13playerState_s_30
	xor eax, eax
_Z28BG_PlayerCanPickUpWeaponTypePK9WeaponDefPK13playerState_s_40:
	pop ebp
	ret
_Z28BG_PlayerCanPickUpWeaponTypePK9WeaponDefPK13playerState_s_10:
	mov eax, [ebp+0xc]
	cmp dword [eax+0xe4], 0x1
	jz _Z28BG_PlayerCanPickUpWeaponTypePK9WeaponDefPK13playerState_s_30
	xor eax, eax
	jmp _Z28BG_PlayerCanPickUpWeaponTypePK9WeaponDefPK13playerState_s_40


;BG_SetShellShockParmsFromDvars(shellshock_parms_t*)
_Z30BG_SetShellShockParmsFromDvarsP18shellshock_parms_t:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov eax, [bg_shock_screenBlurBlendTime]
	movss xmm0, dword [eax+0xc]
	mulss xmm0, [_float_1000_00000000]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x1c]
	cvttss2si eax, [ebp-0x1c]
	mov edx, [ebp+0x8]
	mov [edx+0x4], eax
	mov eax, [bg_shock_screenBlurBlendFadeTime]
	movss xmm0, dword [eax+0xc]
	mulss xmm0, [_float_1000_00000000]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x20]
	cvttss2si eax, [ebp-0x20]
	mov edx, [ebp+0x8]
	mov [edx], eax
	mov eax, [bg_shock_screenFlashShotFadeTime]
	movss xmm0, dword [eax+0xc]
	mulss xmm0, [_float_1000_00000000]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x24]
	cvttss2si eax, [ebp-0x24]
	mov edx, [ebp+0x8]
	mov [edx+0xc], eax
	movss xmm0, dword [_float_1000_00000000]
	mov eax, [bg_shock_screenFlashWhiteFadeTime]
	mulss xmm0, [eax+0xc]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x28]
	cvttss2si eax, [ebp-0x28]
	mov edx, [ebp+0x8]
	mov [edx+0x8], eax
	mov eax, [bg_shock_screenType]
	mov eax, [eax+0xc]
	mov [edx+0x10], eax
	mov dword [edx+0x14], 0xbb8
	mov eax, [bg_shock_viewKickPeriod]
	movss xmm1, dword [eax+0xc]
	movss xmm2, dword [_float_0_00100000]
	movaps xmm0, xmm2
	subss xmm0, xmm1
	ucomiss xmm0, [_float_0_00000000]
	jb _Z30BG_SetShellShockParmsFromDvarsP18shellshock_parms_t_10
	movss xmm0, dword [_float_1_00000000]
_Z30BG_SetShellShockParmsFromDvarsP18shellshock_parms_t_60:
	mov eax, [ebp+0x8]
	movss [eax+0x18], xmm0
	mov eax, [bg_shock_viewKickRadius]
	mov eax, [eax+0xc]
	mov edx, [ebp+0x8]
	mov [edx+0x1c], eax
	mov eax, [bg_shock_sound]
	movzx eax, byte [eax+0xc]
	mov [edx+0x20], al
	mov dword [esp+0x8], 0x40
	mov eax, [bg_shock_soundLoop]
	mov eax, [eax+0xc]
	mov [esp+0x4], eax
	mov eax, edx
	add eax, 0x21
	mov [esp], eax
	call strncpy
	mov dword [esp+0x8], 0x40
	mov eax, [bg_shock_soundLoopSilent]
	mov eax, [eax+0xc]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	add eax, 0x61
	mov [esp], eax
	call strncpy
	mov dword [esp+0x8], 0x40
	mov eax, [bg_shock_soundEnd]
	mov eax, [eax+0xc]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	add eax, 0xa1
	mov [esp], eax
	call strncpy
	mov dword [esp+0x8], 0x40
	mov eax, [bg_shock_soundEndAbort]
	mov eax, [eax+0xc]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	add eax, 0xe1
	mov [esp], eax
	call strncpy
	mov eax, [bg_shock_soundFadeInTime]
	movss xmm0, dword [eax+0xc]
	mulss xmm0, [_float_1000_00000000]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x2c]
	cvttss2si eax, [ebp-0x2c]
	mov edx, [ebp+0x8]
	mov [edx+0x124], eax
	mov eax, [bg_shock_soundFadeOutTime]
	movss xmm0, dword [eax+0xc]
	mulss xmm0, [_float_1000_00000000]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x30]
	cvttss2si eax, [ebp-0x30]
	mov edx, [ebp+0x8]
	mov [edx+0x128], eax
	mov eax, [bg_shock_soundLoopFadeTime]
	movss xmm0, dword [eax+0xc]
	mulss xmm0, [_float_1000_00000000]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x34]
	cvttss2si eax, [ebp-0x34]
	mov edx, [ebp+0x8]
	mov [edx+0x248], eax
	mov eax, [bg_shock_soundLoopEndDelay]
	movss xmm0, dword [eax+0xc]
	mulss xmm0, [_float_1000_00000000]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x38]
	cvttss2si eax, [ebp-0x38]
	mov edx, [ebp+0x8]
	mov [edx+0x24c], eax
	mov eax, [bg_shock_soundRoomType]
	mov [esp], eax
	call _Z17Dvar_EnumToStringPK6dvar_s
	mov dword [esp+0x8], 0xf
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	add eax, 0x134
	mov [esp], eax
	call strncpy
	mov eax, [ebp+0x8]
	mov byte [eax+0x143], 0x0
	mov eax, [bg_shock_soundDryLevel]
	mov eax, [eax+0xc]
	mov edx, [ebp+0x8]
	mov [edx+0x12c], eax
	mov eax, [bg_shock_soundWetLevel]
	mov eax, [eax+0xc]
	mov [edx+0x130], eax
	movss xmm0, dword [_float_1000_00000000]
	mov eax, [bg_shock_soundModEndDelay]
	mulss xmm0, [eax+0xc]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x3c]
	cvttss2si eax, [ebp-0x3c]
	mov edx, [ebp+0x8]
	mov [edx+0x244], eax
	mov ebx, edx
	xor edi, edi
	mov esi, bg_shock_volume
	pxor xmm3, xmm3
	jmp _Z30BG_SetShellShockParmsFromDvarsP18shellshock_parms_t_20
_Z30BG_SetShellShockParmsFromDvarsP18shellshock_parms_t_40:
	movaps xmm2, xmm3
	movss xmm1, dword [_float__1_00000000]
_Z30BG_SetShellShockParmsFromDvarsP18shellshock_parms_t_50:
	movaps xmm0, xmm4
	cmpss xmm0, xmm1, 0x6
	andps xmm2, xmm0
	movss xmm1, dword [_float_1_00000000]
	andnps xmm0, xmm1
	orps xmm0, xmm2
	movss [ebx+0x144], xmm0
	add edi, 0x1
	add ebx, 0x4
	add esi, 0x4
_Z30BG_SetShellShockParmsFromDvarsP18shellshock_parms_t_20:
	movss [ebp-0x58], xmm3
	call _Z22SND_GetEntChannelCountv
	cmp edi, eax
	movss xmm3, dword [ebp-0x58]
	jge _Z30BG_SetShellShockParmsFromDvarsP18shellshock_parms_t_30
	mov eax, [esi]
	movss xmm2, dword [eax+0xc]
	movaps xmm4, xmm3
	movaps xmm0, xmm3
	subss xmm0, xmm2
	ucomiss xmm0, xmm3
	jae _Z30BG_SetShellShockParmsFromDvarsP18shellshock_parms_t_40
	movaps xmm1, xmm2
	subss xmm1, [_float_1_00000000]
	jmp _Z30BG_SetShellShockParmsFromDvarsP18shellshock_parms_t_50
_Z30BG_SetShellShockParmsFromDvarsP18shellshock_parms_t_30:
	mov eax, [bg_shock_lookControl]
	movzx eax, byte [eax+0xc]
	mov edx, [ebp+0x8]
	mov [edx+0x250], al
	movss xmm0, dword [_float_1000_00000000]
	mov eax, [bg_shock_lookControl_fadeTime]
	mulss xmm0, [eax+0xc]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x40]
	cvttss2si eax, [ebp-0x40]
	mov edx, [ebp+0x8]
	mov [edx+0x254], eax
	mov eax, [bg_shock_lookControl_maxpitchspeed]
	mov eax, [eax+0xc]
	mov [edx+0x25c], eax
	mov eax, [bg_shock_lookControl_maxyawspeed]
	mov eax, [eax+0xc]
	mov [edx+0x260], eax
	mov eax, [bg_shock_lookControl_mousesensitivityscale]
	mov eax, [eax+0xc]
	mov [edx+0x258], eax
	mov eax, [bg_shock_movement]
	movzx eax, byte [eax+0xc]
	mov [edx+0x264], al
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z30BG_SetShellShockParmsFromDvarsP18shellshock_parms_t_10:
	movaps xmm0, xmm2
	divss xmm0, xmm1
	jmp _Z30BG_SetShellShockParmsFromDvarsP18shellshock_parms_t_60


;BG_PlayerHasRoomForEntAllAmmoTypes(entityState_s const*, playerState_s const*)
_Z34BG_PlayerHasRoomForEntAllAmmoTypesPK13entityState_sPK13playerState_s:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov edx, [ebx+0x88]
	lea eax, [edx-0x1]
	cmp eax, 0x7fe
	ja _Z34BG_PlayerHasRoomForEntAllAmmoTypesPK13entityState_sPK13playerState_s_10
	mov ebx, edx
	and ebx, 0x8000007f
	js _Z34BG_PlayerHasRoomForEntAllAmmoTypesPK13entityState_sPK13playerState_s_20
_Z34BG_PlayerHasRoomForEntAllAmmoTypesPK13entityState_sPK13playerState_s_60:
	test ebx, ebx
	jnz _Z34BG_PlayerHasRoomForEntAllAmmoTypesPK13entityState_sPK13playerState_s_30
_Z34BG_PlayerHasRoomForEntAllAmmoTypesPK13entityState_sPK13playerState_s_40:
	xor eax, eax
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z34BG_PlayerHasRoomForEntAllAmmoTypesPK13entityState_sPK13playerState_s_30:
	mov [esp+0x4], ebx
	mov eax, [ebp+0xc]
	mov [esp], eax
	call _Z23BG_GetMaxPickupableAmmoPK13playerState_sj
	test eax, eax
	jz _Z34BG_PlayerHasRoomForEntAllAmmoTypesPK13entityState_sPK13playerState_s_40
	mov [esp], ebx
	call _Z15BG_GetWeaponDefj
	mov eax, [eax+0x540]
	test eax, eax
	jnz _Z34BG_PlayerHasRoomForEntAllAmmoTypesPK13entityState_sPK13playerState_s_50
	mov eax, 0x1
_Z34BG_PlayerHasRoomForEntAllAmmoTypesPK13entityState_sPK13playerState_s_70:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z34BG_PlayerHasRoomForEntAllAmmoTypesPK13entityState_sPK13playerState_s_10:
	mov eax, [ebx+0x4]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], _cstring_bg_playerhasroom
	call _Z2vaPKcz
	mov [esp+0x4], eax
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	mov edx, [ebx+0x88]
	mov ebx, edx
	and ebx, 0x8000007f
	jns _Z34BG_PlayerHasRoomForEntAllAmmoTypesPK13entityState_sPK13playerState_s_60
_Z34BG_PlayerHasRoomForEntAllAmmoTypesPK13entityState_sPK13playerState_s_20:
	sub ebx, 0x1
	or ebx, 0xffffff80
	add ebx, 0x1
	jmp _Z34BG_PlayerHasRoomForEntAllAmmoTypesPK13entityState_sPK13playerState_s_60
_Z34BG_PlayerHasRoomForEntAllAmmoTypesPK13entityState_sPK13playerState_s_50:
	mov [esp+0x4], eax
	mov eax, [ebp+0xc]
	mov [esp], eax
	call _Z23BG_GetMaxPickupableAmmoPK13playerState_sj
	test eax, eax
	jz _Z34BG_PlayerHasRoomForEntAllAmmoTypesPK13entityState_sPK13playerState_s_40
	mov eax, 0x1
	jmp _Z34BG_PlayerHasRoomForEntAllAmmoTypesPK13entityState_sPK13playerState_s_70


;BG_AddPredictableEventToPlayerstate(int, unsigned int, playerState_s*)
_Z35BG_AddPredictableEventToPlayerstateijP13playerState_s:
	push ebp
	mov ebp, esp
	push ebx
	mov eax, [ebp+0x8]
	mov ebx, [ebp+0x10]
	test eax, eax
	jz _Z35BG_AddPredictableEventToPlayerstateijP13playerState_s_10
	mov edx, [ebx+0xb4]
	mov ecx, edx
	and ecx, 0x3
	movzx eax, al
	mov [ebx+ecx*4+0xb8], eax
	movzx eax, byte [ebp+0xc]
	mov [ebx+ecx*4+0xc8], eax
	add edx, 0x1
	and edx, 0xff
	mov [ebx+0xb4], edx
_Z35BG_AddPredictableEventToPlayerstateijP13playerState_s_10:
	pop ebx
	pop ebp
	ret


;Initialized global or static variables of bg_misc:
SECTION .data
entityTypeNames: dd _cstring_general, _cstring_player, _cstring_corpse, _cstring_item, _cstring_missle, _cstring_invisible_entity, _cstring_scriptmover, _cstring_sound_blend, _cstring_fx, _cstring_loop_fx, _cstring_primary_light, _cstring_mg42, _cstring_helicopter, _cstring_plane, _cstring_vehicle, _cstring_vehicle_collmap, _cstring_vehicle_corpse, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
bg_soundRoomTypes: dd _cstring_generic, _cstring_paddedcell, _cstring_room, _cstring_bathroom, _cstring_livingroom, _cstring_stoneroom, _cstring_auditorium, _cstring_concerthall, _cstring_cave, _cstring_arena, _cstring_hangar, _cstring_carpetedhallway, _cstring_hallway, _cstring_stonecorridor, _cstring_alley, _cstring_forest, _cstring_city, _cstring_mountains, _cstring_quarry, _cstring_plain, _cstring_parkinglot, _cstring_sewerpipe, _cstring_underwater, _cstring_drugged, _cstring_dizzy, _cstring_psychotic, 0x0
bg_ShockScreenTypeNames: dd _cstring_blurred, _cstring_flashed, _cstring_none, 0x0, 0x0
bgShockDvarNames: dd _cstring_bg_shock_screent, _cstring_bg_shock_screenb, _cstring_bg_shock_screenb1, _cstring_bg_shock_screenf, _cstring_bg_shock_screenf1, _cstring_bg_shock_viewkic, _cstring_bg_shock_viewkic1, _cstring_bg_shock_viewkic2, _cstring_bg_shock_soundlo, _cstring_bg_shock_soundlo1, _cstring_bg_shock_sounden, _cstring_bg_shock_sounden1, _cstring_bg_shock_sound, _cstring_bg_shock_soundfa, _cstring_bg_shock_soundfa1, _cstring_bg_shock_soundlo2, _cstring_bg_shock_soundlo3, _cstring_bg_shock_soundro, _cstring_bg_shock_sounddr, _cstring_bg_shock_soundwe, _cstring_bg_shock_soundmo, _cstring_bg_shock_lookcon, _cstring_bg_shock_lookcon1, _cstring_bg_shock_lookcon2, _cstring_bg_shock_lookcon3, _cstring_bg_shock_lookcon4, _cstring_bg_shock_movemen, 0x0, 0x0, 0x0, 0x0, 0x0
eventnames: dd _cstring_ev_none, _cstring_ev_foliage_sound, _cstring_ev_stop_weapon_s, _cstring_ev_sound_alias, _cstring_ev_sound_alias_a, _cstring_ev_stopsounds, _cstring_ev_stance_force_, _cstring_ev_stance_force_1, _cstring_ev_stance_force_2, _cstring_ev_item_pickup, _cstring_ev_ammo_pickup, _cstring_ev_noammo, _cstring_ev_emptyclip, _cstring_ev_empty_offhand, _cstring_ev_reset_ads, _cstring_ev_reload, _cstring_ev_reload_from_e, _cstring_ev_reload_start, _cstring_ev_reload_end, _cstring_ev_reload_start_, _cstring_ev_reload_addamm, _cstring_ev_raise_weapon, _cstring_ev_first_raise_w, _cstring_ev_putaway_weapo, _cstring_ev_weapon_alt, _cstring_ev_pullback_weap, _cstring_ev_fire_weapon, _cstring_ev_fire_weapon_l, _cstring_ev_rechamber_wea, _cstring_ev_eject_brass, _cstring_ev_melee_swipe, _cstring_ev_fire_melee, _cstring_ev_prep_offhand, _cstring_ev_use_offhand, _cstring_ev_switch_offhan, _cstring_ev_melee_hit, _cstring_ev_melee_miss, _cstring_ev_melee_blood, _cstring_ev_fire_weapon_m, _cstring_ev_fire_quadbarr, _cstring_ev_fire_quadbarr1, _cstring_ev_bullet_hit, _cstring_ev_bullet_hit_cl, _cstring_ev_bullet_hit_cl1, _cstring_ev_grenade_bounc, _cstring_ev_grenade_explo, _cstring_ev_rocket_explod, _cstring_ev_rocket_explod1, _cstring_ev_flashbang_exp, _cstring_ev_custom_explod, _cstring_ev_custom_explod1, _cstring_ev_change_to_dud, _cstring_ev_dud_explode, _cstring_ev_dud_impact, _cstring_ev_bullet, _cstring_ev_play_fx, _cstring_ev_play_fx_on_ta, _cstring_ev_phys_explosio, _cstring_ev_phys_explosio1, _cstring_ev_phys_explosio2, _cstring_ev_phys_jitter, _cstring_ev_earthquake, _cstring_ev_grenade_suici, _cstring_ev_detonate, _cstring_ev_nightvision_w, _cstring_ev_nightvision_r, _cstring_ev_obituary, _cstring_ev_no_frag_grena, _cstring_ev_no_special_gr, _cstring_ev_target_too_cl, _cstring_ev_target_not_en, _cstring_ev_lockon_requir, _cstring_ev_footstep_spri, _cstring_ev_footstep_run, _cstring_ev_footstep_walk, _cstring_ev_footstep_pron, _cstring_ev_jump, _cstring_ev_landing_defau, _cstring_ev_landing_bark, _cstring_ev_landing_brick, _cstring_ev_landing_carpe, _cstring_ev_landing_cloth, _cstring_ev_landing_concr, _cstring_ev_landing_dirt, _cstring_ev_landing_flesh, _cstring_ev_landing_folia, _cstring_ev_landing_glass, _cstring_ev_landing_grass, _cstring_ev_landing_grave, _cstring_ev_landing_ice, _cstring_ev_landing_metal, _cstring_ev_landing_mud, _cstring_ev_landing_paper, _cstring_ev_landing_plast, _cstring_ev_landing_rock, _cstring_ev_landing_sand, _cstring_ev_landing_snow, _cstring_ev_landing_water, _cstring_ev_landing_wood, _cstring_ev_landing_aspha, _cstring_ev_landing_ceram, _cstring_ev_landing_plast1, _cstring_ev_landing_rubbe, _cstring_ev_landing_cushi, _cstring_ev_landing_fruit, _cstring_ev_landing_paint, _cstring_ev_landing_pain_, _cstring_ev_landing_pain_1, _cstring_ev_landing_pain_2, _cstring_ev_landing_pain_3, _cstring_ev_landing_pain_4, _cstring_ev_landing_pain_5, _cstring_ev_landing_pain_6, _cstring_ev_landing_pain_7, _cstring_ev_landing_pain_8, _cstring_ev_landing_pain_9, _cstring_ev_landing_pain_10, _cstring_ev_landing_pain_11, _cstring_ev_landing_pain_12, _cstring_ev_landing_pain_13, _cstring_ev_landing_pain_14, _cstring_ev_landing_pain_15, _cstring_ev_landing_pain_16, _cstring_ev_landing_pain_17, _cstring_ev_landing_pain_18, _cstring_ev_landing_pain_19, _cstring_ev_landing_pain_20, _cstring_ev_landing_pain_21, _cstring_ev_landing_pain_22, _cstring_ev_landing_pain_23, _cstring_ev_landing_pain_24, _cstring_ev_landing_pain_25, _cstring_ev_landing_pain_26, _cstring_ev_landing_pain_27, _cstring_ev_landing_pain_28, 0x0


;Initialized constant data of bg_misc:
SECTION .rdata
serverOnlyEvents: dd 0x1f, 0x14, 0x13, 0xffffffff, 0x0, 0x0, 0x0, 0x0
singleClientEvents: dd 0x6, 0x7, 0x8, 0x22, 0xd, 0xe, 0x20, 0x21, 0x22, 0x25, 0x2a, 0x2b, 0xffffffff, 0x2cff1, 0x2cff1, 0x2d00c, 0x2d002, 0x2d078, 0x2d047, 0x2d027, 0x2cfe1, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0


;Zero initialized global or static variables of bg_misc:
SECTION .bss
_ZZ22BG_SaveShellShockDvarsPKcE7filebuf: resb 0x10000
player_meleeRange: resb 0x4
bg_legYawTolerance: resb 0x4
bg_swingSpeed: resb 0x4
player_lean_rotate_crouch_left: resb 0x4
player_lean_rotate_crouch_right: resb 0x4
player_lean_rotate_left: resb 0x4
player_lean_rotate_right: resb 0x4
player_lean_shift_crouch_left: resb 0x4
player_lean_shift_crouch_right: resb 0x4
player_lean_shift_left: resb 0x4
player_lean_shift_right: resb 0x4
player_move_factor_on_torso: resb 0x4
bgShockChannelNames: resb 0x1400
bg_aimSpreadMoveSpeedThreshold: resb 0x4
bg_bobAmplitudeDucked: resb 0x4
bg_bobAmplitudeProne: resb 0x4
bg_bobAmplitudeSprinting: resb 0x4
bg_bobAmplitudeStanding: resb 0x4
bg_bobMax: resb 0x4
bg_fallDamageMaxHeight: resb 0x4
bg_fallDamageMinHeight: resb 0x4
bg_foliagesnd_fastinterval: resb 0x4
bg_foliagesnd_maxspeed: resb 0x4
bg_foliagesnd_minspeed: resb 0x4
bg_foliagesnd_resetinterval: resb 0x4
bg_foliagesnd_slowinterval: resb 0x4
bg_ladder_yawcap: resb 0x4
bg_maxGrenadeIndicatorSpeed: resb 0x4
bg_prone_yawcap: resb 0x4
bg_shellshockParms: resb 0x2680
bg_shock_lookControl: resb 0x1c
bg_shock_lookControl_fadeTime: resb 0x4
bg_shock_lookControl_maxpitchspeed: resb 0x4
bg_shock_lookControl_maxyawspeed: resb 0x4
bg_shock_lookControl_mousesensitivityscale: resb 0x4
bg_shock_movement: resb 0x4
bg_shock_screenBlurBlendFadeTime: resb 0x4
bg_shock_screenBlurBlendTime: resb 0x4
bg_shock_screenFlashShotFadeTime: resb 0x4
bg_shock_screenFlashWhiteFadeTime: resb 0x4
bg_shock_screenType: resb 0x70
bg_shock_sound: resb 0x4
bg_shock_soundDryLevel: resb 0x4
bg_shock_soundEnd: resb 0x4
bg_shock_soundEndAbort: resb 0x4
bg_shock_soundFadeInTime: resb 0x4
bg_shock_soundFadeOutTime: resb 0x4
bg_shock_soundLoop: resb 0x4
bg_shock_soundLoopEndDelay: resb 0x4
bg_shock_soundLoopFadeTime: resb 0x4
bg_shock_soundLoopSilent: resb 0x4
bg_shock_soundModEndDelay: resb 0x4
bg_shock_soundRoomType: resb 0x4
bg_shock_soundWetLevel: resb 0x4
bg_shock_viewKickFadeTime: resb 0x4
bg_shock_viewKickPeriod: resb 0x4
bg_shock_viewKickRadius: resb 0x4
bg_shock_volume: resb 0x100
bg_viewKickMax: resb 0x4
bg_viewKickMin: resb 0x4
bg_viewKickRandom: resb 0x4
bg_viewKickScale: resb 0x4
bullet_penetrationMinFxDist: resb 0x4
friction: resb 0x4
inertiaAngle: resb 0x4
inertiaDebug: resb 0x4
inertiaMax: resb 0x4
player_adsExitDelay: resb 0x4
player_backSpeedScale: resb 0x4
player_breath_fire_delay: resb 0x4
player_breath_gasp_lerp: resb 0x4
player_breath_gasp_scale: resb 0x4
player_breath_gasp_time: resb 0x4
player_breath_hold_lerp: resb 0x4
player_breath_hold_time: resb 0x4
player_breath_snd_delay: resb 0x4
player_breath_snd_lerp: resb 0x4
player_burstFireCooldown: resb 0x4
player_debugHealth: resb 0x4
player_dmgtimer_flinchTime: resb 0x4
player_dmgtimer_maxTime: resb 0x4
player_dmgtimer_minScale: resb 0x4
player_dmgtimer_stumbleTime: resb 0x4
player_dmgtimer_timePerPoint: resb 0x4
player_footstepsThreshhold: resb 0x4
player_meleeChargeFriction: resb 0x4
player_meleeHeight: resb 0x4
player_meleeWidth: resb 0x4
player_moveThreshhold: resb 0x4
player_scopeExitOnDamage: resb 0x4
player_spectateSpeedScale: resb 0x4
player_sprintCameraBob: resb 0x4
player_sprintForwardMinimum: resb 0x4
player_sprintMinTime: resb 0x4
player_sprintRechargePause: resb 0x4
player_sprintSpeedScale: resb 0x4
player_sprintStrafeSpeedScale: resb 0x4
player_sprintTime: resb 0x4
player_strafeAnimCosAngle: resb 0x4
player_strafeSpeedScale: resb 0x4
player_sustainAmmo: resb 0x4
player_turnAnims: resb 0x4
player_view_pitch_down: resb 0x4
player_view_pitch_up: resb 0x4
stopspeed: resb 0x4


;All cstrings:
SECTION .rdata
_cstring_the_scale_to_app:		db "The scale to apply to the damage done to caluclate damage view kick",0
_cstring_bg_viewkickscale:		db "bg_viewKickScale",0
_cstring_the_maximum_view:		db "The maximum view kick",0
_cstring_bg_viewkickmax:		db "bg_viewKickMax",0
_cstring_the_minimum_view:		db "The minimum view kick",0
_cstring_bg_viewkickmin:		db "bg_viewKickMin",0
_cstring_the_random_direc:		db "The random direction scale view kick",0
_cstring_bg_viewkickrando:		db "bg_viewKickRandom",0
_cstring_maximum_angle_th:		db "Maximum angle that the player can look up",0
_cstring_player_view_pitc:		db "player_view_pitch_up",0
_cstring_maximum_angle_th1:		db "Maximum angle that the player can look down",0
_cstring_player_view_pitc1:		db "player_view_pitch_down",0
_cstring_amount_to_shift_:		db "Amount to shift the player 3rd person model when leaning left",0
_cstring_player_lean_shif:		db "player_lean_shift_left",0
_cstring_amount_to_shift_1:		db "Amount to shift the player 3rd person model when leaning right",0
_cstring_player_lean_shif1:		db "player_lean_shift_right",0
_cstring_amount_to_shift_2:		db "Amount to shift the player 3rd person model when crouch leaning left",0
_cstring_player_lean_shif2:		db "player_lean_shift_crouch_left",0
_cstring_amount_to_shift_3:		db "Amount to shift the player 3rd person model when crouch leaning right",0
_cstring_player_lean_shif3:		db "player_lean_shift_crouch_right",0
_cstring_amount_to_rotate:		db "Amount to rotate the player 3rd person model when leaning left",0
_cstring_player_lean_rota:		db "player_lean_rotate_left",0
_cstring_amount_to_rotate1:		db "Amount to rotate the player 3rd person model when leaning right",0
_cstring_player_lean_rota1:		db "player_lean_rotate_right",0
_cstring_amount_to_rotate2:		db "Amount to rotate the player 3rd person model when crouch leaning left",0
_cstring_player_lean_rota2:		db "player_lean_rotate_crouch_left",0
_cstring_amount_to_rotate3:		db "Amount to rotate the player 3rd person model when crouch leaning right",0
_cstring_player_lean_rota3:		db "player_lean_rotate_crouch_right",0
_cstring_the_maximum_angl:		db "The maximum angle that a player can look around while on a ladder",0
_cstring_bg_ladder_yawcap:		db "bg_ladder_yawcap",0
_cstring_the_maximum_angl1:		db "The maximum angle that a player can look around quickly while prone",0
_cstring_bg_prone_yawcap:		db "bg_prone_yawcap",0
_cstring_the_speed_that_a:		db "The speed that a player must be going to make minimum noise while moving through foliage",0
_cstring_bg_foliagesnd_mi:		db "bg_foliagesnd_minspeed",0
_cstring_the_speed_that_a1:		db "The speed that a player must be going to make maximum noise while moving through foliage",0
_cstring_bg_foliagesnd_ma:		db "bg_foliagesnd_maxspeed",0
_cstring_the_time_between:		db "The time between each foliage sound when moving slowly",0
_cstring_bg_foliagesnd_sl:		db "bg_foliagesnd_slowinterval",0
_cstring_the_time_between1:		db "The time between each foliage sound when moving quickly",0
_cstring_bg_foliagesnd_fa:		db "bg_foliagesnd_fastinterval",0
_cstring_the_time_interva:		db "The time interval before foliage sounds are reset after the player has stopped moving",0
_cstring_bg_foliagesnd_re:		db "bg_foliagesnd_resetinterval",0
_cstring_the_height_that_:		db "The height that a player will start to take minimum damage if they fall",0
_cstring_bg_falldamagemin:		db "bg_fallDamageMinHeight",0
_cstring_the_height_that_1:		db "The height that a player will take maximum damage when falling",0
_cstring_bg_falldamagemax:		db "bg_fallDamageMaxHeight",0
_cstring_maximum_player_i:		db "Maximum player inertia",0
_cstring_inertiamax:		db "inertiaMax",0
_cstring_show_inertia_deb:		db "Show inertia debug information",0
_cstring_inertiadebug:		db "inertiaDebug",0
_cstring_the_cosine_of_th:		db "The cosine of the angle at which inertia occurs",0
_cstring_inertiaangle:		db "inertiaAngle",0
_cstring_player_friction:		db "Player friction",0
_cstring_friction:		db "friction",0
_cstring_the_player_decel:		db "The player deceleration",0
_cstring_stopspeed:		db "stopspeed",0
_cstring_the_rate_at_whic:		db "The rate at which the player",27h,"s legs swing around when strafing(multi-player only)",0
_cstring_bg_swingspeed:		db "bg_swingSpeed",0
_cstring_the_amount_the_p:		db "The amount the player",27h,"s leg yaw can differ from his torso before moving ta match",0
_cstring_bg_legyawtoleran:		db "bg_legYawTolerance",0
_cstring_the_multiplier_t:		db "The multiplier to apply to the player",27h,"s speed to get the bob amplitude while sprinting",0
_cstring_bg_bobamplitudes:		db "bg_bobAmplitudeSprinting",0
_cstring_the_multiplier_t1:		db "The multiplier to apply to the player",27h,"s speed to get the bob amplitude while standing",0
_cstring_bg_bobamplitudes1:		db "bg_bobAmplitudeStanding",0
_cstring_the_multiplier_t2:		db "The multiplier to apply to the player",27h,"s speed to get the bob amplitude while ducking",0
_cstring_bg_bobamplituded:		db "bg_bobAmplitudeDucked",0
_cstring_the_multiplier_t3:		db "The multiplier to apply to the player",27h,"s speed to get the bob amplitude while prone",0
_cstring_bg_bobamplitudep:		db "bg_bobAmplitudeProne",0
_cstring_the_maximum_allo:		db "The maximum allowed bob amplitude",0
_cstring_bg_bobmax:		db "bg_bobMax",0
_cstring_when_player_is_m:		db "When player is moving faster than this speed, the aim spread will increase",0
_cstring_bg_aimspreadmove:		db "bg_aimSpreadMoveSpeedThreshold",0
_cstring_maximum_speed_of:		db "Maximum speed of grenade that will show up in indicator and can be thrown back.",0
_cstring_bg_maxgrenadeind:		db "bg_maxGrenadeIndicatorSpeed",0
_cstring_the_maximum_time:		db "The maximum time a player can hold his breath",0
_cstring_player_breath_ho:		db "player_breath_hold_time",0
_cstring_the_amount_of_ti:		db "The amount of time a player will gasp once they can breath again",0
_cstring_player_breath_ga:		db "player_breath_gasp_time",0
_cstring_the_amount_of_ti1:		db "The amount of time subtracted from the player remaining breath time when a weapon is fired",0
_cstring_player_breath_fi:		db "player_breath_fire_delay",0
_cstring_scale_value_to_a:		db "Scale value to apply to the target waver during a gasp",0
_cstring_player_breath_ga1:		db "player_breath_gasp_scale",0
_cstring_the_interpolatio:		db "The interpolation rate for the target waver amplitude when holding breath",0
_cstring_player_breath_ho1:		db "player_breath_hold_lerp",0
_cstring_the_interpolatio1:		db "The interpolation rate for the target waver amplitude when gasping",0
_cstring_player_breath_ga2:		db "player_breath_gasp_lerp",0
_cstring_the_interpolatio2:		db "The interpolation rate for the player hold breath sound",0
_cstring_player_breath_sn:		db "player_breath_snd_lerp",0
_cstring_the_delay_before:		db "The delay before playing the breathe in sound",0
_cstring_player_breath_sn1:		db "player_breath_snd_delay",0
_cstring_exit_the_scope_i:		db "Exit the scope if the player takes damage",0
_cstring_player_scopeexit:		db "player_scopeExitOnDamage",0
_cstring_delay_before_exi:		db "Delay before exiting aim down sight",0
_cstring_player_adsexitde:		db "player_adsExitDelay",0
_cstring_the_contribution:		db "The contribution movement direction has on player torso direction(multi-player only)",0
_cstring_player_move_fact:		db "player_move_factor_on_torso",0
_cstring_turn_on_debuggin:		db "Turn on debugging info for player health",0
_cstring_player_debugheal:		db "player_debugHealth",0
_cstring_firing_weapon_wi:		db "Firing weapon will not decrease clip ammo.",0
_cstring_player_sustainam:		db "player_sustainAmmo",0
_cstring_the_speed_at_whi:		db "The speed at which the player is considered to be moving for the purposes of ",0ah,"view model bob and multiplayer model movement",0
_cstring_player_movethres:		db "player_moveThreshhold",0
_cstring_the_minimum_spee:		db "The minimum speed at which the player makes loud footstep noises",0
_cstring_player_footsteps:		db "player_footstepsThreshhold",0
_cstring_the_scale_applie:		db "The scale applied to the player speed when strafing",0
_cstring_player_strafespe:		db "player_strafeSpeedScale",0
_cstring_the_scale_applie1:		db "The scale applied to the player speed when moving backwards",0
_cstring_player_backspeed:		db "player_backSpeedScale",0
_cstring_cosine_of_the_an:		db "Cosine of the angle which player starts using strafe animations",0
_cstring_player_strafeani:		db "player_strafeAnimCosAngle",0
_cstring_the_scale_applie2:		db "The scale applied to the player speed when spectating",0
_cstring_player_spectates:		db "player_spectateSpeedScale",0
_cstring_the_minimum_forw:		db "The minimum forward deflection required to maintain a sprint",0
_cstring_player_sprintfor:		db "player_sprintForwardMinimum",0
_cstring_the_scale_applie3:		db "The scale applied to the player speed when sprinting",0
_cstring_player_sprintspe:		db "player_sprintSpeedScale",0
_cstring_the_base_length_:		db "The base length of time a player can sprint",0
_cstring_player_sprinttim:		db "player_sprintTime",0
_cstring_the_minimum_spri:		db "The minimum sprint time needed in order to start sprinting",0
_cstring_player_sprintmin:		db "player_sprintMinTime",0
_cstring_the_length_of_ti:		db "The length of time the meter will pause before starting to recharge after a player sprints",0
_cstring_player_sprintrec:		db "player_sprintRechargePause",0
_cstring_the_speed_at_whi1:		db "The speed at which you can strafe while sprinting",0
_cstring_player_sprintstr:		db "player_sprintStrafeSpeedScale",0
_cstring_the_speed_the_ca:		db "The speed the camera bobs while you sprint",0
_cstring_player_sprintcam:		db "player_sprintCameraBob",0
_cstring_use_animations_t:		db "Use animations to turn a player",27h,"s model in multiplayer",0
_cstring_player_turnanims:		db "player_turnAnims",0
_cstring_the_time_in_mill:		db "The time in milliseconds that the player is slowed down per point of damage",0
_cstring_player_dmgtimer_:		db "player_dmgtimer_timePerPoint",0
_cstring_the_maximum_time1:		db "The maximum time that the player is slowed due to damage",0
_cstring_player_dmgtimer_1:		db "player_dmgtimer_maxTime",0
_cstring_the_minimum_scal:		db "The minimum scale value to slow the player by when damaged",0
_cstring_player_dmgtimer_2:		db "player_dmgtimer_minScale",0
_cstring_maximum_time_to_:		db "Maximum time to play stumble animations",0
_cstring_player_dmgtimer_3:		db "player_dmgtimer_stumbleTime",0
_cstring_maximum_time_to_1:		db "Maximum time to play flinch animations",0
_cstring_player_dmgtimer_4:		db "player_dmgtimer_flinchTime",0
_cstring_shellshock_loop_:		db "Shellshock loop alias",0
_cstring_shellshock_loop:		db "shellshock_loop",0
_cstring_bg_shock_soundlo:		db "bg_shock_soundLoop",0
_cstring_the_sound_that_g:		db "The sound that gets blended with the shellshock loop alias",0
_cstring_shellshock_loop_1:		db "shellshock_loop_silent",0
_cstring_bg_shock_soundlo1:		db "bg_shock_soundLoopSilent",0
_cstring_shellshock_end_s:		db "Shellshock end sound alias",0
_cstring_shellshock_end:		db "shellshock_end",0
_cstring_bg_shock_sounden:		db "bg_shock_soundEnd",0
_cstring_shellshock_abort:		db "Shellshock aborted end sound alias",0
_cstring_shellshock_end_a:		db "shellshock_end_abort",0
_cstring_bg_shock_sounden1:		db "bg_shock_soundEndAbort",0
_cstring_shell_shock_scre:		db "Shell shock screen effect type",0
_cstring_bg_shock_screent:		db "bg_shock_screenType",0
_cstring_the_amount_of_ti2:		db "The amount of time in seconds for the shellshock effect to blend",0
_cstring_bg_shock_screenb:		db "bg_shock_screenBlurBlendTime",0
_cstring_the_amount_of_ti3:		db "The amount of time in seconds for the shellshock effect to fade",0
_cstring_bg_shock_screenb1:		db "bg_shock_screenBlurBlendFadeTime",0
_cstring_in_seconds_how_s:		db "In seconds, how soon from the end of the effect to start blending out the whiteout layer.",0
_cstring_bg_shock_screenf:		db "bg_shock_screenFlashWhiteFadeTime",0
_cstring_in_seconds_how_s1:		db "In seconds, how soon from the end of the effect to start blending out the screengrab layer.",0
_cstring_bg_shock_screenf1:		db "bg_shock_screenFlashShotFadeTime",0
_cstring_the_period_of_th:		db "The period of the shellshock view kick effect",0
_cstring_bg_shock_viewkic:		db "bg_shock_viewKickPeriod",0
_cstring_shell_shock_kick:		db "Shell shock kick radius",0
_cstring_bg_shock_viewkic1:		db "bg_shock_viewKickRadius",0
_cstring_the_time_for_the:		db "The time for the shellshock kick effect to fade",0
_cstring_bg_shock_viewkic2:		db "bg_shock_viewKickFadeTime",0
_cstring_play_shell_shock:		db "Play shell shock sound",0
_cstring_bg_shock_sound:		db "bg_shock_sound",0
_cstring_shell_shock_soun:		db "Shell shock sound fade in time in seconds",0
_cstring_bg_shock_soundfa:		db "bg_shock_soundFadeInTime",0
_cstring_shell_shock_soun1:		db "Shell shock sound fade out time in seconds",0
_cstring_bg_shock_soundfa1:		db "bg_shock_soundFadeOutTime",0
_cstring_shell_shock_soun2:		db "Shell shock sound loop fade time in seconds",0
_cstring_bg_shock_soundlo2:		db "bg_shock_soundLoopFadeTime",0
_cstring_sound_loop_end_o:		db "Sound loop end offset time from the end of the shellshock in seconds",0
_cstring_bg_shock_soundlo3:		db "bg_shock_soundLoopEndDelay",0
_cstring_shell_shock_soun3:		db "Shell shock sound room type",0
_cstring_bg_shock_soundro:		db "bg_shock_soundRoomType",0
_cstring_shell_shock_soun4:		db "Shell shock sound dry level",0
_cstring_bg_shock_sounddr:		db "bg_shock_soundDryLevel",0
_cstring_shell_shock_soun5:		db "Shell shock sound wet level",0
_cstring_bg_shock_soundwe:		db "bg_shock_soundWetLevel",0
_cstring_the_delay_from_t:		db "The delay from the end of the shell shock to the end of the sound modification",0
_cstring_bg_shock_soundmo:		db "bg_shock_soundModEndDelay",0
_cstring_bg_shock_volume_:		db "bg_shock_volume_%s",0
_cstring_null:		db 0
_cstring_alter_player_con:		db "Alter player control during shellshock",0
_cstring_bg_shock_lookcon:		db "bg_shock_lookControl",0
_cstring_maximum_pitch_mo:		db "Maximum pitch movement rate while shellshocked in degrees per second",0
_cstring_bg_shock_lookcon1:		db "bg_shock_lookControl_maxpitchspeed",0
_cstring_maximum_yaw_move:		db "Maximum yaw movement rate while shell shocked in degrees per second",0
_cstring_bg_shock_lookcon2:		db "bg_shock_lookControl_maxyawspeed",0
_cstring_sensitivity_scal:		db "Sensitivity scale to apply to a shellshocked player",0
_cstring_bg_shock_lookcon3:		db "bg_shock_lookControl_mousesensitivityscale",0
_cstring_the_time_for_the1:		db "The time for the shellshock player control to fade in seconds",0
_cstring_bg_shock_lookcon4:		db "bg_shock_lookControl_fadeTime",0
_cstring_affect_players_m:		db "Affect player",27h,"s movement speed duringi shellshock",0
_cstring_bg_shock_movemen:		db "bg_shock_movement",0
_cstring_the_maximum_rang:		db "The maximum range of the player",27h,"s mellee attack",0
_cstring_player_meleerang:		db "player_meleeRange",0
_cstring_the_width_of_the:		db "The width of the player",27h,"s melee attack",0
_cstring_player_meleewidt:		db "player_meleeWidth",0
_cstring_the_height_of_th:		db "The height of the player",27h,"s melee attack",0
_cstring_player_meleeheig:		db "player_meleeHeight",0
_cstring_friction_used_du:		db "Friction used during melee charge",0
_cstring_player_meleechar:		db "player_meleeChargeFriction",0
_cstring_seconds_after_a_:		db "Seconds after a burst fire before weapons can be fired again.",0
_cstring_player_burstfire:		db "player_burstFireCooldown",0
_cstring_min_distance_a_p:		db "Min distance a penetrated bullet must travel before it",27h,"ll trigger the effects",0
_cstring_bullet_penetrati:		db "bullet_penetrationMinFxDist",0
_cstring_bg_canitembegrab:		db 015h,"BG_CanItemBeGrabbed: index out of range (index is %i, eType is %i)",0
_cstring_event_s_i:		db "Event %s (%i)",0
_cstring_bg_evaluatetraje:		db 015h,"BG_EvaluateTrajectory: unknown trType: %i",0
_cstring_shocksshock:		db "shock/%s.shock",0
_cstring_couldnt_open_s:		db "couldn",27h,"t open ",27h,"%s",27h,".",0ah,0
_cstring_shockdefaultshoc:		db "shock/default.shock",0
_cstring_couldnt_open_sho:		db "couldn",27h,"t open ",27h,"shock/default.shock",27h,". This is a default shock file that you should have.",0ah,0
_cstring_bg_evaluatetraje1:		db 015h,"BG_EvaluateTrajectoryDelta: unknown trType: %i",0
_cstring_bg_playerhasroom:		db 015h,"BG_PlayerHasRoomForAllAmmoTypesOfEnt: index out of range (index is %i, eType is %i)",0
_cstring_general:		db "General",0
_cstring_player:		db "Player",0
_cstring_corpse:		db "Corpse",0
_cstring_item:		db "Item",0
_cstring_missle:		db "Missle",0
_cstring_invisible_entity:		db "Invisible entity",0
_cstring_scriptmover:		db "Scriptmover",0
_cstring_sound_blend:		db "Sound blend",0
_cstring_fx:		db "FX",0
_cstring_loop_fx:		db "Loop FX",0
_cstring_primary_light:		db "Primary Light",0
_cstring_mg42:		db "MG42",0
_cstring_helicopter:		db "Helicopter",0
_cstring_plane:		db "Plane",0
_cstring_vehicle:		db "Vehicle",0
_cstring_vehicle_collmap:		db "Vehicle collmap",0
_cstring_vehicle_corpse:		db "Vehicle corpse",0
_cstring_generic:		db "generic",0
_cstring_paddedcell:		db "paddedcell",0
_cstring_room:		db "room",0
_cstring_bathroom:		db "bathroom",0
_cstring_livingroom:		db "livingroom",0
_cstring_stoneroom:		db "stoneroom",0
_cstring_auditorium:		db "auditorium",0
_cstring_concerthall:		db "concerthall",0
_cstring_cave:		db "cave",0
_cstring_arena:		db "arena",0
_cstring_hangar:		db "hangar",0
_cstring_carpetedhallway:		db "carpetedhallway",0
_cstring_hallway:		db "hallway",0
_cstring_stonecorridor:		db "stonecorridor",0
_cstring_alley:		db "alley",0
_cstring_forest:		db "forest",0
_cstring_city:		db "city",0
_cstring_mountains:		db "mountains",0
_cstring_quarry:		db "quarry",0
_cstring_plain:		db "plain",0
_cstring_parkinglot:		db "parkinglot",0
_cstring_sewerpipe:		db "sewerpipe",0
_cstring_underwater:		db "underwater",0
_cstring_drugged:		db "drugged",0
_cstring_dizzy:		db "dizzy",0
_cstring_psychotic:		db "psychotic",0
_cstring_blurred:		db "blurred",0
_cstring_flashed:		db "flashed",0
_cstring_none:		db "none",0
_cstring_ev_none:		db "EV_NONE",0
_cstring_ev_foliage_sound:		db "EV_FOLIAGE_SOUND",0
_cstring_ev_stop_weapon_s:		db "EV_STOP_WEAPON_SOUND",0
_cstring_ev_sound_alias:		db "EV_SOUND_ALIAS",0
_cstring_ev_sound_alias_a:		db "EV_SOUND_ALIAS_AS_MASTER",0
_cstring_ev_stopsounds:		db "EV_STOPSOUNDS",0
_cstring_ev_stance_force_:		db "EV_STANCE_FORCE_STAND",0
_cstring_ev_stance_force_1:		db "EV_STANCE_FORCE_CROUCH",0
_cstring_ev_stance_force_2:		db "EV_STANCE_FORCE_PRONE",0
_cstring_ev_item_pickup:		db "EV_ITEM_PICKUP",0
_cstring_ev_ammo_pickup:		db "EV_AMMO_PICKUP",0
_cstring_ev_noammo:		db "EV_NOAMMO",0
_cstring_ev_emptyclip:		db "EV_EMPTYCLIP",0
_cstring_ev_empty_offhand:		db "EV_EMPTY_OFFHAND",0
_cstring_ev_reset_ads:		db "EV_RESET_ADS",0
_cstring_ev_reload:		db "EV_RELOAD",0
_cstring_ev_reload_from_e:		db "EV_RELOAD_FROM_EMPTY",0
_cstring_ev_reload_start:		db "EV_RELOAD_START",0
_cstring_ev_reload_end:		db "EV_RELOAD_END",0
_cstring_ev_reload_start_:		db "EV_RELOAD_START_NOTIFY",0
_cstring_ev_reload_addamm:		db "EV_RELOAD_ADDAMMO",0
_cstring_ev_raise_weapon:		db "EV_RAISE_WEAPON",0
_cstring_ev_first_raise_w:		db "EV_FIRST_RAISE_WEAPON",0
_cstring_ev_putaway_weapo:		db "EV_PUTAWAY_WEAPON",0
_cstring_ev_weapon_alt:		db "EV_WEAPON_ALT",0
_cstring_ev_pullback_weap:		db "EV_PULLBACK_WEAPON",0
_cstring_ev_fire_weapon:		db "EV_FIRE_WEAPON",0
_cstring_ev_fire_weapon_l:		db "EV_FIRE_WEAPON_LASTSHOT",0
_cstring_ev_rechamber_wea:		db "EV_RECHAMBER_WEAPON",0
_cstring_ev_eject_brass:		db "EV_EJECT_BRASS",0
_cstring_ev_melee_swipe:		db "EV_MELEE_SWIPE",0
_cstring_ev_fire_melee:		db "EV_FIRE_MELEE",0
_cstring_ev_prep_offhand:		db "EV_PREP_OFFHAND",0
_cstring_ev_use_offhand:		db "EV_USE_OFFHAND",0
_cstring_ev_switch_offhan:		db "EV_SWITCH_OFFHAND",0
_cstring_ev_melee_hit:		db "EV_MELEE_HIT",0
_cstring_ev_melee_miss:		db "EV_MELEE_MISS",0
_cstring_ev_melee_blood:		db "EV_MELEE_BLOOD",0
_cstring_ev_fire_weapon_m:		db "EV_FIRE_WEAPON_MG42",0
_cstring_ev_fire_quadbarr:		db "EV_FIRE_QUADBARREL_1",0
_cstring_ev_fire_quadbarr1:		db "EV_FIRE_QUADBARREL_2",0
_cstring_ev_bullet_hit:		db "EV_BULLET_HIT",0
_cstring_ev_bullet_hit_cl:		db "EV_BULLET_HIT_CLIENT_SMALL",0
_cstring_ev_bullet_hit_cl1:		db "EV_BULLET_HIT_CLIENT_LARGE",0
_cstring_ev_grenade_bounc:		db "EV_GRENADE_BOUNCE",0
_cstring_ev_grenade_explo:		db "EV_GRENADE_EXPLODE",0
_cstring_ev_rocket_explod:		db "EV_ROCKET_EXPLODE",0
_cstring_ev_rocket_explod1:		db "EV_ROCKET_EXPLODE_NOMARKS",0
_cstring_ev_flashbang_exp:		db "EV_FLASHBANG_EXPLODE",0
_cstring_ev_custom_explod:		db "EV_CUSTOM_EXPLODE",0
_cstring_ev_custom_explod1:		db "EV_CUSTOM_EXPLODE_NOMARKS",0
_cstring_ev_change_to_dud:		db "EV_CHANGE_TO_DUD",0
_cstring_ev_dud_explode:		db "EV_DUD_EXPLODE",0
_cstring_ev_dud_impact:		db "EV_DUD_IMPACT",0
_cstring_ev_bullet:		db "EV_BULLET",0
_cstring_ev_play_fx:		db "EV_PLAY_FX",0
_cstring_ev_play_fx_on_ta:		db "EV_PLAY_FX_ON_TAG",0
_cstring_ev_phys_explosio:		db "EV_PHYS_EXPLOSION_SPHERE",0
_cstring_ev_phys_explosio1:		db "EV_PHYS_EXPLOSION_CYLINDER",0
_cstring_ev_phys_explosio2:		db "EV_PHYS_EXPLOSION_JOLT",0
_cstring_ev_phys_jitter:		db "EV_PHYS_JITTER",0
_cstring_ev_earthquake:		db "EV_EARTHQUAKE",0
_cstring_ev_grenade_suici:		db "EV_GRENADE_SUICIDE",0
_cstring_ev_detonate:		db "EV_DETONATE",0
_cstring_ev_nightvision_w:		db "EV_NIGHTVISION_WEAR",0
_cstring_ev_nightvision_r:		db "EV_NIGHTVISION_REMOVE",0
_cstring_ev_obituary:		db "EV_OBITUARY",0
_cstring_ev_no_frag_grena:		db "EV_NO_FRAG_GRENADE_HINT",0
_cstring_ev_no_special_gr:		db "EV_NO_SPECIAL_GRENADE_HINT",0
_cstring_ev_target_too_cl:		db "EV_TARGET_TOO_CLOSE_HINT",0
_cstring_ev_target_not_en:		db "EV_TARGET_NOT_ENOUGH_CLEARANCE",0
_cstring_ev_lockon_requir:		db "EV_LOCKON_REQUIRED_HINT",0
_cstring_ev_footstep_spri:		db "EV_FOOTSTEP_SPRINT",0
_cstring_ev_footstep_run:		db "EV_FOOTSTEP_RUN",0
_cstring_ev_footstep_walk:		db "EV_FOOTSTEP_WALK",0
_cstring_ev_footstep_pron:		db "EV_FOOTSTEP_PRONE",0
_cstring_ev_jump:		db "EV_JUMP",0
_cstring_ev_landing_defau:		db "EV_LANDING_DEFAULT",0
_cstring_ev_landing_bark:		db "EV_LANDING_BARK",0
_cstring_ev_landing_brick:		db "EV_LANDING_BRICK",0
_cstring_ev_landing_carpe:		db "EV_LANDING_CARPET",0
_cstring_ev_landing_cloth:		db "EV_LANDING_CLOTH",0
_cstring_ev_landing_concr:		db "EV_LANDING_CONCRETE",0
_cstring_ev_landing_dirt:		db "EV_LANDING_DIRT",0
_cstring_ev_landing_flesh:		db "EV_LANDING_FLESH",0
_cstring_ev_landing_folia:		db "EV_LANDING_FOLIAGE",0
_cstring_ev_landing_glass:		db "EV_LANDING_GLASS",0
_cstring_ev_landing_grass:		db "EV_LANDING_GRASS",0
_cstring_ev_landing_grave:		db "EV_LANDING_GRAVEL",0
_cstring_ev_landing_ice:		db "EV_LANDING_ICE",0
_cstring_ev_landing_metal:		db "EV_LANDING_METAL",0
_cstring_ev_landing_mud:		db "EV_LANDING_MUD",0
_cstring_ev_landing_paper:		db "EV_LANDING_PAPER",0
_cstring_ev_landing_plast:		db "EV_LANDING_PLASTER",0
_cstring_ev_landing_rock:		db "EV_LANDING_ROCK",0
_cstring_ev_landing_sand:		db "EV_LANDING_SAND",0
_cstring_ev_landing_snow:		db "EV_LANDING_SNOW",0
_cstring_ev_landing_water:		db "EV_LANDING_WATER",0
_cstring_ev_landing_wood:		db "EV_LANDING_WOOD",0
_cstring_ev_landing_aspha:		db "EV_LANDING_ASPHALT",0
_cstring_ev_landing_ceram:		db "EV_LANDING_CERAMIC",0
_cstring_ev_landing_plast1:		db "EV_LANDING_PLASTIC",0
_cstring_ev_landing_rubbe:		db "EV_LANDING_RUBBER",0
_cstring_ev_landing_cushi:		db "EV_LANDING_CUSHION",0
_cstring_ev_landing_fruit:		db "EV_LANDING_FRUIT",0
_cstring_ev_landing_paint:		db "EV_LANDING_PAINTEDMETAL",0
_cstring_ev_landing_pain_:		db "EV_LANDING_PAIN_DEFAULT",0
_cstring_ev_landing_pain_1:		db "EV_LANDING_PAIN_BARK",0
_cstring_ev_landing_pain_2:		db "EV_LANDING_PAIN_BRICK",0
_cstring_ev_landing_pain_3:		db "EV_LANDING_PAIN_CARPET",0
_cstring_ev_landing_pain_4:		db "EV_LANDING_PAIN_CLOTH",0
_cstring_ev_landing_pain_5:		db "EV_LANDING_PAIN_CONCRETE",0
_cstring_ev_landing_pain_6:		db "EV_LANDING_PAIN_DIRT",0
_cstring_ev_landing_pain_7:		db "EV_LANDING_PAIN_FLESH",0
_cstring_ev_landing_pain_8:		db "EV_LANDING_PAIN_FOLIAGE",0
_cstring_ev_landing_pain_9:		db "EV_LANDING_PAIN_GLASS",0
_cstring_ev_landing_pain_10:		db "EV_LANDING_PAIN_GRASS",0
_cstring_ev_landing_pain_11:		db "EV_LANDING_PAIN_GRAVEL",0
_cstring_ev_landing_pain_12:		db "EV_LANDING_PAIN_ICE",0
_cstring_ev_landing_pain_13:		db "EV_LANDING_PAIN_METAL",0
_cstring_ev_landing_pain_14:		db "EV_LANDING_PAIN_MUD",0
_cstring_ev_landing_pain_15:		db "EV_LANDING_PAIN_PAPER",0
_cstring_ev_landing_pain_16:		db "EV_LANDING_PAIN_PLASTER",0
_cstring_ev_landing_pain_17:		db "EV_LANDING_PAIN_ROCK",0
_cstring_ev_landing_pain_18:		db "EV_LANDING_PAIN_SAND",0
_cstring_ev_landing_pain_19:		db "EV_LANDING_PAIN_SNOW",0
_cstring_ev_landing_pain_20:		db "EV_LANDING_PAIN_WATER",0
_cstring_ev_landing_pain_21:		db "EV_LANDING_PAIN_WOOD",0
_cstring_ev_landing_pain_22:		db "EV_LANDING_PAIN_ASPHALT",0
_cstring_ev_landing_pain_23:		db "EV_LANDING_PAIN_CERAMIC",0
_cstring_ev_landing_pain_24:		db "EV_LANDING_PAIN_PLASTIC",0
_cstring_ev_landing_pain_25:		db "EV_LANDING_PAIN_RUBBER",0
_cstring_ev_landing_pain_26:		db "EV_LANDING_PAIN_CUSHION",0
_cstring_ev_landing_pain_27:		db "EV_LANDING_PAIN_FRUIT",0
_cstring_ev_landing_pain_28:		db "EV_LANDING_PAIN_PAINTEDMETAL",0



;All constant floats and doubles:
SECTION .rdata
_float_180_00000000:		dd 0x43340000	; 180
_float_6_00000000:		dd 0x40c00000	; 6
_float_1_00000000:		dd 0x3f800000	; 1
_float_18_00000000:		dd 0x41900000	; 18
_float_2_50000000:		dd 0x40200000	; 2.5
_float__0_75000000:		dd 0xbf400000	; -0.75
_data16_80000000:		dd 0x80000000, 0x0, 0x0, 0x0	; OWORD
_float_10_00000000:		dd 0x41200000	; 10
_float_2_00000000:		dd 0x40000000	; 2
_float_0_69999999:		dd 0x3f333333	; 0.7
_float_0_00000000:		dd 0x0	; 0
_float_0_50000000:		dd 0x3f000000	; 0.5
_float_0_00277778:		dd 0x3b360b61	; 0.00277778
_float_360_00000000:		dd 0x43b40000	; 360
_float__50_00000000:		dd 0xc2480000	; -50
_float_70_00000000:		dd 0x428c0000	; 70
_float_5_00000000:		dd 0x40a00000	; 5
_float_22_00000000:		dd 0x41b00000	; 22
_float_1000_00000000:		dd 0x447a0000	; 1000
_float_36_00000000:		dd 0x42100000	; 36
_float__36_00000000:		dd 0xc2100000	; -36
_float__88_00000000:		dd 0xc2b00000	; -88
_float_0_00100000:		dd 0x3a83126f	; 0.001
_float__400_00000000:		dd 0xc3c80000	; -400
_float__0_50000000:		dd 0xbf000000	; -0.5
_double_3_14159265:		dq 0x400921fb54442d18	; 3.14159
_float_8_00000000:		dd 0x41000000	; 8
_float__800_00000000:		dd 0xc4480000	; -800
_float__1_00000000:		dd 0xbf800000	; -1

