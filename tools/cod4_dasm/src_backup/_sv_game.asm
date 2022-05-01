;Imports of sv_game:
	extern _Z18Hunk_AllocInternali
	extern sv_maxclients
	extern svs
	extern _Z17SV_GetMapBaseNamePKc
	extern _Z18Com_GetBspFilenamePciPKc
	extern FS_ReadFile
	extern _Z14XModelPrecachePKcPFPviES3_
	extern _Z17Com_GetServerDObji
	extern sv
	extern _Z9Com_Error11errorParm_tPKcz
	extern _Z15CM_PointLeafnumPKf
	extern _Z14CM_LeafClusteri
	extern _Z13CM_ClusterPVSi
	extern _Z22G_GetFogOpaqueDistSqrdv
	extern _Z18BoxDistSqrdExceedsPKfS0_S0_f
	extern _Z11DObjGetTreePK6DObj_s
	extern _Z14ConsoleCommandv
	extern _Z19Dvar_RegisterStringPKcS0_tS0_
	extern com_sv_running
	extern _Z16G_GetSavePersistv
	extern sv_gametype
	extern _Z10I_strncpyzPcPKci
	extern _Z19Scr_IsValidGameTypePKc
	extern _Z10Com_PrintfiPKcz
	extern _Z14Dvar_SetStringPK6dvar_sPKc
	extern tolower
	extern com_developer
	extern _Z12DObjDumpInfoPK6DObj_s
	extern _Z2vaPKcz
	extern _Z18SV_SetConfigstringiPKc
	extern _Z13DObjGetBoundsPK6DObj_sPfS2_
	extern _Z14Vec2DistanceSqPKfS0_
	extern _Z22SV_ClipHandleForEntityPK9gentity_s
	extern vec3_origin
	extern _Z30CM_TransformedBoxTraceExternalP7trace_tPKfS2_S2_S2_jiS2_S2_
	extern _Z15Dvar_InfoStringii
	extern _Z23G_ResetEntityParsePointv
	extern _Z19Sys_MillisecondsRawv
	extern _Z10G_InitGameiiii
	extern _Z18NET_IsLocalAddress8netadr_t
	extern _Z14CM_ModelBoundsjPfS_
	extern _Z18CM_ContentsOfModelj
	extern _Z13SV_LinkEntityP9gentity_s
	extern _Z13SV_DropClientP8client_tPKch
	extern _Z18SV_GetConfigstringiPci
	extern atoi
	extern _Z15DObjDisplayAnimPK6DObj_sPKc
	extern _Z16DObjGetBoneIndexPK6DObj_sjPh
	extern _Z15Com_SyncThreadsv
	extern _Z14G_ShutdownGamei
	extern com_fixedConsolePosition
	extern _Z12DObjNumBonesPK6DObj_s
	extern _Z15DObjGetBoneInfoPK6DObj_sPP9XBoneInfo
	extern _Z20DObjGetRotTransArrayPK6DObj_s
	extern _Z12AnglesToAxisPKfPA3_f
	extern _Z16DObjGetNumModelsPK6DObj_s
	extern _Z19DObjIgnoreCollisionPK6DObj_si
	extern _Z12DObjGetModelPK6DObj_si
	extern _Z14XModelNumBonesPK6XModel
	extern _Z23MatrixTransformVector43PKfPA3_S_Pf
	extern _Z15CL_AddDebugLinePKfS0_S0_iii
	extern _Z22Com_UnloadSoundAliases18snd_alias_system_t
	extern _Z18DObjInitServerTimeP6DObj_sf
	extern _Z20DObjUpdateServerInfoP6DObj_sfi
	extern _Z14DObjSkelExistsPK6DObj_si
	extern _Z22DObjSkelIsBoneUpToDateP6DObj_si
	extern _Z20DObjGetAllocSkelSizePK6DObj_s
	extern _Z16Com_PrintWarningiPKcz
	extern _Z14DObjCreateSkelPK6DObj_sPci
	extern _Z20SV_SendServerCommandP8client_t11svscmd_typePKcz
	extern _Z24DObjSkelAreBonesUpToDatePK6DObj_sPi

