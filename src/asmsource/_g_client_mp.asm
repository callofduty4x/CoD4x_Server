;Imports of g_client_mp:
	extern level
	extern CalculateRanks
	extern scr_const
	extern g_entities
	extern Scr_Notify
	extern G_EntUnlink
	extern SV_UnlinkEntity
	extern Scr_SetString
	extern G_SetClientContents
	extern playerMins
	extern playerMaxs
	extern memcpy
	extern _ZN9EntHandle6setEntEP9gentity_s
	extern memset
	extern SV_GetUsercmd
	extern G_SetOrigin
	extern g_inactivity
	extern ClientEndFrame
	extern ClientThink_real
	extern BG_PlayerStateToEntityState
	extern level_bgs
	extern SV_GetAssignedTeam
	extern G_InitGentity
	extern SV_GetUserinfo
	extern Info_ValueForKey
	extern g_password
	extern com_developer
	extern Scr_PlayerConnect
	extern Q_stricmp
	extern strcmp
	extern G_FreeEntity
	extern Com_PrintError
	extern Scr_IsSystemActive
	extern StopFollowing
	extern HudElem_ClientDisconnect
	extern Scr_PlayerDisconnect
	extern Scr_AddString
	extern voice_global
	extern SV_ClientHasClientMuted
	extern SV_ClientWantsVoiceData
	extern SV_QueueVoicePacket
	extern voice_deadChat
	extern voice_localEcho
	extern OnSameTeam
	extern AngleVectors
	extern _ZZ15G_TouchTriggersP9gentity_sE5range
	extern perk_parabolicAngle
	extern cos
	extern perk_parabolicRadius
	extern floorf
	extern AngleDelta
	extern bg_prone_yawcap
	extern AngleNormalize360
	extern Info_Validate
	extern SV_IsLocalClient
	extern atoi
	extern Q_strncpyz
	extern g_compassShowEnemies
	extern SV_inSnapshot
	extern G_DObjGetWorldTagPos
	extern BG_GetPlayerViewOrigin
	extern Com_Error
	extern ClientUserinfoChanged

;Exports of g_client_mp:
	global ClientBegin
	global ClientConnect
	global ClientDisconnect
	global _Z16G_BroadcastVoiceP9gentity_sP13VoicePacket_t
	global SetClientViewAngle
	global G_GetNonPVSPlayerInfo
	global G_GetPlayerViewOrigin


SECTION .text


