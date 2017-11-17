;Imports of sv_snapshot_mp:
	extern svs
	extern MSG_InitReadOnly
	extern MSG_BeginReading
	extern MSG_ReadBit
	extern MSG_ReadLong
	extern MSG_ClearLastReferencedEntity
	extern MSG_ReadDeltaClient
	extern MSG_ReadEntityIndex
	extern Com_Error
	extern MSG_InitReadOnlySplit
	extern MSG_ReadDeltaPlayerstate
	extern sv
	extern MSG_ReadDeltaArchivedEntity
	extern SV_WriteDownloadToClient
	extern MSG_WriteByte
	extern SV_TrackSnapshotSize
	extern Com_PrintWarning
	extern NET_OutOfBandPrint
	extern SV_DropClient
	extern Com_Printf
	extern MSG_Init
	extern MSG_WriteLong
	extern MSG_WriteString
	extern sv_maxclients
	extern SV_SendClientVoiceData
	extern sv_showAverageBPS
	extern Com_DPrintf
	extern tempServerMsgBuf
	extern SV_ArchiveSnapshot
	extern sv_maxRate
	extern sv_debugRate
	extern SV_Netchan_TransmitNextFragment
	extern memcpy
	extern Cvar_SetInt
	extern G_GetClientArchiveTime
	extern sv_fps
	extern G_SetClientArchiveTime
	extern SV_GameClientNum
	extern AddLeanToPosition
	extern CM_PointLeafnum
	extern CM_LeafCluster
	extern CM_ClusterPVS
	extern G_GetFogOpaqueDistSqrd
	extern CM_BoxLeafnums
	extern G_GetClientState
	extern SV_GentityNum
	extern SV_SvEntityForGentity
	extern BoxDistSqrdExceeds
	extern MSG_WriteBitsCompress
	extern SV_TrackPacketCompression
	extern Sys_Milliseconds
	extern SV_Netchan_Transmit
	extern Sys_IsLANAddress
	extern pow
	extern irand
	extern GetFollowPlayerState
	extern G_GetPlayerState
	extern G_GetClientSize
	extern MSG_WriteDeltaPlayerstate
	extern MSG_WriteEntity
	extern MSG_WriteEntityIndex
	extern MSG_WriteDeltaClient
	extern MSG_WriteBit0
	extern sv_padPackets
	extern sv_debugReliableCmds

;Exports of sv_snapshot_mp:
	global g_archiveMsg
	global tempSnapshotMsgBuf
	global SV_GetCachedSnapshotInternal
	global _ZZ22SV_SendMessageToClientP5msg_tP8client_tE15svCompressedBuf
	global SV_EndClientSnapshot
	global SV_SendClientMessages
	global SV_BeginClientSnapshot
	global SV_BuildClientSnapshot
	global SV_SendMessageToClient
	global SV_GetArchivedClientInfo
	global SV_GetServerStaticHeader
	global SV_SetServerStaticHeader
	global SV_WriteSnapshotToClient
	global SV_GetClientPositionAtTime
	global SV_UpdateServerCommandsToClient
	global svsHeader
	global sv_clientArchive


SECTION .text


;SV_GetCachedSnapshotInternal(int)
SV_GetCachedSnapshotInternal:
SV_GetCachedSnapshotInternal_350:
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
	sub eax, svs+0x553b80
	cmp edi, eax
	jl SV_GetCachedSnapshotInternal_10
	mov eax, [esi+0x8246aac]
	mov ebx, eax
	sub ebx, 0x200
	mov edx, 0x0
	cmovs ebx, edx
	lea ecx, [eax-0x1]
	cmp ebx, ecx
	jg SV_GetCachedSnapshotInternal_20
	mov edx, ecx
	and edx, 0x800001ff
	js SV_GetCachedSnapshotInternal_30
SV_GetCachedSnapshotInternal_340:
	lea eax, [edx*4]
	shl edx, 0x5
	sub edx, eax
	add edx, esi
	mov [ebp-0x60], edx
	mov eax, [ebp-0x64]
	cmp eax, [edx]
	jnz SV_GetCachedSnapshotInternal_40
	jmp SV_GetCachedSnapshotInternal_50
SV_GetCachedSnapshotInternal_70:
	lea eax, [edx*4]
	shl edx, 0x5
	sub edx, eax
	add edx, [ebp-0x68]
	mov [ebp-0x60], edx
	mov eax, [ebp-0x64]
	cmp eax, [edx]
	jz SV_GetCachedSnapshotInternal_60
SV_GetCachedSnapshotInternal_40:
	sub ecx, 0x1
	cmp ebx, ecx
	jg SV_GetCachedSnapshotInternal_20
	mov edx, ecx
	and edx, 0x800001ff
	jns SV_GetCachedSnapshotInternal_70
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
	jnz SV_GetCachedSnapshotInternal_40
SV_GetCachedSnapshotInternal_60:
	mov ecx, edx
SV_GetCachedSnapshotInternal_330:
	mov edx, [ebp-0x68]
	mov eax, [edx+0x8246aa4]
	sub eax, 0x4000
	cmp [ecx+0xc], eax
	jl SV_GetCachedSnapshotInternal_20
	mov eax, [edx+0x8246aa8]
	sub eax, 0x1000
	cmp [ecx+0x14], eax
	jge SV_GetCachedSnapshotInternal_80
SV_GetCachedSnapshotInternal_20:
	mov edx, edi
	and edx, 0x81ffffff
	js SV_GetCachedSnapshotInternal_90
	mov ecx, svs+0x553b80
	sub ecx, edx
	mov ebx, [ebp-0x54]
	mov eax, [ebx+0x4]
	cmp ecx, eax
	jl SV_GetCachedSnapshotInternal_100
SV_GetCachedSnapshotInternal_310:
	mov [esp+0x8], eax
	mov ecx, [ebp-0x68]
	lea eax, [ecx+edx+svs+0x479a620]
	mov [esp+0x4], eax
	lea ebx, [ebp-0x40]
	mov [esp], ebx
	call MSG_InitReadOnly
SV_GetCachedSnapshotInternal_200:
	lea edx, [ebp-0x40]
	mov [esp], edx
	call MSG_BeginReading
	lea ecx, [ebp-0x40]
	mov [esp], ecx
	call MSG_ReadBit
	test eax, eax
	jz SV_GetCachedSnapshotInternal_110
	mov ebx, svs
	mov edx, [ebx+0x8246aac]
	and edx, 0x800001ff
	js SV_GetCachedSnapshotInternal_120
SV_GetCachedSnapshotInternal_320:
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
	call MSG_ReadLong
	mov ecx, [ebp-0x60]
	mov [ecx+0x4], eax
	lea eax, [ebp-0x40]
	mov [esp], eax
	call MSG_ClearLastReferencedEntity
	mov esi, ebx
	jmp SV_GetCachedSnapshotInternal_130
SV_GetCachedSnapshotInternal_180:
	mov ecx, [esi+0x8246aa8]
	and ecx, 0x80000fff
	js SV_GetCachedSnapshotInternal_140
SV_GetCachedSnapshotInternal_190:
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
	call MSG_ReadDeltaClient
	lea eax, [ebp-0x40]
	mov [esp], eax
	call MSG_ReadBit
	mov [ebx+0x30], eax
	test eax, eax
	jnz SV_GetCachedSnapshotInternal_150
SV_GetCachedSnapshotInternal_220:
	mov eax, [esi+0x8246aa8]
	add eax, 0x1
	mov [esi+0x8246aa8], eax
	cmp eax, 0x7ffffffd
	jg SV_GetCachedSnapshotInternal_160
SV_GetCachedSnapshotInternal_210:
	mov ebx, [ebp-0x60]
	add dword [ebx+0x10], 0x1
SV_GetCachedSnapshotInternal_130:
	lea edx, [ebp-0x40]
	mov [esp], edx
	call MSG_ReadBit
	test eax, eax
	jz SV_GetCachedSnapshotInternal_170
	mov dword [esp+0x4], 0x6
	lea ecx, [ebp-0x40]
	mov [esp], ecx
	call MSG_ReadEntityIndex
	mov edi, eax
	mov ebx, [ebp-0x40]
	test ebx, ebx
	jz SV_GetCachedSnapshotInternal_180
	mov dword [esp+0x4], _cstring_sv_getcachedsnap
	mov dword [esp], 0x2
	call Com_Error
	mov ecx, [esi+0x8246aa8]
	and ecx, 0x80000fff
	jns SV_GetCachedSnapshotInternal_190
SV_GetCachedSnapshotInternal_140:
	sub ecx, 0x1
	or ecx, 0xfffff000
	add ecx, 0x1
	jmp SV_GetCachedSnapshotInternal_190
SV_GetCachedSnapshotInternal_100:
	sub eax, ecx
	mov [esp+0x10], eax
	mov eax, [ebp-0x68]
	add eax, svs+0x479a620
	mov [esp+0xc], eax
	mov [esp+0x8], ecx
	lea eax, [edx+eax]
	mov [esp+0x4], eax
	lea eax, [ebp-0x40]
	mov [esp], eax
	call MSG_InitReadOnlySplit
	jmp SV_GetCachedSnapshotInternal_200
SV_GetCachedSnapshotInternal_160:
	mov dword [esp+0x4], _cstring_svsnextcachedsna
	mov dword [esp], 0x1
	call Com_Error
	jmp SV_GetCachedSnapshotInternal_210
SV_GetCachedSnapshotInternal_150:
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
	call MSG_ReadDeltaPlayerstate
	jmp SV_GetCachedSnapshotInternal_220
SV_GetCachedSnapshotInternal_170:
	lea eax, [ebp-0x40]
	mov [esp], eax
	call MSG_ClearLastReferencedEntity
	mov esi, svs
	jmp SV_GetCachedSnapshotInternal_230
SV_GetCachedSnapshotInternal_270:
	mov [esp+0x10], ebx
	mov eax, [esi+0x8246aa4]
	and eax, 0x80003fff
	js SV_GetCachedSnapshotInternal_240
SV_GetCachedSnapshotInternal_280:
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
	call MSG_ReadDeltaArchivedEntity
	mov eax, [esi+0x8246aa4]
	add eax, 0x1
	mov [esi+0x8246aa4], eax
	cmp eax, 0x7ffffffd
	jg SV_GetCachedSnapshotInternal_250
SV_GetCachedSnapshotInternal_290:
	mov eax, [ebp-0x60]
	add dword [eax+0x8], 0x1
SV_GetCachedSnapshotInternal_230:
	mov dword [esp+0x4], 0xa
	lea edx, [ebp-0x40]
	mov [esp], edx
	call MSG_ReadEntityIndex
	mov ebx, eax
	cmp eax, 0x3ff
	jz SV_GetCachedSnapshotInternal_260
	mov ecx, [ebp-0x40]
	test ecx, ecx
	jz SV_GetCachedSnapshotInternal_270
	mov dword [esp+0x4], _cstring_sv_getcachedsnap
	mov dword [esp], 0x2
	call Com_Error
	mov [esp+0x10], ebx
	mov eax, [esi+0x8246aa4]
	and eax, 0x80003fff
	jns SV_GetCachedSnapshotInternal_280