;Exports of sv_game:
	global boxVerts
	global g_sv_skel_memory_start
	global g_sv_skel_memory
	global _Z22SV_AllocXModelPrecachei
	global _Z26SV_AllocXModelPrecacheColli
	global _ZZ18SV_AllocSkelMemoryjE9warnCount
	global _Z10SV_GetGuidi
	global _Z12SV_MapExistsPKc
	global _Z12SV_XModelGetPKc
	global _Z13SV_DObjExistsP9gentity_s
	global _Z13SV_GentityNumi
	global _Z13SV_GetUsercmdiP9usercmd_s
	global _Z13SV_inSnapshotPKfi
	global _Z14SV_DObjGetTreeP9gentity_s
	global _Z14SV_GameCommandv
	global _Z14SV_SetGametypev
	global _Z15SV_DObjDumpInfoP9gentity_s
	global _Z15SV_SetMapCenterPf
	global _Z16SV_DObjGetBoundsP9gentity_sPfS1_
	global _Z16SV_EntityContactPKfS0_PK9gentity_s
	global _Z16SV_GameClientNumi
	global _Z16SV_GetClientPingi
	global _Z16SV_GetServerinfoPci
	global _Z16SV_InitGameProgsi
	global _Z16SV_IsLocalClienti
	global _Z16SV_SetBrushModelP9gentity_s
	global _Z17SV_GameDropClientiPKc
	global _Z17SV_LocateGameDataP9gentity_siiP13playerState_si
	global _Z17SV_SetGameEndTimei
	global _Z18SV_DObjDisplayAnimP9gentity_sPKc
	global _Z19SV_DObjGetBoneIndexPK9gentity_sj
	global _Z19SV_RestartGameProgsi
	global _Z19SV_XModelDebugBoxesP9gentity_s
	global _Z20SV_ShutdownGameProgsv
	global _Z21SV_DObjGetMatrixArrayPK9gentity_s
	global _Z21SV_DObjInitServerTimeP9gentity_sf
	global _Z21SV_GEntityForSvEntityP10svEntity_s
	global _Z21SV_ResetSkeletonCachev
	global _Z21SV_SvEntityForGentityPK9gentity_s
	global _Z23SV_DObjUpdateServerTimeP9gentity_sfi
	global _Z24SV_DObjCreateSkelForBoneP6DObj_si
	global _Z24SV_GameSendServerCommandi11svscmd_typePKc
	global _Z25SV_DObjCreateSkelForBonesP6DObj_sPi
	global gameInitialized


SECTION .text


;SV_AllocXModelPrecache(int)
_Z22SV_AllocXModelPrecachei:
	push ebp
	mov ebp, esp
	pop ebp
	jmp _Z18Hunk_AllocInternali
	nop


;SV_AllocXModelPrecacheColl(int)
_Z26SV_AllocXModelPrecacheColli:
	push ebp
	mov ebp, esp
	pop ebp
	jmp _Z18Hunk_AllocInternali
	nop


;SV_GetGuid(int)
_Z10SV_GetGuidi:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	test ecx, ecx
	js _Z10SV_GetGuidi_10
	mov eax, sv_maxclients
	mov eax, [eax]
	cmp ecx, [eax+0xc]
	jge _Z10SV_GetGuidi_10
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
_Z10SV_GetGuidi_10:
	mov eax, _cstring_null
	pop ebp
	ret
	nop


;SV_MapExists(char const*)
_Z12SV_MapExistsPKc:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x114
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z17SV_GetMapBaseNamePKc
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x100
	lea ebx, [ebp-0x108]
	mov [esp], ebx
	call _Z18Com_GetBspFilenamePciPKc
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
_Z12SV_XModelGetPKc:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x8], _Z26SV_AllocXModelPrecacheColli
	mov dword [esp+0x4], _Z22SV_AllocXModelPrecachei
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z14XModelPrecachePKcPFPviES3_
	leave
	ret
	nop


;SV_DObjExists(gentity_s*)
_Z13SV_DObjExistsP9gentity_s:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov eax, [eax]
	mov [esp], eax
	call _Z17Com_GetServerDObji
	test eax, eax
	setnz al
	movzx eax, al
	leave
	ret
	nop


;SV_GentityNum(int)
_Z13SV_GentityNumi:
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
_Z13SV_GetUsercmdiP9usercmd_s:
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
_Z13SV_inSnapshotPKfi:
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
	jz _Z13SV_inSnapshotPKfi_10
	mov edi, [ebx+0x104]
	test edi, edi
	jnz _Z13SV_inSnapshotPKfi_20
	movzx eax, byte [ebx+0xf6]
	test al, 0x1
	jnz _Z13SV_inSnapshotPKfi_10
	test al, 0x18
	jnz _Z13SV_inSnapshotPKfi_20
	test ebx, ebx
	jz _Z13SV_inSnapshotPKfi_30
	cmp dword [ebx], 0x3ff
	jle _Z13SV_inSnapshotPKfi_40
_Z13SV_inSnapshotPKfi_30:
	mov dword [esp+0x4], _cstring_sv_sventityforge
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
_Z13SV_inSnapshotPKfi_40:
	mov edx, [ebx]
	lea eax, [edx+edx*2]
	shl eax, 0x4
	sub eax, edx
	lea eax, [esi+eax*8+0x1b30]
	mov [ebp-0x24], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z15CM_PointLeafnumPKf
	mov edx, [ebp-0x24]
	mov esi, [edx+0x11c]
	test esi, esi
	jz _Z13SV_inSnapshotPKfi_10
	mov [esp], eax
	call _Z14CM_LeafClusteri
	mov [esp], eax
	call _Z13CM_ClusterPVSi
	mov [ebp-0x20], eax
	mov ecx, [ebp-0x24]
	mov ecx, [ecx+0x11c]
	mov [ebp-0x28], ecx
	cmp ecx, 0x0
	jg _Z13SV_inSnapshotPKfi_50
	jnz _Z13SV_inSnapshotPKfi_60
	xor edx, edx
