;Imports of com_constantconfigstrings:
	extern strcmp
	extern tolower
	extern _Z9I_stricmpPKcS0_

;Exports of com_constantconfigstrings:
	global tempString
	global _Z29CCS_GetConstConfigStringIndexPKc
	global _Z29CCS_InitConstantConfigStringsv
	global _Z31CCS_IsConfigStringIndexConstanti
	global _Z35CCS_GetConfigStringNumForConstIndexi
	global constantConfigStrings
	global constantConfigStringCount
	global reservedConfigStrings


SECTION .text


;CCS_GetConstConfigStringIndex(char const*)
_Z29CCS_GetConstConfigStringIndexPKc:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov esi, [ebp+0x8]
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, esi
	repne scasb
	not ecx
	lea eax, [ecx-0x1]
	cmp eax, 0xff
	jbe _Z29CCS_GetConstConfigStringIndexPKc_10
	shr eax, 0x2
	add eax, 0x1
	mov [ebp-0x20], eax
	movzx eax, byte [esi]
	test al, al
	jnz _Z29CCS_GetConstConfigStringIndexPKc_20
_Z29CCS_GetConstConfigStringIndexPKc_160:
	mov ebx, tempString
_Z29CCS_GetConstConfigStringIndexPKc_180:
	mov eax, ebx
	sub eax, tempString
	cmp eax, 0xff
	jbe _Z29CCS_GetConstConfigStringIndexPKc_30
	shr eax, 0x2
	add eax, 0x1
	mov [ebp-0x1c], eax
_Z29CCS_GetConstConfigStringIndexPKc_190:
	mov eax, [constantConfigStrings]
	test eax, eax
	jz _Z29CCS_GetConstConfigStringIndexPKc_40
	xor ebx, ebx
	mov edi, constantConfigStrings
	jmp _Z29CCS_GetConstConfigStringIndexPKc_50
_Z29CCS_GetConstConfigStringIndexPKc_70:
	mov eax, [ebp-0x1c]
	cmp eax, [edi+0x8]
	jz _Z29CCS_GetConstConfigStringIndexPKc_60
_Z29CCS_GetConstConfigStringIndexPKc_80:
	add ebx, 0x1
	mov eax, [edi+0x10]
	add edi, 0x10
	test eax, eax
	jz _Z29CCS_GetConstConfigStringIndexPKc_40
_Z29CCS_GetConstConfigStringIndexPKc_50:
	cmp eax, 0x334
	jg _Z29CCS_GetConstConfigStringIndexPKc_70
	mov edx, [ebp-0x20]
	cmp edx, [edi+0x8]
	jnz _Z29CCS_GetConstConfigStringIndexPKc_80
	mov eax, [edi+0x4]
	mov [esp+0x4], eax
	mov [esp], esi
	call strcmp
	test eax, eax
	jz _Z29CCS_GetConstConfigStringIndexPKc_90
	add ebx, 0x1
	mov eax, [edi+0x10]
	add edi, 0x10
	test eax, eax
	jnz _Z29CCS_GetConstConfigStringIndexPKc_50
_Z29CCS_GetConstConfigStringIndexPKc_40:
	mov ebx, 0xffffffff
_Z29CCS_GetConstConfigStringIndexPKc_90:
	mov eax, ebx
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z29CCS_GetConstConfigStringIndexPKc_30:
	test eax, eax
	jz _Z29CCS_GetConstConfigStringIndexPKc_100
	mov ecx, tempString
	xor ebx, ebx
	lea edi, [eax+tempString]
_Z29CCS_GetConstConfigStringIndexPKc_110:
	mov eax, ebx
	shl eax, 0x5
	sub eax, ebx
	movsx edx, byte [ecx]
	lea ebx, [edx+eax]
	add ecx, 0x1
	cmp ecx, edi
	jnz _Z29CCS_GetConstConfigStringIndexPKc_110
	mov ecx, ebx
	shr ecx, 1
	mov edi, 0x80000003
	mov eax, edi
	mul ecx
	mov ecx, edx
	shr ecx, 0x1d
	lea edx, [ecx+ecx]
	mov eax, ecx
	shl eax, 0x1f
	sub eax, edx
	mov ecx, ebx
	sub ecx, eax
	jmp _Z29CCS_GetConstConfigStringIndexPKc_120
_Z29CCS_GetConstConfigStringIndexPKc_10:
	test eax, eax
	jz _Z29CCS_GetConstConfigStringIndexPKc_130
	mov edi, esi
	xor ebx, ebx
	lea ecx, [esi+eax]
_Z29CCS_GetConstConfigStringIndexPKc_140:
	mov eax, ebx
	shl eax, 0x5
	sub eax, ebx
	movsx edx, byte [edi]
	lea ebx, [edx+eax]
	add edi, 0x1
	cmp edi, ecx
	jnz _Z29CCS_GetConstConfigStringIndexPKc_140
	mov ecx, ebx
	shr ecx, 1
	mov edi, 0x80000003
	mov eax, edi
	mul ecx
	mov ecx, edx
	shr ecx, 0x1d
	lea edx, [ecx+ecx]
	mov eax, ecx
	shl eax, 0x1f
	sub eax, edx
	mov ecx, ebx
	sub ecx, eax
	jmp _Z29CCS_GetConstConfigStringIndexPKc_150
_Z29CCS_GetConstConfigStringIndexPKc_130:
	xor ecx, ecx
_Z29CCS_GetConstConfigStringIndexPKc_150:
	add ecx, 0x1
	mov [ebp-0x20], ecx
	movzx eax, byte [esi]
	test al, al
	jz _Z29CCS_GetConstConfigStringIndexPKc_160
_Z29CCS_GetConstConfigStringIndexPKc_20:
	mov edi, esi
	mov ebx, tempString
_Z29CCS_GetConstConfigStringIndexPKc_170:
	movsx eax, al
	mov [esp], eax
	call tolower
	mov [ebx], al
	add ebx, 0x1
	movzx eax, byte [edi+0x1]
	add edi, 0x1
	test al, al
	jnz _Z29CCS_GetConstConfigStringIndexPKc_170
	jmp _Z29CCS_GetConstConfigStringIndexPKc_180
_Z29CCS_GetConstConfigStringIndexPKc_100:
	xor ecx, ecx
_Z29CCS_GetConstConfigStringIndexPKc_120:
	add ecx, 0x1
	mov [ebp-0x1c], ecx
	jmp _Z29CCS_GetConstConfigStringIndexPKc_190
_Z29CCS_GetConstConfigStringIndexPKc_60:
	mov eax, [edi+0x4]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z29CCS_GetConstConfigStringIndexPKc_80
	jmp _Z29CCS_GetConstConfigStringIndexPKc_90


;CCS_InitConstantConfigStrings()
_Z29CCS_InitConstantConfigStringsv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov eax, [constantConfigStrings]
	test eax, eax
	jz _Z29CCS_InitConstantConfigStringsv_10
	mov dword [ebp-0x1c], 0x0
	mov esi, constantConfigStrings
_Z29CCS_InitConstantConfigStringsv_90:
	cmp eax, 0x334
	jle _Z29CCS_InitConstantConfigStringsv_20
	mov edx, [esi+0x4]
	movzx eax, byte [edx]
	test al, al
	jnz _Z29CCS_InitConstantConfigStringsv_30
	mov ebx, tempString
_Z29CCS_InitConstantConfigStringsv_150:
	mov eax, ebx
	sub eax, tempString
	cmp eax, 0xff
	ja _Z29CCS_InitConstantConfigStringsv_40
	test eax, eax
	jz _Z29CCS_InitConstantConfigStringsv_50
	mov ecx, tempString
	xor ebx, ebx
	lea edi, [eax+tempString]
_Z29CCS_InitConstantConfigStringsv_60:
	mov eax, ebx
	shl eax, 0x5
	sub eax, ebx
	movsx edx, byte [ecx]
	lea ebx, [edx+eax]
	add ecx, 0x1
	cmp edi, ecx
	jnz _Z29CCS_InitConstantConfigStringsv_60
	mov ecx, ebx
	shr ecx, 1
	mov eax, 0x80000003
	mul ecx
	mov ecx, edx
	shr ecx, 0x1d
	lea edx, [ecx+ecx]
	mov eax, ecx
	shl eax, 0x1f
	sub eax, edx
	mov ecx, ebx
	sub ecx, eax
_Z29CCS_InitConstantConfigStringsv_110:
	lea eax, [ecx+0x1]
	mov [esi+0x8], eax
	mov eax, [esi]
	mov edx, eax
	test eax, eax
	js _Z29CCS_InitConstantConfigStringsv_70
_Z29CCS_InitConstantConfigStringsv_120:
	sar edx, 0x5
	mov ecx, eax
	and ecx, 0x8000001f
	js _Z29CCS_InitConstantConfigStringsv_80
_Z29CCS_InitConstantConfigStringsv_130:
	mov eax, 0x1
	shl eax, cl
	or [edx*4+reservedConfigStrings], eax
	add dword [ebp-0x1c], 0x1
	mov eax, [esi+0x10]
	add esi, 0x10
	test eax, eax
	jnz _Z29CCS_InitConstantConfigStringsv_90
	mov eax, [ebp-0x1c]
	mov [constantConfigStringCount], eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z29CCS_InitConstantConfigStringsv_20:
	mov edx, [esi+0x4]
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, edx
	repne scasb
	not ecx
	lea eax, [ecx-0x1]
	cmp eax, 0xff
	ja _Z29CCS_InitConstantConfigStringsv_40
	test eax, eax
	jnz _Z29CCS_InitConstantConfigStringsv_100
_Z29CCS_InitConstantConfigStringsv_50:
	xor ecx, ecx
	jmp _Z29CCS_InitConstantConfigStringsv_110
_Z29CCS_InitConstantConfigStringsv_40:
	shr eax, 0x2
	add eax, 0x1
	mov [esi+0x8], eax
	mov eax, [esi]
	mov edx, eax
	test eax, eax
	jns _Z29CCS_InitConstantConfigStringsv_120
_Z29CCS_InitConstantConfigStringsv_70:
	lea edx, [eax+0x1f]
	sar edx, 0x5
	mov ecx, eax
	and ecx, 0x8000001f
	jns _Z29CCS_InitConstantConfigStringsv_130
_Z29CCS_InitConstantConfigStringsv_80:
	sub ecx, 0x1
	or ecx, 0xffffffe0
	add ecx, 0x1
	jmp _Z29CCS_InitConstantConfigStringsv_130
_Z29CCS_InitConstantConfigStringsv_30:
	mov edi, edx
	mov ebx, tempString
_Z29CCS_InitConstantConfigStringsv_140:
	movsx eax, al
	mov [esp], eax
	call tolower
	mov [ebx], al
	add ebx, 0x1
	movzx eax, byte [edi+0x1]
	add edi, 0x1
	test al, al
	jnz _Z29CCS_InitConstantConfigStringsv_140
	jmp _Z29CCS_InitConstantConfigStringsv_150
_Z29CCS_InitConstantConfigStringsv_100:
	mov edi, edx
	xor ebx, ebx
	lea ecx, [edx+eax]
_Z29CCS_InitConstantConfigStringsv_160:
	mov eax, ebx
	shl eax, 0x5
	sub eax, ebx
	movsx edx, byte [edi]
	lea ebx, [edx+eax]
	add edi, 0x1
	cmp ecx, edi
	jnz _Z29CCS_InitConstantConfigStringsv_160
	mov ecx, ebx
	shr ecx, 1
	mov eax, 0x80000003
	mul ecx
	mov ecx, edx
	shr ecx, 0x1d
	lea edx, [ecx+ecx]
	mov eax, ecx
	shl eax, 0x1f
	sub eax, edx
	mov ecx, ebx
	sub ecx, eax
	jmp _Z29CCS_InitConstantConfigStringsv_110
_Z29CCS_InitConstantConfigStringsv_10:
	mov dword [ebp-0x1c], 0x0
	mov eax, [ebp-0x1c]
	mov [constantConfigStringCount], eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;CCS_IsConfigStringIndexConstant(int)
_Z31CCS_IsConfigStringIndexConstanti:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, eax
	test eax, eax
	js _Z31CCS_IsConfigStringIndexConstanti_10
	sar edx, 0x5
	mov ecx, eax
	and ecx, 0x8000001f
	js _Z31CCS_IsConfigStringIndexConstanti_20
_Z31CCS_IsConfigStringIndexConstanti_30:
	mov eax, 0x1
	shl eax, cl
	and eax, [edx*4+reservedConfigStrings]
	pop ebp
	ret
_Z31CCS_IsConfigStringIndexConstanti_10:
	lea edx, [eax+0x1f]
	sar edx, 0x5
	mov ecx, eax
	and ecx, 0x8000001f
	jns _Z31CCS_IsConfigStringIndexConstanti_30
_Z31CCS_IsConfigStringIndexConstanti_20:
	sub ecx, 0x1
	or ecx, 0xffffffe0
	add ecx, 0x1
	mov eax, 0x1
	shl eax, cl
	and eax, [edx*4+reservedConfigStrings]
	pop ebp
	ret


;CCS_GetConfigStringNumForConstIndex(int)
_Z35CCS_GetConfigStringNumForConstIndexi:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	shl eax, 0x4
	mov eax, [eax+constantConfigStrings]
	pop ebp
	ret
	nop