SV_GetCachedSnapshotInternal_240:
	sub eax, 0x1
	or eax, 0xffffc000
	add eax, 0x1
	jmp SV_GetCachedSnapshotInternal_280
SV_GetCachedSnapshotInternal_250:
	mov dword [esp+0x4], _cstring_svsnextcachedsna1
	mov dword [esp], 0x1
	call Com_Error
	jmp SV_GetCachedSnapshotInternal_290
SV_GetCachedSnapshotInternal_260:
	mov eax, svs
	mov edx, [eax+0x8246aac]
	add edx, 0x1
	mov [eax+0x8246aac], edx
	cmp edx, 0x7ffffffd
	jle SV_GetCachedSnapshotInternal_80
	mov dword [esp+0x4], _cstring_svsnextcachedsna2
	mov dword [esp], 0x1
	call Com_Error
SV_GetCachedSnapshotInternal_80:
	mov eax, [ebp-0x60]
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SV_GetCachedSnapshotInternal_110:
	lea ebx, [ebp-0x40]
	mov [esp], ebx
	call MSG_ReadLong
	mov ecx, eax
	mov ebx, svs
	mov eax, [ebx+0x624451c]
	sub eax, 0x4b0
	cmp ecx, eax
	jge SV_GetCachedSnapshotInternal_300
SV_GetCachedSnapshotInternal_10:
	mov dword [ebp-0x60], 0x0
	mov eax, [ebp-0x60]
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SV_GetCachedSnapshotInternal_90:
	sub edx, 0x1
	or edx, 0xfe000000
	add edx, 0x1
	mov ecx, svs+0x553b80
	sub ecx, edx
	mov ebx, [ebp-0x54]
	mov eax, [ebx+0x4]
	cmp ecx, eax
	jl SV_GetCachedSnapshotInternal_100
	jmp SV_GetCachedSnapshotInternal_310
SV_GetCachedSnapshotInternal_120:
	sub edx, 0x1
	or edx, 0xfffffe00
	add edx, 0x1
	jmp SV_GetCachedSnapshotInternal_320
SV_GetCachedSnapshotInternal_50:
	mov ecx, [ebp-0x60]
	jmp SV_GetCachedSnapshotInternal_330
SV_GetCachedSnapshotInternal_30:
	sub edx, 0x1
	or edx, 0xfffffe00
	add edx, 0x1
	jmp SV_GetCachedSnapshotInternal_340
SV_GetCachedSnapshotInternal_300:
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
	sub eax, svs+0x553b80
	cmp [ebx+edx*8+svs+0x47980a0], eax
	jl SV_GetCachedSnapshotInternal_10
	mov eax, ecx
	call SV_GetCachedSnapshotInternal_350
	mov [ebp-0x5c], eax
	test eax, eax
	jz SV_GetCachedSnapshotInternal_10
	mov edx, [ebx+0x8246aac]
	and edx, 0x800001ff
	jns SV_GetCachedSnapshotInternal_360
	sub edx, 0x1
	or edx, 0xfffffe00
	add edx, 0x1
SV_GetCachedSnapshotInternal_360:
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
	call MSG_ReadLong
	mov edx, [ebp-0x60]
	mov [edx+0x4], eax
	mov ecx, [ebp-0x5c]
	mov eax, [ecx+0x10]
	test eax, eax
	jle SV_GetCachedSnapshotInternal_370
	mov eax, [ebp-0x5c]
	mov ecx, [eax+0x14]
	and ecx, 0x80000fff
	jns SV_GetCachedSnapshotInternal_380
	sub ecx, 0x1
	or ecx, 0xfffff000
	add ecx, 0x1
SV_GetCachedSnapshotInternal_380:
	lea edx, [ecx+ecx*2]
	mov eax, edx
	shl eax, 0x8
	sub eax, edx
	shl eax, 0x2
	sub eax, ecx
	lea eax, [ebx+eax*4+svs+0x679a630]
	mov [ebp-0x58], eax
	mov edi, [eax+0x4]
SV_GetCachedSnapshotInternal_600:
	lea edx, [ebp-0x40]
	mov [esp], edx
	call MSG_ClearLastReferencedEntity
	mov dword [ebp-0x50], 0x0
SV_GetCachedSnapshotInternal_510:
	lea ecx, [ebp-0x40]
	mov [esp], ecx
	call MSG_ReadBit
	test eax, eax
	jz SV_GetCachedSnapshotInternal_390
	mov dword [esp+0x4], 0x6
	lea ebx, [ebp-0x40]
	mov [esp], ebx
	call MSG_ReadEntityIndex
	mov esi, eax
	mov eax, [ebp-0x40]
	test eax, eax
	jnz SV_GetCachedSnapshotInternal_400
SV_GetCachedSnapshotInternal_590:
	cmp edi, esi
	jge SV_GetCachedSnapshotInternal_410
	mov eax, [ebp-0x5c]
	mov eax, [eax+0x10]
	mov [ebp-0x4c], eax
	mov edx, svs
	mov [ebp-0x68], edx
	mov ebx, [ebp-0x50]
	mov ecx, [ebp-0x5c]
	add ebx, [ecx+0x14]
	jmp SV_GetCachedSnapshotInternal_420
SV_GetCachedSnapshotInternal_440:
	mov edi, 0x1869f
SV_GetCachedSnapshotInternal_460:
	cmp esi, edi
	jle SV_GetCachedSnapshotInternal_430
	mov eax, [ebp-0x4c]
SV_GetCachedSnapshotInternal_420:
	add dword [ebp-0x50], 0x1
	add ebx, 0x1
	cmp [ebp-0x50], eax
	jge SV_GetCachedSnapshotInternal_440
	mov ecx, ebx
	and ecx, 0x80000fff
	js SV_GetCachedSnapshotInternal_450
SV_GetCachedSnapshotInternal_520:
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
	jmp SV_GetCachedSnapshotInternal_460
SV_GetCachedSnapshotInternal_410:
	mov ecx, svs
	mov [ebp-0x68], ecx
SV_GetCachedSnapshotInternal_430:
	cmp esi, edi
	jz SV_GetCachedSnapshotInternal_470
	mov ebx, [ebp-0x68]
	mov ecx, [ebx+0x8246aa8]
	and ecx, 0x80000fff
	jns SV_GetCachedSnapshotInternal_480
	sub ecx, 0x1
	or ecx, 0xfffff000
	add ecx, 0x1
SV_GetCachedSnapshotInternal_480:
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
	call MSG_ReadDeltaClient
	lea edx, [ebp-0x40]
	mov [esp], edx
	call MSG_ReadBit
	mov [ebx+0x30], eax
	test eax, eax
	jz SV_GetCachedSnapshotInternal_490
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
	call MSG_ReadDeltaPlayerstate
SV_GetCachedSnapshotInternal_490:
	mov edx, [ebp-0x68]
	mov eax, [edx+0x8246aa8]
	add eax, 0x1
	mov [edx+0x8246aa8], eax
	cmp eax, 0x7ffffffd
	jle SV_GetCachedSnapshotInternal_500
	mov dword [esp+0x4], _cstring_svsnextcachedsna
	mov dword [esp], 0x1
	call Com_Error
SV_GetCachedSnapshotInternal_500:
	mov ecx, [ebp-0x60]
	add dword [ecx+0x10], 0x1
	jmp SV_GetCachedSnapshotInternal_510
SV_GetCachedSnapshotInternal_450:
	sub ecx, 0x1
	or ecx, 0xfffff000
	add ecx, 0x1
	jmp SV_GetCachedSnapshotInternal_520
SV_GetCachedSnapshotInternal_470:
	mov ebx, [ebp-0x68]
	mov ecx, [ebx+0x8246aa8]
	and ecx, 0x80000fff
	js SV_GetCachedSnapshotInternal_530
SV_GetCachedSnapshotInternal_610:
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
	call MSG_ReadDeltaClient
	lea edx, [ebp-0x40]
	mov [esp], edx
	call MSG_ReadBit
	mov [ebx+0x30], eax
	test eax, eax
	jz SV_GetCachedSnapshotInternal_540
	mov ecx, [ebp-0x58]
	mov eax, [ecx]
	test eax, eax
	jz SV_GetCachedSnapshotInternal_550
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
	call MSG_ReadDeltaPlayerstate
SV_GetCachedSnapshotInternal_540:
	mov ebx, svs
	mov eax, [ebx+0x8246aa8]
	add eax, 0x1
	mov [ebx+0x8246aa8], eax
	cmp eax, 0x7ffffffd
	jg SV_GetCachedSnapshotInternal_560
SV_GetCachedSnapshotInternal_620:
	mov eax, [ebp-0x60]
	add dword [eax+0x10], 0x1
	add dword [ebp-0x50], 0x1
	mov ecx, [ebp-0x50]
	mov edx, [ebp-0x5c]
	cmp ecx, [edx+0x10]
	jge SV_GetCachedSnapshotInternal_570
	mov eax, ecx
	add eax, [edx+0x14]
	mov ecx, eax
	and ecx, 0x80000fff
	js SV_GetCachedSnapshotInternal_580
SV_GetCachedSnapshotInternal_690:
	lea edx, [ecx+ecx*2]
	mov eax, edx
	shl eax, 0x8
	sub eax, edx
	shl eax, 0x2
	sub eax, ecx
	lea eax, [ebx+eax*4+svs+0x679a630]
	mov [ebp-0x58], eax
	mov edi, [eax+0x4]
	jmp SV_GetCachedSnapshotInternal_510
SV_GetCachedSnapshotInternal_400:
	mov dword [esp+0x4], _cstring_sv_getcachedsnap
	mov dword [esp], 0x2
	call Com_Error
	jmp SV_GetCachedSnapshotInternal_590
SV_GetCachedSnapshotInternal_570:
	mov edi, 0x1869f
	jmp SV_GetCachedSnapshotInternal_510
SV_GetCachedSnapshotInternal_370:
	mov dword [ebp-0x58], 0x0
	mov edi, 0x1869f
	jmp SV_GetCachedSnapshotInternal_600
SV_GetCachedSnapshotInternal_550:
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
	call MSG_ReadDeltaPlayerstate
	jmp SV_GetCachedSnapshotInternal_540
SV_GetCachedSnapshotInternal_530:
	sub ecx, 0x1
	or ecx, 0xfffff000
	add ecx, 0x1
	jmp SV_GetCachedSnapshotInternal_610
SV_GetCachedSnapshotInternal_560:
	mov dword [esp+0x4], _cstring_svsnextcachedsna
	mov dword [esp], 0x1
	call Com_Error
	jmp SV_GetCachedSnapshotInternal_620
SV_GetCachedSnapshotInternal_390:
	lea ebx, [ebp-0x40]
	mov [esp], ebx
	call MSG_ClearLastReferencedEntity
	mov esi, svs
	jmp SV_GetCachedSnapshotInternal_630
SV_GetCachedSnapshotInternal_660:
	mov [esp+0x10], ebx
	mov eax, [esi+0x8246aa4]
	and eax, 0x80003fff
	js SV_GetCachedSnapshotInternal_640
