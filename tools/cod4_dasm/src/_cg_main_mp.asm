;Imports of cg_main_mp:
	extern Com_DPrintf
	extern Com_FindSoundAliasNoErrors
	extern sprintf
	extern Com_FindSoundAlias
	extern Com_SurfaceTypeToName
	extern FS_ListFilesInLocation
	extern PhysPresetPrecache
	extern Q_stricmp
	extern Q_strncpyz
	extern FS_FreeFileList
	extern Com_PrintError
	extern DB_GetAllXAssetOfType
	extern R_RegisterModel
	extern Com_ClientDObjCreate
	extern Com_GetClientDObj
	extern BG_GetWeaponDef
	extern SL_FindString
	extern scr_const
	extern CL_GetConfigString
	extern sscanf
	extern atoi
	extern SEH_LocalizeTextMessage
	extern clients
	extern R_TrackStatistics
	extern SND_FadeAllSounds
	extern Ragdoll_Remove
	extern Phys_ObjDestroy
	extern Ragdoll_Shutdown
	extern Mantle_ShutdownAnims
	extern useFastFile
	extern CG_FreeClientDObjInfo
	extern CG_FreeEntityDObjInfo
	extern Com_FreeWeaponInfoMemory
	extern FX_KillAllEffects
	extern FX_ShutdownSystem
	extern DynEntCl_Shutdown
	extern XAnimFreeTree
	extern Scr_ShutdownGameStrings
	extern memset
	extern CG_ClearCompassPingData
	extern CG_ShutdownConsoleCommands
	extern Menus_FreeAllMemory
	extern CG_WeaponDObjHandle
	extern Com_SafeClientDObjFree
	extern BG_GetNumWeapons
	extern CL_ConsolePrint
	extern Info_ValueForKey
	extern SND_StopAmbient
	extern CL_PickSoundAlias
	extern SND_PlayAmbientAlias
	extern Cvar_RegisterBool
	extern Cvar_RegisterInt
	extern Cvar_RegisterFloat
	extern Cvar_RegisterEnum
	extern Cvar_RegisterVec2
	extern Cvar_RegisterColor
	extern Cvar_RegisterString
	extern CG_ViewRegisterDvars
	extern DynEntCl_RegisterDvars
	extern CG_OffhandRegisterDvars
	extern CG_CompassRegisterDvars
	extern CG_AmmoCounterRegisterDvars
	extern CG_RegisterVisionSetsDvars
	extern CG_RegisterScoreboardDvars
	extern CG_HudElemRegisterDvars
	extern CG_ClientSideEffectsRegisterDvars
	extern CG_VehRegisterDvars
	extern g_compassShowEnemies
	extern BG_RegisterDvars
	extern Com_PickSoundAliasFromList
	extern SND_PlaySoundAlias
	extern SND_AddLengthNotify
	extern SND_StopSoundAliasOnEnt
	extern SND_AddPlayFXSoundAlias
	extern SND_StopSoundsOnEnt
	extern AnglesToAxis
	extern AxisCopy
	extern Hunk_AllocInternal
	extern ragdoll_enable
	extern Com_Printf
	extern FX_KillEffectDef
	extern FX_RewindTo
	extern ByteToDir
	extern Vec3Basis_RightHanded
	extern FX_PlayOrientedEffect
	extern floorf
	extern CL_SubtitlePrint
	extern CG_CopyClientSideSoundEntityOrientation
	extern SND_PlaySoundAliasAsMaster
	extern CG_Veh_Init
	extern CG_ClearOverheadFade
	extern Ragdoll_Init
	extern Phys_Init
	extern CL_SetStance
	extern CL_SetADS
	extern CG_ParseServerInfo
	extern CG_ParseCodInfo
	extern UI_LoadIngameMenus
	extern SCR_UpdateLoadScreen
	extern Material_RegisterHandle
	extern CL_RegisterFont
	extern CG_AntiBurnInHUD_RegisterDvars
	extern CG_InitConsoleCommands
	extern CL_GetScreenDimensions
	extern com_sv_running
	extern bg_lastParsedWeaponIndex
	extern CG_SetupWeaponDef
	extern CGScr_LoadAnimTrees
	extern bgs
	extern BG_LoadAnim
	extern XAnimCreateTree
	extern CG_LoadingString
	extern CL_CM_LoadMap
	extern Menu_Setup
	extern Com_StripExtension
	extern FX_InitSystem
	extern FX_RegisterDefaultEffect
	extern CG_RegisterScoreboardGraphics
	extern CG_RegisterItems
	extern FX_Register
	extern BG_LoadShellShockDvars
	extern BG_GetShellshockParms
	extern BG_SetShellShockParmsFromDvars
	extern CG_RegisterImpactEffects
	extern UI_LoadMenus
	extern UI_AddMenuList
	extern CL_GetLocalClientActiveCount
	extern Menus_FindByName
	extern CG_InitLocalEntities
	extern DynEntCl_InitEntities
	extern CG_SetConfigValues
	extern CG_NorthDirectionChanged
	extern CG_ParseFog
	extern R_InitPrimaryLights
	extern R_ClearShadowedPrimaryLightHistory
	extern AimTarget_Init
	extern AimAssist_Init
	extern CG_StartClientSideEffects
	extern Com_Error
	extern CL_LoadSoundAliases
	extern Com_SetWeaponInfoMemory
	extern BG_ClearWeaponDef
	extern Mantle_CreateAnims
	extern SND_StopSounds
	extern LoadWorld
	extern GScr_LoadConsts
	extern BG_LoadPenetrationDepthTable

;Exports of cg_main_mp:
	global g_mapLoaded
	global g_ambientStarted
	global cg_drawMaterialNames
	global snd_drawInfoStrings
	global cg_drawFpsNames
	global CG_RegisterSurfaceTypeSounds
	global CG_RegisterPhysicsSounds_LoadObj
	global CG_RegisterPhysicsSounds_FastFile
	global CG_GetXModel
	global CG_CreateDObj
	global CG_GetDObj
	global CG_PlayAnimScriptSoundAlias
	global CG_AttachWeapon
	global CG_InitVote
	global CG_Shutdown
	global CG_FreeWeapons
	global CG_GameMessage
	global CG_GetClientNum
	global CG_StartAmbient
	global CG_RegisterDvars
	global CG_PlaySoundAlias
	global CG_RegisterSounds
	global CG_StopSoundAlias
	global CG_AddFXSoundAlias
	global CG_BoldGameMessage
	global CG_StopSoundsOnEnt
	global CG_GetDObjOrientation
	global Hunk_AllocXAnimClient
	global CG_GetWeaponAttachBone
	global CG_IsRagdollTrajectory
	global CG_PlayClientSoundAlias
	global CG_PlayEntitySoundAlias
	global CG_PlaySoundAliasByName
	global CG_RestartSmokeGrenades
	global CG_GetPredictedPlayerState
	global CG_SubtitleSndLengthNotify
	global CG_GetSoundEntityOrientation
	global CG_PlayClientSoundAliasByName
	global CG_StopClientSoundAliasByName
	global CG_PlaySoundAliasAsMasterByName
	global CG_ShouldPlaySoundOnLocalClient
	global CG_Init
	global cgArray
	global cgMedia
	global cg_entitiesArray
	global cg_fov
	global cg_debugInfoCornerOffset
	global cg_drawFPS
	global cg_drawFPSLabels
	global cg_drawMaterial
	global cg_drawScriptUsage
	global cg_drawSnapshot
	global cgsArray
	global snd_drawInfo
	global cg_hudDamageIconHeight
	global cg_hudDamageIconInScope
	global cg_hudDamageIconOffset
	global cg_hudDamageIconWidth
	global cg_hudGrenadeIconEnabledFlash
	global cg_hudGrenadeIconHeight
	global cg_hudGrenadeIconInScope
	global cg_hudGrenadeIconMaxHeight
	global cg_hudGrenadeIconMaxRangeFlash
	global cg_hudGrenadeIconMaxRangeFrag
	global cg_hudGrenadeIconOffset
	global cg_hudGrenadeIconWidth
	global cg_hudGrenadePointerHeight
	global cg_hudGrenadePointerPivot
	global cg_hudGrenadePointerPulseFreq
	global cg_hudGrenadePointerPulseMax
	global cg_hudGrenadePointerPulseMin
	global cg_hudGrenadePointerWidth
	global cg_crosshairAlpha
	global cg_crosshairAlphaMin
	global cg_crosshairDynamic
	global cg_crosshairEnemyColor
	global cg_debug_overlay_viewport
	global cg_drawCrosshair
	global cg_drawGun
	global cg_drawTurretCrosshair
	global cg_drawpaused
	global cg_enemyNameFadeIn
	global cg_friendlyNameFadeIn
	global cg_paused
	global cg_debugEvents
	global cg_footsteps
	global cg_laserEndOffset
	global cg_laserFlarePct
	global cg_laserLight
	global cg_laserLightBeginOffset
	global cg_laserLightBodyTweak
	global cg_laserLightEndOffset
	global cg_laserLightRadius
	global cg_laserRadius
	global cg_laserRange
	global cg_laserRangePlayer
	global cg_tracerLength
	global cg_hudDamageIconTime
	global cg_blood
	global cg_brass
	global cg_firstPersonTracerChance
	global cg_gun_move_f
	global cg_gun_move_minspeed
	global cg_gun_move_r
	global cg_gun_move_rate
	global cg_gun_move_u
	global cg_gun_ofs_f
	global cg_gun_ofs_r
	global cg_gun_ofs_u
	global cg_gun_x
	global cg_gun_y
	global cg_gun_z
	global cg_laserForceOn
	global cg_marks_ents_player_only
	global cg_tracerChance
	global cg_tracerScale
	global cg_tracerScaleDistRange
	global cg_tracerScaleMinDist
	global cg_tracerScrewDist
	global cg_tracerScrewRadius
	global cg_tracerSpeed
	global cg_tracerWidth
	global cg_weaponCycleDelay
	global cg_weaponsArray
	global overrideNVGModelWithKnife
	global cgDC
	global cg_centertime
	global cg_chatHeight
	global cg_chatTime
	global cg_descriptiveText
	global cg_draw2D
	global cg_drawCrosshairNames
	global cg_drawFriendlyNames
	global cg_drawSpectatorMessages
	global cg_drawThroughWalls
	global cg_enemyNameFadeOut
	global cg_friendlyNameFadeOut
	global cg_hudChatIntermissionPosition
	global cg_hudChatPosition
	global cg_hudSayPosition
	global cg_hudVotePosition
	global cg_minicon
	global cg_overheadIconSize
	global cg_overheadNamesFarDist
	global cg_overheadNamesFarScale
	global cg_overheadNamesFont
	global cg_overheadNamesGlow
	global cg_overheadNamesMaxDist
	global cg_overheadNamesNearDist
	global cg_overheadNamesSize
	global cg_overheadRankSize
	global cg_drawLagometer
	global cg_nopredict
	global cg_synchronousClients
	global cg_entityOriginArray
	global cg_connectionIconSize
	global cg_constantSizeHeadIcons
	global cg_cursorHints
	global cg_debugPosition
	global cg_developer
	global cg_drawBreathHint
	global cg_drawCrosshairNamesPosX
	global cg_drawCrosshairNamesPosY
	global cg_drawHealth
	global cg_drawMantleHint
	global cg_drawShellshock
	global cg_dumpAnims
	global cg_errorDecay
	global cg_fovMin
	global cg_fovScale
	global cg_gameBoldMessageWidth
	global cg_gameMessageWidth
	global cg_headIconMinScreenRadius
	global cg_hintFadeTime
	global cg_hudProneY
	global cg_hudStanceFlash
	global cg_hudStanceHintPrints
	global cg_invalidCmdHintBlinkInterval
	global cg_invalidCmdHintDuration
	global cg_mapLocationSelectionCursorSpeed
	global cg_predictItems
	global cg_scriptIconSize
	global cg_showmiss
	global cg_subtitleMinTime
	global cg_subtitleWidthStandard
	global cg_subtitleWidthWidescreen
	global cg_subtitles
	global cg_teamChatsOnly
	global cg_thirdPerson
	global cg_thirdPersonAngle
	global cg_thirdPersonRange
	global cg_viewZSmoothingMax
	global cg_viewZSmoothingMin
	global cg_viewZSmoothingTime
	global cg_voiceIconSize
	global cg_weaponHintsCoD1Style
	global cg_weaponleftbone
	global cg_weaponrightbone
	global cg_youInKillCamSize


SECTION .text


;CG_RegisterSurfaceTypeSounds(char const*, snd_alias_list_t**)
CG_RegisterSurfaceTypeSounds:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x12c
	mov [ebp-0x120], eax
	mov ebx, edx
	cmp byte [eax], 0x0
	jnz CG_RegisterSurfaceTypeSounds_10
	mov dword [esp+0x4], _cstring_warning_no_alias
	mov dword [esp], 0x9
	call Com_DPrintf
	mov dword [esp], _cstring_collision_defaul
	call Com_FindSoundAliasNoErrors
	mov edx, 0x1
CG_RegisterSurfaceTypeSounds_20:
	mov [ebx+edx*4-0x4], eax
	add edx, 0x1
	cmp edx, 0x1e
	jnz CG_RegisterSurfaceTypeSounds_20
	add esp, 0x12c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_RegisterSurfaceTypeSounds_10:
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_s_default
	lea edi, [ebp-0x118]
	mov [esp], edi
	call sprintf
	mov [esp], edi
	call Com_FindSoundAlias
	mov [ebp-0x11c], eax
	xor esi, esi
CG_RegisterSurfaceTypeSounds_30:
	mov [esp], esi
	call Com_SurfaceTypeToName
	mov [esp+0xc], eax
	mov eax, [ebp-0x120]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_s_s
	mov [esp], edi
	call sprintf
	mov [esp], edi
	call Com_FindSoundAliasNoErrors
	test eax, eax
	cmovz eax, [ebp-0x11c]
	mov [ebx], eax
	add esi, 0x1
	add ebx, 0x4
	cmp esi, 0x1d
	jnz CG_RegisterSurfaceTypeSounds_30
	add esp, 0x12c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;CG_RegisterPhysicsSounds_LoadObj()
CG_RegisterPhysicsSounds_LoadObj:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xccc
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x3b
	lea eax, [ebp-0x1c]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _cstring_null
	mov dword [esp], _cstring_physic
	call FS_ListFilesInLocation
	mov [ebp-0xcac], eax
	mov eax, [ebp-0x1c]
	cmp eax, 0x32
	jg CG_RegisterPhysicsSounds_LoadObj_10
	test eax, eax
	jle CG_RegisterPhysicsSounds_LoadObj_20
	mov dword [ebp-0xcb4], 0x0
	xor esi, esi
	mov edx, [ebp-0xcb4]
CG_RegisterPhysicsSounds_LoadObj_70:
	mov ecx, [ebp-0xcac]
	mov eax, [ecx+edx*4]
	test eax, eax
	jz CG_RegisterPhysicsSounds_LoadObj_30
	mov dword [esp+0x4], Hunk_AllocPhysPresetPrecache
	mov [esp], eax
	call PhysPresetPrecache
	mov [ebp-0xcb0], eax
	test esi, esi
	jle CG_RegisterPhysicsSounds_LoadObj_40
	xor edi, edi
	lea ebx, [ebp-0xc9c]
CG_RegisterPhysicsSounds_LoadObj_60:
	mov [esp+0x4], ebx
	mov edx, [ebp-0xcb0]
	mov eax, [edx+0x1c]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jz CG_RegisterPhysicsSounds_LoadObj_50
	add edi, 0x1
	add ebx, 0x40
	cmp edi, esi
	jnz CG_RegisterPhysicsSounds_LoadObj_60
CG_RegisterPhysicsSounds_LoadObj_40:
	mov eax, [ebp-0xcb0]
	mov [eax+0x4], esi
	lea edx, [esi*8]
	sub edx, esi
	lea edx, [esi+edx*4]
	lea edx, [edx*4+cgMedia+0x1068]
	mov ecx, [ebp-0xcb0]
	mov eax, [ecx+0x1c]
	call CG_RegisterSurfaceTypeSounds
	mov dword [esp+0x8], 0x40
	mov edx, [ebp-0xcb0]
	mov eax, [edx+0x1c]
	mov [esp+0x4], eax
	mov eax, esi
	shl eax, 0x6
	lea ecx, [ebp-0xc9c]
	lea eax, [ecx+eax]
	mov [esp], eax
	call Q_strncpyz
	add esi, 0x1
CG_RegisterPhysicsSounds_LoadObj_30:
	add dword [ebp-0xcb4], 0x1
	mov eax, [ebp-0xcb4]
	cmp eax, [ebp-0x1c]
	jge CG_RegisterPhysicsSounds_LoadObj_20
	mov edx, eax
	jmp CG_RegisterPhysicsSounds_LoadObj_70
CG_RegisterPhysicsSounds_LoadObj_20:
	mov dword [esp+0x4], 0x0
	mov edx, [ebp-0xcac]
	mov [esp], edx
	call FS_FreeFileList
	add esp, 0xccc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_RegisterPhysicsSounds_LoadObj_50:
	mov ecx, [ebp-0xcb0]
	mov [ecx+0x4], edi
	jmp CG_RegisterPhysicsSounds_LoadObj_30
CG_RegisterPhysicsSounds_LoadObj_10:
	mov dword [esp+0xc], 0x32
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_exceeded_a
	mov dword [esp], 0x14
	call Com_PrintError
	add esp, 0xccc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;CG_RegisterPhysicsSounds_FastFile()
CG_RegisterPhysicsSounds_FastFile:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xd8c
	mov dword [esp+0x8], 0x32
	lea eax, [ebp-0xe0]
	mov [esp+0x4], eax
	mov dword [esp], 0x1
	call DB_GetAllXAssetOfType
	mov [ebp-0xd74], eax
	test eax, eax
	jle CG_RegisterPhysicsSounds_FastFile_10
	mov dword [ebp-0xd70], 0x0
	mov dword [ebp-0xd6c], 0x0
	lea eax, [ebp-0xd60]
	mov [ebp-0xd78], eax
	mov dword [ebp-0xd7c], cgMedia+0x1068
	mov eax, [ebp-0xd70]
CG_RegisterPhysicsSounds_FastFile_50:
	mov edi, [ebp+eax*4-0xe0]
	mov eax, [ebp-0xd6c]
	test eax, eax
	jle CG_RegisterPhysicsSounds_FastFile_20
	xor esi, esi
	lea ebx, [ebp-0xd60]
CG_RegisterPhysicsSounds_FastFile_40:
	mov [esp+0x4], ebx
	mov eax, [edi+0x1c]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jz CG_RegisterPhysicsSounds_FastFile_30
	add esi, 0x1
	add ebx, 0x40
	cmp esi, [ebp-0xd6c]
	jnz CG_RegisterPhysicsSounds_FastFile_40
CG_RegisterPhysicsSounds_FastFile_20:
	mov eax, [ebp-0xd6c]
	mov [edi+0x4], eax
	mov eax, [edi+0x1c]
	mov edx, [ebp-0xd7c]
	call CG_RegisterSurfaceTypeSounds
	mov dword [esp+0x8], 0x40
	mov eax, [edi+0x1c]
	mov [esp+0x4], eax
	mov eax, [ebp-0xd78]
	mov [esp], eax
	call Q_strncpyz
	add dword [ebp-0xd6c], 0x1
	add dword [ebp-0xd7c], 0x74
	add dword [ebp-0xd78], 0x40
CG_RegisterPhysicsSounds_FastFile_60:
	add dword [ebp-0xd70], 0x1
	mov eax, [ebp-0xd70]
	cmp [ebp-0xd74], eax
	jnz CG_RegisterPhysicsSounds_FastFile_50
CG_RegisterPhysicsSounds_FastFile_10:
	add esp, 0xd8c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_RegisterPhysicsSounds_FastFile_30:
	mov [edi+0x4], esi
	jmp CG_RegisterPhysicsSounds_FastFile_60


;CG_GetXModel(char const*)
CG_GetXModel:
	push ebp
	mov ebp, esp
	pop ebp
	jmp R_RegisterModel
	nop


;CG_CreateDObj(DObjModel_s*, unsigned short, XAnimTree_s*, int, int, clientInfo_t*)
CG_CreateDObj:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov ebx, [ebp+0x18]
	movzx edx, word [ebp+0xc]
	mov [esp+0x10], ebx
	mov eax, [ebp+0x14]
	mov [esp+0xc], eax
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Com_ClientDObjCreate
	mov eax, [ebp+0x1c]
	mov eax, [eax+0x8]
	lea eax, [eax+eax*2]
	lea ebx, [ebx+ebx*2]
	shl ebx, 0xc
	lea eax, [ebx+eax*4]
	lea ecx, [eax+cg_entityOriginArray]
	mov edx, 0x48000000
	mov [eax+cg_entityOriginArray], edx
	mov [ecx+0x4], edx
	mov [ecx+0x8], edx
	add esp, 0x24
	pop ebx
	pop ebp
	ret


