;Imports of cl_main_pc_mp:
	extern _Z20NET_CompareAdrSignedP8netadr_tS0_
	extern cmd_args
	extern clientUIActives
	extern _Z10Com_PrintfiPKcz
	extern _Z9I_stricmpPKcS0_
	extern _Z14SND_StopSounds20snd_stopsounds_arg_t
	extern clientConnections
	extern cl_serverLoadingMap
	extern g_waitingForServer
	extern _Z19FS_DisablePureCheckh
	extern _Z8SV_Framei
	extern _Z13CL_Disconnecti
	extern _Z9Con_Closei
	extern cls
	extern _Z10I_strncpyzPcPKci
	extern _Z15NET_StringToAdrPKcP8netadr_t
	extern _Z8BigShorts
	extern _Z18NET_IsLocalAddress8netadr_t
	extern cl_cdkey
	extern sprintf
	extern cl_cdkeychecksum
	extern _Z10I_strnicmpPKcS0_i
	extern _Z9Com_Error11errorParm_tPKcz
	extern _Z20Com_HasPlayerProfilev
	extern g_qport
	extern _Z18Cbuf_ExecuteBufferiiPKc
	extern _Z11UI_CloseAlli
	extern _Z20SCR_UpdateLoadScreenv
	extern _Z18SV_KillLocalServerv
	extern _Z16Sys_Millisecondsv
	extern _Z2vaPKcz
	extern _Z12Cbuf_AddTextiPKc
	extern _Z15DL_DownloadLoopv
	extern _Z11DL_DLIsMotdv
	extern _Z22CL_ClearStaticDownloadv
	extern _Z21CL_AddReliableCommandiPKc
	extern FS_ReadFile
	extern _Z20Dvar_SetStringByNamePKcS0_
	extern FS_FreeFile
	extern fs_homepath
	extern _Z14FS_BuildOSPathPKcS0_S0_Pc
	extern rename
	extern legacyHacks
	extern _Z15CL_NextDownloadi
	extern _Z11FS_CopyFilePcS_
	extern remove
	extern _Z14NET_CompareAdr8netadr_tS_
	extern _Z18NET_OutOfBandPrint8netsrc_t8netadr_tPKc
	extern cl_serverStatusResendTime
	extern _Z16Info_ValueForKeyPKcS0_
	extern atoi
	extern memset
	extern _Z10Com_MemsetPvii
	extern _Z12Dvar_GetBoolPKc
	extern _Z16CL_GetServerListiPP12serverInfo_tPi
	extern _Z14MSG_ReadStringP5msg_t
	extern _Z14Dvar_GetStringPKc
	extern _Z11Com_DPrintfiPKcz
	extern _Z15NET_AdrToString8netadr_t
	extern qsort
	extern _Z18MSG_ReadStringLineP5msg_t
	extern _Z11Com_sprintfPciPKcz
	extern sscanf
	extern strchr
	extern cl_pinglist
	extern memcpy
	extern _Z15Com_AddToStringPKcPciii
	extern _Z17NET_OutOfBandData8netsrc_t8netadr_tPKhi

;Exports of cl_main_pc_mp:
	global s_playerMute
	global rconGlob
	global _Z19CL_CompareAdrSignedPKvS0_
	global _Z11CL_RconInitv
	global _Z12CL_Connect_fv
	global _Z13CL_MutePlayerii
	global _Z14CL_WWWDownloadv
	global _Z15CL_ServerStatusPcS_i
	global _Z16CL_CDKeyValidatePKcS0_
	global _Z16CL_IsPlayerMutedii
	global _Z16CL_SetServerInfoP12serverInfo_tPKci
	global _Z17CL_ClearMutedListv
	global _Z17CL_ServerStatus_fv
	global _Z18CL_GlobalServers_fv
	global _Z19CL_FindServerByAddrP8netadr_tP12serverInfo_tii
	global _Z19CL_ServerInfoPacket8netadr_tP5msg_ti
	global _Z20CL_ResetPlayerMutingi
	global _Z20CL_SortGlobalServersv
	global _Z23CL_ServerStatusResponse8netadr_tP5msg_t
	global _Z24CL_ServersResponsePacket8netadr_tP5msg_t
	global _Z25CL_SetServerInfoByAddress8netadr_tPKci
	global _Z9CL_Ping_fv
	global _Z9CL_Rcon_fv
	global cl_serverStatusList


SECTION .text


;CL_CompareAdrSigned(void const*, void const*)
_Z19CL_CompareAdrSignedPKvS0_:
	push ebp
	mov ebp, esp
	pop ebp
	jmp _Z20NET_CompareAdrSignedP8netadr_tS0_
	nop


;CL_RconInit()
_Z11CL_RconInitv:
	push ebp
	mov ebp, esp
	mov byte [rconGlob], 0x0
	mov dword [rconGlob+0x18], 0x1
	pop ebp
	ret


;CL_Connect_f()
_Z12CL_Connect_fv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov ecx, cmd_args
	mov ebx, [ecx]
	mov edx, [ecx+ebx*4+0x44]
	cmp edx, 0x1
	jle _Z12CL_Connect_fv_10
	mov eax, clientUIActives
	cmp dword [eax+0xc], 0x2
	jle _Z12CL_Connect_fv_20
	cmp edx, 0x3
	jz _Z12CL_Connect_fv_30
_Z12CL_Connect_fv_40:
	mov dword [esp+0x4], _cstring_already_connecte
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
_Z12CL_Connect_fv_150:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z12CL_Connect_fv_30:
	mov dword [esp+0x4], _cstring_reconnect
	mov eax, [ecx+ebx*4+0x64]
	mov eax, [eax+0x8]
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z12CL_Connect_fv_40
_Z12CL_Connect_fv_20:
	mov dword [esp], 0x0
	call _Z14SND_StopSounds20snd_stopsounds_arg_t
	mov eax, clientConnections
	mov byte [eax+0x24], 0x0
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x1
	jle _Z12CL_Connect_fv_50
	mov eax, [eax+edx*4+0x64]
	mov ebx, [eax+0x4]
_Z12CL_Connect_fv_200:
	mov edi, _cstring_localhost
	mov ecx, 0xa
	cld
	mov esi, ebx
	repe cmpsb
	mov edx, 0x0
	jz _Z12CL_Connect_fv_60
	movzx edx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub edx, ecx
_Z12CL_Connect_fv_60:
	test edx, edx
	jz _Z12CL_Connect_fv_70
_Z12CL_Connect_fv_190:
	mov eax, cl_serverLoadingMap
	mov byte [eax], 0x0
	mov eax, g_waitingForServer
	mov byte [eax], 0x0
	mov dword [esp], 0x0
	call _Z19FS_DisablePureCheckh
	mov dword [esp], 0x0
	call _Z8SV_Framei
	mov dword [esp], 0x0
	call _Z13CL_Disconnecti
	mov dword [esp], 0x0
	call _Z9Con_Closei
	mov dword [esp+0x8], 0x100
	mov [esp+0x4], ebx
	mov esi, cls
	add esi, 0x8
	mov [esp], esi
	call _Z10I_strncpyzPcPKci
	mov ebx, clientConnections
	lea eax, [ebx+0x10]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z15NET_StringToAdrPKcP8netadr_t
	test eax, eax
	jz _Z12CL_Connect_fv_80
	cmp word [ebx+0x18], 0x0
	jz _Z12CL_Connect_fv_90
_Z12CL_Connect_fv_180:
	movsx eax, word [ebx+0x18]
	mov [esp], eax
	call _Z8BigShorts
	cwde
	mov [esp+0x1c], eax
	movzx eax, byte [ebx+0x17]
	mov [esp+0x18], eax
	movzx eax, byte [ebx+0x16]
	mov [esp+0x14], eax
	movzx eax, byte [ebx+0x15]
	mov [esp+0x10], eax
	movzx eax, byte [ebx+0x14]
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_s_resolved_to_ii
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	mov ecx, [ebx+0x10]
	mov [ebp-0x38], ecx
	mov edx, [ebx+0x14]
	mov [ebp-0x34], edx
	mov eax, [ebx+0x18]
	mov [ebp-0x30], eax
	mov [esp], ecx
	mov [esp+0x4], edx
	mov [esp+0x8], eax
	call _Z18NET_IsLocalAddress8netadr_t
	test eax, eax
	jnz _Z12CL_Connect_fv_100
	xor edx, edx
	mov ecx, cl_cdkey
	lea ebx, [ecx+0x10]
_Z12CL_Connect_fv_140:
	movsx eax, byte [ecx]
	xor edx, eax
	mov eax, 0x8
	jmp _Z12CL_Connect_fv_110
_Z12CL_Connect_fv_130:
	shr edx, 1
	xor edx, 0xa001
	sub eax, 0x1
	jz _Z12CL_Connect_fv_120
_Z12CL_Connect_fv_110:
	test dl, 0x1
	jnz _Z12CL_Connect_fv_130
	shr edx, 1
	sub eax, 0x1
	jnz _Z12CL_Connect_fv_110
_Z12CL_Connect_fv_120:
	add ecx, 0x1
	cmp ecx, ebx
	jnz _Z12CL_Connect_fv_140
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_04x
	lea ebx, [ebp-0x1d]
	mov [esp], ebx
	call sprintf
	mov dword [esp+0x8], 0x4
	mov eax, cl_cdkeychecksum
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z10I_strnicmpPKcS0_i
	test eax, eax
	jz _Z12CL_Connect_fv_100
	mov dword [esp+0x4], _cstring_exe_err_invalid_
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z12CL_Connect_fv_150
_Z12CL_Connect_fv_100:
	call _Z20Com_HasPlayerProfilev
	test al, al
	jz _Z12CL_Connect_fv_160
	mov ebx, clientConnections
	mov ecx, [ebx+0x10]
	mov [ebp-0x2c], ecx
	mov edx, [ebx+0x14]
	mov [ebp-0x28], edx
	mov eax, [ebx+0x18]
	mov [ebp-0x24], eax
	mov [esp], ecx
	mov [esp+0x4], edx
	mov [esp+0x8], eax
	call _Z18NET_IsLocalAddress8netadr_t
	test eax, eax
	jnz _Z12CL_Connect_fv_170
	mov eax, clientUIActives
	mov dword [eax+0xc], 0x3
	mov edx, ebx
_Z12CL_Connect_fv_210:
	mov dword [eax+0x4], 0x0
	mov byte [eax+0x8], 0x0
	mov dword [edx+0x1c], 0xfffe7961
	mov dword [edx+0x20], 0x0
	mov eax, g_qport
	mov eax, [eax]
	mov [edx], eax
	mov dword [esp+0x8], _cstring_selectstringtabl
	mov dword [esp+0x4], 0x0
	mov dword [esp], 0x0
	call _Z18Cbuf_ExecuteBufferiiPKc
	mov dword [esp], 0x0
	call _Z11UI_CloseAlli
	call _Z20SCR_UpdateLoadScreenv
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z12CL_Connect_fv_160:
	mov dword [esp+0x4], _cstring_platform_notsign
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z12CL_Connect_fv_90:
	mov dword [esp], 0x7120
	call _Z8BigShorts
	mov [ebx+0x18], ax
	jmp _Z12CL_Connect_fv_180
_Z12CL_Connect_fv_80:
	mov dword [esp+0x4], _cstring_bad_server_addre
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	mov eax, clientUIActives
	mov dword [eax+0xc], 0x0
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z12CL_Connect_fv_70:
	call _Z18SV_KillLocalServerv
	jmp _Z12CL_Connect_fv_190
_Z12CL_Connect_fv_10:
	mov dword [esp+0x4], _cstring_usage_connect_se
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z12CL_Connect_fv_50:
	mov ebx, _cstring_null
	jmp _Z12CL_Connect_fv_200
_Z12CL_Connect_fv_170:
	mov ebx, clientUIActives
	mov dword [ebx+0xc], 0x4
	call _Z16Sys_Millisecondsv
	mov edx, clientConnections
	mov [edx+0xc], eax
	mov eax, ebx
	jmp _Z12CL_Connect_fv_210


;CL_MutePlayer(int, int)
_Z13CL_MutePlayerii:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov edx, [ebp+0xc]
	cmp byte [edx+s_playerMute], 0x0
	setz al
	mov [edx+s_playerMute], al
	test al, al
	jz _Z13CL_MutePlayerii_10
	mov [esp+0x4], edx
	mov dword [esp], _cstring_muteplayer_i
	call _Z2vaPKcz
	mov [ebp+0xc], eax
	mov dword [ebp+0x8], 0x0
	leave
	jmp _Z12Cbuf_AddTextiPKc
_Z13CL_MutePlayerii_10:
	mov [esp+0x4], edx
	mov dword [esp], _cstring_unmuteplayer_i
	call _Z2vaPKcz
	mov [ebp+0xc], eax
	mov dword [ebp+0x8], 0x0
	leave
	jmp _Z12Cbuf_AddTextiPKc
	nop


;CL_WWWDownload()
_Z14CL_WWWDownloadv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x12c
	call _Z15DL_DownloadLoopv
	mov ebx, eax
	test eax, eax
	jnz _Z14CL_WWWDownloadv_10
_Z14CL_WWWDownloadv_60:
	add esp, 0x12c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z14CL_WWWDownloadv_10:
	call _Z11DL_DLIsMotdv
	mov esi, eax
	test al, al
	jz _Z14CL_WWWDownloadv_20
	sub ebx, 0x1
	jz _Z14CL_WWWDownloadv_30
