;Imports of cg_draw_indicators:
	extern _Z15BG_GetWeaponDefj
	extern bg_maxGrenadeIndicatorSpeed
	extern cgMedia
	extern cg_hudGrenadeIconEnabledFlash
	extern _Z22CL_GetScreenDimensionsPiS_Pf
	extern _Z19UI_FillRectPhysicalffffPKf
	extern cgArray
	extern _Z21CG_GetWeapReticleZoomPK4cg_sPf
	extern cg_hudGrenadeIconInScope
	extern _Z24CG_CalcCrosshairPositionPK4cg_sPfS2_
	extern scrPlaceView
	extern _Z15ScrPlace_ApplyXPK15ScreenPlacementfi
	extern _Z15ScrPlace_ApplyYPK15ScreenPlacementfi
	extern colorWhite
	extern cg_hudGrenadePointerPulseMin
	extern cg_hudGrenadePointerPulseMax
	extern cg_hudGrenadePointerPulseFreq
	extern sinf
	extern cg_hudGrenadePointerWidth
	extern cg_hudGrenadePointerHeight
	extern cg_hudGrenadeIconOffset
	extern cg_hudGrenadePointerPivot
	extern _Z8vectoyawPKf
	extern _Z17AngleNormalize360f
	extern cosf
	extern _Z21CG_DrawRotatedQuadPicPK15ScreenPlacementffPA2_KffPS2_P8Material
	extern cg_hudGrenadeIconWidth
	extern cg_hudGrenadeIconHeight
	extern _Z19R_AddCmdDrawQuadPicPA2_KfPS_P8Material
	extern cg_hudGrenadeIconMaxRangeFlash
	extern cg_hudGrenadeIconMaxHeight
	extern cg_hudGrenadeIconMaxRangeFrag
	extern _Z14CG_Flashbangedi
	extern cg_hudDamageIconInScope
	extern cg_hudDamageIconWidth
	extern cg_hudDamageIconOffset
	extern cg_hudDamageIconHeight

;Exports of cg_draw_indicators:
	global g_hudGrenades
	global g_hudGrenadeCount
	global _Z16CG_AddHudGrenadePK4cg_sPK9centity_s
	global _Z18CG_DrawFlashDamagePK4cg_s
	global _Z19CG_ClearHudGrenadesv
	global _Z24CG_DrawGrenadeIndicatorsi
	global _Z30CG_AddHudGrenade_PositionCheckPK4cg_sPK9centity_sP9WeaponDef
	global _Z32CG_DrawDamageDirectionIndicatorsi


SECTION .text


;CG_AddHudGrenade(cg_s const*, centity_s const*)
_Z16CG_AddHudGrenadePK4cg_sPK9centity_s:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edi, [ebp+0xc]
	lea esi, [edi+0xcc]
	mov eax, [esi+0xc4]
	mov [esp], eax
	call _Z15BG_GetWeaponDefj
	cmp dword [eax+0x12c], 0x1
	jz _Z16CG_AddHudGrenadePK4cg_sPK9centity_s_10
_Z16CG_AddHudGrenadePK4cg_sPK9centity_s_30:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z16CG_AddHudGrenadePK4cg_sPK9centity_s_10:
	mov ebx, [eax+0x588]
	test ebx, ebx
	jz _Z16CG_AddHudGrenadePK4cg_sPK9centity_s_20
	cmp ebx, 0x2
	jz _Z16CG_AddHudGrenadePK4cg_sPK9centity_s_20
	cmp ebx, 0x6
	jnz _Z16CG_AddHudGrenadePK4cg_sPK9centity_s_30
_Z16CG_AddHudGrenadePK4cg_sPK9centity_s_20:
	mov ecx, [eax+0x5ac]
	test ecx, ecx
	jz _Z16CG_AddHudGrenadePK4cg_sPK9centity_s_30
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z30CG_AddHudGrenade_PositionCheckPK4cg_sPK9centity_sP9WeaponDef
	test al, al
	jz _Z16CG_AddHudGrenadePK4cg_sPK9centity_s_30
	test ebx, ebx
	jz _Z16CG_AddHudGrenadePK4cg_sPK9centity_s_40
	cmp ebx, 0x6
	jz _Z16CG_AddHudGrenadePK4cg_sPK9centity_s_40
	movss xmm3, dword [_float_1_00000000]
	jmp _Z16CG_AddHudGrenadePK4cg_sPK9centity_s_50
_Z16CG_AddHudGrenadePK4cg_sPK9centity_s_40:
	mov eax, bg_maxGrenadeIndicatorSpeed
	mov eax, [eax]
	movss xmm3, dword [eax+0xc]
	mulss xmm3, xmm3
