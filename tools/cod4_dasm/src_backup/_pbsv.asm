;Imports of pbsv:
	extern dlclose
	extern __cxa_atexit
	extern _Z24Cmd_ExecuteSingleCommandiiPKc
	extern strncasecmp
	extern _Z13PbMsgToScreenPcS_
	extern _Z10Com_PrintfiPKcz
	extern _Z15Pb_Q_maxclientsv
	extern atoi
	extern _Z11Pb_Q_clientiP14Pb_Sv_Client_s
	extern _Z10Pb_Q_statsiPc
	extern _Z21Dvar_GetVariantStringPKc
	extern strncpy
	extern strcpy
	extern strcasecmp
	extern _Z17set_sv_punkbusterPc
	extern _Z13PB_DropClientiPc
	extern _Z10PBdvar_setPKcS0_
	extern _Z31CL_ControllerIndexFromClientNumi
	extern _Z15SV_SendPbPacketiPci
	extern _Z19Sys_PBSendUdpPacketPctiS_
	extern _Z19PbClientTrapConsolePci
	extern fopen
	extern fclose
	extern chmod
	extern remove
	extern rename
	extern dlopen
	extern dlsym
	extern getcwd
	extern strcat
	extern mkdir
	extern fseek
	extern ftell
	extern _Znam
	extern fread
	extern fwrite
	extern _ZdlPv

;Exports of pbsv:
	global _GLOBAL__I_pbsv
	global _Z10EnablePbSvv
	global _Z11DisablePbSvv
	global _Z11PbSvGameMsgPci
	global _Z12PbAuthClientPciS_
	global _Z12PbSvAddEventiiiPc
	global _Z13PbSvGameQueryiPc
	global _Z15PbSvGameCommandPcS_
	global _Z16PbSvSendToClientiPci
	global _Z18PbServerInitializev
	global _Z18PbSvSendToAddrPortPctiS_
	global _Z19PbPassConnectStringPcS_
	global _Z20PbServerForceProcessv
	global _Z21PbServerProcessEventsv
	global _Z22PbCaptureConsoleOutputPci
	global _Z23PbServerCompleteCommandPci
	global _ZN6stPbSv10AddPbEventEiiiPci
	global _ZN6stPbSv6makefnEPcS0_
	global g_ConsoleCaptureBuf
	global g_ConsoleCaptureBufLen
	global pbsv


SECTION .text


;global constructors keyed to pbsv
_GLOBAL__I_pbsv:
	push ebp
	mov ebp, esp
	mov edx, 0xffff
	mov eax, 0x1
	pop ebp
	jmp _Z41__static_initialization_and_destruction_0ii


;__tcf_0
__tcf_0:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [pbsv+0x4], 0x0
	mov dword [pbsv+0x150], 0x0
	mov dword [pbsv+0x14c], 0x0
	mov dword [pbsv+0x158], 0x0
	mov dword [pbsv+0x15c], 0x0
	mov dword [pbsv+0x160], 0x0
	mov eax, [pbsv+0x8]
	test eax, eax
	jz __tcf_0_10
	mov [esp], eax
	call dlclose
__tcf_0_10:
	mov dword [pbsv+0x8], 0x0
	mov eax, [pbsv+0xc]
	test eax, eax
	jz __tcf_0_20
	mov [esp], eax
	call dlclose
__tcf_0_20:
	mov dword [pbsv+0xc], 0x0
	mov dword [pbsv+0x164], 0x0
	mov eax, [pbsv+0x10]
	test eax, eax
	jz __tcf_0_30
	mov [esp], eax
	call dlclose
__tcf_0_30:
	mov dword [pbsv+0x10], 0x0
	leave
	ret
	nop


;__static_initialization_and_destruction_0(int, int)
_Z41__static_initialization_and_destruction_0ii:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	cmp edx, 0xffff
	jz _Z41__static_initialization_and_destruction_0ii_10
_Z41__static_initialization_and_destruction_0ii_20:
	leave
	ret
