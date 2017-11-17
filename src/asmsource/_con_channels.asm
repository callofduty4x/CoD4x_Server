;Imports of con_channels:
	extern Com_Printf
	extern Q_stricmpwild
	extern cvar_modifiedFlags
	extern memcpy
	extern Com_Error
	extern Q_stricmp
	extern Q_stricmpn
	extern Q_strncpyz
	extern memset
	extern Cvar_RegisterString
	extern sprintf
	extern Cmd_AddCommand
	extern FS_Printf
	extern _Z13Con_FilterAddb





;Exports of con_channels:
	global pcGlob
	global con_default_console_filter
	global builtinChannels
	global con_gameMsgWindowNFilter_BaseDesc
	global con_gameMsgWindowNFilter_BaseName
	global Con_ChannelList_f
	global _Z21Con_FilterShowChannel16print_msg_dest_tPKcb
	global Con_FilterRemove_f
	global Con_FilterAdd_f
	global Con_InitChannelsForDestFromList
	global Con_FilterList_f
	global _ZZ16Con_InitChannelsvE20Con_FilterList_f_VAR
	global _ZZ16Con_InitChannelsvE22Con_FilterRemove_f_VAR
	global _ZZ16Con_InitChannelsvE19Con_FilterAdd_f_VAR
	global _ZZ16Con_InitChannelsvE21Con_ChannelList_f_VAR
	global Con_GetChannel
	global Con_OpenChannel
	global Con_InitChannels
	global Con_IsChannelOpen
	global Con_IsChannelVisible
	global Con_ShutdownChannels
	global Con_InitGameMsgChannels
	global Con_ScriptHasPermission
	global Con_WriteFilterConfigString
	global con_gameMsgWindowNFilter
	global con_gameMsgWindowNFilter_Descs
	global con_gameMsgWindowNFilter_Names
	global defaultGameWindowFilters


SECTION .text


;Con_ChannelList_f()
Con_ChannelList_f:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	xor ebx, ebx
	mov esi, pcGlob
	mov edi, pcGlob
	add ebx, 0x1
	add edi, 0x21
	cmp ebx, 0x100
	jz Con_ChannelList_f_10
Con_ChannelList_f_40:
	test ebx, ebx
	jz Con_ChannelList_f_20
	cmp byte [esi+0x21], 0x0
	jnz Con_ChannelList_f_30
Con_ChannelList_f_20:
	add esi, 0x21
Con_ChannelList_f_50:
	add ebx, 0x1
	add edi, 0x21
	cmp ebx, 0x100
	jnz Con_ChannelList_f_40
Con_ChannelList_f_10:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Con_ChannelList_f_30:
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_s
	mov dword [esp], 0x0
	call Com_Printf
	add esi, 0x21
	jmp Con_ChannelList_f_50
	nop


;Con_FilterShowChannel(print_msg_dest_t, char const*, unsigned char)
_Z21Con_FilterShowChannel16print_msg_dest_tPKcb:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov [ebp-0x20], edx
	mov [ebp-0x21], cl
	mov dword [ebp-0x1c], 0x0
	mov ebx, 0x1
	mov esi, pcGlob
	shl eax, 0x5
	add eax, 0x2100
	mov [ebp-0x28], eax
	mov edi, pcGlob+0x21
	jmp Con_FilterShowChannel_10
Con_FilterShowChannel_30:
	add ebx, 0x1
	add edi, 0x21
	add esi, 0x21
	cmp ebx, 0x100
	jz Con_FilterShowChannel_20
