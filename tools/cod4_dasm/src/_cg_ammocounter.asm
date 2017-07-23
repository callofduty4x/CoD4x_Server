;Imports of cg_ammocounter:
	extern BG_ClipForWeapon
	extern CG_CheckPlayerForLowClipSpecific
	extern cgMedia
	extern CL_DrawStretchPicPhysical
	extern sinf
	extern BG_GetWeaponDef
	extern Com_PrintWarning
	extern cgArray
	extern CG_LookingThroughNightVision
	extern hud_fade_ammodisplay
	extern floorf
	extern CG_FadeHudMenu
	extern CG_AltWeaponToggleIndex
	extern scrPlaceView
	extern CL_DrawStretchPic
	extern BG_WeaponAmmo
	extern Com_sprintf
	extern UI_DrawText
	extern BG_GetNumWeapons
	extern ScrPlace_ApplyRect
	extern Cvar_RegisterBool
	extern Cvar_RegisterColor
	extern Cvar_RegisterFloat
	extern CL_DrawStretchPicFlipST
	extern BG_GetTotalAmmoReserve
	extern CG_CheckPlayerForLowAmmoSpecific
	extern BG_AmmoForWeapon
	extern SEH_LocalizeTextMessage
	extern UI_DrawWrappedText

;Exports of cg_ammocounter:
	global colorLowAmmo
	global _ZZ9AmmoColorP4cg_sPfjE11MYFLASHTERM
	global _ZZ27CG_DrawPlayerActionSlotDpadiPK9rectDef_sPKfP8MaterialE5MY_ST
	global _ZZ27CG_DrawPlayerActionSlotDpadiPK9rectDef_sPKfP8MaterialE7MY_DIMS
	global _ZZ27CG_DrawPlayerActionSlotDpadiPK9rectDef_sPKfP8MaterialE10MY_OFFSETS
	global _ZZ19DrawClipAmmoRocketsP4cg_sPKfjPK9WeaponDefPfE16TEST_bullet_step
	global _ZZ19DrawClipAmmoRocketsP4cg_sPKfjPK9WeaponDefPfE14TEST_bullet_wh
	global DrawClipAmmoRockets
	global _ZZ19DrawClipAmmoBeltfedP4cg_sPKfjPK9WeaponDefPfE18TEST_bullet_rowCnt
	global _ZZ19DrawClipAmmoBeltfedP4cg_sPKfjPK9WeaponDefPfE16TEST_bullet_step
	global _ZZ19DrawClipAmmoBeltfedP4cg_sPKfjPK9WeaponDefPfE14TEST_bullet_wh
	global DrawClipAmmoBeltfed
	global _ZZ25DrawClipAmmoShotgunShellsP4cg_sPKfjPK9WeaponDefPfE16TEST_bullet_step
	global _ZZ25DrawClipAmmoShotgunShellsP4cg_sPKfjPK9WeaponDefPfE14TEST_bullet_wh
	global DrawClipAmmoShotgunShells
	global DrawClipAmmoShortMagazine
	global _ZZ20DrawClipAmmoMagazineP4cg_sPKfjPK9WeaponDefPfE14TEST_bullet_wh
	global DrawClipAmmoMagazine
	global DrawClipAmmo
	global CG_GetHudAlphaDPad
	global CG_ActionSlotIsUsable
	global CG_DrawPlayerActionSlot
	global CG_DrawPlayerWeaponIcon
	global CG_GetHudAlphaAmmoCounter
	global CG_AmmoCounterRegisterDvars
	global CG_DrawPlayerActionSlotDpad
	global CG_DrawPlayerWeaponAmmoStock
	global CG_DrawPlayerWeaponBackground
	global CG_DrawPlayerWeaponLowAmmoWarning
	global CG_DrawPlayerWeaponAmmoClipGraphic
	global actionSlotsHide
	global ammoCounterHide
	global lowAmmoWarningColor1
	global lowAmmoWarningColor2
	global lowAmmoWarningNoAmmoColor1
	global lowAmmoWarningNoAmmoColor2
	global lowAmmoWarningNoReloadColor1
	global lowAmmoWarningNoReloadColor2
	global lowAmmoWarningPulseFreq
	global lowAmmoWarningPulseMax
	global lowAmmoWarningPulseMin


SECTION .text


;DrawClipAmmoRockets(cg_s*, float const*, unsigned int, WeaponDef const*, float*)
DrawClipAmmoRockets:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov esi, [ebp+0x8]
	mov eax, [ebp+0xc]
	mov ebx, [ebp+0x10]
	mov edi, [ebp+0x18]
	movss xmm0, dword [eax]
	subss xmm0, [_ZZ19DrawClipAmmoRocketsP4cg_sPKfjPK9WeaponDefPfE14TEST_bullet_wh]
	movss [ebp-0x24], xmm0
	movss xmm0, dword [_float__0_50000000]
	mulss xmm0, [_ZZ19DrawClipAmmoRocketsP4cg_sPKfjPK9WeaponDefPfE14TEST_bullet_wh+0x4]
	movss [ebp-0x20], xmm0
	addss xmm0, [eax+0x4]
	movss [ebp-0x20], xmm0
	mov [esp], ebx
	call BG_ClipForWeapon
	mov eax, [esi+eax*4+0x46498]
	mov [ebp-0x1c], eax
	mov [esp+0x4], ebx
	mov [esp], esi
	call CG_CheckPlayerForLowClipSpecific
	test al, al
	jnz DrawClipAmmoRockets_10
	mov eax, [esi+0x46128]
	mov [esi+0x50318], eax
DrawClipAmmoRockets_60:
	mov eax, [ebp+0x14]
	mov esi, [eax+0x338]
	test esi, esi
	jle DrawClipAmmoRockets_20
	xor ebx, ebx
	mov esi, cgMedia
	jmp DrawClipAmmoRockets_30
DrawClipAmmoRockets_40:
	mov eax, [esi+0x2798]
	mov [esp+0x24], eax
	mov [esp+0x20], edi
	mov dword [esp+0x1c], 0x3f800000
	mov dword [esp+0x18], 0x3f800000
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x0
	mov eax, [_ZZ19DrawClipAmmoRocketsP4cg_sPKfjPK9WeaponDefPfE14TEST_bullet_wh+0x4]
	mov [esp+0xc], eax
	mov eax, [_ZZ19DrawClipAmmoRocketsP4cg_sPKfjPK9WeaponDefPfE14TEST_bullet_wh]
	mov [esp+0x8], eax
	movss xmm0, dword [ebp-0x20]
	movss [esp+0x4], xmm0
	movss xmm0, dword [ebp-0x24]
	movss [esp], xmm0
	call CL_DrawStretchPicPhysical
	movss xmm0, dword [ebp-0x24]
	subss xmm0, [_ZZ19DrawClipAmmoRocketsP4cg_sPKfjPK9WeaponDefPfE16TEST_bullet_step]
	movss [ebp-0x24], xmm0
	add ebx, 0x1
	mov eax, [ebp+0x14]
	cmp [eax+0x338], ebx
	jle DrawClipAmmoRockets_20
DrawClipAmmoRockets_30:
	cmp ebx, [ebp-0x1c]
	jnz DrawClipAmmoRockets_40
	mov dword [edi], 0x3e99999a
	mov dword [edi+0x4], 0x3e99999a
	mov dword [edi+0x8], 0x3e99999a
	jmp DrawClipAmmoRockets_40
DrawClipAmmoRockets_20:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
DrawClipAmmoRockets_10:
	mov eax, [esi+0x46128]
	sub eax, [esi+0x50318]
	cvtsi2ss xmm1, eax
	cvtss2sd xmm1, xmm1
	cvtss2sd xmm0, [_ZZ9AmmoColorP4cg_sPfjE11MYFLASHTERM]
	mulsd xmm0, [_double_3_14159265]
	divsd xmm1, xmm0
	cvtsd2ss xmm1, xmm1
	movss [esp], xmm1
	call sinf
	fstp dword [ebp-0x2c]
	movss xmm2, dword [ebp-0x2c]
	movss xmm0, dword [_float_0_50000000]
	mulss xmm2, xmm0
	addss xmm2, xmm0
	xor edx, edx
DrawClipAmmoRockets_50:
	lea eax, [edi+edx]
	movss xmm1, dword [eax]
	movss xmm0, dword [edx+colorLowAmmo]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [eax], xmm1
	add edx, 0x4
	cmp edx, 0xc
	jnz DrawClipAmmoRockets_50
	jmp DrawClipAmmoRockets_60


;DrawClipAmmoBeltfed(cg_s*, float const*, unsigned int, WeaponDef const*, float*)
DrawClipAmmoBeltfed:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0x10]
	mov edi, [ebp+0x18]
	movss xmm0, dword [_ZZ19DrawClipAmmoBeltfedP4cg_sPKfjPK9WeaponDefPfE16TEST_bullet_step]
	movss [ebp-0x1c], xmm0
	mov eax, [ebp+0xc]
	movss xmm0, dword [eax]
	movss [ebp-0x28], xmm0
	movss xmm0, dword [_float_0_25000000]
	mulss xmm0, [_ZZ19DrawClipAmmoBeltfedP4cg_sPKfjPK9WeaponDefPfE14TEST_bullet_wh+0x4]
	movss [ebp-0x24], xmm0
	mov edx, [ebp+0x14]
	mov eax, [edx+0x338]
	cdq
	idiv dword [_ZZ19DrawClipAmmoBeltfedP4cg_sPKfjPK9WeaponDefPfE18TEST_bullet_rowCnt]
	cvtsi2ss xmm0, eax
	mulss xmm0, [ebp-0x24]
	movss [ebp-0x24], xmm0
	mov ecx, [ebp+0xc]
	addss xmm0, [ecx+0x4]
	movss [ebp-0x24], xmm0
	mov [esp], ebx
	call BG_ClipForWeapon
	mov eax, [esi+eax*4+0x46498]
	mov [ebp-0x20], eax
	mov [esp+0x4], ebx
	mov [esp], esi
	call CG_CheckPlayerForLowClipSpecific
	test al, al
	jnz DrawClipAmmoBeltfed_10
	mov eax, [esi+0x46128]
	mov [esi+0x50318], eax
DrawClipAmmoBeltfed_70:
	mov eax, [ebp+0x14]
	mov eax, [eax+0x338]
	test eax, eax
	jle DrawClipAmmoBeltfed_20
	xor ebx, ebx
	mov esi, cgMedia
	jmp DrawClipAmmoBeltfed_30
DrawClipAmmoBeltfed_50:
	mov eax, ebx
	cdq
	idiv dword [_ZZ19DrawClipAmmoBeltfedP4cg_sPKfjPK9WeaponDefPfE18TEST_bullet_rowCnt]
	test edx, edx
	jnz DrawClipAmmoBeltfed_40
	xor dword [ebp-0x1c], 0x80000000
	movss xmm0, dword [ebp-0x24]
	addss xmm0, [_ZZ19DrawClipAmmoBeltfedP4cg_sPKfjPK9WeaponDefPfE16TEST_bullet_step+0x4]
	movss [ebp-0x24], xmm0
	movss xmm0, dword [ebp-0x28]
	addss xmm0, [ebp-0x1c]
	movss [ebp-0x28], xmm0
DrawClipAmmoBeltfed_40:
	mov eax, [esi+0x2790]
	mov [esp+0x24], eax
	mov [esp+0x20], edi
	mov dword [esp+0x1c], 0x3f800000
	mov dword [esp+0x18], 0x3f800000
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x0
	mov eax, [_ZZ19DrawClipAmmoBeltfedP4cg_sPKfjPK9WeaponDefPfE14TEST_bullet_wh+0x4]
	mov [esp+0xc], eax
	mov eax, [_ZZ19DrawClipAmmoBeltfedP4cg_sPKfjPK9WeaponDefPfE14TEST_bullet_wh]
	mov [esp+0x8], eax
	movss xmm0, dword [ebp-0x24]
	movss [esp+0x4], xmm0
	movss xmm0, dword [ebp-0x28]
	movss [esp], xmm0
	call CL_DrawStretchPicPhysical
	movss xmm0, dword [ebp-0x28]
	addss xmm0, [ebp-0x1c]
	movss [ebp-0x28], xmm0
	add ebx, 0x1
	mov eax, [ebp+0x14]
	cmp [eax+0x338], ebx
	jle DrawClipAmmoBeltfed_20
DrawClipAmmoBeltfed_30:
	cmp ebx, [ebp-0x20]
	jnz DrawClipAmmoBeltfed_50
	mov dword [edi], 0x3e99999a
	mov dword [edi+0x4], 0x3e99999a
	mov dword [edi+0x8], 0x3e99999a
	jmp DrawClipAmmoBeltfed_50
DrawClipAmmoBeltfed_20:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
DrawClipAmmoBeltfed_10:
	mov eax, [esi+0x46128]
	sub eax, [esi+0x50318]
	cvtsi2ss xmm1, eax
	cvtss2sd xmm1, xmm1
	cvtss2sd xmm0, [_ZZ9AmmoColorP4cg_sPfjE11MYFLASHTERM]
	mulsd xmm0, [_double_3_14159265]
	divsd xmm1, xmm0
	cvtsd2ss xmm1, xmm1
	movss [esp], xmm1
	call sinf
	fstp dword [ebp-0x2c]
	movss xmm2, dword [ebp-0x2c]
	movss xmm0, dword [_float_0_50000000]
	mulss xmm2, xmm0
	addss xmm2, xmm0
	xor edx, edx
