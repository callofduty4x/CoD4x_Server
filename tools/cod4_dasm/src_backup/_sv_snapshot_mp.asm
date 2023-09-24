;Imports of sv_snapshot_mp:
	extern svs
	extern _Z16MSG_InitReadOnlyP5msg_tPhi
	extern _Z16MSG_BeginReadingP5msg_t
	extern _Z11MSG_ReadBitP5msg_t
	extern _Z12MSG_ReadLongP5msg_t
	extern _Z29MSG_ClearLastReferencedEntityP5msg_t
	extern _Z19MSG_ReadDeltaClientP5msg_tiPK13clientState_sPS1_i
	extern _Z19MSG_ReadEntityIndexP5msg_ti
	extern _Z9Com_Error11errorParm_tPKcz
	extern _Z21MSG_InitReadOnlySplitP5msg_tPhiS1_i
	extern _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h
	extern sv
	extern _Z27MSG_ReadDeltaArchivedEntityP5msg_tiPK16archivedEntity_sPS1_i
	extern _Z24SV_WriteDownloadToClientP8client_tP5msg_t
	extern _Z13MSG_WriteByteP5msg_ti
	extern _Z20SV_TrackSnapshotSizei
	extern _Z16Com_PrintWarningiPKcz
	extern _Z18NET_OutOfBandPrint8netsrc_t8netadr_tPKc
	extern _Z13SV_DropClientP8client_tPKch
	extern _Z10Com_PrintfiPKcz
	extern _Z8MSG_InitP5msg_tPhi
	extern _Z13MSG_WriteLongP5msg_ti
	extern _Z15MSG_WriteStringP5msg_tPKc
	extern sv_maxclients
	extern _Z22SV_SendClientVoiceDataP8client_t
	extern sv_showAverageBPS
	extern _Z11Com_DPrintfiPKcz
	extern tempServerMsgBuf
	extern _Z18SV_ArchiveSnapshotP5msg_t
	extern sv_maxRate
	extern sv_debugRate
	extern _Z31SV_Netchan_TransmitNextFragmentP8client_tP9netchan_t
	extern memcpy
	extern _Z11Dvar_SetIntPK6dvar_si
	extern _Z22G_GetClientArchiveTimei
	extern sv_fps
	extern _Z22G_SetClientArchiveTimeii
	extern _Z16SV_GameClientNumi
	extern _Z17AddLeanToPositionPfffff
	extern _Z15CM_PointLeafnumPKf
	extern _Z14CM_LeafClusteri
	extern _Z13CM_ClusterPVSi
	extern _Z22G_GetFogOpaqueDistSqrdv
	extern _Z14CM_BoxLeafnumsPKfS0_PtiPi
	extern _Z16G_GetClientStatei
	extern _Z13SV_GentityNumi
	extern _Z21SV_SvEntityForGentityPK9gentity_s
	extern _Z18BoxDistSqrdExceedsPKfS0_S0_f
	extern _Z21MSG_WriteBitsCompresshPKhPhi
	extern _Z25SV_TrackPacketCompressioniii
	extern _Z16Sys_Millisecondsv
	extern _Z19SV_Netchan_TransmitP8client_tPhi
	extern _Z16Sys_IsLANAddress8netadr_t
	extern pow
	extern _Z5irandii
	extern _Z20GetFollowPlayerStateiP13playerState_s
	extern _Z16G_GetPlayerStatei
	extern _Z15G_GetClientSizev
	extern _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5_
	extern _Z15MSG_WriteEntityP14SnapshotInfo_sP5msg_tiPK13entityState_sS5_i
	extern _Z20MSG_WriteEntityIndexP14SnapshotInfo_sP5msg_tii
	extern _Z20MSG_WriteDeltaClientP14SnapshotInfo_sP5msg_tiPK13clientState_sS5_i
	extern _Z13MSG_WriteBit0P5msg_t
	extern sv_padPackets
	extern sv_debugReliableCmds

;Exports of sv_snapshot_mp:
	global g_archiveMsg
	global tempSnapshotMsgBuf
	global _Z28SV_GetCachedSnapshotInternali
	global _ZZ22SV_SendMessageToClientP5msg_tP8client_tE15svCompressedBuf
	global _Z20SV_EndClientSnapshotP8client_tP5msg_t
	global _Z21SV_SendClientMessagesv
	global _Z22SV_BeginClientSnapshotP8client_tP5msg_t
	global _Z22SV_BuildClientSnapshotP8client_t
	global _Z22SV_SendMessageToClientP5msg_tP8client_t
	global _Z24SV_GetArchivedClientInfoiPiP13playerState_sP13clientState_s
	global _Z24SV_GetServerStaticHeaderv
	global _Z24SV_SetServerStaticHeaderv
	global _Z24SV_WriteSnapshotToClientP8client_tP5msg_t
	global _Z26SV_GetClientPositionAtTimeiiPf
	global _Z31SV_UpdateServerCommandsToClientP8client_tP5msg_t
	global svsHeader
	global sv_clientArchive


SECTION .text


;SV_GetCachedSnapshotInternal(int)
_Z28SV_GetCachedSnapshotInternali:
_Z28SV_GetCachedSnapshotInternali_350:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x7c
	mov [ebp-0x64], eax
	mov edx, 0x1b4e81b5
	imul edx
	sar edx, 0x7
	mov eax, [ebp-0x64]
	sar eax, 0x1f
	sub edx, eax
	lea edx, [edx+edx*4]
	mov eax, edx
	shl eax, 0x4
	sub eax, edx
	shl eax, 0x4
	mov edx, [ebp-0x64]
	sub edx, eax
	mov esi, svs
	mov [ebp-0x68], esi
	lea eax, [esi+edx*8+svs+0x4798080]
	lea ecx, [eax+0x20]
	mov [ebp-0x54], ecx
	mov edi, [eax+0x20]
	mov eax, [esi+0x8246aa0]
	sub eax, 0x2000000
	cmp edi, eax
	jl _Z28SV_GetCachedSnapshotInternali_10
	mov eax, [esi+0x8246aac]
	mov ebx, eax
	sub ebx, 0x200
	mov edx, 0x0
	cmovs ebx, edx
	lea ecx, [eax-0x1]
	cmp ebx, ecx
	jg _Z28SV_GetCachedSnapshotInternali_20
	mov edx, ecx
	and edx, 0x800001ff
	js _Z28SV_GetCachedSnapshotInternali_30
_Z28SV_GetCachedSnapshotInternali_340:
	lea eax, [edx*4]
	shl edx, 0x5
	sub edx, eax
	add edx, esi
	mov [ebp-0x60], edx
	mov eax, [ebp-0x64]
	cmp eax, [edx]
	jnz _Z28SV_GetCachedSnapshotInternali_40
	jmp _Z28SV_GetCachedSnapshotInternali_50
_Z28SV_GetCachedSnapshotInternali_70:
	lea eax, [edx*4]
	shl edx, 0x5
	sub edx, eax
	add edx, [ebp-0x68]
	mov [ebp-0x60], edx
	mov eax, [ebp-0x64]
	cmp eax, [edx]
	jz _Z28SV_GetCachedSnapshotInternali_60
_Z28SV_GetCachedSnapshotInternali_40:
	sub ecx, 0x1
	cmp ebx, ecx
	jg _Z28SV_GetCachedSnapshotInternali_20
	mov edx, ecx
	and edx, 0x800001ff
	jns _Z28SV_GetCachedSnapshotInternali_70
	sub edx, 0x1
	or edx, 0xfffffe00
	add edx, 0x1
	lea eax, [edx*4]
	shl edx, 0x5
	sub edx, eax
	add edx, [ebp-0x68]
	mov [ebp-0x60], edx
	mov eax, [ebp-0x64]
	cmp eax, [edx]
	jnz _Z28SV_GetCachedSnapshotInternali_40
_Z28SV_GetCachedSnapshotInternali_60:
	mov ecx, edx
_Z28SV_GetCachedSnapshotInternali_330:
	mov edx, [ebp-0x68]
	mov eax, [edx+0x8246aa4]
	sub eax, 0x4000
	cmp [ecx+0xc], eax
	jl _Z28SV_GetCachedSnapshotInternali_20
	mov eax, [edx+0x8246aa8]
	sub eax, 0x1000
	cmp [ecx+0x14], eax
	jge _Z28SV_GetCachedSnapshotInternali_80
_Z28SV_GetCachedSnapshotInternali_20:
	mov edx, edi
	and edx, 0x81ffffff
	js _Z28SV_GetCachedSnapshotInternali_90
	mov ecx, 0x2000000
	sub ecx, edx
	mov ebx, [ebp-0x54]
	mov eax, [ebx+0x4]
	cmp ecx, eax
	jl _Z28SV_GetCachedSnapshotInternali_100
_Z28SV_GetCachedSnapshotInternali_310:
	mov [esp+0x8], eax
	mov ecx, [ebp-0x68]
	lea eax, [ecx+edx+svs+0x479a620]
	mov [esp+0x4], eax
	lea ebx, [ebp-0x40]
	mov [esp], ebx
	call _Z16MSG_InitReadOnlyP5msg_tPhi
_Z28SV_GetCachedSnapshotInternali_200:
	lea edx, [ebp-0x40]
	mov [esp], edx
	call _Z16MSG_BeginReadingP5msg_t
	lea ecx, [ebp-0x40]
	mov [esp], ecx
	call _Z11MSG_ReadBitP5msg_t
	test eax, eax
	jz _Z28SV_GetCachedSnapshotInternali_110
	mov ebx, svs
	mov edx, [ebx+0x8246aac]
	and edx, 0x800001ff
	js _Z28SV_GetCachedSnapshotInternali_120
_Z28SV_GetCachedSnapshotInternali_320:
	lea eax, [edx*4]
	shl edx, 0x5
	sub edx, eax
	add edx, ebx
	mov [ebp-0x60], edx
	mov eax, [ebp-0x64]
	mov [edx], eax
	mov dword [edx+0x8], 0x0
	mov eax, [ebx+0x8246aa4]
	mov [edx+0xc], eax
	mov dword [edx+0x10], 0x0
	mov eax, [ebx+0x8246aa8]
	mov [edx+0x14], eax
	mov dword [edx+0x18], 0x0
	lea edx, [ebp-0x40]
	mov [esp], edx
	call _Z12MSG_ReadLongP5msg_t
	mov ecx, [ebp-0x60]
	mov [ecx+0x4], eax
	lea eax, [ebp-0x40]
	mov [esp], eax
	call _Z29MSG_ClearLastReferencedEntityP5msg_t
	mov esi, ebx
	jmp _Z28SV_GetCachedSnapshotInternali_130
_Z28SV_GetCachedSnapshotInternali_180:
	mov ecx, [esi+0x8246aa8]
	and ecx, 0x80000fff
	js _Z28SV_GetCachedSnapshotInternali_140
_Z28SV_GetCachedSnapshotInternali_190:
	lea edx, [ecx+ecx*2]
	mov eax, edx
	shl eax, 0x8
	sub eax, edx
	shl eax, 0x2
	sub eax, ecx
	lea ebx, [esi+eax*4+svs+0x679a600]
	mov [esp+0x10], edi
	lea eax, [ebx+0x34]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x0
	mov edx, [ebp-0x60]
	mov eax, [edx+0x4]
	mov [esp+0x4], eax
	lea ecx, [ebp-0x40]
	mov [esp], ecx
	call _Z19MSG_ReadDeltaClientP5msg_tiPK13clientState_sPS1_i
	lea eax, [ebp-0x40]
	mov [esp], eax
	call _Z11MSG_ReadBitP5msg_t
	mov [ebx+0x30], eax
	test eax, eax
	jnz _Z28SV_GetCachedSnapshotInternali_150
_Z28SV_GetCachedSnapshotInternali_220:
	mov eax, [esi+0x8246aa8]
	add eax, 0x1
	mov [esi+0x8246aa8], eax
	cmp eax, 0x7ffffffd
	jg _Z28SV_GetCachedSnapshotInternali_160
_Z28SV_GetCachedSnapshotInternali_210:
	mov ebx, [ebp-0x60]
	add dword [ebx+0x10], 0x1
_Z28SV_GetCachedSnapshotInternali_130:
	lea edx, [ebp-0x40]
	mov [esp], edx
	call _Z11MSG_ReadBitP5msg_t
	test eax, eax
	jz _Z28SV_GetCachedSnapshotInternali_170
	mov dword [esp+0x4], 0x6
	lea ecx, [ebp-0x40]
	mov [esp], ecx
	call _Z19MSG_ReadEntityIndexP5msg_ti
	mov edi, eax
	mov ebx, [ebp-0x40]
	test ebx, ebx
	jz _Z28SV_GetCachedSnapshotInternali_180
	mov dword [esp+0x4], _cstring_sv_getcachedsnap
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	mov ecx, [esi+0x8246aa8]
	and ecx, 0x80000fff
	jns _Z28SV_GetCachedSnapshotInternali_190
_Z28SV_GetCachedSnapshotInternali_140:
	sub ecx, 0x1
	or ecx, 0xfffff000
	add ecx, 0x1
	jmp _Z28SV_GetCachedSnapshotInternali_190
_Z28SV_GetCachedSnapshotInternali_100:
	sub eax, ecx
	mov [esp+0x10], eax
	mov eax, [ebp-0x68]
	add eax, 0x6246aa0
	mov [esp+0xc], eax
	mov [esp+0x8], ecx
	lea eax, [edx+eax]
	mov [esp+0x4], eax
	lea eax, [ebp-0x40]
	mov [esp], eax
	call _Z21MSG_InitReadOnlySplitP5msg_tPhiS1_i
	jmp _Z28SV_GetCachedSnapshotInternali_200
_Z28SV_GetCachedSnapshotInternali_160:
	mov dword [esp+0x4], _cstring_svsnextcachedsna
	mov dword [esp], 0x1
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z28SV_GetCachedSnapshotInternali_210
_Z28SV_GetCachedSnapshotInternali_150:
	mov dword [esp+0x14], 0x0
	lea eax, [ebx+0x98]
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x0
	mov edx, [ebp-0x60]
	mov eax, [edx+0x4]
	mov [esp+0x8], eax
	lea ecx, [ebp-0x40]
	mov [esp+0x4], ecx
	mov dword [esp], 0x0
	call _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h
	jmp _Z28SV_GetCachedSnapshotInternali_220
_Z28SV_GetCachedSnapshotInternali_170:
	lea eax, [ebp-0x40]
	mov [esp], eax
	call _Z29MSG_ClearLastReferencedEntityP5msg_t
	mov esi, svs
	jmp _Z28SV_GetCachedSnapshotInternali_230
_Z28SV_GetCachedSnapshotInternali_270:
	mov [esp+0x10], ebx
	mov eax, [esi+0x8246aa4]
	and eax, 0x80003fff
	js _Z28SV_GetCachedSnapshotInternali_240
_Z28SV_GetCachedSnapshotInternali_280:
	lea edx, [eax+eax*4]
	lea eax, [edx*8]
	sub eax, edx
	lea eax, [esi+eax*8+0x3800]
	mov [esp+0xc], eax
	lea eax, [ebx+ebx*2]
	shl eax, 0x4
	sub eax, ebx
	lea eax, [eax*8+0x1b30]
	add eax, sv
	add eax, 0x4
	mov [esp+0x8], eax
	mov ecx, [ebp-0x60]
	mov eax, [ecx+0x4]
	mov [esp+0x4], eax
	lea ebx, [ebp-0x40]
	mov [esp], ebx
	call _Z27MSG_ReadDeltaArchivedEntityP5msg_tiPK16archivedEntity_sPS1_i
	mov eax, [esi+0x8246aa4]
	add eax, 0x1
	mov [esi+0x8246aa4], eax
	cmp eax, 0x7ffffffd
	jg _Z28SV_GetCachedSnapshotInternali_250
_Z28SV_GetCachedSnapshotInternali_290:
	mov eax, [ebp-0x60]
	add dword [eax+0x8], 0x1
_Z28SV_GetCachedSnapshotInternali_230:
	mov dword [esp+0x4], 0xa
	lea edx, [ebp-0x40]
	mov [esp], edx
	call _Z19MSG_ReadEntityIndexP5msg_ti
	mov ebx, eax
	cmp eax, 0x3ff
	jz _Z28SV_GetCachedSnapshotInternali_260
	mov ecx, [ebp-0x40]
	test ecx, ecx
	jz _Z28SV_GetCachedSnapshotInternali_270
	mov dword [esp+0x4], _cstring_sv_getcachedsnap
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	mov [esp+0x10], ebx
	mov eax, [esi+0x8246aa4]
	and eax, 0x80003fff
	jns _Z28SV_GetCachedSnapshotInternali_280
_Z28SV_GetCachedSnapshotInternali_240:
	sub eax, 0x1
	or eax, 0xffffc000
	add eax, 0x1
	jmp _Z28SV_GetCachedSnapshotInternali_280
_Z28SV_GetCachedSnapshotInternali_250:
	mov dword [esp+0x4], _cstring_svsnextcachedsna1
	mov dword [esp], 0x1
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z28SV_GetCachedSnapshotInternali_290
_Z28SV_GetCachedSnapshotInternali_260:
	mov eax, svs
	mov edx, [eax+0x8246aac]
	add edx, 0x1
	mov [eax+0x8246aac], edx
	cmp edx, 0x7ffffffd
	jle _Z28SV_GetCachedSnapshotInternali_80
	mov dword [esp+0x4], _cstring_svsnextcachedsna2
	mov dword [esp], 0x1
	call _Z9Com_Error11errorParm_tPKcz
_Z28SV_GetCachedSnapshotInternali_80:
	mov eax, [ebp-0x60]
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z28SV_GetCachedSnapshotInternali_110:
	lea ebx, [ebp-0x40]
	mov [esp], ebx
	call _Z12MSG_ReadLongP5msg_t
	mov ecx, eax
	mov ebx, svs
	mov eax, [ebx+0x624451c]
	sub eax, 0x4b0
	cmp ecx, eax
	jge _Z28SV_GetCachedSnapshotInternali_300