_Z14CL_WWWDownloadv_70:
	mov eax, cls
	mov dword [eax+0x2dc6b4], 0x0
	add esp, 0x12c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z14CL_WWWDownloadv_20:
	sub ebx, 0x1
	jz _Z14CL_WWWDownloadv_40
	mov esi, cls
	mov edx, [esi+0x2dc6b0]
	test edx, edx
	jz _Z14CL_WWWDownloadv_50
	lea eax, [esi+0x2dc198]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_download_failure
	call _Z2vaPKcz
	mov ebx, eax
	mov dword [esi+0x2dc6b0], 0x0
	call _Z22CL_ClearStaticDownloadv
	mov [esp+0x4], ebx
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z14CL_WWWDownloadv_60
_Z14CL_WWWDownloadv_50:
	lea eax, [esi+0x2dc198]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_download_failure
	mov dword [esp], 0xe
	call _Z10Com_PrintfiPKcz
	mov dword [esp+0x4], _cstring_wwwdl_fail
	mov dword [esp], 0x0
	call _Z21CL_AddReliableCommandiPKc
	mov dword [esi+0x2dc6b4], 0x0
	jmp _Z14CL_WWWDownloadv_60
_Z14CL_WWWDownloadv_30:
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_motdtxt
	call FS_ReadFile
	test eax, eax
	js _Z14CL_WWWDownloadv_70
	mov eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_motd
	call _Z20Dvar_SetStringByNamePKcS0_
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call FS_FreeFile
	jmp _Z14CL_WWWDownloadv_70
_Z14CL_WWWDownloadv_40:
	mov eax, cls
	mov dword [eax+0x2dc094], 0x0
	lea eax, [ebp-0x11c]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_null
	mov eax, cls
	add eax, 0x2dc6bc
	mov [esp+0x4], eax
	mov eax, fs_homepath
	mov eax, [eax]
	mov eax, [eax+0xc]
	mov [esp], eax
	call _Z14FS_BuildOSPathPKcS0_S0_Pc
	cld
	mov ecx, 0xffffffff
	lea edi, [ebp-0x11c]
	mov eax, esi
	repne scasb
	not ecx
	mov byte [ecx+ebp-0x11e], 0x0
	lea eax, [ebp-0x11c]
	mov [esp+0x4], eax
	mov ebx, cls
	add ebx, 0x2dc098
	mov [esp], ebx
	call rename
	test eax, eax
	jnz _Z14CL_WWWDownloadv_80
_Z14CL_WWWDownloadv_110:
	mov eax, cls
	mov byte [eax+0x2dc198], 0x0
	mov byte [eax+0x2dc098], 0x0
	mov dword [esp+0x8], 0x40
	mov dword [esp+0x4], _cstring_null
	mov eax, legacyHacks
	add eax, 0xc
	mov [esp], eax
	call _Z10I_strncpyzPcPKci
	mov eax, cls
	mov ecx, [eax+0x2dc6b0]
	test ecx, ecx
	jz _Z14CL_WWWDownloadv_90
	mov dword [esp+0x4], _cstring_reconnect1
	mov dword [esp], 0x0
	call _Z12Cbuf_AddTextiPKc
_Z14CL_WWWDownloadv_100:
	mov eax, cls
	mov dword [eax+0x2dc6b4], 0x0
	mov dword [esp], 0x0
	call _Z15CL_NextDownloadi
	jmp _Z14CL_WWWDownloadv_60
_Z14CL_WWWDownloadv_90:
	mov dword [esp+0x4], _cstring_wwwdl_done
	mov dword [esp], 0x0
	call _Z21CL_AddReliableCommandiPKc
	jmp _Z14CL_WWWDownloadv_100
_Z14CL_WWWDownloadv_80:
	lea eax, [ebp-0x11c]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z11FS_CopyFilePcS_
	mov [esp], ebx
	call remove
	jmp _Z14CL_WWWDownloadv_110


;CL_ServerStatus(char*, char*, int)
_Z15CL_ServerStatusPcS_i:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xac
	mov edx, [ebp+0x8]
	test edx, edx
	jz _Z15CL_ServerStatusPcS_i_10
	lea eax, [ebp-0x6c]
	mov [esp+0x4], eax
	mov [esp], edx
	call _Z15NET_StringToAdrPKcP8netadr_t
	test eax, eax
	jz _Z15CL_ServerStatusPcS_i_20
	movzx eax, word [ebp-0x64]
	mov [ebp-0x7a], ax
	movzx edx, byte [ebp-0x65]
	mov [ebp-0x7b], dl
	movzx eax, byte [ebp-0x66]
	mov [ebp-0x7c], al
	movzx edx, byte [ebp-0x67]
	mov [ebp-0x7d], dl
	movzx eax, byte [ebp-0x68]
	mov [ebp-0x7e], al
	mov edx, [ebp-0x6c]
	mov [ebp-0x8c], edx
	xor esi, esi
	mov ebx, cl_serverStatusList
_Z15CL_ServerStatusPcS_i_40:
	mov ecx, [ebx+0x2000]
	mov [ebp-0x30], ecx
	mov edx, [ebx+0x2004]
	mov [ebp-0x2c], edx
	mov edi, [ebx+0x2008]
	mov [ebp-0x28], edi
	movzx eax, word [ebp-0x7a]
	mov [ebp-0x40], ax
	movzx eax, byte [ebp-0x7b]
	mov [ebp-0x41], al
	movzx eax, byte [ebp-0x7c]
	mov [ebp-0x42], al
	movzx eax, byte [ebp-0x7d]
	mov [ebp-0x43], al
	movzx eax, byte [ebp-0x7e]
	mov [ebp-0x44], al
	mov edi, [ebp-0x8c]
	mov [ebp-0x48], edi
	mov [esp+0xc], ecx
	mov [esp+0x10], edx
	mov eax, [ebx+0x2008]
	mov [esp+0x14], eax
	mov [esp], edi
	mov eax, [ebp-0x44]
	mov [esp+0x4], eax
	mov eax, [ebp-0x40]
	mov [esp+0x8], eax
	call _Z14NET_CompareAdr8netadr_tS_
	test eax, eax
	jnz _Z15CL_ServerStatusPcS_i_30
	add esi, 0x1
	add ebx, 0x2020
	cmp esi, 0x10
	jnz _Z15CL_ServerStatusPcS_i_40
	xor edx, edx
	mov eax, cl_serverStatusList
_Z15CL_ServerStatusPcS_i_60:
	mov edi, [eax+0x201c]
	test edi, edi
	jnz _Z15CL_ServerStatusPcS_i_50
	add edx, 0x1
	add eax, 0x2020
	cmp edx, 0x10
	jnz _Z15CL_ServerStatusPcS_i_60
_Z15CL_ServerStatusPcS_i_90:
	xor esi, esi
	jmp _Z15CL_ServerStatusPcS_i_70
_Z15CL_ServerStatusPcS_i_100:
	mov eax, [edx+0x2010]
	add edx, 0x2020
	cmp ebx, eax
	jle _Z15CL_ServerStatusPcS_i_80
	mov esi, ecx
_Z15CL_ServerStatusPcS_i_70:
	mov edx, esi
	shl edx, 0x5
	mov eax, esi
	shl eax, 0xd
	lea eax, [edx+eax]
	mov ebx, [eax+cl_serverStatusList+0x2010]
	cmp esi, 0xffffffff
	jz _Z15CL_ServerStatusPcS_i_90
	lea edx, [eax+cl_serverStatusList+0x2020]
	mov ecx, esi
_Z15CL_ServerStatusPcS_i_80:
	add ecx, 0x1
	cmp ecx, 0xf
	jle _Z15CL_ServerStatusPcS_i_100
_Z15CL_ServerStatusPcS_i_30:
	mov eax, esi
	shl eax, 0x5
	shl esi, 0xd
	lea esi, [eax+esi+cl_serverStatusList]
	mov [ebp-0x84], esi
_Z15CL_ServerStatusPcS_i_160:
	mov eax, [ebp+0xc]
	test eax, eax
	jz _Z15CL_ServerStatusPcS_i_110
	mov eax, [ebp-0x84]
	mov edi, [eax+0x2000]
	mov [ebp-0x60], edi
	mov esi, [eax+0x2004]
	mov [ebp-0x5c], esi
	mov ebx, [eax+0x2008]
	mov [ebp-0x58], ebx
	mov ecx, [ebp-0x6c]
	mov [ebp-0x54], ecx
	mov edx, [ebp-0x68]
	mov [ebp-0x50], edx
	mov eax, [ebp-0x64]
	mov [ebp-0x4c], eax
	mov [esp+0xc], edi
	mov [esp+0x10], esi
	mov [esp+0x14], ebx
	mov [esp], ecx
	mov [esp+0x4], edx
	mov [esp+0x8], eax
	call _Z14NET_CompareAdr8netadr_tS_
	test eax, eax
	jnz _Z15CL_ServerStatusPcS_i_120
	mov eax, [ebp-0x84]
	mov ebx, [eax+0x201c]
	test ebx, ebx
	jz _Z15CL_ServerStatusPcS_i_20
	mov edx, eax
	mov eax, [ebp-0x6c]
	mov [edx+0x2000], eax
	mov eax, [ebp-0x68]
	mov [edx+0x2004], eax
	mov eax, [ebp-0x64]
	mov [edx+0x2008], eax
	mov dword [edx+0x2018], 0x0
	mov dword [edx+0x2014], 0x1
	mov dword [edx+0x201c], 0x0
	call _Z16Sys_Millisecondsv
	mov edi, [ebp-0x84]
	mov [edi+0x2010], eax
	mov dword [edi+0x200c], 0x0
	mov ecx, [ebp-0x6c]
	mov [ebp-0x3c], ecx
	mov edx, [ebp-0x68]
	mov [ebp-0x38], edx
	mov eax, [ebp-0x64]
	mov [ebp-0x34], eax
_Z15CL_ServerStatusPcS_i_150:
	mov dword [esp+0x10], _cstring_getstatus
	mov [esp+0x4], ecx
	mov [esp+0x8], edx
	mov [esp+0xc], eax
	mov dword [esp], 0x0
	call _Z18NET_OutOfBandPrint8netsrc_t8netadr_tPKc
_Z15CL_ServerStatusPcS_i_20:
	xor eax, eax
_Z15CL_ServerStatusPcS_i_170:
	add esp, 0xac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z15CL_ServerStatusPcS_i_10:
	mov eax, cl_serverStatusList
	mov edx, cl_serverStatusList+0x20200
_Z15CL_ServerStatusPcS_i_130:
	mov word [eax+0x2008], 0x0
	mov dword [eax+0x201c], 0x1
	add eax, 0x2020
	cmp edx, eax
	jnz _Z15CL_ServerStatusPcS_i_130
	jmp _Z15CL_ServerStatusPcS_i_20
_Z15CL_ServerStatusPcS_i_120:
	mov edx, [ebp-0x84]
	mov esi, [edx+0x2014]
	test esi, esi
	jz _Z15CL_ServerStatusPcS_i_140
	mov ebx, [edx+0x2010]
	call _Z16Sys_Millisecondsv
	mov edx, cl_serverStatusResendTime
	mov edx, [edx]
	sub eax, [edx+0xc]
	cmp ebx, eax
	jge _Z15CL_ServerStatusPcS_i_20
	mov edi, [ebp-0x84]
	mov dword [edi+0x2018], 0x0
	mov dword [edi+0x2014], 0x1
	mov dword [edi+0x201c], 0x0
	mov dword [edi+0x200c], 0x0
	call _Z16Sys_Millisecondsv
	mov [edi+0x2010], eax
	mov ecx, [ebp-0x6c]
	mov [ebp-0x24], ecx
	mov edx, [ebp-0x68]
	mov [ebp-0x20], edx
	mov eax, [ebp-0x64]
	mov [ebp-0x1c], eax
	jmp _Z15CL_ServerStatusPcS_i_150
_Z15CL_ServerStatusPcS_i_110:
	mov edx, [ebp-0x84]
	mov dword [edx+0x201c], 0x1
	jmp _Z15CL_ServerStatusPcS_i_20
_Z15CL_ServerStatusPcS_i_50:
	mov eax, edx
	shl eax, 0x5
	shl edx, 0xd
	lea edx, [eax+edx+cl_serverStatusList]
	mov [ebp-0x84], edx
	jmp _Z15CL_ServerStatusPcS_i_160
_Z15CL_ServerStatusPcS_i_140:
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov edi, [ebp+0xc]
	mov [esp], edi
	call _Z10I_strncpyzPcPKci
	mov eax, [ebp-0x84]
	mov dword [eax+0x201c], 0x1
	mov dword [eax+0x2010], 0x0
	mov eax, 0x1
	jmp _Z15CL_ServerStatusPcS_i_170
	nop


;CL_CDKeyValidate(char const*, char const*)
_Z16CL_CDKeyValidatePKcS0_:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x20
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0xc]
	xor edx, edx
	mov ecx, 0x1
_Z16CL_CDKeyValidatePKcS0__40:
	movsx eax, byte [ecx+ebx-0x1]
	xor edx, eax
	mov eax, 0x8
	jmp _Z16CL_CDKeyValidatePKcS0__10
_Z16CL_CDKeyValidatePKcS0__30:
	shr edx, 1
	xor edx, 0xa001
	sub eax, 0x1
	jz _Z16CL_CDKeyValidatePKcS0__20
_Z16CL_CDKeyValidatePKcS0__10:
	test dl, 0x1
	jnz _Z16CL_CDKeyValidatePKcS0__30
	shr edx, 1
	sub eax, 0x1
	jnz _Z16CL_CDKeyValidatePKcS0__10
_Z16CL_CDKeyValidatePKcS0__20:
	add ecx, 0x1
	cmp ecx, 0x11
	jnz _Z16CL_CDKeyValidatePKcS0__40
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_04x
	lea ebx, [ebp-0xd]
	mov [esp], ebx
	call sprintf
	test esi, esi
	jz _Z16CL_CDKeyValidatePKcS0__50
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], esi
	mov [esp], ebx
	call _Z10I_strnicmpPKcS0_i
	test eax, eax
	jz _Z16CL_CDKeyValidatePKcS0__50
	xor eax, eax
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
_Z16CL_CDKeyValidatePKcS0__50:
	mov eax, 0x1
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret


;CL_IsPlayerMuted(int, int)
_Z16CL_IsPlayerMutedii:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0xc]
	movzx eax, byte [eax+s_playerMute]
	pop ebp
	ret
	nop


;CL_SetServerInfo(serverInfo_t*, char const*, int)
_Z16CL_SetServerInfoP12serverInfo_tPKci:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0xc]
	test ebx, ebx
	jz _Z16CL_SetServerInfoP12serverInfo_tPKci_10
	test esi, esi
	jz _Z16CL_SetServerInfoP12serverInfo_tPKci_20
	mov dword [esp+0x4], _cstring_clients
	mov [esp], esi
	call _Z16Info_ValueForKeyPKcS0_
	mov [esp], eax
	call atoi
	mov [ebx+0x11], al
	mov dword [esp+0x4], _cstring_hostname
	mov [esp], esi
	call _Z16Info_ValueForKeyPKcS0_
	mov dword [esp+0x8], 0x20
	mov [esp+0x4], eax
	lea eax, [ebx+0x29]
	mov [esp], eax
	call _Z10I_strncpyzPcPKci
	mov dword [esp+0x4], _cstring_mapname
	mov [esp], esi
	call _Z16Info_ValueForKeyPKcS0_
	mov dword [esp+0x8], 0x20
	mov [esp+0x4], eax
	lea eax, [ebx+0x49]
	mov [esp], eax
	call _Z10I_strncpyzPcPKci
	mov dword [esp+0x4], _cstring_sv_maxclients
	mov [esp], esi
	call _Z16Info_ValueForKeyPKcS0_
	mov [esp], eax
	call atoi
	mov [ebx+0x12], al
	mov dword [esp+0x4], _cstring_game
	mov [esp], esi
	call _Z16Info_ValueForKeyPKcS0_
	mov dword [esp+0x8], 0x18
	mov [esp+0x4], eax
	lea eax, [ebx+0x69]
	mov [esp], eax
	call _Z10I_strncpyzPcPKci
	mov dword [esp+0x4], _cstring_gametype
	mov [esp], esi
	call _Z16Info_ValueForKeyPKcS0_
	mov dword [esp+0x8], 0x10
	mov [esp+0x4], eax
	lea eax, [ebx+0x81]
	mov [esp], eax
	call _Z10I_strncpyzPcPKci
	mov dword [esp+0x4], _cstring_nettype
	mov [esp], esi
	call _Z16Info_ValueForKeyPKcS0_
	mov [esp], eax
	call atoi
	mov [ebx+0x10], al
	mov dword [esp+0x4], _cstring_minping
	mov [esp], esi
	call _Z16Info_ValueForKeyPKcS0_
	mov [esp], eax
	call atoi
	mov [ebx+0x1e], ax
	mov dword [esp+0x4], _cstring_maxping
	mov [esp], esi
	call _Z16Info_ValueForKeyPKcS0_
	mov [esp], eax
	call atoi
	mov [ebx+0x20], ax
	mov dword [esp+0x4], _cstring_sv_allowanonymou
	mov [esp], esi
	call _Z16Info_ValueForKeyPKcS0_
	mov [esp], eax
	call atoi
	mov [ebx+0xc], al
	mov dword [esp+0x4], _cstring_con_disabled
	mov [esp], esi
	call _Z16Info_ValueForKeyPKcS0_
	mov [esp], eax
	call atoi
	mov [ebx+0xf], al
	mov dword [esp+0x4], _cstring_pswrd
	mov [esp], esi
	call _Z16Info_ValueForKeyPKcS0_
	mov [esp], eax
	call atoi
	mov [ebx+0xd], al
	mov dword [esp+0x4], _cstring_pure
	mov [esp], esi
	call _Z16Info_ValueForKeyPKcS0_
	mov [esp], eax
	call atoi
	mov [ebx+0xe], al
	mov dword [esp+0x4], _cstring_ff
	mov [esp], esi
	call _Z16Info_ValueForKeyPKcS0_
	mov [esp], eax
	call atoi
	mov [ebx+0x14], al
	mov dword [esp+0x4], _cstring_kc
	mov [esp], esi
	call _Z16Info_ValueForKeyPKcS0_
	mov [esp], eax
	call atoi
	mov [ebx+0x15], al
	mov dword [esp+0x4], _cstring_hc
	mov [esp], esi
	call _Z16Info_ValueForKeyPKcS0_
	mov [esp], eax
	call atoi
	mov [ebx+0x16], al
	mov dword [esp+0x4], _cstring_od
	mov [esp], esi
	call _Z16Info_ValueForKeyPKcS0_
	mov [esp], eax
	call atoi
	mov [ebx+0x17], al
	mov dword [esp+0x4], _cstring_hw
	mov [esp], esi
	call _Z16Info_ValueForKeyPKcS0_
	mov [esp], eax
	call atoi
	mov [ebx+0x18], al
	mov dword [esp+0x4], _cstring_mod
	mov [esp], esi
	call _Z16Info_ValueForKeyPKcS0_
	mov [esp], eax
	call atoi
	mov [ebx+0x19], al
	mov dword [esp+0x4], _cstring_voice
	mov [esp], esi
	call _Z16Info_ValueForKeyPKcS0_
	mov [esp], eax
	call atoi
	mov [ebx+0x1a], al
	mov dword [esp+0x4], _cstring_pb
	mov [esp], esi
	call _Z16Info_ValueForKeyPKcS0_
	mov [esp], eax
	call atoi
	test eax, eax
	setg byte [ebx+0x1b]
_Z16CL_SetServerInfoP12serverInfo_tPKci_20:
	mov byte [ebx+0x28], 0x1
	movzx eax, word [ebp+0x10]
	mov [ebx+0x22], ax
_Z16CL_SetServerInfoP12serverInfo_tPKci_10:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret


;CL_ClearMutedList()
_Z17CL_ClearMutedListv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x8], 0x40
	mov dword [esp+0x4], 0x0
	mov dword [esp], s_playerMute
	call memset
	leave
	ret


;CL_ServerStatus_f()
_Z17CL_ServerStatus_fv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x7c
	mov dword [esp+0x8], 0xc
	mov dword [esp+0x4], 0x0
	lea ebx, [ebp-0x48]
	mov [esp], ebx
	call _Z10Com_MemsetPvii
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x2
	jz _Z17CL_ServerStatus_fv_10
	mov eax, clientUIActives
	cmp dword [eax+0xc], 0x9
	jz _Z17CL_ServerStatus_fv_20
_Z17CL_ServerStatus_fv_30:
	mov dword [esp+0x4], _cstring_not_connected_to
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	mov dword [esp+0x4], _cstring_usage_serverstat
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
_Z17CL_ServerStatus_fv_50:
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z17CL_ServerStatus_fv_20:
	mov eax, clientConnections
	mov esi, [eax+0x4018c]
	test esi, esi
	jnz _Z17CL_ServerStatus_fv_30
	mov eax, cls
	add eax, 0x8
	jmp _Z17CL_ServerStatus_fv_40
_Z17CL_ServerStatus_fv_10:
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x4]
_Z17CL_ServerStatus_fv_40:
	mov [esp+0x4], ebx
	mov [esp], eax
	call _Z15NET_StringToAdrPKcP8netadr_t
	test eax, eax
	jz _Z17CL_ServerStatus_fv_50
	mov ecx, [ebp-0x48]
	mov [ebp-0x3c], ecx
	mov edx, [ebp-0x44]
	mov [ebp-0x38], edx
	mov eax, [ebp-0x40]
	mov [ebp-0x34], eax
	mov dword [esp+0x10], _cstring_getstatus
	mov [esp+0x4], ecx
	mov [esp+0x8], edx
	mov [esp+0xc], eax
	mov dword [esp], 0x0
	call _Z18NET_OutOfBandPrint8netsrc_t8netadr_tPKc
	movzx eax, word [ebp-0x40]
	mov [ebp-0x4a], ax
	movzx eax, byte [ebp-0x41]
	mov [ebp-0x4b], al
	movzx eax, byte [ebp-0x42]
	mov [ebp-0x4c], al
	movzx eax, byte [ebp-0x43]
	mov [ebp-0x4d], al
	movzx eax, byte [ebp-0x44]
	mov [ebp-0x4e], al
	mov edi, [ebp-0x48]
	mov [ebp-0x5c], edi
	xor esi, esi
	mov ebx, cl_serverStatusList
_Z17CL_ServerStatus_fv_70:
	mov ecx, [ebx+0x2000]
	mov [ebp-0x30], ecx
	mov edx, [ebx+0x2004]
	mov [ebp-0x2c], edx
	mov eax, [ebx+0x2008]
	mov [ebp-0x28], eax
	movzx edi, word [ebp-0x4a]
	mov [ebp-0x1c], di
	movzx eax, byte [ebp-0x4b]
	mov [ebp-0x1d], al
	movzx eax, byte [ebp-0x4c]
	mov [ebp-0x1e], al
	movzx eax, byte [ebp-0x4d]
	mov [ebp-0x1f], al
	movzx eax, byte [ebp-0x4e]
	mov [ebp-0x20], al
	mov edi, [ebp-0x5c]
	mov [ebp-0x24], edi
	mov [esp+0xc], ecx
	mov [esp+0x10], edx
	mov eax, [ebx+0x2008]
	mov [esp+0x14], eax
	mov [esp], edi
	mov eax, [ebp-0x20]
	mov [esp+0x4], eax
	mov eax, [ebp-0x1c]
	mov [esp+0x8], eax
	call _Z14NET_CompareAdr8netadr_tS_
	test eax, eax
	jnz _Z17CL_ServerStatus_fv_60
	add esi, 0x1
	add ebx, 0x2020
	cmp esi, 0x10
	jnz _Z17CL_ServerStatus_fv_70
	xor edx, edx
	mov eax, cl_serverStatusList
_Z17CL_ServerStatus_fv_90:
	mov ecx, [eax+0x201c]
	test ecx, ecx
	jnz _Z17CL_ServerStatus_fv_80
	add edx, 0x1
	add eax, 0x2020
	cmp edx, 0x10
	jnz _Z17CL_ServerStatus_fv_90
_Z17CL_ServerStatus_fv_120:
	xor esi, esi
	jmp _Z17CL_ServerStatus_fv_100
_Z17CL_ServerStatus_fv_130:
	mov eax, [edx+0x2010]
	add edx, 0x2020
	cmp ebx, eax
	jle _Z17CL_ServerStatus_fv_110
	mov esi, ecx
_Z17CL_ServerStatus_fv_100:
	mov edx, esi
	shl edx, 0x5
	mov eax, esi
	shl eax, 0xd
	lea eax, [edx+eax]
	mov ebx, [eax+cl_serverStatusList+0x2010]
	cmp esi, 0xffffffff
	jz _Z17CL_ServerStatus_fv_120
	lea edx, [eax+cl_serverStatusList+0x2020]
	mov ecx, esi
_Z17CL_ServerStatus_fv_110:
	add ecx, 0x1
	cmp ecx, 0xf
	jle _Z17CL_ServerStatus_fv_130
_Z17CL_ServerStatus_fv_60:
	mov eax, esi
	shl eax, 0x5
	shl esi, 0xd
	lea edx, [eax+esi+cl_serverStatusList]
_Z17CL_ServerStatus_fv_140:
	mov eax, [ebp-0x48]
	mov [edx+0x2000], eax
	mov eax, [ebp-0x44]
	mov [edx+0x2004], eax
	mov eax, [ebp-0x40]
	mov [edx+0x2008], eax
	mov dword [edx+0x2018], 0x1
	mov dword [edx+0x2014], 0x1
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z17CL_ServerStatus_fv_80:
	mov eax, edx
	shl eax, 0x5
	shl edx, 0xd
	lea edx, [eax+edx+cl_serverStatusList]
	jmp _Z17CL_ServerStatus_fv_140
	add [eax], al


;CL_GlobalServers_f()
_Z18CL_GlobalServers_fv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x44c
	mov edx, cmd_args
	mov eax, [edx]
	cmp dword [edx+eax*4+0x44], 0x2
	jle _Z18CL_GlobalServers_fv_10
	mov ebx, cls
	mov eax, [ebx+0x4b58]
	test eax, eax
	jle _Z18CL_GlobalServers_fv_20
	xor edi, edi
_Z18CL_GlobalServers_fv_30:
	lea eax, [edi+edi*8]
	lea eax, [edi+eax*4]
	lea eax, [ebx+eax*4+0x4b5c]
	mov edx, 0xffffffff
	movzx ecx, byte [eax+0x1c]
	add cl, 0x1
	cmovnz edx, ecx
	mov [eax+0x1c], dl
	add edi, 0x1
	cmp edi, [ebx+0x4b58]
	jl _Z18CL_GlobalServers_fv_30
_Z18CL_GlobalServers_fv_20:
	mov dword [esp+0x4], _cstring_requesting_serve
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	lea eax, [ebp-0x30]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_cod4masteractivi
	call _Z15NET_StringToAdrPKcP8netadr_t
	call _Z16Sys_Millisecondsv
	mov edx, cls
	add eax, 0x7d0
	mov [edx+0x4b54], eax
	mov dword [edx+0x2dbfe0], 0x1
	mov dword [edx+0x4b50], 0x0
	mov dword [ebp-0x30], 0x4
	mov dword [esp], 0x514a
	call _Z8BigShorts
	mov [ebp-0x28], ax
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x2
	jg _Z18CL_GlobalServers_fv_40
	mov eax, _cstring_null