DrawClipAmmoBeltfed_60:
	lea eax, [edi+edx]
	movss xmm1, dword [eax]
	movss xmm0, dword [edx+colorLowAmmo]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [eax], xmm1
	add edx, 0x4
	cmp edx, 0xc
	jnz DrawClipAmmoBeltfed_60
	jmp DrawClipAmmoBeltfed_70
	nop


;DrawClipAmmoShotgunShells(cg_s*, float const*, unsigned int, WeaponDef const*, float*)
DrawClipAmmoShotgunShells:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov esi, [ebp+0x8]
	mov eax, [ebp+0xc]
	mov ebx, [ebp+0x10]
	mov edi, [ebp+0x18]
	movss xmm0, dword [eax]
	subss xmm0, [_ZZ25DrawClipAmmoShotgunShellsP4cg_sPKfjPK9WeaponDefPfE14TEST_bullet_wh]
	movss [ebp-0x24], xmm0
	movss xmm0, dword [_float__0_50000000]
	mulss xmm0, [_ZZ25DrawClipAmmoShotgunShellsP4cg_sPKfjPK9WeaponDefPfE14TEST_bullet_wh+0x4]
	movss [ebp-0x20], xmm0
	addss xmm0, [eax+0x4]
	movss [ebp-0x20], xmm0
	mov [esp], ebx
	call BG_ClipForWeapon
	mov eax, [esi+eax*4+0x46498]
	mov [ebp-0x1c], eax
	mov [esp+0x4], ebx
	mov [esp], esi
	call CG_CheckPlayerForLowClipSpecific
	test al, al
	jnz DrawClipAmmoShotgunShells_10
	mov eax, [esi+0x46128]
	mov [esi+0x50318], eax
DrawClipAmmoShotgunShells_60:
	mov eax, [ebp+0x14]
	mov eax, [eax+0x338]
	test eax, eax
	jle DrawClipAmmoShotgunShells_20
	xor ebx, ebx
	mov esi, cgMedia
	jmp DrawClipAmmoShotgunShells_30
DrawClipAmmoShotgunShells_40:
	mov eax, [esi+0x279c]
	mov [esp+0x24], eax
	mov [esp+0x20], edi
	mov dword [esp+0x1c], 0x3f800000
	mov dword [esp+0x18], 0x3f800000
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x0
	mov eax, [_ZZ25DrawClipAmmoShotgunShellsP4cg_sPKfjPK9WeaponDefPfE14TEST_bullet_wh+0x4]
	mov [esp+0xc], eax
	mov eax, [_ZZ25DrawClipAmmoShotgunShellsP4cg_sPKfjPK9WeaponDefPfE14TEST_bullet_wh]
	mov [esp+0x8], eax
	movss xmm0, dword [ebp-0x20]
	movss [esp+0x4], xmm0
	movss xmm0, dword [ebp-0x24]
	movss [esp], xmm0
	call CL_DrawStretchPicPhysical
	movss xmm0, dword [ebp-0x24]
	subss xmm0, [_ZZ25DrawClipAmmoShotgunShellsP4cg_sPKfjPK9WeaponDefPfE16TEST_bullet_step]
	movss [ebp-0x24], xmm0
	add ebx, 0x1
	mov eax, [ebp+0x14]
	cmp [eax+0x338], ebx
	jle DrawClipAmmoShotgunShells_20
DrawClipAmmoShotgunShells_30:
	cmp ebx, [ebp-0x1c]
	jnz DrawClipAmmoShotgunShells_40
	mov dword [edi], 0x3e99999a
	mov dword [edi+0x4], 0x3e99999a
	mov dword [edi+0x8], 0x3e99999a
	jmp DrawClipAmmoShotgunShells_40
DrawClipAmmoShotgunShells_20:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
DrawClipAmmoShotgunShells_10:
	mov eax, [esi+0x46128]
	sub eax, [esi+0x50318]
	cvtsi2ss xmm1, eax
	cvtss2sd xmm1, xmm1
	cvtss2sd xmm0, [_ZZ9AmmoColorP4cg_sPfjE11MYFLASHTERM]
	mulsd xmm0, [_double_3_14159265]
	divsd xmm1, xmm0
	cvtsd2ss xmm1, xmm1
	movss [esp], xmm1
	call sinf
	fstp dword [ebp-0x2c]
	movss xmm2, dword [ebp-0x2c]
	movss xmm0, dword [_float_0_50000000]
	mulss xmm2, xmm0
	addss xmm2, xmm0
	xor edx, edx
DrawClipAmmoShotgunShells_50:
	lea eax, [edi+edx]
	movss xmm1, dword [eax]
	movss xmm0, dword [edx+colorLowAmmo]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [eax], xmm1
	add edx, 0x4
	cmp edx, 0xc
	jnz DrawClipAmmoShotgunShells_50
	jmp DrawClipAmmoShotgunShells_60


;DrawClipAmmoShortMagazine(cg_s*, float const*, unsigned int, WeaponDef const*, float*)
DrawClipAmmoShortMagazine:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov esi, [ebp+0x8]
	mov eax, [ebp+0xc]
	mov ebx, [ebp+0x10]
	mov edi, [ebp+0x18]
	movss xmm0, dword [eax]
	subss xmm0, [_float_32_00000000]
	movss [ebp-0x24], xmm0
	movss xmm0, dword [_float__4_00000000]
	movss [ebp-0x20], xmm0
	addss xmm0, [eax+0x4]
	movss [ebp-0x20], xmm0
	mov [esp], ebx
	call BG_ClipForWeapon
	mov eax, [esi+eax*4+0x46498]
	mov [ebp-0x1c], eax
	mov [esp+0x4], ebx
	mov [esp], esi
	call CG_CheckPlayerForLowClipSpecific
	test al, al
	jnz DrawClipAmmoShortMagazine_10
	mov eax, [esi+0x46128]
	mov [esi+0x50318], eax
DrawClipAmmoShortMagazine_60:
	mov eax, [ebp+0x14]
	mov eax, [eax+0x338]
	test eax, eax
	jle DrawClipAmmoShortMagazine_20
	xor ebx, ebx
	mov esi, cgMedia
	jmp DrawClipAmmoShortMagazine_30
DrawClipAmmoShortMagazine_40:
	mov eax, [esi+0x2794]
	mov [esp+0x24], eax
	mov [esp+0x20], edi
	mov dword [esp+0x1c], 0x3f800000
	mov dword [esp+0x18], 0x3f800000
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x41000000
	mov dword [esp+0x8], 0x42000000
	movss xmm0, dword [ebp-0x20]
	movss [esp+0x4], xmm0
	movss xmm0, dword [ebp-0x24]
	movss [esp], xmm0
	call CL_DrawStretchPicPhysical
	movss xmm0, dword [ebp-0x24]
	subss xmm0, [_float_40_00000000]
	movss [ebp-0x24], xmm0
	add ebx, 0x1
	mov eax, [ebp+0x14]
	cmp [eax+0x338], ebx
	jle DrawClipAmmoShortMagazine_20
DrawClipAmmoShortMagazine_30:
	cmp ebx, [ebp-0x1c]
	jnz DrawClipAmmoShortMagazine_40
	mov dword [edi], 0x3e99999a
	mov dword [edi+0x4], 0x3e99999a
	mov dword [edi+0x8], 0x3e99999a
	jmp DrawClipAmmoShortMagazine_40
DrawClipAmmoShortMagazine_20:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
DrawClipAmmoShortMagazine_10:
	mov eax, [esi+0x46128]
	sub eax, [esi+0x50318]
	cvtsi2ss xmm1, eax
	cvtss2sd xmm1, xmm1
	cvtss2sd xmm0, [_ZZ9AmmoColorP4cg_sPfjE11MYFLASHTERM]
	mulsd xmm0, [_double_3_14159265]
	divsd xmm1, xmm0
	cvtsd2ss xmm1, xmm1
	movss [esp], xmm1
	call sinf
	fstp dword [ebp-0x2c]
	movss xmm2, dword [ebp-0x2c]
	movss xmm0, dword [_float_0_50000000]
	mulss xmm2, xmm0
	addss xmm2, xmm0
	xor edx, edx
DrawClipAmmoShortMagazine_50:
	lea eax, [edi+edx]
	movss xmm1, dword [eax]
	movss xmm0, dword [edx+colorLowAmmo]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [eax], xmm1
	add edx, 0x4
	cmp edx, 0xc
	jnz DrawClipAmmoShortMagazine_50
	jmp DrawClipAmmoShortMagazine_60


;DrawClipAmmoMagazine(cg_s*, float const*, unsigned int, WeaponDef const*, float*)
DrawClipAmmoMagazine:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov esi, [ebp+0x8]
	mov eax, [ebp+0xc]
	mov ebx, [ebp+0x10]
	mov edi, [ebp+0x18]
	movss xmm0, dword [eax]
	subss xmm0, [_float_4_00000000]
	movss [ebp-0x24], xmm0
	movss xmm0, dword [_float__4_00000000]
	movss [ebp-0x20], xmm0
	addss xmm0, [eax+0x4]
	movss [ebp-0x20], xmm0
	mov [esp], ebx
	call BG_ClipForWeapon
	mov eax, [esi+eax*4+0x46498]
	mov [ebp-0x1c], eax
	mov [esp+0x4], ebx
	mov [esp], esi
	call CG_CheckPlayerForLowClipSpecific
	test al, al
	jnz DrawClipAmmoMagazine_10
	mov eax, [esi+0x46128]
	mov [esi+0x50318], eax
DrawClipAmmoMagazine_60:
	mov eax, [ebp+0x14]
	mov eax, [eax+0x338]
	test eax, eax
	jle DrawClipAmmoMagazine_20
	xor ebx, ebx
	mov esi, cgMedia
	jmp DrawClipAmmoMagazine_30
DrawClipAmmoMagazine_40:
	mov eax, [esi+0x278c]
	mov [esp+0x24], eax
	mov [esp+0x20], edi
	mov dword [esp+0x1c], 0x3f800000
	mov dword [esp+0x18], 0x3f800000
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x41000000
	mov dword [esp+0x8], 0x40800000
	movss xmm0, dword [ebp-0x20]
	movss [esp+0x4], xmm0
	movss xmm0, dword [ebp-0x24]
	movss [esp], xmm0
	call CL_DrawStretchPicPhysical
	movss xmm0, dword [ebp-0x24]
	subss xmm0, [_float_4_00000000]
	movss [ebp-0x24], xmm0
	add ebx, 0x1
	mov eax, [ebp+0x14]
	cmp [eax+0x338], ebx
	jle DrawClipAmmoMagazine_20
DrawClipAmmoMagazine_30:
	cmp ebx, [ebp-0x1c]
	jnz DrawClipAmmoMagazine_40
	mov dword [edi], 0x3e99999a
	mov dword [edi+0x4], 0x3e99999a
	mov dword [edi+0x8], 0x3e99999a
	jmp DrawClipAmmoMagazine_40
DrawClipAmmoMagazine_20:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
DrawClipAmmoMagazine_10:
	mov eax, [esi+0x46128]
	sub eax, [esi+0x50318]
	cvtsi2ss xmm1, eax
	cvtss2sd xmm1, xmm1
	cvtss2sd xmm0, [_ZZ9AmmoColorP4cg_sPfjE11MYFLASHTERM]
	mulsd xmm0, [_double_3_14159265]
	divsd xmm1, xmm0
	cvtsd2ss xmm1, xmm1
	movss [esp], xmm1
	call sinf
	fstp dword [ebp-0x2c]
	movss xmm2, dword [ebp-0x2c]
	movss xmm0, dword [_float_0_50000000]
	mulss xmm2, xmm0
	addss xmm2, xmm0
	xor edx, edx
DrawClipAmmoMagazine_50:
	lea eax, [edi+edx]
	movss xmm1, dword [eax]
	movss xmm0, dword [edx+colorLowAmmo]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [eax], xmm1
	add edx, 0x4
	cmp edx, 0xc
	jnz DrawClipAmmoMagazine_50
	jmp DrawClipAmmoMagazine_60


;DrawClipAmmo(cg_s*, float const*, int, WeaponDef const*, float*)
DrawClipAmmo:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov [ebp-0x1c], eax
	mov edi, edx
	mov ebx, [ebp+0x8]
DrawClipAmmo_40:
	cmp dword [ebx+0x31c], 0x6
	ja DrawClipAmmo_10
	mov eax, [ebx+0x31c]
	jmp dword [eax*4+DrawClipAmmo_jumptab_0]
DrawClipAmmo_50:
	mov eax, [ebp+0xc]
	mov [esp+0x10], eax
	mov [esp+0xc], ebx
	mov [esp+0x8], ecx
	mov [esp+0x4], edi
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call DrawClipAmmoMagazine
DrawClipAmmo_10:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
DrawClipAmmo_100:
	mov eax, [ebx+0x540]
	test eax, eax
	jz DrawClipAmmo_20
	mov [esp], eax
	call BG_GetWeaponDef
	cmp dword [eax+0x31c], 0x6
	jz DrawClipAmmo_30
	mov esi, [ebx+0x540]
	test esi, esi
	jz DrawClipAmmo_10
	mov [esp], esi
	call BG_GetWeaponDef
	mov ebx, eax
	mov ecx, esi
	jmp DrawClipAmmo_40