;CG_GetDObj(int, int)
CG_GetDObj:
	push ebp
	mov ebp, esp
	pop ebp
	jmp Com_GetClientDObj
	nop


;CG_PlayAnimScriptSoundAlias(int, snd_alias_list_t*)
CG_PlayAnimScriptSoundAlias:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov edx, [cgArray+0x24]
	mov eax, [ebp+0xc]
	mov [esp+0xc], eax
	lea eax, [edx+0x28]
	mov [esp+0x8], eax
	mov eax, [edx+0xe8]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_PlaySoundAlias
	leave
	ret
	nop


;CG_AttachWeapon(DObjModel_s*, unsigned short, clientInfo_t*)
CG_AttachWeapon:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edi, [ebp+0x10]
	movzx ebx, word [ebp+0xc]
	mov eax, [edi+0x4ac]
	test eax, eax
	jnz CG_AttachWeapon_10
CG_AttachWeapon_50:
	movzx eax, bx
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_AttachWeapon_10:
	mov [esp], eax
	call BG_GetWeaponDef
	mov esi, eax
	movzx eax, byte [edi+0x4b0]
	mov edx, [esi+eax*4+0x2bc]
	test edx, edx
	jz CG_AttachWeapon_20
	cmp byte [edi+0x4c8], 0x0
	jnz CG_AttachWeapon_20
	movzx eax, bx
	mov ecx, [ebp+0x8]
	lea eax, [ecx+eax*8]
	mov [ebp-0x1c], eax
	mov [eax], edx
	cmp dword [esi+0x12c], 0x1
	jz CG_AttachWeapon_30
	mov eax, [edi+0x3f0]
	test eax, eax
	jz CG_AttachWeapon_40
	mov eax, [cg_weaponleftbone]
	mov eax, [eax+0xc]
CG_AttachWeapon_60:
	mov [esp], eax
	call SL_FindString
	movzx eax, ax
CG_AttachWeapon_70:
	mov edx, [ebp-0x1c]
	mov [edx+0x4], ax
	mov byte [edx+0x6], 0x0
	add ebx, 0x1
CG_AttachWeapon_20:
	mov edx, [esi+0x308]
	test edx, edx
	jz CG_AttachWeapon_50
	cmp byte [edi+0x4c9], 0x0
	jz CG_AttachWeapon_50
	movzx eax, bx
	mov ecx, [ebp+0x8]
	lea eax, [ecx+eax*8]
	mov [eax], edx
	mov edx, scr_const
	movzx edx, word [edx+0x9c]
	mov [eax+0x4], dx
	mov byte [eax+0x6], 0x0
	add ebx, 0x1
	movzx eax, bx
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_AttachWeapon_40:
	mov eax, [cg_weaponrightbone]
	mov eax, [eax+0xc]
	jmp CG_AttachWeapon_60
CG_AttachWeapon_30:
	mov eax, scr_const
	movzx eax, word [eax+0x9c]
	jmp CG_AttachWeapon_70
	nop


;CG_InitVote(int)
CG_InitVote:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov ebx, [ebp+0x8]
	mov dword [cgsArray+0x188], 0x0
	mov dword [esp+0x4], 0xd
	mov [esp], ebx
	call CL_GetConfigString
	lea edx, [ebp-0x10]
	mov [esp+0xc], edx
	lea edx, [ebp-0xc]
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_d_d
	mov [esp], eax
	call sscanf
	cmp eax, 0x2
	jz CG_InitVote_10
CG_InitVote_20:
	mov dword [esp+0x4], 0xf
	mov [esp], ebx
	call CL_GetConfigString
	mov [esp], eax
	call atoi
	mov [cgsArray+0x18c], eax
	mov dword [esp+0x4], 0x10
	mov [esp], ebx
	call CL_GetConfigString
	mov [esp], eax
	call atoi
	mov [cgsArray+0x190], eax
	mov dword [esp+0x4], 0xe
	mov [esp], ebx
	call CL_GetConfigString
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _cstring_vote_string
	mov [esp], eax
	call SEH_LocalizeTextMessage
	mov dword [esp+0x8], 0x100
	mov [esp+0x4], eax
	mov dword [esp], cgsArray+0x194
	call Q_strncpyz
	add esp, 0x24
	pop ebx
	pop ebp
	ret
CG_InitVote_10:
	mov eax, clients
	mov eax, [eax+0x256b4]
	cmp eax, [ebp-0x10]
	jnz CG_InitVote_20
	mov eax, [ebp-0xc]
	mov [cgsArray+0x188], eax
	jmp CG_InitVote_20


;CG_Shutdown(int)
CG_Shutdown:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0x8]
	mov dword [esp], 0x0
	call R_TrackStatistics
	mov dword [esp+0x4], 0x0
	mov dword [esp], 0x3f800000
	call SND_FadeAllSounds
	xor esi, esi
	mov ebx, cg_entitiesArray
CG_Shutdown_30:
	mov edx, [ebx+0x10]
	lea eax, [edx+0x1]
	cmp eax, 0x1
	jbe CG_Shutdown_10
	mov [esp], edx
	call Ragdoll_Remove
	mov dword [ebx+0x10], 0x0
CG_Shutdown_10:
	mov edx, [ebx+0x18]
	lea eax, [edx+0x1]
	cmp eax, 0x1
	jbe CG_Shutdown_20
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Phys_ObjDestroy
	mov dword [ebx+0x18], 0x0
CG_Shutdown_20:
	add esi, 0x1
	add ebx, 0x1dc
	cmp esi, 0x400
	jnz CG_Shutdown_30
	call Ragdoll_Shutdown
	mov byte [g_ambientStarted], 0x0
	mov byte [g_mapLoaded], 0x0
	call Mantle_ShutdownAnims
	mov eax, useFastFile
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz CG_Shutdown_40
CG_Shutdown_100:
	mov [esp], edi
	call CG_FreeWeapons
	mov [esp], edi
	call CG_FreeClientDObjInfo
	mov [esp], edi
	call CG_FreeEntityDObjInfo
	mov dword [esp], 0x2
	call Com_FreeWeaponInfoMemory
	mov [esp], edi
	call FX_KillAllEffects
	mov [esp], edi
	call FX_ShutdownSystem
	mov [esp], edi
	call DynEntCl_Shutdown
	mov ebx, cgArray
	mov esi, cgArray+0x13300
CG_Shutdown_60:
	mov eax, [ebx+0xea3dc]
	test eax, eax
	jz CG_Shutdown_50
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call XAnimFreeTree
	mov dword [ebx+0xea3dc], 0x0
CG_Shutdown_50:
	add ebx, 0x4cc
	cmp esi, ebx
	jnz CG_Shutdown_60
	mov ebx, cgsArray
	mov esi, cgsArray+0x2660
CG_Shutdown_80:
	mov eax, [ebx+0x186c]
	test eax, eax
	jz CG_Shutdown_70
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call XAnimFreeTree
	mov dword [ebx+0x186c], 0x0
CG_Shutdown_70:
	add ebx, 0x4cc
	cmp esi, ebx
	jnz CG_Shutdown_80
	mov ebx, [cgsArray+0x1c]
	test ebx, ebx
	jnz CG_Shutdown_90
	call Scr_ShutdownGameStrings
CG_Shutdown_90:
	mov dword [cgArray+0x24], 0x0
	mov dword [esp+0x8], 0xfd7ec
	mov dword [esp+0x4], 0x0
	mov dword [esp], cgArray
	call memset
	call CG_ClearCompassPingData
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp CG_ShutdownConsoleCommands
CG_Shutdown_40:
	lea edx, [edi+edi*4]
	shl edx, 0x7
	mov eax, edx
	sub eax, edi
	lea eax, [edx+eax*8+cgDC]
	mov [esp], eax
	call Menus_FreeAllMemory
	jmp CG_Shutdown_100
	nop


;CG_FreeWeapons(int)
CG_FreeWeapons:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0x8]
	mov ebx, 0x1
	mov esi, cg_weaponsArray+0x44
	jmp CG_FreeWeapons_10
CG_FreeWeapons_30:
	mov [esp], ebx
	call CG_WeaponDObjHandle
	mov [esp+0x4], edi
	mov [esp], eax
	call Com_SafeClientDObjFree
	mov eax, [esi+0x2c]
	test eax, eax
	jz CG_FreeWeapons_20
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call XAnimFreeTree
	mov dword [esi+0x2c], 0x0
CG_FreeWeapons_20:
	add ebx, 0x1
	add esi, 0x44
CG_FreeWeapons_10:
	call BG_GetNumWeapons
	cmp ebx, eax
	jb CG_FreeWeapons_30
	mov eax, edi
	shl eax, 0x9
	shl edi, 0xd
	lea eax, [eax+edi+cg_weaponsArray]
	mov dword [esp+0x8], 0x2200
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call memset
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;CG_GameMessage(int, char const*)
CG_GameMessage:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	mov dword [esp+0x14], 0x0
	mov eax, [cg_gameMessageWidth]
	mov eax, [eax+0xc]
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x0
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x2
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CL_ConsolePrint
	leave
	ret


;CG_GetClientNum(int)
CG_GetClientNum:
	push ebp
	mov ebp, esp
	mov eax, [cgArray]
	pop ebp
	ret


;CG_StartAmbient(int)
CG_StartAmbient:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov dword [esp+0x4], 0x335
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CL_GetConfigString
	mov ebx, eax
	mov dword [esp+0x4], _cstring_n
	mov [esp], eax
	call Info_ValueForKey
	mov [ebp-0x1c], eax
	mov dword [esp+0x4], _cstring_t
	mov [esp], ebx
	call Info_ValueForKey
	mov ebx, [cgArray+0x46128]
	mov [esp], eax
	call atoi
	mov esi, eax
	sub esi, ebx
	js CG_StartAmbient_10
	test ebx, ebx
	jz CG_StartAmbient_10
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, [ebp-0x1c]
	repne scasb
	cmp ecx, 0xfffffffe
	jnz CG_StartAmbient_20
CG_StartAmbient_30:
	mov dword [esp+0x8], 0x1
	mov [esp+0x4], esi
	mov eax, [ebp+0x8]
	mov [esp], eax
	call SND_StopAmbient
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_StartAmbient_10:
	xor esi, esi
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, [ebp-0x1c]
	repne scasb
	cmp ecx, 0xfffffffe
	jz CG_StartAmbient_30
