;Imports of g_svcmds:
	extern atoi
	extern _Z11Com_sprintfPciPKcz
	extern g_banIPs
	extern _Z14Dvar_SetStringPK6dvar_sPKc
	extern _Z10Com_PrintfiPKcz
	extern cmd_args
	extern _Z9I_stricmpPKcS0_
	extern sv_cmd_args
	extern _Z17SV_Cmd_ArgvBufferiPci
	extern g_dedicated
	extern _Z10ConcatArgsi
	extern _Z2vaPKcz
	extern _Z24SV_GameSendServerCommandi11svscmd_typePKc
	extern _Z15Cbuf_InsertTextiPKc
	extern _Z10I_strncpyzPcPKci
	extern strchr
	extern level
	extern g_entities
	extern _Z19G_GetEntityTypeNamePK9gentity_s
	extern _Z18SL_ConvertToStringj

;Exports of g_svcmds:
	global numIPFilters
	global ipFilters
	global _Z5AddIPPc
	global _Z14ConsoleCommandv
	global _Z15G_ProcessIPBansv
	global _Z16Svcmd_RemoveIP_fv
	global _Z18Svcmd_EntityList_fv


SECTION .text


;AddIP(char*)
_Z5AddIPPc:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x44c
	mov edi, eax
	mov ecx, [numIPFilters]
	test ecx, ecx
	jg _Z5AddIPPc_10
_Z5AddIPPc_120:
	test ecx, ecx
	jz _Z5AddIPPc_20
	mov dword [ebp-0x434], 0x0
	mov edx, [ebp-0x434]
_Z5AddIPPc_150:
	lea edx, [edx*8+ipFilters]
	mov [ebp-0x430], edx
	mov eax, 0x1
_Z5AddIPPc_30:
	mov byte [eax+ebp-0x1d], 0x0
	mov byte [eax+ebp-0x21], 0x0
	add eax, 0x1
	cmp eax, 0x5
	jnz _Z5AddIPPc_30
	mov esi, 0x1
	lea ebx, [ebp-0x420]
_Z5AddIPPc_80:
	movzx edx, byte [edi]
	lea eax, [edx-0x30]
	cmp al, 0x9
	ja _Z5AddIPPc_40
	xor ecx, ecx
_Z5AddIPPc_50:
	mov [ecx+ebx], dl
	add ecx, 0x1
	movzx edx, byte [ecx+edi]
	lea eax, [edx-0x30]
	cmp al, 0x9
	jbe _Z5AddIPPc_50
	lea edi, [ecx+edi]
	mov byte [ebp+ecx-0x420], 0x0
	mov [esp], ebx
	call atoi
	mov [esi+ebp-0x1d], al
	test al, al
	jz _Z5AddIPPc_60
	mov byte [esi+ebp-0x21], 0xff
_Z5AddIPPc_60:
	cmp byte [edi], 0x0
	jz _Z5AddIPPc_70
	add edi, 0x1
	add esi, 0x1
	cmp esi, 0x5
	jnz _Z5AddIPPc_80
_Z5AddIPPc_70:
	mov eax, [ebp-0x20]
	mov edx, [ebp-0x430]
	mov [edx], eax
	mov eax, [ebp-0x1c]
	mov [edx+0x4], eax
_Z5AddIPPc_170:
	mov byte [ebp-0x420], 0x0
	mov edx, [numIPFilters]
	test edx, edx
	jle _Z5AddIPPc_90
	mov dword [ebp-0x42c], 0x0
	mov esi, ipFilters
_Z5AddIPPc_110:
	mov eax, [esi+0x4]
	cmp eax, 0xffffffff
	jz _Z5AddIPPc_100
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
	call _Z11Com_sprintfPciPKcz
_Z5AddIPPc_100:
	add dword [ebp-0x42c], 0x1
	add esi, 0x8
	mov edx, [ebp-0x42c]
	cmp edx, [numIPFilters]
	jl _Z5AddIPPc_110
_Z5AddIPPc_90:
	mov [esp+0x4], ebx
	mov eax, g_banIPs
	mov eax, [eax]
	mov [esp], eax
	call _Z14Dvar_SetStringPK6dvar_sPKc