Con_FilterShowChannel_10:
	cmp byte [esi+0x21], 0x0
	jz Con_FilterShowChannel_30
	mov [esp+0x4], edi
	mov eax, [ebp-0x20]
	mov [esp], eax
	call Q_stricmpwild
	test eax, eax
	jnz Con_FilterShowChannel_30
	cmp byte [ebp-0x21], 0x0
	jz Con_FilterShowChannel_40
	mov eax, ebx
	sar eax, 0x5
	lea edx, [eax*4]
	mov ecx, ebx
	and ecx, 0x1f
	mov eax, 0x1
	shl eax, cl
	mov ecx, [ebp-0x28]
	test [ecx+edx+pcGlob], eax
	jnz Con_FilterShowChannel_30
	or eax, [ecx+edx+pcGlob]
	mov [ecx+edx+pcGlob], eax
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_adding_channel_s
	mov dword [esp], 0x0
	call Com_Printf
	add dword [ebp-0x1c], 0x1
	add ebx, 0x1
	add edi, 0x21
	add esi, 0x21
	cmp ebx, 0x100
	jnz Con_FilterShowChannel_10
Con_FilterShowChannel_20:
	mov eax, [ebp-0x1c]
	test eax, eax
	jnz Con_FilterShowChannel_50
	mov dword [esp+0x4], _cstring_no_channels_adde
	mov dword [esp], 0x0
	call Com_Printf
Con_FilterShowChannel_50:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Con_FilterShowChannel_40:
	mov eax, ebx
	sar eax, 0x5
	lea edx, [eax*4]
	mov ecx, ebx
	and ecx, 0x1f
	mov eax, 0x1
	shl eax, cl
	mov ecx, [ebp-0x28]
	test [ecx+edx+pcGlob], eax
	jz Con_FilterShowChannel_30
	not eax
	and [ecx+edx+pcGlob], eax
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_hiding_channel_s
	mov dword [esp], 0x0
	call Com_Printf
	add dword [ebp-0x1c], 0x1
	jmp Con_FilterShowChannel_30


;Con_FilterRemove_f()
Con_FilterRemove_f:
	push ebp
	mov ebp, esp
	xor eax, eax
	pop ebp
	jmp _Z13Con_FilterAddb
	nop


;Con_FilterAdd_f()
Con_FilterAdd_f:
	push ebp
	mov ebp, esp
	mov eax, 0x1
	pop ebp
	jmp _Z13Con_FilterAddb


;Con_InitChannelsForDestFromList(print_msg_dest_t, char const*)
Con_InitChannelsForDestFromList:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x12c
	mov [ebp-0x124], eax
	mov esi, edx
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, edx
	repne scasb
	not ecx
	sub ecx, 0x1
	mov [ebp-0x120], ecx
	xor ecx, ecx
	mov edx, _cstring_
	mov eax, [ebp-0x124]
	call _Z21Con_FilterShowChannel16print_msg_dest_tPKcb
	xor edx, edx
	mov dword [ebp-0x11c], 0x0
	xor ebx, ebx
	jmp Con_InitChannelsForDestFromList_10
Con_InitChannelsForDestFromList_50:
	test dl, dl
	jz Con_InitChannelsForDestFromList_20
	mov edi, ebx
	sub edi, [ebp-0x11c]
	lea eax, [edi+0x1]
	cmp eax, 0x100
	ja Con_InitChannelsForDestFromList_30
Con_InitChannelsForDestFromList_60:
	mov edx, [ebp-0x11c]
	lea eax, [esi+edx]
	mov [esp+0x8], edi
	mov [esp+0x4], eax
	lea eax, [ebp-0x118]
	mov [esp], eax
	call memcpy
	mov byte [ebp+edi-0x118], 0x0
	mov ecx, 0x1
	lea edx, [ebp-0x118]
	mov eax, [ebp-0x124]
	call _Z21Con_FilterShowChannel16print_msg_dest_tPKcb
	xor edx, edx
Con_InitChannelsForDestFromList_20:
	add ebx, 0x1
	cmp [ebp-0x120], ebx
	jb Con_InitChannelsForDestFromList_40