CG_StartAmbient_20:
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call CL_PickSoundAlias
	mov dword [esp+0xc], 0x1
	mov [esp+0x8], esi
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call SND_PlayAmbientAlias
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;CG_RegisterDvars()
CG_RegisterDvars:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov dword [esp+0xc], _cstring_draw_the_view_mo
	mov dword [esp+0x8], 0x80
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_cg_drawgun
	call Cvar_RegisterBool
	mov [cg_drawGun], eax
	mov dword [esp+0x14], _cstring_draw_cursor_hint
	mov dword [esp+0x10], 0x1
	mov dword [esp+0xc], 0x4
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x4
	mov dword [esp], _cstring_cg_cursorhints
	call Cvar_RegisterInt
	mov [cg_cursorHints], eax
	mov dword [esp+0xc], _cstring_draw_weapon_hint
	mov dword [esp+0x8], 0x1000
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_cg_weaponhintsco
	call Cvar_RegisterBool
	mov [cg_weaponHintsCoD1Style], eax
	mov dword [esp+0x14], _cstring_time_in_millisec
	mov dword [esp+0x10], 0x1
	mov dword [esp+0xc], 0x7fffffff
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x64
	mov dword [esp], _cstring_cg_hintfadetime
	call Cvar_RegisterInt
	mov [cg_hintFadeTime], eax
	mov dword [esp+0x14], _cstring_the_field_of_vie
	mov dword [esp+0x10], 0x1
	mov dword [esp+0xc], 0x42a00000
	mov eax, 0x42820000
	mov [esp+0x8], eax
	mov [esp+0x4], eax
	mov dword [esp], _cstring_cg_fov
	call Cvar_RegisterFloat
	mov [cg_fov], eax
	mov dword [esp+0x14], _cstring_scale_applied_to
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x40000000
	mov dword [esp+0x8], 0x3e4ccccd
	mov dword [esp+0x4], 0x3f800000
	mov dword [esp], _cstring_cg_fovscale
	call Cvar_RegisterFloat
	mov [cg_fovScale], eax
	mov dword [esp+0x14], _cstring_the_minimum_poss
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x43200000
	mov dword [esp+0x8], 0x3f800000
	mov dword [esp+0x4], 0x41200000
	mov dword [esp], _cstring_cg_fovmin
	call Cvar_RegisterFloat
	mov [cg_fovMin], eax
	mov dword [esp+0xc], _cstring_draw_2d_screen_e
	mov dword [esp+0x8], 0x80
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_cg_draw2d
	call Cvar_RegisterBool
	mov [cg_draw2D], eax
	mov dword [esp+0xc], _cstring_draw_health_bar
	mov dword [esp+0x8], 0x80
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_cg_drawhealth
	call Cvar_RegisterBool
	mov [cg_drawHealth], eax
	mov dword [esp+0xc], _cstring_draw_a_hold_brea
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_cg_drawbreathhin
	call Cvar_RegisterBool
	mov [cg_drawBreathHint], eax
	mov dword [esp+0xc], _cstring_draw_a_press_key
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_cg_drawmantlehin
	call Cvar_RegisterBool
	mov [cg_drawMantleHint], eax
	mov dword [esp+0x10], _cstring_draw_frames_per_
	mov dword [esp+0xc], 0x1
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], cg_drawFpsNames
	mov dword [esp], _cstring_cg_drawfps
	call Cvar_RegisterEnum
	mov [cg_drawFPS], eax
	mov dword [esp+0xc], _cstring_draw_fps_info_la
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_cg_drawfpslabels
	call Cvar_RegisterBool
	mov [cg_drawFPSLabels], eax
	mov dword [esp+0x18], _cstring_offset_from_topr
	mov dword [esp+0x14], 0x1
	mov dword [esp+0x10], 0x44200000
	mov dword [esp+0xc], 0xc3480000
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_cg_debuginfocorn
	call Cvar_RegisterVec2
	mov [cg_debugInfoCornerOffset], eax
	mov dword [esp+0x10], _cstring_draw_debugging_i
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], snd_drawInfoStrings
	mov dword [esp], _cstring_snd_drawinfo
	call Cvar_RegisterEnum
	mov [snd_drawInfo], eax
	mov dword [esp+0xc], _cstring_draw_debugging_i1
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_cg_drawscriptusa
	call Cvar_RegisterBool
	mov [cg_drawScriptUsage], eax
	mov dword [esp+0x10], _cstring_draw_debugging_i2
	mov dword [esp+0xc], 0x80
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], cg_drawMaterialNames
	mov dword [esp], _cstring_cg_drawmaterial
	call Cvar_RegisterEnum
	mov [cg_drawMaterial], eax
	mov dword [esp+0xc], _cstring_draw_debugging_i3
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_cg_drawsnapshot
	call Cvar_RegisterBool
	mov [cg_drawSnapshot], eax
	mov dword [esp+0xc], _cstring_turn_on_weapon_c
	mov dword [esp+0x8], 0x81
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_cg_drawcrosshair
	call Cvar_RegisterBool
	mov [cg_drawCrosshair], eax
	mov dword [esp+0xc], _cstring_draw_a_cross_hai
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_cg_drawturretcro
	call Cvar_RegisterBool
	mov [cg_drawTurretCrosshair], eax
	mov dword [esp+0xc], _cstring_draw_the_name_of
	mov dword [esp+0x8], 0x81
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_cg_drawcrosshair1
	call Cvar_RegisterBool
	mov [cg_drawCrosshairNames], eax
	mov dword [esp+0x14], _cstring_virtual_screen_s
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x280
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x12c
	mov dword [esp], _cstring_cg_drawcrosshair2
	call Cvar_RegisterInt
	mov [cg_drawCrosshairNamesPosX], eax
	mov dword [esp+0x14], _cstring_virtual_screen_s
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x1e0
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0xb4
	mov dword [esp], _cstring_cg_drawcrosshair3
	call Cvar_RegisterInt
	mov [cg_drawCrosshairNamesPosY], eax
	mov dword [esp+0xc], _cstring_draw_shellshock_
	mov dword [esp+0x8], 0x80
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_cg_drawshellshoc
	call Cvar_RegisterBool
	mov [cg_drawShellshock], eax
	mov dword [esp+0xc], _cstring_enables_drawing_
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_cg_drawspectator
	call Cvar_RegisterBool
	mov [cg_drawSpectatorMessages], eax
	mov dword [esp+0x18], _cstring_the_background_c
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x3f800000
	mov dword [esp+0xc], 0x3f800000
	mov dword [esp+0x8], 0x3f800000
	mov dword [esp+0x4], 0x3f800000
	mov dword [esp], _cstring_cg_hudstanceflas
	call Cvar_RegisterColor
	mov [cg_hudStanceFlash], eax
	mov dword [esp+0xc], _cstring_draw_helpful_tex
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_cg_hudstancehint
	call Cvar_RegisterBool
	mov [cg_hudStanceHintPrints], eax
	mov dword [esp+0x14], _cstring_the_width_of_the
	mov dword [esp+0x10], 0x1
	mov esi, 0x44000000
	mov [esp+0xc], esi
	mov dword [esp+0x8], 0x0
	mov edi, 0x43000000
	mov [esp+0x4], edi
	mov dword [esp], _cstring_cg_huddamageicon
	call Cvar_RegisterFloat
	mov [cg_hudDamageIconWidth], eax
	mov dword [esp+0x14], _cstring_the_height_of_th
	mov dword [esp+0x10], 0x1
	mov [esp+0xc], esi
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x42800000
	mov dword [esp], _cstring_cg_huddamageicon1
	call Cvar_RegisterFloat
	mov [cg_hudDamageIconHeight], eax
	mov dword [esp+0x14], _cstring_the_offset_from_
	mov dword [esp+0x10], 0x1
	mov [esp+0xc], esi
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], edi
	mov dword [esp], _cstring_cg_huddamageicon2
	call Cvar_RegisterFloat
	mov [cg_hudDamageIconOffset], eax
	mov dword [esp+0x14], _cstring_the_amount_of_ti
	mov dword [esp+0x10], 0x1
	mov dword [esp+0xc], 0x7fffffff
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x7d0
	mov dword [esp], _cstring_cg_huddamageicon3
	call Cvar_RegisterInt
	mov [cg_hudDamageIconTime], eax
	mov dword [esp+0xc], _cstring_draw_damage_icon
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_cg_huddamageicon4
	call Cvar_RegisterBool
	mov [cg_hudDamageIconInScope], eax
	mov dword [esp+0x14], _cstring_the_minimum_dist
	mov dword [esp+0x10], 0x1080
	mov edi, 0x447a0000
	mov [esp+0xc], edi
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x437a0000
	mov dword [esp], _cstring_cg_hudgrenadeico
	call Cvar_RegisterFloat
	mov [cg_hudGrenadeIconMaxRangeFrag], eax
	mov dword [esp+0x14], _cstring_the_minimum_dist1
	mov dword [esp+0x10], 0x1080
	mov dword [esp+0xc], 0x44fa0000
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x43fa0000
	mov dword [esp], _cstring_cg_hudgrenadeico1
	call Cvar_RegisterFloat
	mov [cg_hudGrenadeIconMaxRangeFlash], eax
	mov dword [esp+0x14], _cstring_the_minimum_heig
	mov dword [esp+0x10], 0x1
	mov [esp+0xc], edi
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x42d00000
	mov dword [esp], _cstring_cg_hudgrenadeico2
	call Cvar_RegisterFloat
	mov [cg_hudGrenadeIconMaxHeight], eax
	mov dword [esp+0xc], _cstring_show_the_grenade
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_cg_hudgrenadeico3
	call Cvar_RegisterBool
	mov [cg_hudGrenadeIconInScope], eax
	mov dword [esp+0x14], _cstring_the_offset_from_1
	mov dword [esp+0x10], 0x1
	mov [esp+0xc], esi
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x42480000
	mov dword [esp], _cstring_cg_hudgrenadeico4
	call Cvar_RegisterFloat
	mov [cg_hudGrenadeIconOffset], eax
	mov dword [esp+0x14], _cstring_the_height_of_th1
	mov dword [esp+0x10], 0x1
	mov [esp+0xc], esi
	mov dword [esp+0x8], 0x0
	mov edi, 0x41c80000
	mov [esp+0x4], edi
	mov dword [esp], _cstring_cg_hudgrenadeico5
	call Cvar_RegisterFloat
	mov [cg_hudGrenadeIconHeight], eax
	mov dword [esp+0x14], _cstring_the_width_of_the1
	mov dword [esp+0x10], 0x1
	mov [esp+0xc], esi
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], edi
	mov dword [esp], _cstring_cg_hudgrenadeico6
	call Cvar_RegisterFloat
	mov [cg_hudGrenadeIconWidth], eax
	mov dword [esp+0xc], _cstring_show_the_grenade1
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_cg_hudgrenadeico7
	call Cvar_RegisterBool
	mov [cg_hudGrenadeIconEnabledFlash], eax
	mov dword [esp+0x14], _cstring_the_height_of_th2
	mov dword [esp+0x10], 0x1
	mov [esp+0xc], esi
	mov dword [esp+0x8], 0x0
	mov ebx, 0x41400000
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_cg_hudgrenadepoi
	call Cvar_RegisterFloat
	mov [cg_hudGrenadePointerHeight], eax
	mov dword [esp+0x14], _cstring_the_width_of_the2
	mov dword [esp+0x10], 0x1
	mov [esp+0xc], esi
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], edi
	mov dword [esp], _cstring_cg_hudgrenadepoi1
	call Cvar_RegisterFloat
	mov [cg_hudGrenadePointerWidth], eax
	mov dword [esp+0x18], _cstring_the_pivot_point_
	mov dword [esp+0x14], 0x1
	mov [esp+0x10], esi
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x41d80000
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_cg_hudgrenadepoi2
	call Cvar_RegisterVec2
	mov [cg_hudGrenadePointerPivot], eax
	mov dword [esp+0x14], _cstring_the_number_of_ti
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x42480000
	mov dword [esp+0x8], 0x3dcccccd
	mov dword [esp+0x4], 0x3fd9999a
	mov dword [esp], _cstring_cg_hudgrenadepoi3
	call Cvar_RegisterFloat
	mov [cg_hudGrenadePointerPulseFreq], eax
	mov dword [esp+0x14], _cstring_the_maximum_alph
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x40400000
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x3feccccd
	mov dword [esp], _cstring_cg_hudgrenadepoi4
	call Cvar_RegisterFloat
	mov [cg_hudGrenadePointerPulseMax], eax
	mov dword [esp+0x14], _cstring_the_minimum_alph
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x3f800000
	mov dword [esp+0x8], 0xc0400000
	mov dword [esp+0x4], 0x3e99999a
	mov dword [esp], _cstring_cg_hudgrenadepoi5
	call Cvar_RegisterFloat
	mov [cg_hudGrenadePointerPulseMin], eax
	mov dword [esp+0x18], _cstring_position_of_the_
	mov dword [esp+0x14], 0x1
	mov dword [esp+0x10], 0x44200000
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x434c0000
	mov esi, 0x40a00000
	mov [esp+0x4], esi
	mov dword [esp], _cstring_cg_hudchatpositi
	call Cvar_RegisterVec2
	mov [cg_hudChatPosition], eax
	mov dword [esp+0x18], _cstring_position_of_the_1
	mov dword [esp+0x14], 0x1
	mov dword [esp+0x10], 0x44200000
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x42dc0000
	mov [esp+0x4], esi
	mov dword [esp], _cstring_cg_hudchatinterm
	call Cvar_RegisterVec2
	mov [cg_hudChatIntermissionPosition], eax
	mov dword [esp+0x18], _cstring_position_of_the_2
	mov dword [esp+0x14], 0x1
	mov dword [esp+0x10], 0x44200000
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x43340000
	mov [esp+0x4], esi
	mov dword [esp], _cstring_cg_hudsaypositio
	call Cvar_RegisterVec2
	mov [cg_hudSayPosition], eax
	mov dword [esp+0x18], _cstring_position_of_the_3
	mov dword [esp+0x14], 0x1
	mov dword [esp+0x10], 0x44200000
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x435c0000
	mov [esp+0x4], esi
	mov dword [esp], _cstring_cg_hudvotepositi
	call Cvar_RegisterVec2
	mov [cg_hudVotePosition], eax
	mov dword [esp+0xc], _cstring_enable_the_lagom
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_cg_drawlagometer
	call Cvar_RegisterBool
	mov [cg_drawLagometer], eax
	mov dword [esp+0x14], _cstring_virtual_screen_y
	mov dword [esp+0x10], 0x1
	mov dword [esp+0xc], 0x461c4000
	mov dword [esp+0x8], 0xc61c4000
	mov dword [esp+0x4], 0xc3200000
	mov dword [esp], _cstring_cg_hudproney
	call Cvar_RegisterFloat
	mov [cg_hudProneY], eax
	mov dword [esp+0x14], _cstring_speed_of_the_cur
	mov dword [esp+0x10], 0x1
	mov dword [esp+0xc], 0x3f800000
	mov dword [esp+0x8], 0x3a83126f
	mov dword [esp+0x4], 0x3f19999a
	mov dword [esp], _cstring_cg_maplocationse
	call Cvar_RegisterFloat
	mov [cg_mapLocationSelectionCursorSpeed], eax
	mov dword [esp+0x14], _cstring_the_delay_after_
	mov dword [esp+0x10], 0x1
	mov dword [esp+0xc], 0x7fffffff
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_cg_weaponcyclede
	call Cvar_RegisterInt
	mov [cg_weaponCycleDelay], eax
	mov dword [esp+0x14], _cstring_the_alpha_value_
	mov dword [esp+0x10], 0x81
	mov dword [esp+0xc], 0x3f800000
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x3f800000
	mov dword [esp], _cstring_cg_crosshairalph
	call Cvar_RegisterFloat
	mov [cg_crosshairAlpha], eax
	mov dword [esp+0x14], _cstring_the_minimum_alph1
	mov dword [esp+0x10], 0x81
	mov dword [esp+0xc], 0x3f800000
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x3f000000
	mov dword [esp], _cstring_cg_crosshairalph1
	call Cvar_RegisterFloat
	mov [cg_crosshairAlphaMin], eax
	mov dword [esp+0xc], _cstring_crosshair_is_dyn
	mov dword [esp+0x8], 0x81
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_cg_crosshairdyna
	call Cvar_RegisterBool
	mov [cg_crosshairDynamic], eax
	mov dword [esp+0xc], _cstring_the_crosshair_co
	mov dword [esp+0x8], 0x81
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_cg_crosshairenem
	call Cvar_RegisterBool
	mov [cg_crosshairEnemyColor], eax
	mov dword [esp+0xc], _cstring_weapons_eject_br
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_cg_brass
	call Cvar_RegisterBool
	mov [cg_brass], eax
	mov dword [esp+0x14], _cstring_x_position_of_th
	mov dword [esp+0x10], 0x80
	mov edi, 0x7f7fffff
	mov [esp+0xc], edi
	mov dword [esp+0x8], 0xff7fffff
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_cg_gun_x
	call Cvar_RegisterFloat
	mov [cg_gun_x], eax
	mov dword [esp+0x14], _cstring_y_position_of_th
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], edi
	mov dword [esp+0x8], 0xff7fffff
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_cg_gun_y
	call Cvar_RegisterFloat
	mov [cg_gun_y], eax
	mov dword [esp+0x14], _cstring_z_position_of_th
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], edi
	mov dword [esp+0x8], 0xff7fffff
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_cg_gun_z
	call Cvar_RegisterFloat
	mov [cg_gun_z], eax
	mov dword [esp+0x14], _cstring_weapon_movement_
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], edi
	mov dword [esp+0x8], 0xff7fffff
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_cg_gun_move_f
	call Cvar_RegisterFloat
	mov [cg_gun_move_f], eax
	mov dword [esp+0x14], _cstring_weapon_movement_1
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], edi
	mov dword [esp+0x8], 0xff7fffff
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_cg_gun_move_r
	call Cvar_RegisterFloat
	mov [cg_gun_move_r], eax
	mov dword [esp+0x14], _cstring_weapon_movement_2
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], edi
	mov dword [esp+0x8], 0xff7fffff
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_cg_gun_move_u
	call Cvar_RegisterFloat
	mov [cg_gun_move_u], eax
	mov dword [esp+0x14], _cstring_forward_weapon_o
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], edi
	mov dword [esp+0x8], 0xff7fffff
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_cg_gun_ofs_f
	call Cvar_RegisterFloat
	mov [cg_gun_ofs_f], eax
	mov dword [esp+0x14], _cstring_right_weapon_off
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], edi
	mov dword [esp+0x8], 0xff7fffff
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_cg_gun_ofs_r
	call Cvar_RegisterFloat
	mov [cg_gun_ofs_r], eax
	mov dword [esp+0x14], _cstring_up_weapon_offset
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], edi
	mov dword [esp+0x8], 0xff7fffff
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_cg_gun_ofs_u
	call Cvar_RegisterFloat
	mov [cg_gun_ofs_u], eax
	mov dword [esp+0x14], _cstring_the_base_weapon_
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], edi
	mov dword [esp+0x8], 0xff7fffff
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_cg_gun_move_rate
	call Cvar_RegisterFloat
	mov [cg_gun_move_rate], eax
	mov dword [esp+0x14], _cstring_the_minimum_weap
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], edi
	mov dword [esp+0x8], 0xff7fffff
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_cg_gun_move_mins
	call Cvar_RegisterFloat
	mov [cg_gun_move_minspeed], eax
	mov dword [esp+0x14], _cstring_the_time_for_a_c
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], edi
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], esi
	mov dword [esp], _cstring_cg_centertime
	call Cvar_RegisterFloat
	mov [cg_centertime], eax
	mov dword [esp+0xc], _cstring_output_position_
	mov dword [esp+0x8], 0x80
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_cg_debugposition
	call Cvar_RegisterBool
	mov [cg_debugPosition], eax
	mov dword [esp+0xc], _cstring_output_event_deb
	mov dword [esp+0x8], 0x80
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_cg_debugevents
	call Cvar_RegisterBool
	mov [cg_debugEvents], eax
	mov dword [esp+0x14], _cstring_decay_for_predic
	mov dword [esp+0x10], 0x0
	mov [esp+0xc], edi
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x42c80000
	mov dword [esp], _cstring_cg_errordecay
	call Cvar_RegisterFloat
	mov [cg_errorDecay], eax
	mov dword [esp+0xc], _cstring_dont_do_client_s
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_cg_nopredict
	call Cvar_RegisterBool
	mov [cg_nopredict], eax
	mov dword [esp+0x14], _cstring_show_prediction_
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x2
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_cg_showmiss
	call Cvar_RegisterInt
	mov [cg_showmiss], eax
	mov dword [esp+0xc], _cstring_play_footstep_so
	mov dword [esp+0x8], 0x80
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_cg_footsteps
	call Cvar_RegisterBool
	mov [cg_footsteps], eax
	mov dword [esp+0x14], _cstring_the_probability_
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x3f800000
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x3f000000
	mov dword [esp], _cstring_cg_firstpersontr
	call Cvar_RegisterFloat
	mov [cg_firstPersonTracerChance], eax
	mov dword [esp+0xc], _cstring_force_laser_sigh
	mov dword [esp+0x8], 0x80
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_cg_laserforceon
	call Cvar_RegisterBool
	mov [cg_laserForceOn], eax
	mov dword [esp+0x14], _cstring_the_maximum_rang
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], edi
	mov dword [esp+0x8], 0x3f800000
	mov esi, 0x44bb8000
	mov [esp+0x4], esi
	mov dword [esp], _cstring_cg_laserrange
	call Cvar_RegisterFloat
	mov [cg_laserRange], eax
	mov dword [esp+0x14], _cstring_the_maximum_rang1
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], edi
	mov dword [esp+0x8], 0x3f800000
	mov [esp+0x4], esi
	mov dword [esp], _cstring_cg_laserrangepla
	call Cvar_RegisterFloat
	mov [cg_laserRangePlayer], eax
	mov dword [esp+0x14], _cstring_the_size_radius_
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], edi
	mov dword [esp+0x8], 0x3a83126f
	mov dword [esp+0x4], 0x3f4ccccd
	mov dword [esp], _cstring_cg_laserradius
	call Cvar_RegisterFloat
	mov [cg_laserRadius], eax
	mov dword [esp+0xc], _cstring_whether_to_draw_
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_cg_laserlight
	call Cvar_RegisterBool
	mov [cg_laserLight], eax
	mov dword [esp+0x14], _cstring_amount_to_add_to
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], edi
	mov dword [esp+0x8], 0xff7fffff
	mov dword [esp+0x4], 0x41700000
	mov dword [esp], _cstring_cg_laserlightbod
	call Cvar_RegisterFloat
	mov [cg_laserLightBodyTweak], eax
	mov dword [esp+0x14], _cstring_the_radius_of_th
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], edi
	mov dword [esp+0x8], 0x3a83126f
	mov dword [esp+0x4], 0x40400000
	mov dword [esp], _cstring_cg_laserlightrad
	call Cvar_RegisterFloat
	mov [cg_laserLightRadius], eax
	mov dword [esp+0x14], _cstring_how_far_from_the
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], edi
	mov dword [esp+0x8], 0xff7fffff
	mov dword [esp+0x4], 0x41500000
	mov dword [esp], _cstring_cg_laserlightbeg
	call Cvar_RegisterFloat
	mov [cg_laserLightBeginOffset], eax
	mov dword [esp+0x14], _cstring_how_far_from_the1
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], edi
	mov dword [esp+0x8], 0xff7fffff
	mov dword [esp+0x4], 0xc0400000
	mov dword [esp], _cstring_cg_laserlightend
	call Cvar_RegisterFloat
	mov [cg_laserLightEndOffset], eax
	mov dword [esp+0x14], _cstring_how_far_from_the2
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], edi
	mov dword [esp+0x8], 0xff7fffff
	mov dword [esp+0x4], 0x3f000000
	mov dword [esp], _cstring_cg_laserendoffse
	call Cvar_RegisterFloat
	mov [cg_laserEndOffset], eax
	mov dword [esp+0x14], _cstring_percentage_laser
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], edi
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x3e4ccccd
	mov dword [esp], _cstring_cg_laserflarepct
	call Cvar_RegisterFloat
	mov [cg_laserFlarePct], eax
	mov dword [esp+0xc], _cstring_marks_on_entitie
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_cg_marks_ents_pl
	call Cvar_RegisterBool
	mov [cg_marks_ents_player_only], eax
	mov dword [esp+0x14], _cstring_the_probability_1
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x3f800000
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x3e4ccccd
	mov dword [esp], _cstring_cg_tracerchance
	call Cvar_RegisterFloat
	mov [cg_tracerChance], eax
	mov dword [esp+0x14], _cstring_the_width_of_the3
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], edi
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x40800000
	mov dword [esp], _cstring_cg_tracerwidth
	call Cvar_RegisterFloat
	mov [cg_tracerWidth], eax
	mov dword [esp+0x14], _cstring_the_speed_of_a_t
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], edi
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x45ea6000
	mov dword [esp], _cstring_cg_tracerspeed
	call Cvar_RegisterFloat
	mov [cg_tracerSpeed], eax
	mov dword [esp+0x14], _cstring_the_length_of_a_
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], edi
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x43200000
	mov dword [esp], _cstring_cg_tracerlength
	call Cvar_RegisterFloat
	mov [cg_tracerLength], eax
	mov dword [esp+0x14], _cstring_scale_the_tracer
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], edi
	mov dword [esp+0x8], 0x3f800000
	mov dword [esp+0x4], 0x3f800000
	mov dword [esp], _cstring_cg_tracerscale
	call Cvar_RegisterFloat
	mov [cg_tracerScale], eax
	mov dword [esp+0x14], _cstring_the_minimum_dist2
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], edi
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x459c4000
	mov dword [esp], _cstring_cg_tracerscalemi
	call Cvar_RegisterFloat
	mov [cg_tracerScaleMinDist], eax
	mov dword [esp+0x14], _cstring_the_range_at_whi
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], edi
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x46c35000
	mov dword [esp], _cstring_cg_tracerscaledi
	call Cvar_RegisterFloat
	mov [cg_tracerScaleDistRange], eax
	mov dword [esp+0x14], _cstring_the_length_a_tra
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], edi
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x42c80000
	mov dword [esp], _cstring_cg_tracerscrewdi
	call Cvar_RegisterFloat
	mov [cg_tracerScrewDist], eax
	mov dword [esp+0x14], _cstring_the_radius_of_a_
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], edi
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x3f000000
	mov dword [esp], _cstring_cg_tracerscrewra
	call Cvar_RegisterFloat
	mov [cg_tracerScrewRadius], eax
	mov dword [esp+0x14], _cstring_the_range_of_the
	mov dword [esp+0x10], 0x80
	mov esi, 0x44800000
	mov [esp+0xc], esi
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x42f00000
	mov dword [esp], _cstring_cg_thirdpersonra
	call Cvar_RegisterFloat
	mov [cg_thirdPersonRange], eax
	mov dword [esp+0x14], _cstring_the_angle_of_the
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x43b40000
	mov dword [esp+0x8], 0xc3340000
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_cg_thirdpersonan
	call Cvar_RegisterFloat
	mov [cg_thirdPersonAngle], eax
	mov dword [esp+0xc], _cstring_use_third_person
	mov dword [esp+0x8], 0x80
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_cg_thirdperson
	call Cvar_RegisterBool
	mov [cg_thirdPerson], eax
	mov dword [esp+0x14], _cstring_the_amount_of_ti1
	mov dword [esp+0x10], 0x1
	mov dword [esp+0xc], 0xea60
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x2ee0
	mov dword [esp], _cstring_cg_chattime
	call Cvar_RegisterInt
	mov [cg_chatTime], eax
	mov dword [esp+0x14], _cstring_the_font_height_
	mov dword [esp+0x10], 0x1
	mov dword [esp+0xc], 0x8
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x8
	mov dword [esp], _cstring_cg_chatheight
	call Cvar_RegisterInt
	mov [cg_chatHeight], eax
	mov dword [esp+0xc], _cstring_turn_on_client_s
	mov dword [esp+0x8], 0x3
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_cg_predictitems
	call Cvar_RegisterBool
	mov [cg_predictItems], eax
	mov dword [esp+0xc], _cstring_allow_chatting_o
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_cg_teamchatsonly
	call Cvar_RegisterBool
	mov [cg_teamChatsOnly], eax
	mov dword [esp+0x14], _cstring_pause_the_game
	mov dword [esp+0x10], 0x40
	mov dword [esp+0xc], 0x2
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_cl_paused
	call Cvar_RegisterInt
	mov [cg_paused], eax
	mov dword [esp+0xc], _cstring_draw_paused_scre
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_cg_drawpaused
	call Cvar_RegisterBool
	mov [cg_drawpaused], eax
	mov dword [esp+0xc], _cstring_client_is_synchr
	mov dword [esp+0x8], 0x8
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_g_synchronouscli
	call Cvar_RegisterBool
	mov [cg_synchronousClients], eax
	mov dword [esp+0xc], _cstring_remove_the_snipe
	mov dword [esp+0x8], 0x80
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_cg_debug_overlay
	call Cvar_RegisterBool
	mov [cg_debug_overlay_viewport], eax
	mov dword [esp+0x14], _cstring_output_animation
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x3ff
	mov dword [esp+0x8], 0xffffffff
	mov dword [esp+0x4], 0xffffffff
	mov dword [esp], _cstring_cg_dumpanims
	call Cvar_RegisterInt
	mov [cg_dumpAnims], eax
	mov dword [esp+0x14], _cstring_enable_developme
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x2
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_developer
	call Cvar_RegisterInt
	mov [cg_developer], eax
	mov dword [esp+0xc], _cstring_display_the_mini
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_con_minicon
	call Cvar_RegisterBool
	mov [cg_minicon], eax
	mov dword [esp+0xc], _cstring_show_subtitles
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_cg_subtitles
	call Cvar_RegisterBool
	mov [cg_subtitles], eax
	mov dword [esp+0x14], _cstring_the_minimum_time
	mov dword [esp+0x10], 0x1
	mov [esp+0xc], edi
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x40400000
	mov dword [esp], _cstring_cg_subtitleminti
	call Cvar_RegisterFloat
	mov [cg_subtitleMinTime], eax
	mov dword [esp+0x14], _cstring_the_width_of_the4
	mov dword [esp+0x10], 0x1
	mov dword [esp+0xc], 0x680
	mov dword [esp+0x8], 0x82
	mov dword [esp+0x4], 0x208
	mov dword [esp], _cstring_cg_subtitlewidth
	call Cvar_RegisterInt
	mov [cg_subtitleWidthStandard], eax
	mov dword [esp+0x14], _cstring_the_width_of_the5
	mov dword [esp+0x10], 0x1
	mov dword [esp+0xc], 0x680
	mov dword [esp+0x8], 0x82
	mov dword [esp+0x4], 0x208
	mov dword [esp], _cstring_cg_subtitlewidth1
	call Cvar_RegisterInt
	mov [cg_subtitleWidthWidescreen], eax
	mov dword [esp+0x14], _cstring_the_maximum_char
	mov dword [esp+0x10], 0x1
	mov dword [esp+0xc], 0x680
	mov dword [esp+0x8], 0x82
	mov dword [esp+0x4], 0x1c7
	mov dword [esp], _cstring_cg_gamemessagewi
	call Cvar_RegisterInt
	mov [cg_gameMessageWidth], eax
	mov dword [esp+0x14], _cstring_the_maximum_char1
	mov dword [esp+0x10], 0x1
	mov dword [esp+0xc], 0x680
	mov dword [esp+0x8], 0x82
	mov dword [esp+0x4], 0x186
	mov dword [esp], _cstring_cg_gameboldmessa
	call Cvar_RegisterInt
	mov [cg_gameBoldMessageWidth], eax
	mov dword [esp+0xc], _cstring_draw_descriptive
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_cg_descriptivete
	call Cvar_RegisterBool
	mov [cg_descriptiveText], eax
	mov dword [esp+0x14], _cstring_size_of_the_you_
	mov dword [esp+0x10], 0x1
	mov dword [esp+0xc], 0x42c80000
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x40c00000
	mov dword [esp], _cstring_cg_youinkillcams
	call Cvar_RegisterFloat
	mov [cg_youInKillCamSize], eax
	mov dword [esp+0x14], _cstring_size_of_icons_de
	mov dword [esp+0x10], 0x1
	mov dword [esp+0xc], 0x42c80000
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_cg_scripticonsiz
	call Cvar_RegisterFloat
	mov [cg_scriptIconSize], eax
	mov dword [esp+0x14], _cstring_size_of_the_conn
	mov dword [esp+0x10], 0x1
	mov dword [esp+0xc], 0x42c80000
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_cg_connectionico
	call Cvar_RegisterFloat
	mov [cg_connectionIconSize], eax
	mov dword [esp+0x14], _cstring_size_of_the_voic
	mov dword [esp+0x10], 0x1
	mov dword [esp+0xc], 0x42c80000
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_cg_voiceiconsize
	call Cvar_RegisterFloat
	mov [cg_voiceIconSize], eax
	mov dword [esp+0xc], _cstring_head_icons_are_t
	mov dword [esp+0x8], 0x80
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_cg_constantsizeh
	call Cvar_RegisterBool
	mov [cg_constantSizeHeadIcons], eax
	mov dword [esp+0x14], _cstring_the_minumum_radi
	mov dword [esp+0x10], 0x1
	mov dword [esp+0xc], 0x3f800000
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x3ca3d70a
	mov dword [esp], _cstring_cg_headiconminsc
	call Cvar_RegisterFloat
	mov [cg_headIconMinScreenRadius], eax
	mov dword [esp+0x14], _cstring_the_maximum_dist
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], edi
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x461c4000
	mov dword [esp], _cstring_cg_overheadnames
	call Cvar_RegisterFloat
	mov [cg_overheadNamesMaxDist], eax
	mov dword [esp+0x14], _cstring_the_near_distanc
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], edi
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x43800000
	mov dword [esp], _cstring_cg_overheadnames1
	call Cvar_RegisterFloat
	mov [cg_overheadNamesNearDist], eax
	mov dword [esp+0x14], _cstring_the_far_distance
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], edi
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], esi
	mov dword [esp], _cstring_cg_overheadnames2
	call Cvar_RegisterFloat
	mov [cg_overheadNamesFarDist], eax
	mov dword [esp+0x14], _cstring_the_amount_to_sc
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], edi
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x3f19999a
	mov dword [esp], _cstring_cg_overheadnames3
	call Cvar_RegisterFloat
	mov [cg_overheadNamesFarScale], eax
	mov dword [esp+0x14], _cstring_the_maximum_size
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x42c80000
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x3f000000
	mov dword [esp], _cstring_cg_overheadnames4
	call Cvar_RegisterFloat
	mov [cg_overheadNamesSize], eax
	mov dword [esp+0x14], _cstring_the_maximum_size1
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x42c80000
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x3f333333
	mov dword [esp], _cstring_cg_overheadicons
	call Cvar_RegisterFloat
	mov [cg_overheadIconSize], eax
	mov dword [esp+0x14], _cstring_the_size_to_show
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], edi
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x3f000000
	mov dword [esp], _cstring_cg_overheadranks
	call Cvar_RegisterFloat
	mov [cg_overheadRankSize], eax
	mov dword [esp+0x18], _cstring_glow_color_for_o
	mov dword [esp+0x14], 0x80
	mov dword [esp+0x10], 0x3f800000
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_cg_overheadnames5
	call Cvar_RegisterColor
	mov [cg_overheadNamesGlow], eax
	mov dword [esp+0x14], _cstring_font_for_overhea
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x6
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x2
	mov dword [esp], _cstring_cg_overheadnames6
	call Cvar_RegisterInt
	mov [cg_overheadNamesFont], eax
	mov dword [esp+0xc], _cstring_whether_to_show_
	mov dword [esp+0x8], 0x80
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_cg_drawfriendlyn
	call Cvar_RegisterBool
	mov [cg_drawFriendlyNames], eax
	mov dword [esp+0x14], _cstring_time_in_millisec1
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x7fffffff
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0xfa
	mov dword [esp], _cstring_cg_enemynamefade
	call Cvar_RegisterInt
	mov [cg_enemyNameFadeIn], eax
	mov dword [esp+0x14], _cstring_time_in_millisec2
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x7fffffff
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_cg_friendlynamef
	call Cvar_RegisterInt
	mov [cg_friendlyNameFadeIn], eax
	mov dword [esp+0x14], _cstring_time_in_millisec3
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x7fffffff
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0xfa
	mov dword [esp], _cstring_cg_enemynamefade1
	call Cvar_RegisterInt
	mov [cg_enemyNameFadeOut], eax
	mov dword [esp+0x14], _cstring_time_in_millisec4
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x7fffffff
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x5dc
	mov dword [esp], _cstring_cg_friendlynamef1
	call Cvar_RegisterInt
	mov [cg_friendlyNameFadeOut], eax
	mov dword [esp+0xc], _cstring_whether_to_draw_1
	mov dword [esp+0x8], 0x80
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_cg_drawthroughwa
	call Cvar_RegisterBool
	mov [cg_drawThroughWalls], eax
	mov dword [esp+0xc], _cstring_show_blood
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_cg_blood
	call Cvar_RegisterBool
	mov [cg_blood], eax
	mov dword [esp+0xc], _cstring_left_hand_weapon
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _cstring_tag_weapon_left
	mov dword [esp], _cstring_cg_weaponleftbon
	call Cvar_RegisterString
	mov [cg_weaponleftbone], eax
	mov dword [esp+0xc], _cstring_right_handed_wea
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _cstring_tag_weapon_right
	mov dword [esp], _cstring_cg_weaponrightbo
	call Cvar_RegisterString
	mov [cg_weaponrightbone], eax
	mov dword [esp+0x14], _cstring_duration_of_an_i
	mov dword [esp+0x10], 0x1
	mov dword [esp+0xc], 0x7fffffff
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x708
	mov dword [esp], _cstring_cg_invalidcmdhin
	call Cvar_RegisterInt
	mov [cg_invalidCmdHintDuration], eax
	mov dword [esp+0x14], _cstring_blink_rate_of_an
	mov dword [esp+0x10], 0x1
	mov dword [esp+0xc], 0x7fffffff
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x258
	mov dword [esp], _cstring_cg_invalidcmdhin1
	call Cvar_RegisterInt
	mov [cg_invalidCmdHintBlinkInterval], eax
	mov dword [esp+0x14], _cstring_threshhold_for_t
	mov dword [esp+0x10], 0x1
	mov [esp+0xc], edi
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x3f800000
	mov dword [esp], _cstring_cg_viewzsmoothin
	call Cvar_RegisterFloat
	mov [cg_viewZSmoothingMin], eax
	mov dword [esp+0x14], _cstring_threshhold_for_t1
	mov dword [esp+0x10], 0x1
	mov [esp+0xc], edi
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x41800000
	mov dword [esp], _cstring_cg_viewzsmoothin1
	call Cvar_RegisterFloat
	mov [cg_viewZSmoothingMax], eax
	mov dword [esp+0x14], _cstring_amount_of_time_t
	mov dword [esp+0x10], 0x1
	mov [esp+0xc], edi
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x3dcccccd
	mov dword [esp], _cstring_cg_viewzsmoothin2
	call Cvar_RegisterFloat
	mov [cg_viewZSmoothingTime], eax
	mov dword [esp+0xc], _cstring_when_true_nightv
	mov dword [esp+0x8], 0x1000
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_overridenvgmodel
	call Cvar_RegisterBool
	mov [overrideNVGModelWithKnife], eax
	call CG_ViewRegisterDvars
	call DynEntCl_RegisterDvars
	call CG_OffhandRegisterDvars
	call CG_CompassRegisterDvars
	call CG_AmmoCounterRegisterDvars
	call CG_RegisterVisionSetsDvars
	call CG_RegisterScoreboardDvars
	call CG_HudElemRegisterDvars
	call CG_ClientSideEffectsRegisterDvars
	call CG_VehRegisterDvars
	mov dword [esp+0xc], _cstring_whether_enemies_
	mov dword [esp+0x8], 0x84
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_g_compassshowene
	call Cvar_RegisterBool
	mov edx, g_compassShowEnemies
	mov [edx], eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp BG_RegisterDvars
	nop


