;Imports of sv_game:
	extern Hunk_AllocInternal
	extern sv_maxclients
	extern svs
	extern SV_GetMapBaseName
	extern Com_GetBspFilename
	extern FS_ReadFile
	extern XModelPrecache
	extern Com_GetServerDObj
	extern sv
	extern Com_Error
	extern CM_PointLeafnum
	extern CM_LeafCluster
	extern CM_ClusterPVS
	extern G_GetFogOpaqueDistSqrd
	extern BoxDistSqrdExceeds
	extern DObjGetTree
	extern ConsoleCommand
	extern Cvar_RegisterString
	extern com_sv_running
	extern G_GetSavePersist
	extern sv_gametype
	extern Q_strncpyz
	extern Scr_IsValidGameType
	extern Com_Printf
	extern Cvar_SetString
	extern tolower
	extern com_developer
	extern DObjDumpInfo
	extern va
	extern SV_SetConfigstring
	extern DObjGetBounds
	extern Vec2DistanceSq
	extern SV_ClipHandleForEntity
	extern vec3_origin
	extern CM_TransformedBoxTraceExternal
	extern Cvar_InfoString
	extern G_ResetEntityParsePoint
	extern Sys_MillisecondsRaw
	extern G_InitGame
	extern NET_IsLocalAddress
	extern CM_ModelBounds
	extern CM_ContentsOfModel
	extern SV_LinkEntity
	extern SV_DropClient
	extern SV_GetConfigstring
	extern atoi
	extern DObjDisplayAnim
	extern DObjGetBoneIndex
	extern Com_SyncThreads
	extern G_ShutdownGame
	extern com_fixedConsolePosition
	extern DObjNumBones
	extern DObjGetBoneInfo
	extern DObjGetRotTransArray
	extern AnglesToAxis
	extern DObjGetNumModels
	extern DObjIgnoreCollision
	extern DObjGetModel
	extern XModelNumBones
	extern MatrixTransformVector43
	extern CL_AddDebugLine
	extern Com_UnloadSoundAliases
	extern DObjInitServerTime
	extern DObjUpdateServerInfo
	extern DObjSkelExists
	extern DObjSkelIsBoneUpToDate
	extern DObjGetAllocSkelSize
	extern Com_PrintWarning
	extern DObjCreateSkel
	extern SV_SendServerCommand
	extern DObjSkelAreBonesUpToDate

;Exports of sv_game:
	global boxVerts
	global g_sv_skel_memory_start
	global g_sv_skel_memory
	global SV_AllocXModelPrecache
	global SV_AllocXModelPrecacheColl
	global _ZZ18SV_AllocSkelMemoryjE9warnCount
	global SV_GetGuid
	global SV_MapExists
	global SV_XModelGet
	global SV_DObjExists
	global SV_GentityNum
	global SV_GetUsercmd
	global SV_inSnapshot
	global SV_DObjGetTree
	global SV_GameCommand
	global SV_SetGametype
	global SV_DObjDumpInfo
	global SV_SetMapCenter
	global SV_DObjGetBounds
	global SV_EntityContact
	global SV_GameClientNum
	global SV_GetClientPing
	global SV_GetServerinfo
	global SV_InitGameProgs
	global SV_IsLocalClient
	global SV_SetBrushModel
	global SV_GameDropClient
	global SV_LocateGameData
	global SV_SetGameEndTime
	global SV_DObjDisplayAnim
	global SV_DObjGetBoneIndex
	global SV_RestartGameProgs
	global SV_XModelDebugBoxes
	global SV_ShutdownGameProgs
	global SV_DObjGetMatrixArray
	global SV_DObjInitServerTime
	global SV_GEntityForSvEntity
	global SV_ResetSkeletonCache
	global SV_SvEntityForGentity
	global SV_DObjUpdateServerTime
	global SV_DObjCreateSkelForBone
	global SV_GameSendServerCommand
	global SV_DObjCreateSkelForBones
	global gameInitialized


SECTION .text


;SV_AllocXModelPrecache(int)
SV_AllocXModelPrecache:
	push ebp
	mov ebp, esp
	pop ebp
	jmp Hunk_AllocInternal
	nop


;SV_AllocXModelPrecacheColl(int)
SV_AllocXModelPrecacheColl:
	push ebp
	mov ebp, esp
	pop ebp
	jmp Hunk_AllocInternal
	nop


;SV_GetGuid(int)
SV_GetGuid:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	test ecx, ecx
	js SV_GetGuid_10
	mov eax, sv_maxclients
	mov eax, [eax]
	cmp ecx, [eax+0xc]
	jge SV_GetGuid_10
	lea eax, [ecx+ecx*4]
	shl eax, 0x7
	add eax, ecx
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	lea eax, [ecx+eax*4]
	mov edx, svs
	lea eax, [edx+eax*4+0x504504]
	pop ebp
	ret
SV_GetGuid_10:
	mov eax, _cstring_null
	pop ebp
	ret
	nop


;SV_MapExists(char const*)
SV_MapExists:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x114
	mov eax, [ebp+0x8]
	mov [esp], eax
	call SV_GetMapBaseName
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x100
	lea ebx, [ebp-0x108]
	mov [esp], ebx
	call Com_GetBspFilename
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call FS_ReadFile
	not eax
	shr eax, 0x1f
	add esp, 0x114
	pop ebx
	pop ebp
	ret
	nop


;SV_XModelGet(char const*)
SV_XModelGet:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x8], SV_AllocXModelPrecacheColl
	mov dword [esp+0x4], SV_AllocXModelPrecache
	mov eax, [ebp+0x8]
	mov [esp], eax
	call XModelPrecache
	leave
	ret
	nop


;SV_DObjExists(gentity_s*)
SV_DObjExists:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov eax, [eax]
	mov [esp], eax
	call Com_GetServerDObj
	test eax, eax
	setnz al
	movzx eax, al
	leave
	ret
	nop


;SV_GentityNum(int)
SV_GentityNum:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, sv
	imul eax, [edx+0x5fb34]
	add eax, [edx+0x5fb30]
	pop ebp
	ret
	nop