_Z18CL_GlobalServers_fv_100:
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_getservers_s
	lea eax, [ebp-0x430]
	mov [esp], eax
	call sprintf
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	lea edi, [ebp-0x430]
	repne scasb
	not ecx
	lea ebx, [ecx+ebp-0x431]
	mov edx, cmd_args
	mov eax, [edx]
	mov esi, [edx+eax*4+0x44]
	cmp esi, 0x3
	jle _Z18CL_GlobalServers_fv_50
	mov edi, 0x3
	jmp _Z18CL_GlobalServers_fv_60
_Z18CL_GlobalServers_fv_70:
	mov eax, _cstring_null
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring__s
	mov [esp], ebx
	call sprintf
	add ebx, eax
	add edi, 0x1
	cmp esi, edi
	jz _Z18CL_GlobalServers_fv_50
_Z18CL_GlobalServers_fv_80:
	mov edx, cmd_args
_Z18CL_GlobalServers_fv_60:
	mov eax, [edx]
	cmp edi, [edx+eax*4+0x44]
	jge _Z18CL_GlobalServers_fv_70
	mov eax, [edx+eax*4+0x64]
	mov eax, [eax+edi*4]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring__s
	mov [esp], ebx
	call sprintf
	add ebx, eax
	add edi, 0x1
	cmp esi, edi
	jnz _Z18CL_GlobalServers_fv_80
_Z18CL_GlobalServers_fv_50:
	mov dword [esp], _cstring_fs_restrict
	call _Z12Dvar_GetBoolPKc
	test al, al
	jnz _Z18CL_GlobalServers_fv_90
_Z18CL_GlobalServers_fv_110:
	mov ecx, [ebp-0x30]
	mov [ebp-0x24], ecx
	mov edx, [ebp-0x2c]
	mov [ebp-0x20], edx
	mov eax, [ebp-0x28]
	mov [ebp-0x1c], eax
	lea ebx, [ebp-0x430]
	mov [esp+0x10], ebx
	mov [esp+0x4], ecx
	mov [esp+0x8], edx
	mov [esp+0xc], eax
	mov dword [esp], 0x1
	call _Z18NET_OutOfBandPrint8netsrc_t8netadr_tPKc
	add esp, 0x44c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z18CL_GlobalServers_fv_40:
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x8]
	jmp _Z18CL_GlobalServers_fv_100
_Z18CL_GlobalServers_fv_10:
	mov dword [esp+0x4], _cstring_usage_globalserv
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	add esp, 0x44c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z18CL_GlobalServers_fv_90:
	mov dword [ebx], 0x6d656420
	mov word [ebx+0x4], 0x6f
	jmp _Z18CL_GlobalServers_fv_110
	nop


;CL_FindServerByAddr(netadr_t*, serverInfo_t*, int, int)
_Z19CL_FindServerByAddrP8netadr_tP12serverInfo_tii:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edi, [ebp+0x8]
	mov eax, [ebp+0x14]
	test eax, eax
	jz _Z19CL_FindServerByAddrP8netadr_tP12serverInfo_tii_10
	cmp eax, 0x2
	jnz _Z19CL_FindServerByAddrP8netadr_tP12serverInfo_tii_20
_Z19CL_FindServerByAddrP8netadr_tP12serverInfo_tii_10:
	mov ebx, [ebp+0xc]
	xor esi, esi
	jmp _Z19CL_FindServerByAddrP8netadr_tP12serverInfo_tii_30
_Z19CL_FindServerByAddrP8netadr_tP12serverInfo_tii_50:
	add esi, 0x1
	add ebx, 0x94
	cmp esi, 0x80
	jz _Z19CL_FindServerByAddrP8netadr_tP12serverInfo_tii_40
_Z19CL_FindServerByAddrP8netadr_tP12serverInfo_tii_30:
	mov [esp+0x4], ebx
	mov [esp], edi
	call _Z20NET_CompareAdrSignedP8netadr_tS0_
	test eax, eax
	jnz _Z19CL_FindServerByAddrP8netadr_tP12serverInfo_tii_50
_Z19CL_FindServerByAddrP8netadr_tP12serverInfo_tii_130:
	mov eax, esi
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19CL_FindServerByAddrP8netadr_tP12serverInfo_tii_20:
	mov eax, [ebp+0x10]
	test eax, eax
	jg _Z19CL_FindServerByAddrP8netadr_tP12serverInfo_tii_60
_Z19CL_FindServerByAddrP8netadr_tP12serverInfo_tii_40:
	mov esi, 0xffffffff
_Z19CL_FindServerByAddrP8netadr_tP12serverInfo_tii_100:
	mov eax, esi
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19CL_FindServerByAddrP8netadr_tP12serverInfo_tii_60:
	mov edx, [ebp+0x10]
	mov [ebp-0x1c], edx
	mov dword [ebp-0x20], 0x0
_Z19CL_FindServerByAddrP8netadr_tP12serverInfo_tii_90:
	mov edx, [ebp-0x20]
	add edx, [ebp-0x1c]
	mov eax, edx
	shr eax, 0x1f
	lea esi, [eax+edx]
	sar esi, 1
	mov ebx, esi
	lea eax, [esi+esi*8]
	lea eax, [esi+eax*4]
	mov edx, [ebp+0xc]
	lea eax, [edx+eax*4]
	mov [ebp-0x24], eax
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z20NET_CompareAdrSignedP8netadr_tS0_
	cmp eax, 0x0
	jl _Z19CL_FindServerByAddrP8netadr_tP12serverInfo_tii_70
	jle _Z19CL_FindServerByAddrP8netadr_tP12serverInfo_tii_80
	add ebx, 0x1
	mov [ebp-0x20], ebx
	mov eax, [ebp-0x1c]
_Z19CL_FindServerByAddrP8netadr_tP12serverInfo_tii_140:
	cmp [ebp-0x20], eax
	jl _Z19CL_FindServerByAddrP8netadr_tP12serverInfo_tii_90
	mov esi, 0xffffffff
	jmp _Z19CL_FindServerByAddrP8netadr_tP12serverInfo_tii_100
_Z19CL_FindServerByAddrP8netadr_tP12serverInfo_tii_80:
	mov esi, [ebp-0x24]
	sub esi, 0x94
_Z19CL_FindServerByAddrP8netadr_tP12serverInfo_tii_120:
	sub ebx, 0x1
	js _Z19CL_FindServerByAddrP8netadr_tP12serverInfo_tii_110
	mov [esp+0x4], esi
	mov [esp], edi
	call _Z20NET_CompareAdrSignedP8netadr_tS0_
	sub esi, 0x94
	test eax, eax
	jz _Z19CL_FindServerByAddrP8netadr_tP12serverInfo_tii_120
_Z19CL_FindServerByAddrP8netadr_tP12serverInfo_tii_110:
	lea esi, [ebx+0x1]
	jmp _Z19CL_FindServerByAddrP8netadr_tP12serverInfo_tii_130
_Z19CL_FindServerByAddrP8netadr_tP12serverInfo_tii_70:
	mov [ebp-0x1c], esi
	mov eax, esi
	jmp _Z19CL_FindServerByAddrP8netadr_tP12serverInfo_tii_140
	nop


;CL_ServerInfoPacket(netadr_t, msg_t*, int)
_Z19CL_ServerInfoPacket8netadr_tP5msg_ti:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x47c
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
	lea eax, [ebp-0x1c]
	mov [esp+0x8], eax
	lea eax, [ebp-0x20]
	mov [esp+0x4], eax
	mov eax, cls
	mov eax, [eax+0x2dbfe0]
	mov [esp], eax
	call _Z16CL_GetServerListiPP12serverInfo_tPi
	mov ecx, [ebp-0x20]
	test ecx, ecx
	jz _Z19CL_ServerInfoPacket8netadr_tP5msg_ti_10
	mov eax, [ebp+0x14]
	mov [esp], eax
	call _Z14MSG_ReadStringP5msg_t
	mov esi, eax
	mov dword [esp+0x4], _cstring_protocol
	mov [esp], eax
	call _Z16Info_ValueForKeyPKcS0_
	mov [esp], eax
	call atoi
	mov ebx, eax
	mov dword [esp], _cstring_debug_protocol
	call _Z14Dvar_GetStringPKc
	cmp byte [eax], 0x0
	jnz _Z19CL_ServerInfoPacket8netadr_tP5msg_ti_20
	mov eax, 0x6
	cmp eax, ebx
	jz _Z19CL_ServerInfoPacket8netadr_tP5msg_ti_30
_Z19CL_ServerInfoPacket8netadr_tP5msg_ti_40:
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_different_protoc
	mov dword [esp], 0xe
	call _Z11Com_DPrintfiPKcz
_Z19CL_ServerInfoPacket8netadr_tP5msg_ti_10:
	add esp, 0x47c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19CL_ServerInfoPacket8netadr_tP5msg_ti_20:
	mov [esp], eax
	call atoi
	cmp eax, ebx
	jnz _Z19CL_ServerInfoPacket8netadr_tP5msg_ti_40
_Z19CL_ServerInfoPacket8netadr_tP5msg_ti_30:
	mov edi, cls
	mov eax, [edi+0x2dbfe0]
	mov [esp+0xc], eax
	mov eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov eax, [ebp-0x20]
	mov [esp+0x4], eax
	lea eax, [ebp+0x8]
	mov [esp], eax
	call _Z19CL_FindServerByAddrP8netadr_tP12serverInfo_tii
	mov edx, eax
	test eax, eax
	js _Z19CL_ServerInfoPacket8netadr_tP5msg_ti_50
	lea eax, [eax+eax*8]
	lea eax, [edx+eax*4]
	mov edx, [ebp-0x20]
	mov eax, [edx+eax*4+0x24]
	test eax, eax
	jz _Z19CL_ServerInfoPacket8netadr_tP5msg_ti_10
	mov ebx, [ebp+0x18]
	sub ebx, eax
	js _Z19CL_ServerInfoPacket8netadr_tP5msg_ti_10
	mov ecx, [ebp+0x8]
	mov [ebp-0x44], ecx
	mov edx, [ebp+0xc]
	mov [ebp-0x40], edx
	mov eax, [ebp+0x10]
	mov [ebp-0x3c], eax
	mov [esp+0x10], ebx
	mov [esp+0xc], esi
	mov [esp], ecx
	mov [esp+0x4], edx
	mov [esp+0x8], eax
	call _Z25CL_SetServerInfoByAddress8netadr_tPKci
_Z19CL_ServerInfoPacket8netadr_tP5msg_ti_50:
	mov edx, [edi+0x2dbfe0]
	test edx, edx
	jnz _Z19CL_ServerInfoPacket8netadr_tP5msg_ti_10
	mov dword [ebp-0x460], 0x0
	mov [ebp-0x45c], edi
	mov eax, edi
	jmp _Z19CL_ServerInfoPacket8netadr_tP5msg_ti_60
_Z19CL_ServerInfoPacket8netadr_tP5msg_ti_80:
	mov edi, [eax+0x148]
	mov [ebp-0x2c], edi
	mov esi, [eax+0x14c]
	mov [ebp-0x28], esi
	mov ebx, [eax+0x150]
	mov [ebp-0x24], ebx
	mov ecx, [ebp+0x8]
	mov [ebp-0x50], ecx
	mov edx, [ebp+0xc]
	mov [ebp-0x4c], edx
	mov eax, [ebp+0x10]
	mov [ebp-0x48], eax
	mov [esp+0xc], edi
	mov [esp+0x10], esi
	mov [esp+0x14], ebx
	mov [esp], ecx
	mov [esp+0x4], edx
	mov [esp+0x8], eax
	call _Z14NET_CompareAdr8netadr_tS_
	test eax, eax
	jnz _Z19CL_ServerInfoPacket8netadr_tP5msg_ti_10
	add dword [ebp-0x460], 0x1
	add dword [ebp-0x45c], 0x94
	cmp dword [ebp-0x460], 0x80
	jz _Z19CL_ServerInfoPacket8netadr_tP5msg_ti_70
	mov eax, [ebp-0x45c]
_Z19CL_ServerInfoPacket8netadr_tP5msg_ti_60:
	cmp word [eax+0x150], 0x0
	jnz _Z19CL_ServerInfoPacket8netadr_tP5msg_ti_80
	mov ecx, cls
	mov eax, [ebp-0x460]
	add eax, 0x1
	mov [ecx+0x144], eax
	mov eax, [ebp-0x460]
	lea edx, [eax+eax*8]
	lea edx, [eax+edx*4]
	lea edx, [ecx+edx*4]
	lea ebx, [edx+0x140]
	mov eax, [ebp+0x8]
	mov [ebx+0x8], eax
	mov eax, [ebp+0xc]
	mov [ebx+0xc], eax
	mov eax, [ebp+0x10]
	mov [ebx+0x10], eax
	lea ecx, [edx+0x150]
	mov byte [ecx+0x9], 0x0
	lea eax, [edx+0x160]
	mov byte [eax+0x11], 0x0
	mov byte [edx+0x191], 0x0
	mov byte [ecx+0xa], 0x0
	mov word [eax+0x8], 0x0
	mov word [ecx+0x16], 0x0
	mov word [eax+0xa], 0xffff
	mov byte [edx+0x1b1], 0x0
	mov byte [edx+0x1c9], 0x0
	mov eax, [ebp+0x8]
	mov [ecx+0x8], al
	mov byte [ebx+0x14], 0x0
	mov byte [ecx+0x13], 0x0
	mov eax, [ebp+0x14]
	mov [esp], eax
	call _Z14MSG_ReadStringP5msg_t
	mov dword [esp+0x8], 0x400
	mov [esp+0x4], eax
	lea ebx, [ebp-0x450]
	mov [esp], ebx
	call _Z10I_strncpyzPcPKci
	cmp byte [ebp-0x450], 0x0
	jz _Z19CL_ServerInfoPacket8netadr_tP5msg_ti_10
	mov edx, 0xffffffff
	xor eax, eax
	cld
	mov ecx, edx
	mov edi, ebx
	repne scasb
	not ecx
	cmp byte [ecx+ebp-0x452], 0xa
	jz _Z19CL_ServerInfoPacket8netadr_tP5msg_ti_90
	mov ecx, edx
	mov edi, ebx
	repne scasb
	not ecx
	mov word [ecx+ebx-0x1], 0xa
