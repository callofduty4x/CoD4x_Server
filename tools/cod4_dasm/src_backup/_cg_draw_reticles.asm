;Imports of cg_draw_reticles:
	extern _Z22CL_GetScreenDimensionsPiS_Pf
	extern _Z25CL_DrawStretchPicPhysicalffffffffPKfP8Material
	extern cgArray
	extern _Z15BG_GetWeaponDefj
	extern colorWhite
	extern cg_crosshairAlpha
	extern cg_friendlyNameFadeIn
	extern _Z27Dvar_GetUnpackedColorByNamePKcPf
	extern cg_crosshairEnemyColor
	extern cg_enemyNameFadeIn
	extern scrPlaceView
	extern cg_debug_overlay_viewport
	extern _Z18ScrPlace_ApplyRectPK15ScreenPlacementPfS2_S2_S2_ii
	extern _Z17CL_DrawStretchPicPK15ScreenPlacementffffiiffffPKfP8Material
	extern _Z26BG_GetViewmodelWeaponIndexPK13playerState_s
	extern _Z16CG_ShouldDrawHudi
	extern _Z24CG_PlayerTurretWeaponIdxi
	extern _Z14CG_Flashbangedi
	extern cg_drawTurretCrosshair
	extern cg_paused
	extern cg_drawpaused
	extern cg_entitiesArray
	extern cg_drawGun
	extern cg_drawCrosshair
	extern cg_crosshairDynamic
	extern cg_crosshairAlphaMin
	extern _Z21BG_GetSpreadForWeaponPK13playerState_sPK9WeaponDefPfS5_
	extern tan
	extern _Z17CG_DrawRotatedPicPK15ScreenPlacementffffiifPKfP8Material
	extern vec2_origin
	extern _Z22UI_ShouldDrawCrosshairv
	extern _Z12AngleVectorsPKfPfS1_S1_
	extern _Z28CG_LookingThroughNightVisioni
	extern cgMedia
	extern _Z16Com_PrintWarningiPKcz

;Exports of cg_draw_reticles:
	global _Z19CG_DrawFrameOverlayffffPKfP8Material
	global _Z21CG_CalcCrosshairColorifPf
	global _Z17CG_DrawAdsOverlayiPK9WeaponDefPKfS3_
	global _Z18CG_DrawWeapReticlei
	global _Z16CG_DrawCrosshairi
	global _Z21CG_GetWeapReticleZoomPK4cg_sPf
	global _Z24CG_CalcCrosshairPositionPK4cg_sPfS2_
	global _Z25CG_DrawNightVisionOverlayi


SECTION .text


;CG_DrawFrameOverlay(float, float, float, float, float const*, Material*)
_Z19CG_DrawFrameOverlayffffPKfP8Material:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	add esp, 0xffffff80
	movss [ebp-0x20], xmm0
	movss [ebp-0x24], xmm1
	movss [ebp-0x28], xmm2
	movss [ebp-0x2c], xmm3
	mov esi, eax
	mov ebx, edx
	lea eax, [ebp-0x14]
	mov [esp+0x8], eax
	lea eax, [ebp-0x10]
	mov [esp+0x4], eax
	lea eax, [ebp-0xc]
	mov [esp], eax
	call _Z22CL_GetScreenDimensionsPiS_Pf
	cvtsi2ss xmm0, dword [ebp-0xc]
	cvtsi2ss xmm1, dword [ebp-0x10]
	movss [ebp-0x1c], xmm1
	pxor xmm1, xmm1
	movss xmm2, dword [ebp-0x20]
	ucomiss xmm2, xmm1
	jbe _Z19CG_DrawFrameOverlayffffPKfP8Material_10
	mov [esp+0x24], ebx
	mov [esp+0x20], esi
	mov dword [esp+0x1c], 0x3f800000
	movss [esp+0x18], xmm1
	movss [esp+0x14], xmm1
	movss [esp+0x10], xmm1
	movss xmm2, dword [ebp-0x1c]
	movss [esp+0xc], xmm2
	movss xmm2, dword [ebp-0x20]
	movss [esp+0x8], xmm2
	movss [esp+0x4], xmm1
	movss [esp], xmm1
	movss [ebp-0x48], xmm0
	movss [ebp-0x58], xmm1
	call _Z25CL_DrawStretchPicPhysicalffffffffPKfP8Material
	movss xmm1, dword [ebp-0x58]
	movss xmm0, dword [ebp-0x48]
_Z19CG_DrawFrameOverlayffffPKfP8Material_10:
	ucomiss xmm0, [ebp-0x24]
	ja _Z19CG_DrawFrameOverlayffffPKfP8Material_20
_Z19CG_DrawFrameOverlayffffPKfP8Material_50:
	movss xmm2, dword [ebp-0x28]
	ucomiss xmm2, xmm1
	jbe _Z19CG_DrawFrameOverlayffffPKfP8Material_30
	mov [esp+0x24], ebx
	mov [esp+0x20], esi
	movss [esp+0x1c], xmm1
	mov dword [esp+0x18], 0x3f800000
	movss [esp+0x14], xmm1
	movss [esp+0x10], xmm1
	movss [esp+0xc], xmm2
	movss xmm0, dword [ebp-0x24]
	subss xmm0, [ebp-0x20]
	movss [esp+0x8], xmm0
	movss [esp+0x4], xmm1
	movss xmm0, dword [ebp-0x20]
	movss [esp], xmm0
	movss [ebp-0x58], xmm1
	call _Z25CL_DrawStretchPicPhysicalffffffffPKfP8Material
	movss xmm1, dword [ebp-0x58]
_Z19CG_DrawFrameOverlayffffPKfP8Material_30:
	movss xmm2, dword [ebp-0x1c]
	ucomiss xmm2, [ebp-0x2c]
	jbe _Z19CG_DrawFrameOverlayffffPKfP8Material_40
	mov [esp+0x24], ebx
	mov [esp+0x20], esi
	movss [esp+0x1c], xmm1
	mov dword [esp+0x18], 0x3f800000
	movss [esp+0x14], xmm1
	movss [esp+0x10], xmm1
	subss xmm2, [ebp-0x2c]
	movss [esp+0xc], xmm2
	movss xmm0, dword [ebp-0x24]
	subss xmm0, [ebp-0x20]
	movss [esp+0x8], xmm0
	movss xmm1, dword [ebp-0x2c]
	movss [esp+0x4], xmm1
	movss xmm2, dword [ebp-0x20]
	movss [esp], xmm2
	call _Z25CL_DrawStretchPicPhysicalffffffffPKfP8Material
_Z19CG_DrawFrameOverlayffffPKfP8Material_40:
	sub esp, 0xffffff80
	pop ebx
	pop esi
	pop ebp
	ret