_Z28SV_GetCachedSnapshotInternali_10:
	mov dword [ebp-0x60], 0x0
	mov eax, [ebp-0x60]
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z28SV_GetCachedSnapshotInternali_90:
	sub edx, 0x1
	or edx, 0xfe000000
	add edx, 0x1
	mov ecx, 0x2000000
	sub ecx, edx
	mov ebx, [ebp-0x54]
	mov eax, [ebx+0x4]
	cmp ecx, eax
	jl _Z28SV_GetCachedSnapshotInternali_100
	jmp _Z28SV_GetCachedSnapshotInternali_310
_Z28SV_GetCachedSnapshotInternali_120:
	sub edx, 0x1
	or edx, 0xfffffe00
	add edx, 0x1
	jmp _Z28SV_GetCachedSnapshotInternali_320
_Z28SV_GetCachedSnapshotInternali_50:
	mov ecx, [ebp-0x60]
	jmp _Z28SV_GetCachedSnapshotInternali_330
_Z28SV_GetCachedSnapshotInternali_30:
	sub edx, 0x1
	or edx, 0xfffffe00
	add edx, 0x1
	jmp _Z28SV_GetCachedSnapshotInternali_340
_Z28SV_GetCachedSnapshotInternali_300:
	mov edx, 0x1b4e81b5
	mov eax, ecx
	imul edx
	sar edx, 0x7
	mov eax, ecx
	sar eax, 0x1f
	sub edx, eax
	lea edx, [edx+edx*4]
	mov eax, edx
	shl eax, 0x4
	sub eax, edx
	shl eax, 0x4
	mov edx, ecx
	sub edx, eax
	mov eax, [ebx+0x8246aa0]
	sub eax, 0x2000000
	cmp [ebx+edx*8+svs+0x47980a0], eax
	jl _Z28SV_GetCachedSnapshotInternali_10
	mov eax, ecx
	call _Z28SV_GetCachedSnapshotInternali_350
	mov [ebp-0x5c], eax
	test eax, eax
	jz _Z28SV_GetCachedSnapshotInternali_10
	mov edx, [ebx+0x8246aac]
	and edx, 0x800001ff
	jns _Z28SV_GetCachedSnapshotInternali_360
	sub edx, 0x1
	or edx, 0xfffffe00
	add edx, 0x1
_Z28SV_GetCachedSnapshotInternali_360:
	lea eax, [edx*4]
	shl edx, 0x5
	sub edx, eax
	add edx, ebx
	mov [ebp-0x60], edx
	mov ecx, [ebp-0x64]
	mov [edx], ecx
	mov dword [edx+0x8], 0x0
	mov eax, [ebx+0x8246aa4]
	mov [edx+0xc], eax
	mov dword [edx+0x10], 0x0
	mov eax, [ebx+0x8246aa8]
	mov [edx+0x14], eax
	mov dword [edx+0x18], 0x1
	lea eax, [ebp-0x40]
	mov [esp], eax
	call _Z12MSG_ReadLongP5msg_t
	mov edx, [ebp-0x60]
	mov [edx+0x4], eax
	mov ecx, [ebp-0x5c]
	mov eax, [ecx+0x10]
	test eax, eax
	jle _Z28SV_GetCachedSnapshotInternali_370
	mov eax, [ebp-0x5c]
	mov ecx, [eax+0x14]
	and ecx, 0x80000fff
	jns _Z28SV_GetCachedSnapshotInternali_380
	sub ecx, 0x1
	or ecx, 0xfffff000
	add ecx, 0x1
_Z28SV_GetCachedSnapshotInternali_380:
	lea edx, [ecx+ecx*2]
	mov eax, edx
	shl eax, 0x8
	sub eax, edx
	shl eax, 0x2
	sub eax, ecx
	lea eax, [ebx+eax*4+svs+0x679a630]
	mov [ebp-0x58], eax
	mov edi, [eax+0x4]
_Z28SV_GetCachedSnapshotInternali_600:
	lea edx, [ebp-0x40]
	mov [esp], edx
	call _Z29MSG_ClearLastReferencedEntityP5msg_t
	mov dword [ebp-0x50], 0x0
_Z28SV_GetCachedSnapshotInternali_510:
	lea ecx, [ebp-0x40]
	mov [esp], ecx
	call _Z11MSG_ReadBitP5msg_t
	test eax, eax
	jz _Z28SV_GetCachedSnapshotInternali_390
	mov dword [esp+0x4], 0x6
	lea ebx, [ebp-0x40]
	mov [esp], ebx
	call _Z19MSG_ReadEntityIndexP5msg_ti
	mov esi, eax
	mov eax, [ebp-0x40]
	test eax, eax
	jnz _Z28SV_GetCachedSnapshotInternali_400
_Z28SV_GetCachedSnapshotInternali_590:
	cmp edi, esi
	jge _Z28SV_GetCachedSnapshotInternali_410
	mov eax, [ebp-0x5c]
	mov eax, [eax+0x10]
	mov [ebp-0x4c], eax
	mov edx, svs
	mov [ebp-0x68], edx
	mov ebx, [ebp-0x50]
	mov ecx, [ebp-0x5c]
	add ebx, [ecx+0x14]
	jmp _Z28SV_GetCachedSnapshotInternali_420
_Z28SV_GetCachedSnapshotInternali_440:
	mov edi, 0x1869f
_Z28SV_GetCachedSnapshotInternali_460:
	cmp esi, edi
	jle _Z28SV_GetCachedSnapshotInternali_430
	mov eax, [ebp-0x4c]
_Z28SV_GetCachedSnapshotInternali_420:
	add dword [ebp-0x50], 0x1
	add ebx, 0x1
	cmp [ebp-0x50], eax
	jge _Z28SV_GetCachedSnapshotInternali_440
	mov ecx, ebx
	and ecx, 0x80000fff
	js _Z28SV_GetCachedSnapshotInternali_450
_Z28SV_GetCachedSnapshotInternali_520:
	lea edx, [ecx+ecx*2]
	mov eax, edx
	shl eax, 0x8
	sub eax, edx
	shl eax, 0x2
	sub eax, ecx
	mov edx, [ebp-0x68]
	lea eax, [edx+eax*4+svs+0x679a630]
	mov [ebp-0x58], eax
	mov edi, [eax+0x4]
	jmp _Z28SV_GetCachedSnapshotInternali_460
_Z28SV_GetCachedSnapshotInternali_410:
	mov ecx, svs
	mov [ebp-0x68], ecx
_Z28SV_GetCachedSnapshotInternali_430:
	cmp esi, edi
	jz _Z28SV_GetCachedSnapshotInternali_470
	mov ebx, [ebp-0x68]
	mov ecx, [ebx+0x8246aa8]
	and ecx, 0x80000fff
	jns _Z28SV_GetCachedSnapshotInternali_480
	sub ecx, 0x1
	or ecx, 0xfffff000
	add ecx, 0x1
_Z28SV_GetCachedSnapshotInternali_480:
	lea edx, [ecx+ecx*2]
	mov eax, edx
	shl eax, 0x8
	sub eax, edx
	shl eax, 0x2
	sub eax, ecx
	mov edx, [ebp-0x68]
	lea ebx, [edx+eax*4+svs+0x679a600]
	mov [esp+0x10], esi
	lea eax, [ebx+0x34]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x0
	mov ecx, [ebp-0x60]
	mov eax, [ecx+0x4]
	mov [esp+0x4], eax
	lea eax, [ebp-0x40]
	mov [esp], eax
	call _Z19MSG_ReadDeltaClientP5msg_tiPK13clientState_sPS1_i
	lea edx, [ebp-0x40]
	mov [esp], edx
	call _Z11MSG_ReadBitP5msg_t
	mov [ebx+0x30], eax
	test eax, eax
	jz _Z28SV_GetCachedSnapshotInternali_490
	mov dword [esp+0x14], 0x0
	lea eax, [ebx+0x98]
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x0
	mov ecx, [ebp-0x60]
	mov eax, [ecx+0x4]
	mov [esp+0x8], eax
	lea ebx, [ebp-0x40]
	mov [esp+0x4], ebx
	mov dword [esp], 0x0
	call _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h
_Z28SV_GetCachedSnapshotInternali_490:
	mov edx, [ebp-0x68]
	mov eax, [edx+0x8246aa8]
	add eax, 0x1
	mov [edx+0x8246aa8], eax
	cmp eax, 0x7ffffffd
	jle _Z28SV_GetCachedSnapshotInternali_500
	mov dword [esp+0x4], _cstring_svsnextcachedsna
	mov dword [esp], 0x1
	call _Z9Com_Error11errorParm_tPKcz
_Z28SV_GetCachedSnapshotInternali_500:
	mov ecx, [ebp-0x60]
	add dword [ecx+0x10], 0x1
	jmp _Z28SV_GetCachedSnapshotInternali_510
_Z28SV_GetCachedSnapshotInternali_450:
	sub ecx, 0x1
	or ecx, 0xfffff000
	add ecx, 0x1
	jmp _Z28SV_GetCachedSnapshotInternali_520
_Z28SV_GetCachedSnapshotInternali_470:
	mov ebx, [ebp-0x68]
	mov ecx, [ebx+0x8246aa8]
	and ecx, 0x80000fff
	js _Z28SV_GetCachedSnapshotInternali_530
_Z28SV_GetCachedSnapshotInternali_610:
	lea edx, [ecx+ecx*2]
	mov eax, edx
	shl eax, 0x8
	sub eax, edx
	shl eax, 0x2
	sub eax, ecx
	mov edx, [ebp-0x68]
	lea ebx, [edx+eax*4+svs+0x679a600]
	mov [esp+0x10], esi
	lea eax, [ebx+0x34]
	mov [esp+0xc], eax
	mov eax, [ebp-0x58]
	add eax, 0x4
	mov [esp+0x8], eax
	mov ecx, [ebp-0x60]
	mov eax, [ecx+0x4]
	mov [esp+0x4], eax
	lea eax, [ebp-0x40]
	mov [esp], eax
	call _Z19MSG_ReadDeltaClientP5msg_tiPK13clientState_sPS1_i
	lea edx, [ebp-0x40]
	mov [esp], edx
	call _Z11MSG_ReadBitP5msg_t
	mov [ebx+0x30], eax
	test eax, eax
	jz _Z28SV_GetCachedSnapshotInternali_540
	mov ecx, [ebp-0x58]
	mov eax, [ecx]
	test eax, eax
	jz _Z28SV_GetCachedSnapshotInternali_550
	mov dword [esp+0x14], 0x0
	lea eax, [ebx+0x98]
	mov [esp+0x10], eax
	mov eax, ecx
	add eax, 0x68
	mov [esp+0xc], eax
	mov ebx, [ebp-0x60]
	mov eax, [ebx+0x4]
	mov [esp+0x8], eax
	lea eax, [ebp-0x40]
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h
_Z28SV_GetCachedSnapshotInternali_540:
	mov ebx, svs
	mov eax, [ebx+0x8246aa8]
	add eax, 0x1
	mov [ebx+0x8246aa8], eax
	cmp eax, 0x7ffffffd
	jg _Z28SV_GetCachedSnapshotInternali_560
_Z28SV_GetCachedSnapshotInternali_620:
	mov eax, [ebp-0x60]
	add dword [eax+0x10], 0x1
	add dword [ebp-0x50], 0x1
	mov ecx, [ebp-0x50]
	mov edx, [ebp-0x5c]
	cmp ecx, [edx+0x10]
	jge _Z28SV_GetCachedSnapshotInternali_570
	mov eax, ecx
	add eax, [edx+0x14]
	mov ecx, eax
	and ecx, 0x80000fff
	js _Z28SV_GetCachedSnapshotInternali_580
_Z28SV_GetCachedSnapshotInternali_690:
	lea edx, [ecx+ecx*2]
	mov eax, edx
	shl eax, 0x8
	sub eax, edx
	shl eax, 0x2
	sub eax, ecx
	lea eax, [ebx+eax*4+svs+0x679a630]
	mov [ebp-0x58], eax
	mov edi, [eax+0x4]
	jmp _Z28SV_GetCachedSnapshotInternali_510
_Z28SV_GetCachedSnapshotInternali_400:
	mov dword [esp+0x4], _cstring_sv_getcachedsnap
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z28SV_GetCachedSnapshotInternali_590
_Z28SV_GetCachedSnapshotInternali_570:
	mov edi, 0x1869f
	jmp _Z28SV_GetCachedSnapshotInternali_510
_Z28SV_GetCachedSnapshotInternali_370:
	mov dword [ebp-0x58], 0x0
	mov edi, 0x1869f
	jmp _Z28SV_GetCachedSnapshotInternali_600
_Z28SV_GetCachedSnapshotInternali_550:
	mov dword [esp+0x14], 0x0
	lea eax, [ebx+0x98]
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x0
	mov edx, [ebp-0x60]
	mov eax, [edx+0x4]
	mov [esp+0x8], eax
	lea ecx, [ebp-0x40]
	mov [esp+0x4], ecx
	mov dword [esp], 0x0
	call _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h
	jmp _Z28SV_GetCachedSnapshotInternali_540
_Z28SV_GetCachedSnapshotInternali_530:
	sub ecx, 0x1
	or ecx, 0xfffff000
	add ecx, 0x1
	jmp _Z28SV_GetCachedSnapshotInternali_610
_Z28SV_GetCachedSnapshotInternali_560:
	mov dword [esp+0x4], _cstring_svsnextcachedsna
	mov dword [esp], 0x1
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z28SV_GetCachedSnapshotInternali_620
_Z28SV_GetCachedSnapshotInternali_390:
	lea ebx, [ebp-0x40]
	mov [esp], ebx
	call _Z29MSG_ClearLastReferencedEntityP5msg_t
	mov esi, svs
	jmp _Z28SV_GetCachedSnapshotInternali_630
_Z28SV_GetCachedSnapshotInternali_660:
	mov [esp+0x10], ebx
	mov eax, [esi+0x8246aa4]
	and eax, 0x80003fff
	js _Z28SV_GetCachedSnapshotInternali_640
_Z28SV_GetCachedSnapshotInternali_680:
	lea edx, [eax+eax*4]
	lea eax, [edx*8]
	sub eax, edx
	lea eax, [esi+eax*8+0x3800]
	mov [esp+0xc], eax
	lea eax, [ebx+ebx*2]
	shl eax, 0x4
	sub eax, ebx
	lea eax, [eax*8+0x1b30]
	add eax, sv
	add eax, 0x4
	mov [esp+0x8], eax
	mov edx, [ebp-0x60]
	mov eax, [edx+0x4]
	mov [esp+0x4], eax
	lea ecx, [ebp-0x40]
	mov [esp], ecx
	call _Z27MSG_ReadDeltaArchivedEntityP5msg_tiPK16archivedEntity_sPS1_i
	mov eax, [esi+0x8246aa4]
	add eax, 0x1
	mov [esi+0x8246aa4], eax
	cmp eax, 0x7ffffffd
	jg _Z28SV_GetCachedSnapshotInternali_650
_Z28SV_GetCachedSnapshotInternali_670:
	mov ebx, [ebp-0x60]
	add dword [ebx+0x8], 0x1
_Z28SV_GetCachedSnapshotInternali_630:
	mov dword [esp+0x4], 0xa
	lea eax, [ebp-0x40]
	mov [esp], eax
	call _Z19MSG_ReadEntityIndexP5msg_ti
	mov ebx, eax
	cmp eax, 0x3ff
	jz _Z28SV_GetCachedSnapshotInternali_260
	mov edi, [ebp-0x40]
	test edi, edi
	jz _Z28SV_GetCachedSnapshotInternali_660
	mov dword [esp+0x4], _cstring_sv_getcachedsnap
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z28SV_GetCachedSnapshotInternali_660
_Z28SV_GetCachedSnapshotInternali_650:
	mov dword [esp+0x4], _cstring_svsnextcachedsna1
	mov dword [esp], 0x1
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z28SV_GetCachedSnapshotInternali_670
_Z28SV_GetCachedSnapshotInternali_640:
	sub eax, 0x1
	or eax, 0xffffc000
	add eax, 0x1
	jmp _Z28SV_GetCachedSnapshotInternali_680
_Z28SV_GetCachedSnapshotInternali_580:
	sub ecx, 0x1
	or ecx, 0xfffff000
	add ecx, 0x1
	jmp _Z28SV_GetCachedSnapshotInternali_690
	nop


;SV_EndClientSnapshot(client_t*, msg_t*)
_Z20SV_EndClientSnapshotP8client_tP5msg_t:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0xc]
	cmp dword [ebx], 0x1
	jz _Z20SV_EndClientSnapshotP8client_tP5msg_t_10
	mov [esp+0x4], esi
	mov [esp], ebx
	call _Z24SV_WriteDownloadToClientP8client_tP5msg_t
_Z20SV_EndClientSnapshotP8client_tP5msg_t_10:
	mov dword [esp+0x4], 0x7
	mov [esp], esi
	call _Z13MSG_WriteByteP5msg_ti
	mov ecx, [esi]
	test ecx, ecx
	jnz _Z20SV_EndClientSnapshotP8client_tP5msg_t_20
_Z20SV_EndClientSnapshotP8client_tP5msg_t_50:
	cmp dword [ebx+0x20], 0x2
	jz _Z20SV_EndClientSnapshotP8client_tP5msg_t_30
	mov eax, [esi+0x14]
	mov [esp], eax
	call _Z20SV_TrackSnapshotSizei
_Z20SV_EndClientSnapshotP8client_tP5msg_t_30:
	mov [ebp+0xc], ebx
	mov [ebp+0x8], esi
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z22SV_SendMessageToClientP5msg_tP8client_t
_Z20SV_EndClientSnapshotP8client_tP5msg_t_20:
	lea eax, [ebx+0x21288]
	mov [ebp-0x34], eax
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_warning_msg_over
	mov dword [esp], 0xf
	call _Z16Com_PrintWarningiPKcz
	mov eax, [ebx]
	cmp eax, 0x4
	jz _Z20SV_EndClientSnapshotP8client_tP5msg_t_40
	sub eax, 0x1
	jz _Z20SV_EndClientSnapshotP8client_tP5msg_t_40
	mov edx, [esi]
	test edx, edx
	jz _Z20SV_EndClientSnapshotP8client_tP5msg_t_50