;SV_GetUsercmd(int, usercmd_s*)
SV_GetUsercmd:
	push ebp
	mov ebp, esp
	push ebx
	mov ecx, [ebp+0x8]
	mov ebx, [ebp+0xc]
	lea eax, [ecx+ecx*4]
	shl eax, 0x7
	add eax, ecx
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	lea eax, [ecx+eax*4]
	shl eax, 0x2
	add eax, svs
	add eax, 0x484660
	mov edx, [eax+0xc]
	mov [ebx], edx
	mov edx, [eax+0x10]
	mov [ebx+0x4], edx
	mov edx, [eax+0x14]
	mov [ebx+0x8], edx
	mov edx, [eax+0x18]
	mov [ebx+0xc], edx
	mov edx, [eax+0x1c]
	mov [ebx+0x10], edx
	mov edx, [eax+0x20]
	mov [ebx+0x14], edx
	mov edx, [eax+0x24]
	mov [ebx+0x18], edx
	mov eax, [eax+0x28]
	mov [ebx+0x1c], eax
	pop ebx
	pop ebp
	ret
	nop


;SV_inSnapshot(float const*, int)
SV_inSnapshot:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov ebx, [ebp+0xc]
	mov esi, sv
	imul ebx, [esi+0x5fb34]
	add ebx, [esi+0x5fb30]
	cmp byte [ebx+0xf4], 0x0
	jz SV_inSnapshot_10
	mov edi, [ebx+0x104]
	test edi, edi
	jnz SV_inSnapshot_20
	movzx eax, byte [ebx+0xf6]
	test al, 0x1
	jnz SV_inSnapshot_10
	test al, 0x18
	jnz SV_inSnapshot_20
	test ebx, ebx
	jz SV_inSnapshot_30
	cmp dword [ebx], 0x3ff
	jle SV_inSnapshot_40
SV_inSnapshot_30:
	mov dword [esp+0x4], _cstring_sv_sventityforge
	mov dword [esp], 0x2
	call Com_Error
SV_inSnapshot_40:
	mov edx, [ebx]
	lea eax, [edx+edx*2]
	shl eax, 0x4
	sub eax, edx
	lea eax, [esi+eax*8+0x1b30]
	mov [ebp-0x24], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CM_PointLeafnum
	mov edx, [ebp-0x24]
	mov esi, [edx+0x11c]
	test esi, esi
	jz SV_inSnapshot_10
	mov [esp], eax
	call CM_LeafCluster
	mov [esp], eax
	call CM_ClusterPVS
	mov [ebp-0x20], eax
	mov ecx, [ebp-0x24]
	mov ecx, [ecx+0x11c]
	mov [ebp-0x28], ecx
	cmp ecx, 0x0
	jg SV_inSnapshot_50
	jnz SV_inSnapshot_60
	xor edx, edx
SV_inSnapshot_110:
	mov eax, [ebp-0x24]
	mov esi, [eax+0x160]
	test esi, esi
	jz SV_inSnapshot_10
	cmp esi, edx
	jl SV_inSnapshot_70
SV_inSnapshot_80:
	mov eax, edx
	sar eax, 0x3
	mov ecx, [ebp-0x20]
	movzx eax, byte [ecx+eax]
	mov ecx, edx
	and ecx, 0x7
	sar eax, cl
	test al, 0x1
	jnz SV_inSnapshot_70
	add edx, 0x1
	cmp esi, edx
	jge SV_inSnapshot_80
SV_inSnapshot_70:
	cmp esi, edx
	jz SV_inSnapshot_10
SV_inSnapshot_60:
	call G_GetFogOpaqueDistSqrd
	fstp dword [ebp-0x1c]
	movss xmm0, dword [ebp-0x1c]
	ucomiss xmm0, [_float_34028234663852885_float_3]
	jp SV_inSnapshot_90
	jz SV_inSnapshot_20
SV_inSnapshot_90:
	movss [esp+0xc], xmm0
	mov eax, [ebp+0x8]
	mov [esp+0x8], eax
	lea eax, [ebx+0x130]
	mov [esp+0x4], eax
	lea eax, [ebx+0x124]
	mov [esp], eax
	call BoxDistSqrdExceeds
	test eax, eax
	setz al
	movzx eax, al
	jmp SV_inSnapshot_100
SV_inSnapshot_10:
	xor eax, eax
SV_inSnapshot_100:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SV_inSnapshot_20:
	mov eax, 0x1
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SV_inSnapshot_50:
	mov ecx, [ebp-0x24]
	mov edx, [ecx+0x120]
	mov eax, edx
	sar eax, 0x3
	mov ecx, [ebp-0x20]
	movzx eax, byte [eax+ecx]
	mov ecx, edx
	and ecx, 0x7
	sar eax, cl
	test al, 0x1
	jnz SV_inSnapshot_60
	mov edi, [ebp-0x24]
	xor esi, esi
SV_inSnapshot_120:
	add esi, 0x1
	cmp [ebp-0x28], esi
	jz SV_inSnapshot_110
	mov edx, [edi+0x124]
	add edi, 0x4
	mov eax, edx
	sar eax, 0x3
	mov ecx, [ebp-0x20]
	movzx eax, byte [ecx+eax]
	mov ecx, edx
	and ecx, 0x7
	sar eax, cl
	test al, 0x1
	jz SV_inSnapshot_120
	jmp SV_inSnapshot_60


;SV_DObjGetTree(gentity_s*)
SV_DObjGetTree:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov eax, [eax]
	mov [esp], eax
	call Com_GetServerDObj
	test eax, eax
	jz SV_DObjGetTree_10
	mov [ebp+0x8], eax
	leave
	jmp DObjGetTree
SV_DObjGetTree_10:
	xor eax, eax
	leave
	ret


;SV_GameCommand()
SV_GameCommand:
	push ebp
	mov ebp, esp
	mov eax, sv
	cmp dword [eax], 0x2
	jz SV_GameCommand_10
	xor eax, eax
	pop ebp
	ret
SV_GameCommand_10:
	pop ebp
	jmp ConsoleCommand
	nop


;SV_SetGametype()
SV_SetGametype:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x50
	mov dword [esp+0xc], _cstring_game_type
	mov dword [esp+0x8], 0x24
	mov dword [esp+0x4], _cstring_war
	mov dword [esp], _cstring_g_gametype
	call Cvar_RegisterString
	mov eax, com_sv_running
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz SV_SetGametype_10
	call G_GetSavePersist
	test eax, eax
	jnz SV_SetGametype_20
SV_SetGametype_10:
	mov dword [esp+0x8], 0x40
	mov eax, sv_gametype
	mov eax, [eax]
	mov eax, [eax+0xc]
	mov [esp+0x4], eax
	lea esi, [ebp-0x48]
	mov [esp], esi
	call Q_strncpyz
SV_SetGametype_70:
	movzx eax, byte [ebp-0x48]
	test al, al
	jnz SV_SetGametype_30