_Z16CG_AddHudGrenadePK4cg_sPK9centity_s_50:
	lea eax, [esi+0x24]
	movss xmm0, dword [esi+0x24]
	movss xmm1, dword [eax+0x4]
	movss xmm2, dword [eax+0x8]
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	ucomiss xmm0, xmm3
	ja _Z16CG_AddHudGrenadePK4cg_sPK9centity_s_30
	mov edx, [g_hudGrenadeCount]
	mov [ebp-0x1c], edx
	cmp edx, 0x1f
	ja _Z16CG_AddHudGrenadePK4cg_sPK9centity_s_30
	test ebx, ebx
	jnz _Z16CG_AddHudGrenadePK4cg_sPK9centity_s_60
_Z16CG_AddHudGrenadePK4cg_sPK9centity_s_90:
	mov edx, [ebp+0x8]
	mov eax, [edx+0x24]
	add eax, 0xc
	cmp dword [eax+0x5a0], 0x4
	jle _Z16CG_AddHudGrenadePK4cg_sPK9centity_s_70
	mov eax, [eax+0x5a8]
	cmp eax, [esi]
	jz _Z16CG_AddHudGrenadePK4cg_sPK9centity_s_80
_Z16CG_AddHudGrenadePK4cg_sPK9centity_s_70:
	mov eax, cgMedia
	mov esi, [eax+0x2740]
_Z16CG_AddHudGrenadePK4cg_sPK9centity_s_100:
	mov edx, [ebp-0x1c]
	shl edx, 0x4
	lea ebx, [edx+g_hudGrenades]
	lea ecx, [edi+0x1c]
	mov eax, [edi+0x1c]
	mov [edx+g_hudGrenades], eax
	mov eax, [ecx+0x4]
	mov [ebx+0x4], eax
	mov eax, [ecx+0x8]
	mov [ebx+0x8], eax
	mov [edx+g_hudGrenades+0xc], esi
	mov eax, [ebp-0x1c]
	add eax, 0x1
	mov [g_hudGrenadeCount], eax
	jmp _Z16CG_AddHudGrenadePK4cg_sPK9centity_s_30
_Z16CG_AddHudGrenadePK4cg_sPK9centity_s_60:
	cmp ebx, 0x6
	jz _Z16CG_AddHudGrenadePK4cg_sPK9centity_s_90
	mov eax, cg_hudGrenadeIconEnabledFlash
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z16CG_AddHudGrenadePK4cg_sPK9centity_s_30
	mov eax, cgMedia
	mov esi, [eax+0x2744]
	jmp _Z16CG_AddHudGrenadePK4cg_sPK9centity_s_100
_Z16CG_AddHudGrenadePK4cg_sPK9centity_s_80:
	mov eax, cgMedia
	mov esi, [eax+0x2748]
	jmp _Z16CG_AddHudGrenadePK4cg_sPK9centity_s_100
	nop


;CG_DrawFlashDamage(cg_s const*)
_Z18CG_DrawFlashDamagePK4cg_s:
	push ebp
	mov ebp, esp
	sub esp, 0x48
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x24]
	test eax, eax
	jz _Z18CG_DrawFlashDamagePK4cg_s_10
	mov eax, [ecx+0x503fc]
	mov edx, [ecx+0x46128]
	cmp eax, edx
	jle _Z18CG_DrawFlashDamagePK4cg_s_10
	sub eax, edx
	cvtsi2ss xmm0, eax
	mulss xmm0, [ecx+0x50400]
	divss xmm0, dword [_float_500_00000000]
	andps xmm0, [_data16_7fffffff]
	ucomiss xmm0, [_float_5_00000000]
	jbe _Z18CG_DrawFlashDamagePK4cg_s_20
	movss xmm0, dword [_float_1_00000000]
_Z18CG_DrawFlashDamagePK4cg_s_30:
	mov dword [ebp-0x24], 0x3e4ccccd
	xor eax, eax
	mov [ebp-0x20], eax
	mov [ebp-0x1c], eax
	mulss xmm0, [_float_0_69999999]
	movss [ebp-0x18], xmm0
	lea eax, [ebp-0x14]
	mov [esp+0x8], eax
	lea eax, [ebp-0x10]
	mov [esp+0x4], eax
	lea eax, [ebp-0xc]
	mov [esp], eax
	call _Z22CL_GetScreenDimensionsPiS_Pf
	lea eax, [ebp-0x24]
	mov [esp+0x10], eax
	cvtsi2ss xmm0, dword [ebp-0x10]
	movss xmm1, dword [_float_10_00000000]
	addss xmm0, xmm1
	movss [esp+0xc], xmm0
	cvtsi2ss xmm0, dword [ebp-0xc]
	addss xmm0, xmm1
	movss [esp+0x8], xmm0
	mov eax, 0xc1200000
	mov [esp+0x4], eax
	mov [esp], eax
	call _Z19UI_FillRectPhysicalffffPKf
