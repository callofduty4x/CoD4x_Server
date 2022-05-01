;Imports of cl_ui_pc_mp:
	extern cls
	extern _Z15NET_StringToAdrPKcP8netadr_t
	extern _Z10I_strncpyzPcPKci
	extern _Z14NET_CompareAdr8netadr_tS_
	extern Com_Memcpy
	extern _Z19FS_SV_FOpenFileReadPKcPi
	extern _Z7FS_ReadPvii
	extern _Z13FS_FCloseFilei
	extern _Z20CL_SortGlobalServersv
	extern _Z20FS_SV_FOpenFileWritePKc
	extern _Z8FS_WritePKvii
	extern _Z20NET_CompareAdrSignedP8netadr_tS0_
	extern memcpy
	extern _Z15NET_AdrToString8netadr_t

;Exports of cl_ui_pc_mp:
	global _Z13LAN_AddServeriPKcS0_
	global _Z16LAN_RemoveServeriPKc
	global _Z21LAN_LoadCachedServersv
	global _Z22LAN_SaveServersToCachev
	global _Z26LAN_GetServerAddressStringiiPci


SECTION .text


;LAN_AddServer(int, char const*, char const*)
_Z13LAN_AddServeriPKcS0_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	cmp dword [ebp+0x8], 0x2
	jz _Z13LAN_AddServeriPKcS0__10
_Z13LAN_AddServeriPKcS0__20:
	mov eax, 0xffffffff
_Z13LAN_AddServeriPKcS0__50:
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z13LAN_AddServeriPKcS0__10:
	mov ebx, cls
	cmp dword [ebx+0x2d75dc], 0x7f
	jg _Z13LAN_AddServeriPKcS0__20
	lea eax, [ebp-0x3c]
	mov [esp+0x4], eax
	mov eax, [ebp+0x10]
	mov [esp], eax
	call _Z15NET_StringToAdrPKcP8netadr_t
	test eax, eax
	jz _Z13LAN_AddServeriPKcS0__30
	mov eax, [ebx+0x2d75dc]
	test eax, eax
	jg _Z13LAN_AddServeriPKcS0__40
	mov esi, cls
_Z13LAN_AddServeriPKcS0__70:
	mov edx, [esi+0x2d75dc]
_Z13LAN_AddServeriPKcS0__90:
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
	call _Z10I_strncpyzPcPKci
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
	jmp _Z13LAN_AddServeriPKcS0__50
_Z13LAN_AddServeriPKcS0__30:
	mov eax, 0xfffffffe
	jmp _Z13LAN_AddServeriPKcS0__50
_Z13LAN_AddServeriPKcS0__40:
	mov dword [ebp-0x4c], 0x0
	lea edi, [ebx+0x2d75e0]
	jmp _Z13LAN_AddServeriPKcS0__60
_Z13LAN_AddServeriPKcS0__80:
	add dword [ebp-0x4c], 0x1
	add edi, 0x94
	mov esi, cls
	mov eax, [ebp-0x4c]
	cmp eax, [esi+0x2d75dc]
	jge _Z13LAN_AddServeriPKcS0__70
_Z13LAN_AddServeriPKcS0__60:
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
	call _Z14NET_CompareAdr8netadr_tS_
	test eax, eax
	jz _Z13LAN_AddServeriPKcS0__80
	mov esi, cls
	mov edx, [esi+0x2d75dc]
	cmp edx, [ebp-0x4c]
	jle _Z13LAN_AddServeriPKcS0__90
	xor eax, eax
	jmp _Z13LAN_AddServeriPKcS0__50


;LAN_RemoveServer(int, char const*)
_Z16LAN_RemoveServeriPKc:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	cmp dword [ebp+0x8], 0x2
	jz _Z16LAN_RemoveServeriPKc_10
_Z16LAN_RemoveServeriPKc_20:
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z16LAN_RemoveServeriPKc_10:
	lea eax, [ebp-0x3c]
	mov [esp+0x4], eax
	mov eax, [ebp+0xc]
	mov [esp], eax
	call _Z15NET_StringToAdrPKcP8netadr_t
	mov eax, cls
	mov edx, [eax+0x2d75dc]
	test edx, edx
	jle _Z16LAN_RemoveServeriPKc_20
	mov dword [ebp-0x50], 0x0
	add eax, 0x2d75e0
	mov [ebp-0x4c], eax
	mov edx, eax
	jmp _Z16LAN_RemoveServeriPKc_30
_Z16LAN_RemoveServeriPKc_40:
	add dword [ebp-0x50], 0x1
	add dword [ebp-0x4c], 0x94
	mov eax, cls
	mov edx, [ebp-0x50]
	cmp edx, [eax+0x2d75dc]
	jge _Z16LAN_RemoveServeriPKc_20
	mov edx, [ebp-0x4c]