;ClientBegin(int)
ClientBegin:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	lea eax, [ebx+ebx*2]
	mov edx, eax
	shl edx, 0x6
	add eax, edx
	mov edx, eax
	shl edx, 0x6
	add eax, edx
	add eax, ebx
	mov edx, level
	add eax, [edx]
	mov dword [eax+0x2f8c], 0x2
	mov dword [eax+0x4], 0x4
	call CalculateRanks
	mov dword [esp+0x8], 0x0
	mov eax, scr_const
	movzx eax, word [eax+0x126]
	mov [esp+0x4], eax
	lea eax, [ebx+ebx*8]
	lea eax, [ebx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	add eax, ebx
	add eax, g_entities
	mov [esp], eax
	call Scr_Notify
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;ClientConnect(int, unsigned short)
ClientConnect:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x42c
	mov eax, [ebp+0xc]
	mov [ebp-0x424], eax
	mov edx, [ebp+0x8]
	lea edi, [edx+edx*8]
	lea eax, [edx+edi*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	add eax, [ebp+0x8]
	mov edx, g_entities
	add eax, edx
	mov [ebp-0x420], eax
	mov eax, [ebp+0x8]
	lea ebx, [eax+eax*2]
	mov eax, ebx
	shl eax, 0x6
	add ebx, eax
	mov eax, ebx
	shl eax, 0x6
	add ebx, eax
	add ebx, [ebp+0x8]
	mov eax, level
	add ebx, [eax]
	mov dword [esp+0x4], 0x0
	lea eax, [ebx+0x30f8]
	mov [esp], eax
	call _ZN9EntHandle6setEntEP9gentity_s
	mov dword [esp+0x8], 0x3184
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call memset
	mov eax, edi
	shl eax, 0x4
	add edi, eax
	mov edx, [ebp+0x8]
	lea edi, [edx+edi*2]
	mov eax, level_bgs
	lea edi, [eax+edi*4+0x99a00]
	lea esi, [edi+0x4]
	mov eax, [esi+0x4a8]
	mov [ebp-0x41c], eax
	mov dword [esp+0x8], 0x4cc
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call memset
	mov edx, [ebp-0x41c]
	mov [esi+0x4a8], edx
	mov dword [edi+0x4], 0x1
	mov dword [esi+0x4], 0x1
	mov dword [ebx+0x2f8c], 0x1
	movzx eax, word [ebp-0x424]
	mov [ebx+0x2f88], ax
	mov edx, [ebp+0x8]
	mov [esp], edx
	call SV_GetAssignedTeam
	mov [ebx+0x3010], eax
	mov dword [ebx+0x2f64], 0x2
	mov dword [ebx+0x3074], 0xffffffff
	mov dword [ebx+0x2f68], 0xffffffff
	mov dword [ebx+0x2f6c], 0xffffffff
	mov eax, [ebp-0x420]
	mov [esp], eax
	call G_InitGentity
	mov edx, [ebp-0x420]
	mov byte [edx+0x16e], 0x0
	mov [edx+0x15c], ebx
	mov eax, [ebp+0x8]
	mov [edx+0x8c], eax
	mov [ebx+0x300c], eax
	mov [ebx+0xdc], eax
	mov eax, 0x3f800000
	mov [ebx+0x2ffc], eax
	mov [ebx+0x5dc], eax
	mov edx, [ebp+0x8]
	mov [esp], edx
	call ClientUserinfoChanged
ClientConnect_10:
	mov edx, [ebp-0x420]
	mov [esp], edx
	call Scr_PlayerConnect
	call CalculateRanks
	xor eax, eax
ClientConnect_50:
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;ClientDisconnect(int)
ClientDisconnect:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov eax, [ebp+0x8]
	mov [ebp-0x24], eax
	mov edi, level
	lea eax, [eax+eax*2]
	mov edx, eax
	shl edx, 0x6
	add eax, edx
	mov edx, eax
	shl edx, 0x6
	add eax, edx
	add eax, [ebp-0x24]
	mov ecx, [edi]
	add eax, ecx
	mov [ebp-0x1c], eax
	mov edx, [ebp-0x24]
	lea eax, [edx+edx*8]
	lea eax, [edx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	add eax, [ebp-0x24]
	mov [ebp-0x20], eax
	mov ecx, g_entities
	add eax, ecx
	mov [ebp-0x20], eax
	mov dword [esp], 0x1
	call Scr_IsSystemActive
	test eax, eax
	jnz ClientDisconnect_10
ClientDisconnect_60:
	mov ebx, [edi+0x1e4]
	test ebx, ebx
	jle ClientDisconnect_20
	xor esi, esi
	xor ebx, ebx
	mov edx, edi
	mov [ebp-0x28], edi
	xor edi, edi
	jmp ClientDisconnect_30
ClientDisconnect_40:
	add esi, 0x1
	add edi, 0x273
	add ebx, 0x3184
	cmp esi, [edx+0x1e4]
	jge ClientDisconnect_20
ClientDisconnect_30:
	mov eax, ebx
	add eax, [edx]
	mov ecx, [eax+0x2f8c]
	test ecx, ecx
	jz ClientDisconnect_40
	cmp dword [eax+0x2f64], 0x2
	jnz ClientDisconnect_40
	mov ecx, [ebp-0x24]
	cmp ecx, [eax+0x3074]
	jnz ClientDisconnect_40
	lea eax, [edi+esi]
	add eax, g_entities
	mov [esp], eax
	call StopFollowing
	mov edx, [ebp-0x28]
	jmp ClientDisconnect_40
ClientDisconnect_20:
	mov eax, [ebp-0x20]
	mov [esp], eax
	call HudElem_ClientDisconnect
	mov dword [esp], 0x1
	call Scr_IsSystemActive
	test eax, eax
	jz ClientDisconnect_50
	mov edx, [ebp-0x20]
	mov [esp], edx
	call Scr_PlayerDisconnect
ClientDisconnect_50:
	mov ecx, [ebp-0x20]
	mov [esp], ecx
	call G_FreeEntity
	mov edx, [ebp-0x1c]
	mov eax, [ebp-0x20]
	mov [eax+0x15c], edx
	mov dword [esp+0x4], 0x0
	mov eax, edx
	add eax, 0x30f8
	mov [esp], eax
	call _ZN9EntHandle6setEntEP9gentity_s
	mov ecx, [ebp-0x1c]
	mov dword [ecx+0x2f8c], 0x0
	mov eax, ecx
	add eax, 0x300c
	mov dword [esp+0x8], 0x64
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call memset
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp CalculateRanks
ClientDisconnect_10:
	mov dword [esp], _cstring_disconnect
	call Scr_AddString
	mov dword [esp], _cstring_1
	call Scr_AddString
	mov dword [esp+0x8], 0x2
	mov eax, scr_const
	movzx eax, word [eax+0x134]
	mov [esp+0x4], eax
	mov eax, [ebp-0x20]
	mov [esp], eax
	call Scr_Notify
	jmp ClientDisconnect_60
	nop


;G_BroadcastVoice(gentity_s*, VoicePacket_t*)
_Z16G_BroadcastVoiceP9gentity_sP13VoicePacket_t:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov edx, [ebp+0x8]
	mov eax, [edx+0x15c]
	mov edx, level
	mov edx, [edx+0x1ec]
	mov [eax+0x30d4], edx
	xor edi, edi
	mov ecx, level_bgs
	add ecx, 0x99de8
	mov [ebp-0x48], ecx
	mov dword [ebp-0x4c], 0x0
	jmp G_BroadcastVoice_10
G_BroadcastVoice_70:
	mov eax, voice_global
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz G_BroadcastVoice_20
	mov edx, [ebp+0x8]
	mov edx, [edx+0x15c]
	mov [ebp-0x44], edx
	mov ecx, edx
G_BroadcastVoice_140:
	mov edx, [ebx+0x2f64]
	mov eax, [ecx+0x2f64]
	cmp edx, eax
	jz G_BroadcastVoice_30
G_BroadcastVoice_80:
	sub edx, 0x1
	jz G_BroadcastVoice_40
	sub eax, 0x1
	jz G_BroadcastVoice_40
G_BroadcastVoice_60:
	add edi, 0x1
	add dword [ebp-0x4c], 0x273
	add dword [ebp-0x48], 0x4cc
	cmp edi, 0x40
	jz G_BroadcastVoice_50
G_BroadcastVoice_10:
	mov esi, [ebp-0x4c]
	add esi, edi
	add esi, g_entities
	mov ebx, [esi+0x15c]
	cmp byte [esi+0x100], 0x0
	jz G_BroadcastVoice_60
	test ebx, ebx
	jz G_BroadcastVoice_60
	cmp dword [ebx+0x2f64], 0x3
	jnz G_BroadcastVoice_70
	mov eax, [ebp+0x8]
	mov eax, [eax+0x15c]
	mov [ebp-0x44], eax
	mov ecx, eax
	mov edx, [ebx+0x2f64]
	mov eax, [ecx+0x2f64]
	cmp edx, eax
	jnz G_BroadcastVoice_80
G_BroadcastVoice_30:
	cmp [ebp+0x8], esi
	jz G_BroadcastVoice_90
G_BroadcastVoice_100:
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov [esp+0x4], eax
	mov [esp], edi
	call SV_ClientHasClientMuted
	test al, al
	jnz G_BroadcastVoice_60
	mov [esp], edi
	call SV_ClientWantsVoiceData
	test al, al
	jz G_BroadcastVoice_60
	mov ecx, [ebp+0xc]
	mov [esp+0x8], ecx
	mov [esp+0x4], edi
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov [esp], eax
	call SV_QueueVoicePacket
	add edi, 0x1
	add dword [ebp-0x4c], 0x273
	add dword [ebp-0x48], 0x4cc
	cmp edi, 0x40
	jnz G_BroadcastVoice_10
G_BroadcastVoice_50:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
G_BroadcastVoice_40:
	mov eax, voice_deadChat
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz G_BroadcastVoice_60
	cmp [ebp+0x8], esi
	jnz G_BroadcastVoice_100
G_BroadcastVoice_90:
	mov eax, voice_localEcho
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz G_BroadcastVoice_60
	jmp G_BroadcastVoice_100
G_BroadcastVoice_20:
	mov [esp+0x4], esi
	mov eax, [ebp+0x8]
	mov [esp], eax
	call OnSameTeam
	test eax, eax
	jnz G_BroadcastVoice_110
	mov edx, [ebp+0x8]
	mov edx, [edx+0x15c]
	mov [ebp-0x44], edx
	mov eax, [edx+0x3010]
	test eax, eax
	jz G_BroadcastVoice_120
	test byte [ebx+0x5fd], 0x2
	jz G_BroadcastVoice_60
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	lea eax, [ebp-0x24]
	mov [esp+0x4], eax
	mov ecx, [ebp-0x48]
	mov [esp], ecx
	call AngleVectors
	mov eax, [ebp+0x8]
	mov eax, [eax+0x15c]
	mov [ebp-0x44], eax
	add eax, 0x1c
	lea edx, [ebx+0x1c]
	mov ecx, [ebp-0x44]
	movss xmm2, dword [ecx+0x1c]
	subss xmm2, [ebx+0x1c]
	movss xmm3, dword [eax+0x4]
	subss xmm3, [edx+0x4]
	movss xmm4, dword [eax+0x8]
	subss xmm4, [edx+0x8]
	movaps xmm0, xmm2
	mulss xmm0, xmm2
	movaps xmm1, xmm3
	mulss xmm1, xmm3
	addss xmm0, xmm1
	movaps xmm1, xmm4
	mulss xmm1, xmm4
	addss xmm0, xmm1
	sqrtss xmm0, xmm0
	movss [ebp-0x2c], xmm0
	xorps xmm0, [_ZZ15G_TouchTriggersP9gentity_sE5range+0x100]
	ucomiss xmm0, [_float_0_00000000]
	jb G_BroadcastVoice_130
	movss xmm0, dword [_float_1_00000000]
G_BroadcastVoice_150:
	mulss xmm2, xmm0
	mulss xmm2, [ebp-0x24]
	mulss xmm3, xmm0
	mulss xmm3, [ebp-0x20]
	addss xmm2, xmm3
	mulss xmm4, xmm0
	mulss xmm4, [ebp-0x1c]
	addss xmm2, xmm4
	cvtss2sd xmm2, xmm2
	movsd [ebp-0x38], xmm2
	mov eax, perk_parabolicAngle
	mov eax, [eax]
	cvtss2sd xmm0, [eax+0xc]
	mulsd xmm0, [_double_0_01745329]
	movsd [esp], xmm0
	call cos
	fstp qword [ebp-0x40]
	movsd xmm0, qword [ebp-0x40]
	ucomisd xmm0, [ebp-0x38]
	ja G_BroadcastVoice_60
	mov eax, perk_parabolicRadius
	mov eax, [eax]
	movss xmm0, dword [ebp-0x2c]
	ucomiss xmm0, [eax+0xc]
	ja G_BroadcastVoice_60
G_BroadcastVoice_120:
	mov ebx, [esi+0x15c]
	mov ecx, [ebp-0x44]
	jmp G_BroadcastVoice_140
G_BroadcastVoice_110:
	mov ecx, [ebp+0x8]
	mov ecx, [ecx+0x15c]
	mov [ebp-0x44], ecx
	mov ebx, [esi+0x15c]
	jmp G_BroadcastVoice_140
G_BroadcastVoice_130:
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, dword [ebp-0x2c]
	jmp G_BroadcastVoice_150
	nop


;SetClientViewAngle(gentity_s*, float const*)
SetClientViewAngle:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x7c
	mov edi, [ebp+0x8]
	mov eax, [ebp+0xc]
	mov edx, [eax]
	mov [ebp-0x24], edx
	mov edx, [eax+0x4]
	mov [ebp-0x20], edx
	mov eax, [eax+0x8]
	mov [ebp-0x1c], eax
	mov esi, [edi+0x15c]
	test byte [esi+0xc], 0x1
	jz SetClientViewAngle_10
	test dword [esi+0xb0], 0x300
	jz SetClientViewAngle_20
SetClientViewAngle_10:
	xor ebx, ebx
SetClientViewAngle_40:
	cvtsi2ss xmm0, dword [esi+ebx*4+0x2f98]
	mulss xmm0, [_float__0_00549316]
	addss xmm0, [ebp+ebx*4-0x24]
	mulss xmm0, [_float_0_00277778]
	movaps xmm1, xmm0
	addss xmm1, [_float_0_50000000]
	movss [esp], xmm1
	movss [ebp-0x58], xmm0
	call floorf
	fstp dword [ebp-0x3c]
	movss xmm0, dword [ebp-0x58]
	subss xmm0, [ebp-0x3c]
	mulss xmm0, [_float_360_00000000]
	movss [esi+ebx*4+0x64], xmm0
	add ebx, 0x1
	cmp ebx, 0x3
	jz SetClientViewAngle_30
	mov esi, [edi+0x15c]
	jmp SetClientViewAngle_40
SetClientViewAngle_30:
	lea ecx, [edi+0x148]
	mov eax, [ebp-0x24]
	mov [edi+0x148], eax
	mov eax, [ebp-0x20]
	mov [ecx+0x4], eax
	mov eax, [ebp-0x1c]
	mov [ecx+0x8], eax
	mov edx, [edi+0x15c]
	lea ebx, [edx+0x108]
	mov eax, [edi+0x148]
	mov [edx+0x108], eax
	mov eax, [ecx+0x4]
	mov [ebx+0x4], eax
	mov eax, [ecx+0x8]
	mov [ebx+0x8], eax
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SetClientViewAngle_20:
	mov [esp+0x4], edx
	mov eax, [esi+0x58c]
	mov [esp], eax
	call AngleDelta
	fstp dword [ebp-0x6c]
	movss xmm1, dword [ebp-0x6c]
	mulss xmm1, [_float_0_00277778]
	movaps xmm0, xmm1
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	movss [ebp-0x68], xmm1
	call floorf
	fstp dword [ebp-0x2c]
	movss xmm1, dword [ebp-0x68]
	movaps xmm2, xmm1
	subss xmm2, [ebp-0x2c]
	mulss xmm2, [_float_360_00000000]
	mov edx, bg_prone_yawcap
	mov eax, [edx]
	movss xmm1, dword [eax+0xc]
	ucomiss xmm2, xmm1
	ja SetClientViewAngle_50
	movaps xmm0, xmm1
	xorps xmm0, [_ZZ15G_TouchTriggersP9gentity_sE5range+0x110]
	ucomiss xmm0, xmm2
	ja SetClientViewAngle_60
SetClientViewAngle_110:
	mov eax, [ebp-0x24]
	mov [esp+0x4], eax
	mov eax, [edi+0x15c]
	mov eax, [eax+0x594]
	mov [esp], eax
	call AngleDelta
	fstp dword [ebp-0x6c]
	movss xmm1, dword [ebp-0x6c]
	mulss xmm1, [_float_0_00277778]
	movaps xmm0, xmm1
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	movss [ebp-0x68], xmm1
	call floorf
	fstp dword [ebp-0x30]
	movss xmm1, dword [ebp-0x68]
	movaps xmm0, xmm1
	subss xmm0, [ebp-0x30]
	mulss xmm0, [_float_360_00000000]
	ucomiss xmm0, [_float_45_00000000]
	ja SetClientViewAngle_70
	ucomiss xmm0, [_float__45_00000000]
	jp SetClientViewAngle_80
	jae SetClientViewAngle_80
	movss xmm2, dword [_float_45_00000000]
	movaps xmm1, xmm0
	addss xmm1, xmm2
	jmp SetClientViewAngle_90
SetClientViewAngle_50:
	subss xmm2, xmm1
	movaps xmm1, xmm2
SetClientViewAngle_130:
	mov eax, [edi+0x15c]
	movaps xmm0, xmm1
	addss xmm0, [eax+0x68]
	movss [eax+0x68], xmm0
	ucomiss xmm1, [_float_0_00000000]
	jbe SetClientViewAngle_100
	mov eax, [edi+0x15c]
	mov edx, [edx]
	movss xmm0, dword [eax+0x58c]
	subss xmm0, [edx+0xc]
	movss [esp], xmm0
	call AngleNormalize360
	fstp dword [ebp-0x20]
	jmp SetClientViewAngle_110
SetClientViewAngle_70:
	movss xmm2, dword [_float_45_00000000]
	movaps xmm1, xmm0
	subss xmm1, xmm2
SetClientViewAngle_90:
	mov eax, [edi+0x15c]
	movaps xmm0, xmm1
	addss xmm0, [eax+0x64]
	movss [eax+0x64], xmm0
	ucomiss xmm1, [_float_0_00000000]
	jbe SetClientViewAngle_120
	mov esi, [edi+0x15c]
	movss xmm0, dword [esi+0x594]
	subss xmm0, xmm2
	mulss xmm0, [_float_0_00277778]
	movaps xmm1, xmm0
	addss xmm1, [_float_0_50000000]
	movss [esp], xmm1
	movss [ebp-0x58], xmm0
	call floorf
	fstp dword [ebp-0x34]
	movss xmm0, dword [ebp-0x58]
	subss xmm0, [ebp-0x34]
	mulss xmm0, [_float_360_00000000]
	movss [ebp-0x24], xmm0
	jmp SetClientViewAngle_10
SetClientViewAngle_80:
	mov esi, [edi+0x15c]
	jmp SetClientViewAngle_10
SetClientViewAngle_60:
	addss xmm1, xmm2
	jmp SetClientViewAngle_130
SetClientViewAngle_120:
	mov esi, [edi+0x15c]
	movss xmm0, dword [esi+0x594]
	addss xmm0, xmm2
	mulss xmm0, [_float_0_00277778]
	movaps xmm1, xmm0
	addss xmm1, [_float_0_50000000]
	movss [esp], xmm1
	movss [ebp-0x58], xmm0
	call floorf
	fstp dword [ebp-0x38]
	movss xmm0, dword [ebp-0x58]
	subss xmm0, [ebp-0x38]
	mulss xmm0, [_float_360_00000000]
	movss [ebp-0x24], xmm0
	jmp SetClientViewAngle_10
SetClientViewAngle_100:
	mov eax, [edi+0x15c]
	mov edx, [edx]
	movss xmm0, dword [eax+0x58c]
	addss xmm0, [edx+0xc]
	movss [esp], xmm0
	call AngleNormalize360
	fstp dword [ebp-0x20]
	jmp SetClientViewAngle_110


;G_GetNonPVSPlayerInfo(gentity_s*, float*, int)
G_GetNonPVSPlayerInfo:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov eax, [ebp+0x8]
	mov edx, [eax+0x15c]
	mov esi, [edx+0x3010]
	cmp esi, 0x3
	jz G_GetNonPVSPlayerInfo_10
	mov eax, g_compassShowEnemies
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz G_GetNonPVSPlayerInfo_20
G_GetNonPVSPlayerInfo_150:
	mov eax, 0x1
G_GetNonPVSPlayerInfo_160:
	test esi, esi
	jz G_GetNonPVSPlayerInfo_30
G_GetNonPVSPlayerInfo_140:
	cmp dword [ebp+0x10], 0x3ff
	jz G_GetNonPVSPlayerInfo_40
	mov edi, [ebp+0x10]
	add edi, 0x1
G_GetNonPVSPlayerInfo_170:
	test al, al
	jz G_GetNonPVSPlayerInfo_50
	xor esi, esi
	jmp G_GetNonPVSPlayerInfo_60
G_GetNonPVSPlayerInfo_80:
	add esi, 0x1
	cmp esi, 0x40
	jz G_GetNonPVSPlayerInfo_10
G_GetNonPVSPlayerInfo_60:
	lea eax, [edi+esi]
	mov ecx, eax
	and ecx, 0x8000003f
	js G_GetNonPVSPlayerInfo_70
G_GetNonPVSPlayerInfo_180:
	lea eax, [ecx+ecx*8]
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	lea ebx, [eax+ecx]
	add ebx, g_entities
	cmp byte [ebx+0x100], 0x0
	jz G_GetNonPVSPlayerInfo_80
	mov eax, [ebx+0x15c]
	test eax, eax
	jz G_GetNonPVSPlayerInfo_80
	mov eax, [eax+0x2f64]
	test eax, eax
	jnz G_GetNonPVSPlayerInfo_80
	cmp [ebp+0x8], ebx
	jz G_GetNonPVSPlayerInfo_80
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov eax, [ebp+0xc]
	mov [esp], eax
	call SV_inSnapshot
	test eax, eax
	jnz G_GetNonPVSPlayerInfo_80
G_GetNonPVSPlayerInfo_330:
	mov ecx, [ebx]
	movss xmm0, dword [ebx+0x13c]
	mov edx, [ebp+0xc]
	subss xmm0, [edx]
	movss xmm1, dword [_float_0_50000000]
	addss xmm0, xmm1
	cvttss2si eax, xmm0
	movss xmm0, dword [ebx+0x140]
	subss xmm0, [edx+0x4]
	addss xmm0, xmm1
	cvttss2si edx, xmm0
	cmp eax, 0x400
	jle G_GetNonPVSPlayerInfo_90
	cvtsi2ss xmm0, eax
	movss xmm2, dword [_float_1024_00000000]
	divss xmm2, xmm0
	movss xmm3, dword [_float_1_00000000]
G_GetNonPVSPlayerInfo_200:
	cmp edx, 0x400
	jle G_GetNonPVSPlayerInfo_100
	cvtsi2ss xmm0, edx
	movss xmm1, dword [_float_1024_00000000]
	divss xmm1, xmm0
G_GetNonPVSPlayerInfo_260:
	ucomiss xmm3, xmm2
	ja G_GetNonPVSPlayerInfo_110
	ucomiss xmm3, xmm1
	ja G_GetNonPVSPlayerInfo_110
G_GetNonPVSPlayerInfo_280:
	cmp eax, 0x400
	jle G_GetNonPVSPlayerInfo_120
	mov eax, 0x402
G_GetNonPVSPlayerInfo_240:
	cmp edx, 0x400
	jle G_GetNonPVSPlayerInfo_130
	mov esi, 0x402
G_GetNonPVSPlayerInfo_220:
	and ecx, 0xffff803f
	lea edx, [eax+0x3]
	cmp eax, 0xffffffff
	cmovle eax, edx
	sar eax, 0x2
	add eax, 0xff
	and eax, 0x1ff
	shl eax, 0x6
	or ecx, eax
	and ecx, 0xff007fff
	mov eax, esi
	lea edx, [esi+0x3]
	cmp esi, 0xffffffff
	cmovle eax, edx
	sar eax, 0x2
	add eax, 0xff
	and eax, 0x1ff
	shl eax, 0xf
	or ecx, eax
	and ecx, 0xffffff
	movss xmm0, dword [_float_0_71111113]
	mulss xmm0, [ebx+0x14c]
	cvttss2si eax, xmm0
	shl eax, 0x18
	or ecx, eax
	mov eax, ecx
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
G_GetNonPVSPlayerInfo_30:
	test al, al
	jnz G_GetNonPVSPlayerInfo_140
G_GetNonPVSPlayerInfo_10:
	xor ecx, ecx
	mov eax, ecx
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
G_GetNonPVSPlayerInfo_20:
	mov eax, level
	cmp byte [esi+eax+0x214], 0x0
	jnz G_GetNonPVSPlayerInfo_150
	mov ecx, [edx+0x3178]
	test ecx, ecx
	jnz G_GetNonPVSPlayerInfo_150
	xor eax, eax
	jmp G_GetNonPVSPlayerInfo_160
G_GetNonPVSPlayerInfo_40:
	xor edi, edi
	jmp G_GetNonPVSPlayerInfo_170
G_GetNonPVSPlayerInfo_70:
	sub ecx, 0x1
	or ecx, 0xffffffc0
	add ecx, 0x1
	jmp G_GetNonPVSPlayerInfo_180
G_GetNonPVSPlayerInfo_90:
	cmp eax, 0xfffffc02
	jl G_GetNonPVSPlayerInfo_190
	movss xmm2, dword [_float_1_00000000]
	movaps xmm3, xmm2
	jmp G_GetNonPVSPlayerInfo_200
G_GetNonPVSPlayerInfo_130:
	cmp edx, 0xfffffc02
	jge G_GetNonPVSPlayerInfo_210
	mov esi, 0xfffffc04
	jmp G_GetNonPVSPlayerInfo_220
G_GetNonPVSPlayerInfo_120:
	cmp eax, 0xfffffc02
	jge G_GetNonPVSPlayerInfo_230
	mov eax, 0xfffffc04
	jmp G_GetNonPVSPlayerInfo_240
G_GetNonPVSPlayerInfo_100:
	cmp edx, 0xfffffc02
	jl G_GetNonPVSPlayerInfo_250
	movaps xmm1, xmm3
	jmp G_GetNonPVSPlayerInfo_260
G_GetNonPVSPlayerInfo_110:
	ucomiss xmm1, xmm2
	ja G_GetNonPVSPlayerInfo_270
	ucomiss xmm2, xmm1
	jbe G_GetNonPVSPlayerInfo_280
	cvtsi2ss xmm0, eax
	mulss xmm1, xmm0
	cvttss2si eax, xmm1
	jmp G_GetNonPVSPlayerInfo_280
G_GetNonPVSPlayerInfo_210:
	lea esi, [edx+0x2]
	jmp G_GetNonPVSPlayerInfo_220
G_GetNonPVSPlayerInfo_190:
	cvtsi2ss xmm0, eax
	movss xmm2, dword [_float__1022_00000000]
	divss xmm2, xmm0
	movss xmm3, dword [_float_1_00000000]
	jmp G_GetNonPVSPlayerInfo_200
G_GetNonPVSPlayerInfo_230:
	add eax, 0x2
	jmp G_GetNonPVSPlayerInfo_240
G_GetNonPVSPlayerInfo_250:
	cvtsi2ss xmm0, edx
	movss xmm1, dword [_float__1022_00000000]
	divss xmm1, xmm0
	jmp G_GetNonPVSPlayerInfo_260
G_GetNonPVSPlayerInfo_270:
	cvtsi2ss xmm0, edx
	mulss xmm0, xmm2
	cvttss2si edx, xmm0
	jmp G_GetNonPVSPlayerInfo_280
G_GetNonPVSPlayerInfo_50:
	mov dword [ebp-0x1c], 0x0
G_GetNonPVSPlayerInfo_320:
	mov edx, [ebp-0x1c]
	lea eax, [edi+edx]
	mov ecx, eax
	and ecx, 0x8000003f
	jns G_GetNonPVSPlayerInfo_290
	sub ecx, 0x1
	or ecx, 0xffffffc0
	add ecx, 0x1
G_GetNonPVSPlayerInfo_290:
	lea eax, [ecx+ecx*8]
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	lea ebx, [eax+ecx]
	add ebx, g_entities
	cmp byte [ebx+0x100], 0x0
	jz G_GetNonPVSPlayerInfo_300
	mov eax, [ebx+0x15c]
	test eax, eax
	jz G_GetNonPVSPlayerInfo_300
	mov edx, [eax+0x2f64]
	test edx, edx
	jnz G_GetNonPVSPlayerInfo_300
	cmp esi, [eax+0x3010]
	jz G_GetNonPVSPlayerInfo_310
G_GetNonPVSPlayerInfo_300:
	add dword [ebp-0x1c], 0x1
	cmp dword [ebp-0x1c], 0x40
	jnz G_GetNonPVSPlayerInfo_320
	jmp G_GetNonPVSPlayerInfo_10
G_GetNonPVSPlayerInfo_310:
	cmp [ebp+0x8], ebx
	jz G_GetNonPVSPlayerInfo_300
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov eax, [ebp+0xc]
	mov [esp], eax
	call SV_inSnapshot
	test eax, eax
	jnz G_GetNonPVSPlayerInfo_300
	jmp G_GetNonPVSPlayerInfo_330
	nop


;G_GetPlayerViewOrigin(playerState_s const*, float*)
G_GetPlayerViewOrigin:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov edx, [ebp+0x8]
	mov ecx, [ebp+0xc]
	test dword [edx+0xb0], 0x300
	jz G_GetPlayerViewOrigin_10
	mov [esp+0x8], ecx
	mov eax, scr_const
	movzx eax, word [eax+0xa8]
	mov [esp+0x4], eax
	mov edx, [edx+0x59c]
	lea eax, [edx+edx*8]
	lea eax, [edx+eax*2]
	mov ecx, eax
	shl ecx, 0x5
	add eax, ecx
	add eax, edx
	add eax, g_entities
	mov [esp], eax
	call G_DObjGetWorldTagPos
	test eax, eax
	jz G_GetPlayerViewOrigin_20
	leave
	ret
G_GetPlayerViewOrigin_10:
	mov eax, level
	mov eax, [eax+0x1ec]
	mov [esp+0x8], eax
	mov [esp+0x4], ecx
	mov [esp], edx
	call BG_GetPlayerViewOrigin
	leave
	ret
G_GetPlayerViewOrigin_20:
	mov dword [ebp+0xc], _cstring_g_getplayerviewo
	mov dword [ebp+0x8], 0x2
	leave
	jmp Com_Error


;Initialized global or static variables of g_client_mp:
SECTION .data


;Initialized constant data of g_client_mp:
SECTION .rdata


;Zero initialized global or static variables of g_client_mp:
SECTION .bss


;All cstrings:
SECTION .rdata
_cstring_password:		db "password",0
_cstring_none:		db "none",0
_cstring_game_invalidpass:		db "GAME_INVALIDPASSWORD",0
_cstring_clients_cant_con:		db "Clients can",27h,"t connect if the server is in developer mode",0ah,0
_cstring_game_invalidserv:		db "GAME_INVALIDSERVER",0
_cstring_disconnect:		db "disconnect",0
_cstring_1:		db "-1",0
_cstring_cg_predictitems:		db "cg_predictItems",0
_cstring_name:		db "name",0
_cstring_unnamedplayer:		db "UnnamedPlayer",0
_cstring_g_getplayerviewo:		db 15h,"G_GetPlayerViewOrigin: Couldn",27h,"t find [tag_player] on turret",0ah,0



;All constant floats and doubles:
SECTION .rdata
_float_0_00000000:		dd 0x0	; 0
_float_1_00000000:		dd 0x3f800000	; 1
_double_0_01745329:		dq 0x3f91df46a2529d39	; 0.0174533
_float__0_00549316:		dd 0xbbb40000	; -0.00549316
_float_0_00277778:		dd 0x3b360b61	; 0.00277778
_float_0_50000000:		dd 0x3f000000	; 0.5
_float_360_00000000:		dd 0x43b40000	; 360
_float_45_00000000:		dd 0x42340000	; 45
_float__45_00000000:		dd 0xc2340000	; -45
_float_1024_00000000:		dd 0x44800000	; 1024
_float_0_71111113:		dd 0x3f360b61	; 0.711111
_float__1022_00000000:		dd 0xc47f8000	; -1022