;CG_PlaySoundAlias(int, int, float const*, snd_alias_list_t*)
CG_PlaySoundAlias:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x20
	mov eax, [ebp+0x14]
	test eax, eax
	jnz CG_PlaySoundAlias_10
CG_PlaySoundAlias_20:
	mov ebx, 0xffffffff
CG_PlaySoundAlias_30:
	mov eax, ebx
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
CG_PlaySoundAlias_10:
	mov esi, [eax]
	test esi, esi
	jz CG_PlaySoundAlias_20
	mov [esp], eax
	call Com_PickSoundAliasFromList
	mov esi, eax
	test eax, eax
	jz CG_PlaySoundAlias_20
	mov dword [esp+0x10], 0x1
	mov dword [esp+0xc], 0x0
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], esi
	call SND_PlaySoundAlias
	mov ebx, eax
	mov dword [esp+0x8], 0x1
	mov [esp+0x4], esi
	mov [esp], eax
	call SND_AddLengthNotify
	jmp CG_PlaySoundAlias_30
	nop


;CG_RegisterSounds()
CG_RegisterSounds:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp], _cstring_land_damage
	call Com_FindSoundAlias
	mov [cgMedia+0x264], eax
	mov edx, cgMedia+0x268
	mov eax, _cstring_grenade_explode
	call CG_RegisterSurfaceTypeSounds
	mov edx, cgMedia+0x2dc
	mov eax, _cstring_rocket_explode
	call CG_RegisterSurfaceTypeSounds
	mov edx, cgMedia+0x350
	mov eax, _cstring_bullet_small
	call CG_RegisterSurfaceTypeSounds
	mov edx, cgMedia+0x3c4
	mov eax, _cstring_bullet_large
	call CG_RegisterSurfaceTypeSounds
	mov edx, cgMedia+0x438
	mov eax, _cstring_bullet_ap
	call CG_RegisterSurfaceTypeSounds
	mov edx, cgMedia+0x4ac
	mov eax, _cstring_bulletspray_smal
	call CG_RegisterSurfaceTypeSounds
	mov edx, cgMedia+0x520
	mov eax, _cstring_bullet_small_exi
	call CG_RegisterSurfaceTypeSounds
	mov edx, cgMedia+0x594
	mov eax, _cstring_bullet_large_exi
	call CG_RegisterSurfaceTypeSounds
	mov edx, cgMedia+0x608
	mov eax, _cstring_bullet_ap_exit
	call CG_RegisterSurfaceTypeSounds
	mov edx, cgMedia+0x67c
	mov eax, _cstring_bulletspray_smal1
	call CG_RegisterSurfaceTypeSounds
	mov edx, cgMedia+0x6f0
	mov eax, _cstring_step_sprint
	call CG_RegisterSurfaceTypeSounds
	mov edx, cgMedia+0x7d8
	mov eax, _cstring_step_sprint_plr
	call CG_RegisterSurfaceTypeSounds
	mov edx, cgMedia+0x8c0
	mov eax, _cstring_step_run
	call CG_RegisterSurfaceTypeSounds
	mov edx, cgMedia+0x9a8
	mov eax, _cstring_step_run_plr
	call CG_RegisterSurfaceTypeSounds
	mov edx, cgMedia+0xa90
	mov eax, _cstring_step_walk
	call CG_RegisterSurfaceTypeSounds
	mov edx, cgMedia+0xb78
	mov eax, _cstring_step_walk_plr
	call CG_RegisterSurfaceTypeSounds
	mov edx, cgMedia+0xc60
	mov eax, _cstring_step_prone
	call CG_RegisterSurfaceTypeSounds
	mov edx, cgMedia+0xd48
	mov eax, _cstring_step_prone_plr
	call CG_RegisterSurfaceTypeSounds
	mov edx, cgMedia+0xe30
	mov eax, _cstring_land
	call CG_RegisterSurfaceTypeSounds
	mov edx, cgMedia+0xf18
	mov eax, _cstring_land_plr
	call CG_RegisterSurfaceTypeSounds
	mov eax, useFastFile
	mov edx, [eax]
	mov eax, CG_RegisterPhysicsSounds_FastFile
	cmp byte [edx+0xc], 0x0
	mov edx, CG_RegisterPhysicsSounds_LoadObj
	cmovz eax, edx
	call eax
	mov dword [esp], _cstring_gear_rattle_spri
	call Com_FindSoundAlias
	mov [cgMedia+0x1018], eax
	mov dword [esp], _cstring_gear_rattle_plr_
	call Com_FindSoundAlias
	mov [cgMedia+0x101c], eax
	mov dword [esp], _cstring_gear_rattle_run
	call Com_FindSoundAlias
	mov [cgMedia+0x1020], eax
	mov dword [esp], _cstring_gear_rattle_plr_1
	call Com_FindSoundAlias
	mov [cgMedia+0x1024], eax
	mov dword [esp], _cstring_gear_rattle_walk
	call Com_FindSoundAlias
	mov [cgMedia+0x1028], eax
	mov dword [esp], _cstring_gear_rattle_plr_2
	call Com_FindSoundAlias
	mov [cgMedia+0x102c], eax
	mov edx, cgMedia+0x764
	mov eax, _cstring_qstep_sprint
	call CG_RegisterSurfaceTypeSounds
	mov edx, cgMedia+0x84c
	mov eax, _cstring_qstep_sprint_plr
	call CG_RegisterSurfaceTypeSounds
	mov edx, cgMedia+0x934
	mov eax, _cstring_qstep_run
	call CG_RegisterSurfaceTypeSounds
	mov edx, cgMedia+0xa1c
	mov eax, _cstring_qstep_run_plr
	call CG_RegisterSurfaceTypeSounds
	mov edx, cgMedia+0xb04
	mov eax, _cstring_qstep_walk
	call CG_RegisterSurfaceTypeSounds
	mov edx, cgMedia+0xbec
	mov eax, _cstring_qstep_walk_plr
	call CG_RegisterSurfaceTypeSounds
	mov edx, cgMedia+0xcd4
	mov eax, _cstring_qstep_prone
	call CG_RegisterSurfaceTypeSounds
	mov edx, cgMedia+0xdbc
	mov eax, _cstring_qstep_prone_plr
	call CG_RegisterSurfaceTypeSounds
	mov edx, cgMedia+0xea4
	mov eax, _cstring_qland
	call CG_RegisterSurfaceTypeSounds
	mov edx, cgMedia+0xf8c
	mov eax, _cstring_qland_plr
	call CG_RegisterSurfaceTypeSounds
	mov dword [esp], _cstring_qgear_rattle_spr
	call Com_FindSoundAlias
	mov [cgMedia+0x1000], eax
	mov dword [esp], _cstring_qgear_rattle_plr
	call Com_FindSoundAlias
	mov [cgMedia+0x1004], eax
	mov dword [esp], _cstring_qgear_rattle_run
	call Com_FindSoundAlias
	mov [cgMedia+0x1008], eax
	mov dword [esp], _cstring_qgear_rattle_plr1
	call Com_FindSoundAlias
	mov [cgMedia+0x100c], eax
	mov dword [esp], _cstring_qgear_rattle_wal
	call Com_FindSoundAlias
	mov [cgMedia+0x1010], eax
	mov dword [esp], _cstring_qgear_rattle_plr2
	call Com_FindSoundAlias
	mov [cgMedia+0x1014], eax
	mov dword [esp], _cstring_sprint_gasp
	call Com_FindSoundAlias
	mov [cgMedia+0x1050], eax
	mov dword [esp], _cstring_movement_foliage
	call Com_FindSoundAlias
	mov [cgMedia+0x1030], eax
	mov dword [esp], _cstring_whizby
	call Com_FindSoundAlias
	mov [cgMedia+0x1034], eax
	mov dword [esp], _cstring_melee_hit
	call Com_FindSoundAlias
	mov [cgMedia+0x1038], eax
	mov dword [esp], _cstring_melee_hit_other
	call Com_FindSoundAlias
	mov [cgMedia+0x103c], eax
	mov dword [esp], _cstring_melee_knife_hit_
	call Com_FindSoundAlias
	mov [cgMedia+0x1040], eax
	mov dword [esp], _cstring_melee_knife_hit_1
	call Com_FindSoundAlias
	mov [cgMedia+0x1044], eax
	mov dword [esp], _cstring_item_nightvision
	call Com_FindSoundAlias
	mov [cgMedia+0x1048], eax
	mov dword [esp], _cstring_item_nightvision1
	call Com_FindSoundAlias
	mov [cgMedia+0x104c], eax
	mov dword [esp], _cstring_weap_sniper_hear
	call Com_FindSoundAlias
	mov [cgMedia+0x1054], eax
	mov dword [esp], _cstring_weap_sniper_brea
	call Com_FindSoundAlias
	mov [cgMedia+0x1058], eax
	mov dword [esp], _cstring_weap_sniper_brea1
	call Com_FindSoundAlias
	mov [cgMedia+0x105c], eax
	mov dword [esp], _cstring_weap_sniper_brea2
	call Com_FindSoundAlias
	mov [cgMedia+0x1060], eax
	mov dword [esp], _cstring_weap_offhand_sel
	call Com_FindSoundAlias
	mov [cgMedia+0x1064], eax
	leave
	ret
	nop


;CG_StopSoundAlias(int, int, snd_alias_list_t*)
CG_StopSoundAlias:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0xc]
	mov eax, [ebp+0x10]
	test eax, eax
	jz CG_StopSoundAlias_10
	mov eax, [eax]
	test eax, eax
	jz CG_StopSoundAlias_10
	mov [ebp+0xc], eax
	mov [ebp+0x8], edx
	pop ebp
	jmp SND_StopSoundAliasOnEnt
CG_StopSoundAlias_10:
	pop ebp
	ret
	nop


;CG_AddFXSoundAlias(int, float const*, snd_alias_list_t*)
CG_AddFXSoundAlias:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0xc]
	mov eax, [ebp+0x10]
	mov [esp], eax
	call Com_PickSoundAliasFromList
	test eax, eax
	jz CG_AddFXSoundAlias_10
	mov [ebp+0x10], ebx
	mov dword [ebp+0xc], 0x3fe
	mov [ebp+0x8], eax
	add esp, 0x14
	pop ebx
	pop ebp
	jmp SND_AddPlayFXSoundAlias
CG_AddFXSoundAlias_10:
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;CG_BoldGameMessage(int, char const*)
CG_BoldGameMessage:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	mov dword [esp+0x14], 0x0
	mov eax, [cg_gameBoldMessageWidth]
	mov eax, [eax+0xc]
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x0
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x3
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CL_ConsolePrint
	leave
	ret


;CG_StopSoundsOnEnt(int, int)
CG_StopSoundsOnEnt:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0xc]
	mov [ebp+0x8], eax
	pop ebp
	jmp SND_StopSoundsOnEnt
	nop
	add [eax], al