_Z19CG_DrawFrameOverlayffffPKfP8Material_20:
	mov [esp+0x24], ebx
	mov [esp+0x20], esi
	mov dword [esp+0x1c], 0x3f800000
	movss [esp+0x18], xmm1
	movss [esp+0x14], xmm1
	movss [esp+0x10], xmm1
	movss xmm2, dword [ebp-0x1c]
	movss [esp+0xc], xmm2
	subss xmm0, [ebp-0x24]
	movss [esp+0x8], xmm0
	movss [esp+0x4], xmm1
	movss xmm0, dword [ebp-0x24]
	movss [esp], xmm0
	movss [ebp-0x58], xmm1
	call _Z25CL_DrawStretchPicPhysicalffffffffPKfP8Material
	movss xmm1, dword [ebp-0x58]
	jmp _Z19CG_DrawFrameOverlayffffPKfP8Material_50


;CG_CalcCrosshairColor(int, float, float*)
_Z21CG_CalcCrosshairColorifPf:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x20
	movss [ebp-0xc], xmm0
	mov ebx, edx
	mov esi, cgArray
	mov eax, [esi+0x46224]
	mov [esp], eax
	call _Z15BG_GetWeaponDefj
	mov ecx, [eax+0x414]
	test ecx, ecx
	jz _Z21CG_CalcCrosshairColorifPf_10
	mov eax, [esi+0x4614c]
	test al, 0x8
	jnz _Z21CG_CalcCrosshairColorifPf_20
	test al, 0x10
	jnz _Z21CG_CalcCrosshairColorifPf_30
_Z21CG_CalcCrosshairColorifPf_10:
	mov edx, colorWhite
	mov eax, [edx]
	mov [ebx], eax
	mov eax, [edx+0x4]
	mov [ebx+0x4], eax
	mov eax, [edx+0x8]
	mov [ebx+0x8], eax
_Z21CG_CalcCrosshairColorifPf_40:
	mov eax, cg_crosshairAlpha
	mov eax, [eax]
	movss xmm0, dword [ebp-0xc]
	mulss xmm0, [eax+0xc]
	movss [ebx+0xc], xmm0
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
_Z21CG_CalcCrosshairColorifPf_20:
	mov eax, [esi+0x502fc]
	sub eax, [esi+0x50300]
	mov edx, cg_friendlyNameFadeIn
	mov edx, [edx]
	cmp eax, [edx+0xc]
	jl _Z21CG_CalcCrosshairColorifPf_10
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_g_teamcolor_myte
	call _Z27Dvar_GetUnpackedColorByNamePKcPf
	jmp _Z21CG_CalcCrosshairColorifPf_40
_Z21CG_CalcCrosshairColorifPf_30:
	mov eax, cg_crosshairEnemyColor
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z21CG_CalcCrosshairColorifPf_10
	mov eax, [esi+0x502fc]
	sub eax, [esi+0x50300]
	mov edx, cg_enemyNameFadeIn
	mov edx, [edx]
	cmp eax, [edx+0xc]
	jl _Z21CG_CalcCrosshairColorifPf_10
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_g_teamcolor_enem
	call _Z27Dvar_GetUnpackedColorByNamePKcPf
	jmp _Z21CG_CalcCrosshairColorifPf_40


;CG_DrawAdsOverlay(int, WeaponDef const*, float const*, float const*)
_Z17CG_DrawAdsOverlayiPK9WeaponDefPKfS3_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x8c
	mov ebx, eax
	mov [ebp-0x30], ecx
	mov ecx, scrPlaceView
	shl eax, 0x6
	lea eax, [eax+ebx*4]
	movss xmm0, dword [_float_480_00000000]
	ucomiss xmm0, [eax+ecx+0x2c]
	jb _Z17CG_DrawAdsOverlayiPK9WeaponDefPKfS3__10
	mov edi, [edx+0x434]
	test edi, edi
	jz _Z17CG_DrawAdsOverlayiPK9WeaponDefPKfS3__10
_Z17CG_DrawAdsOverlayiPK9WeaponDefPKfS3__60:
	movss xmm2, dword [edx+0x440]
	movss [ebp-0x28], xmm2
	movss xmm3, dword [edx+0x444]
	movss [ebp-0x24], xmm3
	mov eax, ebx
	shl eax, 0x6
	lea eax, [eax+ebx*4]
	add eax, ecx
	mov [ebp-0x2c], eax
	ucomiss xmm2, [_float_320_00000000]
	jbe _Z17CG_DrawAdsOverlayiPK9WeaponDefPKfS3__20
_Z17CG_DrawAdsOverlayiPK9WeaponDefPKfS3__70:
	movss xmm0, dword [_float__0_50000000]
	movaps xmm1, xmm2
	mulss xmm1, xmm0
	mov eax, [ebp+0x8]
	addss xmm1, [eax]
	movss [ebp-0x20], xmm1
	mulss xmm0, xmm3
	addss xmm0, [eax+0x4]
	movss [ebp-0x1c], xmm0
	mov ebx, cg_debug_overlay_viewport
	mov eax, [ebx]
	cmp byte [eax+0xc], 0x0
	jz _Z17CG_DrawAdsOverlayiPK9WeaponDefPKfS3__30
_Z17CG_DrawAdsOverlayiPK9WeaponDefPKfS3__90:
	mov dword [esp+0x18], 0x2
	mov dword [esp+0x14], 0x2
	lea edx, [ebp-0x28]
	lea eax, [ebp-0x24]
	mov [esp+0x10], eax
	mov [esp+0xc], edx
	lea edx, [ebp-0x20]
	lea eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov ecx, [ebp-0x2c]
	mov [esp], ecx
	call _Z18ScrPlace_ApplyRectPK15ScreenPlacementPfS2_S2_S2_ii
	mov eax, [ebx]
	cmp byte [eax+0xc], 0x0
	jz _Z17CG_DrawAdsOverlayiPK9WeaponDefPKfS3__40
_Z17CG_DrawAdsOverlayiPK9WeaponDefPKfS3__80:
	mov ebx, [ebp-0x30]
	movss xmm0, dword [ebx+0xc]
	ucomiss xmm0, [_float_0_99000001]
	jbe _Z17CG_DrawAdsOverlayiPK9WeaponDefPKfS3__50
	mov edi, cgArray
	mov byte [edi+0x4d358], 0x1
	cvttss2si ecx, [ebp-0x20]
	mov eax, [edi+0x492c8]
	mov [ebp-0x3c], eax
	add ecx, eax
	mov [edi+0x4d348], ecx
	cvttss2si edx, [ebp-0x1c]
	mov ebx, [edi+0x492cc]
	mov [ebp-0x40], ebx
	add edx, ebx
	mov [edi+0x4d34c], edx
	cvttss2si eax, [ebp-0x28]
	mov [edi+0x4d350], eax
	cvttss2si ebx, [ebp-0x24]
	lea eax, [ecx+eax]
	add ebx, edx
	mov esi, [ebp-0x3c]
	add esi, [edi+0x492d0]
	cmp ecx, esi
	cmovge ecx, esi
	cmp ecx, [ebp-0x3c]
	cmovle ecx, [ebp-0x3c]
	mov [ebp-0x4c], ecx
	mov [edi+0x4d348], ecx
	mov edi, [ebp-0x40]
	mov ecx, cgArray
	add edi, [ecx+0x492d4]
	cmp edi, edx
	cmovle edx, edi
	cmp edx, [ebp-0x40]
	cmovle edx, [ebp-0x40]
	mov [ecx+0x4d34c], edx
	cmp eax, esi
	cmovge eax, esi
	cmp eax, [ebp-0x3c]
	cmovle eax, [ebp-0x3c]
	cmp ebx, edi
	cmovge ebx, edi
	cmp ebx, [ebp-0x40]
	cmovle ebx, [ebp-0x40]
	sub eax, [ebp-0x4c]
	mov [ecx+0x4d350], eax
	sub ebx, edx
	mov [ecx+0x4d354], ebx