_Z18CG_DrawFlashDamagePK4cg_s_10:
	leave
	ret
_Z18CG_DrawFlashDamagePK4cg_s_20:
	divss xmm0, dword [_float_5_00000000]
	jmp _Z18CG_DrawFlashDamagePK4cg_s_30
	nop


;CG_ClearHudGrenades()
_Z19CG_ClearHudGrenadesv:
	push ebp
	mov ebp, esp
	mov dword [g_hudGrenadeCount], 0x0
	pop ebp
	ret
	nop


;CG_DrawGrenadeIndicators(int)
_Z24CG_DrawGrenadeIndicatorsi:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x10c
	mov ebx, cgArray
	mov edi, [ebx+0x24]
	test edi, edi
	jz _Z24CG_DrawGrenadeIndicatorsi_10
	cmp dword [ebx+0x46140], 0x4
	jz _Z24CG_DrawGrenadeIndicatorsi_10
	test byte [ebx+0x46150], 0x2
	jnz _Z24CG_DrawGrenadeIndicatorsi_10
	mov esi, [g_hudGrenadeCount]
	test esi, esi
	jnz _Z24CG_DrawGrenadeIndicatorsi_20
_Z24CG_DrawGrenadeIndicatorsi_10:
	add esp, 0x10c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z24CG_DrawGrenadeIndicatorsi_20:
	lea eax, [ebp-0x24]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z21CG_GetWeapReticleZoomPK4cg_sPf
	test al, al
	jz _Z24CG_DrawGrenadeIndicatorsi_30
	mov eax, cg_hudGrenadeIconInScope
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z24CG_DrawGrenadeIndicatorsi_10
	lea eax, [ebp-0x20]
	mov [esp+0x8], eax
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z24CG_CalcCrosshairPositionPK4cg_sPfS2_
	mov eax, [ebp+0x8]
	shl eax, 0x6
	mov edx, [ebp+0x8]
	lea ebx, [eax+edx*4]
	add ebx, scrPlaceView
	mov dword [esp+0x8], 0x2
	mov eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z15ScrPlace_ApplyXPK15ScreenPlacementfi
	fstp dword [ebp-0x1c]
	mov dword [esp+0x8], 0x2
	mov eax, [ebp-0x20]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z15ScrPlace_ApplyYPK15ScreenPlacementfi
	fstp dword [ebp-0x20]
_Z24CG_DrawGrenadeIndicatorsi_50:
	mov ebx, [g_hudGrenadeCount]
	test ebx, ebx
	jz _Z24CG_DrawGrenadeIndicatorsi_10
	mov dword [ebp-0xb4], 0x0
	mov dword [ebp-0x6c], g_hudGrenades
	mov edi, cgArray
	mov eax, colorWhite
	movss xmm0, dword [eax+0xc]
	movss [ebp-0xb8], xmm0
	mov eax, [ebp+0x8]
	shl eax, 0x6
	mov edx, [ebp+0x8]
	lea esi, [eax+edx*4]
	add esi, scrPlaceView
	mov eax, [ebp-0xb4]