Con_InitChannelsForDestFromList_10:
	movzx eax, byte [esi+ebx]
	cmp al, 0x20
	jz Con_InitChannelsForDestFromList_50
	cmp al, 0x2c
	jz Con_InitChannelsForDestFromList_50
	test al, al
	jz Con_InitChannelsForDestFromList_50
	test dl, dl
	jnz Con_InitChannelsForDestFromList_20
	mov [ebp-0x11c], ebx
	mov edx, 0x1
	add ebx, 0x1
	cmp [ebp-0x120], ebx
	jae Con_InitChannelsForDestFromList_10
Con_InitChannelsForDestFromList_40:
	add esp, 0x12c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Con_InitChannelsForDestFromList_30:
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_channel_name_too
	mov dword [esp], 0x2
	call Com_Error
	jmp Con_InitChannelsForDestFromList_60
	nop


;Con_FilterList_f()
Con_FilterList_f:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	xor ebx, ebx
Con_FilterList_f_20:
	add ebx, 0x1
	cmp ebx, 0xff
	jg Con_FilterList_f_10
	test ebx, ebx
	jz Con_FilterList_f_20
	mov eax, ebx
	shl eax, 0x5
	lea esi, [eax+ebx+pcGlob]
Con_FilterList_f_30:
	cmp byte [esi], 0x0
	jz Con_FilterList_f_20
	mov edx, ebx
	sar edx, 0x5
	mov ecx, ebx
	and ecx, 0x1f
	mov eax, 0x1
	shl eax, cl
	test [edx*4+pcGlob+0x2100], eax
	jz Con_FilterList_f_20
	mov eax, ebx
	shl eax, 0x5
	lea eax, [eax+ebx+pcGlob]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_s
	mov dword [esp], 0x0
	call Com_Printf
	add ebx, 0x1
	cmp ebx, 0x100
	jz Con_FilterList_f_10
	add esi, 0x21
	test ebx, ebx
	jnz Con_FilterList_f_30
	jmp Con_FilterList_f_20
Con_FilterList_f_10:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;Con_GetChannel(char const*, int*)
Con_GetChannel:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	xor esi, esi
	mov ebx, pcGlob
	mov edi, pcGlob
	jmp Con_GetChannel_10
Con_GetChannel_30:
	add esi, 0x1
	add edi, 0x21
	add ebx, 0x21
	cmp esi, 0x100
	jz Con_GetChannel_20
Con_GetChannel_10:
	cmp byte [ebx], 0x0
	jz Con_GetChannel_30
	mov [esp+0x4], edi
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jnz Con_GetChannel_30
	mov eax, [ebp+0xc]
	mov [eax], esi
Con_GetChannel_20:
	xor eax, eax
	cmp esi, 0xff
	setle al
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Con_OpenChannel(char const*, unsigned char)
Con_OpenChannel:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	movzx eax, byte [ebp+0xc]
	mov [ebp-0x19], al
	xor edi, edi
	mov esi, pcGlob
	mov ebx, pcGlob
	jmp Con_OpenChannel_10
Con_OpenChannel_40:
	mov dword [esp+0x8], 0x20
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov [esp], ebx
	call Q_stricmpn
	test eax, eax
	jz Con_OpenChannel_20
	add edi, 0x1
	add ebx, 0x21
	add esi, 0x21
	cmp edi, 0x100
	jz Con_OpenChannel_30
Con_OpenChannel_10:
	cmp byte [esi], 0x0
	jnz Con_OpenChannel_40
	mov dword [esp+0x8], 0x20
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov ebx, edi
	shl ebx, 0x5
	add ebx, edi
	lea eax, [ebx+pcGlob]
	mov [esp], eax
	call Q_strncpyz
	movzx eax, byte [ebp-0x19]
	mov [ebx+pcGlob+0x20], al
Con_OpenChannel_20:
	mov eax, 0x1
Con_OpenChannel_50:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Con_OpenChannel_30:
	xor eax, eax
	jmp Con_OpenChannel_50


