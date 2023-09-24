;Imports of ui_gameinfo_mp:
	extern _Z14FS_GetFileListPKcS0_16FsListBehavior_ePci
	extern _Z14Com_PrintErroriPKcz
	extern _Z13FS_FCloseFilei
	extern sprintf
	extern _Z18FS_FOpenFileByModePKcPi8fsMode_t
	extern _Z7FS_ReadPvii
	extern _Z19DB_FindXAssetHeader10XAssetTypePKc
	extern sharedUiInfo
	extern useFastFile
	extern _Z16Info_ValueForKeyPKcS0_
	extern _Z12String_AllocPKc
	extern _Z2vaPKcz
	extern _Z23Material_RegisterHandlePKci
	extern _Z21Com_BeginParseSessionPKc
	extern _Z9Com_ParsePPKc
	extern _Z9I_stricmpPKcS0_
	extern _Z19Com_EndParseSessionv
	extern _Z10I_strncpyzPcPKci
	extern _Z15Com_ParseOnLinePPKc
	extern _Z19Info_SetValueForKeyPcPKcS1_
	extern _Z10Com_PrintfiPKcz
	extern _Z8UI_Allocii
	extern strcpy

;Exports of ui_gameinfo_mp:
	global ui_numArenas
	global ui_arenaInfos
	global _Z29UI_LoadArenasFromFile_LoadObjv
	global _Z30UI_LoadArenasFromFile_FastFilev
	global _Z13UI_LoadArenasv
	global _Z13UI_ParseInfosPKciPPc


SECTION .text


;UI_LoadArenasFromFile_LoadObj()
_Z29UI_LoadArenasFromFile_LoadObjv:
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
	call _Z14FS_GetFileListPKcS0_16FsListBehavior_ePci
	mov [ebp-0x24b0], eax
	test eax, eax
	jg _Z29UI_LoadArenasFromFile_LoadObjv_10
_Z29UI_LoadArenasFromFile_LoadObjv_30:
	add esp, 0x24cc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z29UI_LoadArenasFromFile_LoadObjv_10:
	mov ebx, edi
	xor esi, esi
	jmp _Z29UI_LoadArenasFromFile_LoadObjv_20