;Initialized global or static variables of com_constantconfigstrings:
SECTION .data
constantConfigStrings: dd 0x14, _cstring_bg_aimspreadmove, 0x0, 0x0, 0x15, _cstring_bg_bobamplituded, 0x0, 0x0, 0x16, _cstring_bg_bobamplitudep, 0x0, 0x0, 0x17, _cstring_bg_bobamplitudes, 0x0, 0x0, 0x18, _cstring_bg_bobamplitudes1, 0x0, 0x0, 0x19, _cstring_bg_bobmax, 0x0, 0x0, 0x1a, _cstring_bg_falldamagemax, 0x0, 0x0, 0x1b, _cstring_bg_falldamagemin, 0x0, 0x0, 0x1c, _cstring_bg_foliagesnd_fa, 0x0, 0x0, 0x1d, _cstring_bg_foliagesnd_ma, 0x0, 0x0, 0x1e, _cstring_bg_foliagesnd_mi, 0x0, 0x0, 0x1f, _cstring_bg_foliagesnd_re, 0x0, 0x0, 0x20, _cstring_bg_foliagesnd_sl, 0x0, 0x0, 0x21, _cstring_bg_ladder_yawcap, 0x0, 0x0, 0x22, _cstring_bg_maxgrenadeind, 0x0, 0x0, 0x23, _cstring_bg_prone_yawcap, 0x0, 0x0, 0x24, _cstring_cg_thirdpersonan, 0x0, 0x0, 0x25, _cstring_friction, 0x0, 0x0, 0x26, _cstring_g_scorescolor_al, 0x0, 0x0, 0x27, _cstring_g_scorescolor_ax, 0x0, 0x0, 0x28, _cstring_g_scorescolor_en, 0x0, 0x0, 0x29, _cstring_g_scorescolor_fr, 0x0, 0x0, 0x2a, _cstring_g_scorescolor_my, 0x0, 0x0, 0x2b, _cstring_g_scorescolor_sp, 0x0, 0x0, 0x2c, _cstring_g_teamcolor_alli, 0x0, 0x0, 0x2d, _cstring_g_teamcolor_axis, 0x0, 0x0, 0x2e, _cstring_g_teamcolor_enem, 0x0, 0x0, 0x2f, _cstring_g_teamcolor_free, 0x0, 0x0, 0x30, _cstring_g_teamcolor_myte, 0x0, 0x0, 0x31, _cstring_g_teamcolor_spec, 0x0, 0x0, 0x32, _cstring_g_teamicon_allie, 0x0, 0x0, 0x33, _cstring_g_teamicon_axis, 0x0, 0x0, 0x34, _cstring_g_teamicon_free, 0x0, 0x0, 0x35, _cstring_g_teamicon_spect, 0x0, 0x0, 0x36, _cstring_g_teamname_allie, 0x0, 0x0, 0x37, _cstring_g_teamname_axis, 0x0, 0x0, 0x38, _cstring_inertiaangle, 0x0, 0x0, 0x39, _cstring_inertiadebug, 0x0, 0x0, 0x3a, _cstring_inertiamax, 0x0, 0x0, 0x3b, _cstring_jump_height, 0x0, 0x0, 0x3c, _cstring_jump_ladderpushv, 0x0, 0x0, 0x3d, _cstring_jump_slowdownena, 0x0, 0x0, 0x3e, _cstring_jump_spreadadd, 0x0, 0x0, 0x3f, _cstring_jump_stepsize, 0x0, 0x0, 0x40, _cstring_mantle_check_ang, 0x0, 0x0, 0x41, _cstring_mantle_check_rad, 0x0, 0x0, 0x42, _cstring_mantle_check_ran, 0x0, 0x0, 0x43, _cstring_mantle_debug, 0x0, 0x0, 0x44, _cstring_mantle_enable, 0x0, 0x0, 0x45, _cstring_mantle_view_yawc, 0x0, 0x0, 0x46, _cstring_player_adsexitde, 0x0, 0x0, 0x47, _cstring_player_backspeed, 0x0, 0x0, 0x48, _cstring_player_breath_fi, 0x0, 0x0, 0x49, _cstring_player_breath_ga, 0x0, 0x0, 0x4a, _cstring_player_breath_ga1, 0x0, 0x0, 0x4b, _cstring_player_breath_ga2, 0x0, 0x0, 0x4c, _cstring_player_breath_ho, 0x0, 0x0, 0x4d, _cstring_player_breath_ho1, 0x0, 0x0, 0x4e, _cstring_player_breath_sn, 0x0, 0x0, 0x4f, _cstring_player_breath_sn1, 0x0, 0x0, 0x50, _cstring_player_debugheal, 0x0, 0x0, 0x51, _cstring_player_dmgtimer_, 0x0, 0x0, 0x52, _cstring_player_dmgtimer_1, 0x0, 0x0, 0x53, _cstring_player_dmgtimer_2, 0x0, 0x0, 0x54, _cstring_player_dmgtimer_3, 0x0, 0x0, 0x55, _cstring_player_dmgtimer_4, 0x0, 0x0, 0x56, _cstring_player_footsteps, 0x0, 0x0, 0x57, _cstring_player_movethres, 0x0, 0x0, 0x58, _cstring_player_runbkthre, 0x0, 0x0, 0x59, _cstring_player_runthresh, 0x0, 0x0, 0x5a, _cstring_player_scopeexit, 0x0, 0x0, 0x5b, _cstring_player_spectates, 0x0, 0x0, 0x5c, _cstring_player_sprintcam, 0x0, 0x0, 0x5d, _cstring_player_sprintfor, 0x0, 0x0, 0x5e, _cstring_player_sprintmin, 0x0, 0x0, 0x5f, _cstring_player_sprintrec, 0x0, 0x0, 0x60, _cstring_player_sprintspe, 0x0, 0x0, 0x61, _cstring_player_sprintstr, 0x0, 0x0, 0x62, _cstring_player_sprintthr, 0x0, 0x0, 0x63, _cstring_player_sprinttim, 0x0, 0x0, 0x64, _cstring_player_strafeani, 0x0, 0x0, 0x65, _cstring_player_strafespe, 0x0, 0x0, 0x66, _cstring_player_turnanims, 0x0, 0x0, 0x67, _cstring_player_view_pitc, 0x0, 0x0, 0x68, _cstring_player_view_pitc1, 0x0, 0x0, 0x69, _cstring_scr_allies, 0x0, 0x0, 0x6a, _cstring_scr_axis, 0x0, 0x0, 0x6b, _cstring_scr_oldschool, 0x0, 0x0, 0x6c, _cstring_stopspeed, 0x0, 0x0, 0x15e, _cstring_platform_hold_to, 0x0, 0x0, 0x15f, _cstring_platform_hold_to1, 0x0, 0x0, 0x186, _cstring_perks_eavesdrop, 0x0, 0x0, 0x187, _cstring_perks_uav_jammer, 0x0, 0x0, 0x188, _cstring_perks_iron_lungs, 0x0, 0x0, 0x189, _cstring_perks_dead_silen, 0x0, 0x0, 0x18a, _cstring_perks_extreme_co, 0x0, 0x0, 0x18b, _cstring_perks_bomb_squad, 0x0, 0x0, 0x18c, _cstring_perks_sonic_boom, 0x0, 0x0, 0x18d, _cstring_perks_last_stand, 0x0, 0x0, 0x18e, _cstring_perks_martyrdom, 0x0, 0x0, 0x18f, _cstring_perks_stopping_p, 0x0, 0x0, 0x190, _cstring_perks_deep_impac, 0x0, 0x0, 0x191, _cstring_perks_steady_aim, 0x0, 0x0, 0x192, _cstring_perks_double_tap, 0x0, 0x0, 0x193, _cstring_perks_sleight_of, 0x0, 0x0, 0x194, _cstring_perks_bandolier, 0x0, 0x0, 0x195, _cstring_perks_overkill, 0x0, 0x0, 0x196, _cstring_perks_juggernaut, 0x0, 0x0, 0x197, _cstring_perks_frag_x_3, 0x0, 0x0, 0x198, _cstring_perks_special_gr, 0x0, 0x0, 0x199, _cstring_perks_c4_x_2, 0x0, 0x0, 0x19a, _cstring_perks_claymore_x, 0x0, 0x0, 0x19b, _cstring_perks_rpg7_x_2, 0x0, 0x0, 0x19c, _cstring_perks_none, 0x0, 0x0, 0x19d, _cstring_perks_grenade_la, 0x0, 0x0, 0x19e, _cstring_perks_grip, 0x0, 0x0, 0x19f, _cstring_perks_attachment, 0x0, 0x0, 0x1a0, _cstring_rank_player_was_, 0x0, 0x0, 0x1a1, _cstring_rank_player_was_1, 0x0, 0x0, 0x1a2, _cstring_rank_promoted, 0x0, 0x0, 0x1a3, _cstring_mp_plus, 0x0, 0x0, 0x1a4, _cstring_rank_romani, 0x0, 0x0, 0x1a5, _cstring_rank_romanii, 0x0, 0x0, 0x1a6, _cstring_rank_pfc_full, 0x0, 0x0, 0x1a7, _cstring_rank_pfc_full_n, 0x0, 0x0, 0x1a8, _cstring_rank_lcpl_full, 0x0, 0x0, 0x1a9, _cstring_rank_lcpl_full_n, 0x0, 0x0, 0x1aa, _cstring_rank_cpl_full, 0x0, 0x0, 0x1ab, _cstring_rank_cpl_full_n, 0x0, 0x0, 0x1ac, _cstring_rank_sgt_full, 0x0, 0x0, 0x1ad, _cstring_rank_sgt_full_n, 0x0, 0x0, 0x1ae, _cstring_rank_ssgt_full, 0x0, 0x0, 0x1af, _cstring_rank_ssgt_full_n, 0x0, 0x0, 0x1b0, _cstring_rank_gysgt_full, 0x0, 0x0, 0x1b1, _cstring_rank_gysgt_full_, 0x0, 0x0, 0x1b2, _cstring_rank_msgt_full, 0x0, 0x0, 0x1b3, _cstring_rank_msgt_full_n, 0x0, 0x0, 0x1b4, _cstring_rank_mgysgt_full, 0x0, 0x0, 0x1b5, _cstring_rank_mgysgt_full1, 0x0, 0x0, 0x1b6, _cstring_rank_2ndlt_full, 0x0, 0x0, 0x1b7, _cstring_rank_2ndlt_full_, 0x0, 0x0, 0x1b8, _cstring_rank_1stlt_full, 0x0, 0x0, 0x1b9, _cstring_rank_1stlt_full_, 0x0, 0x0, 0x1ba, _cstring_rank_capt_full, 0x0, 0x0, 0x1bb, _cstring_rank_capt_full_n, 0x0, 0x0, 0x1bc, _cstring_rank_maj_full, 0x0, 0x0, 0x1bd, _cstring_rank_maj_full_n, 0x0, 0x0, 0x1be, _cstring_rank_ltcol_full, 0x0, 0x0, 0x1bf, _cstring_rank_ltcol_full_, 0x0, 0x0, 0x1c0, _cstring_rank_col_full, 0x0, 0x0, 0x1c1, _cstring_rank_col_full_n, 0x0, 0x0, 0x1c2, _cstring_rank_bgen_full, 0x0, 0x0, 0x1c3, _cstring_rank_bgen_full_n, 0x0, 0x0, 0x1c4, _cstring_rank_majgen_full, 0x0, 0x0, 0x1c5, _cstring_rank_majgen_full1, 0x0, 0x0, 0x1c6, _cstring_rank_ltgen_full, 0x0, 0x0, 0x1c7, _cstring_rank_ltgen_full_, 0x0, 0x0, 0x1c8, _cstring_rank_gen_full, 0x0, 0x0, 0x1c9, _cstring_rank_gen_full_n, 0x0, 0x0, 0x1ca, _cstring_rank_comm_full, 0x0, 0x0, 0x1cb, _cstring_challenge_m16_ma, 0x0, 0x0, 0x1cc, _cstring_challenge_m16_ma1, 0x0, 0x0, 0x1cd, _cstring_challenge_m16_ma2, 0x0, 0x0, 0x1ce, _cstring_challenge_m16_ex, 0x0, 0x0, 0x1cf, _cstring_challenge_m16_ex1, 0x0, 0x0, 0x1d0, _cstring_challenge_m16_ex2, 0x0, 0x0, 0x1d1, _cstring_challenge_ak47_m, 0x0, 0x0, 0x1d2, _cstring_challenge_ak47_m1, 0x0, 0x0, 0x1d3, _cstring_challenge_ak47_m2, 0x0, 0x0, 0x1d4, _cstring_challenge_ak47_e, 0x0, 0x0, 0x1d5, _cstring_challenge_ak47_e1, 0x0, 0x0, 0x1d6, _cstring_challenge_ak47_e2, 0x0, 0x0, 0x1d7, _cstring_challenge_g3_mar, 0x0, 0x0, 0x1d8, _cstring_challenge_g3_mar1, 0x0, 0x0, 0x1d9, _cstring_challenge_g3_mar2, 0x0, 0x0, 0x1da, _cstring_challenge_g3_exp, 0x0, 0x0, 0x1db, _cstring_challenge_g3_exp1, 0x0, 0x0, 0x1dc, _cstring_challenge_g3_exp2, 0x0, 0x0, 0x1dd, _cstring_challenge_m4_mar, 0x0, 0x0, 0x1de, _cstring_challenge_m4_mar1, 0x0, 0x0, 0x1df, _cstring_challenge_m4_mar2, 0x0, 0x0, 0x1e0, _cstring_challenge_m4_exp, 0x0, 0x0, 0x1e1, _cstring_challenge_m4_exp1, 0x0, 0x0, 0x1e2, _cstring_challenge_m4_exp2, 0x0, 0x0, 0x1e3, _cstring_challenge_m14_ma, 0x0, 0x0, 0x1e4, _cstring_challenge_m14_ma1, 0x0, 0x0, 0x1e5, _cstring_challenge_m14_ma2, 0x0, 0x0, 0x1e6, _cstring_challenge_m14_ex, 0x0, 0x0, 0x1e7, _cstring_challenge_m14_ex1, 0x0, 0x0, 0x1e8, _cstring_challenge_m14_ex2, 0x0, 0x0, 0x1e9, _cstring_challenge_g36c_m, 0x0, 0x0, 0x1ea, _cstring_challenge_g36c_m1, 0x0, 0x0, 0x1eb, _cstring_challenge_g36c_m2, 0x0, 0x0, 0x1ec, _cstring_challenge_g36c_e, 0x0, 0x0, 0x1ed, _cstring_challenge_g36c_e1, 0x0, 0x0, 0x1ee, _cstring_challenge_g36c_e2, 0x0, 0x0, 0x1ef, _cstring_challenge_mp44_e, 0x0, 0x0, 0x1f0, _cstring_challenge_mp44_e1, 0x0, 0x0, 0x1f1, _cstring_challenge_mp44_e2, 0x0, 0x0, 0x1f2, _cstring_challenge_mp5_ma, 0x0, 0x0, 0x1f3, _cstring_challenge_mp5_ma1, 0x0, 0x0, 0x1f4, _cstring_challenge_mp5_ma2, 0x0, 0x0, 0x1f5, _cstring_challenge_mp5_ex, 0x0, 0x0, 0x1f6, _cstring_challenge_mp5_ex1, 0x0, 0x0, 0x1f7, _cstring_challenge_mp5_ex2, 0x0, 0x0, 0x1f8, _cstring_challenge_skorpi, 0x0, 0x0, 0x1f9, _cstring_challenge_skorpi1, 0x0, 0x0, 0x1fa, _cstring_challenge_skorpi2, 0x0, 0x0, 0x1fb, _cstring_challenge_skorpi3, 0x0, 0x0, 0x1fc, _cstring_challenge_skorpi4, 0x0, 0x0, 0x1fd, _cstring_challenge_skorpi5, 0x0, 0x0, 0x1fe, _cstring_challenge_miniuz, 0x0, 0x0, 0x1ff, _cstring_challenge_miniuz1, 0x0, 0x0, 0x200, _cstring_challenge_miniuz2, 0x0, 0x0, 0x201, _cstring_challenge_miniuz3, 0x0, 0x0, 0x202, _cstring_challenge_miniuz4, 0x0, 0x0, 0x203, _cstring_challenge_miniuz5, 0x0, 0x0, 0x204, _cstring_challenge_ak74u_, 0x0, 0x0, 0x205, _cstring_challenge_ak74u_1, 0x0, 0x0, 0x206, _cstring_challenge_ak74u_2, 0x0, 0x0, 0x207, _cstring_challenge_ak74u_3, 0x0, 0x0, 0x208, _cstring_challenge_ak74u_4, 0x0, 0x0, 0x209, _cstring_challenge_ak74u_5, 0x0, 0x0, 0x20a, _cstring_challenge_p90_ma, 0x0, 0x0, 0x20b, _cstring_challenge_p90_ma1, 0x0, 0x0, 0x20c, _cstring_challenge_p90_ma2, 0x0, 0x0, 0x20d, _cstring_challenge_p90_ex, 0x0, 0x0, 0x20e, _cstring_challenge_p90_ex1, 0x0, 0x0, 0x20f, _cstring_challenge_p90_ex2, 0x0, 0x0, 0x210, _cstring_challenge_m249_s, 0x0, 0x0, 0x211, _cstring_challenge_m249_s1, 0x0, 0x0, 0x212, _cstring_challenge_m249_s2, 0x0, 0x0, 0x213, _cstring_challenge_m249_s3, 0x0, 0x0, 0x214, _cstring_challenge_m249_s4, 0x0, 0x0, 0x215, _cstring_challenge_m249_s5, 0x0, 0x0, 0x216, _cstring_challenge_rpd_ma, 0x0, 0x0, 0x217, _cstring_challenge_rpd_ma1, 0x0, 0x0, 0x218, _cstring_challenge_rpd_ma2, 0x0, 0x0, 0x219, _cstring_challenge_rpd_ex, 0x0, 0x0, 0x21a, _cstring_challenge_rpd_ex1, 0x0, 0x0, 0x21b, _cstring_challenge_rpd_ex2, 0x0, 0x0, 0x21c, _cstring_challenge_m60e4_, 0x0, 0x0, 0x21d, _cstring_challenge_m60e4_1, 0x0, 0x0, 0x21e, _cstring_challenge_m60e4_2, 0x0, 0x0, 0x21f, _cstring_challenge_m60e4_3, 0x0, 0x0, 0x220, _cstring_challenge_m60e4_4, 0x0, 0x0, 0x221, _cstring_challenge_m60e4_5, 0x0, 0x0, 0x222, _cstring_challenge_w1200_, 0x0, 0x0, 0x223, _cstring_challenge_w1200_1, 0x0, 0x0, 0x224, _cstring_challenge_w1200_2, 0x0, 0x0, 0x225, _cstring_challenge_w1200_3, 0x0, 0x0, 0x226, _cstring_challenge_w1200_4, 0x0, 0x0, 0x227, _cstring_challenge_benell, 0x0, 0x0, 0x228, _cstring_challenge_benell1, 0x0, 0x0, 0x229, _cstring_challenge_benell2, 0x0, 0x0, 0x22a, _cstring_challenge_benell3, 0x0, 0x0, 0x22b, _cstring_challenge_benell4, 0x0, 0x0, 0x22c, _cstring_challenge_m40a3_, 0x0, 0x0, 0x22d, _cstring_challenge_m40a3_1, 0x0, 0x0, 0x22e, _cstring_challenge_m40a3_2, 0x0, 0x0, 0x22f, _cstring_challenge_m40a3_3, 0x0, 0x0, 0x230, _cstring_challenge_m21_ma, 0x0, 0x0, 0x231, _cstring_challenge_m21_ex, 0x0, 0x0, 0x232, _cstring_challenge_m21_ex1, 0x0, 0x0, 0x233, _cstring_challenge_m21_ex2, 0x0, 0x0, 0x234, _cstring_challenge_dragun, 0x0, 0x0, 0x235, _cstring_challenge_dragun1, 0x0, 0x0, 0x236, _cstring_challenge_dragun2, 0x0, 0x0, 0x237, _cstring_challenge_dragun3, 0x0, 0x0, 0x238, _cstring_challenge_r700_m, 0x0, 0x0, 0x239, _cstring_challenge_r700_e, 0x0, 0x0, 0x23a, _cstring_challenge_r700_e1, 0x0, 0x0, 0x23b, _cstring_challenge_r700_e2, 0x0, 0x0, 0x23c, _cstring_challenge_barret, 0x0, 0x0, 0x23d, _cstring_challenge_barret1, 0x0, 0x0, 0x23e, _cstring_challenge_barret2, 0x0, 0x0, 0x23f, _cstring_challenge_barret3, 0x0, 0x0, 0x240, _cstring_challenge_radar_, 0x0, 0x0, 0x241, _cstring_challenge_airstr, 0x0, 0x0, 0x242, _cstring_challenge_choppe, 0x0, 0x0, 0x243, _cstring_challenge_flyswa, 0x0, 0x0, 0x244, _cstring_challenge_marath, 0x0, 0x0, 0x245, _cstring_challenge_goodby, 0x0, 0x0, 0x246, _cstring_challenge_base_j, 0x0, 0x0, 0x247, _cstring_challenge_crouch, 0x0, 0x0, 0x248, _cstring_challenge_crouch1, 0x0, 0x0, 0x249, _cstring_challenge_crouch2, 0x0, 0x0, 0x24a, _cstring_challenge_prone_, 0x0, 0x0, 0x24b, _cstring_challenge_prone_1, 0x0, 0x0, 0x24c, _cstring_challenge_prone_2, 0x0, 0x0, 0x24d, _cstring_challenge_grenad, 0x0, 0x0, 0x24e, _cstring_challenge_grenad1, 0x0, 0x0, 0x24f, _cstring_challenge_grenad2, 0x0, 0x0, 0x250, _cstring_challenge_point_, 0x0, 0x0, 0x251, _cstring_challenge_point_1, 0x0, 0x0, 0x252, _cstring_challenge_point_2, 0x0, 0x0, 0x253, _cstring_challenge_xray_v, 0x0, 0x0, 0x254, _cstring_challenge_xray_v1, 0x0, 0x0, 0x255, _cstring_challenge_xray_v2, 0x0, 0x0, 0x256, _cstring_challenge_vandal, 0x0, 0x0, 0x257, _cstring_challenge_vandal1, 0x0, 0x0, 0x258, _cstring_challenge_vandal2, 0x0, 0x0, 0x259, _cstring_challenge_expose, 0x0, 0x0, 0x25a, _cstring_challenge_expose1, 0x0, 0x0, 0x25b, _cstring_challenge_expose2, 0x0, 0x0, 0x25c, _cstring_challenge_backdr, 0x0, 0x0, 0x25d, _cstring_challenge_backdr1, 0x0, 0x0, 0x25e, _cstring_challenge_backdr2, 0x0, 0x0, 0x25f, _cstring_challenge_knife_, 0x0, 0x0, 0x260, _cstring_challenge_knife_1, 0x0, 0x0, 0x261, _cstring_challenge_knife_2, 0x0, 0x0, 0x262, _cstring_challenge_freefo, 0x0, 0x0, 0x263, _cstring_challenge_freefo1, 0x0, 0x0, 0x264, _cstring_challenge_freefo2, 0x0, 0x0, 0x265, _cstring_challenge_team_p, 0x0, 0x0, 0x266, _cstring_challenge_team_p1, 0x0, 0x0, 0x267, _cstring_challenge_team_p2, 0x0, 0x0, 0x268, _cstring_challenge_sd_vic, 0x0, 0x0, 0x269, _cstring_challenge_sd_vic1, 0x0, 0x0, 0x26a, _cstring_challenge_sd_vic2, 0x0, 0x0, 0x26b, _cstring_challenge_mvp_te, 0x0, 0x0, 0x26c, _cstring_challenge_hardco, 0x0, 0x0, 0x26d, _cstring_challenge_hardco1, 0x0, 0x0, 0x26e, _cstring_challenge_hardco2, 0x0, 0x0, 0x26f, _cstring_challenge_sabota, 0x0, 0x0, 0x270, _cstring_challenge_sabota1, 0x0, 0x0, 0x271, _cstring_challenge_sabota2, 0x0, 0x0, 0x272, _cstring_challenge_mvp_te1, 0x0, 0x0, 0x273, _cstring_challenge_bomb_d, 0x0, 0x0, 0x274, _cstring_challenge_bomb_d1, 0x0, 0x0, 0x275, _cstring_challenge_bomb_p, 0x0, 0x0, 0x276, _cstring_challenge_hero, 0x0, 0x0, 0x277, _cstring_challenge_last_m, 0x0, 0x0, 0x278, _cstring_challenge_claymo, 0x0, 0x0, 0x279, _cstring_challenge_assaul, 0x0, 0x0, 0x27a, _cstring_challenge_assaul1, 0x0, 0x0, 0x27b, _cstring_challenge_assaul2, 0x0, 0x0, 0x27c, _cstring_challenge_smg_ex, 0x0, 0x0, 0x27d, _cstring_challenge_smg_ex1, 0x0, 0x0, 0x27e, _cstring_challenge_smg_ex2, 0x0, 0x0, 0x27f, _cstring_challenge_lmg_ex, 0x0, 0x0, 0x280, _cstring_challenge_lmg_ex1, 0x0, 0x0, 0x281, _cstring_challenge_lmg_ex2, 0x0, 0x0, 0x282, _cstring_challenge_last_s, 0x0, 0x0, 0x283, _cstring_challenge_last_s1, 0x0, 0x0, 0x284, _cstring_challenge_last_s2, 0x0, 0x0, 0x285, _cstring_challenge_master, 0x0, 0x0, 0x286, _cstring_challenge_master1, 0x0, 0x0, 0x287, _cstring_challenge_master2, 0x0, 0x0, 0x288, _cstring_challenge_airstr1, 0x0, 0x0, 0x289, _cstring_challenge_airstr2, 0x0, 0x0, 0x28a, _cstring_challenge_airstr3, 0x0, 0x0, 0x28b, _cstring_challenge_choppe1, 0x0, 0x0, 0x28c, _cstring_challenge_choppe2, 0x0, 0x0, 0x28d, _cstring_challenge_choppe3, 0x0, 0x0, 0x28e, _cstring_challenge_stun_v, 0x0, 0x0, 0x28f, _cstring_challenge_stun_v1, 0x0, 0x0, 0x290, _cstring_challenge_stun_v2, 0x0, 0x0, 0x291, _cstring_challenge_multir, 0x0, 0x0, 0x292, _cstring_challenge_martyr, 0x0, 0x0, 0x293, _cstring_challenge_martyr1, 0x0, 0x0, 0x294, _cstring_challenge_martyr2, 0x0, 0x0, 0x295, _cstring_challenge_clay_m, 0x0, 0x0, 0x296, _cstring_challenge_stealt, 0x0, 0x0, 0x297, _cstring_challenge_stealt1, 0x0, 0x0, 0x298, _cstring_challenge_stealt2, 0x0, 0x0, 0x299, _cstring_challenge_invisi, 0x0, 0x0, 0x29a, _cstring_challenge_invisi1, 0x0, 0x0, 0x29b, _cstring_challenge_invisi2, 0x0, 0x0, 0x29c, _cstring_challenge_counte, 0x0, 0x0, 0x29d, _cstring_challenge_counte1, 0x0, 0x0, 0x29e, _cstring_challenge_counte2, 0x0, 0x0, 0x29f, _cstring_challenge_counte3, 0x0, 0x0, 0x2a0, _cstring_challenge_counte4, 0x0, 0x0, 0x2a1, _cstring_challenge_counte5, 0x0, 0x0, 0x2a2, _cstring_challenge_airbor, 0x0, 0x0, 0x2a3, _cstring_challenge_multif, 0x0, 0x0, 0x2a4, _cstring_challenge_carpet, 0x0, 0x0, 0x2a5, _cstring_challenge_mg_mas, 0x0, 0x0, 0x2a6, _cstring_challenge_slashe, 0x0, 0x0, 0x2a7, _cstring_challenge_multic, 0x0, 0x0, 0x2a8, _cstring_challenge_hot_po, 0x0, 0x0, 0x2a9, _cstring_challenge_hot_po1, 0x0, 0x0, 0x2aa, _cstring_challenge_hot_po2, 0x0, 0x0, 0x2ab, _cstring_challenge_car_bo, 0x0, 0x0, 0x2ac, _cstring_challenge_backst, 0x0, 0x0, 0x2ad, _cstring_challenge_slow_b, 0x0, 0x0, 0x2ae, _cstring_challenge_flashb, 0x0, 0x0, 0x2af, _cstring_challenge_flashb1, 0x0, 0x0, 0x2b0, _cstring_challenge_flashb2, 0x0, 0x0, 0x2b1, _cstring_challenge_misery, 0x0, 0x0, 0x2b2, _cstring_challenge_misery1, 0x0, 0x0, 0x2b3, _cstring_challenge_misery2, 0x0, 0x0, 0x2b4, _cstring_challenge_ouch_i, 0x0, 0x0, 0x2b5, _cstring_challenge_ouch_i1, 0x0, 0x0, 0x2b6, _cstring_challenge_ouch_i2, 0x0, 0x0, 0x2b7, _cstring_challenge_rival, 0x0, 0x0, 0x2b8, _cstring_challenge_cruelt, 0x0, 0x0, 0x2b9, _cstring_challenge_think_, 0x0, 0x0, 0x2ba, _cstring_challenge_think_1, 0x0, 0x0, 0x2bb, _cstring_challenge_think_2, 0x0, 0x0, 0x2bc, _cstring_challenge_return, 0x0, 0x0, 0x2bd, _cstring_challenge_blindf, 0x0, 0x0, 0x2be, _cstring_challenge_the_br, 0x0, 0x0, 0x2bf, _cstring_challenge_collat, 0x0, 0x0, 0x2c0, _cstring_challenge_the_ed, 0x0, 0x0, 0x2c1, _cstring_challenge_the_ed1, 0x0, 0x0, 0x2c2, _cstring_challenge_the_ed2, 0x0, 0x0, 0x2c3, _cstring_challenge_flawle, 0x0, 0x0, 0x2c4, _cstring_challenge_tango_, 0x0, 0x0, 0x2c5, _cstring_challenge_hard_l, 0x0, 0x0, 0x2c6, _cstring_challenge_extrem, 0x0, 0x0, 0x2c7, _cstring_challenge_fast_s, 0x0, 0x0, 0x2c8, _cstring_challenge_star_p, 0x0, 0x0, 0x2c9, _cstring_challenge_how_th, 0x0, 0x0, 0x2ca, _cstring_challenge_domino, 0x0, 0x0, 0x2cb, _cstring_challenge_no_sec, 0x0, 0x0, 0x2cc, _cstring_challenge_afterb, 0x0, 0x0, 0x2cd, _cstring_challenge_air_su, 0x0, 0x0, 0x2ce, _cstring_challenge_fearle, 0x0, 0x0, 0x2cf, _cstring_challenge_counte6, 0x0, 0x0, 0x2d0, _cstring_challenge_invinc, 0x0, 0x0, 0x2d1, _cstring_challenge_surviv, 0x0, 0x0, 0x2d2, _cstring_mp_host_endgame_, 0x0, 0x0, 0x2d3, _cstring_mp_autobalance_n, 0x0, 0x0, 0x2d4, _cstring_platform_press_t, 0x0, 0x0, 0x2d5, _cstring_platform_press_t1, 0x0, 0x0, 0x2d6, _cstring_mp_earned_radar, 0x0, 0x0, 0x2d7, _cstring_mp_earned_airstr, 0x0, 0x0, 0x2d8, _cstring_mp_earned_helico, 0x0, 0x0, 0x2d9, _cstring_mp_radar_not_ava, 0x0, 0x0, 0x2da, _cstring_mp_airstrike_not, 0x0, 0x0, 0x2db, _cstring_mp_helicopter_no, 0x0, 0x0, 0x2dc, _cstring_mp_killstreak_n, 0x0, 0x0, 0x2e0, _cstring_mp_match_bonus_i, 0x0, 0x0, 0x2e1, _cstring_mp_defeat, 0x0, 0x0, 0x2e2, _cstring_mp_victory, 0x0, 0x0, 0x2e3, _cstring_mp_round_loss, 0x0, 0x0, 0x2e4, _cstring_mp_round_win, 0x0, 0x0, 0x2e5, _cstring_mp_draw, 0x0, 0x0, 0x354, _cstring_weapon_saw_mg_se, 0x0, 0x0, 0x355, _cstring_weapon_m4_mp, 0x0, 0x0, 0x356, _cstring_weapon_m4_mp_bro, 0x0, 0x0, 0x357, _cstring_weapon_m4_mp_bsh, 0x0, 0x0, 0x358, _cstring_weapon_m4_mp_bwm, 0x0, 0x0, 0x359, _cstring_weapon_m4_mp_cmd, 0x0, 0x0, 0x35a, _cstring_weapon_m4_mp_sta, 0x0, 0x0, 0x35b, _cstring_weapon_m82, 0x0, 0x0, 0x35c, _cstring_weapon_m82_mp_br, 0x0, 0x0, 0x35d, _cstring_weapon_m82_mp_bs, 0x0, 0x0, 0x35e, _cstring_weapon_m82_mp_bw, 0x0, 0x0, 0x35f, _cstring_weapon_m82_mp_cm, 0x0, 0x0, 0x360, _cstring_weapon_m82_mp_st, 0x0, 0x0, 0x361, _cstring_weapon_g36_mp, 0x0, 0x0, 0x362, _cstring_weapon_g36_mp_br, 0x0, 0x0, 0x363, _cstring_weapon_g36_mp_bs, 0x0, 0x0, 0x364, _cstring_weapon_g36_mp_bw, 0x0, 0x0, 0x365, _cstring_weapon_g36_mp_cm, 0x0, 0x0, 0x366, _cstring_weapon_g36_mp_st, 0x0, 0x0, 0x367, _cstring_weapon_winchest1, 0x0, 0x0, 0x368, _cstring_weapon_winchest11, 0x0, 0x0, 0x369, _cstring_weapon_winchest12, 0x0, 0x0, 0x36a, _cstring_weapon_winchest13, 0x0, 0x0, 0x36b, _cstring_weapon_winchest14, 0x0, 0x0, 0x36c, _cstring_weapon_winchest15, 0x0, 0x0, 0x36d, _cstring_perc_stoppingpow, 0x0, 0x0, 0x36e, _cstring_weapon_m67_grena, 0x0, 0x0, 0x36f, _cstring_projectile_m67fr, 0x0, 0x0, 0x370, _cstring_weapon_mp5sd, 0x0, 0x0, 0x371, _cstring_weapon_mp5sd_mp_, 0x0, 0x0, 0x372, _cstring_weapon_mp5sd_mp_1, 0x0, 0x0, 0x373, _cstring_weapon_mp5sd_mp_2, 0x0, 0x0, 0x374, _cstring_weapon_mp5sd_mp_3, 0x0, 0x0, 0x375, _cstring_weapon_mp5sd_mp_4, 0x0, 0x0, 0x376, _cstring_weapon_desert_ea, 0x0, 0x0, 0x377, _cstring_weapon_rpg7, 0x0, 0x0, 0x378, _cstring_projectile_rpg7, 0x0, 0x0, 0x379, _cstring_weapon_mini_uzi, 0x0, 0x0, 0x37a, _cstring_weapon_mini_uzi_, 0x0, 0x0, 0x37b, _cstring_weapon_mini_uzi_1, 0x0, 0x0, 0x37c, _cstring_weapon_mini_uzi_2, 0x0, 0x0, 0x37d, _cstring_weapon_mini_uzi_3, 0x0, 0x0, 0x37e, _cstring_weapon_mini_uzi_4, 0x0, 0x0, 0x37f, _cstring_weapon_mini_uzi_5, 0x0, 0x0, 0x380, _cstring_perc_slieghtofha, 0x0, 0x0, 0x381, _cstring_perc_doubletap, 0x0, 0x0, 0x382, _cstring_weapon_m14_scout, 0x0, 0x0, 0x383, _cstring_weapon_m14_scout1, 0x0, 0x0, 0x384, _cstring_weapon_m14_scout2, 0x0, 0x0, 0x385, _cstring_weapon_m14_scout3, 0x0, 0x0, 0x386, _cstring_weapon_m14_scout4, 0x0, 0x0, 0x387, _cstring_weapon_m14_scout5, 0x0, 0x0, 0x388, _cstring_weapon_us_smoke_, 0x0, 0x0, 0x389, _cstring_projectile_us_sm, 0x0, 0x0, 0x38a, _cstring_weapon_m84_flash, 0x0, 0x0, 0x38b, _cstring_projectile_m84_f, 0x0, 0x0, 0x38c, _cstring_vehicle_mig29_de, 0x0, 0x0, 0x38d, _cstring_projectile_cbu97, 0x0, 0x0, 0x38e, _cstring_tag_origin, 0x0, 0x0, 0x3a5, _cstring_weapon_beretta, 0x0, 0x0, 0x3a6, _cstring_weapon_colt1911_, 0x0, 0x0, 0x3a7, _cstring_weapon_usp, 0x0, 0x0, 0x3a8, _cstring_weapon_desert_ea1, 0x0, 0x0, 0x3a9, _cstring_weapon_mp5, 0x0, 0x0, 0x3aa, _cstring_weapon_mp5_mp_br, 0x0, 0x0, 0x3ab, _cstring_weapon_mp5_mp_bs, 0x0, 0x0, 0x3ac, _cstring_weapon_mp5_mp_bw, 0x0, 0x0, 0x3ad, _cstring_weapon_mp5_mp_cm, 0x0, 0x0, 0x3ae, _cstring_weapon_mp5_mp_st, 0x0, 0x0, 0x3af, _cstring_weapon_skorpion, 0x0, 0x0, 0x3b0, _cstring_weapon_skorpion_, 0x0, 0x0, 0x3b1, _cstring_weapon_skorpion_1, 0x0, 0x0, 0x3b2, _cstring_weapon_skorpion_2, 0x0, 0x0, 0x3b3, _cstring_weapon_skorpion_3, 0x0, 0x0, 0x3b4, _cstring_weapon_skorpion_4, 0x0, 0x0, 0x3b5, _cstring_weapon_ak74u, 0x0, 0x0, 0x3b6, _cstring_weapon_ak74u_mp_, 0x0, 0x0, 0x3b7, _cstring_weapon_ak74u_mp_1, 0x0, 0x0, 0x3b8, _cstring_weapon_ak74u_mp_2, 0x0, 0x0, 0x3b9, _cstring_weapon_ak74u_mp_3, 0x0, 0x0, 0x3ba, _cstring_weapon_ak74u_mp_4, 0x0, 0x0, 0x3bb, _cstring_weapon_p90, 0x0, 0x0, 0x3bc, _cstring_weapon_p90_mp_br, 0x0, 0x0, 0x3bd, _cstring_weapon_p90_mp_bs, 0x0, 0x0, 0x3be, _cstring_weapon_p90_mp_bw, 0x0, 0x0, 0x3bf, _cstring_weapon_p90_mp_cm, 0x0, 0x0, 0x3c0, _cstring_weapon_p90_mp_st, 0x0, 0x0, 0x3c1, _cstring_weapon_ak47, 0x0, 0x0, 0x3c2, _cstring_weapon_ak47_mp_b, 0x0, 0x0, 0x3c3, _cstring_weapon_ak47_mp_b1, 0x0, 0x0, 0x3c4, _cstring_weapon_ak47_mp_b2, 0x0, 0x0, 0x3c5, _cstring_weapon_ak47_mp_c, 0x0, 0x0, 0x3c6, _cstring_weapon_ak47_mp_s, 0x0, 0x0, 0x3c7, _cstring_weapon_ak47_gold, 0x0, 0x0, 0x3c8, _cstring_weapon_mp44, 0x0, 0x0, 0x3c9, _cstring_weapon_mp44_mp_b, 0x0, 0x0, 0x3ca, _cstring_weapon_mp44_mp_b1, 0x0, 0x0, 0x3cb, _cstring_weapon_mp44_mp_b2, 0x0, 0x0, 0x3cc, _cstring_weapon_mp44_mp_c, 0x0, 0x0, 0x3cd, _cstring_weapon_mp44_mp_s, 0x0, 0x0, 0x3ce, _cstring_weapon_g3, 0x0, 0x0, 0x3cf, _cstring_weapon_g3_mp_bro, 0x0, 0x0, 0x3d0, _cstring_weapon_g3_mp_bsh, 0x0, 0x0, 0x3d1, _cstring_weapon_g3_mp_bwm, 0x0, 0x0, 0x3d2, _cstring_weapon_g3_mp_cmd, 0x0, 0x0, 0x3d3, _cstring_weapon_g3_mp_sta, 0x0, 0x0, 0x3d4, _cstring_weapon_m16_mp, 0x0, 0x0, 0x3d5, _cstring_weapon_m16_mp_br, 0x0, 0x0, 0x3d6, _cstring_weapon_m16_mp_bs, 0x0, 0x0, 0x3d7, _cstring_weapon_m16_mp_bw, 0x0, 0x0, 0x3d8, _cstring_weapon_m16_mp_cm, 0x0, 0x0, 0x3d9, _cstring_weapon_m16_mp_st, 0x0, 0x0, 0x3da, _cstring_weapon_m16gr_sp, 0x0, 0x0, 0x3db, _cstring_weapon_m16m203_m, 0x0, 0x0, 0x3dc, _cstring_weapon_m16m203_m1, 0x0, 0x0, 0x3dd, _cstring_weapon_m16m203_m2, 0x0, 0x0, 0x3de, _cstring_weapon_m16m203_m3, 0x0, 0x0, 0x3df, _cstring_weapon_m16m203_m4, 0x0, 0x0, 0x3e0, _cstring_projectile_m203g, 0x0, 0x0, 0x3e1, _cstring_weapon_dragunov, 0x0, 0x0, 0x3e2, _cstring_weapon_dragunov_, 0x0, 0x0, 0x3e3, _cstring_weapon_dragunov_1, 0x0, 0x0, 0x3e4, _cstring_weapon_dragunov_2, 0x0, 0x0, 0x3e5, _cstring_weapon_dragunov_3, 0x0, 0x0, 0x3e6, _cstring_weapon_dragunov_4, 0x0, 0x0, 0x3e7, _cstring_weapon_dragunov_5, 0x0, 0x0, 0x3e8, _cstring_weapon_m40a3, 0x0, 0x0, 0x3e9, _cstring_weapon_m40a3_mp_, 0x0, 0x0, 0x3ea, _cstring_weapon_m40a3_mp_1, 0x0, 0x0, 0x3eb, _cstring_weapon_m40a3_mp_2, 0x0, 0x0, 0x3ec, _cstring_weapon_m40a3_mp_3, 0x0, 0x0, 0x3ed, _cstring_weapon_m40a3_mp_4, 0x0, 0x0, 0x3ee, _cstring_weapon_remington, 0x0, 0x0, 0x3ef, _cstring_weapon_remington1, 0x0, 0x0, 0x3f0, _cstring_weapon_remington2, 0x0, 0x0, 0x3f1, _cstring_weapon_remington3, 0x0, 0x0, 0x3f2, _cstring_weapon_remington4, 0x0, 0x0, 0x3f3, _cstring_weapon_remington5, 0x0, 0x0, 0x3f4, _cstring_weapon_m14_mp, 0x0, 0x0, 0x3f5, _cstring_weapon_m14_mp_br, 0x0, 0x0, 0x3f6, _cstring_weapon_m14_mp_bs, 0x0, 0x0, 0x3f7, _cstring_weapon_m14_mp_bw, 0x0, 0x0, 0x3f8, _cstring_weapon_m14_mp_cm, 0x0, 0x0, 0x3f9, _cstring_weapon_m14_mp_st, 0x0, 0x0, 0x3fa, _cstring_weapon_benelli_s, 0x0, 0x0, 0x3fb, _cstring_weapon_benelli_s1, 0x0, 0x0, 0x3fc, _cstring_weapon_benelli_s2, 0x0, 0x0, 0x3fd, _cstring_weapon_benelli_s3, 0x0, 0x0, 0x3fe, _cstring_weapon_benelli_s4, 0x0, 0x0, 0x3ff, _cstring_weapon_benelli_s5, 0x0, 0x0, 0x400, _cstring_weapon_benelli_s6, 0x0, 0x0, 0x401, _cstring_weapon_rpd, 0x0, 0x0, 0x402, _cstring_weapon_rpd_mp_br, 0x0, 0x0, 0x403, _cstring_weapon_rpd_mp_bs, 0x0, 0x0, 0x404, _cstring_weapon_rpd_mp_bw, 0x0, 0x0, 0x405, _cstring_weapon_rpd_mp_cm, 0x0, 0x0, 0x406, _cstring_weapon_rpd_mp_st, 0x0, 0x0, 0x407, _cstring_weapon_saw, 0x0, 0x0, 0x408, _cstring_weapon_saw_mp_br, 0x0, 0x0, 0x409, _cstring_weapon_saw_mp_bs, 0x0, 0x0, 0x40a, _cstring_weapon_saw_mp_bw, 0x0, 0x0, 0x40b, _cstring_weapon_saw_mp_cm, 0x0, 0x0, 0x40c, _cstring_weapon_saw_mp_st, 0x0, 0x0, 0x40d, _cstring_weapon_m60, 0x0, 0x0, 0x40e, _cstring_weapon_m60_mp_br, 0x0, 0x0, 0x40f, _cstring_weapon_m60_mp_bs, 0x0, 0x0, 0x410, _cstring_weapon_m60_mp_bw, 0x0, 0x0, 0x411, _cstring_weapon_m60_mp_cm, 0x0, 0x0, 0x412, _cstring_weapon_m60_mp_st, 0x0, 0x0, 0x413, _cstring_weapon_m60_gold, 0x0, 0x0, 0x414, _cstring_weapon_c4_mp, 0x0, 0x0, 0x415, _cstring_weapon_c4, 0x0, 0x0, 0x416, _cstring_weapon_claymore_, 0x0, 0x0, 0x417, _cstring_weapon_claymore, 0x0, 0x0, 0x418, _cstring_weapon_concussio, 0x0, 0x0, 0x419, _cstring_projectile_concu, 0x0, 0x0, 0x41a, _cstring_weapon_beretta_s, 0x0, 0x0, 0x41b, _cstring_weapon_colt1911_1, 0x0, 0x0, 0x41c, _cstring_weapon_usp_silen, 0x0, 0x0, 0x41d, _cstring_weapon_skorpion_5, 0x0, 0x0, 0x41e, _cstring_weapon_skorpions, 0x0, 0x0, 0x41f, _cstring_weapon_skorpions1, 0x0, 0x0, 0x420, _cstring_weapon_skorpions2, 0x0, 0x0, 0x421, _cstring_weapon_skorpions3, 0x0, 0x0, 0x422, _cstring_weapon_skorpions4, 0x0, 0x0, 0x423, _cstring_weapon_mini_uzi_6, 0x0, 0x0, 0x424, _cstring_weapon_mini_uzi_7, 0x0, 0x0, 0x425, _cstring_weapon_mini_uzi_8, 0x0, 0x0, 0x426, _cstring_weapon_mini_uzi_9, 0x0, 0x0, 0x427, _cstring_weapon_mini_uzi_10, 0x0, 0x0, 0x428, _cstring_weapon_mini_uzi_11, 0x0, 0x0, 0x429, _cstring_weapon_mini_uzi_12, 0x0, 0x0, 0x42a, _cstring_weapon_ak74u_sup, 0x0, 0x0, 0x42b, _cstring_weapon_ak74usd_m, 0x0, 0x0, 0x42c, _cstring_weapon_ak74usd_m1, 0x0, 0x0, 0x42d, _cstring_weapon_ak74usd_m2, 0x0, 0x0, 0x42e, _cstring_weapon_ak74usd_m3, 0x0, 0x0, 0x42f, _cstring_weapon_ak74usd_m4, 0x0, 0x0, 0x430, _cstring_weapon_p90_sd, 0x0, 0x0, 0x431, _cstring_weapon_p90_silen, 0x0, 0x0, 0x432, _cstring_weapon_p90_silen1, 0x0, 0x0, 0x433, _cstring_weapon_p90_silen2, 0x0, 0x0, 0x434, _cstring_weapon_p90_silen3, 0x0, 0x0, 0x435, _cstring_weapon_p90_silen4, 0x0, 0x0, 0x436, _cstring_weapon_ak47_sile, 0x0, 0x0, 0x437, _cstring_weapon_ak47sd_mp, 0x0, 0x0, 0x438, _cstring_weapon_ak47sd_mp1, 0x0, 0x0, 0x439, _cstring_weapon_ak47sd_mp2, 0x0, 0x0, 0x43a, _cstring_weapon_ak47sd_mp3, 0x0, 0x0, 0x43b, _cstring_weapon_ak47_sile1, 0x0, 0x0, 0x43c, _cstring_weapon_ak47_gren, 0x0, 0x0, 0x43d, _cstring_weapon_ak47_gren1, 0x0, 0x0, 0x43e, _cstring_weapon_ak47_gren2, 0x0, 0x0, 0x43f, _cstring_weapon_ak47_gren3, 0x0, 0x0, 0x440, _cstring_weapon_ak47_gren4, 0x0, 0x0, 0x441, _cstring_weapon_ak47_gren5, 0x0, 0x0, 0x442, _cstring_weapon_ak47_gren6, 0x0, 0x0, 0x443, _cstring_weapon_m14sd_sco, 0x0, 0x0, 0x444, _cstring_weapon_m14sd_sco1, 0x0, 0x0, 0x445, _cstring_weapon_m14sd_sco2, 0x0, 0x0, 0x446, _cstring_weapon_m14sd_sco3, 0x0, 0x0, 0x447, _cstring_weapon_m14sd_sco4, 0x0, 0x0, 0x448, _cstring_weapon_m14sd_sco5, 0x0, 0x0, 0x449, _cstring_weapon_m14_gl_sc, 0x0, 0x0, 0x44a, _cstring_weapon_m14_gl_sc1, 0x0, 0x0, 0x44b, _cstring_weapon_m14_gl_sc2, 0x0, 0x0, 0x44c, _cstring_weapon_m14_gl_sc3, 0x0, 0x0, 0x44d, _cstring_weapon_m14_gl_sc4, 0x0, 0x0, 0x44e, _cstring_weapon_m14_gl_sc5, 0x0, 0x0, 0x44f, _cstring_weapon_g3_silenc, 0x0, 0x0, 0x450, _cstring_weapon_g3sd_mp_b, 0x0, 0x0, 0x451, _cstring_weapon_g3sd_mp_b1, 0x0, 0x0, 0x452, _cstring_weapon_g3sd_mp_b2, 0x0, 0x0, 0x453, _cstring_weapon_g3sd_mp_c, 0x0, 0x0, 0x454, _cstring_weapon_g3sd_mp_s, 0x0, 0x0, 0x455, _cstring_weapon_g3m203, 0x0, 0x0, 0x456, _cstring_weapon_g3m203_br, 0x0, 0x0, 0x457, _cstring_weapon_g3m203_bs, 0x0, 0x0, 0x458, _cstring_weapon_g3m203_bw, 0x0, 0x0, 0x459, _cstring_weapon_g3m203_cm, 0x0, 0x0, 0x45a, _cstring_weapon_g3m203_st, 0x0, 0x0, 0x45b, _cstring_weapon_g36csd_mp, 0x0, 0x0, 0x45c, _cstring_weapon_g36csd_mp1, 0x0, 0x0, 0x45d, _cstring_weapon_g36csd_mp2, 0x0, 0x0, 0x45e, _cstring_weapon_g36csd_mp3, 0x0, 0x0, 0x45f, _cstring_weapon_g36csd_mp4, 0x0, 0x0, 0x460, _cstring_weapon_g36csd_mp5, 0x0, 0x0, 0x461, _cstring_weapon_g36m203, 0x0, 0x0, 0x462, _cstring_weapon_g36m203_b, 0x0, 0x0, 0x463, _cstring_weapon_g36m203_b1, 0x0, 0x0, 0x464, _cstring_weapon_g36m203_b2, 0x0, 0x0, 0x465, _cstring_weapon_g36m203_c, 0x0, 0x0, 0x466, _cstring_weapon_g36m203_s, 0x0, 0x0, 0x467, _cstring_weapon_m16_silen, 0x0, 0x0, 0x468, _cstring_weapon_m16sd_mp_, 0x0, 0x0, 0x469, _cstring_weapon_m16sd_mp_1, 0x0, 0x0, 0x46a, _cstring_weapon_m16sd_mp_2, 0x0, 0x0, 0x46b, _cstring_weapon_m16sd_mp_3, 0x0, 0x0, 0x46c, _cstring_weapon_m16sd_mp_4, 0x0, 0x0, 0x46d, _cstring_weapon_m4_silenc, 0x0, 0x0, 0x46e, _cstring_weapon_m4sd_mp_b, 0x0, 0x0, 0x46f, _cstring_weapon_m4sd_mp_b1, 0x0, 0x0, 0x470, _cstring_weapon_m4sd_mp_b2, 0x0, 0x0, 0x471, _cstring_weapon_m4sd_mp_c, 0x0, 0x0, 0x472, _cstring_weapon_m4sd_mp_s, 0x0, 0x0, 0x473, _cstring_weapon_m4m203_mp, 0x0, 0x0, 0x474, _cstring_weapon_m4m203_mp1, 0x0, 0x0, 0x475, _cstring_weapon_m4m203_mp2, 0x0, 0x0, 0x476, _cstring_weapon_m4m203_mp3, 0x0, 0x0, 0x477, _cstring_weapon_m4m203_mp4, 0x0, 0x0, 0x478, _cstring_weapon_m4m203_mp5, 0x0, 0x0, 0x479, _cstring_weapon_benelli_s7, 0x0, 0x0, 0x47a, _cstring_weapon_benelli_s8, 0x0, 0x0, 0x47b, _cstring_weapon_benelli_s9, 0x0, 0x0, 0x47c, _cstring_weapon_benelli_s10, 0x0, 0x0, 0x47d, _cstring_weapon_benelli_s11, 0x0, 0x0, 0x47e, _cstring_weapon_benelli_s12, 0x0, 0x0, 0x7b0, _cstring_default, 0x0, 0x0, 0x7b1, _cstring_concussion_grena, 0x0, 0x0, 0x7b2, _cstring_flashbang, 0x0, 0x0, 0x7b3, _cstring_frag_grenade_mp, 0x0, 0x0, 0x7b4, _cstring_damage_mp, 0x0, 0x0, 0x7bf, _cstring_ingame_controls, 0x0, 0x0, 0x7c0, _cstring_ingame_options, 0x0, 0x0, 0x7c1, _cstring_popup_leavegame, 0x0, 0x0, 0x7c2, _cstring_scoreboard, 0x0, 0x0, 0x7c9, _cstring_class, 0x0, 0x0, 0x7ca, _cstring_changeclass, 0x0, 0x0, 0x7cc, _cstring_changeclass_offl, 0x0, 0x0, 0x7e4, _cstring_white, 0x0, 0x0, 0x7e5, _cstring_black, 0x0, 0x0, 0x7e6, _cstring_specialty_parabo, 0x0, 0x0, 0x7e7, _cstring_specialty_gpsjam, 0x0, 0x0, 0x7e8, _cstring_specialty_holdbr, 0x0, 0x0, 0x7e9, _cstring_specialty_quiete, 0x0, 0x0, 0x7ea, _cstring_specialty_longer, 0x0, 0x0, 0x7eb, _cstring_specialty_detect, 0x0, 0x0, 0x7ec, _cstring_specialty_explos, 0x0, 0x0, 0x7ed, _cstring_specialty_pistol, 0x0, 0x0, 0x7ee, _cstring_specialty_grenad, 0x0, 0x0, 0x7ef, _cstring_specialty_bullet, 0x0, 0x0, 0x7f0, _cstring_specialty_bullet1, 0x0, 0x0, 0x7f1, _cstring_specialty_bullet2, 0x0, 0x0, 0x7f2, _cstring_specialty_rof, 0x0, 0x0, 0x7f3, _cstring_specialty_fastre, 0x0, 0x0, 0x7f4, _cstring_specialty_extraa, 0x0, 0x0, 0x7f5, _cstring_specialty_twopri, 0x0, 0x0, 0x7f6, _cstring_specialty_armorv, 0x0, 0x0, 0x7f7, _cstring_specialty_fraggr, 0x0, 0x0, 0x7f8, _cstring_specialty_specia, 0x0, 0x0, 0x7f9, _cstring_specialty_weapon, 0x0, 0x0, 0x7fa, _cstring_specialty_weapon1, 0x0, 0x0, 0x7fb, _cstring_specialty_weapon2, 0x0, 0x0, 0x7fc, _cstring_specialty_null, 0x0, 0x0, 0x7fd, _cstring_waypoint_bombsqu, 0x0, 0x0, 0x7fe, _cstring_rank_pfc1, 0x0, 0x0, 0x7ff, _cstring_rank_pfc2, 0x0, 0x0, 0x800, _cstring_rank_pfc3, 0x0, 0x0, 0x801, _cstring_rank_lcpl1, 0x0, 0x0, 0x802, _cstring_rank_lcpl2, 0x0, 0x0, 0x803, _cstring_rank_lcpl3, 0x0, 0x0, 0x804, _cstring_rank_cpl1, 0x0, 0x0, 0x805, _cstring_rank_cpl2, 0x0, 0x0, 0x806, _cstring_rank_cpl3, 0x0, 0x0, 0x807, _cstring_rank_sgt1, 0x0, 0x0, 0x808, _cstring_rank_sgt2, 0x0, 0x0, 0x809, _cstring_rank_sgt3, 0x0, 0x0, 0x80a, _cstring_rank_ssgt1, 0x0, 0x0, 0x80b, _cstring_rank_ssgt2, 0x0, 0x0, 0x80c, _cstring_rank_ssgt3, 0x0, 0x0, 0x80d, _cstring_rank_gysgt1, 0x0, 0x0, 0x80e, _cstring_rank_gysgt2, 0x0, 0x0, 0x80f, _cstring_rank_gysgt3, 0x0, 0x0, 0x810, _cstring_rank_msgt1, 0x0, 0x0, 0x811, _cstring_rank_msgt2, 0x0, 0x0, 0x812, _cstring_rank_msgt3, 0x0, 0x0, 0x813, _cstring_rank_mgysgt1, 0x0, 0x0, 0x814, _cstring_rank_mgysgt2, 0x0, 0x0, 0x815, _cstring_rank_mgysgt3, 0x0, 0x0, 0x816, _cstring_rank_2ndlt1, 0x0, 0x0, 0x817, _cstring_rank_2ndlt2, 0x0, 0x0, 0x818, _cstring_rank_2ndlt3, 0x0, 0x0, 0x819, _cstring_rank_1stlt1, 0x0, 0x0, 0x81a, _cstring_rank_1stlt2, 0x0, 0x0, 0x81b, _cstring_rank_1stlt3, 0x0, 0x0, 0x81c, _cstring_rank_capt1, 0x0, 0x0, 0x81d, _cstring_rank_capt2, 0x0, 0x0, 0x81e, _cstring_rank_capt3, 0x0, 0x0, 0x81f, _cstring_rank_maj1, 0x0, 0x0, 0x820, _cstring_rank_maj2, 0x0, 0x0, 0x821, _cstring_rank_maj3, 0x0, 0x0, 0x822, _cstring_rank_ltcol1, 0x0, 0x0, 0x823, _cstring_rank_ltcol2, 0x0, 0x0, 0x824, _cstring_rank_ltcol3, 0x0, 0x0, 0x825, _cstring_rank_col1, 0x0, 0x0, 0x826, _cstring_rank_col2, 0x0, 0x0, 0x827, _cstring_rank_col3, 0x0, 0x0, 0x828, _cstring_rank_bgen1, 0x0, 0x0, 0x829, _cstring_rank_bgen2, 0x0, 0x0, 0x82a, _cstring_rank_bgen3, 0x0, 0x0, 0x82b, _cstring_rank_majgen1, 0x0, 0x0, 0x82c, _cstring_rank_majgen2, 0x0, 0x0, 0x82d, _cstring_rank_majgen3, 0x0, 0x0, 0x82e, _cstring_rank_ltgen1, 0x0, 0x0, 0x82f, _cstring_rank_ltgen2, 0x0, 0x0, 0x830, _cstring_rank_ltgen3, 0x0, 0x0, 0x831, _cstring_rank_gen1, 0x0, 0x0, 0x832, _cstring_rank_gen2, 0x0, 0x0, 0x833, _cstring_rank_gen3, 0x0, 0x0, 0x834, _cstring_rank_comm1, 0x0, 0x0, 0x835, _cstring_rank_prestige1, 0x0, 0x0, 0x836, _cstring_rank_prestige2, 0x0, 0x0, 0x837, _cstring_rank_prestige3, 0x0, 0x0, 0x838, _cstring_rank_prestige4, 0x0, 0x0, 0x839, _cstring_rank_prestige5, 0x0, 0x0, 0x83a, _cstring_rank_prestige6, 0x0, 0x0, 0x83b, _cstring_rank_prestige7, 0x0, 0x0, 0x83c, _cstring_rank_prestige8, 0x0, 0x0, 0x83d, _cstring_rank_prestige9, 0x0, 0x0, 0x83e, _cstring_rank_prestige10, 0x0, 0x0, 0x83f, _cstring_progress_bar_bg, 0x0, 0x0, 0x840, _cstring_progress_bar_fg, 0x0, 0x0, 0x841, _cstring_progress_bar_fil, 0x0, 0x0, 0x842, _cstring_score_bar_bg, 0x0, 0x0, 0x849, _cstring_objpoint_default, 0x0, 0x0, 0x84a, _cstring_headicon_dead, 0x0, 0x0, 0x84b, _cstring_damage_feedback, 0x0, 0x0, 0x84c, _cstring_damage_feedback_, 0x0, 0x0, 0x84d, _cstring_overlay_low_heal, 0x0, 0x0, 0x8df, _cstring_defaultweapon_mp, 0x0, 0x0, 0x8e0, _cstring_hud_status_dead, 0x0, 0x0, 0x8e1, _cstring_hud_status_conne, 0x0, 0x0, 0x0, _cstring_null, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0


