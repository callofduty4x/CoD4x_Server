;Imports of offhandweapons:
	extern cg_weaponsArray
	extern BG_GetWeaponDef
	extern cgArray
	extern Com_GetClientDObj
	extern scr_const
	extern CG_DObjGetWorldTagPos
	extern CG_PlaySoundAlias
	extern BG_EvaluateTrajectory
	extern CG_UpdateViewModelPose
	extern CG_PlayEntitySoundAlias
	extern BG_GetFirstAvailableOffhand
	extern hud_fade_offhand
	extern floorf
	extern CG_FadeHudMenu
	extern BG_GetNumWeapons
	extern va
	extern scrPlaceView
	extern UI_DrawText
	extern BG_GetFirstEquippedOffhand
	extern BG_ClipForWeapon
	extern UI_DrawHandlePic
	extern UI_SafeTranslateString
	extern CG_MenuShowNotify
	extern cosf
	extern Cvar_RegisterFloat

;Exports of offhandweapons:
	global offhandStrings
	global hud_flash_period_offhand
	global hud_flash_time_offhand
	global CG_UseOffHand
	global CG_PrepOffHand
	global CG_DrawOffHandAmmo
	global CG_DrawOffHandIcon
	global CG_DrawOffHandName
	global CG_SwitchOffHandCmd
	global CG_SetEquippedOffHand
	global CG_DrawOffHandHighlight
	global CG_OffhandRegisterDvars


SECTION .text


;CG_UseOffHand(int, centity_s const*, unsigned int)
CG_UseOffHand:
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
	call BG_GetWeaponDef
	mov [ebp-0x2c], eax
	mov eax, [eax+0x170]
	test eax, eax
	jz CG_UseOffHand_10
	mov edx, [esi+0xcc]
	mov edi, cgArray
	mov eax, [edi+0x24]
	cmp edx, [eax+0xe8]
	jz CG_UseOffHand_20
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov [esp], edx
	call Com_GetClientDObj
	mov edx, eax
	test eax, eax
	jz CG_UseOffHand_30
	lea eax, [ebp-0x24]
	mov [esp+0xc], eax
	mov eax, scr_const
	movzx eax, word [eax+0x90]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov [esp], esi
	call CG_DObjGetWorldTagPos
	test eax, eax
	jz CG_UseOffHand_30
CG_UseOffHand_40:
	mov edx, [ebp-0x2c]
	mov eax, [edx+0x170]
	mov [esp+0xc], eax
	lea eax, [ebp-0x24]
	mov [esp+0x8], eax
	mov eax, [esi+0xcc]
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov [esp], edx
	call CG_PlaySoundAlias
CG_UseOffHand_10:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_UseOffHand_30:
	lea edx, [ebp-0x24]
	mov [esp+0x8], edx
CG_UseOffHand_60:
	mov eax, [edi+0x46128]
	mov [esp+0x4], eax
	lea eax, [esi+0xd8]
	mov [esp], eax
	call BG_EvaluateTrajectory
	jmp CG_UseOffHand_40
CG_UseOffHand_20:
	mov ebx, [ebx]
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov [esp], ebx
	call CG_UpdateViewModelPose
	test ebx, ebx
	jz CG_UseOffHand_50
	lea edx, [ebp-0x24]
	mov [esp+0xc], edx
	mov eax, scr_const
	movzx eax, word [eax+0x90]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	lea eax, [edi+0xfd234]
	mov [esp], eax
	call CG_DObjGetWorldTagPos
	test eax, eax
	jnz CG_UseOffHand_40
CG_UseOffHand_50:
	lea eax, [ebp-0x24]
	mov [esp+0x8], eax
	jmp CG_UseOffHand_60


;CG_PrepOffHand(int, entityState_s const*, unsigned int)
CG_PrepOffHand:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x10]
	mov [esp], eax
	call BG_GetWeaponDef
	mov eax, [eax+0x168]
	test eax, eax
	jz CG_PrepOffHand_10
	mov [esp+0x8], eax
	mov edx, [ebp+0xc]
	mov eax, [edx]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_PlayEntitySoundAlias
CG_PrepOffHand_10:
	leave
	ret
	nop


;CG_DrawOffHandAmmo(int, rectDef_s const*, Font_s*, float, float const*, int, OffhandClass)
CG_DrawOffHandAmmo:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov esi, cgArray
	cmp dword [esi+0x46140], 0x6
	jg CG_DrawOffHandAmmo_10
	cmp byte [esi+0x4614c], 0x0
	jns CG_DrawOffHandAmmo_20