SV_GetCachedSnapshotInternal_680:
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
	call MSG_ReadDeltaArchivedEntity
	mov eax, [esi+0x8246aa4]
	add eax, 0x1
	mov [esi+0x8246aa4], eax
	cmp eax, 0x7ffffffd
	jg SV_GetCachedSnapshotInternal_650
SV_GetCachedSnapshotInternal_670:
	mov ebx, [ebp-0x60]
	add dword [ebx+0x8], 0x1
SV_GetCachedSnapshotInternal_630:
	mov dword [esp+0x4], 0xa
	lea eax, [ebp-0x40]
	mov [esp], eax
	call MSG_ReadEntityIndex
	mov ebx, eax
	cmp eax, 0x3ff
	jz SV_GetCachedSnapshotInternal_260
	mov edi, [ebp-0x40]
	test edi, edi
	jz SV_GetCachedSnapshotInternal_660
	mov dword [esp+0x4], _cstring_sv_getcachedsnap
	mov dword [esp], 0x2
	call Com_Error
	jmp SV_GetCachedSnapshotInternal_660
SV_GetCachedSnapshotInternal_650:
	mov dword [esp+0x4], _cstring_svsnextcachedsna1
	mov dword [esp], 0x1
	call Com_Error
	jmp SV_GetCachedSnapshotInternal_670
SV_GetCachedSnapshotInternal_640:
	sub eax, 0x1
	or eax, 0xffffc000
	add eax, 0x1
	jmp SV_GetCachedSnapshotInternal_680
SV_GetCachedSnapshotInternal_580:
	sub ecx, 0x1
	or ecx, 0xfffff000
	add ecx, 0x1
	jmp SV_GetCachedSnapshotInternal_690
	nop


;SV_EndClientSnapshot(client_t*, msg_t*)
SV_EndClientSnapshot:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0xc]
	cmp dword [ebx], 0x1
	jz SV_EndClientSnapshot_10
	mov [esp+0x4], esi
	mov [esp], ebx
	call SV_WriteDownloadToClient
SV_EndClientSnapshot_10:
	mov dword [esp+0x4], 0x7
	mov [esp], esi
	call MSG_WriteByte
	mov ecx, [esi]
	test ecx, ecx
	jnz SV_EndClientSnapshot_20
SV_EndClientSnapshot_50:
	cmp dword [ebx+0x20], 0x2
	jz SV_EndClientSnapshot_30
	mov eax, [esi+0x14]
	mov [esp], eax
	call SV_TrackSnapshotSize
SV_EndClientSnapshot_30:
	mov [ebp+0xc], ebx
	mov [ebp+0x8], esi
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp SV_SendMessageToClient
SV_EndClientSnapshot_20:
	lea eax, [ebx+0x21288]
	mov [ebp-0x34], eax
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_warning_msg_over
	mov dword [esp], 0xf
	call Com_PrintWarning
	mov eax, [ebx]
	cmp eax, 0x4
	jz SV_EndClientSnapshot_40
	sub eax, 0x1
	jz SV_EndClientSnapshot_40
	mov edx, [esi]
	test edx, edx
	jz SV_EndClientSnapshot_50
SV_EndClientSnapshot_90:
	mov eax, [ebp-0x34]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_warning_client_d
	mov dword [esp], 0xf
	call Com_PrintWarning
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
	call NET_OutOfBandPrint
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], _cstring_exe_servermessag
	mov [esp], ebx
	call SV_DropClient
	jmp SV_EndClientSnapshot_50
SV_EndClientSnapshot_40:
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
	call Com_Printf
	mov edi, [ebx+0x20e4c]
	add edi, 0x1
	cmp [ebx+0x20e48], edi
	jge SV_EndClientSnapshot_60
SV_EndClientSnapshot_100:
	mov dword [esp+0x4], _cstring_
	mov dword [esp], 0xf
	call Com_Printf
	mov dword [esp+0x8], 0x20000
	mov dword [esp+0x4], tempSnapshotMsgBuf
	mov [esp], esi
	call MSG_Init
	mov eax, [ebx+0x20e80]
	mov [esp+0x4], eax
	mov [esp], esi
	call MSG_WriteLong
	mov eax, [ebx+0x20e4c]
	add eax, 0x1
	mov [ebp-0x2c], eax
	cmp eax, [ebx+0x20e48]
	jle SV_EndClientSnapshot_70
SV_EndClientSnapshot_140:
	sub eax, 0x1
	cmp eax, [ebx+0x20e50]
	jle SV_EndClientSnapshot_80
	mov [ebx+0x20e50], eax
SV_EndClientSnapshot_80:
	mov dword [esp+0x4], 0x7
	mov [esp], esi
	call MSG_WriteByte
	mov edx, [esi]
	test edx, edx
	jz SV_EndClientSnapshot_50
	jmp SV_EndClientSnapshot_90
SV_EndClientSnapshot_60:
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
	call Com_Printf
	add edi, 0x1
	cmp edi, [ebx+0x20e48]
	jle SV_EndClientSnapshot_60
	jmp SV_EndClientSnapshot_100
SV_EndClientSnapshot_70:
	mov eax, [ebp-0x2c]
	jmp SV_EndClientSnapshot_110
SV_EndClientSnapshot_130:
	mov eax, edx
SV_EndClientSnapshot_110:
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
	jg SV_EndClientSnapshot_120
	mov dword [esp+0x4], 0x4
	mov [esp], esi
	call MSG_WriteByte
	mov edx, [ebp-0x2c]
	mov [esp+0x4], edx
	mov [esp], esi
	call MSG_WriteLong
	mov eax, [ebp-0x30]
	mov [esp+0x4], eax
	mov [esp], esi
	call MSG_WriteString
	add dword [ebp-0x2c], 0x1
	mov edx, [ebp-0x2c]
	cmp edx, [ebx+0x20e48]
	jle SV_EndClientSnapshot_130
	mov eax, edx
	jmp SV_EndClientSnapshot_140
SV_EndClientSnapshot_120:
	mov eax, [ebp-0x2c]
	jmp SV_EndClientSnapshot_140


;SV_SendClientMessages()
SV_SendClientMessages:
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
	jg SV_SendClientMessages_10
	mov dword [ebp-0xa4], 0x0
SV_SendClientMessages_240:
	call SV_SetServerStaticHeader
	mov eax, [ebp-0xa0]
	test eax, eax
	jle SV_SendClientMessages_20
	xor ebx, ebx
	mov esi, svs
	add esi, 0x46380c
	mov edi, svs
	add edi, 0x48468c
	jmp SV_SendClientMessages_30
SV_SendClientMessages_40:
	add ebx, 0x1
	add esi, 0xa5634
	add edi, 0xa5634
	cmp [ebp-0xa0], ebx
	jz SV_SendClientMessages_20
SV_SendClientMessages_30:
	cmp byte [ebx+ebp-0x80], 0x0
	jz SV_SendClientMessages_40
	mov dword [esp+0x8], 0x20000
	mov dword [esp+0x4], tempSnapshotMsgBuf
	lea edx, [ebp-0x40]
	mov [esp], edx
	call MSG_Init
	lea eax, [ebp-0x40]
	mov [esp], eax
	call MSG_ClearLastReferencedEntity
	mov eax, [edi]
	mov [esp+0x4], eax
	lea edx, [ebp-0x40]
	mov [esp], edx
	call MSG_WriteLong
	lea eax, [edi-0x20e80]
	mov [ebp-0x98], eax
	mov eax, [edi-0x20e80]
	cmp eax, 0x4
	jz SV_SendClientMessages_50
	sub eax, 0x1
	jz SV_SendClientMessages_50
SV_SendClientMessages_160:
	mov edx, [ebp-0x98]
	mov eax, [edx]
	cmp eax, 0x4
	jz SV_SendClientMessages_60
	sub eax, 0x1
	jz SV_SendClientMessages_60
SV_SendClientMessages_150:
	lea edx, [ebp-0x40]
	mov [esp+0x4], edx
	mov [esp], esi
	call SV_EndClientSnapshot
	mov [esp], esi
	call SV_SendClientVoiceData
	add ebx, 0x1
	add esi, 0xa5634
	add edi, 0xa5634
	cmp [ebp-0xa0], ebx
	jnz SV_SendClientMessages_30
SV_SendClientMessages_20:
	mov eax, sv_showAverageBPS
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz SV_SendClientMessages_70
	mov edi, [ebp-0xa4]
	test edi, edi
	jle SV_SendClientMessages_70
	pxor xmm2, xmm2
	movaps xmm1, xmm2
	mov esi, sv
	mov edx, esi
	lea ecx, [esi+0x4c]
SV_SendClientMessages_80:
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
	jnz SV_SendClientMessages_80
	mov edx, [esi+0x5fba0]
	mov [esi+0x5fb98], edx
	cvtsi2ss xmm3, edx
	addss xmm3, xmm1
	mov eax, [esi+0x5fbf8]
	mov [esi+0x5fbf4], eax
	cvtsi2ss xmm4, eax
	addss xmm4, xmm2
	cmp edx, [esi+0x5fba4]
	jge SV_SendClientMessages_90
	cmp eax, [esi+0x5fbfc]
	jge SV_SendClientMessages_100
SV_SendClientMessages_330:
	mov eax, [esi+0x5fb9c]
	add eax, 0x1
	mov [esi+0x5fb9c], eax
	cmp eax, 0x13
	jle SV_SendClientMessages_110
SV_SendClientMessages_320:
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
	call Com_DPrintf
	cmp dword [esi], 0x2
	jnz SV_SendClientMessages_120
SV_SendClientMessages_130:
	mov dword [esp+0x8], 0x20000
	mov eax, tempServerMsgBuf
	mov [esp+0x4], eax
	mov dword [esp], g_archiveMsg
	call MSG_Init
	mov dword [esp], g_archiveMsg
	call SV_ArchiveSnapshot
	jmp SV_SendClientMessages_120
SV_SendClientMessages_70:
	mov esi, sv
SV_SendClientMessages_110:
	cmp dword [esi], 0x2
	jz SV_SendClientMessages_130
SV_SendClientMessages_120:
	mov ebx, svs
	mov eax, [svsHeader+0x44]
	mov [ebx+0x8246aac], eax
	mov eax, [svsHeader+0x4c]
	mov [ebx+0x8246aa4], eax
	mov eax, [svsHeader+0x50]
	mov [ebx+0x8246aa8], eax
	cmp dword [esi], 0x2
	jz SV_SendClientMessages_140
SV_SendClientMessages_310:
	add esp, 0xec
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SV_SendClientMessages_60:
	lea eax, [ebp-0x40]
	mov [esp+0x4], eax
	mov [esp], esi
	call SV_WriteSnapshotToClient
	jmp SV_SendClientMessages_150
SV_SendClientMessages_50:
	lea edx, [ebp-0x40]
	mov [esp+0x4], edx
	mov [esp], esi
	call SV_UpdateServerCommandsToClient
	jmp SV_SendClientMessages_160