_Z13SV_inSnapshotPKfi_110:
	mov eax, [ebp-0x24]
	mov esi, [eax+0x160]
	test esi, esi
	jz _Z13SV_inSnapshotPKfi_10
	cmp esi, edx
	jl _Z13SV_inSnapshotPKfi_70
_Z13SV_inSnapshotPKfi_80:
	mov eax, edx
	sar eax, 0x3
	mov ecx, [ebp-0x20]
	movzx eax, byte [ecx+eax]
	mov ecx, edx
	and ecx, 0x7
	sar eax, cl
	test al, 0x1
	jnz _Z13SV_inSnapshotPKfi_70
	add edx, 0x1
	cmp esi, edx
	jge _Z13SV_inSnapshotPKfi_80
_Z13SV_inSnapshotPKfi_70:
	cmp esi, edx
	jz _Z13SV_inSnapshotPKfi_10
_Z13SV_inSnapshotPKfi_60:
	call _Z22G_GetFogOpaqueDistSqrdv
	fstp dword [ebp-0x1c]
	movss xmm0, dword [ebp-0x1c]
	ucomiss xmm0, [_float_3402823466385288598117041]
	jp _Z13SV_inSnapshotPKfi_90
	jz _Z13SV_inSnapshotPKfi_20
_Z13SV_inSnapshotPKfi_90:
	movss [esp+0xc], xmm0
	mov eax, [ebp+0x8]
	mov [esp+0x8], eax
	lea eax, [ebx+0x130]
	mov [esp+0x4], eax
	lea eax, [ebx+0x124]
	mov [esp], eax
	call _Z18BoxDistSqrdExceedsPKfS0_S0_f
	test eax, eax
	setz al
	movzx eax, al
	jmp _Z13SV_inSnapshotPKfi_100
_Z13SV_inSnapshotPKfi_10:
	xor eax, eax
_Z13SV_inSnapshotPKfi_100:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z13SV_inSnapshotPKfi_20:
	mov eax, 0x1
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z13SV_inSnapshotPKfi_50:
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
	jnz _Z13SV_inSnapshotPKfi_60
	mov edi, [ebp-0x24]
	xor esi, esi
_Z13SV_inSnapshotPKfi_120:
	add esi, 0x1
	cmp [ebp-0x28], esi
	jz _Z13SV_inSnapshotPKfi_110
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
	jz _Z13SV_inSnapshotPKfi_120
	jmp _Z13SV_inSnapshotPKfi_60


;SV_DObjGetTree(gentity_s*)
_Z14SV_DObjGetTreeP9gentity_s:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov eax, [eax]
	mov [esp], eax
	call _Z17Com_GetServerDObji
	test eax, eax
	jz _Z14SV_DObjGetTreeP9gentity_s_10
	mov [ebp+0x8], eax
	leave
	jmp _Z11DObjGetTreePK6DObj_s
_Z14SV_DObjGetTreeP9gentity_s_10:
	xor eax, eax
	leave
	ret


;SV_GameCommand()
_Z14SV_GameCommandv:
	push ebp
	mov ebp, esp
	mov eax, sv
	cmp dword [eax], 0x2
	jz _Z14SV_GameCommandv_10
	xor eax, eax
	pop ebp
	ret
_Z14SV_GameCommandv_10:
	pop ebp
	jmp _Z14ConsoleCommandv
	nop


;SV_SetGametype()
_Z14SV_SetGametypev:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x50
	mov dword [esp+0xc], _cstring_game_type
	mov dword [esp+0x8], 0x24
	mov dword [esp+0x4], _cstring_war
	mov dword [esp], _cstring_g_gametype
	call _Z19Dvar_RegisterStringPKcS0_tS0_
	mov eax, com_sv_running
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z14SV_SetGametypev_10
	call _Z16G_GetSavePersistv
	test eax, eax
	jnz _Z14SV_SetGametypev_20
_Z14SV_SetGametypev_10:
	mov dword [esp+0x8], 0x40
	mov eax, sv_gametype
	mov eax, [eax]
	mov eax, [eax+0xc]
	mov [esp+0x4], eax
	lea esi, [ebp-0x48]
	mov [esp], esi
	call _Z10I_strncpyzPcPKci
_Z14SV_SetGametypev_70:
	movzx eax, byte [ebp-0x48]
	test al, al
	jnz _Z14SV_SetGametypev_30
_Z14SV_SetGametypev_60:
	mov [esp], esi
	call _Z19Scr_IsValidGameTypePKc
	test eax, eax
	jnz _Z14SV_SetGametypev_40
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_g_gametype_s_is_
	mov dword [esp], 0xf
	call _Z10Com_PrintfiPKcz
	mov word [ebp-0x48], 0x6d64
	mov byte [ebp-0x46], 0x0
_Z14SV_SetGametypev_40:
	mov [esp+0x4], esi
	mov eax, sv_gametype
	mov eax, [eax]
	mov [esp], eax
	call _Z14Dvar_SetStringPK6dvar_sPKc
	add esp, 0x50
	pop ebx
	pop esi
	pop ebp
	ret