_Z20SV_EndClientSnapshotP8client_tP5msg_t_90:
	mov eax, [ebp-0x34]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_warning_client_d
	mov dword [esp], 0xf
	call _Z16Com_PrintWarningiPKcz
	mov ecx, [ebx+0x20]
	mov [ebp-0x24], ecx
	mov edx, [ebx+0x24]
	mov [ebp-0x20], edx
	mov eax, [ebx+0x28]
	mov [ebp-0x1c], eax
	mov dword [esp+0x10], _cstring_disconnect
	mov [esp+0x4], ecx
	mov [esp+0x8], edx
	mov [esp+0xc], eax
	mov dword [esp], 0x1
	call _Z18NET_OutOfBandPrint8netsrc_t8netadr_tPKc
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], _cstring_exe_servermessag
	mov [esp], ebx
	call _Z13SV_DropClientP8client_tPKch
	jmp _Z20SV_EndClientSnapshotP8client_tP5msg_t_50
_Z20SV_EndClientSnapshotP8client_tP5msg_t_40:
	mov eax, svs
	add eax, 0x46380c
	mov edx, [ebp-0x34]
	mov [esp+0xc], edx
	mov edx, ebx
	sub edx, eax
	mov eax, edx
	sar eax, 0x2
	imul eax, eax, 0x4315b545
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring__unacknowledged_
	mov dword [esp], 0xf
	call _Z10Com_PrintfiPKcz
	mov edi, [ebx+0x20e4c]
	add edi, 0x1
	cmp [ebx+0x20e48], edi
	jge _Z20SV_EndClientSnapshotP8client_tP5msg_t_60
_Z20SV_EndClientSnapshotP8client_tP5msg_t_100:
	mov dword [esp+0x4], _cstring_
	mov dword [esp], 0xf
	call _Z10Com_PrintfiPKcz
	mov dword [esp+0x8], 0x20000
	mov dword [esp+0x4], tempSnapshotMsgBuf
	mov [esp], esi
	call _Z8MSG_InitP5msg_tPhi
	mov eax, [ebx+0x20e80]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z13MSG_WriteLongP5msg_ti
	mov eax, [ebx+0x20e4c]
	add eax, 0x1
	mov [ebp-0x2c], eax
	cmp eax, [ebx+0x20e48]
	jle _Z20SV_EndClientSnapshotP8client_tP5msg_t_70
_Z20SV_EndClientSnapshotP8client_tP5msg_t_140:
	sub eax, 0x1
	cmp eax, [ebx+0x20e50]
	jle _Z20SV_EndClientSnapshotP8client_tP5msg_t_80
	mov [ebx+0x20e50], eax
_Z20SV_EndClientSnapshotP8client_tP5msg_t_80:
	mov dword [esp+0x4], 0x7
	mov [esp], esi
	call _Z13MSG_WriteByteP5msg_ti
	mov edx, [esi]
	test edx, edx
	jz _Z20SV_EndClientSnapshotP8client_tP5msg_t_50
	jmp _Z20SV_EndClientSnapshotP8client_tP5msg_t_90
_Z20SV_EndClientSnapshotP8client_tP5msg_t_60:
	mov eax, edi
	and eax, 0x7f
	mov edx, eax
	shl edx, 0xa
	lea eax, [edx+eax*8]
	lea edx, [eax+ebx+0xa48]
	mov [esp+0x10], edx
	mov eax, [eax+ebx+0xe48]
	mov [esp+0xc], eax
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_cmd_5d_8d_s
	mov dword [esp], 0xf
	call _Z10Com_PrintfiPKcz
	add edi, 0x1
	cmp edi, [ebx+0x20e48]
	jle _Z20SV_EndClientSnapshotP8client_tP5msg_t_60
	jmp _Z20SV_EndClientSnapshotP8client_tP5msg_t_100
_Z20SV_EndClientSnapshotP8client_tP5msg_t_70:
	mov eax, [ebp-0x2c]
	jmp _Z20SV_EndClientSnapshotP8client_tP5msg_t_110
_Z20SV_EndClientSnapshotP8client_tP5msg_t_130:
	mov eax, edx
_Z20SV_EndClientSnapshotP8client_tP5msg_t_110:
	and eax, 0x7f
	mov edx, eax
	shl edx, 0xa
	lea eax, [edx+eax*8+0xa40]
	lea eax, [ebx+eax+0x8]
	mov [ebp-0x30], eax
	cld
	mov ecx, 0xffffffff
	mov edi, eax
	xor eax, eax
	repne scasb
	not ecx
	mov eax, [esi+0x14]
	lea ecx, [ecx+eax+0x5]
	cmp ecx, 0x1ffff
	jg _Z20SV_EndClientSnapshotP8client_tP5msg_t_120
	mov dword [esp+0x4], 0x4
	mov [esp], esi
	call _Z13MSG_WriteByteP5msg_ti
	mov edx, [ebp-0x2c]
	mov [esp+0x4], edx
	mov [esp], esi
	call _Z13MSG_WriteLongP5msg_ti
	mov eax, [ebp-0x30]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z15MSG_WriteStringP5msg_tPKc
	add dword [ebp-0x2c], 0x1
	mov edx, [ebp-0x2c]
	cmp edx, [ebx+0x20e48]
	jle _Z20SV_EndClientSnapshotP8client_tP5msg_t_130
	mov eax, edx
	jmp _Z20SV_EndClientSnapshotP8client_tP5msg_t_140
_Z20SV_EndClientSnapshotP8client_tP5msg_t_120:
	mov eax, [ebp-0x2c]
	jmp _Z20SV_EndClientSnapshotP8client_tP5msg_t_140


;SV_SendClientMessages()
_Z21SV_SendClientMessagesv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xec
	mov eax, sv
	mov dword [eax+0x5fba0], 0x0
	mov dword [eax+0x5fbf8], 0x0
	cld
	mov ecx, 0x10
	xor eax, eax
	lea edi, [ebp-0x80]
	rep stosd
	mov eax, sv_maxclients
	mov eax, [eax]
	mov eax, [eax+0xc]
	mov [ebp-0xa0], eax
	test eax, eax
	jg _Z21SV_SendClientMessagesv_10
	mov dword [ebp-0xa4], 0x0
_Z21SV_SendClientMessagesv_240:
	call _Z24SV_SetServerStaticHeaderv
	mov eax, [ebp-0xa0]
	test eax, eax
	jle _Z21SV_SendClientMessagesv_20
	xor ebx, ebx
	mov esi, svs
	add esi, 0x46380c
	mov edi, svs
	add edi, 0x48468c
	jmp _Z21SV_SendClientMessagesv_30
_Z21SV_SendClientMessagesv_40:
	add ebx, 0x1
	add esi, 0xa5634
	add edi, 0xa5634
	cmp [ebp-0xa0], ebx
	jz _Z21SV_SendClientMessagesv_20
_Z21SV_SendClientMessagesv_30:
	cmp byte [ebx+ebp-0x80], 0x0
	jz _Z21SV_SendClientMessagesv_40
	mov dword [esp+0x8], 0x20000
	mov dword [esp+0x4], tempSnapshotMsgBuf
	lea edx, [ebp-0x40]
	mov [esp], edx
	call _Z8MSG_InitP5msg_tPhi
	lea eax, [ebp-0x40]
	mov [esp], eax
	call _Z29MSG_ClearLastReferencedEntityP5msg_t
	mov eax, [edi]
	mov [esp+0x4], eax
	lea edx, [ebp-0x40]
	mov [esp], edx
	call _Z13MSG_WriteLongP5msg_ti
	lea eax, [edi-0x20e80]
	mov [ebp-0x98], eax
	mov eax, [edi-0x20e80]
	cmp eax, 0x4
	jz _Z21SV_SendClientMessagesv_50
	sub eax, 0x1
	jz _Z21SV_SendClientMessagesv_50
_Z21SV_SendClientMessagesv_160:
	mov edx, [ebp-0x98]
	mov eax, [edx]
	cmp eax, 0x4
	jz _Z21SV_SendClientMessagesv_60
	sub eax, 0x1
	jz _Z21SV_SendClientMessagesv_60
_Z21SV_SendClientMessagesv_150:
	lea edx, [ebp-0x40]
	mov [esp+0x4], edx
	mov [esp], esi
	call _Z20SV_EndClientSnapshotP8client_tP5msg_t
	mov [esp], esi
	call _Z22SV_SendClientVoiceDataP8client_t
	add ebx, 0x1
	add esi, 0xa5634
	add edi, 0xa5634
	cmp [ebp-0xa0], ebx
	jnz _Z21SV_SendClientMessagesv_30
_Z21SV_SendClientMessagesv_20:
	mov eax, sv_showAverageBPS
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z21SV_SendClientMessagesv_70
	mov edi, [ebp-0xa4]
	test edi, edi
	jle _Z21SV_SendClientMessagesv_70
	pxor xmm2, xmm2
	movaps xmm1, xmm2
	mov esi, sv
	mov edx, esi
	lea ecx, [esi+0x4c]
_Z21SV_SendClientMessagesv_80:
	mov eax, [edx+0x5fb50]
	mov [edx+0x5fb4c], eax
	cvtsi2ss xmm0, eax
	addss xmm1, xmm0
	mov eax, [edx+0x5fbac]
	mov [edx+0x5fba8], eax
	cvtsi2ss xmm0, eax
	addss xmm2, xmm0
	add edx, 0x4
	cmp ecx, edx
	jnz _Z21SV_SendClientMessagesv_80
	mov edx, [esi+0x5fba0]
	mov [esi+0x5fb98], edx
	cvtsi2ss xmm3, edx
	addss xmm3, xmm1
	mov eax, [esi+0x5fbf8]
	mov [esi+0x5fbf4], eax
	cvtsi2ss xmm4, eax
	addss xmm4, xmm2
	cmp edx, [esi+0x5fba4]
	jge _Z21SV_SendClientMessagesv_90
	cmp eax, [esi+0x5fbfc]
	jge _Z21SV_SendClientMessagesv_100
_Z21SV_SendClientMessagesv_330:
	mov eax, [esi+0x5fb9c]
	add eax, 0x1
	mov [esi+0x5fb9c], eax
	cmp eax, 0x13
	jle _Z21SV_SendClientMessagesv_110
_Z21SV_SendClientMessagesv_320:
	mov dword [esi+0x5fb9c], 0x0
	movss xmm0, dword [_float_20_00000000]
	divss xmm3, xmm0
	divss xmm4, xmm0
	movaps xmm0, xmm3
	divss xmm0, xmm4
	movss xmm1, dword [_float_1_00000000]
	subss xmm1, xmm0
	mulss xmm1, [_float_100_00000000]
	movaps xmm0, xmm1
	addss xmm0, [esi+0x5fc00]
	movss [esi+0x5fc00], xmm0
	mov eax, [esi+0x5fc04]
	add eax, 0x1
	mov [esi+0x5fc04], eax
	cvtsi2ss xmm2, eax
	divss xmm0, xmm2
	cvtss2sd xmm0, xmm0
	movsd [esp+0x30], xmm0
	cvtss2sd xmm1, xmm1
	movsd [esp+0x28], xmm1
	mov eax, [esi+0x5fbfc]
	mov [esp+0x24], eax
	cvtss2sd xmm4, xmm4
	movsd [esp+0x1c], xmm4
	mov eax, [esi+0x5fba4]
	mov [esp+0x18], eax
	cvtss2sd xmm0, xmm3
	movsd [esp+0x10], xmm0
	cvtsi2ss xmm0, dword [ebp-0xa4]
	divss xmm3, xmm0
	cvtss2sd xmm3, xmm3
	movsd [esp+0x8], xmm3
	mov dword [esp+0x4], _cstring_bpspc20f_bps20f_
	mov dword [esp], 0xf
	call _Z11Com_DPrintfiPKcz
	cmp dword [esi], 0x2
	jnz _Z21SV_SendClientMessagesv_120
_Z21SV_SendClientMessagesv_130:
	mov dword [esp+0x8], 0x20000
	mov eax, tempServerMsgBuf
	mov [esp+0x4], eax
	mov dword [esp], g_archiveMsg
	call _Z8MSG_InitP5msg_tPhi
	mov dword [esp], g_archiveMsg
	call _Z18SV_ArchiveSnapshotP5msg_t
	jmp _Z21SV_SendClientMessagesv_120
_Z21SV_SendClientMessagesv_70:
	mov esi, sv
_Z21SV_SendClientMessagesv_110:
	cmp dword [esi], 0x2
	jz _Z21SV_SendClientMessagesv_130
_Z21SV_SendClientMessagesv_120:
	mov ebx, svs
	mov eax, [svsHeader+0x44]
	mov [ebx+0x8246aac], eax
	mov eax, [svsHeader+0x4c]
	mov [ebx+0x8246aa4], eax
	mov eax, [svsHeader+0x50]
	mov [ebx+0x8246aa8], eax
	cmp dword [esi], 0x2
	jz _Z21SV_SendClientMessagesv_140
_Z21SV_SendClientMessagesv_310:
	add esp, 0xec
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z21SV_SendClientMessagesv_60:
	lea eax, [ebp-0x40]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z24SV_WriteSnapshotToClientP8client_tP5msg_t
	jmp _Z21SV_SendClientMessagesv_150
_Z21SV_SendClientMessagesv_50:
	lea edx, [ebp-0x40]
	mov [esp+0x4], edx
	mov [esp], esi
	call _Z31SV_UpdateServerCommandsToClientP8client_tP5msg_t
	jmp _Z21SV_SendClientMessagesv_160
_Z21SV_SendClientMessagesv_10:
	mov dword [ebp-0xa8], 0x0
	mov eax, svs
	add eax, 0x46380c
	mov [ebp-0x8c], eax
	mov dword [ebp-0xa4], 0x0
	mov ebx, eax
_Z21SV_SendClientMessagesv_230:
	mov edx, [ebx]
	test edx, edx
	jz _Z21SV_SendClientMessagesv_170
	mov eax, svs
	mov eax, [eax+0x463804]
	mov [ebp-0xac], eax
	lea eax, [ebx+0x2145c]
	mov [ebp-0x94], eax
	mov eax, [ebp-0xac]
	cmp eax, [ebx+0x2145c]
	jl _Z21SV_SendClientMessagesv_170
	add dword [ebp-0xa4], 0x1
	mov eax, [ebx+0x40]
	test eax, eax
	jz _Z21SV_SendClientMessagesv_180
	mov edi, [ebx+0x48]
	sub edi, [ebx+0x44]
	cmp edi, 0x5dc
	jle _Z21SV_SendClientMessagesv_190
	mov edi, 0x5dc
	mov dword [ebp-0x9c], 0x16e360
_Z21SV_SendClientMessagesv_260:
	lea edx, [ebx+0x804e8]
	mov [ebp-0x90], edx
	mov esi, [ebx+0x804e8]
	mov eax, sv_maxRate
	mov edx, [eax]
	mov eax, [edx+0xc]
	test eax, eax
	jz _Z21SV_SendClientMessagesv_200
	cmp eax, 0x3e7
	jle _Z21SV_SendClientMessagesv_210
_Z21SV_SendClientMessagesv_350:
	mov eax, [edx+0xc]
	cmp esi, eax
	cmovg esi, eax
_Z21SV_SendClientMessagesv_200:
	mov edx, [ebp-0x9c]
	add edx, 0xbb80
	mov eax, edx
	cdq
	idiv esi
	mov esi, eax
	mov eax, sv_debugRate
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z21SV_SendClientMessagesv_220
_Z21SV_SendClientMessagesv_360:
	mov eax, [ebp-0xac]
	add eax, esi
	mov edx, [ebp-0x94]
	mov [edx], eax
	mov eax, [ebp-0x8c]
	add eax, 0x10
	mov [esp+0x4], eax
	mov eax, [ebp-0x8c]
	mov [esp], eax
	call _Z31SV_Netchan_TransmitNextFragmentP8client_tP9netchan_t
_Z21SV_SendClientMessagesv_170:
	add dword [ebp-0xa8], 0x1
	add dword [ebp-0x8c], 0xa5634
	add ebx, 0xa5634
	mov eax, [ebp-0xa8]
	cmp [ebp-0xa0], eax
	jnz _Z21SV_SendClientMessagesv_230
	jmp _Z21SV_SendClientMessagesv_240
_Z21SV_SendClientMessagesv_180:
	mov eax, [ebp-0xa8]
	mov byte [eax+ebp-0x80], 0x1
	cmp edx, 0x4
	jz _Z21SV_SendClientMessagesv_250
	sub edx, 0x1
	jnz _Z21SV_SendClientMessagesv_170
_Z21SV_SendClientMessagesv_250:
	mov edx, [ebp-0x8c]
	mov [esp], edx
	call _Z22SV_BuildClientSnapshotP8client_t
	jmp _Z21SV_SendClientMessagesv_170
_Z21SV_SendClientMessagesv_190:
	lea eax, [edi+edi*4]
	lea eax, [eax+eax*4]
	lea eax, [eax+eax*4]
	shl eax, 0x3
	mov [ebp-0x9c], eax
	jmp _Z21SV_SendClientMessagesv_260
_Z21SV_SendClientMessagesv_140:
	mov esi, [g_archiveMsg]
	test esi, esi
	jnz _Z21SV_SendClientMessagesv_270
	mov ecx, [ebx+0x624451c]
	mov edx, 0x1b4e81b5
	mov eax, ecx
	imul edx
	sar edx, 0x7
	mov eax, ecx
	sar eax, 0x1f
	sub edx, eax
	lea edx, [edx+edx*4]
	mov eax, edx
	shl eax, 0x4
	sub eax, edx
	shl eax, 0x4
	sub ecx, eax
	lea ecx, [ebx+ecx*8+svs+0x4798080]
	mov eax, [ebx+0x8246aa0]
	mov [ecx+0x20], eax
	mov edx, [g_archiveMsg+0x14]
	mov [ecx+0x24], edx
	mov eax, [ebx+0x8246aa0]
	mov esi, eax
	and esi, 0x81ffffff
	js _Z21SV_SendClientMessagesv_280