SV_SendClientMessages_10:
	mov dword [ebp-0xa8], 0x0
	mov eax, svs
	add eax, 0x46380c
	mov [ebp-0x8c], eax
	mov dword [ebp-0xa4], 0x0
	mov ebx, eax
SV_SendClientMessages_230:
	mov edx, [ebx]
	test edx, edx
	jz SV_SendClientMessages_170
	mov eax, svs
	mov eax, [eax+0x463804]
	mov [ebp-0xac], eax
	lea eax, [ebx+0x2145c]
	mov [ebp-0x94], eax
	mov eax, [ebp-0xac]
	cmp eax, [ebx+0x2145c]
	jl SV_SendClientMessages_170
	add dword [ebp-0xa4], 0x1
	mov eax, [ebx+0x40]
	test eax, eax
	jz SV_SendClientMessages_180
	mov edi, [ebx+0x48]
	sub edi, [ebx+0x44]
	cmp edi, 0x5dc
	jle SV_SendClientMessages_190
	mov edi, 0x5dc
	mov dword [ebp-0x9c], 0x16e360
SV_SendClientMessages_260:
	lea edx, [ebx+0x804e8]
	mov [ebp-0x90], edx
	mov esi, [ebx+0x804e8]
	mov eax, sv_maxRate
	mov edx, [eax]
	mov eax, [edx+0xc]
	test eax, eax
	jz SV_SendClientMessages_200
	cmp eax, 0x3e7
	jle SV_SendClientMessages_210
SV_SendClientMessages_350:
	mov eax, [edx+0xc]
	cmp esi, eax
	cmovg esi, eax
SV_SendClientMessages_200:
	mov edx, [ebp-0x9c]
	add edx, 0xbb80
	mov eax, edx
	cdq
	idiv esi
	mov esi, eax
	mov eax, sv_debugRate
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz SV_SendClientMessages_220
SV_SendClientMessages_360:
	mov eax, [ebp-0xac]
	add eax, esi
	mov edx, [ebp-0x94]
	mov [edx], eax
	mov eax, [ebp-0x8c]
	add eax, 0x10
	mov [esp+0x4], eax
	mov eax, [ebp-0x8c]
	mov [esp], eax
	call SV_Netchan_TransmitNextFragment
SV_SendClientMessages_170:
	add dword [ebp-0xa8], 0x1
	add dword [ebp-0x8c], 0xa5634
	add ebx, 0xa5634
	mov eax, [ebp-0xa8]
	cmp [ebp-0xa0], eax
	jnz SV_SendClientMessages_230
	jmp SV_SendClientMessages_240
SV_SendClientMessages_180:
	mov eax, [ebp-0xa8]
	mov byte [eax+ebp-0x80], 0x1
	cmp edx, 0x4
	jz SV_SendClientMessages_250
	sub edx, 0x1
	jnz SV_SendClientMessages_170
SV_SendClientMessages_250:
	mov edx, [ebp-0x8c]
	mov [esp], edx
	call SV_BuildClientSnapshot
	jmp SV_SendClientMessages_170
SV_SendClientMessages_190:
	lea eax, [edi+edi*4]
	lea eax, [eax+eax*4]
	lea eax, [eax+eax*4]
	shl eax, 0x3
	mov [ebp-0x9c], eax
	jmp SV_SendClientMessages_260
SV_SendClientMessages_140:
	mov esi, [g_archiveMsg]
	test esi, esi
	jnz SV_SendClientMessages_270
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
	js SV_SendClientMessages_280
SV_SendClientMessages_380:
	lea eax, [edx+eax]
	mov [ebx+0x8246aa0], eax
	cmp eax, 0x7ffffffd
	jg SV_SendClientMessages_290
SV_SendClientMessages_370:
	mov edi, svs+0x553b80
	sub edi, esi
	mov eax, [g_archiveMsg+0x14]
	cmp edi, eax
	jl SV_SendClientMessages_300
	lea edx, [ebx+esi+svs+0x479a620]
	mov [esp+0x8], eax
	mov eax, [g_archiveMsg+0x8]
	mov [esp+0x4], eax
	mov [esp], edx
	call memcpy
SV_SendClientMessages_340:
	mov eax, svs
	mov edx, [eax+0x624451c]
	add edx, 0x1
	mov [eax+0x624451c], edx
	cmp edx, 0x7ffffffd
	jle SV_SendClientMessages_310
	mov dword [esp+0x4], _cstring_svsnextarchiveds
	mov dword [esp], 0x1
	call Com_Error
	add esp, 0xec
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SV_SendClientMessages_100:
	mov [esi+0x5fbfc], eax
	mov eax, [esi+0x5fb9c]
	add eax, 0x1
	mov [esi+0x5fb9c], eax
	cmp eax, 0x13
	jle SV_SendClientMessages_110
	jmp SV_SendClientMessages_320
SV_SendClientMessages_90:
	mov [esi+0x5fba4], edx
	cmp eax, [esi+0x5fbfc]
	jl SV_SendClientMessages_330
	jmp SV_SendClientMessages_100
SV_SendClientMessages_300:
	add ebx, svs+0x479a620
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
	jmp SV_SendClientMessages_340
SV_SendClientMessages_210:
	mov dword [esp+0x4], 0x3e8
	mov [esp], edx
	call Cvar_SetInt
	mov eax, sv_maxRate
	mov edx, [eax]
	jmp SV_SendClientMessages_350
SV_SendClientMessages_220:
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
	call Com_Printf
	jmp SV_SendClientMessages_360
SV_SendClientMessages_270:
	mov dword [esp+0x4], _cstring_sv_archivesnapsh
	mov dword [esp], 0xf
	call Com_DPrintf
	add esp, 0xec
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SV_SendClientMessages_290:
	mov dword [esp+0x4], _cstring_svsnextarchiveds1
	mov dword [esp], 0x1
	call Com_Error
	jmp SV_SendClientMessages_370
SV_SendClientMessages_280:
	sub esi, 0x1
	or esi, 0xfe000000
	add esi, 0x1
	jmp SV_SendClientMessages_380
	add [eax], al


;SV_BeginClientSnapshot(client_t*, msg_t*)
SV_BeginClientSnapshot:
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
	call MSG_Init
	mov [esp], ebx
	call MSG_ClearLastReferencedEntity
	mov eax, [esi+0x20e80]
	mov [esp+0x4], eax
	mov [esp], ebx
	call MSG_WriteLong
	mov eax, [esi]
	cmp eax, 0x4
	jz SV_BeginClientSnapshot_10
	sub eax, 0x1
	jz SV_BeginClientSnapshot_10
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
SV_BeginClientSnapshot_10:
	mov [ebp+0xc], ebx
	mov [ebp+0x8], esi
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp SV_UpdateServerCommandsToClient


;SV_BuildClientSnapshot(client_t*)
SV_BuildClientSnapshot:
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
	jz SV_BuildClientSnapshot_10
	cmp dword [ecx], 0x1
	jz SV_BuildClientSnapshot_10
	mov esi, svs
	mov eax, [esi+0x2dbc514]
	mov edx, [ebp-0x1194]
	mov [edx+0x2f6c], eax
	mov eax, [esi+0x2dbc518]
	mov [edx+0x2f70], eax
	mov eax, sv
	cmp dword [eax], 0x2
	jz SV_BuildClientSnapshot_20
SV_BuildClientSnapshot_10:
	add esp, 0x11cc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SV_BuildClientSnapshot_20:
	lea eax, [esi+0x46380c]
	sub ecx, eax
	sar ecx, 0x2
	imul ecx, ecx, 0x4315b545
	mov [ebp-0x1198], ecx
	mov [esp], ecx
	call G_GetClientArchiveTime
	mov edi, eax
	test eax, eax
	jle SV_BuildClientSnapshot_30
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
	jge SV_BuildClientSnapshot_40
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
SV_BuildClientSnapshot_40:
	test ebx, ebx
	js SV_BuildClientSnapshot_50
SV_BuildClientSnapshot_430:
	cmp ebx, [ebp-0x1144]
	jl SV_BuildClientSnapshot_60
SV_BuildClientSnapshot_170:
	mov dword [ebp-0x1190], 0x0
	xor edi, edi
SV_BuildClientSnapshot_160:
	mov [esp+0x4], edi
	mov edx, [ebp-0x1198]
	mov [esp], edx
	call G_SetClientArchiveTime
	mov edi, [ebp-0x1190]
	test edi, edi
	jz SV_BuildClientSnapshot_70
	mov eax, svs
	mov eax, [eax+0x463804]
	mov [ebp-0x118c], eax
	mov ecx, [ebp-0x1190]
	mov ecx, [ecx+0x4]
	sub eax, ecx
	mov [ebp-0x118c], eax
SV_BuildClientSnapshot_420:
	mov eax, [ebp-0x1198]
	mov [esp], eax
	call SV_GameClientNum
	mov dword [esp+0x8], 0x2f64
	mov [esp+0x4], eax
	mov edx, [ebp-0x1194]
	mov [esp], edx
	call memcpy
	mov ecx, [ebp-0x1194]
	mov ecx, [ecx+0xdc]
	mov [ebp-0x113c], ecx
	cmp ecx, 0x3ff
	ja SV_BuildClientSnapshot_80
SV_BuildClientSnapshot_220:
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
	call AddLeanToPosition
	mov esi, [ebp-0x1190]
	test esi, esi
	jz SV_BuildClientSnapshot_90
	mov eax, [ebp-0x1190]
	mov eax, [eax+0xc]
	mov [ebp-0x1170], eax
	mov edx, [ebp-0x1190]
	mov edx, [edx+0x8]
	mov [ebp-0x116c], edx
	lea ecx, [ebp-0x28]
	mov [esp], ecx
	call CM_PointLeafnum
	mov [esp], eax
	call CM_LeafCluster
	test eax, eax
	js SV_BuildClientSnapshot_100
	mov [esp], eax
	call CM_ClusterPVS
	mov [ebp-0x1160], eax
	call G_GetFogOpaqueDistSqrd
	fstp dword [ebp-0x115c]
	movss xmm0, dword [ebp-0x115c]
	cmpss xmm0, [_float_34028234663852885_float_3], 0x4
	movss xmm1, dword [ebp-0x115c]
	andps xmm1, xmm0
	pxor xmm0, xmm0
	orps xmm1, xmm0
	movss [ebp-0x115c], xmm1
	mov eax, [ebp-0x116c]
	test eax, eax
	jle SV_BuildClientSnapshot_100
	mov eax, [ebp-0x113c]
	sar eax, 0x5
	mov [ebp-0x1158], eax
	mov edx, [ebp-0x113c]
	and edx, 0x1f
	mov [ebp-0x1154], edx
	xor ebx, ebx
	mov dword [ebp-0x1148], 0x0
	jmp SV_BuildClientSnapshot_110