_Z41__static_initialization_and_destruction_0ii_10:
	sub eax, 0x1
	jnz _Z41__static_initialization_and_destruction_0ii_20
	mov dword [pbsv], 0x357afe32
	mov dword [pbsv+0x14], 0x6b6e7550
	mov dword [pbsv+0x18], 0x74737542
	mov dword [pbsv+0x1c], 0x53207265
	mov dword [pbsv+0x20], 0x65767265
	mov word [pbsv+0x24], 0x72
	mov dword [pbsv+0x8], 0x0
	mov dword [pbsv+0x138], 0x1
	mov dword [pbsv+0x13c], 0x0
	mov dword [pbsv+0x140], 0x0
	mov dword [pbsv+0x144], 0x0
	mov dword [pbsv+0x148], 0x0
	mov dword [pbsv+0x4], 0x0
	mov dword [pbsv+0x14c], 0x0
	mov dword [pbsv+0x150], 0x0
	mov dword [pbsv+0x154], 0x0
	mov dword [pbsv+0x158], 0x0
	mov dword [pbsv+0x15c], 0x0
	mov dword [pbsv+0x160], 0x0
	mov eax, [0xd5cc00c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov dword [esp], __tcf_0
	call __cxa_atexit
	leave
	ret
	nop


;EnablePbSv()
_Z10EnablePbSvv:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0xffffffff
	mov dword [esp+0x4], 0x75
	mov dword [esp], pbsv
	call _ZN6stPbSv10AddPbEventEiiiPci
	mov dword [esp+0x8], _cstring_pb_sv_guidrelax_
	mov dword [esp+0x4], 0x0
	mov dword [esp], 0x0
	call _Z24Cmd_ExecuteSingleCommandiiPKc
	leave
	ret


;DisablePbSv()
_Z11DisablePbSvv:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0xffffffff
	mov dword [esp+0x4], 0x76
	mov dword [esp], pbsv
	call _ZN6stPbSv10AddPbEventEiiiPci
	leave
	ret


;PbSvGameMsg(char*, int)
_Z11PbSvGameMsgPci:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov dword [esp+0x8], 0xc
	mov dword [esp+0x4], _cstring_skipnotify
	mov dword [esp], pbsv+0x14
	call strncasecmp
	test eax, eax
	jz _Z11PbSvGameMsgPci_10
	mov [esp+0x4], ebx
	mov dword [esp], pbsv+0x14
	call _Z13PbMsgToScreenPcS_
	xor eax, eax
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z11PbSvGameMsgPci_10:
	mov [esp+0xc], ebx
	mov dword [esp+0x8], pbsv+0x20
	mov dword [esp+0x4], _cstring_s_s
	mov dword [esp], 0x10
	call _Z10Com_PrintfiPKcz
	xor eax, eax
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;PbAuthClient(char*, int, char*)
_Z12PbAuthClientPciS_:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [pbsv+0x15c]
	test eax, eax
	jz _Z12PbAuthClientPciS__10
	mov edx, [ebp+0x10]
	mov [esp+0xc], edx
	mov edx, [ebp+0xc]
	mov [esp+0x8], edx
	mov edx, [ebp+0x8]
	mov [esp+0x4], edx
	mov dword [esp], pbsv
	call eax
_Z12PbAuthClientPciS__10:
	leave
	ret
	nop


;PbSvAddEvent(int, int, int, char*)
_Z12PbSvAddEventiiiPc:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	mov dword [esp+0x14], 0x0
	mov eax, [ebp+0x14]
	mov [esp+0x10], eax
	mov eax, [ebp+0x10]
	mov [esp+0xc], eax
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov dword [esp], pbsv
	call _ZN6stPbSv10AddPbEventEiiiPci
	leave
	ret
	add [eax], al


;PbSvGameQuery(int, char*)
_Z13PbSvGameQueryiPc:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov eax, [ebp+0x8]
	mov ebx, [ebp+0xc]
	mov byte [ebx+0xff], 0x0
	cmp eax, 0x66
	jz _Z13PbSvGameQueryiPc_10
	jle _Z13PbSvGameQueryiPc_20
	cmp eax, 0x67
	jz _Z13PbSvGameQueryiPc_30
	cmp eax, 0x72
	jz _Z13PbSvGameQueryiPc_40
_Z13PbSvGameQueryiPc_50:
	xor eax, eax
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z13PbSvGameQueryiPc_20:
	cmp eax, 0x65
	jnz _Z13PbSvGameQueryiPc_50
	call _Z15Pb_Q_maxclientsv
	mov [ebp-0x4c], eax
	test ebx, ebx
	jz _Z13PbSvGameQueryiPc_50
	mov word [ebx], 0x30
	cmp eax, 0x0
	jz _Z13PbSvGameQueryiPc_50
	mov ecx, eax
	mov byte [ebp-0x19], 0x0
	jl _Z13PbSvGameQueryiPc_60
_Z13PbSvGameQueryiPc_120:
	mov esi, 0x22
	mov edi, 0xcccccccd
	jmp _Z13PbSvGameQueryiPc_70
_Z13PbSvGameQueryiPc_90:
	add dl, 0x30
_Z13PbSvGameQueryiPc_100:
	mov [ebp+esi-0x3b], dl
	mov eax, ecx
	mul edi
	shr edx, 0x3
	mov ecx, edx
	test edx, edx
	jz _Z13PbSvGameQueryiPc_80
_Z13PbSvGameQueryiPc_70:
	mov eax, ecx
	mul edi
	shr edx, 0x3
	lea edx, [edx+edx*4]
	add edx, edx
	mov eax, ecx
	sub eax, edx
	mov edx, eax
	sub esi, 0x1
	cmp eax, 0x9
	jbe _Z13PbSvGameQueryiPc_90
	add dl, 0x57
	jmp _Z13PbSvGameQueryiPc_100
_Z13PbSvGameQueryiPc_10:
	mov [esp], ebx
	call atoi
	mov [esp+0x4], ebx
	mov [esp], eax
	call _Z11Pb_Q_clientiP14Pb_Sv_Client_s
	test eax, eax
	jnz _Z13PbSvGameQueryiPc_50
	mov eax, _cstring_pb_error_query_f
_Z13PbSvGameQueryiPc_110:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z13PbSvGameQueryiPc_40:
	mov [esp], ebx
	call atoi
	mov [esp+0x4], ebx
	mov [esp], eax
	call _Z10Pb_Q_statsiPc
	test eax, eax
	jnz _Z13PbSvGameQueryiPc_50
	mov eax, _cstring_pb_error_query_f
	jmp _Z13PbSvGameQueryiPc_110
_Z13PbSvGameQueryiPc_30:
	mov [esp], ebx
	call _Z21Dvar_GetVariantStringPKc
	mov dword [esp+0x8], 0xff
	mov [esp+0x4], eax
	mov [esp], ebx
	call strncpy
	jmp _Z13PbSvGameQueryiPc_50
_Z13PbSvGameQueryiPc_60:
	neg ecx
	jnz _Z13PbSvGameQueryiPc_120
	mov esi, 0x22
_Z13PbSvGameQueryiPc_80:
	mov eax, [ebp-0x4c]
	test eax, eax
	js _Z13PbSvGameQueryiPc_130
_Z13PbSvGameQueryiPc_140:
	lea eax, [ebp+esi-0x3b]
	mov [esp+0x4], eax
	mov [esp], ebx
	call strcpy
	jmp _Z13PbSvGameQueryiPc_50
_Z13PbSvGameQueryiPc_130:
	sub esi, 0x1
	mov byte [ebp+esi-0x3b], 0x2d
	jmp _Z13PbSvGameQueryiPc_140
	nop


;PbSvGameCommand(char*, char*)
_Z15PbSvGameCommandPcS_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov ebx, [ebp+0x8]
	mov edi, [ebp+0xc]
	mov dword [esp+0x4], _cstring_set_sv_punkbuste
	mov [esp], ebx
	call strcasecmp
	test eax, eax
	jnz _Z15PbSvGameCommandPcS__10
	mov [esp], edi
	call _Z17set_sv_punkbusterPc
_Z15PbSvGameCommandPcS__100:
	xor eax, eax
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z15PbSvGameCommandPcS__10:
	mov dword [esp+0x4], _cstring_concapbuflen
	mov [esp], ebx
	call strcasecmp
	test eax, eax
	jnz _Z15PbSvGameCommandPcS__20
	mov [g_ConsoleCaptureBufLen], edi
	xor eax, eax
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z15PbSvGameCommandPcS__20:
	mov dword [esp+0x4], _cstring_concapbuf
	mov [esp], ebx
	call strcasecmp
	test eax, eax
	jnz _Z15PbSvGameCommandPcS__30
	mov [g_ConsoleCaptureBuf], edi
	xor eax, eax
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z15PbSvGameCommandPcS__30:
	mov dword [esp+0x4], _cstring_cmd_exec
	mov [esp], ebx
	call strcasecmp
	test eax, eax
	jz _Z15PbSvGameCommandPcS__40
	cmp byte [edi], 0x20
	jz _Z15PbSvGameCommandPcS__50
	mov esi, edi
_Z15PbSvGameCommandPcS__180:
	movzx eax, byte [esi]
	test al, al
	jz _Z15PbSvGameCommandPcS__60
	cmp al, 0x20
	jz _Z15PbSvGameCommandPcS__70
_Z15PbSvGameCommandPcS__80:
	add esi, 0x1
	movzx eax, byte [esi]
	test al, al
	jz _Z15PbSvGameCommandPcS__60
	cmp al, 0x20
	jnz _Z15PbSvGameCommandPcS__80
_Z15PbSvGameCommandPcS__60:
	cmp byte [esi], 0x20
	jz _Z15PbSvGameCommandPcS__70
	mov [ebp-0x1c], esi
_Z15PbSvGameCommandPcS__160:
	mov dword [esp+0x4], _cstring_dropclient
	mov [esp], ebx
	call strcasecmp
	test eax, eax
	jnz _Z15PbSvGameCommandPcS__90
	mov [esp], edi
	call atoi
	mov edx, [ebp-0x1c]
	mov [esp+0x4], edx
	mov [esp], eax
	call _Z13PB_DropClientiPc
	jmp _Z15PbSvGameCommandPcS__100
_Z15PbSvGameCommandPcS__90:
	mov dword [esp+0x4], _cstring_cvar_set
	mov [esp], ebx
	call strcasecmp
	test eax, eax
	jz _Z15PbSvGameCommandPcS__110
	mov dword [esp+0x4], _cstring_dvar_set
	mov [esp], ebx
	call strcasecmp
	test eax, eax
	jnz _Z15PbSvGameCommandPcS__100
_Z15PbSvGameCommandPcS__110:
	movzx ebx, byte [esi]
	mov byte [esi], 0x0
	mov eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z10PBdvar_setPKcS0_
	mov [esi], bl
	jmp _Z15PbSvGameCommandPcS__100
_Z15PbSvGameCommandPcS__40:
	mov dword [esp+0x8], 0x3
	mov dword [esp+0x4], _cstring_pb_
	mov [esp], edi
	call strncasecmp
	mov ebx, eax
	mov dword [esp], 0x0
	call _Z31CL_ControllerIndexFromClientNumi
	mov [esp+0x8], edi
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call _Z24Cmd_ExecuteSingleCommandiiPKc
	test ebx, ebx
	jnz _Z15PbSvGameCommandPcS__100
	mov esi, [pbsv+0x13c]
	test esi, esi
	jz _Z15PbSvGameCommandPcS__100
	mov ebx, [pbsv+0x8]
	test ebx, ebx
	jz _Z15PbSvGameCommandPcS__120
	mov edx, [pbsv+0x138]
	test edx, edx
	jz _Z15PbSvGameCommandPcS__130
	mov dword [pbsv+0x4], 0x0
	mov dword [pbsv+0x150], 0x0
	mov dword [pbsv+0x14c], 0x0
	mov dword [pbsv+0x158], 0x0
	mov dword [pbsv+0x15c], 0x0
	mov dword [pbsv+0x160], 0x0
	mov eax, [pbsv+0x8]
	test eax, eax
	jz _Z15PbSvGameCommandPcS__140
	mov [esp], eax
	call dlclose
_Z15PbSvGameCommandPcS__140:
	mov dword [pbsv+0x8], 0x0
	jmp _Z15PbSvGameCommandPcS__100
_Z15PbSvGameCommandPcS__70:
	mov [ebp-0x1c], esi
_Z15PbSvGameCommandPcS__150:
	add dword [ebp-0x1c], 0x1
	mov eax, [ebp-0x1c]
	cmp byte [eax], 0x20
	jz _Z15PbSvGameCommandPcS__150
	jmp _Z15PbSvGameCommandPcS__160
_Z15PbSvGameCommandPcS__50:
	mov esi, edi
_Z15PbSvGameCommandPcS__170:
	add esi, 0x1
	cmp byte [esi], 0x20
	jz _Z15PbSvGameCommandPcS__170
	jmp _Z15PbSvGameCommandPcS__180
_Z15PbSvGameCommandPcS__130:
	mov dword [esp+0x4], 0xffffffff
	mov dword [esp], pbsv
	call dword [pbsv+0x150]
	jmp _Z15PbSvGameCommandPcS__100
_Z15PbSvGameCommandPcS__120:
	mov ecx, [pbsv+0x138]
	test ecx, ecx
	jz _Z15PbSvGameCommandPcS__100
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], _cstring_null
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0xffffffff
	mov dword [esp+0x4], 0x10
	mov dword [esp], pbsv
	call _ZN6stPbSv10AddPbEventEiiiPci
	jmp _Z15PbSvGameCommandPcS__100
	nop


