;Imports of cl_parse_mp:
	extern _Z12MSG_ReadLongP5msg_t
	extern _Z13MSG_ReadShortP5msg_t
	extern _Z12MSG_ReadDataP5msg_tPvi
	extern cls
	extern _Z11Com_DPrintfiPKcz
	extern legacyHacks
	extern _Z14MSG_ReadStringP5msg_t
	extern _Z2vaPKcz
	extern _Z9Com_Error11errorParm_tPKcz
	extern _Z10Com_PrintfiPKcz
	extern _Z21CL_AddReliableCommandiPKc
	extern _Z20FS_SV_FOpenFileWritePKc
	extern _Z14CL_WritePacketi
	extern _Z15CL_NextDownloadi
	extern _Z8FS_WritePKvii
	extern _Z13FS_FCloseFilei
	extern _Z12FS_SV_RenamePKcS0_
	extern memset
	extern clientConnections
	extern _Z12MSG_ReadByteP5msg_t
	extern clients
	extern _Z11MSG_DiscardP5msg_t
	extern cl_shownet
	extern _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h
	extern _Z29MSG_ClearLastReferencedEntityP5msg_t
	extern _Z19MSG_ReadEntityIndexP5msg_ti
	extern memcpy
	extern _Z19MSG_ReadDeltaEntityP5msg_tiPK13entityState_sPS1_i
	extern cl_shownuments
	extern msg_dumpEnts
	extern _Z11MSG_ReadBitP5msg_t
	extern _Z19MSG_ReadDeltaClientP5msg_tiPK13clientState_sPS1_i
	extern _Z14Com_PrintErroriPKcz
	extern _Z20BG_GetEntityTypeNamei
	extern _Z18CL_GetConfigStringii
	extern sscanf
	extern _Z14Dvar_GetStringPKc
	extern _Z10I_strncpyzPcPKci
	extern _Z11Sys_OpenURLPKci
	extern _Z12Cbuf_AddTextiPKc
	extern _Z17DL_CancelDownloadv
	extern _Z14FS_BuildOSPathPKcS0_S0_Pc
	extern com_developer
	extern _Z16DL_BeginDownloadPKcS0_i
	extern _ZN10LargeLocalC1Ei
	extern _ZN10LargeLocal6GetBufEv
	extern _Z16Info_ValueForKeyPKcS0_
	extern atoi
	extern com_sv_running
	extern clientUIActives
	extern _Z26FS_PureServerSetLoadedIwdsPKcS0_
	extern _Z26FS_ServerSetReferencedIwdsPKcS0_
	extern _Z25FS_ServerSetReferencedFFsPKcS0_
	extern _Z13Info_NextPairPPKcPcS2_
	extern _Z24Dvar_SetFromStringByNamePKcS0_
	extern _Z12Dvar_GetBoolPKc
	extern _ZN10LargeLocalD1Ev
	extern _Z18Dvar_SetCheatStatev
	extern _Unwind_Resume
	extern _Z8MSG_InitP5msg_tPhi
	extern _Z20MSG_ReadBitsCompressPKhPhi
	extern _Z9Con_Closei
	extern _Z13CL_ClearStatei
	extern constantConfigStrings
	extern useFastFile
	extern fs_gameDirVar
	extern _Z14FS_NeedRestarti
	extern net_lanauthorize
	extern _Z23CL_RequestAuthorizationi
	extern _Z16CL_InitDownloadsi
	extern cl_paused
	extern _Z11Dvar_SetIntPK6dvar_si
	extern _Z17MSG_ReadBigStringP5msg_t
	extern _Z12MSG_ReadBitsP5msg_ti
	extern _Z16Sys_IsLANAddress8netadr_t
	extern _Z10FS_Restartii
	extern _Z14DB_SyncXAssetsv

;Exports of cl_parse_mp:
	global _ZZ16CL_ParseDownloadiP5msg_tE17parseDownloadData
	global _Z16CL_ParseDownloadiP5msg_t
	global _ZZ16CL_ParseSnapshotiP5msg_tE7newSnap
	global _Z16CL_ParseSnapshotiP5msg_t
	global _ZZ21CL_ParseServerMessageiP5msg_tE17msgCompressed_buf
	global _Z17CL_ParseMapCenteri
	global _Z19CL_ParseWWWDownloadiP5msg_t
	global _Z20CL_SystemInfoChangedi
	global _Z21CL_ParseServerMessageiP5msg_t
	global _Z34CL_GetPredictedOriginForServerTimeP14clientActive_tiPfS1_S1_PiS2_
	global _Z35CL_SavePredictedOriginForServerTimeiP14clientActive_tiPKfS2_S2_ii
	global cl_connectedToPureServer
	global svc_strings


SECTION .text


;CL_ParseDownload(int, msg_t*)
_Z16CL_ParseDownloadiP5msg_t:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov eax, [ebp+0x8]
	mov [ebp-0x1c], eax
	mov ebx, [ebp+0xc]
	mov [esp], ebx
	call _Z12MSG_ReadLongP5msg_t
	mov esi, eax
	cmp eax, 0xffffffff
	jz _Z16CL_ParseDownloadiP5msg_t_10
	test eax, eax
	jz _Z16CL_ParseDownloadiP5msg_t_20
_Z16CL_ParseDownloadiP5msg_t_60:
	mov [esp], ebx
	call _Z13MSG_ReadShortP5msg_t
	mov edi, eax
	test eax, eax
	jle _Z16CL_ParseDownloadiP5msg_t_30
	mov [esp+0x8], eax
	mov dword [esp+0x4], _ZZ16CL_ParseDownloadiP5msg_tE17parseDownloadData
	mov [esp], ebx
	call _Z12MSG_ReadDataP5msg_tPvi
_Z16CL_ParseDownloadiP5msg_t_30:
	mov ebx, cls
	mov eax, [ebx+0x2dc29c]
	cmp esi, eax
	jz _Z16CL_ParseDownloadiP5msg_t_40
	mov [esp+0xc], esi
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_cl_parsedownload
	mov dword [esp], 0xe
	call _Z11Com_DPrintfiPKcz
	cmp esi, [ebx+0x2dc29c]
	jg _Z16CL_ParseDownloadiP5msg_t_50
_Z16CL_ParseDownloadiP5msg_t_110:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z16CL_ParseDownloadiP5msg_t_20:
	mov [esp], ebx
	call _Z12MSG_ReadLongP5msg_t
	mov edx, cls
	mov [edx+0x2dc2a4], eax
	mov edx, legacyHacks
	mov [edx], eax
	test eax, eax
	jns _Z16CL_ParseDownloadiP5msg_t_60
	mov [esp], ebx
	call _Z14MSG_ReadStringP5msg_t
	mov [esp+0x4], eax
	mov dword [esp], _cstring_s
	call _Z2vaPKcz
	mov [ebp+0xc], eax
	mov dword [ebp+0x8], 0x2
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z9Com_Error11errorParm_tPKcz
_Z16CL_ParseDownloadiP5msg_t_40:
	mov esi, [ebx+0x2dc094]
	test esi, esi
	jnz _Z16CL_ParseDownloadiP5msg_t_70
	cmp byte [ebx+0x2dc098], 0x0
	jnz _Z16CL_ParseDownloadiP5msg_t_80
	mov dword [esp+0x4], _cstring_server_sending_d
	mov dword [esp], 0xe
	call _Z10Com_PrintfiPKcz
	mov dword [ebp+0xc], _cstring_stopdl
	mov eax, [ebp-0x1c]
	mov [ebp+0x8], eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z21CL_AddReliableCommandiPKc
_Z16CL_ParseDownloadiP5msg_t_80:
	lea esi, [ebx+0x2dc098]
	mov [esp], esi
	call _Z20FS_SV_FOpenFileWritePKc
	mov [ebx+0x2dc094], eax
	test eax, eax
	jz _Z16CL_ParseDownloadiP5msg_t_90
_Z16CL_ParseDownloadiP5msg_t_70:
	test edi, edi
	jnz _Z16CL_ParseDownloadiP5msg_t_100
_Z16CL_ParseDownloadiP5msg_t_140:
	mov eax, [ebx+0x2dc29c]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_nextdl_d
	call _Z2vaPKcz
	mov [esp+0x4], eax
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call _Z21CL_AddReliableCommandiPKc
	add dword [ebx+0x2dc29c], 0x1
	mov eax, edi
	add eax, [ebx+0x2dc2a0]
	mov [ebx+0x2dc2a0], eax
	mov esi, legacyHacks
	mov [esi+0x4], eax
	test edi, edi
	jnz _Z16CL_ParseDownloadiP5msg_t_110
	mov eax, [ebx+0x2dc094]
	test eax, eax
	jnz _Z16CL_ParseDownloadiP5msg_t_120
_Z16CL_ParseDownloadiP5msg_t_160:
	mov byte [ebx+0x2dc198], 0x0
	mov byte [ebx+0x2dc098], 0x0
	mov byte [esi+0xc], 0x0
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call _Z14CL_WritePacketi
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call _Z14CL_WritePacketi
_Z16CL_ParseDownloadiP5msg_t_150:
	mov eax, [ebp-0x1c]
	mov [ebp+0x8], eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z15CL_NextDownloadi
_Z16CL_ParseDownloadiP5msg_t_10:
	mov eax, cls
	mov edi, [eax+0x2dc6b4]
	test edi, edi
	jz _Z16CL_ParseDownloadiP5msg_t_130
	mov [esp], ebx
	call _Z14MSG_ReadStringP5msg_t
	mov [esp], ebx
	call _Z12MSG_ReadLongP5msg_t
	mov [esp], ebx
	call _Z12MSG_ReadLongP5msg_t
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z16CL_ParseDownloadiP5msg_t_50:
	mov dword [esp+0x4], _cstring_cl_parsedownload1
	mov dword [esp], 0xe
	call _Z11Com_DPrintfiPKcz
	mov eax, [ebx+0x2dc29c]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_retransdl_d
	call _Z2vaPKcz
	mov [ebp+0xc], eax
	mov eax, [ebp-0x1c]
	mov [ebp+0x8], eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z21CL_AddReliableCommandiPKc
_Z16CL_ParseDownloadiP5msg_t_130:
	mov [ebp+0xc], ebx
	mov eax, [ebp-0x1c]
	mov [ebp+0x8], eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z19CL_ParseWWWDownloadiP5msg_t
_Z16CL_ParseDownloadiP5msg_t_100:
	mov eax, [ebx+0x2dc094]
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	mov dword [esp], _ZZ16CL_ParseDownloadiP5msg_tE17parseDownloadData
	call _Z8FS_WritePKvii
	mov ebx, cls
	jmp _Z16CL_ParseDownloadiP5msg_t_140
_Z16CL_ParseDownloadiP5msg_t_90:
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_could_not_create
	mov dword [esp], 0xe
	call _Z10Com_PrintfiPKcz
	mov dword [esp+0x4], _cstring_stopdl
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call _Z21CL_AddReliableCommandiPKc
	jmp _Z16CL_ParseDownloadiP5msg_t_150
_Z16CL_ParseDownloadiP5msg_t_120:
	mov [esp], eax
	call _Z13FS_FCloseFilei
	mov dword [ebx+0x2dc094], 0x0
	lea eax, [ebx+0x2dc198]
	mov [esp+0x4], eax
	lea eax, [ebx+0x2dc098]
	mov [esp], eax
	call _Z12FS_SV_RenamePKcS0_
	jmp _Z16CL_ParseDownloadiP5msg_t_160
	nop