_Z17CG_DrawAdsOverlayiPK9WeaponDefPKfS3__50:
	add esp, 0x8c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z17CG_DrawAdsOverlayiPK9WeaponDefPKfS3__10:
	mov edi, [edx+0x430]
	test edi, edi
	jnz _Z17CG_DrawAdsOverlayiPK9WeaponDefPKfS3__60
	jmp _Z17CG_DrawAdsOverlayiPK9WeaponDefPKfS3__50
_Z17CG_DrawAdsOverlayiPK9WeaponDefPKfS3__20:
	ucomiss xmm3, [_float_240_00000000]
	ja _Z17CG_DrawAdsOverlayiPK9WeaponDefPKfS3__70
	mov ebx, [ebp+0x8]
	movss xmm1, dword [ebx]
	subss xmm1, xmm2
	movss [ebp-0x20], xmm1
	movss xmm0, dword [ebx+0x4]
	subss xmm0, xmm3
	movss [ebp-0x1c], xmm0
	mov [esp+0x30], edi
	mov eax, [ebp-0x30]
	mov [esp+0x2c], eax
	mov dword [esp+0x28], 0x3f800000
	mov dword [esp+0x24], 0x3f800000
	xor ebx, ebx
	mov [esp+0x20], ebx
	mov [esp+0x1c], ebx
	mov dword [esp+0x18], 0x2
	mov dword [esp+0x14], 0x2
	movss [esp+0x10], xmm3
	movss [esp+0xc], xmm2
	movss [esp+0x8], xmm0
	movss [esp+0x4], xmm1
	mov ecx, [ebp-0x2c]
	mov [esp], ecx
	call _Z17CL_DrawStretchPicPK15ScreenPlacementffffiiffffPKfP8Material
	mov eax, [ebp+0x8]
	mov edx, [eax]
	mov [ebp-0x20], edx
	movss xmm1, dword [ebp-0x24]
	movss xmm0, dword [eax+0x4]
	subss xmm0, xmm1
	movss [ebp-0x1c], xmm0
	mov [esp+0x30], edi
	mov ecx, [ebp-0x30]
	mov [esp+0x2c], ecx
	mov dword [esp+0x28], 0x3f800000
	mov [esp+0x24], ebx
	mov [esp+0x20], ebx
	mov dword [esp+0x1c], 0x3f800000
	mov dword [esp+0x18], 0x2
	mov dword [esp+0x14], 0x2
	movss [esp+0x10], xmm1
	mov eax, [ebp-0x28]
	mov [esp+0xc], eax
	movss [esp+0x8], xmm0
	mov [esp+0x4], edx
	mov eax, [ebp-0x2c]
	mov [esp], eax
	call _Z17CL_DrawStretchPicPK15ScreenPlacementffffiiffffPKfP8Material
	movss xmm1, dword [ebp-0x28]
	mov ecx, [ebp+0x8]
	movss xmm0, dword [ecx]
	subss xmm0, xmm1
	movss [ebp-0x20], xmm0
	mov edx, [ecx+0x4]
	mov [ebp-0x1c], edx
	mov [esp+0x30], edi
	mov eax, [ebp-0x30]
	mov [esp+0x2c], eax
	mov [esp+0x28], ebx
	mov dword [esp+0x24], 0x3f800000
	mov dword [esp+0x20], 0x3f800000
	mov [esp+0x1c], ebx
	mov dword [esp+0x18], 0x2
	mov dword [esp+0x14], 0x2
	mov eax, [ebp-0x24]
	mov [esp+0x10], eax
	movss [esp+0xc], xmm1
	mov [esp+0x8], edx
	movss [esp+0x4], xmm0
	mov ecx, [ebp-0x2c]
	mov [esp], ecx
	call _Z17CL_DrawStretchPicPK15ScreenPlacementffffiiffffPKfP8Material
	mov eax, [ebp+0x8]
	mov ecx, [eax]
	mov [ebp-0x20], ecx
	mov edx, [eax+0x4]
	mov [ebp-0x1c], edx
	mov [esp+0x30], edi
	mov eax, [ebp-0x30]
	mov [esp+0x2c], eax
	mov [esp+0x28], ebx
	mov [esp+0x24], ebx
	mov dword [esp+0x20], 0x3f800000
	mov dword [esp+0x1c], 0x3f800000
	mov dword [esp+0x18], 0x2
	mov dword [esp+0x14], 0x2
	mov eax, [ebp-0x24]
	mov [esp+0x10], eax
	mov eax, [ebp-0x28]
	mov [esp+0xc], eax
	mov [esp+0x8], edx
	mov [esp+0x4], ecx
	mov ecx, [ebp-0x2c]
	mov [esp], ecx
	call _Z17CL_DrawStretchPicPK15ScreenPlacementffffiiffffPKfP8Material
	mov ebx, [ebp+0x8]
	movss xmm0, dword [ebx]
	subss xmm0, [ebp-0x28]
	movss [ebp-0x20], xmm0
	movss xmm0, dword [ebx+0x4]
	subss xmm0, [ebp-0x24]
	movss [ebp-0x1c], xmm0
	mov dword [esp+0x18], 0x2
	mov dword [esp+0x14], 0x2
	lea edx, [ebp-0x28]
	lea eax, [ebp-0x24]
	mov [esp+0x10], eax
	mov [esp+0xc], edx
	lea edx, [ebp-0x20]
	lea eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov eax, [ebp-0x2c]
	mov [esp], eax
	call _Z18ScrPlace_ApplyRectPK15ScreenPlacementPfS2_S2_S2_ii
	movss xmm2, dword [ebp-0x1c]
	movss xmm0, dword [ebp-0x20]
	movss xmm1, dword [ebp-0x24]
	addss xmm1, xmm1
	movss xmm4, dword [ebp-0x28]
	addss xmm4, xmm4
	mov edx, edi
	mov eax, [ebp-0x30]
	movaps xmm3, xmm2
	addss xmm3, xmm1
	movaps xmm1, xmm0
	addss xmm1, xmm4
	call _Z19CG_DrawFrameOverlayffffPKfP8Material
	add esp, 0x8c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z17CG_DrawAdsOverlayiPK9WeaponDefPKfS3__40:
	movss xmm2, dword [ebp-0x1c]
	movss xmm0, dword [ebp-0x20]
	mov edx, edi
	mov eax, [ebp-0x30]
	movaps xmm3, xmm2
	addss xmm3, [ebp-0x24]
	movaps xmm1, xmm0
	addss xmm1, [ebp-0x28]
	call _Z19CG_DrawFrameOverlayffffPKfP8Material
	jmp _Z17CG_DrawAdsOverlayiPK9WeaponDefPKfS3__80
