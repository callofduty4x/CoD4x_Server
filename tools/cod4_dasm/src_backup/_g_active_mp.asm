;Imports of g_active_mp:
	extern g_entities
	extern bgs
	extern level_bgs
	extern _Z13SV_GetUsercmdiP9usercmd_s
	extern level
	extern g_synchronousClients
	extern _Z14G_SetFixedLinkP9gentity_si
	extern _Z11G_SetOriginP9gentity_sPKf
	extern _Z10G_SetAngleP9gentity_sPKf
	extern _Z13SV_LinkEntityP9gentity_s
	extern entityHandlers
	extern _Z18Scr_IsSystemActiveh
	extern _Z13Scr_AddEntityP9gentity_s
	extern scr_const
	extern _Z10Scr_NotifyP9gentity_stj
	extern _Z19BG_WeaponFireRecoilPK13playerState_sPfS2_
	extern _Z7crandomv
	extern _Z13Vec2NormalizePf
	extern g_playerCollisionEjectSpeed
	extern g_gravity
	extern _Z11G_ModelNamei
	extern _Z18SL_ConvertToStringj
	extern strcmp
	extern _Z10G_TagIndexPKc
	extern _Z10I_strncpyzPcPKci
	extern _Z19G_VehPlayerRideSlotP9gentity_si
	extern _Z11ClientSpawnP9gentity_sPKfS2_
	extern _Z16Com_PrintWarningiPKcz
	extern _Z24Player_UpdateCursorHintsP9gentity_s
	extern g_smoothClients
	extern _Z27BG_PlayerStateToEntityStateP13playerState_sP13entityState_sih
	extern _Z21G_GetPlayerViewOriginPK13playerState_sPf
	extern _Z21G_GetNonPVSPlayerInfoP9gentity_sPfi
	extern _Z17Com_GetServerDObji
	extern _Z19BG_UpdatePlayerDObjiP6DObj_sP13entityState_sP12clientInfo_ti
	extern _Z18BG_PlayerAnimationiPK13entityState_sP12clientInfo_t
	extern g_debugLocDamage
	extern _Z13SV_DObjExistsP9gentity_s
	extern _Z14G_DObjCalcPoseP9gentity_sPi
	extern _Z19SV_XModelDebugBoxesP9gentity_s
	extern _Z2vaPKcz
	extern colorYellow
	extern _Z23CL_AddDebugStarWithTextPKfS0_S0_PKcfii
	extern _Z18SV_SetConfigstringiPKc
	extern _Z14G_SafeDObjFreeP9gentity_s
	extern _Z19turret_think_clientP9gentity_s
	extern memset
	extern _Z5PmoveP7pmove_t
	extern _Z15SV_UnlinkEntityP9gentity_s
	extern _Z17Cmd_FollowCycle_fP9gentity_si
	extern _Z13StopFollowingP9gentity_s
	extern _Z15CM_AreaEntitiesPKfS0_Piii
	extern _Z19ExpandBoundsToWidthPfS_
	extern _Z16SV_EntityContactPKfS0_PK9gentity_s
	extern _Z20BG_PlayerTouchesItemPK13playerState_sPK13entityState_si
	extern _Z11BG_GetSpeedPK13playerState_si
	extern g_speed
	extern _Z22BG_CalculateViewAnglesP11viewState_tPf
	extern _Z15BG_GetWeaponDefj
	extern _Z31BG_CalculateWeaponPosition_SwayPK13playerState_sPfS2_S2_fi
	extern _Z24BG_CalculateWeaponAnglesP13weaponState_tPf
	extern _Z23BG_IsAimDownSightWeaponj
	extern _Z21Player_UpdateActivateP9gentity_s
	extern _Z12AnglesToAxisPKfPA3_f
	extern _Z14MatrixMultiplyPA3_KfS1_PA3_f
	extern _Z12AxisToAnglesPA3_KfPf
	extern _Z7G_Spawnv
	extern _ZN9EntHandle6setEntEP9gentity_s
	extern g_mantleBlockTimeBuffer
	extern _Z13Scr_AddVectorPKf
	extern bg_viewKickScale
	extern bg_viewKickMin
	extern bg_viewKickMax
	extern _Z11vectoanglesPKfPf
	extern _Z8G_DamageP9gentity_sS0_S0_PKfS2_iiii13hitLocation_tjji
	extern _Z10player_dieP9gentity_sS0_S0_iiiPKf13hitLocation_ti
	extern g_antilag
	extern _Z10FireWeaponP9gentity_si
	extern _Z12G_UseOffHandP9gentity_s
	extern _Z13Scr_AddStringPKc
	extern _Z15FireWeaponMeleeP9gentity_si
	extern _Z28BG_Player_DoControllersSetupPK13entityState_sP12clientInfo_ti
	extern controller_names
	extern _Z16DObjGetBoneIndexPK6DObj_sjPh
	extern _Z23BG_Player_DoControllersPK14CEntPlayerInfoPK6DObj_sPi
	extern memcpy
	extern g_inactivity
	extern _Z24SV_GameSendServerCommandi11svscmd_typePKc
	extern _Z17SV_GameDropClientiPKc
	extern _Z24SV_GetArchivedClientInfoiPiP13playerState_sP13clientState_s
	extern _Z20HudElem_UpdateClientP9gclient_si16hudelem_update_t

;Exports of g_active_mp:
	global _ZZ15G_TouchTriggersP9gentity_sE5range
	global _Z11ClientThinki
	global _Z11G_RunClientP9gentity_s
	global _Z13ClientImpactsP9gentity_sP7pmove_t
	global _Z13G_PlayerEventii
	global _Z13StuckInClientP9gentity_s
	global _Z14ClientEndFrameP9gentity_s
	global _Z14SpectatorThinkP9gentity_sP9usercmd_s
	global _Z15G_TouchTriggersP9gentity_s
	global _Z16ClientThink_realP9gentity_sP9usercmd_s
	global _Z16P_DamageFeedbackP9gentity_s
	global _Z17HandleClientEventP9gclient_sP9gentity_sii
	global _Z18G_PlayerControllerPK9gentity_sPi
	global _Z19G_SetClientContentsP9gentity_s
	global _Z19G_SetLastServerTimeii
	global _Z20GetFollowPlayerStateiP13playerState_s
	global _Z21ClientInactivityTimerP9gclient_s
	global _Z23G_ClientCanSpectateTeamP9gclient_s6team_t
	global _Z23SpectatorClientEndFrameP9gentity_s


SECTION .text


;ClientThink(int)
_Z11ClientThinki:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ecx, [ebp+0x8]
	lea eax, [ecx+ecx*8]
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	lea ebx, [eax+ecx]
	add ebx, g_entities
	mov esi, bgs
	mov eax, level_bgs
	mov [esi], eax
	mov eax, [ebx+0x15c]
	mov edx, [eax+0x2f90]
	mov [eax+0x2fb0], edx
	mov edx, [eax+0x2f94]
	mov [eax+0x2fb4], edx
	mov edx, [eax+0x2f98]
	mov [eax+0x2fb8], edx
	mov edx, [eax+0x2f9c]
	mov [eax+0x2fbc], edx
	mov edx, [eax+0x2fa0]
	mov [eax+0x2fc0], edx
	mov edx, [eax+0x2fa4]
	mov [eax+0x2fc4], edx
	mov edx, [eax+0x2fa8]
	mov [eax+0x2fc8], edx
	mov edx, [eax+0x2fac]
	mov [eax+0x2fcc], edx
	mov eax, [ebx+0x15c]
	add eax, 0x2f90
	mov [esp+0x4], eax
	mov [esp], ecx
	call _Z13SV_GetUsercmdiP9usercmd_s
	mov edx, [ebx+0x15c]
	mov eax, level
	mov eax, [eax+0x1ec]
	mov [edx+0x3084], eax
	mov eax, g_synchronousClients
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z11ClientThinki_10
	mov eax, [ebx+0x15c]
	add eax, 0x2f90
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z16ClientThink_realP9gentity_sP9usercmd_s
_Z11ClientThinki_10:
	mov dword [esi], 0x0
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;G_RunClient(gentity_s*)
_Z11G_RunClientP9gentity_s:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov eax, g_synchronousClients
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z11G_RunClientP9gentity_s_10
_Z11G_RunClientP9gentity_s_40:
	mov ecx, [esi+0x15c]
	mov eax, [ecx+0x3078]
	test eax, eax
	jnz _Z11G_RunClientP9gentity_s_20
	mov ebx, [esi+0x218]
	test ebx, ebx
	jz _Z11G_RunClientP9gentity_s_30
	mov eax, 0x8
	cmp dword [ecx+0x2f64], 0x1
	mov edx, 0x1
	cmovnz eax, edx
	mov [ecx+0x4], eax
	mov dword [esp+0x4], 0x2
	mov [esp], esi
	call _Z14G_SetFixedLinkP9gentity_si
	lea ebx, [esi+0x13c]
	mov [esp+0x4], ebx
	mov [esp], esi
	call _Z11G_SetOriginP9gentity_sPKf
	lea eax, [esi+0x148]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z10G_SetAngleP9gentity_sPKf
	mov dword [esi+0xc], 0x1
	mov dword [esi+0x14], 0x0
	mov dword [esi+0x10], 0x0
	lea edx, [esi+0x24]
	xor eax, eax
	mov [esi+0x24], eax
	mov [edx+0x4], eax
	mov [edx+0x8], eax
	mov dword [esi+0x30], 0x1
	mov dword [esi+0x38], 0x0
	mov dword [esi+0x34], 0x0
	lea edx, [esi+0x48]
	mov [esi+0x48], eax
	mov [edx+0x4], eax
	mov [edx+0x8], eax
	mov [esp], esi
	call _Z13SV_LinkEntityP9gentity_s
	mov edx, [esi+0x15c]
	lea ecx, [edx+0x1c]
	mov eax, [esi+0x13c]
	mov [edx+0x1c], eax
	mov eax, [ebx+0x4]
	mov [ecx+0x4], eax
	mov eax, [ebx+0x8]
	mov [ecx+0x8], eax
_Z11G_RunClientP9gentity_s_20:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z11G_RunClientP9gentity_s_10:
	mov edx, [esi+0x15c]
	mov eax, level
	mov eax, [eax+0x1ec]
	mov [edx+0x2f90], eax
	mov eax, [esi+0x15c]
	add eax, 0x2f90
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z16ClientThink_realP9gentity_sP9usercmd_s
	jmp _Z11G_RunClientP9gentity_s_40
_Z11G_RunClientP9gentity_s_30:
	mov eax, [ecx+0x4]
	cmp eax, 0x1
	jz _Z11G_RunClientP9gentity_s_50
	cmp eax, 0x8
	jnz _Z11G_RunClientP9gentity_s_20
_Z11G_RunClientP9gentity_s_50:
	sub eax, 0x1
	mov [ecx+0x4], eax
	jmp _Z11G_RunClientP9gentity_s_20


;ClientImpacts(gentity_s*, pmove_t*)
_Z13ClientImpactsP9gentity_sP7pmove_t:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edx, [ebp+0x8]
	movzx eax, byte [edx+0x16e]
	lea eax, [eax+eax*4]
	shl eax, 0x3
	add eax, entityHandlers
	mov eax, [eax+0xc]
	mov [ebp-0x20], eax
	mov eax, [ebp+0xc]
	mov edx, [eax+0x48]
	test edx, edx
	jle _Z13ClientImpactsP9gentity_sP7pmove_t_10
	mov [ebp-0x1c], eax
	xor edi, edi
	mov ebx, [eax+0x4c]
_Z13ClientImpactsP9gentity_sP7pmove_t_60:
	lea eax, [ebx+ebx*8]
	lea eax, [ebx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	lea esi, [eax+ebx]
	add esi, g_entities
	mov dword [esp], 0x1
	call _Z18Scr_IsSystemActiveh
	test eax, eax
	jnz _Z13ClientImpactsP9gentity_sP7pmove_t_20
_Z13ClientImpactsP9gentity_sP7pmove_t_90:
	movzx eax, byte [esi+0x16e]
	lea eax, [eax+eax*4]
	shl eax, 0x3
	add eax, entityHandlers
	mov eax, [eax+0xc]
	test eax, eax
	jz _Z13ClientImpactsP9gentity_sP7pmove_t_30
	mov dword [esp+0x8], 0x1
	mov edx, [ebp+0x8]
	mov [esp+0x4], edx
	mov [esp], esi
	call eax
_Z13ClientImpactsP9gentity_sP7pmove_t_30:
	mov eax, [ebp-0x20]
	test eax, eax
	jz _Z13ClientImpactsP9gentity_sP7pmove_t_40
	mov dword [esp+0x8], 0x1
	mov [esp+0x4], esi
	mov eax, [ebp+0x8]
	mov [esp], eax
	call dword [ebp-0x20]
_Z13ClientImpactsP9gentity_sP7pmove_t_40:
	add edi, 0x1
	add dword [ebp-0x1c], 0x4
	mov edx, [ebp+0xc]
	cmp edi, [edx+0x48]
	jge _Z13ClientImpactsP9gentity_sP7pmove_t_10
_Z13ClientImpactsP9gentity_sP7pmove_t_80:
	cmp edi, 0x0
	jle _Z13ClientImpactsP9gentity_sP7pmove_t_50
	mov eax, [ebp-0x1c]
	mov ebx, [eax+0x4c]
	cmp [edx+0x4c], ebx
	jz _Z13ClientImpactsP9gentity_sP7pmove_t_40
	mov ecx, edx
	xor edx, edx
_Z13ClientImpactsP9gentity_sP7pmove_t_70:
	add edx, 0x1
	cmp edx, edi
	jz _Z13ClientImpactsP9gentity_sP7pmove_t_60
	mov eax, [ecx+0x50]
	add ecx, 0x4
	cmp eax, ebx
	jnz _Z13ClientImpactsP9gentity_sP7pmove_t_70
	add edi, 0x1
	add dword [ebp-0x1c], 0x4
	mov edx, [ebp+0xc]
	cmp edi, [edx+0x48]
	jl _Z13ClientImpactsP9gentity_sP7pmove_t_80
_Z13ClientImpactsP9gentity_sP7pmove_t_10:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z13ClientImpactsP9gentity_sP7pmove_t_50:
	jnz _Z13ClientImpactsP9gentity_sP7pmove_t_40
	mov edx, [ebp-0x1c]
	mov ebx, [edx+0x4c]
	jmp _Z13ClientImpactsP9gentity_sP7pmove_t_60
_Z13ClientImpactsP9gentity_sP7pmove_t_20:
	mov [esp], esi
	call _Z13Scr_AddEntityP9gentity_s
	mov dword [esp+0x8], 0x1
	mov ebx, scr_const
	movzx eax, word [ebx+0xba]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z10Scr_NotifyP9gentity_stj
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z13Scr_AddEntityP9gentity_s
	mov dword [esp+0x8], 0x1
	movzx eax, word [ebx+0xba]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z10Scr_NotifyP9gentity_stj
	jmp _Z13ClientImpactsP9gentity_sP7pmove_t_90


;G_PlayerEvent(int, int)
_Z13G_PlayerEventii:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	mov eax, [ebp+0x8]
	lea edx, [eax+eax*8]
	lea edx, [eax+edx*2]
	mov ecx, edx
	shl ecx, 0x5
	add edx, ecx
	add edx, eax
	add edx, g_entities
	mov edx, [edx+0x15c]
	mov ecx, [ebp+0xc]
	sub ecx, 0x1a
	cmp ecx, 0xc
	ja _Z13G_PlayerEventii_10
	mov eax, 0x1
	shl eax, cl
	test eax, 0x1003
	jnz _Z13G_PlayerEventii_20
_Z13G_PlayerEventii_10:
	leave
	ret
_Z13G_PlayerEventii_20:
	lea eax, [ebp-0x14]
	mov [esp+0x8], eax
	lea eax, [edx+0x3158]
	mov [esp+0x4], eax
	mov [esp], edx
	call _Z19BG_WeaponFireRecoilPK13playerState_sPfS2_
	leave
	ret


;StuckInClient(gentity_s*)
_Z13StuckInClientP9gentity_s:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x15c]
	test byte [eax+0x14], 0x4
	jz _Z13StuckInClientP9gentity_s_10
	mov edx, [eax+0x2f64]
	test edx, edx
	jnz _Z13StuckInClientP9gentity_s_10
	mov eax, [ebx+0x120]
	cmp eax, 0x2000000
	jz _Z13StuckInClientP9gentity_s_20
	cmp eax, 0x4000000
	jz _Z13StuckInClientP9gentity_s_20
