;Edited: Inverted registerDvars in G_InitGame

;Imports of g_main_mp:
	extern Cvar_RegisterBool
	extern Cvar_RegisterString
	extern Cvar_RegisterInt
	extern g_dedicatedEnumNames
	extern Cvar_RegisterEnum
	extern Cvar_RegisterFloat
	extern Cvar_RegisterColor
	extern Helicopter_RegisterDvars
	extern G_VehRegisterDvars
	extern G_RegisterMissileDvars
	extern G_RegisterMissileDebugDvars
	extern Com_ServerDObjCreate
	extern Com_GetServerDObj
	extern Com_SafeServerDObjFree
	extern G_RunClient
	extern G_FreeEntity
	extern SV_UnlinkEntity
	extern G_RunItem
	extern G_GeneralLink
	extern G_RunMover
	extern G_RunMissile
	extern Com_Error
	extern G_RunCorpse
	extern G_GetEntityTypeName
	extern va
	extern colorWhiteFaded
	extern CL_AddDebugString
	extern BG_GetWeaponDef
	extern colorRedFaded
	extern Com_Printf
	extern Swap_Init
	extern _ZN9EntHandle4InitEv
	extern memset
	extern ms_srand
	extern Rand_Init
	extern GScr_LoadConsts
	extern G_SetupWeaponDef
	extern Cvar_VariableBooleanValue
	extern SV_XModelGet
	extern G_OpenLogFile
	extern Com_PrintWarning
	extern Mantle_CreateAnims
	extern bgs
	extern SV_GetConfigstring
	extern Info_SetValueForKey
	extern SV_SetConfigstring
	extern SV_LocateGameData
	extern G_ParseHitLocDmgTable
	extern BG_LoadPenetrationDepthTable
	extern G_VehiclesInit
	extern G_InitTurrets
	extern G_SpawnEntitiesFromString
	extern G_VehiclesSetupSpawnedEnts
	extern G_setfog
	extern G_InitObjectives
	extern Missile_InitAttractors
	extern Scr_FreeEntityList
	extern Scr_InitSystem
	extern Scr_SetLoading
	extern Scr_AllocGameVariable
	extern G_LoadStructs
	extern Scr_LoadGameType
	extern Scr_LoadLevel
	extern Scr_StartupGameType
	extern g_scr_data
	extern SaveRegisteredWeapons
	extern SaveRegisteredItems
	extern SV_GetServerinfo
	extern Com_FindSoundAlias
	extern G_AnimScriptSound
	extern GScr_LoadScripts
	extern BG_LoadAnim
	extern XAnimCreateTree
	extern Cvar_SetCheatState
	extern G_TouchTriggers
	extern SV_DObjInitServerTime
	extern Com_Memcpy
	extern Scr_RunCurrentThreads
	extern Scr_AddString
	extern scr_const
	extern Scr_Notify
	extern PM_IsSprinting
	extern Scr_IncTime
	extern SV_ResetSkeletonCache
	extern HudElem_UpdateClient
	extern ClientEndFrame
	extern CheckTeamStatus
	extern SV_DObjDisplayAnim
	extern Scr_AddEntity
	extern G_DObjUpdateServerTime
	extern SendScoreboard
	extern SL_ConvertToString
	extern Cvar_SetBool
	extern vsnprintf
	extern Com_sprintf
	extern FS_Write
	extern vec3_origin
	extern SV_SightTrace
	extern qsort
	extern _ZN9EntHandle6setEntEP9gentity_s
	extern HudElem_DestroyAll
	extern Scr_IsSystemActive
	extern Scr_ShutdownSystem
	extern Z_VirtualFreeInternal
	extern _ZN9EntHandle8ShutdownEv
	extern FS_FCloseFile
	extern Mantle_ShutdownAnims
	extern GScr_FreeScripts
	extern Scr_FreeScripts
	extern XAnimFreeTree
	extern Com_FreeWeaponInfoMemory
	extern Hunk_ClearToMarkLow
	extern SV_FreeClientScriptPers
	extern SV_SetupIgnoreEntParams
	extern SV_Trace
	extern Hunk_AllocLowInternal
	extern SV_TracePassed
	extern ceilf
	extern SV_GameSendServerCommand
	extern Cbuf_AddText
	extern Touch_Multi
	extern hurt_use
	extern hurt_touch
	extern Use_trigger_damage
	extern Pain_trigger_damage
	extern Die_trigger_damage
	extern Reached_ScriptMover
	extern G_ExplodeMissile
	extern Touch_Item_Auto
	extern G_TimedObjectThink
	extern player_die
	extern G_PlayerController
	extern BodyEnd
	extern turret_think_init
	extern turret_use
	extern turret_controller
	extern turret_think
	extern DroppedItemClearOwner
	extern FinishSpawningItem
	extern use_trigger_use
	extern G_VehEntHandler_Think
	extern G_VehEntHandler_Touch
	extern G_VehEntHandler_Use
	extern G_VehEntHandler_Pain
	extern G_VehEntHandler_Die
	extern G_VehEntHandler_Controller
	extern Helicopter_Think
	extern Helicopter_Pain
	extern Helicopter_Die
	extern Helicopter_Controller
	extern G_LogPrintf
	extern G_SafeServerDObjFree
	extern G_RegisterCvars
	extern G_CloseLogFile
	extern level
	extern G_InitSomeVariables
	extern G_RunFrameForEntity

;Exports of g_main_mp:
	global g_clients
	global g_entinfoNames
	global G_CreateDObj
	global G_GetDObj
	global _Z14G_SafeDObjFreeii
	global SortRanks
	global ShowEntityInfo
	global G_InitGame
	global G_RunFrame
	global G_SightTrace
	global CalculateRanks
	global G_ShutdownGame
	global G_AddDebugString
	global G_GetClientScore
	global G_LocationalTrace
	global Hunk_AllocXAnimServer
	global G_TraceCapsuleComplete
	global G_ExitAfterConnectPaths
	global G_LocationalTracePassed
	global G_LocationalTraceAllowChildren
	global CheckVote
	global g_compassShowEnemies
	global bullet_penetrationEnabled
	global g_debugLocDamage
	global g_entities
	global g_dropForwardSpeed
	global g_dropHorzSpeedRand
	global g_dropUpSpeedBase
	global g_dropUpSpeedRand
	global g_maxDroppedWeapons
	global pickupPrints
	global g_minGrenadeDamageSpeed
	global g_banIPs
	global g_dedicated
	global g_antilag
	global melee_debug
	global g_useholdspawndelay
	global g_useholdtime
	global player_MGUseRadius
	global player_throwbackInnerRadius
	global player_throwbackOuterRadius
	global g_NoScriptSpam
	global g_fogColorReadOnly
	global g_fogHalfDistReadOnly
	global g_fogStartDistReadOnly
	global g_maxclients
	global level_bgs
	global g_debugDamage
	global radius_damage_debug
	global g_allowVote
	global g_cheats
	global g_deadChat
	global g_oldVoting
	global g_gravity
	global g_motd
	global g_clonePlayerMaxVelocity
	global g_knockback
	global g_voiceChatTalkingDuration
	global g_inactivity
	global g_mantleBlockTimeBuffer
	global g_speed
	global g_synchronousClients
	global g_ScoresColor_Allies
	global g_ScoresColor_Axis
	global g_ScoresColor_EnemyTeam
	global g_ScoresColor_Free
	global g_ScoresColor_MyTeam
	global g_ScoresColor_Spectator
	global g_TeamColor_Allies
	global g_TeamColor_Axis
	global g_TeamColor_EnemyTeam
	global g_TeamColor_Free
	global g_TeamColor_MyTeam
	global g_TeamColor_Spectator
	global g_TeamIcon_Allies
	global g_TeamIcon_Axis
	global g_TeamIcon_Free
	global g_TeamIcon_Spectator
	global g_TeamName_Allies
	global g_TeamName_Axis
	global g_dumpAnims
	global g_entinfo
	global g_friendlyNameDist
	global g_friendlyfireDist
	global g_listEntity
	global g_log
	global g_logSync
	global g_password
	global g_redCrosshairs
	global g_voteAbstainWeight
	global voice_deadChat
	global voice_global
	global voice_localEcho


SECTION .text


;G_CreateDObj(DObjModel_s*, unsigned short, XAnimTree_s*, int, int, clientInfo_t*)
G_CreateDObj:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	movzx edx, word [ebp+0xc]
	mov eax, [ebp+0x14]
	mov [esp+0xc], eax
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Com_ServerDObjCreate
	leave
	ret
	nop


;G_GetDObj(int, int)
G_GetDObj:
	push ebp
	mov ebp, esp
	pop ebp
	jmp Com_GetServerDObj
	nop


;G_SafeDObjFree(int, int)
_Z14G_SafeDObjFreeii:
	push ebp
	mov ebp, esp
	pop ebp
	jmp Com_SafeServerDObjFree
	nop


