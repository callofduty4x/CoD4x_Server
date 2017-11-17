;Imports of cg_weapons:
	extern XAnimSetGoalWeight
	extern DObjGetTree
	extern XAnimSetTime
	extern Hunk_AllocXAnimClient
	extern XAnimCreateAnims
	extern XAnimBlend
	extern BG_CreateXAnim
	extern XAnimCreateTree
	extern Com_Error
	extern XAnimIsLooped
	extern cmd_args
	extern atoi
	extern Com_Printf
	extern Com_Memset
	extern CG_LocationalTrace
	extern Trace_GetEntityHitId
	extern cg_entitiesArray
	extern cg_weaponsArray
	extern BG_GetWeaponDef
	extern Com_SafeClientDObjFree
	extern scr_const
	extern overrideNVGModelWithKnife
	extern Com_ClientDObjCreate
	extern DObjSetHidePartBits
	extern DObjUpdateClientInfo
	extern XAnimGetAnims
	extern cgArray
	extern perk_weapReloadMultiplier
	extern perk_weapRateMultiplier
	extern XAnimGetLengthMsec
	extern BG_GetViewmodelWeaponIndex
	extern cg_gun_move_minspeed
	extern cg_gun_move_f
	extern cg_gun_move_r
	extern cg_gun_move_u
	extern cg_gun_move_rate
	extern cg_gun_ofs_f
	extern cg_gun_ofs_r
	extern cg_gun_ofs_u
	extern BG_GetNumWeapons
	extern BG_WeaponAmmo
	extern Com_PrintError
	extern CL_IsLocalClientActive
	extern Com_GetClientDObj
	extern CG_DObjGetWorldTagPos
	extern SL_ConvertToString
	extern Com_DPrintf
	extern cg_tracerChance
	extern ms_rand
	extern Vec3NormalizeTo
	extern sv_clientSideBullets
	extern DynEntCl_DynEntImpactEvent
	extern cgMedia
	extern CG_PlaySoundAlias
	extern cg_marks_ents_player_only
	extern FX_PlayOrientedEffectWithMarkEntity
	extern cg_blood
	extern cg_tracerWidth
	extern cg_tracerScale
	extern cg_tracerScaleMinDist
	extern cg_tracerScaleDistRange
	extern cg_tracerScrewDist
	extern cg_tracerScrewRadius
	extern FX_Beam_Add
	extern DObjClearSkel
	extern AxisToAngles
	extern BG_WeaponFireRecoil
	extern CG_PlayBoltedEffect
	extern BG_WeaponIsClipOnly
	extern BG_ClipForWeapon
	extern BG_AmmoForWeapon
	extern BG_TakePlayerWeapon
	extern BG_EvaluateTrajectory
	extern CG_GetBoneIndex
	extern FX_GetBoneOrientation
	extern BG_GetSpreadForWeapon
	extern AngleVectors
	extern cg_firstPersonTracerChance
	extern tan
	extern heli_barrelRotation
	extern Veh_IncTurretBarrelRoll
	extern SND_GetKnownLength
	extern CG_CompassAddWeaponPingInfo
	extern cosf
	extern sinf
	extern BG_GetWeaponIndex
	extern BG_GetSurfacePenetrationDepth
	extern BG_AdvanceTrace
	extern Com_Memcpy
	extern bullet_penetrationMinFxDist
	extern BG_IsProneAnim
	extern BG_IsAds
	extern DynEntCl_EntityImpactEvent
	extern BG_IsCrouchingAnim
	extern perk_bulletPenetrationMultiplier
	extern CG_AllocLocalEntity
	extern cg_tracerSpeed
	extern cg_weaponCycleDelay
	extern CG_MenuShowNotify
	extern cg_drawGun
	extern CG_GetWeapReticleZoom
	extern BG_CalculateWeaponPosition_Sway
	extern BG_IsAimDownSightWeapon
	extern MatrixTransformVector43
	extern cg_gun_x
	extern cg_gun_y
	extern cg_gun_z
	extern BG_CalculateWeaponAngles
	extern AnglesToAxis
	extern MatrixMultiply
	extern AxisToQuat
	extern UnitQuatToAngles
	extern AngleNormalize360
	extern GetLeanFraction
	extern CL_GetConfigString
	extern strcpy
	extern SCR_UpdateLoadScreen
	extern memset
	extern bg_itemlist
	extern XAnimClearTreeGoalWeights
	extern DObjGetBoneIndex
	extern SEH_StringEd_GetString
	extern loc_warnings
	extern loc_warningsAsErrors
	extern Com_PrintWarning
	extern BG_GetWeaponIndexForName
	extern UnitQuatToAxis
	extern player_breath_hold_time
	extern cgsArray
	extern SND_GetEntChannelCount
	extern SND_SetChannelVolumes
	extern SND_DeactivateChannelVolumes
	extern AddLeanToPosition
	extern R_AddDObjToScene
	extern CG_LookingThroughNightVision
	extern cg_laserForceOn
	extern CG_Laser_Add
	extern player_breath_snd_lerp
	extern DiffTrack
	extern CG_PlayClientSoundAlias
	extern player_breath_snd_delay
	extern cg_brass
	extern BG_GetPlayerViewDirection
	extern randomf
	extern RotatePointAroundVector
	extern clientUIActives
	extern CL_SetADS
	extern BG_GetPlayerViewOrigin
	extern DObjGetClientNotifyList
	extern Q_stricmp
	extern SL_FindLowercaseString
	extern CG_PlayClientSoundAliasByName
	extern XAnimHasFinished

;Exports of cg_weapons:
	global _GLOBAL__I__Z13CG_JavelinADSi
	global g_animRateOffsets
	global PlayADSAnim
	global CG_CreateWeaponViewModelXAnim
	global ActionParms
	global BulletTrace
	global ChangeViewmodelDobj
	global StartWeaponAnim
	global _ZZ45CalculateWeaponPosition_BasePosition_movementP4cg_sPfE10MYLERP_END
	global _ZZ45CalculateWeaponPosition_BasePosition_movementP4cg_sPfE12MYLERP_START
	global CalculateWeaponPosition_BasePosition_movement
	global NextWeapInCycle
	global CycleWeapPrimary
	global CalcMuzzlePoint
	global BulletTrajectoryEffects
	global CG_BulletHitEvent_Internal
	global CG_DrawTracer
	global CG_FireWeapon
	global CG_JavelinADS
	global CG_SpawnTracer
	global CG_CalcEyePoint
	global CG_NextWeapon_f
	global CG_PrevWeapon_f
	global CG_AddViewWeapon
	global CG_RegisterItems
	global CG_ActionSlotUp_f
	global CG_BulletHitEvent
	global CG_HoldBreathInit
	global CG_RegisterWeapon
	global CG_SetupWeaponDef
	global CG_AddPlayerWeapon
	global CG_MeleeBloodEvent
	global CG_OutOfAmmoChange
	global CG_ActionSlotDown_f
	global CG_EjectWeaponBrass
	global CG_GetViewDirection
	global CG_RandomEffectAxis
	global CG_ScopeIsOverlayed
	global CG_WeaponDObjHandle
	global CG_SelectWeaponIndex
	global CG_GetPlayerViewOrigin
	global CG_UpdateViewModelPose
	global CG_AltWeaponToggleIndex
	global CG_BulletHitClientEvent
	global CG_UICheckWeapLockBlink
	global CG_UpdateHandViewmodels
	global CG_UpdateViewWeaponAnim
	global CG_ImpactEffectForWeapon
	global CG_PlayerTurretWeaponIdx
	global CG_UpdateWeaponViewmodels
	global CG_PlayerUsingScopedTurret
	global CG_UICheckWeapLockAttackTop
	global CG_GetLocalClientGlobalsForEnt
	global CG_UICheckWeapLockAttackDirect
	global removeMeWhenMPStopsCrashingInHere


SECTION .text


;global constructors keyed to CG_JavelinADS(int)
_GLOBAL__I__Z13CG_JavelinADSi:
	push ebp
	mov ebp, esp
	mov edx, 0xffff
	mov eax, 0x1
	pop ebp
	jmp __static_initialization_and_destruction_0


;PlayADSAnim(float, int, DObj_s*, int)
PlayADSAnim:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	movss [ebp-0x1c], xmm0
	mov edi, edx
	cmp ecx, 0x1f
	jz PlayADSAnim_10
	mov dword [esp+0x1c], 0x0
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0x0
	xor ebx, ebx
	mov [esp+0x10], ebx
	mov esi, 0x3dcccccd
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x1f
	mov [esp], edx
	call XAnimSetGoalWeight
	mov dword [esp+0x1c], 0x0
	mov dword [esp+0x18], 0x1
	mov dword [esp+0x14], 0x0
	mov [esp+0x10], ebx
	mov [esp+0xc], esi
	mov dword [esp+0x8], 0x3f800000
	mov dword [esp+0x4], 0x20
	mov [esp], edi
	call XAnimSetGoalWeight
PlayADSAnim_20:
	mov [esp], edi
	call DObjGetTree
	movss xmm0, dword [ebp-0x1c]
	movss [esp+0x8], xmm0
	mov dword [esp+0x4], 0x1f
	mov [esp], eax
	call XAnimSetTime
	mov [esp], edi
	call DObjGetTree
	movss xmm0, dword [_float_1_00000000]
	subss xmm0, [ebp-0x1c]
	movss [esp+0x8], xmm0
	mov dword [esp+0x4], 0x20
	mov [esp], eax
	call XAnimSetTime
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
PlayADSAnim_10:
	mov dword [esp+0x1c], 0x0
	mov dword [esp+0x18], 0x1
	mov dword [esp+0x14], 0x0
	xor ebx, ebx
	mov [esp+0x10], ebx
	mov esi, 0x3dcccccd
	mov [esp+0xc], esi
	mov dword [esp+0x8], 0x3f800000
	mov dword [esp+0x4], 0x1f
	mov [esp], edx
	call XAnimSetGoalWeight
	mov dword [esp+0x1c], 0x0
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0x0
	mov [esp+0x10], ebx
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x20
	mov [esp], edi
	call XAnimSetGoalWeight
	jmp PlayADSAnim_20


;CG_CreateWeaponViewModelXAnim(WeaponDef*)
CG_CreateWeaponViewModelXAnim:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov edi, eax
	mov eax, Hunk_AllocXAnimClient
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x21
	mov dword [esp], _cstring_viewmodel
	call XAnimCreateAnims
	mov [ebp-0x1c], eax
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x20
	mov dword [esp+0xc], 0x1
	mov dword [esp+0x8], _cstring_root
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call XAnimBlend
	mov ebx, edi
	mov esi, 0x1
CG_CreateWeaponViewModelXAnim_10:
	mov eax, [ebx+0x54]
	mov edx, 0x1
	cmp byte [eax], 0x0
	cmovnz edx, esi
	mov eax, [edi+edx*4+0x50]
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call BG_CreateXAnim
	add esi, 0x1
	add ebx, 0x4
	cmp esi, 0x21
	jnz CG_CreateWeaponViewModelXAnim_10
	mov eax, Hunk_AllocXAnimClient
	mov [esp+0x4], eax
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call XAnimCreateTree
	mov ebx, eax
	mov eax, [edi+0x54]
	test eax, eax
	jz CG_CreateWeaponViewModelXAnim_20
	cmp byte [eax], 0x0
	jz CG_CreateWeaponViewModelXAnim_20
	mov eax, [edi+0xcc]
	cmp byte [eax], 0x0
	jnz CG_CreateWeaponViewModelXAnim_30
CG_CreateWeaponViewModelXAnim_50:
	mov eax, [edi+0xd0]
	cmp byte [eax], 0x0
	jnz CG_CreateWeaponViewModelXAnim_40
CG_CreateWeaponViewModelXAnim_60:
	mov eax, ebx
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_CreateWeaponViewModelXAnim_20:
	mov eax, [edi+0x4]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_cg_registerweapo
	mov dword [esp], 0x2
	call Com_Error
	mov eax, [edi+0xcc]
	cmp byte [eax], 0x0
	jz CG_CreateWeaponViewModelXAnim_50
CG_CreateWeaponViewModelXAnim_30:
	mov dword [esp+0x4], 0x1f
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call XAnimIsLooped
	test al, al
	jz CG_CreateWeaponViewModelXAnim_50
	mov eax, [edi+0xcc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_cg_registerweapo1
	mov dword [esp], 0x2
	call Com_Error
	jmp CG_CreateWeaponViewModelXAnim_50
CG_CreateWeaponViewModelXAnim_40:
	mov dword [esp+0x4], 0x20
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call XAnimIsLooped
	test al, al
	jz CG_CreateWeaponViewModelXAnim_60
	mov eax, [edi+0xd0]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_cg_registerweapo1
	mov dword [esp], 0x2
	call Com_Error
	mov eax, ebx
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;ActionParms(int*)
ActionParms:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, eax
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x1
	jle ActionParms_10
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x4]
	mov [esp], eax
	call atoi
	lea edx, [eax-0x1]
	cmp edx, 0x3
	ja ActionParms_20
	mov [ebx], edx
	mov eax, 0x1
	add esp, 0x14
	pop ebx
	pop ebp
	ret
ActionParms_20:
	mov dword [esp+0xc], 0x4
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_actionslot_numbe
	mov dword [esp], 0x0
	call Com_Printf
	xor eax, eax
	add esp, 0x14
	pop ebx
	pop ebp
	ret
ActionParms_10:
	mov dword [esp+0x4], _cstring_usage_actionslot
	mov dword [esp], 0x0
	call Com_Printf
	xor eax, eax
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;__static_initialization_and_destruction_0(int, int)
__static_initialization_and_destruction_0:
	push ebp
	mov ebp, esp
	cmp edx, 0xffff
	jz __static_initialization_and_destruction_0_10
__static_initialization_and_destruction_0_20:
	pop ebp
	ret
__static_initialization_and_destruction_0_10:
	sub eax, 0x1
	jnz __static_initialization_and_destruction_0_20
	mov eax, [g_fltMin__uint4]
	mov [g_fltMin], eax
	mov eax, [g_fltMin__uint4+0x4]
	mov [g_fltMin+0x4], eax
	mov eax, [g_fltMin__uint4+0x8]
	mov [g_fltMin+0x8], eax
	mov eax, [g_fltMin__uint4+0xc]
	mov [g_fltMin+0xc], eax
	mov eax, [g_negativeZero__uint4]
	mov [g_negativeZero], eax
	mov eax, [g_negativeZero__uint4+0x4]
	mov [g_negativeZero+0x4], eax
	mov eax, [g_negativeZero__uint4+0x8]
	mov [g_negativeZero+0x8], eax
	mov eax, [g_negativeZero__uint4+0xc]
	mov [g_negativeZero+0xc], eax
	mov eax, [g_inc__uint4]
	mov [g_inc], eax
	mov eax, [g_inc__uint4+0x4]
	mov [g_inc+0x4], eax
	mov eax, [g_inc__uint4+0x8]
	mov [g_inc+0x8], eax
	mov eax, [g_inc__uint4+0xc]
	mov [g_inc+0xc], eax
	mov eax, [g_swizzleXYZW__uint4]
	mov [g_swizzleXYZW], eax
	mov eax, [g_swizzleXYZW__uint4+0x4]
	mov [g_swizzleXYZW+0x4], eax
	mov eax, [g_swizzleXYZW__uint4+0x8]
	mov [g_swizzleXYZW+0x8], eax
	mov eax, [g_swizzleXYZW__uint4+0xc]
	mov [g_swizzleXYZW+0xc], eax
	mov eax, [g_swizzleYXZW__uint4]
	mov [g_swizzleYXZW], eax
	mov eax, [g_swizzleYXZW__uint4+0x4]
	mov [g_swizzleYXZW+0x4], eax
	mov eax, [g_swizzleYXZW__uint4+0x8]
	mov [g_swizzleYXZW+0x8], eax
	mov eax, [g_swizzleYXZW__uint4+0xc]
	mov [g_swizzleYXZW+0xc], eax
	mov eax, [g_swizzleXZYW__uint4]
	mov [g_swizzleXZYW], eax
	mov eax, [g_swizzleXZYW__uint4+0x4]
	mov [g_swizzleXZYW+0x4], eax
	mov eax, [g_swizzleXZYW__uint4+0x8]
	mov [g_swizzleXZYW+0x8], eax
	mov eax, [g_swizzleXZYW__uint4+0xc]
	mov [g_swizzleXZYW+0xc], eax
	mov eax, [g_swizzleYXWZ__uint4]
	mov [g_swizzleYXWZ], eax
	mov eax, [g_swizzleYXWZ__uint4+0x4]
	mov [g_swizzleYXWZ+0x4], eax
	mov eax, [g_swizzleYXWZ__uint4+0x8]
	mov [g_swizzleYXWZ+0x8], eax
	mov eax, [g_swizzleYXWZ__uint4+0xc]
	mov [g_swizzleYXWZ+0xc], eax
	mov eax, [g_swizzleXAZC__uint4]
	mov [g_swizzleXAZC], eax
	mov eax, [g_swizzleXAZC__uint4+0x4]
	mov [g_swizzleXAZC+0x4], eax
	mov eax, [g_swizzleXAZC__uint4+0x8]
	mov [g_swizzleXAZC+0x8], eax
	mov eax, [g_swizzleXAZC__uint4+0xc]
	mov [g_swizzleXAZC+0xc], eax
	mov eax, [g_swizzleYBWD__uint4]
	mov [g_swizzleYBWD], eax
	mov eax, [g_swizzleYBWD__uint4+0x4]
	mov [g_swizzleYBWD+0x4], eax
	mov eax, [g_swizzleYBWD__uint4+0x8]
	mov [g_swizzleYBWD+0x8], eax
	mov eax, [g_swizzleYBWD__uint4+0xc]
	mov [g_swizzleYBWD+0xc], eax
	mov eax, [g_swizzleXYAB__uint4]
	mov [g_swizzleXYAB], eax
	mov eax, [g_swizzleXYAB__uint4+0x4]
	mov [g_swizzleXYAB+0x4], eax
	mov eax, [g_swizzleXYAB__uint4+0x8]
	mov [g_swizzleXYAB+0x8], eax
	mov eax, [g_swizzleXYAB__uint4+0xc]
	mov [g_swizzleXYAB+0xc], eax
	mov eax, [g_swizzleZWCD__uint4]
	mov [g_swizzleZWCD], eax
	mov eax, [g_swizzleZWCD__uint4+0x4]
	mov [g_swizzleZWCD+0x4], eax
	mov eax, [g_swizzleZWCD__uint4+0x8]
	mov [g_swizzleZWCD+0x8], eax
	mov eax, [g_swizzleZWCD__uint4+0xc]
	mov [g_swizzleZWCD+0xc], eax
	mov eax, [g_swizzleXYZA__uint4]
	mov [g_swizzleXYZA], eax
	mov eax, [g_swizzleXYZA__uint4+0x4]
	mov [g_swizzleXYZA+0x4], eax
	mov eax, [g_swizzleXYZA__uint4+0x8]
	mov [g_swizzleXYZA+0x8], eax
	mov eax, [g_swizzleXYZA__uint4+0xc]
	mov [g_swizzleXYZA+0xc], eax
	mov eax, [g_swizzleYZXW__uint4]
	mov [g_swizzleYZXW], eax
	mov eax, [g_swizzleYZXW__uint4+0x4]
	mov [g_swizzleYZXW+0x4], eax
	mov eax, [g_swizzleYZXW__uint4+0x8]
	mov [g_swizzleYZXW+0x8], eax
	mov eax, [g_swizzleYZXW__uint4+0xc]
	mov [g_swizzleYZXW+0xc], eax
	mov eax, [g_swizzleZXYW__uint4]
	mov [g_swizzleZXYW], eax
	mov eax, [g_swizzleZXYW__uint4+0x4]
	mov [g_swizzleZXYW+0x4], eax
	mov eax, [g_swizzleZXYW__uint4+0x8]
	mov [g_swizzleZXYW+0x8], eax
	mov eax, [g_swizzleZXYW__uint4+0xc]
	mov [g_swizzleZXYW+0xc], eax
	mov eax, [g_swizzleWABW__uint4]
	mov [g_swizzleWABW], eax
	mov eax, [g_swizzleWABW__uint4+0x4]
	mov [g_swizzleWABW+0x4], eax
	mov eax, [g_swizzleWABW__uint4+0x8]
	mov [g_swizzleWABW+0x8], eax
	mov eax, [g_swizzleWABW__uint4+0xc]
	mov [g_swizzleWABW+0xc], eax
	mov eax, [g_swizzleZWAW__uint4]
	mov [g_swizzleZWAW], eax
	mov eax, [g_swizzleZWAW__uint4+0x4]
	mov [g_swizzleZWAW+0x4], eax
	mov eax, [g_swizzleZWAW__uint4+0x8]
	mov [g_swizzleZWAW+0x8], eax
	mov eax, [g_swizzleZWAW__uint4+0xc]
	mov [g_swizzleZWAW+0xc], eax
	mov eax, [g_swizzleYZWA__uint4]
	mov [g_swizzleYZWA], eax
	mov eax, [g_swizzleYZWA__uint4+0x4]
	mov [g_swizzleYZWA+0x4], eax
	mov eax, [g_swizzleYZWA__uint4+0x8]
	mov [g_swizzleYZWA+0x8], eax
	mov eax, [g_swizzleYZWA__uint4+0xc]
	mov [g_swizzleYZWA+0xc], eax
	mov eax, [g_swizzleXXXX__uint4]
	mov [g_swizzleXXXX], eax
	mov eax, [g_swizzleXXXX__uint4+0x4]
	mov [g_swizzleXXXX+0x4], eax
	mov eax, [g_swizzleXXXX__uint4+0x8]
	mov [g_swizzleXXXX+0x8], eax
	mov eax, [g_swizzleXXXX__uint4+0xc]
	mov [g_swizzleXXXX+0xc], eax
	mov eax, [g_swizzleYYYY__uint4]
	mov [g_swizzleYYYY], eax
	mov eax, [g_swizzleYYYY__uint4+0x4]
	mov [g_swizzleYYYY+0x4], eax
	mov eax, [g_swizzleYYYY__uint4+0x8]
	mov [g_swizzleYYYY+0x8], eax
	mov eax, [g_swizzleYYYY__uint4+0xc]
	mov [g_swizzleYYYY+0xc], eax
	mov eax, [g_swizzleZZZZ__uint4]
	mov [g_swizzleZZZZ], eax
	mov eax, [g_swizzleZZZZ__uint4+0x4]
	mov [g_swizzleZZZZ+0x4], eax
	mov eax, [g_swizzleZZZZ__uint4+0x8]
	mov [g_swizzleZZZZ+0x8], eax
	mov eax, [g_swizzleZZZZ__uint4+0xc]
	mov [g_swizzleZZZZ+0xc], eax
	mov eax, [g_swizzleWWWW__uint4]
	mov [g_swizzleWWWW], eax
	mov eax, [g_swizzleWWWW__uint4+0x4]
	mov [g_swizzleWWWW+0x4], eax
	mov eax, [g_swizzleWWWW__uint4+0x8]
	mov [g_swizzleWWWW+0x8], eax
	mov eax, [g_swizzleWWWW__uint4+0xc]
	mov [g_swizzleWWWW+0xc], eax
	mov eax, [g_selectX__uint4]
	mov [g_selectX], eax
	mov eax, [g_selectX__uint4+0x4]
	mov [g_selectX+0x4], eax
	mov eax, [g_selectX__uint4+0x8]
	mov [g_selectX+0x8], eax
	mov eax, [g_selectX__uint4+0xc]
	mov [g_selectX+0xc], eax
	mov eax, [g_selectY__uint4]
	mov [g_selectY], eax
	mov eax, [g_selectY__uint4+0x4]
	mov [g_selectY+0x4], eax
	mov eax, [g_selectY__uint4+0x8]
	mov [g_selectY+0x8], eax
	mov eax, [g_selectY__uint4+0xc]
	mov [g_selectY+0xc], eax
	mov eax, [g_selectZ__uint4]
	mov [g_selectZ], eax
	mov eax, [g_selectZ__uint4+0x4]
	mov [g_selectZ+0x4], eax
	mov eax, [g_selectZ__uint4+0x8]
	mov [g_selectZ+0x8], eax
	mov eax, [g_selectZ__uint4+0xc]
	mov [g_selectZ+0xc], eax
	mov eax, [g_selectW__uint4]
	mov [g_selectW], eax
	mov eax, [g_selectW__uint4+0x4]
	mov [g_selectW+0x4], eax
	mov eax, [g_selectW__uint4+0x8]
	mov [g_selectW+0x8], eax
	mov eax, [g_selectW__uint4+0xc]
	mov [g_selectW+0xc], eax
	mov eax, [g_keepYZW__uint4]
	mov [g_keepYZW], eax
	mov eax, [g_keepYZW__uint4+0x4]
	mov [g_keepYZW+0x4], eax
	mov eax, [g_keepYZW__uint4+0x8]
	mov [g_keepYZW+0x8], eax
	mov eax, [g_keepYZW__uint4+0xc]
	mov [g_keepYZW+0xc], eax
	mov eax, [g_keepXZW__uint4]
	mov [g_keepXZW], eax
	mov eax, [g_keepXZW__uint4+0x4]
	mov [g_keepXZW+0x4], eax
	mov eax, [g_keepXZW__uint4+0x8]
	mov [g_keepXZW+0x8], eax
	mov eax, [g_keepXZW__uint4+0xc]
	mov [g_keepXZW+0xc], eax
	mov eax, [g_keepXYW__uint4]
	mov [g_keepXYW], eax
	mov eax, [g_keepXYW__uint4+0x4]
	mov [g_keepXYW+0x4], eax
	mov eax, [g_keepXYW__uint4+0x8]
	mov [g_keepXYW+0x8], eax
	mov eax, [g_keepXYW__uint4+0xc]
	mov [g_keepXYW+0xc], eax
	mov eax, [g_keepXYZ__uint4]
	mov [g_keepXYZ], eax
	mov eax, [g_keepXYZ__uint4+0x4]
	mov [g_keepXYZ+0x4], eax
	mov eax, [g_keepXYZ__uint4+0x8]
	mov [g_keepXYZ+0x8], eax
	mov eax, [g_keepXYZ__uint4+0xc]
	mov [g_keepXYZ+0xc], eax
	mov eax, [g_keepXY__uint4]
	mov [g_keepXY], eax
	mov eax, [g_keepXY__uint4+0x4]
	mov [g_keepXY+0x4], eax
	mov eax, [g_keepXY__uint4+0x8]
	mov [g_keepXY+0x8], eax
	mov eax, [g_keepXY__uint4+0xc]
	mov [g_keepXY+0xc], eax
	mov eax, [g_keepZW__uint4]
	mov [g_keepZW], eax
	mov eax, [g_keepZW__uint4+0x4]
	mov [g_keepZW+0x4], eax
	mov eax, [g_keepZW__uint4+0x8]
	mov [g_keepZW+0x8], eax
	mov eax, [g_keepZW__uint4+0xc]
	mov [g_keepZW+0xc], eax
	mov eax, [g_keepX__uint4]
	mov [g_keepX], eax
	mov eax, [g_keepX__uint4+0x4]
	mov [g_keepX+0x4], eax
	mov eax, [g_keepX__uint4+0x8]
	mov [g_keepX+0x8], eax
	mov eax, [g_keepX__uint4+0xc]
	mov [g_keepX+0xc], eax
	mov eax, [g_keepZ__uint4]
	mov [g_keepZ], eax
	mov eax, [g_keepZ__uint4+0x4]
	mov [g_keepZ+0x4], eax
	mov eax, [g_keepZ__uint4+0x8]
	mov [g_keepZ+0x8], eax
	mov eax, [g_keepZ__uint4+0xc]
	mov [g_keepZ+0xc], eax
	pop ebp
	ret


;BulletTrace(int, BulletFireParams const*, WeaponDef const*, centity_s const*, BulletTraceResults*, int)
BulletTrace:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov ebx, edx
	mov dword [esp+0x8], 0x44
	mov dword [esp+0x4], 0x0
	mov eax, [ebp+0xc]
	mov [esp], eax
	call Com_Memset
	lea edi, [ebx+0x28]
	lea esi, [ebx+0x1c]
	mov dword [esp+0x10], 0x2806831
	mov eax, [ebx+0x4]
	mov [esp+0xc], eax
	mov [esp+0x8], edi
	mov [esp+0x4], esi
	mov edx, [ebp+0xc]
	mov [esp], edx
	call CG_LocationalTrace
	mov ebx, [ebp+0xc]
	mov eax, [ebx+0x1c]
	test eax, eax
	jnz BulletTrace_10
	xor eax, eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
BulletTrace_10:
	mov [esp], ebx
	call Trace_GetEntityHitId
	mov ecx, eax
	cmp ax, 0x3fe
	jz BulletTrace_20
	movzx eax, ax
	lea edx, [eax*4]
	shl eax, 0x5
	sub eax, edx
	mov edx, eax
	shl edx, 0x4
	lea edx, [eax+edx]
	add edx, cg_entitiesArray
BulletTrace_70:
	mov eax, [ebp+0xc]
	add eax, 0x30
	mov ebx, [ebp+0xc]
	movss xmm2, dword [ebx]
	movss xmm1, dword [esi]
	movss xmm0, dword [edi]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebx+0x30], xmm1
	movss xmm1, dword [esi+0x4]
	movss xmm0, dword [edi+0x4]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [eax+0x4], xmm1
	movss xmm1, dword [esi+0x8]
	movss xmm0, dword [edi+0x8]
	subss xmm0, xmm1
	mulss xmm2, xmm0
	addss xmm1, xmm2
	movss [eax+0x8], xmm1
	test edx, edx
	jz BulletTrace_30
	mov eax, [edx+0xd0]
	sub eax, 0x1
	cmp eax, 0x1
	jbe BulletTrace_40
BulletTrace_80:
	movzx eax, cx
	mov edx, [ebp+0x8]
	cmp eax, [edx+0xcc]
	mov ebx, [ebp+0xc]
	setz byte [ebx+0x3c]
BulletTrace_30:
	mov edx, [ebp+0xc]
	mov eax, [edx+0x10]
	mov edx, eax
	and edx, 0x1f00000
	mov ecx, edx
	shr ecx, 0x14
	movzx edx, cl
	mov ebx, [ebp+0xc]
	mov [ebx+0x40], edx
	test ah, 0x1
	jz BulletTrace_50
	mov dword [ebx+0x40], 0x0
	mov eax, 0x1
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
BulletTrace_50:
	test cl, cl
	jnz BulletTrace_60
	mov ebx, [ebp+0x10]
	test ebx, ebx
	jz BulletTrace_60
	mov edx, [ebp+0x10]
	mov eax, [ebp+0xc]
	mov [eax+0x40], edx
	mov eax, 0x1
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
BulletTrace_60:
	mov eax, 0x1
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
BulletTrace_20:
	xor edx, edx
	jmp BulletTrace_70
BulletTrace_40:
	mov esi, [ebx+0x10]
	test esi, esi
	jnz BulletTrace_80
	mov dword [ebx+0x10], 0x700000
	jmp BulletTrace_80
	nop


;ChangeViewmodelDobj(int, int, unsigned char, XModel*, XModel*, XModel*, XModel*, unsigned char)
ChangeViewmodelDobj:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov [ebp-0x48], eax
	mov ebx, edx
	mov [ebp-0x4c], ecx
	movzx edi, byte [ebp-0x4c]
	movzx eax, byte [ebp+0x18]
	mov [ebp-0x4d], al
	test edx, edx
	jnz ChangeViewmodelDobj_10
ChangeViewmodelDobj_20:
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ChangeViewmodelDobj_10:
	mov eax, edx
	shl eax, 0x6
	lea esi, [eax+edx*4]
	add esi, cg_weaponsArray
	mov [esp], edx
	call BG_GetWeaponDef
	mov [ebp-0x44], eax
	and edi, 0xff
	mov eax, [eax+edi*4+0xc]
	test eax, eax
	jz ChangeViewmodelDobj_20
	mov edx, [ebp+0x8]
	mov [esi+0x4], edx
	mov eax, [ebp+0xc]
	mov [esi+0x8], eax
	mov edx, [ebp+0x10]
	mov [esi+0xc], edx
	mov eax, [ebp+0x14]
	mov [esi+0x10], eax
	movzx edx, byte [ebp-0x4c]
	mov [esi+0x14], dl
	add ebx, 0x400
	mov [ebp-0x3c], ebx
	mov eax, [esi]
	test eax, eax
	jz ChangeViewmodelDobj_30
	mov [esp], eax
	call DObjGetTree
	mov [ebp-0x40], eax
	mov eax, [ebp-0x48]
	mov [esp+0x4], eax
	mov edx, [ebp-0x3c]
	mov [esp], edx
	call Com_SafeClientDObjFree
ChangeViewmodelDobj_100:
	mov word [ebp-0x34], 0x0
	mov byte [ebp-0x32], 0x0
	mov eax, [esi+0x4]
	mov [ebp-0x38], eax
	mov ebx, scr_const
	movzx eax, word [ebx+0xa6]
	mov [ebp-0x2c], ax
	mov byte [ebp-0x2a], 0x0
	mov edx, [ebp-0x44]
	mov eax, [edx+edi*4+0xc]
	mov [ebp-0x30], eax
	mov edx, [esi+0x8]
	test edx, edx
	jz ChangeViewmodelDobj_40
	mov eax, overrideNVGModelWithKnife
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz ChangeViewmodelDobj_50
	movzx eax, word [ebx+0xb0]
	mov [ebp-0x24], ax
ChangeViewmodelDobj_80:
	mov [ebp-0x28], edx
	mov byte [ebp-0x22], 0x0
	mov edx, 0x3
ChangeViewmodelDobj_90:
	mov ecx, [esi+0xc]
	test ecx, ecx
	jz ChangeViewmodelDobj_60
	movzx eax, word [ebx+0x8e]
	mov [ebp+edx*8-0x34], ax
	mov byte [ebp+edx*8-0x32], 0x0
	mov [ebp+edx*8-0x38], ecx
	add edx, 0x1
ChangeViewmodelDobj_60:
	mov ecx, [esi+0x10]
	test ecx, ecx
	jz ChangeViewmodelDobj_70
	movzx eax, word [ebx+0x9e]
	mov [ebp+edx*8-0x34], ax
	mov byte [ebp+edx*8-0x32], 0x0
	mov [ebp+edx*8-0x38], ecx
	add edx, 0x1
