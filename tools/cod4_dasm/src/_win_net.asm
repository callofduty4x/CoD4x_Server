;Imports of win_net:
	extern _Z17Dvar_RegisterBoolPKchtS0_
	extern _Z19Dvar_RegisterStringPKcS0_tS0_
	extern _Z16Dvar_RegisterIntPKciiitS0_
	extern closesocket
	extern ioctlsocket
	extern setsockopt
	extern bind
	extern _Z10Com_PrintfiPKcz
	extern socket
	extern WSAGetLastError
	extern _Z11Dvar_SetIntPK6dvar_si
	extern ioctl
	extern strncmp
	extern strncpy
	extern __error
	extern strerror
	extern _Z16Com_PrintWarningiPKcz
	extern _Z9I_stricmpPKcS0_
	extern _Z9I_isdigiti
	extern inet_addr
	extern getsockopt
	extern close
	extern gethostbyname
	extern connect
	extern send
	extern recv
	extern _Z14Com_PrintErroriPKcz
	extern memcpy
	extern recvfrom
	extern _Z15NET_AdrToString8netadr_t
	extern _Z9Com_Error11errorParm_tPKcz
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
	global _Z12NET_GetDvarsv
	global _Z10NET_Configi
	global _Z10NET_OpenIPv
	global _Z10Sys_ShowIPv
	global _Z11NET_Restartv
	global _Z13Sys_GetPacketP8netadr_tP5msg_t
	global _Z14Sys_SendPacketiPKv8netadr_t
	global _Z15Sys_StringToAdrPKcP8netadr_t
	global _Z16Sys_IsLANAddress8netadr_t
	global _Z19Sys_PBSendUdpPacketPctiS_
	global _Z29Sys_IsLANAddress_IgnoreSubnet8netadr_t
	global _Z8NET_Initv
	global _Z9NET_Sleepi


SECTION .text


;NET_GetDvars()
_Z12NET_GetDvarsv:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov eax, [net_noudp]
	test eax, eax
	jz _Z12NET_GetDvarsv_10
	cmp byte [eax+0xb], 0x0
	jnz _Z12NET_GetDvarsv_20
_Z12NET_GetDvarsv_10:
	xor ebx, ebx
_Z12NET_GetDvarsv_90:
	mov dword [esp+0xc], _cstring_disable_udp
	mov dword [esp+0x8], 0x21
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_net_noudp
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [net_noudp], eax
	mov eax, [net_noipx]
	test eax, eax
	jz _Z12NET_GetDvarsv_30
	cmp byte [eax+0xb], 0x0
	mov eax, 0x1
	cmovnz ebx, eax
_Z12NET_GetDvarsv_30:
	mov dword [esp+0xc], _cstring_disable_ipx
	mov dword [esp+0x8], 0x21
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_net_noipx
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [net_noipx], eax
	mov eax, [net_socksEnabled]
	test eax, eax
	jz _Z12NET_GetDvarsv_40
	cmp byte [eax+0xb], 0x0
	mov eax, 0x1
	cmovnz ebx, eax
_Z12NET_GetDvarsv_40:
	mov dword [esp+0xc], _cstring_enable_network_s
	mov dword [esp+0x8], 0x21
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_net_socksenabled
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [net_socksEnabled], eax
	mov eax, [net_socksServer]
	test eax, eax
	jz _Z12NET_GetDvarsv_50
	cmp byte [eax+0xb], 0x0
	mov eax, 0x1
	cmovnz ebx, eax
_Z12NET_GetDvarsv_50:
	mov dword [esp+0xc], _cstring_network_socket_s
	mov dword [esp+0x8], 0x21
	mov dword [esp+0x4], _cstring_null
	mov dword [esp], _cstring_net_socksserver
	call _Z19Dvar_RegisterStringPKcS0_tS0_
	mov [net_socksServer], eax
	mov eax, [net_socksPort]
	test eax, eax
	jz _Z12NET_GetDvarsv_60
	cmp byte [eax+0xb], 0x0
	mov eax, 0x1
	cmovnz ebx, eax
_Z12NET_GetDvarsv_60:
	mov dword [esp+0x14], _cstring_network_socket_p
	mov dword [esp+0x10], 0x21
	mov dword [esp+0xc], 0xffff
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x438
	mov dword [esp], _cstring_net_socksport
	call _Z16Dvar_RegisterIntPKciiitS0_
	mov [net_socksPort], eax
	mov eax, [net_socksUsername]
	test eax, eax
	jz _Z12NET_GetDvarsv_70
	cmp byte [eax+0xb], 0x0
	mov eax, 0x1
	cmovnz ebx, eax
_Z12NET_GetDvarsv_70:
	mov dword [esp+0xc], _cstring_network_socket_u
	mov dword [esp+0x8], 0x21
	mov dword [esp+0x4], _cstring_null
	mov dword [esp], _cstring_net_socksusernam
	call _Z19Dvar_RegisterStringPKcS0_tS0_
	mov [net_socksUsername], eax
	mov eax, [net_socksPassword]
	test eax, eax
	jz _Z12NET_GetDvarsv_80
	cmp byte [eax+0xb], 0x0
	mov eax, 0x1
	cmovnz ebx, eax
_Z12NET_GetDvarsv_80:
	mov dword [esp+0xc], _cstring_network_socket_p1
	mov dword [esp+0x8], 0x21
	mov dword [esp+0x4], _cstring_null
	mov dword [esp], _cstring_net_sockspasswor
	call _Z19Dvar_RegisterStringPKcS0_tS0_
	mov [net_socksPassword], eax
	mov eax, ebx
	add esp, 0x24
	pop ebx
	pop ebp
	ret
_Z12NET_GetDvarsv_20:
	mov ebx, 0x1
	jmp _Z12NET_GetDvarsv_90
	nop