;SortRanks(void const*, void const*)
SortRanks:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov ebx, [level]
	mov eax, [ebp+0x8]
	mov ecx, [eax]
	lea eax, [ecx+ecx*2]
	mov edx, eax
	shl edx, 0x6
	add eax, edx
	mov edx, eax
	shl edx, 0x6
	add eax, edx
	add eax, ecx
	lea esi, [ebx+eax]
	mov eax, [ebp+0xc]
	mov ecx, [eax]
	lea eax, [ecx+ecx*2]
	mov edx, eax
	shl edx, 0x6
	add eax, edx
	mov edx, eax
	shl edx, 0x6
	add eax, edx
	add eax, ecx
	lea edx, [ebx+eax]
	cmp dword [esi+0x2f8c], 0x1
	jnz SortRanks_10
SortRanks_50:
	mov eax, 0x1
SortRanks_70:
	pop ebx
	pop esi
	pop ebp
	ret
SortRanks_10:
	cmp dword [edx+0x2f8c], 0x1
	jz SortRanks_20
	cmp dword [esi+0x3010], 0x3
	jz SortRanks_30
	cmp dword [edx+0x3010], 0x3
	jnz SortRanks_40
SortRanks_20:
	mov eax, 0xffffffff
	pop ebx
	pop esi
	pop ebp
	ret
SortRanks_40:
	mov eax, [edx+0x2f78]
	cmp [esi+0x2f78], eax
	jg SortRanks_20
	jl SortRanks_50
	mov eax, [edx+0x2f7c]
	cmp [esi+0x2f7c], eax
	jl SortRanks_20
	jg SortRanks_50
SortRanks_60:
	xor eax, eax
	pop ebx
	pop esi
	pop ebp
	ret
SortRanks_30:
	cmp dword [edx+0x3010], 0x3
	jnz SortRanks_50
	cmp esi, edx
	jb SortRanks_20
	jbe SortRanks_60
	mov eax, 0x1
	jmp SortRanks_70
	nop


;ShowEntityInfo()
ShowEntityInfo:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov eax, [g_entinfo]
	mov edx, [eax+0xc]
	test edx, edx
	jz ShowEntityInfo_10
	mov eax, [level+0xc]
	test eax, eax
	jle ShowEntityInfo_10
	mov esi, g_entities
	xor ebx, ebx
	mov edi, g_entities+0x4
ShowEntityInfo_40:
	mov eax, [edi]
	cmp eax, 0x10
	jg ShowEntityInfo_20
	cmp byte [edi+0xfc], 0x0
	jz ShowEntityInfo_20
	cmp byte [edi+0xf0], 0x0
	jz ShowEntityInfo_20
	cmp eax, 0x3
	jz ShowEntityInfo_30
	lea edx, [esi+0x13c]
	mov eax, [esi+0x13c]
	mov [ebp-0x24], eax
	mov eax, [edx+0x4]
	mov [ebp-0x20], eax
	mov eax, [edx+0x8]
	mov [ebp-0x1c], eax
	mov [esp], esi
	call G_GetEntityTypeName
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_i_s
	call va
	mov dword [esp+0x14], 0x1
	mov dword [esp+0x10], 0x1
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x3f000000
	mov eax, colorWhiteFaded
	mov [esp+0x4], eax
	lea edx, [ebp-0x24]
	mov [esp], edx
	call CL_AddDebugString
	movss xmm0, dword [ebp-0x1c]
	subss xmm0, [_float_10_00000000]
	movss [ebp-0x1c], xmm0
	mov eax, [edi+0x78]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_ground_i
	call va
	mov dword [esp+0x14], 0x1
	mov dword [esp+0x10], 0x1
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x3f000000
	mov ecx, colorWhiteFaded
	mov [esp+0x4], ecx
	lea eax, [ebp-0x24]
	mov [esp], eax
	call CL_AddDebugString
ShowEntityInfo_20:
	add ebx, 0x1
	add esi, 0x274
	add edi, 0x274
	cmp ebx, [level+0xc]
	jl ShowEntityInfo_40
ShowEntityInfo_10:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ShowEntityInfo_30:
	lea edx, [esi+0x13c]
	mov eax, [esi+0x13c]
	mov [ebp-0x30], eax
	mov eax, [edx+0x4]
	mov [ebp-0x2c], eax
	movss xmm0, dword [_float_2_00000000]
	addss xmm0, [edx+0x8]
	movss [ebp-0x28], xmm0
	mov [ebp-0x3c], esi
	mov dword [ebp-0x40], 0x2
	mov edx, esi
	mov eax, [edx+0x1bc]
	test eax, eax
	jnz ShowEntityInfo_50
ShowEntityInfo_60:
	add dword [ebp-0x3c], 0xc
	sub dword [ebp-0x40], 0x1
	jz ShowEntityInfo_20
	mov edx, [ebp-0x3c]
	mov eax, [edx+0x1bc]
	test eax, eax
	jz ShowEntityInfo_60
ShowEntityInfo_50:
	mov [esp], eax
	call BG_GetWeaponDef
	mov ecx, [ebp-0x3c]
	mov edx, [ecx+0x1b4]
	mov [esp+0xc], edx
	mov edx, [ecx+0x1b8]
	mov [esp+0x8], edx
	mov eax, [eax]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_s_i__i
	call va
	mov dword [esp+0x14], 0x1
	mov dword [esp+0x10], 0x1
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x3e99999a
	mov eax, colorRedFaded
	mov [esp+0x4], eax
	lea eax, [ebp-0x30]
	mov [esp], eax
	call CL_AddDebugString
	movss xmm0, dword [ebp-0x28]
	subss xmm0, [_float_4_00000000]
	movss [ebp-0x28], xmm0
	jmp ShowEntityInfo_60


;G_InitGame(int, int, int, int, int)
G_InitGame:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x82c
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov dword [esp+0x4], _cstring__game_initializa
	mov dword [esp], 0xf
	call Com_Printf
	mov dword [esp+0x8], _cstring_call_of_duty_4
	mov dword [esp+0x4], _cstring_gamename_s
	mov dword [esp], 0xf
	call Com_Printf
	mov dword [esp+0x8], _cstring_feb_12_2009
	mov dword [esp+0x4], _cstring_gamedate_s
	mov dword [esp], 0xf
	call Com_Printf
	call Swap_Init
	call _ZN9EntHandle4InitEv
	mov dword [esp+0x8], 0x2e6c
	mov dword [esp+0x4], 0x0
	mov dword [esp], level
	call memset
	mov dword [level+0x1c], 0x1
	mov [level+0x1ec], ebx
	mov [level+0x1f8], ebx
	mov dword [level+0x2df0], 0xffffffff
	mov dword [level+0x2e4c], 0x18
	mov [esp], esi
	call ms_srand
	mov [esp], esi
	call Rand_Init
	call GScr_LoadConsts
	call G_SetupWeaponDef
	mov eax, [ebp+0x10]
	test eax, eax
	jz G_InitGame_10
	mov eax, [ebp+0x14]
	test eax, eax
	jnz G_InitGame_10		;Inverted registerDvars - Now it is like in BlackOps
G_InitGame_110:
	mov dword [esp], _cstring_sv_cheats
	call Cvar_VariableBooleanValue
	test al, al
	jnz G_InitGame_20
	mov eax, [ebp+0x10]
	test eax, eax
	jz G_InitGame_30
G_InitGame_20:
	mov eax, SV_XModelGet
	mov [level_bgs+0x999ec], eax
	mov dword [level_bgs+0x999f0], G_CreateDObj
	mov dword [level_bgs+0x999f4], 0x0
	mov dword [level_bgs+0x999f8], G_GetDObj
	mov dword [level_bgs+0x999fc], G_SafeServerDObjFree
	mov dword [level_bgs+0x99a00], Hunk_AllocXAnimServer
	mov dword [level_bgs+0x999e8], 0x1
	call G_OpenLogFile
	mov eax, [ebp+0x18]
	mov [esp], eax
	call G_InitSomeVariables
G_InitGame_130:
	mov dword [level+0x2df4], 0x0
	mov dword [level+0x2df8], 0x0
	mov dword [level+0x2dfc], 0x0
	mov dword [level+0x2e00], 0x0
	mov dword [level+0x2e04], 0x0
	mov dword [level+0x2e08], 0x0
	mov dword [level+0x2e0c], 0x0
	mov dword [esp], Hunk_AllocXAnimServer
	call Mantle_CreateAnims
	mov ebx, bgs
	mov dword [ebx], level_bgs
	mov eax, [ebp+0x10]
	test eax, eax
	jz G_InitGame_70