_Z24CG_DrawGrenadeIndicatorsi_40:
	shl eax, 0x4
	lea edx, [eax+g_hudGrenades]
	movss xmm0, dword [eax+g_hudGrenades]
	subss xmm0, [edi+0x46158]
	movss [ebp-0x30], xmm0
	movss xmm0, dword [edx+0x4]
	subss xmm0, [edi+0x4615c]
	movss [ebp-0x2c], xmm0
	movss xmm0, dword [edx+0x8]
	subss xmm0, [edi+0x46160]
	movss [ebp-0x28], xmm0
	mov edx, colorWhite
	mov eax, [edx]
	mov [ebp-0x40], eax
	mov eax, [edx+0x4]
	mov [ebp-0x3c], eax
	mov eax, [edx+0x8]
	mov [ebp-0x38], eax
	movss xmm0, dword [ebp-0xb8]
	movss [ebp-0x34], xmm0
	mov eax, cg_hudGrenadePointerPulseMin
	mov eax, [eax]
	movss xmm3, dword [eax+0xc]
	mov eax, cg_hudGrenadePointerPulseMax
	mov eax, [eax]
	movss xmm2, dword [eax+0xc]
	subss xmm2, xmm3
	mulss xmm2, [_float_0_50000000]
	addss xmm3, xmm2
	cvtsi2sd xmm0, dword [edi+0x46128]
	mulsd xmm0, [_double_0_00628319]
	mov eax, cg_hudGrenadePointerPulseFreq
	mov eax, [eax]
	cvtss2sd xmm1, [eax+0xc]
	mulsd xmm0, xmm1
	cvtsd2ss xmm0, xmm0
	movss [esp], xmm0
	movss [ebp-0xd8], xmm2
	movss [ebp-0xe8], xmm3
	call sinf
	fstp dword [ebp-0xec]
	movss xmm0, dword [ebp-0xec]
	movss xmm2, dword [ebp-0xd8]
	mulss xmm0, xmm2
	movss xmm3, dword [ebp-0xe8]
	addss xmm0, xmm3
	movss xmm3, dword [_float_1_00000000]
	movaps xmm1, xmm0
	subss xmm1, xmm3
	pxor xmm2, xmm2
	cmpss xmm2, xmm1, 0x6
	movaps xmm1, xmm2
	movaps xmm2, xmm0
	andps xmm2, xmm1
	andnps xmm1, xmm3
	orps xmm1, xmm2
	pxor xmm2, xmm2
	subss xmm2, xmm0
	movaps xmm0, xmm2
	pxor xmm2, xmm2
	cmpss xmm2, xmm0, 0x6
	movaps xmm0, xmm2
	andps xmm1, xmm2
	pxor xmm2, xmm2
	andnps xmm0, xmm2
	orps xmm0, xmm1
	movss [ebp-0x34], xmm0
	movss xmm0, dword [ebp-0x20]
	movss [ebp-0xb0], xmm0
	movss xmm1, dword [ebp-0x1c]
	movss [ebp-0xac], xmm1
	mov eax, cg_hudGrenadePointerWidth
	mov eax, [eax]
	movss xmm2, dword [eax+0xc]
	movss [ebp-0xa8], xmm2
	mov eax, cg_hudGrenadePointerHeight
	mov eax, [eax]
	movss xmm0, dword [eax+0xc]
	movss [ebp-0xa4], xmm0
	mov edx, cg_hudGrenadeIconOffset
	mov eax, [edx]
	movss xmm0, dword [eax+0xc]
	movss [ebp-0xa0], xmm0
	mov eax, cg_hudGrenadePointerPivot
	mov eax, [eax]
	movss xmm1, dword [eax+0xc]
	movss [ebp-0x70], xmm1
	movss xmm2, dword [eax+0x10]
	movss [ebp-0x74], xmm2
	lea eax, [ebp-0x30]
	mov [esp], eax
	call _Z8vectoyawPKf
	fstp dword [ebp-0xec]
	movss xmm0, dword [ebp-0xec]
	subss xmm0, [edi+0x46248]
	movss [esp], xmm0
	call _Z17AngleNormalize360f
	fstp dword [ebp-0x9c]
	cvtss2sd xmm0, [ebp-0x9c]
	mulsd xmm0, [_double_0_01745329]
	cvtsd2ss xmm0, xmm0
	movss [ebp-0x98], xmm0
	movss xmm0, dword [esi]
	movss [ebp-0x94], xmm0
	movss xmm1, dword [ebp-0x98]
	movss [esp], xmm1
	call sinf
	fstp dword [ebp-0xec]
	movss xmm0, dword [ebp-0xec]
	mulss xmm0, [ebp-0xa0]
	mulss xmm0, [ebp-0x94]
	movss xmm2, dword [ebp-0xac]
	subss xmm2, xmm0
	movss [ebp-0xac], xmm2
	movss xmm0, dword [ebp-0x98]
	movss [esp], xmm0
	call cosf
	fstp dword [ebp-0xbc]
	movss xmm1, dword [ebp-0xa0]
	mulss xmm1, [ebp-0xbc]
	movss [ebp-0xa0], xmm1
	mulss xmm1, [esi+0x4]
	movss xmm2, dword [ebp-0xb0]
	subss xmm2, xmm1
	movss xmm0, dword [ebp-0x70]
	xorps xmm0, [_data16_80000000]
	mulss xmm0, [ebp-0x94]
	movss [ebp-0x48], xmm0
	movss [ebp-0x60], xmm0
	movss xmm0, dword [ebp-0xa8]
	subss xmm0, [ebp-0x70]
	mulss xmm0, [esi]
	movss [ebp-0x50], xmm0
	movss [ebp-0x58], xmm0
	movss xmm0, dword [ebp-0x74]
	xorps xmm0, [_data16_80000000]
	mulss xmm0, [esi+0x4]
	movss [ebp-0x54], xmm0
	movss [ebp-0x5c], xmm0
	movss xmm0, dword [ebp-0xa4]
	subss xmm0, [ebp-0x74]
	mulss xmm0, [esi+0x4]
	movss [ebp-0x44], xmm0
	movss [ebp-0x4c], xmm0
	mov eax, cgMedia
	mov eax, [eax+0x274c]
	mov [esp+0x18], eax
	lea eax, [ebp-0x40]
	mov [esp+0x14], eax
	xor dword [ebp-0x9c], 0x80000000
	movss xmm0, dword [ebp-0x9c]
	movss [esp+0x10], xmm0
	lea eax, [ebp-0x60]
	mov [esp+0xc], eax
	movss [esp+0x8], xmm2
	movss xmm0, dword [ebp-0xac]
	movss [esp+0x4], xmm0
	mov [esp], esi
	call _Z21CG_DrawRotatedQuadPicPK15ScreenPlacementffPA2_KffPS2_P8Material
	mov eax, [ebp-0x6c]
	mov ebx, [eax+0xc]
	movss xmm0, dword [ebp-0x20]
	movss [ebp-0x90], xmm0
	movss xmm1, dword [ebp-0x1c]
	movss [ebp-0x8c], xmm1
	mov eax, cg_hudGrenadeIconWidth
	mov eax, [eax]
	movss xmm2, dword [eax+0xc]
	movss [ebp-0x88], xmm2
	mov eax, cg_hudGrenadeIconHeight
	mov eax, [eax]
	movss xmm0, dword [eax+0xc]
	movss [ebp-0x84], xmm0
	mov edx, cg_hudGrenadeIconOffset
	mov eax, [edx]
	movss xmm0, dword [eax+0xc]
	movss [ebp-0x80], xmm0
	lea eax, [ebp-0x30]
	mov [esp], eax
	call _Z8vectoyawPKf
	fstp dword [ebp-0xec]
	movss xmm0, dword [ebp-0xec]
	subss xmm0, [edi+0x46248]
	movss [esp], xmm0
	call _Z17AngleNormalize360f
	fstp dword [ebp-0x7c]
	cvtss2sd xmm0, [ebp-0x7c]
	mulsd xmm0, [_double_0_01745329]
	cvtsd2ss xmm0, xmm0
	movss [ebp-0x78], xmm0
	movss [esp], xmm0
	call cosf
	fstp dword [ebp-0xc0]
	movss xmm0, dword [ebp-0x78]
	movss [esp], xmm0
	call sinf
	fstp dword [ebp-0xec]
	movss xmm1, dword [ebp-0xec]
	mulss xmm1, [ebp-0x80]
	movss xmm0, dword [ebp-0x88]
	mulss xmm0, [_float__0_50000000]
	subss xmm0, xmm1
	mulss xmm0, [esi]
	addss xmm0, [ebp-0x8c]
	movss [ebp-0x48], xmm0
	movss [ebp-0x60], xmm0
	movss xmm0, dword [ebp-0x88]
	mulss xmm0, [_float_0_50000000]
	subss xmm0, xmm1
	mulss xmm0, [esi]
	addss xmm0, [ebp-0x8c]
	movss [ebp-0x50], xmm0
	movss [ebp-0x58], xmm0
	movss xmm1, dword [ebp-0x80]
	mulss xmm1, [ebp-0xc0]
	movss xmm0, dword [ebp-0x84]
	mulss xmm0, [_float__0_50000000]
	subss xmm0, xmm1
	mulss xmm0, [esi+0x4]
	addss xmm0, [ebp-0x90]
	movss [ebp-0x54], xmm0
	movss [ebp-0x5c], xmm0
	movss xmm0, dword [ebp-0x84]
	mulss xmm0, [_float_0_50000000]
	subss xmm0, xmm1
	mulss xmm0, [esi+0x4]
	addss xmm0, [ebp-0x90]
	movss [ebp-0x44], xmm0
	movss [ebp-0x4c], xmm0
	mov [esp+0x8], ebx
	lea eax, [ebp-0x40]
	mov [esp+0x4], eax
	lea edx, [ebp-0x60]
	mov [esp], edx
	call _Z19R_AddCmdDrawQuadPicPA2_KfPS_P8Material
	add dword [ebp-0xb4], 0x1
	add dword [ebp-0x6c], 0x10
	mov eax, [ebp-0xb4]
	cmp [g_hudGrenadeCount], eax
	ja _Z24CG_DrawGrenadeIndicatorsi_40
	jmp _Z24CG_DrawGrenadeIndicatorsi_10
