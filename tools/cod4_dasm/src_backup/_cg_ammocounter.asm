;Imports of cg_ammocounter:
	extern _Z16BG_ClipForWeaponi
	extern _Z32CG_CheckPlayerForLowClipSpecificPK4cg_sj
	extern cgMedia
	extern _Z25CL_DrawStretchPicPhysicalffffffffPKfP8Material
	extern sinf
	extern _Z15BG_GetWeaponDefj
	extern _Z16Com_PrintWarningiPKcz
	extern cgArray
	extern _Z28CG_LookingThroughNightVisioni
	extern hud_fade_ammodisplay
	extern floorf
	extern _Z14CG_FadeHudMenuiPK6dvar_sii
	extern _Z23CG_AltWeaponToggleIndexiPK4cg_s
	extern scrPlaceView
	extern _Z17CL_DrawStretchPicPK15ScreenPlacementffffiiffffPKfP8Material
	extern _Z13BG_WeaponAmmoPK13playerState_si
	extern _Z11Com_sprintfPciPKcz
	extern _Z11UI_DrawTextPK15ScreenPlacementPKciP6Font_sffiifPKfi
	extern _Z16BG_GetNumWeaponsv
	extern _Z18ScrPlace_ApplyRectPK15ScreenPlacementPfS2_S2_S2_ii
	extern _Z17Dvar_RegisterBoolPKchtS0_
	extern _Z18Dvar_RegisterColorPKcfffftS0_
	extern _Z18Dvar_RegisterFloatPKcffftS0_
	extern _Z23CL_DrawStretchPicFlipSTPK15ScreenPlacementffffiiffffPKfP8Material
	extern _Z22BG_GetTotalAmmoReservePK13playerState_sj
	extern _Z32CG_CheckPlayerForLowAmmoSpecificPK4cg_sj
	extern _Z16BG_AmmoForWeaponi
	extern _Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t
	extern _Z18UI_DrawWrappedTextPK15ScreenPlacementPKcPK9rectDef_sP6Font_sfffPKfiiPS4_

;Exports of cg_ammocounter:
	global colorLowAmmo
	global _ZZ9AmmoColorP4cg_sPfjE11MYFLASHTERM
	global _ZZ27CG_DrawPlayerActionSlotDpadiPK9rectDef_sPKfP8MaterialE5MY_ST
	global _ZZ27CG_DrawPlayerActionSlotDpadiPK9rectDef_sPKfP8MaterialE7MY_DIMS
	global _ZZ27CG_DrawPlayerActionSlotDpadiPK9rectDef_sPKfP8MaterialE10MY_OFFSETS
	global _ZZ19DrawClipAmmoRocketsP4cg_sPKfjPK9WeaponDefPfE16TEST_bullet_step
	global _ZZ19DrawClipAmmoRocketsP4cg_sPKfjPK9WeaponDefPfE14TEST_bullet_wh
	global _Z19DrawClipAmmoRocketsP4cg_sPKfjPK9WeaponDefPf
	global _ZZ19DrawClipAmmoBeltfedP4cg_sPKfjPK9WeaponDefPfE18TEST_bullet_rowCnt
	global _ZZ19DrawClipAmmoBeltfedP4cg_sPKfjPK9WeaponDefPfE16TEST_bullet_step
	global _ZZ19DrawClipAmmoBeltfedP4cg_sPKfjPK9WeaponDefPfE14TEST_bullet_wh
	global _Z19DrawClipAmmoBeltfedP4cg_sPKfjPK9WeaponDefPf
	global _ZZ25DrawClipAmmoShotgunShellsP4cg_sPKfjPK9WeaponDefPfE16TEST_bullet_step
	global _ZZ25DrawClipAmmoShotgunShellsP4cg_sPKfjPK9WeaponDefPfE14TEST_bullet_wh
	global _Z25DrawClipAmmoShotgunShellsP4cg_sPKfjPK9WeaponDefPf
	global _Z25DrawClipAmmoShortMagazineP4cg_sPKfjPK9WeaponDefPf
	global _ZZ20DrawClipAmmoMagazineP4cg_sPKfjPK9WeaponDefPfE14TEST_bullet_wh
	global _Z20DrawClipAmmoMagazineP4cg_sPKfjPK9WeaponDefPf
	global _Z12DrawClipAmmoP4cg_sPKfiPK9WeaponDefPf
	global _Z18CG_GetHudAlphaDPadi
	global _Z21CG_ActionSlotIsUsableij
	global _Z23CG_DrawPlayerActionSlotiPK9rectDef_sjPfP6Font_sfi
	global _Z23CG_DrawPlayerWeaponIconiPK9rectDef_sPKf
	global _Z25CG_GetHudAlphaAmmoCounteri
	global _Z27CG_AmmoCounterRegisterDvarsv
	global _Z27CG_DrawPlayerActionSlotDpadiPK9rectDef_sPKfP8Material
	global _Z28CG_DrawPlayerWeaponAmmoStockiPK9rectDef_sP6Font_sfPfP8Materiali
	global _Z29CG_DrawPlayerWeaponBackgroundiPK9rectDef_sPKfP8Material
	global _Z33CG_DrawPlayerWeaponLowAmmoWarningiPK9rectDef_sP6Font_sfiffiP8Material
	global _Z34CG_DrawPlayerWeaponAmmoClipGraphiciPK9rectDef_sPKf
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
_Z19DrawClipAmmoRocketsP4cg_sPKfjPK9WeaponDefPf:
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
	call _Z16BG_ClipForWeaponi
	mov eax, [esi+eax*4+0x46498]
	mov [ebp-0x1c], eax
	mov [esp+0x4], ebx
	mov [esp], esi
	call _Z32CG_CheckPlayerForLowClipSpecificPK4cg_sj
	test al, al
	jnz _Z19DrawClipAmmoRocketsP4cg_sPKfjPK9WeaponDefPf_10
	mov eax, [esi+0x46128]
	mov [esi+0x50318], eax
_Z19DrawClipAmmoRocketsP4cg_sPKfjPK9WeaponDefPf_60:
	mov eax, [ebp+0x14]
	mov esi, [eax+0x338]
	test esi, esi
	jle _Z19DrawClipAmmoRocketsP4cg_sPKfjPK9WeaponDefPf_20
	xor ebx, ebx
	mov esi, cgMedia
	jmp _Z19DrawClipAmmoRocketsP4cg_sPKfjPK9WeaponDefPf_30
_Z19DrawClipAmmoRocketsP4cg_sPKfjPK9WeaponDefPf_40:
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
	call _Z25CL_DrawStretchPicPhysicalffffffffPKfP8Material
	movss xmm0, dword [ebp-0x24]
	subss xmm0, [_ZZ19DrawClipAmmoRocketsP4cg_sPKfjPK9WeaponDefPfE16TEST_bullet_step]
	movss [ebp-0x24], xmm0
	add ebx, 0x1
	mov eax, [ebp+0x14]
	cmp [eax+0x338], ebx
	jle _Z19DrawClipAmmoRocketsP4cg_sPKfjPK9WeaponDefPf_20
_Z19DrawClipAmmoRocketsP4cg_sPKfjPK9WeaponDefPf_30:
	cmp ebx, [ebp-0x1c]
	jnz _Z19DrawClipAmmoRocketsP4cg_sPKfjPK9WeaponDefPf_40
	mov dword [edi], 0x3e99999a
	mov dword [edi+0x4], 0x3e99999a
	mov dword [edi+0x8], 0x3e99999a
	jmp _Z19DrawClipAmmoRocketsP4cg_sPKfjPK9WeaponDefPf_40
_Z19DrawClipAmmoRocketsP4cg_sPKfjPK9WeaponDefPf_20:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19DrawClipAmmoRocketsP4cg_sPKfjPK9WeaponDefPf_10:
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
_Z19DrawClipAmmoRocketsP4cg_sPKfjPK9WeaponDefPf_50:
	lea eax, [edi+edx]
	movss xmm1, dword [eax]
	movss xmm0, dword [edx+colorLowAmmo]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [eax], xmm1
	add edx, 0x4
	cmp edx, 0xc
	jnz _Z19DrawClipAmmoRocketsP4cg_sPKfjPK9WeaponDefPf_50
	jmp _Z19DrawClipAmmoRocketsP4cg_sPKfjPK9WeaponDefPf_60


;DrawClipAmmoBeltfed(cg_s*, float const*, unsigned int, WeaponDef const*, float*)
_Z19DrawClipAmmoBeltfedP4cg_sPKfjPK9WeaponDefPf:
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
	call _Z16BG_ClipForWeaponi
	mov eax, [esi+eax*4+0x46498]
	mov [ebp-0x20], eax
	mov [esp+0x4], ebx
	mov [esp], esi
	call _Z32CG_CheckPlayerForLowClipSpecificPK4cg_sj
	test al, al
	jnz _Z19DrawClipAmmoBeltfedP4cg_sPKfjPK9WeaponDefPf_10
	mov eax, [esi+0x46128]
	mov [esi+0x50318], eax
_Z19DrawClipAmmoBeltfedP4cg_sPKfjPK9WeaponDefPf_70:
	mov eax, [ebp+0x14]
	mov eax, [eax+0x338]
	test eax, eax
	jle _Z19DrawClipAmmoBeltfedP4cg_sPKfjPK9WeaponDefPf_20
	xor ebx, ebx
	mov esi, cgMedia
	jmp _Z19DrawClipAmmoBeltfedP4cg_sPKfjPK9WeaponDefPf_30
_Z19DrawClipAmmoBeltfedP4cg_sPKfjPK9WeaponDefPf_50:
	mov eax, ebx
	cdq
	idiv dword [_ZZ19DrawClipAmmoBeltfedP4cg_sPKfjPK9WeaponDefPfE18TEST_bullet_rowCnt]
	test edx, edx
	jnz _Z19DrawClipAmmoBeltfedP4cg_sPKfjPK9WeaponDefPf_40
	xor dword [ebp-0x1c], 0x80000000
	movss xmm0, dword [ebp-0x24]
	addss xmm0, [_ZZ19DrawClipAmmoBeltfedP4cg_sPKfjPK9WeaponDefPfE16TEST_bullet_step+0x4]
	movss [ebp-0x24], xmm0
	movss xmm0, dword [ebp-0x28]
	addss xmm0, [ebp-0x1c]
	movss [ebp-0x28], xmm0
_Z19DrawClipAmmoBeltfedP4cg_sPKfjPK9WeaponDefPf_40:
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
	call _Z25CL_DrawStretchPicPhysicalffffffffPKfP8Material
	movss xmm0, dword [ebp-0x28]
	addss xmm0, [ebp-0x1c]
	movss [ebp-0x28], xmm0
	add ebx, 0x1
	mov eax, [ebp+0x14]
	cmp [eax+0x338], ebx
	jle _Z19DrawClipAmmoBeltfedP4cg_sPKfjPK9WeaponDefPf_20
_Z19DrawClipAmmoBeltfedP4cg_sPKfjPK9WeaponDefPf_30:
	cmp ebx, [ebp-0x20]
	jnz _Z19DrawClipAmmoBeltfedP4cg_sPKfjPK9WeaponDefPf_50
	mov dword [edi], 0x3e99999a
	mov dword [edi+0x4], 0x3e99999a
	mov dword [edi+0x8], 0x3e99999a
	jmp _Z19DrawClipAmmoBeltfedP4cg_sPKfjPK9WeaponDefPf_50