_Z17CG_DrawAdsOverlayiPK9WeaponDefPKfS3__30:
	mov [esp+0x30], edi
	mov ecx, [ebp-0x30]
	mov [esp+0x2c], ecx
	mov eax, 0x3f800000
	mov [esp+0x28], eax
	mov [esp+0x24], eax
	xor eax, eax
	mov [esp+0x20], eax
	mov [esp+0x1c], eax
	mov dword [esp+0x18], 0x2
	mov dword [esp+0x14], 0x2
	movss [esp+0x10], xmm3
	movss [esp+0xc], xmm2
	movss [esp+0x8], xmm0
	movss [esp+0x4], xmm1
	mov eax, [ebp-0x2c]
	mov [esp], eax
	call _Z17CL_DrawStretchPicPK15ScreenPlacementffffiiffffPKfP8Material
	jmp _Z17CG_DrawAdsOverlayiPK9WeaponDefPKfS3__90


;CG_DrawWeapReticle(int)
_Z18CG_DrawWeapReticlei:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov [ebp-0x40], eax
	mov ebx, cgArray
	lea eax, [ebx+0x4613c]
	mov [esp], eax
	call _Z26BG_GetViewmodelWeaponIndexPK13playerState_s
	mov [esp], eax
	call _Z15BG_GetWeaponDefj
	movss xmm1, dword [ebx+0x46230]
	mov edi, [eax+0x430]
	test edi, edi
	jz _Z18CG_DrawWeapReticlei_10
_Z18CG_DrawWeapReticlei_80:
	pxor xmm2, xmm2
	ucomiss xmm1, xmm2
	jp _Z18CG_DrawWeapReticlei_20
	jz _Z18CG_DrawWeapReticlei_30
_Z18CG_DrawWeapReticlei_20:
	mov ebx, [ebx+0x49280]
	test ebx, ebx
	jz _Z18CG_DrawWeapReticlei_40
	movss xmm3, dword [eax+0x428]
_Z18CG_DrawWeapReticlei_90:
	movss xmm4, dword [_float_1_00000000]
	movaps xmm0, xmm4
	subss xmm0, xmm3
	subss xmm1, xmm0
	movss [ebp-0x3c], xmm1
	movaps xmm0, xmm1
	ucomiss xmm1, xmm2
	jbe _Z18CG_DrawWeapReticlei_50
	divss xmm0, xmm3
	movss [ebp-0x3c], xmm0
_Z18CG_DrawWeapReticlei_100:
	ucomiss xmm0, [_float_0_01000000]
	jp _Z18CG_DrawWeapReticlei_60
	jbe _Z18CG_DrawWeapReticlei_30
_Z18CG_DrawWeapReticlei_60:
	ucomiss xmm0, xmm4
	jbe _Z18CG_DrawWeapReticlei_70
	movss [ebp-0x3c], xmm4
_Z18CG_DrawWeapReticlei_70:
	mov eax, cgArray
	add eax, 0x4613c
	mov [esp], eax
	call _Z26BG_GetViewmodelWeaponIndexPK13playerState_s
	mov [esp], eax
	call _Z15BG_GetWeaponDefj
	mov edi, eax
	mov ebx, 0x3f800000
	mov [ebp-0x30], ebx
	mov [ebp-0x2c], ebx
	mov [ebp-0x28], ebx
	movss xmm0, dword [ebp-0x3c]
	movss [ebp-0x24], xmm0
	lea esi, [ebp-0x20]
	lea eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov eax, cgArray
	mov [esp], eax
	call _Z24CG_CalcCrosshairPositionPK4cg_sPfS2_
	lea ecx, [ebp-0x30]
	mov [esp], esi
	mov edx, edi
	mov eax, [ebp-0x40]
	call _Z17CG_DrawAdsOverlayiPK9WeaponDefPKfS3_
	mov [ebp-0x4c], ebx
	movss xmm0, dword [ebp-0x4c]
	subss xmm0, [ebp-0x3c]
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z18CG_DrawWeapReticlei_10:
	mov esi, [eax+0x438]
	test esi, esi
	jnz _Z18CG_DrawWeapReticlei_80
_Z18CG_DrawWeapReticlei_30:
	movss xmm0, dword [_float_1_00000000]
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z18CG_DrawWeapReticlei_40:
	movss xmm3, dword [eax+0x42c]
	jmp _Z18CG_DrawWeapReticlei_90
_Z18CG_DrawWeapReticlei_50:
	movaps xmm0, xmm1
	jmp _Z18CG_DrawWeapReticlei_100


;CG_DrawCrosshair(int)
_Z16CG_DrawCrosshairi:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xec
	mov esi, [ebp+0x8]
	mov ebx, cgArray
	mov eax, [ebx+0x46138]
	test eax, eax
	jz _Z16CG_DrawCrosshairi_10
_Z16CG_DrawCrosshairi_40:
	add esp, 0xec
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z16CG_DrawCrosshairi_10:
	mov [esp], esi
	call _Z16CG_ShouldDrawHudi
	mov edi, eax
	movss xmm0, dword [ebx+0x46230]
	movss [ebp-0x74], xmm0
	test dword [ebx+0x461ec], 0x300
	jz _Z16CG_DrawCrosshairi_20
	mov [esp], esi
	call _Z24CG_PlayerTurretWeaponIdxi
	test eax, eax
	jnz _Z16CG_DrawCrosshairi_30
_Z16CG_DrawCrosshairi_150:
	mov [esp], esi
	call _Z14CG_Flashbangedi
	test al, al
	jnz _Z16CG_DrawCrosshairi_40
	mov eax, edi
	test al, al
	jz _Z16CG_DrawCrosshairi_40
	mov eax, cgArray
	mov ecx, [eax+0x466d8]
	cmp ecx, 0x3ff
	jz _Z16CG_DrawCrosshairi_40
	mov eax, cg_drawTurretCrosshair
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z16CG_DrawCrosshairi_40
	mov eax, cg_paused
	mov eax, [eax]
	mov edi, [eax+0xc]
	test edi, edi
	jz _Z16CG_DrawCrosshairi_50
	mov eax, cg_drawpaused
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z16CG_DrawCrosshairi_40
_Z16CG_DrawCrosshairi_50:
	lea edx, [ecx*4]
	mov eax, ecx
	shl eax, 0x5
	sub eax, edx
	mov edx, eax
	shl edx, 0x4
	add eax, edx
	mov edx, cg_entitiesArray
	mov eax, [edx+eax+0x190]
	test eax, eax
	jz _Z16CG_DrawCrosshairi_40
	mov [esp], eax
	call _Z15BG_GetWeaponDefj
	mov edi, eax
	mov ebx, [eax+0x21c]
	test ebx, ebx
	jz _Z16CG_DrawCrosshairi_40
	mov eax, cg_crosshairAlpha
	mov eax, [eax]
	movss xmm0, dword [_float_0_01000000]
	ucomiss xmm0, [eax+0xc]
	ja _Z16CG_DrawCrosshairi_40
	lea ebx, [ebp-0x48]
	mov edx, ebx
	movss xmm0, dword [_float_1_00000000]
	mov eax, esi
	call _Z21CG_CalcCrosshairColorifPf
	cvtsi2ss xmm0, dword [edi+0x224]
	movaps xmm1, xmm0
	mulss xmm1, [_float__0_50000000]
	mov eax, [edi+0x21c]
	mov [esp+0x30], eax
	mov [esp+0x2c], ebx
	mov eax, 0x3f800000
	mov [esp+0x28], eax
	mov [esp+0x24], eax
	xor eax, eax
	mov [esp+0x20], eax
	mov [esp+0x1c], eax
	mov dword [esp+0x18], 0x2
	mov dword [esp+0x14], 0x2
	movss [esp+0x10], xmm0
	movss [esp+0xc], xmm0
	movss [esp+0x8], xmm1
	movss [esp+0x4], xmm1
	mov eax, esi
	shl eax, 0x6
	lea eax, [eax+esi*4]
	add eax, scrPlaceView
	mov [esp], eax
	call _Z17CL_DrawStretchPicPK15ScreenPlacementffffiiffffPKfP8Material
	jmp _Z16CG_DrawCrosshairi_40
