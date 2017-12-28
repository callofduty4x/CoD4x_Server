;Imports of player_use_mp:
	extern Scr_IsSystemActive
	extern level
	extern g_useholdspawndelay
	extern g_useholdtime
	extern g_entities
	extern Scr_AddEntity
	extern scr_const
	extern Scr_Notify
	extern entityHandlers
	extern _ZN9EntHandle6setEntEP9gentity_s
	extern G_IsTurretUsable
	extern BG_ThrowingBackGrenade
	extern BG_GetWeaponDef
	extern player_MGUseRadius
	extern player_throwbackOuterRadius
	extern G_GetPlayerViewOrigin
	extern BG_GetPlayerViewDirection
	extern playerMins
	extern playerMaxs
	extern CM_AreaEntities
	extern qsort
	extern BG_PlayerWeaponCountPrimaryTypes
	extern G_VehUsable
	extern G_GetHintStringIndex
	extern vec3_origin
	extern G_TraceCapsuleComplete
	extern SV_EntityContact
	extern player_throwbackInnerRadius
	extern Vec2DistanceSq
	extern bg_maxGrenadeIndicatorSpeed
	extern G_DObjGetWorldTagPos
	extern BG_CanItemBeGrabbed

;Exports of player_use_mp:
	global compare_use
	global Player_UpdateActivate
	global Player_UpdateCursorHints


SECTION .text


;compare_use(void const*, void const*)
compare_use:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	movss xmm0, dword [eax+0x4]
	mov eax, [ebp+0xc]
	subss xmm0, [eax+0x4]
	cvttss2si eax, xmm0
	pop ebp
	ret
	nop


;Player_UpdateActivate(gentity_s*)
Player_UpdateActivate:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x15c]
	and dword [eax+0x10], 0xfffffffe
	mov ecx, [ebx+0x15c]
	cmp word [ecx+0x30f8], 0x0
	jz Player_UpdateActivate_10
	test byte [ecx+0x308c], 0x20
	jnz Player_UpdateActivate_20
Player_UpdateActivate_10:
	test byte [ecx+0x3090], 0x28
	jnz Player_UpdateActivate_30
Player_UpdateActivate_80:
	xor eax, eax
Player_UpdateActivate_170:
	cmp word [ecx+0x30f8], 0x0
	jnz Player_UpdateActivate_40
	test al, al
	jnz Player_UpdateActivate_40
	test byte [ecx+0x3090], 0x20
	jz Player_UpdateActivate_50
Player_UpdateActivate_90:
	or dword [ecx+0x10], 0x1
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
Player_UpdateActivate_40:
	test byte [ecx+0x3088], 0x28
	jnz Player_UpdateActivate_60
Player_UpdateActivate_110:
	mov dword [ecx+0x3100], 0x1
Player_UpdateActivate_50:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
Player_UpdateActivate_30:
	mov dword [esp], 0x1
	call Scr_IsSystemActive
	test eax, eax
	jnz Player_UpdateActivate_70
	mov ecx, [ebx+0x15c]
	jmp Player_UpdateActivate_80
Player_UpdateActivate_20:
	test byte [ecx+0x3088], 0x20
	jz Player_UpdateActivate_90
	test byte [ecx+0x3090], 0x28
	jz Player_UpdateActivate_80
	jmp Player_UpdateActivate_30
Player_UpdateActivate_60:
	mov dword [esp], 0x1
	call Scr_IsSystemActive
	test eax, eax
	jz Player_UpdateActivate_100
	mov ecx, [ebx+0x15c]
	cmp word [ecx+0x30f8], 0x0
	jz Player_UpdateActivate_110
	mov eax, level
	mov esi, [eax+0x1ec]
	mov edx, esi
	sub edx, [ecx+0x316c]
	mov eax, g_useholdspawndelay
	mov eax, [eax]
	cmp edx, [eax+0xc]
	jl Player_UpdateActivate_110
	sub esi, [ecx+0x30fc]
	mov eax, g_useholdtime
	mov eax, [eax]
	cmp esi, [eax+0xc]
	jl Player_UpdateActivate_110
	movzx eax, word [ecx+0x30f8]
	lea edx, [eax+eax*8]
	lea edx, [eax+edx*2]
	mov ecx, edx
	shl ecx, 0x5
	add edx, ecx
	lea esi, [edx+eax-0x274]
	add esi, g_entities
	mov eax, [esi+0x4]
	cmp eax, 0x3
	jz Player_UpdateActivate_120
	cmp eax, 0xb
	jz Player_UpdateActivate_130