SV_SetGametype_60:
	mov [esp], esi
	call Scr_IsValidGameType
	test eax, eax
	jnz SV_SetGametype_40
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_g_gametype_s_is_
	mov dword [esp], 0xf
	call Com_Printf
	mov word [ebp-0x48], 0x6d64
	mov byte [ebp-0x46], 0x0
SV_SetGametype_40:
	mov [esp+0x4], esi
	mov eax, sv_gametype
	mov eax, [eax]
	mov [esp], eax
	call Cvar_SetString
	add esp, 0x50
	pop ebx
	pop esi
	pop ebp
	ret
SV_SetGametype_30:
	mov ebx, esi
SV_SetGametype_50:
	movsx eax, al
	mov [esp], eax
	call tolower
	mov [ebx], al
	add ebx, 0x1
	movzx eax, byte [ebx]
	test al, al
	jnz SV_SetGametype_50
	jmp SV_SetGametype_60
SV_SetGametype_20:
	mov dword [esp+0x8], 0x40
	mov eax, sv
	add eax, 0x5fc08
	mov [esp+0x4], eax
	lea esi, [ebp-0x48]
	mov [esp], esi
	call Q_strncpyz
	jmp SV_SetGametype_70


;SV_DObjDumpInfo(gentity_s*)
SV_DObjDumpInfo:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov edx, [ebp+0x8]
	mov eax, com_developer
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	jnz SV_DObjDumpInfo_10
	leave
	ret
SV_DObjDumpInfo_10:
	mov eax, [edx]
	mov [esp], eax
	call Com_GetServerDObj
	test eax, eax
	jz SV_DObjDumpInfo_20
	mov [ebp+0x8], eax
	leave
	jmp DObjDumpInfo
SV_DObjDumpInfo_20:
	mov dword [esp+0x4], _cstring_no_model
	mov dword [esp], 0xf
	call Com_Printf
	leave
	ret


;SV_SetMapCenter(float*)
SV_SetMapCenter:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	mov ecx, [ebp+0x8]
	mov edx, svs
	mov eax, [ecx]
	mov [edx+svs+0x9778e74], eax
	mov eax, [ecx+0x4]
	mov [edx+svs+0x9778e78], eax
	mov eax, [ecx+0x8]
	mov [edx+svs+0x9778e7c], eax
	cvtss2sd xmm0, [ecx+0x8]
	movsd [esp+0x14], xmm0
	cvtss2sd xmm0, [ecx+0x4]
	movsd [esp+0xc], xmm0
	cvtss2sd xmm0, [ecx]
	movsd [esp+0x4], xmm0
	mov dword [esp], _cstring_f_f_f
	call va
	mov [esp+0x4], eax
	mov dword [esp], 0xc
	call SV_SetConfigstring
	leave
	ret
	nop


;SV_DObjGetBounds(gentity_s*, float*, float*)
SV_DObjGetBounds:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0xc]
	mov ebx, [ebp+0x10]
	mov eax, [ebp+0x8]
	mov eax, [eax]
	mov [esp], eax
	call Com_GetServerDObj
	mov [ebp+0x10], ebx
	mov [ebp+0xc], esi
	mov [ebp+0x8], eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp DObjGetBounds
	nop


;SV_EntityContact(float const*, float const*, gentity_s const*)
SV_EntityContact:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x9c
	mov edi, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov ebx, [ebp+0x10]
	movzx eax, byte [ebx+0xf6]
	test al, 0x60
	jz SV_EntityContact_10
	test al, 0x20
	jz SV_EntityContact_20
	movss xmm1, dword [ebx+0x144]
	ucomiss xmm1, [esi+0x8]
	jae SV_EntityContact_30
	addss xmm1, [ebx+0x11c]
	movss xmm0, dword [edi+0x8]
	ucomiss xmm0, xmm1
	jb SV_EntityContact_40
SV_EntityContact_30:
	xor eax, eax
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SV_EntityContact_20:
	movss xmm0, dword [edi]
	addss xmm0, [esi]
	movss xmm1, dword [edi+0x4]
	addss xmm1, [esi+0x4]
	movss xmm2, dword [_float_0_50000000]
	mulss xmm0, xmm2
	movss [ebp-0x20], xmm0
	mulss xmm1, xmm2
	movss [ebp-0x1c], xmm1
	movss xmm0, dword [esi]
	subss xmm0, [ebp-0x20]
	addss xmm0, [ebx+0x114]
	subss xmm0, [_float_64_00000000]
	lea eax, [ebp-0x20]
	mov [esp+0x4], eax
	lea eax, [ebx+0x13c]
	mov [esp], eax
	movss [ebp-0x78], xmm0
	call Vec2DistanceSq
	fstp dword [ebp-0x5c]
	movss xmm0, dword [ebp-0x78]
	mulss xmm0, xmm0
	movss xmm1, dword [ebp-0x5c]
	xor eax, eax
	ucomiss xmm1, xmm0
	setae al
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SV_EntityContact_10:
	mov [esp], ebx
	call SV_ClipHandleForEntity
	lea edx, [ebx+0x148]
	mov [esp+0x20], edx
	lea edx, [ebx+0x13c]
	mov [esp+0x1c], edx
	mov dword [esp+0x18], 0xffffffff
	mov [esp+0x14], eax
	mov [esp+0x10], esi
	mov [esp+0xc], edi
	mov eax, vec3_origin
	mov [esp+0x8], eax
	mov [esp+0x4], eax
	lea eax, [ebp-0x4c]
	mov [esp], eax
	call CM_TransformedBoxTraceExternal
	movzx eax, byte [ebp-0x23]
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SV_EntityContact_40:
	movss xmm0, dword [edi]
	addss xmm0, [esi]
	movss xmm1, dword [edi+0x4]
	addss xmm1, [esi+0x4]
	movss xmm2, dword [_float_0_50000000]
	mulss xmm0, xmm2
	movss [ebp-0x20], xmm0
	mulss xmm1, xmm2
	movss [ebp-0x1c], xmm1
	movss xmm0, dword [esi]
	subss xmm0, [ebp-0x20]
	addss xmm0, [ebx+0x114]
	lea eax, [ebp-0x20]
	mov [esp+0x4], eax
	lea eax, [ebx+0x13c]
	mov [esp], eax
	movss [ebp-0x78], xmm0
	call Vec2DistanceSq
	fstp dword [ebp-0x60]
	movss xmm0, dword [ebp-0x78]
	mulss xmm0, xmm0
	xor eax, eax
	ucomiss xmm0, [ebp-0x60]
	seta al
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;SV_GameClientNum(int)
SV_GameClientNum:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, sv
	imul eax, [edx+0x5fb40]
	add eax, [edx+0x5fb3c]
	pop ebp
	ret
	nop