_Z21SV_SendClientMessagesv_380:
	lea eax, [edx+eax]
	mov [ebx+0x8246aa0], eax
	cmp eax, 0x7ffffffd
	jg _Z21SV_SendClientMessagesv_290
_Z21SV_SendClientMessagesv_370:
	mov edi, 0x2000000
	sub edi, esi
	mov eax, [g_archiveMsg+0x14]
	cmp edi, eax
	jl _Z21SV_SendClientMessagesv_300
	lea edx, [ebx+esi+svs+0x479a620]
	mov [esp+0x8], eax
	mov eax, [g_archiveMsg+0x8]
	mov [esp+0x4], eax
	mov [esp], edx
	call memcpy
_Z21SV_SendClientMessagesv_340:
	mov eax, svs
	mov edx, [eax+0x624451c]
	add edx, 0x1
	mov [eax+0x624451c], edx
	cmp edx, 0x7ffffffd
	jle _Z21SV_SendClientMessagesv_310
	mov dword [esp+0x4], _cstring_svsnextarchiveds
	mov dword [esp], 0x1
	call _Z9Com_Error11errorParm_tPKcz
	add esp, 0xec
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z21SV_SendClientMessagesv_100:
	mov [esi+0x5fbfc], eax
	mov eax, [esi+0x5fb9c]
	add eax, 0x1
	mov [esi+0x5fb9c], eax
	cmp eax, 0x13
	jle _Z21SV_SendClientMessagesv_110
	jmp _Z21SV_SendClientMessagesv_320
_Z21SV_SendClientMessagesv_90:
	mov [esi+0x5fba4], edx
	cmp eax, [esi+0x5fbfc]
	jl _Z21SV_SendClientMessagesv_330
	jmp _Z21SV_SendClientMessagesv_100
_Z21SV_SendClientMessagesv_300:
	add ebx, 0x6246aa0
	lea edx, [esi+ebx]
	mov [esp+0x8], edi
	mov eax, [g_archiveMsg+0x8]
	mov [esp+0x4], eax
	mov [esp], edx
	call memcpy
	mov edx, [g_archiveMsg+0x14]
	sub edx, edi
	mov eax, edi
	add eax, [g_archiveMsg+0x8]
	mov [esp+0x8], edx
	mov [esp+0x4], eax
	mov [esp], ebx
	call memcpy
	jmp _Z21SV_SendClientMessagesv_340
_Z21SV_SendClientMessagesv_210:
	mov dword [esp+0x4], 0x3e8
	mov [esp], edx
	call _Z11Dvar_SetIntPK6dvar_si
	mov eax, sv_maxRate
	mov edx, [eax]
	jmp _Z21SV_SendClientMessagesv_350
_Z21SV_SendClientMessagesv_220:
	mov edx, [ebp-0x90]
	mov eax, [edx]
	mov [esp+0x14], eax
	mov eax, [ebp-0x8c]
	add eax, 0x21288
	mov [esp+0x10], eax
	mov [esp+0xc], edi
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_it_would_take_im
	mov dword [esp], 0xf
	call _Z10Com_PrintfiPKcz
	jmp _Z21SV_SendClientMessagesv_360
_Z21SV_SendClientMessagesv_270:
	mov dword [esp+0x4], _cstring_sv_archivesnapsh
	mov dword [esp], 0xf
	call _Z11Com_DPrintfiPKcz
	add esp, 0xec
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z21SV_SendClientMessagesv_290:
	mov dword [esp+0x4], _cstring_svsnextarchiveds1
	mov dword [esp], 0x1
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z21SV_SendClientMessagesv_370
_Z21SV_SendClientMessagesv_280:
	sub esi, 0x1
	or esi, 0xfe000000
	add esi, 0x1
	jmp _Z21SV_SendClientMessagesv_380
	add [eax], al


;SV_BeginClientSnapshot(client_t*, msg_t*)
_Z22SV_BeginClientSnapshotP8client_tP5msg_t:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	mov dword [esp+0x8], 0x20000
	mov dword [esp+0x4], tempSnapshotMsgBuf
	mov [esp], ebx
	call _Z8MSG_InitP5msg_tPhi
	mov [esp], ebx
	call _Z29MSG_ClearLastReferencedEntityP5msg_t
	mov eax, [esi+0x20e80]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z13MSG_WriteLongP5msg_ti
	mov eax, [esi]
	cmp eax, 0x4
	jz _Z22SV_BeginClientSnapshotP8client_tP5msg_t_10
	sub eax, 0x1
	jz _Z22SV_BeginClientSnapshotP8client_tP5msg_t_10
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z22SV_BeginClientSnapshotP8client_tP5msg_t_10:
	mov [ebp+0xc], ebx
	mov [ebp+0x8], esi
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp _Z31SV_UpdateServerCommandsToClientP8client_tP5msg_t


;SV_BuildClientSnapshot(client_t*)
_Z22SV_BuildClientSnapshotP8client_t:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x11cc
	mov ecx, [ebp+0x8]
	mov edx, [ecx+0x10]
	and edx, 0x1f
	lea eax, [edx+edx*2]
	shl eax, 0x5
	sub eax, edx
	shl eax, 0x5
	add eax, edx
	lea eax, [ecx+eax*4+0x21464]
	mov [ebp-0x1194], eax
	mov dword [eax+0x2f64], 0x0
	mov dword [eax+0x2f68], 0x0
	mov eax, [ecx+0x21284]
	test eax, eax
	jz _Z22SV_BuildClientSnapshotP8client_t_10
	cmp dword [ecx], 0x1
	jz _Z22SV_BuildClientSnapshotP8client_t_10
	mov esi, svs
	mov eax, [esi+0x2dbc514]
	mov edx, [ebp-0x1194]
	mov [edx+0x2f6c], eax
	mov eax, [esi+0x2dbc518]
	mov [edx+0x2f70], eax
	mov eax, sv
	cmp dword [eax], 0x2
	jz _Z22SV_BuildClientSnapshotP8client_t_20
_Z22SV_BuildClientSnapshotP8client_t_10:
	add esp, 0x11cc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z22SV_BuildClientSnapshotP8client_t_20:
	lea eax, [esi+0x46380c]
	sub ecx, eax
	sar ecx, 0x2
	imul ecx, ecx, 0x4315b545
	mov [ebp-0x1198], ecx
	mov [esp], ecx
	call _Z22G_GetClientArchiveTimei
	mov edi, eax
	test eax, eax
	jle _Z22SV_BuildClientSnapshotP8client_t_30
	mov ecx, [esi+0x624451c]
	mov [ebp-0x1144], ecx
	mov eax, sv_fps
	mov eax, [eax]
	mov eax, [eax+0xc]
	mov [ebp-0x1188], eax
	mov ecx, eax
	imul ecx, edi
	mov edx, 0x10624dd3
	mov eax, ecx
	imul edx
	sar edx, 0x6
	mov eax, ecx
	sar eax, 0x1f
	sub edx, eax
	mov ebx, [ebp-0x1144]
	sub ebx, edx
	mov ecx, [ebp-0x1144]
	sub ecx, 0x4b0
	cmp ebx, ecx
	jge _Z22SV_BuildClientSnapshotP8client_t_40
	mov eax, [ebp-0x1144]
	sub eax, ecx
	lea eax, [eax+eax*4]
	lea eax, [eax+eax*4]
	lea eax, [eax+eax*4]
	lea edx, [eax*8]
	mov eax, edx
	cdq
	idiv dword [ebp-0x1188]
	mov edi, eax
	mov ebx, ecx
_Z22SV_BuildClientSnapshotP8client_t_40:
	test ebx, ebx
	js _Z22SV_BuildClientSnapshotP8client_t_50
_Z22SV_BuildClientSnapshotP8client_t_430:
	cmp ebx, [ebp-0x1144]
	jl _Z22SV_BuildClientSnapshotP8client_t_60
_Z22SV_BuildClientSnapshotP8client_t_170:
	mov dword [ebp-0x1190], 0x0
	xor edi, edi
_Z22SV_BuildClientSnapshotP8client_t_160:
	mov [esp+0x4], edi
	mov edx, [ebp-0x1198]
	mov [esp], edx
	call _Z22G_SetClientArchiveTimeii
	mov edi, [ebp-0x1190]
	test edi, edi
	jz _Z22SV_BuildClientSnapshotP8client_t_70
	mov eax, svs
	mov eax, [eax+0x463804]
	mov [ebp-0x118c], eax
	mov ecx, [ebp-0x1190]
	mov ecx, [ecx+0x4]
	sub eax, ecx
	mov [ebp-0x118c], eax
_Z22SV_BuildClientSnapshotP8client_t_420:
	mov eax, [ebp-0x1198]
	mov [esp], eax
	call _Z16SV_GameClientNumi
	mov dword [esp+0x8], 0x2f64
	mov [esp+0x4], eax
	mov edx, [ebp-0x1194]
	mov [esp], edx
	call memcpy
	mov ecx, [ebp-0x1194]
	mov ecx, [ecx+0xdc]
	mov [ebp-0x113c], ecx
	cmp ecx, 0x3ff
	ja _Z22SV_BuildClientSnapshotP8client_t_80
_Z22SV_BuildClientSnapshotP8client_t_220:
	mov edx, [ebp-0x1194]
	add edx, 0x1c
	mov ecx, [ebp-0x1194]
	mov eax, [ecx+0x1c]
	mov [ebp-0x28], eax
	mov eax, [edx+0x4]
	mov [ebp-0x24], eax
	movss xmm0, dword [edx+0x8]
	movss [ebp-0x20], xmm0
	addss xmm0, [ecx+0x118]
	movss [ebp-0x20], xmm0
	mov dword [esp+0x10], 0x41a00000
	mov dword [esp+0xc], 0x41800000
	mov eax, [ecx+0x5c]
	mov [esp+0x8], eax
	mov eax, [ecx+0x10c]
	mov [esp+0x4], eax
	lea eax, [ebp-0x28]
	mov [esp], eax
	call _Z17AddLeanToPositionPfffff
	mov esi, [ebp-0x1190]
	test esi, esi
	jz _Z22SV_BuildClientSnapshotP8client_t_90
	mov eax, [ebp-0x1190]
	mov eax, [eax+0xc]
	mov [ebp-0x1170], eax
	mov edx, [ebp-0x1190]
	mov edx, [edx+0x8]
	mov [ebp-0x116c], edx
	lea ecx, [ebp-0x28]
	mov [esp], ecx
	call _Z15CM_PointLeafnumPKf
	mov [esp], eax
	call _Z14CM_LeafClusteri
	test eax, eax
	js _Z22SV_BuildClientSnapshotP8client_t_100
	mov [esp], eax
	call _Z13CM_ClusterPVSi
	mov [ebp-0x1160], eax
	call _Z22G_GetFogOpaqueDistSqrdv
	fstp dword [ebp-0x115c]
	movss xmm0, dword [ebp-0x115c]
	cmpss xmm0, [_float_3402823466385288598117041], 0x4
	movss xmm1, dword [ebp-0x115c]
	andps xmm1, xmm0
	pxor xmm0, xmm0
	orps xmm1, xmm0
	movss [ebp-0x115c], xmm1
	mov eax, [ebp-0x116c]
	test eax, eax
	jle _Z22SV_BuildClientSnapshotP8client_t_100
	mov eax, [ebp-0x113c]
	sar eax, 0x5
	mov [ebp-0x1158], eax
	mov edx, [ebp-0x113c]
	and edx, 0x1f
	mov [ebp-0x1154], edx
	xor ebx, ebx
	mov dword [ebp-0x1148], 0x0
	jmp _Z22SV_BuildClientSnapshotP8client_t_110
_Z22SV_BuildClientSnapshotP8client_t_150:
	lea eax, [eax+eax*4]
	lea edx, [eax*8]
	sub edx, eax
	lea edx, [edx*8+0x3800]
	add edx, svs
	mov ecx, [ebp-0x1158]
	mov eax, [edx+ecx*4+0xf8]
	movzx ecx, byte [ebp-0x1154]
	sar eax, cl
	test al, 0x1
	jnz _Z22SV_BuildClientSnapshotP8client_t_120
	mov eax, [ebp-0x113c]
	cmp eax, [edx]
	jz _Z22SV_BuildClientSnapshotP8client_t_120
	test byte [edx+0xf4], 0x18
	jz _Z22SV_BuildClientSnapshotP8client_t_130
	cmp dword [ebp-0x1148], 0x400
	jz _Z22SV_BuildClientSnapshotP8client_t_120
	mov edx, [ebp-0x1148]
	mov [ebp+edx*4-0x1128], ebx
	add edx, 0x1
	mov [ebp-0x1148], edx
_Z22SV_BuildClientSnapshotP8client_t_120:
	add ebx, 0x1
	cmp [ebp-0x116c], ebx
	jz _Z22SV_BuildClientSnapshotP8client_t_140
_Z22SV_BuildClientSnapshotP8client_t_110:
	mov ecx, [ebp-0x1170]
	lea eax, [ebx+ecx]
	and eax, 0x80003fff
	jns _Z22SV_BuildClientSnapshotP8client_t_150
	sub eax, 0x1
	or eax, 0xffffc000
	add eax, 0x1
	jmp _Z22SV_BuildClientSnapshotP8client_t_150
_Z22SV_BuildClientSnapshotP8client_t_60:
	mov eax, ebx
	call _Z28SV_GetCachedSnapshotInternali
	mov [ebp-0x1190], eax
	test eax, eax
	jnz _Z22SV_BuildClientSnapshotP8client_t_160
	add ebx, 0x1
	cmp [esi+0x624451c], ebx
	jg _Z22SV_BuildClientSnapshotP8client_t_60
	jmp _Z22SV_BuildClientSnapshotP8client_t_170
_Z22SV_BuildClientSnapshotP8client_t_100:
	mov ecx, [ebp-0x1190]
	mov eax, [ecx+0x10]
	test eax, eax
	jle _Z22SV_BuildClientSnapshotP8client_t_10
	xor edi, edi
	mov ebx, svs
	lea eax, [ebx+0x1c]
	mov [ebp-0x11a0], eax
	lea edx, [ebx+0x30]
	mov [ebp-0x11a4], edx
	mov ecx, [ebp-0x1190]
	jmp _Z22SV_BuildClientSnapshotP8client_t_180
_Z22SV_BuildClientSnapshotP8client_t_200:
	mov eax, [ebp-0x1194]
	add dword [eax+0x2f68], 0x1
	add edi, 0x1
	mov edx, [ebp-0x1190]
	cmp edi, [edx+0x10]
	jge _Z22SV_BuildClientSnapshotP8client_t_10
	mov ecx, edx
_Z22SV_BuildClientSnapshotP8client_t_180:
	mov eax, [ebx+0x2dbc518]
	cdq
	idiv dword [ebx+svs+0x1310090]
	lea edx, [edx+edx*4]
	lea edx, [edx+edx*4]
	lea esi, [edx*4+svs+0x3b18080]
	mov eax, edi
	add eax, [ecx+0x14]
	mov ecx, eax
	and ecx, 0x80000fff
	js _Z22SV_BuildClientSnapshotP8client_t_190
_Z22SV_BuildClientSnapshotP8client_t_210:
	lea edx, [ecx+ecx*2]
	mov eax, edx
	shl eax, 0x8
	sub eax, edx
	shl eax, 0x2
	sub eax, ecx
	mov ecx, [ebp-0x11a0]
	lea edx, [esi+ecx]
	mov ecx, [ebp-0x11a4]
	lea eax, [ecx+eax*4+svs+0x679a604]
	mov dword [esp+0x8], 0x64
	mov [esp+0x4], eax
	mov [esp], edx
	call memcpy
	mov eax, [ebx+0x2dbc518]
	add eax, 0x1
	mov [ebx+0x2dbc518], eax
	cmp eax, 0x7ffffffd
	jle _Z22SV_BuildClientSnapshotP8client_t_200
	mov dword [esp+0x4], _cstring_svsnextsnapshotc
	mov dword [esp], 0x1
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z22SV_BuildClientSnapshotP8client_t_200
_Z22SV_BuildClientSnapshotP8client_t_190:
	sub ecx, 0x1
	or ecx, 0xfffff000
	add ecx, 0x1
	jmp _Z22SV_BuildClientSnapshotP8client_t_210
_Z22SV_BuildClientSnapshotP8client_t_80:
	mov dword [esp+0x4], _cstring_sv_buildclientsn
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z22SV_BuildClientSnapshotP8client_t_220
_Z22SV_BuildClientSnapshotP8client_t_140:
	mov eax, [ebp-0x1148]
	test eax, eax
	jle _Z22SV_BuildClientSnapshotP8client_t_100
	xor edi, edi
	mov esi, svs
	jmp _Z22SV_BuildClientSnapshotP8client_t_230
_Z22SV_BuildClientSnapshotP8client_t_300:
	mov eax, [ebp-0x118c]
	add [ebx+0x54], eax
_Z22SV_BuildClientSnapshotP8client_t_320:
	mov eax, [esi+0x2dbc514]
	add eax, 0x1
	mov [esi+0x2dbc514], eax
	cmp eax, 0x7ffffffd
	jg _Z22SV_BuildClientSnapshotP8client_t_240
_Z22SV_BuildClientSnapshotP8client_t_310:
	mov edx, [ebp-0x1194]
	add dword [edx+0x2f64], 0x1
	add edi, 0x1
	cmp edi, [ebp-0x1148]
	jz _Z22SV_BuildClientSnapshotP8client_t_100