;PbSvSendToClient(int, char*, int)
_Z16PbSvSendToClientiPci:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z15SV_SendPbPacketiPci
	xor eax, eax
	leave
	ret
	nop


;PbServerInitialize()
_Z18PbServerInitializev:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	mov dword [pbsv+0x13c], 0x2b416c
	mov dword [pbsv+0x140], 0x2b3c66
	mov dword [pbsv+0x144], 0x2b3dae
	mov dword [pbsv+0x148], 0x2b3e18
	mov dword [pbsv+0x154], 0x2b3e3c
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], _cstring_null
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0xffffffff
	mov dword [esp+0x4], 0x10
	mov dword [esp], pbsv
	call _ZN6stPbSv10AddPbEventEiiiPci
	mov eax, [pbsv+0x14c]
	test eax, eax
	jz _Z18PbServerInitializev_10
	mov eax, 0x1
	leave
	ret
_Z18PbServerInitializev_10:
	mov dword [esp], _cstring_0
	call _Z17set_sv_punkbusterPc
	xor eax, eax
	leave
	ret


;PbSvSendToAddrPort(char*, unsigned short, int, char*)
_Z18PbSvSendToAddrPortPctiS_:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	movzx edx, word [ebp+0xc]
	mov eax, [ebp+0x14]
	mov [esp+0xc], eax
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z19Sys_PBSendUdpPacketPctiS_
	xor eax, eax
	leave
	ret
	nop


