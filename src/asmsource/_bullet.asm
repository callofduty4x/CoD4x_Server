;Imports of bullet:
	extern Com_Memset
	extern riflePriorityMap
	extern G_LocationalTraceAllowChildren
	extern bulletPriorityMap
	extern Trace_GetEntityHitId
	extern g_entities
	extern sv_clientSideBullets
	extern G_TempEntity
	extern BG_GetWeaponIndex
	extern DirToByte
	extern G_CheckHitTriggerDamage
	extern Trace_GetDynEntHitId
	extern g_debugLocDamage
	extern level
	extern G_Damage
	extern colorRed
	extern CL_AddDebugStar
	extern G_AntiLagRewindClientPos
	extern bullet_penetrationEnabled
	extern Cvar_VariableIntegerValue
	extern OnSameTeam
	extern BG_AdvanceTrace
	extern G_AntiLag_RestoreClientPos
	extern BG_GetSurfacePenetrationDepth
	extern perk_bulletPenetrationMultiplier
	extern Com_Memcpy
	extern bullet_penetrationMinFxDist
	extern tan
	extern cosf
	extern sinf
	extern G_DebugBulletImpact

;Exports of bullet:
	global Bullet_Trace
	global Bullet_ImpactEffect
	global Bullet_Process
	global Bullet_Fire
	global Bullet_Endpos


SECTION .text


;Bullet_Trace(BulletFireParams const*, WeaponDef const*, gentity_s*, BulletTraceResults*, int)
Bullet_Trace:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov esi, eax
	mov ebx, edx
	mov [ebp-0x20], ecx
	mov edi, [ebp+0x8]
	mov dword [esp+0x8], 0x44
	mov dword [esp+0x4], 0x0
	mov [esp], edi
	call Com_Memset
	mov ebx, [ebx+0x4e0]
	test ebx, ebx
	jz Bullet_Trace_10
	mov eax, riflePriorityMap
Bullet_Trace_30:
	lea edx, [esi+0x28]
	mov [ebp-0x1c], edx
	lea ebx, [esi+0x1c]
	mov [esp+0x14], eax
	mov dword [esp+0x10], 0x2806831
	mov eax, [esi+0x4]
	mov [esp+0xc], eax
	mov [esp+0x8], edx
	mov [esp+0x4], ebx
	mov [esp], edi
	call G_LocationalTraceAllowChildren
	mov ecx, [edi+0x1c]
	test ecx, ecx
	jnz Bullet_Trace_20
	xor eax, eax
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Bullet_Trace_10:
	mov eax, bulletPriorityMap
	jmp Bullet_Trace_30
Bullet_Trace_20:
	mov [esp], edi
	call Trace_GetEntityHitId
	cmp ax, 0x3fe
	jz Bullet_Trace_40
	movzx eax, ax
	lea edx, [eax+eax*8]
	lea edx, [eax+edx*2]
	mov ecx, edx
	shl ecx, 0x5
	add edx, ecx
	lea eax, [edx+eax]
	add eax, g_entities
Bullet_Trace_90:
	mov [edi+0x2c], eax
	lea eax, [edi+0x30]
	movss xmm2, dword [edi]
	movss xmm1, dword [ebx]
	mov edx, [ebp-0x1c]
	movss xmm0, dword [edx]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [edi+0x30], xmm1
	movss xmm1, dword [ebx+0x4]
	movss xmm0, dword [edx+0x4]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [eax+0x4], xmm1
	movss xmm1, dword [ebx+0x8]
	movss xmm0, dword [edx+0x8]
	subss xmm0, xmm1
	mulss xmm2, xmm0
	addss xmm1, xmm2
	movss [eax+0x8], xmm1
	mov eax, [edi+0x2c]
	test eax, eax
	jz Bullet_Trace_50
	mov eax, [eax+0x4]
	sub eax, 0x1
	cmp eax, 0x1
	jbe Bullet_Trace_60
Bullet_Trace_100:
	mov eax, [ebp-0x20]
	cmp eax, [edi+0x2c]
	setz byte [edi+0x3c]
Bullet_Trace_50:
	mov eax, [edi+0x10]
	mov edx, eax
	and edx, 0x1f00000
	mov ecx, edx
	shr ecx, 0x14
	movzx edx, cl
	mov [edi+0x40], edx
	test ah, 0x1
	jz Bullet_Trace_70
	mov dword [edi+0x40], 0x0
	mov eax, 0x1
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Bullet_Trace_70:
	test cl, cl
	jnz Bullet_Trace_80
	mov eax, [ebp+0xc]
	test eax, eax
	jz Bullet_Trace_80
	mov edx, [ebp+0xc]
	mov [edi+0x40], edx
	mov eax, 0x1
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Bullet_Trace_80:
	mov eax, 0x1
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Bullet_Trace_40:
	xor eax, eax
	jmp Bullet_Trace_90
Bullet_Trace_60:
	mov edx, [edi+0x10]
	test edx, edx
	jnz Bullet_Trace_100
	mov dword [edi+0x10], 0x700000
	jmp Bullet_Trace_100


;Bullet_ImpactEffect(BulletFireParams const*, BulletTraceResults const*, float const*, WeaponDef const*, gentity_s*, int, gentity_s**)
Bullet_ImpactEffect:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov [ebp-0x1c], eax
	mov ebx, edx
	mov [ebp-0x20], ecx
	mov edi, [ebp+0x14]
	cmp byte [edx+0x3c], 0x0
	jnz Bullet_ImpactEffect_10
	test byte [edx+0x10], 0x4
	jz Bullet_ImpactEffect_20
Bullet_ImpactEffect_50:
	xor edx, edx