_Z13StuckInClientP9gentity_s_10:
	xor eax, eax
_Z13StuckInClientP9gentity_s_90:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z13StuckInClientP9gentity_s_20:
	mov eax, level
	mov edi, [eax+0x1e4]
	test edi, edi
	jle _Z13StuckInClientP9gentity_s_10
	xor ecx, ecx
	mov edx, g_entities
	mov esi, edx
	add edx, 0x100
_Z13StuckInClientP9gentity_s_50:
	cmp byte [edx], 0x0
	jz _Z13StuckInClientP9gentity_s_30
	mov eax, [edx+0x5c]
	test byte [eax+0x14], 0x4
	jz _Z13StuckInClientP9gentity_s_30
	mov eax, [eax+0x2f64]
	test eax, eax
	jnz _Z13StuckInClientP9gentity_s_30
	cmp ebx, esi
	jz _Z13StuckInClientP9gentity_s_30
	mov eax, [edx+0xa0]
	test eax, eax
	jle _Z13StuckInClientP9gentity_s_30
	mov eax, [edx+0x20]
	cmp eax, 0x2000000
	jz _Z13StuckInClientP9gentity_s_40
	cmp eax, 0x4000000
	jz _Z13StuckInClientP9gentity_s_40
_Z13StuckInClientP9gentity_s_30:
	add ecx, 0x1
	add esi, 0x274
	add edx, 0x274
	cmp ecx, edi
	jnz _Z13StuckInClientP9gentity_s_50
	jmp _Z13StuckInClientP9gentity_s_10
_Z13StuckInClientP9gentity_s_40:
	movss xmm0, dword [edx+0x24]
	ucomiss xmm0, [ebx+0x130]
	ja _Z13StuckInClientP9gentity_s_30
	movss xmm0, dword [ebx+0x124]
	ucomiss xmm0, [edx+0x30]
	ja _Z13StuckInClientP9gentity_s_30
	movss xmm0, dword [edx+0x28]
	ucomiss xmm0, [ebx+0x134]
	ja _Z13StuckInClientP9gentity_s_30
	movss xmm0, dword [ebx+0x128]
	ucomiss xmm0, [edx+0x34]
	ja _Z13StuckInClientP9gentity_s_30
	movss xmm0, dword [edx+0x2c]
	ucomiss xmm0, [ebx+0x138]
	ja _Z13StuckInClientP9gentity_s_30
	movss xmm0, dword [ebx+0x12c]
	ucomiss xmm0, [edx+0x38]
	ja _Z13StuckInClientP9gentity_s_30
	movss xmm0, dword [esi+0x13c]
	subss xmm0, [ebx+0x13c]
	movss [ebp-0x20], xmm0
	movss xmm1, dword [esi+0x140]
	subss xmm1, [ebx+0x140]
	movss [ebp-0x1c], xmm1
	movss xmm2, dword [ebx+0x114]
	addss xmm2, [edx+0x14]
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	ucomiss xmm0, xmm2
	ja _Z13StuckInClientP9gentity_s_30
	movss xmm1, dword [esi+0x13c]
	subss xmm1, [ebx+0x13c]
	movss [ebp-0x20], xmm1
	movss xmm0, dword [esi+0x140]
	subss xmm0, [ebx+0x140]
	movss [ebp-0x1c], xmm0
	movss [ebp-0x48], xmm1
	call _Z7crandomv
	fstp dword [ebp-0x34]
	movss xmm1, dword [ebp-0x48]
	addss xmm1, [ebp-0x34]
	movss [ebp-0x20], xmm1
	movss xmm0, dword [ebp-0x1c]
	movss [ebp-0x30], xmm0
	call _Z7crandomv
	fstp dword [ebp-0x2c]
	movss xmm0, dword [ebp-0x30]
	addss xmm0, [ebp-0x2c]
	movss [ebp-0x1c], xmm0
	lea eax, [ebp-0x20]
	mov [esp], eax
	call _Z13Vec2NormalizePf
	fstp st0
	mov ecx, [esi+0x15c]
	lea edi, [ecx+0x28]
	movss xmm0, dword [ecx+0x28]
	movss xmm1, dword [edi+0x4]
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	sqrtss xmm0, xmm0
	pxor xmm3, xmm3
	ucomiss xmm0, xmm3
	jbe _Z13StuckInClientP9gentity_s_60
	mov eax, g_playerCollisionEjectSpeed
	mov eax, [eax]
	cvtsi2ss xmm2, dword [eax+0xc]
_Z13StuckInClientP9gentity_s_110:
	mov edx, [ebx+0x15c]
	movss xmm0, dword [edx+0x28]
	movss xmm1, dword [edx+0x2c]
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	sqrtss xmm0, xmm0
	ucomiss xmm0, xmm3
	jbe _Z13StuckInClientP9gentity_s_70
	mov eax, g_playerCollisionEjectSpeed
	mov eax, [eax]
	cvtsi2ss xmm1, dword [eax+0xc]
_Z13StuckInClientP9gentity_s_100:
	ucomiss xmm2, [_float_0_00010000]
	jae _Z13StuckInClientP9gentity_s_80
	jp _Z13StuckInClientP9gentity_s_80
	movss xmm0, dword [_float_0_00010000]
	ucomiss xmm0, xmm1
	jbe _Z13StuckInClientP9gentity_s_80
	cvtsi2ss xmm2, dword [ecx+0x60]
	cvtsi2ss xmm1, dword [edx+0x60]
_Z13StuckInClientP9gentity_s_80:
	movaps xmm0, xmm2
	mulss xmm0, [ebp-0x20]
	movss [edi], xmm0
	mulss xmm2, [ebp-0x1c]
	movss [edi+0x4], xmm2
	mov eax, [esi+0x15c]
	mov dword [eax+0x18], 0x12c
	mov eax, [esi+0x15c]
	or dword [eax+0xc], 0x80
	mov eax, [ebx+0x15c]
	movaps xmm0, xmm1
	xorps xmm0, [_data16_80000000]
	movaps xmm1, xmm0
	mulss xmm1, [ebp-0x20]
	movss [eax+0x28], xmm1
	mulss xmm0, [ebp-0x1c]
	movss [eax+0x2c], xmm0
	mov eax, [ebx+0x15c]
	mov dword [eax+0x18], 0x12c
	mov eax, [ebx+0x15c]
	or dword [eax+0xc], 0x80
	mov eax, 0x1
	jmp _Z13StuckInClientP9gentity_s_90
_Z13StuckInClientP9gentity_s_70:
	movaps xmm1, xmm3
	jmp _Z13StuckInClientP9gentity_s_100
_Z13StuckInClientP9gentity_s_60:
	movaps xmm2, xmm3
	jmp _Z13StuckInClientP9gentity_s_110
	nop


;ClientEndFrame(gentity_s*)
_Z14ClientEndFrameP9gentity_s:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xac
	mov eax, [ebp+0x8]
	mov eax, [eax+0x15c]
	mov [ebp-0x70], eax
	mov edx, [ebp+0x8]
	mov byte [edx+0x16e], 0xb
	mov dword [eax+0x89c], 0x0
	mov eax, g_gravity
	mov eax, [eax]
	cvttss2si eax, [eax+0xc]
	mov ecx, [ebp-0x70]
	mov [ecx+0x58], eax
	mov eax, [edx+0x15c]
	mov eax, [eax+0x2ffc]
	mov [ecx+0x5dc], eax
	mov eax, [ecx+0x3080]
	test eax, eax
	jz _Z14ClientEndFrameP9gentity_s_10
	or dword [ecx+0xc], 0x800
_Z14ClientEndFrameP9gentity_s_120:
	mov eax, [ebp+0x8]
	mov eax, [eax+0x15c]
	mov [ebp-0x60], eax
	mov edx, [ebp+0x8]
	mov eax, [edx+0x8c]
	lea ebx, [eax+eax*8]
	mov edx, ebx
	shl edx, 0x4
	add ebx, edx
	lea ebx, [eax+ebx*2]
	mov eax, level_bgs
	lea ebx, [eax+ebx*4+0x99a00]
	lea ecx, [ebx+0x4]
	mov [ebp-0x68], ecx
	mov esi, [ebp+0x8]
	movzx eax, word [esi+0x168]
	mov [esp], eax
	call _Z11G_ModelNamei
	mov [esp], eax
	call _Z18SL_ConvertToStringj
	mov esi, eax
	mov edx, [ebp+0x8]
	movzx eax, word [edx+0x168]
	mov ecx, [ebp-0x60]
	mov [ecx+0x3014], eax
	add ebx, 0x40
	mov [esp+0x4], esi
	mov [esp], ebx
	call strcmp
	test eax, eax
	jnz _Z14ClientEndFrameP9gentity_s_20
	mov dword [ebp-0x74], 0x0
_Z14ClientEndFrameP9gentity_s_180:
	mov esi, [ebp+0x8]
	mov [ebp-0x5c], esi
	mov edi, [ebp-0x68]
	mov esi, [ebp-0x60]
	mov dword [ebp-0x64], 0x0
	lea eax, [edi+0x7c]
	mov [ebp-0x7c], eax
	jmp _Z14ClientEndFrameP9gentity_s_30
_Z14ClientEndFrameP9gentity_s_50:
	mov byte [edi+0x7c], 0x0
	mov byte [edi+0x1fc], 0x0
	mov dword [esi+0x3018], 0x0
	mov dword [esi+0x3030], 0x0
_Z14ClientEndFrameP9gentity_s_70:
	add dword [ebp-0x64], 0x1
	add dword [ebp-0x7c], 0x40
	add dword [ebp-0x5c], 0x2
	add edi, 0x40
	add esi, 0x4
	cmp dword [ebp-0x64], 0x6
	jz _Z14ClientEndFrameP9gentity_s_40
_Z14ClientEndFrameP9gentity_s_30:
	mov edx, [ebp-0x5c]
	movzx eax, word [edx+0x220]
	test ax, ax
	jz _Z14ClientEndFrameP9gentity_s_50
	movzx eax, ax
	mov [esp], eax
	call _Z11G_ModelNamei
	mov [esp], eax
	call _Z18SL_ConvertToStringj
	mov ebx, eax
	mov ecx, [ebp-0x5c]
	movzx eax, word [ecx+0x220]
	mov [esi+0x3018], eax
	mov eax, [ebp-0x64]
	shl eax, 0x6
	mov [ebp-0x78], eax
	mov [esp+0x4], ebx
	mov edx, [ebp-0x7c]
	mov [esp], edx
	call strcmp
	test eax, eax
	jnz _Z14ClientEndFrameP9gentity_s_60
_Z14ClientEndFrameP9gentity_s_110:
	mov edx, [ebp-0x5c]
	movzx eax, word [edx+0x246]
	mov [esp], eax
	call _Z18SL_ConvertToStringj
	mov ebx, eax
	mov [esp], eax
	call _Z10G_TagIndexPKc
	mov [esi+0x3030], eax
	mov ecx, [ebp-0x78]
	mov eax, [ebp-0x68]
	lea ecx, [ecx+eax+0x1fc]
	mov [ebp-0x6c], ecx
	mov [esp+0x4], ebx
	mov [esp], ecx
	call strcmp
	test eax, eax
	jz _Z14ClientEndFrameP9gentity_s_70
	mov dword [esp+0x8], 0x40
	mov [esp+0x4], ebx
	mov eax, [ebp-0x6c]
	mov [esp], eax
	call _Z10I_strncpyzPcPKci
	mov dword [ebp-0x74], 0x1
	add dword [ebp-0x64], 0x1
	add dword [ebp-0x7c], 0x40
	add dword [ebp-0x5c], 0x2
	add edi, 0x40
	add esi, 0x4
	cmp dword [ebp-0x64], 0x6
	jnz _Z14ClientEndFrameP9gentity_s_30
_Z14ClientEndFrameP9gentity_s_40:
	mov edx, [ebp-0x60]
	test byte [edx+0xe], 0x10
	jz _Z14ClientEndFrameP9gentity_s_80
	mov ecx, [ebp+0x8]
	cmp word [ecx+0x154], 0x0
	jz _Z14ClientEndFrameP9gentity_s_90
	mov edx, ecx
	movzx eax, word [ecx+0x154]
	sub eax, 0x1
	mov ecx, [ebp-0x60]
	mov [ecx+0x3068], eax
	mov eax, [edx]
	mov [esp+0x4], eax
	mov esi, [ebp+0x8]
	movzx edx, word [esi+0x154]
	lea eax, [edx+edx*8]
	lea eax, [edx+eax*2]
	mov ecx, eax
	shl ecx, 0x5
	add eax, ecx
	lea eax, [eax+edx-0x274]
	add eax, g_entities
	mov [esp], eax
	call _Z19G_VehPlayerRideSlotP9gentity_si
	mov edx, [ebp-0x60]
	mov [edx+0x306c], eax
	mov esi, [ebp-0x70]
	cmp dword [esi+0x2f8c], 0x2
	jz _Z14ClientEndFrameP9gentity_s_100
_Z14ClientEndFrameP9gentity_s_130:
	mov edx, [ebp+0x8]
_Z14ClientEndFrameP9gentity_s_310:
	mov eax, [edx+0x15c]
	mov dword [eax+0x3094], 0x0
