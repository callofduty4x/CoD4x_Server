;Imports of g_trigger_mp:
	extern level
	extern Scr_IsSystemActive
	extern G_Damage
	extern Scr_AddEntity
	extern scr_const
	extern Scr_Notify
	extern G_FreeEntityDelay
	extern G_SpawnFloat
	extern SV_LinkEntity
	extern va
	extern Com_Error
	extern SV_SetBrushModel
	extern G_LevelSpawnString
	extern Com_PrintError
	extern G_FreeEntity
	extern G_SpawnInt
	extern Scr_GetNumParam
	extern Scr_GetFloat
	extern Scr_Error
	extern AddPointToBounds
	extern CM_AreaEntities
	extern g_entities
	extern vec3_origin
	extern SV_SightTraceToEntity
	extern modNames
	extern Scr_AddConstString
	extern Scr_AddVector
	extern Scr_AddInt

;Exports of g_trigger_mp:
	global hurt_touch
	global Touch_Multi
	global SP_trigger_disk
	global SP_trigger_hurt
	global SP_trigger_once
	global SP_trigger_damage
	global SP_trigger_lookat
	global SP_trigger_radius
	global Die_trigger_damage
	global Use_trigger_damage
	global Pain_trigger_damage
	global SP_trigger_multiple
	global Activate_trigger_damage
	global G_CheckHitTriggerDamage
	global G_GrenadeTouchTriggerDamage
	global hurt_use


SECTION .text


;hurt_touch(gentity_s*, gentity_s*, int)
hurt_touch:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov esi, [ebp+0x8]
	mov edi, [ebp+0xc]
	cmp byte [edi+0x16b], 0x0
	jz hurt_touch_10
	mov ebx, level
	mov eax, [esi+0x1bc]
	cmp eax, [ebx+0x1ec]
	jle hurt_touch_20
hurt_touch_10:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
hurt_touch_20:
	mov dword [esp], 0x1
	call Scr_IsSystemActive
	test eax, eax
	jz hurt_touch_30
	mov eax, [ebx+0x2dd4]
	cmp eax, 0x100
	jz hurt_touch_40
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
hurt_touch_30:
	test byte [esi+0x17c], 0x10
	jz hurt_touch_50
	mov eax, level
	mov eax, [eax+0x1ec]
	add eax, 0x3e8
	mov [esi+0x1bc], eax
hurt_touch_60:
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
	call G_Damage
	test byte [esi+0x17c], 0x20
	jz hurt_touch_10
	mov byte [esi+0x16e], 0x2
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
hurt_touch_50:
	mov eax, level
	mov eax, [eax+0x1ec]
	add eax, 0x32
	mov [esi+0x1bc], eax
	jmp hurt_touch_60
hurt_touch_40:
	mov [esp], edi
	call Scr_AddEntity
	mov dword [esp+0x8], 0x1
	mov eax, scr_const
	movzx eax, word [eax+0xbc]
	mov [esp+0x4], eax
	mov [esp], esi
	call Scr_Notify
	jmp hurt_touch_30


;Touch_Multi(gentity_s*, gentity_s*, int)
Touch_Multi:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov esi, [ebp+0x8]
	mov edi, [ebp+0xc]
	mov dword [esp], 0x1
	call Scr_IsSystemActive
	test eax, eax
	jz Touch_Multi_10
	mov ebx, level
	mov eax, [ebx+0x2dd4]
	cmp eax, 0x100
	jz Touch_Multi_20
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
Touch_Multi_10:
	test byte [esi+0x17c], 0x10
	jnz Touch_Multi_30
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Touch_Multi_30:
	mov [ebp+0x8], esi
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp G_FreeEntityDelay
Touch_Multi_20:
	mov [esp], edi
	call Scr_AddEntity
	mov dword [esp+0x8], 0x1
	mov eax, scr_const
	movzx eax, word [eax+0xbc]
	mov [esp+0x4], eax
	mov [esp], esi
	call Scr_Notify
	jmp Touch_Multi_10


