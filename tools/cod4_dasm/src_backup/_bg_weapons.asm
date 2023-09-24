;Imports of bg_weapons:
	extern strcpy
	extern _Z21Com_SurfaceTypeToNamei
	extern _Z11Com_sprintfPciPKcz
	extern _Z9Com_Error11errorParm_tPKcz
	extern _Z25ParseConfigStringToStructPhPK10cspField_tiPKciPFiS_S4_iEPFvS_S4_E
	extern _Z19DB_FindXAssetHeader10XAssetTypePKc
	extern _Z24BG_LoadWeaponDefInternalPKcS0_
	extern _Z15SetConfigStringPPcPKc
	extern _Z11Com_DPrintfiPKcz
	extern _Z9I_stricmpPKcS0_
	extern _Z11PM_AddEventP13playerState_si
	extern _Z27PM_SetProneMovementOverrideP13playerState_s
	extern _Z35BG_AddPredictableEventToPlayerstateijP13playerState_s
	extern _Z18BG_AnimScriptEventP13playerState_s22scriptAnimEventTypes_tii
	extern _Z20Trace_GetEntityHitIdPK7trace_t
	extern _Z23BG_LoadDefaultWeaponDefv
	extern bg_itemlist
	extern _Z22BG_LoadPlayerAnimTypesv
	extern _Z20BG_InitWeaponStringsv
	extern _Z7randomfv
	extern perk_weapSpreadMultiplier
	extern _Z15GetLeanFractionf
	extern bg_bobAmplitudeStanding
	extern bg_bobAmplitudeProne
	extern sinf
	extern sin
	extern bg_bobAmplitudeSprinting
	extern _ZZ14PM_GetMoveAnimP13playerState_s17PmStanceFrontBackiiE13moveAnimTable
	extern bg_bobAmplitudeDucked
	extern memset
	extern strcmp
	extern floorf
	extern bg_aimSpreadMoveSpeedThreshold
	extern fs_gameDirVar
	extern useFastFile
	extern _Z18DB_IsXAssetDefault10XAssetTypePKc
	extern _Z25BG_ClearSurfaceTypeSoundsv
	extern _Z20SL_RemoveRefToStringj
	extern _Z20BG_SetConditionValueiiy
	extern player_scopeExitOnDamage
	extern player_adsExitDelay
	extern _Z18Com_LoadInfoStringPKcS0_S0_Pc
	extern _Z10Com_MemsetPvii
	extern _Z14AnglesSubtractPKfS0_Pf
	extern _Z9DiffTrackffff
	extern _Z14DiffTrackAngleffff
	extern player_breath_hold_time
	extern player_breath_gasp_time
	extern perk_extraBreath
	extern player_breath_hold_lerp
	extern player_breath_gasp_lerp
	extern player_breath_gasp_scale
	extern perk_weapReloadMultiplier
	extern _Z19PM_MeleeChargeStartP7pmove_t
	extern _Z23Mantle_IsWeaponInactiveP13playerState_s
	extern player_sustainAmmo
	extern _Z18BG_SetConditionBitiii
	extern player_breath_fire_delay
	extern perk_weapRateMultiplier
	extern player_burstFireCooldown

;Exports of bg_weapons:
	global bg_numAmmoTypes
	global bg_weapAmmoTypes
	global bg_numSharedAmmoCaps
	global bg_sharedAmmoCaps
	global bg_numWeapClips
	global bg_weapClips
	global penetrationDepthTableLoaded
	global _Z13BG_StringCopyPhPKc
	global _Z29BG_ParsePenetrationDepthTablePKcPfS0_
	global _Z25BG_LoadWeaponDef_FastFilePKc
	global _Z24BG_LoadWeaponDef_LoadObjPKc
	global _Z25BG_SetupSharedAmmoIndexesj
	global _Z13PM_ReloadClipP13playerState_s
	global _Z24PM_Weapon_OffHandPrepareP13playerState_s
	global _Z48BG_CalculateWeaponPosition_GunRecoil_SingleAnglePfS_ffffff
	global _Z20PM_BeginWeaponChangeP13playerState_sjh
	global _Z29PM_Weapon_ReloadDelayedActionP13playerState_s
	global _Z20PM_SetReloadingStateP13playerState_s
	global _Z20PM_BeginWeaponReloadP13playerState_s
	global _ZZ24PM_Weapon_CheckForReloadP7pmove_tE35MY_RELOADSTART_INTERUPT_IGNORE_FRAC
	global _Z24PM_Weapon_CheckForReloadP7pmove_t
	global _Z25PM_Weapon_CheckForOffHandP7pmove_t
	global _Z13BG_WeaponAmmoPK13playerState_si
	global _Z14BG_GetBobCyclePK13playerState_s
	global _Z15BG_AdvanceTraceP16BulletFireParamsP18BulletTraceResultsf
	global _Z15BG_GetWeaponDefj
	global _Z16BG_AmmoForWeaponi
	global _Z16BG_CanHoldBreathPK13playerState_s
	global _Z16BG_ClipForWeaponi
	global _Z16BG_GetNumWeaponsv
	global _Z16BG_IsWeaponValidPK13playerState_sj
	global _Z17BG_ClearWeaponDefv
	global _Z17BG_GetWeaponIndexPK9WeaponDef
	global _Z19BG_GetAmmoPlayerMaxPK13playerState_sjj
	global _Z19BG_TakePlayerWeaponP13playerState_sji
	global _Z19BG_UsingSniperScopePK13playerState_s
	global _Z19BG_WeaponFireRecoilPK13playerState_sPfS2_
	global _Z19BG_WeaponIsClipOnlyi
	global _Z19PM_ExitAimDownSightP13playerState_s
	global _Z19PM_ResetWeaponStateP13playerState_s
	global _Z20BG_WeaponBlocksPronej
	global _Z21BG_GetSpreadForWeaponPK13playerState_sPK9WeaponDefPfS5_
	global _Z22BG_CalculateViewAnglesP11viewState_tPf
	global _Z22BG_CanPlayerHaveWeaponj
	global _Z22BG_GetTotalAmmoReservePK13playerState_sj
	global _Z22BG_ThrowingBackGrenadePK13playerState_s
	global _Z22PM_WeaponAmmoAvailableP13playerState_s
	global _Z23BG_FillInAllWeaponItemsv
	global _Z23BG_GetMaxPickupableAmmoPK13playerState_sj
	global _Z23BG_GetVerticalBobFactorPK13playerState_sfff
	global _Z23BG_IsAimDownSightWeaponj
	global _Z23PM_AdjustAimSpreadScaleP7pmove_tP5pml_t
	global _Z24BG_CalculateWeaponAnglesP13weaponState_tPf
	global _Z24BG_GetWeaponIndexForNamePKcPFvjE
	global _Z25BG_FindWeaponIndexForNamePKc
	global _Z25BG_GetHorizontalBobFactorPK13playerState_sfff
	global _Z25BG_ShutdownWeaponDefFilesv
	global _Z25PM_UpdateAimDownSightFlagP7pmove_tP5pml_t
	global _Z25PM_UpdateAimDownSightLerpP7pmove_tP5pml_t
	global _Z26BG_GetFirstEquippedOffhandPK13playerState_si
	global _Z26BG_GetViewmodelWeaponIndexPK13playerState_s
	global _Z27BG_AssertOffhandIndexOrNonei
	global _Z27BG_GetFirstAvailableOffhandPK13playerState_si
	global _Z28BG_LoadPenetrationDepthTablev
	global _Z28BG_PlayerHasCompatibleWeaponPK13playerState_sj
	global _Z29BG_GetSurfacePenetrationDepthPK9WeaponDefi
	global _Z30BG_PlayerWeaponsFull_PrimariesPK13playerState_s
	global _Z30PM_InteruptWeaponWithProneMoveP13playerState_s
	global _Z31BG_CalculateWeaponPosition_SwayPK13playerState_sPfS2_S2_fi
	global _Z32BG_PlayerWeaponCountPrimaryTypesPK13playerState_s
	global _Z9PM_WeaponP7pmove_tP5pml_t
	global bg_lastParsedWeaponIndex
	global bg_weaponDefs
	global penetrationDepthTable


SECTION .text


;BG_StringCopy(unsigned char*, char const*)
_Z13BG_StringCopyPhPKc:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call strcpy
	leave
	ret


;BG_ParsePenetrationDepthTable(char const*, float*, char const*)
_Z29BG_ParsePenetrationDepthTablePKcPfS0_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1e9c
	mov [ebp-0x1e7c], eax
	mov [ebp-0x1e80], edx
	mov [ebp-0x1e84], ecx
	xor esi, esi
	lea ebx, [ebp-0x174]
	lea edi, [ebp-0x1e74]
	jmp _Z29BG_ParsePenetrationDepthTablePKcPfS0__10
_Z29BG_ParsePenetrationDepthTablePKcPfS0__30:
	mov [ebx], edi
	lea eax, [esi*4]
	mov [ebx+0x4], eax
	mov dword [ebx+0x8], 0x6
	add esi, 0x1
	add edi, 0x100
	add ebx, 0xc
	cmp esi, 0x1d
	jz _Z29BG_ParsePenetrationDepthTablePKcPfS0__20
_Z29BG_ParsePenetrationDepthTablePKcPfS0__10:
	mov [esp], esi
	call _Z21Com_SurfaceTypeToNamei
	mov [esp+0x10], eax
	mov eax, [ebp-0x1e7c]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_s_s
	mov dword [esp+0x4], 0x100
	mov [esp], edi
	call _Z11Com_sprintfPciPKcz
	test eax, eax
	jns _Z29BG_ParsePenetrationDepthTablePKcPfS0__30
	mov [esp], esi
	call _Z21Com_SurfaceTypeToNamei
	mov [esp+0xc], eax
	mov eax, [ebp-0x1e7c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_bullet_penetrati
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	mov [ebx], edi
	lea eax, [esi*4]
	mov [ebx+0x4], eax
	mov dword [ebx+0x8], 0x6
	add esi, 0x1
	add edi, 0x100
	add ebx, 0xc
	cmp esi, 0x1d
	jnz _Z29BG_ParsePenetrationDepthTablePKcPfS0__10
_Z29BG_ParsePenetrationDepthTablePKcPfS0__20:
	mov dword [esp+0x18], _Z13BG_StringCopyPhPKc
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x0
	mov eax, [ebp-0x1e84]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x1d
	lea eax, [ebp-0x174]
	mov [esp+0x4], eax
	mov eax, [ebp-0x1e80]
	mov [esp], eax
	call _Z25ParseConfigStringToStructPhPK10cspField_tiPKciPFiS_S4_iEPFvS_S4_E
	test eax, eax
	jnz _Z29BG_ParsePenetrationDepthTablePKcPfS0__40
	mov eax, [ebp-0x1e7c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_parsing_bu
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
_Z29BG_ParsePenetrationDepthTablePKcPfS0__40:
	add esp, 0x1e9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;BG_LoadWeaponDef_FastFile(char const*)
_Z25BG_LoadWeaponDef_FastFilePKc:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	cmp byte [eax], 0x0
	jnz _Z25BG_LoadWeaponDef_FastFilePKc_10
	xor eax, eax
	leave
	ret
_Z25BG_LoadWeaponDef_FastFilePKc_10:
	mov [esp+0x4], eax
	mov dword [esp], 0x17
	call _Z19DB_FindXAssetHeader10XAssetTypePKc
	leave
	ret


;BG_LoadWeaponDef_LoadObj(char const*)
_Z24BG_LoadWeaponDef_LoadObjPKc:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	cmp byte [esi], 0x0
	jnz _Z24BG_LoadWeaponDef_LoadObjPKc_10
	xor ebx, ebx
_Z24BG_LoadWeaponDef_LoadObjPKc_20:
	mov eax, ebx
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z24BG_LoadWeaponDef_LoadObjPKc_10:
	mov [esp+0x4], esi
	mov dword [esp], _cstring_mp
	call _Z24BG_LoadWeaponDefInternalPKcS0_
	mov ebx, eax
	test eax, eax
	jnz _Z24BG_LoadWeaponDef_LoadObjPKc_20
	mov dword [esp+0x4], _cstring_defaultweapon_mp
	mov dword [esp], _cstring_mp
	call _Z24BG_LoadWeaponDefInternalPKcS0_
	mov ebx, eax
	test eax, eax
	jz _Z24BG_LoadWeaponDef_LoadObjPKc_30
_Z24BG_LoadWeaponDef_LoadObjPKc_40:
	mov [esp+0x4], esi
	mov [esp], ebx
	call _Z15SetConfigStringPPcPKc
	jmp _Z24BG_LoadWeaponDef_LoadObjPKc_20
_Z24BG_LoadWeaponDef_LoadObjPKc_30:
	mov dword [esp+0x4], _cstring_bg_loadweapondef
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z24BG_LoadWeaponDef_LoadObjPKc_40
	nop


;BG_SetupSharedAmmoIndexes(unsigned int)
_Z25BG_SetupSharedAmmoIndexesj:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov edi, eax
	mov ebx, [eax*4+bg_weaponDefs]
	mov dword [ebx+0x344], 0xffffffff
	mov eax, [ebx+0x340]
	cmp byte [eax], 0x0
	jnz _Z25BG_SetupSharedAmmoIndexesj_10
_Z25BG_SetupSharedAmmoIndexesj_60:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z25BG_SetupSharedAmmoIndexesj_10:
	mov [esp+0xc], eax
	mov eax, [ebx]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_s_s1
	mov dword [esp], 0x11
	call _Z11Com_DPrintfiPKcz
	mov eax, [bg_numSharedAmmoCaps]
	test eax, eax
	jnz _Z25BG_SetupSharedAmmoIndexesj_20
	mov dword [ebp-0x24], 0x0
	xor edx, edx
	mov ecx, [ebp-0x24]
_Z25BG_SetupSharedAmmoIndexesj_50:
	mov [ecx*4+bg_sharedAmmoCaps], ebx
	mov [ebx+0x344], edx
	add eax, 0x1
	mov [bg_numSharedAmmoCaps], eax
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z25BG_SetupSharedAmmoIndexesj_20:
	mov dword [ebp-0x24], 0x0
	mov esi, bg_sharedAmmoCaps
_Z25BG_SetupSharedAmmoIndexesj_40:
	mov eax, [ebx+0x340]
	mov [esp+0x4], eax
	mov eax, [esi]
	mov eax, [eax+0x340]
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z25BG_SetupSharedAmmoIndexesj_30
	add dword [ebp-0x24], 0x1
	mov eax, [bg_numSharedAmmoCaps]
	add esi, 0x4
	cmp [ebp-0x24], eax
	jb _Z25BG_SetupSharedAmmoIndexesj_40
	mov edx, [ebp-0x24]
	mov ecx, edx
	jmp _Z25BG_SetupSharedAmmoIndexesj_50
_Z25BG_SetupSharedAmmoIndexesj_30:
	mov eax, [ebp-0x24]
	mov [ebx+0x344], eax
	mov edx, [eax*4+bg_sharedAmmoCaps]
	mov eax, [edx+0x348]
	cmp eax, [ebx+0x348]
	jz _Z25BG_SetupSharedAmmoIndexesj_60
	mov eax, [ebp-0x24]
	test eax, eax
	jz _Z25BG_SetupSharedAmmoIndexesj_60
	cmp edi, 0x1
	jbe _Z25BG_SetupSharedAmmoIndexesj_60
	mov dword [ebp-0x20], 0x1
	mov dword [ebp-0x1c], bg_weaponDefs
	jmp _Z25BG_SetupSharedAmmoIndexesj_70
_Z25BG_SetupSharedAmmoIndexesj_80:
	add dword [ebp-0x20], 0x1
	add dword [ebp-0x1c], 0x4
	cmp edi, [ebp-0x20]
	jz _Z25BG_SetupSharedAmmoIndexesj_60
	mov ecx, [ebp-0x24]
	mov edx, [ecx*4+bg_sharedAmmoCaps]
_Z25BG_SetupSharedAmmoIndexesj_70:
	mov eax, [ebp-0x1c]
	mov esi, [eax+0x4]
	mov eax, [esi+0x340]
	mov [esp+0x4], eax
	mov eax, [edx+0x340]
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z25BG_SetupSharedAmmoIndexesj_80
	mov eax, [esi+0x348]
	mov ecx, [ebp-0x24]
	mov edx, [ecx*4+bg_sharedAmmoCaps]
	cmp eax, [edx+0x348]
	jnz _Z25BG_SetupSharedAmmoIndexesj_80
	mov [esp+0x18], eax
	mov eax, [esi]
	mov [esp+0x14], eax
	mov eax, [ebx+0x348]
	mov [esp+0x10], eax
	mov eax, [ebx]
	mov [esp+0xc], eax
	mov eax, [ebx+0x340]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_shared_ammo_cap_
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z25BG_SetupSharedAmmoIndexesj_80
	nop


;PM_ReloadClip(playerState_s*)
_Z13PM_ReloadClipP13playerState_s:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov ecx, eax
	mov eax, [eax+0xe8]
	mov eax, [eax*4+bg_weaponDefs]
	mov edi, [ecx+0xec]
	sub edi, 0x9
	cmp edi, 0x1
	jbe _Z13PM_ReloadClipP13playerState_s_10
_Z13PM_ReloadClipP13playerState_s_70:
	mov edx, [eax+0x328]
	mov [ebp-0x20], edx
	mov edx, [eax+0x330]
	mov [ebp-0x1c], edx
	mov edx, [ebp-0x20]
	mov esi, [ecx+edx*4+0x15c]
	mov ebx, [eax+0x338]
	mov edx, [ebp-0x1c]
	mov edx, [ecx+edx*4+0x35c]
	mov [ebp-0x24], edx
	mov edx, ebx
	sub edx, [ebp-0x24]
	cmp esi, edx
	cmovl edx, esi
	cmp edi, 0x1
	jbe _Z13PM_ReloadClipP13playerState_s_20
	mov eax, [eax+0x534]
	test eax, eax
	jnz _Z13PM_ReloadClipP13playerState_s_30
_Z13PM_ReloadClipP13playerState_s_50:
	test edx, edx
	jz _Z13PM_ReloadClipP13playerState_s_40
	mov eax, edx
_Z13PM_ReloadClipP13playerState_s_60:
	sub esi, eax
	mov edx, [ebp-0x20]
	mov [ecx+edx*4+0x15c], esi
	add eax, [ebp-0x24]
	mov edx, [ebp-0x1c]
	mov [ecx+edx*4+0x35c], eax
	mov dword [esp+0x4], 0x14
	mov [esp], ecx
	call _Z11PM_AddEventP13playerState_si
_Z13PM_ReloadClipP13playerState_s_40:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z13PM_ReloadClipP13playerState_s_30:
	cmp ebx, eax
	jle _Z13PM_ReloadClipP13playerState_s_50
	cmp edx, eax
	jg _Z13PM_ReloadClipP13playerState_s_60
	jmp _Z13PM_ReloadClipP13playerState_s_50
_Z13PM_ReloadClipP13playerState_s_10:
	mov edx, [eax+0x538]
	test edx, edx
	jnz _Z13PM_ReloadClipP13playerState_s_70
	jmp _Z13PM_ReloadClipP13playerState_s_40
_Z13PM_ReloadClipP13playerState_s_20:
	mov edi, [eax+0x538]
	cmp ebx, edi
	jle _Z13PM_ReloadClipP13playerState_s_50
	cmp edx, edi
	jle _Z13PM_ReloadClipP13playerState_s_50
	mov edx, edi
	jmp _Z13PM_ReloadClipP13playerState_s_50
	nop


;PM_Weapon_OffHandPrepare(playerState_s*)
_Z24PM_Weapon_OffHandPrepareP13playerState_s:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, eax
	mov edx, [eax+0xe0]
	mov eax, [edx*4+bg_weaponDefs]
	mov dword [ebx+0xec], 0x10
	mov eax, [eax+0x378]
	mov [ebx+0x3c], eax
	mov dword [ebx+0x40], 0x0
	or dword [ebx+0x10], 0x2
	cmp dword [ebx+0x48], 0x3ff
	jz _Z24PM_Weapon_OffHandPrepareP13playerState_s_10
	cmp dword [ebx+0x4], 0x6
	jg _Z24PM_Weapon_OffHandPrepareP13playerState_s_20
	mov eax, [ebx+0x624]
	and eax, 0x200
	xor ah, 0x2
	or eax, 0x12
	mov [ebx+0x624], eax
_Z24PM_Weapon_OffHandPrepareP13playerState_s_20:
	mov [esp], ebx
	call _Z27PM_SetProneMovementOverrideP13playerState_s
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z24PM_Weapon_OffHandPrepareP13playerState_s_10:
	mov [esp+0x8], ebx
	mov [esp+0x4], edx
	mov dword [esp], 0x20
	call _Z35BG_AddPredictableEventToPlayerstateijP13playerState_s
	cmp dword [ebx+0x4], 0x6
	jg _Z24PM_Weapon_OffHandPrepareP13playerState_s_20
	mov eax, [ebx+0x624]
	and eax, 0x200
	xor ah, 0x2
	or eax, 0x1a
	mov [ebx+0x624], eax
	mov [esp], ebx
	call _Z27PM_SetProneMovementOverrideP13playerState_s
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;BG_CalculateWeaponPosition_GunRecoil_SingleAngle(float*, float*, float, float, float, float, float, float)
_Z48BG_CalculateWeaponPosition_GunRecoil_SingleAnglePfS_ffffff:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov ecx, eax
	movaps xmm7, xmm0
	movss [ebp-0xc], xmm3
	movss xmm6, dword [ebp+0x8]
	movss xmm3, dword [ebp+0xc]
	movss xmm5, dword [eax]
	movss xmm4, dword [_data16_7fffffff]
	movaps xmm0, xmm5
	andps xmm0, xmm4
	ucomiss xmm0, [_float_0_25000000]
	jae _Z48BG_CalculateWeaponPosition_GunRecoil_SingleAnglePfS_ffffff_10
	jp _Z48BG_CalculateWeaponPosition_GunRecoil_SingleAnglePfS_ffffff_10
	movss xmm0, dword [edx]
	andps xmm0, xmm4
	ucomiss xmm0, [_float_1_00000000]
	jae _Z48BG_CalculateWeaponPosition_GunRecoil_SingleAnglePfS_ffffff_10
	jp _Z48BG_CalculateWeaponPosition_GunRecoil_SingleAnglePfS_ffffff_10
	xor eax, eax
	mov [ecx], eax
	mov [edx], eax
	mov eax, 0x1
	leave
	ret
_Z48BG_CalculateWeaponPosition_GunRecoil_SingleAnglePfS_ffffff_10:
	movaps xmm0, xmm7
	mulss xmm0, [edx]
	addss xmm0, xmm5
	movss [ecx], xmm0
	ucomiss xmm0, xmm1
	jbe _Z48BG_CalculateWeaponPosition_GunRecoil_SingleAnglePfS_ffffff_20
	movss [ecx], xmm1
	pxor xmm4, xmm4
	movss xmm0, dword [edx]
	ucomiss xmm0, xmm4
	jbe _Z48BG_CalculateWeaponPosition_GunRecoil_SingleAnglePfS_ffffff_30
_Z48BG_CalculateWeaponPosition_GunRecoil_SingleAnglePfS_ffffff_140:
	movss [edx], xmm4
	movss xmm0, dword [ecx]
_Z48BG_CalculateWeaponPosition_GunRecoil_SingleAnglePfS_ffffff_150:
	ucomiss xmm0, xmm4
	jbe _Z48BG_CalculateWeaponPosition_GunRecoil_SingleAnglePfS_ffffff_40
_Z48BG_CalculateWeaponPosition_GunRecoil_SingleAnglePfS_ffffff_90:
	mulss xmm2, xmm7
	movss xmm0, dword [edx]
	subss xmm0, xmm2
	movss [edx], xmm0
_Z48BG_CalculateWeaponPosition_GunRecoil_SingleAnglePfS_ffffff_170:
	mulss xmm6, xmm0
	mulss xmm6, xmm7
	movaps xmm1, xmm0
	subss xmm1, xmm6
	movss [edx], xmm1
	ucomiss xmm1, xmm4
	jbe _Z48BG_CalculateWeaponPosition_GunRecoil_SingleAnglePfS_ffffff_50
_Z48BG_CalculateWeaponPosition_GunRecoil_SingleAnglePfS_ffffff_110:
	mulss xmm3, xmm7
	movaps xmm0, xmm1
	subss xmm0, xmm3
	movss [edx], xmm0
	ucomiss xmm4, xmm0
	ja _Z48BG_CalculateWeaponPosition_GunRecoil_SingleAnglePfS_ffffff_60
_Z48BG_CalculateWeaponPosition_GunRecoil_SingleAnglePfS_ffffff_160:
	ucomiss xmm0, [ebp-0xc]
	jbe _Z48BG_CalculateWeaponPosition_GunRecoil_SingleAnglePfS_ffffff_70
_Z48BG_CalculateWeaponPosition_GunRecoil_SingleAnglePfS_ffffff_120:
	movss xmm0, dword [ebp-0xc]
	movss [edx], xmm0
	xor eax, eax
	leave
	ret
_Z48BG_CalculateWeaponPosition_GunRecoil_SingleAnglePfS_ffffff_20:
	xorps xmm1, [_data16_80000000]
	ucomiss xmm1, xmm0
	ja _Z48BG_CalculateWeaponPosition_GunRecoil_SingleAnglePfS_ffffff_80
	pxor xmm4, xmm4
	movss xmm0, dword [ecx]
	ucomiss xmm0, xmm4
	ja _Z48BG_CalculateWeaponPosition_GunRecoil_SingleAnglePfS_ffffff_90
_Z48BG_CalculateWeaponPosition_GunRecoil_SingleAnglePfS_ffffff_40:
	ucomiss xmm4, xmm0
	ja _Z48BG_CalculateWeaponPosition_GunRecoil_SingleAnglePfS_ffffff_100
	movss xmm0, dword [edx]
	mulss xmm6, xmm0
	mulss xmm6, xmm7
	movaps xmm1, xmm0
	subss xmm1, xmm6
	movss [edx], xmm1
	ucomiss xmm1, xmm4
	ja _Z48BG_CalculateWeaponPosition_GunRecoil_SingleAnglePfS_ffffff_110
_Z48BG_CalculateWeaponPosition_GunRecoil_SingleAnglePfS_ffffff_50:
	movaps xmm0, xmm7
	mulss xmm0, xmm3
	addss xmm0, xmm1
	movaps xmm1, xmm4
	cmpss xmm1, xmm0, 0x5
	andps xmm0, xmm1
	orps xmm0, xmm4
	movss [edx], xmm0
	ucomiss xmm0, [ebp-0xc]
	ja _Z48BG_CalculateWeaponPosition_GunRecoil_SingleAnglePfS_ffffff_120
_Z48BG_CalculateWeaponPosition_GunRecoil_SingleAnglePfS_ffffff_70:
	movss xmm3, dword [ebp-0xc]
	xorps xmm3, [_data16_80000000]
	ucomiss xmm3, xmm0
	jbe _Z48BG_CalculateWeaponPosition_GunRecoil_SingleAnglePfS_ffffff_130
	movss [edx], xmm3
_Z48BG_CalculateWeaponPosition_GunRecoil_SingleAnglePfS_ffffff_130:
	xor eax, eax
	leave
	ret
_Z48BG_CalculateWeaponPosition_GunRecoil_SingleAnglePfS_ffffff_80:
	movss [ecx], xmm1
	pxor xmm4, xmm4
	ucomiss xmm4, [edx]
	ja _Z48BG_CalculateWeaponPosition_GunRecoil_SingleAnglePfS_ffffff_140
_Z48BG_CalculateWeaponPosition_GunRecoil_SingleAnglePfS_ffffff_30:
	movaps xmm0, xmm1
	jmp _Z48BG_CalculateWeaponPosition_GunRecoil_SingleAnglePfS_ffffff_150
_Z48BG_CalculateWeaponPosition_GunRecoil_SingleAnglePfS_ffffff_60:
	movss [edx], xmm4
	movaps xmm0, xmm4
	jmp _Z48BG_CalculateWeaponPosition_GunRecoil_SingleAnglePfS_ffffff_160
_Z48BG_CalculateWeaponPosition_GunRecoil_SingleAnglePfS_ffffff_100:
	mulss xmm2, xmm7
	addss xmm2, [edx]
	movss [edx], xmm2
	movaps xmm0, xmm2
	jmp _Z48BG_CalculateWeaponPosition_GunRecoil_SingleAnglePfS_ffffff_170


;PM_BeginWeaponChange(playerState_s*, unsigned int, unsigned char)
_Z20PM_BeginWeaponChangeP13playerState_sjh:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov esi, eax
	mov edi, edx
	mov [ebp-0x1a], cl
	test edx, edx
	jz _Z20PM_BeginWeaponChangeP13playerState_sjh_10
	sar edx, 0x5
	mov ecx, edi
	and ecx, 0x1f
	mov eax, 0x1
	shl eax, cl
	test [esi+edx*4+0x55c], eax
	jz _Z20PM_BeginWeaponChangeP13playerState_sjh_20
_Z20PM_BeginWeaponChangeP13playerState_sjh_10:
	mov edx, [esi+0xec]
	lea eax, [edx-0x3]
	cmp eax, 0x1
	jbe _Z20PM_BeginWeaponChangeP13playerState_sjh_20
	test edi, edi
	jnz _Z20PM_BeginWeaponChangeP13playerState_sjh_30
_Z20PM_BeginWeaponChangeP13playerState_sjh_70:
	cmp edx, 0x7
	jz _Z20PM_BeginWeaponChangeP13playerState_sjh_40
	cmp edx, 0x9
	jz _Z20PM_BeginWeaponChangeP13playerState_sjh_40
	cmp edx, 0xb
	jz _Z20PM_BeginWeaponChangeP13playerState_sjh_40
	cmp edx, 0xa
	jz _Z20PM_BeginWeaponChangeP13playerState_sjh_40
	cmp edx, 0x8
	jnz _Z20PM_BeginWeaponChangeP13playerState_sjh_50
_Z20PM_BeginWeaponChangeP13playerState_sjh_40:
	mov [esp+0x8], esi
	mov [esp+0x4], edx
	mov dword [esp], 0x2
	call _Z35BG_AddPredictableEventToPlayerstateijP13playerState_s
_Z20PM_BeginWeaponChangeP13playerState_sjh_50:
	mov dword [esi+0x40], 0x0
	mov ebx, [esi+0xe8]
	test ebx, ebx
	jnz _Z20PM_BeginWeaponChangeP13playerState_sjh_60
_Z20PM_BeginWeaponChangeP13playerState_sjh_80:
	mov dword [esi+0x3c], 0x0
	cmp byte [ebp-0x1a], 0x1
	sbb eax, eax
	add eax, 0x4
	mov [esi+0xec], eax
	mov dword [esi+0x44], 0x0
	mov [esp], esi
	call _Z27PM_SetProneMovementOverrideP13playerState_s
_Z20PM_BeginWeaponChangeP13playerState_sjh_20:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z20PM_BeginWeaponChangeP13playerState_sjh_30:
	mov eax, [edi*4+bg_weaponDefs]
	cmp dword [eax+0x130], 0x4
	mov eax, 0x1
	movzx ecx, byte [ebp-0x1a]
	cmovz ecx, eax
	mov [ebp-0x1a], cl
	jmp _Z20PM_BeginWeaponChangeP13playerState_sjh_70
_Z20PM_BeginWeaponChangeP13playerState_sjh_60:
	mov edx, ebx
	sar edx, 0x5
	mov ecx, ebx
	and ecx, 0x1f
	mov eax, 0x1
	shl eax, cl
	test [esi+edx*4+0x55c], eax
	jz _Z20PM_BeginWeaponChangeP13playerState_sjh_80
	mov eax, [esi+0x44]
	test eax, eax
	jg _Z20PM_BeginWeaponChangeP13playerState_sjh_80
	mov ebx, [ebx*4+bg_weaponDefs]
	cmp word [esi+0xc], 0x0
	js _Z20PM_BeginWeaponChangeP13playerState_sjh_90
	test edi, edi
	jz _Z20PM_BeginWeaponChangeP13playerState_sjh_90
	cmp edi, [ebx+0x540]
	jz _Z20PM_BeginWeaponChangeP13playerState_sjh_100
_Z20PM_BeginWeaponChangeP13playerState_sjh_90:
	xor edi, edi
_Z20PM_BeginWeaponChangeP13playerState_sjh_140:
	mov eax, [ebx+0x330]
	mov eax, [esi+eax*4+0x35c]
	test eax, eax
	setz byte [ebp-0x19]
	mov dword [esi+0x44], 0x0
	test edi, edi
	jz _Z20PM_BeginWeaponChangeP13playerState_sjh_110
	mov dword [esp+0x4], 0x18
	mov [esp], esi
	call _Z11PM_AddEventP13playerState_si
	cmp dword [esi+0x4], 0x6
	jg _Z20PM_BeginWeaponChangeP13playerState_sjh_120
	mov eax, [esi+0x624]
	and eax, 0x200
	xor ah, 0x2
	or eax, 0x11
	mov [esi+0x624], eax
_Z20PM_BeginWeaponChangeP13playerState_sjh_120:
	cmp byte [ebp-0x1a], 0x1
	sbb eax, eax
	add eax, 0x4
	mov [esi+0xec], eax
	mov [esp], esi
	call _Z27PM_SetProneMovementOverrideP13playerState_s
	test edi, edi
	jz _Z20PM_BeginWeaponChangeP13playerState_sjh_130
	mov eax, [ebx+0x3ac]
	mov [esi+0x3c], eax
	jmp _Z20PM_BeginWeaponChangeP13playerState_sjh_20
_Z20PM_BeginWeaponChangeP13playerState_sjh_100:
	mov edi, 0x1
	jmp _Z20PM_BeginWeaponChangeP13playerState_sjh_140
_Z20PM_BeginWeaponChangeP13playerState_sjh_110:
	mov dword [esp+0x4], 0x17
	mov [esp], esi
	call _Z11PM_AddEventP13playerState_si
	mov edx, [esi+0xc]
	test dx, dx
	js _Z20PM_BeginWeaponChangeP13playerState_sjh_150
	cmp byte [ebp-0x19], 0x0
	jz _Z20PM_BeginWeaponChangeP13playerState_sjh_160
	cmp dword [esi+0x4], 0x6
	jg _Z20PM_BeginWeaponChangeP13playerState_sjh_150
	mov eax, [esi+0x624]
	and eax, 0x200
	xor ah, 0x2
	or eax, 0x15
	mov [esi+0x624], eax
_Z20PM_BeginWeaponChangeP13playerState_sjh_150:
	and dl, 0x4
	jnz _Z20PM_BeginWeaponChangeP13playerState_sjh_120
	mov dword [esp+0xc], 0x1
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x6
	mov [esp], esi
	call _Z18BG_AnimScriptEventP13playerState_s22scriptAnimEventTypes_tii
	jmp _Z20PM_BeginWeaponChangeP13playerState_sjh_120
_Z20PM_BeginWeaponChangeP13playerState_sjh_130:
	cmp byte [ebp-0x19], 0x0
	jz _Z20PM_BeginWeaponChangeP13playerState_sjh_170
	mov eax, [ebx+0x3c4]
	mov [esi+0x3c], eax
	jmp _Z20PM_BeginWeaponChangeP13playerState_sjh_20
_Z20PM_BeginWeaponChangeP13playerState_sjh_170:
	cmp byte [ebp-0x1a], 0x0
	jz _Z20PM_BeginWeaponChangeP13playerState_sjh_180
	mov eax, [ebx+0x3b4]
	mov [esi+0x3c], eax
	jmp _Z20PM_BeginWeaponChangeP13playerState_sjh_20
_Z20PM_BeginWeaponChangeP13playerState_sjh_160:
	cmp byte [ebp-0x1a], 0x0
	jz _Z20PM_BeginWeaponChangeP13playerState_sjh_190
	cmp dword [esi+0x4], 0x6
	jg _Z20PM_BeginWeaponChangeP13playerState_sjh_150
	mov eax, [esi+0x624]
	and eax, 0x200
	xor ah, 0x2
	or eax, 0x13
	mov [esi+0x624], eax
	jmp _Z20PM_BeginWeaponChangeP13playerState_sjh_150
_Z20PM_BeginWeaponChangeP13playerState_sjh_180:
	mov eax, [ebx+0x3a4]
	mov [esi+0x3c], eax
	jmp _Z20PM_BeginWeaponChangeP13playerState_sjh_20
_Z20PM_BeginWeaponChangeP13playerState_sjh_190:
	cmp dword [esi+0x4], 0x6
	jg _Z20PM_BeginWeaponChangeP13playerState_sjh_150
	mov eax, [esi+0x624]
	and eax, 0x200
	xor ah, 0x2
	or eax, 0xa
	mov [esi+0x624], eax
	jmp _Z20PM_BeginWeaponChangeP13playerState_sjh_150
	nop


;PM_Weapon_ReloadDelayedAction(playerState_s*)
_Z29PM_Weapon_ReloadDelayedActionP13playerState_s:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, eax
	mov ecx, [eax+0xe8]
	mov esi, [ecx*4+bg_weaponDefs]
	mov eax, [esi+0x4e8]
	test eax, eax
	jz _Z29PM_Weapon_ReloadDelayedActionP13playerState_s_10
	mov eax, ecx
	sar eax, 0x5
	lea edx, [eax*4]
	and ecx, 0x1f
	mov eax, 0x1
	shl eax, cl
	test [ebx+edx+0x57c], eax
	jnz _Z29PM_Weapon_ReloadDelayedActionP13playerState_s_20
_Z29PM_Weapon_ReloadDelayedActionP13playerState_s_10:
	mov eax, ebx
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp _Z13PM_ReloadClipP13playerState_s
_Z29PM_Weapon_ReloadDelayedActionP13playerState_s_20:
	not eax
	and [ebx+edx+0x57c], eax
	mov dword [esp+0x4], 0x1d
	mov [esp], ebx
	call _Z11PM_AddEventP13playerState_si
	mov eax, [ebx+0xec]
	sub eax, 0x9
	cmp eax, 0x1
	jbe _Z29PM_Weapon_ReloadDelayedActionP13playerState_s_30
_Z29PM_Weapon_ReloadDelayedActionP13playerState_s_80:
	mov edx, [ebx+0x3c]
	test edx, edx
	jz _Z29PM_Weapon_ReloadDelayedActionP13playerState_s_10
	cmp eax, 0x1
	jbe _Z29PM_Weapon_ReloadDelayedActionP13playerState_s_40
	mov eax, [ebx+0xe8]
	mov eax, [eax*4+bg_weaponDefs]
	mov eax, [eax+0x330]
	mov eax, [ebx+eax*4+0x35c]
	test eax, eax
	jnz _Z29PM_Weapon_ReloadDelayedActionP13playerState_s_50
	mov eax, [esi+0x12c]
	test eax, eax
	jz _Z29PM_Weapon_ReloadDelayedActionP13playerState_s_60
_Z29PM_Weapon_ReloadDelayedActionP13playerState_s_50:
	mov ecx, [esi+0x388]
_Z29PM_Weapon_ReloadDelayedActionP13playerState_s_100:
	mov eax, [esi+0x394]
	test eax, eax
	jz _Z29PM_Weapon_ReloadDelayedActionP13playerState_s_70
	cmp ecx, eax
	cmovg ecx, eax
_Z29PM_Weapon_ReloadDelayedActionP13playerState_s_70:
	mov eax, [esi+0x374]
	cmp ecx, eax
	mov edx, 0x1
	cmovle eax, edx
	sub ecx, eax
	test ecx, ecx
	jle _Z29PM_Weapon_ReloadDelayedActionP13playerState_s_10
	mov [ebx+0x40], ecx
_Z29PM_Weapon_ReloadDelayedActionP13playerState_s_90:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z29PM_Weapon_ReloadDelayedActionP13playerState_s_30:
	mov ecx, [esi+0x39c]
	test ecx, ecx
	jnz _Z29PM_Weapon_ReloadDelayedActionP13playerState_s_80
	jmp _Z29PM_Weapon_ReloadDelayedActionP13playerState_s_90
_Z29PM_Weapon_ReloadDelayedActionP13playerState_s_60:
	mov ecx, [esi+0x390]
	jmp _Z29PM_Weapon_ReloadDelayedActionP13playerState_s_100
_Z29PM_Weapon_ReloadDelayedActionP13playerState_s_40:
	mov ecx, [esi+0x39c]
	mov eax, [esi+0x398]
	cmp ecx, eax
	jl _Z29PM_Weapon_ReloadDelayedActionP13playerState_s_70
	mov ecx, eax
	jmp _Z29PM_Weapon_ReloadDelayedActionP13playerState_s_70
	nop


;PM_SetReloadingState(playerState_s*)
_Z20PM_SetReloadingStateP13playerState_s:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov ebx, eax
	mov eax, [eax+0xe8]
	mov edx, [eax*4+bg_weaponDefs]
	mov eax, [edx+0x330]
	mov esi, [ebx+eax*4+0x35c]
	test esi, esi
	jnz _Z20PM_SetReloadingStateP13playerState_s_10
	mov ecx, [edx+0x12c]
	test ecx, ecx
	jz _Z20PM_SetReloadingStateP13playerState_s_20
_Z20PM_SetReloadingStateP13playerState_s_10:
	cmp dword [ebx+0x4], 0x6
	jle _Z20PM_SetReloadingStateP13playerState_s_30
_Z20PM_SetReloadingStateP13playerState_s_110:
	mov eax, [edx+0x388]
	mov [ebx+0x3c], eax
	mov dword [esp+0x4], 0xf
	mov [esp], ebx
	call _Z11PM_AddEventP13playerState_si
_Z20PM_SetReloadingStateP13playerState_s_130:
	xor eax, eax
	cmp dword [ebx+0xec], 0xa
	setz al
	add eax, 0x7
	mov [ebx+0xec], eax
	mov edi, [ebx+0xe8]
	mov edx, [edi*4+bg_weaponDefs]
	mov [ebp-0x1c], edx
	sub eax, 0x9
	cmp eax, 0x1
	jbe _Z20PM_SetReloadingStateP13playerState_s_40
	mov eax, [edx+0x330]
	mov eax, [ebx+eax*4+0x35c]
	test eax, eax
	jz _Z20PM_SetReloadingStateP13playerState_s_50
	mov eax, edx
_Z20PM_SetReloadingStateP13playerState_s_100:
	mov esi, [eax+0x388]
	mov edx, eax
_Z20PM_SetReloadingStateP13playerState_s_170:
	mov eax, [edx+0x394]
	test eax, eax
	jz _Z20PM_SetReloadingStateP13playerState_s_60
	cmp esi, eax
	cmovg esi, eax
	mov ecx, [ebp-0x1c]
_Z20PM_SetReloadingStateP13playerState_s_150:
	mov eax, [ecx+0x4e8]
	test eax, eax
	jz _Z20PM_SetReloadingStateP13playerState_s_70
	mov edx, edi
	sar edx, 0x5
	and edi, 0x1f
	mov eax, 0x1
	mov ecx, edi
	shl eax, cl
	test [ebx+edx*4+0x57c], eax
	jz _Z20PM_SetReloadingStateP13playerState_s_70
	test esi, esi
	jz _Z20PM_SetReloadingStateP13playerState_s_80
_Z20PM_SetReloadingStateP13playerState_s_180:
	mov edx, [ebp-0x1c]
	mov eax, [edx+0x374]
	cmp esi, eax
	cmovle eax, esi
	test eax, eax
	mov ecx, 0x1
	cmovz eax, ecx
	mov [ebx+0x40], eax
_Z20PM_SetReloadingStateP13playerState_s_140:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z20PM_SetReloadingStateP13playerState_s_50:
	mov eax, [edx+0x12c]
	test eax, eax
	jz _Z20PM_SetReloadingStateP13playerState_s_90
	mov eax, [ebp-0x1c]
	jmp _Z20PM_SetReloadingStateP13playerState_s_100
_Z20PM_SetReloadingStateP13playerState_s_30:
	mov eax, [ebx+0x624]
	and eax, 0x200
	xor ah, 0x2
	or eax, 0xd
	mov [ebx+0x624], eax
	jmp _Z20PM_SetReloadingStateP13playerState_s_110
_Z20PM_SetReloadingStateP13playerState_s_20:
	cmp dword [ebx+0x4], 0x6
	jle _Z20PM_SetReloadingStateP13playerState_s_120
	mov eax, [edx+0x390]
	mov [ebx+0x3c], eax
	mov dword [esp+0x4], 0x10
	mov [esp], ebx
	call _Z11PM_AddEventP13playerState_si
	jmp _Z20PM_SetReloadingStateP13playerState_s_130
_Z20PM_SetReloadingStateP13playerState_s_70:
	test esi, esi
	jz _Z20PM_SetReloadingStateP13playerState_s_140
	mov [ebx+0x40], esi
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z20PM_SetReloadingStateP13playerState_s_60:
	mov ecx, edx
	jmp _Z20PM_SetReloadingStateP13playerState_s_150
_Z20PM_SetReloadingStateP13playerState_s_40:
	mov esi, [edx+0x39c]
	test esi, esi
	jz _Z20PM_SetReloadingStateP13playerState_s_160
	mov eax, [edx+0x398]
	cmp esi, eax
	jl _Z20PM_SetReloadingStateP13playerState_s_160
	mov esi, eax
	mov ecx, [ebp-0x1c]
	jmp _Z20PM_SetReloadingStateP13playerState_s_150
_Z20PM_SetReloadingStateP13playerState_s_90:
	mov esi, [edx+0x390]
	mov edx, [ebp-0x1c]
	jmp _Z20PM_SetReloadingStateP13playerState_s_170
_Z20PM_SetReloadingStateP13playerState_s_120:
	mov eax, [ebx+0x624]
	and eax, 0x200
	xor ah, 0x2
	or eax, 0xe
	mov [ebx+0x624], eax
	mov eax, [edx+0x390]
	mov [ebx+0x3c], eax
	mov dword [esp+0x4], 0x10
	mov [esp], ebx
	call _Z11PM_AddEventP13playerState_si
	jmp _Z20PM_SetReloadingStateP13playerState_s_130
_Z20PM_SetReloadingStateP13playerState_s_80:
	mov esi, [ebx+0x3c]
	jmp _Z20PM_SetReloadingStateP13playerState_s_180
_Z20PM_SetReloadingStateP13playerState_s_160:
	mov ecx, [ebp-0x1c]
	jmp _Z20PM_SetReloadingStateP13playerState_s_150
	nop


;PM_BeginWeaponReload(playerState_s*)
_Z20PM_BeginWeaponReloadP13playerState_s:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov ebx, eax
	mov edx, [eax+0xe8]
	mov esi, [edx*4+bg_weaponDefs]
	mov eax, [eax+0xec]
	test eax, eax
	jz _Z20PM_BeginWeaponReloadP13playerState_s_10
	cmp eax, 0x5
	jz _Z20PM_BeginWeaponReloadP13playerState_s_10
	cmp eax, 0x6
	jz _Z20PM_BeginWeaponReloadP13playerState_s_10
	sub eax, 0x16
	cmp eax, 0x2
	ja _Z20PM_BeginWeaponReloadP13playerState_s_20
_Z20PM_BeginWeaponReloadP13playerState_s_10:
	test edx, edx
	jz _Z20PM_BeginWeaponReloadP13playerState_s_20
	mov eax, [bg_lastParsedWeaponIndex]
	add eax, 0x1
	cmp edx, eax
	jae _Z20PM_BeginWeaponReloadP13playerState_s_20
	mov eax, [esi+0x500]
	test eax, eax
	jz _Z20PM_BeginWeaponReloadP13playerState_s_30
_Z20PM_BeginWeaponReloadP13playerState_s_130:
	mov dword [ebx+0xf0], 0x0
	mov dword [esp+0x4], 0xe
	mov [esp], ebx
	call _Z11PM_AddEventP13playerState_si
	mov dword [esp+0x4], 0x13
	mov [esp], ebx
	call _Z11PM_AddEventP13playerState_si
	mov eax, [esi+0x530]
	test eax, eax
	jz _Z20PM_BeginWeaponReloadP13playerState_s_40
	mov eax, [esi+0x398]
	test eax, eax
	jz _Z20PM_BeginWeaponReloadP13playerState_s_40
	cmp dword [ebx+0x4], 0x6
	jg _Z20PM_BeginWeaponReloadP13playerState_s_50
	mov eax, [ebx+0x624]
	and eax, 0x200
	xor ah, 0x2
	or eax, 0xf
	mov [ebx+0x624], eax
_Z20PM_BeginWeaponReloadP13playerState_s_50:
	mov eax, [esi+0x398]
	mov [ebx+0x3c], eax
	mov dword [ebx+0xec], 0x9
	mov dword [esp+0x4], 0x11
	mov [esp], ebx
	call _Z11PM_AddEventP13playerState_si
	mov edi, [ebx+0xe8]
	mov eax, [edi*4+bg_weaponDefs]
	mov [ebp-0x1c], eax
	mov eax, [ebx+0xec]
	sub eax, 0x9
	cmp eax, 0x1
	jbe _Z20PM_BeginWeaponReloadP13playerState_s_60
	mov ecx, [ebp-0x1c]
	mov eax, [ecx+0x330]
	mov eax, [ebx+eax*4+0x35c]
	test eax, eax
	jnz _Z20PM_BeginWeaponReloadP13playerState_s_70
	mov eax, [ecx+0x12c]
	test eax, eax
	jz _Z20PM_BeginWeaponReloadP13playerState_s_80
	mov eax, [ebp-0x1c]
	jmp _Z20PM_BeginWeaponReloadP13playerState_s_90
_Z20PM_BeginWeaponReloadP13playerState_s_70:
	mov eax, ecx
_Z20PM_BeginWeaponReloadP13playerState_s_90:
	mov esi, [eax+0x388]
	mov edx, eax
_Z20PM_BeginWeaponReloadP13playerState_s_150:
	mov eax, [edx+0x394]
	test eax, eax
	jz _Z20PM_BeginWeaponReloadP13playerState_s_100
	cmp esi, eax
	cmovg esi, eax
	mov ecx, [ebp-0x1c]
_Z20PM_BeginWeaponReloadP13playerState_s_140:
	mov eax, [ecx+0x4e8]
	test eax, eax
	jz _Z20PM_BeginWeaponReloadP13playerState_s_110
	mov edx, edi
	sar edx, 0x5
	and edi, 0x1f
	mov eax, 0x1
	mov ecx, edi
	shl eax, cl
	test [ebx+edx*4+0x57c], eax
	jz _Z20PM_BeginWeaponReloadP13playerState_s_110
	test esi, esi
	jnz _Z20PM_BeginWeaponReloadP13playerState_s_120
	mov esi, [ebx+0x3c]
_Z20PM_BeginWeaponReloadP13playerState_s_120:
	mov edx, [ebp-0x1c]
	mov eax, [edx+0x374]
	cmp esi, eax
	cmovle eax, esi
	test eax, eax
	mov ecx, 0x1
	cmovz eax, ecx
	mov [ebx+0x40], eax
_Z20PM_BeginWeaponReloadP13playerState_s_20:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z20PM_BeginWeaponReloadP13playerState_s_40:
	mov eax, ebx
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z20PM_SetReloadingStateP13playerState_s
_Z20PM_BeginWeaponReloadP13playerState_s_30:
	mov dword [esp+0xc], 0x1
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0xa
	mov [esp], ebx
	call _Z18BG_AnimScriptEventP13playerState_s22scriptAnimEventTypes_tii
	jmp _Z20PM_BeginWeaponReloadP13playerState_s_130
_Z20PM_BeginWeaponReloadP13playerState_s_110:
	test esi, esi
	jz _Z20PM_BeginWeaponReloadP13playerState_s_20
	mov [ebx+0x40], esi
	jmp _Z20PM_BeginWeaponReloadP13playerState_s_20
_Z20PM_BeginWeaponReloadP13playerState_s_100:
	mov ecx, edx
	jmp _Z20PM_BeginWeaponReloadP13playerState_s_140
_Z20PM_BeginWeaponReloadP13playerState_s_80:
	mov esi, [ecx+0x390]
	mov edx, [ebp-0x1c]
	jmp _Z20PM_BeginWeaponReloadP13playerState_s_150
_Z20PM_BeginWeaponReloadP13playerState_s_60:
	mov edx, [ebp-0x1c]
	mov esi, [edx+0x39c]
	test esi, esi
	jz _Z20PM_BeginWeaponReloadP13playerState_s_100
	mov eax, [edx+0x398]
	cmp esi, eax
	jl _Z20PM_BeginWeaponReloadP13playerState_s_160
	mov esi, eax
	mov ecx, [ebp-0x1c]
	jmp _Z20PM_BeginWeaponReloadP13playerState_s_140
_Z20PM_BeginWeaponReloadP13playerState_s_160:
	mov ecx, [ebp-0x1c]
	jmp _Z20PM_BeginWeaponReloadP13playerState_s_140
	nop


;PM_Weapon_CheckForReload(pmove_t*)
_Z24PM_Weapon_CheckForReloadP7pmove_t:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov esi, [ebp+0x8]
	mov ebx, [esi]
	mov edi, [ebx+0xe8]
	mov eax, [edi*4+bg_weaponDefs]
	mov [ebp-0x20], eax
	mov ecx, [ebx+0xec]
	lea eax, [ecx-0xc]
	cmp eax, 0x8
	jbe _Z24PM_Weapon_CheckForReloadP7pmove_t_10
	mov edx, [esi+0x8]
	shr edx, 0x4
	and edx, 0x1
	mov eax, [ebx+0x10]
	test al, 0x1
	jnz _Z24PM_Weapon_CheckForReloadP7pmove_t_20
	mov eax, [ebp-0x20]
	mov eax, [eax+0x530]
	test eax, eax
	jnz _Z24PM_Weapon_CheckForReloadP7pmove_t_30
_Z24PM_Weapon_CheckForReloadP7pmove_t_70:
	cmp ecx, 0x1
	jl _Z24PM_Weapon_CheckForReloadP7pmove_t_40
	cmp ecx, 0x4
	jg _Z24PM_Weapon_CheckForReloadP7pmove_t_50
_Z24PM_Weapon_CheckForReloadP7pmove_t_10:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z24PM_Weapon_CheckForReloadP7pmove_t_30:
	cmp ecx, 0x9
	jz _Z24PM_Weapon_CheckForReloadP7pmove_t_60
	cmp ecx, 0x7
	jnz _Z24PM_Weapon_CheckForReloadP7pmove_t_70
_Z24PM_Weapon_CheckForReloadP7pmove_t_60:
	test byte [esi+0x8], 0x1
	jz _Z24PM_Weapon_CheckForReloadP7pmove_t_70
	test byte [esi+0x28], 0x1
	jnz _Z24PM_Weapon_CheckForReloadP7pmove_t_70
	cmp ecx, 0x9
	jz _Z24PM_Weapon_CheckForReloadP7pmove_t_80
	cmp ecx, 0x7
	jnz _Z24PM_Weapon_CheckForReloadP7pmove_t_70
	mov cl, 0x8
	mov dword [ebx+0xec], 0x8
_Z24PM_Weapon_CheckForReloadP7pmove_t_50:
	lea eax, [ecx-0x7]
	cmp eax, 0x4
	ja _Z24PM_Weapon_CheckForReloadP7pmove_t_40
	mov esi, [esi+0xe8]
	test esi, esi
	jz _Z24PM_Weapon_CheckForReloadP7pmove_t_10
	mov eax, [edi*4+bg_weaponDefs]
	mov ecx, [eax+0x500]
	test ecx, ecx
	jnz _Z24PM_Weapon_CheckForReloadP7pmove_t_10
	mov dword [esp+0xc], 0x1
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0xa
	mov [esp], ebx
	call _Z18BG_AnimScriptEventP13playerState_s22scriptAnimEventTypes_tii
	jmp _Z24PM_Weapon_CheckForReloadP7pmove_t_10
_Z24PM_Weapon_CheckForReloadP7pmove_t_20:
	and eax, 0xfffffffe
	mov [ebx+0x10], eax
	mov edx, 0x1
	mov eax, [ebp-0x20]
	mov eax, [eax+0x530]
	test eax, eax
	jz _Z24PM_Weapon_CheckForReloadP7pmove_t_70
	jmp _Z24PM_Weapon_CheckForReloadP7pmove_t_30
_Z24PM_Weapon_CheckForReloadP7pmove_t_40:
	mov eax, [edi*4+bg_weaponDefs]
	mov edi, [eax+0x330]
	mov esi, [eax+0x328]
	mov [ebp-0x1c], esi
	test edx, edx
	jnz _Z24PM_Weapon_CheckForReloadP7pmove_t_90
_Z24PM_Weapon_CheckForReloadP7pmove_t_110:
	xor edx, edx
_Z24PM_Weapon_CheckForReloadP7pmove_t_150:
	mov edi, [ebx+edi*4+0x35c]
	test edi, edi
	jnz _Z24PM_Weapon_CheckForReloadP7pmove_t_100
	mov eax, [ebp-0x1c]
	mov esi, [ebx+eax*4+0x15c]
	test esi, esi
	jz _Z24PM_Weapon_CheckForReloadP7pmove_t_100
	cmp ecx, 0x5
	jz _Z24PM_Weapon_CheckForReloadP7pmove_t_100
	lea eax, [ecx-0x16]
	cmp eax, 0x2
	jbe _Z24PM_Weapon_CheckForReloadP7pmove_t_100
	mov eax, ebx
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z20PM_BeginWeaponReloadP13playerState_s
_Z24PM_Weapon_CheckForReloadP7pmove_t_100:
	test edx, edx
	jz _Z24PM_Weapon_CheckForReloadP7pmove_t_10
	mov eax, ebx
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z20PM_BeginWeaponReloadP13playerState_s
_Z24PM_Weapon_CheckForReloadP7pmove_t_90:
	mov edx, [ebx+esi*4+0x15c]
	test edx, edx
	jz _Z24PM_Weapon_CheckForReloadP7pmove_t_110
	mov esi, [ebx+edi*4+0x35c]
	mov edx, [eax+0x338]
	cmp esi, edx
	jge _Z24PM_Weapon_CheckForReloadP7pmove_t_110
	cmp dword [eax+0x52c], 0x0
	jz _Z24PM_Weapon_CheckForReloadP7pmove_t_120
	mov eax, [eax+0x534]
	test eax, eax
	jz _Z24PM_Weapon_CheckForReloadP7pmove_t_130
	cmp edx, eax
	jg _Z24PM_Weapon_CheckForReloadP7pmove_t_140
_Z24PM_Weapon_CheckForReloadP7pmove_t_130:
	test esi, esi
	jnz _Z24PM_Weapon_CheckForReloadP7pmove_t_110
_Z24PM_Weapon_CheckForReloadP7pmove_t_120:
	mov edx, 0x1
	jmp _Z24PM_Weapon_CheckForReloadP7pmove_t_150
_Z24PM_Weapon_CheckForReloadP7pmove_t_80:
	mov eax, [ebp-0x20]
	mov eax, [eax+0x398]
	mov [ebp-0x24], eax
	test eax, eax
	jz _Z24PM_Weapon_CheckForReloadP7pmove_t_50
	sub eax, [ebx+0x3c]
	cvtsi2ss xmm0, eax
	cvtsi2ss xmm1, dword [ebp-0x24]
	divss xmm0, xmm1
	ucomiss xmm0, [_ZZ24PM_Weapon_CheckForReloadP7pmove_tE35MY_RELOADSTART_INTERUPT_IGNORE_FRAC]
	jbe _Z24PM_Weapon_CheckForReloadP7pmove_t_50
	mov cl, 0xa
	mov dword [ebx+0xec], 0xa
	jmp _Z24PM_Weapon_CheckForReloadP7pmove_t_50
_Z24PM_Weapon_CheckForReloadP7pmove_t_140:
	sub edx, esi
	cmp eax, edx
	jg _Z24PM_Weapon_CheckForReloadP7pmove_t_110
	mov edx, 0x1
	jmp _Z24PM_Weapon_CheckForReloadP7pmove_t_150


;PM_Weapon_CheckForOffHand(pmove_t*)
_Z25PM_Weapon_CheckForOffHandP7pmove_t:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov edi, eax
	mov ebx, [eax]
	test dword [ebx+0xb0], 0x300
	jnz _Z25PM_Weapon_CheckForOffHandP7pmove_t_10
	cmp byte [ebx+0x10], 0x0
	js _Z25PM_Weapon_CheckForOffHandP7pmove_t_10
	cmp word [ebx+0xc], 0x0
	js _Z25PM_Weapon_CheckForOffHandP7pmove_t_10
	mov eax, [ebx+0xe8]
	test eax, eax
	jnz _Z25PM_Weapon_CheckForOffHandP7pmove_t_20
_Z25PM_Weapon_CheckForOffHandP7pmove_t_100:
	mov edx, [ebx+0xec]
	lea eax, [edx-0xf]
	cmp eax, 0x4
	jbe _Z25PM_Weapon_CheckForOffHandP7pmove_t_10
	lea eax, [edx-0x19]
	cmp eax, 0x1
	jbe _Z25PM_Weapon_CheckForOffHandP7pmove_t_10
	movzx esi, byte [edi+0x19]
	mov edx, esi
	sar edx, 0x5
	mov ecx, esi
	and ecx, 0x1f
	mov eax, 0x1
	shl eax, cl
	test [ebx+edx*4+0x55c], eax
	jz _Z25PM_Weapon_CheckForOffHandP7pmove_t_30
	mov [ebx+0xe0], esi
_Z25PM_Weapon_CheckForOffHandP7pmove_t_30:
	mov eax, [edi+0x8]
	test ah, 0x40
	jnz _Z25PM_Weapon_CheckForOffHandP7pmove_t_40
	test ax, ax
	jns _Z25PM_Weapon_CheckForOffHandP7pmove_t_10
	mov eax, [ebx+0xe4]
	test eax, eax
	jz _Z25PM_Weapon_CheckForOffHandP7pmove_t_50
	mov dword [ebp-0x20], 0x3
	mov dword [ebp-0x1c], 0x3
	jmp _Z25PM_Weapon_CheckForOffHandP7pmove_t_60
_Z25PM_Weapon_CheckForOffHandP7pmove_t_110:
	mov dword [esp+0x4], 0xd
	mov [esp], ebx
	call _Z11PM_AddEventP13playerState_si
	mov edi, [bg_lastParsedWeaponIndex]
	add edi, 0x1
	cmp edi, 0x1
	jle _Z25PM_Weapon_CheckForOffHandP7pmove_t_10
	mov edx, 0x1
	mov esi, bg_weaponDefs
	jmp _Z25PM_Weapon_CheckForOffHandP7pmove_t_70
_Z25PM_Weapon_CheckForOffHandP7pmove_t_80:
	add edx, 0x1
	add esi, 0x4
	cmp edi, edx
	jz _Z25PM_Weapon_CheckForOffHandP7pmove_t_10
_Z25PM_Weapon_CheckForOffHandP7pmove_t_70:
	mov eax, [esi+0x4]
	mov ecx, [ebp-0x1c]
	cmp [eax+0x144], ecx
	jnz _Z25PM_Weapon_CheckForOffHandP7pmove_t_80
	mov eax, edx
	sar eax, 0x5
	mov [ebp-0x2c], eax
	mov ecx, edx
	and ecx, 0x1f
	mov eax, 0x1
	shl eax, cl
	mov ecx, eax
	mov eax, [ebp-0x2c]
	test [ebx+eax*4+0x55c], ecx
	jz _Z25PM_Weapon_CheckForOffHandP7pmove_t_80
	test edx, edx
	jz _Z25PM_Weapon_CheckForOffHandP7pmove_t_10
	cmp dword [ebp-0x20], 0x1
	jz _Z25PM_Weapon_CheckForOffHandP7pmove_t_90
	mov dword [esp+0x4], 0x44
	mov [esp], ebx
	call _Z11PM_AddEventP13playerState_si
_Z25PM_Weapon_CheckForOffHandP7pmove_t_10:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z25PM_Weapon_CheckForOffHandP7pmove_t_20:
	mov eax, [eax*4+bg_weaponDefs]
	cmp dword [eax+0x12c], 0x1
	jnz _Z25PM_Weapon_CheckForOffHandP7pmove_t_100
	mov edx, [eax+0x5b4]
	test edx, edx
	jnz _Z25PM_Weapon_CheckForOffHandP7pmove_t_100
	cmp dword [eax+0x5a8], 0x1
	sbb eax, eax
	and eax, 0xfff80001
	add eax, 0x80000
	test [edi+0x8], eax
	jnz _Z25PM_Weapon_CheckForOffHandP7pmove_t_10
	jmp _Z25PM_Weapon_CheckForOffHandP7pmove_t_100
_Z25PM_Weapon_CheckForOffHandP7pmove_t_40:
	mov dword [ebp-0x20], 0x1
	mov dword [ebp-0x1c], 0x1
_Z25PM_Weapon_CheckForOffHandP7pmove_t_60:
	mov eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z27BG_GetFirstAvailableOffhandPK13playerState_si
	mov esi, eax
	test eax, eax
	jz _Z25PM_Weapon_CheckForOffHandP7pmove_t_110
	mov [esp+0x8], ebx
	mov [esp+0x4], eax
	mov dword [esp], 0x22
	call _Z35BG_AddPredictableEventToPlayerstateijP13playerState_s
	mov [ebx+0xe0], esi
	mov esi, [esi*4+bg_weaponDefs]
	cmp dword [esi+0x12c], 0x1
	jz _Z25PM_Weapon_CheckForOffHandP7pmove_t_120
	mov eax, [esi]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_s_only_grenades_
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
_Z25PM_Weapon_CheckForOffHandP7pmove_t_120:
	mov edi, [esi+0x144]
	test edi, edi
	jz _Z25PM_Weapon_CheckForOffHandP7pmove_t_130
_Z25PM_Weapon_CheckForOffHandP7pmove_t_180:
	cmp dword [ebx+0x5a8], 0x3ff
	jz _Z25PM_Weapon_CheckForOffHandP7pmove_t_140
_Z25PM_Weapon_CheckForOffHandP7pmove_t_170:
	mov dword [ebx+0xec], 0xf
	mov dword [ebx+0x40], 0x0
	and dword [ebx+0x10], 0xfffffffd
	mov dword [ebx+0x48], 0x3ff
	mov dword [esp+0x4], 0xe
	mov [esp], ebx
	call _Z11PM_AddEventP13playerState_si
	and dword [ebx+0xc], 0xffffffef
	mov eax, [ebx+0xe8]
	test eax, eax
	jz _Z25PM_Weapon_CheckForOffHandP7pmove_t_150
	mov eax, [eax*4+bg_weaponDefs]
	mov eax, [eax+0x3b4]
	mov [ebx+0x3c], eax
	cmp dword [ebx+0x4], 0x6
	jg _Z25PM_Weapon_CheckForOffHandP7pmove_t_10
	mov eax, [ebx+0x624]
	and eax, 0x200
	xor ah, 0x2
	or eax, 0x13
	mov [ebx+0x624], eax
	jmp _Z25PM_Weapon_CheckForOffHandP7pmove_t_10
_Z25PM_Weapon_CheckForOffHandP7pmove_t_50:
	mov dword [ebp-0x20], 0x2
	mov dword [ebp-0x1c], 0x2
	jmp _Z25PM_Weapon_CheckForOffHandP7pmove_t_60
_Z25PM_Weapon_CheckForOffHandP7pmove_t_140:
	mov esi, [ebx+0xe8]
	test esi, esi
	jz _Z25PM_Weapon_CheckForOffHandP7pmove_t_160
	cmp dword [ebx+0xec], 0x14
	jnz _Z25PM_Weapon_CheckForOffHandP7pmove_t_170
_Z25PM_Weapon_CheckForOffHandP7pmove_t_160:
	mov eax, ebx
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z24PM_Weapon_OffHandPrepareP13playerState_s
_Z25PM_Weapon_CheckForOffHandP7pmove_t_130:
	mov eax, [esi]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_s_no_offhand_cla
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z25PM_Weapon_CheckForOffHandP7pmove_t_180
_Z25PM_Weapon_CheckForOffHandP7pmove_t_150:
	mov dword [ebx+0x3c], 0x64
	jmp _Z25PM_Weapon_CheckForOffHandP7pmove_t_10
_Z25PM_Weapon_CheckForOffHandP7pmove_t_90:
	mov dword [esp+0x4], 0x43
	mov [esp], ebx
	call _Z11PM_AddEventP13playerState_si
	jmp _Z25PM_Weapon_CheckForOffHandP7pmove_t_10


;BG_WeaponAmmo(playerState_s const*, int)
_Z13BG_WeaponAmmoPK13playerState_si:
	push ebp
	mov ebp, esp
	push ebx
	mov ebx, [ebp+0x8]
	mov eax, [ebp+0xc]
	mov eax, [eax*4+bg_weaponDefs]
	mov edx, [eax+0x328]
	mov ecx, [eax+0x330]
	mov eax, [ebx+edx*4+0x15c]
	add eax, [ebx+ecx*4+0x35c]
	pop ebx
	pop ebp
	ret


;BG_GetBobCycle(playerState_s const*)
_Z14BG_GetBobCyclePK13playerState_s:
	push ebp
	mov ebp, esp
	sub esp, 0x4
	mov eax, [ebp+0x8]
	movzx eax, byte [eax+0x8]
	cvtsi2ss xmm0, eax
	divss xmm0, dword [_float_255_00000000]
	cvtss2sd xmm0, xmm0
	mulsd xmm0, [_double_3_14159265]
	addsd xmm0, xmm0
	addsd xmm0, [_double_6_28318531]
	cvtsd2ss xmm0, xmm0
	movss [ebp-0x4], xmm0
	fld dword [ebp-0x4]
	leave
	ret
	nop


;BG_AdvanceTrace(BulletFireParams*, BulletTraceResults*, float)
_Z15BG_AdvanceTraceP16BulletFireParamsP18BulletTraceResultsf:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov [esp], esi
	call _Z20Trace_GetEntityHitIdPK7trace_t
	movzx edx, ax
	mov [ebx+0x4], edx
	cmp ax, 0x3fe
	jz _Z15BG_AdvanceTraceP16BulletFireParamsP18BulletTraceResultsf_10
_Z15BG_AdvanceTraceP16BulletFireParamsP18BulletTraceResultsf_20:
	lea ecx, [ebx+0x1c]
	lea edx, [esi+0x30]
	mov eax, [esi+0x30]
	mov [ebx+0x1c], eax
	mov eax, [edx+0x4]
	mov [ecx+0x4], eax
	mov eax, [edx+0x8]
	mov [ecx+0x8], eax
	mov eax, 0x1
_Z15BG_AdvanceTraceP16BulletFireParamsP18BulletTraceResultsf_40:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z15BG_AdvanceTraceP16BulletFireParamsP18BulletTraceResultsf_10:
	movss xmm0, dword [ebp+0x10]
	ucomiss xmm0, [_float_0_00000000]
	jbe _Z15BG_AdvanceTraceP16BulletFireParamsP18BulletTraceResultsf_20
	lea eax, [esi+0x4]
	movss xmm1, dword [esi+0x4]
	mulss xmm1, [ebx+0x34]
	movss xmm0, dword [eax+0x4]
	mulss xmm0, [ebx+0x38]
	addss xmm1, xmm0
	movss xmm0, dword [eax+0x8]
	mulss xmm0, [ebx+0x3c]
	addss xmm1, xmm0
	xorps xmm1, [_data16_80000000]
	ucomiss xmm1, [_float_0_12500000]
	jae _Z15BG_AdvanceTraceP16BulletFireParamsP18BulletTraceResultsf_30
	jp _Z15BG_AdvanceTraceP16BulletFireParamsP18BulletTraceResultsf_30
	movss xmm1, dword [ebp+0x10]
	mulss xmm1, [_float_8_00000000]
	lea edx, [ebx+0x1c]
	lea eax, [esi+0x30]
	movaps xmm0, xmm1
	mulss xmm0, [ebx+0x34]
	addss xmm0, [esi+0x30]
	movss [ebx+0x1c], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [ebx+0x38]
	addss xmm0, [eax+0x4]
	movss [edx+0x4], xmm0
	mulss xmm1, [ebx+0x3c]
	addss xmm1, [eax+0x8]
	movss [edx+0x8], xmm1
	xor eax, eax
	jmp _Z15BG_AdvanceTraceP16BulletFireParamsP18BulletTraceResultsf_40
_Z15BG_AdvanceTraceP16BulletFireParamsP18BulletTraceResultsf_30:
	movss xmm0, dword [ebp+0x10]
	divss xmm0, xmm1
	movaps xmm1, xmm0
	lea edx, [ebx+0x1c]
	lea eax, [esi+0x30]
	mulss xmm0, [ebx+0x34]
	addss xmm0, [esi+0x30]
	movss [ebx+0x1c], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [ebx+0x38]
	addss xmm0, [eax+0x4]
	movss [edx+0x4], xmm0
	mulss xmm1, [ebx+0x3c]
	addss xmm1, [eax+0x8]
	movss [edx+0x8], xmm1
	mov eax, 0x1
	jmp _Z15BG_AdvanceTraceP16BulletFireParamsP18BulletTraceResultsf_40


;BG_GetWeaponDef(unsigned int)
_Z15BG_GetWeaponDefj:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax*4+bg_weaponDefs]
	pop ebp
	ret
	nop


;BG_AmmoForWeapon(int)
_Z16BG_AmmoForWeaponi:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax*4+bg_weaponDefs]
	mov eax, [eax+0x328]
	pop ebp
	ret
	nop


;BG_CanHoldBreath(playerState_s const*)
_Z16BG_CanHoldBreathPK13playerState_s:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax+0x5d8]
	test eax, eax
	setz al
	movzx eax, al
	pop ebp
	ret


;BG_ClipForWeapon(int)
_Z16BG_ClipForWeaponi:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax*4+bg_weaponDefs]
	mov eax, [eax+0x330]
	pop ebp
	ret
	nop


;BG_GetNumWeapons()
_Z16BG_GetNumWeaponsv:
	push ebp
	mov ebp, esp
	mov eax, [bg_lastParsedWeaponIndex]
	add eax, 0x1
	pop ebp
	ret
	nop
	add [eax], al


;BG_IsWeaponValid(playerState_s const*, unsigned int)
_Z16BG_IsWeaponValidPK13playerState_sj:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0xc]
	mov eax, [bg_lastParsedWeaponIndex]
	add eax, 0x1
	cmp ecx, eax
	jae _Z16BG_IsWeaponValidPK13playerState_sj_10
	mov eax, ecx
	sar eax, 0x5
	and ecx, 0x1f
	mov edx, 0x1
	shl edx, cl
	mov ecx, [ebp+0x8]
	test [ecx+eax*4+0x55c], edx
	jnz _Z16BG_IsWeaponValidPK13playerState_sj_20
_Z16BG_IsWeaponValidPK13playerState_sj_10:
	xor eax, eax
	pop ebp
	ret
_Z16BG_IsWeaponValidPK13playerState_sj_20:
	mov eax, 0x1
	pop ebp
	ret


;BG_ClearWeaponDef()
_Z17BG_ClearWeaponDefv:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	call _Z23BG_LoadDefaultWeaponDefv
	mov [bg_weaponDefs], eax
	mov [bg_weapAmmoTypes], eax
	mov dword [bg_numAmmoTypes], 0x1
	mov [bg_sharedAmmoCaps], eax
	mov dword [bg_numSharedAmmoCaps], 0x1
	mov [bg_weapClips], eax
	mov dword [bg_numWeapClips], 0x1
	mov eax, bg_itemlist
	lea edx, [eax+0x1ffc]
_Z17BG_ClearWeaponDefv_10:
	mov dword [eax+0x4], 0x0
	add eax, 0x4
	cmp edx, eax
	jnz _Z17BG_ClearWeaponDefv_10
	call _Z22BG_LoadPlayerAnimTypesv
	leave
	jmp _Z20BG_InitWeaponStringsv
	nop


;BG_GetWeaponIndex(WeaponDef const*)
_Z17BG_GetWeaponIndexPK9WeaponDef:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov esi, [ebp+0x8]
	mov ebx, [bg_lastParsedWeaponIndex]
	cmp esi, [bg_weaponDefs]
	jz _Z17BG_GetWeaponIndexPK9WeaponDef_10
	xor ecx, ecx
	mov edx, bg_weaponDefs
_Z17BG_GetWeaponIndexPK9WeaponDef_20:
	add ecx, 0x1
	cmp ecx, ebx
	ja _Z17BG_GetWeaponIndexPK9WeaponDef_10
	mov eax, [edx+0x4]
	add edx, 0x4
	cmp eax, esi
	jnz _Z17BG_GetWeaponIndexPK9WeaponDef_20
	mov eax, ecx
	pop ebx
	pop esi
	pop ebp
	ret
_Z17BG_GetWeaponIndexPK9WeaponDef_10:
	xor ecx, ecx
	mov eax, ecx
	pop ebx
	pop esi
	pop ebp
	ret


;BG_GetAmmoPlayerMax(playerState_s const*, unsigned int, unsigned int)
_Z19BG_GetAmmoPlayerMaxPK13playerState_sjj:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x8
	mov eax, [ebp+0xc]
	mov edi, [eax*4+bg_weaponDefs]
	mov eax, [edi+0x344]
	test eax, eax
	js _Z19BG_GetAmmoPlayerMaxPK13playerState_sjj_10
_Z19BG_GetAmmoPlayerMaxPK13playerState_sjj_60:
	mov eax, [eax*4+bg_sharedAmmoCaps]
	mov eax, [eax+0x348]
	mov [ebp-0x10], eax
	add esp, 0x8
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19BG_GetAmmoPlayerMaxPK13playerState_sjj_10:
	mov ecx, [edi+0x500]
	test ecx, ecx
	jnz _Z19BG_GetAmmoPlayerMaxPK13playerState_sjj_20
	mov ecx, [bg_lastParsedWeaponIndex]
	mov [ebp-0x14], ecx
	mov dword [ebp-0x10], 0x0
	xor ebx, ebx
	mov esi, bg_weaponDefs
_Z19BG_GetAmmoPlayerMaxPK13playerState_sjj_50:
	cmp ebx, [ebp+0x10]
	jz _Z19BG_GetAmmoPlayerMaxPK13playerState_sjj_30
	mov edx, ebx
	sar edx, 0x5
	mov ecx, ebx
	and ecx, 0x1f
	mov eax, 0x1
	shl eax, cl
	mov ecx, [ebp+0x8]
	test [ecx+edx*4+0x55c], eax
	jz _Z19BG_GetAmmoPlayerMaxPK13playerState_sjj_30
	mov edx, [esi]
	mov eax, [edx+0x328]
	cmp eax, [edi+0x328]
	jz _Z19BG_GetAmmoPlayerMaxPK13playerState_sjj_40
_Z19BG_GetAmmoPlayerMaxPK13playerState_sjj_30:
	add ebx, 0x1
	add esi, 0x4
	cmp ebx, [ebp-0x14]
	jbe _Z19BG_GetAmmoPlayerMaxPK13playerState_sjj_50
	mov eax, [ebp-0x10]
	add esp, 0x8
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19BG_GetAmmoPlayerMaxPK13playerState_sjj_20:
	mov edi, [edi+0x338]
	mov [ebp-0x10], edi
	mov eax, edi
	add esp, 0x8
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19BG_GetAmmoPlayerMaxPK13playerState_sjj_40:
	mov eax, [edx+0x344]
	test eax, eax
	jns _Z19BG_GetAmmoPlayerMaxPK13playerState_sjj_60
	mov eax, [edx+0x334]
	add [ebp-0x10], eax
	jmp _Z19BG_GetAmmoPlayerMaxPK13playerState_sjj_30


;BG_TakePlayerWeapon(playerState_s*, unsigned int, int)
_Z19BG_TakePlayerWeaponP13playerState_sji:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov eax, [ebp+0xc]
	sar eax, 0x5
	lea edx, [eax*4]
	mov ecx, [ebp+0xc]
	and ecx, 0x1f
	mov eax, 0x1
	shl eax, cl
	mov ecx, [ebp+0x8]
	test [ecx+edx+0x55c], eax
	jz _Z19BG_TakePlayerWeaponP13playerState_sji_10
	mov edi, ecx
	mov ecx, [ebp+0xc]
	mov ebx, [ecx*4+bg_weaponDefs]
	add edi, 0x55c
	not eax
	and [edi+edx], eax
	mov eax, [ebp+0x10]
	test eax, eax
	jnz _Z19BG_TakePlayerWeaponP13playerState_sji_20
	mov edx, [ebx+0x540]
	test edx, edx
	jnz _Z19BG_TakePlayerWeaponP13playerState_sji_30
_Z19BG_TakePlayerWeaponP13playerState_sji_70:
	mov ecx, [ebp+0x8]
_Z19BG_TakePlayerWeaponP13playerState_sji_120:
	mov edx, [ebp+0xc]
	cmp edx, [ecx+0xe8]
	jz _Z19BG_TakePlayerWeaponP13playerState_sji_40
_Z19BG_TakePlayerWeaponP13playerState_sji_90:
	mov eax, 0x1
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19BG_TakePlayerWeaponP13playerState_sji_30:
	mov eax, edx
	sar eax, 0x5
	lea ebx, [eax*4]
	mov ecx, edx
	and ecx, 0x1f
	mov esi, 0x1
	shl esi, cl
	mov eax, [ebp+0x8]
	test [eax+ebx+0x55c], esi
	jz _Z19BG_TakePlayerWeaponP13playerState_sji_50
	mov eax, [ebp+0x10]
	test eax, eax
	jnz _Z19BG_TakePlayerWeaponP13playerState_sji_60
_Z19BG_TakePlayerWeaponP13playerState_sji_80:
	not esi
	and [edi+ebx], esi
	mov eax, [edx*4+bg_weaponDefs]
	mov edx, [eax+0x540]
	test edx, edx
	jz _Z19BG_TakePlayerWeaponP13playerState_sji_70
	mov eax, edx
	sar eax, 0x5
	lea ebx, [eax*4]
	mov ecx, edx
	and ecx, 0x1f
	mov esi, 0x1
	shl esi, cl
	mov eax, [ebp+0x8]
	test [eax+ebx+0x55c], esi
	jnz _Z19BG_TakePlayerWeaponP13playerState_sji_80
_Z19BG_TakePlayerWeaponP13playerState_sji_50:
	mov ecx, eax
	mov edx, [ebp+0xc]
	cmp edx, [ecx+0xe8]
	jnz _Z19BG_TakePlayerWeaponP13playerState_sji_90
_Z19BG_TakePlayerWeaponP13playerState_sji_40:
	mov dword [ecx+0xe8], 0x0
	mov eax, 0x1
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19BG_TakePlayerWeaponP13playerState_sji_20:
	mov eax, [ecx*4+bg_weaponDefs]
	mov esi, [eax+0x328]
	mov [esp+0x8], ecx
	mov [esp+0x4], ecx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z19BG_GetAmmoPlayerMaxPK13playerState_sjj
	mov edx, eax
	test eax, eax
	jnz _Z19BG_TakePlayerWeaponP13playerState_sji_100
	xor eax, eax
	mov edx, [ebp+0x8]
_Z19BG_TakePlayerWeaponP13playerState_sji_110:
	mov [edx+esi*4+0x15c], eax
	mov ecx, [ebp+0xc]
	mov eax, [ecx*4+bg_weaponDefs]
	mov eax, [eax+0x330]
	mov dword [edx+eax*4+0x35c], 0x0
	mov edx, [ebx+0x540]
	test edx, edx
	jz _Z19BG_TakePlayerWeaponP13playerState_sji_70
	jmp _Z19BG_TakePlayerWeaponP13playerState_sji_30
_Z19BG_TakePlayerWeaponP13playerState_sji_10:
	xor eax, eax
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19BG_TakePlayerWeaponP13playerState_sji_100:
	mov ecx, [ebp+0xc]
	mov eax, [ecx*4+bg_weaponDefs]
	mov eax, [eax+0x328]
	mov ecx, [ebp+0x8]
	mov eax, [ecx+eax*4+0x15c]
	cmp edx, eax
	cmovl eax, edx
	mov edx, ecx
	jmp _Z19BG_TakePlayerWeaponP13playerState_sji_110
_Z19BG_TakePlayerWeaponP13playerState_sji_60:
	mov eax, [edx*4+bg_weaponDefs]
	mov eax, [eax+0x328]
	mov ecx, [ebp+0x8]
	mov dword [ecx+eax*4+0x15c], 0x0
	mov eax, [edx*4+bg_weaponDefs]
	mov eax, [eax+0x330]
	mov dword [ecx+eax*4+0x35c], 0x0
	not esi
	and [edi+ebx], esi
	mov eax, [edx*4+bg_weaponDefs]
	mov edx, [eax+0x540]
	test edx, edx
	jz _Z19BG_TakePlayerWeaponP13playerState_sji_70
	mov eax, edx
	sar eax, 0x5
	lea ebx, [eax*4]
	mov ecx, edx
	and ecx, 0x1f
	mov esi, 0x1
	shl esi, cl
	mov ecx, [ebp+0x8]
	test [ecx+ebx+0x55c], esi
	jnz _Z19BG_TakePlayerWeaponP13playerState_sji_60
	jmp _Z19BG_TakePlayerWeaponP13playerState_sji_120


;BG_UsingSniperScope(playerState_s const*)
_Z19BG_UsingSniperScopePK13playerState_s:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	mov eax, [edx+0xe8]
	mov eax, [eax*4+bg_weaponDefs]
	mov eax, [eax+0x438]
	test eax, eax
	jz _Z19BG_UsingSniperScopePK13playerState_s_10
	movss xmm0, dword [edx+0xf4]
	ucomiss xmm0, [_float_0_00000000]
	jbe _Z19BG_UsingSniperScopePK13playerState_s_10
	mov eax, 0x1
	pop ebp
	ret
_Z19BG_UsingSniperScopePK13playerState_s_10:
	xor eax, eax
	pop ebp
	ret
	nop


;BG_WeaponFireRecoil(playerState_s const*, float*, float*)
_Z19BG_WeaponFireRecoilPK13playerState_sPfS2_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x7c
	mov edx, [ebp+0x8]
	mov edi, [ebp+0xc]
	mov esi, [ebp+0x10]
	test byte [edx+0x10], 0x2
	jz _Z19BG_WeaponFireRecoilPK13playerState_sPfS2__10
	mov eax, [edx+0xe0]
	mov ebx, [eax*4+bg_weaponDefs]
	movss xmm0, dword [edx+0xf4]
	movss [ebp-0x20], xmm0
	mov ecx, [edx+0x50]
	test ecx, ecx
	jle _Z19BG_WeaponFireRecoilPK13playerState_sPfS2__20
_Z19BG_WeaponFireRecoilPK13playerState_sPfS2__50:
	ucomiss xmm0, [_float_1_00000000]
	jnz _Z19BG_WeaponFireRecoilPK13playerState_sPfS2__30
	jp _Z19BG_WeaponFireRecoilPK13playerState_sPfS2__30
	movss xmm1, dword [_float_0_01000000]
	movss [ebp-0x1c], xmm1
	mulss xmm1, [ebx+0x6dc]
	movss [ebp-0x1c], xmm1
_Z19BG_WeaponFireRecoilPK13playerState_sPfS2__70:
	movss xmm0, dword [ebx+0x700]
	movss [ebp-0x60], xmm0
	movss xmm1, dword [ebx+0x704]
	subss xmm1, xmm0
	movss [ebp-0x78], xmm1
	call _Z7randomfv
	fstp dword [ebp-0x5c]
	movss xmm1, dword [ebp-0x78]
	mulss xmm1, [ebp-0x5c]
	addss xmm1, [ebp-0x60]
	movss xmm0, dword [ebx+0x708]
	movss [ebp-0x58], xmm0
	movss xmm0, dword [ebx+0x70c]
	subss xmm0, [ebp-0x58]
	movss [ebp-0x54], xmm0
	movss [ebp-0x78], xmm1
	call _Z7randomfv
	fstp dword [ebp-0x7c]
	movss xmm0, dword [ebp-0x7c]
	mulss xmm0, [ebp-0x54]
	addss xmm0, [ebp-0x58]
	movss xmm1, dword [ebp-0x78]
_Z19BG_WeaponFireRecoilPK13playerState_sPfS2__80:
	mulss xmm0, [ebp-0x1c]
	mulss xmm1, [ebp-0x1c]
	xorps xmm1, [_data16_80000000]
	movss [esi], xmm1
	movss [esi+0x4], xmm0
	mulss xmm0, [_float__0_50000000]
	movss [esi+0x8], xmm0
	movss xmm1, dword [ebp-0x20]
	ucomiss xmm1, [_float_0_00000000]
	jbe _Z19BG_WeaponFireRecoilPK13playerState_sPfS2__40
	movss xmm0, dword [ebx+0x6e0]
	movss [ebp-0x40], xmm0
	movss xmm1, dword [ebx+0x6e4]
	subss xmm1, xmm0
	movss [ebp-0x78], xmm1
	call _Z7randomfv
	fstp dword [ebp-0x3c]
	movss xmm1, dword [ebp-0x78]
	mulss xmm1, [ebp-0x3c]
	addss xmm1, [ebp-0x40]
	movss xmm0, dword [ebx+0x6e8]
	movss [ebp-0x38], xmm0
	movss xmm0, dword [ebx+0x6ec]
	subss xmm0, [ebp-0x38]
	movss [ebp-0x34], xmm0
	movss [ebp-0x78], xmm1
	call _Z7randomfv
	fstp dword [ebp-0x7c]
	movss xmm0, dword [ebp-0x7c]
	mulss xmm0, [ebp-0x34]
	addss xmm0, [ebp-0x38]
_Z19BG_WeaponFireRecoilPK13playerState_sPfS2__90:
	movss xmm1, dword [ebp-0x78]
	mulss xmm1, [ebp-0x1c]
	addss xmm1, [edi]
	movss [edi], xmm1
	mulss xmm0, [ebp-0x1c]
	addss xmm0, [edi+0x4]
	movss [edi+0x4], xmm0
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19BG_WeaponFireRecoilPK13playerState_sPfS2__10:
	mov eax, [edx+0xe8]
	mov ebx, [eax*4+bg_weaponDefs]
	movss xmm0, dword [edx+0xf4]
	movss [ebp-0x20], xmm0
	mov ecx, [edx+0x50]
	test ecx, ecx
	jg _Z19BG_WeaponFireRecoilPK13playerState_sPfS2__50
_Z19BG_WeaponFireRecoilPK13playerState_sPfS2__20:
	movaps xmm1, xmm0
	movss xmm0, dword [_float_1_00000000]
	ucomiss xmm1, xmm0
	jnz _Z19BG_WeaponFireRecoilPK13playerState_sPfS2__60
	jp _Z19BG_WeaponFireRecoilPK13playerState_sPfS2__60
	movss [ebp-0x1c], xmm0
	jmp _Z19BG_WeaponFireRecoilPK13playerState_sPfS2__70
_Z19BG_WeaponFireRecoilPK13playerState_sPfS2__30:
	movss xmm0, dword [_float_0_01000000]
	movss [ebp-0x1c], xmm0
	mulss xmm0, [ebx+0x724]
_Z19BG_WeaponFireRecoilPK13playerState_sPfS2__60:
	movss [ebp-0x1c], xmm0
	movss xmm1, dword [ebx+0x748]
	movss [ebp-0x50], xmm1
	movss xmm1, dword [ebx+0x74c]
	subss xmm1, [ebp-0x50]
	movss [ebp-0x78], xmm1
	call _Z7randomfv
	fstp dword [ebp-0x4c]
	movss xmm1, dword [ebp-0x78]
	mulss xmm1, [ebp-0x4c]
	addss xmm1, [ebp-0x50]
	movss xmm0, dword [ebx+0x750]
	movss [ebp-0x48], xmm0
	movss xmm0, dword [ebx+0x754]
	subss xmm0, [ebp-0x48]
	movss [ebp-0x44], xmm0
	movss [ebp-0x78], xmm1
	call _Z7randomfv
	fstp dword [ebp-0x7c]
	movss xmm0, dword [ebp-0x7c]
	mulss xmm0, [ebp-0x44]
	addss xmm0, [ebp-0x48]
	movss xmm1, dword [ebp-0x78]
	jmp _Z19BG_WeaponFireRecoilPK13playerState_sPfS2__80
_Z19BG_WeaponFireRecoilPK13playerState_sPfS2__40:
	movss xmm1, dword [ebx+0x728]
	movss [ebp-0x30], xmm1
	movss xmm1, dword [ebx+0x72c]
	subss xmm1, [ebp-0x30]
	movss [ebp-0x78], xmm1
	call _Z7randomfv
	fstp dword [ebp-0x2c]
	movss xmm1, dword [ebp-0x78]
	mulss xmm1, [ebp-0x2c]
	addss xmm1, [ebp-0x30]
	movss xmm0, dword [ebx+0x730]
	movss [ebp-0x28], xmm0
	movss xmm0, dword [ebx+0x734]
	subss xmm0, [ebp-0x28]
	movss [ebp-0x24], xmm0
	movss [ebp-0x78], xmm1
	call _Z7randomfv
	fstp dword [ebp-0x7c]
	movss xmm0, dword [ebp-0x7c]
	mulss xmm0, [ebp-0x24]
	addss xmm0, [ebp-0x28]
	jmp _Z19BG_WeaponFireRecoilPK13playerState_sPfS2__90
	nop
	add [eax], al


;BG_WeaponIsClipOnly(int)
_Z19BG_WeaponIsClipOnlyi:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax*4+bg_weaponDefs]
	mov eax, [eax+0x500]
	pop ebp
	ret
	nop
	add [eax], al


;PM_ExitAimDownSight(playerState_s*)
_Z19PM_ExitAimDownSightP13playerState_s:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov dword [esp+0x4], 0xe
	mov [esp], ebx
	call _Z11PM_AddEventP13playerState_si
	and dword [ebx+0xc], 0xffffffef
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;PM_ResetWeaponState(playerState_s*)
_Z19PM_ResetWeaponStateP13playerState_s:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	and dword [edx+0x10], 0xfffffffd
	and dword [edx+0xc], 0xfffffdff
	mov dword [edx+0x3c], 0x0
	mov dword [edx+0x40], 0x0
	mov dword [edx+0xec], 0x0
	cmp dword [edx+0x4], 0x6
	jg _Z19PM_ResetWeaponStateP13playerState_s_10
	mov eax, [edx+0x624]
	and eax, 0x200
	xor ah, 0x2
	mov [edx+0x624], eax
_Z19PM_ResetWeaponStateP13playerState_s_10:
	pop ebp
	ret
	nop


;BG_WeaponBlocksProne(unsigned int)
_Z20BG_WeaponBlocksPronej:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax*4+bg_weaponDefs]
	mov eax, [eax+0x54c]
	test eax, eax
	setnz al
	movzx eax, al
	pop ebp
	ret
	nop


;BG_GetSpreadForWeapon(playerState_s const*, WeaponDef const*, float*, float*)
_Z21BG_GetSpreadForWeaponPK13playerState_sPK9WeaponDefPfS5_:
	push ebp
	mov ebp, esp
	push ebx
	mov edx, [ebp+0x8]
	mov eax, [ebp+0xc]
	mov ebx, [ebp+0x10]
	mov ecx, [ebp+0x14]
	cmp dword [edx+0x100], 0x2
	jz _Z21BG_GetSpreadForWeaponPK13playerState_sPK9WeaponDefPfS5__10
	movss xmm2, dword [edx+0x118]
	ucomiss xmm2, [_float_40_00000000]
	jbe _Z21BG_GetSpreadForWeaponPK13playerState_sPK9WeaponDefPfS5__20
	subss xmm2, [_float_40_00000000]
	divss xmm2, dword [_float_20_00000000]
	movss xmm1, dword [eax+0x454]
	movss xmm0, dword [eax+0x450]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebx], xmm1
	movss xmm1, dword [eax+0x460]
	movss xmm0, dword [eax+0x45c]
	subss xmm0, xmm1
	mulss xmm2, xmm0
	addss xmm1, xmm2
	movss [ecx], xmm1
_Z21BG_GetSpreadForWeaponPK13playerState_sPK9WeaponDefPfS5__60:
	cmp dword [edx+0x100], 0x1
	jz _Z21BG_GetSpreadForWeaponPK13playerState_sPK9WeaponDefPfS5__30
_Z21BG_GetSpreadForWeaponPK13playerState_sPK9WeaponDefPfS5__50:
	test byte [edx+0x5fc], 0x2
	jz _Z21BG_GetSpreadForWeaponPK13playerState_sPK9WeaponDefPfS5__40
	mov edx, perk_weapSpreadMultiplier
	mov eax, [edx]
	movss xmm0, dword [ebx]
	mulss xmm0, [eax+0xc]
	movss [ebx], xmm0
	mov eax, [edx]
	movss xmm0, dword [ecx]
	mulss xmm0, [eax+0xc]
	movss [ecx], xmm0
_Z21BG_GetSpreadForWeaponPK13playerState_sPK9WeaponDefPfS5__40:
	pop ebx
	pop ebp
	ret
_Z21BG_GetSpreadForWeaponPK13playerState_sPK9WeaponDefPfS5__20:
	subss xmm2, [_float_11_00000000]
	divss xmm2, dword [_float_29_00000000]
	movss xmm1, dword [eax+0x458]
	movss xmm0, dword [eax+0x454]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebx], xmm1
	movss xmm1, dword [eax+0x464]
	movss xmm0, dword [eax+0x460]
	subss xmm0, xmm1
	mulss xmm2, xmm0
	addss xmm1, xmm2
	movss [ecx], xmm1
	cmp dword [edx+0x100], 0x1
	jnz _Z21BG_GetSpreadForWeaponPK13playerState_sPK9WeaponDefPfS5__50
_Z21BG_GetSpreadForWeaponPK13playerState_sPK9WeaponDefPfS5__30:
	cvtsi2ss xmm0, dword [edx+0xfc]
	movss [ecx], xmm0
	jmp _Z21BG_GetSpreadForWeaponPK13playerState_sPK9WeaponDefPfS5__50
_Z21BG_GetSpreadForWeaponPK13playerState_sPK9WeaponDefPfS5__10:
	cvtsi2ss xmm0, dword [edx+0xfc]
	movss [ebx], xmm0
	cvtsi2ss xmm0, dword [edx+0xfc]
	movss [ecx], xmm0
	jmp _Z21BG_GetSpreadForWeaponPK13playerState_sPK9WeaponDefPfS5__60


;BG_CalculateViewAngles(viewState_t*, float*)
_Z22BG_CalculateViewAnglesP11viewState_tPf:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xcc
	mov edi, [ebp+0x8]
	mov esi, [ebp+0xc]
	pxor xmm4, xmm4
	movss [esi], xmm4
	lea eax, [esi+0x4]
	mov [ebp-0x48], eax
	movss [esi+0x4], xmm4
	lea eax, [esi+0x8]
	mov [ebp-0x44], eax
	movss [esi+0x8], xmm4
	mov edx, [edi+0x4]
	test edx, edx
	jz _Z22BG_CalculateViewAnglesP11viewState_tPf_10
	mov ebx, [edi]
	test byte [ebx+0x10], 0x2
	jz _Z22BG_CalculateViewAnglesP11viewState_tPf_20
	mov eax, [ebx+0xe0]
_Z22BG_CalculateViewAnglesP11viewState_tPf_480:
	mov eax, [eax*4+bg_weaponDefs]
	movss xmm0, dword [ebx+0xf4]
	movaps xmm1, xmm0
	mulss xmm1, [_float__0_50000000]
	movss xmm2, dword [_float_1_00000000]
	addss xmm1, xmm2
	movss [ebp-0x3c], xmm1
	ucomiss xmm0, xmm4
	jp _Z22BG_CalculateViewAnglesP11viewState_tPf_30
	jz _Z22BG_CalculateViewAnglesP11viewState_tPf_40
_Z22BG_CalculateViewAnglesP11viewState_tPf_30:
	mov eax, [eax+0x438]
	test eax, eax
	jnz _Z22BG_CalculateViewAnglesP11viewState_tPf_50
_Z22BG_CalculateViewAnglesP11viewState_tPf_40:
	mov eax, [edi+0x8]
	sub eax, edx
	cvtsi2ss xmm0, eax
	movss xmm1, dword [_float_100_00000000]
	ucomiss xmm1, xmm0
	ja _Z22BG_CalculateViewAnglesP11viewState_tPf_60
_Z22BG_CalculateViewAnglesP11viewState_tPf_500:
	subss xmm0, xmm1
	divss xmm0, dword [_float__400_00000000]
	addss xmm0, xmm2
	ucomiss xmm0, xmm4
	jbe _Z22BG_CalculateViewAnglesP11viewState_tPf_70
	movaps xmm1, xmm2
	subss xmm1, xmm0
	movss [esp], xmm1
	movss [ebp-0x98], xmm2
	call _Z15GetLeanFractionf
	fstp dword [ebp-0x40]
	movss xmm2, dword [ebp-0x98]
	movaps xmm0, xmm2
	subss xmm0, [ebp-0x40]
	mulss xmm0, [ebp-0x3c]
	movaps xmm1, xmm0
	mulss xmm1, [edi+0xc]
	addss xmm1, [esi]
	movss [esi], xmm1
	mulss xmm0, [edi+0x10]
	mov eax, [ebp-0x44]
	addss xmm0, [eax]
	movss [eax], xmm0
_Z22BG_CalculateViewAnglesP11viewState_tPf_10:
	mov ebx, [edi]
_Z22BG_CalculateViewAnglesP11viewState_tPf_70:
	test byte [ebx+0x10], 0x2
	jnz _Z22BG_CalculateViewAnglesP11viewState_tPf_80
	mov eax, [ebx+0xe8]
	mov eax, [eax*4+bg_weaponDefs]
	mov ecx, [eax+0x438]
	test ecx, ecx
	jnz _Z22BG_CalculateViewAnglesP11viewState_tPf_90
_Z22BG_CalculateViewAnglesP11viewState_tPf_160:
	test byte [ebx+0x10], 0x2
	jnz _Z22BG_CalculateViewAnglesP11viewState_tPf_100
	mov eax, [ebx+0xe8]
_Z22BG_CalculateViewAnglesP11viewState_tPf_400:
	mov eax, [eax*4+bg_weaponDefs]
	mov [ebp-0x38], eax
	mov eax, [eax+0x438]
	test eax, eax
	jz _Z22BG_CalculateViewAnglesP11viewState_tPf_110
	movzx eax, byte [ebx+0x8]
	cvtsi2ss xmm0, eax
	divss xmm0, dword [_float_255_00000000]
	cvtss2sd xmm0, xmm0
	mulsd xmm0, [_double_3_14159265]
	addsd xmm0, xmm0
	movsd xmm1, qword [_double_6_28318531]
	addsd xmm0, xmm1
	cvtsd2ss xmm0, xmm0
	cvtss2sd xmm0, xmm0
	addsd xmm0, [_double_0_78539816]
	addsd xmm0, xmm1
	cvtsd2ss xmm0, xmm0
	movss [ebp-0x30], xmm0
	movss xmm0, dword [_float_0_16000000]
	movss [ebp-0x34], xmm0
	mulss xmm0, [edi+0x14]
	movss [ebp-0x34], xmm0
	mov eax, [ebx+0x114]
	cmp eax, 0xb
	jz _Z22BG_CalculateViewAnglesP11viewState_tPf_120
	cmp eax, 0x28
	jz _Z22BG_CalculateViewAnglesP11viewState_tPf_130
	cmp word [ebx+0xc], 0x0
	js _Z22BG_CalculateViewAnglesP11viewState_tPf_140
	mov eax, bg_bobAmplitudeStanding
	mov eax, [eax]
	movss xmm2, dword [ebp-0x34]
	mulss xmm2, [eax+0x10]
	jmp _Z22BG_CalculateViewAnglesP11viewState_tPf_150
_Z22BG_CalculateViewAnglesP11viewState_tPf_80:
	mov eax, [ebx+0xe0]
	mov eax, [eax*4+bg_weaponDefs]
	mov ecx, [eax+0x438]
	test ecx, ecx
	jz _Z22BG_CalculateViewAnglesP11viewState_tPf_160
_Z22BG_CalculateViewAnglesP11viewState_tPf_90:
	mov edx, [eax+0x4ec]
	test edx, edx
	jz _Z22BG_CalculateViewAnglesP11viewState_tPf_170
	movss xmm0, dword [ebx+0xf4]
	movss xmm1, dword [eax+0x490]
	movss xmm3, dword [eax+0x48c]
	subss xmm3, xmm1
	mulss xmm3, xmm0
	addss xmm3, xmm1
	movss xmm1, dword [eax+0x498]
	movss xmm2, dword [eax+0x494]
	subss xmm2, xmm1
	mulss xmm2, xmm0
	addss xmm2, xmm1
	pxor xmm4, xmm4
_Z22BG_CalculateViewAnglesP11viewState_tPf_490:
	mov edx, [ebx+0xb0]
	test dl, 0x8
	jnz _Z22BG_CalculateViewAnglesP11viewState_tPf_180
_Z22BG_CalculateViewAnglesP11viewState_tPf_420:
	and dl, 0x4
	jz _Z22BG_CalculateViewAnglesP11viewState_tPf_190
	movss xmm1, dword [eax+0x49c]
	jmp _Z22BG_CalculateViewAnglesP11viewState_tPf_200
_Z22BG_CalculateViewAnglesP11viewState_tPf_120:
	mov eax, bg_bobAmplitudeProne
	mov eax, [eax]
	movaps xmm2, xmm0
	mulss xmm2, [eax+0x10]
_Z22BG_CalculateViewAnglesP11viewState_tPf_150:
	movss xmm1, dword [_float_10_00000000]
	movaps xmm0, xmm1
	cmpss xmm0, xmm2, 0x5
	andps xmm2, xmm0
	andnps xmm0, xmm1
	orps xmm0, xmm2
	movss [ebp-0x1c], xmm0
	movss xmm0, dword [ebp-0x30]
	addss xmm0, xmm0
	movss [esp], xmm0
	call sinf
	fstp dword [ebp-0xbc]
	movss xmm1, dword [ebp-0xbc]
	movss xmm0, dword [ebp-0x30]
	mulss xmm0, [_float_4_00000000]
	cvtss2sd xmm0, xmm0
	addsd xmm0, [_double_1_57079633]
	movsd [esp], xmm0
	movss [ebp-0x88], xmm1
	call sin
	fstp qword [ebp-0x58]
	cvtsd2ss xmm0, [ebp-0x58]
	mulss xmm0, [_float_0_20000000]
	movss xmm1, dword [ebp-0x88]
	addss xmm1, xmm0
	mulss xmm1, [_float_0_75000000]
	mulss xmm1, [ebp-0x1c]
	movss [ebp-0x1c], xmm1
	xor dword [ebp-0x1c], 0x80000000
	mov eax, [ebx+0x114]
	cmp eax, 0xb
	jz _Z22BG_CalculateViewAnglesP11viewState_tPf_210
	cmp eax, 0x28
	jz _Z22BG_CalculateViewAnglesP11viewState_tPf_220
	cmp word [ebx+0xc], 0x0
	jns _Z22BG_CalculateViewAnglesP11viewState_tPf_230
	mov eax, bg_bobAmplitudeSprinting
	mov eax, [eax]
	movss xmm2, dword [ebp-0x34]
	mulss xmm2, [eax+0xc]
_Z22BG_CalculateViewAnglesP11viewState_tPf_530:
	movss xmm1, dword [_float_10_00000000]
	movaps xmm0, xmm1
	cmpss xmm0, xmm2, 0x5
	andps xmm2, xmm0
	movaps xmm5, xmm0
	andnps xmm5, xmm1
	orps xmm5, xmm2
	movss xmm1, dword [ebp-0x30]
	movss [esp], xmm1
	movss [ebp-0xb8], xmm5
	call sinf
	fstp dword [ebp-0x5c]
	movss xmm5, dword [ebp-0xb8]
	mulss xmm5, [ebp-0x5c]
	xorps xmm5, [_ZZ14PM_GetMoveAnimP13playerState_s17PmStanceFrontBackiiE13moveAnimTable+0x2a0]
	cvtss2sd xmm0, [ebp-0x30]
	subsd xmm0, [_double_0_47123892]
	cvtsd2ss xmm4, xmm0
	movss xmm2, dword [ebp-0x34]
	mulss xmm2, [_float_1_50000000]
	mov eax, [ebx+0x114]
	cmp eax, 0xb
	jz _Z22BG_CalculateViewAnglesP11viewState_tPf_240
	cmp eax, 0x28
	jz _Z22BG_CalculateViewAnglesP11viewState_tPf_250
	cmp word [ebx+0xc], 0x0
	jns _Z22BG_CalculateViewAnglesP11viewState_tPf_260
	mov eax, bg_bobAmplitudeSprinting
	mov eax, [eax]
	movaps xmm3, xmm2
	mulss xmm3, [eax+0xc]
_Z22BG_CalculateViewAnglesP11viewState_tPf_540:
	movss xmm1, dword [_float_10_00000000]
	movaps xmm0, xmm1
	cmpss xmm0, xmm3, 0x5
	movaps xmm2, xmm3
	andps xmm2, xmm0
	movaps xmm3, xmm0
	andnps xmm3, xmm1
	orps xmm3, xmm2
	movss [esp], xmm4
	movss [ebp-0xa8], xmm3
	movss [ebp-0xb8], xmm5
	call sinf
	fstp dword [ebp-0xbc]
	movss xmm4, dword [ebp-0xbc]
	movss xmm3, dword [ebp-0xa8]
	mulss xmm4, xmm3
	pxor xmm1, xmm1
	movaps xmm0, xmm1
	subss xmm0, xmm4
	movaps xmm2, xmm1
	cmpss xmm2, xmm0, 0x2
	andps xmm4, xmm2
	orps xmm4, xmm1
	movss xmm2, dword [ebx+0xf4]
	movss xmm5, dword [ebp-0xb8]
	ucomiss xmm2, xmm1
	jp _Z22BG_CalculateViewAnglesP11viewState_tPf_270
	jz _Z22BG_CalculateViewAnglesP11viewState_tPf_280
_Z22BG_CalculateViewAnglesP11viewState_tPf_270:
	movss xmm0, dword [_float_1_00000000]
	movaps xmm1, xmm0
	mov eax, [ebp-0x38]
	subss xmm1, [eax+0x448]
	mulss xmm1, xmm2
	subss xmm0, xmm1
	movss xmm1, dword [ebp-0x1c]
	mulss xmm1, xmm0
	movss [ebp-0x1c], xmm1
	mulss xmm5, xmm0
	mulss xmm4, xmm0
	movaps xmm0, xmm1
_Z22BG_CalculateViewAnglesP11viewState_tPf_520:
	mulss xmm0, xmm2
	movss [ebp-0x1c], xmm0
	addss xmm0, [esi]
	movss [esi], xmm0
	mulss xmm5, xmm2
	addss xmm5, [esi+0x4]
	mov eax, [ebp-0x48]
	movss [eax], xmm5
	mulss xmm2, xmm4
	addss xmm2, [esi+0x8]
	mov eax, [ebp-0x44]
	movss [eax], xmm2
	mov ebx, [edi]
_Z22BG_CalculateViewAnglesP11viewState_tPf_110:
	test byte [ebx+0x10], 0x2
	jz _Z22BG_CalculateViewAnglesP11viewState_tPf_290
	mov eax, [ebx+0xe0]
_Z22BG_CalculateViewAnglesP11viewState_tPf_390:
	mov eax, [eax*4+bg_weaponDefs]
	mov [ebp-0x24], eax
	test dword [ebx+0xb0], 0x300
	jnz _Z22BG_CalculateViewAnglesP11viewState_tPf_300
	movss xmm0, dword [ebx+0xf4]
	movss [ebp-0x2c], xmm0
	pxor xmm0, xmm0
	movss xmm1, dword [ebp-0x2c]
	ucomiss xmm1, xmm0
	jp _Z22BG_CalculateViewAnglesP11viewState_tPf_310
	jz _Z22BG_CalculateViewAnglesP11viewState_tPf_300
_Z22BG_CalculateViewAnglesP11viewState_tPf_310:
	movss xmm2, dword [eax+0x44c]
	movss [ebp-0x28], xmm2
	ucomiss xmm2, xmm0
	jp _Z22BG_CalculateViewAnglesP11viewState_tPf_320
	jz _Z22BG_CalculateViewAnglesP11viewState_tPf_300
_Z22BG_CalculateViewAnglesP11viewState_tPf_320:
	movzx eax, byte [ebx+0x8]
	cvtsi2ss xmm0, eax
	divss xmm0, dword [_float_255_00000000]
	cvtss2sd xmm0, xmm0
	mulsd xmm0, [_double_3_14159265]
	addsd xmm0, xmm0
	addsd xmm0, [_double_6_28318531]
	cvtsd2ss xmm0, xmm0
	movss [ebp-0x20], xmm0
	movss xmm2, dword [edi+0x14]
	mov eax, [ebx+0x114]
	cmp eax, 0xb
	jz _Z22BG_CalculateViewAnglesP11viewState_tPf_330
	cmp eax, 0x28
	jz _Z22BG_CalculateViewAnglesP11viewState_tPf_340
	cmp word [ebx+0xc], 0x0
	jns _Z22BG_CalculateViewAnglesP11viewState_tPf_350
	mov eax, bg_bobAmplitudeSprinting
	mov eax, [eax]
	movaps xmm3, xmm2
	mulss xmm3, [eax+0x10]
_Z22BG_CalculateViewAnglesP11viewState_tPf_510:
	movss xmm1, dword [_float_45_00000000]
	movaps xmm0, xmm1
	cmpss xmm0, xmm3, 0x5
	movaps xmm2, xmm3
	andps xmm2, xmm0
	movaps xmm3, xmm0
	andnps xmm3, xmm1
	orps xmm3, xmm2
	movss xmm0, dword [ebp-0x20]
	addss xmm0, xmm0
	movss [esp], xmm0
	movss [ebp-0xa8], xmm3
	call sinf
	fstp dword [ebp-0xbc]
	movss xmm1, dword [ebp-0xbc]
	movss xmm0, dword [ebp-0x20]
	mulss xmm0, [_float_4_00000000]
	cvtss2sd xmm0, xmm0
	addsd xmm0, [_double_1_57079633]
	movsd [esp], xmm0
	movss [ebp-0x88], xmm1
	call sin
	fstp qword [ebp-0x68]
	cvtsd2ss xmm0, [ebp-0x68]
	mulss xmm0, [_float_0_20000000]
	movss xmm1, dword [ebp-0x88]
	addss xmm1, xmm0
	mulss xmm1, [_float_0_75000000]
	movss xmm3, dword [ebp-0xa8]
	mulss xmm3, xmm1
	movss xmm0, dword [ebp-0x2c]
	mulss xmm0, [ebp-0x28]
	mulss xmm3, xmm0
	movss xmm0, dword [esi]
	subss xmm0, xmm3
	movss [esi], xmm0
	movss xmm2, dword [edi+0x14]
	mov eax, [ebx+0x114]
	cmp eax, 0xb
	jz _Z22BG_CalculateViewAnglesP11viewState_tPf_360
	cmp eax, 0x28
	jz _Z22BG_CalculateViewAnglesP11viewState_tPf_370
	cmp word [ebx+0xc], 0x0
	jns _Z22BG_CalculateViewAnglesP11viewState_tPf_380
	mov eax, bg_bobAmplitudeSprinting
	mov eax, [eax]
	movaps xmm3, xmm2
	mulss xmm3, [eax+0xc]
_Z22BG_CalculateViewAnglesP11viewState_tPf_550:
	movss xmm1, dword [_float_45_00000000]
	movaps xmm0, xmm1
	cmpss xmm0, xmm3, 0x5
	movaps xmm2, xmm3
	andps xmm2, xmm0
	movaps xmm3, xmm0
	andnps xmm3, xmm1
	orps xmm3, xmm2
	movss xmm1, dword [ebp-0x20]
	movss [esp], xmm1
	movss [ebp-0xa8], xmm3
	call sinf
	fstp dword [ebp-0x6c]
	movss xmm3, dword [ebp-0xa8]
	mulss xmm3, [ebp-0x6c]
	movss xmm0, dword [ebx+0xf4]
	mov eax, [ebp-0x24]
	mulss xmm0, [eax+0x44c]
	mulss xmm3, xmm0
	mov eax, [ebp-0x48]
	movss xmm0, dword [eax]
	subss xmm0, xmm3
	movss [eax], xmm0
_Z22BG_CalculateViewAnglesP11viewState_tPf_300:
	add esp, 0xcc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z22BG_CalculateViewAnglesP11viewState_tPf_290:
	mov eax, [ebx+0xe8]
	jmp _Z22BG_CalculateViewAnglesP11viewState_tPf_390
_Z22BG_CalculateViewAnglesP11viewState_tPf_100:
	mov eax, [ebx+0xe0]
	jmp _Z22BG_CalculateViewAnglesP11viewState_tPf_400
_Z22BG_CalculateViewAnglesP11viewState_tPf_170:
	movss xmm3, dword [eax+0x490]
	pxor xmm4, xmm4
	ucomiss xmm3, xmm4
	jnz _Z22BG_CalculateViewAnglesP11viewState_tPf_410
	jp _Z22BG_CalculateViewAnglesP11viewState_tPf_410
	movss xmm3, dword [_float_80_00000000]
	movss xmm2, dword [_float_1_00000000]
	mov edx, [ebx+0xb0]
	test dl, 0x8
	jz _Z22BG_CalculateViewAnglesP11viewState_tPf_420
_Z22BG_CalculateViewAnglesP11viewState_tPf_180:
	movss xmm1, dword [eax+0x4a0]
_Z22BG_CalculateViewAnglesP11viewState_tPf_200:
	ucomiss xmm4, [ebx+0xf4]
	jp _Z22BG_CalculateViewAnglesP11viewState_tPf_430
	jz _Z22BG_CalculateViewAnglesP11viewState_tPf_440
_Z22BG_CalculateViewAnglesP11viewState_tPf_430:
	movss xmm4, dword [edi+0x1c]
	ucomiss xmm1, xmm4
	jp _Z22BG_CalculateViewAnglesP11viewState_tPf_450
	jz _Z22BG_CalculateViewAnglesP11viewState_tPf_440
_Z22BG_CalculateViewAnglesP11viewState_tPf_450:
	ucomiss xmm1, xmm4
	jbe _Z22BG_CalculateViewAnglesP11viewState_tPf_460
	movss xmm0, dword [_float_0_50000000]
	mulss xmm0, [edi+0x18]
	addss xmm0, xmm4
	movss [edi+0x1c], xmm0
	ucomiss xmm0, xmm1
	ja _Z22BG_CalculateViewAnglesP11viewState_tPf_470
_Z22BG_CalculateViewAnglesP11viewState_tPf_440:
	movaps xmm1, xmm3
	mulss xmm1, [edi+0x1c]
	mulss xmm1, [ebx+0xf4]
	movss xmm0, dword [ebx+0x5d4]
	mulss xmm1, xmm0
	mov edx, [edi+0x20]
	mulss xmm0, [edi+0x18]
	mulss xmm0, [_float_1000_00000000]
	mulss xmm2, xmm0
	cvttss2si eax, xmm2
	add [edx], eax
	mov eax, [edi+0x20]
	cvtsi2ss xmm0, dword [eax]
	mulss xmm0, [_float_0_00070000]
	movss [esp], xmm0
	movss [ebp-0x88], xmm1
	call sinf
	fstp dword [ebp-0xbc]
	movss xmm0, dword [ebp-0xbc]
	movss xmm1, dword [ebp-0x88]
	mulss xmm0, xmm1
	mulss xmm0, [_float_0_01000000]
	mov eax, [ebp-0x48]
	addss xmm0, [eax]
	movss [eax], xmm0
	mov eax, [edi+0x20]
	cvtsi2ss xmm0, dword [eax]
	mulss xmm0, [_float_0_00100000]
	movss [esp], xmm0
	movss [ebp-0x88], xmm1
	call sinf
	fstp dword [ebp-0x4c]
	movss xmm1, dword [ebp-0x88]
	mulss xmm1, [ebp-0x4c]
	mulss xmm1, [_float_0_01000000]
	addss xmm1, [esi]
	movss [esi], xmm1
	mov ebx, [edi]
	jmp _Z22BG_CalculateViewAnglesP11viewState_tPf_160
_Z22BG_CalculateViewAnglesP11viewState_tPf_20:
	mov eax, [ebx+0xe8]
	jmp _Z22BG_CalculateViewAnglesP11viewState_tPf_480
_Z22BG_CalculateViewAnglesP11viewState_tPf_140:
	mov eax, bg_bobAmplitudeSprinting
	mov eax, [eax]
	movss xmm2, dword [ebp-0x34]
	mulss xmm2, [eax+0x10]
	jmp _Z22BG_CalculateViewAnglesP11viewState_tPf_150
_Z22BG_CalculateViewAnglesP11viewState_tPf_410:
	movss xmm2, dword [eax+0x498]
	jmp _Z22BG_CalculateViewAnglesP11viewState_tPf_490
_Z22BG_CalculateViewAnglesP11viewState_tPf_190:
	movss xmm1, dword [_float_1_00000000]
	jmp _Z22BG_CalculateViewAnglesP11viewState_tPf_200
_Z22BG_CalculateViewAnglesP11viewState_tPf_50:
	mulss xmm0, [_float_0_50000000]
	addss xmm0, xmm2
	mulss xmm0, xmm1
	movss [ebp-0x3c], xmm0
	mov eax, [edi+0x8]
	sub eax, edx
	cvtsi2ss xmm0, eax
	movss xmm1, dword [_float_100_00000000]
	ucomiss xmm1, xmm0
	jbe _Z22BG_CalculateViewAnglesP11viewState_tPf_500
_Z22BG_CalculateViewAnglesP11viewState_tPf_60:
	divss xmm0, xmm1
	movss [esp], xmm0
	call _Z15GetLeanFractionf
	fstp dword [ebp-0xbc]
	movss xmm1, dword [ebp-0xbc]
	mulss xmm1, [ebp-0x3c]
	movaps xmm0, xmm1
	mulss xmm0, [edi+0xc]
	addss xmm0, [esi]
	movss [esi], xmm0
	mulss xmm1, [edi+0x10]
	mov eax, [ebp-0x44]
	addss xmm1, [eax]
	movss [eax], xmm1
	mov ebx, [edi]
	jmp _Z22BG_CalculateViewAnglesP11viewState_tPf_70
_Z22BG_CalculateViewAnglesP11viewState_tPf_340:
	mov eax, bg_bobAmplitudeDucked
	mov eax, [eax]
	movaps xmm3, xmm2
	mulss xmm3, [eax+0x10]
	jmp _Z22BG_CalculateViewAnglesP11viewState_tPf_510
_Z22BG_CalculateViewAnglesP11viewState_tPf_460:
	movss xmm0, dword [_float_0_50000000]
	mulss xmm0, [edi+0x18]
	subss xmm4, xmm0
	maxss xmm1, xmm4
_Z22BG_CalculateViewAnglesP11viewState_tPf_470:
	movss [edi+0x1c], xmm1
	jmp _Z22BG_CalculateViewAnglesP11viewState_tPf_440
_Z22BG_CalculateViewAnglesP11viewState_tPf_280:
	movss xmm0, dword [ebp-0x1c]
	jmp _Z22BG_CalculateViewAnglesP11viewState_tPf_520
_Z22BG_CalculateViewAnglesP11viewState_tPf_210:
	mov eax, bg_bobAmplitudeProne
	mov eax, [eax]
	movss xmm2, dword [ebp-0x34]
	mulss xmm2, [eax+0xc]
	jmp _Z22BG_CalculateViewAnglesP11viewState_tPf_530
_Z22BG_CalculateViewAnglesP11viewState_tPf_240:
	mov eax, bg_bobAmplitudeProne
	mov eax, [eax]
	movaps xmm3, xmm2
	mulss xmm3, [eax+0xc]
	jmp _Z22BG_CalculateViewAnglesP11viewState_tPf_540
_Z22BG_CalculateViewAnglesP11viewState_tPf_260:
	mov eax, bg_bobAmplitudeStanding
	mov eax, [eax]
	movaps xmm3, xmm2
	mulss xmm3, [eax+0xc]
	jmp _Z22BG_CalculateViewAnglesP11viewState_tPf_540
_Z22BG_CalculateViewAnglesP11viewState_tPf_230:
	mov eax, bg_bobAmplitudeStanding
	mov eax, [eax]
	movss xmm2, dword [ebp-0x34]
	mulss xmm2, [eax+0xc]
	jmp _Z22BG_CalculateViewAnglesP11viewState_tPf_530
_Z22BG_CalculateViewAnglesP11viewState_tPf_220:
	mov eax, bg_bobAmplitudeDucked
	mov eax, [eax]
	movss xmm2, dword [ebp-0x34]
	mulss xmm2, [eax+0xc]
	jmp _Z22BG_CalculateViewAnglesP11viewState_tPf_530
_Z22BG_CalculateViewAnglesP11viewState_tPf_250:
	mov eax, bg_bobAmplitudeDucked
	mov eax, [eax]
	movaps xmm3, xmm2
	mulss xmm3, [eax+0xc]
	jmp _Z22BG_CalculateViewAnglesP11viewState_tPf_540
_Z22BG_CalculateViewAnglesP11viewState_tPf_130:
	mov eax, bg_bobAmplitudeDucked
	mov eax, [eax]
	movss xmm2, dword [ebp-0x34]
	mulss xmm2, [eax+0x10]
	jmp _Z22BG_CalculateViewAnglesP11viewState_tPf_150
_Z22BG_CalculateViewAnglesP11viewState_tPf_330:
	mov eax, bg_bobAmplitudeProne
	mov eax, [eax]
	movaps xmm3, xmm2
	mulss xmm3, [eax+0x10]
	jmp _Z22BG_CalculateViewAnglesP11viewState_tPf_510
_Z22BG_CalculateViewAnglesP11viewState_tPf_360:
	mov eax, bg_bobAmplitudeProne
	mov eax, [eax]
	movaps xmm3, xmm2
	mulss xmm3, [eax+0xc]
	jmp _Z22BG_CalculateViewAnglesP11viewState_tPf_550
_Z22BG_CalculateViewAnglesP11viewState_tPf_350:
	mov eax, bg_bobAmplitudeStanding
	mov eax, [eax]
	movaps xmm3, xmm2
	mulss xmm3, [eax+0x10]
	jmp _Z22BG_CalculateViewAnglesP11viewState_tPf_510
_Z22BG_CalculateViewAnglesP11viewState_tPf_380:
	mov eax, bg_bobAmplitudeStanding
	mov eax, [eax]
	movaps xmm3, xmm2
	mulss xmm3, [eax+0xc]
	jmp _Z22BG_CalculateViewAnglesP11viewState_tPf_550
_Z22BG_CalculateViewAnglesP11viewState_tPf_370:
	mov eax, bg_bobAmplitudeDucked
	mov eax, [eax]
	movaps xmm3, xmm2
	mulss xmm3, [eax+0xc]
	jmp _Z22BG_CalculateViewAnglesP11viewState_tPf_550


;BG_CanPlayerHaveWeapon(unsigned int)
_Z22BG_CanPlayerHaveWeaponj:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	cmp dword [eax*4+bg_weaponDefs], 0xfffffff4
	setnz al
	movzx eax, al
	pop ebp
	ret


;BG_GetTotalAmmoReserve(playerState_s const*, unsigned int)
_Z22BG_GetTotalAmmoReservePK13playerState_sj:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x42c
	mov ebx, [ebp+0xc]
	mov eax, [ebx*4+bg_weaponDefs]
	mov edx, [eax+0x328]
	mov [ebp-0x41c], edx
	mov esi, [eax+0x330]
	lea eax, [ebp-0x218]
	mov dword [esp+0x8], 0x200
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call memset
	lea eax, [ebp-0x418]
	mov dword [esp+0x8], 0x200
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call memset
	mov edi, [ebx*4+bg_weaponDefs]
	mov ecx, [edi+0x344]
	test ecx, ecx
	js _Z22BG_GetTotalAmmoReservePK13playerState_sj_10
	mov ecx, [bg_lastParsedWeaponIndex]
	mov [ebp-0x424], ecx
	test ecx, ecx
	jz _Z22BG_GetTotalAmmoReservePK13playerState_sj_20
	mov dword [ebp-0x420], 0x0
	mov ebx, 0x1
	mov esi, bg_weaponDefs
	jmp _Z22BG_GetTotalAmmoReservePK13playerState_sj_30
_Z22BG_GetTotalAmmoReservePK13playerState_sj_50:
	add ebx, 0x1
	add esi, 0x4
	cmp [ebp-0x424], ebx
	jb _Z22BG_GetTotalAmmoReservePK13playerState_sj_40
_Z22BG_GetTotalAmmoReservePK13playerState_sj_30:
	mov edx, ebx
	sar edx, 0x5
	mov ecx, ebx
	and ecx, 0x1f
	mov eax, 0x1
	shl eax, cl
	mov ecx, [ebp+0x8]
	test [ecx+edx*4+0x55c], eax
	jz _Z22BG_GetTotalAmmoReservePK13playerState_sj_50
	mov edx, [esi+0x4]
	mov eax, [edx+0x344]
	cmp eax, [edi+0x344]
	jnz _Z22BG_GetTotalAmmoReservePK13playerState_sj_50
	mov eax, [edx+0x500]
	test eax, eax
	jz _Z22BG_GetTotalAmmoReservePK13playerState_sj_60
	mov eax, [edx+0x330]
	cmp dword [ebp+eax*4-0x418], 0x0
	jnz _Z22BG_GetTotalAmmoReservePK13playerState_sj_50
	mov dword [ebp+eax*4-0x418], 0x1
	mov eax, [edx+0x330]
	mov edx, [ecx+eax*4+0x35c]
	add [ebp-0x420], edx
	add ebx, 0x1
	add esi, 0x4
	cmp [ebp-0x424], ebx
	jae _Z22BG_GetTotalAmmoReservePK13playerState_sj_30
_Z22BG_GetTotalAmmoReservePK13playerState_sj_40:
	mov eax, [ebp-0x420]
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z22BG_GetTotalAmmoReservePK13playerState_sj_20:
	mov dword [ebp-0x420], 0x0
	mov eax, [ebp-0x420]
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z22BG_GetTotalAmmoReservePK13playerState_sj_60:
	mov eax, [edx+0x328]
	mov ecx, [ebp+eax*4-0x218]
	test ecx, ecx
	jnz _Z22BG_GetTotalAmmoReservePK13playerState_sj_50
	mov dword [ebp+eax*4-0x218], 0x1
	mov eax, [edx+0x328]
	mov ecx, [ebp+0x8]
	mov ecx, [ecx+eax*4+0x15c]
	add [ebp-0x420], ecx
	jmp _Z22BG_GetTotalAmmoReservePK13playerState_sj_50
_Z22BG_GetTotalAmmoReservePK13playerState_sj_10:
	mov edx, [edi+0x500]
	test edx, edx
	jnz _Z22BG_GetTotalAmmoReservePK13playerState_sj_70
	mov edx, [ebp-0x41c]
	mov ecx, [ebp+0x8]
	mov edx, [ecx+edx*4+0x15c]
	mov [ebp-0x420], edx
	mov eax, edx
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z22BG_GetTotalAmmoReservePK13playerState_sj_70:
	mov eax, [ebp+0x8]
	mov esi, [eax+esi*4+0x35c]
	mov [ebp-0x420], esi
	mov eax, esi
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;BG_ThrowingBackGrenade(playerState_s const*)
_Z22BG_ThrowingBackGrenadePK13playerState_s:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	cmp dword [eax+0x48], 0x3ff
	setnz al
	movzx eax, al
	pop ebp
	ret
	nop


;PM_WeaponAmmoAvailable(playerState_s*)
_Z22PM_WeaponAmmoAvailableP13playerState_s:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	mov eax, [edx+0xe8]
	mov eax, [eax*4+bg_weaponDefs]
	mov eax, [eax+0x330]
	mov eax, [edx+eax*4+0x35c]
	pop ebp
	ret


;BG_FillInAllWeaponItems()
_Z23BG_FillInAllWeaponItemsv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov eax, [bg_lastParsedWeaponIndex]
	add eax, 0x1
	mov [ebp-0x2c], eax
	cmp eax, 0x1
	jbe _Z23BG_FillInAllWeaponItemsv_10
	mov dword [ebp-0x30], 0x1
	mov eax, bg_weaponDefs
_Z23BG_FillInAllWeaponItemsv_50:
	lea edx, [eax+0x4]
	mov [ebp-0x34], edx
	mov eax, [eax+0x4]
	mov [ebp-0x24], eax
	mov esi, [bg_numAmmoTypes]
	test esi, esi
	jnz _Z23BG_FillInAllWeaponItemsv_20
	xor eax, eax
	xor edx, edx
_Z23BG_FillInAllWeaponItemsv_80:
	mov ecx, [ebp-0x24]
	mov [eax*4+bg_weapAmmoTypes], ecx
	mov [ecx+0x328], edx
	lea eax, [esi+0x1]
	mov [bg_numAmmoTypes], eax
_Z23BG_FillInAllWeaponItemsv_140:
	mov eax, [ebp-0x30]
	call _Z25BG_SetupSharedAmmoIndexesj
	mov ebx, [ebp-0x34]
	mov ebx, [ebx]
	mov [ebp-0x1c], ebx
	mov esi, [bg_numWeapClips]
	test esi, esi
	jnz _Z23BG_FillInAllWeaponItemsv_30
	xor eax, eax
	xor edx, edx
_Z23BG_FillInAllWeaponItemsv_120:
	mov ebx, [ebp-0x1c]
	mov [eax*4+bg_weapClips], ebx
	mov [ebx+0x330], edx
	lea eax, [esi+0x1]
	mov [bg_numWeapClips], eax
_Z23BG_FillInAllWeaponItemsv_130:
	xor edx, edx
	mov ecx, [ebp-0x30]
	mov ebx, bg_itemlist
	lea eax, [ebx+ecx*4]
_Z23BG_FillInAllWeaponItemsv_40:
	mov dword [eax], 0x1
	add edx, 0x1
	add eax, 0x200
	cmp edx, 0x10
	jnz _Z23BG_FillInAllWeaponItemsv_40
	add dword [ebp-0x30], 0x1
	mov eax, [ebp-0x34]
	mov edx, [ebp-0x30]
	cmp [ebp-0x2c], edx
	jnz _Z23BG_FillInAllWeaponItemsv_50
_Z23BG_FillInAllWeaponItemsv_10:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z23BG_FillInAllWeaponItemsv_20:
	mov ebx, [eax+0x324]
	mov [ebp-0x28], ebx
	xor edi, edi
	mov ebx, bg_weapAmmoTypes
_Z23BG_FillInAllWeaponItemsv_70:
	mov eax, [ebx]
	mov edx, [ebp-0x28]
	mov [esp+0x4], edx
	mov eax, [eax+0x324]
	mov [esp], eax
	call strcmp
	test eax, eax
	jz _Z23BG_FillInAllWeaponItemsv_60
	add edi, 0x1
	add ebx, 0x4
	cmp esi, edi
	jnz _Z23BG_FillInAllWeaponItemsv_70
	mov edx, esi
	mov eax, esi
	jmp _Z23BG_FillInAllWeaponItemsv_80
_Z23BG_FillInAllWeaponItemsv_30:
	mov edx, [ebx+0x32c]
	mov [ebp-0x20], edx
	xor edi, edi
	mov ebx, bg_weapClips
	mov ecx, edx
	jmp _Z23BG_FillInAllWeaponItemsv_90
_Z23BG_FillInAllWeaponItemsv_110:
	mov ecx, [ebp-0x20]
_Z23BG_FillInAllWeaponItemsv_90:
	mov eax, [ebx]
	mov [esp+0x4], ecx
	mov eax, [eax+0x32c]
	mov [esp], eax
	call strcmp
	test eax, eax
	jz _Z23BG_FillInAllWeaponItemsv_100
	add edi, 0x1
	add ebx, 0x4
	cmp edi, esi
	jnz _Z23BG_FillInAllWeaponItemsv_110
	mov edx, esi
	mov eax, esi
	jmp _Z23BG_FillInAllWeaponItemsv_120
_Z23BG_FillInAllWeaponItemsv_100:
	mov eax, [ebp-0x1c]
	mov [eax+0x330], edi
	jmp _Z23BG_FillInAllWeaponItemsv_130
_Z23BG_FillInAllWeaponItemsv_60:
	mov ecx, [ebp-0x24]
	mov [ecx+0x328], edi
	jmp _Z23BG_FillInAllWeaponItemsv_140
	nop


;BG_GetMaxPickupableAmmo(playerState_s const*, unsigned int)
_Z23BG_GetMaxPickupableAmmoPK13playerState_sj:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x42c
	mov esi, [ebp+0xc]
	lea eax, [ebp-0x218]
	mov dword [esp+0x8], 0x200
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call memset
	lea eax, [ebp-0x418]
	mov dword [esp+0x8], 0x200
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call memset
	mov edi, [esi*4+bg_weaponDefs]
	mov ebx, [edi+0x328]
	mov edx, [edi+0x330]
	mov eax, [edi+0x344]
	test eax, eax
	js _Z23BG_GetMaxPickupableAmmoPK13playerState_sj_10
	mov eax, [eax*4+bg_sharedAmmoCaps]
	mov eax, [eax+0x348]
	mov [ebp-0x41c], eax
	mov eax, [bg_lastParsedWeaponIndex]
	mov [ebp-0x420], eax
	test eax, eax
	jz _Z23BG_GetMaxPickupableAmmoPK13playerState_sj_20
	mov ebx, 0x1
	mov esi, bg_weaponDefs
	jmp _Z23BG_GetMaxPickupableAmmoPK13playerState_sj_30
_Z23BG_GetMaxPickupableAmmoPK13playerState_sj_40:
	add ebx, 0x1
	add esi, 0x4
	cmp ebx, [ebp-0x420]
	ja _Z23BG_GetMaxPickupableAmmoPK13playerState_sj_20
_Z23BG_GetMaxPickupableAmmoPK13playerState_sj_30:
	mov eax, ebx
	sar eax, 0x5
	mov ecx, ebx
	and ecx, 0x1f
	mov edx, 0x1
	shl edx, cl
	mov ecx, edx
	mov edx, [ebp+0x8]
	test [edx+eax*4+0x55c], ecx
	jz _Z23BG_GetMaxPickupableAmmoPK13playerState_sj_40
	mov edx, [esi+0x4]
	mov eax, [edx+0x344]
	cmp eax, [edi+0x344]
	jnz _Z23BG_GetMaxPickupableAmmoPK13playerState_sj_40
	mov eax, [edx+0x500]
	test eax, eax
	jz _Z23BG_GetMaxPickupableAmmoPK13playerState_sj_50
	mov eax, [edx+0x330]
	mov ecx, [ebp+eax*4-0x418]
	test ecx, ecx
	jnz _Z23BG_GetMaxPickupableAmmoPK13playerState_sj_40
	mov dword [ebp+eax*4-0x418], 0x1
	mov eax, [edx+0x330]
	mov edx, [ebp+0x8]
	mov edx, [edx+eax*4+0x35c]
	sub [ebp-0x41c], edx
	add ebx, 0x1
	add esi, 0x4
	cmp ebx, [ebp-0x420]
	jbe _Z23BG_GetMaxPickupableAmmoPK13playerState_sj_30
_Z23BG_GetMaxPickupableAmmoPK13playerState_sj_20:
	mov eax, [ebp-0x41c]
_Z23BG_GetMaxPickupableAmmoPK13playerState_sj_70:
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z23BG_GetMaxPickupableAmmoPK13playerState_sj_50:
	mov eax, [edx+0x328]
	mov ecx, [ebp+eax*4-0x218]
	test ecx, ecx
	jnz _Z23BG_GetMaxPickupableAmmoPK13playerState_sj_40
	mov dword [ebp+eax*4-0x218], 0x1
	mov eax, [edx+0x328]
	mov edx, [ebp+0x8]
	mov edx, [edx+eax*4+0x15c]
	sub [ebp-0x41c], edx
	jmp _Z23BG_GetMaxPickupableAmmoPK13playerState_sj_40
_Z23BG_GetMaxPickupableAmmoPK13playerState_sj_10:
	mov eax, [edi+0x500]
	test eax, eax
	jz _Z23BG_GetMaxPickupableAmmoPK13playerState_sj_60
	mov edi, [edi+0x338]
	mov [ebp-0x41c], edi
	mov eax, [ebp+0x8]
	mov eax, [eax+edx*4+0x35c]
	sub [ebp-0x41c], eax
	mov eax, [ebp-0x41c]
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z23BG_GetMaxPickupableAmmoPK13playerState_sj_60:
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], esi
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z19BG_GetAmmoPlayerMaxPK13playerState_sjj
	mov [ebp-0x41c], eax
	mov edx, [ebp+0x8]
	mov edx, [edx+ebx*4+0x15c]
	sub eax, edx
	mov [ebp-0x41c], eax
	jmp _Z23BG_GetMaxPickupableAmmoPK13playerState_sj_70
	nop


;BG_GetVerticalBobFactor(playerState_s const*, float, float, float)
_Z23BG_GetVerticalBobFactorPK13playerState_sfff:
	push ebp
	mov ebp, esp
	sub esp, 0x68
	mov edx, [ebp+0x8]
	movss xmm3, dword [ebp+0xc]
	movss xmm0, dword [ebp+0x10]
	mov eax, [edx+0x114]
	cmp eax, 0xb
	jz _Z23BG_GetVerticalBobFactorPK13playerState_sfff_10
	cmp eax, 0x28
	jz _Z23BG_GetVerticalBobFactorPK13playerState_sfff_20
	cmp word [edx+0xc], 0x0
	jns _Z23BG_GetVerticalBobFactorPK13playerState_sfff_30
	mov eax, bg_bobAmplitudeSprinting
	mov eax, [eax]
	movaps xmm2, xmm0
	mulss xmm2, [eax+0x10]
_Z23BG_GetVerticalBobFactorPK13playerState_sfff_40:
	movss xmm0, dword [ebp+0x14]
	minss xmm0, xmm2
	movaps xmm2, xmm0
	movaps xmm0, xmm3
	addss xmm0, xmm3
	movss [esp], xmm0
	movss [ebp-0x38], xmm2
	movss [ebp-0x48], xmm3
	call sinf
	fstp dword [ebp-0x4c]
	movss xmm1, dword [ebp-0x4c]
	movss xmm3, dword [ebp-0x48]
	mulss xmm3, [_float_4_00000000]
	cvtss2sd xmm0, xmm3
	addsd xmm0, [_double_1_57079633]
	movsd [esp], xmm0
	movss [ebp-0x28], xmm1
	call sin
	fstp qword [ebp-0x10]
	cvtsd2ss xmm0, [ebp-0x10]
	mulss xmm0, [_float_0_20000000]
	movss xmm1, dword [ebp-0x28]
	addss xmm1, xmm0
	mulss xmm1, [_float_0_75000000]
	movss xmm2, dword [ebp-0x38]
	mulss xmm2, xmm1
	movss [ebp-0x4c], xmm2
	fld dword [ebp-0x4c]
	leave
	ret
_Z23BG_GetVerticalBobFactorPK13playerState_sfff_30:
	mov eax, bg_bobAmplitudeStanding
	mov eax, [eax]
	movaps xmm2, xmm0
	mulss xmm2, [eax+0x10]
	jmp _Z23BG_GetVerticalBobFactorPK13playerState_sfff_40
_Z23BG_GetVerticalBobFactorPK13playerState_sfff_10:
	mov eax, bg_bobAmplitudeProne
	mov eax, [eax]
	movaps xmm2, xmm0
	mulss xmm2, [eax+0x10]
	jmp _Z23BG_GetVerticalBobFactorPK13playerState_sfff_40
_Z23BG_GetVerticalBobFactorPK13playerState_sfff_20:
	mov eax, bg_bobAmplitudeDucked
	mov eax, [eax]
	movaps xmm2, xmm0
	mulss xmm2, [eax+0x10]
	jmp _Z23BG_GetVerticalBobFactorPK13playerState_sfff_40


;BG_IsAimDownSightWeapon(unsigned int)
_Z23BG_IsAimDownSightWeaponj:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax*4+bg_weaponDefs]
	mov eax, [eax+0x4ec]
	pop ebp
	ret
	nop


;PM_AdjustAimSpreadScale(pmove_t*, pml_t*)
_Z23PM_AdjustAimSpreadScaleP7pmove_tP5pml_t:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x7c
	mov eax, [ebp+0x8]
	mov ebx, [eax]
	mov eax, [ebx+0xe8]
	mov esi, [eax*4+bg_weaponDefs]
	movss xmm2, dword [esi+0x468]
	pxor xmm5, xmm5
	ucomiss xmm2, xmm5
	jp _Z23PM_AdjustAimSpreadScaleP7pmove_tP5pml_t_10
	jz _Z23PM_AdjustAimSpreadScaleP7pmove_tP5pml_t_20
_Z23PM_AdjustAimSpreadScaleP7pmove_tP5pml_t_10:
	cvtsi2ss xmm3, dword [ebx+0xfc]
	movss xmm1, dword [esi+0x450]
	movaps xmm4, xmm3
	subss xmm4, xmm1
	movss xmm0, dword [esi+0x45c]
	subss xmm0, xmm1
	divss xmm4, xmm0
	mov eax, [ebx+0x70]
	mov [ebp-0x2c], eax
	cmp eax, 0x3ff
	jz _Z23PM_AdjustAimSpreadScaleP7pmove_tP5pml_t_30
_Z23PM_AdjustAimSpreadScaleP7pmove_tP5pml_t_140:
	mov eax, [ebx+0xb0]
	test al, 0x8
	jz _Z23PM_AdjustAimSpreadScaleP7pmove_tP5pml_t_40
	mulss xmm2, [esi+0x47c]
	movss xmm1, dword [esi+0x458]
	movaps xmm4, xmm3
	subss xmm4, xmm1
	movss xmm0, dword [esi+0x464]
	subss xmm0, xmm1
	divss xmm4, xmm0
_Z23PM_AdjustAimSpreadScaleP7pmove_tP5pml_t_130:
	cmp dword [ebx+0x100], 0x1
	jz _Z23PM_AdjustAimSpreadScaleP7pmove_tP5pml_t_50
_Z23PM_AdjustAimSpreadScaleP7pmove_tP5pml_t_150:
	mov eax, [ebp+0xc]
	movss xmm0, dword [eax+0x24]
	movss [ebp-0x1c], xmm0
	mulss xmm2, xmm0
	movss [ebp-0x20], xmm2
	movss xmm0, dword [_float_1_00000000]
	ucomiss xmm0, [ebx+0xf4]
	jnz _Z23PM_AdjustAimSpreadScaleP7pmove_tP5pml_t_60
	jp _Z23PM_AdjustAimSpreadScaleP7pmove_tP5pml_t_60
	movaps xmm0, xmm2
	mulss xmm0, [_float__255_00000000]
	jmp _Z23PM_AdjustAimSpreadScaleP7pmove_tP5pml_t_70
_Z23PM_AdjustAimSpreadScaleP7pmove_tP5pml_t_20:
	movss xmm4, dword [_float_1_00000000]
	movss xmm0, dword [_float__255_00000000]
_Z23PM_AdjustAimSpreadScaleP7pmove_tP5pml_t_70:
	addss xmm0, [ebx+0x628]
	movss [ebx+0x628], xmm0
_Z23PM_AdjustAimSpreadScaleP7pmove_tP5pml_t_220:
	cmp dword [ebx+0x100], 0x1
	jz _Z23PM_AdjustAimSpreadScaleP7pmove_tP5pml_t_80
_Z23PM_AdjustAimSpreadScaleP7pmove_tP5pml_t_110:
	movss xmm0, dword [ebx+0x628]
	ucomiss xmm5, xmm0
	ja _Z23PM_AdjustAimSpreadScaleP7pmove_tP5pml_t_90
_Z23PM_AdjustAimSpreadScaleP7pmove_tP5pml_t_120:
	ucomiss xmm0, [_float_255_00000000]
	jbe _Z23PM_AdjustAimSpreadScaleP7pmove_tP5pml_t_100
	mov dword [ebx+0x628], 0x437f0000
_Z23PM_AdjustAimSpreadScaleP7pmove_tP5pml_t_100:
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z23PM_AdjustAimSpreadScaleP7pmove_tP5pml_t_80:
	movaps xmm0, xmm4
	mulss xmm0, [ebx+0x628]
	ucomiss xmm0, [_float_255_00000000]
	jae _Z23PM_AdjustAimSpreadScaleP7pmove_tP5pml_t_110
	jp _Z23PM_AdjustAimSpreadScaleP7pmove_tP5pml_t_110
	mov dword [ebx+0x100], 0x0
	movss [ebx+0x628], xmm0
	ucomiss xmm5, xmm0
	jbe _Z23PM_AdjustAimSpreadScaleP7pmove_tP5pml_t_120
_Z23PM_AdjustAimSpreadScaleP7pmove_tP5pml_t_90:
	mov dword [ebx+0x628], 0x0
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z23PM_AdjustAimSpreadScaleP7pmove_tP5pml_t_40:
	test al, 0x4
	jz _Z23PM_AdjustAimSpreadScaleP7pmove_tP5pml_t_130
	mulss xmm2, [esi+0x478]
	movss xmm1, dword [esi+0x454]
	movaps xmm4, xmm3
	subss xmm4, xmm1
	movss xmm0, dword [esi+0x460]
	subss xmm0, xmm1
	divss xmm4, xmm0
	jmp _Z23PM_AdjustAimSpreadScaleP7pmove_tP5pml_t_130
_Z23PM_AdjustAimSpreadScaleP7pmove_tP5pml_t_30:
	cmp dword [ebx+0x4], 0x1
	jz _Z23PM_AdjustAimSpreadScaleP7pmove_tP5pml_t_140
	mulss xmm2, [_float_0_50000000]
	cmp dword [ebx+0x100], 0x1
	jnz _Z23PM_AdjustAimSpreadScaleP7pmove_tP5pml_t_150
_Z23PM_AdjustAimSpreadScaleP7pmove_tP5pml_t_50:
	movaps xmm0, xmm2
	mov eax, [ebp+0xc]
	mulss xmm0, [eax+0x24]
	divss xmm0, xmm4
	mulss xmm0, [_float__255_00000000]
	jmp _Z23PM_AdjustAimSpreadScaleP7pmove_tP5pml_t_70
_Z23PM_AdjustAimSpreadScaleP7pmove_tP5pml_t_60:
	movss xmm0, dword [esi+0x470]
	movss [ebp-0x28], xmm0
	ucomiss xmm0, xmm5
	jnz _Z23PM_AdjustAimSpreadScaleP7pmove_tP5pml_t_160
	jp _Z23PM_AdjustAimSpreadScaleP7pmove_tP5pml_t_160
	movaps xmm3, xmm5
_Z23PM_AdjustAimSpreadScaleP7pmove_tP5pml_t_240:
	movss xmm2, dword [esi+0x474]
	ucomiss xmm2, xmm5
	jp _Z23PM_AdjustAimSpreadScaleP7pmove_tP5pml_t_170
	jz _Z23PM_AdjustAimSpreadScaleP7pmove_tP5pml_t_180
_Z23PM_AdjustAimSpreadScaleP7pmove_tP5pml_t_170:
	mov eax, [ebp+0x8]
	cmp word [eax+0x1a], 0x0
	jnz _Z23PM_AdjustAimSpreadScaleP7pmove_tP5pml_t_190
_Z23PM_AdjustAimSpreadScaleP7pmove_tP5pml_t_180:
	cmp dword [ebp-0x2c], 0x3ff
	jz _Z23PM_AdjustAimSpreadScaleP7pmove_tP5pml_t_200
_Z23PM_AdjustAimSpreadScaleP7pmove_tP5pml_t_250:
	movss xmm0, dword [ebp-0x1c]
	mulss xmm0, xmm3
	ucomiss xmm0, xmm5
	jbe _Z23PM_AdjustAimSpreadScaleP7pmove_tP5pml_t_210
	mulss xmm0, [_float_255_00000000]
	addss xmm0, [ebx+0x628]
	movss [ebx+0x628], xmm0
	jmp _Z23PM_AdjustAimSpreadScaleP7pmove_tP5pml_t_220
_Z23PM_AdjustAimSpreadScaleP7pmove_tP5pml_t_160:
	mov edi, [ebp+0x8]
	movaps xmm3, xmm5
	mov dword [ebp-0x24], 0x2
_Z23PM_AdjustAimSpreadScaleP7pmove_tP5pml_t_230:
	cvtsi2ss xmm0, dword [edi+0xc]
	mulss xmm0, [_float_0_00549316]
	cvtsi2ss xmm1, dword [edi+0x2c]
	mulss xmm1, [_float_0_00549316]
	subss xmm0, xmm1
	mulss xmm0, [_float_0_00277778]
	movaps xmm1, xmm0
	addss xmm1, [_float_0_50000000]
	movss [esp], xmm1
	movss [ebp-0x48], xmm0
	movss [ebp-0x58], xmm3
	movss [ebp-0x68], xmm4
	movss [ebp-0x78], xmm5
	call floorf
	fstp dword [ebp-0x30]
	movss xmm0, dword [ebp-0x48]
	subss xmm0, [ebp-0x30]
	mulss xmm0, [_float_360_00000000]
	andps xmm0, [_data16_7fffffff]
	mulss xmm0, [_float_0_01000000]
	mulss xmm0, [ebp-0x28]
	divss xmm0, dword [ebp-0x1c]
	movss xmm3, dword [ebp-0x58]
	addss xmm3, xmm0
	add edi, 0x4
	sub dword [ebp-0x24], 0x1
	movss xmm4, dword [ebp-0x68]
	movss xmm5, dword [ebp-0x78]
	jnz _Z23PM_AdjustAimSpreadScaleP7pmove_tP5pml_t_230
	jmp _Z23PM_AdjustAimSpreadScaleP7pmove_tP5pml_t_240
_Z23PM_AdjustAimSpreadScaleP7pmove_tP5pml_t_200:
	cmp dword [ebx+0x4], 0x1
	jz _Z23PM_AdjustAimSpreadScaleP7pmove_tP5pml_t_250
	mov eax, 0x2
	movss xmm0, dword [_float_1_27999997]
_Z23PM_AdjustAimSpreadScaleP7pmove_tP5pml_t_260:
	addss xmm3, xmm0
	sub eax, 0x1
	jnz _Z23PM_AdjustAimSpreadScaleP7pmove_tP5pml_t_260
	jmp _Z23PM_AdjustAimSpreadScaleP7pmove_tP5pml_t_250
_Z23PM_AdjustAimSpreadScaleP7pmove_tP5pml_t_190:
	movss xmm1, dword [ebx+0x28]
	movss xmm0, dword [ebx+0x2c]
	mulss xmm1, xmm1
	mulss xmm0, xmm0
	addss xmm1, xmm0
	mov eax, bg_aimSpreadMoveSpeedThreshold
	mov eax, [eax]
	movss xmm0, dword [eax+0xc]
	mulss xmm0, xmm0
	ucomiss xmm1, xmm0
	jbe _Z23PM_AdjustAimSpreadScaleP7pmove_tP5pml_t_180
	sqrtss xmm0, xmm1
	mulss xmm2, xmm0
	cvtsi2ss xmm0, dword [ebx+0x60]
	divss xmm2, xmm0
	addss xmm3, xmm2
	jmp _Z23PM_AdjustAimSpreadScaleP7pmove_tP5pml_t_180
_Z23PM_AdjustAimSpreadScaleP7pmove_tP5pml_t_210:
	movss xmm0, dword [ebp-0x20]
	mulss xmm0, [_float__255_00000000]
	jmp _Z23PM_AdjustAimSpreadScaleP7pmove_tP5pml_t_70


;BG_CalculateWeaponAngles(weaponState_t*, float*)
_Z24BG_CalculateWeaponAnglesP13weaponState_tPf:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x10c
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov ebx, [ebp+0xc]
	mov dword [ebx], 0x0
	add ebx, 0x4
	mov [ebp-0x60], ebx
	mov edi, [ebp+0xc]
	mov dword [edi+0x4], 0x0
	add edi, 0x8
	mov [ebp-0x64], edi
	mov edx, [ebp+0xc]
	mov dword [edx+0x8], 0x0
	movss xmm0, dword [eax+0x5c]
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jp _Z24BG_CalculateWeaponAnglesP13weaponState_tPf_10
	jnz _Z24BG_CalculateWeaponAnglesP13weaponState_tPf_10
_Z24BG_CalculateWeaponAnglesP13weaponState_tPf_790:
	mov ebx, [ebp+0x8]
	mov edx, [ebx]
	test byte [edx+0x10], 0x2
	jz _Z24BG_CalculateWeaponAnglesP13weaponState_tPf_20
	mov eax, [edx+0xe0]
_Z24BG_CalculateWeaponAnglesP13weaponState_tPf_700:
	mov eax, [eax*4+bg_weaponDefs]
	mov ecx, [eax+0x4ec]
	test ecx, ecx
	jz _Z24BG_CalculateWeaponAnglesP13weaponState_tPf_30
	movss xmm0, dword [edx+0xf4]
	mulss xmm0, [eax+0x6cc]
	mov edi, [ebp+0xc]
	addss xmm0, [edi]
	movss [edi], xmm0
	mov eax, [ebp+0x8]
	mov edx, [eax]
_Z24BG_CalculateWeaponAnglesP13weaponState_tPf_30:
	test byte [edx+0x10], 0x2
	jz _Z24BG_CalculateWeaponAnglesP13weaponState_tPf_40
	mov eax, [edx+0xe0]
	mov esi, [eax*4+bg_weaponDefs]
	mov ecx, [edx+0xb0]
	mov eax, ecx
	shr eax, 0x3
	and al, 0x1
	jz _Z24BG_CalculateWeaponAnglesP13weaponState_tPf_50
_Z24BG_CalculateWeaponAnglesP13weaponState_tPf_670:
	movss xmm3, dword [esi+0x2b8]
_Z24BG_CalculateWeaponAnglesP13weaponState_tPf_690:
	mov ebx, [ebp+0x8]
	movss xmm0, dword [ebx+0x4]
	ucomiss xmm0, xmm3
	jbe _Z24BG_CalculateWeaponAnglesP13weaponState_tPf_60
	cmp dword [edx+0xec], 0x7
	jz _Z24BG_CalculateWeaponAnglesP13weaponState_tPf_60
	movaps xmm1, xmm0
	subss xmm1, xmm3
	cvtsi2ss xmm0, dword [edx+0x60]
	subss xmm0, xmm3
	divss xmm1, xmm0
	pxor xmm0, xmm0
	subss xmm0, xmm1
	pxor xmm2, xmm2
	ucomiss xmm0, xmm2
	jb _Z24BG_CalculateWeaponAnglesP13weaponState_tPf_70
	pxor xmm1, xmm1
	movss xmm0, dword [_float__1_00000000]
_Z24BG_CalculateWeaponAnglesP13weaponState_tPf_870:
	pxor xmm2, xmm2
	cmpss xmm2, xmm0, 0x6
	movaps xmm0, xmm2
	movaps xmm2, xmm1
	andps xmm2, xmm0
	movss xmm1, dword [_float_1_00000000]
	andnps xmm0, xmm1
	movaps xmm1, xmm0
	orps xmm1, xmm2
	test al, al
	jnz _Z24BG_CalculateWeaponAnglesP13weaponState_tPf_80
	and cl, 0x4
	jz _Z24BG_CalculateWeaponAnglesP13weaponState_tPf_90
	lea eax, [esi+0x264]
	movaps xmm0, xmm1
	mulss xmm0, [esi+0x264]
	jmp _Z24BG_CalculateWeaponAnglesP13weaponState_tPf_100
_Z24BG_CalculateWeaponAnglesP13weaponState_tPf_60:
	mov dword [ebp-0x24], 0x0
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
_Z24BG_CalculateWeaponAnglesP13weaponState_tPf_840:
	movss xmm1, dword [edx+0xf4]
	pxor xmm0, xmm0
	ucomiss xmm1, xmm0
	jp _Z24BG_CalculateWeaponAnglesP13weaponState_tPf_110
	jz _Z24BG_CalculateWeaponAnglesP13weaponState_tPf_120
_Z24BG_CalculateWeaponAnglesP13weaponState_tPf_110:
	movss xmm0, dword [_float_1_00000000]
	subss xmm0, xmm1
	movaps xmm1, xmm0
	mulss xmm1, [ebp-0x24]
	movss [ebp-0x24], xmm1
	movaps xmm1, xmm0
	mulss xmm1, [ebp-0x20]
	movss [ebp-0x20], xmm1
	mulss xmm0, [ebp-0x1c]
	movss [ebp-0x1c], xmm0
_Z24BG_CalculateWeaponAnglesP13weaponState_tPf_120:
	mov eax, [ebp+0x8]
	mov ebx, 0x1
	movss xmm6, dword [_float_0_10000000]
	movss xmm5, dword [_float__0_10000000]
	movss xmm4, dword [_float_11_00000000]
_Z24BG_CalculateWeaponAnglesP13weaponState_tPf_180:
	lea ecx, [eax+0xc]
	movss xmm3, dword [eax+0xc]
	movss xmm2, dword [ebp+ebx*4-0x28]
	ucomiss xmm3, xmm2
	jp _Z24BG_CalculateWeaponAnglesP13weaponState_tPf_130
	jz _Z24BG_CalculateWeaponAnglesP13weaponState_tPf_140
_Z24BG_CalculateWeaponAnglesP13weaponState_tPf_130:
	movss xmm0, dword [edx+0x118]
	ucomiss xmm0, xmm4
	jnz _Z24BG_CalculateWeaponAnglesP13weaponState_tPf_150
	jp _Z24BG_CalculateWeaponAnglesP13weaponState_tPf_150
	movaps xmm1, xmm2
	subss xmm1, xmm3
	mov edi, [ebp+0x8]
	mulss xmm1, [edi+0x8]
	mulss xmm1, [esi+0x2ac]
_Z24BG_CalculateWeaponAnglesP13weaponState_tPf_300:
	ucomiss xmm2, xmm3
	jbe _Z24BG_CalculateWeaponAnglesP13weaponState_tPf_160
	mov edi, [ebp+0x8]
	movss xmm0, dword [edi+0x8]
	mulss xmm0, xmm6
	maxss xmm0, xmm1
	addss xmm0, xmm3
	movss [ecx], xmm0
	ucomiss xmm0, xmm2
	ja _Z24BG_CalculateWeaponAnglesP13weaponState_tPf_170
_Z24BG_CalculateWeaponAnglesP13weaponState_tPf_140:
	add ebx, 0x1
	add eax, 0x4
	cmp ebx, 0x4
	jnz _Z24BG_CalculateWeaponAnglesP13weaponState_tPf_180
_Z24BG_CalculateWeaponAnglesP13weaponState_tPf_290:
	movss xmm1, dword [edx+0xf4]
	pxor xmm0, xmm0
	ucomiss xmm1, xmm0
	jp _Z24BG_CalculateWeaponAnglesP13weaponState_tPf_190
	jz _Z24BG_CalculateWeaponAnglesP13weaponState_tPf_200
_Z24BG_CalculateWeaponAnglesP13weaponState_tPf_190:
	ucomiss xmm1, [_float_0_50000000]
	jb _Z24BG_CalculateWeaponAnglesP13weaponState_tPf_210
_Z24BG_CalculateWeaponAnglesP13weaponState_tPf_710:
	test byte [edx+0x10], 0x2
	jz _Z24BG_CalculateWeaponAnglesP13weaponState_tPf_220
	mov eax, [edx+0xe0]
_Z24BG_CalculateWeaponAnglesP13weaponState_tPf_660:
	mov ecx, [eax*4+bg_weaponDefs]
	mov eax, [ecx+0x4ec]
	test eax, eax
	jz _Z24BG_CalculateWeaponAnglesP13weaponState_tPf_230
	movss xmm0, dword [edx+0xf4]
	movss xmm1, dword [ecx+0x490]
	movss xmm5, dword [ecx+0x48c]
	subss xmm5, xmm1
	mulss xmm5, xmm0
	addss xmm5, xmm1
	movss xmm1, dword [ecx+0x498]
	movss xmm3, dword [ecx+0x494]
	subss xmm3, xmm1
	mulss xmm3, xmm0
	addss xmm3, xmm1
_Z24BG_CalculateWeaponAnglesP13weaponState_tPf_650:
	mov eax, [edx+0xb0]
	test al, 0x8
	jz _Z24BG_CalculateWeaponAnglesP13weaponState_tPf_240
	movss xmm4, dword [ecx+0x4a0]
_Z24BG_CalculateWeaponAnglesP13weaponState_tPf_630:
	mov eax, [ecx+0x438]
	test eax, eax
	jz _Z24BG_CalculateWeaponAnglesP13weaponState_tPf_250
	pxor xmm1, xmm1
	ucomiss xmm1, [edx+0xf4]
	jz _Z24BG_CalculateWeaponAnglesP13weaponState_tPf_260
_Z24BG_CalculateWeaponAnglesP13weaponState_tPf_310:
	mov edi, [ebp+0x8]
	movss xmm1, dword [edi+0x8]
	mov ebx, edi
	mulss xmm5, [ebx+0x18]
	movss [ebp-0x2c], xmm5
	mov edi, [ecx+0x438]
	test edi, edi
	jz _Z24BG_CalculateWeaponAnglesP13weaponState_tPf_270
_Z24BG_CalculateWeaponAnglesP13weaponState_tPf_330:
	movss xmm0, dword [_float_1_00000000]
	subss xmm0, [edx+0xf4]
	mulss xmm0, xmm5
	movss [ebp-0x2c], xmm0
	mov edi, [ebp+0x8]
	jmp _Z24BG_CalculateWeaponAnglesP13weaponState_tPf_280
_Z24BG_CalculateWeaponAnglesP13weaponState_tPf_160:
	mov edi, [ebp+0x8]
	movss xmm0, dword [edi+0x8]
	mulss xmm0, xmm5
	minss xmm0, xmm1
	addss xmm0, xmm3
	maxss xmm2, xmm0
_Z24BG_CalculateWeaponAnglesP13weaponState_tPf_170:
	movss [ecx], xmm2
	add ebx, 0x1
	add eax, 0x4
	cmp ebx, 0x4
	jnz _Z24BG_CalculateWeaponAnglesP13weaponState_tPf_180
	jmp _Z24BG_CalculateWeaponAnglesP13weaponState_tPf_290
_Z24BG_CalculateWeaponAnglesP13weaponState_tPf_150:
	movaps xmm1, xmm2
	subss xmm1, xmm3
	mov edi, [ebp+0x8]
	mulss xmm1, [edi+0x8]
	mulss xmm1, [esi+0x2a8]
	jmp _Z24BG_CalculateWeaponAnglesP13weaponState_tPf_300
_Z24BG_CalculateWeaponAnglesP13weaponState_tPf_260:
	jp _Z24BG_CalculateWeaponAnglesP13weaponState_tPf_310
_Z24BG_CalculateWeaponAnglesP13weaponState_tPf_250:
	mov eax, [ebp+0x8]
	movss xmm2, dword [eax+0x18]
	ucomiss xmm4, xmm2
	jp _Z24BG_CalculateWeaponAnglesP13weaponState_tPf_320
	jnz _Z24BG_CalculateWeaponAnglesP13weaponState_tPf_320
	movss xmm1, dword [eax+0x8]
	mov ebx, eax
_Z24BG_CalculateWeaponAnglesP13weaponState_tPf_740:
	mulss xmm5, [ebx+0x18]
	movss [ebp-0x2c], xmm5
	mov edi, [ecx+0x438]
	test edi, edi
	jnz _Z24BG_CalculateWeaponAnglesP13weaponState_tPf_330
_Z24BG_CalculateWeaponAnglesP13weaponState_tPf_270:
	mov edi, ebx
_Z24BG_CalculateWeaponAnglesP13weaponState_tPf_280:
	mov edx, [edi+0x50]
	mulss xmm1, [_float_1000_00000000]
	mulss xmm3, xmm1
	cvttss2si eax, xmm3
	add [edx], eax
	mov eax, [edi+0x50]
	cvtsi2ss xmm0, dword [eax]
	mulss xmm0, [_float_0_00050000]
	movss [esp], xmm0
	call sinf
	fstp dword [ebp-0xfc]
	movss xmm0, dword [ebp-0xfc]
	mulss xmm0, [ebp-0x2c]
	mulss xmm0, [_float_0_01000000]
	mov eax, [ebp-0x64]
	addss xmm0, [eax]
	movss [eax], xmm0
	mov eax, [edi+0x50]
	cvtsi2ss xmm0, dword [eax]
	mulss xmm0, [_float_0_00070000]
	movss [esp], xmm0
	call sinf
	fstp dword [ebp-0xfc]
	movss xmm0, dword [ebp-0xfc]
	mulss xmm0, [ebp-0x2c]
	mulss xmm0, [_float_0_01000000]
	mov edx, [ebp-0x60]
	addss xmm0, [edx]
	movss [edx], xmm0
	mov eax, [edi+0x50]
	cvtsi2ss xmm0, dword [eax]
	mulss xmm0, [_float_0_00100000]
	movss [esp], xmm0
	call sinf
	fstp dword [ebp-0x48]
	movss xmm0, dword [ebp-0x2c]
	mulss xmm0, [ebp-0x48]
	movss xmm1, dword [_float_0_01000000]
	mulss xmm1, xmm0
	movss [ebp-0x2c], xmm1
	mov eax, [ebp+0xc]
	addss xmm1, [eax]
	movss [eax], xmm1
	mov ebx, [edi]
	test byte [ebx+0x10], 0x2
	jz _Z24BG_CalculateWeaponAnglesP13weaponState_tPf_340
	mov eax, [ebx+0xe0]
_Z24BG_CalculateWeaponAnglesP13weaponState_tPf_780:
	mov edi, [eax*4+bg_weaponDefs]
	movzx eax, byte [ebx+0x8]
	cvtsi2ss xmm0, eax
	divss xmm0, dword [_float_255_00000000]
	cvtss2sd xmm0, xmm0
	mulsd xmm0, [_double_3_14159265]
	addsd xmm0, xmm0
	movsd xmm1, qword [_double_6_28318531]
	addsd xmm0, xmm1
	cvtsd2ss xmm0, xmm0
	cvtss2sd xmm0, xmm0
	addsd xmm0, [_double_0_78539816]
	addsd xmm0, xmm1
	cvtsd2ss xmm0, xmm0
	movss [ebp-0x40], xmm0
	movss xmm0, dword [_float_0_16000000]
	movss [ebp-0x44], xmm0
	mov eax, [ebp+0x8]
	mulss xmm0, [eax+0x4]
	movss [ebp-0x44], xmm0
	mov esi, [ebx+0x114]
	cmp esi, 0xb
	jz _Z24BG_CalculateWeaponAnglesP13weaponState_tPf_350
	cmp esi, 0x28
	jz _Z24BG_CalculateWeaponAnglesP13weaponState_tPf_360
	cmp word [ebx+0xc], 0x0
	jns _Z24BG_CalculateWeaponAnglesP13weaponState_tPf_370
	mov eax, bg_bobAmplitudeSprinting
	mov eax, [eax]
	movss xmm2, dword [ebp-0x44]
	mulss xmm2, [eax+0x10]
_Z24BG_CalculateWeaponAnglesP13weaponState_tPf_810:
	movss xmm1, dword [_float_10_00000000]
	movaps xmm0, xmm1
	cmpss xmm0, xmm2, 0x5
	andps xmm2, xmm0
	andnps xmm0, xmm1
	orps xmm0, xmm2
	movss [ebp-0x30], xmm0
	movss xmm0, dword [ebp-0x40]
	addss xmm0, xmm0
	movss [esp], xmm0
	call sinf
	fstp dword [ebp-0xfc]
	movss xmm1, dword [ebp-0xfc]
	movss xmm0, dword [ebp-0x40]
	mulss xmm0, [_float_4_00000000]
	cvtss2sd xmm0, xmm0
	addsd xmm0, [_double_1_57079633]
	movsd [esp], xmm0
	movss [ebp-0x98], xmm1
	call sin
	fstp qword [ebp-0x50]
	cvtsd2ss xmm0, [ebp-0x50]
	mulss xmm0, [_float_0_20000000]
	movss xmm1, dword [ebp-0x98]
	addss xmm1, xmm0
	mulss xmm1, [_float_0_75000000]
	mulss xmm1, [ebp-0x30]
	movss [ebp-0x30], xmm1
	xor dword [ebp-0x30], 0x80000000
	cmp esi, 0xb
	jz _Z24BG_CalculateWeaponAnglesP13weaponState_tPf_380
	cmp esi, 0x28
	jz _Z24BG_CalculateWeaponAnglesP13weaponState_tPf_390
	cmp word [ebx+0xc], 0x0
	jns _Z24BG_CalculateWeaponAnglesP13weaponState_tPf_400
	mov eax, bg_bobAmplitudeSprinting
	mov eax, [eax]
	movss xmm2, dword [ebp-0x44]
	mulss xmm2, [eax+0xc]
_Z24BG_CalculateWeaponAnglesP13weaponState_tPf_820:
	movss xmm1, dword [_float_10_00000000]
	movaps xmm0, xmm1
	cmpss xmm0, xmm2, 0x5
	andps xmm2, xmm0
	movaps xmm4, xmm0
	andnps xmm4, xmm1
	orps xmm4, xmm2
	movss xmm0, dword [ebp-0x40]
	movss [esp], xmm0
	movss [ebp-0xc8], xmm4
	call sinf
	fstp dword [ebp-0x54]
	movss xmm4, dword [ebp-0xc8]
	mulss xmm4, [ebp-0x54]
	xorps xmm4, [_data16_80000000]
	cvtss2sd xmm0, [ebp-0x40]
	subsd xmm0, [_double_0_47123892]
	cvtsd2ss xmm5, xmm0
	movss xmm2, dword [ebp-0x44]
	mulss xmm2, [_float_1_50000000]
	cmp esi, 0xb
	jz _Z24BG_CalculateWeaponAnglesP13weaponState_tPf_410
	cmp esi, 0x28
	jz _Z24BG_CalculateWeaponAnglesP13weaponState_tPf_420
	cmp word [ebx+0xc], 0x0
	jns _Z24BG_CalculateWeaponAnglesP13weaponState_tPf_430
	mov eax, bg_bobAmplitudeSprinting
	mov eax, [eax]
	movaps xmm3, xmm2
	mulss xmm3, [eax+0xc]
_Z24BG_CalculateWeaponAnglesP13weaponState_tPf_800:
	movss xmm1, dword [_float_10_00000000]
	movaps xmm0, xmm1
	cmpss xmm0, xmm3, 0x5
	movaps xmm2, xmm3
	andps xmm2, xmm0
	movaps xmm3, xmm0
	andnps xmm3, xmm1
	orps xmm3, xmm2
	movss [esp], xmm5
	movss [ebp-0xb8], xmm3
	movss [ebp-0xc8], xmm4
	call sinf
	fstp dword [ebp-0xfc]
	movss xmm2, dword [ebp-0xfc]
	movss xmm3, dword [ebp-0xb8]
	mulss xmm2, xmm3
	pxor xmm0, xmm0
	subss xmm0, xmm2
	pxor xmm1, xmm1
	cmpss xmm1, xmm0, 0x2
	andps xmm2, xmm1
	pxor xmm0, xmm0
	orps xmm2, xmm0
	movss xmm3, dword [ebx+0xf4]
	movss xmm4, dword [ebp-0xc8]
	ucomiss xmm3, xmm0
	jp _Z24BG_CalculateWeaponAnglesP13weaponState_tPf_440
	jz _Z24BG_CalculateWeaponAnglesP13weaponState_tPf_450
_Z24BG_CalculateWeaponAnglesP13weaponState_tPf_440:
	movss xmm0, dword [_float_1_00000000]
	movaps xmm1, xmm0
	subss xmm1, [edi+0x448]
	mulss xmm1, xmm3
	subss xmm0, xmm1
	movss xmm1, dword [ebp-0x30]
	mulss xmm1, xmm0
	movss [ebp-0x30], xmm1
	mulss xmm4, xmm0
	mulss xmm2, xmm0
_Z24BG_CalculateWeaponAnglesP13weaponState_tPf_450:
	mov esi, [edi+0x438]
	test esi, esi
	jz _Z24BG_CalculateWeaponAnglesP13weaponState_tPf_460
	movss xmm0, dword [_float_1_00000000]
	subss xmm0, xmm3
	movss xmm1, dword [ebp-0x30]
	mulss xmm1, xmm0
	movss [ebp-0x30], xmm1
	mulss xmm4, xmm0
	mulss xmm2, xmm0
	movaps xmm0, xmm1
_Z24BG_CalculateWeaponAnglesP13weaponState_tPf_750:
	mov eax, [ebp+0xc]
	addss xmm0, [eax]
	movss [eax], xmm0
	mov eax, [ebp-0x60]
	addss xmm4, [eax]
	movss [eax], xmm4
	mov edx, [ebp-0x64]
	addss xmm2, [edx]
	movss [edx], xmm2
	mov ebx, [ebp+0x8]
	mov ecx, [ebx+0x20]
	test ecx, ecx
	jz _Z24BG_CalculateWeaponAnglesP13weaponState_tPf_470
	mov edx, [ebx]
	test byte [edx+0x10], 0x2
	jz _Z24BG_CalculateWeaponAnglesP13weaponState_tPf_480
	mov eax, [edx+0xe0]
_Z24BG_CalculateWeaponAnglesP13weaponState_tPf_830:
	mov eax, [eax*4+bg_weaponDefs]
	movss xmm1, dword [edx+0xf4]
	movss xmm0, dword [_float_0_50000000]
	movaps xmm2, xmm1
	mulss xmm2, xmm0
	addss xmm2, xmm0
	movaps xmm3, xmm2
	mulss xmm3, [_float_100_00000000]
	movaps xmm4, xmm2
	mulss xmm4, [_float_400_00000000]
	pxor xmm0, xmm0
	ucomiss xmm1, xmm0
	jp _Z24BG_CalculateWeaponAnglesP13weaponState_tPf_490
	jz _Z24BG_CalculateWeaponAnglesP13weaponState_tPf_500
_Z24BG_CalculateWeaponAnglesP13weaponState_tPf_490:
	mov ebx, [eax+0x438]
	test ebx, ebx
	jnz _Z24BG_CalculateWeaponAnglesP13weaponState_tPf_510
_Z24BG_CalculateWeaponAnglesP13weaponState_tPf_500:
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x1c]
	sub eax, ecx
	cvtsi2ss xmm0, eax
	ucomiss xmm3, xmm0
	ja _Z24BG_CalculateWeaponAnglesP13weaponState_tPf_520
_Z24BG_CalculateWeaponAnglesP13weaponState_tPf_850:
	subss xmm0, xmm3
	divss xmm0, xmm4
	movss xmm1, dword [_float_1_00000000]
	subss xmm1, xmm0
	movaps xmm0, xmm1
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jbe _Z24BG_CalculateWeaponAnglesP13weaponState_tPf_530
	movss xmm1, dword [_float_1_00000000]
	subss xmm1, xmm0
	movss [esp], xmm1
	movss [ebp-0xa8], xmm2
	call _Z15GetLeanFractionf
	fstp dword [ebp-0x3c]
	movss xmm1, dword [_float_1_00000000]
	subss xmm1, [ebp-0x3c]
	movss xmm2, dword [ebp-0xa8]
	mulss xmm1, xmm2
	movaps xmm0, xmm1
	mov eax, [ebp+0x8]
	mulss xmm0, [eax+0x24]
	movss xmm3, dword [_float_0_50000000]
	mulss xmm0, xmm3
	mov edx, [ebp+0xc]
	addss xmm0, [edx]
	movss [edx], xmm0
	movaps xmm2, xmm1
	mulss xmm2, [eax+0x28]
	mov ebx, [ebp-0x60]
	movss xmm0, dword [ebx]
	subss xmm0, xmm2
	movss [ebx], xmm0
	mulss xmm1, [eax+0x28]
	mulss xmm1, xmm3
	mov edi, [ebp-0x64]
	addss xmm1, [edi]
	movss [edi], xmm1
	mov edx, [eax]
_Z24BG_CalculateWeaponAnglesP13weaponState_tPf_530:
	test byte [edx+0x10], 0x2
	jnz _Z24BG_CalculateWeaponAnglesP13weaponState_tPf_540
_Z24BG_CalculateWeaponAnglesP13weaponState_tPf_760:
	mov eax, [edx+0xe8]
_Z24BG_CalculateWeaponAnglesP13weaponState_tPf_770:
	mov ebx, [eax*4+bg_weaponDefs]
	mov ecx, [ebx+0x4ec]
	test ecx, ecx
	jz _Z24BG_CalculateWeaponAnglesP13weaponState_tPf_550
	movss xmm1, dword [edx+0xf4]
	movss xmm0, dword [ebx+0x738]
	movss xmm2, dword [ebx+0x6f0]
	subss xmm2, xmm0
	mulss xmm2, xmm1
	addss xmm0, xmm2
	movss [ebp-0x34], xmm0
	movss xmm0, dword [ebx+0x73c]
	movss xmm7, dword [ebx+0x6f4]
	subss xmm7, xmm0
	mulss xmm7, xmm1
	addss xmm7, xmm0
	movss xmm0, dword [ebx+0x740]
	movss xmm6, dword [ebx+0x6f8]
	subss xmm6, xmm0
	mulss xmm6, xmm1
	addss xmm6, xmm0
	movss xmm0, dword [ebx+0x744]
	movss xmm5, dword [ebx+0x6fc]
	subss xmm5, xmm0
	mulss xmm5, xmm1
	addss xmm5, xmm0
	mov eax, [ebp+0x8]
	movss xmm4, dword [eax+0x8]
	pxor xmm0, xmm0
	ucomiss xmm4, xmm0
	jbe _Z24BG_CalculateWeaponAnglesP13weaponState_tPf_560
	mov edx, eax
	add eax, 0x38
	mov [ebp-0x6c], eax
	lea edi, [edx+0x2c]
	lea eax, [edx+0x3c]
	mov [ebp-0x70], eax
	add edx, 0x30
	mov [ebp-0x68], edx
	jmp _Z24BG_CalculateWeaponAnglesP13weaponState_tPf_570
_Z24BG_CalculateWeaponAnglesP13weaponState_tPf_600:
	subss xmm4, [_float_0_00500000]
	movss [ebp-0x38], xmm4
	movss xmm4, dword [_float_0_00500000]
_Z24BG_CalculateWeaponAnglesP13weaponState_tPf_610:
	movss xmm1, dword [ebx+0x4a4]
	movss [esp+0x4], xmm5
	movss [esp], xmm6
	movaps xmm3, xmm7
	movss xmm2, dword [ebp-0x34]
	movaps xmm0, xmm4
	mov edx, [ebp-0x6c]
	mov eax, edi
	movss [ebp-0xc8], xmm4
	movss [ebp-0xd8], xmm5
	movss [ebp-0xe8], xmm6
	movss [ebp-0xf8], xmm7
	call _Z48BG_CalculateWeaponPosition_GunRecoil_SingleAnglePfS_ffffff
	mov esi, eax
	movss xmm1, dword [ebx+0x4a8]
	movss xmm5, dword [ebp-0xd8]
	movss [esp+0x4], xmm5
	movss xmm6, dword [ebp-0xe8]
	movss [esp], xmm6
	movss xmm7, dword [ebp-0xf8]
	movaps xmm3, xmm7
	movss xmm2, dword [ebp-0x34]
	movss xmm4, dword [ebp-0xc8]
	movaps xmm0, xmm4
	mov edx, [ebp-0x70]
	mov eax, [ebp-0x68]
	call _Z48BG_CalculateWeaponPosition_GunRecoil_SingleAnglePfS_ffffff
	test eax, eax
	movss xmm5, dword [ebp-0xd8]
	movss xmm6, dword [ebp-0xe8]
	movss xmm7, dword [ebp-0xf8]
	jz _Z24BG_CalculateWeaponAnglesP13weaponState_tPf_580
	test esi, esi
	jnz _Z24BG_CalculateWeaponAnglesP13weaponState_tPf_590
_Z24BG_CalculateWeaponAnglesP13weaponState_tPf_580:
	movss xmm0, dword [ebp-0x38]
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jbe _Z24BG_CalculateWeaponAnglesP13weaponState_tPf_590
	movaps xmm4, xmm0
_Z24BG_CalculateWeaponAnglesP13weaponState_tPf_570:
	ucomiss xmm4, [_float_0_00500000]
	ja _Z24BG_CalculateWeaponAnglesP13weaponState_tPf_600
	mov dword [ebp-0x38], 0x0
	jmp _Z24BG_CalculateWeaponAnglesP13weaponState_tPf_610
_Z24BG_CalculateWeaponAnglesP13weaponState_tPf_240:
	test al, 0x4
	jz _Z24BG_CalculateWeaponAnglesP13weaponState_tPf_620
	movss xmm4, dword [ecx+0x49c]
	jmp _Z24BG_CalculateWeaponAnglesP13weaponState_tPf_630
_Z24BG_CalculateWeaponAnglesP13weaponState_tPf_230:
	movss xmm5, dword [ecx+0x490]
	pxor xmm0, xmm0
	ucomiss xmm5, xmm0
	jnz _Z24BG_CalculateWeaponAnglesP13weaponState_tPf_640
	jp _Z24BG_CalculateWeaponAnglesP13weaponState_tPf_640
	movss xmm5, dword [_float_80_00000000]
	movss xmm3, dword [_float_1_00000000]
	jmp _Z24BG_CalculateWeaponAnglesP13weaponState_tPf_650
_Z24BG_CalculateWeaponAnglesP13weaponState_tPf_220:
	mov eax, [edx+0xe8]
	jmp _Z24BG_CalculateWeaponAnglesP13weaponState_tPf_660
_Z24BG_CalculateWeaponAnglesP13weaponState_tPf_40:
	mov eax, [edx+0xe8]
	mov esi, [eax*4+bg_weaponDefs]
	mov ecx, [edx+0xb0]
	mov eax, ecx
	shr eax, 0x3
	and al, 0x1
	jnz _Z24BG_CalculateWeaponAnglesP13weaponState_tPf_670
_Z24BG_CalculateWeaponAnglesP13weaponState_tPf_50:
	test cl, 0x4
	jnz _Z24BG_CalculateWeaponAnglesP13weaponState_tPf_680
	movss xmm3, dword [esi+0x2b0]
	jmp _Z24BG_CalculateWeaponAnglesP13weaponState_tPf_690
_Z24BG_CalculateWeaponAnglesP13weaponState_tPf_20:
	mov eax, [edx+0xe8]
	jmp _Z24BG_CalculateWeaponAnglesP13weaponState_tPf_700
_Z24BG_CalculateWeaponAnglesP13weaponState_tPf_200:
	mov eax, [ebp+0x8]
	add eax, 0xc
	mov edi, [ebp+0xc]
	movss xmm0, dword [edi]
	mov edx, [ebp+0x8]
	addss xmm0, [edx+0xc]
	movss [edi], xmm0
	movss xmm0, dword [edi+0x4]
	addss xmm0, [eax+0x4]
	mov ebx, [ebp-0x60]
	movss [ebx], xmm0
	movss xmm0, dword [edi+0x8]
	addss xmm0, [eax+0x8]
	mov edi, [ebp-0x64]
	movss [edi], xmm0
	mov eax, [ebp+0x8]
	mov edx, [eax]
	jmp _Z24BG_CalculateWeaponAnglesP13weaponState_tPf_710
_Z24BG_CalculateWeaponAnglesP13weaponState_tPf_320:
	ucomiss xmm4, xmm2
	ja _Z24BG_CalculateWeaponAnglesP13weaponState_tPf_720
	mov ebx, [ebp+0x8]
	movss xmm1, dword [ebx+0x8]
	movaps xmm0, xmm1
	mulss xmm0, [_float_0_50000000]
	subss xmm2, xmm0
	movss [ebx+0x18], xmm2
	ucomiss xmm4, xmm2
	jbe _Z24BG_CalculateWeaponAnglesP13weaponState_tPf_730
	movss [ebx+0x18], xmm4
	mov ebx, [ebp+0x8]
	jmp _Z24BG_CalculateWeaponAnglesP13weaponState_tPf_740
_Z24BG_CalculateWeaponAnglesP13weaponState_tPf_210:
	jp _Z24BG_CalculateWeaponAnglesP13weaponState_tPf_710
	mulss xmm1, [_float__2_00000000]
	addss xmm1, [_float_1_00000000]
	mov eax, [ebp+0x8]
	add eax, 0xc
	movaps xmm0, xmm1
	mov edx, [ebp+0x8]
	mulss xmm0, [edx+0xc]
	mov ebx, [ebp+0xc]
	addss xmm0, [ebx]
	movss [ebx], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [eax+0x4]
	addss xmm0, [ebx+0x4]
	mov edi, [ebp-0x60]
	movss [edi], xmm0
	mulss xmm1, [eax+0x8]
	addss xmm1, [ebx+0x8]
	mov eax, [ebp-0x64]
	movss [eax], xmm1
	mov ebx, [ebp+0x8]
	mov edx, [ebx]
	jmp _Z24BG_CalculateWeaponAnglesP13weaponState_tPf_710
_Z24BG_CalculateWeaponAnglesP13weaponState_tPf_680:
	movss xmm3, dword [esi+0x2b4]
	jmp _Z24BG_CalculateWeaponAnglesP13weaponState_tPf_690
_Z24BG_CalculateWeaponAnglesP13weaponState_tPf_640:
	movss xmm3, dword [ecx+0x498]
	jmp _Z24BG_CalculateWeaponAnglesP13weaponState_tPf_650
_Z24BG_CalculateWeaponAnglesP13weaponState_tPf_620:
	movss xmm4, dword [_float_1_00000000]
	jmp _Z24BG_CalculateWeaponAnglesP13weaponState_tPf_630
_Z24BG_CalculateWeaponAnglesP13weaponState_tPf_590:
	mov ebx, [ebp+0x8]
_Z24BG_CalculateWeaponAnglesP13weaponState_tPf_860:
	mov edx, [ebp+0xc]
	movss xmm0, dword [edx]
	addss xmm0, [ebx+0x2c]
	movss [edx], xmm0
	mov eax, [ebp-0x60]
	movss xmm0, dword [eax]
	addss xmm0, [edi+0x4]
	movss [eax], xmm0
	mov edx, [ebp-0x64]
	movss xmm0, dword [edx]
	addss xmm0, [edi+0x8]
	movss [edx], xmm0
_Z24BG_CalculateWeaponAnglesP13weaponState_tPf_550:
	mov ebx, [ebp+0xc]
	movss xmm0, dword [ebx]
	mov edi, [ebp+0x8]
	subss xmm0, [edi+0x44]
	mulss xmm0, [_float_0_00277778]
	movss xmm2, dword [_float_0_50000000]
	movaps xmm1, xmm0
	addss xmm1, xmm2
	movss [esp], xmm1
	movss [ebp-0x88], xmm0
	movss [ebp-0xa8], xmm2
	call floorf
	fstp dword [ebp-0x58]
	movss xmm0, dword [ebp-0x88]
	subss xmm0, [ebp-0x58]
	mulss xmm0, [_float_360_00000000]
	movss [ebx], xmm0
	mov eax, [ebp-0x60]
	movss xmm0, dword [eax]
	subss xmm0, [edi+0x48]
	mulss xmm0, [_float_0_00277778]
	movss xmm2, dword [ebp-0xa8]
	addss xmm2, xmm0
	movss [esp], xmm2
	movss [ebp-0x88], xmm0
	call floorf
	fstp dword [ebp-0x5c]
	movss xmm0, dword [ebp-0x88]
	subss xmm0, [ebp-0x5c]
	mulss xmm0, [_float_360_00000000]
	mov edx, [ebp-0x60]
	movss [edx], xmm0
	add esp, 0x10c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z24BG_CalculateWeaponAnglesP13weaponState_tPf_460:
	movss xmm0, dword [ebp-0x30]
	jmp _Z24BG_CalculateWeaponAnglesP13weaponState_tPf_750
_Z24BG_CalculateWeaponAnglesP13weaponState_tPf_470:
	mov edx, [ebx]
	test byte [edx+0x10], 0x2
	jz _Z24BG_CalculateWeaponAnglesP13weaponState_tPf_760
_Z24BG_CalculateWeaponAnglesP13weaponState_tPf_540:
	mov eax, [edx+0xe0]
	jmp _Z24BG_CalculateWeaponAnglesP13weaponState_tPf_770
_Z24BG_CalculateWeaponAnglesP13weaponState_tPf_340:
	mov eax, [ebx+0xe8]
	jmp _Z24BG_CalculateWeaponAnglesP13weaponState_tPf_780
_Z24BG_CalculateWeaponAnglesP13weaponState_tPf_10:
	movss [esp], xmm0
	call _Z15GetLeanFractionf
	fstp dword [ebp-0xfc]
	movss xmm0, dword [ebp-0xfc]
	mulss xmm0, [_float__2_00000000]
	mov eax, [ebp+0xc]
	addss xmm0, [eax+0x8]
	movss [eax+0x8], xmm0
	jmp _Z24BG_CalculateWeaponAnglesP13weaponState_tPf_790
_Z24BG_CalculateWeaponAnglesP13weaponState_tPf_410:
	mov eax, bg_bobAmplitudeProne
	mov eax, [eax]
	movaps xmm3, xmm2
	mulss xmm3, [eax+0xc]
	jmp _Z24BG_CalculateWeaponAnglesP13weaponState_tPf_800
_Z24BG_CalculateWeaponAnglesP13weaponState_tPf_350:
	mov eax, bg_bobAmplitudeProne
	mov eax, [eax]
	movaps xmm2, xmm0
	mulss xmm2, [eax+0x10]
	jmp _Z24BG_CalculateWeaponAnglesP13weaponState_tPf_810
_Z24BG_CalculateWeaponAnglesP13weaponState_tPf_380:
	mov eax, bg_bobAmplitudeProne
	mov eax, [eax]
	movss xmm2, dword [ebp-0x44]
	mulss xmm2, [eax+0xc]
	jmp _Z24BG_CalculateWeaponAnglesP13weaponState_tPf_820
_Z24BG_CalculateWeaponAnglesP13weaponState_tPf_370:
	mov eax, bg_bobAmplitudeStanding
	mov eax, [eax]
	movss xmm2, dword [ebp-0x44]
	mulss xmm2, [eax+0x10]
	jmp _Z24BG_CalculateWeaponAnglesP13weaponState_tPf_810
_Z24BG_CalculateWeaponAnglesP13weaponState_tPf_400:
	mov eax, bg_bobAmplitudeStanding
	mov eax, [eax]
	movss xmm2, dword [ebp-0x44]
	mulss xmm2, [eax+0xc]
	jmp _Z24BG_CalculateWeaponAnglesP13weaponState_tPf_820
_Z24BG_CalculateWeaponAnglesP13weaponState_tPf_430:
	mov eax, bg_bobAmplitudeStanding
	mov eax, [eax]
	movaps xmm3, xmm2
	mulss xmm3, [eax+0xc]
	jmp _Z24BG_CalculateWeaponAnglesP13weaponState_tPf_800
_Z24BG_CalculateWeaponAnglesP13weaponState_tPf_480:
	mov eax, [edx+0xe8]
	jmp _Z24BG_CalculateWeaponAnglesP13weaponState_tPf_830
_Z24BG_CalculateWeaponAnglesP13weaponState_tPf_390:
	mov eax, bg_bobAmplitudeDucked
	mov eax, [eax]
	movss xmm2, dword [ebp-0x44]
	mulss xmm2, [eax+0xc]
	jmp _Z24BG_CalculateWeaponAnglesP13weaponState_tPf_820
_Z24BG_CalculateWeaponAnglesP13weaponState_tPf_420:
	mov eax, bg_bobAmplitudeDucked
	mov eax, [eax]
	movaps xmm3, xmm2
	mulss xmm3, [eax+0xc]
	jmp _Z24BG_CalculateWeaponAnglesP13weaponState_tPf_800
_Z24BG_CalculateWeaponAnglesP13weaponState_tPf_360:
	mov eax, bg_bobAmplitudeDucked
	mov eax, [eax]
	movss xmm2, dword [ebp-0x44]
	mulss xmm2, [eax+0x10]
	jmp _Z24BG_CalculateWeaponAnglesP13weaponState_tPf_810
_Z24BG_CalculateWeaponAnglesP13weaponState_tPf_720:
	movss xmm1, dword [eax+0x8]
	movaps xmm0, xmm1
	mulss xmm0, [_float_0_50000000]
	addss xmm0, xmm2
	movss [eax+0x18], xmm0
	ucomiss xmm0, xmm4
	jbe _Z24BG_CalculateWeaponAnglesP13weaponState_tPf_730
	movss [eax+0x18], xmm4
	mov ebx, [ebp+0x8]
	jmp _Z24BG_CalculateWeaponAnglesP13weaponState_tPf_740
_Z24BG_CalculateWeaponAnglesP13weaponState_tPf_80:
	lea eax, [esi+0x288]
	movaps xmm0, xmm1
	mulss xmm0, [esi+0x288]
_Z24BG_CalculateWeaponAnglesP13weaponState_tPf_100:
	movss [ebp-0x24], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [eax+0x4]
	movss [ebp-0x20], xmm0
	mulss xmm1, [eax+0x8]
	movss [ebp-0x1c], xmm1
	jmp _Z24BG_CalculateWeaponAnglesP13weaponState_tPf_840
_Z24BG_CalculateWeaponAnglesP13weaponState_tPf_510:
	mulss xmm1, [_float__0_75000000]
	addss xmm1, [_float_1_00000000]
	mulss xmm2, xmm1
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x1c]
	sub eax, ecx
	cvtsi2ss xmm0, eax
	ucomiss xmm3, xmm0
	jbe _Z24BG_CalculateWeaponAnglesP13weaponState_tPf_850
_Z24BG_CalculateWeaponAnglesP13weaponState_tPf_520:
	divss xmm0, xmm3
	movss [esp], xmm0
	movss [ebp-0xa8], xmm2
	call _Z15GetLeanFractionf
	fstp dword [ebp-0xfc]
	movss xmm1, dword [ebp-0xfc]
	movss xmm2, dword [ebp-0xa8]
	mulss xmm1, xmm2
	movaps xmm0, xmm1
	mulss xmm0, [ebx+0x24]
	movss xmm3, dword [_float_0_50000000]
	mulss xmm0, xmm3
	mov edi, [ebp+0xc]
	addss xmm0, [edi]
	movss [edi], xmm0
	movaps xmm2, xmm1
	mulss xmm2, [ebx+0x28]
	mov eax, [ebp-0x60]
	movss xmm0, dword [eax]
	subss xmm0, xmm2
	movss [eax], xmm0
	mulss xmm1, [ebx+0x28]
	mulss xmm1, xmm3
	mov edx, [ebp-0x64]
	addss xmm1, [edx]
	movss [edx], xmm1
	mov edx, [ebx]
	jmp _Z24BG_CalculateWeaponAnglesP13weaponState_tPf_530
_Z24BG_CalculateWeaponAnglesP13weaponState_tPf_730:
	mov ebx, [ebp+0x8]
	jmp _Z24BG_CalculateWeaponAnglesP13weaponState_tPf_740
_Z24BG_CalculateWeaponAnglesP13weaponState_tPf_560:
	lea edi, [eax+0x2c]
	mov ebx, eax
	jmp _Z24BG_CalculateWeaponAnglesP13weaponState_tPf_860
_Z24BG_CalculateWeaponAnglesP13weaponState_tPf_90:
	lea eax, [esi+0x240]
	movaps xmm0, xmm1
	mulss xmm0, [esi+0x240]
	jmp _Z24BG_CalculateWeaponAnglesP13weaponState_tPf_100
_Z24BG_CalculateWeaponAnglesP13weaponState_tPf_70:
	movaps xmm0, xmm1
	subss xmm0, [_float_1_00000000]
	jmp _Z24BG_CalculateWeaponAnglesP13weaponState_tPf_870


;BG_GetWeaponIndexForName(char const*, void (*)(unsigned int))
_Z24BG_GetWeaponIndexForNamePKcPFvjE:
_Z24BG_GetWeaponIndexForNamePKcPFvjE_270:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov edi, [ebp+0x8]
	cmp byte [edi], 0x0
	jnz _Z24BG_GetWeaponIndexForNamePKcPFvjE_10
_Z24BG_GetWeaponIndexForNamePKcPFvjE_20:
	mov dword [ebp-0x28], 0x0
	mov eax, [ebp-0x28]
_Z24BG_GetWeaponIndexForNamePKcPFvjE_220:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z24BG_GetWeaponIndexForNamePKcPFvjE_10:
	mov dword [esp+0x4], _cstring_none
	mov [esp], edi
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z24BG_GetWeaponIndexForNamePKcPFvjE_20
	mov eax, [bg_lastParsedWeaponIndex]
	test eax, eax
	jnz _Z24BG_GetWeaponIndexForNamePKcPFvjE_30
_Z24BG_GetWeaponIndexForNamePKcPFvjE_200:
	mov eax, fs_gameDirVar
	mov eax, [eax]
	mov eax, [eax+0xc]
	cmp byte [eax], 0x0
	jz _Z24BG_GetWeaponIndexForNamePKcPFvjE_40
_Z24BG_GetWeaponIndexForNamePKcPFvjE_120:
	mov eax, _Z24BG_LoadWeaponDef_LoadObjPKc
_Z24BG_GetWeaponIndexForNamePKcPFvjE_130:
	mov [esp], edi
	call eax
	mov [ebp-0x30], eax
	test eax, eax
	jz _Z24BG_GetWeaponIndexForNamePKcPFvjE_50
	mov eax, useFastFile
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z24BG_GetWeaponIndexForNamePKcPFvjE_60
_Z24BG_GetWeaponIndexForNamePKcPFvjE_140:
	mov eax, [bg_lastParsedWeaponIndex]
	add eax, 0x1
	mov [ebp-0x2c], eax
	mov [bg_lastParsedWeaponIndex], eax
	mov [ebp-0x28], eax
	mov edx, [ebp-0x30]
	mov [eax*4+bg_weaponDefs], edx
	mov esi, [bg_numAmmoTypes]
	test esi, esi
	jnz _Z24BG_GetWeaponIndexForNamePKcPFvjE_70
	xor eax, eax
	xor edx, edx
_Z24BG_GetWeaponIndexForNamePKcPFvjE_180:
	mov ecx, [ebp-0x30]
	mov [eax*4+bg_weapAmmoTypes], ecx
	mov [ecx+0x328], edx
	lea eax, [esi+0x1]
	mov [bg_numAmmoTypes], eax
_Z24BG_GetWeaponIndexForNamePKcPFvjE_300:
	mov eax, [ebp-0x2c]
	call _Z25BG_SetupSharedAmmoIndexesj
	mov eax, [ebp-0x2c]
	mov eax, [eax*4+bg_weaponDefs]
	mov [ebp-0x1c], eax
	mov esi, [bg_numWeapClips]
	test esi, esi
	jnz _Z24BG_GetWeaponIndexForNamePKcPFvjE_80
	xor eax, eax
	xor edx, edx
_Z24BG_GetWeaponIndexForNamePKcPFvjE_260:
	mov ecx, [ebp-0x1c]
	mov [eax*4+bg_weapClips], ecx
	mov [ecx+0x330], edx
	lea eax, [esi+0x1]
	mov [bg_numWeapClips], eax
_Z24BG_GetWeaponIndexForNamePKcPFvjE_310:
	xor edx, edx
	mov eax, [ebp-0x2c]
	shl eax, 0x2
	add eax, bg_itemlist
_Z24BG_GetWeaponIndexForNamePKcPFvjE_90:
	mov dword [eax], 0x1
	add edx, 0x1
	add eax, 0x200
	cmp edx, 0x10
	jnz _Z24BG_GetWeaponIndexForNamePKcPFvjE_90
	mov eax, [ebp-0x2c]
	mov ebx, [eax*4+bg_weaponDefs]
	mov dword [ebx+0x540], 0x0
	mov eax, [ebx+0x53c]
	cmp byte [eax], 0x0
	jnz _Z24BG_GetWeaponIndexForNamePKcPFvjE_100
_Z24BG_GetWeaponIndexForNamePKcPFvjE_290:
	mov eax, [ebp+0xc]
	test eax, eax
	jz _Z24BG_GetWeaponIndexForNamePKcPFvjE_110
	mov ecx, [ebp-0x2c]
	mov [esp], ecx
	call dword [ebp+0xc]
	mov eax, [ebp-0x28]
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z24BG_GetWeaponIndexForNamePKcPFvjE_40:
	mov eax, useFastFile
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z24BG_GetWeaponIndexForNamePKcPFvjE_120
	mov eax, _Z25BG_LoadWeaponDef_FastFilePKc
	jmp _Z24BG_GetWeaponIndexForNamePKcPFvjE_130
_Z24BG_GetWeaponIndexForNamePKcPFvjE_60:
	mov [esp+0x4], edi
	mov dword [esp], 0x17
	call _Z19DB_FindXAssetHeader10XAssetTypePKc
	mov [esp+0x4], edi
	mov dword [esp], 0x17
	call _Z18DB_IsXAssetDefault10XAssetTypePKc
	test al, al
	jz _Z24BG_GetWeaponIndexForNamePKcPFvjE_140
	jmp _Z24BG_GetWeaponIndexForNamePKcPFvjE_20
_Z24BG_GetWeaponIndexForNamePKcPFvjE_70:
	mov eax, [edx+0x324]
	mov [ebp-0x24], eax
	xor edi, edi
	mov ebx, bg_weapAmmoTypes
	mov edx, eax
	jmp _Z24BG_GetWeaponIndexForNamePKcPFvjE_150
_Z24BG_GetWeaponIndexForNamePKcPFvjE_170:
	mov edx, [ebp-0x24]
_Z24BG_GetWeaponIndexForNamePKcPFvjE_150:
	mov eax, [ebx]
	mov [esp+0x4], edx
	mov eax, [eax+0x324]
	mov [esp], eax
	call strcmp
	test eax, eax
	jz _Z24BG_GetWeaponIndexForNamePKcPFvjE_160
	add edi, 0x1
	add ebx, 0x4
	cmp esi, edi
	jnz _Z24BG_GetWeaponIndexForNamePKcPFvjE_170
	mov edx, esi
	mov eax, esi
	jmp _Z24BG_GetWeaponIndexForNamePKcPFvjE_180
_Z24BG_GetWeaponIndexForNamePKcPFvjE_30:
	mov esi, 0x1
	mov ebx, bg_weaponDefs
	jmp _Z24BG_GetWeaponIndexForNamePKcPFvjE_190
_Z24BG_GetWeaponIndexForNamePKcPFvjE_210:
	add esi, 0x1
	add ebx, 0x4
	cmp esi, [bg_lastParsedWeaponIndex]
	ja _Z24BG_GetWeaponIndexForNamePKcPFvjE_200
_Z24BG_GetWeaponIndexForNamePKcPFvjE_190:
	mov eax, [ebx+0x4]
	mov eax, [eax]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z24BG_GetWeaponIndexForNamePKcPFvjE_210
	test esi, esi
	jz _Z24BG_GetWeaponIndexForNamePKcPFvjE_200
	mov [ebp-0x28], esi
	mov eax, esi
	jmp _Z24BG_GetWeaponIndexForNamePKcPFvjE_220
_Z24BG_GetWeaponIndexForNamePKcPFvjE_80:
	mov ecx, [eax+0x32c]
	mov [ebp-0x20], ecx
	xor edi, edi
	mov ebx, bg_weapClips
	mov edx, ecx
	jmp _Z24BG_GetWeaponIndexForNamePKcPFvjE_230
_Z24BG_GetWeaponIndexForNamePKcPFvjE_250:
	mov edx, [ebp-0x20]
_Z24BG_GetWeaponIndexForNamePKcPFvjE_230:
	mov eax, [ebx]
	mov [esp+0x4], edx
	mov eax, [eax+0x32c]
	mov [esp], eax
	call strcmp
	test eax, eax
	jz _Z24BG_GetWeaponIndexForNamePKcPFvjE_240
	add edi, 0x1
	add ebx, 0x4
	cmp esi, edi
	jnz _Z24BG_GetWeaponIndexForNamePKcPFvjE_250
	mov edx, esi
	mov eax, esi
	jmp _Z24BG_GetWeaponIndexForNamePKcPFvjE_260
_Z24BG_GetWeaponIndexForNamePKcPFvjE_100:
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	mov [esp], eax
	call _Z24BG_GetWeaponIndexForNamePKcPFvjE_270
	mov esi, eax
	test eax, eax
	jz _Z24BG_GetWeaponIndexForNamePKcPFvjE_280
_Z24BG_GetWeaponIndexForNamePKcPFvjE_320:
	mov [ebx+0x540], esi
	jmp _Z24BG_GetWeaponIndexForNamePKcPFvjE_290
_Z24BG_GetWeaponIndexForNamePKcPFvjE_110:
	mov eax, [ebp-0x28]
	jmp _Z24BG_GetWeaponIndexForNamePKcPFvjE_220
_Z24BG_GetWeaponIndexForNamePKcPFvjE_50:
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_couldnt_find_wea
	mov dword [esp], 0x11
	call _Z11Com_DPrintfiPKcz
	mov dword [ebp-0x28], 0x0
	mov eax, [ebp-0x28]
	jmp _Z24BG_GetWeaponIndexForNamePKcPFvjE_220
_Z24BG_GetWeaponIndexForNamePKcPFvjE_160:
	mov ecx, [ebp-0x30]
	mov [ecx+0x328], edi
	jmp _Z24BG_GetWeaponIndexForNamePKcPFvjE_300
_Z24BG_GetWeaponIndexForNamePKcPFvjE_240:
	mov edx, [ebp-0x1c]
	mov [edx+0x330], edi
	jmp _Z24BG_GetWeaponIndexForNamePKcPFvjE_310
_Z24BG_GetWeaponIndexForNamePKcPFvjE_280:
	mov eax, [ebx]
	mov [esp+0xc], eax
	mov eax, [ebx+0x53c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_could_not_find_a
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z24BG_GetWeaponIndexForNamePKcPFvjE_320


;BG_FindWeaponIndexForName(char const*)
_Z25BG_FindWeaponIndexForNamePKc:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0x8]
	test edi, edi
	jz _Z25BG_FindWeaponIndexForNamePKc_10
	mov ebx, [bg_lastParsedWeaponIndex]
	test ebx, ebx
	jnz _Z25BG_FindWeaponIndexForNamePKc_20
_Z25BG_FindWeaponIndexForNamePKc_10:
	xor eax, eax
_Z25BG_FindWeaponIndexForNamePKc_50:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z25BG_FindWeaponIndexForNamePKc_20:
	mov esi, 0x1
	mov ebx, bg_weaponDefs
_Z25BG_FindWeaponIndexForNamePKc_40:
	mov eax, [ebx+0x4]
	mov eax, [eax]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z25BG_FindWeaponIndexForNamePKc_30
	add esi, 0x1
	add ebx, 0x4
	cmp [bg_lastParsedWeaponIndex], esi
	jae _Z25BG_FindWeaponIndexForNamePKc_40
	jmp _Z25BG_FindWeaponIndexForNamePKc_10
_Z25BG_FindWeaponIndexForNamePKc_30:
	mov eax, esi
	jmp _Z25BG_FindWeaponIndexForNamePKc_50
	nop


;BG_GetHorizontalBobFactor(playerState_s const*, float, float, float)
_Z25BG_GetHorizontalBobFactorPK13playerState_sfff:
	push ebp
	mov ebp, esp
	sub esp, 0x48
	mov edx, [ebp+0x8]
	movss xmm0, dword [ebp+0x10]
	mov eax, [edx+0x114]
	cmp eax, 0xb
	jz _Z25BG_GetHorizontalBobFactorPK13playerState_sfff_10
	cmp eax, 0x28
	jz _Z25BG_GetHorizontalBobFactorPK13playerState_sfff_20
	cmp word [edx+0xc], 0x0
	jns _Z25BG_GetHorizontalBobFactorPK13playerState_sfff_30
	mov eax, bg_bobAmplitudeSprinting
	mov eax, [eax]
	movaps xmm1, xmm0
	mulss xmm1, [eax+0xc]
_Z25BG_GetHorizontalBobFactorPK13playerState_sfff_40:
	movss xmm0, dword [ebp+0x14]
	minss xmm0, xmm1
	mov eax, [ebp+0xc]
	mov [esp], eax
	movss [ebp-0x28], xmm0
	call sinf
	fstp dword [ebp-0xc]
	movss xmm1, dword [ebp-0x28]
	mulss xmm1, [ebp-0xc]
	movss [ebp-0x2c], xmm1
	fld dword [ebp-0x2c]
	leave
	ret
_Z25BG_GetHorizontalBobFactorPK13playerState_sfff_30:
	mov eax, bg_bobAmplitudeStanding
	mov eax, [eax]
	movaps xmm1, xmm0
	mulss xmm1, [eax+0xc]
	jmp _Z25BG_GetHorizontalBobFactorPK13playerState_sfff_40
_Z25BG_GetHorizontalBobFactorPK13playerState_sfff_10:
	mov eax, bg_bobAmplitudeProne
	mov eax, [eax]
	movaps xmm1, xmm0
	mulss xmm1, [eax+0xc]
	jmp _Z25BG_GetHorizontalBobFactorPK13playerState_sfff_40
_Z25BG_GetHorizontalBobFactorPK13playerState_sfff_20:
	mov eax, bg_bobAmplitudeDucked
	mov eax, [eax]
	movaps xmm1, xmm0
	mulss xmm1, [eax+0xc]
	jmp _Z25BG_GetHorizontalBobFactorPK13playerState_sfff_40
	nop


;BG_ShutdownWeaponDefFiles()
_Z25BG_ShutdownWeaponDefFilesv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov eax, fs_gameDirVar
	mov eax, [eax]
	mov eax, [eax+0xc]
	cmp byte [eax], 0x0
	jnz _Z25BG_ShutdownWeaponDefFilesv_10
_Z25BG_ShutdownWeaponDefFilesv_20:
	mov dword [bg_lastParsedWeaponIndex], 0x0
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z25BG_ShutdownWeaponDefFilesv_10:
	call _Z25BG_ClearSurfaceTypeSoundsv
	mov eax, [bg_lastParsedWeaponIndex]
	test eax, eax
	jz _Z25BG_ShutdownWeaponDefFilesv_20
	mov dword [ebp-0x20], 0x1
	mov dword [ebp-0x1c], bg_weaponDefs
_Z25BG_ShutdownWeaponDefFilesv_110:
	mov eax, [ebp-0x1c]
	mov edi, [eax+0x4]
	mov ebx, edi
	xor esi, esi
	jmp _Z25BG_ShutdownWeaponDefFilesv_30
_Z25BG_ShutdownWeaponDefFilesv_50:
	add esi, 0x1
	add ebx, 0x2
	cmp esi, 0x8
	jz _Z25BG_ShutdownWeaponDefFilesv_40
_Z25BG_ShutdownWeaponDefFilesv_30:
	movzx eax, word [ebx+0xd8]
	test ax, ax
	jz _Z25BG_ShutdownWeaponDefFilesv_50
	movzx eax, ax
	mov [esp], eax
	call _Z20SL_RemoveRefToStringj
	add esi, 0x1
	add ebx, 0x2
	cmp esi, 0x8
	jnz _Z25BG_ShutdownWeaponDefFilesv_30
_Z25BG_ShutdownWeaponDefFilesv_40:
	mov ebx, edi
	mov si, 0x10
	jmp _Z25BG_ShutdownWeaponDefFilesv_60
_Z25BG_ShutdownWeaponDefFilesv_90:
	movzx eax, word [ebx+0x108]
	test ax, ax
	jnz _Z25BG_ShutdownWeaponDefFilesv_70
_Z25BG_ShutdownWeaponDefFilesv_100:
	add ebx, 0x2
	sub esi, 0x1
	jz _Z25BG_ShutdownWeaponDefFilesv_80
_Z25BG_ShutdownWeaponDefFilesv_60:
	movzx eax, word [ebx+0xe8]
	test ax, ax
	jz _Z25BG_ShutdownWeaponDefFilesv_90
	movzx eax, ax
	mov [esp], eax
	call _Z20SL_RemoveRefToStringj
	movzx eax, word [ebx+0x108]
	test ax, ax
	jz _Z25BG_ShutdownWeaponDefFilesv_100
_Z25BG_ShutdownWeaponDefFilesv_70:
	movzx eax, ax
	mov [esp], eax
	call _Z20SL_RemoveRefToStringj
	add ebx, 0x2
	sub esi, 0x1
	jnz _Z25BG_ShutdownWeaponDefFilesv_60
_Z25BG_ShutdownWeaponDefFilesv_80:
	add dword [ebp-0x20], 0x1
	add dword [ebp-0x1c], 0x4
	mov eax, [ebp-0x20]
	cmp eax, [bg_lastParsedWeaponIndex]
	jbe _Z25BG_ShutdownWeaponDefFilesv_110
	mov dword [bg_lastParsedWeaponIndex], 0x0
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;PM_UpdateAimDownSightFlag(pmove_t*, pml_t*)
_Z25PM_UpdateAimDownSightFlagP7pmove_tP5pml_t:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov edi, [ebp+0x8]
	mov esi, [edi]
	mov ebx, [esi+0x10]
	test bl, 0x2
	jz _Z25PM_UpdateAimDownSightFlagP7pmove_tP5pml_t_10
	mov eax, [esi+0xe0]
_Z25PM_UpdateAimDownSightFlagP7pmove_tP5pml_t_140:
	mov eax, [eax*4+bg_weaponDefs]
	mov [ebp-0x20], eax
	mov edx, [esi+0xc]
	and edx, 0xffffffef
	mov [esi+0xc], edx
	cmp dword [esi+0x4], 0x8
	ja _Z25PM_UpdateAimDownSightFlagP7pmove_tP5pml_t_20
	mov ecx, [esi+0x4]
	mov eax, 0x1
	shl eax, cl
	test eax, 0x1bc
	jz _Z25PM_UpdateAimDownSightFlagP7pmove_tP5pml_t_30
_Z25PM_UpdateAimDownSightFlagP7pmove_tP5pml_t_100:
	mov byte [ebp-0x29], 0x0
_Z25PM_UpdateAimDownSightFlagP7pmove_tP5pml_t_130:
	mov eax, [edi+0x8]
	mov ebx, eax
	shr ebx, 0xb
	and ebx, 0x1
	test al, 0x2
	jz _Z25PM_UpdateAimDownSightFlagP7pmove_tP5pml_t_40
	mov ecx, [ebp-0x20]
	mov ecx, [ecx+0x438]
	test ecx, ecx
	jz _Z25PM_UpdateAimDownSightFlagP7pmove_tP5pml_t_50
	test ah, 0x20
	jz _Z25PM_UpdateAimDownSightFlagP7pmove_tP5pml_t_50
_Z25PM_UpdateAimDownSightFlagP7pmove_tP5pml_t_40:
	test ebx, ebx
	jz _Z25PM_UpdateAimDownSightFlagP7pmove_tP5pml_t_60
	cmp byte [ebp-0x29], 0x0
	jnz _Z25PM_UpdateAimDownSightFlagP7pmove_tP5pml_t_70
_Z25PM_UpdateAimDownSightFlagP7pmove_tP5pml_t_60:
	and dl, 0x10
	jz _Z25PM_UpdateAimDownSightFlagP7pmove_tP5pml_t_80
	mov dword [esp+0x8], 0x1
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x4], 0x7
	mov eax, [esi+0xdc]
	mov [esp], eax
	call _Z20BG_SetConditionValueiiy
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z25PM_UpdateAimDownSightFlagP7pmove_tP5pml_t_30:
	test al, 0x2
	jnz _Z25PM_UpdateAimDownSightFlagP7pmove_tP5pml_t_90
_Z25PM_UpdateAimDownSightFlagP7pmove_tP5pml_t_20:
	test byte [esi+0x14], 0x4
	jz _Z25PM_UpdateAimDownSightFlagP7pmove_tP5pml_t_100
	test bl, 0x2
	jz _Z25PM_UpdateAimDownSightFlagP7pmove_tP5pml_t_110
	mov eax, [esi+0xe0]
_Z25PM_UpdateAimDownSightFlagP7pmove_tP5pml_t_170:
	mov eax, [eax*4+bg_weaponDefs]
	mov [ebp-0x1c], eax
	mov eax, [eax+0x4ec]
	test eax, eax
	jz _Z25PM_UpdateAimDownSightFlagP7pmove_tP5pml_t_100
	mov ecx, [esi+0xec]
	lea eax, [ecx-0xf]
	cmp eax, 0x5
	jbe _Z25PM_UpdateAimDownSightFlagP7pmove_tP5pml_t_100
	lea eax, [ecx-0xc]
	cmp eax, 0x2
	jbe _Z25PM_UpdateAimDownSightFlagP7pmove_tP5pml_t_100
	lea eax, [ecx-0x1]
	cmp eax, 0x3
	jbe _Z25PM_UpdateAimDownSightFlagP7pmove_tP5pml_t_100
	lea eax, [ecx-0x19]
	cmp eax, 0x1
	jbe _Z25PM_UpdateAimDownSightFlagP7pmove_tP5pml_t_100
	test dword [esi+0xb0], 0x300
	jnz _Z25PM_UpdateAimDownSightFlagP7pmove_tP5pml_t_100
	and bl, 0x20
	jnz _Z25PM_UpdateAimDownSightFlagP7pmove_tP5pml_t_100
	mov ecx, [ebp-0x1c]
	mov eax, [ecx+0x3f8]
	test eax, eax
	jz _Z25PM_UpdateAimDownSightFlagP7pmove_tP5pml_t_120
	mov eax, [esi+0xe8]
	mov eax, [eax*4+bg_weaponDefs]
	mov eax, [eax+0x330]
	mov ebx, [esi+eax*4+0x35c]
	test ebx, ebx
	jz _Z25PM_UpdateAimDownSightFlagP7pmove_tP5pml_t_100
_Z25PM_UpdateAimDownSightFlagP7pmove_tP5pml_t_120:
	mov byte [ebp-0x29], 0x1
	jmp _Z25PM_UpdateAimDownSightFlagP7pmove_tP5pml_t_130
_Z25PM_UpdateAimDownSightFlagP7pmove_tP5pml_t_10:
	mov eax, [esi+0xe8]
	jmp _Z25PM_UpdateAimDownSightFlagP7pmove_tP5pml_t_140
_Z25PM_UpdateAimDownSightFlagP7pmove_tP5pml_t_80:
	mov dword [esp+0x8], 0x0
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x4], 0x7
	mov eax, [esi+0xdc]
	mov [esp], eax
	call _Z20BG_SetConditionValueiiy
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z25PM_UpdateAimDownSightFlagP7pmove_tP5pml_t_70:
	mov ecx, edx
	test dl, 0x1
	jz _Z25PM_UpdateAimDownSightFlagP7pmove_tP5pml_t_150
	mov eax, [esi+0xe8]
	mov eax, [eax*4+bg_weaponDefs]
	mov eax, [eax+0x438]
	test eax, eax
	jz _Z25PM_UpdateAimDownSightFlagP7pmove_tP5pml_t_160
	movss xmm0, dword [esi+0xf4]
	ucomiss xmm0, [_float_0_00000000]
	jbe _Z25PM_UpdateAimDownSightFlagP7pmove_tP5pml_t_160
_Z25PM_UpdateAimDownSightFlagP7pmove_tP5pml_t_150:
	mov eax, edx
	or eax, 0x10
	mov edx, eax
	mov [esi+0xc], eax
	jmp _Z25PM_UpdateAimDownSightFlagP7pmove_tP5pml_t_60
_Z25PM_UpdateAimDownSightFlagP7pmove_tP5pml_t_50:
	mov dword [esp+0x4], 0xe
	mov [esp], esi
	call _Z11PM_AddEventP13playerState_si
	mov edx, [esi+0xc]
	and edx, 0xffffffef
	mov [esi+0xc], edx
	mov byte [ebp-0x29], 0x0
	jmp _Z25PM_UpdateAimDownSightFlagP7pmove_tP5pml_t_40
_Z25PM_UpdateAimDownSightFlagP7pmove_tP5pml_t_110:
	mov eax, [esi+0xe8]
	jmp _Z25PM_UpdateAimDownSightFlagP7pmove_tP5pml_t_170
_Z25PM_UpdateAimDownSightFlagP7pmove_tP5pml_t_90:
	mov eax, [ebp+0xc]
	mov eax, [eax+0x34]
	test eax, eax
	jnz _Z25PM_UpdateAimDownSightFlagP7pmove_tP5pml_t_100
	jmp _Z25PM_UpdateAimDownSightFlagP7pmove_tP5pml_t_20
_Z25PM_UpdateAimDownSightFlagP7pmove_tP5pml_t_160:
	test byte [edi+0x29], 0x8
	jnz _Z25PM_UpdateAimDownSightFlagP7pmove_tP5pml_t_180
_Z25PM_UpdateAimDownSightFlagP7pmove_tP5pml_t_190:
	mov edx, ecx
	or edx, 0x210
	mov [esi+0xc], edx
	jmp _Z25PM_UpdateAimDownSightFlagP7pmove_tP5pml_t_60
_Z25PM_UpdateAimDownSightFlagP7pmove_tP5pml_t_180:
	cmp word [edi+0x1a], 0x0
	jnz _Z25PM_UpdateAimDownSightFlagP7pmove_tP5pml_t_60
	jmp _Z25PM_UpdateAimDownSightFlagP7pmove_tP5pml_t_190


;PM_UpdateAimDownSightLerp(pmove_t*, pml_t*)
_Z25PM_UpdateAimDownSightLerpP7pmove_tP5pml_t:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov ebx, [esi]
	test byte [ebx+0x10], 0x2
	jz _Z25PM_UpdateAimDownSightLerpP7pmove_tP5pml_t_10
	mov eax, [ebx+0xe0]
_Z25PM_UpdateAimDownSightLerpP7pmove_tP5pml_t_50:
	mov edx, [eax*4+bg_weaponDefs]
	mov eax, player_scopeExitOnDamage
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z25PM_UpdateAimDownSightLerpP7pmove_tP5pml_t_20
	mov ecx, [ebx+0x144]
	test ecx, ecx
	jnz _Z25PM_UpdateAimDownSightLerpP7pmove_tP5pml_t_30
_Z25PM_UpdateAimDownSightLerpP7pmove_tP5pml_t_20:
	mov eax, [edx+0x4ec]
	test eax, eax
	jnz _Z25PM_UpdateAimDownSightLerpP7pmove_tP5pml_t_40
_Z25PM_UpdateAimDownSightLerpP7pmove_tP5pml_t_60:
	mov dword [ebx+0xf4], 0x0
	mov dword [ebx+0xf8], 0x0
_Z25PM_UpdateAimDownSightLerpP7pmove_tP5pml_t_170:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z25PM_UpdateAimDownSightLerpP7pmove_tP5pml_t_10:
	mov eax, [ebx+0xe8]
	jmp _Z25PM_UpdateAimDownSightLerpP7pmove_tP5pml_t_50
_Z25PM_UpdateAimDownSightLerpP7pmove_tP5pml_t_40:
	test dword [ebx+0xb0], 0x300
	jnz _Z25PM_UpdateAimDownSightLerpP7pmove_tP5pml_t_60
	mov eax, [edx+0x530]
	test eax, eax
	jnz _Z25PM_UpdateAimDownSightLerpP7pmove_tP5pml_t_70
	cmp dword [ebx+0xec], 0x7
	jz _Z25PM_UpdateAimDownSightLerpP7pmove_tP5pml_t_80
_Z25PM_UpdateAimDownSightLerpP7pmove_tP5pml_t_180:
	mov eax, [edx+0x4f0]
	test eax, eax
	jnz _Z25PM_UpdateAimDownSightLerpP7pmove_tP5pml_t_90
	cmp dword [ebx+0xec], 0x6
	jz _Z25PM_UpdateAimDownSightLerpP7pmove_tP5pml_t_100
_Z25PM_UpdateAimDownSightLerpP7pmove_tP5pml_t_90:
	test byte [ebx+0xc], 0x10
	jz _Z25PM_UpdateAimDownSightLerpP7pmove_tP5pml_t_100
	mov ecx, 0x1
_Z25PM_UpdateAimDownSightLerpP7pmove_tP5pml_t_190:
	mov eax, [edx+0x504]
	test eax, eax
	jz _Z25PM_UpdateAimDownSightLerpP7pmove_tP5pml_t_110
	mov eax, [ebx+0x40]
	test eax, eax
	jz _Z25PM_UpdateAimDownSightLerpP7pmove_tP5pml_t_110
	cmp dword [ebx+0xec], 0x5
	mov eax, 0x1
	cmovz ecx, eax
_Z25PM_UpdateAimDownSightLerpP7pmove_tP5pml_t_110:
	movss xmm4, dword [_float_1_00000000]
	ucomiss xmm4, [ebx+0xf4]
	jnz _Z25PM_UpdateAimDownSightLerpP7pmove_tP5pml_t_120
	jp _Z25PM_UpdateAimDownSightLerpP7pmove_tP5pml_t_120
	test cl, cl
	jnz _Z25PM_UpdateAimDownSightLerpP7pmove_tP5pml_t_120
	mov eax, player_adsExitDelay
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	jle _Z25PM_UpdateAimDownSightLerpP7pmove_tP5pml_t_120
	mov ecx, [ebx+0xf8]
	test ecx, ecx
	jnz _Z25PM_UpdateAimDownSightLerpP7pmove_tP5pml_t_130
	add eax, [esi+0x4]
	mov [ebx+0xf8], eax
_Z25PM_UpdateAimDownSightLerpP7pmove_tP5pml_t_230:
	cmp eax, [esi+0x4]
	jg _Z25PM_UpdateAimDownSightLerpP7pmove_tP5pml_t_140
	mov dword [ebx+0xf8], 0x0
_Z25PM_UpdateAimDownSightLerpP7pmove_tP5pml_t_200:
	movss xmm1, dword [ebx+0xf4]
	pxor xmm3, xmm3
	ucomiss xmm1, xmm3
	jz _Z25PM_UpdateAimDownSightLerpP7pmove_tP5pml_t_150
_Z25PM_UpdateAimDownSightLerpP7pmove_tP5pml_t_220:
	mov eax, [ebp+0xc]
	cvtsi2ss xmm0, dword [eax+0x28]
	mulss xmm0, [edx+0x7fc]
	subss xmm1, xmm0
	movss [ebx+0xf4], xmm1
	movaps xmm2, xmm1
	jmp _Z25PM_UpdateAimDownSightLerpP7pmove_tP5pml_t_160
_Z25PM_UpdateAimDownSightLerpP7pmove_tP5pml_t_30:
	mov eax, [edx+0x438]
	test eax, eax
	jz _Z25PM_UpdateAimDownSightLerpP7pmove_tP5pml_t_20
	mov dword [esp+0x4], 0xe
	mov [esp], ebx
	call _Z11PM_AddEventP13playerState_si
	and dword [ebx+0xc], 0xffffffef
	mov dword [ebx+0xf4], 0x0
	mov dword [ebx+0xf8], 0x0
	jmp _Z25PM_UpdateAimDownSightLerpP7pmove_tP5pml_t_170
_Z25PM_UpdateAimDownSightLerpP7pmove_tP5pml_t_70:
	mov ecx, [ebx+0xec]
	lea eax, [ecx-0x7]
	cmp eax, 0x3
	jbe _Z25PM_UpdateAimDownSightLerpP7pmove_tP5pml_t_100
	cmp ecx, 0xb
	jnz _Z25PM_UpdateAimDownSightLerpP7pmove_tP5pml_t_180
_Z25PM_UpdateAimDownSightLerpP7pmove_tP5pml_t_80:
	mov eax, [ebx+0x3c]
	sub eax, [edx+0x794]
	test eax, eax
	jle _Z25PM_UpdateAimDownSightLerpP7pmove_tP5pml_t_180
_Z25PM_UpdateAimDownSightLerpP7pmove_tP5pml_t_100:
	xor ecx, ecx
	jmp _Z25PM_UpdateAimDownSightLerpP7pmove_tP5pml_t_190
_Z25PM_UpdateAimDownSightLerpP7pmove_tP5pml_t_120:
	mov dword [ebx+0xf8], 0x0
	test cl, cl
	jz _Z25PM_UpdateAimDownSightLerpP7pmove_tP5pml_t_200
_Z25PM_UpdateAimDownSightLerpP7pmove_tP5pml_t_140:
	movss xmm1, dword [ebx+0xf4]
	ucomiss xmm1, xmm4
	jp _Z25PM_UpdateAimDownSightLerpP7pmove_tP5pml_t_210
	jz _Z25PM_UpdateAimDownSightLerpP7pmove_tP5pml_t_170
_Z25PM_UpdateAimDownSightLerpP7pmove_tP5pml_t_210:
	mov eax, [ebp+0xc]
	cvtsi2ss xmm0, dword [eax+0x28]
	mulss xmm0, [edx+0x7f8]
	addss xmm0, xmm1
	movss [ebx+0xf4], xmm0
	pxor xmm3, xmm3
	movaps xmm2, xmm0
_Z25PM_UpdateAimDownSightLerpP7pmove_tP5pml_t_160:
	movaps xmm0, xmm2
	subss xmm0, xmm4
	movaps xmm1, xmm3
	cmpss xmm1, xmm0, 0x6
	movaps xmm0, xmm2
	andps xmm0, xmm1
	andnps xmm1, xmm4
	orps xmm1, xmm0
	movaps xmm0, xmm3
	subss xmm0, xmm2
	movaps xmm2, xmm3
	cmpss xmm2, xmm0, 0x6
	movaps xmm0, xmm2
	andps xmm1, xmm2
	andnps xmm0, xmm3
	orps xmm0, xmm1
	movss [ebx+0xf4], xmm0
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z25PM_UpdateAimDownSightLerpP7pmove_tP5pml_t_150:
	jnp _Z25PM_UpdateAimDownSightLerpP7pmove_tP5pml_t_170
	jmp _Z25PM_UpdateAimDownSightLerpP7pmove_tP5pml_t_220
_Z25PM_UpdateAimDownSightLerpP7pmove_tP5pml_t_130:
	mov eax, [ebx+0xf8]
	jmp _Z25PM_UpdateAimDownSightLerpP7pmove_tP5pml_t_230


;BG_GetFirstEquippedOffhand(playerState_s const*, int)
_Z26BG_GetFirstEquippedOffhandPK13playerState_si:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x8
	mov esi, [bg_lastParsedWeaponIndex]
	add esi, 0x1
	cmp esi, 0x1
	jle _Z26BG_GetFirstEquippedOffhandPK13playerState_si_10
	mov edx, 0x1
	mov ebx, bg_weaponDefs
	jmp _Z26BG_GetFirstEquippedOffhandPK13playerState_si_20
_Z26BG_GetFirstEquippedOffhandPK13playerState_si_30:
	add edx, 0x1
	add ebx, 0x4
	cmp esi, edx
	jz _Z26BG_GetFirstEquippedOffhandPK13playerState_si_10
_Z26BG_GetFirstEquippedOffhandPK13playerState_si_20:
	mov eax, [ebx+0x4]
	mov ecx, [ebp+0xc]
	cmp [eax+0x144], ecx
	jnz _Z26BG_GetFirstEquippedOffhandPK13playerState_si_30
	mov edi, edx
	sar edi, 0x5
	mov [ebp-0x10], edi
	mov ecx, edx
	and ecx, 0x1f
	mov eax, 0x1
	shl eax, cl
	mov ecx, [ebp+0x8]
	test [ecx+edi*4+0x55c], eax
	jz _Z26BG_GetFirstEquippedOffhandPK13playerState_si_30
	mov eax, edx
	add esp, 0x8
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z26BG_GetFirstEquippedOffhandPK13playerState_si_10:
	xor edx, edx
	mov eax, edx
	add esp, 0x8
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;BG_GetViewmodelWeaponIndex(playerState_s const*)
_Z26BG_GetViewmodelWeaponIndexPK13playerState_s:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	test byte [eax+0x10], 0x2
	jz _Z26BG_GetViewmodelWeaponIndexPK13playerState_s_10
	mov eax, [eax+0xe0]
	pop ebp
	ret
_Z26BG_GetViewmodelWeaponIndexPK13playerState_s_10:
	mov eax, [eax+0xe8]
	pop ebp
	ret


;BG_AssertOffhandIndexOrNone(int)
_Z27BG_AssertOffhandIndexOrNonei:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop


;BG_GetFirstAvailableOffhand(playerState_s const*, int)
_Z27BG_GetFirstAvailableOffhandPK13playerState_si:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xc
	mov eax, [bg_lastParsedWeaponIndex]
	add eax, 0x1
	mov [ebp-0x18], eax
	sub eax, 0x1
	jle _Z27BG_GetFirstAvailableOffhandPK13playerState_si_10
	mov ebx, 0x1
	mov esi, bg_weaponDefs
	jmp _Z27BG_GetFirstAvailableOffhandPK13playerState_si_20
_Z27BG_GetFirstAvailableOffhandPK13playerState_si_30:
	add ebx, 0x1
	add esi, 0x4
	cmp [ebp-0x18], ebx
	jz _Z27BG_GetFirstAvailableOffhandPK13playerState_si_10
_Z27BG_GetFirstAvailableOffhandPK13playerState_si_20:
	mov edx, [esi+0x4]
	mov ecx, [ebp+0xc]
	cmp [edx+0x144], ecx
	jnz _Z27BG_GetFirstAvailableOffhandPK13playerState_si_30
	mov edi, ebx
	sar edi, 0x5
	mov [ebp-0x10], edi
	mov ecx, ebx
	and ecx, 0x1f
	mov eax, 0x1
	shl eax, cl
	mov ecx, [ebp+0x8]
	test [ecx+edi*4+0x55c], eax
	jz _Z27BG_GetFirstAvailableOffhandPK13playerState_si_30
	mov eax, [ecx+0x4c]
	test eax, eax
	jg _Z27BG_GetFirstAvailableOffhandPK13playerState_si_40
	mov eax, [edx+0x328]
	mov edx, [edx+0x330]
	mov eax, [ecx+eax*4+0x15c]
	add eax, [ecx+edx*4+0x35c]
	test eax, eax
	jle _Z27BG_GetFirstAvailableOffhandPK13playerState_si_30
_Z27BG_GetFirstAvailableOffhandPK13playerState_si_40:
	mov eax, ebx
	add esp, 0xc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z27BG_GetFirstAvailableOffhandPK13playerState_si_10:
	xor ebx, ebx
	mov eax, ebx
	add esp, 0xc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;BG_LoadPenetrationDepthTable()
_Z28BG_LoadPenetrationDepthTablev:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x2014
	cmp byte [penetrationDepthTableLoaded], 0x0
	jnz _Z28BG_LoadPenetrationDepthTablev_10
	lea eax, [ebp-0x2008]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_bullet_pen_table
	mov dword [esp+0x4], _cstring_bullet_penetrati1
	mov dword [esp], _cstring_infobullet_penet
	call _Z18Com_LoadInfoStringPKcS0_S0_Pc
	mov ebx, eax
	mov dword [esp+0x8], 0x1d0
	mov dword [esp+0x4], 0x0
	mov dword [esp], penetrationDepthTable
	call _Z10Com_MemsetPvii
	mov ecx, ebx
	mov edx, penetrationDepthTable+0x74
	mov eax, _cstring_small
	call _Z29BG_ParsePenetrationDepthTablePKcPfS0_
	mov ecx, ebx
	mov edx, penetrationDepthTable+0xe8
	mov eax, _cstring_medium
	call _Z29BG_ParsePenetrationDepthTablePKcPfS0_
	mov ecx, ebx
	mov edx, penetrationDepthTable+0x15c
	mov eax, _cstring_large
	call _Z29BG_ParsePenetrationDepthTablePKcPfS0_
	mov byte [penetrationDepthTableLoaded], 0x1
_Z28BG_LoadPenetrationDepthTablev_10:
	add esp, 0x2014
	pop ebx
	pop ebp
	ret


;BG_PlayerHasCompatibleWeapon(playerState_s const*, unsigned int)
_Z28BG_PlayerHasCompatibleWeaponPK13playerState_sj:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4
	mov eax, [ebp+0xc]
	mov eax, [eax*4+bg_weaponDefs]
	mov eax, [eax+0x328]
	mov [ebp-0x10], eax
	mov edi, [bg_lastParsedWeaponIndex]
	add edi, 0x1
	cmp edi, 0x1
	jle _Z28BG_PlayerHasCompatibleWeaponPK13playerState_sj_10
	mov ebx, 0x1
	mov esi, bg_weaponDefs
	jmp _Z28BG_PlayerHasCompatibleWeaponPK13playerState_sj_20
_Z28BG_PlayerHasCompatibleWeaponPK13playerState_sj_30:
	add ebx, 0x1
	add esi, 0x4
	cmp edi, ebx
	jz _Z28BG_PlayerHasCompatibleWeaponPK13playerState_sj_10
_Z28BG_PlayerHasCompatibleWeaponPK13playerState_sj_20:
	mov eax, [esi+0x4]
	mov edx, [ebp-0x10]
	cmp edx, [eax+0x328]
	jnz _Z28BG_PlayerHasCompatibleWeaponPK13playerState_sj_30
	mov edx, ebx
	sar edx, 0x5
	mov ecx, ebx
	and ecx, 0x1f
	mov eax, 0x1
	shl eax, cl
	mov ecx, [ebp+0x8]
	test [ecx+edx*4+0x55c], eax
	jz _Z28BG_PlayerHasCompatibleWeaponPK13playerState_sj_30
	mov eax, 0x1
	jmp _Z28BG_PlayerHasCompatibleWeaponPK13playerState_sj_40
_Z28BG_PlayerHasCompatibleWeaponPK13playerState_sj_10:
	xor eax, eax
_Z28BG_PlayerHasCompatibleWeaponPK13playerState_sj_40:
	add esp, 0x4
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;BG_GetSurfacePenetrationDepth(WeaponDef const*, int)
_Z29BG_GetSurfacePenetrationDepthPK9WeaponDefi:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0xc]
	test ecx, ecx
	jz _Z29BG_GetSurfacePenetrationDepthPK9WeaponDefi_10
	mov eax, [ebp+0x8]
	mov edx, [eax+0x134]
	lea eax, [edx*8]
	sub eax, edx
	lea eax, [edx+eax*4]
	add eax, ecx
	fld dword [eax*4+penetrationDepthTable]
	pop ebp
	ret
_Z29BG_GetSurfacePenetrationDepthPK9WeaponDefi_10:
	fldz
	pop ebp
	ret


;BG_PlayerWeaponsFull_Primaries(playerState_s const*)
_Z30BG_PlayerWeaponsFull_PrimariesPK13playerState_s:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x8
	mov eax, [bg_lastParsedWeaponIndex]
	add eax, 0x1
	mov [ebp-0x14], eax
	sub eax, 0x1
	jg _Z30BG_PlayerWeaponsFull_PrimariesPK13playerState_s_10
	xor edi, edi
	xor eax, eax
	cmp edi, 0x1
	setg al
	add esp, 0x8
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z30BG_PlayerWeaponsFull_PrimariesPK13playerState_s_10:
	mov edx, 0x1
	xor edi, edi
	mov ebx, bg_weaponDefs
_Z30BG_PlayerWeaponsFull_PrimariesPK13playerState_s_30:
	mov eax, [ebx+0x4]
	mov eax, [eax+0x13c]
	test eax, eax
	jnz _Z30BG_PlayerWeaponsFull_PrimariesPK13playerState_s_20
	mov esi, edx
	sar esi, 0x5
	mov [ebp-0x10], esi
	mov ecx, edx
	and ecx, 0x1f
	mov eax, 0x1
	shl eax, cl
	mov ecx, eax
	mov eax, [ebp+0x8]
	and ecx, [eax+esi*4+0x55c]
	cmp ecx, 0x1
	sbb edi, 0xffffffff
_Z30BG_PlayerWeaponsFull_PrimariesPK13playerState_s_20:
	add edx, 0x1
	add ebx, 0x4
	cmp [ebp-0x14], edx
	jnz _Z30BG_PlayerWeaponsFull_PrimariesPK13playerState_s_30
	xor eax, eax
	cmp edi, 0x1
	setg al
	add esp, 0x8
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;PM_InteruptWeaponWithProneMove(playerState_s*)
_Z30PM_InteruptWeaponWithProneMoveP13playerState_s:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	mov edx, [ecx+0xec]
	cmp edx, 0x4
	jbe _Z30PM_InteruptWeaponWithProneMoveP13playerState_s_10
	cmp edx, 0x7
	jz _Z30PM_InteruptWeaponWithProneMoveP13playerState_s_10
	cmp edx, 0x9
	jz _Z30PM_InteruptWeaponWithProneMoveP13playerState_s_10
	cmp edx, 0xb
	jz _Z30PM_InteruptWeaponWithProneMoveP13playerState_s_10
	cmp edx, 0xa
	jz _Z30PM_InteruptWeaponWithProneMoveP13playerState_s_10
	cmp edx, 0x8
	jz _Z30PM_InteruptWeaponWithProneMoveP13playerState_s_10
	cmp edx, 0x6
	jz _Z30PM_InteruptWeaponWithProneMoveP13playerState_s_10
	cmp edx, 0x5
	jz _Z30PM_InteruptWeaponWithProneMoveP13playerState_s_20
	lea eax, [edx-0xc]
	cmp eax, 0x2
	jbe _Z30PM_InteruptWeaponWithProneMoveP13playerState_s_20
	lea eax, [edx-0xf]
	cmp eax, 0x5
	jbe _Z30PM_InteruptWeaponWithProneMoveP13playerState_s_20
	lea eax, [edx-0x19]
	cmp eax, 0x1
	jbe _Z30PM_InteruptWeaponWithProneMoveP13playerState_s_20
	and dword [ecx+0x10], 0xfffffffd
	and dword [ecx+0xc], 0xfffffdff
	mov dword [ecx+0x3c], 0x0
	mov dword [ecx+0x40], 0x0
	mov dword [ecx+0xec], 0x0
	cmp dword [ecx+0x4], 0x6
	jg _Z30PM_InteruptWeaponWithProneMoveP13playerState_s_10
	mov eax, [ecx+0x624]
	and eax, 0x200
	xor ah, 0x2
	mov [ecx+0x624], eax
	mov eax, 0x1
	pop ebp
	ret
_Z30PM_InteruptWeaponWithProneMoveP13playerState_s_10:
	mov eax, 0x1
	pop ebp
	ret
_Z30PM_InteruptWeaponWithProneMoveP13playerState_s_20:
	xor eax, eax
	pop ebp
	ret
	nop


;BG_CalculateWeaponPosition_Sway(playerState_s const*, float*, float*, float*, float, int)
_Z31BG_CalculateWeaponPosition_SwayPK13playerState_sPfS2_S2_fi:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov esi, [ebp+0x8]
	mov edi, [ebp+0x10]
	movss xmm7, dword [ebp+0x18]
	mov edx, [ebp+0x1c]
	movss xmm5, dword [esi+0xf4]
	test edx, edx
	jz _Z31BG_CalculateWeaponPosition_SwayPK13playerState_sPfS2_S2_fi_10
	test byte [esi+0x10], 0x2
	jz _Z31BG_CalculateWeaponPosition_SwayPK13playerState_sPfS2_S2_fi_20
	mov eax, [esi+0xe0]
	mov eax, [eax*4+bg_weaponDefs]
	cvtsi2ss xmm0, edx
	mulss xmm0, [_float_0_00100000]
	movss [ebp-0x3c], xmm0
	mov edx, [eax+0x4ec]
	test edx, edx
	jz _Z31BG_CalculateWeaponPosition_SwayPK13playerState_sPfS2_S2_fi_30
_Z31BG_CalculateWeaponPosition_SwayPK13playerState_sPfS2_S2_fi_50:
	ucomiss xmm5, [_float_0_00000000]
	jbe _Z31BG_CalculateWeaponPosition_SwayPK13playerState_sPfS2_S2_fi_40
	mov ebx, [eax+0x438]
	test ebx, ebx
	jnz _Z31BG_CalculateWeaponPosition_SwayPK13playerState_sPfS2_S2_fi_10
_Z31BG_CalculateWeaponPosition_SwayPK13playerState_sPfS2_S2_fi_40:
	movss xmm0, dword [eax+0x4ac]
	movss xmm6, dword [eax+0x4c8]
	subss xmm6, xmm0
	mulss xmm6, xmm5
	addss xmm6, xmm0
	movss xmm0, dword [eax+0x4b0]
	movss xmm1, dword [eax+0x4cc]
	subss xmm1, xmm0
	mulss xmm1, xmm5
	addss xmm0, xmm1
	movss [ebp-0x40], xmm0
	movss xmm0, dword [eax+0x4b4]
	movss xmm4, dword [eax+0x4d0]
	subss xmm4, xmm0
	mulss xmm4, xmm5
	addss xmm4, xmm0
	movss xmm0, dword [eax+0x4b8]
	movss xmm3, dword [eax+0x4d4]
	subss xmm3, xmm0
	mulss xmm3, xmm5
	addss xmm3, xmm0
	movss xmm0, dword [eax+0x4bc]
	movss xmm2, dword [eax+0x4d8]
	subss xmm2, xmm0
	mulss xmm2, xmm5
	addss xmm2, xmm0
	movss xmm0, dword [eax+0x4c0]
	movss xmm1, dword [eax+0x4dc]
	subss xmm1, xmm0
	mulss xmm1, xmm5
	addss xmm1, xmm0
_Z31BG_CalculateWeaponPosition_SwayPK13playerState_sPfS2_S2_fi_60:
	mulss xmm4, xmm7
	movss [ebp-0x2c], xmm4
	mulss xmm3, xmm7
	movss [ebp-0x30], xmm3
	mulss xmm2, xmm7
	movss [ebp-0x34], xmm2
	mulss xmm1, xmm7
	movss [ebp-0x38], xmm1
	lea ebx, [esi+0x108]
	lea eax, [ebp-0x24]
	mov [esp+0x8], eax
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], ebx
	movss [ebp-0x58], xmm6
	call _Z14AnglesSubtractPKfS0_Pf
	movss xmm1, dword [ebp-0x3c]
	mulss xmm1, [_float_60_00000000]
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, xmm1
	movaps xmm3, xmm0
	mulss xmm3, [ebp-0x24]
	movaps xmm5, xmm0
	mulss xmm5, [ebp-0x20]
	mulss xmm0, [ebp-0x1c]
	movss [ebp-0x1c], xmm0
	movss xmm6, dword [ebp-0x58]
	movaps xmm4, xmm6
	xorps xmm4, [_data16_80000000]
	movaps xmm0, xmm3
	subss xmm0, xmm6
	pxor xmm2, xmm2
	movaps xmm1, xmm2
	cmpss xmm1, xmm0, 0x6
	movaps xmm0, xmm3
	andps xmm0, xmm1
	andnps xmm1, xmm6
	orps xmm1, xmm0
	movaps xmm0, xmm4
	subss xmm0, xmm3
	movaps xmm3, xmm2
	cmpss xmm3, xmm0, 0x6
	movaps xmm0, xmm3
	andps xmm1, xmm3
	andnps xmm0, xmm4
	orps xmm0, xmm1
	movss [ebp-0x24], xmm0
	movaps xmm0, xmm5
	subss xmm0, xmm6
	movaps xmm1, xmm2
	cmpss xmm1, xmm0, 0x2
	movaps xmm0, xmm1
	andps xmm6, xmm1
	andnps xmm0, xmm5
	orps xmm0, xmm6
	movaps xmm1, xmm4
	subss xmm1, xmm5
	cmpss xmm2, xmm1, 0x6
	andps xmm0, xmm2
	movaps xmm6, xmm2
	andnps xmm6, xmm4
	orps xmm6, xmm0
	movss [ebp-0x20], xmm6
	movss xmm3, dword [ebp-0x38]
	mulss xmm3, [ebp-0x24]
	movss [ebp-0x38], xmm3
	movss xmm0, dword [ebp-0x3c]
	movss [esp+0xc], xmm0
	movss xmm1, dword [ebp-0x40]
	movss [esp+0x8], xmm1
	mov eax, [edi+0x4]
	mov [esp+0x4], eax
	mulss xmm6, [ebp-0x34]
	movss [esp], xmm6
	call _Z9DiffTrackffff
	fstp dword [edi+0x4]
	movss xmm3, dword [ebp-0x3c]
	movss [esp+0xc], xmm3
	movss xmm0, dword [ebp-0x40]
	movss [esp+0x8], xmm0
	mov eax, [edi+0x8]
	mov [esp+0x4], eax
	movss xmm1, dword [ebp-0x38]
	movss [esp], xmm1
	call _Z9DiffTrackffff
	fstp dword [edi+0x8]
	movss xmm0, dword [ebp-0x2c]
	mulss xmm0, [ebp-0x24]
	movss [ebp-0x24], xmm0
	movss xmm3, dword [ebp-0x30]
	mulss xmm3, [ebp-0x20]
	movss [ebp-0x20], xmm3
	movss xmm1, dword [ebp-0x3c]
	movss [esp+0xc], xmm1
	movss xmm3, dword [ebp-0x40]
	movss [esp+0x8], xmm3
	mov edx, [ebp+0x14]
	mov eax, [edx]
	mov [esp+0x4], eax
	movss [esp], xmm0
	call _Z14DiffTrackAngleffff
	mov eax, [ebp+0x14]
	fstp dword [eax]
	movss xmm0, dword [ebp-0x3c]
	movss [esp+0xc], xmm0
	movss xmm1, dword [ebp-0x40]
	movss [esp+0x8], xmm1
	mov edx, [ebp+0x14]
	mov eax, [edx+0x4]
	mov [esp+0x4], eax
	mov eax, [ebp-0x20]
	mov [esp], eax
	call _Z14DiffTrackAngleffff
	mov eax, [ebp+0x14]
	fstp dword [eax+0x4]
	mov eax, [esi+0x108]
	mov edx, [ebp+0xc]
	mov [edx], eax
	mov eax, [ebx+0x4]
	mov [edx+0x4], eax
	mov eax, [ebx+0x8]
	mov [edx+0x8], eax
_Z31BG_CalculateWeaponPosition_SwayPK13playerState_sPfS2_S2_fi_10:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z31BG_CalculateWeaponPosition_SwayPK13playerState_sPfS2_S2_fi_20:
	mov eax, [esi+0xe8]
	mov eax, [eax*4+bg_weaponDefs]
	cvtsi2ss xmm0, edx
	mulss xmm0, [_float_0_00100000]
	movss [ebp-0x3c], xmm0
	mov edx, [eax+0x4ec]
	test edx, edx
	jnz _Z31BG_CalculateWeaponPosition_SwayPK13playerState_sPfS2_S2_fi_50
_Z31BG_CalculateWeaponPosition_SwayPK13playerState_sPfS2_S2_fi_30:
	movss xmm6, dword [eax+0x4ac]
	movss xmm3, dword [eax+0x4b0]
	movss [ebp-0x40], xmm3
	movss xmm4, dword [eax+0x4b4]
	movss xmm3, dword [eax+0x4b8]
	movss xmm2, dword [eax+0x4bc]
	movss xmm1, dword [eax+0x4c0]
	jmp _Z31BG_CalculateWeaponPosition_SwayPK13playerState_sPfS2_S2_fi_60


;BG_PlayerWeaponCountPrimaryTypes(playerState_s const*)
_Z32BG_PlayerWeaponCountPrimaryTypesPK13playerState_s:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x8
	mov eax, [bg_lastParsedWeaponIndex]
	add eax, 0x1
	mov [ebp-0x14], eax
	sub eax, 0x1
	jg _Z32BG_PlayerWeaponCountPrimaryTypesPK13playerState_s_10
	xor edi, edi
	mov eax, edi
	add esp, 0x8
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z32BG_PlayerWeaponCountPrimaryTypesPK13playerState_s_10:
	mov edx, 0x1
	xor edi, edi
	mov ebx, bg_weaponDefs
_Z32BG_PlayerWeaponCountPrimaryTypesPK13playerState_s_30:
	mov eax, [ebx+0x4]
	mov eax, [eax+0x13c]
	test eax, eax
	jnz _Z32BG_PlayerWeaponCountPrimaryTypesPK13playerState_s_20
	mov esi, edx
	sar esi, 0x5
	mov [ebp-0x10], esi
	mov ecx, edx
	and ecx, 0x1f
	mov eax, 0x1
	shl eax, cl
	mov ecx, eax
	mov eax, [ebp+0x8]
	and ecx, [eax+esi*4+0x55c]
	cmp ecx, 0x1
	sbb edi, 0xffffffff
_Z32BG_PlayerWeaponCountPrimaryTypesPK13playerState_s_20:
	add edx, 0x1
	add ebx, 0x4
	cmp [ebp-0x14], edx
	jnz _Z32BG_PlayerWeaponCountPrimaryTypesPK13playerState_s_30
	mov eax, edi
	add esp, 0x8
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;PM_Weapon(pmove_t*, pml_t*)
_Z9PM_WeaponP7pmove_tP5pml_t:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x7c
	mov eax, [ebp+0x8]
	mov [ebp-0x5c], eax
	mov esi, [ebp+0xc]
	mov edi, [eax]
	cmp dword [edi+0x4], 0x6
	jle _Z9PM_WeaponP7pmove_tP5pml_t_10
	mov dword [edi+0xe8], 0x0
_Z9PM_WeaponP7pmove_tP5pml_t_20:
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z9PM_WeaponP7pmove_tP5pml_t_10:
	test byte [edi+0xd], 0x4
	jnz _Z9PM_WeaponP7pmove_tP5pml_t_20
	test dword [edi+0xb0], 0x300
	jnz _Z9PM_WeaponP7pmove_tP5pml_t_20
	mov [esp+0x4], esi
	mov edx, [ebp-0x5c]
	mov [esp], edx
	call _Z25PM_UpdateAimDownSightLerpP7pmove_tP5pml_t
	mov ecx, [ebp-0x5c]
	mov ebx, [ecx]
	mov edx, [ebx+0x10]
	test dl, 0x2
	jz _Z9PM_WeaponP7pmove_tP5pml_t_30
	mov eax, [ebx+0xe0]
_Z9PM_WeaponP7pmove_tP5pml_t_130:
	mov eax, [eax*4+bg_weaponDefs]
	mov [ebp-0x54], eax
	mov eax, player_breath_hold_time
	mov eax, [eax]
	movss xmm1, dword [_float_1000_00000000]
	movss xmm0, dword [eax+0xc]
	mulss xmm0, xmm1
	cvttss2si ecx, xmm0
	mov eax, player_breath_gasp_time
	mov eax, [eax]
	movss xmm0, dword [eax+0xc]
	mulss xmm0, xmm1
	cvttss2si eax, xmm0
	mov [ebp-0x50], eax
	test byte [ebx+0x5fc], 0x10
	jz _Z9PM_WeaponP7pmove_tP5pml_t_40
	mov eax, perk_extraBreath
	mov eax, [eax]
	movaps xmm0, xmm1
	mulss xmm0, [eax+0xc]
	cvttss2si eax, xmm0
	add ecx, eax
_Z9PM_WeaponP7pmove_tP5pml_t_40:
	test ecx, ecx
	jle _Z9PM_WeaponP7pmove_tP5pml_t_50
	movss xmm2, dword [_float_1_00000000]
	ucomiss xmm2, [ebx+0xf4]
	jnz _Z9PM_WeaponP7pmove_tP5pml_t_60
	jp _Z9PM_WeaponP7pmove_tP5pml_t_60
	mov eax, [ebp-0x54]
	cmp dword [eax+0x438], 0x0
	jnz _Z9PM_WeaponP7pmove_tP5pml_t_70
_Z9PM_WeaponP7pmove_tP5pml_t_60:
	and edx, 0xfffffffb
	mov [ebx+0x10], edx
_Z9PM_WeaponP7pmove_tP5pml_t_810:
	test dl, 0x4
	jz _Z9PM_WeaponP7pmove_tP5pml_t_80
	mov eax, [ebx+0x5d8]
	add eax, [esi+0x28]
	mov [ebx+0x5d8], eax
_Z9PM_WeaponP7pmove_tP5pml_t_780:
	mov eax, [ebx+0x5d8]
	test eax, eax
	js _Z9PM_WeaponP7pmove_tP5pml_t_90
_Z9PM_WeaponP7pmove_tP5pml_t_1450:
	test dl, 0x4
	jz _Z9PM_WeaponP7pmove_tP5pml_t_100
	cmp ecx, [ebx+0x5d8]
	jl _Z9PM_WeaponP7pmove_tP5pml_t_110
	mov eax, player_breath_hold_lerp
	mov eax, [eax]
	mov edx, [eax+0xc]
	movss xmm1, dword [_float__1_00000000]
	jmp _Z9PM_WeaponP7pmove_tP5pml_t_120
_Z9PM_WeaponP7pmove_tP5pml_t_30:
	mov eax, [ebx+0xe8]
	jmp _Z9PM_WeaponP7pmove_tP5pml_t_130
_Z9PM_WeaponP7pmove_tP5pml_t_100:
	add ecx, [ebp-0x50]
_Z9PM_WeaponP7pmove_tP5pml_t_800:
	mov eax, player_breath_gasp_lerp
	mov eax, [eax]
	mov edx, [eax+0xc]
	cvtsi2ss xmm1, dword [ebx+0x5d8]
	cvtsi2ss xmm0, ecx
	divss xmm1, xmm0
	mov eax, player_breath_gasp_scale
	mov eax, [eax]
	movss xmm0, dword [eax+0xc]
	subss xmm0, xmm2
	mulss xmm1, xmm0
	addss xmm1, xmm2
	subss xmm1, xmm2
_Z9PM_WeaponP7pmove_tP5pml_t_120:
	mov eax, [esi+0x24]
	mov [esp+0xc], eax
	mov [esp+0x8], edx
	mov eax, [ebx+0x5d4]
	mov [esp+0x4], eax
	mulss xmm1, [ebx+0xf4]
	addss xmm1, xmm2
	movss [esp], xmm1
	call _Z9DiffTrackffff
	fstp dword [ebx+0x5d4]
_Z9PM_WeaponP7pmove_tP5pml_t_1220:
	test byte [edi+0x10], 0x2
	jz _Z9PM_WeaponP7pmove_tP5pml_t_140
	mov ebx, [edi+0xe0]
_Z9PM_WeaponP7pmove_tP5pml_t_370:
	mov edx, [ebx*4+bg_weaponDefs]
	cmp dword [edx+0x12c], 0x1
	jz _Z9PM_WeaponP7pmove_tP5pml_t_150
_Z9PM_WeaponP7pmove_tP5pml_t_360:
	mov edx, [ebp-0x5c]
	mov ebx, [edx]
	mov eax, [ebx+0xe8]
	mov eax, [eax*4+bg_weaponDefs]
	mov eax, [eax+0x140]
	test eax, eax
	jz _Z9PM_WeaponP7pmove_tP5pml_t_160
	sub eax, 0x1
	jz _Z9PM_WeaponP7pmove_tP5pml_t_160
	test byte [edx+0x8], 0x1
	jnz _Z9PM_WeaponP7pmove_tP5pml_t_170
_Z9PM_WeaponP7pmove_tP5pml_t_160:
	mov eax, [ebx+0xe8]
	mov eax, [eax*4+bg_weaponDefs]
	mov [ebp-0x44], eax
	mov eax, [ebx+0x50]
	test eax, eax
	jle _Z9PM_WeaponP7pmove_tP5pml_t_180
	sub eax, [esi+0x28]
	mov edx, 0x0
	cmovs eax, edx
	mov [ebx+0x50], eax
_Z9PM_WeaponP7pmove_tP5pml_t_180:
	mov edx, [ebx+0xec]
	cmp edx, 0x7
	jz _Z9PM_WeaponP7pmove_tP5pml_t_190
	cmp edx, 0x9
	jz _Z9PM_WeaponP7pmove_tP5pml_t_190
	cmp edx, 0xb
	jz _Z9PM_WeaponP7pmove_tP5pml_t_190
	cmp edx, 0xa
	jz _Z9PM_WeaponP7pmove_tP5pml_t_190
	cmp edx, 0x8
	jz _Z9PM_WeaponP7pmove_tP5pml_t_190
_Z9PM_WeaponP7pmove_tP5pml_t_330:
	lea eax, [edx-0x5]
	cmp eax, 0x1
	jbe _Z9PM_WeaponP7pmove_tP5pml_t_200
_Z9PM_WeaponP7pmove_tP5pml_t_1490:
	mov edx, [esi+0x28]
	mov eax, [ebx+0x3c]
_Z9PM_WeaponP7pmove_tP5pml_t_350:
	test eax, eax
	jz _Z9PM_WeaponP7pmove_tP5pml_t_210
	sub eax, edx
	mov [ebx+0x3c], eax
	test eax, eax
	jle _Z9PM_WeaponP7pmove_tP5pml_t_220
_Z9PM_WeaponP7pmove_tP5pml_t_210:
	mov eax, [ebx+0x40]
	test eax, eax
	jz _Z9PM_WeaponP7pmove_tP5pml_t_230
	sub eax, edx
	mov [ebx+0x40], eax
	test eax, eax
	jle _Z9PM_WeaponP7pmove_tP5pml_t_240
_Z9PM_WeaponP7pmove_tP5pml_t_230:
	mov dword [ebp-0x58], 0x0
_Z9PM_WeaponP7pmove_tP5pml_t_1520:
	mov ecx, [edi+0xe8]
	test ecx, ecx
	jz _Z9PM_WeaponP7pmove_tP5pml_t_250
	mov eax, [ecx*4+bg_weaponDefs]
	mov eax, [eax+0x140]
	test eax, eax
	jz _Z9PM_WeaponP7pmove_tP5pml_t_250
	mov edx, [edi+0xf0]
	test edx, edx
	jz _Z9PM_WeaponP7pmove_tP5pml_t_250
	cmp eax, 0x2
	jz _Z9PM_WeaponP7pmove_tP5pml_t_260
	jg _Z9PM_WeaponP7pmove_tP5pml_t_270
	sub eax, 0x1
	jnz _Z9PM_WeaponP7pmove_tP5pml_t_280
_Z9PM_WeaponP7pmove_tP5pml_t_250:
	mov edx, [ebp-0x5c]
	mov ebx, [edx]
	test byte [edx+0x2a], 0x4
	jnz _Z9PM_WeaponP7pmove_tP5pml_t_290
	test byte [edx+0xa], 0x4
	jz _Z9PM_WeaponP7pmove_tP5pml_t_300
	mov eax, [ebx+0x10]
	test al, 0x40
	jz _Z9PM_WeaponP7pmove_tP5pml_t_310
	and eax, 0xffffffbf
	mov [ebx+0x10], eax
	mov dword [esp+0x4], 0x41
	mov [esp], ebx
	call _Z11PM_AddEventP13playerState_si
	mov ecx, [ebp-0x5c]
	mov ebx, [ecx]
	mov eax, ecx
	jmp _Z9PM_WeaponP7pmove_tP5pml_t_320
_Z9PM_WeaponP7pmove_tP5pml_t_190:
	test byte [ebx+0x5fc], 0x4
	jz _Z9PM_WeaponP7pmove_tP5pml_t_330
	mov eax, perk_weapReloadMultiplier
	mov eax, [eax]
	movss xmm1, dword [eax+0xc]
	ucomiss xmm1, [_float_0_00000000]
	jnz _Z9PM_WeaponP7pmove_tP5pml_t_340
	jp _Z9PM_WeaponP7pmove_tP5pml_t_340
_Z9PM_WeaponP7pmove_tP5pml_t_1510:
	mov edx, [ebx+0x40]
	mov eax, [ebx+0x3c]
	cmp edx, eax
	jg _Z9PM_WeaponP7pmove_tP5pml_t_350
	mov edx, eax
	jmp _Z9PM_WeaponP7pmove_tP5pml_t_350
_Z9PM_WeaponP7pmove_tP5pml_t_140:
	mov ebx, [edi+0xe8]
	test ebx, ebx
	jz _Z9PM_WeaponP7pmove_tP5pml_t_360
	jmp _Z9PM_WeaponP7pmove_tP5pml_t_370
_Z9PM_WeaponP7pmove_tP5pml_t_290:
	mov eax, edx
_Z9PM_WeaponP7pmove_tP5pml_t_320:
	cmp byte [eax+0x18], 0x0
	jz _Z9PM_WeaponP7pmove_tP5pml_t_380
	mov edx, [ebx+0xec]
	lea eax, [edx-0x5]
	cmp eax, 0x1
	jbe _Z9PM_WeaponP7pmove_tP5pml_t_390
	lea eax, [edx-0xc]
	cmp eax, 0x2
	jbe _Z9PM_WeaponP7pmove_tP5pml_t_390
	lea eax, [edx-0x1]
	cmp eax, 0x3
	jbe _Z9PM_WeaponP7pmove_tP5pml_t_390
	lea eax, [edx-0xf]
	cmp eax, 0x5
	jbe _Z9PM_WeaponP7pmove_tP5pml_t_390
	lea eax, [edx-0x19]
	cmp eax, 0x1
	jbe _Z9PM_WeaponP7pmove_tP5pml_t_390
	cmp word [ebx+0xc], 0x0
	jns _Z9PM_WeaponP7pmove_tP5pml_t_400
	lea eax, [edx-0x16]
	cmp eax, 0x2
	jbe _Z9PM_WeaponP7pmove_tP5pml_t_390
	mov eax, [ebx+0xe8]
	mov eax, [eax*4+bg_weaponDefs]
	mov dword [ebx+0xec], 0x16
	mov eax, [eax+0x3c8]
	mov [ebx+0x3c], eax
	mov dword [ebx+0x40], 0x0
	cmp dword [ebx+0x4], 0x6
	jg _Z9PM_WeaponP7pmove_tP5pml_t_390
	mov eax, [ebx+0x624]
	and eax, 0x200
	xor ah, 0x2
	or eax, 0x17
	mov [ebx+0x624], eax
	mov eax, [ebp-0x5c]
	jmp _Z9PM_WeaponP7pmove_tP5pml_t_380
_Z9PM_WeaponP7pmove_tP5pml_t_390:
	mov eax, [ebp-0x5c]
_Z9PM_WeaponP7pmove_tP5pml_t_380:
	call _Z25PM_Weapon_CheckForOffHandP7pmove_t
	mov edx, [ebp-0x5c]
	mov ebx, [edx]
	mov edx, [ebx+0xec]
	lea eax, [edx-0xc]
	cmp eax, 0x8
	jbe _Z9PM_WeaponP7pmove_tP5pml_t_410
	lea eax, [edx-0x19]
	cmp eax, 0x1
	jbe _Z9PM_WeaponP7pmove_tP5pml_t_410
	mov ecx, [ebx+0x3c]
	test ecx, ecx
	jz _Z9PM_WeaponP7pmove_tP5pml_t_420
	cmp edx, 0x7
	jz _Z9PM_WeaponP7pmove_tP5pml_t_420
	cmp edx, 0x9
	jz _Z9PM_WeaponP7pmove_tP5pml_t_420
	cmp edx, 0xb
	jz _Z9PM_WeaponP7pmove_tP5pml_t_420
	cmp edx, 0xa
	jz _Z9PM_WeaponP7pmove_tP5pml_t_420
	cmp edx, 0x8
	jz _Z9PM_WeaponP7pmove_tP5pml_t_420
	cmp edx, 0x6
	jz _Z9PM_WeaponP7pmove_tP5pml_t_420
	lea eax, [edx-0x5]
	cmp eax, 0x1
	jbe _Z9PM_WeaponP7pmove_tP5pml_t_410
	mov eax, [ebx+0x40]
	test eax, eax
	jz _Z9PM_WeaponP7pmove_tP5pml_t_420
_Z9PM_WeaponP7pmove_tP5pml_t_410:
	mov esi, [ebp-0x5c]
	mov [esp], esi
	call _Z24PM_Weapon_CheckForReloadP7pmove_t
	mov ebx, [esi]
	mov eax, [ebx+0xe8]
	mov ecx, [eax*4+bg_weaponDefs]
	mov edx, [ebx+0xec]
	lea eax, [edx-0xc]
	cmp eax, 0x8
	jbe _Z9PM_WeaponP7pmove_tP5pml_t_430
	lea eax, [edx-0x19]
	cmp eax, 0x1
	jbe _Z9PM_WeaponP7pmove_tP5pml_t_430
	mov eax, [ecx+0x354]
	test eax, eax
	jz _Z9PM_WeaponP7pmove_tP5pml_t_430
	mov eax, [ebp-0x58]
	test eax, eax
	jnz _Z9PM_WeaponP7pmove_tP5pml_t_430
	mov eax, [ebx+0x40]
	test eax, eax
	jz _Z9PM_WeaponP7pmove_tP5pml_t_440
	cmp edx, 0x7
	jz _Z9PM_WeaponP7pmove_tP5pml_t_440
	cmp edx, 0x9
	jz _Z9PM_WeaponP7pmove_tP5pml_t_440
	cmp edx, 0xb
	jz _Z9PM_WeaponP7pmove_tP5pml_t_440
	cmp edx, 0xa
	jz _Z9PM_WeaponP7pmove_tP5pml_t_440
	cmp edx, 0x8
	jnz _Z9PM_WeaponP7pmove_tP5pml_t_430
_Z9PM_WeaponP7pmove_tP5pml_t_440:
	mov eax, [ebp-0x5c]
	test byte [eax+0x8], 0x4
	jz _Z9PM_WeaponP7pmove_tP5pml_t_430
	test byte [eax+0x28], 0x4
	jnz _Z9PM_WeaponP7pmove_tP5pml_t_430
	movss xmm0, dword [ebx+0xf4]
	ucomiss xmm0, [_float_0_00000000]
	jbe _Z9PM_WeaponP7pmove_tP5pml_t_450
	mov esi, [ecx+0x438]
	test esi, esi
	jnz _Z9PM_WeaponP7pmove_tP5pml_t_430
_Z9PM_WeaponP7pmove_tP5pml_t_450:
	lea eax, [edx-0x1]
	cmp eax, 0x3
	jbe _Z9PM_WeaponP7pmove_tP5pml_t_430
	mov edx, [ebp-0x5c]
	mov [esp], edx
	call _Z19PM_MeleeChargeStartP7pmove_t
	mov eax, [ebx+0xe8]
	mov edx, [eax*4+bg_weaponDefs]
	test byte [ebx+0xe], 0x2
	jz _Z9PM_WeaponP7pmove_tP5pml_t_460
	mov eax, [edx+0x70]
	test eax, eax
	jz _Z9PM_WeaponP7pmove_tP5pml_t_470
	cmp byte [eax], 0x0
	jz _Z9PM_WeaponP7pmove_tP5pml_t_470
	mov ecx, [edx+0x384]
	test ecx, ecx
	jle _Z9PM_WeaponP7pmove_tP5pml_t_470
	mov eax, 0x1
_Z9PM_WeaponP7pmove_tP5pml_t_2230:
	test eax, eax
	jz _Z9PM_WeaponP7pmove_tP5pml_t_460
	mov eax, [edx+0x384]
	mov [ebx+0x3c], eax
	mov eax, [edx+0x364]
	mov [ebx+0x40], eax
	cmp dword [ebx+0x4], 0x6
	jg _Z9PM_WeaponP7pmove_tP5pml_t_480
	mov eax, [ebx+0x624]
	and eax, 0x200
	xor ah, 0x2
	or eax, 0x9
	mov [ebx+0x624], eax
_Z9PM_WeaponP7pmove_tP5pml_t_480:
	mov eax, 0x1
_Z9PM_WeaponP7pmove_tP5pml_t_2160:
	mov edx, [edx+0x304]
	test edx, edx
	jz _Z9PM_WeaponP7pmove_tP5pml_t_490
	test al, al
	jz _Z9PM_WeaponP7pmove_tP5pml_t_500
	mov dword [esp+0xc], 0x1
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x13
	mov [esp], ebx
	call _Z18BG_AnimScriptEventP13playerState_s22scriptAnimEventTypes_tii
_Z9PM_WeaponP7pmove_tP5pml_t_2220:
	mov dword [ebx+0xec], 0xc
	mov dword [esp+0x4], 0x1e
	mov [esp], ebx
	call _Z11PM_AddEventP13playerState_si
	mov [esp], ebx
	call _Z27PM_SetProneMovementOverrideP13playerState_s
	mov ecx, [ebp-0x5c]
	mov ebx, [ecx]
_Z9PM_WeaponP7pmove_tP5pml_t_430:
	mov eax, [ebx+0xe8]
	test eax, eax
	jz _Z9PM_WeaponP7pmove_tP5pml_t_510
	mov edx, [eax*4+bg_weaponDefs]
	cmp dword [edx+0x12c], 0x1
	jz _Z9PM_WeaponP7pmove_tP5pml_t_520
_Z9PM_WeaponP7pmove_tP5pml_t_510:
	mov edx, [ebx+0xec]
_Z9PM_WeaponP7pmove_tP5pml_t_1480:
	cmp edx, 0x10
	jz _Z9PM_WeaponP7pmove_tP5pml_t_530
	mov eax, [ebx+0xe8]
	test eax, eax
	jz _Z9PM_WeaponP7pmove_tP5pml_t_540
	mov eax, [eax*4+bg_weaponDefs]
	cmp dword [eax+0x12c], 0x1
	jz _Z9PM_WeaponP7pmove_tP5pml_t_550
_Z9PM_WeaponP7pmove_tP5pml_t_540:
	mov ecx, [edi+0xe8]
_Z9PM_WeaponP7pmove_tP5pml_t_280:
	mov esi, [ecx*4+bg_weaponDefs]
	mov edx, [edi+0xec]
	lea eax, [edx-0xf]
	cmp eax, 0x5
	jbe _Z9PM_WeaponP7pmove_tP5pml_t_560
	mov ebx, [esi+0x4e8]
	test ebx, ebx
	jz _Z9PM_WeaponP7pmove_tP5pml_t_560
	mov eax, ecx
	sar eax, 0x5
	lea ebx, [eax*4]
	and ecx, 0x1f
	mov eax, 0x1
	shl eax, cl
	test [edi+ebx+0x57c], eax
	jz _Z9PM_WeaponP7pmove_tP5pml_t_560
	cmp edx, 0x6
	jz _Z9PM_WeaponP7pmove_tP5pml_t_570
_Z9PM_WeaponP7pmove_tP5pml_t_1770:
	mov eax, [edi+0x3c]
	test eax, eax
	jz _Z9PM_WeaponP7pmove_tP5pml_t_580
	lea eax, [edx-0x5]
	cmp eax, 0x1
	jbe _Z9PM_WeaponP7pmove_tP5pml_t_560
	lea eax, [edx-0xc]
	cmp eax, 0x2
	jbe _Z9PM_WeaponP7pmove_tP5pml_t_560
	mov eax, [edi+0x40]
	test eax, eax
	jnz _Z9PM_WeaponP7pmove_tP5pml_t_560
_Z9PM_WeaponP7pmove_tP5pml_t_580:
	cmp edx, 0x6
	jz _Z9PM_WeaponP7pmove_tP5pml_t_590
	test edx, edx
	jnz _Z9PM_WeaponP7pmove_tP5pml_t_560
	movss xmm0, dword [edi+0xf4]
	ucomiss xmm0, [_float_0_75000000]
	jbe _Z9PM_WeaponP7pmove_tP5pml_t_600
	cmp dword [edi+0x4], 0x6
	jg _Z9PM_WeaponP7pmove_tP5pml_t_610
	mov eax, [edi+0x624]
	and eax, 0x200
	xor ah, 0x2
	or eax, 0x7
	mov [edi+0x624], eax
_Z9PM_WeaponP7pmove_tP5pml_t_610:
	mov dword [edi+0xec], 0x6
	mov eax, [esi+0x370]
	mov [edi+0x3c], eax
	mov eax, [esi+0x374]
	test eax, eax
	jz _Z9PM_WeaponP7pmove_tP5pml_t_620
	cmp eax, [esi+0x370]
	jge _Z9PM_WeaponP7pmove_tP5pml_t_620
	mov [edi+0x40], eax
_Z9PM_WeaponP7pmove_tP5pml_t_1960:
	mov dword [esp+0x4], 0x1c
	mov [esp], edi
	call _Z11PM_AddEventP13playerState_si
_Z9PM_WeaponP7pmove_tP5pml_t_560:
	mov edx, [edi+0xc]
	test dl, 0x1
	jz _Z9PM_WeaponP7pmove_tP5pml_t_630
	mov esi, [ebp-0x5c]
	cmp word [esi+0x1a], 0x0
	jnz _Z9PM_WeaponP7pmove_tP5pml_t_640
_Z9PM_WeaponP7pmove_tP5pml_t_630:
	mov eax, [edi+0xec]
	sub eax, 0xc
	cmp eax, 0x2
	ja _Z9PM_WeaponP7pmove_tP5pml_t_650
_Z9PM_WeaponP7pmove_tP5pml_t_790:
	mov dword [edi+0x628], 0x437f0000
_Z9PM_WeaponP7pmove_tP5pml_t_650:
	mov esi, [ebp-0x58]
	test esi, esi
	jnz _Z9PM_WeaponP7pmove_tP5pml_t_660
	mov ebx, [edi+0x3c]
	test ebx, ebx
	jnz _Z9PM_WeaponP7pmove_tP5pml_t_20
	mov ecx, [edi+0x40]
	test ecx, ecx
	jnz _Z9PM_WeaponP7pmove_tP5pml_t_20
_Z9PM_WeaponP7pmove_tP5pml_t_660:
	mov eax, [edi+0xec]
	cmp eax, 0x1a
	ja _Z9PM_WeaponP7pmove_tP5pml_t_670
	jmp dword [eax*4+_Z9PM_WeaponP7pmove_tP5pml_t_jumptab_0]
_Z9PM_WeaponP7pmove_tP5pml_t_420:
	mov [esp], ebx
	call _Z23Mantle_IsWeaponInactiveP13playerState_s
	test al, al
	jnz _Z9PM_WeaponP7pmove_tP5pml_t_680
	mov edx, [ebx+0xc]
	test dl, 0x8
	jnz _Z9PM_WeaponP7pmove_tP5pml_t_680
	mov ecx, [ebx+0x10]
	test cl, cl
	jns _Z9PM_WeaponP7pmove_tP5pml_t_690
	mov eax, [ebx+0xe8]
	test eax, eax
	jz _Z9PM_WeaponP7pmove_tP5pml_t_410
_Z9PM_WeaponP7pmove_tP5pml_t_1930:
	xor ecx, ecx
	xor edx, edx
	mov eax, ebx
	call _Z20PM_BeginWeaponChangeP13playerState_sjh
	jmp _Z9PM_WeaponP7pmove_tP5pml_t_410
_Z9PM_WeaponP7pmove_tP5pml_t_670:
	mov esi, [edi+0xe8]
	test esi, esi
	jz _Z9PM_WeaponP7pmove_tP5pml_t_20
	mov ecx, [ebp-0x5c]
	mov esi, [ecx]
	mov eax, [esi+0xe8]
	mov [ebp-0x24], eax
	mov ecx, [eax*4+bg_weaponDefs]
	mov eax, [ebp-0x5c]
	mov eax, [eax+0x8]
	mov [ebp-0x28], eax
	mov eax, [ecx+0x12c]
	mov [ebp-0x20], eax
	sub eax, 0x1
	jz _Z9PM_WeaponP7pmove_tP5pml_t_700
_Z9PM_WeaponP7pmove_tP5pml_t_830:
	mov eax, 0x1
_Z9PM_WeaponP7pmove_tP5pml_t_840:
	test [ebp-0x28], eax
	setnz bl
	mov eax, [ecx+0x5b8]
	test eax, eax
	jz _Z9PM_WeaponP7pmove_tP5pml_t_710
	cmp dword [esi+0x70], 0x3ff
	mov eax, 0x0
	cmovz ebx, eax
_Z9PM_WeaponP7pmove_tP5pml_t_710:
	mov eax, [ebp-0x58]
	test eax, eax
	jnz _Z9PM_WeaponP7pmove_tP5pml_t_720
	mov eax, [ebp-0x24]
	test eax, eax
	jz _Z9PM_WeaponP7pmove_tP5pml_t_730
	mov eax, [ecx+0x140]
	mov [ebp-0x6c], eax
	test eax, eax
	jz _Z9PM_WeaponP7pmove_tP5pml_t_730
	mov eax, [esi+0xf0]
	mov [ebp-0x1c], eax
	test eax, eax
	jz _Z9PM_WeaponP7pmove_tP5pml_t_730
	cmp dword [ebp-0x6c], 0x2
	jz _Z9PM_WeaponP7pmove_tP5pml_t_740
	jg _Z9PM_WeaponP7pmove_tP5pml_t_750
	cmp dword [ebp-0x6c], 0x1
	jz _Z9PM_WeaponP7pmove_tP5pml_t_730
_Z9PM_WeaponP7pmove_tP5pml_t_720:
	mov eax, 0x1
_Z9PM_WeaponP7pmove_tP5pml_t_1190:
	test bl, bl
	jnz _Z9PM_WeaponP7pmove_tP5pml_t_760
	test al, al
	jnz _Z9PM_WeaponP7pmove_tP5pml_t_760
	cmp dword [esi+0xec], 0x5
	jz _Z9PM_WeaponP7pmove_tP5pml_t_770
_Z9PM_WeaponP7pmove_tP5pml_t_1980:
	mov dword [esi+0xec], 0x0
	jmp _Z9PM_WeaponP7pmove_tP5pml_t_20
_Z9PM_WeaponP7pmove_tP5pml_t_80:
	mov eax, [ebx+0x5d8]
	sub eax, [esi+0x28]
	mov [ebx+0x5d8], eax
	jmp _Z9PM_WeaponP7pmove_tP5pml_t_780
_Z9PM_WeaponP7pmove_tP5pml_t_640:
	movss xmm0, dword [_float_1_00000000]
	ucomiss xmm0, [edi+0xf4]
	jnz _Z9PM_WeaponP7pmove_tP5pml_t_790
	jnp _Z9PM_WeaponP7pmove_tP5pml_t_630
	jmp _Z9PM_WeaponP7pmove_tP5pml_t_790
_Z9PM_WeaponP7pmove_tP5pml_t_300:
	mov eax, [ebp-0x5c]
	jmp _Z9PM_WeaponP7pmove_tP5pml_t_320
_Z9PM_WeaponP7pmove_tP5pml_t_110:
	add ecx, [ebp-0x50]
	mov [ebx+0x5d8], ecx
	and edx, 0xfffffffb
	mov [ebx+0x10], edx
	jmp _Z9PM_WeaponP7pmove_tP5pml_t_800
_Z9PM_WeaponP7pmove_tP5pml_t_70:
	cmp dword [eax+0x130], 0x9
	jz _Z9PM_WeaponP7pmove_tP5pml_t_60
	mov eax, [ebp-0x5c]
	test byte [eax+0x9], 0x20
	jz _Z9PM_WeaponP7pmove_tP5pml_t_60
	mov eax, [ebx+0x5d8]
	test eax, eax
	jnz _Z9PM_WeaponP7pmove_tP5pml_t_810
	or edx, 0x4
	mov [ebx+0x10], edx
	jmp _Z9PM_WeaponP7pmove_tP5pml_t_810
_Z9PM_WeaponP7pmove_tP5pml_t_170:
	test byte [edx+0x28], 0x1
	jnz _Z9PM_WeaponP7pmove_tP5pml_t_160
	or dword [ebx+0x10], 0x100
	mov ebx, [edx]
	jmp _Z9PM_WeaponP7pmove_tP5pml_t_160
_Z9PM_WeaponP7pmove_tP5pml_t_680:
	mov eax, [ebx+0xe8]
	test eax, eax
	jz _Z9PM_WeaponP7pmove_tP5pml_t_410
	mov ecx, 0x1
	xor edx, edx
	mov eax, ebx
	call _Z20PM_BeginWeaponChangeP13playerState_sjh
	jmp _Z9PM_WeaponP7pmove_tP5pml_t_410
_Z9PM_WeaponP7pmove_tP5pml_t_340:
	cvtsi2ss xmm0, dword [esi+0x28]
	divss xmm0, xmm1
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x60]
	cvttss2si edx, [ebp-0x60]
	mov eax, [ebx+0x3c]
	jmp _Z9PM_WeaponP7pmove_tP5pml_t_350
_Z9PM_WeaponP7pmove_tP5pml_t_550:
	cmp edx, 0x5
	jnz _Z9PM_WeaponP7pmove_tP5pml_t_540
	mov esi, [eax+0x5b4]
	test esi, esi
	jz _Z9PM_WeaponP7pmove_tP5pml_t_540
	mov ecx, [ebp-0x5c]
	test byte [ecx+0x8], 0x1
	jnz _Z9PM_WeaponP7pmove_tP5pml_t_540
	and dword [ebx+0x10], 0xfffffffd
	and dword [ebx+0xc], 0xfffffdff
	mov dword [ebx+0x3c], 0x0
	mov dword [ebx+0x40], 0x0
	mov dword [ebx+0xec], 0x0
	cmp dword [ebx+0x4], 0x6
	jg _Z9PM_WeaponP7pmove_tP5pml_t_820
	mov eax, [ebx+0x624]
	and eax, 0x200
	xor ah, 0x2
	mov [ebx+0x624], eax
_Z9PM_WeaponP7pmove_tP5pml_t_820:
	cmp dword [ebx+0x4], 0x6
	jg _Z9PM_WeaponP7pmove_tP5pml_t_540
	mov eax, [ebx+0x624]
	and eax, 0x200
	xor ah, 0x2
	or eax, 0x1
	mov [ebx+0x624], eax
	mov ecx, [edi+0xe8]
	jmp _Z9PM_WeaponP7pmove_tP5pml_t_280
_Z9PM_WeaponP7pmove_tP5pml_t_700:
	mov ebx, [ecx+0x5a8]
	test ebx, ebx
	jz _Z9PM_WeaponP7pmove_tP5pml_t_830
	mov eax, 0x80000
	jmp _Z9PM_WeaponP7pmove_tP5pml_t_840
_Z9PM_WeaponP7pmove_tP5pml_t_1070:
	and dword [edi+0x10], 0xfffffffd
	and dh, 0xfd
	mov [edi+0xc], edx
	mov dword [edi+0x3c], 0x0
	mov dword [edi+0x40], 0x0
_Z9PM_WeaponP7pmove_tP5pml_t_850:
	mov dword [edi+0xec], 0x0
	cmp dword [edi+0x4], 0x6
	jg _Z9PM_WeaponP7pmove_tP5pml_t_20
	mov eax, [edi+0x624]
	and eax, 0x200
	xor ah, 0x2
	mov [edi+0x624], eax
	jmp _Z9PM_WeaponP7pmove_tP5pml_t_20
_Z9PM_WeaponP7pmove_tP5pml_t_2420:
	mov eax, [edi+0x3c]
	test eax, eax
	jz _Z9PM_WeaponP7pmove_tP5pml_t_850
	jmp _Z9PM_WeaponP7pmove_tP5pml_t_20
_Z9PM_WeaponP7pmove_tP5pml_t_2410:
	mov dword [edi+0xec], 0x17
	mov dword [edi+0x3c], 0x0
	mov dword [edi+0x40], 0x0
	cmp dword [edi+0x4], 0x6
	jg _Z9PM_WeaponP7pmove_tP5pml_t_20
	mov eax, [edi+0x624]
	and eax, 0x200
	xor ah, 0x2
	or eax, 0x18
	mov [edi+0x624], eax
	jmp _Z9PM_WeaponP7pmove_tP5pml_t_20
_Z9PM_WeaponP7pmove_tP5pml_t_2310:
	mov ecx, [ebp-0x5c]
	mov ebx, [ecx]
	mov ecx, [ebx+0xe8]
	mov edi, [ecx*4+bg_weaponDefs]
	mov edx, [ebp-0x58]
	test edx, edx
	jnz _Z9PM_WeaponP7pmove_tP5pml_t_860
	mov eax, [ebx+0x3c]
	test eax, eax
	jnz _Z9PM_WeaponP7pmove_tP5pml_t_20
_Z9PM_WeaponP7pmove_tP5pml_t_2120:
	mov eax, [edi+0x530]
	test eax, eax
	jz _Z9PM_WeaponP7pmove_tP5pml_t_870
	mov esi, [ebp-0x5c]
	test byte [esi+0x8], 0x1
	jz _Z9PM_WeaponP7pmove_tP5pml_t_870
	mov dword [ebx+0xec], 0x8
_Z9PM_WeaponP7pmove_tP5pml_t_870:
	mov edx, ecx
	sar edx, 0x5
	and ecx, 0x1f
	mov eax, 0xfffffffe
	rol eax, cl
	and [ebx+edx*4+0x57c], eax
	mov eax, [edi+0x530]
	test eax, eax
	jz _Z9PM_WeaponP7pmove_tP5pml_t_880
	cmp dword [ebx+0xec], 0x8
	jz _Z9PM_WeaponP7pmove_tP5pml_t_890
	mov eax, [ebx+0xe8]
	mov edx, [eax*4+bg_weaponDefs]
	mov ecx, [edx+0x330]
	mov eax, [edx+0x328]
	mov eax, [ebx+eax*4+0x15c]
	test eax, eax
	jz _Z9PM_WeaponP7pmove_tP5pml_t_890
	mov esi, [ebx+ecx*4+0x35c]
	mov ecx, [edx+0x338]
	cmp esi, ecx
	jge _Z9PM_WeaponP7pmove_tP5pml_t_890
	mov eax, [edx+0x52c]
	test eax, eax
	jz _Z9PM_WeaponP7pmove_tP5pml_t_900
	mov eax, [edx+0x534]
	test eax, eax
	jz _Z9PM_WeaponP7pmove_tP5pml_t_910
	cmp ecx, eax
	jg _Z9PM_WeaponP7pmove_tP5pml_t_920
_Z9PM_WeaponP7pmove_tP5pml_t_910:
	test esi, esi
	jz _Z9PM_WeaponP7pmove_tP5pml_t_900
_Z9PM_WeaponP7pmove_tP5pml_t_890:
	mov esi, [edi+0x3a0]
	test esi, esi
	jz _Z9PM_WeaponP7pmove_tP5pml_t_880
	mov dword [ebx+0xec], 0xb
	cmp dword [ebx+0x4], 0x6
	jg _Z9PM_WeaponP7pmove_tP5pml_t_930
	mov eax, [ebx+0x624]
	and eax, 0x200
	xor ah, 0x2
	or eax, 0x10
	mov [ebx+0x624], eax
_Z9PM_WeaponP7pmove_tP5pml_t_930:
	mov eax, [edi+0x3a0]
_Z9PM_WeaponP7pmove_tP5pml_t_1060:
	mov [ebx+0x3c], eax
	mov dword [ebp+0xc], 0x12
	mov [ebp+0x8], ebx
_Z9PM_WeaponP7pmove_tP5pml_t_1090:
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z11PM_AddEventP13playerState_si
_Z9PM_WeaponP7pmove_tP5pml_t_2370:
	mov eax, [ebp-0x5c]
	mov ebx, [eax]
	mov [esp+0x8], ebx
	mov eax, [ebx+0xe0]
	mov [esp+0x4], eax
	mov dword [esp], 0x21
	call _Z35BG_AddPredictableEventToPlayerstateijP13playerState_s
	cmp dword [ebx+0x48], 0x3ff
	jnz _Z9PM_WeaponP7pmove_tP5pml_t_940
	mov eax, [ebx+0xe0]
	mov eax, [eax*4+bg_weaponDefs]
	mov ecx, [eax+0x330]
	mov eax, [eax+0x328]
	mov edx, [ebx+ecx*4+0x35c]
	mov eax, [ebx+eax*4+0x15c]
	add eax, edx
	test eax, eax
	jz _Z9PM_WeaponP7pmove_tP5pml_t_950
	mov eax, player_sustainAmmo
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z9PM_WeaponP7pmove_tP5pml_t_940
	test edx, edx
	jle _Z9PM_WeaponP7pmove_tP5pml_t_960
	lea eax, [edx-0x1]
_Z9PM_WeaponP7pmove_tP5pml_t_2240:
	mov [ebx+ecx*4+0x35c], eax
_Z9PM_WeaponP7pmove_tP5pml_t_940:
	mov dword [ebx+0xec], 0x13
	or dword [ebx+0x10], 0x2
	jmp _Z9PM_WeaponP7pmove_tP5pml_t_20
_Z9PM_WeaponP7pmove_tP5pml_t_2380:
	mov eax, [ebp-0x5c]
	mov edx, [eax]
	mov eax, [edx+0xe0]
	mov ecx, [eax*4+bg_weaponDefs]
	mov eax, [ecx+0x5b4]
	test eax, eax
	jnz _Z9PM_WeaponP7pmove_tP5pml_t_970
	mov esi, [ebp-0x5c]
	test word [esi+0x28], 0xc000
	jz _Z9PM_WeaponP7pmove_tP5pml_t_970
	test word [esi+0x8], 0xc000
	jz _Z9PM_WeaponP7pmove_tP5pml_t_970
	mov dword [edx+0x40], 0x1
	jmp _Z9PM_WeaponP7pmove_tP5pml_t_20
_Z9PM_WeaponP7pmove_tP5pml_t_2390:
	mov eax, [edi+0xe8]
	test eax, eax
	jnz _Z9PM_WeaponP7pmove_tP5pml_t_980
	mov dword [edi+0x3c], 0x0
	mov dword [edi+0x40], 0x1
_Z9PM_WeaponP7pmove_tP5pml_t_2010:
	mov dword [edi+0x4c], 0x0
	mov dword [edi+0x48], 0x3ff
	mov dword [edi+0xec], 0x14
	and dword [edi+0x10], 0xfffffffd
	and dh, 0xfd
	mov [edi+0xc], edx
	jmp _Z9PM_WeaponP7pmove_tP5pml_t_20
_Z9PM_WeaponP7pmove_tP5pml_t_2320:
	mov eax, [ebp-0x5c]
	mov ebx, [eax]
	mov ecx, [ebx+0xe8]
	mov ecx, [ecx*4+bg_weaponDefs]
	mov [ebp-0x3c], ecx
	mov eax, [ebp-0x58]
	test eax, eax
	jnz _Z9PM_WeaponP7pmove_tP5pml_t_990
_Z9PM_WeaponP7pmove_tP5pml_t_2130:
	mov eax, [ebx+0x3c]
	test eax, eax
	jnz _Z9PM_WeaponP7pmove_tP5pml_t_20
	mov edx, [ebp-0x3c]
	mov eax, [edx+0x530]
	test eax, eax
	jz _Z9PM_WeaponP7pmove_tP5pml_t_1000
	mov ecx, [ebp-0x5c]
	test byte [ecx+0x8], 0x1
	jz _Z9PM_WeaponP7pmove_tP5pml_t_1000
	mov dword [ebx+0xec], 0xa
_Z9PM_WeaponP7pmove_tP5pml_t_1000:
	cmp dword [ebx+0xec], 0xa
	jz _Z9PM_WeaponP7pmove_tP5pml_t_1010
	mov ecx, [ebx+0xe8]
_Z9PM_WeaponP7pmove_tP5pml_t_2190:
	mov edx, [ecx*4+bg_weaponDefs]
	mov esi, [edx+0x330]
	mov eax, [edx+0x328]
	mov eax, [ebx+eax*4+0x15c]
	test eax, eax
	jz _Z9PM_WeaponP7pmove_tP5pml_t_1020
	mov edi, [ebx+esi*4+0x35c]
	mov esi, [edx+0x338]
	cmp edi, esi
	jge _Z9PM_WeaponP7pmove_tP5pml_t_1020
	mov eax, [edx+0x52c]
	test eax, eax
	jz _Z9PM_WeaponP7pmove_tP5pml_t_900
	mov eax, [edx+0x534]
	test eax, eax
	jz _Z9PM_WeaponP7pmove_tP5pml_t_1030
	cmp esi, eax
	jg _Z9PM_WeaponP7pmove_tP5pml_t_1040
_Z9PM_WeaponP7pmove_tP5pml_t_1030:
	test edi, edi
	jz _Z9PM_WeaponP7pmove_tP5pml_t_900
_Z9PM_WeaponP7pmove_tP5pml_t_1020:
	mov edx, ecx
	sar edx, 0x5
	and ecx, 0x1f
	mov eax, 0xfffffffe
	rol eax, cl
	and [ebx+edx*4+0x57c], eax
	mov esi, [ebp-0x3c]
	mov ecx, [esi+0x3a0]
	test ecx, ecx
	jz _Z9PM_WeaponP7pmove_tP5pml_t_880
	mov dword [ebx+0xec], 0xb
	cmp dword [ebx+0x4], 0x6
	jg _Z9PM_WeaponP7pmove_tP5pml_t_1050
	mov eax, [ebx+0x624]
	and eax, 0x200
	xor ah, 0x2
	or eax, 0x10
	mov [ebx+0x624], eax
_Z9PM_WeaponP7pmove_tP5pml_t_1050:
	mov edx, [ebp-0x3c]
	mov eax, [edx+0x3a0]
	jmp _Z9PM_WeaponP7pmove_tP5pml_t_1060
_Z9PM_WeaponP7pmove_tP5pml_t_2340:
	mov eax, [edi+0xe8]
	mov eax, [eax*4+bg_weaponDefs]
	mov ecx, [eax+0x304]
	test ecx, ecx
	jz _Z9PM_WeaponP7pmove_tP5pml_t_1070
	mov dword [edi+0xec], 0xe
	mov eax, [eax+0x3b8]
	mov [edi+0x3c], eax
	mov dword [edi+0x40], 0x0
	cmp dword [edi+0x4], 0x6
	jg _Z9PM_WeaponP7pmove_tP5pml_t_1080
	mov eax, [edi+0x624]
	and eax, 0x200
	xor ah, 0x2
	or eax, 0x14
	mov [edi+0x624], eax
_Z9PM_WeaponP7pmove_tP5pml_t_1080:
	mov [ebp+0x8], edi
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z27PM_SetProneMovementOverrideP13playerState_s
_Z9PM_WeaponP7pmove_tP5pml_t_2350:
	mov eax, edi
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z24PM_Weapon_OffHandPrepareP13playerState_s
_Z9PM_WeaponP7pmove_tP5pml_t_2360:
	mov dword [edi+0xec], 0x12
	mov dword [edi+0x3c], 0x0
	mov dword [edi+0x40], 0x0
	or dword [edi+0x10], 0x2
	cmp dword [edi+0x48], 0x3ff
	jnz _Z9PM_WeaponP7pmove_tP5pml_t_20
	mov eax, [edi+0xe0]
	mov eax, [eax*4+bg_weaponDefs]
	mov eax, [eax+0x3ec]
	mov [edi+0x44], eax
	jmp _Z9PM_WeaponP7pmove_tP5pml_t_20
_Z9PM_WeaponP7pmove_tP5pml_t_2400:
	mov eax, [ebp-0x58]
	test eax, eax
	jz _Z9PM_WeaponP7pmove_tP5pml_t_1070
	mov eax, [edi+0xe8]
	test eax, eax
	jz _Z9PM_WeaponP7pmove_tP5pml_t_1070
	mov dword [ebp+0xc], 0x3f
	mov [ebp+0x8], edi
	jmp _Z9PM_WeaponP7pmove_tP5pml_t_1090
_Z9PM_WeaponP7pmove_tP5pml_t_2300:
	cmp eax, 0x4
	setz byte [ebp-0x35]
	mov eax, [ebp-0x5c]
	mov ebx, [eax]
	mov [esp], ebx
	call _Z23Mantle_IsWeaponInactiveP13playerState_s
	test al, al
	jnz _Z9PM_WeaponP7pmove_tP5pml_t_1100
	test byte [ebx+0xc], 0x8
	jnz _Z9PM_WeaponP7pmove_tP5pml_t_1100
	mov edx, [ebp-0x5c]
	movzx esi, byte [edx+0x18]
	mov eax, esi
	sar eax, 0x5
	mov ecx, esi
	and ecx, 0x1f
	mov edi, 0x1
	shl edi, cl
	mov edx, [ebx+eax*4+0x55c]
	test edx, edi
	jz _Z9PM_WeaponP7pmove_tP5pml_t_1100
	cmp byte [ebx+0x10], 0x0
	js _Z9PM_WeaponP7pmove_tP5pml_t_1100
	mov eax, [bg_lastParsedWeaponIndex]
	add eax, 0x1
	cmp eax, esi
	ja _Z9PM_WeaponP7pmove_tP5pml_t_1110
_Z9PM_WeaponP7pmove_tP5pml_t_1100:
	xor esi, esi
	mov edi, 0x1
	mov edx, [ebx+0x55c]
_Z9PM_WeaponP7pmove_tP5pml_t_1110:
	test edx, edi
	jnz _Z9PM_WeaponP7pmove_tP5pml_t_1120
	xor esi, esi
	xor eax, eax
_Z9PM_WeaponP7pmove_tP5pml_t_2020:
	mov ecx, [ebx+0xe8]
	mov [ebp-0x30], ecx
	movzx ecx, al
	mov [ebx+0xe8], ecx
	mov eax, [ecx*4+bg_weaponDefs]
	mov [ebp-0x34], eax
	cmp esi, [ebp-0x30]
	jz _Z9PM_WeaponP7pmove_tP5pml_t_880
	mov eax, ecx
	sar eax, 0x5
	shl eax, 0x2
	and ecx, 0x1f
	mov edx, 0x1
	shl edx, cl
	xor ecx, ecx
	test [ebx+eax+0x56c], edx
	setz cl
	or [ebx+eax+0x56c], edx
	cmp word [ebx+0xc], 0x0
	js _Z9PM_WeaponP7pmove_tP5pml_t_1130
	mov eax, [ebp-0x30]
	test eax, eax
	jz _Z9PM_WeaponP7pmove_tP5pml_t_1130
	test esi, esi
	jz _Z9PM_WeaponP7pmove_tP5pml_t_1130
	mov edx, [ebp-0x30]
	mov eax, [edx*4+bg_weaponDefs]
	cmp esi, [eax+0x540]
	jz _Z9PM_WeaponP7pmove_tP5pml_t_1140
_Z9PM_WeaponP7pmove_tP5pml_t_1130:
	mov dword [ebp-0x2c], 0x0
	mov eax, [ebx+0xe8]
	mov eax, [eax*4+bg_weaponDefs]
	mov eax, [eax+0x330]
	mov eax, [ebx+eax*4+0x35c]
	test eax, eax
	jnz _Z9PM_WeaponP7pmove_tP5pml_t_1150
	mov esi, [ebp-0x34]
	mov edi, [esi+0x3c0]
	mov esi, 0x16
_Z9PM_WeaponP7pmove_tP5pml_t_2100:
	mov eax, [ebp-0x30]
	test eax, eax
	jz _Z9PM_WeaponP7pmove_tP5pml_t_1160
	test ecx, ecx
	jz _Z9PM_WeaponP7pmove_tP5pml_t_1170
	mov dword [esp+0x4], 0x16
	mov [esp], ebx
	call _Z11PM_AddEventP13playerState_si
_Z9PM_WeaponP7pmove_tP5pml_t_2200:
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x7
	mov [esp], ebx
	call _Z18BG_AnimScriptEventP13playerState_s22scriptAnimEventTypes_tii
_Z9PM_WeaponP7pmove_tP5pml_t_1160:
	movss xmm0, dword [_float_255_00000000]
_Z9PM_WeaponP7pmove_tP5pml_t_2270:
	cmp dword [ebp-0x2c], 0x1
	sbb eax, eax
	add eax, 0x2
	mov [ebx+0xec], eax
	mov [ebx+0x3c], edi
	movss [ebx+0x628], xmm0
	mov [esp], ebx
	call _Z27PM_SetProneMovementOverrideP13playerState_s
	cmp dword [ebx+0x4], 0x6
	jg _Z9PM_WeaponP7pmove_tP5pml_t_1180
	mov eax, [ebx+0x624]
	and eax, 0x200
	xor ah, 0x2
	or eax, esi
	mov [ebx+0x624], eax
_Z9PM_WeaponP7pmove_tP5pml_t_1180:
	mov edx, [ebp-0x34]
	mov eax, [edx+0x128]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov eax, [ebx+0xdc]
	mov [esp], eax
	call _Z18BG_SetConditionBitiii
	mov ecx, [ebp-0x34]
	mov eax, [ecx+0x130]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1
	mov eax, [ebx+0xdc]
	mov [esp], eax
	call _Z18BG_SetConditionBitiii
	mov eax, [ebp-0x30]
	test eax, eax
	jz _Z9PM_WeaponP7pmove_tP5pml_t_20
	mov edx, [ebp-0x30]
	sar edx, 0x5
	mov ecx, [ebp-0x30]
	and ecx, 0x1f
	mov eax, 0x1
	shl eax, cl
	test [ebx+edx*4+0x55c], eax
	jz _Z9PM_WeaponP7pmove_tP5pml_t_20
	mov esi, [ebp-0x30]
	mov edx, [esi*4+bg_weaponDefs]
	mov edi, [edx+0x500]
	test edi, edi
	jz _Z9PM_WeaponP7pmove_tP5pml_t_20
	mov eax, [edx+0x330]
	mov ecx, [ebx+eax*4+0x35c]
	test ecx, ecx
	jnz _Z9PM_WeaponP7pmove_tP5pml_t_20
	mov eax, [edx+0x328]
	mov eax, [ebx+eax*4+0x15c]
	test eax, eax
	jnz _Z9PM_WeaponP7pmove_tP5pml_t_20
	mov eax, [edx+0x5a8]
	test eax, eax
	jnz _Z9PM_WeaponP7pmove_tP5pml_t_20
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], esi
	mov [esp], ebx
	call _Z19BG_TakePlayerWeaponP13playerState_sji
	jmp _Z9PM_WeaponP7pmove_tP5pml_t_20
_Z9PM_WeaponP7pmove_tP5pml_t_2330:
	mov dword [edi+0xec], 0xd
	mov dword [esp+0x4], 0x1f
	mov [esp], edi
	call _Z11PM_AddEventP13playerState_si
	jmp _Z9PM_WeaponP7pmove_tP5pml_t_1080
_Z9PM_WeaponP7pmove_tP5pml_t_740:
	cmp dword [ebp-0x1c], 0x1
	jbe _Z9PM_WeaponP7pmove_tP5pml_t_720
_Z9PM_WeaponP7pmove_tP5pml_t_730:
	xor eax, eax
	jmp _Z9PM_WeaponP7pmove_tP5pml_t_1190
_Z9PM_WeaponP7pmove_tP5pml_t_530:
	mov eax, [ebx+0xe0]
	mov eax, [eax*4+bg_weaponDefs]
	mov eax, [eax+0x5b4]
	test eax, eax
	jz _Z9PM_WeaponP7pmove_tP5pml_t_540
	mov edx, [ebp-0x5c]
	test word [edx+0x8], 0xc000
	jnz _Z9PM_WeaponP7pmove_tP5pml_t_540
	mov eax, [ebx+0xe8]
	test eax, eax
	jnz _Z9PM_WeaponP7pmove_tP5pml_t_1200
	mov dword [ebx+0x3c], 0x0
	mov dword [ebx+0x40], 0x1
_Z9PM_WeaponP7pmove_tP5pml_t_1780:
	mov dword [ebx+0x4c], 0x0
	mov dword [ebx+0x48], 0x3ff
	mov dword [ebx+0xec], 0x14
	and dword [ebx+0x10], 0xfffffffd
	and dword [ebx+0xc], 0xfffffdff
	mov ecx, [edi+0xe8]
	jmp _Z9PM_WeaponP7pmove_tP5pml_t_280
_Z9PM_WeaponP7pmove_tP5pml_t_150:
	mov eax, [edi+0x44]
	test eax, eax
	jle _Z9PM_WeaponP7pmove_tP5pml_t_360
	mov edx, [edx+0x4fc]
	test edx, edx
	jz _Z9PM_WeaponP7pmove_tP5pml_t_360
	sub eax, [esi+0x28]
	mov [edi+0x44], eax
	test eax, eax
	jg _Z9PM_WeaponP7pmove_tP5pml_t_360
	mov dword [edi+0x44], 0xffffffff
	mov [esp+0x8], edi
	mov eax, [edi+0xe0]
	mov [esp+0x4], eax
	mov dword [esp], 0x3e
	call _Z35BG_AddPredictableEventToPlayerstateijP13playerState_s
	cmp dword [edi+0x48], 0x3ff
	jnz _Z9PM_WeaponP7pmove_tP5pml_t_20
	mov eax, player_sustainAmmo
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z9PM_WeaponP7pmove_tP5pml_t_20
	mov eax, [ebx*4+bg_weaponDefs]
	mov edx, [eax+0x330]
	mov eax, [edi+edx*4+0x35c]
	test eax, eax
	jle _Z9PM_WeaponP7pmove_tP5pml_t_1210
	sub eax, 0x1
_Z9PM_WeaponP7pmove_tP5pml_t_2250:
	mov [edi+edx*4+0x35c], eax
	jmp _Z9PM_WeaponP7pmove_tP5pml_t_20
_Z9PM_WeaponP7pmove_tP5pml_t_50:
	and edx, 0xfffffffb
	mov [ebx+0x10], edx
	mov dword [ebx+0x5d4], 0x3f800000
	mov dword [ebx+0x5d8], 0x0
	jmp _Z9PM_WeaponP7pmove_tP5pml_t_1220
_Z9PM_WeaponP7pmove_tP5pml_t_760:
	mov eax, [ebp-0x58]
	test eax, eax
	jz _Z9PM_WeaponP7pmove_tP5pml_t_1230
	mov eax, [ebp-0x24]
	test eax, eax
	jz _Z9PM_WeaponP7pmove_tP5pml_t_1230
	cmp dword [ebp-0x20], 0x1
	jz _Z9PM_WeaponP7pmove_tP5pml_t_1240
_Z9PM_WeaponP7pmove_tP5pml_t_1230:
	and dh, 0x8
	jnz _Z9PM_WeaponP7pmove_tP5pml_t_20
	mov ecx, [edi+0xe8]
	mov ebx, [ecx*4+bg_weaponDefs]
	mov eax, [ebx+0x330]
	mov esi, [edi+eax*4+0x35c]
	test esi, esi
	jle _Z9PM_WeaponP7pmove_tP5pml_t_1250
	cmp dword [ebx+0x12c], 0x1
	jz _Z9PM_WeaponP7pmove_tP5pml_t_1260
	mov eax, [ebx+0x35c]
	mov [edi+0x40], eax
	mov eax, [ebx+0x36c]
	mov [edi+0x3c], eax
	mov eax, [ebx+0x504]
	test eax, eax
	jz _Z9PM_WeaponP7pmove_tP5pml_t_1270
	movss xmm0, dword [_float_1_00000000]
	movaps xmm1, xmm0
	subss xmm1, [edi+0xf4]
	divss xmm0, dword [ebx+0x7f8]
	mulss xmm1, xmm0
	cvttss2si eax, xmm1
	mov [edi+0x40], eax
_Z9PM_WeaponP7pmove_tP5pml_t_1270:
	mov eax, [ebx+0x4e8]
	test eax, eax
	jz _Z9PM_WeaponP7pmove_tP5pml_t_1280
	mov edx, ecx
	sar edx, 0x5
	and ecx, 0x1f
	mov eax, 0x1
	shl eax, cl
	or [edi+edx*4+0x57c], eax
_Z9PM_WeaponP7pmove_tP5pml_t_1280:
	cmp dword [edi+0xec], 0x5
	jz _Z9PM_WeaponP7pmove_tP5pml_t_1290
	movss xmm0, dword [edi+0xf4]
	ucomiss xmm0, [_float_1_00000000]
	jb _Z9PM_WeaponP7pmove_tP5pml_t_1300
	mov eax, [ebx+0x36c]
	imul eax, [ebx+0x6d8]
	add eax, [ebx+0x35c]
	mov [edi+0x50], eax
_Z9PM_WeaponP7pmove_tP5pml_t_1290:
	mov dword [esp+0xc], 0x1
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x2
	mov [esp], edi
	call _Z18BG_AnimScriptEventP13playerState_s22scriptAnimEventTypes_tii
_Z9PM_WeaponP7pmove_tP5pml_t_1900:
	mov dword [edi+0xec], 0x5
	mov [esp], edi
	call _Z27PM_SetProneMovementOverrideP13playerState_s
	mov eax, [ebx+0x140]
	test eax, eax
	jz _Z9PM_WeaponP7pmove_tP5pml_t_1310
	mov eax, [edi+0xf0]
	test eax, eax
	jnz _Z9PM_WeaponP7pmove_tP5pml_t_1320
	and dword [edi+0x10], 0xfffffeff
_Z9PM_WeaponP7pmove_tP5pml_t_1320:
	mov edx, [edi+0xf0]
	add edx, 0x1
	mov eax, 0x4
	cmp edx, 0x5
	cmovb eax, edx
	mov [edi+0xf0], eax
_Z9PM_WeaponP7pmove_tP5pml_t_1310:
	mov eax, [edi+0x40]
	test eax, eax
	jnz _Z9PM_WeaponP7pmove_tP5pml_t_20
	mov ecx, [edi+0xe8]
	mov eax, [ecx*4+bg_weaponDefs]
	mov esi, [eax+0x330]
	mov edx, [edi+esi*4+0x35c]
	cmp edx, 0xffffffff
	jz _Z9PM_WeaponP7pmove_tP5pml_t_1330
	test dword [edi+0xb0], 0x300
	jnz _Z9PM_WeaponP7pmove_tP5pml_t_1330
	mov eax, player_sustainAmmo
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z9PM_WeaponP7pmove_tP5pml_t_1330
	test edx, edx
	jle _Z9PM_WeaponP7pmove_tP5pml_t_1340
	lea eax, [edx-0x1]
_Z9PM_WeaponP7pmove_tP5pml_t_2210:
	mov [edi+esi*4+0x35c], eax
_Z9PM_WeaponP7pmove_tP5pml_t_1330:
	cmp dword [ebx+0x12c], 0x1
	jz _Z9PM_WeaponP7pmove_tP5pml_t_1350
_Z9PM_WeaponP7pmove_tP5pml_t_1950:
	movss xmm0, dword [edi+0xf4]
	ucomiss xmm0, [_float_0_75000000]
	jbe _Z9PM_WeaponP7pmove_tP5pml_t_1360
	mov eax, [ecx*4+bg_weaponDefs]
	mov eax, [eax+0x330]
	cmp dword [edi+eax*4+0x35c], 0x1
	sbb edx, edx
	not edx
	add edx, 0x6
_Z9PM_WeaponP7pmove_tP5pml_t_1800:
	cmp dword [edi+0x4], 0x6
	jg _Z9PM_WeaponP7pmove_tP5pml_t_1370
	mov eax, [edi+0x624]
	and eax, 0x200
	xor ah, 0x2
	or edx, eax
	mov [edi+0x624], edx
_Z9PM_WeaponP7pmove_tP5pml_t_1370:
	mov eax, [ecx*4+bg_weaponDefs]
	mov eax, [eax+0x330]
	mov esi, [edi+eax*4+0x35c]
	test esi, esi
	jnz _Z9PM_WeaponP7pmove_tP5pml_t_1380
	mov dword [esp+0x4], 0x1b
	mov [esp], edi
	call _Z11PM_AddEventP13playerState_si
_Z9PM_WeaponP7pmove_tP5pml_t_1790:
	mov edx, [edi+0x10]
	test dl, 0x2
	jz _Z9PM_WeaponP7pmove_tP5pml_t_1390
	mov eax, [edi+0xe0]
	mov ecx, [edi+0xe8]
_Z9PM_WeaponP7pmove_tP5pml_t_1810:
	mov eax, [eax*4+bg_weaponDefs]
	movss xmm2, dword [_float_1_00000000]
	ucomiss xmm2, [edi+0xf4]
	jnz _Z9PM_WeaponP7pmove_tP5pml_t_1400
	jp _Z9PM_WeaponP7pmove_tP5pml_t_1400
	mov ebx, [eax+0x438]
	test ebx, ebx
	jz _Z9PM_WeaponP7pmove_tP5pml_t_1400
	cmp dword [eax+0x130], 0x9
	jz _Z9PM_WeaponP7pmove_tP5pml_t_1400
	mov eax, player_breath_hold_time
	mov eax, [eax]
	movss xmm0, dword [_float_1000_00000000]
	movss xmm1, dword [eax+0xc]
	mulss xmm1, xmm0
	cvttss2si ebx, xmm1
	mov eax, player_breath_fire_delay
	mov eax, [eax]
	mulss xmm0, [eax+0xc]
	cvttss2si esi, xmm0
	mov eax, [edi+0x5d8]
	cmp ebx, eax
	jle _Z9PM_WeaponP7pmove_tP5pml_t_1410
	lea eax, [esi+eax]
	cmp ebx, eax
	cmovge ebx, eax
	mov [edi+0x5d8], ebx
_Z9PM_WeaponP7pmove_tP5pml_t_1410:
	and edx, 0xfffffffb
	mov [edi+0x10], edx
_Z9PM_WeaponP7pmove_tP5pml_t_1400:
	mov eax, [ecx*4+bg_weaponDefs]
	ucomiss xmm2, [edi+0xf4]
	jp _Z9PM_WeaponP7pmove_tP5pml_t_1420
	jz _Z9PM_WeaponP7pmove_tP5pml_t_1430
_Z9PM_WeaponP7pmove_tP5pml_t_1420:
	movss xmm1, dword [_float_255_00000000]
	movss xmm0, dword [eax+0x46c]
	mulss xmm0, xmm1
	addss xmm0, [edi+0x628]
	movss [edi+0x628], xmm0
	ucomiss xmm0, xmm1
	jbe _Z9PM_WeaponP7pmove_tP5pml_t_1440
	movss [edi+0x628], xmm1
_Z9PM_WeaponP7pmove_tP5pml_t_1440:
	mov edx, [ecx*4+bg_weaponDefs]
_Z9PM_WeaponP7pmove_tP5pml_t_1820:
	mov eax, [edx+0x330]
	mov esi, [edi+eax*4+0x35c]
	test esi, esi
	jnz _Z9PM_WeaponP7pmove_tP5pml_t_20
	mov eax, [edx+0x328]
	mov ebx, [edi+eax*4+0x15c]
	test ebx, ebx
	jnz _Z9PM_WeaponP7pmove_tP5pml_t_20
	mov ecx, [edx+0x5a8]
	test ecx, ecx
	jnz _Z9PM_WeaponP7pmove_tP5pml_t_20
	mov dword [ebp+0xc], 0xb
	mov [ebp+0x8], edi
	jmp _Z9PM_WeaponP7pmove_tP5pml_t_1090
_Z9PM_WeaponP7pmove_tP5pml_t_90:
	mov dword [ebx+0x5d8], 0x0
	jmp _Z9PM_WeaponP7pmove_tP5pml_t_1450
_Z9PM_WeaponP7pmove_tP5pml_t_520:
	mov eax, [edx+0x5a8]
	test eax, eax
	jz _Z9PM_WeaponP7pmove_tP5pml_t_510
	mov ecx, [ebx+0xec]
	cmp ecx, 0x15
	jz _Z9PM_WeaponP7pmove_tP5pml_t_1460
	cmp ecx, 0x7
	jz _Z9PM_WeaponP7pmove_tP5pml_t_510
	cmp ecx, 0x9
	jz _Z9PM_WeaponP7pmove_tP5pml_t_510
	cmp ecx, 0xb
	jz _Z9PM_WeaponP7pmove_tP5pml_t_510
	cmp ecx, 0xa
	jz _Z9PM_WeaponP7pmove_tP5pml_t_510
	cmp ecx, 0x8
	jz _Z9PM_WeaponP7pmove_tP5pml_t_510
	lea eax, [ecx-0x5]
	cmp eax, 0x1
	jbe _Z9PM_WeaponP7pmove_tP5pml_t_510
	lea eax, [ecx-0xc]
	cmp eax, 0x2
	jbe _Z9PM_WeaponP7pmove_tP5pml_t_510
	lea eax, [ecx-0x1]
	cmp eax, 0x3
	jbe _Z9PM_WeaponP7pmove_tP5pml_t_510
	lea eax, [ecx-0xf]
	cmp eax, 0x5
	jbe _Z9PM_WeaponP7pmove_tP5pml_t_510
	lea eax, [ecx-0x19]
	cmp eax, 0x1
	jbe _Z9PM_WeaponP7pmove_tP5pml_t_510
	mov esi, [ebp-0x5c]
	test byte [esi+0x8], 0x1
	jz _Z9PM_WeaponP7pmove_tP5pml_t_510
	mov dword [ebx+0xec], 0x15
	mov eax, [edx+0x37c]
	mov [ebx+0x3c], eax
	mov eax, [edx+0x368]
	mov [ebx+0x40], eax
	cmp dword [ebx+0x4], 0x6
	jg _Z9PM_WeaponP7pmove_tP5pml_t_1470
	mov eax, [ebx+0x624]
	and eax, 0x200
	xor ah, 0x2
	or eax, 0x1b
	mov [ebx+0x624], eax
	mov ebx, [esi]
	mov edx, [ebx+0xec]
	jmp _Z9PM_WeaponP7pmove_tP5pml_t_1480
_Z9PM_WeaponP7pmove_tP5pml_t_200:
	lea eax, [edx-0xc]
	cmp eax, 0x2
	jbe _Z9PM_WeaponP7pmove_tP5pml_t_1490
	test byte [ebx+0x5fc], 0x8
	jz _Z9PM_WeaponP7pmove_tP5pml_t_1490
	mov eax, perk_weapRateMultiplier
	mov eax, [eax]
	movss xmm1, dword [eax+0xc]
	ucomiss xmm1, [_float_0_00000000]
	jnz _Z9PM_WeaponP7pmove_tP5pml_t_1500
	jnp _Z9PM_WeaponP7pmove_tP5pml_t_1510
_Z9PM_WeaponP7pmove_tP5pml_t_1500:
	cvtsi2ss xmm0, dword [esi+0x28]
	divss xmm0, xmm1
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x64]
	cvttss2si edx, [ebp-0x64]
	mov eax, [ebx+0x3c]
	jmp _Z9PM_WeaponP7pmove_tP5pml_t_350
_Z9PM_WeaponP7pmove_tP5pml_t_310:
	or eax, 0x40
	mov [ebx+0x10], eax
	mov dword [esp+0x4], 0x40
	mov [esp], ebx
	call _Z11PM_AddEventP13playerState_si
	mov esi, [ebp-0x5c]
	mov ebx, [esi]
	mov eax, esi
	jmp _Z9PM_WeaponP7pmove_tP5pml_t_320
_Z9PM_WeaponP7pmove_tP5pml_t_240:
	mov dword [ebx+0x40], 0x0
	mov dword [ebp-0x58], 0x1
	jmp _Z9PM_WeaponP7pmove_tP5pml_t_1520
_Z9PM_WeaponP7pmove_tP5pml_t_220:
	mov ecx, [ebx+0xec]
	mov [ebp-0x70], ecx
	cmp ecx, 0x5
	jz _Z9PM_WeaponP7pmove_tP5pml_t_1530
_Z9PM_WeaponP7pmove_tP5pml_t_1830:
	mov eax, [ebx+0x10]
	shr eax, 0x8
	mov ecx, eax
	and cl, 0x1
	mov [ebp-0x49], cl
	jnz _Z9PM_WeaponP7pmove_tP5pml_t_1540
	mov ecx, [ebp-0x44]
	mov eax, [ecx+0x140]
	cmp eax, 0x2
	jz _Z9PM_WeaponP7pmove_tP5pml_t_1550
	jg _Z9PM_WeaponP7pmove_tP5pml_t_1560
	sub eax, 0x1
	jz _Z9PM_WeaponP7pmove_tP5pml_t_1570
_Z9PM_WeaponP7pmove_tP5pml_t_1540:
	mov byte [ebp-0x4a], 0x0
_Z9PM_WeaponP7pmove_tP5pml_t_1690:
	mov esi, [ebp-0x44]
	cmp dword [esi+0x12c], 0x1
	jz _Z9PM_WeaponP7pmove_tP5pml_t_1580
_Z9PM_WeaponP7pmove_tP5pml_t_1670:
	xor esi, esi
_Z9PM_WeaponP7pmove_tP5pml_t_1680:
	mov eax, [ebp-0x70]
	sub eax, 0xf
	cmp eax, 0x5
	jbe _Z9PM_WeaponP7pmove_tP5pml_t_1590
	cmp byte [ebp-0x4a], 0x0
	jnz _Z9PM_WeaponP7pmove_tP5pml_t_1600
	mov eax, esi
	test al, al
	jz _Z9PM_WeaponP7pmove_tP5pml_t_1590
_Z9PM_WeaponP7pmove_tP5pml_t_1600:
	mov ecx, [ebp-0x5c]
	test byte [ecx+0x8], 0x1
	jz _Z9PM_WeaponP7pmove_tP5pml_t_1610
	mov esi, [ebx+0xe8]
	movzx eax, byte [ecx+0x18]
	cmp esi, eax
	jz _Z9PM_WeaponP7pmove_tP5pml_t_1620
_Z9PM_WeaponP7pmove_tP5pml_t_1700:
	cmp byte [ebp-0x49], 0x0
	jz _Z9PM_WeaponP7pmove_tP5pml_t_1630
_Z9PM_WeaponP7pmove_tP5pml_t_1610:
	mov eax, [ebx+0xe8]
	test eax, eax
	jz _Z9PM_WeaponP7pmove_tP5pml_t_1640
	mov eax, [eax*4+bg_weaponDefs]
	mov eax, [eax+0x140]
	test eax, eax
	jz _Z9PM_WeaponP7pmove_tP5pml_t_1640
	mov ecx, [ebx+0xf0]
	test ecx, ecx
	jz _Z9PM_WeaponP7pmove_tP5pml_t_1640
	cmp eax, 0x2
	jz _Z9PM_WeaponP7pmove_tP5pml_t_1650
	jg _Z9PM_WeaponP7pmove_tP5pml_t_1660
	sub eax, 0x1
	jz _Z9PM_WeaponP7pmove_tP5pml_t_1640
_Z9PM_WeaponP7pmove_tP5pml_t_1630:
	mov dword [ebx+0x3c], 0x0
	jmp _Z9PM_WeaponP7pmove_tP5pml_t_210
_Z9PM_WeaponP7pmove_tP5pml_t_1580:
	mov eax, [esi+0x5b4]
	test eax, eax
	jz _Z9PM_WeaponP7pmove_tP5pml_t_1670
	mov esi, 0x1
	jmp _Z9PM_WeaponP7pmove_tP5pml_t_1680
_Z9PM_WeaponP7pmove_tP5pml_t_1570:
	mov eax, [ebx+0xf0]
	test eax, eax
	jz _Z9PM_WeaponP7pmove_tP5pml_t_1540
	mov byte [ebp-0x4a], 0x1
	jmp _Z9PM_WeaponP7pmove_tP5pml_t_1690
_Z9PM_WeaponP7pmove_tP5pml_t_1590:
	mov esi, [ebp-0x5c]
	test byte [esi+0x8], 0x1
	jnz _Z9PM_WeaponP7pmove_tP5pml_t_1700
	jmp _Z9PM_WeaponP7pmove_tP5pml_t_1610
_Z9PM_WeaponP7pmove_tP5pml_t_1650:
	cmp ecx, 0x1
	jbe _Z9PM_WeaponP7pmove_tP5pml_t_1630
_Z9PM_WeaponP7pmove_tP5pml_t_1640:
	mov dword [ebx+0xf0], 0x0
	jmp _Z9PM_WeaponP7pmove_tP5pml_t_1630
_Z9PM_WeaponP7pmove_tP5pml_t_270:
	cmp eax, 0x3
	jz _Z9PM_WeaponP7pmove_tP5pml_t_1710
	cmp eax, 0x4
	jnz _Z9PM_WeaponP7pmove_tP5pml_t_280
	cmp edx, 0x3
	jbe _Z9PM_WeaponP7pmove_tP5pml_t_280
	jmp _Z9PM_WeaponP7pmove_tP5pml_t_250
_Z9PM_WeaponP7pmove_tP5pml_t_690:
	mov esi, [ebx+0xe8]
	mov eax, [ebp-0x5c]
	movzx eax, byte [eax+0x18]
	mov [ebp-0x6c], al
	movzx eax, al
	mov [ebp-0x40], eax
	cmp esi, eax
	jz _Z9PM_WeaponP7pmove_tP5pml_t_1720
	and dh, 0xc
	jz _Z9PM_WeaponP7pmove_tP5pml_t_1730
	test esi, esi
	jnz _Z9PM_WeaponP7pmove_tP5pml_t_1740
_Z9PM_WeaponP7pmove_tP5pml_t_1730:
	cmp byte [ebp-0x6c], 0x0
	jz _Z9PM_WeaponP7pmove_tP5pml_t_1750
	mov eax, [bg_lastParsedWeaponIndex]
	add eax, 0x1
	cmp [ebp-0x40], eax
	jae _Z9PM_WeaponP7pmove_tP5pml_t_1760
	mov edx, [ebp-0x40]
	sar edx, 0x5
	mov ecx, [ebp-0x40]
	and ecx, 0x1f
	mov eax, 0x1
	shl eax, cl
	test [ebx+edx*4+0x55c], eax
	jz _Z9PM_WeaponP7pmove_tP5pml_t_1760
_Z9PM_WeaponP7pmove_tP5pml_t_1750:
	mov ecx, [ebx+0x5ec]
	shr ecx, 0x4
	and ecx, 0x1
	mov edx, [ebp-0x40]
	mov eax, ebx
	call _Z20PM_BeginWeaponChangeP13playerState_sjh
	jmp _Z9PM_WeaponP7pmove_tP5pml_t_410
_Z9PM_WeaponP7pmove_tP5pml_t_260:
	cmp edx, 0x1
	ja _Z9PM_WeaponP7pmove_tP5pml_t_250
	jmp _Z9PM_WeaponP7pmove_tP5pml_t_280
_Z9PM_WeaponP7pmove_tP5pml_t_570:
	mov ecx, [ebp-0x58]
	test ecx, ecx
	jz _Z9PM_WeaponP7pmove_tP5pml_t_1770
	not eax
	and [edi+ebx+0x57c], eax
	mov dword [esp+0x4], 0x1d
	mov [esp], edi
	call _Z11PM_AddEventP13playerState_si
	mov eax, [edi+0x3c]
	test eax, eax
	jnz _Z9PM_WeaponP7pmove_tP5pml_t_20
	mov edx, [edi+0xec]
	jmp _Z9PM_WeaponP7pmove_tP5pml_t_580
_Z9PM_WeaponP7pmove_tP5pml_t_1200:
	mov eax, [eax*4+bg_weaponDefs]
	mov eax, [eax+0x3b8]
	mov [ebx+0x3c], eax
	mov dword [ebx+0x40], 0x0
	cmp dword [ebx+0x4], 0x6
	jg _Z9PM_WeaponP7pmove_tP5pml_t_1780
	mov eax, [ebx+0x624]
	and eax, 0x200
	xor ah, 0x2
	or eax, 0x14
	mov [ebx+0x624], eax
	jmp _Z9PM_WeaponP7pmove_tP5pml_t_1780
_Z9PM_WeaponP7pmove_tP5pml_t_1380:
	mov dword [esp+0x4], 0x1a
	mov [esp], edi
	call _Z11PM_AddEventP13playerState_si
	jmp _Z9PM_WeaponP7pmove_tP5pml_t_1790
_Z9PM_WeaponP7pmove_tP5pml_t_1360:
	mov eax, [ecx*4+bg_weaponDefs]
	mov eax, [eax+0x330]
	cmp dword [edi+eax*4+0x35c], 0x1
	sbb edx, edx
	not edx
	add edx, 0x3
	jmp _Z9PM_WeaponP7pmove_tP5pml_t_1800
_Z9PM_WeaponP7pmove_tP5pml_t_1390:
	mov ecx, [edi+0xe8]
	mov eax, ecx
	jmp _Z9PM_WeaponP7pmove_tP5pml_t_1810
_Z9PM_WeaponP7pmove_tP5pml_t_1430:
	mov edx, eax
	jmp _Z9PM_WeaponP7pmove_tP5pml_t_1820
_Z9PM_WeaponP7pmove_tP5pml_t_1530:
	mov eax, [ebx+0xe8]
	test eax, eax
	jz _Z9PM_WeaponP7pmove_tP5pml_t_1830
	mov eax, [eax*4+bg_weaponDefs]
	mov esi, [eax+0x140]
	lea eax, [esi-0x2]
	cmp eax, 0x2
	ja _Z9PM_WeaponP7pmove_tP5pml_t_1830
	mov [ebp-0x6c], esi
	test esi, esi
	jz _Z9PM_WeaponP7pmove_tP5pml_t_1840
	mov eax, [ebx+0xf0]
	mov [ebp-0x48], eax
	test eax, eax
	jz _Z9PM_WeaponP7pmove_tP5pml_t_1840
	cmp esi, 0x2
	jz _Z9PM_WeaponP7pmove_tP5pml_t_1850
	jg _Z9PM_WeaponP7pmove_tP5pml_t_1860
	sub esi, 0x1
	jnz _Z9PM_WeaponP7pmove_tP5pml_t_1830
_Z9PM_WeaponP7pmove_tP5pml_t_1840:
	mov eax, player_burstFireCooldown
	mov eax, [eax]
	movss xmm0, dword [eax+0xc]
	ucomiss xmm0, [_float_0_00000000]
	jp _Z9PM_WeaponP7pmove_tP5pml_t_1870
	jnz _Z9PM_WeaponP7pmove_tP5pml_t_1870
	mov dword [ebx+0x3c], 0x1
_Z9PM_WeaponP7pmove_tP5pml_t_2290:
	mov eax, [ebx+0x624]
	test eax, 0xfffffdff
	jz _Z9PM_WeaponP7pmove_tP5pml_t_1880
	cmp dword [ebx+0x4], 0x6
	jg _Z9PM_WeaponP7pmove_tP5pml_t_1880
	and eax, 0x200
	xor ah, 0x2
	mov [ebx+0x624], eax
_Z9PM_WeaponP7pmove_tP5pml_t_1880:
	mov dword [ebx+0xec], 0x0
	mov dword [ebp-0x58], 0x0
	jmp _Z9PM_WeaponP7pmove_tP5pml_t_1520
_Z9PM_WeaponP7pmove_tP5pml_t_1260:
	mov eax, [ebp-0x58]
	test eax, eax
	jnz _Z9PM_WeaponP7pmove_tP5pml_t_1290
	mov eax, [ebx+0x3ec]
	mov [edi+0x44], eax
	cmp dword [edi+0x4], 0x6
	jg _Z9PM_WeaponP7pmove_tP5pml_t_1890
	mov eax, [edi+0x624]
	and eax, 0x200
	xor ah, 0x2
	or eax, 0x1a
	mov [edi+0x624], eax
_Z9PM_WeaponP7pmove_tP5pml_t_1890:
	mov [esp+0x8], edi
	mov eax, [edi+0xe8]
	mov [esp+0x4], eax
	mov dword [esp], 0x19
	call _Z35BG_AddPredictableEventToPlayerstateijP13playerState_s
	mov eax, [ebx+0x378]
	mov [edi+0x40], eax
	mov dword [edi+0x3c], 0x0
	jmp _Z9PM_WeaponP7pmove_tP5pml_t_1900
_Z9PM_WeaponP7pmove_tP5pml_t_1250:
	mov eax, [ebx+0x328]
	mov edx, [edi+eax*4+0x15c]
	test edx, edx
	setg al
	movzx eax, al
	cmp dword [ebx+0x12c], 0x1
	jz _Z9PM_WeaponP7pmove_tP5pml_t_1910
	test eax, eax
	jz _Z9PM_WeaponP7pmove_tP5pml_t_1920
_Z9PM_WeaponP7pmove_tP5pml_t_2030:
	mov eax, edi
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z20PM_BeginWeaponReloadP13playerState_s
_Z9PM_WeaponP7pmove_tP5pml_t_1760:
	test esi, esi
	jz _Z9PM_WeaponP7pmove_tP5pml_t_410
_Z9PM_WeaponP7pmove_tP5pml_t_1740:
	mov edx, esi
	sar edx, 0x5
	and esi, 0x1f
	mov eax, 0x1
	mov ecx, esi
	shl eax, cl
	test [ebx+edx*4+0x55c], eax
	jnz _Z9PM_WeaponP7pmove_tP5pml_t_410
	jmp _Z9PM_WeaponP7pmove_tP5pml_t_1930
_Z9PM_WeaponP7pmove_tP5pml_t_590:
	mov eax, [edi+0x624]
	test eax, 0xfffffdff
	jz _Z9PM_WeaponP7pmove_tP5pml_t_1940
	cmp dword [edi+0x4], 0x6
	jg _Z9PM_WeaponP7pmove_tP5pml_t_1940
	and eax, 0x200
	xor ah, 0x2
	mov [edi+0x624], eax
_Z9PM_WeaponP7pmove_tP5pml_t_1940:
	mov dword [edi+0xec], 0x0
	jmp _Z9PM_WeaponP7pmove_tP5pml_t_560
_Z9PM_WeaponP7pmove_tP5pml_t_1350:
	mov eax, [ebx+0x36c]
	mov [edi+0x3c], eax
	jmp _Z9PM_WeaponP7pmove_tP5pml_t_1950
_Z9PM_WeaponP7pmove_tP5pml_t_620:
	mov dword [edi+0x40], 0x1
	jmp _Z9PM_WeaponP7pmove_tP5pml_t_1960
_Z9PM_WeaponP7pmove_tP5pml_t_1460:
	mov edx, ecx
	jmp _Z9PM_WeaponP7pmove_tP5pml_t_1480
_Z9PM_WeaponP7pmove_tP5pml_t_1560:
	cmp eax, 0x3
	jz _Z9PM_WeaponP7pmove_tP5pml_t_1970
	cmp eax, 0x4
	jnz _Z9PM_WeaponP7pmove_tP5pml_t_1540
	cmp dword [ebx+0xf0], 0x3
	jbe _Z9PM_WeaponP7pmove_tP5pml_t_1540
	mov byte [ebp-0x4a], 0x1
	jmp _Z9PM_WeaponP7pmove_tP5pml_t_1690
_Z9PM_WeaponP7pmove_tP5pml_t_880:
	mov dword [ebx+0xec], 0x0
	cmp dword [ebx+0x4], 0x6
	jg _Z9PM_WeaponP7pmove_tP5pml_t_20
	mov eax, [ebx+0x624]
	and eax, 0x200
	xor ah, 0x2
	mov [ebx+0x624], eax
	jmp _Z9PM_WeaponP7pmove_tP5pml_t_20
_Z9PM_WeaponP7pmove_tP5pml_t_400:
	lea eax, [edx-0x16]
	cmp eax, 0x1
	ja _Z9PM_WeaponP7pmove_tP5pml_t_390
	mov eax, [ebx+0xe8]
	mov eax, [eax*4+bg_weaponDefs]
	mov dword [ebx+0xec], 0x18
	mov eax, [eax+0x3d0]
	mov [ebx+0x3c], eax
	mov dword [ebx+0x40], 0x0
	cmp dword [ebx+0x4], 0x6
	jg _Z9PM_WeaponP7pmove_tP5pml_t_390
	mov eax, [ebx+0x624]
	and eax, 0x200
	xor ah, 0x2
	or eax, 0x19
	mov [ebx+0x624], eax
	mov eax, [ebp-0x5c]
	jmp _Z9PM_WeaponP7pmove_tP5pml_t_380
_Z9PM_WeaponP7pmove_tP5pml_t_770:
	mov eax, [esi+0x624]
	test eax, 0xfffffdff
	jz _Z9PM_WeaponP7pmove_tP5pml_t_1980
	cmp dword [esi+0x4], 0x6
	jg _Z9PM_WeaponP7pmove_tP5pml_t_1980
	and eax, 0x200
	xor ah, 0x2
	mov [esi+0x624], eax
	jmp _Z9PM_WeaponP7pmove_tP5pml_t_1980
_Z9PM_WeaponP7pmove_tP5pml_t_1550:
	cmp dword [ebx+0xf0], 0x1
	jbe _Z9PM_WeaponP7pmove_tP5pml_t_1540
	mov byte [ebp-0x4a], 0x1
	jmp _Z9PM_WeaponP7pmove_tP5pml_t_1690
_Z9PM_WeaponP7pmove_tP5pml_t_970:
	mov dword [edx+0xec], 0x11
	mov eax, [ecx+0x36c]
	mov [edx+0x3c], eax
	mov eax, [ecx+0x35c]
	mov [edx+0x40], eax
	or dword [edx+0x10], 0x2
	cmp dword [edx+0x4], 0x6
	jg _Z9PM_WeaponP7pmove_tP5pml_t_1990
	mov eax, [edx+0x624]
	and eax, 0x200
	xor ah, 0x2
	or eax, 0x2
	mov [edx+0x624], eax
_Z9PM_WeaponP7pmove_tP5pml_t_1990:
	mov dword [esp+0xc], 0x1
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x2
	mov [esp], edx
	call _Z18BG_AnimScriptEventP13playerState_s22scriptAnimEventTypes_tii
	jmp _Z9PM_WeaponP7pmove_tP5pml_t_20
_Z9PM_WeaponP7pmove_tP5pml_t_1240:
	mov eax, [ecx+0x5b4]
	test eax, eax
	jnz _Z9PM_WeaponP7pmove_tP5pml_t_1230
	cmp dword [ecx+0x5a8], 0x1
	sbb eax, eax
	and eax, 0xfff80001
	add eax, 0x80000
	test [ebp-0x28], eax
	jz _Z9PM_WeaponP7pmove_tP5pml_t_1230
	mov dword [esi+0x40], 0x1
	jmp _Z9PM_WeaponP7pmove_tP5pml_t_20
_Z9PM_WeaponP7pmove_tP5pml_t_1710:
	cmp edx, 0x2
	ja _Z9PM_WeaponP7pmove_tP5pml_t_250
	jmp _Z9PM_WeaponP7pmove_tP5pml_t_280
_Z9PM_WeaponP7pmove_tP5pml_t_600:
	cmp dword [edi+0x4], 0x6
	jg _Z9PM_WeaponP7pmove_tP5pml_t_610
	mov eax, [edi+0x624]
	and eax, 0x200
	xor ah, 0x2
	or eax, 0x4
	mov [edi+0x624], eax
	jmp _Z9PM_WeaponP7pmove_tP5pml_t_610
_Z9PM_WeaponP7pmove_tP5pml_t_1720:
	mov eax, [ebx+0xec]
	sub eax, 0x3
	cmp eax, 0x1
	ja _Z9PM_WeaponP7pmove_tP5pml_t_1760
	and ecx, 0xfffffffd
	mov [ebx+0x10], ecx
	and dh, 0xfd
	mov [ebx+0xc], edx
	mov dword [ebx+0x3c], 0x0
	mov dword [ebx+0x40], 0x0
	mov dword [ebx+0xec], 0x0
	cmp dword [ebx+0x4], 0x6
	jg _Z9PM_WeaponP7pmove_tP5pml_t_2000
	mov eax, [ebx+0x624]
	and eax, 0x200
	xor ah, 0x2
	mov [ebx+0x624], eax
_Z9PM_WeaponP7pmove_tP5pml_t_2000:
	cmp dword [ebx+0x4], 0x6
	jg _Z9PM_WeaponP7pmove_tP5pml_t_410
	mov eax, [ebx+0x624]
	and eax, 0x200
	xor ah, 0x2
	or eax, 0x1
	mov [ebx+0x624], eax
	jmp _Z9PM_WeaponP7pmove_tP5pml_t_410
_Z9PM_WeaponP7pmove_tP5pml_t_1300:
	mov eax, [ebx+0x36c]
	imul eax, [ebx+0x720]
	add eax, [ebx+0x35c]
	mov [edi+0x50], eax
	jmp _Z9PM_WeaponP7pmove_tP5pml_t_1290
_Z9PM_WeaponP7pmove_tP5pml_t_980:
	mov eax, [eax*4+bg_weaponDefs]
	mov eax, [eax+0x3b8]
	mov [edi+0x3c], eax
	mov dword [edi+0x40], 0x0
	cmp dword [edi+0x4], 0x6
	jg _Z9PM_WeaponP7pmove_tP5pml_t_2010
	mov eax, [edi+0x624]
	and eax, 0x200
	xor ah, 0x2
	or eax, 0x14
	mov [edi+0x624], eax
	jmp _Z9PM_WeaponP7pmove_tP5pml_t_2010
_Z9PM_WeaponP7pmove_tP5pml_t_1120:
	mov eax, esi
	jmp _Z9PM_WeaponP7pmove_tP5pml_t_2020
_Z9PM_WeaponP7pmove_tP5pml_t_1910:
	test eax, eax
	jnz _Z9PM_WeaponP7pmove_tP5pml_t_2030
_Z9PM_WeaponP7pmove_tP5pml_t_2080:
	mov edx, ecx
	sar edx, 0x5
	and ecx, 0x1f
	mov eax, 0xfffffffe
	rol eax, cl
	and [edi+edx*4+0x57c], eax
	mov eax, [edi+0x624]
	test eax, 0xfffffdff
	jnz _Z9PM_WeaponP7pmove_tP5pml_t_2040
_Z9PM_WeaponP7pmove_tP5pml_t_2140:
	cmp dword [ebx+0x12c], 0x1
	jz _Z9PM_WeaponP7pmove_tP5pml_t_20
	add dword [edi+0x3c], 0x1f4
	jmp _Z9PM_WeaponP7pmove_tP5pml_t_20
_Z9PM_WeaponP7pmove_tP5pml_t_1620:
	mov eax, [esi*4+bg_weaponDefs]
	mov eax, [eax+0x330]
	mov esi, [ebx+eax*4+0x35c]
	test esi, esi
	jz _Z9PM_WeaponP7pmove_tP5pml_t_1700
	mov dword [ebx+0x3c], 0x1
	cmp dword [ebp-0x70], 0x7
	jz _Z9PM_WeaponP7pmove_tP5pml_t_2050
	cmp dword [ebp-0x70], 0x9
	jz _Z9PM_WeaponP7pmove_tP5pml_t_2050
	cmp dword [ebp-0x70], 0xb
	jz _Z9PM_WeaponP7pmove_tP5pml_t_2050
	cmp dword [ebp-0x70], 0xa
	jz _Z9PM_WeaponP7pmove_tP5pml_t_2050
	cmp dword [ebp-0x70], 0x8
	jz _Z9PM_WeaponP7pmove_tP5pml_t_2050
	cmp dword [ebp-0x70], 0x6
	jz _Z9PM_WeaponP7pmove_tP5pml_t_2060
	mov eax, [ebp-0x70]
	sub eax, 0x5
	cmp eax, 0x1
	jbe _Z9PM_WeaponP7pmove_tP5pml_t_2060
	mov eax, [ebp-0x70]
	sub eax, 0xc
	cmp eax, 0x2
	ja _Z9PM_WeaponP7pmove_tP5pml_t_210
_Z9PM_WeaponP7pmove_tP5pml_t_2060:
	mov eax, [ebx+0x624]
	test eax, 0xfffffdff
	jz _Z9PM_WeaponP7pmove_tP5pml_t_2070
	cmp dword [ebx+0x4], 0x6
	jg _Z9PM_WeaponP7pmove_tP5pml_t_2070
	and eax, 0x200
	xor ah, 0x2
	mov [ebx+0x624], eax
_Z9PM_WeaponP7pmove_tP5pml_t_2070:
	mov dword [ebx+0xec], 0x0
	jmp _Z9PM_WeaponP7pmove_tP5pml_t_210
_Z9PM_WeaponP7pmove_tP5pml_t_1920:
	mov dword [esp+0x4], 0xb
	mov [esp], edi
	call _Z11PM_AddEventP13playerState_si
	mov ecx, [edi+0xe8]
	jmp _Z9PM_WeaponP7pmove_tP5pml_t_2080
_Z9PM_WeaponP7pmove_tP5pml_t_1150:
	test ecx, ecx
	jz _Z9PM_WeaponP7pmove_tP5pml_t_2090
	mov eax, [ebp-0x34]
	mov edi, [eax+0x3bc]
	mov esi, 0xc
	jmp _Z9PM_WeaponP7pmove_tP5pml_t_2100
_Z9PM_WeaponP7pmove_tP5pml_t_750:
	cmp dword [ebp-0x6c], 0x3
	jz _Z9PM_WeaponP7pmove_tP5pml_t_2110
	cmp dword [ebp-0x6c], 0x4
	jnz _Z9PM_WeaponP7pmove_tP5pml_t_720
	cmp dword [ebp-0x1c], 0x3
	jbe _Z9PM_WeaponP7pmove_tP5pml_t_720
	xor eax, eax
	jmp _Z9PM_WeaponP7pmove_tP5pml_t_1190
_Z9PM_WeaponP7pmove_tP5pml_t_1970:
	cmp dword [ebx+0xf0], 0x2
	jbe _Z9PM_WeaponP7pmove_tP5pml_t_1540
	mov byte [ebp-0x4a], 0x1
	jmp _Z9PM_WeaponP7pmove_tP5pml_t_1690
_Z9PM_WeaponP7pmove_tP5pml_t_860:
	mov eax, ebx
	call _Z29PM_Weapon_ReloadDelayedActionP13playerState_s
	mov eax, [ebx+0x3c]
	test eax, eax
	jnz _Z9PM_WeaponP7pmove_tP5pml_t_20
	mov ecx, [ebx+0xe8]
	jmp _Z9PM_WeaponP7pmove_tP5pml_t_2120
_Z9PM_WeaponP7pmove_tP5pml_t_990:
	mov eax, ebx
	call _Z29PM_Weapon_ReloadDelayedActionP13playerState_s
	jmp _Z9PM_WeaponP7pmove_tP5pml_t_2130
_Z9PM_WeaponP7pmove_tP5pml_t_2040:
	cmp dword [edi+0x4], 0x6
	jg _Z9PM_WeaponP7pmove_tP5pml_t_2140
	and eax, 0x200
	xor ah, 0x2
	mov [edi+0x624], eax
	jmp _Z9PM_WeaponP7pmove_tP5pml_t_2140
_Z9PM_WeaponP7pmove_tP5pml_t_460:
	mov eax, [edx+0x380]
	mov [ebx+0x3c], eax
	mov eax, [edx+0x360]
	mov [ebx+0x40], eax
	cmp dword [ebx+0x4], 0x6
	jg _Z9PM_WeaponP7pmove_tP5pml_t_2150
	mov eax, [ebx+0x624]
	and eax, 0x200
	xor ah, 0x2
	or eax, 0x8
	mov [ebx+0x624], eax
_Z9PM_WeaponP7pmove_tP5pml_t_2150:
	xor eax, eax
	jmp _Z9PM_WeaponP7pmove_tP5pml_t_2160
_Z9PM_WeaponP7pmove_tP5pml_t_1660:
	cmp eax, 0x3
	jz _Z9PM_WeaponP7pmove_tP5pml_t_2170
	cmp eax, 0x4
	jnz _Z9PM_WeaponP7pmove_tP5pml_t_1630
	cmp ecx, 0x3
	jbe _Z9PM_WeaponP7pmove_tP5pml_t_1630
	jmp _Z9PM_WeaponP7pmove_tP5pml_t_1640
_Z9PM_WeaponP7pmove_tP5pml_t_2090:
	cmp byte [ebp-0x35], 0x0
	jz _Z9PM_WeaponP7pmove_tP5pml_t_2180
	mov edx, [ebp-0x34]
	mov edi, [edx+0x3b8]
	mov esi, 0x14
	jmp _Z9PM_WeaponP7pmove_tP5pml_t_2100
_Z9PM_WeaponP7pmove_tP5pml_t_1010:
	mov ecx, [ebx+0xe8]
	mov eax, [ecx*4+bg_weaponDefs]
	mov eax, [eax+0x330]
	mov eax, [ebx+eax*4+0x35c]
	test eax, eax
	jnz _Z9PM_WeaponP7pmove_tP5pml_t_1020
	jmp _Z9PM_WeaponP7pmove_tP5pml_t_2190
_Z9PM_WeaponP7pmove_tP5pml_t_1170:
	mov dword [esp+0x4], 0x15
	mov [esp], ebx
	call _Z11PM_AddEventP13playerState_si
	jmp _Z9PM_WeaponP7pmove_tP5pml_t_2200
_Z9PM_WeaponP7pmove_tP5pml_t_1340:
	xor eax, eax
	jmp _Z9PM_WeaponP7pmove_tP5pml_t_2210
_Z9PM_WeaponP7pmove_tP5pml_t_2050:
	mov dword [ebx+0x3c], 0x0
	mov dword [ebx+0xf0], 0x0
	jmp _Z9PM_WeaponP7pmove_tP5pml_t_210
_Z9PM_WeaponP7pmove_tP5pml_t_950:
	mov dword [esp+0x4], 0xd
	mov [esp], ebx
	call _Z11PM_AddEventP13playerState_si
	jmp _Z9PM_WeaponP7pmove_tP5pml_t_940
_Z9PM_WeaponP7pmove_tP5pml_t_500:
	mov dword [esp+0xc], 0x1
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x12
	mov [esp], ebx
	call _Z18BG_AnimScriptEventP13playerState_s22scriptAnimEventTypes_tii
	jmp _Z9PM_WeaponP7pmove_tP5pml_t_2220
_Z9PM_WeaponP7pmove_tP5pml_t_920:
	sub ecx, esi
	cmp eax, ecx
	jg _Z9PM_WeaponP7pmove_tP5pml_t_890
_Z9PM_WeaponP7pmove_tP5pml_t_900:
	mov eax, ebx
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z20PM_SetReloadingStateP13playerState_s
_Z9PM_WeaponP7pmove_tP5pml_t_2110:
	cmp dword [ebp-0x1c], 0x2
	jbe _Z9PM_WeaponP7pmove_tP5pml_t_720
	xor eax, eax
	jmp _Z9PM_WeaponP7pmove_tP5pml_t_1190
_Z9PM_WeaponP7pmove_tP5pml_t_470:
	xor eax, eax
	jmp _Z9PM_WeaponP7pmove_tP5pml_t_2230
_Z9PM_WeaponP7pmove_tP5pml_t_2180:
	mov esi, [ebp-0x34]
	mov edi, [esi+0x3a8]
	mov esi, 0xb
	jmp _Z9PM_WeaponP7pmove_tP5pml_t_2100
_Z9PM_WeaponP7pmove_tP5pml_t_490:
	mov dword [esp+0xc], 0x1
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x11
	mov [esp], ebx
	call _Z18BG_AnimScriptEventP13playerState_s22scriptAnimEventTypes_tii
	jmp _Z9PM_WeaponP7pmove_tP5pml_t_2220
_Z9PM_WeaponP7pmove_tP5pml_t_2170:
	cmp ecx, 0x2
	ja _Z9PM_WeaponP7pmove_tP5pml_t_1640
	jmp _Z9PM_WeaponP7pmove_tP5pml_t_1630
_Z9PM_WeaponP7pmove_tP5pml_t_960:
	xor eax, eax
	jmp _Z9PM_WeaponP7pmove_tP5pml_t_2240
_Z9PM_WeaponP7pmove_tP5pml_t_1040:
	sub esi, edi
	cmp eax, esi
	jg _Z9PM_WeaponP7pmove_tP5pml_t_1020
	jmp _Z9PM_WeaponP7pmove_tP5pml_t_900
_Z9PM_WeaponP7pmove_tP5pml_t_1210:
	xor eax, eax
	jmp _Z9PM_WeaponP7pmove_tP5pml_t_2250
_Z9PM_WeaponP7pmove_tP5pml_t_1470:
	mov eax, [ebp-0x5c]
	mov ebx, [eax]
	mov edx, [ebx+0xec]
	jmp _Z9PM_WeaponP7pmove_tP5pml_t_1480
_Z9PM_WeaponP7pmove_tP5pml_t_1140:
	mov dword [ebp-0x2c], 0x1
	mov ecx, [ebp-0x34]
	mov edi, [ecx+0x3b0]
	movss xmm0, dword [ebx+0x628]
	ucomiss xmm0, [_float_128_00000000]
	jae _Z9PM_WeaponP7pmove_tP5pml_t_2260
	jp _Z9PM_WeaponP7pmove_tP5pml_t_2260
	movss xmm0, dword [_float_128_00000000]
	mov esi, 0x12
	jmp _Z9PM_WeaponP7pmove_tP5pml_t_2270
_Z9PM_WeaponP7pmove_tP5pml_t_1860:
	cmp esi, 0x3
	jz _Z9PM_WeaponP7pmove_tP5pml_t_2280
	cmp esi, 0x4
	jnz _Z9PM_WeaponP7pmove_tP5pml_t_1830
	cmp dword [ebp-0x48], 0x3
	jbe _Z9PM_WeaponP7pmove_tP5pml_t_1830
	jmp _Z9PM_WeaponP7pmove_tP5pml_t_1840
_Z9PM_WeaponP7pmove_tP5pml_t_1870:
	mulss xmm0, [_float_1000_00000000]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x68]
	cvttss2si eax, [ebp-0x68]
	mov [ebx+0x3c], eax
	jmp _Z9PM_WeaponP7pmove_tP5pml_t_2290
_Z9PM_WeaponP7pmove_tP5pml_t_1850:
	cmp dword [ebp-0x48], 0x1
	ja _Z9PM_WeaponP7pmove_tP5pml_t_1840
	jmp _Z9PM_WeaponP7pmove_tP5pml_t_1830
_Z9PM_WeaponP7pmove_tP5pml_t_2260:
	mov esi, 0x12
	jmp _Z9PM_WeaponP7pmove_tP5pml_t_2270
_Z9PM_WeaponP7pmove_tP5pml_t_2280:
	cmp dword [ebp-0x48], 0x2
	ja _Z9PM_WeaponP7pmove_tP5pml_t_1840
	jmp _Z9PM_WeaponP7pmove_tP5pml_t_1830
	nop
	
	
_Z9PM_WeaponP7pmove_tP5pml_t_jumptab_0:
	dd _Z9PM_WeaponP7pmove_tP5pml_t_670
	dd _Z9PM_WeaponP7pmove_tP5pml_t_850
	dd _Z9PM_WeaponP7pmove_tP5pml_t_850
	dd _Z9PM_WeaponP7pmove_tP5pml_t_2300
	dd _Z9PM_WeaponP7pmove_tP5pml_t_2300
	dd _Z9PM_WeaponP7pmove_tP5pml_t_670
	dd _Z9PM_WeaponP7pmove_tP5pml_t_670
	dd _Z9PM_WeaponP7pmove_tP5pml_t_2310
	dd _Z9PM_WeaponP7pmove_tP5pml_t_2310
	dd _Z9PM_WeaponP7pmove_tP5pml_t_2320
	dd _Z9PM_WeaponP7pmove_tP5pml_t_2320
	dd _Z9PM_WeaponP7pmove_tP5pml_t_850
	dd _Z9PM_WeaponP7pmove_tP5pml_t_2330
	dd _Z9PM_WeaponP7pmove_tP5pml_t_2340
	dd _Z9PM_WeaponP7pmove_tP5pml_t_1070
	dd _Z9PM_WeaponP7pmove_tP5pml_t_2350
	dd _Z9PM_WeaponP7pmove_tP5pml_t_2360
	dd _Z9PM_WeaponP7pmove_tP5pml_t_2370
	dd _Z9PM_WeaponP7pmove_tP5pml_t_2380
	dd _Z9PM_WeaponP7pmove_tP5pml_t_2390
	dd _Z9PM_WeaponP7pmove_tP5pml_t_1070
	dd _Z9PM_WeaponP7pmove_tP5pml_t_2400
	dd _Z9PM_WeaponP7pmove_tP5pml_t_2410
	dd _Z9PM_WeaponP7pmove_tP5pml_t_20
	dd _Z9PM_WeaponP7pmove_tP5pml_t_1070
	dd _Z9PM_WeaponP7pmove_tP5pml_t_2420
	dd _Z9PM_WeaponP7pmove_tP5pml_t_2420


;Initialized global or static variables of bg_weapons:
SECTION .data
_ZZ24PM_Weapon_CheckForReloadP7pmove_tE35MY_RELOADSTART_INTERUPT_IGNORE_FRAC: dd 0x3ecccccd, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
bg_lastParsedWeaponIndex: dd 0x0


;Initialized constant data of bg_weapons:
SECTION .rdata


;Zero initialized global or static variables of bg_weapons:
SECTION .bss
bg_numAmmoTypes: resb 0x20
bg_weapAmmoTypes: resb 0x200
bg_numSharedAmmoCaps: resb 0x20
bg_sharedAmmoCaps: resb 0x200
bg_numWeapClips: resb 0x20
bg_weapClips: resb 0x200
penetrationDepthTableLoaded: resb 0x20
bg_weaponDefs: resb 0x204
penetrationDepthTable: resb 0x1e0


;All cstrings:
SECTION .rdata
_cstring_s_s:		db "%s_%s",0
_cstring_bullet_penetrati:		db 015h,"Bullet penetration table param name [%s_%s] is to long.",0ah,0
_cstring_error_parsing_bu:		db 015h,"Error parsing bullet penetration table [%s].",0ah,0
_cstring_mp:		db "mp",0
_cstring_defaultweapon_mp:		db "defaultweapon_mp",0
_cstring_bg_loadweapondef:		db 015h,"BG_LoadWeaponDef: Could not find default weapon",0
_cstring_s_s1:		db "%s: %s",0ah,0
_cstring_shared_ammo_cap_:		db 015h,"Shared ammo cap mismatch for ",22h,"%s",22h," shared ammo cap: ",27h,"%s",22h," set it to %i, but ",22h,"%s",22h," already set it to %i.",0ah,0
_cstring_s_only_grenades_:		db "[%s] Only grenades are currently supported for off hand use",0ah,0
_cstring_s_no_offhand_cla:		db "[%s] No offhand class set",0ah,0
_cstring_none:		db "none",0
_cstring_couldnt_find_wea:		db "Couldn",27h,"t find weapon ",22h,"%s",22h,0ah,0
_cstring_could_not_find_a:		db 015h,"could not find altWeapon ",27h,"%s",27h," for weapon ",27h,"%s",27h,0
_cstring_bullet_pen_table:		db "BULLET_PEN_TABLE",0
_cstring_bullet_penetrati1:		db "bullet penetration table",0
_cstring_infobullet_penet:		db "info/bullet_penetration_mp",0
_cstring_small:		db "small",0
_cstring_medium:		db "medium",0
_cstring_large:		db "large",0



;All constant floats and doubles:
SECTION .rdata
_data16_7fffffff:		dd 0x7fffffff, 0x0, 0x0, 0x0	; OWORD
_float_0_25000000:		dd 0x3e800000	; 0.25
_float_1_00000000:		dd 0x3f800000	; 1
_data16_80000000:		dd 0x80000000, 0x0, 0x0, 0x0	; OWORD
_float_255_00000000:		dd 0x437f0000	; 255
_double_3_14159265:		dq 0x400921fb54442d18	; 3.14159
_double_6_28318531:		dq 0x401921fb54442d18	; 6.28319
_float_0_00000000:		dd 0x0	; 0
_float_0_12500000:		dd 0x3e000000	; 0.125
_float_8_00000000:		dd 0x41000000	; 8
_float_0_01000000:		dd 0x3c23d70a	; 0.01
_float__0_50000000:		dd 0xbf000000	; -0.5
_float_40_00000000:		dd 0x42200000	; 40
_float_20_00000000:		dd 0x41a00000	; 20
_float_11_00000000:		dd 0x41300000	; 11
_float_29_00000000:		dd 0x41e80000	; 29
_float_100_00000000:		dd 0x42c80000	; 100
_float__400_00000000:		dd 0xc3c80000	; -400
_double_0_78539816:		dq 0x3fe921fb54442d18	; 0.785398
_float_0_16000000:		dd 0x3e23d70a	; 0.16
_float_10_00000000:		dd 0x41200000	; 10
_float_4_00000000:		dd 0x40800000	; 4
_double_1_57079633:		dq 0x3ff921fb54442d18	; 1.5708
_float_0_20000000:		dd 0x3e4ccccd	; 0.2
_float_0_75000000:		dd 0x3f400000	; 0.75
_double_0_47123892:		dq 0x3fde28c7460698c7	; 0.471239
_float_1_50000000:		dd 0x3fc00000	; 1.5
_float_45_00000000:		dd 0x42340000	; 45
_float_80_00000000:		dd 0x42a00000	; 80
_float_0_50000000:		dd 0x3f000000	; 0.5
_float_1000_00000000:		dd 0x447a0000	; 1000
_float_0_00070000:		dd 0x3a378034	; 0.0007
_float_0_00100000:		dd 0x3a83126f	; 0.001
_float__255_00000000:		dd 0xc37f0000	; -255
_float_0_00549316:		dd 0x3bb40000	; 0.00549316
_float_0_00277778:		dd 0x3b360b61	; 0.00277778
_float_360_00000000:		dd 0x43b40000	; 360
_float_1_27999997:		dd 0x3fa3d70a	; 1.28
_float__1_00000000:		dd 0xbf800000	; -1
_float_0_10000000:		dd 0x3dcccccd	; 0.1
_float__0_10000000:		dd 0xbdcccccd	; -0.1
_float_0_00050000:		dd 0x3a03126f	; 0.0005
_float_400_00000000:		dd 0x43c80000	; 400
_float_0_00500000:		dd 0x3ba3d70a	; 0.005
_float__2_00000000:		dd 0xc0000000	; -2
_float__0_75000000:		dd 0xbf400000	; -0.75
_float_60_00000000:		dd 0x42700000	; 60
_float_128_00000000:		dd 0x43000000	; 128