;SV_GetClientPing(int)
SV_GetClientPing:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	lea eax, [ecx+ecx*4]
	shl eax, 0x7
	add eax, ecx
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	lea eax, [ecx+eax*4]
	shl eax, 0x2
	add eax, svs
	mov eax, [eax+0x4e3cf0]
	pop ebp
	ret


;SV_GetServerinfo(char*, int)
SV_GetServerinfo:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0xc]
	test ebx, ebx
	jle SV_GetServerinfo_10
SV_GetServerinfo_20:
	mov dword [esp+0x4], 0x404
	mov dword [esp], 0x0
	call Cvar_InfoString
	mov [esp+0x8], ebx
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Q_strncpyz
	add esp, 0x14
	pop ebx
	pop ebp
	ret
SV_GetServerinfo_10:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_sv_getserverinfo
	mov dword [esp], 0x2
	call Com_Error
	jmp SV_GetServerinfo_20
	nop


;SV_InitGameProgs(int)
SV_InitGameProgs:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov dword [gameInitialized], 0x1
	call G_ResetEntityParsePoint
	mov ecx, sv
	mov eax, 0x1
	mov edx, [ecx+0x5fb44]
	add edx, 0x1
	cmovnz eax, edx
	mov [ecx+0x5fb44], eax
	mov eax, g_sv_skel_memory+0xf
	and eax, 0xfffffff0
	mov [g_sv_skel_memory_start], eax
	mov dword [ecx+0x5fb48], 0x0
	call Sys_MillisecondsRaw
	mov edx, [ebp+0x8]
	mov [esp+0xc], edx
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], eax
	mov ebx, svs
	mov eax, [ebx+0x463804]
	mov [esp], eax
	call G_InitGame
	mov eax, sv_maxclients
	mov eax, [eax]
	mov ecx, [eax+0xc]
	test ecx, ecx
	jle SV_InitGameProgs_10
	xor ecx, ecx
	lea edx, [ebx+0x484a90]
SV_InitGameProgs_20:
	mov dword [edx], 0x0
	add ecx, 0x1
	add edx, 0xa5634
	cmp ecx, [eax+0xc]
	jl SV_InitGameProgs_20
SV_InitGameProgs_10:
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;SV_IsLocalClient(int)
SV_IsLocalClient:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	mov ecx, [ebp+0x8]
	lea eax, [ecx+ecx*4]
	shl eax, 0x7
	add eax, ecx
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	lea eax, [ecx+eax*4]
	shl eax, 0x2
	add eax, svs
	add eax, 0x463820
	mov ecx, [eax+0xc]
	mov [ebp-0x14], ecx
	mov edx, [eax+0x10]
	mov [ebp-0x10], edx
	mov eax, [eax+0x14]
	mov [ebp-0xc], eax
	mov [esp], ecx
	mov [esp+0x4], edx
	mov [esp+0x8], eax
	call NET_IsLocalAddress
	leave
	ret


;SV_SetBrushModel(gentity_s*)
SV_SetBrushModel:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x34
	mov ebx, [ebp+0x8]
	lea eax, [ebp-0x20]
	mov [esp+0x8], eax
	lea eax, [ebp-0x14]
	mov [esp+0x4], eax
	mov eax, [ebx+0x88]
	mov [esp], eax
	call CM_ModelBounds
	lea edx, [ebx+0x108]
	mov eax, [ebp-0x14]
	mov [ebx+0x108], eax
	mov eax, [ebp-0x10]
	mov [edx+0x4], eax
	mov eax, [ebp-0xc]
	mov [edx+0x8], eax
	lea edx, [ebx+0x114]
	mov eax, [ebp-0x20]
	mov [ebx+0x114], eax
	mov eax, [ebp-0x1c]
	mov [edx+0x4], eax
	mov eax, [ebp-0x18]
	mov [edx+0x8], eax
	mov byte [ebx+0xf5], 0x1
	mov eax, [ebx+0x88]
	mov [esp], eax
	call CM_ContentsOfModel
	mov [ebx+0x120], eax
	mov [esp], ebx
	call SV_LinkEntity
	mov eax, 0x1
	add esp, 0x34
	pop ebx
	pop ebp
	ret


;SV_GameDropClient(int, char const*)
SV_GameDropClient:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov ecx, [ebp+0x8]
	test ecx, ecx
	js SV_GameDropClient_10
	mov eax, sv_maxclients
	mov eax, [eax]
	cmp ecx, [eax+0xc]
	jl SV_GameDropClient_20
SV_GameDropClient_10:
	leave
	ret
SV_GameDropClient_20:
	mov dword [esp+0x8], 0x1
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	lea eax, [ecx+ecx*4]
	shl eax, 0x7
	add eax, ecx
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	lea eax, [ecx+eax*4]
	mov edx, svs
	add edx, 0x46380c
	lea eax, [edx+eax*4]
	mov [esp], eax
	call SV_DropClient
	leave
	ret


;SV_LocateGameData(gentity_s*, int, int, playerState_s*, int)
SV_LocateGameData:
	push ebp
	mov ebp, esp
	mov edx, sv
	mov eax, [ebp+0x8]
	mov [edx+0x5fb30], eax
	mov eax, [ebp+0x10]
	mov [edx+0x5fb34], eax
	mov eax, [ebp+0xc]
	mov [edx+0x5fb38], eax
	mov eax, [ebp+0x14]
	mov [edx+0x5fb3c], eax
	mov eax, [ebp+0x18]
	mov [edx+0x5fb40], eax
	pop ebp
	ret


;SV_SetGameEndTime(int)
SV_SetGameEndTime:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x20
	mov esi, [ebp+0x8]
	mov dword [esp+0x8], 0xc
	lea ebx, [ebp-0x14]
	mov [esp+0x4], ebx
	mov dword [esp], 0xb
	call SV_GetConfigstring
	mov [esp], ebx
	call atoi
	sub eax, esi
	js SV_SetGameEndTime_10
SV_SetGameEndTime_30:
	cmp eax, 0x1f4
	jle SV_SetGameEndTime_20
	mov [esp+0x4], esi
	mov dword [esp], _cstring_i
	call va
	mov [esp+0x4], eax
	mov dword [esp], 0xb
	call SV_SetConfigstring
SV_SetGameEndTime_20:
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
SV_SetGameEndTime_10:
	neg eax
	jmp SV_SetGameEndTime_30


