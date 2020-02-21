;Imports of bg_misc:
	extern Hunk_AllocAlignInternal
	extern BG_GetWeaponDef
	extern BG_GetNumWeapons
	extern BG_PlayerHasCompatibleWeapon
	extern BG_GetMaxPickupableAmmo
	extern G_GetWeaponIndexForName
	extern bg_itemlist
	extern useFastFile
	extern XAnimPrecache
	extern XAnimCreate
	extern Cvar_RegisterFloat
	extern Cvar_RegisterInt
	extern Cvar_RegisterBool
	extern Cvar_RegisterVec2
	extern Cvar_RegisterString
	extern Cvar_RegisterEnum
	extern SND_GetEntChannelName
	extern sprintf
	extern SND_GetEntChannelCount
	extern Jump_RegisterDvars
	extern Mantle_RegisterDvars
	extern Perks_RegisterDvars
	extern pmoveHandlers
	extern AngleVectors
	extern vectopitch
	extern floorf
	extern Vec3NormalizeTo
	extern va
	extern Com_Error
	extern perk_sprintMultiplier
	extern sin
	extern BG_GetBobCycle
	extern BG_GetSpeed
	extern BG_GetVerticalBobFactor
	extern BG_GetHorizontalBobFactor
	extern AddLeanToPosition
	extern Com_sprintf
	extern Com_LoadRawTextFile
	extern Com_LoadDvarsFromBuffer
	extern Com_UnloadRawTextFile
	extern Com_PrintError
	extern Com_SaveDvarsToBuffer
	extern FS_FOpenFileByMode
	extern FS_Write
	extern FS_FCloseFile
	extern cos
	extern PM_GetEffectiveStance
	extern PM_GetViewHeightLerpTime
	extern strncpy
	extern Cvar_DisplayableValue
	extern player_sprintTime
	extern player_meleeRange;
	extern bg_legYawTolerance;
	extern bg_swingSpeed;
	extern player_lean_rotate_crouch_left;
	extern player_lean_rotate_crouch_right;
	extern player_lean_rotate_left;
	extern player_lean_rotate_right;
	extern player_lean_shift_crouch_left;
	extern player_lean_shift_crouch_right;
	extern player_lean_shift_left;
	extern player_lean_shift_right;
	extern player_move_factor_on_torso;
	extern bg_aimSpreadMoveSpeedThreshold;
	extern bg_bobAmplitudeDucked;
	extern bg_bobAmplitudeProne;
	extern bg_bobAmplitudeSprinting;
	extern bg_bobAmplitudeStanding;
	extern bg_bobMax;
	extern bg_fallDamageMaxHeight;
	extern bg_fallDamageMinHeight;
	extern bg_foliagesnd_fastinterval;
	extern bg_foliagesnd_maxspeed;
	extern bg_foliagesnd_minspeed;
	extern bg_foliagesnd_resetinterval;
	extern bg_foliagesnd_slowinterval;
	extern bg_ladder_yawcap;
	extern bg_maxGrenadeIndicatorSpeed;
	extern bg_prone_yawcap;
	extern bg_shock_lookControl_fadeTime;
	extern bg_shock_lookControl_maxpitchspeed;
	extern bg_shock_lookControl_maxyawspeed;
	extern bg_shock_lookControl_mousesensitivityscale;
	extern bg_shock_movement;
	extern bg_shock_screenBlurBlendFadeTime;
	extern bg_shock_screenBlurBlendTime;
	extern bg_shock_screenFlashShotFadeTime;
	extern bg_shock_screenFlashWhiteFadeTime;
	extern bg_shock_sound;
	extern bg_shock_soundDryLevel;
	extern bg_shock_soundEnd;
	extern bg_shock_soundEndAbort;
	extern bg_shock_soundFadeInTime;
	extern bg_shock_soundFadeOutTime;
	extern bg_shock_soundLoop;
	extern bg_shock_soundLoopEndDelay;
	extern bg_shock_soundLoopFadeTime;
	extern bg_shock_soundLoopSilent;
	extern bg_shock_soundModEndDelay;
	extern bg_shock_soundRoomType;
	extern bg_shock_soundWetLevel;
	extern bg_shock_viewKickFadeTime;
	extern bg_shock_viewKickPeriod;
	extern bg_shock_viewKickRadius;
	extern bg_viewKickMax;
	extern bg_viewKickMin;
	extern bg_viewKickRandom;
	extern bg_viewKickScale;
	extern bullet_penetrationMinFxDist;
	extern inertiaAngle;
	extern inertiaDebug;
	extern inertiaMax;
	extern player_adsExitDelay;
	extern player_backSpeedScale;
	extern player_breath_fire_delay;
	extern player_breath_gasp_lerp;
	extern player_breath_gasp_scale;
	extern player_breath_gasp_time;
	extern player_breath_hold_lerp;
	extern player_breath_hold_time;
	extern player_breath_snd_delay;
	extern player_breath_snd_lerp;
	extern player_burstFireCooldown;
	extern player_debugHealth;
	extern player_dmgtimer_flinchTime;
	extern player_dmgtimer_maxTime;
	extern player_dmgtimer_minScale;
	extern player_dmgtimer_timePerPoint;
	extern player_footstepsThreshhold;
	extern player_meleeHeight;
	extern player_meleeWidth;
	extern player_scopeExitOnDamage;
	extern player_spectateSpeedScale;
	extern player_sprintCameraBob;
	extern player_sprintForwardMinimum;
	extern player_sprintMinTime;
	extern player_sprintRechargePause;
	extern player_sprintSpeedScale;
	extern player_sprintStrafeSpeedScale;
	extern player_sprintTime;
	extern player_strafeAnimCosAngle;
	extern player_strafeSpeedScale;
	extern player_sustainAmmo;
	extern player_turnAnims;
	extern player_view_pitch_down;
	extern player_view_pitch_up;
	extern bg_shock_screenType;
	extern bg_shock_lookControl;
	extern bg_shock_volume;
	extern bg_shellshockParms
	extern bgShockChannelNames
	extern BG_SaveShellShockDvars_filebuf
	extern serverOnlyEvents
	extern singleClientEvents
	extern eventnames
	extern bgShockDvarNames
	extern entityTypeNames