_Z24CG_DrawGrenadeIndicatorsi_30:
	mov eax, [ebp+0x8]
	shl eax, 0x6
	mov edx, [ebp+0x8]
	lea ebx, [eax+edx*4]
	add ebx, scrPlaceView
	mov dword [esp+0x8], 0x2
	xor esi, esi
	mov [esp+0x4], esi
	mov [esp], ebx
	call _Z15ScrPlace_ApplyXPK15ScreenPlacementfi
	fstp dword [ebp-0x1c]
	mov dword [esp+0x8], 0x2
	mov [esp+0x4], esi
	mov [esp], ebx
	call _Z15ScrPlace_ApplyYPK15ScreenPlacementfi
	fstp dword [ebp-0x20]
	jmp _Z24CG_DrawGrenadeIndicatorsi_50
	add [eax], al


;CG_AddHudGrenade_PositionCheck(cg_s const*, centity_s const*, WeaponDef*)
_Z30CG_AddHudGrenade_PositionCheckPK4cg_sPK9centity_sP9WeaponDef:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov ebx, [ebp+0x8]
	mov eax, [ebp+0xc]
	mov esi, [ebp+0x10]
	lea ecx, [ebx+0x46158]
	lea edx, [eax+0x1c]
	movss xmm1, dword [eax+0x1c]
	subss xmm1, [ebx+0x46158]
	movss xmm3, dword [edx+0x4]
	subss xmm3, [ecx+0x4]
	movss xmm4, dword [edx+0x8]
	subss xmm4, [ecx+0x8]
	mov eax, [esi+0x588]
	test eax, eax
	jz _Z30CG_AddHudGrenade_PositionCheckPK4cg_sPK9centity_sP9WeaponDef_10
	cmp eax, 0x6
	jz _Z30CG_AddHudGrenade_PositionCheckPK4cg_sPK9centity_sP9WeaponDef_10
	mov eax, cg_hudGrenadeIconMaxRangeFlash
	mov eax, [eax]
	movss xmm2, dword [eax+0xc]
_Z30CG_AddHudGrenade_PositionCheckPK4cg_sPK9centity_sP9WeaponDef_70:
	mulss xmm2, xmm2
_Z30CG_AddHudGrenade_PositionCheckPK4cg_sPK9centity_sP9WeaponDef_60:
	mulss xmm1, xmm1
	mulss xmm3, xmm3
	addss xmm1, xmm3
	movaps xmm0, xmm4
	mulss xmm0, xmm4
	addss xmm1, xmm0
	ucomiss xmm1, xmm2
	ja _Z30CG_AddHudGrenade_PositionCheckPK4cg_sPK9centity_sP9WeaponDef_20
	ucomiss xmm4, [_float_0_00000000]
	jb _Z30CG_AddHudGrenade_PositionCheckPK4cg_sPK9centity_sP9WeaponDef_30
_Z30CG_AddHudGrenade_PositionCheckPK4cg_sPK9centity_sP9WeaponDef_80:
	mov eax, cg_hudGrenadeIconMaxHeight
	mov eax, [eax]
	movss xmm1, dword [eax+0xc]
	addss xmm1, [ebx+0x46254]
	movss xmm3, dword [ebx+0x492c4]
	movaps xmm2, xmm3
	subss xmm2, xmm1
	pxor xmm0, xmm0
	cmpss xmm0, xmm2, 0x2
	andps xmm1, xmm0
	andnps xmm0, xmm3
	orps xmm0, xmm1
	ucomiss xmm4, xmm0
	jbe _Z30CG_AddHudGrenade_PositionCheckPK4cg_sPK9centity_sP9WeaponDef_40
_Z30CG_AddHudGrenade_PositionCheckPK4cg_sPK9centity_sP9WeaponDef_20:
	xor eax, eax
	pop ebx
	pop esi
	pop ebp
	ret
_Z30CG_AddHudGrenade_PositionCheckPK4cg_sPK9centity_sP9WeaponDef_10:
	mov eax, cg_hudGrenadeIconMaxRangeFrag
	mov eax, [eax]
	movss xmm2, dword [eax+0xc]
	pxor xmm5, xmm5
	ucomiss xmm2, xmm5
	jnz _Z30CG_AddHudGrenade_PositionCheckPK4cg_sPK9centity_sP9WeaponDef_50
	jp _Z30CG_AddHudGrenade_PositionCheckPK4cg_sPK9centity_sP9WeaponDef_50
	movaps xmm2, xmm5
	jmp _Z30CG_AddHudGrenade_PositionCheckPK4cg_sPK9centity_sP9WeaponDef_60
