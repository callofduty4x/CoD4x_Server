;Imports of net_chan_mp:
	extern _Z28SV_Netchan_PrintProfileStatsi
	extern _Z28CL_Netchan_PrintProfileStatsii
	extern _Z10Com_PrintfiPKcz
	extern _Z16Dvar_RegisterIntPKciiitS0_
	extern _Z17Dvar_RegisterBoolPKchtS0_
	extern _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	extern memset
	extern _Z14Sys_SendPacketiPKv8netadr_t
	extern memcpy
	extern iInterlockedIncrement
	extern _Z11Com_sprintfPciPKcz
	extern _Z8BigShorts
	extern _Z10I_strncpyzPcPKci
	extern strchr
	extern _Z15Sys_StringToAdrPKcP8netadr_t
	extern atoi
	extern _Z16MSG_BeginReadingP5msg_t
	extern _Z12MSG_ReadLongP5msg_t
	extern _Z16Sys_Millisecondsv
	extern _Z13MSG_ReadShortP5msg_t
	extern Com_Memcpy
	extern _Z8MSG_InitP5msg_tPhi
	extern _Z13MSG_WriteLongP5msg_ti
	extern _Z13MSG_WriteDataP5msg_tPKvi
	extern _Z9Com_Error11errorParm_tPKcz
	extern _Z14MSG_WriteShortP5msg_ti
	extern _Z11Com_DPrintfiPKcz
	extern _Z30CL_Netchan_AddOOBProfilePacketii
	extern _Z30SV_Netchan_AddOOBProfilePacketi
	extern com_sv_running
	extern _Z11Dvar_SetIntPK6dvar_si
	extern _Z13Sys_GetPacketP8netadr_tP5msg_t
	extern _Z25CL_AnyLocalClientsRunningv

;Exports of net_chan_mp:
	global tempNetchanPacketBuf
	global netsrcString
	global loopbacks
	global net_iProfilingOn
	global _ZZ15NET_AdrToString8netadr_tE1s
	global _Z17Net_DumpProfile_fv
	global _ZZ12Netchan_InitiE21Net_DumpProfile_f_VAR
	global _Z12Netchan_Initi
	global _Z13Netchan_Setup8netsrc_tP9netchan_t8netadr_tiPciS3_i
	global _Z14NET_CompareAdr8netadr_tS_
	global _Z14NET_SendPacket8netsrc_tiPKv8netadr_t
	global _Z15NET_AdrToString8netadr_t
	global _Z15NET_StringToAdrPKcP8netadr_t
	global _Z15Netchan_ProcessP9netchan_tP5msg_t
	global _Z16Netchan_TransmitP9netchan_tiPKh
	global _Z17NET_GetLoopPacket8netsrc_tP8netadr_tP5msg_t
	global _Z17NET_OutOfBandData8netsrc_t8netadr_tPKhi
	global _Z17NetProf_AddPacketP18netProfileStream_tii
	global _Z18NET_CompareBaseAdr8netadr_tS_
	global _Z18NET_IsLocalAddress8netadr_t
	global _Z18NET_OutOfBandPrint8netsrc_t8netadr_tPKc
	global _Z18Net_DisplayProfilei
	global _Z19NET_GetClientPacketP8netadr_tP5msg_t
	global _Z19NET_GetServerPacketP8netadr_tP5msg_t
	global _Z20NET_CompareAdrSignedP8netadr_tS0_
	global _Z21NetProf_PrepProfilingP16netProfileInfo_t
	global _Z22NET_OutOfBandVoiceData8netsrc_t8netadr_tPhi
	global _Z28Netchan_TransmitNextFragmentP9netchan_t
	global net_showprofile
	global g_qport
	global net_lanauthorize
	global showpackets
	global net_profile
	global msg_dumpEnts
	global msg_hudelemspew
	global msg_printEntityNums
	global packetDebug
	global showdrop


SECTION .text


;Net_DumpProfile_f()
_Z17Net_DumpProfile_fv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [net_iProfilingOn]
	test eax, eax
	jz _Z17Net_DumpProfile_fv_10
	sub eax, 0x1
	jz _Z17Net_DumpProfile_fv_20
	mov dword [esp], 0x1
	call _Z28SV_Netchan_PrintProfileStatsi
	leave
	ret
_Z17Net_DumpProfile_fv_20:
	mov dword [esp+0x4], 0x1
	mov dword [esp], 0x0
	call _Z28CL_Netchan_PrintProfileStatsii
	leave
	ret
_Z17Net_DumpProfile_fv_10:
	mov dword [esp+0x4], _cstring_network_profilin
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	leave
	ret


;Netchan_Init(int)
_Z12Netchan_Initi:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	mov dword [esp+0x14], _cstring_show_packets
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x2
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_showpackets
	call _Z16Dvar_RegisterIntPKciiitS0_
	mov [showpackets], eax
	mov dword [esp+0xc], _cstring_show_dropped_pac
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_showdrop
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [showdrop], eax
	mov dword [esp+0xc], _cstring_enable_packet_de
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_packetdebug
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [packetDebug], eax
	movsx eax, word [ebp+0x8]
	mov [g_qport], eax
	mov dword [esp+0x14], _cstring_profile_network_
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x2
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_net_profile
	call _Z16Dvar_RegisterIntPKciiitS0_
	mov [net_profile], eax
	mov dword [esp+0x14], _cstring_show_network_pro
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x3
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_net_showprofile
	call _Z16Dvar_RegisterIntPKciiitS0_
	mov [net_showprofile], eax
	mov dword [esp+0xc], _cstring_authorise_cd_key
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_net_lanauthorize
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [net_lanauthorize], eax
	mov dword [esp+0xc], _cstring_print_entity_num
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_msg_printentityn
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [msg_printEntityNums], eax
	mov dword [esp+0xc], _cstring_print_snapshot_e
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_msg_dumpents
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [msg_dumpEnts], eax
	mov dword [esp+0xc], _cstring_debug_hudelem_fi
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_msg_hudelemspew
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [msg_hudelemspew], eax
	mov dword [esp+0x8], _ZZ12Netchan_InitiE21Net_DumpProfile_f_VAR
	mov dword [esp+0x4], _Z17Net_DumpProfile_fv
	mov dword [esp], _cstring_net_dumpprofile
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	leave
	ret


;Netchan_Setup(netsrc_t, netchan_t*, netadr_t, int, char*, int, char*, int)
_Z13Netchan_Setup8netsrc_tP9netchan_t8netadr_tiPciS3_i:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov eax, [ebp+0x8]
	mov [ebp-0x24], eax
	mov ebx, [ebp+0xc]
	mov eax, [ebp+0x1c]
	mov [ebp-0x28], eax
	mov eax, [ebp+0x20]
	mov [ebp-0x2c], eax
	mov eax, [ebp+0x24]
	mov [ebp-0x30], eax
	mov eax, [ebp+0x28]
	mov [ebp-0x34], eax
	mov eax, [ebp+0x2c]
	mov [ebp-0x38], eax
	movzx esi, word [ebp+0x18]
	movzx edi, byte [ebp+0x17]
	movzx eax, byte [ebp+0x16]
	mov [ebp-0x19], al
	movzx eax, byte [ebp+0x15]
	mov [ebp-0x1a], al
	movzx eax, byte [ebp+0x14]
	mov [ebp-0x1b], al
	mov eax, [ebp+0x10]
	mov [ebp-0x20], eax
	mov dword [esp+0x8], 0x624
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call memset
	mov eax, [ebp-0x24]
	mov [ebx+0x4], eax
	mov [ebx+0x18], si
	mov eax, edi
	mov [ebx+0x17], al
	movzx eax, byte [ebp-0x19]
	mov [ebx+0x16], al
	movzx eax, byte [ebp-0x1a]
	mov [ebx+0x15], al
	movzx eax, byte [ebp-0x1b]
	mov [ebx+0x14], al
	mov eax, [ebp-0x20]
	mov [ebx+0x10], eax
	mov eax, [ebp-0x28]
	mov [ebx+0x1c], eax
	mov dword [ebx+0xc], 0x0
	mov dword [ebx], 0x1
	mov eax, [ebp-0x2c]
	mov [ebx+0x3c], eax
	mov eax, [ebp-0x30]
	mov [ebx+0x40], eax
	mov eax, [ebp-0x34]
	mov [ebx+0x28], eax
	mov eax, [ebp-0x38]
	mov [ebx+0x2c], eax
	add ebx, 0x44
	mov [ebp+0x8], ebx
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z21NetProf_PrepProfilingP16netProfileInfo_t
	add [eax], al


;NET_CompareAdr(netadr_t, netadr_t)
_Z14NET_CompareAdr8netadr_tS_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov eax, [ebp+0x8]
	mov edx, [ebp+0x14]
	cmp eax, edx
	jz _Z14NET_CompareAdr8netadr_tS__10
	sub eax, edx
	mov [ebp-0x2c], eax
_Z14NET_CompareAdr8netadr_tS__60:
	xor eax, eax
	cmp dword [ebp-0x2c], 0x0
	setz al
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z14NET_CompareAdr8netadr_tS__10:
	cmp eax, 0x2
	jz _Z14NET_CompareAdr8netadr_tS__20
	cmp eax, 0x4
	jz _Z14NET_CompareAdr8netadr_tS__30
	mov dword [esp+0x4], _cstring_net_compareadrsi
	mov dword [esp], 0x10
	call _Z10Com_PrintfiPKcz
_Z14NET_CompareAdr8netadr_tS__20:
	mov dword [ebp-0x2c], 0x0
	xor eax, eax
	cmp dword [ebp-0x2c], 0x0
	setz al
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z14NET_CompareAdr8netadr_tS__30:
	movzx edx, word [ebp+0x10]
	movzx eax, word [ebp+0x1c]
	cmp dx, ax
	jz _Z14NET_CompareAdr8netadr_tS__40
	movzx edx, dx
	movzx eax, ax
	sub edx, eax
	mov [ebp-0x2c], edx
	xor eax, eax
	cmp dword [ebp-0x2c], 0x0
	setz al
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z14NET_CompareAdr8netadr_tS__40:
	mov ebx, 0x4
	cld
	lea esi, [ebp+0xc]
	lea edi, [ebp+0x18]
	mov ecx, ebx
	repe cmpsb
	mov eax, 0x0
	jz _Z14NET_CompareAdr8netadr_tS__50
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
_Z14NET_CompareAdr8netadr_tS__50:
	mov [ebp-0x2c], eax
	jmp _Z14NET_CompareAdr8netadr_tS__60
	nop


;NET_SendPacket(netsrc_t, int, void const*, netadr_t)
_Z14NET_SendPacket8netsrc_tiPKv8netadr_t:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	movzx eax, word [ebp+0x1c]
	mov [ebp-0x2a], ax
	movzx esi, byte [ebp+0x1b]
	movzx edi, byte [ebp+0x1a]
	movzx edx, byte [ebp+0x19]
	mov [ebp-0x2b], dl
	movzx eax, byte [ebp+0x18]
	mov [ebp-0x2c], al
	mov ebx, [ebp+0x14]
	mov eax, [showpackets]
	mov eax, [eax+0xc]
	test eax, eax
	jz _Z14NET_SendPacket8netsrc_tiPKv8netadr_t_10
	mov edx, [ebp+0x10]
	cmp dword [edx], 0xffffffff
	jz _Z14NET_SendPacket8netsrc_tiPKv8netadr_t_20
_Z14NET_SendPacket8netsrc_tiPKv8netadr_t_10:
	cmp ebx, 0x2
	jz _Z14NET_SendPacket8netsrc_tiPKv8netadr_t_30
	cmp ebx, 0x1
	jz _Z14NET_SendPacket8netsrc_tiPKv8netadr_t_40
	test ebx, ebx
	jnz _Z14NET_SendPacket8netsrc_tiPKv8netadr_t_50
_Z14NET_SendPacket8netsrc_tiPKv8netadr_t_40:
	xor eax, eax
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z14NET_SendPacket8netsrc_tiPKv8netadr_t_50:
	movzx edx, word [ebp-0x2a]
	mov [ebp-0x1c], dx
	mov eax, esi
	mov [ebp-0x1d], al
	mov edx, edi
	mov [ebp-0x1e], dl
	movzx eax, byte [ebp-0x2b]
	mov [ebp-0x1f], al
	movzx edx, byte [ebp-0x2c]
	mov [ebp-0x20], dl
	mov [ebp-0x24], ebx
	mov [esp+0x8], ebx
	mov eax, [ebp-0x20]
	mov [esp+0xc], eax
	mov eax, [ebp-0x1c]
	mov [esp+0x10], eax
	mov eax, [ebp+0x10]
	mov [esp+0x4], eax
	mov edx, [ebp+0xc]
	mov [esp], edx
	call _Z14Sys_SendPacketiPKv8netadr_t
	movzx eax, al
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z14NET_SendPacket8netsrc_tiPKv8netadr_t_30:
	mov eax, [ebp+0x8]
	test eax, eax
	jle _Z14NET_SendPacket8netsrc_tiPKv8netadr_t_60
	cmp eax, 0x1
	jz _Z14NET_SendPacket8netsrc_tiPKv8netadr_t_70
_Z14NET_SendPacket8netsrc_tiPKv8netadr_t_80:
	xor edi, edi
_Z14NET_SendPacket8netsrc_tiPKv8netadr_t_90:
	lea ebx, [eax+eax*4]
	lea ebx, [eax+ebx*2]
	shl ebx, 0x8
	add ebx, eax
	lea ebx, [ebx*8+loopbacks]
	mov eax, [ebx+0x5804]
	and eax, 0xf
	lea esi, [eax+eax*4]
	lea esi, [eax+esi*2]
	shl esi, 0x7
	lea esi, [ebx+esi]
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov edx, [ebp+0x10]
	mov [esp+0x4], edx
	mov [esp], esi
	call memcpy
	mov eax, [ebp+0xc]
	mov [esi+0x578], eax
	mov [esi+0x57c], edi
	add ebx, 0x5804
	mov [esp], ebx
	call iInterlockedIncrement
	mov eax, 0x1
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z14NET_SendPacket8netsrc_tiPKv8netadr_t_20:
	mov eax, [ebp+0xc]
	mov [esp+0xc], eax
	mov edx, [ebp+0x8]
	mov eax, [edx*4+netsrcString]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_s_send_packet_4i
	mov dword [esp], 0x10
	call _Z10Com_PrintfiPKcz
	jmp _Z14NET_SendPacket8netsrc_tiPKv8netadr_t_10
_Z14NET_SendPacket8netsrc_tiPKv8netadr_t_70:
	movzx eax, word [ebp-0x2a]
	jmp _Z14NET_SendPacket8netsrc_tiPKv8netadr_t_80
_Z14NET_SendPacket8netsrc_tiPKv8netadr_t_60:
	mov edi, eax
	mov eax, 0x1
	jmp _Z14NET_SendPacket8netsrc_tiPKv8netadr_t_90


;NET_AdrToString(netadr_t)
_Z15NET_AdrToString8netadr_t:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	movzx eax, byte [ebp+0xc]
	mov [ebp-0x1b], al
	movzx edx, byte [ebp+0xd]
	mov [ebp-0x1a], dl
	movzx eax, byte [ebp+0xe]
	mov [ebp-0x19], al
	movzx edi, byte [ebp+0xf]
	movzx esi, word [ebp+0x10]
	mov ebx, [ebp+0x8]
	mov dword [esp+0x8], _cstring_unknown
	mov dword [esp+0x4], 0x40
	mov dword [esp], _ZZ15NET_AdrToString8netadr_tE1s
	call _Z11Com_sprintfPciPKcz
	cmp ebx, 0x2
	jz _Z15NET_AdrToString8netadr_t_10
	cmp ebx, 0x4
	jz _Z15NET_AdrToString8netadr_t_20
	mov eax, _ZZ15NET_AdrToString8netadr_tE1s
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z15NET_AdrToString8netadr_t_20:
	movsx eax, si
	mov [esp], eax
	call _Z8BigShorts
	cwde
	mov [esp+0x1c], eax
	mov edx, edi
	movzx eax, dl
	mov [esp+0x18], eax
	movzx eax, byte [ebp-0x19]
	mov [esp+0x14], eax
	movzx eax, byte [ebp-0x1a]
	mov [esp+0x10], eax
	movzx eax, byte [ebp-0x1b]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_iiiii
	mov dword [esp+0x4], 0x40
	mov dword [esp], _ZZ15NET_AdrToString8netadr_tE1s
	call _Z11Com_sprintfPciPKcz
	mov eax, _ZZ15NET_AdrToString8netadr_tE1s
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z15NET_AdrToString8netadr_t_10:
	mov dword [esp+0x8], _cstring_loopback
	mov dword [esp+0x4], 0x40
	mov dword [esp], _ZZ15NET_AdrToString8netadr_tE1s
	call _Z11Com_sprintfPciPKcz
	mov eax, _ZZ15NET_AdrToString8netadr_tE1s
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;NET_StringToAdr(char const*, netadr_t*)
_Z15NET_StringToAdrPKcP8netadr_t:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x41c
	mov ebx, [ebp+0xc]
	mov edi, _cstring_localhost
	mov ecx, 0xa
	cld
	mov esi, [ebp+0x8]
	repe cmpsb
	mov edx, 0x0
	jz _Z15NET_StringToAdrPKcP8netadr_t_10
	movzx edx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub edx, ecx
_Z15NET_StringToAdrPKcP8netadr_t_10:
	test edx, edx
	jnz _Z15NET_StringToAdrPKcP8netadr_t_20
	mov dword [ebx+0x4], 0x0
	mov dword [ebx+0x8], 0x0
	mov dword [ebx], 0x2
	mov eax, 0x1
_Z15NET_StringToAdrPKcP8netadr_t_70:
	add esp, 0x41c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z15NET_StringToAdrPKcP8netadr_t_20:
	mov dword [esp+0x8], 0x400
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	lea edi, [ebp-0x418]
	mov [esp], edi
	call _Z10I_strncpyzPcPKci
	mov dword [esp+0x4], 0x3a
	mov [esp], edi
	call strchr
	mov esi, eax
	test eax, eax
	jz _Z15NET_StringToAdrPKcP8netadr_t_30
	mov byte [eax], 0x0
	add esi, 0x1
_Z15NET_StringToAdrPKcP8netadr_t_30:
	mov [esp+0x4], ebx
	mov [esp], edi
	call _Z15Sys_StringToAdrPKcP8netadr_t
	test eax, eax
	jz _Z15NET_StringToAdrPKcP8netadr_t_40
	cmp dword [ebx+0x4], 0xffffffff
	jz _Z15NET_StringToAdrPKcP8netadr_t_50
	test esi, esi
	jz _Z15NET_StringToAdrPKcP8netadr_t_60
	mov [esp], esi
	call atoi
	cwde
	mov [esp], eax
	call _Z8BigShorts
	mov [ebx+0x8], ax
	mov eax, 0x1
	add esp, 0x41c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z15NET_StringToAdrPKcP8netadr_t_40:
	mov dword [ebx], 0x1
	add esp, 0x41c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z15NET_StringToAdrPKcP8netadr_t_50:
	mov dword [ebx], 0x1
	xor eax, eax
	jmp _Z15NET_StringToAdrPKcP8netadr_t_70
_Z15NET_StringToAdrPKcP8netadr_t_60:
	mov dword [esp], 0x7120
	call _Z8BigShorts
	mov [ebx+0x8], ax
	mov eax, 0x1
	jmp _Z15NET_StringToAdrPKcP8netadr_t_70
	add [eax], al


;Netchan_Process(netchan_t*, msg_t*)
_Z15Netchan_ProcessP9netchan_tP5msg_t:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov edi, [ebp+0x8]
	lea eax, [edi+0x44]
	mov [esp], eax
	call _Z21NetProf_PrepProfilingP16netProfileInfo_t
	mov eax, [ebp+0xc]
	mov [esp], eax
	call _Z16MSG_BeginReadingP5msg_t
	mov edx, [ebp+0xc]
	mov [esp], edx
	call _Z12MSG_ReadLongP5msg_t
	mov [ebp-0x48], eax
	test eax, eax
	js _Z15Netchan_ProcessP9netchan_tP5msg_t_10
	mov dword [ebp-0x3c], 0x0
	cmp dword [edi+0x4], 0x1
	jz _Z15Netchan_ProcessP9netchan_tP5msg_t_20
_Z15Netchan_ProcessP9netchan_tP5msg_t_300:
	mov ebx, [ebp-0x3c]
	test ebx, ebx
	jnz _Z15Netchan_ProcessP9netchan_tP5msg_t_30
	mov dword [ebp-0x44], 0x0
	mov dword [ebp-0x40], 0x0
_Z15Netchan_ProcessP9netchan_tP5msg_t_250:
	mov ecx, [ebp+0xc]
	mov ecx, [ecx+0x14]
	mov [ebp-0x38], ecx
	mov ecx, [net_iProfilingOn]
	test ecx, ecx
	jnz _Z15Netchan_ProcessP9netchan_tP5msg_t_40
_Z15Netchan_ProcessP9netchan_tP5msg_t_240:
	mov eax, [showpackets]
	mov eax, [eax+0xc]
	test eax, eax
	jz _Z15Netchan_ProcessP9netchan_tP5msg_t_50
	sub eax, 0x1
	jle _Z15Netchan_ProcessP9netchan_tP5msg_t_60
_Z15Netchan_ProcessP9netchan_tP5msg_t_310:
	mov edx, [ebp-0x3c]
	test edx, edx
	jz _Z15Netchan_ProcessP9netchan_tP5msg_t_70
	mov edx, [ebp-0x40]
	mov [esp+0x18], edx
	mov ecx, [ebp-0x44]
	mov [esp+0x14], ecx
	mov eax, [ebp-0x48]
	mov [esp+0x10], eax
	mov edx, [ebp+0xc]
	mov eax, [edx+0x14]
	mov [esp+0xc], eax
	mov eax, [edi+0x4]
	mov eax, [eax*4+netsrcString]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_s_recv_4i__si_fr
	mov dword [esp], 0x10
	call _Z10Com_PrintfiPKcz
_Z15Netchan_ProcessP9netchan_tP5msg_t_50:
	mov esi, [edi+0xc]
	cmp [ebp-0x48], esi
	jg _Z15Netchan_ProcessP9netchan_tP5msg_t_80
	mov eax, [showdrop]
	cmp byte [eax+0xc], 0x0
	jnz _Z15Netchan_ProcessP9netchan_tP5msg_t_90
	mov eax, [showpackets]
	mov eax, [eax+0xc]
	test eax, eax
	jz _Z15Netchan_ProcessP9netchan_tP5msg_t_100
	sub eax, 0x1
	jle _Z15Netchan_ProcessP9netchan_tP5msg_t_110
_Z15Netchan_ProcessP9netchan_tP5msg_t_90:
	movzx ecx, word [edi+0x18]
	mov [ebp-0x2e], cx
	movzx eax, byte [edi+0x17]
	mov [ebp-0x2f], al
	movzx edx, byte [edi+0x16]
	mov [ebp-0x30], dl
	movzx ecx, byte [edi+0x15]
	mov [ebp-0x31], cl
	movzx eax, byte [edi+0x14]
	mov [ebp-0x32], al
	mov ebx, [edi+0x10]
	mov dword [esp+0x8], _cstring_unknown
	mov dword [esp+0x4], 0x40
	mov dword [esp], _ZZ15NET_AdrToString8netadr_tE1s
	call _Z11Com_sprintfPciPKcz
	cmp ebx, 0x2
	jz _Z15Netchan_ProcessP9netchan_tP5msg_t_120
	cmp ebx, 0x4
	jz _Z15Netchan_ProcessP9netchan_tP5msg_t_130
_Z15Netchan_ProcessP9netchan_tP5msg_t_410:
	mov [esp+0x14], esi
	mov edx, [ebp-0x48]
	mov [esp+0x10], edx
	mov dword [esp+0xc], _ZZ15NET_AdrToString8netadr_tE1s
	mov eax, [edi+0x4]
	mov eax, [eax*4+netsrcString]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_s_s_out_of_order
	mov dword [esp], 0x10
	call _Z10Com_PrintfiPKcz
	xor eax, eax
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z15Netchan_ProcessP9netchan_tP5msg_t_80:
	mov eax, [ebp-0x48]
	sub eax, esi
	lea esi, [eax-0x1]
	mov [edi+0x8], esi
	test esi, esi
	jle _Z15Netchan_ProcessP9netchan_tP5msg_t_140
	mov eax, [showdrop]
	cmp byte [eax+0xc], 0x0
	jnz _Z15Netchan_ProcessP9netchan_tP5msg_t_150
	mov eax, [showpackets]
	mov eax, [eax+0xc]
	test eax, eax
	jnz _Z15Netchan_ProcessP9netchan_tP5msg_t_160
_Z15Netchan_ProcessP9netchan_tP5msg_t_140:
	mov eax, [ebp-0x3c]
	test eax, eax
	jnz _Z15Netchan_ProcessP9netchan_tP5msg_t_170
_Z15Netchan_ProcessP9netchan_tP5msg_t_290:
	mov eax, [ebp-0x48]
	mov [edi+0xc], eax
	mov eax, 0x1
_Z15Netchan_ProcessP9netchan_tP5msg_t_360:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z15Netchan_ProcessP9netchan_tP5msg_t_170:
	mov ecx, [ebp-0x48]
	cmp ecx, [edi+0x20]
	jz _Z15Netchan_ProcessP9netchan_tP5msg_t_180
	mov [edi+0x20], ecx
	mov dword [edi+0x24], 0x0
_Z15Netchan_ProcessP9netchan_tP5msg_t_180:
	mov eax, [ebp-0x44]
	cmp eax, [edi+0x24]
	jz _Z15Netchan_ProcessP9netchan_tP5msg_t_190
	mov eax, [showdrop]
	cmp byte [eax+0xc], 0x0
	jnz _Z15Netchan_ProcessP9netchan_tP5msg_t_200
	mov eax, [showpackets]
	mov eax, [eax+0xc]
	test eax, eax
	jz _Z15Netchan_ProcessP9netchan_tP5msg_t_100
	sub eax, 0x1
	jle _Z15Netchan_ProcessP9netchan_tP5msg_t_210
_Z15Netchan_ProcessP9netchan_tP5msg_t_200:
	movzx esi, word [edi+0x18]
	movzx edx, byte [edi+0x17]
	mov [ebp-0x23], dl
	movzx ecx, byte [edi+0x16]
	mov [ebp-0x24], cl
	movzx eax, byte [edi+0x15]
	mov [ebp-0x25], al
	movzx edx, byte [edi+0x14]
	mov [ebp-0x26], dl
	mov ebx, [edi+0x10]
	mov dword [esp+0x8], _cstring_unknown
	mov dword [esp+0x4], 0x40
	mov dword [esp], _ZZ15NET_AdrToString8netadr_tE1s
	call _Z11Com_sprintfPciPKcz
	cmp ebx, 0x2
	jz _Z15Netchan_ProcessP9netchan_tP5msg_t_220
	cmp ebx, 0x4
	jz _Z15Netchan_ProcessP9netchan_tP5msg_t_230
_Z15Netchan_ProcessP9netchan_tP5msg_t_430:
	mov ecx, [ebp-0x48]
	mov [esp+0xc], ecx
	mov dword [esp+0x8], _ZZ15NET_AdrToString8netadr_tE1s
	mov dword [esp+0x4], _cstring_sdropped_a_messa
	mov dword [esp], 0x10
	call _Z10Com_PrintfiPKcz
	xor eax, eax
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z15Netchan_ProcessP9netchan_tP5msg_t_40:
	lea esi, [edi+0x334]
	mov ecx, [esi+0x2d0]
	add ecx, 0x1
	mov edx, 0x88888889
	mov eax, ecx
	imul edx
	lea ebx, [edx+ecx]
	sar ebx, 0x5
	mov eax, ecx
	sar eax, 0x1f
	sub ebx, eax
	lea edx, [ebx*4]
	mov eax, ebx
	shl eax, 0x6
	sub eax, edx
	mov ebx, ecx
	sub ebx, eax
	mov [esi+0x2d0], ebx
	lea ebx, [ebx+ebx*2]
	lea ebx, [esi+ebx*4]
	call _Z16Sys_Millisecondsv
	mov [ebx], eax
	mov edx, [ebp-0x38]
	mov [ebx+0x4], edx
	mov ecx, [ebp-0x3c]
	mov [ebx+0x8], ecx
	mov eax, [net_showprofile]
	test byte [eax+0xc], 0x2
	jz _Z15Netchan_ProcessP9netchan_tP5msg_t_240
	mov edx, _cstring__fragment
	test ecx, ecx
	mov eax, _cstring_null
	cmovz edx, eax
	mov eax, [ebp-0x38]
	mov [esp+0x10], eax
	mov [esp+0xc], edx
	mov eax, [edi+0x4]
	mov eax, [eax*4+netsrcString]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_s_recieves_i
	mov dword [esp], 0x10
	call _Z10Com_PrintfiPKcz
	jmp _Z15Netchan_ProcessP9netchan_tP5msg_t_240
_Z15Netchan_ProcessP9netchan_tP5msg_t_30:
	mov eax, [ebp+0xc]
	mov [esp], eax
	call _Z12MSG_ReadLongP5msg_t
	mov [ebp-0x44], eax
	mov edx, [ebp+0xc]
	mov [esp], edx
	call _Z13MSG_ReadShortP5msg_t
	mov [ebp-0x40], eax
	jmp _Z15Netchan_ProcessP9netchan_tP5msg_t_250
_Z15Netchan_ProcessP9netchan_tP5msg_t_160:
	sub eax, 0x1
	jle _Z15Netchan_ProcessP9netchan_tP5msg_t_260
_Z15Netchan_ProcessP9netchan_tP5msg_t_150:
	movzx ecx, word [edi+0x18]
	mov [ebp-0x28], cx
	movzx eax, byte [edi+0x17]
	mov [ebp-0x29], al
	movzx edx, byte [edi+0x16]
	mov [ebp-0x2a], dl
	movzx ecx, byte [edi+0x15]
	mov [ebp-0x2b], cl
	movzx eax, byte [edi+0x14]
	mov [ebp-0x2c], al
	mov ebx, [edi+0x10]
	mov dword [esp+0x8], _cstring_unknown
	mov dword [esp+0x4], 0x40
	mov dword [esp], _ZZ15NET_AdrToString8netadr_tE1s
	call _Z11Com_sprintfPciPKcz
	cmp ebx, 0x2
	jz _Z15Netchan_ProcessP9netchan_tP5msg_t_270
	cmp ebx, 0x4
	jz _Z15Netchan_ProcessP9netchan_tP5msg_t_280
_Z15Netchan_ProcessP9netchan_tP5msg_t_420:
	mov edx, [ebp-0x48]
	mov [esp+0x14], edx
	mov [esp+0x10], esi
	mov dword [esp+0xc], _ZZ15NET_AdrToString8netadr_tE1s
	mov eax, [edi+0x4]
	mov eax, [eax*4+netsrcString]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_s_s_dropped_i_pa
	mov dword [esp], 0x10
	call _Z10Com_PrintfiPKcz
	mov eax, [ebp-0x3c]
	test eax, eax
	jz _Z15Netchan_ProcessP9netchan_tP5msg_t_290
	jmp _Z15Netchan_ProcessP9netchan_tP5msg_t_170
_Z15Netchan_ProcessP9netchan_tP5msg_t_70:
	mov ecx, [ebp-0x48]
	mov [esp+0x10], ecx
	mov edx, [ebp+0xc]
	mov eax, [edx+0x14]
	mov [esp+0xc], eax
	mov eax, [edi+0x4]
	mov eax, [eax*4+netsrcString]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_s_recv_4i__si
	mov dword [esp], 0x10
	call _Z10Com_PrintfiPKcz
	jmp _Z15Netchan_ProcessP9netchan_tP5msg_t_50
_Z15Netchan_ProcessP9netchan_tP5msg_t_10:
	and dword [ebp-0x48], 0x7fffffff
	mov dword [ebp-0x3c], 0x1
	cmp dword [edi+0x4], 0x1
	jnz _Z15Netchan_ProcessP9netchan_tP5msg_t_300
_Z15Netchan_ProcessP9netchan_tP5msg_t_20:
	mov ecx, [ebp+0xc]
	mov [esp], ecx
	call _Z13MSG_ReadShortP5msg_t
	jmp _Z15Netchan_ProcessP9netchan_tP5msg_t_300
_Z15Netchan_ProcessP9netchan_tP5msg_t_60:
	cmp dword [edi+0x10], 0x2
	jnz _Z15Netchan_ProcessP9netchan_tP5msg_t_310
	jmp _Z15Netchan_ProcessP9netchan_tP5msg_t_50
_Z15Netchan_ProcessP9netchan_tP5msg_t_190:
	mov eax, [ebp-0x40]
	test eax, eax
	js _Z15Netchan_ProcessP9netchan_tP5msg_t_320
	mov eax, [ebp+0xc]
	mov edx, [eax+0x1c]
	mov eax, [ebp-0x40]
	add eax, edx
	mov ecx, [ebp+0xc]
	cmp eax, [ecx+0x14]
	jg _Z15Netchan_ProcessP9netchan_tP5msg_t_320
	mov eax, [ebp-0x44]
	add eax, [ebp-0x40]
	cmp eax, [edi+0x2c]
	jg _Z15Netchan_ProcessP9netchan_tP5msg_t_320
	mov ecx, [edi+0x28]
	add [ebp-0x44], ecx
	mov eax, [ebp+0xc]
	add edx, [eax+0x8]
	mov ecx, [ebp-0x40]
	mov [esp+0x8], ecx
	mov [esp+0x4], edx
	mov eax, [ebp-0x44]
	mov [esp], eax
	call memcpy
	mov ebx, [ebp-0x40]
	add ebx, [edi+0x24]
	mov [edi+0x24], ebx
	cmp dword [ebp-0x40], 0x514
	jz _Z15Netchan_ProcessP9netchan_tP5msg_t_100
	mov edx, [ebp+0xc]
	cmp ebx, [edx+0x10]
	jle _Z15Netchan_ProcessP9netchan_tP5msg_t_330
	movzx ecx, word [edi+0x18]
	mov [ebp-0x1a], cx
	movzx eax, byte [edi+0x17]
	mov [ebp-0x1b], al
	movzx edx, byte [edi+0x16]
	mov [ebp-0x1c], dl
	movzx ecx, byte [edi+0x15]
	mov [ebp-0x1d], cl
	movzx eax, byte [edi+0x14]
	mov [ebp-0x1e], al
	mov esi, [edi+0x10]
	mov dword [esp+0x8], _cstring_unknown
	mov dword [esp+0x4], 0x40
	mov dword [esp], _ZZ15NET_AdrToString8netadr_tE1s
	call _Z11Com_sprintfPciPKcz
	cmp esi, 0x2
	jz _Z15Netchan_ProcessP9netchan_tP5msg_t_340
	cmp esi, 0x4
	jz _Z15Netchan_ProcessP9netchan_tP5msg_t_350
_Z15Netchan_ProcessP9netchan_tP5msg_t_460:
	mov [esp+0xc], ebx
	mov dword [esp+0x8], _ZZ15NET_AdrToString8netadr_tE1s
	mov dword [esp+0x4], _cstring_sfragmentlength_
	mov dword [esp], 0x10
	call _Z10Com_PrintfiPKcz
	xor eax, eax
	jmp _Z15Netchan_ProcessP9netchan_tP5msg_t_360
_Z15Netchan_ProcessP9netchan_tP5msg_t_320:
	mov eax, [showdrop]
	cmp byte [eax+0xc], 0x0
	jnz _Z15Netchan_ProcessP9netchan_tP5msg_t_370
	mov eax, [showpackets]
	mov eax, [eax+0xc]
	test eax, eax
	jz _Z15Netchan_ProcessP9netchan_tP5msg_t_100
	sub eax, 0x1
	jle _Z15Netchan_ProcessP9netchan_tP5msg_t_380
_Z15Netchan_ProcessP9netchan_tP5msg_t_370:
	movzx esi, word [edi+0x18]
	movzx eax, byte [edi+0x17]
	mov [ebp-0x1f], al
	movzx edx, byte [edi+0x16]
	mov [ebp-0x20], dl
	movzx ecx, byte [edi+0x15]
	mov [ebp-0x21], cl
	movzx eax, byte [edi+0x14]
	mov [ebp-0x22], al
	mov ebx, [edi+0x10]
	mov dword [esp+0x8], _cstring_unknown
	mov dword [esp+0x4], 0x40
	mov dword [esp], _ZZ15NET_AdrToString8netadr_tE1s
	call _Z11Com_sprintfPciPKcz
	cmp ebx, 0x2
	jz _Z15Netchan_ProcessP9netchan_tP5msg_t_390
	cmp ebx, 0x4
	jz _Z15Netchan_ProcessP9netchan_tP5msg_t_400
_Z15Netchan_ProcessP9netchan_tP5msg_t_450:
	mov dword [esp+0x8], _ZZ15NET_AdrToString8netadr_tE1s
	mov dword [esp+0x4], _cstring_sillegal_fragmen
	mov dword [esp], 0x10
	call _Z10Com_PrintfiPKcz
	xor eax, eax
	jmp _Z15Netchan_ProcessP9netchan_tP5msg_t_360
_Z15Netchan_ProcessP9netchan_tP5msg_t_110:
	cmp dword [edi+0x10], 0x2
	jnz _Z15Netchan_ProcessP9netchan_tP5msg_t_90
_Z15Netchan_ProcessP9netchan_tP5msg_t_100:
	xor eax, eax
_Z15Netchan_ProcessP9netchan_tP5msg_t_440:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z15Netchan_ProcessP9netchan_tP5msg_t_120:
	mov dword [esp+0x8], _cstring_loopback
	mov dword [esp+0x4], 0x40
	mov dword [esp], _ZZ15NET_AdrToString8netadr_tE1s
	call _Z11Com_sprintfPciPKcz
	jmp _Z15Netchan_ProcessP9netchan_tP5msg_t_410
_Z15Netchan_ProcessP9netchan_tP5msg_t_280:
	movsx eax, word [ebp-0x28]
	mov [esp], eax
	call _Z8BigShorts
	cwde
	mov [esp+0x1c], eax
	movzx eax, byte [ebp-0x29]
	mov [esp+0x18], eax
	movzx eax, byte [ebp-0x2a]
	mov [esp+0x14], eax
	movzx eax, byte [ebp-0x2b]
	mov [esp+0x10], eax
	movzx eax, byte [ebp-0x2c]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_iiiii
	mov dword [esp+0x4], 0x40
	mov dword [esp], _ZZ15NET_AdrToString8netadr_tE1s
	call _Z11Com_sprintfPciPKcz
	jmp _Z15Netchan_ProcessP9netchan_tP5msg_t_420
_Z15Netchan_ProcessP9netchan_tP5msg_t_260:
	cmp dword [edi+0x10], 0x2
	jnz _Z15Netchan_ProcessP9netchan_tP5msg_t_150
	jmp _Z15Netchan_ProcessP9netchan_tP5msg_t_140
_Z15Netchan_ProcessP9netchan_tP5msg_t_130:
	movsx eax, word [ebp-0x2e]
	mov [esp], eax
	call _Z8BigShorts
	cwde
	mov [esp+0x1c], eax
	movzx eax, byte [ebp-0x2f]
	mov [esp+0x18], eax
	movzx eax, byte [ebp-0x30]
	mov [esp+0x14], eax
	movzx eax, byte [ebp-0x31]
	mov [esp+0x10], eax
	movzx eax, byte [ebp-0x32]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_iiiii
	mov dword [esp+0x4], 0x40
	mov dword [esp], _ZZ15NET_AdrToString8netadr_tE1s
	call _Z11Com_sprintfPciPKcz
	jmp _Z15Netchan_ProcessP9netchan_tP5msg_t_410
_Z15Netchan_ProcessP9netchan_tP5msg_t_270:
	mov dword [esp+0x8], _cstring_loopback
	mov dword [esp+0x4], 0x40
	mov dword [esp], _ZZ15NET_AdrToString8netadr_tE1s
	call _Z11Com_sprintfPciPKcz
	jmp _Z15Netchan_ProcessP9netchan_tP5msg_t_420
_Z15Netchan_ProcessP9netchan_tP5msg_t_220:
	mov dword [esp+0x8], _cstring_loopback
	mov dword [esp+0x4], 0x40
	mov dword [esp], _ZZ15NET_AdrToString8netadr_tE1s
	call _Z11Com_sprintfPciPKcz
	jmp _Z15Netchan_ProcessP9netchan_tP5msg_t_430
_Z15Netchan_ProcessP9netchan_tP5msg_t_210:
	cmp dword [edi+0x10], 0x2
	jnz _Z15Netchan_ProcessP9netchan_tP5msg_t_200
	xor eax, eax
	jmp _Z15Netchan_ProcessP9netchan_tP5msg_t_440
_Z15Netchan_ProcessP9netchan_tP5msg_t_230:
	movsx eax, si
	mov [esp], eax
	call _Z8BigShorts
	cwde
	mov [esp+0x1c], eax
	movzx eax, byte [ebp-0x23]
	mov [esp+0x18], eax
	movzx eax, byte [ebp-0x24]
	mov [esp+0x14], eax
	movzx eax, byte [ebp-0x25]
	mov [esp+0x10], eax
	movzx eax, byte [ebp-0x26]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_iiiii
	mov dword [esp+0x4], 0x40
	mov dword [esp], _ZZ15NET_AdrToString8netadr_tE1s
	call _Z11Com_sprintfPciPKcz
	jmp _Z15Netchan_ProcessP9netchan_tP5msg_t_430
_Z15Netchan_ProcessP9netchan_tP5msg_t_390:
	mov dword [esp+0x8], _cstring_loopback
	mov dword [esp+0x4], 0x40
	mov dword [esp], _ZZ15NET_AdrToString8netadr_tE1s
	call _Z11Com_sprintfPciPKcz
	jmp _Z15Netchan_ProcessP9netchan_tP5msg_t_450
_Z15Netchan_ProcessP9netchan_tP5msg_t_380:
	cmp dword [edi+0x10], 0x2
	jnz _Z15Netchan_ProcessP9netchan_tP5msg_t_370
	xor eax, eax
	jmp _Z15Netchan_ProcessP9netchan_tP5msg_t_440
_Z15Netchan_ProcessP9netchan_tP5msg_t_400:
	movsx eax, si
	mov [esp], eax
	call _Z8BigShorts
	cwde
	mov [esp+0x1c], eax
	movzx eax, byte [ebp-0x1f]
	mov [esp+0x18], eax
	movzx eax, byte [ebp-0x20]
	mov [esp+0x14], eax
	movzx eax, byte [ebp-0x21]
	mov [esp+0x10], eax
	movzx eax, byte [ebp-0x22]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_iiiii
	mov dword [esp+0x4], 0x40
	mov dword [esp], _ZZ15NET_AdrToString8netadr_tE1s
	call _Z11Com_sprintfPciPKcz
	jmp _Z15Netchan_ProcessP9netchan_tP5msg_t_450
_Z15Netchan_ProcessP9netchan_tP5msg_t_330:
	mov eax, [edx+0x8]
	mov ecx, [ebp-0x48]
	mov [eax], ecx
	mov ecx, [edx+0x8]
	add ecx, 0x4
	mov edx, [edi+0x28]
	mov eax, [edi+0x24]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov [esp], ecx
	call memcpy
	mov eax, [edi+0x24]
	add eax, 0x4
	mov edx, [ebp+0xc]
	mov [edx+0x14], eax
	mov dword [edi+0x24], 0x0
	mov [esp], edx
	call _Z16MSG_BeginReadingP5msg_t
	mov ecx, [ebp+0xc]
	mov [esp], ecx
	call _Z12MSG_ReadLongP5msg_t
	jmp _Z15Netchan_ProcessP9netchan_tP5msg_t_290
_Z15Netchan_ProcessP9netchan_tP5msg_t_350:
	movsx eax, word [ebp-0x1a]
	mov [esp], eax
	call _Z8BigShorts
	cwde
	mov [esp+0x1c], eax
	movzx eax, byte [ebp-0x1b]
	mov [esp+0x18], eax
	movzx eax, byte [ebp-0x1c]
	mov [esp+0x14], eax
	movzx eax, byte [ebp-0x1d]
	mov [esp+0x10], eax
	movzx eax, byte [ebp-0x1e]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_iiiii
	mov dword [esp+0x4], 0x40
	mov dword [esp], _ZZ15NET_AdrToString8netadr_tE1s
	call _Z11Com_sprintfPciPKcz
	jmp _Z15Netchan_ProcessP9netchan_tP5msg_t_460
_Z15Netchan_ProcessP9netchan_tP5msg_t_340:
	mov dword [esp+0x8], _cstring_loopback
	mov dword [esp+0x4], 0x40
	mov dword [esp], _ZZ15NET_AdrToString8netadr_tE1s
	call _Z11Com_sprintfPciPKcz
	jmp _Z15Netchan_ProcessP9netchan_tP5msg_t_460
	nop


;Netchan_Transmit(netchan_t*, int, unsigned char const*)
_Z16Netchan_TransmitP9netchan_tiPKh:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5fc
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	cmp ebx, 0x20000
	jg _Z16Netchan_TransmitP9netchan_tiPKh_10
_Z16Netchan_TransmitP9netchan_tiPKh_100:
	mov dword [esi+0x34], 0x0
	cmp ebx, 0x513
	jle _Z16Netchan_TransmitP9netchan_tiPKh_20
	mov dword [esi+0x30], 0x1
	mov [esi+0x38], ebx
	mov [esp+0x8], ebx
	mov eax, [ebp+0x10]
	mov [esp+0x4], eax
	mov eax, [esi+0x3c]
	mov [esp], eax
	call Com_Memcpy
	mov [esp], esi
	call _Z28Netchan_TransmitNextFragmentP9netchan_t
	mov eax, 0x1
	add esp, 0x5fc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z16Netchan_TransmitP9netchan_tiPKh_20:
	lea eax, [esi+0x44]
	mov [ebp-0x5d0], eax
	mov [esp], eax
	call _Z21NetProf_PrepProfilingP16netProfileInfo_t
	mov dword [esp+0x8], 0x578
	lea eax, [ebp-0x5c4]
	mov [esp+0x4], eax
	lea edi, [ebp-0x4c]
	mov [esp], edi
	call _Z8MSG_InitP5msg_tPhi
	mov eax, [esi]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z13MSG_WriteLongP5msg_ti
	add dword [esi], 0x1
	mov eax, [esi+0x4]
	test eax, eax
	jle _Z16Netchan_TransmitP9netchan_tiPKh_30
_Z16Netchan_TransmitP9netchan_tiPKh_150:
	mov eax, [packetDebug]
	cmp byte [eax+0xc], 0x0
	jnz _Z16Netchan_TransmitP9netchan_tiPKh_40
	mov [esp+0x8], ebx
	mov eax, [ebp+0x10]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z13MSG_WriteDataP5msg_tPKvi
	mov eax, [packetDebug]
	cmp byte [eax+0xc], 0x0
	jnz _Z16Netchan_TransmitP9netchan_tiPKh_50
_Z16Netchan_TransmitP9netchan_tiPKh_120:
	mov ecx, [esi+0x10]
	mov [ebp-0x24], ecx
	mov edx, [esi+0x14]
	mov [ebp-0x20], edx
	mov eax, [esi+0x18]
	mov [ebp-0x1c], eax
	mov [esp+0xc], ecx
	mov [esp+0x10], edx
	mov [esp+0x14], eax
	mov eax, [ebp-0x44]
	mov [esp+0x8], eax
	mov eax, [ebp-0x38]
	mov [esp+0x4], eax
	mov eax, [esi+0x4]
	mov [esp], eax
	call _Z14NET_SendPacket8netsrc_tiPKv8netadr_t
	movzx eax, al
	mov [ebp-0x5cc], eax
	mov edi, [ebp-0x38]
	mov eax, [net_iProfilingOn]
	test eax, eax
	jnz _Z16Netchan_TransmitP9netchan_tiPKh_60
_Z16Netchan_TransmitP9netchan_tiPKh_110:
	mov eax, [showpackets]
	mov eax, [eax+0xc]
	test eax, eax
	jnz _Z16Netchan_TransmitP9netchan_tiPKh_70
_Z16Netchan_TransmitP9netchan_tiPKh_140:
	xor eax, eax
	cmp dword [ebp-0x5cc], 0x0
	setg al
_Z16Netchan_TransmitP9netchan_tiPKh_90:
	add esp, 0x5fc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z16Netchan_TransmitP9netchan_tiPKh_70:
	sub eax, 0x1
	jle _Z16Netchan_TransmitP9netchan_tiPKh_80
_Z16Netchan_TransmitP9netchan_tiPKh_130:
	mov eax, [esi+0xc]
	mov [esp+0x24], eax
	mov eax, [esi]
	sub eax, 0x1
	mov [esp+0x20], eax
	mov eax, [ebp-0x38]
	mov [esp+0x1c], eax
	movzx eax, byte [esi+0x17]
	mov [esp+0x18], eax
	movzx eax, byte [esi+0x16]
	mov [esp+0x14], eax
	movzx eax, byte [esi+0x15]
	mov [esp+0x10], eax
	movzx eax, byte [esi+0x14]
	mov [esp+0xc], eax
	mov eax, [esi+0x4]
	mov eax, [eax*4+netsrcString]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_s_senduuuu_4i_by
	mov dword [esp], 0x10
	call _Z10Com_PrintfiPKcz
	xor eax, eax
	cmp dword [ebp-0x5cc], 0x0
	setg al
	jmp _Z16Netchan_TransmitP9netchan_tiPKh_90
_Z16Netchan_TransmitP9netchan_tiPKh_10:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_netchan_transmit
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z16Netchan_TransmitP9netchan_tiPKh_100
_Z16Netchan_TransmitP9netchan_tiPKh_60:
	mov eax, [ebp-0x5d0]
	mov ecx, [eax+0x2d0]
	add ecx, 0x1
	mov edx, 0x88888889
	mov eax, ecx
	imul edx
	lea ebx, [edx+ecx]
	sar ebx, 0x5
	mov eax, ecx
	sar eax, 0x1f
	sub ebx, eax
	lea edx, [ebx*4]
	mov eax, ebx
	shl eax, 0x6
	sub eax, edx
	mov ebx, ecx
	sub ebx, eax
	mov eax, [ebp-0x5d0]
	mov [eax+0x2d0], ebx
	lea ebx, [ebx+ebx*2]
	lea ebx, [eax+ebx*4]
	call _Z16Sys_Millisecondsv
	mov [ebx], eax
	mov [ebx+0x4], edi
	mov dword [ebx+0x8], 0x0
	mov eax, [net_showprofile]
	test byte [eax+0xc], 0x2
	jz _Z16Netchan_TransmitP9netchan_tiPKh_110
	mov [esp+0x10], edi
	mov dword [esp+0xc], _cstring_null
	mov eax, [esi+0x4]
	mov eax, [eax*4+netsrcString]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_s_sends_i
	mov dword [esp], 0x10
	call _Z10Com_PrintfiPKcz
	jmp _Z16Netchan_TransmitP9netchan_tiPKh_110
_Z16Netchan_TransmitP9netchan_tiPKh_40:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_adding_i_byte_pa
	mov dword [esp], 0x10
	call _Z10Com_PrintfiPKcz
	mov [esp+0x8], ebx
	mov eax, [ebp+0x10]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z13MSG_WriteDataP5msg_tPKvi
	mov eax, [packetDebug]
	cmp byte [eax+0xc], 0x0
	jz _Z16Netchan_TransmitP9netchan_tiPKh_120
_Z16Netchan_TransmitP9netchan_tiPKh_50:
	mov eax, [ebp-0x38]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_sending_i_byte_p
	mov dword [esp], 0x10
	call _Z10Com_PrintfiPKcz
	jmp _Z16Netchan_TransmitP9netchan_tiPKh_120
_Z16Netchan_TransmitP9netchan_tiPKh_80:
	cmp dword [esi+0x10], 0x2
	jnz _Z16Netchan_TransmitP9netchan_tiPKh_130
	jmp _Z16Netchan_TransmitP9netchan_tiPKh_140
_Z16Netchan_TransmitP9netchan_tiPKh_30:
	mov eax, [esi+0x1c]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z14MSG_WriteShortP5msg_ti
	jmp _Z16Netchan_TransmitP9netchan_tiPKh_150
	nop


;NET_GetLoopPacket(netsrc_t, netadr_t*, msg_t*)
_Z17NET_GetLoopPacket8netsrc_tP8netadr_tP5msg_t:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edx, [ebp+0x8]
	lea eax, [edx+edx*4]
	lea eax, [edx+eax*2]
	shl eax, 0x8
	add eax, edx
	lea edi, [eax*8+loopbacks]
	mov eax, [edi+0x5804]
	mov edx, [edi+0x5800]
	sub eax, edx
	cmp eax, 0x10
	jle _Z17NET_GetLoopPacket8netsrc_tP8netadr_tP5msg_t_10
	mov eax, [edi+0x5804]
	sub eax, 0x10
	mov [edi+0x5800], eax
_Z17NET_GetLoopPacket8netsrc_tP8netadr_tP5msg_t_10:
	mov edx, [edi+0x5800]
	mov eax, [edi+0x5804]
	cmp edx, eax
	jl _Z17NET_GetLoopPacket8netsrc_tP8netadr_tP5msg_t_20
	xor eax, eax
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z17NET_GetLoopPacket8netsrc_tP8netadr_tP5msg_t_20:
	mov esi, [edi+0x5800]
	and esi, 0xf
	lea eax, [edi+0x5800]
	mov [esp], eax
	call iInterlockedIncrement
	mov eax, [ebp+0x10]
	mov edx, [eax+0x8]
	lea ebx, [esi+esi*4]
	lea ebx, [esi+ebx*2]
	shl ebx, 0x7
	add ebx, edi
	mov eax, [ebx+0x578]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov [esp], edx
	call memcpy
	mov eax, [ebx+0x578]
	mov edx, [ebp+0x10]
	mov [edx+0x14], eax
	mov eax, [ebp+0xc]
	mov dword [eax+0x4], 0x0
	mov dword [eax+0x8], 0x0
	mov dword [eax], 0x2
	mov eax, [ebx+0x57c]
	mov edx, [ebp+0xc]
	mov [edx+0x8], ax
	mov eax, 0x1
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;NET_OutOfBandData(netsrc_t, netadr_t, unsigned char const*, int)
_Z17NET_OutOfBandData8netsrc_t8netadr_tPKhi:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov esi, [ebp+0x18]
	mov ebx, [ebp+0x1c]
	movzx eax, word [ebp+0x14]
	mov [ebp-0x2a], ax
	movzx eax, byte [ebp+0x10]
	mov [ebp-0x2e], al
	movzx eax, byte [ebp+0x11]
	mov [ebp-0x2d], al
	movzx eax, byte [ebp+0x12]
	mov [ebp-0x2c], al
	movzx eax, byte [ebp+0x13]
	mov [ebp-0x2b], al
	mov edi, [ebp+0xc]
	mov byte [tempNetchanPacketBuf], 0xff
	mov byte [tempNetchanPacketBuf+0x1], 0xff
	mov byte [tempNetchanPacketBuf+0x2], 0xff
	mov byte [tempNetchanPacketBuf+0x3], 0xff
	test ebx, ebx
	jle _Z17NET_OutOfBandData8netsrc_t8netadr_tPKhi_10
	xor edx, edx
	mov ecx, tempNetchanPacketBuf
_Z17NET_OutOfBandData8netsrc_t8netadr_tPKhi_20:
	movzx eax, byte [esi+edx]
	mov [ecx+0x4], al
	add edx, 0x1
	add ecx, 0x1
	cmp ebx, edx
	jnz _Z17NET_OutOfBandData8netsrc_t8netadr_tPKhi_20
_Z17NET_OutOfBandData8netsrc_t8netadr_tPKhi_10:
	lea esi, [ebx+0x4]
	mov eax, [showpackets]
	mov eax, [eax+0xc]
	test eax, eax
	jz _Z17NET_OutOfBandData8netsrc_t8netadr_tPKhi_30
	sub eax, 0x1
	jle _Z17NET_OutOfBandData8netsrc_t8netadr_tPKhi_40
_Z17NET_OutOfBandData8netsrc_t8netadr_tPKhi_60:
	mov [esp+0x18], esi
	movzx eax, byte [ebp-0x2b]
	mov [esp+0x14], eax
	movzx eax, byte [ebp-0x2c]
	mov [esp+0x10], eax
	movzx eax, byte [ebp-0x2d]
	mov [esp+0xc], eax
	movzx eax, byte [ebp-0x2e]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_oob_datauuuu_i_b
	mov dword [esp], 0x10
	call _Z11Com_DPrintfiPKcz
_Z17NET_OutOfBandData8netsrc_t8netadr_tPKhi_30:
	movzx eax, word [ebp-0x2a]
	mov [ebp-0x1c], ax
	movzx eax, byte [ebp-0x2e]
	mov [ebp-0x20], al
	movzx eax, byte [ebp-0x2d]
	mov [ebp-0x1f], al
	movzx eax, byte [ebp-0x2c]
	mov [ebp-0x1e], al
	movzx eax, byte [ebp-0x2b]
	mov [ebp-0x1d], al
	mov [ebp-0x24], edi
	mov [esp+0xc], edi
	mov eax, [ebp-0x20]
	mov [esp+0x10], eax
	mov eax, [ebp-0x1c]
	mov [esp+0x14], eax
	mov dword [esp+0x8], tempNetchanPacketBuf
	mov [esp+0x4], esi
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z14NET_SendPacket8netsrc_tiPKv8netadr_t
	movzx ebx, al
	cmp dword [ebp+0x8], 0x1
	jz _Z17NET_OutOfBandData8netsrc_t8netadr_tPKhi_50
	mov [esp+0x4], esi
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z30CL_Netchan_AddOOBProfilePacketii
	xor eax, eax
	test ebx, ebx
	setg al
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z17NET_OutOfBandData8netsrc_t8netadr_tPKhi_50:
	mov [esp], esi
	call _Z30SV_Netchan_AddOOBProfilePacketi
	xor eax, eax
	test ebx, ebx
	setg al
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z17NET_OutOfBandData8netsrc_t8netadr_tPKhi_40:
	cmp edi, 0x2
	jnz _Z17NET_OutOfBandData8netsrc_t8netadr_tPKhi_60
	jmp _Z17NET_OutOfBandData8netsrc_t8netadr_tPKhi_30
	add [eax], al


;NetProf_AddPacket(netProfileStream_t*, int, int)
_Z17NetProf_AddPacketP18netProfileStream_tii:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov esi, [ebp+0x8]
	mov ecx, [esi+0x2d0]
	add ecx, 0x1
	mov edx, 0x88888889
	mov eax, ecx
	imul edx
	lea ebx, [edx+ecx]
	sar ebx, 0x5
	mov eax, ecx
	sar eax, 0x1f
	sub ebx, eax
	lea edx, [ebx*4]
	mov eax, ebx
	shl eax, 0x6
	sub eax, edx
	mov ebx, ecx
	sub ebx, eax
	mov [esi+0x2d0], ebx
	lea ebx, [ebx+ebx*2]
	lea ebx, [esi+ebx*4]
	call _Z16Sys_Millisecondsv
	mov [ebx], eax
	mov eax, [ebp+0xc]
	mov [ebx+0x4], eax
	mov eax, [ebp+0x10]
	mov [ebx+0x8], eax
	pop ebx
	pop esi
	pop ebp
	ret


;NET_CompareBaseAdr(netadr_t, netadr_t)
_Z18NET_CompareBaseAdr8netadr_tS_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov edx, [ebp+0x8]
	mov eax, [ebp+0x14]
	cmp edx, eax
	jz _Z18NET_CompareBaseAdr8netadr_tS__10
_Z18NET_CompareBaseAdr8netadr_tS__60:
	sub edx, eax
	mov [ebp-0x2c], edx
_Z18NET_CompareBaseAdr8netadr_tS__50:
	xor eax, eax
	cmp dword [ebp-0x2c], 0x0
	setz al
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z18NET_CompareBaseAdr8netadr_tS__10:
	cmp edx, 0x2
	jz _Z18NET_CompareBaseAdr8netadr_tS__20
	test edx, edx
	jz _Z18NET_CompareBaseAdr8netadr_tS__30
	cmp edx, 0x4
	jz _Z18NET_CompareBaseAdr8netadr_tS__40
	mov dword [esp+0x4], _cstring_net_comparebasea
	mov dword [esp], 0x10
	call _Z10Com_PrintfiPKcz
	mov dword [ebp-0x2c], 0x0
	jmp _Z18NET_CompareBaseAdr8netadr_tS__50
_Z18NET_CompareBaseAdr8netadr_tS__30:
	movzx edx, word [ebp+0x10]
	movzx eax, word [ebp+0x1c]
	jmp _Z18NET_CompareBaseAdr8netadr_tS__60
_Z18NET_CompareBaseAdr8netadr_tS__20:
	movzx eax, word [ebp+0x10]
	mov [ebp-0x2c], eax
	movzx eax, word [ebp+0x1c]
	sub [ebp-0x2c], eax
	jmp _Z18NET_CompareBaseAdr8netadr_tS__50
_Z18NET_CompareBaseAdr8netadr_tS__40:
	mov ebx, 0x4
	cld
	lea esi, [ebp+0xc]
	lea edi, [ebp+0x18]
	mov ecx, ebx
	repe cmpsb
	mov eax, 0x0
	jz _Z18NET_CompareBaseAdr8netadr_tS__70
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
_Z18NET_CompareBaseAdr8netadr_tS__70:
	mov [ebp-0x2c], eax
	jmp _Z18NET_CompareBaseAdr8netadr_tS__50


;NET_IsLocalAddress(netadr_t)
_Z18NET_IsLocalAddress8netadr_t:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	cmp eax, 0x2
	jz _Z18NET_IsLocalAddress8netadr_t_10
	test eax, eax
	jnz _Z18NET_IsLocalAddress8netadr_t_20
_Z18NET_IsLocalAddress8netadr_t_10:
	mov eax, 0x1
	pop ebp
	ret
_Z18NET_IsLocalAddress8netadr_t_20:
	xor eax, eax
	pop ebp
	ret


;NET_OutOfBandPrint(netsrc_t, netadr_t, char const*)
_Z18NET_OutOfBandPrint8netsrc_t8netadr_tPKc:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov ebx, [ebp+0x18]
	movzx eax, word [ebp+0x14]
	mov [ebp-0x2a], ax
	movzx eax, byte [ebp+0x13]
	mov [ebp-0x2b], al
	movzx eax, byte [ebp+0x12]
	mov [ebp-0x2c], al
	movzx eax, byte [ebp+0x11]
	mov [ebp-0x2d], al
	movzx eax, byte [ebp+0x10]
	mov [ebp-0x2e], al
	mov eax, [ebp+0xc]
	mov [ebp-0x34], eax
	mov byte [tempNetchanPacketBuf], 0xff
	mov byte [tempNetchanPacketBuf+0x1], 0xff
	mov byte [tempNetchanPacketBuf+0x2], 0xff
	mov byte [tempNetchanPacketBuf+0x3], 0xff
	mov eax, [showpackets]
	mov eax, [eax+0xc]
	test eax, eax
	jz _Z18NET_OutOfBandPrint8netsrc_t8netadr_tPKc_10
	sub eax, 0x1
	jle _Z18NET_OutOfBandPrint8netsrc_t8netadr_tPKc_20
_Z18NET_OutOfBandPrint8netsrc_t8netadr_tPKc_70:
	mov dword [esp+0x8], _cstring_unknown
	mov dword [esp+0x4], 0x40
	mov dword [esp], _ZZ15NET_AdrToString8netadr_tE1s
	call _Z11Com_sprintfPciPKcz
	cmp dword [ebp-0x34], 0x2
	jz _Z18NET_OutOfBandPrint8netsrc_t8netadr_tPKc_30
	cmp dword [ebp-0x34], 0x4
	jz _Z18NET_OutOfBandPrint8netsrc_t8netadr_tPKc_40
_Z18NET_OutOfBandPrint8netsrc_t8netadr_tPKc_90:
	mov [esp+0xc], ebx
	mov dword [esp+0x8], _ZZ15NET_AdrToString8netadr_tE1s
	mov dword [esp+0x4], _cstring_oob_prints_s
	mov dword [esp], 0x10
	call _Z11Com_DPrintfiPKcz
_Z18NET_OutOfBandPrint8netsrc_t8netadr_tPKc_10:
	xor esi, esi
	cld
	mov ecx, 0xffffffff
	mov edi, ebx
	mov eax, esi
	repne scasb
	not ecx
	lea eax, [ecx-0x1]
	cmp ecx, 0x1fffc
	jbe _Z18NET_OutOfBandPrint8netsrc_t8netadr_tPKc_50
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_oob_packet_is_i_
	mov dword [esp], 0x10
	call _Z11Com_DPrintfiPKcz
	xor eax, eax
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z18NET_OutOfBandPrint8netsrc_t8netadr_tPKc_50:
	mov [esp+0x8], ecx
	mov [esp+0x4], ebx
	mov dword [esp], tempNetchanPacketBuf+0x4
	call memcpy
	mov edi, tempNetchanPacketBuf
	cld
	mov ecx, 0xffffffff
	mov eax, esi
	repne scasb
	not ecx
	lea edi, [ecx-0x1]
	movzx eax, word [ebp-0x2a]
	mov [ebp-0x1c], ax
	movzx eax, byte [ebp-0x2b]
	mov [ebp-0x1d], al
	movzx eax, byte [ebp-0x2c]
	mov [ebp-0x1e], al
	movzx eax, byte [ebp-0x2d]
	mov [ebp-0x1f], al
	movzx eax, byte [ebp-0x2e]
	mov [ebp-0x20], al
	mov eax, [ebp-0x34]
	mov [ebp-0x24], eax
	mov [esp+0xc], eax
	mov eax, [ebp-0x20]
	mov [esp+0x10], eax
	mov eax, [ebp-0x1c]
	mov [esp+0x14], eax
	mov dword [esp+0x8], tempNetchanPacketBuf
	mov [esp+0x4], edi
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z14NET_SendPacket8netsrc_tiPKv8netadr_t
	movzx ebx, al
	cmp dword [ebp+0x8], 0x1
	jz _Z18NET_OutOfBandPrint8netsrc_t8netadr_tPKc_60
	mov [esp+0x4], edi
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z30CL_Netchan_AddOOBProfilePacketii
_Z18NET_OutOfBandPrint8netsrc_t8netadr_tPKc_80:
	xor eax, eax
	test ebx, ebx
	setg al
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z18NET_OutOfBandPrint8netsrc_t8netadr_tPKc_20:
	cmp dword [ebp-0x34], 0x2
	jnz _Z18NET_OutOfBandPrint8netsrc_t8netadr_tPKc_70
	jmp _Z18NET_OutOfBandPrint8netsrc_t8netadr_tPKc_10
_Z18NET_OutOfBandPrint8netsrc_t8netadr_tPKc_60:
	mov [esp], edi
	call _Z30SV_Netchan_AddOOBProfilePacketi
	jmp _Z18NET_OutOfBandPrint8netsrc_t8netadr_tPKc_80
_Z18NET_OutOfBandPrint8netsrc_t8netadr_tPKc_30:
	mov dword [esp+0x8], _cstring_loopback
	mov dword [esp+0x4], 0x40
	mov dword [esp], _ZZ15NET_AdrToString8netadr_tE1s
	call _Z11Com_sprintfPciPKcz
	jmp _Z18NET_OutOfBandPrint8netsrc_t8netadr_tPKc_90
_Z18NET_OutOfBandPrint8netsrc_t8netadr_tPKc_40:
	movsx eax, word [ebp-0x2a]
	mov [esp], eax
	call _Z8BigShorts
	cwde
	mov [esp+0x1c], eax
	movzx eax, byte [ebp-0x2b]
	mov [esp+0x18], eax
	movzx eax, byte [ebp-0x2c]
	mov [esp+0x14], eax
	movzx eax, byte [ebp-0x2d]
	mov [esp+0x10], eax
	movzx eax, byte [ebp-0x2e]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_iiiii
	mov dword [esp+0x4], 0x40
	mov dword [esp], _ZZ15NET_AdrToString8netadr_tE1s
	call _Z11Com_sprintfPciPKcz
	jmp _Z18NET_OutOfBandPrint8netsrc_t8netadr_tPKc_90
	add [eax], al


;Net_DisplayProfile(int)
_Z18Net_DisplayProfilei:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov edx, [net_profile]
	mov eax, [edx+0xc]
	test eax, eax
	jnz _Z18Net_DisplayProfilei_10
	mov eax, com_sv_running
	mov eax, [eax]
	cmp byte [eax+0xc], 0x1
	sbb eax, eax
	not eax
	add eax, 0x2
	mov [esp+0x4], eax
	mov [esp], edx
	call _Z11Dvar_SetIntPK6dvar_si
_Z18Net_DisplayProfilei_10:
	mov eax, [net_iProfilingOn]
	test eax, eax
	jz _Z18Net_DisplayProfilei_20
	sub eax, 0x1
	jz _Z18Net_DisplayProfilei_30
	mov dword [ebp+0x8], 0x0
	add esp, 0x14
	pop ebx
	pop ebp
	jmp _Z28SV_Netchan_PrintProfileStatsi
_Z18Net_DisplayProfilei_30:
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call _Z28CL_Netchan_PrintProfileStatsii
_Z18Net_DisplayProfilei_20:
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;NET_GetClientPacket(netadr_t*, msg_t*)
_Z19NET_GetClientPacketP8netadr_tP5msg_t:
	push ebp
	mov ebp, esp
	pop ebp
	jmp _Z13Sys_GetPacketP8netadr_tP5msg_t
	nop


;NET_GetServerPacket(netadr_t*, msg_t*)
_Z19NET_GetServerPacketP8netadr_tP5msg_t:
	push ebp
	mov ebp, esp
	pop ebp
	jmp _Z13Sys_GetPacketP8netadr_tP5msg_t
	nop


;NET_CompareAdrSigned(netadr_t*, netadr_t*)
_Z20NET_CompareAdrSignedP8netadr_tS0_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov ecx, [ebp+0x8]
	mov edi, [ebp+0xc]
	mov eax, [ecx]
	mov edx, [edi]
	cmp eax, edx
	jz _Z20NET_CompareAdrSignedP8netadr_tS0__10
	sub eax, edx
	mov [ebp-0x2c], eax
_Z20NET_CompareAdrSignedP8netadr_tS0__60:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z20NET_CompareAdrSignedP8netadr_tS0__10:
	cmp eax, 0x2
	jz _Z20NET_CompareAdrSignedP8netadr_tS0__20
	cmp eax, 0x4
	jz _Z20NET_CompareAdrSignedP8netadr_tS0__30
	mov dword [esp+0x4], _cstring_net_compareadrsi
	mov dword [esp], 0x10
	call _Z10Com_PrintfiPKcz
_Z20NET_CompareAdrSignedP8netadr_tS0__20:
	mov dword [ebp-0x2c], 0x0
	mov eax, [ebp-0x2c]
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z20NET_CompareAdrSignedP8netadr_tS0__30:
	movzx edx, word [ecx+0x8]
	movzx eax, word [edi+0x8]
	cmp dx, ax
	jz _Z20NET_CompareAdrSignedP8netadr_tS0__40
	movzx edx, dx
	movzx eax, ax
	sub edx, eax
	mov [ebp-0x2c], edx
	mov eax, edx
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z20NET_CompareAdrSignedP8netadr_tS0__40:
	add ecx, 0x4
	mov [ebp-0x1c], ecx
	add edi, 0x4
	mov [ebp-0x2c], edi
	mov ebx, 0x4
	cld
	mov esi, ecx
	mov ecx, ebx
	repe cmpsb
	mov eax, 0x0
	jz _Z20NET_CompareAdrSignedP8netadr_tS0__50
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
_Z20NET_CompareAdrSignedP8netadr_tS0__50:
	mov [ebp-0x2c], eax
	jmp _Z20NET_CompareAdrSignedP8netadr_tS0__60
	nop


;NetProf_PrepProfiling(netProfileInfo_t*)
_Z21NetProf_PrepProfilingP16netProfileInfo_t:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [net_profile]
	mov ecx, [eax+0xc]
	test ecx, ecx
	jz _Z21NetProf_PrepProfilingP16netProfileInfo_t_10
	mov edx, [net_iProfilingOn]
	test edx, edx
	jnz _Z21NetProf_PrepProfilingP16netProfileInfo_t_20
	mov eax, com_sv_running
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z21NetProf_PrepProfilingP16netProfileInfo_t_30
_Z21NetProf_PrepProfilingP16netProfileInfo_t_60:
	mov dword [net_iProfilingOn], 0x1
_Z21NetProf_PrepProfilingP16netProfileInfo_t_70:
	mov eax, [net_iProfilingOn]
	mov eax, [eax*4+g_qport]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_net_profiling_tu
_Z21NetProf_PrepProfilingP16netProfileInfo_t_40:
	mov dword [esp], 0x10
	call _Z10Com_PrintfiPKcz
	mov dword [esp+0x8], 0x5e0
	mov dword [esp+0x4], 0x0
	mov eax, [ebp+0x8]
	mov [esp], eax
	call memset
_Z21NetProf_PrepProfilingP16netProfileInfo_t_20:
	leave
	ret
_Z21NetProf_PrepProfilingP16netProfileInfo_t_10:
	mov eax, [net_iProfilingOn]
	test eax, eax
	jz _Z21NetProf_PrepProfilingP16netProfileInfo_t_20
	mov dword [net_iProfilingOn], 0x0
	mov dword [esp+0x4], _cstring_net_profiling_tu1
	jmp _Z21NetProf_PrepProfilingP16netProfileInfo_t_40
_Z21NetProf_PrepProfilingP16netProfileInfo_t_30:
	call _Z25CL_AnyLocalClientsRunningv
	test al, al
	jz _Z21NetProf_PrepProfilingP16netProfileInfo_t_50
	mov eax, [net_profile]
	cmp dword [eax+0xc], 0x2
	jz _Z21NetProf_PrepProfilingP16netProfileInfo_t_60
_Z21NetProf_PrepProfilingP16netProfileInfo_t_50:
	mov dword [net_iProfilingOn], 0x2
	jmp _Z21NetProf_PrepProfilingP16netProfileInfo_t_70
	nop


;NET_OutOfBandVoiceData(netsrc_t, netadr_t, unsigned char*, int)
_Z22NET_OutOfBandVoiceData8netsrc_t8netadr_tPhi:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov ebx, [ebp+0x1c]
	movzx edi, word [ebp+0x14]
	movzx eax, byte [ebp+0x13]
	mov [ebp-0x29], al
	movzx eax, byte [ebp+0x12]
	mov [ebp-0x2a], al
	movzx eax, byte [ebp+0x11]
	mov [ebp-0x2b], al
	movzx eax, byte [ebp+0x10]
	mov [ebp-0x2c], al
	mov esi, [ebp+0xc]
	mov byte [tempNetchanPacketBuf], 0xff
	mov byte [tempNetchanPacketBuf+0x1], 0xff
	mov byte [tempNetchanPacketBuf+0x2], 0xff
	mov byte [tempNetchanPacketBuf+0x3], 0xff
	mov [esp+0x8], ebx
	mov eax, [ebp+0x18]
	mov [esp+0x4], eax
	mov dword [esp], tempNetchanPacketBuf+0x4
	call memcpy
	add ebx, 0x4
	mov [ebp-0x1c], di
	movzx eax, byte [ebp-0x29]
	mov [ebp-0x1d], al
	movzx eax, byte [ebp-0x2a]
	mov [ebp-0x1e], al
	movzx eax, byte [ebp-0x2b]
	mov [ebp-0x1f], al
	movzx eax, byte [ebp-0x2c]
	mov [ebp-0x20], al
	mov [ebp-0x24], esi
	mov [esp+0xc], esi
	mov eax, [ebp-0x20]
	mov [esp+0x10], eax
	mov eax, [ebp-0x1c]
	mov [esp+0x14], eax
	mov dword [esp+0x8], tempNetchanPacketBuf
	mov [esp+0x4], ebx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z14NET_SendPacket8netsrc_tiPKv8netadr_t
	movzx esi, al
	cmp dword [ebp+0x8], 0x1
	jz _Z22NET_OutOfBandVoiceData8netsrc_t8netadr_tPhi_10
	mov [esp+0x4], ebx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z30CL_Netchan_AddOOBProfilePacketii
	xor eax, eax
	test esi, esi
	setg al
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z22NET_OutOfBandVoiceData8netsrc_t8netadr_tPhi_10:
	mov [esp], ebx
	call _Z30SV_Netchan_AddOOBProfilePacketi
	xor eax, eax
	test esi, esi
	setg al
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Netchan_TransmitNextFragment(netchan_t*)
_Z28Netchan_TransmitNextFragmentP9netchan_t:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5ec
	mov esi, [ebp+0x8]
	lea edi, [esi+0x44]
	mov [esp], edi
	call _Z21NetProf_PrepProfilingP16netProfileInfo_t
	mov dword [esp+0x8], 0x578
	lea eax, [ebp-0x5c4]
	mov [esp+0x4], eax
	lea ebx, [ebp-0x4c]
	mov [esp], ebx
	call _Z8MSG_InitP5msg_tPhi
	mov eax, [esi]
	or eax, 0x80000000
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z13MSG_WriteLongP5msg_ti
	mov eax, [esi+0x4]
	test eax, eax
	jle _Z28Netchan_TransmitNextFragmentP9netchan_t_10
_Z28Netchan_TransmitNextFragmentP9netchan_t_110:
	mov edx, [esi+0x34]
	mov ecx, [esi+0x38]
	lea eax, [edx+0x514]
	cmp eax, ecx
	jg _Z28Netchan_TransmitNextFragmentP9netchan_t_20
	mov dword [ebp-0x5d4], 0x514
_Z28Netchan_TransmitNextFragmentP9netchan_t_70:
	mov [esp+0x4], edx
	mov [esp], ebx
	call _Z13MSG_WriteLongP5msg_ti
	mov eax, [ebp-0x5d4]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z14MSG_WriteShortP5msg_ti
	mov eax, [ebp-0x5d4]
	mov [esp+0x8], eax
	mov eax, [esi+0x3c]
	add eax, [esi+0x34]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z13MSG_WriteDataP5msg_tPKvi
	mov ecx, [esi+0x10]
	mov [ebp-0x24], ecx
	mov edx, [esi+0x14]
	mov [ebp-0x20], edx
	mov eax, [esi+0x18]
	mov [ebp-0x1c], eax
	mov [esp+0xc], ecx
	mov [esp+0x10], edx
	mov [esp+0x14], eax
	mov eax, [ebp-0x44]
	mov [esp+0x8], eax
	mov eax, [ebp-0x38]
	mov [esp+0x4], eax
	mov eax, [esi+0x4]
	mov [esp], eax
	call _Z14NET_SendPacket8netsrc_tiPKv8netadr_t
	movzx eax, al
	mov [ebp-0x5d0], eax
	mov eax, [ebp-0x38]
	mov [ebp-0x5cc], eax
	mov eax, [net_iProfilingOn]
	test eax, eax
	jnz _Z28Netchan_TransmitNextFragmentP9netchan_t_30
_Z28Netchan_TransmitNextFragmentP9netchan_t_90:
	mov eax, [showpackets]
	mov eax, [eax+0xc]
	test eax, eax
	jz _Z28Netchan_TransmitNextFragmentP9netchan_t_40
	sub eax, 0x1
	jle _Z28Netchan_TransmitNextFragmentP9netchan_t_50
_Z28Netchan_TransmitNextFragmentP9netchan_t_100:
	mov eax, [ebp-0x5d4]
	mov [esp+0x18], eax
	mov eax, [esi+0x34]
	mov [esp+0x14], eax
	mov eax, [esi]
	sub eax, 0x1
	mov [esp+0x10], eax
	mov eax, [ebp-0x38]
	mov [esp+0xc], eax
	mov eax, [esi+0x4]
	mov eax, [eax*4+netsrcString]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_s_send_4i__si_fr
	mov dword [esp], 0x10
	call _Z10Com_PrintfiPKcz
_Z28Netchan_TransmitNextFragmentP9netchan_t_40:
	mov eax, [ebp-0x5d4]
	add eax, [esi+0x34]
	mov [esi+0x34], eax
	cmp eax, [esi+0x38]
	jz _Z28Netchan_TransmitNextFragmentP9netchan_t_60
_Z28Netchan_TransmitNextFragmentP9netchan_t_80:
	xor eax, eax
	cmp dword [ebp-0x5d0], 0x0
	setg al
	add esp, 0x5ec
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z28Netchan_TransmitNextFragmentP9netchan_t_20:
	sub ecx, edx
	mov [ebp-0x5d4], ecx
	jmp _Z28Netchan_TransmitNextFragmentP9netchan_t_70
_Z28Netchan_TransmitNextFragmentP9netchan_t_60:
	cmp dword [ebp-0x5d4], 0x514
	jz _Z28Netchan_TransmitNextFragmentP9netchan_t_80
	add dword [esi], 0x1
	mov dword [esi+0x30], 0x0
	xor eax, eax
	cmp dword [ebp-0x5d0], 0x0
	setg al
	add esp, 0x5ec
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z28Netchan_TransmitNextFragmentP9netchan_t_30:
	mov ecx, [edi+0x2d0]
	add ecx, 0x1
	mov edx, 0x88888889
	mov eax, ecx
	imul edx
	lea ebx, [edx+ecx]
	sar ebx, 0x5
	mov eax, ecx
	sar eax, 0x1f
	sub ebx, eax
	lea edx, [ebx*4]
	mov eax, ebx
	shl eax, 0x6
	sub eax, edx
	mov ebx, ecx
	sub ebx, eax
	mov [edi+0x2d0], ebx
	lea ebx, [ebx+ebx*2]
	lea ebx, [edi+ebx*4]
	call _Z16Sys_Millisecondsv
	mov [ebx], eax
	mov eax, [ebp-0x5cc]
	mov [ebx+0x4], eax
	mov dword [ebx+0x8], 0x1
	mov eax, [net_showprofile]
	test byte [eax+0xc], 0x2
	jz _Z28Netchan_TransmitNextFragmentP9netchan_t_90
	mov eax, [ebp-0x5cc]
	mov [esp+0x10], eax
	mov dword [esp+0xc], _cstring__fragment
	mov eax, [esi+0x4]
	mov eax, [eax*4+netsrcString]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_s_sends_i
	mov dword [esp], 0x10
	call _Z10Com_PrintfiPKcz
	jmp _Z28Netchan_TransmitNextFragmentP9netchan_t_90
_Z28Netchan_TransmitNextFragmentP9netchan_t_50:
	cmp dword [esi+0x10], 0x2
	jnz _Z28Netchan_TransmitNextFragmentP9netchan_t_100
	jmp _Z28Netchan_TransmitNextFragmentP9netchan_t_40
_Z28Netchan_TransmitNextFragmentP9netchan_t_10:
	mov eax, [esi+0x1c]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z14MSG_WriteShortP5msg_ti
	jmp _Z28Netchan_TransmitNextFragmentP9netchan_t_110


;Initialized global or static variables of net_chan_mp:
SECTION .data
netsrcString: dd _cstring_client1, _cstring_server, 0x0, 0x0, 0x0, 0x0, 0x0
g_qport: dd 0x0


;Initialized constant data of net_chan_mp:
SECTION .rdata


;Zero initialized global or static variables of net_chan_mp:
SECTION .bss
tempNetchanPacketBuf: resb 0x20000
loopbacks: resb 0xb010
net_iProfilingOn: resb 0x10
_ZZ15NET_AdrToString8netadr_tE1s: resb 0x40
_ZZ12Netchan_InitiE21Net_DumpProfile_f_VAR: resb 0x20
net_showprofile: resb 0x4
net_lanauthorize: resb 0x4
showpackets: resb 0x60
net_profile: resb 0x4
msg_dumpEnts: resb 0x4
msg_hudelemspew: resb 0x4
msg_printEntityNums: resb 0x4
packetDebug: resb 0x4
showdrop: resb 0x4


;All cstrings:
SECTION .rdata
_cstring_network_profilin:		db "Network profiling is not on. Set net_profile to turn on network profiling",0ah,0
_cstring_show_packets:		db "Show packets",0
_cstring_showpackets:		db "showpackets",0
_cstring_show_dropped_pac:		db "Show dropped packets",0
_cstring_showdrop:		db "showdrop",0
_cstring_enable_packet_de:		db "Enable packet debugging information",0
_cstring_packetdebug:		db "packetDebug",0
_cstring_profile_network_:		db "Profile network performance",0
_cstring_net_profile:		db "net_profile",0
_cstring_show_network_pro:		db "Show network profiling display",0
_cstring_net_showprofile:		db "net_showprofile",0
_cstring_authorise_cd_key:		db "Authorise CD keys when using a LAN",0
_cstring_net_lanauthorize:		db "net_lanauthorize",0
_cstring_print_entity_num:		db "Print entity numbers",0
_cstring_msg_printentityn:		db "msg_printEntityNums",0
_cstring_print_snapshot_e:		db "Print snapshot entity info",0
_cstring_msg_dumpents:		db "msg_dumpEnts",0
_cstring_debug_hudelem_fi:		db "Debug hudelem fields changing",0
_cstring_msg_hudelemspew:		db "msg_hudelemspew",0
_cstring_net_dumpprofile:		db "net_dumpprofile",0
_cstring_net_compareadrsi:		db "NET_CompareAdrSigned: bad address type",0ah,0
_cstring_s_send_packet_4i:		db "[%s] send packet %4i",0ah,0
_cstring_unknown:		db "unknown",0
_cstring_iiiii:		db "%i.%i.%i.%i:%i",0
_cstring_loopback:		db "loopback",0
_cstring_localhost:		db "localhost",0
_cstring_s_recv_4i__si_fr:		db "[%s] recv %4i : s=%i fragment=%i,%i",0ah,0
_cstring_s_s_out_of_order:		db "[%s] %s: Out of order packet %i at %i",0ah,0
_cstring_sdropped_a_messa:		db "%s:Dropped a message fragment",0ah,0
_cstring__fragment:		db " fragment",0
_cstring_null:		db 0
_cstring_s_recieves_i:		db "[%s] recieve%s: %i",0ah,0
_cstring_s_s_dropped_i_pa:		db "[%s] %s: Dropped %i packets at %i",0ah,0
_cstring_s_recv_4i__si:		db "[%s] recv %4i : s=%i",0ah,0
_cstring_sfragmentlength_:		db "%s:fragmentLength %i > msg->maxsize",0ah,0
_cstring_sillegal_fragmen:		db "%s:illegal fragment length",0ah,0
_cstring_s_senduuuu_4i_by:		db "[%s] send->%u.%u.%u.%u (%4i bytes) : s=%i ack=%i",0ah,0
_cstring_netchan_transmit:		db 015h,"Netchan_Transmit: length = %i",0
_cstring_s_sends_i:		db "[%s] send%s: %i",0ah,0
_cstring_adding_i_byte_pa:		db "Adding %i byte payload to packet",0ah,0
_cstring_sending_i_byte_p:		db "Sending %i byte packet",0ah,0
_cstring_oob_datauuuu_i_b:		db "OOB Data->%u.%u.%u.%u: %i bytes",0ah,0
_cstring_net_comparebasea:		db "NET_CompareBaseAdrSigned: bad address type",0ah,0
_cstring_oob_prints_s:		db "OOB Print->%s: %s",0ah,0
_cstring_oob_packet_is_i_:		db "OOB Packet is %i bytes - too large to send",0ah,0
_cstring_net_profiling_tu:		db "Net Profiling turned on: %s",0ah,0
_cstring_net_profiling_tu1:		db "Net Profiling turned off",0ah,0
_cstring_s_send_4i__si_fr:		db "[%s] send %4i : s=%i fragment=%i,%i",0ah,0
_cstring_client1:		db "client1",0
_cstring_server:		db "server",0



;All constant floats and doubles:
SECTION .rdata

