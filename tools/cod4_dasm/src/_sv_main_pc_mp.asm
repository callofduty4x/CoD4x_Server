;Imports of sv_main_pc_mp:
	extern Com_sprintf
	extern svs
	extern NET_OutOfBandPrint
	extern Com_Printf
	extern NET_StringToAdr
	extern BigShort
	extern Sys_Milliseconds
	extern sv_cmd_args
	extern rcon_password
	extern NET_AdrToString
	extern Com_BeginRedirect
	extern Com_EndRedirect
	extern SV_Cmd_ExecuteString
	extern Q_stricmpn
	extern PbServerForceProcess
	extern strcmp
	extern Com_AddToString
	extern com_dedicated
	extern va
	extern SVC_GameCompleteStatus

;Exports of sv_main_pc_mp:
	global _ZZ16SV_MasterAddressvE3adr
	global _ZZ17SVC_RemoteCommand8netadr_tP5msg_tE8lasttime
	global SV_MatchEnd
	global SV_FlushRedirect
	global SV_MasterAddress
	global SVC_RemoteCommand
	global SV_MasterShutdown
	global SV_MasterHeartbeat
	global SV_MasterGameCompleteStatus


SECTION .text


;SV_MatchEnd()
SV_MatchEnd:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop


;SV_FlushRedirect(char*)
SV_FlushRedirect:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x57c
	mov edx, [ebp+0x8]
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, edx
	repne scasb
	not ecx
	lea esi, [ecx-0x1]
	cmp esi, 0x50e
	jg SV_FlushRedirect_10
SV_FlushRedirect_30:
	mov [esp+0xc], edx
	mov dword [esp+0x8], _cstring_prints
	mov dword [esp+0x4], 0x514
	lea ebx, [ebp-0x544]
	mov [esp], ebx
	call Com_sprintf
	mov eax, svs
	mov ecx, [eax+svs+0x9778638]
	mov [ebp-0x24], ecx
	mov edx, [eax+svs+0x977863c]
	mov [ebp-0x20], edx
	mov eax, [eax+svs+0x9778640]
	mov [ebp-0x1c], eax
	mov [esp+0x10], ebx
	mov [esp+0x4], ecx
	mov [esp+0x8], edx
	mov [esp+0xc], eax
	mov dword [esp], 0x1
	call NET_OutOfBandPrint
	add esp, 0x57c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SV_FlushRedirect_10:
	mov edi, edx
SV_FlushRedirect_20:
	lea eax, [edi+0x50e]
	mov [ebp-0x54c], eax
	movzx ebx, byte [edi+0x50e]
	mov [ebp-0x559], bl
	mov byte [edi+0x50e], 0x0
	mov [esp+0xc], edi
	mov dword [esp+0x8], _cstring_prints
	mov dword [esp+0x4], 0x514
	lea eax, [ebp-0x544]
	mov [esp], eax
	call Com_sprintf
	mov ebx, svs
	mov ecx, [ebx+svs+0x9778638]
	mov [ebp-0x30], ecx
	mov edx, [ebx+svs+0x977863c]
	mov [ebp-0x2c], edx
	mov eax, [ebx+svs+0x9778640]
	mov [ebp-0x28], eax
	lea ebx, [ebp-0x544]
	mov [esp+0x10], ebx
	mov [esp+0x4], ecx
	mov [esp+0x8], edx
	mov [esp+0xc], eax
	mov dword [esp], 0x1
	call NET_OutOfBandPrint
	sub esi, 0x50e
	movzx eax, byte [ebp-0x559]
	mov [edi+0x50e], al
	mov edi, [ebp-0x54c]
	cmp esi, 0x50e
	jg SV_FlushRedirect_20
	mov edx, edi
	jmp SV_FlushRedirect_30


;SV_MasterAddress()
SV_MasterAddress:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	mov eax, [_ZZ16SV_MasterAddressvE3adr]
	test eax, eax
	jz SV_MasterAddress_10
	mov eax, _ZZ16SV_MasterAddressvE3adr
	leave
	ret
