;Imports of win_net:
	extern Cvar_RegisterBool
	extern Cvar_RegisterString
	extern Cvar_RegisterInt
	extern closesocket
	extern ioctlsocket
	extern setsockopt
	extern bind
	extern Com_Printf
	extern socket
	extern WSAGetLastError
	extern Cvar_SetInt
	extern ioctl
	extern strncmp
	extern strncpy
	extern __error
	extern strerror
	extern Com_PrintWarning
	extern Q_stricmp
	extern I_isdigit
	extern inet_addr
	extern getsockopt
	extern close
	extern gethostbyname
	extern connect
	extern send
	extern recv
	extern Com_PrintError
	extern memcpy
	extern recvfrom
	extern NET_AdrToString
	extern Com_Error
	extern sendto
	extern WSAStartup
	extern memset
	extern select

;Exports of win_net:
	global ip_socket
	global winsockInitialized
	global winsockdata
	global net_socksPassword
	global net_socksUsername
	global net_socksPort
	global net_socksServer
	global net_socksEnabled
	global net_noipx
	global net_noudp
	global networkingEnabled
	global socks_socket
	global socksRelayAddr
	global usingSocks
	global localIP
	global numIP
	global socksBuf
	global ipx_socket
	global NET_GetDvars
	global NET_Config
	global NET_OpenIP
	global Sys_ShowIP
	global NET_Restart
	global Sys_GetPacket
	global Sys_SendPacket
	global Sys_StringToAdr
	global Sys_IsLANAddress
	global Sys_PBSendUdpPacket
	global Sys_IsLANAddress_IgnoreSubnet
	global NET_Init
	global NET_Sleep


SECTION .text


;NET_GetDvars()
NET_GetDvars:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov eax, [net_noudp]
	test eax, eax
	jz NET_GetDvars_10
	cmp byte [eax+0xb], 0x0
	jnz NET_GetDvars_20
NET_GetDvars_10:
	xor ebx, ebx
NET_GetDvars_90:
	mov dword [esp+0xc], _cstring_disable_udp
	mov dword [esp+0x8], 0x21
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_net_noudp
	call Cvar_RegisterBool
	mov [net_noudp], eax
	mov eax, [net_noipx]
	test eax, eax
	jz NET_GetDvars_30
	cmp byte [eax+0xb], 0x0
	mov eax, 0x1
	cmovnz ebx, eax
NET_GetDvars_30:
	mov dword [esp+0xc], _cstring_disable_ipx
	mov dword [esp+0x8], 0x21
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_net_noipx
	call Cvar_RegisterBool
	mov [net_noipx], eax
	mov eax, [net_socksEnabled]
	test eax, eax
	jz NET_GetDvars_40
	cmp byte [eax+0xb], 0x0
	mov eax, 0x1
	cmovnz ebx, eax
NET_GetDvars_40:
	mov dword [esp+0xc], _cstring_enable_network_s
	mov dword [esp+0x8], 0x21
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_net_socksenabled
	call Cvar_RegisterBool
	mov [net_socksEnabled], eax
	mov eax, [net_socksServer]
	test eax, eax
	jz NET_GetDvars_50
	cmp byte [eax+0xb], 0x0
	mov eax, 0x1
	cmovnz ebx, eax
NET_GetDvars_50:
	mov dword [esp+0xc], _cstring_network_socket_s
	mov dword [esp+0x8], 0x21
	mov dword [esp+0x4], _cstring_null
	mov dword [esp], _cstring_net_socksserver
	call Cvar_RegisterString
	mov [net_socksServer], eax
	mov eax, [net_socksPort]
	test eax, eax
	jz NET_GetDvars_60
	cmp byte [eax+0xb], 0x0
	mov eax, 0x1
	cmovnz ebx, eax
NET_GetDvars_60:
	mov dword [esp+0x14], _cstring_network_socket_p
	mov dword [esp+0x10], 0x21
	mov dword [esp+0xc], 0xffff
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x438
	mov dword [esp], _cstring_net_socksport
	call Cvar_RegisterInt
	mov [net_socksPort], eax
	mov eax, [net_socksUsername]
	test eax, eax
	jz NET_GetDvars_70
	cmp byte [eax+0xb], 0x0
	mov eax, 0x1
	cmovnz ebx, eax
NET_GetDvars_70:
	mov dword [esp+0xc], _cstring_network_socket_u
	mov dword [esp+0x8], 0x21
	mov dword [esp+0x4], _cstring_null
	mov dword [esp], _cstring_net_socksusernam
	call Cvar_RegisterString
	mov [net_socksUsername], eax
	mov eax, [net_socksPassword]
	test eax, eax
	jz NET_GetDvars_80
	cmp byte [eax+0xb], 0x0
	mov eax, 0x1
	cmovnz ebx, eax
NET_GetDvars_80:
	mov dword [esp+0xc], _cstring_network_socket_p1
	mov dword [esp+0x8], 0x21
	mov dword [esp+0x4], _cstring_null
	mov dword [esp], _cstring_net_sockspasswor
	call Cvar_RegisterString
	mov [net_socksPassword], eax
	mov eax, ebx
	add esp, 0x24
	pop ebx
	pop ebp
	ret
NET_GetDvars_20:
	mov ebx, 0x1
	jmp NET_GetDvars_90
	nop


;NET_Config(int)
NET_Config:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0x8]
	call NET_GetDvars
	mov edx, eax
	mov eax, [net_noudp]
	cmp byte [eax+0xc], 0x0
	jz NET_Config_10
	mov eax, [net_noipx]
	cmp byte [eax+0xc], 0x0
	mov eax, 0x0
	cmovnz ebx, eax
NET_Config_10:
	cmp ebx, [networkingEnabled]
	jz NET_Config_20
	test ebx, ebx
	jz NET_Config_30
	xor eax, eax
	mov esi, 0x1
NET_Config_90:
	mov [networkingEnabled], ebx
	test eax, eax
	jz NET_Config_40
NET_Config_100:
	mov edx, [ip_socket]
	lea eax, [edx-0x1]
	cmp eax, 0xfffffffd
	jbe NET_Config_50
NET_Config_110:
	mov edx, [socks_socket]
	lea eax, [edx-0x1]
	cmp eax, 0xfffffffd
	jbe NET_Config_60
NET_Config_40:
	test esi, esi
	jz NET_Config_70
	mov eax, [net_noudp]
	cmp byte [eax+0xc], 0x0
	jz NET_Config_80
NET_Config_70:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
NET_Config_30:
	mov eax, 0x1
	xor esi, esi
	jmp NET_Config_90
NET_Config_80:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp NET_OpenIP
NET_Config_20:
	test edx, edx
	jz NET_Config_70
	test ebx, ebx
	jz NET_Config_70
	mov esi, 0x1
	jmp NET_Config_100
NET_Config_60:
	mov [esp], edx
	call closesocket
	mov dword [socks_socket], 0x0
	jmp NET_Config_40