_Z14ClientEndFrameP9gentity_s_430:
	add esp, 0xac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z14ClientEndFrameP9gentity_s_60:
	mov dword [esp+0x8], 0x40
	mov [esp+0x4], ebx
	mov ecx, [ebp-0x7c]
	mov [esp], ecx
	call _Z10I_strncpyzPcPKci
	mov dword [ebp-0x74], 0x1
	jmp _Z14ClientEndFrameP9gentity_s_110
_Z14ClientEndFrameP9gentity_s_10:
	mov esi, [ebp-0x70]
	and dword [esi+0xc], 0xfffff7ff
	jmp _Z14ClientEndFrameP9gentity_s_120
_Z14ClientEndFrameP9gentity_s_80:
	mov dword [edx+0x3068], 0x3ff
	mov dword [edx+0x306c], 0x0
_Z14ClientEndFrameP9gentity_s_170:
	mov esi, [ebp-0x70]
	cmp dword [esi+0x2f8c], 0x2
	jnz _Z14ClientEndFrameP9gentity_s_130
_Z14ClientEndFrameP9gentity_s_100:
	mov eax, [esi+0x2f64]
	cmp eax, 0x3
	jz _Z14ClientEndFrameP9gentity_s_140
	cmp eax, 0x2
	jz _Z14ClientEndFrameP9gentity_s_150
	mov ecx, [ebp-0x70]
	mov eax, [ecx+0xdc]
	mov esi, [ebp+0x8]
	cmp eax, [esi]
	jz _Z14ClientEndFrameP9gentity_s_160
	mov edx, ecx
	add edx, 0x1c
	mov eax, [ecx+0x1c]
	mov [ebp-0x30], eax
	mov eax, [edx+0x4]
	mov [ebp-0x2c], eax
	mov eax, [edx+0x8]
	mov [ebp-0x28], eax
	mov edx, [ecx+0x10c]
	xor eax, eax
	mov [ebp-0x3c], eax
	mov [ebp-0x38], edx
	mov [ebp-0x34], eax
	lea eax, [ebp-0x3c]
	mov [esp+0x8], eax
	lea eax, [ebp-0x30]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z11ClientSpawnP9gentity_sPKfS2_
	mov eax, [esi+0x15c]
	mov dword [eax+0x3094], 0x0
	add esp, 0xac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z14ClientEndFrameP9gentity_s_90:
	mov dword [esp+0x4], _cstring_g_updateclientin
	mov dword [esp], 0x10
	call _Z16Com_PrintWarningiPKcz
	mov esi, [ebp-0x60]
	mov dword [esi+0x3068], 0x3ff
	mov dword [esi+0x306c], 0x0
	jmp _Z14ClientEndFrameP9gentity_s_170
_Z14ClientEndFrameP9gentity_s_20:
	mov dword [esp+0x8], 0x40
	mov [esp+0x4], esi
	mov [esp], ebx
	call _Z10I_strncpyzPcPKci
	mov dword [ebp-0x74], 0x1
	jmp _Z14ClientEndFrameP9gentity_s_180
_Z14ClientEndFrameP9gentity_s_160:
	movzx eax, byte [esi+0xf6]
	or al, 0x2
	and al, 0xfe
	mov [esi+0xf6], al
	mov byte [esi+0x16b], 0x1
	mov ecx, [ebp-0x70]
	mov eax, [ecx+0x14]
	or eax, 0x4
	and eax, 0xffffffe7
	mov [ecx+0x14], eax
	mov eax, [ecx+0x3000]
	mov [ecx+0x104], eax
	mov esi, [ebp+0x8]
	mov edx, [esi+0x15c]
	mov edi, [edx+0x3078]
	test edi, edi
	jz _Z14ClientEndFrameP9gentity_s_190
	mov dword [esi+0x120], 0x0
_Z14ClientEndFrameP9gentity_s_410:
	mov ecx, [ebp-0x70]
	mov dword [ecx+0x30e8], 0x0
	mov edx, [ecx+0x3108]
	mov eax, level
	cmp edx, [eax+0x1ec]
	jg _Z14ClientEndFrameP9gentity_s_200
	and dword [ecx+0xb0], 0xffbfffff
_Z14ClientEndFrameP9gentity_s_200:
	mov esi, [ebp-0x70]
	mov ebx, [esi+0x3078]
	test ebx, ebx
	jz _Z14ClientEndFrameP9gentity_s_210
	mov dword [esi+0x4], 0x2
_Z14ClientEndFrameP9gentity_s_390:
	mov ecx, [ebp-0x70]
	movss xmm0, dword [ecx+0x628]
	divss xmm0, dword [_float_255_00000000]
	movss [ecx+0x30dc], xmm0
	mov esi, [ebp+0x8]
	mov [esp], esi
	call _Z24Player_UpdateCursorHintsP9gentity_s
	mov [esp], esi
	call _Z16P_DamageFeedbackP9gentity_s
	mov edx, level
	mov eax, [edx+0x1ec]
	mov ecx, [ebp-0x70]
	sub eax, [ecx+0x3084]
	cmp eax, 0x3e8
	jle _Z14ClientEndFrameP9gentity_s_220
	or dword [esi+0x8], 0x80
_Z14ClientEndFrameP9gentity_s_300:
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x1a0]
	mov esi, [ebp-0x70]
	mov [esi+0x148], eax
	mov dword [ecx+0x80], 0x0
	mov eax, [esi+0x3010]
	cmp byte [eax+edx+0x214], 0x0
	jnz _Z14ClientEndFrameP9gentity_s_230
	mov eax, [esi+0x3178]
	test eax, eax
	jz _Z14ClientEndFrameP9gentity_s_240
_Z14ClientEndFrameP9gentity_s_230:
	mov eax, 0x1
_Z14ClientEndFrameP9gentity_s_420:
	mov edx, [ebp-0x70]
	mov [edx+0x5b0], eax
	mov eax, g_smoothClients
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z14ClientEndFrameP9gentity_s_250
	mov ebx, [edx]
	mov ecx, [ebp+0x8]
	add ecx, 0x24
	mov edx, [ebp-0x70]
	add edx, 0x28
	mov esi, [ebp-0x70]
	mov eax, [esi+0x28]
	mov esi, [ebp+0x8]
	mov [esi+0x24], eax
	mov eax, [edx+0x4]
	mov [ecx+0x4], eax
	mov eax, [edx+0x8]
	mov [ecx+0x8], eax
	mov [esi+0x10], ebx
	mov dword [esi+0x14], 0x32
	mov dword [esp+0xc], 0x1
	mov dword [esp+0x8], 0x1
	mov [esp+0x4], esi
	mov eax, [ebp-0x70]
	mov [esp], eax
	call _Z27BG_PlayerStateToEntityStateP13playerState_sP13entityState_sih
	mov dword [esi+0xc], 0x3
_Z14ClientEndFrameP9gentity_s_350:
	mov esi, [ebp+0x8]
	mov eax, [esi+0x1a0]
	test eax, eax
	jle _Z14ClientEndFrameP9gentity_s_260
	mov [esp], esi
	call _Z13StuckInClientP9gentity_s
	mov edx, [ebp+0x8]
_Z14ClientEndFrameP9gentity_s_440:
	lea ebx, [ebp-0x24]
	mov [esp+0x4], ebx
	mov eax, [edx+0x15c]
	mov [esp], eax
	call _Z21G_GetPlayerViewOriginPK13playerState_sPf
	mov ecx, [ebp-0x70]
	mov eax, [ecx+0x3104]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov esi, [ebp+0x8]
	mov [esp], esi
	call _Z21G_GetNonPVSPlayerInfoP9gentity_sPfi
	mov edx, [ebp-0x70]
	mov [edx+0x5ac], eax
	test eax, eax
	jz _Z14ClientEndFrameP9gentity_s_270
	and eax, 0x3f
	mov [edx+0x3104], eax
	lea edx, [eax+eax*8]
	lea edx, [eax+edx*2]
	mov ecx, edx
	shl ecx, 0x5
	add edx, ecx
	add edx, eax
	add edx, g_entities
	test byte [edx+0xa], 0x40
	jnz _Z14ClientEndFrameP9gentity_s_280
	mov esi, [ebp-0x70]
	and dword [esi+0xb0], 0xff7fffff
	jmp _Z14ClientEndFrameP9gentity_s_290
_Z14ClientEndFrameP9gentity_s_220:
	mov esi, [ebp+0x8]
	and dword [esi+0x8], 0xffffff7f
	jmp _Z14ClientEndFrameP9gentity_s_300
_Z14ClientEndFrameP9gentity_s_270:
	mov eax, [ebp-0x70]
	mov dword [eax+0x3104], 0x3ff
_Z14ClientEndFrameP9gentity_s_290:
	mov edx, [ebp+0x8]
	cmp dword [edx+0x4], 0x1
	jnz _Z14ClientEndFrameP9gentity_s_310
	mov ecx, edx
	mov eax, [edx+0x1a0]
	test eax, eax
	setle al
	lea eax, [eax+eax+0xa]
	mov [edx+0x16e], al
	mov edi, [edx+0x8c]
	lea eax, [edi+edi*8]
	mov edx, eax
	shl edx, 0x4
	add eax, edx
	lea eax, [edi+eax*2]
	mov edx, level_bgs
	lea eax, [edx+eax*4+0x99a00]
	lea esi, [eax+0x4]
	cvtsi2ss xmm0, dword [ecx+0x58]
	movss [esi+0x3dc], xmm0
	mov edx, [ecx+0x54]
	mov [esi+0x3e0], edx
	lea ebx, [eax+0x3e8]
	mov ecx, [ebp-0x70]
	add ecx, 0x108
	mov edx, [ebp-0x70]
	movss xmm0, dword [edx+0x108]
	movss [eax+0x3e8], xmm0
	mov eax, [ecx+0x4]
	mov [ebx+0x4], eax
	mov eax, [ecx+0x8]
	mov [ebx+0x8], eax
	mov eax, [ebp-0x74]
	test eax, eax
	jnz _Z14ClientEndFrameP9gentity_s_320
_Z14ClientEndFrameP9gentity_s_450:
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov [esp], eax
	call _Z17Com_GetServerDObji
	mov ecx, [ebp+0x8]
	mov edx, [ecx+0x178]
	mov [esp+0x10], edx
	mov [esp+0xc], esi
	mov [esp+0x8], ecx
	mov [esp+0x4], eax
	mov dword [esp], 0xffffffff
	call _Z19BG_UpdatePlayerDObjiP6DObj_sP13entityState_sP12clientInfo_ti
	mov [esp+0x8], esi
	mov esi, [ebp+0x8]
	mov [esp+0x4], esi
	mov dword [esp], 0xffffffff
	call _Z18BG_PlayerAnimationiPK13entityState_sP12clientInfo_t
	mov eax, [ebp-0x70]
	test byte [eax+0x14], 0x4
	jz _Z14ClientEndFrameP9gentity_s_330
	test dword [eax+0xb0], 0x300
	jnz _Z14ClientEndFrameP9gentity_s_340
_Z14ClientEndFrameP9gentity_s_330:
	mov eax, g_debugLocDamage
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z14ClientEndFrameP9gentity_s_130
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z13SV_DObjExistsP9gentity_s
	test eax, eax
	jz _Z14ClientEndFrameP9gentity_s_130
	lea eax, [ebp-0x4c]
	mov dword [ebp-0x4c], 0xffffffff
	mov dword [ebp-0x48], 0xffffffff
	mov dword [ebp-0x44], 0xffffffff
	mov dword [ebp-0x40], 0xffffffff
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z14G_DObjCalcPoseP9gentity_sPi
	mov esi, [ebp+0x8]
	mov [esp], esi
	call _Z19SV_XModelDebugBoxesP9gentity_s
	lea eax, [edi+edi*8]
	mov edx, eax
	shl edx, 0x4
	add eax, edx
	lea eax, [edi+eax*2]
	shl eax, 0x2
	add eax, level_bgs
	cvtss2sd xmm0, [eax+0x99dec]
	movsd [esp+0x18], xmm0
	cvtss2sd xmm0, [eax+0x99db0]
	movsd [esp+0x10], xmm0
	cvtss2sd xmm0, [eax+0x99d80]
	movsd [esp+0x8], xmm0
	mov [esp+0x4], edi
	mov dword [esp], _cstring_i_3f_3f_3f
	call _Z2vaPKcz
	mov dword [esp+0x18], 0x1
	mov dword [esp+0x14], 0x1
	mov dword [esp+0x10], 0x3e800000
	mov [esp+0xc], eax
	mov eax, colorYellow
	mov [esp+0x8], eax
	mov [esp+0x4], eax
	mov eax, esi
	add eax, 0x13c
	mov [esp], eax
	call _Z23CL_AddDebugStarWithTextPKfS0_S0_PKcfii
	jmp _Z14ClientEndFrameP9gentity_s_130
_Z14ClientEndFrameP9gentity_s_250:
	mov dword [esp+0xc], 0x1
	mov dword [esp+0x8], 0x1
	mov edx, [ebp+0x8]
	mov [esp+0x4], edx
	mov ecx, [ebp-0x70]
	mov [esp], ecx
	call _Z27BG_PlayerStateToEntityStateP13playerState_sP13entityState_sih
	jmp _Z14ClientEndFrameP9gentity_s_350
_Z14ClientEndFrameP9gentity_s_210:
	mov ecx, [esi+0x307c]
	test ecx, ecx
	jnz _Z14ClientEndFrameP9gentity_s_360
	cmp dword [esi+0x2f64], 0x1
	jz _Z14ClientEndFrameP9gentity_s_370
	mov edx, [esi+0x317c]
	test edx, edx
	jz _Z14ClientEndFrameP9gentity_s_380
	mov dword [esi+0x4], 0x6
	jmp _Z14ClientEndFrameP9gentity_s_390
_Z14ClientEndFrameP9gentity_s_190:
	mov esi, [edx+0x307c]
	test esi, esi
	jnz _Z14ClientEndFrameP9gentity_s_400
	xor eax, eax
	cmp dword [edx+0x2f64], 0x1
	mov edx, 0x2000000
	cmovnz eax, edx
	mov edx, [ebp+0x8]
	mov [edx+0x120], eax
	jmp _Z14ClientEndFrameP9gentity_s_410
_Z14ClientEndFrameP9gentity_s_280:
	mov ecx, [ebp-0x70]
	or dword [ecx+0xb0], 0x800000
	jmp _Z14ClientEndFrameP9gentity_s_290
_Z14ClientEndFrameP9gentity_s_240:
	xor eax, eax
	jmp _Z14ClientEndFrameP9gentity_s_420
_Z14ClientEndFrameP9gentity_s_400:
	mov eax, [ebp+0x8]
	mov dword [eax+0x120], 0x0
	jmp _Z14ClientEndFrameP9gentity_s_410
_Z14ClientEndFrameP9gentity_s_360:
	mov dword [esi+0x4], 0x3
	jmp _Z14ClientEndFrameP9gentity_s_390