_Z19DrawClipAmmoBeltfedP4cg_sPKfjPK9WeaponDefPf_20:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19DrawClipAmmoBeltfedP4cg_sPKfjPK9WeaponDefPf_10:
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
_Z19DrawClipAmmoBeltfedP4cg_sPKfjPK9WeaponDefPf_60:
	lea eax, [edi+edx]
	movss xmm1, dword [eax]
	movss xmm0, dword [edx+colorLowAmmo]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [eax], xmm1
	add edx, 0x4
	cmp edx, 0xc
	jnz _Z19DrawClipAmmoBeltfedP4cg_sPKfjPK9WeaponDefPf_60
	jmp _Z19DrawClipAmmoBeltfedP4cg_sPKfjPK9WeaponDefPf_70
	nop


;DrawClipAmmoShotgunShells(cg_s*, float const*, unsigned int, WeaponDef const*, float*)
_Z25DrawClipAmmoShotgunShellsP4cg_sPKfjPK9WeaponDefPf:
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
	call _Z16BG_ClipForWeaponi
	mov eax, [esi+eax*4+0x46498]
	mov [ebp-0x1c], eax
	mov [esp+0x4], ebx
	mov [esp], esi
	call _Z32CG_CheckPlayerForLowClipSpecificPK4cg_sj
	test al, al
	jnz _Z25DrawClipAmmoShotgunShellsP4cg_sPKfjPK9WeaponDefPf_10
	mov eax, [esi+0x46128]
	mov [esi+0x50318], eax
_Z25DrawClipAmmoShotgunShellsP4cg_sPKfjPK9WeaponDefPf_60:
	mov eax, [ebp+0x14]
	mov eax, [eax+0x338]
	test eax, eax
	jle _Z25DrawClipAmmoShotgunShellsP4cg_sPKfjPK9WeaponDefPf_20
	xor ebx, ebx
	mov esi, cgMedia
	jmp _Z25DrawClipAmmoShotgunShellsP4cg_sPKfjPK9WeaponDefPf_30
_Z25DrawClipAmmoShotgunShellsP4cg_sPKfjPK9WeaponDefPf_40:
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
	call _Z25CL_DrawStretchPicPhysicalffffffffPKfP8Material
	movss xmm0, dword [ebp-0x24]
	subss xmm0, [_ZZ25DrawClipAmmoShotgunShellsP4cg_sPKfjPK9WeaponDefPfE16TEST_bullet_step]
	movss [ebp-0x24], xmm0
	add ebx, 0x1
	mov eax, [ebp+0x14]
	cmp [eax+0x338], ebx
	jle _Z25DrawClipAmmoShotgunShellsP4cg_sPKfjPK9WeaponDefPf_20
_Z25DrawClipAmmoShotgunShellsP4cg_sPKfjPK9WeaponDefPf_30:
	cmp ebx, [ebp-0x1c]
	jnz _Z25DrawClipAmmoShotgunShellsP4cg_sPKfjPK9WeaponDefPf_40
	mov dword [edi], 0x3e99999a
	mov dword [edi+0x4], 0x3e99999a
	mov dword [edi+0x8], 0x3e99999a
	jmp _Z25DrawClipAmmoShotgunShellsP4cg_sPKfjPK9WeaponDefPf_40
_Z25DrawClipAmmoShotgunShellsP4cg_sPKfjPK9WeaponDefPf_20:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z25DrawClipAmmoShotgunShellsP4cg_sPKfjPK9WeaponDefPf_10:
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
_Z25DrawClipAmmoShotgunShellsP4cg_sPKfjPK9WeaponDefPf_50:
	lea eax, [edi+edx]
	movss xmm1, dword [eax]
	movss xmm0, dword [edx+colorLowAmmo]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [eax], xmm1
	add edx, 0x4
	cmp edx, 0xc
	jnz _Z25DrawClipAmmoShotgunShellsP4cg_sPKfjPK9WeaponDefPf_50
	jmp _Z25DrawClipAmmoShotgunShellsP4cg_sPKfjPK9WeaponDefPf_60


;DrawClipAmmoShortMagazine(cg_s*, float const*, unsigned int, WeaponDef const*, float*)
_Z25DrawClipAmmoShortMagazineP4cg_sPKfjPK9WeaponDefPf:
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
	call _Z16BG_ClipForWeaponi
	mov eax, [esi+eax*4+0x46498]
	mov [ebp-0x1c], eax
	mov [esp+0x4], ebx
	mov [esp], esi
	call _Z32CG_CheckPlayerForLowClipSpecificPK4cg_sj
	test al, al
	jnz _Z25DrawClipAmmoShortMagazineP4cg_sPKfjPK9WeaponDefPf_10
	mov eax, [esi+0x46128]
	mov [esi+0x50318], eax
_Z25DrawClipAmmoShortMagazineP4cg_sPKfjPK9WeaponDefPf_60:
	mov eax, [ebp+0x14]
	mov eax, [eax+0x338]
	test eax, eax
	jle _Z25DrawClipAmmoShortMagazineP4cg_sPKfjPK9WeaponDefPf_20
	xor ebx, ebx
	mov esi, cgMedia
	jmp _Z25DrawClipAmmoShortMagazineP4cg_sPKfjPK9WeaponDefPf_30
_Z25DrawClipAmmoShortMagazineP4cg_sPKfjPK9WeaponDefPf_40:
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
	call _Z25CL_DrawStretchPicPhysicalffffffffPKfP8Material
	movss xmm0, dword [ebp-0x24]
	subss xmm0, [_float_40_00000000]
	movss [ebp-0x24], xmm0
	add ebx, 0x1
	mov eax, [ebp+0x14]
	cmp [eax+0x338], ebx
	jle _Z25DrawClipAmmoShortMagazineP4cg_sPKfjPK9WeaponDefPf_20
_Z25DrawClipAmmoShortMagazineP4cg_sPKfjPK9WeaponDefPf_30:
	cmp ebx, [ebp-0x1c]
	jnz _Z25DrawClipAmmoShortMagazineP4cg_sPKfjPK9WeaponDefPf_40
	mov dword [edi], 0x3e99999a
	mov dword [edi+0x4], 0x3e99999a
	mov dword [edi+0x8], 0x3e99999a
	jmp _Z25DrawClipAmmoShortMagazineP4cg_sPKfjPK9WeaponDefPf_40
_Z25DrawClipAmmoShortMagazineP4cg_sPKfjPK9WeaponDefPf_20:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z25DrawClipAmmoShortMagazineP4cg_sPKfjPK9WeaponDefPf_10:
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
_Z25DrawClipAmmoShortMagazineP4cg_sPKfjPK9WeaponDefPf_50:
	lea eax, [edi+edx]
	movss xmm1, dword [eax]
	movss xmm0, dword [edx+colorLowAmmo]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [eax], xmm1
	add edx, 0x4
	cmp edx, 0xc
	jnz _Z25DrawClipAmmoShortMagazineP4cg_sPKfjPK9WeaponDefPf_50
	jmp _Z25DrawClipAmmoShortMagazineP4cg_sPKfjPK9WeaponDefPf_60


;DrawClipAmmoMagazine(cg_s*, float const*, unsigned int, WeaponDef const*, float*)
_Z20DrawClipAmmoMagazineP4cg_sPKfjPK9WeaponDefPf:
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
	call _Z16BG_ClipForWeaponi
	mov eax, [esi+eax*4+0x46498]
	mov [ebp-0x1c], eax
	mov [esp+0x4], ebx
	mov [esp], esi
	call _Z32CG_CheckPlayerForLowClipSpecificPK4cg_sj
	test al, al
	jnz _Z20DrawClipAmmoMagazineP4cg_sPKfjPK9WeaponDefPf_10
	mov eax, [esi+0x46128]
	mov [esi+0x50318], eax
_Z20DrawClipAmmoMagazineP4cg_sPKfjPK9WeaponDefPf_60:
	mov eax, [ebp+0x14]
	mov eax, [eax+0x338]
	test eax, eax
	jle _Z20DrawClipAmmoMagazineP4cg_sPKfjPK9WeaponDefPf_20
	xor ebx, ebx
	mov esi, cgMedia
	jmp _Z20DrawClipAmmoMagazineP4cg_sPKfjPK9WeaponDefPf_30
_Z20DrawClipAmmoMagazineP4cg_sPKfjPK9WeaponDefPf_40:
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
	call _Z25CL_DrawStretchPicPhysicalffffffffPKfP8Material
	movss xmm0, dword [ebp-0x24]
	subss xmm0, [_float_4_00000000]
	movss [ebp-0x24], xmm0
	add ebx, 0x1
	mov eax, [ebp+0x14]
	cmp [eax+0x338], ebx
	jle _Z20DrawClipAmmoMagazineP4cg_sPKfjPK9WeaponDefPf_20
_Z20DrawClipAmmoMagazineP4cg_sPKfjPK9WeaponDefPf_30:
	cmp ebx, [ebp-0x1c]
	jnz _Z20DrawClipAmmoMagazineP4cg_sPKfjPK9WeaponDefPf_40
	mov dword [edi], 0x3e99999a
	mov dword [edi+0x4], 0x3e99999a
	mov dword [edi+0x8], 0x3e99999a
	jmp _Z20DrawClipAmmoMagazineP4cg_sPKfjPK9WeaponDefPf_40
_Z20DrawClipAmmoMagazineP4cg_sPKfjPK9WeaponDefPf_20:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z20DrawClipAmmoMagazineP4cg_sPKfjPK9WeaponDefPf_10:
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
_Z20DrawClipAmmoMagazineP4cg_sPKfjPK9WeaponDefPf_50:
	lea eax, [edi+edx]
	movss xmm1, dword [eax]
	movss xmm0, dword [edx+colorLowAmmo]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [eax], xmm1
	add edx, 0x4
	cmp edx, 0xc
	jnz _Z20DrawClipAmmoMagazineP4cg_sPKfjPK9WeaponDefPf_50
	jmp _Z20DrawClipAmmoMagazineP4cg_sPKfjPK9WeaponDefPf_60


;DrawClipAmmo(cg_s*, float const*, int, WeaponDef const*, float*)
_Z12DrawClipAmmoP4cg_sPKfiPK9WeaponDefPf:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov [ebp-0x1c], eax
	mov edi, edx
	mov ebx, [ebp+0x8]
_Z12DrawClipAmmoP4cg_sPKfiPK9WeaponDefPf_40:
	cmp dword [ebx+0x31c], 0x6
	ja _Z12DrawClipAmmoP4cg_sPKfiPK9WeaponDefPf_10
	mov eax, [ebx+0x31c]
	jmp dword [eax*4+_Z12DrawClipAmmoP4cg_sPKfiPK9WeaponDefPf_jumptab_0]