_Z29UI_LoadArenasFromFile_LoadObjv_50:
	mov dword [esp+0x10], 0x2000
	mov [esp+0xc], edi
	lea eax, [ebp-0x9c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_file_too_large_s
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call _Z13FS_FCloseFilei
_Z29UI_LoadArenasFromFile_LoadObjv_60:
	add esi, 0x1
	mov eax, [ebp-0x24ac]
	lea ebx, [ebx+eax+0x1]
	cmp [ebp-0x24b0], esi
	jz _Z29UI_LoadArenasFromFile_LoadObjv_30
_Z29UI_LoadArenasFromFile_LoadObjv_20:
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
	call _Z18FS_FOpenFileByModePKcPi8fsMode_t
	mov edi, eax
	mov eax, [ebp-0x1c]
	test eax, eax
	jz _Z29UI_LoadArenasFromFile_LoadObjv_40
	cmp edi, 0x1fff
	jg _Z29UI_LoadArenasFromFile_LoadObjv_50
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	lea eax, [ebp-0x249c]
	mov [esp], eax
	call _Z7FS_ReadPvii
	mov byte [ebp+edi-0x249c], 0x0
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call _Z13FS_FCloseFilei
	mov edx, [ui_numArenas]
	lea eax, [edx*4+ui_arenaInfos]
	mov [esp+0x8], eax
	mov eax, 0x40
	sub eax, edx
	mov [esp+0x4], eax
	lea eax, [ebp-0x249c]
	mov [esp], eax
	call _Z13UI_ParseInfosPKciPPc
	add [ui_numArenas], eax
	jmp _Z29UI_LoadArenasFromFile_LoadObjv_60
_Z29UI_LoadArenasFromFile_LoadObjv_40:
	lea eax, [ebp-0x9c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_file_not_found_s
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
	jmp _Z29UI_LoadArenasFromFile_LoadObjv_60
	nop


;UI_LoadArenasFromFile_FastFile()
_Z30UI_LoadArenasFromFile_FastFilev:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x4], _cstring_mpcod2mapsarena
	mov dword [esp], 0x1f
	call _Z19DB_FindXAssetHeader10XAssetTypePKc
	test eax, eax
	jz _Z30UI_LoadArenasFromFile_FastFilev_10
	mov dword [esp+0x8], ui_arenaInfos
	mov dword [esp+0x4], 0x40
	mov eax, [eax+0x8]
	mov [esp], eax
	call _Z13UI_ParseInfosPKciPPc
	mov [ui_numArenas], eax
	leave
	ret
_Z30UI_LoadArenasFromFile_FastFilev_10:
	mov dword [esp+0x8], _cstring_mpcod2mapsarena
	mov dword [esp+0x4], _cstring_file_not_found_s
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
	leave
	ret


;UI_LoadArenas()
_Z13UI_LoadArenasv:
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
	mov eax, _Z30UI_LoadArenasFromFile_FastFilev
	cmp byte [edx+0xc], 0x0
	mov edx, _Z29UI_LoadArenasFromFile_LoadObjv
	cmovz eax, edx
	call eax
	mov edx, [ui_numArenas]
	test edx, edx
	jg _Z13UI_LoadArenasv_10
_Z13UI_LoadArenasv_30:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z13UI_LoadArenasv_10:
	mov dword [ebp-0x34], 0x0
	mov dword [ebp-0x2c], ui_arenaInfos
	mov esi, ebx
	jmp _Z13UI_LoadArenasv_20
_Z13UI_LoadArenasv_40:
	mov esi, sharedUiInfo
	mov eax, [esi+0x1c58]
	lea eax, [eax+eax*4]
	shl eax, 0x5
	mov dword [eax+esi+0x1c70], 0xffffffff
_Z13UI_LoadArenasv_100:
	mov eax, [esi+0x1c58]
	add eax, 0x1
	mov [esi+0x1c58], eax
	cmp eax, 0x7f
	jg _Z13UI_LoadArenasv_30
	add dword [ebp-0x34], 0x1
	add dword [ebp-0x2c], 0x4
	mov eax, [ebp-0x34]
	cmp eax, [ui_numArenas]
	jge _Z13UI_LoadArenasv_30
_Z13UI_LoadArenasv_20:
	mov ebx, [esi+0x1c58]
	mov dword [esp+0x4], _cstring_map
	mov edx, [ebp-0x2c]
	mov eax, [edx]
	mov [esp], eax
	call _Z16Info_ValueForKeyPKcS0_
	mov [esp], eax
	call _Z12String_AllocPKc
	lea ebx, [ebx+ebx*4]
	shl ebx, 0x5
	mov [ebx+esi+0x1c60], eax
	mov ebx, [esi+0x1c58]
	mov dword [esp+0x4], _cstring_longname
	mov ecx, [ebp-0x2c]
	mov eax, [ecx]
	mov [esp], eax
	call _Z16Info_ValueForKeyPKcS0_
	mov [esp], eax
	call _Z12String_AllocPKc
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
	call _Z2vaPKcz
	mov [esp], eax
	call _Z12String_AllocPKc
	mov [ebx+0x1c64], eax
	mov ebx, [esi+0x1c58]
	mov dword [esp+0x4], 0x3
	lea ebx, [ebx+ebx*4]
	shl ebx, 0x5
	add ebx, esi
	mov eax, [ebx+0x1c64]
	mov [esp], eax
	call _Z23Material_RegisterHandlePKci
	mov [ebx+0x1cf4], eax
	mov dword [esp+0x4], _cstring_gametype
	mov edx, [ebp-0x2c]
	mov eax, [edx]
	mov [esp], eax
	call _Z16Info_ValueForKeyPKcS0_
	mov ebx, eax
	test eax, eax
	jz _Z13UI_LoadArenasv_40
	cmp byte [eax], 0x0
	jz _Z13UI_LoadArenasv_40
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
	call _Z2vaPKcz
	mov [esp], eax
	call _Z21Com_BeginParseSessionPKc
	mov [ebp-0x1c], ebx
_Z13UI_LoadArenasv_60:
	lea ecx, [ebp-0x1c]
	mov [esp], ecx
	call _Z9Com_ParsePPKc
	mov [ebp-0x30], eax
	test eax, eax
	jz _Z13UI_LoadArenasv_50
	cmp byte [eax], 0x0
	jz _Z13UI_LoadArenasv_50
	mov esi, sharedUiInfo
	mov eax, [esi+0x114c]
	test eax, eax
	jle _Z13UI_LoadArenasv_60
	xor ebx, ebx
	mov edi, esi
	jmp _Z13UI_LoadArenasv_70
_Z13UI_LoadArenasv_80:
	mov esi, sharedUiInfo
	mov eax, [esi+0x1c58]
	lea eax, [eax+eax*4]
	shl eax, 0x5
	mov edx, 0x1
	mov ecx, ebx
	shl edx, cl
	or [eax+esi+0x1c70], edx
_Z13UI_LoadArenasv_90:
	add ebx, 0x1
	add edi, 0x8
	cmp ebx, [esi+0x114c]
	jge _Z13UI_LoadArenasv_60
_Z13UI_LoadArenasv_70:
	mov eax, [edi+0x1150]
	mov [esp+0x4], eax
	mov eax, [ebp-0x30]
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z13UI_LoadArenasv_80
	mov esi, sharedUiInfo
	jmp _Z13UI_LoadArenasv_90
_Z13UI_LoadArenasv_50:
	call _Z19Com_EndParseSessionv
	mov esi, sharedUiInfo
	jmp _Z13UI_LoadArenasv_100


;UI_ParseInfos(char const*, int, char**)
_Z13UI_ParseInfosPKciPPc:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x83c
	mov dword [ebp-0x81c], 0x0
_Z13UI_ParseInfosPKciPPc_90:
	lea eax, [ebp+0x8]
	mov [esp], eax
	call _Z9Com_ParsePPKc
	cmp byte [eax], 0x0
	jz _Z13UI_ParseInfosPKciPPc_10
_Z13UI_ParseInfosPKciPPc_100:
	mov edi, _cstring_
	mov ecx, 0x2
	cld
	mov esi, eax
	repe cmpsb
	mov edx, 0x0
	jz _Z13UI_ParseInfosPKciPPc_20
	movzx edx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub edx, ecx
_Z13UI_ParseInfosPKciPPc_20:
	test edx, edx
	jnz _Z13UI_ParseInfosPKciPPc_30
	mov edx, [ebp-0x81c]
	cmp [ebp+0xc], edx
	jz _Z13UI_ParseInfosPKciPPc_40
	mov byte [ebp-0x818], 0x0
	jmp _Z13UI_ParseInfosPKciPPc_50
_Z13UI_ParseInfosPKciPPc_80:
	mov esi, eax
	mov edi, _cstring_1
	mov ebx, 0x2
	cld
	mov ecx, ebx
	repe cmpsb
	mov edx, 0x0
	jz _Z13UI_ParseInfosPKciPPc_60
	movzx edx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub edx, ecx
_Z13UI_ParseInfosPKciPPc_60:
	test edx, edx
	jz _Z13UI_ParseInfosPKciPPc_70
	mov dword [esp+0x8], 0x400
	mov eax, [ebp-0x82c]
	mov [esp+0x4], eax
	lea edx, [ebp-0x418]
	mov [esp], edx
	call _Z10I_strncpyzPcPKci
	lea ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z15Com_ParseOnLinePPKc
	cmp byte [eax], 0x0
	mov edx, _cstring_null
	cmovz eax, edx
	mov [esp+0x8], eax
	lea eax, [ebp-0x418]
	mov [esp+0x4], eax
	lea edx, [ebp-0x818]
	mov [esp], edx
	call _Z19Info_SetValueForKeyPcPKcS1_
_Z13UI_ParseInfosPKciPPc_50:
	lea ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z9Com_ParsePPKc
	mov [ebp-0x82c], eax
	cmp byte [eax], 0x0
	jnz _Z13UI_ParseInfosPKciPPc_80
	mov dword [esp+0x4], _cstring_unexpected_end_o
	mov dword [esp], 0xd
	call _Z10Com_PrintfiPKcz
_Z13UI_ParseInfosPKciPPc_70:
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
	call _Z2vaPKcz
	mov edi, eax
	mov dword [esp+0x4], 0x1
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	repne scasb
	not ecx
	lea ecx, [ecx+ebx+0x5]
	mov [esp], ecx
	call _Z8UI_Allocii
	mov edx, [ebp-0x81c]
	mov ecx, [ebp+0x10]
	mov [ecx+edx*4], eax
	test eax, eax
	jz _Z13UI_ParseInfosPKciPPc_90
	lea ecx, [ebp-0x818]
	mov [esp+0x4], ecx
	mov [esp], eax
	call strcpy
	add dword [ebp-0x81c], 0x1
	lea eax, [ebp+0x8]
	mov [esp], eax
	call _Z9Com_ParsePPKc
	cmp byte [eax], 0x0
	jnz _Z13UI_ParseInfosPKciPPc_100
_Z13UI_ParseInfosPKciPPc_10:
	mov eax, [ebp-0x81c]
	add esp, 0x83c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z13UI_ParseInfosPKciPPc_30:
	mov dword [esp+0x4], _cstring_missing__in_info
	mov dword [esp], 0xd
	call _Z10Com_PrintfiPKcz
	mov eax, [ebp-0x81c]
	add esp, 0x83c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z13UI_ParseInfosPKciPPc_40:
	mov dword [esp+0x4], _cstring_max_infos_exceed
	mov dword [esp], 0xd
	call _Z10Com_PrintfiPKcz
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