;Exports of bg_misc:
	global WeaponEntCanBeGrabbed
	global G_FindItem
	global BG_CheckProne
	global BG_CreateXAnim
	global BG_LerpHudColors
	global BG_CheckProneValid
	global BG_CanItemBeGrabbed
	global BG_GetMaxSprintTime
	global BG_FindItemForWeapon
	global BG_GetEntityTypeName
	global BG_PlayerTouchesItem
	global BG_EvaluateTrajectory
	global BG_GetShellshockParms
	global BG_GetPlayerViewOrigin
	global BG_LoadShellShockDvars
	global BG_SaveShellShockDvars
	global BG_GetPlayerViewDirection
	global BG_EvaluateTrajectoryDelta
	global BG_PlayerStateToEntityState
	global BG_RegisterShockVolumeDvars
	global BG_PlayerCanPickUpWeaponType
	global BG_SetShellShockParmsFromDvars
	global BG_PlayerHasRoomForEntAllAmmoTypes
	global BG_AddPredictableEventToPlayerstate


SECTION .text


;Hunk_AllocXAnimPrecache(int)
Hunk_AllocXAnimPrecache:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x4], 0x4
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Hunk_AllocAlignInternal
	leave
	ret
	nop


;WeaponEntCanBeGrabbed(entityState_s const*, playerState_s const*, int, unsigned int)
WeaponEntCanBeGrabbed:
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
	call BG_GetWeaponDef
	mov eax, [eax+0x144]
	cmp eax, 0x3
	jz WeaponEntCanBeGrabbed_10
	cmp eax, 0x2
	jz WeaponEntCanBeGrabbed_20
WeaponEntCanBeGrabbed_100:
	cmp dword [esi+0x4], 0x4
	jz WeaponEntCanBeGrabbed_30
	test edi, edi
	jnz WeaponEntCanBeGrabbed_40
WeaponEntCanBeGrabbed_90:
	mov edx, ebx
	sar edx, 0x5
	and ebx, 0x1f
	mov eax, 0x1
	mov ecx, ebx
	shl eax, cl
	mov ecx, [ebp-0x1c]
	test [ecx+edx*4+0x55c], eax
	jnz WeaponEntCanBeGrabbed_50
WeaponEntCanBeGrabbed_70:
	mov eax, 0x1
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
WeaponEntCanBeGrabbed_40:
	mov edx, ebx
	sar edx, 0x5
	mov ecx, ebx
	and ecx, 0x1f
	mov eax, 0x1
	shl eax, cl
	mov ecx, [ebp-0x1c]
	test [ecx+edx*4+0x55c], eax
	jz WeaponEntCanBeGrabbed_60
	call BG_GetNumWeapons
	mov esi, eax
	mov [esp], ebx
	call BG_GetWeaponDef
	mov edi, [eax+0x328]
	mov eax, [eax+0x324]
	cmp byte [eax], 0x0
	jz WeaponEntCanBeGrabbed_70
WeaponEntCanBeGrabbed_120:
	cmp esi, 0x1
	jg WeaponEntCanBeGrabbed_80
WeaponEntCanBeGrabbed_50:
	xor eax, eax
WeaponEntCanBeGrabbed_110:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
WeaponEntCanBeGrabbed_30:
	sub eax, 0x1
	jz WeaponEntCanBeGrabbed_70
	test edi, edi
	jz WeaponEntCanBeGrabbed_90
	jmp WeaponEntCanBeGrabbed_40
WeaponEntCanBeGrabbed_10:
	mov edx, [ebp-0x1c]
	cmp dword [edx+0xe4], 0x1
	jz WeaponEntCanBeGrabbed_100
	xor eax, eax
	jmp WeaponEntCanBeGrabbed_110
WeaponEntCanBeGrabbed_20:
	mov ecx, [ebp-0x1c]
	mov edx, [ecx+0xe4]
	test edx, edx
	jz WeaponEntCanBeGrabbed_100
	xor eax, eax
	jmp WeaponEntCanBeGrabbed_110
WeaponEntCanBeGrabbed_60:
	mov [esp+0x4], ebx
	mov [esp], ecx
	call BG_PlayerHasCompatibleWeapon
	test al, al
	jz WeaponEntCanBeGrabbed_50
	call BG_GetNumWeapons
	mov esi, eax
	mov [esp], ebx
	call BG_GetWeaponDef
	mov edi, [eax+0x328]
	mov eax, [eax+0x324]
	cmp byte [eax], 0x0
	jz WeaponEntCanBeGrabbed_70
	jmp WeaponEntCanBeGrabbed_120
WeaponEntCanBeGrabbed_80:
	mov ebx, 0x1
	jmp WeaponEntCanBeGrabbed_130
WeaponEntCanBeGrabbed_140:
	add ebx, 0x1
	cmp esi, ebx
	jz WeaponEntCanBeGrabbed_50
WeaponEntCanBeGrabbed_130:
	mov [esp], ebx
	call BG_GetWeaponDef
	cmp edi, [eax+0x328]
	jnz WeaponEntCanBeGrabbed_140
	mov [esp+0x4], ebx
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call BG_GetMaxPickupableAmmo
	test eax, eax
	jle WeaponEntCanBeGrabbed_140
	jmp WeaponEntCanBeGrabbed_70
	nop


;G_FindItem(char const*, int)
G_FindItem:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0xc]
	mov eax, [ebp+0x8]
	mov [esp], eax
	call G_GetWeaponIndexForName
	test eax, eax
	jz G_FindItem_10
	shl ebx, 0x7
	lea edx, [eax+ebx]
	mov eax, bg_itemlist
	lea eax, [eax+edx*4]
G_FindItem_10:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;BG_CheckProne(int, float const*, float, float, float, float*, float*, unsigned char, unsigned char, unsigned char, unsigned char, proneCheckType_t, float)
BG_CheckProne:
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
	call BG_CheckProneValid
	movzx eax, al
	leave
	ret


;BG_CreateXAnim(XAnim_s*, unsigned int, char const*)
BG_CreateXAnim:
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
	jnz BG_CreateXAnim_10
	mov dword [esp+0x4], Hunk_AllocXAnimPrecache
	mov [esp], ebx
	call XAnimPrecache
BG_CreateXAnim_10:
	mov [ebp+0x10], ebx
	mov [ebp+0xc], esi
	mov [ebp+0x8], edi
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp XAnimCreate