_Z16CG_DrawCrosshairi_20:
	lea eax, [ebx+0x4613c]
	mov [esp], eax
	call _Z26BG_GetViewmodelWeaponIndexPK13playerState_s
	test eax, eax
	jz _Z16CG_DrawCrosshairi_40
	mov [esp], eax
	call _Z15BG_GetWeaponDefj
	mov ebx, eax
	mov eax, esi
	call _Z18CG_DrawWeapReticlei
	movss [ebp-0x68], xmm0
	mov [esp], esi
	call _Z14CG_Flashbangedi
	test al, al
	jnz _Z16CG_DrawCrosshairi_40
	mov eax, edi
	test al, al
	jz _Z16CG_DrawCrosshairi_40
	lea edi, [ebp-0x38]
	mov edx, edi
	movss xmm0, dword [ebp-0x68]
	mov eax, esi
	call _Z21CG_CalcCrosshairColorifPf
	movss xmm0, dword [_float_0_01000000]
	ucomiss xmm0, [ebp-0x2c]
	ja _Z16CG_DrawCrosshairi_40
	movss xmm0, dword [ebp-0x74]
	ucomiss xmm0, [_float_1_00000000]
	jnz _Z16CG_DrawCrosshairi_60
	jp _Z16CG_DrawCrosshairi_60
	mov eax, cg_drawGun
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z16CG_DrawCrosshairi_40
_Z16CG_DrawCrosshairi_60:
	mov eax, cg_paused
	mov eax, [eax]
	mov ecx, [eax+0xc]
	test ecx, ecx
	jz _Z16CG_DrawCrosshairi_70
	mov eax, cg_drawpaused
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z16CG_DrawCrosshairi_40
_Z16CG_DrawCrosshairi_70:
	mov eax, cg_drawCrosshair
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z16CG_DrawCrosshairi_80
_Z16CG_DrawCrosshairi_160:
	mov eax, 0x1
_Z16CG_DrawCrosshairi_170:
	test eax, eax
	jnz _Z16CG_DrawCrosshairi_40
	mov ecx, cgArray
	mov edx, [ecx+0x46228]
	lea eax, [edx-0xc]
	cmp eax, 0x2
	jbe _Z16CG_DrawCrosshairi_40
	cmp edx, 0x7
	jz _Z16CG_DrawCrosshairi_40
	lea eax, [edx-0x1]
	cmp eax, 0x3
	jbe _Z16CG_DrawCrosshairi_40
	lea eax, [ebp-0x1c]
	mov [esp+0x8], eax
	lea eax, [ebp-0x28]
	mov [esp+0x4], eax
	mov [esp], ecx
	call _Z24CG_CalcCrosshairPositionPK4cg_sPfS2_
	pxor xmm2, xmm2
	movss xmm1, dword [ebp-0x74]
	ucomiss xmm1, xmm2
	jnz _Z16CG_DrawCrosshairi_90
	jp _Z16CG_DrawCrosshairi_90
	movss xmm3, dword [_float_1_00000000]
	movss [ebp-0x70], xmm3
	movaps xmm4, xmm3
	movss [ebp-0x6c], xmm2
_Z16CG_DrawCrosshairi_210:
	movss xmm3, dword [ebp-0x74]
	ucomiss xmm3, xmm4
	jnz _Z16CG_DrawCrosshairi_100
	jp _Z16CG_DrawCrosshairi_100
	mov eax, cg_drawGun
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z16CG_DrawCrosshairi_40
_Z16CG_DrawCrosshairi_100:
	mov eax, cg_crosshairDynamic
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z16CG_DrawCrosshairi_110
	mov dword [ebp-0x28], 0x0
	movss xmm0, dword [ebp-0x6c]
	movss [ebp-0x1c], xmm0
_Z16CG_DrawCrosshairi_110:
	movss xmm1, dword [ebp-0x1c]
	movss [ebp-0x90], xmm1
	movss xmm3, dword [ebp-0x28]
	movss [ebp-0x8c], xmm3
	mov eax, [ebx+0x21c]
	mov [ebp-0x64], eax
	test eax, eax
	jz _Z16CG_DrawCrosshairi_120
	cvtsi2ss xmm1, dword [ebx+0x224]
	cmp dword [ebx+0x12c], 0x1
	jz _Z16CG_DrawCrosshairi_130
_Z16CG_DrawCrosshairi_180:
	movss xmm0, dword [ebp-0x70]
	mulss xmm0, xmm1
	movaps xmm1, xmm0
	mulss xmm1, [_float__0_50000000]
	mov eax, [ebp-0x64]
	mov [esp+0x30], eax
	mov [esp+0x2c], edi
	mov dword [esp+0x28], 0x3f800000
	mov dword [esp+0x24], 0x3f800000
	xor eax, eax
	mov [esp+0x20], eax
	mov [esp+0x1c], eax
	mov dword [esp+0x18], 0x2
	mov dword [esp+0x14], 0x2
	movss [esp+0x10], xmm0
	movss [esp+0xc], xmm0
	movss xmm0, dword [ebp-0x90]
	addss xmm0, xmm1
	movss [esp+0x8], xmm0
	addss xmm1, [ebp-0x8c]
	movss [esp+0x4], xmm1
	mov eax, esi
	shl eax, 0x6
	lea eax, [eax+esi*4]
	add eax, scrPlaceView
	mov [esp], eax
	call _Z17CL_DrawStretchPicPK15ScreenPlacementffffiiffffPKfP8Material
	movss xmm1, dword [ebp-0x1c]
	movss [ebp-0x90], xmm1
	movss xmm3, dword [ebp-0x28]
	movss [ebp-0x8c], xmm3