Player_UpdateActivate_190:
	mov [esp], ebx
	call Scr_AddEntity
	mov dword [esp+0x8], 0x1
	mov eax, scr_const
	movzx eax, word [eax+0xbc]
	mov [esp+0x4], eax
	mov [esp], esi
	call Scr_Notify
	movzx eax, byte [esi+0x16e]
	lea eax, [eax+eax*4]
	shl eax, 0x3
	add eax, entityHandlers
	mov eax, [eax+0x10]
	test eax, eax
	jz Player_UpdateActivate_140
	mov [esp+0x8], ebx
	mov [esp+0x4], ebx
	mov [esp], esi
	call eax
Player_UpdateActivate_140:
	mov dword [esp+0x4], 0x0
	mov eax, [ebx+0x15c]
	add eax, 0x30f8
	mov [esp], eax
	call _ZN9EntHandle6setEntEP9gentity_s
	mov ecx, [ebx+0x15c]
	jmp Player_UpdateActivate_110
Player_UpdateActivate_70:
	mov dword [esp+0x4], 0x0
	mov eax, [ebx+0x15c]
	add eax, 0x30f8
	mov [esp], eax
	call _ZN9EntHandle6setEntEP9gentity_s
	cmp byte [ebx+0x16c], 0x0
	jnz Player_UpdateActivate_150
	mov ecx, [ebx+0x15c]
	mov eax, [ecx+0xc]
	test al, 0x4
	jnz Player_UpdateActivate_160
	test ax, ax
	js Player_UpdateActivate_160
	mov eax, [ecx+0xec]
	sub eax, 0xf
	cmp eax, 0x5
	jbe Player_UpdateActivate_160
	mov eax, [ecx+0x5a0]
	test eax, eax
	jz Player_UpdateActivate_80
	mov esi, [ecx+0x5a8]
	cmp esi, 0x3ff
	jz Player_UpdateActivate_80
	lea eax, [esi+esi*8]
	lea eax, [esi+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	add eax, esi
	add eax, g_entities
	mov [esp+0x4], eax
	lea eax, [ecx+0x30f8]
	mov [esp], eax
	call _ZN9EntHandle6setEntEP9gentity_s
	mov edx, [ebx+0x15c]
	mov eax, level
	mov eax, [eax+0x1ec]
	mov [edx+0x30fc], eax
	mov eax, 0x1
	mov ecx, [ebx+0x15c]
	jmp Player_UpdateActivate_170
Player_UpdateActivate_100:
	mov ecx, [ebx+0x15c]
	jmp Player_UpdateActivate_110
Player_UpdateActivate_150:
	mov ecx, [ebx+0x15c]
	test dword [ecx+0xb0], 0x300
	jz Player_UpdateActivate_180
	mov byte [ebx+0x16c], 0x2
	mov eax, 0x1
	jmp Player_UpdateActivate_170
Player_UpdateActivate_160:
	mov eax, 0x1
	jmp Player_UpdateActivate_170
Player_UpdateActivate_180:
	mov byte [ebx+0x16c], 0x0
	mov eax, 0x1
	jmp Player_UpdateActivate_170
Player_UpdateActivate_130:
	mov [esp+0x4], ebx
	mov [esp], esi
	call G_IsTurretUsable
	test eax, eax
	jz Player_UpdateActivate_140
	jmp Player_UpdateActivate_190
Player_UpdateActivate_120:
	mov [esp], ebx
	call Scr_AddEntity
	mov dword [esp+0x8], 0x1
	mov eax, scr_const
	movzx eax, word [eax+0xba]
	mov [esp+0x4], eax
	mov [esp], esi
	call Scr_Notify
	mov byte [esi+0x16c], 0x1
	movzx eax, byte [esi+0x16e]
	lea eax, [eax+eax*4]
	shl eax, 0x3
	add eax, entityHandlers
	mov eax, [eax+0xc]
	test eax, eax
	jz Player_UpdateActivate_140
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], ebx
	mov [esp], esi
	call eax
	jmp Player_UpdateActivate_140


;Player_UpdateCursorHints(gentity_s*)
Player_UpdateCursorHints:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x310c
	mov edi, [ebp+0x8]
	mov esi, [edi+0x15c]
	mov dword [esi+0x5a0], 0x0
	mov [esp], esi
	call BG_ThrowingBackGrenade
	test al, al
	jnz Player_UpdateCursorHints_10
	mov dword [esi+0x4c], 0x0
Player_UpdateCursorHints_10:
	mov eax, [edi+0x1a0]
	test eax, eax
	jle Player_UpdateCursorHints_20
	cmp byte [edi+0x16c], 0x0
	jnz Player_UpdateCursorHints_30
	test byte [esi+0xe], 0x10
	jz Player_UpdateCursorHints_40
	mov edx, [edi+0x15c]
	movzx eax, word [edi+0x154]
	sub eax, 0x1
	mov [edx+0x5a8], eax
	movzx edx, word [edi+0x154]
	lea eax, [edx+edx*8]
	lea eax, [edx+eax*2]
	mov ecx, eax
	shl ecx, 0x5
	add eax, ecx
	lea eax, [eax+edx-0x274]
	add eax, g_entities
	or dword [eax+0x180], 0x200000