_Z12DrawClipAmmoP4cg_sPKfiPK9WeaponDefPf_50:
	mov eax, [ebp+0xc]
	mov [esp+0x10], eax
	mov [esp+0xc], ebx
	mov [esp+0x8], ecx
	mov [esp+0x4], edi
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call _Z20DrawClipAmmoMagazineP4cg_sPKfjPK9WeaponDefPf
_Z12DrawClipAmmoP4cg_sPKfiPK9WeaponDefPf_10:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z12DrawClipAmmoP4cg_sPKfiPK9WeaponDefPf_100:
	mov eax, [ebx+0x540]
	test eax, eax
	jz _Z12DrawClipAmmoP4cg_sPKfiPK9WeaponDefPf_20
	mov [esp], eax
	call _Z15BG_GetWeaponDefj
	cmp dword [eax+0x31c], 0x6
	jz _Z12DrawClipAmmoP4cg_sPKfiPK9WeaponDefPf_30
	mov esi, [ebx+0x540]
	test esi, esi
	jz _Z12DrawClipAmmoP4cg_sPKfiPK9WeaponDefPf_10
	mov [esp], esi
	call _Z15BG_GetWeaponDefj
	mov ebx, eax
	mov ecx, esi
	jmp _Z12DrawClipAmmoP4cg_sPKfiPK9WeaponDefPf_40
_Z12DrawClipAmmoP4cg_sPKfiPK9WeaponDefPf_90:
	mov eax, [ebp+0xc]
	mov [esp+0x10], eax
	mov [esp+0xc], ebx
	mov [esp+0x8], ecx
	mov [esp+0x4], edi
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call _Z19DrawClipAmmoBeltfedP4cg_sPKfjPK9WeaponDefPf
	jmp _Z12DrawClipAmmoP4cg_sPKfiPK9WeaponDefPf_10
_Z12DrawClipAmmoP4cg_sPKfiPK9WeaponDefPf_80:
	mov eax, [ebp+0xc]
	mov [esp+0x10], eax
	mov [esp+0xc], ebx
	mov [esp+0x8], ecx
	mov [esp+0x4], edi
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call _Z19DrawClipAmmoRocketsP4cg_sPKfjPK9WeaponDefPf
	jmp _Z12DrawClipAmmoP4cg_sPKfiPK9WeaponDefPf_10
_Z12DrawClipAmmoP4cg_sPKfiPK9WeaponDefPf_70:
	mov eax, [ebp+0xc]
	mov [esp+0x10], eax
	mov [esp+0xc], ebx
	mov [esp+0x8], ecx
	mov [esp+0x4], edi
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call _Z25DrawClipAmmoShotgunShellsP4cg_sPKfjPK9WeaponDefPf
	jmp _Z12DrawClipAmmoP4cg_sPKfiPK9WeaponDefPf_10
_Z12DrawClipAmmoP4cg_sPKfiPK9WeaponDefPf_60:
	mov eax, [ebp+0xc]
	mov [esp+0x10], eax
	mov [esp+0xc], ebx
	mov [esp+0x8], ecx
	mov [esp+0x4], edi
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call _Z25DrawClipAmmoShortMagazineP4cg_sPKfjPK9WeaponDefPf
	jmp _Z12DrawClipAmmoP4cg_sPKfiPK9WeaponDefPf_10
_Z12DrawClipAmmoP4cg_sPKfiPK9WeaponDefPf_20:
	mov eax, [ebx]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_weapon_s_ammocou
	mov dword [esp], 0x11
	call _Z16Com_PrintWarningiPKcz
	jmp _Z12DrawClipAmmoP4cg_sPKfiPK9WeaponDefPf_10
_Z12DrawClipAmmoP4cg_sPKfiPK9WeaponDefPf_30:
	mov eax, [eax]
	mov [esp+0xc], eax
	mov eax, [ebx]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_weapon_s_and_its
	mov dword [esp], 0x11
	call _Z16Com_PrintWarningiPKcz
	jmp _Z12DrawClipAmmoP4cg_sPKfiPK9WeaponDefPf_10
	nop
	
	
_Z12DrawClipAmmoP4cg_sPKfiPK9WeaponDefPf_jumptab_0:
	dd _Z12DrawClipAmmoP4cg_sPKfiPK9WeaponDefPf_10
	dd _Z12DrawClipAmmoP4cg_sPKfiPK9WeaponDefPf_50
	dd _Z12DrawClipAmmoP4cg_sPKfiPK9WeaponDefPf_60
	dd _Z12DrawClipAmmoP4cg_sPKfiPK9WeaponDefPf_70
	dd _Z12DrawClipAmmoP4cg_sPKfiPK9WeaponDefPf_80
	dd _Z12DrawClipAmmoP4cg_sPKfiPK9WeaponDefPf_90
	dd _Z12DrawClipAmmoP4cg_sPKfiPK9WeaponDefPf_100


;CG_GetHudAlphaDPad(int)
_Z18CG_GetHudAlphaDPadi:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov edx, cgArray
	cmp byte [edx+0x4614c], 0x0
	js _Z18CG_GetHudAlphaDPadi_10
	mov ebx, edx
	mov edi, 0x3f800000
	mov esi, edx
_Z18CG_GetHudAlphaDPadi_50:
	mov eax, [ebx+0x4673c]
	cmp eax, 0x2
	jz _Z18CG_GetHudAlphaDPadi_20
	cmp eax, 0x3
	jz _Z18CG_GetHudAlphaDPadi_30
	sub eax, 0x1
	jz _Z18CG_GetHudAlphaDPadi_40
_Z18CG_GetHudAlphaDPadi_70:
	add ebx, 0x4
	mov edx, esi
	lea eax, [esi+0x10]
	cmp ebx, eax
	jnz _Z18CG_GetHudAlphaDPadi_50
	cmp byte [esi+0x4614c], 0x0
	jns _Z18CG_GetHudAlphaDPadi_60
_Z18CG_GetHudAlphaDPadi_10:
	fldz
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z18CG_GetHudAlphaDPadi_20:
	mov eax, [edx+0x5036c]
	mov [esp], eax
	call _Z15BG_GetWeaponDefj
	cmp dword [eax+0x13c], 0x3
	jnz _Z18CG_GetHudAlphaDPadi_70
_Z18CG_GetHudAlphaDPadi_90:
	mov [ebp-0x2c], edi
	fld dword [ebp-0x2c]
_Z18CG_GetHudAlphaDPadi_80:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z18CG_GetHudAlphaDPadi_30:
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z28CG_LookingThroughNightVisioni
	test al, al
	jz _Z18CG_GetHudAlphaDPadi_70
	mov [ebp-0x2c], edi
	fld dword [ebp-0x2c]
	jmp _Z18CG_GetHudAlphaDPadi_80
_Z18CG_GetHudAlphaDPadi_40:
	mov eax, [edx+0x5036c]
	cmp eax, [ebx+0x4674c]
	jnz _Z18CG_GetHudAlphaDPadi_70
	jmp _Z18CG_GetHudAlphaDPadi_90
_Z18CG_GetHudAlphaDPadi_60:
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
	call _Z14CG_FadeHudMenuiPK6dvar_sii
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;CG_ActionSlotIsUsable(int, unsigned int)
_Z21CG_ActionSlotIsUsableij:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0xc]
	mov ebx, cgArray
	mov edx, [ebx+eax*4+0x4673c]
	cmp edx, 0x2
	jz _Z21CG_ActionSlotIsUsableij_10
	cmp edx, 0x3
	jz _Z21CG_ActionSlotIsUsableij_20
	cmp edx, 0x1
	jz _Z21CG_ActionSlotIsUsableij_30
_Z21CG_ActionSlotIsUsableij_40:
	xor eax, eax
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z21CG_ActionSlotIsUsableij_30:
	mov ecx, [ebx+eax*4+0x4674c]
	test ecx, ecx
	jz _Z21CG_ActionSlotIsUsableij_40
	mov eax, ecx
	sar eax, 0x5
	and ecx, 0x1f
	shl edx, cl
	test [ebx+eax*4+0x46698], edx
	jz _Z21CG_ActionSlotIsUsableij_40
_Z21CG_ActionSlotIsUsableij_20:
	mov eax, 0x1
_Z21CG_ActionSlotIsUsableij_50:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z21CG_ActionSlotIsUsableij_10:
	mov [esp+0x4], ebx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z23CG_AltWeaponToggleIndexiPK4cg_s
	test eax, eax
	jz _Z21CG_ActionSlotIsUsableij_40
	mov eax, 0x1
	jmp _Z21CG_ActionSlotIsUsableij_50
	nop


;CG_DrawPlayerActionSlot(int, rectDef_s const*, unsigned int, float*, Font_s*, float, int)
_Z23CG_DrawPlayerActionSlotiPK9rectDef_sjPfP6Font_sfi:
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
	jz _Z23CG_DrawPlayerActionSlotiPK9rectDef_sjPfP6Font_sfi_10
	cmp eax, 0x3
	jz _Z23CG_DrawPlayerActionSlotiPK9rectDef_sjPfP6Font_sfi_20
	sub eax, 0x1
	jz _Z23CG_DrawPlayerActionSlotiPK9rectDef_sjPfP6Font_sfi_30
_Z23CG_DrawPlayerActionSlotiPK9rectDef_sjPfP6Font_sfi_170:
	movss xmm0, dword [ebp-0x1c]
	movss [ebp-0x84], xmm0
	cmp byte [ebx+0x4614c], 0x0
	js _Z23CG_DrawPlayerActionSlotiPK9rectDef_sjPfP6Font_sfi_40
	mov esi, ebx
	mov edi, cgArray
_Z23CG_DrawPlayerActionSlotiPK9rectDef_sjPfP6Font_sfi_80:
	mov eax, [esi+0x4673c]
	cmp eax, 0x2
	jz _Z23CG_DrawPlayerActionSlotiPK9rectDef_sjPfP6Font_sfi_50
	cmp eax, 0x3
	jz _Z23CG_DrawPlayerActionSlotiPK9rectDef_sjPfP6Font_sfi_60
	sub eax, 0x1
	jz _Z23CG_DrawPlayerActionSlotiPK9rectDef_sjPfP6Font_sfi_70
_Z23CG_DrawPlayerActionSlotiPK9rectDef_sjPfP6Font_sfi_150:
	add esi, 0x4
	mov ebx, edi
	lea eax, [edi+0x10]
	cmp esi, eax
	jnz _Z23CG_DrawPlayerActionSlotiPK9rectDef_sjPfP6Font_sfi_80
_Z23CG_DrawPlayerActionSlotiPK9rectDef_sjPfP6Font_sfi_250:
	cmp byte [edi+0x4614c], 0x0
	jns _Z23CG_DrawPlayerActionSlotiPK9rectDef_sjPfP6Font_sfi_90
_Z23CG_DrawPlayerActionSlotiPK9rectDef_sjPfP6Font_sfi_40:
	pxor xmm1, xmm1
	movaps xmm0, xmm1
_Z23CG_DrawPlayerActionSlotiPK9rectDef_sjPfP6Font_sfi_160:
	mulss xmm0, [ebp-0x84]
	movss [ebp-0x1c], xmm0
	ucomiss xmm0, xmm1
	jp _Z23CG_DrawPlayerActionSlotiPK9rectDef_sjPfP6Font_sfi_100
	jz _Z23CG_DrawPlayerActionSlotiPK9rectDef_sjPfP6Font_sfi_110
