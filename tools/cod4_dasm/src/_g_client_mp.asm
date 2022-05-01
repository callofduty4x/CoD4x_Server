;Imports of g_client_mp:
	extern level
	extern _Z14CalculateRanksv
	extern scr_const
	extern g_entities
	extern _Z10Scr_NotifyP9gentity_stj
	extern _Z11G_EntUnlinkP9gentity_s
	extern _Z15SV_UnlinkEntityP9gentity_s
	extern _Z13Scr_SetStringPtj
	extern _Z19G_SetClientContentsP9gentity_s
	extern playerMins
	extern playerMaxs
	extern memcpy
	extern _ZN9EntHandle6setEntEP9gentity_s
	extern memset
	extern _Z13SV_GetUsercmdiP9usercmd_s
	extern _Z11G_SetOriginP9gentity_sPKf
	extern g_inactivity
	extern _Z14ClientEndFrameP9gentity_s
	extern _Z16ClientThink_realP9gentity_sP9usercmd_s
	extern _Z27BG_PlayerStateToEntityStateP13playerState_sP13entityState_sih
	extern _Z23G_ClientStopUsingTurretP9gentity_s
	extern level_bgs
	extern _Z18SV_GetAssignedTeamj
	extern _Z13G_InitGentityP9gentity_s
	extern _Z14SV_GetUserinfoiPci
	extern _Z16Info_ValueForKeyPKcS0_
	extern g_password
	extern com_developer
	extern _Z17Scr_PlayerConnectP9gentity_s
	extern _Z9I_stricmpPKcS0_
	extern strcmp
	extern _Z12G_FreeEntityP9gentity_s
	extern _Z14Com_PrintErroriPKcz
	extern _Z18Scr_IsSystemActiveh
	extern _Z13StopFollowingP9gentity_s
	extern _Z24HudElem_ClientDisconnectP9gentity_s
	extern _Z20Scr_PlayerDisconnectP9gentity_s
	extern _Z13Scr_AddStringPKc
	extern voice_global
	extern _Z23SV_ClientHasClientMutedii
	extern _Z23SV_ClientWantsVoiceDatai
	extern _Z19SV_QueueVoicePacketiiP13VoicePacket_t
	extern voice_deadChat
	extern voice_localEcho
	extern _Z10OnSameTeamP9gentity_sS0_
	extern _Z12AngleVectorsPKfPfS1_S1_
	extern perk_parabolicAngle
	extern cos
	extern perk_parabolicRadius
	extern floorf
	extern _Z10AngleDeltaff
	extern bg_prone_yawcap
	extern _Z17AngleNormalize360f
	extern _Z13Info_ValidatePKc
	extern _Z16SV_IsLocalClienti
	extern atoi
	extern _Z10I_strncpyzPcPKci
	extern g_compassShowEnemies
	extern _Z13SV_inSnapshotPKfi
	extern _Z20G_DObjGetWorldTagPosP9gentity_sjPf
	extern _Z22BG_GetPlayerViewOriginPK13playerState_sPfi
	extern _Z9Com_Error11errorParm_tPKcz

;Exports of g_client_mp:
	global _Z11ClientBegini
	global _Z11ClientSpawnP9gentity_sPKfS2_
	global _Z13ClientConnectit
	global _Z16ClientDisconnecti
	global _Z16G_BroadcastVoiceP9gentity_sP13VoicePacket_t
	global _Z18SetClientViewAngleP9gentity_sPKf
	global _Z21ClientUserinfoChangedi
	global _Z21G_GetNonPVSPlayerInfoP9gentity_sPfi
	global _Z21G_GetPlayerViewOriginPK13playerState_sPf


SECTION .text


;ClientBegin(int)
_Z11ClientBegini:
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
	call _Z14CalculateRanksv
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
	call _Z10Scr_NotifyP9gentity_stj
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;ClientSpawn(gentity_s*, float const*, float const*)
_Z11ClientSpawnP9gentity_sPKfS2_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x13c
	mov eax, [ebp+0x8]
	sub eax, g_entities
	sar eax, 0x2
	imul eax, eax, 0x2c0685b5
	mov [ebp-0x138], eax
	mov eax, [ebp+0x8]
	mov edi, [eax+0x15c]
	test byte [edi+0x14], 0x4
	jz _Z11ClientSpawnP9gentity_sPKfS2__10
	test dword [edi+0xb0], 0x300
	jnz _Z11ClientSpawnP9gentity_sPKfS2__20
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z11G_EntUnlinkP9gentity_s
	mov ebx, [ebp+0x8]
	cmp byte [ebx+0xf4], 0x0
	jz _Z11ClientSpawnP9gentity_sPKfS2__30
_Z11ClientSpawnP9gentity_sPKfS2__50:
	mov [esp], ebx
	call _Z15SV_UnlinkEntityP9gentity_s
	mov eax, [ebp+0x8]
	jmp _Z11ClientSpawnP9gentity_sPKfS2__40
_Z11ClientSpawnP9gentity_sPKfS2__10:
	mov ecx, eax
_Z11ClientSpawnP9gentity_sPKfS2__60:
	mov [esp], ecx
	call _Z11G_EntUnlinkP9gentity_s
	mov ebx, [ebp+0x8]
	cmp byte [ebx+0xf4], 0x0
	jnz _Z11ClientSpawnP9gentity_sPKfS2__50
_Z11ClientSpawnP9gentity_sPKfS2__30:
	mov eax, ebx