Player_UpdateCursorHints_20:
	add esp, 0x310c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Player_UpdateCursorHints_30:
	test dword [esi+0xb0], 0x300
	jz Player_UpdateCursorHints_20
	mov esi, [edi+0x15c]
	mov edx, [esi+0x59c]
	lea eax, [edx+edx*8]
	lea eax, [edx+eax*2]
	mov ecx, eax
	shl ecx, 0x5
	add eax, ecx
	lea ebx, [eax+edx]
	mov eax, level
	add ebx, [eax+0x4]
	mov eax, [ebx+0xc4]
	mov [esp], eax
	call BG_GetWeaponDef
	mov eax, [eax+0x7e0]
	cmp byte [eax], 0x0
	jz Player_UpdateCursorHints_20
	mov dword [esi+0x5a8], 0x3ff
	mov eax, [ebx+0xc4]
	add eax, 0x4
	mov [esi+0x5a0], eax
	mov eax, [ebx+0xc4]
	mov [esp], eax
	call BG_GetWeaponDef
	mov eax, [eax+0x7e8]
	mov [esi+0x5a4], eax
	jmp Player_UpdateCursorHints_20
Player_UpdateCursorHints_40:
	mov eax, [edi+0x15c]
	mov [ebp-0x3080], eax
	mov eax, [eax+0xc]
	test al, 0x4
	jnz Player_UpdateCursorHints_20
	test ax, ax
	js Player_UpdateCursorHints_20
	mov eax, [esi+0xec]
	sub eax, 0xf
	cmp eax, 0x4
	jbe Player_UpdateCursorHints_20
	cmp dword [esi+0x4], 0x6
	jz Player_UpdateCursorHints_50
	mov ecx, [ebp-0x3080]
	mov ebx, [ecx+0x3080]
	test ebx, ebx
	jnz Player_UpdateCursorHints_20
	mov eax, [esi+0x5a8]
	mov [ebp-0x30b0], eax
	mov eax, player_MGUseRadius
	mov eax, [eax]
	movss xmm5, dword [eax+0xc]
	mov eax, player_throwbackOuterRadius
	mov eax, [eax]
	movss xmm4, dword [eax+0xc]
	movss xmm3, dword [_float_192_00000000]
	movaps xmm1, xmm3
	subss xmm1, xmm4
	pxor xmm0, xmm0
	movaps xmm2, xmm0
	cmpss xmm2, xmm1, 0x6
	movaps xmm1, xmm2
	movaps xmm2, xmm4
	andps xmm2, xmm1
	movaps xmm4, xmm1
	andnps xmm4, xmm3
	orps xmm4, xmm2
	movaps xmm1, xmm4
	subss xmm1, xmm5
	cmpss xmm0, xmm1, 0x6
	movaps xmm1, xmm5
	andps xmm1, xmm0
	movaps xmm5, xmm0
	andnps xmm5, xmm4
	orps xmm5, xmm1
	lea eax, [ebp-0x4c]
	mov [esp+0x4], eax
	mov [esp], ecx
	movss [ebp-0x30e8], xmm5
	call G_GetPlayerViewOrigin
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	lea eax, [ebp-0x28]
	mov [esp+0x4], eax
	mov edx, [ebp-0x3080]
	mov [esp], edx
	call BG_GetPlayerViewDirection
	mov eax, playerMins
	mov ecx, [ebp-0x3080]
	movss xmm0, dword [ecx+0x1c]
	addss xmm0, [eax]
	movss [ebp-0x64], xmm0
	movss xmm0, dword [ecx+0x20]
	addss xmm0, [eax+0x4]
	movss [ebp-0x60], xmm0
	movss xmm0, dword [ecx+0x24]
	addss xmm0, [eax+0x8]
	movss [ebp-0x5c], xmm0
	mov eax, playerMaxs
	movss xmm0, dword [ecx+0x1c]
	addss xmm0, [eax]
	movss [ebp-0x70], xmm0
	movss xmm0, dword [ecx+0x20]
	addss xmm0, [eax+0x4]
	movss [ebp-0x6c], xmm0
	movss xmm0, dword [ecx+0x24]
	addss xmm0, [eax+0x8]
	movss [ebp-0x68], xmm0
	movss xmm0, dword [ebp-0x4c]
	movss xmm5, dword [ebp-0x30e8]
	subss xmm0, xmm5
	movss [ebp-0x34], xmm0
	movss xmm0, dword [ebp-0x48]
	subss xmm0, xmm5
	movss [ebp-0x30], xmm0
	movss xmm1, dword [ebp-0x44]
	movss xmm2, dword [_float_96_00000000]
	movaps xmm0, xmm1
	subss xmm0, xmm2
	movss [ebp-0x2c], xmm0
	movaps xmm0, xmm5
	addss xmm0, [ebp-0x4c]
	movss [ebp-0x40], xmm0
	addss xmm5, [ebp-0x48]
	movss [ebp-0x3c], xmm5
	addss xmm1, xmm2
	movss [ebp-0x38], xmm1
	mov dword [esp+0x10], 0x200000
	mov dword [esp+0xc], 0x400
	lea eax, [ebp-0x1070]
	mov [esp+0x8], eax
	lea eax, [ebp-0x40]
	mov [esp+0x4], eax
	lea eax, [ebp-0x34]
	mov [esp], eax
	call CM_AreaEntities
	mov [ebp-0x30a8], eax
	test eax, eax
	jg Player_UpdateCursorHints_60
	xor eax, eax
	mov dword [ebp-0x3084], 0x0