_Z19CL_ServerInfoPacket8netadr_tP5msg_ti_90:
	mov ecx, [ebp+0x8]
	mov [ebp-0x38], ecx
	mov edx, [ebp+0xc]
	mov [ebp-0x34], edx
	mov eax, [ebp+0x10]
	mov [ebp-0x30], eax
	mov [esp], ecx
	mov [esp+0x4], edx
	mov [esp+0x8], eax
	call _Z15NET_AdrToString8netadr_t
	mov [esp+0xc], ebx
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_s_s
	mov dword [esp], 0xe
	call _Z10Com_PrintfiPKcz
	jmp _Z19CL_ServerInfoPacket8netadr_tP5msg_ti_10
_Z19CL_ServerInfoPacket8netadr_tP5msg_ti_70:
	mov dword [esp+0x4], _cstring_max_other_server
	mov dword [esp], 0xe
	call _Z11Com_DPrintfiPKcz
	jmp _Z19CL_ServerInfoPacket8netadr_tP5msg_ti_10
	nop


;CL_ResetPlayerMuting(int)
_Z20CL_ResetPlayerMutingi:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov byte [eax+s_playerMute], 0x0
	pop ebp
	ret
	nop


;CL_SortGlobalServers()
_Z20CL_SortGlobalServersv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0xc], _Z19CL_CompareAdrSignedPKvS0_
	mov dword [esp+0x8], 0x94
	mov eax, cls
	mov edx, [eax+0x4b58]
	mov [esp+0x4], edx
	add eax, 0x4b5c
	mov [esp], eax
	call qsort
	leave
	ret
	add [eax], al


;CL_ServerStatusResponse(netadr_t, msg_t*)
_Z23CL_ServerStatusResponse8netadr_tP5msg_t:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x47c
	movzx eax, word [ebp+0x10]
	mov [ebp-0x43e], ax
	movzx ebx, byte [ebp+0xf]
	mov [ebp-0x43f], bl
	movzx eax, byte [ebp+0xe]
	mov [ebp-0x440], al
	movzx ebx, byte [ebp+0xd]
	mov [ebp-0x441], bl
	movzx eax, byte [ebp+0xc]
	mov [ebp-0x442], al
	mov ebx, [ebp+0x8]
	mov [ebp-0x448], ebx
	mov dword [ebp-0x45c], 0x0
	mov edi, cl_serverStatusList
	mov esi, cl_serverStatusList
_Z23CL_ServerStatusResponse8netadr_tP5msg_t_20:
	mov ecx, [edi+0x2000]
	mov [ebp-0x38], ecx
	mov edx, [edi+0x2004]
	mov [ebp-0x34], edx
	mov eax, [edi+0x2008]
	mov [ebp-0x30], eax
	movzx ebx, word [ebp-0x43e]
	mov [ebp-0x24], bx
	movzx ebx, byte [ebp-0x43f]
	mov [ebp-0x25], bl
	movzx ebx, byte [ebp-0x440]
	mov [ebp-0x26], bl
	movzx ebx, byte [ebp-0x441]
	mov [ebp-0x27], bl
	movzx ebx, byte [ebp-0x442]
	mov [ebp-0x28], bl
	mov ebx, [ebp-0x448]
	mov [ebp-0x2c], ebx
	mov [esp+0xc], ecx
	mov [esp+0x10], edx
	mov [esp+0x14], eax
	mov [esp], ebx
	mov eax, [ebp-0x28]
	mov [esp+0x4], eax
	mov eax, [ebp-0x24]
	mov [esp+0x8], eax
	call _Z14NET_CompareAdr8netadr_tS_
	test eax, eax
	jnz _Z23CL_ServerStatusResponse8netadr_tP5msg_t_10
	add dword [ebp-0x45c], 0x1
	add esi, 0x2020
	add edi, 0x2020
	cmp dword [ebp-0x45c], 0x10
	jnz _Z23CL_ServerStatusResponse8netadr_tP5msg_t_20
_Z23CL_ServerStatusResponse8netadr_tP5msg_t_30:
	add esp, 0x47c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z23CL_ServerStatusResponse8netadr_tP5msg_t_10:
	test esi, esi
	jz _Z23CL_ServerStatusResponse8netadr_tP5msg_t_30
	mov eax, [ebp+0x14]
	mov [esp], eax
	call _Z18MSG_ReadStringLineP5msg_t
	mov edi, eax
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_s
	mov dword [esp+0x4], 0x2000
	mov [esp], esi
	call _Z11Com_sprintfPciPKcz
	mov eax, [esi+0x2018]
	test eax, eax
	jnz _Z23CL_ServerStatusResponse8netadr_tP5msg_t_40
_Z23CL_ServerStatusResponse8netadr_tP5msg_t_70:
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, esi
	repne scasb
	not ecx
	sub ecx, 0x1
	mov dword [esp+0x8], _cstring_
	mov eax, 0x2000
	sub eax, ecx
	mov [esp+0x4], eax
	lea ecx, [esi+ecx]
	mov [esp], ecx
	call _Z11Com_sprintfPciPKcz
	mov eax, [esi+0x2018]
	test eax, eax
	jnz _Z23CL_ServerStatusResponse8netadr_tP5msg_t_50
_Z23CL_ServerStatusResponse8netadr_tP5msg_t_220:
	mov ebx, [ebp+0x14]
	mov [esp], ebx
	call _Z18MSG_ReadStringLineP5msg_t
	mov ebx, eax
	cmp byte [eax], 0x0
	jnz _Z23CL_ServerStatusResponse8netadr_tP5msg_t_60
_Z23CL_ServerStatusResponse8netadr_tP5msg_t_180:
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, esi
	repne scasb
	not ecx
	sub ecx, 0x1
	mov dword [esp+0x8], _cstring_
	mov eax, 0x2000
	sub eax, ecx
	mov [esp+0x4], eax
	lea ecx, [esi+ecx]
	mov [esp], ecx
	call _Z11Com_sprintfPciPKcz
	call _Z16Sys_Millisecondsv
	mov [esi+0x200c], eax
	movzx ebx, word [ebp-0x43e]
	mov [esi+0x2008], bx
	movzx eax, byte [ebp-0x43f]
	mov [esi+0x2007], al
	movzx ebx, byte [ebp-0x440]
	mov [esi+0x2006], bl
	movzx eax, byte [ebp-0x441]
	mov [esi+0x2005], al
	movzx ebx, byte [ebp-0x442]
	mov [esi+0x2004], bl
	mov eax, [ebp-0x448]
	mov [esi+0x2000], eax
	mov dword [esi+0x2014], 0x0
	mov edi, [esi+0x2018]
	test edi, edi
	jz _Z23CL_ServerStatusResponse8netadr_tP5msg_t_30
	mov dword [esi+0x201c], 0x1
	add esp, 0x47c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z23CL_ServerStatusResponse8netadr_tP5msg_t_40:
	mov dword [esp+0x4], _cstring_server_settings
	mov dword [esp], 0xe
	call _Z10Com_PrintfiPKcz
	movzx eax, byte [edi]
_Z23CL_ServerStatusResponse8netadr_tP5msg_t_150:
	test al, al
	jz _Z23CL_ServerStatusResponse8netadr_tP5msg_t_70
	mov dword [ebp-0x43c], 0x0
	lea ebx, [ebp-0x438]
	cmp al, 0x5c
	jz _Z23CL_ServerStatusResponse8netadr_tP5msg_t_80
_Z23CL_ServerStatusResponse8netadr_tP5msg_t_140:
	xor edx, edx
	jmp _Z23CL_ServerStatusResponse8netadr_tP5msg_t_90
_Z23CL_ServerStatusResponse8netadr_tP5msg_t_110:
	movzx eax, byte [edi]
_Z23CL_ServerStatusResponse8netadr_tP5msg_t_90:
	test al, al
	jz _Z23CL_ServerStatusResponse8netadr_tP5msg_t_100
	mov [edx+ebx], al
	add edx, 0x1
	cmp edx, 0x3ff
	jz _Z23CL_ServerStatusResponse8netadr_tP5msg_t_100
	add edi, 0x1
	cmp byte [edi], 0x5c
	jnz _Z23CL_ServerStatusResponse8netadr_tP5msg_t_110
_Z23CL_ServerStatusResponse8netadr_tP5msg_t_100:
	mov byte [ebp+edx-0x438], 0x0
	mov eax, [ebp-0x43c]
	test eax, eax
	jz _Z23CL_ServerStatusResponse8netadr_tP5msg_t_120
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_s1
	mov dword [esp], 0xe
	call _Z10Com_PrintfiPKcz
_Z23CL_ServerStatusResponse8netadr_tP5msg_t_160:
	add dword [ebp-0x43c], 0x1
	cmp dword [ebp-0x43c], 0x2
	jz _Z23CL_ServerStatusResponse8netadr_tP5msg_t_130
	movzx eax, byte [edi]
	test al, al
	jz _Z23CL_ServerStatusResponse8netadr_tP5msg_t_70
	cmp al, 0x5c
	jnz _Z23CL_ServerStatusResponse8netadr_tP5msg_t_140
_Z23CL_ServerStatusResponse8netadr_tP5msg_t_80:
	add edi, 0x1
	movzx eax, byte [edi]
	jmp _Z23CL_ServerStatusResponse8netadr_tP5msg_t_140
_Z23CL_ServerStatusResponse8netadr_tP5msg_t_130:
	movzx eax, byte [edi]
	jmp _Z23CL_ServerStatusResponse8netadr_tP5msg_t_150
_Z23CL_ServerStatusResponse8netadr_tP5msg_t_120:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_24s
	mov dword [esp], 0xe
	call _Z10Com_PrintfiPKcz
	jmp _Z23CL_ServerStatusResponse8netadr_tP5msg_t_160
_Z23CL_ServerStatusResponse8netadr_tP5msg_t_60:
	mov dword [ebp-0x44c], 0x0
	jmp _Z23CL_ServerStatusResponse8netadr_tP5msg_t_170
_Z23CL_ServerStatusResponse8netadr_tP5msg_t_190:
	mov eax, [ebp+0x14]
	mov [esp], eax
	call _Z18MSG_ReadStringLineP5msg_t
	mov ebx, eax
	add dword [ebp-0x44c], 0x1
	cmp byte [eax], 0x0
	jz _Z23CL_ServerStatusResponse8netadr_tP5msg_t_180
_Z23CL_ServerStatusResponse8netadr_tP5msg_t_170:
	cld
	mov ecx, 0xffffffff
	mov edi, esi
	xor eax, eax
	repne scasb
	not ecx
	sub ecx, 0x1
	mov [esp+0xc], ebx
	mov dword [esp+0x8], _cstring_s2
	mov eax, 0x2000
	sub eax, ecx
	mov [esp+0x4], eax
	lea ecx, [esi+ecx]
	mov [esp], ecx
	call _Z11Com_sprintfPciPKcz
	mov eax, [esi+0x2018]
	test eax, eax
	jz _Z23CL_ServerStatusResponse8netadr_tP5msg_t_190
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
	lea eax, [ebp-0x20]
	mov [esp+0xc], eax
	lea eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_d_d
	mov [esp], ebx
	call sscanf
	mov dword [esp+0x4], 0x20
	mov [esp], ebx
	call strchr
	test eax, eax
	jz _Z23CL_ServerStatusResponse8netadr_tP5msg_t_200
	add eax, 0x1
	mov dword [esp+0x4], 0x20
	mov [esp], eax
	call strchr
	test eax, eax
	jz _Z23CL_ServerStatusResponse8netadr_tP5msg_t_200
	add eax, 0x1
_Z23CL_ServerStatusResponse8netadr_tP5msg_t_210:
	mov [esp+0x14], eax
	mov eax, [ebp-0x20]
	mov [esp+0x10], eax
	mov eax, [ebp-0x1c]
	mov [esp+0xc], eax
	mov ebx, [ebp-0x44c]
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_2d___3d____3d___
	mov dword [esp], 0xe
	call _Z10Com_PrintfiPKcz
	jmp _Z23CL_ServerStatusResponse8netadr_tP5msg_t_190
_Z23CL_ServerStatusResponse8netadr_tP5msg_t_200:
	mov eax, _cstring_unknown
	jmp _Z23CL_ServerStatusResponse8netadr_tP5msg_t_210
_Z23CL_ServerStatusResponse8netadr_tP5msg_t_50:
	mov dword [esp+0x4], _cstring_players
	mov dword [esp], 0xe
	call _Z10Com_PrintfiPKcz
	mov dword [esp+0x4], _cstring_num_score_ping_n
	mov dword [esp], 0xe
	call _Z10Com_PrintfiPKcz
	jmp _Z23CL_ServerStatusResponse8netadr_tP5msg_t_220
	nop


;CL_ServersResponsePacket(netadr_t, msg_t*)
_Z24CL_ServersResponsePacket8netadr_tP5msg_t:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x67c
	mov ebx, [ebp+0x14]
	mov dword [esp+0x4], _cstring_cl_serversrespon
	mov dword [esp], 0xe
	call _Z10Com_PrintfiPKcz
	call _Z16Sys_Millisecondsv
	add eax, 0x7d0
	mov edx, cls
	mov [edx+0x4b54], eax
	mov esi, [ebx+0x8]
	mov ebx, [ebx+0x14]
	add ebx, esi
	mov [ebp-0x644], ebx
	mov dword [ebp-0x648], 0x0
	lea edi, [ebp-0x62d]
	lea ebx, [esi+0x1]
	cmp [ebp-0x644], ebx
	ja _Z24CL_ServersResponsePacket8netadr_tP5msg_t_10
	jmp _Z24CL_ServersResponsePacket8netadr_tP5msg_t_20