;BG_LerpHudColors(hudelem_s const*, int, hudelem_color_t*)
BG_LerpHudColors:
	push ebp
	mov ebp, esp
	push ebx
	mov ecx, [ebp+0x8]
	mov eax, [ebp+0xc]
	mov ebx, [ebp+0x10]
	sub eax, [ecx+0x2c]
	mov edx, [ecx+0x30]
	test edx, edx
	jle BG_LerpHudColors_10
	cmp eax, edx
	jge BG_LerpHudColors_10
	pxor xmm2, xmm2
	test eax, eax
	js BG_LerpHudColors_20
	cvtsi2ss xmm2, eax
BG_LerpHudColors_20:
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
BG_LerpHudColors_10:
	mov eax, [ecx+0x24]
	mov [ebx], eax
	pop ebx
	pop ebp
	ret
	nop


;BG_CheckProneValid(int, float const*, float, float, float, float*, float*, unsigned char, unsigned char, unsigned char, unsigned char, proneCheckType_t, float)
BG_CheckProneValid:
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
	jz BG_CheckProneValid_10
BG_CheckProneValid_130:
	cmp byte [ebp-0xe9], 0x0
	jz BG_CheckProneValid_20
	test bl, bl
	jz BG_CheckProneValid_30
BG_CheckProneValid_20:
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
	call AngleVectors
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
	jb BG_CheckProneValid_40
BG_CheckProneValid_110:
	movss xmm7, dword [ebp+0x38]
	xor ebx, ebx
	movss xmm1, dword [_float_18_00000000]
	movss [ebp-0xfc], xmm1
	movaps xmm2, xmm1
BG_CheckProneValid_150:
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
	jp BG_CheckProneValid_50
	jz BG_CheckProneValid_60
BG_CheckProneValid_50:
	cmp byte [ebp-0x62], 0x0
	jz BG_CheckProneValid_30
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
	jz BG_CheckProneValid_70
	subss xmm7, xmm0
	mulss xmm0, [_float__0_75000000]
	ucomiss xmm0, xmm7
	jbe BG_CheckProneValid_80
BG_CheckProneValid_60:
	cmp byte [ebp-0xe9], 0x0
	jnz BG_CheckProneValid_30
	mov eax, [ebp+0x1c]
	test eax, eax
	jz BG_CheckProneValid_90
	mov eax, [ebp+0x1c]
	mov dword [eax], 0x0
BG_CheckProneValid_90:
	mov eax, [ebp+0x20]
	test eax, eax
	jz BG_CheckProneValid_100
	mov eax, [ebp+0x20]
	mov dword [eax], 0x0
	mov eax, 0x1
	add esp, 0x19c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
BG_CheckProneValid_40:
	jp BG_CheckProneValid_110
	cmp byte [ebp-0xe9], 0x0
	jnz BG_CheckProneValid_120
BG_CheckProneValid_30:
	xor eax, eax
BG_CheckProneValid_230:
	add esp, 0x19c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
BG_CheckProneValid_10:
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
	jz BG_CheckProneValid_130
	jmp BG_CheckProneValid_30
BG_CheckProneValid_120:
	movss xmm7, dword [ebp-0xcc]
	mulss xmm7, xmm5
	addss xmm7, [_float_6_00000000]
	movss xmm0, dword [ebp+0x10]
	addss xmm0, [_float_2_00000000]
	ucomiss xmm0, xmm7
	ja BG_CheckProneValid_30
	movss xmm0, dword [ebp-0xdc]
	mulss xmm0, [_float_0_69999999]
	movss xmm1, dword [_float_18_00000000]
	movss [ebp-0xfc], xmm1
	addss xmm0, xmm1
	movss [ebp-0xe8], xmm0
	ucomiss xmm0, xmm7
	ja BG_CheckProneValid_140
BG_CheckProneValid_240:
	mov ebx, 0x1
	movss xmm2, dword [ebp-0xfc]
	jmp BG_CheckProneValid_150
BG_CheckProneValid_80:
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
	jb BG_CheckProneValid_160
	movss xmm2, dword [_float_1_00000000]
BG_CheckProneValid_260:
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
	jb BG_CheckProneValid_170
BG_CheckProneValid_270:
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
BG_CheckProneValid_70:
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
	jp BG_CheckProneValid_180
	jz BG_CheckProneValid_60
BG_CheckProneValid_180:
	cmp byte [ebp-0x62], 0x0
	jz BG_CheckProneValid_30
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
	call vectopitch
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
	call vectopitch
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
	jp BG_CheckProneValid_190
	jb BG_CheckProneValid_200
BG_CheckProneValid_190:
	ucomiss xmm0, [_float_70_00000000]
	ja BG_CheckProneValid_200
	mov edi, 0x1
BG_CheckProneValid_250:
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
	jz BG_CheckProneValid_210
	movss xmm0, dword [ebp-0xe4]
	mov eax, [ebp+0x1c]
	movss [eax], xmm0
BG_CheckProneValid_210:
	mov eax, [ebp+0x20]
	test eax, eax
	jz BG_CheckProneValid_220
	movss xmm0, dword [ebp-0xe0]
	mov eax, [ebp+0x20]
	movss [eax], xmm0
BG_CheckProneValid_220:
	mov eax, edi
	test al, al
	jz BG_CheckProneValid_60
BG_CheckProneValid_100:
	mov eax, 0x1
	jmp BG_CheckProneValid_230
BG_CheckProneValid_140:
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
	call Vec3NormalizeTo
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
	jbe BG_CheckProneValid_110
	movss xmm7, dword [ebp-0xa8]
	mulss xmm7, xmm5
	addss xmm7, [_float_6_00000000]
	movss xmm0, dword [ebp-0xe8]
	ucomiss xmm0, xmm7
	jbe BG_CheckProneValid_240
	jmp BG_CheckProneValid_30
BG_CheckProneValid_200:
	xor edi, edi
	jmp BG_CheckProneValid_250
BG_CheckProneValid_160:
	movss xmm2, dword [_float_1_00000000]
	divss xmm2, xmm1
	jmp BG_CheckProneValid_260
BG_CheckProneValid_170:
	jp BG_CheckProneValid_270
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
	ja BG_CheckProneValid_60
	movss xmm5, dword [ebp-0x8c]
	jmp BG_CheckProneValid_270