G_InitGame_160:
	mov dword [esp+0x8], 0x400
	lea ebx, [ebp-0x418]
	mov [esp+0x4], ebx
	mov dword [esp], 0x13
	call SV_GetConfigstring
	mov dword [esp+0x8], _cstring_0
	mov dword [esp+0x4], _cstring_winner
	mov [esp], ebx
	call Info_SetValueForKey
	mov [esp+0x4], ebx
	mov dword [esp], 0x13
	call SV_SetConfigstring
	mov dword [esp+0x8], 0x9d000
	mov dword [esp+0x4], 0x0
	mov dword [esp], g_entities
	call memset
	mov dword [level+0x4], g_entities
	mov eax, [g_maxclients]
	mov eax, [eax+0xc]
	mov [level+0x1e4], eax
	mov dword [esp+0x8], 0xc6100
	mov dword [esp+0x4], 0x0
	mov dword [esp], g_clients
	call memset
	mov dword [level], g_clients
	mov ebx, [level+0x1e4]
	test ebx, ebx
	jle G_InitGame_80
	xor ecx, ecx
	mov edx, g_entities
	mov eax, g_clients
G_InitGame_90:
	mov [edx+0x15c], eax
	add ecx, 0x1
	add edx, 0x274
	add eax, 0x3184
	cmp ecx, ebx
	jnz G_InitGame_90
G_InitGame_80:
	mov dword [level+0xc], 0x48
	mov dword [level+0x10], 0x0
	mov dword [level+0x14], 0x0
	mov dword [esp+0x10], 0x3184
	mov eax, [level]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x274
	mov dword [esp+0x4], 0x48
	mov eax, [level+0x4]
	mov [esp], eax
	call SV_LocateGameData
	call G_ParseHitLocDmgTable
	call BG_LoadPenetrationDepthTable
	mov eax, [ebp+0x10]
	mov [esp], eax
	call G_VehiclesInit
	call G_InitTurrets
	call G_SpawnEntitiesFromString
	call G_VehiclesSetupSpawnedEnts
	mov dword [esp], _cstring_0
	call G_setfog
	call G_InitObjectives
	call Missile_InitAttractors
	call Scr_FreeEntityList
	mov dword [esp+0x4], _cstring_
	mov dword [esp], 0xf
	call Com_Printf
	mov dword [esp], 0x1
	call Scr_InitSystem
	mov dword [esp], 0x1
	call Scr_SetLoading
	call Scr_AllocGameVariable
	call G_LoadStructs
	call Scr_LoadGameType
	call Scr_LoadLevel
	call Scr_StartupGameType
	mov eax, g_scr_data
	lea edx, [eax+0x26e0]
G_InitGame_100:
	mov dword [eax+0x10c0], 0xffffffff
	add eax, 0x4dc
	cmp edx, eax
	jnz G_InitGame_100
	mov eax, bgs
	mov dword [eax], 0x0
	mov dword [level+0x1c], 0x0
	call SaveRegisteredWeapons
	call SaveRegisteredItems
	add esp, 0x82c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
G_InitGame_10:
	call G_RegisterCvars
	jmp G_InitGame_110
G_InitGame_70:
	mov dword [esp+0x8], 0x999cc
	mov dword [esp+0x4], 0x0
	mov dword [esp], level_bgs
	call memset
	mov edx, [ebx]
	mov eax, Com_FindSoundAlias
	mov [edx+0x999c4], eax
	mov edx, [ebx]
	mov eax, G_AnimScriptSound
	mov [edx+0x999c8], eax
	call GScr_LoadScripts
	call BG_LoadAnim
	mov edi, [level_bgs+0x999cc]
	mov ebx, level_bgs
	mov esi, level_bgs+0x13300
G_InitGame_140:
	mov dword [esp+0x4], Hunk_AllocXAnimServer
	mov [esp], edi
	call XAnimCreateTree
	mov [ebx+0x99eac], eax
	add ebx, 0x4cc
	cmp esi, ebx
	jnz G_InitGame_140
	mov ebx, g_scr_data
	lea esi, [ebx+0x26e0]
G_InitGame_150:
	mov dword [esp+0x4], Hunk_AllocXAnimServer
	mov [esp], edi
	call XAnimCreateTree
	mov [ebx+0x10bc], eax
	add ebx, 0x4dc
	cmp ebx, esi
	jnz G_InitGame_150
	jmp G_InitGame_160
G_InitGame_30:
	call Cvar_SetCheatState
	jmp G_InitGame_20
	nop


;G_RunFrame(int)
G_RunFrame:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x44c
	mov eax, [ebp+0x8]
	add dword [level+0x1e8], 0x1
	mov edx, [level+0x1ec]
	mov [level+0x1f0], edx
	mov [level+0x1ec], eax
	mov ecx, eax
	sub ecx, edx
	mov [level+0x1f4], ecx
	mov [level_bgs+0x999dc], eax
	mov [level_bgs+0x999e0], eax
	mov [level_bgs+0x999e4], ecx
	mov eax, bgs
	mov dword [eax], level_bgs
	mov eax, [level+0x1e4]
	test eax, eax
	jle G_RunFrame_10
	mov edi, g_entities
	xor esi, esi
	mov ebx, g_entities+0x100
	jmp G_RunFrame_20
G_RunFrame_30:
	add esi, 0x1
	add edi, 0x274
	add ebx, 0x274
	cmp esi, [level+0x1e4]
	jge G_RunFrame_10
G_RunFrame_20:
	cmp byte [ebx], 0x0
	jz G_RunFrame_30
	mov eax, [ebx+0x5c]
	mov eax, [eax+0x3078]
	test eax, eax
	jnz G_RunFrame_30
	mov [esp], edi
	call G_TouchTriggers
	add esi, 0x1
	add edi, 0x274
	add ebx, 0x274
	cmp esi, [level+0x1e4]
	jl G_RunFrame_20
G_RunFrame_10:
	mov esi, [level+0xc]
	test esi, esi
	jle G_RunFrame_40
	mov esi, g_entities
	xor ebx, ebx
	jmp G_RunFrame_50
G_RunFrame_60:
	add ebx, 0x1
	add esi, 0x274
	cmp ebx, [level+0xc]
	jge G_RunFrame_40
G_RunFrame_50:
	cmp byte [esi+0x100], 0x0
	jz G_RunFrame_60
	cvtsi2ss xmm0, dword [level+0x1f4]
	mulss xmm0, [_float_0_00100000]
	movss [esp+0x4], xmm0
	mov [esp], esi
	call SV_DObjInitServerTime
	add ebx, 0x1
	add esi, 0x274
	cmp ebx, [level+0xc]
	jl G_RunFrame_50
G_RunFrame_40:
	lea eax, [ebp-0x418]
	mov dword [esp+0x8], 0x400
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call memset
	mov eax, [level+0x2dd4]
	lea eax, [eax+eax*2]
	shl eax, 0x2
	mov [esp+0x8], eax
	mov dword [esp+0x4], level+0x15d4
	mov dword [esp], level+0x21d4
	call Com_Memcpy
	mov eax, [level+0x2dd4]
	mov [level+0x2dd8], eax
	mov dword [level+0x2dd4], 0x0
	mov byte [ebp-0x441], 0x0
G_RunFrame_120:
	add byte [ebp-0x441], 0x1
	mov ebx, [level+0x2dd8]
	test ebx, ebx
	jle G_RunFrame_70
	mov dword [ebp-0x420], 0x0
	mov dword [ebp-0x448], 0x0
	mov edi, level+0x21d0
	jmp G_RunFrame_80
G_RunFrame_100:
	mov eax, [level+0x2dd8]
	sub eax, 0x1
	mov [level+0x2dd8], eax
	sub dword [ebp-0x420], 0x1
	sub edi, 0xc
	lea eax, [eax+eax*2]
	shl eax, 0x2
	mov edx, [eax+level+0x21d4]
	mov [esi], edx
	mov edx, [eax+level+0x21d8]
	mov [esi+0x4], edx
	mov eax, [eax+level+0x21dc]
	mov [esi+0x8], eax
	add dword [ebp-0x420], 0x1
	add edi, 0xc
	mov ecx, [ebp-0x420]
	cmp ecx, [level+0x2dd8]
	jge G_RunFrame_90