;NET_Config(int)
_Z10NET_Configi:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0x8]
	call _Z12NET_GetDvarsv
	mov edx, eax
	mov eax, [net_noudp]
	cmp byte [eax+0xc], 0x0
	jz _Z10NET_Configi_10
	mov eax, [net_noipx]
	cmp byte [eax+0xc], 0x0
	mov eax, 0x0
	cmovnz ebx, eax
_Z10NET_Configi_10:
	cmp ebx, [networkingEnabled]
	jz _Z10NET_Configi_20
	test ebx, ebx
	jz _Z10NET_Configi_30
	xor eax, eax
	mov esi, 0x1
_Z10NET_Configi_90:
	mov [networkingEnabled], ebx
	test eax, eax
	jz _Z10NET_Configi_40
_Z10NET_Configi_100:
	mov edx, [ip_socket]
	lea eax, [edx-0x1]
	cmp eax, 0xfffffffd
	jbe _Z10NET_Configi_50
_Z10NET_Configi_110:
	mov edx, [socks_socket]
	lea eax, [edx-0x1]
	cmp eax, 0xfffffffd
	jbe _Z10NET_Configi_60
_Z10NET_Configi_40:
	test esi, esi
	jz _Z10NET_Configi_70
	mov eax, [net_noudp]
	cmp byte [eax+0xc], 0x0
	jz _Z10NET_Configi_80
_Z10NET_Configi_70:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z10NET_Configi_30:
	mov eax, 0x1
	xor esi, esi
	jmp _Z10NET_Configi_90
_Z10NET_Configi_80:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp _Z10NET_OpenIPv
_Z10NET_Configi_20:
	test edx, edx
	jz _Z10NET_Configi_70
	test ebx, ebx
	jz _Z10NET_Configi_70
	mov esi, 0x1
	jmp _Z10NET_Configi_100
_Z10NET_Configi_60:
	mov [esp], edx
	call closesocket
	mov dword [socks_socket], 0x0
	jmp _Z10NET_Configi_40
_Z10NET_Configi_50:
	mov [esp], edx
	call closesocket
	mov dword [ip_socket], 0x0
	jmp _Z10NET_Configi_110


;NET_OpenIP()
_Z10NET_OpenIPv:
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
	call _Z19Dvar_RegisterStringPKcS0_tS0_
	mov [ebp-0x290], eax
	mov dword [esp+0x14], _cstring_network_port
	mov dword [esp+0x10], 0x20
	mov dword [esp+0xc], 0xffff
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x7120
	mov dword [esp], _cstring_net_port
	call _Z16Dvar_RegisterIntPKciiitS0_
	mov [ebp-0x28c], eax
	mov dword [ebp-0x288], 0x0
	jmp _Z10NET_OpenIPv_10
_Z10NET_OpenIPv_130:
	lea eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x8004667e
	mov [esp], edi
	call ioctlsocket
	add eax, 0x1
	jz _Z10NET_OpenIPv_20
	mov [ebp-0x294], edi
	mov dword [esp+0x10], 0x4
	lea ecx, [ebp-0x20]
	mov [esp+0xc], ecx
	mov dword [esp+0x8], 0x20
	mov dword [esp+0x4], 0xffff
	mov [esp], edi
	call setsockopt
	add eax, 0x1
	jz _Z10NET_OpenIPv_30
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
	jz _Z10NET_OpenIPv_40
_Z10NET_OpenIPv_330:
	mov dword [ebp-0x20], 0x10000
	mov dword [esp+0x10], 0x4
	lea ecx, [ebp-0x20]
	mov [esp+0xc], ecx
	mov dword [esp+0x8], 0x1001
	mov dword [esp+0x4], 0xffff
	mov [esp], edi
	call setsockopt
	add eax, 0x1
	jz _Z10NET_OpenIPv_50
_Z10NET_OpenIPv_320:
	test ebx, ebx
	jz _Z10NET_OpenIPv_60
	cmp byte [ebx], 0x0
	jnz _Z10NET_OpenIPv_70
_Z10NET_OpenIPv_60:
	mov dword [ebp-0x34], 0x0
_Z10NET_OpenIPv_310:
	cmp esi, 0xffffffff
	jnz _Z10NET_OpenIPv_80
	mov word [ebp-0x36], 0x0
	mov byte [ebp-0x37], 0x2
	mov dword [esp+0x8], 0x10
	lea eax, [ebp-0x38]
	mov [esp+0x4], eax
	mov [esp], edi
	call bind
	add eax, 0x1
	jz _Z10NET_OpenIPv_90
_Z10NET_OpenIPv_290:
	mov eax, edi
_Z10NET_OpenIPv_270:
	mov [ip_socket], eax
	mov eax, [ebp-0x294]
	test eax, eax
	jnz _Z10NET_OpenIPv_100
_Z10NET_OpenIPv_150:
	add dword [ebp-0x288], 0x1
	cmp dword [ebp-0x288], 0xa
	jz _Z10NET_OpenIPv_110
	mov eax, [ebp-0x28c]
_Z10NET_OpenIPv_10:
	mov esi, [ebp-0x288]
	add esi, [eax+0xc]
	mov edx, [ebp-0x290]
	mov ebx, [edx+0xc]
	mov dword [ebp-0x1c], 0x1
	mov dword [ebp-0x20], 0x1
	test ebx, ebx
	jz _Z10NET_OpenIPv_120
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_opening_ip_socke
	mov dword [esp], 0x10
	call _Z10Com_PrintfiPKcz
_Z10NET_OpenIPv_280:
	mov dword [esp+0x8], 0x11
	mov dword [esp+0x4], 0x2
	mov dword [esp], 0x2
	call socket
	mov edi, eax
	cmp eax, 0xffffffff
	jnz _Z10NET_OpenIPv_130
	call WSAGetLastError
	cmp eax, 0x273f
	jnz _Z10NET_OpenIPv_140
	mov dword [ebp-0x294], 0x0
	xor ax, ax
	mov [ip_socket], eax
	mov eax, [ebp-0x294]
	test eax, eax
	jz _Z10NET_OpenIPv_150