_Z14ClientEndFrameP9gentity_s_140:
	mov esi, [ebp+0x8]
	mov edx, [esi+0x15c]
	movzx eax, byte [esi+0xf6]
	and al, 0xfd
	or al, 0x1
	mov [esi+0xf6], al
	mov byte [esi+0x16b], 0x0
	mov dword [esi+0x120], 0x0
	and dword [edx+0x14], 0xffffffe3
	mov dword [edx+0x4], 0x5
	and dword [edx+0xb0], 0xffdfffbf
	mov dword [edx+0x104], 0x0
	mov dword [esi+0x4], 0x5
	mov ebx, level
	mov eax, [ebx+0x200]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_i
	call _Z2vaPKcz
	mov [esp+0x4], eax
	mov dword [esp], 0x4
	call _Z18SV_SetConfigstringiPKc
	mov eax, [ebx+0x204]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_i
	call _Z2vaPKcz
	mov [esp+0x4], eax
	mov dword [esp], 0x5
	call _Z18SV_SetConfigstringiPKc
	mov eax, [esi+0x15c]
	mov dword [eax+0x3094], 0x0
	jmp _Z14ClientEndFrameP9gentity_s_430
_Z14ClientEndFrameP9gentity_s_260:
	mov edx, esi
	jmp _Z14ClientEndFrameP9gentity_s_440
_Z14ClientEndFrameP9gentity_s_150:
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z23SpectatorClientEndFrameP9gentity_s
	mov edx, [ebp+0x8]
	mov eax, [edx+0x15c]
	mov dword [eax+0x3094], 0x0
	jmp _Z14ClientEndFrameP9gentity_s_430
_Z14ClientEndFrameP9gentity_s_320:
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z14G_SafeDObjFreeP9gentity_s
	jmp _Z14ClientEndFrameP9gentity_s_450
_Z14ClientEndFrameP9gentity_s_380:
	mov eax, [ebp+0x8]
	mov eax, [eax+0x218]
	test eax, eax
	setnz al
	movzx eax, al
	mov [esi+0x4], eax
	jmp _Z14ClientEndFrameP9gentity_s_390
_Z14ClientEndFrameP9gentity_s_370:
	mov ecx, [ebp+0x8]
	cmp dword [ecx+0x218], 0x1
	sbb eax, eax
	add eax, 0x8
	mov [esi+0x4], eax
	movzx eax, byte [ecx+0xf6]
	or al, 0x1
	and al, 0xfd
	mov [ecx+0xf6], al
	mov byte [ecx+0x16b], 0x0
	jmp _Z14ClientEndFrameP9gentity_s_390
_Z14ClientEndFrameP9gentity_s_340:
	mov edx, [eax+0x59c]
	lea eax, [edx+edx*8]
	lea eax, [edx+eax*2]
	mov ecx, eax
	shl ecx, 0x5
	add eax, ecx
	add eax, edx
	mov edx, level
	add eax, [edx+0x4]
	mov [esp], eax
	call _Z19turret_think_clientP9gentity_s
	jmp _Z14ClientEndFrameP9gentity_s_330


;SpectatorThink(gentity_s*, usercmd_s*)
_Z14SpectatorThinkP9gentity_sP9usercmd_s:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x12c
	mov edi, [ebp+0xc]
	mov eax, [ebp+0x8]
	mov esi, [eax+0x15c]
	mov edx, [esi+0x3088]
	mov ecx, edx
	mov [esi+0x308c], edx
	mov edx, [esi+0x2f94]
	mov [esi+0x3088], edx
	mov eax, ecx
	not eax
	and eax, edx
	or [esi+0x3094], eax
	mov eax, [esi+0x2f68]
	test eax, eax
	js _Z14SpectatorThinkP9gentity_sP9usercmd_s_10
_Z14SpectatorThinkP9gentity_sP9usercmd_s_70:
	test dl, 0x1
	jz _Z14SpectatorThinkP9gentity_sP9usercmd_s_20
	test byte [esi+0x308c], 0x1
	jz _Z14SpectatorThinkP9gentity_sP9usercmd_s_30
_Z14SpectatorThinkP9gentity_sP9usercmd_s_20:
	and dh, 0x8
	jnz _Z14SpectatorThinkP9gentity_sP9usercmd_s_40
_Z14SpectatorThinkP9gentity_sP9usercmd_s_60:
	test byte [esi+0x14], 0x2
	jnz _Z14SpectatorThinkP9gentity_sP9usercmd_s_50
	mov dword [esi+0x4], 0x4
	mov eax, [esi+0x3004]
	sar eax, 0x4
	xor eax, 0x1
	and eax, 0x1
	neg eax
	and eax, 0x190
	mov [esi+0x60], eax
	lea ebx, [ebp-0x128]
	mov dword [esp+0x8], 0x110
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call memset
	mov [ebp-0x128], esi
	mov eax, [edi]
	mov [ebp-0x124], eax
	mov eax, [edi+0x4]
	mov [ebp-0x120], eax
	mov eax, [edi+0x8]
	mov [ebp-0x11c], eax
	mov eax, [edi+0xc]
	mov [ebp-0x118], eax
	mov eax, [edi+0x10]
	mov [ebp-0x114], eax
	mov eax, [edi+0x14]
	mov [ebp-0x110], eax
	mov eax, [edi+0x18]
	mov [ebp-0x10c], eax
	mov eax, [edi+0x1c]
	mov [ebp-0x108], eax
	mov dword [ebp-0xe4], 0x800811
	mov byte [ebp-0x1c], 0x1
	mov [esp], ebx
	call _Z5PmoveP7pmove_t
	mov ecx, [ebp+0x8]
	add ecx, 0x13c
	lea edx, [esi+0x1c]
	mov eax, [esi+0x1c]
	mov ebx, [ebp+0x8]
	mov [ebx+0x13c], eax
	mov eax, [edx+0x4]
	mov [ecx+0x4], eax
	mov eax, [edx+0x8]
	mov [ecx+0x8], eax
	mov [esp], ebx
	call _Z15SV_UnlinkEntityP9gentity_s
_Z14SpectatorThinkP9gentity_sP9usercmd_s_50:
	add esp, 0x12c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z14SpectatorThinkP9gentity_sP9usercmd_s_40:
	test byte [esi+0x308d], 0x8
	jnz _Z14SpectatorThinkP9gentity_sP9usercmd_s_60
	mov dword [esp+0x4], 0xffffffff
	mov ebx, [ebp+0x8]
	mov [esp], ebx
	call _Z17Cmd_FollowCycle_fP9gentity_si
	jmp _Z14SpectatorThinkP9gentity_sP9usercmd_s_60
_Z14SpectatorThinkP9gentity_sP9usercmd_s_10:
	test byte [esi+0x3004], 0x10
	jnz _Z14SpectatorThinkP9gentity_sP9usercmd_s_70
	mov eax, [esi+0x3074]
	test eax, eax
	js _Z14SpectatorThinkP9gentity_sP9usercmd_s_70
	mov eax, edx
	and eax, 0x4
	and ecx, 0x4
	cmp eax, ecx
	jz _Z14SpectatorThinkP9gentity_sP9usercmd_s_70
	mov ebx, [ebp+0x8]
	mov [esp], ebx
	call _Z13StopFollowingP9gentity_s
	mov edx, [esi+0x3088]
	jmp _Z14SpectatorThinkP9gentity_sP9usercmd_s_70
_Z14SpectatorThinkP9gentity_sP9usercmd_s_30:
	mov dword [esp+0x4], 0x1
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z17Cmd_FollowCycle_fP9gentity_si
	jmp _Z14SpectatorThinkP9gentity_sP9usercmd_s_60
	nop


;G_TouchTriggers(gentity_s*)
_Z15G_TouchTriggersP9gentity_s:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x105c
	mov edx, [ebp+0x8]
	mov eax, [edx+0x15c]
	cmp dword [eax+0x4], 0x1
	jle _Z15G_TouchTriggersP9gentity_s_10
_Z15G_TouchTriggersP9gentity_s_20:
	add esp, 0x105c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z15G_TouchTriggersP9gentity_s_10:
	mov eax, edx
	add eax, 0x124
	movss xmm1, dword [_float_20_00000000]
	movss xmm0, dword [edx+0x124]
	subss xmm0, xmm1
	movss [ebp-0x24], xmm0
	movss xmm0, dword [eax+0x4]
	subss xmm0, xmm1
	movss [ebp-0x20], xmm0
	movss xmm0, dword [eax+0x8]
	subss xmm0, xmm1
	movss [ebp-0x1c], xmm0
	add eax, 0xc
	movss xmm0, dword [edx+0x130]
	addss xmm0, xmm1
	movss [ebp-0x30], xmm0
	movss xmm0, dword [eax+0x4]
	addss xmm0, xmm1
	movss [ebp-0x2c], xmm0
	addss xmm1, [eax+0x8]
	movss [ebp-0x28], xmm1
	mov dword [esp+0x10], 0x405c0008
	mov dword [esp+0xc], 0x400
	lea eax, [ebp-0x1030]
	mov [esp+0x8], eax
	lea ebx, [ebp-0x30]
	mov [esp+0x4], ebx
	lea eax, [ebp-0x24]
	mov [esp], eax
	call _Z15CM_AreaEntitiesPKfS0_Piii
	mov [ebp-0x1040], eax
	mov edx, [ebp+0x8]
	mov eax, [edx+0x15c]
	lea edx, [eax+0x1c]
	mov ecx, [ebp+0x8]
	add ecx, 0x108
	movss xmm0, dword [eax+0x1c]
	mov ebx, [ebp+0x8]
	addss xmm0, [ebx+0x108]
	movss [ebp-0x24], xmm0
	movss xmm0, dword [edx+0x4]
	addss xmm0, [ecx+0x4]
	movss [ebp-0x20], xmm0
	movss xmm0, dword [edx+0x8]
	addss xmm0, [ecx+0x8]
	movss [ebp-0x1c], xmm0
	mov ecx, ebx
	add ecx, 0x114
	movss xmm0, dword [eax+0x1c]
	addss xmm0, [ebx+0x114]
	movss [ebp-0x30], xmm0
	movss xmm0, dword [edx+0x4]
	addss xmm0, [ecx+0x4]
	movss [ebp-0x2c], xmm0
	movss xmm0, dword [edx+0x8]
	addss xmm0, [ecx+0x8]
	movss [ebp-0x28], xmm0
	lea eax, [ebp-0x30]
	mov [esp+0x4], eax
	lea edx, [ebp-0x24]
	mov [esp], edx
	call _Z19ExpandBoundsToWidthPfS_
	mov edi, entityHandlers
	movzx eax, byte [ebx+0x16e]
	lea eax, [eax+eax*4]
	mov eax, [edi+eax*8+0xc]
	mov [ebp-0x103c], eax
	mov eax, [ebp-0x1040]
	test eax, eax
	jle _Z15G_TouchTriggersP9gentity_s_20
	xor ebx, ebx
	jmp _Z15G_TouchTriggersP9gentity_s_30
_Z15G_TouchTriggersP9gentity_s_70:
	mov [esp+0x8], esi
	lea eax, [ebp-0x30]
	mov [esp+0x4], eax
	lea edx, [ebp-0x24]
	mov [esp], edx
	call _Z16SV_EntityContactPKfS0_PK9gentity_s
	test eax, eax
	jz _Z15G_TouchTriggersP9gentity_s_40
	mov dword [esp], 0x1
	call _Z18Scr_IsSystemActiveh
	test eax, eax
	jnz _Z15G_TouchTriggersP9gentity_s_50
_Z15G_TouchTriggersP9gentity_s_80:
	test edi, edi
	jz _Z15G_TouchTriggersP9gentity_s_40
	mov dword [esp+0x8], 0x1
	mov edx, [ebp+0x8]
	mov [esp+0x4], edx
	mov [esp], esi
	call edi
_Z15G_TouchTriggersP9gentity_s_40:
	add ebx, 0x1
	cmp [ebp-0x1040], ebx
	jz _Z15G_TouchTriggersP9gentity_s_20
	mov edi, entityHandlers
_Z15G_TouchTriggersP9gentity_s_30:
	mov edx, [ebp+ebx*4-0x1030]
	lea eax, [edx+edx*8]
	lea eax, [edx+eax*2]
	mov ecx, eax
	shl ecx, 0x5
	add eax, ecx
	lea esi, [eax+edx]
	add esi, g_entities
	movzx eax, byte [esi+0x16e]
	lea eax, [eax+eax*4]
	mov edi, [edi+eax*8+0xc]
	test edi, edi
	jz _Z15G_TouchTriggersP9gentity_s_60
_Z15G_TouchTriggersP9gentity_s_90:
	cmp dword [esi+0x4], 0x3
	jnz _Z15G_TouchTriggersP9gentity_s_70
	mov eax, level
	mov eax, [eax+0x1ec]
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov edx, [ebp+0x8]
	mov eax, [edx+0x15c]
	mov [esp], eax
	call _Z20BG_PlayerTouchesItemPK13playerState_sPK13entityState_si
	test eax, eax
	jz _Z15G_TouchTriggersP9gentity_s_40
	mov dword [esp], 0x1
	call _Z18Scr_IsSystemActiveh
	test eax, eax
	jz _Z15G_TouchTriggersP9gentity_s_80
_Z15G_TouchTriggersP9gentity_s_50:
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z13Scr_AddEntityP9gentity_s
	mov dword [esp+0x8], 0x1
	mov edx, scr_const
	movzx eax, word [edx+0xba]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z10Scr_NotifyP9gentity_stj
	mov [esp], esi
	call _Z13Scr_AddEntityP9gentity_s
	mov dword [esp+0x8], 0x1
	mov edx, scr_const
	movzx eax, word [edx+0xba]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z10Scr_NotifyP9gentity_stj
	jmp _Z15G_TouchTriggersP9gentity_s_80
_Z15G_TouchTriggersP9gentity_s_60:
	mov eax, [ebp-0x103c]
	test eax, eax
	jnz _Z15G_TouchTriggersP9gentity_s_90
	jmp _Z15G_TouchTriggersP9gentity_s_40


;ClientThink_real(gentity_s*, usercmd_s*)
_Z16ClientThink_realP9gentity_sP9usercmd_s:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x28c
	mov ebx, [ebp+0xc]
	mov eax, [ebp+0x8]
	mov edi, [eax+0x15c]
	cmp dword [edi+0x2f8c], 0x2
	jz _Z16ClientThink_realP9gentity_sP9usercmd_s_10
_Z16ClientThink_realP9gentity_sP9usercmd_s_70:
	add esp, 0x28c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z16ClientThink_realP9gentity_sP9usercmd_s_10:
	mov ecx, level
	mov eax, [ecx+0x1ec]
	lea edx, [eax+0xc8]
	cmp [ebx], edx
	jle _Z16ClientThink_realP9gentity_sP9usercmd_s_20
	mov [ebx], edx
	mov eax, [ecx+0x1ec]