;Initialized constant data of com_constantconfigstrings:
SECTION .rdata


;Zero initialized global or static variables of com_constantconfigstrings:
SECTION .bss
tempString: resb 0x800
constantConfigStringCount: resb 0x4c
reservedConfigStrings: resb 0x134


;All cstrings:
SECTION .rdata
_cstring_bg_aimspreadmove:		db "bg_aimSpreadMoveSpeedThreshold",0
_cstring_bg_bobamplituded:		db "bg_bobAmplitudeDucked",0
_cstring_bg_bobamplitudep:		db "bg_bobAmplitudeProne",0
_cstring_bg_bobamplitudes:		db "bg_bobAmplitudeSprinting",0
_cstring_bg_bobamplitudes1:		db "bg_bobAmplitudeStanding",0
_cstring_bg_bobmax:		db "bg_bobMax",0
_cstring_bg_falldamagemax:		db "bg_fallDamageMaxHeight",0
_cstring_bg_falldamagemin:		db "bg_fallDamageMinHeight",0
_cstring_bg_foliagesnd_fa:		db "bg_foliagesnd_fastinterval",0
_cstring_bg_foliagesnd_ma:		db "bg_foliagesnd_maxspeed",0
_cstring_bg_foliagesnd_mi:		db "bg_foliagesnd_minspeed",0
_cstring_bg_foliagesnd_re:		db "bg_foliagesnd_resetinterval",0
_cstring_bg_foliagesnd_sl:		db "bg_foliagesnd_slowinterval",0
_cstring_bg_ladder_yawcap:		db "bg_ladder_yawcap",0
_cstring_bg_maxgrenadeind:		db "bg_maxGrenadeIndicatorSpeed",0
_cstring_bg_prone_yawcap:		db "bg_prone_yawcap",0
_cstring_cg_thirdpersonan:		db "cg_thirdPersonAngle",0
_cstring_friction:		db "friction",0
_cstring_g_scorescolor_al:		db "g_ScoresColor_Allies",0
_cstring_g_scorescolor_ax:		db "g_ScoresColor_Axis",0
_cstring_g_scorescolor_en:		db "g_ScoresColor_EnemyTeam",0
_cstring_g_scorescolor_fr:		db "g_ScoresColor_Free",0
_cstring_g_scorescolor_my:		db "g_ScoresColor_MyTeam",0
_cstring_g_scorescolor_sp:		db "g_ScoresColor_Spectator",0
_cstring_g_teamcolor_alli:		db "g_TeamColor_Allies",0
_cstring_g_teamcolor_axis:		db "g_TeamColor_Axis",0
_cstring_g_teamcolor_enem:		db "g_TeamColor_EnemyTeam",0
_cstring_g_teamcolor_free:		db "g_TeamColor_Free",0
_cstring_g_teamcolor_myte:		db "g_TeamColor_MyTeam",0
_cstring_g_teamcolor_spec:		db "g_TeamColor_Spectator",0
_cstring_g_teamicon_allie:		db "g_TeamIcon_Allies",0
_cstring_g_teamicon_axis:		db "g_TeamIcon_Axis",0
_cstring_g_teamicon_free:		db "g_TeamIcon_Free",0
_cstring_g_teamicon_spect:		db "g_TeamIcon_Spectator",0
_cstring_g_teamname_allie:		db "g_TeamName_Allies",0
_cstring_g_teamname_axis:		db "g_TeamName_Axis",0
_cstring_inertiaangle:		db "inertiaAngle",0
_cstring_inertiadebug:		db "inertiaDebug",0
_cstring_inertiamax:		db "inertiaMax",0
_cstring_jump_height:		db "jump_height",0
_cstring_jump_ladderpushv:		db "jump_ladderPushVel",0
_cstring_jump_slowdownena:		db "jump_slowdownEnable",0
_cstring_jump_spreadadd:		db "jump_spreadAdd",0
_cstring_jump_stepsize:		db "jump_stepSize",0
_cstring_mantle_check_ang:		db "mantle_check_angle",0
_cstring_mantle_check_rad:		db "mantle_check_radius",0
_cstring_mantle_check_ran:		db "mantle_check_range",0
_cstring_mantle_debug:		db "mantle_debug",0
_cstring_mantle_enable:		db "mantle_enable",0
_cstring_mantle_view_yawc:		db "mantle_view_yawcap",0
_cstring_player_adsexitde:		db "player_adsExitDelay",0
_cstring_player_backspeed:		db "player_backSpeedScale",0
_cstring_player_breath_fi:		db "player_breath_fire_delay",0
_cstring_player_breath_ga:		db "player_breath_gasp_lerp",0
_cstring_player_breath_ga1:		db "player_breath_gasp_scale",0
_cstring_player_breath_ga2:		db "player_breath_gasp_time",0
_cstring_player_breath_ho:		db "player_breath_hold_lerp",0
_cstring_player_breath_ho1:		db "player_breath_hold_time",0
_cstring_player_breath_sn:		db "player_breath_snd_delay",0
_cstring_player_breath_sn1:		db "player_breath_snd_lerp",0
_cstring_player_debugheal:		db "player_debugHealth",0
_cstring_player_dmgtimer_:		db "player_dmgtimer_flinchTime",0
_cstring_player_dmgtimer_1:		db "player_dmgtimer_maxTime",0
_cstring_player_dmgtimer_2:		db "player_dmgtimer_minScale",0
_cstring_player_dmgtimer_3:		db "player_dmgtimer_stumbleTime",0
_cstring_player_dmgtimer_4:		db "player_dmgtimer_timePerPoint",0
_cstring_player_footsteps:		db "player_footstepsThreshhold",0
_cstring_player_movethres:		db "player_moveThreshhold",0
_cstring_player_runbkthre:		db "player_runbkThreshhold",0
_cstring_player_runthresh:		db "player_runThreshhold",0
_cstring_player_scopeexit:		db "player_scopeExitOnDamage",0
_cstring_player_spectates:		db "player_spectateSpeedScale",0
_cstring_player_sprintcam:		db "player_sprintCameraBob",0
_cstring_player_sprintfor:		db "player_sprintForwardMinimum",0
_cstring_player_sprintmin:		db "player_sprintMinTime",0
_cstring_player_sprintrec:		db "player_sprintRechargePause",0
_cstring_player_sprintspe:		db "player_sprintSpeedScale",0
_cstring_player_sprintstr:		db "player_sprintStrafeSpeedScale",0
_cstring_player_sprintthr:		db "player_sprintThreshhold",0
_cstring_player_sprinttim:		db "player_sprintTime",0
_cstring_player_strafeani:		db "player_strafeAnimCosAngle",0
_cstring_player_strafespe:		db "player_strafeSpeedScale",0
_cstring_player_turnanims:		db "player_turnAnims",0
_cstring_player_view_pitc:		db "player_view_pitch_down",0
_cstring_player_view_pitc1:		db "player_view_pitch_up",0
_cstring_scr_allies:		db "scr_allies",0
_cstring_scr_axis:		db "scr_axis",0
_cstring_scr_oldschool:		db "scr_oldschool",0
_cstring_stopspeed:		db "stopspeed",0
_cstring_platform_hold_to:		db "PLATFORM_HOLD_TO_USE",0
_cstring_platform_hold_to1:		db "PLATFORM_HOLD_TO_DROP",0
_cstring_perks_eavesdrop:		db "PERKS_EAVESDROP",0
_cstring_perks_uav_jammer:		db "PERKS_UAV_JAMMER",0
_cstring_perks_iron_lungs:		db "PERKS_IRON_LUNGS",0
_cstring_perks_dead_silen:		db "PERKS_DEAD_SILENCE",0
_cstring_perks_extreme_co:		db "PERKS_EXTREME_CONDITIONING",0
_cstring_perks_bomb_squad:		db "PERKS_BOMB_SQUAD",0
_cstring_perks_sonic_boom:		db "PERKS_SONIC_BOOM",0
_cstring_perks_last_stand:		db "PERKS_LAST_STAND",0
_cstring_perks_martyrdom:		db "PERKS_MARTYRDOM",0
_cstring_perks_stopping_p:		db "PERKS_STOPPING_POWER",0
_cstring_perks_deep_impac:		db "PERKS_DEEP_IMPACT",0
_cstring_perks_steady_aim:		db "PERKS_STEADY_AIM",0
_cstring_perks_double_tap:		db "PERKS_DOUBLE_TAP",0
_cstring_perks_sleight_of:		db "PERKS_SLEIGHT_OF_HAND",0
_cstring_perks_bandolier:		db "PERKS_BANDOLIER",0
_cstring_perks_overkill:		db "PERKS_OVERKILL",0
_cstring_perks_juggernaut:		db "PERKS_JUGGERNAUT",0
_cstring_perks_frag_x_3:		db "PERKS_FRAG_X_3",0
_cstring_perks_special_gr:		db "PERKS_SPECIAL_GRENADES_X_3",0
_cstring_perks_c4_x_2:		db "PERKS_C4_X_2",0
_cstring_perks_claymore_x:		db "PERKS_CLAYMORE_X_2",0
_cstring_perks_rpg7_x_2:		db "PERKS_RPG7_X_2",0
_cstring_perks_none:		db "PERKS_NONE",0
_cstring_perks_grenade_la:		db "PERKS_GRENADE_LAUNCHER",0
_cstring_perks_grip:		db "PERKS_GRIP",0
_cstring_perks_attachment:		db "PERKS_ATTACHMENT",0
_cstring_rank_player_was_:		db "RANK_PLAYER_WAS_PROMOTED_N",0
_cstring_rank_player_was_1:		db "RANK_PLAYER_WAS_PROMOTED",0
_cstring_rank_promoted:		db "RANK_PROMOTED",0
_cstring_mp_plus:		db "MP_PLUS",0
_cstring_rank_romani:		db "RANK_ROMANI",0
_cstring_rank_romanii:		db "RANK_ROMANII",0
_cstring_rank_pfc_full:		db "RANK_PFC_FULL",0
_cstring_rank_pfc_full_n:		db "RANK_PFC_FULL_N",0
_cstring_rank_lcpl_full:		db "RANK_LCPL_FULL",0
_cstring_rank_lcpl_full_n:		db "RANK_LCPL_FULL_N",0
_cstring_rank_cpl_full:		db "RANK_CPL_FULL",0
_cstring_rank_cpl_full_n:		db "RANK_CPL_FULL_N",0
_cstring_rank_sgt_full:		db "RANK_SGT_FULL",0
_cstring_rank_sgt_full_n:		db "RANK_SGT_FULL_N",0
_cstring_rank_ssgt_full:		db "RANK_SSGT_FULL",0
_cstring_rank_ssgt_full_n:		db "RANK_SSGT_FULL_N",0
_cstring_rank_gysgt_full:		db "RANK_GYSGT_FULL",0
_cstring_rank_gysgt_full_:		db "RANK_GYSGT_FULL_N",0
_cstring_rank_msgt_full:		db "RANK_MSGT_FULL",0
_cstring_rank_msgt_full_n:		db "RANK_MSGT_FULL_N",0
_cstring_rank_mgysgt_full:		db "RANK_MGYSGT_FULL",0
_cstring_rank_mgysgt_full1:		db "RANK_MGYSGT_FULL_N",0
_cstring_rank_2ndlt_full:		db "RANK_2NDLT_FULL",0
_cstring_rank_2ndlt_full_:		db "RANK_2NDLT_FULL_N",0
_cstring_rank_1stlt_full:		db "RANK_1STLT_FULL",0
_cstring_rank_1stlt_full_:		db "RANK_1STLT_FULL_N",0
_cstring_rank_capt_full:		db "RANK_CAPT_FULL",0
_cstring_rank_capt_full_n:		db "RANK_CAPT_FULL_N",0
_cstring_rank_maj_full:		db "RANK_MAJ_FULL",0
_cstring_rank_maj_full_n:		db "RANK_MAJ_FULL_N",0
_cstring_rank_ltcol_full:		db "RANK_LTCOL_FULL",0
_cstring_rank_ltcol_full_:		db "RANK_LTCOL_FULL_N",0
_cstring_rank_col_full:		db "RANK_COL_FULL",0
_cstring_rank_col_full_n:		db "RANK_COL_FULL_N",0
_cstring_rank_bgen_full:		db "RANK_BGEN_FULL",0
_cstring_rank_bgen_full_n:		db "RANK_BGEN_FULL_N",0
_cstring_rank_majgen_full:		db "RANK_MAJGEN_FULL",0
_cstring_rank_majgen_full1:		db "RANK_MAJGEN_FULL_N",0
_cstring_rank_ltgen_full:		db "RANK_LTGEN_FULL",0
_cstring_rank_ltgen_full_:		db "RANK_LTGEN_FULL_N",0
_cstring_rank_gen_full:		db "RANK_GEN_FULL",0
_cstring_rank_gen_full_n:		db "RANK_GEN_FULL_N",0
_cstring_rank_comm_full:		db "RANK_COMM_FULL",0
_cstring_challenge_m16_ma:		db "CHALLENGE_M16_MARKSMAN_I",0
_cstring_challenge_m16_ma1:		db "CHALLENGE_M16_MARKSMAN_II",0
_cstring_challenge_m16_ma2:		db "CHALLENGE_M16_MARKSMAN_III",0
_cstring_challenge_m16_ex:		db "CHALLENGE_M16_EXPERT_I",0
_cstring_challenge_m16_ex1:		db "CHALLENGE_M16_EXPERT_II",0
_cstring_challenge_m16_ex2:		db "CHALLENGE_M16_EXPERT_III",0
_cstring_challenge_ak47_m:		db "CHALLENGE_AK47_MARKSMAN_I",0
_cstring_challenge_ak47_m1:		db "CHALLENGE_AK47_MARKSMAN_II",0
_cstring_challenge_ak47_m2:		db "CHALLENGE_AK47_MARKSMAN_III",0
_cstring_challenge_ak47_e:		db "CHALLENGE_AK47_EXPERT_I",0
_cstring_challenge_ak47_e1:		db "CHALLENGE_AK47_EXPERT_II",0
_cstring_challenge_ak47_e2:		db "CHALLENGE_AK47_EXPERT_III",0
_cstring_challenge_g3_mar:		db "CHALLENGE_G3_MARKSMAN_I",0
_cstring_challenge_g3_mar1:		db "CHALLENGE_G3_MARKSMAN_II",0
_cstring_challenge_g3_mar2:		db "CHALLENGE_G3_MARKSMAN_III",0
_cstring_challenge_g3_exp:		db "CHALLENGE_G3_EXPERT_I",0
_cstring_challenge_g3_exp1:		db "CHALLENGE_G3_EXPERT_II",0
_cstring_challenge_g3_exp2:		db "CHALLENGE_G3_EXPERT_III",0
_cstring_challenge_m4_mar:		db "CHALLENGE_M4_MARKSMAN_I",0
_cstring_challenge_m4_mar1:		db "CHALLENGE_M4_MARKSMAN_II",0
_cstring_challenge_m4_mar2:		db "CHALLENGE_M4_MARKSMAN_III",0
_cstring_challenge_m4_exp:		db "CHALLENGE_M4_EXPERT_I",0
_cstring_challenge_m4_exp1:		db "CHALLENGE_M4_EXPERT_II",0
_cstring_challenge_m4_exp2:		db "CHALLENGE_M4_EXPERT_III",0
_cstring_challenge_m14_ma:		db "CHALLENGE_M14_MARKSMAN_I",0
_cstring_challenge_m14_ma1:		db "CHALLENGE_M14_MARKSMAN_II",0
_cstring_challenge_m14_ma2:		db "CHALLENGE_M14_MARKSMAN_III",0
_cstring_challenge_m14_ex:		db "CHALLENGE_M14_EXPERT_I",0
_cstring_challenge_m14_ex1:		db "CHALLENGE_M14_EXPERT_II",0
_cstring_challenge_m14_ex2:		db "CHALLENGE_M14_EXPERT_III",0
_cstring_challenge_g36c_m:		db "CHALLENGE_G36C_MARKSMAN_I",0
_cstring_challenge_g36c_m1:		db "CHALLENGE_G36C_MARKSMAN_II",0
_cstring_challenge_g36c_m2:		db "CHALLENGE_G36C_MARKSMAN_III",0
_cstring_challenge_g36c_e:		db "CHALLENGE_G36C_EXPERT_I",0
_cstring_challenge_g36c_e1:		db "CHALLENGE_G36C_EXPERT_II",0
_cstring_challenge_g36c_e2:		db "CHALLENGE_G36C_EXPERT_III",0
_cstring_challenge_mp44_e:		db "CHALLENGE_MP44_EXPERT_I",0
_cstring_challenge_mp44_e1:		db "CHALLENGE_MP44_EXPERT_II",0
_cstring_challenge_mp44_e2:		db "CHALLENGE_MP44_EXPERT_III",0
_cstring_challenge_mp5_ma:		db "CHALLENGE_MP5_MARKSMAN_I",0
_cstring_challenge_mp5_ma1:		db "CHALLENGE_MP5_MARKSMAN_II",0
_cstring_challenge_mp5_ma2:		db "CHALLENGE_MP5_MARKSMAN_III",0
_cstring_challenge_mp5_ex:		db "CHALLENGE_MP5_EXPERT_I",0
_cstring_challenge_mp5_ex1:		db "CHALLENGE_MP5_EXPERT_II",0
_cstring_challenge_mp5_ex2:		db "CHALLENGE_MP5_EXPERT_III",0
_cstring_challenge_skorpi:		db "CHALLENGE_SKORPION_MARKSMAN_I",0
_cstring_challenge_skorpi1:		db "CHALLENGE_SKORPION_MARKSMAN_II",0
_cstring_challenge_skorpi2:		db "CHALLENGE_SKORPION_MARKSMAN_III",0
_cstring_challenge_skorpi3:		db "CHALLENGE_SKORPION_EXPERT_I",0
_cstring_challenge_skorpi4:		db "CHALLENGE_SKORPION_EXPERT_II",0
_cstring_challenge_skorpi5:		db "CHALLENGE_SKORPION_EXPERT_III",0
_cstring_challenge_miniuz:		db "CHALLENGE_MINIUZI_MARKSMAN_I",0
_cstring_challenge_miniuz1:		db "CHALLENGE_MINIUZI_MARKSMAN_II",0
_cstring_challenge_miniuz2:		db "CHALLENGE_MINIUZI_MARKSMAN_III",0
_cstring_challenge_miniuz3:		db "CHALLENGE_MINIUZI_EXPERT_I",0
_cstring_challenge_miniuz4:		db "CHALLENGE_MINIUZI_EXPERT_II",0
_cstring_challenge_miniuz5:		db "CHALLENGE_MINIUZI_EXPERT_III",0
_cstring_challenge_ak74u_:		db "CHALLENGE_AK74U_MARKSMAN_I",0
_cstring_challenge_ak74u_1:		db "CHALLENGE_AK74U_MARKSMAN_II",0
_cstring_challenge_ak74u_2:		db "CHALLENGE_AK74U_MARKSMAN_III",0
_cstring_challenge_ak74u_3:		db "CHALLENGE_AK74U_EXPERT_I",0
_cstring_challenge_ak74u_4:		db "CHALLENGE_AK74U_EXPERT_II",0
_cstring_challenge_ak74u_5:		db "CHALLENGE_AK74U_EXPERT_III",0
_cstring_challenge_p90_ma:		db "CHALLENGE_P90_MARKSMAN_I",0
_cstring_challenge_p90_ma1:		db "CHALLENGE_P90_MARKSMAN_II",0
_cstring_challenge_p90_ma2:		db "CHALLENGE_P90_MARKSMAN_III",0
_cstring_challenge_p90_ex:		db "CHALLENGE_P90_EXPERT_I",0
_cstring_challenge_p90_ex1:		db "CHALLENGE_P90_EXPERT_II",0
_cstring_challenge_p90_ex2:		db "CHALLENGE_P90_EXPERT_III",0
_cstring_challenge_m249_s:		db "CHALLENGE_M249_SAW_MARKSMAN_I",0
_cstring_challenge_m249_s1:		db "CHALLENGE_M249_SAW_MARKSMAN_II",0
_cstring_challenge_m249_s2:		db "CHALLENGE_M249_SAW_MARKSMAN_III",0
_cstring_challenge_m249_s3:		db "CHALLENGE_M249_SAW_EXPERT_I",0
_cstring_challenge_m249_s4:		db "CHALLENGE_M249_SAW_EXPERT_II",0
_cstring_challenge_m249_s5:		db "CHALLENGE_M249_SAW_EXPERT_III",0
_cstring_challenge_rpd_ma:		db "CHALLENGE_RPD_MARKSMAN_I",0
_cstring_challenge_rpd_ma1:		db "CHALLENGE_RPD_MARKSMAN_II",0
_cstring_challenge_rpd_ma2:		db "CHALLENGE_RPD_MARKSMAN_III",0
_cstring_challenge_rpd_ex:		db "CHALLENGE_RPD_EXPERT_I",0
_cstring_challenge_rpd_ex1:		db "CHALLENGE_RPD_EXPERT_II",0
_cstring_challenge_rpd_ex2:		db "CHALLENGE_RPD_EXPERT_III",0
_cstring_challenge_m60e4_:		db "CHALLENGE_M60E4_MARKSMAN_I",0
_cstring_challenge_m60e4_1:		db "CHALLENGE_M60E4_MARKSMAN_II",0
_cstring_challenge_m60e4_2:		db "CHALLENGE_M60E4_MARKSMAN_III",0
_cstring_challenge_m60e4_3:		db "CHALLENGE_M60E4_EXPERT_I",0
_cstring_challenge_m60e4_4:		db "CHALLENGE_M60E4_EXPERT_II",0
_cstring_challenge_m60e4_5:		db "CHALLENGE_M60E4_EXPERT_III",0
_cstring_challenge_w1200_:		db "CHALLENGE_W1200_MARKSMAN_I",0
_cstring_challenge_w1200_1:		db "CHALLENGE_W1200_MARKSMAN_II",0
_cstring_challenge_w1200_2:		db "CHALLENGE_W1200_EXPERT_I",0
_cstring_challenge_w1200_3:		db "CHALLENGE_W1200_EXPERT_II",0
_cstring_challenge_w1200_4:		db "CHALLENGE_W1200_EXPERT_III",0
_cstring_challenge_benell:		db "CHALLENGE_BENELLI_M4_MARKSMAN_I",0
_cstring_challenge_benell1:		db "CHALLENGE_BENELLI_M4_MARKSMAN_II",0
_cstring_challenge_benell2:		db "CHALLENGE_BENELLI_M4_EXPERT_I",0
_cstring_challenge_benell3:		db "CHALLENGE_BENELLI_M4_EXPERT_II",0
_cstring_challenge_benell4:		db "CHALLENGE_BENELLI_M4_EXPERT_III",0
_cstring_challenge_m40a3_:		db "CHALLENGE_M40A3_MARKSMAN",0
_cstring_challenge_m40a3_1:		db "CHALLENGE_M40A3_EXPERT_I",0
_cstring_challenge_m40a3_2:		db "CHALLENGE_M40A3_EXPERT_II",0
_cstring_challenge_m40a3_3:		db "CHALLENGE_M40A3_EXPERT_III",0
_cstring_challenge_m21_ma:		db "CHALLENGE_M21_MARKSMAN",0
_cstring_challenge_m21_ex:		db "CHALLENGE_M21_EXPERT_I",0
_cstring_challenge_m21_ex1:		db "CHALLENGE_M21_EXPERT_II",0
_cstring_challenge_m21_ex2:		db "CHALLENGE_M21_EXPERT_III",0
_cstring_challenge_dragun:		db "CHALLENGE_DRAGUNOV_MARKSMAN",0
_cstring_challenge_dragun1:		db "CHALLENGE_DRAGUNOV_EXPERT_I",0
_cstring_challenge_dragun2:		db "CHALLENGE_DRAGUNOV_EXPERT_II",0
_cstring_challenge_dragun3:		db "CHALLENGE_DRAGUNOV_EXPERT_III",0
_cstring_challenge_r700_m:		db "CHALLENGE_R700_MARKSMAN",0
_cstring_challenge_r700_e:		db "CHALLENGE_R700_EXPERT_I",0
_cstring_challenge_r700_e1:		db "CHALLENGE_R700_EXPERT_II",0
_cstring_challenge_r700_e2:		db "CHALLENGE_R700_EXPERT_III",0
_cstring_challenge_barret:		db "CHALLENGE_BARRETT_50_CAL_MARKSMAN",0
_cstring_challenge_barret1:		db "CHALLENGE_BARRETT_50_CAL_EXPERT",0
_cstring_challenge_barret2:		db "CHALLENGE_BARRETT_50_CAL_EXPERT1",0
_cstring_challenge_barret3:		db "CHALLENGE_BARRETT_50_CAL_EXPERT2",0
_cstring_challenge_radar_:		db "CHALLENGE_RADAR_INBOUND",0
_cstring_challenge_airstr:		db "CHALLENGE_AIRSTRIKE_INBOUND",0
_cstring_challenge_choppe:		db "CHALLENGE_CHOPPER_INBOUND",0
_cstring_challenge_flyswa:		db "CHALLENGE_FLYSWATTER",0
_cstring_challenge_marath:		db "CHALLENGE_MARATHON",0
_cstring_challenge_goodby:		db "CHALLENGE_GOODBYE",0
_cstring_challenge_base_j:		db "CHALLENGE_BASE_JUMP",0
_cstring_challenge_crouch:		db "CHALLENGE_CROUCH_SHOT_I",0
_cstring_challenge_crouch1:		db "CHALLENGE_CROUCH_SHOT_II",0
_cstring_challenge_crouch2:		db "CHALLENGE_CROUCH_SHOT_III",0
_cstring_challenge_prone_:		db "CHALLENGE_PRONE_SHOT_I",0
_cstring_challenge_prone_1:		db "CHALLENGE_PRONE_SHOT_II",0
_cstring_challenge_prone_2:		db "CHALLENGE_PRONE_SHOT_III",0
_cstring_challenge_grenad:		db "CHALLENGE_GRENADE_KILL_I",0
_cstring_challenge_grenad1:		db "CHALLENGE_GRENADE_KILL_II",0
_cstring_challenge_grenad2:		db "CHALLENGE_GRENADE_KILL_III",0
_cstring_challenge_point_:		db "CHALLENGE_POINT_GUARD_I",0
_cstring_challenge_point_1:		db "CHALLENGE_POINT_GUARD_II",0
_cstring_challenge_point_2:		db "CHALLENGE_POINT_GUARD_III",0
_cstring_challenge_xray_v:		db "CHALLENGE_XRAY_VISION_I",0
_cstring_challenge_xray_v1:		db "CHALLENGE_XRAY_VISION_II",0
_cstring_challenge_xray_v2:		db "CHALLENGE_XRAY_VISION_III",0
_cstring_challenge_vandal:		db "CHALLENGE_VANDALISM_I",0
_cstring_challenge_vandal1:		db "CHALLENGE_VANDALISM_II",0
_cstring_challenge_vandal2:		db "CHALLENGE_VANDALISM_III",0
_cstring_challenge_expose:		db "CHALLENGE_EXPOSED_I",0
_cstring_challenge_expose1:		db "CHALLENGE_EXPOSED_II",0
_cstring_challenge_expose2:		db "CHALLENGE_EXPOSED_III",0
_cstring_challenge_backdr:		db "CHALLENGE_BACKDRAFT_I",0
_cstring_challenge_backdr1:		db "CHALLENGE_BACKDRAFT_II",0
_cstring_challenge_backdr2:		db "CHALLENGE_BACKDRAFT_III",0
_cstring_challenge_knife_:		db "CHALLENGE_KNIFE_VETERAN_I",0
_cstring_challenge_knife_1:		db "CHALLENGE_KNIFE_VETERAN_II",0
_cstring_challenge_knife_2:		db "CHALLENGE_KNIFE_VETERAN_III",0
_cstring_challenge_freefo:		db "CHALLENGE_FREEFORALL_VICTOR_I",0
_cstring_challenge_freefo1:		db "CHALLENGE_FREEFORALL_VICTOR_II",0
_cstring_challenge_freefo2:		db "CHALLENGE_FREEFORALL_VICTOR_III",0
_cstring_challenge_team_p:		db "CHALLENGE_TEAM_PLAYER_I",0
_cstring_challenge_team_p1:		db "CHALLENGE_TEAM_PLAYER_II",0
_cstring_challenge_team_p2:		db "CHALLENGE_TEAM_PLAYER_III",0
_cstring_challenge_sd_vic:		db "CHALLENGE_SD_VICTOR_I",0
_cstring_challenge_sd_vic1:		db "CHALLENGE_SD_VICTOR_II",0
_cstring_challenge_sd_vic2:		db "CHALLENGE_SD_VICTOR_III",0
_cstring_challenge_mvp_te:		db "CHALLENGE_MVP_TEAM_DEATHMATCH",0
_cstring_challenge_hardco:		db "CHALLENGE_HARDCORE_TEAM_PLAYER",0
_cstring_challenge_hardco1:		db "CHALLENGE_HARDCORE_TEAM_PLAYER1",0
_cstring_challenge_hardco2:		db "CHALLENGE_HARDCORE_TEAM_PLAYER2",0
_cstring_challenge_sabota:		db "CHALLENGE_SABOTAGE_VICTOR_I",0
_cstring_challenge_sabota1:		db "CHALLENGE_SABOTAGE_VICTOR_II",0
_cstring_challenge_sabota2:		db "CHALLENGE_SABOTAGE_VICTOR_III",0
_cstring_challenge_mvp_te1:		db "CHALLENGE_MVP_TEAM_HARDCORE",0
_cstring_challenge_bomb_d:		db "CHALLENGE_BOMB_DOWN",0
_cstring_challenge_bomb_d1:		db "CHALLENGE_BOMB_DEFENDER",0
_cstring_challenge_bomb_p:		db "CHALLENGE_BOMB_PLANTER",0
_cstring_challenge_hero:		db "CHALLENGE_HERO",0
_cstring_challenge_last_m:		db "CHALLENGE_LAST_MAN_STANDING",0
_cstring_challenge_claymo:		db "CHALLENGE_CLAYMORE_SHOT",0
_cstring_challenge_assaul:		db "CHALLENGE_ASSAULT_EXPERT_I",0
_cstring_challenge_assaul1:		db "CHALLENGE_ASSAULT_EXPERT_II",0
_cstring_challenge_assaul2:		db "CHALLENGE_ASSAULT_EXPERT_III",0
_cstring_challenge_smg_ex:		db "CHALLENGE_SMG_EXPERT_I",0
_cstring_challenge_smg_ex1:		db "CHALLENGE_SMG_EXPERT_II",0
_cstring_challenge_smg_ex2:		db "CHALLENGE_SMG_EXPERT_III",0
_cstring_challenge_lmg_ex:		db "CHALLENGE_LMG_EXPERT_I",0
_cstring_challenge_lmg_ex1:		db "CHALLENGE_LMG_EXPERT_II",0
_cstring_challenge_lmg_ex2:		db "CHALLENGE_LMG_EXPERT_III",0
_cstring_challenge_last_s:		db "CHALLENGE_LAST_STAND_VETERAN_I",0
_cstring_challenge_last_s1:		db "CHALLENGE_LAST_STAND_VETERAN_II",0
_cstring_challenge_last_s2:		db "CHALLENGE_LAST_STAND_VETERAN_III",0
_cstring_challenge_master:		db "CHALLENGE_MASTER_CHEF_I",0
_cstring_challenge_master1:		db "CHALLENGE_MASTER_CHEF_II",0
_cstring_challenge_master2:		db "CHALLENGE_MASTER_CHEF_III",0
_cstring_challenge_airstr1:		db "CHALLENGE_AIRSTRIKE_VETERAN_I",0
_cstring_challenge_airstr2:		db "CHALLENGE_AIRSTRIKE_VETERAN_II",0
_cstring_challenge_airstr3:		db "CHALLENGE_AIRSTRIKE_VETERAN_III",0
_cstring_challenge_choppe1:		db "CHALLENGE_CHOPPER_VETERAN_I",0
_cstring_challenge_choppe2:		db "CHALLENGE_CHOPPER_VETERAN_II",0
_cstring_challenge_choppe3:		db "CHALLENGE_CHOPPER_VETERAN_III",0
_cstring_challenge_stun_v:		db "CHALLENGE_STUN_VETERAN_I",0
_cstring_challenge_stun_v1:		db "CHALLENGE_STUN_VETERAN_II",0
_cstring_challenge_stun_v2:		db "CHALLENGE_STUN_VETERAN_III",0
_cstring_challenge_multir:		db "CHALLENGE_MULTIRPG",0
_cstring_challenge_martyr:		db "CHALLENGE_MARTYRDOM_VETERAN_I",0
_cstring_challenge_martyr1:		db "CHALLENGE_MARTYRDOM_VETERAN_II",0
_cstring_challenge_martyr2:		db "CHALLENGE_MARTYRDOM_VETERAN_III",0
_cstring_challenge_clay_m:		db "CHALLENGE_CLAY_MORE",0
_cstring_challenge_stealt:		db "CHALLENGE_STEALTH_I",0
_cstring_challenge_stealt1:		db "CHALLENGE_STEALTH_II",0
_cstring_challenge_stealt2:		db "CHALLENGE_STEALTH_III",0
_cstring_challenge_invisi:		db "CHALLENGE_INVISIBLE_I",0
_cstring_challenge_invisi1:		db "CHALLENGE_INVISIBLE_II",0
_cstring_challenge_invisi2:		db "CHALLENGE_INVISIBLE_III",0
_cstring_challenge_counte:		db "CHALLENGE_COUNTERCLAYMORE_I",0
_cstring_challenge_counte1:		db "CHALLENGE_COUNTERCLAYMORE_II",0
_cstring_challenge_counte2:		db "CHALLENGE_COUNTERCLAYMORE_III",0
_cstring_challenge_counte3:		db "CHALLENGE_COUNTERC4_I",0
_cstring_challenge_counte4:		db "CHALLENGE_COUNTERC4_II",0
_cstring_challenge_counte5:		db "CHALLENGE_COUNTERC4_III",0
_cstring_challenge_airbor:		db "CHALLENGE_AIRBORNE",0
_cstring_challenge_multif:		db "CHALLENGE_MULTIFRAG",0
_cstring_challenge_carpet:		db "CHALLENGE_CARPET_BOMB",0
_cstring_challenge_mg_mas:		db "CHALLENGE_MG_MASTER",0
_cstring_challenge_slashe:		db "CHALLENGE_SLASHER",0
_cstring_challenge_multic:		db "CHALLENGE_MULTIC4",0
_cstring_challenge_hot_po:		db "CHALLENGE_HOT_POTATO_I",0
_cstring_challenge_hot_po1:		db "CHALLENGE_HOT_POTATO_II",0
_cstring_challenge_hot_po2:		db "CHALLENGE_HOT_POTATO_III",0
_cstring_challenge_car_bo:		db "CHALLENGE_CAR_BOMB",0
_cstring_challenge_backst:		db "CHALLENGE_BACKSTABBER",0
_cstring_challenge_slow_b:		db "CHALLENGE_SLOW_BUT_SURE",0
_cstring_challenge_flashb:		db "CHALLENGE_FLASHBANG_VETERAN_I",0
_cstring_challenge_flashb1:		db "CHALLENGE_FLASHBANG_VETERAN_II",0
_cstring_challenge_flashb2:		db "CHALLENGE_FLASHBANG_VETERAN_III",0
_cstring_challenge_misery:		db "CHALLENGE_MISERY_LOVES_COMPANY",0
_cstring_challenge_misery1:		db "CHALLENGE_MISERY_LOVES_COMPANY1",0
_cstring_challenge_misery2:		db "CHALLENGE_MISERY_LOVES_COMPANY2",0
_cstring_challenge_ouch_i:		db "CHALLENGE_OUCH_I",0
_cstring_challenge_ouch_i1:		db "CHALLENGE_OUCH_II",0
_cstring_challenge_ouch_i2:		db "CHALLENGE_OUCH_III",0
_cstring_challenge_rival:		db "CHALLENGE_RIVAL",0
_cstring_challenge_cruelt:		db "CHALLENGE_CRUELTY",0
_cstring_challenge_think_:		db "CHALLENGE_THINK_FAST",0
_cstring_challenge_think_1:		db "CHALLENGE_THINK_FAST_STUN",0
_cstring_challenge_think_2:		db "CHALLENGE_THINK_FAST_FLASH",0
_cstring_challenge_return:		db "CHALLENGE_RETURN_TO_SENDER",0
_cstring_challenge_blindf:		db "CHALLENGE_BLINDFIRE",0
_cstring_challenge_the_br:		db "CHALLENGE_THE_BRINK",0
_cstring_challenge_collat:		db "CHALLENGE_COLLATERAL_DAMAGE",0
_cstring_challenge_the_ed:		db "CHALLENGE_THE_EDGE_I",0
_cstring_challenge_the_ed1:		db "CHALLENGE_THE_EDGE_II",0
_cstring_challenge_the_ed2:		db "CHALLENGE_THE_EDGE_III",0
_cstring_challenge_flawle:		db "CHALLENGE_FLAWLESS",0
_cstring_challenge_tango_:		db "CHALLENGE_TANGO_DOWN",0
_cstring_challenge_hard_l:		db "CHALLENGE_HARD_LANDING",0
_cstring_challenge_extrem:		db "CHALLENGE_EXTREME_CRUELTY",0
_cstring_challenge_fast_s:		db "CHALLENGE_FAST_SWAP",0
_cstring_challenge_star_p:		db "CHALLENGE_STAR_PLAYER",0
_cstring_challenge_how_th:		db "CHALLENGE_HOW_THE_",0
_cstring_challenge_domino:		db "CHALLENGE_DOMINOS",0
_cstring_challenge_no_sec:		db "CHALLENGE_NO_SECRETS",0
_cstring_challenge_afterb:		db "CHALLENGE_AFTERBURNER",0
_cstring_challenge_air_su:		db "CHALLENGE_AIR_SUPERIORITY",0
_cstring_challenge_fearle:		db "CHALLENGE_FEARLESS",0
_cstring_challenge_counte6:		db "CHALLENGE_COUNTERMVP",0
_cstring_challenge_invinc:		db "CHALLENGE_INVINCIBLE",0
_cstring_challenge_surviv:		db "CHALLENGE_SURVIVALIST",0
_cstring_mp_host_endgame_:		db "MP_HOST_ENDGAME_RESPONSE",0
_cstring_mp_autobalance_n:		db "MP_AUTOBALANCE_NOW",0
_cstring_platform_press_t:		db "PLATFORM_PRESS_TO_SKIP",0
_cstring_platform_press_t1:		db "PLATFORM_PRESS_TO_RESPAWN",0
_cstring_mp_earned_radar:		db "MP_EARNED_RADAR",0
_cstring_mp_earned_airstr:		db "MP_EARNED_AIRSTRIKE",0
_cstring_mp_earned_helico:		db "MP_EARNED_HELICOPTER",0
_cstring_mp_radar_not_ava:		db "MP_RADAR_NOT_AVAILABLE",0
_cstring_mp_airstrike_not:		db "MP_AIRSTRIKE_NOT_AVAILABLE",0
_cstring_mp_helicopter_no:		db "MP_HELICOPTER_NOT_AVAILABLE",0
_cstring_mp_killstreak_n:		db "MP_KILLSTREAK_N",0
_cstring_mp_match_bonus_i:		db "MP_MATCH_BONUS_IS",0
_cstring_mp_defeat:		db "MP_DEFEAT",0
_cstring_mp_victory:		db "MP_VICTORY",0
_cstring_mp_round_loss:		db "MP_ROUND_LOSS",0
_cstring_mp_round_win:		db "MP_ROUND_WIN",0
_cstring_mp_draw:		db "MP_DRAW",0
_cstring_weapon_saw_mg_se:		db "weapon_saw_mg_setup",0
_cstring_weapon_m4_mp:		db "weapon_m4_mp",0
_cstring_weapon_m4_mp_bro:		db "weapon_m4_mp_brock",0
_cstring_weapon_m4_mp_bsh:		db "weapon_m4_mp_bshdwl",0
_cstring_weapon_m4_mp_bwm:		db "weapon_m4_mp_bwmrpt",0
_cstring_weapon_m4_mp_cmd:		db "weapon_m4_mp_cmdtgr",0
_cstring_weapon_m4_mp_sta:		db "weapon_m4_mp_stagger",0
_cstring_weapon_m82:		db "weapon_m82",0
_cstring_weapon_m82_mp_br:		db "weapon_m82_mp_brock",0
_cstring_weapon_m82_mp_bs:		db "weapon_m82_mp_bshdwl",0
_cstring_weapon_m82_mp_bw:		db "weapon_m82_mp_bwmrpt",0
_cstring_weapon_m82_mp_cm:		db "weapon_m82_mp_cmdtgr",0
_cstring_weapon_m82_mp_st:		db "weapon_m82_mp_stagger",0
_cstring_weapon_g36_mp:		db "weapon_g36_mp",0
_cstring_weapon_g36_mp_br:		db "weapon_g36_mp_brock",0
_cstring_weapon_g36_mp_bs:		db "weapon_g36_mp_bshdwl",0
_cstring_weapon_g36_mp_bw:		db "weapon_g36_mp_bwmrpt",0
_cstring_weapon_g36_mp_cm:		db "weapon_g36_mp_cmdtgr",0
_cstring_weapon_g36_mp_st:		db "weapon_g36_mp_stagger",0
_cstring_weapon_winchest1:		db "weapon_winchest1200",0
_cstring_weapon_winchest11:		db "weapon_winchest1200_mp_brock",0
_cstring_weapon_winchest12:		db "weapon_winchest1200_mp_bshdwl",0
_cstring_weapon_winchest13:		db "weapon_winchest1200_mp_bwmrpt",0
_cstring_weapon_winchest14:		db "weapon_winchest1200_mp_cmdtgr",0
_cstring_weapon_winchest15:		db "weapon_winchest1200_mp_stagger",0
_cstring_perc_stoppingpow:		db "perc_stoppingpower",0
_cstring_weapon_m67_grena:		db "weapon_m67_grenade",0
_cstring_projectile_m67fr:		db "projectile_m67fraggrenade",0
_cstring_weapon_mp5sd:		db "weapon_mp5sd",0
_cstring_weapon_mp5sd_mp_:		db "weapon_mp5sd_mp_brock",0
_cstring_weapon_mp5sd_mp_1:		db "weapon_mp5sd_mp_bshdwl",0
_cstring_weapon_mp5sd_mp_2:		db "weapon_mp5sd_mp_bwmrpt",0
_cstring_weapon_mp5sd_mp_3:		db "weapon_mp5sd_mp_cmdtgr",0
_cstring_weapon_mp5sd_mp_4:		db "weapon_mp5sd_mp_stagger",0
_cstring_weapon_desert_ea:		db "weapon_desert_eagle_silver",0
_cstring_weapon_rpg7:		db "weapon_rpg7",0
_cstring_projectile_rpg7:		db "projectile_rpg7",0
_cstring_weapon_mini_uzi:		db "weapon_mini_uzi",0
_cstring_weapon_mini_uzi_:		db "weapon_mini_uzi_mp_brock",0
_cstring_weapon_mini_uzi_1:		db "weapon_mini_uzi_mp_bshdwl",0
_cstring_weapon_mini_uzi_2:		db "weapon_mini_uzi_mp_bwmrpt",0
_cstring_weapon_mini_uzi_3:		db "weapon_mini_uzi_mp_cmdtgr",0
_cstring_weapon_mini_uzi_4:		db "weapon_mini_uzi_mp_stagger",0
_cstring_weapon_mini_uzi_5:		db "weapon_mini_uzi_gold",0
_cstring_perc_slieghtofha:		db "perc_slieghtofhand",0
_cstring_perc_doubletap:		db "perc_doubletap",0
_cstring_weapon_m14_scout:		db "weapon_m14_scout_mp",0
_cstring_weapon_m14_scout1:		db "weapon_m14_scout_mp_brock",0
_cstring_weapon_m14_scout2:		db "weapon_m14_scout_mp_bshdwl",0
_cstring_weapon_m14_scout3:		db "weapon_m14_scout_mp_bwmrpt",0
_cstring_weapon_m14_scout4:		db "weapon_m14_scout_mp_cmdtgr",0
_cstring_weapon_m14_scout5:		db "weapon_m14_scout_mp_stagger",0
_cstring_weapon_us_smoke_:		db "weapon_us_smoke_grenade",0
_cstring_projectile_us_sm:		db "projectile_us_smoke_grenade",0
_cstring_weapon_m84_flash:		db "weapon_m84_flashbang_grenade",0
_cstring_projectile_m84_f:		db "projectile_m84_flashbang_grenade",0
_cstring_vehicle_mig29_de:		db "vehicle_mig29_desert",0
_cstring_projectile_cbu97:		db "projectile_cbu97_clusterbomb",0
_cstring_tag_origin:		db "tag_origin",0
_cstring_weapon_beretta:		db "weapon_beretta",0
_cstring_weapon_colt1911_:		db "weapon_colt1911_black",0
_cstring_weapon_usp:		db "weapon_usp",0
_cstring_weapon_desert_ea1:		db "weapon_desert_eagle_gold",0
_cstring_weapon_mp5:		db "weapon_mp5",0
_cstring_weapon_mp5_mp_br:		db "weapon_mp5_mp_brock",0
_cstring_weapon_mp5_mp_bs:		db "weapon_mp5_mp_bshdwl",0
_cstring_weapon_mp5_mp_bw:		db "weapon_mp5_mp_bwmrpt",0
_cstring_weapon_mp5_mp_cm:		db "weapon_mp5_mp_cmdtgr",0
_cstring_weapon_mp5_mp_st:		db "weapon_mp5_mp_stagger",0
_cstring_weapon_skorpion:		db "weapon_skorpion",0
_cstring_weapon_skorpion_:		db "weapon_skorpion_mp_brock",0
_cstring_weapon_skorpion_1:		db "weapon_skorpion_mp_bshdwl",0
_cstring_weapon_skorpion_2:		db "weapon_skorpion_mp_bwmrpt",0
_cstring_weapon_skorpion_3:		db "weapon_skorpion_mp_cmdtgr",0
_cstring_weapon_skorpion_4:		db "weapon_skorpion_mp_stagger",0
_cstring_weapon_ak74u:		db "weapon_ak74u",0
_cstring_weapon_ak74u_mp_:		db "weapon_ak74u_mp_brock",0
_cstring_weapon_ak74u_mp_1:		db "weapon_ak74u_mp_bshdwl",0
_cstring_weapon_ak74u_mp_2:		db "weapon_ak74u_mp_bwmrpt",0
_cstring_weapon_ak74u_mp_3:		db "weapon_ak74u_mp_cmdtgr",0
_cstring_weapon_ak74u_mp_4:		db "weapon_ak74u_mp_stagger",0
_cstring_weapon_p90:		db "weapon_p90",0
_cstring_weapon_p90_mp_br:		db "weapon_p90_mp_brock",0
_cstring_weapon_p90_mp_bs:		db "weapon_p90_mp_bshdwl",0
_cstring_weapon_p90_mp_bw:		db "weapon_p90_mp_bwmrpt",0
_cstring_weapon_p90_mp_cm:		db "weapon_p90_mp_cmdtgr",0
_cstring_weapon_p90_mp_st:		db "weapon_p90_mp_stagger",0
_cstring_weapon_ak47:		db "weapon_ak47",0
_cstring_weapon_ak47_mp_b:		db "weapon_ak47_mp_brock",0
_cstring_weapon_ak47_mp_b1:		db "weapon_ak47_mp_bshdwl",0
_cstring_weapon_ak47_mp_b2:		db "weapon_ak47_mp_bwmrpt",0
_cstring_weapon_ak47_mp_c:		db "weapon_ak47_mp_cmdtgr",0
_cstring_weapon_ak47_mp_s:		db "weapon_ak47_mp_stagger",0
_cstring_weapon_ak47_gold:		db "weapon_ak47_gold",0
_cstring_weapon_mp44:		db "weapon_mp44",0
_cstring_weapon_mp44_mp_b:		db "weapon_mp44_mp_brock",0
_cstring_weapon_mp44_mp_b1:		db "weapon_mp44_mp_bshdwl",0
_cstring_weapon_mp44_mp_b2:		db "weapon_mp44_mp_bwmrpt",0
_cstring_weapon_mp44_mp_c:		db "weapon_mp44_mp_cmdtgr",0
_cstring_weapon_mp44_mp_s:		db "weapon_mp44_mp_stagger",0
_cstring_weapon_g3:		db "weapon_g3",0
_cstring_weapon_g3_mp_bro:		db "weapon_g3_mp_brock",0
_cstring_weapon_g3_mp_bsh:		db "weapon_g3_mp_bshdwl",0
_cstring_weapon_g3_mp_bwm:		db "weapon_g3_mp_bwmrpt",0
_cstring_weapon_g3_mp_cmd:		db "weapon_g3_mp_cmdtgr",0
_cstring_weapon_g3_mp_sta:		db "weapon_g3_mp_stagger",0
_cstring_weapon_m16_mp:		db "weapon_m16_mp",0
_cstring_weapon_m16_mp_br:		db "weapon_m16_mp_brock",0
_cstring_weapon_m16_mp_bs:		db "weapon_m16_mp_bshdwl",0
_cstring_weapon_m16_mp_bw:		db "weapon_m16_mp_bwmrpt",0
_cstring_weapon_m16_mp_cm:		db "weapon_m16_mp_cmdtgr",0
_cstring_weapon_m16_mp_st:		db "weapon_m16_mp_stagger",0
_cstring_weapon_m16gr_sp:		db "weapon_m16gr_sp",0
_cstring_weapon_m16m203_m:		db "weapon_m16m203_mp_brock",0
_cstring_weapon_m16m203_m1:		db "weapon_m16m203_mp_bshdwl",0
_cstring_weapon_m16m203_m2:		db "weapon_m16m203_mp_bwmrpt",0
_cstring_weapon_m16m203_m3:		db "weapon_m16m203_mp_cmdtgr",0
_cstring_weapon_m16m203_m4:		db "weapon_m16m203_mp_stagger",0
_cstring_projectile_m203g:		db "projectile_m203grenade",0
_cstring_weapon_dragunov:		db "weapon_dragunov",0
_cstring_weapon_dragunov_:		db "weapon_dragunov_mp_brock",0
_cstring_weapon_dragunov_1:		db "weapon_dragunov_mp_bshdwl",0
_cstring_weapon_dragunov_2:		db "weapon_dragunov_mp_bwmrpt",0
_cstring_weapon_dragunov_3:		db "weapon_dragunov_mp_cmdtgr",0
_cstring_weapon_dragunov_4:		db "weapon_dragunov_mp_stagger",0
_cstring_weapon_dragunov_5:		db "weapon_dragunov_gold",0
_cstring_weapon_m40a3:		db "weapon_m40a3",0
_cstring_weapon_m40a3_mp_:		db "weapon_m40a3_mp_brock",0
_cstring_weapon_m40a3_mp_1:		db "weapon_m40a3_mp_bshdwl",0
_cstring_weapon_m40a3_mp_2:		db "weapon_m40a3_mp_bwmrpt",0
_cstring_weapon_m40a3_mp_3:		db "weapon_m40a3_mp_cmdtgr",0
_cstring_weapon_m40a3_mp_4:		db "weapon_m40a3_mp_stagger",0
_cstring_weapon_remington:		db "weapon_remington700",0
_cstring_weapon_remington1:		db "weapon_remington700_mp_brock",0
_cstring_weapon_remington2:		db "weapon_remington700_mp_bshdwl",0
_cstring_weapon_remington3:		db "weapon_remington700_mp_bwmrpt",0
_cstring_weapon_remington4:		db "weapon_remington700_mp_cmdtgr",0
_cstring_weapon_remington5:		db "weapon_remington700_mp_stagger",0
_cstring_weapon_m14_mp:		db "weapon_m14_mp",0
_cstring_weapon_m14_mp_br:		db "weapon_m14_mp_brock",0
_cstring_weapon_m14_mp_bs:		db "weapon_m14_mp_bshdwl",0
_cstring_weapon_m14_mp_bw:		db "weapon_m14_mp_bwmrpt",0
_cstring_weapon_m14_mp_cm:		db "weapon_m14_mp_cmdtgr",0
_cstring_weapon_m14_mp_st:		db "weapon_m14_mp_stagger",0
_cstring_weapon_benelli_s:		db "weapon_benelli_super_90",0
_cstring_weapon_benelli_s1:		db "weapon_benelli_super_90_mp_brock",0
_cstring_weapon_benelli_s2:		db "weapon_benelli_super_90_mp_bshdwl",0
_cstring_weapon_benelli_s3:		db "weapon_benelli_super_90_mp_bwmrpt",0
_cstring_weapon_benelli_s4:		db "weapon_benelli_super_90_mp_cmdtgr",0
_cstring_weapon_benelli_s5:		db "weapon_benelli_super_90_mp_stagger",0
_cstring_weapon_benelli_s6:		db "weapon_benelli_super_90_gold",0
_cstring_weapon_rpd:		db "weapon_rpd",0
_cstring_weapon_rpd_mp_br:		db "weapon_rpd_mp_brock",0
_cstring_weapon_rpd_mp_bs:		db "weapon_rpd_mp_bshdwl",0
_cstring_weapon_rpd_mp_bw:		db "weapon_rpd_mp_bwmrpt",0
_cstring_weapon_rpd_mp_cm:		db "weapon_rpd_mp_cmdtgr",0
_cstring_weapon_rpd_mp_st:		db "weapon_rpd_mp_stagger",0
_cstring_weapon_saw:		db "weapon_saw",0
_cstring_weapon_saw_mp_br:		db "weapon_saw_mp_brock",0
_cstring_weapon_saw_mp_bs:		db "weapon_saw_mp_bshdwl",0
_cstring_weapon_saw_mp_bw:		db "weapon_saw_mp_bwmrpt",0
_cstring_weapon_saw_mp_cm:		db "weapon_saw_mp_cmdtgr",0
_cstring_weapon_saw_mp_st:		db "weapon_saw_mp_stagger",0
_cstring_weapon_m60:		db "weapon_m60",0
_cstring_weapon_m60_mp_br:		db "weapon_m60_mp_brock",0
_cstring_weapon_m60_mp_bs:		db "weapon_m60_mp_bshdwl",0
_cstring_weapon_m60_mp_bw:		db "weapon_m60_mp_bwmrpt",0
_cstring_weapon_m60_mp_cm:		db "weapon_m60_mp_cmdtgr",0
_cstring_weapon_m60_mp_st:		db "weapon_m60_mp_stagger",0
_cstring_weapon_m60_gold:		db "weapon_m60_gold",0
_cstring_weapon_c4_mp:		db "weapon_c4_mp",0
_cstring_weapon_c4:		db "weapon_c4",0
_cstring_weapon_claymore_:		db "weapon_claymore_no_legs",0
_cstring_weapon_claymore:		db "weapon_claymore",0
_cstring_weapon_concussio:		db "weapon_concussion_grenade",0
_cstring_projectile_concu:		db "projectile_concussion_grenade",0
_cstring_weapon_beretta_s:		db "weapon_beretta_silencer",0
_cstring_weapon_colt1911_1:		db "weapon_colt1911_silencer",0
_cstring_weapon_usp_silen:		db "weapon_usp_silencer",0
_cstring_weapon_skorpion_5:		db "weapon_skorpion_sd",0
_cstring_weapon_skorpions:		db "weapon_skorpionsd_mp_brock",0
_cstring_weapon_skorpions1:		db "weapon_skorpionsd_mp_bshdwl",0
_cstring_weapon_skorpions2:		db "weapon_skorpionsd_mp_bwmrpt",0
_cstring_weapon_skorpions3:		db "weapon_skorpionsd_mp_cmdtgr",0
_cstring_weapon_skorpions4:		db "weapon_skorpionsd_mp_stagger",0
_cstring_weapon_mini_uzi_6:		db "weapon_mini_uzi_silencer",0
_cstring_weapon_mini_uzi_7:		db "weapon_mini_uzi_sd_mp_brock",0
_cstring_weapon_mini_uzi_8:		db "weapon_mini_uzi_sd_mp_bshdwl",0
_cstring_weapon_mini_uzi_9:		db "weapon_mini_uzi_sd_mp_bwmrpt",0
_cstring_weapon_mini_uzi_10:		db "weapon_mini_uzi_sd_mp_cmdtgr",0
_cstring_weapon_mini_uzi_11:		db "weapon_mini_uzi_sd_mp_stagger",0
_cstring_weapon_mini_uzi_12:		db "weapon_mini_uzi_silencer_gold",0
_cstring_weapon_ak74u_sup:		db "weapon_ak74u_supressed",0
_cstring_weapon_ak74usd_m:		db "weapon_ak74usd_mp_brock",0
_cstring_weapon_ak74usd_m1:		db "weapon_ak74usd_mp_bshdwl",0
_cstring_weapon_ak74usd_m2:		db "weapon_ak74usd_mp_bwmrpt",0
_cstring_weapon_ak74usd_m3:		db "weapon_ak74usd_mp_cmdtgr",0
_cstring_weapon_ak74usd_m4:		db "weapon_ak74usd_mp_stagger",0
_cstring_weapon_p90_sd:		db "weapon_p90_sd",0
_cstring_weapon_p90_silen:		db "weapon_p90_silencer_mp_brock",0
_cstring_weapon_p90_silen1:		db "weapon_p90_silencer_mp_bshdwl",0
_cstring_weapon_p90_silen2:		db "weapon_p90_silencer_mp_bwmrpt",0
_cstring_weapon_p90_silen3:		db "weapon_p90_silencer_mp_cmdtgr",0
_cstring_weapon_p90_silen4:		db "weapon_p90_silencer_mp_stagger",0
_cstring_weapon_ak47_sile:		db "weapon_ak47_silencer",0
_cstring_weapon_ak47sd_mp:		db "weapon_ak47sd_mp_brock",0
_cstring_weapon_ak47sd_mp1:		db "weapon_ak47sd_mp_bwmrpt",0
_cstring_weapon_ak47sd_mp2:		db "weapon_ak47sd_mp_cmdtgr",0
_cstring_weapon_ak47sd_mp3:		db "weapon_ak47sd_mp_stagger",0
_cstring_weapon_ak47_sile1:		db "weapon_ak47_silencer_gold",0
_cstring_weapon_ak47_gren:		db "weapon_ak47_grenadier",0
_cstring_weapon_ak47_gren1:		db "weapon_ak47_grenadier_mp_brock",0
_cstring_weapon_ak47_gren2:		db "weapon_ak47_grenadier_mp_bshdwl",0
_cstring_weapon_ak47_gren3:		db "weapon_ak47_grenadier_mp_bwmrpt",0
_cstring_weapon_ak47_gren4:		db "weapon_ak47_grenadier_mp_cmdtgr",0
_cstring_weapon_ak47_gren5:		db "weapon_ak47_grenadier_mp_stagger",0
_cstring_weapon_ak47_gren6:		db "weapon_ak47_grenadier_gold",0
_cstring_weapon_m14sd_sco:		db "weapon_m14sd_scout",0
_cstring_weapon_m14sd_sco1:		db "weapon_m14sd_scout_brock",0
_cstring_weapon_m14sd_sco2:		db "weapon_m14sd_scout_bshdwl",0
_cstring_weapon_m14sd_sco3:		db "weapon_m14sd_scout_bwmrpt",0
_cstring_weapon_m14sd_sco4:		db "weapon_m14sd_scout_cmdtgr",0
_cstring_weapon_m14sd_sco5:		db "weapon_m14sd_scout_stagger",0
_cstring_weapon_m14_gl_sc:		db "weapon_m14_gl_scout_mp",0
_cstring_weapon_m14_gl_sc1:		db "weapon_m14_gl_scout_mp_brock",0
_cstring_weapon_m14_gl_sc2:		db "weapon_m14_gl_scout_mp_bshdwl",0
_cstring_weapon_m14_gl_sc3:		db "weapon_m14_gl_scout_mp_bwmrpt",0
_cstring_weapon_m14_gl_sc4:		db "weapon_m14_gl_scout_mp_cmdtgr",0
_cstring_weapon_m14_gl_sc5:		db "weapon_m14_gl_scout_mp_stagger",0
_cstring_weapon_g3_silenc:		db "weapon_g3_silencer",0
_cstring_weapon_g3sd_mp_b:		db "weapon_g3sd_mp_brock",0
_cstring_weapon_g3sd_mp_b1:		db "weapon_g3sd_mp_bshdwl",0
_cstring_weapon_g3sd_mp_b2:		db "weapon_g3sd_mp_bwmrpt",0
_cstring_weapon_g3sd_mp_c:		db "weapon_g3sd_mp_cmdtgr",0
_cstring_weapon_g3sd_mp_s:		db "weapon_g3sd_mp_stagger",0
_cstring_weapon_g3m203:		db "weapon_g3m203",0
_cstring_weapon_g3m203_br:		db "weapon_g3m203_brock",0
_cstring_weapon_g3m203_bs:		db "weapon_g3m203_bshdwl",0
_cstring_weapon_g3m203_bw:		db "weapon_g3m203_bwmrpt",0
_cstring_weapon_g3m203_cm:		db "weapon_g3m203_cmdtgr",0
_cstring_weapon_g3m203_st:		db "weapon_g3m203_stagger",0
_cstring_weapon_g36csd_mp:		db "weapon_g36csd_mp",0
_cstring_weapon_g36csd_mp1:		db "weapon_g36csd_mp_brock",0
_cstring_weapon_g36csd_mp2:		db "weapon_g36csd_mp_bshdwl",0
_cstring_weapon_g36csd_mp3:		db "weapon_g36csd_mp_bwmrpt",0
_cstring_weapon_g36csd_mp4:		db "weapon_g36csd_mp_cmdtgr",0
_cstring_weapon_g36csd_mp5:		db "weapon_g36csd_mp_stagger",0
_cstring_weapon_g36m203:		db "weapon_g36m203",0
_cstring_weapon_g36m203_b:		db "weapon_g36m203_brock",0
_cstring_weapon_g36m203_b1:		db "weapon_g36m203_bshdwl",0
_cstring_weapon_g36m203_b2:		db "weapon_g36m203_bwmrpt",0
_cstring_weapon_g36m203_c:		db "weapon_g36m203_cmdtgr",0
_cstring_weapon_g36m203_s:		db "weapon_g36m203_stagger",0
_cstring_weapon_m16_silen:		db "weapon_m16_silencer_mp",0
_cstring_weapon_m16sd_mp_:		db "weapon_m16sd_mp_brock",0
_cstring_weapon_m16sd_mp_1:		db "weapon_m16sd_mp_bshdwl",0
_cstring_weapon_m16sd_mp_2:		db "weapon_m16sd_mp_bwmrpt",0
_cstring_weapon_m16sd_mp_3:		db "weapon_m16sd_mp_cmdtgr",0
_cstring_weapon_m16sd_mp_4:		db "weapon_m16sd_mp_stagger",0
_cstring_weapon_m4_silenc:		db "weapon_m4_silencer_mp",0
_cstring_weapon_m4sd_mp_b:		db "weapon_m4sd_mp_brock",0
_cstring_weapon_m4sd_mp_b1:		db "weapon_m4sd_mp_bshdwl",0
_cstring_weapon_m4sd_mp_b2:		db "weapon_m4sd_mp_bwmrpt",0
_cstring_weapon_m4sd_mp_c:		db "weapon_m4sd_mp_cmdtgr",0
_cstring_weapon_m4sd_mp_s:		db "weapon_m4sd_mp_stagger",0
_cstring_weapon_m4m203_mp:		db "weapon_m4m203_mp",0
_cstring_weapon_m4m203_mp1:		db "weapon_m4m203_mp_brock",0
_cstring_weapon_m4m203_mp2:		db "weapon_m4m203_mp_bshdwl",0
_cstring_weapon_m4m203_mp3:		db "weapon_m4m203_mp_bwmrpt",0
_cstring_weapon_m4m203_mp4:		db "weapon_m4m203_mp_cmdtgr",0
_cstring_weapon_m4m203_mp5:		db "weapon_m4m203_mp_stagger",0
_cstring_weapon_benelli_s7:		db "weapon_benelli_super_90_foregrip_mp_brock",0
_cstring_weapon_benelli_s8:		db "weapon_benelli_super_90_foregrip_mp_bshdwl",0
_cstring_weapon_benelli_s9:		db "weapon_benelli_super_90_foregrip_mp_bwmrpt",0
_cstring_weapon_benelli_s10:		db "weapon_benelli_super_90_foregrip_mp_cmdtgr",0
_cstring_weapon_benelli_s11:		db "weapon_benelli_super_90_foregrip_mp_stagger",0
_cstring_weapon_benelli_s12:		db "weapon_benelli_super_90_gold_foregrip",0
_cstring_default:		db "default",0
_cstring_concussion_grena:		db "concussion_grenade_mp",0
_cstring_flashbang:		db "flashbang",0
_cstring_frag_grenade_mp:		db "frag_grenade_mp",0
_cstring_damage_mp:		db "damage_mp",0
_cstring_ingame_controls:		db "ingame_controls",0
_cstring_ingame_options:		db "ingame_options",0
_cstring_popup_leavegame:		db "popup_leavegame",0
_cstring_scoreboard:		db "scoreboard",0
_cstring_class:		db "class",0
_cstring_changeclass:		db "changeclass",0
_cstring_changeclass_offl:		db "changeclass_offline",0
_cstring_white:		db "white",0
_cstring_black:		db "black",0
_cstring_specialty_parabo:		db "specialty_parabolic",0
_cstring_specialty_gpsjam:		db "specialty_gpsjammer",0
_cstring_specialty_holdbr:		db "specialty_holdbreath",0
_cstring_specialty_quiete:		db "specialty_quieter",0
_cstring_specialty_longer:		db "specialty_longersprint",0
_cstring_specialty_detect:		db "specialty_detectexplosive",0
_cstring_specialty_explos:		db "specialty_explosivedamage",0
_cstring_specialty_pistol:		db "specialty_pistoldeath",0
_cstring_specialty_grenad:		db "specialty_grenadepulldeath",0
_cstring_specialty_bullet:		db "specialty_bulletdamage",0
_cstring_specialty_bullet1:		db "specialty_bulletpenetration",0
_cstring_specialty_bullet2:		db "specialty_bulletaccuracy",0
_cstring_specialty_rof:		db "specialty_rof",0
_cstring_specialty_fastre:		db "specialty_fastreload",0
_cstring_specialty_extraa:		db "specialty_extraammo",0
_cstring_specialty_twopri:		db "specialty_twoprimaries",0
_cstring_specialty_armorv:		db "specialty_armorvest",0
_cstring_specialty_fraggr:		db "specialty_fraggrenade",0
_cstring_specialty_specia:		db "specialty_specialgrenade",0
_cstring_specialty_weapon:		db "specialty_weapon_c4",0
_cstring_specialty_weapon1:		db "specialty_weapon_claymore",0
_cstring_specialty_weapon2:		db "specialty_weapon_rpg",0
_cstring_specialty_null:		db "specialty_null",0
_cstring_waypoint_bombsqu:		db "waypoint_bombsquad",0
_cstring_rank_pfc1:		db "rank_pfc1",0
_cstring_rank_pfc2:		db "rank_pfc2",0
_cstring_rank_pfc3:		db "rank_pfc3",0
_cstring_rank_lcpl1:		db "rank_lcpl1",0
_cstring_rank_lcpl2:		db "rank_lcpl2",0
_cstring_rank_lcpl3:		db "rank_lcpl3",0
_cstring_rank_cpl1:		db "rank_cpl1",0
_cstring_rank_cpl2:		db "rank_cpl2",0
_cstring_rank_cpl3:		db "rank_cpl3",0
_cstring_rank_sgt1:		db "rank_sgt1",0
_cstring_rank_sgt2:		db "rank_sgt2",0
_cstring_rank_sgt3:		db "rank_sgt3",0
_cstring_rank_ssgt1:		db "rank_ssgt1",0
_cstring_rank_ssgt2:		db "rank_ssgt2",0
_cstring_rank_ssgt3:		db "rank_ssgt3",0
_cstring_rank_gysgt1:		db "rank_gysgt1",0
_cstring_rank_gysgt2:		db "rank_gysgt2",0
_cstring_rank_gysgt3:		db "rank_gysgt3",0
_cstring_rank_msgt1:		db "rank_msgt1",0
_cstring_rank_msgt2:		db "rank_msgt2",0
_cstring_rank_msgt3:		db "rank_msgt3",0
_cstring_rank_mgysgt1:		db "rank_mgysgt1",0
_cstring_rank_mgysgt2:		db "rank_mgysgt2",0
_cstring_rank_mgysgt3:		db "rank_mgysgt3",0
_cstring_rank_2ndlt1:		db "rank_2ndlt1",0
_cstring_rank_2ndlt2:		db "rank_2ndlt2",0
_cstring_rank_2ndlt3:		db "rank_2ndlt3",0
_cstring_rank_1stlt1:		db "rank_1stlt1",0
_cstring_rank_1stlt2:		db "rank_1stlt2",0
_cstring_rank_1stlt3:		db "rank_1stlt3",0
_cstring_rank_capt1:		db "rank_capt1",0
_cstring_rank_capt2:		db "rank_capt2",0
_cstring_rank_capt3:		db "rank_capt3",0
_cstring_rank_maj1:		db "rank_maj1",0
_cstring_rank_maj2:		db "rank_maj2",0
_cstring_rank_maj3:		db "rank_maj3",0
_cstring_rank_ltcol1:		db "rank_ltcol1",0
_cstring_rank_ltcol2:		db "rank_ltcol2",0
_cstring_rank_ltcol3:		db "rank_ltcol3",0
_cstring_rank_col1:		db "rank_col1",0
_cstring_rank_col2:		db "rank_col2",0
_cstring_rank_col3:		db "rank_col3",0
_cstring_rank_bgen1:		db "rank_bgen1",0
_cstring_rank_bgen2:		db "rank_bgen2",0
_cstring_rank_bgen3:		db "rank_bgen3",0
_cstring_rank_majgen1:		db "rank_majgen1",0
_cstring_rank_majgen2:		db "rank_majgen2",0
_cstring_rank_majgen3:		db "rank_majgen3",0
_cstring_rank_ltgen1:		db "rank_ltgen1",0
_cstring_rank_ltgen2:		db "rank_ltgen2",0
_cstring_rank_ltgen3:		db "rank_ltgen3",0
_cstring_rank_gen1:		db "rank_gen1",0
_cstring_rank_gen2:		db "rank_gen2",0
_cstring_rank_gen3:		db "rank_gen3",0
_cstring_rank_comm1:		db "rank_comm1",0
_cstring_rank_prestige1:		db "rank_prestige1",0
_cstring_rank_prestige2:		db "rank_prestige2",0
_cstring_rank_prestige3:		db "rank_prestige3",0
_cstring_rank_prestige4:		db "rank_prestige4",0
_cstring_rank_prestige5:		db "rank_prestige5",0
_cstring_rank_prestige6:		db "rank_prestige6",0
_cstring_rank_prestige7:		db "rank_prestige7",0
_cstring_rank_prestige8:		db "rank_prestige8",0
_cstring_rank_prestige9:		db "rank_prestige9",0
_cstring_rank_prestige10:		db "rank_prestige10",0
_cstring_progress_bar_bg:		db "progress_bar_bg",0
_cstring_progress_bar_fg:		db "progress_bar_fg",0
_cstring_progress_bar_fil:		db "progress_bar_fill",0
_cstring_score_bar_bg:		db "score_bar_bg",0
_cstring_objpoint_default:		db "objpoint_default",0
_cstring_headicon_dead:		db "headicon_dead",0
_cstring_damage_feedback:		db "damage_feedback",0
_cstring_damage_feedback_:		db "damage_feedback_j",0
_cstring_overlay_low_heal:		db "overlay_low_health",0
_cstring_defaultweapon_mp:		db "defaultweapon_mp saw_bipod_crouch_mp m4_acog_mp barrett_mp g36c_reflex_mp winchester1200_grip_mp frag_grenade_mp mp5_silencer_mp deserteagle_mp rpg_mp uzi_mp m14_mp smoke_grenade_mp flash_grenade_mp beretta_mp colt45_mp usp_mp deserteaglegold_mp mp5_mp skorpion_mp ak74u_mp p90_mp ak47_mp mp44_mp g3_mp g36c_mp m16_mp m4_mp gl_mp m16_gl_mp gl_m16_mp dragunov_mp m40a3_mp remington700_mp m21_mp m1014_mp winchester1200_mp rpd_mp saw_mp m60e4_mp c4_mp claymore_mp concussion_grenade_mp beretta_silencer_mp colt45_silencer_mp usp_silencer_mp mp5_reflex_mp mp5_acog_mp skorpion_reflex_mp skorpion_silencer_mp skorpion_acog_mp uzi_reflex_mp uzi_silencer_mp uzi_acog_mp ak74u_reflex_mp ak74u_silencer_mp ak74u_acog_mp p90_reflex_mp p90_silencer_mp p90_acog_mp ak47_reflex_mp ak47_silencer_mp ak47_acog_mp ak47_gl_mp gl_ak47_mp m14_reflex_mp m14_silencer_mp m14_acog_mp m14_gl_mp gl_m14_mp g3_reflex_mp g3_silencer_mp g3_acog_mp g3_gl_mp gl_g3_mp g36c_silencer_mp g36c_acog_mp g36c_gl_mp gl_g36c_mp m16_reflex_mp m16_silencer_mp m16_acog_mp m4_reflex_mp m4_silencer_mp m4_gl_mp gl_m4_mp dragunov_acog_mp m40a3_acog_mp barrett_acog_mp remington700_acog_mp m21_acog_mp m1014_grip_mp m1014_reflex_mp winchester1200_reflex_mp rpd_acog_mp rpd_grip_mp rpd_reflex_mp saw_acog_mp saw_grip_mp saw_reflex_mp m60e4_acog_mp m60e4_grip_mp m60e4_reflex_mp frag_grenade_short_mp destructible_car briefcase_bomb_mp briefcase_bomb_defuse_mp radar_mp airstrike_mp helicopter_mp artillery_mp cobra_ffar_mp hind_ffar_mp cobra_20mm_mp",0
_cstring_hud_status_dead:		db "hud_status_dead",0
_cstring_hud_status_conne:		db "hud_status_connecting",0
_cstring_null:		db 0



;All constant floats and doubles:
SECTION .rdata