;CL_ParseSnapshot(int, msg_t*)
_Z16CL_ParseSnapshotiP5msg_t:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xec
	mov dword [esp+0x8], 0x2f94
	mov dword [esp+0x4], 0x0
	mov dword [esp], _ZZ16CL_ParseSnapshotiP5msg_tE7newSnap
	call memset
	mov ebx, clientConnections
	mov eax, [ebx+0x20138]
	mov [_ZZ16CL_ParseSnapshotiP5msg_tE7newSnap+0x2f90], eax
	mov eax, [ebp+0xc]
	mov [esp], eax
	call _Z12MSG_ReadLongP5msg_t
	mov [_ZZ16CL_ParseSnapshotiP5msg_tE7newSnap+0x8], eax
	mov eax, [ebx+0x20134]
	mov [_ZZ16CL_ParseSnapshotiP5msg_tE7newSnap+0xc], eax
	mov edx, [ebp+0xc]
	mov [esp], edx
	call _Z12MSG_ReadByteP5msg_t
	mov edx, eax
	test eax, eax
	jnz _Z16CL_ParseSnapshotiP5msg_t_10
	mov dword [_ZZ16CL_ParseSnapshotiP5msg_tE7newSnap+0x10], 0xffffffff
	mov ecx, [ebp+0xc]
	mov [esp], ecx
	call _Z12MSG_ReadByteP5msg_t
	mov [_ZZ16CL_ParseSnapshotiP5msg_tE7newSnap+0x4], eax
	mov ecx, [_ZZ16CL_ParseSnapshotiP5msg_tE7newSnap+0x10]
	test ecx, ecx
	jle _Z16CL_ParseSnapshotiP5msg_t_20
_Z16CL_ParseSnapshotiP5msg_t_50:
	mov edx, ecx
	and edx, 0x1f
	lea eax, [edx+edx*2]
	shl eax, 0x5
	sub eax, edx
	lea eax, [edx+eax*8]
	lea eax, [edx+eax*4]
	mov edx, clients
	lea eax, [edx+eax*4+0x69850]
	mov [ebp-0xbc], eax
	mov edi, [eax]
	test edi, edi
	jz _Z16CL_ParseSnapshotiP5msg_t_30
	cmp ecx, [eax+0xc]
	jz _Z16CL_ParseSnapshotiP5msg_t_40
	mov dword [esp+0x4], _cstring_delta_frame_too_
	mov dword [esp], 0xe
	call _Z11Com_DPrintfiPKcz
	mov edx, [ebp+0xc]
	mov [esp], edx
	call _Z11MSG_DiscardP5msg_t
_Z16CL_ParseSnapshotiP5msg_t_410:
	add esp, 0xec
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z16CL_ParseSnapshotiP5msg_t_10:
	mov eax, [_ZZ16CL_ParseSnapshotiP5msg_tE7newSnap+0xc]
	sub eax, edx
	mov [_ZZ16CL_ParseSnapshotiP5msg_tE7newSnap+0x10], eax
	mov ecx, [ebp+0xc]
	mov [esp], ecx
	call _Z12MSG_ReadByteP5msg_t
	mov [_ZZ16CL_ParseSnapshotiP5msg_tE7newSnap+0x4], eax
	mov ecx, [_ZZ16CL_ParseSnapshotiP5msg_tE7newSnap+0x10]
	test ecx, ecx
	jg _Z16CL_ParseSnapshotiP5msg_t_50
_Z16CL_ParseSnapshotiP5msg_t_20:
	mov dword [_ZZ16CL_ParseSnapshotiP5msg_tE7newSnap], 0x1
	mov eax, clientConnections
	mov dword [eax+0x40198], 0x0
	mov dword [ebp-0xbc], 0x0
_Z16CL_ParseSnapshotiP5msg_t_500:
	mov eax, cl_shownet
	mov eax, [eax]
	cmp dword [eax+0xc], 0x1
	jle _Z16CL_ParseSnapshotiP5msg_t_60
	mov dword [esp+0xc], _cstring_playerstate
	mov edx, [ebp+0xc]
	mov eax, [edx+0x1c]
	sub eax, 0x1
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_3is
	mov dword [esp], 0xe
	call _Z10Com_PrintfiPKcz
_Z16CL_ParseSnapshotiP5msg_t_60:
	mov esi, [ebp-0xbc]
	test esi, esi
	jz _Z16CL_ParseSnapshotiP5msg_t_70
	mov dword [esp+0x14], 0x1
	mov dword [esp+0x10], _ZZ16CL_ParseSnapshotiP5msg_tE7newSnap+0x1c
	mov eax, [ebp-0xbc]
	add eax, 0x1c
	mov [esp+0xc], eax
	mov eax, [_ZZ16CL_ParseSnapshotiP5msg_tE7newSnap+0x8]
	mov [esp+0x8], eax
	mov ecx, [ebp+0xc]
	mov [esp+0x4], ecx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h
_Z16CL_ParseSnapshotiP5msg_t_740:
	mov eax, [ebp+0xc]
	mov [esp], eax
	call _Z29MSG_ClearLastReferencedEntityP5msg_t
	mov eax, cl_shownet
	mov eax, [eax]
	cmp dword [eax+0xc], 0x1
	jle _Z16CL_ParseSnapshotiP5msg_t_80
	mov dword [esp+0xc], _cstring_packet_entities
	mov edx, [ebp+0xc]
	mov eax, [edx+0x1c]
	sub eax, 0x1
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_3is
	mov dword [esp], 0xe
	call _Z10Com_PrintfiPKcz
_Z16CL_ParseSnapshotiP5msg_t_80:
	mov ecx, [_ZZ16CL_ParseSnapshotiP5msg_tE7newSnap+0x8]
	mov [ebp-0x98], ecx
	mov ecx, clients
	mov eax, [ecx+0x25628]
	mov [_ZZ16CL_ParseSnapshotiP5msg_tE7newSnap+0x2f88], eax
	mov dword [_ZZ16CL_ParseSnapshotiP5msg_tE7newSnap+0x2f80], 0x0
	mov ebx, [ebp-0xbc]
	test ebx, ebx
	jz _Z16CL_ParseSnapshotiP5msg_t_90
	mov eax, [ebp-0xbc]
	mov edx, [eax+0x2f80]
	test edx, edx
	jle _Z16CL_ParseSnapshotiP5msg_t_90
	mov edx, [eax+0x2f88]
	and edx, 0x7ff
	mov eax, edx
	shl eax, 0x4
	sub eax, edx
	lea eax, [edx+eax*4]
	lea eax, [ecx+eax*4+0x105ad0]
	mov [ebp-0xa0], eax
	mov edi, [eax]
_Z16CL_ParseSnapshotiP5msg_t_700:
	mov dword [ebp-0x9c], 0x0
_Z16CL_ParseSnapshotiP5msg_t_190:
	mov edx, [ebp+0xc]
	mov eax, [edx]
	test eax, eax
	jnz _Z16CL_ParseSnapshotiP5msg_t_100
_Z16CL_ParseSnapshotiP5msg_t_200:
	mov dword [esp+0x4], 0xa
	mov [esp], edx
	call _Z19MSG_ReadEntityIndexP5msg_ti
	mov ebx, eax
	cmp eax, 0x3ff
	jz _Z16CL_ParseSnapshotiP5msg_t_100
	mov edx, [ebp+0xc]
	mov eax, [edx+0x1c]
	cmp eax, [edx+0x14]
	jg _Z16CL_ParseSnapshotiP5msg_t_110
_Z16CL_ParseSnapshotiP5msg_t_510:
	cmp ebx, edi
	jle _Z16CL_ParseSnapshotiP5msg_t_120
	mov ecx, [ebp+0xc]
	mov eax, [ecx]
	test eax, eax
	jnz _Z16CL_ParseSnapshotiP5msg_t_120
	mov esi, clients
	jmp _Z16CL_ParseSnapshotiP5msg_t_130
_Z16CL_ParseSnapshotiP5msg_t_150:
	mov edi, 0x1869f
	cmp edi, ebx
	jge _Z16CL_ParseSnapshotiP5msg_t_120
_Z16CL_ParseSnapshotiP5msg_t_160:
	mov eax, [ebp+0xc]
	mov eax, [eax]
	test eax, eax
	jnz _Z16CL_ParseSnapshotiP5msg_t_120
_Z16CL_ParseSnapshotiP5msg_t_130:
	mov eax, cl_shownet
	mov eax, [eax]
	cmp dword [eax+0xc], 0x3
	jz _Z16CL_ParseSnapshotiP5msg_t_140
_Z16CL_ParseSnapshotiP5msg_t_550:
	mov edx, [esi+0x25628]
	and edx, 0x7ff
	mov eax, edx
	shl eax, 0x4
	sub eax, edx
	lea eax, [edx+eax*4]
	lea eax, [esi+eax*4+0x105ad0]
	mov dword [esp+0x8], 0xf4
	mov ecx, [ebp-0xa0]
	mov [esp+0x4], ecx
	mov [esp], eax
	call memcpy
	add dword [esi+0x25628], 0x1
	add dword [_ZZ16CL_ParseSnapshotiP5msg_tE7newSnap+0x2f80], 0x1
	add dword [ebp-0x9c], 0x1
	mov edx, [ebp-0x9c]
	mov eax, [ebp-0xbc]
	cmp edx, [eax+0x2f80]
	jge _Z16CL_ParseSnapshotiP5msg_t_150
	add edx, [eax+0x2f88]
	and edx, 0x7ff
	mov eax, edx
	shl eax, 0x4
	sub eax, edx
	lea eax, [edx+eax*4]
	lea eax, [esi+eax*4+0x105ad0]
	mov [ebp-0xa0], eax
	mov edi, [eax]
	cmp edi, ebx
	jl _Z16CL_ParseSnapshotiP5msg_t_160
_Z16CL_ParseSnapshotiP5msg_t_120:
	cmp edi, ebx
	jz _Z16CL_ParseSnapshotiP5msg_t_170
	mov eax, cl_shownet
	mov eax, [eax]
	cmp dword [eax+0xc], 0x3
	jz _Z16CL_ParseSnapshotiP5msg_t_180
_Z16CL_ParseSnapshotiP5msg_t_670:
	mov [esp+0x10], ebx
	mov esi, clients
	mov edx, [esi+0x25628]
	and edx, 0x7ff
	mov eax, edx
	shl eax, 0x4
	sub eax, edx
	lea eax, [edx+eax*4]
	lea eax, [esi+eax*4+0x105ad0]
	mov [esp+0xc], eax
	mov eax, ebx
	shl eax, 0x4
	sub eax, ebx
	lea eax, [ebx+eax*4]
	lea eax, [esi+eax*4+0xc8ad0]
	mov [esp+0x8], eax
	mov ecx, [ebp-0x98]
	mov [esp+0x4], ecx
	mov eax, [ebp+0xc]
	mov [esp], eax
	call _Z19MSG_ReadDeltaEntityP5msg_tiPK13entityState_sPS1_i
	test eax, eax
	jnz _Z16CL_ParseSnapshotiP5msg_t_190
	add dword [esi+0x25628], 0x1
	add dword [_ZZ16CL_ParseSnapshotiP5msg_tE7newSnap+0x2f80], 0x1
	mov edx, [ebp+0xc]
	mov eax, [edx]
	test eax, eax
	jz _Z16CL_ParseSnapshotiP5msg_t_200
_Z16CL_ParseSnapshotiP5msg_t_100:
	cmp edi, 0x1869f
	jz _Z16CL_ParseSnapshotiP5msg_t_210
	mov ecx, [ebp+0xc]
	mov eax, [ecx]
	test eax, eax
	jz _Z16CL_ParseSnapshotiP5msg_t_220
_Z16CL_ParseSnapshotiP5msg_t_210:
	mov eax, cl_shownuments
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z16CL_ParseSnapshotiP5msg_t_230
	mov eax, msg_dumpEnts
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z16CL_ParseSnapshotiP5msg_t_230
_Z16CL_ParseSnapshotiP5msg_t_600:
	mov edx, [ebp+0xc]
	mov [esp], edx
	call _Z29MSG_ClearLastReferencedEntityP5msg_t
	mov eax, cl_shownet
	mov eax, [eax]
	cmp dword [eax+0xc], 0x1
	jle _Z16CL_ParseSnapshotiP5msg_t_240
	mov dword [esp+0xc], _cstring_packet_clients
	mov ecx, [ebp+0xc]
	mov eax, [ecx+0x1c]
	sub eax, 0x1
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_3is
	mov dword [esp], 0xe
	call _Z10Com_PrintfiPKcz