SV_BuildClientSnapshot_150:
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
	jnz SV_BuildClientSnapshot_120
	mov eax, [ebp-0x113c]
	cmp eax, [edx]
	jz SV_BuildClientSnapshot_120
	test byte [edx+0xf4], 0x18
	jz SV_BuildClientSnapshot_130
	cmp dword [ebp-0x1148], 0x400
	jz SV_BuildClientSnapshot_120
	mov edx, [ebp-0x1148]
	mov [ebp+edx*4-0x1128], ebx
	add edx, 0x1
	mov [ebp-0x1148], edx
SV_BuildClientSnapshot_120:
	add ebx, 0x1
	cmp [ebp-0x116c], ebx
	jz SV_BuildClientSnapshot_140
SV_BuildClientSnapshot_110:
	mov ecx, [ebp-0x1170]
	lea eax, [ebx+ecx]
	and eax, 0x80003fff
	jns SV_BuildClientSnapshot_150
	sub eax, 0x1
	or eax, 0xffffc000
	add eax, 0x1
	jmp SV_BuildClientSnapshot_150
SV_BuildClientSnapshot_60:
	mov eax, ebx
	call SV_GetCachedSnapshotInternal
	mov [ebp-0x1190], eax
	test eax, eax
	jnz SV_BuildClientSnapshot_160
	add ebx, 0x1
	cmp [esi+0x624451c], ebx
	jg SV_BuildClientSnapshot_60
	jmp SV_BuildClientSnapshot_170
SV_BuildClientSnapshot_100:
	mov ecx, [ebp-0x1190]
	mov eax, [ecx+0x10]
	test eax, eax
	jle SV_BuildClientSnapshot_10
	xor edi, edi
	mov ebx, svs
	lea eax, [ebx+0x1c]
	mov [ebp-0x11a0], eax
	lea edx, [ebx+0x30]
	mov [ebp-0x11a4], edx
	mov ecx, [ebp-0x1190]
	jmp SV_BuildClientSnapshot_180
SV_BuildClientSnapshot_200:
	mov eax, [ebp-0x1194]
	add dword [eax+0x2f68], 0x1
	add edi, 0x1
	mov edx, [ebp-0x1190]
	cmp edi, [edx+0x10]
	jge SV_BuildClientSnapshot_10
	mov ecx, edx
SV_BuildClientSnapshot_180:
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
	js SV_BuildClientSnapshot_190
SV_BuildClientSnapshot_210:
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
	jle SV_BuildClientSnapshot_200
	mov dword [esp+0x4], _cstring_svsnextsnapshotc
	mov dword [esp], 0x1
	call Com_Error
	jmp SV_BuildClientSnapshot_200
SV_BuildClientSnapshot_190:
	sub ecx, 0x1
	or ecx, 0xfffff000
	add ecx, 0x1
	jmp SV_BuildClientSnapshot_210
SV_BuildClientSnapshot_80:
	mov dword [esp+0x4], _cstring_sv_buildclientsn
	mov dword [esp], 0x2
	call Com_Error
	jmp SV_BuildClientSnapshot_220
SV_BuildClientSnapshot_140:
	mov eax, [ebp-0x1148]
	test eax, eax
	jle SV_BuildClientSnapshot_100
	xor edi, edi
	mov esi, svs
	jmp SV_BuildClientSnapshot_230
SV_BuildClientSnapshot_300:
	mov eax, [ebp-0x118c]
	add [ebx+0x54], eax
SV_BuildClientSnapshot_320:
	mov eax, [esi+0x2dbc514]
	add eax, 0x1
	mov [esi+0x2dbc514], eax
	cmp eax, 0x7ffffffd
	jg SV_BuildClientSnapshot_240
SV_BuildClientSnapshot_310:
	mov edx, [ebp-0x1194]
	add dword [edx+0x2f64], 0x1
	add edi, 0x1
	cmp edi, [ebp-0x1148]
	jz SV_BuildClientSnapshot_100
SV_BuildClientSnapshot_230:
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
	js SV_BuildClientSnapshot_250
SV_BuildClientSnapshot_330:
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
	jz SV_BuildClientSnapshot_260
	add eax, [ebp-0x118c]
	mov [ebx+0x10], eax
SV_BuildClientSnapshot_260:
	mov eax, [ebx+0x34]
	test eax, eax
	jz SV_BuildClientSnapshot_270
	add eax, [ebp-0x118c]
	mov [ebx+0x34], eax
SV_BuildClientSnapshot_270:
	mov eax, [ebx+0x70]
	test eax, eax
	jz SV_BuildClientSnapshot_280
	add eax, [ebp-0x118c]
	mov [ebx+0x70], eax
SV_BuildClientSnapshot_280:
	mov eax, [ebx+0x4]
	cmp eax, 0x4
	jz SV_BuildClientSnapshot_290
	test eax, eax
	jz SV_BuildClientSnapshot_300
	cmp eax, 0x42
	jz SV_BuildClientSnapshot_300
	mov eax, [esi+0x2dbc514]
	add eax, 0x1
	mov [esi+0x2dbc514], eax
	cmp eax, 0x7ffffffd
	jle SV_BuildClientSnapshot_310
SV_BuildClientSnapshot_240:
	mov dword [esp+0x4], _cstring_svsnextsnapshote
	mov dword [esp], 0x1
	call Com_Error
	jmp SV_BuildClientSnapshot_310
SV_BuildClientSnapshot_290:
	mov ecx, [ebp-0x118c]
	add [ebx+0x54], ecx
	jmp SV_BuildClientSnapshot_320
SV_BuildClientSnapshot_250:
	sub eax, 0x1
	or eax, 0xffffc000
	add eax, 0x1
	jmp SV_BuildClientSnapshot_330
SV_BuildClientSnapshot_130:
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
	call CM_BoxLeafnums
	mov esi, eax
	cmp eax, 0x0
	jz SV_BuildClientSnapshot_120
	jg SV_BuildClientSnapshot_340
SV_BuildClientSnapshot_470:
	movss xmm0, dword [ebp-0x115c]
	ucomiss xmm0, [_float_0_00000000]
	jp SV_BuildClientSnapshot_350
	jnz SV_BuildClientSnapshot_350
SV_BuildClientSnapshot_610:
	cmp dword [ebp-0x1148], 0x400
	jz SV_BuildClientSnapshot_120
	mov eax, [ebp-0x1148]
	mov [ebp+eax*4-0x1128], ebx
	add eax, 0x1
	mov [ebp-0x1148], eax
	jmp SV_BuildClientSnapshot_120
SV_BuildClientSnapshot_30:
	mov dword [ebp-0x1190], 0x0
	jmp SV_BuildClientSnapshot_160
SV_BuildClientSnapshot_90:
	lea edx, [ebp-0x28]
	mov [esp], edx
	call CM_PointLeafnum
	mov [esp], eax
	call CM_LeafCluster
	test eax, eax
	js SV_BuildClientSnapshot_360
	mov [esp], eax
	call CM_ClusterPVS
	mov [ebp-0x1178], eax
	call G_GetFogOpaqueDistSqrd
	fstp dword [ebp-0x1174]
	movss xmm0, dword [ebp-0x1174]
	cmpss xmm0, [_float_34028234663852885_float_3], 0x4
	movss xmm1, dword [ebp-0x1174]
	andps xmm1, xmm0
	pxor xmm0, xmm0
	orps xmm1, xmm0
	movss [ebp-0x1174], xmm1
	mov eax, sv
	mov ebx, [eax+0x5fb38]
	test ebx, ebx
	jg SV_BuildClientSnapshot_370
SV_BuildClientSnapshot_360:
	mov edx, sv_maxclients
	mov eax, [edx]
	mov ecx, [eax+0xc]
	test ecx, ecx
	jle SV_BuildClientSnapshot_10
	xor edi, edi
	mov ecx, svs
	add ecx, 0x46380c
	mov [ebp-0x1150], ecx
	mov eax, ecx
	jmp SV_BuildClientSnapshot_380
SV_BuildClientSnapshot_400:
	mov edx, sv_maxclients
SV_BuildClientSnapshot_390:
	add edi, 0x1
	add dword [ebp-0x1150], 0xa5634
	mov eax, [edx]
	cmp edi, [eax+0xc]
	jge SV_BuildClientSnapshot_10
	mov eax, [ebp-0x1150]
SV_BuildClientSnapshot_380:
	cmp dword [eax], 0x1
	jle SV_BuildClientSnapshot_390
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
	call G_GetClientState
	mov dword [esp+0x8], 0x64
	mov [esp+0x4], eax
	mov [esp], ebx
	call memcpy
	cmp edi, [esi+0x1c]
	jnz SV_BuildClientSnapshot_400
	mov edx, svs
	mov eax, [edx+0x2dbc518]
	add eax, 0x1
	mov [edx+0x2dbc518], eax
	cmp eax, 0x7ffffffd
	jg SV_BuildClientSnapshot_410
SV_BuildClientSnapshot_440:
	mov ecx, [ebp-0x1194]
	add dword [ecx+0x2f68], 0x1
	mov edx, sv_maxclients
	jmp SV_BuildClientSnapshot_390
SV_BuildClientSnapshot_70:
	mov dword [ebp-0x118c], 0x0
	jmp SV_BuildClientSnapshot_420
SV_BuildClientSnapshot_50:
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
	jmp SV_BuildClientSnapshot_430
SV_BuildClientSnapshot_410:
	mov dword [esp+0x4], _cstring_svsnextsnapshotc
	mov dword [esp], 0x1
	call Com_Error
	jmp SV_BuildClientSnapshot_440
SV_BuildClientSnapshot_340:
	xor edi, edi
	jmp SV_BuildClientSnapshot_450
SV_BuildClientSnapshot_460:
	add edi, 0x1
	cmp esi, edi
	jz SV_BuildClientSnapshot_120
SV_BuildClientSnapshot_450:
	movzx eax, word [ebp+edi*2-0x128]
	mov [esp], eax
	call CM_LeafCluster
	mov ecx, eax
	cmp eax, 0xffffffff
	jz SV_BuildClientSnapshot_460
	sar eax, 0x3
	mov edx, [ebp-0x1160]
	movzx eax, byte [edx+eax]
	and ecx, 0x7
	sar eax, cl
	test al, 0x1
	jz SV_BuildClientSnapshot_460
	cmp esi, edi
	jnz SV_BuildClientSnapshot_470
	jmp SV_BuildClientSnapshot_120
SV_BuildClientSnapshot_370:
	xor esi, esi
	xor edi, edi
	jmp SV_BuildClientSnapshot_480
SV_BuildClientSnapshot_530:
	jl SV_BuildClientSnapshot_490
	mov eax, svs
	cmp edx, [eax+0x463804]
	js SV_BuildClientSnapshot_500
SV_BuildClientSnapshot_490:
	cmp edi, 0x400
	jz SV_BuildClientSnapshot_510
	mov [ebp+edi*4-0x1128], esi
	add edi, 0x1
SV_BuildClientSnapshot_510:
	add esi, 0x1
	mov eax, sv
	cmp esi, [eax+0x5fb38]
	jge SV_BuildClientSnapshot_520