ChangeViewmodelDobj_70:
	mov eax, [ebp-0x48]
	mov [esp+0x10], eax
	mov eax, [ebp-0x3c]
	mov [esp+0xc], eax
	mov eax, [ebp-0x40]
	mov [esp+0x8], eax
	movzx eax, dx
	mov [esp+0x4], eax
	lea eax, [ebp-0x38]
	mov [esp], eax
	call Com_ClientDObjCreate
	mov [esi], eax
	lea edx, [esi+0x18]
	mov [esp+0x4], edx
	mov [esp], eax
	call DObjSetHidePartBits
	cmp byte [ebp-0x4d], 0x0
	jz ChangeViewmodelDobj_20
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x3d4ccccd
	mov eax, [esi]
	mov [esp], eax
	call DObjUpdateClientInfo
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ChangeViewmodelDobj_50:
	movzx eax, word [ebx+0xae]
	mov [ebp-0x24], ax
	jmp ChangeViewmodelDobj_80
ChangeViewmodelDobj_40:
	mov dl, 0x2
	jmp ChangeViewmodelDobj_90
ChangeViewmodelDobj_30:
	mov eax, [ebp-0x44]
	call CG_CreateWeaponViewModelXAnim
	mov [ebp-0x40], eax
	mov [esi+0x2c], eax
	jmp ChangeViewmodelDobj_100


;StartWeaponAnim(int, int, DObj_s*, int, float)
StartWeaponAnim:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov ebx, edx
	mov edi, ecx
	mov esi, [ebp+0x8]
	movss [ebp-0x20], xmm0
	mov eax, edx
	shl eax, 0x6
	lea edx, [eax+edx*4]
	mov eax, cg_weaponsArray
	mov eax, [eax+edx+0x2c]
	mov [esp], eax
	call XAnimGetAnims
	mov [ebp-0x1c], eax
	mov [esp], ebx
	call BG_GetWeaponDef
	mov edx, eax
	mov eax, [esi*4+g_animRateOffsets]
	test eax, eax
	js StartWeaponAnim_10
	mov ebx, [edx+eax]
	pxor xmm1, xmm1
	test ebx, ebx
	jnz StartWeaponAnim_20
StartWeaponAnim_120:
	mov edx, cgArray
	mov eax, [edx+0x46228]
	cmp eax, 0x7
	jz StartWeaponAnim_30
	cmp eax, 0x9
	jz StartWeaponAnim_30
	cmp eax, 0xb
	jz StartWeaponAnim_30
	cmp eax, 0xa
	jz StartWeaponAnim_30
	cmp eax, 0x8
	jz StartWeaponAnim_30
StartWeaponAnim_80:
	cmp eax, 0x6
	jz StartWeaponAnim_40
StartWeaponAnim_100:
	mov ebx, 0x1
	jmp StartWeaponAnim_50
StartWeaponAnim_70:
	mov dword [esp+0x1c], 0x0
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x3f800000
	movss xmm0, dword [ebp-0x20]
	movss [esp+0xc], xmm0
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], ebx
	mov [esp], edi
	movss [ebp-0x38], xmm1
	call XAnimSetGoalWeight
	movss xmm1, dword [ebp-0x38]
	add ebx, 0x1
	cmp ebx, 0x1f
	jz StartWeaponAnim_60
StartWeaponAnim_50:
	cmp esi, ebx
	jnz StartWeaponAnim_70
	mov dword [esp+0x1c], 0x1
	mov dword [esp+0x18], 0x1
	mov dword [esp+0x14], 0x0
	movss [esp+0x10], xmm1
	movss xmm0, dword [ebp-0x20]
	movss [esp+0xc], xmm0
	mov dword [esp+0x8], 0x3f800000
	mov [esp+0x4], ebx
	mov [esp], edi
	movss [ebp-0x38], xmm1
	call XAnimSetGoalWeight
	movss xmm1, dword [ebp-0x38]
	add ebx, 0x1
	cmp ebx, 0x1f
	jnz StartWeaponAnim_50
StartWeaponAnim_60:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
StartWeaponAnim_30:
	test byte [edx+0x46738], 0x4
	jz StartWeaponAnim_80
	mov eax, perk_weapReloadMultiplier
	mov eax, [eax]
	movss xmm0, dword [eax+0xc]
	ucomiss xmm0, [_float_0_00000000]
	jnz StartWeaponAnim_90
StartWeaponAnim_110:
	jp StartWeaponAnim_90
	movss xmm1, dword [_float_1000_00000000]
	jmp StartWeaponAnim_100
StartWeaponAnim_40:
	test byte [edx+0x46738], 0x8
	jz StartWeaponAnim_100
	mov eax, perk_weapRateMultiplier
	mov eax, [eax]
	movss xmm0, dword [eax+0xc]
	ucomiss xmm0, [_float_0_00000000]
	jz StartWeaponAnim_110
StartWeaponAnim_90:
	divss xmm1, xmm0
	jmp StartWeaponAnim_100
StartWeaponAnim_20:
	mov [esp+0x4], esi
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call XAnimGetLengthMsec
	cvtsi2ss xmm1, eax
	cvtsi2ss xmm0, ebx
	divss xmm1, xmm0
	jmp StartWeaponAnim_120
StartWeaponAnim_10:
	movss xmm1, dword [_float_1_00000000]
	jmp StartWeaponAnim_120
	nop


;CalculateWeaponPosition_BasePosition_movement(cg_s*, float*)
CalculateWeaponPosition_BasePosition_movement:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov esi, [ebp+0x8]
	add esi, 0x4613c
	mov eax, [ebp+0x8]
	add eax, 0x4927c
	mov [ebp-0x30], eax
	mov [esp], esi
	call BG_GetViewmodelWeaponIndex
	mov [esp], eax
	call BG_GetWeaponDef
	mov edi, eax
	mov edx, [ebp+0x8]
	mov ecx, [edx+0x49174]
	mov eax, ecx
	shr eax, 0x3
	mov edx, eax
	and dl, 0x1
	mov [ebp-0x35], dl
	jz CalculateWeaponPosition_BasePosition_movement_10
	mov eax, cg_gun_move_minspeed
	mov eax, [eax]
	movss xmm2, dword [edi+0x2a4]
	addss xmm2, [eax+0xc]
CalculateWeaponPosition_BasePosition_movement_220:
	mov eax, [ebp+0x8]
	movss xmm0, dword [eax+0x5040c]
	ucomiss xmm0, xmm2
	seta dl
	mov eax, [esi+0xec]
	mov [ebp-0x34], eax
	sub eax, 0x19
	cmp eax, 0x1
	setbe byte [ebp-0x2a]
	mov ebx, [esi+0x114]
	cmp ebx, 0xb
	setz byte [ebp-0x29]
	test dl, dl
	jz CalculateWeaponPosition_BasePosition_movement_20
	cmp dword [ebp-0x34], 0x7
	jz CalculateWeaponPosition_BasePosition_movement_20
	cmp byte [ebp-0x2a], 0x0
	jnz CalculateWeaponPosition_BasePosition_movement_20
	movaps xmm3, xmm0
	subss xmm3, xmm2
	cvtsi2ss xmm0, dword [esi+0x60]
	subss xmm0, xmm2
	divss xmm3, xmm0
	movss xmm2, dword [_float_1_00000000]
	movaps xmm0, xmm3
	subss xmm0, xmm2
	pxor xmm1, xmm1
	cmpss xmm1, xmm0, 0x6
	movaps xmm0, xmm1
	movaps xmm1, xmm3
	andps xmm1, xmm0
	movaps xmm3, xmm0
	andnps xmm3, xmm2
	orps xmm3, xmm1
	cmp byte [ebp-0x35], 0x0
	jz CalculateWeaponPosition_BasePosition_movement_30
	lea eax, [edi+0x27c]
	movaps xmm0, xmm3
	mulss xmm0, [edi+0x27c]
CalculateWeaponPosition_BasePosition_movement_280:
	movss [ebp-0x24], xmm0
	movaps xmm0, xmm3
	mulss xmm0, [eax+0x4]
	movss [ebp-0x20], xmm0
	movaps xmm0, xmm3
	mulss xmm0, [eax+0x8]
	movss [ebp-0x1c], xmm0
	mov eax, cg_gun_move_f
	mov eax, [eax]
	movaps xmm0, xmm3
	mulss xmm0, [eax+0xc]
	addss xmm0, [ebp-0x24]
	movss [ebp-0x24], xmm0
	mov eax, cg_gun_move_r
	mov eax, [eax]
	movaps xmm0, xmm3
	mulss xmm0, [eax+0xc]
	addss xmm0, [ebp-0x20]
	movss [ebp-0x20], xmm0
	mov eax, cg_gun_move_u
	mov eax, [eax]
	mulss xmm3, [eax+0xc]
	addss xmm3, [ebp-0x1c]
	movss [ebp-0x1c], xmm3
CalculateWeaponPosition_BasePosition_movement_140:
	cmp ebx, 0x28
	jz CalculateWeaponPosition_BasePosition_movement_40
CalculateWeaponPosition_BasePosition_movement_160:
	cmp byte [ebp-0x29], 0x0
	jnz CalculateWeaponPosition_BasePosition_movement_40
CalculateWeaponPosition_BasePosition_movement_150:
	mov edx, [ebp-0x30]
	mov ecx, 0x1
	movss xmm7, dword [_float_11_00000000]
	movss xmm6, dword [_float_0_00100000]
CalculateWeaponPosition_BasePosition_movement_100:
	lea ebx, [edx+0x18]
	movss xmm3, dword [edx+0x18]
	movss xmm2, dword [ebp+ecx*4-0x28]
	ucomiss xmm3, xmm2
	jp CalculateWeaponPosition_BasePosition_movement_50
	jz CalculateWeaponPosition_BasePosition_movement_60
CalculateWeaponPosition_BasePosition_movement_50:
	movss xmm0, dword [esi+0x118]
	ucomiss xmm0, xmm7
	jnz CalculateWeaponPosition_BasePosition_movement_70
	jp CalculateWeaponPosition_BasePosition_movement_70
	mov eax, [ebp+0x8]
	cvtsi2ss xmm4, dword [eax+0x46124]
	movaps xmm5, xmm6
	movaps xmm1, xmm4
	mulss xmm1, xmm6
	movaps xmm0, xmm2
	subss xmm0, xmm3
	mulss xmm1, xmm0
	mov eax, cg_gun_move_rate
	mov eax, [eax]
	mov [ebp-0x3c], eax
	movss xmm0, dword [edi+0x298]
	addss xmm0, [eax+0xc]
	mulss xmm1, xmm0
CalculateWeaponPosition_BasePosition_movement_200:
	ucomiss xmm2, xmm3
	jbe CalculateWeaponPosition_BasePosition_movement_80
	movaps xmm0, xmm4
	mulss xmm0, xmm5
	mulss xmm0, [_float_0_10000000]
	maxss xmm0, xmm1
	addss xmm0, xmm3
	movss [ebx], xmm0
	ucomiss xmm0, xmm2
	ja CalculateWeaponPosition_BasePosition_movement_90
CalculateWeaponPosition_BasePosition_movement_60:
	add ecx, 0x1
	add edx, 0x4
	cmp ecx, 0x4
	jnz CalculateWeaponPosition_BasePosition_movement_100
CalculateWeaponPosition_BasePosition_movement_190:
	movss xmm1, dword [esi+0xf4]
	pxor xmm0, xmm0
	ucomiss xmm1, xmm0
	jp CalculateWeaponPosition_BasePosition_movement_110
	jz CalculateWeaponPosition_BasePosition_movement_120
CalculateWeaponPosition_BasePosition_movement_110:
	ucomiss xmm1, [_float_0_50000000]
	jae CalculateWeaponPosition_BasePosition_movement_130
	jp CalculateWeaponPosition_BasePosition_movement_130
	mulss xmm1, [_float__2_00000000]
	addss xmm1, [_float_1_00000000]
	mov eax, [ebp-0x30]
	add eax, 0x18
	movaps xmm0, xmm1
	mov edx, [ebp-0x30]
	mulss xmm0, [edx+0x18]
	mov edx, [ebp+0xc]
	addss xmm0, [edx]
	movss [edx], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [eax+0x4]
	addss xmm0, [edx+0x4]
	movss [edx+0x4], xmm0
	mulss xmm1, [eax+0x8]
	addss xmm1, [edx+0x8]
	movss [edx+0x8], xmm1
CalculateWeaponPosition_BasePosition_movement_130:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CalculateWeaponPosition_BasePosition_movement_20:
	mov dword [ebp-0x24], 0x0
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
	test dl, dl
	jz CalculateWeaponPosition_BasePosition_movement_140
	cmp byte [ebp-0x2a], 0x0
	jz CalculateWeaponPosition_BasePosition_movement_140
	cmp byte [ebp-0x29], 0x0
	jnz CalculateWeaponPosition_BasePosition_movement_150
	cmp ebx, 0x28
	jnz CalculateWeaponPosition_BasePosition_movement_160
CalculateWeaponPosition_BasePosition_movement_40:
	cmp byte [ebp-0x2a], 0x0
	jnz CalculateWeaponPosition_BasePosition_movement_170
CalculateWeaponPosition_BasePosition_movement_230:
	movss xmm2, dword [_float_1_00000000]
CalculateWeaponPosition_BasePosition_movement_250:
	cmp ebx, 0x28
	jz CalculateWeaponPosition_BasePosition_movement_180
	cmp ebx, 0xb
	jnz CalculateWeaponPosition_BasePosition_movement_150
	lea eax, [edi+0x270]
	movaps xmm0, xmm2
	mulss xmm0, [edi+0x270]
CalculateWeaponPosition_BasePosition_movement_260:
	addss xmm0, [ebp-0x24]
	movss [ebp-0x24], xmm0
	movaps xmm1, xmm2
	mulss xmm1, [eax+0x4]
	addss xmm1, [ebp-0x20]
	movss [ebp-0x20], xmm1
	mulss xmm2, [eax+0x8]
	addss xmm2, [ebp-0x1c]
	movss [ebp-0x1c], xmm2
	mov eax, cg_gun_ofs_f
	mov eax, [eax]
	addss xmm0, [eax+0xc]
	movss [ebp-0x24], xmm0
	mov eax, cg_gun_ofs_r
	mov eax, [eax]
	addss xmm1, [eax+0xc]
	movss [ebp-0x20], xmm1
	mov eax, cg_gun_ofs_u
	mov eax, [eax]
	addss xmm2, [eax+0xc]
	movss [ebp-0x1c], xmm2
	jmp CalculateWeaponPosition_BasePosition_movement_150
CalculateWeaponPosition_BasePosition_movement_80:
	movaps xmm0, xmm4
	mulss xmm0, xmm5
	mulss xmm0, [_float__0_10000000]
	minss xmm0, xmm1
	addss xmm0, xmm3
	maxss xmm2, xmm0
CalculateWeaponPosition_BasePosition_movement_90:
	movss [ebx], xmm2
	add ecx, 0x1
	add edx, 0x4
	cmp ecx, 0x4
	jnz CalculateWeaponPosition_BasePosition_movement_100
	jmp CalculateWeaponPosition_BasePosition_movement_190
CalculateWeaponPosition_BasePosition_movement_70:
	mov eax, [ebp+0x8]
	cvtsi2ss xmm4, dword [eax+0x46124]
	movaps xmm5, xmm6
	movaps xmm1, xmm4
	mulss xmm1, xmm6
	movaps xmm0, xmm2
	subss xmm0, xmm3
	mulss xmm1, xmm0
	mov eax, cg_gun_move_rate
	mov eax, [eax]
	mov [ebp-0x40], eax
	movss xmm0, dword [edi+0x294]
	addss xmm0, [eax+0xc]
	mulss xmm1, xmm0
	jmp CalculateWeaponPosition_BasePosition_movement_200
CalculateWeaponPosition_BasePosition_movement_10:
	test cl, 0x4
	jnz CalculateWeaponPosition_BasePosition_movement_210
	mov eax, cg_gun_move_minspeed
	mov eax, [eax]
	movss xmm2, dword [edi+0x29c]
	addss xmm2, [eax+0xc]
	jmp CalculateWeaponPosition_BasePosition_movement_220
CalculateWeaponPosition_BasePosition_movement_120:
	mov eax, [ebp-0x30]
	add eax, 0x18
	mov edx, [ebp+0xc]
	movss xmm0, dword [edx]
	mov edx, [ebp-0x30]
	addss xmm0, [edx+0x18]
	mov edx, [ebp+0xc]
	movss [edx], xmm0
	movss xmm0, dword [edx+0x4]
	addss xmm0, [eax+0x4]
	movss [edx+0x4], xmm0
	movss xmm0, dword [edx+0x8]
	addss xmm0, [eax+0x8]
	movss [edx+0x8], xmm0
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CalculateWeaponPosition_BasePosition_movement_170:
	cvtsi2ss xmm1, dword [esi+0x3c]
	cvtsi2ss xmm0, dword [edi+0x3d4]
	divss xmm1, xmm0
	movss xmm0, dword [_ZZ45CalculateWeaponPosition_BasePosition_movementP4cg_sPfE10MYLERP_END]
	ucomiss xmm0, xmm1
	ja CalculateWeaponPosition_BasePosition_movement_230
	movss xmm2, dword [_ZZ45CalculateWeaponPosition_BasePosition_movementP4cg_sPfE12MYLERP_START]
	ucomiss xmm2, xmm1
	ja CalculateWeaponPosition_BasePosition_movement_240
	pxor xmm2, xmm2
	jmp CalculateWeaponPosition_BasePosition_movement_250
CalculateWeaponPosition_BasePosition_movement_210:
	mov eax, cg_gun_move_minspeed
	mov eax, [eax]
	movss xmm2, dword [edi+0x2a0]
	addss xmm2, [eax+0xc]
	jmp CalculateWeaponPosition_BasePosition_movement_220
CalculateWeaponPosition_BasePosition_movement_180:
	lea eax, [edi+0x24c]
	movaps xmm0, xmm2
	mulss xmm0, [edi+0x24c]
	jmp CalculateWeaponPosition_BasePosition_movement_260
CalculateWeaponPosition_BasePosition_movement_30:
	and cl, 0x4
	jnz CalculateWeaponPosition_BasePosition_movement_270
	lea eax, [edi+0x234]
	movaps xmm0, xmm3
	mulss xmm0, [edi+0x234]
	jmp CalculateWeaponPosition_BasePosition_movement_280
CalculateWeaponPosition_BasePosition_movement_240:
	subss xmm1, xmm0
	subss xmm2, xmm0
	divss xmm1, xmm2
	movss xmm2, dword [_float_1_00000000]
	subss xmm2, xmm1
	jmp CalculateWeaponPosition_BasePosition_movement_250
CalculateWeaponPosition_BasePosition_movement_270:
	lea eax, [edi+0x258]
	movaps xmm0, xmm3
	mulss xmm0, [edi+0x258]
	jmp CalculateWeaponPosition_BasePosition_movement_280
	nop


;NextWeapInCycle(int, playerState_s const*, weapInventoryType_t, unsigned int, unsigned char, unsigned char, unsigned char)
NextWeapInCycle:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov [ebp-0x20], edx
	mov [ebp-0x24], ecx
	movzx ebx, byte [ebp+0xc]
	movzx eax, byte [ebp+0x10]
	mov [ebp-0x25], al
	movzx edx, byte [ebp+0x14]
	mov [ebp-0x26], dl
	call BG_GetNumWeapons
	cmp eax, 0x1
	jbe NextWeapInCycle_10
	call BG_GetNumWeapons
	lea esi, [eax-0x1]
	cmp bl, 0x1
	sbb eax, eax
	or eax, 0x1
	mov [ebp-0x1c], eax
	mov ebx, 0x1
	mov edx, [ebp+0x8]
	test edx, edx
	cmovnz ebx, [ebp+0x8]
	mov [ebp+0x8], ebx
	mov edx, eax
	lea eax, [ebx+edx]
	lea eax, [esi+eax-0x1]
	xor edx, edx
	div esi
	lea ebx, [edx+0x1]
	cmp [ebp+0x8], ebx
	jz NextWeapInCycle_10
NextWeapInCycle_30:
	mov [esp], ebx
	call BG_GetWeaponDef
	mov edi, eax
	mov eax, [ebp-0x24]
	cmp [edi+0x13c], eax
	jz NextWeapInCycle_20
NextWeapInCycle_40:
	mov edx, [ebp-0x1c]
NextWeapInCycle_70:
	lea eax, [ebx+edx]
	lea eax, [esi+eax-0x1]
	xor edx, edx
	div esi
	lea ebx, [edx+0x1]
	cmp [ebp+0x8], ebx
	jnz NextWeapInCycle_30
NextWeapInCycle_10:
	xor ebx, ebx
NextWeapInCycle_60:
	mov eax, ebx
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
NextWeapInCycle_20:
	mov eax, ebx
	sar eax, 0x5
	mov ecx, ebx
	and ecx, 0x1f
	mov edx, 0x1
	shl edx, cl
	mov ecx, edx
	mov edx, [ebp-0x20]
	test [edx+eax*4+0x55c], ecx
	jz NextWeapInCycle_40
	cmp byte [ebp-0x25], 0x0
	jnz NextWeapInCycle_50
NextWeapInCycle_80:
	cmp byte [ebp-0x26], 0x0
	jz NextWeapInCycle_60
	mov eax, [edi+0x540]
	test eax, eax
	jnz NextWeapInCycle_60
	mov edx, [ebp-0x1c]
	jmp NextWeapInCycle_70
NextWeapInCycle_50:
	mov [esp+0x4], ebx
	mov [esp], edx
	call BG_WeaponAmmo
	test eax, eax
	jnz NextWeapInCycle_80
	mov edx, [ebp-0x1c]
	jmp NextWeapInCycle_70


;CycleWeapPrimary(int, int, int)
CycleWeapPrimary:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov [ebp-0x20], eax
	mov edi, edx
	mov [ebp-0x24], ecx
	mov ebx, cgArray
	mov eax, [ebx+0x24]
	test eax, eax
	jz CycleWeapPrimary_10
	test byte [eax+0x20], 0x4
	jz CycleWeapPrimary_10
	cmp dword [ebx+0x46140], 0x6
	jle CycleWeapPrimary_20
CycleWeapPrimary_10:
	xor eax, eax
CycleWeapPrimary_90:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CycleWeapPrimary_20:
	mov eax, [ebx+0x5036c]
	mov [ebp-0x1c], eax
	mov [esp], eax
	call BG_GetWeaponDef
	mov esi, eax
	call BG_GetNumWeapons
	cmp eax, 0x1
	jbe CycleWeapPrimary_10
	mov eax, [esi+0x13c]
	cmp eax, 0x3
	jz CycleWeapPrimary_30
	test eax, eax
	jz CycleWeapPrimary_40
	mov esi, [ebx+0x50374]
	test esi, esi
	jz CycleWeapPrimary_40
	mov edx, esi
	sar edx, 0x5
	mov ecx, esi
	and ecx, 0x1f
	mov eax, 0x1
	shl eax, cl
	test [ebx+edx*4+0x46698], eax
	jnz CycleWeapPrimary_50
CycleWeapPrimary_40:
	call BG_GetNumWeapons
	lea esi, [eax-0x1]
	cmp edi, 0x1
	sbb edi, edi
	or edi, 0x1
	mov ebx, 0x1
	mov eax, [ebp-0x1c]
	test eax, eax
	cmovnz ebx, [ebp-0x1c]
	mov [ebp-0x1c], ebx
CycleWeapPrimary_70:
	lea eax, [ebx+edi]
	lea eax, [esi+eax-0x1]
	xor edx, edx
	div esi
	lea ebx, [edx+0x1]
	cmp [ebp-0x1c], ebx
	jz CycleWeapPrimary_60
	mov edx, ebx
	sar edx, 0x5
	mov ecx, ebx
	and ecx, 0x1f
	mov eax, 0x1
	shl eax, cl
	mov ecx, cgArray
	test [ecx+edx*4+0x46698], eax
	jz CycleWeapPrimary_70
	mov eax, [ebp-0x24]
	test eax, eax
	jz CycleWeapPrimary_80
	mov [esp+0x4], ebx
	mov eax, ecx
	add eax, 0x4613c
	mov [esp], eax
	call BG_WeaponAmmo
	test eax, eax
	jz CycleWeapPrimary_70
CycleWeapPrimary_80:
	mov [esp], ebx
	call BG_GetWeaponDef
	mov eax, [eax+0x13c]
	cmp eax, 0x3
	jz CycleWeapPrimary_70
	cmp eax, 0x2
	jz CycleWeapPrimary_70
	sub eax, 0x1
	jz CycleWeapPrimary_70
	mov [esp+0x4], ebx
	mov eax, [ebp-0x20]
	mov [esp], eax
	call CG_SelectWeaponIndex
	mov eax, 0x1
	jmp CycleWeapPrimary_90
CycleWeapPrimary_30:
	mov edi, [esi+0x540]
	mov edx, edi
	sar edx, 0x5
	mov ecx, edi
	and ecx, 0x1f
	mov al, 0x1
	shl eax, cl
	test [ebx+edx*4+0x46698], eax
	jz CycleWeapPrimary_100
	mov [esp+0x4], edi
	mov ecx, [ebp-0x20]
	mov [esp], ecx
	call CG_SelectWeaponIndex
	mov eax, 0x1
	jmp CycleWeapPrimary_90
CycleWeapPrimary_60:
	mov eax, cgArray
	mov ecx, [eax+0x5036c]
	mov edx, ecx
	sar edx, 0x5
	and ecx, 0x1f
	mov eax, 0x1
	shl eax, cl
	mov ecx, cgArray
	test [ecx+edx*4+0x46698], eax
	jnz CycleWeapPrimary_10
	mov dword [esp+0x4], 0x0
	mov eax, [ebp-0x20]
	mov [esp], eax
	call CG_SelectWeaponIndex
	xor eax, eax
	jmp CycleWeapPrimary_90
CycleWeapPrimary_50:
	mov [esp+0x4], esi
	mov ecx, [ebp-0x20]
	mov [esp], ecx
	call CG_SelectWeaponIndex
	mov eax, 0x1
	jmp CycleWeapPrimary_90
CycleWeapPrimary_100:
	mov eax, [esi+0x53c]
	mov [esp+0xc], eax
	mov eax, [esi]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_player_is_holdin
	mov dword [esp], 0xe
	call Com_PrintError
	mov dword [esp+0x4], 0x0
	mov eax, [ebp-0x20]
	mov [esp], eax
	call CG_SelectWeaponIndex
	jmp CycleWeapPrimary_10
	nop


;CalcMuzzlePoint(int, int, float*, unsigned int)
CalcMuzzlePoint:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov [ebp-0x1c], eax
	mov esi, edx
	mov edi, ecx
	mov dword [esp], 0x0
	call CL_IsLocalClientActive
	test al, al
	jz CalcMuzzlePoint_10
	mov eax, cgArray
	mov edx, [eax+0x24]
	test byte [edx+0x20], 0x6
	jnz CalcMuzzlePoint_20
CalcMuzzlePoint_70:
	xor edx, edx
CalcMuzzlePoint_80:
	test edx, edx
	jnz CalcMuzzlePoint_30
CalcMuzzlePoint_10:
	lea edx, [esi*4]
	mov eax, esi
	shl eax, 0x5
	sub eax, edx
	mov edx, eax
	shl edx, 0x4
	lea ebx, [eax+edx]
	add ebx, cg_entitiesArray
	mov eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov eax, [ebx+0xcc]
	mov [esp], eax
	call Com_GetClientDObj
	test eax, eax
	jz CalcMuzzlePoint_40
	mov [esp+0xc], edi
	mov edx, [ebp+0x8]
	mov [esp+0x8], edx
	mov [esp+0x4], eax
	mov [esp], ebx
	call CG_DObjGetWorldTagPos
	test eax, eax
	jnz CalcMuzzlePoint_50
	lea edx, [ebx+0xe4]
	mov eax, [ebx+0xe4]
	mov [edi], eax
	mov eax, [edx+0x4]
	mov [edi+0x4], eax
	mov eax, [edx+0x8]
	mov [edi+0x8], eax
	cmp esi, 0x3f
	jle CalcMuzzlePoint_60
CalcMuzzlePoint_50:
	mov eax, 0x1
CalcMuzzlePoint_40:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CalcMuzzlePoint_20:
	cmp esi, [edx+0xe8]
	jnz CalcMuzzlePoint_70
	mov edx, 0x1
	jmp CalcMuzzlePoint_80
CalcMuzzlePoint_60:
	mov eax, [ebp+0x8]
	mov [esp], eax
	call SL_ConvertToString
	mov [esp+0xc], esi
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_no_s_in_calcmuzz
	mov dword [esp], 0x11
	call Com_DPrintf
	mov eax, [ebx+0xd4]
	test al, 0x8
	jnz CalcMuzzlePoint_90
	test al, 0x4
	jz CalcMuzzlePoint_100
	movss xmm0, dword [_float_40_00000000]
	addss xmm0, [edi+0x8]
	movss [edi+0x8], xmm0
	mov eax, 0x1
	jmp CalcMuzzlePoint_40
CalcMuzzlePoint_90:
	movss xmm0, dword [_float_11_00000000]
	addss xmm0, [edi+0x8]
	movss [edi+0x8], xmm0
	mov eax, 0x1
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CalcMuzzlePoint_100:
	movss xmm0, dword [_float_60_00000000]
	addss xmm0, [edi+0x8]
	movss [edi+0x8], xmm0
	mov eax, 0x1
	jmp CalcMuzzlePoint_40
CalcMuzzlePoint_30:
	lea edx, [eax+0x492e0]
	mov eax, [eax+0x492e0]
	mov [edi], eax
	mov eax, [edx+0x4]
	mov [edi+0x4], eax
	mov eax, [edx+0x8]
	mov [edi+0x8], eax
	mov eax, 0x1
	jmp CalcMuzzlePoint_40
	nop


;BulletTrajectoryEffects(int, int, float const*, float const*, int, unsigned int, unsigned char, int)
BulletTrajectoryEffects:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x7c
	mov esi, eax
	mov ebx, edx
	mov [ebp-0x5c], ecx
	mov edi, [ebp+0x8]
	movzx eax, byte [ebp+0x14]
	mov [ebp-0x5d], al
	mov eax, [ebp+0x10]
	mov [esp], eax
	lea ecx, [ebp-0x24]
	mov eax, esi
	call CalcMuzzlePoint
	test eax, eax
	jz BulletTrajectoryEffects_10
	mov eax, cg_tracerChance
	mov eax, [eax]
	pxor xmm0, xmm0
	ucomiss xmm0, [eax+0xc]
	jae BulletTrajectoryEffects_20
	mov edx, cgArray
	mov eax, [edx+0x24]
	test byte [eax+0x20], 0x6
	jnz BulletTrajectoryEffects_30
BulletTrajectoryEffects_90:
	xor eax, eax
BulletTrajectoryEffects_100:
	test eax, eax
	jnz BulletTrajectoryEffects_20
	test dword [edx+0x461ec], 0x300
	jz BulletTrajectoryEffects_40
	mov eax, [edx+0x466d4]
	test eax, eax
	jz BulletTrajectoryEffects_40
	mov eax, [edx+0x466d8]
	lea edx, [eax*4]
	shl eax, 0x5
	sub eax, edx
	mov edx, eax
	shl edx, 0x4
	add eax, edx
	mov edx, cg_entitiesArray
	mov eax, [edx+eax+0x190]
	test eax, eax
	jnz BulletTrajectoryEffects_50
BulletTrajectoryEffects_40:
	call ms_rand
	cvtsi2ss xmm1, eax
	mov eax, cg_tracerChance
	mov eax, [eax]
	movss xmm0, dword [_float_32768_00000000]
	mulss xmm0, [eax+0xc]
	ucomiss xmm1, xmm0
	jb BulletTrajectoryEffects_60
BulletTrajectoryEffects_20:
	movss xmm0, dword [edi]
	subss xmm0, [ebp-0x24]
	movss [ebp-0x30], xmm0
	movss xmm0, dword [edi+0x4]
	subss xmm0, [ebp-0x20]
	movss [ebp-0x2c], xmm0
	movss xmm0, dword [edi+0x8]
	subss xmm0, [ebp-0x1c]
	movss [ebp-0x28], xmm0
	lea eax, [ebp-0x3c]
	mov [esp+0x4], eax
	lea eax, [ebp-0x30]
	mov [esp], eax
	call Vec3NormalizeTo
	fstp st0
	movss xmm5, dword [ebp-0x3c]
	movss xmm3, dword [ebp-0x38]
	movss xmm4, dword [ebp-0x34]
	movaps xmm2, xmm5
	mulss xmm2, [ebp-0x30]
	movaps xmm0, xmm3
	mulss xmm0, [ebp-0x2c]
	addss xmm2, xmm0
	movaps xmm0, xmm4
	mulss xmm0, [ebp-0x28]
	addss xmm2, xmm0
	mov eax, cgArray
	movss xmm0, dword [eax+0x492e0]
	movss [ebp-0x58], xmm0
	movss xmm6, dword [ebp-0x24]
	movss xmm1, dword [eax+0x492e4]
	movss [ebp-0x54], xmm1
	movss xmm7, dword [ebp-0x20]
	movss xmm0, dword [eax+0x492e8]
	movss [ebp-0x50], xmm0
	movss xmm1, dword [ebp-0x1c]
	movss [ebp-0x4c], xmm1
	movss xmm1, dword [ebp-0x58]
	subss xmm1, xmm6
	mulss xmm1, xmm5
	movss xmm0, dword [ebp-0x54]
	subss xmm0, xmm7
	mulss xmm0, xmm3
	addss xmm1, xmm0
	movss xmm0, dword [ebp-0x50]
	subss xmm0, [ebp-0x4c]
	mulss xmm0, xmm4
	addss xmm1, xmm0
	movss xmm0, dword [_float_64_00000000]
	ucomiss xmm0, xmm1
	jbe BulletTrajectoryEffects_70
BulletTrajectoryEffects_80:
	test byte [ebp-0x5d], 0x4
	jnz BulletTrajectoryEffects_10
	mov eax, sv_clientSideBullets
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz BulletTrajectoryEffects_10
	mov dword [esp+0x14], 0x0
	mov eax, [ebp+0x18]
	mov [esp+0x10], eax
	mov [esp+0xc], edi
	mov eax, [ebp-0x5c]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov [esp], esi
	call DynEntCl_DynEntImpactEvent