_Z11ClientSpawnP9gentity_sPKfS2__40:
	mov dword [eax+0x7c], 0x3ff
	mov eax, scr_const
	movzx eax, word [eax+0x5c]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	add eax, 0x170
	mov [esp], eax
	call _Z13Scr_SetStringPtj
	mov ecx, [ebp+0x8]
	mov dword [ecx+0x190], 0x2810011
	or byte [ecx+0xf6], 0x1
	mov byte [ecx+0x16b], 0x0
	mov [esp], ecx
	call _Z19G_SetClientContentsP9gentity_s
	mov ebx, [ebp+0x8]
	mov byte [ebx+0x16e], 0xb
	mov dword [ebx+0x180], 0x1000
	mov ecx, ebx
	add ecx, 0x108
	mov edx, playerMins
	mov eax, [edx]
	mov [ebx+0x108], eax
	mov eax, [edx+0x4]
	mov [ecx+0x4], eax
	mov eax, [edx+0x8]
	mov [ecx+0x8], eax
	add ecx, 0xc
	mov edx, playerMaxs
	mov eax, [edx]
	mov [ebx+0x114], eax
	mov eax, [edx+0x4]
	mov [ecx+0x4], eax
	mov eax, [edx+0x8]
	mov [ecx+0x8], eax
	mov eax, [edi+0xb0]
	and eax, 0x100002
	mov [ebp-0x130], eax
	lea esi, [edi+0x2f64]
	mov dword [esp+0x8], 0x110
	mov [esp+0x4], esi
	lea ecx, [ebp-0x128]
	mov [esp], ecx
	call memcpy
	mov ebx, [edi+0x158]
	mov eax, [edi+0x3168]
	mov [ebp-0x12c], eax
	mov dword [esp+0x4], 0x0
	lea eax, [edi+0x30f8]
	mov [esp], eax
	call _ZN9EntHandle6setEntEP9gentity_s
	mov dword [esp+0x8], 0x3184
	mov dword [esp+0x4], 0x0
	mov [esp], edi
	call memset
	mov dword [esp+0x8], 0x110
	lea ecx, [ebp-0x128]
	mov [esp+0x4], ecx
	mov [esp], esi
	call memcpy
	mov eax, [ebp-0x12c]
	mov [edi+0x3168], eax
	mov dword [edi+0x3074], 0xffffffff
	add ebx, 0x1
	mov [edi+0x158], ebx
	mov eax, [edi+0x2fe8]
	mov [edi+0x150], eax
	mov ecx, [ebp-0x130]
	mov [edi+0xb0], ecx
	mov ebx, [ebp-0x138]
	mov [edi+0x300c], ebx
	mov dword [edi+0x3068], 0x3ff
	mov [edi+0xdc], ebx
	mov dword [edi+0x59c], 0x3ff
	lea eax, [edi+0x2f90]
	mov [ebp-0x134], eax
	mov [esp+0x4], eax
	mov ebx, level
	mov eax, edi
	sub eax, [ebx]
	sar eax, 0x2
	imul eax, eax, 0x408b97a1
	mov [esp], eax
	call _Z13SV_GetUsercmdiP9usercmd_s
	xor dword [edi+0xb0], 0x2
	mov dword [edi+0x114], 0x3c
	mov dword [edi+0x118], 0x42700000
	mov dword [edi+0x11c], 0x0
	mov dword [edi+0x648], 0x40c00000
	mov dword [edi+0x64c], 0x3fe66666
	mov dword [edi+0xfc], 0x0
	mov dword [edi+0x100], 0x0
	mov dword [edi+0x4c], 0x0
	mov dword [edi+0x48], 0x3ff
	mov ecx, [ebp+0xc]
	mov [esp+0x4], ecx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z11G_SetOriginP9gentity_sPKf
	lea edx, [edi+0x1c]
	mov ecx, [ebp+0xc]
	mov eax, [ecx]
	mov [edi+0x1c], eax
	mov eax, [ecx+0x4]
	mov [edx+0x4], eax
	mov eax, [ecx+0x8]
	mov [edx+0x8], eax
	or dword [edi+0xc], 0x400
	mov eax, [ebp+0x10]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z18SetClientViewAngleP9gentity_sPKf
	mov eax, g_inactivity
	mov eax, [eax]
	mov eax, [eax+0xc]
	lea eax, [eax+eax*4]
	lea eax, [eax+eax*4]
	lea eax, [eax+eax*4]
	mov edx, [ebx+0x1ec]
	lea eax, [edx+eax*8]
	mov [edi+0x30cc], eax
	mov eax, [edi+0x2f94]
	mov [edi+0x3088], eax
	mov dword [ebx+0x20], 0x1
	mov eax, [ebx+0x1ec]
	mov [edi+0x316c], eax
	mov eax, [ebx+0x1ec]
	mov [edi+0x2f90], eax
	mov eax, [ebx+0x1ec]
	sub eax, 0x64
	mov [edi], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z14ClientEndFrameP9gentity_s
	mov eax, [ebp-0x134]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z16ClientThink_realP9gentity_sP9usercmd_s
	mov dword [ebx+0x20], 0x0
	mov dword [esp+0xc], 0x1
	mov dword [esp+0x8], 0x1
	mov ebx, [ebp+0x8]
	mov [esp+0x4], ebx
	mov [esp], edi
	call _Z27BG_PlayerStateToEntityStateP13playerState_sP13entityState_sih
	add esp, 0x13c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z11ClientSpawnP9gentity_sPKfS2__20:
	mov edx, [edi+0x59c]
	lea eax, [edx+edx*8]
	lea eax, [edx+eax*2]
	mov ecx, eax
	shl ecx, 0x5
	add eax, ecx
	add eax, edx
	mov edx, level
	add eax, [edx+0x4]
	mov [esp], eax
	call _Z23G_ClientStopUsingTurretP9gentity_s
	mov ecx, [ebp+0x8]
	jmp _Z11ClientSpawnP9gentity_sPKfS2__60


;ClientConnect(int, unsigned short)
_Z13ClientConnectit:
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
	call _Z18SV_GetAssignedTeamj
	mov [ebx+0x3010], eax
	mov dword [ebx+0x2f64], 0x2
	mov dword [ebx+0x3074], 0xffffffff
	mov dword [ebx+0x2f68], 0xffffffff
	mov dword [ebx+0x2f6c], 0xffffffff
	mov eax, [ebp-0x420]
	mov [esp], eax
	call _Z13G_InitGentityP9gentity_s
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
	call _Z21ClientUserinfoChangedi
	mov dword [esp+0x8], 0x400
	lea esi, [ebp-0x418]
	mov [esp+0x4], esi
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z14SV_GetUserinfoiPci
	mov eax, [ebx+0x2fd0]
	test eax, eax
	jnz _Z13ClientConnectit_10
	mov dword [esp+0x4], _cstring_password
	mov [esp], esi
	call _Z16Info_ValueForKeyPKcS0_
	mov esi, eax
	mov ebx, g_password
	mov eax, [ebx]
	mov eax, [eax+0xc]
	cmp byte [eax], 0x0
	jnz _Z13ClientConnectit_20
