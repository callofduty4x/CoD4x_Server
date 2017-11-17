;Imports of g_svcmds:
	extern atoi
	extern Com_sprintf
	extern g_banIPs
	extern Cvar_SetString
	extern Com_Printf
	extern cmd_args
	extern Q_stricmp
	extern sv_cmd_args
	extern SV_Cmd_ArgvBuffer
	extern g_dedicated
	extern ConcatArgs
	extern va
	extern SV_GameSendServerCommand
	extern Cbuf_InsertText
	extern Q_strncpyz
	extern strchr
	extern level
	extern g_entities
	extern G_GetEntityTypeName
	extern SL_ConvertToString

;Exports of g_svcmds:
	global numIPFilters
	global ipFilters
	global AddIP
	global ConsoleCommand
	global G_ProcessIPBans
	global Svcmd_RemoveIP_f
	global Svcmd_EntityList_f


SECTION .text


;AddIP(char*)
AddIP:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x44c
	mov edi, eax
	mov ecx, [numIPFilters]
	test ecx, ecx
	jg AddIP_10
AddIP_120:
	test ecx, ecx
	jz AddIP_20
	mov dword [ebp-0x434], 0x0
	mov edx, [ebp-0x434]
AddIP_150:
	lea edx, [edx*8+ipFilters]
	mov [ebp-0x430], edx
	mov eax, 0x1
AddIP_30:
	mov byte [eax+ebp-0x1d], 0x0
	mov byte [eax+ebp-0x21], 0x0
	add eax, 0x1
	cmp eax, 0x5
	jnz AddIP_30
	mov esi, 0x1
	lea ebx, [ebp-0x420]
AddIP_80:
	movzx edx, byte [edi]
	lea eax, [edx-0x30]
	cmp al, 0x9
	ja AddIP_40
	xor ecx, ecx
AddIP_50:
	mov [ecx+ebx], dl
	add ecx, 0x1
	movzx edx, byte [ecx+edi]
	lea eax, [edx-0x30]
	cmp al, 0x9
	jbe AddIP_50
	lea edi, [ecx+edi]
	mov byte [ebp+ecx-0x420], 0x0
	mov [esp], ebx
	call atoi
	mov [esi+ebp-0x1d], al
	test al, al
	jz AddIP_60
	mov byte [esi+ebp-0x21], 0xff
AddIP_60:
	cmp byte [edi], 0x0
	jz AddIP_70
	add edi, 0x1
	add esi, 0x1
	cmp esi, 0x5
	jnz AddIP_80
AddIP_70:
	mov eax, [ebp-0x20]
	mov edx, [ebp-0x430]
	mov [edx], eax
	mov eax, [ebp-0x1c]
	mov [edx+0x4], eax
AddIP_170:
	mov byte [ebp-0x420], 0x0
	mov edx, [numIPFilters]
	test edx, edx
	jle AddIP_90
	mov dword [ebp-0x42c], 0x0
	mov esi, ipFilters
AddIP_110:
	mov eax, [esi+0x4]
	cmp eax, 0xffffffff
	jz AddIP_100
	mov [ebp-0x20], eax
	cld
	mov ecx, 0xffffffff
	mov edi, ebx
	xor eax, eax
	repne scasb
	not ecx
	sub ecx, 0x1
	movzx eax, byte [ebp-0x1d]
	mov [esp+0x18], eax
	movzx eax, byte [ebp-0x1e]
	mov [esp+0x14], eax
	movzx eax, byte [ebp-0x1f]
	mov [esp+0x10], eax
	movzx eax, byte [ebp-0x20]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_iiii_
	mov eax, 0x400
	sub eax, ecx
	mov [esp+0x4], eax
	lea ecx, [ebx+ecx]
	mov [esp], ecx
	call Com_sprintf
AddIP_100:
	add dword [ebp-0x42c], 0x1
	add esi, 0x8
	mov edx, [ebp-0x42c]
	cmp edx, [numIPFilters]
	jl AddIP_110
AddIP_90:
	mov [esp+0x4], ebx
	mov eax, g_banIPs
	mov eax, [eax]
	mov [esp], eax
	call Cvar_SetString
AddIP_160:
	add esp, 0x44c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
AddIP_10:
	cmp dword [ipFilters+0x4], 0xffffffff
	jz AddIP_120
	mov dword [ebp-0x434], 0x0
	mov edx, ipFilters