_Z16LAN_RemoveServeriPKc_30:
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
	call _Z14NET_CompareAdr8netadr_tS_
	test eax, eax
	jz _Z16LAN_RemoveServeriPKc_40
	mov edi, cls
	mov eax, [edi+0x2d75dc]
	sub eax, 0x1
	cmp [ebp-0x50], eax
	jl _Z16LAN_RemoveServeriPKc_50
_Z16LAN_RemoveServeriPKc_70:
	mov [edi+0x2d75dc], eax
	jmp _Z16LAN_RemoveServeriPKc_20
_Z16LAN_RemoveServeriPKc_50:
	mov edx, [ebp-0x50]
	lea eax, [edx+edx*8]
	lea eax, [edx+eax*4]
	lea esi, [eax*4]
	mov ebx, edx
_Z16LAN_RemoveServeriPKc_60:
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
	jl _Z16LAN_RemoveServeriPKc_60
	jmp _Z16LAN_RemoveServeriPKc_70


;LAN_LoadCachedServers()
_Z21LAN_LoadCachedServersv:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x20
	lea eax, [ebp-0xc]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_servercachedat
	call _Z19FS_SV_FOpenFileReadPKcPi
	test eax, eax
	jnz _Z21LAN_LoadCachedServersv_10
_Z21LAN_LoadCachedServersv_30:
	mov eax, cls
	mov dword [eax+0x4b58], 0x0
	mov dword [eax+0x2d75dc], 0x0
_Z21LAN_LoadCachedServersv_40:
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
_Z21LAN_LoadCachedServersv_10:
	mov ebx, [ebp-0xc]
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x4
	lea eax, [ebp-0x14]
	mov [esp], eax
	call _Z7FS_ReadPvii
	cmp eax, 0x4
	jz _Z21LAN_LoadCachedServersv_20
_Z21LAN_LoadCachedServersv_50:
	xor ebx, ebx
_Z21LAN_LoadCachedServersv_60:
	mov eax, [ebp-0xc]
	mov [esp], eax
	call _Z13FS_FCloseFilei
	test ebx, ebx
	jz _Z21LAN_LoadCachedServersv_30
	call _Z20CL_SortGlobalServersv
	jmp _Z21LAN_LoadCachedServersv_40
_Z21LAN_LoadCachedServersv_20:
	cmp dword [ebp-0x14], 0x3
	jnz _Z21LAN_LoadCachedServersv_50
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x4
	mov esi, cls
	lea eax, [esi+0x4b58]
	mov [esp], eax
	call _Z7FS_ReadPvii
	cmp eax, 0x4
	jnz _Z21LAN_LoadCachedServersv_50
	cmp dword [esi+0x4b58], 0x4e1f
	ja _Z21LAN_LoadCachedServersv_50
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x4
	lea eax, [esi+0x2d75dc]
	mov [esp], eax
	call _Z7FS_ReadPvii
	cmp eax, 0x4
	jnz _Z21LAN_LoadCachedServersv_50
	cmp dword [esi+0x2d75dc], 0x7f
	ja _Z21LAN_LoadCachedServersv_50
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x4
	lea eax, [ebp-0x10]
	mov [esp], eax
	call _Z7FS_ReadPvii
	cmp eax, 0x4
	jnz _Z21LAN_LoadCachedServersv_50
	cmp dword [ebp-0x10], 0x2d7480
	jnz _Z21LAN_LoadCachedServersv_50
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x2d2a80
	lea eax, [esi+0x4b5c]
	mov [esp], eax
	call _Z7FS_ReadPvii
	cmp eax, 0x2d2a80
	jnz _Z21LAN_LoadCachedServersv_50
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x4a00
	lea eax, [esi+0x2d75e0]
	mov [esp], eax
	call _Z7FS_ReadPvii
	cmp eax, 0x4a00
	jnz _Z21LAN_LoadCachedServersv_50
	mov ebx, 0x1
	jmp _Z21LAN_LoadCachedServersv_60


;LAN_SaveServersToCache()
_Z22LAN_SaveServersToCachev:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov dword [esp], _cstring_servercachedat
	call _Z20FS_SV_FOpenFileWritePKc
	mov [ebp-0x2c], eax
	test eax, eax
	jnz _Z22LAN_SaveServersToCachev_10
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z22LAN_SaveServersToCachev_10:
	mov dword [ebp-0x20], 0x3
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x4
	lea eax, [ebp-0x20]
	mov [esp], eax
	call _Z8FS_WritePKvii
	mov esi, cls
	mov edx, [esi+0x4b58]
	sub edx, 0x1
	js _Z22LAN_SaveServersToCachev_20
	mov [ebp-0x30], esi
	jmp _Z22LAN_SaveServersToCachev_30
