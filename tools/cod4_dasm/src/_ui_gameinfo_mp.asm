;Imports of ui_gameinfo_mp:
	extern FS_GetFileList
	extern Com_PrintError
	extern FS_FCloseFile
	extern sprintf
	extern FS_FOpenFileByMode
	extern FS_Read
	extern DB_FindXAssetHeader
	extern sharedUiInfo
	extern useFastFile
	extern Info_ValueForKey
	extern String_Alloc
	extern va
	extern Material_RegisterHandle
	extern Com_BeginParseSession
	extern Com_Parse
	extern Q_stricmp
	extern Com_EndParseSession
	extern Q_strncpyz
	extern Com_ParseOnLine
	extern Info_SetValueForKey
	extern Com_Printf
	extern UI_Alloc
	extern strcpy

;Exports of ui_gameinfo_mp:
	global ui_numArenas
	global ui_arenaInfos
	global UI_LoadArenasFromFile_LoadObj
	global UI_LoadArenasFromFile_FastFile
	global UI_LoadArenas
	global UI_ParseInfos


SECTION .text


;UI_LoadArenasFromFile_LoadObj()
UI_LoadArenasFromFile_LoadObj:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x24cc
	mov dword [ui_numArenas], 0x0
	mov dword [esp+0x10], 0x400
	lea edi, [ebp-0x49c]
	mov [esp+0xc], edi
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _cstring_arena
	mov dword [esp], _cstring_mp
	call FS_GetFileList
	mov [ebp-0x24b0], eax
	test eax, eax
	jg UI_LoadArenasFromFile_LoadObj_10
UI_LoadArenasFromFile_LoadObj_30:
	add esp, 0x24cc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
UI_LoadArenasFromFile_LoadObj_10:
	mov ebx, edi
	xor esi, esi
	jmp UI_LoadArenasFromFile_LoadObj_20