;PbPassConnectString(char*, char*)
_Z19PbPassConnectStringPcS_:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [pbsv+0x158]
	test eax, eax
	jz _Z19PbPassConnectStringPcS__10
	mov edx, [ebp+0xc]
	mov [esp+0x8], edx
	mov edx, [ebp+0x8]
	mov [esp+0x4], edx
	mov dword [esp], pbsv
	call eax
_Z19PbPassConnectStringPcS__10:
	leave
	ret


;PbServerForceProcess()
_Z20PbServerForceProcessv:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	mov eax, [pbsv+0x13c]
	test eax, eax
	jz _Z20PbServerForceProcessv_10
	mov eax, [pbsv+0x8]
	test eax, eax
	jz _Z20PbServerForceProcessv_20
	mov eax, [pbsv+0x138]
	test eax, eax
	jz _Z20PbServerForceProcessv_30
	mov dword [pbsv+0x4], 0x0
	mov dword [pbsv+0x150], 0x0
	mov dword [pbsv+0x14c], 0x0
	mov dword [pbsv+0x158], 0x0
	mov dword [pbsv+0x15c], 0x0
	mov dword [pbsv+0x160], 0x0
	mov eax, [pbsv+0x8]
	test eax, eax
	jz _Z20PbServerForceProcessv_40
	mov [esp], eax
	call dlclose
_Z20PbServerForceProcessv_40:
	mov dword [pbsv+0x8], 0x0
_Z20PbServerForceProcessv_10:
	leave
	ret
_Z20PbServerForceProcessv_30:
	mov dword [esp+0x4], 0xffffffff
	mov dword [esp], pbsv
	call dword [pbsv+0x150]
	leave
	ret
_Z20PbServerForceProcessv_20:
	mov eax, [pbsv+0x138]
	test eax, eax
	jz _Z20PbServerForceProcessv_10
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], _cstring_null
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0xffffffff
	mov dword [esp+0x4], 0x10
	mov dword [esp], pbsv
	call _ZN6stPbSv10AddPbEventEiiiPci
	leave
	ret


;PbServerProcessEvents()
_Z21PbServerProcessEventsv:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	mov eax, [pbsv+0x13c]
	test eax, eax
	jz _Z21PbServerProcessEventsv_10
	mov eax, [pbsv+0x8]
	test eax, eax
	jz _Z21PbServerProcessEventsv_20
	mov eax, [pbsv+0x138]
	test eax, eax
	jz _Z21PbServerProcessEventsv_30
	mov dword [pbsv+0x4], 0x0
	mov dword [pbsv+0x150], 0x0
	mov dword [pbsv+0x14c], 0x0
	mov dword [pbsv+0x158], 0x0
	mov dword [pbsv+0x15c], 0x0
	mov dword [pbsv+0x160], 0x0
	mov eax, [pbsv+0x8]
	test eax, eax
	jz _Z21PbServerProcessEventsv_40
	mov [esp], eax
	call dlclose
_Z21PbServerProcessEventsv_40:
	mov dword [pbsv+0x8], 0x0
_Z21PbServerProcessEventsv_10:
	leave
	ret
_Z21PbServerProcessEventsv_30:
	mov dword [esp+0x4], 0x0
	mov dword [esp], pbsv
	call dword [pbsv+0x150]
	leave
	ret
_Z21PbServerProcessEventsv_20:
	mov eax, [pbsv+0x138]
	test eax, eax
	jz _Z21PbServerProcessEventsv_10
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], _cstring_null
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0xffffffff
	mov dword [esp+0x4], 0x10
	mov dword [esp], pbsv
	call _ZN6stPbSv10AddPbEventEiiiPci
	leave
	ret
	add [eax], al


;PbCaptureConsoleOutput(char*, int)
_Z22PbCaptureConsoleOutputPci:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	mov [esp+0x4], ebx
	mov [esp], esi
	call _Z19PbClientTrapConsolePci
	mov eax, [pbsv+0x160]
	test eax, eax
	jz _Z22PbCaptureConsoleOutputPci_10
	mov [esp+0x8], ebx
	mov [esp+0x4], esi
	mov dword [esp], pbsv
	call eax
_Z22PbCaptureConsoleOutputPci_10:
	mov ebx, [g_ConsoleCaptureBuf]
	test ebx, ebx
	jz _Z22PbCaptureConsoleOutputPci_20
	xor eax, eax
	cld
	mov ecx, 0xffffffff
	mov edi, ebx
	repne scasb
	not ecx
	lea edx, [ecx-0x1]
	mov ecx, 0xffffffff
	mov edi, esi
	repne scasb
	not ecx
	lea ecx, [ecx+edx-0x1]
	cmp ecx, [g_ConsoleCaptureBufLen]
	jl _Z22PbCaptureConsoleOutputPci_30