_Z10NET_OpenIPv_100:
	mov eax, [ebp-0x288]
	mov edx, [ebp-0x28c]
	add eax, [edx+0xc]
	mov [esp+0x4], eax
	mov [esp], edx
	call _Z11Dvar_SetIntPK6dvar_si
	mov eax, [net_socksEnabled]
	cmp byte [eax+0xc], 0x0
	jnz _Z10NET_OpenIPv_160
_Z10NET_OpenIPv_390:
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
	js _Z10NET_OpenIPv_170
	mov edx, eax
	lea eax, [ebp-0x38]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0xc0086924
	mov [esp], edx
	call ioctl
	test eax, eax
	jnz _Z10NET_OpenIPv_180
	mov esi, [ebp-0x34]
	mov [ebp-0x29c], esi
	mov edi, [ebp-0x38]
	lea eax, [esi+edi]
	cmp esi, eax
	jae _Z10NET_OpenIPv_190
	jmp _Z10NET_OpenIPv_200
_Z10NET_OpenIPv_210:
	movzx eax, byte [esi+0x10]
	sub eax, 0x10
	mov edx, 0x0
	cmovs eax, edx
	lea esi, [eax+esi+0x20]
	mov eax, [ebp-0x29c]
	add eax, edi
	cmp esi, eax
	jae _Z10NET_OpenIPv_190
_Z10NET_OpenIPv_200:
	cmp byte [esi+0x11], 0x12
	jnz _Z10NET_OpenIPv_210
	mov ebx, [ebp-0x29c]
	mov eax, ebx
	add eax, edi
	cmp ebx, eax
	jae _Z10NET_OpenIPv_210
	jmp _Z10NET_OpenIPv_220
_Z10NET_OpenIPv_230:
	movzx eax, byte [ebx+0x10]
	sub eax, 0x10
	mov edx, 0x0
	cmovs eax, edx
	lea ebx, [eax+ebx+0x20]
	mov edx, [ebp-0x29c]
	lea eax, [edi+edx]
	cmp ebx, eax
	jae _Z10NET_OpenIPv_210
_Z10NET_OpenIPv_220:
	cmp byte [ebx+0x11], 0x2
	jnz _Z10NET_OpenIPv_230
	mov dword [esp+0x8], 0x10
	mov [esp+0x4], esi
	mov [esp], ebx
	call strncmp
	test eax, eax
	jnz _Z10NET_OpenIPv_230
	mov eax, esi
	mov edx, 0x10
_Z10NET_OpenIPv_250:
	cmp byte [eax], 0x0
	jz _Z10NET_OpenIPv_240
	add eax, 0x1
	sub edx, 0x1
	jnz _Z10NET_OpenIPv_250
_Z10NET_OpenIPv_240:
	cmp byte [esi+0x14], 0x18
	jz _Z10NET_OpenIPv_230
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
	js _Z10NET_OpenIPv_260
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
	call _Z10Com_PrintfiPKcz
	add dword [numIP], 0x1
	mov eax, [ebp-0x34]
	mov [ebp-0x29c], eax
	mov edi, [ebp-0x38]
	jmp _Z10NET_OpenIPv_230
_Z10NET_OpenIPv_20:
	call __error
	mov eax, [eax]
	mov [esp], eax
	call strerror
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_warning_udp_open
	mov dword [esp], 0x10
	call _Z16Com_PrintWarningiPKcz
	mov dword [ebp-0x294], 0x0
	xor eax, eax
	jmp _Z10NET_OpenIPv_270
_Z10NET_OpenIPv_120:
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_opening_ip_socke1
	mov dword [esp], 0x10
	call _Z10Com_PrintfiPKcz
	jmp _Z10NET_OpenIPv_280
_Z10NET_OpenIPv_80:
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
	jnz _Z10NET_OpenIPv_290
_Z10NET_OpenIPv_90:
	call __error
	mov eax, [eax]
	mov [esp], eax
	call strerror
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_warning_udp_open1
	mov dword [esp], 0x10
	call _Z16Com_PrintWarningiPKcz
	mov [esp], edi
	call closesocket
	mov dword [ebp-0x294], 0x0
	xor eax, eax
	jmp _Z10NET_OpenIPv_270
_Z10NET_OpenIPv_140:
	call __error
	mov eax, [eax]
	mov [esp], eax
	call strerror
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_warning_udp_open2
	mov dword [esp], 0x10
	call _Z16Com_PrintWarningiPKcz
	mov dword [ebp-0x294], 0x0
	xor eax, eax
	jmp _Z10NET_OpenIPv_270
_Z10NET_OpenIPv_30:
	call __error
	mov eax, [eax]
	mov [esp], eax
	call strerror
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_warning_udp_open3
	mov dword [esp], 0x10
	call _Z16Com_PrintWarningiPKcz
	mov dword [ebp-0x294], 0x0
	xor eax, eax
	jmp _Z10NET_OpenIPv_270
_Z10NET_OpenIPv_110:
	mov dword [esp+0x4], _cstring_warning_couldnt_
	mov dword [esp], 0x10
	call _Z16Com_PrintWarningiPKcz
_Z10NET_OpenIPv_350:
	add esp, 0x2bc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z10NET_OpenIPv_70:
	mov dword [esp+0x4], _cstring_localhost
	mov [esp], ebx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z10NET_OpenIPv_60
	mov dword [ebp-0x38], 0x0
	mov dword [ebp-0x34], 0x0
	mov dword [ebp-0x30], 0x0
	mov dword [ebp-0x2c], 0x0
	mov byte [ebp-0x37], 0x2
	mov word [ebp-0x36], 0x0
	movsx eax, byte [ebx]
	mov [esp], eax
	call _Z9I_isdigiti
	test al, al
	jz _Z10NET_OpenIPv_300
	mov [esp], ebx
	call inet_addr
	mov [ebp-0x34], eax
	jmp _Z10NET_OpenIPv_310
