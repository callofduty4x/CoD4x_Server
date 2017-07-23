;Imports of cl_ui_pc_mp:
	extern cls
	extern NET_StringToAdr
	extern Q_strncpyz
	extern NET_CompareAdr
	extern Com_Memcpy
	extern FS_SV_FOpenFileRead
	extern FS_Read
	extern FS_FCloseFile
	extern CL_SortGlobalServers
	extern FS_SV_FOpenFileWrite
	extern FS_Write
	extern NET_CompareAdrSigned
	extern memcpy
	extern NET_AdrToString

;Exports of cl_ui_pc_mp:
	global LAN_AddServer
	global LAN_RemoveServer
	global LAN_LoadCachedServers
	global LAN_SaveServersToCache
	global LAN_GetServerAddressString


SECTION .text


;LAN_AddServer(int, char const*, char const*)
LAN_AddServer:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	cmp dword [ebp+0x8], 0x2
	jz LAN_AddServer_10
LAN_AddServer_20:
	mov eax, 0xffffffff
LAN_AddServer_50:
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
LAN_AddServer_10:
	mov ebx, cls
	cmp dword [ebx+0x2d75dc], 0x7f
	jg LAN_AddServer_20
	lea eax, [ebp-0x3c]
	mov [esp+0x4], eax
	mov eax, [ebp+0x10]
	mov [esp], eax
	call NET_StringToAdr
	test eax, eax
	jz LAN_AddServer_30
	mov eax, [ebx+0x2d75dc]
	test eax, eax
	jg LAN_AddServer_40
	mov esi, cls
LAN_AddServer_70:
	mov edx, [esi+0x2d75dc]
LAN_AddServer_90:
	lea eax, [edx+edx*8]
	lea eax, [edx+eax*4]
	shl eax, 0x2
	lea ebx, [esi+0x2d75e0]
	mov edx, [ebp-0x3c]
	mov [eax+ebx], edx
	mov edx, [ebp-0x38]
	mov [eax+ebx+0x4], edx
	mov edx, [ebp-0x34]
	mov [eax+ebx+0x8], edx
	mov dword [esp+0x8], 0x20
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov eax, [esi+0x2d75dc]
	lea edx, [eax+eax*8]
	lea edx, [eax+edx*4]
	lea edx, [ebx+edx*4+0x29]
	mov [esp], edx
	call Q_strncpyz
	mov eax, [esi+0x2d75dc]
	lea edx, [eax+eax*8]
	lea edx, [eax+edx*4]
	mov byte [ebx+edx*4+0x13], 0x1
	mov eax, [esi+0x2d75dc]
	lea edx, [eax+eax*8]
	lea edx, [eax+edx*4]
	mov byte [ebx+edx*4+0x28], 0x0
	add dword [esi+0x2d75dc], 0x1
	mov eax, 0x1
	jmp LAN_AddServer_50
LAN_AddServer_30:
	mov eax, 0xfffffffe
	jmp LAN_AddServer_50
LAN_AddServer_40:
	mov dword [ebp-0x4c], 0x0
	lea edi, [ebx+0x2d75e0]
	jmp LAN_AddServer_60
LAN_AddServer_80:
	add dword [ebp-0x4c], 0x1
	add edi, 0x94
	mov esi, cls
	mov eax, [ebp-0x4c]
	cmp eax, [esi+0x2d75dc]
	jge LAN_AddServer_70
LAN_AddServer_60:
	mov eax, [ebp-0x3c]
	mov [ebp-0x30], eax
	mov esi, [ebp-0x38]
	mov [ebp-0x2c], esi
	mov ebx, [ebp-0x34]
	mov [ebp-0x28], ebx
	mov ecx, [edi]
	mov [ebp-0x24], ecx
	mov edx, [edi+0x4]
	mov [ebp-0x20], edx
	mov eax, [edi+0x8]
	mov [esp+0x8], eax
	mov [ebp-0x1c], eax
	mov eax, [ebp-0x3c]
	mov [esp+0xc], eax
	mov [esp+0x10], esi
	mov [esp+0x14], ebx
	mov [esp], ecx
	mov [esp+0x4], edx
	call NET_CompareAdr
	test eax, eax
	jz LAN_AddServer_80
	mov esi, cls
	mov edx, [esi+0x2d75dc]
	cmp edx, [ebp-0x4c]
	jle LAN_AddServer_90
	xor eax, eax
	jmp LAN_AddServer_50