_Z13ClientConnectit_40:
	mov eax, com_developer
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z13ClientConnectit_30
_Z13ClientConnectit_10:
	mov edx, [ebp-0x420]
	mov [esp], edx
	call _Z17Scr_PlayerConnectP9gentity_s
	call _Z14CalculateRanksv
	xor eax, eax
_Z13ClientConnectit_50:
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z13ClientConnectit_20:
	mov dword [esp+0x4], _cstring_none
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z13ClientConnectit_40
	mov eax, [ebx]
	mov [esp+0x4], esi
	mov eax, [eax+0xc]
	mov [esp], eax
	call strcmp
	test eax, eax
	jz _Z13ClientConnectit_40
	mov eax, [ebp-0x420]
	mov [esp], eax
	call _Z12G_FreeEntityP9gentity_s
	mov eax, _cstring_game_invalidpass
	jmp _Z13ClientConnectit_50
_Z13ClientConnectit_30:
	mov dword [esp+0x4], _cstring_clients_cant_con
	mov dword [esp], 0x10
	call _Z14Com_PrintErroriPKcz
	mov eax, _cstring_game_invalidserv
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	add [eax], al


;ClientDisconnect(int)
_Z16ClientDisconnecti:
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
	call _Z18Scr_IsSystemActiveh
	test eax, eax
	jnz _Z16ClientDisconnecti_10
_Z16ClientDisconnecti_60:
	mov ebx, [edi+0x1e4]
	test ebx, ebx
	jle _Z16ClientDisconnecti_20
	xor esi, esi
	xor ebx, ebx
	mov edx, edi
	mov [ebp-0x28], edi
	xor edi, edi
	jmp _Z16ClientDisconnecti_30
_Z16ClientDisconnecti_40:
	add esi, 0x1
	add edi, 0x273
	add ebx, 0x3184
	cmp esi, [edx+0x1e4]
	jge _Z16ClientDisconnecti_20
_Z16ClientDisconnecti_30:
	mov eax, ebx
	add eax, [edx]
	mov ecx, [eax+0x2f8c]
	test ecx, ecx
	jz _Z16ClientDisconnecti_40
	cmp dword [eax+0x2f64], 0x2
	jnz _Z16ClientDisconnecti_40
	mov ecx, [ebp-0x24]
	cmp ecx, [eax+0x3074]
	jnz _Z16ClientDisconnecti_40
	lea eax, [edi+esi]
	add eax, g_entities
	mov [esp], eax
	call _Z13StopFollowingP9gentity_s
	mov edx, [ebp-0x28]
	jmp _Z16ClientDisconnecti_40
_Z16ClientDisconnecti_20:
	mov eax, [ebp-0x20]
	mov [esp], eax
	call _Z24HudElem_ClientDisconnectP9gentity_s
	mov dword [esp], 0x1
	call _Z18Scr_IsSystemActiveh
	test eax, eax
	jz _Z16ClientDisconnecti_50
	mov edx, [ebp-0x20]
	mov [esp], edx
	call _Z20Scr_PlayerDisconnectP9gentity_s
_Z16ClientDisconnecti_50:
	mov ecx, [ebp-0x20]
	mov [esp], ecx
	call _Z12G_FreeEntityP9gentity_s
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
	jmp _Z14CalculateRanksv
_Z16ClientDisconnecti_10:
	mov dword [esp], _cstring_disconnect
	call _Z13Scr_AddStringPKc
	mov dword [esp], _cstring_1
	call _Z13Scr_AddStringPKc
	mov dword [esp+0x8], 0x2
	mov eax, scr_const
	movzx eax, word [eax+0x134]
	mov [esp+0x4], eax
	mov eax, [ebp-0x20]
	mov [esp], eax
	call _Z10Scr_NotifyP9gentity_stj
	jmp _Z16ClientDisconnecti_60
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
	jmp _Z16G_BroadcastVoiceP9gentity_sP13VoicePacket_t_10
_Z16G_BroadcastVoiceP9gentity_sP13VoicePacket_t_70:
	mov eax, voice_global
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z16G_BroadcastVoiceP9gentity_sP13VoicePacket_t_20
	mov edx, [ebp+0x8]
	mov edx, [edx+0x15c]
	mov [ebp-0x44], edx
	mov ecx, edx
_Z16G_BroadcastVoiceP9gentity_sP13VoicePacket_t_140:
	mov edx, [ebx+0x2f64]
	mov eax, [ecx+0x2f64]
	cmp edx, eax
	jz _Z16G_BroadcastVoiceP9gentity_sP13VoicePacket_t_30
_Z16G_BroadcastVoiceP9gentity_sP13VoicePacket_t_80:
	sub edx, 0x1
	jz _Z16G_BroadcastVoiceP9gentity_sP13VoicePacket_t_40
	sub eax, 0x1
	jz _Z16G_BroadcastVoiceP9gentity_sP13VoicePacket_t_40
_Z16G_BroadcastVoiceP9gentity_sP13VoicePacket_t_60:
	add edi, 0x1
	add dword [ebp-0x4c], 0x273
	add dword [ebp-0x48], 0x4cc
	cmp edi, 0x40
	jz _Z16G_BroadcastVoiceP9gentity_sP13VoicePacket_t_50
_Z16G_BroadcastVoiceP9gentity_sP13VoicePacket_t_10:
	mov esi, [ebp-0x4c]
	add esi, edi
	add esi, g_entities
	mov ebx, [esi+0x15c]
	cmp byte [esi+0x100], 0x0
	jz _Z16G_BroadcastVoiceP9gentity_sP13VoicePacket_t_60
	test ebx, ebx
	jz _Z16G_BroadcastVoiceP9gentity_sP13VoicePacket_t_60
	cmp dword [ebx+0x2f64], 0x3
	jnz _Z16G_BroadcastVoiceP9gentity_sP13VoicePacket_t_70
	mov eax, [ebp+0x8]
	mov eax, [eax+0x15c]
	mov [ebp-0x44], eax
	mov ecx, eax
	mov edx, [ebx+0x2f64]
	mov eax, [ecx+0x2f64]
	cmp edx, eax
	jnz _Z16G_BroadcastVoiceP9gentity_sP13VoicePacket_t_80