SV_MasterAddress_10:
	mov dword [esp+0x8], _cstring_cod4masteractivi
	mov dword [esp+0x4], _cstring_resolving_s
	mov dword [esp], 0xf
	call Com_Printf
	mov dword [esp+0x4], _ZZ16SV_MasterAddressvE3adr
	mov dword [esp], _cstring_cod4masteractivi
	call NET_StringToAdr
	test eax, eax
	jnz SV_MasterAddress_20
	mov dword [esp+0x8], _cstring_cod4masteractivi
	mov dword [esp+0x4], _cstring_couldnt_resolve_
	mov dword [esp], 0xf
	call Com_Printf
	mov eax, _ZZ16SV_MasterAddressvE3adr
	leave
	ret
SV_MasterAddress_20:
	mov dword [esp], 0x514a
	call BigShort
	mov [_ZZ16SV_MasterAddressvE3adr+0x8], ax
	cwde
	mov [esp], eax
	call BigShort
	cwde
	mov [esp+0x1c], eax
	movzx eax, byte [_ZZ16SV_MasterAddressvE3adr+0x7]
	mov [esp+0x18], eax
	movzx eax, byte [_ZZ16SV_MasterAddressvE3adr+0x6]
	mov [esp+0x14], eax
	movzx eax, byte [_ZZ16SV_MasterAddressvE3adr+0x5]
	mov [esp+0x10], eax
	movzx eax, byte [_ZZ16SV_MasterAddressvE3adr+0x4]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_cod4masteractivi
	mov dword [esp+0x4], _cstring_s_resolved_to_ii
	mov dword [esp], 0xf
	call Com_Printf
	mov eax, _ZZ16SV_MasterAddressvE3adr
	leave
	ret


;SVC_RemoteCommand(netadr_t, msg_t*)
SVC_RemoteCommand:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xc4c
	movzx eax, word [ebp+0x10]
	mov [ebp-0xc2a], ax
	movzx edx, byte [ebp+0xf]
	mov [ebp-0xc2b], dl
	movzx ecx, byte [ebp+0xe]
	mov [ebp-0xc2c], cl
	movzx eax, byte [ebp+0xd]
	mov [ebp-0xc2d], al
	movzx edx, byte [ebp+0xc]
	mov [ebp-0xc2e], dl
	mov edi, [ebp+0x8]
	call Sys_Milliseconds
	mov edx, eax
	mov eax, [_ZZ17SVC_RemoteCommand8netadr_tP5msg_tE8lasttime]
	test eax, eax
	jz SVC_RemoteCommand_10
	mov ecx, edx
	sub ecx, eax
	cmp ecx, 0x1f3
	jle SVC_RemoteCommand_20
SVC_RemoteCommand_10:
	mov [_ZZ17SVC_RemoteCommand8netadr_tP5msg_tE8lasttime], edx
	mov eax, sv_cmd_args
	mov esi, [eax]
	mov ebx, [eax+esi*4+0x44]
	cmp ebx, 0x1
	jle SVC_RemoteCommand_30
	mov eax, [eax+esi*4+0x64]
	mov eax, [eax+0x4]
	mov [ebp-0xc34], eax
SVC_RemoteCommand_150:
	mov eax, rcon_password
	mov eax, [eax]
	mov eax, [eax+0xc]
	cmp byte [eax], 0x0
	jnz SVC_RemoteCommand_40
SVC_RemoteCommand_120:
	cmp ebx, 0x2
	jg SVC_RemoteCommand_50
	mov ebx, _cstring_null
SVC_RemoteCommand_90:
	movzx ecx, word [ebp-0xc2a]
	mov [ebp-0x28], cx
	movzx eax, byte [ebp-0xc2b]
	mov [ebp-0x29], al
	movzx edx, byte [ebp-0xc2c]
	mov [ebp-0x2a], dl
	movzx ecx, byte [ebp-0xc2d]
	mov [ebp-0x2b], cl
	movzx eax, byte [ebp-0xc2e]
	mov [ebp-0x2c], al
	mov [ebp-0x30], edi
	mov [esp], edi
	mov eax, [ebp-0x2c]
	mov [esp+0x4], eax
	mov eax, [ebp-0x28]
	mov [esp+0x8], eax
	call NET_AdrToString
	mov [esp+0xc], ebx
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_bad_rcon_from_ss
	mov dword [esp], 0xf
	call Com_Printf
	xor ebx, ebx
