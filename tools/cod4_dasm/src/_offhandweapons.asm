;Imports of offhandweapons:
	extern cg_weaponsArray
	extern _Z15BG_GetWeaponDefj
	extern cgArray
	extern _Z17Com_GetClientDObjii
	extern scr_const
	extern _Z21CG_DObjGetWorldTagPosPK7cpose_tP6DObj_sjPf
	extern _Z17CG_PlaySoundAliasiiPKfP16snd_alias_list_t
	extern _Z21BG_EvaluateTrajectoryPK12trajectory_tiPf
	extern _Z22CG_UpdateViewModelPosePK6DObj_si
	extern _Z23CG_PlayEntitySoundAliasiiP16snd_alias_list_t
	extern _Z27BG_GetFirstAvailableOffhandPK13playerState_si
	extern hud_fade_offhand
	extern floorf
	extern _Z14CG_FadeHudMenuiPK6dvar_sii
	extern _Z16BG_GetNumWeaponsv
	extern _Z2vaPKcz
	extern scrPlaceView
	extern _Z11UI_DrawTextPK15ScreenPlacementPKciP6Font_sffiifPKfi
	extern _Z26BG_GetFirstEquippedOffhandPK13playerState_si
	extern _Z16BG_ClipForWeaponi
	extern _Z16UI_DrawHandlePicPK15ScreenPlacementffffiiPKfP8Material
	extern _Z22UI_SafeTranslateStringPKc
	extern _Z17CG_MenuShowNotifyii
	extern cosf
	extern _Z18Dvar_RegisterFloatPKcffftS0_

;Exports of offhandweapons:
	global offhandStrings
	global hud_flash_period_offhand
	global hud_flash_time_offhand
	global _Z13CG_UseOffHandiPK9centity_sj
	global _Z14CG_PrepOffHandiPK13entityState_sj
	global _Z18CG_DrawOffHandAmmoiPK9rectDef_sP6Font_sfPKfi12OffhandClass
	global _Z18CG_DrawOffHandIconiPK9rectDef_sfPKfP8Material12OffhandClass
	global _Z18CG_DrawOffHandNameiPK9rectDef_sP6Font_sfPKfi12OffhandClass
	global _Z19CG_SwitchOffHandCmdi
	global _Z21CG_SetEquippedOffHandii
	global _Z23CG_DrawOffHandHighlightiPK9rectDef_sfPKfP8Material12OffhandClass
	global _Z23CG_OffhandRegisterDvarsv


SECTION .text


;CG_UseOffHand(int, centity_s const*, unsigned int)
_Z13CG_UseOffHandiPK9centity_sj:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov esi, [ebp+0xc]
	mov eax, [ebp+0x10]
	mov edx, eax
	shl edx, 0x6
	lea ebx, [edx+eax*4]
	add ebx, cg_weaponsArray
	mov [esp], eax
	call _Z15BG_GetWeaponDefj
	mov [ebp-0x2c], eax
	mov eax, [eax+0x170]
	test eax, eax
	jz _Z13CG_UseOffHandiPK9centity_sj_10
	mov edx, [esi+0xcc]
	mov edi, cgArray
	mov eax, [edi+0x24]
	cmp edx, [eax+0xe8]
	jz _Z13CG_UseOffHandiPK9centity_sj_20
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov [esp], edx
	call _Z17Com_GetClientDObjii
	mov edx, eax
	test eax, eax
	jz _Z13CG_UseOffHandiPK9centity_sj_30
	lea eax, [ebp-0x24]
	mov [esp+0xc], eax
	mov eax, scr_const
	movzx eax, word [eax+0x90]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov [esp], esi
	call _Z21CG_DObjGetWorldTagPosPK7cpose_tP6DObj_sjPf
	test eax, eax
	jz _Z13CG_UseOffHandiPK9centity_sj_30
_Z13CG_UseOffHandiPK9centity_sj_40:
	mov edx, [ebp-0x2c]
	mov eax, [edx+0x170]
	mov [esp+0xc], eax
	lea eax, [ebp-0x24]
	mov [esp+0x8], eax
	mov eax, [esi+0xcc]
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z17CG_PlaySoundAliasiiPKfP16snd_alias_list_t
_Z13CG_UseOffHandiPK9centity_sj_10:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z13CG_UseOffHandiPK9centity_sj_30:
	lea edx, [ebp-0x24]
	mov [esp+0x8], edx