_Z10NET_OpenIPv_50:
	call __error
	mov eax, [eax]
	mov [esp], eax
	call strerror
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_warning_udp_open3
	mov dword [esp], 0x10
	call _Z16Com_PrintWarningiPKcz
	jmp _Z10NET_OpenIPv_320
_Z10NET_OpenIPv_40:
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
	jnz _Z10NET_OpenIPv_330
_Z10NET_OpenIPv_340:
	mov eax, [ebp-0x20]
	cmp eax, [ebp-0x24]
	jle _Z10NET_OpenIPv_330
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
	jz _Z10NET_OpenIPv_340
	jmp _Z10NET_OpenIPv_330
_Z10NET_OpenIPv_180:
	call __error
	mov eax, [eax]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_net_getlocaladdr
	mov dword [esp], 0x10
	call _Z10Com_PrintfiPKcz
	jmp _Z10NET_OpenIPv_350
_Z10NET_OpenIPv_190:
	mov ecx, [ebp-0x280]
	mov [esp], ecx
	call close
	add esp, 0x2bc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z10NET_OpenIPv_160:
	mov eax, [ebp-0x288]
	mov ecx, [ebp-0x28c]
	add eax, [ecx+0xc]
	mov [ebp-0x284], eax
	mov dword [usingSocks], 0x0
	mov dword [esp+0x4], _cstring_opening_connecti
	mov dword [esp], 0x10
	call _Z10Com_PrintfiPKcz
	mov dword [esp+0x8], 0x6
	mov dword [esp+0x4], 0x1
	mov dword [esp], 0x2
	call socket
	mov [socks_socket], eax
	add eax, 0x1
	jz _Z10NET_OpenIPv_360
	mov eax, [net_socksServer]
	mov eax, [eax+0xc]
	mov [esp], eax
	call gethostbyname
	test eax, eax
	jz _Z10NET_OpenIPv_370
	cmp dword [eax+0x8], 0x2
	jz _Z10NET_OpenIPv_380
	mov dword [esp+0x4], _cstring_warning_net_open
	mov dword [esp], 0x10
	call _Z16Com_PrintWarningiPKcz
	jmp _Z10NET_OpenIPv_390
_Z10NET_OpenIPv_300:
	mov [esp], ebx
	call gethostbyname
	test eax, eax
	jz _Z10NET_OpenIPv_310
	mov eax, [eax+0x10]
	mov eax, [eax]
	mov eax, [eax]
	mov [ebp-0x34], eax
	jmp _Z10NET_OpenIPv_310
_Z10NET_OpenIPv_170:
	call __error
	mov eax, [eax]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_net_getlocaladdr1
	mov dword [esp], 0x10
	call _Z10Com_PrintfiPKcz
	jmp _Z10NET_OpenIPv_350
_Z10NET_OpenIPv_380:
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
	jz _Z10NET_OpenIPv_400
	mov eax, [net_socksUsername]
	mov eax, [eax+0xc]
	cmp byte [eax], 0x0
	jnz _Z10NET_OpenIPv_410
	mov eax, [net_socksPassword]
	mov eax, [eax+0xc]
	cmp byte [eax], 0x0
	jnz _Z10NET_OpenIPv_410
	xor eax, eax
_Z10NET_OpenIPv_470:
	mov byte [ebp-0x78], 0x5
	test eax, eax
	jz _Z10NET_OpenIPv_420
	mov byte [ebp-0x77], 0x2
	mov edx, 0x4
_Z10NET_OpenIPv_480:
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
	jz _Z10NET_OpenIPv_430
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x40
	lea ecx, [ebp-0x78]
	mov [esp+0x4], ecx
	mov eax, [socks_socket]
	mov [esp], eax
	call recv
	cmp eax, 0xffffffff
	jz _Z10NET_OpenIPv_440
	cmp eax, 0x2
	jnz _Z10NET_OpenIPv_450
	cmp byte [ebp-0x78], 0x5
	jz _Z10NET_OpenIPv_460
_Z10NET_OpenIPv_450:
	mov dword [esp+0x4], _cstring_net_opensocks_ba
	mov dword [esp], 0x10
	call _Z10Com_PrintfiPKcz
	jmp _Z10NET_OpenIPv_390
_Z10NET_OpenIPv_360:
	call WSAGetLastError
	call __error
	mov eax, [eax]
	mov [esp], eax
	call strerror
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_warning_net_open1
	mov dword [esp], 0x10
	call _Z16Com_PrintWarningiPKcz
	jmp _Z10NET_OpenIPv_390
_Z10NET_OpenIPv_410:
	mov eax, 0x1
	jmp _Z10NET_OpenIPv_470
_Z10NET_OpenIPv_260:
	call __error
	mov eax, [eax]
	mov [esp+0xc], eax
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_net_getlocaladdr2
	mov dword [esp], 0x10
	call _Z10Com_PrintfiPKcz
	mov ecx, [ebp-0x34]
	mov [ebp-0x29c], ecx
	mov edi, [ebp-0x38]
	jmp _Z10NET_OpenIPv_230
_Z10NET_OpenIPv_420:
	mov byte [ebp-0x77], 0x1
	mov edx, 0x3
	jmp _Z10NET_OpenIPv_480
_Z10NET_OpenIPv_370:
	call WSAGetLastError
	call __error
	mov eax, [eax]
	mov [esp], eax
	call strerror
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_warning_net_open2
	mov dword [esp], 0x10
	call _Z16Com_PrintWarningiPKcz
	jmp _Z10NET_OpenIPv_390
_Z10NET_OpenIPv_430:
	call WSAGetLastError
	call __error
	mov eax, [eax]
	mov [esp], eax
	call strerror
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_net_opensocks_se
	mov dword [esp], 0x10
	call _Z14Com_PrintErroriPKcz
	jmp _Z10NET_OpenIPv_390