_Z5AddIPPc_160:
	add esp, 0x44c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z5AddIPPc_10:
	cmp dword [ipFilters+0x4], 0xffffffff
	jz _Z5AddIPPc_120
	mov dword [ebp-0x434], 0x0
	mov edx, ipFilters
_Z5AddIPPc_140:
	add dword [ebp-0x434], 0x1
	cmp [ebp-0x434], ecx
	jz _Z5AddIPPc_130
	mov eax, [edx+0xc]
	add edx, 0x8
	add eax, 0x1
	jnz _Z5AddIPPc_140
	mov edx, [ebp-0x434]
	jmp _Z5AddIPPc_150
_Z5AddIPPc_20:
	lea eax, [ecx+0x1]
	mov [numIPFilters], eax
	mov [ebp-0x434], ecx
	mov edx, ecx
	jmp _Z5AddIPPc_150
_Z5AddIPPc_130:
	cmp dword [ebp-0x434], 0x400
	jnz _Z5AddIPPc_20
	mov dword [esp+0x4], _cstring_ip_filter_list_i
	mov dword [esp], 0xf
	call _Z10Com_PrintfiPKcz
	jmp _Z5AddIPPc_160
_Z5AddIPPc_40:
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_bad_filter_addre
	mov dword [esp], 0xf
	call _Z10Com_PrintfiPKcz
	mov eax, [ebp-0x434]
	mov dword [eax*8+ipFilters+0x4], 0xffffffff
	jmp _Z5AddIPPc_170


;ConsoleCommand()
_Z14ConsoleCommandv:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x414
	mov eax, cmd_args
	mov edx, [eax]
	mov ebx, [eax+edx*4+0x44]
	test ebx, ebx
	jle _Z14ConsoleCommandv_10
	mov eax, [eax+edx*4+0x64]
	mov ebx, [eax]
_Z14ConsoleCommandv_50:
	mov dword [esp+0x4], _cstring_entitylist
	mov [esp], ebx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z14ConsoleCommandv_20
	call _Z18Svcmd_EntityList_fv
	mov eax, 0x1
_Z14ConsoleCommandv_70:
	add esp, 0x414
	pop ebx
	pop ebp
	ret
_Z14ConsoleCommandv_20:
	mov dword [esp+0x4], _cstring_addip
	mov [esp], ebx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z14ConsoleCommandv_30
	mov edx, sv_cmd_args
	mov eax, [edx]
	cmp dword [edx+eax*4+0x44], 0x1
	jle _Z14ConsoleCommandv_40
	mov dword [esp+0x8], 0x400
	lea ebx, [ebp-0x408]
	mov [esp+0x4], ebx
	mov dword [esp], 0x1
	call _Z17SV_Cmd_ArgvBufferiPci
	mov eax, ebx
	call _Z5AddIPPc
	mov eax, 0x1
	add esp, 0x414
	pop ebx
	pop ebp
	ret
_Z14ConsoleCommandv_10:
	mov ebx, _cstring_null
	jmp _Z14ConsoleCommandv_50
_Z14ConsoleCommandv_30:
	mov dword [esp+0x4], _cstring_removeip
	mov [esp], ebx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z14ConsoleCommandv_60
	call _Z16Svcmd_RemoveIP_fv
	mov eax, 0x1
	jmp _Z14ConsoleCommandv_70
_Z14ConsoleCommandv_60:
	mov dword [esp+0x4], _cstring_listip
	mov [esp], ebx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z14ConsoleCommandv_80
	mov eax, g_dedicated
	mov eax, [eax]
	mov ecx, [eax+0xc]
	test ecx, ecx
	jnz _Z14ConsoleCommandv_90
_Z14ConsoleCommandv_100:
	xor eax, eax
	jmp _Z14ConsoleCommandv_70
_Z14ConsoleCommandv_40:
	mov dword [esp+0x4], _cstring_usage__addip_ipm
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	mov eax, 0x1
	jmp _Z14ConsoleCommandv_70