_Z16CL_ParseSnapshotiP5msg_t_240:
	mov eax, [_ZZ16CL_ParseSnapshotiP5msg_tE7newSnap+0x8]
	mov [ebp-0x8c], eax
	mov edx, clients
	mov eax, [edx+0x2562c]
	mov [_ZZ16CL_ParseSnapshotiP5msg_tE7newSnap+0x2f8c], eax
	mov dword [_ZZ16CL_ParseSnapshotiP5msg_tE7newSnap+0x2f84], 0x0
	mov esi, [ebp-0xbc]
	test esi, esi
	jz _Z16CL_ParseSnapshotiP5msg_t_250
	mov ecx, [ebp-0xbc]
	mov ebx, [ecx+0x2f84]
	test ebx, ebx
	jle _Z16CL_ParseSnapshotiP5msg_t_250
	mov eax, [ecx+0x2f8c]
	and eax, 0x7ff
	lea eax, [eax+eax*4]
	lea eax, [eax+eax*4]
	lea eax, [edx+eax*4+0x17fad0]
	mov [ebp-0x90], eax
	mov edi, [eax]
_Z16CL_ParseSnapshotiP5msg_t_710:
	mov dword [ebp-0x94], 0x0
_Z16CL_ParseSnapshotiP5msg_t_340:
	mov edx, [ebp+0xc]
	mov eax, [edx]
	test eax, eax
	jnz _Z16CL_ParseSnapshotiP5msg_t_260
_Z16CL_ParseSnapshotiP5msg_t_350:
	mov [esp], edx
	call _Z11MSG_ReadBitP5msg_t
	test eax, eax
	jz _Z16CL_ParseSnapshotiP5msg_t_260
	mov dword [esp+0x4], 0x6
	mov ecx, [ebp+0xc]
	mov [esp], ecx
	call _Z19MSG_ReadEntityIndexP5msg_ti
	mov esi, eax
	mov edx, [ebp+0xc]
	mov eax, [edx+0x1c]
	cmp eax, [edx+0x14]
	jg _Z16CL_ParseSnapshotiP5msg_t_270
_Z16CL_ParseSnapshotiP5msg_t_620:
	cmp esi, edi
	jle _Z16CL_ParseSnapshotiP5msg_t_280
	mov ebx, clients
	jmp _Z16CL_ParseSnapshotiP5msg_t_290
_Z16CL_ParseSnapshotiP5msg_t_310:
	mov edi, 0x1869f
	cmp esi, edi
	jle _Z16CL_ParseSnapshotiP5msg_t_280
_Z16CL_ParseSnapshotiP5msg_t_290:
	mov eax, cl_shownet
	mov eax, [eax]
	cmp dword [eax+0xc], 0x3
	jz _Z16CL_ParseSnapshotiP5msg_t_300
_Z16CL_ParseSnapshotiP5msg_t_610:
	mov eax, [ebx+0x2562c]
	and eax, 0x7ff
	lea eax, [eax+eax*4]
	lea eax, [eax+eax*4]
	lea eax, [ebx+eax*4+0x17fad0]
	mov dword [esp+0x8], 0x64
	mov edx, [ebp-0x90]
	mov [esp+0x4], edx
	mov [esp], eax
	call memcpy
	add dword [ebx+0x2562c], 0x1
	add dword [_ZZ16CL_ParseSnapshotiP5msg_tE7newSnap+0x2f84], 0x1
	add dword [ebp-0x94], 0x1
	mov eax, [ebp-0x94]
	mov ecx, [ebp-0xbc]
	cmp eax, [ecx+0x2f84]
	jge _Z16CL_ParseSnapshotiP5msg_t_310
	add eax, [ecx+0x2f8c]
	and eax, 0x7ff
	lea eax, [eax+eax*4]
	lea eax, [eax+eax*4]
	lea eax, [ebx+eax*4+0x17fad0]
	mov [ebp-0x90], eax
	mov edi, [eax]
	cmp esi, edi
	jg _Z16CL_ParseSnapshotiP5msg_t_290
_Z16CL_ParseSnapshotiP5msg_t_280:
	cmp esi, edi
	jz _Z16CL_ParseSnapshotiP5msg_t_320
	mov eax, cl_shownet
	mov eax, [eax]
	cmp dword [eax+0xc], 0x3
	jz _Z16CL_ParseSnapshotiP5msg_t_330
_Z16CL_ParseSnapshotiP5msg_t_660:
	lea ebx, [ebp-0x7c]
	mov dword [esp+0x8], 0x64
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call memset
	mov [esp+0x10], esi
	mov esi, clients
	mov eax, [esi+0x2562c]
	and eax, 0x7ff
	lea eax, [eax+eax*4]
	lea eax, [eax+eax*4]
	lea eax, [esi+eax*4+0x17fad0]
	mov [esp+0xc], eax
	mov [esp+0x8], ebx
	mov ecx, [ebp-0x8c]
	mov [esp+0x4], ecx
	mov eax, [ebp+0xc]
	mov [esp], eax
	call _Z19MSG_ReadDeltaClientP5msg_tiPK13clientState_sPS1_i
	test eax, eax
	jnz _Z16CL_ParseSnapshotiP5msg_t_340
	add dword [esi+0x2562c], 0x1
	add dword [_ZZ16CL_ParseSnapshotiP5msg_tE7newSnap+0x2f84], 0x1
	mov edx, [ebp+0xc]
	mov eax, [edx]
	test eax, eax
	jz _Z16CL_ParseSnapshotiP5msg_t_350
_Z16CL_ParseSnapshotiP5msg_t_260:
	cmp edi, 0x1869f
	jz _Z16CL_ParseSnapshotiP5msg_t_360
	mov edx, [ebp+0xc]
	mov eax, [edx]
	test eax, eax
	jnz _Z16CL_ParseSnapshotiP5msg_t_360
	mov eax, cl_shownet
	mov eax, [eax]
	cmp dword [eax+0xc], 0x3
	jz _Z16CL_ParseSnapshotiP5msg_t_370
_Z16CL_ParseSnapshotiP5msg_t_750:
	mov ebx, clients
	mov eax, [ebx+0x2562c]
	and eax, 0x7ff
	lea eax, [eax+eax*4]
	lea eax, [eax+eax*4]
	lea eax, [ebx+eax*4+0x17fad0]
	mov dword [esp+0x8], 0x64
	mov edx, [ebp-0x90]
	mov [esp+0x4], edx
	mov [esp], eax
	call memcpy
	add dword [ebx+0x2562c], 0x1
	add dword [_ZZ16CL_ParseSnapshotiP5msg_tE7newSnap+0x2f84], 0x1
	add dword [ebp-0x94], 0x1
	mov eax, [ebp-0x94]
	mov ecx, [ebp-0xbc]
	cmp eax, [ecx+0x2f84]
	jl _Z16CL_ParseSnapshotiP5msg_t_380
_Z16CL_ParseSnapshotiP5msg_t_360:
	mov eax, cl_shownuments
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z16CL_ParseSnapshotiP5msg_t_390
_Z16CL_ParseSnapshotiP5msg_t_730:
	mov ecx, [ebp+0xc]
	mov eax, [ecx]
	test eax, eax
	jnz _Z16CL_ParseSnapshotiP5msg_t_400
	mov eax, [_ZZ16CL_ParseSnapshotiP5msg_tE7newSnap]
	test eax, eax
	jz _Z16CL_ParseSnapshotiP5msg_t_410
	mov edi, clients
	mov ecx, [edi+0x14]
	add ecx, 0x1
	mov ebx, [_ZZ16CL_ParseSnapshotiP5msg_tE7newSnap+0xc]
	mov eax, ebx
	sub eax, ecx
	lea edx, [ebx-0x1f]
	cmp eax, 0x20
	cmovge ecx, edx
	cmp ebx, ecx
	jle _Z16CL_ParseSnapshotiP5msg_t_420
_Z16CL_ParseSnapshotiP5msg_t_430:
	mov edx, ecx
	and edx, 0x1f
	lea eax, [edx+edx*2]
	shl eax, 0x5
	sub eax, edx
	lea eax, [edx+eax*8]
	lea eax, [edx+eax*4]
	mov dword [edi+eax*4+0x69850], 0x0
	add ecx, 0x1
	cmp ecx, ebx
	jl _Z16CL_ParseSnapshotiP5msg_t_430
_Z16CL_ParseSnapshotiP5msg_t_420:
	mov eax, [edi+0x10]
	mov [edi+0x2fb0], eax
	lea eax, [edi+0x8]
	mov dword [esp+0x8], 0x2f94
	mov dword [esp+0x4], _ZZ16CL_ParseSnapshotiP5msg_tE7newSnap
	mov [esp], eax
	call memcpy
	mov dword [edi+0x1c], 0x3e7
	mov eax, clientConnections
	mov esi, [eax+0x401b8]
	mov ebx, [edi+0x24]
	mov ecx, 0x1
	mov edi, clients
	jmp _Z16CL_ParseSnapshotiP5msg_t_440
_Z16CL_ParseSnapshotiP5msg_t_460:
	add ecx, 0x1
	cmp ecx, 0x21
	jz _Z16CL_ParseSnapshotiP5msg_t_450
_Z16CL_ParseSnapshotiP5msg_t_440:
	mov eax, esi
	sub eax, ecx
	and eax, 0x1f
	lea eax, [eax+eax*2]
	lea edx, [edi+eax*4]
	cmp ebx, [edx+0x696d4]
	jl _Z16CL_ParseSnapshotiP5msg_t_460
	mov eax, cls
	mov eax, [eax+0x118]
	sub eax, [edx+0x696d8]
	mov [edi+0x1c], eax
_Z16CL_ParseSnapshotiP5msg_t_450:
	mov edx, [edi+0x14]
	and edx, 0x1f
	lea eax, [edx+edx*2]
	shl eax, 0x5
	sub eax, edx
	lea eax, [edx+eax*8]
	lea eax, [edx+eax*4]
	lea eax, [edi+eax*4+0x69850]
	lea edx, [edi+0x8]
	mov dword [esp+0x8], 0x2f94
	mov [esp+0x4], edx
	mov [esp], eax
	call memcpy
	mov eax, cl_shownet
	mov eax, [eax]
	cmp dword [eax+0xc], 0x3
	jz _Z16CL_ParseSnapshotiP5msg_t_470
_Z16CL_ParseSnapshotiP5msg_t_760:
	mov dword [edi+0x2fb8], 0x1
	add esp, 0xec
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z16CL_ParseSnapshotiP5msg_t_40:
	mov ecx, eax
	mov eax, [edx+0x25628]
	sub eax, [ecx+0x2f88]
	cmp eax, 0x780
	jg _Z16CL_ParseSnapshotiP5msg_t_480
	mov eax, [edx+0x2562c]
	mov edx, [ebp-0xbc]
	sub eax, [edx+0x2f8c]
	cmp eax, 0x780
	jg _Z16CL_ParseSnapshotiP5msg_t_490
	mov dword [_ZZ16CL_ParseSnapshotiP5msg_tE7newSnap], 0x1
	jmp _Z16CL_ParseSnapshotiP5msg_t_500