Bullet_ImpactEffect_60:
	mov eax, [ebx+0x2c]
	test eax, eax
	jz Bullet_ImpactEffect_30
	mov esi, [eax+0x15c]
	test esi, esi
	setz al
	and dl, al
Bullet_ImpactEffect_30:
	test dl, dl
	jz Bullet_ImpactEffect_10
	mov eax, sv_clientSideBullets
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz Bullet_ImpactEffect_40
	xor esi, esi
	mov [edi], esi
Bullet_ImpactEffect_70:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Bullet_ImpactEffect_10:
	mov dword [edi], 0x0
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Bullet_ImpactEffect_20:
	movss xmm0, dword [_float_1_00000000]
	ucomiss xmm0, [edx]
	jbe Bullet_ImpactEffect_50
	mov edx, 0x1
	jmp Bullet_ImpactEffect_60
Bullet_ImpactEffect_40:
	mov dword [esp+0x4], 0x29
	lea eax, [ebx+0x30]
	mov [esp], eax
	call G_TempEntity
	mov esi, eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call BG_GetWeaponIndex
	movzx eax, al
	mov [esi+0xc4], eax
	mov edx, [ebp-0x20]
	mov [esp], edx
	call DirToByte
	movzx eax, al
	mov [esi+0x9c], eax
	movzx eax, byte [ebp+0x10]
	mov [esi+0xd4], eax
	mov eax, [ebx+0x10]
	and eax, 0x1f00000
	shr eax, 0x14
	mov [esi+0x84], eax
	mov edx, [ebp-0x1c]
	mov eax, [edx]
	mov [esi+0x74], eax
	mov [edi], esi
	jmp Bullet_ImpactEffect_70


;Bullet_Process(BulletFireParams const*, BulletTraceResults*, WeaponDef const*, gentity_s*, int, int, int*, unsigned char)
Bullet_Process:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x7c
	mov edi, eax
	mov ebx, edx
	mov esi, ecx
	movzx eax, byte [ebp+0x18]
	mov [ebp-0x31], al
	mov ecx, [ebp+0x14]
	mov dword [ecx], 0x0
	mov edx, [esi+0x34c]
	mov ecx, [esi+0x800]
	movss xmm4, dword [esi+0x80c]
	movss xmm3, dword [esi+0x808]
	movaps xmm5, xmm4
	subss xmm5, xmm3
	cmp edx, ecx
	jz Bullet_Process_10
	ucomiss xmm5, [_float_0_00000000]
	jp Bullet_Process_20
	jnz Bullet_Process_20
	lea eax, [ebx+0x30]
	mov [ebp-0x38], eax
Bullet_Process_90:
	cvtsi2ss xmm0, edx
	mulss xmm0, [edi+0x8]
	cvttss2si ecx, xmm0
	mov [ebp-0x2c], ecx
	mov eax, [edi+0xc]
	mov [esp+0x10], eax
	mov [esp+0xc], ecx
	mov eax, [ebp-0x38]
	mov [esp+0x8], eax
	lea eax, [edi+0x1c]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call G_CheckHitTriggerDamage
	mov dword [ebp-0x1c], 0x0
	cmp byte [ebp-0x31], 0x0
	jnz Bullet_Process_30
Bullet_Process_110:
	lea eax, [ebp-0x20]
	mov [esp+0x4], eax
	mov [esp], ebx
	call Trace_GetDynEntHitId
	mov edx, [ebx+0x2c]
	test edx, edx
	jz Bullet_Process_40
	cmp byte [edx+0x16b], 0x0
	jz Bullet_Process_40
	cmp byte [ebx+0x3c], 0x0
	jnz Bullet_Process_40
	mov eax, [ebp+0xc]
	or eax, 0x2
	mov ecx, [esi+0x4e4]
	test ecx, ecx
	cmovz eax, [ebp+0xc]
	mov [ebp+0xc], eax
	mov edx, [edx+0x1a0]
	mov [ebp-0x30], edx
	movzx esi, word [ebx+0x26]
	lea eax, [esi-0x1]
	cmp eax, 0x1
	jbe Bullet_Process_50
Bullet_Process_150:
	mov eax, g_debugLocDamage
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz Bullet_Process_60
Bullet_Process_140:
	mov eax, level
	mov eax, [eax+0x1ec]
	sub eax, [ebp+0x10]
	mov [esp+0x30], eax
	movzx eax, word [ebx+0x24]
	mov [esp+0x2c], eax
	movzx eax, word [ebx+0x22]
	mov [esp+0x28], eax
	mov [esp+0x24], esi
	mov dword [esp+0x20], 0xffffffff
	mov eax, [edi+0xc]
	mov [esp+0x1c], eax
	mov ecx, [ebp+0xc]
	mov [esp+0x18], ecx
	mov eax, [ebp-0x2c]
	mov [esp+0x14], eax
	mov ecx, [ebp-0x38]
	mov [esp+0x10], ecx
	lea eax, [edi+0x34]
	mov [esp+0xc], eax
	mov eax, [ebp+0x8]
	mov [esp+0x8], eax
	mov [esp+0x4], eax
	mov eax, [ebx+0x2c]
	mov [esp], eax
	call G_Damage
	mov eax, [ebx+0x2c]
	cmp byte [eax+0x100], 0x0
	jnz Bullet_Process_70
Bullet_Process_120:
	xor eax, eax
Bullet_Process_130:
	mov edi, [ebp-0x30]
	test edi, edi
	jle Bullet_Process_40
	test al, al
	jnz Bullet_Process_40
	mov ecx, [ebp+0x14]
	or dword [ecx], 0x2