_Z13CG_UseOffHandiPK9centity_sj_60:
	mov eax, [edi+0x46128]
	mov [esp+0x4], eax
	lea eax, [esi+0xd8]
	mov [esp], eax
	call _Z21BG_EvaluateTrajectoryPK12trajectory_tiPf
	jmp _Z13CG_UseOffHandiPK9centity_sj_40
_Z13CG_UseOffHandiPK9centity_sj_20:
	mov ebx, [ebx]
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z22CG_UpdateViewModelPosePK6DObj_si
	test ebx, ebx
	jz _Z13CG_UseOffHandiPK9centity_sj_50
	lea edx, [ebp-0x24]
	mov [esp+0xc], edx
	mov eax, scr_const
	movzx eax, word [eax+0x90]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	lea eax, [edi+0xfd234]
	mov [esp], eax
	call _Z21CG_DObjGetWorldTagPosPK7cpose_tP6DObj_sjPf
	test eax, eax
	jnz _Z13CG_UseOffHandiPK9centity_sj_40
_Z13CG_UseOffHandiPK9centity_sj_50:
	lea eax, [ebp-0x24]
	mov [esp+0x8], eax
	jmp _Z13CG_UseOffHandiPK9centity_sj_60


;CG_PrepOffHand(int, entityState_s const*, unsigned int)
_Z14CG_PrepOffHandiPK13entityState_sj:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x10]
	mov [esp], eax
	call _Z15BG_GetWeaponDefj
	mov eax, [eax+0x168]
	test eax, eax
	jz _Z14CG_PrepOffHandiPK13entityState_sj_10
	mov [esp+0x8], eax
	mov edx, [ebp+0xc]
	mov eax, [edx]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z23CG_PlayEntitySoundAliasiiP16snd_alias_list_t
_Z14CG_PrepOffHandiPK13entityState_sj_10:
	leave
	ret
	nop


;CG_DrawOffHandAmmo(int, rectDef_s const*, Font_s*, float, float const*, int, OffhandClass)
_Z18CG_DrawOffHandAmmoiPK9rectDef_sP6Font_sfPKfi12OffhandClass:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov esi, cgArray
	cmp dword [esi+0x46140], 0x6
	jg _Z18CG_DrawOffHandAmmoiPK9rectDef_sP6Font_sfPKfi12OffhandClass_10
	cmp byte [esi+0x4614c], 0x0
	jns _Z18CG_DrawOffHandAmmoiPK9rectDef_sP6Font_sfPKfi12OffhandClass_20
_Z18CG_DrawOffHandAmmoiPK9rectDef_sP6Font_sfPKfi12OffhandClass_10:
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z18CG_DrawOffHandAmmoiPK9rectDef_sP6Font_sfPKfi12OffhandClass_20:
	mov eax, [ebp+0x20]
	mov [esp+0x4], eax
	lea ebx, [esi+0x4613c]
	mov [esp], ebx
	call _Z27BG_GetFirstAvailableOffhandPK13playerState_si
	test eax, eax
	jz _Z18CG_DrawOffHandAmmoiPK9rectDef_sP6Font_sfPKfi12OffhandClass_30
_Z18CG_DrawOffHandAmmoiPK9rectDef_sP6Font_sfPKfi12OffhandClass_70:
	mov ecx, [ebp+0x18]
	movss xmm0, dword [ecx+0xc]
	movss [ebp-0x30], xmm0
	mov eax, hud_fade_offhand
	mov ebx, [eax]
	movss xmm0, dword [_float_1000_00000000]
	mulss xmm0, [ebx+0xc]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x34]
	cvttss2si eax, [ebp-0x34]
	mov [esp+0xc], eax
	mov eax, [esi+0x504c8]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z14CG_FadeHudMenuiPK6dvar_sii
	fstp dword [ebp-0x3c]
	movss xmm0, dword [ebp-0x3c]
	mulss xmm0, [ebp-0x30]
	movss [ebp-0x1c], xmm0
	ucomiss xmm0, [_float_0_00000000]
	jp _Z18CG_DrawOffHandAmmoiPK9rectDef_sP6Font_sfPKfi12OffhandClass_40
	jz _Z18CG_DrawOffHandAmmoiPK9rectDef_sP6Font_sfPKfi12OffhandClass_10
_Z18CG_DrawOffHandAmmoiPK9rectDef_sP6Font_sfPKfi12OffhandClass_40:
	call _Z16BG_GetNumWeaponsv
	mov edi, eax
	cmp eax, 0x1
	ja _Z18CG_DrawOffHandAmmoiPK9rectDef_sP6Font_sfPKfi12OffhandClass_50
	mov dword [ebp-0x2c], 0x0
