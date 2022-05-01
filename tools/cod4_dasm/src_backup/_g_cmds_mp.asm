;Imports of g_cmds_mp:
	extern g_deadChat
	extern _Z11Com_sprintfPciPKcz
	extern _Z2vaPKcz
	extern g_entities
	extern _Z24SV_GameSendServerCommandi11svscmd_typePKc
	extern _Z10OnSameTeamP9gentity_sS0_
	extern sv_cmd_args
	extern atoi
	extern _Z9I_stricmpPKcS0_
	extern _Z16BG_GetNumWeaponsv
	extern _Z22BG_CanPlayerHaveWeaponj
	extern _Z10I_strnicmpPKcS0_i
	extern memcpy
	extern _Z17SV_Cmd_ArgvBufferiPci
	extern _Z19BG_TakePlayerWeaponP13playerState_sji
	extern _Z18G_GivePlayerWeaponP13playerState_sih
	extern level
	extern _Z10G_FindItemPKci
	extern _Z7G_Spawnv
	extern _Z18G_GetItemClassnamePK7gitem_sPt
	extern _Z11G_SpawnItemP9gentity_sPK7gitem_s
	extern _Z10Touch_ItemP9gentity_sS0_i
	extern _Z8Add_AmmoP9gentity_sjhii
	extern _Z12G_FreeEntityP9gentity_s
	extern _Z15BG_GetWeaponDefj
	extern _Z19G_SelectWeaponIndexii
	extern _Z16BG_AmmoForWeaponi
	extern _Z16BG_ClipForWeaponi
	extern g_oldVoting
	extern _Z18SV_SetConfigstringiPKc
	extern _Z14Scr_PlayerVoteP9gentity_sPc
	extern bgs
	extern level_bgs
	extern _Z10player_dieP9gentity_sS0_S0_iiiPKf13hitLocation_ti
	extern _Z24SV_GetArchivedClientInfoiPiP13playerState_sP13clientState_s
	extern _Z23G_ClientCanSpectateTeamP9gclient_s6team_t
	extern _Z4vtosPKf
	extern g_cheats
	extern _Z10Com_PrintfiPKcz
	extern _Z15G_PrintEntitiesv
	extern _Z21G_GetPlayerViewOriginPK13playerState_sPf
	extern _Z25BG_GetPlayerViewDirectionPK13playerState_sPfS2_S2_
	extern _Z14G_TraceCapsuleP7trace_tPKfS2_S2_S2_ii
	extern _Z11G_SetOriginP9gentity_sPKf
	extern _Z18SetClientViewAngleP9gentity_sPKf
	extern g_allowVote
	extern strchr
	extern _Z12Cbuf_AddTextiPKc
	extern _Z19Scr_IsValidGameTypePKc
	extern g_gametype
	extern useFastFile
	extern _Z12SV_MapExistsPKc
	extern _Z19Dvar_RegisterStringPKcS0_tS0_
	extern _Z14Scr_VoteCalledP9gentity_sPcS1_S1_
	extern _Z28Scr_GetGameTypeNameForScriptPKc
	extern _Z11Dvar_GetIntPKc
	extern _Z10I_strncpyzPcPKci
	extern _Z10I_CleanStrPc
	extern _Z16SV_GetClientPingi
	extern _Z14Com_PrintErroriPKcz
	extern _Z11Com_DPrintfiPKcz
	extern atof
	extern _Z14TeleportPlayerP9gentity_sPfS1_
	extern _Z9Com_Error11errorParm_tPKcz
	extern _Z13Scr_AddStringPKc
	extern scr_const
	extern _Z10Scr_NotifyP9gentity_stj
	extern _Z18SV_GetConfigstringiPci
	extern _Z10SV_GetGuidi
	extern _Z11G_LogPrintfPKcz
	extern g_dedicated
	extern _Z14Dvar_GetStringPKc
	extern sscanf

;Exports of g_cmds_mp:
	global _ZZ10ConcatArgsiE4line
	global _Z7G_SayToP9gentity_sS0_iiPKcS2_S2_
	global _Z10Cmd_Give_fP9gentity_s
	global _Z10Cmd_Take_fP9gentity_s
	global _Z10Cmd_Vote_fP9gentity_s
	global _Z10ConcatArgsi
	global _Z11Cmd_Score_fP9gentity_s
	global _Z13ClientCommandi
	global _Z13StopFollowingP9gentity_s
	global _Z14Cmd_CallVote_fP9gentity_s
	global _Z14SendScoreboardP9gentity_s
	global _Z16Cmd_SetViewpos_fP9gentity_s
	global _Z17Cmd_FollowCycle_fP9gentity_si
	global _Z18Cmd_MenuResponse_fP9gentity_s
	global _Z5G_SayP9gentity_sS0_iPKc
	global _Z8CheatsOkP9gentity_s
	global _Z8G_setfogPKc


SECTION .text


;G_SayTo(gentity_s*, gentity_s*, int, int, char const*, char const*, char const*)
_Z7G_SayToP9gentity_sS0_iiPKcS2_S2_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xec
	mov esi, eax
	mov ebx, edx
	mov edi, ecx
	test edx, edx
	jz _Z7G_SayToP9gentity_sS0_iiPKcS2_S2__10
	cmp byte [edx+0x100], 0x0
	jz _Z7G_SayToP9gentity_sS0_iiPKcS2_S2__10
	mov eax, [edx+0x15c]
	test eax, eax
	jz _Z7G_SayToP9gentity_sS0_iiPKcS2_S2__10
	cmp dword [eax+0x2f8c], 0x2
	jz _Z7G_SayToP9gentity_sS0_iiPKcS2_S2__20
_Z7G_SayToP9gentity_sS0_iiPKcS2_S2__10:
	add esp, 0xec
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z7G_SayToP9gentity_sS0_iiPKcS2_S2__20:
	cmp ecx, 0x1
	jz _Z7G_SayToP9gentity_sS0_iiPKcS2_S2__30
_Z7G_SayToP9gentity_sS0_iiPKcS2_S2__140:
	mov eax, g_deadChat
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z7G_SayToP9gentity_sS0_iiPKcS2_S2__40
	mov ecx, [esi+0x15c]
_Z7G_SayToP9gentity_sS0_iiPKcS2_S2__100:
	mov edx, [ecx+0x3010]
	lea eax, [edx-0x1]
	cmp eax, 0x1
	jbe _Z7G_SayToP9gentity_sS0_iiPKcS2_S2__50
	mov esi, _cstring_null
_Z7G_SayToP9gentity_sS0_iiPKcS2_S2__110:
	cmp edx, 0x3
	jz _Z7G_SayToP9gentity_sS0_iiPKcS2_S2__60
	mov eax, [ecx+0x2f64]
	test eax, eax
	jz _Z7G_SayToP9gentity_sS0_iiPKcS2_S2__70
	mov [esp+0xc], esi
	mov dword [esp+0x8], _cstring_sgame_dead
	mov dword [esp+0x4], 0x40
	lea esi, [ebp-0x58]
	mov [esp], esi
	call _Z11Com_sprintfPciPKcz
_Z7G_SayToP9gentity_sS0_iiPKcS2_S2__120:
	cmp edi, 0x1
	jz _Z7G_SayToP9gentity_sS0_iiPKcS2_S2__80
	cmp edi, 0x2
	jz _Z7G_SayToP9gentity_sS0_iiPKcS2_S2__90
	mov dword [esp+0x14], _cstring_7
	mov eax, [ebp+0x10]
	mov [esp+0x10], eax
	mov [esp+0xc], esi
	mov dword [esp+0x8], _cstring_sss_
	mov dword [esp+0x4], 0x80
	lea esi, [ebp-0xd8]
	mov [esp], esi
	call _Z11Com_sprintfPciPKcz
	xor eax, eax
	cmp edi, 0x1
	setz al
	add eax, 0x68
_Z7G_SayToP9gentity_sS0_iiPKcS2_S2__130:
	mov edx, [ebp+0x14]
	mov [esp+0x14], edx
	mov edx, [ebp+0x8]
	mov [esp+0x10], edx
	mov dword [esp+0xc], 0x5e
	mov [esp+0x8], esi
	mov [esp+0x4], eax
	mov dword [esp], _cstring_c_sccs
	call _Z2vaPKcz
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	sub ebx, g_entities
	sar ebx, 0x2
	imul eax, ebx, 0x2c0685b5
	mov [esp], eax
	call _Z24SV_GameSendServerCommandi11svscmd_typePKc
	add esp, 0xec
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z7G_SayToP9gentity_sS0_iiPKcS2_S2__40:
	mov ecx, [esi+0x15c]
	mov eax, [ecx+0x2f64]
	test eax, eax
	jz _Z7G_SayToP9gentity_sS0_iiPKcS2_S2__100
	mov eax, [ebx+0x15c]
	mov eax, [eax+0x2f64]
	test eax, eax
	jnz _Z7G_SayToP9gentity_sS0_iiPKcS2_S2__100
	jmp _Z7G_SayToP9gentity_sS0_iiPKcS2_S2__10
_Z7G_SayToP9gentity_sS0_iiPKcS2_S2__50:
	mov eax, [ebx+0x15c]
	mov esi, _cstring_8
	cmp edx, [eax+0x3010]
	mov eax, _cstring_9
	cmovnz esi, eax
	jmp _Z7G_SayToP9gentity_sS0_iiPKcS2_S2__110
_Z7G_SayToP9gentity_sS0_iiPKcS2_S2__70:
	mov [esp+0xc], esi
	mov dword [esp+0x8], _cstring_s
	mov dword [esp+0x4], 0x40
	lea esi, [ebp-0x58]
	mov [esp], esi
	call _Z11Com_sprintfPciPKcz
	jmp _Z7G_SayToP9gentity_sS0_iiPKcS2_S2__120
_Z7G_SayToP9gentity_sS0_iiPKcS2_S2__80:
	mov dword [esp+0x18], _cstring_7
	mov edx, [ebp+0x10]
	mov [esp+0x14], edx
	mov eax, [ebp+0xc]
	mov [esp+0x10], eax
	mov [esp+0xc], esi
	mov dword [esp+0x8], _cstring_ssss_
	mov dword [esp+0x4], 0x80
	lea esi, [ebp-0xd8]
	mov [esp], esi
	call _Z11Com_sprintfPciPKcz
	mov eax, 0x69
	jmp _Z7G_SayToP9gentity_sS0_iiPKcS2_S2__130
_Z7G_SayToP9gentity_sS0_iiPKcS2_S2__90:
	mov dword [esp+0x14], _cstring_7
	mov edx, [ebp+0x10]
	mov [esp+0x10], edx
	mov [esp+0xc], esi
	mov dword [esp+0x8], _cstring_sss_1
	mov dword [esp+0x4], 0x80
	lea esi, [ebp-0xd8]
	mov [esp], esi
	call _Z11Com_sprintfPciPKcz
	mov eax, 0x68
	jmp _Z7G_SayToP9gentity_sS0_iiPKcS2_S2__130
_Z7G_SayToP9gentity_sS0_iiPKcS2_S2__30:
	mov [esp+0x4], edx
	mov [esp], esi
	call _Z10OnSameTeamP9gentity_sS0_
	test eax, eax
	jnz _Z7G_SayToP9gentity_sS0_iiPKcS2_S2__140
	jmp _Z7G_SayToP9gentity_sS0_iiPKcS2_S2__10
_Z7G_SayToP9gentity_sS0_iiPKcS2_S2__60:
	mov dword [esp+0x8], _cstring_game_spectator
	mov dword [esp+0x4], 0x40
	lea esi, [ebp-0x58]
	mov [esp], esi
	call _Z11Com_sprintfPciPKcz
	jmp _Z7G_SayToP9gentity_sS0_iiPKcS2_S2__120
	nop


;Cmd_Give_f(gentity_s*)
_Z10Cmd_Give_fP9gentity_s:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x44c
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z8CheatsOkP9gentity_s
	test eax, eax
	jz _Z10Cmd_Give_fP9gentity_s_10
	mov edx, sv_cmd_args
	mov eax, [edx]
	mov eax, [edx+eax*4+0x44]
	mov [ebp-0x420], eax
	cmp eax, 0x2
	jg _Z10Cmd_Give_fP9gentity_s_20
	xor edi, edi
_Z10Cmd_Give_fP9gentity_s_160:
	mov byte [edi+_ZZ10ConcatArgsiE4line], 0x0
	mov dword [esp], _ZZ10ConcatArgsiE4line
	call atoi
	mov [ebp-0x424], eax
	mov edx, sv_cmd_args
	mov eax, [edx]
	mov esi, [edx+eax*4+0x44]
	cmp esi, 0x1
	jg _Z10Cmd_Give_fP9gentity_s_30
	mov dword [ebp-0x41c], 0x0
	mov ecx, [ebp-0x41c]
_Z10Cmd_Give_fP9gentity_s_190:
	mov byte [ecx+_ZZ10ConcatArgsiE4line], 0x0
	cmp byte [_ZZ10ConcatArgsiE4line], 0x0
	jz _Z10Cmd_Give_fP9gentity_s_10
	mov dword [esp+0x4], _cstring_all
	mov dword [esp], _ZZ10ConcatArgsiE4line
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z10Cmd_Give_fP9gentity_s_40
	mov esi, 0x1
_Z10Cmd_Give_fP9gentity_s_250:
	mov edi, [ebp-0x424]
	test edi, edi
	jz _Z10Cmd_Give_fP9gentity_s_50
	mov eax, [ebp-0x424]
	mov edi, [ebp+0x8]
	add [edi+0x1a0], eax
_Z10Cmd_Give_fP9gentity_s_230:
	test esi, esi
	jz _Z10Cmd_Give_fP9gentity_s_10
_Z10Cmd_Give_fP9gentity_s_350:
	mov edi, 0x1
	call _Z16BG_GetNumWeaponsv
	cmp edi, eax
	jae _Z10Cmd_Give_fP9gentity_s_60
_Z10Cmd_Give_fP9gentity_s_80:
	mov [esp], edi
	call _Z22BG_CanPlayerHaveWeaponj
	test al, al
	jnz _Z10Cmd_Give_fP9gentity_s_70
	add edi, 0x1
_Z10Cmd_Give_fP9gentity_s_220:
	call _Z16BG_GetNumWeaponsv
	cmp edi, eax
	jb _Z10Cmd_Give_fP9gentity_s_80
_Z10Cmd_Give_fP9gentity_s_60:
	test esi, esi
	jz _Z10Cmd_Give_fP9gentity_s_10
_Z10Cmd_Give_fP9gentity_s_390:
	mov ebx, [ebp-0x424]
	test ebx, ebx
	jz _Z10Cmd_Give_fP9gentity_s_90
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x15c]
	mov edx, [eax+0xe8]
	test edx, edx
	jnz _Z10Cmd_Give_fP9gentity_s_100
_Z10Cmd_Give_fP9gentity_s_330:
	test esi, esi
	jz _Z10Cmd_Give_fP9gentity_s_10
_Z10Cmd_Give_fP9gentity_s_370:
	mov dword [esp+0x8], 0x7
	mov dword [esp+0x4], _cstring_allammo
	mov dword [esp], _ZZ10ConcatArgsiE4line
	call _Z10I_strnicmpPKcS0_i
	test eax, eax
	jnz _Z10Cmd_Give_fP9gentity_s_110
	mov ecx, [ebp-0x424]
	test ecx, ecx
	jnz _Z10Cmd_Give_fP9gentity_s_120
_Z10Cmd_Give_fP9gentity_s_110:
	test esi, esi
	jz _Z10Cmd_Give_fP9gentity_s_130
_Z10Cmd_Give_fP9gentity_s_10:
	add esp, 0x44c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z10Cmd_Give_fP9gentity_s_20:
	mov edx, eax
	mov ebx, 0x2
	xor esi, esi
	sub edx, 0x1
	mov [ebp-0x428], edx
	jmp _Z10Cmd_Give_fP9gentity_s_140
_Z10Cmd_Give_fP9gentity_s_170:
	lea eax, [esi+_ZZ10ConcatArgsiE4line]
	mov [esp+0x8], edx
	lea edx, [ebp-0x418]
	mov [esp+0x4], edx
	mov [esp], eax
	call memcpy
	cmp ebx, [ebp-0x428]
	jz _Z10Cmd_Give_fP9gentity_s_150
	mov byte [edi+_ZZ10ConcatArgsiE4line], 0x20
	add edi, 0x1
_Z10Cmd_Give_fP9gentity_s_150:
	add ebx, 0x1
	cmp [ebp-0x420], ebx
	jz _Z10Cmd_Give_fP9gentity_s_160
	mov esi, edi
_Z10Cmd_Give_fP9gentity_s_140:
	mov dword [esp+0x8], 0x400
	lea ecx, [ebp-0x418]
	mov [esp+0x4], ecx
	mov [esp], ebx
	call _Z17SV_Cmd_ArgvBufferiPci
	cld
	mov ecx, 0xffffffff
	lea edi, [ebp-0x418]
	xor eax, eax
	repne scasb
	not ecx
	lea edx, [ecx-0x1]
	lea edi, [edx+esi]
	cmp edi, 0x3fe
	jle _Z10Cmd_Give_fP9gentity_s_170
	mov edi, esi
	jmp _Z10Cmd_Give_fP9gentity_s_160
_Z10Cmd_Give_fP9gentity_s_30:
	mov ebx, 0x1
	mov dword [ebp-0x41c], 0x0
	lea ecx, [esi-0x1]
	mov [ebp-0x42c], ecx
	jmp _Z10Cmd_Give_fP9gentity_s_180
_Z10Cmd_Give_fP9gentity_s_210:
	mov [ebp-0x41c], edi
_Z10Cmd_Give_fP9gentity_s_180:
	mov dword [esp+0x8], 0x400
	lea edi, [ebp-0x418]
	mov [esp+0x4], edi
	mov [esp], ebx
	call _Z17SV_Cmd_ArgvBufferiPci
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	repne scasb
	not ecx
	lea edx, [ecx-0x1]
	mov ecx, [ebp-0x41c]
	lea edi, [edx+ecx]
	cmp edi, 0x3fe
	jg _Z10Cmd_Give_fP9gentity_s_190
	mov eax, ecx
	add eax, _ZZ10ConcatArgsiE4line
	mov [esp+0x8], edx
	lea edx, [ebp-0x418]
	mov [esp+0x4], edx
	mov [esp], eax
	call memcpy
	cmp ebx, [ebp-0x42c]
	jz _Z10Cmd_Give_fP9gentity_s_200
	mov byte [edi+_ZZ10ConcatArgsiE4line], 0x20
	add edi, 0x1
_Z10Cmd_Give_fP9gentity_s_200:
	add ebx, 0x1
	cmp esi, ebx
	jnz _Z10Cmd_Give_fP9gentity_s_210
	mov [ebp-0x41c], edi
	mov ecx, edi
	jmp _Z10Cmd_Give_fP9gentity_s_190
_Z10Cmd_Give_fP9gentity_s_70:
	mov dword [esp+0x8], 0x1
	mov [esp+0x4], edi
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x15c]
	mov [esp], eax
	call _Z19BG_TakePlayerWeaponP13playerState_sji
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], edi
	mov edx, [ebp+0x8]
	mov eax, [edx+0x15c]
	mov [esp], eax
	call _Z18G_GivePlayerWeaponP13playerState_sih
	add edi, 0x1
	jmp _Z10Cmd_Give_fP9gentity_s_220
_Z10Cmd_Give_fP9gentity_s_50:
	mov edx, [ebp+0x8]
	mov eax, [edx+0x15c]
	mov eax, [eax+0x150]
	mov [edx+0x1a0], eax
	jmp _Z10Cmd_Give_fP9gentity_s_230
_Z10Cmd_Give_fP9gentity_s_40:
	mov dword [esp+0x8], 0x6
	mov dword [esp+0x4], _cstring_health
	mov dword [esp], _ZZ10ConcatArgsiE4line
	call _Z10I_strnicmpPKcS0_i
	test eax, eax
	jnz _Z10Cmd_Give_fP9gentity_s_240
	xor esi, esi
	jmp _Z10Cmd_Give_fP9gentity_s_250
_Z10Cmd_Give_fP9gentity_s_130:
	mov ebx, level
	mov dword [ebx+0x1c], 0x1
	mov dword [esp+0x4], 0x0
	mov dword [esp], _ZZ10ConcatArgsiE4line
	call _Z10G_FindItemPKci
	mov esi, eax
	test eax, eax
	jz _Z10Cmd_Give_fP9gentity_s_260
	call _Z7G_Spawnv
	mov ebx, eax
	lea ecx, [eax+0x13c]
	mov edx, [ebp+0x8]
	add edx, 0x13c
	mov edi, [ebp+0x8]
	mov eax, [edi+0x13c]
	mov [ebx+0x13c], eax
	mov eax, [edx+0x4]
	mov [ecx+0x4], eax
	mov eax, [edx+0x8]
	mov [ecx+0x8], eax
	lea eax, [ebx+0x170]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z18G_GetItemClassnamePK7gitem_sPt
	mov [esp+0x4], esi
	mov [esp], ebx
	call _Z11G_SpawnItemP9gentity_sPK7gitem_s
	mov byte [ebx+0x16c], 0x1
	cmp dword [esi], 0x1
	jz _Z10Cmd_Give_fP9gentity_s_270
_Z10Cmd_Give_fP9gentity_s_420:
	mov dword [esp+0x8], 0x0
	mov edi, [ebp+0x8]
	mov [esp+0x4], edi
	mov [esp], ebx
	call _Z10Touch_ItemP9gentity_sS0_i
	mov byte [ebx+0x16c], 0x0
	cmp byte [ebx+0x100], 0x0
	jnz _Z10Cmd_Give_fP9gentity_s_280
_Z10Cmd_Give_fP9gentity_s_380:
	mov eax, level
	mov dword [eax+0x1c], 0x0
	jmp _Z10Cmd_Give_fP9gentity_s_10
_Z10Cmd_Give_fP9gentity_s_120:
	mov ebx, 0x1
	jmp _Z10Cmd_Give_fP9gentity_s_290
_Z10Cmd_Give_fP9gentity_s_300:
	mov dword [esp+0x10], 0x1
	mov edx, [ebp-0x424]
	mov [esp+0xc], edx
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], ebx
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z8Add_AmmoP9gentity_sjhii
	add ebx, 0x1
_Z10Cmd_Give_fP9gentity_s_290:
	call _Z16BG_GetNumWeaponsv
	cmp ebx, eax
	jb _Z10Cmd_Give_fP9gentity_s_300
	jmp _Z10Cmd_Give_fP9gentity_s_10
_Z10Cmd_Give_fP9gentity_s_90:
	mov ebx, 0x1
	jmp _Z10Cmd_Give_fP9gentity_s_310
_Z10Cmd_Give_fP9gentity_s_320:
	mov dword [esp+0x10], 0x1
	mov dword [esp+0xc], 0x3e6
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], ebx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z8Add_AmmoP9gentity_sjhii
	add ebx, 0x1
_Z10Cmd_Give_fP9gentity_s_310:
	call _Z16BG_GetNumWeaponsv
	cmp ebx, eax
	jb _Z10Cmd_Give_fP9gentity_s_320
	jmp _Z10Cmd_Give_fP9gentity_s_330
_Z10Cmd_Give_fP9gentity_s_100:
	mov dword [esp+0x10], 0x1
	mov edi, [ebp-0x424]
	mov [esp+0xc], edi
	movzx eax, byte [edx+eax+0x81c]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov [esp], ecx
	call _Z8Add_AmmoP9gentity_sjhii
	jmp _Z10Cmd_Give_fP9gentity_s_330
_Z10Cmd_Give_fP9gentity_s_240:
	mov dword [esp+0x4], _cstring_weapons
	mov dword [esp], _ZZ10ConcatArgsiE4line
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z10Cmd_Give_fP9gentity_s_340
	xor esi, esi
	jmp _Z10Cmd_Give_fP9gentity_s_350
_Z10Cmd_Give_fP9gentity_s_260:
	mov dword [ebx+0x1c], 0x0
	jmp _Z10Cmd_Give_fP9gentity_s_10
_Z10Cmd_Give_fP9gentity_s_340:
	mov dword [esp+0x8], 0x4
	mov dword [esp+0x4], _cstring_ammo
	mov dword [esp], _ZZ10ConcatArgsiE4line
	call _Z10I_strnicmpPKcS0_i
	test eax, eax
	jz _Z10Cmd_Give_fP9gentity_s_360
	xor esi, esi
	jmp _Z10Cmd_Give_fP9gentity_s_370
_Z10Cmd_Give_fP9gentity_s_280:
	mov [esp], ebx
	call _Z12G_FreeEntityP9gentity_s
	jmp _Z10Cmd_Give_fP9gentity_s_380
_Z10Cmd_Give_fP9gentity_s_360:
	xor esi, esi
	jmp _Z10Cmd_Give_fP9gentity_s_390
_Z10Cmd_Give_fP9gentity_s_270:
	mov eax, [ebx+0x1bc]
	and eax, 0x8000007f
	js _Z10Cmd_Give_fP9gentity_s_400
_Z10Cmd_Give_fP9gentity_s_430:
	mov [esp], eax
	call _Z15BG_GetWeaponDefj
	mov eax, [eax+0x144]
	cmp eax, 0x3
	jz _Z10Cmd_Give_fP9gentity_s_410
	cmp eax, 0x2
	jnz _Z10Cmd_Give_fP9gentity_s_420
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x15c]
	mov dword [eax+0xe4], 0x0
	jmp _Z10Cmd_Give_fP9gentity_s_420
_Z10Cmd_Give_fP9gentity_s_410:
	mov edx, [ebp+0x8]
	mov eax, [edx+0x15c]
	mov dword [eax+0xe4], 0x1
	jmp _Z10Cmd_Give_fP9gentity_s_420
_Z10Cmd_Give_fP9gentity_s_400:
	sub eax, 0x1
	or eax, 0xffffff80
	add eax, 0x1
	jmp _Z10Cmd_Give_fP9gentity_s_430
	nop


;Cmd_Take_f(gentity_s*)
_Z10Cmd_Take_fP9gentity_s:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x44c
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z8CheatsOkP9gentity_s
	test eax, eax
	jz _Z10Cmd_Take_fP9gentity_s_10
	mov edx, sv_cmd_args
	mov eax, [edx]
	mov eax, [edx+eax*4+0x44]
	mov [ebp-0x42c], eax
	cmp eax, 0x2
	jg _Z10Cmd_Take_fP9gentity_s_20
	xor ebx, ebx
_Z10Cmd_Take_fP9gentity_s_150:
	mov byte [ebx+_ZZ10ConcatArgsiE4line], 0x0
	mov dword [esp], _ZZ10ConcatArgsiE4line
	call atoi
	mov [ebp-0x430], eax
	mov edx, sv_cmd_args
	mov eax, [edx]
	mov eax, [edx+eax*4+0x44]
	mov [ebp-0x424], eax
	cmp eax, 0x1
	jg _Z10Cmd_Take_fP9gentity_s_30
	xor ebx, ebx
_Z10Cmd_Take_fP9gentity_s_190:
	mov byte [ebx+_ZZ10ConcatArgsiE4line], 0x0
	cmp byte [_ZZ10ConcatArgsiE4line], 0x0
	jz _Z10Cmd_Take_fP9gentity_s_10
	mov dword [esp+0x4], _cstring_all
	mov dword [esp], _ZZ10ConcatArgsiE4line
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z10Cmd_Take_fP9gentity_s_40
	mov dword [ebp-0x434], 0x1
_Z10Cmd_Take_fP9gentity_s_230:
	mov edi, [ebp-0x430]
	test edi, edi
	jz _Z10Cmd_Take_fP9gentity_s_50
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x1a0]
	sub eax, [ebp-0x430]
	mov [ecx+0x1a0], eax
	test eax, eax
	jle _Z10Cmd_Take_fP9gentity_s_60
_Z10Cmd_Take_fP9gentity_s_210:
	mov esi, [ebp-0x434]
	test esi, esi
	jz _Z10Cmd_Take_fP9gentity_s_10
_Z10Cmd_Take_fP9gentity_s_330:
	mov ebx, 0x1
	jmp _Z10Cmd_Take_fP9gentity_s_70
_Z10Cmd_Take_fP9gentity_s_80:
	mov dword [esp+0x8], 0x1
	mov [esp+0x4], ebx
	mov edx, [ebp+0x8]
	mov eax, [edx+0x15c]
	mov [esp], eax
	call _Z19BG_TakePlayerWeaponP13playerState_sji
	add ebx, 0x1
_Z10Cmd_Take_fP9gentity_s_70:
	call _Z16BG_GetNumWeaponsv
	cmp ebx, eax
	jb _Z10Cmd_Take_fP9gentity_s_80
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x15c]
	mov ebx, [eax+0xe8]
	test ebx, ebx
	jnz _Z10Cmd_Take_fP9gentity_s_90
_Z10Cmd_Take_fP9gentity_s_240:
	mov ecx, [ebp-0x434]
	test ecx, ecx
	jz _Z10Cmd_Take_fP9gentity_s_10
_Z10Cmd_Take_fP9gentity_s_350:
	mov edx, [ebp-0x430]
	test edx, edx
	jz _Z10Cmd_Take_fP9gentity_s_100
	mov edx, [ebp+0x8]
	mov eax, [edx+0x15c]
	mov eax, [eax+0xe8]
	mov [ebp-0x438], eax
	test eax, eax
	jnz _Z10Cmd_Take_fP9gentity_s_110
_Z10Cmd_Take_fP9gentity_s_300:
	mov eax, [ebp-0x434]
	test eax, eax
	jz _Z10Cmd_Take_fP9gentity_s_10
_Z10Cmd_Take_fP9gentity_s_340:
	mov dword [esp+0x8], 0x7
	mov dword [esp+0x4], _cstring_allammo
	mov dword [esp], _ZZ10ConcatArgsiE4line
	call _Z10I_strnicmpPKcS0_i
	test eax, eax
	jnz _Z10Cmd_Take_fP9gentity_s_10
	mov eax, [ebp-0x430]
	test eax, eax
	jnz _Z10Cmd_Take_fP9gentity_s_120
_Z10Cmd_Take_fP9gentity_s_10:
	add esp, 0x44c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z10Cmd_Take_fP9gentity_s_20:
	mov edx, eax
	mov esi, 0x2
	mov dword [ebp-0x428], 0x0
	sub edx, 0x1
	mov [ebp-0x43c], edx
	jmp _Z10Cmd_Take_fP9gentity_s_130
_Z10Cmd_Take_fP9gentity_s_160:
	mov eax, ecx
	add eax, _ZZ10ConcatArgsiE4line
	mov [esp+0x8], edx
	lea edx, [ebp-0x418]
	mov [esp+0x4], edx
	mov [esp], eax
	call memcpy
	cmp esi, [ebp-0x43c]
	jz _Z10Cmd_Take_fP9gentity_s_140
	mov byte [ebx+_ZZ10ConcatArgsiE4line], 0x20
	add ebx, 0x1
_Z10Cmd_Take_fP9gentity_s_140:
	add esi, 0x1
	cmp [ebp-0x42c], esi
	jz _Z10Cmd_Take_fP9gentity_s_150
	mov [ebp-0x428], ebx
_Z10Cmd_Take_fP9gentity_s_130:
	mov dword [esp+0x8], 0x400
	lea ecx, [ebp-0x418]
	mov [esp+0x4], ecx
	mov [esp], esi
	call _Z17SV_Cmd_ArgvBufferiPci
	cld
	mov ecx, 0xffffffff
	lea edi, [ebp-0x418]
	xor eax, eax
	repne scasb
	not ecx
	lea edx, [ecx-0x1]
	mov ecx, [ebp-0x428]
	lea ebx, [edx+ecx]
	cmp ebx, 0x3fe
	jle _Z10Cmd_Take_fP9gentity_s_160
	mov ebx, ecx
	jmp _Z10Cmd_Take_fP9gentity_s_150
_Z10Cmd_Take_fP9gentity_s_30:
	mov ecx, eax
	mov esi, 0x1
	mov dword [ebp-0x420], 0x0
	sub ecx, 0x1
	mov [ebp-0x440], ecx
	jmp _Z10Cmd_Take_fP9gentity_s_170
_Z10Cmd_Take_fP9gentity_s_200:
	mov eax, ecx
	add eax, _ZZ10ConcatArgsiE4line
	mov [esp+0x8], edx
	lea edx, [ebp-0x418]
	mov [esp+0x4], edx
	mov [esp], eax
	call memcpy
	cmp esi, [ebp-0x440]
	jz _Z10Cmd_Take_fP9gentity_s_180
	mov byte [ebx+_ZZ10ConcatArgsiE4line], 0x20
	add ebx, 0x1
_Z10Cmd_Take_fP9gentity_s_180:
	add esi, 0x1
	cmp [ebp-0x424], esi
	jz _Z10Cmd_Take_fP9gentity_s_190
	mov [ebp-0x420], ebx
_Z10Cmd_Take_fP9gentity_s_170:
	mov dword [esp+0x8], 0x400
	lea eax, [ebp-0x418]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z17SV_Cmd_ArgvBufferiPci
	cld
	mov ecx, 0xffffffff
	lea edi, [ebp-0x418]
	xor eax, eax
	repne scasb
	not ecx
	lea edx, [ecx-0x1]
	mov ecx, [ebp-0x420]
	lea ebx, [edx+ecx]
	cmp ebx, 0x3fe
	jle _Z10Cmd_Take_fP9gentity_s_200
	mov ebx, ecx
	jmp _Z10Cmd_Take_fP9gentity_s_190
_Z10Cmd_Take_fP9gentity_s_50:
	mov eax, [ebp+0x8]
	mov dword [eax+0x1a0], 0x1
	jmp _Z10Cmd_Take_fP9gentity_s_210
_Z10Cmd_Take_fP9gentity_s_40:
	mov dword [esp+0x8], 0x6
	mov dword [esp+0x4], _cstring_health
	mov dword [esp], _ZZ10ConcatArgsiE4line
	call _Z10I_strnicmpPKcS0_i
	test eax, eax
	jnz _Z10Cmd_Take_fP9gentity_s_220
	mov dword [ebp-0x434], 0x0
	jmp _Z10Cmd_Take_fP9gentity_s_230
_Z10Cmd_Take_fP9gentity_s_90:
	mov dword [eax+0xe8], 0x0
	mov dword [esp+0x4], 0x0
	mov eax, ecx
	sub eax, g_entities
	sar eax, 0x2
	imul eax, eax, 0x2c0685b5
	mov [esp], eax
	call _Z19G_SelectWeaponIndexii
	jmp _Z10Cmd_Take_fP9gentity_s_240
_Z10Cmd_Take_fP9gentity_s_120:
	mov dword [ebp-0x41c], 0x1
	jmp _Z10Cmd_Take_fP9gentity_s_250
_Z10Cmd_Take_fP9gentity_s_270:
	mov edx, [ebp-0x41c]
	mov [esp], edx
	call _Z16BG_AmmoForWeaponi
	mov ecx, [ebp+0x8]
	mov edx, [ecx+0x15c]
	mov ecx, [ebp-0x430]
	sub [edx+eax*4+0x15c], ecx
	mov eax, [ebp+0x8]
	mov ebx, [eax+0x15c]
	mov edx, [ebp-0x41c]
	mov [esp], edx
	call _Z16BG_AmmoForWeaponi
	mov eax, [ebx+eax*4+0x15c]
	test eax, eax
	js _Z10Cmd_Take_fP9gentity_s_260
_Z10Cmd_Take_fP9gentity_s_310:
	add dword [ebp-0x41c], 0x1
_Z10Cmd_Take_fP9gentity_s_250:
	call _Z16BG_GetNumWeaponsv
	cmp [ebp-0x41c], eax
	jb _Z10Cmd_Take_fP9gentity_s_270
	jmp _Z10Cmd_Take_fP9gentity_s_10
_Z10Cmd_Take_fP9gentity_s_100:
	mov esi, 0x1
	jmp _Z10Cmd_Take_fP9gentity_s_280
_Z10Cmd_Take_fP9gentity_s_290:
	mov ecx, [ebp+0x8]
	mov ebx, [ecx+0x15c]
	mov [esp], esi
	call _Z16BG_AmmoForWeaponi
	mov dword [ebx+eax*4+0x15c], 0x0
	mov eax, [ebp+0x8]
	mov ebx, [eax+0x15c]
	mov [esp], esi
	call _Z16BG_ClipForWeaponi
	mov dword [ebx+eax*4+0x35c], 0x0
	add esi, 0x1
_Z10Cmd_Take_fP9gentity_s_280:
	call _Z16BG_GetNumWeaponsv
	cmp esi, eax
	jb _Z10Cmd_Take_fP9gentity_s_290
	jmp _Z10Cmd_Take_fP9gentity_s_300
_Z10Cmd_Take_fP9gentity_s_110:
	mov [esp], eax
	call _Z16BG_AmmoForWeaponi
	mov ecx, [ebp+0x8]
	mov edx, [ecx+0x15c]
	mov ecx, [ebp-0x430]
	sub [edx+eax*4+0x15c], ecx
	mov eax, [ebp+0x8]
	mov ebx, [eax+0x15c]
	mov edx, [ebp-0x438]
	mov [esp], edx
	call _Z16BG_AmmoForWeaponi
	mov eax, [ebx+eax*4+0x15c]
	test eax, eax
	jns _Z10Cmd_Take_fP9gentity_s_300
	mov ecx, [ebp-0x438]
	mov [esp], ecx
	call _Z16BG_ClipForWeaponi
	mov edi, eax
	mov eax, [ebp+0x8]
	mov esi, [eax+0x15c]
	mov ebx, [esi+edi*4+0x35c]
	mov edx, [ebp-0x438]
	mov [esp], edx
	call _Z16BG_AmmoForWeaponi
	add ebx, [esi+eax*4+0x15c]
	mov [esi+edi*4+0x35c], ebx
	mov ecx, [ebp+0x8]
	mov ebx, [ecx+0x15c]
	mov eax, [ebp-0x438]
	mov [esp], eax
	call _Z16BG_AmmoForWeaponi
	mov dword [ebx+eax*4+0x15c], 0x0
	mov edx, [ebp+0x8]
	mov ebx, [edx+0x15c]
	mov ecx, [ebp-0x438]
	mov [esp], ecx
	call _Z16BG_ClipForWeaponi
	mov eax, [ebx+eax*4+0x35c]
	test eax, eax
	jns _Z10Cmd_Take_fP9gentity_s_300
	mov eax, [ebp+0x8]
	mov ebx, [eax+0x15c]
	mov edx, [ebp-0x438]
	mov [esp], edx
	call _Z16BG_ClipForWeaponi
	mov dword [ebx+eax*4+0x35c], 0x0
	jmp _Z10Cmd_Take_fP9gentity_s_300
_Z10Cmd_Take_fP9gentity_s_60:
	mov dword [ecx+0x1a0], 0x1
	jmp _Z10Cmd_Take_fP9gentity_s_210
_Z10Cmd_Take_fP9gentity_s_260:
	mov ecx, [ebp-0x41c]
	mov [esp], ecx
	call _Z16BG_ClipForWeaponi
	mov edi, eax
	mov eax, [ebp+0x8]
	mov esi, [eax+0x15c]
	mov ebx, [esi+edi*4+0x35c]
	mov edx, [ebp-0x41c]
	mov [esp], edx
	call _Z16BG_AmmoForWeaponi
	add ebx, [esi+eax*4+0x15c]
	mov [esi+edi*4+0x35c], ebx
	mov ecx, [ebp+0x8]
	mov ebx, [ecx+0x15c]
	mov eax, [ebp-0x41c]
	mov [esp], eax
	call _Z16BG_AmmoForWeaponi
	mov dword [ebx+eax*4+0x15c], 0x0
	mov edx, [ebp+0x8]
	mov ebx, [edx+0x15c]
	mov ecx, [ebp-0x41c]
	mov [esp], ecx
	call _Z16BG_ClipForWeaponi
	mov eax, [ebx+eax*4+0x35c]
	test eax, eax
	jns _Z10Cmd_Take_fP9gentity_s_310
	mov eax, [ebp+0x8]
	mov ebx, [eax+0x15c]
	mov edx, [ebp-0x41c]
	mov [esp], edx
	call _Z16BG_ClipForWeaponi
	mov dword [ebx+eax*4+0x35c], 0x0
	jmp _Z10Cmd_Take_fP9gentity_s_310
_Z10Cmd_Take_fP9gentity_s_220:
	mov dword [esp+0x4], _cstring_weapons
	mov dword [esp], _ZZ10ConcatArgsiE4line
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z10Cmd_Take_fP9gentity_s_320
	mov dword [ebp-0x434], 0x0
	jmp _Z10Cmd_Take_fP9gentity_s_330
_Z10Cmd_Take_fP9gentity_s_320:
	mov dword [esp+0x8], 0x4
	mov dword [esp+0x4], _cstring_ammo
	mov dword [esp], _ZZ10ConcatArgsiE4line
	call _Z10I_strnicmpPKcS0_i
	test eax, eax
	jnz _Z10Cmd_Take_fP9gentity_s_340
	mov dword [ebp-0x434], 0x0
	jmp _Z10Cmd_Take_fP9gentity_s_350
	nop


;Cmd_Vote_f(gentity_s*)
_Z10Cmd_Vote_fP9gentity_s:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x54
	mov ebx, [ebp+0x8]
	mov eax, g_oldVoting
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z10Cmd_Vote_fP9gentity_s_10
	mov eax, level
	mov eax, [eax+0xb20]
	test eax, eax
	jz _Z10Cmd_Vote_fP9gentity_s_20
	mov eax, [ebx+0x15c]
	test byte [eax+0xb2], 0x10
	jnz _Z10Cmd_Vote_fP9gentity_s_30
	cmp dword [eax+0x3010], 0x3
	jz _Z10Cmd_Vote_fP9gentity_s_40
	mov dword [esp+0x4], 0x65
	mov dword [esp], _cstring_c_game_votecast
	call _Z2vaPKcz
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov eax, ebx
	sub eax, g_entities
	sar eax, 0x2
	imul eax, eax, 0x2c0685b5
	mov [esp], eax
	call _Z24SV_GameSendServerCommandi11svscmd_typePKc
	mov eax, [ebx+0x15c]
	or dword [eax+0xb0], 0x100000
_Z10Cmd_Vote_fP9gentity_s_10:
	mov dword [esp+0x8], 0x40
	lea eax, [ebp-0x48]
	mov [esp+0x4], eax
	mov dword [esp], 0x1
	call _Z17SV_Cmd_ArgvBufferiPci
	cmp byte [ebp-0x48], 0x79
	jz _Z10Cmd_Vote_fP9gentity_s_50
	movzx eax, byte [ebp-0x47]
	cmp al, 0x59
	jz _Z10Cmd_Vote_fP9gentity_s_50
	cmp al, 0x31
	jz _Z10Cmd_Vote_fP9gentity_s_50
	mov eax, g_oldVoting
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z10Cmd_Vote_fP9gentity_s_60
	mov eax, level
	mov edx, [eax+0xb2c]
	add edx, 0x1
	mov [eax+0xb2c], edx
	mov [esp+0x4], edx
	mov dword [esp], _cstring_i
	call _Z2vaPKcz
	mov [esp+0x4], eax
	mov dword [esp], 0x10
	call _Z18SV_SetConfigstringiPKc
	jmp _Z10Cmd_Vote_fP9gentity_s_70
_Z10Cmd_Vote_fP9gentity_s_20:
	mov dword [esp+0x4], 0x65
	mov dword [esp], _cstring_c_game_novoteinp
_Z10Cmd_Vote_fP9gentity_s_90:
	call _Z2vaPKcz
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	sub ebx, g_entities
	sar ebx, 0x2
	imul eax, ebx, 0x2c0685b5
	mov [esp], eax
	call _Z24SV_GameSendServerCommandi11svscmd_typePKc
_Z10Cmd_Vote_fP9gentity_s_70:
	add esp, 0x54
	pop ebx
	pop ebp
	ret
_Z10Cmd_Vote_fP9gentity_s_50:
	mov eax, g_oldVoting
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z10Cmd_Vote_fP9gentity_s_80
	mov dword [esp+0x4], _cstring_yes
	mov [esp], ebx
	call _Z14Scr_PlayerVoteP9gentity_sPc
	add esp, 0x54
	pop ebx
	pop ebp
	ret
_Z10Cmd_Vote_fP9gentity_s_80:
	mov eax, level
	mov edx, [eax+0xb28]
	add edx, 0x1
	mov [eax+0xb28], edx
	mov [esp+0x4], edx
	mov dword [esp], _cstring_i
	call _Z2vaPKcz
	mov [esp+0x4], eax
	mov dword [esp], 0xf
	call _Z18SV_SetConfigstringiPKc
	add esp, 0x54
	pop ebx
	pop ebp
	ret
_Z10Cmd_Vote_fP9gentity_s_30:
	mov dword [esp+0x4], 0x65
	mov dword [esp], _cstring_c_game_votealrea
	jmp _Z10Cmd_Vote_fP9gentity_s_90
_Z10Cmd_Vote_fP9gentity_s_40:
	mov dword [esp+0x4], 0x65
	mov dword [esp], _cstring_c_game_nospectat
	jmp _Z10Cmd_Vote_fP9gentity_s_90
_Z10Cmd_Vote_fP9gentity_s_60:
	mov dword [esp+0x4], _cstring_no
	mov [esp], ebx
	call _Z14Scr_PlayerVoteP9gentity_sPc
	jmp _Z10Cmd_Vote_fP9gentity_s_70


;ConcatArgs(int)
_Z10ConcatArgsi:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x42c
	mov edx, sv_cmd_args
	mov eax, [edx]
	mov eax, [edx+eax*4+0x44]
	cmp eax, [ebp+0x8]
	jg _Z10ConcatArgsi_10
	mov dword [ebp-0x41c], 0x0
_Z10ConcatArgsi_20:
	mov eax, [ebp-0x41c]
	mov byte [eax+_ZZ10ConcatArgsiE4line], 0x0
	mov eax, _ZZ10ConcatArgsiE4line
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z10ConcatArgsi_10:
	mov ebx, [ebp+0x8]
	mov dword [ebp-0x41c], 0x0
	lea esi, [ebp-0x418]
	mov [ebp-0x424], eax
	sub eax, 0x1
	mov [ebp-0x420], eax
_Z10ConcatArgsi_40:
	mov dword [esp+0x8], 0x400
	mov [esp+0x4], esi
	mov [esp], ebx
	call _Z17SV_Cmd_ArgvBufferiPci
	cld
	mov ecx, 0xffffffff
	mov edi, esi
	xor eax, eax
	repne scasb
	not ecx
	lea edx, [ecx-0x1]
	mov edi, [ebp-0x41c]
	add edi, edx
	cmp edi, 0x3fe
	jg _Z10ConcatArgsi_20
	mov eax, [ebp-0x41c]
	add eax, _ZZ10ConcatArgsiE4line
	mov [esp+0x8], edx
	mov [esp+0x4], esi
	mov [esp], eax
	call memcpy
	cmp ebx, [ebp-0x420]
	jz _Z10ConcatArgsi_30
	mov byte [edi+_ZZ10ConcatArgsiE4line], 0x20
	add edi, 0x1
_Z10ConcatArgsi_30:
	mov [ebp-0x41c], edi
	add ebx, 0x1
	cmp [ebp-0x424], ebx
	jnz _Z10ConcatArgsi_40
	mov eax, [ebp-0x41c]
	mov byte [eax+_ZZ10ConcatArgsiE4line], 0x0
	mov eax, _ZZ10ConcatArgsiE4line
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Cmd_Score_f(gentity_s*)
_Z11Cmd_Score_fP9gentity_s:
	push ebp
	mov ebp, esp
	pop ebp
	jmp _Z14SendScoreboardP9gentity_s
	nop


;ClientCommand(int)
_Z13ClientCommandi:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x37cc
	mov esi, [ebp+0x8]
	lea eax, [esi+esi*8]
	lea eax, [esi+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	add eax, esi
	mov edi, g_entities
	add eax, edi
	mov [ebp-0x379c], eax
	mov eax, [eax+0x15c]
	test eax, eax
	jz _Z13ClientCommandi_10
	mov dword [esp+0x8], 0x400
	lea ebx, [ebp-0x818]
	mov [esp+0x4], ebx
	mov dword [esp], 0x0
	call _Z17SV_Cmd_ArgvBufferiPci
	mov dword [esp+0x4], _cstring_say
	mov [esp], ebx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z13ClientCommandi_20
	mov edx, sv_cmd_args
	mov eax, [edx]
	mov eax, [edx+eax*4+0x44]
	mov [ebp-0x3798], eax
	cmp eax, 0x1
	jle _Z13ClientCommandi_10
	mov esi, 0x1
	mov dword [ebp-0x3794], 0x0
	sub eax, 0x1
	mov [ebp-0x37a0], eax
	jmp _Z13ClientCommandi_30
_Z13ClientCommandi_60:
	mov [ebp-0x3794], ebx
_Z13ClientCommandi_30:
	mov dword [esp+0x8], 0x400
	lea eax, [ebp-0x418]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z17SV_Cmd_ArgvBufferiPci
	cld
	mov ecx, 0xffffffff
	lea edi, [ebp-0x418]
	xor eax, eax
	repne scasb
	not ecx
	lea edx, [ecx-0x1]
	mov ebx, [ebp-0x3794]
	add ebx, edx
	cmp ebx, 0x3fe
	jg _Z13ClientCommandi_40
	mov eax, [ebp-0x3794]
	add eax, _ZZ10ConcatArgsiE4line
	mov [esp+0x8], edx
	lea edx, [ebp-0x418]
	mov [esp+0x4], edx
	mov [esp], eax
	call memcpy
	cmp esi, [ebp-0x37a0]
	jz _Z13ClientCommandi_50
	mov byte [ebx+_ZZ10ConcatArgsiE4line], 0x20
	add ebx, 0x1
_Z13ClientCommandi_50:
	add esi, 0x1
	cmp [ebp-0x3798], esi
	jnz _Z13ClientCommandi_60
_Z13ClientCommandi_140:
	mov byte [ebx+_ZZ10ConcatArgsiE4line], 0x0
	mov dword [esp+0xc], _ZZ10ConcatArgsiE4line
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov ecx, [ebp-0x379c]
	mov [esp], ecx
	call _Z5G_SayP9gentity_sS0_iPKc
_Z13ClientCommandi_10:
	add esp, 0x37cc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z13ClientCommandi_20:
	mov dword [esp+0x4], _cstring_say_team
	mov [esp], ebx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z13ClientCommandi_70
	mov edx, sv_cmd_args
	mov eax, [edx]
	mov eax, [edx+eax*4+0x44]
	mov [ebp-0x3790], eax
	cmp eax, 0x1
	jle _Z13ClientCommandi_10
	mov esi, 0x1
	mov dword [ebp-0x378c], 0x0
	sub eax, 0x1
	mov [ebp-0x37a4], eax
	jmp _Z13ClientCommandi_80
_Z13ClientCommandi_110:
	mov [ebp-0x378c], ebx
_Z13ClientCommandi_80:
	mov dword [esp+0x8], 0x400
	lea eax, [ebp-0x418]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z17SV_Cmd_ArgvBufferiPci
	cld
	mov ecx, 0xffffffff
	lea edi, [ebp-0x418]
	xor eax, eax
	repne scasb
	not ecx
	lea edx, [ecx-0x1]
	mov ecx, [ebp-0x378c]
	lea ebx, [edx+ecx]
	cmp ebx, 0x3fe
	jg _Z13ClientCommandi_90
	mov eax, ecx
	add eax, _ZZ10ConcatArgsiE4line
	mov [esp+0x8], edx
	lea edx, [ebp-0x418]
	mov [esp+0x4], edx
	mov [esp], eax
	call memcpy
	cmp esi, [ebp-0x37a4]
	jz _Z13ClientCommandi_100
	mov byte [ebx+_ZZ10ConcatArgsiE4line], 0x20
	add ebx, 0x1
_Z13ClientCommandi_100:
	add esi, 0x1
	cmp [ebp-0x3790], esi
	jnz _Z13ClientCommandi_110
_Z13ClientCommandi_150:
	mov byte [ebx+_ZZ10ConcatArgsiE4line], 0x0
	mov dword [esp+0xc], _ZZ10ConcatArgsiE4line
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x0
	mov ecx, [ebp-0x379c]
	mov [esp], ecx
	call _Z5G_SayP9gentity_sS0_iPKc
	add esp, 0x37cc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z13ClientCommandi_70:
	mov dword [esp+0x4], _cstring_score
	mov [esp], ebx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z13ClientCommandi_120
	mov edx, [ebp-0x379c]
	mov eax, [edx+0x15c]
	cmp dword [eax+0x4], 0x5
	jz _Z13ClientCommandi_10
	mov dword [esp+0x4], _cstring_mr
	mov [esp], ebx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z13ClientCommandi_130
	mov ecx, [ebp-0x379c]
	mov [esp], ecx
	call _Z18Cmd_MenuResponse_fP9gentity_s
	jmp _Z13ClientCommandi_10
_Z13ClientCommandi_40:
	mov ebx, [ebp-0x3794]
	jmp _Z13ClientCommandi_140
_Z13ClientCommandi_90:
	mov ebx, ecx
	jmp _Z13ClientCommandi_150
_Z13ClientCommandi_120:
	mov eax, [ebp-0x379c]
	mov [esp], eax
	call _Z14SendScoreboardP9gentity_s
	jmp _Z13ClientCommandi_10
_Z13ClientCommandi_130:
	mov dword [esp+0x4], _cstring_give
	mov [esp], ebx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z13ClientCommandi_160
	mov eax, [ebp-0x379c]
	mov [esp], eax
	call _Z10Cmd_Give_fP9gentity_s
	jmp _Z13ClientCommandi_10
_Z13ClientCommandi_160:
	mov dword [esp+0x4], _cstring_take
	mov [esp], ebx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z13ClientCommandi_170
	mov edx, [ebp-0x379c]
	mov [esp], edx
	call _Z10Cmd_Take_fP9gentity_s
	jmp _Z13ClientCommandi_10
_Z13ClientCommandi_170:
	mov dword [esp+0x4], _cstring_god
	mov [esp], ebx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z13ClientCommandi_180
	mov ecx, [ebp-0x379c]
	mov [esp], ecx
	call _Z8CheatsOkP9gentity_s
	test eax, eax
	jz _Z13ClientCommandi_10
	mov eax, [ebp-0x379c]
	mov edx, [eax+0x180]
	xor edx, 0x1
	mov [eax+0x180], edx
	mov eax, _cstring_game_godmode_on
	and dl, 0x1
	mov edx, _cstring_game_godmode_off
	cmovz eax, edx
_Z13ClientCommandi_200:
	mov [esp+0x8], eax
_Z13ClientCommandi_230:
	mov dword [esp+0x4], 0x65
	mov dword [esp], _cstring_c_s
	call _Z2vaPKcz
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	sub [ebp-0x379c], edi
	sar dword [ebp-0x379c], 0x2
	imul eax, [ebp-0x379c], 0x2c0685b5
	mov [esp], eax
	call _Z24SV_GameSendServerCommandi11svscmd_typePKc
	jmp _Z13ClientCommandi_10
_Z13ClientCommandi_180:
	mov dword [esp+0x4], _cstring_demigod
	mov [esp], ebx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z13ClientCommandi_190
	mov edx, [ebp-0x379c]
	mov [esp], edx
	call _Z8CheatsOkP9gentity_s
	test eax, eax
	jz _Z13ClientCommandi_10
	mov ecx, [ebp-0x379c]
	mov edx, [ecx+0x180]
	xor edx, 0x2
	mov [ecx+0x180], edx
	mov eax, _cstring_game_demi_godmod
	and dl, 0x2
	mov edx, _cstring_game_demi_godmod1
	cmovz eax, edx
	jmp _Z13ClientCommandi_200
_Z13ClientCommandi_190:
	mov dword [esp+0x4], _cstring_notarget
	mov [esp], ebx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z13ClientCommandi_210
	mov eax, [ebp-0x379c]
	mov [esp], eax
	call _Z8CheatsOkP9gentity_s
	test eax, eax
	jz _Z13ClientCommandi_10
	mov ecx, [ebp-0x379c]
	mov edx, [ecx+0x180]
	xor edx, 0x4
	mov [ecx+0x180], edx
	mov eax, _cstring_game_notargetoff
	and dl, 0x4
	mov edx, _cstring_game_notargeton
	cmovnz eax, edx
	jmp _Z13ClientCommandi_200
_Z13ClientCommandi_210:
	mov dword [esp+0x4], _cstring_noclip
	mov [esp], ebx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z13ClientCommandi_220
	mov eax, [ebp-0x379c]
	mov [esp], eax
	call _Z8CheatsOkP9gentity_s
	test eax, eax
	jz _Z13ClientCommandi_10
	mov edx, [ebp-0x379c]
	mov ebx, [edx+0x15c]
	mov ecx, [ebx+0x3078]
	mov edx, _cstring_game_noclipoff
	test ecx, ecx
	mov eax, _cstring_game_noclipon
	cmovz edx, eax
	setz al
	movzx eax, al
	mov [ebx+0x3078], eax
	mov [esp+0x8], edx
	jmp _Z13ClientCommandi_230
_Z13ClientCommandi_220:
	mov dword [esp+0x4], _cstring_ufo
	mov [esp], ebx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z13ClientCommandi_240
	mov ecx, [ebp-0x379c]
	mov [esp], ecx
	call _Z8CheatsOkP9gentity_s
	test eax, eax
	jz _Z13ClientCommandi_10
	mov eax, [ebp-0x379c]
	mov ebx, [eax+0x15c]
	mov ecx, [ebx+0x307c]
	mov edx, _cstring_game_ufooff
	test ecx, ecx
	mov eax, _cstring_game_ufoon
	cmovz edx, eax
	setz al
	movzx eax, al
	mov [ebx+0x307c], eax
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x65
	mov dword [esp], _cstring_c_s
	call _Z2vaPKcz
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov edx, g_entities
	sub [ebp-0x379c], edx
	sar dword [ebp-0x379c], 0x2
	imul eax, [ebp-0x379c], 0x2c0685b5
	mov [esp], eax
	call _Z24SV_GameSendServerCommandi11svscmd_typePKc
	jmp _Z13ClientCommandi_10
_Z13ClientCommandi_240:
	mov dword [esp+0x4], _cstring_kill
	mov [esp], ebx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z13ClientCommandi_250
	mov ecx, [ebp-0x379c]
	mov eax, [ecx+0x15c]
	mov esi, [eax+0x2f64]
	test esi, esi
	jnz _Z13ClientCommandi_10
	mov [esp], ecx
	call _Z8CheatsOkP9gentity_s
	test eax, eax
	jz _Z13ClientCommandi_10
	mov ebx, bgs
	mov eax, level_bgs
	mov [ebx], eax
	mov eax, [ebp-0x379c]
	and dword [eax+0x180], 0xfffffffc
	mov edx, [ebp-0x379c]
	mov eax, [edx+0x15c]
	mov dword [edx+0x1a0], 0x0
	mov dword [eax+0x148], 0x0
	mov dword [esp+0x20], 0x0
	mov dword [esp+0x1c], 0x0
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0xc
	mov dword [esp+0xc], 0x186a0
	mov [esp+0x8], edx
	mov [esp+0x4], edx
	mov [esp], edx
	call _Z10player_dieP9gentity_sS0_S0_iiiPKf13hitLocation_ti
	mov dword [ebx], 0x0
	jmp _Z13ClientCommandi_10
_Z13ClientCommandi_250:
	mov dword [esp+0x4], _cstring_follownext
	mov [esp], ebx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z13ClientCommandi_260
	mov ecx, [ebp-0x379c]
	mov edx, [ecx+0x15c]
	cmp dword [edx+0x2f64], 0x2
	jnz _Z13ClientCommandi_10
	mov ebx, [edx+0x2f68]
	test ebx, ebx
	jns _Z13ClientCommandi_10
	mov esi, [edx+0x3074]
	test esi, esi
	mov ebx, eax
	cmovns ebx, esi
	mov esi, ebx
	mov edi, level
_Z13ClientCommandi_290:
	add ebx, 0x1
	mov eax, [edi+0x1e4]
	cmp ebx, eax
	jl _Z13ClientCommandi_270
	xor ebx, ebx
_Z13ClientCommandi_350:
	lea eax, [ebp-0x418]
	mov [esp+0xc], eax
	lea edx, [ebp-0x377c]
	mov [esp+0x8], edx
	mov ecx, [ebp-0x379c]
	mov eax, [ecx+0x15c]
	add eax, 0x2f74
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z24SV_GetArchivedClientInfoiPiP13playerState_sP13clientState_s
	test eax, eax
	jnz _Z13ClientCommandi_280
_Z13ClientCommandi_340:
	cmp esi, ebx
	jnz _Z13ClientCommandi_290
	jmp _Z13ClientCommandi_10
_Z13ClientCommandi_260:
	mov dword [esp+0x4], _cstring_followprev
	mov [esp], ebx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z13ClientCommandi_300
	mov ecx, [ebp-0x379c]
	mov edx, [ecx+0x15c]
	cmp dword [edx+0x2f64], 0x2
	jnz _Z13ClientCommandi_10
	mov ecx, [edx+0x2f68]
	test ecx, ecx
	jns _Z13ClientCommandi_10
	mov esi, [edx+0x3074]
	test esi, esi
	mov ebx, eax
	cmovns ebx, esi
	mov esi, ebx
	mov edi, level
_Z13ClientCommandi_330:
	sub ebx, 0x1
	mov eax, [edi+0x1e4]
	cmp ebx, eax
	jl _Z13ClientCommandi_310
	xor ebx, ebx
_Z13ClientCommandi_370:
	lea eax, [ebp-0x418]
	mov [esp+0xc], eax
	lea edx, [ebp-0x377c]
	mov [esp+0x8], edx
	mov ecx, [ebp-0x379c]
	mov eax, [ecx+0x15c]
	add eax, 0x2f74
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z24SV_GetArchivedClientInfoiPiP13playerState_sP13clientState_s
	test eax, eax
	jnz _Z13ClientCommandi_320
_Z13ClientCommandi_360:
	cmp esi, ebx
	jnz _Z13ClientCommandi_330
	jmp _Z13ClientCommandi_10
_Z13ClientCommandi_280:
	mov eax, [ebp-0x414]
	mov [esp+0x4], eax
	mov edx, [ebp-0x379c]
	mov eax, [edx+0x15c]
	mov [esp], eax
	call _Z23G_ClientCanSpectateTeamP9gclient_s6team_t
	test eax, eax
	jz _Z13ClientCommandi_340
	mov edx, [ebp-0x379c]
	mov eax, [edx+0x15c]
	mov [eax+0x3074], ebx
	mov eax, [edx+0x15c]
	mov dword [eax+0x2f64], 0x2
	jmp _Z13ClientCommandi_10
_Z13ClientCommandi_270:
	sub eax, 0x1
	cmp ebx, 0xffffffff
	cmovle ebx, eax
	jmp _Z13ClientCommandi_350
_Z13ClientCommandi_320:
	mov eax, [ebp-0x414]
	mov [esp+0x4], eax
	mov edx, [ebp-0x379c]
	mov eax, [edx+0x15c]
	mov [esp], eax
	call _Z23G_ClientCanSpectateTeamP9gclient_s6team_t
	test eax, eax
	jz _Z13ClientCommandi_360
	mov ecx, [ebp-0x379c]
	mov eax, [ecx+0x15c]
	mov [eax+0x3074], ebx
	mov eax, [ecx+0x15c]
	mov dword [eax+0x2f64], 0x2
	jmp _Z13ClientCommandi_10
_Z13ClientCommandi_310:
	sub eax, 0x1
	cmp ebx, 0xffffffff
	cmovle ebx, eax
	jmp _Z13ClientCommandi_370
_Z13ClientCommandi_300:
	mov dword [esp+0x4], _cstring_where
	mov [esp], ebx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z13ClientCommandi_380
	mov eax, [ebp-0x379c]
	add eax, 0x13c
	mov [esp], eax
	call _Z4vtosPKf
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x65
	mov dword [esp], _cstring_c_s1
	call _Z2vaPKcz
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov ecx, g_entities
	sub [ebp-0x379c], ecx
	sar dword [ebp-0x379c], 0x2
	imul eax, [ebp-0x379c], 0x2c0685b5
	mov [esp], eax
	call _Z24SV_GameSendServerCommandi11svscmd_typePKc
	jmp _Z13ClientCommandi_10
_Z13ClientCommandi_380:
	mov dword [esp+0x4], _cstring_callvote
	mov [esp], ebx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z13ClientCommandi_390
	mov eax, [ebp-0x379c]
	mov [esp], eax
	call _Z14Cmd_CallVote_fP9gentity_s
	jmp _Z13ClientCommandi_10
_Z13ClientCommandi_390:
	mov dword [esp+0x4], _cstring_vote
	mov [esp], ebx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z13ClientCommandi_400
	mov edx, [ebp-0x379c]
	mov [esp], edx
	call _Z10Cmd_Vote_fP9gentity_s
	jmp _Z13ClientCommandi_10
_Z13ClientCommandi_400:
	mov dword [esp+0x4], _cstring_setviewpos
	mov [esp], ebx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z13ClientCommandi_410
	mov ecx, [ebp-0x379c]
	mov [esp], ecx
	call _Z16Cmd_SetViewpos_fP9gentity_s
	jmp _Z13ClientCommandi_10
_Z13ClientCommandi_410:
	mov dword [esp+0x4], _cstring_entitycount
	mov [esp], ebx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z13ClientCommandi_420
	mov eax, g_cheats
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z13ClientCommandi_10
	mov eax, level
	mov eax, [eax+0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_entity_count__i
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	jmp _Z13ClientCommandi_10
_Z13ClientCommandi_420:
	mov dword [esp+0x4], _cstring_printentities
	mov [esp], ebx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z13ClientCommandi_430
	call _Z15G_PrintEntitiesv
	jmp _Z13ClientCommandi_10
_Z13ClientCommandi_430:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x65
	mov dword [esp], _cstring_c_game_unknowncl
	call _Z2vaPKcz
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call _Z24SV_GameSendServerCommandi11svscmd_typePKc
	jmp _Z13ClientCommandi_10


;StopFollowing(gentity_s*)
_Z13StopFollowingP9gentity_s:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xac
	mov edi, [ebp+0x8]
	mov esi, [edi+0x15c]
	mov dword [esi+0x2f68], 0xffffffff
	mov dword [esi+0x2f6c], 0xffffffff
	mov dword [esi+0x3074], 0xffffffff
	test byte [esi+0x14], 0x2
	jnz _Z13StopFollowingP9gentity_s_10
	add esp, 0xac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z13StopFollowingP9gentity_s_10:
	lea eax, [ebp-0x30]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z21G_GetPlayerViewOriginPK13playerState_sPf
	lea eax, [ebp-0x48]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x0
	lea eax, [ebp-0x3c]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z25BG_GetPlayerViewDirectionPK13playerState_sPfS2_S2_
	lea edx, [esi+0x108]
	movss xmm0, dword [esi+0x108]
	movss [ebp-0x24], xmm0
	mov eax, [edx+0x4]
	mov [ebp-0x20], eax
	mov eax, [edx+0x8]
	mov [ebp-0x1c], eax
	addss xmm0, [_float_15_00000000]
	movss [ebp-0x24], xmm0
	movss xmm1, dword [_float__40_00000000]
	movss xmm0, dword [ebp-0x3c]
	mulss xmm0, xmm1
	addss xmm0, [ebp-0x30]
	movss [ebp-0x54], xmm0
	movss xmm0, dword [ebp-0x38]
	mulss xmm0, xmm1
	addss xmm0, [ebp-0x2c]
	movss [ebp-0x50], xmm0
	mulss xmm1, [ebp-0x34]
	addss xmm1, [ebp-0x28]
	movss [ebp-0x4c], xmm1
	movss xmm1, dword [_float_10_00000000]
	movss xmm0, dword [ebp-0x48]
	mulss xmm0, xmm1
	addss xmm0, [ebp-0x54]
	movss [ebp-0x54], xmm0
	movss xmm0, dword [ebp-0x44]
	mulss xmm0, xmm1
	addss xmm0, [ebp-0x50]
	movss [ebp-0x50], xmm0
	mulss xmm1, [ebp-0x40]
	addss xmm1, [ebp-0x4c]
	movss [ebp-0x4c], xmm1
	mov eax, 0xc1000000
	mov [ebp-0x60], eax
	mov [ebp-0x5c], eax
	mov [ebp-0x58], eax
	mov eax, 0x41000000
	mov [ebp-0x6c], eax
	mov [ebp-0x68], eax
	mov [ebp-0x64], eax
	mov dword [esp+0x18], 0x810011
	mov dword [esp+0x14], 0x3ff
	lea eax, [ebp-0x54]
	mov [esp+0x10], eax
	lea eax, [ebp-0x6c]
	mov [esp+0xc], eax
	lea eax, [ebp-0x60]
	mov [esp+0x8], eax
	lea eax, [ebp-0x30]
	mov [esp+0x4], eax
	lea eax, [ebp-0x98]
	mov [esp], eax
	call _Z14G_TraceCapsuleP7trace_tPKfS2_S2_S2_ii
	movss xmm2, dword [ebp-0x98]
	movss xmm1, dword [ebp-0x30]
	movss xmm0, dword [ebp-0x54]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebp-0x30], xmm1
	movss xmm1, dword [ebp-0x2c]
	movss xmm0, dword [ebp-0x50]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebp-0x2c], xmm1
	movss xmm1, dword [ebp-0x28]
	movss xmm0, dword [ebp-0x4c]
	subss xmm0, xmm1
	mulss xmm2, xmm0
	addss xmm1, xmm2
	movss [ebp-0x28], xmm1
	mov eax, edi
	sub eax, g_entities
	sar eax, 0x2
	imul eax, eax, 0x2c0685b5
	mov [esi+0xdc], eax
	and dword [esi+0xb0], 0xfffffcff
	mov dword [esi+0x598], 0x0
	mov dword [esi+0x59c], 0x3ff
	and dword [esi+0xc], 0xfffeffef
	and dword [esi+0x10], 0xffffffbf
	and dword [esi+0x14], 0xfffffffd
	xor ebx, ebx
	mov [esi+0xf4], ebx
	lea eax, [ebp-0x30]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z11G_SetOriginP9gentity_sPKf
	lea edx, [esi+0x1c]
	mov eax, [ebp-0x30]
	mov [esi+0x1c], eax
	mov eax, [ebp-0x2c]
	mov [edx+0x4], eax
	mov eax, [ebp-0x28]
	mov [edx+0x8], eax
	lea eax, [ebp-0x24]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z18SetClientViewAngleP9gentity_sPKf
	mov eax, [edi+0x218]
	test eax, eax
	jz _Z13StopFollowingP9gentity_s_20