_Z16CL_ParseSnapshotiP5msg_t_30:
	mov dword [esp+0x4], _cstring_delta_from_inval
	mov dword [esp], 0xe
	call _Z14Com_PrintErroriPKcz
	mov eax, [ebp+0xc]
	mov [esp], eax
	call _Z11MSG_DiscardP5msg_t
	add esp, 0xec
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z16CL_ParseSnapshotiP5msg_t_110:
	mov dword [esp+0x4], _cstring_cl_parsepacketen
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z16CL_ParseSnapshotiP5msg_t_510
_Z16CL_ParseSnapshotiP5msg_t_170:
	mov eax, cl_shownet
	mov eax, [eax]
	cmp dword [eax+0xc], 0x3
	jz _Z16CL_ParseSnapshotiP5msg_t_520
_Z16CL_ParseSnapshotiP5msg_t_680:
	mov [esp+0x10], edi
	mov ebx, clients
	mov eax, [ebx+0x25628]
	and eax, 0x7ff
	mov edx, eax
	shl edx, 0x4
	sub edx, eax
	lea edx, [eax+edx*4]
	lea edx, [ebx+edx*4+0x105ad0]
	mov [esp+0xc], edx
	mov ecx, [ebp-0xa0]
	mov [esp+0x8], ecx
	mov eax, [ebp-0x98]
	mov [esp+0x4], eax
	mov edx, [ebp+0xc]
	mov [esp], edx
	call _Z19MSG_ReadDeltaEntityP5msg_tiPK13entityState_sPS1_i
	test eax, eax
	jnz _Z16CL_ParseSnapshotiP5msg_t_530
	add dword [ebx+0x25628], 0x1
	add dword [_ZZ16CL_ParseSnapshotiP5msg_tE7newSnap+0x2f80], 0x1
_Z16CL_ParseSnapshotiP5msg_t_530:
	add dword [ebp-0x9c], 0x1
	mov eax, [ebp-0x9c]
	mov ecx, [ebp-0xbc]
	cmp eax, [ecx+0x2f80]
	jl _Z16CL_ParseSnapshotiP5msg_t_540
	mov edi, 0x1869f
	jmp _Z16CL_ParseSnapshotiP5msg_t_190