SV_BuildClientSnapshot_480:
	mov [esp], esi
	call SV_GentityNum
	mov ebx, eax
	cmp byte [eax+0xf4], 0x0
	jz SV_BuildClientSnapshot_510
	cmp esi, [ebp-0x113c]
	jz SV_BuildClientSnapshot_510
	mov edx, [eax+0x104]
	cmp edx, 0x0
	jnz SV_BuildClientSnapshot_530
	test byte [eax+0xf6], 0x1
	jnz SV_BuildClientSnapshot_510
	mov eax, [ebp-0x113c]
	sar eax, 0x5
	mov ecx, [ebp-0x113c]
	and ecx, 0x1f
	mov eax, [ebx+eax*4+0xf8]
	sar eax, cl
	test al, 0x1
	jnz SV_BuildClientSnapshot_510
SV_BuildClientSnapshot_620:
	movzx eax, byte [ebx+0xf6]
	test al, 0x18
	jnz SV_BuildClientSnapshot_490
	mov [esp], ebx
	call SV_SvEntityForGentity
	mov [ebp-0x1140], eax
	mov eax, [eax+0x11c]
	mov [ebp-0x1184], eax
	cmp eax, 0x0
	jz SV_BuildClientSnapshot_490
	jle SV_BuildClientSnapshot_540
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
	jnz SV_BuildClientSnapshot_540
	mov eax, [ebp-0x1140]
	mov [ebp-0x114c], eax
	mov dword [ebp-0x117c], 0x0
	jmp SV_BuildClientSnapshot_550
SV_BuildClientSnapshot_560:
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
	jnz SV_BuildClientSnapshot_540
SV_BuildClientSnapshot_550:
	add dword [ebp-0x117c], 0x1
	mov eax, [ebp-0x117c]
	cmp [ebp-0x1184], eax
	jnz SV_BuildClientSnapshot_560
	mov ecx, [ebp-0x1140]
	mov ecx, [ecx+0x160]
	mov [ebp-0x1180], ecx
	test ecx, ecx
	jz SV_BuildClientSnapshot_510
SV_BuildClientSnapshot_580:
	cmp [ebp-0x1180], edx
	jl SV_BuildClientSnapshot_570
	mov eax, edx
	sar eax, 0x3
	mov ecx, [ebp-0x1178]
	movzx eax, byte [ecx+eax]
	mov ecx, edx
	and ecx, 0x7
	sar eax, cl
	test al, 0x1
	jnz SV_BuildClientSnapshot_570
	add edx, 0x1
	jmp SV_BuildClientSnapshot_580
SV_BuildClientSnapshot_520:
	test edi, edi
	jle SV_BuildClientSnapshot_360
	xor esi, esi
	mov ebx, svs
	lea edx, [ebx+0x1c]
	mov [ebp-0x119c], edx
	jmp SV_BuildClientSnapshot_590
SV_BuildClientSnapshot_600:
	mov edx, [ebp-0x1194]
	add dword [edx+0x2f64], 0x1
	add esi, 0x1
	cmp esi, edi
	jz SV_BuildClientSnapshot_360
SV_BuildClientSnapshot_590:
	mov eax, [ebp+esi*4-0x1128]
	mov [esp], eax
	call SV_GentityNum
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
	jle SV_BuildClientSnapshot_600
	mov dword [esp+0x4], _cstring_svsnextsnapshote
	mov dword [esp], 0x1
	call Com_Error
	jmp SV_BuildClientSnapshot_600
SV_BuildClientSnapshot_350:
	movss [esp+0xc], xmm0
	lea eax, [ebp-0x28]
	mov [esp+0x8], eax
	mov edx, [ebp-0x1168]
	mov [esp+0x4], edx
	mov ecx, [ebp-0x1164]
	mov [esp], ecx
	call BoxDistSqrdExceeds
	test eax, eax
	jnz SV_BuildClientSnapshot_120
	jmp SV_BuildClientSnapshot_610
SV_BuildClientSnapshot_500:
	mov dword [ebx+0x104], 0x0
	jmp SV_BuildClientSnapshot_620
SV_BuildClientSnapshot_570:
	cmp edx, [ebp-0x1180]
	jz SV_BuildClientSnapshot_510
SV_BuildClientSnapshot_540:
	movss xmm0, dword [ebp-0x1174]
	ucomiss xmm0, [_float_0_00000000]
	jp SV_BuildClientSnapshot_630
	jz SV_BuildClientSnapshot_490
SV_BuildClientSnapshot_630:
	movss [esp+0xc], xmm0
	lea eax, [ebp-0x28]
	mov [esp+0x8], eax
	lea eax, [ebx+0x130]
	mov [esp+0x4], eax
	lea eax, [ebx+0x124]
	mov [esp], eax
	call BoxDistSqrdExceeds
	test eax, eax
	jnz SV_BuildClientSnapshot_510
	jmp SV_BuildClientSnapshot_490
	nop


;SV_SendMessageToClient(msg_t*, client_t*)
SV_SendMessageToClient:
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
	call MSG_WriteBitsCompress
	lea edi, [eax+0x4]
	cmp dword [esi+0x20], 0x2
	jz SV_SendMessageToClient_10
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
	call SV_TrackPacketCompression
SV_SendMessageToClient_10:
	mov eax, [esi+0x644]
	test eax, eax
	jz SV_SendMessageToClient_20
	mov dword [esp+0x8], 0x1
	mov [esp+0x4], eax
	mov [esp], esi
	call SV_DropClient
SV_SendMessageToClient_20:
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
	call Sys_Milliseconds
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
	call SV_Netchan_Transmit
	cmp dword [esi], 0x4
	jz SV_SendMessageToClient_30
SV_SendMessageToClient_120:
	mov dword [esi+0x804f0], 0x0
	cmp dword [esi+0x20], 0x2
	jz SV_SendMessageToClient_40
	mov ecx, [esi+0x20]
	mov [ebp-0x24], ecx
	mov edx, [esi+0x24]
	mov [ebp-0x20], edx
	mov eax, [esi+0x28]
	mov [ebp-0x1c], eax
	mov [esp], ecx
	mov [esp+0x4], edx
	mov [esp+0x8], eax
	call Sys_IsLANAddress
	test eax, eax
	jnz SV_SendMessageToClient_40
	cmp edi, 0x5dc
	jg SV_SendMessageToClient_50
	lea eax, [edi+edi*4]
	lea eax, [eax+eax*4]
	lea eax, [eax+eax*4]
	shl eax, 0x3
	mov [ebp-0x2c], eax
	mov [ebp-0x30], edi
SV_SendMessageToClient_140:
	mov ebx, [esi+0x804e8]
	mov eax, sv_maxRate
	mov edx, [eax]
	mov eax, [edx+0xc]
	test eax, eax
	jz SV_SendMessageToClient_60
	cmp eax, 0x3e7
	jle SV_SendMessageToClient_70
SV_SendMessageToClient_170:
	mov eax, [edx+0xc]
	cmp ebx, eax
	cmovg ebx, eax
SV_SendMessageToClient_60:
	mov edx, [ebp-0x2c]
	add edx, 0xbb80
	mov eax, edx
	cdq
	idiv ebx
	mov ebx, eax
	mov eax, sv_debugRate
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz SV_SendMessageToClient_80
SV_SendMessageToClient_160:
	mov eax, [esi+0x804ec]
	cmp ebx, eax
	jge SV_SendMessageToClient_90
	mov dword [esi+0xc], 0x0
	mov ebx, eax
SV_SendMessageToClient_150:
	mov edx, svs
	mov eax, ebx
	add eax, [edx+0x463804]
	mov [esi+0x2145c], eax
	cmp dword [esi], 0x4
	jz SV_SendMessageToClient_100
	cmp byte [esi+0x2129c], 0x0
	jnz SV_SendMessageToClient_100
	mov edx, [edx+0x463804]
	add edx, 0x3e8
	cmp eax, edx
	jl SV_SendMessageToClient_110
SV_SendMessageToClient_100:
	mov eax, sv
	add [eax+0x5fba0], edi
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SV_SendMessageToClient_40:
	mov eax, svs
	mov eax, [eax+0x463804]
	sub eax, 0x1
	mov [esi+0x2145c], eax
SV_SendMessageToClient_130:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SV_SendMessageToClient_30:
	mov eax, [esi+0x8]
	test eax, eax
	js SV_SendMessageToClient_120
	cmp ebx, 0x1c
	jle SV_SendMessageToClient_120
	cvtsi2sd xmm0, dword [esi+0x804f0]
	movsd [esp+0x8], xmm0
	mov dword [esp], 0x0
	mov dword [esp+0x4], 0x40000000
	call pow
	fstp qword [ebp-0x38]
	cvttsd2si eax, qword [ebp-0x38]
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call irand
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
	jmp SV_SendMessageToClient_130
SV_SendMessageToClient_50:
	mov dword [ebp-0x30], 0x5dc
	mov dword [ebp-0x2c], 0x16e360
	jmp SV_SendMessageToClient_140
SV_SendMessageToClient_90:
	mov dword [esi+0xc], 0x1
	jmp SV_SendMessageToClient_150
SV_SendMessageToClient_80:
	mov eax, [esi+0x804e8]
	mov [esp+0x14], eax
	lea eax, [esi+0x21288]
	mov [esp+0x10], eax
	mov eax, [ebp-0x30]
	mov [esp+0xc], eax
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_it_would_take_im
	mov dword [esp], 0xf
	call Com_Printf
	jmp SV_SendMessageToClient_160
SV_SendMessageToClient_110:
	mov [esi+0x2145c], edx
	jmp SV_SendMessageToClient_100
SV_SendMessageToClient_70:
	mov dword [esp+0x4], 0x3e8
	mov [esp], edx
	call Cvar_SetInt
	mov eax, sv_maxRate
	mov edx, [eax]
	jmp SV_SendMessageToClient_170


;SV_GetArchivedClientInfo(int, int*, playerState_s*, clientState_s*)
SV_GetArchivedClientInfo:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edi, [ebp+0xc]
	mov edx, [edi]
	test edx, edx
	jle SV_GetArchivedClientInfo_10
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
	jl SV_GetArchivedClientInfo_20
	mov ebx, eax
	test ebx, ebx
	js SV_GetArchivedClientInfo_30
SV_GetArchivedClientInfo_60:
	mov ecx, svs
	cmp ebx, [ecx+0x624451c]
	jl SV_GetArchivedClientInfo_40
SV_GetArchivedClientInfo_70:
	mov dword [edi], 0x0
SV_GetArchivedClientInfo_10:
	mov eax, [edi]
	test eax, eax
	jle SV_GetArchivedClientInfo_50
SV_GetArchivedClientInfo_100:
	xor eax, eax
SV_GetArchivedClientInfo_260:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SV_GetArchivedClientInfo_20:
	sub ecx, ebx
	lea eax, [ecx+ecx*4]
	lea eax, [eax+eax*4]
	lea eax, [eax+eax*4]
	shl eax, 0x3
	cdq
	idiv esi
	mov [edi], eax
	test ebx, ebx
	jns SV_GetArchivedClientInfo_60
SV_GetArchivedClientInfo_30:
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
	jge SV_GetArchivedClientInfo_70
