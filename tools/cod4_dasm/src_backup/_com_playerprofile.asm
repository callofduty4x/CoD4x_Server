;Imports of com_playerprofile:
	extern _Z14Dvar_SetStringPK6dvar_sPKc
	extern _Z22Com_ExecStartupConfigsiPKc
	extern _Z21Dvar_GetVariantStringPKc
	extern _Z20Dvar_SetStringByNamePKcS0_
	extern _Z19LiveStorage_NewUseri
	extern fs_basepath
	extern _Z14FS_BuildOSPathPKcS0_S0_Pc
	extern _Z13FS_CreatePathPc
	extern _Z10Com_PrintfiPKcz
	extern FS_ListFiles
	extern FS_FreeFileList
	extern _Z9I_stricmpPKcS0_
	extern _Z16Dvar_RegisterIntPKciiitS0_
	extern _Z21Dvar_ChangeResetValuePK6dvar_s9DvarValue
	extern _Z19Dvar_RegisterStringPKcS0_tS0_
	extern FS_ReadFile
	extern _Z9Com_ParsePPKc
	extern FS_FreeFile
	extern _Z10I_strncpyzPcPKci
	extern _Z17FS_WriteFileToDirPKcS0_PKvi
	extern _Z24Cmd_ExecuteSingleCommandiiPKc
	extern _Z15Dvar_ResetDvarsj13DvarSetSource
	extern _Z21LiveStorage_ReadStatsi
	extern _Z23Com_CheckSetRecommendedi
	extern _Z21Dvar_AnyLatchedValuesv
	extern _Z12Cbuf_AddTextiPKc
	extern _Z17Sys_RemoveDirTreePKc
	extern _Z11Com_sprintfPciPKcz
	extern vsnprintf
	extern _Z9Com_Error11errorParm_tPKcz

;Exports of com_playerprofile:
	global _Z20Com_SetPlayerProfileiPKc
	global _Z20Com_HasPlayerProfilev
	global _Z20Com_NewPlayerProfilePKc
	global _Z22Com_InitPlayerProfilesi
	global _Z23Com_ChangePlayerProfileiPKc
	global _Z23Com_DeletePlayerProfilePKc
	global _Z26Com_BuildPlayerProfilePathPciPKcz
	global _Z35Com_BuildPlayerProfilePathForPlayerPciPKcS1_z
	global com_playerProfile
	global ui_playerProfileAlreadyChosen


SECTION .text


;Com_SetPlayerProfile(int, char const*)
_Z20Com_SetPlayerProfileiPKc:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov ebx, eax
	mov edi, edx
	mov [esp+0x4], edx
	mov eax, [com_playerProfile]
	mov [esp], eax
	call _Z14Dvar_SetStringPK6dvar_sPKc
	mov dword [esp+0x8], _cstring_config_mpcfg
	mov dword [esp+0x4], 0x40
	lea esi, [ebp-0x58]
	mov [esp], esi
	call _Z26Com_BuildPlayerProfilePathPciPKcz
	mov [esp+0x4], esi
	mov [esp], ebx
	call _Z22Com_ExecStartupConfigsiPKc
	mov dword [esp], _cstring_name
	call _Z21Dvar_GetVariantStringPKc
	test eax, eax
	jz _Z20Com_SetPlayerProfileiPKc_10
	cmp byte [eax], 0x0
	jnz _Z20Com_SetPlayerProfileiPKc_20
_Z20Com_SetPlayerProfileiPKc_10:
	mov [esp+0x4], edi
	mov dword [esp], _cstring_name
	call _Z20Dvar_SetStringByNamePKcS0_
_Z20Com_SetPlayerProfileiPKc_20:
	mov dword [esp], 0x0
	call _Z19LiveStorage_NewUseri
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Com_HasPlayerProfile()
_Z20Com_HasPlayerProfilev:
	push ebp
	mov ebp, esp
	mov eax, [com_playerProfile]
	mov eax, [eax+0xc]
	cmp byte [eax], 0x0
	setnz al
	movzx eax, al
	pop ebp
	ret


;Com_NewPlayerProfile(char const*)
_Z20Com_NewPlayerProfilePKc:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x17c
	mov esi, [ebp+0x8]
	cmp byte [esi], 0x0
	jnz _Z20Com_NewPlayerProfilePKc_10