_Z13StopFollowingP9gentity_s_30:
	mov dword [esi+0x62c], 0x0
	mov dword [esi+0x630], 0x0
	mov dword [esi+0x634], 0x0
	add esp, 0xac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z13StopFollowingP9gentity_s_20:
	mov [edi+0x148], ebx
	jmp _Z13StopFollowingP9gentity_s_30
	add [eax], al


;Cmd_CallVote_f(gentity_s*)
_Z14Cmd_CallVote_fP9gentity_s:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x37c
	mov esi, [ebp+0x8]
	mov eax, g_allowVote
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z14Cmd_CallVote_fP9gentity_s_10
	mov edx, level
	cmp dword [edx+0x21c], 0x1
	jle _Z14Cmd_CallVote_fP9gentity_s_20
	mov eax, g_oldVoting
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z14Cmd_CallVote_fP9gentity_s_30
	mov ecx, [edx+0xb20]
	test ecx, ecx
	jnz _Z14Cmd_CallVote_fP9gentity_s_40
	mov eax, [esi+0x15c]
	cmp dword [eax+0x2ff4], 0x2
	jg _Z14Cmd_CallVote_fP9gentity_s_50
	cmp dword [eax+0x3010], 0x3
	jz _Z14Cmd_CallVote_fP9gentity_s_60
_Z14Cmd_CallVote_fP9gentity_s_30:
	mov dword [esp+0x8], 0x100
	lea ebx, [ebp-0x158]
	mov [esp+0x4], ebx
	mov dword [esp], 0x1
	call _Z17SV_Cmd_ArgvBufferiPci
	mov dword [esp+0x8], 0x100
	lea eax, [ebp-0x258]
	mov [esp+0x4], eax
	mov dword [esp], 0x2
	call _Z17SV_Cmd_ArgvBufferiPci
	mov dword [esp+0x8], 0x100
	lea edi, [ebp-0x358]
	mov [esp+0x4], edi
	mov dword [esp], 0x3
	call _Z17SV_Cmd_ArgvBufferiPci
	mov dword [esp+0x4], 0x3b
	mov [esp], ebx
	call strchr
	test eax, eax
	jz _Z14Cmd_CallVote_fP9gentity_s_70
_Z14Cmd_CallVote_fP9gentity_s_90:
	mov dword [esp+0x4], 0x65
	mov dword [esp], _cstring_c_game_invalidvo
_Z14Cmd_CallVote_fP9gentity_s_80:
	call _Z2vaPKcz
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	sub esi, g_entities
	sar esi, 0x2
	imul eax, esi, 0x2c0685b5
	mov [esp], eax
	call _Z24SV_GameSendServerCommandi11svscmd_typePKc
_Z14Cmd_CallVote_fP9gentity_s_200:
	add esp, 0x37c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z14Cmd_CallVote_fP9gentity_s_10:
	mov dword [esp+0x4], 0x65
	mov dword [esp], _cstring_c_game_votingnot
	jmp _Z14Cmd_CallVote_fP9gentity_s_80
_Z14Cmd_CallVote_fP9gentity_s_40:
	mov dword [esp+0x4], 0x65
	mov dword [esp], _cstring_c_game_votealrea1
	jmp _Z14Cmd_CallVote_fP9gentity_s_80
_Z14Cmd_CallVote_fP9gentity_s_50:
	mov dword [esp+0x4], 0x65
	mov dword [esp], _cstring_c_game_maxvotesc
	jmp _Z14Cmd_CallVote_fP9gentity_s_80
_Z14Cmd_CallVote_fP9gentity_s_20:
	mov dword [esp+0x4], 0x65
	mov dword [esp], _cstring_c_game_votingnot1
	jmp _Z14Cmd_CallVote_fP9gentity_s_80
_Z14Cmd_CallVote_fP9gentity_s_70:
	mov dword [esp+0x4], 0x3b
	lea edx, [ebp-0x258]
	mov [esp], edx
	call strchr
	test eax, eax
	jnz _Z14Cmd_CallVote_fP9gentity_s_90
	mov dword [esp+0x4], 0x3b
	mov [esp], edi
	call strchr
	test eax, eax
	jnz _Z14Cmd_CallVote_fP9gentity_s_90
	mov eax, g_oldVoting
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z14Cmd_CallVote_fP9gentity_s_100
	mov dword [esp+0x4], _cstring_map_restart
	mov [esp], ebx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z14Cmd_CallVote_fP9gentity_s_110
_Z14Cmd_CallVote_fP9gentity_s_260:
	mov eax, level
	mov edx, [eax+0xb24]
	test edx, edx
	jz _Z14Cmd_CallVote_fP9gentity_s_120
	mov dword [eax+0xb24], 0x0
	add eax, 0x320
	mov [esp+0x4], eax
	mov dword [esp], _cstring_s1
	call _Z2vaPKcz
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call _Z12Cbuf_AddTextiPKc
_Z14Cmd_CallVote_fP9gentity_s_120:
	mov dword [esp+0x4], _cstring_typemap
	mov [esp], ebx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z14Cmd_CallVote_fP9gentity_s_130
	lea edx, [ebp-0x258]
	mov [esp], edx
	call _Z19Scr_IsValidGameTypePKc
	test eax, eax
	jz _Z14Cmd_CallVote_fP9gentity_s_140
	mov eax, g_gametype
	mov eax, [eax]
	mov eax, [eax+0xc]
	mov [esp+0x4], eax
	lea eax, [ebp-0x258]
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	xor edx, edx
	test eax, eax
	movzx eax, byte [ebp-0x258]
	cmovnz edx, eax
	mov [ebp-0x258], dl
	mov dword [esp+0x8], 0x100
	mov [esp+0x4], edi
	mov dword [esp], 0x3
	call _Z17SV_Cmd_ArgvBufferiPci
	mov eax, useFastFile
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z14Cmd_CallVote_fP9gentity_s_150
	mov [esp], edi
	call _Z12SV_MapExistsPKc
	test eax, eax
	jz _Z14Cmd_CallVote_fP9gentity_s_160
_Z14Cmd_CallVote_fP9gentity_s_150:
	mov dword [esp+0xc], _cstring_current_map_name
	mov dword [esp+0x8], 0x44
	mov dword [esp+0x4], _cstring_null
	mov dword [esp], _cstring_mapname
	call _Z19Dvar_RegisterStringPKcS0_tS0_
	mov eax, [eax+0xc]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z14Cmd_CallVote_fP9gentity_s_170
	mov byte [ebp-0x358], 0x0
_Z14Cmd_CallVote_fP9gentity_s_170:
	cmp byte [ebp-0x258], 0x0
	jnz _Z14Cmd_CallVote_fP9gentity_s_180
	cmp byte [ebp-0x358], 0x0
	jnz _Z14Cmd_CallVote_fP9gentity_s_190
	mov dword [esp+0x4], 0x65
	mov dword [esp], _cstring_c_game_typemap_n
	jmp _Z14Cmd_CallVote_fP9gentity_s_80
_Z14Cmd_CallVote_fP9gentity_s_60:
	mov dword [esp+0x4], 0x65
	mov dword [esp], _cstring_c_game_nospectat1
	jmp _Z14Cmd_CallVote_fP9gentity_s_80
_Z14Cmd_CallVote_fP9gentity_s_100:
	mov [esp+0xc], edi
	lea edx, [ebp-0x258]
	mov [esp+0x8], edx
	mov [esp+0x4], ebx
	mov [esp], esi
	call _Z14Scr_VoteCalledP9gentity_sPcS1_S1_
	jmp _Z14Cmd_CallVote_fP9gentity_s_200
_Z14Cmd_CallVote_fP9gentity_s_140:
	mov dword [esp+0x4], 0x65
	mov dword [esp], _cstring_c_game_invalidga
	jmp _Z14Cmd_CallVote_fP9gentity_s_80
_Z14Cmd_CallVote_fP9gentity_s_130:
	mov dword [esp+0x4], _cstring_g_gametype
	mov [esp], ebx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z14Cmd_CallVote_fP9gentity_s_210
	lea edx, [ebp-0x258]
	mov [esp], edx
	call _Z19Scr_IsValidGameTypePKc
	test eax, eax
	jz _Z14Cmd_CallVote_fP9gentity_s_140
	lea eax, [ebp-0x258]
	mov [esp+0x10], eax
	mov [esp+0xc], ebx
	mov dword [esp+0x8], _cstring_s_s_map_restart
	mov dword [esp+0x4], 0x400
	mov eax, level
	add eax, 0x320
	mov [esp], eax
	call _Z11Com_sprintfPciPKcz
	lea edx, [ebp-0x258]
	mov [esp], edx
	call _Z28Scr_GetGameTypeNameForScriptPKc
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_game_vote_gamety
_Z14Cmd_CallVote_fP9gentity_s_250:
	mov dword [esp+0x4], 0x400
	mov eax, level
	add eax, 0x720
	mov [esp], eax
	call _Z11Com_sprintfPciPKcz
_Z14Cmd_CallVote_fP9gentity_s_290:
	mov eax, [esi+0x15c]
	add eax, 0x3048
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x65
	mov dword [esp], _cstring_c_game_calledavo
	call _Z2vaPKcz
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov dword [esp], 0xffffffff
	call _Z24SV_GameSendServerCommandi11svscmd_typePKc
	mov edx, level
	mov eax, [edx+0x1ec]
	add eax, 0x7530
	mov [edx+0xb20], eax
	mov dword [edx+0xb28], 0x1
	mov dword [edx+0xb2c], 0x0
	mov edi, [edx+0x1e4]
	test edi, edi
	jle _Z14Cmd_CallVote_fP9gentity_s_220
	xor ebx, ebx
	xor ecx, ecx