;BG_CanItemBeGrabbed(entityState_s const*, playerState_s const*, int)
BG_CanItemBeGrabbed:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov esi, [ebp+0x8]
	mov edi, [ebp+0xc]
	cmp byte [edi+0x10], 0x0
	js BG_CanItemBeGrabbed_10
	mov edx, [esi+0x88]
	lea eax, [edx-0x1]
	cmp eax, 0x7fe
	ja BG_CanItemBeGrabbed_20
BG_CanItemBeGrabbed_60:
	mov eax, [esi+0x8c]
	cmp eax, [edi+0xdc]
	jz BG_CanItemBeGrabbed_10
	test byte [edi+0xe], 0x10
	jz BG_CanItemBeGrabbed_30
BG_CanItemBeGrabbed_10:
	xor eax, eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
BG_CanItemBeGrabbed_30:
	mov ebx, [esi+0x88]
	and ebx, 0x8000007f
	js BG_CanItemBeGrabbed_40
BG_CanItemBeGrabbed_70:
	mov [esp], ebx
	call BG_GetWeaponDef
	mov [ebp-0x1c], eax
	mov [esp], ebx
	mov ecx, [ebp+0x10]
	mov edx, edi
	mov eax, esi
	call WeaponEntCanBeGrabbed
	test al, al
	jnz BG_CanItemBeGrabbed_50
	mov edx, [ebp-0x1c]
	mov eax, [edx+0x540]
	test eax, eax
	jz BG_CanItemBeGrabbed_10
	mov [esp], eax
	mov ecx, [ebp+0x10]
	mov edx, edi
	mov eax, esi
	call WeaponEntCanBeGrabbed
	test al, al
	jz BG_CanItemBeGrabbed_10
BG_CanItemBeGrabbed_50:
	mov eax, 0x1
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
BG_CanItemBeGrabbed_20:
	mov eax, [esi+0x4]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], _cstring_bg_canitembegrab
	call va
	mov [esp+0x4], eax
	mov dword [esp], 0x2
	call Com_Error
	jmp BG_CanItemBeGrabbed_60
BG_CanItemBeGrabbed_40:
	sub ebx, 0x1
	or ebx, 0xffffff80
	add ebx, 0x1
	jmp BG_CanItemBeGrabbed_70


;BG_GetMaxSprintTime(playerState_s const*)
BG_GetMaxSprintTime:
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
	call BG_GetWeaponDef
	movss xmm0, dword [ebp-0xc]
	mulss xmm0, [eax+0x420]
	test byte [ebx+0x5fd], 0x4
	jz BG_GetMaxSprintTime_10
	mov eax, perk_sprintMultiplier
	mov eax, [eax]
	mulss xmm0, [eax+0xc]
BG_GetMaxSprintTime_10:
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
BG_FindItemForWeapon:
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
BG_GetEntityTypeName:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	cmp eax, 0x10
	jg BG_GetEntityTypeName_10
	mov eax, [eax*4+entityTypeNames]
	leave
	ret
BG_GetEntityTypeName_10:
	sub eax, 0x11
	mov [esp+0x8], eax
	mov eax, [eax*4+eventnames]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_event_s_i
	call va
	leave
	ret
	nop


;BG_PlayerTouchesItem(playerState_s const*, entityState_s const*, int)
BG_PlayerTouchesItem:
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
	call BG_EvaluateTrajectory
	movss xmm0, dword [ebx+0x1c]
	subss xmm0, [ebp-0x14]
	ucomiss xmm0, [_float_36_00000000]
	ja BG_PlayerTouchesItem_10
	ucomiss xmm0, [_float__36_00000000]
	jp BG_PlayerTouchesItem_20
	jae BG_PlayerTouchesItem_20
BG_PlayerTouchesItem_10:
	xor eax, eax
BG_PlayerTouchesItem_40:
	add esp, 0x24
	pop ebx
	pop ebp
	ret
BG_PlayerTouchesItem_20:
	movss xmm1, dword [ebx+0x20]
	subss xmm1, [ebp-0x10]
	ucomiss xmm1, [_float_36_00000000]
	ja BG_PlayerTouchesItem_10
	movss xmm0, dword [_float__36_00000000]
	ucomiss xmm0, xmm1
	ja BG_PlayerTouchesItem_10
	movss xmm0, dword [ebx+0x24]
	subss xmm0, [ebp-0xc]
	ucomiss xmm0, [_float_18_00000000]
	ja BG_PlayerTouchesItem_10
	ucomiss xmm0, [_float__88_00000000]
	jp BG_PlayerTouchesItem_30
	jb BG_PlayerTouchesItem_10
BG_PlayerTouchesItem_30:
	mov eax, 0x1
	jmp BG_PlayerTouchesItem_40
	nop


;BG_EvaluateTrajectory(trajectory_t const*, int, float*)
BG_EvaluateTrajectory:
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
	ja BG_EvaluateTrajectory_10
	jmp dword [eax*4+BG_EvaluateTrajectory_jumptab_0]
BG_EvaluateTrajectory_10:
	mov [ebp+0x10], eax
	mov dword [ebp+0xc], _cstring_bg_evaluatetraje
	mov dword [ebp+0x8], 0x2
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp Com_Error
BG_EvaluateTrajectory_70:
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
BG_EvaluateTrajectory_30:
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
BG_EvaluateTrajectory_20:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
BG_EvaluateTrajectory_50:
	lea edx, [esi+0xc]
	mov eax, [esi+0xc]
	mov [edi], eax
	mov eax, [edx+0x4]
	mov [edi+0x4], eax
	mov eax, [edx+0x8]
	mov [edi+0x8], eax
	jmp BG_EvaluateTrajectory_20
BG_EvaluateTrajectory_90:
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
	jmp BG_EvaluateTrajectory_20
BG_EvaluateTrajectory_60:
	sub ebx, [esi+0x4]
	cvtsi2ss xmm1, ebx
	mulss xmm1, [_float_0_00100000]
BG_EvaluateTrajectory_40:
	lea eax, [esi+0x18]
	lea edx, [esi+0xc]
	movaps xmm0, xmm1
	jmp BG_EvaluateTrajectory_30
BG_EvaluateTrajectory_110:
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
	call Vec3NormalizeTo
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
	jmp BG_EvaluateTrajectory_20
BG_EvaluateTrajectory_100:
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
	call Vec3NormalizeTo
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
	jmp BG_EvaluateTrajectory_20