DrawClipAmmo_90:
	mov eax, [ebp+0xc]
	mov [esp+0x10], eax
	mov [esp+0xc], ebx
	mov [esp+0x8], ecx
	mov [esp+0x4], edi
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call DrawClipAmmoBeltfed
	jmp DrawClipAmmo_10
DrawClipAmmo_80:
	mov eax, [ebp+0xc]
	mov [esp+0x10], eax
	mov [esp+0xc], ebx
	mov [esp+0x8], ecx
	mov [esp+0x4], edi
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call DrawClipAmmoRockets
	jmp DrawClipAmmo_10
DrawClipAmmo_70:
	mov eax, [ebp+0xc]
	mov [esp+0x10], eax
	mov [esp+0xc], ebx
	mov [esp+0x8], ecx
	mov [esp+0x4], edi
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call DrawClipAmmoShotgunShells
	jmp DrawClipAmmo_10
DrawClipAmmo_60:
	mov eax, [ebp+0xc]
	mov [esp+0x10], eax
	mov [esp+0xc], ebx
	mov [esp+0x8], ecx
	mov [esp+0x4], edi
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call DrawClipAmmoShortMagazine
	jmp DrawClipAmmo_10
DrawClipAmmo_20:
	mov eax, [ebx]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_weapon_s_ammocou
	mov dword [esp], 0x11
	call Com_PrintWarning
	jmp DrawClipAmmo_10
DrawClipAmmo_30:
	mov eax, [eax]
	mov [esp+0xc], eax
	mov eax, [ebx]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_weapon_s_and_its
	mov dword [esp], 0x11
	call Com_PrintWarning
	jmp DrawClipAmmo_10
	nop
	
	
DrawClipAmmo_jumptab_0:
	dd DrawClipAmmo_10
	dd DrawClipAmmo_50
	dd DrawClipAmmo_60
	dd DrawClipAmmo_70
	dd DrawClipAmmo_80
	dd DrawClipAmmo_90
	dd DrawClipAmmo_100


;CG_GetHudAlphaDPad(int)
CG_GetHudAlphaDPad:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov edx, cgArray
	cmp byte [edx+0x4614c], 0x0
	js CG_GetHudAlphaDPad_10
	mov ebx, edx
	mov edi, 0x3f800000
	mov esi, edx
CG_GetHudAlphaDPad_50:
	mov eax, [ebx+0x4673c]
	cmp eax, 0x2
	jz CG_GetHudAlphaDPad_20
	cmp eax, 0x3
	jz CG_GetHudAlphaDPad_30
	sub eax, 0x1
	jz CG_GetHudAlphaDPad_40
CG_GetHudAlphaDPad_70:
	add ebx, 0x4
	mov edx, esi
	lea eax, [esi+0x10]
	cmp ebx, eax
	jnz CG_GetHudAlphaDPad_50
	cmp byte [esi+0x4614c], 0x0
	jns CG_GetHudAlphaDPad_60
CG_GetHudAlphaDPad_10:
	fldz
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_GetHudAlphaDPad_20:
	mov eax, [edx+0x5036c]
	mov [esp], eax
	call BG_GetWeaponDef
	cmp dword [eax+0x13c], 0x3
	jnz CG_GetHudAlphaDPad_70
CG_GetHudAlphaDPad_90:
	mov [ebp-0x2c], edi
	fld dword [ebp-0x2c]
CG_GetHudAlphaDPad_80:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_GetHudAlphaDPad_30:
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_LookingThroughNightVision
	test al, al
	jz CG_GetHudAlphaDPad_70
	mov [ebp-0x2c], edi
	fld dword [ebp-0x2c]
	jmp CG_GetHudAlphaDPad_80
CG_GetHudAlphaDPad_40:
	mov eax, [edx+0x5036c]
	cmp eax, [ebx+0x4674c]
	jnz CG_GetHudAlphaDPad_70
	jmp CG_GetHudAlphaDPad_90
CG_GetHudAlphaDPad_60:
	mov eax, hud_fade_ammodisplay
	mov ebx, [eax]
	movss xmm0, dword [_float_1000_00000000]
	mulss xmm0, [ebx+0xc]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x1c]
	cvttss2si eax, [ebp-0x1c]
	mov [esp+0xc], eax
	mov eax, [esi+0x504bc]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_FadeHudMenu
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;CG_ActionSlotIsUsable(int, unsigned int)
CG_ActionSlotIsUsable:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0xc]
	mov ebx, cgArray
	mov edx, [ebx+eax*4+0x4673c]
	cmp edx, 0x2
	jz CG_ActionSlotIsUsable_10
	cmp edx, 0x3
	jz CG_ActionSlotIsUsable_20
	cmp edx, 0x1
	jz CG_ActionSlotIsUsable_30
CG_ActionSlotIsUsable_40:
	xor eax, eax
	add esp, 0x14
	pop ebx
	pop ebp
	ret
CG_ActionSlotIsUsable_30:
	mov ecx, [ebx+eax*4+0x4674c]
	test ecx, ecx
	jz CG_ActionSlotIsUsable_40
	mov eax, ecx
	sar eax, 0x5
	and ecx, 0x1f
	shl edx, cl
	test [ebx+eax*4+0x46698], edx
	jz CG_ActionSlotIsUsable_40
CG_ActionSlotIsUsable_20:
	mov eax, 0x1
CG_ActionSlotIsUsable_50:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
CG_ActionSlotIsUsable_10:
	mov [esp+0x4], ebx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_AltWeaponToggleIndex
	test eax, eax
	jz CG_ActionSlotIsUsable_40
	mov eax, 0x1
	jmp CG_ActionSlotIsUsable_50
	nop


;CG_DrawPlayerActionSlot(int, rectDef_s const*, unsigned int, float*, Font_s*, float, int)
CG_DrawPlayerActionSlot:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xdc
	mov edx, [ebp+0x14]
	mov eax, [edx]
	mov [ebp-0x28], eax
	mov eax, [edx+0x4]
	mov [ebp-0x24], eax
	mov eax, [edx+0x8]
	mov [ebp-0x20], eax
	mov eax, [edx+0xc]
	mov [ebp-0x1c], eax
	mov ebx, cgArray
	mov edx, [ebp+0x10]
	mov eax, [ebx+edx*4+0x4673c]
	cmp eax, 0x2
	jz CG_DrawPlayerActionSlot_10
	cmp eax, 0x3
	jz CG_DrawPlayerActionSlot_20
	sub eax, 0x1
	jz CG_DrawPlayerActionSlot_30
CG_DrawPlayerActionSlot_170:
	movss xmm0, dword [ebp-0x1c]
	movss [ebp-0x84], xmm0
	cmp byte [ebx+0x4614c], 0x0
	js CG_DrawPlayerActionSlot_40
	mov esi, ebx
	mov edi, cgArray
CG_DrawPlayerActionSlot_80:
	mov eax, [esi+0x4673c]
	cmp eax, 0x2
	jz CG_DrawPlayerActionSlot_50
	cmp eax, 0x3
	jz CG_DrawPlayerActionSlot_60
	sub eax, 0x1
	jz CG_DrawPlayerActionSlot_70
CG_DrawPlayerActionSlot_150:
	add esi, 0x4
	mov ebx, edi
	lea eax, [edi+0x10]
	cmp esi, eax
	jnz CG_DrawPlayerActionSlot_80
CG_DrawPlayerActionSlot_250:
	cmp byte [edi+0x4614c], 0x0
	jns CG_DrawPlayerActionSlot_90
CG_DrawPlayerActionSlot_40:
	pxor xmm1, xmm1
	movaps xmm0, xmm1
CG_DrawPlayerActionSlot_160:
	mulss xmm0, [ebp-0x84]
	movss [ebp-0x1c], xmm0
	ucomiss xmm0, xmm1
	jp CG_DrawPlayerActionSlot_100
	jz CG_DrawPlayerActionSlot_110
CG_DrawPlayerActionSlot_100:
	mov ebx, cgArray
	mov ecx, [ebp+0x10]
	mov edx, [ebx+ecx*4+0x4673c]
	cmp edx, 0x2
	jz CG_DrawPlayerActionSlot_120
	cmp edx, 0x3
	jz CG_DrawPlayerActionSlot_130
	cmp edx, 0x1
	jz CG_DrawPlayerActionSlot_140
CG_DrawPlayerActionSlot_110:
	add esp, 0xdc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_DrawPlayerActionSlot_50:
	mov eax, [ebx+0x5036c]
	mov [esp], eax
	call BG_GetWeaponDef
	cmp dword [eax+0x13c], 0x3
	jnz CG_DrawPlayerActionSlot_150
CG_DrawPlayerActionSlot_240:
	movss xmm0, dword [_float_1_00000000]
	pxor xmm1, xmm1
	jmp CG_DrawPlayerActionSlot_160
CG_DrawPlayerActionSlot_10:
	mov eax, [ebx+0x5036c]
	mov [esp], eax
	call BG_GetWeaponDef
	cmp dword [eax+0x13c], 0x3
	jnz CG_DrawPlayerActionSlot_170
CG_DrawPlayerActionSlot_180:
	movss xmm0, dword [_float_1_20000005]
	movss xmm1, dword [ebp-0x28]
	mulss xmm1, xmm0
	movss [ebp-0x28], xmm1
	movss xmm1, dword [ebp-0x24]
	mulss xmm1, xmm0
	movss [ebp-0x24], xmm1
	mulss xmm0, [ebp-0x20]
	movss [ebp-0x20], xmm0
	mov dword [ebp-0x1c], 0x3f800000
	jmp CG_DrawPlayerActionSlot_170
CG_DrawPlayerActionSlot_60:
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_LookingThroughNightVision
	test al, al
	jz CG_DrawPlayerActionSlot_150
	movss xmm0, dword [_float_1_00000000]
	pxor xmm1, xmm1
	jmp CG_DrawPlayerActionSlot_160
CG_DrawPlayerActionSlot_20:
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call CG_LookingThroughNightVision
	test al, al
	jnz CG_DrawPlayerActionSlot_180
	jmp CG_DrawPlayerActionSlot_170
CG_DrawPlayerActionSlot_120:
	mov edi, [ebx+0x5036c]
	mov [esp], edi
	call BG_GetWeaponDef
	mov esi, eax
	cmp dword [eax+0x13c], 0x3
	jz CG_DrawPlayerActionSlot_190
	mov [esp+0x4], ebx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_AltWeaponToggleIndex
	mov edi, eax
	test eax, eax
	jz CG_DrawPlayerActionSlot_110
	mov [esp], eax
	call BG_GetWeaponDef
	mov esi, eax
CG_DrawPlayerActionSlot_190:
	mov eax, [esi+0x528]
	cmp eax, 0x2
	jz CG_DrawPlayerActionSlot_200
	sub eax, 0x1
	jz CG_DrawPlayerActionSlot_210
	mov ecx, [ebp+0xc]
	mov edx, [ecx]
	movss xmm2, dword [ecx+0x4]
	movss xmm1, dword [ecx+0x8]
	movss xmm0, dword [ecx+0xc]
CG_DrawPlayerActionSlot_310:
	mov eax, [ebp+0x8]
	shl eax, 0x6
	mov ecx, [ebp+0x8]
	lea eax, [eax+ecx*4]
	mov ecx, scrPlaceView
	add eax, ecx
	mov [ebp-0x78], eax
	mov eax, [esi+0x524]
	mov [esp+0x30], eax
	lea eax, [ebp-0x28]
	mov [esp+0x2c], eax
	mov ebx, 0x3f800000
	mov [esp+0x28], ebx
	mov [esp+0x24], ebx
	xor eax, eax
	mov [esp+0x20], eax
	mov [esp+0x1c], eax
	mov ecx, [ebp+0xc]
	mov eax, [ecx+0x14]
	mov [esp+0x18], eax
	mov eax, [ecx+0x10]
	mov [esp+0x14], eax
	movss [esp+0x10], xmm0
	movss [esp+0xc], xmm1
	movss [esp+0x8], xmm2
	mov [esp+0x4], edx
	mov eax, [ebp-0x78]
	mov [esp], eax
	call CL_DrawStretchPic
	mov [esp+0x4], edi
	mov edx, cgArray
	add edx, 0x4613c
	mov [ebp-0x8c], edx
	mov [esp], edx
	call BG_WeaponAmmo
	test eax, eax
	jnz CG_DrawPlayerActionSlot_220
	mov [ebp-0x28], ebx
	mov eax, 0x3e99999a
	mov [ebp-0x24], eax
	mov [ebp-0x20], eax
CG_DrawPlayerActionSlot_220:
	mov ecx, [ebp+0xc]
	movss xmm0, dword [ecx+0x8]
	movaps xmm1, xmm0
	addss xmm1, [ecx]
	subss xmm1, [_float_13_00000000]
	movss [ebp-0x70], xmm1
	movss xmm1, dword [ecx+0x4]
	movss [ebp-0x74], xmm1
	addss xmm1, [ecx+0xc]
	addss xmm1, [_float_3_00000000]
	movss [ebp-0x74], xmm1
	mov eax, [esi+0x528]
	sub eax, 0x1
	cmp eax, 0x1
	jbe CG_DrawPlayerActionSlot_230