_Z18CG_DrawOffHandAmmoiPK9rectDef_sP6Font_sfPKfi12OffhandClass_110:
	mov ecx, [ebp-0x2c]
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_i
	call _Z2vaPKcz
	mov edx, eax
	mov ebx, [ebp-0x2c]
	test ebx, ebx
	jnz _Z18CG_DrawOffHandAmmoiPK9rectDef_sP6Font_sfPKfi12OffhandClass_60
	mov dword [ebp-0x28], 0x3f63d70a
	mov dword [ebp-0x24], 0x3e3851ec
	mov dword [ebp-0x20], 0x3c23d70a
_Z18CG_DrawOffHandAmmoiPK9rectDef_sP6Font_sfPKfi12OffhandClass_80:
	mov eax, [ebp+0x1c]
	mov [esp+0x28], eax
	lea eax, [ebp-0x28]
	mov [esp+0x24], eax
	movss xmm0, dword [ebp+0x14]
	movss [esp+0x20], xmm0
	mov ecx, [ebp+0xc]
	mov eax, [ecx+0x14]
	mov [esp+0x1c], eax
	mov eax, [ecx+0x10]
	mov [esp+0x18], eax
	mov eax, [ecx+0x4]
	mov [esp+0x14], eax
	mov eax, [ecx]
	mov [esp+0x10], eax
	mov eax, [ebp+0x10]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x7fffffff
	mov [esp+0x4], edx
	mov eax, [ebp+0x8]
	shl eax, 0x6
	mov edx, [ebp+0x8]
	lea eax, [eax+edx*4]
	add eax, scrPlaceView
	mov [esp], eax
	call _Z11UI_DrawTextPK15ScreenPlacementPKciP6Font_sffiifPKfi
	jmp _Z18CG_DrawOffHandAmmoiPK9rectDef_sP6Font_sfPKfi12OffhandClass_10
_Z18CG_DrawOffHandAmmoiPK9rectDef_sP6Font_sfPKfi12OffhandClass_30:
	mov edx, [ebp+0x20]
	mov [esp+0x4], edx
	mov [esp], ebx
	call _Z26BG_GetFirstEquippedOffhandPK13playerState_si
	test eax, eax
	jz _Z18CG_DrawOffHandAmmoiPK9rectDef_sP6Font_sfPKfi12OffhandClass_10
	jmp _Z18CG_DrawOffHandAmmoiPK9rectDef_sP6Font_sfPKfi12OffhandClass_70
_Z18CG_DrawOffHandAmmoiPK9rectDef_sP6Font_sfPKfi12OffhandClass_60:
	mov ecx, [ebp+0x18]
	mov eax, [ecx]
	mov [ebp-0x28], eax
	mov eax, [ecx+0x4]
	mov [ebp-0x24], eax
	mov eax, [ecx+0x8]
	mov [ebp-0x20], eax
	jmp _Z18CG_DrawOffHandAmmoiPK9rectDef_sP6Font_sfPKfi12OffhandClass_80
_Z18CG_DrawOffHandAmmoiPK9rectDef_sP6Font_sfPKfi12OffhandClass_50:
	mov ebx, 0x1
	mov dword [ebp-0x2c], 0x0
	lea edx, [esi+0x46698]
	mov [ebp-0x38], edx
_Z18CG_DrawOffHandAmmoiPK9rectDef_sP6Font_sfPKfi12OffhandClass_100:
	mov eax, ebx
	sar eax, 0x5
	mov ecx, ebx
	and ecx, 0x1f
	mov edx, 0x1
	shl edx, cl
	mov ecx, edx
	mov edx, [ebp-0x38]
	test [edx+eax*4], ecx
	jnz _Z18CG_DrawOffHandAmmoiPK9rectDef_sP6Font_sfPKfi12OffhandClass_90
_Z18CG_DrawOffHandAmmoiPK9rectDef_sP6Font_sfPKfi12OffhandClass_120:
	add ebx, 0x1
	cmp edi, ebx
	jnz _Z18CG_DrawOffHandAmmoiPK9rectDef_sP6Font_sfPKfi12OffhandClass_100
	jmp _Z18CG_DrawOffHandAmmoiPK9rectDef_sP6Font_sfPKfi12OffhandClass_110