BG_EvaluateTrajectory_80:
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
	jmp BG_EvaluateTrajectory_40
	
	
BG_EvaluateTrajectory_jumptab_0:
	dd BG_EvaluateTrajectory_50
	dd BG_EvaluateTrajectory_50
	dd BG_EvaluateTrajectory_60
	dd BG_EvaluateTrajectory_70
	dd BG_EvaluateTrajectory_80
	dd BG_EvaluateTrajectory_90
	dd BG_EvaluateTrajectory_100
	dd BG_EvaluateTrajectory_110
	dd BG_EvaluateTrajectory_50
	dd BG_EvaluateTrajectory_60
	dd BG_EvaluateTrajectory_90
	dd BG_EvaluateTrajectory_50


;BG_GetShellshockParms(int)
BG_GetShellshockParms:
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
BG_GetPlayerViewOrigin:
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
	call BG_GetBobCycle
	fstp dword [ebp-0x20]
	mov eax, [ebp+0x10]
	mov [esp+0x4], eax
	mov [esp], ebx
	call BG_GetSpeed
	fstp dword [ebp-0x1c]
	mov eax, [bg_bobMax]
	mov eax, [eax+0xc]
	mov [esp+0xc], eax
	movss xmm0, dword [ebp-0x1c]
	movss [esp+0x8], xmm0
	movss xmm0, dword [ebp-0x20]
	movss [esp+0x4], xmm0
	mov [esp], ebx
	call BG_GetVerticalBobFactor
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
	call BG_GetHorizontalBobFactor
	fstp dword [ebp-0x3c]
	movss xmm1, dword [ebp-0x3c]
	mov dword [esp+0xc], 0x0
	lea eax, [ebp-0x14]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	lea eax, [ebx+0x108]
	mov [esp], eax
	movss [ebp-0x38], xmm1
	call AngleVectors
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
	call AddLeanToPosition
	movss xmm0, dword [_float_8_00000000]
	addss xmm0, [ebx+0x24]
	ucomiss xmm0, [esi+0x8]
	jbe BG_GetPlayerViewOrigin_10
	movss [esi+0x8], xmm0
BG_GetPlayerViewOrigin_10:
	add esp, 0x60
	pop ebx
	pop esi
	pop ebp
	ret


;BG_LoadShellShockDvars(char const*)
BG_LoadShellShockDvars:
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
	call Com_sprintf
	lea edx, [ebp-0x58]
	mov [esp], edx
	call Com_LoadRawTextFile
	mov [ebp-0x1cc], eax
	test eax, eax
	jz BG_LoadShellShockDvars_10
BG_LoadShellShockDvars_50:
	xor edx, edx
BG_LoadShellShockDvars_20:
	mov eax, [edx+bgShockDvarNames]
	mov [edx+ebp-0x1c4], eax
	add edx, 0x4
	cmp edx, 0x6c
	jnz BG_LoadShellShockDvars_20
	xor edi, edi
	mov esi, bgShockChannelNames
	xor ebx, ebx
	jmp BG_LoadShellShockDvars_30
BG_LoadShellShockDvars_40:
	mov [ebx+ebp-0x158], esi
	add edi, 0x1
	add ebx, 0x4
	add esi, 0x50
BG_LoadShellShockDvars_30:
	call SND_GetEntChannelCount
	cmp edi, eax
	jl BG_LoadShellShockDvars_40
	call SND_GetEntChannelCount
	lea edx, [ebp-0x58]
	mov [esp+0xc], edx
	mov edx, [ebp-0x1cc]
	mov [esp+0x8], edx
	add eax, 0x1b
	mov [esp+0x4], eax
	lea eax, [ebp-0x1c4]
	mov [esp], eax
	call Com_LoadDvarsFromBuffer
	mov ebx, eax
	mov edx, [ebp-0x1cc]
	mov [esp], edx
	call Com_UnloadRawTextFile
BG_LoadShellShockDvars_60:
	mov eax, ebx
	add esp, 0x1dc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
BG_LoadShellShockDvars_10:
	lea eax, [ebp-0x58]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_couldnt_open_s
	mov dword [esp], 0x11
	call Com_PrintError
	mov dword [esp], _cstring_shockdefaultshoc
	call Com_LoadRawTextFile
	mov [ebp-0x1cc], eax
	test eax, eax
	jnz BG_LoadShellShockDvars_50
	mov dword [esp+0x4], _cstring_couldnt_open_sho
	mov dword [esp], 0x11
	call Com_PrintError
	xor ebx, ebx
	jmp BG_LoadShellShockDvars_60
	nop


;BG_SaveShellShockDvars(char const*)
BG_SaveShellShockDvars:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x18c
	xor edx, edx
BG_SaveShellShockDvars_10:
	mov eax, [edx+bgShockDvarNames]
	mov [edx+ebp-0x188], eax
	add edx, 0x4
	cmp edx, 0x6c
	jnz BG_SaveShellShockDvars_10
	xor edi, edi
	mov esi, bgShockChannelNames
	xor ebx, ebx
	jmp BG_SaveShellShockDvars_20
BG_SaveShellShockDvars_30:
	mov [ebx+ebp-0x11c], esi
	add edi, 0x1
	add ebx, 0x4
	add esi, 0x50
BG_SaveShellShockDvars_20:
	call SND_GetEntChannelCount
	cmp edi, eax
	jl BG_SaveShellShockDvars_30
	call SND_GetEntChannelCount
	mov dword [esp+0xc], 0x10000
	mov dword [esp+0x8], BG_SaveShellShockDvars_filebuf
	add eax, 0x1b
	mov [esp+0x4], eax
	lea eax, [ebp-0x188]
	mov [esp], eax
	call Com_SaveDvarsToBuffer
	test eax, eax
	jnz BG_SaveShellShockDvars_40
BG_SaveShellShockDvars_50:
	xor eax, eax
	add esp, 0x18c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
BG_SaveShellShockDvars_40:
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_shocksshock
	call va
	mov dword [esp+0x8], 0x1
	lea edx, [ebp-0x1c]
	mov [esp+0x4], edx
	mov [esp], eax
	call FS_FOpenFileByMode
	test eax, eax
	js BG_SaveShellShockDvars_50
	mov eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov edi, BG_SaveShellShockDvars_filebuf
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	repne scasb
	not ecx
	sub ecx, 0x1
	mov [esp+0x4], ecx
	mov dword [esp], BG_SaveShellShockDvars_filebuf
	call FS_Write
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call FS_FCloseFile
	mov eax, 0x1
	add esp, 0x18c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;BG_GetPlayerViewDirection(playerState_s const*, float*, float*, float*)