_Z23CG_DrawPlayerActionSlotiPK9rectDef_sjPfP6Font_sfi_100:
	mov ebx, cgArray
	mov ecx, [ebp+0x10]
	mov edx, [ebx+ecx*4+0x4673c]
	cmp edx, 0x2
	jz _Z23CG_DrawPlayerActionSlotiPK9rectDef_sjPfP6Font_sfi_120
	cmp edx, 0x3
	jz _Z23CG_DrawPlayerActionSlotiPK9rectDef_sjPfP6Font_sfi_130
	cmp edx, 0x1
	jz _Z23CG_DrawPlayerActionSlotiPK9rectDef_sjPfP6Font_sfi_140
_Z23CG_DrawPlayerActionSlotiPK9rectDef_sjPfP6Font_sfi_110:
	add esp, 0xdc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z23CG_DrawPlayerActionSlotiPK9rectDef_sjPfP6Font_sfi_50:
	mov eax, [ebx+0x5036c]
	mov [esp], eax
	call _Z15BG_GetWeaponDefj
	cmp dword [eax+0x13c], 0x3
	jnz _Z23CG_DrawPlayerActionSlotiPK9rectDef_sjPfP6Font_sfi_150
_Z23CG_DrawPlayerActionSlotiPK9rectDef_sjPfP6Font_sfi_240:
	movss xmm0, dword [_float_1_00000000]
	pxor xmm1, xmm1
	jmp _Z23CG_DrawPlayerActionSlotiPK9rectDef_sjPfP6Font_sfi_160
_Z23CG_DrawPlayerActionSlotiPK9rectDef_sjPfP6Font_sfi_10:
	mov eax, [ebx+0x5036c]
	mov [esp], eax
	call _Z15BG_GetWeaponDefj
	cmp dword [eax+0x13c], 0x3
	jnz _Z23CG_DrawPlayerActionSlotiPK9rectDef_sjPfP6Font_sfi_170
_Z23CG_DrawPlayerActionSlotiPK9rectDef_sjPfP6Font_sfi_180:
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
	jmp _Z23CG_DrawPlayerActionSlotiPK9rectDef_sjPfP6Font_sfi_170
_Z23CG_DrawPlayerActionSlotiPK9rectDef_sjPfP6Font_sfi_60:
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z28CG_LookingThroughNightVisioni
	test al, al
	jz _Z23CG_DrawPlayerActionSlotiPK9rectDef_sjPfP6Font_sfi_150
	movss xmm0, dword [_float_1_00000000]
	pxor xmm1, xmm1
	jmp _Z23CG_DrawPlayerActionSlotiPK9rectDef_sjPfP6Font_sfi_160
_Z23CG_DrawPlayerActionSlotiPK9rectDef_sjPfP6Font_sfi_20:
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z28CG_LookingThroughNightVisioni
	test al, al
	jnz _Z23CG_DrawPlayerActionSlotiPK9rectDef_sjPfP6Font_sfi_180
	jmp _Z23CG_DrawPlayerActionSlotiPK9rectDef_sjPfP6Font_sfi_170
_Z23CG_DrawPlayerActionSlotiPK9rectDef_sjPfP6Font_sfi_120:
	mov edi, [ebx+0x5036c]
	mov [esp], edi
	call _Z15BG_GetWeaponDefj
	mov esi, eax
	cmp dword [eax+0x13c], 0x3
	jz _Z23CG_DrawPlayerActionSlotiPK9rectDef_sjPfP6Font_sfi_190
	mov [esp+0x4], ebx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z23CG_AltWeaponToggleIndexiPK4cg_s
	mov edi, eax
	test eax, eax
	jz _Z23CG_DrawPlayerActionSlotiPK9rectDef_sjPfP6Font_sfi_110
	mov [esp], eax
	call _Z15BG_GetWeaponDefj
	mov esi, eax
_Z23CG_DrawPlayerActionSlotiPK9rectDef_sjPfP6Font_sfi_190:
	mov eax, [esi+0x528]
	cmp eax, 0x2
	jz _Z23CG_DrawPlayerActionSlotiPK9rectDef_sjPfP6Font_sfi_200
	sub eax, 0x1
	jz _Z23CG_DrawPlayerActionSlotiPK9rectDef_sjPfP6Font_sfi_210
	mov ecx, [ebp+0xc]
	mov edx, [ecx]
	movss xmm2, dword [ecx+0x4]
	movss xmm1, dword [ecx+0x8]
	movss xmm0, dword [ecx+0xc]
_Z23CG_DrawPlayerActionSlotiPK9rectDef_sjPfP6Font_sfi_310:
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
	call _Z17CL_DrawStretchPicPK15ScreenPlacementffffiiffffPKfP8Material
	mov [esp+0x4], edi
	mov edx, cgArray
	add edx, 0x4613c
	mov [ebp-0x8c], edx
	mov [esp], edx
	call _Z13BG_WeaponAmmoPK13playerState_si
	test eax, eax
	jnz _Z23CG_DrawPlayerActionSlotiPK9rectDef_sjPfP6Font_sfi_220
	mov [ebp-0x28], ebx
	mov eax, 0x3e99999a
	mov [ebp-0x24], eax
	mov [ebp-0x20], eax
_Z23CG_DrawPlayerActionSlotiPK9rectDef_sjPfP6Font_sfi_220:
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
	jbe _Z23CG_DrawPlayerActionSlotiPK9rectDef_sjPfP6Font_sfi_230
_Z23CG_DrawPlayerActionSlotiPK9rectDef_sjPfP6Font_sfi_320:
	mov [esp+0x4], edi
	mov eax, [ebp-0x8c]
	mov [esp], eax
	call _Z13BG_WeaponAmmoPK13playerState_si
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_3i
	mov dword [esp+0x4], 0x40
	lea ebx, [ebp-0x68]
	mov [esp], ebx
	call _Z11Com_sprintfPciPKcz
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
	call _Z11UI_DrawTextPK15ScreenPlacementPKciP6Font_sffiifPKfi
	add esp, 0xdc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z23CG_DrawPlayerActionSlotiPK9rectDef_sjPfP6Font_sfi_70:
	mov eax, [ebx+0x5036c]
	cmp eax, [esi+0x4674c]
	jz _Z23CG_DrawPlayerActionSlotiPK9rectDef_sjPfP6Font_sfi_240
	add esi, 0x4
	mov ebx, edi
	lea eax, [edi+0x10]
	cmp esi, eax
	jnz _Z23CG_DrawPlayerActionSlotiPK9rectDef_sjPfP6Font_sfi_80
	jmp _Z23CG_DrawPlayerActionSlotiPK9rectDef_sjPfP6Font_sfi_250
_Z23CG_DrawPlayerActionSlotiPK9rectDef_sjPfP6Font_sfi_30:
	mov eax, [ebx+0x5036c]
	mov edx, [ebp+0x10]
	cmp eax, [ebx+edx*4+0x4674c]
	jnz _Z23CG_DrawPlayerActionSlotiPK9rectDef_sjPfP6Font_sfi_170
	jmp _Z23CG_DrawPlayerActionSlotiPK9rectDef_sjPfP6Font_sfi_180
_Z23CG_DrawPlayerActionSlotiPK9rectDef_sjPfP6Font_sfi_140:
	mov ecx, [ebp+0x10]
	mov esi, [ebx+ecx*4+0x4674c]
	test esi, esi
	jz _Z23CG_DrawPlayerActionSlotiPK9rectDef_sjPfP6Font_sfi_110
	mov eax, esi
	sar eax, 0x5
	mov ecx, esi
	and ecx, 0x1f
	shl edx, cl
	test [ebx+eax*4+0x46698], edx
	jz _Z23CG_DrawPlayerActionSlotiPK9rectDef_sjPfP6Font_sfi_110
	mov [esp], esi
	call _Z15BG_GetWeaponDefj
	mov [ebp-0x6c], eax
	mov eax, [eax+0x528]
	cmp eax, 0x2
	jz _Z23CG_DrawPlayerActionSlotiPK9rectDef_sjPfP6Font_sfi_260
	sub eax, 0x1
	jz _Z23CG_DrawPlayerActionSlotiPK9rectDef_sjPfP6Font_sfi_270
	mov ecx, [ebp+0xc]
	mov edx, [ecx]
	movss xmm2, dword [ecx+0x4]
	movss xmm1, dword [ecx+0x8]
	movss xmm0, dword [ecx+0xc]
_Z23CG_DrawPlayerActionSlotiPK9rectDef_sjPfP6Font_sfi_330:
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
	call _Z17CL_DrawStretchPicPK15ScreenPlacementffffiiffffPKfP8Material
	mov [esp+0x4], esi
	mov eax, cgArray
	add eax, 0x4613c
	mov [ebp-0x90], eax
	mov [esp], eax
	call _Z13BG_WeaponAmmoPK13playerState_si
	test eax, eax
	jnz _Z23CG_DrawPlayerActionSlotiPK9rectDef_sjPfP6Font_sfi_280
	mov [ebp-0x28], ebx
	mov eax, 0x3e99999a
	mov [ebp-0x24], eax
	mov [ebp-0x20], eax
_Z23CG_DrawPlayerActionSlotiPK9rectDef_sjPfP6Font_sfi_280:
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
	jbe _Z23CG_DrawPlayerActionSlotiPK9rectDef_sjPfP6Font_sfi_290
_Z23CG_DrawPlayerActionSlotiPK9rectDef_sjPfP6Font_sfi_340:
	mov [esp+0x4], esi
	mov ecx, [ebp-0x90]
	mov [esp], ecx
	call _Z13BG_WeaponAmmoPK13playerState_si
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_3i
	mov dword [esp+0x4], 0x40
	lea ebx, [ebp-0x68]
	mov [esp], ebx
	call _Z11Com_sprintfPciPKcz
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
	call _Z11UI_DrawTextPK15ScreenPlacementPKciP6Font_sffiifPKfi
	jmp _Z23CG_DrawPlayerActionSlotiPK9rectDef_sjPfP6Font_sfi_110
_Z23CG_DrawPlayerActionSlotiPK9rectDef_sjPfP6Font_sfi_90:
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
	call _Z14CG_FadeHudMenuiPK6dvar_sii
	fstp dword [ebp-0x9c]
	movss xmm0, dword [ebp-0x9c]
	pxor xmm1, xmm1
	jmp _Z23CG_DrawPlayerActionSlotiPK9rectDef_sjPfP6Font_sfi_160
_Z23CG_DrawPlayerActionSlotiPK9rectDef_sjPfP6Font_sfi_130:
	mov eax, cgMedia
	mov eax, [eax+0x2784]
	test eax, eax
	jz _Z23CG_DrawPlayerActionSlotiPK9rectDef_sjPfP6Font_sfi_300
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
	call _Z17CL_DrawStretchPicPK15ScreenPlacementffffiiffffPKfP8Material
	add esp, 0xdc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z23CG_DrawPlayerActionSlotiPK9rectDef_sjPfP6Font_sfi_200:
	mov ecx, [ebp+0xc]
	mov edx, [ecx]
	movss xmm1, dword [ecx+0x8]
	addss xmm1, xmm1
	movss xmm0, dword [ecx+0xc]
	movaps xmm2, xmm0
	mulss xmm2, [_float_0_25000000]
	addss xmm2, [ecx+0x4]
	mulss xmm0, [_float_0_50000000]
	jmp _Z23CG_DrawPlayerActionSlotiPK9rectDef_sjPfP6Font_sfi_310