Player_UpdateCursorHints_380:
	mov dword [esp+0xc], compare_use
	mov dword [esp+0x8], 0x8
	mov [esp+0x4], eax
	lea ecx, [ebp-0x3070]
	mov [esp], ecx
	call qsort
	mov edx, [ebp-0x3084]
	test edx, edx
	jg Player_UpdateCursorHints_70
	mov dword [ebp-0x309c], 0x0
	mov edx, [ebp-0x3084]
Player_UpdateCursorHints_240:
	mov dword [esp+0xc], compare_use
	mov dword [esp+0x8], 0x8
	mov [esp+0x4], edx
	lea ecx, [ebp-0x3070]
	mov [esp], ecx
	call qsort
	mov eax, [ebp-0x3084]
	sub eax, [ebp-0x309c]
	mov [ebp-0x30b8], eax
	cmp eax, 0x0
	jz Player_UpdateCursorHints_20
	jle Player_UpdateCursorHints_20
	mov dword [ebp-0x30b4], 0x0
	mov edx, [ebp-0x30b4]
Player_UpdateCursorHints_120:
	mov ebx, [ebp+edx*8-0x3070]
	cmp dword [ebx+0x4], 0xe
	ja Player_UpdateCursorHints_80
	mov eax, [ebx+0x4]
	jmp dword [eax*4+Player_UpdateCursorHints_jumptab_0]
Player_UpdateCursorHints_530:
	mov eax, [ebx+0x88]
	and eax, 0x8000007f
	js Player_UpdateCursorHints_90
Player_UpdateCursorHints_500:
	lea edi, [eax+0x4]
	mov eax, [ebx+0x19c]
	mov edx, level
	sub eax, [edx+0x1ec]
	mov [esi+0x4c], eax
Player_UpdateCursorHints_170:
	mov edx, 0xffffffff
Player_UpdateCursorHints_180:
	test edi, edi
	jnz Player_UpdateCursorHints_100
Player_UpdateCursorHints_50:
	mov dword [esi+0x5a8], 0x3ff
	jmp Player_UpdateCursorHints_20
Player_UpdateCursorHints_200:
	mov eax, [ebp-0x3090]
	mov [esp], eax
	call BG_PlayerWeaponCountPrimaryTypes
	sub eax, 0x1
	jle Player_UpdateCursorHints_110
Player_UpdateCursorHints_80:
	add dword [ebp-0x30b4], 0x1
	mov edx, [ebp-0x30b4]
	cmp [ebp-0x30b8], edx
	jnz Player_UpdateCursorHints_120
	jmp Player_UpdateCursorHints_20
Player_UpdateCursorHints_550:
	mov [esp+0x4], edi
	mov [esp], ebx
	call G_VehUsable
	test eax, eax
	jz Player_UpdateCursorHints_80
	mov dword [esp+0x4], _cstring_mp_usevehicle
	lea eax, [ebp-0x1c]
	mov [esp], eax
	call G_GetHintStringIndex
	mov eax, [ebx+0xc4]
	mov [esp], eax
	call BG_GetWeaponDef
	mov eax, [eax+0x7dc]
	cmp byte [eax], 0x0
	jnz Player_UpdateCursorHints_130
	mov edx, [ebp-0x1c]
	mov edi, 0x1
Player_UpdateCursorHints_100:
	mov eax, [ebx]
	mov [esi+0x5a8], eax
	or dword [ebx+0x180], 0x200000
	mov [esi+0x5a0], edi
	mov [esi+0x5a4], edx
	jmp Player_UpdateCursorHints_20
Player_UpdateCursorHints_510:
	movzx eax, word [ebx+0x170]
	mov edx, scr_const
	cmp ax, [edx+0xbe]
	jz Player_UpdateCursorHints_140
	cmp ax, [edx+0xc0]
	jnz Player_UpdateCursorHints_50
Player_UpdateCursorHints_140:
	movzx eax, byte [ebx+0x16f]
	test al, al
	jz Player_UpdateCursorHints_150
	movzx edx, al
	mov eax, [edi+0x15c]
	cmp edx, [eax+0x3010]
	jnz Player_UpdateCursorHints_80