_Z16ClientThink_realP9gentity_sP9usercmd_s_20:
	sub eax, 0x3e8
	cmp [ebx], eax
	jge _Z16ClientThink_realP9gentity_sP9usercmd_s_30
	mov [ebx], eax
	mov esi, eax
_Z16ClientThink_realP9gentity_sP9usercmd_s_210:
	sub esi, [edi]
	test esi, esi
	jle _Z16ClientThink_realP9gentity_sP9usercmd_s_40
	cmp esi, 0xc9
	mov eax, 0xc8
	cmovge esi, eax
_Z16ClientThink_realP9gentity_sP9usercmd_s_230:
	mov eax, [edi+0x2f64]
	cmp eax, 0x3
	jz _Z16ClientThink_realP9gentity_sP9usercmd_s_50
	cmp eax, 0x2
	jz _Z16ClientThink_realP9gentity_sP9usercmd_s_60
	mov [esp], edi
	call _Z21ClientInactivityTimerP9gclient_s
	test eax, eax
	jz _Z16ClientThink_realP9gentity_sP9usercmd_s_70
	mov eax, [edi+0x3088]
	mov [edi+0x308c], eax
	mov edx, [edi+0x3100]
	test edx, edx
	jnz _Z16ClientThink_realP9gentity_sP9usercmd_s_80
	and eax, 0xffffffd7
	mov [edi+0x308c], eax
_Z16ClientThink_realP9gentity_sP9usercmd_s_80:
	mov edx, [edi+0x2f94]
	mov [edi+0x3088], edx
	test dl, 0x28
	jnz _Z16ClientThink_realP9gentity_sP9usercmd_s_90
	mov dword [edi+0x3100], 0x0
	mov edx, [edi+0x3088]
_Z16ClientThink_realP9gentity_sP9usercmd_s_90:
	mov eax, [edi+0x308c]
	not eax
	and eax, edx
	mov [edi+0x3090], eax
	or eax, [edi+0x3094]
	mov [edi+0x3094], eax
	mov ecx, [edi+0x5b4]
	test ecx, ecx
	jz _Z16ClientThink_realP9gentity_sP9usercmd_s_100
	test eax, 0x10000
	jnz _Z16ClientThink_realP9gentity_sP9usercmd_s_110
	test eax, 0x20000
	jnz _Z16ClientThink_realP9gentity_sP9usercmd_s_120
_Z16ClientThink_realP9gentity_sP9usercmd_s_250:
	and edx, 0x1300
	mov [edi+0x3088], edx
	and dword [edi+0x3090], 0x1300
	and eax, 0x1300
	mov [edi+0x3094], eax
_Z16ClientThink_realP9gentity_sP9usercmd_s_100:
	mov ecx, [edi+0xb4]
	mov [ebp-0x23c], ecx
	mov dword [esp+0x8], 0x110
	mov dword [esp+0x4], 0x0
	lea eax, [ebp-0x230]
	mov [esp], eax
	call memset
	mov [ebp-0x230], edi
	mov eax, [ebx]
	mov [ebp-0x22c], eax
	mov eax, [ebx+0x4]
	mov [ebp-0x228], eax
	mov eax, [ebx+0x8]
	mov [ebp-0x224], eax
	mov eax, [ebx+0xc]
	mov [ebp-0x220], eax
	mov eax, [ebx+0x10]
	mov [ebp-0x21c], eax
	mov eax, [ebx+0x14]
	mov [ebp-0x218], eax
	mov eax, [ebx+0x18]
	mov [ebp-0x214], eax
	mov eax, [ebx+0x1c]
	mov [ebp-0x210], eax
	mov eax, [edi+0x2fb0]
	mov [ebp-0x20c], eax
	mov eax, [edi+0x2fb4]
	mov [ebp-0x208], eax
	mov eax, [edi+0x2fb8]
	mov [ebp-0x204], eax
	mov eax, [edi+0x2fbc]
	mov [ebp-0x200], eax
	mov eax, [edi+0x2fc0]
	mov [ebp-0x1fc], eax
	mov eax, [edi+0x2fc4]
	mov [ebp-0x1f8], eax
	mov eax, [edi+0x2fc8]
	mov [ebp-0x1f4], eax
	mov eax, [edi+0x2fcc]
	mov [ebp-0x1f0], eax
	mov eax, 0x810011
	cmp dword [edi+0x4], 0x7
	mov edx, 0x2810011
	cmovl eax, edx
	mov [ebp-0x1ec], eax
	mov byte [ebp-0x124], 0x1
	lea edx, [edi+0x3098]
	lea ecx, [edi+0x1c]
	mov [ebp-0x270], ecx
	mov eax, [edi+0x1c]
	mov [edi+0x3098], eax
	lea eax, [edi+0x20]
	mov [ebp-0x254], eax
	mov eax, [edi+0x20]
	mov [edx+0x4], eax
	lea ecx, [edi+0x24]
	mov [ebp-0x250], ecx
	mov eax, [edi+0x24]
	mov [edx+0x8], eax
	mov [ebp-0xcc], edi
	mov eax, [edi+0x310c]
	mov [ebp-0xc8], eax
	mov eax, level
	mov edx, [eax+0x1ec]
	mov [ebp-0xc4], edx
	mov eax, [edi+0x3114]
	mov [ebp-0xc0], eax
	mov eax, [edi+0x3110]
	mov [ebp-0xbc], eax
	mov [esp+0x4], edx
	mov [esp], edi
	call _Z11BG_GetSpeedPK13playerState_si
	fstp dword [ebp-0xb8]
	cvtsi2ss xmm0, esi
	mulss xmm0, [_float_0_00100000]
	movss [ebp-0x26c], xmm0
	movss [ebp-0xb4], xmm0
	mov eax, [edi+0x3148]
	mov [ebp-0xb0], eax
	lea eax, [edi+0x3164]
	mov [ebp-0x268], eax
	mov [ebp-0xac], eax
	mov eax, g_speed
	mov eax, [eax]
	mov eax, [eax+0xc]
	mov [edi+0x60], eax
	lea edx, [ebp-0x3c]
	mov [esp+0x4], edx
	lea eax, [ebp-0xcc]
	mov [esp], eax
	call _Z22BG_CalculateViewAnglesP11viewState_tPf
	lea eax, [edi+0x108]
	movss xmm0, dword [edi+0x108]
	addss xmm0, [ebp-0x3c]
	movss [ebp-0x30], xmm0
	movss xmm0, dword [eax+0x4]
	addss xmm0, [ebp-0x38]
	movss [ebp-0x2c], xmm0
	movss xmm0, dword [eax+0x8]
	addss xmm0, [ebp-0x34]
	movss [ebp-0x28], xmm0
	mov eax, [edi+0xe8]
	mov [esp], eax
	call _Z15BG_GetWeaponDefj
	mov [ebp-0x258], eax
	mov eax, [edi+0x630]
	add eax, [edi+0x634]
	sub eax, [ebp-0xc4]
	test eax, eax
	jle _Z16ClientThink_realP9gentity_sP9usercmd_s_130
_Z16ClientThink_realP9gentity_sP9usercmd_s_270:
	lea ebx, [edi+0x3130]
	mov [esp+0x14], esi
	mov dword [esp+0x10], 0x3f800000
	mov [esp+0xc], ebx
	lea eax, [edi+0x3124]
	mov [esp+0x8], eax
	lea eax, [edi+0x3118]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z31BG_CalculateWeaponPosition_SwayPK13playerState_sPfS2_S2_fi
	mov eax, [ebp-0xcc]
	mov [ebp-0x120], eax
	mov eax, [ebp-0xb8]
	mov [ebp-0x11c], eax
	movss xmm0, dword [ebp-0x26c]
	movss [ebp-0x118], xmm0
	lea eax, [edi+0x313c]
	mov [ebp-0x264], eax
	mov eax, [edi+0x313c]
	mov [ebp-0x114], eax
	mov edx, [ebp-0x264]
	mov eax, [edx+0x4]
	mov [ebp-0x110], eax
	mov eax, [edx+0x8]
	mov [ebp-0x10c], eax
	mov eax, [edi+0x3148]
	mov [ebp-0x108], eax
	mov eax, [ebp-0xc4]
	mov [ebp-0x104], eax
	mov eax, [edi+0x310c]
	mov [ebp-0x100], eax
	mov eax, [edi+0x3114]
	mov [ebp-0xfc], eax
	mov eax, [edi+0x3110]
	mov [ebp-0xf8], eax
	lea ecx, [edi+0x314c]
	mov [ebp-0x260], ecx
	mov eax, [edi+0x314c]
	mov [ebp-0xf4], eax
	mov eax, [ecx+0x4]
	mov [ebp-0xf0], eax
	mov eax, [ecx+0x8]
	mov [ebp-0xec], eax
	lea esi, [edi+0x3158]
	mov [ebp-0x25c], esi
	mov eax, [edi+0x3158]
	mov [ebp-0xe8], eax
	mov eax, [esi+0x4]
	mov [ebp-0xe4], eax
	mov eax, [esi+0x8]
	mov [ebp-0xe0], eax
	mov eax, [edi+0x3130]
	mov [ebp-0xdc], eax
	mov eax, [ebx+0x4]
	mov [ebp-0xd8], eax
	mov eax, [ebx+0x8]
	mov [ebp-0xd4], eax
	mov eax, [ebp-0x268]
	mov [ebp-0xd0], eax
	lea edx, [ebp-0x3c]
	mov [esp+0x4], edx
	lea eax, [ebp-0x120]
	mov [esp], eax
	call _Z24BG_CalculateWeaponAnglesP13weaponState_tPf
	mov eax, [ebp-0x120]
	mov eax, [eax+0xe8]
	mov [esp], eax
	call _Z23BG_IsAimDownSightWeaponj
	test eax, eax
	jz _Z16ClientThink_realP9gentity_sP9usercmd_s_140
	pxor xmm0, xmm0
	mov eax, [ebp-0x120]
	ucomiss xmm0, [eax+0xf4]
	jp _Z16ClientThink_realP9gentity_sP9usercmd_s_150
	jnz _Z16ClientThink_realP9gentity_sP9usercmd_s_150
_Z16ClientThink_realP9gentity_sP9usercmd_s_140:
	mov eax, [ebp-0x114]
	mov edx, [ebp-0x264]
	mov [edx], eax
	mov eax, [ebp-0x110]
	mov [edx+0x4], eax
	mov eax, [ebp-0x10c]
	mov [edx+0x8], eax
	mov eax, [ebp-0x108]
	mov [edi+0x3148], eax
	mov eax, [ebp-0xf4]
	mov ecx, [ebp-0x260]
	mov [ecx], eax
	mov eax, [ebp-0xf0]
	mov [ecx+0x4], eax
	mov eax, [ebp-0xec]
	mov [ecx+0x8], eax
	mov eax, [ebp-0xe8]
	mov esi, [ebp-0x25c]
	mov [esi], eax
	mov eax, [ebp-0xe4]
	mov [esi+0x4], eax
	mov eax, [ebp-0xe0]
	mov [esi+0x8], eax
	mov eax, [ebp-0x30]
	mov [edi+0x30a4], eax
	mov eax, [ebp-0x2c]
	mov [edi+0x30a8], eax
	lea eax, [ebp-0x230]
	mov [esp], eax
	call _Z5PmoveP7pmove_t
	cmp byte [ebp-0x140], 0x0
	jnz _Z16ClientThink_realP9gentity_sP9usercmd_s_160
_Z16ClientThink_realP9gentity_sP9usercmd_s_260:
	mov ecx, [ebp-0x23c]
	cmp ecx, [edi+0xb4]
	jz _Z16ClientThink_realP9gentity_sP9usercmd_s_170
	mov eax, level
	mov edx, [eax+0x1ec]
	mov esi, [ebp+0x8]
	mov [esi+0x184], edx
	mov eax, [eax+0x1ec]
	mov [esi+0x158], eax
_Z16ClientThink_realP9gentity_sP9usercmd_s_170:
	mov eax, g_smoothClients
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z16ClientThink_realP9gentity_sP9usercmd_s_180
	mov ebx, [edi]
	mov ecx, [ebp+0x8]
	add ecx, 0x24
	lea edx, [edi+0x28]
	mov eax, [edi+0x28]
	mov esi, [ebp+0x8]
	mov [esi+0x24], eax
	mov eax, [edx+0x4]
	mov [ecx+0x4], eax
	mov eax, [edx+0x8]
	mov [ecx+0x8], eax
	mov [esi+0x10], ebx
	mov dword [esi+0x14], 0x32
	mov dword [esp+0xc], 0x1
	mov dword [esp+0x8], 0x1
	mov [esp+0x4], esi
	mov [esp], edi
	call _Z27BG_PlayerStateToEntityStateP13playerState_sP13entityState_sih
	mov dword [esi+0xc], 0x3
_Z16ClientThink_realP9gentity_sP9usercmd_s_240:
	mov edx, [ebp+0x8]
	add edx, 0x13c
	mov [ebp-0x248], edx
	mov edx, [ebp+0x8]
	add edx, 0x18
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x18]
	mov [ecx+0x13c], eax
	add ecx, 0x140
	mov [ebp-0x244], ecx
	mov eax, [edx+0x4]
	mov esi, [ebp+0x8]
	mov [esi+0x140], eax
	add esi, 0x144
	mov [ebp-0x240], esi
	mov eax, [edx+0x8]
	mov edx, [ebp+0x8]
	mov [edx+0x144], eax
	mov edx, [ebp+0x8]
	add edx, 0x108
	mov eax, [ebp-0x164]
	mov ecx, [ebp+0x8]
	mov [ecx+0x108], eax
	mov eax, [ebp-0x160]
	mov [edx+0x4], eax
	mov eax, [ebp-0x15c]
	mov [edx+0x8], eax
	mov edx, ecx
	add edx, 0x114
	mov eax, [ebp-0x158]
	mov [ecx+0x114], eax
	mov eax, [ebp-0x154]
	mov [edx+0x4], eax
	mov eax, [ebp-0x150]
	mov [edx+0x8], eax
	mov esi, [ecx+0x15c]
	mov eax, [esi+0xb4]
	lea ebx, [eax-0x4]
	cmp [ebp-0x23c], ebx
	cmovge ebx, [ebp-0x23c]
	lea edx, [eax+0x40]
	lea ecx, [ebx-0x100]
	cmp ebx, edx
	cmovg ebx, ecx
	cmp ebx, eax
	jl _Z16ClientThink_realP9gentity_sP9usercmd_s_190