_Z22SV_BuildClientSnapshotP8client_t_230:
	mov eax, [esi+0x2dbc514]
	cdq
	idiv dword [esi+svs+0x131008c]
	mov eax, edx
	shl eax, 0x4
	sub eax, edx
	lea eax, [edx+eax*4]
	lea ebx, [esi+eax*4+svs+0x131009c]
	mov edx, [ebp-0x1190]
	mov eax, [edx+0xc]
	add eax, [ebp+edi*4-0x1128]
	and eax, 0x80003fff
	js _Z22SV_BuildClientSnapshotP8client_t_250
_Z22SV_BuildClientSnapshotP8client_t_330:
	lea edx, [eax+eax*4]
	lea eax, [edx*8]
	sub eax, edx
	lea eax, [esi+eax*8+0x3800]
	mov dword [esp+0x8], 0xf4
	mov [esp+0x4], eax
	mov [esp], ebx
	call memcpy
	mov eax, [ebx+0x10]
	test eax, eax
	jz _Z22SV_BuildClientSnapshotP8client_t_260
	add eax, [ebp-0x118c]
	mov [ebx+0x10], eax
_Z22SV_BuildClientSnapshotP8client_t_260:
	mov eax, [ebx+0x34]
	test eax, eax
	jz _Z22SV_BuildClientSnapshotP8client_t_270
	add eax, [ebp-0x118c]
	mov [ebx+0x34], eax
_Z22SV_BuildClientSnapshotP8client_t_270:
	mov eax, [ebx+0x70]
	test eax, eax
	jz _Z22SV_BuildClientSnapshotP8client_t_280
	add eax, [ebp-0x118c]
	mov [ebx+0x70], eax
_Z22SV_BuildClientSnapshotP8client_t_280:
	mov eax, [ebx+0x4]
	cmp eax, 0x4
	jz _Z22SV_BuildClientSnapshotP8client_t_290
	test eax, eax
	jz _Z22SV_BuildClientSnapshotP8client_t_300
	cmp eax, 0x42
	jz _Z22SV_BuildClientSnapshotP8client_t_300
	mov eax, [esi+0x2dbc514]
	add eax, 0x1
	mov [esi+0x2dbc514], eax
	cmp eax, 0x7ffffffd
	jle _Z22SV_BuildClientSnapshotP8client_t_310
_Z22SV_BuildClientSnapshotP8client_t_240:
	mov dword [esp+0x4], _cstring_svsnextsnapshote
	mov dword [esp], 0x1
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z22SV_BuildClientSnapshotP8client_t_310
_Z22SV_BuildClientSnapshotP8client_t_290:
	mov ecx, [ebp-0x118c]
	add [ebx+0x54], ecx
	jmp _Z22SV_BuildClientSnapshotP8client_t_320
_Z22SV_BuildClientSnapshotP8client_t_250:
	sub eax, 0x1
	or eax, 0xffffc000
	add eax, 0x1
	jmp _Z22SV_BuildClientSnapshotP8client_t_330
_Z22SV_BuildClientSnapshotP8client_t_130:
	lea ecx, [edx+0x10c]
	mov [ebp-0x1168], ecx
	add edx, 0x100
	mov [ebp-0x1164], edx
	lea eax, [ebp-0x1c]
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x80
	lea eax, [ebp-0x128]
	mov [esp+0x8], eax
	mov [esp+0x4], ecx
	mov [esp], edx
	call _Z14CM_BoxLeafnumsPKfS0_PtiPi
	mov esi, eax
	cmp eax, 0x0
	jz _Z22SV_BuildClientSnapshotP8client_t_120
	jg _Z22SV_BuildClientSnapshotP8client_t_340
_Z22SV_BuildClientSnapshotP8client_t_470:
	movss xmm0, dword [ebp-0x115c]
	ucomiss xmm0, [_float_0_00000000]
	jp _Z22SV_BuildClientSnapshotP8client_t_350
	jnz _Z22SV_BuildClientSnapshotP8client_t_350
_Z22SV_BuildClientSnapshotP8client_t_610:
	cmp dword [ebp-0x1148], 0x400
	jz _Z22SV_BuildClientSnapshotP8client_t_120
	mov eax, [ebp-0x1148]
	mov [ebp+eax*4-0x1128], ebx
	add eax, 0x1
	mov [ebp-0x1148], eax
	jmp _Z22SV_BuildClientSnapshotP8client_t_120
_Z22SV_BuildClientSnapshotP8client_t_30:
	mov dword [ebp-0x1190], 0x0
	jmp _Z22SV_BuildClientSnapshotP8client_t_160
_Z22SV_BuildClientSnapshotP8client_t_90:
	lea edx, [ebp-0x28]
	mov [esp], edx
	call _Z15CM_PointLeafnumPKf
	mov [esp], eax
	call _Z14CM_LeafClusteri
	test eax, eax
	js _Z22SV_BuildClientSnapshotP8client_t_360
	mov [esp], eax
	call _Z13CM_ClusterPVSi
	mov [ebp-0x1178], eax
	call _Z22G_GetFogOpaqueDistSqrdv
	fstp dword [ebp-0x1174]
	movss xmm0, dword [ebp-0x1174]
	cmpss xmm0, [_float_3402823466385288598117041], 0x4
	movss xmm1, dword [ebp-0x1174]
	andps xmm1, xmm0
	pxor xmm0, xmm0
	orps xmm1, xmm0
	movss [ebp-0x1174], xmm1
	mov eax, sv
	mov ebx, [eax+0x5fb38]
	test ebx, ebx
	jg _Z22SV_BuildClientSnapshotP8client_t_370
_Z22SV_BuildClientSnapshotP8client_t_360:
	mov edx, sv_maxclients
	mov eax, [edx]
	mov ecx, [eax+0xc]
	test ecx, ecx
	jle _Z22SV_BuildClientSnapshotP8client_t_10
	xor edi, edi
	mov ecx, svs
	add ecx, 0x46380c
	mov [ebp-0x1150], ecx
	mov eax, ecx
	jmp _Z22SV_BuildClientSnapshotP8client_t_380
_Z22SV_BuildClientSnapshotP8client_t_400:
	mov edx, sv_maxclients
_Z22SV_BuildClientSnapshotP8client_t_390:
	add edi, 0x1
	add dword [ebp-0x1150], 0xa5634
	mov eax, [edx]
	cmp edi, [eax+0xc]
	jge _Z22SV_BuildClientSnapshotP8client_t_10
	mov eax, [ebp-0x1150]
_Z22SV_BuildClientSnapshotP8client_t_380:
	cmp dword [eax], 0x1
	jle _Z22SV_BuildClientSnapshotP8client_t_390
	mov edx, svs
	mov eax, [edx+0x2dbc518]
	mov ecx, edx
	cdq
	idiv dword [ecx+svs+0x1310090]
	lea eax, [edx+edx*4]
	lea eax, [eax+eax*4]
	lea esi, [ecx+eax*4+svs+0x3b18080]
	lea ebx, [esi+0x1c]
	mov [esp], edi
	call _Z16G_GetClientStatei
	mov dword [esp+0x8], 0x64
	mov [esp+0x4], eax
	mov [esp], ebx
	call memcpy
	cmp edi, [esi+0x1c]
	jnz _Z22SV_BuildClientSnapshotP8client_t_400
	mov edx, svs
	mov eax, [edx+0x2dbc518]
	add eax, 0x1
	mov [edx+0x2dbc518], eax
	cmp eax, 0x7ffffffd
	jg _Z22SV_BuildClientSnapshotP8client_t_410
_Z22SV_BuildClientSnapshotP8client_t_440:
	mov ecx, [ebp-0x1194]
	add dword [ecx+0x2f68], 0x1
	mov edx, sv_maxclients
	jmp _Z22SV_BuildClientSnapshotP8client_t_390
_Z22SV_BuildClientSnapshotP8client_t_70:
	mov dword [ebp-0x118c], 0x0
	jmp _Z22SV_BuildClientSnapshotP8client_t_420
_Z22SV_BuildClientSnapshotP8client_t_50:
	mov edx, [ebp-0x1144]
	lea eax, [edx+edx*4]
	lea eax, [eax+eax*4]
	lea eax, [eax+eax*4]
	lea edx, [eax*8]
	mov eax, edx
	cdq
	idiv dword [ebp-0x1188]
	mov edi, eax
	xor ebx, ebx
	jmp _Z22SV_BuildClientSnapshotP8client_t_430
_Z22SV_BuildClientSnapshotP8client_t_410:
	mov dword [esp+0x4], _cstring_svsnextsnapshotc
	mov dword [esp], 0x1
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z22SV_BuildClientSnapshotP8client_t_440
_Z22SV_BuildClientSnapshotP8client_t_340:
	xor edi, edi
	jmp _Z22SV_BuildClientSnapshotP8client_t_450
_Z22SV_BuildClientSnapshotP8client_t_460:
	add edi, 0x1
	cmp esi, edi
	jz _Z22SV_BuildClientSnapshotP8client_t_120
_Z22SV_BuildClientSnapshotP8client_t_450:
	movzx eax, word [ebp+edi*2-0x128]
	mov [esp], eax
	call _Z14CM_LeafClusteri
	mov ecx, eax
	cmp eax, 0xffffffff
	jz _Z22SV_BuildClientSnapshotP8client_t_460
	sar eax, 0x3
	mov edx, [ebp-0x1160]
	movzx eax, byte [edx+eax]
	and ecx, 0x7
	sar eax, cl
	test al, 0x1
	jz _Z22SV_BuildClientSnapshotP8client_t_460
	cmp esi, edi
	jnz _Z22SV_BuildClientSnapshotP8client_t_470
	jmp _Z22SV_BuildClientSnapshotP8client_t_120
_Z22SV_BuildClientSnapshotP8client_t_370:
	xor esi, esi
	xor edi, edi
	jmp _Z22SV_BuildClientSnapshotP8client_t_480
_Z22SV_BuildClientSnapshotP8client_t_530:
	jl _Z22SV_BuildClientSnapshotP8client_t_490
	mov eax, svs
	cmp edx, [eax+0x463804]
	js _Z22SV_BuildClientSnapshotP8client_t_500
_Z22SV_BuildClientSnapshotP8client_t_490:
	cmp edi, 0x400
	jz _Z22SV_BuildClientSnapshotP8client_t_510
	mov [ebp+edi*4-0x1128], esi
	add edi, 0x1
_Z22SV_BuildClientSnapshotP8client_t_510:
	add esi, 0x1
	mov eax, sv
	cmp esi, [eax+0x5fb38]
	jge _Z22SV_BuildClientSnapshotP8client_t_520
_Z22SV_BuildClientSnapshotP8client_t_480:
	mov [esp], esi
	call _Z13SV_GentityNumi
	mov ebx, eax
	cmp byte [eax+0xf4], 0x0
	jz _Z22SV_BuildClientSnapshotP8client_t_510
	cmp esi, [ebp-0x113c]
	jz _Z22SV_BuildClientSnapshotP8client_t_510
	mov edx, [eax+0x104]
	cmp edx, 0x0
	jnz _Z22SV_BuildClientSnapshotP8client_t_530
	test byte [eax+0xf6], 0x1
	jnz _Z22SV_BuildClientSnapshotP8client_t_510
	mov eax, [ebp-0x113c]
	sar eax, 0x5
	mov ecx, [ebp-0x113c]
	and ecx, 0x1f
	mov eax, [ebx+eax*4+0xf8]
	sar eax, cl
	test al, 0x1
	jnz _Z22SV_BuildClientSnapshotP8client_t_510
_Z22SV_BuildClientSnapshotP8client_t_620:
	movzx eax, byte [ebx+0xf6]
	test al, 0x18
	jnz _Z22SV_BuildClientSnapshotP8client_t_490
	mov [esp], ebx
	call _Z21SV_SvEntityForGentityPK9gentity_s
	mov [ebp-0x1140], eax
	mov eax, [eax+0x11c]
	mov [ebp-0x1184], eax
	cmp eax, 0x0
	jz _Z22SV_BuildClientSnapshotP8client_t_490
	jle _Z22SV_BuildClientSnapshotP8client_t_540
	mov eax, [ebp-0x1140]
	mov edx, [eax+0x120]
	mov eax, edx
	sar eax, 0x3
	mov ecx, [ebp-0x1178]
	movzx eax, byte [eax+ecx]
	mov ecx, edx
	and ecx, 0x7
	sar eax, cl
	test al, 0x1
	jnz _Z22SV_BuildClientSnapshotP8client_t_540
	mov eax, [ebp-0x1140]
	mov [ebp-0x114c], eax
	mov dword [ebp-0x117c], 0x0
	jmp _Z22SV_BuildClientSnapshotP8client_t_550
_Z22SV_BuildClientSnapshotP8client_t_560:
	mov ecx, [ebp-0x114c]
	mov edx, [ecx+0x124]
	add ecx, 0x4
	mov [ebp-0x114c], ecx
	mov eax, edx
	sar eax, 0x3
	mov ecx, [ebp-0x1178]
	movzx eax, byte [ecx+eax]
	mov ecx, edx
	and ecx, 0x7
	sar eax, cl
	test al, 0x1
	jnz _Z22SV_BuildClientSnapshotP8client_t_540
_Z22SV_BuildClientSnapshotP8client_t_550:
	add dword [ebp-0x117c], 0x1
	mov eax, [ebp-0x117c]
	cmp [ebp-0x1184], eax
	jnz _Z22SV_BuildClientSnapshotP8client_t_560
	mov ecx, [ebp-0x1140]
	mov ecx, [ecx+0x160]
	mov [ebp-0x1180], ecx
	test ecx, ecx
	jz _Z22SV_BuildClientSnapshotP8client_t_510
_Z22SV_BuildClientSnapshotP8client_t_580:
	cmp [ebp-0x1180], edx
	jl _Z22SV_BuildClientSnapshotP8client_t_570
	mov eax, edx
	sar eax, 0x3
	mov ecx, [ebp-0x1178]
	movzx eax, byte [ecx+eax]
	mov ecx, edx
	and ecx, 0x7
	sar eax, cl
	test al, 0x1
	jnz _Z22SV_BuildClientSnapshotP8client_t_570
	add edx, 0x1
	jmp _Z22SV_BuildClientSnapshotP8client_t_580
_Z22SV_BuildClientSnapshotP8client_t_520:
	test edi, edi
	jle _Z22SV_BuildClientSnapshotP8client_t_360
	xor esi, esi
	mov ebx, svs
	lea edx, [ebx+0x1c]
	mov [ebp-0x119c], edx
	jmp _Z22SV_BuildClientSnapshotP8client_t_590
_Z22SV_BuildClientSnapshotP8client_t_600:
	mov edx, [ebp-0x1194]
	add dword [edx+0x2f64], 0x1
	add esi, 0x1
	cmp esi, edi
	jz _Z22SV_BuildClientSnapshotP8client_t_360
_Z22SV_BuildClientSnapshotP8client_t_590:
	mov eax, [ebp+esi*4-0x1128]
	mov [esp], eax
	call _Z13SV_GentityNumi
	mov [ebp-0x11ac], eax
	mov ecx, [ebx+0x2dbc514]
	mov eax, ecx
	cdq
	idiv dword [ebx+svs+0x131008c]
	mov ecx, edx
	shl edx, 0x4
	sub edx, ecx
	lea edx, [ecx+edx*4]
	mov ecx, [ebp-0x119c]
	lea edx, [ecx+edx*4+svs+0x1310080]
	mov dword [esp+0x8], 0xf4
	mov eax, [ebp-0x11ac]
	mov [esp+0x4], eax
	mov [esp], edx
	call memcpy
	mov eax, [ebx+0x2dbc514]
	add eax, 0x1
	mov [ebx+0x2dbc514], eax
	cmp eax, 0x7ffffffd
	jle _Z22SV_BuildClientSnapshotP8client_t_600
	mov dword [esp+0x4], _cstring_svsnextsnapshote
	mov dword [esp], 0x1
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z22SV_BuildClientSnapshotP8client_t_600
_Z22SV_BuildClientSnapshotP8client_t_350:
	movss [esp+0xc], xmm0
	lea eax, [ebp-0x28]
	mov [esp+0x8], eax
	mov edx, [ebp-0x1168]
	mov [esp+0x4], edx
	mov ecx, [ebp-0x1164]
	mov [esp], ecx
	call _Z18BoxDistSqrdExceedsPKfS0_S0_f
	test eax, eax
	jnz _Z22SV_BuildClientSnapshotP8client_t_120
	jmp _Z22SV_BuildClientSnapshotP8client_t_610
_Z22SV_BuildClientSnapshotP8client_t_500:
	mov dword [ebx+0x104], 0x0
	jmp _Z22SV_BuildClientSnapshotP8client_t_620
_Z22SV_BuildClientSnapshotP8client_t_570:
	cmp edx, [ebp-0x1180]
	jz _Z22SV_BuildClientSnapshotP8client_t_510
_Z22SV_BuildClientSnapshotP8client_t_540:
	movss xmm0, dword [ebp-0x1174]
	ucomiss xmm0, [_float_0_00000000]
	jp _Z22SV_BuildClientSnapshotP8client_t_630
	jz _Z22SV_BuildClientSnapshotP8client_t_490
_Z22SV_BuildClientSnapshotP8client_t_630:
	movss [esp+0xc], xmm0
	lea eax, [ebp-0x28]
	mov [esp+0x8], eax
	lea eax, [ebx+0x130]
	mov [esp+0x4], eax
	lea eax, [ebx+0x124]
	mov [esp], eax
	call _Z18BoxDistSqrdExceedsPKfS0_S0_f
	test eax, eax
	jnz _Z22SV_BuildClientSnapshotP8client_t_510
	jmp _Z22SV_BuildClientSnapshotP8client_t_490
	nop