AddIP_140:
	add dword [ebp-0x434], 0x1
	cmp [ebp-0x434], ecx
	jz AddIP_130
	mov eax, [edx+0xc]
	add edx, 0x8
	add eax, 0x1
	jnz AddIP_140
	mov edx, [ebp-0x434]
	jmp AddIP_150
AddIP_20:
	lea eax, [ecx+0x1]
	mov [numIPFilters], eax
	mov [ebp-0x434], ecx
	mov edx, ecx
	jmp AddIP_150
AddIP_130:
	cmp dword [ebp-0x434], 0x400
	jnz AddIP_20
	mov dword [esp+0x4], _cstring_ip_filter_list_i
	mov dword [esp], 0xf
	call Com_Printf
	jmp AddIP_160
AddIP_40:
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_bad_filter_addre
	mov dword [esp], 0xf
	call Com_Printf
	mov eax, [ebp-0x434]
	mov dword [eax*8+ipFilters+0x4], 0xffffffff
	jmp AddIP_170


;ConsoleCommand()
ConsoleCommand:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x414
	mov eax, cmd_args
	mov edx, [eax]
	mov ebx, [eax+edx*4+0x44]
	test ebx, ebx
	jle ConsoleCommand_10
	mov eax, [eax+edx*4+0x64]
	mov ebx, [eax]
ConsoleCommand_50:
	mov dword [esp+0x4], _cstring_entitylist
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz ConsoleCommand_20
	call Svcmd_EntityList_f
	mov eax, 0x1
ConsoleCommand_70:
	add esp, 0x414
	pop ebx
	pop ebp
	ret
ConsoleCommand_20:
	mov dword [esp+0x4], _cstring_addip
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz ConsoleCommand_30
	mov edx, sv_cmd_args
	mov eax, [edx]
	cmp dword [edx+eax*4+0x44], 0x1
	jle ConsoleCommand_40
	mov dword [esp+0x8], 0x400
	lea ebx, [ebp-0x408]
	mov [esp+0x4], ebx
	mov dword [esp], 0x1
	call SV_Cmd_ArgvBuffer
	mov eax, ebx
	call AddIP
	mov eax, 0x1
	add esp, 0x414
	pop ebx
	pop ebp
	ret
ConsoleCommand_10:
	mov ebx, _cstring_null
	jmp ConsoleCommand_50
ConsoleCommand_30:
	mov dword [esp+0x4], _cstring_removeip
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz ConsoleCommand_60
	call Svcmd_RemoveIP_f
	mov eax, 0x1
	jmp ConsoleCommand_70
ConsoleCommand_60:
	mov dword [esp+0x4], _cstring_listip
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jz ConsoleCommand_80
	mov eax, g_dedicated
	mov eax, [eax]
	mov ecx, [eax+0xc]
	test ecx, ecx
	jnz ConsoleCommand_90
ConsoleCommand_100:
	xor eax, eax
	jmp ConsoleCommand_70
ConsoleCommand_40:
	mov dword [esp+0x4], _cstring_usage__addip_ipm
	mov dword [esp], 0x0
	call Com_Printf
	mov eax, 0x1
	jmp ConsoleCommand_70
ConsoleCommand_90:
	mov dword [esp+0x4], _cstring_say
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz ConsoleCommand_100
	mov dword [esp], 0x1
	call ConcatArgs
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x65
	mov dword [esp], _cstring_c_game_server_s
	call va
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov dword [esp], 0xffffffff
	call SV_GameSendServerCommand
	mov eax, 0x1
	jmp ConsoleCommand_70
ConsoleCommand_80:
	mov dword [esp+0x4], _cstring_g_banips
	mov dword [esp], 0x0
	call Cbuf_InsertText
	mov eax, 0x1
	jmp ConsoleCommand_70
	add [eax], al


;G_ProcessIPBans()
G_ProcessIPBans:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x410
	mov dword [numIPFilters], 0x0
	mov dword [esp+0x8], 0x400
	mov eax, g_banIPs
	mov eax, [eax]
	mov eax, [eax+0xc]
	mov [esp+0x4], eax
	lea ebx, [ebp-0x408]
	mov [esp], ebx
	call Q_strncpyz
	mov esi, ebx
	cmp byte [esi], 0x0
	jz G_ProcessIPBans_10
G_ProcessIPBans_30:
	mov dword [esp+0x4], 0x20
	mov [esp], ebx
	call strchr
	mov ebx, eax
	test eax, eax
	jz G_ProcessIPBans_10
	cmp byte [eax], 0x20
	jz G_ProcessIPBans_20
G_ProcessIPBans_40:
	mov eax, esi
	call AddIP
	mov esi, ebx