BulletTrajectoryEffects_10:
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
BulletTrajectoryEffects_70:
	addss xmm0, xmm1
	ucomiss xmm0, xmm2
	ja BulletTrajectoryEffects_80
	movaps xmm0, xmm5
	mulss xmm0, xmm1
	addss xmm6, xmm0
	movss [ebp-0x64], xmm6
	movaps xmm0, xmm6
	movss [ebp-0x48], xmm6
	movaps xmm2, xmm3
	mulss xmm2, xmm1
	addss xmm2, xmm7
	movss [ebp-0x44], xmm2
	mulss xmm1, xmm4
	addss xmm1, [ebp-0x4c]
	movss [ebp-0x40], xmm1
	subss xmm0, [ebp-0x58]
	movss [ebp-0x30], xmm0
	subss xmm2, [ebp-0x54]
	movss [ebp-0x2c], xmm2
	subss xmm1, [ebp-0x50]
	movss [ebp-0x28], xmm1
	mulss xmm0, xmm0
	mulss xmm2, xmm2
	addss xmm0, xmm2
	mulss xmm1, xmm1
	addss xmm0, xmm1
	sqrtss xmm0, xmm0
	ucomiss xmm0, [_float_140_00000000]
	ja BulletTrajectoryEffects_80
	movss xmm0, dword [_float__16_00000000]
	mulss xmm5, xmm0
	addss xmm5, xmm6
	movss [ebp-0x48], xmm5
	mulss xmm3, xmm0
	addss xmm3, [ebp-0x44]
	movss [ebp-0x44], xmm3
	mulss xmm4, xmm0
	addss xmm4, [ebp-0x40]
	movss [ebp-0x40], xmm4
	mov eax, cgMedia
	mov eax, [eax+0x1034]
	mov [esp+0xc], eax
	lea eax, [ebp-0x48]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x3fe
	mov [esp], esi
	call CG_PlaySoundAlias
	jmp BulletTrajectoryEffects_80
BulletTrajectoryEffects_30:
	cmp ebx, [eax+0xe8]
	jnz BulletTrajectoryEffects_90
	mov eax, 0x1
	jmp BulletTrajectoryEffects_100
BulletTrajectoryEffects_50:
	mov [esp], eax
	call BG_GetWeaponDef
	mov eax, [eax+0x430]
	test eax, eax
	jz BulletTrajectoryEffects_40
	mov eax, cgArray
	cmp ebx, [eax+0x466d8]
	jnz BulletTrajectoryEffects_40
	jmp BulletTrajectoryEffects_20
BulletTrajectoryEffects_60:
	mov [esp+0x8], edi
	lea eax, [ebp-0x24]
	mov [esp+0x4], eax
	mov [esp], esi
	call CG_SpawnTracer
	jmp BulletTrajectoryEffects_20
	nop


;CG_BulletHitEvent_Internal(int, int, int, int, float const*, float const*, float const*, int, int, unsigned char, int, int)
CG_BulletHitEvent_Internal:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x7c
	mov edi, eax
	mov [ebp-0x54], edx
	mov [ebp-0x58], ecx
	mov esi, [ebp+0x14]
	movzx eax, byte [ebp+0x20]
	test byte [ebp+0x29], 0x8
	jz CG_BulletHitEvent_Internal_10
	movzx eax, al
	mov [ebp-0x50], eax
CG_BulletHitEvent_Internal_110:
	xor ecx, ecx
	xor ebx, ebx
CG_BulletHitEvent_Internal_200:
	test ecx, ecx
	jz CG_BulletHitEvent_Internal_20
	mov [esp+0xc], ecx
	mov edx, [ebp+0x10]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x3fe
	mov [esp], edi
	call CG_PlaySoundAlias
CG_BulletHitEvent_Internal_20:
	test ebx, ebx
	jz CG_BulletHitEvent_Internal_30
	movss xmm1, dword [esi]
	pxor xmm0, xmm0
	ucomiss xmm1, xmm0
	jp CG_BulletHitEvent_Internal_40
	jnz CG_BulletHitEvent_Internal_40
	lea eax, [esi+0x4]
	ucomiss xmm0, [esi+0x4]
	jp CG_BulletHitEvent_Internal_50
	jz CG_BulletHitEvent_Internal_60
CG_BulletHitEvent_Internal_50:
	lea edx, [esi+0x8]
CG_BulletHitEvent_Internal_80:
	movss [ebp-0x3c], xmm1
	lea esi, [ebp-0x3c]
	mov eax, [eax]
	mov [ebp-0x38], eax
	mov eax, [edx]
	mov [ebp-0x34], eax
	lea eax, [ebp-0x24]
	mov [esp+0x8], eax
	lea eax, [ebp-0x30]
	mov [esp+0x4], eax
	mov [esp], esi
	call CG_RandomEffectAxis
	mov eax, cg_marks_ents_player_only
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz CG_BulletHitEvent_Internal_70
	mov ecx, [ebp-0x58]
	mov edx, cgArray
CG_BulletHitEvent_Internal_100:
	mov [esp+0x14], ecx
	mov [esp+0x10], esi
	mov eax, [ebp+0x10]
	mov [esp+0xc], eax
	mov eax, [edx+0x46128]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov [esp], edi
	call FX_PlayOrientedEffectWithMarkEntity
CG_BulletHitEvent_Internal_30:
	mov eax, [ebp+0x24]
	mov [esp+0x10], eax
	mov edx, [ebp-0x50]
	mov [esp+0xc], edx
	mov eax, scr_const
	movzx eax, word [eax+0x90]
	mov [esp+0x8], eax
	mov ecx, [ebp+0x18]
	mov [esp+0x4], ecx
	mov ebx, [ebp+0x10]
	mov [esp], ebx
	mov ecx, [ebp+0xc]
	mov edx, [ebp-0x54]
	mov eax, edi
	call BulletTrajectoryEffects
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_BulletHitEvent_Internal_60:
	lea edx, [esi+0x8]
	ucomiss xmm0, [esi+0x8]
	jp CG_BulletHitEvent_Internal_80
	jnz CG_BulletHitEvent_Internal_80
	jmp CG_BulletHitEvent_Internal_30
CG_BulletHitEvent_Internal_70:
	mov edx, cgArray
	mov eax, [edx+0x24]
	test byte [eax+0x20], 0x6
	jnz CG_BulletHitEvent_Internal_90
CG_BulletHitEvent_Internal_120:
	xor eax, eax
CG_BulletHitEvent_Internal_130:
	mov ecx, 0x3ff
	test eax, eax
	cmovnz ecx, [ebp-0x58]
	jmp CG_BulletHitEvent_Internal_100
CG_BulletHitEvent_Internal_10:
	movzx eax, al
	mov [ebp-0x50], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call BG_GetWeaponDef
	mov edx, eax
	mov eax, [ebp-0x50]
	shr eax, 0x2
	mov ecx, eax
	and cl, 0x1
	cmp dword [edx+0x138], 0x8
	ja CG_BulletHitEvent_Internal_110
	mov eax, [edx+0x138]
	jmp dword [eax*4+CG_BulletHitEvent_Internal_jumptab_0]
CG_BulletHitEvent_Internal_40:
	lea eax, [esi+0x4]
	lea edx, [esi+0x8]
	jmp CG_BulletHitEvent_Internal_80
CG_BulletHitEvent_Internal_90:
	mov ecx, [ebp-0x54]
	cmp ecx, [eax+0xe8]
	jnz CG_BulletHitEvent_Internal_120
	mov eax, 0x1
	jmp CG_BulletHitEvent_Internal_130
CG_BulletHitEvent_Internal_260:
	test cl, cl
	jz CG_BulletHitEvent_Internal_140
	mov edx, [ebp+0x18]
	mov ebx, cgMedia
	mov ecx, [ebx+edx*4+0x520]
	mov eax, 0x1
	mov [ebp-0x4c], eax
	jmp CG_BulletHitEvent_Internal_150
CG_BulletHitEvent_Internal_270:
	test cl, cl
	jz CG_BulletHitEvent_Internal_160
	mov eax, [ebp+0x18]
	mov edx, cgMedia
	mov ecx, [edx+eax*4+0x594]
	mov eax, 0x3
	mov [ebp-0x4c], eax
	jmp CG_BulletHitEvent_Internal_150
CG_BulletHitEvent_Internal_280:
	test cl, cl
	jz CG_BulletHitEvent_Internal_170
	mov ebx, [ebp+0x18]
	mov eax, cgMedia
	mov ecx, [eax+ebx*4+0x608]
	mov eax, 0x7
	mov [ebp-0x4c], eax
	jmp CG_BulletHitEvent_Internal_150
CG_BulletHitEvent_Internal_300:
	mov eax, [edx+0x208]
	test eax, eax
	jz CG_BulletHitEvent_Internal_180
	mov edx, [ebp+0x18]
	mov ecx, [eax+edx*4]
CG_BulletHitEvent_Internal_250:
	mov dword [ebp-0x4c], 0x8
CG_BulletHitEvent_Internal_150:
	cmp dword [ebp+0x18], 0x7
	jz CG_BulletHitEvent_Internal_190
	mov edx, cgMedia
	mov eax, [edx+0x2754]
	mov edx, [eax+0x4]
	mov eax, [ebp-0x4c]
	shl eax, 0x7
	mov ebx, [ebp-0x4c]
	lea eax, [eax+ebx*4]
	mov ebx, [ebp+0x18]
	lea eax, [eax+ebx*4]
	mov ebx, [eax+edx]
CG_BulletHitEvent_Internal_230:
	test ebx, ebx
	jz CG_BulletHitEvent_Internal_200
	mov eax, cg_blood
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz CG_BulletHitEvent_Internal_200
	cmp dword [ebp+0x18], 0x7
	jnz CG_BulletHitEvent_Internal_200
	mov eax, cgMedia
	mov ebx, [eax+0x2758]
	jmp CG_BulletHitEvent_Internal_200
CG_BulletHitEvent_Internal_290:
	test cl, cl
	jz CG_BulletHitEvent_Internal_210
	mov edx, [ebp+0x18]
	mov ebx, cgMedia
	mov ecx, [ebx+edx*4+0x67c]
	mov eax, 0x5
	mov [ebp-0x4c], eax
	jmp CG_BulletHitEvent_Internal_150
CG_BulletHitEvent_Internal_320:
	mov edx, [ebp+0x18]
	mov ebx, cgMedia
	mov ecx, [ebx+edx*4+0x2dc]
	mov dword [ebp-0x4c], 0xa
	jmp CG_BulletHitEvent_Internal_150
CG_BulletHitEvent_Internal_310:
	mov ebx, [ebp+0x18]
	mov eax, cgMedia
	mov ecx, [eax+ebx*4+0x268]
	mov dword [ebp-0x4c], 0x9
	jmp CG_BulletHitEvent_Internal_150
CG_BulletHitEvent_Internal_330:
	mov ecx, [edx+0x59c]
	mov dword [ebp-0x4c], 0xb
	jmp CG_BulletHitEvent_Internal_150
CG_BulletHitEvent_Internal_190:
	test byte [ebp-0x50], 0x2
	jz CG_BulletHitEvent_Internal_220
	mov eax, [ebp-0x50]
	and eax, 0x1
	cmp eax, 0x1
	sbb ebx, ebx
	and ebx, 0xfffffffe
	add ebx, 0x3
CG_BulletHitEvent_Internal_240:
	mov eax, cgMedia
	mov eax, [eax+0x2754]
	mov [ebp-0x5c], eax
	mov eax, [ebp-0x4c]
	shl eax, 0x7
	mov edx, [ebp-0x4c]
	lea eax, [eax+edx*4]
	lea eax, [eax+ebx*4]
	mov ebx, [ebp-0x5c]
	add eax, [ebx+0x4]
	mov ebx, [eax+0x74]
	jmp CG_BulletHitEvent_Internal_230
CG_BulletHitEvent_Internal_220:
	mov ebx, [ebp-0x50]
	and ebx, 0x1
	neg ebx
	and ebx, 0x2
	jmp CG_BulletHitEvent_Internal_240
CG_BulletHitEvent_Internal_160:
	mov ebx, [ebp+0x18]
	mov eax, cgMedia
	mov ecx, [eax+ebx*4+0x3c4]
	mov eax, 0x2
	mov [ebp-0x4c], eax
	jmp CG_BulletHitEvent_Internal_150
CG_BulletHitEvent_Internal_170:
	mov edx, [ebp+0x18]
	mov ebx, cgMedia
	mov ecx, [ebx+edx*4+0x438]
	mov eax, 0x6
	mov [ebp-0x4c], eax
	jmp CG_BulletHitEvent_Internal_150
CG_BulletHitEvent_Internal_210:
	mov eax, [ebp+0x18]
	mov edx, cgMedia
	mov ecx, [edx+eax*4+0x4ac]
	mov eax, 0x4
	mov [ebp-0x4c], eax
	jmp CG_BulletHitEvent_Internal_150
CG_BulletHitEvent_Internal_140:
	mov eax, [ebp+0x18]
	mov edx, cgMedia
	mov ecx, [edx+eax*4+0x350]
	xor eax, eax
	mov [ebp-0x4c], eax
	jmp CG_BulletHitEvent_Internal_150
CG_BulletHitEvent_Internal_180:
	xor ecx, ecx
	jmp CG_BulletHitEvent_Internal_250
	nop
	
	
CG_BulletHitEvent_Internal_jumptab_0:
	dd CG_BulletHitEvent_Internal_110
	dd CG_BulletHitEvent_Internal_260
	dd CG_BulletHitEvent_Internal_270
	dd CG_BulletHitEvent_Internal_280
	dd CG_BulletHitEvent_Internal_290
	dd CG_BulletHitEvent_Internal_300
	dd CG_BulletHitEvent_Internal_310
	dd CG_BulletHitEvent_Internal_320
	dd CG_BulletHitEvent_Internal_330


;CG_DrawTracer(float const*, float const*, refdef_s const*)
CG_DrawTracer:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x64
	mov ecx, [ebp+0x8]
	mov ebx, [ebp+0xc]
	mov eax, cg_tracerWidth
	mov eax, [eax]
	movss xmm0, dword [eax+0xc]
	movss [ebp-0x50], xmm0
	mov edx, [ebp+0x10]
	add edx, 0x18
	mov eax, cg_tracerScale
	mov eax, [eax]
	movss xmm6, dword [eax+0xc]
	mov eax, cg_tracerScaleMinDist
	mov eax, [eax]
	movss xmm7, dword [eax+0xc]
	mov eax, cg_tracerScaleDistRange
	mov eax, [eax]
	movss xmm2, dword [eax+0xc]
	movss [ebp-0x4c], xmm2
	ucomiss xmm6, [_float_1_00000000]
	jnz CG_DrawTracer_10
	jp CG_DrawTracer_10
	movaps xmm3, xmm0
	movaps xmm4, xmm0
CG_DrawTracer_100:
	mov eax, [ecx]
	mov [ebp-0x3c], eax
	mov eax, [ecx+0x4]
	mov [ebp-0x38], eax
	mov eax, [ecx+0x8]
	mov [ebp-0x34], eax
	movss xmm0, dword [ebx]
	movss [ebp-0x30], xmm0
	movss xmm1, dword [ebx+0x4]
	movss [ebp-0x2c], xmm1
	movss xmm2, dword [ebx+0x8]
	movss [ebp-0x28], xmm2
	mov dword [ebp-0x24], 0xffffffff
	mov dword [ebp-0x20], 0xffffffff
	movss [ebp-0x1c], xmm4
	movss [ebp-0x18], xmm3
	mov eax, cgMedia
	mov eax, [eax+0x14]
	mov [ebp-0x14], eax
	subss xmm0, [ecx]
	subss xmm1, [ecx+0x4]
	subss xmm2, [ecx+0x8]
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	sqrtss xmm0, xmm0
	mulss xmm0, [_float_8_00000000]
	mov eax, cg_tracerScrewDist
	mov eax, [eax]
	divss xmm0, dword [eax+0xc]
	cvttss2si eax, xmm0
	mov [ebp-0x10], eax
	mov eax, cg_tracerScrewRadius
	mov eax, [eax]
	mov eax, [eax+0xc]
	mov [ebp-0xc], eax
	lea eax, [ebp-0x3c]
	mov [esp], eax
	call FX_Beam_Add
	add esp, 0x64
	pop ebx
	pop ebp
	ret
CG_DrawTracer_10:
	movss xmm3, dword [edx]
	movaps xmm0, xmm3
	subss xmm0, [ecx]
	movss xmm4, dword [edx+0x4]
	movaps xmm1, xmm4
	subss xmm1, [ecx+0x4]
	movss xmm5, dword [edx+0x8]
	movaps xmm2, xmm5
	subss xmm2, [ecx+0x8]
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	sqrtss xmm0, xmm0
	subss xmm3, [ebx]
	subss xmm4, [ebx+0x4]
	subss xmm5, [ebx+0x8]
	mulss xmm3, xmm3
	mulss xmm4, xmm4
	addss xmm3, xmm4
	mulss xmm5, xmm5
	addss xmm3, xmm5
	sqrtss xmm3, xmm3
	pxor xmm1, xmm1
	ucomiss xmm7, xmm1
	jp CG_DrawTracer_20
	jz CG_DrawTracer_30
CG_DrawTracer_20:
	subss xmm0, xmm7
	subss xmm3, xmm7
CG_DrawTracer_30:
	ucomiss xmm0, xmm1
	jbe CG_DrawTracer_40
	movss xmm2, dword [ebp-0x4c]
	ucomiss xmm2, xmm1
	jbe CG_DrawTracer_50
	divss xmm0, xmm2
	mulss xmm0, xmm6
	movss xmm2, dword [_float_1_00000000]
	ucomiss xmm2, xmm0
	ja CG_DrawTracer_60
	ucomiss xmm0, xmm6
	ja CG_DrawTracer_50
CG_DrawTracer_110:
	movss xmm4, dword [ebp-0x50]
	mulss xmm4, xmm0
CG_DrawTracer_120:
	ucomiss xmm3, xmm1
	jbe CG_DrawTracer_70
	movss xmm0, dword [ebp-0x4c]
	ucomiss xmm0, xmm1
	jbe CG_DrawTracer_80
	divss xmm3, xmm0
	mulss xmm3, xmm6
	movss xmm2, dword [_float_1_00000000]
	ucomiss xmm2, xmm3
	ja CG_DrawTracer_90
	minss xmm6, xmm3
CG_DrawTracer_80:
	movss xmm3, dword [ebp-0x50]
	mulss xmm3, xmm6
	jmp CG_DrawTracer_100
CG_DrawTracer_50:
	movaps xmm0, xmm6
	jmp CG_DrawTracer_110
CG_DrawTracer_40:
	movss xmm4, dword [ebp-0x50]
	jmp CG_DrawTracer_120
CG_DrawTracer_90:
	movaps xmm6, xmm2
	jmp CG_DrawTracer_80
CG_DrawTracer_60:
	movaps xmm0, xmm2
	jmp CG_DrawTracer_110
CG_DrawTracer_70:
	movss xmm3, dword [ebp-0x50]
	jmp CG_DrawTracer_100


;CG_FireWeapon(int, centity_s*, int, unsigned short, unsigned int, playerState_s const*)
CG_FireWeapon:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2dc
	movzx eax, word [ebp+0x14]
	mov [ebp-0x294], ax
	mov edx, [ebp+0xc]
	add edx, 0xcc
	mov [ebp-0x28c], edx
	mov ecx, [ebp+0x18]
	test ecx, ecx
	jnz CG_FireWeapon_10
	mov ecx, [edx+0xc4]
	mov [ebp+0x18], ecx
	test ecx, ecx
	jz CG_FireWeapon_20
CG_FireWeapon_10:
	call BG_GetNumWeapons
	cmp eax, [ebp+0x18]
	jbe CG_FireWeapon_30
	mov eax, [ebp+0x18]
	shl eax, 0x6
	mov edx, [ebp+0x18]
	lea eax, [eax+edx*4]
	mov ecx, cg_weaponsArray
	add eax, ecx
	mov [ebp-0x290], eax
	mov [esp], edx
	call BG_GetWeaponDef
	mov [ebp-0x288], eax
	mov eax, [ebp+0xc]
	mov byte [eax+0x1c1], 0x1
	mov ebx, [eax+0xcc]
	mov esi, cgArray
	mov edx, [esi+0x24]
	mov ecx, [edx+0x20]
	test cl, 0x6
	jnz CG_FireWeapon_40
CG_FireWeapon_280:
	xor eax, eax
CG_FireWeapon_290:
	mov [ebp-0x291], al
	movzx eax, al
	mov [ebp-0x284], eax
	mov eax, sv_clientSideBullets
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz CG_FireWeapon_50
	movzx edi, word [ebp-0x294]
	and cl, 0x6
	jz CG_FireWeapon_60
	cmp ebx, [edx+0xe8]
	jz CG_FireWeapon_70
CG_FireWeapon_60:
	xor eax, eax
CG_FireWeapon_510:
	test eax, eax
	jnz CG_FireWeapon_80
	mov ecx, [ebp+0xc]
	mov eax, [ecx+0xd0]
	cmp eax, 0x1
	jz CG_FireWeapon_90
	cmp eax, 0xb
	jz CG_FireWeapon_100
	cmp eax, 0xe
	jz CG_FireWeapon_110
	cmp eax, 0xc
	jz CG_FireWeapon_110
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_unknown_etype_i_
	mov dword [esp], 0xe
	call Com_PrintError
CG_FireWeapon_50:
	cmp byte [ebp-0x291], 0x0
	jnz CG_FireWeapon_120
	mov ecx, [ebp-0x28c]
	cmp dword [ecx+0x4], 0xb
	jz CG_FireWeapon_130
CG_FireWeapon_310:
	cmp dword [ecx+0x4], 0xc
	jz CG_FireWeapon_140
CG_FireWeapon_480:
	mov ecx, [ebp-0x288]
	mov edx, [ecx+0x170]
	mov eax, [ebp-0x284]
	test eax, eax
	jnz CG_FireWeapon_150
	cmp dword [ebp+0x10], 0x1b
	jz CG_FireWeapon_160
CG_FireWeapon_240:
	test edx, edx
	jz CG_FireWeapon_170
	mov ebx, edx
CG_FireWeapon_490:
	mov esi, [ebp-0x284]
	test esi, esi
	jz CG_FireWeapon_180
CG_FireWeapon_260:
	mov eax, [ebp-0x290]
	mov edx, [eax]
	test edx, edx
	jz CG_FireWeapon_190
	lea esi, [ebp-0x34]
	mov [esp+0xc], esi
	movzx eax, word [ebp-0x294]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov eax, cgArray
	add eax, 0xfd234
	mov [esp], eax
	call CG_DObjGetWorldTagPos
	test eax, eax
	jz CG_FireWeapon_200
CG_FireWeapon_360:
	mov [esp+0xc], ebx
	mov [esp+0x8], esi
	mov edx, [ebp-0x28c]
	mov eax, [edx]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call CG_PlaySoundAlias
	mov edx, eax
	mov eax, [ebp+0xc]
	cmp dword [eax+0xd0], 0x1
	jnz CG_FireWeapon_170
	mov ecx, [ebp-0x288]
	mov ebx, [ecx+0x550]
	test ebx, ebx
	jz CG_FireWeapon_210
CG_FireWeapon_170:
	mov ecx, [ebp+0x18]
	mov [esp], ecx
	call BG_GetWeaponDef
	mov ecx, [eax+0x4e8]
	test ecx, ecx
	jz CG_FireWeapon_220
CG_FireWeapon_380:
	mov edx, [ebp-0x284]
	test edx, edx
	jnz CG_FireWeapon_230
CG_FireWeapon_20:
	add esp, 0x2dc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_FireWeapon_30:
	mov dword [esp+0x4], _cstring_cg_fireweapon_we
	mov dword [esp], 0x2
	call Com_Error
	add esp, 0x2dc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_FireWeapon_150:
	mov eax, [ecx+0x174]
	test eax, eax
	cmovnz edx, eax
	cmp dword [ebp+0x10], 0x1b
	jnz CG_FireWeapon_240
CG_FireWeapon_160:
	mov edi, [ebp-0x284]
	test edi, edi
	jz CG_FireWeapon_250
	mov eax, [ebp-0x288]
	mov ebx, [eax+0x18c]
	test ebx, ebx
	jnz CG_FireWeapon_260
	mov ecx, eax
	jmp CG_FireWeapon_270
CG_FireWeapon_40:
	cmp ebx, [edx+0xe8]
	jnz CG_FireWeapon_280
	mov eax, 0x1
	jmp CG_FireWeapon_290
CG_FireWeapon_120:
	mov edx, [ebp-0x290]
	mov eax, [edx]
	test eax, eax
	jz CG_FireWeapon_300
	mov [esp], eax
	call DObjClearSkel
CG_FireWeapon_300:
	mov ebx, cgArray
	lea eax, [ebx+0xfd25c]
	mov [esp+0x4], eax
	lea eax, [ebx+0x50460]
	mov [esp], eax
	call AxisToAngles
	mov eax, [ebx+0x50484]
	mov [ebx+0xfd250], eax
	mov eax, [ebx+0x50488]
	mov [ebx+0xfd254], eax
	mov eax, [ebx+0x5048c]
	mov [ebx+0xfd258], eax
	lea eax, [ebx+0x50410]
	mov [esp+0x8], eax
	lea eax, [ebx+0x50454]
	mov [esp+0x4], eax
	add ebx, 0x4613c
	mov [esp], ebx
	call BG_WeaponFireRecoil
	mov ecx, [ebp-0x28c]
	cmp dword [ecx+0x4], 0xb
	jnz CG_FireWeapon_310
CG_FireWeapon_130:
	mov eax, [ebp+0x1c]
	test dword [eax+0xb0], 0x300
	jz CG_FireWeapon_320
	mov eax, [eax+0x59c]
	cmp eax, [ecx]
	jz CG_FireWeapon_330
CG_FireWeapon_320:
	xor edi, edi
CG_FireWeapon_520:
	movzx esi, word [ebp-0x294]
	mov ecx, [ebp-0x28c]
	mov ebx, [ecx]
	mov eax, [ebp+0x18]
	mov [esp], eax
	call BG_GetWeaponDef
	test edi, edi
	jz CG_FireWeapon_340
	mov eax, [eax+0x14c]
CG_FireWeapon_500:
	test eax, eax
	jz CG_FireWeapon_350
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov [esp], edx
	call CG_PlayBoltedEffect
	mov ecx, [ebp-0x28c]
	jmp CG_FireWeapon_310
CG_FireWeapon_230:
	mov ebx, cgArray
	mov eax, [ebx+0x46224]
	mov [esp], eax
	call BG_WeaponIsClipOnly
	test eax, eax
	jz CG_FireWeapon_20
	mov eax, [ebx+0x46224]
	mov [esp], eax
	call BG_ClipForWeapon
	mov eax, [ebx+eax*4+0x46498]
	test eax, eax
	jnz CG_FireWeapon_20
	mov eax, [ebx+0x46224]
	mov [esp], eax
	call BG_AmmoForWeapon
	mov eax, [ebx+eax*4+0x46298]
	test eax, eax
	jnz CG_FireWeapon_20
	mov eax, [ebx+0x46224]
	mov [esp], eax
	call BG_GetWeaponDef
	mov eax, [eax+0x5a8]
	test eax, eax
	jnz CG_FireWeapon_20
	mov dword [esp+0x8], 0x0
	mov eax, [ebx+0x46224]
	mov [esp+0x4], eax
	lea eax, [ebx+0x4613c]
	mov [esp], eax
	call BG_TakePlayerWeapon
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_OutOfAmmoChange
	jmp CG_FireWeapon_20
CG_FireWeapon_180:
	mov edx, [ebp+0x8]
	mov [esp+0x4], edx
	mov ecx, [ebp-0x28c]
	mov eax, [ecx]
	mov [esp], eax
	call Com_GetClientDObj
	mov edx, eax
	test eax, eax
	jz CG_FireWeapon_190
	lea esi, [ebp-0x34]
	mov [esp+0xc], esi
	movzx eax, word [ebp-0x294]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov eax, [ebp+0xc]
	mov [esp], eax
	call CG_DObjGetWorldTagPos
	test eax, eax
	jnz CG_FireWeapon_360
	jmp CG_FireWeapon_200
CG_FireWeapon_190:
	lea esi, [ebp-0x34]
CG_FireWeapon_200:
	mov [esp+0x8], esi
	mov eax, cgArray
	mov eax, [eax+0x46128]
	mov [esp+0x4], eax
	mov eax, [ebp-0x28c]
	add eax, 0xc
	mov [esp], eax
	call BG_EvaluateTrajectory
	jmp CG_FireWeapon_360
CG_FireWeapon_110:
	mov edx, [ebp-0x288]
	mov eax, [edx+0x71c]
	mov [ebp-0x28], eax
	mov eax, [edx+0x71c]
	mov [ebp-0x24], eax
	mov byte [ebp-0x19], 0x0
	lea eax, [ebp-0x19]
	mov [esp+0xc], eax
	movzx eax, di
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call CG_GetBoneIndex
	test eax, eax
	jz CG_FireWeapon_50
	lea eax, [ebp-0x88]
	mov [esp+0xc], eax
	movzx eax, byte [ebp-0x19]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call FX_GetBoneOrientation
	test al, al
	jz CG_FireWeapon_50
	mov ebx, [ebp-0x88]
	mov [ebp-0x40], ebx
	mov ecx, [ebp-0x84]
	mov [ebp-0x3c], ecx
	mov edx, [ebp-0x80]
	mov [ebp-0x38], edx
	mov [ebp-0x4c], ebx
	mov [ebp-0x48], ecx
	mov [ebp-0x44], edx
	pxor xmm0, xmm0
	movss [ebp-0x280], xmm0
	mov byte [ebp-0x26d], 0x0
CG_FireWeapon_400:
	mov eax, [ebp-0x288]
	movss xmm0, dword [eax+0x71c]
	movss xmm1, dword [ebp-0x24]
	subss xmm1, xmm0
	mulss xmm1, [ebp-0x280]
	addss xmm1, xmm0
	jmp CG_FireWeapon_370
CG_FireWeapon_220:
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov edx, [ebp-0x28c]
	mov [esp+0x4], edx
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call CG_EjectWeaponBrass
	jmp CG_FireWeapon_380
CG_FireWeapon_80:
	mov edx, [ebp+0x1c]
	mov [esp], edx
	call BG_GetViewmodelWeaponIndex
	lea esi, [eax+0x400]
	mov ebx, cgArray
	movss xmm0, dword [ebx+0xfd764]
	divss xmm0, dword [_float_255_00000000]
	movss [ebp-0x280], xmm0
	movss xmm0, dword [_float_1_00000000]
	mov eax, [ebp+0x1c]
	ucomiss xmm0, [eax+0xf4]
	setz al
	setnp dl
	and al, dl
	movzx eax, al
	mov [ebp-0x27c], eax
	lea eax, [ebp-0x24]
	mov [esp+0xc], eax
	lea eax, [ebp-0x28]
	mov [esp+0x8], eax
	mov edx, [ebp-0x288]
	mov [esp+0x4], edx
	mov ecx, [ebp+0x1c]
	mov [esp], ecx
	call BG_GetSpreadForWeapon
	lea eax, [ebp-0x40]
	mov [esp+0x8], eax
	mov eax, [ebp+0x1c]
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov [esp], edx
	call CG_GetPlayerViewOrigin
	mov eax, [ebx+0x50434]
	mov [ebp-0x58], eax
	mov eax, [ebx+0x50438]
	mov [ebp-0x54], eax
	mov dword [ebp-0x50], 0x0
	mov byte [ebp-0x19], 0x0
	lea eax, [ebp-0x19]
	mov [esp+0xc], eax
	movzx eax, di
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call CG_GetBoneIndex
	test eax, eax
	jz CG_FireWeapon_50
	mov eax, [ebx+0x46138]
	test eax, eax
	jnz CG_FireWeapon_390
	lea eax, [ebp-0xb8]
	mov [esp+0xc], eax
	movzx eax, byte [ebp-0x19]
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov eax, [ebp+0x8]
	mov [esp], eax
	call FX_GetBoneOrientation
	test al, al
	jz CG_FireWeapon_50
	mov eax, [ebp-0xb8]
	mov [ebp-0x4c], eax
	mov eax, [ebp-0xb4]
	mov [ebp-0x48], eax
	mov eax, [ebp-0xb0]
	mov [ebp-0x44], eax
	lea eax, [ebp-0x64]
	mov [esp+0xc], eax
	lea eax, [ebp-0x70]
	mov [esp+0x8], eax
	lea eax, [ebp-0x7c]
	mov [esp+0x4], eax
	lea eax, [ebp-0x58]
	mov [esp], eax
	call AngleVectors
CG_FireWeapon_940:
	call ms_rand
	cvtsi2ss xmm1, eax
	mov eax, cg_firstPersonTracerChance
	mov eax, [eax]
	movss xmm0, dword [_float_32768_00000000]
	mulss xmm0, [eax+0xc]
	ucomiss xmm0, xmm1
	seta byte [ebp-0x26d]
CG_FireWeapon_870:
	mov eax, [ebp-0x27c]
	test eax, eax
	jnz CG_FireWeapon_400
CG_FireWeapon_920:
	movss xmm0, dword [ebp-0x28]
	movss xmm1, dword [ebp-0x24]
	subss xmm1, xmm0
	mulss xmm1, [ebp-0x280]
	addss xmm1, xmm0
CG_FireWeapon_370:
	cld
	mov ecx, 0x10
	xor eax, eax
	lea edi, [ebp-0x138]
	rep stosd
	mov dword [ebp-0x138], 0x3fe
	mov edx, [ebp+0xc]
	mov eax, [edx+0xcc]
	mov [ebp-0x134], eax
	mov dword [ebp-0x130], 0x3f800000
	mov ecx, [ebp-0x288]
	mov eax, [ecx+0x4e0]
	test eax, eax
	jnz CG_FireWeapon_410
	mov eax, 0x1