Player_UpdateCursorHints_150:
	mov edx, [ebx+0x1c0]
	cmp edx, 0x3ff
	jz Player_UpdateCursorHints_160
	mov eax, [edi+0x15c]
	cmp edx, [eax+0xdc]
	jnz Player_UpdateCursorHints_80
Player_UpdateCursorHints_160:
	mov edi, [ebx+0xd8]
	test edi, edi
	jz Player_UpdateCursorHints_50
	mov edx, [ebx+0xd4]
	cmp edx, 0xff
	mov eax, 0xffffffff
	cmovz edx, eax
	jmp Player_UpdateCursorHints_100
Player_UpdateCursorHints_540:
	mov [esp+0x4], edi
	mov [esp], ebx
	call G_IsTurretUsable
	test eax, eax
	jz Player_UpdateCursorHints_80
	mov eax, [ebx+0xc4]
	lea edi, [eax+0x4]
	mov [esp], eax
	call BG_GetWeaponDef
	mov eax, [eax+0x7dc]
	cmp byte [eax], 0x0
	jz Player_UpdateCursorHints_170
	mov eax, [ebx+0xc4]
	mov [esp], eax
	call BG_GetWeaponDef
	mov edx, [eax+0x7e4]
	jmp Player_UpdateCursorHints_180
Player_UpdateCursorHints_520:
	mov ecx, [edi+0x15c]
	mov [ebp-0x3090], ecx
	mov eax, [ebx+0x88]
	and eax, 0x8000007f
	mov [ebp-0x30bc], eax
	js Player_UpdateCursorHints_190
	mov edx, eax
Player_UpdateCursorHints_490:
	mov [esp], edx
	call BG_GetWeaponDef
	mov [ebp-0x308c], eax
	mov ecx, [ebp-0x3090]
	mov eax, [ecx+0xe8]
	mov [esp], eax
	call BG_GetWeaponDef
	mov [ebp-0x3088], eax
	mov edx, [ebp-0x30bc]
	sar edx, 0x5
	mov ecx, [ebp-0x30bc]
	and ecx, 0x1f
	mov eax, 0x1
	shl eax, cl
	mov ecx, [ebp-0x3090]
	test [ecx+edx*4+0x55c], eax
	jnz Player_UpdateCursorHints_80
	mov edx, [ebp-0x3088]
	mov eax, [edx+0x13c]
	test eax, eax
	jz Player_UpdateCursorHints_110
	cmp eax, 0x3
	jz Player_UpdateCursorHints_110
	mov ecx, [ebp-0x308c]
	mov eax, [ecx+0x13c]
	test eax, eax
	jz Player_UpdateCursorHints_200
	cmp eax, 0x3
	jz Player_UpdateCursorHints_200
Player_UpdateCursorHints_110:
	mov eax, [ebp-0x30bc]
	add eax, 0x4
	jz Player_UpdateCursorHints_80
	mov edi, eax
	mov edx, 0xffffffff
	jmp Player_UpdateCursorHints_100
Player_UpdateCursorHints_70:
	mov dword [ebp-0x307c], 0x0
	mov dword [ebp-0x309c], 0x0
	lea ebx, [ebp-0x3070]
Player_UpdateCursorHints_230:
	mov ecx, [ebx]
	movzx eax, word [ecx+0x170]
	mov edx, scr_const
	cmp ax, [edx+0xc0]
	jz Player_UpdateCursorHints_210
	cmp ax, [edx+0xf8]
	jz Player_UpdateCursorHints_210
	lea eax, [ecx+0x124]
	lea edx, [ecx+0x130]
	movss xmm2, dword [ecx+0x124]
	addss xmm2, [ecx+0x130]
	movss [ebp-0x58], xmm2
	movss xmm0, dword [eax+0x4]
	addss xmm0, [edx+0x4]
	movss [ebp-0x54], xmm0
	movss xmm1, dword [eax+0x8]
	addss xmm1, [edx+0x8]
	mulss xmm2, [_float_0_50000000]
	movss [ebp-0x58], xmm2
	mulss xmm0, [_float_0_50000000]
	movss [ebp-0x54], xmm0
	mulss xmm1, [_float_0_50000000]
	movss [ebp-0x50], xmm1
	cmp dword [ecx+0x4], 0xb
	jz Player_UpdateCursorHints_220
