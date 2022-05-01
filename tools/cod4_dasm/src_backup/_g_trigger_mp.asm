;Imports of g_trigger_mp:
	extern level
	extern _Z18Scr_IsSystemActiveh
	extern _Z8G_DamageP9gentity_sS0_S0_PKfS2_iiii13hitLocation_tjji
	extern _Z13Scr_AddEntityP9gentity_s
	extern scr_const
	extern _Z10Scr_NotifyP9gentity_stj
	extern _Z17G_FreeEntityDelayP9gentity_s
	extern _Z12G_SpawnFloatPKcS0_Pf
	extern _Z13SV_LinkEntityP9gentity_s
	extern _Z2vaPKcz
	extern _Z9Com_Error11errorParm_tPKcz
	extern _Z16SV_SetBrushModelP9gentity_s
	extern _Z18G_LevelSpawnStringPKcS0_PS0_
	extern _Z14Com_PrintErroriPKcz
	extern _Z12G_FreeEntityP9gentity_s
	extern _Z10G_SpawnIntPKcS0_Pi
	extern _Z15Scr_GetNumParamv
	extern _Z12Scr_GetFloatj
	extern _Z9Scr_ErrorPKc
	extern _Z16AddPointToBoundsPKfPfS1_
	extern _Z15CM_AreaEntitiesPKfS0_Piii
	extern g_entities
	extern vec3_origin
	extern _Z21SV_SightTraceToEntityPKfS0_S0_S0_ii
	extern modNames
	extern _Z18Scr_AddConstStringj
	extern _Z13Scr_AddVectorPKf
	extern _Z10Scr_AddInti

;Exports of g_trigger_mp:
	global _Z10hurt_touchP9gentity_sS0_i
	global _Z11Touch_MultiP9gentity_sS0_i
	global _Z15SP_trigger_diskP9gentity_s
	global _Z15SP_trigger_hurtP9gentity_s
	global _Z15SP_trigger_onceP9gentity_s
	global _Z17SP_trigger_damageP9gentity_s
	global _Z17SP_trigger_lookatP9gentity_s
	global _Z17SP_trigger_radiusP9gentity_s
	global _Z18Die_trigger_damageP9gentity_sS0_S0_iiiPKf13hitLocation_ti
	global _Z18Use_trigger_damageP9gentity_sS0_S0_
	global _Z19Pain_trigger_damageP9gentity_sS0_iPKfiS2_13hitLocation_ti
	global _Z19SP_trigger_multipleP9gentity_s
	global _Z23Activate_trigger_damageP9gentity_sS0_ii
	global _Z23G_CheckHitTriggerDamageP9gentity_sPKfS2_ii
	global _Z27G_GrenadeTouchTriggerDamageP9gentity_sPfS1_ii
	global _Z8hurt_useP9gentity_sS0_S0_


SECTION .text


;hurt_touch(gentity_s*, gentity_s*, int)
_Z10hurt_touchP9gentity_sS0_i:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov esi, [ebp+0x8]
	mov edi, [ebp+0xc]
	cmp byte [edi+0x16b], 0x0
	jz _Z10hurt_touchP9gentity_sS0_i_10
	mov ebx, level
	mov eax, [esi+0x1bc]
	cmp eax, [ebx+0x1ec]
	jle _Z10hurt_touchP9gentity_sS0_i_20
_Z10hurt_touchP9gentity_sS0_i_10:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z10hurt_touchP9gentity_sS0_i_20:
	mov dword [esp], 0x1
	call _Z18Scr_IsSystemActiveh
	test eax, eax
	jz _Z10hurt_touchP9gentity_sS0_i_30
	mov eax, [ebx+0x2dd4]
	cmp eax, 0x100
	jz _Z10hurt_touchP9gentity_sS0_i_40
	lea edx, [eax+eax*2]
	lea edx, [ebx+edx*4+0x15d0]
	lea ecx, [edx+0x4]
	add eax, 0x1
	mov [ebx+0x2dd4], eax
	mov eax, [esi]
	mov [edx+0x4], ax
	mov eax, [edi]
	mov [ecx+0x2], ax
	mov eax, [esi+0x26c]
	mov [ecx+0x4], eax
	mov eax, [edi+0x26c]
	mov [ecx+0x8], eax
_Z10hurt_touchP9gentity_sS0_i_30:
	test byte [esi+0x17c], 0x10
	jz _Z10hurt_touchP9gentity_sS0_i_50
	mov eax, level
	mov eax, [eax+0x1ec]
	add eax, 0x3e8
	mov [esi+0x1bc], eax
_Z10hurt_touchP9gentity_sS0_i_60:
	mov dword [esp+0x30], 0x0
	mov dword [esp+0x2c], 0x0
	mov dword [esp+0x28], 0x0
	mov dword [esp+0x24], 0x0
	mov dword [esp+0x20], 0xffffffff
	mov dword [esp+0x1c], 0xd
	mov dword [esp+0x18], 0x0
	mov eax, [esi+0x1a8]
	mov [esp+0x14], eax
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x0
	mov [esp+0x8], esi
	mov [esp+0x4], esi
	mov [esp], edi
	call _Z8G_DamageP9gentity_sS0_S0_PKfS2_iiii13hitLocation_tjji
	test byte [esi+0x17c], 0x20
	jz _Z10hurt_touchP9gentity_sS0_i_10
	mov byte [esi+0x16e], 0x2
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z10hurt_touchP9gentity_sS0_i_50:
	mov eax, level
	mov eax, [eax+0x1ec]
	add eax, 0x32
	mov [esi+0x1bc], eax
	jmp _Z10hurt_touchP9gentity_sS0_i_60
_Z10hurt_touchP9gentity_sS0_i_40:
	mov [esp], edi
	call _Z13Scr_AddEntityP9gentity_s
	mov dword [esp+0x8], 0x1
	mov eax, scr_const
	movzx eax, word [eax+0xbc]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z10Scr_NotifyP9gentity_stj
	jmp _Z10hurt_touchP9gentity_sS0_i_30


;Touch_Multi(gentity_s*, gentity_s*, int)
_Z11Touch_MultiP9gentity_sS0_i:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov esi, [ebp+0x8]
	mov edi, [ebp+0xc]
	mov dword [esp], 0x1
	call _Z18Scr_IsSystemActiveh
	test eax, eax
	jz _Z11Touch_MultiP9gentity_sS0_i_10
	mov ebx, level
	mov eax, [ebx+0x2dd4]
	cmp eax, 0x100
	jz _Z11Touch_MultiP9gentity_sS0_i_20
	lea edx, [eax+eax*2]
	lea edx, [ebx+edx*4+0x15d0]
	lea ecx, [edx+0x4]
	add eax, 0x1
	mov [ebx+0x2dd4], eax
	mov eax, [esi]
	mov [edx+0x4], ax
	mov eax, [edi]
	mov [ecx+0x2], ax
	mov eax, [esi+0x26c]
	mov [ecx+0x4], eax
	mov eax, [edi+0x26c]
	mov [ecx+0x8], eax