_Z22PbCaptureConsoleOutputPci_20:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z22PbCaptureConsoleOutputPci_30:
	mov [esp+0x4], esi
	lea eax, [ebx+edx]
	mov [esp], eax
	call strcpy
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;PbServerCompleteCommand(char*, int)
_Z23PbServerCompleteCommandPci:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	mov dword [esp+0x14], 0x0
	mov eax, [ebp+0x8]
	mov [esp+0x10], eax
	mov eax, [ebp+0xc]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0xffffffff
	mov dword [esp+0x4], 0x33
	mov dword [esp], pbsv
	call _ZN6stPbSv10AddPbEventEiiiPci
	leave
	ret


;stPbSv::AddPbEvent(int, int, int, char*, int)
_ZN6stPbSv10AddPbEventEiiiPci:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x42c
	mov edi, [ebp+0x8]
	mov eax, [edi+0x13c]
	test eax, eax
	jz _ZN6stPbSv10AddPbEventEiiiPci_10
	mov esi, [edi+0x138]
	test esi, esi
	jz _ZN6stPbSv10AddPbEventEiiiPci_20
	mov ecx, [edi+0x8]
	test ecx, ecx
	jnz _ZN6stPbSv10AddPbEventEiiiPci_30
_ZN6stPbSv10AddPbEventEiiiPci_90:
	mov dword [edi+0x4], 0x0
	mov dword [edi+0x150], 0x0
	mov dword [edi+0x14c], 0x0
	mov dword [edi+0x158], 0x0
	mov dword [edi+0x15c], 0x0
	mov dword [edi+0x160], 0x0
	mov eax, [edi+0x8]
	test eax, eax
	jz _ZN6stPbSv10AddPbEventEiiiPci_40
	mov [esp], eax
	call dlclose
_ZN6stPbSv10AddPbEventEiiiPci_40:
	mov dword [edi+0x8], 0x0
	mov dword [esp+0x8], _cstring_pbsvnewmac
	lea esi, [ebp-0x217]
	mov [esp+0x4], esi
	mov [esp], edi
	call _ZN6stPbSv6makefnEPcS0_
	mov dword [esp+0x4], _cstring_rb
	mov [esp], eax
	call fopen
	test eax, eax
	jz _ZN6stPbSv10AddPbEventEiiiPci_50
	mov [esp], eax
	call fclose
	mov dword [esp+0x8], _cstring_pbsvoldmac
	mov [esp+0x4], esi
	mov [esp], edi
	call _ZN6stPbSv6makefnEPcS0_
	mov dword [esp+0x4], 0x1ff
	mov [esp], eax
	call chmod
	mov dword [esp+0x8], _cstring_pbsvoldmac
	mov [esp+0x4], esi
	mov [esp], edi
	call _ZN6stPbSv6makefnEPcS0_
	mov [esp], eax
	call remove
	mov dword [esp+0x8], _cstring_pbsvoldmac
	lea eax, [ebp-0x416]
	mov [esp+0x4], eax
	mov [esp], edi
	call _ZN6stPbSv6makefnEPcS0_
	mov ebx, eax
	mov dword [esp+0x8], _cstring_pbsvmac
	mov [esp+0x4], esi
	mov [esp], edi
	call _ZN6stPbSv6makefnEPcS0_
	mov [esp+0x4], ebx
	mov [esp], eax
	call rename
	mov dword [esp+0x8], _cstring_pbsvmac
	mov [esp+0x4], esi
	mov [esp], edi
	call _ZN6stPbSv6makefnEPcS0_
	mov dword [esp+0x4], 0x1ff
	mov [esp], eax
	call chmod
	mov dword [esp+0x8], _cstring_pbsvmac
	mov [esp+0x4], esi
	mov [esp], edi
	call _ZN6stPbSv6makefnEPcS0_
	mov [esp], eax
	call remove
	mov dword [esp+0x8], _cstring_pbsvmac
	lea eax, [ebp-0x416]
	mov [esp+0x4], eax
	mov [esp], edi
	call _ZN6stPbSv6makefnEPcS0_
	mov ebx, eax
	mov dword [esp+0x8], _cstring_pbsvnewmac
	mov [esp+0x4], esi
	mov [esp], edi
	call _ZN6stPbSv6makefnEPcS0_
	mov [esp+0x4], ebx
	mov [esp], eax
	call rename
_ZN6stPbSv10AddPbEventEiiiPci_50:
	mov dword [esp+0x8], _cstring_pbsvmac
	mov [esp+0x4], esi
	mov [esp], edi
	call _ZN6stPbSv6makefnEPcS0_
	mov dword [esp+0x4], 0x1
	mov [esp], eax
	call dlopen
	mov [edi+0x8], eax
	test eax, eax
	jz _ZN6stPbSv10AddPbEventEiiiPci_60
	mov dword [esp+0x4], _cstring_sa
	mov [esp], eax
	call dlsym
	mov [edi+0x150], eax
	mov dword [esp+0x4], _cstring_sb
	mov eax, [edi+0x8]
	mov [esp], eax
	call dlsym
	mov [edi+0x14c], eax
	mov edx, [edi+0x150]
	test edx, edx
	jz _ZN6stPbSv10AddPbEventEiiiPci_70
	test eax, eax
	jz _ZN6stPbSv10AddPbEventEiiiPci_70
	mov dword [edi+0x138], 0x0
	jmp _ZN6stPbSv10AddPbEventEiiiPci_80
_ZN6stPbSv10AddPbEventEiiiPci_20:
	mov ebx, [edi+0x8]
	test ebx, ebx
	jz _ZN6stPbSv10AddPbEventEiiiPci_90