_Z14ConsoleCommandv_90:
	mov dword [esp+0x4], _cstring_say
	mov [esp], ebx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z14ConsoleCommandv_100
	mov dword [esp], 0x1
	call _Z10ConcatArgsi
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x65
	mov dword [esp], _cstring_c_game_server_s
	call _Z2vaPKcz
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov dword [esp], 0xffffffff
	call _Z24SV_GameSendServerCommandi11svscmd_typePKc
	mov eax, 0x1
	jmp _Z14ConsoleCommandv_70
_Z14ConsoleCommandv_80:
	mov dword [esp+0x4], _cstring_g_banips
	mov dword [esp], 0x0
	call _Z15Cbuf_InsertTextiPKc
	mov eax, 0x1
	jmp _Z14ConsoleCommandv_70
	add [eax], al


;G_ProcessIPBans()
_Z15G_ProcessIPBansv:
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
	call _Z10I_strncpyzPcPKci
	mov esi, ebx
	cmp byte [esi], 0x0
	jz _Z15G_ProcessIPBansv_10
_Z15G_ProcessIPBansv_30:
	mov dword [esp+0x4], 0x20
	mov [esp], ebx
	call strchr
	mov ebx, eax
	test eax, eax
	jz _Z15G_ProcessIPBansv_10
	cmp byte [eax], 0x20
	jz _Z15G_ProcessIPBansv_20
_Z15G_ProcessIPBansv_40:
	mov eax, esi
	call _Z5AddIPPc
	mov esi, ebx
_Z15G_ProcessIPBansv_50:
	cmp byte [esi], 0x0
	jnz _Z15G_ProcessIPBansv_30
_Z15G_ProcessIPBansv_10:
	add esp, 0x410
	pop ebx
	pop esi
	pop ebp
	ret
_Z15G_ProcessIPBansv_20:
	mov byte [ebx], 0x0
	add ebx, 0x1
	cmp byte [ebx], 0x20
	jz _Z15G_ProcessIPBansv_20
	cmp byte [esi], 0x0
	jnz _Z15G_ProcessIPBansv_40
	mov esi, ebx
	jmp _Z15G_ProcessIPBansv_50
	nop


;Svcmd_RemoveIP_f()
_Z16Svcmd_RemoveIP_fv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x84c
	mov edx, sv_cmd_args
	mov eax, [edx]
	cmp dword [edx+eax*4+0x44], 0x1
	jle _Z16Svcmd_RemoveIP_fv_10
	mov dword [esp+0x8], 0x400
	lea eax, [ebp-0x420]
	mov [esp+0x4], eax
	mov dword [esp], 0x1
	call _Z17SV_Cmd_ArgvBufferiPci
	mov eax, 0x1
_Z16Svcmd_RemoveIP_fv_20:
	mov byte [eax+ebp-0x1d], 0x0
	mov byte [eax+ebp-0x21], 0x0
	add eax, 0x1
	cmp eax, 0x5
	jnz _Z16Svcmd_RemoveIP_fv_20
	lea edi, [ebp-0x420]
	mov ebx, 0x1
	lea esi, [ebp-0x820]
_Z16Svcmd_RemoveIP_fv_70:
	movzx edx, byte [edi]
	lea eax, [edx-0x30]
	cmp al, 0x9
	ja _Z16Svcmd_RemoveIP_fv_30
	xor ecx, ecx
_Z16Svcmd_RemoveIP_fv_40:
	mov [ecx+esi], dl
	add ecx, 0x1
	movzx edx, byte [ecx+edi]
	lea eax, [edx-0x30]
	cmp al, 0x9
	jbe _Z16Svcmd_RemoveIP_fv_40
	lea edi, [ecx+edi]
	mov byte [ebp+ecx-0x820], 0x0
	mov [esp], esi
	call atoi
	mov [ebx+ebp-0x1d], al
	test al, al
	jz _Z16Svcmd_RemoveIP_fv_50
	mov byte [ebx+ebp-0x21], 0xff
_Z16Svcmd_RemoveIP_fv_50:
	cmp byte [edi], 0x0
	jz _Z16Svcmd_RemoveIP_fv_60
	add edi, 0x1
	add ebx, 0x1
	cmp ebx, 0x5
	jnz _Z16Svcmd_RemoveIP_fv_70