Bullet_Process_40:
	mov edx, [ebp-0x1c]
	test edx, edx
	jz Bullet_Process_80
	mov ecx, [ebp+0x14]
	movzx eax, byte [ecx]
	or [edx+0xd4], eax
Bullet_Process_80:
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Bullet_Process_20:
	lea eax, [ebx+0x30]
	mov [ebp-0x38], eax
	lea eax, [edi+0x10]
	mov [ebp-0x3c], eax
	movss xmm0, dword [ebx+0x30]
	subss xmm0, [edi+0x10]
	mov eax, [ebp-0x38]
	movss xmm1, dword [eax+0x4]
	mov eax, [ebp-0x3c]
	subss xmm1, [eax+0x4]
	mov eax, [ebp-0x38]
	movss xmm2, dword [eax+0x8]
	mov eax, [ebp-0x3c]
	subss xmm2, [eax+0x8]
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	sqrtss xmm0, xmm0
	ucomiss xmm3, xmm0
	ja Bullet_Process_90
	ucomiss xmm4, xmm0
	ja Bullet_Process_100
	mov edx, ecx
	jmp Bullet_Process_90
Bullet_Process_30:
	lea ecx, [ebx+0x4]
	lea eax, [ebp-0x1c]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x0
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov [esp], esi
	mov edx, ebx
	mov eax, edi
	call Bullet_ImpactEffect
	jmp Bullet_Process_110
Bullet_Process_10:
	lea ecx, [ebx+0x30]
	mov [ebp-0x38], ecx
	jmp Bullet_Process_90
Bullet_Process_70:
	mov eax, [eax+0x1a0]
	test eax, eax
	jle Bullet_Process_120
	mov eax, 0x1
	jmp Bullet_Process_130
Bullet_Process_60:
	mov dword [esp+0xc], 0x1
	mov dword [esp+0x8], 0x64
	mov eax, colorRed
	mov [esp+0x4], eax
	mov eax, [ebp-0x38]
	mov [esp], eax
	call CL_AddDebugStar
	jmp Bullet_Process_140
Bullet_Process_100:
	movaps xmm1, xmm0
	subss xmm1, xmm3
	divss xmm1, xmm5
	cvtsi2ss xmm2, edx
	movss xmm0, dword [_float_1_00000000]
	subss xmm0, xmm1
	mulss xmm2, xmm0
	cvtsi2ss xmm0, ecx
	mulss xmm1, xmm0
	addss xmm2, xmm1
	cvttss2si edx, xmm2
	jmp Bullet_Process_90
Bullet_Process_50:
	mov ecx, [ebp+0x14]
	or dword [ecx], 0x1
	jmp Bullet_Process_150
	nop


;Bullet_Fire(gentity_s*, float, weaponParms const*, gentity_s const*, int)
Bullet_Fire:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4bc
	lea eax, [ebp-0x468]
	mov [esp+0x4], eax
	mov edx, [ebp+0x18]
	mov [esp], edx
	call G_AntiLagRewindClientPos
	mov ebx, [ebp+0x10]
	mov esi, [ebx+0x3c]
	cmp dword [esi+0x130], 0x3
	jz Bullet_Fire_10
	mov dword [ebp-0x48c], 0x1
	movss xmm0, dword [_float_8192_00000000]
	movss [ebp-0x488], xmm0
Bullet_Fire_170:
	mov dword [ebp-0x490], 0x0
	lea edi, [ebp-0x128]
	mov ebx, [ebp+0x14]
	test ebx, ebx
	jz Bullet_Fire_20
Bullet_Fire_140:
	mov edx, [ebp+0x14]
	mov eax, [edx]
Bullet_Fire_150:
	mov [ebp-0x60], eax
	mov [ebp-0x5c], eax
	mov dword [ebp-0x58], 0x3f800000
	cmp dword [esi+0x4e0], 0x1
	sbb eax, eax
	add eax, 0x2
	mov [ebp-0x54], eax
	mov ebx, [ebp+0x10]
	mov ecx, [ebx+0x24]
	mov [ebp-0x50], ecx
	mov edx, [ebx+0x28]
	mov [ebp-0x4c], edx
	mov eax, [ebx+0x2c]
	mov [ebp-0x48], eax
	mov [ebp-0x44], ecx
	mov [ebp-0x40], edx
	mov [ebp-0x3c], eax
	movss xmm0, dword [ebp-0x488]
	movss [esp+0x14], xmm0
	mov [esp+0x10], ebx
	lea eax, [ebp-0x2c]
	mov [esp+0xc], eax
	lea edx, [ebp-0x38]
	mov [esp+0x8], edx
	movss xmm0, dword [ebp+0xc]
	movss [esp+0x4], xmm0
	mov eax, [ebp+0x18]
	add eax, [ebp-0x490]
	mov [esp], eax
	call Bullet_Endpos

	lea edx, [ebp-0x38]
	mov [esp+8], edx
	lea edx, [ebp-0x44]
	mov [esp+4], edx
	mov edx, [ebp+8]
	mov [esp], edx
	call G_DebugBulletImpact ;For enabling bullet debugging

	mov eax, bullet_penetrationEnabled
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz Bullet_Fire_30
	mov esi, [ebx+0x3c]
	mov ecx, [esi+0x134]
	test ecx, ecx
	jnz Bullet_Fire_40
Bullet_Fire_160:
	xor ebx, ebx
	jmp Bullet_Fire_50