;Con_InitChannels()
Con_InitChannels:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov dword [esp+0x8], 0x2100
	mov dword [esp+0x4], 0x0
	mov dword [esp], pcGlob
	call memset
	mov dword [ebp-0x1c], builtinChannels
Con_InitChannels_40:
	mov eax, [ebp-0x1c]
	mov eax, [eax]
	mov [ebp-0x28], eax
	xor edi, edi
	mov esi, pcGlob
	mov ebx, pcGlob
	jmp Con_InitChannels_10
Con_InitChannels_30:
	mov dword [esp+0x8], 0x20
	mov edx, [ebp-0x28]
	mov [esp+0x4], edx
	mov [esp], ebx
	call Q_stricmpn
	test eax, eax
	jz Con_InitChannels_20
	add edi, 0x1
	add ebx, 0x21
	add esi, 0x21
	cmp edi, 0x100
	jz Con_InitChannels_20
Con_InitChannels_10:
	cmp byte [esi], 0x0
	jnz Con_InitChannels_30
	mov dword [esp+0x8], 0x20
	mov eax, [ebp-0x28]
	mov [esp+0x4], eax
	mov ebx, edi
	shl ebx, 0x5
	add ebx, edi
	lea eax, [ebx+pcGlob]
	mov [esp], eax
	call Q_strncpyz
	mov byte [ebx+pcGlob+0x20], 0x0
Con_InitChannels_20:
	add dword [ebp-0x1c], 0x4
	mov edx, builtinChannels+0x64
	cmp edx, [ebp-0x1c]
	jnz Con_InitChannels_40
	mov byte [pcGlob+0x338], 0x1
	mov dword [esp+0xc], _cstring_default_channel_
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _cstring_
	mov dword [esp], _cstring_con_default_cons
	call Cvar_RegisterString
	mov [con_default_console_filter], eax
	mov edx, [eax+0xc]
	mov ecx, 0x1
	xor eax, eax
	call _Z21Con_FilterShowChannel16print_msg_dest_tPKcb
	mov ecx, 0x1
	mov edx, _cstring_std
	mov eax, 0x1
	call _Z21Con_FilterShowChannel16print_msg_dest_tPKcb
	mov ecx, 0x1
	mov edx, _cstring_error
	mov eax, 0x1
	call _Z21Con_FilterShowChannel16print_msg_dest_tPKcb
	mov ecx, 0x1
	mov edx, _cstring_error
	mov eax, 0x2
	call _Z21Con_FilterShowChannel16print_msg_dest_tPKcb
	xor ebx, ebx
	mov dword [ebp-0x24], defaultGameWindowFilters
	mov dword [ebp-0x20], con_gameMsgWindowNFilter
	mov edi, con_gameMsgWindowNFilter_Descs
	mov esi, con_gameMsgWindowNFilter_Names
Con_InitChannels_50:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_con_gamemsgwindo
	mov [esp], esi
	call sprintf
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_spaceseparated_l
	mov [esp], edi
	call sprintf
	mov [esp+0xc], edi
	mov dword [esp+0x8], 0x29
	mov edx, [ebp-0x24]
	mov eax, [edx]
	mov [esp+0x4], eax
	mov [esp], esi
	call Cvar_RegisterString
	mov edx, [ebp-0x20]
	mov [edx], eax
	add ebx, 0x1
	add esi, 0x19
	add edi, 0x5b
	add dword [ebp-0x24], 0x4
	add edx, 0x4
	mov [ebp-0x20], edx
	cmp ebx, 0x4
	jnz Con_InitChannels_50
	mov esi, con_gameMsgWindowNFilter
	mov bl, 0x3