_Z22LAN_SaveServersToCachev_50:
	test edx, edx
	jz _Z22LAN_SaveServersToCachev_20
	lea ebx, [edx-0x1]
	lea eax, [ebx+ebx*8]
	lea eax, [ebx+eax*4]
	lea eax, [esi+eax*4+0x4b5c]
	mov [esp+0x4], eax
	lea eax, [ecx+esi+0x4b5c]
	mov [esp], eax
	call _Z20NET_CompareAdrSignedP8netadr_tS0_
	test eax, eax
	jz _Z22LAN_SaveServersToCachev_40
	test ebx, ebx
	js _Z22LAN_SaveServersToCachev_20
_Z22LAN_SaveServersToCachev_60:
	mov edx, ebx
	mov esi, [ebp-0x30]
_Z22LAN_SaveServersToCachev_30:
	lea eax, [edx+edx*8]
	lea eax, [edx+eax*4]
	lea ecx, [eax*4]
	lea edi, [ecx+esi]
	cmp byte [edi+0x4b78], 0x2
	jbe _Z22LAN_SaveServersToCachev_50
	lea ebx, [edx-0x1]
_Z22LAN_SaveServersToCachev_40:
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
	jns _Z22LAN_SaveServersToCachev_60
_Z22LAN_SaveServersToCachev_20:
	call _Z20CL_SortGlobalServersv
	mov eax, [ebp-0x2c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x4
	mov ebx, cls
	lea eax, [ebx+0x4b58]
	mov [esp], eax
	call _Z8FS_WritePKvii
	mov eax, [ebp-0x2c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x4
	lea eax, [ebx+0x2d75dc]
	mov [esp], eax
	call _Z8FS_WritePKvii
	mov dword [ebp-0x1c], 0x2d7480
	mov eax, [ebp-0x2c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x4
	lea eax, [ebp-0x1c]
	mov [esp], eax
	call _Z8FS_WritePKvii
	mov eax, [ebp-0x2c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x2d2a80
	lea eax, [ebx+0x4b5c]
	mov [esp], eax
	call _Z8FS_WritePKvii
	mov eax, [ebp-0x2c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x4a00
	add ebx, 0x2d75e0
	mov [esp], ebx
	call _Z8FS_WritePKvii
	mov eax, [ebp-0x2c]
	mov [esp], eax
	call _Z13FS_FCloseFilei
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;LAN_GetServerAddressString(int, int, char*, int)
_Z26LAN_GetServerAddressStringiiPci:
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
	jz _Z26LAN_GetServerAddressStringiiPci_10
	cmp eax, 0x2
	jz _Z26LAN_GetServerAddressStringiiPci_20
	test eax, eax
	jz _Z26LAN_GetServerAddressStringiiPci_30
_Z26LAN_GetServerAddressStringiiPci_40:
	mov byte [esi], 0x0
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z26LAN_GetServerAddressStringiiPci_30:
	cmp edx, 0x7f
	ja _Z26LAN_GetServerAddressStringiiPci_40
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
_Z26LAN_GetServerAddressStringiiPci_50:
	mov [esp], ecx
	mov [esp+0x4], edx
_Z26LAN_GetServerAddressStringiiPci_60:
	mov [esp+0x8], eax
	call _Z15NET_AdrToString8netadr_t
	mov [ebp+0x10], edi
	mov [ebp+0xc], eax
	mov [ebp+0x8], esi
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z10I_strncpyzPcPKci
_Z26LAN_GetServerAddressStringiiPci_10:
	test edx, edx
	js _Z26LAN_GetServerAddressStringiiPci_40
	mov ecx, cls
	cmp edx, [ecx+0x4b58]
	jge _Z26LAN_GetServerAddressStringiiPci_40
	lea eax, [edx+edx*8]
	lea eax, [edx+eax*4]
	lea eax, [ecx+eax*4+0x4b50]
	mov ecx, [eax+0xc]
	mov [ebp-0x30], ecx
	mov edx, [eax+0x10]
	mov [ebp-0x2c], edx
	mov eax, [eax+0x14]
	mov [ebp-0x28], eax
	jmp _Z26LAN_GetServerAddressStringiiPci_50
_Z26LAN_GetServerAddressStringiiPci_20:
	cmp edx, 0x7f
	ja _Z26LAN_GetServerAddressStringiiPci_40
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
	jmp _Z26LAN_GetServerAddressStringiiPci_60


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