_Z23CG_DrawPlayerActionSlotiPK9rectDef_sjPfP6Font_sfi_230:
	addss xmm0, [ebp-0x70]
	movss [ebp-0x70], xmm0
	jmp _Z23CG_DrawPlayerActionSlotiPK9rectDef_sjPfP6Font_sfi_320
_Z23CG_DrawPlayerActionSlotiPK9rectDef_sjPfP6Font_sfi_210:
	mov eax, [ebp+0xc]
	mov edx, [eax]
	movss xmm1, dword [eax+0x8]
	addss xmm1, xmm1
	movss xmm2, dword [eax+0x4]
	movss xmm0, dword [eax+0xc]
	jmp _Z23CG_DrawPlayerActionSlotiPK9rectDef_sjPfP6Font_sfi_310
_Z23CG_DrawPlayerActionSlotiPK9rectDef_sjPfP6Font_sfi_300:
	mov dword [esp+0x4], _cstring_cg_drawnightvisi
	mov dword [esp], 0xe
	call _Z16Com_PrintWarningiPKcz
	jmp _Z23CG_DrawPlayerActionSlotiPK9rectDef_sjPfP6Font_sfi_110
_Z23CG_DrawPlayerActionSlotiPK9rectDef_sjPfP6Font_sfi_260:
	mov ecx, [ebp+0xc]
	mov edx, [ecx]
	movss xmm1, dword [ecx+0x8]
	addss xmm1, xmm1
	movss xmm0, dword [ecx+0xc]
	movaps xmm2, xmm0
	mulss xmm2, [_float_0_25000000]
	addss xmm2, [ecx+0x4]
	mulss xmm0, [_float_0_50000000]
	jmp _Z23CG_DrawPlayerActionSlotiPK9rectDef_sjPfP6Font_sfi_330
_Z23CG_DrawPlayerActionSlotiPK9rectDef_sjPfP6Font_sfi_290:
	addss xmm0, [ebp-0x80]
	movss [ebp-0x80], xmm0
	jmp _Z23CG_DrawPlayerActionSlotiPK9rectDef_sjPfP6Font_sfi_340
_Z23CG_DrawPlayerActionSlotiPK9rectDef_sjPfP6Font_sfi_270:
	mov eax, [ebp+0xc]
	mov edx, [eax]
	movss xmm1, dword [eax+0x8]
	addss xmm1, xmm1
	movss xmm2, dword [eax+0x4]
	movss xmm0, dword [eax+0xc]
	jmp _Z23CG_DrawPlayerActionSlotiPK9rectDef_sjPfP6Font_sfi_330


;CG_DrawPlayerWeaponIcon(int, rectDef_s const*, float const*)
_Z23CG_DrawPlayerWeaponIconiPK9rectDef_sPKf:
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
	jns _Z23CG_DrawPlayerWeaponIconiPK9rectDef_sPKf_10
	pxor xmm1, xmm1
	movaps xmm0, xmm1
_Z23CG_DrawPlayerWeaponIconiPK9rectDef_sPKf_80:
	mulss xmm0, [ebp-0x3c]
	movss [ebp-0x2c], xmm0
	ucomiss xmm0, xmm1
	jp _Z23CG_DrawPlayerWeaponIconiPK9rectDef_sPKf_20
	jnz _Z23CG_DrawPlayerWeaponIconiPK9rectDef_sPKf_20
_Z23CG_DrawPlayerWeaponIconiPK9rectDef_sPKf_40:
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z23CG_DrawPlayerWeaponIconiPK9rectDef_sPKf_20:
	mov esi, cgArray
	mov ebx, [esi+0x5036c]
	call _Z16BG_GetNumWeaponsv
	cmp ebx, eax
	jae _Z23CG_DrawPlayerWeaponIconiPK9rectDef_sPKf_30
	mov ebx, [esi+0x5036c]
	mov edx, ebx
	sar edx, 0x5
	mov ecx, ebx
	and ecx, 0x1f
	mov eax, 0x1
	shl eax, cl
	test [esi+edx*4+0x46698], eax
	jz _Z23CG_DrawPlayerWeaponIconiPK9rectDef_sPKf_30
_Z23CG_DrawPlayerWeaponIconiPK9rectDef_sPKf_70:
	test ebx, ebx
	jz _Z23CG_DrawPlayerWeaponIconiPK9rectDef_sPKf_40
	mov [esp], ebx
	call _Z15BG_GetWeaponDefj
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
	call _Z18ScrPlace_ApplyRectPK15ScreenPlacementPfS2_S2_S2_ii
	test ebx, ebx
	jz _Z23CG_DrawPlayerWeaponIconiPK9rectDef_sPKf_50
	sub ebx, 0x1
	jz _Z23CG_DrawPlayerWeaponIconiPK9rectDef_sPKf_60
	movss xmm1, dword [ebp-0x24]
	movaps xmm0, xmm1
	mulss xmm0, [_float__3_00000000]
	addss xmm0, [ebp-0x1c]
	movss [ebp-0x1c], xmm0
	mulss xmm1, [_float_4_00000000]
	movss [ebp-0x24], xmm1
_Z23CG_DrawPlayerWeaponIconiPK9rectDef_sPKf_90:
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
	call _Z25CL_DrawStretchPicPhysicalffffffffPKfP8Material
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z23CG_DrawPlayerWeaponIconiPK9rectDef_sPKf_30:
	mov eax, cgArray
	mov ebx, [eax+0x46224]
	jmp _Z23CG_DrawPlayerWeaponIconiPK9rectDef_sPKf_70
_Z23CG_DrawPlayerWeaponIconiPK9rectDef_sPKf_10:
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
	call _Z14CG_FadeHudMenuiPK6dvar_sii
	fstp dword [ebp-0x4c]
	movss xmm0, dword [ebp-0x4c]
	pxor xmm1, xmm1
	jmp _Z23CG_DrawPlayerWeaponIconiPK9rectDef_sPKf_80
_Z23CG_DrawPlayerWeaponIconiPK9rectDef_sPKf_50:
	movss xmm1, dword [ebp-0x24]
	jmp _Z23CG_DrawPlayerWeaponIconiPK9rectDef_sPKf_90
_Z23CG_DrawPlayerWeaponIconiPK9rectDef_sPKf_60:
	movss xmm1, dword [ebp-0x24]
	movss xmm0, dword [ebp-0x1c]
	subss xmm0, xmm1
	movss [ebp-0x1c], xmm0
	addss xmm1, xmm1
	movss [ebp-0x24], xmm1
	jmp _Z23CG_DrawPlayerWeaponIconiPK9rectDef_sPKf_90


;CG_GetHudAlphaAmmoCounter(int)
_Z25CG_GetHudAlphaAmmoCounteri:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x20
	mov esi, cgArray
	cmp byte [esi+0x4614c], 0x0
	jns _Z25CG_GetHudAlphaAmmoCounteri_10
	fldz
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
_Z25CG_GetHudAlphaAmmoCounteri_10:
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
	call _Z14CG_FadeHudMenuiPK6dvar_sii
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret


;CG_AmmoCounterRegisterDvars()
_Z27CG_AmmoCounterRegisterDvarsv:
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
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [ammoCounterHide], eax
	mov dword [esp+0xc], _cstring_hide_the_actions
	mov dword [esp+0x8], 0x1000
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_actionslotshide
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [actionSlotsHide], eax
	mov dword [esp+0x18], _cstring_color_1_of_2_to_
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x3f4ccccd
	mov eax, 0x3f666666
	mov [esp+0xc], eax
	mov [esp+0x8], eax
	mov [esp+0x4], eax
	mov dword [esp], _cstring_lowammowarningco
	call _Z18Dvar_RegisterColorPKcfffftS0_
	mov [lowAmmoWarningColor1], eax
	mov dword [esp+0x18], _cstring_color_2_of_2_to_
	mov dword [esp+0x14], 0x0
	mov esi, 0x3f800000
	mov [esp+0x10], esi
	mov [esp+0xc], esi
	mov [esp+0x8], esi
	mov [esp+0x4], esi
	mov dword [esp], _cstring_lowammowarningco1
	call _Z18Dvar_RegisterColorPKcfffftS0_
	mov [lowAmmoWarningColor2], eax
	mov dword [esp+0x14], _cstring_frequency_of_the
	mov dword [esp+0x10], 0x0
	mov edi, 0x7f7fffff
	mov [esp+0xc], edi
	xor ebx, ebx
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x3fd9999a
	mov dword [esp], _cstring_lowammowarningpu
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [lowAmmoWarningPulseFreq], eax
	mov dword [esp+0x14], _cstring_min_of_oscilatio
	mov dword [esp+0x10], 0x0
	mov [esp+0xc], edi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x3fc00000
	mov dword [esp], _cstring_lowammowarningpu1
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [lowAmmoWarningPulseMax], eax
	mov dword [esp+0x14], _cstring_max_of_oscilatio
	mov dword [esp+0x10], 0x0
	mov [esp+0xc], esi
	mov dword [esp+0x8], 0xff7fffff
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_lowammowarningpu2
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [lowAmmoWarningPulseMin], eax
	mov dword [esp+0x18], _cstring_like_lowammowarn
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x3f4ccccd
	mov [esp+0xc], ebx
	mov eax, 0x3f333333
	mov [esp+0x8], eax
	mov [esp+0x4], eax
	mov dword [esp], _cstring_lowammowarningno
	call _Z18Dvar_RegisterColorPKcfffftS0_
	mov [lowAmmoWarningNoReloadColor1], eax
	mov dword [esp+0x18], _cstring_lowammowarningco2
	mov dword [esp+0x14], 0x0
	mov [esp+0x10], esi
	mov [esp+0xc], ebx
	mov [esp+0x8], esi
	mov [esp+0x4], esi
	mov dword [esp], _cstring_lowammowarningno1
	call _Z18Dvar_RegisterColorPKcfffftS0_
	mov [lowAmmoWarningNoReloadColor2], eax
	mov dword [esp+0x18], _cstring_like_lowammowarn1
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x3f4ccccd
	mov [esp+0xc], ebx
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x3f4ccccd
	mov dword [esp], _cstring_lowammowarningno2
	call _Z18Dvar_RegisterColorPKcfffftS0_
	mov [lowAmmoWarningNoAmmoColor1], eax
	mov dword [esp+0x18], _cstring_lowammowarningco3
	mov dword [esp+0x14], 0x0
	mov [esp+0x10], esi
	mov [esp+0xc], ebx
	mov [esp+0x8], ebx
	mov [esp+0x4], esi
	mov dword [esp], _cstring_lowammowarningno3
	call _Z18Dvar_RegisterColorPKcfffftS0_
	mov [lowAmmoWarningNoAmmoColor2], eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	add [eax], al