_Z24CL_ServersResponsePacket8netadr_tP5msg_t_40:
	mov esi, ebx
	add ebx, 0x1
_Z24CL_ServersResponsePacket8netadr_tP5msg_t_10:
	cmp byte [esi], 0x5c
	jz _Z24CL_ServersResponsePacket8netadr_tP5msg_t_30
	cmp [ebp-0x644], ebx
	ja _Z24CL_ServersResponsePacket8netadr_tP5msg_t_40
_Z24CL_ServersResponsePacket8netadr_tP5msg_t_30:
	mov eax, [ebp-0x644]
	sub eax, 0x6
	cmp eax, ebx
	jbe _Z24CL_ServersResponsePacket8netadr_tP5msg_t_20
	movzx eax, byte [esi+0x1]
	mov [edi-0x3], al
	movzx eax, byte [ebx+0x1]
	mov [edi-0x2], al
	movzx eax, byte [ebx+0x2]
	mov [edi-0x1], al
	movzx eax, byte [ebx+0x3]
	mov [edi], al
	movzx eax, byte [ebx+0x4]
	shl eax, 0x8
	mov [edi+0x1], ax
	movzx edx, byte [ebx+0x5]
	add eax, edx
	mov [edi+0x1], ax
	add esi, 0x7
	cwde
	mov [esp], eax
	call _Z8BigShorts
	mov [edi+0x1], ax
	cmp byte [esi], 0x5c
	jnz _Z24CL_ServersResponsePacket8netadr_tP5msg_t_20
	movzx eax, ax
	mov [esp+0x1c], eax
	movzx eax, byte [edi]
	mov [esp+0x18], eax
	movzx eax, byte [edi-0x1]
	mov [esp+0x14], eax
	movzx eax, byte [edi-0x2]
	mov [esp+0x10], eax
	movzx eax, byte [edi-0x3]
	mov [esp+0xc], eax
	mov eax, [ebp-0x648]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_server_d_ip_dddd
	mov dword [esp], 0xe
	call _Z11Com_DPrintfiPKcz
	add dword [ebp-0x648], 0x1
	cmp dword [ebp-0x648], 0x100
	jz _Z24CL_ServersResponsePacket8netadr_tP5msg_t_20
	cmp byte [ebx+0x7], 0x45
	jz _Z24CL_ServersResponsePacket8netadr_tP5msg_t_50
_Z24CL_ServersResponsePacket8netadr_tP5msg_t_250:
	add edi, 0x6
_Z24CL_ServersResponsePacket8netadr_tP5msg_t_260:
	lea ebx, [esi+0x1]
	cmp [ebp-0x644], ebx
	ja _Z24CL_ServersResponsePacket8netadr_tP5msg_t_10
_Z24CL_ServersResponsePacket8netadr_tP5msg_t_20:
	mov edx, cls
	mov [ebp-0x658], edx
	mov edi, [edx+0x4b58]
	mov [ebp-0x63c], edi
	mov eax, [ebp-0x648]
	test eax, eax
	jle _Z24CL_ServersResponsePacket8netadr_tP5msg_t_60
	cmp edi, 0x4e1f
	jg _Z24CL_ServersResponsePacket8netadr_tP5msg_t_70
	mov [ebp-0x64c], edi
	mov dword [ebp-0x650], 0x0
	lea eax, [ebp-0x630]
	mov [ebp-0x660], eax
	lea eax, [edi+edi*8]
	lea eax, [edi+eax*4]
	lea eax, [eax*4+0x4b50]
	mov [ebp-0x664], eax
	jmp _Z24CL_ServersResponsePacket8netadr_tP5msg_t_80
_Z24CL_ServersResponsePacket8netadr_tP5msg_t_120:
	mov edx, [ebp-0x64c]
	cmp [ebp-0x63c], edx
	jl _Z24CL_ServersResponsePacket8netadr_tP5msg_t_90
_Z24CL_ServersResponsePacket8netadr_tP5msg_t_180:
	mov eax, [ebp-0x63c]
_Z24CL_ServersResponsePacket8netadr_tP5msg_t_300:
	cmp eax, [ebp-0x64c]
	jz _Z24CL_ServersResponsePacket8netadr_tP5msg_t_100
_Z24CL_ServersResponsePacket8netadr_tP5msg_t_220:
	add dword [ebp-0x650], 0x1
	add dword [ebp-0x660], 0x6
	mov eax, [ebp-0x650]
	cmp [ebp-0x648], eax
	jz _Z24CL_ServersResponsePacket8netadr_tP5msg_t_110
_Z24CL_ServersResponsePacket8netadr_tP5msg_t_230:
	cmp dword [ebp-0x64c], 0x4e1f
	jg _Z24CL_ServersResponsePacket8netadr_tP5msg_t_110
_Z24CL_ServersResponsePacket8netadr_tP5msg_t_80:
	mov dword [ebp-0x24], 0x4
	mov edx, [ebp-0x660]
	movzx esi, byte [edx]
	mov eax, esi
	mov [ebp-0x20], al
	movzx ebx, byte [edx+0x1]
	mov [ebp-0x1f], bl
	movzx ecx, byte [edx+0x2]
	mov [ebp-0x1e], cl
	mov edi, edx
	movzx edx, byte [edx+0x3]
	mov [ebp-0x1d], dl
	movzx eax, word [edi+0x4]
	mov [ebp-0x1c], ax
	mov [ebp-0x28], ax
	mov [ebp-0x29], dl
	mov [ebp-0x2a], cl
	mov [ebp-0x2b], bl
	mov eax, esi
	mov [ebp-0x2c], al
	mov dword [ebp-0x30], 0x4
	mov edx, [ebp-0x658]
	mov edi, [edx+0x4b58]
	test edi, edi
	jle _Z24CL_ServersResponsePacket8netadr_tP5msg_t_120
	mov dword [ebp-0x640], 0x0
	jmp _Z24CL_ServersResponsePacket8netadr_tP5msg_t_130
_Z24CL_ServersResponsePacket8netadr_tP5msg_t_160:
	jle _Z24CL_ServersResponsePacket8netadr_tP5msg_t_140
	add ebx, 0x1
	mov [ebp-0x640], ebx
	cmp edi, [ebp-0x640]
	jle _Z24CL_ServersResponsePacket8netadr_tP5msg_t_150
_Z24CL_ServersResponsePacket8netadr_tP5msg_t_170:
	mov edx, cls
	mov [ebp-0x658], edx
_Z24CL_ServersResponsePacket8netadr_tP5msg_t_130:
	mov edx, [ebp-0x640]
	add edx, edi
	mov eax, edx
	shr eax, 0x1f
	lea ebx, [eax+edx]
	sar ebx, 1
	mov esi, ebx
	lea eax, [ebx+ebx*8]
	lea eax, [ebx+eax*4]
	mov edx, [ebp-0x658]
	lea eax, [edx+eax*4+0x4b5c]
	mov [esp+0x4], eax
	lea eax, [ebp-0x30]
	mov [esp], eax
	call _Z20NET_CompareAdrSignedP8netadr_tS0_
	cmp eax, 0x0
	jge _Z24CL_ServersResponsePacket8netadr_tP5msg_t_160
	mov edi, ebx
	cmp edi, [ebp-0x640]
	jg _Z24CL_ServersResponsePacket8netadr_tP5msg_t_170
_Z24CL_ServersResponsePacket8netadr_tP5msg_t_150:
	mov eax, cls
	mov [ebp-0x658], eax
	mov edx, [ebp-0x64c]
	cmp [ebp-0x63c], edx
	jge _Z24CL_ServersResponsePacket8netadr_tP5msg_t_180
_Z24CL_ServersResponsePacket8netadr_tP5msg_t_90:
	mov esi, [ebp-0x63c]
	mov edx, [ebp-0x658]
	jmp _Z24CL_ServersResponsePacket8netadr_tP5msg_t_190
_Z24CL_ServersResponsePacket8netadr_tP5msg_t_210:
	mov edi, cls
	mov [ebp-0x658], edi
	mov edx, edi
_Z24CL_ServersResponsePacket8netadr_tP5msg_t_190:
	lea eax, [esi+esi*8]
	lea eax, [esi+eax*4]
	lea eax, [edx+eax*4+0x4b50]
	mov [ebp-0x654], eax
	mov edi, eax
	add edi, 0xc
	mov [esp+0x4], edi
	lea eax, [ebp-0x24]
	mov [esp], eax
	call _Z20NET_CompareAdrSignedP8netadr_tS0_
	test eax, eax
	jz _Z24CL_ServersResponsePacket8netadr_tP5msg_t_200
	add esi, 0x1
	mov eax, [ebp-0x64c]
	cmp eax, esi
	jnz _Z24CL_ServersResponsePacket8netadr_tP5msg_t_210
	mov edi, cls
	mov [ebp-0x658], edi
	cmp eax, [ebp-0x64c]
	jnz _Z24CL_ServersResponsePacket8netadr_tP5msg_t_220
_Z24CL_ServersResponsePacket8netadr_tP5msg_t_100:
	mov edi, [ebp-0x664]
	add edi, [ebp-0x658]
	lea eax, [edi+0xc]
	add dword [ebp-0x64c], 0x1
	add dword [ebp-0x664], 0x94
	movzx ecx, byte [ebp-0x1e]
	movzx ebx, byte [ebp-0x1f]
	movzx esi, byte [ebp-0x20]
	movzx edx, word [ebp-0x1c]
	mov [eax+0x8], dx
	movzx edx, byte [ebp-0x1d]
	mov [eax+0x7], dl
	mov [eax+0x6], cl
	mov [eax+0x5], bl
	mov edx, esi
	mov [eax+0x4], dl
	mov edx, [ebp-0x24]
	mov [edi+0xc], edx
	mov dword [eax+0x24], 0x0
	mov byte [eax+0x28], 0x0
	mov byte [eax+0x11], 0x0
	mov byte [eax+0x29], 0x0
	mov byte [eax+0x49], 0x0
	mov byte [eax+0x12], 0x0
	mov word [eax+0x20], 0x0
	mov word [eax+0x1e], 0x0
	mov word [eax+0x22], 0xffff
	mov byte [eax+0x69], 0x0
	mov byte [eax+0x81], 0x0
	mov byte [eax+0x10], 0x0
	mov byte [eax+0xc], 0x0
	mov byte [eax+0x13], 0x1
	mov byte [eax+0x1c], 0x0
	add dword [ebp-0x650], 0x1
	add dword [ebp-0x660], 0x6
	mov eax, [ebp-0x650]
	cmp [ebp-0x648], eax
	jnz _Z24CL_ServersResponsePacket8netadr_tP5msg_t_230
_Z24CL_ServersResponsePacket8netadr_tP5msg_t_110:
	mov edi, [ebp-0x64c]
	jmp _Z24CL_ServersResponsePacket8netadr_tP5msg_t_240
_Z24CL_ServersResponsePacket8netadr_tP5msg_t_50:
	cmp byte [ebx+0x8], 0x4f
	jnz _Z24CL_ServersResponsePacket8netadr_tP5msg_t_250
	movzx eax, byte [ebx+0x9]
	cmp al, 0x54
	jz _Z24CL_ServersResponsePacket8netadr_tP5msg_t_20
	cmp al, 0x46
	jz _Z24CL_ServersResponsePacket8netadr_tP5msg_t_20
	add edi, 0x6
	jmp _Z24CL_ServersResponsePacket8netadr_tP5msg_t_260
_Z24CL_ServersResponsePacket8netadr_tP5msg_t_60:
	mov edx, edi
	jmp _Z24CL_ServersResponsePacket8netadr_tP5msg_t_270
_Z24CL_ServersResponsePacket8netadr_tP5msg_t_140:
	sub esi, 0x1
	js _Z24CL_ServersResponsePacket8netadr_tP5msg_t_280
	lea eax, [esi+esi*8]
	lea eax, [esi+eax*4]
	lea eax, [eax*4+0x4b50]
	add eax, cls
	add eax, 0xc
	mov [esp+0x4], eax
	lea edx, [ebp-0x30]
	mov [esp], edx
	call _Z20NET_CompareAdrSignedP8netadr_tS0_
	test eax, eax
	jz _Z24CL_ServersResponsePacket8netadr_tP5msg_t_140
_Z24CL_ServersResponsePacket8netadr_tP5msg_t_280:
	lea edi, [esi+0x1]
	mov eax, cls
	mov [ebp-0x658], eax
	lea eax, [edi+edi*8]
	lea eax, [edi+eax*4]
	mov edx, [ebp-0x658]
	lea eax, [edx+eax*4]
	lea edx, [eax+0x4b5c]
	mov [ebp-0x65c], edx
	lea esi, [eax+0x4b50]
_Z24CL_ServersResponsePacket8netadr_tP5msg_t_290:
	movzx edx, byte [ebp-0x2a]
	movzx ecx, byte [ebp-0x2b]
	movzx ebx, byte [ebp-0x2c]
	movzx eax, word [ebp-0x28]
	mov [esi+0x14], ax
	movzx eax, byte [ebp-0x29]
	mov [esi+0x13], al
	mov [esi+0x12], dl
	mov [esi+0x11], cl
	mov [esi+0x10], bl
	mov eax, [ebp-0x30]
	mov [esi+0xc], eax
	mov dword [esi+0x30], 0x0
	mov byte [esi+0x34], 0x0
	mov byte [esi+0x1d], 0x0
	mov byte [esi+0x35], 0x0
	mov byte [esi+0x55], 0x0
	mov byte [esi+0x1e], 0x0
	mov word [esi+0x2c], 0x0
	mov word [esi+0x2a], 0x0
	mov word [esi+0x2e], 0xffff
	mov byte [esi+0x75], 0x0
	mov byte [esi+0x8d], 0x0
	mov byte [esi+0x1c], 0x0
	mov byte [esi+0x18], 0x0
	mov byte [esi+0x1f], 0x1
	mov byte [esi+0x28], 0x0
	add edi, 0x1
	add esi, 0x94
	add dword [ebp-0x65c], 0x94
	mov eax, [ebp-0x658]
	cmp edi, [eax+0x4b58]
	jge _Z24CL_ServersResponsePacket8netadr_tP5msg_t_220
	mov edx, [ebp-0x65c]
	mov [esp+0x4], edx
	lea eax, [ebp-0x30]
	mov [esp], eax
	call _Z20NET_CompareAdrSignedP8netadr_tS0_
	test eax, eax
	jz _Z24CL_ServersResponsePacket8netadr_tP5msg_t_290
	mov edi, cls
	mov [ebp-0x658], edi
	jmp _Z24CL_ServersResponsePacket8netadr_tP5msg_t_220