;LAN_RemoveServer(int, char const*)
LAN_RemoveServer:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	cmp dword [ebp+0x8], 0x2
	jz LAN_RemoveServer_10
LAN_RemoveServer_20:
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
LAN_RemoveServer_10:
	lea eax, [ebp-0x3c]
	mov [esp+0x4], eax
	mov eax, [ebp+0xc]
	mov [esp], eax
	call NET_StringToAdr
	mov eax, cls
	mov edx, [eax+0x2d75dc]
	test edx, edx
	jle LAN_RemoveServer_20
	mov dword [ebp-0x50], 0x0
	add eax, 0x2d75e0
	mov [ebp-0x4c], eax
	mov edx, eax
	jmp LAN_RemoveServer_30
LAN_RemoveServer_40:
	add dword [ebp-0x50], 0x1
	add dword [ebp-0x4c], 0x94
	mov eax, cls
	mov edx, [ebp-0x50]
	cmp edx, [eax+0x2d75dc]
	jge LAN_RemoveServer_20
	mov edx, [ebp-0x4c]
LAN_RemoveServer_30:
	mov edi, [edx]
	mov [ebp-0x30], edi
	mov esi, [edx+0x4]
	mov [ebp-0x2c], esi
	mov ebx, [edx+0x8]
	mov [ebp-0x28], ebx
	mov ecx, [ebp-0x3c]
	mov [ebp-0x24], ecx
	mov edx, [ebp-0x38]
	mov [ebp-0x20], edx
	mov eax, [ebp-0x34]
	mov [ebp-0x1c], eax
	mov [esp+0xc], edi
	mov [esp+0x10], esi
	mov [esp+0x14], ebx
	mov [esp], ecx
	mov [esp+0x4], edx
	mov [esp+0x8], eax
	call NET_CompareAdr
	test eax, eax
	jz LAN_RemoveServer_40
	mov edi, cls
	mov eax, [edi+0x2d75dc]
	sub eax, 0x1
	cmp [ebp-0x50], eax
	jl LAN_RemoveServer_50
LAN_RemoveServer_70:
	mov [edi+0x2d75dc], eax
	jmp LAN_RemoveServer_20
LAN_RemoveServer_50:
	mov edx, [ebp-0x50]
	lea eax, [edx+edx*8]
	lea eax, [edx+eax*4]
	lea esi, [eax*4]
	mov ebx, edx
LAN_RemoveServer_60:
	lea edx, [edi+esi+0x2d75e0]
	mov dword [esp+0x8], 0x94
	lea eax, [edx+0x94]
	mov [esp+0x4], eax
	mov [esp], edx
	call Com_Memcpy
	add ebx, 0x1
	mov eax, [edi+0x2d75dc]
	sub eax, 0x1
	add esi, 0x94
	cmp ebx, eax
	jl LAN_RemoveServer_60
	jmp LAN_RemoveServer_70


;LAN_LoadCachedServers()
LAN_LoadCachedServers:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x20
	lea eax, [ebp-0xc]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_servercachedat
	call FS_SV_FOpenFileRead
	test eax, eax
	jnz LAN_LoadCachedServers_10
LAN_LoadCachedServers_30:
	mov eax, cls
	mov dword [eax+0x4b58], 0x0
	mov dword [eax+0x2d75dc], 0x0
LAN_LoadCachedServers_40:
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
LAN_LoadCachedServers_10:
	mov ebx, [ebp-0xc]
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x4
	lea eax, [ebp-0x14]
	mov [esp], eax
	call FS_Read
	cmp eax, 0x4
	jz LAN_LoadCachedServers_20