_Z16ClientThink_realP9gentity_sP9usercmd_s_220:
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z13SV_LinkEntityP9gentity_s
	mov ecx, [ebp-0x270]
	mov eax, [ecx]
	mov esi, [ebp-0x248]
	mov [esi], eax
	mov edx, [ebp-0x254]
	mov eax, [edx]
	mov ecx, [ebp-0x244]
	mov [ecx], eax
	mov esi, [ebp-0x250]
	mov eax, [esi]
	mov edx, [ebp-0x240]
	mov [edx], eax
	mov edx, [ebp+0x8]
	add edx, 0x148
	xor eax, eax
	mov ecx, [ebp+0x8]
	mov [ecx+0x148], eax
	mov [edx+0x4], eax
	mov [edx+0x8], eax
	mov eax, [edi+0x10c]
	mov [ecx+0x14c], eax
	lea esi, [ebp-0x230]
	mov [esp+0x4], esi
	mov [esp], ecx
	call _Z13ClientImpactsP9gentity_sP7pmove_t
	mov eax, [ebp-0x23c]
	cmp eax, [edi+0xb4]
	jz _Z16ClientThink_realP9gentity_sP9usercmd_s_200
	mov eax, level
	mov eax, [eax+0x1ec]
	mov edx, [ebp+0x8]
	mov [edx+0x184], eax
_Z16ClientThink_realP9gentity_sP9usercmd_s_200:
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z21Player_UpdateActivateP9gentity_s
	add esp, 0x28c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z16ClientThink_realP9gentity_sP9usercmd_s_30:
	mov esi, [ebx]
	jmp _Z16ClientThink_realP9gentity_sP9usercmd_s_210
_Z16ClientThink_realP9gentity_sP9usercmd_s_190:
	mov eax, ebx
	and eax, 0x3
	mov edx, [esi+eax*4+0xc8]
	mov [esp+0xc], edx
	mov eax, [esi+eax*4+0xb8]
	mov [esp+0x8], eax
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z17HandleClientEventP9gclient_sP9gentity_sii
	add ebx, 0x1
	cmp [esi+0xb4], ebx
	jg _Z16ClientThink_realP9gentity_sP9usercmd_s_190
	jmp _Z16ClientThink_realP9gentity_sP9usercmd_s_220
_Z16ClientThink_realP9gentity_sP9usercmd_s_50:
	mov edx, [ebp+0x8]
	mov eax, [edx+0x15c]
	mov ecx, [eax+0x3088]
	mov [eax+0x308c], ecx
	mov edx, [eax+0x2f94]
	mov [eax+0x3088], edx
	not ecx
	and edx, ecx
	or [eax+0x3094], edx
	add esp, 0x28c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z16ClientThink_realP9gentity_sP9usercmd_s_40:
	mov eax, [ebp+0x8]
	sub eax, g_entities
	sar eax, 0x2
	imul eax, eax, 0x2c0685b5
	cmp [edi+0xdc], eax
	jnz _Z16ClientThink_realP9gentity_sP9usercmd_s_230
	jmp _Z16ClientThink_realP9gentity_sP9usercmd_s_70
_Z16ClientThink_realP9gentity_sP9usercmd_s_60:
	mov [esp+0x4], ebx
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z14SpectatorThinkP9gentity_sP9usercmd_s
	jmp _Z16ClientThink_realP9gentity_sP9usercmd_s_70
_Z16ClientThink_realP9gentity_sP9usercmd_s_180:
	mov dword [esp+0xc], 0x1
	mov dword [esp+0x8], 0x1
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z27BG_PlayerStateToEntityStateP13playerState_sP13entityState_sih
	jmp _Z16ClientThink_realP9gentity_sP9usercmd_s_240
_Z16ClientThink_realP9gentity_sP9usercmd_s_150:
	mov ecx, [ebp-0x258]
	mov esi, [ecx+0x438]
	test esi, esi
	jnz _Z16ClientThink_realP9gentity_sP9usercmd_s_140
	lea esi, [ebp-0x84]
	mov [esp+0x4], esi
	lea eax, [ebp-0x3c]
	mov [esp], eax
	call _Z12AnglesToAxisPKfPA3_f
	lea esi, [ebp-0xa8]
	mov [esp+0x4], esi
	lea edx, [ebp-0x30]
	mov [esp], edx
	call _Z12AnglesToAxisPKfPA3_f
	lea ebx, [ebp-0x60]
	mov [esp+0x8], ebx
	mov [esp+0x4], esi
	lea ecx, [ebp-0x84]
	mov [esp], ecx
	call _Z14MatrixMultiplyPA3_KfS1_PA3_f
	lea esi, [ebp-0x30]
	mov [esp+0x4], esi
	mov [esp], ebx
	call _Z12AxisToAnglesPA3_KfPf
	jmp _Z16ClientThink_realP9gentity_sP9usercmd_s_140
_Z16ClientThink_realP9gentity_sP9usercmd_s_120:
	mov dword [esp+0x8], 0x0
	mov eax, scr_const
	movzx eax, word [eax+0x14]
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z10Scr_NotifyP9gentity_stj
	mov edx, [edi+0x3088]
	mov eax, [edi+0x3094]
	jmp _Z16ClientThink_realP9gentity_sP9usercmd_s_250
_Z16ClientThink_realP9gentity_sP9usercmd_s_160:
	mov edx, [ebp-0x130]
	mov [ebp-0x24c], edx
	mov eax, [ebp-0x230]
	mov eax, [eax+0xdc]
	lea ebx, [eax+eax*8]
	lea ebx, [eax+ebx*2]
	mov edx, ebx
	shl edx, 0x5
	add ebx, edx
	add ebx, eax
	add ebx, g_entities
	call _Z7G_Spawnv
	mov esi, eax
	mov [esp+0x4], ebx
	lea eax, [eax+0x198]
	mov [esp], eax
	call _ZN9EntHandle6setEntEP9gentity_s
	mov [esp+0x4], ebx
	lea eax, [esi+0x154]
	mov [esp], eax
	call _ZN9EntHandle6setEntEP9gentity_s
	mov dword [esi+0x120], 0x10000
	mov dword [esi+0x190], 0x10000
	mov byte [esi+0xf6], 0x21
	mov dword [esi+0x4], 0x5
	mov byte [esi+0x16e], 0x15
	lea ecx, [esi+0x108]
	lea edx, [ebx+0x108]
	mov eax, [ebx+0x108]
	mov [esi+0x108], eax
	mov eax, [edx+0x4]
	mov [ecx+0x4], eax
	mov eax, [edx+0x8]
	mov [ecx+0x8], eax
	lea ecx, [esi+0x114]
	lea edx, [ebx+0x114]
	mov eax, [ebx+0x114]
	mov [esi+0x114], eax
	mov eax, [edx+0x4]
	mov [ecx+0x4], eax
	mov eax, [edx+0x8]
	mov [ecx+0x8], eax
	lea eax, [ebp-0x13c]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z11G_SetOriginP9gentity_sPKf
	mov [esp], esi
	call _Z13SV_LinkEntityP9gentity_s
	mov eax, g_mantleBlockTimeBuffer
	mov edx, [eax]
	mov eax, level
	mov ecx, [eax+0x1ec]
	add [ebp-0x24c], ecx
	mov eax, [edx+0xc]
	add [ebp-0x24c], eax
	mov edx, [ebp-0x24c]
	mov [esi+0x19c], edx
	jmp _Z16ClientThink_realP9gentity_sP9usercmd_s_260
_Z16ClientThink_realP9gentity_sP9usercmd_s_130:
	and dword [edi+0xc], 0xfffeffff
	jmp _Z16ClientThink_realP9gentity_sP9usercmd_s_270
_Z16ClientThink_realP9gentity_sP9usercmd_s_110:
	movsx eax, byte [ebx+0x1d]
	cvtsi2ss xmm3, eax
	movss xmm2, dword [_float_128_00000000]
	addss xmm3, xmm2
	movss xmm0, dword [_float_255_00000000]
	divss xmm3, xmm0
	movsx eax, byte [ebx+0x1e]
	cvtsi2ss xmm1, eax
	addss xmm1, xmm2
	divss xmm1, xmm0
	mov eax, level
	mulss xmm3, [eax+0x2e58]
	mulss xmm1, [eax+0x2e5c]
	movaps xmm0, xmm3
	mulss xmm0, [eax+0x2e64]
	addss xmm0, [eax+0x2e50]
	movaps xmm2, xmm1
	mulss xmm2, [eax+0x2e60]
	subss xmm0, xmm2
	movss [ebp-0x24], xmm0
	mulss xmm3, [eax+0x2e60]
	movss xmm0, dword [eax+0x2e54]
	subss xmm0, xmm3
	mulss xmm1, [eax+0x2e64]
	subss xmm0, xmm1
	movss [ebp-0x20], xmm0
	mov dword [ebp-0x1c], 0x0
	lea eax, [ebp-0x24]
	mov [esp], eax
	call _Z13Scr_AddVectorPKf
	mov dword [esp+0x8], 0x1
	mov eax, scr_const
	movzx eax, word [eax+0x16]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z10Scr_NotifyP9gentity_stj
	mov edx, [edi+0x3088]
	mov eax, [edi+0x3094]
	jmp _Z16ClientThink_realP9gentity_sP9usercmd_s_250


;P_DamageFeedback(gentity_s*)
_Z16P_DamageFeedbackP9gentity_s:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov eax, [ebp+0x8]
	mov ebx, [eax+0x15c]
	cmp dword [ebx+0x4], 0x6
	jg _Z16P_DamageFeedbackP9gentity_s_10
	mov ecx, level
	mov eax, [ecx+0x1ec]
	sub eax, [ebx+0x310c]
	cmp eax, 0x1f4
	jg _Z16P_DamageFeedbackP9gentity_s_20
_Z16P_DamageFeedbackP9gentity_s_70:
	mov eax, [ebx+0x30ac]
	test eax, eax
	jle _Z16P_DamageFeedbackP9gentity_s_10
	mov edx, [ebx+0x2fe8]
	test edx, edx
	jle _Z16P_DamageFeedbackP9gentity_s_10
	lea eax, [eax+eax*4]
	lea eax, [eax+eax*4]
	lea esi, [eax*4]
	mov eax, esi
	mov edi, edx
	cdq
	idiv edi
	mov esi, eax
	cmp eax, 0x7f
	jle _Z16P_DamageFeedbackP9gentity_s_30
	mov esi, 0x7f
	movss xmm5, dword [_float_127_00000000]
_Z16P_DamageFeedbackP9gentity_s_80:
	movaps xmm0, xmm5
	addss xmm0, [ebx+0x628]
	movss [ebx+0x628], xmm0
	ucomiss xmm0, [_float_255_00000000]
	jbe _Z16P_DamageFeedbackP9gentity_s_40
	mov dword [ebx+0x628], 0x437f0000
_Z16P_DamageFeedbackP9gentity_s_40:
	mov eax, bg_viewKickScale
	mov eax, [eax]
	movaps xmm6, xmm5
	mulss xmm6, [eax+0xc]
	mov eax, bg_viewKickMin
	mov eax, [eax]
	movss xmm0, dword [eax+0xc]
	ucomiss xmm0, xmm6
	ja _Z16P_DamageFeedbackP9gentity_s_50
	mov eax, bg_viewKickMax
	mov eax, [eax]
	movss xmm0, dword [eax+0xc]
	minss xmm0, xmm6
_Z16P_DamageFeedbackP9gentity_s_50:
	movaps xmm6, xmm0
	mov eax, [ebx+0x30bc]
	test eax, eax
	jz _Z16P_DamageFeedbackP9gentity_s_60
	mov dword [ebx+0x3110], 0x0
	xorps xmm6, [_data16_80000000]
	movss [ebx+0x3114], xmm6
	mov dword [ebx+0x140], 0xff
	mov dword [ebx+0x13c], 0xff
	mov dword [ebx+0x30bc], 0x0
_Z16P_DamageFeedbackP9gentity_s_90:
	add dword [ebx+0x138], 0x1
	mov eax, [ecx+0x1ec]
	sub eax, 0x14
	mov [ebx+0x310c], eax
	mov [ebx+0x144], esi
	mov dword [ebx+0x30ac], 0x0
_Z16P_DamageFeedbackP9gentity_s_10:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z16P_DamageFeedbackP9gentity_s_20:
	mov dword [ebx+0x144], 0x0
	jmp _Z16P_DamageFeedbackP9gentity_s_70
_Z16P_DamageFeedbackP9gentity_s_30:
	cvtsi2ss xmm5, eax
	jmp _Z16P_DamageFeedbackP9gentity_s_80
_Z16P_DamageFeedbackP9gentity_s_60:
	lea edx, [ebx+0x30b0]
	lea eax, [ebp-0x24]
	mov [esp+0x4], eax
	mov [esp], edx
	movss [ebp-0x58], xmm0
	call _Z11vectoanglesPKfPf
	lea eax, [ebp-0x48]
	mov [esp+0x4], eax
	lea eax, [ebx+0x108]
	mov [esp], eax
	call _Z12AnglesToAxisPKfPA3_f
	movss xmm6, dword [ebp-0x58]
	movaps xmm5, xmm6
	xorps xmm5, [_data16_80000000]
	movss xmm0, dword [ebx+0x30b0]
	movaps xmm2, xmm0
	mulss xmm2, [ebp-0x3c]
	movss xmm4, dword [ebx+0x30b4]
	movaps xmm1, xmm4
	mulss xmm1, [ebp-0x38]
	addss xmm2, xmm1
	movss xmm3, dword [ebx+0x30b8]
	movaps xmm1, xmm3
	mulss xmm1, [ebp-0x34]
	addss xmm2, xmm1
	mulss xmm5, xmm2
	movss [ebx+0x3110], xmm5
	mulss xmm0, [ebp-0x48]
	mulss xmm4, [ebp-0x44]
	addss xmm0, xmm4
	mulss xmm3, [ebp-0x40]
	addss xmm0, xmm3
	mulss xmm0, xmm6
	movss [ebx+0x3114], xmm0
	movss xmm0, dword [ebp-0x24]
	movss xmm2, dword [_float_360_00000000]
	divss xmm0, xmm2
	movss xmm1, dword [_float_256_00000000]
	mulss xmm0, xmm1
	cvttss2si eax, xmm0
	mov [ebx+0x140], eax
	movss xmm0, dword [ebp-0x20]
	divss xmm0, xmm2
	mulss xmm0, xmm1
	cvttss2si eax, xmm0
	mov [ebx+0x13c], eax
	mov ecx, level
	jmp _Z16P_DamageFeedbackP9gentity_s_90
	nop


;HandleClientEvent(gclient_s*, gentity_s*, int, int)
_Z17HandleClientEventP9gclient_sP9gentity_sii:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x40
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov eax, [ebp+0x10]
	mov ecx, [ebp+0x14]
	lea edx, [eax-0x13]
	cmp edx, 0x2c
	ja _Z17HandleClientEventP9gclient_sP9gentity_sii_10
	jmp dword [edx*4+_Z17HandleClientEventP9gclient_sP9gentity_sii_jumptab_0]
_Z17HandleClientEventP9gclient_sP9gentity_sii_10:
	sub eax, 0x6a
	cmp eax, 0x1c
	ja _Z17HandleClientEventP9gclient_sP9gentity_sii_20
	cmp dword [esi+0x4], 0x1
	jz _Z17HandleClientEventP9gclient_sP9gentity_sii_30