_Z20Com_NewPlayerProfilePKc_40:
	mov dword [esp+0xc], _cstring_null
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x40
	lea ebx, [ebp-0x5c]
	mov [esp], ebx
	call _Z35Com_BuildPlayerProfilePathForPlayerPciPKcS1_z
	lea esi, [ebp-0x15c]
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_players
	mov eax, fs_basepath
	mov eax, [eax]
	mov eax, [eax+0xc]
	mov [esp], eax
	call _Z14FS_BuildOSPathPKcS0_S0_Pc
	mov [esp], esi
	call _Z13FS_CreatePathPc
	test eax, eax
	jnz _Z20Com_NewPlayerProfilePKc_20
	mov al, 0x1
	add esp, 0x17c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z20Com_NewPlayerProfilePKc_20:
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_unable_to_create
	mov dword [esp], 0x10
	call _Z10Com_PrintfiPKcz
	xor eax, eax
	add esp, 0x17c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z20Com_NewPlayerProfilePKc_10:
	mov dword [esp+0x10], 0x3
	lea eax, [ebp-0x1c]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], _cstring_
	mov dword [esp], _cstring_profiles
	call FS_ListFiles
	mov edi, eax
	mov ebx, [ebp-0x1c]
	test ebx, ebx
	jg _Z20Com_NewPlayerProfilePKc_30
_Z20Com_NewPlayerProfilePKc_70:
	xor ebx, ebx
_Z20Com_NewPlayerProfilePKc_80:
	mov dword [esp+0x4], 0x3
	mov [esp], edi
	call FS_FreeFileList
	test ebx, ebx
	jz _Z20Com_NewPlayerProfilePKc_40
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_profile_s_alread
	mov dword [esp], 0x10
	call _Z10Com_PrintfiPKcz
	xor eax, eax
	add esp, 0x17c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z20Com_NewPlayerProfilePKc_30:
	xor ebx, ebx
_Z20Com_NewPlayerProfilePKc_60:
	mov [esp+0x4], esi
	mov eax, [edi+ebx*4]
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z20Com_NewPlayerProfilePKc_50
	add ebx, 0x1
	cmp [ebp-0x1c], ebx
	jg _Z20Com_NewPlayerProfilePKc_60
	jmp _Z20Com_NewPlayerProfilePKc_70
_Z20Com_NewPlayerProfilePKc_50:
	mov ebx, 0x1
	jmp _Z20Com_NewPlayerProfilePKc_80
	add [eax], al


;Com_InitPlayerProfiles(int)
_Z22Com_InitPlayerProfilesi:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov dword [esp+0x14], _cstring_true_if_player_p
	mov dword [esp+0x10], 0x200
	mov dword [esp+0xc], 0x1
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_ui_playerprofile
	call _Z16Dvar_RegisterIntPKciiitS0_
	mov [ui_playerProfileAlreadyChosen], eax
	mov dword [ebp-0x44], 0x1
	mov dword [ebp-0x34], 0x1
	mov ebx, [ebp-0x40]
	mov [ebp-0x30], ebx
	mov ecx, [ebp-0x3c]
	mov [ebp-0x2c], ecx
	mov edx, [ebp-0x38]
	mov [ebp-0x28], edx
	mov dword [esp+0x4], 0x1
	mov [esp+0x8], ebx
	mov [esp+0xc], ecx
	mov [esp+0x10], edx
	mov [esp], eax
	call _Z21Dvar_ChangeResetValuePK6dvar_s9DvarValue
	mov dword [esp+0xc], _cstring_player_profile
	mov dword [esp+0x8], 0x40
	mov dword [esp+0x4], _cstring_null
	mov dword [esp], _cstring_com_playerprofil
	call _Z19Dvar_RegisterStringPKcS0_tS0_
	mov [com_playerProfile], eax
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_profilesactivetx
	call FS_ReadFile
	test eax, eax
	js _Z22Com_InitPlayerProfilesi_10
	mov eax, [ebp-0x1c]
	mov [ebp-0x20], eax
	lea eax, [ebp-0x20]
	mov [esp], eax
	call _Z9Com_ParsePPKc
	mov esi, eax
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call FS_FreeFile
	cmp byte [esi], 0x0
	jnz _Z22Com_InitPlayerProfilesi_20