Bullet_Fire_90:
	mov eax, [ebp-0xfc]
	test eax, eax
	jz Bullet_Fire_60
	cmp byte [eax+0x16b], 0x0
	jz Bullet_Fire_60
	cmp byte [ebp-0xec], 0x0
	jnz Bullet_Fire_70
	mov edx, [esi+0x4e0]
	test edx, edx
	jz Bullet_Fire_60
	mov eax, [eax+0x15c]
	test eax, eax
	jz Bullet_Fire_60
	mov dword [esp], _cstring_scr_friendlyfire
	call Cvar_VariableIntegerValue
	test eax, eax
	jnz Bullet_Fire_80
	mov edx, [ebp+0x8]
	mov [esp+0x4], edx
	mov eax, [ebp-0xfc]
	mov [esp], eax
	call OnSameTeam
	test eax, eax
	jnz Bullet_Fire_60
Bullet_Fire_80:
	movss xmm0, dword [ebp-0x58]
	mulss xmm0, [_float_0_50000000]
	movss [ebp-0x58], xmm0
Bullet_Fire_70:
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], edi
	lea eax, [ebp-0x60]
	mov [esp], eax
	call BG_AdvanceTrace
Bullet_Fire_100:
	add ebx, 0x1
	cmp ebx, 0xc
	jz Bullet_Fire_60
Bullet_Fire_50:
	mov dword [esp+0x4], 0x0
	mov [esp], edi
	mov ecx, [ebp+0x8]
	mov edx, esi
	lea eax, [ebp-0x60]
	call Bullet_Trace
	test al, al
	jz Bullet_Fire_60
	mov dword [esp+0x10], 0x1
	lea eax, [ebp-0x1c]
	mov [esp+0xc], eax
	mov edx, [ebp+0x18]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x0
	mov eax, [ebp+0x8]
	mov [esp], eax
	mov ecx, esi
	mov edx, edi
	lea eax, [ebp-0x60]
	call Bullet_Process
	test byte [ebp-0x114], 0x10
	jz Bullet_Fire_90
	mov dword [esp+0x8], 0x3e0a3d71
	mov [esp+0x4], edi
	lea edx, [ebp-0x60]
	mov [esp], edx
	call BG_AdvanceTrace
	test al, al
	jnz Bullet_Fire_100
	add dword [ebp-0x490], 0x1
	mov edx, [ebp-0x490]
	cmp [ebp-0x48c], edx
	jnz Bullet_Fire_110
Bullet_Fire_130:
	lea ebx, [ebp-0x468]
	mov [esp], ebx
	call G_AntiLag_RestoreClientPos
	add esp, 0x4bc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Bullet_Fire_40:
	mov dword [esp+0x4], 0x0
	mov [esp], edi
	mov ecx, [ebp+0x8]
	mov edx, esi
	lea eax, [ebp-0x60]
	call Bullet_Trace
	test al, al
	jnz Bullet_Fire_120
Bullet_Fire_60:
	add dword [ebp-0x490], 0x1
	mov edx, [ebp-0x490]
	cmp [ebp-0x48c], edx
	jz Bullet_Fire_130
Bullet_Fire_110:
	mov eax, [ebp+0x10]
	mov esi, [eax+0x3c]
	mov ebx, [ebp+0x14]
	test ebx, ebx
	jnz Bullet_Fire_140
Bullet_Fire_20:
	mov eax, 0x3fe
	jmp Bullet_Fire_150
Bullet_Fire_30:
	mov eax, [ebp+0x10]
	mov esi, [eax+0x3c]
	jmp Bullet_Fire_160
Bullet_Fire_10:
	mov eax, [esi+0x33c]
	mov [ebp-0x48c], eax
	movss xmm0, dword [esi+0x80c]
	movss [ebp-0x488], xmm0
	test eax, eax
	jg Bullet_Fire_170
	lea ebx, [ebp-0x468]
	mov [esp], ebx
	call G_AntiLag_RestoreClientPos
	add esp, 0x4bc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Bullet_Fire_120:
	mov dword [esp+0x10], 0x1
	lea eax, [ebp-0x1c]
	mov [esp+0xc], eax
	mov edx, [ebp+0x18]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x0
	mov ebx, [ebp+0x8]
	mov [esp], ebx
	mov ecx, esi
	mov edx, edi
	lea eax, [ebp-0x60]
	call Bullet_Process
	mov dword [ebp-0x484], 0x0
Bullet_Fire_340:
	mov eax, [ebp-0xe8]
	mov [esp+0x4], eax
	mov [esp], esi
	call BG_GetSurfacePenetrationDepth
	fstp dword [ebp-0x478]
	mov edx, [ebp+0x8]
	mov eax, [edx+0x15c]
	test eax, eax
	jz Bullet_Fire_180
	test byte [eax+0x5fc], 0x20
	jz Bullet_Fire_180
	mov eax, perk_bulletPenetrationMultiplier
	mov eax, [eax]
	movss xmm0, dword [ebp-0x478]
	mulss xmm0, [eax+0xc]
	movss [ebp-0x478], xmm0
	movaps xmm1, xmm0
Bullet_Fire_370:
	ucomiss xmm1, [_float_0_00000000]
	jp Bullet_Fire_190
	jbe Bullet_Fire_60