;SV_SendMessageToClient(msg_t*, client_t*)
_Z22SV_SendMessageToClientP5msg_tP8client_t:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov eax, [ebx+0x8]
	mov eax, [eax]
	mov [_ZZ22SV_SendMessageToClientP5msg_tP8client_tE15svCompressedBuf], eax
	mov eax, [ebx+0x14]
	sub eax, 0x4
	mov [esp+0xc], eax
	mov dword [esp+0x8], _ZZ22SV_SendMessageToClientP5msg_tP8client_tE15svCompressedBuf+0x4
	mov eax, [ebx+0x8]
	add eax, 0x4
	mov [esp+0x4], eax
	xor eax, eax
	cmp dword [esi], 0x4
	setz al
	mov [esp], eax
	call _Z21MSG_WriteBitsCompresshPKhPhi
	lea edi, [eax+0x4]
	cmp dword [esi+0x20], 0x2
	jz _Z22SV_SendMessageToClientP5msg_tP8client_t_10
	mov edx, svs
	add edx, 0x46380c
	mov [esp+0x8], edi
	mov eax, [ebx+0x14]
	mov [esp+0x4], eax
	mov eax, esi
	sub eax, edx
	sar eax, 0x2
	imul eax, eax, 0x4315b545
	mov [esp], eax
	call _Z25SV_TrackPacketCompressioniii
_Z22SV_SendMessageToClientP5msg_tP8client_t_10:
	mov eax, [esi+0x644]
	test eax, eax
	jz _Z22SV_SendMessageToClientP5msg_tP8client_t_20
	mov dword [esp+0x8], 0x1
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z13SV_DropClientP8client_tPKch
_Z22SV_SendMessageToClientP5msg_tP8client_t_20:
	mov edx, [esi+0x10]
	and edx, 0x1f
	lea eax, [edx+edx*2]
	shl eax, 0x5
	sub eax, edx
	shl eax, 0x5
	add eax, edx
	mov [esi+eax*4+0x243e0], edi
	mov ebx, [esi+0x10]
	and ebx, 0x1f
	call _Z16Sys_Millisecondsv
	lea edx, [ebx+ebx*2]
	shl edx, 0x5
	sub edx, ebx
	shl edx, 0x5
	add edx, ebx
	mov [esi+edx*4+0x243d8], eax
	mov edx, [esi+0x10]
	and edx, 0x1f
	lea eax, [edx+edx*2]
	shl eax, 0x5
	sub eax, edx
	shl eax, 0x5
	add eax, edx
	mov dword [esi+eax*4+0x243dc], 0xffffffff
	mov ebx, [esi+0x10]
	sub ebx, [esi+0x8]
	mov [esp+0x8], edi
	mov dword [esp+0x4], _ZZ22SV_SendMessageToClientP5msg_tP8client_tE15svCompressedBuf
	mov [esp], esi
	call _Z19SV_Netchan_TransmitP8client_tPhi
	cmp dword [esi], 0x4
	jz _Z22SV_SendMessageToClientP5msg_tP8client_t_30
_Z22SV_SendMessageToClientP5msg_tP8client_t_120:
	mov dword [esi+0x804f0], 0x0
	cmp dword [esi+0x20], 0x2
	jz _Z22SV_SendMessageToClientP5msg_tP8client_t_40
	mov ecx, [esi+0x20]
	mov [ebp-0x24], ecx
	mov edx, [esi+0x24]
	mov [ebp-0x20], edx
	mov eax, [esi+0x28]
	mov [ebp-0x1c], eax
	mov [esp], ecx
	mov [esp+0x4], edx
	mov [esp+0x8], eax
	call _Z16Sys_IsLANAddress8netadr_t
	test eax, eax
	jnz _Z22SV_SendMessageToClientP5msg_tP8client_t_40
	cmp edi, 0x5dc
	jg _Z22SV_SendMessageToClientP5msg_tP8client_t_50
	lea eax, [edi+edi*4]
	lea eax, [eax+eax*4]
	lea eax, [eax+eax*4]
	shl eax, 0x3
	mov [ebp-0x2c], eax
	mov [ebp-0x30], edi
_Z22SV_SendMessageToClientP5msg_tP8client_t_140:
	mov ebx, [esi+0x804e8]
	mov eax, sv_maxRate
	mov edx, [eax]
	mov eax, [edx+0xc]
	test eax, eax
	jz _Z22SV_SendMessageToClientP5msg_tP8client_t_60
	cmp eax, 0x3e7
	jle _Z22SV_SendMessageToClientP5msg_tP8client_t_70
_Z22SV_SendMessageToClientP5msg_tP8client_t_170:
	mov eax, [edx+0xc]
	cmp ebx, eax
	cmovg ebx, eax
_Z22SV_SendMessageToClientP5msg_tP8client_t_60:
	mov edx, [ebp-0x2c]
	add edx, 0xbb80
	mov eax, edx
	cdq
	idiv ebx
	mov ebx, eax
	mov eax, sv_debugRate
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z22SV_SendMessageToClientP5msg_tP8client_t_80
_Z22SV_SendMessageToClientP5msg_tP8client_t_160:
	mov eax, [esi+0x804ec]
	cmp ebx, eax
	jge _Z22SV_SendMessageToClientP5msg_tP8client_t_90
	mov dword [esi+0xc], 0x0
	mov ebx, eax
_Z22SV_SendMessageToClientP5msg_tP8client_t_150:
	mov edx, svs
	mov eax, ebx
	add eax, [edx+0x463804]
	mov [esi+0x2145c], eax
	cmp dword [esi], 0x4
	jz _Z22SV_SendMessageToClientP5msg_tP8client_t_100
	cmp byte [esi+0x2129c], 0x0
	jnz _Z22SV_SendMessageToClientP5msg_tP8client_t_100
	mov edx, [edx+0x463804]
	add edx, 0x3e8
	cmp eax, edx
	jl _Z22SV_SendMessageToClientP5msg_tP8client_t_110
_Z22SV_SendMessageToClientP5msg_tP8client_t_100:
	mov eax, sv
	add [eax+0x5fba0], edi
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z22SV_SendMessageToClientP5msg_tP8client_t_40:
	mov eax, svs
	mov eax, [eax+0x463804]
	sub eax, 0x1
	mov [esi+0x2145c], eax
_Z22SV_SendMessageToClientP5msg_tP8client_t_130:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z22SV_SendMessageToClientP5msg_tP8client_t_30:
	mov eax, [esi+0x8]
	test eax, eax
	js _Z22SV_SendMessageToClientP5msg_tP8client_t_120
	cmp ebx, 0x1c
	jle _Z22SV_SendMessageToClientP5msg_tP8client_t_120
	cvtsi2sd xmm0, dword [esi+0x804f0]
	movsd [esp+0x8], xmm0
	mov dword [esp], 0x0
	mov dword [esp+0x4], 0x40000000
	call pow
	fstp qword [ebp-0x38]
	cvttsd2si eax, qword [ebp-0x38]
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call _Z5irandii
	imul eax, [esi+0x804ec]
	mov edx, svs
	add eax, [edx+0x463804]
	mov [esi+0x2145c], eax
	mov eax, [esi+0x804f0]
	add eax, 0x1
	cmp eax, 0x8
	mov edx, 0x8
	cmovge eax, edx
	mov [esi+0x804f0], eax
	jmp _Z22SV_SendMessageToClientP5msg_tP8client_t_130
_Z22SV_SendMessageToClientP5msg_tP8client_t_50:
	mov dword [ebp-0x30], 0x5dc
	mov dword [ebp-0x2c], 0x16e360
	jmp _Z22SV_SendMessageToClientP5msg_tP8client_t_140
_Z22SV_SendMessageToClientP5msg_tP8client_t_90:
	mov dword [esi+0xc], 0x1
	jmp _Z22SV_SendMessageToClientP5msg_tP8client_t_150
_Z22SV_SendMessageToClientP5msg_tP8client_t_80:
	mov eax, [esi+0x804e8]
	mov [esp+0x14], eax
	lea eax, [esi+0x21288]
	mov [esp+0x10], eax
	mov eax, [ebp-0x30]
	mov [esp+0xc], eax
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_it_would_take_im
	mov dword [esp], 0xf
	call _Z10Com_PrintfiPKcz
	jmp _Z22SV_SendMessageToClientP5msg_tP8client_t_160
_Z22SV_SendMessageToClientP5msg_tP8client_t_110:
	mov [esi+0x2145c], edx
	jmp _Z22SV_SendMessageToClientP5msg_tP8client_t_100
_Z22SV_SendMessageToClientP5msg_tP8client_t_70:
	mov dword [esp+0x4], 0x3e8
	mov [esp], edx
	call _Z11Dvar_SetIntPK6dvar_si
	mov eax, sv_maxRate
	mov edx, [eax]
	jmp _Z22SV_SendMessageToClientP5msg_tP8client_t_170


;SV_GetArchivedClientInfo(int, int*, playerState_s*, clientState_s*)
_Z24SV_GetArchivedClientInfoiPiP13playerState_sP13clientState_s:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edi, [ebp+0xc]
	mov edx, [edi]
	test edx, edx
	jle _Z24SV_GetArchivedClientInfoiPiP13playerState_sP13clientState_s_10
	mov eax, svs
	mov ecx, [eax+0x624451c]
	mov ebx, sv_fps
	mov eax, [ebx]
	mov esi, [eax+0xc]
	mov ebx, edx
	imul ebx, esi
	mov edx, 0x10624dd3
	mov eax, ebx
	imul edx
	sar edx, 0x6
	mov eax, ebx
	sar eax, 0x1f
	sub edx, eax
	mov eax, ecx
	sub eax, edx
	lea ebx, [ecx-0x4b0]
	cmp eax, ebx
	jl _Z24SV_GetArchivedClientInfoiPiP13playerState_sP13clientState_s_20
	mov ebx, eax
	test ebx, ebx
	js _Z24SV_GetArchivedClientInfoiPiP13playerState_sP13clientState_s_30
_Z24SV_GetArchivedClientInfoiPiP13playerState_sP13clientState_s_60:
	mov ecx, svs
	cmp ebx, [ecx+0x624451c]
	jl _Z24SV_GetArchivedClientInfoiPiP13playerState_sP13clientState_s_40
_Z24SV_GetArchivedClientInfoiPiP13playerState_sP13clientState_s_70:
	mov dword [edi], 0x0
_Z24SV_GetArchivedClientInfoiPiP13playerState_sP13clientState_s_10:
	mov eax, [edi]
	test eax, eax
	jle _Z24SV_GetArchivedClientInfoiPiP13playerState_sP13clientState_s_50
_Z24SV_GetArchivedClientInfoiPiP13playerState_sP13clientState_s_100:
	xor eax, eax
_Z24SV_GetArchivedClientInfoiPiP13playerState_sP13clientState_s_260:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z24SV_GetArchivedClientInfoiPiP13playerState_sP13clientState_s_20:
	sub ecx, ebx
	lea eax, [ecx+ecx*4]
	lea eax, [eax+eax*4]
	lea eax, [eax+eax*4]
	shl eax, 0x3
	cdq
	idiv esi
	mov [edi], eax
	test ebx, ebx
	jns _Z24SV_GetArchivedClientInfoiPiP13playerState_sP13clientState_s_60
_Z24SV_GetArchivedClientInfoiPiP13playerState_sP13clientState_s_30:
	mov edx, svs
	mov eax, [edx+0x624451c]
	lea eax, [eax+eax*4]
	lea eax, [eax+eax*4]
	lea eax, [eax+eax*4]
	shl eax, 0x3
	mov ecx, sv_fps
	mov ebx, [ecx]
	cdq
	idiv dword [ebx+0xc]
	mov [edi], eax
	xor ebx, ebx
	mov ecx, svs
	cmp ebx, [ecx+0x624451c]
	jge _Z24SV_GetArchivedClientInfoiPiP13playerState_sP13clientState_s_70
_Z24SV_GetArchivedClientInfoiPiP13playerState_sP13clientState_s_40:
	mov esi, ecx
	jmp _Z24SV_GetArchivedClientInfoiPiP13playerState_sP13clientState_s_80
_Z24SV_GetArchivedClientInfoiPiP13playerState_sP13clientState_s_90:
	add ebx, 0x1
	cmp ebx, [esi+0x624451c]
	jge _Z24SV_GetArchivedClientInfoiPiP13playerState_sP13clientState_s_70
_Z24SV_GetArchivedClientInfoiPiP13playerState_sP13clientState_s_80:
	mov eax, ebx
	call _Z28SV_GetCachedSnapshotInternali
	test eax, eax
	jz _Z24SV_GetArchivedClientInfoiPiP13playerState_sP13clientState_s_90
	mov edx, svs
	mov edi, [edx+0x463804]
	sub edi, [eax+0x4]
	mov ecx, [eax+0x10]
	mov [ebp-0x20], ecx
	test ecx, ecx
	jz _Z24SV_GetArchivedClientInfoiPiP13playerState_sP13clientState_s_100
	mov eax, [eax+0x14]
	mov [ebp-0x1c], eax
	and eax, 0xfff
	lea ecx, [eax+eax*2]
	mov edx, ecx
	shl edx, 0x8
	sub edx, ecx
	shl edx, 0x2
	sub edx, eax
	mov eax, svs
	lea ebx, [eax+edx*4+svs+0x679a630]
	mov edx, [ebp+0x8]
	cmp edx, [ebx+0x4]
	jz _Z24SV_GetArchivedClientInfoiPiP13playerState_sP13clientState_s_110
	xor esi, esi
_Z24SV_GetArchivedClientInfoiPiP13playerState_sP13clientState_s_120:
	add esi, 0x1
	cmp esi, [ebp-0x20]
	jae _Z24SV_GetArchivedClientInfoiPiP13playerState_sP13clientState_s_100
	mov ecx, [ebp-0x1c]
	lea eax, [esi+ecx]
	and eax, 0xfff
	lea ecx, [eax+eax*2]
	mov edx, ecx
	shl edx, 0x8
	sub edx, ecx
	shl edx, 0x2
	sub edx, eax
	mov eax, svs
	lea ebx, [eax+edx*4+svs+0x679a630]
	mov edx, [ebp+0x8]
	cmp edx, [ebx+0x4]
	jnz _Z24SV_GetArchivedClientInfoiPiP13playerState_sP13clientState_s_120
_Z24SV_GetArchivedClientInfoiPiP13playerState_sP13clientState_s_110:
	mov eax, [ebx]
	test eax, eax
	jz _Z24SV_GetArchivedClientInfoiPiP13playerState_sP13clientState_s_100
	lea eax, [ebx+0x68]
	mov dword [esp+0x8], 0x2f64
	mov [esp+0x4], eax
	mov ecx, [ebp+0x10]
	mov [esp], ecx
	call memcpy
	lea eax, [ebx+0x4]
	mov dword [esp+0x8], 0x64
	mov [esp+0x4], eax
	mov ebx, [ebp+0x14]
	mov [esp], ebx
	call memcpy
	mov edx, [ebp+0x10]
	mov eax, [edx]
	test eax, eax
	jz _Z24SV_GetArchivedClientInfoiPiP13playerState_sP13clientState_s_130
	lea eax, [edi+eax]
	mov [edx], eax
	mov ecx, [ebp+0x10]
_Z24SV_GetArchivedClientInfoiPiP13playerState_sP13clientState_s_320:
	mov eax, [ecx+0x18]
	test eax, eax
	jz _Z24SV_GetArchivedClientInfoiPiP13playerState_sP13clientState_s_140
	lea eax, [edi+eax]
	mov [ecx+0x18], eax
	mov ebx, [ebp+0x10]
_Z24SV_GetArchivedClientInfoiPiP13playerState_sP13clientState_s_310:
	mov eax, [ebx+0x54]
	test eax, eax
	jz _Z24SV_GetArchivedClientInfoiPiP13playerState_sP13clientState_s_150
	lea eax, [edi+eax]
	mov [ebx+0x54], eax
	mov edx, [ebp+0x10]
_Z24SV_GetArchivedClientInfoiPiP13playerState_sP13clientState_s_300:
	mov eax, [edx+0x80]
	test eax, eax
	jz _Z24SV_GetArchivedClientInfoiPiP13playerState_sP13clientState_s_160
	lea eax, [edi+eax]
	mov [edx+0x80], eax
	mov ecx, [ebp+0x10]
_Z24SV_GetArchivedClientInfoiPiP13playerState_sP13clientState_s_290:
	mov eax, [ecx+0x11c]
	test eax, eax
	jz _Z24SV_GetArchivedClientInfoiPiP13playerState_sP13clientState_s_170
	lea eax, [edi+eax]
	mov [ecx+0x11c], eax
	mov ebx, [ebp+0x10]
_Z24SV_GetArchivedClientInfoiPiP13playerState_sP13clientState_s_280:
	mov eax, [ebx+0x630]
	test eax, eax
	jz _Z24SV_GetArchivedClientInfoiPiP13playerState_sP13clientState_s_180
	lea eax, [edi+eax]
	mov [ebx+0x630], eax
	mov edx, [ebp+0x10]
_Z24SV_GetArchivedClientInfoiPiP13playerState_sP13clientState_s_270:
	mov ebx, 0x1f
	mov esi, svs
	jmp _Z24SV_GetArchivedClientInfoiPiP13playerState_sP13clientState_s_190
_Z24SV_GetArchivedClientInfoiPiP13playerState_sP13clientState_s_250:
	mov eax, [edx+0x1c74]
	test eax, eax
	jz _Z24SV_GetArchivedClientInfoiPiP13playerState_sP13clientState_s_200
	lea eax, [edi+eax]
	mov [edx+0x1c74], eax
_Z24SV_GetArchivedClientInfoiPiP13playerState_sP13clientState_s_200:
	mov eax, [edx+0x1c30]
	test eax, eax
	jz _Z24SV_GetArchivedClientInfoiPiP13playerState_sP13clientState_s_210
	lea eax, [edi+eax]
	mov [edx+0x1c30], eax
	mov ecx, [esi+0x463804]
	cmp eax, ecx
	jle _Z24SV_GetArchivedClientInfoiPiP13playerState_sP13clientState_s_210
	mov [edx+0x1c30], ecx