_ZN6stPbSv10AddPbEventEiiiPci_80:
	mov eax, [ebp+0x1c]
	mov [esp+0x14], eax
	mov eax, [ebp+0x18]
	mov [esp+0x10], eax
	mov eax, [ebp+0x14]
	mov [esp+0xc], eax
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], edi
	call dword [edi+0x14c]
	mov edx, eax
_ZN6stPbSv10AddPbEventEiiiPci_110:
	mov eax, edx
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN6stPbSv10AddPbEventEiiiPci_70:
	mov dword [edi+0x4], 0x0
	mov dword [edi+0x150], 0x0
	mov dword [edi+0x14c], 0x0
	mov dword [edi+0x158], 0x0
	mov dword [edi+0x15c], 0x0
	mov dword [edi+0x160], 0x0
	mov eax, [edi+0x8]
	test eax, eax
	jz _ZN6stPbSv10AddPbEventEiiiPci_100
	mov [esp], eax
	call dlclose
_ZN6stPbSv10AddPbEventEiiiPci_100:
	mov dword [edi+0x8], 0x0
	mov edx, _cstring_pb_error_server_
_ZN6stPbSv10AddPbEventEiiiPci_130:
	mov eax, [ebp+0xc]
	sub eax, 0x71
	cmp eax, 0x1
	ja _ZN6stPbSv10AddPbEventEiiiPci_110
_ZN6stPbSv10AddPbEventEiiiPci_10:
	xor edx, edx
	mov eax, edx
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN6stPbSv10AddPbEventEiiiPci_30:
	mov dword [edi+0x4], 0x0
	mov dword [edi+0x150], 0x0
	mov dword [edi+0x14c], 0x0
	mov dword [edi+0x158], 0x0
	mov dword [edi+0x15c], 0x0
	mov dword [edi+0x160], 0x0
	mov eax, [edi+0x8]
	jz _ZN6stPbSv10AddPbEventEiiiPci_120
	mov [esp], eax
	call dlclose
_ZN6stPbSv10AddPbEventEiiiPci_120:
	mov dword [edi+0x8], 0x0
	xor edx, edx
	mov eax, edx
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN6stPbSv10AddPbEventEiiiPci_60:
	mov edx, _cstring_pb_error_server_1
	jmp _ZN6stPbSv10AddPbEventEiiiPci_130


;stPbSv::makefn(char*, char*)
_ZN6stPbSv6makefnEPcS0_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x54c
	mov ebx, [ebp+0x8]
	cmp byte [ebx+0x34], 0x0
	jnz _ZN6stPbSv6makefnEPcS0__10
	mov eax, [ebx+0x140]
	test eax, eax
	jz _ZN6stPbSv6makefnEPcS0__20
	lea esi, [ebx+0x34]
	mov dword [ebx+0x34], 0x685f7366
	mov dword [esi+0x4], 0x70656d6f
	mov dword [esi+0x8], 0x687461
	mov [esp+0x4], esi
	mov dword [esp], 0x67
	call eax
	cmp byte [ebx+0x34], 0x0
	jnz _ZN6stPbSv6makefnEPcS0__30
	mov dword [esp+0x4], 0xfb
	mov [esp], esi
	call getcwd
	cmp byte [ebx+0x34], 0x0
	jnz _ZN6stPbSv6makefnEPcS0__30
_ZN6stPbSv6makefnEPcS0__80:
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, esi
	repne scasb
	not ecx
	mov dword [ecx+esi-0x1], 0x2f6270
	mov eax, [ebx+0x140]
	test eax, eax
	jz _ZN6stPbSv6makefnEPcS0__40
	mov dword [ebp-0x11c], 0x625f7366
	mov dword [ebp-0x118], 0x70657361
	mov dword [ebp-0x114], 0x687461
	lea edx, [ebp-0x11c]
	mov [esp+0x4], edx
	mov dword [esp], 0x67
	call eax
	jmp _ZN6stPbSv6makefnEPcS0__40
_ZN6stPbSv6makefnEPcS0__20:
	lea esi, [ebx+0x34]
_ZN6stPbSv6makefnEPcS0__40:
	cld
	mov ecx, 0xffffffff
	lea edi, [ebp-0x11c]
	xor eax, eax
	repne scasb
	not ecx
	cmp byte [ecx+ebp-0x11e], 0x2f
	jz _ZN6stPbSv6makefnEPcS0__50
	mov ecx, 0xffffffff
	lea edi, [ebp-0x11c]
	repne scasb
	not ecx
	mov word [ecx+ebp-0x11d], 0x2f
_ZN6stPbSv6makefnEPcS0__50:
	cld
	mov ecx, 0xffffffff
	lea edi, [ebp-0x11c]
	xor eax, eax
	repne scasb
	not ecx
	mov dword [ecx+ebp-0x11d], 0x2f6270
	mov [esp+0x4], esi
	lea edx, [ebp-0x11c]
	mov [esp], edx
	call strcasecmp
	test eax, eax
	jz _ZN6stPbSv6makefnEPcS0__60
	cmp byte [ebp-0x11c], 0x0
	jz _ZN6stPbSv6makefnEPcS0__60
	cmp byte [ebx+0x34], 0x0
	jnz _ZN6stPbSv6makefnEPcS0__70
_ZN6stPbSv6makefnEPcS0__60:
	mov [esp+0x4], esi
	mov edx, [ebp+0xc]
	mov [esp], edx
	call strcpy
	mov eax, [ebp+0x10]
	mov [esp+0x4], eax
	mov eax, [ebp+0xc]
	mov [esp], eax
	call strcat
	mov eax, [ebp+0xc]
	add esp, 0x54c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN6stPbSv6makefnEPcS0__30:
	mov edx, 0xffffffff
	xor eax, eax
	cld
	mov ecx, edx
	mov edi, esi
	repne scasb
	not ecx
	cmp byte [ecx+ebx+0x32], 0x2f
	jz _ZN6stPbSv6makefnEPcS0__80
	mov ecx, edx
	mov edi, esi
	repne scasb
	not ecx
	mov word [ecx+esi-0x1], 0x2f
	jmp _ZN6stPbSv6makefnEPcS0__80