Player_UpdateCursorHints_420:
	mov dword [esp+0x14], 0x11
	mov ecx, [ebp-0x3080]
	mov eax, [ecx+0xdc]
	mov [esp+0x10], eax
	lea eax, [ebp-0x58]
	mov [esp+0xc], eax
	mov edx, vec3_origin
	mov [esp+0x8], edx
	mov [esp+0x4], edx
	lea ecx, [ebp-0x4c]
	mov [esp], ecx
	call G_TraceCapsuleComplete
	test eax, eax
	jnz Player_UpdateCursorHints_210
	movss xmm0, dword [ebx+0x4]
	addss xmm0, [_float_10000_00000000]
	movss [ebx+0x4], xmm0
	add dword [ebp-0x309c], 0x1
Player_UpdateCursorHints_210:
	add dword [ebp-0x307c], 0x1
	add ebx, 0x8
	mov eax, [ebp-0x3084]
	cmp [ebp-0x307c], eax
	jnz Player_UpdateCursorHints_230
	mov edx, eax
	jmp Player_UpdateCursorHints_240
Player_UpdateCursorHints_60:
	mov dword [ebp-0x30a0], 0x0
	mov dword [ebp-0x30a4], 0x0
	mov dword [ebp-0x3094], 0x0
	lea eax, [ebp-0x3070]
	mov [ebp-0x30c0], eax
	mov edx, [ebp-0x30a0]
	jmp Player_UpdateCursorHints_250
Player_UpdateCursorHints_370:
	cmp ecx, 0x4
	jz Player_UpdateCursorHints_260
Player_UpdateCursorHints_400:
	cmp ecx, 0xb
	jz Player_UpdateCursorHints_270
	movss xmm2, dword [_float_128_00000000]
	movss [ebp-0x3098], xmm2
Player_UpdateCursorHints_410:
	lea eax, [ebx+0x124]
	lea edx, [ebx+0x130]
	movss xmm1, dword [ebx+0x124]
	addss xmm1, [ebx+0x130]
	movss [ebp-0x58], xmm1
	movss xmm0, dword [eax+0x4]
	addss xmm0, [edx+0x4]
	movss [ebp-0x54], xmm0
	movss xmm3, dword [eax+0x8]
	addss xmm3, [edx+0x8]
	movss xmm2, dword [_float_0_50000000]
	mulss xmm1, xmm2
	movss [ebp-0x58], xmm1
	mulss xmm0, xmm2
	movss [ebp-0x54], xmm0
	mulss xmm3, xmm2
	movss [ebp-0x50], xmm3
	movaps xmm4, xmm1
	subss xmm4, [ebp-0x4c]
	movaps xmm5, xmm0
	subss xmm5, [ebp-0x48]
	subss xmm3, [ebp-0x44]
	movaps xmm0, xmm4
	mulss xmm0, xmm4
	movaps xmm1, xmm5
	mulss xmm1, xmm5
	addss xmm0, xmm1
	movaps xmm1, xmm3
	mulss xmm1, xmm3
	addss xmm0, xmm1
	sqrtss xmm6, xmm0
	movaps xmm0, xmm6
	xorps xmm0, [_data16_80000000]
	ucomiss xmm0, [_float_0_00000000]
	jb Player_UpdateCursorHints_280
	movss xmm7, dword [_float_1_00000000]
	movaps xmm2, xmm7
Player_UpdateCursorHints_430:
	mulss xmm4, xmm2
	movaps xmm0, xmm2
	mulss xmm0, xmm5
	movaps xmm1, xmm2
	mulss xmm1, xmm3
	ucomiss xmm6, [ebp-0x3098]
	ja Player_UpdateCursorHints_290
	movaps xmm2, xmm4
	mulss xmm2, [ebp-0x28]
	mulss xmm0, [ebp-0x24]
	addss xmm2, xmm0
	mulss xmm1, [ebp-0x20]
	addss xmm2, xmm1
	movzx eax, word [ebx+0x170]
	mov edx, scr_const
	cmp ax, [edx+0xbe]
	jz Player_UpdateCursorHints_300
Player_UpdateCursorHints_440:
	movaps xmm0, xmm2
	addss xmm0, xmm7
	mulss xmm0, [_float__0_50000000]
	addss xmm0, xmm7
	mulss xmm0, [_float_256_00000000]
	mov ecx, [ebp-0x30c0]
	movss [ecx+0x4], xmm0
	cmp dword [ebx+0x4], 0x4
	jz Player_UpdateCursorHints_310
Player_UpdateCursorHints_450:
	movzx eax, word [ebx+0x170]
	mov edx, scr_const
	cmp ax, [edx+0xbe]
	jz Player_UpdateCursorHints_320
Player_UpdateCursorHints_470:
	cmp dword [ebx+0x4], 0xb
	jz Player_UpdateCursorHints_330
Player_UpdateCursorHints_460:
	cmp dword [ebx+0x4], 0x3
	jz Player_UpdateCursorHints_340
Player_UpdateCursorHints_480:
	mov ecx, [ebp-0x30c0]
	mov [ecx], ebx
	addss xmm6, [ecx+0x4]
	movss [ecx+0x4], xmm6
	add dword [ebp-0x30a4], 0x1
	add ecx, 0x8
	mov [ebp-0x30c0], ecx