_Z24SV_GetArchivedClientInfoiPiP13playerState_sP13clientState_s_210:
	mov eax, [edx+0x1c54]
	test eax, eax
	jz _Z24SV_GetArchivedClientInfoiPiP13playerState_sP13clientState_s_220
	lea eax, [edi+eax]
	mov [edx+0x1c54], eax
_Z24SV_GetArchivedClientInfoiPiP13playerState_sP13clientState_s_220:
	mov eax, [edx+0x1c6c]
	test eax, eax
	jz _Z24SV_GetArchivedClientInfoiPiP13playerState_sP13clientState_s_230
	lea eax, [edi+eax]
	mov [edx+0x1c6c], eax
_Z24SV_GetArchivedClientInfoiPiP13playerState_sP13clientState_s_230:
	add edx, 0xa0
	sub ebx, 0x1
	jz _Z24SV_GetArchivedClientInfoiPiP13playerState_sP13clientState_s_240
_Z24SV_GetArchivedClientInfoiPiP13playerState_sP13clientState_s_190:
	mov eax, [edx+0x1c04]
	test eax, eax
	jnz _Z24SV_GetArchivedClientInfoiPiP13playerState_sP13clientState_s_250
_Z24SV_GetArchivedClientInfoiPiP13playerState_sP13clientState_s_240:
	mov eax, [ebp+0x10]
	add [eax+0x89c], edi
	mov eax, 0x1
	jmp _Z24SV_GetArchivedClientInfoiPiP13playerState_sP13clientState_s_260
_Z24SV_GetArchivedClientInfoiPiP13playerState_sP13clientState_s_50:
	mov ebx, [ebp+0x8]
	lea eax, [ebx+ebx*4]
	shl eax, 0x7
	add eax, ebx
	lea eax, [ebx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	lea eax, [ebx+eax*4]
	mov edx, svs
	add edx, 0xc
	cmp dword [edx+eax*4+0x463800], 0x4
	jnz _Z24SV_GetArchivedClientInfoiPiP13playerState_sP13clientState_s_100
	mov eax, [ebp+0x10]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z20GetFollowPlayerStateiP13playerState_s
	test eax, eax
	jz _Z24SV_GetArchivedClientInfoiPiP13playerState_sP13clientState_s_100
	mov [esp], ebx
	call _Z16G_GetClientStatei
	mov dword [esp+0x8], 0x64
	mov [esp+0x4], eax
	mov edx, [ebp+0x14]
	mov [esp], edx
	call memcpy
	mov eax, 0x1
	jmp _Z24SV_GetArchivedClientInfoiPiP13playerState_sP13clientState_s_260
_Z24SV_GetArchivedClientInfoiPiP13playerState_sP13clientState_s_180:
	mov edx, ebx
	jmp _Z24SV_GetArchivedClientInfoiPiP13playerState_sP13clientState_s_270
_Z24SV_GetArchivedClientInfoiPiP13playerState_sP13clientState_s_170:
	mov ebx, ecx
	jmp _Z24SV_GetArchivedClientInfoiPiP13playerState_sP13clientState_s_280
_Z24SV_GetArchivedClientInfoiPiP13playerState_sP13clientState_s_160:
	mov ecx, edx
	jmp _Z24SV_GetArchivedClientInfoiPiP13playerState_sP13clientState_s_290
_Z24SV_GetArchivedClientInfoiPiP13playerState_sP13clientState_s_150:
	mov edx, ebx
	jmp _Z24SV_GetArchivedClientInfoiPiP13playerState_sP13clientState_s_300
_Z24SV_GetArchivedClientInfoiPiP13playerState_sP13clientState_s_140:
	mov ebx, ecx
	jmp _Z24SV_GetArchivedClientInfoiPiP13playerState_sP13clientState_s_310
_Z24SV_GetArchivedClientInfoiPiP13playerState_sP13clientState_s_130:
	mov ecx, edx
	jmp _Z24SV_GetArchivedClientInfoiPiP13playerState_sP13clientState_s_320
	nop


;SV_GetServerStaticHeader()
_Z24SV_GetServerStaticHeaderv:
	push ebp
	mov ebp, esp
	mov edx, svs
	mov eax, [svsHeader+0x44]
	mov [edx+0x8246aac], eax
	mov eax, [svsHeader+0x4c]
	mov [edx+0x8246aa4], eax
	mov eax, [svsHeader+0x50]
	mov [edx+0x8246aa8], eax
	pop ebp
	ret


;SV_SetServerStaticHeader()
_Z24SV_SetServerStaticHeaderv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, svs
	lea edx, [eax+0x46380c]
	mov [svsHeader], edx
	mov edx, [eax+0x463804]
	mov [svsHeader+0x4], edx
	mov edx, [eax+0x463808]
	mov [svsHeader+0x8], edx
	mov edx, [eax+svs+0x131008c]
	mov [svsHeader+0xc], edx
	mov edx, [eax+svs+0x1310090]
	mov [svsHeader+0x10], edx
	mov edx, [eax+0x2dbc514]
	mov [svsHeader+0x14], edx
	mov edx, [eax+0x2dbc518]
	mov [svsHeader+0x18], edx
	lea edx, [eax+svs+0x131009c]
	mov [svsHeader+0x1c], edx
	lea edx, [eax+svs+0x3b1809c]
	mov [svsHeader+0x20], edx
	mov ecx, sv
	lea edx, [ecx+0x1b30]
	mov [svsHeader+0x24], edx
	mov edx, [eax+svs+0x9778e74]
	mov [svsHeader+0x28], edx
	mov edx, [eax+svs+0x9778e78]
	mov [svsHeader+0x2c], edx
	mov edx, [eax+svs+0x9778e7c]
	mov [svsHeader+0x30], edx
	lea edx, [eax+0x3800]
	mov [svsHeader+0x34], edx
	lea edx, [eax+svs+0x679a630]
	mov [svsHeader+0x38], edx
	lea edx, [eax+svs+0x479a620]
	mov [svsHeader+0x3c], edx
	mov [svsHeader+0x40], eax
	mov edx, [eax+0x8246aac]
	mov [svsHeader+0x44], edx
	mov edx, [eax+0x624451c]
	mov [svsHeader+0x48], edx
	mov edx, [eax+0x8246aa4]
	mov [svsHeader+0x4c], edx
	mov eax, [eax+0x8246aa8]
	mov [svsHeader+0x50], eax
	mov eax, [ecx+0x5fb38]
	mov [svsHeader+0x54], eax
	mov eax, sv_maxclients
	mov eax, [eax]
	mov eax, [eax+0xc]
	mov [svsHeader+0x58], eax
	mov eax, sv_fps
	mov eax, [eax]
	mov eax, [eax+0xc]
	mov [svsHeader+0x5c], eax
	mov eax, [sv_clientArchive]
	movzx eax, byte [eax+0xc]
	mov [svsHeader+0x60], eax
	mov eax, [ecx+0x5fb30]
	mov [svsHeader+0x64], eax
	mov eax, [ecx+0x5fb34]
	mov [svsHeader+0x68], eax
	mov dword [esp], 0x0
	call _Z16G_GetClientStatei
	mov [svsHeader+0x6c], eax
	mov dword [esp], 0x0
	call _Z16G_GetPlayerStatei
	mov [svsHeader+0x70], eax
	call _Z15G_GetClientSizev
	mov [svsHeader+0x74], eax
	leave
	ret


;SV_WriteSnapshotToClient(client_t*, msg_t*)
_Z24SV_WriteSnapshotToClientP8client_tP5msg_t:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x7c
	mov esi, [ebp+0x8]
	mov eax, esi
	sub eax, [svsHeader]
	sar eax, 0x2
	imul eax, eax, 0x4315b545
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
	mov [ebp-0x28], eax
	mov [ebp-0x24], esi
	mov byte [ebp-0x1b], 0x0
	mov edx, [esi+0x10]
	and edx, 0x1f
	lea eax, [edx+edx*2]
	shl eax, 0x5
	sub eax, edx
	shl eax, 0x5
	add eax, edx
	lea eax, [esi+eax*4+0x21460]
	lea edx, [eax+0x4]
	mov [ebp-0x58], edx
	mov edx, [svsHeader+0x4]
	mov [eax+0x2f84], edx
	mov eax, [esi+0x8]
	test eax, eax
	jle _Z24SV_WriteSnapshotToClientP8client_tP5msg_t_10
	cmp dword [esi], 0x4
	jz _Z24SV_WriteSnapshotToClientP8client_tP5msg_t_20
_Z24SV_WriteSnapshotToClientP8client_tP5msg_t_10:
	xor edi, edi
	mov dword [ebp-0x54], 0x0
	xor ebx, ebx
_Z24SV_WriteSnapshotToClientP8client_tP5msg_t_270:
	mov dword [esp+0x4], 0x6
	mov eax, [ebp+0xc]
	mov [esp], eax
	call _Z13MSG_WriteByteP5msg_ti
	mov eax, [svsHeader+0x4]
	mov [esp+0x4], eax
	mov edx, [ebp+0xc]
	mov [esp], edx
	call _Z13MSG_WriteLongP5msg_ti
	mov eax, [ebp-0x54]
	mov [esp+0x4], eax
	mov edx, [ebp+0xc]
	mov [esp], edx
	call _Z13MSG_WriteByteP5msg_ti
	mov [ebp-0x20], ebx
	mov ecx, [svsHeader+0x8]
	mov eax, ecx
	or eax, 0x1
	mov edx, [esi+0xc]
	test edx, edx
	cmovnz ecx, eax
	mov edx, [esi+0x4]
	mov ebx, edx
	mov eax, [esi]
	cmp eax, 0x4
	jz _Z24SV_WriteSnapshotToClientP8client_tP5msg_t_30
	sub eax, 0x1
	mov eax, 0x0
	cmovnz edx, eax
_Z24SV_WriteSnapshotToClientP8client_tP5msg_t_240:
	cmp edx, ebx
	jz _Z24SV_WriteSnapshotToClientP8client_tP5msg_t_40
	mov [esi+0x4], edx
_Z24SV_WriteSnapshotToClientP8client_tP5msg_t_40:
	mov eax, ecx
	or eax, 0x2
	test edx, edx
	cmovz ecx, eax
	mov [esp+0x4], ecx
	mov eax, [ebp+0xc]
	mov [esp], eax
	call _Z13MSG_WriteByteP5msg_ti
	test edi, edi
	jz _Z24SV_WriteSnapshotToClientP8client_tP5msg_t_50
	mov edx, [ebp-0x58]
	mov [esp+0x10], edx
	mov [esp+0xc], edi
	mov eax, [svsHeader+0x4]
	mov [esp+0x8], eax
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	lea edx, [ebp-0x28]
	mov [esp], edx
	call _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5_
	mov eax, [edi+0x2f64]
	mov [ebp-0x50], eax
	mov edx, [edi+0x2f6c]
	mov [ebp-0x4c], edx
	mov eax, [edi+0x2f68]
	mov [ebp-0x48], eax
	mov edi, [edi+0x2f70]
	mov [ebp-0x44], edi
_Z24SV_WriteSnapshotToClientP8client_tP5msg_t_280:
	mov eax, [ebp-0x58]
	mov eax, [eax+0x2f6c]
	mov [ebp-0x40], eax
	mov edx, [ebp-0x58]
	mov edx, [edx+0x2f64]
	mov [ebp-0x3c], edx
	mov eax, [ebp+0xc]
	mov [esp], eax
	call _Z29MSG_ClearLastReferencedEntityP5msg_t
	mov dword [ebp-0x38], 0x0
	xor edi, edi
_Z24SV_WriteSnapshotToClientP8client_tP5msg_t_100:
	mov edx, [ebp-0x3c]
	cmp [ebp-0x38], edx
	jl _Z24SV_WriteSnapshotToClientP8client_tP5msg_t_60
_Z24SV_WriteSnapshotToClientP8client_tP5msg_t_110:
	cmp [ebp-0x50], edi
	jle _Z24SV_WriteSnapshotToClientP8client_tP5msg_t_70
	xor esi, esi
	mov ebx, 0x270f
	mov ecx, [svsHeader+0x1c]
_Z24SV_WriteSnapshotToClientP8client_tP5msg_t_120:
	mov eax, [ebp-0x4c]
	add eax, edi
	cdq
	idiv dword [svsHeader+0xc]
	mov eax, edx
	shl eax, 0x4
	sub eax, edx
	lea eax, [edx+eax*4]
	lea edx, [ecx+eax*4]
	mov eax, [edx]
	cmp eax, ebx
	jz _Z24SV_WriteSnapshotToClientP8client_tP5msg_t_80
_Z24SV_WriteSnapshotToClientP8client_tP5msg_t_130:
	jg _Z24SV_WriteSnapshotToClientP8client_tP5msg_t_90
	jge _Z24SV_WriteSnapshotToClientP8client_tP5msg_t_100
	mov dword [esp+0x14], 0x1
	mov dword [esp+0x10], 0x0
	mov [esp+0xc], edx
	mov eax, [svsHeader+0x4]
	mov [esp+0x8], eax
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	lea eax, [ebp-0x28]
	mov [esp], eax
	call _Z15MSG_WriteEntityP14SnapshotInfo_sP5msg_tiPK13entityState_sS5_i
	add edi, 0x1
	mov edx, [ebp-0x3c]
	cmp [ebp-0x38], edx
	jge _Z24SV_WriteSnapshotToClientP8client_tP5msg_t_110
_Z24SV_WriteSnapshotToClientP8client_tP5msg_t_60:
	mov eax, [ebp-0x38]
	add eax, [ebp-0x40]
	cdq
	idiv dword [svsHeader+0xc]
	mov eax, edx
	shl eax, 0x4
	sub eax, edx
	lea eax, [edx+eax*4]
	mov ecx, [svsHeader+0x1c]
	lea esi, [ecx+eax*4]
	mov ebx, [esi]
	cmp [ebp-0x50], edi
	jg _Z24SV_WriteSnapshotToClientP8client_tP5msg_t_120
	xor edx, edx
	mov eax, 0x270f
	cmp eax, ebx
	jnz _Z24SV_WriteSnapshotToClientP8client_tP5msg_t_130
_Z24SV_WriteSnapshotToClientP8client_tP5msg_t_80:
	mov dword [esp+0x14], 0x0
	mov [esp+0x10], esi
	mov [esp+0xc], edx
	mov eax, [svsHeader+0x4]
	mov [esp+0x8], eax
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	lea eax, [ebp-0x28]
	mov [esp], eax
	call _Z15MSG_WriteEntityP14SnapshotInfo_sP5msg_tiPK13entityState_sS5_i
	add edi, 0x1
	add dword [ebp-0x38], 0x1
	jmp _Z24SV_WriteSnapshotToClientP8client_tP5msg_t_100
_Z24SV_WriteSnapshotToClientP8client_tP5msg_t_90:
	lea eax, [ebx+ebx*2]
	shl eax, 0x4
	sub eax, ebx
	mov edx, [svsHeader+0x24]
	lea eax, [edx+eax*8+0x4]
	mov byte [ebp-0x1c], 0x1
	mov dword [esp+0x14], 0x1
	mov [esp+0x10], esi
	mov [esp+0xc], eax
	mov eax, [svsHeader+0x4]
	mov [esp+0x8], eax
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	lea eax, [ebp-0x28]
	mov [esp], eax
	call _Z15MSG_WriteEntityP14SnapshotInfo_sP5msg_tiPK13entityState_sS5_i
	mov byte [ebp-0x1c], 0x0
	add dword [ebp-0x38], 0x1
	jmp _Z24SV_WriteSnapshotToClientP8client_tP5msg_t_100
_Z24SV_WriteSnapshotToClientP8client_tP5msg_t_70:
	mov dword [esp+0xc], 0xa
	mov dword [esp+0x8], 0x3ff
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	lea edx, [ebp-0x28]
	mov [esp], edx
	call _Z20MSG_WriteEntityIndexP14SnapshotInfo_sP5msg_tii
	mov eax, [ebp-0x58]
	mov eax, [eax+0x2f70]
	mov [ebp-0x34], eax
	mov edx, [ebp-0x58]
	mov edx, [edx+0x2f68]
	mov [ebp-0x30], edx
	mov eax, [ebp+0xc]
	mov [esp], eax
	call _Z29MSG_ClearLastReferencedEntityP5msg_t
	mov dword [ebp-0x2c], 0x0
	xor edi, edi
_Z24SV_WriteSnapshotToClientP8client_tP5msg_t_180:
	mov edx, [ebp-0x30]
	cmp [ebp-0x2c], edx
	jl _Z24SV_WriteSnapshotToClientP8client_tP5msg_t_140
_Z24SV_WriteSnapshotToClientP8client_tP5msg_t_190:
	cmp [ebp-0x48], edi
	jle _Z24SV_WriteSnapshotToClientP8client_tP5msg_t_150
	xor ebx, ebx
	mov esi, 0x270f
	mov ecx, [svsHeader+0x20]
_Z24SV_WriteSnapshotToClientP8client_tP5msg_t_200:
	mov eax, [ebp-0x44]
	add eax, edi
	cdq
	idiv dword [svsHeader+0x10]
	lea edx, [edx+edx*4]
	lea edx, [edx+edx*4]
	lea edx, [ecx+edx*4]
	mov eax, [edx]
	cmp eax, esi
	jz _Z24SV_WriteSnapshotToClientP8client_tP5msg_t_160
_Z24SV_WriteSnapshotToClientP8client_tP5msg_t_210:
	jg _Z24SV_WriteSnapshotToClientP8client_tP5msg_t_170
	jge _Z24SV_WriteSnapshotToClientP8client_tP5msg_t_180
	mov dword [esp+0x14], 0x1
	mov dword [esp+0x10], 0x0
	mov [esp+0xc], edx
	mov eax, [svsHeader+0x4]
	mov [esp+0x8], eax
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	lea eax, [ebp-0x28]
	mov [esp], eax
	call _Z20MSG_WriteDeltaClientP14SnapshotInfo_sP5msg_tiPK13clientState_sS5_i
	add edi, 0x1
	mov edx, [ebp-0x30]
	cmp [ebp-0x2c], edx
	jge _Z24SV_WriteSnapshotToClientP8client_tP5msg_t_190
_Z24SV_WriteSnapshotToClientP8client_tP5msg_t_140:
	mov eax, [ebp-0x2c]
	add eax, [ebp-0x34]
	cdq
	idiv dword [svsHeader+0x10]
	lea edx, [edx+edx*4]
	lea edx, [edx+edx*4]
	mov ecx, [svsHeader+0x20]
	lea ebx, [ecx+edx*4]
	mov esi, [ebx]
	cmp [ebp-0x48], edi
	jg _Z24SV_WriteSnapshotToClientP8client_tP5msg_t_200
	xor edx, edx
	mov eax, 0x270f
	cmp eax, esi
	jnz _Z24SV_WriteSnapshotToClientP8client_tP5msg_t_210
_Z24SV_WriteSnapshotToClientP8client_tP5msg_t_160:
	mov dword [esp+0x14], 0x0
	mov [esp+0x10], ebx
	mov [esp+0xc], edx
	mov eax, [svsHeader+0x4]
	mov [esp+0x8], eax
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	lea eax, [ebp-0x28]
	mov [esp], eax
	call _Z20MSG_WriteDeltaClientP14SnapshotInfo_sP5msg_tiPK13clientState_sS5_i
	add edi, 0x1
	add dword [ebp-0x2c], 0x1
	jmp _Z24SV_WriteSnapshotToClientP8client_tP5msg_t_180
_Z24SV_WriteSnapshotToClientP8client_tP5msg_t_170:
	mov dword [esp+0x14], 0x1
	mov [esp+0x10], ebx
	mov dword [esp+0xc], 0x0
	mov eax, [svsHeader+0x4]
	mov [esp+0x8], eax
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	lea eax, [ebp-0x28]
	mov [esp], eax
	call _Z20MSG_WriteDeltaClientP14SnapshotInfo_sP5msg_tiPK13clientState_sS5_i
	add dword [ebp-0x2c], 0x1
	jmp _Z24SV_WriteSnapshotToClientP8client_tP5msg_t_180
_Z24SV_WriteSnapshotToClientP8client_tP5msg_t_150:
	mov eax, [ebp+0xc]
	mov [esp], eax
	call _Z13MSG_WriteBit0P5msg_t
	mov edx, sv_padPackets
	mov eax, [edx]
	mov eax, [eax+0xc]
	test eax, eax
	jg _Z24SV_WriteSnapshotToClientP8client_tP5msg_t_220
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z24SV_WriteSnapshotToClientP8client_tP5msg_t_220:
	xor ebx, ebx
	mov esi, edx
_Z24SV_WriteSnapshotToClientP8client_tP5msg_t_230:
	mov dword [esp+0x4], 0x0
	mov edx, [ebp+0xc]
	mov [esp], edx
	call _Z13MSG_WriteByteP5msg_ti
	add ebx, 0x1
	mov eax, [esi]
	cmp ebx, [eax+0xc]
	jl _Z24SV_WriteSnapshotToClientP8client_tP5msg_t_230
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z24SV_WriteSnapshotToClientP8client_tP5msg_t_30:
	mov edx, 0x1
	jmp _Z24SV_WriteSnapshotToClientP8client_tP5msg_t_240
_Z24SV_WriteSnapshotToClientP8client_tP5msg_t_20:
	mov ecx, [esi+0x10]
	sub ecx, eax
	cmp ecx, 0x1c
	jg _Z24SV_WriteSnapshotToClientP8client_tP5msg_t_250
	and eax, 0x1f
	lea edx, [eax+eax*2]
	shl edx, 0x5
	sub edx, eax
	shl edx, 0x5
	add edx, eax
	lea edi, [esi+edx*4+0x21464]
	mov [ebp-0x54], ecx
	mov ebx, [edi+0x2f80]
	mov eax, [edi+0x2f6c]
	mov [ebp-0x60], eax
	mov eax, [svsHeader+0x14]
	sub eax, [svsHeader+0xc]
	cmp [ebp-0x60], eax
	jl _Z24SV_WriteSnapshotToClientP8client_tP5msg_t_260
	mov eax, [edi+0x2f70]
	mov [ebp-0x5c], eax
	mov eax, [svsHeader+0x18]
	sub eax, [svsHeader+0x10]
	cmp [ebp-0x5c], eax
	jge _Z24SV_WriteSnapshotToClientP8client_tP5msg_t_270
	mov ecx, [edi+0x2f68]
	mov edx, svs
	mov eax, [edx+0x2dbc518]
	lea ebx, [esi+0x21288]
	mov [esp+0x18], ecx
	mov [esp+0x14], eax
	sub eax, [edx+svs+0x1310090]
	mov [esp+0x10], eax
	mov edx, [ebp-0x5c]
	mov [esp+0xc], edx
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_s_delta_request_
_Z24SV_WriteSnapshotToClientP8client_tP5msg_t_290:
	mov dword [esp], 0xf
	call _Z16Com_PrintWarningiPKcz
	xor edi, edi
	mov dword [ebp-0x54], 0x0
	xor ebx, ebx
	jmp _Z24SV_WriteSnapshotToClientP8client_tP5msg_t_270
_Z24SV_WriteSnapshotToClientP8client_tP5msg_t_250:
	lea eax, [esi+0x21288]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_s_delta_request_1
	mov dword [esp], 0xf
	call _Z11Com_DPrintfiPKcz
	xor edi, edi
	mov dword [ebp-0x54], 0x0
	xor ebx, ebx
	jmp _Z24SV_WriteSnapshotToClientP8client_tP5msg_t_270
_Z24SV_WriteSnapshotToClientP8client_tP5msg_t_50:
	mov edx, [ebp-0x58]
	mov [esp+0x10], edx
	mov dword [esp+0xc], 0x0
	mov eax, [svsHeader+0x4]
	mov [esp+0x8], eax
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	lea edx, [ebp-0x28]
	mov [esp], edx
	call _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5_
	mov dword [ebp-0x50], 0x0
	mov dword [ebp-0x4c], 0x0
	mov dword [ebp-0x48], 0x0
	mov dword [ebp-0x44], 0x0
	jmp _Z24SV_WriteSnapshotToClientP8client_tP5msg_t_280
_Z24SV_WriteSnapshotToClientP8client_tP5msg_t_260:
	mov ecx, [edi+0x2f64]
	mov edx, svs
	mov eax, [edx+0x2dbc514]
	lea ebx, [esi+0x21288]
	mov [esp+0x18], ecx
	mov [esp+0x14], eax
	sub eax, [edx+svs+0x131008c]
	mov [esp+0x10], eax
	mov edx, [ebp-0x60]
	mov [esp+0xc], edx
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_s_delta_request_2
	jmp _Z24SV_WriteSnapshotToClientP8client_tP5msg_t_290
	nop


;SV_GetClientPositionAtTime(int, int, float*)
_Z26SV_GetClientPositionAtTimeiiPf:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x301c
	mov eax, sv_fps
	mov ecx, [eax]
	mov ebx, 0x3e8
	mov eax, ebx
	cdq
	idiv dword [ecx+0xc]
	mov ebx, eax
	mov eax, svs
	mov edi, [eax+0x463804]
	sub edi, [ebp+0xc]
	mov eax, 0x190
	cdq
	idiv ebx
	add eax, 0x1
	mov [ebp-0x300c], eax
	mov dword [ebp-0x1c], 0x0
	test eax, eax
	jg _Z26SV_GetClientPositionAtTimeiiPf_10
_Z26SV_GetClientPositionAtTimeiiPf_30:
	xor eax, eax
_Z26SV_GetClientPositionAtTimeiiPf_80:
	add esp, 0x301c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z26SV_GetClientPositionAtTimeiiPf_10:
	xor esi, esi
	mov dword [ebp-0x3010], 0x0
	jmp _Z26SV_GetClientPositionAtTimeiiPf_20
_Z26SV_GetClientPositionAtTimeiiPf_60:
	mov eax, [ebp-0x2eb4]
	test eax, eax
	jle _Z26SV_GetClientPositionAtTimeiiPf_30
	mov eax, [ebp-0x2fe8]
	test al, 0x4
	jz _Z26SV_GetClientPositionAtTimeiiPf_30
	test al, 0x2
	jnz _Z26SV_GetClientPositionAtTimeiiPf_30
	mov edx, [ebp-0x1c]
	cmp edi, edx
	jz _Z26SV_GetClientPositionAtTimeiiPf_40
	jle _Z26SV_GetClientPositionAtTimeiiPf_50
	mov eax, [ebp-0x2fe0]
	mov [ebp-0x34], eax
	mov eax, [ebp-0x2fdc]
	mov [ebp-0x30], eax
	mov eax, [ebp-0x2fd8]
	mov [ebp-0x2c], eax
	mov [ebp-0x3010], edx
_Z26SV_GetClientPositionAtTimeiiPf_70:
	lea edx, [ebx+edx]
	mov [ebp-0x1c], edx
	add esi, 0x1
	cmp [ebp-0x300c], esi
	jz _Z26SV_GetClientPositionAtTimeiiPf_30
_Z26SV_GetClientPositionAtTimeiiPf_20:
	lea eax, [ebp-0x98]
	mov [esp+0xc], eax
	lea edx, [ebp-0x2ffc]
	mov [esp+0x8], edx
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z24SV_GetArchivedClientInfoiPiP13playerState_sP13clientState_s
	test eax, eax
	jnz _Z26SV_GetClientPositionAtTimeiiPf_60
	mov edx, [ebp-0x1c]
	jmp _Z26SV_GetClientPositionAtTimeiiPf_70
_Z26SV_GetClientPositionAtTimeiiPf_40:
	mov ecx, [ebp-0x2fe0]
	mov [ebp-0x34], ecx
	mov edx, [ebp-0x2fdc]
	mov [ebp-0x30], edx
	mov eax, [ebp-0x2fd8]
	mov [ebp-0x2c], eax
	mov [ebp-0x28], ecx
	mov [ebp-0x24], edx
	mov [ebp-0x20], eax
_Z26SV_GetClientPositionAtTimeiiPf_90:
	movss xmm2, dword [_float_1_00000000]
_Z26SV_GetClientPositionAtTimeiiPf_100:
	movss xmm1, dword [ebp-0x28]
	movss xmm0, dword [ebp-0x34]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	mov eax, [ebp+0x10]
	movss [eax], xmm1
	movss xmm1, dword [ebp-0x24]
	movss xmm0, dword [ebp-0x30]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [eax+0x4], xmm1
	movss xmm1, dword [ebp-0x20]
	movss xmm0, dword [ebp-0x2c]
	subss xmm0, xmm1
	mulss xmm2, xmm0
	addss xmm1, xmm2
	movss [eax+0x8], xmm1
	mov eax, 0x1
	jmp _Z26SV_GetClientPositionAtTimeiiPf_80
_Z26SV_GetClientPositionAtTimeiiPf_50:
	mov eax, [ebp-0x2fe0]
	mov [ebp-0x28], eax
	mov eax, [ebp-0x2fdc]
	mov [ebp-0x24], eax
	mov eax, [ebp-0x2fd8]
	mov [ebp-0x20], eax
	cmp edx, [ebp-0x3010]
	jz _Z26SV_GetClientPositionAtTimeiiPf_90
	mov eax, edx
	sub eax, edi
	cvtsi2ss xmm2, eax
	sub edx, [ebp-0x3010]
	cvtsi2ss xmm0, edx
	divss xmm2, xmm0
	jmp _Z26SV_GetClientPositionAtTimeiiPf_100


;SV_UpdateServerCommandsToClient(client_t*, msg_t*)
_Z31SV_UpdateServerCommandsToClientP8client_tP5msg_t:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0x8]
	mov edx, [edi+0x20e4c]
	lea eax, [edx+0x1]
	cmp eax, [edi+0x20e48]
	jge _Z31SV_UpdateServerCommandsToClientP8client_tP5msg_t_10
	mov eax, sv_debugReliableCmds
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z31SV_UpdateServerCommandsToClientP8client_tP5msg_t_20
_Z31SV_UpdateServerCommandsToClientP8client_tP5msg_t_10:
	lea ebx, [edx+0x1]
	mov eax, [edi+0x20e48]
	cmp ebx, eax
	jle _Z31SV_UpdateServerCommandsToClientP8client_tP5msg_t_30