;CG_DrawPlayerActionSlotDpad(int, rectDef_s const*, float const*, Material*)
_Z27CG_DrawPlayerActionSlotDpadiPK9rectDef_sPKfP8Material:
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
	jz _Z27CG_DrawPlayerActionSlotDpadiPK9rectDef_sPKfP8Material_10
	cmp edx, 0x3
	jz _Z27CG_DrawPlayerActionSlotDpadiPK9rectDef_sPKfP8Material_20
	cmp edx, 0x1
	jz _Z27CG_DrawPlayerActionSlotDpadiPK9rectDef_sPKfP8Material_30
_Z27CG_DrawPlayerActionSlotDpadiPK9rectDef_sPKfP8Material_270:
	mov edx, [edi+0x46740]
	cmp edx, 0x2
	jz _Z27CG_DrawPlayerActionSlotDpadiPK9rectDef_sPKfP8Material_40
	cmp edx, 0x3
	jz _Z27CG_DrawPlayerActionSlotDpadiPK9rectDef_sPKfP8Material_20
	cmp edx, 0x1
	jz _Z27CG_DrawPlayerActionSlotDpadiPK9rectDef_sPKfP8Material_50
_Z27CG_DrawPlayerActionSlotDpadiPK9rectDef_sPKfP8Material_280:
	mov edx, [edi+0x46744]
	cmp edx, 0x2
	jz _Z27CG_DrawPlayerActionSlotDpadiPK9rectDef_sPKfP8Material_60
	cmp edx, 0x3
	jz _Z27CG_DrawPlayerActionSlotDpadiPK9rectDef_sPKfP8Material_20
	cmp edx, 0x1
	jz _Z27CG_DrawPlayerActionSlotDpadiPK9rectDef_sPKfP8Material_70
_Z27CG_DrawPlayerActionSlotDpadiPK9rectDef_sPKfP8Material_300:
	mov edx, [edi+0x46748]
	cmp edx, 0x2
	jz _Z27CG_DrawPlayerActionSlotDpadiPK9rectDef_sPKfP8Material_80
	cmp edx, 0x3
	jz _Z27CG_DrawPlayerActionSlotDpadiPK9rectDef_sPKfP8Material_90
	cmp edx, 0x1
	jz _Z27CG_DrawPlayerActionSlotDpadiPK9rectDef_sPKfP8Material_100
_Z27CG_DrawPlayerActionSlotDpadiPK9rectDef_sPKfP8Material_110:
	add esp, 0x8c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z27CG_DrawPlayerActionSlotDpadiPK9rectDef_sPKfP8Material_100:
	mov ecx, [edi+0x46758]
	test ecx, ecx
	jz _Z27CG_DrawPlayerActionSlotDpadiPK9rectDef_sPKfP8Material_110
	mov eax, ecx
	sar eax, 0x5
	and ecx, 0x1f
	shl edx, cl
	test [edi+eax*4+0x46698], edx
	jz _Z27CG_DrawPlayerActionSlotDpadiPK9rectDef_sPKfP8Material_110
_Z27CG_DrawPlayerActionSlotDpadiPK9rectDef_sPKfP8Material_90:
	mov edi, cgArray
_Z27CG_DrawPlayerActionSlotDpadiPK9rectDef_sPKfP8Material_20:
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
	js _Z27CG_DrawPlayerActionSlotDpadiPK9rectDef_sPKfP8Material_120
	mov ebx, edi
	mov esi, cgArray
_Z27CG_DrawPlayerActionSlotDpadiPK9rectDef_sPKfP8Material_160:
	mov eax, [ebx+0x4673c]
	cmp eax, 0x2
	jz _Z27CG_DrawPlayerActionSlotDpadiPK9rectDef_sPKfP8Material_130
	cmp eax, 0x3
	jz _Z27CG_DrawPlayerActionSlotDpadiPK9rectDef_sPKfP8Material_140
	sub eax, 0x1
	jz _Z27CG_DrawPlayerActionSlotDpadiPK9rectDef_sPKfP8Material_150
_Z27CG_DrawPlayerActionSlotDpadiPK9rectDef_sPKfP8Material_260:
	add ebx, 0x4
	mov edi, esi
	lea eax, [esi+0x10]
	cmp ebx, eax
	jnz _Z27CG_DrawPlayerActionSlotDpadiPK9rectDef_sPKfP8Material_160
	cmp byte [esi+0x4614c], 0x0
	js _Z27CG_DrawPlayerActionSlotDpadiPK9rectDef_sPKfP8Material_120
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
	call _Z14CG_FadeHudMenuiPK6dvar_sii
	fstp dword [ebp-0x4c]
	movss xmm0, dword [ebp-0x4c]
	pxor xmm1, xmm1
	jmp _Z27CG_DrawPlayerActionSlotDpadiPK9rectDef_sPKfP8Material_170
_Z27CG_DrawPlayerActionSlotDpadiPK9rectDef_sPKfP8Material_120:
	pxor xmm1, xmm1
	movaps xmm0, xmm1
_Z27CG_DrawPlayerActionSlotDpadiPK9rectDef_sPKfP8Material_170:
	mulss xmm0, [ebp-0x38]
	movss [ebp-0x1c], xmm0
	ucomiss xmm0, xmm1
	jp _Z27CG_DrawPlayerActionSlotDpadiPK9rectDef_sPKfP8Material_180
	jz _Z27CG_DrawPlayerActionSlotDpadiPK9rectDef_sPKfP8Material_110
_Z27CG_DrawPlayerActionSlotDpadiPK9rectDef_sPKfP8Material_180:
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
	call _Z17CL_DrawStretchPicPK15ScreenPlacementffffiiffffPKfP8Material
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
	jz _Z27CG_DrawPlayerActionSlotDpadiPK9rectDef_sPKfP8Material_190
_Z27CG_DrawPlayerActionSlotDpadiPK9rectDef_sPKfP8Material_220:
	cmp eax, 0x3
	jz _Z27CG_DrawPlayerActionSlotDpadiPK9rectDef_sPKfP8Material_200
	sub eax, 0x1
	jz _Z27CG_DrawPlayerActionSlotDpadiPK9rectDef_sPKfP8Material_210
_Z27CG_DrawPlayerActionSlotDpadiPK9rectDef_sPKfP8Material_230:
	add edi, 0x1
	add esi, 0x4
	add ebx, 0x10
	add dword [ebp-0x30], 0x8
	add dword [ebp-0x2c], 0x8
	cmp edi, 0x4
	jz _Z27CG_DrawPlayerActionSlotDpadiPK9rectDef_sPKfP8Material_110
	mov eax, [esi+0x4673c]
	cmp eax, 0x2
	jnz _Z27CG_DrawPlayerActionSlotDpadiPK9rectDef_sPKfP8Material_220
_Z27CG_DrawPlayerActionSlotDpadiPK9rectDef_sPKfP8Material_190:
	mov edx, [ebp-0x40]
	mov eax, [edx+0x5036c]
	mov [esp], eax
	call _Z15BG_GetWeaponDefj
	cmp dword [eax+0x13c], 0x3
	jnz _Z27CG_DrawPlayerActionSlotDpadiPK9rectDef_sPKfP8Material_230
_Z27CG_DrawPlayerActionSlotDpadiPK9rectDef_sPKfP8Material_250:
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
	jbe _Z27CG_DrawPlayerActionSlotDpadiPK9rectDef_sPKfP8Material_240
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
	call _Z23CL_DrawStretchPicFlipSTPK15ScreenPlacementffffiiffffPKfP8Material
	jmp _Z27CG_DrawPlayerActionSlotDpadiPK9rectDef_sPKfP8Material_230
_Z27CG_DrawPlayerActionSlotDpadiPK9rectDef_sPKfP8Material_200:
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z28CG_LookingThroughNightVisioni
	test al, al
	jnz _Z27CG_DrawPlayerActionSlotDpadiPK9rectDef_sPKfP8Material_250
	jmp _Z27CG_DrawPlayerActionSlotDpadiPK9rectDef_sPKfP8Material_230
_Z27CG_DrawPlayerActionSlotDpadiPK9rectDef_sPKfP8Material_130:
	mov eax, [edi+0x5036c]
	mov [esp], eax
	call _Z15BG_GetWeaponDefj
	cmp dword [eax+0x13c], 0x3
	jnz _Z27CG_DrawPlayerActionSlotDpadiPK9rectDef_sPKfP8Material_260
_Z27CG_DrawPlayerActionSlotDpadiPK9rectDef_sPKfP8Material_290:
	movss xmm0, dword [_float_1_00000000]
	pxor xmm1, xmm1
	jmp _Z27CG_DrawPlayerActionSlotDpadiPK9rectDef_sPKfP8Material_170
_Z27CG_DrawPlayerActionSlotDpadiPK9rectDef_sPKfP8Material_10:
	mov [esp+0x4], edi
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z23CG_AltWeaponToggleIndexiPK4cg_s
	test eax, eax
	jnz _Z27CG_DrawPlayerActionSlotDpadiPK9rectDef_sPKfP8Material_20
	jmp _Z27CG_DrawPlayerActionSlotDpadiPK9rectDef_sPKfP8Material_270
_Z27CG_DrawPlayerActionSlotDpadiPK9rectDef_sPKfP8Material_210:
	mov edx, [ebp-0x40]
	mov eax, [edx+0x5036c]
	cmp eax, [esi+0x4674c]
	jnz _Z27CG_DrawPlayerActionSlotDpadiPK9rectDef_sPKfP8Material_230
	jmp _Z27CG_DrawPlayerActionSlotDpadiPK9rectDef_sPKfP8Material_250
_Z27CG_DrawPlayerActionSlotDpadiPK9rectDef_sPKfP8Material_140:
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z28CG_LookingThroughNightVisioni
	test al, al
	jz _Z27CG_DrawPlayerActionSlotDpadiPK9rectDef_sPKfP8Material_260
	movss xmm0, dword [_float_1_00000000]
	pxor xmm1, xmm1
	jmp _Z27CG_DrawPlayerActionSlotDpadiPK9rectDef_sPKfP8Material_170
_Z27CG_DrawPlayerActionSlotDpadiPK9rectDef_sPKfP8Material_40:
	mov [esp+0x4], edi
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z23CG_AltWeaponToggleIndexiPK4cg_s
	test eax, eax
	jnz _Z27CG_DrawPlayerActionSlotDpadiPK9rectDef_sPKfP8Material_90
	mov edi, cgArray
	jmp _Z27CG_DrawPlayerActionSlotDpadiPK9rectDef_sPKfP8Material_280
_Z27CG_DrawPlayerActionSlotDpadiPK9rectDef_sPKfP8Material_30:
	mov ecx, [edi+0x4674c]
	test ecx, ecx
	jz _Z27CG_DrawPlayerActionSlotDpadiPK9rectDef_sPKfP8Material_270
	mov eax, ecx
	sar eax, 0x5
	and ecx, 0x1f
	shl edx, cl
	test [edi+eax*4+0x46698], edx
	jnz _Z27CG_DrawPlayerActionSlotDpadiPK9rectDef_sPKfP8Material_20
	jmp _Z27CG_DrawPlayerActionSlotDpadiPK9rectDef_sPKfP8Material_270