Player_UpdateCursorHints_290:
	add dword [ebp-0x30a0], 0x1
	mov eax, [ebp-0x30a0]
	cmp [ebp-0x30a8], eax
	jz Player_UpdateCursorHints_350
	mov edx, eax
Player_UpdateCursorHints_250:
	mov eax, [ebp+edx*4-0x1070]
	lea edx, [eax+eax*8]
	lea edx, [eax+edx*2]
	mov ecx, edx
	shl ecx, 0x5
	add edx, ecx
	lea ebx, [edx+eax]
	add ebx, g_entities
	cmp edi, ebx
	jz Player_UpdateCursorHints_290
	mov ecx, [ebx+0x4]
	cmp ecx, 0x3
	jz Player_UpdateCursorHints_360
	test byte [ebx+0x122], 0x20
	jz Player_UpdateCursorHints_290
Player_UpdateCursorHints_360:
	movzx edx, word [ebx+0x170]
	mov eax, scr_const
	cmp dx, [eax+0xc0]
	jnz Player_UpdateCursorHints_370
	movss xmm0, dword [ebx+0x124]
	ucomiss xmm0, [ebp-0x70]
	ja Player_UpdateCursorHints_290
	movss xmm0, dword [ebp-0x64]
	ucomiss xmm0, [ebx+0x130]
	ja Player_UpdateCursorHints_290
	movss xmm0, dword [ebx+0x128]
	ucomiss xmm0, [ebp-0x6c]
	ja Player_UpdateCursorHints_290
	movss xmm0, dword [ebp-0x60]
	ucomiss xmm0, [ebx+0x134]
	ja Player_UpdateCursorHints_290
	movss xmm0, dword [ebx+0x12c]
	ucomiss xmm0, [ebp-0x68]
	ja Player_UpdateCursorHints_290
	movss xmm0, dword [ebp-0x5c]
	ucomiss xmm0, [ebx+0x138]
	ja Player_UpdateCursorHints_290
	mov [esp+0x8], ebx
	lea eax, [ebp-0x70]
	mov [esp+0x4], eax
	lea eax, [ebp-0x64]
	mov [esp], eax
	call SV_EntityContact
	test eax, eax
	jz Player_UpdateCursorHints_290
	mov ecx, [ebp-0x30c0]
	mov dword [ecx+0x4], 0xc3800000
	mov [ecx], ebx
	add dword [ebp-0x30a4], 0x1
	add ecx, 0x8
	mov [ebp-0x30c0], ecx
	jmp Player_UpdateCursorHints_290
Player_UpdateCursorHints_350:
	mov eax, [ebp-0x30a4]
	mov edx, eax
	sub edx, [ebp-0x3094]
	mov [ebp-0x3084], edx
	jmp Player_UpdateCursorHints_380
Player_UpdateCursorHints_260:
	mov eax, [ebp-0x30b0]
	cmp eax, [ebx]
	jz Player_UpdateCursorHints_390
	mov eax, player_throwbackInnerRadius
	mov eax, [eax]
	movss xmm0, dword [eax+0xc]
	lea eax, [edi+0x13c]
	mov [esp+0x4], eax
	lea eax, [ebx+0x13c]
	mov [esp], eax
	movss [ebp-0x30d8], xmm0
	call Vec2DistanceSq
	fstp dword [ebp-0x30ac]
	movss xmm0, dword [ebp-0x30d8]
	mulss xmm0, xmm0
	movss xmm1, dword [ebp-0x30ac]
	ucomiss xmm1, xmm0
	ja Player_UpdateCursorHints_290
Player_UpdateCursorHints_390:
	lea eax, [ebx+0x24]
	movss xmm0, dword [ebx+0x24]
	movss xmm1, dword [eax+0x4]
	movss xmm3, dword [eax+0x8]
	mov eax, bg_maxGrenadeIndicatorSpeed
	mov eax, [eax]
	movss xmm2, dword [eax+0xc]
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm3, xmm3
	addss xmm0, xmm3
	mulss xmm2, xmm2
	ucomiss xmm0, xmm2
	ja Player_UpdateCursorHints_290
	mov ecx, [ebx+0x4]
	cmp ecx, 0x4
	jnz Player_UpdateCursorHints_400
	mov eax, player_throwbackOuterRadius
	mov eax, [eax]
	movss xmm0, dword [eax+0xc]
	movss [ebp-0x3098], xmm0
	jmp Player_UpdateCursorHints_410
Player_UpdateCursorHints_270:
	mov eax, player_MGUseRadius
	mov eax, [eax]
	movss xmm1, dword [eax+0xc]
	movss [ebp-0x3098], xmm1
	jmp Player_UpdateCursorHints_410