NET_Config_50:
	mov [esp], edx
	call closesocket
	mov dword [ip_socket], 0x0
	jmp NET_Config_110


;NET_OpenIP()
NET_OpenIP:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2bc
	mov dword [esp+0xc], _cstring_network_ip_addre
	mov dword [esp+0x8], 0x20
	mov dword [esp+0x4], _cstring_localhost
	mov dword [esp], _cstring_net_ip
	call Cvar_RegisterString
	mov [ebp-0x290], eax
	mov dword [esp+0x14], _cstring_network_port
	mov dword [esp+0x10], 0x20
	mov dword [esp+0xc], 0xffff
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x7120
	mov dword [esp], _cstring_net_port
	call Cvar_RegisterInt
	mov [ebp-0x28c], eax
	mov dword [ebp-0x288], 0x0
	jmp NET_OpenIP_10
NET_OpenIP_130:
	lea eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x8004667e
	mov [esp], edi
	call ioctlsocket
	add eax, 0x1
	jz NET_OpenIP_20
	mov [ebp-0x294], edi
	mov dword [esp+0x10], 0x4
	lea ecx, [ebp-0x20]
	mov [esp+0xc], ecx
	mov dword [esp+0x8], 0x20
	mov dword [esp+0x4], 0xffff
	mov [esp], edi
	call setsockopt
	add eax, 0x1
	jz NET_OpenIP_30
	mov dword [ebp-0x20], 0x40000
	mov dword [esp+0x10], 0x4
	lea edx, [ebp-0x20]
	mov [esp+0xc], edx
	mov dword [esp+0x8], 0x1002
	mov dword [esp+0x4], 0xffff
	mov ecx, [ebp-0x294]
	mov [esp], ecx
	call setsockopt
	add eax, 0x1
	jz NET_OpenIP_40
NET_OpenIP_330:
	mov dword [ebp-0x20], 0x10000
	mov dword [esp+0x10], 0x4
	lea ecx, [ebp-0x20]
	mov [esp+0xc], ecx
	mov dword [esp+0x8], 0x1001
	mov dword [esp+0x4], 0xffff
	mov [esp], edi
	call setsockopt
	add eax, 0x1
	jz NET_OpenIP_50
NET_OpenIP_320:
	test ebx, ebx
	jz NET_OpenIP_60
	cmp byte [ebx], 0x0
	jnz NET_OpenIP_70
NET_OpenIP_60:
	mov dword [ebp-0x34], 0x0
NET_OpenIP_310:
	cmp esi, 0xffffffff
	jnz NET_OpenIP_80
	mov word [ebp-0x36], 0x0
	mov byte [ebp-0x37], 0x2
	mov dword [esp+0x8], 0x10
	lea eax, [ebp-0x38]
	mov [esp+0x4], eax
	mov [esp], edi
	call bind
	add eax, 0x1
	jz NET_OpenIP_90
NET_OpenIP_290:
	mov eax, edi
NET_OpenIP_270:
	mov [ip_socket], eax
	mov eax, [ebp-0x294]
	test eax, eax
	jnz NET_OpenIP_100
NET_OpenIP_150:
	add dword [ebp-0x288], 0x1
	cmp dword [ebp-0x288], 0xa
	jz NET_OpenIP_110
	mov eax, [ebp-0x28c]
NET_OpenIP_10:
	mov esi, [ebp-0x288]
	add esi, [eax+0xc]
	mov edx, [ebp-0x290]
	mov ebx, [edx+0xc]
	mov dword [ebp-0x1c], 0x1
	mov dword [ebp-0x20], 0x1
	test ebx, ebx
	jz NET_OpenIP_120
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_opening_ip_socke
	mov dword [esp], 0x10
	call Com_Printf
NET_OpenIP_280:
	mov dword [esp+0x8], 0x11
	mov dword [esp+0x4], 0x2
	mov dword [esp], 0x2
	call socket
	mov edi, eax
	cmp eax, 0xffffffff
	jnz NET_OpenIP_130
	call WSAGetLastError
	cmp eax, 0x273f
	jnz NET_OpenIP_140
	mov dword [ebp-0x294], 0x0
	xor ax, ax
	mov [ip_socket], eax
	mov eax, [ebp-0x294]
	test eax, eax
	jz NET_OpenIP_150
NET_OpenIP_100:
	mov eax, [ebp-0x288]
	mov edx, [ebp-0x28c]
	add eax, [edx+0xc]
	mov [esp+0x4], eax
	mov [esp], edx
	call Cvar_SetInt
	mov eax, [net_socksEnabled]
	cmp byte [eax+0xc], 0x0
	jnz NET_OpenIP_160
NET_OpenIP_390:
	mov dword [numIP], 0x0
	mov dword [ebp-0x38], 0x200
	lea eax, [ebp-0x278]
	mov [ebp-0x34], eax
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x2
	mov dword [esp], 0x2
	call socket
	mov [ebp-0x280], eax
	test eax, eax
	js NET_OpenIP_170
	mov edx, eax
	lea eax, [ebp-0x38]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0xc0086924
	mov [esp], edx
	call ioctl
	test eax, eax
	jnz NET_OpenIP_180
	mov esi, [ebp-0x34]
	mov [ebp-0x29c], esi
	mov edi, [ebp-0x38]
	lea eax, [esi+edi]
	cmp esi, eax
	jae NET_OpenIP_190
	jmp NET_OpenIP_200
NET_OpenIP_210:
	movzx eax, byte [esi+0x10]
	sub eax, 0x10
	mov edx, 0x0
	cmovs eax, edx
	lea esi, [eax+esi+0x20]
	mov eax, [ebp-0x29c]
	add eax, edi
	cmp esi, eax
	jae NET_OpenIP_190
NET_OpenIP_200:
	cmp byte [esi+0x11], 0x12
	jnz NET_OpenIP_210
	mov ebx, [ebp-0x29c]
	mov eax, ebx
	add eax, edi
	cmp ebx, eax
	jae NET_OpenIP_210
	jmp NET_OpenIP_220
NET_OpenIP_230:
	movzx eax, byte [ebx+0x10]
	sub eax, 0x10
	mov edx, 0x0
	cmovs eax, edx
	lea ebx, [eax+ebx+0x20]
	mov edx, [ebp-0x29c]
	lea eax, [edi+edx]
	cmp ebx, eax
	jae NET_OpenIP_210
NET_OpenIP_220:
	cmp byte [ebx+0x11], 0x2
	jnz NET_OpenIP_230
	mov dword [esp+0x8], 0x10
	mov [esp+0x4], esi
	mov [esp], ebx
	call strncmp
	test eax, eax
	jnz NET_OpenIP_230
	mov eax, esi
	mov edx, 0x10
NET_OpenIP_250:
	cmp byte [eax], 0x0
	jz NET_OpenIP_240
	add eax, 0x1
	sub edx, 0x1
	jnz NET_OpenIP_250