_Z16Svcmd_RemoveIP_fv_60:
	mov ebx, [ebp-0x20]
	mov edi, [ebp-0x1c]
	mov ecx, [numIPFilters]
	test ecx, ecx
	jle _Z16Svcmd_RemoveIP_fv_80
	xor edx, edx
	mov eax, ipFilters
	jmp _Z16Svcmd_RemoveIP_fv_90
_Z16Svcmd_RemoveIP_fv_100:
	add edx, 0x1
	add eax, 0x8
	cmp edx, ecx
	jz _Z16Svcmd_RemoveIP_fv_80
_Z16Svcmd_RemoveIP_fv_90:
	cmp [eax], ebx
	jnz _Z16Svcmd_RemoveIP_fv_100
	cmp [eax+0x4], edi
	jnz _Z16Svcmd_RemoveIP_fv_100
	mov eax, ipFilters
	mov dword [eax+edx*8+0x4], 0xffffffff
	mov dword [esp+0x4], _cstring_removed
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	mov byte [ebp-0x820], 0x0
	mov eax, [numIPFilters]
	test eax, eax
	jle _Z16Svcmd_RemoveIP_fv_110
	mov dword [ebp-0x82c], 0x0
	mov ebx, ipFilters
_Z16Svcmd_RemoveIP_fv_130:
	mov eax, [ebx+0x4]
	cmp eax, 0xffffffff
	jz _Z16Svcmd_RemoveIP_fv_120
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
	call _Z11Com_sprintfPciPKcz
_Z16Svcmd_RemoveIP_fv_120:
	add dword [ebp-0x82c], 0x1
	add ebx, 0x8
	mov eax, [ebp-0x82c]
	cmp eax, [numIPFilters]
	jl _Z16Svcmd_RemoveIP_fv_130
_Z16Svcmd_RemoveIP_fv_110:
	mov [esp+0x4], esi
	mov eax, g_banIPs
	mov eax, [eax]
	mov [esp], eax
	call _Z14Dvar_SetStringPK6dvar_sPKc
	jmp _Z16Svcmd_RemoveIP_fv_140
_Z16Svcmd_RemoveIP_fv_80:
	lea eax, [ebp-0x420]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_didnt_find_s
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
_Z16Svcmd_RemoveIP_fv_140:
	add esp, 0x84c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z16Svcmd_RemoveIP_fv_10:
	mov dword [esp+0x4], _cstring_usage__sv_remove
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	add esp, 0x84c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z16Svcmd_RemoveIP_fv_30:
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_bad_filter_addre
	mov dword [esp], 0xf
	call _Z10Com_PrintfiPKcz
	jmp _Z16Svcmd_RemoveIP_fv_140
	nop


;Svcmd_EntityList_f()
_Z18Svcmd_EntityList_fv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov eax, level
	cmp dword [eax+0xc], 0x1
	jle _Z18Svcmd_EntityList_fv_10
	mov edi, g_entities
	add edi, 0x274
	mov esi, 0x1
	mov ebx, g_entities
	add ebx, 0x374
	mov [ebp-0x1c], eax
	jmp _Z18Svcmd_EntityList_fv_20
_Z18Svcmd_EntityList_fv_30:
	add esi, 0x1
	add edi, 0x274
	add ebx, 0x274
	cmp [eax+0xc], esi
	jle _Z18Svcmd_EntityList_fv_10
_Z18Svcmd_EntityList_fv_20:
	cmp byte [ebx], 0x0
	jz _Z18Svcmd_EntityList_fv_30
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_3i_
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	mov [esp], edi
	call _Z19G_GetEntityTypeNamePK9gentity_s
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_s
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	movzx eax, word [ebx+0x70]
	test ax, ax
	jnz _Z18Svcmd_EntityList_fv_40
_Z18Svcmd_EntityList_fv_50:
	mov dword [esp+0x4], _cstring_
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	mov eax, [ebp-0x1c]
	add esi, 0x1
	add edi, 0x274
	add ebx, 0x274
	cmp [eax+0xc], esi
	jg _Z18Svcmd_EntityList_fv_20
_Z18Svcmd_EntityList_fv_10:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z18Svcmd_EntityList_fv_40:
	movzx eax, ax
	mov [esp], eax
	call _Z18SL_ConvertToStringj
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring__s
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	jmp _Z18Svcmd_EntityList_fv_50


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