BG_GetPlayerViewDirection:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	add eax, 0x108
	mov [ebp+0x8], eax
	pop ebp
	jmp AngleVectors


;BG_EvaluateTrajectoryDelta(trajectory_t const*, int, float*)
BG_EvaluateTrajectoryDelta:
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
	ja BG_EvaluateTrajectoryDelta_10
	jmp dword [eax*4+BG_EvaluateTrajectoryDelta_jumptab_0]
BG_EvaluateTrajectoryDelta_10:
	mov [ebp+0x10], eax
	mov dword [ebp+0xc], _cstring_bg_evaluatetraje1
	mov dword [ebp+0x8], 0x2
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	jmp Com_Error
BG_EvaluateTrajectoryDelta_110:
	mov ecx, [ebx+0x4]
	mov eax, ecx
	add eax, [ebx+0x8]
	cmp eax, edx
	jge BG_EvaluateTrajectoryDelta_20
BG_EvaluateTrajectoryDelta_30:
	xor eax, eax
	mov [esi], eax
	mov [esi+0x4], eax
	mov [esi+0x8], eax
BG_EvaluateTrajectoryDelta_50:
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
BG_EvaluateTrajectoryDelta_70:
	mov eax, [ebx+0x4]
	add eax, [ebx+0x8]
	cmp edx, eax
	jg BG_EvaluateTrajectoryDelta_30
BG_EvaluateTrajectoryDelta_60:
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
BG_EvaluateTrajectoryDelta_100:
	mov ecx, [ebx+0x4]
	mov eax, ecx
	add eax, [ebx+0x8]
	cmp edx, eax
	jg BG_EvaluateTrajectoryDelta_30
	sub edx, ecx
	cvtsi2ss xmm0, edx
	mulss xmm0, [_float_0_00100000]
	mulss xmm0, xmm0
	jmp BG_EvaluateTrajectoryDelta_40
BG_EvaluateTrajectoryDelta_90:
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
	jmp BG_EvaluateTrajectoryDelta_50
BG_EvaluateTrajectoryDelta_80:
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
BG_EvaluateTrajectoryDelta_40:
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
BG_EvaluateTrajectoryDelta_20:
	sub edx, ecx
	cvtsi2ss xmm0, edx
	mulss xmm0, [_float_0_00100000]
	jmp BG_EvaluateTrajectoryDelta_40
	nop
	
	
BG_EvaluateTrajectoryDelta_jumptab_0:
	dd BG_EvaluateTrajectoryDelta_30
	dd BG_EvaluateTrajectoryDelta_30
	dd BG_EvaluateTrajectoryDelta_60
	dd BG_EvaluateTrajectoryDelta_70
	dd BG_EvaluateTrajectoryDelta_80
	dd BG_EvaluateTrajectoryDelta_90
	dd BG_EvaluateTrajectoryDelta_100
	dd BG_EvaluateTrajectoryDelta_110


;BG_PlayerStateToEntityState(playerState_s*, entityState_s*, int, unsigned char)
BG_PlayerStateToEntityState:
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
	jz BG_PlayerStateToEntityState_10
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
BG_PlayerStateToEntityState_10:
	mov edi, [ebp+0x8]
	mov eax, [edi+0xb0]
	mov edx, [ebp+0xc]
	mov [edx+0x8], eax
	cmp dword [edi+0x4], 0x6
	jle BG_PlayerStateToEntityState_20
	or eax, 0x20000
	mov [edx+0x8], eax
BG_PlayerStateToEntityState_200:
	mov ebx, [ebp+0x8]
	test byte [ebx+0xc], 0x10
	jz BG_PlayerStateToEntityState_30
	mov edi, [ebp+0xc]
	or dword [edi+0x8], 0x40000
BG_PlayerStateToEntityState_190:
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
	jz BG_PlayerStateToEntityState_40
	mov eax, [edx+0x59c]
	mov [ecx+0x74], eax
BG_PlayerStateToEntityState_40:
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
	call PM_GetEffectiveStance
	sub eax, 0x1
	jz BG_PlayerStateToEntityState_50
	xor eax, eax
	mov ecx, [ebp+0xc]
	mov [ecx+0xdc], eax
	mov [ecx+0xe0], eax
BG_PlayerStateToEntityState_220:
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
	js BG_PlayerStateToEntityState_60
	mov ebx, [ebp+0xc]
	mov dword [ebx+0x9c], 0x0
BG_PlayerStateToEntityState_240:
	mov ebx, esi
	mov edi, [ebp+0x8]
	mov ecx, [edi+0xb4]
	mov edx, [edi+0xd8]
	mov eax, ecx
	sub eax, edx
	cmp eax, 0x4
	jle BG_PlayerStateToEntityState_70
	lea edx, [ecx-0x4]
	mov [edi+0xd8], edx
BG_PlayerStateToEntityState_70:
	mov eax, edx
	sub eax, ecx
	test eax, eax
	jle BG_PlayerStateToEntityState_80
	mov edx, ecx
	mov eax, [ebp+0x8]
	mov [eax+0xd8], ecx
BG_PlayerStateToEntityState_80:
	mov esi, edx
	mov edx, [ebp+0x8]
	cmp [edx+0xb4], esi
	jz BG_PlayerStateToEntityState_90
	movzx ebx, bl
	mov [ebp-0x1c], ebx
	mov ebx, [ebp+0x8]
BG_PlayerStateToEntityState_150:
	mov ecx, esi
	and ecx, 0x3
	mov [ebp-0x20], ecx
	movzx edi, byte [ebx+ecx*4+0xb8]
	mov eax, pmoveHandlers
	mov ecx, [ebp-0x1c]
	mov edx, [eax+ecx*8+0x4]
	test edx, edx
	jz BG_PlayerStateToEntityState_100
	mov ebx, edi
	movzx eax, bl
	mov [esp+0x4], eax
	mov ecx, [ebp+0xc]
	mov eax, [ecx]
	mov [esp], eax
	call edx
BG_PlayerStateToEntityState_100:
	mov eax, edi
	movzx ebx, al
	mov edx, 0x1f
	cmp edx, ebx
	jz BG_PlayerStateToEntityState_110
	xor ecx, ecx
	mov edx, serverOnlyEvents