_Z22Com_InitPlayerProfilesi_10:
	mov dword [esp+0x4], 0x0
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z22Com_ExecStartupConfigsiPKc
_Z22Com_InitPlayerProfilesi_40:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z22Com_InitPlayerProfilesi_20:
	mov dword [esp+0x10], 0x3
	lea eax, [ebp-0x24]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], _cstring_
	mov dword [esp], _cstring_profiles
	call FS_ListFiles
	mov edi, eax
	mov ecx, [ebp-0x24]
	test ecx, ecx
	jg _Z22Com_InitPlayerProfilesi_30
_Z22Com_InitPlayerProfilesi_70:
	xor ebx, ebx
_Z22Com_InitPlayerProfilesi_80:
	mov dword [esp+0x4], 0x3
	mov [esp], edi
	call FS_FreeFileList
	test ebx, ebx
	jz _Z22Com_InitPlayerProfilesi_10
	mov edx, esi
	mov eax, [ebp+0x8]
	call _Z20Com_SetPlayerProfileiPKc
	jmp _Z22Com_InitPlayerProfilesi_40
_Z22Com_InitPlayerProfilesi_30:
	xor ebx, ebx
_Z22Com_InitPlayerProfilesi_60:
	mov [esp+0x4], esi
	mov eax, [edi+ebx*4]
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z22Com_InitPlayerProfilesi_50
	add ebx, 0x1
	cmp [ebp-0x24], ebx
	jg _Z22Com_InitPlayerProfilesi_60
	jmp _Z22Com_InitPlayerProfilesi_70
_Z22Com_InitPlayerProfilesi_50:
	mov ebx, 0x1
	jmp _Z22Com_InitPlayerProfilesi_80


;Com_ChangePlayerProfile(int, char const*)
_Z23Com_ChangePlayerProfileiPKc:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x7c
	mov edi, [ebp+0xc]
	mov eax, [com_playerProfile]
	mov eax, [eax+0xc]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z23Com_ChangePlayerProfileiPKc_10
_Z23Com_ChangePlayerProfileiPKc_20:
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z23Com_ChangePlayerProfileiPKc_10:
	mov dword [esp+0x8], 0x40
	mov [esp+0x4], edi
	lea esi, [ebp-0x5c]
	mov [esp], esi
	call _Z10I_strncpyzPcPKci
	cmp byte [ebp-0x5c], 0x0
	jz _Z23Com_ChangePlayerProfileiPKc_20
	mov dword [esp+0x10], 0x3
	lea eax, [ebp-0x1c]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], _cstring_
	mov dword [esp], _cstring_profiles
	call FS_ListFiles
	mov ebx, eax
	mov edx, [ebp-0x1c]
	test edx, edx
	jg _Z23Com_ChangePlayerProfileiPKc_30
_Z23Com_ChangePlayerProfileiPKc_60:
	xor edi, edi
_Z23Com_ChangePlayerProfileiPKc_70:
	mov dword [esp+0x4], 0x3
	mov [esp], ebx
	call FS_FreeFileList
	test edi, edi
	jz _Z23Com_ChangePlayerProfileiPKc_20
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, esi
	repne scasb
	not ecx
	sub ecx, 0x1
	mov [esp+0xc], ecx
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_players
	mov dword [esp], _cstring_profilesactivetx
	call _Z17FS_WriteFileToDirPKcS0_PKvi
	mov dword [esp+0x8], _cstring_disconnect
	mov dword [esp+0x4], 0x0
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z24Cmd_ExecuteSingleCommandiiPKc
	mov dword [esp+0x4], 0x1
	mov dword [esp], 0xffffffff
	call _Z15Dvar_ResetDvarsj13DvarSetSource
	mov edx, esi
	mov eax, [ebp+0x8]
	call _Z20Com_SetPlayerProfileiPKc
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z21LiveStorage_ReadStatsi
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z23Com_CheckSetRecommendedi
	call _Z21Dvar_AnyLatchedValuesv
	test al, al
	jz _Z23Com_ChangePlayerProfileiPKc_20
	mov dword [esp+0x4], _cstring_snd_restart
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z12Cbuf_AddTextiPKc
	jmp _Z23Com_ChangePlayerProfileiPKc_20
_Z23Com_ChangePlayerProfileiPKc_30:
	xor edi, edi
_Z23Com_ChangePlayerProfileiPKc_50:
	mov [esp+0x4], esi
	mov eax, [ebx+edi*4]
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z23Com_ChangePlayerProfileiPKc_40
	add edi, 0x1
	cmp [ebp-0x1c], edi
	jg _Z23Com_ChangePlayerProfileiPKc_50
	jmp _Z23Com_ChangePlayerProfileiPKc_60