_Z30CG_AddHudGrenade_PositionCheckPK4cg_sPK9centity_sP9WeaponDef_50:
	cvtsi2ss xmm6, dword [esi+0x554]
	movaps xmm0, xmm2
	subss xmm0, xmm6
	ucomiss xmm0, xmm5
	jae _Z30CG_AddHudGrenade_PositionCheckPK4cg_sPK9centity_sP9WeaponDef_70
	movaps xmm2, xmm6
	mulss xmm2, xmm6
	jmp _Z30CG_AddHudGrenade_PositionCheckPK4cg_sPK9centity_sP9WeaponDef_60
_Z30CG_AddHudGrenade_PositionCheckPK4cg_sPK9centity_sP9WeaponDef_30:
	jp _Z30CG_AddHudGrenade_PositionCheckPK4cg_sPK9centity_sP9WeaponDef_80
	mov eax, cg_hudGrenadeIconMaxHeight
	mov eax, [eax]
	movss xmm0, dword [eax+0xc]
	xorps xmm0, [_data16_80000000]
	ucomiss xmm0, xmm4
	ja _Z30CG_AddHudGrenade_PositionCheckPK4cg_sPK9centity_sP9WeaponDef_20
_Z30CG_AddHudGrenade_PositionCheckPK4cg_sPK9centity_sP9WeaponDef_40:
	mov eax, 0x1
	pop ebx
	pop esi
	pop ebp
	ret


;CG_DrawDamageDirectionIndicators(int)
_Z32CG_DrawDamageDirectionIndicatorsi:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x8c
	mov ebx, [ebp+0x8]
	mov esi, cgArray
	mov edx, [esi+0x24]
	test edx, edx
	jz _Z32CG_DrawDamageDirectionIndicatorsi_10
	mov [esp], ebx
	call _Z14CG_Flashbangedi
	test al, al
	jz _Z32CG_DrawDamageDirectionIndicatorsi_20
_Z32CG_DrawDamageDirectionIndicatorsi_10:
	add esp, 0x8c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z32CG_DrawDamageDirectionIndicatorsi_20:
	mov eax, ebx
	shl eax, 0x6
	lea ebx, [eax+ebx*4]
	mov [ebp-0x5c], ebx
	mov eax, scrPlaceView
	add [ebp-0x5c], eax
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z21CG_GetWeapReticleZoomPK4cg_sPf
	test al, al
	jz _Z32CG_DrawDamageDirectionIndicatorsi_30
	mov eax, cg_hudDamageIconInScope
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z32CG_DrawDamageDirectionIndicatorsi_10
	lea eax, [ebp-0x24]
	mov [esp+0x8], eax
	lea eax, [ebp-0x20]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z24CG_CalcCrosshairPositionPK4cg_sPfS2_
	mov dword [esp+0x8], 0x2
	mov eax, [ebp-0x20]
	mov [esp+0x4], eax
	mov eax, [ebp-0x5c]
	mov [esp], eax
	call _Z15ScrPlace_ApplyXPK15ScreenPlacementfi
	fstp dword [ebp-0x20]
	mov dword [esp+0x8], 0x2
	mov eax, [ebp-0x24]
	mov [esp+0x4], eax
	mov eax, [ebp-0x5c]
	mov [esp], eax
	call _Z15ScrPlace_ApplyYPK15ScreenPlacementfi
	fstp dword [ebp-0x24]
_Z32CG_DrawDamageDirectionIndicatorsi_60:
	mov eax, cg_hudDamageIconWidth
	mov eax, [eax]
	movss xmm1, dword [eax+0xc]
	mov eax, [ebp-0x5c]
	mulss xmm1, [eax]
	mulss xmm1, [_float_0_50000000]
	movss xmm0, dword [eax+0x4]
	mov eax, cg_hudDamageIconOffset
	mov eax, [eax]
	movaps xmm3, xmm0
	mulss xmm3, [eax+0xc]
	mov eax, cg_hudDamageIconHeight
	mov eax, [eax]
	mulss xmm0, [eax+0xc]
	addss xmm0, xmm3
	movss [ebp-0x54], xmm1
	movss [ebp-0x50], xmm0
	movaps xmm2, xmm1
	xorps xmm2, [_data16_80000000]
	movss [ebp-0x4c], xmm2
	movss [ebp-0x48], xmm0
	movss [ebp-0x44], xmm2
	movss [ebp-0x40], xmm3
	movss [ebp-0x3c], xmm1
	movss [ebp-0x38], xmm3
	mov edx, colorWhite
	mov eax, [edx]
	mov [ebp-0x34], eax
	mov eax, [edx+0x4]
	mov [ebp-0x30], eax
	mov eax, [edx+0x8]
	mov [ebp-0x2c], eax
	mov eax, [edx+0xc]
	mov [ebp-0x28], eax
	mov esi, cgArray
	mov edx, esi
	mov [ebp-0x60], esi
	jmp _Z32CG_DrawDamageDirectionIndicatorsi_40