G_RunFrame_80:
	lea esi, [edi+0x4]
	movzx ebx, word [edi+0x4]
	lea eax, [ebx+ebx*8]
	lea eax, [ebx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	lea eax, [eax+ebx+g_entities]
	mov [ebp-0x424], eax
	mov eax, [eax+0x26c]
	cmp eax, [edi+0x8]
	jnz G_RunFrame_100
	movzx edx, word [esi+0x2]
	lea eax, [edx+edx*8]
	lea eax, [edx+eax*2]
	mov ecx, eax
	shl ecx, 0x5
	add eax, ecx
	lea edx, [eax+edx+g_entities]
	mov eax, [edx+0x26c]
	cmp eax, [esi+0x8]
	jnz G_RunFrame_100
	movzx ecx, byte [ebp-0x441]
	cmp cl, [ebp+ebx-0x418]
	jnz G_RunFrame_110
	mov dword [ebp-0x448], 0x1
	add dword [ebp-0x420], 0x1
	add edi, 0xc
	mov ecx, [ebp-0x420]
	cmp ecx, [level+0x2dd8]
	jl G_RunFrame_80
G_RunFrame_90:
	call Scr_RunCurrentThreads
	mov ecx, [ebp-0x448]
	test ecx, ecx
	jnz G_RunFrame_120
G_RunFrame_480:
	mov ebx, [level+0x1e4]
	test ebx, ebx
	jle G_RunFrame_130
	mov dword [ebp-0x428], g_entities
	mov dword [ebp-0x41c], 0x0
	mov dword [ebp-0x42c], g_entities+0x100
G_RunFrame_230:
	mov eax, [ebp-0x42c]
	cmp byte [eax], 0x0
	jz G_RunFrame_140
	mov edx, [eax+0x5c]
	mov [ebp-0x440], edx
	mov eax, [edx+0xe8]
	cmp eax, [edx+0x3170]
	jz G_RunFrame_150
	mov [esp], eax
	call BG_GetWeaponDef
	mov eax, [eax]
	mov [esp], eax
	call Scr_AddString
	mov dword [esp+0x8], 0x1
	mov eax, scr_const
	movzx eax, word [eax+0xc8]
	mov [esp+0x4], eax
	mov ecx, [ebp-0x428]
	mov [esp], ecx
	call Scr_Notify
	mov edx, [ebp-0x440]
	mov eax, [edx+0xe8]
	mov [edx+0x3170], eax
	mov edx, [ebp-0x440]
G_RunFrame_150:
	mov ecx, scr_const
	movzx esi, word [ecx+0x2c]
	movzx eax, word [ecx+0x12]
	movzx ecx, byte [edx+0x3174]
	cmp dword [edx+0xec], 0x5
	jz G_RunFrame_160
G_RunFrame_460:
	xor edx, edx
G_RunFrame_470:
	mov ebx, edx
	mov edx, eax
	cmp bl, cl
	jz G_RunFrame_170
	test bl, bl
	jz G_RunFrame_180
	mov dword [esp+0x8], 0x0
	movzx eax, dx
	mov [esp+0x4], eax
	mov ecx, [ebp-0x428]
	mov [esp], ecx
	call Scr_Notify
G_RunFrame_170:
	movzx eax, bl
	mov edx, [ebp-0x440]
	mov [edx+0x3174], al
	mov eax, [edx+0x10]
	shr eax, 0x6
	mov ebx, eax
	and bl, 0x1
	mov ecx, scr_const
	movzx edx, word [ecx+0xd4]
	movzx eax, word [ecx+0xd6]
	mov ecx, [ebp-0x440]
	cmp [ecx+0x3175], bl
	jz G_RunFrame_190
	test bl, bl
	jz G_RunFrame_200
	mov dword [esp+0x8], 0x0
	movzx eax, dx
	mov [esp+0x4], eax
	mov eax, [ebp-0x428]
	mov [esp], eax
	call Scr_Notify
G_RunFrame_190:
	movzx eax, bl
	mov ecx, [ebp-0x440]
	mov [ecx+0x3175], al
	mov eax, scr_const
	movzx edi, word [eax+0x146]
	movzx ebx, word [eax+0x144]
	movzx esi, byte [ecx+0x3176]
	mov [esp], ecx
	call PM_IsSprinting
	mov [ebp-0x439], al
	mov ecx, esi
	cmp [ebp-0x439], cl
	jz G_RunFrame_210
	cmp byte [ebp-0x439], 0x0
	jz G_RunFrame_220
	mov dword [esp+0x8], 0x0
	movzx eax, bx
	mov [esp+0x4], eax
	mov eax, [ebp-0x428]
	mov [esp], eax
	call Scr_Notify
G_RunFrame_210:
	movzx eax, byte [ebp-0x439]
	mov ecx, [ebp-0x440]
	mov [ecx+0x3176], al
G_RunFrame_140:
	add dword [ebp-0x41c], 0x1
	add dword [ebp-0x428], 0x274
	add dword [ebp-0x42c], 0x274
	mov eax, [ebp-0x41c]
	cmp eax, [level+0x1e4]
	jl G_RunFrame_230
G_RunFrame_130:
	mov edx, [level+0xc]
	test edx, edx
	jg G_RunFrame_240
G_RunFrame_530:
	call Scr_IncTime
	call SV_ResetSkeletonCache
	mov dword [level+0x2df0], 0x0
	mov eax, [level+0xc]
	test eax, eax
	jg G_RunFrame_250
G_RunFrame_500:
	mov dword [level+0x2df0], 0xffffffff
	mov eax, [level+0x1e4]
	test eax, eax
	jle G_RunFrame_260
	mov dword [ebp-0x438], 0x0
	mov dword [ebp-0x434], 0x0
G_RunFrame_320:
	mov eax, [ebp-0x434]
	add eax, [level+0x4]
	cmp byte [eax+0x100], 0x0
	jz G_RunFrame_270
	mov eax, [eax+0x15c]
	mov edi, [eax+0x3010]
	mov ecx, eax
	mov ebx, level+0x24
	mov esi, level+0x1e4
	jmp G_RunFrame_280
G_RunFrame_310:
	cmp edi, eax
	jz G_RunFrame_290
G_RunFrame_300:
	mov dword [ecx+0x65c], 0x0
	add ebx, 0x1c
	add ecx, 0x1c
	cmp esi, ebx
	jz G_RunFrame_270
G_RunFrame_280:
	mov eax, [ebx]
	test eax, eax
	jz G_RunFrame_300
	mov eax, [ebx+0x14]
	test eax, eax
	jnz G_RunFrame_310
G_RunFrame_290:
	mov edx, ebx
	sub edx, level+0x24
	mov eax, [edx+level+0x24]
	mov [ecx+0x65c], eax
	mov eax, [edx+level+0x28]
	mov [ecx+0x660], eax
	mov eax, [edx+level+0x2c]
	mov [ecx+0x664], eax
	mov eax, [edx+level+0x30]
	mov [ecx+0x668], eax
	mov eax, [edx+level+0x34]
	mov [ecx+0x66c], eax
	mov eax, [edx+level+0x38]
	mov [ecx+0x670], eax
	mov eax, [edx+level+0x3c]
	mov [ecx+0x674], eax
	add ebx, 0x1c
	add ecx, 0x1c
	cmp esi, ebx
	jnz G_RunFrame_280
G_RunFrame_270:
	add dword [ebp-0x438], 0x1
	add dword [ebp-0x434], 0x274
	mov eax, [ebp-0x438]
	cmp eax, [level+0x1e4]
	jl G_RunFrame_320
G_RunFrame_260:
	mov eax, [level+0x1e4]
	test eax, eax
	jle G_RunFrame_330
	xor esi, esi
	xor ebx, ebx
	jmp G_RunFrame_340
G_RunFrame_350:
	add esi, 0x1
	add ebx, 0x274
	cmp esi, [level+0x1e4]
	jge G_RunFrame_330
G_RunFrame_340:
	mov edx, ebx
	add edx, [level+0x4]
	cmp byte [edx+0x100], 0x0
	jz G_RunFrame_350
	mov dword [esp+0x8], 0x3
	mov eax, [edx]
	mov [esp+0x4], eax
	mov eax, [edx+0x15c]
	mov [esp], eax
	call HudElem_UpdateClient
	add esi, 0x1
	add ebx, 0x274
	cmp esi, [level+0x1e4]
	jl G_RunFrame_340
G_RunFrame_330:
	mov eax, [level+0x1e4]
	test eax, eax
	jle G_RunFrame_360
	mov esi, g_entities
	xor ebx, ebx
	jmp G_RunFrame_370
G_RunFrame_380:
	add ebx, 0x1
	add esi, 0x274
	cmp ebx, [level+0x1e4]
	jge G_RunFrame_360
G_RunFrame_370:
	cmp byte [esi+0x100], 0x0
	jz G_RunFrame_380
	mov [esp], esi
	call ClientEndFrame
	add ebx, 0x1
	add esi, 0x274
	cmp ebx, [level+0x1e4]
	jl G_RunFrame_370
G_RunFrame_360:
	call CheckTeamStatus
	mov eax, [g_oldVoting]
	cmp byte [eax+0xc], 0x0
	jnz G_RunFrame_390
G_RunFrame_600:
	mov eax, [level+0x210]
	test eax, eax
	jz G_RunFrame_400
	mov ecx, [level+0x1e4]
	test ecx, ecx
	jg G_RunFrame_410
G_RunFrame_570:
	mov dword [level+0x210], 0x0
G_RunFrame_400:
	mov eax, [g_listEntity]
	cmp byte [eax+0xc], 0x0
	jnz G_RunFrame_420
G_RunFrame_630:
	mov edi, [level+0x2de8]
	test edi, edi
	jnz G_RunFrame_430
G_RunFrame_610:
	mov esi, [level+0x2dec]
	test esi, esi
	jnz G_RunFrame_440
G_RunFrame_590:
	mov eax, [g_dumpAnims]
	mov ecx, [eax+0xc]
	test ecx, ecx
	js G_RunFrame_450
	mov dword [esp+0x4], _cstring_server
	lea eax, [ecx+ecx*8]
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	add eax, ecx
	add eax, [level+0x4]
	mov [esp], eax
	call SV_DObjDisplayAnim
G_RunFrame_450:
	mov eax, bgs
	mov dword [eax], 0x0
	call ShowEntityInfo
	add esp, 0x44c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
G_RunFrame_160:
	cmp dword [edx+0x4], 0x6
	jg G_RunFrame_460
	mov edx, 0x1
	jmp G_RunFrame_470
G_RunFrame_70:
	mov dword [ebp-0x448], 0x0
	call Scr_RunCurrentThreads
	mov ecx, [ebp-0x448]
	test ecx, ecx
	jnz G_RunFrame_120
	jmp G_RunFrame_480
G_RunFrame_110:
	mov [ebp+ebx-0x418], cl
	mov [esp], edx
	call Scr_AddEntity
	mov dword [esp+0x8], 0x1
	mov eax, scr_const
	movzx eax, word [eax+0xbc]
	mov [esp+0x4], eax
	mov edx, [ebp-0x424]
	mov [esp], edx
	call Scr_Notify
	jmp G_RunFrame_100
G_RunFrame_180:
	mov dword [esp+0x8], 0x0
	movzx eax, si
	mov [esp+0x4], eax
	mov eax, [ebp-0x428]
	mov [esp], eax
	call Scr_Notify
	jmp G_RunFrame_170
G_RunFrame_200:
	mov dword [esp+0x8], 0x0
	movzx eax, ax
	mov [esp+0x4], eax
	mov edx, [ebp-0x428]
	mov [esp], edx
	call Scr_Notify
	jmp G_RunFrame_190
G_RunFrame_220:
	mov dword [esp+0x8], 0x0
	movzx eax, di
	mov [esp+0x4], eax
	mov edx, [ebp-0x428]
	mov [esp], edx
	call Scr_Notify
	jmp G_RunFrame_210
G_RunFrame_250:
	mov ebx, g_entities
	jmp G_RunFrame_490
G_RunFrame_510:
	mov eax, [level+0x2df0]
	add eax, 0x1
	mov [level+0x2df0], eax
	add ebx, 0x274
	cmp eax, [level+0xc]
	jge G_RunFrame_500
G_RunFrame_490:
	cmp byte [ebx+0x100], 0x0
	jz G_RunFrame_510
	mov [esp], ebx
	call G_RunFrameForEntity
	jmp G_RunFrame_510
G_RunFrame_240:
	mov edi, g_entities
	xor esi, esi
	mov ebx, g_entities+0x100
	jmp G_RunFrame_520
G_RunFrame_540:
	add esi, 0x1
	add edi, 0x274
	add ebx, 0x274
	cmp esi, [level+0xc]
	jge G_RunFrame_530
G_RunFrame_520:
	cmp byte [ebx], 0x0
	jz G_RunFrame_540
	lea ecx, [ebx+0x80]
	mov [ebp-0x430], ecx
	test byte [ebx+0x81], 0x20
	jnz G_RunFrame_540
G_RunFrame_550:
	mov dword [esp+0x4], 0x1
	mov [esp], edi
	call G_DObjUpdateServerTime
	test eax, eax
	jz G_RunFrame_540
	call Scr_RunCurrentThreads
	cmp byte [ebx], 0x0
	jz G_RunFrame_540
	mov edx, [ebp-0x430]
	test byte [edx+0x1], 0x20
	jz G_RunFrame_550
	jmp G_RunFrame_540
G_RunFrame_410:
	xor esi, esi
	xor ebx, ebx
	mov edi, g_entities
	jmp G_RunFrame_560
G_RunFrame_580:
	add esi, 0x1
	add ebx, 0x3184
	add edi, 0x274
	cmp esi, [level+0x1e4]
	jge G_RunFrame_570
G_RunFrame_560:
	mov eax, ebx
	add eax, [level]
	cmp dword [eax+0x2f8c], 0x2
	jnz G_RunFrame_580
	cmp dword [eax+0x4], 0x5
	jnz G_RunFrame_580
	mov [esp], edi
	call SendScoreboard
	jmp G_RunFrame_580
G_RunFrame_440:
	call SaveRegisteredItems
	jmp G_RunFrame_590
G_RunFrame_390:
	call CheckVote
	jmp G_RunFrame_600
G_RunFrame_430:
	call SaveRegisteredWeapons
	jmp G_RunFrame_610
G_RunFrame_420:
	xor ebx, ebx
	mov esi, g_entities
G_RunFrame_620:
	movzx eax, word [esi+0x170]
	mov [esp], eax
	call SL_ConvertToString
	mov [esp+0xc], eax
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_4i_s
	mov dword [esp], 0xf
	call Com_Printf
	add ebx, 0x1
	add esi, 0x274
	cmp ebx, 0x400
	jnz G_RunFrame_620
	mov dword [esp+0x4], 0x0
	mov eax, [g_listEntity]
	mov [esp], eax
	call Cvar_SetBool
	jmp G_RunFrame_630

;G_SightTrace(int*, float const*, float const*, int, int)
G_SightTrace:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	mov eax, [ebp+0x18]
	mov [esp+0x1c], eax
	mov dword [esp+0x18], 0x3ff
	mov eax, [ebp+0x14]
	mov [esp+0x14], eax
	mov eax, [ebp+0x10]
	mov [esp+0x10], eax
	mov eax, vec3_origin
	mov [esp+0xc], eax
	mov [esp+0x8], eax
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call SV_SightTrace
	leave
	ret


;CalculateRanks()
CalculateRanks:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	xor ecx, ecx
	mov dword [level+0x21c], 0x0
	mov dword [level+0xb30], 0x0
	mov eax, [level+0x1e4]
	test eax, eax
	jle CalculateRanks_10
	xor edx, edx
	mov eax, [level]
CalculateRanks_40:
	cmp dword [eax+0x2f8c], 0x0
	jz CalculateRanks_20
	mov [ecx*4+level+0x220], edx
	add ecx, 0x1
	mov [level+0x21c], ecx
	cmp dword [eax+0x3010], 0x3
	jz CalculateRanks_20
	cmp dword [eax+0x2f8c], 0x2
	jz CalculateRanks_30
CalculateRanks_20:
	add edx, 0x1
	add eax, 0x3184
	cmp edx, [level+0x1e4]
	jl CalculateRanks_40
CalculateRanks_50:
	mov dword [esp+0xc], SortRanks
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], ecx
	mov dword [esp], level+0x220
	call qsort
	mov dword [level+0x210], 0x1
	leave
	ret