SVC_RemoteCommand_140:
	mov eax, svs
	movzx edx, word [ebp-0xc2a]
	mov [eax+svs+0x9778640], dx
	movzx ecx, byte [ebp-0xc2b]
	mov [eax+svs+0x977863f], cl
	movzx edx, byte [ebp-0xc2c]
	mov [eax+svs+0x977863e], dl
	movzx ecx, byte [ebp-0xc2d]
	mov [eax+svs+0x977863d], cl
	movzx edx, byte [ebp-0xc2e]
	mov [eax+svs+0x977863c], dl
	mov [eax+svs+0x9778638], edi
	mov dword [esp+0x8], SV_FlushRedirect
	mov dword [esp+0x4], 0x7f0
	lea eax, [ebp-0xc20]
	mov [esp], eax
	call Com_BeginRedirect
	mov eax, rcon_password
	mov eax, [eax]
	mov eax, [eax+0xc]
	cmp byte [eax], 0x0
	jz SVC_RemoteCommand_60
	test ebx, ebx
	jnz SVC_RemoteCommand_70
	mov ecx, [ebp-0xc34]
	cmp byte [ecx], 0x0
	jnz SVC_RemoteCommand_80
	mov dword [esp+0x4], _cstring_you_must_log_in_
	mov dword [esp], 0xf
	call Com_Printf
SVC_RemoteCommand_110:
	call Com_EndRedirect
SVC_RemoteCommand_20:
	add esp, 0xc4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SVC_RemoteCommand_50:
	mov edx, sv_cmd_args
	mov eax, [edx+esi*4+0x64]
	mov ebx, [eax+0x8]
	jmp SVC_RemoteCommand_90
SVC_RemoteCommand_70:
	mov eax, sv_cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x2
	jg SVC_RemoteCommand_100
	xor eax, eax
	lea esi, [ebp-0x430]
SVC_RemoteCommand_170:
	mov byte [ebp+eax-0x430], 0x0
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x0
	mov dword [esp], 0x0
	call SV_Cmd_ExecuteString
	mov dword [esp+0x8], 0x6
	mov dword [esp+0x4], _cstring_pb_sv_
	mov [esp], esi
	call Q_stricmpn
	test eax, eax
	jnz SVC_RemoteCommand_110
	call PbServerForceProcess
	call Com_EndRedirect
	jmp SVC_RemoteCommand_20
SVC_RemoteCommand_60:
	mov dword [esp+0x4], _cstring_the_server_must_
	mov dword [esp], 0xf
	call Com_Printf
	call Com_EndRedirect
	jmp SVC_RemoteCommand_20
SVC_RemoteCommand_40:
	mov [esp+0x4], eax
	mov ecx, [ebp-0xc34]
	mov [esp], ecx
	call strcmp
	test eax, eax
	jnz SVC_RemoteCommand_120
	cmp ebx, 0x2
	jg SVC_RemoteCommand_130
	mov ebx, _cstring_null
SVC_RemoteCommand_180:
	movzx ecx, word [ebp-0xc2a]
	mov [ebp-0x1c], cx
	movzx eax, byte [ebp-0xc2b]
	mov [ebp-0x1d], al
	movzx edx, byte [ebp-0xc2c]
	mov [ebp-0x1e], dl
	movzx ecx, byte [ebp-0xc2d]
	mov [ebp-0x1f], cl
	movzx eax, byte [ebp-0xc2e]
	mov [ebp-0x20], al
	mov [ebp-0x24], edi
	mov [esp], edi
	mov eax, [ebp-0x20]
	mov [esp+0x4], eax
	mov eax, [ebp-0x1c]
	mov [esp+0x8], eax
	call NET_AdrToString
	mov [esp+0xc], ebx
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_rcon_from_ss
	mov dword [esp], 0xf
	call Com_Printf
	mov ebx, 0x1
	jmp SVC_RemoteCommand_140