CG_DrawPlayerActionSlot_320:
	mov [esp+0x4], edi
	mov eax, [ebp-0x8c]
	mov [esp], eax
	call BG_WeaponAmmo
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_3i
	mov dword [esp+0x4], 0x40
	lea ebx, [ebp-0x68]
	mov [esp], ebx
	call Com_sprintf
	mov edx, [ebp+0x20]
	mov [esp+0x28], edx
	lea ecx, [ebp-0x28]
	mov [esp+0x24], ecx
	movss xmm0, dword [ebp+0x1c]
	movss [esp+0x20], xmm0
	mov edx, [ebp+0xc]
	mov eax, [edx+0x14]
	mov [esp+0x1c], eax
	mov eax, [edx+0x10]
	mov [esp+0x18], eax
	movss xmm0, dword [ebp-0x74]
	movss [esp+0x14], xmm0
	movss xmm1, dword [ebp-0x70]
	movss [esp+0x10], xmm1
	mov eax, [ebp+0x18]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x7fffffff
	mov [esp+0x4], ebx
	mov edx, [ebp-0x78]
	mov [esp], edx
	call UI_DrawText
	add esp, 0xdc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_DrawPlayerActionSlot_70:
	mov eax, [ebx+0x5036c]
	cmp eax, [esi+0x4674c]
	jz CG_DrawPlayerActionSlot_240
	add esi, 0x4
	mov ebx, edi
	lea eax, [edi+0x10]
	cmp esi, eax
	jnz CG_DrawPlayerActionSlot_80
	jmp CG_DrawPlayerActionSlot_250
CG_DrawPlayerActionSlot_30:
	mov eax, [ebx+0x5036c]
	mov edx, [ebp+0x10]
	cmp eax, [ebx+edx*4+0x4674c]
	jnz CG_DrawPlayerActionSlot_170
	jmp CG_DrawPlayerActionSlot_180
CG_DrawPlayerActionSlot_140:
	mov ecx, [ebp+0x10]
	mov esi, [ebx+ecx*4+0x4674c]
	test esi, esi
	jz CG_DrawPlayerActionSlot_110
	mov eax, esi
	sar eax, 0x5
	mov ecx, esi
	and ecx, 0x1f
	shl edx, cl
	test [ebx+eax*4+0x46698], edx
	jz CG_DrawPlayerActionSlot_110
	mov [esp], esi
	call BG_GetWeaponDef
	mov [ebp-0x6c], eax
	mov eax, [eax+0x528]
	cmp eax, 0x2
	jz CG_DrawPlayerActionSlot_260
	sub eax, 0x1
	jz CG_DrawPlayerActionSlot_270
	mov ecx, [ebp+0xc]
	mov edx, [ecx]
	movss xmm2, dword [ecx+0x4]
	movss xmm1, dword [ecx+0x8]
	movss xmm0, dword [ecx+0xc]
CG_DrawPlayerActionSlot_330:
	mov eax, [ebp+0x8]
	shl eax, 0x6
	mov ecx, [ebp+0x8]
	lea edi, [eax+ecx*4]
	add edi, scrPlaceView
	mov ecx, [ebp-0x6c]
	mov eax, [ecx+0x524]
	mov [esp+0x30], eax
	lea eax, [ebp-0x28]
	mov [esp+0x2c], eax
	mov ebx, 0x3f800000
	mov [esp+0x28], ebx
	mov [esp+0x24], ebx
	xor eax, eax
	mov [esp+0x20], eax
	mov [esp+0x1c], eax
	mov ecx, [ebp+0xc]
	mov eax, [ecx+0x14]
	mov [esp+0x18], eax
	mov eax, [ecx+0x10]
	mov [esp+0x14], eax
	movss [esp+0x10], xmm0
	movss [esp+0xc], xmm1
	movss [esp+0x8], xmm2
	mov [esp+0x4], edx
	mov [esp], edi
	call CL_DrawStretchPic
	mov [esp+0x4], esi
	mov eax, cgArray
	add eax, 0x4613c
	mov [ebp-0x90], eax
	mov [esp], eax
	call BG_WeaponAmmo
	test eax, eax
	jnz CG_DrawPlayerActionSlot_280
	mov [ebp-0x28], ebx
	mov eax, 0x3e99999a
	mov [ebp-0x24], eax
	mov [ebp-0x20], eax
CG_DrawPlayerActionSlot_280:
	mov edx, [ebp+0xc]
	movss xmm0, dword [edx+0x8]
	movaps xmm1, xmm0
	addss xmm1, [edx]
	subss xmm1, [_float_13_00000000]
	movss [ebp-0x80], xmm1
	movss xmm1, dword [edx+0x4]
	movss [ebp-0x7c], xmm1
	addss xmm1, [edx+0xc]
	addss xmm1, [_float_3_00000000]
	movss [ebp-0x7c], xmm1
	mov edx, [ebp-0x6c]
	mov eax, [edx+0x528]
	sub eax, 0x1
	cmp eax, 0x1
	jbe CG_DrawPlayerActionSlot_290
CG_DrawPlayerActionSlot_340:
	mov [esp+0x4], esi
	mov ecx, [ebp-0x90]
	mov [esp], ecx
	call BG_WeaponAmmo
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_3i
	mov dword [esp+0x4], 0x40
	lea ebx, [ebp-0x68]
	mov [esp], ebx
	call Com_sprintf
	mov eax, [ebp+0x20]
	mov [esp+0x28], eax
	lea edx, [ebp-0x28]
	mov [esp+0x24], edx
	movss xmm0, dword [ebp+0x1c]
	movss [esp+0x20], xmm0
	mov edx, [ebp+0xc]
	mov eax, [edx+0x14]
	mov [esp+0x1c], eax
	mov eax, [edx+0x10]
	mov [esp+0x18], eax
	movss xmm0, dword [ebp-0x7c]
	movss [esp+0x14], xmm0
	movss xmm1, dword [ebp-0x80]
	movss [esp+0x10], xmm1
	mov eax, [ebp+0x18]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x7fffffff
	mov [esp+0x4], ebx
	mov [esp], edi
	call UI_DrawText
	jmp CG_DrawPlayerActionSlot_110
CG_DrawPlayerActionSlot_90:
	mov eax, hud_fade_ammodisplay
	mov ebx, [eax]
	movss xmm0, dword [_float_1000_00000000]
	mulss xmm0, [ebx+0xc]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x88]
	cvttss2si eax, [ebp-0x88]
	mov [esp+0xc], eax
	mov eax, [edi+0x504bc]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov edx, [ebp+0x8]
	mov [esp], edx
	call CG_FadeHudMenu
	fstp dword [ebp-0x9c]
	movss xmm0, dword [ebp-0x9c]
	pxor xmm1, xmm1
	jmp CG_DrawPlayerActionSlot_160
CG_DrawPlayerActionSlot_130:
	mov eax, cgMedia
	mov eax, [eax+0x2784]
	test eax, eax
	jz CG_DrawPlayerActionSlot_300
	mov [esp+0x30], eax
	lea eax, [ebp-0x28]
	mov [esp+0x2c], eax
	mov eax, 0x3f800000
	mov [esp+0x28], eax
	mov [esp+0x24], eax
	mov dword [esp+0x20], 0x0
	mov dword [esp+0x1c], 0x0
	mov edx, [ebp+0xc]
	mov eax, [edx+0x14]
	mov [esp+0x18], eax
	mov eax, [edx+0x10]
	mov [esp+0x14], eax
	mov eax, [edx+0xc]
	mov [esp+0x10], eax
	mov eax, [edx+0x8]
	mov [esp+0xc], eax
	mov eax, [edx+0x4]
	mov [esp+0x8], eax
	mov eax, [edx]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	shl eax, 0x6
	mov ecx, [ebp+0x8]
	lea eax, [eax+ecx*4]
	add eax, scrPlaceView
	mov [esp], eax
	call CL_DrawStretchPic
	add esp, 0xdc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_DrawPlayerActionSlot_200:
	mov ecx, [ebp+0xc]
	mov edx, [ecx]
	movss xmm1, dword [ecx+0x8]
	addss xmm1, xmm1
	movss xmm0, dword [ecx+0xc]
	movaps xmm2, xmm0
	mulss xmm2, [_float_0_25000000]
	addss xmm2, [ecx+0x4]
	mulss xmm0, [_float_0_50000000]
	jmp CG_DrawPlayerActionSlot_310
CG_DrawPlayerActionSlot_230:
	addss xmm0, [ebp-0x70]
	movss [ebp-0x70], xmm0
	jmp CG_DrawPlayerActionSlot_320
CG_DrawPlayerActionSlot_210:
	mov eax, [ebp+0xc]
	mov edx, [eax]
	movss xmm1, dword [eax+0x8]
	addss xmm1, xmm1
	movss xmm2, dword [eax+0x4]
	movss xmm0, dword [eax+0xc]
	jmp CG_DrawPlayerActionSlot_310
CG_DrawPlayerActionSlot_300:
	mov dword [esp+0x4], _cstring_cg_drawnightvisi
	mov dword [esp], 0xe
	call Com_PrintWarning
	jmp CG_DrawPlayerActionSlot_110
CG_DrawPlayerActionSlot_260:
	mov ecx, [ebp+0xc]
	mov edx, [ecx]
	movss xmm1, dword [ecx+0x8]
	addss xmm1, xmm1
	movss xmm0, dword [ecx+0xc]
	movaps xmm2, xmm0
	mulss xmm2, [_float_0_25000000]
	addss xmm2, [ecx+0x4]
	mulss xmm0, [_float_0_50000000]
	jmp CG_DrawPlayerActionSlot_330
CG_DrawPlayerActionSlot_290:
	addss xmm0, [ebp-0x80]
	movss [ebp-0x80], xmm0
	jmp CG_DrawPlayerActionSlot_340
CG_DrawPlayerActionSlot_270:
	mov eax, [ebp+0xc]
	mov edx, [eax]
	movss xmm1, dword [eax+0x8]
	addss xmm1, xmm1
	movss xmm2, dword [eax+0x4]
	movss xmm0, dword [eax+0xc]
	jmp CG_DrawPlayerActionSlot_330


;CG_DrawPlayerWeaponIcon(int, rectDef_s const*, float const*)
CG_DrawPlayerWeaponIcon:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x7c
	mov edi, [ebp+0xc]
	mov edx, [ebp+0x10]
	mov eax, [edx]
	mov [ebp-0x38], eax
	mov eax, [edx+0x4]
	mov [ebp-0x34], eax
	mov eax, [edx+0x8]
	mov [ebp-0x30], eax
	movss xmm0, dword [edx+0xc]
	movss [ebp-0x3c], xmm0
	movss [ebp-0x2c], xmm0
	mov esi, cgArray
	cmp byte [esi+0x4614c], 0x0
	jns CG_DrawPlayerWeaponIcon_10
	pxor xmm1, xmm1
	movaps xmm0, xmm1
CG_DrawPlayerWeaponIcon_80:
	mulss xmm0, [ebp-0x3c]
	movss [ebp-0x2c], xmm0
	ucomiss xmm0, xmm1
	jp CG_DrawPlayerWeaponIcon_20
	jnz CG_DrawPlayerWeaponIcon_20
CG_DrawPlayerWeaponIcon_40:
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_DrawPlayerWeaponIcon_20:
	mov esi, cgArray
	mov ebx, [esi+0x5036c]
	call BG_GetNumWeapons
	cmp ebx, eax
	jae CG_DrawPlayerWeaponIcon_30
	mov ebx, [esi+0x5036c]
	mov edx, ebx
	sar edx, 0x5
	mov ecx, ebx
	and ecx, 0x1f
	mov eax, 0x1
	shl eax, cl
	test [esi+edx*4+0x46698], eax
	jz CG_DrawPlayerWeaponIcon_30
CG_DrawPlayerWeaponIcon_70:
	test ebx, ebx
	jz CG_DrawPlayerWeaponIcon_40
	mov [esp], ebx
	call BG_GetWeaponDef
	mov ebx, [eax+0x318]
	mov esi, [eax+0x314]
	mov eax, [edi]
	mov [ebp-0x1c], eax
	mov eax, [edi+0x4]
	mov [ebp-0x20], eax
	movss xmm1, dword [edi+0x8]
	movss [ebp-0x24], xmm1
	mov eax, [edi+0xc]
	mov [ebp-0x28], eax
	mov eax, [edi+0x14]
	mov [esp+0x18], eax
	mov eax, [edi+0x10]
	mov [esp+0x14], eax
	lea eax, [ebp-0x28]
	mov [esp+0x10], eax
	lea eax, [ebp-0x24]
	mov [esp+0xc], eax
	lea eax, [ebp-0x20]
	mov [esp+0x8], eax
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	shl eax, 0x6
	mov edx, [ebp+0x8]
	lea eax, [eax+edx*4]
	add eax, scrPlaceView
	mov [esp], eax
	call ScrPlace_ApplyRect
	test ebx, ebx
	jz CG_DrawPlayerWeaponIcon_50
	sub ebx, 0x1
	jz CG_DrawPlayerWeaponIcon_60
	movss xmm1, dword [ebp-0x24]
	movaps xmm0, xmm1
	mulss xmm0, [_float__3_00000000]
	addss xmm0, [ebp-0x1c]
	movss [ebp-0x1c], xmm0
	mulss xmm1, [_float_4_00000000]
	movss [ebp-0x24], xmm1