_Z16CG_DrawCrosshairi_120:
	mov edi, [ebx+0x220]
	test edi, edi
	jz _Z16CG_DrawCrosshairi_40
	mov eax, esi
	call _Z18CG_DrawWeapReticlei
	mov eax, cgArray
	movss xmm1, dword [eax+0x46764]
	mov eax, [ebp-0x38]
	mov [ebp-0x48], eax
	mov eax, [ebp-0x34]
	mov [ebp-0x44], eax
	mov eax, [ebp-0x30]
	mov [ebp-0x40], eax
	mov eax, cg_crosshairAlpha
	mov eax, [eax]
	mulss xmm0, [eax+0xc]
	divss xmm1, dword [_float__255_00000000]
	addss xmm1, [_float_1_00000000]
	mulss xmm0, xmm1
	movss [ebp-0x3c], xmm0
	mov eax, cg_crosshairAlphaMin
	mov eax, [eax]
	movss xmm2, dword [eax+0xc]
	movaps xmm1, xmm0
	cmpss xmm1, xmm2, 0x5
	andps xmm0, xmm1
	andnps xmm1, xmm2
	orps xmm1, xmm0
	movss [ebp-0x3c], xmm1
	ucomiss xmm1, [_float_0_01000000]
	jp _Z16CG_DrawCrosshairi_140
	jb _Z16CG_DrawCrosshairi_40
_Z16CG_DrawCrosshairi_140:
	cvtsi2ss xmm0, dword [ebx+0x228]
	mulss xmm0, [ebp-0x70]
	movss [ebp-0x5c], xmm0
	lea eax, [ebp-0x24]
	mov [esp+0xc], eax
	lea eax, [ebp-0x20]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov eax, cgArray
	add eax, 0x4613c
	mov [esp], eax
	call _Z21BG_GetSpreadForWeaponPK13playerState_sPK9WeaponDefPfS5_
	movss xmm2, dword [ebp-0x20]
	movss xmm0, dword [ebp-0x24]
	subss xmm0, xmm2
	mov eax, cgArray
	movss xmm1, dword [eax+0x46764]
	divss xmm1, dword [_float_255_00000000]
	mulss xmm0, xmm1
	addss xmm0, xmm2
	mulss xmm0, [ebp-0x70]
	movss [ebp-0x20], xmm0
	cvtss2sd xmm0, xmm0
	mulsd xmm0, [_double_0_01745329]
	movsd [esp], xmm0
	call tan
	fstp qword [ebp-0xb0]
	movsd xmm0, qword [ebp-0xb0]
	mulsd xmm0, [_double_240_00000000]
	mov eax, cgArray
	cvtss2sd xmm1, [eax+0x492dc]
	divsd xmm0, xmm1
	cvtsd2ss xmm0, xmm0
	cvtsi2ss xmm1, dword [ebx+0x22c]
	maxss xmm1, xmm0
	movss [ebp-0x58], xmm1
	movss xmm0, dword [ebp-0x5c]
	mulss xmm0, [ebx+0x480]
	subss xmm1, xmm0
	movss [ebp-0x58], xmm1
	mov eax, esi
	shl eax, 0x6
	lea ebx, [eax+esi*4]
	add ebx, scrPlaceView
	movss xmm3, dword [ebp-0x5c]
	mulss xmm3, [_float_0_12500000]
	movss [ebp-0x54], xmm3
	movss xmm0, dword [ebp-0x5c]
	mulss xmm0, [_float__0_50000000]
	movss [ebp-0x60], xmm0
	movss xmm1, dword [ebp-0x8c]
	addss xmm1, xmm0
	movss [ebp-0x50], xmm1
	mov [esp+0x24], edi
	lea esi, [ebp-0x48]
	mov [esp+0x20], esi
	mov dword [esp+0x1c], 0x0
	mov dword [esp+0x18], 0x2
	mov dword [esp+0x14], 0x2
	movss xmm3, dword [ebp-0x5c]
	movss [esp+0x10], xmm3
	movss [esp+0xc], xmm3
	movss xmm0, dword [ebp-0x90]
	subss xmm0, xmm3
	subss xmm0, [ebp-0x58]
	subss xmm0, [ebp-0x54]
	movss [esp+0x8], xmm0
	movss [esp+0x4], xmm1
	mov [esp], ebx
	call _Z17CG_DrawRotatedPicPK15ScreenPlacementffffiifPKfP8Material
	movss xmm0, dword [ebp-0x90]
	addss xmm0, [ebp-0x60]
	movss [ebp-0x4c], xmm0
	mov [esp+0x24], edi
	mov [esp+0x20], esi
	mov dword [esp+0x1c], 0x42b40000
	mov dword [esp+0x18], 0x2
	mov dword [esp+0x14], 0x2
	movss xmm1, dword [ebp-0x5c]
	movss [esp+0x10], xmm1
	movss [esp+0xc], xmm1
	movss [esp+0x8], xmm0
	movss xmm0, dword [ebp-0x8c]
	addss xmm0, [ebp-0x58]
	movss [esp+0x4], xmm0
	mov [esp], ebx
	call _Z17CG_DrawRotatedPicPK15ScreenPlacementffffiifPKfP8Material
	mov [esp+0x24], edi
	mov [esp+0x20], esi
	mov dword [esp+0x1c], 0x43340000
	mov dword [esp+0x18], 0x2
	mov dword [esp+0x14], 0x2
	movss xmm3, dword [ebp-0x5c]
	movss [esp+0x10], xmm3
	movss [esp+0xc], xmm3
	movss xmm0, dword [ebp-0x90]
	addss xmm0, [ebp-0x58]
	movss [esp+0x8], xmm0
	movss xmm1, dword [ebp-0x50]
	subss xmm1, [ebp-0x54]
	movss [esp+0x4], xmm1
	mov [esp], ebx
	call _Z17CG_DrawRotatedPicPK15ScreenPlacementffffiifPKfP8Material
	mov [esp+0x24], edi
	mov [esp+0x20], esi
	mov dword [esp+0x1c], 0x43870000
	mov dword [esp+0x18], 0x2
	mov dword [esp+0x14], 0x2
	movss xmm3, dword [ebp-0x5c]
	movss [esp+0x10], xmm3
	movss [esp+0xc], xmm3
	movss xmm0, dword [ebp-0x4c]
	subss xmm0, [ebp-0x54]
	movss [esp+0x8], xmm0
	movss xmm1, dword [ebp-0x8c]
	subss xmm1, xmm3
	subss xmm1, [ebp-0x58]
	movss [ebp-0x8c], xmm1
	subss xmm1, [ebp-0x54]
	movss [esp+0x4], xmm1
	mov [esp], ebx
	call _Z17CG_DrawRotatedPicPK15ScreenPlacementffffiifPKfP8Material
	jmp _Z16CG_DrawCrosshairi_40
_Z16CG_DrawCrosshairi_30:
	mov [esp], eax
	call _Z15BG_GetWeaponDefj
	mov edx, eax
	mov eax, [eax+0x430]
	test eax, eax
	jz _Z16CG_DrawCrosshairi_150
	mov ecx, colorWhite
	mov eax, vec2_origin
	mov [esp], eax
	mov eax, esi
	call _Z17CG_DrawAdsOverlayiPK9WeaponDefPKfS3_
	jmp _Z16CG_DrawCrosshairi_40