;CG_GetDObjOrientation(int, int, float (*) [3], float*)
CG_GetDObjOrientation:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov edx, [ebp+0xc]
	mov ecx, [ebp+0x10]
	mov esi, [ebp+0x14]
	cmp edx, 0x3ff
	jg CG_GetDObjOrientation_10
	lea eax, [edx*4]
	mov ebx, edx
	shl ebx, 0x5
	sub ebx, eax
	mov eax, ebx
	shl eax, 0x4
	lea ebx, [ebx+eax+cg_entitiesArray]
	mov [esp+0x4], ecx
	lea eax, [ebx+0x28]
	mov [esp], eax
	call AnglesToAxis
	lea edx, [ebx+0x1c]
	mov eax, [ebx+0x1c]
	mov [esi], eax
	mov eax, [edx+0x4]
	mov [esi+0x4], eax
	mov eax, [edx+0x8]
	mov [esi+0x8], eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
CG_GetDObjOrientation_10:
	mov [esp+0x4], ecx
	mov dword [esp], cgArray+0x50460
	call AxisCopy
	mov eax, [cgArray+0x50484]
	mov [esi], eax
	mov eax, [cgArray+0x50488]
	mov [esi+0x4], eax
	mov eax, [cgArray+0x5048c]
	mov [esi+0x8], eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;Hunk_AllocXAnimClient(int)
Hunk_AllocXAnimClient:
	push ebp
	mov ebp, esp
	pop ebp
	jmp Hunk_AllocInternal
	nop


;CG_GetWeaponAttachBone(clientInfo_t*, weapType_t)
CG_GetWeaponAttachBone:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	cmp dword [ebp+0xc], 0x1
	jz CG_GetWeaponAttachBone_10
	mov eax, [ebp+0x8]
	mov eax, [eax+0x3f0]
	test eax, eax
	jz CG_GetWeaponAttachBone_20
	mov eax, [cg_weaponleftbone]
	mov eax, [eax+0xc]
CG_GetWeaponAttachBone_30:
	mov [esp], eax
	call SL_FindString
	movzx eax, ax
	leave
	ret
CG_GetWeaponAttachBone_20:
	mov eax, [cg_weaponrightbone]
	mov eax, [eax+0xc]
	jmp CG_GetWeaponAttachBone_30
CG_GetWeaponAttachBone_10:
	mov eax, scr_const
	movzx eax, word [eax+0x9c]
	leave
	ret


;CG_IsRagdollTrajectory(trajectory_t const*)
CG_IsRagdollTrajectory:
	push ebp
	mov ebp, esp
	mov eax, ragdoll_enable
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz CG_IsRagdollTrajectory_10
	mov edx, [ebp+0x8]
	mov eax, [edx]
	cmp eax, 0x8
	jle CG_IsRagdollTrajectory_10
	cmp eax, 0xb
	jg CG_IsRagdollTrajectory_10
	mov eax, 0x1
	pop ebp
	ret
CG_IsRagdollTrajectory_10:
	xor eax, eax
	pop ebp
	ret


;CG_PlayClientSoundAlias(int, snd_alias_list_t*)
CG_PlayClientSoundAlias:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov edx, [cgArray+0x24]
	mov eax, [ebp+0xc]
	mov [esp+0xc], eax
	lea eax, [edx+0x28]
	mov [esp+0x8], eax
	mov eax, [edx+0xe8]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_PlaySoundAlias
	leave
	ret
	nop


;CG_PlayEntitySoundAlias(int, int, snd_alias_list_t*)
CG_PlayEntitySoundAlias:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov ecx, [ebp+0xc]
	mov eax, [ebp+0x10]
	mov [esp+0xc], eax
	lea edx, [ecx*4]
	mov eax, ecx
	shl eax, 0x5
	sub eax, edx
	mov edx, eax
	shl edx, 0x4
	lea eax, [eax+edx+cg_entitiesArray+0xe4]
	mov [esp+0x8], eax
	mov [esp+0x4], ecx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_PlaySoundAlias
	leave
	ret
	nop


;CG_PlaySoundAliasByName(int, int, float const*, char const*)
CG_PlaySoundAliasByName:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x20
	mov eax, [ebp+0x14]
	test eax, eax
	jnz CG_PlaySoundAliasByName_10
CG_PlaySoundAliasByName_20:
	mov ebx, 0xffffffff
CG_PlaySoundAliasByName_30:
	mov eax, ebx
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
CG_PlaySoundAliasByName_10:
	mov [esp], eax
	call CL_PickSoundAlias
	mov esi, eax
	test eax, eax
	jz CG_PlaySoundAliasByName_20
	mov dword [esp+0x10], 0x1
	mov dword [esp+0xc], 0x0
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], esi
	call SND_PlaySoundAlias
	mov ebx, eax
	mov dword [esp+0x8], 0x1
	mov [esp+0x4], esi
	mov [esp], eax
	call SND_AddLengthNotify
	jmp CG_PlaySoundAliasByName_30
	nop


;CG_RestartSmokeGrenades(int)
CG_RestartSmokeGrenades:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov ecx, [cgsArray+0xc24]
	test ecx, ecx
	jz CG_RestartSmokeGrenades_10
	mov eax, [cgArray+0x46128]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_playing_smoke_gr
	mov dword [esp], 0xe
	call Com_Printf
	mov eax, [cgsArray+0xc24]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call FX_KillEffectDef
	mov eax, [cgArray+0x46128]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call FX_RewindTo
	mov edi, [cgArray+0x24]
	mov edx, [edi+0x2f70]
	test edx, edx
	jle CG_RestartSmokeGrenades_10
	xor esi, esi
	lea ebx, [edi+0x2f70]
CG_RestartSmokeGrenades_40:
	lea edx, [ebx+0x8]
	test byte [ebx+0x12], 0x1
	jz CG_RestartSmokeGrenades_20
	mov eax, [cgArray+0x46128]
	cmp [ebx+0x78], eax
	jl CG_RestartSmokeGrenades_20
	cmp eax, [ebx+0x5c]
	jge CG_RestartSmokeGrenades_30
CG_RestartSmokeGrenades_20:
	add esi, 0x1
	add ebx, 0xf4
	cmp esi, [edi+0x2f70]
	jl CG_RestartSmokeGrenades_40
CG_RestartSmokeGrenades_10:
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_RestartSmokeGrenades_30:
	lea eax, [ebp-0x3c]
	mov [esp+0x4], eax
	mov eax, [ebx+0xa8]
	sub eax, 0x1
	and eax, 0x3
	mov eax, [edx+eax*4+0xb4]
	mov [esp], eax
	call ByteToDir
	lea eax, [ebp-0x24]
	mov [esp+0x8], eax
	lea eax, [ebp-0x30]
	mov [esp+0x4], eax
	lea eax, [ebp-0x3c]
	mov [esp], eax
	call Vec3Basis_RightHanded
	cvtss2sd xmm0, [ebx+0x28]
	movsd [esp+0x1c], xmm0
	cvtss2sd xmm0, [ebx+0x24]
	movsd [esp+0x14], xmm0
	cvtss2sd xmm0, [ebx+0x20]
	movsd [esp+0xc], xmm0
	mov eax, [ebx+0x5c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_restarting_smoke
	mov dword [esp], 0xe
	call Com_Printf
	lea eax, [ebp-0x3c]
	mov [esp+0x10], eax
	lea eax, [ebx+0x20]
	mov [esp+0xc], eax
	mov eax, [ebx+0x5c]
	mov [esp+0x8], eax
	mov eax, [cgsArray+0xc24]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call FX_PlayOrientedEffect
	jmp CG_RestartSmokeGrenades_20


;CG_GetPredictedPlayerState(int)
CG_GetPredictedPlayerState:
	push ebp
	mov ebp, esp
	mov eax, cgArray+0x4613c
	pop ebp
	ret


;CG_SubtitleSndLengthNotify(int, void*)
CG_SubtitleSndLengthNotify:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov ebx, [ebp+0x8]
	test ebx, ebx
	jz CG_SubtitleSndLengthNotify_10
	mov eax, [ebp+0xc]
	mov edi, [eax+0x4]
	test edi, edi
	jz CG_SubtitleSndLengthNotify_10
	movss xmm0, dword [cgsArray+0x10]
	ucomiss xmm0, [_float_1_33333337]
	jbe CG_SubtitleSndLengthNotify_20
	mov eax, [cg_subtitleWidthWidescreen]
	mov esi, [eax+0xc]
CG_SubtitleSndLengthNotify_30:
	movss xmm0, dword [_float_1000_00000000]
	mov eax, [cg_subtitleMinTime]
	mulss xmm0, [eax+0xc]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x1c]
	cvttss2si eax, [ebp-0x1c]
	cmp ebx, eax
	cmovle ebx, eax
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov [esp+0x4], edi
	mov dword [esp], 0x0
	call CL_SubtitlePrint
CG_SubtitleSndLengthNotify_10:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_SubtitleSndLengthNotify_20:
	mov eax, [cg_subtitleWidthStandard]
	mov esi, [eax+0xc]
	jmp CG_SubtitleSndLengthNotify_30


;CG_GetSoundEntityOrientation(SndEntHandle, float*, float (*) [3])
CG_GetSoundEntityOrientation:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov eax, [ebp+0x8]
	mov ebx, [ebp+0xc]
	mov esi, [ebp+0x10]
	cmp eax, 0x3ff
	jle CG_GetSoundEntityOrientation_10
	sub eax, 0x400
	mov [ebp+0x8], eax
	pop ebx
	pop esi
	pop ebp
	jmp CG_CopyClientSideSoundEntityOrientation
CG_GetSoundEntityOrientation_10:
	lea edx, [eax*4]
	shl eax, 0x5
	sub eax, edx
	mov edx, eax
	shl edx, 0x4
	lea eax, [eax+edx+cg_entitiesArray]
	lea ecx, [eax+0x1c]
	mov edx, [eax+0x1c]
	mov [ebx], edx
	mov edx, [ecx+0x4]
	mov [ebx+0x4], edx
	mov edx, [ecx+0x8]
	mov [ebx+0x8], edx
	mov [ebp+0xc], esi
	add eax, 0x28
	mov [ebp+0x8], eax
	pop ebx
	pop esi
	pop ebp
	jmp AnglesToAxis


;Hunk_AllocPhysPresetPrecache(int)
Hunk_AllocPhysPresetPrecache:
	push ebp
	mov ebp, esp
	pop ebp
	jmp Hunk_AllocInternal
	nop


;CG_PlayClientSoundAliasByName(int, char const*)
CG_PlayClientSoundAliasByName:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov edx, [cgArray+0x24]
	mov eax, [ebp+0xc]
	mov [esp+0xc], eax
	lea eax, [edx+0x28]
	mov [esp+0x8], eax
	mov eax, [edx+0xe8]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_PlaySoundAliasByName
	leave
	ret
	nop


;CG_StopClientSoundAliasByName(int, char const*)
CG_StopClientSoundAliasByName:
	push ebp
	mov ebp, esp
	mov eax, [cgArray+0x24]
	mov eax, [eax+0xe8]
	mov [ebp+0x8], eax
	pop ebp
	jmp SND_StopSoundAliasOnEnt
	nop


;CG_PlaySoundAliasAsMasterByName(int, int, float const*, char const*)
CG_PlaySoundAliasAsMasterByName:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x20
	mov eax, [ebp+0x14]
	test eax, eax
	jnz CG_PlaySoundAliasAsMasterByName_10
CG_PlaySoundAliasAsMasterByName_20:
	mov ebx, 0xffffffff
CG_PlaySoundAliasAsMasterByName_30:
	mov eax, ebx
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
CG_PlaySoundAliasAsMasterByName_10:
	mov [esp], eax
	call CL_PickSoundAlias
	mov esi, eax
	test eax, eax
	jz CG_PlaySoundAliasAsMasterByName_20
	mov dword [esp+0x10], 0x1
	mov dword [esp+0xc], 0x0
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], esi
	call SND_PlaySoundAliasAsMaster
	mov ebx, eax
	mov dword [esp+0x8], 0x1
	mov [esp+0x4], esi
	mov [esp], eax
	call SND_AddLengthNotify
	jmp CG_PlaySoundAliasAsMasterByName_30
	nop


;CG_ShouldPlaySoundOnLocalClient(int, int, float const*, char const*)
CG_ShouldPlaySoundOnLocalClient:
	push ebp
	mov ebp, esp
	mov eax, 0x1
	pop ebp
	ret


;CG_Init(int, int, int, int)
CG_Init:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x7c
	mov dword [esp+0x8], 0x3a24
	mov dword [esp+0x4], 0x0
	mov dword [esp], cgsArray
	call memset
	mov dword [esp+0x8], 0xfd7ec
	mov dword [esp+0x4], 0x0
	mov dword [esp], cgArray
	call memset
	mov edx, [ebp+0x8]
	lea eax, [edx+edx*4]
	shl eax, 0x7
	mov ebx, eax
	sub ebx, edx
	lea ebx, [eax+ebx*8]
	lea ecx, [ebx+cgDC]
	mov [ebp-0x60], ecx
	mov dword [esp+0x8], 0x1678
	mov dword [esp+0x4], 0x0
	mov [esp], ecx
	call memset
	mov edx, [ebp+0x8]
	shl edx, 0xc
	mov eax, [ebp+0x8]
	shl eax, 0xf
	sub eax, edx
	mov edx, eax
	shl edx, 0x4
	lea eax, [eax+edx+cg_entitiesArray]
	mov dword [esp+0x8], 0x77000
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call memset
	mov edx, [ebp+0x8]
	shl edx, 0x9
	mov eax, [ebp+0x8]
	shl eax, 0xd
	lea edx, [edx+eax+cg_weaponsArray]
	mov dword [esp+0x8], 0x2200
	mov dword [esp+0x4], 0x0
	mov [esp], edx
	call memset
	mov eax, [ebp+0x8]
	mov [ebx+cgDC], eax
	call CG_ClearCompassPingData
	call CG_Veh_Init
	call CG_ClearOverheadFade
	xor edx, edx
	mov [cgArray+0x49330], edx
	mov [cgArray+0x49334], edx
	mov eax, 0x459c4000
	mov [cgArray+0x49338], eax
	mov [cgArray+0x4933c], eax
	mov dword [cgArray+0x49340], 0x40c00000
	mov [cgArray+0x49344], edx
	call Ragdoll_Init
	call Phys_Init
	mov edx, [ebp+0x8]
	mov [cgArray+0x4], edx
	mov byte [cgArray+0xfd236], 0x11
	mov [ebp-0x59], dl
	movzx ecx, byte [ebp+0x8]
	mov [cgArray+0xfd238], cl
	mov dword [esp+0x4], 0x0
	mov [esp], edx
	call CL_SetStance
	mov dword [esp+0x4], 0x0
	mov edx, [ebp+0x8]
	mov [esp], edx
	call CL_SetADS
	mov byte [cgArray+0x4f3a1], 0x0
	mov eax, Com_FindSoundAlias
	mov [cgArray+0xe9ef4], eax
	mov dword [cgArray+0xe9ef8], 0x72514
	mov dword [cgArray+0xe9f1c], 0x70c50
	mov dword [cgArray+0xe9f20], 0x70ca0
	mov dword [cgArray+0xe9f24], 0x72546
	mov dword [cgArray+0xe9f28], 0x70cfe
	mov eax, Com_SafeClientDObjFree
	mov [cgArray+0xe9f2c], eax
	mov dword [cgArray+0xe9f30], 0x70d9a
	mov dword [cgArray+0xe9f18], 0x0
	mov eax, [ebp+0x14]
	mov [cgArray], eax
	mov dword [cgArray+0x502f4], 0x1
	mov dword [cgArray+0x50328], 0x1
	mov eax, [ebp+0xc]
	mov [cgsArray+0x18], eax
	mov eax, [ebp+0x10]
	mov [cgsArray+0x14], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call CG_ParseServerInfo
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_ParseCodInfo
	mov edx, [ebp+0x8]
	mov [esp], edx
	call UI_LoadIngameMenus
	call SCR_UpdateLoadScreen
	mov dword [esp+0x4], 0x7
	mov dword [esp], _cstring_white
	call Material_RegisterHandle
	mov [cgMedia], eax
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_fontssmalldevfon
	call CL_RegisterFont
	mov [cgMedia+0x25c], eax
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_fontsbigdevfont
	call CL_RegisterFont
	mov [cgMedia+0x260], eax
	mov dword [esp+0x4], 0x7
	mov dword [esp], _cstring_net_disconnect
	call Material_RegisterHandle
	mov dword [esp+0x4], 0x7
	mov dword [esp], _cstring_nightvision_over
	call Material_RegisterHandle
	mov [cgMedia+0x2780], eax
	mov dword [esp+0x4], 0x7
	mov dword [esp], _cstring_hud_icon_nvg
	call Material_RegisterHandle
	mov [cgMedia+0x2784], eax
	mov dword [esp+0x4], 0x7
	mov dword [esp], _cstring_hud_dpad_arrow
	call Material_RegisterHandle
	mov [cgMedia+0x2788], eax
	mov dword [esp+0x4], 0x7
	mov dword [esp], _cstring_ammo_counter_bul
	call Material_RegisterHandle
	mov [cgMedia+0x278c], eax
	mov dword [esp+0x4], 0x7
	mov dword [esp], _cstring_ammo_counter_bel
	call Material_RegisterHandle
	mov [cgMedia+0x2790], eax
	mov dword [esp+0x4], 0x7
	mov dword [esp], _cstring_ammo_counter_rif
	call Material_RegisterHandle
	mov [cgMedia+0x2794], eax
	mov dword [esp+0x4], 0x7
	mov dword [esp], _cstring_ammo_counter_roc
	call Material_RegisterHandle
	mov [cgMedia+0x2798], eax
	mov dword [esp+0x4], 0x7
	mov dword [esp], _cstring_ammo_counter_sho
	call Material_RegisterHandle
	mov [cgMedia+0x279c], eax
	mov dword [esp+0x4], 0x7
	mov dword [esp], _cstring_decode_character
	call Material_RegisterHandle
	mov [cgMedia+0x27a0], eax
	mov dword [esp+0x4], 0x7
	mov dword [esp], _cstring_decode_character1
	call Material_RegisterHandle
	mov [cgMedia+0x27a4], eax
	mov dword [esp+0x4], 0x7
	mov dword [esp], _cstring_killicondied
	call Material_RegisterHandle
	mov dword [esp+0x4], 0x7
	mov dword [esp], _cstring_killiconcrush
	call Material_RegisterHandle
	mov dword [esp+0x4], 0x7
	mov dword [esp], _cstring_killiconfalling
	call Material_RegisterHandle
	mov dword [esp+0x4], 0x7
	mov dword [esp], _cstring_killiconsuicide
	call Material_RegisterHandle
	mov dword [esp+0x4], 0x7
	mov dword [esp], _cstring_killiconheadshot
	call Material_RegisterHandle
	mov dword [esp+0x4], 0x7
	mov dword [esp], _cstring_killiconmelee
	call Material_RegisterHandle
	call CG_AntiBurnInHUD_RegisterDvars
	call CG_InitConsoleCommands
	mov dword [cgsArray], 0x0
	mov dword [esp+0x8], cgsArray+0x10
	mov dword [esp+0x4], cgsArray+0xc
	mov dword [esp], cgsArray+0x8
	call CL_GetScreenDimensions
	mov dword [esp+0x4], 0x2
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call CL_GetConfigString
	mov [ebp-0x6c], eax
	mov edi, _cstring_cod
	mov ebx, 0x4
	cld
	mov esi, eax
	mov ecx, ebx
	repe cmpsb
	mov eax, 0x0
	jz CG_Init_10
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
CG_Init_10:
	test eax, eax
	jnz CG_Init_20
CG_Init_310:
	call SCR_UpdateLoadScreen
	mov ebx, com_sv_running
	mov eax, [ebx]
	cmp byte [eax+0xc], 0x0
	jz CG_Init_30
CG_Init_300:
	movzx eax, byte [eax+0xc]
	mov [cgsArray+0x1c], eax
	mov eax, bg_lastParsedWeaponIndex
	mov eax, [eax]
	test eax, eax
	jz CG_Init_40
CG_Init_290:
	cmp byte [g_mapLoaded], 0x0
	jnz CG_Init_50
	mov eax, useFastFile
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz CG_Init_60
CG_Init_50:
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call CG_SetupWeaponDef
	call CGScr_LoadAnimTrees
	mov eax, bgs
	mov dword [eax], cgArray+0x50530
	call BG_LoadAnim
	mov esi, [cgArray+0xe9efc]
	mov ebx, cgArray
CG_Init_70:
	mov dword [esp+0x4], Hunk_AllocXAnimClient
	mov [esp], esi
	call XAnimCreateTree
	mov [ebx+0xea3dc], eax
	add ebx, 0x4cc
	cmp ebx, cgArray+0x13300
	jnz CG_Init_70
	mov ebx, cgsArray