CalculateRanks_10:
	mov ecx, [level+0x21c]
	jmp CalculateRanks_50
CalculateRanks_30:
	add dword [level+0xb30], 0x1
	jmp CalculateRanks_20


;G_ShutdownGame(int)
G_ShutdownGame:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0x8]
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring__shutdowngame_d_
	mov dword [esp], 0xf
	call Com_Printf
	call G_CloseLogFile
G_ShutdownGame_130:
	mov eax, bgs
	mov dword [eax], 0x0
	mov eax, [level+0xc]
	test eax, eax
	jle G_ShutdownGame_20
	mov esi, g_entities
	xor ebx, ebx
	jmp G_ShutdownGame_30
G_ShutdownGame_40:
	add ebx, 0x1
	add esi, 0x274
	cmp ebx, [level+0xc]
	jge G_ShutdownGame_20
G_ShutdownGame_30:
	cmp byte [esi+0x100], 0x0
	jz G_ShutdownGame_40
	mov [esp], esi
	call G_FreeEntity
	add ebx, 0x1
	add esi, 0x274
	cmp ebx, [level+0xc]
	jl G_ShutdownGame_30
G_ShutdownGame_20:
	cmp byte [g_entities+0x9cc18], 0x0
	jnz G_ShutdownGame_50
G_ShutdownGame_120:
	xor esi, esi
	mov ebx, level+0x1544
G_ShutdownGame_60:
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call _ZN9EntHandle6setEntEP9gentity_s
	add esi, 0x1
	add ebx, 0x4
	cmp esi, 0x20
	jnz G_ShutdownGame_60
	mov dword [level+0xc], 0x0
	mov dword [level+0x10], 0x0
	mov dword [level+0x14], 0x0
	call HudElem_DestroyAll
	mov dword [esp], 0x1
	call Scr_IsSystemActive
	test eax, eax
	jz G_ShutdownGame_70
	mov eax, [level+0x1540]
	test eax, eax
	jz G_ShutdownGame_80