Con_InitChannels_60:
	mov eax, [esi]
	mov edx, [eax+0xc]
	mov eax, ebx
	call Con_InitChannelsForDestFromList
	add esi, 0x4
	add ebx, 0x1
	cmp ebx, 0x7
	jnz Con_InitChannels_60
	mov dword [esp+0x8], _ZZ16Con_InitChannelsvE21Con_ChannelList_f_VAR
	mov dword [esp+0x4], Con_ChannelList_f
	mov dword [esp], _cstring_con_channellist
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ16Con_InitChannelsvE19Con_FilterAdd_f_VAR
	mov dword [esp+0x4], Con_FilterAdd_f
	mov dword [esp], _cstring_con_showchannel
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ16Con_InitChannelsvE22Con_FilterRemove_f_VAR
	mov dword [esp+0x4], Con_FilterRemove_f
	mov dword [esp], _cstring_con_hidechannel
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ16Con_InitChannelsvE20Con_FilterList_f_VAR
	mov dword [esp+0x4], Con_FilterList_f
	mov dword [esp], _cstring_con_visiblechann
	call Cmd_AddCommand
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	add [eax], al


;Con_IsChannelOpen(int)
Con_IsChannelOpen:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	cmp edx, 0xff
	ja Con_IsChannelOpen_10
	mov eax, edx
	shl eax, 0x5
	cmp byte [eax+edx+pcGlob], 0x0
	setnz al
	movzx eax, al
	pop ebp
	ret
Con_IsChannelOpen_10:
	xor eax, eax
	pop ebp
	ret
	nop


;Con_IsChannelVisible(print_msg_dest_t, int, int)
Con_IsChannelVisible:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov edx, [ebp+0x8]
	mov ecx, [ebp+0xc]
	mov ebx, [ebp+0x10]
	mov eax, ecx
	shl eax, 0x5
	cmp byte [eax+ecx+pcGlob], 0x0
	jz Con_IsChannelVisible_10
	cmp edx, 0x1
	jz Con_IsChannelVisible_20
	test edx, edx
	jnz Con_IsChannelVisible_30
Con_IsChannelVisible_60:
	test ecx, ecx
	jz Con_IsChannelVisible_40
Con_IsChannelVisible_30:
	shl edx, 0x5
	lea esi, [edx+0x2100]
	mov edx, ecx
	sar edx, 0x5
	and ecx, 0x1f
	mov eax, 0x1
	shl eax, cl
	test [esi+edx*4+pcGlob], eax
	jnz Con_IsChannelVisible_40
	sar ebx, 0x5
	and ebx, 0x1f
	lea eax, [ebx-0x2]
	cmp eax, 0x1
	jbe Con_IsChannelVisible_50
Con_IsChannelVisible_10:
	xor eax, eax
	pop ebx
	pop esi
	pop ebp
	ret
Con_IsChannelVisible_50:
	test byte [esi+pcGlob], 0x2
	jz Con_IsChannelVisible_10
Con_IsChannelVisible_40:
	mov eax, 0x1
	pop ebx
	pop esi
	pop ebp
	ret
Con_IsChannelVisible_20:
	lea eax, [ecx-0x2]
	cmp eax, 0x2
	jbe Con_IsChannelVisible_10
	and edx, 0xffffff00
	jmp Con_IsChannelVisible_60
	nop


;Con_ShutdownChannels()
Con_ShutdownChannels:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	xor ebx, ebx
	mov esi, pcGlob
	mov edi, 0x1
Con_ShutdownChannels_30:
	cmp byte [esi], 0x0
	jz Con_ShutdownChannels_10
	mov byte [esi], 0x0
	mov eax, ebx
	sar eax, 0x5
	mov ecx, ebx
	and ecx, 0x1f
	mov edx, edi
	shl edx, cl
	mov ecx, edx
	not ecx
	xor edx, edx
	lea eax, [eax*4+pcGlob+0x2100]
Con_ShutdownChannels_20:
	and [eax], ecx
	add edx, 0x1
	add eax, 0x20
	cmp edx, 0x7
	jnz Con_ShutdownChannels_20