_Z16G_BroadcastVoiceP9gentity_sP13VoicePacket_t_30:
	cmp [ebp+0x8], esi
	jz _Z16G_BroadcastVoiceP9gentity_sP13VoicePacket_t_90
_Z16G_BroadcastVoiceP9gentity_sP13VoicePacket_t_100:
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z23SV_ClientHasClientMutedii
	test al, al
	jnz _Z16G_BroadcastVoiceP9gentity_sP13VoicePacket_t_60
	mov [esp], edi
	call _Z23SV_ClientWantsVoiceDatai
	test al, al
	jz _Z16G_BroadcastVoiceP9gentity_sP13VoicePacket_t_60
	mov ecx, [ebp+0xc]
	mov [esp+0x8], ecx
	mov [esp+0x4], edi
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov [esp], eax
	call _Z19SV_QueueVoicePacketiiP13VoicePacket_t
	add edi, 0x1
	add dword [ebp-0x4c], 0x273
	add dword [ebp-0x48], 0x4cc
	cmp edi, 0x40
	jnz _Z16G_BroadcastVoiceP9gentity_sP13VoicePacket_t_10
_Z16G_BroadcastVoiceP9gentity_sP13VoicePacket_t_50:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z16G_BroadcastVoiceP9gentity_sP13VoicePacket_t_40:
	mov eax, voice_deadChat
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z16G_BroadcastVoiceP9gentity_sP13VoicePacket_t_60
	cmp [ebp+0x8], esi
	jnz _Z16G_BroadcastVoiceP9gentity_sP13VoicePacket_t_100
_Z16G_BroadcastVoiceP9gentity_sP13VoicePacket_t_90:
	mov eax, voice_localEcho
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z16G_BroadcastVoiceP9gentity_sP13VoicePacket_t_60
	jmp _Z16G_BroadcastVoiceP9gentity_sP13VoicePacket_t_100
_Z16G_BroadcastVoiceP9gentity_sP13VoicePacket_t_20:
	mov [esp+0x4], esi
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z10OnSameTeamP9gentity_sS0_
	test eax, eax
	jnz _Z16G_BroadcastVoiceP9gentity_sP13VoicePacket_t_110
	mov edx, [ebp+0x8]
	mov edx, [edx+0x15c]
	mov [ebp-0x44], edx
	mov eax, [edx+0x3010]
	test eax, eax
	jz _Z16G_BroadcastVoiceP9gentity_sP13VoicePacket_t_120
	test byte [ebx+0x5fd], 0x2
	jz _Z16G_BroadcastVoiceP9gentity_sP13VoicePacket_t_60
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	lea eax, [ebp-0x24]
	mov [esp+0x4], eax
	mov ecx, [ebp-0x48]
	mov [esp], ecx
	call _Z12AngleVectorsPKfPfS1_S1_
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
	xorps xmm0, [_data16_80000000]
	ucomiss xmm0, [_float_0_00000000]
	jb _Z16G_BroadcastVoiceP9gentity_sP13VoicePacket_t_130
	movss xmm0, dword [_float_1_00000000]
_Z16G_BroadcastVoiceP9gentity_sP13VoicePacket_t_150:
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
	ja _Z16G_BroadcastVoiceP9gentity_sP13VoicePacket_t_60
	mov eax, perk_parabolicRadius
	mov eax, [eax]
	movss xmm0, dword [ebp-0x2c]
	ucomiss xmm0, [eax+0xc]
	ja _Z16G_BroadcastVoiceP9gentity_sP13VoicePacket_t_60
_Z16G_BroadcastVoiceP9gentity_sP13VoicePacket_t_120:
	mov ebx, [esi+0x15c]
	mov ecx, [ebp-0x44]
	jmp _Z16G_BroadcastVoiceP9gentity_sP13VoicePacket_t_140
_Z16G_BroadcastVoiceP9gentity_sP13VoicePacket_t_110:
	mov ecx, [ebp+0x8]
	mov ecx, [ecx+0x15c]
	mov [ebp-0x44], ecx
	mov ebx, [esi+0x15c]
	jmp _Z16G_BroadcastVoiceP9gentity_sP13VoicePacket_t_140
_Z16G_BroadcastVoiceP9gentity_sP13VoicePacket_t_130:
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, dword [ebp-0x2c]
	jmp _Z16G_BroadcastVoiceP9gentity_sP13VoicePacket_t_150
	nop


;SetClientViewAngle(gentity_s*, float const*)
_Z18SetClientViewAngleP9gentity_sPKf:
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
	jz _Z18SetClientViewAngleP9gentity_sPKf_10
	test dword [esi+0xb0], 0x300
	jz _Z18SetClientViewAngleP9gentity_sPKf_20
_Z18SetClientViewAngleP9gentity_sPKf_10:
	xor ebx, ebx
_Z18SetClientViewAngleP9gentity_sPKf_40:
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
	jz _Z18SetClientViewAngleP9gentity_sPKf_30
	mov esi, [edi+0x15c]
	jmp _Z18SetClientViewAngleP9gentity_sPKf_40
_Z18SetClientViewAngleP9gentity_sPKf_30:
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
_Z18SetClientViewAngleP9gentity_sPKf_20:
	mov [esp+0x4], edx
	mov eax, [esi+0x58c]
	mov [esp], eax
	call _Z10AngleDeltaff
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
	ja _Z18SetClientViewAngleP9gentity_sPKf_50
	movaps xmm0, xmm1
	xorps xmm0, [_data16_80000000]
	ucomiss xmm0, xmm2
	ja _Z18SetClientViewAngleP9gentity_sPKf_60