CG_DrawPlayerWeaponIcon_90:
	mov [esp+0x24], esi
	lea eax, [ebp-0x38]
	mov [esp+0x20], eax
	mov eax, 0x3f800000
	mov [esp+0x1c], eax
	mov [esp+0x18], eax
	xor eax, eax
	mov [esp+0x14], eax
	mov [esp+0x10], eax
	mov eax, [ebp-0x28]
	mov [esp+0xc], eax
	movss [esp+0x8], xmm1
	mov eax, [ebp-0x20]
	mov [esp+0x4], eax
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call CL_DrawStretchPicPhysical
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_DrawPlayerWeaponIcon_30:
	mov eax, cgArray
	mov ebx, [eax+0x46224]
	jmp CG_DrawPlayerWeaponIcon_70
CG_DrawPlayerWeaponIcon_10:
	mov eax, hud_fade_ammodisplay
	mov ebx, [eax]
	movss xmm0, dword [_float_1000_00000000]
	mulss xmm0, [ebx+0xc]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x40]
	cvttss2si eax, [ebp-0x40]
	mov [esp+0xc], eax
	mov eax, [esi+0x504bc]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_FadeHudMenu
	fstp dword [ebp-0x4c]
	movss xmm0, dword [ebp-0x4c]
	pxor xmm1, xmm1
	jmp CG_DrawPlayerWeaponIcon_80
CG_DrawPlayerWeaponIcon_50:
	movss xmm1, dword [ebp-0x24]
	jmp CG_DrawPlayerWeaponIcon_90
CG_DrawPlayerWeaponIcon_60:
	movss xmm1, dword [ebp-0x24]
	movss xmm0, dword [ebp-0x1c]
	subss xmm0, xmm1
	movss [ebp-0x1c], xmm0
	addss xmm1, xmm1
	movss [ebp-0x24], xmm1
	jmp CG_DrawPlayerWeaponIcon_90


;CG_GetHudAlphaAmmoCounter(int)
CG_GetHudAlphaAmmoCounter:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x20
	mov esi, cgArray
	cmp byte [esi+0x4614c], 0x0
	jns CG_GetHudAlphaAmmoCounter_10
	fldz
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
CG_GetHudAlphaAmmoCounter_10:
	mov eax, hud_fade_ammodisplay
	mov ebx, [eax]
	movss xmm0, dword [_float_1000_00000000]
	mulss xmm0, [ebx+0xc]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0xc]
	cvttss2si eax, [ebp-0xc]
	mov [esp+0xc], eax
	mov eax, [esi+0x504bc]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_FadeHudMenu
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret


;CG_AmmoCounterRegisterDvars()
CG_AmmoCounterRegisterDvars:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov dword [esp+0xc], _cstring_hide_the_ammo_co
	mov dword [esp+0x8], 0x1000
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_ammocounterhide
	call Cvar_RegisterBool
	mov [ammoCounterHide], eax
	mov dword [esp+0xc], _cstring_hide_the_actions
	mov dword [esp+0x8], 0x1000
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_actionslotshide
	call Cvar_RegisterBool
	mov [actionSlotsHide], eax
	mov dword [esp+0x18], _cstring_color_1_of_2_to_
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x3f4ccccd
	mov eax, 0x3f666666
	mov [esp+0xc], eax
	mov [esp+0x8], eax
	mov [esp+0x4], eax
	mov dword [esp], _cstring_lowammowarningco
	call Cvar_RegisterColor
	mov [lowAmmoWarningColor1], eax
	mov dword [esp+0x18], _cstring_color_2_of_2_to_
	mov dword [esp+0x14], 0x0
	mov esi, 0x3f800000
	mov [esp+0x10], esi
	mov [esp+0xc], esi
	mov [esp+0x8], esi
	mov [esp+0x4], esi
	mov dword [esp], _cstring_lowammowarningco1
	call Cvar_RegisterColor
	mov [lowAmmoWarningColor2], eax
	mov dword [esp+0x14], _cstring_frequency_of_the
	mov dword [esp+0x10], 0x0
	mov edi, 0x7f7fffff
	mov [esp+0xc], edi
	xor ebx, ebx
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x3fd9999a
	mov dword [esp], _cstring_lowammowarningpu
	call Cvar_RegisterFloat
	mov [lowAmmoWarningPulseFreq], eax
	mov dword [esp+0x14], _cstring_min_of_oscilatio
	mov dword [esp+0x10], 0x0
	mov [esp+0xc], edi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x3fc00000
	mov dword [esp], _cstring_lowammowarningpu1
	call Cvar_RegisterFloat
	mov [lowAmmoWarningPulseMax], eax
	mov dword [esp+0x14], _cstring_max_of_oscilatio
	mov dword [esp+0x10], 0x0
	mov [esp+0xc], esi
	mov dword [esp+0x8], 0xff7fffff
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_lowammowarningpu2
	call Cvar_RegisterFloat
	mov [lowAmmoWarningPulseMin], eax
	mov dword [esp+0x18], _cstring_like_lowammowarn
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x3f4ccccd
	mov [esp+0xc], ebx
	mov eax, 0x3f333333
	mov [esp+0x8], eax
	mov [esp+0x4], eax
	mov dword [esp], _cstring_lowammowarningno
	call Cvar_RegisterColor
	mov [lowAmmoWarningNoReloadColor1], eax
	mov dword [esp+0x18], _cstring_lowammowarningco2
	mov dword [esp+0x14], 0x0
	mov [esp+0x10], esi
	mov [esp+0xc], ebx
	mov [esp+0x8], esi
	mov [esp+0x4], esi
	mov dword [esp], _cstring_lowammowarningno1
	call Cvar_RegisterColor
	mov [lowAmmoWarningNoReloadColor2], eax
	mov dword [esp+0x18], _cstring_like_lowammowarn1
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x3f4ccccd
	mov [esp+0xc], ebx
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x3f4ccccd
	mov dword [esp], _cstring_lowammowarningno2
	call Cvar_RegisterColor
	mov [lowAmmoWarningNoAmmoColor1], eax
	mov dword [esp+0x18], _cstring_lowammowarningco3
	mov dword [esp+0x14], 0x0
	mov [esp+0x10], esi
	mov [esp+0xc], ebx
	mov [esp+0x8], ebx
	mov [esp+0x4], esi
	mov dword [esp], _cstring_lowammowarningno3
	call Cvar_RegisterColor
	mov [lowAmmoWarningNoAmmoColor2], eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	add [eax], al


;CG_DrawPlayerActionSlotDpad(int, rectDef_s const*, float const*, Material*)
CG_DrawPlayerActionSlotDpad:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x8c
	mov ebx, [ebp+0x10]
	mov edi, cgArray
	mov edx, [edi+0x4673c]
	cmp edx, 0x2
	jz CG_DrawPlayerActionSlotDpad_10
	cmp edx, 0x3
	jz CG_DrawPlayerActionSlotDpad_20
	cmp edx, 0x1
	jz CG_DrawPlayerActionSlotDpad_30
CG_DrawPlayerActionSlotDpad_270:
	mov edx, [edi+0x46740]
	cmp edx, 0x2
	jz CG_DrawPlayerActionSlotDpad_40
	cmp edx, 0x3
	jz CG_DrawPlayerActionSlotDpad_20
	cmp edx, 0x1
	jz CG_DrawPlayerActionSlotDpad_50
CG_DrawPlayerActionSlotDpad_280:
	mov edx, [edi+0x46744]
	cmp edx, 0x2
	jz CG_DrawPlayerActionSlotDpad_60
	cmp edx, 0x3
	jz CG_DrawPlayerActionSlotDpad_20
	cmp edx, 0x1
	jz CG_DrawPlayerActionSlotDpad_70
CG_DrawPlayerActionSlotDpad_300:
	mov edx, [edi+0x46748]
	cmp edx, 0x2
	jz CG_DrawPlayerActionSlotDpad_80
	cmp edx, 0x3
	jz CG_DrawPlayerActionSlotDpad_90
	cmp edx, 0x1
	jz CG_DrawPlayerActionSlotDpad_100
CG_DrawPlayerActionSlotDpad_110:
	add esp, 0x8c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_DrawPlayerActionSlotDpad_100:
	mov ecx, [edi+0x46758]
	test ecx, ecx
	jz CG_DrawPlayerActionSlotDpad_110
	mov eax, ecx
	sar eax, 0x5
	and ecx, 0x1f
	shl edx, cl
	test [edi+eax*4+0x46698], edx
	jz CG_DrawPlayerActionSlotDpad_110
CG_DrawPlayerActionSlotDpad_90:
	mov edi, cgArray
CG_DrawPlayerActionSlotDpad_20:
	mov eax, [ebx]
	mov [ebp-0x28], eax
	mov eax, [ebx+0x4]
	mov [ebp-0x24], eax
	mov eax, [ebx+0x8]
	mov [ebp-0x20], eax
	movss xmm0, dword [ebx+0xc]
	movss [ebp-0x38], xmm0
	movss [ebp-0x1c], xmm0
	cmp byte [edi+0x4614c], 0x0
	js CG_DrawPlayerActionSlotDpad_120
	mov ebx, edi
	mov esi, cgArray
CG_DrawPlayerActionSlotDpad_160:
	mov eax, [ebx+0x4673c]
	cmp eax, 0x2
	jz CG_DrawPlayerActionSlotDpad_130
	cmp eax, 0x3
	jz CG_DrawPlayerActionSlotDpad_140
	sub eax, 0x1
	jz CG_DrawPlayerActionSlotDpad_150
CG_DrawPlayerActionSlotDpad_260:
	add ebx, 0x4
	mov edi, esi
	lea eax, [esi+0x10]
	cmp ebx, eax
	jnz CG_DrawPlayerActionSlotDpad_160
	cmp byte [esi+0x4614c], 0x0
	js CG_DrawPlayerActionSlotDpad_120
	mov eax, hud_fade_ammodisplay
	mov ebx, [eax]
	movss xmm0, dword [_float_1000_00000000]
	mulss xmm0, [ebx+0xc]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x3c]
	cvttss2si eax, [ebp-0x3c]
	mov [esp+0xc], eax
	mov eax, [esi+0x504bc]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov edx, [ebp+0x8]
	mov [esp], edx
	call CG_FadeHudMenu
	fstp dword [ebp-0x4c]
	movss xmm0, dword [ebp-0x4c]
	pxor xmm1, xmm1
	jmp CG_DrawPlayerActionSlotDpad_170
CG_DrawPlayerActionSlotDpad_120:
	pxor xmm1, xmm1
	movaps xmm0, xmm1
CG_DrawPlayerActionSlotDpad_170:
	mulss xmm0, [ebp-0x38]
	movss [ebp-0x1c], xmm0
	ucomiss xmm0, xmm1
	jp CG_DrawPlayerActionSlotDpad_180
	jz CG_DrawPlayerActionSlotDpad_110
CG_DrawPlayerActionSlotDpad_180:
	mov eax, [ebp+0x8]
	shl eax, 0x6
	mov edx, [ebp+0x8]
	lea eax, [eax+edx*4]
	mov edx, scrPlaceView
	add eax, edx
	mov [ebp-0x34], eax
	mov eax, [ebp+0x14]
	mov [esp+0x30], eax
	lea edx, [ebp-0x28]
	mov [esp+0x2c], edx
	mov ebx, 0x3f800000
	mov [esp+0x28], ebx
	mov [esp+0x24], ebx
	mov dword [esp+0x20], 0x0
	mov dword [esp+0x1c], 0x0
	mov edx, [ebp+0xc]
	mov eax, [edx+0x14]
	mov [esp+0x18], eax
	mov eax, [edx+0x10]
	mov [esp+0x14], eax
	mov eax, [edx+0xc]
	mov [esp+0x10], eax
	mov eax, [edx+0x8]
	mov [esp+0xc], eax
	mov eax, [edx+0x4]
	mov [esp+0x8], eax
	mov eax, [edx]
	mov [esp+0x4], eax
	mov eax, [ebp-0x34]
	mov [esp], eax
	call CL_DrawStretchPic
	mov [ebp-0x28], ebx
	mov dword [ebp-0x24], 0x3f7851ec
	mov dword [ebp-0x20], 0x3f0ccccd
	xor edi, edi
	mov esi, cgArray
	mov ebx, _ZZ27CG_DrawPlayerActionSlotDpadiPK9rectDef_sPKfP8MaterialE5MY_ST+0xc
	mov dword [ebp-0x30], _ZZ27CG_DrawPlayerActionSlotDpadiPK9rectDef_sPKfP8MaterialE10MY_OFFSETS
	mov dword [ebp-0x2c], _ZZ27CG_DrawPlayerActionSlotDpadiPK9rectDef_sPKfP8MaterialE7MY_DIMS
	mov [ebp-0x40], esi
	mov eax, [esi+0x4673c]
	cmp eax, 0x2
	jz CG_DrawPlayerActionSlotDpad_190
CG_DrawPlayerActionSlotDpad_220:
	cmp eax, 0x3
	jz CG_DrawPlayerActionSlotDpad_200
	sub eax, 0x1
	jz CG_DrawPlayerActionSlotDpad_210
CG_DrawPlayerActionSlotDpad_230:
	add edi, 0x1
	add esi, 0x4
	add ebx, 0x10
	add dword [ebp-0x30], 0x8
	add dword [ebp-0x2c], 0x8
	cmp edi, 0x4
	jz CG_DrawPlayerActionSlotDpad_110
	mov eax, [esi+0x4673c]
	cmp eax, 0x2
	jnz CG_DrawPlayerActionSlotDpad_220
CG_DrawPlayerActionSlotDpad_190:
	mov edx, [ebp-0x40]
	mov eax, [edx+0x5036c]
	mov [esp], eax
	call BG_GetWeaponDef
	cmp dword [eax+0x13c], 0x3
	jnz CG_DrawPlayerActionSlotDpad_230