LAN_LoadCachedServers_50:
	xor ebx, ebx
LAN_LoadCachedServers_60:
	mov eax, [ebp-0xc]
	mov [esp], eax
	call FS_FCloseFile
	test ebx, ebx
	jz LAN_LoadCachedServers_30
	call CL_SortGlobalServers
	jmp LAN_LoadCachedServers_40
LAN_LoadCachedServers_20:
	cmp dword [ebp-0x14], 0x3
	jnz LAN_LoadCachedServers_50
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x4
	mov esi, cls
	lea eax, [esi+0x4b58]
	mov [esp], eax
	call FS_Read
	cmp eax, 0x4
	jnz LAN_LoadCachedServers_50
	cmp dword [esi+0x4b58], 0x4e1f
	ja LAN_LoadCachedServers_50
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x4
	lea eax, [esi+0x2d75dc]
	mov [esp], eax
	call FS_Read
	cmp eax, 0x4
	jnz LAN_LoadCachedServers_50
	cmp dword [esi+0x2d75dc], 0x7f
	ja LAN_LoadCachedServers_50
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x4
	lea eax, [ebp-0x10]
	mov [esp], eax
	call FS_Read
	cmp eax, 0x4
	jnz LAN_LoadCachedServers_50
	cmp dword [ebp-0x10], 0x2d7480
	jnz LAN_LoadCachedServers_50
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x2d2a80
	lea eax, [esi+0x4b5c]
	mov [esp], eax
	call FS_Read
	cmp eax, 0x2d2a80
	jnz LAN_LoadCachedServers_50
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x4a00
	lea eax, [esi+0x2d75e0]
	mov [esp], eax
	call FS_Read
	cmp eax, 0x4a00
	jnz LAN_LoadCachedServers_50
	mov ebx, 0x1
	jmp LAN_LoadCachedServers_60


;LAN_SaveServersToCache()
LAN_SaveServersToCache:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov dword [esp], _cstring_servercachedat
	call FS_SV_FOpenFileWrite
	mov [ebp-0x2c], eax
	test eax, eax
	jnz LAN_SaveServersToCache_10
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
LAN_SaveServersToCache_10:
	mov dword [ebp-0x20], 0x3
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x4
	lea eax, [ebp-0x20]
	mov [esp], eax
	call FS_Write
	mov esi, cls
	mov edx, [esi+0x4b58]
	sub edx, 0x1
	js LAN_SaveServersToCache_20
	mov [ebp-0x30], esi
	jmp LAN_SaveServersToCache_30
LAN_SaveServersToCache_50:
	test edx, edx
	jz LAN_SaveServersToCache_20
	lea ebx, [edx-0x1]
	lea eax, [ebx+ebx*8]
	lea eax, [ebx+eax*4]
	lea eax, [esi+eax*4+0x4b5c]
	mov [esp+0x4], eax
	lea eax, [ecx+esi+0x4b5c]
	mov [esp], eax
	call NET_CompareAdrSigned
	test eax, eax
	jz LAN_SaveServersToCache_40
	test ebx, ebx
	js LAN_SaveServersToCache_20
LAN_SaveServersToCache_60:
	mov edx, ebx
	mov esi, [ebp-0x30]
LAN_SaveServersToCache_30:
	lea eax, [edx+edx*8]
	lea eax, [edx+eax*4]
	lea ecx, [eax*4]
	lea edi, [ecx+esi]
	cmp byte [edi+0x4b78], 0x2
	jbe LAN_SaveServersToCache_50
	lea ebx, [edx-0x1]
LAN_SaveServersToCache_40:
	mov eax, [esi+0x4b58]
	sub eax, 0x1
	mov [esi+0x4b58], eax
	lea edx, [eax+eax*8]
	lea edx, [eax+edx*4]
	lea eax, [edi+0x4b5c]
	lea edx, [esi+edx*4+0x4b5c]
	mov dword [esp+0x8], 0x94
	mov [esp+0x4], edx
	mov [esp], eax
	call memcpy
	test ebx, ebx
	jns LAN_SaveServersToCache_60