SVC_RemoteCommand_80:
	mov dword [esp+0x4], _cstring_invalid_password
	mov dword [esp], 0xf
	call Com_Printf
	call Com_EndRedirect
	jmp SVC_RemoteCommand_20
SVC_RemoteCommand_30:
	mov dword [ebp-0xc34], _cstring_null
	jmp SVC_RemoteCommand_150
SVC_RemoteCommand_100:
	mov ebx, 0x2
	xor eax, eax
	lea esi, [ebp-0x430]
SVC_RemoteCommand_160:
	mov dword [esp+0x10], 0x1
	mov dword [esp+0xc], 0x400
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov ecx, sv_cmd_args
	mov eax, [ecx+edx*4+0x64]
	mov eax, [eax+ebx*4]
	mov [esp], eax
	call Com_AddToString
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x400
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov dword [esp], _cstring_space
	call Com_AddToString
	add ebx, 0x1
	mov ecx, sv_cmd_args
	mov edx, [ecx]
	cmp ebx, [ecx+edx*4+0x44]
	jl SVC_RemoteCommand_160
	cmp eax, 0x3ff
	jle SVC_RemoteCommand_170
	call Com_EndRedirect
	jmp SVC_RemoteCommand_20
SVC_RemoteCommand_130:
	mov edx, sv_cmd_args
	mov eax, [edx+esi*4+0x64]
	mov ebx, [eax+0x8]
	jmp SVC_RemoteCommand_180


;SV_MasterShutdown()
SV_MasterShutdown:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x30
	mov edx, svs
	mov dword [edx+svs+0x9766630], 0x80000000
	mov eax, com_dedicated
	mov eax, [eax]
	test eax, eax
	jz SV_MasterShutdown_10
	cmp dword [eax+0xc], 0x2
	jz SV_MasterShutdown_20
SV_MasterShutdown_10:
	add esp, 0x30
	pop ebx
	pop esi
	pop ebp
	ret
SV_MasterShutdown_20:
	mov eax, [edx+0x463804]
	add eax, 0x2bf20
	mov [edx+svs+0x9766630], eax
	call SV_MasterAddress
	mov esi, eax
	cmp dword [eax], 0x1
	jz SV_MasterShutdown_10
	mov dword [esp+0x8], _cstring_cod4masteractivi
	mov dword [esp+0x4], _cstring_sending_heartbea
	mov dword [esp], 0xf
	call Com_Printf
	mov dword [esp+0x4], _cstring_flatline
	mov dword [esp], _cstring_heartbeat_s
	call va
	mov ebx, [esi]
	mov [ebp-0x14], ebx
	mov ecx, [esi+0x4]
	mov [ebp-0x10], ecx
	mov edx, [esi+0x8]
	mov [ebp-0xc], edx
	mov [esp+0x10], eax
	mov [esp+0x4], ebx
	mov [esp+0x8], ecx
	mov [esp+0xc], edx
	mov dword [esp], 0x1
	call NET_OutOfBandPrint
	add esp, 0x30
	pop ebx
	pop esi
	pop ebp
	ret
	add [eax], al


;SV_MasterHeartbeat(char const*)
SV_MasterHeartbeat:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x30
	mov eax, com_dedicated
	mov eax, [eax]
	test eax, eax
	jz SV_MasterHeartbeat_10
	cmp dword [eax+0xc], 0x2
	jz SV_MasterHeartbeat_20
SV_MasterHeartbeat_10:
	add esp, 0x30
	pop ebx
	pop esi
	pop ebp
	ret