_Z24CL_ServersResponsePacket8netadr_tP5msg_t_70:
	mov edx, [ebp-0x63c]
_Z24CL_ServersResponsePacket8netadr_tP5msg_t_270:
	mov [ebp-0x64c], edx
	mov edi, edx
_Z24CL_ServersResponsePacket8netadr_tP5msg_t_240:
	mov eax, [ebp-0x658]
	mov [eax+0x4b58], edi
	mov dword [esp+0xc], _Z19CL_CompareAdrSignedPKvS0_
	mov dword [esp+0x8], 0x94
	mov [esp+0x4], edi
	mov eax, [ebp-0x658]
	add eax, 0x4b5c
	mov [esp], eax
	call qsort
	mov eax, [ebp-0x648]
	mov edx, [ebp-0x658]
	add eax, [edx+0x4b50]
	mov [edx+0x4b50], eax
	mov [esp+0x10], eax
	mov [esp+0xc], edi
	mov edi, [ebp-0x648]
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_d_servers_parsed
	mov dword [esp], 0xe
	call _Z10Com_PrintfiPKcz
	add esp, 0x67c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z24CL_ServersResponsePacket8netadr_tP5msg_t_200:
	movzx edx, byte [ebp-0x1e]
	movzx ecx, byte [ebp-0x1f]
	movzx ebx, byte [ebp-0x20]
	movzx eax, word [ebp-0x1c]
	mov [edi+0x8], ax
	movzx eax, byte [ebp-0x1d]
	mov [edi+0x7], al
	mov [edi+0x6], dl
	mov [edi+0x5], cl
	mov [edi+0x4], bl
	mov eax, [ebp-0x24]
	mov edx, [ebp-0x654]
	mov [edx+0xc], eax
	mov dword [edi+0x24], 0x0
	mov byte [edi+0x28], 0x0
	mov byte [edi+0x11], 0x0
	mov byte [edi+0x29], 0x0
	mov byte [edi+0x49], 0x0
	mov byte [edi+0x12], 0x0
	mov word [edi+0x20], 0x0
	mov word [edi+0x1e], 0x0
	mov word [edi+0x22], 0xffff
	mov byte [edi+0x69], 0x0
	mov byte [edi+0x81], 0x0
	mov byte [edi+0x10], 0x0
	mov byte [edi+0xc], 0x0
	mov byte [edi+0x13], 0x1
	mov byte [edi+0x1c], 0x0
	mov eax, esi
	mov edi, cls
	mov [ebp-0x658], edi
	jmp _Z24CL_ServersResponsePacket8netadr_tP5msg_t_300


;CL_SetServerInfoByAddress(netadr_t, char const*, int)
_Z25CL_SetServerInfoByAddress8netadr_tPKci:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x7c
	mov dword [ebp-0x4c], 0x0
	mov eax, cls
	mov [ebp-0x54], eax
	add eax, 0x148
	mov [ebp-0x64], eax
	jmp _Z25CL_SetServerInfoByAddress8netadr_tPKci_10
_Z25CL_SetServerInfoByAddress8netadr_tPKci_30:
	add dword [ebp-0x4c], 0x1
	add dword [ebp-0x64], 0x94
	add dword [ebp-0x54], 0x94
	cmp dword [ebp-0x4c], 0x80
	jz _Z25CL_SetServerInfoByAddress8netadr_tPKci_20
_Z25CL_SetServerInfoByAddress8netadr_tPKci_10:
	mov edx, [ebp-0x54]
	mov edi, [edx+0x148]
	mov [ebp-0x48], edi
	mov esi, [edx+0x14c]
	mov [ebp-0x44], esi
	mov ebx, [edx+0x150]
	mov [ebp-0x40], ebx
	mov ecx, [ebp+0x8]
	mov [ebp-0x3c], ecx
	mov edx, [ebp+0xc]
	mov [ebp-0x38], edx
	mov eax, [ebp+0x10]
	mov [ebp-0x34], eax
	mov [esp+0xc], edi
	mov [esp+0x10], esi
	mov [esp+0x14], ebx
	mov [esp], ecx
	mov [esp+0x4], edx
	mov [esp+0x8], eax
	call _Z14NET_CompareAdr8netadr_tS_
	test eax, eax
	jz _Z25CL_SetServerInfoByAddress8netadr_tPKci_30
	mov eax, [ebp+0x18]
	mov [esp+0x8], eax
	mov edx, [ebp+0x14]
	mov [esp+0x4], edx
	mov eax, [ebp-0x64]
	mov [esp], eax
	call _Z16CL_SetServerInfoP12serverInfo_tPKci
	add dword [ebp-0x4c], 0x1
	add dword [ebp-0x64], 0x94
	add dword [ebp-0x54], 0x94
	cmp dword [ebp-0x4c], 0x80
	jnz _Z25CL_SetServerInfoByAddress8netadr_tPKci_10
_Z25CL_SetServerInfoByAddress8netadr_tPKci_20:
	mov dword [esp+0xc], 0x1
	mov ebx, cls
	mov eax, [ebx+0x4b58]
	mov [esp+0x8], eax
	lea eax, [ebx+0x4b5c]
	mov [esp+0x4], eax
	lea edx, [ebp+0x8]
	mov [esp], edx
	call _Z19CL_FindServerByAddrP8netadr_tP12serverInfo_tii
	mov edi, eax
	mov [ebp-0x5c], ebx
	lea eax, [eax+eax*8]
	lea eax, [edi+eax*4]
	lea ebx, [ebx+eax*4+0x4b5c]
	mov esi, ebx
_Z25CL_SetServerInfoByAddress8netadr_tPKci_50:
	mov eax, [ebp+0x18]
	mov [esp+0x8], eax
	mov edx, [ebp+0x14]
	mov [esp+0x4], edx
	mov [esp], esi
	call _Z16CL_SetServerInfoP12serverInfo_tPKci
	add edi, 0x1
	add esi, 0x94
	add ebx, 0x94
	mov eax, [ebp-0x5c]
	cmp edi, [eax+0x4b58]
	jge _Z25CL_SetServerInfoByAddress8netadr_tPKci_40
	mov [esp+0x4], ebx
	lea edx, [ebp+0x8]
	mov [esp], edx
	call _Z20NET_CompareAdrSignedP8netadr_tS0_
	test eax, eax
	jz _Z25CL_SetServerInfoByAddress8netadr_tPKci_50
	mov eax, [ebp-0x5c]
_Z25CL_SetServerInfoByAddress8netadr_tPKci_40:
	mov dword [ebp-0x50], 0x0
	add eax, 0x2d75e0
	mov [ebp-0x58], eax
	mov edx, cls
	add edx, 0x2d75e0
	mov [ebp-0x60], edx
	jmp _Z25CL_SetServerInfoByAddress8netadr_tPKci_60
_Z25CL_SetServerInfoByAddress8netadr_tPKci_80:
	add dword [ebp-0x50], 0x1
	add dword [ebp-0x60], 0x94
	add dword [ebp-0x58], 0x94
	cmp dword [ebp-0x50], 0x80
	jz _Z25CL_SetServerInfoByAddress8netadr_tPKci_70
_Z25CL_SetServerInfoByAddress8netadr_tPKci_90:
	mov eax, [ebp-0x58]
_Z25CL_SetServerInfoByAddress8netadr_tPKci_60:
	mov edi, [eax]
	mov [ebp-0x30], edi
	mov esi, [eax+0x4]
	mov [ebp-0x2c], esi
	mov ebx, [eax+0x8]
	mov [ebp-0x28], ebx
	mov ecx, [ebp+0x8]
	mov [ebp-0x24], ecx
	mov edx, [ebp+0xc]
	mov [ebp-0x20], edx
	mov eax, [ebp+0x10]
	mov [ebp-0x1c], eax
	mov [esp+0xc], edi
	mov [esp+0x10], esi
	mov [esp+0x14], ebx
	mov [esp], ecx
	mov [esp+0x4], edx
	mov [esp+0x8], eax
	call _Z14NET_CompareAdr8netadr_tS_
	test eax, eax
	jz _Z25CL_SetServerInfoByAddress8netadr_tPKci_80
	mov edx, [ebp+0x18]
	mov [esp+0x8], edx
	mov eax, [ebp+0x14]
	mov [esp+0x4], eax
	mov edx, [ebp-0x60]
	mov [esp], edx
	call _Z16CL_SetServerInfoP12serverInfo_tPKci
	add dword [ebp-0x50], 0x1
	add dword [ebp-0x60], 0x94
	add dword [ebp-0x58], 0x94
	cmp dword [ebp-0x50], 0x80
	jnz _Z25CL_SetServerInfoByAddress8netadr_tPKci_90
_Z25CL_SetServerInfoByAddress8netadr_tPKci_70:
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;CL_Ping_f()
_Z9CL_Ping_fv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x2
	jz _Z9CL_Ping_fv_10
	mov dword [esp+0x4], _cstring_usage_ping_serve
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
_Z9CL_Ping_fv_20:
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z9CL_Ping_fv_10:
	mov dword [ebp-0x3c], 0x0
	mov dword [ebp-0x38], 0x0
	mov dword [ebp-0x34], 0x0
	mov eax, [eax+edx*4+0x64]
	mov edx, [eax+0x4]
	lea eax, [ebp-0x3c]
	mov [esp+0x4], eax
	mov [esp], edx
	call _Z15NET_StringToAdrPKcP8netadr_t
	test eax, eax
	jz _Z9CL_Ping_fv_20
	call _Z16Sys_Millisecondsv
	mov edi, eax
	mov ebx, cl_pinglist
	mov [ebp-0x4c], ebx
	lea edx, [ebx+0x8]
	lea esi, [ebx+0x4140]
	jmp _Z9CL_Ping_fv_30
_Z9CL_Ping_fv_60:
	mov eax, edi
	sub eax, [edx+0x4]
	cmp eax, 0x1f3
	jg _Z9CL_Ping_fv_40
_Z9CL_Ping_fv_70:
	add ebx, 0x414
	add edx, 0x414
	mov ecx, esi
	cmp esi, ebx
	jz _Z9CL_Ping_fv_50
_Z9CL_Ping_fv_30:
	cmp word [edx], 0x0
	jz _Z9CL_Ping_fv_40
	mov eax, [edx+0x8]
	test eax, eax
	jz _Z9CL_Ping_fv_60
	cmp eax, 0x1f3
	jle _Z9CL_Ping_fv_70
_Z9CL_Ping_fv_40:
	mov word [ebx+0x8], 0x0
_Z9CL_Ping_fv_100:
	mov eax, [ebp-0x3c]
	mov [ebx], eax
	mov eax, [ebp-0x38]
	mov [ebx+0x4], eax
	mov eax, [ebp-0x34]
	mov [ebx+0x8], eax
	call _Z16Sys_Millisecondsv
	mov [ebx+0xc], eax
	mov dword [ebx+0x10], 0x0
	mov ecx, [ebx]
	mov [ebp-0x30], ecx
	mov edx, [ebx+0x4]
	mov [ebp-0x2c], edx
	mov eax, [ebx+0x8]
	mov [ebp-0x28], eax
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x0
	mov [esp], ecx
	mov [esp+0x4], edx
	mov [esp+0x8], eax
	call _Z25CL_SetServerInfoByAddress8netadr_tPKci
	mov ecx, [ebp-0x3c]
	mov [ebp-0x24], ecx
	mov edx, [ebp-0x38]
	mov [ebp-0x20], edx
	mov eax, [ebp-0x34]
	mov [ebp-0x1c], eax
	mov dword [esp+0x10], _cstring_getinfo_xxx
	mov [esp+0x4], ecx
	mov [esp+0x8], edx
	mov [esp+0xc], eax
	mov dword [esp], 0x0
	call _Z18NET_OutOfBandPrint8netsrc_t8netadr_tPKc
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z9CL_Ping_fv_50:
	mov ebx, [ebp-0x4c]
	mov edx, ebx
	mov esi, 0x80000000
_Z9CL_Ping_fv_90:
	mov eax, edi
	sub eax, [edx+0xc]
	cmp eax, esi
	jle _Z9CL_Ping_fv_80
	mov ebx, edx
	mov esi, eax
_Z9CL_Ping_fv_80:
	add edx, 0x414
	cmp ecx, edx
	jnz _Z9CL_Ping_fv_90
	jmp _Z9CL_Ping_fv_100


;CL_Rcon_f()
_Z9CL_Rcon_fv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x44c
	mov ebx, cmd_args
	mov eax, [ebx]
	cmp dword [ebx+eax*4+0x44], 0x1
	jle _Z9CL_Rcon_fv_10
	mov eax, [ebx+eax*4+0x64]
	mov edi, [eax+0x4]
	mov dword [esp+0x4], _cstring_login
	mov [esp], edi
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z9CL_Rcon_fv_20
	mov eax, [ebx]
	cmp dword [ebx+eax*4+0x44], 0x3
	jz _Z9CL_Rcon_fv_30
	mov dword [esp+0x4], _cstring_usage_rcon_login
	mov dword [esp], 0xe
	call _Z10Com_PrintfiPKcz