NET_OpenIP_240:
	cmp byte [esi+0x14], 0x18
	jz NET_OpenIP_230
	mov dword [esp+0x8], 0x10
	mov [esp+0x4], ebx
	lea ecx, [ebp-0x78]
	mov [esp], ecx
	call strncpy
	lea eax, [ebp-0x78]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0xc020690d
	mov edx, [ebp-0x280]
	mov [esp], edx
	call ioctl
	test eax, eax
	js NET_OpenIP_260
	mov eax, [ebp-0x64]
	bswap eax
	mov ecx, [numIP]
	mov edx, eax
	sar edx, 0x18
	mov [ecx*4+localIP], dl
	mov edx, eax
	sar edx, 0x10
	mov [ecx*4+localIP+0x1], dl
	mov edx, eax
	sar edx, 0x8
	mov [ecx*4+localIP+0x2], dl
	mov [ecx*4+localIP+0x3], al
	mov [esp+0x18], ebx
	movzx eax, al
	mov [esp+0x14], eax
	movzx eax, byte [ecx*4+localIP+0x2]
	mov [esp+0x10], eax
	movzx eax, byte [ecx*4+localIP+0x1]
	mov [esp+0xc], eax
	movzx eax, byte [ecx*4+localIP]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_ip_iiii_s
	mov dword [esp], 0x10
	call Com_Printf
	add dword [numIP], 0x1
	mov eax, [ebp-0x34]
	mov [ebp-0x29c], eax
	mov edi, [ebp-0x38]
	jmp NET_OpenIP_230
NET_OpenIP_20:
	call __error
	mov eax, [eax]
	mov [esp], eax
	call strerror
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_warning_udp_open
	mov dword [esp], 0x10
	call Com_PrintWarning
	mov dword [ebp-0x294], 0x0
	xor eax, eax
	jmp NET_OpenIP_270
NET_OpenIP_120:
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_opening_ip_socke1
	mov dword [esp], 0x10
	call Com_Printf
	jmp NET_OpenIP_280
NET_OpenIP_80:
	mov eax, esi
	rol ax, 0x8
	mov [ebp-0x36], ax
	mov byte [ebp-0x37], 0x2
	mov dword [esp+0x8], 0x10
	lea eax, [ebp-0x38]
	mov [esp+0x4], eax
	mov [esp], edi
	call bind
	add eax, 0x1
	jnz NET_OpenIP_290
NET_OpenIP_90:
	call __error
	mov eax, [eax]
	mov [esp], eax
	call strerror
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_warning_udp_open1
	mov dword [esp], 0x10
	call Com_PrintWarning
	mov [esp], edi
	call closesocket
	mov dword [ebp-0x294], 0x0
	xor eax, eax
	jmp NET_OpenIP_270
NET_OpenIP_140:
	call __error
	mov eax, [eax]
	mov [esp], eax
	call strerror
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_warning_udp_open2
	mov dword [esp], 0x10
	call Com_PrintWarning
	mov dword [ebp-0x294], 0x0
	xor eax, eax
	jmp NET_OpenIP_270
NET_OpenIP_30:
	call __error
	mov eax, [eax]
	mov [esp], eax
	call strerror
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_warning_udp_open3
	mov dword [esp], 0x10
	call Com_PrintWarning
	mov dword [ebp-0x294], 0x0
	xor eax, eax
	jmp NET_OpenIP_270
NET_OpenIP_110:
	mov dword [esp+0x4], _cstring_warning_couldnt_
	mov dword [esp], 0x10
	call Com_PrintWarning
NET_OpenIP_350:
	add esp, 0x2bc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
NET_OpenIP_70:
	mov dword [esp+0x4], _cstring_localhost
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jz NET_OpenIP_60
	mov dword [ebp-0x38], 0x0
	mov dword [ebp-0x34], 0x0
	mov dword [ebp-0x30], 0x0
	mov dword [ebp-0x2c], 0x0
	mov byte [ebp-0x37], 0x2
	mov word [ebp-0x36], 0x0
	movsx eax, byte [ebx]
	mov [esp], eax
	call I_isdigit
	test al, al
	jz NET_OpenIP_300
	mov [esp], ebx
	call inet_addr
	mov [ebp-0x34], eax
	jmp NET_OpenIP_310
NET_OpenIP_50:
	call __error
	mov eax, [eax]
	mov [esp], eax
	call strerror
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_warning_udp_open3
	mov dword [esp], 0x10
	call Com_PrintWarning
	jmp NET_OpenIP_320
NET_OpenIP_40:
	mov dword [ebp-0x28], 0x4
	lea eax, [ebp-0x24]
	lea edx, [ebp-0x28]
	mov [esp+0x10], edx
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x1002
	mov dword [esp+0x4], 0xffff
	mov eax, [ebp-0x294]
	mov [esp], eax
	call getsockopt
	test eax, eax
	jnz NET_OpenIP_330
NET_OpenIP_340:
	mov eax, [ebp-0x20]
	cmp eax, [ebp-0x24]
	jle NET_OpenIP_330
	sub eax, 0x2000
	mov [ebp-0x20], eax
	mov dword [esp+0x10], 0x4
	lea edx, [ebp-0x20]
	mov [esp+0xc], edx
	mov dword [esp+0x8], 0x1002
	mov dword [esp+0x4], 0xffff
	mov [esp], edi
	call setsockopt
	add eax, 0x1
	jz NET_OpenIP_340
	jmp NET_OpenIP_330
NET_OpenIP_180:
	call __error
	mov eax, [eax]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_net_getlocaladdr
	mov dword [esp], 0x10
	call Com_Printf
	jmp NET_OpenIP_350
NET_OpenIP_190:
	mov ecx, [ebp-0x280]
	mov [esp], ecx
	call close
	add esp, 0x2bc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
NET_OpenIP_160:
	mov eax, [ebp-0x288]
	mov ecx, [ebp-0x28c]
	add eax, [ecx+0xc]
	mov [ebp-0x284], eax
	mov dword [usingSocks], 0x0
	mov dword [esp+0x4], _cstring_opening_connecti
	mov dword [esp], 0x10
	call Com_Printf
	mov dword [esp+0x8], 0x6
	mov dword [esp+0x4], 0x1
	mov dword [esp], 0x2
	call socket
	mov [socks_socket], eax
	add eax, 0x1
	jz NET_OpenIP_360
	mov eax, [net_socksServer]
	mov eax, [eax+0xc]
	mov [esp], eax
	call gethostbyname
	test eax, eax
	jz NET_OpenIP_370
	cmp dword [eax+0x8], 0x2
	jz NET_OpenIP_380
	mov dword [esp+0x4], _cstring_warning_net_open
	mov dword [esp], 0x10
	call Com_PrintWarning
	jmp NET_OpenIP_390
NET_OpenIP_300:
	mov [esp], ebx
	call gethostbyname
	test eax, eax
	jz NET_OpenIP_310
	mov eax, [eax+0x10]
	mov eax, [eax]
	mov eax, [eax]
	mov [ebp-0x34], eax
	jmp NET_OpenIP_310