G_ShutdownGame_70:
	xor eax, eax
	cmp dword [level+0x1540], 0x0
	setz al
	mov [esp+0x4], eax
	mov dword [esp], 0x1
	call Scr_ShutdownSystem
	test edi, edi
	jnz G_ShutdownGame_90
G_ShutdownGame_180:
	mov eax, [level+0x2df8]
	test eax, eax
	jz G_ShutdownGame_100
	mov [esp], eax
	call Z_VirtualFreeInternal
G_ShutdownGame_100:
	mov dword [level+0x2df8], 0x0
	mov eax, [level+0x2df4]
	test eax, eax
	jnz G_ShutdownGame_110
	mov dword [level+0x2df4], 0x0
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _ZN9EntHandle8ShutdownEv
G_ShutdownGame_50:
	mov dword [esp], g_entities+0x9cb18
	call G_FreeEntity
	jmp G_ShutdownGame_120
G_ShutdownGame_110:
	mov [esp], eax
	call FS_FCloseFile
	mov dword [level+0x2df4], 0x0
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _ZN9EntHandle8ShutdownEv
G_ShutdownGame_90:
	call Mantle_ShutdownAnims
	call GScr_FreeScripts
	mov dword [esp], 0x1
	call Scr_FreeScripts
	mov ebx, level_bgs
	mov esi, level_bgs+0x13300
G_ShutdownGame_150:
	mov eax, [ebx+0x99eac]
	test eax, eax
	jz G_ShutdownGame_140
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call XAnimFreeTree
	mov dword [ebx+0x99eac], 0x0
G_ShutdownGame_140:
	add ebx, 0x4cc
	cmp esi, ebx
	jnz G_ShutdownGame_150
	mov ebx, g_scr_data
	mov edx, ebx
	mov esi, ebx
G_ShutdownGame_170:
	mov eax, [ebx+0x10bc]
	test eax, eax
	jz G_ShutdownGame_160
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call XAnimFreeTree
	mov dword [ebx+0x10bc], 0x0
	mov edx, esi
G_ShutdownGame_160:
	add ebx, 0x4dc
	lea eax, [edx+0x26e0]
	cmp eax, ebx
	jnz G_ShutdownGame_170
	mov dword [esp], 0x1
	call Com_FreeWeaponInfoMemory
	mov dword [esp], 0x0
	call Hunk_ClearToMarkLow
	jmp G_ShutdownGame_180
G_ShutdownGame_80:
	call SV_FreeClientScriptPers
	jmp G_ShutdownGame_70




;G_AddDebugString(float const*, float const*, float, char const*, int)
G_AddDebugString:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	mov eax, [ebp+0x18]
	mov [esp+0x14], eax
	mov dword [esp+0x10], 0x1
	mov eax, [ebp+0x14]
	mov [esp+0xc], eax
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CL_AddDebugString
	leave
	ret
	nop


;G_GetClientScore(int)
G_GetClientScore:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	lea eax, [ecx+ecx*2]
	mov edx, eax
	shl edx, 0x6
	add eax, edx
	mov edx, eax
	shl edx, 0x6
	add eax, edx
	add eax, ecx
	mov edx, [level]
	mov eax, [eax+edx+0x2f78]
	pop ebp
	ret


;G_LocationalTrace(trace_t*, float const*, float const*, int, int, unsigned char*)
G_LocationalTrace:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x44
	mov eax, [ebp+0x14]
	mov [esp+0x4], eax
	lea ebx, [ebp-0x14]
	mov [esp], ebx
	call SV_SetupIgnoreEntParams
	mov dword [esp+0x24], 0x1
	mov eax, [ebp+0x1c]
	mov [esp+0x20], eax
	mov dword [esp+0x1c], 0x1
	mov eax, [ebp+0x18]
	mov [esp+0x18], eax
	mov [esp+0x14], ebx
	mov eax, [ebp+0x10]
	mov [esp+0x10], eax
	mov eax, vec3_origin
	mov [esp+0xc], eax
	mov [esp+0x8], eax
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call SV_Trace
	add esp, 0x44
	pop ebx
	pop ebp
	ret
	nop


;Hunk_AllocXAnimServer(int)
Hunk_AllocXAnimServer:
	push ebp
	mov ebp, esp
	pop ebp
	jmp Hunk_AllocLowInternal
	nop


;G_TraceCapsuleComplete(float const*, float const*, float const*, float const*, int, int)
G_TraceCapsuleComplete:
	push ebp
	mov ebp, esp
	sub esp, 0x38
	mov dword [esp+0x24], 0x0
	mov dword [esp+0x20], 0x0
	mov dword [esp+0x1c], 0x0
	mov eax, [ebp+0x1c]
	mov [esp+0x18], eax
	mov dword [esp+0x14], 0x3ff
	mov eax, [ebp+0x18]
	mov [esp+0x10], eax
	mov eax, [ebp+0x14]
	mov [esp+0xc], eax
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call SV_TracePassed
	leave
	ret


;G_ExitAfterConnectPaths()
G_ExitAfterConnectPaths:
	push ebp
	mov ebp, esp
	xor eax, eax
	pop ebp
	ret
	nop


;G_LocationalTracePassed(float const*, float const*, int, int, int, unsigned char*)
G_LocationalTracePassed:
	push ebp
	mov ebp, esp
	sub esp, 0x38
	mov dword [esp+0x24], 0x1
	mov eax, [ebp+0x1c]
	mov [esp+0x20], eax
	mov dword [esp+0x1c], 0x1
	mov eax, [ebp+0x18]
	mov [esp+0x18], eax
	mov eax, [ebp+0x14]
	mov [esp+0x14], eax
	mov eax, [ebp+0x10]
	mov [esp+0x10], eax
	mov eax, [ebp+0xc]
	mov [esp+0xc], eax
	mov eax, vec3_origin
	mov [esp+0x8], eax
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call SV_TracePassed
	leave
	ret
	nop


;G_LocationalTraceAllowChildren(trace_t*, float const*, float const*, int, int, unsigned char*)
G_LocationalTraceAllowChildren:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x44
	mov eax, [ebp+0x14]
	mov [esp+0x4], eax
	lea ebx, [ebp-0x14]
	mov [esp], ebx
	call SV_SetupIgnoreEntParams
	mov byte [ebp-0x9], 0x0
	mov dword [esp+0x24], 0x1
	mov eax, [ebp+0x1c]
	mov [esp+0x20], eax
	mov dword [esp+0x1c], 0x1
	mov eax, [ebp+0x18]
	mov [esp+0x18], eax
	mov [esp+0x14], ebx
	mov eax, [ebp+0x10]
	mov [esp+0x10], eax
	mov eax, vec3_origin
	mov [esp+0xc], eax
	mov [esp+0x8], eax
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call SV_Trace
	add esp, 0x44
	pop ebx
	pop ebp
	ret
	nop


;CheckVote()
CheckVote:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x20
	mov eax, [level+0xb24]
	test eax, eax
	jz CheckVote_10
	cmp eax, [level+0x1ec]
	jl CheckVote_20
CheckVote_10:
	mov eax, [level+0xb20]
	test eax, eax
	jz CheckVote_30
	cmp [level+0x1ec], eax
	js CheckVote_40
	mov esi, [level+0xb28]
	mov ebx, [level+0xb2c]
	lea edx, [esi+ebx]
	mov eax, [level+0xb30]
	sub eax, edx
	cvtsi2ss xmm0, eax
	mov eax, [g_voteAbstainWeight]
	mulss xmm0, [eax+0xc]
	movss [esp], xmm0
	call ceilf
	fstp dword [ebp-0xc]
	cvttss2si eax, [ebp-0xc]
	add ebx, eax
	cmp esi, ebx
	jg CheckVote_50
CheckVote_60:
	mov dword [esp+0x4], 0x65
	mov dword [esp], _cstring_c_game_votefaile
	call va
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov dword [esp], 0xffffffff
	call SV_GameSendServerCommand
CheckVote_70:
	mov dword [level+0xb20], 0x0
	mov dword [esp+0x4], _cstring_null
	mov dword [esp], 0xd
	call SV_SetConfigstring
CheckVote_30:
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
CheckVote_40:
	mov edx, [level+0xb30]
	mov eax, edx
	shr eax, 0x1f
	add eax, edx
	sar eax, 1
	add eax, 0x1
	cmp eax, [level+0xb28]
	jle CheckVote_50
	sub edx, eax
	cmp [level+0xb2c], edx
	jle CheckVote_30
	jmp CheckVote_60
CheckVote_50:
	mov dword [esp+0x4], 0x65
	mov dword [esp], _cstring_c_game_votepasse
	call va
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov dword [esp], 0xffffffff
	call SV_GameSendServerCommand
	mov eax, [level+0x1ec]
	add eax, 0xbb8
	mov [level+0xb24], eax
	jmp CheckVote_70