SV_MasterHeartbeat_20:
	mov edx, svs
	mov eax, [edx+0x463804]
	cmp eax, [edx+svs+0x9766630]
	jl SV_MasterHeartbeat_10
	add eax, 0x2bf20
	mov [edx+svs+0x9766630], eax
	call SV_MasterAddress
	mov esi, eax
	cmp dword [eax], 0x1
	jz SV_MasterHeartbeat_10
	mov dword [esp+0x8], _cstring_cod4masteractivi
	mov dword [esp+0x4], _cstring_sending_heartbea
	mov dword [esp], 0xf
	call Com_Printf
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_heartbeat_s
	call va
	mov ebx, [esi]
	mov [ebp-0x14], ebx
	mov ecx, [esi+0x4]
	mov [ebp-0x10], ecx
	mov edx, [esi+0x8]
	mov [ebp-0xc], edx
	mov [esp+0x10], eax
	mov [esp+0x4], ebx
	mov [esp+0x8], ecx
	mov [esp+0xc], edx
	mov dword [esp], 0x1
	call NET_OutOfBandPrint
	add esp, 0x30
	pop ebx
	pop esi
	pop ebp
	ret


;SV_MasterGameCompleteStatus()
SV_MasterGameCompleteStatus:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov eax, com_dedicated
	mov eax, [eax]
	test eax, eax
	jz SV_MasterGameCompleteStatus_10
	cmp dword [eax+0xc], 0x2
	jz SV_MasterGameCompleteStatus_20
SV_MasterGameCompleteStatus_10:
	add esp, 0x24
	pop ebx
	pop ebp
	ret
SV_MasterGameCompleteStatus_20:
	call SV_MasterAddress
	mov ebx, eax
	cmp dword [eax], 0x1
	jz SV_MasterGameCompleteStatus_10
	mov dword [esp+0x8], _cstring_cod4masteractivi
	mov dword [esp+0x4], _cstring_sending_gamecomp
	mov dword [esp], 0xf
	call Com_Printf
	mov ecx, [ebx]
	mov [ebp-0x14], ecx
	mov edx, [ebx+0x4]
	mov [ebp-0x10], edx
	mov eax, [ebx+0x8]
	mov [ebp-0xc], eax
	mov [esp], ecx
	mov [esp+0x4], edx
	mov [esp+0x8], eax
	call SVC_GameCompleteStatus
	add esp, 0x24
	pop ebx
	pop ebp
	ret
	nop


;Initialized global or static variables of sv_main_pc_mp:
SECTION .data


;Initialized constant data of sv_main_pc_mp:
SECTION .rdata


;Zero initialized global or static variables of sv_main_pc_mp:
SECTION .bss
_ZZ16SV_MasterAddressvE3adr: resb 0xc
_ZZ17SVC_RemoteCommand8netadr_tP5msg_tE8lasttime: resb 0x74


;All cstrings:
SECTION .rdata
_cstring_prints:		db "print",0ah,"%s",0
_cstring_cod4masteractivi:		db "cod4master.activision.com",0
_cstring_resolving_s:		db "Resolving %s",0ah,0
_cstring_couldnt_resolve_:		db "Couldn",27h,"t resolve address: %s",0ah,0
_cstring_s_resolved_to_ii:		db "%s resolved to %i.%i.%i.%i:%i",0ah,0
_cstring_null:		db 0
_cstring_bad_rcon_from_ss:		db "Bad rcon from %s:",0ah,"%s",0ah,0
_cstring_you_must_log_in_:		db "You must log in with ",27h,"rcon login <password>",27h," before using ",27h,"rcon",27h,".",0ah,0
_cstring_pb_sv_:		db "pb_sv_",0
_cstring_the_server_must_:		db "The server must set ",27h,"rcon_password",27h," for clients to use ",27h,"rcon",27h,".",0ah,0
_cstring_rcon_from_ss:		db "Rcon from %s:",0ah,"%s",0ah,0
_cstring_invalid_password:		db "Invalid password.",0ah,0
_cstring_space:		db " ",0
_cstring_sending_heartbea:		db "Sending heartbeat to %s",0ah,0
_cstring_flatline:		db "flatline",0
_cstring_heartbeat_s:		db "heartbeat %s",0ah,0
_cstring_sending_gamecomp:		db "Sending gameCompleteStatus to %s",0ah,0



;All constant floats and doubles:
SECTION .rdata

