;Imports of com_playerprofile:
	extern Cvar_SetString
	extern Com_ExecStartupConfigs
	extern Cvar_GetVariantString
	extern Cvar_SetStringByName
	extern LiveStorage_NewUser
	extern fs_basepath
	extern FS_BuildOSPath
	extern FS_CreatePath
	extern Com_Printf
	extern FS_ListFiles
	extern FS_FreeFileList
	extern Q_stricmp
	extern Cvar_RegisterInt
	extern Cvar_ChangeResetValue
	extern Cvar_RegisterString
	extern FS_ReadFile
	extern Com_Parse
	extern FS_FreeFile
	extern Q_strncpyz
	extern FS_WriteFileToDir
	extern Cmd_ExecuteSingleCommand
	extern Cvar_ResetDvars
	extern LiveStorage_ReadStats
	extern Com_CheckSetRecommended
	extern Cvar_AnyLatchedValues
	extern Cbuf_AddText
	extern Sys_RemoveDirTree
	extern Com_sprintf
	extern vsnprintf
	extern Com_Error

;Exports of com_playerprofile:
	global Com_SetPlayerProfile
	global Com_HasPlayerProfile
	global Com_NewPlayerProfile
	global Com_InitPlayerProfiles
	global Com_ChangePlayerProfile
	global Com_DeletePlayerProfile
	global Com_BuildPlayerProfilePath
	global Com_BuildPlayerProfilePathForPlayer
	global com_playerProfile
	global ui_playerProfileAlreadyChosen


SECTION .text


;Com_SetPlayerProfile(int, char const*)
Com_SetPlayerProfile:
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
	call Cvar_SetString
	mov dword [esp+0x8], _cstring_config_mpcfg
	mov dword [esp+0x4], 0x40
	lea esi, [ebp-0x58]
	mov [esp], esi
	call Com_BuildPlayerProfilePath
	mov [esp+0x4], esi
	mov [esp], ebx
	call Com_ExecStartupConfigs
	mov dword [esp], _cstring_name
	call Cvar_GetVariantString
	test eax, eax
	jz Com_SetPlayerProfile_10
	cmp byte [eax], 0x0
	jnz Com_SetPlayerProfile_20
Com_SetPlayerProfile_10:
	mov [esp+0x4], edi
	mov dword [esp], _cstring_name
	call Cvar_SetStringByName
Com_SetPlayerProfile_20:
	mov dword [esp], 0x0
	call LiveStorage_NewUser
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Com_HasPlayerProfile()
Com_HasPlayerProfile:
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
Com_NewPlayerProfile:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x17c
	mov esi, [ebp+0x8]
	cmp byte [esi], 0x0
	jnz Com_NewPlayerProfile_10
Com_NewPlayerProfile_40:
	mov dword [esp+0xc], _cstring_null
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x40
	lea ebx, [ebp-0x5c]
	mov [esp], ebx
	call Com_BuildPlayerProfilePathForPlayer
	lea esi, [ebp-0x15c]
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_players
	mov eax, fs_basepath
	mov eax, [eax]
	mov eax, [eax+0xc]
	mov [esp], eax
	call FS_BuildOSPath
	mov [esp], esi
	call FS_CreatePath
	test eax, eax
	jnz Com_NewPlayerProfile_20
	mov al, 0x1
	add esp, 0x17c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Com_NewPlayerProfile_20:
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_unable_to_create
	mov dword [esp], 0x10
	call Com_Printf
	xor eax, eax
	add esp, 0x17c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Com_NewPlayerProfile_10:
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
	jg Com_NewPlayerProfile_30
Com_NewPlayerProfile_70:
	xor ebx, ebx
Com_NewPlayerProfile_80:
	mov dword [esp+0x4], 0x3
	mov [esp], edi
	call FS_FreeFileList
	test ebx, ebx
	jz Com_NewPlayerProfile_40
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_profile_s_alread
	mov dword [esp], 0x10
	call Com_Printf
	xor eax, eax
	add esp, 0x17c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Com_NewPlayerProfile_30:
	xor ebx, ebx
Com_NewPlayerProfile_60:
	mov [esp+0x4], esi
	mov eax, [edi+ebx*4]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jz Com_NewPlayerProfile_50
	add ebx, 0x1
	cmp [ebp-0x1c], ebx
	jg Com_NewPlayerProfile_60
	jmp Com_NewPlayerProfile_70