_Z14SV_SetGametypev_30:
	mov ebx, esi
_Z14SV_SetGametypev_50:
	movsx eax, al
	mov [esp], eax
	call tolower
	mov [ebx], al
	add ebx, 0x1
	movzx eax, byte [ebx]
	test al, al
	jnz _Z14SV_SetGametypev_50
	jmp _Z14SV_SetGametypev_60
_Z14SV_SetGametypev_20:
	mov dword [esp+0x8], 0x40
	mov eax, sv
	add eax, 0x5fc08
	mov [esp+0x4], eax
	lea esi, [ebp-0x48]
	mov [esp], esi
	call _Z10I_strncpyzPcPKci
	jmp _Z14SV_SetGametypev_70


;SV_DObjDumpInfo(gentity_s*)
_Z15SV_DObjDumpInfoP9gentity_s:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov edx, [ebp+0x8]
	mov eax, com_developer
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	jnz _Z15SV_DObjDumpInfoP9gentity_s_10
	leave
	ret
_Z15SV_DObjDumpInfoP9gentity_s_10:
	mov eax, [edx]
	mov [esp], eax
	call _Z17Com_GetServerDObji
	test eax, eax
	jz _Z15SV_DObjDumpInfoP9gentity_s_20
	mov [ebp+0x8], eax
	leave
	jmp _Z12DObjDumpInfoPK6DObj_s
_Z15SV_DObjDumpInfoP9gentity_s_20:
	mov dword [esp+0x4], _cstring_no_model
	mov dword [esp], 0xf
	call _Z10Com_PrintfiPKcz
	leave
	ret


;SV_SetMapCenter(float*)
_Z15SV_SetMapCenterPf:
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
	call _Z2vaPKcz
	mov [esp+0x4], eax
	mov dword [esp], 0xc
	call _Z18SV_SetConfigstringiPKc
	leave
	ret
	nop


;SV_DObjGetBounds(gentity_s*, float*, float*)
_Z16SV_DObjGetBoundsP9gentity_sPfS1_:
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
	call _Z17Com_GetServerDObji
	mov [ebp+0x10], ebx
	mov [ebp+0xc], esi
	mov [ebp+0x8], eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp _Z13DObjGetBoundsPK6DObj_sPfS2_
	nop


;SV_EntityContact(float const*, float const*, gentity_s const*)
_Z16SV_EntityContactPKfS0_PK9gentity_s:
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
	jz _Z16SV_EntityContactPKfS0_PK9gentity_s_10
	test al, 0x20
	jz _Z16SV_EntityContactPKfS0_PK9gentity_s_20
	movss xmm1, dword [ebx+0x144]
	ucomiss xmm1, [esi+0x8]
	jae _Z16SV_EntityContactPKfS0_PK9gentity_s_30
	addss xmm1, [ebx+0x11c]
	movss xmm0, dword [edi+0x8]
	ucomiss xmm0, xmm1
	jb _Z16SV_EntityContactPKfS0_PK9gentity_s_40
_Z16SV_EntityContactPKfS0_PK9gentity_s_30:
	xor eax, eax
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z16SV_EntityContactPKfS0_PK9gentity_s_20:
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
	call _Z14Vec2DistanceSqPKfS0_
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
_Z16SV_EntityContactPKfS0_PK9gentity_s_10:
	mov [esp], ebx
	call _Z22SV_ClipHandleForEntityPK9gentity_s
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
	call _Z30CM_TransformedBoxTraceExternalP7trace_tPKfS2_S2_S2_jiS2_S2_
	movzx eax, byte [ebp-0x23]
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z16SV_EntityContactPKfS0_PK9gentity_s_40:
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
	call _Z14Vec2DistanceSqPKfS0_
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
_Z16SV_GameClientNumi:
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
_Z16SV_GetClientPingi:
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
_Z16SV_GetServerinfoPci:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0xc]
	test ebx, ebx
	jle _Z16SV_GetServerinfoPci_10
_Z16SV_GetServerinfoPci_20:
	mov dword [esp+0x4], 0x404
	mov dword [esp], 0x0
	call _Z15Dvar_InfoStringii
	mov [esp+0x8], ebx
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z10I_strncpyzPcPKci
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z16SV_GetServerinfoPci_10:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_sv_getserverinfo
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z16SV_GetServerinfoPci_20
	nop


;SV_InitGameProgs(int)
_Z16SV_InitGameProgsi:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov dword [gameInitialized], 0x1
	call _Z23G_ResetEntityParsePointv
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
	call _Z19Sys_MillisecondsRawv
	mov edx, [ebp+0x8]
	mov [esp+0xc], edx
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], eax
	mov ebx, svs
	mov eax, [ebx+0x463804]
	mov [esp], eax
	call _Z10G_InitGameiiii
	mov eax, sv_maxclients
	mov eax, [eax]
	mov ecx, [eax+0xc]
	test ecx, ecx
	jle _Z16SV_InitGameProgsi_10
	xor ecx, ecx
	lea edx, [ebx+0x484a90]