SV_GetArchivedClientInfo_40:
	mov esi, ecx
	jmp SV_GetArchivedClientInfo_80
SV_GetArchivedClientInfo_90:
	add ebx, 0x1
	cmp ebx, [esi+0x624451c]
	jge SV_GetArchivedClientInfo_70
SV_GetArchivedClientInfo_80:
	mov eax, ebx
	call SV_GetCachedSnapshotInternal
	test eax, eax
	jz SV_GetArchivedClientInfo_90
	mov edx, svs
	mov edi, [edx+0x463804]
	sub edi, [eax+0x4]
	mov ecx, [eax+0x10]
	mov [ebp-0x20], ecx
	test ecx, ecx
	jz SV_GetArchivedClientInfo_100
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
	jz SV_GetArchivedClientInfo_110
	xor esi, esi
SV_GetArchivedClientInfo_120:
	add esi, 0x1
	cmp esi, [ebp-0x20]
	jae SV_GetArchivedClientInfo_100
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
	jnz SV_GetArchivedClientInfo_120
SV_GetArchivedClientInfo_110:
	mov eax, [ebx]
	test eax, eax
	jz SV_GetArchivedClientInfo_100
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
	jz SV_GetArchivedClientInfo_130
	lea eax, [edi+eax]
	mov [edx], eax
	mov ecx, [ebp+0x10]
SV_GetArchivedClientInfo_320:
	mov eax, [ecx+0x18]
	test eax, eax
	jz SV_GetArchivedClientInfo_140
	lea eax, [edi+eax]
	mov [ecx+0x18], eax
	mov ebx, [ebp+0x10]
SV_GetArchivedClientInfo_310:
	mov eax, [ebx+0x54]
	test eax, eax
	jz SV_GetArchivedClientInfo_150
	lea eax, [edi+eax]
	mov [ebx+0x54], eax
	mov edx, [ebp+0x10]
SV_GetArchivedClientInfo_300:
	mov eax, [edx+0x80]
	test eax, eax
	jz SV_GetArchivedClientInfo_160
	lea eax, [edi+eax]
	mov [edx+0x80], eax
	mov ecx, [ebp+0x10]
SV_GetArchivedClientInfo_290:
	mov eax, [ecx+0x11c]
	test eax, eax
	jz SV_GetArchivedClientInfo_170
	lea eax, [edi+eax]
	mov [ecx+0x11c], eax
	mov ebx, [ebp+0x10]
SV_GetArchivedClientInfo_280:
	mov eax, [ebx+0x630]
	test eax, eax
	jz SV_GetArchivedClientInfo_180
	lea eax, [edi+eax]
	mov [ebx+0x630], eax
	mov edx, [ebp+0x10]
SV_GetArchivedClientInfo_270:
	mov ebx, 0x1f
	mov esi, svs
	jmp SV_GetArchivedClientInfo_190
SV_GetArchivedClientInfo_250:
	mov eax, [edx+0x1c74]
	test eax, eax
	jz SV_GetArchivedClientInfo_200
	lea eax, [edi+eax]
	mov [edx+0x1c74], eax
SV_GetArchivedClientInfo_200:
	mov eax, [edx+0x1c30]
	test eax, eax
	jz SV_GetArchivedClientInfo_210
	lea eax, [edi+eax]
	mov [edx+0x1c30], eax
	mov ecx, [esi+0x463804]
	cmp eax, ecx
	jle SV_GetArchivedClientInfo_210
	mov [edx+0x1c30], ecx
SV_GetArchivedClientInfo_210:
	mov eax, [edx+0x1c54]
	test eax, eax
	jz SV_GetArchivedClientInfo_220
	lea eax, [edi+eax]
	mov [edx+0x1c54], eax
SV_GetArchivedClientInfo_220:
	mov eax, [edx+0x1c6c]
	test eax, eax
	jz SV_GetArchivedClientInfo_230
	lea eax, [edi+eax]
	mov [edx+0x1c6c], eax
SV_GetArchivedClientInfo_230:
	add edx, 0xa0
	sub ebx, 0x1
	jz SV_GetArchivedClientInfo_240
SV_GetArchivedClientInfo_190:
	mov eax, [edx+0x1c04]
	test eax, eax
	jnz SV_GetArchivedClientInfo_250
SV_GetArchivedClientInfo_240:
	mov eax, [ebp+0x10]
	add [eax+0x89c], edi
	mov eax, 0x1
	jmp SV_GetArchivedClientInfo_260
SV_GetArchivedClientInfo_50:
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
	jnz SV_GetArchivedClientInfo_100
	mov eax, [ebp+0x10]
	mov [esp+0x4], eax
	mov [esp], ebx
	call GetFollowPlayerState
	test eax, eax
	jz SV_GetArchivedClientInfo_100
	mov [esp], ebx
	call G_GetClientState
	mov dword [esp+0x8], 0x64
	mov [esp+0x4], eax
	mov edx, [ebp+0x14]
	mov [esp], edx
	call memcpy
	mov eax, 0x1
	jmp SV_GetArchivedClientInfo_260
SV_GetArchivedClientInfo_180:
	mov edx, ebx
	jmp SV_GetArchivedClientInfo_270
SV_GetArchivedClientInfo_170:
	mov ebx, ecx
	jmp SV_GetArchivedClientInfo_280
SV_GetArchivedClientInfo_160:
	mov ecx, edx
	jmp SV_GetArchivedClientInfo_290
SV_GetArchivedClientInfo_150:
	mov edx, ebx
	jmp SV_GetArchivedClientInfo_300
SV_GetArchivedClientInfo_140:
	mov ebx, ecx
	jmp SV_GetArchivedClientInfo_310
SV_GetArchivedClientInfo_130:
	mov ecx, edx
	jmp SV_GetArchivedClientInfo_320
	nop


;SV_GetServerStaticHeader()
SV_GetServerStaticHeader:
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
SV_SetServerStaticHeader:
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
	call G_GetClientState
	mov [svsHeader+0x6c], eax
	mov dword [esp], 0x0
	call G_GetPlayerState
	mov [svsHeader+0x70], eax
	call G_GetClientSize
	mov [svsHeader+0x74], eax
	leave
	ret


;SV_WriteSnapshotToClient(client_t*, msg_t*)
SV_WriteSnapshotToClient:
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
	jle SV_WriteSnapshotToClient_10
	cmp dword [esi], 0x4
	jz SV_WriteSnapshotToClient_20
SV_WriteSnapshotToClient_10:
	xor edi, edi
	mov dword [ebp-0x54], 0x0
	xor ebx, ebx
SV_WriteSnapshotToClient_270:
	mov dword [esp+0x4], 0x6
	mov eax, [ebp+0xc]
	mov [esp], eax
	call MSG_WriteByte
	mov eax, [svsHeader+0x4]
	mov [esp+0x4], eax
	mov edx, [ebp+0xc]
	mov [esp], edx
	call MSG_WriteLong
	mov eax, [ebp-0x54]
	mov [esp+0x4], eax
	mov edx, [ebp+0xc]
	mov [esp], edx
	call MSG_WriteByte
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
	jz SV_WriteSnapshotToClient_30
	sub eax, 0x1
	mov eax, 0x0
	cmovnz edx, eax
SV_WriteSnapshotToClient_240:
	cmp edx, ebx
	jz SV_WriteSnapshotToClient_40
	mov [esi+0x4], edx
SV_WriteSnapshotToClient_40:
	mov eax, ecx
	or eax, 0x2
	test edx, edx
	cmovz ecx, eax
	mov [esp+0x4], ecx
	mov eax, [ebp+0xc]
	mov [esp], eax
	call MSG_WriteByte
	test edi, edi
	jz SV_WriteSnapshotToClient_50
	mov edx, [ebp-0x58]
	mov [esp+0x10], edx
	mov [esp+0xc], edi
	mov eax, [svsHeader+0x4]
	mov [esp+0x8], eax
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	lea edx, [ebp-0x28]
	mov [esp], edx
	call MSG_WriteDeltaPlayerstate
	mov eax, [edi+0x2f64]
	mov [ebp-0x50], eax
	mov edx, [edi+0x2f6c]
	mov [ebp-0x4c], edx
	mov eax, [edi+0x2f68]
	mov [ebp-0x48], eax
	mov edi, [edi+0x2f70]
	mov [ebp-0x44], edi
SV_WriteSnapshotToClient_280:
	mov eax, [ebp-0x58]
	mov eax, [eax+0x2f6c]
	mov [ebp-0x40], eax
	mov edx, [ebp-0x58]
	mov edx, [edx+0x2f64]
	mov [ebp-0x3c], edx
	mov eax, [ebp+0xc]
	mov [esp], eax
	call MSG_ClearLastReferencedEntity
	mov dword [ebp-0x38], 0x0
	xor edi, edi
SV_WriteSnapshotToClient_100:
	mov edx, [ebp-0x3c]
	cmp [ebp-0x38], edx
	jl SV_WriteSnapshotToClient_60
SV_WriteSnapshotToClient_110:
	cmp [ebp-0x50], edi
	jle SV_WriteSnapshotToClient_70
	xor esi, esi
	mov ebx, 0x270f
	mov ecx, [svsHeader+0x1c]
SV_WriteSnapshotToClient_120:
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
	jz SV_WriteSnapshotToClient_80
SV_WriteSnapshotToClient_130:
	jg SV_WriteSnapshotToClient_90
	jge SV_WriteSnapshotToClient_100
	mov dword [esp+0x14], 0x1
	mov dword [esp+0x10], 0x0
	mov [esp+0xc], edx
	mov eax, [svsHeader+0x4]
	mov [esp+0x8], eax
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	lea eax, [ebp-0x28]
	mov [esp], eax
	call MSG_WriteEntity
	add edi, 0x1
	mov edx, [ebp-0x3c]
	cmp [ebp-0x38], edx
	jge SV_WriteSnapshotToClient_110
SV_WriteSnapshotToClient_60:
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
	jg SV_WriteSnapshotToClient_120
	xor edx, edx
	mov eax, 0x270f
	cmp eax, ebx
	jnz SV_WriteSnapshotToClient_130
SV_WriteSnapshotToClient_80:
	mov dword [esp+0x14], 0x0
	mov [esp+0x10], esi
	mov [esp+0xc], edx
	mov eax, [svsHeader+0x4]
	mov [esp+0x8], eax
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	lea eax, [ebp-0x28]
	mov [esp], eax
	call MSG_WriteEntity
	add edi, 0x1
	add dword [ebp-0x38], 0x1
	jmp SV_WriteSnapshotToClient_100
SV_WriteSnapshotToClient_90:
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
	call MSG_WriteEntity
	mov byte [ebp-0x1c], 0x0
	add dword [ebp-0x38], 0x1
	jmp SV_WriteSnapshotToClient_100