_Z18CG_DrawOffHandAmmoiPK9rectDef_sP6Font_sfPKfi12OffhandClass_90:
	mov [esp], ebx
	call _Z15BG_GetWeaponDefj
	mov ecx, [ebp+0x20]
	cmp ecx, [eax+0x144]
	jnz _Z18CG_DrawOffHandAmmoiPK9rectDef_sP6Font_sfPKfi12OffhandClass_120
	mov [esp], ebx
	call _Z16BG_ClipForWeaponi
	mov edx, [esi+eax*4+0x46498]
	add [ebp-0x2c], edx
	jmp _Z18CG_DrawOffHandAmmoiPK9rectDef_sP6Font_sfPKfi12OffhandClass_120


;CG_DrawOffHandIcon(int, rectDef_s const*, float, float const*, Material*, OffhandClass)
_Z18CG_DrawOffHandIconiPK9rectDef_sfPKfP8Material12OffhandClass:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x60
	mov esi, cgArray
	cmp dword [esi+0x46140], 0x6
	jg _Z18CG_DrawOffHandIconiPK9rectDef_sfPKfP8Material12OffhandClass_10
	cmp byte [esi+0x4614c], 0x0
	jns _Z18CG_DrawOffHandIconiPK9rectDef_sfPKfP8Material12OffhandClass_20
_Z18CG_DrawOffHandIconiPK9rectDef_sfPKfP8Material12OffhandClass_10:
	add esp, 0x60
	pop ebx
	pop esi
	pop ebp
	ret
_Z18CG_DrawOffHandIconiPK9rectDef_sfPKfP8Material12OffhandClass_20:
	mov eax, [ebp+0x1c]
	mov [esp+0x4], eax
	lea ebx, [esi+0x4613c]
	mov [esp], ebx
	call _Z27BG_GetFirstAvailableOffhandPK13playerState_si
	test eax, eax
	jz _Z18CG_DrawOffHandIconiPK9rectDef_sfPKfP8Material12OffhandClass_30
_Z18CG_DrawOffHandIconiPK9rectDef_sfPKfP8Material12OffhandClass_80:
	mov eax, [ebp+0x14]
	movss xmm0, dword [eax+0xc]
	movss [ebp-0x1c], xmm0
	mov eax, hud_fade_offhand
	mov ebx, [eax]
	movss xmm0, dword [_float_1000_00000000]
	mulss xmm0, [ebx+0xc]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x20]
	cvttss2si eax, [ebp-0x20]
	mov [esp+0xc], eax
	mov eax, [esi+0x504c8]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z14CG_FadeHudMenuiPK6dvar_sii
	fstp dword [ebp-0x2c]
	movss xmm0, dword [ebp-0x2c]
	mulss xmm0, [ebp-0x1c]
	movss [ebp-0xc], xmm0
	ucomiss xmm0, [_float_0_00000000]
	jp _Z18CG_DrawOffHandIconiPK9rectDef_sfPKfP8Material12OffhandClass_40
	jz _Z18CG_DrawOffHandIconiPK9rectDef_sfPKfP8Material12OffhandClass_10
_Z18CG_DrawOffHandIconiPK9rectDef_sfPKfP8Material12OffhandClass_40:
	mov edx, [ebp+0x14]
	mov eax, [edx]
	mov [ebp-0x18], eax
	mov eax, [edx+0x4]
	mov [ebp-0x14], eax
	mov eax, [edx+0x8]
	mov [ebp-0x10], eax
	mov eax, [esi+0x5037c]
	test eax, eax
	jz _Z18CG_DrawOffHandIconiPK9rectDef_sfPKfP8Material12OffhandClass_50
	mov [esp], eax
	call _Z15BG_GetWeaponDefj
	mov edx, [ebp+0x1c]
	cmp edx, [eax+0x144]
	jz _Z18CG_DrawOffHandIconiPK9rectDef_sfPKfP8Material12OffhandClass_60
_Z18CG_DrawOffHandIconiPK9rectDef_sfPKfP8Material12OffhandClass_50:
	mov eax, [ebp+0x1c]
	mov [esp+0x4], eax
	mov ebx, cgArray
	add ebx, 0x4613c
	mov [esp], ebx
	call _Z27BG_GetFirstAvailableOffhandPK13playerState_si
	test eax, eax
	jz _Z18CG_DrawOffHandIconiPK9rectDef_sfPKfP8Material12OffhandClass_70
_Z18CG_DrawOffHandIconiPK9rectDef_sfPKfP8Material12OffhandClass_90:
	mov [esp], eax
	call _Z15BG_GetWeaponDefj
	mov eax, [eax+0x30c]
	mov [esp+0x20], eax
	lea eax, [ebp-0x18]
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
	call _Z16UI_DrawHandlePicPK15ScreenPlacementffffiiPKfP8Material
	jmp _Z18CG_DrawOffHandIconiPK9rectDef_sfPKfP8Material12OffhandClass_10