_Z23Com_ChangePlayerProfileiPKc_40:
	mov edi, 0x1
	jmp _Z23Com_ChangePlayerProfileiPKc_70


;Com_DeletePlayerProfile(char const*)
_Z23Com_DeletePlayerProfilePKc:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x17c
	mov edi, [ebp+0x8]
	cmp byte [edi], 0x0
	jnz _Z23Com_DeletePlayerProfilePKc_10
_Z23Com_DeletePlayerProfilePKc_30:
	xor eax, eax
_Z23Com_DeletePlayerProfilePKc_50:
	add esp, 0x17c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z23Com_DeletePlayerProfilePKc_10:
	mov dword [esp+0x10], 0x3
	lea eax, [ebp-0x1c]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], _cstring_
	mov dword [esp], _cstring_profiles
	call FS_ListFiles
	mov esi, eax
	mov eax, [ebp-0x1c]
	test eax, eax
	jg _Z23Com_DeletePlayerProfilePKc_20
_Z23Com_DeletePlayerProfilePKc_80:
	xor ebx, ebx
_Z23Com_DeletePlayerProfilePKc_90:
	mov dword [esp+0x4], 0x3
	mov [esp], esi
	call FS_FreeFileList
	test ebx, ebx
	jz _Z23Com_DeletePlayerProfilePKc_30
	mov dword [esp+0xc], _cstring_null
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x40
	lea ebx, [ebp-0x5c]
	mov [esp], ebx
	call _Z35Com_BuildPlayerProfilePathForPlayerPciPKcS1_z
	lea esi, [ebp-0x15c]
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_players
	mov eax, fs_basepath
	mov eax, [eax]
	mov eax, [eax+0xc]
	mov [esp], eax
	call _Z14FS_BuildOSPathPKcS0_S0_Pc
	mov [esp], esi
	call _Z17Sys_RemoveDirTreePKc
	test eax, eax
	jz _Z23Com_DeletePlayerProfilePKc_30
	mov eax, [com_playerProfile]
	mov eax, [eax+0xc]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z23Com_DeletePlayerProfilePKc_40
	mov eax, 0x1
	jmp _Z23Com_DeletePlayerProfilePKc_50
_Z23Com_DeletePlayerProfilePKc_20:
	xor ebx, ebx
_Z23Com_DeletePlayerProfilePKc_70:
	mov [esp+0x4], edi
	mov eax, [esi+ebx*4]
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z23Com_DeletePlayerProfilePKc_60
	add ebx, 0x1
	cmp [ebp-0x1c], ebx
	jg _Z23Com_DeletePlayerProfilePKc_70
	jmp _Z23Com_DeletePlayerProfilePKc_80
_Z23Com_DeletePlayerProfilePKc_40:
	mov dword [esp+0x4], _cstring_null
	mov eax, [com_playerProfile]
	mov [esp], eax
	call _Z14Dvar_SetStringPK6dvar_sPKc
	mov eax, 0x1
	jmp _Z23Com_DeletePlayerProfilePKc_50
_Z23Com_DeletePlayerProfilePKc_60:
	mov ebx, 0x1
	jmp _Z23Com_DeletePlayerProfilePKc_90
	nop


;Com_BuildPlayerProfilePath(char*, int, char const*, ...)
_Z26Com_BuildPlayerProfilePathPciPKcz:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov esi, [ebp+0xc]
	mov edx, [com_playerProfile]
	mov eax, [edx+0xc]
	cmp byte [eax], 0x0
	jz _Z26Com_BuildPlayerProfilePathPciPKcz_10
_Z26Com_BuildPlayerProfilePathPciPKcz_60:
	lea edi, [ebp+0x14]
	mov [ebp-0x1c], edi
	mov eax, [edx+0xc]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_profiless
	mov [esp+0x4], esi
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z11Com_sprintfPciPKcz
	mov ebx, eax
	test eax, eax
	js _Z26Com_BuildPlayerProfilePathPciPKcz_20
	cmp esi, eax
	jg _Z26Com_BuildPlayerProfilePathPciPKcz_30
_Z26Com_BuildPlayerProfilePathPciPKcz_20:
	mov edx, esi