G_ProcessIPBans_50:
	cmp byte [esi], 0x0
	jnz G_ProcessIPBans_30
G_ProcessIPBans_10:
	add esp, 0x410
	pop ebx
	pop esi
	pop ebp
	ret
G_ProcessIPBans_20:
	mov byte [ebx], 0x0
	add ebx, 0x1
	cmp byte [ebx], 0x20
	jz G_ProcessIPBans_20
	cmp byte [esi], 0x0
	jnz G_ProcessIPBans_40
	mov esi, ebx
	jmp G_ProcessIPBans_50
	nop


;Svcmd_RemoveIP_f()
Svcmd_RemoveIP_f:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x84c
	mov edx, sv_cmd_args
	mov eax, [edx]
	cmp dword [edx+eax*4+0x44], 0x1
	jle Svcmd_RemoveIP_f_10
	mov dword [esp+0x8], 0x400
	lea eax, [ebp-0x420]
	mov [esp+0x4], eax
	mov dword [esp], 0x1
	call SV_Cmd_ArgvBuffer
	mov eax, 0x1
Svcmd_RemoveIP_f_20:
	mov byte [eax+ebp-0x1d], 0x0
	mov byte [eax+ebp-0x21], 0x0
	add eax, 0x1
	cmp eax, 0x5
	jnz Svcmd_RemoveIP_f_20
	lea edi, [ebp-0x420]
	mov ebx, 0x1
	lea esi, [ebp-0x820]
Svcmd_RemoveIP_f_70:
	movzx edx, byte [edi]
	lea eax, [edx-0x30]
	cmp al, 0x9
	ja Svcmd_RemoveIP_f_30
	xor ecx, ecx
Svcmd_RemoveIP_f_40:
	mov [ecx+esi], dl
	add ecx, 0x1
	movzx edx, byte [ecx+edi]
	lea eax, [edx-0x30]
	cmp al, 0x9
	jbe Svcmd_RemoveIP_f_40
	lea edi, [ecx+edi]
	mov byte [ebp+ecx-0x820], 0x0
	mov [esp], esi
	call atoi
	mov [ebx+ebp-0x1d], al
	test al, al
	jz Svcmd_RemoveIP_f_50
	mov byte [ebx+ebp-0x21], 0xff
Svcmd_RemoveIP_f_50:
	cmp byte [edi], 0x0
	jz Svcmd_RemoveIP_f_60
	add edi, 0x1
	add ebx, 0x1
	cmp ebx, 0x5
	jnz Svcmd_RemoveIP_f_70
Svcmd_RemoveIP_f_60:
	mov ebx, [ebp-0x20]
	mov edi, [ebp-0x1c]
	mov ecx, [numIPFilters]
	test ecx, ecx
	jle Svcmd_RemoveIP_f_80
	xor edx, edx
	mov eax, ipFilters
	jmp Svcmd_RemoveIP_f_90
Svcmd_RemoveIP_f_100:
	add edx, 0x1
	add eax, 0x8
	cmp edx, ecx
	jz Svcmd_RemoveIP_f_80
Svcmd_RemoveIP_f_90:
	cmp [eax], ebx
	jnz Svcmd_RemoveIP_f_100
	cmp [eax+0x4], edi
	jnz Svcmd_RemoveIP_f_100
	mov eax, ipFilters
	mov dword [eax+edx*8+0x4], 0xffffffff
	mov dword [esp+0x4], _cstring_removed
	mov dword [esp], 0x0
	call Com_Printf
	mov byte [ebp-0x820], 0x0
	mov eax, [numIPFilters]
	test eax, eax
	jle Svcmd_RemoveIP_f_110
	mov dword [ebp-0x82c], 0x0
	mov ebx, ipFilters
Svcmd_RemoveIP_f_130:
	mov eax, [ebx+0x4]
	cmp eax, 0xffffffff
	jz Svcmd_RemoveIP_f_120
	mov [ebp-0x20], eax
	cld
	mov ecx, 0xffffffff
	mov edi, esi
	xor eax, eax
	repne scasb
	not ecx
	sub ecx, 0x1
	movzx eax, byte [ebp-0x1d]
	mov [esp+0x18], eax
	movzx eax, byte [ebp-0x1e]
	mov [esp+0x14], eax
	movzx eax, byte [ebp-0x1f]
	mov [esp+0x10], eax
	movzx eax, byte [ebp-0x20]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_iiii_
	mov eax, 0x400
	sub eax, ecx
	mov [esp+0x4], eax
	lea ecx, [esi+ecx]
	mov [esp], ecx
	call Com_sprintf