_Z14Cmd_CallVote_fP9gentity_s_230:
	mov eax, ecx
	add eax, [edx]
	and dword [eax+0xb0], 0xffefffff
	add ebx, 0x1
	add ecx, 0x3184
	cmp ebx, [edx+0x1e4]
	jl _Z14Cmd_CallVote_fP9gentity_s_230
_Z14Cmd_CallVote_fP9gentity_s_220:
	mov eax, [esi+0x15c]
	or dword [eax+0xb0], 0x100000
	mov dword [esp], _cstring_sv_serverid
	call _Z11Dvar_GetIntPKc
	mov [esp+0x8], eax
	mov ebx, level
	mov eax, [ebx+0xb20]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_i_i
	call _Z2vaPKcz
	mov [esp+0x4], eax
	mov dword [esp], 0xd
	call _Z18SV_SetConfigstringiPKc
	lea eax, [ebx+0x720]
	mov [esp+0x4], eax
	mov dword [esp], 0xe
	call _Z18SV_SetConfigstringiPKc
	mov eax, [ebx+0xb28]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_i
	call _Z2vaPKcz
	mov [esp+0x4], eax
	mov dword [esp], 0xf
	call _Z18SV_SetConfigstringiPKc
	mov eax, [ebx+0xb2c]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_i
	call _Z2vaPKcz
	mov [esp+0x4], eax
	mov dword [esp], 0x10
	call _Z18SV_SetConfigstringiPKc
	jmp _Z14Cmd_CallVote_fP9gentity_s_200
_Z14Cmd_CallVote_fP9gentity_s_210:
	mov dword [esp+0x4], _cstring_map_restart
	mov [esp], ebx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z14Cmd_CallVote_fP9gentity_s_240
	mov dword [esp+0x8], _cstring_fast_restart
	mov dword [esp+0x4], 0x400
	mov eax, level
	add eax, 0x320
	mov [esp], eax
	call _Z11Com_sprintfPciPKcz
	mov dword [esp+0x8], _cstring_game_vote_mapres
	jmp _Z14Cmd_CallVote_fP9gentity_s_250
_Z14Cmd_CallVote_fP9gentity_s_110:
	mov dword [esp+0x4], _cstring_map_rotate
	mov [esp], ebx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z14Cmd_CallVote_fP9gentity_s_260
	mov dword [esp+0x4], _cstring_typemap
	mov [esp], ebx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z14Cmd_CallVote_fP9gentity_s_260
	mov dword [esp+0x4], _cstring_map
	mov [esp], ebx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z14Cmd_CallVote_fP9gentity_s_260
	mov dword [esp+0x4], _cstring_g_gametype
	mov [esp], ebx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z14Cmd_CallVote_fP9gentity_s_260
	mov dword [esp+0x4], _cstring_kick
	mov [esp], ebx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z14Cmd_CallVote_fP9gentity_s_260
	mov dword [esp+0x4], _cstring_clientkick
	mov [esp], ebx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z14Cmd_CallVote_fP9gentity_s_260
	mov dword [esp+0x4], _cstring_tempbanuser
	mov [esp], ebx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z14Cmd_CallVote_fP9gentity_s_260
	mov dword [esp+0x4], _cstring_tempbanclient
	mov [esp], ebx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z14Cmd_CallVote_fP9gentity_s_260
	mov dword [esp+0x4], 0x65
	mov dword [esp], _cstring_c_game_invalidvo
	call _Z2vaPKcz
	sub esi, g_entities
	sar esi, 0x2
	imul ebx, esi, 0x2c0685b5
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call _Z24SV_GameSendServerCommandi11svscmd_typePKc
	mov dword [esp+0x4], 0x65
	mov dword [esp], _cstring_c_game_votecomma
	call _Z2vaPKcz
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call _Z24SV_GameSendServerCommandi11svscmd_typePKc
	jmp _Z14Cmd_CallVote_fP9gentity_s_200
_Z14Cmd_CallVote_fP9gentity_s_180:
	cmp byte [ebp-0x358], 0x0
	jz _Z14Cmd_CallVote_fP9gentity_s_270
	mov [esp+0x10], edi
	lea edx, [ebp-0x258]
	mov [esp+0xc], edx
	mov dword [esp+0x8], _cstring_g_gametype_s_map
	mov dword [esp+0x4], 0x400
	mov eax, level
	add eax, 0x320
	mov [esp], eax
	call _Z11Com_sprintfPciPKcz
_Z14Cmd_CallVote_fP9gentity_s_310:
	cmp byte [ebp-0x258], 0x0
	jz _Z14Cmd_CallVote_fP9gentity_s_280
	lea eax, [ebp-0x258]
	mov [esp], eax
	call _Z28Scr_GetGameTypeNameForScriptPKc
	mov [esp+0x10], edi
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_game_vote_gamety1
	mov dword [esp+0x4], 0x400
	mov eax, level
	add eax, 0x720
	mov [esp], eax
	call _Z11Com_sprintfPciPKcz
	jmp _Z14Cmd_CallVote_fP9gentity_s_290
_Z14Cmd_CallVote_fP9gentity_s_240:
	mov dword [esp+0x4], _cstring_map_rotate
	mov [esp], ebx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z14Cmd_CallVote_fP9gentity_s_300
	mov [esp+0xc], ebx
	mov dword [esp+0x8], _cstring_s2
	mov dword [esp+0x4], 0x400
	mov eax, level
	add eax, 0x320
	mov [esp], eax
	call _Z11Com_sprintfPciPKcz
	mov dword [esp+0x8], _cstring_game_vote_nextma
	jmp _Z14Cmd_CallVote_fP9gentity_s_250
_Z14Cmd_CallVote_fP9gentity_s_190:
	mov [esp+0xc], edi
	mov dword [esp+0x8], _cstring_map_s
	mov dword [esp+0x4], 0x400
	mov eax, level
	add eax, 0x320
	mov [esp], eax
	call _Z11Com_sprintfPciPKcz
	jmp _Z14Cmd_CallVote_fP9gentity_s_310
_Z14Cmd_CallVote_fP9gentity_s_280:
	mov [esp+0xc], edi
	mov dword [esp+0x8], _cstring_game_vote_maps
	jmp _Z14Cmd_CallVote_fP9gentity_s_250
_Z14Cmd_CallVote_fP9gentity_s_270:
	lea edx, [ebp-0x258]
	mov [esp+0xc], edx
	mov dword [esp+0x8], _cstring_g_gametype_s_map1
	mov dword [esp+0x4], 0x400
	mov ebx, level
	lea eax, [ebx+0x320]
	mov [esp], eax
	call _Z11Com_sprintfPciPKcz
	lea eax, [ebp-0x258]
	mov [esp], eax
	call _Z28Scr_GetGameTypeNameForScriptPKc
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_game_vote_gamety
	mov dword [esp+0x4], 0x400
	add ebx, 0x720
	mov [esp], ebx
	call _Z11Com_sprintfPciPKcz
	jmp _Z14Cmd_CallVote_fP9gentity_s_290
_Z14Cmd_CallVote_fP9gentity_s_160:
	mov dword [esp+0x4], 0x65
	mov dword [esp], _cstring_c_the_server_doe
	jmp _Z14Cmd_CallVote_fP9gentity_s_80
_Z14Cmd_CallVote_fP9gentity_s_300:
	mov dword [esp+0x4], _cstring_map
	mov [esp], ebx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z14Cmd_CallVote_fP9gentity_s_320
	mov eax, useFastFile
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z14Cmd_CallVote_fP9gentity_s_330
	lea eax, [ebp-0x258]
	mov [esp], eax
	call _Z12SV_MapExistsPKc
	test eax, eax
	jz _Z14Cmd_CallVote_fP9gentity_s_160
_Z14Cmd_CallVote_fP9gentity_s_330:
	lea edx, [ebp-0x258]
	mov [esp+0x10], edx
	mov [esp+0xc], ebx
	mov dword [esp+0x8], _cstring_s_s
	mov dword [esp+0x4], 0x400
	mov eax, level
	add eax, 0x320
	mov [esp], eax
	call _Z11Com_sprintfPciPKcz
	lea eax, [ebp-0x258]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_game_vote_maps
	jmp _Z14Cmd_CallVote_fP9gentity_s_250
_Z14Cmd_CallVote_fP9gentity_s_320:
	mov dword [esp+0x4], _cstring_kick
	mov [esp], ebx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z14Cmd_CallVote_fP9gentity_s_340
	mov dword [esp+0x4], _cstring_clientkick
	mov [esp], ebx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z14Cmd_CallVote_fP9gentity_s_350
_Z14Cmd_CallVote_fP9gentity_s_340:
	mov dword [esp+0x4], _cstring_kick
	mov [esp], ebx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z14Cmd_CallVote_fP9gentity_s_360
_Z14Cmd_CallVote_fP9gentity_s_400:
	mov dword [ebp-0x35c], 0x40
	xor ebx, ebx
	xor edi, edi
	jmp _Z14Cmd_CallVote_fP9gentity_s_370
_Z14Cmd_CallVote_fP9gentity_s_390:
	add ebx, 0x1
	add edi, 0x3184
	cmp ebx, 0x40
	jz _Z14Cmd_CallVote_fP9gentity_s_380
_Z14Cmd_CallVote_fP9gentity_s_370:
	mov eax, edi
	mov edx, level
	add eax, [edx]
	cmp dword [eax+0x2f8c], 0x2
	jnz _Z14Cmd_CallVote_fP9gentity_s_390
	mov dword [esp+0x8], 0x40
	add eax, 0x3048
	mov [esp+0x4], eax
	lea eax, [ebp-0x58]
	mov [esp], eax
	call _Z10I_strncpyzPcPKci
	lea edx, [ebp-0x58]
	mov [esp], edx
	call _Z10I_CleanStrPc
	lea eax, [ebp-0x258]
	mov [esp+0x4], eax
	lea edx, [ebp-0x58]
	mov [esp], edx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	mov eax, [ebp-0x35c]
	cmovz eax, ebx
	mov [ebp-0x35c], eax
	jmp _Z14Cmd_CallVote_fP9gentity_s_390
_Z14Cmd_CallVote_fP9gentity_s_360:
	mov dword [esp+0x4], _cstring_tempbanuser
	mov [esp], ebx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z14Cmd_CallVote_fP9gentity_s_400
	lea eax, [ebp-0x258]
	mov [esp], eax
	call atoi
	mov [ebp-0x35c], eax
	cmp eax, 0x0
	jz _Z14Cmd_CallVote_fP9gentity_s_410
	jl _Z14Cmd_CallVote_fP9gentity_s_420
	cmp dword [ebp-0x35c], 0x3f
	jg _Z14Cmd_CallVote_fP9gentity_s_420
_Z14Cmd_CallVote_fP9gentity_s_440:
	mov edx, [ebp-0x35c]
	lea eax, [edx+edx*2]
	mov edx, eax
	shl edx, 0x6
	add eax, edx
	mov edx, eax
	shl edx, 0x6
	add eax, edx
	mov edx, [ebp-0x35c]
	lea edi, [eax+edx]
	mov eax, level
	mov edx, [eax]
	lea eax, [edi+edx]
	cmp dword [eax+0x2f8c], 0x2
	jz _Z14Cmd_CallVote_fP9gentity_s_430
_Z14Cmd_CallVote_fP9gentity_s_420:
	mov dword [esp+0x4], 0x65
	mov dword [esp], _cstring_c_game_clientnot
	jmp _Z14Cmd_CallVote_fP9gentity_s_80
_Z14Cmd_CallVote_fP9gentity_s_410:
	mov dword [esp+0x4], _cstring_0
	lea edx, [ebp-0x258]
	mov [esp], edx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z14Cmd_CallVote_fP9gentity_s_420
	jmp _Z14Cmd_CallVote_fP9gentity_s_440
_Z14Cmd_CallVote_fP9gentity_s_430:
	mov dword [esp+0x8], 0x40
	add eax, 0x3048
	mov [esp+0x4], eax
	lea ebx, [ebp-0x58]
	mov [esp], ebx
	call _Z10I_strncpyzPcPKci
	mov [esp], ebx
	call _Z10I_CleanStrPc
_Z14Cmd_CallVote_fP9gentity_s_460:
	movzx eax, byte [ebp-0x158]
	cmp al, 0x74
	jz _Z14Cmd_CallVote_fP9gentity_s_450
	cmp al, 0x54
	jz _Z14Cmd_CallVote_fP9gentity_s_450
	mov eax, _cstring_clientkick
_Z14Cmd_CallVote_fP9gentity_s_470:
	mov edx, [ebp-0x35c]
	mov [esp+0x10], edx
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_s_d
	mov dword [esp+0x4], 0x400
	mov ebx, level
	lea eax, [ebx+0x320]
	mov [esp], eax
	call _Z11Com_sprintfPciPKcz
	add edi, [ebx]
	lea eax, [edi+0x3048]
	mov [esp+0x10], eax
	mov eax, [ebp-0x35c]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_game_vote_kickis
	mov dword [esp+0x4], 0x400
	add ebx, 0x720
	mov [esp], ebx
	call _Z11Com_sprintfPciPKcz
	jmp _Z14Cmd_CallVote_fP9gentity_s_290
_Z14Cmd_CallVote_fP9gentity_s_350:
	mov dword [esp+0x4], _cstring_tempbanuser
	mov [esp], ebx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z14Cmd_CallVote_fP9gentity_s_340
	mov dword [esp+0x4], _cstring_tempbanclient
	mov [esp], ebx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z14Cmd_CallVote_fP9gentity_s_340
	jmp _Z14Cmd_CallVote_fP9gentity_s_200
_Z14Cmd_CallVote_fP9gentity_s_380:
	cmp dword [ebp-0x35c], 0x40
	jz _Z14Cmd_CallVote_fP9gentity_s_420
	mov edx, [ebp-0x35c]
	lea eax, [edx+edx*2]
	mov edx, eax
	shl edx, 0x6
	add eax, edx
	mov edx, eax
	shl edx, 0x6
	add eax, edx
	mov edx, [ebp-0x35c]
	lea edi, [eax+edx]
	jmp _Z14Cmd_CallVote_fP9gentity_s_460
_Z14Cmd_CallVote_fP9gentity_s_450:
	mov eax, _cstring_tempbanclient
	jmp _Z14Cmd_CallVote_fP9gentity_s_470


;SendScoreboard(gentity_s*)
_Z14SendScoreboardP9gentity_s:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xb5c
	mov byte [ebp-0x590], 0x0
	mov eax, level
	mov eax, [eax+0x21c]
	mov [ebp-0xb30], eax
	cmp eax, 0x40
	jle _Z14SendScoreboardP9gentity_s_10
	mov dword [ebp-0xb30], 0x40
_Z14SendScoreboardP9gentity_s_80:
	mov dword [ebp-0xb34], 0x0
	xor esi, esi
	mov edi, level
	jmp _Z14SendScoreboardP9gentity_s_20
_Z14SendScoreboardP9gentity_s_60:
	mov [esp], ecx
	call _Z16SV_GetClientPingi
	mov edx, eax
_Z14SendScoreboardP9gentity_s_70:
	mov eax, [ebx+0x2f84]
	mov [esp+0x24], eax
	mov eax, [ebx+0x2f80]
	mov [esp+0x20], eax
	mov eax, [ebx+0x2f70]
	mov [esp+0x1c], eax
	mov eax, [ebx+0x2f7c]
	mov [esp+0x18], eax
	mov [esp+0x14], edx
	mov eax, [ebx+0x2f78]
	mov [esp+0x10], eax
	mov edx, [ebp-0xb2c]
	mov eax, [edx]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring__i_i_i_i_i_i_i
	mov dword [esp+0x4], 0x598
	lea eax, [ebp-0xb28]
	mov [esp], eax
	call _Z11Com_sprintfPciPKcz
	test eax, eax
	js _Z14SendScoreboardP9gentity_s_30
	lea ebx, [esi+eax]
	cmp ebx, 0x578
	jg _Z14SendScoreboardP9gentity_s_40
	mov eax, 0x578
	sub eax, esi
	mov [esp+0x8], eax
	lea edx, [ebp-0xb28]
	mov [esp+0x4], edx
	lea eax, [ebp-0x590]
	add eax, esi
	mov [esp], eax
	call _Z10I_strncpyzPcPKci
	add dword [ebp-0xb34], 0x1
	add edi, 0x4
	mov eax, [ebp-0xb34]
	cmp [ebp-0xb30], eax
	jz _Z14SendScoreboardP9gentity_s_50
	mov esi, ebx