_Z27CG_DrawPlayerActionSlotDpadiPK9rectDef_sPKfP8Material_150:
	mov eax, [edi+0x5036c]
	cmp eax, [ebx+0x4674c]
	jnz _Z27CG_DrawPlayerActionSlotDpadiPK9rectDef_sPKfP8Material_260
	jmp _Z27CG_DrawPlayerActionSlotDpadiPK9rectDef_sPKfP8Material_290
_Z27CG_DrawPlayerActionSlotDpadiPK9rectDef_sPKfP8Material_60:
	mov [esp+0x4], edi
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z23CG_AltWeaponToggleIndexiPK4cg_s
	test eax, eax
	jnz _Z27CG_DrawPlayerActionSlotDpadiPK9rectDef_sPKfP8Material_90
	mov edi, cgArray
	jmp _Z27CG_DrawPlayerActionSlotDpadiPK9rectDef_sPKfP8Material_300
_Z27CG_DrawPlayerActionSlotDpadiPK9rectDef_sPKfP8Material_50:
	mov ecx, [edi+0x46750]
	test ecx, ecx
	jz _Z27CG_DrawPlayerActionSlotDpadiPK9rectDef_sPKfP8Material_280
	mov eax, ecx
	sar eax, 0x5
	and ecx, 0x1f
	shl edx, cl
	test [edi+eax*4+0x46698], edx
	jnz _Z27CG_DrawPlayerActionSlotDpadiPK9rectDef_sPKfP8Material_20
	jmp _Z27CG_DrawPlayerActionSlotDpadiPK9rectDef_sPKfP8Material_280
_Z27CG_DrawPlayerActionSlotDpadiPK9rectDef_sPKfP8Material_240:
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
	call _Z17CL_DrawStretchPicPK15ScreenPlacementffffiiffffPKfP8Material
	jmp _Z27CG_DrawPlayerActionSlotDpadiPK9rectDef_sPKfP8Material_230
_Z27CG_DrawPlayerActionSlotDpadiPK9rectDef_sPKfP8Material_80:
	mov [esp+0x4], edi
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z23CG_AltWeaponToggleIndexiPK4cg_s
	test eax, eax
	jnz _Z27CG_DrawPlayerActionSlotDpadiPK9rectDef_sPKfP8Material_90
	jmp _Z27CG_DrawPlayerActionSlotDpadiPK9rectDef_sPKfP8Material_110
_Z27CG_DrawPlayerActionSlotDpadiPK9rectDef_sPKfP8Material_70:
	mov ecx, [edi+0x46754]
	test ecx, ecx
	jz _Z27CG_DrawPlayerActionSlotDpadiPK9rectDef_sPKfP8Material_300
	mov eax, ecx
	sar eax, 0x5
	and ecx, 0x1f
	shl edx, cl
	test [edi+eax*4+0x46698], edx
	jnz _Z27CG_DrawPlayerActionSlotDpadiPK9rectDef_sPKfP8Material_20
	jmp _Z27CG_DrawPlayerActionSlotDpadiPK9rectDef_sPKfP8Material_300
	nop


;CG_DrawPlayerWeaponAmmoStock(int, rectDef_s const*, Font_s*, float, float*, Material*, int)
_Z28CG_DrawPlayerWeaponAmmoStockiPK9rectDef_sP6Font_sfPfP8Materiali:
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
	jns _Z28CG_DrawPlayerWeaponAmmoStockiPK9rectDef_sP6Font_sfPfP8Materiali_10
	pxor xmm1, xmm1
	movaps xmm0, xmm1
_Z28CG_DrawPlayerWeaponAmmoStockiPK9rectDef_sP6Font_sfPfP8Materiali_80:
	mulss xmm0, [ebp-0x6c]
	movss [ebp-0x1c], xmm0
	ucomiss xmm0, xmm1
	jp _Z28CG_DrawPlayerWeaponAmmoStockiPK9rectDef_sP6Font_sfPfP8Materiali_20
	jnz _Z28CG_DrawPlayerWeaponAmmoStockiPK9rectDef_sP6Font_sfPfP8Materiali_20
_Z28CG_DrawPlayerWeaponAmmoStockiPK9rectDef_sP6Font_sfPfP8Materiali_40:
	add esp, 0xac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z28CG_DrawPlayerWeaponAmmoStockiPK9rectDef_sP6Font_sfPfP8Materiali_20:
	mov esi, cgArray
	mov ebx, [esi+0x5036c]
	call _Z16BG_GetNumWeaponsv
	cmp ebx, eax
	jae _Z28CG_DrawPlayerWeaponAmmoStockiPK9rectDef_sP6Font_sfPfP8Materiali_30
	mov ebx, [esi+0x5036c]
	mov edx, ebx
	sar edx, 0x5
	mov ecx, ebx
	and ecx, 0x1f
	mov eax, 0x1
	shl eax, cl
	test [esi+edx*4+0x46698], eax
	jz _Z28CG_DrawPlayerWeaponAmmoStockiPK9rectDef_sP6Font_sfPfP8Materiali_30
_Z28CG_DrawPlayerWeaponAmmoStockiPK9rectDef_sP6Font_sfPfP8Materiali_70:
	test ebx, ebx
	jz _Z28CG_DrawPlayerWeaponAmmoStockiPK9rectDef_sP6Font_sfPfP8Materiali_40
	mov [esp], ebx
	call _Z15BG_GetWeaponDefj
	mov esi, eax
	mov eax, [eax+0x31c]
	test eax, eax
	jz _Z28CG_DrawPlayerWeaponAmmoStockiPK9rectDef_sP6Font_sfPfP8Materiali_40
	cmp eax, 0x6
	jz _Z28CG_DrawPlayerWeaponAmmoStockiPK9rectDef_sP6Font_sfPfP8Materiali_50
	mov esi, ebx
_Z28CG_DrawPlayerWeaponAmmoStockiPK9rectDef_sP6Font_sfPfP8Materiali_110:
	test esi, esi
	jz _Z28CG_DrawPlayerWeaponAmmoStockiPK9rectDef_sP6Font_sfPfP8Materiali_40
	mov [esp], esi
	call _Z15BG_GetWeaponDefj
	mov ebx, [eax+0x50c]
	test ebx, ebx
	jnz _Z28CG_DrawPlayerWeaponAmmoStockiPK9rectDef_sP6Font_sfPfP8Materiali_40
	mov [esp+0x4], esi
	mov ebx, cgArray
	lea eax, [ebx+0x4613c]
	mov [esp], eax
	call _Z22BG_GetTotalAmmoReservePK13playerState_sj
	mov edi, eax
	mov [esp+0x4], esi
	mov [esp], ebx
	call _Z32CG_CheckPlayerForLowAmmoSpecificPK4cg_sj
	test al, al
	jz _Z28CG_DrawPlayerWeaponAmmoStockiPK9rectDef_sP6Font_sfPfP8Materiali_60
	mov dword [ebp-0x28], 0x3f800000
	mov eax, 0x3e99999a
	mov [ebp-0x24], eax
	mov [ebp-0x20], eax
_Z28CG_DrawPlayerWeaponAmmoStockiPK9rectDef_sP6Font_sfPfP8Materiali_60:
	mov [esp+0xc], edi
	mov dword [esp+0x8], _cstring_3i
	mov dword [esp+0x4], 0x40
	lea ebx, [ebp-0x68]
	mov [esp], ebx
	call _Z11Com_sprintfPciPKcz
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
	call _Z11UI_DrawTextPK15ScreenPlacementPKciP6Font_sffiifPKfi
	jmp _Z28CG_DrawPlayerWeaponAmmoStockiPK9rectDef_sP6Font_sfPfP8Materiali_40
_Z28CG_DrawPlayerWeaponAmmoStockiPK9rectDef_sP6Font_sfPfP8Materiali_30:
	mov eax, cgArray
	mov ebx, [eax+0x46224]
	jmp _Z28CG_DrawPlayerWeaponAmmoStockiPK9rectDef_sP6Font_sfPfP8Materiali_70
_Z28CG_DrawPlayerWeaponAmmoStockiPK9rectDef_sP6Font_sfPfP8Materiali_10:
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
	call _Z14CG_FadeHudMenuiPK6dvar_sii
	fstp dword [ebp-0x7c]
	movss xmm0, dword [ebp-0x7c]
	pxor xmm1, xmm1
	jmp _Z28CG_DrawPlayerWeaponAmmoStockiPK9rectDef_sP6Font_sfPfP8Materiali_80
_Z28CG_DrawPlayerWeaponAmmoStockiPK9rectDef_sP6Font_sfPfP8Materiali_50:
	mov eax, [esi+0x540]
	test eax, eax
	jnz _Z28CG_DrawPlayerWeaponAmmoStockiPK9rectDef_sP6Font_sfPfP8Materiali_90
	mov eax, [esi]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_weapon_s_ammocou
	mov dword [esp], 0x11
	call _Z16Com_PrintWarningiPKcz
	jmp _Z28CG_DrawPlayerWeaponAmmoStockiPK9rectDef_sP6Font_sfPfP8Materiali_40
_Z28CG_DrawPlayerWeaponAmmoStockiPK9rectDef_sP6Font_sfPfP8Materiali_90:
	mov [esp], eax
	call _Z15BG_GetWeaponDefj
	cmp dword [eax+0x31c], 0x6
	jz _Z28CG_DrawPlayerWeaponAmmoStockiPK9rectDef_sP6Font_sfPfP8Materiali_100
	mov esi, [esi+0x540]
	jmp _Z28CG_DrawPlayerWeaponAmmoStockiPK9rectDef_sP6Font_sfPfP8Materiali_110
_Z28CG_DrawPlayerWeaponAmmoStockiPK9rectDef_sP6Font_sfPfP8Materiali_100:
	mov eax, [eax]
	mov [esp+0xc], eax
	mov eax, [esi]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_weapon_s_and_its
	mov dword [esp], 0x11
	call _Z16Com_PrintWarningiPKcz
	jmp _Z28CG_DrawPlayerWeaponAmmoStockiPK9rectDef_sP6Font_sfPfP8Materiali_40
	nop


;CG_DrawPlayerWeaponBackground(int, rectDef_s const*, float const*, Material*)
_Z29CG_DrawPlayerWeaponBackgroundiPK9rectDef_sPKfP8Material:
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
	jns _Z29CG_DrawPlayerWeaponBackgroundiPK9rectDef_sPKfP8Material_10
	pxor xmm1, xmm1
	movaps xmm0, xmm1
_Z29CG_DrawPlayerWeaponBackgroundiPK9rectDef_sPKfP8Material_30:
	mulss xmm0, [ebp-0x2c]
	movss [ebp-0x1c], xmm0
	ucomiss xmm0, xmm1
	jp _Z29CG_DrawPlayerWeaponBackgroundiPK9rectDef_sPKfP8Material_20
	jnz _Z29CG_DrawPlayerWeaponBackgroundiPK9rectDef_sPKfP8Material_20
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z29CG_DrawPlayerWeaponBackgroundiPK9rectDef_sPKfP8Material_20:
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
	call _Z17CL_DrawStretchPicPK15ScreenPlacementffffiiffffPKfP8Material
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z29CG_DrawPlayerWeaponBackgroundiPK9rectDef_sPKfP8Material_10:
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
	call _Z14CG_FadeHudMenuiPK6dvar_sii
	fstp dword [ebp-0x3c]
	movss xmm0, dword [ebp-0x3c]
	pxor xmm1, xmm1
	jmp _Z29CG_DrawPlayerWeaponBackgroundiPK9rectDef_sPKfP8Material_30