_Z16SV_InitGameProgsi_20:
	mov dword [edx], 0x0
	add ecx, 0x1
	add edx, 0xa5634
	cmp ecx, [eax+0xc]
	jl _Z16SV_InitGameProgsi_20
_Z16SV_InitGameProgsi_10:
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;SV_IsLocalClient(int)
_Z16SV_IsLocalClienti:
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
	call _Z18NET_IsLocalAddress8netadr_t
	leave
	ret


;SV_SetBrushModel(gentity_s*)
_Z16SV_SetBrushModelP9gentity_s:
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
	call _Z14CM_ModelBoundsjPfS_
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
	call _Z18CM_ContentsOfModelj
	mov [ebx+0x120], eax
	mov [esp], ebx
	call _Z13SV_LinkEntityP9gentity_s
	mov eax, 0x1
	add esp, 0x34
	pop ebx
	pop ebp
	ret


;SV_GameDropClient(int, char const*)
_Z17SV_GameDropClientiPKc:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov ecx, [ebp+0x8]
	test ecx, ecx
	js _Z17SV_GameDropClientiPKc_10
	mov eax, sv_maxclients
	mov eax, [eax]
	cmp ecx, [eax+0xc]
	jl _Z17SV_GameDropClientiPKc_20
_Z17SV_GameDropClientiPKc_10:
	leave
	ret
_Z17SV_GameDropClientiPKc_20:
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
	call _Z13SV_DropClientP8client_tPKch
	leave
	ret


;SV_LocateGameData(gentity_s*, int, int, playerState_s*, int)
_Z17SV_LocateGameDataP9gentity_siiP13playerState_si:
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
_Z17SV_SetGameEndTimei:
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
	call _Z18SV_GetConfigstringiPci
	mov [esp], ebx
	call atoi
	sub eax, esi
	js _Z17SV_SetGameEndTimei_10
_Z17SV_SetGameEndTimei_30:
	cmp eax, 0x1f4
	jle _Z17SV_SetGameEndTimei_20
	mov [esp+0x4], esi
	mov dword [esp], _cstring_i
	call _Z2vaPKcz
	mov [esp+0x4], eax
	mov dword [esp], 0xb
	call _Z18SV_SetConfigstringiPKc
_Z17SV_SetGameEndTimei_20:
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
_Z17SV_SetGameEndTimei_10:
	neg eax
	jmp _Z17SV_SetGameEndTimei_30


;SV_DObjDisplayAnim(gentity_s*, char const*)
_Z18SV_DObjDisplayAnimP9gentity_sPKc:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0xc]
	mov eax, [ebp+0x8]
	mov eax, [eax]
	mov [esp], eax
	call _Z17Com_GetServerDObji
	test eax, eax
	jz _Z18SV_DObjDisplayAnimP9gentity_sPKc_10
	mov [ebp+0xc], ebx
	mov [ebp+0x8], eax
	add esp, 0x14
	pop ebx
	pop ebp
	jmp _Z15DObjDisplayAnimPK6DObj_sPKc
_Z18SV_DObjDisplayAnimP9gentity_sPKc_10:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;SV_DObjGetBoneIndex(gentity_s const*, unsigned int)
_Z19SV_DObjGetBoneIndexPK9gentity_sj:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	mov eax, [ebp+0x8]
	mov eax, [eax]
	mov [esp], eax
	call _Z17Com_GetServerDObji
	mov edx, eax
	test eax, eax
	jnz _Z19SV_DObjGetBoneIndexPK9gentity_sj_10
_Z19SV_DObjGetBoneIndexPK9gentity_sj_20:
	mov eax, 0xffffffff
	leave
	ret
_Z19SV_DObjGetBoneIndexPK9gentity_sj_10:
	mov byte [ebp-0x9], 0xfe
	lea eax, [ebp-0x9]
	mov [esp+0x8], eax
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], edx
	call _Z16DObjGetBoneIndexPK6DObj_sjPh
	test eax, eax
	jz _Z19SV_DObjGetBoneIndexPK9gentity_sj_20
	movzx eax, byte [ebp-0x9]
	leave
	ret


;SV_RestartGameProgs(int)
_Z19SV_RestartGameProgsi:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	call _Z15Com_SyncThreadsv
	mov dword [esp], 0x0
	call _Z14G_ShutdownGamei
	mov eax, com_fixedConsolePosition
	mov dword [eax], 0x0
	call _Z23G_ResetEntityParsePointv
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
	call _Z19Sys_MillisecondsRawv
	mov edx, [ebp+0x8]
	mov [esp+0xc], edx
	mov dword [esp+0x8], 0x1
	mov [esp+0x4], eax
	mov ebx, svs
	mov eax, [ebx+0x463804]
	mov [esp], eax
	call _Z10G_InitGameiiii
	mov eax, sv_maxclients
	mov eax, [eax]
	mov edx, [eax+0xc]
	test edx, edx
	jle _Z19SV_RestartGameProgsi_10
	xor ecx, ecx
	lea edx, [ebx+0x484a90]
_Z19SV_RestartGameProgsi_20:
	mov dword [edx], 0x0
	add ecx, 0x1
	add edx, 0xa5634
	cmp ecx, [eax+0xc]
	jl _Z19SV_RestartGameProgsi_20