;SV_DObjDisplayAnim(gentity_s*, char const*)
SV_DObjDisplayAnim:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0xc]
	mov eax, [ebp+0x8]
	mov eax, [eax]
	mov [esp], eax
	call Com_GetServerDObj
	test eax, eax
	jz SV_DObjDisplayAnim_10
	mov [ebp+0xc], ebx
	mov [ebp+0x8], eax
	add esp, 0x14
	pop ebx
	pop ebp
	jmp DObjDisplayAnim
SV_DObjDisplayAnim_10:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;SV_DObjGetBoneIndex(gentity_s const*, unsigned int)
SV_DObjGetBoneIndex:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	mov eax, [ebp+0x8]
	mov eax, [eax]
	mov [esp], eax
	call Com_GetServerDObj
	mov edx, eax
	test eax, eax
	jnz SV_DObjGetBoneIndex_10
SV_DObjGetBoneIndex_20:
	mov eax, 0xffffffff
	leave
	ret
SV_DObjGetBoneIndex_10:
	mov byte [ebp-0x9], 0xfe
	lea eax, [ebp-0x9]
	mov [esp+0x8], eax
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], edx
	call DObjGetBoneIndex
	test eax, eax
	jz SV_DObjGetBoneIndex_20
	movzx eax, byte [ebp-0x9]
	leave
	ret


;SV_RestartGameProgs(int)
SV_RestartGameProgs:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	call Com_SyncThreads
	mov dword [esp], 0x0
	call G_ShutdownGame
	mov eax, com_fixedConsolePosition
	mov dword [eax], 0x0
	call G_ResetEntityParsePoint
	mov ecx, sv
	mov eax, 0x1
	mov edx, [ecx+0x5fb44]
	add edx, 0x1
	cmovnz eax, edx
	mov [ecx+0x5fb44], eax
	mov eax, g_sv_skel_memory+0xf
	and eax, 0xfffffff0
	mov [g_sv_skel_memory_start], eax
	mov dword [ecx+0x5fb48], 0x0
	call Sys_MillisecondsRaw
	mov edx, [ebp+0x8]
	mov [esp+0xc], edx
	mov dword [esp+0x8], 0x1
	mov [esp+0x4], eax
	mov ebx, svs
	mov eax, [ebx+0x463804]
	mov [esp], eax
	call G_InitGame
	mov eax, sv_maxclients
	mov eax, [eax]
	mov edx, [eax+0xc]
	test edx, edx
	jle SV_RestartGameProgs_10
	xor ecx, ecx
	lea edx, [ebx+0x484a90]
SV_RestartGameProgs_20:
	mov dword [edx], 0x0
	add ecx, 0x1
	add edx, 0xa5634
	cmp ecx, [eax+0xc]
	jl SV_RestartGameProgs_20
SV_RestartGameProgs_10:
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;SV_XModelDebugBoxes(gentity_s*)
SV_XModelDebugBoxes:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x30c
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov [esp], eax
	call Com_GetServerDObj
	mov [ebp-0x2d4], eax
	mov [esp], eax
	call DObjNumBones
	lea eax, [ebp-0x2ac]
	mov [esp+0x4], eax
	mov eax, [ebp-0x2d4]
	mov [esp], eax
	call DObjGetBoneInfo
	mov edx, [ebp-0x2d4]
	mov [esp], edx
	call DObjGetRotTransArray
	mov [ebp-0x2d8], eax
	mov ebx, 0x3f800000
	mov [ebp-0x58], ebx
	mov [ebp-0x54], ebx
	mov [ebp-0x50], ebx
	mov dword [ebp-0x4c], 0x0
	lea eax, [ebp-0x7c]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	add eax, 0x148
	mov [esp], eax
	call AnglesToAxis
	mov eax, [ebp-0x2d4]
	mov [esp], eax
	call DObjGetNumModels
	mov [ebp-0x2d0], eax
	test eax, eax
	jg SV_XModelDebugBoxes_10
SV_XModelDebugBoxes_30:
	add esp, 0x30c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SV_XModelDebugBoxes_10:
	mov dword [ebp-0x2cc], 0x0
	mov edx, [ebp-0x2cc]
	jmp SV_XModelDebugBoxes_20
SV_XModelDebugBoxes_40:
	add dword [ebp-0x2cc], 0x1
	mov edx, [ebp-0x2cc]
	cmp [ebp-0x2d0], edx
	jz SV_XModelDebugBoxes_30
SV_XModelDebugBoxes_20:
	mov [esp+0x4], edx
	mov eax, [ebp-0x2d4]
	mov [esp], eax
	call DObjIgnoreCollision
	test al, al
	jnz SV_XModelDebugBoxes_40
	mov edx, [ebp-0x2cc]
	mov [esp+0x4], edx
	mov eax, [ebp-0x2d4]
	mov [esp], eax
	call DObjGetModel
	mov [esp], eax
	call XModelNumBones
	mov [ebp-0x2c8], eax
	test eax, eax
	jle SV_XModelDebugBoxes_40
	mov dword [ebp-0x2c4], 0x0
	mov edx, [ebp-0x2d8]
	add edx, 0x10
	mov [ebp-0x2dc], edx
	mov eax, [ebp-0x2c4]