CG_Init_80:
	mov dword [esp+0x4], Hunk_AllocXAnimClient
	mov [esp], esi
	call XAnimCreateTree
	mov [ebx+0x186c], eax
	add ebx, 0x4cc
	cmp ebx, cgsArray+0x2660
	jnz CG_Init_80
	mov edi, [cgsArray+0x1c]
	test edi, edi
	jz CG_Init_90
CG_Init_360:
	mov dword [esp+0x4], _cstring_collision_map
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_LoadingString
	mov dword [esp], cgsArray+0x144
	call CL_CM_LoadMap
	mov edx, [ebp-0x60]
	mov [esp], edx
	call Menu_Setup
	mov dword [esp+0x4], _cstring_graphics
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call CG_LoadingString
	cmp byte [g_mapLoaded], 0x0
	jz CG_Init_100
CG_Init_350:
	mov dword [esp+0x4], _cstring_game_media
	mov edx, [ebp+0x8]
	mov [esp], edx
	call CG_LoadingString
	lea ecx, [ebp-0x58]
	mov [esp+0x4], ecx
	mov dword [esp], cgsArray+0x149
	call Com_StripExtension
	mov eax, [ebp+0x8]
	mov [esp], eax
	call FX_InitSystem
	call FX_RegisterDefaultEffect
	call SCR_UpdateLoadScreen
	call SCR_UpdateLoadScreen
	mov dword [esp+0x4], _cstring___textures
	mov edx, [ebp+0x8]
	mov [esp], edx
	call CG_LoadingString
	mov dword [esp+0x4], 0x7
	mov dword [esp], _cstring_lagometer
	call Material_RegisterHandle
	mov [cgMedia+0x20], eax
	mov dword [esp+0x4], 0x7
	mov dword [esp], _cstring_headicondisconne
	call Material_RegisterHandle
	mov [cgMedia+0xc], eax
	mov dword [esp+0x4], 0x7
	mov dword [esp], _cstring_headiconyouinkil
	call Material_RegisterHandle
	mov [cgMedia+0x10], eax
	mov dword [esp+0x4], 0x7
	mov dword [esp], _cstring_killiconmelee
	call Material_RegisterHandle
	mov dword [esp+0x4], 0x7
	mov dword [esp], _cstring_killiconsuicide
	call Material_RegisterHandle
	mov dword [esp+0x4], 0x7
	mov dword [esp], _cstring_killiconfalling
	call Material_RegisterHandle
	mov dword [esp+0x4], 0x7
	mov dword [esp], _cstring_killiconcrush
	call Material_RegisterHandle
	mov dword [esp+0x4], 0x7
	mov dword [esp], _cstring_killicondied
	call Material_RegisterHandle
	mov dword [esp+0x4], 0x6
	mov dword [esp], _cstring_gfx_tracer
	call Material_RegisterHandle
	mov [cgMedia+0x14], eax
	mov dword [esp+0x4], 0x6
	mov dword [esp], _cstring_gfx_laser
	call Material_RegisterHandle
	mov [cgMedia+0x18], eax
	mov dword [esp+0x4], 0x6
	mov dword [esp], _cstring_gfx_laser_light
	call Material_RegisterHandle
	mov [cgMedia+0x1c], eax
	mov dword [esp+0x4], 0x7
	mov dword [esp], _cstring_hint_usable
	call Material_RegisterHandle
	mov [cgMedia+0x2c], eax
	mov dword [esp+0x4], 0x7
	mov dword [esp], _cstring_hint_health
	call Material_RegisterHandle
	mov [cgMedia+0x30], eax
	mov dword [esp+0x4], 0x7
	mov dword [esp], _cstring_hint_friendly
	call Material_RegisterHandle
	mov [cgMedia+0x34], eax
	mov dword [esp+0x4], 0x7
	mov dword [esp], _cstring_stance_stand
	call Material_RegisterHandle
	mov [cgMedia+0x238], eax
	mov dword [esp+0x4], 0x7
	mov dword [esp], _cstring_stance_crouch
	call Material_RegisterHandle
	mov [cgMedia+0x23c], eax
	mov dword [esp+0x4], 0x7
	mov dword [esp], _cstring_stance_prone
	call Material_RegisterHandle
	mov [cgMedia+0x240], eax
	mov dword [esp+0x4], 0x7
	mov dword [esp], _cstring_stance_flash
	call Material_RegisterHandle
	mov [cgMedia+0x244], eax
	mov dword [esp+0x4], 0x7
	mov dword [esp], _cstring_objective
	call Material_RegisterHandle
	mov [cgMedia+0x248], eax
	mov dword [esp+0x4], 0x7
	mov dword [esp], _cstring_compassping_frie
	call Material_RegisterHandle
	mov [cgMedia+0x24c], eax
	mov dword [esp+0x4], 0x7
	mov dword [esp], _cstring_objective_friend
	call Material_RegisterHandle
	mov [cgMedia+0x250], eax
	mov dword [esp+0x4], 0x7
	mov dword [esp], _cstring_hit_direction
	call Material_RegisterHandle
	mov [cgMedia+0x254], eax
	mov dword [esp+0x4], 0x7
	mov dword [esp], _cstring_hint_mantle
	call Material_RegisterHandle
	mov [cgMedia+0x258], eax
	mov dword [esp+0x4], 0x7
	mov dword [esp], _cstring_compassping_frie1
	call Material_RegisterHandle
	mov [cgMedia+0x2710], eax
	mov dword [esp+0x4], 0x7
	mov dword [esp], _cstring_compassping_frie2
	call Material_RegisterHandle
	mov [cgMedia+0x2714], eax
	mov dword [esp+0x4], 0x7
	mov dword [esp], _cstring_compassping_enem
	call Material_RegisterHandle
	mov [cgMedia+0x2718], eax
	mov dword [esp+0x4], 0x7
	mov dword [esp], _cstring_compassping_enem1
	call Material_RegisterHandle
	mov [cgMedia+0x271c], eax
	mov dword [esp+0x4], 0x7
	mov dword [esp], _cstring_compassping_enem2
	call Material_RegisterHandle
	mov [cgMedia+0x2720], eax
	mov dword [esp+0x4], 0x7
	mov dword [esp], _cstring_compassping_gren
	call Material_RegisterHandle
	mov [cgMedia+0x2724], eax
	mov dword [esp+0x4], 0x7
	mov dword [esp], _cstring_compassping_expl
	call Material_RegisterHandle
	mov [cgMedia+0x2728], eax
	mov dword [esp+0x4], 0x7
	mov dword [esp], _cstring_compass_radarlin
	call Material_RegisterHandle
	mov [cgMedia+0x272c], eax
	mov dword [esp+0x4], 0x7
	mov dword [esp], _cstring_compass_objpoint
	call Material_RegisterHandle
	mov [cgMedia+0x2734], eax
	mov dword [esp+0x4], 0x7
	mov dword [esp], _cstring_compass_objpoint1
	call Material_RegisterHandle
	mov [cgMedia+0x2730], eax
	mov dword [esp+0x4], 0x7
	mov dword [esp], _cstring_compass_objpoint2
	call Material_RegisterHandle
	mov [cgMedia+0x273c], eax
	mov dword [esp+0x4], 0x7
	mov dword [esp], _cstring_compass_objpoint3
	call Material_RegisterHandle
	mov [cgMedia+0x2738], eax
	mov dword [esp+0x4], 0x7
	mov dword [esp], _cstring_hud_grenadeicon
	call Material_RegisterHandle
	mov [cgMedia+0x2740], eax
	mov dword [esp+0x4], 0x7
	mov dword [esp], _cstring_hud_flashbangico
	call Material_RegisterHandle
	mov [cgMedia+0x2744], eax
	mov dword [esp+0x4], 0x7
	mov dword [esp], _cstring_hud_grenadethrow
	call Material_RegisterHandle
	mov [cgMedia+0x2748], eax
	mov dword [esp+0x4], 0x7
	mov dword [esp], _cstring_hud_grenadepoint
	call Material_RegisterHandle
	mov [cgMedia+0x274c], eax
	mov dword [esp+0x4], 0x7
	mov dword [esp], _cstring_hud_offscreenobj
	call Material_RegisterHandle
	mov [cgMedia+0x2750], eax
	mov dword [esp+0x4], 0x7
	mov dword [esp], _cstring_hudcolorbar
	call Material_RegisterHandle
	mov [cgMedia+0x4], eax
	mov dword [esp+0x4], _cstring___models
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call CG_LoadingString
	mov dword [esp+0x4], 0x7
	mov dword [esp], _cstring_headicontalkball
	call Material_RegisterHandle
	mov [cgMedia+0x8], eax
	call CG_RegisterScoreboardGraphics
	mov dword [esp+0x4], _cstring___items
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_LoadingString
	mov edx, [ebp+0x8]
	mov [esp], edx
	call CG_RegisterItems
	mov dword [esp+0x4], _cstring___inline_models
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call CG_LoadingString
	mov dword [esp+0x4], _cstring___server_models
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_LoadingString
	mov esi, 0x33f
	mov edi, cgsArray
	jmp CG_Init_110
CG_Init_130:
	add esi, 0x1
	add edi, 0x4
	cmp esi, 0x53e
	jz CG_Init_120
CG_Init_110:
	mov [esp+0x4], esi
	mov edx, [ebp+0x8]
	mov [esp], edx
	call CL_GetConfigString
	mov ebx, eax
	cmp byte [eax], 0x0
	jz CG_Init_130
	call SCR_UpdateLoadScreen
	mov [esp], ebx
	call R_RegisterModel
	mov [edi+0x298], eax
	add esi, 0x1
	add edi, 0x4
	cmp esi, 0x53e
	jnz CG_Init_110
CG_Init_120:
	mov ebx, 0x63f
	mov esi, cgsArray
	jmp CG_Init_140
CG_Init_160:
	add ebx, 0x1
	add esi, 0x4
	cmp ebx, 0x6a2
	jz CG_Init_150
CG_Init_140:
	mov [esp+0x4], ebx
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call CL_GetConfigString
	cmp byte [eax], 0x0
	jz CG_Init_160
	mov [esp], eax
	call FX_Register
	mov [esi+0xa98], eax
	add ebx, 0x1
	add esi, 0x4
	cmp ebx, 0x6a2
	jnz CG_Init_140
CG_Init_150:
	mov dword [esp], _cstring_propsamerican_sm
	call FX_Register
	mov [cgsArray+0xc24], eax
	mov esi, 0x1
	jmp CG_Init_170
CG_Init_190:
	add esi, 0x1
	cmp esi, 0x10
	jz CG_Init_180
CG_Init_170:
	lea eax, [esi+0x7a2]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CL_GetConfigString
	mov ebx, eax
	cmp byte [eax], 0x0
	jz CG_Init_190
	mov [esp], eax
	call BG_LoadShellShockDvars
	test eax, eax
	jz CG_Init_200
CG_Init_280:
	mov [esp], esi
	call BG_GetShellshockParms
	mov [esp], eax
	call BG_SetShellShockParmsFromDvars
	add esi, 0x1
	cmp esi, 0x10
	jnz CG_Init_170
CG_Init_180:
	mov dword [esp], _cstring_hold_breath
	call BG_LoadShellShockDvars
	test eax, eax
	jz CG_Init_210
	mov dword [esp], cgsArray+0xc28
	call BG_SetShellShockParmsFromDvars
	lea edx, [ebp-0x58]
	mov [esp], edx
	call CG_RegisterImpactEffects
	mov [cgMedia+0x2754], eax
	test eax, eax
	jz CG_Init_220
CG_Init_340:
	mov dword [esp], _cstring_impactsflesh_hit
	call FX_Register
	mov [cgMedia+0x2758], eax
	mov dword [esp], _cstring_impactsflesh_hit1
	call FX_Register
	mov [cgMedia+0x275c], eax
	mov dword [esp], _cstring_impactsflesh_hit2
	call FX_Register
	mov [cgMedia+0x2760], eax
	mov dword [esp], _cstring_dustdust_vehicle
	call FX_Register
	mov [cgMedia+0x277c], eax
	mov dword [esp], _cstring_treadfxheli_dust
	call FX_Register
	mov [cgMedia+0x2764], eax
	mov dword [esp], _cstring_treadfxheli_wate
	call FX_Register
	mov [cgMedia+0x2768], eax
	mov dword [esp], _cstring_smokesmoke_trail
	call FX_Register
	mov [cgMedia+0x276c], eax
	mov dword [esp], _cstring_smokesmoke_trail1
	call FX_Register
	mov [cgMedia+0x2770], eax
	mov dword [esp], _cstring_firefire_smoke_t
	call FX_Register
	mov [cgMedia+0x2774], eax
	mov dword [esp], _cstring_firejet_afterbur
	call FX_Register
	mov [cgMedia+0x2778], eax
	mov dword [esp+0x4], _cstring___game_media_don
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call CG_LoadingString
	mov dword [esp+0x4], _cstring_clients
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_LoadingString
	mov dword [esp+0x4], 0x7
	mov dword [esp], _cstring_ui_mphudtxt
	call UI_LoadMenus
	mov [esp+0x4], eax
	mov edx, [ebp-0x60]
	mov [esp], edx
	call UI_AddMenuList
	call CL_GetLocalClientActiveCount
	sub eax, 0x1
	jz CG_Init_230
	mov dword [esp+0x4], _cstring_compass_mp
	mov eax, [ebp-0x60]
	mov [esp], eax
	call Menus_FindByName
CG_Init_330:
	test eax, eax
	jz CG_Init_240
	lea edx, [eax+0x4]
	mov eax, [edx+0x8]
	mov [cgsArray+0x13b8], eax
	mov eax, [edx+0xc]
	mov [cgsArray+0x13bc], eax
	mov eax, [edx+0x4]
	mov [cgsArray+0x13c0], eax
CG_Init_240:
	xor edx, edx
	mov eax, cg_entitiesArray+0x4
CG_Init_250:
	movzx ecx, byte [ebp-0x59]
	mov [eax], cl
	add edx, 0x1
	add eax, 0x1dc
	cmp edx, 0x400
	jnz CG_Init_250
	mov [cgArray+0x490a4], cl
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_InitLocalEntities
	mov edx, [ebp+0x8]
	mov [esp], edx
	call DynEntCl_InitEntities
	mov byte [cgArray+0x4f3a0], 0x0
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call CG_SetConfigValues
	mov dword [esp+0x4], _cstring_null
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_LoadingString
	mov edx, [ebp+0x8]
	mov [esp], edx
	call CG_NorthDirectionChanged
	cmp byte [g_mapLoaded], 0x0
	jz CG_Init_260
CG_Init_320:
	mov eax, [cgArray+0x46128]
	mov [esp], eax
	call CG_ParseFog
	mov dword [esp], cgArray+0x49388
	call R_InitPrimaryLights
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call R_ClearShadowedPrimaryLightHistory
	cmp byte [g_ambientStarted], 0x0
	jnz CG_Init_270
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_StartAmbient
	mov byte [g_ambientStarted], 0x1
CG_Init_270:
	mov dword [esp+0x4], 0x0
	mov edx, [ebp+0x8]
	mov [esp], edx
	call CL_SetADS
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call AimTarget_Init
	mov eax, [ebp+0x8]
	mov [esp], eax
	call AimAssist_Init
	mov edx, [ebp+0x8]
	mov [esp], edx
	call CG_InitVote
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call CG_StartClientSideEffects
	mov eax, bgs
	mov dword [eax], 0x0
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_Init_200:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_couldnt_register
	mov dword [esp], 0x2
	call Com_Error
	jmp CG_Init_280
CG_Init_60:
	mov dword [esp+0x4], _cstring_sound_aliases
	mov edx, [ebp+0x8]
	mov [esp], edx
	call CG_LoadingString
	mov dword [esp], cgsArray+0x144
	call CL_LoadSoundAliases
	jmp CG_Init_50
CG_Init_40:
	mov dword [esp], 0x2
	call Com_SetWeaponInfoMemory
	call BG_ClearWeaponDef
	jmp CG_Init_290
CG_Init_30:
	mov dword [esp], Hunk_AllocXAnimClient
	call Mantle_CreateAnims
	mov eax, [ebx]
	jmp CG_Init_300
CG_Init_20:
	mov eax, [ebp-0x6c]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_cod
	mov dword [esp+0x4], _cstring_clientserver_gam
	mov dword [esp], 0x2
	call Com_Error
	jmp CG_Init_310
CG_Init_260:
	mov dword [esp], 0x0
	call SND_StopSounds
	jmp CG_Init_320
CG_Init_230:
	mov dword [esp+0x4], _cstring_compass
	mov ecx, [ebp-0x60]
	mov [esp], ecx
	call Menus_FindByName
	jmp CG_Init_330
CG_Init_210:
	mov dword [esp+0x4], _cstring_couldnt_find_sho
	mov dword [esp], 0x2
	call Com_Error
	mov dword [esp], cgsArray+0xc28
	call BG_SetShellShockParmsFromDvars
	lea edx, [ebp-0x58]
	mov [esp], edx
	call CG_RegisterImpactEffects
	mov [cgMedia+0x2754], eax
	test eax, eax
	jnz CG_Init_340
CG_Init_220:
	mov dword [esp+0x4], _cstring_error_reading_cs
	mov dword [esp], 0x2
	call Com_Error
	jmp CG_Init_340
CG_Init_100:
	mov dword [esp+0x4], cgsArray+0x144
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_LoadingString
	mov dword [esp], cgsArray+0x144
	call LoadWorld
	mov byte [g_mapLoaded], 0x1
	jmp CG_Init_350
CG_Init_90:
	call GScr_LoadConsts
	call BG_LoadPenetrationDepthTable
	jmp CG_Init_360


;Initialized global or static variables of cg_main_mp:
SECTION .data
cg_drawMaterialNames: dd _cstring_off, _cstring_contents_solid, _cstring_mask_shot, _cstring_mask_playersolid, 0x0
snd_drawInfoStrings: dd _cstring_none, _cstring_3d, _cstring_stream, _cstring_2d, 0x0
cg_drawFpsNames: dd _cstring_off, _cstring_simple, _cstring_simpleranges, _cstring_verbose, 0x0, 0x0


;Initialized constant data of cg_main_mp:
SECTION .rdata