_Z14SendScoreboardP9gentity_s_20:
	lea edx, [edi+0x220]
	mov [ebp-0xb2c], edx
	mov ecx, [edi+0x220]
	lea eax, [ecx+ecx*2]
	mov edx, eax
	shl edx, 0x6
	add eax, edx
	mov edx, eax
	shl edx, 0x6
	add eax, edx
	lea ebx, [eax+ecx]
	mov eax, level
	add ebx, [eax]
	cmp dword [ebx+0x2f8c], 0x1
	jnz _Z14SendScoreboardP9gentity_s_60
	mov edx, 0xffffffff
	jmp _Z14SendScoreboardP9gentity_s_70
_Z14SendScoreboardP9gentity_s_10:
	mov eax, [ebp-0xb30]
	test eax, eax
	jg _Z14SendScoreboardP9gentity_s_80
	mov dword [ebp-0xb34], 0x0
_Z14SendScoreboardP9gentity_s_110:
	mov esi, g_gametype
	mov eax, [esi]
	mov eax, [eax+0xc]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_scr_s_scorelimit
	mov dword [esp+0x4], 0x598
	lea eax, [ebp-0xb28]
	mov [esp], eax
	call _Z11Com_sprintfPciPKcz
	lea edx, [ebp-0xb28]
	mov [esp], edx
	call _Z11Dvar_GetIntPKc
	mov ebx, eax
	test eax, eax
	jz _Z14SendScoreboardP9gentity_s_90
_Z14SendScoreboardP9gentity_s_120:
	lea eax, [ebp-0x590]
	mov [esp+0x20], eax
	mov [esp+0x1c], ebx
	mov esi, level
	mov eax, [esi+0x204]
	mov [esp+0x18], eax
	mov eax, [esi+0x200]
	mov [esp+0x14], eax
	mov edx, [ebp-0xb34]
	mov [esp+0x10], edx
	mov dword [esp+0xc], 0x62
	mov dword [esp+0x8], _cstring_c_i_i_i_is
	mov dword [esp+0x4], 0x598
	lea eax, [ebp-0xb28]
	mov [esp], eax
	call _Z11Com_sprintfPciPKcz
	test eax, eax
	js _Z14SendScoreboardP9gentity_s_100
	lea edx, [ebp-0xb28]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x1
	mov eax, g_entities
	sub [ebp+0x8], eax
	sar dword [ebp+0x8], 0x2
	imul eax, [ebp+0x8], 0x2c0685b5
	mov [esp], eax
	call _Z24SV_GameSendServerCommandi11svscmd_typePKc
	add esp, 0xb5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z14SendScoreboardP9gentity_s_50:
	mov edx, [ebp-0xb30]
	mov [ebp-0xb34], edx
	jmp _Z14SendScoreboardP9gentity_s_110
_Z14SendScoreboardP9gentity_s_90:
	mov eax, [esi]
	mov eax, [eax+0xc]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_scr_s_roundlimit
	mov dword [esp+0x4], 0x598
	lea eax, [ebp-0xb28]
	mov [esp], eax
	call _Z11Com_sprintfPciPKcz
	lea edx, [ebp-0xb28]
	mov [esp], edx
	call _Z11Dvar_GetIntPKc
	mov ebx, eax
	jmp _Z14SendScoreboardP9gentity_s_120
_Z14SendScoreboardP9gentity_s_100:
	mov dword [esp+0x8], 0x598
	mov dword [esp+0x4], _cstring_scoreboard_messa
	mov dword [esp], 0xf
	call _Z14Com_PrintErroriPKcz
	lea edx, [ebp-0x590]
	mov [esp+0x1c], edx
	mov [esp+0x18], ebx
	mov eax, [esi+0x204]
	mov [esp+0x14], eax
	mov eax, [esi+0x200]
	mov [esp+0x10], eax
	mov eax, [ebp-0xb34]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x62
	mov dword [esp+0x4], _cstring_c_i_i_i_is
	mov dword [esp], 0x6
	call _Z11Com_DPrintfiPKcz
	add esp, 0xb5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z14SendScoreboardP9gentity_s_30:
	lea ebx, [eax+esi]
_Z14SendScoreboardP9gentity_s_40:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_scoreboard_messa1
	mov dword [esp], 0xf
	call _Z14Com_PrintErroriPKcz
	lea edx, [ebp-0x590]
	mov [esp+0xc], edx
	lea eax, [ebp-0xb28]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_ss
	mov dword [esp], 0x6
	call _Z11Com_DPrintfiPKcz
	jmp _Z14SendScoreboardP9gentity_s_110
	nop


;Cmd_SetViewpos_f(gentity_s*)
_Z16Cmd_SetViewpos_fP9gentity_s:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x45c
	mov ebx, [ebp+0x8]
	mov eax, g_cheats
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z16Cmd_SetViewpos_fP9gentity_s_10
	mov edx, sv_cmd_args
	mov eax, [edx]
	mov eax, [edx+eax*4+0x44]
	cmp eax, 0x3
	jle _Z16Cmd_SetViewpos_fP9gentity_s_20
	cmp eax, 0x6
	jle _Z16Cmd_SetViewpos_fP9gentity_s_30
_Z16Cmd_SetViewpos_fP9gentity_s_20:
	mov dword [esp+0x4], 0x65
	mov dword [esp], _cstring_c_game_usage_set
_Z16Cmd_SetViewpos_fP9gentity_s_40:
	call _Z2vaPKcz
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	sub ebx, g_entities
	sar ebx, 0x2
	imul eax, ebx, 0x2c0685b5
	mov [esp], eax
	call _Z24SV_GameSendServerCommandi11svscmd_typePKc
	add esp, 0x45c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z16Cmd_SetViewpos_fP9gentity_s_10:
	mov dword [esp+0x4], 0x65
	mov dword [esp], _cstring_c_game_cheatsnot
	jmp _Z16Cmd_SetViewpos_fP9gentity_s_40
_Z16Cmd_SetViewpos_fP9gentity_s_30:
	xor esi, esi
	lea edi, [ebp-0x430]
_Z16Cmd_SetViewpos_fP9gentity_s_50:
	add esi, 0x1
	mov dword [esp+0x8], 0x400
	mov [esp+0x4], edi
	mov [esp], esi
	call _Z17SV_Cmd_ArgvBufferiPci
	mov [esp], edi
	call atof
	fstp qword [ebp-0x450]
	cvtsd2ss xmm0, [ebp-0x450]
	movss [ebp+esi*4-0x28], xmm0
	cmp esi, 0x3
	jnz _Z16Cmd_SetViewpos_fP9gentity_s_50
	mov eax, [ebx+0x15c]
	movss xmm0, dword [ebp-0x1c]
	subss xmm0, [eax+0x118]
	movss [ebp-0x1c], xmm0
	xor eax, eax
	mov [ebp-0x30], eax
	mov [ebp-0x2c], eax
	mov [ebp-0x28], eax
	mov edx, sv_cmd_args
	mov eax, [edx]
	mov eax, [edx+eax*4+0x44]
	cmp eax, 0x5
	jz _Z16Cmd_SetViewpos_fP9gentity_s_60
	cmp eax, 0x6
	jz _Z16Cmd_SetViewpos_fP9gentity_s_70
_Z16Cmd_SetViewpos_fP9gentity_s_80:
	lea eax, [ebp-0x30]
	mov [esp+0x8], eax
	lea eax, [ebp-0x24]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z14TeleportPlayerP9gentity_sPfS1_
	add esp, 0x45c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z16Cmd_SetViewpos_fP9gentity_s_70:
	mov dword [esp+0x8], 0x400
	mov [esp+0x4], edi
	mov dword [esp], 0x5
	call _Z17SV_Cmd_ArgvBufferiPci
	mov [esp], edi
	call atof
	fstp qword [ebp-0x448]
	cvtsd2ss xmm0, [ebp-0x448]
	movss [ebp-0x30], xmm0
_Z16Cmd_SetViewpos_fP9gentity_s_60:
	mov dword [esp+0x8], 0x400
	mov [esp+0x4], edi
	mov dword [esp], 0x4
	call _Z17SV_Cmd_ArgvBufferiPci
	mov [esp], edi
	call atof
	fstp qword [ebp-0x440]
	cvtsd2ss xmm0, [ebp-0x440]
	movss [ebp-0x2c], xmm0
	jmp _Z16Cmd_SetViewpos_fP9gentity_s_80


;Cmd_FollowCycle_f(gentity_s*, int)
_Z17Cmd_FollowCycle_fP9gentity_si:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2fec
	mov edi, [ebp+0xc]
	cmp edi, 0x1
	jz _Z17Cmd_FollowCycle_fP9gentity_si_10
	cmp edi, 0xffffffff
	jz _Z17Cmd_FollowCycle_fP9gentity_si_10
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_cmd_followcycle_
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
_Z17Cmd_FollowCycle_fP9gentity_si_10:
	mov eax, [ebp+0x8]
	mov edx, [eax+0x15c]
	cmp dword [edx+0x2f64], 0x2
	jz _Z17Cmd_FollowCycle_fP9gentity_si_20
_Z17Cmd_FollowCycle_fP9gentity_si_30:
	xor eax, eax
_Z17Cmd_FollowCycle_fP9gentity_si_90:
	add esp, 0x2fec
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z17Cmd_FollowCycle_fP9gentity_si_20:
	mov ebx, [edx+0x2f68]
	test ebx, ebx
	jns _Z17Cmd_FollowCycle_fP9gentity_si_30
	mov esi, [edx+0x3074]
	test esi, esi
	mov eax, 0x0
	cmovs esi, eax
	mov ebx, esi
	jmp _Z17Cmd_FollowCycle_fP9gentity_si_40
_Z17Cmd_FollowCycle_fP9gentity_si_60:
	xor ebx, ebx
_Z17Cmd_FollowCycle_fP9gentity_si_70:
	lea eax, [ebp-0x7c]
	mov [esp+0xc], eax
	lea eax, [ebp-0x2fe0]
	mov [esp+0x8], eax
	lea eax, [edx+0x2f74]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z24SV_GetArchivedClientInfoiPiP13playerState_sP13clientState_s
	test eax, eax
	jnz _Z17Cmd_FollowCycle_fP9gentity_si_50
_Z17Cmd_FollowCycle_fP9gentity_si_80:
	cmp esi, ebx
	jz _Z17Cmd_FollowCycle_fP9gentity_si_30
	mov eax, [ebp+0x8]
	mov edx, [eax+0x15c]
_Z17Cmd_FollowCycle_fP9gentity_si_40:
	add ebx, edi
	mov eax, level
	mov eax, [eax+0x1e4]
	cmp ebx, eax
	jge _Z17Cmd_FollowCycle_fP9gentity_si_60
	sub eax, 0x1
	cmp ebx, 0xffffffff
	cmovle ebx, eax
	jmp _Z17Cmd_FollowCycle_fP9gentity_si_70
_Z17Cmd_FollowCycle_fP9gentity_si_50:
	mov eax, [ebp-0x78]
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov eax, [edx+0x15c]
	mov [esp], eax
	call _Z23G_ClientCanSpectateTeamP9gclient_s6team_t
	test eax, eax
	jz _Z17Cmd_FollowCycle_fP9gentity_si_80
	mov edx, [ebp+0x8]
	mov eax, [edx+0x15c]
	mov [eax+0x3074], ebx
	mov eax, [edx+0x15c]
	mov dword [eax+0x2f64], 0x2
	mov eax, 0x1
	jmp _Z17Cmd_FollowCycle_fP9gentity_si_90
	nop
	add [eax], al


;Cmd_MenuResponse_f(gentity_s*)
_Z18Cmd_MenuResponse_fP9gentity_s:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0xc10
	mov edx, sv_cmd_args
	mov eax, [edx]
	cmp dword [edx+eax*4+0x44], 0x4
	jz _Z18Cmd_MenuResponse_fP9gentity_s_10
	mov byte [ebp-0x808], 0x0
	mov dword [ebp-0xc08], 0x646162
	lea esi, [ebp-0x808]
	lea ebx, [ebp-0xc08]
_Z18Cmd_MenuResponse_fP9gentity_s_40:
	mov [esp], ebx
	call _Z13Scr_AddStringPKc
	mov [esp], esi
	call _Z13Scr_AddStringPKc
	mov dword [esp+0x8], 0x2
	mov eax, scr_const
	movzx eax, word [eax+0x134]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z10Scr_NotifyP9gentity_stj
_Z18Cmd_MenuResponse_fP9gentity_s_20:
	add esp, 0xc10
	pop ebx
	pop esi
	pop ebp
	ret
_Z18Cmd_MenuResponse_fP9gentity_s_10:
	mov dword [esp+0x8], 0x400
	lea ebx, [ebp-0x408]
	mov [esp+0x4], ebx
	mov dword [esp], 0x1
	call _Z17SV_Cmd_ArgvBufferiPci
	mov [esp], ebx
	call atoi
	mov ebx, eax
	mov dword [esp], _cstring_sv_serverid
	call _Z11Dvar_GetIntPKc
	cmp ebx, eax
	jnz _Z18Cmd_MenuResponse_fP9gentity_s_20
	mov dword [esp+0x8], 0x400
	lea esi, [ebp-0x808]
	mov [esp+0x4], esi
	mov dword [esp], 0x2
	call _Z17SV_Cmd_ArgvBufferiPci
	mov [esp], esi
	call atoi
	cmp eax, 0x1f
	jbe _Z18Cmd_MenuResponse_fP9gentity_s_30
_Z18Cmd_MenuResponse_fP9gentity_s_50:
	mov dword [esp+0x8], 0x400
	lea ebx, [ebp-0xc08]
	mov [esp+0x4], ebx
	mov dword [esp], 0x3
	call _Z17SV_Cmd_ArgvBufferiPci
	jmp _Z18Cmd_MenuResponse_fP9gentity_s_40
_Z18Cmd_MenuResponse_fP9gentity_s_30:
	mov dword [esp+0x8], 0x400
	mov [esp+0x4], esi
	add eax, 0x7b2
	mov [esp], eax
	call _Z18SV_GetConfigstringiPci
	jmp _Z18Cmd_MenuResponse_fP9gentity_s_50
	nop


;G_Say(gentity_s*, gentity_s*, int, char const*)
_Z5G_SayP9gentity_sS0_iPKc:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x11c
	mov edi, [ebp+0x10]
	mov esi, [ebp+0x14]
	cmp edi, 0x1
	jz _Z5G_SayP9gentity_sS0_iPKc_10
	mov edx, [ebp+0x8]
	mov eax, [edx+0x15c]
_Z5G_SayP9gentity_sS0_iPKc_110:
	mov dword [esp+0x8], 0x40
	add eax, 0x3048
	mov [esp+0x4], eax
	lea eax, [ebp-0x58]
	mov [esp], eax
	call _Z10I_strncpyzPcPKci
	lea edx, [ebp-0x58]
	mov [esp], edx
	call _Z10I_CleanStrPc
	cmp edi, 0x1
	jz _Z5G_SayP9gentity_sS0_iPKc_20
	cmp edi, 0x2
	jz _Z5G_SayP9gentity_sS0_iPKc_30
	mov eax, [ebp+0x8]
	mov ebx, [eax]
	mov [esp], ebx
	call _Z10SV_GetGuidi
	mov [esp+0x10], esi
	lea edx, [ebp-0x58]
	mov [esp+0xc], edx
	mov [esp+0x8], ebx
	mov [esp+0x4], eax
	mov dword [esp], _cstring_saysdss
	call _Z11G_LogPrintfPKcz
	mov dword [ebp-0xfc], _cstring_null
	mov dword [ebp-0x100], 0x37