_Z16CG_DrawCrosshairi_80:
	call _Z22UI_ShouldDrawCrosshairv
	test al, al
	jz _Z16CG_DrawCrosshairi_160
	xor eax, eax
	jmp _Z16CG_DrawCrosshairi_170
_Z16CG_DrawCrosshairi_130:
	mov eax, [ebx+0x4fc]
	test eax, eax
	jz _Z16CG_DrawCrosshairi_180
	mov eax, cgArray
	mov ecx, [eax+0x46180]
	test ecx, ecx
	jz _Z16CG_DrawCrosshairi_180
	mov edx, 0x10624dd3
	mov eax, ecx
	imul edx
	sar edx, 0x6
	mov eax, ecx
	sar eax, 0x1f
	sub edx, eax
	lea edx, [edx+edx*4]
	lea edx, [edx+edx*4]
	lea edx, [edx+edx*4]
	shl edx, 0x3
	sub ecx, edx
	cvtsi2ss xmm0, ecx
	divss xmm0, dword [_float_100_00000000]
	addss xmm1, xmm0
	jmp _Z16CG_DrawCrosshairi_180
_Z16CG_DrawCrosshairi_90:
	mov eax, cgArray
	mov edx, [eax+0x49280]
	test edx, edx
	jz _Z16CG_DrawCrosshairi_190
	movss xmm1, dword [ebx+0x6d0]
_Z16CG_DrawCrosshairi_220:
	movss xmm4, dword [_float_1_00000000]
	movaps xmm0, xmm4
	subss xmm0, xmm1
	movss xmm3, dword [ebp-0x74]
	subss xmm3, xmm0
	movaps xmm0, xmm3
	ucomiss xmm2, xmm3
	jae _Z16CG_DrawCrosshairi_200
	divss xmm0, xmm1
	movaps xmm1, xmm0
	mulss xmm1, [_float__0_50000000]
	addss xmm1, xmm4
	movss [ebp-0x70], xmm1
	mulss xmm0, [_float_240_00000000]
	divss xmm0, dword [eax+0x492dc]
	cvtss2sd xmm0, xmm0
	movsd [ebp-0x80], xmm0
	cvtss2sd xmm0, [ebx+0x6cc]
	mulsd xmm0, [_double_0_01745329]
	movsd [esp], xmm0
	movss [ebp-0xa8], xmm4
	call tan
	fstp qword [ebp-0x88]
	movsd xmm3, qword [ebp-0x80]
	mulsd xmm3, [ebp-0x88]
	cvtsd2ss xmm0, xmm3
	movss [ebp-0x6c], xmm0
	movss xmm4, dword [ebp-0xa8]
_Z16CG_DrawCrosshairi_230:
	movss xmm3, dword [ebp-0x1c]
	movss xmm2, dword [ebp-0x28]
	mov eax, cg_drawGun
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z16CG_DrawCrosshairi_210
	movss xmm1, dword [ebp-0x70]
	ucomiss xmm1, xmm4
	jae _Z16CG_DrawCrosshairi_210
	mov eax, [ebx+0x21c]
	test eax, eax
	jz _Z16CG_DrawCrosshairi_210
	cvtsi2ss xmm1, dword [ebx+0x224]
	movss xmm0, dword [_float_1_50000000]
	subss xmm0, [ebp-0x70]
	mulss xmm1, xmm0
	movaps xmm0, xmm1
	mulss xmm0, [_float__0_50000000]
	mov [esp+0x30], eax
	mov [esp+0x2c], edi
	mov dword [esp+0x28], 0x3f800000
	mov dword [esp+0x24], 0x3f800000
	mov dword [esp+0x20], 0x0
	mov dword [esp+0x1c], 0x0
	mov dword [esp+0x18], 0x2
	mov dword [esp+0x14], 0x2
	movss [esp+0x10], xmm1
	movss [esp+0xc], xmm1
	addss xmm3, xmm0
	movss [esp+0x8], xmm3
	addss xmm2, xmm0
	movss [esp+0x4], xmm2
	mov eax, esi
	shl eax, 0x6
	lea eax, [eax+esi*4]
	add eax, scrPlaceView
	mov [esp], eax
	call _Z17CL_DrawStretchPicPK15ScreenPlacementffffiiffffPKfP8Material
	movss xmm4, dword [_float_1_00000000]
	jmp _Z16CG_DrawCrosshairi_210
_Z16CG_DrawCrosshairi_190:
	movss xmm1, dword [ebx+0x6d4]
	jmp _Z16CG_DrawCrosshairi_220
_Z16CG_DrawCrosshairi_200:
	movss [ebp-0x70], xmm4
	movss [ebp-0x6c], xmm2
	jmp _Z16CG_DrawCrosshairi_230


;CG_GetWeapReticleZoom(cg_s const*, float*)
_Z21CG_GetWeapReticleZoomPK4cg_sPf:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0xc]
	lea eax, [ebx+0x4613c]
	mov [esp], eax
	call _Z26BG_GetViewmodelWeaponIndexPK13playerState_s
	mov [esp], eax
	call _Z15BG_GetWeaponDefj
	movss xmm1, dword [ebx+0x46230]
	pxor xmm2, xmm2
	movss [esi], xmm2
	mov edx, [eax+0x430]
	test edx, edx
	jz _Z21CG_GetWeapReticleZoomPK4cg_sPf_10
_Z21CG_GetWeapReticleZoomPK4cg_sPf_80:
	ucomiss xmm1, xmm2
	jp _Z21CG_GetWeapReticleZoomPK4cg_sPf_20
	jz _Z21CG_GetWeapReticleZoomPK4cg_sPf_30
_Z21CG_GetWeapReticleZoomPK4cg_sPf_20:
	mov edx, [ebx+0x49280]
	test edx, edx
	jz _Z21CG_GetWeapReticleZoomPK4cg_sPf_40
	movss xmm3, dword [_float_1_00000000]
	movaps xmm0, xmm3
	subss xmm0, [eax+0x428]
	subss xmm1, xmm0
	movaps xmm0, xmm1
	movss [esi], xmm1
	ucomiss xmm1, xmm2
	jbe _Z21CG_GetWeapReticleZoomPK4cg_sPf_50
	divss xmm0, dword [eax+0x428]
	movss [esi], xmm0
_Z21CG_GetWeapReticleZoomPK4cg_sPf_50:
	ucomiss xmm0, [_float_0_01000000]
	jp _Z21CG_GetWeapReticleZoomPK4cg_sPf_60
	jbe _Z21CG_GetWeapReticleZoomPK4cg_sPf_30
_Z21CG_GetWeapReticleZoomPK4cg_sPf_60:
	ucomiss xmm0, xmm3
	jbe _Z21CG_GetWeapReticleZoomPK4cg_sPf_70
	mov dword [esi], 0x3f800000
_Z21CG_GetWeapReticleZoomPK4cg_sPf_70:
	mov eax, 0x1
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z21CG_GetWeapReticleZoomPK4cg_sPf_10:
	mov ecx, [eax+0x438]
	test ecx, ecx
	jnz _Z21CG_GetWeapReticleZoomPK4cg_sPf_80