Bullet_Fire_190:
	movss xmm0, dword [ebp-0xf8]
	movss [ebp-0x46c], xmm0
	movss xmm1, dword [ebp-0xf4]
	movss [ebp-0x470], xmm1
	movss xmm0, dword [ebp-0xf0]
	movss [ebp-0x474], xmm0
	mov dword [esp+0x8], 0x3e0a3d71
	mov [esp+0x4], edi
	lea eax, [ebp-0x60]
	mov [esp], eax
	call BG_AdvanceTrace
	test al, al
	jz Bullet_Fire_60
	mov eax, [ebp-0xe8]
	mov [esp+0x4], eax
	mov [esp], edi
	mov ecx, [ebp+0x8]
	mov edx, esi
	lea eax, [ebp-0x60]
	call Bullet_Trace
	mov [ebp-0x47d], al
	mov dword [esp+0x8], 0x40
	lea edx, [ebp-0x60]
	mov [esp+0x4], edx
	lea ebx, [ebp-0xa0]
	mov [esp], ebx
	call Com_Memcpy
	movss xmm0, dword [ebp-0x2c]
	xorps xmm0, [_data16_80000000]
	movss [ebp-0x6c], xmm0
	movss xmm1, dword [ebp-0x28]
	xorps xmm1, [_data16_80000000]
	movss [ebp-0x68], xmm1
	movss xmm2, dword [ebp-0x24]
	xorps xmm2, [_data16_80000000]
	movss [ebp-0x64], xmm2
	mov eax, [ebp-0x38]
	mov [ebp-0x84], eax
	mov eax, [ebp-0x34]
	mov [ebp-0x80], eax
	mov eax, [ebp-0x30]
	mov [ebp-0x7c], eax
	mulss xmm0, [_float_0_01000000]
	addss xmm0, [ebp-0x46c]
	movss [ebp-0x78], xmm0
	mulss xmm1, [_float_0_01000000]
	addss xmm1, [ebp-0x470]
	movss [ebp-0x74], xmm1
	mulss xmm2, [_float_0_01000000]
	addss xmm2, [ebp-0x474]
	movss [ebp-0x70], xmm2
	mov dword [esp+0x8], 0x44
	mov [esp+0x4], edi
	lea eax, [ebp-0xe4]
	mov [esp], eax
	call Com_Memcpy
	movss xmm0, dword [ebp-0xe0]
	xorps xmm0, [_data16_80000000]
	movss [ebp-0xe0], xmm0
	movss xmm0, dword [ebp-0xdc]
	xorps xmm0, [_data16_80000000]
	movss [ebp-0xdc], xmm0
	movss xmm0, dword [ebp-0xd8]
	xorps xmm0, [_data16_80000000]
	movss [ebp-0xd8], xmm0
	cmp byte [ebp-0x47d], 0x0
	jnz Bullet_Fire_200
Bullet_Fire_380:
	mov eax, [ebp-0xa4]
	mov [esp+0x4], eax
	lea eax, [ebp-0xe4]
	mov [esp], eax
	mov ecx, [ebp+0x8]
	mov edx, esi
	lea eax, [ebp-0xa0]
	call Bullet_Trace
	test al, al
	jz Bullet_Fire_210
	cmp byte [ebp-0xbc], 0x0
	jz Bullet_Fire_210
	mov ebx, 0x1
Bullet_Fire_330:
	movss xmm0, dword [ebp-0x78]
	subss xmm0, [ebp-0x84]
	movss xmm1, dword [ebp-0x74]
	subss xmm1, [ebp-0x80]
	movss xmm2, dword [ebp-0x70]
	subss xmm2, [ebp-0x7c]
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	sqrtss xmm0, xmm0
	movss [ebp-0x47c], xmm0
Bullet_Fire_360:
	movss xmm0, dword [_float_1_00000000]
	maxss xmm0, [ebp-0x47c]
	movss [ebp-0x47c], xmm0
	pxor xmm2, xmm2
	test al, al
	jz Bullet_Fire_220
	mov edx, [ebp+0x8]
	mov eax, [edx+0x15c]
	test eax, eax
	jz Bullet_Fire_230
	test byte [eax+0x5fc], 0x20
	jnz Bullet_Fire_240
Bullet_Fire_230:
	mov eax, [ebp-0xa4]
	mov [esp+0x4], eax
	mov [esp], esi
	call BG_GetSurfacePenetrationDepth
	fstp dword [ebp-0x49c]
	movss xmm1, dword [ebp-0x49c]
Bullet_Fire_390:
	movaps xmm0, xmm1
	subss xmm0, [ebp-0x478]
	pxor xmm2, xmm2
	ucomiss xmm0, xmm2
	jb Bullet_Fire_250
Bullet_Fire_220:
	movss xmm0, dword [ebp-0x47c]
	divss xmm0, dword [ebp-0x478]
	movss [ebp-0x47c], xmm0
	movss xmm0, dword [ebp-0x58]
	subss xmm0, [ebp-0x47c]
	movss [ebp-0x58], xmm0
	ucomiss xmm2, xmm0
	jae Bullet_Fire_60
	test bl, bl
	jnz Bullet_Fire_260
	movss xmm0, dword [ebp-0xb4]
	subss xmm0, [ebp-0xf8]
	movss xmm1, dword [ebp-0xb0]
	subss xmm1, [ebp-0xf4]
	movss xmm2, dword [ebp-0xac]
	subss xmm2, [ebp-0xf0]
	mov eax, bullet_penetrationMinFxDist
	mov eax, [eax]
	movss xmm3, dword [eax+0xc]
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	mulss xmm3, xmm3
	ucomiss xmm0, xmm3
	seta bl
	test bl, bl
	jz Bullet_Fire_270
	cmp byte [ebp-0x47d], 0x0
	jz Bullet_Fire_280
	test byte [ebp-0x118], 0x4
	jnz Bullet_Fire_290
Bullet_Fire_280:
	lea eax, [ebp-0x20]
	mov [esp+0xc], eax
	mov eax, [ebp-0x1c]
	or eax, 0x4
	mov [esp+0x8], eax
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov [esp], esi
	lea ecx, [ebp-0x2c]
	lea edx, [ebp-0xe4]
	lea eax, [ebp-0xa0]
	call Bullet_ImpactEffect