_Z18CG_DrawOffHandIconiPK9rectDef_sfPKfP8Material12OffhandClass_30:
	mov edx, [ebp+0x1c]
	mov [esp+0x4], edx
	mov [esp], ebx
	call _Z26BG_GetFirstEquippedOffhandPK13playerState_si
	test eax, eax
	jz _Z18CG_DrawOffHandIconiPK9rectDef_sfPKfP8Material12OffhandClass_10
	jmp _Z18CG_DrawOffHandIconiPK9rectDef_sfPKfP8Material12OffhandClass_80
_Z18CG_DrawOffHandIconiPK9rectDef_sfPKfP8Material12OffhandClass_60:
	mov eax, [esi+0x5037c]
	test eax, eax
	jnz _Z18CG_DrawOffHandIconiPK9rectDef_sfPKfP8Material12OffhandClass_90
	jmp _Z18CG_DrawOffHandIconiPK9rectDef_sfPKfP8Material12OffhandClass_50
_Z18CG_DrawOffHandIconiPK9rectDef_sfPKfP8Material12OffhandClass_70:
	mov edx, [ebp+0x1c]
	mov [esp+0x4], edx
	mov [esp], ebx
	call _Z26BG_GetFirstEquippedOffhandPK13playerState_si
	test eax, eax
	jz _Z18CG_DrawOffHandIconiPK9rectDef_sfPKfP8Material12OffhandClass_10
	jmp _Z18CG_DrawOffHandIconiPK9rectDef_sfPKfP8Material12OffhandClass_90


;CG_DrawOffHandName(int, rectDef_s const*, Font_s*, float, float const*, int, OffhandClass)
_Z18CG_DrawOffHandNameiPK9rectDef_sP6Font_sfPKfi12OffhandClass:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x60
	mov esi, cgArray
	cmp dword [esi+0x46140], 0x6
	jg _Z18CG_DrawOffHandNameiPK9rectDef_sP6Font_sfPKfi12OffhandClass_10
	cmp byte [esi+0x4614c], 0x0
	jns _Z18CG_DrawOffHandNameiPK9rectDef_sP6Font_sfPKfi12OffhandClass_20
_Z18CG_DrawOffHandNameiPK9rectDef_sP6Font_sfPKfi12OffhandClass_10:
	add esp, 0x60
	pop ebx
	pop esi
	pop ebp
	ret
_Z18CG_DrawOffHandNameiPK9rectDef_sP6Font_sfPKfi12OffhandClass_20:
	mov eax, [ebp+0x20]
	mov [esp+0x4], eax
	lea ebx, [esi+0x4613c]
	mov [esp], ebx
	call _Z27BG_GetFirstAvailableOffhandPK13playerState_si
	test eax, eax
	jz _Z18CG_DrawOffHandNameiPK9rectDef_sP6Font_sfPKfi12OffhandClass_30
_Z18CG_DrawOffHandNameiPK9rectDef_sP6Font_sfPKfi12OffhandClass_50:
	mov ecx, [ebp+0x18]
	movss xmm0, dword [ecx+0xc]
	movss [ebp-0x1c], xmm0
	mov eax, hud_fade_offhand
	mov ebx, [eax]
	movss xmm0, dword [_float_1000_00000000]
	mulss xmm0, [ebx+0xc]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x20]
	cvttss2si eax, [ebp-0x20]
	mov [esp+0xc], eax
	mov eax, [esi+0x504c8]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z14CG_FadeHudMenuiPK6dvar_sii
	fstp dword [ebp-0x2c]
	movss xmm0, dword [ebp-0x2c]
	mulss xmm0, [ebp-0x1c]
	movss [ebp-0xc], xmm0
	ucomiss xmm0, [_float_0_00000000]
	jp _Z18CG_DrawOffHandNameiPK9rectDef_sP6Font_sfPKfi12OffhandClass_40
	jz _Z18CG_DrawOffHandNameiPK9rectDef_sP6Font_sfPKfi12OffhandClass_10