CheckVote_20:
	mov dword [level+0xb24], 0x0
	mov dword [esp+0x4], level+0x320
	mov dword [esp], _cstring_s
	call va
	mov [esp], eax
	call Cbuf_AddText
	jmp CheckVote_10


;Initialized global or static variables of g_main_mp:
SECTION .data
g_entinfoNames: dd _cstring_off, _cstring_all_ents, 0x0

;Initialized constant data of g_main_mp:
SECTION .rdata


;Zero initialized global or static variables of g_main_mp:
SECTION .bss
g_clients: resb 0xc6100
g_compassShowEnemies: resb 0x4
bullet_penetrationEnabled: resb 0x4
g_debugLocDamage: resb 0x4
g_entities: resb 0x9d000
g_dropForwardSpeed: resb 0x4
g_dropHorzSpeedRand: resb 0x4
g_dropUpSpeedBase: resb 0x4
g_dropUpSpeedRand: resb 0x4
g_maxDroppedWeapons: resb 0x4
pickupPrints: resb 0x4
g_minGrenadeDamageSpeed: resb 0x4
g_banIPs: resb 0x4
g_dedicated: resb 0x4
g_antilag: resb 0x4
melee_debug: resb 0x4
g_useholdspawndelay: resb 0x4
g_useholdtime: resb 0x4
player_MGUseRadius: resb 0x4
player_throwbackInnerRadius: resb 0x4
player_throwbackOuterRadius: resb 0x4
g_NoScriptSpam: resb 0x4
g_fogColorReadOnly: resb 0x4
g_fogHalfDistReadOnly: resb 0x4
g_fogStartDistReadOnly: resb 0x4
g_gametype: resb 0x14
g_maxclients: resb 0x4
level_bgs: resb 0xacd20
g_debugDamage: resb 0x4
radius_damage_debug: resb 0x4
g_allowVote: resb 0x4
g_cheats: resb 0x4
g_deadChat: resb 0x8
g_oldVoting: resb 0x4
g_gravity: resb 0x4
g_motd: resb 0x4
g_clonePlayerMaxVelocity: resb 0x4
g_knockback: resb 0x4
g_voiceChatTalkingDuration: resb 0x4
g_inactivity: resb 0x4
g_mantleBlockTimeBuffer: resb 0x4
g_speed: resb 0x4
g_synchronousClients: resb 0x4
g_ScoresColor_Allies: resb 0x4
g_ScoresColor_Axis: resb 0x4
g_ScoresColor_EnemyTeam: resb 0x4
g_ScoresColor_Free: resb 0x4
g_ScoresColor_MyTeam: resb 0x4
g_ScoresColor_Spectator: resb 0x4
g_TeamColor_Allies: resb 0x4
g_TeamColor_Axis: resb 0x4
g_TeamColor_EnemyTeam: resb 0x4
g_TeamColor_Free: resb 0x4
g_TeamColor_MyTeam: resb 0x4
g_TeamColor_Spectator: resb 0x4
g_TeamIcon_Allies: resb 0x4
g_TeamIcon_Axis: resb 0x4
g_TeamIcon_Free: resb 0x4
g_TeamIcon_Spectator: resb 0x4
g_TeamName_Allies: resb 0x4
g_TeamName_Axis: resb 0x4
g_dumpAnims: resb 0x4
g_entinfo: resb 0x4
g_friendlyNameDist: resb 0x4
g_friendlyfireDist: resb 0x4
g_listEntity: resb 0x4
g_log: resb 0x4
g_logSync: resb 0x4
g_password: resb 0x4
g_redCrosshairs: resb 0x4
g_voteAbstainWeight: resb 0x4
voice_deadChat: resb 0x4
voice_global: resb 0x4
voice_localEcho: resb 0x4