;Zero initialized global or static variables of cg_main_mp:
SECTION .bss
g_mapLoaded: resb 0x1
g_ambientStarted: resb 0x7f
cgArray: resb 0xfd800
cgMedia: resb 0x27c0
cg_entitiesArray: resb 0x77000
cg_fov: resb 0x4
cg_debugInfoCornerOffset: resb 0x4
cg_drawFPS: resb 0x4
cg_drawFPSLabels: resb 0x4
cg_drawMaterial: resb 0x4
cg_drawScriptUsage: resb 0x4
cg_drawSnapshot: resb 0x4
cgsArray: resb 0x3a40
snd_drawInfo: resb 0x4
cg_hudDamageIconHeight: resb 0x4
cg_hudDamageIconInScope: resb 0x4
cg_hudDamageIconOffset: resb 0x4
cg_hudDamageIconWidth: resb 0x4
cg_hudGrenadeIconEnabledFlash: resb 0x4
cg_hudGrenadeIconHeight: resb 0x4
cg_hudGrenadeIconInScope: resb 0x4
cg_hudGrenadeIconMaxHeight: resb 0x4
cg_hudGrenadeIconMaxRangeFlash: resb 0x4
cg_hudGrenadeIconMaxRangeFrag: resb 0x4
cg_hudGrenadeIconOffset: resb 0x4
cg_hudGrenadeIconWidth: resb 0x4
cg_hudGrenadePointerHeight: resb 0x4
cg_hudGrenadePointerPivot: resb 0x4
cg_hudGrenadePointerPulseFreq: resb 0x4
cg_hudGrenadePointerPulseMax: resb 0x4
cg_hudGrenadePointerPulseMin: resb 0x4
cg_hudGrenadePointerWidth: resb 0x4
cg_crosshairAlpha: resb 0x4
cg_crosshairAlphaMin: resb 0x4
cg_crosshairDynamic: resb 0x4
cg_crosshairEnemyColor: resb 0x4
cg_debug_overlay_viewport: resb 0x4
cg_drawCrosshair: resb 0x4
cg_drawGun: resb 0x4
cg_drawTurretCrosshair: resb 0x4
cg_drawpaused: resb 0x4
cg_enemyNameFadeIn: resb 0x4
cg_friendlyNameFadeIn: resb 0x4
cg_paused: resb 0x4
cg_debugEvents: resb 0x4
cg_footsteps: resb 0x4
cg_laserEndOffset: resb 0x4
cg_laserFlarePct: resb 0x4
cg_laserLight: resb 0x4
cg_laserLightBeginOffset: resb 0x4
cg_laserLightBodyTweak: resb 0x4
cg_laserLightEndOffset: resb 0x4
cg_laserLightRadius: resb 0x4
cg_laserRadius: resb 0x4
cg_laserRange: resb 0x4
cg_laserRangePlayer: resb 0x4
cg_tracerLength: resb 0x4
cg_hudDamageIconTime: resb 0x4
cg_blood: resb 0x4
cg_brass: resb 0x4
cg_firstPersonTracerChance: resb 0x4
cg_gun_move_f: resb 0x4
cg_gun_move_minspeed: resb 0x4
cg_gun_move_r: resb 0x4
cg_gun_move_rate: resb 0x4
cg_gun_move_u: resb 0x4
cg_gun_ofs_f: resb 0x4
cg_gun_ofs_r: resb 0x4
cg_gun_ofs_u: resb 0x4
cg_gun_x: resb 0x4
cg_gun_y: resb 0x4
cg_gun_z: resb 0x4
cg_laserForceOn: resb 0x4
cg_marks_ents_player_only: resb 0x4
cg_tracerChance: resb 0x4
cg_tracerScale: resb 0x4
cg_tracerScaleDistRange: resb 0x4
cg_tracerScaleMinDist: resb 0x4
cg_tracerScrewDist: resb 0x4
cg_tracerScrewRadius: resb 0x4
cg_tracerSpeed: resb 0x4
cg_tracerWidth: resb 0x4
cg_weaponCycleDelay: resb 0x8
cg_weaponsArray: resb 0x2200
overrideNVGModelWithKnife: resb 0x4
cgDC: resb 0x16a0
cg_centertime: resb 0x8
cg_chatHeight: resb 0x4
cg_chatTime: resb 0x4
cg_descriptiveText: resb 0x4
cg_draw2D: resb 0x4
cg_drawCrosshairNames: resb 0x4
cg_drawFriendlyNames: resb 0x4
cg_drawSpectatorMessages: resb 0x4
cg_drawThroughWalls: resb 0x4
cg_enemyNameFadeOut: resb 0x4
cg_friendlyNameFadeOut: resb 0x4
cg_hudChatIntermissionPosition: resb 0x4
cg_hudChatPosition: resb 0x4
cg_hudSayPosition: resb 0x4
cg_hudVotePosition: resb 0x4
cg_minicon: resb 0x4
cg_overheadIconSize: resb 0x4
cg_overheadNamesFarDist: resb 0x4
cg_overheadNamesFarScale: resb 0x4
cg_overheadNamesFont: resb 0x4
cg_overheadNamesGlow: resb 0x4
cg_overheadNamesMaxDist: resb 0x4
cg_overheadNamesNearDist: resb 0x4
cg_overheadNamesSize: resb 0x4
cg_overheadRankSize: resb 0x4
cg_drawLagometer: resb 0x4
cg_nopredict: resb 0x4
cg_synchronousClients: resb 0x4
cg_entityOriginArray: resb 0x3000
cg_connectionIconSize: resb 0x4
cg_constantSizeHeadIcons: resb 0x4
cg_cursorHints: resb 0x4
cg_debugPosition: resb 0x4
cg_developer: resb 0x4
cg_drawBreathHint: resb 0x4
cg_drawCrosshairNamesPosX: resb 0x4
cg_drawCrosshairNamesPosY: resb 0x4
cg_drawHealth: resb 0x4
cg_drawMantleHint: resb 0x4
cg_drawShellshock: resb 0x4
cg_dumpAnims: resb 0x4
cg_errorDecay: resb 0x4
cg_fovMin: resb 0x4
cg_fovScale: resb 0x4
cg_gameBoldMessageWidth: resb 0x4
cg_gameMessageWidth: resb 0x4
cg_headIconMinScreenRadius: resb 0x4
cg_hintFadeTime: resb 0x4
cg_hudProneY: resb 0x4
cg_hudStanceFlash: resb 0x4
cg_hudStanceHintPrints: resb 0x4
cg_invalidCmdHintBlinkInterval: resb 0x4
cg_invalidCmdHintDuration: resb 0x4
cg_mapLocationSelectionCursorSpeed: resb 0x4
cg_predictItems: resb 0x4
cg_scriptIconSize: resb 0x4
cg_showmiss: resb 0x4
cg_subtitleMinTime: resb 0x4
cg_subtitleWidthStandard: resb 0x4
cg_subtitleWidthWidescreen: resb 0x4
cg_subtitles: resb 0x4
cg_teamChatsOnly: resb 0x4
cg_thirdPerson: resb 0x4
cg_thirdPersonAngle: resb 0x4
cg_thirdPersonRange: resb 0x4
cg_viewZSmoothingMax: resb 0x4
cg_viewZSmoothingMin: resb 0x4
cg_viewZSmoothingTime: resb 0x4
cg_voiceIconSize: resb 0x4
cg_weaponHintsCoD1Style: resb 0x4
cg_weaponleftbone: resb 0x4
cg_weaponrightbone: resb 0x4
cg_youInKillCamSize: resb 0x4