_Z18CG_DrawOffHandNameiPK9rectDef_sP6Font_sfPKfi12OffhandClass_40:
	mov edx, [ebp+0x18]
	mov eax, [edx]
	mov [ebp-0x18], eax
	mov eax, [edx+0x4]
	mov [ebp-0x14], eax
	mov eax, [edx+0x8]
	mov [ebp-0x10], eax
	mov ecx, [ebp+0x20]
	mov eax, [ecx*4+offhandStrings]
	mov [esp], eax
	call _Z22UI_SafeTranslateStringPKc
	mov edx, [ebp+0x1c]
	mov [esp+0x28], edx
	lea edx, [ebp-0x18]
	mov [esp+0x24], edx
	movss xmm0, dword [ebp+0x14]
	movss [esp+0x20], xmm0
	mov ecx, [ebp+0xc]
	mov edx, [ecx+0x14]
	mov [esp+0x1c], edx
	mov edx, [ecx+0x10]
	mov [esp+0x18], edx
	mov edx, [ecx+0x4]
	mov [esp+0x14], edx
	mov edx, [ecx]
	mov [esp+0x10], edx
	mov edx, [ebp+0x10]
	mov [esp+0xc], edx
	mov dword [esp+0x8], 0x7fffffff
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	shl eax, 0x6
	mov ecx, [ebp+0x8]
	lea eax, [eax+ecx*4]
	add eax, scrPlaceView
	mov [esp], eax
	call _Z11UI_DrawTextPK15ScreenPlacementPKciP6Font_sffiifPKfi
	jmp _Z18CG_DrawOffHandNameiPK9rectDef_sP6Font_sfPKfi12OffhandClass_10
_Z18CG_DrawOffHandNameiPK9rectDef_sP6Font_sfPKfi12OffhandClass_30:
	mov edx, [ebp+0x20]
	mov [esp+0x4], edx
	mov [esp], ebx
	call _Z26BG_GetFirstEquippedOffhandPK13playerState_si
	test eax, eax
	jz _Z18CG_DrawOffHandNameiPK9rectDef_sP6Font_sfPKfi12OffhandClass_10
	jmp _Z18CG_DrawOffHandNameiPK9rectDef_sP6Font_sfPKfi12OffhandClass_50


;CG_SwitchOffHandCmd(int)
_Z19CG_SwitchOffHandCmdi:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, cgArray
	mov eax, [ebx+0x5037c]
	test eax, eax
	jnz _Z19CG_SwitchOffHandCmdi_10
_Z19CG_SwitchOffHandCmdi_20:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z19CG_SwitchOffHandCmdi_10:
	mov [esp], eax
	call _Z15BG_GetWeaponDefj
	mov eax, [eax+0x144]
	mov [esp+0x4], eax
	lea eax, [ebx+0x4613c]
	mov [esp], eax
	call _Z27BG_GetFirstAvailableOffhandPK13playerState_si
	test eax, eax
	jz _Z19CG_SwitchOffHandCmdi_20
	mov [ebx+0x5037c], eax
	mov dword [esp+0x4], 0x4
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z17CG_MenuShowNotifyii
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;CG_SetEquippedOffHand(int, int)
_Z21CG_SetEquippedOffHandii:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov eax, cgArray
	mov [eax+0x5037c], edx
	mov dword [ebp+0xc], 0x4
	mov [ebp+0x8], ecx
	pop ebp
	jmp _Z17CG_MenuShowNotifyii


;CG_DrawOffHandHighlight(int, rectDef_s const*, float, float const*, Material*, OffhandClass)
_Z23CG_DrawOffHandHighlightiPK9rectDef_sfPKfP8Material12OffhandClass:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x7c
	mov esi, cgArray
	cmp dword [esi+0x46140], 0x6
	jg _Z23CG_DrawOffHandHighlightiPK9rectDef_sfPKfP8Material12OffhandClass_10
	cmp byte [esi+0x4614c], 0x0
	jns _Z23CG_DrawOffHandHighlightiPK9rectDef_sfPKfP8Material12OffhandClass_20
_Z23CG_DrawOffHandHighlightiPK9rectDef_sfPKfP8Material12OffhandClass_10:
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z23CG_DrawOffHandHighlightiPK9rectDef_sfPKfP8Material12OffhandClass_20:
	mov eax, [ebp+0x1c]
	mov [esp+0x4], eax
	lea ebx, [esi+0x4613c]
	mov [esp], ebx
	call _Z27BG_GetFirstAvailableOffhandPK13playerState_si
	test eax, eax
	jz _Z23CG_DrawOffHandHighlightiPK9rectDef_sfPKfP8Material12OffhandClass_30