Bullet_Fire_270:
	cmp byte [ebp-0x47d], 0x0
	jz Bullet_Fire_60
Bullet_Fire_290:
	movzx eax, bl
	mov [esp+0x10], eax
	lea edx, [ebp-0x1c]
	mov [esp+0xc], edx
	mov ebx, [ebp+0x18]
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x8
	mov eax, [ebp+0x8]
	mov [esp], eax
	mov ecx, esi
	mov edx, edi
	lea eax, [ebp-0x60]
	call Bullet_Process
	jmp Bullet_Fire_300
Bullet_Fire_210:
	cmp byte [ebp-0xff], 0x0
	jz Bullet_Fire_310
	cmp byte [ebp-0xbb], 0x0
	jz Bullet_Fire_310
	mov ebx, 0x1
	test al, al
	jnz Bullet_Fire_320
Bullet_Fire_350:
	test bl, bl
	jnz Bullet_Fire_330
	cmp byte [ebp-0x47d], 0x0
	jz Bullet_Fire_60
	movss xmm0, dword [ebp-0x46c]
	subss xmm0, [ebp-0xf8]
	movss [ebp-0x46c], xmm0
	movss xmm1, dword [ebp-0x470]
	subss xmm1, [ebp-0xf4]
	movss [ebp-0x470], xmm1
	movss xmm0, dword [ebp-0x474]
	subss xmm0, [ebp-0xf0]
	movss [ebp-0x474], xmm0
	mov eax, bullet_penetrationMinFxDist
	mov eax, [eax]
	movss xmm0, dword [eax+0xc]
	movss xmm1, dword [ebp-0x46c]
	mulss xmm1, xmm1
	movss [ebp-0x46c], xmm1
	movss xmm1, dword [ebp-0x470]
	mulss xmm1, xmm1
	movss [ebp-0x470], xmm1
	movss xmm1, dword [ebp-0x46c]
	addss xmm1, [ebp-0x470]
	movss [ebp-0x46c], xmm1
	movss xmm1, dword [ebp-0x474]
	mulss xmm1, xmm1
	movss [ebp-0x474], xmm1
	movss xmm1, dword [ebp-0x46c]
	addss xmm1, [ebp-0x474]
	mulss xmm0, xmm0
	xor eax, eax
	ucomiss xmm1, xmm0
	seta al
	mov [esp+0x10], eax
	lea eax, [ebp-0x1c]
	mov [esp+0xc], eax
	mov edx, [ebp+0x18]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x8
	mov ebx, [ebp+0x8]
	mov [esp], ebx
	mov ecx, esi
	mov edx, edi
	lea eax, [ebp-0x60]
	call Bullet_Process
Bullet_Fire_300:
	add dword [ebp-0x484], 0x1
	cmp dword [ebp-0x484], 0x5
	jnz Bullet_Fire_340
	jmp Bullet_Fire_60
Bullet_Fire_310:
	xor ebx, ebx
	test al, al
	jz Bullet_Fire_350
Bullet_Fire_320:
	test bl, bl
	jnz Bullet_Fire_330
	movss xmm0, dword [ebp-0x46c]
	subss xmm0, [ebp-0xb4]
	movss [ebp-0x46c], xmm0
	movss xmm1, dword [ebp-0x470]
	subss xmm1, [ebp-0xb0]
	movss [ebp-0x470], xmm1
	movss xmm0, dword [ebp-0x474]
	subss xmm0, [ebp-0xac]
	movss [ebp-0x474], xmm0
	movss xmm1, dword [ebp-0x46c]
	mulss xmm1, xmm1
	movss xmm0, dword [ebp-0x470]
	mulss xmm0, xmm0
	addss xmm1, xmm0
	movss [ebp-0x46c], xmm1
	movss xmm1, dword [ebp-0x474]
	mulss xmm1, xmm1
	movss xmm0, dword [ebp-0x46c]
	addss xmm0, xmm1
	sqrtss xmm1, xmm0
	movss [ebp-0x47c], xmm1
	jmp Bullet_Fire_360
Bullet_Fire_180:
	movss xmm1, dword [ebp-0x478]
	jmp Bullet_Fire_370
Bullet_Fire_260:
	cmp byte [ebp-0x47d], 0x0
	jnz Bullet_Fire_300
	jmp Bullet_Fire_60
Bullet_Fire_200:
	mov dword [esp+0x8], 0x3c23d70a
	lea edx, [ebp-0xe4]
	mov [esp+0x4], edx
	mov [esp], ebx
	call BG_AdvanceTrace
	jmp Bullet_Fire_380
Bullet_Fire_240:
	mov eax, [ebp-0xa4]
	mov [esp+0x4], eax
	mov [esp], esi
	call BG_GetSurfacePenetrationDepth
	fstp dword [ebp-0x49c]
	movss xmm1, dword [ebp-0x49c]
	mov eax, perk_bulletPenetrationMultiplier
	mov eax, [eax]
	mulss xmm1, [eax+0xc]
	jmp Bullet_Fire_390
Bullet_Fire_250:
	ucomiss xmm2, xmm1
	jae Bullet_Fire_60
	movss [ebp-0x478], xmm1
	jmp Bullet_Fire_220
	add [eax], al


;Bullet_Endpos(int, float, float*, float*, weaponParms const*, float)
Bullet_Endpos:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xdc
	cvtss2sd xmm0, [ebp+0xc]
	mulsd xmm0, [_double_0_01745329]
	movsd [esp], xmm0
	call tan
	fstp qword [ebp-0xb0]
	cvtsd2ss xmm0, [ebp-0xb0]
	mulss xmm0, [ebp+0x1c]
	movss [ebp-0xa4], xmm0
	mov ebx, [ebp+0x8]
	neg ebx
	mov esi, 0x27
	lea edi, [ebp+0x4]
	jmp Bullet_Endpos_10