UI_LoadArenasFromFile_LoadObj_50:
	mov dword [esp+0x10], 0x2000
	mov [esp+0xc], edi
	lea eax, [ebp-0x9c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_file_too_large_s
	mov dword [esp], 0xd
	call Com_PrintError
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call FS_FCloseFile
UI_LoadArenasFromFile_LoadObj_60:
	add esi, 0x1
	mov eax, [ebp-0x24ac]
	lea ebx, [ebx+eax+0x1]
	cmp [ebp-0x24b0], esi
	jz UI_LoadArenasFromFile_LoadObj_30
UI_LoadArenasFromFile_LoadObj_20:
	cld
	mov ecx, 0xffffffff
	mov edi, ebx
	xor eax, eax
	repne scasb
	not ecx
	sub ecx, 0x1
	mov [ebp-0x24ac], ecx
	mov [esp+0xc], ebx
	mov dword [esp+0x8], _cstring_mp
	mov dword [esp+0x4], _cstring_ss
	lea eax, [ebp-0x9c]
	mov [esp], eax
	call sprintf
	mov dword [esp+0x8], 0x0
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	lea eax, [ebp-0x9c]
	mov [esp], eax
	call FS_FOpenFileByMode
	mov edi, eax
	mov eax, [ebp-0x1c]
	test eax, eax
	jz UI_LoadArenasFromFile_LoadObj_40
	cmp edi, 0x1fff
	jg UI_LoadArenasFromFile_LoadObj_50
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	lea eax, [ebp-0x249c]
	mov [esp], eax
	call FS_Read
	mov byte [ebp+edi-0x249c], 0x0
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call FS_FCloseFile
	mov edx, [ui_numArenas]
	lea eax, [edx*4+ui_arenaInfos]
	mov [esp+0x8], eax
	mov eax, 0x40
	sub eax, edx
	mov [esp+0x4], eax
	lea eax, [ebp-0x249c]
	mov [esp], eax
	call UI_ParseInfos
	add [ui_numArenas], eax
	jmp UI_LoadArenasFromFile_LoadObj_60
UI_LoadArenasFromFile_LoadObj_40:
	lea eax, [ebp-0x9c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_file_not_found_s
	mov dword [esp], 0xd
	call Com_PrintError
	jmp UI_LoadArenasFromFile_LoadObj_60
	nop


;UI_LoadArenasFromFile_FastFile()
UI_LoadArenasFromFile_FastFile:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x4], _cstring_mpcod2mapsarena
	mov dword [esp], 0x1f
	call DB_FindXAssetHeader
	test eax, eax
	jz UI_LoadArenasFromFile_FastFile_10
	mov dword [esp+0x8], ui_arenaInfos
	mov dword [esp+0x4], 0x40
	mov eax, [eax+0x8]
	mov [esp], eax
	call UI_ParseInfos
	mov [ui_numArenas], eax
	leave
	ret
UI_LoadArenasFromFile_FastFile_10:
	mov dword [esp+0x8], _cstring_mpcod2mapsarena
	mov dword [esp+0x4], _cstring_file_not_found_s
	mov dword [esp], 0xd
	call Com_PrintError
	leave
	ret


;UI_LoadArenas()
UI_LoadArenas:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov ebx, sharedUiInfo
	mov dword [ebx+0x1c58], 0x0
	mov eax, useFastFile
	mov edx, [eax]
	mov eax, UI_LoadArenasFromFile_FastFile
	cmp byte [edx+0xc], 0x0
	mov edx, UI_LoadArenasFromFile_LoadObj
	cmovz eax, edx
	call eax
	mov edx, [ui_numArenas]
	test edx, edx
	jg UI_LoadArenas_10
UI_LoadArenas_30:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
UI_LoadArenas_10:
	mov dword [ebp-0x34], 0x0
	mov dword [ebp-0x2c], ui_arenaInfos
	mov esi, ebx
	jmp UI_LoadArenas_20
UI_LoadArenas_40:
	mov esi, sharedUiInfo
	mov eax, [esi+0x1c58]
	lea eax, [eax+eax*4]
	shl eax, 0x5
	mov dword [eax+esi+0x1c70], 0xffffffff
UI_LoadArenas_100:
	mov eax, [esi+0x1c58]
	add eax, 0x1
	mov [esi+0x1c58], eax
	cmp eax, 0x7f
	jg UI_LoadArenas_30
	add dword [ebp-0x34], 0x1
	add dword [ebp-0x2c], 0x4
	mov eax, [ebp-0x34]
	cmp eax, [ui_numArenas]
	jge UI_LoadArenas_30
UI_LoadArenas_20:
	mov ebx, [esi+0x1c58]
	mov dword [esp+0x4], _cstring_map
	mov edx, [ebp-0x2c]
	mov eax, [edx]
	mov [esp], eax
	call Info_ValueForKey
	mov [esp], eax
	call String_Alloc
	lea ebx, [ebx+ebx*4]
	shl ebx, 0x5
	mov [ebx+esi+0x1c60], eax
	mov ebx, [esi+0x1c58]
	mov dword [esp+0x4], _cstring_longname
	mov ecx, [ebp-0x2c]
	mov eax, [ecx]
	mov [esp], eax
	call Info_ValueForKey
	mov [esp], eax
	call String_Alloc
	lea ebx, [ebx+ebx*4]
	shl ebx, 0x5
	mov [ebx+esi+0x1c5c], eax
	mov eax, [esi+0x1c58]
	lea eax, [eax+eax*4]
	shl eax, 0x5
	mov dword [eax+esi+0x1cf4], 0x0
	mov ebx, [esi+0x1c58]
	lea ebx, [ebx+ebx*4]
	shl ebx, 0x5
	add ebx, esi
	mov eax, [ebx+0x1c60]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_loadscreen_s
	call va
	mov [esp], eax
	call String_Alloc
	mov [ebx+0x1c64], eax
	mov ebx, [esi+0x1c58]
	mov dword [esp+0x4], 0x3
	lea ebx, [ebx+ebx*4]
	shl ebx, 0x5
	add ebx, esi
	mov eax, [ebx+0x1c64]
	mov [esp], eax
	call Material_RegisterHandle
	mov [ebx+0x1cf4], eax
	mov dword [esp+0x4], _cstring_gametype
	mov edx, [ebp-0x2c]
	mov eax, [edx]
	mov [esp], eax
	call Info_ValueForKey
	mov ebx, eax
	test eax, eax
	jz UI_LoadArenas_40
	cmp byte [eax], 0x0
	jz UI_LoadArenas_40
	mov eax, [esi+0x1c58]
	lea eax, [eax+eax*4]
	shl eax, 0x5
	mov dword [eax+esi+0x1c70], 0x0
	mov eax, [esi+0x1c58]
	lea eax, [eax+eax*4]
	shl eax, 0x5
	mov eax, [eax+esi+0x1c60]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_arena_files__s
	call va
	mov [esp], eax
	call Com_BeginParseSession
	mov [ebp-0x1c], ebx
UI_LoadArenas_60:
	lea ecx, [ebp-0x1c]
	mov [esp], ecx
	call Com_Parse
	mov [ebp-0x30], eax
	test eax, eax
	jz UI_LoadArenas_50
	cmp byte [eax], 0x0
	jz UI_LoadArenas_50
	mov esi, sharedUiInfo
	mov eax, [esi+0x114c]
	test eax, eax
	jle UI_LoadArenas_60
	xor ebx, ebx
	mov edi, esi
	jmp UI_LoadArenas_70
UI_LoadArenas_80:
	mov esi, sharedUiInfo
	mov eax, [esi+0x1c58]
	lea eax, [eax+eax*4]
	shl eax, 0x5
	mov edx, 0x1
	mov ecx, ebx
	shl edx, cl
	or [eax+esi+0x1c70], edx
UI_LoadArenas_90:
	add ebx, 0x1
	add edi, 0x8
	cmp ebx, [esi+0x114c]
	jge UI_LoadArenas_60
UI_LoadArenas_70:
	mov eax, [edi+0x1150]
	mov [esp+0x4], eax
	mov eax, [ebp-0x30]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jz UI_LoadArenas_80
	mov esi, sharedUiInfo
	jmp UI_LoadArenas_90
UI_LoadArenas_50:
	call Com_EndParseSession
	mov esi, sharedUiInfo
	jmp UI_LoadArenas_100


;UI_ParseInfos(char const*, int, char**)
UI_ParseInfos:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x83c
	mov dword [ebp-0x81c], 0x0
UI_ParseInfos_90:
	lea eax, [ebp+0x8]
	mov [esp], eax
	call Com_Parse
	cmp byte [eax], 0x0
	jz UI_ParseInfos_10
UI_ParseInfos_100:
	mov edi, _cstring_
	mov ecx, 0x2
	cld
	mov esi, eax
	repe cmpsb
	mov edx, 0x0
	jz UI_ParseInfos_20
	movzx edx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub edx, ecx
UI_ParseInfos_20:
	test edx, edx
	jnz UI_ParseInfos_30
	mov edx, [ebp-0x81c]
	cmp [ebp+0xc], edx
	jz UI_ParseInfos_40
	mov byte [ebp-0x818], 0x0
	jmp UI_ParseInfos_50
UI_ParseInfos_80:
	mov esi, eax
	mov edi, _cstring_1
	mov ebx, 0x2
	cld
	mov ecx, ebx
	repe cmpsb
	mov edx, 0x0
	jz UI_ParseInfos_60
	movzx edx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub edx, ecx
UI_ParseInfos_60:
	test edx, edx
	jz UI_ParseInfos_70
	mov dword [esp+0x8], 0x400
	mov eax, [ebp-0x82c]
	mov [esp+0x4], eax
	lea edx, [ebp-0x418]
	mov [esp], edx
	call Q_strncpyz
	lea ecx, [ebp+0x8]
	mov [esp], ecx
	call Com_ParseOnLine
	cmp byte [eax], 0x0
	mov edx, _cstring_null
	cmovz eax, edx
	mov [esp+0x8], eax
	lea eax, [ebp-0x418]
	mov [esp+0x4], eax
	lea edx, [ebp-0x818]
	mov [esp], edx
	call Info_SetValueForKey
UI_ParseInfos_50:
	lea ecx, [ebp+0x8]
	mov [esp], ecx
	call Com_Parse
	mov [ebp-0x82c], eax
	cmp byte [eax], 0x0
	jnz UI_ParseInfos_80
	mov dword [esp+0x4], _cstring_unexpected_end_o
	mov dword [esp], 0xd
	call Com_Printf
UI_ParseInfos_70:
	cld
	mov ecx, 0xffffffff
	lea edi, [ebp-0x818]
	xor eax, eax
	repne scasb
	mov ebx, ecx
	not ebx
	sub ebx, 0x1
	mov dword [esp+0x4], 0x40
	mov dword [esp], _cstring_d
	call va
	mov edi, eax
	mov dword [esp+0x4], 0x1
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	repne scasb
	not ecx
	lea ecx, [ecx+ebx+0x5]
	mov [esp], ecx
	call UI_Alloc
	mov edx, [ebp-0x81c]
	mov ecx, [ebp+0x10]
	mov [ecx+edx*4], eax
	test eax, eax
	jz UI_ParseInfos_90
	lea ecx, [ebp-0x818]
	mov [esp+0x4], ecx
	mov [esp], eax
	call strcpy
	add dword [ebp-0x81c], 0x1
	lea eax, [ebp+0x8]
	mov [esp], eax
	call Com_Parse
	cmp byte [eax], 0x0
	jnz UI_ParseInfos_100
UI_ParseInfos_10:
	mov eax, [ebp-0x81c]
	add esp, 0x83c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
UI_ParseInfos_30:
	mov dword [esp+0x4], _cstring_missing__in_info
	mov dword [esp], 0xd
	call Com_Printf
	mov eax, [ebp-0x81c]
	add esp, 0x83c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
UI_ParseInfos_40:
	mov dword [esp+0x4], _cstring_max_infos_exceed
	mov dword [esp], 0xd
	call Com_Printf
	mov eax, [ebp-0x81c]
	add esp, 0x83c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Initialized global or static variables of ui_gameinfo_mp:
SECTION .data


;Initialized constant data of ui_gameinfo_mp:
SECTION .rdata


;Zero initialized global or static variables of ui_gameinfo_mp:
SECTION .bss
ui_numArenas: resb 0x20
ui_arenaInfos: resb 0x160


;All cstrings:
SECTION .rdata
_cstring_arena:		db "arena",0
_cstring_mp:		db "mp",0
_cstring_file_too_large_s:		db "file too large: %s is %i, max allowed is %i",0
_cstring_ss:		db "%s/%s",0
_cstring_file_not_found_s:		db "file not found: %s",0ah,0
_cstring_mpcod2mapsarena:		db "mp/cod2maps.arena",0
_cstring_map:		db "map",0
_cstring_longname:		db "longname",0
_cstring_loadscreen_s:		db "loadscreen_%s",0
_cstring_gametype:		db "gametype",0
_cstring_arena_files__s:		db ".arena files : %s",0
_cstring_:		db "{",0
_cstring_1:		db "}",0
_cstring_null:		db "<NULL>",0
_cstring_unexpected_end_o:		db "Unexpected end of info file",0ah,0
_cstring_d:		db "%d",0
_cstring_missing__in_info:		db "Missing { in info file",0ah,0
_cstring_max_infos_exceed:		db "Max infos exceeded",0ah,0



;All constant floats and doubles:
SECTION .rdata