CG_FireWeapon_930:
	mov [ebp-0x12c], eax
	mov edx, [ebp-0x288]
	cmp dword [edx+0x130], 0x3
	jz CG_FireWeapon_420
	mov dword [ebp-0x278], 0x1
	movss xmm0, dword [_float_8192_00000000]
	movss [ebp-0x260], xmm0
CG_FireWeapon_1020:
	mov ebx, [ebp-0x40]
	mov [ebp-0x128], ebx
	mov ecx, [ebp-0x3c]
	mov [ebp-0x124], ecx
	mov edx, [ebp-0x38]
	mov [ebp-0x120], edx
	mov eax, [ebp-0x278]
	test eax, eax
	jle CG_FireWeapon_50
	cvtss2sd xmm1, xmm1
	movsd xmm0, qword [_double_0_01745329]
	mulsd xmm0, xmm1
	movsd [ebp-0x220], xmm0
	mov dword [ebp-0x274], 0x0
CG_FireWeapon_630:
	mov eax, [ebp-0x7c]
	mov [ebp-0x104], eax
	mov eax, [ebp-0x78]
	mov [ebp-0x100], eax
	mov eax, [ebp-0x74]
	mov [ebp-0xfc], eax
	mov [ebp-0x11c], ebx
	mov [ebp-0x118], ecx
	mov [ebp-0x114], edx
	mov ebx, [ebp-0x274]
	mov eax, [ebp+0x1c]
	add ebx, [eax]
	movsd [esp], xmm0
	call tan
	fstp qword [ebp-0x2a0]
	cvtsd2ss xmm1, [ebp-0x2a0]
	movss xmm0, dword [ebp-0x260]
	mulss xmm0, xmm1
	movss [ebp-0x268], xmm0
	neg ebx
	mov edi, 0x27
	lea esi, [ebp-0x160]
	jmp CG_FireWeapon_430
CG_FireWeapon_460:
	cmp edi, 0x1f
	jg CG_FireWeapon_440
	mov [esi], ebx
CG_FireWeapon_440:
	sub edi, 0x1
	sub esi, 0x4
	cmp edi, 0xffffffff
	jz CG_FireWeapon_450
CG_FireWeapon_430:
	mov eax, 0x834e0b5f
	imul ebx
	mov ecx, edx
	add ecx, ebx
	sar ecx, 0x10
	mov eax, ebx
	sar eax, 0x1f
	sub ecx, eax
	lea eax, [ecx*4]
	mov edx, ecx
	shl edx, 0x9
	sub edx, eax
	sub edx, ecx
	lea eax, [edx*8]
	sub eax, edx
	lea eax, [ecx+eax*4]
	lea eax, [eax+eax*8]
	mov edx, ebx
	sub edx, eax
	lea ebx, [edx+edx*4]
	mov eax, ebx
	shl eax, 0x4
	sub eax, ebx
	shl eax, 0x5
	add eax, edx
	lea ebx, [eax*8]
	sub ebx, eax
	lea eax, [ecx+ecx*2]
	mov edx, eax
	shl edx, 0x4
	sub edx, eax
	mov eax, edx
	shl eax, 0x6
	sub eax, edx
	add eax, ecx
	sub ebx, eax
	jns CG_FireWeapon_460
	lea ebx, [ebx+0x7fffffff]
	jmp CG_FireWeapon_460
CG_FireWeapon_140:
	movzx esi, word [ebp-0x294]
	mov ebx, [ecx]
	mov eax, [ebp+0x18]
	mov [esp], eax
	call BG_GetWeaponDef
	mov eax, [eax+0x150]
	test eax, eax
	jz CG_FireWeapon_470
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov [esp], edx
	call CG_PlayBoltedEffect
CG_FireWeapon_470:
	mov ecx, [ebp+0x10]
	mov [esp+0x8], ecx
	mov eax, [ebp-0x28c]
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov [esp], edx
	call CG_EjectWeaponBrass
	mov eax, heli_barrelRotation
	mov eax, [eax]
	mov eax, [eax+0xc]
	mov [esp+0x8], eax
	mov ecx, [ebp-0x28c]
	mov eax, [ecx]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Veh_IncTurretBarrelRoll
	jmp CG_FireWeapon_480
CG_FireWeapon_250:
	mov ecx, [ebp-0x288]
CG_FireWeapon_270:
	mov ebx, [ecx+0x188]
	test ebx, ebx
	jnz CG_FireWeapon_490
	jmp CG_FireWeapon_240
CG_FireWeapon_340:
	mov eax, [eax+0x150]
	jmp CG_FireWeapon_500
CG_FireWeapon_210:
	cmp dword [ecx+0x12c], 0x1
	jz CG_FireWeapon_170
	lea eax, [ebp-0x20]
	mov [esp+0x4], eax
	mov [esp], edx
	call SND_GetKnownLength
	mov eax, [ebp-0x20]
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov [esp], edx
	call CG_CompassAddWeaponPingInfo
	jmp CG_FireWeapon_170
CG_FireWeapon_70:
	mov eax, 0x1
	jmp CG_FireWeapon_510
CG_FireWeapon_330:
	mov dword [ebp-0x284], 0x1
	mov edi, 0x1
	jmp CG_FireWeapon_520
CG_FireWeapon_450:
	mov eax, 0x834e0b5f
	imul ebx
	lea esi, [edx+ebx]
	sar esi, 0x10
	mov eax, ebx
	sar eax, 0x1f
	sub esi, eax
	lea eax, [esi*4]
	mov edx, esi
	shl edx, 0x9
	sub edx, eax
	sub edx, esi
	lea eax, [edx*8]
	sub eax, edx
	lea eax, [esi+eax*4]
	lea eax, [eax+eax*8]
	mov edx, ebx
	sub edx, eax
	lea ecx, [edx+edx*4]
	mov eax, ecx
	shl eax, 0x4
	sub eax, ecx
	shl eax, 0x5
	add eax, edx
	lea ecx, [eax*8]
	sub ecx, eax
	lea eax, [esi+esi*2]
	mov edx, eax
	shl edx, 0x4
	sub edx, eax
	mov eax, edx
	shl eax, 0x6
	sub eax, edx
	add eax, esi
	sub ecx, eax
	js CG_FireWeapon_530
CG_FireWeapon_890:
	mov eax, [ebp-0x1fc]
	lea edx, [eax+0x3ffffff]
	cmp eax, 0xffffffff
	cmovle eax, edx
	sar eax, 0x1a
	cvtsi2sd xmm1, dword [ebp+eax*4-0x1fc]
	movsd xmm2, qword [_double_0_00000000]
	mulsd xmm1, xmm2
	movsd xmm3, qword [_double_0_99999988]
	movapd xmm0, xmm3
	subsd xmm0, xmm1
	pxor xmm4, xmm4
	ucomisd xmm0, xmm4
	jb CG_FireWeapon_540
	cvtsd2ss xmm0, xmm1
CG_FireWeapon_880:
	movaps xmm5, xmm0
	mulss xmm5, [_float_360_00000000]
	mov ebx, ecx
	neg ebx
	mov edi, 0x27
	lea esi, [ebp-0x160]
	jmp CG_FireWeapon_550
CG_FireWeapon_580:
	cmp edi, 0x1f
	jg CG_FireWeapon_560
	mov [esi], ebx
CG_FireWeapon_560:
	sub edi, 0x1
	sub esi, 0x4
	cmp edi, 0xffffffff
	jz CG_FireWeapon_570
CG_FireWeapon_550:
	mov eax, 0x834e0b5f
	imul ebx
	mov ecx, edx
	add ecx, ebx
	sar ecx, 0x10
	mov eax, ebx
	sar eax, 0x1f
	sub ecx, eax
	lea eax, [ecx*4]
	mov edx, ecx
	shl edx, 0x9
	sub edx, eax
	sub edx, ecx
	lea eax, [edx*8]
	sub eax, edx
	lea eax, [ecx+eax*4]
	lea eax, [eax+eax*8]
	mov edx, ebx
	sub edx, eax
	lea ebx, [edx+edx*4]
	mov eax, ebx
	shl eax, 0x4
	sub eax, ebx
	shl eax, 0x5
	add eax, edx
	lea ebx, [eax*8]
	sub ebx, eax
	lea eax, [ecx+ecx*2]
	mov edx, eax
	shl edx, 0x4
	sub edx, eax
	mov eax, edx
	shl eax, 0x6
	sub eax, edx
	add eax, ecx
	sub ebx, eax
	jns CG_FireWeapon_580
	lea ebx, [ebx+0x7fffffff]
	jmp CG_FireWeapon_580
CG_FireWeapon_570:
	mov eax, [ebp-0x1fc]
	lea edx, [eax+0x3ffffff]
	cmp eax, 0xffffffff
	cmovle eax, edx
	sar eax, 0x1a
	cvtsi2sd xmm1, dword [ebp+eax*4-0x1fc]
	mulsd xmm1, xmm2
	movapd xmm0, xmm3
	subsd xmm0, xmm1
	ucomisd xmm0, xmm4
	jb CG_FireWeapon_590
	cvtsd2ss xmm1, xmm1
	movss [ebp-0x214], xmm1
CG_FireWeapon_910:
	cvtss2sd xmm0, xmm5
	mulsd xmm0, [_double_0_01745329]
	cvtsd2ss xmm0, xmm0
	movss [ebp-0x264], xmm0
	movss [esp], xmm0
	call cosf
	fstp dword [ebp-0x26c]
	movss xmm1, dword [ebp-0x26c]
	mulss xmm1, [ebp-0x214]
	movss [ebp-0x26c], xmm1
	movss xmm0, dword [ebp-0x264]
	movss [esp], xmm0
	call sinf
	fstp dword [ebp-0x2ac]
	movss xmm2, dword [ebp-0x2ac]
	mulss xmm2, [ebp-0x214]
	movss xmm1, dword [ebp-0x268]
	mulss xmm1, [ebp-0x26c]
	mulss xmm2, [ebp-0x268]
	movss xmm0, dword [ebp-0x260]
	mulss xmm0, [ebp-0x7c]
	addss xmm0, [ebp-0x11c]
	movss [ebp-0x110], xmm0
	movss xmm0, dword [ebp-0x260]
	mulss xmm0, [ebp-0x78]
	addss xmm0, [ebp-0x118]
	movss [ebp-0x10c], xmm0
	movss xmm0, dword [ebp-0x260]
	mulss xmm0, [ebp-0x74]
	addss xmm0, [ebp-0x114]
	movss [ebp-0x108], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x70]
	addss xmm0, [ebp-0x110]
	movss [ebp-0x110], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x6c]
	addss xmm0, [ebp-0x10c]
	movss [ebp-0x10c], xmm0
	mulss xmm1, [ebp-0x68]
	addss xmm1, [ebp-0x108]
	movss [ebp-0x108], xmm1
	movaps xmm0, xmm2
	mulss xmm0, [ebp-0x64]
	addss xmm0, [ebp-0x110]
	movss [ebp-0x110], xmm0
	movaps xmm1, xmm2
	mulss xmm1, [ebp-0x60]
	addss xmm1, [ebp-0x10c]
	movss [ebp-0x10c], xmm1
	mulss xmm2, [ebp-0x5c]
	addss xmm2, [ebp-0x108]
	movss [ebp-0x108], xmm2
	movaps xmm3, xmm0
	subss xmm3, [ebp-0x11c]
	movss [ebp-0x104], xmm3
	subss xmm1, [ebp-0x118]
	movss [ebp-0x100], xmm1
	subss xmm2, [ebp-0x114]
	movss [ebp-0xfc], xmm2
	movaps xmm0, xmm3
	mulss xmm0, xmm3
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	sqrtss xmm1, xmm0
	movaps xmm0, xmm1
	xorps xmm0, [_data16_80000000]
	ucomiss xmm0, [_float_0_00000000]
	jb CG_FireWeapon_600
	movss xmm1, dword [_float_1_00000000]
CG_FireWeapon_900:
	mulss xmm3, xmm1
	movss [ebp-0x104], xmm3
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x100]
	movss [ebp-0x100], xmm0
	mulss xmm1, [ebp-0xfc]
	movss [ebp-0xfc], xmm1
	mov dword [ebp-0x130], 0x3f800000
	movzx ebx, byte [ebp-0x26d]
	mov eax, [ebp-0x288]
	mov [esp], eax
	call BG_GetWeaponIndex
	mov [ebp-0x230], eax
	mov edx, [ebp-0x288]
	mov edi, [edx+0x12c]
	test edi, edi
	mov eax, 0x0
	cmovnz ebx, eax
	mov dword [esp+0x8], 0x0
	lea ecx, [ebp-0x17c]
	mov [esp+0x4], ecx
	mov eax, [ebp+0xc]
	mov [esp], eax
	mov ecx, edx
	lea edx, [ebp-0x138]
	mov eax, [ebp+0x8]
	call BulletTrace
	test al, al
	jnz CG_FireWeapon_610
	test bl, bl
	jnz CG_FireWeapon_620
CG_FireWeapon_660:
	add dword [ebp-0x274], 0x1
	mov ecx, [ebp-0x274]
	cmp [ebp-0x278], ecx
	jz CG_FireWeapon_50
	mov ebx, [ebp-0x40]
	mov ecx, [ebp-0x3c]
	mov edx, [ebp-0x38]
	movsd xmm0, qword [ebp-0x220]
	jmp CG_FireWeapon_630
CG_FireWeapon_350:
	mov ecx, [ebp-0x28c]
	jmp CG_FireWeapon_310
CG_FireWeapon_610:
	lea ecx, [ebp-0x17c]
	mov [esp], ecx
	call Trace_GetEntityHitId
	mov esi, eax
	test bl, bl
	jnz CG_FireWeapon_640
CG_FireWeapon_1090:
	test edi, edi
	jz CG_FireWeapon_650
CG_FireWeapon_1070:
	mov edx, [ebp-0x288]
	mov eax, [edx+0x134]
	test eax, eax
	jz CG_FireWeapon_660
	cmp byte [ebp-0x153], 0x0
	jnz CG_FireWeapon_660
	mov dword [ebp-0x210], 0x5
CG_FireWeapon_820:
	mov eax, [ebp-0x13c]
	mov [esp+0x4], eax
	mov ecx, [ebp-0x288]
	mov [esp], ecx
	call BG_GetSurfacePenetrationDepth
	fstp dword [ebp-0x254]
	mov eax, [ebp+0xc]
	cmp dword [eax+0xd0], 0x1
	jz CG_FireWeapon_670
CG_FireWeapon_1140:
	movss xmm1, dword [ebp-0x254]
CG_FireWeapon_1150:
	ucomiss xmm1, [_float_0_00000000]
	jp CG_FireWeapon_680
	jbe CG_FireWeapon_660
CG_FireWeapon_680:
	movss xmm0, dword [ebp-0x14c]
	movss [ebp-0x224], xmm0
	movss xmm1, dword [ebp-0x148]
	movss [ebp-0x228], xmm1
	movss xmm0, dword [ebp-0x144]
	movss [ebp-0x22c], xmm0
	mov dword [esp+0x8], 0x3e0a3d71
	lea eax, [ebp-0x17c]
	mov [esp+0x4], eax
	lea edx, [ebp-0x138]
	mov [esp], edx
	call BG_AdvanceTrace
	test al, al
	jz CG_FireWeapon_660
	mov eax, [ebp-0x13c]
	mov [esp+0x8], eax
	lea ecx, [ebp-0x17c]
	mov [esp+0x4], ecx
	mov eax, [ebp+0xc]
	mov [esp], eax
	mov ecx, [ebp-0x288]
	lea edx, [ebp-0x138]
	mov eax, [ebp+0x8]
	call BulletTrace
	mov [ebp-0x209], al
	mov dword [esp+0x8], 0x40
	lea edx, [ebp-0x138]
	mov [esp+0x4], edx
	lea ecx, [ebp-0xf8]
	mov [esp], ecx
	call Com_Memcpy
	movss xmm0, dword [ebp-0x104]
	xorps xmm0, [_data16_80000000]
	movss [ebp-0xc4], xmm0
	movss xmm1, dword [ebp-0x100]
	xorps xmm1, [_data16_80000000]
	movss [ebp-0xc0], xmm1
	movss xmm2, dword [ebp-0xfc]
	xorps xmm2, [_data16_80000000]
	movss [ebp-0xbc], xmm2
	mov eax, [ebp-0x110]
	mov [ebp-0xdc], eax
	mov eax, [ebp-0x10c]
	mov [ebp-0xd8], eax
	mov eax, [ebp-0x108]
	mov [ebp-0xd4], eax
	mulss xmm0, [_float_0_01000000]
	addss xmm0, [ebp-0x224]
	movss [ebp-0xd0], xmm0
	mulss xmm1, [_float_0_01000000]
	addss xmm1, [ebp-0x228]
	movss [ebp-0xcc], xmm1
	mulss xmm2, [_float_0_01000000]
	addss xmm2, [ebp-0x22c]
	movss [ebp-0xc8], xmm2
	mov dword [esp+0x8], 0x44
	lea eax, [ebp-0x17c]
	mov [esp+0x4], eax
	lea edx, [ebp-0x1fc]
	mov [esp], edx
	call Com_Memcpy
	movss xmm0, dword [ebp-0x1f8]
	xorps xmm0, [_data16_80000000]
	movss [ebp-0x1f8], xmm0
	movss xmm0, dword [ebp-0x1f4]
	xorps xmm0, [_data16_80000000]
	movss [ebp-0x1f4], xmm0
	movss xmm0, dword [ebp-0x1f0]
	xorps xmm0, [_data16_80000000]
	movss [ebp-0x1f0], xmm0
	cmp byte [ebp-0x209], 0x0
	jnz CG_FireWeapon_690
CG_FireWeapon_1130:
	mov eax, [ebp-0x1bc]
	mov [esp+0x8], eax
	lea edx, [ebp-0x1fc]
	mov [esp+0x4], edx
	mov ecx, [ebp+0xc]
	mov [esp], ecx
	mov ecx, [ebp-0x288]
	lea edx, [ebp-0xf8]
	mov eax, [ebp+0x8]
	call BulletTrace
	mov ebx, eax
	test al, al
	jz CG_FireWeapon_700
	cmp byte [ebp-0x1d4], 0x0
	jz CG_FireWeapon_700
	mov byte [ebp-0x259], 0x1
CG_FireWeapon_960:
	lea edx, [ebp-0x1fc]
	mov [esp], edx
	call Trace_GetEntityHitId
	mov esi, eax
	cmp byte [ebp-0x259], 0x0
	jz CG_FireWeapon_710
	movss xmm0, dword [ebp-0xd0]
	subss xmm0, [ebp-0xdc]
	movss xmm1, dword [ebp-0xcc]
	subss xmm1, [ebp-0xd8]
	movss xmm2, dword [ebp-0xc8]
	subss xmm2, [ebp-0xd4]
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	sqrtss xmm0, xmm0
	movss [ebp-0x258], xmm0
CG_FireWeapon_1120:
	movss xmm0, dword [_float_1_00000000]
	maxss xmm0, [ebp-0x258]
	movss [ebp-0x258], xmm0
	pxor xmm2, xmm2
	test bl, bl
	jz CG_FireWeapon_720
	mov eax, [ebp+0xc]
	cmp dword [eax+0xd0], 0x1
	jnz CG_FireWeapon_730
	mov eax, [eax+0x158]
	lea edx, [eax+eax*8]
	mov ecx, edx
	shl ecx, 0x4
	add edx, ecx
	lea edx, [eax+edx*2]
	shl edx, 0x2
	add edx, cgArray
	test byte [edx+0xe9f60], 0x20
	jnz CG_FireWeapon_740
CG_FireWeapon_730:
	mov eax, [ebp-0x1bc]
	mov [esp+0x4], eax
	mov eax, [ebp-0x288]
	mov [esp], eax
	call BG_GetSurfacePenetrationDepth
	fstp dword [ebp-0x2ac]
	movss xmm1, dword [ebp-0x2ac]
CG_FireWeapon_1230:
	movaps xmm0, xmm1
	subss xmm0, [ebp-0x254]
	pxor xmm2, xmm2
	ucomiss xmm0, xmm2
	jb CG_FireWeapon_750
CG_FireWeapon_720:
	movss xmm0, dword [ebp-0x258]
	divss xmm0, dword [ebp-0x254]
	movss [ebp-0x258], xmm0
	movss xmm0, dword [ebp-0x130]
	subss xmm0, [ebp-0x258]
	movss [ebp-0x130], xmm0
	ucomiss xmm2, xmm0
	jae CG_FireWeapon_660
	cmp byte [ebp-0x259], 0x0
	jnz CG_FireWeapon_760
	test edi, edi
	jnz CG_FireWeapon_760
	movss xmm0, dword [ebp-0x1cc]
	subss xmm0, [ebp-0x14c]
	movss xmm1, dword [ebp-0x1c8]
	subss xmm1, [ebp-0x148]
	movss xmm2, dword [ebp-0x1c4]
	subss xmm2, [ebp-0x144]
	mov eax, bullet_penetrationMinFxDist
	mov eax, [eax]
	movss xmm3, dword [eax+0xc]
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	mulss xmm3, xmm3
	ucomiss xmm0, xmm3
	jbe CG_FireWeapon_760
	cmp byte [ebp-0x209], 0x0
	jz CG_FireWeapon_770
	mov eax, [ebp-0x16c]
	test al, 0x4
	jz CG_FireWeapon_770
	movzx esi, si
CG_FireWeapon_1200:
	mov edx, [ebp-0x168]
	mov [ebp-0x240], edx
	mov ecx, [ebp-0x288]
	mov ecx, [ecx+0x34c]
	mov [ebp-0x23c], ecx
	mov ecx, eax
	and ecx, 0x1f00000
	shr ecx, 0x14
	mov eax, [ebp+0xc]
	mov ebx, [eax+0xcc]
	mov eax, sv_clientSideBullets
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz CG_FireWeapon_780
	lea eax, [esi*4]
	mov edx, esi
	shl edx, 0x5
	sub edx, eax
	mov eax, edx
	shl eax, 0x4
	add edx, eax
	mov eax, edx
	add eax, cg_entitiesArray
	jz CG_FireWeapon_790
	cmp dword [eax+0xd0], 0x1
	jz CG_FireWeapon_800
CG_FireWeapon_790:
	xor eax, eax
CG_FireWeapon_830:
	test eax, eax
	jnz CG_FireWeapon_810
CG_FireWeapon_780:
	mov eax, [ebp-0x240]
	mov [esp+0x2c], eax
	mov edx, [ebp-0x23c]
	mov [esp+0x28], edx
	mov dword [esp+0x24], 0x0
	mov dword [esp+0x20], 0x29
	mov [esp+0x1c], ecx
	lea eax, [ebp-0x178]
	mov [esp+0x18], eax
	lea ecx, [ebp-0x14c]
	mov [esp+0x14], ecx
	lea eax, [ebp-0x11c]
	mov [esp+0x10], eax
	mov edx, [ebp-0x230]
	mov [esp+0xc], edx
	mov [esp+0x8], esi
CG_FireWeapon_1010:
	mov [esp+0x4], ebx
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call CG_BulletHitEvent
	mov eax, [ebp+0xc]
	mov ebx, [eax+0xcc]
CG_FireWeapon_810:
	mov dword [esp+0x14], 0x0
	mov edx, [ebp-0x288]
	mov eax, [edx+0x34c]
	mov [esp+0x10], eax
	lea ecx, [ebp-0x14c]
	mov [esp+0xc], ecx
	lea eax, [ebp-0x11c]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov edx, [ebp+0x8]
	mov [esp], edx
	call DynEntCl_DynEntImpactEvent
CG_FireWeapon_970:
	sub dword [ebp-0x210], 0x1
	jnz CG_FireWeapon_820
	jmp CG_FireWeapon_660
CG_FireWeapon_800:
	mov eax, 0x1
	jmp CG_FireWeapon_830
CG_FireWeapon_90:
	lea eax, [ebx+ebx*8]
	mov edx, eax
	shl edx, 0x4
	add eax, edx
	lea eax, [ebx+eax*2]
	lea ebx, [esi+eax*4+0xe9f34]
	mov eax, [ecx+0x198]
	mov [esp+0x4], eax
	mov [esp], ebx
	call BG_IsProneAnim
	test eax, eax
	jz CG_FireWeapon_840
	mov edx, [ebp-0x288]
	mov eax, [edx+0x458]
	mov [ebp-0x28], eax
	mov eax, [edx+0x464]
	mov [ebp-0x24], eax
CG_FireWeapon_1110:
	mov eax, [ebp+0xc]
	mov edx, [eax+0xcc]
	lea eax, [edx+edx*8]
	mov ecx, eax
	shl ecx, 0x4
	add eax, ecx
	lea eax, [edx+eax*2]
	mov ebx, cgArray
	lea esi, [ebx+eax*4+0xe9f34]
	mov edx, [ebp+0xc]
	mov eax, [edx+0x198]
	mov [esp+0x4], eax
	mov [esp], esi
	call BG_IsAds
	test eax, eax
	setnz al
	mov ecx, eax
	and ecx, 0x1
	mov [ebp-0x27c], ecx
	mov edx, [ebp+0xc]
	add edx, 0x74
	mov eax, [ebp+0xc]
	add eax, 0xe4
	mov ecx, [ebp+0xc]
	movss xmm2, dword [ecx+0xe4]
	subss xmm2, [ecx+0x74]
	movss xmm3, dword [eax+0x4]
	subss xmm3, [edx+0x4]
	movss xmm4, dword [eax+0x8]
	subss xmm4, [edx+0x8]
	mov eax, [ebx+0x24]
	mov edx, [eax+0x8]
	mov eax, [ebx+0x20]
	mov eax, [eax+0x8]
	cmp edx, eax
	jz CG_FireWeapon_850
	sub edx, eax
	cvtsi2ss xmm1, edx
	movss xmm0, dword [_float_1000_00000000]
	divss xmm0, xmm1
	mulss xmm2, xmm0
	mulss xmm3, xmm0
	mulss xmm4, xmm0
CG_FireWeapon_850:
	mulss xmm2, xmm2
	mulss xmm3, xmm3
	addss xmm2, xmm3
	mulss xmm4, xmm4
	addss xmm2, xmm4
	sqrtss xmm1, xmm2
	movss xmm2, dword [_float_255_00000000]
	movaps xmm0, xmm1
	subss xmm0, xmm2
	ucomiss xmm0, [_float_0_00000000]
	jb CG_FireWeapon_860
	movss xmm0, dword [_float_1_00000000]
	movss [ebp-0x280], xmm0
CG_FireWeapon_1160:
	mov eax, [ebp+0xc]
	mov ebx, [eax+0xcc]
	mov byte [ebp-0x19], 0x0
	lea eax, [ebp-0x19]
	mov [esp+0xc], eax
	movzx eax, di
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov edx, [ebp+0x8]
	mov [esp], edx
	call CG_GetBoneIndex
	test eax, eax
	jz CG_FireWeapon_50
	lea eax, [ebp-0x88]
	mov [esp+0xc], eax
	movzx eax, byte [ebp-0x19]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call FX_GetBoneOrientation
	test al, al
	jz CG_FireWeapon_50
	mov ebx, [ebp-0x88]
	mov [ebp-0x40], ebx
	mov ecx, [ebp-0x84]
	mov [ebp-0x3c], ecx
	mov edx, [ebp-0x80]
	mov [ebp-0x38], edx
	mov [ebp-0x4c], ebx
	mov [ebp-0x48], ecx
	mov [ebp-0x44], edx
	lea eax, [ebp-0x64]
	mov [esp+0xc], eax
	lea eax, [ebp-0x70]
	mov [esp+0x8], eax
	lea eax, [ebp-0x7c]
	mov [esp+0x4], eax
	lea eax, [esi+0x3e4]
	mov [esp], eax
	call AngleVectors
	mov byte [ebp-0x26d], 0x0
	jmp CG_FireWeapon_870
CG_FireWeapon_620:
	lea eax, [ebp-0x110]
	mov [esp+0x8], eax
	lea eax, [ebp-0x4c]
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov [esp], edx
	call CG_SpawnTracer
	jmp CG_FireWeapon_660
CG_FireWeapon_540:
	movss xmm0, dword [_float_0_99999988]
	jmp CG_FireWeapon_880
CG_FireWeapon_530:
	lea ecx, [ecx+0x7fffffff]
	jmp CG_FireWeapon_890
CG_FireWeapon_600:
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, xmm1
	movaps xmm1, xmm0
	jmp CG_FireWeapon_900
CG_FireWeapon_590:
	movss xmm0, dword [_float_0_99999988]
	movss [ebp-0x214], xmm0
	jmp CG_FireWeapon_910
CG_FireWeapon_100:
	mov edx, [ebp-0x288]
	mov eax, [edx+0x7b0]
	mov [ebp-0x28], eax
	mov eax, [edx+0x7b0]
	mov [ebp-0x24], eax
	mov byte [ebp-0x19], 0x0
	lea eax, [ebp-0x19]
	mov [esp+0xc], eax
	movzx eax, di
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call CG_GetBoneIndex
	test eax, eax
	jz CG_FireWeapon_50
	lea eax, [ebp-0x88]
	mov [esp+0xc], eax
	movzx eax, byte [ebp-0x19]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call FX_GetBoneOrientation
	test al, al
	jz CG_FireWeapon_50
	mov ebx, [ebp-0x88]
	mov [ebp-0x40], ebx
	mov ecx, [ebp-0x84]
	mov [ebp-0x3c], ecx
	mov edx, [ebp-0x80]
	mov [ebp-0x38], edx
	mov [ebp-0x4c], ebx
	mov [ebp-0x48], ecx
	mov [ebp-0x44], edx
	mov dword [ebp-0x280], 0x3f800000
	mov byte [ebp-0x26d], 0x0
	jmp CG_FireWeapon_920
CG_FireWeapon_410:
	mov eax, 0x2
	jmp CG_FireWeapon_930
CG_FireWeapon_390:
	mov edx, [ebp+0xc]
	mov eax, [edx+0xcc]
	lea ecx, [eax+eax*8]
	mov edx, ecx
	shl edx, 0x4
	add ecx, edx
	lea ecx, [eax+ecx*2]
	mov eax, [ebp-0x40]
	mov [ebp-0x4c], eax
	mov eax, [ebp-0x3c]
	mov [ebp-0x48], eax
	mov eax, [ebp-0x38]
	mov [ebp-0x44], eax
	lea eax, [ebp-0x64]
	mov [esp+0xc], eax
	lea eax, [ebp-0x70]
	mov [esp+0x8], eax
	lea eax, [ebp-0x7c]
	mov [esp+0x4], eax
	lea ecx, [ebx+ecx*4+0xea318]
	mov [esp], ecx
	call AngleVectors
	movss xmm1, dword [_float_30_00000000]
	movss xmm0, dword [ebp-0x7c]
	mulss xmm0, xmm1
	addss xmm0, [ebp-0x4c]
	movss [ebp-0x4c], xmm0
	movss xmm0, dword [ebp-0x78]
	mulss xmm0, xmm1
	addss xmm0, [ebp-0x48]
	movss [ebp-0x48], xmm0
	mulss xmm1, [ebp-0x74]
	addss xmm1, [ebp-0x44]
	movss [ebp-0x44], xmm1
	jmp CG_FireWeapon_940
CG_FireWeapon_700:
	cmp byte [ebp-0x153], 0x0
	jz CG_FireWeapon_950
	cmp byte [ebp-0x1d3], 0x0
	jz CG_FireWeapon_950
	mov byte [ebp-0x259], 0x1
CG_FireWeapon_1030:
	test bl, bl
	jnz CG_FireWeapon_960
	cmp byte [ebp-0x259], 0x0
	jnz CG_FireWeapon_960
	cmp byte [ebp-0x209], 0x0
	jz CG_FireWeapon_660
	cmp byte [ebp-0x154], 0x0
	jnz CG_FireWeapon_970
	movss xmm0, dword [ebp-0x224]
	subss xmm0, [ebp-0x14c]
	movss [ebp-0x224], xmm0
	movss xmm1, dword [ebp-0x228]
	subss xmm1, [ebp-0x148]
	movss [ebp-0x228], xmm1
	movss xmm0, dword [ebp-0x22c]
	subss xmm0, [ebp-0x144]
	movss [ebp-0x22c], xmm0
	mov eax, bullet_penetrationMinFxDist
	mov eax, [eax]
	movss xmm0, dword [eax+0xc]
	movss xmm1, dword [ebp-0x224]
	mulss xmm1, xmm1
	movss [ebp-0x224], xmm1
	movss xmm1, dword [ebp-0x228]
	mulss xmm1, xmm1
	movss [ebp-0x228], xmm1
	movss xmm1, dword [ebp-0x224]
	addss xmm1, [ebp-0x228]
	movss [ebp-0x224], xmm1
	movss xmm1, dword [ebp-0x22c]
	mulss xmm1, xmm1
	movss [ebp-0x22c], xmm1
	movss xmm1, dword [ebp-0x224]
	addss xmm1, [ebp-0x22c]
	mulss xmm0, xmm0
	ucomiss xmm1, xmm0
	jbe CG_FireWeapon_970
	lea eax, [ebp-0x17c]
	mov [esp], eax
	call Trace_GetEntityHitId
	test edi, edi
	jnz CG_FireWeapon_970
	mov edx, [ebp-0x168]
	mov [ebp-0x238], edx
	mov ecx, [ebp-0x288]
	mov ecx, [ecx+0x34c]
	mov [ebp-0x234], ecx
	mov esi, [ebp-0x16c]
	and esi, 0x1f00000
	shr esi, 0x14
	movzx ecx, ax
	mov eax, [ebp+0xc]
	mov ebx, [eax+0xcc]
	mov eax, sv_clientSideBullets
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz CG_FireWeapon_980
	lea eax, [ecx*4]
	mov edx, ecx
	shl edx, 0x5
	sub edx, eax
	mov eax, edx
	shl eax, 0x4
	add edx, eax
	mov eax, edx
	add eax, cg_entitiesArray
	jz CG_FireWeapon_990
	cmp dword [eax+0xd0], 0x1
	jz CG_FireWeapon_1000
CG_FireWeapon_990:
	xor eax, eax
CG_FireWeapon_1240:
	test eax, eax
	jnz CG_FireWeapon_810