_Z32CG_DrawDamageDirectionIndicatorsi_50:
	add esi, 0xc
	lea eax, [edx+0x60]
	cmp eax, esi
	jz _Z32CG_DrawDamageDirectionIndicatorsi_10
_Z32CG_DrawDamageDirectionIndicatorsi_40:
	mov edi, [esi+0x50384]
	mov ebx, [edx+0x46128]
	sub ebx, [esi+0x50380]
	test ebx, ebx
	jle _Z32CG_DrawDamageDirectionIndicatorsi_50
	cmp edi, ebx
	jle _Z32CG_DrawDamageDirectionIndicatorsi_50
	lea eax, [edx+0x492ec]
	mov [esp], eax
	call _Z8vectoyawPKf
	fstp dword [ebp-0x6c]
	movss xmm3, dword [ebp-0x6c]
	subss xmm3, [esi+0x50388]
	movss [ebp-0x1c], xmm3
	cvtsi2ss xmm1, ebx
	mulss xmm1, [_float__2_00000000]
	cvtsi2ss xmm0, edi
	divss xmm1, xmm0
	addss xmm1, [_float_2_00000000]
	movaps xmm2, xmm1
	subss xmm2, [_float_1_00000000]
	pxor xmm0, xmm0
	cmpss xmm0, xmm2, 0x6
	andps xmm1, xmm0
	movss xmm2, dword [_float_1_00000000]
	andnps xmm0, xmm2
	orps xmm0, xmm1
	movss [ebp-0x28], xmm0
	mov eax, cgMedia
	mov eax, [eax+0x254]
	mov [esp+0x18], eax
	lea eax, [ebp-0x34]
	mov [esp+0x14], eax
	movss [esp+0x10], xmm3
	lea eax, [ebp-0x54]
	mov [esp+0xc], eax
	mov eax, [ebp-0x24]
	mov [esp+0x8], eax
	mov eax, [ebp-0x20]
	mov [esp+0x4], eax
	mov eax, [ebp-0x5c]
	mov [esp], eax
	call _Z21CG_DrawRotatedQuadPicPK15ScreenPlacementffPA2_KffPS2_P8Material
	mov edx, [ebp-0x60]
	jmp _Z32CG_DrawDamageDirectionIndicatorsi_50
_Z32CG_DrawDamageDirectionIndicatorsi_30:
	mov dword [esp+0x8], 0x2
	xor ebx, ebx
	mov [esp+0x4], ebx
	mov eax, [ebp-0x5c]
	mov [esp], eax
	call _Z15ScrPlace_ApplyXPK15ScreenPlacementfi
	fstp dword [ebp-0x20]
	mov dword [esp+0x8], 0x2
	mov [esp+0x4], ebx
	mov eax, [ebp-0x5c]
	mov [esp], eax
	call _Z15ScrPlace_ApplyYPK15ScreenPlacementfi
	fstp dword [ebp-0x24]
	jmp _Z32CG_DrawDamageDirectionIndicatorsi_60
	nop


;Initialized global or static variables of cg_draw_indicators:
SECTION .data


;Initialized constant data of cg_draw_indicators:
SECTION .rdata


;Zero initialized global or static variables of cg_draw_indicators:
SECTION .bss
g_hudGrenades: resb 0x200
g_hudGrenadeCount: resb 0x80


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata
_float_1_00000000:		dd 0x3f800000	; 1
_float_500_00000000:		dd 0x43fa0000	; 500
_data16_7fffffff:		dd 0x7fffffff, 0x0, 0x0, 0x0	; OWORD
_float_5_00000000:		dd 0x40a00000	; 5
_float_0_69999999:		dd 0x3f333333	; 0.7
_float_10_00000000:		dd 0x41200000	; 10
_float_0_50000000:		dd 0x3f000000	; 0.5
_double_0_00628319:		dq 0x3f79bc65b68b71c3	; 0.00628319
_double_0_01745329:		dq 0x3f91df46a2529d39	; 0.0174533
_data16_80000000:		dd 0x80000000, 0x0, 0x0, 0x0	; OWORD
_float__0_50000000:		dd 0xbf000000	; -0.5
_float_0_00000000:		dd 0x0	; 0
_float__2_00000000:		dd 0xc0000000	; -2
_float_2_00000000:		dd 0x40000000	; 2