LAN_SaveServersToCache_20:
	call CL_SortGlobalServers
	mov eax, [ebp-0x2c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x4
	mov ebx, cls
	lea eax, [ebx+0x4b58]
	mov [esp], eax
	call FS_Write
	mov eax, [ebp-0x2c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x4
	lea eax, [ebx+0x2d75dc]
	mov [esp], eax
	call FS_Write
	mov dword [ebp-0x1c], 0x2d7480
	mov eax, [ebp-0x2c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x4
	lea eax, [ebp-0x1c]
	mov [esp], eax
	call FS_Write
	mov eax, [ebp-0x2c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x2d2a80
	lea eax, [ebx+0x4b5c]
	mov [esp], eax
	call FS_Write
	mov eax, [ebp-0x2c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x4a00
	add ebx, 0x2d75e0
	mov [esp], ebx
	call FS_Write
	mov eax, [ebp-0x2c]
	mov [esp], eax
	call FS_FCloseFile
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;LAN_GetServerAddressString(int, int, char*, int)
LAN_GetServerAddressString:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov esi, [ebp+0x10]
	mov edi, [ebp+0x14]
	cmp eax, 0x1
	jz LAN_GetServerAddressString_10
	cmp eax, 0x2
	jz LAN_GetServerAddressString_20
	test eax, eax
	jz LAN_GetServerAddressString_30
LAN_GetServerAddressString_40:
	mov byte [esi], 0x0
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
LAN_GetServerAddressString_30:
	cmp edx, 0x7f
	ja LAN_GetServerAddressString_40
	lea eax, [edx+edx*8]
	lea eax, [edx+eax*4]
	shl eax, 0x2
	add eax, cls
	add eax, 0x140
	mov ecx, [eax+0x8]
	mov [ebp-0x3c], ecx
	mov edx, [eax+0xc]
	mov [ebp-0x38], edx
	mov eax, [eax+0x10]
	mov [ebp-0x34], eax
LAN_GetServerAddressString_50:
	mov [esp], ecx
	mov [esp+0x4], edx
LAN_GetServerAddressString_60:
	mov [esp+0x8], eax
	call NET_AdrToString
	mov [ebp+0x10], edi
	mov [ebp+0xc], eax
	mov [ebp+0x8], esi
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp Q_strncpyz
LAN_GetServerAddressString_10:
	test edx, edx
	js LAN_GetServerAddressString_40
	mov ecx, cls
	cmp edx, [ecx+0x4b58]
	jge LAN_GetServerAddressString_40
	lea eax, [edx+edx*8]
	lea eax, [edx+eax*4]
	lea eax, [ecx+eax*4+0x4b50]
	mov ecx, [eax+0xc]
	mov [ebp-0x30], ecx
	mov edx, [eax+0x10]
	mov [ebp-0x2c], edx
	mov eax, [eax+0x14]
	mov [ebp-0x28], eax
	jmp LAN_GetServerAddressString_50
LAN_GetServerAddressString_20:
	cmp edx, 0x7f
	ja LAN_GetServerAddressString_40
	lea eax, [edx+edx*8]
	lea eax, [edx+eax*4]
	shl eax, 0x2
	add eax, cls
	lea edx, [eax+0x2d75e0]
	mov ebx, [eax+0x2d75e0]
	mov [ebp-0x24], ebx
	mov ecx, [edx+0x4]
	mov [ebp-0x20], ecx
	mov eax, [edx+0x8]
	mov [ebp-0x1c], eax
	mov [esp], ebx
	mov [esp+0x4], ecx
	jmp LAN_GetServerAddressString_60


;Initialized global or static variables of cl_ui_pc_mp:
SECTION .data


;Initialized constant data of cl_ui_pc_mp:
SECTION .rdata


;Zero initialized global or static variables of cl_ui_pc_mp:
SECTION .bss


;All cstrings:
SECTION .rdata
_cstring_servercachedat:		db "servercache.dat",0



;All constant floats and doubles:
SECTION .rdata