_Z26Com_BuildPlayerProfilePathPciPKcz_50:
	mov eax, edx
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z26Com_BuildPlayerProfilePathPciPKcz_30:
	mov [esp+0xc], edi
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov eax, esi
	sub eax, ebx
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	add eax, ebx
	mov [esp], eax
	call vsnprintf
	lea edx, [ebx+eax]
	test eax, eax
	js _Z26Com_BuildPlayerProfilePathPciPKcz_40
	cmp esi, edx
	jg _Z26Com_BuildPlayerProfilePathPciPKcz_50
_Z26Com_BuildPlayerProfilePathPciPKcz_40:
	mov eax, [ebp+0x8]
	mov byte [eax+esi-0x1], 0x0
	mov edx, esi
	mov eax, edx
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z26Com_BuildPlayerProfilePathPciPKcz_10:
	mov dword [esp+0x4], _cstring_tried_to_use_a_p
	mov dword [esp], 0x1
	call _Z9Com_Error11errorParm_tPKcz
	mov edx, [com_playerProfile]
	jmp _Z26Com_BuildPlayerProfilePathPciPKcz_60


;Com_BuildPlayerProfilePathForPlayer(char*, int, char const*, char const*, ...)
_Z35Com_BuildPlayerProfilePathForPlayerPciPKcS1_z:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov esi, [ebp+0xc]
	lea edi, [ebp+0x18]
	mov [ebp-0x1c], edi
	mov eax, [ebp+0x10]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_profiless
	mov [esp+0x4], esi
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z11Com_sprintfPciPKcz
	mov ebx, eax
	test eax, eax
	js _Z35Com_BuildPlayerProfilePathForPlayerPciPKcS1_z_10
	cmp esi, eax
	jg _Z35Com_BuildPlayerProfilePathForPlayerPciPKcS1_z_20
_Z35Com_BuildPlayerProfilePathForPlayerPciPKcS1_z_10:
	mov edx, esi
_Z35Com_BuildPlayerProfilePathForPlayerPciPKcS1_z_40:
	mov eax, edx
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z35Com_BuildPlayerProfilePathForPlayerPciPKcS1_z_20:
	mov [esp+0xc], edi
	mov eax, [ebp+0x14]
	mov [esp+0x8], eax
	mov eax, esi
	sub eax, ebx
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	add eax, ebx
	mov [esp], eax
	call vsnprintf
	lea edx, [ebx+eax]
	test eax, eax
	js _Z35Com_BuildPlayerProfilePathForPlayerPciPKcS1_z_30
	cmp esi, edx
	jg _Z35Com_BuildPlayerProfilePathForPlayerPciPKcS1_z_40
_Z35Com_BuildPlayerProfilePathForPlayerPciPKcS1_z_30:
	mov eax, [ebp+0x8]
	mov byte [eax+esi-0x1], 0x0
	mov edx, esi
	mov eax, edx
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Initialized global or static variables of com_playerprofile:
SECTION .data


;Initialized constant data of com_playerprofile:
SECTION .rdata


;Zero initialized global or static variables of com_playerprofile:
SECTION .bss
com_playerProfile: resb 0x4
ui_playerProfileAlreadyChosen: resb 0x4


;All cstrings:
SECTION .rdata
_cstring_config_mpcfg:		db "config_mp.cfg",0
_cstring_name:		db "name",0
_cstring_null:		db 0
_cstring_players:		db "players",0
_cstring_unable_to_create:		db "Unable to create new profile path: %s",0ah,0
_cstring_:		db "/",0
_cstring_profiles:		db "profiles",0
_cstring_profile_s_alread:		db "Profile ",27h,"%s",27h," already exists",0ah,0
_cstring_true_if_player_p:		db "true if player profile has been selected.",0
_cstring_ui_playerprofile:		db "ui_playerProfileAlreadyChosen",0
_cstring_player_profile:		db "Player profile",0
_cstring_com_playerprofil:		db "com_playerProfile",0
_cstring_profilesactivetx:		db "profiles/active.txt",0
_cstring_disconnect:		db "disconnect",0
_cstring_snd_restart:		db "snd_restart",0ah,0
_cstring_profiless:		db "profiles/%s/",0
_cstring_tried_to_use_a_p:		db "Tried to use a player profile before it was set.  This is probably a menu bug.",0ah,0



;All constant floats and doubles:
SECTION .rdata