CG_DrawPlayerActionSlotDpad_250:
	mov eax, [ebp+0xc]
	movss xmm1, dword [eax+0x8]
	movaps xmm3, xmm1
	mov edx, [ebp-0x30]
	mulss xmm3, [edx]
	addss xmm3, [eax]
	movss xmm0, dword [eax+0xc]
	movaps xmm2, xmm0
	mulss xmm2, [edx+0x4]
	addss xmm2, [eax+0x4]
	mov eax, [ebp-0x2c]
	mulss xmm1, [eax]
	mulss xmm0, [eax+0x4]
	cmp edi, 0x1
	jbe CG_DrawPlayerActionSlotDpad_240
	mov edx, cgMedia
	mov eax, [edx+0x2788]
	mov [esp+0x30], eax
	lea eax, [ebp-0x28]
	mov [esp+0x2c], eax
	mov eax, [ebx]
	mov [esp+0x28], eax
	mov eax, [ebx-0x4]
	mov [esp+0x24], eax
	mov eax, [ebx-0x8]
	mov [esp+0x20], eax
	mov eax, [ebx-0xc]
	mov [esp+0x1c], eax
	mov edx, [ebp+0xc]
	mov eax, [edx+0x14]
	mov [esp+0x18], eax
	mov eax, [edx+0x10]
	mov [esp+0x14], eax
	movss [esp+0x10], xmm0
	movss [esp+0xc], xmm1
	movss [esp+0x8], xmm2
	movss [esp+0x4], xmm3
	mov eax, [ebp-0x34]
	mov [esp], eax
	call CL_DrawStretchPicFlipST
	jmp CG_DrawPlayerActionSlotDpad_230
CG_DrawPlayerActionSlotDpad_200:
	mov edx, [ebp+0x8]
	mov [esp], edx
	call CG_LookingThroughNightVision
	test al, al
	jnz CG_DrawPlayerActionSlotDpad_250
	jmp CG_DrawPlayerActionSlotDpad_230
CG_DrawPlayerActionSlotDpad_130:
	mov eax, [edi+0x5036c]
	mov [esp], eax
	call BG_GetWeaponDef
	cmp dword [eax+0x13c], 0x3
	jnz CG_DrawPlayerActionSlotDpad_260
CG_DrawPlayerActionSlotDpad_290:
	movss xmm0, dword [_float_1_00000000]
	pxor xmm1, xmm1
	jmp CG_DrawPlayerActionSlotDpad_170
CG_DrawPlayerActionSlotDpad_10:
	mov [esp+0x4], edi
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_AltWeaponToggleIndex
	test eax, eax
	jnz CG_DrawPlayerActionSlotDpad_20
	jmp CG_DrawPlayerActionSlotDpad_270
CG_DrawPlayerActionSlotDpad_210:
	mov edx, [ebp-0x40]
	mov eax, [edx+0x5036c]
	cmp eax, [esi+0x4674c]
	jnz CG_DrawPlayerActionSlotDpad_230
	jmp CG_DrawPlayerActionSlotDpad_250
CG_DrawPlayerActionSlotDpad_140:
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_LookingThroughNightVision
	test al, al
	jz CG_DrawPlayerActionSlotDpad_260
	movss xmm0, dword [_float_1_00000000]
	pxor xmm1, xmm1
	jmp CG_DrawPlayerActionSlotDpad_170
CG_DrawPlayerActionSlotDpad_40:
	mov [esp+0x4], edi
	mov edx, [ebp+0x8]
	mov [esp], edx
	call CG_AltWeaponToggleIndex
	test eax, eax
	jnz CG_DrawPlayerActionSlotDpad_90
	mov edi, cgArray
	jmp CG_DrawPlayerActionSlotDpad_280
CG_DrawPlayerActionSlotDpad_30:
	mov ecx, [edi+0x4674c]
	test ecx, ecx
	jz CG_DrawPlayerActionSlotDpad_270
	mov eax, ecx
	sar eax, 0x5
	and ecx, 0x1f
	shl edx, cl
	test [edi+eax*4+0x46698], edx
	jnz CG_DrawPlayerActionSlotDpad_20
	jmp CG_DrawPlayerActionSlotDpad_270
CG_DrawPlayerActionSlotDpad_150:
	mov eax, [edi+0x5036c]
	cmp eax, [ebx+0x4674c]
	jnz CG_DrawPlayerActionSlotDpad_260
	jmp CG_DrawPlayerActionSlotDpad_290
CG_DrawPlayerActionSlotDpad_60:
	mov [esp+0x4], edi
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_AltWeaponToggleIndex
	test eax, eax
	jnz CG_DrawPlayerActionSlotDpad_90
	mov edi, cgArray
	jmp CG_DrawPlayerActionSlotDpad_300
CG_DrawPlayerActionSlotDpad_50:
	mov ecx, [edi+0x46750]
	test ecx, ecx
	jz CG_DrawPlayerActionSlotDpad_280
	mov eax, ecx
	sar eax, 0x5
	and ecx, 0x1f
	shl edx, cl
	test [edi+eax*4+0x46698], edx
	jnz CG_DrawPlayerActionSlotDpad_20
	jmp CG_DrawPlayerActionSlotDpad_280
CG_DrawPlayerActionSlotDpad_240:
	mov edx, cgMedia
	mov eax, [edx+0x2788]
	mov [esp+0x30], eax
	lea eax, [ebp-0x28]
	mov [esp+0x2c], eax
	mov eax, [ebx]
	mov [esp+0x28], eax
	mov eax, [ebx-0x4]
	mov [esp+0x24], eax
	mov eax, [ebx-0x8]
	mov [esp+0x20], eax
	mov eax, [ebx-0xc]
	mov [esp+0x1c], eax
	mov edx, [ebp+0xc]
	mov eax, [edx+0x14]
	mov [esp+0x18], eax
	mov eax, [edx+0x10]
	mov [esp+0x14], eax
	movss [esp+0x10], xmm0
	movss [esp+0xc], xmm1
	movss [esp+0x8], xmm2
	movss [esp+0x4], xmm3
	mov eax, [ebp-0x34]
	mov [esp], eax
	call CL_DrawStretchPic
	jmp CG_DrawPlayerActionSlotDpad_230
CG_DrawPlayerActionSlotDpad_80:
	mov [esp+0x4], edi
	mov edx, [ebp+0x8]
	mov [esp], edx
	call CG_AltWeaponToggleIndex
	test eax, eax
	jnz CG_DrawPlayerActionSlotDpad_90
	jmp CG_DrawPlayerActionSlotDpad_110
CG_DrawPlayerActionSlotDpad_70:
	mov ecx, [edi+0x46754]
	test ecx, ecx
	jz CG_DrawPlayerActionSlotDpad_300
	mov eax, ecx
	sar eax, 0x5
	and ecx, 0x1f
	shl edx, cl
	test [edi+eax*4+0x46698], edx
	jnz CG_DrawPlayerActionSlotDpad_20
	jmp CG_DrawPlayerActionSlotDpad_300
	nop


;CG_DrawPlayerWeaponAmmoStock(int, rectDef_s const*, Font_s*, float, float*, Material*, int)
CG_DrawPlayerWeaponAmmoStock:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xac
	mov edx, [ebp+0x18]
	mov eax, [edx]
	mov [ebp-0x28], eax
	mov eax, [edx+0x4]
	mov [ebp-0x24], eax
	mov eax, [edx+0x8]
	mov [ebp-0x20], eax
	movss xmm0, dword [edx+0xc]
	movss [ebp-0x6c], xmm0
	movss [ebp-0x1c], xmm0
	mov esi, cgArray
	cmp byte [esi+0x4614c], 0x0
	jns CG_DrawPlayerWeaponAmmoStock_10
	pxor xmm1, xmm1
	movaps xmm0, xmm1
CG_DrawPlayerWeaponAmmoStock_80:
	mulss xmm0, [ebp-0x6c]
	movss [ebp-0x1c], xmm0
	ucomiss xmm0, xmm1
	jp CG_DrawPlayerWeaponAmmoStock_20
	jnz CG_DrawPlayerWeaponAmmoStock_20
CG_DrawPlayerWeaponAmmoStock_40:
	add esp, 0xac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_DrawPlayerWeaponAmmoStock_20:
	mov esi, cgArray
	mov ebx, [esi+0x5036c]
	call BG_GetNumWeapons
	cmp ebx, eax
	jae CG_DrawPlayerWeaponAmmoStock_30
	mov ebx, [esi+0x5036c]
	mov edx, ebx
	sar edx, 0x5
	mov ecx, ebx
	and ecx, 0x1f
	mov eax, 0x1
	shl eax, cl
	test [esi+edx*4+0x46698], eax
	jz CG_DrawPlayerWeaponAmmoStock_30
CG_DrawPlayerWeaponAmmoStock_70:
	test ebx, ebx
	jz CG_DrawPlayerWeaponAmmoStock_40
	mov [esp], ebx
	call BG_GetWeaponDef
	mov esi, eax
	mov eax, [eax+0x31c]
	test eax, eax
	jz CG_DrawPlayerWeaponAmmoStock_40
	cmp eax, 0x6
	jz CG_DrawPlayerWeaponAmmoStock_50
	mov esi, ebx
CG_DrawPlayerWeaponAmmoStock_110:
	test esi, esi
	jz CG_DrawPlayerWeaponAmmoStock_40
	mov [esp], esi
	call BG_GetWeaponDef
	mov ebx, [eax+0x50c]
	test ebx, ebx
	jnz CG_DrawPlayerWeaponAmmoStock_40
	mov [esp+0x4], esi
	mov ebx, cgArray
	lea eax, [ebx+0x4613c]
	mov [esp], eax
	call BG_GetTotalAmmoReserve
	mov edi, eax
	mov [esp+0x4], esi
	mov [esp], ebx
	call CG_CheckPlayerForLowAmmoSpecific
	test al, al
	jz CG_DrawPlayerWeaponAmmoStock_60
	mov dword [ebp-0x28], 0x3f800000
	mov eax, 0x3e99999a
	mov [ebp-0x24], eax
	mov [ebp-0x20], eax
CG_DrawPlayerWeaponAmmoStock_60:
	mov [esp+0xc], edi
	mov dword [esp+0x8], _cstring_3i
	mov dword [esp+0x4], 0x40
	lea ebx, [ebp-0x68]
	mov [esp], ebx
	call Com_sprintf
	mov edx, [ebp+0x20]
	mov [esp+0x28], edx
	lea eax, [ebp-0x28]
	mov [esp+0x24], eax
	movss xmm0, dword [ebp+0x14]
	movss [esp+0x20], xmm0
	mov edx, [ebp+0xc]
	mov eax, [edx+0x14]
	mov [esp+0x1c], eax
	mov eax, [edx+0x10]
	mov [esp+0x18], eax
	mov eax, [edx+0x4]
	mov [esp+0x14], eax
	mov eax, [edx]
	mov [esp+0x10], eax
	mov eax, [ebp+0x10]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x7fffffff
	mov [esp+0x4], ebx
	mov eax, [ebp+0x8]
	shl eax, 0x6
	mov edx, [ebp+0x8]
	lea eax, [eax+edx*4]
	add eax, scrPlaceView
	mov [esp], eax
	call UI_DrawText
	jmp CG_DrawPlayerWeaponAmmoStock_40
CG_DrawPlayerWeaponAmmoStock_30:
	mov eax, cgArray
	mov ebx, [eax+0x46224]
	jmp CG_DrawPlayerWeaponAmmoStock_70
CG_DrawPlayerWeaponAmmoStock_10:
	mov eax, hud_fade_ammodisplay
	mov ebx, [eax]
	movss xmm0, dword [_float_1000_00000000]
	mulss xmm0, [ebx+0xc]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x70]
	cvttss2si eax, [ebp-0x70]
	mov [esp+0xc], eax
	mov eax, [esi+0x504bc]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_FadeHudMenu
	fstp dword [ebp-0x7c]
	movss xmm0, dword [ebp-0x7c]
	pxor xmm1, xmm1
	jmp CG_DrawPlayerWeaponAmmoStock_80
CG_DrawPlayerWeaponAmmoStock_50:
	mov eax, [esi+0x540]
	test eax, eax
	jnz CG_DrawPlayerWeaponAmmoStock_90
	mov eax, [esi]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_weapon_s_ammocou
	mov dword [esp], 0x11
	call Com_PrintWarning
	jmp CG_DrawPlayerWeaponAmmoStock_40
CG_DrawPlayerWeaponAmmoStock_90:
	mov [esp], eax
	call BG_GetWeaponDef
	cmp dword [eax+0x31c], 0x6
	jz CG_DrawPlayerWeaponAmmoStock_100
	mov esi, [esi+0x540]
	jmp CG_DrawPlayerWeaponAmmoStock_110
CG_DrawPlayerWeaponAmmoStock_100:
	mov eax, [eax]
	mov [esp+0xc], eax
	mov eax, [esi]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_weapon_s_and_its
	mov dword [esp], 0x11
	call Com_PrintWarning
	jmp CG_DrawPlayerWeaponAmmoStock_40
	nop