BG_PlayerStateToEntityState_130:
	add ecx, 0x1
	mov eax, [edx+0x4]
	test eax, eax
	jle BG_PlayerStateToEntityState_120
	add edx, 0x4
	cmp eax, ebx
	jnz BG_PlayerStateToEntityState_130
BG_PlayerStateToEntityState_110:
	add esi, 0x1
	mov edi, [ebp+0x8]
	cmp esi, [edi+0xb4]
	jz BG_PlayerStateToEntityState_140
BG_PlayerStateToEntityState_180:
	mov ebx, edi
	jmp BG_PlayerStateToEntityState_150
BG_PlayerStateToEntityState_120:
	mov ecx, [ecx*4+serverOnlyEvents]
	test ecx, ecx
	jns BG_PlayerStateToEntityState_110
	mov ecx, edi
	movzx ebx, cl
	cmp ebx, 0x6
	jz BG_PlayerStateToEntityState_110
	xor ecx, ecx
	mov edx, singleClientEvents
	add ecx, 0x1
	mov eax, [edx+0x4]
	test eax, eax
	jle BG_PlayerStateToEntityState_160
BG_PlayerStateToEntityState_170:
	add edx, 0x4
	cmp ebx, eax
	jz BG_PlayerStateToEntityState_110
	add ecx, 0x1
	mov eax, [edx+0x4]
	test eax, eax
	jg BG_PlayerStateToEntityState_170
BG_PlayerStateToEntityState_160:
	mov edx, [ecx*4+singleClientEvents]
	test edx, edx
	jns BG_PlayerStateToEntityState_110
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
	jnz BG_PlayerStateToEntityState_180
BG_PlayerStateToEntityState_140:
	mov eax, edi
	mov [eax+0xd8], esi
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
BG_PlayerStateToEntityState_30:
	mov eax, [ebp+0xc]
	and dword [eax+0x8], 0xfffbffff
	jmp BG_PlayerStateToEntityState_190
BG_PlayerStateToEntityState_20:
	and eax, 0xfffdffff
	mov ecx, [ebp+0xc]
	mov [ecx+0x8], eax
	jmp BG_PlayerStateToEntityState_200
BG_PlayerStateToEntityState_50:
	mov eax, [ebx+0x11c]
	test eax, eax
	jnz BG_PlayerStateToEntityState_210
	movss xmm4, dword [_float_1_00000000]
	mov edi, [ebp+0x8]
BG_PlayerStateToEntityState_280:
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
	jmp BG_PlayerStateToEntityState_220
BG_PlayerStateToEntityState_60:
	mov eax, ebx
	sub eax, ecx
	cmp eax, 0x4
	jg BG_PlayerStateToEntityState_230
BG_PlayerStateToEntityState_250:
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
	jmp BG_PlayerStateToEntityState_240
BG_PlayerStateToEntityState_230:
	lea eax, [ebx-0x4]
	mov [edi+0x620], eax
	jmp BG_PlayerStateToEntityState_250
BG_PlayerStateToEntityState_90:
	mov eax, edx
	mov [eax+0xd8], esi
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
BG_PlayerStateToEntityState_210:
	mov edx, [ebp+0x8]
	mov eax, [edx+0x124]
	mov [esp+0x8], eax
	mov eax, [edx+0x120]
	mov [esp+0x4], eax
	mov [esp], edx
	call PM_GetViewHeightLerpTime
	mov ecx, [ebp+0x8]
	mov edx, [ecx]
	sub edx, [ecx+0x11c]
	cvtsi2ss xmm4, edx
	cvtsi2ss xmm0, eax
	divss xmm4, xmm0
	ucomiss xmm4, [_float_0_00000000]
	jb BG_PlayerStateToEntityState_260
BG_PlayerStateToEntityState_290:
	movss xmm0, dword [_float_1_00000000]
	minss xmm0, xmm4
	movaps xmm4, xmm0
BG_PlayerStateToEntityState_300:
	mov ebx, [ebp+0x8]
	mov edi, [ebx+0x124]
	test edi, edi
	jz BG_PlayerStateToEntityState_270
	mov edi, ebx
	jmp BG_PlayerStateToEntityState_280
BG_PlayerStateToEntityState_270:
	movss xmm0, dword [_float_1_00000000]
	subss xmm0, xmm4
	movaps xmm4, xmm0
	mov edi, [ebp+0x8]
	jmp BG_PlayerStateToEntityState_280
BG_PlayerStateToEntityState_260:
	jp BG_PlayerStateToEntityState_290
	pxor xmm4, xmm4
	jmp BG_PlayerStateToEntityState_300


;BG_RegisterShockVolumeDvars()
BG_RegisterShockVolumeDvars:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	xor esi, esi
	mov edi, bg_shock_volume
	mov ebx, bgShockChannelNames
	jmp BG_RegisterShockVolumeDvars_10
BG_RegisterShockVolumeDvars_20:
	mov [esp], esi
	call SND_GetEntChannelName
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
	call Cvar_RegisterFloat
	mov [edi-0x4], eax
	add esi, 0x1
	add ebx, 0x50
BG_RegisterShockVolumeDvars_10:
	call SND_GetEntChannelCount
	add edi, 0x4
	cmp esi, eax
	jl BG_RegisterShockVolumeDvars_20
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;BG_PlayerCanPickUpWeaponType(WeaponDef const*, playerState_s const*)
BG_PlayerCanPickUpWeaponType:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax+0x144]
	cmp eax, 0x3
	jz BG_PlayerCanPickUpWeaponType_10
	cmp eax, 0x2
	jz BG_PlayerCanPickUpWeaponType_20
BG_PlayerCanPickUpWeaponType_30:
	mov eax, 0x1
	pop ebp
	ret
BG_PlayerCanPickUpWeaponType_20:
	mov eax, [ebp+0xc]
	mov eax, [eax+0xe4]
	test eax, eax
	jz BG_PlayerCanPickUpWeaponType_30
	xor eax, eax
BG_PlayerCanPickUpWeaponType_40:
	pop ebp
	ret
BG_PlayerCanPickUpWeaponType_10:
	mov eax, [ebp+0xc]
	cmp dword [eax+0xe4], 0x1
	jz BG_PlayerCanPickUpWeaponType_30
	xor eax, eax
	jmp BG_PlayerCanPickUpWeaponType_40