Com_NewPlayerProfile_50:
	mov ebx, 0x1
	jmp Com_NewPlayerProfile_80
	add [eax], al


;Com_InitPlayerProfiles(int)
Com_InitPlayerProfiles:
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
	call Cvar_RegisterInt
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
	call Cvar_ChangeResetValue
	mov dword [esp+0xc], _cstring_player_profile
	mov dword [esp+0x8], 0x40
	mov dword [esp+0x4], _cstring_null
	mov dword [esp], _cstring_com_playerprofil
	call Cvar_RegisterString
	mov [com_playerProfile], eax
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_profilesactivetx
	call FS_ReadFile
	test eax, eax
	js Com_InitPlayerProfiles_10
	mov eax, [ebp-0x1c]
	mov [ebp-0x20], eax
	lea eax, [ebp-0x20]
	mov [esp], eax
	call Com_Parse
	mov esi, eax
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call FS_FreeFile
	cmp byte [esi], 0x0
	jnz Com_InitPlayerProfiles_20
Com_InitPlayerProfiles_10:
	mov dword [esp+0x4], 0x0
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Com_ExecStartupConfigs
Com_InitPlayerProfiles_40:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Com_InitPlayerProfiles_20:
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
	jg Com_InitPlayerProfiles_30
Com_InitPlayerProfiles_70:
	xor ebx, ebx
Com_InitPlayerProfiles_80:
	mov dword [esp+0x4], 0x3
	mov [esp], edi
	call FS_FreeFileList
	test ebx, ebx
	jz Com_InitPlayerProfiles_10
	mov edx, esi
	mov eax, [ebp+0x8]
	call Com_SetPlayerProfile
	jmp Com_InitPlayerProfiles_40
Com_InitPlayerProfiles_30:
	xor ebx, ebx
Com_InitPlayerProfiles_60:
	mov [esp+0x4], esi
	mov eax, [edi+ebx*4]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jz Com_InitPlayerProfiles_50
	add ebx, 0x1
	cmp [ebp-0x24], ebx
	jg Com_InitPlayerProfiles_60
	jmp Com_InitPlayerProfiles_70
Com_InitPlayerProfiles_50:
	mov ebx, 0x1
	jmp Com_InitPlayerProfiles_80


;Com_ChangePlayerProfile(int, char const*)
Com_ChangePlayerProfile:
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
	call Q_stricmp
	test eax, eax
	jnz Com_ChangePlayerProfile_10
Com_ChangePlayerProfile_20:
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Com_ChangePlayerProfile_10:
	mov dword [esp+0x8], 0x40
	mov [esp+0x4], edi
	lea esi, [ebp-0x5c]
	mov [esp], esi
	call Q_strncpyz
	cmp byte [ebp-0x5c], 0x0
	jz Com_ChangePlayerProfile_20
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
	jg Com_ChangePlayerProfile_30
Com_ChangePlayerProfile_60:
	xor edi, edi
Com_ChangePlayerProfile_70:
	mov dword [esp+0x4], 0x3
	mov [esp], ebx
	call FS_FreeFileList
	test edi, edi
	jz Com_ChangePlayerProfile_20
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
	call FS_WriteFileToDir
	mov dword [esp+0x8], _cstring_disconnect
	mov dword [esp+0x4], 0x0
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Cmd_ExecuteSingleCommand
	mov dword [esp+0x4], 0x1
	mov dword [esp], 0xffffffff
	call Cvar_ResetDvars
	mov edx, esi
	mov eax, [ebp+0x8]
	call Com_SetPlayerProfile
	mov eax, [ebp+0x8]
	mov [esp], eax
	call LiveStorage_ReadStats
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Com_CheckSetRecommended
	call Cvar_AnyLatchedValues
	test al, al
	jz Com_ChangePlayerProfile_20
	mov dword [esp+0x4], _cstring_snd_restart
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Cbuf_AddText
	jmp Com_ChangePlayerProfile_20
Com_ChangePlayerProfile_30:
	xor edi, edi
Com_ChangePlayerProfile_50:
	mov [esp+0x4], esi
	mov eax, [ebx+edi*4]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jz Com_ChangePlayerProfile_40
	add edi, 0x1
	cmp [ebp-0x1c], edi
	jg Com_ChangePlayerProfile_50
	jmp Com_ChangePlayerProfile_60
Com_ChangePlayerProfile_40:
	mov edi, 0x1
	jmp Com_ChangePlayerProfile_70