_Z21CG_GetWeapReticleZoomPK4cg_sPf_30:
	xor eax, eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z21CG_GetWeapReticleZoomPK4cg_sPf_40:
	movss xmm3, dword [_float_1_00000000]
	movaps xmm0, xmm3
	subss xmm0, [eax+0x42c]
	subss xmm1, xmm0
	movaps xmm0, xmm1
	movss [esi], xmm1
	ucomiss xmm1, xmm2
	jbe _Z21CG_GetWeapReticleZoomPK4cg_sPf_50
	divss xmm0, dword [eax+0x42c]
	movss [esi], xmm0
	jmp _Z21CG_GetWeapReticleZoomPK4cg_sPf_50


;CG_CalcCrosshairPosition(cg_s const*, float*, float*)
_Z24CG_CalcCrosshairPositionPK4cg_sPfS2_:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x34
	mov ebx, [ebp+0x8]
	mov ecx, [ebx+0x4d368]
	mov edx, [ebx+0x50438]
	mov eax, [ebx+0x50434]
	mov [ebp-0x14], eax
	mov [ebp-0x10], edx
	mov [ebp-0xc], ecx
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	lea eax, [ebp-0x20]
	mov [esp+0x4], eax
	lea eax, [ebp-0x14]
	mov [esp], eax
	call _Z12AngleVectorsPKfPfS1_S1_
	lea eax, [ebx+0x492ec]
	movss xmm1, dword [ebp-0x20]
	movss xmm4, dword [ebp-0x1c]
	movss xmm5, dword [ebp-0x18]
	movaps xmm2, xmm1
	mulss xmm2, [ebx+0x492ec]
	movaps xmm0, xmm4
	mulss xmm0, [eax+0x4]
	addss xmm2, xmm0
	movaps xmm0, xmm5
	mulss xmm0, [eax+0x8]
	addss xmm2, xmm0
	ucomiss xmm2, [_float_0_00000000]
	jp _Z24CG_CalcCrosshairPositionPK4cg_sPfS2__10
	jbe _Z24CG_CalcCrosshairPositionPK4cg_sPfS2__20
_Z24CG_CalcCrosshairPositionPK4cg_sPfS2__10:
	movss xmm3, dword [ebx+0x492d8]
	pxor xmm0, xmm0
	ucomiss xmm0, xmm3
	jae _Z24CG_CalcCrosshairPositionPK4cg_sPfS2__20
	lea eax, [ebx+0x492f8]
	mulss xmm1, [ebx+0x492f8]
	mulss xmm4, [eax+0x4]
	addss xmm1, xmm4
	mulss xmm5, [eax+0x8]
	addss xmm1, xmm5
	mulss xmm3, xmm2
	divss xmm1, xmm3
	mulss xmm1, [_float__320_00000000]
	mov eax, [ebp+0xc]
	movss [eax], xmm1
	lea eax, [ebx+0x49304]
	movss xmm1, dword [ebx+0x49304]
	mulss xmm1, [ebp-0x20]
	movss xmm0, dword [eax+0x4]
	mulss xmm0, [ebp-0x1c]
	addss xmm1, xmm0
	movss xmm0, dword [eax+0x8]
	mulss xmm0, [ebp-0x18]
	addss xmm1, xmm0
	mulss xmm2, [ebx+0x492dc]
	divss xmm1, xmm2
	mulss xmm1, [_float__240_00000000]
	mov eax, [ebp+0x10]
	movss [eax], xmm1
	add esp, 0x34
	pop ebx
	pop ebp
	ret
_Z24CG_CalcCrosshairPositionPK4cg_sPfS2__20:
	mov eax, [ebp+0xc]
	mov dword [eax], 0x0
	mov eax, [ebp+0x10]
	mov dword [eax], 0x0
	add esp, 0x34
	pop ebx
	pop ebp
	ret


;CG_DrawNightVisionOverlay(int)
_Z25CG_DrawNightVisionOverlayi:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x44
	mov ebx, [ebp+0x8]
	mov [esp], ebx
	call _Z28CG_LookingThroughNightVisioni
	test al, al
	jz _Z25CG_DrawNightVisionOverlayi_10
	mov eax, cgMedia
	mov eax, [eax+0x2780]
	test eax, eax
	jz _Z25CG_DrawNightVisionOverlayi_20
	mov [esp+0x30], eax
	mov eax, colorWhite
	mov [esp+0x2c], eax
	mov eax, 0x3f800000
	mov [esp+0x28], eax
	mov [esp+0x24], eax
	xor eax, eax
	mov [esp+0x20], eax
	mov [esp+0x1c], eax
	mov dword [esp+0x18], 0x4
	mov dword [esp+0x14], 0x4
	mov dword [esp+0x10], 0x43f00000
	mov dword [esp+0xc], 0x44200000
	mov [esp+0x8], eax
	mov [esp+0x4], eax
	mov eax, ebx
	shl eax, 0x6
	lea eax, [eax+ebx*4]
	add eax, scrPlaceView
	mov [esp], eax
	call _Z17CL_DrawStretchPicPK15ScreenPlacementffffiiffffPKfP8Material
_Z25CG_DrawNightVisionOverlayi_10:
	add esp, 0x44
	pop ebx
	pop ebp
	ret
_Z25CG_DrawNightVisionOverlayi_20:
	mov dword [esp+0x4], _cstring_cg_drawnightvisi
	mov dword [esp], 0xe
	call _Z16Com_PrintWarningiPKcz
	add esp, 0x44
	pop ebx
	pop ebp
	ret
	nop


;Initialized global or static variables of cg_draw_reticles:
SECTION .data


;Initialized constant data of cg_draw_reticles:
SECTION .rdata


;Zero initialized global or static variables of cg_draw_reticles:
SECTION .bss


;All cstrings:
SECTION .rdata
_cstring_g_teamcolor_myte:		db "g_TeamColor_MyTeam",0
_cstring_g_teamcolor_enem:		db "g_TeamColor_EnemyTeam",0
_cstring_cg_drawnightvisi:		db "CG_DrawNightVisionOverlay(): Nightvision Assets not Precached.",0ah,0



;All constant floats and doubles:
SECTION .rdata
_float_480_00000000:		dd 0x43f00000	; 480
_float_320_00000000:		dd 0x43a00000	; 320
_float__0_50000000:		dd 0xbf000000	; -0.5
_float_0_99000001:		dd 0x3f7d70a4	; 0.99
_float_240_00000000:		dd 0x43700000	; 240
_float_1_00000000:		dd 0x3f800000	; 1
_float_0_01000000:		dd 0x3c23d70a	; 0.01
_float__255_00000000:		dd 0xc37f0000	; -255
_float_255_00000000:		dd 0x437f0000	; 255
_double_0_01745329:		dq 0x3f91df46a2529d39	; 0.0174533
_double_240_00000000:		dq 0x406e000000000000	; 240
_float_0_12500000:		dd 0x3e000000	; 0.125
_float_100_00000000:		dd 0x42c80000	; 100
_float_1_50000000:		dd 0x3fc00000	; 1.5
_float_0_00000000:		dd 0x0	; 0
_float__320_00000000:		dd 0xc3a00000	; -320
_float__240_00000000:		dd 0xc3700000	; -240