_Z9CL_Rcon_fv_90:
	add esp, 0x44c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z9CL_Rcon_fv_30:
	mov eax, [ebx+eax*4+0x64]
	mov edx, [eax+0x8]
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, edx
	repne scasb
	not ecx
	lea eax, [ecx-0x1]
	cmp eax, 0x17
	ja _Z9CL_Rcon_fv_40
	mov [esp+0x8], ecx
	mov [esp+0x4], edx
	mov dword [esp], rconGlob
	call memcpy
	add esp, 0x44c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z9CL_Rcon_fv_20:
	mov dword [esp+0x4], _cstring_logout
	mov [esp], edi
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z9CL_Rcon_fv_50
	cmp byte [rconGlob], 0x0
	jz _Z9CL_Rcon_fv_60
	mov byte [rconGlob], 0x0
	add esp, 0x44c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z9CL_Rcon_fv_40:
	mov dword [esp+0x8], 0x18
	mov dword [esp+0x4], _cstring_rcon_password_mu
	mov dword [esp], 0xe
	call _Z10Com_PrintfiPKcz
	add esp, 0x44c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z9CL_Rcon_fv_50:
	mov dword [esp+0x4], _cstring_host
	mov [esp], edi
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z9CL_Rcon_fv_70
	cmp byte [rconGlob], 0x0
	jnz _Z9CL_Rcon_fv_80
	mov dword [esp+0x4], _cstring_you_need_to_log_
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	jmp _Z9CL_Rcon_fv_90
_Z9CL_Rcon_fv_10:
	mov dword [esp+0x4], _cstring_usage_rcon_comma
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	add esp, 0x44c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z9CL_Rcon_fv_60:
	mov dword [esp+0x4], _cstring_not_logged_in
	mov dword [esp], 0xe
	call _Z10Com_PrintfiPKcz
	jmp _Z9CL_Rcon_fv_90
_Z9CL_Rcon_fv_70:
	mov eax, [ebx]
	cmp dword [ebx+eax*4+0x44], 0x3
	jz _Z9CL_Rcon_fv_100
	mov dword [esp+0x4], _cstring_usage_rcon_host_
	mov dword [esp], 0xe
	call _Z10Com_PrintfiPKcz
	jmp _Z9CL_Rcon_fv_90
_Z9CL_Rcon_fv_80:
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x400
	mov dword [esp+0x8], 0x0
	lea esi, [ebp-0x424]
	mov [esp+0x4], esi
	mov dword [esp], _cstring_rcon_
	call _Z15Com_AddToStringPKcPciii
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x400
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov dword [esp], rconGlob
	call _Z15Com_AddToStringPKcPciii
	mov edx, eax
	mov eax, [ebx]
	cmp dword [ebx+eax*4+0x44], 0x1
	jg _Z9CL_Rcon_fv_110
_Z9CL_Rcon_fv_180:
	cmp edx, 0x400
	jz _Z9CL_Rcon_fv_120
	mov byte [ebp+edx-0x424], 0x0
	mov eax, clientUIActives
	cmp dword [eax+0xc], 0x4
	jle _Z9CL_Rcon_fv_130
	mov eax, clientConnections
	movzx edx, word [eax+0x401d0]
	mov [ebp-0x42a], dx
	movzx edx, byte [eax+0x401cf]
	mov [ebp-0x42b], dl
	movzx edx, byte [eax+0x401ce]
	mov [ebp-0x42c], dl
	movzx edx, byte [eax+0x401cd]
	mov [ebp-0x42d], dl
	movzx ebx, byte [eax+0x401cc]
	mov edx, [eax+0x401c8]
_Z9CL_Rcon_fv_160:
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, esi
	repne scasb
	not ecx
	movzx eax, word [ebp-0x42a]
	mov [ebp-0x1c], ax
	movzx eax, byte [ebp-0x42b]
	mov [ebp-0x1d], al
	movzx eax, byte [ebp-0x42c]
	mov [ebp-0x1e], al
	movzx eax, byte [ebp-0x42d]
	mov [ebp-0x1f], al
	mov [ebp-0x20], bl
	mov [ebp-0x24], edx
	mov [esp+0x14], ecx
	mov [esp+0x10], esi
	mov [esp+0x4], edx
	mov eax, [ebp-0x20]
	mov [esp+0x8], eax
	mov eax, [ebp-0x1c]
	mov [esp+0xc], eax
	mov dword [esp], 0x0
	call _Z17NET_OutOfBandData8netsrc_t8netadr_tPKhi
	jmp _Z9CL_Rcon_fv_90
_Z9CL_Rcon_fv_100:
	mov dword [esp+0x4], rconGlob+0x18
	mov eax, [ebx+eax*4+0x64]
	mov eax, [eax+0x8]
	mov [esp], eax
	call _Z15NET_StringToAdrPKcP8netadr_t
	test eax, eax
	jz _Z9CL_Rcon_fv_140
	cmp word [rconGlob+0x20], 0x0
	jnz _Z9CL_Rcon_fv_90
	mov dword [esp], 0x7120
	call _Z8BigShorts
	mov [rconGlob+0x20], ax
	jmp _Z9CL_Rcon_fv_90
_Z9CL_Rcon_fv_130:
	mov edx, [rconGlob+0x18]
	cmp edx, 0x1
	jz _Z9CL_Rcon_fv_150
	movzx eax, word [rconGlob+0x20]
	mov [ebp-0x42a], ax
	movzx eax, byte [rconGlob+0x1f]
	mov [ebp-0x42b], al
	movzx eax, byte [rconGlob+0x1e]
	mov [ebp-0x42c], al
	movzx eax, byte [rconGlob+0x1d]
	mov [ebp-0x42d], al
	movzx ebx, byte [rconGlob+0x1c]
	jmp _Z9CL_Rcon_fv_160
_Z9CL_Rcon_fv_110:
	mov edi, 0x1
	jmp _Z9CL_Rcon_fv_170
_Z9CL_Rcon_fv_190:
	mov eax, _cstring_null
_Z9CL_Rcon_fv_200:
	mov dword [esp+0x10], 0x1
	mov dword [esp+0xc], 0x400
	mov [esp+0x8], edx
	mov [esp+0x4], esi
	mov [esp], eax
	call _Z15Com_AddToStringPKcPciii
	mov edx, eax
	add edi, 0x1
	mov eax, [ebx]
	cmp edi, [ebx+eax*4+0x44]
	jge _Z9CL_Rcon_fv_180
_Z9CL_Rcon_fv_170:
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x400
	mov [esp+0x8], edx
	mov [esp+0x4], esi
	mov dword [esp], _cstring_space
	call _Z15Com_AddToStringPKcPciii
	mov edx, eax
	mov eax, [ebx]
	cmp edi, [ebx+eax*4+0x44]
	jge _Z9CL_Rcon_fv_190
	mov eax, [ebx+eax*4+0x64]
	mov eax, [eax+edi*4]
	jmp _Z9CL_Rcon_fv_200
_Z9CL_Rcon_fv_140:
	mov dword [esp+0x4], _cstring_bad_host_address
	mov dword [esp], 0xe
	call _Z10Com_PrintfiPKcz
	jmp _Z9CL_Rcon_fv_90
_Z9CL_Rcon_fv_120:
	mov dword [esp+0x8], 0x3ff
	mov dword [esp+0x4], _cstring_rcon_commands_ar
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	jmp _Z9CL_Rcon_fv_90
_Z9CL_Rcon_fv_150:
	mov dword [esp+0x4], _cstring_cant_determine_r
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	mov dword [esp+0x4], _cstring_1_joining_the_se
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	mov dword [esp+0x4], _cstring_2_setting_the_ho
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	jmp _Z9CL_Rcon_fv_90


;Initialized global or static variables of cl_main_pc_mp:
SECTION .data


;Initialized constant data of cl_main_pc_mp:
SECTION .rdata


;Zero initialized global or static variables of cl_main_pc_mp:
SECTION .bss
s_playerMute: resb 0x40
rconGlob: resb 0x40
cl_serverStatusList: resb 0x20260


;All cstrings:
SECTION .rdata
_cstring_already_connecte:		db "Already connected to a server. Disconnect first",0ah,0
_cstring_reconnect:		db "reconnect",0
_cstring_localhost:		db "localhost",0
_cstring_s_resolved_to_ii:		db "%s resolved to %i.%i.%i.%i:%i",0ah,0
_cstring_04x:		db "%04x",0
_cstring_exe_err_invalid_:		db "EXE_ERR_INVALID_CD_KEY",0
_cstring_selectstringtabl:		db "selectStringTableEntryInDvar mp/didyouknow.csv 0 didyouknow",0
_cstring_platform_notsign:		db "PLATFORM_NOTSIGNEDINTOPROFILE",0
_cstring_bad_server_addre:		db "Bad server address",0ah,0
_cstring_usage_connect_se:		db "usage: connect [server]",0ah,0
_cstring_null:		db 0
_cstring_muteplayer_i:		db "muteplayer %i",0
_cstring_unmuteplayer_i:		db "unmuteplayer %i",0
_cstring_download_failure:		db 015h,"Download failure while getting ",27h,"%s",27h,0ah,0
_cstring_wwwdl_fail:		db "wwwdl fail",0
_cstring_motdtxt:		db "motd.txt",0
_cstring_motd:		db "motd",0
_cstring_reconnect1:		db "reconnect",0ah,0
_cstring_wwwdl_done:		db "wwwdl done",0
_cstring_getstatus:		db "getstatus",0
_cstring_clients:		db "clients",0
_cstring_hostname:		db "hostname",0
_cstring_mapname:		db "mapname",0
_cstring_sv_maxclients:		db "sv_maxclients",0
_cstring_game:		db "game",0
_cstring_gametype:		db "gametype",0
_cstring_nettype:		db "nettype",0
_cstring_minping:		db "minping",0
_cstring_maxping:		db "maxping",0
_cstring_sv_allowanonymou:		db "sv_allowAnonymous",0
_cstring_con_disabled:		db "con_disabled",0
_cstring_pswrd:		db "pswrd",0
_cstring_pure:		db "pure",0
_cstring_ff:		db "ff",0
_cstring_kc:		db "kc",0
_cstring_hc:		db "hc",0
_cstring_od:		db "od",0
_cstring_hw:		db "hw",0
_cstring_mod:		db "mod",0
_cstring_voice:		db "voice",0
_cstring_pb:		db "pb",0
_cstring_not_connected_to:		db "Not connected to a server.",0ah,0
_cstring_usage_serverstat:		db "Usage: serverstatus [server]",0ah,0
_cstring_requesting_serve:		db "Requesting servers from the master...",0ah,0
_cstring_cod4masteractivi:		db "cod4master.activision.com",0
_cstring_getservers_s:		db "getservers %s",0
_cstring__s:		db " %s",0
_cstring_fs_restrict:		db "fs_restrict",0
_cstring_usage_globalserv:		db "usage: globalservers <master# 0-1> <protocol> [keywords]",0ah,0
_cstring_protocol:		db "protocol",0
_cstring_debug_protocol:		db "debug_protocol",0
_cstring_different_protoc:		db "Different protocol info packet: %s",0ah,0
_cstring_s_s:		db "%s: %s",0
_cstring_max_other_server:		db "MAX_OTHER_SERVERS hit, dropping infoResponse",0ah,0
_cstring_s:		db "%s",0
_cstring_:		db 5ch,0
_cstring_server_settings:		db "Server settings:",0ah,0
_cstring_s1:		db "%s",0ah,0
_cstring_24s:		db "%-24s",0
_cstring_s2:		db 5ch,"%s",0
_cstring_d_d:		db "%d %d",0
_cstring_2d___3d____3d___:		db "%-2d   %-3d    %-3d   %s",0ah,0
_cstring_unknown:		db "unknown",0
_cstring_players:		db 0ah,"Players:",0ah,0
_cstring_num_score_ping_n:		db "num: score: ping: name:",0ah,0
_cstring_cl_serversrespon:		db "CL_ServersResponsePacket",0ah,0
_cstring_server_d_ip_dddd:		db "server: %d ip: %d.%d.%d.%d:%d",0ah,0
_cstring_d_servers_parsed:		db "%d servers parsed (total unique %d, total seen %d)",0ah,0
_cstring_usage_ping_serve:		db "usage: ping [server]",0ah,0
_cstring_getinfo_xxx:		db "getinfo xxx",0
_cstring_login:		db "login",0
_cstring_usage_rcon_login:		db "USAGE: rcon login <password>",0ah,0
_cstring_logout:		db "logout",0
_cstring_rcon_password_mu:		db "rcon password must be %i characters or less",0ah,0
_cstring_host:		db "host",0
_cstring_you_need_to_log_:		db "You need to log in with ",27h,"rcon login <password>",27h," before using rcon.",0ah,0
_cstring_usage_rcon_comma:		db "USAGE: rcon <command> <options...>",0ah,0
_cstring_not_logged_in:		db "Not logged in",0ah,0
_cstring_usage_rcon_host_:		db "USAGE: rcon host <address>",0ah,0
_cstring_rcon_:		db "rcon ",0
_cstring_space:		db " ",0
_cstring_bad_host_address:		db "bad host address",0ah,0
_cstring_rcon_commands_ar:		db "rcon commands are limited to %i characters",0ah,0
_cstring_cant_determine_r:		db "Can",27h,"t determine rcon target.  You can fix this by either:",0ah,0
_cstring_1_joining_the_se:		db "1) Joining the server as a player.",0ah,0
_cstring_2_setting_the_ho:		db "2) Setting the host server with ",27h,"rcon host <address>",27h,".",0ah,0



;All constant floats and doubles:
SECTION .rdata