CG_FireWeapon_980:
	mov edx, [ebp-0x238]
	mov [esp+0x2c], edx
	mov eax, [ebp-0x234]
	mov [esp+0x28], eax
	mov dword [esp+0x24], 0x0
	mov dword [esp+0x20], 0x29
	mov [esp+0x1c], esi
	lea eax, [ebp-0x178]
	mov [esp+0x18], eax
	lea edx, [ebp-0x14c]
	mov [esp+0x14], edx
	lea eax, [ebp-0x11c]
	mov [esp+0x10], eax
	mov edx, [ebp-0x230]
	mov [esp+0xc], edx
	mov [esp+0x8], ecx
	jmp CG_FireWeapon_1010
CG_FireWeapon_420:
	mov eax, [edx+0x33c]
	mov [ebp-0x278], eax
	mov edx, [ebp-0x288]
	movss xmm0, dword [edx+0x80c]
	movss [ebp-0x260], xmm0
	jmp CG_FireWeapon_1020
CG_FireWeapon_950:
	mov byte [ebp-0x259], 0x0
	jmp CG_FireWeapon_1030
CG_FireWeapon_760:
	cmp byte [ebp-0x209], 0x0
	jnz CG_FireWeapon_970
	jmp CG_FireWeapon_660
CG_FireWeapon_650:
	mov dword [esp+0x14], 0x0
	lea ecx, [ebp-0x14c]
	mov [esp+0x10], ecx
	lea eax, [ebp-0x11c]
	mov [esp+0xc], eax
	mov edx, [ebp+0xc]
	mov eax, [edx+0xcc]
	mov [esp+0x8], eax
	mov ecx, [ebp+0x8]
	mov [esp+0x4], ecx
	lea eax, [ebp-0x17c]
	mov [esp], eax
	call DynEntCl_EntityImpactEvent
	mov dword [esp+0x14], 0x0
	mov edx, [ebp-0x288]
	mov eax, [edx+0x34c]
	mov [esp+0x10], eax
	lea ecx, [ebp-0x14c]
	mov [esp+0xc], ecx
	lea eax, [ebp-0x11c]
	mov [esp+0x8], eax
	mov edx, [ebp+0xc]
	mov eax, [edx+0xcc]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call DynEntCl_DynEntImpactEvent
	mov eax, [ebp-0x168]
	mov [ebp-0x250], eax
	mov edx, [ebp-0x288]
	mov edx, [edx+0x34c]
	mov [ebp-0x24c], edx
	mov ecx, [ebp-0x16c]
	and ecx, 0x1f00000
	shr ecx, 0x14
	movzx ebx, si
	mov eax, [ebp+0xc]
	mov esi, [eax+0xcc]
	mov eax, sv_clientSideBullets
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz CG_FireWeapon_1040
	lea eax, [ebx*4]
	mov edx, ebx
	shl edx, 0x5
	sub edx, eax
	mov eax, edx
	shl eax, 0x4
	add edx, eax
	mov eax, edx
	add eax, cg_entitiesArray
	jz CG_FireWeapon_1050
	cmp dword [eax+0xd0], 0x1
	jz CG_FireWeapon_1060
CG_FireWeapon_1050:
	xor eax, eax
CG_FireWeapon_1080:
	test eax, eax
	jnz CG_FireWeapon_1070
	mov edx, [ebp-0x24c]
CG_FireWeapon_1040:
	mov eax, [ebp-0x250]
	mov [esp+0x2c], eax
	mov [esp+0x28], edx
	mov dword [esp+0x24], 0x0
	mov dword [esp+0x20], 0x29
	mov [esp+0x1c], ecx
	lea eax, [ebp-0x178]
	mov [esp+0x18], eax
	lea ecx, [ebp-0x14c]
	mov [esp+0x14], ecx
	lea eax, [ebp-0x11c]
	mov [esp+0x10], eax
	mov edx, [ebp-0x230]
	mov [esp+0xc], edx
	mov [esp+0x8], ebx
	mov [esp+0x4], esi
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call CG_BulletHitEvent
	jmp CG_FireWeapon_1070
CG_FireWeapon_1060:
	mov eax, 0x1
	jmp CG_FireWeapon_1080
CG_FireWeapon_640:
	lea eax, [ebp-0x14c]
	mov [esp+0x8], eax
	lea eax, [ebp-0x4c]
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov [esp], edx
	call CG_SpawnTracer
	jmp CG_FireWeapon_1090
CG_FireWeapon_840:
	mov ecx, [ebp+0xc]
	mov eax, [ecx+0x198]
	mov [esp+0x4], eax
	mov [esp], ebx
	call BG_IsCrouchingAnim
	test eax, eax
	jz CG_FireWeapon_1100
	mov edx, [ebp-0x288]
	mov eax, [edx+0x454]
	mov [ebp-0x28], eax
	mov eax, [edx+0x460]
	mov [ebp-0x24], eax
	jmp CG_FireWeapon_1110
CG_FireWeapon_710:
	movss xmm0, dword [ebp-0x224]
	subss xmm0, [ebp-0x1cc]
	movss [ebp-0x224], xmm0
	movss xmm1, dword [ebp-0x228]
	subss xmm1, [ebp-0x1c8]
	movss [ebp-0x228], xmm1
	movss xmm0, dword [ebp-0x22c]
	subss xmm0, [ebp-0x1c4]
	movss [ebp-0x22c], xmm0
	movss xmm1, dword [ebp-0x224]
	mulss xmm1, xmm1
	movss xmm0, dword [ebp-0x228]
	mulss xmm0, xmm0
	addss xmm1, xmm0
	movss [ebp-0x224], xmm1
	movss xmm1, dword [ebp-0x22c]
	mulss xmm1, xmm1
	movss xmm0, dword [ebp-0x224]
	addss xmm0, xmm1
	sqrtss xmm1, xmm0
	movss [ebp-0x258], xmm1
	jmp CG_FireWeapon_1120
CG_FireWeapon_690:
	mov dword [esp+0x8], 0x3c23d70a
	lea ecx, [ebp-0x1fc]
	mov [esp+0x4], ecx
	lea eax, [ebp-0xf8]
	mov [esp], eax
	call BG_AdvanceTrace
	jmp CG_FireWeapon_1130
CG_FireWeapon_670:
	mov eax, [eax+0x158]
	lea edx, [eax+eax*8]
	mov ecx, edx
	shl ecx, 0x4
	add edx, ecx
	lea edx, [eax+edx*2]
	shl edx, 0x2
	add edx, cgArray
	test byte [edx+0xe9f60], 0x20
	jz CG_FireWeapon_1140
	mov eax, perk_bulletPenetrationMultiplier
	mov eax, [eax]
	movss xmm0, dword [ebp-0x254]
	mulss xmm0, [eax+0xc]
	movss [ebp-0x254], xmm0
	movaps xmm1, xmm0
	jmp CG_FireWeapon_1150
CG_FireWeapon_860:
	divss xmm1, xmm2
	movss [ebp-0x280], xmm1
	jmp CG_FireWeapon_1160
CG_FireWeapon_1100:
	mov ecx, [ebp-0x288]
	mov eax, [ecx+0x450]
	mov [ebp-0x28], eax
	mov eax, [ecx+0x45c]
	mov [ebp-0x24], eax
	jmp CG_FireWeapon_1110
CG_FireWeapon_770:
	mov eax, [ebp-0x1e8]
	mov [ebp-0x248], eax
	mov edx, [ebp-0x288]
	mov edx, [edx+0x34c]
	mov [ebp-0x244], edx
	mov ecx, [ebp-0x1ec]
	and ecx, 0x1f00000
	shr ecx, 0x14
	movzx esi, si
	mov eax, [ebp+0xc]
	mov ebx, [eax+0xcc]
	mov eax, sv_clientSideBullets
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz CG_FireWeapon_1170
	lea eax, [esi*4]
	mov edx, esi
	shl edx, 0x5
	sub edx, eax
	mov eax, edx
	shl eax, 0x4
	add edx, eax
	mov eax, edx
	add eax, cg_entitiesArray
	jz CG_FireWeapon_1180
	cmp dword [eax+0xd0], 0x1
	jz CG_FireWeapon_1190
CG_FireWeapon_1180:
	xor eax, eax
CG_FireWeapon_1210:
	test eax, eax
	jz CG_FireWeapon_1170
CG_FireWeapon_1220:
	cmp byte [ebp-0x209], 0x0
	jz CG_FireWeapon_660
	mov eax, [ebp-0x16c]
	jmp CG_FireWeapon_1200
CG_FireWeapon_1190:
	mov eax, 0x1
	jmp CG_FireWeapon_1210
CG_FireWeapon_750:
	ucomiss xmm2, xmm1
	jae CG_FireWeapon_660
	movss [ebp-0x254], xmm1
	jmp CG_FireWeapon_720
CG_FireWeapon_1170:
	mov edx, [ebp-0x248]
	mov [esp+0x2c], edx
	mov eax, [ebp-0x244]
	mov [esp+0x28], eax
	mov dword [esp+0x24], 0x4
	mov dword [esp+0x20], 0x29
	mov [esp+0x1c], ecx
	lea eax, [ebp-0x104]
	mov [esp+0x18], eax
	lea eax, [ebp-0x1cc]
	mov [esp+0x14], eax
	lea eax, [ebp-0xdc]
	mov [esp+0x10], eax
	mov edx, [ebp-0x230]
	mov [esp+0xc], edx
	mov [esp+0x8], esi
	mov [esp+0x4], ebx
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call CG_BulletHitEvent
	jmp CG_FireWeapon_1220
CG_FireWeapon_740:
	mov eax, [ebp-0x1bc]
	mov [esp+0x4], eax
	mov ecx, [ebp-0x288]
	mov [esp], ecx
	call BG_GetSurfacePenetrationDepth
	fstp dword [ebp-0x2ac]
	movss xmm1, dword [ebp-0x2ac]
	mov eax, perk_bulletPenetrationMultiplier
	mov eax, [eax]
	mulss xmm1, [eax+0xc]
	jmp CG_FireWeapon_1230
CG_FireWeapon_1000:
	mov eax, 0x1
	jmp CG_FireWeapon_1240
	add [eax], al


;CG_JavelinADS(int)
CG_JavelinADS:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, cgArray
	lea eax, [ebx+0x4613c]
	mov [esp], eax
	call BG_GetViewmodelWeaponIndex
	test eax, eax
	jle CG_JavelinADS_10
	movss xmm0, dword [_float_1_00000000]
	ucomiss xmm0, [ebx+0x46230]
	jz CG_JavelinADS_20
CG_JavelinADS_10:
	xor eax, eax
CG_JavelinADS_30:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
CG_JavelinADS_20:
	jp CG_JavelinADS_10
	mov [esp], eax
	call BG_GetWeaponDef
	cmp dword [eax+0x43c], 0x1
	jnz CG_JavelinADS_10
	mov eax, 0x1
	jmp CG_JavelinADS_30


;CG_SpawnTracer(int, float const*, float const*)
CG_SpawnTracer:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov eax, [ebp+0xc]
	mov edx, [ebp+0x10]
	movss xmm0, dword [eax]
	movss [ebp-0x28], xmm0
	movss xmm1, dword [eax+0x4]
	movss [ebp-0x2c], xmm1
	movss xmm0, dword [eax+0x8]
	movss [ebp-0x30], xmm0
	movss xmm5, dword [edx]
	subss xmm5, [ebp-0x28]
	movss xmm4, dword [edx+0x4]
	subss xmm4, xmm1
	movss xmm3, dword [edx+0x8]
	subss xmm3, xmm0
	movaps xmm0, xmm5
	mulss xmm0, xmm5
	movaps xmm1, xmm4
	mulss xmm1, xmm4
	addss xmm0, xmm1
	movaps xmm1, xmm3
	mulss xmm1, xmm3
	addss xmm0, xmm1
	sqrtss xmm2, xmm0
	movaps xmm0, xmm2
	xorps xmm0, [g_fltMin__uint4+0xb0]
	ucomiss xmm0, [_float_0_00000000]
	jb CG_SpawnTracer_10
	movss xmm1, dword [_float_1_00000000]
CG_SpawnTracer_40:
	mulss xmm5, xmm1
	movss [ebp-0x1c], xmm5
	mulss xmm4, xmm1
	movss [ebp-0x20], xmm4
	mulss xmm3, xmm1
	movss [ebp-0x24], xmm3
	mov eax, [ebp+0x8]
	mov [esp], eax
	movss [ebp-0x48], xmm2
	call CG_AllocLocalEntity
	mov ebx, eax
	mov dword [eax+0x8], 0x0
	movss xmm2, dword [ebp-0x48]
	movss [eax+0x44], xmm2
	mov esi, cgArray
	mov edi, [esi+0x46128]
	mov eax, [esi+0x46124]
	test eax, eax
	jnz CG_SpawnTracer_20
	xor eax, eax
CG_SpawnTracer_30:
	mov edx, edi
	sub edx, eax
	mulss xmm2, [_float_1000_00000000]
	mov ecx, cg_tracerSpeed
	mov eax, [ecx]
	divss xmm2, dword [eax+0xc]
	cvttss2si eax, xmm2
	lea eax, [edx+eax]
	mov [ebx+0xc], eax
	mov dword [ebx+0x10], 0x2
	mov [ebx+0x14], edx
	lea eax, [ebx+0x1c]
	movss xmm1, dword [ebp-0x28]
	movss [ebx+0x1c], xmm1
	movss xmm0, dword [ebp-0x2c]
	movss [eax+0x4], xmm0
	movss xmm1, dword [ebp-0x30]
	movss [eax+0x8], xmm1
	lea edx, [ebx+0x28]
	mov eax, [ecx]
	movss xmm0, dword [eax+0xc]
	movss xmm1, dword [ebp-0x1c]
	mulss xmm1, xmm0
	movss [ebx+0x28], xmm1
	movss xmm1, dword [ebp-0x20]
	mulss xmm1, xmm0
	movss [edx+0x4], xmm1
	mulss xmm0, [ebp-0x24]
	movss [edx+0x8], xmm0
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_SpawnTracer_20:
	movss [ebp-0x48], xmm2
	call ms_rand
	cdq
	idiv dword [esi+0x46124]
	mov eax, edx
	shr eax, 0x1f
	add eax, edx
	sar eax, 1
	movss xmm2, dword [ebp-0x48]
	jmp CG_SpawnTracer_30
CG_SpawnTracer_10:
	movss xmm1, dword [_float_1_00000000]
	divss xmm1, xmm2
	jmp CG_SpawnTracer_40


;CG_CalcEyePoint(int, int, float*)
CG_CalcEyePoint:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0xc]
	mov ebx, [ebp+0x10]
	mov dword [esp], 0x0
	call CL_IsLocalClientActive
	test al, al
	jz CG_CalcEyePoint_10
	mov eax, cgArray
	mov edx, [eax+0x24]
	test byte [edx+0x20], 0x6
	jnz CG_CalcEyePoint_20
CG_CalcEyePoint_70:
	xor edx, edx
CG_CalcEyePoint_80:
	test edx, edx
	jnz CG_CalcEyePoint_30
CG_CalcEyePoint_10:
	lea edx, [esi*4]
	mov eax, esi
	shl eax, 0x5
	sub eax, edx
	mov edx, eax
	shl edx, 0x4
	lea ecx, [eax+edx]
	add ecx, cg_entitiesArray
	lea edx, [ecx+0xe4]
	mov eax, [ecx+0xe4]
	mov [ebx], eax
	mov eax, [edx+0x4]
	mov [ebx+0x4], eax
	movss xmm0, dword [edx+0x8]
	movss [ebx+0x8], xmm0
	cmp esi, 0x3f
	jg CG_CalcEyePoint_40
	mov eax, [ecx+0xd4]
	test al, 0x8
	jnz CG_CalcEyePoint_50
	test al, 0x4
	jnz CG_CalcEyePoint_60
	addss xmm0, [_float_60_00000000]
	movss [ebx+0x8], xmm0
CG_CalcEyePoint_40:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
CG_CalcEyePoint_50:
	addss xmm0, [_float_11_00000000]
	movss [ebx+0x8], xmm0
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
CG_CalcEyePoint_20:
	cmp esi, [edx+0xe8]
	jnz CG_CalcEyePoint_70
	mov edx, 0x1
	jmp CG_CalcEyePoint_80
CG_CalcEyePoint_60:
	addss xmm0, [_float_40_00000000]
	movss [ebx+0x8], xmm0
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
CG_CalcEyePoint_30:
	lea edx, [eax+0x492e0]
	mov eax, [eax+0x492e0]
	mov [ebx], eax
	mov eax, [edx+0x4]
	mov [ebx+0x4], eax
	mov eax, [edx+0x8]
	mov [ebx+0x8], eax
	jmp CG_CalcEyePoint_40
	nop


;CG_NextWeapon_f()
CG_NextWeapon_f:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ecx, cgArray
	mov ebx, [ecx+0x24]
	test ebx, ebx
	jz CG_NextWeapon_f_10
	test dword [ecx+0x46148], 0xc00
	jnz CG_NextWeapon_f_10
	cmp byte [ecx+0x4614c], 0x0
	js CG_NextWeapon_f_10
	mov esi, [ecx+0x46128]
	mov eax, esi
	sub eax, [ecx+0x50370]
	mov edx, cg_weaponCycleDelay
	mov edx, [edx]
	cmp eax, [edx+0xc]
	jge CG_NextWeapon_f_20
CG_NextWeapon_f_10:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
CG_NextWeapon_f_20:
	test byte [ebx+0x20], 0x4
	jz CG_NextWeapon_f_10
	mov [ecx+0x50370], esi
	mov dword [esp+0x4], 0x1
	mov dword [esp], 0x0
	call CG_MenuShowNotify
	xor ecx, ecx
	mov edx, 0x1
	xor eax, eax
	call CycleWeapPrimary
	jmp CG_NextWeapon_f_10


;CG_PrevWeapon_f()
CG_PrevWeapon_f:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov ecx, cgArray
	mov ebx, [ecx+0x24]
	test ebx, ebx
	jz CG_PrevWeapon_f_10
	test dword [ecx+0x46148], 0xc00
	jnz CG_PrevWeapon_f_10
	cmp byte [ecx+0x4614c], 0x0
	js CG_PrevWeapon_f_10
	mov esi, [ecx+0x46128]
	mov eax, esi
	sub eax, [ecx+0x50370]
	mov edx, cg_weaponCycleDelay
	mov edx, [edx]
	cmp eax, [edx+0xc]
	jge CG_PrevWeapon_f_20
CG_PrevWeapon_f_10:
	pop ebx
	pop esi
	pop ebp
	ret
CG_PrevWeapon_f_20:
	test byte [ebx+0x20], 0x4
	jz CG_PrevWeapon_f_10
	mov [ecx+0x50370], esi
	xor ecx, ecx
	xor edx, edx
	xor eax, eax
	call CycleWeapPrimary
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;CG_AddViewWeapon(int)
CG_AddViewWeapon:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x17c
	mov edi, cgArray
	xor eax, eax
	mov [edi+0x49328], eax
	mov [edi+0x4932c], eax
	mov eax, [edi+0x46140]
	sub eax, 0x4
	cmp eax, 0x1
	jbe CG_AddViewWeapon_10
	mov ebx, [edi+0x46138]
	test ebx, ebx
	jnz CG_AddViewWeapon_10
	mov ecx, [edi+0xc]
	test ecx, ecx
	jz CG_AddViewWeapon_20
CG_AddViewWeapon_40:
	mov dword [ebp-0x140], 0x0
CG_AddViewWeapon_50:
	test dword [edi+0x461ec], 0x300
	jz CG_AddViewWeapon_30
CG_AddViewWeapon_10:
	add esp, 0x17c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_AddViewWeapon_20:
	mov eax, cg_drawGun
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz CG_AddViewWeapon_40
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov [esp], edi
	call CG_GetWeapReticleZoom
	test al, al
	jnz CG_AddViewWeapon_40
	mov dword [ebp-0x140], 0x1
	jmp CG_AddViewWeapon_50
CG_AddViewWeapon_30:
	lea ebx, [edi+0x4613c]
	mov [esp], ebx
	call BG_GetViewmodelWeaponIndex
	mov [ebp-0x13c], eax
	test eax, eax
	jle CG_AddViewWeapon_60
	mov [esp], ebx
	call BG_GetViewmodelWeaponIndex
	mov [esp], eax
	call BG_GetWeaponDef
	mov ecx, eax
	mov edx, [edi+0x504d4]
	add edx, [edi+0x504d8]
	sub edx, [edi+0x46128]
	test edx, edx
	jle CG_AddViewWeapon_70
	mov eax, [edi+0x504d0]
	mov eax, [eax+0x14]
	cmp edx, eax
	jl CG_AddViewWeapon_80
	movss xmm3, dword [_float_1_00000000]
	movaps xmm2, xmm3
	movss xmm0, dword [_float__2_00000000]
CG_AddViewWeapon_240:
	movaps xmm1, xmm0
	addss xmm1, [_float_3_00000000]
	mulss xmm1, xmm2
	mulss xmm1, xmm2
	movss xmm0, dword [ecx+0x4c4]
	subss xmm0, xmm3
	mulss xmm1, xmm0
	addss xmm1, xmm3
CG_AddViewWeapon_280:
	mov esi, cgArray
	mov eax, [esi+0x46124]
	mov [esp+0x14], eax
	movss [esp+0x10], xmm1
	lea eax, [esi+0x4d384]
	mov [esp+0xc], eax
	lea eax, [esi+0x4d390]
	mov [esp+0x8], eax
	lea eax, [esi+0x4d378]
	mov [esp+0x4], eax
	lea ebx, [esi+0x4613c]
	mov [esp], ebx
	call BG_CalculateWeaponPosition_Sway
	mov [esp], ebx
	call BG_GetViewmodelWeaponIndex
	mov [esp], eax
	call BG_IsAimDownSightWeapon
	test eax, eax
	jz CG_AddViewWeapon_90
	movss xmm0, dword [esi+0x46230]
	ucomiss xmm0, [_float_1_00000000]
	jz CG_AddViewWeapon_100
CG_AddViewWeapon_250:
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jnz CG_AddViewWeapon_110
	jp CG_AddViewWeapon_110
	mov edi, cgArray
	mov dword [edi+0x49280], 0x1
	jmp CG_AddViewWeapon_120
CG_AddViewWeapon_60:
	mov eax, [edi+0x4d360]
	mov [edi+0x50434], eax
	mov eax, [edi+0x4d364]
	mov [edi+0x50438], eax
	xor eax, eax
	mov [edi+0x5043c], eax
	mov [edi+0x50440], eax
	mov [edi+0x50444], eax
	add esp, 0x17c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_AddViewWeapon_90:
	mov edi, esi
	pxor xmm1, xmm1
CG_AddViewWeapon_260:
	mov dword [ebp-0x5c], 0x0
	mov dword [ebp-0x58], 0x0
	mov dword [ebp-0x54], 0x0
	movss xmm0, dword [edi+0x46198]
	ucomiss xmm0, xmm1
	jp CG_AddViewWeapon_130
	jz CG_AddViewWeapon_140
CG_AddViewWeapon_130:
	movss xmm1, dword [_float_1_00000000]
	ucomiss xmm1, [edi+0x46230]
	ja CG_AddViewWeapon_150
CG_AddViewWeapon_140:
	mov dword [ebp-0x40], 0x0
	mov dword [ebp-0x3c], 0x0
	mov dword [ebp-0x38], 0x0
	lea ebx, [ebp-0x40]
	mov [esp+0x4], ebx
	mov [esp], edi
	call CalculateWeaponPosition_BasePosition_movement
	movss xmm2, dword [ebp-0x40]
	movss [edi+0x49284], xmm2
	movss xmm1, dword [ebp-0x3c]
	movss [edi+0x49288], xmm1
	movss xmm0, dword [ebp-0x38]
	movss [edi+0x4928c], xmm0
	addss xmm2, [ebp-0x5c]
	movss [ebp-0x5c], xmm2
	addss xmm1, [ebp-0x58]
	movss [ebp-0x58], xmm1
	addss xmm0, [ebp-0x54]
	movss [ebp-0x54], xmm0
	subss xmm1, [edi+0x4d394]
	movss [ebp-0x58], xmm1
	addss xmm0, [edi+0x4d398]
	movss [ebp-0x54], xmm0
	movss [ebp-0x40], xmm2
	movss [ebp-0x3c], xmm1
	movss [ebp-0x38], xmm0
	lea eax, [ebp-0x5c]
	mov [esp+0x8], eax
	lea eax, [edi+0x50460]
	mov [esp+0x4], eax
	mov [esp], ebx
	call MatrixTransformVector43
	mov edx, [edi+0x46128]
	sub edx, [edi+0x492c0]
	cmp edx, 0x95
	jg CG_AddViewWeapon_160
	movss xmm0, dword [_float_0_25000000]
	mulss xmm0, [edi+0x492bc]
	cvtsi2ss xmm1, edx
	mulss xmm0, xmm1
	divss xmm0, dword [_float_150_00000000]
	addss xmm0, [ebp-0x54]
	movss [ebp-0x54], xmm0
CG_AddViewWeapon_200:
	mov ebx, cgArray
	lea eax, [ebx+0x4613c]
	mov [esp], eax
	call BG_GetViewmodelWeaponIndex
	mov [esp], eax
	call BG_IsAimDownSightWeapon
	test eax, eax
	jz CG_AddViewWeapon_170
	movss xmm1, dword [ebx+0x46230]
	ucomiss xmm1, [_float_0_00000000]
	jp CG_AddViewWeapon_180
	jnz CG_AddViewWeapon_180
	mov edi, cgArray
	mov dword [edi+0x5043c], 0x0
	mov dword [edi+0x50440], 0x0
	mov dword [edi+0x50444], 0x0
	jmp CG_AddViewWeapon_190
CG_AddViewWeapon_160:
	cmp edx, 0x1c1
	jg CG_AddViewWeapon_200
	movss xmm0, dword [_float_0_25000000]
	mulss xmm0, [edi+0x492bc]
	mov eax, 0x1c2
	sub eax, edx
	cvtsi2ss xmm1, eax
	mulss xmm0, xmm1
	divss xmm0, dword [_float_300_00000000]
	addss xmm0, [ebp-0x54]
	movss [ebp-0x54], xmm0
	jmp CG_AddViewWeapon_200
CG_AddViewWeapon_170:
	xor eax, eax
	mov [ebx+0x5043c], eax
	mov [ebx+0x50440], eax
	mov [ebx+0x50444], eax
	mov edi, ebx
CG_AddViewWeapon_190:
	mov eax, cg_gun_x
	mov eax, [eax]
	movss xmm1, dword [eax+0xc]
	movaps xmm0, xmm1
	mulss xmm0, [edi+0x50460]
	addss xmm0, [ebp-0x5c]
	movss [ebp-0x5c], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [edi+0x50464]
	addss xmm0, [ebp-0x58]
	movss [ebp-0x58], xmm0
	mulss xmm1, [edi+0x50468]
	addss xmm1, [ebp-0x54]
	movss [ebp-0x54], xmm1
	mov eax, cg_gun_y
	mov eax, [eax]
	movss xmm1, dword [eax+0xc]
	movaps xmm0, xmm1
	mulss xmm0, [edi+0x5046c]
	addss xmm0, [ebp-0x5c]
	movss [ebp-0x5c], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [edi+0x50470]
	addss xmm0, [ebp-0x58]
	movss [ebp-0x58], xmm0
	mulss xmm1, [edi+0x50474]
	addss xmm1, [ebp-0x54]
	movss [ebp-0x54], xmm1
	mov eax, cg_gun_z
	mov eax, [eax]
	movss xmm1, dword [eax+0xc]
	movaps xmm0, xmm1
	mulss xmm0, [edi+0x50478]
	addss xmm0, [ebp-0x5c]
	movss [ebp-0x5c], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [edi+0x5047c]
	addss xmm0, [ebp-0x58]
	movss [ebp-0x58], xmm0
	mulss xmm1, [edi+0x50480]
	addss xmm1, [ebp-0x54]
	movss [ebp-0x54], xmm1
	lea eax, [edi+0x4613c]
	mov [ebp-0x12c], eax
	mov eax, [edi+0x5040c]
	mov [ebp-0x128], eax
	cvtsi2ss xmm0, dword [edi+0x46124]
	mulss xmm0, [_float_0_00100000]
	movss [ebp-0x124], xmm0
	mov eax, [edi+0x492a0]
	mov [ebp-0x120], eax
	mov eax, [edi+0x492a4]
	mov [ebp-0x11c], eax
	mov eax, [edi+0x492a8]
	mov [ebp-0x118], eax
	mov eax, [edi+0x49290]
	mov [ebp-0x114], eax
	mov edx, [edi+0x469d8]
	mov eax, [edi+0x46128]
	sub eax, edx
	mov [ebp-0x110], eax
	mov eax, [edi+0x503e0]
	test eax, eax
	jz CG_AddViewWeapon_210
	sub eax, edx
CG_AddViewWeapon_210:
	mov [ebp-0x10c], eax
	mov eax, [edi+0x50400]
	mov [ebp-0x108], eax
	mov eax, [edi+0x50404]
	mov [ebp-0x104], eax
	mov eax, [edi+0x50448]
	mov [ebp-0x100], eax
	mov eax, [edi+0x5044c]
	mov [ebp-0xfc], eax
	mov eax, [edi+0x50450]
	mov [ebp-0xf8], eax
	mov eax, [edi+0x50454]
	mov [ebp-0xf4], eax
	mov eax, [edi+0x50458]
	mov [ebp-0xf0], eax
	mov eax, [edi+0x5045c]
	mov [ebp-0xec], eax
	mov eax, [edi+0x4d384]
	mov [ebp-0xe8], eax
	mov eax, [edi+0x4d388]
	mov [ebp-0xe4], eax
	mov eax, [edi+0x4d38c]
	mov [ebp-0xe0], eax
	lea eax, [edi+0x503f4]
	mov [ebp-0xdc], eax
	lea eax, [ebp-0x34]
	mov [esp+0x4], eax
	lea eax, [ebp-0x12c]
	mov [esp], eax
	call BG_CalculateWeaponAngles
	lea eax, [ebp-0xb4]
	mov [esp+0x4], eax
	lea eax, [ebp-0x34]
	mov [esp], eax
	call AnglesToAxis
	lea ebx, [ebp-0x90]
	mov [esp+0x4], ebx
	lea eax, [edi+0x46244]
	mov [esp], eax
	call AnglesToAxis
	lea esi, [ebp-0xd8]
	mov [esp+0x8], esi
	mov [esp+0x4], ebx
	lea eax, [ebp-0xb4]
	mov [esp], eax
	call MatrixMultiply
	lea eax, [ebp-0x6c]
	mov [esp+0x4], eax
	mov [esp], esi
	call AxisToQuat
	mov eax, [ebp-0x13c]
	mov [esp], eax
	call BG_GetWeaponDef
	mov ebx, eax
	mov eax, [edi+0x46224]
	mov [esp], eax
	call BG_IsAimDownSightWeapon
	test eax, eax
	jz CG_AddViewWeapon_220
	pxor xmm0, xmm0
	ucomiss xmm0, [edi+0x46230]
	jp CG_AddViewWeapon_230
	jnz CG_AddViewWeapon_230
CG_AddViewWeapon_220:
	mov edi, cgArray
	mov eax, [edi+0x4d360]
	mov [edi+0x50434], eax
	mov eax, [edi+0x4d364]
	mov [edi+0x50438], eax
CG_AddViewWeapon_270:
	mov eax, [ebp-0x120]
	mov [edi+0x492a0], eax
	mov eax, [ebp-0x11c]
	mov [edi+0x492a4], eax
	mov eax, [ebp-0x118]
	mov [edi+0x492a8], eax
	mov eax, [ebp-0x114]
	mov [edi+0x49290], eax
	mov eax, [ebp-0x100]
	mov [edi+0x50448], eax
	mov eax, [ebp-0xfc]
	mov [edi+0x5044c], eax
	mov eax, [ebp-0xf8]
	mov [edi+0x50450], eax
	mov eax, [ebp-0xf4]
	mov [edi+0x50454], eax
	mov eax, [ebp-0xf0]
	mov [edi+0x50458], eax
	mov eax, [ebp-0xec]
	mov [edi+0x5045c], eax
	mov dword [ebp-0x50], 0x3f800000
	mov eax, [ebp-0x140]
	mov [esp+0x10], eax
	lea eax, [edi+0x490a0]
	mov [esp+0xc], eax
	lea eax, [edi+0x4613c]
	mov [esp+0x8], eax
	lea eax, [ebp-0x6c]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_AddPlayerWeapon
	add esp, 0x17c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_AddViewWeapon_80:
	cvtsi2ss xmm2, edx
	cvtsi2ss xmm0, eax
	divss xmm2, xmm0
	movaps xmm0, xmm2
	mulss xmm0, [_float__2_00000000]
	movss xmm3, dword [_float_1_00000000]
	jmp CG_AddViewWeapon_240
CG_AddViewWeapon_100:
	jp CG_AddViewWeapon_250
	mov dword [esi+0x49280], 0x0
	mov edi, esi
	pxor xmm1, xmm1
CG_AddViewWeapon_120:
	mov eax, [edi+0x46230]
	mov [edi+0x4927c], eax
	jmp CG_AddViewWeapon_260
CG_AddViewWeapon_230:
	mov edx, [ebx+0x438]
	test edx, edx
	jnz CG_AddViewWeapon_220
	lea eax, [ebp-0x34]
	mov [esp+0x4], eax
	lea eax, [ebp-0x6c]
	mov [esp], eax
	call UnitQuatToAngles
	mov eax, [ebp-0x34]
	mov [esp], eax
	call AngleNormalize360
	fstp dword [edi+0x50434]
	mov eax, [ebp-0x30]
	mov [esp], eax
	call AngleNormalize360
	fstp dword [edi+0x50438]
	mov edi, cgArray
	jmp CG_AddViewWeapon_270
CG_AddViewWeapon_180:
	movss xmm0, dword [ebp-0x5c]
	subss xmm0, [ebx+0x492e0]
	mulss xmm0, xmm1
	movss [ebx+0x5043c], xmm0
	movss xmm0, dword [ebp-0x58]
	subss xmm0, [ebx+0x492e4]
	mulss xmm0, xmm1
	movss [ebx+0x50440], xmm0
	movss xmm0, dword [ebp-0x54]
	subss xmm0, [ebx+0x492e8]
	mulss xmm1, xmm0
	movss [ebx+0x50444], xmm1
	mov edi, ebx
	jmp CG_AddViewWeapon_190