;All cstrings:
SECTION .rdata
_cstring_enable_cheats:		db "Enable cheats",0
_cstring_sv_cheats:		db "sv_cheats",0
_cstring_the_name_of_the_:		db "The name of the game",0
_cstring_call_of_duty_4:		db "Call of Duty 4",0
_cstring_gamename:		db "gamename",0
_cstring_the_date_compile:		db "The date compiled",0
_cstring_feb_12_2009:		db "Feb 12 2009",0
_cstring_gamedate:		db "gamedate",0
_cstring_the_current_map_:		db "The current map name",0
_cstring_null:		db 0
_cstring_sv_mapname:		db "sv_mapname",0
_cstring_the_current_camp:		db "The current campaign",0
_cstring_war:		db "war",0
_cstring_g_gametype:		db "g_gametype",0
_cstring_the_maximum_numb:		db "The maximum number of clients that can connect to a server",0
_cstring_ui_maxclients:		db "ui_maxclients",0
_cstring_sv_maxclients:		db "sv_maxclients",0
_cstring_call_client_thin:		db "Call ",27h,"client think",27h," exactly once for each server frame to make smooth demos",0
_cstring_g_synchronouscli:		db "g_synchronousClients",0
_cstring_log_file_name:		db "Log file name",0
_cstring_games_mplog:		db "games_mp.log",0
_cstring_g_log:		db "g_log",0
_cstring_enable_synchrono:		db "Enable synchronous logging",0
_cstring_g_logsync:		db "g_logSync",0
_cstring_password:		db "Password",0
_cstring_g_password:		db "g_password",0
_cstring_ip_addresses_to_:		db "IP addresses to ban from playing",0
_cstring_g_banips:		db "g_banIPs",0
_cstring_dedicated_server:		db "Dedicated server",0
_cstring_dedicated:		db "dedicated",0
_cstring_player_speed:		db "Player speed",0
_cstring_g_speed:		db "g_speed",0
_cstring_game_gravity_in_:		db "Game gravity in inches per second per second",0
_cstring_g_gravity:		db "g_gravity",0
_cstring_maximum_knockbac:		db "Maximum knockback",0
_cstring_g_knockback:		db "g_knockback",0
_cstring_maximum_number_o:		db "Maximum number of dropped weapons",0
_cstring_g_maxdroppedweap:		db "g_maxDroppedWeapons",0
_cstring_time_delay_befor:		db "Time delay before player is kicked for inactivity",0
_cstring_g_inactivity:		db "g_inactivity",0
_cstring_show_debug_infor:		db "Show debug information for damage",0
_cstring_g_debugdamage:		db "g_debugDamage",0
_cstring_show_debug_infor1:		db "Show debug information for bullets",0
_cstring_enabledisable_bu:		db "Enable/Disable bullet penetration.",0
_cstring_bullet_penetrati:		db "bullet_penetrationEnabled",0
_cstring_display_entity_i:		db "Display entity information",0
_cstring_g_entinfo:		db "g_entinfo",0
_cstring_the_message_of_t:		db "The message of the day",0
_cstring_g_motd:		db "g_motd",0
_cstring_forward_speed_of:		db "Forward speed of a dropped item",0
_cstring_g_dropforwardspe:		db "g_dropForwardSpeed",0
_cstring_base_component_o:		db "Base component of the initial vertical speed of a dropped item",0
_cstring_g_dropupspeedbas:		db "g_dropUpSpeedBase",0
_cstring_random_component:		db "Random component of the initial vertical speed of a dropped item",0
_cstring_g_dropupspeedran:		db "g_dropUpSpeedRand",0
_cstring_random_component1:		db "Random component of the initial horizontal speed of a dropped item",0
_cstring_g_drophorzspeedr:		db "g_dropHorzSpeedRand",0
_cstring_maximum_velocity:		db "Maximum velocity in each axis of a cloned player",0ah,"(for death animations)",0
_cstring_g_cloneplayermax:		db "g_clonePlayerMaxVelocity",0
_cstring_send_voice_messa:		db "Send voice messages to everybody",0
_cstring_voice_global:		db "voice_global",0
_cstring_echo_voice_chat_:		db "Echo voice chat back to the player",0
_cstring_voice_localecho:		db "voice_localEcho",0
_cstring_allow_dead_playe:		db "Allow dead players to talk to living players",0
_cstring_voice_deadchat:		db "voice_deadChat",0
_cstring_enable_voting_on:		db "Enable voting on this server",0
_cstring_g_allowvote:		db "g_allowVote",0
_cstring_list_the_entitie:		db "List the entities",0
_cstring_g_listentity:		db "g_listEntity",0
_cstring_allow_dead_playe1:		db "Allow dead players to chat with living players",0
_cstring_g_deadchat:		db "g_deadChat",0
_cstring_time_after_the_l:		db "Time after the last talk packet was received that the player is considered by the",0ah,"server to still be talking in milliseconds",0
_cstring_g_voicechattalki:		db "g_voiceChatTalkingDuration",0
_cstring_shader_name_for_:		db "Shader name for the allied scores banner",0
_cstring_faction_128_usmc:		db "faction_128_usmc",0
_cstring_g_teamicon_allie:		db "g_TeamIcon_Allies",0
_cstring_shader_name_for_1:		db "Shader name for the axis scores banner",0
_cstring_faction_128_arab:		db "faction_128_arab",0
_cstring_g_teamicon_axis:		db "g_TeamIcon_Axis",0
_cstring_shader_name_for_2:		db "Shader name for the scores of players with no team",0
_cstring_g_teamicon_free:		db "g_TeamIcon_Free",0
_cstring_shader_name_for_3:		db "Shader name for the scores of players who are spectators",0
_cstring_g_teamicon_spect:		db "g_TeamIcon_Spectator",0
_cstring_player_team_colo:		db "Player team color on scoreboard",0
_cstring_g_scorescolor_my:		db "g_ScoresColor_MyTeam",0
_cstring_enemy_team_color:		db "Enemy team color on scoreboard",0
_cstring_g_scorescolor_en:		db "g_ScoresColor_EnemyTeam",0
_cstring_spectator_team_c:		db "Spectator team color on scoreboard",0
_cstring_g_scorescolor_sp:		db "g_ScoresColor_Spectator",0
_cstring_free_team_color_:		db "Free Team color on scoreboard",0
_cstring_g_scorescolor_fr:		db "g_ScoresColor_Free",0
_cstring_allies_team_colo:		db "Allies team color on scoreboard",0
_cstring_g_scorescolor_al:		db "g_ScoresColor_Allies",0
_cstring_axis_team_color_:		db "Axis team color on scoreboard",0
_cstring_g_scorescolor_ax:		db "g_ScoresColor_Axis",0
_cstring_allied_team_name:		db "Allied team name",0
_cstring_game_allies:		db "GAME_ALLIES",0
_cstring_g_teamname_allie:		db "g_TeamName_Allies",0
_cstring_axis_team_name:		db "Axis team name",0
_cstring_game_axis:		db "GAME_AXIS",0
_cstring_g_teamname_axis:		db "g_TeamName_Axis",0
_cstring_allies_team_colo1:		db "Allies team color",0
_cstring_g_teamcolor_alli:		db "g_TeamColor_Allies",0
_cstring_axis_team_color:		db "Axis team color",0
_cstring_g_teamcolor_axis:		db "g_TeamColor_Axis",0
_cstring_player_team_colo1:		db "Player team color",0
_cstring_g_teamcolor_myte:		db "g_TeamColor_MyTeam",0
_cstring_enemy_team_color1:		db "Enemy team color",0
_cstring_g_teamcolor_enem:		db "g_TeamColor_EnemyTeam",0
_cstring_spectator_team_c1:		db "Spectator team color",0
_cstring_g_teamcolor_spec:		db "g_TeamColor_Spectator",0
_cstring_free_team_color:		db "Free Team color",0
_cstring_g_teamcolor_free:		db "g_TeamColor_Free",0
_cstring_enable_extrapola:		db "Enable extrapolation between client states",0
_cstring_turn_on_antilag_:		db "Turn on antilag checks for weapon hits",0
_cstring_g_antilag:		db "g_antilag",0
_cstring_use_old_voting_m:		db "Use old voting method",0
_cstring_g_oldvoting:		db "g_oldVoting",0
_cstring_how_much_an_abst:		db "How much an abstained vote counts as a ",27h,"no",27h," vote",0
_cstring_g_voteabstainwei:		db "g_voteAbstainWeight",0
_cstring_turn_off_script_:		db "Turn off script debugging info",0
_cstring_g_no_script_spam:		db "g_no_script_spam",0
_cstring_turn_on_debuggin:		db "Turn on debugging information for locational damage",0
_cstring_g_debuglocdamage:		db "g_debugLocDamage",0
_cstring_maximum_range_fo:		db "Maximum range for disabling fire at a friendly",0
_cstring_g_friendlyfiredi:		db "g_friendlyfireDist",0
_cstring_maximum_range_fo1:		db "Maximum range for seeing a friendly",27h,"s name",0
_cstring_g_friendlynamedi:		db "g_friendlyNameDist",0
_cstring_turn_on_debug_li:		db "Turn on debug lines for melee traces",0
_cstring_melee_debug:		db "melee_debug",0
_cstring_turn_on_debug_li1:		db "Turn on debug lines for radius damage traces",0
_cstring_radius_damage_de:		db "radius_damage_debug",0
_cstring_the_radius_to_a_:		db "The radius to a live grenade player must be within initially to do a throwback",0
_cstring_player_throwback:		db "player_throwbackInnerRadius",0
_cstring_the_radius_playe:		db "The radius player is allow to throwback a grenade once the player has been in the inner radius",0
_cstring_player_throwback1:		db "player_throwbackOuterRadius",0
_cstring_the_radius_withi:		db "The radius within which a player can mount a machine gun",0
_cstring_player_mguseradi:		db "player_MGUseRadius",0
_cstring_minimum_speed_at:		db "Minimum speed at which getting hit be a grenade will do damage (not the grenade explosion damage)",0
_cstring_g_mingrenadedama:		db "g_minGrenadeDamageSpeed",0
_cstring_whether_enemies_:		db "Whether enemies are visible on the compass at all times",0
_cstring_g_compassshowene:		db "g_compassShowEnemies",0
_cstring_print_a_message_:		db "Print a message to the game window when picking up ammo, etc.",0
_cstring_pickupprints:		db "pickupPrints",0
_cstring_animation_debugg:		db "Animation debugging info for the given character number",0
_cstring_g_dumpanims:		db "g_dumpAnims",0
_cstring_time_to_hold_the:		db "Time to hold the ",27h,"use",27h," button to activate use",0
_cstring_g_useholdtime:		db "g_useholdtime",0
_cstring_time_in_millisec:		db "Time in milliseconds that the player is unable to ",27h,"use",27h," after spawning",0
_cstring_g_useholdspawnde:		db "g_useholdspawndelay",0
_cstring_whether_red_cros:		db "Whether red crosshairs are enabled",0
_cstring_g_redcrosshairs:		db "g_redCrosshairs",0
_cstring_time_that_the_cl:		db "Time that the client think is delayed after mantling",0
_cstring_g_mantleblocktim:		db "g_mantleBlockTimeBuffer",0
_cstring_fog_color_that_w:		db "Fog color that was set in the most recent call to ",22h,"setexpfog",22h,0
_cstring_g_fogcolorreadon:		db "g_fogColorReadOnly",0
_cstring_fog_start_distan:		db "Fog start distance that was set in the most recent call to ",22h,"setexpfog",22h,0
_cstring_g_fogstartdistre:		db "g_fogStartDistReadOnly",0
_cstring_g_foghalfdistrea:		db "g_fogHalfDistReadOnly",0
_cstring_null_entthink:		db 15h,"NULL ent->think",0
_cstring_i_s:		db "#%i; ",22h,"%s",22h,0
_cstring_ground_i:		db "ground: #%i",0
_cstring_s_i__i:		db "%s (%i + %i)",0
_cstring__game_initializa:		db "------- Game Initialization -------",0ah,0
_cstring_gamename_s:		db "gamename: %s",0ah,0
_cstring_gamedate_s:		db "gamedate: %s",0ah,0
_cstring_warning_couldnt_:		db "WARNING: Couldn",27h,"t open logfile: %s",0ah,0
_cstring_0:		db "0",0
_cstring_winner:		db "winner",0
_cstring_:		db "-----------------------------------",0ah,0
_cstring_1:		db "------------------------------------------------------------",0ah,0
_cstring_initgame_s:		db "InitGame: %s",0ah,0
_cstring_not_logging_to_d:		db "Not logging to disk.",0ah,0
_cstring_server:		db "server:",0ah,0
_cstring_4i_s:		db "%4i: %s",0ah,0
_cstring_3iii_s:		db "%3i:%i%i %s",0
_cstring__shutdowngame_d_:		db "==== ShutdownGame (%d) ====",0ah,0
_cstring_shutdowngame:		db "ShutdownGame:",0ah,0
_cstring_c_game_votefaile:		db "%c ",22h,"GAME_VOTEFAILED",22h,0
_cstring_c_game_votepasse:		db "%c ",22h,"GAME_VOTEPASSED",22h,0
_cstring_s:		db "%s",0ah,0
_cstring_map_rotate:		db "map_rotate",0ah,0
_cstring_exitlevel_execut:		db "ExitLevel: executed",0ah,0
_cstring_off:		db "off",0
_cstring_all_ents:		db "all ents",0



;All constant floats and doubles:
SECTION .rdata
_float_10_00000000:		dd 0x41200000	; 10
_float_2_00000000:		dd 0x40000000	; 2
_float_4_00000000:		dd 0x40800000	; 4
_float_0_00100000:		dd 0x3a83126f	; 0.001