_Z19SV_RestartGameProgsi_10:
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;SV_XModelDebugBoxes(gentity_s*)
_Z19SV_XModelDebugBoxesP9gentity_s:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x30c
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov [esp], eax
	call _Z17Com_GetServerDObji
	mov [ebp-0x2d4], eax
	mov [esp], eax
	call _Z12DObjNumBonesPK6DObj_s
	lea eax, [ebp-0x2ac]
	mov [esp+0x4], eax
	mov eax, [ebp-0x2d4]
	mov [esp], eax
	call _Z15DObjGetBoneInfoPK6DObj_sPP9XBoneInfo
	mov edx, [ebp-0x2d4]
	mov [esp], edx
	call _Z20DObjGetRotTransArrayPK6DObj_s
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
	call _Z12AnglesToAxisPKfPA3_f
	mov eax, [ebp-0x2d4]
	mov [esp], eax
	call _Z16DObjGetNumModelsPK6DObj_s
	mov [ebp-0x2d0], eax
	test eax, eax
	jg _Z19SV_XModelDebugBoxesP9gentity_s_10
_Z19SV_XModelDebugBoxesP9gentity_s_30:
	add esp, 0x30c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19SV_XModelDebugBoxesP9gentity_s_10:
	mov dword [ebp-0x2cc], 0x0
	mov edx, [ebp-0x2cc]
	jmp _Z19SV_XModelDebugBoxesP9gentity_s_20
_Z19SV_XModelDebugBoxesP9gentity_s_40:
	add dword [ebp-0x2cc], 0x1
	mov edx, [ebp-0x2cc]
	cmp [ebp-0x2d0], edx
	jz _Z19SV_XModelDebugBoxesP9gentity_s_30
_Z19SV_XModelDebugBoxesP9gentity_s_20:
	mov [esp+0x4], edx
	mov eax, [ebp-0x2d4]
	mov [esp], eax
	call _Z19DObjIgnoreCollisionPK6DObj_si
	test al, al
	jnz _Z19SV_XModelDebugBoxesP9gentity_s_40
	mov edx, [ebp-0x2cc]
	mov [esp+0x4], edx
	mov eax, [ebp-0x2d4]
	mov [esp], eax
	call _Z12DObjGetModelPK6DObj_si
	mov [esp], eax
	call _Z14XModelNumBonesPK6XModel
	mov [ebp-0x2c8], eax
	test eax, eax
	jle _Z19SV_XModelDebugBoxesP9gentity_s_40
	mov dword [ebp-0x2c4], 0x0
	mov edx, [ebp-0x2d8]
	add edx, 0x10
	mov [ebp-0x2dc], edx
	mov eax, [ebp-0x2c4]
_Z19SV_XModelDebugBoxesP9gentity_s_60:
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
_Z19SV_XModelDebugBoxesP9gentity_s_50:
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
	call _Z23MatrixTransformVector43PKfPA3_S_Pf
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
	call _Z23MatrixTransformVector43PKfPA3_S_Pf
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
	call _Z15CL_AddDebugLinePKfS0_S0_iii
	add esi, 0x18
	add edi, 0x18
	mov edx, boxVerts+0x120
	cmp edx, esi
	jnz _Z19SV_XModelDebugBoxesP9gentity_s_50
	add dword [ebp-0x2c4], 0x1
	add dword [ebp-0x2d8], 0x20
	add dword [ebp-0x2dc], 0x20
	mov eax, [ebp-0x2c4]
	cmp [ebp-0x2c8], eax
	jz _Z19SV_XModelDebugBoxesP9gentity_s_40
	mov edx, [ebp-0x2dc]
	jmp _Z19SV_XModelDebugBoxesP9gentity_s_60


;SV_ShutdownGameProgs()
_Z20SV_ShutdownGameProgsv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	call _Z15Com_SyncThreadsv
	mov eax, sv
	mov dword [eax], 0x0
	mov dword [esp], 0x2
	call _Z22Com_UnloadSoundAliases18snd_alias_system_t
	mov edx, [gameInitialized]
	test edx, edx
	jnz _Z20SV_ShutdownGameProgsv_10
	leave
	ret
_Z20SV_ShutdownGameProgsv_10:
	mov dword [esp], 0x1
	call _Z14G_ShutdownGamei
	mov dword [gameInitialized], 0x0
	leave
	ret


;SV_DObjGetMatrixArray(gentity_s const*)
_Z21SV_DObjGetMatrixArrayPK9gentity_s:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov eax, [eax]
	mov [esp], eax
	call _Z17Com_GetServerDObji
	mov [ebp+0x8], eax
	leave
	jmp _Z20DObjGetRotTransArrayPK6DObj_s


;SV_DObjInitServerTime(gentity_s*, float)
_Z21SV_DObjInitServerTimeP9gentity_sf:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0xc]
	mov eax, [ebp+0x8]
	mov eax, [eax]
	mov [esp], eax
	call _Z17Com_GetServerDObji
	test eax, eax
	jz _Z21SV_DObjInitServerTimeP9gentity_sf_10
	mov [ebp+0xc], ebx
	mov [ebp+0x8], eax
	add esp, 0x14
	pop ebx
	pop ebp
	jmp _Z18DObjInitServerTimeP6DObj_sf