;BG_SetShellShockParmsFromDvars(shellshock_parms_t*)
BG_SetShellShockParmsFromDvars:
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
	jb BG_SetShellShockParmsFromDvars_10
	movss xmm0, dword [_float_1_00000000]
BG_SetShellShockParmsFromDvars_60:
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
	call Cvar_DisplayableValue
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
	jmp BG_SetShellShockParmsFromDvars_20
BG_SetShellShockParmsFromDvars_40:
	movaps xmm2, xmm3
	movss xmm1, dword [_float__1_00000000]
BG_SetShellShockParmsFromDvars_50:
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
BG_SetShellShockParmsFromDvars_20:
	movss [ebp-0x58], xmm3
	call SND_GetEntChannelCount
	cmp edi, eax
	movss xmm3, dword [ebp-0x58]
	jge BG_SetShellShockParmsFromDvars_30
	mov eax, [esi]
	movss xmm2, dword [eax+0xc]
	movaps xmm4, xmm3
	movaps xmm0, xmm3
	subss xmm0, xmm2
	ucomiss xmm0, xmm3
	jae BG_SetShellShockParmsFromDvars_40
	movaps xmm1, xmm2
	subss xmm1, [_float_1_00000000]
	jmp BG_SetShellShockParmsFromDvars_50
BG_SetShellShockParmsFromDvars_30:
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
BG_SetShellShockParmsFromDvars_10:
	movaps xmm0, xmm2
	divss xmm0, xmm1
	jmp BG_SetShellShockParmsFromDvars_60


;BG_PlayerHasRoomForEntAllAmmoTypes(entityState_s const*, playerState_s const*)
BG_PlayerHasRoomForEntAllAmmoTypes:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov edx, [ebx+0x88]
	lea eax, [edx-0x1]
	cmp eax, 0x7fe
	ja BG_PlayerHasRoomForEntAllAmmoTypes_10
	mov ebx, edx
	and ebx, 0x8000007f
	js BG_PlayerHasRoomForEntAllAmmoTypes_20
BG_PlayerHasRoomForEntAllAmmoTypes_60:
	test ebx, ebx
	jnz BG_PlayerHasRoomForEntAllAmmoTypes_30
BG_PlayerHasRoomForEntAllAmmoTypes_40:
	xor eax, eax
	add esp, 0x14
	pop ebx
	pop ebp
	ret
BG_PlayerHasRoomForEntAllAmmoTypes_30:
	mov [esp+0x4], ebx
	mov eax, [ebp+0xc]
	mov [esp], eax
	call BG_GetMaxPickupableAmmo
	test eax, eax
	jz BG_PlayerHasRoomForEntAllAmmoTypes_40
	mov [esp], ebx
	call BG_GetWeaponDef
	mov eax, [eax+0x540]
	test eax, eax
	jnz BG_PlayerHasRoomForEntAllAmmoTypes_50
	mov eax, 0x1
BG_PlayerHasRoomForEntAllAmmoTypes_70:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
BG_PlayerHasRoomForEntAllAmmoTypes_10:
	mov eax, [ebx+0x4]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], _cstring_bg_playerhasroom
	call va
	mov [esp+0x4], eax
	mov dword [esp], 0x2
	call Com_Error
	mov edx, [ebx+0x88]
	mov ebx, edx
	and ebx, 0x8000007f
	jns BG_PlayerHasRoomForEntAllAmmoTypes_60
BG_PlayerHasRoomForEntAllAmmoTypes_20:
	sub ebx, 0x1
	or ebx, 0xffffff80
	add ebx, 0x1
	jmp BG_PlayerHasRoomForEntAllAmmoTypes_60
BG_PlayerHasRoomForEntAllAmmoTypes_50:
	mov [esp+0x4], eax
	mov eax, [ebp+0xc]
	mov [esp], eax
	call BG_GetMaxPickupableAmmo
	test eax, eax
	jz BG_PlayerHasRoomForEntAllAmmoTypes_40
	mov eax, 0x1
	jmp BG_PlayerHasRoomForEntAllAmmoTypes_70


;BG_AddPredictableEventToPlayerstate(int, unsigned int, playerState_s*)
BG_AddPredictableEventToPlayerstate:
	push ebp
	mov ebp, esp
	push ebx
	mov eax, [ebp+0x8]
	mov ebx, [ebp+0x10]
	test eax, eax
	jz BG_AddPredictableEventToPlayerstate_10
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
BG_AddPredictableEventToPlayerstate_10:
	pop ebx
	pop ebp
	ret


;All cstrings:
SECTION .rdata
_cstring_bg_shock_volume_:		db "bg_shock_volume_%s",0
_cstring_null:		db 0
_cstring_bg_canitembegrab:		db 15h,"BG_CanItemBeGrabbed: index out of range (index is %i, eType is %i)",0
_cstring_event_s_i:		db "Event %s (%i)",0
_cstring_bg_evaluatetraje:		db 15h,"BG_EvaluateTrajectory: unknown trType: %i",0
_cstring_shocksshock:		db "shock/%s.shock",0
_cstring_couldnt_open_s:		db "couldn",27h,"t open ",27h,"%s",27h,".",0ah,0
_cstring_shockdefaultshoc:		db "shock/default.shock",0
_cstring_couldnt_open_sho:		db "couldn",27h,"t open ",27h,"shock/default.shock",27h,". This is a default shock file that you should have.",0ah,0
_cstring_bg_evaluatetraje1:		db 15h,"BG_EvaluateTrajectoryDelta: unknown trType: %i",0
_cstring_bg_playerhasroom:		db 15h,"BG_PlayerHasRoomForAllAmmoTypesOfEnt: index out of range (index is %i, eType is %i)",0



;All constant floats and doubles:
SECTION .rdata
_float_180_00000000:		dd 0x43340000	; 180
_float_6_00000000:		dd 0x40c00000	; 6
_float_1_00000000:		dd 0x3f800000	; 1
_float_18_00000000:		dd 0x41900000	; 18
_float_2_50000000:		dd 0x40200000	; 2.5
_float__0_75000000:		dd 0xbf400000	; -0.75
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

align   16,db 0
_data16_80000000:		dd 0x80000000, 0x0, 0x0, 0x0	; DQWORD