_ZN6stPbSv6makefnEPcS0__10:
	lea esi, [ebx+0x34]
	jmp _ZN6stPbSv6makefnEPcS0__60
_ZN6stPbSv6makefnEPcS0__70:
	cld
	mov ecx, 0xffffffff
	mov edi, esi
	xor eax, eax
	repne scasb
	not ecx
	lea eax, [ecx-0x2]
	cmp byte [eax+ebx+0x34], 0x2f
	jz _ZN6stPbSv6makefnEPcS0__90
_ZN6stPbSv6makefnEPcS0__130:
	mov dword [esp+0x4], 0x1ff
	mov [esp], esi
	call mkdir
	cld
	mov ecx, 0xffffffff
	mov edi, esi
	xor eax, eax
	repne scasb
	not ecx
	mov word [ecx+esi-0x1], 0x2f
	mov [esp+0x4], esi
	lea ebx, [ebp-0x31b]
	mov [esp], ebx
	call strcpy
	cld
	mov ecx, 0xffffffff
	mov edi, ebx
	xor eax, eax
	repne scasb
	not ecx
	lea ecx, [ecx+ebx-0x1]
	mov dword [ecx], 0x76736270
	mov dword [ecx+0x4], 0x63616d2e
	mov byte [ecx+0x8], 0x0
	mov dword [esp+0x4], _cstring_rb
	mov [esp], ebx
	call fopen
	test eax, eax
	jz _ZN6stPbSv6makefnEPcS0__100
	mov [esp], eax
	call fclose
_ZN6stPbSv6makefnEPcS0__190:
	mov [esp+0x4], esi
	mov [esp], ebx
	call strcpy
	cld
	mov ecx, 0xffffffff
	mov edi, ebx
	xor eax, eax
	repne scasb
	not ecx
	lea ecx, [ecx+ebx-0x1]
	mov dword [ecx], 0x6c636270
	mov dword [ecx+0x4], 0x63616d2e
	mov byte [ecx+0x8], 0x0
	mov dword [esp+0x4], _cstring_rb
	mov [esp], ebx
	call fopen
	test eax, eax
	jz _ZN6stPbSv6makefnEPcS0__110
	mov [esp], eax
	call fclose
_ZN6stPbSv6makefnEPcS0__160:
	mov [esp+0x4], esi
	lea edx, [ebp-0x51a]
	mov [esp], edx
	call strcpy
	cld
	mov ecx, 0xffffffff
	lea edi, [ebp-0x51a]
	xor eax, eax
	repne scasb
	not ecx
	lea ecx, [ecx+ebp-0x51b]
	mov dword [ecx], 0x67616270
	mov dword [ecx+0x4], 0x63616d2e
	mov byte [ecx+0x8], 0x0
	mov dword [esp+0x4], _cstring_rb
	lea edx, [ebp-0x51a]
	mov [esp], edx
	call fopen
	test eax, eax
	jz _ZN6stPbSv6makefnEPcS0__120
	mov [esp], eax
	call fclose
	jmp _ZN6stPbSv6makefnEPcS0__60
_ZN6stPbSv6makefnEPcS0__90:
	mov byte [eax+ebx+0x34], 0x0
	jmp _ZN6stPbSv6makefnEPcS0__130
_ZN6stPbSv6makefnEPcS0__120:
	lea eax, [ebp-0x11c]
	mov [esp+0x4], eax
	mov [esp], ebx
	call strcpy
	cld
	mov ecx, 0xffffffff
	mov edi, ebx
	xor eax, eax
	repne scasb
	not ecx
	lea ecx, [ecx+ebx-0x1]
	mov dword [ecx], 0x67616270
	mov dword [ecx+0x4], 0x63616d2e
	mov byte [ecx+0x8], 0x0
	mov dword [esp+0x4], _cstring_rb
	mov [esp], ebx
	call fopen
	mov edi, eax
	test eax, eax
	jz _ZN6stPbSv6makefnEPcS0__60
	mov dword [esp+0x4], _cstring_wb
	lea edx, [ebp-0x51a]
	mov [esp], edx
	call fopen
	mov [ebp-0x52c], eax
	test eax, eax
	jz _ZN6stPbSv6makefnEPcS0__140
	mov dword [esp+0x8], 0x2
	mov dword [esp+0x4], 0x0
	mov [esp], edi
	call fseek
	mov [esp], edi
	call ftell
	mov ebx, eax
	test eax, eax
	jle _ZN6stPbSv6makefnEPcS0__150
	mov [esp], eax
	call _Znam
	mov [ebp-0x530], eax
	test eax, eax
	jz _ZN6stPbSv6makefnEPcS0__150
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov [esp], edi
	call fseek
	mov [esp+0xc], edi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x1
	mov eax, [ebp-0x530]
	mov [esp], eax
	call fread
	mov edx, [ebp-0x52c]
	mov [esp+0xc], edx
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1
	mov eax, [ebp-0x530]
	mov [esp], eax
	call fwrite
	mov edx, [ebp-0x530]
	mov [esp], edx
	call _ZdlPv
_ZN6stPbSv6makefnEPcS0__150:
	mov eax, [ebp-0x52c]
	mov [esp], eax
	call fclose
_ZN6stPbSv6makefnEPcS0__140:
	mov [esp], edi
	call fclose
	jmp _ZN6stPbSv6makefnEPcS0__60