CG_DrawOffHandAmmo_10:
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_DrawOffHandAmmo_20:
	mov eax, [ebp+0x20]
	mov [esp+0x4], eax
	lea ebx, [esi+0x4613c]
	mov [esp], ebx
	call BG_GetFirstAvailableOffhand
	test eax, eax
	jz CG_DrawOffHandAmmo_30
CG_DrawOffHandAmmo_70:
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
	call CG_FadeHudMenu
	fstp dword [ebp-0x3c]
	movss xmm0, dword [ebp-0x3c]
	mulss xmm0, [ebp-0x30]
	movss [ebp-0x1c], xmm0
	ucomiss xmm0, [_float_0_00000000]
	jp CG_DrawOffHandAmmo_40
	jz CG_DrawOffHandAmmo_10
CG_DrawOffHandAmmo_40:
	call BG_GetNumWeapons
	mov edi, eax
	cmp eax, 0x1
	ja CG_DrawOffHandAmmo_50
	mov dword [ebp-0x2c], 0x0
CG_DrawOffHandAmmo_110:
	mov ecx, [ebp-0x2c]
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_i
	call va
	mov edx, eax
	mov ebx, [ebp-0x2c]
	test ebx, ebx
	jnz CG_DrawOffHandAmmo_60
	mov dword [ebp-0x28], 0x3f63d70a
	mov dword [ebp-0x24], 0x3e3851ec
	mov dword [ebp-0x20], 0x3c23d70a
CG_DrawOffHandAmmo_80:
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
	call UI_DrawText
	jmp CG_DrawOffHandAmmo_10
CG_DrawOffHandAmmo_30:
	mov edx, [ebp+0x20]
	mov [esp+0x4], edx
	mov [esp], ebx
	call BG_GetFirstEquippedOffhand
	test eax, eax
	jz CG_DrawOffHandAmmo_10
	jmp CG_DrawOffHandAmmo_70
CG_DrawOffHandAmmo_60:
	mov ecx, [ebp+0x18]
	mov eax, [ecx]
	mov [ebp-0x28], eax
	mov eax, [ecx+0x4]
	mov [ebp-0x24], eax
	mov eax, [ecx+0x8]
	mov [ebp-0x20], eax
	jmp CG_DrawOffHandAmmo_80
CG_DrawOffHandAmmo_50:
	mov ebx, 0x1
	mov dword [ebp-0x2c], 0x0
	lea edx, [esi+0x46698]
	mov [ebp-0x38], edx
CG_DrawOffHandAmmo_100:
	mov eax, ebx
	sar eax, 0x5
	mov ecx, ebx
	and ecx, 0x1f
	mov edx, 0x1
	shl edx, cl
	mov ecx, edx
	mov edx, [ebp-0x38]
	test [edx+eax*4], ecx
	jnz CG_DrawOffHandAmmo_90
CG_DrawOffHandAmmo_120:
	add ebx, 0x1
	cmp edi, ebx
	jnz CG_DrawOffHandAmmo_100
	jmp CG_DrawOffHandAmmo_110
CG_DrawOffHandAmmo_90:
	mov [esp], ebx
	call BG_GetWeaponDef
	mov ecx, [ebp+0x20]
	cmp ecx, [eax+0x144]
	jnz CG_DrawOffHandAmmo_120
	mov [esp], ebx
	call BG_ClipForWeapon
	mov edx, [esi+eax*4+0x46498]
	add [ebp-0x2c], edx
	jmp CG_DrawOffHandAmmo_120


;CG_DrawOffHandIcon(int, rectDef_s const*, float, float const*, Material*, OffhandClass)
CG_DrawOffHandIcon:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x60
	mov esi, cgArray
	cmp dword [esi+0x46140], 0x6
	jg CG_DrawOffHandIcon_10
	cmp byte [esi+0x4614c], 0x0
	jns CG_DrawOffHandIcon_20
CG_DrawOffHandIcon_10:
	add esp, 0x60
	pop ebx
	pop esi
	pop ebp
	ret
CG_DrawOffHandIcon_20:
	mov eax, [ebp+0x1c]
	mov [esp+0x4], eax
	lea ebx, [esi+0x4613c]
	mov [esp], ebx
	call BG_GetFirstAvailableOffhand
	test eax, eax
	jz CG_DrawOffHandIcon_30
CG_DrawOffHandIcon_80:
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
	call CG_FadeHudMenu
	fstp dword [ebp-0x2c]
	movss xmm0, dword [ebp-0x2c]
	mulss xmm0, [ebp-0x1c]
	movss [ebp-0xc], xmm0
	ucomiss xmm0, [_float_0_00000000]
	jp CG_DrawOffHandIcon_40
	jz CG_DrawOffHandIcon_10