;CG_DrawPlayerWeaponLowAmmoWarning(int, rectDef_s const*, Font_s*, float, int, float, float, int, Material*)
_Z33CG_DrawPlayerWeaponLowAmmoWarningiPK9rectDef_sP6Font_sfiffiP8Material:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x10c
	mov esi, cgArray
	mov eax, [esi+0x46140]
	cmp eax, 0x6
	jg _Z33CG_DrawPlayerWeaponLowAmmoWarningiPK9rectDef_sP6Font_sfiffiP8Material_10
	cmp eax, 0x4
	jz _Z33CG_DrawPlayerWeaponLowAmmoWarningiPK9rectDef_sP6Font_sfiffiP8Material_10
	test dword [esi+0x461ec], 0x300
	jnz _Z33CG_DrawPlayerWeaponLowAmmoWarningiPK9rectDef_sP6Font_sfiffiP8Material_10
	mov eax, [esi+0x46228]
	cmp eax, 0x7
	jz _Z33CG_DrawPlayerWeaponLowAmmoWarningiPK9rectDef_sP6Font_sfiffiP8Material_10
	cmp eax, 0x9
	jz _Z33CG_DrawPlayerWeaponLowAmmoWarningiPK9rectDef_sP6Font_sfiffiP8Material_10
	cmp eax, 0xb
	jz _Z33CG_DrawPlayerWeaponLowAmmoWarningiPK9rectDef_sP6Font_sfiffiP8Material_10
	cmp eax, 0xa
	jz _Z33CG_DrawPlayerWeaponLowAmmoWarningiPK9rectDef_sP6Font_sfiffiP8Material_10
	cmp eax, 0x8
	jz _Z33CG_DrawPlayerWeaponLowAmmoWarningiPK9rectDef_sP6Font_sfiffiP8Material_10
	mov ecx, [esi+0x46224]
	test ecx, ecx
	jz _Z33CG_DrawPlayerWeaponLowAmmoWarningiPK9rectDef_sP6Font_sfiffiP8Material_10
	cmp byte [esi+0x4614c], 0x0
	jns _Z33CG_DrawPlayerWeaponLowAmmoWarningiPK9rectDef_sP6Font_sfiffiP8Material_20
_Z33CG_DrawPlayerWeaponLowAmmoWarningiPK9rectDef_sP6Font_sfiffiP8Material_10:
	add esp, 0x10c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z33CG_DrawPlayerWeaponLowAmmoWarningiPK9rectDef_sP6Font_sfiffiP8Material_20:
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
	call _Z14CG_FadeHudMenuiPK6dvar_sii
	fstp dword [ebp-0x5c]
	movss xmm0, dword [ebp-0x5c]
	ucomiss xmm0, [_float_0_00000000]
	jp _Z33CG_DrawPlayerWeaponLowAmmoWarningiPK9rectDef_sP6Font_sfiffiP8Material_30
	jz _Z33CG_DrawPlayerWeaponLowAmmoWarningiPK9rectDef_sP6Font_sfiffiP8Material_10
_Z33CG_DrawPlayerWeaponLowAmmoWarningiPK9rectDef_sP6Font_sfiffiP8Material_30:
	mov ebx, [esi+0x5036c]
	call _Z16BG_GetNumWeaponsv
	cmp ebx, eax
	jae _Z33CG_DrawPlayerWeaponLowAmmoWarningiPK9rectDef_sP6Font_sfiffiP8Material_40
	mov ebx, [esi+0x5036c]
	mov edx, ebx
	sar edx, 0x5
	mov ecx, ebx
	and ecx, 0x1f
	mov eax, 0x1
	shl eax, cl
	test [esi+edx*4+0x46698], eax
	jz _Z33CG_DrawPlayerWeaponLowAmmoWarningiPK9rectDef_sP6Font_sfiffiP8Material_40
_Z33CG_DrawPlayerWeaponLowAmmoWarningiPK9rectDef_sP6Font_sfiffiP8Material_70:
	mov [esp+0x4], ebx
	mov [esp], esi
	call _Z32CG_CheckPlayerForLowClipSpecificPK4cg_sj
	test al, al
	jz _Z33CG_DrawPlayerWeaponLowAmmoWarningiPK9rectDef_sP6Font_sfiffiP8Material_10
	mov [esp], ebx
	call _Z16BG_AmmoForWeaponi
	mov edi, [esi+eax*4+0x46298]
	mov [esp], ebx
	call _Z16BG_ClipForWeaponi
	mov esi, [esi+eax*4+0x46498]
	mov [esp], ebx
	call _Z15BG_GetWeaponDefj
	mov edx, [eax+0x31c]
	test edx, edx
	jz _Z33CG_DrawPlayerWeaponLowAmmoWarningiPK9rectDef_sP6Font_sfiffiP8Material_10
	test edi, edi
	jle _Z33CG_DrawPlayerWeaponLowAmmoWarningiPK9rectDef_sP6Font_sfiffiP8Material_50
	cmp dword [eax+0x338], 0x1
	jz _Z33CG_DrawPlayerWeaponLowAmmoWarningiPK9rectDef_sP6Font_sfiffiP8Material_10
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
_Z33CG_DrawPlayerWeaponLowAmmoWarningiPK9rectDef_sP6Font_sfiffiP8Material_100:
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
	jz _Z33CG_DrawPlayerWeaponLowAmmoWarningiPK9rectDef_sP6Font_sfiffiP8Material_60
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
	call _Z17CL_DrawStretchPicPK15ScreenPlacementffffiiffffPKfP8Material
_Z33CG_DrawPlayerWeaponLowAmmoWarningiPK9rectDef_sP6Font_sfiffiP8Material_80:
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _cstring_low_ammo_warning
	mov [esp], ebx
	call _Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t
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
	call _Z18UI_DrawWrappedTextPK15ScreenPlacementPKcPK9rectDef_sP6Font_sfffPKfiiPS4_
	jmp _Z33CG_DrawPlayerWeaponLowAmmoWarningiPK9rectDef_sP6Font_sfiffiP8Material_10
_Z33CG_DrawPlayerWeaponLowAmmoWarningiPK9rectDef_sP6Font_sfiffiP8Material_40:
	mov esi, cgArray
	mov ebx, [esi+0x46224]
	jmp _Z33CG_DrawPlayerWeaponLowAmmoWarningiPK9rectDef_sP6Font_sfiffiP8Material_70
_Z33CG_DrawPlayerWeaponLowAmmoWarningiPK9rectDef_sP6Font_sfiffiP8Material_60:
	lea esi, [ebp-0x28]
	jmp _Z33CG_DrawPlayerWeaponLowAmmoWarningiPK9rectDef_sP6Font_sfiffiP8Material_80
_Z33CG_DrawPlayerWeaponLowAmmoWarningiPK9rectDef_sP6Font_sfiffiP8Material_50:
	test esi, esi
	jnz _Z33CG_DrawPlayerWeaponLowAmmoWarningiPK9rectDef_sP6Font_sfiffiP8Material_90
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
	jmp _Z33CG_DrawPlayerWeaponLowAmmoWarningiPK9rectDef_sP6Font_sfiffiP8Material_100
_Z33CG_DrawPlayerWeaponLowAmmoWarningiPK9rectDef_sP6Font_sfiffiP8Material_90:
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
	jmp _Z33CG_DrawPlayerWeaponLowAmmoWarningiPK9rectDef_sP6Font_sfiffiP8Material_100


;CG_DrawPlayerWeaponAmmoClipGraphic(int, rectDef_s const*, float const*)
_Z34CG_DrawPlayerWeaponAmmoClipGraphiciPK9rectDef_sPKf:
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
	jns _Z34CG_DrawPlayerWeaponAmmoClipGraphiciPK9rectDef_sPKf_10
	pxor xmm1, xmm1
	movaps xmm0, xmm1
_Z34CG_DrawPlayerWeaponAmmoClipGraphiciPK9rectDef_sPKf_60:
	mulss xmm0, [ebp-0x3c]
	movss [ebp-0x2c], xmm0
	ucomiss xmm0, xmm1
	jp _Z34CG_DrawPlayerWeaponAmmoClipGraphiciPK9rectDef_sPKf_20
	jnz _Z34CG_DrawPlayerWeaponAmmoClipGraphiciPK9rectDef_sPKf_20
_Z34CG_DrawPlayerWeaponAmmoClipGraphiciPK9rectDef_sPKf_40:
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z34CG_DrawPlayerWeaponAmmoClipGraphiciPK9rectDef_sPKf_20:
	mov esi, cgArray
	mov ebx, [esi+0x5036c]
	call _Z16BG_GetNumWeaponsv
	cmp ebx, eax
	jae _Z34CG_DrawPlayerWeaponAmmoClipGraphiciPK9rectDef_sPKf_30
	mov edi, [esi+0x5036c]
	mov edx, edi
	sar edx, 0x5
	mov ecx, edi
	and ecx, 0x1f
	mov eax, 0x1
	shl eax, cl
	test [esi+edx*4+0x46698], eax
	jz _Z34CG_DrawPlayerWeaponAmmoClipGraphiciPK9rectDef_sPKf_30
_Z34CG_DrawPlayerWeaponAmmoClipGraphiciPK9rectDef_sPKf_50:
	test edi, edi
	jz _Z34CG_DrawPlayerWeaponAmmoClipGraphiciPK9rectDef_sPKf_40
	mov [esp], edi
	call _Z15BG_GetWeaponDefj
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
	call _Z18ScrPlace_ApplyRectPK15ScreenPlacementPfS2_S2_S2_ii
	mov eax, cgArray
	lea edx, [ebp-0x38]
	mov [esp+0x4], edx
	mov [esp], esi
	mov ecx, edi
	mov edx, ebx
	call _Z12DrawClipAmmoP4cg_sPKfiPK9WeaponDefPf
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z34CG_DrawPlayerWeaponAmmoClipGraphiciPK9rectDef_sPKf_30:
	mov eax, cgArray
	mov edi, [eax+0x46224]
	jmp _Z34CG_DrawPlayerWeaponAmmoClipGraphiciPK9rectDef_sPKf_50
_Z34CG_DrawPlayerWeaponAmmoClipGraphiciPK9rectDef_sPKf_10:
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
	call _Z14CG_FadeHudMenuiPK6dvar_sii
	fstp dword [ebp-0x4c]
	movss xmm0, dword [ebp-0x4c]
	pxor xmm1, xmm1
	jmp _Z34CG_DrawPlayerWeaponAmmoClipGraphiciPK9rectDef_sPKf_60
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
_ZZ20DrawClipAmmoMagazineP4cg_sPKfjPK9WeaponDefPfE14TEST_bullet_wh: dd 0x40800000, 0x41000000


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