;CG_DrawPlayerWeaponBackground(int, rectDef_s const*, float const*, Material*)
CG_DrawPlayerWeaponBackground:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x7c
	mov edi, [ebp+0xc]
	mov edx, [ebp+0x10]
	mov eax, [edx]
	mov [ebp-0x28], eax
	mov eax, [edx+0x4]
	mov [ebp-0x24], eax
	mov eax, [edx+0x8]
	mov [ebp-0x20], eax
	movss xmm0, dword [edx+0xc]
	movss [ebp-0x2c], xmm0
	movss [ebp-0x1c], xmm0
	mov esi, cgArray
	cmp byte [esi+0x4614c], 0x0
	jns CG_DrawPlayerWeaponBackground_10
	pxor xmm1, xmm1
	movaps xmm0, xmm1
CG_DrawPlayerWeaponBackground_30:
	mulss xmm0, [ebp-0x2c]
	movss [ebp-0x1c], xmm0
	ucomiss xmm0, xmm1
	jp CG_DrawPlayerWeaponBackground_20
	jnz CG_DrawPlayerWeaponBackground_20
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_DrawPlayerWeaponBackground_20:
	mov edx, [ebp+0x14]
	mov [esp+0x30], edx
	lea eax, [ebp-0x28]
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
	mov eax, [edi+0xc]
	mov [esp+0x10], eax
	mov eax, [edi+0x8]
	mov [esp+0xc], eax
	mov eax, [edi+0x4]
	mov [esp+0x8], eax
	mov eax, [edi]
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
CG_DrawPlayerWeaponBackground_10:
	mov eax, hud_fade_ammodisplay
	mov ebx, [eax]
	movss xmm0, dword [_float_1000_00000000]
	mulss xmm0, [ebx+0xc]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x30]
	cvttss2si eax, [ebp-0x30]
	mov [esp+0xc], eax
	mov eax, [esi+0x504bc]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_FadeHudMenu
	fstp dword [ebp-0x3c]
	movss xmm0, dword [ebp-0x3c]
	pxor xmm1, xmm1
	jmp CG_DrawPlayerWeaponBackground_30


;CG_DrawPlayerWeaponLowAmmoWarning(int, rectDef_s const*, Font_s*, float, int, float, float, int, Material*)
CG_DrawPlayerWeaponLowAmmoWarning:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x10c
	mov esi, cgArray
	mov eax, [esi+0x46140]
	cmp eax, 0x6
	jg CG_DrawPlayerWeaponLowAmmoWarning_10
	cmp eax, 0x4
	jz CG_DrawPlayerWeaponLowAmmoWarning_10
	test dword [esi+0x461ec], 0x300
	jnz CG_DrawPlayerWeaponLowAmmoWarning_10
	mov eax, [esi+0x46228]
	cmp eax, 0x7
	jz CG_DrawPlayerWeaponLowAmmoWarning_10
	cmp eax, 0x9
	jz CG_DrawPlayerWeaponLowAmmoWarning_10
	cmp eax, 0xb
	jz CG_DrawPlayerWeaponLowAmmoWarning_10
	cmp eax, 0xa
	jz CG_DrawPlayerWeaponLowAmmoWarning_10
	cmp eax, 0x8
	jz CG_DrawPlayerWeaponLowAmmoWarning_10
	mov ecx, [esi+0x46224]
	test ecx, ecx
	jz CG_DrawPlayerWeaponLowAmmoWarning_10
	cmp byte [esi+0x4614c], 0x0
	jns CG_DrawPlayerWeaponLowAmmoWarning_20
CG_DrawPlayerWeaponLowAmmoWarning_10:
	add esp, 0x10c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_DrawPlayerWeaponLowAmmoWarning_20:
	mov eax, hud_fade_ammodisplay
	mov ebx, [eax]
	movss xmm0, dword [_float_1000_00000000]
	mulss xmm0, [ebx+0xc]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x60]
	cvttss2si eax, [ebp-0x60]
	mov [esp+0xc], eax
	mov eax, [esi+0x504bc]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_FadeHudMenu
	fstp dword [ebp-0x5c]
	movss xmm0, dword [ebp-0x5c]
	ucomiss xmm0, [_float_0_00000000]
	jp CG_DrawPlayerWeaponLowAmmoWarning_30
	jz CG_DrawPlayerWeaponLowAmmoWarning_10
CG_DrawPlayerWeaponLowAmmoWarning_30:
	mov ebx, [esi+0x5036c]
	call BG_GetNumWeapons
	cmp ebx, eax
	jae CG_DrawPlayerWeaponLowAmmoWarning_40
	mov ebx, [esi+0x5036c]
	mov edx, ebx
	sar edx, 0x5
	mov ecx, ebx
	and ecx, 0x1f
	mov eax, 0x1
	shl eax, cl
	test [esi+edx*4+0x46698], eax
	jz CG_DrawPlayerWeaponLowAmmoWarning_40
CG_DrawPlayerWeaponLowAmmoWarning_70:
	mov [esp+0x4], ebx
	mov [esp], esi
	call CG_CheckPlayerForLowClipSpecific
	test al, al
	jz CG_DrawPlayerWeaponLowAmmoWarning_10
	mov [esp], ebx
	call BG_AmmoForWeapon
	mov edi, [esi+eax*4+0x46298]
	mov [esp], ebx
	call BG_ClipForWeapon
	mov esi, [esi+eax*4+0x46498]
	mov [esp], ebx
	call BG_GetWeaponDef
	mov edx, [eax+0x31c]
	test edx, edx
	jz CG_DrawPlayerWeaponLowAmmoWarning_10
	test edi, edi
	jle CG_DrawPlayerWeaponLowAmmoWarning_50
	cmp dword [eax+0x338], 0x1
	jz CG_DrawPlayerWeaponLowAmmoWarning_10
	mov eax, [lowAmmoWarningColor1]
	lea edx, [eax+0xc]
	movzx eax, byte [eax+0xc]
	cvtsi2ss xmm1, eax
	movss xmm0, dword [_float_0_00392157]
	mulss xmm1, xmm0
	movss [ebp-0x4c], xmm1
	movzx eax, byte [edx+0x1]
	cvtsi2ss xmm1, eax
	mulss xmm1, xmm0
	movss [ebp-0x50], xmm1
	movzx eax, byte [edx+0x2]
	cvtsi2ss xmm1, eax
	mulss xmm1, xmm0
	movss [ebp-0x54], xmm1
	movzx eax, byte [edx+0x3]
	cvtsi2ss xmm1, eax
	mulss xmm1, xmm0
	movss [ebp-0x58], xmm1
	mov eax, [lowAmmoWarningColor2]
	lea edx, [eax+0xc]
	movzx eax, byte [eax+0xc]
	cvtsi2ss xmm6, eax
	mulss xmm6, xmm0
	movzx eax, byte [edx+0x1]
	cvtsi2ss xmm5, eax
	mulss xmm5, xmm0
	movzx eax, byte [edx+0x2]
	cvtsi2ss xmm4, eax
	mulss xmm4, xmm0
	movzx eax, byte [edx+0x3]
	cvtsi2ss xmm7, eax
	mulss xmm7, xmm0
	mov ebx, _cstring_platform_reload
CG_DrawPlayerWeaponLowAmmoWarning_100:
	mov eax, [lowAmmoWarningPulseMin]
	movss xmm3, dword [eax+0xc]
	mov eax, [lowAmmoWarningPulseMax]
	movss xmm2, dword [eax+0xc]
	subss xmm2, xmm3
	mulss xmm2, [_float_0_50000000]
	addss xmm3, xmm2
	mov eax, cgArray
	cvtsi2sd xmm0, dword [eax+0x46128]
	mulsd xmm0, [_double_0_00628319]
	mov eax, [lowAmmoWarningPulseFreq]
	cvtss2sd xmm1, [eax+0xc]
	mulsd xmm0, xmm1
	cvtsd2ss xmm0, xmm0
	movss [esp], xmm0
	movss [ebp-0x78], xmm2
	movss [ebp-0x88], xmm3
	movss [ebp-0x98], xmm4
	movss [ebp-0xa8], xmm5
	movss [ebp-0xb8], xmm6
	movss [ebp-0xc8], xmm7
	call sinf
	fstp dword [ebp-0xcc]
	movss xmm0, dword [ebp-0xcc]
	movss xmm2, dword [ebp-0x78]
	mulss xmm0, xmm2
	movss xmm3, dword [ebp-0x88]
	addss xmm0, xmm3
	movss xmm6, dword [ebp-0xb8]
	subss xmm6, [ebp-0x4c]
	mulss xmm6, xmm0
	addss xmm6, [ebp-0x4c]
	movss [ebp-0x28], xmm6
	movss xmm5, dword [ebp-0xa8]
	subss xmm5, [ebp-0x50]
	mulss xmm5, xmm0
	addss xmm5, [ebp-0x50]
	movss [ebp-0x24], xmm5
	movss xmm4, dword [ebp-0x98]
	subss xmm4, [ebp-0x54]
	mulss xmm4, xmm0
	addss xmm4, [ebp-0x54]
	movss [ebp-0x20], xmm4
	movss xmm7, dword [ebp-0xc8]
	subss xmm7, [ebp-0x58]
	mulss xmm0, xmm7
	addss xmm0, [ebp-0x58]
	movss xmm1, dword [ebp-0x5c]
	mulss xmm1, xmm0
	movss [ebp-0x1c], xmm1
	mov eax, [ebp+0x28]
	test eax, eax
	jz CG_DrawPlayerWeaponLowAmmoWarning_60
	mov eax, [ebp+0x28]
	mov [esp+0x30], eax
	lea esi, [ebp-0x28]
	mov [esp+0x2c], esi
	mov eax, 0x3f800000
	mov [esp+0x28], eax
	mov [esp+0x24], eax
	xor eax, eax
	mov [esp+0x20], eax
	mov [esp+0x1c], eax
	mov edx, [ebp+0xc]
	mov eax, [edx+0x14]
	mov [esp+0x18], eax
	mov eax, [edx+0x10]
	mov [esp+0x14], eax
	mov eax, [edx+0xc]
	mov [esp+0x10], eax
	mov eax, [edx+0x8]
	mov [esp+0xc], eax
	mov eax, [edx+0x4]
	mov [esp+0x8], eax
	mov eax, [edx]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	shl eax, 0x6
	mov edx, [ebp+0x8]
	lea eax, [eax+edx*4]
	add eax, scrPlaceView
	mov [esp], eax
	call CL_DrawStretchPic
CG_DrawPlayerWeaponLowAmmoWarning_80:
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _cstring_low_ammo_warning
	mov [esp], ebx
	call SEH_LocalizeTextMessage
	lea edx, [ebp-0x40]
	mov [esp+0x28], edx
	mov edx, [ebp+0x24]
	mov [esp+0x24], edx
	mov edx, [ebp+0x18]
	mov [esp+0x20], edx
	mov [esp+0x1c], esi
	movss xmm0, dword [ebp+0x14]
	movss [esp+0x18], xmm0
	movss xmm0, dword [ebp+0x20]
	mov edx, [ebp+0xc]
	addss xmm0, [edx+0x4]
	movss [esp+0x14], xmm0
	movss xmm1, dword [ebp+0x1c]
	addss xmm1, [edx]
	movss [esp+0x10], xmm1
	mov edx, [ebp+0x10]
	mov [esp+0xc], edx
	mov edx, [ebp+0xc]
	mov [esp+0x8], edx
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	shl eax, 0x6
	mov edx, [ebp+0x8]
	lea eax, [eax+edx*4]
	add eax, scrPlaceView
	mov [esp], eax
	call UI_DrawWrappedText
	jmp CG_DrawPlayerWeaponLowAmmoWarning_10
CG_DrawPlayerWeaponLowAmmoWarning_40:
	mov esi, cgArray
	mov ebx, [esi+0x46224]
	jmp CG_DrawPlayerWeaponLowAmmoWarning_70
CG_DrawPlayerWeaponLowAmmoWarning_60:
	lea esi, [ebp-0x28]
	jmp CG_DrawPlayerWeaponLowAmmoWarning_80
CG_DrawPlayerWeaponLowAmmoWarning_50:
	test esi, esi
	jnz CG_DrawPlayerWeaponLowAmmoWarning_90
	mov eax, [lowAmmoWarningNoAmmoColor1]
	lea edx, [eax+0xc]
	movzx eax, byte [eax+0xc]
	cvtsi2ss xmm0, eax
	movss [ebp-0x4c], xmm0
	movss xmm0, dword [_float_0_00392157]
	movss xmm1, dword [ebp-0x4c]
	mulss xmm1, xmm0
	movss [ebp-0x4c], xmm1
	movzx eax, byte [edx+0x1]
	cvtsi2ss xmm1, eax
	mulss xmm1, xmm0
	movss [ebp-0x50], xmm1
	movzx eax, byte [edx+0x2]
	cvtsi2ss xmm1, eax
	mulss xmm1, xmm0
	movss [ebp-0x54], xmm1
	movzx eax, byte [edx+0x3]
	cvtsi2ss xmm1, eax
	mulss xmm1, xmm0
	movss [ebp-0x58], xmm1
	mov eax, [lowAmmoWarningNoAmmoColor2]
	lea edx, [eax+0xc]
	movzx eax, byte [eax+0xc]
	cvtsi2ss xmm6, eax
	mulss xmm6, xmm0
	movzx eax, byte [edx+0x1]
	cvtsi2ss xmm5, eax
	mulss xmm5, xmm0
	movzx eax, byte [edx+0x2]
	cvtsi2ss xmm4, eax
	mulss xmm4, xmm0
	movzx eax, byte [edx+0x3]
	cvtsi2ss xmm7, eax
	mulss xmm7, xmm0
	mov ebx, _cstring_weapon_no_ammo
	jmp CG_DrawPlayerWeaponLowAmmoWarning_100