;Com_DeletePlayerProfile(char const*)
Com_DeletePlayerProfile:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x17c
	mov edi, [ebp+0x8]
	cmp byte [edi], 0x0
	jnz Com_DeletePlayerProfile_10
Com_DeletePlayerProfile_30:
	xor eax, eax
Com_DeletePlayerProfile_50:
	add esp, 0x17c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Com_DeletePlayerProfile_10:
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
	jg Com_DeletePlayerProfile_20
Com_DeletePlayerProfile_80:
	xor ebx, ebx
Com_DeletePlayerProfile_90:
	mov dword [esp+0x4], 0x3
	mov [esp], esi
	call FS_FreeFileList
	test ebx, ebx
	jz Com_DeletePlayerProfile_30
	mov dword [esp+0xc], _cstring_null
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x40
	lea ebx, [ebp-0x5c]
	mov [esp], ebx
	call Com_BuildPlayerProfilePathForPlayer
	lea esi, [ebp-0x15c]
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_players
	mov eax, fs_basepath
	mov eax, [eax]
	mov eax, [eax+0xc]
	mov [esp], eax
	call FS_BuildOSPath
	mov [esp], esi
	call Sys_RemoveDirTree
	test eax, eax
	jz Com_DeletePlayerProfile_30
	mov eax, [com_playerProfile]
	mov eax, [eax+0xc]
	mov [esp+0x4], eax
	mov [esp], edi
	call Q_stricmp
	test eax, eax
	jz Com_DeletePlayerProfile_40
	mov eax, 0x1
	jmp Com_DeletePlayerProfile_50
Com_DeletePlayerProfile_20:
	xor ebx, ebx
Com_DeletePlayerProfile_70:
	mov [esp+0x4], edi
	mov eax, [esi+ebx*4]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jz Com_DeletePlayerProfile_60
	add ebx, 0x1
	cmp [ebp-0x1c], ebx
	jg Com_DeletePlayerProfile_70
	jmp Com_DeletePlayerProfile_80
Com_DeletePlayerProfile_40:
	mov dword [esp+0x4], _cstring_null
	mov eax, [com_playerProfile]
	mov [esp], eax
	call Cvar_SetString
	mov eax, 0x1
	jmp Com_DeletePlayerProfile_50
Com_DeletePlayerProfile_60:
	mov ebx, 0x1
	jmp Com_DeletePlayerProfile_90
	nop


;Com_BuildPlayerProfilePath(char*, int, char const*, ...)
Com_BuildPlayerProfilePath:
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
	jz Com_BuildPlayerProfilePath_10
Com_BuildPlayerProfilePath_60:
	lea edi, [ebp+0x14]
	mov [ebp-0x1c], edi
	mov eax, [edx+0xc]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_profiless
	mov [esp+0x4], esi
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Com_sprintf
	mov ebx, eax
	test eax, eax
	js Com_BuildPlayerProfilePath_20
	cmp esi, eax
	jg Com_BuildPlayerProfilePath_30
Com_BuildPlayerProfilePath_20:
	mov edx, esi
Com_BuildPlayerProfilePath_50:
	mov eax, edx
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Com_BuildPlayerProfilePath_30:
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
	js Com_BuildPlayerProfilePath_40
	cmp esi, edx
	jg Com_BuildPlayerProfilePath_50
Com_BuildPlayerProfilePath_40:
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
Com_BuildPlayerProfilePath_10:
	mov dword [esp+0x4], _cstring_tried_to_use_a_p
	mov dword [esp], 0x1
	call Com_Error
	mov edx, [com_playerProfile]
	jmp Com_BuildPlayerProfilePath_60


;Com_BuildPlayerProfilePathForPlayer(char*, int, char const*, char const*, ...)
Com_BuildPlayerProfilePathForPlayer:
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
	call Com_sprintf
	mov ebx, eax
	test eax, eax
	js Com_BuildPlayerProfilePathForPlayer_10
	cmp esi, eax
	jg Com_BuildPlayerProfilePathForPlayer_20
Com_BuildPlayerProfilePathForPlayer_10:
	mov edx, esi
Com_BuildPlayerProfilePathForPlayer_40:
	mov eax, edx
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Com_BuildPlayerProfilePathForPlayer_20:
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
	js Com_BuildPlayerProfilePathForPlayer_30
	cmp esi, edx
	jg Com_BuildPlayerProfilePathForPlayer_40
Com_BuildPlayerProfilePathForPlayer_30:
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