_Z17HandleClientEventP9gclient_sP9gentity_sii_20:
	add esp, 0x40
	pop ebx
	pop esi
	pop ebp
	ret
_Z17HandleClientEventP9gclient_sP9gentity_sii_30:
	cmp ecx, 0x63
	jg _Z17HandleClientEventP9gclient_sP9gentity_sii_40
	cvtsi2ss xmm1, ecx
	mulss xmm1, [_float_0_01000000]
	ucomiss xmm1, [_float_0_00000000]
	jp _Z17HandleClientEventP9gclient_sP9gentity_sii_50
	jz _Z17HandleClientEventP9gclient_sP9gentity_sii_20
_Z17HandleClientEventP9gclient_sP9gentity_sii_50:
	mov dword [esp+0x30], 0x0
	mov dword [esp+0x2c], 0x0
	mov dword [esp+0x28], 0x0
	mov dword [esp+0x24], 0x0
	mov dword [esp+0x20], 0xffffffff
	mov dword [esp+0x1c], 0xb
	mov dword [esp+0x18], 0x0
	cvtsi2ss xmm0, dword [ebx+0x150]
	mulss xmm0, xmm1
	cvttss2si eax, xmm0
	mov [esp+0x14], eax
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call _Z8G_DamageP9gentity_sS0_S0_PKfS2_iiii13hitLocation_tjji
	add esp, 0x40
	pop ebx
	pop esi
	pop ebp
	ret
_Z17HandleClientEventP9gclient_sP9gentity_sii_240:
	mov dword [ebp+0x10], 0x0
	mov eax, scr_const
	movzx eax, word [eax+0x22]
_Z17HandleClientEventP9gclient_sP9gentity_sii_100:
	mov [ebp+0xc], eax
	mov [ebp+0x8], esi
	add esp, 0x40
	pop ebx
	pop esi
	pop ebp
	jmp _Z10Scr_NotifyP9gentity_stj
_Z17HandleClientEventP9gclient_sP9gentity_sii_230:
	mov eax, [esi+0x15c]
	test eax, eax
	jz _Z17HandleClientEventP9gclient_sP9gentity_sii_20
	test byte [esi+0x180], 0x3
	jnz _Z17HandleClientEventP9gclient_sP9gentity_sii_20
	mov dword [esi+0x1a0], 0x0
	mov dword [eax+0x148], 0x0
	mov eax, [esi+0x15c]
	mov ebx, [eax+0x48]
	cmp ebx, 0x3ff
	jz _Z17HandleClientEventP9gclient_sP9gentity_sii_60
	lea eax, [ebx+ebx*8]
	lea eax, [ebx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	add eax, ebx
	add eax, g_entities
	mov dword [esp+0x20], 0x0
	mov dword [esp+0x1c], 0x0
	mov dword [esp+0x18], 0x0
	mov [esp+0x14], ecx
	mov dword [esp+0x10], 0x3
	mov dword [esp+0xc], 0x186a0
	mov [esp+0x8], eax
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z10player_dieP9gentity_sS0_S0_iiiPKf13hitLocation_ti
	jmp _Z17HandleClientEventP9gclient_sP9gentity_sii_20
_Z17HandleClientEventP9gclient_sP9gentity_sii_190:
	mov eax, g_antilag
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z17HandleClientEventP9gclient_sP9gentity_sii_70
	mov eax, [ebx+0x3168]
_Z17HandleClientEventP9gclient_sP9gentity_sii_130:
	mov [ebp+0xc], eax
	mov [ebp+0x8], esi
	add esp, 0x40
	pop ebx
	pop esi
	pop ebp
	jmp _Z10FireWeaponP9gentity_si
_Z17HandleClientEventP9gclient_sP9gentity_sii_220:
	mov eax, [esi+0x15c]
	mov ebx, [eax+0x5a8]
	test ebx, ebx
	jz _Z17HandleClientEventP9gclient_sP9gentity_sii_20
	mov [esp], ecx
	call _Z15BG_GetWeaponDefj
	cmp dword [eax+0x144], 0x1
	jnz _Z17HandleClientEventP9gclient_sP9gentity_sii_20
	mov eax, [esi+0x15c]
	mov edx, [eax+0x5a8]
	lea eax, [edx+edx*8]
	lea eax, [edx+eax*2]
	mov ecx, eax
	shl ecx, 0x5
	add eax, ecx
	lea ebx, [eax+edx]
	add ebx, g_entities
	cmp dword [ebx+0x4], 0x4
	jnz _Z17HandleClientEventP9gclient_sP9gentity_sii_20
	mov eax, [ebx+0x88]
	and eax, 0x8000007f
	js _Z17HandleClientEventP9gclient_sP9gentity_sii_80
_Z17HandleClientEventP9gclient_sP9gentity_sii_140:
	mov [esp], eax
	call _Z15BG_GetWeaponDefj
	cmp dword [eax+0x144], 0x1
	jnz _Z17HandleClientEventP9gclient_sP9gentity_sii_20
	mov edx, [esi+0x15c]
	mov ecx, [edx+0x4c]
	test ecx, ecx
	jz _Z17HandleClientEventP9gclient_sP9gentity_sii_20
	movzx eax, byte [ebx+0x16e]
	lea eax, [eax+eax*4]
	shl eax, 0x3
	add eax, entityHandlers
	mov ecx, [eax+0xc]
	test ecx, ecx
	jz _Z17HandleClientEventP9gclient_sP9gentity_sii_20
	cmp word [ebx+0x198], 0x0
	jz _Z17HandleClientEventP9gclient_sP9gentity_sii_90
	movzx eax, word [ebx+0x198]
	sub eax, 0x1
	mov [edx+0x48], eax
_Z17HandleClientEventP9gclient_sP9gentity_sii_150:
	mov edx, [esi+0x15c]
	mov eax, [edx+0x4c]
	mov [edx+0x44], eax
	mov dword [ebp+0x10], 0x0
	mov [ebp+0xc], esi
	mov [ebp+0x8], ebx
	add esp, 0x40
	pop ebx
	pop esi
	pop ebp
	jmp ecx
_Z17HandleClientEventP9gclient_sP9gentity_sii_210:
	mov [ebp+0x8], esi
	add esp, 0x40
	pop ebx
	pop esi
	pop ebp
	jmp _Z12G_UseOffHandP9gentity_s
_Z17HandleClientEventP9gclient_sP9gentity_sii_180:
	mov [esp], ecx
	call _Z15BG_GetWeaponDefj
	mov eax, [eax]
	mov [esp], eax
	call _Z13Scr_AddStringPKc
	mov dword [ebp+0x10], 0x1
	mov eax, scr_const
	movzx eax, word [eax+0x44]
	jmp _Z17HandleClientEventP9gclient_sP9gentity_sii_100
_Z17HandleClientEventP9gclient_sP9gentity_sii_200:
	mov eax, g_antilag
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z17HandleClientEventP9gclient_sP9gentity_sii_110
	mov eax, [ebx+0x3168]
_Z17HandleClientEventP9gclient_sP9gentity_sii_120:
	mov [ebp+0xc], eax
	mov [ebp+0x8], esi
	add esp, 0x40
	pop ebx
	pop esi
	pop ebp
	jmp _Z15FireWeaponMeleeP9gentity_si
_Z17HandleClientEventP9gclient_sP9gentity_sii_170:
	mov dword [ebp+0x10], 0x0
	mov eax, scr_const
	movzx eax, word [eax+0x66]
	jmp _Z17HandleClientEventP9gclient_sP9gentity_sii_100
_Z17HandleClientEventP9gclient_sP9gentity_sii_160:
	mov dword [ebp+0x10], 0x0
	mov eax, scr_const
	movzx eax, word [eax+0x68]
	jmp _Z17HandleClientEventP9gclient_sP9gentity_sii_100
_Z17HandleClientEventP9gclient_sP9gentity_sii_40:
	movss xmm1, dword [_float_1_10000002]
	jmp _Z17HandleClientEventP9gclient_sP9gentity_sii_50
_Z17HandleClientEventP9gclient_sP9gentity_sii_110:
	mov eax, level
	mov eax, [eax+0x1ec]
	jmp _Z17HandleClientEventP9gclient_sP9gentity_sii_120
_Z17HandleClientEventP9gclient_sP9gentity_sii_70:
	mov eax, level
	mov eax, [eax+0x1ec]
	jmp _Z17HandleClientEventP9gclient_sP9gentity_sii_130
_Z17HandleClientEventP9gclient_sP9gentity_sii_60:
	mov dword [esp+0x20], 0x0
	mov dword [esp+0x1c], 0x0
	mov dword [esp+0x18], 0x0
	mov [esp+0x14], ecx
	mov dword [esp+0x10], 0xc
	mov dword [esp+0xc], 0x186a0
	mov [esp+0x8], esi
	mov [esp+0x4], esi
	mov [esp], esi
	call _Z10player_dieP9gentity_sS0_S0_iiiPKf13hitLocation_ti
	jmp _Z17HandleClientEventP9gclient_sP9gentity_sii_20
_Z17HandleClientEventP9gclient_sP9gentity_sii_80:
	sub eax, 0x1
	or eax, 0xffffff80
	add eax, 0x1
	jmp _Z17HandleClientEventP9gclient_sP9gentity_sii_140
_Z17HandleClientEventP9gclient_sP9gentity_sii_90:
	mov dword [edx+0x48], 0x3fe
	jmp _Z17HandleClientEventP9gclient_sP9gentity_sii_150
	add [eax], al
	
	
_Z17HandleClientEventP9gclient_sP9gentity_sii_jumptab_0:
	dd _Z17HandleClientEventP9gclient_sP9gentity_sii_160
	dd _Z17HandleClientEventP9gclient_sP9gentity_sii_170
	dd _Z17HandleClientEventP9gclient_sP9gentity_sii_10
	dd _Z17HandleClientEventP9gclient_sP9gentity_sii_10
	dd _Z17HandleClientEventP9gclient_sP9gentity_sii_10
	dd _Z17HandleClientEventP9gclient_sP9gentity_sii_10
	dd _Z17HandleClientEventP9gclient_sP9gentity_sii_180
	dd _Z17HandleClientEventP9gclient_sP9gentity_sii_190
	dd _Z17HandleClientEventP9gclient_sP9gentity_sii_190
	dd _Z17HandleClientEventP9gclient_sP9gentity_sii_10
	dd _Z17HandleClientEventP9gclient_sP9gentity_sii_10
	dd _Z17HandleClientEventP9gclient_sP9gentity_sii_10
	dd _Z17HandleClientEventP9gclient_sP9gentity_sii_200
	dd _Z17HandleClientEventP9gclient_sP9gentity_sii_180
	dd _Z17HandleClientEventP9gclient_sP9gentity_sii_210
	dd _Z17HandleClientEventP9gclient_sP9gentity_sii_220
	dd _Z17HandleClientEventP9gclient_sP9gentity_sii_10
	dd _Z17HandleClientEventP9gclient_sP9gentity_sii_10
	dd _Z17HandleClientEventP9gclient_sP9gentity_sii_10
	dd _Z17HandleClientEventP9gclient_sP9gentity_sii_190
	dd _Z17HandleClientEventP9gclient_sP9gentity_sii_10
	dd _Z17HandleClientEventP9gclient_sP9gentity_sii_10
	dd _Z17HandleClientEventP9gclient_sP9gentity_sii_10
	dd _Z17HandleClientEventP9gclient_sP9gentity_sii_10
	dd _Z17HandleClientEventP9gclient_sP9gentity_sii_10
	dd _Z17HandleClientEventP9gclient_sP9gentity_sii_10
	dd _Z17HandleClientEventP9gclient_sP9gentity_sii_10
	dd _Z17HandleClientEventP9gclient_sP9gentity_sii_10
	dd _Z17HandleClientEventP9gclient_sP9gentity_sii_10
	dd _Z17HandleClientEventP9gclient_sP9gentity_sii_10
	dd _Z17HandleClientEventP9gclient_sP9gentity_sii_10
	dd _Z17HandleClientEventP9gclient_sP9gentity_sii_10
	dd _Z17HandleClientEventP9gclient_sP9gentity_sii_10
	dd _Z17HandleClientEventP9gclient_sP9gentity_sii_10
	dd _Z17HandleClientEventP9gclient_sP9gentity_sii_10
	dd _Z17HandleClientEventP9gclient_sP9gentity_sii_10
	dd _Z17HandleClientEventP9gclient_sP9gentity_sii_10
	dd _Z17HandleClientEventP9gclient_sP9gentity_sii_10
	dd _Z17HandleClientEventP9gclient_sP9gentity_sii_10
	dd _Z17HandleClientEventP9gclient_sP9gentity_sii_10
	dd _Z17HandleClientEventP9gclient_sP9gentity_sii_10
	dd _Z17HandleClientEventP9gclient_sP9gentity_sii_10
	dd _Z17HandleClientEventP9gclient_sP9gentity_sii_10
	dd _Z17HandleClientEventP9gclient_sP9gentity_sii_230
	dd _Z17HandleClientEventP9gclient_sP9gentity_sii_240


;G_PlayerController(gentity_s const*, int*)
_Z18G_PlayerControllerPK9gentity_sPi:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov ebx, [ebp+0x8]
	mov edx, [ebx+0x8c]
	lea eax, [edx+edx*8]
	mov ecx, eax
	shl ecx, 0x4
	add eax, ecx
	lea eax, [edx+eax*2]
	mov edx, level_bgs
	lea edx, [edx+eax*4+0x99a04]
	mov [ebp-0x30], edx
	mov eax, level
	mov eax, [eax+0x1f4]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov [esp], ebx
	call _Z28BG_Player_DoControllersSetupPK13entityState_sP12clientInfo_ti
	mov eax, [ebx]
	mov [esp], eax
	call _Z17Com_GetServerDObji
	mov [ebp-0x2c], eax
	xor ebx, ebx
	mov edi, controller_names
	lea esi, [ebp-0x20]
_Z18G_PlayerControllerPK9gentity_sPi_10:
	mov byte [ebp+ebx-0x20], 0xfe
	mov [esp+0x8], esi
	mov eax, [edi]
	movzx eax, word [eax]
	mov [esp+0x4], eax
	mov eax, [ebp-0x2c]
	mov [esp], eax
	call _Z16DObjGetBoneIndexPK6DObj_sjPh
	add ebx, 0x1
	add esi, 0x1
	add edi, 0x4
	cmp ebx, 0x6
	jnz _Z18G_PlayerControllerPK9gentity_sPi_10
	mov eax, [ebp-0x30]
	add eax, 0x3f8
	mov [ebp-0x24], eax
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov eax, [ebp-0x2c]
	mov [esp+0x4], eax
	lea eax, [ebp-0x24]
	mov [esp], eax
	call _Z23BG_Player_DoControllersPK14CEntPlayerInfoPK6DObj_sPi
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;G_SetClientContents(gentity_s*)
_Z19G_SetClientContentsP9gentity_s:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	mov edx, [ecx+0x15c]
	mov eax, [edx+0x3078]
	test eax, eax
	jnz _Z19G_SetClientContentsP9gentity_s_10
	mov eax, [edx+0x307c]
	test eax, eax
	jnz _Z19G_SetClientContentsP9gentity_s_10
	xor eax, eax
	cmp dword [edx+0x2f64], 0x1
	mov edx, 0x2000000
	cmovnz eax, edx
	mov [ecx+0x120], eax
	pop ebp
	ret
_Z19G_SetClientContentsP9gentity_s_10:
	mov dword [ecx+0x120], 0x0
	pop ebp
	ret
	nop


;G_SetLastServerTime(int, int)
_Z19G_SetLastServerTimeii:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov ecx, [ebp+0x8]
	mov esi, [ebp+0xc]
	lea eax, [ecx+ecx*8]
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	add eax, ecx
	add eax, g_entities
	mov edx, level
	mov ebx, [edx+0x1ec]
	mov edx, ebx
	sub edx, esi
	lea ecx, [ebx-0x3e8]
	cmp edx, 0x3e9
	cmovge esi, ecx
	mov eax, [eax+0x15c]
	cmp esi, [eax+0x3168]
	jge _Z19G_SetLastServerTimeii_10
	cmp esi, ebx
	jl _Z19G_SetLastServerTimeii_20
_Z19G_SetLastServerTimeii_10:
	mov [eax+0x3168], esi
_Z19G_SetLastServerTimeii_20:
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;GetFollowPlayerState(int, playerState_s*)
_Z20GetFollowPlayerStateiP13playerState_s:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov ecx, [ebp+0x8]
	mov ebx, [ebp+0xc]
	lea eax, [ecx+ecx*2]
	mov edx, eax
	shl edx, 0x6
	add eax, edx
	mov edx, eax
	shl edx, 0x6
	add eax, edx
	lea edx, [eax+ecx]
	mov eax, level
	add edx, [eax]
	test byte [edx+0x14], 0x4
	jz _Z20GetFollowPlayerStateiP13playerState_s_10
	mov dword [esp+0x8], 0x2f64
	mov [esp+0x4], edx
	mov [esp], ebx
	call memcpy
	mov esi, ebx
	xor edi, edi
	lea ebx, [ebx+0x8a4]
	jmp _Z20GetFollowPlayerStateiP13playerState_s_20
_Z20GetFollowPlayerStateiP13playerState_s_40:
	mov dword [esp+0x8], 0xa0
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call memset
	add edi, 0x1
	add ebx, 0xa0
	add esi, 0xa0
	cmp edi, 0x1f
	jz _Z20GetFollowPlayerStateiP13playerState_s_30
_Z20GetFollowPlayerStateiP13playerState_s_20:
	mov eax, [esi+0x8a4]
	test eax, eax
	jnz _Z20GetFollowPlayerStateiP13playerState_s_40
_Z20GetFollowPlayerStateiP13playerState_s_30:
	mov eax, 0x1
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z20GetFollowPlayerStateiP13playerState_s_10:
	mov dword [esp+0x8], 0x2f64
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call memset
	xor eax, eax
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;ClientInactivityTimer(gclient_s*)
_Z21ClientInactivityTimerP9gclient_s:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0x8]
	mov eax, g_inactivity
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	jnz _Z21ClientInactivityTimerP9gclient_s_10
	mov eax, level
	mov eax, [eax+0x1ec]
	add eax, 0xea60
	mov [ebx+0x30cc], eax
	mov dword [ebx+0x30d0], 0x0
	mov eax, 0x1