_Z10NET_OpenIPv_400:
	call WSAGetLastError
	call __error
	mov eax, [eax]
	mov [esp], eax
	call strerror
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_net_opensocks_co
	mov dword [esp], 0x10
	call _Z14Com_PrintErroriPKcz
	jmp _Z10NET_OpenIPv_390
_Z10NET_OpenIPv_440:
	call WSAGetLastError
	call __error
	mov eax, [eax]
	mov [esp], eax
	call strerror
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_net_opensocks_re
	mov dword [esp], 0x10
	call _Z14Com_PrintErroriPKcz
	jmp _Z10NET_OpenIPv_390
_Z10NET_OpenIPv_460:
	movzx eax, byte [ebp-0x77]
	test al, al
	jz _Z10NET_OpenIPv_490
	cmp al, 0x2
	jz _Z10NET_OpenIPv_500
	mov dword [esp+0x4], _cstring_net_opensocks_re1
	mov dword [esp], 0x10
	call _Z10Com_PrintfiPKcz
	jmp _Z10NET_OpenIPv_390
_Z10NET_OpenIPv_490:
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
	jz _Z10NET_OpenIPv_510
_Z10NET_OpenIPv_560:
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x40
	lea ecx, [ebp-0x78]
	mov [esp+0x4], ecx
	mov eax, [socks_socket]
	mov [esp], eax
	call recv
	cmp eax, 0xffffffff
	jz _Z10NET_OpenIPv_440
	sub eax, 0x1
	jle _Z10NET_OpenIPv_450
	cmp byte [ebp-0x78], 0x5
	jnz _Z10NET_OpenIPv_450
	movzx eax, byte [ebp-0x77]
	test al, al
	jnz _Z10NET_OpenIPv_520
	movzx eax, byte [ebp-0x75]
	cmp al, 0x1
	jz _Z10NET_OpenIPv_530
	movzx eax, al
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_net_opensocks_re2
	mov dword [esp], 0x10
	call _Z10Com_PrintfiPKcz
	jmp _Z10NET_OpenIPv_390
_Z10NET_OpenIPv_500:
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
	jz _Z10NET_OpenIPv_540
	lea edx, [ebp-0x76]
	mov ecx, [ebp-0x27c]
	mov eax, [ecx+0xc]
	mov [esp+0x8], esi
	mov [esp+0x4], eax
	mov [esp], edx
	call memcpy
_Z10NET_OpenIPv_540:
	mov [ebp+esi-0x76], bl
	test ebx, ebx
	jz _Z10NET_OpenIPv_550
	mov edx, [ebp-0x298]
	lea eax, [edx+ebp-0x76]
	mov edx, [net_socksPassword]
	mov edx, [edx+0xc]
	mov [esp+0x8], ebx
	mov [esp+0x4], edx
	mov [esp], eax
	call memcpy
_Z10NET_OpenIPv_550:
	mov dword [esp+0xc], 0x0
	lea eax, [esi+ebx+0x3]
	mov [esp+0x8], eax
	lea ecx, [ebp-0x78]
	mov [esp+0x4], ecx
	mov eax, [socks_socket]
	mov [esp], eax
	call send
	add eax, 0x1
	jz _Z10NET_OpenIPv_430
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x40
	lea eax, [ebp-0x78]
	mov [esp+0x4], eax
	mov eax, [socks_socket]
	mov [esp], eax
	call recv
	cmp eax, 0xffffffff
	jz _Z10NET_OpenIPv_440
	cmp eax, 0x2
	jnz _Z10NET_OpenIPv_450
	cmp byte [ebp-0x78], 0x1
	jnz _Z10NET_OpenIPv_450
	cmp byte [ebp-0x77], 0x0
	jz _Z10NET_OpenIPv_490
	mov dword [esp+0x4], _cstring_net_opensocks_au
	mov dword [esp], 0x10
	call _Z10Com_PrintfiPKcz
	jmp _Z10NET_OpenIPv_390
_Z10NET_OpenIPv_530:
	mov byte [socksRelayAddr+0x1], 0x2
	mov eax, [ebp-0x74]
	mov [socksRelayAddr+0x4], eax
	movzx eax, word [ebp-0x70]
	mov [socksRelayAddr+0x2], ax
	mov dword [socksRelayAddr+0x8], 0x0
	mov dword [socksRelayAddr+0xc], 0x0
	mov dword [usingSocks], 0x1
	jmp _Z10NET_OpenIPv_390
_Z10NET_OpenIPv_520:
	movzx eax, al
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_net_opensocks_re3
	mov dword [esp], 0x10
	call _Z10Com_PrintfiPKcz
	jmp _Z10NET_OpenIPv_390
_Z10NET_OpenIPv_510:
	call WSAGetLastError
	call __error
	mov eax, [eax]
	mov [esp], eax
	call strerror
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_net_opensocks_se
	mov dword [esp], 0x10
	call _Z14Com_PrintErroriPKcz
	jmp _Z10NET_OpenIPv_560


;Sys_ShowIP()
_Z10Sys_ShowIPv:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x20
	mov eax, [numIP]
	test eax, eax
	jg _Z10Sys_ShowIPv_10
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
_Z10Sys_ShowIPv_10:
	xor esi, esi
	mov ebx, localIP+0x3
_Z10Sys_ShowIPv_20:
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
	call _Z10Com_PrintfiPKcz
	add esi, 0x1
	add ebx, 0x4
	cmp [numIP], esi
	jg _Z10Sys_ShowIPv_20
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;NET_Restart()
_Z11NET_Restartv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [networkingEnabled]
	mov [esp], eax
	call _Z10NET_Configi
	leave
	ret
	nop
	add [eax], al


;Sys_GetPacket(netadr_t*, msg_t*)
_Z13Sys_GetPacketP8netadr_tP5msg_t:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	xor ebx, ebx
_Z13Sys_GetPacketP8netadr_tP5msg_t_30:
	mov esi, [ip_socket]
	test esi, esi
	jnz _Z13Sys_GetPacketP8netadr_tP5msg_t_10