Svcmd_RemoveIP_f_120:
	add dword [ebp-0x82c], 0x1
	add ebx, 0x8
	mov eax, [ebp-0x82c]
	cmp eax, [numIPFilters]
	jl Svcmd_RemoveIP_f_130
Svcmd_RemoveIP_f_110:
	mov [esp+0x4], esi
	mov eax, g_banIPs
	mov eax, [eax]
	mov [esp], eax
	call Cvar_SetString
	jmp Svcmd_RemoveIP_f_140
Svcmd_RemoveIP_f_80:
	lea eax, [ebp-0x420]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_didnt_find_s
	mov dword [esp], 0x0
	call Com_Printf
Svcmd_RemoveIP_f_140:
	add esp, 0x84c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Svcmd_RemoveIP_f_10:
	mov dword [esp+0x4], _cstring_usage__sv_remove
	mov dword [esp], 0x0
	call Com_Printf
	add esp, 0x84c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Svcmd_RemoveIP_f_30:
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_bad_filter_addre
	mov dword [esp], 0xf
	call Com_Printf
	jmp Svcmd_RemoveIP_f_140
	nop


;Svcmd_EntityList_f()
Svcmd_EntityList_f:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov eax, level
	cmp dword [eax+0xc], 0x1
	jle Svcmd_EntityList_f_10
	mov edi, g_entities
	add edi, 0x274
	mov esi, 0x1
	mov ebx, g_entities
	add ebx, 0x374
	mov [ebp-0x1c], eax
	jmp Svcmd_EntityList_f_20
Svcmd_EntityList_f_30:
	add esi, 0x1
	add edi, 0x274
	add ebx, 0x274
	cmp [eax+0xc], esi
	jle Svcmd_EntityList_f_10
Svcmd_EntityList_f_20:
	cmp byte [ebx], 0x0
	jz Svcmd_EntityList_f_30
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_3i_
	mov dword [esp], 0x0
	call Com_Printf
	mov [esp], edi
	call G_GetEntityTypeName
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_s
	mov dword [esp], 0x0
	call Com_Printf
	movzx eax, word [ebx+0x70]
	test ax, ax
	jnz Svcmd_EntityList_f_40
Svcmd_EntityList_f_50:
	mov dword [esp+0x4], _cstring_
	mov dword [esp], 0x0
	call Com_Printf
	mov eax, [ebp-0x1c]
	add esi, 0x1
	add edi, 0x274
	add ebx, 0x274
	cmp [eax+0xc], esi
	jg Svcmd_EntityList_f_20
Svcmd_EntityList_f_10:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Svcmd_EntityList_f_40:
	movzx eax, ax
	mov [esp], eax
	call SL_ConvertToString
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring__s
	mov dword [esp], 0x0
	call Com_Printf
	jmp Svcmd_EntityList_f_50


;Initialized global or static variables of g_svcmds:
SECTION .data


;Initialized constant data of g_svcmds:
SECTION .rdata


;Zero initialized global or static variables of g_svcmds:
SECTION .bss
numIPFilters: resb 0x20
ipFilters: resb 0x2060


;All cstrings:
SECTION .rdata
_cstring_iiii_:		db "%i.%i.%i.%i ",0
_cstring_ip_filter_list_i:		db "IP filter list is full",0ah,0
_cstring_bad_filter_addre:		db "Bad filter address: %s",0ah,0
_cstring_entitylist:		db "entitylist",0
_cstring_addip:		db "addip",0
_cstring_null:		db 0
_cstring_removeip:		db "removeip",0
_cstring_listip:		db "listip",0
_cstring_usage__addip_ipm:		db "Usage:  addip <ip-mask>",0ah,0
_cstring_say:		db "say",0
_cstring_c_game_server_s:		db "%c ",22h,"GAME_SERVER",015h,": %s",22h,0
_cstring_g_banips:		db "g_banIPs",0ah,0
_cstring_removed:		db "Removed.",0ah,0
_cstring_didnt_find_s:		db "Didn",27h,"t find %s.",0ah,0
_cstring_usage__sv_remove:		db "Usage:  sv removeip <ip-mask>",0ah,0
_cstring_3i_:		db "%3i: ",0
_cstring_s:		db 27h,"%s",27h,0
_cstring_:		db 0ah,0
_cstring__s:		db ", ",27h,"%s",27h,0



;All constant floats and doubles:
SECTION .rdata