SV_WriteSnapshotToClient_70:
	mov dword [esp+0xc], 0xa
	mov dword [esp+0x8], 0x3ff
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	lea edx, [ebp-0x28]
	mov [esp], edx
	call MSG_WriteEntityIndex
	mov eax, [ebp-0x58]
	mov eax, [eax+0x2f70]
	mov [ebp-0x34], eax
	mov edx, [ebp-0x58]
	mov edx, [edx+0x2f68]
	mov [ebp-0x30], edx
	mov eax, [ebp+0xc]
	mov [esp], eax
	call MSG_ClearLastReferencedEntity
	mov dword [ebp-0x2c], 0x0
	xor edi, edi
SV_WriteSnapshotToClient_180:
	mov edx, [ebp-0x30]
	cmp [ebp-0x2c], edx
	jl SV_WriteSnapshotToClient_140
SV_WriteSnapshotToClient_190:
	cmp [ebp-0x48], edi
	jle SV_WriteSnapshotToClient_150
	xor ebx, ebx
	mov esi, 0x270f
	mov ecx, [svsHeader+0x20]
SV_WriteSnapshotToClient_200:
	mov eax, [ebp-0x44]
	add eax, edi
	cdq
	idiv dword [svsHeader+0x10]
	lea edx, [edx+edx*4]
	lea edx, [edx+edx*4]
	lea edx, [ecx+edx*4]
	mov eax, [edx]
	cmp eax, esi
	jz SV_WriteSnapshotToClient_160
SV_WriteSnapshotToClient_210:
	jg SV_WriteSnapshotToClient_170
	jge SV_WriteSnapshotToClient_180
	mov dword [esp+0x14], 0x1
	mov dword [esp+0x10], 0x0
	mov [esp+0xc], edx
	mov eax, [svsHeader+0x4]
	mov [esp+0x8], eax
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	lea eax, [ebp-0x28]
	mov [esp], eax
	call MSG_WriteDeltaClient
	add edi, 0x1
	mov edx, [ebp-0x30]
	cmp [ebp-0x2c], edx
	jge SV_WriteSnapshotToClient_190
SV_WriteSnapshotToClient_140:
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
	jg SV_WriteSnapshotToClient_200
	xor edx, edx
	mov eax, 0x270f
	cmp eax, esi
	jnz SV_WriteSnapshotToClient_210
SV_WriteSnapshotToClient_160:
	mov dword [esp+0x14], 0x0
	mov [esp+0x10], ebx
	mov [esp+0xc], edx
	mov eax, [svsHeader+0x4]
	mov [esp+0x8], eax
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	lea eax, [ebp-0x28]
	mov [esp], eax
	call MSG_WriteDeltaClient
	add edi, 0x1
	add dword [ebp-0x2c], 0x1
	jmp SV_WriteSnapshotToClient_180
SV_WriteSnapshotToClient_170:
	mov dword [esp+0x14], 0x1
	mov [esp+0x10], ebx
	mov dword [esp+0xc], 0x0
	mov eax, [svsHeader+0x4]
	mov [esp+0x8], eax
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	lea eax, [ebp-0x28]
	mov [esp], eax
	call MSG_WriteDeltaClient
	add dword [ebp-0x2c], 0x1
	jmp SV_WriteSnapshotToClient_180
SV_WriteSnapshotToClient_150:
	mov eax, [ebp+0xc]
	mov [esp], eax
	call MSG_WriteBit0
	mov edx, sv_padPackets
	mov eax, [edx]
	mov eax, [eax+0xc]
	test eax, eax
	jg SV_WriteSnapshotToClient_220
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SV_WriteSnapshotToClient_220:
	xor ebx, ebx
	mov esi, edx
SV_WriteSnapshotToClient_230:
	mov dword [esp+0x4], 0x0
	mov edx, [ebp+0xc]
	mov [esp], edx
	call MSG_WriteByte
	add ebx, 0x1
	mov eax, [esi]
	cmp ebx, [eax+0xc]
	jl SV_WriteSnapshotToClient_230
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SV_WriteSnapshotToClient_30:
	mov edx, 0x1
	jmp SV_WriteSnapshotToClient_240
SV_WriteSnapshotToClient_20:
	mov ecx, [esi+0x10]
	sub ecx, eax
	cmp ecx, 0x1c
	jg SV_WriteSnapshotToClient_250
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
	jl SV_WriteSnapshotToClient_260
	mov eax, [edi+0x2f70]
	mov [ebp-0x5c], eax
	mov eax, [svsHeader+0x18]
	sub eax, [svsHeader+0x10]
	cmp [ebp-0x5c], eax
	jge SV_WriteSnapshotToClient_270
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
SV_WriteSnapshotToClient_290:
	mov dword [esp], 0xf
	call Com_PrintWarning
	xor edi, edi
	mov dword [ebp-0x54], 0x0
	xor ebx, ebx
	jmp SV_WriteSnapshotToClient_270
SV_WriteSnapshotToClient_250:
	lea eax, [esi+0x21288]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_s_delta_request_1
	mov dword [esp], 0xf
	call Com_DPrintf
	xor edi, edi
	mov dword [ebp-0x54], 0x0
	xor ebx, ebx
	jmp SV_WriteSnapshotToClient_270
SV_WriteSnapshotToClient_50:
	mov edx, [ebp-0x58]
	mov [esp+0x10], edx
	mov dword [esp+0xc], 0x0
	mov eax, [svsHeader+0x4]
	mov [esp+0x8], eax
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	lea edx, [ebp-0x28]
	mov [esp], edx
	call MSG_WriteDeltaPlayerstate
	mov dword [ebp-0x50], 0x0
	mov dword [ebp-0x4c], 0x0
	mov dword [ebp-0x48], 0x0
	mov dword [ebp-0x44], 0x0
	jmp SV_WriteSnapshotToClient_280
SV_WriteSnapshotToClient_260:
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
	jmp SV_WriteSnapshotToClient_290
	nop


;SV_GetClientPositionAtTime(int, int, float*)
SV_GetClientPositionAtTime:
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
	jg SV_GetClientPositionAtTime_10
SV_GetClientPositionAtTime_30:
	xor eax, eax
SV_GetClientPositionAtTime_80:
	add esp, 0x301c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SV_GetClientPositionAtTime_10:
	xor esi, esi
	mov dword [ebp-0x3010], 0x0
	jmp SV_GetClientPositionAtTime_20
SV_GetClientPositionAtTime_60:
	mov eax, [ebp-0x2eb4]
	test eax, eax
	jle SV_GetClientPositionAtTime_30
	mov eax, [ebp-0x2fe8]
	test al, 0x4
	jz SV_GetClientPositionAtTime_30
	test al, 0x2
	jnz SV_GetClientPositionAtTime_30
	mov edx, [ebp-0x1c]
	cmp edi, edx
	jz SV_GetClientPositionAtTime_40
	jle SV_GetClientPositionAtTime_50
	mov eax, [ebp-0x2fe0]
	mov [ebp-0x34], eax
	mov eax, [ebp-0x2fdc]
	mov [ebp-0x30], eax
	mov eax, [ebp-0x2fd8]
	mov [ebp-0x2c], eax
	mov [ebp-0x3010], edx
SV_GetClientPositionAtTime_70:
	lea edx, [ebx+edx]
	mov [ebp-0x1c], edx
	add esi, 0x1
	cmp [ebp-0x300c], esi
	jz SV_GetClientPositionAtTime_30
SV_GetClientPositionAtTime_20:
	lea eax, [ebp-0x98]
	mov [esp+0xc], eax
	lea edx, [ebp-0x2ffc]
	mov [esp+0x8], edx
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov [esp], edx
	call SV_GetArchivedClientInfo
	test eax, eax
	jnz SV_GetClientPositionAtTime_60
	mov edx, [ebp-0x1c]
	jmp SV_GetClientPositionAtTime_70
SV_GetClientPositionAtTime_40:
	mov ecx, [ebp-0x2fe0]
	mov [ebp-0x34], ecx
	mov edx, [ebp-0x2fdc]
	mov [ebp-0x30], edx
	mov eax, [ebp-0x2fd8]
	mov [ebp-0x2c], eax
	mov [ebp-0x28], ecx
	mov [ebp-0x24], edx
	mov [ebp-0x20], eax
SV_GetClientPositionAtTime_90:
	movss xmm2, dword [_float_1_00000000]
SV_GetClientPositionAtTime_100:
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
	jmp SV_GetClientPositionAtTime_80
SV_GetClientPositionAtTime_50:
	mov eax, [ebp-0x2fe0]
	mov [ebp-0x28], eax
	mov eax, [ebp-0x2fdc]
	mov [ebp-0x24], eax
	mov eax, [ebp-0x2fd8]
	mov [ebp-0x20], eax
	cmp edx, [ebp-0x3010]
	jz SV_GetClientPositionAtTime_90
	mov eax, edx
	sub eax, edi
	cvtsi2ss xmm2, eax
	sub edx, [ebp-0x3010]
	cvtsi2ss xmm0, edx
	divss xmm2, xmm0
	jmp SV_GetClientPositionAtTime_100


;SV_UpdateServerCommandsToClient(client_t*, msg_t*)
SV_UpdateServerCommandsToClient:
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
	jge SV_UpdateServerCommandsToClient_10
	mov eax, sv_debugReliableCmds
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz SV_UpdateServerCommandsToClient_20
SV_UpdateServerCommandsToClient_10:
	lea ebx, [edx+0x1]
	mov eax, [edi+0x20e48]
	cmp ebx, eax
	jle SV_UpdateServerCommandsToClient_30
SV_UpdateServerCommandsToClient_40:
	mov [edi+0x20e50], eax
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SV_UpdateServerCommandsToClient_60:
	mov [esp+0xc], esi
	mov eax, ebx
	sub eax, [edi+0x20e4c]
	sub eax, 0x1
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_i_s
	mov dword [esp], 0xf
	call Com_Printf
SV_UpdateServerCommandsToClient_50:
	add ebx, 0x1
	mov eax, [edi+0x20e48]
	cmp eax, ebx
	jl SV_UpdateServerCommandsToClient_40
SV_UpdateServerCommandsToClient_30:
	mov dword [esp+0x4], 0x4
	mov eax, [ebp+0xc]
	mov [esp], eax
	call MSG_WriteByte
	mov [esp+0x4], ebx
	mov edx, [ebp+0xc]
	mov [esp], edx
	call MSG_WriteLong
	mov eax, ebx
	and eax, 0x7f
	mov edx, eax
	shl edx, 0xa
	lea eax, [edx+eax*8+0xa40]
	lea esi, [edi+eax+0x8]
	mov [esp+0x4], esi
	mov eax, [ebp+0xc]
	mov [esp], eax
	call MSG_WriteString
	mov edx, sv_debugReliableCmds
	mov eax, [edx]
	cmp byte [eax+0xc], 0x0
	jz SV_UpdateServerCommandsToClient_50
	jmp SV_UpdateServerCommandsToClient_60
SV_UpdateServerCommandsToClient_20:
	lea eax, [edi+0x21288]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_client_s_has_the
	mov dword [esp], 0xf
	call Com_Printf
	mov edx, [edi+0x20e4c]
	jmp SV_UpdateServerCommandsToClient_10
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
_float_34028234663852885_float_3:		dd 0x7f7fffff	; 3.40282e+38
_float_0_00000000:		dd 0x0	; 0