Con_ShutdownChannels_10:
	add ebx, 0x1
	add esi, 0x21
	cmp ebx, 0x100
	jnz Con_ShutdownChannels_30
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Con_InitGameMsgChannels()
Con_InitGameMsgChannels:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	xor ebx, ebx
	mov dword [ebp-0x20], defaultGameWindowFilters
	mov dword [ebp-0x1c], con_gameMsgWindowNFilter
	mov edi, con_gameMsgWindowNFilter_Descs
	mov esi, con_gameMsgWindowNFilter_Names
Con_InitGameMsgChannels_10:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_con_gamemsgwindo
	mov [esp], esi
	call sprintf
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_spaceseparated_l
	mov [esp], edi
	call sprintf
	mov [esp+0xc], edi
	mov dword [esp+0x8], 0x29
	mov edx, [ebp-0x20]
	mov eax, [edx]
	mov [esp+0x4], eax
	mov [esp], esi
	call Cvar_RegisterString
	mov edx, [ebp-0x1c]
	mov [edx], eax
	add ebx, 0x1
	add esi, 0x19
	add edi, 0x5b
	add dword [ebp-0x20], 0x4
	add edx, 0x4
	mov [ebp-0x1c], edx
	cmp ebx, 0x4
	jnz Con_InitGameMsgChannels_10
	mov esi, con_gameMsgWindowNFilter
	mov bl, 0x3
Con_InitGameMsgChannels_20:
	mov eax, [esi]
	mov edx, [eax+0xc]
	mov eax, ebx
	call Con_InitChannelsForDestFromList
	add esi, 0x4
	add ebx, 0x1
	cmp ebx, 0x7
	jnz Con_InitGameMsgChannels_20
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop
	add [eax], al


;Con_ScriptHasPermission(int)
Con_ScriptHasPermission:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	cmp edx, 0xff
	ja Con_ScriptHasPermission_10
	mov eax, edx
	shl eax, 0x5
	add eax, edx
	cmp byte [eax+pcGlob], 0x0
	jz Con_ScriptHasPermission_10
	movzx eax, byte [eax+pcGlob+0x20]
	pop ebp
	ret
Con_ScriptHasPermission_10:
	xor eax, eax
	pop ebp
	ret
	nop


;Con_WriteFilterConfigString(int)
Con_WriteFilterConfigString:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov dword [esp+0x4], _cstring_con_hidechannel_
	mov eax, [ebp+0x8]
	mov [esp], eax
	call FS_Printf
	xor ebx, ebx
	mov esi, pcGlob
	mov edi, pcGlob
Con_WriteFilterConfigString_30:
	cmp byte [esi], 0x0
	jz Con_WriteFilterConfigString_10
	test ebx, ebx
	jz Con_WriteFilterConfigString_20
	mov eax, ebx
	sar eax, 0x5
	mov ecx, ebx
	and ecx, 0x1f
	mov edx, 0x1
	shl edx, cl
	test [eax*4+pcGlob+0x2100], edx
	jz Con_WriteFilterConfigString_10
Con_WriteFilterConfigString_20:
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring__s
	mov eax, [ebp+0x8]
	mov [esp], eax
	call FS_Printf
Con_WriteFilterConfigString_10:
	add ebx, 0x1
	add edi, 0x21
	add esi, 0x21
	cmp ebx, 0x100
	jnz Con_WriteFilterConfigString_30
	mov dword [esp+0x4], _cstring_1
	mov edx, [ebp+0x8]
	mov [esp], edx
	call FS_Printf
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Initialized global or static variables of con_channels:
SECTION .data
builtinChannels: dd _cstring_dontfilter, _cstring_error, _cstring_gamenotify, _cstring_boldgame, _cstring_subtitle, _cstring_obituary, _cstring_logfile_only, _cstring_console_only, _cstring_gfx, _cstring_sound, _cstring_files, _cstring_devgui, _cstring_profile, _cstring_ui, _cstring_client, _cstring_server, _cstring_system, _cstring_playerweap, _cstring_ai, _cstring_anim, _cstring_physics, _cstring_fx, _cstring_leaderboards, _cstring_parserscript, _cstring_script, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
defaultGameWindowFilters: dd _cstring_gamenotify_obitu, _cstring_boldgame, _cstring_subtitle, _cstring_null, 0x0, 0x0, 0x0, 0x0