Bullet_Endpos_40:
	cmp esi, 0x1f
	jg Bullet_Endpos_20
	mov [edi], ebx
Bullet_Endpos_20:
	sub esi, 0x1
	sub edi, 0x4
	cmp esi, 0xffffffff
	jz Bullet_Endpos_30
Bullet_Endpos_10:
	mov eax, 0x834e0b5f
	imul ebx
	mov ecx, edx
	add ecx, ebx
	sar ecx, 0x10
	mov eax, ebx
	sar eax, 0x1f
	sub ecx, eax
	lea eax, [ecx*4]
	mov edx, ecx
	shl edx, 0x9
	sub edx, eax
	sub edx, ecx
	lea eax, [edx*8]
	sub eax, edx
	lea eax, [ecx+eax*4]
	lea eax, [eax+eax*8]
	mov edx, ebx
	sub edx, eax
	lea ebx, [edx+edx*4]
	mov eax, ebx
	shl eax, 0x4
	sub eax, ebx
	shl eax, 0x5
	add eax, edx
	lea ebx, [eax*8]
	sub ebx, eax
	lea eax, [ecx+ecx*2]
	mov edx, eax
	shl edx, 0x4
	sub edx, eax
	mov eax, edx
	shl eax, 0x6
	sub eax, edx
	add eax, ecx
	sub ebx, eax
	jns Bullet_Endpos_40
	lea ebx, [ebx+0x7fffffff]
	jmp Bullet_Endpos_40
Bullet_Endpos_30:
	mov eax, 0x834e0b5f
	imul ebx
	lea esi, [edx+ebx]
	sar esi, 0x10
	mov eax, ebx
	sar eax, 0x1f
	sub esi, eax
	lea eax, [esi*4]
	mov edx, esi
	shl edx, 0x9
	sub edx, eax
	sub edx, esi
	lea eax, [edx*8]
	sub eax, edx
	lea eax, [esi+eax*4]
	lea eax, [eax+eax*8]
	mov edx, ebx
	sub edx, eax
	lea ecx, [edx+edx*4]
	mov eax, ecx
	shl eax, 0x4
	sub eax, ecx
	shl eax, 0x5
	add eax, edx
	lea ecx, [eax*8]
	sub ecx, eax
	lea eax, [esi+esi*2]
	mov edx, eax
	shl edx, 0x4
	sub edx, eax
	mov eax, edx
	shl eax, 0x6
	sub eax, edx
	add eax, esi
	sub ecx, eax
	js Bullet_Endpos_50
Bullet_Endpos_140:
	mov eax, [ebp-0x98]
	lea edx, [eax+0x3ffffff]
	cmp eax, 0xffffffff
	cmovle eax, edx
	sar eax, 0x1a
	cvtsi2sd xmm1, dword [ebp+eax*4-0x98]
	movsd xmm3, qword [_double_0_00000000]
	mulsd xmm1, xmm3
	movsd xmm4, qword [_double_0_99999988]
	movapd xmm0, xmm4
	subsd xmm0, xmm1
	pxor xmm2, xmm2
	ucomisd xmm0, xmm2
	jb Bullet_Endpos_60
	cvtsd2ss xmm0, xmm1
Bullet_Endpos_160:
	movaps xmm5, xmm0
	mulss xmm5, [_float_360_00000000]
	mov ebx, ecx
	neg ebx
	mov esi, 0x27
	lea edi, [ebp+0x4]
	jmp Bullet_Endpos_70
Bullet_Endpos_100:
	cmp esi, 0x1f
	jg Bullet_Endpos_80
	mov [edi], ebx
Bullet_Endpos_80:
	sub esi, 0x1
	sub edi, 0x4
	cmp esi, 0xffffffff
	jz Bullet_Endpos_90
Bullet_Endpos_70:
	mov eax, 0x834e0b5f
	imul ebx
	mov ecx, edx
	add ecx, ebx
	sar ecx, 0x10
	mov eax, ebx
	sar eax, 0x1f
	sub ecx, eax
	lea eax, [ecx*4]
	mov edx, ecx
	shl edx, 0x9
	sub edx, eax
	sub edx, ecx
	lea eax, [edx*8]
	sub eax, edx
	lea eax, [ecx+eax*4]
	lea eax, [eax+eax*8]
	mov edx, ebx
	sub edx, eax
	lea ebx, [edx+edx*4]
	mov eax, ebx
	shl eax, 0x4
	sub eax, ebx
	shl eax, 0x5
	add eax, edx
	lea ebx, [eax*8]
	sub ebx, eax
	lea eax, [ecx+ecx*2]
	mov edx, eax
	shl edx, 0x4
	sub edx, eax
	mov eax, edx
	shl eax, 0x6
	sub eax, edx
	add eax, ecx
	sub ebx, eax
	jns Bullet_Endpos_100
	lea ebx, [ebx+0x7fffffff]
	jmp Bullet_Endpos_100
Bullet_Endpos_90:
	mov eax, [ebp-0x98]
	lea edx, [eax+0x3ffffff]
	cmp eax, 0xffffffff
	cmovle eax, edx
	sar eax, 0x1a
	cvtsi2sd xmm1, dword [ebp+eax*4-0x98]
	mulsd xmm1, xmm3
	movapd xmm0, xmm4
	subsd xmm0, xmm1
	ucomisd xmm0, xmm2
	jb Bullet_Endpos_110
	cvtsd2ss xmm1, xmm1
	movss [ebp-0x9c], xmm1