_ZN6stPbSv6makefnEPcS0__110:
	lea edx, [ebp-0x11c]
	mov [esp+0x4], edx
	lea eax, [ebp-0x51a]
	mov [esp], eax
	call strcpy
	cld
	mov ecx, 0xffffffff
	lea edi, [ebp-0x51a]
	xor eax, eax
	repne scasb
	not ecx
	lea ecx, [ecx+ebp-0x51b]
	mov dword [ecx], 0x6c636270
	mov dword [ecx+0x4], 0x63616d2e
	mov byte [ecx+0x8], 0x0
	mov dword [esp+0x4], _cstring_rb
	lea edx, [ebp-0x51a]
	mov [esp], edx
	call fopen
	mov edi, eax
	test eax, eax
	jz _ZN6stPbSv6makefnEPcS0__160
	mov dword [esp+0x4], _cstring_wb
	mov [esp], ebx
	call fopen
	mov [ebp-0x538], eax
	test eax, eax
	jz _ZN6stPbSv6makefnEPcS0__170
	mov dword [esp+0x8], 0x2
	mov dword [esp+0x4], 0x0
	mov [esp], edi
	call fseek
	mov [esp], edi
	call ftell
	mov [ebp-0x534], eax
	test eax, eax
	jle _ZN6stPbSv6makefnEPcS0__180
	mov [esp], eax
	call _Znam
	mov [ebp-0x53c], eax
	test eax, eax
	jz _ZN6stPbSv6makefnEPcS0__180
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov [esp], edi
	call fseek
	mov [esp+0xc], edi
	mov eax, [ebp-0x534]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1
	mov edx, [ebp-0x53c]
	mov [esp], edx
	call fread
	mov edx, [ebp-0x538]
	mov [esp+0xc], edx
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1
	mov eax, [ebp-0x53c]
	mov [esp], eax
	call fwrite
	mov edx, [ebp-0x53c]
	mov [esp], edx
	call _ZdlPv
_ZN6stPbSv6makefnEPcS0__180:
	mov eax, [ebp-0x538]
	mov [esp], eax
	call fclose
_ZN6stPbSv6makefnEPcS0__170:
	mov [esp], edi
	call fclose
	jmp _ZN6stPbSv6makefnEPcS0__160
_ZN6stPbSv6makefnEPcS0__100:
	lea edx, [ebp-0x11c]
	mov [esp+0x4], edx
	lea eax, [ebp-0x51a]
	mov [esp], eax
	call strcpy
	cld
	mov ecx, 0xffffffff
	lea edi, [ebp-0x51a]
	xor eax, eax
	repne scasb
	not ecx
	lea ecx, [ecx+ebp-0x51b]
	mov dword [ecx], 0x76736270
	mov dword [ecx+0x4], 0x63616d2e
	mov byte [ecx+0x8], 0x0
	mov dword [esp+0x4], _cstring_rb
	lea edx, [ebp-0x51a]
	mov [esp], edx
	call fopen
	mov edi, eax
	test eax, eax
	jz _ZN6stPbSv6makefnEPcS0__190
	mov dword [esp+0x4], _cstring_wb
	mov [esp], ebx
	call fopen
	mov [ebp-0x544], eax
	test eax, eax
	jz _ZN6stPbSv6makefnEPcS0__200
	mov dword [esp+0x8], 0x2
	mov dword [esp+0x4], 0x0
	mov [esp], edi
	call fseek
	mov [esp], edi
	call ftell
	mov [ebp-0x540], eax
	test eax, eax
	jle _ZN6stPbSv6makefnEPcS0__210
	mov [esp], eax
	call _Znam
	mov [ebp-0x548], eax
	test eax, eax
	jz _ZN6stPbSv6makefnEPcS0__210
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov [esp], edi
	call fseek
	mov [esp+0xc], edi
	mov eax, [ebp-0x540]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1
	mov edx, [ebp-0x548]
	mov [esp], edx
	call fread
	mov edx, [ebp-0x544]
	mov [esp+0xc], edx
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1
	mov eax, [ebp-0x548]
	mov [esp], eax
	call fwrite
	mov edx, [ebp-0x548]
	mov [esp], edx
	call _ZdlPv
_ZN6stPbSv6makefnEPcS0__210:
	mov eax, [ebp-0x544]
	mov [esp], eax
	call fclose
_ZN6stPbSv6makefnEPcS0__200:
	mov [esp], edi
	call fclose
	jmp _ZN6stPbSv6makefnEPcS0__190


;Initialized global or static variables of pbsv:
SECTION .data
g_ConsoleCaptureBuf: dd 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
g_ConsoleCaptureBufLen: dd 0x0


;Initialized constant data of pbsv:
SECTION .rdata


;Zero initialized global or static variables of pbsv:
SECTION .bss
pbsv: resb 0x180


;All cstrings:
SECTION .rdata
_cstring_pb_sv_guidrelax_:		db "pb_sv_guidrelax 7",0
_cstring_skipnotify:		db "[skipnotify]",0
_cstring_s_s:		db "%s: %s",0ah,0
_cstring_pb_error_query_f:		db "PB Error: Query Failed",0
_cstring_set_sv_punkbuste:		db "set_sv_punkbuster",0
_cstring_concapbuflen:		db "ConCapBufLen",0
_cstring_concapbuf:		db "ConCapBuf",0
_cstring_cmd_exec:		db "Cmd_Exec",0
_cstring_dropclient:		db "DropClient",0
_cstring_cvar_set:		db "Cvar_Set",0
_cstring_dvar_set:		db "Dvar_Set",0
_cstring_pb_:		db "pb_",0
_cstring_null:		db 0
_cstring_0:		db "0",0
_cstring_pbsvnewmac:		db "pbsvnew.mac",0
_cstring_rb:		db "rb",0
_cstring_pbsvoldmac:		db "pbsvold.mac",0
_cstring_pbsvmac:		db "pbsv.mac",0
_cstring_sa:		db "sa",0
_cstring_sb:		db "sb",0
_cstring_pb_error_server_:		db "PB Error: Server DLL Get Procedure Failure",0
_cstring_pb_error_server_1:		db "PB Error: Server DLL Load Failure",0
_cstring_wb:		db "wb",0



;All constant floats and doubles:
SECTION .rdata