NET_OpenIP_170:
	call __error
	mov eax, [eax]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_net_getlocaladdr1
	mov dword [esp], 0x10
	call Com_Printf
	jmp NET_OpenIP_350
NET_OpenIP_380:
	mov byte [ebp-0x37], 0x2
	mov eax, [eax+0x10]
	mov eax, [eax]
	mov eax, [eax]
	mov [ebp-0x34], eax
	mov eax, [net_socksPort]
	movzx eax, word [eax+0xc]
	rol ax, 0x8
	mov [ebp-0x36], ax
	lea eax, [ebp-0x38]
	mov dword [esp+0x8], 0x10
	mov [esp+0x4], eax
	mov eax, [socks_socket]
	mov [esp], eax
	call connect
	add eax, 0x1
	jz NET_OpenIP_400
	mov eax, [net_socksUsername]
	mov eax, [eax+0xc]
	cmp byte [eax], 0x0
	jnz NET_OpenIP_410
	mov eax, [net_socksPassword]
	mov eax, [eax+0xc]
	cmp byte [eax], 0x0
	jnz NET_OpenIP_410
	xor eax, eax
NET_OpenIP_470:
	mov byte [ebp-0x78], 0x5
	test eax, eax
	jz NET_OpenIP_420
	mov byte [ebp-0x77], 0x2
	mov edx, 0x4
NET_OpenIP_480:
	neg al
	and al, 0x2
	mov [ebp-0x76], al
	mov dword [esp+0xc], 0x0
	mov [esp+0x8], edx
	lea edx, [ebp-0x78]
	mov [esp+0x4], edx
	mov eax, [socks_socket]
	mov [esp], eax
	call send
	add eax, 0x1
	jz NET_OpenIP_430
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x40
	lea ecx, [ebp-0x78]
	mov [esp+0x4], ecx
	mov eax, [socks_socket]
	mov [esp], eax
	call recv
	cmp eax, 0xffffffff
	jz NET_OpenIP_440
	cmp eax, 0x2
	jnz NET_OpenIP_450
	cmp byte [ebp-0x78], 0x5
	jz NET_OpenIP_460
NET_OpenIP_450:
	mov dword [esp+0x4], _cstring_net_opensocks_ba
	mov dword [esp], 0x10
	call Com_Printf
	jmp NET_OpenIP_390
NET_OpenIP_360:
	call WSAGetLastError
	call __error
	mov eax, [eax]
	mov [esp], eax
	call strerror
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_warning_net_open1
	mov dword [esp], 0x10
	call Com_PrintWarning
	jmp NET_OpenIP_390
NET_OpenIP_410:
	mov eax, 0x1
	jmp NET_OpenIP_470
NET_OpenIP_260:
	call __error
	mov eax, [eax]
	mov [esp+0xc], eax
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_net_getlocaladdr2
	mov dword [esp], 0x10
	call Com_Printf
	mov ecx, [ebp-0x34]
	mov [ebp-0x29c], ecx
	mov edi, [ebp-0x38]
	jmp NET_OpenIP_230
NET_OpenIP_420:
	mov byte [ebp-0x77], 0x1
	mov edx, 0x3
	jmp NET_OpenIP_480
NET_OpenIP_370:
	call WSAGetLastError
	call __error
	mov eax, [eax]
	mov [esp], eax
	call strerror
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_warning_net_open2
	mov dword [esp], 0x10
	call Com_PrintWarning
	jmp NET_OpenIP_390
NET_OpenIP_430:
	call WSAGetLastError
	call __error
	mov eax, [eax]
	mov [esp], eax
	call strerror
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_net_opensocks_se
	mov dword [esp], 0x10
	call Com_PrintError
	jmp NET_OpenIP_390
NET_OpenIP_400:
	call WSAGetLastError
	call __error
	mov eax, [eax]
	mov [esp], eax
	call strerror
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_net_opensocks_co
	mov dword [esp], 0x10
	call Com_PrintError
	jmp NET_OpenIP_390
NET_OpenIP_440:
	call WSAGetLastError
	call __error
	mov eax, [eax]
	mov [esp], eax
	call strerror
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_net_opensocks_re
	mov dword [esp], 0x10
	call Com_PrintError
	jmp NET_OpenIP_390
NET_OpenIP_460:
	movzx eax, byte [ebp-0x77]
	test al, al
	jz NET_OpenIP_490
	cmp al, 0x2
	jz NET_OpenIP_500
	mov dword [esp+0x4], _cstring_net_opensocks_re1
	mov dword [esp], 0x10
	call Com_Printf
	jmp NET_OpenIP_390
NET_OpenIP_490:
	mov byte [ebp-0x78], 0x5
	mov byte [ebp-0x77], 0x3
	mov byte [ebp-0x76], 0x0
	mov byte [ebp-0x75], 0x1
	mov dword [ebp-0x74], 0x0
	movzx eax, word [ebp-0x284]
	rol ax, 0x8
	mov [ebp-0x70], ax
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0xa
	lea edx, [ebp-0x78]
	mov [esp+0x4], edx
	mov eax, [socks_socket]
	mov [esp], eax
	call send
	add eax, 0x1
	jz NET_OpenIP_510
NET_OpenIP_560:
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x40
	lea ecx, [ebp-0x78]
	mov [esp+0x4], ecx
	mov eax, [socks_socket]
	mov [esp], eax
	call recv
	cmp eax, 0xffffffff
	jz NET_OpenIP_440
	sub eax, 0x1
	jle NET_OpenIP_450
	cmp byte [ebp-0x78], 0x5
	jnz NET_OpenIP_450
	movzx eax, byte [ebp-0x77]
	test al, al
	jnz NET_OpenIP_520
	movzx eax, byte [ebp-0x75]
	cmp al, 0x1
	jz NET_OpenIP_530
	movzx eax, al
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_net_opensocks_re2
	mov dword [esp], 0x10
	call Com_Printf
	jmp NET_OpenIP_390
NET_OpenIP_500:
	mov eax, [net_socksUsername]
	mov [ebp-0x27c], eax
	mov edi, [eax+0xc]
	xor edx, edx
	cld
	mov ecx, 0xffffffff
	mov eax, edx
	repne scasb
	not ecx
	mov [ebp-0x298], ecx
	mov esi, ecx
	sub esi, 0x1
	mov eax, [net_socksPassword]
	mov edi, [eax+0xc]
	mov ecx, 0xffffffff
	mov eax, edx
	repne scasb
	not ecx
	lea ebx, [ecx-0x1]
	mov byte [ebp-0x78], 0x1
	mov edx, esi
	mov [ebp-0x77], dl
	test esi, esi
	jz NET_OpenIP_540
	lea edx, [ebp-0x76]
	mov ecx, [ebp-0x27c]
	mov eax, [ecx+0xc]
	mov [esp+0x8], esi
	mov [esp+0x4], eax
	mov [esp], edx
	call memcpy