_Z13Sys_GetPacketP8netadr_tP5msg_t_40:
	add ebx, 0x1
	cmp ebx, 0x1
	jg _Z13Sys_GetPacketP8netadr_tP5msg_t_20
_Z13Sys_GetPacketP8netadr_tP5msg_t_100:
	test ebx, ebx
	jz _Z13Sys_GetPacketP8netadr_tP5msg_t_30
	mov esi, [ipx_socket]
	test esi, esi
	jz _Z13Sys_GetPacketP8netadr_tP5msg_t_40
_Z13Sys_GetPacketP8netadr_tP5msg_t_10:
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
	jz _Z13Sys_GetPacketP8netadr_tP5msg_t_50
	cmp esi, [ip_socket]
	jz _Z13Sys_GetPacketP8netadr_tP5msg_t_60
_Z13Sys_GetPacketP8netadr_tP5msg_t_140:
	mov ecx, [usingSocks]
	test ecx, ecx
	jnz _Z13Sys_GetPacketP8netadr_tP5msg_t_70
_Z13Sys_GetPacketP8netadr_tP5msg_t_110:
	cmp byte [ebp-0x37], 0x2
	jz _Z13Sys_GetPacketP8netadr_tP5msg_t_80
_Z13Sys_GetPacketP8netadr_tP5msg_t_150:
	mov eax, [ebp+0xc]
	mov dword [eax+0x1c], 0x0
_Z13Sys_GetPacketP8netadr_tP5msg_t_130:
	mov esi, [ebp-0x4c]
	mov edx, [ebp+0xc]
	cmp esi, [edx+0x10]
	jnz _Z13Sys_GetPacketP8netadr_tP5msg_t_90
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
	call _Z15NET_AdrToString8netadr_t
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_oversize_packet_
	mov dword [esp], 0x10
	call _Z10Com_PrintfiPKcz
	add ebx, 0x1
	cmp ebx, 0x1
	jle _Z13Sys_GetPacketP8netadr_tP5msg_t_100
_Z13Sys_GetPacketP8netadr_tP5msg_t_20:
	xor eax, eax
_Z13Sys_GetPacketP8netadr_tP5msg_t_160:
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z13Sys_GetPacketP8netadr_tP5msg_t_70:
	cmp esi, [ip_socket]
	jnz _Z13Sys_GetPacketP8netadr_tP5msg_t_110
	mov dword [ebp-0x3c], socksRelayAddr
	mov ecx, [ebp-0x1c]
	cld
	cmp ecx, ecx
	lea esi, [ebp-0x38]
	mov edi, socksRelayAddr
	repe cmpsb
	mov edx, 0x0
	jz _Z13Sys_GetPacketP8netadr_tP5msg_t_120
	movzx edx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub edx, ecx
_Z13Sys_GetPacketP8netadr_tP5msg_t_120:
	test edx, edx
	jnz _Z13Sys_GetPacketP8netadr_tP5msg_t_110
	cmp dword [ebp-0x4c], 0x9
	jle _Z13Sys_GetPacketP8netadr_tP5msg_t_40
	mov edx, [ebp+0xc]
	mov eax, [edx+0x8]
	cmp byte [eax], 0x0
	jnz _Z13Sys_GetPacketP8netadr_tP5msg_t_40
	cmp byte [eax+0x1], 0x0
	jnz _Z13Sys_GetPacketP8netadr_tP5msg_t_40
	cmp byte [eax+0x2], 0x0
	jnz _Z13Sys_GetPacketP8netadr_tP5msg_t_40
	cmp byte [eax+0x3], 0x1
	jnz _Z13Sys_GetPacketP8netadr_tP5msg_t_40
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
	jmp _Z13Sys_GetPacketP8netadr_tP5msg_t_130
_Z13Sys_GetPacketP8netadr_tP5msg_t_60:
	mov dword [ebp-0x30], 0x0
	mov dword [ebp-0x2c], 0x0
	jmp _Z13Sys_GetPacketP8netadr_tP5msg_t_140
_Z13Sys_GetPacketP8netadr_tP5msg_t_80:
	mov edi, [ebp+0x8]
	mov dword [edi], 0x4
	mov eax, [ebp-0x34]
	mov [edi+0x4], eax
	movzx eax, word [ebp-0x36]
	mov [edi+0x8], ax
	jmp _Z13Sys_GetPacketP8netadr_tP5msg_t_150
_Z13Sys_GetPacketP8netadr_tP5msg_t_50:
	call WSAGetLastError
	cmp eax, 0x2733
	jz _Z13Sys_GetPacketP8netadr_tP5msg_t_40
	cmp eax, 0x2746
	jz _Z13Sys_GetPacketP8netadr_tP5msg_t_40
	call __error
	mov eax, [eax]
	mov [esp], eax
	call strerror
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_net_getpacket_s
	mov dword [esp], 0x10
	call _Z14Com_PrintErroriPKcz
	jmp _Z13Sys_GetPacketP8netadr_tP5msg_t_40
_Z13Sys_GetPacketP8netadr_tP5msg_t_90:
	mov eax, [ebp+0xc]
	mov [eax+0x14], esi
	mov eax, 0x1
	jmp _Z13Sys_GetPacketP8netadr_tP5msg_t_160
	nop


;Sys_SendPacket(int, void const*, netadr_t)
_Z14Sys_SendPacketiPKv8netadr_t:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x34
	mov edx, [ebp+0x10]
	cmp edx, 0x3
	jz _Z14Sys_SendPacketiPKv8netadr_t_10
	cmp edx, 0x4
	jz _Z14Sys_SendPacketiPKv8netadr_t_10
	mov dword [esp+0x4], _cstring_sys_sendpacket_b
	mov dword [esp], 0x1
	call _Z9Com_Error11errorParm_tPKcz
	mov eax, 0x1
	add esp, 0x34
	pop ebx
	pop ebp
	ret