_Z16CL_ParseSnapshotiP5msg_t_140:
	mov [esp+0xc], edi
	mov edx, [ebp+0xc]
	mov eax, [edx+0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_3i__unchanged_i
	mov dword [esp], 0xe
	call _Z10Com_PrintfiPKcz
	jmp _Z16CL_ParseSnapshotiP5msg_t_550
_Z16CL_ParseSnapshotiP5msg_t_540:
	mov edx, eax
	add edx, [ecx+0x2f88]
	and edx, 0x7ff
	mov eax, edx
	shl eax, 0x4
	sub eax, edx
	lea eax, [edx+eax*4]
	lea eax, [ebx+eax*4+0x105ad0]
	mov [ebp-0xa0], eax
	mov edi, [eax]
	jmp _Z16CL_ParseSnapshotiP5msg_t_190
_Z16CL_ParseSnapshotiP5msg_t_580:
	mov edi, 0x1869f
	mov eax, msg_dumpEnts
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z16CL_ParseSnapshotiP5msg_t_560
_Z16CL_ParseSnapshotiP5msg_t_590:
	cmp edi, 0x1869f
	jz _Z16CL_ParseSnapshotiP5msg_t_210
	mov eax, [ebp+0xc]
	mov eax, [eax]
	test eax, eax
	jnz _Z16CL_ParseSnapshotiP5msg_t_210
_Z16CL_ParseSnapshotiP5msg_t_220:
	mov eax, cl_shownet
	mov eax, [eax]
	cmp dword [eax+0xc], 0x3
	jz _Z16CL_ParseSnapshotiP5msg_t_570
_Z16CL_ParseSnapshotiP5msg_t_720:
	mov ebx, clients
	mov edx, [ebx+0x25628]
	and edx, 0x7ff
	mov eax, edx
	shl eax, 0x4
	sub eax, edx
	lea eax, [edx+eax*4]
	lea eax, [ebx+eax*4+0x105ad0]
	mov dword [esp+0x8], 0xf4
	mov edx, [ebp-0xa0]
	mov [esp+0x4], edx
	mov [esp], eax
	call memcpy
	add dword [ebx+0x25628], 0x1
	add dword [_ZZ16CL_ParseSnapshotiP5msg_tE7newSnap+0x2f80], 0x1
	add dword [ebp-0x9c], 0x1
	mov eax, [ebp-0x9c]
	mov ecx, [ebp-0xbc]
	cmp eax, [ecx+0x2f80]
	jge _Z16CL_ParseSnapshotiP5msg_t_580
	mov edx, eax
	add edx, [ecx+0x2f88]
	and edx, 0x7ff
	mov eax, edx
	shl eax, 0x4
	sub eax, edx
	lea eax, [edx+eax*4]
	lea eax, [ebx+eax*4+0x105ad0]
	mov [ebp-0xa0], eax
	mov edi, [eax]
	mov eax, msg_dumpEnts
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z16CL_ParseSnapshotiP5msg_t_590
_Z16CL_ParseSnapshotiP5msg_t_560:
	mov eax, [ebp-0xa0]
	cvtss2sd xmm0, [eax+0x20]
	movsd [ebp-0xb8], xmm0
	cvtss2sd xmm0, [eax+0x1c]
	movsd [ebp-0xb0], xmm0
	cvtss2sd xmm0, [eax+0x18]
	movsd [ebp-0xa8], xmm0
	mov eax, [eax+0x4]
	mov [esp], eax
	call _Z20BG_GetEntityTypeNamei
	movsd xmm0, qword [ebp-0xb8]
	movsd [esp+0x20], xmm0
	movsd xmm0, qword [ebp-0xb0]
	movsd [esp+0x18], xmm0
	movsd xmm0, qword [ebp-0xa8]
	movsd [esp+0x10], xmm0
	mov [esp+0xc], eax
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_3i_unchanged_ent
	mov dword [esp], 0xe
	call _Z10Com_PrintfiPKcz
	jmp _Z16CL_ParseSnapshotiP5msg_t_590
_Z16CL_ParseSnapshotiP5msg_t_230:
	mov eax, [_ZZ16CL_ParseSnapshotiP5msg_tE7newSnap+0x2f80]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_entities_in_pack
	mov dword [esp], 0xe
	call _Z10Com_PrintfiPKcz
	jmp _Z16CL_ParseSnapshotiP5msg_t_600
_Z16CL_ParseSnapshotiP5msg_t_300:
	mov [esp+0xc], edi
	mov ecx, [ebp+0xc]
	mov eax, [ecx+0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_3i__unchanged_i
	mov dword [esp], 0xe
	call _Z10Com_PrintfiPKcz
	jmp _Z16CL_ParseSnapshotiP5msg_t_610
_Z16CL_ParseSnapshotiP5msg_t_270:
	mov dword [esp+0x4], _cstring_cl_parsepacketcl
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z16CL_ParseSnapshotiP5msg_t_620
_Z16CL_ParseSnapshotiP5msg_t_320:
	mov eax, cl_shownet
	mov eax, [eax]
	cmp dword [eax+0xc], 0x3
	jz _Z16CL_ParseSnapshotiP5msg_t_630
_Z16CL_ParseSnapshotiP5msg_t_690:
	mov [esp+0x10], edi
	mov ebx, clients
	mov eax, [ebx+0x2562c]
	and eax, 0x7ff
	lea eax, [eax+eax*4]
	lea eax, [eax+eax*4]
	lea eax, [ebx+eax*4+0x17fad0]
	mov [esp+0xc], eax
	mov eax, [ebp-0x90]
	mov [esp+0x8], eax
	mov edx, [ebp-0x8c]
	mov [esp+0x4], edx
	mov ecx, [ebp+0xc]
	mov [esp], ecx
	call _Z19MSG_ReadDeltaClientP5msg_tiPK13clientState_sPS1_i
	test eax, eax
	jnz _Z16CL_ParseSnapshotiP5msg_t_640
	add dword [ebx+0x2562c], 0x1
	add dword [_ZZ16CL_ParseSnapshotiP5msg_tE7newSnap+0x2f84], 0x1
_Z16CL_ParseSnapshotiP5msg_t_640:
	add dword [ebp-0x94], 0x1
	mov edx, [ebp-0x94]
	mov eax, [ebp-0xbc]
	cmp edx, [eax+0x2f84]
	jl _Z16CL_ParseSnapshotiP5msg_t_650
	mov edi, 0x1869f
	jmp _Z16CL_ParseSnapshotiP5msg_t_340
_Z16CL_ParseSnapshotiP5msg_t_650:
	mov eax, edx
	mov ecx, [ebp-0xbc]
	add eax, [ecx+0x2f8c]
	and eax, 0x7ff
	lea eax, [eax+eax*4]
	lea eax, [eax+eax*4]
	lea eax, [ebx+eax*4+0x17fad0]
	mov [ebp-0x90], eax
	mov edi, [eax]
	jmp _Z16CL_ParseSnapshotiP5msg_t_340
_Z16CL_ParseSnapshotiP5msg_t_330:
	mov [esp+0xc], esi
	mov edx, [ebp+0xc]
	mov eax, [edx+0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_3i__baseline_i
	mov dword [esp], 0xe
	call _Z10Com_PrintfiPKcz
	jmp _Z16CL_ParseSnapshotiP5msg_t_660
_Z16CL_ParseSnapshotiP5msg_t_180:
	mov [esp+0xc], ebx
	mov edx, [ebp+0xc]
	mov eax, [edx+0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_3i__baseline_i
	mov dword [esp], 0xe
	call _Z10Com_PrintfiPKcz
	jmp _Z16CL_ParseSnapshotiP5msg_t_670
_Z16CL_ParseSnapshotiP5msg_t_400:
	mov dword [_ZZ16CL_ParseSnapshotiP5msg_tE7newSnap], 0x0
	add esp, 0xec
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z16CL_ParseSnapshotiP5msg_t_380:
	add eax, [ecx+0x2f8c]
	and eax, 0x7ff
	lea eax, [eax+eax*4]
	lea eax, [eax+eax*4]
	lea eax, [ebx+eax*4+0x17fad0]
	mov [ebp-0x90], eax
	mov edi, [eax]
	jmp _Z16CL_ParseSnapshotiP5msg_t_260
_Z16CL_ParseSnapshotiP5msg_t_480:
	mov dword [esp+0x4], _cstring_delta_parseentit
	mov dword [esp], 0xe
	call _Z11Com_DPrintfiPKcz
	mov eax, [ebp+0xc]
	mov [esp], eax
	call _Z11MSG_DiscardP5msg_t
	jmp _Z16CL_ParseSnapshotiP5msg_t_410
_Z16CL_ParseSnapshotiP5msg_t_520:
	mov [esp+0xc], edi
	mov edx, [ebp+0xc]
	mov eax, [edx+0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_3i__delta_i
	mov dword [esp], 0xe
	call _Z10Com_PrintfiPKcz
	jmp _Z16CL_ParseSnapshotiP5msg_t_680
_Z16CL_ParseSnapshotiP5msg_t_630:
	mov [esp+0xc], edi
	mov ecx, [ebp+0xc]
	mov eax, [ecx+0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_3i__delta_i
	mov dword [esp], 0xe
	call _Z10Com_PrintfiPKcz
	jmp _Z16CL_ParseSnapshotiP5msg_t_690
_Z16CL_ParseSnapshotiP5msg_t_90:
	mov dword [ebp-0xa0], 0x0
	mov edi, 0x1869f
	jmp _Z16CL_ParseSnapshotiP5msg_t_700
_Z16CL_ParseSnapshotiP5msg_t_250:
	mov dword [ebp-0x90], 0x0
	mov edi, 0x1869f
	jmp _Z16CL_ParseSnapshotiP5msg_t_710
_Z16CL_ParseSnapshotiP5msg_t_570:
	mov [esp+0xc], edi
	mov ecx, [ebp+0xc]
	mov eax, [ecx+0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_3i__unchanged_i
	mov dword [esp], 0xe
	call _Z10Com_PrintfiPKcz
	jmp _Z16CL_ParseSnapshotiP5msg_t_720
_Z16CL_ParseSnapshotiP5msg_t_390:
	mov eax, [_ZZ16CL_ParseSnapshotiP5msg_tE7newSnap+0x2f84]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_clients_in_packe
	mov dword [esp], 0xe
	call _Z10Com_PrintfiPKcz
	jmp _Z16CL_ParseSnapshotiP5msg_t_730
_Z16CL_ParseSnapshotiP5msg_t_70:
	mov dword [esp+0x14], 0x1
	mov dword [esp+0x10], _ZZ16CL_ParseSnapshotiP5msg_tE7newSnap+0x1c
	mov dword [esp+0xc], 0x0
	mov eax, [_ZZ16CL_ParseSnapshotiP5msg_tE7newSnap+0x8]
	mov [esp+0x8], eax
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h
	jmp _Z16CL_ParseSnapshotiP5msg_t_740
_Z16CL_ParseSnapshotiP5msg_t_490:
	mov dword [esp+0x4], _cstring_delta_parseclien
	mov dword [esp], 0xe
	call _Z11Com_DPrintfiPKcz
	mov ecx, [ebp+0xc]
	mov [esp], ecx
	call _Z11MSG_DiscardP5msg_t
	jmp _Z16CL_ParseSnapshotiP5msg_t_410
_Z16CL_ParseSnapshotiP5msg_t_370:
	mov [esp+0xc], edi
	mov ecx, [ebp+0xc]
	mov eax, [ecx+0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_3i__unchanged_i
	mov dword [esp], 0xe
	call _Z10Com_PrintfiPKcz
	jmp _Z16CL_ParseSnapshotiP5msg_t_750
_Z16CL_ParseSnapshotiP5msg_t_470:
	mov eax, [edi+0x1c]
	mov [esp+0x10], eax
	mov eax, [edi+0x18]
	mov [esp+0xc], eax
	mov eax, [edi+0x14]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring____snapshoti__de
	mov dword [esp], 0xe
	call _Z10Com_PrintfiPKcz
	jmp _Z16CL_ParseSnapshotiP5msg_t_760
	nop


;CL_ParseMapCenter(int)
_Z17CL_ParseMapCenteri:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	mov dword [esp+0x4], 0xc
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z18CL_GetConfigStringii
	mov edx, cls
	lea ecx, [edx+0x140]
	mov [esp+0x10], ecx
	lea ecx, [edx+0x13c]
	mov [esp+0xc], ecx
	add edx, 0x138
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_f_f_f
	mov [esp], eax
	call sscanf
	leave
	ret
	nop


;CL_ParseWWWDownload(int, msg_t*)
_Z19CL_ParseWWWDownloadiP5msg_t:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x13c
	mov ebx, [ebp+0xc]
	mov dword [esp], _cstring_fs_homepath
	call _Z14Dvar_GetStringPKc
	mov [ebp-0x11c], eax
	mov dword [esp+0x8], 0x40
	mov esi, cls
	lea eax, [esi+0x2dc198]
	mov [ebp-0x120], eax
	mov [esp+0x4], eax
	lea eax, [esi+0x2dc6bc]
	mov [esp], eax
	call _Z10I_strncpyzPcPKci
	mov [esp], ebx
	call _Z14MSG_ReadStringP5msg_t
	mov dword [esp+0x8], 0x100
	mov [esp+0x4], eax
	mov edi, [ebp-0x120]
	mov [esp], edi
	call _Z10I_strncpyzPcPKci
	mov [esp], ebx
	call _Z12MSG_ReadLongP5msg_t
	mov [esi+0x2dc2a4], eax
	mov [esp], ebx
	call _Z12MSG_ReadLongP5msg_t
	mov [esi+0x2dc6b8], eax
	test al, 0x2
	jz _Z19CL_ParseWWWDownloadiP5msg_t_10
	mov dword [esp+0x4], 0x1
	mov [esp], edi
	call _Z11Sys_OpenURLPKci
	mov dword [esp+0x4], _cstring_quit
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z12Cbuf_AddTextiPKc
	mov dword [esp+0x4], _cstring_wwwdl_bbl8r
	mov edi, [ebp+0x8]
	mov [esp], edi
	call _Z21CL_AddReliableCommandiPKc
	call _Z17DL_CancelDownloadv
	mov dword [esi+0x2dc6b4], 0x0
_Z19CL_ParseWWWDownloadiP5msg_t_30:
	add esp, 0x13c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19CL_ParseWWWDownloadiP5msg_t_10:
	mov edx, [esi+0x2dc2a4]
	mov eax, legacyHacks
	mov [eax], edx
	mov eax, [ebp-0x120]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_server_redirecte
	mov dword [esp], 0xe
	call _Z11Com_DPrintfiPKcz
	mov dword [esi+0x2dc6b4], 0x1
	mov dword [esp+0x4], _cstring_wwwdl_ack
	mov edi, [ebp+0x8]
	mov [esp], edi
	call _Z21CL_AddReliableCommandiPKc
	lea ebx, [ebp-0x118]
	mov [esp+0xc], ebx
	mov dword [esp+0x8], _cstring_null
	lea eax, [esi+0x2dc098]
	mov [ebp-0x12c], eax
	mov [esp+0x4], eax
	mov edi, [ebp-0x11c]
	mov [esp], edi
	call _Z14FS_BuildOSPathPKcS0_S0_Pc
	mov dword [esp+0x8], 0x100
	mov [esp+0x4], ebx
	mov eax, [ebp-0x12c]
	mov [esp], eax
	call _Z10I_strncpyzPcPKci
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, [ebp-0x12c]
	repne scasb
	not ecx
	mov byte [ecx+esi+0x2dc096], 0x0
	mov eax, com_developer
	mov eax, [eax]
	mov eax, [eax+0xc]
	mov [esp+0x8], eax
	mov eax, [ebp-0x120]
	mov [esp+0x4], eax
	mov edi, [ebp-0x12c]
	mov [esp], edi
	call _Z16DL_BeginDownloadPKcS0_i
	test eax, eax
	jz _Z19CL_ParseWWWDownloadiP5msg_t_20
	test byte [esi+0x2dc6b8], 0x1
	jz _Z19CL_ParseWWWDownloadiP5msg_t_30
_Z19CL_ParseWWWDownloadiP5msg_t_40:
	mov dword [esp+0x4], _cstring_wwwdl_bbl8r
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z21CL_AddReliableCommandiPKc
	mov dword [esi+0x2dc6b0], 0x1
	add esp, 0x13c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19CL_ParseWWWDownloadiP5msg_t_20:
	mov dword [esp+0x4], _cstring_wwwdl_fail
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z21CL_AddReliableCommandiPKc
	call _Z17DL_CancelDownloadv
	mov dword [esi+0x2dc6b4], 0x0
	mov edi, [ebp-0x120]
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_failed_to_initia
	mov dword [esp], 0xe
	call _Z10Com_PrintfiPKcz
	test byte [esi+0x2dc6b8], 0x1
	jz _Z19CL_ParseWWWDownloadiP5msg_t_30
	jmp _Z19CL_ParseWWWDownloadiP5msg_t_40
	nop


;CL_SystemInfoChanged(int)
_Z20CL_SystemInfoChangedi:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov dword [esp+0x4], 0x2000
	lea eax, [ebp-0x24]
	mov [esp], eax
	call _ZN10LargeLocalC1Ei
	lea eax, [ebp-0x24]
	mov [esp], eax
	call _ZN10LargeLocal6GetBufEv
	mov ebx, eax
	mov dword [esp+0x4], 0x2000
	lea eax, [ebp-0x2c]
	mov [esp], eax
	call _ZN10LargeLocalC1Ei
	lea eax, [ebp-0x2c]
	mov [esp], eax
	call _ZN10LargeLocal6GetBufEv
	mov [ebp-0x3c], eax
	mov esi, clients
	mov eax, [esi+0x2fc0]
	lea edi, [esi+eax+0x55e4]
	mov dword [esp+0x4], _cstring_sv_serverid
	mov [esp], edi
	call _Z16Info_ValueForKeyPKcS0_
	mov [esp], eax
	call atoi
	mov [esi+0x256b4], eax
	mov eax, clientConnections
	mov eax, [eax+0x4018c]
	test eax, eax
	jnz _Z20CL_SystemInfoChangedi_10
	mov eax, com_sv_running
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z20CL_SystemInfoChangedi_20
	mov eax, clientUIActives
	cmp dword [eax+0xc], 0x8
	jle _Z20CL_SystemInfoChangedi_30
_Z20CL_SystemInfoChangedi_20:
	mov dword [esp+0x4], _cstring_sv_iwds
	mov [esp], edi
	call _Z16Info_ValueForKeyPKcS0_
	mov [ebp-0x1c], eax
	mov dword [esp+0x4], _cstring_sv_iwdnames
	mov [esp], edi
	call _Z16Info_ValueForKeyPKcS0_
	mov [esp+0x4], eax
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call _Z26FS_PureServerSetLoadedIwdsPKcS0_
	test al, al
	jnz _Z20CL_SystemInfoChangedi_40
_Z20CL_SystemInfoChangedi_80:
	mov dword [esp+0x4], _cstring_sv_referencediwd
	mov [esp], edi
	call _Z16Info_ValueForKeyPKcS0_
	mov [ebp-0x1c], eax
	mov dword [esp+0x4], _cstring_sv_referencediwd1
	mov [esp], edi
	call _Z16Info_ValueForKeyPKcS0_
	mov [esp+0x4], eax
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call _Z26FS_ServerSetReferencedIwdsPKcS0_
	mov dword [esp+0x4], _cstring_sv_referencedffc
	mov [esp], edi
	call _Z16Info_ValueForKeyPKcS0_
	mov [ebp-0x1c], eax
	mov dword [esp+0x4], _cstring_sv_referencedffn
	mov [esp], edi
	call _Z16Info_ValueForKeyPKcS0_
	mov [esp+0x4], eax
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call _Z25FS_ServerSetReferencedFFsPKcS0_
	mov eax, com_sv_running
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z20CL_SystemInfoChangedi_50
	mov [ebp-0x1c], edi
	lea esi, [ebp-0x1c]
	jmp _Z20CL_SystemInfoChangedi_60
_Z20CL_SystemInfoChangedi_70:
	mov eax, [ebp-0x3c]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov [esp], esi
	call _Z13Info_NextPairPPKcPcS2_
	cmp byte [ebx], 0x0
	jz _Z20CL_SystemInfoChangedi_50
	mov eax, [ebp-0x3c]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z24Dvar_SetFromStringByNamePKcS0_
_Z20CL_SystemInfoChangedi_60:
	mov eax, [ebp-0x1c]
	test eax, eax
	jnz _Z20CL_SystemInfoChangedi_70
_Z20CL_SystemInfoChangedi_50:
	mov dword [esp], _cstring_sv_pure
	call _Z12Dvar_GetBoolPKc
	movzx eax, al
	mov [cl_connectedToPureServer], eax
	lea eax, [ebp-0x2c]
	mov [esp], eax
	call _ZN10LargeLocalD1Ev
	lea eax, [ebp-0x24]
	mov [esp], eax
	call _ZN10LargeLocalD1Ev
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z20CL_SystemInfoChangedi_40:
	mov eax, cls
	mov dword [eax+0x2dc6ac], 0x1
	jmp _Z20CL_SystemInfoChangedi_80
_Z20CL_SystemInfoChangedi_10:
	lea eax, [ebp-0x2c]
	mov [esp], eax
	call _ZN10LargeLocalD1Ev
	lea eax, [ebp-0x24]
	mov [esp], eax
	call _ZN10LargeLocalD1Ev
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z20CL_SystemInfoChangedi_30:
	mov dword [esp+0x4], _cstring_sv_cheats
	mov [esp], edi
	call _Z16Info_ValueForKeyPKcS0_
	mov [ebp-0x1c], eax
	mov [esp], eax
	call atoi
	test eax, eax
	jnz _Z20CL_SystemInfoChangedi_20
	call _Z18Dvar_SetCheatStatev
	jmp _Z20CL_SystemInfoChangedi_20
	mov ebx, eax
	lea eax, [ebp-0x2c]
	mov [esp], eax
	call _ZN10LargeLocalD1Ev
_Z20CL_SystemInfoChangedi_90:
	lea eax, [ebp-0x24]
	mov [esp], eax
	call _ZN10LargeLocalD1Ev
	mov [esp], ebx
	call _Unwind_Resume
	mov ebx, eax
	jmp _Z20CL_SystemInfoChangedi_90


;CL_ParseServerMessage(int, msg_t*)
_Z21CL_ParseServerMessageiP5msg_t:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1ac
	mov eax, cl_shownet
	mov eax, [eax]
	cmp dword [eax+0xc], 0x1
	jz _Z21CL_ParseServerMessageiP5msg_t_10
	jle _Z21CL_ParseServerMessageiP5msg_t_20
	mov dword [esp+0x4], _cstring_
	mov dword [esp], 0xe
	call _Z10Com_PrintfiPKcz
_Z21CL_ParseServerMessageiP5msg_t_20:
	mov dword [esp+0x8], 0x20000
	mov dword [esp+0x4], _ZZ21CL_ParseServerMessageiP5msg_tE17msgCompressed_buf
	lea ecx, [ebp-0x4c]
	mov [esp], ecx
	call _Z8MSG_InitP5msg_tPhi
	mov ebx, [ebp+0xc]
	mov ecx, [ebx+0x1c]
	mov edx, [ebx+0x14]
	mov eax, edx
	sub eax, ecx
	cmp eax, 0x20000
	ja _Z21CL_ParseServerMessageiP5msg_t_30
	mov edi, ebx
_Z21CL_ParseServerMessageiP5msg_t_90:
	sub edx, ecx
	mov [esp+0x8], edx
	mov dword [esp+0x4], _ZZ21CL_ParseServerMessageiP5msg_tE17msgCompressed_buf
	add ecx, [edi+0x8]
	mov [esp], ecx
	call _Z20MSG_ReadBitsCompressPKhPhi
	mov [ebp-0x38], eax
_Z21CL_ParseServerMessageiP5msg_t_180:
	mov eax, [ebp-0x4c]
	test eax, eax
	jnz _Z21CL_ParseServerMessageiP5msg_t_40
	lea eax, [ebp-0x4c]
	mov [esp], eax
	call _Z12MSG_ReadByteP5msg_t
	mov ebx, eax
	cmp eax, 0x7
	jz _Z21CL_ParseServerMessageiP5msg_t_50
	mov eax, cl_shownet
	mov eax, [eax]
	cmp dword [eax+0xc], 0x1
	jle _Z21CL_ParseServerMessageiP5msg_t_60
	mov eax, [ebx*4+svc_strings]
	test eax, eax
	jz _Z21CL_ParseServerMessageiP5msg_t_70
	mov [esp+0xc], eax
	mov eax, [ebp-0x30]
	sub eax, 0x1
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_3is
	mov dword [esp], 0xe
	call _Z10Com_PrintfiPKcz
_Z21CL_ParseServerMessageiP5msg_t_60:
	cmp ebx, 0x6
	ja _Z21CL_ParseServerMessageiP5msg_t_80
	jmp dword [ebx*4+_Z21CL_ParseServerMessageiP5msg_t_jumptab_0]
_Z21CL_ParseServerMessageiP5msg_t_80:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_cl_parseserverme
	mov dword [esp], 0x1
	call _Z14Com_PrintErroriPKcz
	mov edx, [ebp+0xc]
	mov [esp], edx
	call _Z11MSG_DiscardP5msg_t
_Z21CL_ParseServerMessageiP5msg_t_240:
	add esp, 0x1ac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z21CL_ParseServerMessageiP5msg_t_30:
	mov dword [esp+0x4], _cstring_compressed_msg_o
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	mov edx, [ebx+0x14]
	mov ecx, [ebx+0x1c]
	mov edi, [ebp+0xc]
	jmp _Z21CL_ParseServerMessageiP5msg_t_90
_Z21CL_ParseServerMessageiP5msg_t_70:
	mov [esp+0xc], ebx
	mov eax, [ebp-0x30]
	sub eax, 0x1
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_3ibad_cmd_i
	mov dword [esp], 0xe
	call _Z10Com_PrintfiPKcz
	jmp _Z21CL_ParseServerMessageiP5msg_t_60
_Z21CL_ParseServerMessageiP5msg_t_430:
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z9Con_Closei
	mov edi, clientConnections
	mov dword [edi+0x20], 0x0
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z13CL_ClearStatei
	lea ecx, [ebp-0x4c]
	mov [esp], ecx
	call _Z29MSG_ClearLastReferencedEntityP5msg_t
	mov ebx, cls
	lea esi, [ebx+0x138]
	mov dword [ebx+0x138], 0x0
	mov dword [esi+0x4], 0x0
	mov dword [esi+0x8], 0x0
	lea eax, [ebp-0x4c]
	mov [esp], eax
	call _Z12MSG_ReadLongP5msg_t
	mov [edi+0x20138], eax
	mov eax, clients
	mov dword [eax+0x255e4], 0x1
	mov [ebp-0x174], eax
	mov [ebp-0x170], eax
	lea edx, [eax+0x55e4]
	mov [ebp-0x178], edx
	mov ecx, constantConfigStrings
	mov [ebp-0x17c], ecx
	mov [ebp-0x168], ebx
	mov [ebp-0x16c], esi
	mov [ebp-0x180], eax
	mov [ebp-0x184], edx
_Z21CL_ParseServerMessageiP5msg_t_220:
	lea ebx, [ebp-0x4c]
	mov [esp], ebx
	call _Z12MSG_ReadByteP5msg_t
	cmp eax, 0x7
	jz _Z21CL_ParseServerMessageiP5msg_t_100
_Z21CL_ParseServerMessageiP5msg_t_140:
	cmp eax, 0x2
	jz _Z21CL_ParseServerMessageiP5msg_t_110
	cmp eax, 0x3
	jnz _Z21CL_ParseServerMessageiP5msg_t_120
	mov dword [esp+0x4], 0xa
	lea edi, [ebp-0x4c]
	mov [esp], edi
	call _Z19MSG_ReadEntityIndexP5msg_ti
	mov ebx, eax
	cmp eax, 0x3ff
	ja _Z21CL_ParseServerMessageiP5msg_t_130
_Z21CL_ParseServerMessageiP5msg_t_190:
	mov dword [esp+0x8], 0xf4
	mov dword [esp+0x4], 0x0
	lea eax, [ebp-0x140]
	mov [esp], eax
	call memset
	mov [esp+0x10], ebx
	mov eax, ebx
	shl eax, 0x4
	sub eax, ebx
	lea eax, [ebx+eax*4]
	lea eax, [eax*4+0xc8ad0]
	add eax, clients
	mov [esp+0xc], eax
	lea edx, [ebp-0x140]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x0
	lea ecx, [ebp-0x4c]
	mov [esp], ecx
	call _Z19MSG_ReadDeltaEntityP5msg_tiPK13entityState_sPS1_i
	lea ebx, [ebp-0x4c]
	mov [esp], ebx
	call _Z12MSG_ReadByteP5msg_t
	cmp eax, 0x7
	jnz _Z21CL_ParseServerMessageiP5msg_t_140
_Z21CL_ParseServerMessageiP5msg_t_100:
	lea edi, [ebp-0x4c]
	mov [esp], edi
	call _Z12MSG_ReadLongP5msg_t
	mov ebx, clientConnections
	mov [ebx+0x4], eax
	mov [esp], edi
	call _Z12MSG_ReadLongP5msg_t
	mov [ebx+0x128], eax
	mov eax, useFastFile
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z21CL_ParseServerMessageiP5msg_t_150
_Z21CL_ParseServerMessageiP5msg_t_420:
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z20CL_SystemInfoChangedi
	mov edx, cls
	mov eax, fs_gameDirVar
	mov eax, [eax]
	movzx eax, byte [eax+0xb]
	or [edx+0x2dc6ac], eax
	mov eax, [ebx+0x128]
	mov [esp], eax
	call _Z14FS_NeedRestarti
	test eax, eax
	jnz _Z21CL_ParseServerMessageiP5msg_t_160
_Z21CL_ParseServerMessageiP5msg_t_410:
	mov eax, net_lanauthorize
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z21CL_ParseServerMessageiP5msg_t_170
_Z21CL_ParseServerMessageiP5msg_t_400:
	mov ebx, [ebp+0x8]
	mov [esp], ebx
	call _Z23CL_RequestAuthorizationi
_Z21CL_ParseServerMessageiP5msg_t_390:
	mov edi, [ebp+0x8]
	mov [esp], edi
	call _Z16CL_InitDownloadsi
	mov dword [esp+0x4], 0x0
	mov eax, cl_paused
	mov eax, [eax]
	mov [esp], eax
	call _Z11Dvar_SetIntPK6dvar_si
	jmp _Z21CL_ParseServerMessageiP5msg_t_180
_Z21CL_ParseServerMessageiP5msg_t_460:
	lea eax, [ebp-0x4c]
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z16CL_ParseSnapshotiP5msg_t
	jmp _Z21CL_ParseServerMessageiP5msg_t_180
_Z21CL_ParseServerMessageiP5msg_t_450:
	lea ecx, [ebp-0x4c]
	mov [esp+0x4], ecx
	mov ebx, [ebp+0x8]
	mov [esp], ebx
	call _Z16CL_ParseDownloadiP5msg_t
	jmp _Z21CL_ParseServerMessageiP5msg_t_180
_Z21CL_ParseServerMessageiP5msg_t_440:
	lea ecx, [ebp-0x4c]
	mov [esp], ecx
	call _Z12MSG_ReadLongP5msg_t
	mov ebx, eax
	lea edi, [ebp-0x4c]
	mov [esp], edi
	call _Z14MSG_ReadStringP5msg_t
	mov edx, eax
	mov eax, clientConnections
	cmp ebx, [eax+0x20138]
	jle _Z21CL_ParseServerMessageiP5msg_t_180
	mov [eax+0x20138], ebx
	mov dword [esp+0x8], 0x400
	mov [esp+0x4], edx
	and ebx, 0x7f
	shl ebx, 0xa
	lea eax, [ebx+eax+0x20140]
	mov [esp], eax
	call _Z10I_strncpyzPcPKci
	jmp _Z21CL_ParseServerMessageiP5msg_t_180
_Z21CL_ParseServerMessageiP5msg_t_130:
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_baseline_number_
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z21CL_ParseServerMessageiP5msg_t_190
_Z21CL_ParseServerMessageiP5msg_t_110:
	mov [esp], ebx
	call _Z13MSG_ReadShortP5msg_t
	mov [ebp-0x15c], eax
	test eax, eax
	jnz _Z21CL_ParseServerMessageiP5msg_t_200
	mov dword [ebp-0x14c], 0x0
_Z21CL_ParseServerMessageiP5msg_t_320:
	mov ecx, constantConfigStrings
	mov eax, [ebp-0x14c]
	shl eax, 0x4
	mov edx, [eax+ecx]
	test edx, edx
	jnz _Z21CL_ParseServerMessageiP5msg_t_210
_Z21CL_ParseServerMessageiP5msg_t_260:
	mov dword [esp+0x4], 0xc
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z18CL_GetConfigStringii
	mov edx, [ebp-0x168]
	add edx, 0x140
	mov [esp+0x10], edx
	mov edx, [ebp-0x168]
	add edx, 0x13c
	mov [esp+0xc], edx
	mov ebx, [ebp-0x16c]
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_f_f_f
	mov [esp], eax
	call sscanf
	jmp _Z21CL_ParseServerMessageiP5msg_t_220
_Z21CL_ParseServerMessageiP5msg_t_10:
	mov edx, [ebp+0xc]
	mov eax, [edx+0x14]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_i_
	mov dword [esp], 0xe
	call _Z10Com_PrintfiPKcz
	jmp _Z21CL_ParseServerMessageiP5msg_t_20
_Z21CL_ParseServerMessageiP5msg_t_50:
	mov eax, cl_shownet
	mov eax, [eax]
	cmp dword [eax+0xc], 0x1
	jle _Z21CL_ParseServerMessageiP5msg_t_230
	mov dword [esp+0xc], _cstring_end_of_message
	mov eax, [ebp-0x30]
	sub eax, 0x1
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_3is
	mov dword [esp], 0xe
	call _Z10Com_PrintfiPKcz
_Z21CL_ParseServerMessageiP5msg_t_230:
	mov eax, [ebp-0x4c]
	test eax, eax
	jz _Z21CL_ParseServerMessageiP5msg_t_240
_Z21CL_ParseServerMessageiP5msg_t_40:
	mov edi, [ebp+0xc]
	mov [esp], edi
	call _Z11MSG_DiscardP5msg_t
	jmp _Z21CL_ParseServerMessageiP5msg_t_240
_Z21CL_ParseServerMessageiP5msg_t_210:
	lea esi, [eax+ecx]
	mov eax, [ebp-0x178]
	mov [ebp-0x164], eax
_Z21CL_ParseServerMessageiP5msg_t_250:
	mov ecx, [esi+0x4]
	mov [ebp-0x18c], ecx
	cld
	mov ecx, 0xffffffff
	mov edi, [ebp-0x18c]
	xor eax, eax
	repne scasb
	not ecx
	lea ebx, [ecx-0x1]
	mov edi, [ebp-0x174]
	mov eax, [edi+0x255e4]
	mov [edi+edx*4+0x2fbc], eax
	add eax, [ebp-0x164]
	mov [esp+0x8], ecx
	mov edx, [ebp-0x18c]
	mov [esp+0x4], edx
	mov [esp], eax
	call memcpy
	add ebx, [edi+0x255e4]
	add ebx, 0x1
	mov [edi+0x255e4], ebx
	mov edx, [esi+0x10]
	add esi, 0x10
	test edx, edx
	jnz _Z21CL_ParseServerMessageiP5msg_t_250
	jmp _Z21CL_ParseServerMessageiP5msg_t_260
_Z21CL_ParseServerMessageiP5msg_t_200:
	mov dword [ebp-0x154], 0xffffffff
	mov dword [ebp-0x14c], 0x0
	mov dword [ebp-0x150], 0x0
	mov eax, [ebp-0x184]
	mov [ebp-0x160], eax
	jmp _Z21CL_ParseServerMessageiP5msg_t_270
_Z21CL_ParseServerMessageiP5msg_t_330:
	add dword [ebp-0x154], 0x1
	cmp dword [ebp-0x154], 0x989
	ja _Z21CL_ParseServerMessageiP5msg_t_280
_Z21CL_ParseServerMessageiP5msg_t_340:
	mov ecx, constantConfigStrings
	mov eax, [ebp-0x14c]
	shl eax, 0x4
	mov edx, [eax+ecx]
	test edx, edx
	jz _Z21CL_ParseServerMessageiP5msg_t_290
	cmp [ebp-0x154], edx
	jg _Z21CL_ParseServerMessageiP5msg_t_300
_Z21CL_ParseServerMessageiP5msg_t_290:
	mov eax, [ebp-0x14c]
	mov edx, [ebp-0x14c]
_Z21CL_ParseServerMessageiP5msg_t_380:
	shl eax, 0x4
	add edx, 0x1
	mov edi, [ebp-0x154]
	cmp edi, [eax+ecx]
	cmovnz edx, [ebp-0x14c]
	mov [ebp-0x14c], edx
	lea eax, [ebp-0x4c]
	mov [esp], eax
	call _Z17MSG_ReadBigStringP5msg_t
	mov esi, eax
	cld
	mov ecx, 0xffffffff
	mov edi, eax
	xor eax, eax
	repne scasb
	mov ebx, ecx
	not ebx
	lea edi, [ebx-0x1]
	mov eax, [ebp-0x180]
	mov edx, [eax+0x255e4]
	lea eax, [edi+edx+0x1]
	cmp eax, 0x20000
	jg _Z21CL_ParseServerMessageiP5msg_t_310
	mov ecx, [ebp-0x180]
_Z21CL_ParseServerMessageiP5msg_t_350:
	mov eax, [ebp-0x154]
	mov [ecx+eax*4+0x2fbc], edx
	lea eax, [ecx+edx+0x55e4]
	mov [esp+0x8], ebx
	mov [esp+0x4], esi
	mov [esp], eax
	call memcpy
	mov ebx, [ebp-0x180]
	add edi, [ebx+0x255e4]
	lea eax, [edi+0x1]
	mov [ebx+0x255e4], eax
	add dword [ebp-0x150], 0x1
	mov edi, [ebp-0x150]
	cmp [ebp-0x15c], edi
	jz _Z21CL_ParseServerMessageiP5msg_t_320
_Z21CL_ParseServerMessageiP5msg_t_270:
	lea edx, [ebp-0x4c]
	mov [esp], edx
	call _Z11MSG_ReadBitP5msg_t
	test eax, eax
	jnz _Z21CL_ParseServerMessageiP5msg_t_330
	mov dword [esp+0x4], 0xc
	lea ebx, [ebp-0x4c]
	mov [esp], ebx
	call _Z12MSG_ReadBitsP5msg_ti
	mov [ebp-0x154], eax
	cmp dword [ebp-0x154], 0x989
	jbe _Z21CL_ParseServerMessageiP5msg_t_340
_Z21CL_ParseServerMessageiP5msg_t_280:
	mov dword [esp+0x4], _cstring_configstring__ma
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z21CL_ParseServerMessageiP5msg_t_340
_Z21CL_ParseServerMessageiP5msg_t_310:
	mov dword [esp+0x4], _cstring_max_gamestate_ch
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	mov ecx, [ebp-0x180]
	mov edx, [ecx+0x255e4]
	jmp _Z21CL_ParseServerMessageiP5msg_t_350
_Z21CL_ParseServerMessageiP5msg_t_300:
	mov eax, [ebp-0x14c]
	shl eax, 0x4
	lea esi, [eax+ecx]
	mov ecx, [ebp-0x14c]
	mov [ebp-0x158], ecx
_Z21CL_ParseServerMessageiP5msg_t_370:
	mov edi, [esi+0x4]
	mov [ebp-0x18c], edi
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	repne scasb
	not ecx
	lea ebx, [ecx-0x1]
	mov edi, [ebp-0x170]
	mov eax, [edi+0x255e4]
	mov [edi+edx*4+0x2fbc], eax
	add eax, [ebp-0x160]
	mov [esp+0x8], ecx
	mov edx, [ebp-0x18c]
	mov [esp+0x4], edx
	mov [esp], eax
	call memcpy
	add ebx, [edi+0x255e4]
	add ebx, 0x1
	mov [edi+0x255e4], ebx
	add dword [ebp-0x158], 0x1
	mov ecx, constantConfigStrings
	mov edx, [esi+0x10]
	test edx, edx
	jz _Z21CL_ParseServerMessageiP5msg_t_360
	add esi, 0x10
	cmp [ebp-0x154], edx
	jg _Z21CL_ParseServerMessageiP5msg_t_370
_Z21CL_ParseServerMessageiP5msg_t_360:
	mov ebx, [ebp-0x158]
	mov [ebp-0x14c], ebx
	mov eax, ebx
	mov edx, ebx
	jmp _Z21CL_ParseServerMessageiP5msg_t_380
_Z21CL_ParseServerMessageiP5msg_t_120:
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_cl_parsegamestat
	mov dword [esp], 0x1
	call _Z14Com_PrintErroriPKcz
	lea ebx, [ebp-0x4c]
	mov [esp], ebx
	call _Z11MSG_DiscardP5msg_t
	jmp _Z21CL_ParseServerMessageiP5msg_t_180
_Z21CL_ParseServerMessageiP5msg_t_170:
	mov ecx, [ebx+0x10]
	mov [ebp-0x24], ecx
	mov edx, [ebx+0x14]
	mov [ebp-0x20], edx
	mov eax, [ebx+0x18]
	mov [ebp-0x1c], eax
	mov [esp], ecx
	mov [esp+0x4], edx
	mov [esp+0x8], eax
	call _Z16Sys_IsLANAddress8netadr_t
	test eax, eax
	jnz _Z21CL_ParseServerMessageiP5msg_t_390
	jmp _Z21CL_ParseServerMessageiP5msg_t_400
_Z21CL_ParseServerMessageiP5msg_t_160:
	mov eax, [ebx+0x128]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z10FS_Restartii
	jmp _Z21CL_ParseServerMessageiP5msg_t_410
_Z21CL_ParseServerMessageiP5msg_t_150:
	call _Z14DB_SyncXAssetsv
	jmp _Z21CL_ParseServerMessageiP5msg_t_420
	
	
_Z21CL_ParseServerMessageiP5msg_t_jumptab_0:
	dd _Z21CL_ParseServerMessageiP5msg_t_180
	dd _Z21CL_ParseServerMessageiP5msg_t_430
	dd _Z21CL_ParseServerMessageiP5msg_t_80
	dd _Z21CL_ParseServerMessageiP5msg_t_80
	dd _Z21CL_ParseServerMessageiP5msg_t_440
	dd _Z21CL_ParseServerMessageiP5msg_t_450
	dd _Z21CL_ParseServerMessageiP5msg_t_460


;CL_GetPredictedOriginForServerTime(clientActive_t*, int, float*, float*, float*, int*, int*)
_Z34CL_GetPredictedOriginForServerTimeP14clientActive_tiPfS1_S1_PiS2_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0xc]
	mov eax, [ebp+0x8]
	mov ecx, [eax+0x696cc]
	mov edx, 0xff
	jmp _Z34CL_GetPredictedOriginForServerTimeP14clientActive_tiPfS1_S1_PiS2__10
_Z34CL_GetPredictedOriginForServerTimeP14clientActive_tiPfS1_S1_PiS2__40:
	lea ebx, [eax+eax*2]
	shl ebx, 0x4
	mov eax, [ebp+0x8]
	lea esi, [ebx+eax]
	cmp [esi+0x666cc], edi
	jle _Z34CL_GetPredictedOriginForServerTimeP14clientActive_tiPfS1_S1_PiS2__20
_Z34CL_GetPredictedOriginForServerTimeP14clientActive_tiPfS1_S1_PiS2__50:
	sub edx, 0x1
	cmp edx, 0xffffffff
	jz _Z34CL_GetPredictedOriginForServerTimeP14clientActive_tiPfS1_S1_PiS2__30
_Z34CL_GetPredictedOriginForServerTimeP14clientActive_tiPfS1_S1_PiS2__10:
	lea eax, [edx+ecx]
	and eax, 0x800000ff
	jns _Z34CL_GetPredictedOriginForServerTimeP14clientActive_tiPfS1_S1_PiS2__40
	sub eax, 0x1
	or eax, 0xffffff00
	add eax, 0x1
	lea ebx, [eax+eax*2]
	shl ebx, 0x4
	mov eax, [ebp+0x8]
	lea esi, [ebx+eax]
	cmp [esi+0x666cc], edi
	jg _Z34CL_GetPredictedOriginForServerTimeP14clientActive_tiPfS1_S1_PiS2__50
_Z34CL_GetPredictedOriginForServerTimeP14clientActive_tiPfS1_S1_PiS2__20:
	mov eax, [esi+0x666cc]
	cmp edi, eax
	jz _Z34CL_GetPredictedOriginForServerTimeP14clientActive_tiPfS1_S1_PiS2__60
	mov [esp+0xc], eax
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_couldnt_find_exa
	mov dword [esp], 0xe
	call _Z10Com_PrintfiPKcz
_Z34CL_GetPredictedOriginForServerTimeP14clientActive_tiPfS1_S1_PiS2__60:
	mov edx, [ebp+0x8]
	lea eax, [ebx+edx+0x666c0]
	lea edx, [eax+0x10]
	mov eax, [eax+0x10]
	mov ecx, [ebp+0x10]
	mov [ecx], eax
	mov eax, [edx+0x4]
	mov [ecx+0x4], eax
	mov eax, [edx+0x8]
	mov [ecx+0x8], eax
	mov edx, [ebp+0x8]
	lea eax, [ebx+edx+0x666d0]
	lea edx, [eax+0xc]
	mov eax, [eax+0xc]
	mov ecx, [ebp+0x14]
	mov [ecx], eax
	mov eax, [edx+0x4]
	mov [ecx+0x4], eax
	mov eax, [edx+0x8]
	mov [ecx+0x8], eax
	mov edx, [ebp+0x8]
	lea eax, [ebx+edx+0x666e0]
	lea edx, [eax+0x10]
	mov eax, [eax+0x10]
	mov ecx, [ebp+0x18]
	mov [ecx], eax
	mov eax, [edx+0x4]
	mov [ecx+0x4], eax
	mov eax, [edx+0x8]
	mov [ecx+0x8], eax
	mov eax, [esi+0x666e8]
	mov edx, [ebp+0x1c]
	mov [edx], eax
	mov eax, [esi+0x666ec]
	mov ecx, [ebp+0x20]
	mov [ecx], eax
	mov eax, 0x1
_Z34CL_GetPredictedOriginForServerTimeP14clientActive_tiPfS1_S1_PiS2__70:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z34CL_GetPredictedOriginForServerTimeP14clientActive_tiPfS1_S1_PiS2__30:
	xor eax, eax
	jmp _Z34CL_GetPredictedOriginForServerTimeP14clientActive_tiPfS1_S1_PiS2__70
	nop


;CL_SavePredictedOriginForServerTime(int, clientActive_t*, int, float const*, float const*, float const*, int, int)
_Z35CL_SavePredictedOriginForServerTimeiP14clientActive_tiPKfS2_S2_ii:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	mov ebx, [ebp+0xc]
	mov ecx, [ebp+0x10]
	mov esi, [ebp+0x14]
	mov edi, [ebp+0x18]
	mov edx, [ebx+0x696cc]
	lea eax, [edx+0xff]
	and eax, 0x800000ff
	js _Z35CL_SavePredictedOriginForServerTimeiP14clientActive_tiPKfS2_S2_ii_10
_Z35CL_SavePredictedOriginForServerTimeiP14clientActive_tiPKfS2_S2_ii_40:
	lea eax, [eax+eax*2]
	shl eax, 0x4
	cmp [eax+ebx+0x666cc], ecx
	jz _Z35CL_SavePredictedOriginForServerTimeiP14clientActive_tiPKfS2_S2_ii_20
	lea eax, [edx+edx*2]
	shl eax, 0x4
	mov [eax+ebx+0x666cc], ecx
	mov eax, [ebx+0x696cc]
	lea eax, [eax+eax*2]
	shl eax, 0x4
	lea eax, [eax+ebx+0x666c0]
	lea ecx, [eax+0x10]
	mov edx, [esi]
	mov [eax+0x10], edx
	mov eax, [esi+0x4]
	mov [ecx+0x4], eax
	mov eax, [esi+0x8]
	mov [ecx+0x8], eax
	mov eax, [ebx+0x696cc]
	lea eax, [eax+eax*2]
	shl eax, 0x4
	lea eax, [eax+ebx+0x666d0]
	lea ecx, [eax+0xc]
	mov edx, [edi]
	mov [eax+0xc], edx
	mov eax, [edi+0x4]
	mov [ecx+0x4], eax
	mov eax, [edi+0x8]
	mov [ecx+0x8], eax
	mov eax, [ebx+0x696cc]
	lea eax, [eax+eax*2]
	shl eax, 0x4
	mov edx, [ebp+0x20]
	mov [eax+ebx+0x666e8], edx
	mov eax, [ebx+0x696cc]
	lea eax, [eax+eax*2]
	shl eax, 0x4
	mov esi, [ebp+0x24]
	mov [eax+ebx+0x666ec], esi
	mov eax, [ebx+0x696cc]
	lea eax, [eax+eax*2]
	shl eax, 0x4
	lea eax, [eax+ebx+0x666e0]
	lea ecx, [eax+0x10]
	mov esi, [ebp+0x1c]
	mov edx, [esi]
	mov [eax+0x10], edx
	mov eax, [esi+0x4]
	mov [ecx+0x4], eax
	mov eax, [esi+0x8]
	mov [ecx+0x8], eax
	mov eax, [ebx+0x696cc]
	add eax, 0x1
	and eax, 0x800000ff
	js _Z35CL_SavePredictedOriginForServerTimeiP14clientActive_tiPKfS2_S2_ii_30
_Z35CL_SavePredictedOriginForServerTimeiP14clientActive_tiPKfS2_S2_ii_50:
	mov [ebx+0x696cc], eax
_Z35CL_SavePredictedOriginForServerTimeiP14clientActive_tiPKfS2_S2_ii_20:
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z35CL_SavePredictedOriginForServerTimeiP14clientActive_tiPKfS2_S2_ii_10:
	sub eax, 0x1
	or eax, 0xffffff00
	add eax, 0x1
	jmp _Z35CL_SavePredictedOriginForServerTimeiP14clientActive_tiPKfS2_S2_ii_40
_Z35CL_SavePredictedOriginForServerTimeiP14clientActive_tiPKfS2_S2_ii_30:
	sub eax, 0x1
	or eax, 0xffffff00
	add eax, 0x1
	jmp _Z35CL_SavePredictedOriginForServerTimeiP14clientActive_tiPKfS2_S2_ii_50
	nop


;Initialized global or static variables of cl_parse_mp:
SECTION .data
svc_strings: dd _cstring_svc_nop, _cstring_svc_gamestate, _cstring_svc_configstring, _cstring_svc_baseline, _cstring_svc_servercomman, _cstring_svc_download, _cstring_svc_snapshot, _cstring_svc_eof, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0


;Initialized constant data of cl_parse_mp:
SECTION .rdata


;Zero initialized global or static variables of cl_parse_mp:
SECTION .bss
_ZZ16CL_ParseDownloadiP5msg_tE17parseDownloadData: resb 0x800
_ZZ16CL_ParseSnapshotiP5msg_tE7newSnap: resb 0x2fa0
_ZZ21CL_ParseServerMessageiP5msg_tE17msgCompressed_buf: resb 0x20060
cl_connectedToPureServer: resb 0x80


;All cstrings:
SECTION .rdata
_cstring_cl_parsedownload:		db "CL_ParseDownload: Expected block %d, got %d",0ah,0
_cstring_s:		db "%s",0
_cstring_server_sending_d:		db "Server sending download, but no download was requested",0ah,0
_cstring_stopdl:		db "stopdl",0
_cstring_nextdl_d:		db "nextdl %d",0
_cstring_cl_parsedownload1:		db "CL_ParseDownload: Sending retransmit request to get the missed block",0ah,0
_cstring_retransdl_d:		db "retransdl %d",0
_cstring_could_not_create:		db "Could not create %s",0ah,0
_cstring_delta_frame_too_:		db "Delta frame too old.",0ah,0
_cstring_playerstate:		db "playerstate",0
_cstring_3is:		db "%3i:%s",0ah,0
_cstring_packet_entities:		db "packet entities",0
_cstring_packet_clients:		db "packet clients",0
_cstring_delta_from_inval:		db "Delta from invalid frame (not supposed to happen!).",0ah,0
_cstring_cl_parsepacketen:		db 015h,"CL_ParsePacketEntities: end of message",0
_cstring_3i__unchanged_i:		db "%3i:  unchanged: %i",0ah,0
_cstring_3i_unchanged_ent:		db "%3i: unchanged ent, eType %s at %f, %f, %f",0ah,0
_cstring_entities_in_pack:		db "Entities in packet: %i",0ah,0
_cstring_cl_parsepacketcl:		db 015h,"CL_ParsePacketClients: end of message",0
_cstring_3i__baseline_i:		db "%3i:  baseline: %i",0ah,0
_cstring_delta_parseentit:		db "Delta parseEntitiesNum too old.",0ah,0
_cstring_3i__delta_i:		db "%3i:  delta: %i",0ah,0
_cstring_clients_in_packe:		db "Clients in packet: %i",0ah,0
_cstring_delta_parseclien:		db "Delta parseClientsNum too old.",0ah,0
_cstring____snapshoti__de:		db "   snapshot:%i  delta:%i  ping:%i",0ah,0
_cstring_f_f_f:		db "%f %f %f",0
_cstring_fs_homepath:		db "fs_homepath",0
_cstring_quit:		db "quit",0ah,0
_cstring_wwwdl_bbl8r:		db "wwwdl bbl8r",0
_cstring_server_redirecte:		db "Server redirected download: %s",0ah,0
_cstring_wwwdl_ack:		db "wwwdl ack",0
_cstring_null:		db 0
_cstring_wwwdl_fail:		db "wwwdl fail",0
_cstring_failed_to_initia:		db "Failed to initialize download for ",27h,"%s",27h,0ah,0
_cstring_sv_serverid:		db "sv_serverid",0
_cstring_sv_iwds:		db "sv_iwds",0
_cstring_sv_iwdnames:		db "sv_iwdNames",0
_cstring_sv_referencediwd:		db "sv_referencedIwds",0
_cstring_sv_referencediwd1:		db "sv_referencedIwdNames",0
_cstring_sv_referencedffc:		db "sv_referencedFFCheckSums",0
_cstring_sv_referencedffn:		db "sv_referencedFFNames",0
_cstring_sv_pure:		db "sv_pure",0
_cstring_sv_cheats:		db "sv_cheats",0
_cstring_:		db "------------------",0ah,0
_cstring_cl_parseserverme:		db "CL_ParseServerMessage: Illegible server message %d",0ah,0
_cstring_compressed_msg_o:		db "Compressed msg overflow in CL_ParseServerMessage",0
_cstring_3ibad_cmd_i:		db "%3i:BAD CMD %i",0ah,0
_cstring_baseline_number_:		db 015h,"Baseline number out of range: %i",0
_cstring_i_:		db "%i ",0
_cstring_end_of_message:		db "END OF MESSAGE",0
_cstring_configstring__ma:		db 015h,"configstring > MAX_CONFIGSTRINGS",0
_cstring_max_gamestate_ch:		db 015h,"MAX_GAMESTATE_CHARS exceeded",0
_cstring_cl_parsegamestat:		db "CL_ParseGamestate: bad command byte %d",0ah,0
_cstring_couldnt_find_exa:		db "Couldn",27h,"t find exact match for servertime %i, using servertime %i",0ah,0
_cstring_svc_nop:		db "svc_nop",0
_cstring_svc_gamestate:		db "svc_gamestate",0
_cstring_svc_configstring:		db "svc_configstring",0
_cstring_svc_baseline:		db "svc_baseline",0
_cstring_svc_servercomman:		db "svc_serverCommand",0
_cstring_svc_download:		db "svc_download",0
_cstring_svc_snapshot:		db "svc_snapshot",0
_cstring_svc_eof:		db "svc_EOF",0



;All constant floats and doubles:
SECTION .rdata