NET_OpenIP_540:
	mov [ebp+esi-0x76], bl
	test ebx, ebx
	jz NET_OpenIP_550
	mov edx, [ebp-0x298]
	lea eax, [edx+ebp-0x76]
	mov edx, [net_socksPassword]
	mov edx, [edx+0xc]
	mov [esp+0x8], ebx
	mov [esp+0x4], edx
	mov [esp], eax
	call memcpy
NET_OpenIP_550:
	mov dword [esp+0xc], 0x0
	lea eax, [esi+ebx+0x3]
	mov [esp+0x8], eax
	lea ecx, [ebp-0x78]
	mov [esp+0x4], ecx
	mov eax, [socks_socket]
	mov [esp], eax
	call send
	add eax, 0x1
	jz NET_OpenIP_430
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x40
	lea eax, [ebp-0x78]
	mov [esp+0x4], eax
	mov eax, [socks_socket]
	mov [esp], eax
	call recv
	cmp eax, 0xffffffff
	jz NET_OpenIP_440
	cmp eax, 0x2
	jnz NET_OpenIP_450
	cmp byte [ebp-0x78], 0x1
	jnz NET_OpenIP_450
	cmp byte [ebp-0x77], 0x0
	jz NET_OpenIP_490
	mov dword [esp+0x4], _cstring_net_opensocks_au
	mov dword [esp], 0x10
	call Com_Printf
	jmp NET_OpenIP_390
NET_OpenIP_530:
	mov byte [socksRelayAddr+0x1], 0x2
	mov eax, [ebp-0x74]
	mov [socksRelayAddr+0x4], eax
	movzx eax, word [ebp-0x70]
	mov [socksRelayAddr+0x2], ax
	mov dword [socksRelayAddr+0x8], 0x0
	mov dword [socksRelayAddr+0xc], 0x0
	mov dword [usingSocks], 0x1
	jmp NET_OpenIP_390
NET_OpenIP_520:
	movzx eax, al
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_net_opensocks_re3
	mov dword [esp], 0x10
	call Com_Printf
	jmp NET_OpenIP_390
NET_OpenIP_510:
	call WSAGetLastError
	call __error
	mov eax, [eax]
	mov [esp], eax
	call strerror
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_net_opensocks_se
	mov dword [esp], 0x10
	call Com_PrintError
	jmp NET_OpenIP_560


;Sys_ShowIP()
Sys_ShowIP:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x20
	mov eax, [numIP]
	test eax, eax
	jg Sys_ShowIP_10
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
Sys_ShowIP_10:
	xor esi, esi
	mov ebx, localIP+0x3
Sys_ShowIP_20:
	movzx eax, byte [ebx]
	mov [esp+0x14], eax
	movzx eax, byte [ebx-0x1]
	mov [esp+0x10], eax
	movzx eax, byte [ebx-0x2]
	mov [esp+0xc], eax
	movzx eax, byte [ebx-0x3]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_ip_iiii
	mov dword [esp], 0x10
	call Com_Printf
	add esi, 0x1
	add ebx, 0x4
	cmp [numIP], esi
	jg Sys_ShowIP_20
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;NET_Restart()
NET_Restart:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [networkingEnabled]
	mov [esp], eax
	call NET_Config
	leave
	ret
	nop
	add [eax], al


;Sys_GetPacket(netadr_t*, msg_t*)
Sys_GetPacket:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	xor ebx, ebx
Sys_GetPacket_30:
	mov esi, [ip_socket]
	test esi, esi
	jnz Sys_GetPacket_10
Sys_GetPacket_40:
	add ebx, 0x1
	cmp ebx, 0x1
	jg Sys_GetPacket_20
Sys_GetPacket_100:
	test ebx, ebx
	jz Sys_GetPacket_30
	mov esi, [ipx_socket]
	test esi, esi
	jz Sys_GetPacket_40
Sys_GetPacket_10:
	mov dword [ebp-0x1c], 0x10
	lea eax, [ebp-0x1c]
	mov [esp+0x14], eax
	lea eax, [ebp-0x38]
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x0
	mov edx, [ebp+0xc]
	mov eax, [edx+0x10]
	mov [esp+0x8], eax
	mov eax, [edx+0x8]
	mov [esp+0x4], eax
	mov [esp], esi
	call recvfrom
	mov [ebp-0x4c], eax
	add eax, 0x1
	jz Sys_GetPacket_50
	cmp esi, [ip_socket]
	jz Sys_GetPacket_60
Sys_GetPacket_140:
	mov ecx, [usingSocks]
	test ecx, ecx
	jnz Sys_GetPacket_70
Sys_GetPacket_110:
	cmp byte [ebp-0x37], 0x2
	jz Sys_GetPacket_80
Sys_GetPacket_150:
	mov eax, [ebp+0xc]
	mov dword [eax+0x1c], 0x0
Sys_GetPacket_130:
	mov esi, [ebp-0x4c]
	mov edx, [ebp+0xc]
	cmp esi, [edx+0x10]
	jnz Sys_GetPacket_90
	mov edi, [ebp+0x8]
	mov ecx, [edi]
	mov [ebp-0x28], ecx
	mov edx, [edi+0x4]
	mov [ebp-0x24], edx
	mov eax, [edi+0x8]
	mov [ebp-0x20], eax
	mov [esp], ecx
	mov [esp+0x4], edx
	mov [esp+0x8], eax
	call NET_AdrToString
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_oversize_packet_
	mov dword [esp], 0x10
	call Com_Printf
	add ebx, 0x1
	cmp ebx, 0x1
	jle Sys_GetPacket_100
Sys_GetPacket_20:
	xor eax, eax
Sys_GetPacket_160:
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Sys_GetPacket_70:
	cmp esi, [ip_socket]
	jnz Sys_GetPacket_110
	mov dword [ebp-0x3c], socksRelayAddr
	mov ecx, [ebp-0x1c]
	cld
	cmp ecx, ecx
	lea esi, [ebp-0x38]
	mov edi, socksRelayAddr
	repe cmpsb
	mov edx, 0x0
	jz Sys_GetPacket_120
	movzx edx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub edx, ecx
Sys_GetPacket_120:
	test edx, edx
	jnz Sys_GetPacket_110
	cmp dword [ebp-0x4c], 0x9
	jle Sys_GetPacket_40
	mov edx, [ebp+0xc]
	mov eax, [edx+0x8]
	cmp byte [eax], 0x0
	jnz Sys_GetPacket_40
	cmp byte [eax+0x1], 0x0
	jnz Sys_GetPacket_40
	cmp byte [eax+0x2], 0x0
	jnz Sys_GetPacket_40
	cmp byte [eax+0x3], 0x1
	jnz Sys_GetPacket_40
	mov esi, [ebp+0x8]
	mov dword [esi], 0x4
	mov eax, [edx+0x8]
	movzx eax, byte [eax+0x4]
	mov [esi+0x4], al
	mov eax, [edx+0x8]
	movzx eax, byte [eax+0x5]
	mov [esi+0x5], al
	mov eax, [edx+0x8]
	movzx eax, byte [eax+0x6]
	mov [esi+0x6], al
	mov eax, [edx+0x8]
	movzx eax, byte [eax+0x7]
	mov [esi+0x7], al
	mov eax, [edx+0x8]
	movzx eax, word [eax+0x8]
	mov [esi+0x8], ax
	mov dword [edx+0x1c], 0xa
	jmp Sys_GetPacket_130