;SP_trigger_disk(gentity_s*)
SP_trigger_disk:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x34
	mov ebx, [ebp+0x8]
	lea eax, [ebp-0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_null
	mov dword [esp], _cstring_radius
	call G_SpawnFloat
	test eax, eax
	jz SP_trigger_disk_10
SP_trigger_disk_70:
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
	jnz SP_trigger_disk_20
SP_trigger_disk_80:
	mov eax, [ebx+0x17c]
SP_trigger_disk_90:
	mov dword [ebx+0x120], 0x0
	test al, 0x8
	jnz SP_trigger_disk_30
	mov dword [ebx+0x120], 0x40000000
SP_trigger_disk_30:
	test al, 0x1
	jz SP_trigger_disk_40
	or dword [ebx+0x120], 0x40000
SP_trigger_disk_40:
	test al, 0x2
	jz SP_trigger_disk_50
	or dword [ebx+0x120], 0x80000
SP_trigger_disk_50:
	test al, 0x4
	jz SP_trigger_disk_60
	or dword [ebx+0x120], 0x100000
SP_trigger_disk_60:
	mov [esp], ebx
	call SV_LinkEntity
	add esp, 0x34
	pop ebx
	pop ebp
	ret
SP_trigger_disk_10:
	cvtss2sd xmm0, [ebx+0x144]
	movsd [esp+0x14], xmm0
	cvtss2sd xmm0, [ebx+0x140]
	movsd [esp+0xc], xmm0
	cvtss2sd xmm0, [ebx+0x13c]
	movsd [esp+0x4], xmm0
	mov dword [esp], _cstring_radius_not_speci
	call va
	mov [esp+0x4], eax
	mov dword [esp], 0x2
	call Com_Error
	jmp SP_trigger_disk_70
SP_trigger_disk_20:
	lea eax, [ebp-0x10]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_null
	mov dword [esp], _cstring_wait
	call G_SpawnFloat
	test eax, eax
	jz SP_trigger_disk_80
	pxor xmm0, xmm0
	ucomiss xmm0, [ebp-0x10]
	jb SP_trigger_disk_80
	mov eax, [ebx+0x17c]
	or eax, 0x10
	mov [ebx+0x17c], eax
	jmp SP_trigger_disk_90
	nop


;SP_trigger_hurt(gentity_s*)
SP_trigger_hurt:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x34
	mov ebx, [ebp+0x8]
	mov [esp], ebx
	call SV_SetBrushModel
	test al, al
	jz SP_trigger_hurt_10
	mov dword [ebx+0x120], 0x405c0008
	mov byte [ebx+0xf6], 0x1
	mov edx, [ebx+0x8]
	mov eax, edx
	or eax, 0x1
	mov [ebx+0x8], eax
	cmp word [ebx+0x168], 0x0
	jnz SP_trigger_hurt_20
	or edx, 0x21
	mov [ebx+0x8], edx
SP_trigger_hurt_20:
	lea eax, [ebp-0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_world_hurt_me
	mov dword [esp], _cstring_sound
	call G_LevelSpawnString
	mov eax, [ebx+0x1a8]
	test eax, eax
	jz SP_trigger_hurt_30
SP_trigger_hurt_40:
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
SP_trigger_hurt_30:
	mov dword [ebx+0x1a8], 0x5
	jmp SP_trigger_hurt_40
SP_trigger_hurt_10:
	cvtss2sd xmm0, [ebx+0x20]
	movsd [esp+0x18], xmm0
	cvtss2sd xmm0, [ebx+0x1c]
	movsd [esp+0x10], xmm0
	cvtss2sd xmm0, [ebx+0x18]
	movsd [esp+0x8], xmm0
	mov dword [esp+0x4], _cstring_killing_trigger_
	mov dword [esp], 0x1
	call Com_PrintError
	mov [esp], ebx
	call G_FreeEntity
	add esp, 0x34
	pop ebx
	pop ebp
	ret
	nop


;SP_trigger_once(gentity_s*)
SP_trigger_once:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov ebx, [ebp+0x8]
	mov byte [ebx+0x16e], 0x1
	or dword [ebx+0x17c], 0x10
	mov [esp], ebx
	call SV_SetBrushModel
	test al, al
	jz SP_trigger_once_10
	mov dword [ebx+0x120], 0x405c0008
	mov byte [ebx+0xf6], 0x1
	mov edx, [ebx+0x8]
	mov eax, edx
	or eax, 0x1
	mov [ebx+0x8], eax
	cmp word [ebx+0x168], 0x0
	jnz SP_trigger_once_20
	or edx, 0x21
	mov [ebx+0x8], edx
SP_trigger_once_20:
	mov dword [ebx+0x120], 0x0
	mov eax, [ebx+0x17c]
	test al, 0x8
	jz SP_trigger_once_30
	test al, 0x1
	jnz SP_trigger_once_40
SP_trigger_once_90:
	test al, 0x2
	jnz SP_trigger_once_50
SP_trigger_once_80:
	test al, 0x4
	jnz SP_trigger_once_60
SP_trigger_once_70:
	mov [ebp+0x8], ebx
	add esp, 0x24
	pop ebx
	pop ebp
	jmp SV_LinkEntity
SP_trigger_once_60:
	or dword [ebx+0x120], 0x100000
	mov [ebp+0x8], ebx
	add esp, 0x24
	pop ebx
	pop ebp
	jmp SV_LinkEntity
SP_trigger_once_50:
	or dword [ebx+0x120], 0x80000
	test al, 0x4
	jz SP_trigger_once_70
	jmp SP_trigger_once_60
SP_trigger_once_40:
	or dword [ebx+0x120], 0x40000
	test al, 0x2
	jz SP_trigger_once_80
	jmp SP_trigger_once_50
SP_trigger_once_30:
	mov dword [ebx+0x120], 0x40000000
	test al, 0x1
	jz SP_trigger_once_90
	jmp SP_trigger_once_40
SP_trigger_once_10:
	cvtss2sd xmm0, [ebx+0x20]
	movsd [esp+0x18], xmm0
	cvtss2sd xmm0, [ebx+0x1c]
	movsd [esp+0x10], xmm0
	cvtss2sd xmm0, [ebx+0x18]
	movsd [esp+0x8], xmm0
	mov dword [esp+0x4], _cstring_killing_trigger_
	mov dword [esp], 0x1
	call Com_PrintError
	mov [esp], ebx
	call G_FreeEntity
	add esp, 0x24
	pop ebx
	pop ebp
	ret
	nop


;SP_trigger_damage(gentity_s*)
SP_trigger_damage:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x34
	mov ebx, [ebp+0x8]
	lea eax, [ebx+0x1b8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_0
	mov dword [esp], _cstring_accumulate
	call G_SpawnInt
	lea eax, [ebx+0x1b4]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_0
	mov dword [esp], _cstring_threshold
	call G_SpawnInt
	mov dword [ebx+0x1a0], 0x7d00
	mov byte [ebx+0x16b], 0x1
	mov byte [ebx+0x16e], 0x4
	mov eax, level
	cmp byte [eax+0xb34], 0x0
	jnz SP_trigger_damage_10
SP_trigger_damage_50:
	mov [esp], ebx
	call SV_SetBrushModel
	test al, al
	jz SP_trigger_damage_20
	mov dword [ebx+0x120], 0x405c0008
	mov byte [ebx+0xf6], 0x1
	mov edx, [ebx+0x8]
	mov eax, edx
	or eax, 0x1
	mov [ebx+0x8], eax
	cmp word [ebx+0x168], 0x0
	jz SP_trigger_damage_30
SP_trigger_damage_40:
	mov [esp], ebx
	call SV_LinkEntity
	add esp, 0x34
	pop ebx
	pop ebp
	ret
SP_trigger_damage_30:
	or edx, 0x21
	mov [ebx+0x8], edx
	jmp SP_trigger_damage_40
SP_trigger_damage_20:
	cvtss2sd xmm0, [ebx+0x20]
	movsd [esp+0x18], xmm0
	cvtss2sd xmm0, [ebx+0x1c]
	movsd [esp+0x10], xmm0
	cvtss2sd xmm0, [ebx+0x18]
	movsd [esp+0x8], xmm0
	mov dword [esp+0x4], _cstring_killing_trigger_
	mov dword [esp], 0x1
	call Com_PrintError
	mov [esp], ebx
	call G_FreeEntity
	add esp, 0x34
	pop ebx
	pop ebp
	ret
SP_trigger_damage_10:
	lea eax, [ebp-0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_null
	mov dword [esp], _cstring_wait
	call G_SpawnFloat
	test eax, eax
	jz SP_trigger_damage_50
	pxor xmm0, xmm0
	ucomiss xmm0, [ebp-0xc]
	jb SP_trigger_damage_50
	or dword [ebx+0x17c], 0x200
	jmp SP_trigger_damage_50


;SP_trigger_lookat(gentity_s*)
SP_trigger_lookat:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov ebx, [ebp+0x8]
	mov [esp], ebx
	call SV_SetBrushModel
	test al, al
	jz SP_trigger_lookat_10
	mov dword [ebx+0x120], 0x20000000
	mov byte [ebx+0xf6], 0x1
	mov edx, [ebx+0x8]
	mov eax, edx
	or eax, 0x1
	mov [ebx+0x8], eax
	cmp word [ebx+0x168], 0x0
	jnz SP_trigger_lookat_20
	or edx, 0x21
	mov [ebx+0x8], edx
SP_trigger_lookat_20:
	add esp, 0x24
	pop ebx
	pop ebp
	ret
SP_trigger_lookat_10:
	cvtss2sd xmm0, [ebx+0x20]
	movsd [esp+0x18], xmm0
	cvtss2sd xmm0, [ebx+0x1c]
	movsd [esp+0x10], xmm0
	cvtss2sd xmm0, [ebx+0x18]
	movsd [esp+0x8], xmm0
	mov dword [esp+0x4], _cstring_killing_trigger_1
	mov dword [esp], 0x1
	call Com_PrintError
	mov [ebp+0x8], ebx
	add esp, 0x24
	pop ebx
	pop ebp
	jmp G_FreeEntity


;SP_trigger_radius(gentity_s*)
SP_trigger_radius:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x44
	mov ebx, [ebp+0x8]
	mov eax, level
	cmp byte [eax+0xb34], 0x0
	jz SP_trigger_radius_10
	lea eax, [ebp-0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_null
	mov dword [esp], _cstring_radius
	call G_SpawnFloat
	test eax, eax
	jz SP_trigger_radius_20
	lea eax, [ebp-0x10]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_null
	mov dword [esp], _cstring_height
	call G_SpawnFloat
	test eax, eax
	jz SP_trigger_radius_30
SP_trigger_radius_100:
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
	jnz SP_trigger_radius_40
SP_trigger_radius_110:
	mov eax, [ebx+0x17c]
SP_trigger_radius_120:
	mov dword [ebx+0x120], 0x0
	test al, 0x8
	jnz SP_trigger_radius_50
	mov dword [ebx+0x120], 0x40000000
SP_trigger_radius_50:
	test al, 0x1
	jz SP_trigger_radius_60
	or dword [ebx+0x120], 0x40000
SP_trigger_radius_60:
	test al, 0x2
	jz SP_trigger_radius_70
	or dword [ebx+0x120], 0x80000
SP_trigger_radius_70:
	test al, 0x4
	jz SP_trigger_radius_80
	or dword [ebx+0x120], 0x100000
SP_trigger_radius_80:
	mov [esp], ebx
	call SV_LinkEntity
	add esp, 0x44
	pop ebx
	pop ebp
	ret
SP_trigger_radius_10:
	call Scr_GetNumParam
	cmp eax, 0x4
	jbe SP_trigger_radius_90
	mov dword [esp], 0x3
	call Scr_GetFloat
	fstp dword [ebp-0xc]
	mov dword [esp], 0x4
	call Scr_GetFloat
	fstp dword [ebp-0x10]
	jmp SP_trigger_radius_100
SP_trigger_radius_40:
	lea eax, [ebp-0x14]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_null
	mov dword [esp], _cstring_wait
	call G_SpawnFloat
	test eax, eax
	jz SP_trigger_radius_110
	pxor xmm0, xmm0
	ucomiss xmm0, [ebp-0x14]
	jb SP_trigger_radius_110
	mov eax, [ebx+0x17c]
	or eax, 0x10
	mov [ebx+0x17c], eax
	jmp SP_trigger_radius_120
SP_trigger_radius_20:
	cvtss2sd xmm0, [ebx+0x144]
	movsd [esp+0x14], xmm0
	cvtss2sd xmm0, [ebx+0x140]
	movsd [esp+0xc], xmm0
	cvtss2sd xmm0, [ebx+0x13c]
	movsd [esp+0x4], xmm0
	mov dword [esp], _cstring_radius_not_speci
	call va
	mov [esp+0x4], eax
	mov dword [esp], 0x2
	call Com_Error
	lea eax, [ebp-0x10]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_null
	mov dword [esp], _cstring_height
	call G_SpawnFloat
	test eax, eax
	jnz SP_trigger_radius_100
SP_trigger_radius_30:
	cvtss2sd xmm0, [ebx+0x144]
	movsd [esp+0x14], xmm0
	cvtss2sd xmm0, [ebx+0x140]
	movsd [esp+0xc], xmm0
	cvtss2sd xmm0, [ebx+0x13c]
	movsd [esp+0x4], xmm0
	mov dword [esp], _cstring_height_not_speci
	call va
	mov [esp+0x4], eax
	mov dword [esp], 0x2
	call Com_Error
	jmp SP_trigger_radius_100
SP_trigger_radius_90:
	mov dword [esp], _cstring_usage_spawn_trig
	call Scr_Error
	mov dword [esp], 0x3
	call Scr_GetFloat
	fstp dword [ebp-0xc]
	mov dword [esp], 0x4
	call Scr_GetFloat
	fstp dword [ebp-0x10]
	jmp SP_trigger_radius_100


;Die_trigger_damage(gentity_s*, gentity_s*, gentity_s*, int, int, int, float const*, hitLocation_t, int)
Die_trigger_damage:
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
	call Activate_trigger_damage
	mov ecx, [ebx+0x1b8]
	test ecx, ecx
	jnz Die_trigger_damage_10
	mov dword [ebx+0x1a0], 0x7d00
Die_trigger_damage_10:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;Use_trigger_damage(gentity_s*, gentity_s*, gentity_s*)
Use_trigger_damage:
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
	call Activate_trigger_damage
	leave
	ret
	nop


;Pain_trigger_damage(gentity_s*, gentity_s*, int, float const*, int, float const*, hitLocation_t, int)
Pain_trigger_damage:
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
	call Activate_trigger_damage
	mov eax, [ebx+0x1b8]
	test eax, eax
	jnz Pain_trigger_damage_10
	mov dword [ebx+0x1a0], 0x7d00
Pain_trigger_damage_10:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;SP_trigger_multiple(gentity_s*)
SP_trigger_multiple:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x34
	mov ebx, [ebp+0x8]
	mov byte [ebx+0x16e], 0x1
	mov eax, level
	cmp byte [eax+0xb34], 0x0
	jnz SP_trigger_multiple_10
SP_trigger_multiple_110:
	mov [esp], ebx
	call SV_SetBrushModel
	test al, al
	jz SP_trigger_multiple_20
	mov dword [ebx+0x120], 0x405c0008
	mov byte [ebx+0xf6], 0x1
	mov edx, [ebx+0x8]
	mov eax, edx
	or eax, 0x1
	mov [ebx+0x8], eax
	cmp word [ebx+0x168], 0x0
	jnz SP_trigger_multiple_30
	or edx, 0x21
	mov [ebx+0x8], edx
SP_trigger_multiple_30:
	mov dword [ebx+0x120], 0x0
	mov eax, [ebx+0x17c]
	test al, 0x8
	jz SP_trigger_multiple_40
	test al, 0x1
	jnz SP_trigger_multiple_50
SP_trigger_multiple_100:
	test al, 0x2
	jnz SP_trigger_multiple_60
SP_trigger_multiple_90:
	test al, 0x4
	jnz SP_trigger_multiple_70
SP_trigger_multiple_80:
	mov [esp], ebx
	call SV_LinkEntity
	add esp, 0x34
	pop ebx
	pop ebp
	ret
SP_trigger_multiple_70:
	or dword [ebx+0x120], 0x100000
	jmp SP_trigger_multiple_80
SP_trigger_multiple_60:
	or dword [ebx+0x120], 0x80000
	test al, 0x4
	jz SP_trigger_multiple_80
	jmp SP_trigger_multiple_70
SP_trigger_multiple_50:
	or dword [ebx+0x120], 0x40000
	test al, 0x2
	jz SP_trigger_multiple_90
	jmp SP_trigger_multiple_60
SP_trigger_multiple_40:
	mov dword [ebx+0x120], 0x40000000
	test al, 0x1
	jz SP_trigger_multiple_100
	jmp SP_trigger_multiple_50
SP_trigger_multiple_20:
	cvtss2sd xmm0, [ebx+0x20]
	movsd [esp+0x18], xmm0
	cvtss2sd xmm0, [ebx+0x1c]
	movsd [esp+0x10], xmm0
	cvtss2sd xmm0, [ebx+0x18]
	movsd [esp+0x8], xmm0
	mov dword [esp+0x4], _cstring_killing_trigger_
	mov dword [esp], 0x1
	call Com_PrintError
	mov [esp], ebx
	call G_FreeEntity
	add esp, 0x34
	pop ebx
	pop ebp
	ret
SP_trigger_multiple_10:
	lea eax, [ebp-0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_null
	mov dword [esp], _cstring_wait
	call G_SpawnFloat
	test eax, eax
	jz SP_trigger_multiple_110
	pxor xmm0, xmm0
	ucomiss xmm0, [ebp-0xc]
	jb SP_trigger_multiple_110
	or dword [ebx+0x17c], 0x10
	jmp SP_trigger_multiple_110
	nop


;Activate_trigger_damage(gentity_s*, gentity_s*, int, int)
Activate_trigger_damage:
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
	jle Activate_trigger_damage_10
	cmp eax, edx
	jg Activate_trigger_damage_20
Activate_trigger_damage_10:
	mov edx, [ebx+0x17c]
	test dl, 0x1
	jnz Activate_trigger_damage_30
	test dl, 0x2
	jnz Activate_trigger_damage_40
Activate_trigger_damage_160:
	test dl, 0x4
	jnz Activate_trigger_damage_50
Activate_trigger_damage_170:
	test dl, 0x8
	jz Activate_trigger_damage_60
	cmp ecx, 0xe
	jbe Activate_trigger_damage_70
Activate_trigger_damage_60:
	test dl, 0x10
	jz Activate_trigger_damage_80
	cmp ecx, 0x4
	jz Activate_trigger_damage_20
	cmp ecx, 0x6
	jz Activate_trigger_damage_20
Activate_trigger_damage_80:
	test dl, 0x20
	jnz Activate_trigger_damage_90
Activate_trigger_damage_180:
	test dh, 0x1
	jnz Activate_trigger_damage_100
Activate_trigger_damage_150:
	mov esi, [ebx+0x1b8]
	test esi, esi
	jz Activate_trigger_damage_110
	mov eax, 0x7d00
	sub eax, [ebx+0x1a0]
	cmp esi, eax
	jg Activate_trigger_damage_20
Activate_trigger_damage_110:
	add ecx, 0x1
	jz Activate_trigger_damage_120
	mov dword [esp], 0x1
	call Scr_IsSystemActive
	test eax, eax
	jz Activate_trigger_damage_130
	mov esi, level
	mov eax, [esi+0x2dd4]
	cmp eax, 0x100
	jz Activate_trigger_damage_140
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
Activate_trigger_damage_120:
	mov dword [ebx+0x1a0], 0x7d00
	and dh, 0x2
	jz Activate_trigger_damage_20
	mov [ebp+0x8], ebx
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp G_FreeEntityDelay
Activate_trigger_damage_100:
	cmp ecx, 0xd
	ja Activate_trigger_damage_150
	mov eax, 0x1
	shl eax, cl
	test eax, 0x3e01
	jz Activate_trigger_damage_150
Activate_trigger_damage_20:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Activate_trigger_damage_30:
	cmp ecx, 0x1
	jz Activate_trigger_damage_20
	test dl, 0x2
	jz Activate_trigger_damage_160
Activate_trigger_damage_40:
	cmp ecx, 0x2
	jz Activate_trigger_damage_20
	test dl, 0x4
	jz Activate_trigger_damage_170
Activate_trigger_damage_50:
	lea eax, [ecx-0x3]
	cmp eax, 0x3
	ja Activate_trigger_damage_170
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Activate_trigger_damage_90:
	cmp ecx, 0x7
	jnz Activate_trigger_damage_180
	jmp Activate_trigger_damage_20
Activate_trigger_damage_70:
	mov eax, 0x1
	shl eax, cl
	test eax, 0x4078
	jnz Activate_trigger_damage_20
	jmp Activate_trigger_damage_60
Activate_trigger_damage_130:
	mov edx, [ebx+0x17c]
	jmp Activate_trigger_damage_120
Activate_trigger_damage_140:
	mov [esp], edi
	call Scr_AddEntity
	mov dword [esp+0x8], 0x1
	mov eax, scr_const
	movzx eax, word [eax+0xbc]
	mov [esp+0x4], eax
	mov [esp], ebx
	call Scr_Notify
	mov edx, [ebx+0x17c]
	jmp Activate_trigger_damage_120
	nop


;G_CheckHitTriggerDamage(gentity_s*, float const*, float const*, int, int)
G_CheckHitTriggerDamage:
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
	call AddPointToBounds
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
	jb G_CheckHitTriggerDamage_10
	movss xmm1, dword [_float_1_00000000]
G_CheckHitTriggerDamage_50:
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
	call CM_AreaEntities
	mov edi, eax
	test eax, eax
	jle G_CheckHitTriggerDamage_20
	xor esi, esi
	jmp G_CheckHitTriggerDamage_30
G_CheckHitTriggerDamage_40:
	add esi, 0x1
	cmp edi, esi
	jz G_CheckHitTriggerDamage_20
G_CheckHitTriggerDamage_30:
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
	jnz G_CheckHitTriggerDamage_40
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
	call SV_SightTraceToEntity
	test eax, eax
	jz G_CheckHitTriggerDamage_40
	mov eax, modNames
	mov edx, [ebp+0x18]
	mov eax, [eax+edx*4]
	movzx eax, word [eax]
	mov [esp], eax
	call Scr_AddConstString
	mov eax, vec3_origin
	mov [esp], eax
	call Scr_AddVector
	lea eax, [ebp-0x3c]
	mov [esp], eax
	call Scr_AddVector
	mov edx, [ebp+0x8]
	mov [esp], edx
	call Scr_AddEntity
	mov eax, [ebp+0x14]
	mov [esp], eax
	call Scr_AddInt
	mov dword [esp+0x8], 0x5
	mov edx, scr_const
	movzx eax, word [edx+0x1c]
	mov [esp+0x4], eax
	mov [esp], ebx
	call Scr_Notify
	mov eax, [ebp+0x18]
	mov [esp+0xc], eax
	mov edx, [ebp+0x14]
	mov [esp+0x8], edx
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov [esp], ebx
	call Activate_trigger_damage
	mov edx, [ebx+0x1b8]
	test edx, edx
	jnz G_CheckHitTriggerDamage_40
	mov dword [ebx+0x1a0], 0x7d00
	add esi, 0x1
	cmp edi, esi
	jnz G_CheckHitTriggerDamage_30
G_CheckHitTriggerDamage_20:
	add esp, 0x105c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
G_CheckHitTriggerDamage_10:
	movss xmm1, dword [_float_1_00000000]
	divss xmm1, xmm2
	jmp G_CheckHitTriggerDamage_50
	nop


;G_GrenadeTouchTriggerDamage(gentity_s*, float*, float*, int, int)
G_GrenadeTouchTriggerDamage:
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
	call AddPointToBounds
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
	jb G_GrenadeTouchTriggerDamage_10
	movss xmm1, dword [_float_1_00000000]
G_GrenadeTouchTriggerDamage_50:
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
	call CM_AreaEntities
	mov edi, eax
	test eax, eax
	jle G_GrenadeTouchTriggerDamage_20
	xor esi, esi
	jmp G_GrenadeTouchTriggerDamage_30
G_GrenadeTouchTriggerDamage_40:
	add esi, 0x1
	cmp edi, esi
	jz G_GrenadeTouchTriggerDamage_20
G_GrenadeTouchTriggerDamage_30:
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
	jnz G_GrenadeTouchTriggerDamage_40
	test byte [ebx+0x181], 0x40
	jz G_GrenadeTouchTriggerDamage_40
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
	call SV_SightTraceToEntity
	test eax, eax
	jz G_GrenadeTouchTriggerDamage_40
	mov eax, modNames
	mov edx, [ebp+0x18]
	mov eax, [eax+edx*4]
	movzx eax, word [eax]
	mov [esp], eax
	call Scr_AddConstString
	mov eax, vec3_origin
	mov [esp], eax
	call Scr_AddVector
	lea eax, [ebp-0x3c]
	mov [esp], eax
	call Scr_AddVector
	mov edx, [ebp+0x8]
	mov [esp], edx
	call Scr_AddEntity
	mov eax, [ebp+0x14]
	mov [esp], eax
	call Scr_AddInt
	mov dword [esp+0x8], 0x5
	mov edx, scr_const
	movzx eax, word [edx+0x1c]
	mov [esp+0x4], eax
	mov [esp], ebx
	call Scr_Notify
	mov eax, [ebp+0x18]
	mov [esp+0xc], eax
	mov edx, [ebp+0x14]
	mov [esp+0x8], edx
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov [esp], ebx
	call Activate_trigger_damage
	mov eax, [ebx+0x1b8]
	test eax, eax
	jnz G_GrenadeTouchTriggerDamage_40
	mov dword [ebx+0x1a0], 0x7d00
	jmp G_GrenadeTouchTriggerDamage_40
G_GrenadeTouchTriggerDamage_20:
	add esp, 0x105c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
G_GrenadeTouchTriggerDamage_10:
	movss xmm1, dword [_float_1_00000000]
	divss xmm1, xmm2
	jmp G_GrenadeTouchTriggerDamage_50


;hurt_use(gentity_s*, gentity_s*, gentity_s*)
hurt_use:
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
_float_0_00000000:		dd 0x0	; 0
_float_1_00000000:		dd 0x3f800000	; 1

align   16,db 0
_data16_80000000:		dd 0x80000000, 0x0, 0x0, 0x0	; DQWORD