_Z5G_SayP9gentity_sS0_iPKc_90:
	mov dword [esp+0x8], 0x96
	mov [esp+0x4], esi
	lea eax, [ebp-0xee]
	mov [esp], eax
	call _Z10I_strncpyzPcPKci
	mov ebx, [ebp+0xc]
	test ebx, ebx
	jz _Z5G_SayP9gentity_sS0_iPKc_40
	lea edx, [ebp-0xee]
	mov [esp+0xc], edx
	lea eax, [ebp-0x58]
	mov [esp+0x8], eax
	mov edx, [ebp-0xfc]
	mov [esp+0x4], edx
	mov eax, [ebp-0x100]
	mov [esp], eax
	mov ecx, edi
	mov edx, [ebp+0xc]
	mov eax, [ebp+0x8]
	call _Z7G_SayToP9gentity_sS0_iiPKcS2_S2_
_Z5G_SayP9gentity_sS0_iPKc_60:
	add esp, 0x11c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z5G_SayP9gentity_sS0_iPKc_40:
	mov eax, g_dedicated
	mov eax, [eax]
	mov ecx, [eax+0xc]
	test ecx, ecx
	jnz _Z5G_SayP9gentity_sS0_iPKc_50
_Z5G_SayP9gentity_sS0_iPKc_120:
	mov eax, level
	mov edx, [eax+0x1e4]
	test edx, edx
	jle _Z5G_SayP9gentity_sS0_iPKc_60
	xor ebx, ebx
	mov [ebp-0x104], eax
	xor esi, esi
_Z5G_SayP9gentity_sS0_iPKc_70:
	lea edx, [esi+ebx]
	add edx, g_entities
	lea eax, [ebp-0xee]
	mov [esp+0xc], eax
	lea eax, [ebp-0x58]
	mov [esp+0x8], eax
	mov eax, [ebp-0xfc]
	mov [esp+0x4], eax
	mov eax, [ebp-0x100]
	mov [esp], eax
	mov ecx, edi
	mov eax, [ebp+0x8]
	call _Z7G_SayToP9gentity_sS0_iiPKcS2_S2_
	add ebx, 0x1
	add esi, 0x273
	mov edx, [ebp-0x104]
	cmp ebx, [edx+0x1e4]
	jl _Z5G_SayP9gentity_sS0_iPKc_70
	add esp, 0x11c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z5G_SayP9gentity_sS0_iPKc_20:
	mov eax, [ebp+0x8]
	mov ebx, [eax]
	mov [esp], ebx
	call _Z10SV_GetGuidi
	mov [esp+0x10], esi
	lea edx, [ebp-0x58]
	mov [esp+0xc], edx
	mov [esp+0x8], ebx
	mov [esp+0x4], eax
	mov dword [esp], _cstring_sayteamsdss
	call _Z11G_LogPrintfPKcz
	mov edx, [ebp+0x8]
	mov eax, [edx+0x15c]
	cmp dword [eax+0x3010], 0x1
	jz _Z5G_SayP9gentity_sS0_iPKc_80
	mov dword [esp], _cstring_g_teamname_allie
	call _Z14Dvar_GetStringPKc
	mov [ebp-0xfc], eax
	mov dword [ebp-0x100], 0x35
	jmp _Z5G_SayP9gentity_sS0_iPKc_90
_Z5G_SayP9gentity_sS0_iPKc_10:
	mov edx, [ebp+0x8]
	mov eax, [edx+0x15c]
	mov edx, [eax+0x3010]
	cmp edx, 0x1
	jz _Z5G_SayP9gentity_sS0_iPKc_100
	cmp edx, 0x2
	jz _Z5G_SayP9gentity_sS0_iPKc_100
	xor di, di
	jmp _Z5G_SayP9gentity_sS0_iPKc_110
_Z5G_SayP9gentity_sS0_iPKc_30:
	mov dword [ebp-0xfc], _cstring_null
	mov dword [ebp-0x100], 0x33
	jmp _Z5G_SayP9gentity_sS0_iPKc_90
_Z5G_SayP9gentity_sS0_iPKc_100:
	mov edi, 0x1
	jmp _Z5G_SayP9gentity_sS0_iPKc_110
_Z5G_SayP9gentity_sS0_iPKc_50:
	lea edx, [ebp-0xee]
	mov [esp+0xc], edx
	lea eax, [ebp-0x58]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_ss1
	mov dword [esp], 0xf
	call _Z10Com_PrintfiPKcz
	jmp _Z5G_SayP9gentity_sS0_iPKc_120
_Z5G_SayP9gentity_sS0_iPKc_80:
	mov dword [esp], _cstring_g_teamname_axis
	call _Z14Dvar_GetStringPKc
	mov [ebp-0xfc], eax
	mov dword [ebp-0x100], 0x35
	jmp _Z5G_SayP9gentity_sS0_iPKc_90


;CheatsOk(gentity_s*)
_Z8CheatsOkP9gentity_s:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov eax, g_cheats
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z8CheatsOkP9gentity_s_10
	mov edx, [ebx+0x1a0]
	test edx, edx
	jle _Z8CheatsOkP9gentity_s_20
	mov eax, 0x1
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z8CheatsOkP9gentity_s_10:
	mov dword [esp+0x4], 0x65
	mov dword [esp], _cstring_c_game_cheatsnot
_Z8CheatsOkP9gentity_s_30:
	call _Z2vaPKcz
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	sub ebx, g_entities
	sar ebx, 0x2
	imul eax, ebx, 0x2c0685b5
	mov [esp], eax
	call _Z24SV_GameSendServerCommandi11svscmd_typePKc
	xor eax, eax
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z8CheatsOkP9gentity_s_20:
	mov dword [esp+0x4], 0x65
	mov dword [esp], _cstring_c_game_mustbeali
	jmp _Z8CheatsOkP9gentity_s_30


;G_setfog(char const*)
_Z8G_setfogPKc:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x50
	mov ebx, [ebp+0x8]
	mov [esp+0x4], ebx
	mov dword [esp], 0x9
	call _Z18SV_SetConfigstringiPKc
	mov esi, level
	mov eax, 0x7f7fffff
	mov [esi+0x15c4], eax
	mov [esi+0x15c8], eax
	lea eax, [ebp-0x18]
	mov [esp+0x20], eax
	lea edx, [ebp-0x24]
	lea eax, [ebp-0x1c]
	mov [esp+0x1c], eax
	lea eax, [ebp-0x20]
	mov [esp+0x18], eax
	mov [esp+0x14], edx
	lea eax, [ebp-0x14]
	mov [esp+0x10], eax
	lea eax, [ebp-0x10]
	mov [esp+0xc], eax
	lea eax, [ebp-0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_f_f_f_f_f_f_i
	mov [esp], ebx
	call sscanf
	cmp eax, 0x7
	jz _Z8G_setfogPKc_10
_Z8G_setfogPKc_20:
	add esp, 0x50
	pop ebx
	pop esi
	pop ebp
	ret
_Z8G_setfogPKc_10:
	movss xmm0, dword [ebp-0x14]
	ucomiss xmm0, [_float_1_00000000]
	jb _Z8G_setfogPKc_20
	movss xmm1, dword [ebp-0xc]
	movss xmm0, dword [ebp-0x10]
	subss xmm0, xmm1
	addss xmm0, xmm1
	movss [esi+0x15c4], xmm0
	mulss xmm0, xmm0
	movss [esi+0x15c8], xmm0
	add esp, 0x50
	pop ebx
	pop esi
	pop ebp
	ret


;Initialized global or static variables of g_cmds_mp:
SECTION .data


;Initialized constant data of g_cmds_mp:
SECTION .rdata


;Zero initialized global or static variables of g_cmds_mp:
SECTION .bss
_ZZ10ConcatArgsiE4line: resb 0x400


;All cstrings:
SECTION .rdata
_cstring_null:		db 0
_cstring_sgame_dead:		db 015h,"%s(",014h,"GAME_DEAD",015h,")",0
_cstring_7:		db "^7",0
_cstring_sss_:		db "%s%s%s: ",0
_cstring_c_sccs:		db "%c ",22h,015h,"%s%c%c%s",22h,0
_cstring_8:		db "^8",0
_cstring_9:		db "^9",0
_cstring_s:		db 015h,"%s",0
_cstring_ssss_:		db "%s(",014h,"%s",015h,")%s%s: ",0
_cstring_sss_1:		db "%s[%s]%s: ",0
_cstring_game_spectator:		db 015h,"(",014h,"GAME_SPECTATOR",015h,")",0
_cstring_all:		db "all",0
_cstring_allammo:		db "allammo",0
_cstring_health:		db "health",0
_cstring_weapons:		db "weapons",0
_cstring_ammo:		db "ammo",0
_cstring_c_game_votecast:		db "%c ",22h,"GAME_VOTECAST",22h,0
_cstring_i:		db "%i",0
_cstring_c_game_novoteinp:		db "%c ",22h,"GAME_NOVOTEINPROGRESS",22h,0
_cstring_yes:		db "yes",0
_cstring_c_game_votealrea:		db "%c ",22h,"GAME_VOTEALREADYCAST",22h,0
_cstring_c_game_nospectat:		db "%c ",22h,"GAME_NOSPECTATORVOTE",22h,0
_cstring_no:		db "no",0
_cstring_say:		db "say",0
_cstring_say_team:		db "say_team",0
_cstring_score:		db "score",0
_cstring_mr:		db "mr",0
_cstring_give:		db "give",0
_cstring_take:		db "take",0
_cstring_god:		db "god",0
_cstring_game_godmode_on:		db "GAME_GODMODE_ON",0
_cstring_game_godmode_off:		db "GAME_GODMODE_OFF",0
_cstring_c_s:		db "%c ",22h,"%s",22h,0
_cstring_demigod:		db "demigod",0
_cstring_game_demi_godmod:		db "GAME_DEMI_GODMODE_ON",0
_cstring_game_demi_godmod1:		db "GAME_DEMI_GODMODE_OFF",0
_cstring_notarget:		db "notarget",0
_cstring_game_notargetoff:		db "GAME_NOTARGETOFF",0
_cstring_game_notargeton:		db "GAME_NOTARGETON",0
_cstring_noclip:		db "noclip",0
_cstring_game_noclipoff:		db "GAME_NOCLIPOFF",0
_cstring_game_noclipon:		db "GAME_NOCLIPON",0
_cstring_ufo:		db "ufo",0
_cstring_game_ufooff:		db "GAME_UFOOFF",0
_cstring_game_ufoon:		db "GAME_UFOON",0
_cstring_kill:		db "kill",0
_cstring_follownext:		db "follownext",0
_cstring_followprev:		db "followprev",0
_cstring_where:		db "where",0
_cstring_c_s1:		db "%c ",22h,015h,"%s",0ah,22h,0
_cstring_callvote:		db "callvote",0
_cstring_vote:		db "vote",0
_cstring_setviewpos:		db "setviewpos",0
_cstring_entitycount:		db "entitycount",0
_cstring_entity_count__i:		db "entity count = %i",0ah,0
_cstring_printentities:		db "printentities",0
_cstring_c_game_unknowncl:		db "%c ",22h,"GAME_UNKNOWNCLIENTCOMMAND",015h,"%s",22h,0
_cstring_c_game_invalidvo:		db "%c ",22h,"GAME_INVALIDVOTESTRING",22h,0
_cstring_c_game_votingnot:		db "%c ",22h,"GAME_VOTINGNOTENABLED",22h,0
_cstring_c_game_votealrea1:		db "%c ",22h,"GAME_VOTEALREADYINPROGRESS",22h,0
_cstring_c_game_maxvotesc:		db "%c ",22h,"GAME_MAXVOTESCALLED",22h,0
_cstring_c_game_votingnot1:		db "%c ",22h,"GAME_VOTINGNOTENOUGHPLAYERS",22h,0
_cstring_map_restart:		db "map_restart",0
_cstring_s1:		db "%s",0ah,0
_cstring_typemap:		db "typemap",0
_cstring_current_map_name:		db "Current map name",0
_cstring_mapname:		db "mapname",0
_cstring_c_game_typemap_n:		db "%c ",22h,"GAME_TYPEMAP_NOCHANGE",22h,0
_cstring_c_game_nospectat1:		db "%c ",22h,"GAME_NOSPECTATORCALLVOTE",22h,0
_cstring_c_game_invalidga:		db "%c ",22h,"GAME_INVALIDGAMETYPE",22h,0
_cstring_g_gametype:		db "g_gametype",0
_cstring_s_s_map_restart:		db "%s %s; map_restart",0
_cstring_game_vote_gamety:		db "GAME_VOTE_GAMETYPE",014h,"%s",0
_cstring_c_game_calledavo:		db "%c ",22h,"GAME_CALLEDAVOTE",015h,"%s",22h,0
_cstring_sv_serverid:		db "sv_serverId",0
_cstring_i_i:		db "%i %i",0
_cstring_fast_restart:		db "fast_restart",0
_cstring_game_vote_mapres:		db "GAME_VOTE_MAPRESTART",0
_cstring_map_rotate:		db "map_rotate",0
_cstring_map:		db "map",0
_cstring_kick:		db "kick",0
_cstring_clientkick:		db "clientkick",0
_cstring_tempbanuser:		db "tempBanUser",0
_cstring_tempbanclient:		db "tempBanClient",0
_cstring_c_game_votecomma:		db "%c ",22h,"GAME_VOTECOMMANDSARE",015h," map_restart, map_rotate, map <mapname>, g_gametype <typename>, typemap <typename> <mapname>, kick <player>, clientkick <clientnum>, tempBanUser <player>, tempBanClient <clientNum>",22h,0
_cstring_g_gametype_s_map:		db "g_gametype %s; map %s",0
_cstring_game_vote_gamety1:		db "GAME_VOTE_GAMETYPE",014h,"%s",015h," - ",014h,"GAME_VOTE_MAP",015h,"%s",0
_cstring_s2:		db "%s",0
_cstring_game_vote_nextma:		db "GAME_VOTE_NEXTMAP",0
_cstring_map_s:		db "map %s",0
_cstring_game_vote_maps:		db "GAME_VOTE_MAP",015h,"%s",0
_cstring_g_gametype_s_map1:		db "g_gametype %s; map_restart",0
_cstring_c_the_server_doe:		db "%c ",22h,015h,"the server doesn",27h,"t have that map",22h,0
_cstring_s_s:		db "%s %s",0
_cstring_c_game_clientnot:		db "%c ",22h,"GAME_CLIENTNOTONSERVER",22h,0
_cstring_0:		db "0",0
_cstring_s_d:		db "%s ",22h,"%d",22h,0
_cstring_game_vote_kickis:		db "GAME_VOTE_KICK",015h,"(%i)%s",0
_cstring__i_i_i_i_i_i_i:		db " %i %i %i %i %i %i %i",0
_cstring_scr_s_scorelimit:		db "scr_%s_scorelimit",0
_cstring_c_i_i_i_is:		db "%c %i %i %i %i%s",0
_cstring_scr_s_roundlimit:		db "scr_%s_roundlimit",0
_cstring_scoreboard_messa:		db "Scoreboard message too large > %i.  Message not sent.",0ah,0
_cstring_scoreboard_messa1:		db "Scoreboard message too large: %i",0ah,0
_cstring_ss:		db "%s",0ah,"%s",0ah,0
_cstring_c_game_usage_set:		db "%c ",22h,"GAME_USAGE",015h,": setviewpos x y z yaw",22h,0
_cstring_c_game_cheatsnot:		db "%c ",22h,"GAME_CHEATSNOTENABLED",22h,0
_cstring_cmd_followcycle_:		db 015h,"Cmd_FollowCycle_f: bad dir %i",0
_cstring_saysdss:		db "say;%s;%d;%s;%s",0ah,0
_cstring_sayteamsdss:		db "sayteam;%s;%d;%s;%s",0ah,0
_cstring_g_teamname_allie:		db "g_TeamName_Allies",0
_cstring_ss1:		db "%s%s",0ah,0
_cstring_g_teamname_axis:		db "g_TeamName_Axis",0
_cstring_c_game_mustbeali:		db "%c ",22h,"GAME_MUSTBEALIVECOMMAND",22h,0
_cstring_f_f_f_f_f_f_i:		db "%f %f %f %f %f %f %i",0



;All constant floats and doubles:
SECTION .rdata
_float_15_00000000:		dd 0x41700000	; 15
_float__40_00000000:		dd 0xc2200000	; -40
_float_10_00000000:		dd 0x41200000	; 10
_float_1_00000000:		dd 0x3f800000	; 1