CG_AddViewWeapon_70:
	movss xmm1, dword [_float_1_00000000]
	jmp CG_AddViewWeapon_280
CG_AddViewWeapon_110:
	mov edi, cgArray
	jmp CG_AddViewWeapon_120
CG_AddViewWeapon_150:
	mov dword [ebp-0x28], 0x0
	mov dword [ebp-0x24], 0x0
	mov dword [ebp-0x20], 0x0
	movss [esp], xmm0
	call GetLeanFraction
	fstp dword [ebp-0x15c]
	movss xmm2, dword [ebp-0x15c]
	movaps xmm0, xmm2
	mulss xmm0, [_float__2_00000000]
	addss xmm0, [ebp-0x20]
	movss [ebp-0x20], xmm0
	movss xmm1, dword [_float_1_00000000]
	subss xmm1, [edi+0x46230]
	mulss xmm1, xmm2
	mulss xmm1, [_float_1_60000002]
	mov dword [esp+0xc], 0x0
	lea eax, [ebp-0x4c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	lea eax, [ebp-0x28]
	mov [esp], eax
	movss [ebp-0x158], xmm1
	call AngleVectors
	movss xmm1, dword [ebp-0x158]
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x4c]
	addss xmm0, [ebp-0x5c]
	movss [ebp-0x5c], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x48]
	addss xmm0, [ebp-0x58]
	movss [ebp-0x58], xmm0
	mulss xmm1, [ebp-0x44]
	addss xmm1, [ebp-0x54]
	movss [ebp-0x54], xmm1
	mov edi, cgArray
	jmp CG_AddViewWeapon_140


;CG_RegisterItems(int)
CG_RegisterItems:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x90
	mov esi, [ebp+0x8]
	mov dword [esp+0x4], 0x90a
	mov [esp], esi
	call CL_GetConfigString
	mov [esp+0x4], eax
	lea eax, [ebp-0x88]
	mov [esp], eax
	call strcpy
	mov ebx, 0x1
	jmp CG_RegisterItems_10
CG_RegisterItems_50:
	sub eax, 0x30
	mov ecx, ebx
	and ecx, 0x3
	sar eax, cl
	test al, 0x1
	jnz CG_RegisterItems_20
CG_RegisterItems_60:
	add ebx, 0x1
	cmp ebx, 0x80
	jz CG_RegisterItems_30
CG_RegisterItems_10:
	mov eax, ebx
	test ebx, ebx
	js CG_RegisterItems_40
CG_RegisterItems_70:
	sar eax, 0x2
	movsx eax, byte [ebp+eax-0x88]
	cmp eax, 0x39
	jle CG_RegisterItems_50
	sub eax, 0x57
	mov ecx, ebx
	and ecx, 0x3
	sar eax, cl
	test al, 0x1
	jz CG_RegisterItems_60
CG_RegisterItems_20:
	mov [esp+0x4], ebx
	mov [esp], esi
	call CG_RegisterWeapon
	add ebx, 0x1
	cmp ebx, 0x80
	jnz CG_RegisterItems_10
CG_RegisterItems_30:
	add esp, 0x90
	pop ebx
	pop esi
	pop ebp
	ret
CG_RegisterItems_40:
	lea eax, [ebx+0x3]
	jmp CG_RegisterItems_70
	add [eax], al


;CG_ActionSlotUp_f()
CG_ActionSlotUp_f:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov edx, cgArray
	mov ecx, [edx+0x24]
	test ecx, ecx
	jz CG_ActionSlotUp_f_10
	mov eax, [edx+0x46228]
	sub eax, 0x3
	cmp eax, 0x1
	jbe CG_ActionSlotUp_f_10
	test dword [edx+0x46148], 0xc00
	jz CG_ActionSlotUp_f_20
CG_ActionSlotUp_f_10:
	leave
	ret
CG_ActionSlotUp_f_20:
	cmp byte [edx+0x4614c], 0x0
	js CG_ActionSlotUp_f_10
	test byte [ecx+0x20], 0x4
	jz CG_ActionSlotUp_f_10
	lea eax, [ebp-0xc]
	call ActionParms
	leave
	ret


;CG_BulletHitEvent(int, int, int, int, float const*, float const*, float const*, int, int, unsigned char, int, int)
CG_BulletHitEvent:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov edi, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov ebx, [ebp+0x10]
	movzx eax, byte [ebp+0x2c]
	mov [ebp-0x39], al
	mov eax, sv_clientSideBullets
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz CG_BulletHitEvent_10
	lea eax, [ebx*4]
	mov edx, ebx
	shl edx, 0x5
	sub edx, eax
	mov eax, edx
	shl eax, 0x4
	add edx, eax
	mov eax, edx
	add eax, cg_entitiesArray
	jz CG_BulletHitEvent_20
	cmp dword [eax+0xd0], 0x1
	jz CG_BulletHitEvent_30
CG_BulletHitEvent_20:
	xor eax, eax
CG_BulletHitEvent_60:
	test eax, eax
	jnz CG_BulletHitEvent_40
CG_BulletHitEvent_10:
	mov eax, [ebp+0x34]
	mov [esp+0x20], eax
	mov eax, [ebp+0x30]
	mov [esp+0x1c], eax
	movzx eax, byte [ebp-0x39]
	mov [esp+0x18], eax
	mov eax, [ebp+0x28]
	mov [esp+0x14], eax
	mov eax, [ebp+0x24]
	mov [esp+0x10], eax
	mov eax, [ebp+0x20]
	mov [esp+0xc], eax
	mov eax, [ebp+0x1c]
	mov [esp+0x8], eax
	mov eax, [ebp+0x18]
	mov [esp+0x4], eax
	mov eax, [ebp+0x14]
	mov [esp], eax
	mov ecx, ebx
	mov edx, esi
	mov eax, edi
	call CG_BulletHitEvent_Internal
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_BulletHitEvent_40:
	lea ecx, [ebp-0x30]
	mov eax, scr_const
	movzx eax, word [eax+0x90]
	mov [esp], eax
	mov edx, esi
	mov eax, edi
	call CalcMuzzlePoint
	test eax, eax
	jz CG_BulletHitEvent_10
	mov eax, [ebp+0x1c]
	movss xmm3, dword [eax]
	subss xmm3, [ebp-0x30]
	movss [ebp-0x24], xmm3
	movss xmm1, dword [eax+0x4]
	subss xmm1, [ebp-0x2c]
	movss [ebp-0x20], xmm1
	movss xmm0, dword [eax+0x8]
	subss xmm0, [ebp-0x28]
	movss [ebp-0x1c], xmm0
	movaps xmm2, xmm3
	mulss xmm2, xmm3
	mulss xmm1, xmm1
	addss xmm2, xmm1
	mulss xmm0, xmm0
	addss xmm2, xmm0
	sqrtss xmm2, xmm2
	movaps xmm0, xmm2
	xorps xmm0, [_data16_80000000]
	ucomiss xmm0, [_float_0_00000000]
	jb CG_BulletHitEvent_50
	movss xmm1, dword [_float_1_00000000]
CG_BulletHitEvent_70:
	mulss xmm3, xmm1
	movss [ebp-0x24], xmm3
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x20]
	movss [ebp-0x20], xmm0
	mulss xmm1, [ebp-0x1c]
	movss [ebp-0x1c], xmm1
	mov eax, [ebp+0x34]
	mov [esp+0x20], eax
	mov eax, [ebp+0x30]
	mov [esp+0x1c], eax
	movzx eax, byte [ebp-0x39]
	or al, 0x4
	movzx eax, al
	mov [esp+0x18], eax
	mov eax, [ebp+0x28]
	mov [esp+0x14], eax
	mov eax, [ebp+0x24]
	mov [esp+0x10], eax
	lea eax, [ebp-0x24]
	mov [esp+0xc], eax
	mov eax, [ebp+0x1c]
	mov [esp+0x8], eax
	mov eax, [ebp+0x18]
	mov [esp+0x4], eax
	mov eax, [ebp+0x14]
	mov [esp], eax
	mov ecx, ebx
	mov edx, esi
	mov eax, edi
	call CG_BulletHitEvent_Internal
	jmp CG_BulletHitEvent_10
CG_BulletHitEvent_30:
	mov eax, 0x1
	jmp CG_BulletHitEvent_60
CG_BulletHitEvent_50:
	movss xmm1, dword [_float_1_00000000]
	divss xmm1, xmm2
	jmp CG_BulletHitEvent_70
	nop


;CG_HoldBreathInit(cg_s*)
CG_HoldBreathInit:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov dword [eax+0x504f8], 0xffffffff
	mov dword [eax+0x504fc], 0x0
	mov dword [eax+0x50500], 0x0
	mov dword [eax+0x50504], 0x0
	pop ebp
	ret
	add [eax], al


;CG_RegisterWeapon(int, int)
CG_RegisterWeapon:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov eax, [ebp+0xc]
	mov [removeMeWhenMPStopsCrashingInHere], eax
	test eax, eax
	jnz CG_RegisterWeapon_10
CG_RegisterWeapon_20:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_RegisterWeapon_10:
	mov edx, eax
	mov ebx, eax
	shl ebx, 0x2
	shl eax, 0x6
	lea edi, [ebx+eax]
	add edi, cg_weaponsArray
	mov [esp], edx
	call BG_GetWeaponDef
	mov [ebp-0x3c], eax
	mov eax, [edi+0x30]
	test eax, eax
	jnz CG_RegisterWeapon_20
	call SCR_UpdateLoadScreen
	mov dword [esp+0x8], 0x44
	mov dword [esp+0x4], 0x0
	mov [esp], edi
	call memset
	mov dword [edi+0x30], 0x1
	mov eax, ebx
	add eax, bg_itemlist
	mov [edi+0x34], eax
	mov dword [edi+0x28], 0xffffffff
	mov ecx, [ebp-0x3c]
	mov eax, [ecx+0xc]
	test eax, eax
	jz CG_RegisterWeapon_30
	mov eax, [ecx+0x4c]
	test eax, eax
	jz CG_RegisterWeapon_40
	mov word [ebp-0x28], 0x0
	mov eax, scr_const
	movzx eax, word [eax+0xa6]
	mov [ebp-0x20], ax
	mov byte [ebp-0x26], 0x0
	mov byte [ebp-0x1e], 0x0
	mov eax, [ecx+0x4c]
	mov [ebp-0x2c], eax
	mov eax, [ecx+0xc]
	mov [ebp-0x24], eax
	mov eax, ecx
	call CG_CreateWeaponViewModelXAnim
	mov [edi+0x2c], eax
	mov edx, [ebp+0x8]
	mov [esp+0x10], edx
	mov edx, [ebp+0xc]
	add edx, 0x400
	mov [esp+0xc], edx
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x2
	lea eax, [ebp-0x2c]
	mov [esp], eax
	call Com_ClientDObjCreate
	mov [ebp-0x40], eax
	mov [edi], eax
	mov ecx, [ebp-0x3c]
	mov eax, [ecx+0x4c]
	mov [edi+0x4], eax
	mov byte [edi+0x14], 0x0
	xor esi, esi
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x0
	mov eax, [edi+0x2c]
	mov [esp], eax
	call XAnimClearTreeGoalWeights
	mov dword [esp+0x1c], 0x0
	mov dword [esp+0x18], 0x1
	mov dword [esp+0x14], 0x0
	mov ebx, 0x3f800000
	mov [esp+0x10], ebx
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x0
	mov eax, [ebp-0x40]
	mov [esp], eax
	call XAnimSetGoalWeight
	mov dword [esp+0x1c], 0x0
	mov dword [esp+0x18], 0x1
	mov dword [esp+0x14], 0x0
	mov [esp+0x10], ebx
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x1
	mov edx, [ebp-0x40]
	mov [esp], edx
	call XAnimSetGoalWeight
	mov ecx, [ebp-0x3c]
	mov eax, [ecx+0xd0]
	cmp byte [eax], 0x0
	jnz CG_RegisterWeapon_50
	mov esi, ecx
	jmp CG_RegisterWeapon_60
CG_RegisterWeapon_80:
	movzx ecx, byte [ebp-0x19]
	mov edx, ecx
	shr dl, 0x5
	movzx edx, dl
	and ecx, 0x1f
	mov eax, 0x80000000
	shr eax, cl
	or [edi+edx*4+0x18], eax
CG_RegisterWeapon_90:
	add esi, 0x2
	mov eax, [ebp-0x3c]
	add eax, 0x10
	cmp eax, esi
	jz CG_RegisterWeapon_70
CG_RegisterWeapon_60:
	cmp word [esi+0xd8], 0x0
	jz CG_RegisterWeapon_70
	mov byte [ebp-0x19], 0xfe
	lea eax, [ebp-0x19]
	mov [esp+0x8], eax
	movzx eax, word [esi+0xd8]
	mov [esp+0x4], eax
	mov edx, [ebp-0x40]
	mov [esp], edx
	call DObjGetBoneIndex
	test eax, eax
	jnz CG_RegisterWeapon_80
	mov ecx, [ebp-0x3c]
	mov ebx, [ecx]
	movzx eax, word [esi+0xd8]
	mov [esp], eax
	call SL_ConvertToString
	mov [esp+0xc], ebx
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_cg_registerweapo2
	mov dword [esp], 0xe
	call Com_PrintError
	jmp CG_RegisterWeapon_90
CG_RegisterWeapon_70:
	lea eax, [edi+0x18]
	mov [esp+0x4], eax
	mov eax, [ebp-0x40]
	mov [esp], eax
	call DObjSetHidePartBits
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x3d4ccccd
	mov eax, [edi]
	mov [esp], eax
	call DObjUpdateClientInfo
	mov ecx, [ebp-0x3c]
CG_RegisterWeapon_30:
	mov edx, [ecx+0x30c]
	test edx, edx
	jz CG_RegisterWeapon_100
	mov eax, cgMedia
	mov ecx, [ebp+0xc]
	mov [eax+ecx*4+0x34], edx
CG_RegisterWeapon_150:
	mov ecx, [ebp-0x3c]
	mov eax, [ecx+0x4]
	mov [esp], eax
	call SEH_StringEd_GetString
	mov [edi+0x38], eax
	test eax, eax
	jz CG_RegisterWeapon_110
CG_RegisterWeapon_210:
	mov ecx, [ebp-0x3c]
	mov eax, [ecx+0xd4]
	mov [esp], eax
	call SEH_StringEd_GetString
	mov [edi+0x3c], eax
	test eax, eax
	jz CG_RegisterWeapon_120
CG_RegisterWeapon_180:
	mov ecx, [ebp-0x3c]
	mov eax, [ecx+0x8]
	mov [esp], eax
	call SEH_StringEd_GetString
	mov [edi+0x40], eax
	test eax, eax
	jnz CG_RegisterWeapon_20
	mov eax, loc_warnings
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz CG_RegisterWeapon_130
	mov eax, loc_warningsAsErrors
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz CG_RegisterWeapon_140
	mov edx, [ebp-0x3c]
	mov eax, [edx+0x8]
	mov [esp+0xc], eax
	mov eax, [edx]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_weapon_s_could_n
	mov dword [esp], 0x7
	call Com_Error
CG_RegisterWeapon_130:
	mov edx, [ebp-0x3c]
	mov eax, [edx+0x8]
	mov [edi+0x40], eax
	jmp CG_RegisterWeapon_20
CG_RegisterWeapon_40:
	mov ecx, [ebp-0x3c]
	jmp CG_RegisterWeapon_30
CG_RegisterWeapon_100:
	mov eax, cgMedia
	mov edx, [ebp+0xc]
	mov dword [eax+edx*4+0x34], 0x0
	jmp CG_RegisterWeapon_150
CG_RegisterWeapon_120:
	mov eax, loc_warnings
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz CG_RegisterWeapon_160
	mov eax, loc_warningsAsErrors
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz CG_RegisterWeapon_170
	mov edx, [ebp-0x3c]
	mov eax, [edx+0xd4]
	mov [esp+0xc], eax
	mov eax, [edx]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_weapon_s_could_n1
	mov dword [esp], 0x7
	call Com_Error
CG_RegisterWeapon_160:
	mov edx, [ebp-0x3c]
	mov eax, [edx+0xd4]
	mov [edi+0x3c], eax
	jmp CG_RegisterWeapon_180
CG_RegisterWeapon_110:
	mov eax, loc_warnings
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz CG_RegisterWeapon_190
	mov eax, loc_warningsAsErrors
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz CG_RegisterWeapon_200
	mov edx, [ebp-0x3c]
	mov eax, [edx+0x4]
	mov [esp+0xc], eax
	mov eax, [edx]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_weapon_s_could_n2
	mov dword [esp], 0x7
	call Com_Error
CG_RegisterWeapon_190:
	mov edx, [ebp-0x3c]
	mov eax, [edx+0x4]
	mov [edi+0x38], eax
	jmp CG_RegisterWeapon_210
CG_RegisterWeapon_50:
	mov dword [esp+0x1c], 0x0
	mov dword [esp+0x18], 0x1
	mov dword [esp+0x14], 0x0
	mov [esp+0x10], esi
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x20
	mov eax, [ebp-0x40]
	mov [esp], eax
	call XAnimSetGoalWeight
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x20
	mov eax, [edi+0x2c]
	mov [esp], eax
	call XAnimSetTime
	mov esi, [ebp-0x3c]
	jmp CG_RegisterWeapon_60
CG_RegisterWeapon_140:
	mov ecx, [ebp-0x3c]
	mov eax, [ecx+0x8]
	mov [esp+0xc], eax
	mov eax, [ecx]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_warning_weapon_s
	mov dword [esp], 0x11
	call Com_PrintWarning
	jmp CG_RegisterWeapon_130
CG_RegisterWeapon_170:
	mov ecx, [ebp-0x3c]
	mov eax, [ecx+0xd4]
	mov [esp+0xc], eax
	mov eax, [ecx]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_warning_weapon_s1
	mov dword [esp], 0x11
	call Com_PrintWarning
	jmp CG_RegisterWeapon_160
CG_RegisterWeapon_200:
	mov ecx, [ebp-0x3c]
	mov eax, [ecx+0x4]
	mov [esp+0xc], eax
	mov eax, [ecx]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_warning_weapon_s2
	mov dword [esp], 0x11
	call Com_PrintWarning
	jmp CG_RegisterWeapon_190
	add [eax], al


;CG_SetupWeaponDef(int)
CG_SetupWeaponDef:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x221c
	lea eax, [ebp-0x214]
	mov dword [esp+0x8], 0x1fc
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call memset
	mov dword [esp+0x4], 0x8d2
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CL_GetConfigString
	mov [esp+0x4], eax
	lea ebx, [ebp-0x2214]
	mov [esp], ebx
	call strcpy
	mov [ebp-0x214], ebx
	mov edi, 0x1
	mov edx, ebx
	movzx eax, byte [ebp-0x2214]
CG_SetupWeaponDef_60:
	test al, al
	jnz CG_SetupWeaponDef_10
CG_SetupWeaponDef_70:
	test edi, edi
	jg CG_SetupWeaponDef_20
	add esp, 0x221c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_SetupWeaponDef_20:
	xor ebx, ebx
CG_SetupWeaponDef_40:
	mov esi, [ebp+ebx*4-0x214]
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call BG_GetWeaponIndexForName
	add ebx, 0x1
	cmp eax, ebx
	jz CG_SetupWeaponDef_30
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_weapon_index_mis
	mov dword [esp], 0x2
	call Com_Error
CG_SetupWeaponDef_30:
	cmp edi, ebx
	jnz CG_SetupWeaponDef_40
	add esp, 0x221c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_SetupWeaponDef_10:
	cmp al, 0x20
	jz CG_SetupWeaponDef_50
	add edx, 0x1
	movzx eax, byte [edx]
	jmp CG_SetupWeaponDef_60
CG_SetupWeaponDef_50:
	mov byte [edx], 0x0
	add edx, 0x1
	movzx eax, byte [edx]
	test al, al
	jz CG_SetupWeaponDef_70
	cmp al, 0x20
	jz CG_SetupWeaponDef_60
	cmp edi, 0x7e
	jg CG_SetupWeaponDef_20
	mov [ebp+edi*4-0x214], edx
	add edi, 0x1
	movzx eax, byte [edx]
	jmp CG_SetupWeaponDef_60
	nop
	add [eax], al


;CG_AddPlayerWeapon(int, GfxScaledPlacement const*, playerState_s const*, centity_s*, int)
CG_AddPlayerWeapon:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x14c
	mov eax, [ebp+0x14]
	mov edx, [eax+0xcc]
	mov ebx, cgArray
	mov eax, [ebx+0x24]
	test byte [eax+0x20], 0x6
	jz CG_AddPlayerWeapon_10
	cmp edx, [eax+0xe8]
	jz CG_AddPlayerWeapon_20
CG_AddPlayerWeapon_10:
	xor eax, eax
CG_AddPlayerWeapon_250:
	test eax, eax
	jz CG_AddPlayerWeapon_30
	mov eax, [ebx+0x46138]
	test eax, eax
	jz CG_AddPlayerWeapon_40
CG_AddPlayerWeapon_30:
	mov byte [ebp-0x135], 0x0
	mov eax, [ebp+0x10]
	test eax, eax
	jz CG_AddPlayerWeapon_50
CG_AddPlayerWeapon_100:
	mov edx, [ebp+0x10]
	mov [esp], edx
	call BG_GetViewmodelWeaponIndex
	mov [ebp-0x134], eax
	mov dword [ebp-0x130], 0x1
CG_AddPlayerWeapon_110:
	mov eax, [ebp-0x134]
	test eax, eax
	jle CG_AddPlayerWeapon_60
	mov ecx, [ebp+0x14]
	test dword [ecx+0xd4], 0x300
	jnz CG_AddPlayerWeapon_60
	mov eax, [ebp-0x134]
	shl eax, 0x6
	mov edx, [ebp-0x134]
	lea edi, [eax+edx*4]
	add edi, cg_weaponsArray
	mov eax, [ebp-0x130]
	test eax, eax
	jnz CG_AddPlayerWeapon_70
CG_AddPlayerWeapon_240:
	mov eax, [ebp+0x14]
	cmp byte [eax+0x1c1], 0x0
	jz CG_AddPlayerWeapon_60
	cmp byte [ebp-0x135], 0x0
	jnz CG_AddPlayerWeapon_80
CG_AddPlayerWeapon_120:
	mov edx, [ebp+0x14]
	mov byte [edx+0x1c1], 0x0
	mov eax, [ebp+0x18]
	test eax, eax
	jz CG_AddPlayerWeapon_60
	mov eax, [ebp-0x130]
	test eax, eax
	jz CG_AddPlayerWeapon_90
	mov eax, scr_const
	movzx esi, word [eax+0x90]
	mov ebx, [ebp-0x134]
	add ebx, 0x400
	mov ecx, [ebp-0x134]
	mov [esp], ecx
	call BG_GetWeaponDef
	mov eax, [eax+0x14c]
	test eax, eax
	jz CG_AddPlayerWeapon_60
CG_AddPlayerWeapon_260:
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_PlayBoltedEffect
CG_AddPlayerWeapon_60:
	add esp, 0x14c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_AddPlayerWeapon_40:
	mov byte [ebp-0x135], 0x1
	mov eax, [ebp+0x10]
	test eax, eax
	jnz CG_AddPlayerWeapon_100
CG_AddPlayerWeapon_50:
	mov edx, [ebp+0x14]
	mov edx, [edx+0x190]
	mov [ebp-0x134], edx
	mov dword [ebp-0x130], 0x0
	jmp CG_AddPlayerWeapon_110
CG_AddPlayerWeapon_80:
	mov edx, [ebp-0x130]
	test edx, edx
	jnz CG_AddPlayerWeapon_120
	jmp CG_AddPlayerWeapon_60
CG_AddPlayerWeapon_70:
	mov esi, cgArray
	lea ebx, [esi+0x50460]
	mov [esp+0x4], ebx
	mov ecx, [ebp+0xc]
	mov [esp], ecx
	call UnitQuatToAxis
	mov edx, [ebp+0xc]
	add edx, 0x10
	mov ecx, [ebp+0xc]
	mov eax, [ecx+0x10]
	mov [esi+0x50484], eax
	mov eax, [edx+0x4]
	mov [esi+0x50488], eax
	mov eax, [edx+0x8]
	mov [esi+0x5048c], eax
	mov eax, [edi]
	test eax, eax
	jz CG_AddPlayerWeapon_130
	mov [esp], eax
	call DObjClearSkel
CG_AddPlayerWeapon_130:
	lea eax, [esi+0xfd25c]
	mov [esp+0x4], eax
	mov [esp], ebx
	call AxisToAngles
	mov eax, [esi+0x50484]
	mov [esi+0xfd250], eax
	mov eax, [esi+0x50488]
	mov [esi+0xfd254], eax
	mov eax, [esi+0x5048c]
	mov [esi+0xfd258], eax
	mov eax, [ebp+0x18]
	test eax, eax
	jnz CG_AddPlayerWeapon_140
	mov ebx, esi
CG_AddPlayerWeapon_300:
	mov eax, [ebx+0x50500]
	test eax, eax
	jle CG_AddPlayerWeapon_150
	sub eax, [ebx+0x46124]
	mov [ebx+0x50500], eax
CG_AddPlayerWeapon_150:
	test byte [ebx+0x4614c], 0x4
	jnz CG_AddPlayerWeapon_160
	mov eax, [ebx+0x504f8]
	test eax, eax
	js CG_AddPlayerWeapon_170
	mov edx, eax
	add edx, [ebx+0x46124]
	mov [ebx+0x504f8], edx
	mov eax, player_breath_hold_time
	mov eax, [eax]
	movss xmm0, dword [eax+0xc]
	mulss xmm0, [_float_1000_00000000]
	cvttss2si eax, xmm0
	cmp edx, eax
	jg CG_AddPlayerWeapon_180
	mov ecx, [ebx+0x50500]
	test ecx, ecx
	jle CG_AddPlayerWeapon_190
CG_AddPlayerWeapon_170:
	mov dword [ebx+0x504f8], 0xffffffff
	mov dword [ebx+0x504fc], 0x0
	pxor xmm0, xmm0
	movss [ebx+0x50504], xmm0
	movaps xmm1, xmm0
CG_AddPlayerWeapon_330:
	movss [ebp-0x12c], xmm1
	ucomiss xmm1, xmm0
	jp CG_AddPlayerWeapon_200
	jz CG_AddPlayerWeapon_210
CG_AddPlayerWeapon_200:
	xor ebx, ebx
	mov esi, cgsArray
	add esi, 0xd6c
	jmp CG_AddPlayerWeapon_220
CG_AddPlayerWeapon_230:
	movss xmm0, dword [esi-0x4]
	movss xmm1, dword [_float_1_00000000]
	subss xmm0, xmm1
	mulss xmm0, [ebp-0x12c]
	addss xmm0, xmm1
	movss [ebp+ebx*4-0x124], xmm0
	add ebx, 0x1
CG_AddPlayerWeapon_220:
	call SND_GetEntChannelCount
	add esi, 0x4
	cmp ebx, eax
	jl CG_AddPlayerWeapon_230
	mov dword [esp+0x8], 0x0
	lea eax, [ebp-0x124]
	mov [esp+0x4], eax
	mov dword [esp], 0x1
	call SND_SetChannelVolumes
	jmp CG_AddPlayerWeapon_240
CG_AddPlayerWeapon_20:
	mov eax, 0x1
	jmp CG_AddPlayerWeapon_250
CG_AddPlayerWeapon_90:
	mov eax, scr_const
	movzx esi, word [eax+0x90]
	mov edx, [ebp+0x14]
	mov ebx, [edx+0xcc]
	mov ecx, [ebp-0x134]
	mov [esp], ecx
	call BG_GetWeaponDef
	mov eax, [eax+0x150]
	test eax, eax
	jnz CG_AddPlayerWeapon_260
	jmp CG_AddPlayerWeapon_60
CG_AddPlayerWeapon_210:
	mov dword [esp+0x4], 0x0
	mov dword [esp], 0x1
	call SND_DeactivateChannelVolumes
	jmp CG_AddPlayerWeapon_240
CG_AddPlayerWeapon_140:
	mov edx, [ebp+0x10]
	add edx, 0x1c
	mov ecx, [ebp+0x10]
	mov eax, [ecx+0x1c]
	mov [ebp-0x24], eax
	mov eax, [edx+0x4]
	mov [ebp-0x20], eax
	movss xmm0, dword [edx+0x8]
	addss xmm0, [ecx+0x118]
	movss [ebp-0x1c], xmm0
	mov dword [esp+0x10], 0x41a00000
	mov dword [esp+0xc], 0x41800000
	mov eax, [ecx+0x5c]
	mov [esp+0x8], eax
	mov eax, [ecx+0x10c]
	mov [esp+0x4], eax
	lea ebx, [ebp-0x24]
	mov [esp], ebx
	call AddLeanToPosition
	mov dword [esp+0x14], 0x0
	mov [esp+0x10], ebx
	mov dword [esp+0xc], 0x3
	mov dword [esp+0x8], 0x3ff
	lea eax, [esi+0xfd234]
	mov [esp+0x4], eax
	mov eax, [edi]
	mov [esp], eax
	call R_AddDObjToScene
	mov eax, [ebp-0x134]
	mov [esp], eax
	call BG_GetWeaponDef
	mov esi, eax
	mov edx, [ebp+0x8]
	mov [esp], edx
	call CG_LookingThroughNightVision
	test al, al
	jnz CG_AddPlayerWeapon_270
CG_AddPlayerWeapon_340:
	xor edx, edx
CG_AddPlayerWeapon_350:
	mov eax, cg_laserForceOn
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz CG_AddPlayerWeapon_280
	test dl, dl
	jz CG_AddPlayerWeapon_290
CG_AddPlayerWeapon_280:
	mov dword [esp+0x10], 0x1
	mov eax, cgArray
	lea edx, [eax+0x49310]
	mov [esp+0xc], edx
	add eax, 0xfd234
	mov [esp+0x8], eax
	mov eax, [edi]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x14]
	mov [esp], ecx
	call CG_Laser_Add
CG_AddPlayerWeapon_290:
	mov eax, [ebp+0x10]
	movss xmm1, dword [eax+0x650]
	mov ebx, cgArray
	movss xmm0, dword [esi+0x870]
	subss xmm0, xmm1
	mulss xmm0, [eax+0xf4]
	addss xmm1, xmm0
	movss [ebx+0x49328], xmm1
	movss xmm1, dword [eax+0x654]
	movss xmm0, dword [esi+0x874]
	subss xmm0, xmm1
	mulss xmm0, [eax+0xf4]
	addss xmm1, xmm0
	movss [ebx+0x4932c], xmm1
	jmp CG_AddPlayerWeapon_300
CG_AddPlayerWeapon_160:
	cvtsi2ss xmm0, dword [ebx+0x46124]
	mulss xmm0, [_float_0_00100000]
	movss [esp+0xc], xmm0
	mov eax, player_breath_snd_lerp
	mov eax, [eax]
	mov eax, [eax+0xc]
	mov [esp+0x8], eax
	mov eax, [ebx+0x50504]
	mov [esp+0x4], eax
	mov dword [esp], 0x3f800000
	call DiffTrack
	fstp dword [ebx+0x50504]
	mov eax, [ebx+0x504f8]
	test eax, eax
	js CG_AddPlayerWeapon_310
	cmp eax, [ebx+0x504fc]
	jg CG_AddPlayerWeapon_320
CG_AddPlayerWeapon_370:
	mov ebx, cgArray
	mov eax, [ebx+0x504f8]
	add eax, [ebx+0x46124]
	mov [ebx+0x504f8], eax
	pxor xmm0, xmm0
	movss xmm1, dword [ebx+0x50504]
	jmp CG_AddPlayerWeapon_330
CG_AddPlayerWeapon_270:
	mov eax, [esi+0x514]
	test eax, eax
	jz CG_AddPlayerWeapon_340
	mov edx, 0x1
	jmp CG_AddPlayerWeapon_350
CG_AddPlayerWeapon_310:
	mov dword [ebx+0x504f8], 0x0
	mov esi, [ebx+0x50500]
	test esi, esi
	jle CG_AddPlayerWeapon_360
	mov dword [ebx+0x504fc], 0x0
	jmp CG_AddPlayerWeapon_370
CG_AddPlayerWeapon_180:
	mov eax, cgMedia
	mov eax, [eax+0x1060]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_PlayClientSoundAlias
	mov ebx, cgArray
	jmp CG_AddPlayerWeapon_170
CG_AddPlayerWeapon_320:
	mov eax, cgMedia
	mov eax, [eax+0x1054]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call CG_PlayClientSoundAlias
	jmp CG_AddPlayerWeapon_370
CG_AddPlayerWeapon_190:
	mov eax, cgMedia
	mov eax, [eax+0x105c]
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov [esp], edx
	call CG_PlayClientSoundAlias
	mov eax, player_breath_snd_delay
	mov eax, [eax]
	movss xmm0, dword [_float_1000_00000000]
	mulss xmm0, [eax+0xc]
	cvttss2si eax, xmm0
	mov [ebx+0x50500], eax
	mov ebx, cgArray
	jmp CG_AddPlayerWeapon_170
CG_AddPlayerWeapon_360:
	mov eax, cgMedia
	mov eax, [eax+0x1058]
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov [esp], edx
	call CG_PlayClientSoundAlias
	lea edx, [ebx+0x504fc]
	mov [esp+0x4], edx
	mov [esp], eax
	call SND_GetKnownLength
	mov eax, player_breath_snd_delay
	mov eax, [eax]
	movss xmm0, dword [_float_1000_00000000]
	mulss xmm0, [eax+0xc]
	cvttss2si eax, xmm0
	mov [ebx+0x50500], eax
	jmp CG_AddPlayerWeapon_370
	nop


;CG_MeleeBloodEvent(int, centity_s const*, int)
CG_MeleeBloodEvent:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0xc]
	mov eax, [eax+0x190]
	lea ecx, [eax+0x400]
	mov edx, eax
	shl edx, 0x6
	lea eax, [edx+eax*4]
	mov edx, cg_weaponsArray
	mov eax, [edx+eax+0x10]
	test eax, eax
	jz CG_MeleeBloodEvent_10
	mov eax, cg_blood
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz CG_MeleeBloodEvent_20
	mov eax, scr_const
	movzx eax, word [eax+0xa0]
	mov [esp+0xc], eax
	mov [esp+0x8], ecx
	mov eax, cgMedia
	mov eax, [eax+0x2760]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_PlayBoltedEffect