CG_DrawOffHandIcon_40:
	mov edx, [ebp+0x14]
	mov eax, [edx]
	mov [ebp-0x18], eax
	mov eax, [edx+0x4]
	mov [ebp-0x14], eax
	mov eax, [edx+0x8]
	mov [ebp-0x10], eax
	mov eax, [esi+0x5037c]
	test eax, eax
	jz CG_DrawOffHandIcon_50
	mov [esp], eax
	call BG_GetWeaponDef
	mov edx, [ebp+0x1c]
	cmp edx, [eax+0x144]
	jz CG_DrawOffHandIcon_60
CG_DrawOffHandIcon_50:
	mov eax, [ebp+0x1c]
	mov [esp+0x4], eax
	mov ebx, cgArray
	add ebx, 0x4613c
	mov [esp], ebx
	call BG_GetFirstAvailableOffhand
	test eax, eax
	jz CG_DrawOffHandIcon_70
CG_DrawOffHandIcon_90:
	mov [esp], eax
	call BG_GetWeaponDef
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
	call UI_DrawHandlePic
	jmp CG_DrawOffHandIcon_10
CG_DrawOffHandIcon_30:
	mov edx, [ebp+0x1c]
	mov [esp+0x4], edx
	mov [esp], ebx
	call BG_GetFirstEquippedOffhand
	test eax, eax
	jz CG_DrawOffHandIcon_10
	jmp CG_DrawOffHandIcon_80
CG_DrawOffHandIcon_60:
	mov eax, [esi+0x5037c]
	test eax, eax
	jnz CG_DrawOffHandIcon_90
	jmp CG_DrawOffHandIcon_50
CG_DrawOffHandIcon_70:
	mov edx, [ebp+0x1c]
	mov [esp+0x4], edx
	mov [esp], ebx
	call BG_GetFirstEquippedOffhand
	test eax, eax
	jz CG_DrawOffHandIcon_10
	jmp CG_DrawOffHandIcon_90


;CG_DrawOffHandName(int, rectDef_s const*, Font_s*, float, float const*, int, OffhandClass)
CG_DrawOffHandName:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x60
	mov esi, cgArray
	cmp dword [esi+0x46140], 0x6
	jg CG_DrawOffHandName_10
	cmp byte [esi+0x4614c], 0x0
	jns CG_DrawOffHandName_20
CG_DrawOffHandName_10:
	add esp, 0x60
	pop ebx
	pop esi
	pop ebp
	ret
CG_DrawOffHandName_20:
	mov eax, [ebp+0x20]
	mov [esp+0x4], eax
	lea ebx, [esi+0x4613c]
	mov [esp], ebx
	call BG_GetFirstAvailableOffhand
	test eax, eax
	jz CG_DrawOffHandName_30
CG_DrawOffHandName_50:
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
	call CG_FadeHudMenu
	fstp dword [ebp-0x2c]
	movss xmm0, dword [ebp-0x2c]
	mulss xmm0, [ebp-0x1c]
	movss [ebp-0xc], xmm0
	ucomiss xmm0, [_float_0_00000000]
	jp CG_DrawOffHandName_40
	jz CG_DrawOffHandName_10
CG_DrawOffHandName_40:
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
	call UI_SafeTranslateString
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
	call UI_DrawText
	jmp CG_DrawOffHandName_10
CG_DrawOffHandName_30:
	mov edx, [ebp+0x20]
	mov [esp+0x4], edx
	mov [esp], ebx
	call BG_GetFirstEquippedOffhand
	test eax, eax
	jz CG_DrawOffHandName_10
	jmp CG_DrawOffHandName_50


;CG_SwitchOffHandCmd(int)
CG_SwitchOffHandCmd:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, cgArray
	mov eax, [ebx+0x5037c]
	test eax, eax
	jnz CG_SwitchOffHandCmd_10
CG_SwitchOffHandCmd_20:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
CG_SwitchOffHandCmd_10:
	mov [esp], eax
	call BG_GetWeaponDef
	mov eax, [eax+0x144]
	mov [esp+0x4], eax
	lea eax, [ebx+0x4613c]
	mov [esp], eax
	call BG_GetFirstAvailableOffhand
	test eax, eax
	jz CG_SwitchOffHandCmd_20
	mov [ebx+0x5037c], eax
	mov dword [esp+0x4], 0x4
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_MenuShowNotify
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;CG_SetEquippedOffHand(int, int)
CG_SetEquippedOffHand:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov eax, cgArray
	mov [eax+0x5037c], edx
	mov dword [ebp+0xc], 0x4
	mov [ebp+0x8], ecx
	pop ebp
	jmp CG_MenuShowNotify