_Z14Sys_SendPacketiPKv8netadr_t_10:
	mov ebx, [ip_socket]
	test ebx, ebx
	jnz _Z14Sys_SendPacketiPKv8netadr_t_20
_Z14Sys_SendPacketiPKv8netadr_t_70:
	mov eax, 0x1
_Z14Sys_SendPacketiPKv8netadr_t_90:
	add esp, 0x34
	pop ebx
	pop ebp
	ret
_Z14Sys_SendPacketiPKv8netadr_t_20:
	mov dword [ebp-0x18], 0x0
	mov dword [ebp-0x14], 0x0
	mov dword [ebp-0x10], 0x0
	mov dword [ebp-0xc], 0x0
	cmp edx, 0x3
	jz _Z14Sys_SendPacketiPKv8netadr_t_30
	cmp edx, 0x4
	jz _Z14Sys_SendPacketiPKv8netadr_t_40
_Z14Sys_SendPacketiPKv8netadr_t_100:
	mov eax, [usingSocks]
	test eax, eax
	jz _Z14Sys_SendPacketiPKv8netadr_t_50
	cmp edx, 0x4
	jz _Z14Sys_SendPacketiPKv8netadr_t_60
_Z14Sys_SendPacketiPKv8netadr_t_50:
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
_Z14Sys_SendPacketiPKv8netadr_t_120:
	add eax, 0x1
	jnz _Z14Sys_SendPacketiPKv8netadr_t_70
	call WSAGetLastError
	cmp eax, 0x2733
	jz _Z14Sys_SendPacketiPKv8netadr_t_70
	cmp eax, 0x2741
	jz _Z14Sys_SendPacketiPKv8netadr_t_80
_Z14Sys_SendPacketiPKv8netadr_t_110:
	call __error
	mov eax, [eax]
	mov [esp], eax
	call strerror
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_sys_sendpacket_s
	mov dword [esp], 0x10
	call _Z14Com_PrintErroriPKcz
	xor eax, eax
	jmp _Z14Sys_SendPacketiPKv8netadr_t_90
_Z14Sys_SendPacketiPKv8netadr_t_40:
	mov byte [ebp-0x17], 0x2
	mov eax, [ebp+0x14]
	mov [ebp-0x14], eax
	movzx eax, word [ebp+0x18]
	mov [ebp-0x16], ax
	jmp _Z14Sys_SendPacketiPKv8netadr_t_100
_Z14Sys_SendPacketiPKv8netadr_t_30:
	mov byte [ebp-0x17], 0x2
	movzx eax, word [ebp+0x18]
	mov [ebp-0x16], ax
	mov dword [ebp-0x14], 0xffffffff
	jmp _Z14Sys_SendPacketiPKv8netadr_t_100
_Z14Sys_SendPacketiPKv8netadr_t_80:
	cmp dword [ebp+0x10], 0x3
	jnz _Z14Sys_SendPacketiPKv8netadr_t_110
	jmp _Z14Sys_SendPacketiPKv8netadr_t_70
_Z14Sys_SendPacketiPKv8netadr_t_60:
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
	jmp _Z14Sys_SendPacketiPKv8netadr_t_120


;Sys_StringToAdr(char const*, netadr_t*)
_Z15Sys_StringToAdrPKcP8netadr_t:
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
	call _Z9I_isdigiti
	test al, al
	jz _Z15Sys_StringToAdrPKcP8netadr_t_10
	mov [esp], ebx
	call inet_addr
	mov [ebp-0x24], eax
	cmp byte [ebp-0x27], 0x2
	jz _Z15Sys_StringToAdrPKcP8netadr_t_20
_Z15Sys_StringToAdrPKcP8netadr_t_40:
	mov eax, 0x1
_Z15Sys_StringToAdrPKcP8netadr_t_30:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z15Sys_StringToAdrPKcP8netadr_t_10:
	mov [esp], ebx
	call gethostbyname
	test eax, eax
	jz _Z15Sys_StringToAdrPKcP8netadr_t_30
	mov eax, [eax+0x10]
	mov eax, [eax]
	mov eax, [eax]
	mov [ebp-0x24], eax
	cmp byte [ebp-0x27], 0x2
	jnz _Z15Sys_StringToAdrPKcP8netadr_t_40
_Z15Sys_StringToAdrPKcP8netadr_t_20:
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
_Z16Sys_IsLANAddress8netadr_t:
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
	jz _Z16Sys_IsLANAddress8netadr_t_10
	test edx, edx
	jnz _Z16Sys_IsLANAddress8netadr_t_20
_Z16Sys_IsLANAddress8netadr_t_10:
	mov eax, 0x1
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z16Sys_IsLANAddress8netadr_t_20:
	cmp edx, 0x4
	jz _Z16Sys_IsLANAddress8netadr_t_30
_Z16Sys_IsLANAddress8netadr_t_80:
	mov eax, [numIP]
	mov [ebp-0x34], eax
	test eax, eax
	jle _Z16Sys_IsLANAddress8netadr_t_40
	xor edx, edx
	mov eax, localIP
	jmp _Z16Sys_IsLANAddress8netadr_t_50
_Z16Sys_IsLANAddress8netadr_t_60:
	add edx, 0x1
	add eax, 0x4
	cmp edx, [ebp-0x34]
	jz _Z16Sys_IsLANAddress8netadr_t_40
_Z16Sys_IsLANAddress8netadr_t_50:
	cmp [eax], bl
	jnz _Z16Sys_IsLANAddress8netadr_t_60
	mov ecx, esi
	cmp [eax+0x1], cl
	jnz _Z16Sys_IsLANAddress8netadr_t_60
	mov ecx, edi
	cmp [eax+0x2], cl
	jnz _Z16Sys_IsLANAddress8netadr_t_60
	jmp _Z16Sys_IsLANAddress8netadr_t_10