_Z18SetClientViewAngleP9gentity_sPKf_110:
	mov eax, [ebp-0x24]
	mov [esp+0x4], eax
	mov eax, [edi+0x15c]
	mov eax, [eax+0x594]
	mov [esp], eax
	call _Z10AngleDeltaff
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
	ja _Z18SetClientViewAngleP9gentity_sPKf_70
	ucomiss xmm0, [_float__45_00000000]
	jp _Z18SetClientViewAngleP9gentity_sPKf_80
	jae _Z18SetClientViewAngleP9gentity_sPKf_80
	movss xmm2, dword [_float_45_00000000]
	movaps xmm1, xmm0
	addss xmm1, xmm2
	jmp _Z18SetClientViewAngleP9gentity_sPKf_90
_Z18SetClientViewAngleP9gentity_sPKf_50:
	subss xmm2, xmm1
	movaps xmm1, xmm2
_Z18SetClientViewAngleP9gentity_sPKf_130:
	mov eax, [edi+0x15c]
	movaps xmm0, xmm1
	addss xmm0, [eax+0x68]
	movss [eax+0x68], xmm0
	ucomiss xmm1, [_float_0_00000000]
	jbe _Z18SetClientViewAngleP9gentity_sPKf_100
	mov eax, [edi+0x15c]
	mov edx, [edx]
	movss xmm0, dword [eax+0x58c]
	subss xmm0, [edx+0xc]
	movss [esp], xmm0
	call _Z17AngleNormalize360f
	fstp dword [ebp-0x20]
	jmp _Z18SetClientViewAngleP9gentity_sPKf_110
_Z18SetClientViewAngleP9gentity_sPKf_70:
	movss xmm2, dword [_float_45_00000000]
	movaps xmm1, xmm0
	subss xmm1, xmm2
_Z18SetClientViewAngleP9gentity_sPKf_90:
	mov eax, [edi+0x15c]
	movaps xmm0, xmm1
	addss xmm0, [eax+0x64]
	movss [eax+0x64], xmm0
	ucomiss xmm1, [_float_0_00000000]
	jbe _Z18SetClientViewAngleP9gentity_sPKf_120
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
	jmp _Z18SetClientViewAngleP9gentity_sPKf_10
_Z18SetClientViewAngleP9gentity_sPKf_80:
	mov esi, [edi+0x15c]
	jmp _Z18SetClientViewAngleP9gentity_sPKf_10
_Z18SetClientViewAngleP9gentity_sPKf_60:
	addss xmm1, xmm2
	jmp _Z18SetClientViewAngleP9gentity_sPKf_130
_Z18SetClientViewAngleP9gentity_sPKf_120:
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
	jmp _Z18SetClientViewAngleP9gentity_sPKf_10
_Z18SetClientViewAngleP9gentity_sPKf_100:
	mov eax, [edi+0x15c]
	mov edx, [edx]
	movss xmm0, dword [eax+0x58c]
	addss xmm0, [edx+0xc]
	movss [esp], xmm0
	call _Z17AngleNormalize360f
	fstp dword [ebp-0x20]
	jmp _Z18SetClientViewAngleP9gentity_sPKf_110