SV_XModelDebugBoxes_60:
	mov ebx, [ebp+eax*4-0x2ac]
	movss xmm1, dword [edx+0xc]
	movaps xmm3, xmm1
	mulss xmm3, [edx-0x10]
	movaps xmm5, xmm1
	mulss xmm5, [edx-0xc]
	mulss xmm1, [edx-0x8]
	movaps xmm0, xmm3
	mulss xmm0, [edx-0x10]
	movss [ebp-0x2c0], xmm0
	movss xmm6, dword [edx-0xc]
	movaps xmm4, xmm3
	mulss xmm4, xmm6
	movss xmm2, dword [edx-0x8]
	movaps xmm7, xmm3
	mulss xmm7, xmm2
	movss xmm0, dword [edx-0x4]
	mulss xmm3, xmm0
	mulss xmm6, xmm5
	movss [ebp-0x2bc], xmm6
	movaps xmm6, xmm5
	mulss xmm6, xmm2
	mulss xmm5, xmm0
	mulss xmm2, xmm1
	mulss xmm1, xmm0
	movss [ebp-0x2ec], xmm1
	movss xmm0, dword [ebp-0x2bc]
	addss xmm0, xmm2
	movss xmm1, dword [_float_1_00000000]
	subss xmm1, xmm0
	movss [ebp-0xac], xmm1
	movss xmm0, dword [ebp-0x2ec]
	addss xmm0, xmm4
	movss [ebp-0xa8], xmm0
	movaps xmm0, xmm7
	subss xmm0, xmm5
	movss [ebp-0xa4], xmm0
	subss xmm4, [ebp-0x2ec]
	movss [ebp-0xa0], xmm4
	addss xmm2, [ebp-0x2c0]
	movss xmm0, dword [_float_1_00000000]
	subss xmm0, xmm2
	movss [ebp-0x9c], xmm0
	movaps xmm0, xmm3
	addss xmm0, xmm6
	movss [ebp-0x98], xmm0
	addss xmm7, xmm5
	movss [ebp-0x94], xmm7
	subss xmm6, xmm3
	movss [ebp-0x90], xmm6
	movss xmm0, dword [ebp-0x2c0]
	addss xmm0, [ebp-0x2bc]
	movss [ebp-0x2c0], xmm0
	movss xmm0, dword [_float_1_00000000]
	subss xmm0, [ebp-0x2c0]
	movss [ebp-0x8c], xmm0
	mov eax, [edx]
	mov [ebp-0x88], eax
	mov eax, [edx+0x4]
	mov [ebp-0x84], eax
	mov eax, [edx+0x8]
	mov [ebp-0x80], eax
	mov edi, boxVerts+0xc
	mov esi, boxVerts
SV_XModelDebugBoxes_50:
	mov eax, [esi]
	lea eax, [eax+eax*2]
	mov eax, [ebx+eax*4]
	mov [ebp-0x24], eax
	mov eax, [esi+0x4]
	lea eax, [eax+eax*2]
	mov eax, [ebx+eax*4+0x4]
	mov [ebp-0x20], eax
	mov eax, [esi+0x8]
	lea eax, [eax+eax*2]
	mov eax, [ebx+eax*4+0x8]
	mov [ebp-0x1c], eax
	lea eax, [ebp-0x30]
	mov [esp+0x8], eax
	lea edx, [ebp-0xac]
	mov [esp+0x4], edx
	lea eax, [ebp-0x24]
	mov [esp], eax
	call MatrixTransformVector43
	movss xmm2, dword [ebp-0x30]
	movss xmm4, dword [ebp-0x2c]
	movss xmm5, dword [ebp-0x28]
	movaps xmm3, xmm2
	mulss xmm3, [ebp-0x7c]
	movaps xmm0, xmm4
	mulss xmm0, [ebp-0x70]
	addss xmm3, xmm0
	movaps xmm0, xmm5
	mulss xmm0, [ebp-0x64]
	addss xmm3, xmm0
	movaps xmm1, xmm2
	mulss xmm1, [ebp-0x78]
	movaps xmm0, xmm4
	mulss xmm0, [ebp-0x6c]
	addss xmm1, xmm0
	movaps xmm0, xmm5
	mulss xmm0, [ebp-0x60]
	addss xmm1, xmm0
	mulss xmm2, [ebp-0x74]
	mulss xmm4, [ebp-0x68]
	addss xmm2, xmm4
	mulss xmm5, [ebp-0x5c]
	addss xmm2, xmm5
	mov edx, [ebp+0x8]
	addss xmm3, [edx+0x13c]
	movss [ebp-0x3c], xmm3
	addss xmm1, [edx+0x140]
	movss [ebp-0x38], xmm1
	addss xmm2, [edx+0x144]
	movss [ebp-0x34], xmm2
	mov eax, [edi]
	lea eax, [eax+eax*2]
	mov eax, [ebx+eax*4]
	mov [ebp-0x24], eax
	mov eax, [edi+0x4]
	lea eax, [eax+eax*2]
	mov eax, [ebx+eax*4+0x4]
	mov [ebp-0x20], eax
	mov eax, [edi+0x8]
	lea eax, [eax+eax*2]
	mov eax, [ebx+eax*4+0x8]
	mov [ebp-0x1c], eax
	lea eax, [ebp-0x30]
	mov [esp+0x8], eax
	lea edx, [ebp-0xac]
	mov [esp+0x4], edx
	lea eax, [ebp-0x24]
	mov [esp], eax
	call MatrixTransformVector43
	movss xmm2, dword [ebp-0x30]
	movss xmm4, dword [ebp-0x2c]
	movss xmm5, dword [ebp-0x28]
	movaps xmm3, xmm2
	mulss xmm3, [ebp-0x7c]
	movaps xmm0, xmm4
	mulss xmm0, [ebp-0x70]
	addss xmm3, xmm0
	movaps xmm0, xmm5
	mulss xmm0, [ebp-0x64]
	addss xmm3, xmm0
	movaps xmm1, xmm2
	mulss xmm1, [ebp-0x78]
	movaps xmm0, xmm4
	mulss xmm0, [ebp-0x6c]
	addss xmm1, xmm0
	movaps xmm0, xmm5
	mulss xmm0, [ebp-0x60]
	addss xmm1, xmm0
	mulss xmm2, [ebp-0x74]
	mulss xmm4, [ebp-0x68]
	addss xmm2, xmm4
	mulss xmm5, [ebp-0x5c]
	addss xmm2, xmm5
	mov edx, [ebp+0x8]
	addss xmm3, [edx+0x13c]
	movss [ebp-0x48], xmm3
	addss xmm1, [edx+0x140]
	movss [ebp-0x44], xmm1
	addss xmm2, [edx+0x144]
	movss [ebp-0x40], xmm2
	mov dword [esp+0x14], 0x1
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x0
	lea eax, [ebp-0x58]
	mov [esp+0x8], eax
	lea edx, [ebp-0x48]
	mov [esp+0x4], edx
	lea eax, [ebp-0x3c]
	mov [esp], eax
	call CL_AddDebugLine
	add esi, 0x18
	add edi, 0x18
	mov edx, boxVerts+0x120
	cmp edx, esi
	jnz SV_XModelDebugBoxes_50
	add dword [ebp-0x2c4], 0x1
	add dword [ebp-0x2d8], 0x20
	add dword [ebp-0x2dc], 0x20
	mov eax, [ebp-0x2c4]
	cmp [ebp-0x2c8], eax
	jz SV_XModelDebugBoxes_40
	mov edx, [ebp-0x2dc]
	jmp SV_XModelDebugBoxes_60


;SV_ShutdownGameProgs()
SV_ShutdownGameProgs:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	call Com_SyncThreads
	mov eax, sv
	mov dword [eax], 0x0
	mov dword [esp], 0x2
	call Com_UnloadSoundAliases
	mov edx, [gameInitialized]
	test edx, edx
	jnz SV_ShutdownGameProgs_10
	leave
	ret
SV_ShutdownGameProgs_10:
	mov dword [esp], 0x1
	call G_ShutdownGame
	mov dword [gameInitialized], 0x0
	leave
	ret


;SV_DObjGetMatrixArray(gentity_s const*)
SV_DObjGetMatrixArray:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov eax, [eax]
	mov [esp], eax
	call Com_GetServerDObj
	mov [ebp+0x8], eax
	leave
	jmp DObjGetRotTransArray


;SV_DObjInitServerTime(gentity_s*, float)
SV_DObjInitServerTime:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0xc]
	mov eax, [ebp+0x8]
	mov eax, [eax]
	mov [esp], eax
	call Com_GetServerDObj
	test eax, eax
	jz SV_DObjInitServerTime_10
	mov [ebp+0xc], ebx
	mov [ebp+0x8], eax
	add esp, 0x14
	pop ebx
	pop ebp
	jmp DObjInitServerTime
SV_DObjInitServerTime_10:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;SV_GEntityForSvEntity(svEntity_s*)
SV_GEntityForSvEntity:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, sv
	add edx, 0x1b30
	mov ecx, sv
	sub eax, edx
	sar eax, 0x3
	imul eax, eax, 0x677d46cf
	imul eax, [ecx+0x5fb34]
	add eax, [ecx+0x5fb30]
	pop ebp
	ret
	add [eax], al


;SV_ResetSkeletonCache()
SV_ResetSkeletonCache:
	push ebp
	mov ebp, esp
	mov ecx, sv
	mov eax, 0x1
	mov edx, [ecx+0x5fb44]
	add edx, 0x1
	cmovnz eax, edx
	mov [ecx+0x5fb44], eax
	mov eax, g_sv_skel_memory+0xf
	and eax, 0xfffffff0
	mov [g_sv_skel_memory_start], eax
	mov dword [ecx+0x5fb48], 0x0
	pop ebp
	ret
	nop


;SV_SvEntityForGentity(gentity_s const*)
SV_SvEntityForGentity:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	test ebx, ebx
	jz SV_SvEntityForGentity_10
	cmp dword [ebx], 0x3ff
	jle SV_SvEntityForGentity_20
SV_SvEntityForGentity_10:
	mov dword [esp+0x4], _cstring_sv_sventityforge
	mov dword [esp], 0x2
	call Com_Error
SV_SvEntityForGentity_20:
	mov edx, [ebx]
	lea eax, [edx+edx*2]
	shl eax, 0x4
	sub eax, edx
	mov edx, sv
	lea eax, [edx+eax*8+0x1b30]
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;SV_DObjUpdateServerTime(gentity_s*, float, int)
SV_DObjUpdateServerTime:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0xc]
	mov ebx, [ebp+0x10]
	mov eax, [ebp+0x8]
	mov eax, [eax]
	mov [esp], eax
	call Com_GetServerDObj
	test eax, eax
	jz SV_DObjUpdateServerTime_10
	mov [ebp+0x10], ebx
	mov [ebp+0xc], esi
	mov [ebp+0x8], eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp DObjUpdateServerInfo
SV_DObjUpdateServerTime_10:
	xor eax, eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret


;SV_DObjCreateSkelForBone(DObj_s*, int)
SV_DObjCreateSkelForBone:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov eax, [ebp+0x8]
	mov [ebp-0x1c], eax
	mov ebx, [ebp+0xc]
	mov edi, sv
	mov eax, [edi+0x5fb44]
	mov [esp+0x4], eax
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call DObjSkelExists
	test eax, eax
	jz SV_DObjCreateSkelForBone_10
	mov [ebp+0xc], ebx
	mov eax, [ebp-0x1c]
	mov [ebp+0x8], eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp DObjSkelIsBoneUpToDate
SV_DObjCreateSkelForBone_10:
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call DObjGetAllocSkelSize
	lea ebx, [eax+0xf]
	and ebx, 0xfffffff0
	mov eax, [edi+0x5fb48]
	mov esi, eax
	add esi, [g_sv_skel_memory_start]
	lea eax, [ebx+eax]
	mov [edi+0x5fb48], eax
	cmp eax, 0x3fff0
	jle SV_DObjCreateSkelForBone_20
	mov esi, g_sv_skel_memory+0xf
	and esi, 0xfffffff0
	cmp ebx, 0x3fff0
	jle SV_DObjCreateSkelForBone_30
	mov edx, edi
SV_DObjCreateSkelForBone_60:
	mov eax, [edx+0x5fb44]
	cmp eax, [_ZZ18SV_AllocSkelMemoryjE9warnCount]
	jz SV_DObjCreateSkelForBone_40
	mov [_ZZ18SV_AllocSkelMemoryjE9warnCount], eax
	mov dword [esp+0x4], _cstring_warning_sv_skel_
	mov dword [esp], 0xf
	call Com_PrintWarning
	mov edx, edi
	mov eax, [edi+0x5fb44]
SV_DObjCreateSkelForBone_40:
	add eax, 0x1
	mov [edx+0x5fb44], eax
	test eax, eax
	jnz SV_DObjCreateSkelForBone_50
	mov dword [edx+0x5fb44], 0x1
SV_DObjCreateSkelForBone_50:
	mov [g_sv_skel_memory_start], esi
	mov [edx+0x5fb48], ebx
	jmp SV_DObjCreateSkelForBone_60
SV_DObjCreateSkelForBone_30:
	mov edx, [edi+0x5fb44]
	cmp edx, [_ZZ18SV_AllocSkelMemoryjE9warnCount]
	jz SV_DObjCreateSkelForBone_70
	mov [_ZZ18SV_AllocSkelMemoryjE9warnCount], edx
	mov dword [esp+0x4], _cstring_warning_sv_skel_
	mov dword [esp], 0xf
	call Com_PrintWarning
	mov edx, [edi+0x5fb44]
SV_DObjCreateSkelForBone_70:
	add edx, 0x1
	mov eax, 0x1
	test edx, edx
	cmovnz eax, edx
	mov [edi+0x5fb44], eax
	mov [g_sv_skel_memory_start], esi
	mov [edi+0x5fb48], ebx
SV_DObjCreateSkelForBone_20:
	mov eax, sv
	mov eax, [eax+0x5fb44]
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call DObjCreateSkel
	xor eax, eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;SV_GameSendServerCommand(int, svscmd_type, char const*)