_Z23CG_DrawOffHandHighlightiPK9rectDef_sfPKfP8Material12OffhandClass_90:
	mov ecx, [esi+0x5037c]
	test ecx, ecx
	jz _Z23CG_DrawOffHandHighlightiPK9rectDef_sfPKfP8Material12OffhandClass_10
	mov ecx, [ebp+0x14]
	movss xmm0, dword [ecx+0xc]
	movss [ebp-0x2c], xmm0
	mov eax, hud_fade_offhand
	mov ebx, [eax]
	movss xmm0, dword [_float_1000_00000000]
	mulss xmm0, [ebx+0xc]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x38]
	cvttss2si eax, [ebp-0x38]
	mov [esp+0xc], eax
	mov eax, [esi+0x504c8]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z14CG_FadeHudMenuiPK6dvar_sii
	fstp dword [ebp-0x34]
	movss xmm0, dword [ebp-0x2c]
	mulss xmm0, [ebp-0x34]
	movss [ebp-0x2c], xmm0
	ucomiss xmm0, [_float_0_00000000]
	jp _Z23CG_DrawOffHandHighlightiPK9rectDef_sfPKfP8Material12OffhandClass_40
	jz _Z23CG_DrawOffHandHighlightiPK9rectDef_sfPKfP8Material12OffhandClass_10
_Z23CG_DrawOffHandHighlightiPK9rectDef_sfPKfP8Material12OffhandClass_40:
	mov eax, [esi+0x5037c]
	mov [esp], eax
	call _Z15BG_GetWeaponDefj
	mov edx, [ebp+0x1c]
	cmp edx, [eax+0x144]
	jnz _Z23CG_DrawOffHandHighlightiPK9rectDef_sfPKfP8Material12OffhandClass_10
	call _Z16BG_GetNumWeaponsv
	mov edi, eax
	cmp eax, 0x1
	jbe _Z23CG_DrawOffHandHighlightiPK9rectDef_sfPKfP8Material12OffhandClass_50
	mov ebx, 0x1
	mov dword [ebp-0x30], 0x0
	mov [ebp-0x3c], esi
_Z23CG_DrawOffHandHighlightiPK9rectDef_sfPKfP8Material12OffhandClass_70:
	mov eax, ebx
	sar eax, 0x5
	mov ecx, ebx
	and ecx, 0x1f
	mov edx, 0x1
	shl edx, cl
	test [esi+eax*4+0x46698], edx
	jnz _Z23CG_DrawOffHandHighlightiPK9rectDef_sfPKfP8Material12OffhandClass_60
_Z23CG_DrawOffHandHighlightiPK9rectDef_sfPKfP8Material12OffhandClass_110:
	add ebx, 0x1
	cmp edi, ebx
	jnz _Z23CG_DrawOffHandHighlightiPK9rectDef_sfPKfP8Material12OffhandClass_70
	mov edx, [ebp-0x30]
	test edx, edx
	jz _Z23CG_DrawOffHandHighlightiPK9rectDef_sfPKfP8Material12OffhandClass_50
	mov ecx, [ebp+0x14]
	mov eax, [ecx]
	mov edx, [ecx+0x4]
	mov ecx, [ecx+0x8]
_Z23CG_DrawOffHandHighlightiPK9rectDef_sfPKfP8Material12OffhandClass_120:
	mov [ebp-0x28], eax
	mov [ebp-0x24], edx
	mov [ebp-0x20], ecx
	movss xmm0, dword [ebp-0x2c]
	movss [ebp-0x1c], xmm0
	mov eax, [esi+0x46128]
	sub eax, [esi+0x504cc]
	cvtsi2ss xmm1, eax
	divss xmm1, dword [_float_1000_00000000]
	mov eax, [hud_flash_time_offhand]
	movss xmm0, dword [eax+0xc]
	ucomiss xmm0, xmm1
	jbe _Z23CG_DrawOffHandHighlightiPK9rectDef_sfPKfP8Material12OffhandClass_80
	mulss xmm1, [_float_6_28318548]
	mov eax, [hud_flash_period_offhand]
	divss xmm1, dword [eax+0xc]
	movss [esp], xmm1
	call cosf
	fstp dword [ebp-0x4c]
	movss xmm0, dword [ebp-0x4c]
	movss xmm1, dword [_float_0_50000000]
	mulss xmm0, xmm1
	addss xmm0, xmm1
	mulss xmm0, [ebp-0x2c]
	movss [ebp-0x1c], xmm0