Sys_GetPacket_60:
	mov dword [ebp-0x30], 0x0
	mov dword [ebp-0x2c], 0x0
	jmp Sys_GetPacket_140
Sys_GetPacket_80:
	mov edi, [ebp+0x8]
	mov dword [edi], 0x4
	mov eax, [ebp-0x34]
	mov [edi+0x4], eax
	movzx eax, word [ebp-0x36]
	mov [edi+0x8], ax
	jmp Sys_GetPacket_150
Sys_GetPacket_50:
	call WSAGetLastError
	cmp eax, 0x2733
	jz Sys_GetPacket_40
	cmp eax, 0x2746
	jz Sys_GetPacket_40
	call __error
	mov eax, [eax]
	mov [esp], eax
	call strerror
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_net_getpacket_s
	mov dword [esp], 0x10
	call Com_PrintError
	jmp Sys_GetPacket_40
Sys_GetPacket_90:
	mov eax, [ebp+0xc]
	mov [eax+0x14], esi
	mov eax, 0x1
	jmp Sys_GetPacket_160
	nop


;Sys_SendPacket(int, void const*, netadr_t)
Sys_SendPacket:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x34
	mov edx, [ebp+0x10]
	cmp edx, 0x3
	jz Sys_SendPacket_10
	cmp edx, 0x4
	jz Sys_SendPacket_10
	mov dword [esp+0x4], _cstring_sys_sendpacket_b
	mov dword [esp], 0x1
	call Com_Error
	mov eax, 0x1
	add esp, 0x34
	pop ebx
	pop ebp
	ret
Sys_SendPacket_10:
	mov ebx, [ip_socket]
	test ebx, ebx
	jnz Sys_SendPacket_20
Sys_SendPacket_70:
	mov eax, 0x1
Sys_SendPacket_90:
	add esp, 0x34
	pop ebx
	pop ebp
	ret
Sys_SendPacket_20:
	mov dword [ebp-0x18], 0x0
	mov dword [ebp-0x14], 0x0
	mov dword [ebp-0x10], 0x0
	mov dword [ebp-0xc], 0x0
	cmp edx, 0x3
	jz Sys_SendPacket_30
	cmp edx, 0x4
	jz Sys_SendPacket_40
Sys_SendPacket_100:
	mov eax, [usingSocks]
	test eax, eax
	jz Sys_SendPacket_50
	cmp edx, 0x4
	jz Sys_SendPacket_60
Sys_SendPacket_50:
	mov dword [esp+0x14], 0x10
	lea eax, [ebp-0x18]
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x0
	mov eax, [ebp+0x8]
	mov [esp+0x8], eax
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], ebx
	call sendto
Sys_SendPacket_120:
	add eax, 0x1
	jnz Sys_SendPacket_70
	call WSAGetLastError
	cmp eax, 0x2733
	jz Sys_SendPacket_70
	cmp eax, 0x2741
	jz Sys_SendPacket_80
Sys_SendPacket_110:
	call __error
	mov eax, [eax]
	mov [esp], eax
	call strerror
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_sys_sendpacket_s
	mov dword [esp], 0x10
	call Com_PrintError
	xor eax, eax
	jmp Sys_SendPacket_90
Sys_SendPacket_40:
	mov byte [ebp-0x17], 0x2
	mov eax, [ebp+0x14]
	mov [ebp-0x14], eax
	movzx eax, word [ebp+0x18]
	mov [ebp-0x16], ax
	jmp Sys_SendPacket_100
Sys_SendPacket_30:
	mov byte [ebp-0x17], 0x2
	movzx eax, word [ebp+0x18]
	mov [ebp-0x16], ax
	mov dword [ebp-0x14], 0xffffffff
	jmp Sys_SendPacket_100
Sys_SendPacket_80:
	cmp dword [ebp+0x10], 0x3
	jnz Sys_SendPacket_110
	jmp Sys_SendPacket_70
Sys_SendPacket_60:
	mov byte [socksBuf], 0x0
	mov byte [socksBuf+0x1], 0x0
	mov byte [socksBuf+0x2], 0x0
	mov byte [socksBuf+0x3], 0x1
	mov eax, [ebp-0x14]
	mov [socksBuf+0x4], eax
	movzx eax, word [ebp-0x16]
	mov [socksBuf+0x8], ax
	mov eax, [ebp+0x8]
	mov [esp+0x8], eax
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov dword [esp], socksBuf+0xa
	call memcpy
	mov dword [esp+0x14], 0x10
	mov dword [esp+0x10], socksRelayAddr
	mov dword [esp+0xc], 0x0
	mov eax, [ebp+0x8]
	add eax, 0xa
	mov [esp+0x8], eax
	mov dword [esp+0x4], socksBuf
	mov [esp], ebx
	call sendto
	jmp Sys_SendPacket_120


;Sys_StringToAdr(char const*, netadr_t*)
Sys_StringToAdr:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0xc]
	lea edi, [ebp-0x28]
	mov dword [ebp-0x28], 0x0
	mov dword [ebp-0x24], 0x0
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
	mov byte [ebp-0x27], 0x2
	mov word [ebp-0x26], 0x0
	movsx eax, byte [ebx]
	mov [esp], eax
	call I_isdigit
	test al, al
	jz Sys_StringToAdr_10
	mov [esp], ebx
	call inet_addr
	mov [ebp-0x24], eax
	cmp byte [ebp-0x27], 0x2
	jz Sys_StringToAdr_20
Sys_StringToAdr_40:
	mov eax, 0x1
Sys_StringToAdr_30:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Sys_StringToAdr_10:
	mov [esp], ebx
	call gethostbyname
	test eax, eax
	jz Sys_StringToAdr_30
	mov eax, [eax+0x10]
	mov eax, [eax]
	mov eax, [eax]
	mov [ebp-0x24], eax
	cmp byte [ebp-0x27], 0x2
	jnz Sys_StringToAdr_40