_Z21SV_DObjInitServerTimeP9gentity_sf_10:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;SV_GEntityForSvEntity(svEntity_s*)
_Z21SV_GEntityForSvEntityP10svEntity_s:
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
_Z21SV_ResetSkeletonCachev:
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
_Z21SV_SvEntityForGentityPK9gentity_s:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	test ebx, ebx
	jz _Z21SV_SvEntityForGentityPK9gentity_s_10
	cmp dword [ebx], 0x3ff
	jle _Z21SV_SvEntityForGentityPK9gentity_s_20
_Z21SV_SvEntityForGentityPK9gentity_s_10:
	mov dword [esp+0x4], _cstring_sv_sventityforge
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
_Z21SV_SvEntityForGentityPK9gentity_s_20:
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
_Z23SV_DObjUpdateServerTimeP9gentity_sfi:
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
	call _Z17Com_GetServerDObji
	test eax, eax
	jz _Z23SV_DObjUpdateServerTimeP9gentity_sfi_10
	mov [ebp+0x10], ebx
	mov [ebp+0xc], esi
	mov [ebp+0x8], eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp _Z20DObjUpdateServerInfoP6DObj_sfi
_Z23SV_DObjUpdateServerTimeP9gentity_sfi_10:
	xor eax, eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret


;SV_DObjCreateSkelForBone(DObj_s*, int)
_Z24SV_DObjCreateSkelForBoneP6DObj_si:
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
	call _Z14DObjSkelExistsPK6DObj_si
	test eax, eax
	jz _Z24SV_DObjCreateSkelForBoneP6DObj_si_10
	mov [ebp+0xc], ebx
	mov eax, [ebp-0x1c]
	mov [ebp+0x8], eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z22DObjSkelIsBoneUpToDateP6DObj_si
_Z24SV_DObjCreateSkelForBoneP6DObj_si_10:
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call _Z20DObjGetAllocSkelSizePK6DObj_s
	lea ebx, [eax+0xf]
	and ebx, 0xfffffff0
	mov eax, [edi+0x5fb48]
	mov esi, eax
	add esi, [g_sv_skel_memory_start]
	lea eax, [ebx+eax]
	mov [edi+0x5fb48], eax
	cmp eax, 0x3fff0
	jle _Z24SV_DObjCreateSkelForBoneP6DObj_si_20
	mov esi, g_sv_skel_memory+0xf
	and esi, 0xfffffff0
	cmp ebx, 0x3fff0
	jle _Z24SV_DObjCreateSkelForBoneP6DObj_si_30
	mov edx, edi
_Z24SV_DObjCreateSkelForBoneP6DObj_si_60:
	mov eax, [edx+0x5fb44]
	cmp eax, [_ZZ18SV_AllocSkelMemoryjE9warnCount]
	jz _Z24SV_DObjCreateSkelForBoneP6DObj_si_40
	mov [_ZZ18SV_AllocSkelMemoryjE9warnCount], eax
	mov dword [esp+0x4], _cstring_warning_sv_skel_
	mov dword [esp], 0xf
	call _Z16Com_PrintWarningiPKcz
	mov edx, edi
	mov eax, [edi+0x5fb44]
_Z24SV_DObjCreateSkelForBoneP6DObj_si_40:
	add eax, 0x1
	mov [edx+0x5fb44], eax
	test eax, eax
	jnz _Z24SV_DObjCreateSkelForBoneP6DObj_si_50
	mov dword [edx+0x5fb44], 0x1
_Z24SV_DObjCreateSkelForBoneP6DObj_si_50:
	mov [g_sv_skel_memory_start], esi
	mov [edx+0x5fb48], ebx
	jmp _Z24SV_DObjCreateSkelForBoneP6DObj_si_60
_Z24SV_DObjCreateSkelForBoneP6DObj_si_30:
	mov edx, [edi+0x5fb44]
	cmp edx, [_ZZ18SV_AllocSkelMemoryjE9warnCount]
	jz _Z24SV_DObjCreateSkelForBoneP6DObj_si_70
	mov [_ZZ18SV_AllocSkelMemoryjE9warnCount], edx
	mov dword [esp+0x4], _cstring_warning_sv_skel_
	mov dword [esp], 0xf
	call _Z16Com_PrintWarningiPKcz
	mov edx, [edi+0x5fb44]
_Z24SV_DObjCreateSkelForBoneP6DObj_si_70:
	add edx, 0x1
	mov eax, 0x1
	test edx, edx
	cmovnz eax, edx
	mov [edi+0x5fb44], eax
	mov [g_sv_skel_memory_start], esi
	mov [edi+0x5fb48], ebx
_Z24SV_DObjCreateSkelForBoneP6DObj_si_20:
	mov eax, sv
	mov eax, [eax+0x5fb44]
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call _Z14DObjCreateSkelPK6DObj_sPci
	xor eax, eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;SV_GameSendServerCommand(int, svscmd_type, char const*)