CG_DrawPlayerWeaponLowAmmoWarning_90:
	mov eax, [lowAmmoWarningNoReloadColor1]
	lea edx, [eax+0xc]
	movzx eax, byte [eax+0xc]
	cvtsi2ss xmm0, eax
	movss [ebp-0x4c], xmm0
	movss xmm0, dword [_float_0_00392157]
	movss xmm1, dword [ebp-0x4c]
	mulss xmm1, xmm0
	movss [ebp-0x4c], xmm1
	movzx eax, byte [edx+0x1]
	cvtsi2ss xmm1, eax
	mulss xmm1, xmm0
	movss [ebp-0x50], xmm1
	movzx eax, byte [edx+0x2]
	cvtsi2ss xmm1, eax
	mulss xmm1, xmm0
	movss [ebp-0x54], xmm1
	movzx eax, byte [edx+0x3]
	cvtsi2ss xmm1, eax
	mulss xmm1, xmm0
	movss [ebp-0x58], xmm1
	mov eax, [lowAmmoWarningNoReloadColor2]
	lea edx, [eax+0xc]
	movzx eax, byte [eax+0xc]
	cvtsi2ss xmm6, eax
	mulss xmm6, xmm0
	movzx eax, byte [edx+0x1]
	cvtsi2ss xmm5, eax
	mulss xmm5, xmm0
	movzx eax, byte [edx+0x2]
	cvtsi2ss xmm4, eax
	mulss xmm4, xmm0
	movzx eax, byte [edx+0x3]
	cvtsi2ss xmm7, eax
	mulss xmm7, xmm0
	mov ebx, _cstring_platform_low_amm
	jmp CG_DrawPlayerWeaponLowAmmoWarning_100


;CG_DrawPlayerWeaponAmmoClipGraphic(int, rectDef_s const*, float const*)
CG_DrawPlayerWeaponAmmoClipGraphic:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov edx, [ebp+0x10]
	mov eax, [edx]
	mov [ebp-0x38], eax
	mov eax, [edx+0x4]
	mov [ebp-0x34], eax
	mov eax, [edx+0x8]
	mov [ebp-0x30], eax
	movss xmm0, dword [edx+0xc]
	movss [ebp-0x3c], xmm0
	movss [ebp-0x2c], xmm0
	mov esi, cgArray
	cmp byte [esi+0x4614c], 0x0
	jns CG_DrawPlayerWeaponAmmoClipGraphic_10
	pxor xmm1, xmm1
	movaps xmm0, xmm1
CG_DrawPlayerWeaponAmmoClipGraphic_60:
	mulss xmm0, [ebp-0x3c]
	movss [ebp-0x2c], xmm0
	ucomiss xmm0, xmm1
	jp CG_DrawPlayerWeaponAmmoClipGraphic_20
	jnz CG_DrawPlayerWeaponAmmoClipGraphic_20
CG_DrawPlayerWeaponAmmoClipGraphic_40:
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_DrawPlayerWeaponAmmoClipGraphic_20:
	mov esi, cgArray
	mov ebx, [esi+0x5036c]
	call BG_GetNumWeapons
	cmp ebx, eax
	jae CG_DrawPlayerWeaponAmmoClipGraphic_30
	mov edi, [esi+0x5036c]
	mov edx, edi
	sar edx, 0x5
	mov ecx, edi
	and ecx, 0x1f
	mov eax, 0x1
	shl eax, cl
	test [esi+edx*4+0x46698], eax
	jz CG_DrawPlayerWeaponAmmoClipGraphic_30
CG_DrawPlayerWeaponAmmoClipGraphic_50:
	test edi, edi
	jz CG_DrawPlayerWeaponAmmoClipGraphic_40
	mov [esp], edi
	call BG_GetWeaponDef
	mov esi, eax
	mov edx, [ebp+0xc]
	mov eax, [edx]
	mov [ebp-0x28], eax
	mov eax, [edx+0x4]
	mov [ebp-0x24], eax
	mov eax, [edx+0x14]
	mov [esp+0x18], eax
	mov eax, [edx+0x10]
	mov [esp+0x14], eax
	lea eax, [ebp-0x20]
	mov [esp+0x10], eax
	lea eax, [ebp-0x1c]
	mov [esp+0xc], eax
	lea ebx, [ebp-0x28]
	lea eax, [ebp-0x24]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov eax, [ebp+0x8]
	shl eax, 0x6
	mov edx, [ebp+0x8]
	lea eax, [eax+edx*4]
	add eax, scrPlaceView
	mov [esp], eax
	call ScrPlace_ApplyRect
	mov eax, cgArray
	lea edx, [ebp-0x38]
	mov [esp+0x4], edx
	mov [esp], esi
	mov ecx, edi
	mov edx, ebx
	call DrawClipAmmo
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_DrawPlayerWeaponAmmoClipGraphic_30:
	mov eax, cgArray
	mov edi, [eax+0x46224]
	jmp CG_DrawPlayerWeaponAmmoClipGraphic_50
CG_DrawPlayerWeaponAmmoClipGraphic_10:
	mov eax, hud_fade_ammodisplay
	mov ebx, [eax]
	movss xmm0, dword [_float_1000_00000000]
	mulss xmm0, [ebx+0xc]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x40]
	cvttss2si eax, [ebp-0x40]
	mov [esp+0xc], eax
	mov eax, [esi+0x504bc]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_FadeHudMenu
	fstp dword [ebp-0x4c]
	movss xmm0, dword [ebp-0x4c]
	pxor xmm1, xmm1
	jmp CG_DrawPlayerWeaponAmmoClipGraphic_60
	add [eax], al


;Initialized global or static variables of cg_ammocounter:
SECTION .data
_ZZ9AmmoColorP4cg_sPfjE11MYFLASHTERM: dd 0x42200000
_ZZ19DrawClipAmmoRocketsP4cg_sPKfjPK9WeaponDefPfE16TEST_bullet_step: dd 0x42900000, 0x41400000
_ZZ19DrawClipAmmoRocketsP4cg_sPKfjPK9WeaponDefPfE14TEST_bullet_wh: dd 0x42800000, 0x41800000
_ZZ19DrawClipAmmoBeltfedP4cg_sPKfjPK9WeaponDefPfE18TEST_bullet_rowCnt: dd 0x14
_ZZ19DrawClipAmmoBeltfedP4cg_sPKfjPK9WeaponDefPfE16TEST_bullet_step: dd 0x41000000, 0xc0000000
_ZZ19DrawClipAmmoBeltfedP4cg_sPKfjPK9WeaponDefPfE14TEST_bullet_wh: dd 0x41000000, 0x40800000
_ZZ25DrawClipAmmoShotgunShellsP4cg_sPKfjPK9WeaponDefPfE16TEST_bullet_step: dd 0x41a00000, 0x41400000
_ZZ25DrawClipAmmoShotgunShellsP4cg_sPKfjPK9WeaponDefPfE14TEST_bullet_wh: dd 0x41800000, 0x41000000, 0x0, 0x0


;Initialized constant data of cg_ammocounter:
SECTION .rdata
colorLowAmmo: dd 0x3f800000, 0x3e99999a, 0x3e99999a, 0x3f800000
_ZZ27CG_DrawPlayerActionSlotDpadiPK9rectDef_sPKfP8MaterialE5MY_ST: dd 0x0, 0x0, 0x3f800000, 0x3f800000, 0x0, 0x3f800000, 0x3f800000, 0x0, 0x0, 0x0, 0x3f800000, 0x3f800000, 0x0, 0x3f800000, 0x3f800000, 0x0
_ZZ27CG_DrawPlayerActionSlotDpadiPK9rectDef_sPKfP8MaterialE7MY_DIMS: dd 0x3f000000, 0x3e800000, 0x3f000000, 0x3e800000, 0x3e800000, 0x3f000000, 0x3e800000, 0x3f000000
_ZZ27CG_DrawPlayerActionSlotDpadiPK9rectDef_sPKfP8MaterialE10MY_OFFSETS: dd 0x3e800000, 0x3df5c28f, 0x3e800000, 0x3f2147ae, 0x3df5c28f, 0x3e800000, 0x3f2147ae, 0x3e800000, 0x0
_ZZ20DrawClipAmmoMagazineP4cg_sPKfjPK9WeaponDefPfE14TEST_bullet_wh: dd 0x40800000, 0x41000000, 0x4a669, 0x4a64b, 0x4a712, 0x4a6ef, 0x4a6cc, 0x4a6ac, 0x4a671, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0


;Zero initialized global or static variables of cg_ammocounter:
SECTION .bss
actionSlotsHide: resb 0x4
ammoCounterHide: resb 0x54
lowAmmoWarningColor1: resb 0x4
lowAmmoWarningColor2: resb 0x4
lowAmmoWarningNoAmmoColor1: resb 0x4
lowAmmoWarningNoAmmoColor2: resb 0x4
lowAmmoWarningNoReloadColor1: resb 0x4
lowAmmoWarningNoReloadColor2: resb 0x4
lowAmmoWarningPulseFreq: resb 0x4
lowAmmoWarningPulseMax: resb 0x4
lowAmmoWarningPulseMin: resb 0x4


;All cstrings:
SECTION .rdata
_cstring_weapon_s_ammocou:		db "Weapon ",22h,"%s",22h," ammoCounterClip property is set to ",22h,"AltWeapon",22h,", but it has no alternate weapon.",0ah,0
_cstring_weapon_s_and_its:		db "Weapon ",22h,"%s",22h," and it",27h,"s altweapon ",22h,"%s",22h," both have their ammoCounterClip property set to ",22h,"AltWeapon",22h,".",0ah,0
_cstring_3i:		db "%3i",0
_cstring_cg_drawnightvisi:		db "CG_DrawNightVisionOverlay(): Nightvision Assets not Precached.",0ah,0
_cstring_hide_the_ammo_co:		db "Hide the Ammo Counter",0
_cstring_ammocounterhide:		db "ammoCounterHide",0
_cstring_hide_the_actions:		db "Hide the actionslots.",0
_cstring_actionslotshide:		db "actionSlotsHide",0
_cstring_color_1_of_2_to_:		db "Color 1 of 2 to oscilate between",0
_cstring_lowammowarningco:		db "lowAmmoWarningColor1",0
_cstring_color_2_of_2_to_:		db "Color 2 of 2 to oscilate between",0
_cstring_lowammowarningco1:		db "lowAmmoWarningColor2",0
_cstring_frequency_of_the:		db "Frequency of the pulse (oscilation between the 2 colors)",0
_cstring_lowammowarningpu:		db "lowAmmoWarningPulseFreq",0
_cstring_min_of_oscilatio:		db "Min of oscilation range: 0 is color1 and 1.0 is color2.  Can be < 0, and the wave will clip at 0.",0
_cstring_lowammowarningpu1:		db "lowAmmoWarningPulseMax",0
_cstring_max_of_oscilatio:		db "Max of oscilation range: 0 is color1 and 1.0 is color2.  Can be > 1.0, and the wave will clip at 1.0.",0
_cstring_lowammowarningpu2:		db "lowAmmoWarningPulseMin",0
_cstring_like_lowammowarn:		db "Like lowAmmoWarningColor1, but when no ammo to reload with.",0
_cstring_lowammowarningno:		db "lowAmmoWarningNoReloadColor1",0
_cstring_lowammowarningco2:		db "lowAmmoWarningColor2, but when no ammo to reload with.",0
_cstring_lowammowarningno1:		db "lowAmmoWarningNoReloadColor2",0
_cstring_like_lowammowarn1:		db "Like lowAmmoWarningColor1, but when no ammo.",0
_cstring_lowammowarningno2:		db "lowAmmoWarningNoAmmoColor1",0
_cstring_lowammowarningco3:		db "lowAmmoWarningColor2, but when no ammo.",0
_cstring_lowammowarningno3:		db "lowAmmoWarningNoAmmoColor2",0
_cstring_platform_reload:		db "PLATFORM_RELOAD",0
_cstring_low_ammo_warning:		db "low ammo warning",0
_cstring_weapon_no_ammo:		db "WEAPON_NO_AMMO",0
_cstring_platform_low_amm:		db "PLATFORM_LOW_AMMO_NO_RELOAD",0



;All constant floats and doubles:
SECTION .rdata
_float__0_50000000:		dd 0xbf000000	; -0.5
_double_3_14159265:		dq 0x400921fb54442d18	; 3.14159
_float_0_50000000:		dd 0x3f000000	; 0.5
_float_0_25000000:		dd 0x3e800000	; 0.25
_float_32_00000000:		dd 0x42000000	; 32
_float__4_00000000:		dd 0xc0800000	; -4
_float_40_00000000:		dd 0x42200000	; 40
_float_4_00000000:		dd 0x40800000	; 4
_float_1000_00000000:		dd 0x447a0000	; 1000
_float_1_00000000:		dd 0x3f800000	; 1
_float_1_20000005:		dd 0x3f99999a	; 1.2
_float_13_00000000:		dd 0x41500000	; 13
_float_3_00000000:		dd 0x40400000	; 3
_float__3_00000000:		dd 0xc0400000	; -3
_float_0_00000000:		dd 0x0	; 0
_float_0_00392157:		dd 0x3b808081	; 0.00392157
_double_0_00628319:		dq 0x3f79bc65b68b71c3	; 0.00628319