Sys_StringToAdr_20:
	mov dword [esi], 0x4
	mov eax, [edi+0x4]
	mov [esi+0x4], eax
	movzx eax, word [edi+0x2]
	mov [esi+0x8], ax
	mov eax, 0x1
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Sys_IsLANAddress(netadr_t)
Sys_IsLANAddress:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edx, [ebp+0x8]
	movzx edi, byte [ebp+0xe]
	movzx esi, byte [ebp+0xd]
	movzx ebx, byte [ebp+0xc]
	movzx eax, word [ebp+0x10]
	mov [ebp-0x14], ax
	movzx eax, byte [ebp+0xf]
	mov [ebp-0x15], al
	mov eax, edi
	mov [ebp-0x16], al
	mov ecx, esi
	mov [ebp-0x17], cl
	mov [ebp-0x18], bl
	mov [ebp-0x1c], edx
	mov [ebp-0x28], edx
	mov eax, [ebp-0x18]
	mov [ebp-0x24], eax
	mov eax, [ebp-0x14]
	mov [ebp-0x20], eax
	movzx eax, byte [ebp-0x23]
	movzx ecx, byte [ebp-0x24]
	cmp edx, 0x2
	jz Sys_IsLANAddress_10
	test edx, edx
	jnz Sys_IsLANAddress_20
Sys_IsLANAddress_10:
	mov eax, 0x1
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Sys_IsLANAddress_20:
	cmp edx, 0x4
	jz Sys_IsLANAddress_30
Sys_IsLANAddress_80:
	mov eax, [numIP]
	mov [ebp-0x34], eax
	test eax, eax
	jle Sys_IsLANAddress_40
	xor edx, edx
	mov eax, localIP
	jmp Sys_IsLANAddress_50
Sys_IsLANAddress_60:
	add edx, 0x1
	add eax, 0x4
	cmp edx, [ebp-0x34]
	jz Sys_IsLANAddress_40
Sys_IsLANAddress_50:
	cmp [eax], bl
	jnz Sys_IsLANAddress_60
	mov ecx, esi
	cmp [eax+0x1], cl
	jnz Sys_IsLANAddress_60
	mov ecx, edi
	cmp [eax+0x2], cl
	jnz Sys_IsLANAddress_60
	jmp Sys_IsLANAddress_10
Sys_IsLANAddress_40:
	xor eax, eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Sys_IsLANAddress_30:
	cmp cl, 0xa
	jz Sys_IsLANAddress_10
	cmp cl, 0x7f
	jz Sys_IsLANAddress_10
	mov dword [ebp-0x28], 0x4
	movzx edx, word [ebp-0x24]
	cmp dx, 0xfea9
	jz Sys_IsLANAddress_10
	cmp cl, 0xac
	jz Sys_IsLANAddress_70
Sys_IsLANAddress_90:
	cmp dx, 0xa8c0
	jnz Sys_IsLANAddress_80
	jmp Sys_IsLANAddress_10
Sys_IsLANAddress_70:
	and eax, 0xf0
	cmp eax, 0x10
	jnz Sys_IsLANAddress_90
	jmp Sys_IsLANAddress_10


;Sys_PBSendUdpPacket(char*, unsigned short, int, char*)
Sys_PBSendUdpPacket:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov esi, [ebp+0x8]
	movzx ebx, word [ebp+0xc]
	mov dword [ebp-0x30], 0x4
	lea edi, [ebp-0x40]
	mov dword [ebp-0x40], 0x0
	mov dword [ebp-0x3c], 0x0
	mov dword [ebp-0x38], 0x0
	mov dword [ebp-0x34], 0x0
	mov byte [ebp-0x3f], 0x2
	mov word [ebp-0x3e], 0x0
	movsx eax, byte [esi]
	mov [esp], eax
	call I_isdigit
	test al, al
	jz Sys_PBSendUdpPacket_10
	mov [esp], esi
	call inet_addr
	mov [ebp-0x3c], eax
	cmp byte [ebp-0x3f], 0x2
	jz Sys_PBSendUdpPacket_20
Sys_PBSendUdpPacket_40:
	rol bx, 0x8
	mov [ebp-0x28], bx
	mov ecx, [ebp-0x30]
	mov [ebp-0x24], ecx
	mov edx, [ebp-0x2c]
	mov [ebp-0x20], edx
	mov eax, [ebp-0x28]
	mov [ebp-0x1c], eax
	mov [esp+0x8], ecx
	mov [esp+0xc], edx
	mov [esp+0x10], eax
	mov eax, [ebp+0x14]
	mov [esp+0x4], eax
	mov eax, [ebp+0x10]
	mov [esp], eax
	call Sys_SendPacket
Sys_PBSendUdpPacket_30:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Sys_PBSendUdpPacket_10:
	mov [esp], esi
	call gethostbyname
	test eax, eax
	jz Sys_PBSendUdpPacket_30
	mov eax, [eax+0x10]
	mov eax, [eax]
	mov eax, [eax]
	mov [ebp-0x3c], eax
	cmp byte [ebp-0x3f], 0x2
	jnz Sys_PBSendUdpPacket_40
Sys_PBSendUdpPacket_20:
	mov dword [ebp-0x30], 0x4
	mov eax, [edi+0x4]
	mov [ebp-0x2c], eax
	movzx eax, word [edi+0x2]
	mov [ebp-0x28], ax
	jmp Sys_PBSendUdpPacket_40
	nop


;Sys_IsLANAddress_IgnoreSubnet(netadr_t)
Sys_IsLANAddress_IgnoreSubnet:
	push ebp
	mov ebp, esp
	movzx eax, byte [ebp+0xd]
	movzx ecx, byte [ebp+0xc]
	mov edx, [ebp+0x8]
	cmp edx, 0x2
	jz Sys_IsLANAddress_IgnoreSubnet_10
	test edx, edx
	jz Sys_IsLANAddress_IgnoreSubnet_10
	cmp edx, 0x4
	jz Sys_IsLANAddress_IgnoreSubnet_20
Sys_IsLANAddress_IgnoreSubnet_40:
	xor eax, eax
	pop ebp
	ret
Sys_IsLANAddress_IgnoreSubnet_20:
	cmp cl, 0xa
	jz Sys_IsLANAddress_IgnoreSubnet_10
	cmp cl, 0x7f
	jz Sys_IsLANAddress_IgnoreSubnet_10
	mov dword [ebp+0x8], 0x4
	movzx edx, word [ebp+0xc]
	cmp dx, 0xfea9
	jz Sys_IsLANAddress_IgnoreSubnet_10
	cmp cl, 0xac
	jz Sys_IsLANAddress_IgnoreSubnet_30
Sys_IsLANAddress_IgnoreSubnet_50:
	cmp dx, 0xa8c0
	jnz Sys_IsLANAddress_IgnoreSubnet_40
Sys_IsLANAddress_IgnoreSubnet_10:
	mov eax, 0x1
Sys_IsLANAddress_IgnoreSubnet_60:
	pop ebp
	ret
Sys_IsLANAddress_IgnoreSubnet_30:
	and eax, 0xf0
	cmp eax, 0x10
	jnz Sys_IsLANAddress_IgnoreSubnet_50
	mov eax, 0x1
	jmp Sys_IsLANAddress_IgnoreSubnet_60