_Z11Touch_MultiP9gentity_sS0_i_10:
	test byte [esi+0x17c], 0x10
	jnz _Z11Touch_MultiP9gentity_sS0_i_30
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z11Touch_MultiP9gentity_sS0_i_30:
	mov [ebp+0x8], esi
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z17G_FreeEntityDelayP9gentity_s
_Z11Touch_MultiP9gentity_sS0_i_20:
	mov [esp], edi
	call _Z13Scr_AddEntityP9gentity_s
	mov dword [esp+0x8], 0x1
	mov eax, scr_const
	movzx eax, word [eax+0xbc]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z10Scr_NotifyP9gentity_stj
	jmp _Z11Touch_MultiP9gentity_sS0_i_10


;SP_trigger_disk(gentity_s*)
_Z15SP_trigger_diskP9gentity_s:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x34
	mov ebx, [ebp+0x8]
	lea eax, [ebp-0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_null
	mov dword [esp], _cstring_radius
	call _Z12G_SpawnFloatPKcS0_Pf
	test eax, eax
	jz _Z15SP_trigger_diskP9gentity_s_10
_Z15SP_trigger_diskP9gentity_s_70:
	mov byte [ebx+0x16e], 0x1
	movss xmm0, dword [_float_64_00000000]
	addss xmm0, [ebp-0xc]
	movss [ebp-0xc], xmm0
	movaps xmm1, xmm0
	xorps xmm1, [_data16_80000000]
	movss [ebx+0x108], xmm1
	movss [ebx+0x10c], xmm1
	mov dword [ebx+0x110], 0xc7c35000
	movss [ebx+0x114], xmm0
	movss [ebx+0x118], xmm0
	mov dword [ebx+0x11c], 0x47c35000
	mov byte [ebx+0xf6], 0x41
	mov eax, level
	cmp byte [eax+0xb34], 0x0
	jnz _Z15SP_trigger_diskP9gentity_s_20
_Z15SP_trigger_diskP9gentity_s_80:
	mov eax, [ebx+0x17c]
_Z15SP_trigger_diskP9gentity_s_90:
	mov dword [ebx+0x120], 0x0
	test al, 0x8
	jnz _Z15SP_trigger_diskP9gentity_s_30
	mov dword [ebx+0x120], 0x40000000
_Z15SP_trigger_diskP9gentity_s_30:
	test al, 0x1
	jz _Z15SP_trigger_diskP9gentity_s_40
	or dword [ebx+0x120], 0x40000
_Z15SP_trigger_diskP9gentity_s_40:
	test al, 0x2
	jz _Z15SP_trigger_diskP9gentity_s_50
	or dword [ebx+0x120], 0x80000
_Z15SP_trigger_diskP9gentity_s_50:
	test al, 0x4
	jz _Z15SP_trigger_diskP9gentity_s_60
	or dword [ebx+0x120], 0x100000
_Z15SP_trigger_diskP9gentity_s_60:
	mov [esp], ebx
	call _Z13SV_LinkEntityP9gentity_s
	add esp, 0x34
	pop ebx
	pop ebp
	ret
_Z15SP_trigger_diskP9gentity_s_10:
	cvtss2sd xmm0, [ebx+0x144]
	movsd [esp+0x14], xmm0
	cvtss2sd xmm0, [ebx+0x140]
	movsd [esp+0xc], xmm0
	cvtss2sd xmm0, [ebx+0x13c]
	movsd [esp+0x4], xmm0
	mov dword [esp], _cstring_radius_not_speci
	call _Z2vaPKcz
	mov [esp+0x4], eax
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z15SP_trigger_diskP9gentity_s_70
_Z15SP_trigger_diskP9gentity_s_20:
	lea eax, [ebp-0x10]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_null
	mov dword [esp], _cstring_wait
	call _Z12G_SpawnFloatPKcS0_Pf
	test eax, eax
	jz _Z15SP_trigger_diskP9gentity_s_80
	pxor xmm0, xmm0
	ucomiss xmm0, [ebp-0x10]
	jb _Z15SP_trigger_diskP9gentity_s_80
	mov eax, [ebx+0x17c]
	or eax, 0x10
	mov [ebx+0x17c], eax
	jmp _Z15SP_trigger_diskP9gentity_s_90
	nop


;SP_trigger_hurt(gentity_s*)
_Z15SP_trigger_hurtP9gentity_s:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x34
	mov ebx, [ebp+0x8]
	mov [esp], ebx
	call _Z16SV_SetBrushModelP9gentity_s
	test al, al
	jz _Z15SP_trigger_hurtP9gentity_s_10
	mov dword [ebx+0x120], 0x405c0008
	mov byte [ebx+0xf6], 0x1
	mov edx, [ebx+0x8]
	mov eax, edx
	or eax, 0x1
	mov [ebx+0x8], eax
	cmp word [ebx+0x168], 0x0
	jnz _Z15SP_trigger_hurtP9gentity_s_20
	or edx, 0x21
	mov [ebx+0x8], edx
_Z15SP_trigger_hurtP9gentity_s_20:
	lea eax, [ebp-0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_world_hurt_me
	mov dword [esp], _cstring_sound
	call _Z18G_LevelSpawnStringPKcS0_PS0_
	mov eax, [ebx+0x1a8]
	test eax, eax
	jz _Z15SP_trigger_hurtP9gentity_s_30
_Z15SP_trigger_hurtP9gentity_s_40:
	mov dword [ebx+0x120], 0x405c0008
	mov eax, [ebx+0x17c]
	and eax, 0x1
	neg al
	add al, 0x3
	mov [ebx+0x16e], al
	add esp, 0x34
	pop ebx
	pop ebp
	ret
_Z15SP_trigger_hurtP9gentity_s_30:
	mov dword [ebx+0x1a8], 0x5
	jmp _Z15SP_trigger_hurtP9gentity_s_40
_Z15SP_trigger_hurtP9gentity_s_10:
	cvtss2sd xmm0, [ebx+0x20]
	movsd [esp+0x18], xmm0
	cvtss2sd xmm0, [ebx+0x1c]
	movsd [esp+0x10], xmm0
	cvtss2sd xmm0, [ebx+0x18]
	movsd [esp+0x8], xmm0
	mov dword [esp+0x4], _cstring_killing_trigger_
	mov dword [esp], 0x1
	call _Z14Com_PrintErroriPKcz
	mov [esp], ebx
	call _Z12G_FreeEntityP9gentity_s
	add esp, 0x34
	pop ebx
	pop ebp
	ret
	nop


;SP_trigger_once(gentity_s*)
_Z15SP_trigger_onceP9gentity_s:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov ebx, [ebp+0x8]
	mov byte [ebx+0x16e], 0x1
	or dword [ebx+0x17c], 0x10
	mov [esp], ebx
	call _Z16SV_SetBrushModelP9gentity_s
	test al, al
	jz _Z15SP_trigger_onceP9gentity_s_10
	mov dword [ebx+0x120], 0x405c0008
	mov byte [ebx+0xf6], 0x1
	mov edx, [ebx+0x8]
	mov eax, edx
	or eax, 0x1
	mov [ebx+0x8], eax
	cmp word [ebx+0x168], 0x0
	jnz _Z15SP_trigger_onceP9gentity_s_20
	or edx, 0x21
	mov [ebx+0x8], edx
_Z15SP_trigger_onceP9gentity_s_20:
	mov dword [ebx+0x120], 0x0
	mov eax, [ebx+0x17c]
	test al, 0x8
	jz _Z15SP_trigger_onceP9gentity_s_30
	test al, 0x1
	jnz _Z15SP_trigger_onceP9gentity_s_40
_Z15SP_trigger_onceP9gentity_s_90:
	test al, 0x2
	jnz _Z15SP_trigger_onceP9gentity_s_50
_Z15SP_trigger_onceP9gentity_s_80:
	test al, 0x4
	jnz _Z15SP_trigger_onceP9gentity_s_60
_Z15SP_trigger_onceP9gentity_s_70:
	mov [ebp+0x8], ebx
	add esp, 0x24
	pop ebx
	pop ebp
	jmp _Z13SV_LinkEntityP9gentity_s
_Z15SP_trigger_onceP9gentity_s_60:
	or dword [ebx+0x120], 0x100000
	mov [ebp+0x8], ebx
	add esp, 0x24
	pop ebx
	pop ebp
	jmp _Z13SV_LinkEntityP9gentity_s
_Z15SP_trigger_onceP9gentity_s_50:
	or dword [ebx+0x120], 0x80000
	test al, 0x4
	jz _Z15SP_trigger_onceP9gentity_s_70
	jmp _Z15SP_trigger_onceP9gentity_s_60
_Z15SP_trigger_onceP9gentity_s_40:
	or dword [ebx+0x120], 0x40000
	test al, 0x2
	jz _Z15SP_trigger_onceP9gentity_s_80
	jmp _Z15SP_trigger_onceP9gentity_s_50
_Z15SP_trigger_onceP9gentity_s_30:
	mov dword [ebx+0x120], 0x40000000
	test al, 0x1
	jz _Z15SP_trigger_onceP9gentity_s_90
	jmp _Z15SP_trigger_onceP9gentity_s_40
_Z15SP_trigger_onceP9gentity_s_10:
	cvtss2sd xmm0, [ebx+0x20]
	movsd [esp+0x18], xmm0
	cvtss2sd xmm0, [ebx+0x1c]
	movsd [esp+0x10], xmm0
	cvtss2sd xmm0, [ebx+0x18]
	movsd [esp+0x8], xmm0
	mov dword [esp+0x4], _cstring_killing_trigger_
	mov dword [esp], 0x1
	call _Z14Com_PrintErroriPKcz
	mov [esp], ebx
	call _Z12G_FreeEntityP9gentity_s
	add esp, 0x24
	pop ebx
	pop ebp
	ret
	nop


;SP_trigger_damage(gentity_s*)
_Z17SP_trigger_damageP9gentity_s:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x34
	mov ebx, [ebp+0x8]
	lea eax, [ebx+0x1b8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_0
	mov dword [esp], _cstring_accumulate
	call _Z10G_SpawnIntPKcS0_Pi
	lea eax, [ebx+0x1b4]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_0
	mov dword [esp], _cstring_threshold
	call _Z10G_SpawnIntPKcS0_Pi
	mov dword [ebx+0x1a0], 0x7d00
	mov byte [ebx+0x16b], 0x1
	mov byte [ebx+0x16e], 0x4
	mov eax, level
	cmp byte [eax+0xb34], 0x0
	jnz _Z17SP_trigger_damageP9gentity_s_10
_Z17SP_trigger_damageP9gentity_s_50:
	mov [esp], ebx
	call _Z16SV_SetBrushModelP9gentity_s
	test al, al
	jz _Z17SP_trigger_damageP9gentity_s_20
	mov dword [ebx+0x120], 0x405c0008
	mov byte [ebx+0xf6], 0x1
	mov edx, [ebx+0x8]
	mov eax, edx
	or eax, 0x1
	mov [ebx+0x8], eax
	cmp word [ebx+0x168], 0x0
	jz _Z17SP_trigger_damageP9gentity_s_30
_Z17SP_trigger_damageP9gentity_s_40:
	mov [esp], ebx
	call _Z13SV_LinkEntityP9gentity_s
	add esp, 0x34
	pop ebx
	pop ebp
	ret
_Z17SP_trigger_damageP9gentity_s_30:
	or edx, 0x21
	mov [ebx+0x8], edx
	jmp _Z17SP_trigger_damageP9gentity_s_40
_Z17SP_trigger_damageP9gentity_s_20:
	cvtss2sd xmm0, [ebx+0x20]
	movsd [esp+0x18], xmm0
	cvtss2sd xmm0, [ebx+0x1c]
	movsd [esp+0x10], xmm0
	cvtss2sd xmm0, [ebx+0x18]
	movsd [esp+0x8], xmm0
	mov dword [esp+0x4], _cstring_killing_trigger_
	mov dword [esp], 0x1
	call _Z14Com_PrintErroriPKcz
	mov [esp], ebx
	call _Z12G_FreeEntityP9gentity_s
	add esp, 0x34
	pop ebx
	pop ebp
	ret
_Z17SP_trigger_damageP9gentity_s_10:
	lea eax, [ebp-0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_null
	mov dword [esp], _cstring_wait
	call _Z12G_SpawnFloatPKcS0_Pf
	test eax, eax
	jz _Z17SP_trigger_damageP9gentity_s_50
	pxor xmm0, xmm0
	ucomiss xmm0, [ebp-0xc]
	jb _Z17SP_trigger_damageP9gentity_s_50
	or dword [ebx+0x17c], 0x200
	jmp _Z17SP_trigger_damageP9gentity_s_50


;SP_trigger_lookat(gentity_s*)
_Z17SP_trigger_lookatP9gentity_s:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov ebx, [ebp+0x8]
	mov [esp], ebx
	call _Z16SV_SetBrushModelP9gentity_s
	test al, al
	jz _Z17SP_trigger_lookatP9gentity_s_10
	mov dword [ebx+0x120], 0x20000000
	mov byte [ebx+0xf6], 0x1
	mov edx, [ebx+0x8]
	mov eax, edx
	or eax, 0x1
	mov [ebx+0x8], eax
	cmp word [ebx+0x168], 0x0
	jnz _Z17SP_trigger_lookatP9gentity_s_20
	or edx, 0x21
	mov [ebx+0x8], edx
_Z17SP_trigger_lookatP9gentity_s_20:
	add esp, 0x24
	pop ebx
	pop ebp
	ret
_Z17SP_trigger_lookatP9gentity_s_10:
	cvtss2sd xmm0, [ebx+0x20]
	movsd [esp+0x18], xmm0
	cvtss2sd xmm0, [ebx+0x1c]
	movsd [esp+0x10], xmm0
	cvtss2sd xmm0, [ebx+0x18]
	movsd [esp+0x8], xmm0
	mov dword [esp+0x4], _cstring_killing_trigger_1
	mov dword [esp], 0x1
	call _Z14Com_PrintErroriPKcz
	mov [ebp+0x8], ebx
	add esp, 0x24
	pop ebx
	pop ebp
	jmp _Z12G_FreeEntityP9gentity_s


;SP_trigger_radius(gentity_s*)
_Z17SP_trigger_radiusP9gentity_s:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x44
	mov ebx, [ebp+0x8]
	mov eax, level
	cmp byte [eax+0xb34], 0x0
	jz _Z17SP_trigger_radiusP9gentity_s_10
	lea eax, [ebp-0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_null
	mov dword [esp], _cstring_radius
	call _Z12G_SpawnFloatPKcS0_Pf
	test eax, eax
	jz _Z17SP_trigger_radiusP9gentity_s_20
	lea eax, [ebp-0x10]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_null
	mov dword [esp], _cstring_height
	call _Z12G_SpawnFloatPKcS0_Pf
	test eax, eax
	jz _Z17SP_trigger_radiusP9gentity_s_30
_Z17SP_trigger_radiusP9gentity_s_100:
	mov byte [ebx+0x16e], 0x1
	mov edx, [ebp-0xc]
	mov [ebp-0x1c], edx
	movss xmm0, dword [ebp-0x1c]
	xorps xmm0, [_data16_80000000]
	movss [ebp-0x1c], xmm0
	mov eax, [ebp-0x1c]
	mov [ebx+0x108], eax
	mov [ebx+0x10c], eax
	mov dword [ebx+0x110], 0x0
	mov [ebx+0x114], edx
	mov [ebx+0x118], edx
	mov eax, [ebp-0x10]
	mov [ebx+0x11c], eax
	mov byte [ebx+0xf6], 0x21
	mov eax, level
	cmp byte [eax+0xb34], 0x0
	jnz _Z17SP_trigger_radiusP9gentity_s_40
_Z17SP_trigger_radiusP9gentity_s_110:
	mov eax, [ebx+0x17c]
_Z17SP_trigger_radiusP9gentity_s_120:
	mov dword [ebx+0x120], 0x0
	test al, 0x8
	jnz _Z17SP_trigger_radiusP9gentity_s_50
	mov dword [ebx+0x120], 0x40000000
_Z17SP_trigger_radiusP9gentity_s_50:
	test al, 0x1
	jz _Z17SP_trigger_radiusP9gentity_s_60
	or dword [ebx+0x120], 0x40000
_Z17SP_trigger_radiusP9gentity_s_60:
	test al, 0x2
	jz _Z17SP_trigger_radiusP9gentity_s_70
	or dword [ebx+0x120], 0x80000
_Z17SP_trigger_radiusP9gentity_s_70:
	test al, 0x4
	jz _Z17SP_trigger_radiusP9gentity_s_80
	or dword [ebx+0x120], 0x100000
_Z17SP_trigger_radiusP9gentity_s_80:
	mov [esp], ebx
	call _Z13SV_LinkEntityP9gentity_s
	add esp, 0x44
	pop ebx
	pop ebp
	ret
_Z17SP_trigger_radiusP9gentity_s_10:
	call _Z15Scr_GetNumParamv
	cmp eax, 0x4
	jbe _Z17SP_trigger_radiusP9gentity_s_90
	mov dword [esp], 0x3
	call _Z12Scr_GetFloatj
	fstp dword [ebp-0xc]
	mov dword [esp], 0x4
	call _Z12Scr_GetFloatj
	fstp dword [ebp-0x10]
	jmp _Z17SP_trigger_radiusP9gentity_s_100
_Z17SP_trigger_radiusP9gentity_s_40:
	lea eax, [ebp-0x14]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_null
	mov dword [esp], _cstring_wait
	call _Z12G_SpawnFloatPKcS0_Pf
	test eax, eax
	jz _Z17SP_trigger_radiusP9gentity_s_110
	pxor xmm0, xmm0
	ucomiss xmm0, [ebp-0x14]
	jb _Z17SP_trigger_radiusP9gentity_s_110
	mov eax, [ebx+0x17c]
	or eax, 0x10
	mov [ebx+0x17c], eax
	jmp _Z17SP_trigger_radiusP9gentity_s_120
_Z17SP_trigger_radiusP9gentity_s_20:
	cvtss2sd xmm0, [ebx+0x144]
	movsd [esp+0x14], xmm0
	cvtss2sd xmm0, [ebx+0x140]
	movsd [esp+0xc], xmm0
	cvtss2sd xmm0, [ebx+0x13c]
	movsd [esp+0x4], xmm0
	mov dword [esp], _cstring_radius_not_speci
	call _Z2vaPKcz
	mov [esp+0x4], eax
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	lea eax, [ebp-0x10]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_null
	mov dword [esp], _cstring_height
	call _Z12G_SpawnFloatPKcS0_Pf
	test eax, eax
	jnz _Z17SP_trigger_radiusP9gentity_s_100
_Z17SP_trigger_radiusP9gentity_s_30:
	cvtss2sd xmm0, [ebx+0x144]
	movsd [esp+0x14], xmm0
	cvtss2sd xmm0, [ebx+0x140]
	movsd [esp+0xc], xmm0
	cvtss2sd xmm0, [ebx+0x13c]
	movsd [esp+0x4], xmm0
	mov dword [esp], _cstring_height_not_speci
	call _Z2vaPKcz
	mov [esp+0x4], eax
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z17SP_trigger_radiusP9gentity_s_100
_Z17SP_trigger_radiusP9gentity_s_90:
	mov dword [esp], _cstring_usage_spawn_trig
	call _Z9Scr_ErrorPKc
	mov dword [esp], 0x3
	call _Z12Scr_GetFloatj
	fstp dword [ebp-0xc]
	mov dword [esp], 0x4
	call _Z12Scr_GetFloatj
	fstp dword [ebp-0x10]
	jmp _Z17SP_trigger_radiusP9gentity_s_100


;Die_trigger_damage(gentity_s*, gentity_s*, gentity_s*, int, int, int, float const*, hitLocation_t, int)
_Z18Die_trigger_damageP9gentity_sS0_S0_iiiPKf13hitLocation_ti:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov eax, [ebp+0x18]
	mov [esp+0xc], eax
	mov eax, [ebp+0x14]
	mov [esp+0x8], eax
	mov eax, [ebp+0x10]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z23Activate_trigger_damageP9gentity_sS0_ii
	mov ecx, [ebx+0x1b8]
	test ecx, ecx
	jnz _Z18Die_trigger_damageP9gentity_sS0_S0_iiiPKf13hitLocation_ti_10
	mov dword [ebx+0x1a0], 0x7d00
_Z18Die_trigger_damageP9gentity_sS0_S0_iiiPKf13hitLocation_ti_10:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;Use_trigger_damage(gentity_s*, gentity_s*, gentity_s*)
_Z18Use_trigger_damageP9gentity_sS0_S0_:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov dword [esp+0xc], 0xffffffff
	mov edx, [eax+0x1b8]
	add edx, 0x1
	mov [esp+0x8], edx
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	mov [esp], eax
	call _Z23Activate_trigger_damageP9gentity_sS0_ii
	leave
	ret
	nop


;Pain_trigger_damage(gentity_s*, gentity_s*, int, float const*, int, float const*, hitLocation_t, int)
_Z19Pain_trigger_damageP9gentity_sS0_iPKfiS2_13hitLocation_ti:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov eax, [ebp+0x18]
	mov [esp+0xc], eax
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z23Activate_trigger_damageP9gentity_sS0_ii
	mov eax, [ebx+0x1b8]
	test eax, eax
	jnz _Z19Pain_trigger_damageP9gentity_sS0_iPKfiS2_13hitLocation_ti_10
	mov dword [ebx+0x1a0], 0x7d00
_Z19Pain_trigger_damageP9gentity_sS0_iPKfiS2_13hitLocation_ti_10:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;SP_trigger_multiple(gentity_s*)
_Z19SP_trigger_multipleP9gentity_s:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x34
	mov ebx, [ebp+0x8]
	mov byte [ebx+0x16e], 0x1
	mov eax, level
	cmp byte [eax+0xb34], 0x0
	jnz _Z19SP_trigger_multipleP9gentity_s_10
_Z19SP_trigger_multipleP9gentity_s_110:
	mov [esp], ebx
	call _Z16SV_SetBrushModelP9gentity_s
	test al, al
	jz _Z19SP_trigger_multipleP9gentity_s_20
	mov dword [ebx+0x120], 0x405c0008
	mov byte [ebx+0xf6], 0x1
	mov edx, [ebx+0x8]
	mov eax, edx
	or eax, 0x1
	mov [ebx+0x8], eax
	cmp word [ebx+0x168], 0x0
	jnz _Z19SP_trigger_multipleP9gentity_s_30
	or edx, 0x21
	mov [ebx+0x8], edx
_Z19SP_trigger_multipleP9gentity_s_30:
	mov dword [ebx+0x120], 0x0
	mov eax, [ebx+0x17c]
	test al, 0x8
	jz _Z19SP_trigger_multipleP9gentity_s_40
	test al, 0x1
	jnz _Z19SP_trigger_multipleP9gentity_s_50
_Z19SP_trigger_multipleP9gentity_s_100:
	test al, 0x2
	jnz _Z19SP_trigger_multipleP9gentity_s_60
_Z19SP_trigger_multipleP9gentity_s_90:
	test al, 0x4
	jnz _Z19SP_trigger_multipleP9gentity_s_70
_Z19SP_trigger_multipleP9gentity_s_80:
	mov [esp], ebx
	call _Z13SV_LinkEntityP9gentity_s
	add esp, 0x34
	pop ebx
	pop ebp
	ret
_Z19SP_trigger_multipleP9gentity_s_70:
	or dword [ebx+0x120], 0x100000
	jmp _Z19SP_trigger_multipleP9gentity_s_80
_Z19SP_trigger_multipleP9gentity_s_60:
	or dword [ebx+0x120], 0x80000
	test al, 0x4
	jz _Z19SP_trigger_multipleP9gentity_s_80
	jmp _Z19SP_trigger_multipleP9gentity_s_70
_Z19SP_trigger_multipleP9gentity_s_50:
	or dword [ebx+0x120], 0x40000
	test al, 0x2
	jz _Z19SP_trigger_multipleP9gentity_s_90
	jmp _Z19SP_trigger_multipleP9gentity_s_60
_Z19SP_trigger_multipleP9gentity_s_40:
	mov dword [ebx+0x120], 0x40000000
	test al, 0x1
	jz _Z19SP_trigger_multipleP9gentity_s_100
	jmp _Z19SP_trigger_multipleP9gentity_s_50
_Z19SP_trigger_multipleP9gentity_s_20:
	cvtss2sd xmm0, [ebx+0x20]
	movsd [esp+0x18], xmm0
	cvtss2sd xmm0, [ebx+0x1c]
	movsd [esp+0x10], xmm0
	cvtss2sd xmm0, [ebx+0x18]
	movsd [esp+0x8], xmm0
	mov dword [esp+0x4], _cstring_killing_trigger_
	mov dword [esp], 0x1
	call _Z14Com_PrintErroriPKcz
	mov [esp], ebx
	call _Z12G_FreeEntityP9gentity_s
	add esp, 0x34
	pop ebx
	pop ebp
	ret
_Z19SP_trigger_multipleP9gentity_s_10:
	lea eax, [ebp-0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_null
	mov dword [esp], _cstring_wait
	call _Z12G_SpawnFloatPKcS0_Pf
	test eax, eax
	jz _Z19SP_trigger_multipleP9gentity_s_110
	pxor xmm0, xmm0
	ucomiss xmm0, [ebp-0xc]
	jb _Z19SP_trigger_multipleP9gentity_s_110
	or dword [ebx+0x17c], 0x10
	jmp _Z19SP_trigger_multipleP9gentity_s_110
	nop


;Activate_trigger_damage(gentity_s*, gentity_s*, int, int)
_Z23Activate_trigger_damageP9gentity_sS0_ii:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov ebx, [ebp+0x8]
	mov edi, [ebp+0xc]
	mov edx, [ebp+0x10]
	mov ecx, [ebp+0x14]
	mov eax, [ebx+0x1b4]
	test eax, eax
	jle _Z23Activate_trigger_damageP9gentity_sS0_ii_10
	cmp eax, edx
	jg _Z23Activate_trigger_damageP9gentity_sS0_ii_20
_Z23Activate_trigger_damageP9gentity_sS0_ii_10:
	mov edx, [ebx+0x17c]
	test dl, 0x1
	jnz _Z23Activate_trigger_damageP9gentity_sS0_ii_30
	test dl, 0x2
	jnz _Z23Activate_trigger_damageP9gentity_sS0_ii_40
_Z23Activate_trigger_damageP9gentity_sS0_ii_160:
	test dl, 0x4
	jnz _Z23Activate_trigger_damageP9gentity_sS0_ii_50
_Z23Activate_trigger_damageP9gentity_sS0_ii_170:
	test dl, 0x8
	jz _Z23Activate_trigger_damageP9gentity_sS0_ii_60
	cmp ecx, 0xe
	jbe _Z23Activate_trigger_damageP9gentity_sS0_ii_70
_Z23Activate_trigger_damageP9gentity_sS0_ii_60:
	test dl, 0x10
	jz _Z23Activate_trigger_damageP9gentity_sS0_ii_80
	cmp ecx, 0x4
	jz _Z23Activate_trigger_damageP9gentity_sS0_ii_20
	cmp ecx, 0x6
	jz _Z23Activate_trigger_damageP9gentity_sS0_ii_20
_Z23Activate_trigger_damageP9gentity_sS0_ii_80:
	test dl, 0x20
	jnz _Z23Activate_trigger_damageP9gentity_sS0_ii_90
_Z23Activate_trigger_damageP9gentity_sS0_ii_180:
	test dh, 0x1
	jnz _Z23Activate_trigger_damageP9gentity_sS0_ii_100
_Z23Activate_trigger_damageP9gentity_sS0_ii_150:
	mov esi, [ebx+0x1b8]
	test esi, esi
	jz _Z23Activate_trigger_damageP9gentity_sS0_ii_110
	mov eax, 0x7d00
	sub eax, [ebx+0x1a0]
	cmp esi, eax
	jg _Z23Activate_trigger_damageP9gentity_sS0_ii_20
_Z23Activate_trigger_damageP9gentity_sS0_ii_110:
	add ecx, 0x1
	jz _Z23Activate_trigger_damageP9gentity_sS0_ii_120
	mov dword [esp], 0x1
	call _Z18Scr_IsSystemActiveh
	test eax, eax
	jz _Z23Activate_trigger_damageP9gentity_sS0_ii_130
	mov esi, level
	mov eax, [esi+0x2dd4]
	cmp eax, 0x100
	jz _Z23Activate_trigger_damageP9gentity_sS0_ii_140
	lea edx, [eax+eax*2]
	lea edx, [esi+edx*4+0x15d0]
	lea ecx, [edx+0x4]
	add eax, 0x1
	mov [esi+0x2dd4], eax
	mov eax, [ebx]
	mov [edx+0x4], ax
	mov eax, [edi]
	mov [ecx+0x2], ax
	mov eax, [ebx+0x26c]
	mov [ecx+0x4], eax
	mov eax, [edi+0x26c]
	mov [ecx+0x8], eax
	mov edx, [ebx+0x17c]
_Z23Activate_trigger_damageP9gentity_sS0_ii_120:
	mov dword [ebx+0x1a0], 0x7d00
	and dh, 0x2
	jz _Z23Activate_trigger_damageP9gentity_sS0_ii_20
	mov [ebp+0x8], ebx
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z17G_FreeEntityDelayP9gentity_s
_Z23Activate_trigger_damageP9gentity_sS0_ii_100:
	cmp ecx, 0xd
	ja _Z23Activate_trigger_damageP9gentity_sS0_ii_150
	mov eax, 0x1
	shl eax, cl
	test eax, 0x3e01
	jz _Z23Activate_trigger_damageP9gentity_sS0_ii_150
_Z23Activate_trigger_damageP9gentity_sS0_ii_20:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z23Activate_trigger_damageP9gentity_sS0_ii_30:
	cmp ecx, 0x1
	jz _Z23Activate_trigger_damageP9gentity_sS0_ii_20
	test dl, 0x2
	jz _Z23Activate_trigger_damageP9gentity_sS0_ii_160
_Z23Activate_trigger_damageP9gentity_sS0_ii_40:
	cmp ecx, 0x2
	jz _Z23Activate_trigger_damageP9gentity_sS0_ii_20
	test dl, 0x4
	jz _Z23Activate_trigger_damageP9gentity_sS0_ii_170
_Z23Activate_trigger_damageP9gentity_sS0_ii_50:
	lea eax, [ecx-0x3]
	cmp eax, 0x3
	ja _Z23Activate_trigger_damageP9gentity_sS0_ii_170
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z23Activate_trigger_damageP9gentity_sS0_ii_90:
	cmp ecx, 0x7
	jnz _Z23Activate_trigger_damageP9gentity_sS0_ii_180
	jmp _Z23Activate_trigger_damageP9gentity_sS0_ii_20
_Z23Activate_trigger_damageP9gentity_sS0_ii_70:
	mov eax, 0x1
	shl eax, cl
	test eax, 0x4078
	jnz _Z23Activate_trigger_damageP9gentity_sS0_ii_20
	jmp _Z23Activate_trigger_damageP9gentity_sS0_ii_60
_Z23Activate_trigger_damageP9gentity_sS0_ii_130:
	mov edx, [ebx+0x17c]
	jmp _Z23Activate_trigger_damageP9gentity_sS0_ii_120
_Z23Activate_trigger_damageP9gentity_sS0_ii_140:
	mov [esp], edi
	call _Z13Scr_AddEntityP9gentity_s
	mov dword [esp+0x8], 0x1
	mov eax, scr_const
	movzx eax, word [eax+0xbc]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z10Scr_NotifyP9gentity_stj
	mov edx, [ebx+0x17c]
	jmp _Z23Activate_trigger_damageP9gentity_sS0_ii_120
	nop


;G_CheckHitTriggerDamage(gentity_s*, float const*, float const*, int, int)
_Z23G_CheckHitTriggerDamageP9gentity_sPKfS2_ii:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x105c
	mov eax, [ebp+0xc]
	mov ecx, [eax]
	mov [ebp-0x24], ecx
	mov edx, [eax+0x4]
	mov [ebp-0x20], edx
	mov eax, [eax+0x8]
	mov [ebp-0x1c], eax
	mov [ebp-0x30], ecx
	mov [ebp-0x2c], edx
	mov [ebp-0x28], eax
	lea esi, [ebp-0x30]
	mov [esp+0x8], esi
	lea ebx, [ebp-0x24]
	mov [esp+0x4], ebx
	mov eax, [ebp+0x10]
	mov [esp], eax
	call _Z16AddPointToBoundsPKfPfS1_
	mov edx, [ebp+0x10]
	movss xmm3, dword [edx]
	mov eax, [ebp+0xc]
	subss xmm3, [eax]
	movss [ebp-0x3c], xmm3
	movss xmm1, dword [edx+0x4]
	subss xmm1, [eax+0x4]
	movss [ebp-0x38], xmm1
	movss xmm0, dword [edx+0x8]
	subss xmm0, [eax+0x8]
	movss [ebp-0x34], xmm0
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
	jb _Z23G_CheckHitTriggerDamageP9gentity_sPKfS2_ii_10
	movss xmm1, dword [_float_1_00000000]
_Z23G_CheckHitTriggerDamageP9gentity_sPKfS2_ii_50:
	mulss xmm3, xmm1
	movss [ebp-0x3c], xmm3
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x38]
	movss [ebp-0x38], xmm0
	mulss xmm1, [ebp-0x34]
	movss [ebp-0x34], xmm1
	mov dword [esp+0x10], 0x400000
	mov dword [esp+0xc], 0x400
	lea eax, [ebp-0x103c]
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov [esp], ebx
	call _Z15CM_AreaEntitiesPKfS0_Piii
	mov edi, eax
	test eax, eax
	jle _Z23G_CheckHitTriggerDamageP9gentity_sPKfS2_ii_20
	xor esi, esi
	jmp _Z23G_CheckHitTriggerDamageP9gentity_sPKfS2_ii_30
_Z23G_CheckHitTriggerDamageP9gentity_sPKfS2_ii_40:
	add esi, 0x1
	cmp edi, esi
	jz _Z23G_CheckHitTriggerDamageP9gentity_sPKfS2_ii_20
_Z23G_CheckHitTriggerDamageP9gentity_sPKfS2_ii_30:
	mov edx, [ebp+esi*4-0x103c]
	lea eax, [edx+edx*8]
	lea eax, [edx+eax*2]
	mov ecx, eax
	shl ecx, 0x5
	add eax, ecx
	lea ebx, [eax+edx]
	add ebx, g_entities
	movzx eax, word [ebx+0x170]
	mov edx, scr_const
	cmp ax, [edx+0xc2]
	jnz _Z23G_CheckHitTriggerDamageP9gentity_sPKfS2_ii_40
	mov dword [esp+0x14], 0xffffffff
	mov eax, [ebx]
	mov [esp+0x10], eax
	mov eax, [ebp+0x10]
	mov [esp+0xc], eax
	mov edx, vec3_origin
	mov [esp+0x8], edx
	mov [esp+0x4], edx
	mov eax, [ebp+0xc]
	mov [esp], eax
	call _Z21SV_SightTraceToEntityPKfS0_S0_S0_ii
	test eax, eax
	jz _Z23G_CheckHitTriggerDamageP9gentity_sPKfS2_ii_40
	mov eax, modNames
	mov edx, [ebp+0x18]
	mov eax, [eax+edx*4]
	movzx eax, word [eax]
	mov [esp], eax
	call _Z18Scr_AddConstStringj
	mov eax, vec3_origin
	mov [esp], eax
	call _Z13Scr_AddVectorPKf
	lea eax, [ebp-0x3c]
	mov [esp], eax
	call _Z13Scr_AddVectorPKf
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z13Scr_AddEntityP9gentity_s
	mov eax, [ebp+0x14]
	mov [esp], eax
	call _Z10Scr_AddInti
	mov dword [esp+0x8], 0x5
	mov edx, scr_const
	movzx eax, word [edx+0x1c]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z10Scr_NotifyP9gentity_stj
	mov eax, [ebp+0x18]
	mov [esp+0xc], eax
	mov edx, [ebp+0x14]
	mov [esp+0x8], edx
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z23Activate_trigger_damageP9gentity_sS0_ii
	mov edx, [ebx+0x1b8]
	test edx, edx
	jnz _Z23G_CheckHitTriggerDamageP9gentity_sPKfS2_ii_40
	mov dword [ebx+0x1a0], 0x7d00
	add esi, 0x1
	cmp edi, esi
	jnz _Z23G_CheckHitTriggerDamageP9gentity_sPKfS2_ii_30
_Z23G_CheckHitTriggerDamageP9gentity_sPKfS2_ii_20:
	add esp, 0x105c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z23G_CheckHitTriggerDamageP9gentity_sPKfS2_ii_10:
	movss xmm1, dword [_float_1_00000000]
	divss xmm1, xmm2
	jmp _Z23G_CheckHitTriggerDamageP9gentity_sPKfS2_ii_50
	nop


;G_GrenadeTouchTriggerDamage(gentity_s*, float*, float*, int, int)
_Z27G_GrenadeTouchTriggerDamageP9gentity_sPfS1_ii:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x105c
	mov eax, [ebp+0xc]
	mov ecx, [eax]
	mov [ebp-0x24], ecx
	mov edx, [eax+0x4]
	mov [ebp-0x20], edx
	mov eax, [eax+0x8]
	mov [ebp-0x1c], eax
	mov [ebp-0x30], ecx
	mov [ebp-0x2c], edx
	mov [ebp-0x28], eax
	lea esi, [ebp-0x30]
	mov [esp+0x8], esi
	lea ebx, [ebp-0x24]
	mov [esp+0x4], ebx
	mov eax, [ebp+0x10]
	mov [esp], eax
	call _Z16AddPointToBoundsPKfPfS1_
	mov edx, [ebp+0x10]
	movss xmm3, dword [edx]
	mov eax, [ebp+0xc]
	subss xmm3, [eax]
	movss [ebp-0x3c], xmm3
	movss xmm1, dword [edx+0x4]
	subss xmm1, [eax+0x4]
	movss [ebp-0x38], xmm1
	movss xmm0, dword [edx+0x8]
	subss xmm0, [eax+0x8]
	movss [ebp-0x34], xmm0
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
	jb _Z27G_GrenadeTouchTriggerDamageP9gentity_sPfS1_ii_10
	movss xmm1, dword [_float_1_00000000]
_Z27G_GrenadeTouchTriggerDamageP9gentity_sPfS1_ii_50:
	mulss xmm3, xmm1
	movss [ebp-0x3c], xmm3
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x38]
	movss [ebp-0x38], xmm0
	mulss xmm1, [ebp-0x34]
	movss [ebp-0x34], xmm1
	mov dword [esp+0x10], 0x400000
	mov dword [esp+0xc], 0x400
	lea eax, [ebp-0x103c]
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov [esp], ebx
	call _Z15CM_AreaEntitiesPKfS0_Piii
	mov edi, eax
	test eax, eax
	jle _Z27G_GrenadeTouchTriggerDamageP9gentity_sPfS1_ii_20
	xor esi, esi
	jmp _Z27G_GrenadeTouchTriggerDamageP9gentity_sPfS1_ii_30
_Z27G_GrenadeTouchTriggerDamageP9gentity_sPfS1_ii_40:
	add esi, 0x1
	cmp edi, esi
	jz _Z27G_GrenadeTouchTriggerDamageP9gentity_sPfS1_ii_20
_Z27G_GrenadeTouchTriggerDamageP9gentity_sPfS1_ii_30:
	mov edx, [ebp+esi*4-0x103c]
	lea eax, [edx+edx*8]
	lea eax, [edx+eax*2]
	mov ecx, eax
	shl ecx, 0x5
	add eax, ecx
	lea ebx, [eax+edx]
	add ebx, g_entities
	movzx eax, word [ebx+0x170]
	mov edx, scr_const
	cmp ax, [edx+0xc2]
	jnz _Z27G_GrenadeTouchTriggerDamageP9gentity_sPfS1_ii_40
	test byte [ebx+0x181], 0x40
	jz _Z27G_GrenadeTouchTriggerDamageP9gentity_sPfS1_ii_40
	mov dword [esp+0x14], 0xffffffff
	mov eax, [ebx]
	mov [esp+0x10], eax
	mov eax, [ebp+0x10]
	mov [esp+0xc], eax
	mov edx, vec3_origin
	mov [esp+0x8], edx
	mov [esp+0x4], edx
	mov eax, [ebp+0xc]
	mov [esp], eax
	call _Z21SV_SightTraceToEntityPKfS0_S0_S0_ii
	test eax, eax
	jz _Z27G_GrenadeTouchTriggerDamageP9gentity_sPfS1_ii_40
	mov eax, modNames
	mov edx, [ebp+0x18]
	mov eax, [eax+edx*4]
	movzx eax, word [eax]
	mov [esp], eax
	call _Z18Scr_AddConstStringj
	mov eax, vec3_origin
	mov [esp], eax
	call _Z13Scr_AddVectorPKf
	lea eax, [ebp-0x3c]
	mov [esp], eax
	call _Z13Scr_AddVectorPKf
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z13Scr_AddEntityP9gentity_s
	mov eax, [ebp+0x14]
	mov [esp], eax
	call _Z10Scr_AddInti
	mov dword [esp+0x8], 0x5
	mov edx, scr_const
	movzx eax, word [edx+0x1c]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z10Scr_NotifyP9gentity_stj
	mov eax, [ebp+0x18]
	mov [esp+0xc], eax
	mov edx, [ebp+0x14]
	mov [esp+0x8], edx
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z23Activate_trigger_damageP9gentity_sS0_ii
	mov eax, [ebx+0x1b8]
	test eax, eax
	jnz _Z27G_GrenadeTouchTriggerDamageP9gentity_sPfS1_ii_40
	mov dword [ebx+0x1a0], 0x7d00
	jmp _Z27G_GrenadeTouchTriggerDamageP9gentity_sPfS1_ii_40
_Z27G_GrenadeTouchTriggerDamageP9gentity_sPfS1_ii_20:
	add esp, 0x105c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z27G_GrenadeTouchTriggerDamageP9gentity_sPfS1_ii_10:
	movss xmm1, dword [_float_1_00000000]
	divss xmm1, xmm2
	jmp _Z27G_GrenadeTouchTriggerDamageP9gentity_sPfS1_ii_50


;hurt_use(gentity_s*, gentity_s*, gentity_s*)
_Z8hurt_useP9gentity_sS0_S0_:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	cmp byte [edx+0x16e], 0x3
	setnz al
	add al, 0x2
	mov [edx+0x16e], al
	pop ebp
	ret
	add [eax], al


;Initialized global or static variables of g_trigger_mp:
SECTION .data


;Initialized constant data of g_trigger_mp:
SECTION .rdata


;Zero initialized global or static variables of g_trigger_mp:
SECTION .bss


;All cstrings:
SECTION .rdata
_cstring_null:		db 0
_cstring_radius:		db "radius",0
_cstring_radius_not_speci:		db "radius not specified for trigger_radius at (%g %g %g)",0
_cstring_wait:		db "wait",0
_cstring_world_hurt_me:		db "world_hurt_me",0
_cstring_sound:		db "sound",0
_cstring_killing_trigger_:		db "Killing trigger at (%f %f %f) because the brush model is invalid.",0ah,0
_cstring_0:		db "0",0
_cstring_accumulate:		db "accumulate",0
_cstring_threshold:		db "threshold",0
_cstring_killing_trigger_1:		db "Killing trigger_lookat at (%f %f %f) because the brush model is invalid.",0ah,0
_cstring_height:		db "height",0
_cstring_height_not_speci:		db "height not specified for trigger_radius at (%g %g %g)",0
_cstring_usage_spawn_trig:		db "USAGE: spawn( ",22h,"trigger_radius",22h,", <origin>, <spawnflags>, <radius>, <height> )",0



;All constant floats and doubles:
SECTION .rdata
_float_64_00000000:		dd 0x42800000	; 64
_data16_80000000:		dd 0x80000000, 0x0, 0x0, 0x0	; OWORD
_float_0_00000000:		dd 0x0	; 0
_float_1_00000000:		dd 0x3f800000	; 1