CG_MeleeBloodEvent_10:
	leave
	ret
CG_MeleeBloodEvent_20:
	mov eax, scr_const
	movzx eax, word [eax+0xa0]
	mov [esp+0xc], eax
	mov [esp+0x8], ecx
	mov eax, cgMedia
	mov eax, [eax+0x275c]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_PlayBoltedEffect
	leave
	ret


;CG_OutOfAmmoChange(int)
CG_OutOfAmmoChange:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov esi, cgArray
	mov eax, [esi+0x24]
	test eax, eax
	jz CG_OutOfAmmoChange_10
	cmp dword [esi+0x46140], 0x6
	jg CG_OutOfAmmoChange_10
	mov edi, [esi+0x46224]
	test edi, edi
	jnz CG_OutOfAmmoChange_20
	mov ebx, [esi+0x50374]
	test ebx, ebx
	jz CG_OutOfAmmoChange_20
	mov edx, ebx
	sar edx, 0x5
	mov ecx, ebx
	and ecx, 0x1f
	mov eax, 0x1
	shl eax, cl
	test [esi+edx*4+0x46698], eax
	jnz CG_OutOfAmmoChange_30
CG_OutOfAmmoChange_20:
	mov [esp], edi
	call BG_GetWeaponDef
	mov esi, eax
	mov eax, [eax+0x508]
	test eax, eax
	jnz CG_OutOfAmmoChange_10
	cmp dword [esi+0x13c], 0x3
	jz CG_OutOfAmmoChange_40
CG_OutOfAmmoChange_70:
	mov ecx, 0x1
	mov edx, 0x1
	mov eax, [ebp+0x8]
	call CycleWeapPrimary
	test al, al
	jnz CG_OutOfAmmoChange_10
	cmp dword [esi+0x13c], 0x3
	jz CG_OutOfAmmoChange_50
CG_OutOfAmmoChange_10:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_OutOfAmmoChange_40:
	mov edi, [esi+0x540]
	mov ebx, edi
	sar ebx, 0x5
	mov edx, cgArray
	add edx, 0x46698
	mov ecx, edi
	and ecx, 0x1f
	mov eax, 0x1
	shl eax, cl
	test [edx+ebx*4], eax
	jnz CG_OutOfAmmoChange_60
	mov eax, [esi+0x53c]
	mov [esp+0xc], eax
	mov eax, [esi]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_player_is_holdin
	mov dword [esp], 0xe
	call Com_PrintError
	mov dword [esp+0x4], 0x0
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_SelectWeaponIndex
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_OutOfAmmoChange_30:
	mov [esp+0x4], ebx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_SelectWeaponIndex
	jmp CG_OutOfAmmoChange_10
CG_OutOfAmmoChange_60:
	mov [esp+0x4], edi
	mov eax, cgArray
	add eax, 0x4613c
	mov [esp], eax
	call BG_WeaponAmmo
	test eax, eax
	jz CG_OutOfAmmoChange_70
CG_OutOfAmmoChange_50:
	mov eax, [esi+0x540]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_SelectWeaponIndex
	jmp CG_OutOfAmmoChange_10
	nop


;CG_ActionSlotDown_f()
CG_ActionSlotDown_f:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov ebx, cgArray
	mov edx, [ebx+0x24]
	test edx, edx
	jz CG_ActionSlotDown_f_10
	mov eax, [ebx+0x46228]
	sub eax, 0x3
	cmp eax, 0x1
	jbe CG_ActionSlotDown_f_10
	test dword [ebx+0x46148], 0xc00
	jz CG_ActionSlotDown_f_20
CG_ActionSlotDown_f_10:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_ActionSlotDown_f_20:
	cmp byte [ebx+0x4614c], 0x0
	js CG_ActionSlotDown_f_10
	test byte [edx+0x20], 0x4
	jz CG_ActionSlotDown_f_10
	mov eax, [ebx+0x46128]
	sub eax, [ebx+0xfd754]
	cmp eax, 0xf9
	jle CG_ActionSlotDown_f_10
	lea eax, [ebp-0x1c]
	call ActionParms
	test al, al
	jz CG_ActionSlotDown_f_10
	mov eax, [ebp-0x1c]
	mov edx, [ebx+eax*4+0x4673c]
	cmp edx, 0x2
	jz CG_ActionSlotDown_f_30
	cmp edx, 0x3
	jz CG_ActionSlotDown_f_40
	cmp edx, 0x1
	jz CG_ActionSlotDown_f_50
CG_ActionSlotDown_f_60:
	xor eax, eax
CG_ActionSlotDown_f_90:
	mov ebx, cgArray
	mov edx, [ebx+0x46128]
	mov [ebx+0x504bc], edx
	test al, al
	jz CG_ActionSlotDown_f_10
	mov [ebx+0xfd754], edx
	test dword [ebx+0x461ec], 0x300
	jz CG_ActionSlotDown_f_10
	mov eax, [ebp-0x1c]
	cmp dword [ebx+eax*4+0x4673c], 0x1
	jnz CG_ActionSlotDown_f_10
	or dword [ebx+0xfd750], 0x20
	jmp CG_ActionSlotDown_f_10
CG_ActionSlotDown_f_30:
	mov eax, [ebx+0x46228]
	sub eax, 0x2
	cmp eax, 0x2
	jbe CG_ActionSlotDown_f_60
	mov eax, [ebx+0x5036c]
	mov [esp], eax
	call BG_GetWeaponDef
	mov eax, [eax+0x540]
	test eax, eax
	jnz CG_ActionSlotDown_f_70
	lea esi, [ebx+0x4613c]
	mov dword [esp+0xc], 0x1
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x1
	mov eax, [ebx+0x5036c]
	mov [esp], eax
	xor ecx, ecx
	mov edx, esi
	xor eax, eax
	call NextWeapInCycle
	test eax, eax
	jnz CG_ActionSlotDown_f_80
	mov dword [esp+0xc], 0x1
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x1
	mov eax, [ebx+0x5036c]
	mov [esp], eax
	xor ecx, ecx
	mov edx, esi
	xor eax, eax
	call NextWeapInCycle
	test eax, eax
	jz CG_ActionSlotDown_f_60
CG_ActionSlotDown_f_80:
	mov [esp], eax
	call BG_GetWeaponDef
	mov eax, [eax+0x540]
	test eax, eax
	jz CG_ActionSlotDown_f_60
CG_ActionSlotDown_f_70:
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call CG_SelectWeaponIndex
	mov eax, 0x1
	jmp CG_ActionSlotDown_f_90
CG_ActionSlotDown_f_50:
	mov edi, [ebx+eax*4+0x4674c]
	cmp edi, [ebx+0x5036c]
	jz CG_ActionSlotDown_f_100
	mov eax, edi
	sar eax, 0x5
	mov ecx, edi
	and ecx, 0x1f
	shl edx, cl
	test [ebx+eax*4+0x46698], edx
	jz CG_ActionSlotDown_f_60
	cmp edi, [ebx+0x46224]
	jz CG_ActionSlotDown_f_60
	mov [esp+0x4], edi
	mov dword [esp], 0x0
	call CG_SelectWeaponIndex
	mov eax, 0x1
	jmp CG_ActionSlotDown_f_90
CG_ActionSlotDown_f_40:
	or dword [ebx+0xfd750], 0x40000
	mov eax, 0x1
	jmp CG_ActionSlotDown_f_90
CG_ActionSlotDown_f_100:
	mov esi, [ebx+0x50374]
	cmp edi, esi
	jz CG_ActionSlotDown_f_110
	mov eax, esi
	sar eax, 0x5
	mov ecx, esi
	and ecx, 0x1f
	shl edx, cl
	test [ebx+eax*4+0x46698], edx
	jnz CG_ActionSlotDown_f_120
CG_ActionSlotDown_f_110:
	xor ecx, ecx
	mov edx, 0x1
	xor eax, eax
	call CycleWeapPrimary
	jmp CG_ActionSlotDown_f_90
CG_ActionSlotDown_f_120:
	mov [esp+0x4], esi
	mov dword [esp], 0x0
	call CG_SelectWeaponIndex
	mov eax, 0x1
	jmp CG_ActionSlotDown_f_90


;CG_EjectWeaponBrass(int, entityState_s const*, int)
CG_EjectWeaponBrass:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov eax, [ebp+0x8]
	mov [ebp-0x1c], eax
	mov esi, [ebp+0xc]
	mov edi, [ebp+0x10]
	mov eax, cg_brass
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz CG_EjectWeaponBrass_10
	cmp dword [esi+0x4], 0x10
	jg CG_EjectWeaponBrass_10
	mov ebx, [esi+0xc4]
	test ebx, ebx
	jz CG_EjectWeaponBrass_10
	call BG_GetNumWeapons
	cmp ebx, eax
	jae CG_EjectWeaponBrass_20
	mov edx, [esi]
	mov eax, cgArray
	mov eax, [eax+0x24]
	test byte [eax+0x20], 0x6
	jz CG_EjectWeaponBrass_30
	cmp edx, [eax+0xe8]
	jz CG_EjectWeaponBrass_40
CG_EjectWeaponBrass_30:
	xor eax, eax
CG_EjectWeaponBrass_120:
	mov ebx, eax
	mov eax, [esi+0xc4]
	mov [esp], eax
	call BG_GetWeaponDef
	mov edx, [eax+0x214]
	test edx, edx
	jz CG_EjectWeaponBrass_50
	mov ecx, [eax+0x218]
	test ecx, ecx
	jz CG_EjectWeaponBrass_50
	cmp edi, 0x1b
	jz CG_EjectWeaponBrass_60
CG_EjectWeaponBrass_50:
	test bl, bl
	jz CG_EjectWeaponBrass_70
	mov edx, [eax+0x20c]
CG_EjectWeaponBrass_110:
	test edx, edx
	jz CG_EjectWeaponBrass_10
	test bl, bl
	jz CG_EjectWeaponBrass_80
CG_EjectWeaponBrass_90:
	mov ecx, [esi+0xc4]
	add ecx, 0x400
CG_EjectWeaponBrass_100:
	mov eax, scr_const
	movzx eax, word [eax+0x8a]
	mov [esp+0xc], eax
	mov [esp+0x8], ecx
	mov [esp+0x4], edx
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call CG_PlayBoltedEffect
CG_EjectWeaponBrass_10:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_EjectWeaponBrass_20:
	mov dword [ebp+0xc], _cstring_cg_ejectweaponbr
	mov dword [ebp+0x8], 0x2
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp Com_Error
CG_EjectWeaponBrass_60:
	test bl, bl
	jnz CG_EjectWeaponBrass_90
	mov edx, ecx
CG_EjectWeaponBrass_80:
	mov ecx, [esi]
	jmp CG_EjectWeaponBrass_100
CG_EjectWeaponBrass_70:
	mov edx, [eax+0x210]
	jmp CG_EjectWeaponBrass_110
CG_EjectWeaponBrass_40:
	mov eax, 0x1
	jmp CG_EjectWeaponBrass_120
	nop


;CG_GetViewDirection(int, int, float*, float*, float*)
CG_GetViewDirection:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov ebx, [ebp+0xc]
	mov eax, [ebp+0x10]
	mov [ebp-0x1c], eax
	mov edi, [ebp+0x14]
	mov esi, [ebp+0x18]
	mov dword [esp], 0x0
	call CL_IsLocalClientActive
	test al, al
	jz CG_GetViewDirection_10
	mov eax, cgArray
	mov edx, [eax+0x24]
	test byte [edx+0x20], 0x6
	jnz CG_GetViewDirection_20
CG_GetViewDirection_40:
	xor edx, edx
CG_GetViewDirection_50:
	test edx, edx
	jnz CG_GetViewDirection_30
CG_GetViewDirection_10:
	mov [ebp+0x14], esi
	mov [ebp+0x10], edi
	mov eax, [ebp-0x1c]
	mov [ebp+0xc], eax
	lea edx, [ebx*4]
	mov eax, ebx
	shl eax, 0x5
	sub eax, edx
	mov edx, eax
	shl edx, 0x4
	add eax, edx
	mov edx, cg_entitiesArray
	mov edx, [edx+eax+0x158]
	lea eax, [edx+edx*8]
	mov ecx, eax
	shl ecx, 0x4
	add eax, ecx
	lea eax, [edx+eax*2]
	mov edx, cgArray
	lea eax, [edx+eax*4+0xea318]
	mov [ebp+0x8], eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp AngleVectors
CG_GetViewDirection_20:
	cmp ebx, [edx+0xe8]
	jnz CG_GetViewDirection_40
	mov edx, 0x1
	jmp CG_GetViewDirection_50
CG_GetViewDirection_30:
	mov [ebp+0x14], esi
	mov [ebp+0x10], edi
	mov edx, [ebp-0x1c]
	mov [ebp+0xc], edx
	add eax, 0x4613c
	mov [ebp+0x8], eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp BG_GetPlayerViewDirection


;CG_RandomEffectAxis(float const*, float*, float*)
CG_RandomEffectAxis:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	mov edi, [ebp+0x10]
	lea eax, [esi+0x4]
	mov [ebp-0x30], eax
	movss xmm1, dword [esi+0x4]
	xorps xmm1, [_data16_80000000]
	movss xmm3, dword [esi]
	lea eax, [esi+0x8]
	mov [ebp-0x2c], eax
	movss xmm4, dword [esi+0x8]
	xorps xmm4, [_data16_80000000]
	movss [ebp-0x20], xmm3
	movss [ebp-0x1c], xmm1
	movaps xmm0, xmm4
	mulss xmm0, xmm3
	movaps xmm2, xmm3
	mulss xmm2, [esi+0x4]
	addss xmm0, xmm2
	mulss xmm1, [esi+0x8]
	addss xmm0, xmm1
	xorps xmm0, [_data16_80000000]
	mulss xmm3, xmm0
	addss xmm3, xmm4
	movss [ebp-0x24], xmm3
	movaps xmm1, xmm0
	mulss xmm1, [esi+0x4]
	addss xmm1, [ebp-0x20]
	movss [ebp-0x20], xmm1
	mulss xmm0, [esi+0x8]
	addss xmm0, [ebp-0x1c]
	movss [ebp-0x1c], xmm0
	call randomf
	fstp dword [ebp-0x3c]
	movss xmm0, dword [ebp-0x3c]
	mulss xmm0, [_float_360_00000000]
	movss [esp+0xc], xmm0
	lea eax, [ebp-0x24]
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov [esp], ebx
	call RotatePointAroundVector
	movss xmm3, dword [ebx]
	lea edx, [ebx+0x4]
	movss xmm1, dword [ebx+0x4]
	lea eax, [ebx+0x8]
	movss xmm2, dword [ebx+0x8]
	movaps xmm0, xmm3
	mulss xmm0, xmm3
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	sqrtss xmm2, xmm0
	movaps xmm0, xmm2
	xorps xmm0, [_data16_80000000]
	ucomiss xmm0, [_float_0_00000000]
	jb CG_RandomEffectAxis_10
	movss xmm1, dword [_float_1_00000000]
CG_RandomEffectAxis_20:
	mulss xmm3, xmm1
	movss [ebx], xmm3
	movaps xmm0, xmm1
	mulss xmm0, [edx]
	movss [edx], xmm0
	mulss xmm1, [eax]
	movss [eax], xmm1
	mov eax, [ebp-0x30]
	movss xmm1, dword [eax]
	mulss xmm1, [ebx+0x8]
	mov eax, [ebp-0x2c]
	movss xmm0, dword [eax]
	mulss xmm0, [ebx+0x4]
	subss xmm1, xmm0
	movss [edi], xmm1
	movss xmm1, dword [eax]
	mulss xmm1, [ebx]
	movss xmm0, dword [esi]
	mulss xmm0, [ebx+0x8]
	subss xmm1, xmm0
	movss [edi+0x4], xmm1
	movss xmm1, dword [esi]
	mulss xmm1, [ebx+0x4]
	mov eax, [ebp-0x30]
	movss xmm0, dword [eax]
	mulss xmm0, [ebx]
	subss xmm1, xmm0
	movss [edi+0x8], xmm1
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_RandomEffectAxis_10:
	movss xmm1, dword [_float_1_00000000]
	divss xmm1, xmm2
	jmp CG_RandomEffectAxis_20


;CG_ScopeIsOverlayed(int)
CG_ScopeIsOverlayed:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	mov eax, clientUIActives
	cmp dword [eax+0xc], 0x8
	jle CG_ScopeIsOverlayed_10
	mov eax, cgArray
	test dword [eax+0x461ec], 0x300
	jnz CG_ScopeIsOverlayed_20
CG_ScopeIsOverlayed_30:
	lea eax, [ebp-0xc]
	mov [esp+0x4], eax
	mov eax, cgArray
	mov [esp], eax
	call CG_GetWeapReticleZoom
	movzx eax, al
	leave
	ret
CG_ScopeIsOverlayed_20:
	mov edx, [eax+0x466d4]
	test edx, edx
	jz CG_ScopeIsOverlayed_30
	mov eax, [eax+0x466d8]
	lea edx, [eax*4]
	shl eax, 0x5
	sub eax, edx
	mov edx, eax
	shl edx, 0x4
	add eax, edx
	mov edx, cg_entitiesArray
	mov eax, [edx+eax+0x190]
	test eax, eax
	jz CG_ScopeIsOverlayed_30
	mov [esp], eax
	call BG_GetWeaponDef
	mov ecx, [eax+0x430]
	test ecx, ecx
	jz CG_ScopeIsOverlayed_30
	mov eax, 0x1
	leave
	ret
CG_ScopeIsOverlayed_10:
	xor eax, eax
	leave
	ret


;CG_WeaponDObjHandle(int)
CG_WeaponDObjHandle:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	add eax, 0x400
	pop ebp
	ret
	nop


;CG_SelectWeaponIndex(int, unsigned int)
CG_SelectWeaponIndex:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov eax, [ebp+0x8]
	mov [ebp-0x20], eax
	mov ebx, [ebp+0xc]
	mov edi, cgArray
	mov eax, [edi+0x46128]
	mov [edi+0x50370], eax
	mov eax, [edi+0x5036c]
	cmp eax, ebx
	jz CG_SelectWeaponIndex_10
	test ebx, ebx
	jnz CG_SelectWeaponIndex_20
	mov byte [ebp-0x19], 0x0
CG_SelectWeaponIndex_50:
	mov [edi+0x5036c], ebx
	mov dword [esp+0x4], 0x1
	mov eax, [ebp-0x20]
	mov [esp], eax
	call CG_MenuShowNotify
	cmp byte [ebp-0x19], 0x0
	jz CG_SelectWeaponIndex_30
CG_SelectWeaponIndex_10:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_SelectWeaponIndex_30:
	mov dword [ebp+0xc], 0x0
	mov eax, [ebp-0x20]
	mov [ebp+0x8], eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp CL_SetADS
CG_SelectWeaponIndex_20:
	mov [esp], eax
	call BG_GetWeaponDef
	cmp ebx, [eax+0x540]
	setz byte [ebp-0x19]
	mov [esp], ebx
	call BG_GetWeaponDef
	mov esi, [eax+0x13c]
	test esi, esi
	jnz CG_SelectWeaponIndex_40
	mov esi, ebx
CG_SelectWeaponIndex_60:
	mov edi, cgArray
	mov [edi+0x50374], esi
	jmp CG_SelectWeaponIndex_50
CG_SelectWeaponIndex_40:
	mov esi, [eax+0x540]
	mov [esp], esi
	call BG_GetWeaponDef
	mov ecx, [eax+0x13c]
	test ecx, ecx
	jnz CG_SelectWeaponIndex_50
	test esi, esi
	jz CG_SelectWeaponIndex_50
	jmp CG_SelectWeaponIndex_60


;CG_GetPlayerViewOrigin(int, playerState_s const*, float*)
CG_GetPlayerViewOrigin:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edx, [ebp+0xc]
	mov edi, [ebp+0x10]
	test dword [edx+0xb0], 0x300
	jz CG_GetPlayerViewOrigin_10
	mov eax, [edx+0x59c]
	lea edx, [eax*4]
	shl eax, 0x5
	sub eax, edx
	mov edx, eax
	shl edx, 0x4
	lea ebx, [eax+edx]
	add ebx, cg_entitiesArray
	mov dword [esp+0x4], 0x0
	mov eax, [ebx+0xcc]
	mov [esp], eax
	call Com_GetClientDObj
	mov esi, eax
	test eax, eax
	jz CG_GetPlayerViewOrigin_20
CG_GetPlayerViewOrigin_40:
	mov [esp+0xc], edi
	mov eax, scr_const
	movzx eax, word [eax+0xa8]
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov [esp], ebx
	call CG_DObjGetWorldTagPos
	test eax, eax
	jz CG_GetPlayerViewOrigin_30
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_GetPlayerViewOrigin_10:
	mov eax, cgArray
	mov eax, [eax+0x46128]
	mov [ebp+0x10], eax
	mov [ebp+0xc], edi
	mov [ebp+0x8], edx
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp BG_GetPlayerViewOrigin
CG_GetPlayerViewOrigin_30:
	mov dword [ebp+0xc], _cstring_cg_getplayerview
	mov dword [ebp+0x8], 0x2
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp Com_Error
CG_GetPlayerViewOrigin_20:
	mov eax, [ebx+0xcc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_cg_getplayerview1
	mov dword [esp], 0x2
	call Com_Error
	jmp CG_GetPlayerViewOrigin_40


;CG_UpdateViewModelPose(DObj_s const*, int)
CG_UpdateViewModelPose:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	test eax, eax
	jz CG_UpdateViewModelPose_10
	mov [esp], eax
	call DObjClearSkel
CG_UpdateViewModelPose_10:
	mov ebx, cgArray
	lea eax, [ebx+0xfd25c]
	mov [esp+0x4], eax
	lea eax, [ebx+0x50460]
	mov [esp], eax
	call AxisToAngles
	mov eax, [ebx+0x50484]
	mov [ebx+0xfd250], eax
	mov eax, [ebx+0x50488]
	mov [ebx+0xfd254], eax
	mov eax, [ebx+0x5048c]
	mov [ebx+0xfd258], eax
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;CG_AltWeaponToggleIndex(int, cg_s const*)
CG_AltWeaponToggleIndex:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov esi, [ebp+0xc]
	lea edi, [esi+0x4613c]
	mov eax, [esi+0x5036c]
	mov [esp], eax
	call BG_GetWeaponDef
	mov ebx, [eax+0x540]
	test ebx, ebx
	jz CG_AltWeaponToggleIndex_10
CG_AltWeaponToggleIndex_30:
	mov eax, ebx
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_AltWeaponToggleIndex_10:
	mov dword [esp+0xc], 0x1
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x1
	mov eax, [esi+0x5036c]
	mov [esp], eax
	xor ecx, ecx
	mov edx, edi
	mov eax, [ebp+0x8]
	call NextWeapInCycle
	test eax, eax
	jnz CG_AltWeaponToggleIndex_20
	mov dword [esp+0xc], 0x1
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x1
	mov eax, [esi+0x5036c]
	mov [esp], eax
	xor ecx, ecx
	mov edx, edi
	mov eax, [ebp+0x8]
	call NextWeapInCycle
	test eax, eax
	jz CG_AltWeaponToggleIndex_30
CG_AltWeaponToggleIndex_20:
	mov [esp], eax
	call BG_GetWeaponDef
	mov ebx, [eax+0x540]
	mov eax, ebx
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;CG_BulletHitClientEvent(int, int, float const*, float const*, int, int, int)
CG_BulletHitClientEvent:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov eax, [ebp+0x8]
	mov [ebp-0x1c], eax
	mov eax, [ebp+0xc]
	mov [ebp-0x20], eax
	mov eax, [ebp+0x10]
	mov [ebp-0x24], eax
	mov edi, [ebp+0x14]
	mov ebx, [ebp+0x18]
	mov eax, [ebp+0x1c]
	mov esi, [ebp+0x20]
	cmp eax, 0x2a
	jz CG_BulletHitClientEvent_10
	cmp eax, 0x2b
	jz CG_BulletHitClientEvent_20
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_BulletHitClientEvent_10:
	mov eax, cgMedia
	mov eax, [eax+ebx*4+0x350]
CG_BulletHitClientEvent_30:
	mov [esp+0xc], eax
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x3fe
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call CG_PlaySoundAlias
	mov [ebp+0x18], esi
	mov dword [ebp+0x14], 0x0
	mov eax, scr_const
	movzx eax, word [eax+0x90]
	mov [ebp+0x10], eax
	mov [ebp+0xc], ebx
	mov [ebp+0x8], edi
	mov ecx, [ebp-0x24]
	mov edx, [ebp-0x20]
	mov eax, [ebp-0x1c]
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp BulletTrajectoryEffects
CG_BulletHitClientEvent_20:
	mov eax, cgMedia
	mov eax, [eax+ebx*4+0x3c4]
	jmp CG_BulletHitClientEvent_30


;CG_UICheckWeapLockBlink(int, float)
CG_UICheckWeapLockBlink:
	push ebp
	mov ebp, esp
	xor eax, eax
	pop ebp
	ret
	nop


;CG_UpdateHandViewmodels(int, XModel*)
CG_UpdateHandViewmodels:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov esi, 0x1
	mov edi, cgArray
	mov ebx, cg_weaponsArray
	add ebx, 0x44
	jmp CG_UpdateHandViewmodels_10
CG_UpdateHandViewmodels_30:
	movzx eax, byte [edi+0x46959]
	mov edx, [ebp+0xc]
	cmp [ebx+0x4], edx
	jz CG_UpdateHandViewmodels_20
	movzx ecx, al
	mov dword [esp+0x10], 0x1
	mov eax, [ebx+0x10]
	mov [esp+0xc], eax
	mov eax, [ebx+0xc]
	mov [esp+0x8], eax
	mov eax, [ebx+0x8]
	mov [esp+0x4], eax
	mov [esp], edx
	mov edx, esi
	mov eax, [ebp+0x8]
	call ChangeViewmodelDobj
CG_UpdateHandViewmodels_20:
	add esi, 0x1
	add ebx, 0x44
	add edi, 0x1
CG_UpdateHandViewmodels_10:
	call BG_GetNumWeapons
	cmp esi, eax
	jb CG_UpdateHandViewmodels_30
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;CG_UpdateViewWeaponAnim(int)
CG_UpdateViewWeaponAnim:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov esi, cgArray
	cmp dword [esi+0x46140], 0x6
	jle CG_UpdateViewWeaponAnim_10
	mov esi, 0x1
	mov edi, 0x44
	jmp CG_UpdateViewWeaponAnim_20
CG_UpdateViewWeaponAnim_50:
	mov dword [esp], 0x2
CG_UpdateViewWeaponAnim_60:
	pxor xmm0, xmm0
	mov ecx, ebx
	mov edx, esi
	mov eax, [ebp+0x8]
	call StartWeaponAnim
CG_UpdateViewWeaponAnim_40:
	add esi, 0x1
	add edi, 0x44
CG_UpdateViewWeaponAnim_20:
	call BG_GetNumWeapons
	cmp esi, eax
	jae CG_UpdateViewWeaponAnim_30
	mov eax, cg_weaponsArray
	mov ebx, [eax+edi]
	test ebx, ebx
	jz CG_UpdateViewWeaponAnim_40
	mov [esp], ebx
	call DObjGetTree
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call XAnimClearTreeGoalWeights
	mov dword [esp+0x1c], 0x0
	mov dword [esp+0x18], 0x1
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x3f800000
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x3f800000
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call XAnimSetGoalWeight
	mov [esp], esi
	call BG_ClipForWeapon
	mov edx, cgArray
	mov eax, [edx+eax*4+0x46498]
	test eax, eax
	jz CG_UpdateViewWeaponAnim_50
	mov dword [esp], 0x1
	jmp CG_UpdateViewWeaponAnim_60
CG_UpdateViewWeaponAnim_10:
	lea eax, [esi+0x4613c]
	mov [esp], eax
	call BG_GetViewmodelWeaponIndex
	mov ebx, eax
	test eax, eax
	jg CG_UpdateViewWeaponAnim_70
CG_UpdateViewWeaponAnim_30:
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_UpdateViewWeaponAnim_70:
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_RegisterWeapon
	mov eax, ebx
	shl eax, 0x6
	lea eax, [eax+ebx*4]
	mov edx, cg_weaponsArray
	add eax, edx
	mov [ebp-0x48], eax
	movzx eax, byte [ebx+esi+0x46958]
	mov [ebp-0x41], al
	mov [esp], ebx
	call BG_GetWeaponDef
	mov edi, eax
	mov eax, [eax+0x300]
	test eax, eax
	jz CG_UpdateViewWeaponAnim_80
	mov eax, [esi+0x46224]
	mov [esp], eax
	call BG_ClipForWeapon
	mov eax, [esi+eax*4+0x46498]
	test eax, eax
	jnz CG_UpdateViewWeaponAnim_90
	mov eax, [esi+0x46228]
	cmp eax, 0x7
	jz CG_UpdateViewWeaponAnim_100
	cmp eax, 0x9
	jz CG_UpdateViewWeaponAnim_100
	cmp eax, 0xb
	jz CG_UpdateViewWeaponAnim_100
	cmp eax, 0xa
	jz CG_UpdateViewWeaponAnim_100
	cmp eax, 0x8
	jz CG_UpdateViewWeaponAnim_100
CG_UpdateViewWeaponAnim_80:
	xor esi, esi
CG_UpdateViewWeaponAnim_250:
	mov edx, [edi+0x304]
	test edx, edx
	jz CG_UpdateViewWeaponAnim_110
	mov eax, cgArray
	mov eax, [eax+0x46760]
	and ah, 0xfd
	sub eax, 0x8
	cmp eax, 0x1
	jbe CG_UpdateViewWeaponAnim_120
CG_UpdateViewWeaponAnim_110:
	xor edx, edx
CG_UpdateViewWeaponAnim_120:
	mov eax, [ebp-0x48]
	mov edi, [eax+0x8]
	test edi, edi
	jz CG_UpdateViewWeaponAnim_130
CG_UpdateViewWeaponAnim_330:
	movzx ecx, byte [ebp-0x41]
	mov dword [esp+0x10], 0x0
	mov [esp+0xc], edx
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x0
	mov edx, [ebp-0x48]
	mov eax, [edx+0x4]
	mov [esp], eax
	mov edx, ebx
	mov eax, [ebp+0x8]
	call ChangeViewmodelDobj
CG_UpdateViewWeaponAnim_340:
	mov eax, [ebp-0x48]
	mov esi, [eax]
	mov [esp], esi
	call DObjGetTree
	mov [ebp-0x40], eax
	mov ebx, cgArray
	lea eax, [ebx+0x4613c]
	mov [esp], eax
	call BG_GetViewmodelWeaponIndex
	mov edi, eax
	mov [esp], eax
	call BG_GetWeaponDef
	mov edx, eax
	mov ecx, [eax+0x4ec]
	test ecx, ecx
	jnz CG_UpdateViewWeaponAnim_140
	mov eax, [eax+0xd0]
	cmp byte [eax], 0x0
	jnz CG_UpdateViewWeaponAnim_150
CG_UpdateViewWeaponAnim_360:
	mov ebx, cgArray
	mov eax, [ebx+0x46760]
	mov edx, [ebp-0x48]
	cmp eax, [edx+0x28]
	jz CG_UpdateViewWeaponAnim_160
CG_UpdateViewWeaponAnim_230:
	and ah, 0xfd
	cmp eax, 0x1d
	ja CG_UpdateViewWeaponAnim_170
	jmp dword [eax*4+CG_UpdateViewWeaponAnim_jumptab_0]
CG_UpdateViewWeaponAnim_140:
	cmp dword [ebx+0x46228], 0x7
	jz CG_UpdateViewWeaponAnim_180
CG_UpdateViewWeaponAnim_260:
	xor edx, edx
CG_UpdateViewWeaponAnim_270:
	mov ebx, cgArray
	test byte [ebx+0x46148], 0x10
	jz CG_UpdateViewWeaponAnim_190
	test byte [ebx+0x4614c], 0x2
	jz CG_UpdateViewWeaponAnim_200
CG_UpdateViewWeaponAnim_190:
	xor eax, eax
CG_UpdateViewWeaponAnim_380:
	test dl, dl
	jnz CG_UpdateViewWeaponAnim_210
	test eax, eax
	jnz CG_UpdateViewWeaponAnim_220
CG_UpdateViewWeaponAnim_210:
	mov ecx, 0x20
CG_UpdateViewWeaponAnim_370:
	mov edx, esi
	mov eax, edi
	movss xmm0, dword [ebx+0x46230]
	call PlayADSAnim
	mov ebx, cgArray
	mov eax, [ebx+0x46760]
	mov edx, [ebp-0x48]
	cmp eax, [edx+0x28]
	jnz CG_UpdateViewWeaponAnim_230
CG_UpdateViewWeaponAnim_160:
	cmp edi, [ebx+0x50378]
	jnz CG_UpdateViewWeaponAnim_230
	jmp CG_UpdateViewWeaponAnim_240
CG_UpdateViewWeaponAnim_100:
	mov eax, [edi+0x388]
	mov edx, cgArray
	sub eax, [edx+0x46178]
	cmp eax, [edi+0x38c]
	jle CG_UpdateViewWeaponAnim_80
CG_UpdateViewWeaponAnim_90:
	mov esi, [edi+0x300]
	jmp CG_UpdateViewWeaponAnim_250
CG_UpdateViewWeaponAnim_180:
	mov eax, [ebx+0x46178]
	sub eax, [edx+0x794]
	test eax, eax
	jle CG_UpdateViewWeaponAnim_260
	mov edx, 0x1
	jmp CG_UpdateViewWeaponAnim_270
CG_UpdateViewWeaponAnim_170:
	mov dword [esp], 0x1
	pxor xmm0, xmm0
	mov ecx, esi
	mov edx, edi
	mov eax, [ebp+0x8]
	call StartWeaponAnim
	mov eax, [ebx+0x46760]
	and ah, 0xfd
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_weaponrunxmodela
	mov dword [esp], 0x13
	call Com_Printf
CG_UpdateViewWeaponAnim_390:
	mov ebx, cgArray
	mov eax, [ebx+0x46760]
	mov edx, [ebp-0x48]
	mov [edx+0x28], eax
	mov [ebx+0x50378], edi
CG_UpdateViewWeaponAnim_240:
	mov dword [esp+0x8], 0x1
	cvtsi2ss xmm0, dword [ebx+0x46124]
	mulss xmm0, [_float_0_00100000]
	movss [esp+0x4], xmm0
	mov edx, [ebp-0x48]
	mov eax, [edx]
	mov [esp], eax
	call DObjUpdateClientInfo
	lea eax, [ebx+0x4613c]
	mov [esp], eax
	call BG_GetViewmodelWeaponIndex
	test eax, eax
	jz CG_UpdateViewWeaponAnim_30
	mov [esp], eax
	call BG_GetWeaponDef
	mov [ebp-0x38], eax
	lea eax, [ebp-0x1c]
	mov [esp], eax
	call DObjGetClientNotifyList
	mov [ebp-0x30], eax
	test eax, eax
	jle CG_UpdateViewWeaponAnim_30
	mov dword [ebp-0x34], 0x0
	xor esi, esi
	jmp CG_UpdateViewWeaponAnim_280
CG_UpdateViewWeaponAnim_290:
	add dword [ebp-0x34], 0x1
	add esi, 0xc
	mov edx, [ebp-0x34]
	cmp [ebp-0x30], edx
	jz CG_UpdateViewWeaponAnim_30
CG_UpdateViewWeaponAnim_280:
	mov dword [esp+0x4], _cstring_end
	mov eax, [ebp-0x1c]
	mov eax, [eax+esi]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jz CG_UpdateViewWeaponAnim_290
	mov dword [esp+0x4], _cstring_nvg_on_powerup
	mov eax, [ebp-0x1c]
	mov eax, [eax+esi]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jnz CG_UpdateViewWeaponAnim_300
	mov edx, cgMedia
	mov eax, [edx+0x1048]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_PlayClientSoundAlias
CG_UpdateViewWeaponAnim_350:
	mov eax, [ebp-0x1c]
	mov eax, [eax+esi]
	mov edx, [ebp-0x38]
	cmp word [edx+0xe8], 0x0
	jz CG_UpdateViewWeaponAnim_290
	mov [esp], eax
	call SL_FindLowercaseString
	mov [ebp-0x2c], eax
	test eax, eax
	jz CG_UpdateViewWeaponAnim_290
	mov ebx, [ebp-0x38]
	mov edi, 0x10
	jmp CG_UpdateViewWeaponAnim_310
CG_UpdateViewWeaponAnim_320:
	add ebx, 0x2
	sub edi, 0x1
	jz CG_UpdateViewWeaponAnim_290
CG_UpdateViewWeaponAnim_310:
	movzx eax, word [ebx+0xe8]
	test ax, ax
	jz CG_UpdateViewWeaponAnim_290
	movzx edx, word [ebx+0x108]
	test dx, dx
	jz CG_UpdateViewWeaponAnim_320
	movzx eax, ax
	cmp [ebp-0x2c], eax
	jnz CG_UpdateViewWeaponAnim_320
	movzx eax, dx
	mov [esp], eax
	call SL_ConvertToString
	test eax, eax
	jz CG_UpdateViewWeaponAnim_320
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_PlayClientSoundAliasByName
	jmp CG_UpdateViewWeaponAnim_320
CG_UpdateViewWeaponAnim_130:
	cmp esi, [eax+0xc]
	jnz CG_UpdateViewWeaponAnim_330
	cmp edx, [eax+0x10]
	jnz CG_UpdateViewWeaponAnim_330
	jmp CG_UpdateViewWeaponAnim_340
CG_UpdateViewWeaponAnim_300:
	mov dword [esp+0x4], _cstring_nvg_off_powerdow
	mov eax, [ebp-0x1c]
	mov eax, [eax+esi]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jnz CG_UpdateViewWeaponAnim_350
	mov edx, cgMedia
	mov eax, [edx+0x104c]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_PlayClientSoundAlias
	jmp CG_UpdateViewWeaponAnim_350
CG_UpdateViewWeaponAnim_150:
	mov ecx, 0x20
	mov edx, esi
	mov eax, edi
	pxor xmm0, xmm0
	call PlayADSAnim
	jmp CG_UpdateViewWeaponAnim_360
CG_UpdateViewWeaponAnim_220:
	mov ecx, 0x1f
	jmp CG_UpdateViewWeaponAnim_370
CG_UpdateViewWeaponAnim_200:
	mov eax, 0x1
	jmp CG_UpdateViewWeaponAnim_380
CG_UpdateViewWeaponAnim_730:
	mov dword [esp], 0x1b
CG_UpdateViewWeaponAnim_400:
	pxor xmm0, xmm0
	mov ecx, esi
	mov edx, edi
	mov eax, [ebp+0x8]
	call StartWeaponAnim
	jmp CG_UpdateViewWeaponAnim_390
CG_UpdateViewWeaponAnim_690:
	mov dword [esp], 0x18
	jmp CG_UpdateViewWeaponAnim_400
CG_UpdateViewWeaponAnim_700:
	mov dword [esp], 0x4
	jmp CG_UpdateViewWeaponAnim_400
CG_UpdateViewWeaponAnim_710:
	mov dword [esp], 0x19
	jmp CG_UpdateViewWeaponAnim_400
CG_UpdateViewWeaponAnim_720:
	mov dword [esp], 0x1a
	jmp CG_UpdateViewWeaponAnim_400
CG_UpdateViewWeaponAnim_610:
	mov dword [esp], 0x11
	jmp CG_UpdateViewWeaponAnim_400
CG_UpdateViewWeaponAnim_620:
	mov dword [esp], 0x10
	jmp CG_UpdateViewWeaponAnim_400
CG_UpdateViewWeaponAnim_630:
	mov dword [esp], 0x13
	jmp CG_UpdateViewWeaponAnim_400
CG_UpdateViewWeaponAnim_640:
	mov dword [esp], 0x12
	jmp CG_UpdateViewWeaponAnim_400
CG_UpdateViewWeaponAnim_650:
	mov dword [esp], 0x15
	jmp CG_UpdateViewWeaponAnim_400
CG_UpdateViewWeaponAnim_660:
	mov dword [esp], 0x14
	jmp CG_UpdateViewWeaponAnim_400
CG_UpdateViewWeaponAnim_670:
	mov dword [esp], 0x16
	jmp CG_UpdateViewWeaponAnim_400
CG_UpdateViewWeaponAnim_680:
	mov dword [esp], 0x17
	jmp CG_UpdateViewWeaponAnim_400
CG_UpdateViewWeaponAnim_450:
	xor ebx, ebx
	mov dword [ebp-0x3c], 0x1
CG_UpdateViewWeaponAnim_420:
	mov eax, [ebp-0x3c]
	mov [esp+0x4], eax
	mov edx, [ebp-0x40]
	mov [esp], edx
	call XAnimHasFinished
	test al, al
	jnz CG_UpdateViewWeaponAnim_410
	mov eax, [ebp-0x48]
	mov dword [eax+0x28], 0xffffffff
	mov ebx, cgArray
	test byte [ebx+0x46760], 0x1
	jz CG_UpdateViewWeaponAnim_240
	mov ebx, 0x3f000000
CG_UpdateViewWeaponAnim_410:
	add dword [ebp-0x3c], 0x1
	cmp dword [ebp-0x3c], 0x1f
	jnz CG_UpdateViewWeaponAnim_420
	mov [esp], edi
	call BG_ClipForWeapon
	mov edx, cgArray
	mov edx, [edx+eax*4+0x46498]
	test edx, edx
	jnz CG_UpdateViewWeaponAnim_430
	mov dword [esp], 0x2
CG_UpdateViewWeaponAnim_440:
	mov [ebp-0x4c], ebx
	movss xmm0, dword [ebp-0x4c]
	mov ecx, esi
	mov edx, edi
	mov eax, [ebp+0x8]
	call StartWeaponAnim
	jmp CG_UpdateViewWeaponAnim_390
CG_UpdateViewWeaponAnim_460:
	mov dword [esp], 0x3
	jmp CG_UpdateViewWeaponAnim_400
CG_UpdateViewWeaponAnim_470:
	mov dword [esp], 0x5
	jmp CG_UpdateViewWeaponAnim_400
CG_UpdateViewWeaponAnim_480:
	mov dword [esp], 0x6
	jmp CG_UpdateViewWeaponAnim_400
CG_UpdateViewWeaponAnim_490:
	mov dword [esp], 0x1c
	jmp CG_UpdateViewWeaponAnim_400
CG_UpdateViewWeaponAnim_500:
	mov dword [esp], 0x1d
	jmp CG_UpdateViewWeaponAnim_400
CG_UpdateViewWeaponAnim_510:
	mov dword [esp], 0x1e
	jmp CG_UpdateViewWeaponAnim_400
CG_UpdateViewWeaponAnim_520:
	mov dword [esp], 0x7
	jmp CG_UpdateViewWeaponAnim_400
CG_UpdateViewWeaponAnim_530:
	mov dword [esp], 0x8
	jmp CG_UpdateViewWeaponAnim_400
CG_UpdateViewWeaponAnim_540:
	mov dword [esp], 0xf
	jmp CG_UpdateViewWeaponAnim_400
CG_UpdateViewWeaponAnim_550:
	mov dword [esp], 0xd
	jmp CG_UpdateViewWeaponAnim_400
CG_UpdateViewWeaponAnim_560:
	mov dword [esp], 0xe
	jmp CG_UpdateViewWeaponAnim_400
CG_UpdateViewWeaponAnim_570:
	mov dword [esp], 0x9
	jmp CG_UpdateViewWeaponAnim_400
CG_UpdateViewWeaponAnim_580:
	mov dword [esp], 0xa
	jmp CG_UpdateViewWeaponAnim_400
CG_UpdateViewWeaponAnim_590:
	mov dword [esp], 0xb
	jmp CG_UpdateViewWeaponAnim_400
CG_UpdateViewWeaponAnim_600:
	mov dword [esp], 0xc
	jmp CG_UpdateViewWeaponAnim_400
CG_UpdateViewWeaponAnim_430:
	mov dword [esp], 0x1
	jmp CG_UpdateViewWeaponAnim_440
	
	
CG_UpdateViewWeaponAnim_jumptab_0:
	dd CG_UpdateViewWeaponAnim_450
	dd CG_UpdateViewWeaponAnim_450
	dd CG_UpdateViewWeaponAnim_460
	dd CG_UpdateViewWeaponAnim_470
	dd CG_UpdateViewWeaponAnim_480
	dd CG_UpdateViewWeaponAnim_490
	dd CG_UpdateViewWeaponAnim_500
	dd CG_UpdateViewWeaponAnim_510
	dd CG_UpdateViewWeaponAnim_520
	dd CG_UpdateViewWeaponAnim_530
	dd CG_UpdateViewWeaponAnim_540
	dd CG_UpdateViewWeaponAnim_550
	dd CG_UpdateViewWeaponAnim_560
	dd CG_UpdateViewWeaponAnim_570
	dd CG_UpdateViewWeaponAnim_580
	dd CG_UpdateViewWeaponAnim_590
	dd CG_UpdateViewWeaponAnim_600
	dd CG_UpdateViewWeaponAnim_610
	dd CG_UpdateViewWeaponAnim_620
	dd CG_UpdateViewWeaponAnim_630
	dd CG_UpdateViewWeaponAnim_640
	dd CG_UpdateViewWeaponAnim_650
	dd CG_UpdateViewWeaponAnim_660
	dd CG_UpdateViewWeaponAnim_670
	dd CG_UpdateViewWeaponAnim_680
	dd CG_UpdateViewWeaponAnim_690
	dd CG_UpdateViewWeaponAnim_700
	dd CG_UpdateViewWeaponAnim_710
	dd CG_UpdateViewWeaponAnim_720
	dd CG_UpdateViewWeaponAnim_730


;CG_ImpactEffectForWeapon(int, int, int, FxEffectDef const**, snd_alias_list_t**)
CG_ImpactEffectForWeapon:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x10]
	mov ebx, [ebp+0x18]
	mov eax, [ebp+0x8]
	mov [esp], eax
	call BG_GetWeaponDef
	mov edx, eax
	mov dword [ebx], 0x0
	mov eax, esi
	shr eax, 0x2
	mov ecx, eax
	and cl, 0x1
	cmp dword [edx+0x138], 0x8
	ja CG_ImpactEffectForWeapon_10
	mov eax, [edx+0x138]
	jmp dword [eax*4+CG_ImpactEffectForWeapon_jumptab_0]