;CG_DrawOffHandHighlight(int, rectDef_s const*, float, float const*, Material*, OffhandClass)
CG_DrawOffHandHighlight:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x7c
	mov esi, cgArray
	cmp dword [esi+0x46140], 0x6
	jg CG_DrawOffHandHighlight_10
	cmp byte [esi+0x4614c], 0x0
	jns CG_DrawOffHandHighlight_20
CG_DrawOffHandHighlight_10:
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_DrawOffHandHighlight_20:
	mov eax, [ebp+0x1c]
	mov [esp+0x4], eax
	lea ebx, [esi+0x4613c]
	mov [esp], ebx
	call BG_GetFirstAvailableOffhand
	test eax, eax
	jz CG_DrawOffHandHighlight_30
CG_DrawOffHandHighlight_90:
	mov ecx, [esi+0x5037c]
	test ecx, ecx
	jz CG_DrawOffHandHighlight_10
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
	call CG_FadeHudMenu
	fstp dword [ebp-0x34]
	movss xmm0, dword [ebp-0x2c]
	mulss xmm0, [ebp-0x34]
	movss [ebp-0x2c], xmm0
	ucomiss xmm0, [_float_0_00000000]
	jp CG_DrawOffHandHighlight_40
	jz CG_DrawOffHandHighlight_10
CG_DrawOffHandHighlight_40:
	mov eax, [esi+0x5037c]
	mov [esp], eax
	call BG_GetWeaponDef
	mov edx, [ebp+0x1c]
	cmp edx, [eax+0x144]
	jnz CG_DrawOffHandHighlight_10
	call BG_GetNumWeapons
	mov edi, eax
	cmp eax, 0x1
	jbe CG_DrawOffHandHighlight_50
	mov ebx, 0x1
	mov dword [ebp-0x30], 0x0
	mov [ebp-0x3c], esi
CG_DrawOffHandHighlight_70:
	mov eax, ebx
	sar eax, 0x5
	mov ecx, ebx
	and ecx, 0x1f
	mov edx, 0x1
	shl edx, cl
	test [esi+eax*4+0x46698], edx
	jnz CG_DrawOffHandHighlight_60
CG_DrawOffHandHighlight_110:
	add ebx, 0x1
	cmp edi, ebx
	jnz CG_DrawOffHandHighlight_70
	mov edx, [ebp-0x30]
	test edx, edx
	jz CG_DrawOffHandHighlight_50
	mov ecx, [ebp+0x14]
	mov eax, [ecx]
	mov edx, [ecx+0x4]
	mov ecx, [ecx+0x8]
CG_DrawOffHandHighlight_120:
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
	jbe CG_DrawOffHandHighlight_80
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
CG_DrawOffHandHighlight_80:
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
	call UI_DrawHandlePic
	jmp CG_DrawOffHandHighlight_10
CG_DrawOffHandHighlight_30:
	mov edx, [ebp+0x1c]
	mov [esp+0x4], edx
	mov [esp], ebx
	call BG_GetFirstEquippedOffhand
	test eax, eax
	jz CG_DrawOffHandHighlight_10
	jmp CG_DrawOffHandHighlight_90
CG_DrawOffHandHighlight_60:
	mov [esp], ebx
	call BG_GetWeaponDef
	mov ecx, [ebp+0x1c]
	cmp ecx, [eax+0x144]
	jz CG_DrawOffHandHighlight_100
	mov esi, [ebp-0x3c]
	jmp CG_DrawOffHandHighlight_110
CG_DrawOffHandHighlight_50:
	mov ecx, 0x3c23d70a
	mov edx, 0x3e3851ec
	mov eax, 0x3f63d70a
	jmp CG_DrawOffHandHighlight_120
CG_DrawOffHandHighlight_100:
	mov [esp], ebx
	call BG_ClipForWeapon
	mov edx, [esi+eax*4+0x46498]
	add [ebp-0x30], edx
	jmp CG_DrawOffHandHighlight_110
	nop


;CG_OffhandRegisterDvars()
CG_OffhandRegisterDvars:
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
	call Cvar_RegisterFloat
	mov [hud_flash_time_offhand], eax
	mov dword [esp+0x14], _cstring_offhand_weapons_1
	mov dword [esp+0x10], 0x1
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x3f000000
	mov dword [esp], _cstring_hud_flash_period
	call Cvar_RegisterFloat
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