Bullet_Endpos_150:
	cvtss2sd xmm0, xmm5
	mulsd xmm0, [_double_0_01745329]
	cvtsd2ss xmm0, xmm0
	movss [ebp-0xa0], xmm0
	movss [esp], xmm0
	call cosf
	fstp dword [ebp-0xcc]
	movss xmm1, dword [ebp-0xcc]
	mulss xmm1, [ebp-0x9c]
	mulss xmm1, [ebp-0xa4]
	movss xmm0, dword [ebp-0xa0]
	movss [esp], xmm0
	movss [ebp-0xc8], xmm1
	call sinf
	fstp dword [ebp-0xcc]
	movss xmm2, dword [ebp-0xcc]
	mulss xmm2, [ebp-0x9c]
	mulss xmm2, [ebp-0xa4]
	movss xmm0, dword [ebp+0x1c]
	mov eax, [ebp+0x18]
	mulss xmm0, [eax]
	addss xmm0, [eax+0x24]
	mov edx, [ebp+0x10]
	movss [edx], xmm0
	movss xmm0, dword [ebp+0x1c]
	mulss xmm0, [eax+0x4]
	addss xmm0, [eax+0x28]
	movss [edx+0x4], xmm0
	movss xmm0, dword [ebp+0x1c]
	mulss xmm0, [eax+0x8]
	movss [ebp+0x1c], xmm0
	addss xmm0, [eax+0x2c]
	movss [edx+0x8], xmm0
	mov eax, [ebp+0x18]
	add eax, 0xc
	movss xmm1, dword [ebp-0xc8]
	movaps xmm0, xmm1
	mov edx, [ebp+0x18]
	mulss xmm0, [edx+0xc]
	mov ecx, [ebp+0x10]
	addss xmm0, [ecx]
	movss [ecx], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [eax+0x4]
	addss xmm0, [ecx+0x4]
	movss [ecx+0x4], xmm0
	mulss xmm1, [eax+0x8]
	addss xmm1, [ecx+0x8]
	movss [ecx+0x8], xmm1
	mov eax, edx
	add eax, 0x18
	movaps xmm1, xmm2
	mulss xmm1, [edx+0x18]
	addss xmm1, [ecx]
	movss [ecx], xmm1
	movaps xmm0, xmm2
	mulss xmm0, [eax+0x4]
	addss xmm0, [ecx+0x4]
	movss [ecx+0x4], xmm0
	mulss xmm2, [eax+0x8]
	addss xmm2, [ecx+0x8]
	movss [ecx+0x8], xmm2
	mov ebx, [ebp+0x14]
	test ebx, ebx
	jz Bullet_Endpos_120
	movaps xmm3, xmm1
	subss xmm3, [edx+0x24]
	mov eax, [ebp+0x14]
	movss [eax], xmm3
	mov edx, eax
	add edx, 0x4
	movss xmm1, dword [ecx+0x4]
	mov ecx, [ebp+0x18]
	subss xmm1, [ecx+0x28]
	movss [eax+0x4], xmm1
	mov eax, [ebp+0x14]
	add eax, 0x8
	mov ecx, [ebp+0x10]
	movss xmm0, dword [ecx+0x8]
	mov ecx, [ebp+0x18]
	subss xmm0, [ecx+0x2c]
	mov ecx, [ebp+0x14]
	movss [ecx+0x8], xmm0
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
	jb Bullet_Endpos_130
	movss xmm1, dword [_float_1_00000000]
Bullet_Endpos_170:
	mulss xmm3, xmm1
	mov ecx, [ebp+0x14]
	movss [ecx], xmm3
	movaps xmm0, xmm1
	mulss xmm0, [edx]
	movss [edx], xmm0
	mulss xmm1, [eax]
	movss [eax], xmm1
Bullet_Endpos_120:
	add esp, 0xdc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Bullet_Endpos_50:
	lea ecx, [ecx+0x7fffffff]
	jmp Bullet_Endpos_140
Bullet_Endpos_110:
	movss xmm0, dword [_float_0_99999988]
	movss [ebp-0x9c], xmm0
	jmp Bullet_Endpos_150
Bullet_Endpos_60:
	movss xmm0, dword [_float_0_99999988]
	jmp Bullet_Endpos_160
Bullet_Endpos_130:
	movss xmm1, dword [_float_1_00000000]
	divss xmm1, xmm2
	jmp Bullet_Endpos_170
	nop


;Initialized global or static variables of bullet:
SECTION .data


;Initialized constant data of bullet:
SECTION .rdata


;Zero initialized global or static variables of bullet:
SECTION .bss


;All cstrings:
SECTION .rdata
_cstring_scr_friendlyfire:		db "scr_friendlyfire",0



;All constant floats and doubles:
SECTION .rdata
_float_1_00000000:		dd 0x3f800000	; 1
_float_0_00000000:		dd 0x0	; 0
_float_8192_00000000:		dd 0x46000000	; 8192
_float_0_50000000:		dd 0x3f000000	; 0.5
_float_0_01000000:		dd 0x3c23d70a	; 0.01
_double_0_01745329:		dq 0x3f91df46a2529d39	; 0.0174533
_double_0_00000000:		dq 0x3e00000000200000	; 4.65661e-10
_double_0_99999988:		dq 0x3fefffffbf935359	; 1
_float_360_00000000:		dd 0x43b40000	; 360
_float_0_99999988:		dd 0x3f7ffffe	; 1

align   16,db 0
_data16_80000000:		dd 0x80000000, 0x0, 0x0, 0x0	; DQWORD