CG_ImpactEffectForWeapon_10:
	mov eax, [ebp+0x14]
	mov dword [eax], 0x0
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
CG_ImpactEffectForWeapon_130:
	test cl, cl
	jz CG_ImpactEffectForWeapon_20
	mov edx, cgMedia
	mov eax, [ebp+0xc]
	mov edx, [edx+eax*4+0x520]
	mov eax, 0x1
CG_ImpactEffectForWeapon_90:
	mov [ebx], edx
	mov ebx, eax
	mov edx, cgMedia
	cmp dword [ebp+0xc], 0x7
	jnz CG_ImpactEffectForWeapon_30
CG_ImpactEffectForWeapon_50:
	test esi, 0x2
	jz CG_ImpactEffectForWeapon_40
	and esi, 0x1
	cmp esi, 0x1
	sbb ecx, ecx
	and ecx, 0xfffffffe
	add ecx, 0x3
CG_ImpactEffectForWeapon_120:
	mov edx, [edx+0x2754]
	mov eax, ebx
	shl eax, 0x7
	lea eax, [eax+ebx*4]
	lea eax, [eax+ecx*4]
	add eax, [edx+0x4]
	mov eax, [eax+0x74]
	mov edx, [ebp+0x14]
	mov [edx], eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
CG_ImpactEffectForWeapon_200:
	mov eax, [edx+0x59c]
	mov [ebx], eax
	mov ebx, 0xb
	mov edx, cgMedia
CG_ImpactEffectForWeapon_60:
	cmp dword [ebp+0xc], 0x7
	jz CG_ImpactEffectForWeapon_50
CG_ImpactEffectForWeapon_30:
	mov eax, [edx+0x2754]
	mov edx, [eax+0x4]
	mov eax, ebx
	shl eax, 0x7
	lea eax, [eax+ebx*4]
	mov ecx, [ebp+0xc]
	lea eax, [eax+ecx*4]
	mov eax, [eax+edx]
	mov edx, [ebp+0x14]
	mov [edx], eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
CG_ImpactEffectForWeapon_190:
	mov edx, cgMedia
	mov ecx, [ebp+0xc]
	mov eax, [edx+ecx*4+0x2dc]
	mov [ebx], eax
	mov ebx, 0xa
	jmp CG_ImpactEffectForWeapon_60
CG_ImpactEffectForWeapon_180:
	mov edx, cgMedia
	mov ecx, [ebp+0xc]
	mov eax, [edx+ecx*4+0x268]
	mov [ebx], eax
	mov ebx, 0x9
	jmp CG_ImpactEffectForWeapon_60
CG_ImpactEffectForWeapon_170:
	mov eax, [edx+0x208]
	test eax, eax
	jz CG_ImpactEffectForWeapon_70
	mov edx, [ebp+0xc]
	mov eax, [eax+edx*4]
CG_ImpactEffectForWeapon_70:
	mov [ebx], eax
	mov ebx, 0x8
	mov edx, cgMedia
	jmp CG_ImpactEffectForWeapon_60
CG_ImpactEffectForWeapon_160:
	test cl, cl
	jnz CG_ImpactEffectForWeapon_80
	mov edx, cgMedia
	mov eax, [ebp+0xc]
	mov edx, [edx+eax*4+0x4ac]
	mov eax, 0x4
	jmp CG_ImpactEffectForWeapon_90
CG_ImpactEffectForWeapon_150:
	test cl, cl
	jnz CG_ImpactEffectForWeapon_100
	mov edx, cgMedia
	mov ecx, [ebp+0xc]
	mov edx, [edx+ecx*4+0x438]
	mov eax, 0x6
	jmp CG_ImpactEffectForWeapon_90
CG_ImpactEffectForWeapon_140:
	test cl, cl
	jnz CG_ImpactEffectForWeapon_110
	mov edx, cgMedia
	mov eax, [ebp+0xc]
	mov edx, [edx+eax*4+0x3c4]
	mov eax, 0x2
	jmp CG_ImpactEffectForWeapon_90
CG_ImpactEffectForWeapon_40:
	mov ecx, esi
	and ecx, 0x1
	neg ecx
	and ecx, 0x2
	jmp CG_ImpactEffectForWeapon_120
CG_ImpactEffectForWeapon_20:
	mov edx, cgMedia
	mov ecx, [ebp+0xc]
	mov edx, [edx+ecx*4+0x350]
	xor eax, eax
	jmp CG_ImpactEffectForWeapon_90
CG_ImpactEffectForWeapon_110:
	mov edx, cgMedia
	mov ecx, [ebp+0xc]
	mov edx, [edx+ecx*4+0x594]
	mov eax, 0x3
	jmp CG_ImpactEffectForWeapon_90
CG_ImpactEffectForWeapon_100:
	mov edx, cgMedia
	mov eax, [ebp+0xc]
	mov edx, [edx+eax*4+0x608]
	mov eax, 0x7
	jmp CG_ImpactEffectForWeapon_90
CG_ImpactEffectForWeapon_80:
	mov edx, cgMedia
	mov ecx, [ebp+0xc]
	mov edx, [edx+ecx*4+0x67c]
	mov eax, 0x5
	jmp CG_ImpactEffectForWeapon_90
	nop
	
	
CG_ImpactEffectForWeapon_jumptab_0:
	dd CG_ImpactEffectForWeapon_10
	dd CG_ImpactEffectForWeapon_130
	dd CG_ImpactEffectForWeapon_140
	dd CG_ImpactEffectForWeapon_150
	dd CG_ImpactEffectForWeapon_160
	dd CG_ImpactEffectForWeapon_170
	dd CG_ImpactEffectForWeapon_180
	dd CG_ImpactEffectForWeapon_190
	dd CG_ImpactEffectForWeapon_200


;CG_PlayerTurretWeaponIdx(int)
CG_PlayerTurretWeaponIdx:
	push ebp
	mov ebp, esp
	mov eax, cgArray
	test dword [eax+0x461ec], 0x300
	jz CG_PlayerTurretWeaponIdx_10
	mov ecx, [eax+0x466d4]
	test ecx, ecx
	jz CG_PlayerTurretWeaponIdx_10
	mov eax, [eax+0x466d8]
	lea edx, [eax*4]
	shl eax, 0x5
	sub eax, edx
	mov edx, eax
	shl edx, 0x4
	add eax, edx
	mov edx, cg_entitiesArray
	mov eax, [edx+eax+0x190]
	pop ebp
	ret
CG_PlayerTurretWeaponIdx_10:
	xor eax, eax
	pop ebp
	ret


;CG_UpdateWeaponViewmodels(int)
CG_UpdateWeaponViewmodels:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov esi, 0x1
	mov edi, cgArray
	mov ebx, cg_weaponsArray
	add ebx, 0x44
	jmp CG_UpdateWeaponViewmodels_10
CG_UpdateWeaponViewmodels_30:
	mov eax, [edi+0x24]
	movzx eax, byte [esi+eax+0x828]
	cmp [ebx+0x14], al
	jz CG_UpdateWeaponViewmodels_20
	movzx ecx, al
	mov dword [esp+0x10], 0x1
	mov eax, [ebx+0x10]
	mov [esp+0xc], eax
	mov eax, [ebx+0xc]
	mov [esp+0x8], eax
	mov eax, [ebx+0x8]
	mov [esp+0x4], eax
	mov eax, [ebx+0x4]
	mov [esp], eax
	mov edx, esi
	mov eax, [ebp+0x8]
	call ChangeViewmodelDobj
CG_UpdateWeaponViewmodels_20:
	add esi, 0x1
	add ebx, 0x44
CG_UpdateWeaponViewmodels_10:
	call BG_GetNumWeapons
	cmp esi, eax
	jb CG_UpdateWeaponViewmodels_30
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;CG_PlayerUsingScopedTurret(int)
CG_PlayerUsingScopedTurret:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, cgArray
	test dword [eax+0x461ec], 0x300
	jz CG_PlayerUsingScopedTurret_10
	mov edx, [eax+0x466d4]
	test edx, edx
	jz CG_PlayerUsingScopedTurret_10
	mov eax, [eax+0x466d8]
	lea edx, [eax*4]
	shl eax, 0x5
	sub eax, edx
	mov edx, eax
	shl edx, 0x4
	add eax, edx
	mov edx, cg_entitiesArray
	mov eax, [edx+eax+0x190]
	test eax, eax
	jz CG_PlayerUsingScopedTurret_10
	mov [esp], eax
	call BG_GetWeaponDef
	mov ecx, [eax+0x430]
	test ecx, ecx
	jz CG_PlayerUsingScopedTurret_10
	mov eax, 0x1
	leave
	ret
CG_PlayerUsingScopedTurret_10:
	xor eax, eax
	leave
	ret


;CG_UICheckWeapLockAttackTop(int)
CG_UICheckWeapLockAttackTop:
	push ebp
	mov ebp, esp
	xor eax, eax
	pop ebp
	ret
	nop


;CG_GetLocalClientGlobalsForEnt(int, int)
CG_GetLocalClientGlobalsForEnt:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp], 0x0
	call CL_IsLocalClientActive
	test al, al
	jz CG_GetLocalClientGlobalsForEnt_10
	mov eax, cgArray
	mov edx, [eax+0x24]
	test byte [edx+0x20], 0x6
	jnz CG_GetLocalClientGlobalsForEnt_20
CG_GetLocalClientGlobalsForEnt_40:
	xor edx, edx
CG_GetLocalClientGlobalsForEnt_50:
	test edx, edx
	jnz CG_GetLocalClientGlobalsForEnt_30
CG_GetLocalClientGlobalsForEnt_10:
	xor eax, eax
CG_GetLocalClientGlobalsForEnt_30:
	leave
	ret
CG_GetLocalClientGlobalsForEnt_20:
	mov ecx, [ebp+0xc]
	cmp ecx, [edx+0xe8]
	jnz CG_GetLocalClientGlobalsForEnt_40
	mov edx, 0x1
	jmp CG_GetLocalClientGlobalsForEnt_50


;CG_UICheckWeapLockAttackDirect(int)
CG_UICheckWeapLockAttackDirect:
	push ebp
	mov ebp, esp
	xor eax, eax
	pop ebp
	ret
	nop


;Initialized global or static variables of cg_weapons:
SECTION .data
g_animRateOffsets: dd 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 0x378, 0xffffffff, 0xffffffff, 0x380, 0x384, 0x388, 0x390, 0x398, 0x3a0, 0x3a8, 0x3bc, 0x3a4, 0x3b0, 0x3ac, 0x3b8, 0x3b4, 0x3c0, 0x3c4, 0x3c8, 0x3cc, 0x3d0, 0xffffffff, 0x3d4, 0x3e0, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff
_ZZ45CalculateWeaponPosition_BasePosition_movementP4cg_sPfE10MYLERP_END: dd 0x3dcccccd
_ZZ45CalculateWeaponPosition_BasePosition_movementP4cg_sPfE12MYLERP_START: dd 0x3e99999a, 0x0, 0x0, 0x0, 0x0, 0x0


;Initialized constant data of cg_weapons:
SECTION .rdata
g_keepZ__uint4: dd 0x0, 0x0, 0xffffffff, 0x0
g_keepX__uint4: dd 0xffffffff, 0x0, 0x0, 0x0
g_keepZW__uint4: dd 0x0, 0x0, 0xffffffff, 0xffffffff
g_keepXY__uint4: dd 0xffffffff, 0xffffffff, 0x0, 0x0
g_keepXYZ__uint4: dd 0xffffffff, 0xffffffff, 0xffffffff, 0x0
g_keepXYW__uint4: dd 0xffffffff, 0xffffffff, 0x0, 0xffffffff
g_keepXZW__uint4: dd 0xffffffff, 0x0, 0xffffffff, 0xffffffff
g_keepYZW__uint4: dd 0x0, 0xffffffff, 0xffffffff, 0xffffffff
g_selectW__uint4: dd 0x10203, 0x4050607, 0x8090a0b, 0x1c1d1e1f
g_selectZ__uint4: dd 0x10203, 0x4050607, 0x18191a1b, 0xc0d0e0f
g_selectY__uint4: dd 0x10203, 0x14151617, 0x8090a0b, 0xc0d0e0f
g_selectX__uint4: dd 0x10111213, 0x4050607, 0x8090a0b, 0xc0d0e0f
g_swizzleWWWW__uint4: dd 0xc0d0e0f, 0xc0d0e0f, 0xc0d0e0f, 0xc0d0e0f
g_swizzleZZZZ__uint4: dd 0x8090a0b, 0x8090a0b, 0x8090a0b, 0x8090a0b
g_swizzleYYYY__uint4: dd 0x4050607, 0x4050607, 0x4050607, 0x4050607
g_swizzleXXXX__uint4: dd 0x10203, 0x10203, 0x10203, 0x10203
g_swizzleYZWA__uint4: dd 0x4050607, 0x8090a0b, 0xc0d0e0f, 0x10111213
g_swizzleZWAW__uint4: dd 0x8090a0b, 0xc0d0e0f, 0x10111213, 0xc0d0e0f
g_swizzleWABW__uint4: dd 0xc0d0e0f, 0x10111213, 0x14151617, 0xc0d0e0f
g_swizzleZXYW__uint4: dd 0x8090a0b, 0x10203, 0x4050607, 0xc0d0e0f
g_swizzleYZXW__uint4: dd 0x4050607, 0x8090a0b, 0x10203, 0xc0d0e0f
g_swizzleXYZA__uint4: dd 0x10203, 0x4050607, 0x8090a0b, 0x10111213
g_swizzleZWCD__uint4: dd 0x8090a0b, 0xc0d0e0f, 0x18191a1b, 0x1c1d1e1f
g_swizzleXYAB__uint4: dd 0x10203, 0x4050607, 0x10111213, 0x14151617
g_swizzleYBWD__uint4: dd 0x4050607, 0x14151617, 0xc0d0e0f, 0x1c1d1e1f
g_swizzleXAZC__uint4: dd 0x10203, 0x10111213, 0x8090a0b, 0x18191a1b
g_swizzleYXWZ__uint4: dd 0x4050607, 0x10203, 0xc0d0e0f, 0x8090a0b
g_swizzleXZYW__uint4: dd 0x10203, 0x8090a0b, 0x4050607, 0xc0d0e0f
g_swizzleYXZW__uint4: dd 0x4050607, 0x10203, 0x8090a0b, 0xc0d0e0f
g_swizzleXYZW__uint4: dd 0x10203, 0x4050607, 0x8090a0b, 0xc0d0e0f
g_inc__uint4: dd 0x1, 0x1, 0x1, 0x1
g_negativeZero__uint4: dd 0x80000000, 0x80000000, 0x80000000, 0x80000000
g_fltMin__uint4: dd 0x800000, 0x800000, 0x800000, 0x800000, 0x5cc13, 0x5cc23, 0x5cd5d, 0x5cd3f, 0x5cd1d, 0x5ccfe, 0x5cce5, 0x5cccc, 0x5cc8d, 0x5e38c, 0x5e38c, 0x5e414, 0x5e420, 0x5e42c, 0x5e438, 0x5e444, 0x5e450, 0x5e45c, 0x5e468, 0x5e474, 0x5e480, 0x5e48c, 0x5e498, 0x5e4a4, 0x5e4b0, 0x5e4bc, 0x5e341, 0x5e34a, 0x5e353, 0x5e35c, 0x5e365, 0x5e36e, 0x5e377, 0x5e380, 0x5e31d, 0x5e326, 0x5e32f, 0x5e338, 0x5e301, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x6101e, 0x611a4, 0x611c6, 0x611e8, 0x61285, 0x61209, 0x612c6, 0x612aa, 0x612e1, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x7fffffff, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x7fffffff, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x7fffffff, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0


;Zero initialized global or static variables of cg_weapons:
SECTION .bss
g_keepZ: resb 0x10
g_keepX: resb 0x10
g_keepZW: resb 0x10
g_keepXY: resb 0x10
g_keepXYZ: resb 0x10
g_keepXYW: resb 0x10
g_keepXZW: resb 0x10
g_keepYZW: resb 0x10
g_selectW: resb 0x10
g_selectZ: resb 0x10
g_selectY: resb 0x10
g_selectX: resb 0x10
g_swizzleWWWW: resb 0x10
g_swizzleZZZZ: resb 0x10
g_swizzleYYYY: resb 0x10
g_swizzleXXXX: resb 0x10
g_swizzleYZWA: resb 0x10
g_swizzleZWAW: resb 0x10
g_swizzleWABW: resb 0x10
g_swizzleZXYW: resb 0x10
g_swizzleYZXW: resb 0x10
g_swizzleXYZA: resb 0x10
g_swizzleZWCD: resb 0x10
g_swizzleXYAB: resb 0x10
g_swizzleYBWD: resb 0x10
g_swizzleXAZC: resb 0x10
g_swizzleYXWZ: resb 0x10
g_swizzleXZYW: resb 0x10
g_swizzleYXZW: resb 0x10
g_swizzleXYZW: resb 0x10
g_inc: resb 0x10
g_negativeZero: resb 0x10
g_fltMin: resb 0x80
removeMeWhenMPStopsCrashingInHere: resb 0x80


;All cstrings:
SECTION .rdata
_cstring_viewmodel:		db "VIEWMODEL",0
_cstring_root:		db "root",0
_cstring_cg_registerweapo:		db 015h,"CG_RegisterWeapon: No idle anim specified for [%s]",0
_cstring_cg_registerweapo1:		db 015h,"CG_RegisterWeapon: ADS anim [%s] cannot be looping",0
_cstring_actionslot_numbe:		db "+/-actionslot; number given is out of range.  Was %i, expected 1 thru %i.",0ah,0
_cstring_usage_actionslot:		db "USAGE: +/-actionslot <number>",0ah,0
_cstring_player_is_holdin:		db "Player is holding alt-mode weapon ",22h,"%s",22h,", but does not posses it",27h,"s original, ",22h,"%s",22h,".",0ah,0
_cstring_no_s_in_calcmuzz:		db "No %s in CalcMuzzlePoint on entity %d.",0ah,0
_cstring_unknown_etype_i_:		db "Unknown eType %i in CG_DrawBulletImpacts()",0ah,0
_cstring_cg_fireweapon_we:		db 015h,"CG_FireWeapon: weapon >= BG_GetNumWeapons()",0
_cstring_cg_registerweapo2:		db "CG_RegisterWeapon: No such bone tag (%s) for weapon (%s)",0ah,0
_cstring_weapon_s_could_n:		db "Weapon %s: Could not translate AI overlay description ",22h,"%s",22h,0
_cstring_weapon_s_could_n1:		db "Weapon %s: Could not translate mode name ",22h,"%s",22h,0
_cstring_weapon_s_could_n2:		db "Weapon %s: Could not translate display name ",22h,"%s",22h,0
_cstring_warning_weapon_s:		db "WARNING: Weapon %s: Could not translate AI overlay description ",22h,"%s",22h,0ah,0
_cstring_warning_weapon_s1:		db "WARNING: Weapon %s: Could not translate mode name ",22h,"%s",22h,0ah,0
_cstring_warning_weapon_s2:		db "WARNING: Weapon %s: Could not translate display name ",22h,"%s",22h,0ah,0
_cstring_weapon_index_mis:		db "Weapon index mismatch for ",27h,"%s",27h,0
_cstring_cg_ejectweaponbr:		db 015h,"CG_EjectWeaponBrass: ent->weapon >= BG_GetNumWeapons()",0
_cstring_cg_getplayerview:		db 015h,"CG_GetPlayerViewOrigin: Couldn",27h,"t find [tag_player] on turret",0ah,0
_cstring_cg_getplayerview1:		db 015h,"CG_GetPlayerViewOrigin: Unable to get DObj for turret entity %i",0
_cstring_weaponrunxmodela:		db "WeaponRunXModelAnims: Unknown weapon animation %i",0ah,0
_cstring_end:		db "end",0
_cstring_nvg_on_powerup:		db "NVG_on_powerup",0
_cstring_nvg_off_powerdow:		db "NVG_off_powerdown",0



;All constant floats and doubles:
SECTION .rdata
_float_1_00000000:		dd 0x3f800000	; 1
_float_0_00000000:		dd 0x0	; 0
_float_1000_00000000:		dd 0x447a0000	; 1000
_float_11_00000000:		dd 0x41300000	; 11
_float_0_00100000:		dd 0x3a83126f	; 0.001
_float_0_10000000:		dd 0x3dcccccd	; 0.1
_float_0_50000000:		dd 0x3f000000	; 0.5
_float__2_00000000:		dd 0xc0000000	; -2
_float__0_10000000:		dd 0xbdcccccd	; -0.1
_float_40_00000000:		dd 0x42200000	; 40
_float_60_00000000:		dd 0x42700000	; 60
_float_32768_00000000:		dd 0x47000000	; 32768
_float_64_00000000:		dd 0x42800000	; 64
_float_140_00000000:		dd 0x430c0000	; 140
_float__16_00000000:		dd 0xc1800000	; -16
_float_8_00000000:		dd 0x41000000	; 8
_float_255_00000000:		dd 0x437f0000	; 255
_float_8192_00000000:		dd 0x46000000	; 8192
_double_0_01745329:		dq 0x3f91df46a2529d39	; 0.0174533
_double_0_00000000:		dq 0x3e00000000200000	; 4.65661e-10
_double_0_99999988:		dq 0x3fefffffbf935359	; 1
_float_360_00000000:		dd 0x43b40000	; 360
_data16_80000000:		dd 0x80000000, 0x0, 0x0, 0x0	; OWORD
_float_0_01000000:		dd 0x3c23d70a	; 0.01
_float_0_99999988:		dd 0x3f7ffffe	; 1
_float_30_00000000:		dd 0x41f00000	; 30
_float_3_00000000:		dd 0x40400000	; 3
_float_0_25000000:		dd 0x3e800000	; 0.25
_float_150_00000000:		dd 0x43160000	; 150
_float_300_00000000:		dd 0x43960000	; 300
_float_1_60000002:		dd 0x3fcccccd	; 1.6