_Z31SV_UpdateServerCommandsToClientP8client_tP5msg_t_40:
	mov [edi+0x20e50], eax
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z31SV_UpdateServerCommandsToClientP8client_tP5msg_t_60:
	mov [esp+0xc], esi
	mov eax, ebx
	sub eax, [edi+0x20e4c]
	sub eax, 0x1
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_i_s
	mov dword [esp], 0xf
	call _Z10Com_PrintfiPKcz
_Z31SV_UpdateServerCommandsToClientP8client_tP5msg_t_50:
	add ebx, 0x1
	mov eax, [edi+0x20e48]
	cmp eax, ebx
	jl _Z31SV_UpdateServerCommandsToClientP8client_tP5msg_t_40
_Z31SV_UpdateServerCommandsToClientP8client_tP5msg_t_30:
	mov dword [esp+0x4], 0x4
	mov eax, [ebp+0xc]
	mov [esp], eax
	call _Z13MSG_WriteByteP5msg_ti
	mov [esp+0x4], ebx
	mov edx, [ebp+0xc]
	mov [esp], edx
	call _Z13MSG_WriteLongP5msg_ti
	mov eax, ebx
	and eax, 0x7f
	mov edx, eax
	shl edx, 0xa
	lea eax, [edx+eax*8+0xa40]
	lea esi, [edi+eax+0x8]
	mov [esp+0x4], esi
	mov eax, [ebp+0xc]
	mov [esp], eax
	call _Z15MSG_WriteStringP5msg_tPKc
	mov edx, sv_debugReliableCmds
	mov eax, [edx]
	cmp byte [eax+0xc], 0x0
	jz _Z31SV_UpdateServerCommandsToClientP8client_tP5msg_t_50
	jmp _Z31SV_UpdateServerCommandsToClientP8client_tP5msg_t_60
_Z31SV_UpdateServerCommandsToClientP8client_tP5msg_t_20:
	lea eax, [edi+0x21288]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_client_s_has_the
	mov dword [esp], 0xf
	call _Z10Com_PrintfiPKcz
	mov edx, [edi+0x20e4c]
	jmp _Z31SV_UpdateServerCommandsToClientP8client_tP5msg_t_10
	nop
	add [eax], al


;Initialized global or static variables of sv_snapshot_mp:
SECTION .data


;Initialized constant data of sv_snapshot_mp:
SECTION .rdata


;Zero initialized global or static variables of sv_snapshot_mp:
SECTION .bss
g_archiveMsg: resb 0x80
tempSnapshotMsgBuf: resb 0x20000
_ZZ22SV_SendMessageToClientP5msg_tP8client_tE15svCompressedBuf: resb 0x20000
svsHeader: resb 0x100
sv_clientArchive: resb 0x80


;All cstrings:
SECTION .rdata
_cstring_sv_getcachedsnap:		db 015h,"SV_GetCachedSnapshot: end of message",0
_cstring_svsnextcachedsna:		db 015h,"svs.nextCachedSnapshotClients wrapped",0
_cstring_svsnextcachedsna1:		db 015h,"svs.nextCachedSnapshotEntities wrapped",0
_cstring_svsnextcachedsna2:		db 015h,"svs.nextCachedSnapshotFrames wrapped",0
_cstring_warning_msg_over:		db "WARNING: msg overflowed for %s, trying to recover",0ah,0
_cstring_warning_client_d:		db "WARNING: client disconnected for msg overflow: %s",0ah,0
_cstring_disconnect:		db "disconnect",0
_cstring_exe_servermessag:		db "EXE_SERVERMESSAGEOVERFLOW",0
_cstring__unacknowledged_:		db "-- Unacknowledged Server Commands for client %i:%s --",0ah,0
_cstring_:		db "----------",0
_cstring_cmd_5d_8d_s:		db "cmd %5d: %8d: %s",0ah,0
_cstring_bpspc20f_bps20f_:		db "bpspc(%2.0f) bps(%2.0f) pk(%i) ubps(%2.0f) upk(%i) cr(%2.2f) acr(%2.2f)",0ah,0
_cstring_svsnextarchiveds:		db 015h,"svs.nextArchivedSnapshotFrames wrapped",0
_cstring_it_would_take_im:		db "It would take %ims to send %i bytes to client %s (rate %i)",0ah,0
_cstring_sv_archivesnapsh:		db "SV_ArchiveSnapshot: ignoring snapshot because it overflowed.",0ah,0
_cstring_svsnextarchiveds1:		db 015h,"svs.nextArchivedSnapshotBuffer wrapped",0
_cstring_svsnextsnapshotc:		db 015h,"svs.nextSnapshotClients wrapped",0
_cstring_sv_buildclientsn:		db 015h,"SV_BuildClientSnapshot: bad gEnt",0
_cstring_svsnextsnapshote:		db 015h,"svs.nextSnapshotEntities wrapped",0
_cstring_s_delta_request_:		db "%s: Delta request from out of date clients - delta against client %i, oldest is %i, current is %i.  Their old snapshot had %i clients in it",0ah,0
_cstring_s_delta_request_1:		db "%s: Delta request from out of date packet.",0ah,0
_cstring_s_delta_request_2:		db "%s: Delta request from out of date entities - delta against entity %i, oldest is %i, current is %i.  Their old snapshot had %i entities in it",0ah,0
_cstring_i_s:		db "%i: %s",0ah,0
_cstring_client_s_has_the:		db "Client %s has the following un-ack",27h,"d reliable commands:",0ah,0



;All constant floats and doubles:
SECTION .rdata
_float_20_00000000:		dd 0x41a00000	; 20
_float_1_00000000:		dd 0x3f800000	; 1
_float_100_00000000:		dd 0x42c80000	; 100
_float_3402823466385288598117041:		dd 0x7f7fffff	; 3.40282e+38
_float_0_00000000:		dd 0x0	; 0