;Initialized constant data of con_channels:
SECTION .rdata


;Zero initialized global or static variables of con_channels:
SECTION .bss
pcGlob: resb 0x21e0
con_default_console_filter: resb 0x4
_ZZ16Con_InitChannelsvE20Con_FilterList_f_VAR: resb 0x14
_ZZ16Con_InitChannelsvE22Con_FilterRemove_f_VAR: resb 0x14
_ZZ16Con_InitChannelsvE19Con_FilterAdd_f_VAR: resb 0x14
_ZZ16Con_InitChannelsvE21Con_ChannelList_f_VAR: resb 0x60
con_gameMsgWindowNFilter: resb 0x1c
con_gameMsgWindowNFilter_Descs: resb 0x180
con_gameMsgWindowNFilter_Names: resb 0x64


;All cstrings:
SECTION .rdata
_cstring_s:		db "%s",0ah,0
_cstring_adding_channel_s:		db "Adding channel: %s",0ah,0
_cstring_no_channels_adde:		db "No channels added or hidden",0ah,0
_cstring_hiding_channel_s:		db "Hiding channel: %s",0ah,0
_cstring_null:		db 0
_cstring_usage_s_channelc:		db "USAGE: %s <channel>",0ah,"<channel> may include wildcards */",3fh,0ah,0
_cstring_:		db "*",0
_cstring_channel_name_too:		db "Channel name too long in specified list: ",22h,"%s",22h,0ah,0
_cstring_default_channel_:		db "Default channel filter for the console destination.",0
_cstring_con_default_cons:		db "con_default_console_filter",0
_cstring_std:		db "std",0
_cstring_error:		db "error",0
_cstring_con_gamemsgwindo:		db "con_gameMsgWindow%dFilter",0
_cstring_spaceseparated_l:		db "Space-separated list of console channels that should be displayed in game message window %d",0
_cstring_con_channellist:		db "con_channellist",0
_cstring_con_showchannel:		db "con_showchannel",0
_cstring_con_hidechannel:		db "con_hidechannel",0
_cstring_con_visiblechann:		db "con_visiblechannellist",0
_cstring_con_hidechannel_:		db "con_hidechannel *; con_showchannel",0
_cstring__s:		db " %s",0
_cstring_1:		db 0ah,0
_cstring_dontfilter:		db "dontfilter",0
_cstring_gamenotify:		db "gamenotify",0
_cstring_boldgame:		db "boldgame",0
_cstring_subtitle:		db "subtitle",0
_cstring_obituary:		db "obituary",0
_cstring_logfile_only:		db "logfile_only",0
_cstring_console_only:		db "console_only",0
_cstring_gfx:		db "gfx",0
_cstring_sound:		db "sound",0
_cstring_files:		db "files",0
_cstring_devgui:		db "devgui",0
_cstring_profile:		db "profile",0
_cstring_ui:		db "ui",0
_cstring_client:		db "client",0
_cstring_server:		db "server",0
_cstring_system:		db "system",0
_cstring_playerweap:		db "playerweap",0
_cstring_ai:		db "ai",0
_cstring_anim:		db "anim",0
_cstring_physics:		db "physics",0
_cstring_fx:		db "fx",0
_cstring_leaderboards:		db "leaderboards",0
_cstring_parserscript:		db "parserscript",0
_cstring_script:		db "script",0
_cstring_gamenotify_obitu:		db "gamenotify obituary",0



;All constant floats and doubles:
SECTION .rdata