_Z23CG_DrawOffHandHighlightiPK9rectDef_sfPKfP8Material12OffhandClass_80:
	mov eax, [ebp+0x18]
	mov [esp+0x20], eax
	lea eax, [ebp-0x28]
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
	mov ecx, [ebp+0x8]
	lea eax, [eax+ecx*4]
	add eax, scrPlaceView
	mov [esp], eax
	call _Z16UI_DrawHandlePicPK15ScreenPlacementffffiiPKfP8Material
	jmp _Z23CG_DrawOffHandHighlightiPK9rectDef_sfPKfP8Material12OffhandClass_10
_Z23CG_DrawOffHandHighlightiPK9rectDef_sfPKfP8Material12OffhandClass_30:
	mov edx, [ebp+0x1c]
	mov [esp+0x4], edx
	mov [esp], ebx
	call _Z26BG_GetFirstEquippedOffhandPK13playerState_si
	test eax, eax
	jz _Z23CG_DrawOffHandHighlightiPK9rectDef_sfPKfP8Material12OffhandClass_10
	jmp _Z23CG_DrawOffHandHighlightiPK9rectDef_sfPKfP8Material12OffhandClass_90
_Z23CG_DrawOffHandHighlightiPK9rectDef_sfPKfP8Material12OffhandClass_60:
	mov [esp], ebx
	call _Z15BG_GetWeaponDefj
	mov ecx, [ebp+0x1c]
	cmp ecx, [eax+0x144]
	jz _Z23CG_DrawOffHandHighlightiPK9rectDef_sfPKfP8Material12OffhandClass_100
	mov esi, [ebp-0x3c]
	jmp _Z23CG_DrawOffHandHighlightiPK9rectDef_sfPKfP8Material12OffhandClass_110
_Z23CG_DrawOffHandHighlightiPK9rectDef_sfPKfP8Material12OffhandClass_50:
	mov ecx, 0x3c23d70a
	mov edx, 0x3e3851ec
	mov eax, 0x3f63d70a
	jmp _Z23CG_DrawOffHandHighlightiPK9rectDef_sfPKfP8Material12OffhandClass_120
_Z23CG_DrawOffHandHighlightiPK9rectDef_sfPKfP8Material12OffhandClass_100:
	mov [esp], ebx
	call _Z16BG_ClipForWeaponi
	mov edx, [esi+eax*4+0x46498]
	add [ebp-0x30], edx
	jmp _Z23CG_DrawOffHandHighlightiPK9rectDef_sfPKfP8Material12OffhandClass_110
	nop


;CG_OffhandRegisterDvars()
_Z23CG_OffhandRegisterDvarsv:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x20
	mov dword [esp+0x14], _cstring_offhand_weapons_
	mov dword [esp+0x10], 0x1
	mov esi, 0x41f00000
	mov [esp+0xc], esi
	xor ebx, ebx
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x40000000
	mov dword [esp], _cstring_hud_flash_time_o
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [hud_flash_time_offhand], eax
	mov dword [esp+0x14], _cstring_offhand_weapons_1
	mov dword [esp+0x10], 0x1
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x3f000000
	mov dword [esp], _cstring_hud_flash_period
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [hud_flash_period_offhand], eax
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret


;Initialized global or static variables of offhandweapons:
SECTION .data
offhandStrings: dd _cstring_null, _cstring_weapon_fraggrena, _cstring_weapon_smokegren, _cstring_weapon_flashgren, 0x0, 0x0, 0x0, 0x0


;Initialized constant data of offhandweapons:
SECTION .rdata


;Zero initialized global or static variables of offhandweapons:
SECTION .bss
hud_flash_period_offhand: resb 0x4
hud_flash_time_offhand: resb 0x7c


;All cstrings:
SECTION .rdata
_cstring_i:		db "%i",0
_cstring_offhand_weapons_:		db "Offhand weapons flash duration on changing weapon",0
_cstring_hud_flash_time_o:		db "hud_flash_time_offhand",0
_cstring_offhand_weapons_1:		db "Offhand weapons flash period on changing weapon",0
_cstring_hud_flash_period:		db "hud_flash_period_offhand",0
_cstring_null:		db 0
_cstring_weapon_fraggrena:		db "WEAPON_FRAGGRENADE",0
_cstring_weapon_smokegren:		db "WEAPON_SMOKEGRENADE",0
_cstring_weapon_flashgren:		db "WEAPON_FLASHGRENADE",0



;All constant floats and doubles:
SECTION .rdata
_float_1000_00000000:		dd 0x447a0000	; 1000
_float_0_50000000:		dd 0x3f000000	; 0.5
_float_0_00000000:		dd 0x0	; 0
_float_6_28318548:		dd 0x40c90fdb	; 6.28319