;ClientUserinfoChanged(int)
_Z21ClientUserinfoChangedi:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x83c
	mov edx, [ebp+0x8]
	lea eax, [edx+edx*8]
	lea eax, [edx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	add eax, [ebp+0x8]
	mov edx, g_entities
	mov eax, [eax+edx+0x15c]
	mov [ebp-0x82c], eax
	mov dword [esp+0x8], 0x400
	lea ebx, [ebp-0x818]
	mov [esp+0x4], ebx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z14SV_GetUserinfoiPci
	mov [esp], ebx
	call _Z13Info_ValidatePKc
	test eax, eax
	jz _Z21ClientUserinfoChangedi_10
_Z21ClientUserinfoChangedi_200:
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z16SV_IsLocalClienti
	mov edx, [ebp-0x82c]
	mov [edx+0x2fd0], eax
	mov dword [esp+0x4], _cstring_cg_predictitems
	mov [esp], ebx
	call _Z16Info_ValueForKeyPKcS0_
	mov [esp], eax
	call atoi
	test eax, eax
	setnz al
	movzx eax, al
	mov edx, [ebp-0x82c]
	mov [edx+0x2fd4], eax
	cmp dword [edx+0x2f8c], 0x2
	jz _Z21ClientUserinfoChangedi_20
_Z21ClientUserinfoChangedi_130:
	mov esi, [ebp-0x82c]
	add esi, 0x3048
	mov dword [esp+0x8], 0x400
	mov [esp+0x4], esi
	lea eax, [ebp-0x418]
	mov [esp], eax
	call _Z10I_strncpyzPcPKci
	mov dword [esp+0x4], _cstring_name
	mov [esp], ebx
	call _Z16Info_ValueForKeyPKcS0_
	mov edx, [ebp-0x82c]
	mov byte [edx+0x3048], 0x0
	mov ecx, esi
	xor edi, edi
	mov dword [ebp-0x820], 0x0
	mov dword [ebp-0x81c], 0x0
	movzx edx, byte [eax]
	lea ebx, [eax+0x1]
	test dl, dl
	jz _Z21ClientUserinfoChangedi_30
_Z21ClientUserinfoChangedi_80:
	cmp byte [esi], 0x0
	jnz _Z21ClientUserinfoChangedi_40
	cmp dl, 0x20
	jz _Z21ClientUserinfoChangedi_50
_Z21ClientUserinfoChangedi_40:
	cmp dl, 0x5e
	jz _Z21ClientUserinfoChangedi_60
	cmp dl, 0x20
	jz _Z21ClientUserinfoChangedi_70
	mov dword [ebp-0x81c], 0x0
_Z21ClientUserinfoChangedi_110:
	cmp edi, 0xe
	jg _Z21ClientUserinfoChangedi_30
	mov [ecx], dl
	add ecx, 0x1
	add dword [ebp-0x820], 0x1
	add edi, 0x1
_Z21ClientUserinfoChangedi_50:
	mov eax, ebx
_Z21ClientUserinfoChangedi_100:
	movzx edx, byte [eax]
	lea ebx, [eax+0x1]
	test dl, dl
	jnz _Z21ClientUserinfoChangedi_80
_Z21ClientUserinfoChangedi_30:
	mov byte [ecx], 0x0
	cmp byte [esi], 0x0
	jz _Z21ClientUserinfoChangedi_90
	mov eax, [ebp-0x820]
	test eax, eax
	jz _Z21ClientUserinfoChangedi_90
_Z21ClientUserinfoChangedi_120:
	mov dword [esp+0x8], 0x10
	mov [esp+0x4], esi
	mov eax, [ebp-0x82c]
	add eax, 0x2fd8
	mov [esp], eax
	call _Z10I_strncpyzPcPKci
_Z21ClientUserinfoChangedi_240:
	mov edx, [ebp+0x8]
	lea eax, [edx+edx*8]
	mov edx, eax
	shl edx, 0x4
	add eax, edx
	mov edx, [ebp+0x8]
	lea eax, [edx+eax*2]
	mov edx, level_bgs
	lea eax, [edx+eax*4+0x99a00]
	lea ebx, [eax+0x4]
	mov edx, [ebp+0x8]
	mov [ebx+0x8], edx
	mov dword [esp+0x8], 0x10
	mov [esp+0x4], esi
	add eax, 0x10
	mov [esp], eax
	call _Z10I_strncpyzPcPKci
	mov edx, [ebp-0x82c]
	mov eax, [edx+0x3010]
	mov [ebx+0x1c], eax
	add esp, 0x83c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z21ClientUserinfoChangedi_60:
	lea ebx, [eax+0x2]
	mov eax, ebx
	jmp _Z21ClientUserinfoChangedi_100
_Z21ClientUserinfoChangedi_70:
	add dword [ebp-0x81c], 0x1
	cmp dword [ebp-0x81c], 0x3
	jle _Z21ClientUserinfoChangedi_110
	mov eax, ebx
	jmp _Z21ClientUserinfoChangedi_100
_Z21ClientUserinfoChangedi_90:
	mov dword [esp+0x8], 0xf
	mov dword [esp+0x4], _cstring_unnamedplayer
	mov [esp], esi
	call _Z10I_strncpyzPcPKci
	jmp _Z21ClientUserinfoChangedi_120
_Z21ClientUserinfoChangedi_20:
	mov eax, level
	mov eax, [eax+0x218]
	test eax, eax
	jz _Z21ClientUserinfoChangedi_130
	mov dword [esp+0x4], _cstring_name
	mov [esp], ebx
	call _Z16Info_ValueForKeyPKcS0_
	mov esi, [ebp-0x82c]
	add esi, 0x2fd8
	mov edx, [ebp-0x82c]
	mov byte [edx+0x2fd8], 0x0
	mov ecx, esi
	xor edi, edi
	mov dword [ebp-0x828], 0x0
	mov dword [ebp-0x824], 0x0
_Z21ClientUserinfoChangedi_190:
	movzx edx, byte [eax]
	lea ebx, [eax+0x1]
	test dl, dl
	jz _Z21ClientUserinfoChangedi_140
	cmp byte [esi], 0x0
	jnz _Z21ClientUserinfoChangedi_150
	cmp dl, 0x20
	jz _Z21ClientUserinfoChangedi_160
_Z21ClientUserinfoChangedi_150:
	cmp dl, 0x5e
	jz _Z21ClientUserinfoChangedi_170
	cmp dl, 0x20
	jz _Z21ClientUserinfoChangedi_180
	mov dword [ebp-0x824], 0x0
_Z21ClientUserinfoChangedi_210:
	cmp edi, 0xe
	jg _Z21ClientUserinfoChangedi_140
	mov [ecx], dl
	add ecx, 0x1
	add dword [ebp-0x828], 0x1
	add edi, 0x1
_Z21ClientUserinfoChangedi_160:
	mov eax, ebx
	jmp _Z21ClientUserinfoChangedi_190
_Z21ClientUserinfoChangedi_10:
	mov dword [ebp-0x818], 0x6d616e5c
	mov dword [ebp-0x814], 0x61625c65
	mov dword [ebp-0x810], 0x666e6964
	mov word [ebp-0x80c], 0x6f
	jmp _Z21ClientUserinfoChangedi_200
_Z21ClientUserinfoChangedi_170:
	lea ebx, [eax+0x2]
	mov eax, ebx
	jmp _Z21ClientUserinfoChangedi_190
_Z21ClientUserinfoChangedi_180:
	add dword [ebp-0x824], 0x1
	cmp dword [ebp-0x824], 0x3
	jle _Z21ClientUserinfoChangedi_210
	mov eax, ebx
	jmp _Z21ClientUserinfoChangedi_190
_Z21ClientUserinfoChangedi_140:
	mov byte [ecx], 0x0
	cmp byte [esi], 0x0
	jz _Z21ClientUserinfoChangedi_220
	mov eax, [ebp-0x828]
	test eax, eax
	jnz _Z21ClientUserinfoChangedi_230
_Z21ClientUserinfoChangedi_220:
	mov dword [esp+0x8], 0xf
	mov dword [esp+0x4], _cstring_unnamedplayer
	mov [esp], esi
	call _Z10I_strncpyzPcPKci
	mov eax, [ebp-0x82c]
	lea esi, [eax+0x3048]
	jmp _Z21ClientUserinfoChangedi_240
_Z21ClientUserinfoChangedi_230:
	mov eax, [ebp-0x82c]
	lea esi, [eax+0x3048]
	jmp _Z21ClientUserinfoChangedi_240
	nop


;G_GetNonPVSPlayerInfo(gentity_s*, float*, int)
_Z21G_GetNonPVSPlayerInfoP9gentity_sPfi:
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
	jz _Z21G_GetNonPVSPlayerInfoP9gentity_sPfi_10
	mov eax, g_compassShowEnemies
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z21G_GetNonPVSPlayerInfoP9gentity_sPfi_20
_Z21G_GetNonPVSPlayerInfoP9gentity_sPfi_150:
	mov eax, 0x1
_Z21G_GetNonPVSPlayerInfoP9gentity_sPfi_160:
	test esi, esi
	jz _Z21G_GetNonPVSPlayerInfoP9gentity_sPfi_30
_Z21G_GetNonPVSPlayerInfoP9gentity_sPfi_140:
	cmp dword [ebp+0x10], 0x3ff
	jz _Z21G_GetNonPVSPlayerInfoP9gentity_sPfi_40
	mov edi, [ebp+0x10]
	add edi, 0x1
_Z21G_GetNonPVSPlayerInfoP9gentity_sPfi_170:
	test al, al
	jz _Z21G_GetNonPVSPlayerInfoP9gentity_sPfi_50
	xor esi, esi
	jmp _Z21G_GetNonPVSPlayerInfoP9gentity_sPfi_60
_Z21G_GetNonPVSPlayerInfoP9gentity_sPfi_80:
	add esi, 0x1
	cmp esi, 0x40
	jz _Z21G_GetNonPVSPlayerInfoP9gentity_sPfi_10
_Z21G_GetNonPVSPlayerInfoP9gentity_sPfi_60:
	lea eax, [edi+esi]
	mov ecx, eax
	and ecx, 0x8000003f
	js _Z21G_GetNonPVSPlayerInfoP9gentity_sPfi_70
_Z21G_GetNonPVSPlayerInfoP9gentity_sPfi_180:
	lea eax, [ecx+ecx*8]
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	lea ebx, [eax+ecx]
	add ebx, g_entities
	cmp byte [ebx+0x100], 0x0
	jz _Z21G_GetNonPVSPlayerInfoP9gentity_sPfi_80
	mov eax, [ebx+0x15c]
	test eax, eax
	jz _Z21G_GetNonPVSPlayerInfoP9gentity_sPfi_80
	mov eax, [eax+0x2f64]
	test eax, eax
	jnz _Z21G_GetNonPVSPlayerInfoP9gentity_sPfi_80
	cmp [ebp+0x8], ebx
	jz _Z21G_GetNonPVSPlayerInfoP9gentity_sPfi_80
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov eax, [ebp+0xc]
	mov [esp], eax
	call _Z13SV_inSnapshotPKfi
	test eax, eax
	jnz _Z21G_GetNonPVSPlayerInfoP9gentity_sPfi_80
_Z21G_GetNonPVSPlayerInfoP9gentity_sPfi_330:
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
	jle _Z21G_GetNonPVSPlayerInfoP9gentity_sPfi_90
	cvtsi2ss xmm0, eax
	movss xmm2, dword [_float_1024_00000000]
	divss xmm2, xmm0
	movss xmm3, dword [_float_1_00000000]
_Z21G_GetNonPVSPlayerInfoP9gentity_sPfi_200:
	cmp edx, 0x400
	jle _Z21G_GetNonPVSPlayerInfoP9gentity_sPfi_100
	cvtsi2ss xmm0, edx
	movss xmm1, dword [_float_1024_00000000]
	divss xmm1, xmm0
_Z21G_GetNonPVSPlayerInfoP9gentity_sPfi_260:
	ucomiss xmm3, xmm2
	ja _Z21G_GetNonPVSPlayerInfoP9gentity_sPfi_110
	ucomiss xmm3, xmm1
	ja _Z21G_GetNonPVSPlayerInfoP9gentity_sPfi_110
_Z21G_GetNonPVSPlayerInfoP9gentity_sPfi_280:
	cmp eax, 0x400
	jle _Z21G_GetNonPVSPlayerInfoP9gentity_sPfi_120
	mov eax, 0x402
_Z21G_GetNonPVSPlayerInfoP9gentity_sPfi_240:
	cmp edx, 0x400
	jle _Z21G_GetNonPVSPlayerInfoP9gentity_sPfi_130
	mov esi, 0x402
_Z21G_GetNonPVSPlayerInfoP9gentity_sPfi_220:
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
_Z21G_GetNonPVSPlayerInfoP9gentity_sPfi_30:
	test al, al
	jnz _Z21G_GetNonPVSPlayerInfoP9gentity_sPfi_140
_Z21G_GetNonPVSPlayerInfoP9gentity_sPfi_10:
	xor ecx, ecx
	mov eax, ecx
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z21G_GetNonPVSPlayerInfoP9gentity_sPfi_20:
	mov eax, level
	cmp byte [esi+eax+0x214], 0x0
	jnz _Z21G_GetNonPVSPlayerInfoP9gentity_sPfi_150
	mov ecx, [edx+0x3178]
	test ecx, ecx
	jnz _Z21G_GetNonPVSPlayerInfoP9gentity_sPfi_150
	xor eax, eax
	jmp _Z21G_GetNonPVSPlayerInfoP9gentity_sPfi_160
_Z21G_GetNonPVSPlayerInfoP9gentity_sPfi_40:
	xor edi, edi
	jmp _Z21G_GetNonPVSPlayerInfoP9gentity_sPfi_170
_Z21G_GetNonPVSPlayerInfoP9gentity_sPfi_70:
	sub ecx, 0x1
	or ecx, 0xffffffc0
	add ecx, 0x1
	jmp _Z21G_GetNonPVSPlayerInfoP9gentity_sPfi_180
_Z21G_GetNonPVSPlayerInfoP9gentity_sPfi_90:
	cmp eax, 0xfffffc02
	jl _Z21G_GetNonPVSPlayerInfoP9gentity_sPfi_190
	movss xmm2, dword [_float_1_00000000]
	movaps xmm3, xmm2
	jmp _Z21G_GetNonPVSPlayerInfoP9gentity_sPfi_200
_Z21G_GetNonPVSPlayerInfoP9gentity_sPfi_130:
	cmp edx, 0xfffffc02
	jge _Z21G_GetNonPVSPlayerInfoP9gentity_sPfi_210
	mov esi, 0xfffffc04
	jmp _Z21G_GetNonPVSPlayerInfoP9gentity_sPfi_220
_Z21G_GetNonPVSPlayerInfoP9gentity_sPfi_120:
	cmp eax, 0xfffffc02
	jge _Z21G_GetNonPVSPlayerInfoP9gentity_sPfi_230
	mov eax, 0xfffffc04
	jmp _Z21G_GetNonPVSPlayerInfoP9gentity_sPfi_240
_Z21G_GetNonPVSPlayerInfoP9gentity_sPfi_100:
	cmp edx, 0xfffffc02
	jl _Z21G_GetNonPVSPlayerInfoP9gentity_sPfi_250
	movaps xmm1, xmm3
	jmp _Z21G_GetNonPVSPlayerInfoP9gentity_sPfi_260
_Z21G_GetNonPVSPlayerInfoP9gentity_sPfi_110:
	ucomiss xmm1, xmm2
	ja _Z21G_GetNonPVSPlayerInfoP9gentity_sPfi_270
	ucomiss xmm2, xmm1
	jbe _Z21G_GetNonPVSPlayerInfoP9gentity_sPfi_280
	cvtsi2ss xmm0, eax
	mulss xmm1, xmm0
	cvttss2si eax, xmm1
	jmp _Z21G_GetNonPVSPlayerInfoP9gentity_sPfi_280
_Z21G_GetNonPVSPlayerInfoP9gentity_sPfi_210:
	lea esi, [edx+0x2]
	jmp _Z21G_GetNonPVSPlayerInfoP9gentity_sPfi_220
_Z21G_GetNonPVSPlayerInfoP9gentity_sPfi_190:
	cvtsi2ss xmm0, eax
	movss xmm2, dword [_float__1022_00000000]
	divss xmm2, xmm0
	movss xmm3, dword [_float_1_00000000]
	jmp _Z21G_GetNonPVSPlayerInfoP9gentity_sPfi_200
_Z21G_GetNonPVSPlayerInfoP9gentity_sPfi_230:
	add eax, 0x2
	jmp _Z21G_GetNonPVSPlayerInfoP9gentity_sPfi_240
_Z21G_GetNonPVSPlayerInfoP9gentity_sPfi_250:
	cvtsi2ss xmm0, edx
	movss xmm1, dword [_float__1022_00000000]
	divss xmm1, xmm0
	jmp _Z21G_GetNonPVSPlayerInfoP9gentity_sPfi_260
_Z21G_GetNonPVSPlayerInfoP9gentity_sPfi_270:
	cvtsi2ss xmm0, edx
	mulss xmm0, xmm2
	cvttss2si edx, xmm0
	jmp _Z21G_GetNonPVSPlayerInfoP9gentity_sPfi_280
_Z21G_GetNonPVSPlayerInfoP9gentity_sPfi_50:
	mov dword [ebp-0x1c], 0x0
_Z21G_GetNonPVSPlayerInfoP9gentity_sPfi_320:
	mov edx, [ebp-0x1c]
	lea eax, [edi+edx]
	mov ecx, eax
	and ecx, 0x8000003f
	jns _Z21G_GetNonPVSPlayerInfoP9gentity_sPfi_290
	sub ecx, 0x1
	or ecx, 0xffffffc0
	add ecx, 0x1
_Z21G_GetNonPVSPlayerInfoP9gentity_sPfi_290:
	lea eax, [ecx+ecx*8]
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	lea ebx, [eax+ecx]
	add ebx, g_entities
	cmp byte [ebx+0x100], 0x0
	jz _Z21G_GetNonPVSPlayerInfoP9gentity_sPfi_300
	mov eax, [ebx+0x15c]
	test eax, eax
	jz _Z21G_GetNonPVSPlayerInfoP9gentity_sPfi_300
	mov edx, [eax+0x2f64]
	test edx, edx
	jnz _Z21G_GetNonPVSPlayerInfoP9gentity_sPfi_300
	cmp esi, [eax+0x3010]
	jz _Z21G_GetNonPVSPlayerInfoP9gentity_sPfi_310
_Z21G_GetNonPVSPlayerInfoP9gentity_sPfi_300:
	add dword [ebp-0x1c], 0x1
	cmp dword [ebp-0x1c], 0x40
	jnz _Z21G_GetNonPVSPlayerInfoP9gentity_sPfi_320
	jmp _Z21G_GetNonPVSPlayerInfoP9gentity_sPfi_10
_Z21G_GetNonPVSPlayerInfoP9gentity_sPfi_310:
	cmp [ebp+0x8], ebx
	jz _Z21G_GetNonPVSPlayerInfoP9gentity_sPfi_300
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov eax, [ebp+0xc]
	mov [esp], eax
	call _Z13SV_inSnapshotPKfi
	test eax, eax
	jnz _Z21G_GetNonPVSPlayerInfoP9gentity_sPfi_300
	jmp _Z21G_GetNonPVSPlayerInfoP9gentity_sPfi_330
	nop


;G_GetPlayerViewOrigin(playerState_s const*, float*)
_Z21G_GetPlayerViewOriginPK13playerState_sPf:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov edx, [ebp+0x8]
	mov ecx, [ebp+0xc]
	test dword [edx+0xb0], 0x300
	jz _Z21G_GetPlayerViewOriginPK13playerState_sPf_10
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
	call _Z20G_DObjGetWorldTagPosP9gentity_sjPf
	test eax, eax
	jz _Z21G_GetPlayerViewOriginPK13playerState_sPf_20
	leave
	ret
_Z21G_GetPlayerViewOriginPK13playerState_sPf_10:
	mov eax, level
	mov eax, [eax+0x1ec]
	mov [esp+0x8], eax
	mov [esp+0x4], ecx
	mov [esp], edx
	call _Z22BG_GetPlayerViewOriginPK13playerState_sPfi
	leave
	ret
_Z21G_GetPlayerViewOriginPK13playerState_sPf_20:
	mov dword [ebp+0xc], _cstring_g_getplayerviewo
	mov dword [ebp+0x8], 0x2
	leave
	jmp _Z9Com_Error11errorParm_tPKcz


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
_cstring_g_getplayerviewo:		db 015h,"G_GetPlayerViewOrigin: Couldn",27h,"t find [tag_player] on turret",0ah,0



;All constant floats and doubles:
SECTION .rdata
_data16_80000000:		dd 0x80000000, 0x0, 0x0, 0x0	; OWORD
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