;All cstrings:
SECTION .rdata
_cstring_warning_no_alias:		db "WARNING: no alias prefix defined, using default",0ah,0
_cstring_collision_defaul:		db "collision_default",0
_cstring_s_default:		db "%s_default",0
_cstring_s_s:		db "%s_%s",0
_cstring_null:		db 0
_cstring_physic:		db "physic",0
_cstring_error_exceeded_a:		db "ERROR: exceeded ",27h,"audio class",27h," max %d > %d",0ah,0
_cstring_d_d:		db "%d %d",0
_cstring_vote_string:		db "vote string",0
_cstring_n:		db "n",0
_cstring_t:		db "t",0
_cstring_draw_the_view_mo:		db "Draw the view model",0
_cstring_cg_drawgun:		db "cg_drawGun",0
_cstring_draw_cursor_hint:		db "Draw cursor hints where:",0ah," 0: no hints",0ah,09h,"1:",09h,"sin size pulse",0ah,09h,"2:",09h,"one way size pulse",0ah,09h,"3:",09h,"alpha pulse",0ah,09h,"4:",09h,"static image",0
_cstring_cg_cursorhints:		db "cg_cursorHints",0
_cstring_draw_weapon_hint:		db "Draw weapon hints in CoD1 style: with the weapon name, and with the icon below",0
_cstring_cg_weaponhintsco:		db "cg_weaponHintsCoD1Style",0
_cstring_time_in_millisec:		db "Time in milliseconds for the cursor hint to fade",0
_cstring_cg_hintfadetime:		db "cg_hintFadeTime",0
_cstring_the_field_of_vie:		db "The field of view angle in degrees",0
_cstring_cg_fov:		db "cg_fov",0
_cstring_scale_applied_to:		db "Scale applied to the field of view",0
_cstring_cg_fovscale:		db "cg_fovScale",0
_cstring_the_minimum_poss:		db "The minimum possible field of view",0
_cstring_cg_fovmin:		db "cg_fovMin",0
_cstring_draw_2d_screen_e:		db "Draw 2D screen elements",0
_cstring_cg_draw2d:		db "cg_draw2D",0
_cstring_draw_health_bar:		db "Draw health bar",0
_cstring_cg_drawhealth:		db "cg_drawHealth",0
_cstring_draw_a_hold_brea:		db "Draw a ",27h,"hold breath to steady",27h," hint",0
_cstring_cg_drawbreathhin:		db "cg_drawBreathHint",0
_cstring_draw_a_press_key:		db "Draw a ",27h,"press key to mantle",27h," hint",0
_cstring_cg_drawmantlehin:		db "cg_drawMantleHint",0
_cstring_draw_frames_per_:		db "Draw frames per second",0
_cstring_cg_drawfps:		db "cg_drawFPS",0
_cstring_draw_fps_info_la:		db "Draw FPS Info Labels",0
_cstring_cg_drawfpslabels:		db "cg_drawFPSLabels",0
_cstring_offset_from_topr:		db "Offset from top-right corner, for cg_drawFPS, etc",0
_cstring_cg_debuginfocorn:		db "cg_debugInfoCornerOffset",0
_cstring_draw_debugging_i:		db "Draw debugging information for sounds",0
_cstring_snd_drawinfo:		db "snd_drawInfo",0
_cstring_draw_debugging_i1:		db "Draw debugging information for scripts",0
_cstring_cg_drawscriptusa:		db "cg_drawScriptUsage",0
_cstring_draw_debugging_i2:		db "Draw debugging information for materials",0
_cstring_cg_drawmaterial:		db "cg_drawMaterial",0
_cstring_draw_debugging_i3:		db "Draw debugging information for snapshots",0
_cstring_cg_drawsnapshot:		db "cg_drawSnapshot",0
_cstring_turn_on_weapon_c:		db "Turn on weapon crosshair",0
_cstring_cg_drawcrosshair:		db "cg_drawCrosshair",0
_cstring_draw_a_cross_hai:		db "Draw a cross hair when using a turret",0
_cstring_cg_drawturretcro:		db "cg_drawTurretCrosshair",0
_cstring_draw_the_name_of:		db "Draw the name of an enemy under the crosshair",0
_cstring_cg_drawcrosshair1:		db "cg_drawCrosshairNames",0
_cstring_virtual_screen_s:		db "Virtual screen space position of the crosshair name",0
_cstring_cg_drawcrosshair2:		db "cg_drawCrosshairNamesPosX",0
_cstring_cg_drawcrosshair3:		db "cg_drawCrosshairNamesPosY",0
_cstring_draw_shellshock_:		db "Draw shellshock & flashbang screen effects.",0
_cstring_cg_drawshellshoc:		db "cg_drawShellshock",0
_cstring_enables_drawing_:		db "Enables drawing of spectator HUD messages.",0
_cstring_cg_drawspectator:		db "cg_drawSpectatorMessages",0
_cstring_the_background_c:		db "The background color of the flash when the stance changes",0
_cstring_cg_hudstanceflas:		db "cg_hudStanceFlash",0
_cstring_draw_helpful_tex:		db "Draw helpful text to say how to change stances",0
_cstring_cg_hudstancehint:		db "cg_hudStanceHintPrints",0
_cstring_the_width_of_the:		db "The width of the damage icon",0
_cstring_cg_huddamageicon:		db "cg_hudDamageIconWidth",0
_cstring_the_height_of_th:		db "The height of the damage icon",0
_cstring_cg_huddamageicon1:		db "cg_hudDamageIconHeight",0
_cstring_the_offset_from_:		db "The offset from the center of the damage icon",0
_cstring_cg_huddamageicon2:		db "cg_hudDamageIconOffset",0
_cstring_the_amount_of_ti:		db "The amount of time for the damage icon to stay on screen after damage is taken",0
_cstring_cg_huddamageicon3:		db "cg_hudDamageIconTime",0
_cstring_draw_damage_icon:		db "Draw damage icons when aiming down the sight of a scoped weapon",0
_cstring_cg_huddamageicon4:		db "cg_hudDamageIconInScope",0
_cstring_the_minimum_dist:		db "The minimum distance that a grenade has to be from a player in order to be shown on the grenade indicator",0
_cstring_cg_hudgrenadeico:		db "cg_hudGrenadeIconMaxRangeFrag",0
_cstring_the_minimum_dist1:		db "The minimum distance that a flashbang has to be from a player in order to be shown on the grenade indicator",0
_cstring_cg_hudgrenadeico1:		db "cg_hudGrenadeIconMaxRangeFlash",0
_cstring_the_minimum_heig:		db "The minimum height difference between a player and a grenade for the grenade to be shown on the grenade indicator",0
_cstring_cg_hudgrenadeico2:		db "cg_hudGrenadeIconMaxHeight",0
_cstring_show_the_grenade:		db "Show the grenade indicator when aiming down the sight of a scoped weapon",0
_cstring_cg_hudgrenadeico3:		db "cg_hudGrenadeIconInScope",0
_cstring_the_offset_from_1:		db "The offset from the center of the screen for a grenade icon",0
_cstring_cg_hudgrenadeico4:		db "cg_hudGrenadeIconOffset",0
_cstring_the_height_of_th1:		db "The height of the grenade indicator icon",0
_cstring_cg_hudgrenadeico5:		db "cg_hudGrenadeIconHeight",0
_cstring_the_width_of_the1:		db "The width of the grenade indicator icon",0
_cstring_cg_hudgrenadeico6:		db "cg_hudGrenadeIconWidth",0
_cstring_show_the_grenade1:		db "Show the grenade indicator for flash grenades",0
_cstring_cg_hudgrenadeico7:		db "cg_hudGrenadeIconEnabledFlash",0
_cstring_the_height_of_th2:		db "The height of the grenade indicator pointer",0
_cstring_cg_hudgrenadepoi:		db "cg_hudGrenadePointerHeight",0
_cstring_the_width_of_the2:		db "The width of the grenade indicator pointer",0
_cstring_cg_hudgrenadepoi1:		db "cg_hudGrenadePointerWidth",0
_cstring_the_pivot_point_:		db "The pivot point of th grenade indicator pointer",0
_cstring_cg_hudgrenadepoi2:		db "cg_hudGrenadePointerPivot",0
_cstring_the_number_of_ti:		db "The number of times per second that the grenade indicator flashes in Hertz",0
_cstring_cg_hudgrenadepoi3:		db "cg_hudGrenadePointerPulseFreq",0
_cstring_the_maximum_alph:		db "The maximum alpha of the grenade indicator pulse. Values higher than 1 will cause the indicator to remain at full brightness for longer",0
_cstring_cg_hudgrenadepoi4:		db "cg_hudGrenadePointerPulseMax",0
_cstring_the_minimum_alph:		db "The minimum alpha of the grenade indicator pulse. Values lower than 0 will cause the indicator to remain at full transparency for longer",0
_cstring_cg_hudgrenadepoi5:		db "cg_hudGrenadePointerPulseMin",0
_cstring_position_of_the_:		db "Position of the HUD chat box",0
_cstring_cg_hudchatpositi:		db "cg_hudChatPosition",0
_cstring_position_of_the_1:		db "Position of the HUD chat box during intermission",0
_cstring_cg_hudchatinterm:		db "cg_hudChatIntermissionPosition",0
_cstring_position_of_the_2:		db "Position of the HUD say box",0
_cstring_cg_hudsaypositio:		db "cg_hudSayPosition",0
_cstring_position_of_the_3:		db "Position of the HUD vote box",0
_cstring_cg_hudvotepositi:		db "cg_hudVotePosition",0
_cstring_enable_the_lagom:		db "Enable the ",27h,"lagometer",27h,0
_cstring_cg_drawlagometer:		db "cg_drawLagometer",0
_cstring_virtual_screen_y:		db "Virtual screen y coordinate of the prone blocked message",0
_cstring_cg_hudproney:		db "cg_hudProneY",0
_cstring_speed_of_the_cur:		db "Speed of the cursor when selecting a location on the map",0
_cstring_cg_maplocationse:		db "cg_mapLocationSelectionCursorSpeed",0
_cstring_the_delay_after_:		db "The delay after cycling to a new weapon to prevent holding down the cycle weapon button from cycling too fast",0
_cstring_cg_weaponcyclede:		db "cg_weaponCycleDelay",0
_cstring_the_alpha_value_:		db "The alpha value of the crosshair",0
_cstring_cg_crosshairalph:		db "cg_crosshairAlpha",0
_cstring_the_minimum_alph1:		db "The minimum alpha value of the crosshair when it fades in",0
_cstring_cg_crosshairalph1:		db "cg_crosshairAlphaMin",0
_cstring_crosshair_is_dyn:		db "Crosshair is Dynamic",0
_cstring_cg_crosshairdyna:		db "cg_crosshairDynamic",0
_cstring_the_crosshair_co:		db "The crosshair color when over an enemy",0
_cstring_cg_crosshairenem:		db "cg_crosshairEnemyColor",0
_cstring_weapons_eject_br:		db "Weapons eject brass",0
_cstring_cg_brass:		db "cg_brass",0
_cstring_x_position_of_th:		db "x position of the viewmodel",0
_cstring_cg_gun_x:		db "cg_gun_x",0
_cstring_y_position_of_th:		db "y position of the viewmodel",0
_cstring_cg_gun_y:		db "cg_gun_y",0
_cstring_z_position_of_th:		db "z position of the viewmodel",0
_cstring_cg_gun_z:		db "cg_gun_z",0
_cstring_weapon_movement_:		db "Weapon movement forward due to player movement",0
_cstring_cg_gun_move_f:		db "cg_gun_move_f",0
_cstring_weapon_movement_1:		db "Weapon movement right due to player movement",0
_cstring_cg_gun_move_r:		db "cg_gun_move_r",0
_cstring_weapon_movement_2:		db "Weapon movement up due to player movement",0
_cstring_cg_gun_move_u:		db "cg_gun_move_u",0
_cstring_forward_weapon_o:		db "Forward weapon offset when prone/ducked",0
_cstring_cg_gun_ofs_f:		db "cg_gun_ofs_f",0
_cstring_right_weapon_off:		db "Right weapon offset when prone/ducked",0
_cstring_cg_gun_ofs_r:		db "cg_gun_ofs_r",0
_cstring_up_weapon_offset:		db "Up weapon offset when prone/ducked",0
_cstring_cg_gun_ofs_u:		db "cg_gun_ofs_u",0
_cstring_the_base_weapon_:		db "The base weapon movement rate",0
_cstring_cg_gun_move_rate:		db "cg_gun_move_rate",0
_cstring_the_minimum_weap:		db "The minimum weapon movement rate",0
_cstring_cg_gun_move_mins:		db "cg_gun_move_minspeed",0
_cstring_the_time_for_a_c:		db "The time for a center printed message to fade",0
_cstring_cg_centertime:		db "cg_centertime",0
_cstring_output_position_:		db "Output position debugging information",0
_cstring_cg_debugposition:		db "cg_debugposition",0
_cstring_output_event_deb:		db "Output event debug information",0
_cstring_cg_debugevents:		db "cg_debugevents",0
_cstring_decay_for_predic:		db "Decay for predicted error",0
_cstring_cg_errordecay:		db "cg_errordecay",0
_cstring_dont_do_client_s:		db "Don",27h,"t do client side prediction",0
_cstring_cg_nopredict:		db "cg_nopredict",0
_cstring_show_prediction_:		db "Show prediction errors",0
_cstring_cg_showmiss:		db "cg_showmiss",0
_cstring_play_footstep_so:		db "Play footstep sounds",0
_cstring_cg_footsteps:		db "cg_footsteps",0
_cstring_the_probability_:		db "The probability that a bullet is a tracer round for your bullets",0
_cstring_cg_firstpersontr:		db "cg_firstPersonTracerChance",0
_cstring_force_laser_sigh:		db "Force laser sights on in all possible places (for debug purposes).",0
_cstring_cg_laserforceon:		db "cg_laserForceOn",0
_cstring_the_maximum_rang:		db "The maximum range of a laser beam",0
_cstring_cg_laserrange:		db "cg_laserRange",0
_cstring_the_maximum_rang1:		db "The maximum range of the player",27h,"s laser beam",0
_cstring_cg_laserrangepla:		db "cg_laserRangePlayer",0
_cstring_the_size_radius_:		db "The size (radius) of a laser beam",0
_cstring_cg_laserradius:		db "cg_laserRadius",0
_cstring_whether_to_draw_:		db "Whether to draw the light emitted from a laser (not the laser itself)",0
_cstring_cg_laserlight:		db "cg_laserLight",0
_cstring_amount_to_add_to:		db "Amount to add to length of beam for light when laser hits a body (for hitboxes).",0
_cstring_cg_laserlightbod:		db "cg_laserLightBodyTweak",0
_cstring_the_radius_of_th:		db "The radius of the light at the far end of a laser beam",0
_cstring_cg_laserlightrad:		db "cg_laserLightRadius",0
_cstring_how_far_from_the:		db "How far from the true beginning of the beam the light at the beginning is.",0
_cstring_cg_laserlightbeg:		db "cg_laserLightBeginOffset",0
_cstring_how_far_from_the1:		db "How far from the true end of the beam the light at the end is.",0
_cstring_cg_laserlightend:		db "cg_laserLightEndOffset",0
_cstring_how_far_from_the2:		db "How far from the point of collision the end of the beam is.",0
_cstring_cg_laserendoffse:		db "cg_laserEndOffset",0
_cstring_percentage_laser:		db "Percentage laser widens over distance from viewer.",0
_cstring_cg_laserflarepct:		db "cg_laserFlarePct",0
_cstring_marks_on_entitie:		db "Marks on entities from players",27h," bullets only.",0
_cstring_cg_marks_ents_pl:		db "cg_marks_ents_player_only",0
_cstring_the_probability_1:		db "The probability that a bullet is a tracer round",0
_cstring_cg_tracerchance:		db "cg_tracerchance",0
_cstring_the_width_of_the3:		db "The width of the tracer round",0
_cstring_cg_tracerwidth:		db "cg_tracerwidth",0
_cstring_the_speed_of_a_t:		db "The speed of a tracer round in units per second",0
_cstring_cg_tracerspeed:		db "cg_tracerSpeed",0
_cstring_the_length_of_a_:		db "The length of a tracer round",0
_cstring_cg_tracerlength:		db "cg_tracerlength",0
_cstring_scale_the_tracer:		db "Scale the tracer at a distance, so it",27h,"s still visible",0
_cstring_cg_tracerscale:		db "cg_tracerScale",0
_cstring_the_minimum_dist2:		db "The minimum distance to scale a tracer",0
_cstring_cg_tracerscalemi:		db "cg_tracerScaleMinDist",0
_cstring_the_range_at_whi:		db "The range at which a tracer is scaled to its maximum amount",0
_cstring_cg_tracerscaledi:		db "cg_tracerScaleDistRange",0
_cstring_the_length_a_tra:		db "The length a tracer goes as it completes a full corkscrew revolution",0
_cstring_cg_tracerscrewdi:		db "cg_tracerScrewDist",0
_cstring_the_radius_of_a_:		db "The radius of a tracer",27h,"s corkscrew motion",0
_cstring_cg_tracerscrewra:		db "cg_tracerScrewRadius",0
_cstring_the_range_of_the:		db "The range of the camera from the player in third person view",0
_cstring_cg_thirdpersonra:		db "cg_thirdPersonRange",0
_cstring_the_angle_of_the:		db "The angle of the camera from the player in third person view",0
_cstring_cg_thirdpersonan:		db "cg_thirdPersonAngle",0
_cstring_use_third_person:		db "Use third person view",0
_cstring_cg_thirdperson:		db "cg_thirdPerson",0
_cstring_the_amount_of_ti1:		db "The amount of time that a chat message is visible",0
_cstring_cg_chattime:		db "cg_chatTime",0
_cstring_the_font_height_:		db "The font height of a chat message",0
_cstring_cg_chatheight:		db "cg_chatHeight",0
_cstring_turn_on_client_s:		db "Turn on client side prediction for item pickup",0
_cstring_cg_predictitems:		db "cg_predictItems",0
_cstring_allow_chatting_o:		db "Allow chatting only on the same team",0
_cstring_cg_teamchatsonly:		db "cg_teamChatsOnly",0
_cstring_pause_the_game:		db "Pause the game",0
_cstring_cl_paused:		db "cl_paused",0
_cstring_draw_paused_scre:		db "Draw paused screen",0
_cstring_cg_drawpaused:		db "cg_drawpaused",0
_cstring_client_is_synchr:		db "Client is synchronized to the server - allows smooth demos",0
_cstring_g_synchronouscli:		db "g_synchronousClients",0
_cstring_remove_the_snipe:		db "Remove the sniper overlay so you can check that the scissor window is correct.",0
_cstring_cg_debug_overlay:		db "cg_debug_overlay_viewport",0
_cstring_output_animation:		db "Output animation info for the given entity id",0
_cstring_cg_dumpanims:		db "cg_dumpAnims",0
_cstring_enable_developme:		db "Enable development options",0
_cstring_developer:		db "developer",0
_cstring_display_the_mini:		db "Display the mini console on screen",0
_cstring_con_minicon:		db "con_minicon",0
_cstring_show_subtitles:		db "Show subtitles",0
_cstring_cg_subtitles:		db "cg_subtitles",0
_cstring_the_minimum_time:		db "The minimum time that the subtitles are displayed on screen in seconds",0
_cstring_cg_subtitleminti:		db "cg_subtitleMinTime",0
_cstring_the_width_of_the4:		db "The width of the subtitles in non wide-screen",0
_cstring_cg_subtitlewidth:		db "cg_subtitleWidthStandard",0
_cstring_the_width_of_the5:		db "The width of the subtitles in wide-screen ",0
_cstring_cg_subtitlewidth1:		db "cg_subtitleWidthWidescreen",0
_cstring_the_maximum_char:		db "The maximum character width of the game messages",0
_cstring_cg_gamemessagewi:		db "cg_gameMessageWidth",0
_cstring_the_maximum_char1:		db "The maximum character width of the bold game messages",0
_cstring_cg_gameboldmessa:		db "cg_gameBoldMessageWidth",0
_cstring_draw_descriptive:		db "Draw descriptive spectator messages",0
_cstring_cg_descriptivete:		db "cg_descriptiveText",0
_cstring_size_of_the_you_:		db "Size of the ",27h,"you",27h," Icon in the kill cam",0
_cstring_cg_youinkillcams:		db "cg_youInKillCamSize",0
_cstring_size_of_icons_de:		db "Size of Icons defined by script",0
_cstring_cg_scripticonsiz:		db "cg_scriptIconSize",0
_cstring_size_of_the_conn:		db "Size of the connection icon",0
_cstring_cg_connectionico:		db "cg_connectionIconSize",0
_cstring_size_of_the_voic:		db "Size of the ",27h,"voice",27h," icon",0
_cstring_cg_voiceiconsize:		db "cg_voiceIconSize",0
_cstring_head_icons_are_t:		db "Head icons are the same size regardless of distance from the player",0
_cstring_cg_constantsizeh:		db "cg_constantSizeHeadIcons",0
_cstring_the_minumum_radi:		db "The minumum radius of a head icon on the screen",0
_cstring_cg_headiconminsc:		db "cg_headIconMinScreenRadius",0
_cstring_the_maximum_dist:		db "The maximum distance for showing friendly player names",0
_cstring_cg_overheadnames:		db "cg_overheadNamesMaxDist",0
_cstring_the_near_distanc:		db "The near distance at which names are full size",0
_cstring_cg_overheadnames1:		db "cg_overheadNamesNearDist",0
_cstring_the_far_distance:		db "The far distance at which name sizes are scaled by cg_overheadNamesFarScale",0
_cstring_cg_overheadnames2:		db "cg_overheadNamesFarDist",0
_cstring_the_amount_to_sc:		db "The amount to scale overhead name sizes at cg_overheadNamesFarDist",0
_cstring_cg_overheadnames3:		db "cg_overheadNamesFarScale",0
_cstring_the_maximum_size:		db "The maximum size to show overhead names",0
_cstring_cg_overheadnames4:		db "cg_overheadNamesSize",0
_cstring_the_maximum_size1:		db "The maximum size to show overhead icons like ",27h,"rank",27h,0
_cstring_cg_overheadicons:		db "cg_overheadIconSize",0
_cstring_the_size_to_show:		db "The size to show rank text",0
_cstring_cg_overheadranks:		db "cg_overheadRankSize",0
_cstring_glow_color_for_o:		db "Glow color for overhead names",0
_cstring_cg_overheadnames5:		db "cg_overheadNamesGlow",0
_cstring_font_for_overhea:		db "Font for overhead names ( see menudefinition.h )",0
_cstring_cg_overheadnames6:		db "cg_overheadNamesFont",0
_cstring_whether_to_show_:		db "Whether to show friendly names in game",0
_cstring_cg_drawfriendlyn:		db "cg_drawFriendlyNames",0
_cstring_time_in_millisec1:		db "Time in milliseconds to fade in enemy names",0
_cstring_cg_enemynamefade:		db "cg_enemyNameFadeIn",0
_cstring_time_in_millisec2:		db "Time in milliseconds to fade in friendly names",0
_cstring_cg_friendlynamef:		db "cg_friendlyNameFadeIn",0
_cstring_time_in_millisec3:		db "Time in milliseconds to fade out enemy names",0
_cstring_cg_enemynamefade1:		db "cg_enemyNameFadeOut",0
_cstring_time_in_millisec4:		db "Time in milliseconds to fade out friendly names",0
_cstring_cg_friendlynamef1:		db "cg_friendlyNameFadeOut",0
_cstring_whether_to_draw_1:		db "Whether to draw friendly names through walls or not",0
_cstring_cg_drawthroughwa:		db "cg_drawThroughWalls",0
_cstring_show_blood:		db "Show Blood",0
_cstring_cg_blood:		db "cg_blood",0
_cstring_left_hand_weapon:		db "Left hand weapon bone name",0
_cstring_tag_weapon_left:		db "tag_weapon_left",0
_cstring_cg_weaponleftbon:		db "cg_weaponleftbone",0
_cstring_right_handed_wea:		db "Right handed weapon bone name",0
_cstring_tag_weapon_right:		db "tag_weapon_right",0
_cstring_cg_weaponrightbo:		db "cg_weaponrightbone",0
_cstring_duration_of_an_i:		db "Duration of an invalid command hint",0
_cstring_cg_invalidcmdhin:		db "cg_invalidCmdHintDuration",0
_cstring_blink_rate_of_an:		db "Blink rate of an invalid command hint",0
_cstring_cg_invalidcmdhin1:		db "cg_invalidCmdHintBlinkInterval",0
_cstring_threshhold_for_t:		db "Threshhold for the minimum smoothing distance it must move to smooth",0
_cstring_cg_viewzsmoothin:		db "cg_viewZSmoothingMin",0
_cstring_threshhold_for_t1:		db "Threshhold for the maximum smoothing distance we",27h,"ll do",0
_cstring_cg_viewzsmoothin1:		db "cg_viewZSmoothingMax",0
_cstring_amount_of_time_t:		db "Amount of time to spread the smoothing over",0
_cstring_cg_viewzsmoothin2:		db "cg_viewZSmoothingTime",0
_cstring_when_true_nightv:		db "When true, nightvision animations will attach the weapDef",27h,"s knife model instead of the night vision goggles.",0
_cstring_overridenvgmodel:		db "overrideNVGModelWithKnife",0
_cstring_whether_enemies_:		db "Whether enemies are visible on the compass at all times",0
_cstring_g_compassshowene:		db "g_compassShowEnemies",0
_cstring_land_damage:		db "land_damage",0
_cstring_grenade_explode:		db "grenade_explode",0
_cstring_rocket_explode:		db "rocket_explode",0
_cstring_bullet_small:		db "bullet_small",0
_cstring_bullet_large:		db "bullet_large",0
_cstring_bullet_ap:		db "bullet_ap",0
_cstring_bulletspray_smal:		db "bulletspray_small",0
_cstring_bullet_small_exi:		db "bullet_small_exit",0
_cstring_bullet_large_exi:		db "bullet_large_exit",0
_cstring_bullet_ap_exit:		db "bullet_ap_exit",0
_cstring_bulletspray_smal1:		db "bulletspray_small_exit",0
_cstring_step_sprint:		db "step_sprint",0
_cstring_step_sprint_plr:		db "step_sprint_plr",0
_cstring_step_run:		db "step_run",0
_cstring_step_run_plr:		db "step_run_plr",0
_cstring_step_walk:		db "step_walk",0
_cstring_step_walk_plr:		db "step_walk_plr",0
_cstring_step_prone:		db "step_prone",0
_cstring_step_prone_plr:		db "step_prone_plr",0
_cstring_land:		db "land",0
_cstring_land_plr:		db "land_plr",0
_cstring_gear_rattle_spri:		db "gear_rattle_sprint",0
_cstring_gear_rattle_plr_:		db "gear_rattle_plr_sprint",0
_cstring_gear_rattle_run:		db "gear_rattle_run",0
_cstring_gear_rattle_plr_1:		db "gear_rattle_plr_run",0
_cstring_gear_rattle_walk:		db "gear_rattle_walk",0
_cstring_gear_rattle_plr_2:		db "gear_rattle_plr_walk",0
_cstring_qstep_sprint:		db "qstep_sprint",0
_cstring_qstep_sprint_plr:		db "qstep_sprint_plr",0
_cstring_qstep_run:		db "qstep_run",0
_cstring_qstep_run_plr:		db "qstep_run_plr",0
_cstring_qstep_walk:		db "qstep_walk",0
_cstring_qstep_walk_plr:		db "qstep_walk_plr",0
_cstring_qstep_prone:		db "qstep_prone",0
_cstring_qstep_prone_plr:		db "qstep_prone_plr",0
_cstring_qland:		db "qland",0
_cstring_qland_plr:		db "qland_plr",0
_cstring_qgear_rattle_spr:		db "qgear_rattle_sprint",0
_cstring_qgear_rattle_plr:		db "qgear_rattle_plr_sprint",0
_cstring_qgear_rattle_run:		db "qgear_rattle_run",0
_cstring_qgear_rattle_plr1:		db "qgear_rattle_plr_run",0
_cstring_qgear_rattle_wal:		db "qgear_rattle_walk",0
_cstring_qgear_rattle_plr2:		db "qgear_rattle_plr_walk",0
_cstring_sprint_gasp:		db "sprint_gasp",0
_cstring_movement_foliage:		db "movement_foliage",0
_cstring_whizby:		db "whizby",0
_cstring_melee_hit:		db "melee_hit",0
_cstring_melee_hit_other:		db "melee_hit_other",0
_cstring_melee_knife_hit_:		db "melee_knife_hit_body",0
_cstring_melee_knife_hit_1:		db "melee_knife_hit_other",0
_cstring_item_nightvision:		db "item_nightvision_on",0
_cstring_item_nightvision1:		db "item_nightvision_off",0
_cstring_weap_sniper_hear:		db "weap_sniper_heartbeat",0
_cstring_weap_sniper_brea:		db "weap_sniper_breathin",0
_cstring_weap_sniper_brea1:		db "weap_sniper_breathout",0
_cstring_weap_sniper_brea2:		db "weap_sniper_breathgasp",0
_cstring_weap_offhand_sel:		db "weap_offhand_select",0
_cstring_playing_smoke_gr:		db "Playing smoke grenades at time %i",0ah,0
_cstring_restarting_smoke:		db "Restarting smoke grenade at time %i at ( %f, %f, %f )",0ah,0
_cstring_white:		db "white",0
_cstring_fontssmalldevfon:		db "fonts/smallDevFont",0
_cstring_fontsbigdevfont:		db "fonts/bigDevFont",0
_cstring_net_disconnect:		db "net_disconnect",0
_cstring_nightvision_over:		db "nightvision_overlay_goggles",0
_cstring_hud_icon_nvg:		db "hud_icon_nvg",0
_cstring_hud_dpad_arrow:		db "hud_dpad_arrow",0
_cstring_ammo_counter_bul:		db "ammo_counter_bullet",0
_cstring_ammo_counter_bel:		db "ammo_counter_beltbullet",0
_cstring_ammo_counter_rif:		db "ammo_counter_riflebullet",0
_cstring_ammo_counter_roc:		db "ammo_counter_rocket",0
_cstring_ammo_counter_sho:		db "ammo_counter_shotgunshell",0
_cstring_decode_character:		db "decode_characters",0
_cstring_decode_character1:		db "decode_characters_glow",0
_cstring_killicondied:		db "killicondied",0
_cstring_killiconcrush:		db "killiconcrush",0
_cstring_killiconfalling:		db "killiconfalling",0
_cstring_killiconsuicide:		db "killiconsuicide",0
_cstring_killiconheadshot:		db "killiconheadshot",0
_cstring_killiconmelee:		db "killiconmelee",0
_cstring_cod:		db "cod",0
_cstring_collision_map:		db "collision map",0
_cstring_graphics:		db "graphics",0
_cstring_game_media:		db "game media",0
_cstring___textures:		db " - textures",0
_cstring_lagometer:		db "lagometer",0
_cstring_headicondisconne:		db "headicondisconnected",0
_cstring_headiconyouinkil:		db "headiconyouinkillcam",0
_cstring_gfx_tracer:		db "gfx_tracer",0
_cstring_gfx_laser:		db "gfx_laser",0
_cstring_gfx_laser_light:		db "gfx_laser_light",0
_cstring_hint_usable:		db "hint_usable",0
_cstring_hint_health:		db "hint_health",0
_cstring_hint_friendly:		db "hint_friendly",0
_cstring_stance_stand:		db "stance_stand",0
_cstring_stance_crouch:		db "stance_crouch",0
_cstring_stance_prone:		db "stance_prone",0
_cstring_stance_flash:		db "stance_flash",0
_cstring_objective:		db "objective",0
_cstring_compassping_frie:		db "compassping_friendly_mp",0
_cstring_objective_friend:		db "objective_friendly_chat",0
_cstring_hit_direction:		db "hit_direction",0
_cstring_hint_mantle:		db "hint_mantle",0
_cstring_compassping_frie1:		db "compassping_friendlyfiring_mp",0
_cstring_compassping_frie2:		db "compassping_friendlyyelling_mp",0
_cstring_compassping_enem:		db "compassping_enemy",0
_cstring_compassping_enem1:		db "compassping_enemyfiring",0
_cstring_compassping_enem2:		db "compassping_enemyyelling",0
_cstring_compassping_gren:		db "compassping_grenade",0
_cstring_compassping_expl:		db "compassping_explosion",0
_cstring_compass_radarlin:		db "compass_radarline",0
_cstring_compass_objpoint:		db "compass_objpoint_helicopter_busy",0
_cstring_compass_objpoint1:		db "compass_objpoint_helicopter_friendly",0
_cstring_compass_objpoint2:		db "compass_objpoint_airstrike_busy",0
_cstring_compass_objpoint3:		db "compass_objpoint_airstrike_friendly",0
_cstring_hud_grenadeicon:		db "hud_grenadeicon",0
_cstring_hud_flashbangico:		db "hud_flashbangicon",0
_cstring_hud_grenadethrow:		db "hud_grenadethrowback",0
_cstring_hud_grenadepoint:		db "hud_grenadepointer",0
_cstring_hud_offscreenobj:		db "hud_offscreenobjectivepointer",0
_cstring_hudcolorbar:		db "hudcolorbar",0
_cstring___models:		db " - models",0
_cstring_headicontalkball:		db "headicontalkballoon",0
_cstring___items:		db " - items",0
_cstring___inline_models:		db " - inline models",0
_cstring___server_models:		db " - server models",0
_cstring_propsamerican_sm:		db "props/american_smoke_grenade_mp",0
_cstring_hold_breath:		db "hold_breath",0
_cstring_impactsflesh_hit:		db "impacts/flesh_hit_noblood",0
_cstring_impactsflesh_hit1:		db "impacts/flesh_hit_knife",0
_cstring_impactsflesh_hit2:		db "impacts/flesh_hit_knife_noblood",0
_cstring_dustdust_vehicle:		db "dust/dust_vehicle_tires",0
_cstring_treadfxheli_dust:		db "treadfx/heli_dust_default",0
_cstring_treadfxheli_wate:		db "treadfx/heli_water",0
_cstring_smokesmoke_trail:		db "smoke/smoke_trail_white_heli",0
_cstring_smokesmoke_trail1:		db "smoke/smoke_trail_black_heli",0
_cstring_firefire_smoke_t:		db "fire/fire_smoke_trail_L",0
_cstring_firejet_afterbur:		db "fire/jet_afterburner",0
_cstring___game_media_don:		db " - game media done",0
_cstring_clients:		db "clients",0
_cstring_ui_mphudtxt:		db "ui_mp/hud.txt",0
_cstring_compass_mp:		db "Compass_mp",0
_cstring_couldnt_register:		db 015h,"couldn",27h,"t register shell shock ",27h,"%s",27h," -- see console",0ah,0
_cstring_sound_aliases:		db "sound aliases",0
_cstring_clientserver_gam:		db 015h,"Client/Server game mismatch: %s/%s",0
_cstring_compass:		db "Compass",0
_cstring_couldnt_find_sho:		db "Couldn",27h,"t find shock file [hold_breath.shock]",0ah,0
_cstring_error_reading_cs:		db 015h,"Error reading CSV files in the fx directory to identify impact effects",0
_cstring_off:		db "Off",0
_cstring_contents_solid:		db "CONTENTS_SOLID",0
_cstring_mask_shot:		db "MASK_SHOT",0
_cstring_mask_playersolid:		db "MASK_PLAYERSOLID",0
_cstring_none:		db "None",0
_cstring_3d:		db "3D",0
_cstring_stream:		db "Stream",0
_cstring_2d:		db "2D",0
_cstring_simple:		db "Simple",0
_cstring_simpleranges:		db "SimpleRanges",0
_cstring_verbose:		db "Verbose",0



;All constant floats and doubles:
SECTION .rdata
_float_1_33333337:		dd 0x3faaaaab	; 1.33333
_float_1000_00000000:		dd 0x447a0000	; 1000
_float_0_50000000:		dd 0x3f000000	; 0.5