_Z21ClientInactivityTimerP9gclient_s_60:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z21ClientInactivityTimerP9gclient_s_10:
	cmp word [ebx+0x2fa6], 0x0
	jz _Z21ClientInactivityTimerP9gclient_s_20
_Z21ClientInactivityTimerP9gclient_s_30:
	lea eax, [eax+eax*4]
	lea eax, [eax+eax*4]
	lea eax, [eax+eax*4]
	mov edx, level
	mov edx, [edx+0x1ec]
	lea eax, [edx+eax*8]
	mov [ebx+0x30cc], eax
	mov dword [ebx+0x30d0], 0x0
	mov eax, 0x1
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z21ClientInactivityTimerP9gclient_s_20:
	test dword [ebx+0x2f94], 0x401
	jnz _Z21ClientInactivityTimerP9gclient_s_30
	mov esi, [ebx+0x2fd0]
	test esi, esi
	jnz _Z21ClientInactivityTimerP9gclient_s_40
	mov esi, level
	mov edx, [esi+0x1ec]
	mov eax, [ebx+0x30cc]
	cmp edx, eax
	jg _Z21ClientInactivityTimerP9gclient_s_50
	sub eax, 0x2710
	cmp edx, eax
	jle _Z21ClientInactivityTimerP9gclient_s_40
	mov ecx, [ebx+0x30d0]
	test ecx, ecx
	jnz _Z21ClientInactivityTimerP9gclient_s_40
	mov dword [ebx+0x30d0], 0x1
	mov dword [esp+0x4], 0x63
	mov dword [esp], _cstring_c_game_inactived
	call _Z2vaPKcz
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	sub ebx, [esi]
	sar ebx, 0x2
	imul eax, ebx, 0x408b97a1
	mov [esp], eax
	call _Z24SV_GameSendServerCommandi11svscmd_typePKc
	mov eax, 0x1
	jmp _Z21ClientInactivityTimerP9gclient_s_60
_Z21ClientInactivityTimerP9gclient_s_40:
	mov eax, 0x1
	jmp _Z21ClientInactivityTimerP9gclient_s_60
_Z21ClientInactivityTimerP9gclient_s_50:
	mov dword [esp+0x4], _cstring_game_droppedfori
	sub ebx, [esi]
	sar ebx, 0x2
	imul eax, ebx, 0x408b97a1
	mov [esp], eax
	call _Z17SV_GameDropClientiPKc
	xor eax, eax
	jmp _Z21ClientInactivityTimerP9gclient_s_60
	nop
	add [eax], al


;G_ClientCanSpectateTeam(gclient_s*, team_t)
_Z23G_ClientCanSpectateTeamP9gclient_s6team_t:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0xc]
	mov eax, [ebp+0x8]
	mov eax, [eax+0x3004]
	sar eax, cl
	xor eax, 0x1
	and eax, 0x1
	pop ebp
	ret
	nop


;SpectatorClientEndFrame(gentity_s*)
_Z23SpectatorClientEndFrameP9gentity_s:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2fec
	mov eax, [ebp+0x8]
	mov esi, [eax+0x15c]
	mov edx, eax
	movzx eax, byte [eax+0xf6]
	and al, 0xfd
	or al, 0x1
	mov [edx+0xf6], al
	mov byte [edx+0x16b], 0x0
	mov dword [edx+0x120], 0x0
	and dword [esi+0x14], 0xfffffffb
	mov dword [edx+0x4], 0x5
	mov dword [esi+0x104], 0x0
	xor eax, eax
	mov [esi+0x30a4], eax
	mov [esi+0x30a8], eax
	mov eax, [esi+0x2f68]
	test eax, eax
	js _Z23SpectatorClientEndFrameP9gentity_s_10
	mov [esi+0x3074], eax
	lea edi, [ebp-0x80]
	lea ebx, [ebp-0x1c]
	jmp _Z23SpectatorClientEndFrameP9gentity_s_20
_Z23SpectatorClientEndFrameP9gentity_s_60:
	mov eax, [esi+0x2f74]
	sub eax, [esi+0x3070]
	mov [ebp-0x1c], eax
	mov [esp+0xc], edi
	lea eax, [ebp-0x2fe4]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov eax, [esi+0x2f68]
	mov [esp], eax
	call _Z24SV_GetArchivedClientInfoiPiP13playerState_sP13clientState_s
	test eax, eax
	jz _Z23SpectatorClientEndFrameP9gentity_s_30
	mov edx, [esi+0x2f6c]
	mov eax, 0x3ff
	cmp edx, 0xffffffff
	cmovnz eax, edx
	mov [ebp-0x2744], eax
	mov ecx, [ebp-0x7c]
	mov eax, [esi+0x3004]
	sar eax, cl
	test al, 0x1
	jz _Z23SpectatorClientEndFrameP9gentity_s_40
_Z23SpectatorClientEndFrameP9gentity_s_30:
	mov eax, [esi+0x2f74]
	test eax, eax
	jz _Z23SpectatorClientEndFrameP9gentity_s_50
	sub eax, 0x32
	mov [esi+0x2f74], eax
_Z23SpectatorClientEndFrameP9gentity_s_20:
	mov eax, [esi+0x2f74]
	test eax, eax
	jns _Z23SpectatorClientEndFrameP9gentity_s_60
	mov dword [esi+0x2f74], 0x0
	jmp _Z23SpectatorClientEndFrameP9gentity_s_60
_Z23SpectatorClientEndFrameP9gentity_s_50:
	mov dword [esi+0x2f68], 0xffffffff
	mov dword [esi+0x2f6c], 0xffffffff
	mov dword [esi+0x3074], 0xffffffff
_Z23SpectatorClientEndFrameP9gentity_s_10:
	mov ebx, [esi+0x3074]
	test ebx, ebx
	js _Z23SpectatorClientEndFrameP9gentity_s_70
_Z23SpectatorClientEndFrameP9gentity_s_140:
	mov edx, [esi+0x3074]
	test edx, edx
	js _Z23SpectatorClientEndFrameP9gentity_s_80
	mov eax, [esi+0x2f74]
	add eax, [esi+0x3070]
	mov [ebp-0x1c], eax
	lea eax, [ebp-0x80]
	mov [esp+0xc], eax
	lea eax, [ebp-0x2fe4]
	mov [esp+0x8], eax
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov [esp], edx
	call _Z24SV_GetArchivedClientInfoiPiP13playerState_sP13clientState_s
	test eax, eax
	jnz _Z23SpectatorClientEndFrameP9gentity_s_90
_Z23SpectatorClientEndFrameP9gentity_s_80:
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z13StopFollowingP9gentity_s
	mov ecx, [esi+0x14]
	mov edx, ecx
	and edx, 0xffffffef
	mov [esi+0x14], edx
	mov eax, [esi+0x3004]
	test al, 0x4
	jnz _Z23SpectatorClientEndFrameP9gentity_s_100
_Z23SpectatorClientEndFrameP9gentity_s_110:
	or edx, 0x8
	mov [esi+0x14], edx
_Z23SpectatorClientEndFrameP9gentity_s_120:
	add esp, 0x2fec
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z23SpectatorClientEndFrameP9gentity_s_100:
	test al, 0x2
	jz _Z23SpectatorClientEndFrameP9gentity_s_110
	test al, 0x1
	jz _Z23SpectatorClientEndFrameP9gentity_s_110
	and ecx, 0xffffffe7
	mov [esi+0x14], ecx
	jmp _Z23SpectatorClientEndFrameP9gentity_s_120
_Z23SpectatorClientEndFrameP9gentity_s_90:
	mov ecx, [ebp-0x7c]
	mov eax, [esi+0x3004]
	sar eax, cl
	test al, 0x1
	jnz _Z23SpectatorClientEndFrameP9gentity_s_80
_Z23SpectatorClientEndFrameP9gentity_s_40:
	mov ebx, [ebp-0x2f34]
	and ebx, 0xffefffff
	mov eax, [esi+0xb0]
	and eax, 0x100000
	or ebx, eax
	mov dword [esp+0x8], 0x2f64
	lea edx, [ebp-0x2fe4]
	mov [esp+0x4], edx
	mov [esp], esi
	call memcpy
	mov dword [esp+0x8], 0x2
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z20HudElem_UpdateClientP9gclient_si16hudelem_update_t
	mov [esi+0xb0], ebx
	mov edx, [esi+0x14]
	and edx, 0xfffffffb
	mov eax, edx
	or eax, 0x2
	mov [esi+0x14], eax
	mov ecx, [esi+0x2f68]
	test ecx, ecx
	js _Z23SpectatorClientEndFrameP9gentity_s_130
	and eax, 0xffffffe7
	mov [esi+0x14], eax
	add esp, 0x2fec
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z23SpectatorClientEndFrameP9gentity_s_70:
	test byte [esi+0x3004], 0x10
	jz _Z23SpectatorClientEndFrameP9gentity_s_140
	mov dword [esp+0x4], 0x1
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z17Cmd_FollowCycle_fP9gentity_si
	jmp _Z23SpectatorClientEndFrameP9gentity_s_140
_Z23SpectatorClientEndFrameP9gentity_s_130:
	mov eax, edx
	or eax, 0xa
	mov [esi+0x14], eax
	test byte [esi+0x3004], 0x10
	jz _Z23SpectatorClientEndFrameP9gentity_s_150
	and eax, 0xffffffef
	mov [esi+0x14], eax
	jmp _Z23SpectatorClientEndFrameP9gentity_s_120
_Z23SpectatorClientEndFrameP9gentity_s_150:
	or edx, 0x1a
	mov [esi+0x14], edx
	jmp _Z23SpectatorClientEndFrameP9gentity_s_120
	nop


;Initialized global or static variables of g_active_mp:
SECTION .data


;Initialized constant data of g_active_mp:
SECTION .rdata
_ZZ15G_TouchTriggersP9gentity_sE5range: dd 0x41a00000, 0x41a00000, 0x41a00000, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0


;Zero initialized global or static variables of g_active_mp:
SECTION .bss


;All cstrings:
SECTION .rdata
_cstring_g_updateclientin:		db "G_UpdateClientInfo(): Veh attached, but no ownerNum",0ah,0
_cstring_i_3f_3f_3f:		db "[%i] %.3f, %.3f, %.3f",0ah,0
_cstring_i:		db "%i",0
_cstring_c_game_inactived:		db "%c ",22h,"GAME_INACTIVEDROPWARNING",22h,0
_cstring_game_droppedfori:		db "GAME_DROPPEDFORINACTIVITY",0



;All constant floats and doubles:
SECTION .rdata
_float_0_00010000:		dd 0x38d1b717	; 0.0001
_data16_80000000:		dd 0x80000000, 0x0, 0x0, 0x0	; OWORD
_float_255_00000000:		dd 0x437f0000	; 255
_float_20_00000000:		dd 0x41a00000	; 20
_float_0_00100000:		dd 0x3a83126f	; 0.001
_float_128_00000000:		dd 0x43000000	; 128
_float_127_00000000:		dd 0x42fe0000	; 127
_float_360_00000000:		dd 0x43b40000	; 360
_float_256_00000000:		dd 0x43800000	; 256
_float_0_01000000:		dd 0x3c23d70a	; 0.01
_float_0_00000000:		dd 0x0	; 0
_float_1_10000002:		dd 0x3f8ccccd	; 1.1

