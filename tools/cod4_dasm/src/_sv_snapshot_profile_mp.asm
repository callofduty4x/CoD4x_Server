;Imports of sv_snapshot_profile_mp:

;Exports of sv_snapshot_profile_mp:
	global s_compressedDataSinceLastPoll
	global s_numSnapshotsSentSinceLastPoll
	global s_uncompressedDataSinceLastPoll
	global s_numSnapshotsBuiltSinceLastPoll
	global s_avgSnapshotSize
	global s_stdSnapshotDeviation
	global s_numSnapshotSamples
	global s_maxSnapshotSize
	global _Z20SV_TrackSnapshotSizei
	global _Z25SV_TrackPacketCompressioniii
	global _Z28SV_Netchan_PrintProfileStatsi
	global s_clientSnapshotData


SECTION .text


;SV_TrackSnapshotSize(int)
_Z20SV_TrackSnapshotSizei:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	cmp [s_maxSnapshotSize], edx
	mov eax, [s_maxSnapshotSize]
	cmovl eax, edx
	mov [s_maxSnapshotSize], eax
	mov eax, [s_numSnapshotSamples]
	cvtsi2ss xmm3, eax
	cvtsi2ss xmm2, edx
	movss xmm4, dword [s_avgSnapshotSize]
	add eax, 0x1
	cvtsi2ss xmm5, eax
	movaps xmm0, xmm3
	mulss xmm0, [s_stdSnapshotDeviation]
	movaps xmm1, xmm2
	subss xmm1, xmm4
	addss xmm0, xmm1
	divss xmm0, xmm5
	movss [s_stdSnapshotDeviation], xmm0
	mulss xmm3, xmm4
	addss xmm2, xmm3
	divss xmm2, xmm5
	movss [s_avgSnapshotSize], xmm2
	mov [s_numSnapshotSamples], eax
	add dword [s_numSnapshotsBuiltSinceLastPoll], 0x1
	add [s_uncompressedDataSinceLastPoll], edx
	pop ebp
	ret
	nop


;SV_TrackPacketCompression(int, int, int)
_Z25SV_TrackPacketCompressioniii:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	mov edx, [ebp+0x8]
	mov edi, [ebp+0x10]
	mov eax, edx
	shl eax, 0x6
	lea esi, [eax+edx*4]
	mov ecx, [esi+s_clientSnapshotData+0x40]
	mov ebx, ecx
	and ebx, 0x7
	mov eax, edx
	shl eax, 0x4
	add eax, edx
	add eax, ebx
	mov [eax*4+s_clientSnapshotData+0x20], edi
	mov edx, [ebp+0xc]
	mov [eax*4+s_clientSnapshotData], edx
	add ecx, 0x1
	mov [esi+s_clientSnapshotData+0x40], ecx
	add dword [s_numSnapshotsSentSinceLastPoll], 0x1
	add [s_compressedDataSinceLastPoll], edi
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;SV_Netchan_PrintProfileStats(int)
_Z28SV_Netchan_PrintProfileStatsi:
	push ebp
	mov ebp, esp
	pop ebp
	ret


;Initialized global or static variables of sv_snapshot_profile_mp:
SECTION .data


;Initialized constant data of sv_snapshot_profile_mp:
SECTION .rdata


;Zero initialized global or static variables of sv_snapshot_profile_mp:
SECTION .bss
s_compressedDataSinceLastPoll: resb 0x4
s_numSnapshotsSentSinceLastPoll: resb 0x4
s_uncompressedDataSinceLastPoll: resb 0x4
s_numSnapshotsBuiltSinceLastPoll: resb 0x4
s_avgSnapshotSize: resb 0x4
s_stdSnapshotDeviation: resb 0x4
s_numSnapshotSamples: resb 0x4
s_maxSnapshotSize: resb 0x64
s_clientSnapshotData: resb 0x1100


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata

