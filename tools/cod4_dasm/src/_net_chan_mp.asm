;Imports of net_chan_mp:
	extern SV_Netchan_PrintProfileStats
	extern CL_Netchan_PrintProfileStats
	extern Com_Printf
	extern Cvar_RegisterInt
	extern Cvar_RegisterBool
	extern Cmd_AddCommand
	extern memset
	extern Sys_SendPacket
	extern memcpy
	extern InterlockedIncrement
	extern Com_sprintf
	extern BigShort
	extern Q_strncpyz
	extern strchr
	extern Sys_StringToAdr
	extern atoi
	extern MSG_BeginReading
	extern MSG_ReadLong
	extern Sys_Milliseconds
	extern MSG_ReadShort
	extern Com_Memcpy
	extern MSG_Init
	extern MSG_WriteLong
	extern MSG_WriteData
	extern Com_Error
	extern MSG_WriteShort
	extern Com_DPrintf
	extern CL_Netchan_AddOOBProfilePacket
	extern SV_Netchan_AddOOBProfilePacket
	extern com_sv_running
	extern Cvar_SetInt
	extern Sys_GetPacket
	extern CL_AnyLocalClientsRunning

;Exports of net_chan_mp:
	global tempNetchanPacketBuf
	global netsrcString
	global loopbacks
	global net_iProfilingOn
	global _ZZ15NET_AdrToString8netadr_tE1s
	global Net_DumpProfile_f
	global _ZZ12Netchan_InitiE21Net_DumpProfile_f_VAR
	global Netchan_Init
	global Netchan_Setup
	global NET_CompareAdr
	global NET_SendPacket
	global NET_AdrToString
	global NET_StringToAdr
	global Netchan_Process
	global Netchan_Transmit
	global NET_GetLoopPacket
	global NET_OutOfBandData
	global NetProf_AddPacket
	global NET_CompareBaseAdr
	global NET_IsLocalAddress
	global NET_OutOfBandPrint
	global Net_DisplayProfile
	global NET_GetClientPacket
	global NET_GetServerPacket
	global NET_CompareAdrSigned
	global NetProf_PrepProfiling
	global NET_OutOfBandVoiceData
	global Netchan_TransmitNextFragment
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
Net_DumpProfile_f:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [net_iProfilingOn]
	test eax, eax
	jz Net_DumpProfile_f_10
	sub eax, 0x1
	jz Net_DumpProfile_f_20
	mov dword [esp], 0x1
	call SV_Netchan_PrintProfileStats
	leave
	ret
Net_DumpProfile_f_20:
	mov dword [esp+0x4], 0x1
	mov dword [esp], 0x0
	call CL_Netchan_PrintProfileStats
	leave
	ret
Net_DumpProfile_f_10:
	mov dword [esp+0x4], _cstring_network_profilin
	mov dword [esp], 0x0
	call Com_Printf
	leave
	ret


;Netchan_Init(int)
Netchan_Init:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	mov dword [esp+0x14], _cstring_show_packets
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x2
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_showpackets
	call Cvar_RegisterInt
	mov [showpackets], eax
	mov dword [esp+0xc], _cstring_show_dropped_pac
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_showdrop
	call Cvar_RegisterBool
	mov [showdrop], eax
	mov dword [esp+0xc], _cstring_enable_packet_de
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_packetdebug
	call Cvar_RegisterBool
	mov [packetDebug], eax
	movsx eax, word [ebp+0x8]
	mov [g_qport], eax
	mov dword [esp+0x14], _cstring_profile_network_
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x2
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_net_profile
	call Cvar_RegisterInt
	mov [net_profile], eax
	mov dword [esp+0x14], _cstring_show_network_pro
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x3
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_net_showprofile
	call Cvar_RegisterInt
	mov [net_showprofile], eax
	mov dword [esp+0xc], _cstring_authorise_cd_key
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_net_lanauthorize
	call Cvar_RegisterBool
	mov [net_lanauthorize], eax
	mov dword [esp+0xc], _cstring_print_entity_num
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_msg_printentityn
	call Cvar_RegisterBool
	mov [msg_printEntityNums], eax
	mov dword [esp+0xc], _cstring_print_snapshot_e
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_msg_dumpents
	call Cvar_RegisterBool
	mov [msg_dumpEnts], eax
	mov dword [esp+0xc], _cstring_debug_hudelem_fi
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_msg_hudelemspew
	call Cvar_RegisterBool
	mov [msg_hudelemspew], eax
	mov dword [esp+0x8], _ZZ12Netchan_InitiE21Net_DumpProfile_f_VAR
	mov dword [esp+0x4], Net_DumpProfile_f
	mov dword [esp], _cstring_net_dumpprofile
	call Cmd_AddCommand
	leave
	ret


;Netchan_Setup(netsrc_t, netchan_t*, netadr_t, int, char*, int, char*, int)
Netchan_Setup:
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
	jmp NetProf_PrepProfiling
	add [eax], al


;NET_CompareAdr(netadr_t, netadr_t)
NET_CompareAdr:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov eax, [ebp+0x8]
	mov edx, [ebp+0x14]
	cmp eax, edx
	jz NET_CompareAdr_10
	sub eax, edx
	mov [ebp-0x2c], eax
NET_CompareAdr_60:
	xor eax, eax
	cmp dword [ebp-0x2c], 0x0
	setz al
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
NET_CompareAdr_10:
	cmp eax, 0x2
	jz NET_CompareAdr_20
	cmp eax, 0x4
	jz NET_CompareAdr_30
	mov dword [esp+0x4], _cstring_net_compareadrsi
	mov dword [esp], 0x10
	call Com_Printf
NET_CompareAdr_20:
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
NET_CompareAdr_30:
	movzx edx, word [ebp+0x10]
	movzx eax, word [ebp+0x1c]
	cmp dx, ax
	jz NET_CompareAdr_40
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
NET_CompareAdr_40:
	mov ebx, 0x4
	cld
	lea esi, [ebp+0xc]
	lea edi, [ebp+0x18]
	mov ecx, ebx
	repe cmpsb
	mov eax, 0x0
	jz NET_CompareAdr_50
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
NET_CompareAdr_50:
	mov [ebp-0x2c], eax
	jmp NET_CompareAdr_60
	nop


;NET_SendPacket(netsrc_t, int, void const*, netadr_t)
NET_SendPacket:
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
	jz NET_SendPacket_10
	mov edx, [ebp+0x10]
	cmp dword [edx], 0xffffffff
	jz NET_SendPacket_20
NET_SendPacket_10:
	cmp ebx, 0x2
	jz NET_SendPacket_30
	cmp ebx, 0x1
	jz NET_SendPacket_40
	test ebx, ebx
	jnz NET_SendPacket_50
NET_SendPacket_40:
	xor eax, eax
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
NET_SendPacket_50:
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
	call Sys_SendPacket
	movzx eax, al
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
NET_SendPacket_30:
	mov eax, [ebp+0x8]
	test eax, eax
	jle NET_SendPacket_60
	cmp eax, 0x1
	jz NET_SendPacket_70
NET_SendPacket_80:
	xor edi, edi
NET_SendPacket_90:
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
	call InterlockedIncrement
	mov eax, 0x1
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
NET_SendPacket_20:
	mov eax, [ebp+0xc]
	mov [esp+0xc], eax
	mov edx, [ebp+0x8]
	mov eax, [edx*4+netsrcString]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_s_send_packet_4i
	mov dword [esp], 0x10
	call Com_Printf
	jmp NET_SendPacket_10
NET_SendPacket_70:
	movzx eax, word [ebp-0x2a]
	jmp NET_SendPacket_80
NET_SendPacket_60:
	mov edi, eax
	mov eax, 0x1
	jmp NET_SendPacket_90


;NET_AdrToString(netadr_t)
NET_AdrToString:
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
	call Com_sprintf
	cmp ebx, 0x2
	jz NET_AdrToString_10
	cmp ebx, 0x4
	jz NET_AdrToString_20
	mov eax, _ZZ15NET_AdrToString8netadr_tE1s
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
NET_AdrToString_20:
	movsx eax, si
	mov [esp], eax
	call BigShort
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
	call Com_sprintf
	mov eax, _ZZ15NET_AdrToString8netadr_tE1s
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
NET_AdrToString_10:
	mov dword [esp+0x8], _cstring_loopback
	mov dword [esp+0x4], 0x40
	mov dword [esp], _ZZ15NET_AdrToString8netadr_tE1s
	call Com_sprintf
	mov eax, _ZZ15NET_AdrToString8netadr_tE1s
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;NET_StringToAdr(char const*, netadr_t*)
NET_StringToAdr:
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
	jz NET_StringToAdr_10
	movzx edx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub edx, ecx
NET_StringToAdr_10:
	test edx, edx
	jnz NET_StringToAdr_20
	mov dword [ebx+0x4], 0x0
	mov dword [ebx+0x8], 0x0
	mov dword [ebx], 0x2
	mov eax, 0x1
NET_StringToAdr_70:
	add esp, 0x41c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
NET_StringToAdr_20:
	mov dword [esp+0x8], 0x400
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	lea edi, [ebp-0x418]
	mov [esp], edi
	call Q_strncpyz
	mov dword [esp+0x4], 0x3a
	mov [esp], edi
	call strchr
	mov esi, eax
	test eax, eax
	jz NET_StringToAdr_30
	mov byte [eax], 0x0
	add esi, 0x1
NET_StringToAdr_30:
	mov [esp+0x4], ebx
	mov [esp], edi
	call Sys_StringToAdr
	test eax, eax
	jz NET_StringToAdr_40
	cmp dword [ebx+0x4], 0xffffffff
	jz NET_StringToAdr_50
	test esi, esi
	jz NET_StringToAdr_60
	mov [esp], esi
	call atoi
	cwde
	mov [esp], eax
	call BigShort
	mov [ebx+0x8], ax
	mov eax, 0x1
	add esp, 0x41c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
NET_StringToAdr_40:
	mov dword [ebx], 0x1
	add esp, 0x41c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
NET_StringToAdr_50:
	mov dword [ebx], 0x1
	xor eax, eax
	jmp NET_StringToAdr_70
NET_StringToAdr_60:
	mov dword [esp], 0x7120
	call BigShort
	mov [ebx+0x8], ax
	mov eax, 0x1
	jmp NET_StringToAdr_70
	add [eax], al


;Netchan_Process(netchan_t*, msg_t*)
Netchan_Process:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov edi, [ebp+0x8]
	lea eax, [edi+0x44]
	mov [esp], eax
	call NetProf_PrepProfiling
	mov eax, [ebp+0xc]
	mov [esp], eax
	call MSG_BeginReading
	mov edx, [ebp+0xc]
	mov [esp], edx
	call MSG_ReadLong
	mov [ebp-0x48], eax
	test eax, eax
	js Netchan_Process_10
	mov dword [ebp-0x3c], 0x0
	cmp dword [edi+0x4], 0x1
	jz Netchan_Process_20
Netchan_Process_300:
	mov ebx, [ebp-0x3c]
	test ebx, ebx
	jnz Netchan_Process_30
	mov dword [ebp-0x44], 0x0
	mov dword [ebp-0x40], 0x0
Netchan_Process_250:
	mov ecx, [ebp+0xc]
	mov ecx, [ecx+0x14]
	mov [ebp-0x38], ecx
	mov ecx, [net_iProfilingOn]
	test ecx, ecx
	jnz Netchan_Process_40
Netchan_Process_240:
	mov eax, [showpackets]
	mov eax, [eax+0xc]
	test eax, eax
	jz Netchan_Process_50
	sub eax, 0x1
	jle Netchan_Process_60
Netchan_Process_310:
	mov edx, [ebp-0x3c]
	test edx, edx
	jz Netchan_Process_70
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
	call Com_Printf
Netchan_Process_50:
	mov esi, [edi+0xc]
	cmp [ebp-0x48], esi
	jg Netchan_Process_80
	mov eax, [showdrop]
	cmp byte [eax+0xc], 0x0
	jnz Netchan_Process_90
	mov eax, [showpackets]
	mov eax, [eax+0xc]
	test eax, eax
	jz Netchan_Process_100
	sub eax, 0x1
	jle Netchan_Process_110
Netchan_Process_90:
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
	call Com_sprintf
	cmp ebx, 0x2
	jz Netchan_Process_120
	cmp ebx, 0x4
	jz Netchan_Process_130
Netchan_Process_410:
	mov [esp+0x14], esi
	mov edx, [ebp-0x48]
	mov [esp+0x10], edx
	mov dword [esp+0xc], _ZZ15NET_AdrToString8netadr_tE1s
	mov eax, [edi+0x4]
	mov eax, [eax*4+netsrcString]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_s_s_out_of_order
	mov dword [esp], 0x10
	call Com_Printf
	xor eax, eax
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Netchan_Process_80:
	mov eax, [ebp-0x48]
	sub eax, esi
	lea esi, [eax-0x1]
	mov [edi+0x8], esi
	test esi, esi
	jle Netchan_Process_140
	mov eax, [showdrop]
	cmp byte [eax+0xc], 0x0
	jnz Netchan_Process_150
	mov eax, [showpackets]
	mov eax, [eax+0xc]
	test eax, eax
	jnz Netchan_Process_160
Netchan_Process_140:
	mov eax, [ebp-0x3c]
	test eax, eax
	jnz Netchan_Process_170
Netchan_Process_290:
	mov eax, [ebp-0x48]
	mov [edi+0xc], eax
	mov eax, 0x1
Netchan_Process_360:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Netchan_Process_170:
	mov ecx, [ebp-0x48]
	cmp ecx, [edi+0x20]
	jz Netchan_Process_180
	mov [edi+0x20], ecx
	mov dword [edi+0x24], 0x0
Netchan_Process_180:
	mov eax, [ebp-0x44]
	cmp eax, [edi+0x24]
	jz Netchan_Process_190
	mov eax, [showdrop]
	cmp byte [eax+0xc], 0x0
	jnz Netchan_Process_200
	mov eax, [showpackets]
	mov eax, [eax+0xc]
	test eax, eax
	jz Netchan_Process_100
	sub eax, 0x1
	jle Netchan_Process_210
Netchan_Process_200:
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
	call Com_sprintf
	cmp ebx, 0x2
	jz Netchan_Process_220
	cmp ebx, 0x4
	jz Netchan_Process_230
Netchan_Process_430:
	mov ecx, [ebp-0x48]
	mov [esp+0xc], ecx
	mov dword [esp+0x8], _ZZ15NET_AdrToString8netadr_tE1s
	mov dword [esp+0x4], _cstring_sdropped_a_messa
	mov dword [esp], 0x10
	call Com_Printf
	xor eax, eax
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Netchan_Process_40:
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
	call Sys_Milliseconds
	mov [ebx], eax
	mov edx, [ebp-0x38]
	mov [ebx+0x4], edx
	mov ecx, [ebp-0x3c]
	mov [ebx+0x8], ecx
	mov eax, [net_showprofile]
	test byte [eax+0xc], 0x2
	jz Netchan_Process_240
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
	call Com_Printf
	jmp Netchan_Process_240
Netchan_Process_30:
	mov eax, [ebp+0xc]
	mov [esp], eax
	call MSG_ReadLong
	mov [ebp-0x44], eax
	mov edx, [ebp+0xc]
	mov [esp], edx
	call MSG_ReadShort
	mov [ebp-0x40], eax
	jmp Netchan_Process_250
Netchan_Process_160:
	sub eax, 0x1
	jle Netchan_Process_260
Netchan_Process_150:
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
	call Com_sprintf
	cmp ebx, 0x2
	jz Netchan_Process_270
	cmp ebx, 0x4
	jz Netchan_Process_280
Netchan_Process_420:
	mov edx, [ebp-0x48]
	mov [esp+0x14], edx
	mov [esp+0x10], esi
	mov dword [esp+0xc], _ZZ15NET_AdrToString8netadr_tE1s
	mov eax, [edi+0x4]
	mov eax, [eax*4+netsrcString]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_s_s_dropped_i_pa
	mov dword [esp], 0x10
	call Com_Printf
	mov eax, [ebp-0x3c]
	test eax, eax
	jz Netchan_Process_290
	jmp Netchan_Process_170
Netchan_Process_70:
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
	call Com_Printf
	jmp Netchan_Process_50
Netchan_Process_10:
	and dword [ebp-0x48], 0x7fffffff
	mov dword [ebp-0x3c], 0x1
	cmp dword [edi+0x4], 0x1
	jnz Netchan_Process_300
Netchan_Process_20:
	mov ecx, [ebp+0xc]
	mov [esp], ecx
	call MSG_ReadShort
	jmp Netchan_Process_300
Netchan_Process_60:
	cmp dword [edi+0x10], 0x2
	jnz Netchan_Process_310
	jmp Netchan_Process_50
Netchan_Process_190:
	mov eax, [ebp-0x40]
	test eax, eax
	js Netchan_Process_320
	mov eax, [ebp+0xc]
	mov edx, [eax+0x1c]
	mov eax, [ebp-0x40]
	add eax, edx
	mov ecx, [ebp+0xc]
	cmp eax, [ecx+0x14]
	jg Netchan_Process_320
	mov eax, [ebp-0x44]
	add eax, [ebp-0x40]
	cmp eax, [edi+0x2c]
	jg Netchan_Process_320
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
	jz Netchan_Process_100
	mov edx, [ebp+0xc]
	cmp ebx, [edx+0x10]
	jle Netchan_Process_330
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
	call Com_sprintf
	cmp esi, 0x2
	jz Netchan_Process_340
	cmp esi, 0x4
	jz Netchan_Process_350
Netchan_Process_460:
	mov [esp+0xc], ebx
	mov dword [esp+0x8], _ZZ15NET_AdrToString8netadr_tE1s
	mov dword [esp+0x4], _cstring_sfragmentlength_
	mov dword [esp], 0x10
	call Com_Printf
	xor eax, eax
	jmp Netchan_Process_360
Netchan_Process_320:
	mov eax, [showdrop]
	cmp byte [eax+0xc], 0x0
	jnz Netchan_Process_370
	mov eax, [showpackets]
	mov eax, [eax+0xc]
	test eax, eax
	jz Netchan_Process_100
	sub eax, 0x1
	jle Netchan_Process_380
Netchan_Process_370:
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
	call Com_sprintf
	cmp ebx, 0x2
	jz Netchan_Process_390
	cmp ebx, 0x4
	jz Netchan_Process_400
Netchan_Process_450:
	mov dword [esp+0x8], _ZZ15NET_AdrToString8netadr_tE1s
	mov dword [esp+0x4], _cstring_sillegal_fragmen
	mov dword [esp], 0x10
	call Com_Printf
	xor eax, eax
	jmp Netchan_Process_360
Netchan_Process_110:
	cmp dword [edi+0x10], 0x2
	jnz Netchan_Process_90
Netchan_Process_100:
	xor eax, eax
Netchan_Process_440:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Netchan_Process_120:
	mov dword [esp+0x8], _cstring_loopback
	mov dword [esp+0x4], 0x40
	mov dword [esp], _ZZ15NET_AdrToString8netadr_tE1s
	call Com_sprintf
	jmp Netchan_Process_410
Netchan_Process_280:
	movsx eax, word [ebp-0x28]
	mov [esp], eax
	call BigShort
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
	call Com_sprintf
	jmp Netchan_Process_420
Netchan_Process_260:
	cmp dword [edi+0x10], 0x2
	jnz Netchan_Process_150
	jmp Netchan_Process_140
Netchan_Process_130:
	movsx eax, word [ebp-0x2e]
	mov [esp], eax
	call BigShort
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
	call Com_sprintf
	jmp Netchan_Process_410
Netchan_Process_270:
	mov dword [esp+0x8], _cstring_loopback
	mov dword [esp+0x4], 0x40
	mov dword [esp], _ZZ15NET_AdrToString8netadr_tE1s
	call Com_sprintf
	jmp Netchan_Process_420
Netchan_Process_220:
	mov dword [esp+0x8], _cstring_loopback
	mov dword [esp+0x4], 0x40
	mov dword [esp], _ZZ15NET_AdrToString8netadr_tE1s
	call Com_sprintf
	jmp Netchan_Process_430
Netchan_Process_210:
	cmp dword [edi+0x10], 0x2
	jnz Netchan_Process_200
	xor eax, eax
	jmp Netchan_Process_440
Netchan_Process_230:
	movsx eax, si
	mov [esp], eax
	call BigShort
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
	call Com_sprintf
	jmp Netchan_Process_430
Netchan_Process_390:
	mov dword [esp+0x8], _cstring_loopback
	mov dword [esp+0x4], 0x40
	mov dword [esp], _ZZ15NET_AdrToString8netadr_tE1s
	call Com_sprintf
	jmp Netchan_Process_450
Netchan_Process_380:
	cmp dword [edi+0x10], 0x2
	jnz Netchan_Process_370
	xor eax, eax
	jmp Netchan_Process_440
Netchan_Process_400:
	movsx eax, si
	mov [esp], eax
	call BigShort
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
	call Com_sprintf
	jmp Netchan_Process_450
Netchan_Process_330:
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
	call MSG_BeginReading
	mov ecx, [ebp+0xc]
	mov [esp], ecx
	call MSG_ReadLong
	jmp Netchan_Process_290
Netchan_Process_350:
	movsx eax, word [ebp-0x1a]
	mov [esp], eax
	call BigShort
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
	call Com_sprintf
	jmp Netchan_Process_460
Netchan_Process_340:
	mov dword [esp+0x8], _cstring_loopback
	mov dword [esp+0x4], 0x40
	mov dword [esp], _ZZ15NET_AdrToString8netadr_tE1s
	call Com_sprintf
	jmp Netchan_Process_460
	nop


;Netchan_Transmit(netchan_t*, int, unsigned char const*)
Netchan_Transmit:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5fc
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	cmp ebx, 0x20000
	jg Netchan_Transmit_10
Netchan_Transmit_100:
	mov dword [esi+0x34], 0x0
	cmp ebx, 0x513
	jle Netchan_Transmit_20
	mov dword [esi+0x30], 0x1
	mov [esi+0x38], ebx
	mov [esp+0x8], ebx
	mov eax, [ebp+0x10]
	mov [esp+0x4], eax
	mov eax, [esi+0x3c]
	mov [esp], eax
	call Com_Memcpy
	mov [esp], esi
	call Netchan_TransmitNextFragment
	mov eax, 0x1
	add esp, 0x5fc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Netchan_Transmit_20:
	lea eax, [esi+0x44]
	mov [ebp-0x5d0], eax
	mov [esp], eax
	call NetProf_PrepProfiling
	mov dword [esp+0x8], 0x578
	lea eax, [ebp-0x5c4]
	mov [esp+0x4], eax
	lea edi, [ebp-0x4c]
	mov [esp], edi
	call MSG_Init
	mov eax, [esi]
	mov [esp+0x4], eax
	mov [esp], edi
	call MSG_WriteLong
	add dword [esi], 0x1
	mov eax, [esi+0x4]
	test eax, eax
	jle Netchan_Transmit_30
Netchan_Transmit_150:
	mov eax, [packetDebug]
	cmp byte [eax+0xc], 0x0
	jnz Netchan_Transmit_40
	mov [esp+0x8], ebx
	mov eax, [ebp+0x10]
	mov [esp+0x4], eax
	mov [esp], edi
	call MSG_WriteData
	mov eax, [packetDebug]
	cmp byte [eax+0xc], 0x0
	jnz Netchan_Transmit_50
Netchan_Transmit_120:
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
	call NET_SendPacket
	movzx eax, al
	mov [ebp-0x5cc], eax
	mov edi, [ebp-0x38]
	mov eax, [net_iProfilingOn]
	test eax, eax
	jnz Netchan_Transmit_60
Netchan_Transmit_110:
	mov eax, [showpackets]
	mov eax, [eax+0xc]
	test eax, eax
	jnz Netchan_Transmit_70
Netchan_Transmit_140:
	xor eax, eax
	cmp dword [ebp-0x5cc], 0x0
	setg al
Netchan_Transmit_90:
	add esp, 0x5fc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Netchan_Transmit_70:
	sub eax, 0x1
	jle Netchan_Transmit_80
Netchan_Transmit_130:
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
	call Com_Printf
	xor eax, eax
	cmp dword [ebp-0x5cc], 0x0
	setg al
	jmp Netchan_Transmit_90
Netchan_Transmit_10:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_netchan_transmit
	mov dword [esp], 0x2
	call Com_Error
	jmp Netchan_Transmit_100
Netchan_Transmit_60:
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
	call Sys_Milliseconds
	mov [ebx], eax
	mov [ebx+0x4], edi
	mov dword [ebx+0x8], 0x0
	mov eax, [net_showprofile]
	test byte [eax+0xc], 0x2
	jz Netchan_Transmit_110
	mov [esp+0x10], edi
	mov dword [esp+0xc], _cstring_null
	mov eax, [esi+0x4]
	mov eax, [eax*4+netsrcString]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_s_sends_i
	mov dword [esp], 0x10
	call Com_Printf
	jmp Netchan_Transmit_110
Netchan_Transmit_40:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_adding_i_byte_pa
	mov dword [esp], 0x10
	call Com_Printf
	mov [esp+0x8], ebx
	mov eax, [ebp+0x10]
	mov [esp+0x4], eax
	mov [esp], edi
	call MSG_WriteData
	mov eax, [packetDebug]
	cmp byte [eax+0xc], 0x0
	jz Netchan_Transmit_120
Netchan_Transmit_50:
	mov eax, [ebp-0x38]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_sending_i_byte_p
	mov dword [esp], 0x10
	call Com_Printf
	jmp Netchan_Transmit_120
Netchan_Transmit_80:
	cmp dword [esi+0x10], 0x2
	jnz Netchan_Transmit_130
	jmp Netchan_Transmit_140
Netchan_Transmit_30:
	mov eax, [esi+0x1c]
	mov [esp+0x4], eax
	mov [esp], edi
	call MSG_WriteShort
	jmp Netchan_Transmit_150
	nop


;NET_GetLoopPacket(netsrc_t, netadr_t*, msg_t*)
NET_GetLoopPacket:
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
	jle NET_GetLoopPacket_10
	mov eax, [edi+0x5804]
	sub eax, 0x10
	mov [edi+0x5800], eax
NET_GetLoopPacket_10:
	mov edx, [edi+0x5800]
	mov eax, [edi+0x5804]
	cmp edx, eax
	jl NET_GetLoopPacket_20
	xor eax, eax
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
NET_GetLoopPacket_20:
	mov esi, [edi+0x5800]
	and esi, 0xf
	lea eax, [edi+0x5800]
	mov [esp], eax
	call InterlockedIncrement
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
NET_OutOfBandData:
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
	jle NET_OutOfBandData_10
	xor edx, edx
	mov ecx, tempNetchanPacketBuf
NET_OutOfBandData_20:
	movzx eax, byte [esi+edx]
	mov [ecx+0x4], al
	add edx, 0x1
	add ecx, 0x1
	cmp ebx, edx
	jnz NET_OutOfBandData_20
NET_OutOfBandData_10:
	lea esi, [ebx+0x4]
	mov eax, [showpackets]
	mov eax, [eax+0xc]
	test eax, eax
	jz NET_OutOfBandData_30
	sub eax, 0x1
	jle NET_OutOfBandData_40
NET_OutOfBandData_60:
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
	call Com_DPrintf
NET_OutOfBandData_30:
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
	call NET_SendPacket
	movzx ebx, al
	cmp dword [ebp+0x8], 0x1
	jz NET_OutOfBandData_50
	mov [esp+0x4], esi
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CL_Netchan_AddOOBProfilePacket
	xor eax, eax
	test ebx, ebx
	setg al
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
NET_OutOfBandData_50:
	mov [esp], esi
	call SV_Netchan_AddOOBProfilePacket
	xor eax, eax
	test ebx, ebx
	setg al
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
NET_OutOfBandData_40:
	cmp edi, 0x2
	jnz NET_OutOfBandData_60
	jmp NET_OutOfBandData_30
	add [eax], al


;NetProf_AddPacket(netProfileStream_t*, int, int)
NetProf_AddPacket:
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
	call Sys_Milliseconds
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
NET_CompareBaseAdr:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov edx, [ebp+0x8]
	mov eax, [ebp+0x14]
	cmp edx, eax
	jz NET_CompareBaseAdr_10
NET_CompareBaseAdr_60:
	sub edx, eax
	mov [ebp-0x2c], edx
NET_CompareBaseAdr_50:
	xor eax, eax
	cmp dword [ebp-0x2c], 0x0
	setz al
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
NET_CompareBaseAdr_10:
	cmp edx, 0x2
	jz NET_CompareBaseAdr_20
	test edx, edx
	jz NET_CompareBaseAdr_30
	cmp edx, 0x4
	jz NET_CompareBaseAdr_40
	mov dword [esp+0x4], _cstring_net_comparebasea
	mov dword [esp], 0x10
	call Com_Printf
	mov dword [ebp-0x2c], 0x0
	jmp NET_CompareBaseAdr_50
NET_CompareBaseAdr_30:
	movzx edx, word [ebp+0x10]
	movzx eax, word [ebp+0x1c]
	jmp NET_CompareBaseAdr_60
NET_CompareBaseAdr_20:
	movzx eax, word [ebp+0x10]
	mov [ebp-0x2c], eax
	movzx eax, word [ebp+0x1c]
	sub [ebp-0x2c], eax
	jmp NET_CompareBaseAdr_50
NET_CompareBaseAdr_40:
	mov ebx, 0x4
	cld
	lea esi, [ebp+0xc]
	lea edi, [ebp+0x18]
	mov ecx, ebx
	repe cmpsb
	mov eax, 0x0
	jz NET_CompareBaseAdr_70
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
NET_CompareBaseAdr_70:
	mov [ebp-0x2c], eax
	jmp NET_CompareBaseAdr_50


;NET_IsLocalAddress(netadr_t)
NET_IsLocalAddress:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	cmp eax, 0x2
	jz NET_IsLocalAddress_10
	test eax, eax
	jnz NET_IsLocalAddress_20
NET_IsLocalAddress_10:
	mov eax, 0x1
	pop ebp
	ret
NET_IsLocalAddress_20:
	xor eax, eax
	pop ebp
	ret


;NET_OutOfBandPrint(netsrc_t, netadr_t, char const*)
NET_OutOfBandPrint:
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
	jz NET_OutOfBandPrint_10
	sub eax, 0x1
	jle NET_OutOfBandPrint_20
NET_OutOfBandPrint_70:
	mov dword [esp+0x8], _cstring_unknown
	mov dword [esp+0x4], 0x40
	mov dword [esp], _ZZ15NET_AdrToString8netadr_tE1s
	call Com_sprintf
	cmp dword [ebp-0x34], 0x2
	jz NET_OutOfBandPrint_30
	cmp dword [ebp-0x34], 0x4
	jz NET_OutOfBandPrint_40
NET_OutOfBandPrint_90:
	mov [esp+0xc], ebx
	mov dword [esp+0x8], _ZZ15NET_AdrToString8netadr_tE1s
	mov dword [esp+0x4], _cstring_oob_prints_s
	mov dword [esp], 0x10
	call Com_DPrintf
NET_OutOfBandPrint_10:
	xor esi, esi
	cld
	mov ecx, 0xffffffff
	mov edi, ebx
	mov eax, esi
	repne scasb
	not ecx
	lea eax, [ecx-0x1]
	cmp ecx, 0x1fffc
	jbe NET_OutOfBandPrint_50
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_oob_packet_is_i_
	mov dword [esp], 0x10
	call Com_DPrintf
	xor eax, eax
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
NET_OutOfBandPrint_50:
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
	call NET_SendPacket
	movzx ebx, al
	cmp dword [ebp+0x8], 0x1
	jz NET_OutOfBandPrint_60
	mov [esp+0x4], edi
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CL_Netchan_AddOOBProfilePacket
NET_OutOfBandPrint_80:
	xor eax, eax
	test ebx, ebx
	setg al
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
NET_OutOfBandPrint_20:
	cmp dword [ebp-0x34], 0x2
	jnz NET_OutOfBandPrint_70
	jmp NET_OutOfBandPrint_10
NET_OutOfBandPrint_60:
	mov [esp], edi
	call SV_Netchan_AddOOBProfilePacket
	jmp NET_OutOfBandPrint_80
NET_OutOfBandPrint_30:
	mov dword [esp+0x8], _cstring_loopback
	mov dword [esp+0x4], 0x40
	mov dword [esp], _ZZ15NET_AdrToString8netadr_tE1s
	call Com_sprintf
	jmp NET_OutOfBandPrint_90
NET_OutOfBandPrint_40:
	movsx eax, word [ebp-0x2a]
	mov [esp], eax
	call BigShort
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
	call Com_sprintf
	jmp NET_OutOfBandPrint_90
	add [eax], al


;Net_DisplayProfile(int)
Net_DisplayProfile:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov edx, [net_profile]
	mov eax, [edx+0xc]
	test eax, eax
	jnz Net_DisplayProfile_10
	mov eax, com_sv_running
	mov eax, [eax]
	cmp byte [eax+0xc], 0x1
	sbb eax, eax
	not eax
	add eax, 0x2
	mov [esp+0x4], eax
	mov [esp], edx
	call Cvar_SetInt
Net_DisplayProfile_10:
	mov eax, [net_iProfilingOn]
	test eax, eax
	jz Net_DisplayProfile_20
	sub eax, 0x1
	jz Net_DisplayProfile_30
	mov dword [ebp+0x8], 0x0
	add esp, 0x14
	pop ebx
	pop ebp
	jmp SV_Netchan_PrintProfileStats
Net_DisplayProfile_30:
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call CL_Netchan_PrintProfileStats
Net_DisplayProfile_20:
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;NET_GetClientPacket(netadr_t*, msg_t*)
NET_GetClientPacket:
	push ebp
	mov ebp, esp
	pop ebp
	jmp Sys_GetPacket
	nop


;NET_GetServerPacket(netadr_t*, msg_t*)
NET_GetServerPacket:
	push ebp
	mov ebp, esp
	pop ebp
	jmp Sys_GetPacket
	nop


;NET_CompareAdrSigned(netadr_t*, netadr_t*)
NET_CompareAdrSigned:
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
	jz NET_CompareAdrSigned_10
	sub eax, edx
	mov [ebp-0x2c], eax
NET_CompareAdrSigned_60:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
NET_CompareAdrSigned_10:
	cmp eax, 0x2
	jz NET_CompareAdrSigned_20
	cmp eax, 0x4
	jz NET_CompareAdrSigned_30
	mov dword [esp+0x4], _cstring_net_compareadrsi
	mov dword [esp], 0x10
	call Com_Printf
NET_CompareAdrSigned_20:
	mov dword [ebp-0x2c], 0x0
	mov eax, [ebp-0x2c]
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
NET_CompareAdrSigned_30:
	movzx edx, word [ecx+0x8]
	movzx eax, word [edi+0x8]
	cmp dx, ax
	jz NET_CompareAdrSigned_40
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
NET_CompareAdrSigned_40:
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
	jz NET_CompareAdrSigned_50
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
NET_CompareAdrSigned_50:
	mov [ebp-0x2c], eax
	jmp NET_CompareAdrSigned_60
	nop


;NetProf_PrepProfiling(netProfileInfo_t*)
NetProf_PrepProfiling:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [net_profile]
	mov ecx, [eax+0xc]
	test ecx, ecx
	jz NetProf_PrepProfiling_10
	mov edx, [net_iProfilingOn]
	test edx, edx
	jnz NetProf_PrepProfiling_20
	mov eax, com_sv_running
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz NetProf_PrepProfiling_30
NetProf_PrepProfiling_60:
	mov dword [net_iProfilingOn], 0x1
NetProf_PrepProfiling_70:
	mov eax, [net_iProfilingOn]
	mov eax, [eax*4+g_qport]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_net_profiling_tu
NetProf_PrepProfiling_40:
	mov dword [esp], 0x10
	call Com_Printf
	mov dword [esp+0x8], 0x5e0
	mov dword [esp+0x4], 0x0
	mov eax, [ebp+0x8]
	mov [esp], eax
	call memset
NetProf_PrepProfiling_20:
	leave
	ret
NetProf_PrepProfiling_10:
	mov eax, [net_iProfilingOn]
	test eax, eax
	jz NetProf_PrepProfiling_20
	mov dword [net_iProfilingOn], 0x0
	mov dword [esp+0x4], _cstring_net_profiling_tu1
	jmp NetProf_PrepProfiling_40
NetProf_PrepProfiling_30:
	call CL_AnyLocalClientsRunning
	test al, al
	jz NetProf_PrepProfiling_50
	mov eax, [net_profile]
	cmp dword [eax+0xc], 0x2
	jz NetProf_PrepProfiling_60
NetProf_PrepProfiling_50:
	mov dword [net_iProfilingOn], 0x2
	jmp NetProf_PrepProfiling_70
	nop


;NET_OutOfBandVoiceData(netsrc_t, netadr_t, unsigned char*, int)
NET_OutOfBandVoiceData:
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
	call NET_SendPacket
	movzx esi, al
	cmp dword [ebp+0x8], 0x1
	jz NET_OutOfBandVoiceData_10
	mov [esp+0x4], ebx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CL_Netchan_AddOOBProfilePacket
	xor eax, eax
	test esi, esi
	setg al
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
NET_OutOfBandVoiceData_10:
	mov [esp], ebx
	call SV_Netchan_AddOOBProfilePacket
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
Netchan_TransmitNextFragment:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5ec
	mov esi, [ebp+0x8]
	lea edi, [esi+0x44]
	mov [esp], edi
	call NetProf_PrepProfiling
	mov dword [esp+0x8], 0x578
	lea eax, [ebp-0x5c4]
	mov [esp+0x4], eax
	lea ebx, [ebp-0x4c]
	mov [esp], ebx
	call MSG_Init
	mov eax, [esi]
	or eax, 0x80000000
	mov [esp+0x4], eax
	mov [esp], ebx
	call MSG_WriteLong
	mov eax, [esi+0x4]
	test eax, eax
	jle Netchan_TransmitNextFragment_10
Netchan_TransmitNextFragment_110:
	mov edx, [esi+0x34]
	mov ecx, [esi+0x38]
	lea eax, [edx+0x514]
	cmp eax, ecx
	jg Netchan_TransmitNextFragment_20
	mov dword [ebp-0x5d4], 0x514
Netchan_TransmitNextFragment_70:
	mov [esp+0x4], edx
	mov [esp], ebx
	call MSG_WriteLong
	mov eax, [ebp-0x5d4]
	mov [esp+0x4], eax
	mov [esp], ebx
	call MSG_WriteShort
	mov eax, [ebp-0x5d4]
	mov [esp+0x8], eax
	mov eax, [esi+0x3c]
	add eax, [esi+0x34]
	mov [esp+0x4], eax
	mov [esp], ebx
	call MSG_WriteData
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
	call NET_SendPacket
	movzx eax, al
	mov [ebp-0x5d0], eax
	mov eax, [ebp-0x38]
	mov [ebp-0x5cc], eax
	mov eax, [net_iProfilingOn]
	test eax, eax
	jnz Netchan_TransmitNextFragment_30
Netchan_TransmitNextFragment_90:
	mov eax, [showpackets]
	mov eax, [eax+0xc]
	test eax, eax
	jz Netchan_TransmitNextFragment_40
	sub eax, 0x1
	jle Netchan_TransmitNextFragment_50
Netchan_TransmitNextFragment_100:
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
	call Com_Printf
Netchan_TransmitNextFragment_40:
	mov eax, [ebp-0x5d4]
	add eax, [esi+0x34]
	mov [esi+0x34], eax
	cmp eax, [esi+0x38]
	jz Netchan_TransmitNextFragment_60
Netchan_TransmitNextFragment_80:
	xor eax, eax
	cmp dword [ebp-0x5d0], 0x0
	setg al
	add esp, 0x5ec
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Netchan_TransmitNextFragment_20:
	sub ecx, edx
	mov [ebp-0x5d4], ecx
	jmp Netchan_TransmitNextFragment_70
Netchan_TransmitNextFragment_60:
	cmp dword [ebp-0x5d4], 0x514
	jz Netchan_TransmitNextFragment_80
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
Netchan_TransmitNextFragment_30:
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
	call Sys_Milliseconds
	mov [ebx], eax
	mov eax, [ebp-0x5cc]
	mov [ebx+0x4], eax
	mov dword [ebx+0x8], 0x1
	mov eax, [net_showprofile]
	test byte [eax+0xc], 0x2
	jz Netchan_TransmitNextFragment_90
	mov eax, [ebp-0x5cc]
	mov [esp+0x10], eax
	mov dword [esp+0xc], _cstring__fragment
	mov eax, [esi+0x4]
	mov eax, [eax*4+netsrcString]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_s_sends_i
	mov dword [esp], 0x10
	call Com_Printf
	jmp Netchan_TransmitNextFragment_90
Netchan_TransmitNextFragment_50:
	cmp dword [esi+0x10], 0x2
	jnz Netchan_TransmitNextFragment_100
	jmp Netchan_TransmitNextFragment_40
Netchan_TransmitNextFragment_10:
	mov eax, [esi+0x1c]
	mov [esp+0x4], eax
	mov [esp], ebx
	call MSG_WriteShort
	jmp Netchan_TransmitNextFragment_110


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