SV_GameSendServerCommand:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov ecx, [ebp+0x8]
	cmp ecx, 0xffffffff
	jz SV_GameSendServerCommand_10
	test ecx, ecx
	js SV_GameSendServerCommand_20
	mov eax, sv_maxclients
	mov eax, [eax]
	cmp ecx, [eax+0xc]
	jl SV_GameSendServerCommand_30
SV_GameSendServerCommand_20:
	leave
	ret
SV_GameSendServerCommand_30:
	mov eax, [ebp+0x10]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_s
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	lea eax, [ecx+ecx*4]
	shl eax, 0x7
	add eax, ecx
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	lea eax, [ecx+eax*4]
	mov edx, svs
	add edx, 0x46380c
	lea eax, [edx+eax*4]
	mov [esp], eax
	call SV_SendServerCommand
	leave
	ret
SV_GameSendServerCommand_10:
	mov eax, [ebp+0x10]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_s
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call SV_SendServerCommand
	leave
	ret


;SV_DObjCreateSkelForBones(DObj_s*, int*)
SV_DObjCreateSkelForBones:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov eax, [ebp+0x8]
	mov [ebp-0x1c], eax
	mov ebx, [ebp+0xc]
	mov edi, sv
	mov eax, [edi+0x5fb44]
	mov [esp+0x4], eax
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call DObjSkelExists
	test eax, eax
	jz SV_DObjCreateSkelForBones_10
	mov [ebp+0xc], ebx
	mov eax, [ebp-0x1c]
	mov [ebp+0x8], eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp DObjSkelAreBonesUpToDate
SV_DObjCreateSkelForBones_10:
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call DObjGetAllocSkelSize
	lea ebx, [eax+0xf]
	and ebx, 0xfffffff0
	mov eax, [edi+0x5fb48]
	mov esi, eax
	add esi, [g_sv_skel_memory_start]
	lea eax, [ebx+eax]
	mov [edi+0x5fb48], eax
	cmp eax, 0x3fff0
	jle SV_DObjCreateSkelForBones_20
	mov esi, g_sv_skel_memory+0xf
	and esi, 0xfffffff0
	cmp ebx, 0x3fff0
	jle SV_DObjCreateSkelForBones_30
	mov edx, edi
SV_DObjCreateSkelForBones_60:
	mov eax, [edx+0x5fb44]
	cmp eax, [_ZZ18SV_AllocSkelMemoryjE9warnCount]
	jz SV_DObjCreateSkelForBones_40
	mov [_ZZ18SV_AllocSkelMemoryjE9warnCount], eax
	mov dword [esp+0x4], _cstring_warning_sv_skel_
	mov dword [esp], 0xf
	call Com_PrintWarning
	mov edx, edi
	mov eax, [edi+0x5fb44]
SV_DObjCreateSkelForBones_40:
	add eax, 0x1
	mov [edx+0x5fb44], eax
	test eax, eax
	jnz SV_DObjCreateSkelForBones_50
	mov dword [edx+0x5fb44], 0x1
SV_DObjCreateSkelForBones_50:
	mov [g_sv_skel_memory_start], esi
	mov [edx+0x5fb48], ebx
	jmp SV_DObjCreateSkelForBones_60
SV_DObjCreateSkelForBones_30:
	mov edx, [edi+0x5fb44]
	cmp edx, [_ZZ18SV_AllocSkelMemoryjE9warnCount]
	jz SV_DObjCreateSkelForBones_70
	mov [_ZZ18SV_AllocSkelMemoryjE9warnCount], edx
	mov dword [esp+0x4], _cstring_warning_sv_skel_
	mov dword [esp], 0xf
	call Com_PrintWarning
	mov edx, [edi+0x5fb44]
SV_DObjCreateSkelForBones_70:
	add edx, 0x1
	mov eax, 0x1
	test edx, edx
	cmovnz eax, edx
	mov [edi+0x5fb44], eax
	mov [g_sv_skel_memory_start], esi
	mov [edi+0x5fb48], ebx
SV_DObjCreateSkelForBones_20:
	mov eax, sv
	mov eax, [eax+0x5fb44]
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call DObjCreateSkel
	xor eax, eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Initialized global or static variables of sv_game:
SECTION .data
boxVerts: dd 0x0, 0x0, 0x0, 0x1, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x1, 0x0, 0x1, 0x1, 0x0, 0x1, 0x0, 0x0, 0x1, 0x1, 0x0, 0x0, 0x1, 0x0, 0x0, 0x0, 0x1, 0x1, 0x0, 0x1, 0x0, 0x0, 0x1, 0x0, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x0, 0x1, 0x1, 0x1, 0x1, 0x0, 0x1, 0x1, 0x0, 0x0, 0x0, 0x0, 0x0, 0x1, 0x1, 0x0, 0x0, 0x1, 0x0, 0x1, 0x0, 0x1, 0x0, 0x0, 0x1, 0x1, 0x1, 0x1, 0x0, 0x1, 0x1, 0x1


;Initialized constant data of sv_game:
SECTION .rdata


;Zero initialized global or static variables of sv_game:
SECTION .bss
g_sv_skel_memory_start: resb 0x20
g_sv_skel_memory: resb 0x40000
_ZZ18SV_AllocSkelMemoryjE9warnCount: resb 0x60
gameInitialized: resb 0x7c


;All cstrings:
SECTION .rdata
_cstring_null:		db 0
_cstring_sv_sventityforge:		db 015h,"SV_SvEntityForGentity: bad gEnt",0
_cstring_game_type:		db "Game Type",0
_cstring_war:		db "war",0
_cstring_g_gametype:		db "g_gametype",0
_cstring_g_gametype_s_is_:		db "g_gametype %s is not a valid gametype, defaulting to dm",0ah,0
_cstring_no_model:		db "no model.",0ah,0
_cstring_f_f_f:		db "%f %f %f",0
_cstring_sv_getserverinfo:		db 015h,"SV_GetServerinfo: bufferSize == %i",0
_cstring_i:		db "%i",0
_cstring_warning_sv_skel_:		db "WARNING: SV_SKEL_MEMORY_SIZE exceeded",0ah,0
_cstring_s:		db "%s",0



;All constant floats and doubles:
SECTION .rdata
_float_34028234663852885_float_3:		dd 0x7f7fffff	; 3.40282e+38
_float_0_50000000:		dd 0x3f000000	; 0.5
_float_64_00000000:		dd 0x42800000	; 64
_float_1_00000000:		dd 0x3f800000	; 1