Player_UpdateCursorHints_220:
	lea eax, [ebp-0x58]
	mov [esp+0x8], eax
	mov edx, scr_const
	movzx eax, word [edx+0x86]
	mov [esp+0x4], eax
	mov [esp], ecx
	call G_DObjGetWorldTagPos
	jmp Player_UpdateCursorHints_420
Player_UpdateCursorHints_280:
	movss xmm7, dword [_float_1_00000000]
	movaps xmm2, xmm7
	divss xmm2, xmm6
	jmp Player_UpdateCursorHints_430
Player_UpdateCursorHints_300:
	cmp byte [ebx+0x1c4], 0x0
	jz Player_UpdateCursorHints_440
	ucomiss xmm2, [_float_0_75999999]
	jp Player_UpdateCursorHints_440
	jb Player_UpdateCursorHints_290
	jmp Player_UpdateCursorHints_440
Player_UpdateCursorHints_310:
	subss xmm0, [_float_512_00000000]
	movss [ecx+0x4], xmm0
	jmp Player_UpdateCursorHints_450
Player_UpdateCursorHints_330:
	mov eax, [ebp-0x30c0]
	movss xmm0, dword [eax+0x4]
	subss xmm0, [_float_128_00000000]
	movss [eax+0x4], xmm0
	jmp Player_UpdateCursorHints_460
Player_UpdateCursorHints_320:
	mov ecx, [ebp-0x30c0]
	movss xmm0, dword [ecx+0x4]
	subss xmm0, [_float_256_00000000]
	movss [ecx+0x4], xmm0
	jmp Player_UpdateCursorHints_470
Player_UpdateCursorHints_340:
	mov dword [esp+0x8], 0x0
	mov eax, [edi+0x15c]
	mov [esp+0x4], eax
	mov [esp], ebx
	movss [ebp-0x30f8], xmm6
	call BG_CanItemBeGrabbed
	test eax, eax
	movss xmm6, dword [ebp-0x30f8]
	jnz Player_UpdateCursorHints_480
	mov edx, [ebp-0x30c0]
	movss xmm0, dword [edx+0x4]
	addss xmm0, [_float_10000_00000000]
	movss [edx+0x4], xmm0
	add dword [ebp-0x3094], 0x1
	jmp Player_UpdateCursorHints_480
Player_UpdateCursorHints_190:
	sub eax, 0x1
	or eax, 0xffffff80
	add eax, 0x1
	mov [ebp-0x30bc], eax
	mov edx, eax
	jmp Player_UpdateCursorHints_490
Player_UpdateCursorHints_90:
	sub eax, 0x1
	or eax, 0xffffff80
	add eax, 0x1
	jmp Player_UpdateCursorHints_500
Player_UpdateCursorHints_130:
	mov eax, [ebx+0xc4]
	mov [esp], eax
	call BG_GetWeaponDef
	mov edx, [eax+0x7e4]
	mov edi, 0x1
	jmp Player_UpdateCursorHints_100
	
	
Player_UpdateCursorHints_jumptab_0:
	dd Player_UpdateCursorHints_510
	dd Player_UpdateCursorHints_80
	dd Player_UpdateCursorHints_80
	dd Player_UpdateCursorHints_520
	dd Player_UpdateCursorHints_530
	dd Player_UpdateCursorHints_80
	dd Player_UpdateCursorHints_80
	dd Player_UpdateCursorHints_80
	dd Player_UpdateCursorHints_80
	dd Player_UpdateCursorHints_80
	dd Player_UpdateCursorHints_80
	dd Player_UpdateCursorHints_540
	dd Player_UpdateCursorHints_80
	dd Player_UpdateCursorHints_80
	dd Player_UpdateCursorHints_550


;Initialized global or static variables of player_use_mp:
SECTION .data


;Initialized constant data of player_use_mp:
SECTION .rdata


;Zero initialized global or static variables of player_use_mp:
SECTION .bss


;All cstrings:
SECTION .rdata
_cstring_mp_usevehicle:		db "MP_USEVEHICLE",0



;All constant floats and doubles:
SECTION .rdata
_float_192_00000000:		dd 0x43400000	; 192
_float_96_00000000:		dd 0x42c00000	; 96
_float_0_50000000:		dd 0x3f000000	; 0.5
_float_10000_00000000:		dd 0x461c4000	; 10000
_float_128_00000000:		dd 0x43000000	; 128
_float_0_00000000:		dd 0x0	; 0
_float_1_00000000:		dd 0x3f800000	; 1
_float__0_50000000:		dd 0xbf000000	; -0.5
_float_256_00000000:		dd 0x43800000	; 256
_float_0_75999999:		dd 0x3f428f5c	; 0.76
_float_512_00000000:		dd 0x44000000	; 512

align   16,db 0
_data16_80000000:		dd 0x80000000, 0x0, 0x0, 0x0	; DQWORD