;NET_Init()
NET_Init:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x4], winsockdata
	mov dword [esp], 0x101
	call WSAStartup
	test eax, eax
	jz NET_Init_10
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_warning_network_
	mov dword [esp], 0x10
	call Com_Printf
	leave
	ret
NET_Init_10:
	mov dword [winsockInitialized], 0x1
	mov dword [esp+0x4], _cstring_network_initiali
	mov dword [esp], 0x10
	call Com_Printf
	call NET_GetDvars
	mov dword [esp], 0x1
	call NET_Config
	leave
	ret
	nop


;NET_Sleep(int)
NET_Sleep:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xbc
	mov edi, [ebp+0x8]
	mov edx, [ip_socket]
	test edx, edx
	jz NET_Sleep_10
	lea esi, [ebp-0xa0]
	mov dword [esp+0x8], 0x80
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call memset
	mov ebx, [ip_socket]
	mov edx, ebx
	shr edx, 0x5
	mov ecx, ebx
	and ecx, 0x1f
	mov eax, 0x1
	shl eax, cl
	or [ebp+edx*4-0xa0], eax
	mov edx, 0x10624dd3
	mov eax, edi
	imul edx
	sar edx, 0x6
	mov eax, edi
	sar eax, 0x1f
	sub edx, eax
	mov [ebp-0x20], edx
	lea edx, [edx+edx*4]
	lea edx, [edx+edx*4]
	lea edx, [edx+edx*4]
	shl edx, 0x3
	sub edi, edx
	lea eax, [edi+edi*4]
	lea eax, [eax+eax*4]
	lea eax, [eax+eax*4]
	shl eax, 0x3
	mov [ebp-0x1c], eax
	lea eax, [ebp-0x20]
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], esi
	add ebx, 0x1
	mov [esp], ebx
	call select
NET_Sleep_10:
	add esp, 0xbc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Initialized global or static variables of win_net:
SECTION .data


;Initialized constant data of win_net:
SECTION .rdata


;Zero initialized global or static variables of win_net:
SECTION .bss
ip_socket: resb 0x4
winsockInitialized: resb 0x1c
winsockdata: resb 0x190
net_socksPassword: resb 0x4
net_socksUsername: resb 0x4
net_socksPort: resb 0x4
net_socksServer: resb 0x4
net_socksEnabled: resb 0x4
net_noipx: resb 0x4
net_noudp: resb 0x4
networkingEnabled: resb 0x4
socks_socket: resb 0x4
socksRelayAddr: resb 0x10
usingSocks: resb 0x1c
localIP: resb 0x40
numIP: resb 0x20
socksBuf: resb 0x1000
ipx_socket: resb 0x20


;All cstrings:
SECTION .rdata
_cstring_disable_udp:		db "Disable UDP",0
_cstring_net_noudp:		db "net_noudp",0
_cstring_disable_ipx:		db "Disable IPX",0
_cstring_net_noipx:		db "net_noipx",0
_cstring_enable_network_s:		db "Enable network sockets",0
_cstring_net_socksenabled:		db "net_socksEnabled",0
_cstring_network_socket_s:		db "Network socket server",0
_cstring_null:		db 0
_cstring_net_socksserver:		db "net_socksServer",0
_cstring_network_socket_p:		db "Network socket port",0
_cstring_net_socksport:		db "net_socksPort",0
_cstring_network_socket_u:		db "Network socket username",0
_cstring_net_socksusernam:		db "net_socksUsername",0
_cstring_network_socket_p1:		db "Network socket password",0
_cstring_net_sockspasswor:		db "net_socksPassword",0
_cstring_network_ip_addre:		db "Network IP Address",0
_cstring_localhost:		db "localhost",0
_cstring_net_ip:		db "net_ip",0
_cstring_network_port:		db "Network port",0
_cstring_net_port:		db "net_port",0
_cstring_opening_ip_socke:		db "Opening IP socket: %s:%i",0ah,0
_cstring_ip_iiii_s:		db "IP: %i.%i.%i.%i (%s)",0ah,0
_cstring_warning_udp_open:		db "WARNING: UDP_OpenSocket: ioctl FIONBIO: %s",0ah,0
_cstring_opening_ip_socke1:		db "Opening IP socket: localhost:%i",0ah,0
_cstring_warning_udp_open1:		db "WARNING: UDP_OpenSocket: bind: %s",0ah,0
_cstring_warning_udp_open2:		db "WARNING: UDP_OpenSocket: socket: %s",0ah,0
_cstring_warning_udp_open3:		db "WARNING: UDP_OpenSocket: setsockopt SO_BROADCAST: %s",0ah,0
_cstring_warning_couldnt_:		db "WARNING: Couldn",27h,"t allocate IP port",0ah,0
_cstring_net_getlocaladdr:		db "NET_GetLocalAddress: Unable to get list of network interfaces, errno = %d",0ah,0
_cstring_opening_connecti:		db "Opening connection to SOCKS server.",0ah,0
_cstring_warning_net_open:		db "WARNING: NET_OpenSocks: gethostbyname: address type was not AF_INET",0ah,0
_cstring_net_getlocaladdr1:		db "NET_GetLocalAddress: Unable to create temporary socket, errno = %d",0ah,0
_cstring_net_opensocks_ba:		db "NET_OpenSocks: bad response",0ah,0
_cstring_warning_net_open1:		db "WARNING: NET_OpenSocks: socket: %s",0ah,0
_cstring_net_getlocaladdr2:		db "NET_GetLocalAddress: Unable to get local address for interface ",27h,"%s",27h,", errno = %d",0ah,0
_cstring_warning_net_open2:		db "WARNING: NET_OpenSocks: gethostbyname: %s",0ah,0
_cstring_net_opensocks_se:		db "NET_OpenSocks: send: %s",0ah,0
_cstring_net_opensocks_co:		db "NET_OpenSocks: connect: %s",0ah,0
_cstring_net_opensocks_re:		db "NET_OpenSocks: recv: %s",0ah,0
_cstring_net_opensocks_re1:		db "NET_OpenSocks: request denied",0ah,0
_cstring_net_opensocks_re2:		db "NET_OpenSocks: relay address is not IPV4: %i",0ah,0
_cstring_net_opensocks_au:		db "NET_OpenSocks: authentication failed",0ah,0
_cstring_net_opensocks_re3:		db "NET_OpenSocks: request denied: %i",0ah,0
_cstring_ip_iiii:		db "IP: %i.%i.%i.%i",0ah,0
_cstring_oversize_packet_:		db "Oversize packet from %s",0ah,0
_cstring_net_getpacket_s:		db "NET_GetPacket: %s",0ah,0
_cstring_sys_sendpacket_b:		db 015h,"Sys_SendPacket: bad address type",0
_cstring_sys_sendpacket_s:		db "Sys_SendPacket: %s",0ah,0
_cstring_warning_network_:		db "WARNING: Network initialization failed, returned %d",0ah,0
_cstring_network_initiali:		db "Network Initialized",0ah,0



;All constant floats and doubles:
SECTION .rdata