_Z24SV_GameSendServerCommandi11svscmd_typePKc:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov ecx, [ebp+0x8]
	cmp ecx, 0xffffffff
	jz _Z24SV_GameSendServerCommandi11svscmd_typePKc_10
	test ecx, ecx
	js _Z24SV_GameSendServerCommandi11svscmd_typePKc_20
	mov eax, sv_maxclients
	mov eax, [eax]
	cmp ecx, [eax+0xc]
	jl _Z24SV_GameSendServerCommandi11svscmd_typePKc_30
_Z24SV_GameSendServerCommandi11svscmd_typePKc_20:
	leave
	ret
_Z24SV_GameSendServerCommandi11svscmd_typePKc_30:
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
	call _Z20SV_SendServerCommandP8client_t11svscmd_typePKcz
	leave
	ret
_Z24SV_GameSendServerCommandi11svscmd_typePKc_10:
	mov eax, [ebp+0x10]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_s
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call _Z20SV_SendServerCommandP8client_t11svscmd_typePKcz
	leave
	ret


;SV_DObjCreateSkelForBones(DObj_s*, int*)
_Z25SV_DObjCreateSkelForBonesP6DObj_sPi:
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
	call _Z14DObjSkelExistsPK6DObj_si
	test eax, eax
	jz _Z25SV_DObjCreateSkelForBonesP6DObj_sPi_10
	mov [ebp+0xc], ebx
	mov eax, [ebp-0x1c]
	mov [ebp+0x8], eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z24DObjSkelAreBonesUpToDatePK6DObj_sPi
_Z25SV_DObjCreateSkelForBonesP6DObj_sPi_10:
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call _Z20DObjGetAllocSkelSizePK6DObj_s
	lea ebx, [eax+0xf]
	and ebx, 0xfffffff0
	mov eax, [edi+0x5fb48]
	mov esi, eax
	add esi, [g_sv_skel_memory_start]
	lea eax, [ebx+eax]
	mov [edi+0x5fb48], eax
	cmp eax, 0x3fff0
	jle _Z25SV_DObjCreateSkelForBonesP6DObj_sPi_20
	mov esi, g_sv_skel_memory+0xf
	and esi, 0xfffffff0
	cmp ebx, 0x3fff0
	jle _Z25SV_DObjCreateSkelForBonesP6DObj_sPi_30
	mov edx, edi
_Z25SV_DObjCreateSkelForBonesP6DObj_sPi_60:
	mov eax, [edx+0x5fb44]
	cmp eax, [_ZZ18SV_AllocSkelMemoryjE9warnCount]
	jz _Z25SV_DObjCreateSkelForBonesP6DObj_sPi_40
	mov [_ZZ18SV_AllocSkelMemoryjE9warnCount], eax
	mov dword [esp+0x4], _cstring_warning_sv_skel_
	mov dword [esp], 0xf
	call _Z16Com_PrintWarningiPKcz
	mov edx, edi
	mov eax, [edi+0x5fb44]
_Z25SV_DObjCreateSkelForBonesP6DObj_sPi_40:
	add eax, 0x1
	mov [edx+0x5fb44], eax
	test eax, eax
	jnz _Z25SV_DObjCreateSkelForBonesP6DObj_sPi_50
	mov dword [edx+0x5fb44], 0x1
_Z25SV_DObjCreateSkelForBonesP6DObj_sPi_50:
	mov [g_sv_skel_memory_start], esi
	mov [edx+0x5fb48], ebx
	jmp _Z25SV_DObjCreateSkelForBonesP6DObj_sPi_60
_Z25SV_DObjCreateSkelForBonesP6DObj_sPi_30:
	mov edx, [edi+0x5fb44]
	cmp edx, [_ZZ18SV_AllocSkelMemoryjE9warnCount]
	jz _Z25SV_DObjCreateSkelForBonesP6DObj_sPi_70
	mov [_ZZ18SV_AllocSkelMemoryjE9warnCount], edx
	mov dword [esp+0x4], _cstring_warning_sv_skel_
	mov dword [esp], 0xf
	call _Z16Com_PrintWarningiPKcz
	mov edx, [edi+0x5fb44]
_Z25SV_DObjCreateSkelForBonesP6DObj_sPi_70:
	add edx, 0x1
	mov eax, 0x1
	test edx, edx
	cmovnz eax, edx
	mov [edi+0x5fb44], eax
	mov [g_sv_skel_memory_start], esi
	mov [edi+0x5fb48], ebx
_Z25SV_DObjCreateSkelForBonesP6DObj_sPi_20:
	mov eax, sv
	mov eax, [eax+0x5fb44]
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call _Z14DObjCreateSkelPK6DObj_sPci
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
_float_3402823466385288598117041:		dd 0x7f7fffff	; 3.40282e+38
_float_0_50000000:		dd 0x3f000000	; 0.5
_float_64_00000000:		dd 0x42800000	; 64
_float_1_00000000:		dd 0x3f800000	; 1