_Z16Sys_IsLANAddress8netadr_t_40:
	xor eax, eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z16Sys_IsLANAddress8netadr_t_30:
	cmp cl, 0xa
	jz _Z16Sys_IsLANAddress8netadr_t_10
	cmp cl, 0x7f
	jz _Z16Sys_IsLANAddress8netadr_t_10
	mov dword [ebp-0x28], 0x4
	movzx edx, word [ebp-0x24]
	cmp dx, 0xfea9
	jz _Z16Sys_IsLANAddress8netadr_t_10
	cmp cl, 0xac
	jz _Z16Sys_IsLANAddress8netadr_t_70
_Z16Sys_IsLANAddress8netadr_t_90:
	cmp dx, 0xa8c0
	jnz _Z16Sys_IsLANAddress8netadr_t_80
	jmp _Z16Sys_IsLANAddress8netadr_t_10
_Z16Sys_IsLANAddress8netadr_t_70:
	and eax, 0xf0
	cmp eax, 0x10
	jnz _Z16Sys_IsLANAddress8netadr_t_90
	jmp _Z16Sys_IsLANAddress8netadr_t_10


;Sys_PBSendUdpPacket(char*, unsigned short, int, char*)
_Z19Sys_PBSendUdpPacketPctiS_:
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
	call _Z9I_isdigiti
	test al, al
	jz _Z19Sys_PBSendUdpPacketPctiS__10
	mov [esp], esi
	call inet_addr
	mov [ebp-0x3c], eax
	cmp byte [ebp-0x3f], 0x2
	jz _Z19Sys_PBSendUdpPacketPctiS__20
_Z19Sys_PBSendUdpPacketPctiS__40:
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
	call _Z14Sys_SendPacketiPKv8netadr_t
_Z19Sys_PBSendUdpPacketPctiS__30:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19Sys_PBSendUdpPacketPctiS__10:
	mov [esp], esi
	call gethostbyname
	test eax, eax
	jz _Z19Sys_PBSendUdpPacketPctiS__30
	mov eax, [eax+0x10]
	mov eax, [eax]
	mov eax, [eax]
	mov [ebp-0x3c], eax
	cmp byte [ebp-0x3f], 0x2
	jnz _Z19Sys_PBSendUdpPacketPctiS__40
_Z19Sys_PBSendUdpPacketPctiS__20:
	mov dword [ebp-0x30], 0x4
	mov eax, [edi+0x4]
	mov [ebp-0x2c], eax
	movzx eax, word [edi+0x2]
	mov [ebp-0x28], ax
	jmp _Z19Sys_PBSendUdpPacketPctiS__40
	nop


;Sys_IsLANAddress_IgnoreSubnet(netadr_t)
_Z29Sys_IsLANAddress_IgnoreSubnet8netadr_t:
	push ebp
	mov ebp, esp
	movzx eax, byte [ebp+0xd]
	movzx ecx, byte [ebp+0xc]
	mov edx, [ebp+0x8]
	cmp edx, 0x2
	jz _Z29Sys_IsLANAddress_IgnoreSubnet8netadr_t_10
	test edx, edx
	jz _Z29Sys_IsLANAddress_IgnoreSubnet8netadr_t_10
	cmp edx, 0x4
	jz _Z29Sys_IsLANAddress_IgnoreSubnet8netadr_t_20
_Z29Sys_IsLANAddress_IgnoreSubnet8netadr_t_40:
	xor eax, eax
	pop ebp
	ret
_Z29Sys_IsLANAddress_IgnoreSubnet8netadr_t_20:
	cmp cl, 0xa
	jz _Z29Sys_IsLANAddress_IgnoreSubnet8netadr_t_10
	cmp cl, 0x7f
	jz _Z29Sys_IsLANAddress_IgnoreSubnet8netadr_t_10
	mov dword [ebp+0x8], 0x4
	movzx edx, word [ebp+0xc]
	cmp dx, 0xfea9
	jz _Z29Sys_IsLANAddress_IgnoreSubnet8netadr_t_10
	cmp cl, 0xac
	jz _Z29Sys_IsLANAddress_IgnoreSubnet8netadr_t_30
_Z29Sys_IsLANAddress_IgnoreSubnet8netadr_t_50:
	cmp dx, 0xa8c0
	jnz _Z29Sys_IsLANAddress_IgnoreSubnet8netadr_t_40
_Z29Sys_IsLANAddress_IgnoreSubnet8netadr_t_10:
	mov eax, 0x1
_Z29Sys_IsLANAddress_IgnoreSubnet8netadr_t_60:
	pop ebp
	ret
_Z29Sys_IsLANAddress_IgnoreSubnet8netadr_t_30:
	and eax, 0xf0
	cmp eax, 0x10
	jnz _Z29Sys_IsLANAddress_IgnoreSubnet8netadr_t_50
	mov eax, 0x1
	jmp _Z29Sys_IsLANAddress_IgnoreSubnet8netadr_t_60


;NET_Init()
_Z8NET_Initv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x4], winsockdata
	mov dword [esp], 0x101
	call WSAStartup
	test eax, eax
	jz _Z8NET_Initv_10
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_warning_network_
	mov dword [esp], 0x10
	call _Z10Com_PrintfiPKcz
	leave
	ret
_Z8NET_Initv_10:
	mov dword [winsockInitialized], 0x1
	mov dword [esp+0x4], _cstring_network_initiali
	mov dword [esp], 0x10
	call _Z10Com_PrintfiPKcz
	call _Z12NET_GetDvarsv
	mov dword [esp], 0x1
	call _Z10NET_Configi
	leave
	ret
	nop


;NET_Sleep(int)
_Z9NET_Sleepi:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xbc
	mov edi, [ebp+0x8]
	mov edx, [ip_socket]
	test edx, edx
	jz _Z9NET_Sleepi_10
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
_Z9NET_Sleepi_10:
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

