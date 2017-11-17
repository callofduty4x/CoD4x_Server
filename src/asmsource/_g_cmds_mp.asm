;Imports of g_cmds_mp:
	extern Com_sprintf
	extern va
	extern g_entities
	extern SV_GameSendServerCommand
	extern atoi
	extern Q_stricmp
	extern BG_GetNumWeapons
	extern BG_CanPlayerHaveWeapon
	extern Q_stricmpn
	extern memcpy
	extern SV_Cmd_ArgvBuffer
	extern SV_Cmd_Argv
	extern BG_TakePlayerWeapon
	extern G_GivePlayerWeapon
	extern level
	extern G_FindItem
	extern G_Spawn
	extern G_GetItemClassname
	extern G_SpawnItem
	extern Touch_Item
	extern Add_Ammo
	extern G_FreeEntity
	extern BG_GetWeaponDef
	extern G_SelectWeaponIndex
	extern BG_AmmoForWeapon
	extern BG_ClipForWeapon
	extern SV_SetConfigstring
	extern Q_strncpyz
	extern SV_GetClientPing
	extern Com_PrintError
	extern Com_DPrintf
	extern sscanf
	extern CheatsOk
	extern Cvar_VariableIntegerValue
	extern g_gametype

;Exports of g_cmds_mp:
	global Cmd_Give_f
	global Cmd_Take_f
	global SendScoreboard
	global G_setfog


SECTION .text


;Cmd_Give_f(gentity_s*)
Cmd_Give_f:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x44c
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CheatsOk
	test eax, eax
	jz Cmd_Give_f_10
	mov dword [esp], 2
	call SV_Cmd_Argv
	mov dword [esp], eax
	call atoi
	mov [ebp-0x424], eax
	mov dword [esp+8], 1024
	mov dword [esp+4], _ZZ10ConcatArgsiE4line
	mov dword [esp], 1
	call SV_Cmd_ArgvBuffer
	mov dword [esp+0x4], _cstring_all
	mov dword [esp], _ZZ10ConcatArgsiE4line
	call Q_stricmp
	test eax, eax
	jnz Cmd_Give_f_40
	mov esi, 0x1
Cmd_Give_f_250:
	mov edi, [ebp-0x424]
	test edi, edi
	jz Cmd_Give_f_50
	mov eax, [ebp-0x424]
	mov edi, [ebp+0x8]
	add [edi+0x1a0], eax
Cmd_Give_f_230:
	test esi, esi
	jz Cmd_Give_f_10
Cmd_Give_f_350:
	mov edi, 0x1
	call BG_GetNumWeapons
	cmp edi, eax
	jae Cmd_Give_f_60
Cmd_Give_f_80:
	mov [esp], edi
	call BG_CanPlayerHaveWeapon
	test al, al
	jnz Cmd_Give_f_70
	add edi, 0x1
Cmd_Give_f_220:
	call BG_GetNumWeapons
	cmp edi, eax
	jb Cmd_Give_f_80
Cmd_Give_f_60:
	test esi, esi
	jz Cmd_Give_f_10
Cmd_Give_f_390:
	mov ebx, [ebp-0x424]
	test ebx, ebx
	jz Cmd_Give_f_90
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x15c]
	mov edx, [eax+0xe8]
	test edx, edx
	jnz Cmd_Give_f_100
Cmd_Give_f_330:
	test esi, esi
	jz Cmd_Give_f_10
Cmd_Give_f_370:
	mov dword [esp+0x8], 0x7
	mov dword [esp+0x4], _cstring_allammo
	mov dword [esp], _ZZ10ConcatArgsiE4line
	call Q_stricmpn
	test eax, eax
	jnz Cmd_Give_f_110
	mov ecx, [ebp-0x424]
	test ecx, ecx
	jnz Cmd_Give_f_120
Cmd_Give_f_110:
	test esi, esi
	jz Cmd_Give_f_130
Cmd_Give_f_10:
	add esp, 0x44c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Cmd_Give_f_70:
	mov dword [esp+0x8], 0x1
	mov [esp+0x4], edi
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x15c]
	mov [esp], eax
	call BG_TakePlayerWeapon
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], edi
	mov edx, [ebp+0x8]
	mov eax, [edx+0x15c]
	mov [esp], eax
	call G_GivePlayerWeapon
	add edi, 0x1
	jmp Cmd_Give_f_220
Cmd_Give_f_50:
	mov edx, [ebp+0x8]
	mov eax, [edx+0x15c]
	mov eax, [eax+0x150]
	mov [edx+0x1a0], eax
	jmp Cmd_Give_f_230
Cmd_Give_f_40:
	mov dword [esp+0x8], 0x6
	mov dword [esp+0x4], _cstring_health
	mov dword [esp], _ZZ10ConcatArgsiE4line
	call Q_stricmpn
	test eax, eax
	jnz Cmd_Give_f_240
	xor esi, esi
	jmp Cmd_Give_f_250
Cmd_Give_f_130:
	mov ebx, level
	mov dword [ebx+0x1c], 0x1
	mov dword [esp+0x4], 0x0
	mov dword [esp], _ZZ10ConcatArgsiE4line
	call G_FindItem
	mov esi, eax
	test eax, eax
	jz Cmd_Give_f_260
	call G_Spawn
	mov ebx, eax
	lea ecx, [eax+0x13c]
	mov edx, [ebp+0x8]
	add edx, 0x13c
	mov edi, [ebp+0x8]
	mov eax, [edi+0x13c]
	mov [ebx+0x13c], eax
	mov eax, [edx+0x4]
	mov [ecx+0x4], eax
	mov eax, [edx+0x8]
	mov [ecx+0x8], eax
	lea eax, [ebx+0x170]
	mov [esp+0x4], eax
	mov [esp], esi
	call G_GetItemClassname
	mov [esp+0x4], esi
	mov [esp], ebx
	call G_SpawnItem
	mov byte [ebx+0x16c], 0x1
	cmp dword [esi], 0x1
	jz Cmd_Give_f_270
Cmd_Give_f_420:
	mov dword [esp+0x8], 0x0
	mov edi, [ebp+0x8]
	mov [esp+0x4], edi
	mov [esp], ebx
	call Touch_Item
	mov byte [ebx+0x16c], 0x0
	cmp byte [ebx+0x100], 0x0
	jnz Cmd_Give_f_280
Cmd_Give_f_380:
	mov eax, level
	mov dword [eax+0x1c], 0x0
	jmp Cmd_Give_f_10
Cmd_Give_f_120:
	mov ebx, 0x1
	jmp Cmd_Give_f_290
Cmd_Give_f_300:
	mov dword [esp+0x10], 0x1
	mov edx, [ebp-0x424]
	mov [esp+0xc], edx
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], ebx
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call Add_Ammo
	add ebx, 0x1
Cmd_Give_f_290:
	call BG_GetNumWeapons
	cmp ebx, eax
	jb Cmd_Give_f_300
	jmp Cmd_Give_f_10
Cmd_Give_f_90:
	mov ebx, 0x1
	jmp Cmd_Give_f_310
Cmd_Give_f_320:
	mov dword [esp+0x10], 0x1
	mov dword [esp+0xc], 0x3e6
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], ebx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Add_Ammo
	add ebx, 0x1
Cmd_Give_f_310:
	call BG_GetNumWeapons
	cmp ebx, eax
	jb Cmd_Give_f_320
	jmp Cmd_Give_f_330
Cmd_Give_f_100:
	mov dword [esp+0x10], 0x1
	mov edi, [ebp-0x424]
	mov [esp+0xc], edi
	movzx eax, byte [edx+eax+0x81c]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov [esp], ecx
	call Add_Ammo
	jmp Cmd_Give_f_330
Cmd_Give_f_240:
	mov dword [esp+0x4], _cstring_weapons
	mov dword [esp], _ZZ10ConcatArgsiE4line
	call Q_stricmp
	test eax, eax
	jnz Cmd_Give_f_340
	xor esi, esi
	jmp Cmd_Give_f_350
Cmd_Give_f_260:
	mov dword [ebx+0x1c], 0x0
	jmp Cmd_Give_f_10
Cmd_Give_f_340:
	mov dword [esp+0x8], 0x4
	mov dword [esp+0x4], _cstring_ammo
	mov dword [esp], _ZZ10ConcatArgsiE4line
	call Q_stricmpn
	test eax, eax
	jz Cmd_Give_f_360
	xor esi, esi
	jmp Cmd_Give_f_370
Cmd_Give_f_280:
	mov [esp], ebx
	call G_FreeEntity
	jmp Cmd_Give_f_380
Cmd_Give_f_360:
	xor esi, esi
	jmp Cmd_Give_f_390
Cmd_Give_f_270:
	mov eax, [ebx+0x1bc]
	and eax, 0x8000007f
	js Cmd_Give_f_400
Cmd_Give_f_430:
	mov [esp], eax
	call BG_GetWeaponDef
	mov eax, [eax+0x144]
	cmp eax, 0x3
	jz Cmd_Give_f_410
	cmp eax, 0x2
	jnz Cmd_Give_f_420
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x15c]
	mov dword [eax+0xe4], 0x0
	jmp Cmd_Give_f_420
Cmd_Give_f_410:
	mov edx, [ebp+0x8]
	mov eax, [edx+0x15c]
	mov dword [eax+0xe4], 0x1
	jmp Cmd_Give_f_420
Cmd_Give_f_400:
	sub eax, 0x1
	or eax, 0xffffff80
	add eax, 0x1
	jmp Cmd_Give_f_430
	nop


;Cmd_Take_f(gentity_s*)
Cmd_Take_f:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x44c
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CheatsOk
	test eax, eax
	jz Cmd_Take_f_10
	mov dword [esp], 2
	call SV_Cmd_Argv
	mov dword [esp], eax
	call atoi
	mov [ebp-0x430], eax
	mov dword [esp+8], 1024
	mov dword [esp+4], _ZZ10ConcatArgsiE4line
	mov dword [esp], 1
	call SV_Cmd_ArgvBuffer
	mov dword [esp+0x4], _cstring_all
	mov dword [esp], _ZZ10ConcatArgsiE4line
	call Q_stricmp
	test eax, eax
	jnz Cmd_Take_f_40
	mov dword [ebp-0x434], 0x1
Cmd_Take_f_230:
	mov edi, [ebp-0x430]
	test edi, edi
	jz Cmd_Take_f_50
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x1a0]
	sub eax, [ebp-0x430]
	mov [ecx+0x1a0], eax
	test eax, eax
	jle Cmd_Take_f_60
Cmd_Take_f_210:
	mov esi, [ebp-0x434]
	test esi, esi
	jz Cmd_Take_f_10
Cmd_Take_f_330:
	mov ebx, 0x1
	jmp Cmd_Take_f_70
Cmd_Take_f_80:
	mov dword [esp+0x8], 0x1
	mov [esp+0x4], ebx
	mov edx, [ebp+0x8]
	mov eax, [edx+0x15c]
	mov [esp], eax
	call BG_TakePlayerWeapon
	add ebx, 0x1
Cmd_Take_f_70:
	call BG_GetNumWeapons
	cmp ebx, eax
	jb Cmd_Take_f_80
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x15c]
	mov ebx, [eax+0xe8]
	test ebx, ebx
	jnz Cmd_Take_f_90
Cmd_Take_f_240:
	mov ecx, [ebp-0x434]
	test ecx, ecx
	jz Cmd_Take_f_10
Cmd_Take_f_350:
	mov edx, [ebp-0x430]
	test edx, edx
	jz Cmd_Take_f_100
	mov edx, [ebp+0x8]
	mov eax, [edx+0x15c]
	mov eax, [eax+0xe8]
	mov [ebp-0x438], eax
	test eax, eax
	jnz Cmd_Take_f_110
Cmd_Take_f_300:
	mov eax, [ebp-0x434]
	test eax, eax
	jz Cmd_Take_f_10
Cmd_Take_f_340:
	mov dword [esp+0x8], 0x7
	mov dword [esp+0x4], _cstring_allammo
	mov dword [esp], _ZZ10ConcatArgsiE4line
	call Q_stricmpn
	test eax, eax
	jnz Cmd_Take_f_10
	mov eax, [ebp-0x430]
	test eax, eax
	jnz Cmd_Take_f_120
Cmd_Take_f_10:
	add esp, 0x44c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Cmd_Take_f_50:
	mov eax, [ebp+0x8]
	mov dword [eax+0x1a0], 0x1
	jmp Cmd_Take_f_210
Cmd_Take_f_40:
	mov dword [esp+0x8], 0x6
	mov dword [esp+0x4], _cstring_health
	mov dword [esp], _ZZ10ConcatArgsiE4line
	call Q_stricmpn
	test eax, eax
	jnz Cmd_Take_f_220
	mov dword [ebp-0x434], 0x0
	jmp Cmd_Take_f_230
Cmd_Take_f_90:
	mov dword [eax+0xe8], 0x0
	mov dword [esp+0x4], 0x0
	mov eax, ecx
	sub eax, g_entities
	sar eax, 0x2
	imul eax, eax, 0x2c0685b5
	mov [esp], eax
	call G_SelectWeaponIndex
	jmp Cmd_Take_f_240
Cmd_Take_f_120:
	mov dword [ebp-0x41c], 0x1
	jmp Cmd_Take_f_250
Cmd_Take_f_270:
	mov edx, [ebp-0x41c]
	mov [esp], edx
	call BG_AmmoForWeapon
	mov ecx, [ebp+0x8]
	mov edx, [ecx+0x15c]
	mov ecx, [ebp-0x430]
	sub [edx+eax*4+0x15c], ecx
	mov eax, [ebp+0x8]
	mov ebx, [eax+0x15c]
	mov edx, [ebp-0x41c]
	mov [esp], edx
	call BG_AmmoForWeapon
	mov eax, [ebx+eax*4+0x15c]
	test eax, eax
	js Cmd_Take_f_260
Cmd_Take_f_310:
	add dword [ebp-0x41c], 0x1
Cmd_Take_f_250:
	call BG_GetNumWeapons
	cmp [ebp-0x41c], eax
	jb Cmd_Take_f_270
	jmp Cmd_Take_f_10
Cmd_Take_f_100:
	mov esi, 0x1
	jmp Cmd_Take_f_280
Cmd_Take_f_290:
	mov ecx, [ebp+0x8]
	mov ebx, [ecx+0x15c]
	mov [esp], esi
	call BG_AmmoForWeapon
	mov dword [ebx+eax*4+0x15c], 0x0
	mov eax, [ebp+0x8]
	mov ebx, [eax+0x15c]
	mov [esp], esi
	call BG_ClipForWeapon
	mov dword [ebx+eax*4+0x35c], 0x0
	add esi, 0x1
Cmd_Take_f_280:
	call BG_GetNumWeapons
	cmp esi, eax
	jb Cmd_Take_f_290
	jmp Cmd_Take_f_300
Cmd_Take_f_110:
	mov [esp], eax
	call BG_AmmoForWeapon
	mov ecx, [ebp+0x8]
	mov edx, [ecx+0x15c]
	mov ecx, [ebp-0x430]
	sub [edx+eax*4+0x15c], ecx
	mov eax, [ebp+0x8]
	mov ebx, [eax+0x15c]
	mov edx, [ebp-0x438]
	mov [esp], edx
	call BG_AmmoForWeapon
	mov eax, [ebx+eax*4+0x15c]
	test eax, eax
	jns Cmd_Take_f_300
	mov ecx, [ebp-0x438]
	mov [esp], ecx
	call BG_ClipForWeapon
	mov edi, eax
	mov eax, [ebp+0x8]
	mov esi, [eax+0x15c]
	mov ebx, [esi+edi*4+0x35c]
	mov edx, [ebp-0x438]
	mov [esp], edx
	call BG_AmmoForWeapon
	add ebx, [esi+eax*4+0x15c]
	mov [esi+edi*4+0x35c], ebx
	mov ecx, [ebp+0x8]
	mov ebx, [ecx+0x15c]
	mov eax, [ebp-0x438]
	mov [esp], eax
	call BG_AmmoForWeapon
	mov dword [ebx+eax*4+0x15c], 0x0
	mov edx, [ebp+0x8]
	mov ebx, [edx+0x15c]
	mov ecx, [ebp-0x438]
	mov [esp], ecx
	call BG_ClipForWeapon
	mov eax, [ebx+eax*4+0x35c]
	test eax, eax
	jns Cmd_Take_f_300
	mov eax, [ebp+0x8]
	mov ebx, [eax+0x15c]
	mov edx, [ebp-0x438]
	mov [esp], edx
	call BG_ClipForWeapon
	mov dword [ebx+eax*4+0x35c], 0x0
	jmp Cmd_Take_f_300
Cmd_Take_f_60:
	mov dword [ecx+0x1a0], 0x1
	jmp Cmd_Take_f_210
Cmd_Take_f_260:
	mov ecx, [ebp-0x41c]
	mov [esp], ecx
	call BG_ClipForWeapon
	mov edi, eax
	mov eax, [ebp+0x8]
	mov esi, [eax+0x15c]
	mov ebx, [esi+edi*4+0x35c]
	mov edx, [ebp-0x41c]
	mov [esp], edx
	call BG_AmmoForWeapon
	add ebx, [esi+eax*4+0x15c]
	mov [esi+edi*4+0x35c], ebx
	mov ecx, [ebp+0x8]
	mov ebx, [ecx+0x15c]
	mov eax, [ebp-0x41c]
	mov [esp], eax
	call BG_AmmoForWeapon
	mov dword [ebx+eax*4+0x15c], 0x0
	mov edx, [ebp+0x8]
	mov ebx, [edx+0x15c]
	mov ecx, [ebp-0x41c]
	mov [esp], ecx
	call BG_ClipForWeapon
	mov eax, [ebx+eax*4+0x35c]
	test eax, eax
	jns Cmd_Take_f_310
	mov eax, [ebp+0x8]
	mov ebx, [eax+0x15c]
	mov edx, [ebp-0x41c]
	mov [esp], edx
	call BG_ClipForWeapon
	mov dword [ebx+eax*4+0x35c], 0x0
	jmp Cmd_Take_f_310
Cmd_Take_f_220:
	mov dword [esp+0x4], _cstring_weapons
	mov dword [esp], _ZZ10ConcatArgsiE4line
	call Q_stricmp
	test eax, eax
	jnz Cmd_Take_f_320
	mov dword [ebp-0x434], 0x0
	jmp Cmd_Take_f_330
Cmd_Take_f_320:
	mov dword [esp+0x8], 0x4
	mov dword [esp+0x4], _cstring_ammo
	mov dword [esp], _ZZ10ConcatArgsiE4line
	call Q_stricmpn
	test eax, eax
	jnz Cmd_Take_f_340
	mov dword [ebp-0x434], 0x0
	jmp Cmd_Take_f_350
	nop



;SendScoreboard(gentity_s*)
SendScoreboard:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xb5c
	mov byte [ebp-0x590], 0x0
	mov eax, level
	mov eax, [eax+0x21c]
	mov [ebp-0xb30], eax
	cmp eax, 0x40
	jle SendScoreboard_10
	mov dword [ebp-0xb30], 0x40
SendScoreboard_80:
	mov dword [ebp-0xb34], 0x0
	xor esi, esi
	mov edi, level
	jmp SendScoreboard_20
SendScoreboard_60:
	mov [esp], ecx
	call SV_GetClientPing
	mov edx, eax
SendScoreboard_70:
	mov eax, [ebx+0x2f84]
	mov [esp+0x24], eax
	mov eax, [ebx+0x2f80]
	mov [esp+0x20], eax
	mov eax, [ebx+0x2f70]
	mov [esp+0x1c], eax
	mov eax, [ebx+0x2f7c]
	mov [esp+0x18], eax
	mov [esp+0x14], edx
	mov eax, [ebx+0x2f78]
	mov [esp+0x10], eax
	mov edx, [ebp-0xb2c]
	mov eax, [edx]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring__i_i_i_i_i_i_i
	mov dword [esp+0x4], 0x598
	lea eax, [ebp-0xb28]
	mov [esp], eax
	call Com_sprintf
	test eax, eax
	js SendScoreboard_30
	lea ebx, [esi+eax]
	cmp ebx, 0x578
	jg SendScoreboard_40
	mov eax, 0x578
	sub eax, esi
	mov [esp+0x8], eax
	lea edx, [ebp-0xb28]
	mov [esp+0x4], edx
	lea eax, [ebp-0x590]
	add eax, esi
	mov [esp], eax
	call Q_strncpyz
	add dword [ebp-0xb34], 0x1
	add edi, 0x4
	mov eax, [ebp-0xb34]
	cmp [ebp-0xb30], eax
	jz SendScoreboard_50
	mov esi, ebx
SendScoreboard_20:
	lea edx, [edi+0x220]
	mov [ebp-0xb2c], edx
	mov ecx, [edi+0x220]
	lea eax, [ecx+ecx*2]
	mov edx, eax
	shl edx, 0x6
	add eax, edx
	mov edx, eax
	shl edx, 0x6
	add eax, edx
	lea ebx, [eax+ecx]
	mov eax, level
	add ebx, [eax]
	cmp dword [ebx+0x2f8c], 0x1
	jnz SendScoreboard_60
	mov edx, 0xffffffff
	jmp SendScoreboard_70
SendScoreboard_10:
	mov eax, [ebp-0xb30]
	test eax, eax
	jg SendScoreboard_80
	mov dword [ebp-0xb34], 0x0
SendScoreboard_110:
	mov esi, g_gametype
	mov eax, [esi]
	mov eax, [eax+0xc]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_scr_s_scorelimit
	mov dword [esp+0x4], 0x598
	lea eax, [ebp-0xb28]
	mov [esp], eax
	call Com_sprintf
	lea edx, [ebp-0xb28]
	mov [esp], edx
	call Cvar_VariableIntegerValue
	mov ebx, eax
	test eax, eax
	jz SendScoreboard_90
SendScoreboard_120:
	lea eax, [ebp-0x590]
	mov [esp+0x20], eax
	mov [esp+0x1c], ebx
	mov esi, level
	mov eax, [esi+0x204]
	mov [esp+0x18], eax
	mov eax, [esi+0x200]
	mov [esp+0x14], eax
	mov edx, [ebp-0xb34]
	mov [esp+0x10], edx
	mov dword [esp+0xc], 0x62
	mov dword [esp+0x8], _cstring_c_i_i_i_is
	mov dword [esp+0x4], 0x598
	lea eax, [ebp-0xb28]
	mov [esp], eax
	call Com_sprintf
	test eax, eax
	js SendScoreboard_100
	lea edx, [ebp-0xb28]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x1
	mov eax, g_entities
	sub [ebp+0x8], eax
	sar dword [ebp+0x8], 0x2
	imul eax, [ebp+0x8], 0x2c0685b5
	mov [esp], eax
	call SV_GameSendServerCommand
	add esp, 0xb5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SendScoreboard_50:
	mov edx, [ebp-0xb30]
	mov [ebp-0xb34], edx
	jmp SendScoreboard_110
SendScoreboard_90:
	mov eax, [esi]
	mov eax, [eax+0xc]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_scr_s_roundlimit
	mov dword [esp+0x4], 0x598
	lea eax, [ebp-0xb28]
	mov [esp], eax
	call Com_sprintf
	lea edx, [ebp-0xb28]
	mov [esp], edx
	call Cvar_VariableIntegerValue
	mov ebx, eax
	jmp SendScoreboard_120
SendScoreboard_100:
	mov dword [esp+0x8], 0x598
	mov dword [esp+0x4], _cstring_scoreboard_messa
	mov dword [esp], 0xf
	call Com_PrintError
	lea edx, [ebp-0x590]
	mov [esp+0x1c], edx
	mov [esp+0x18], ebx
	mov eax, [esi+0x204]
	mov [esp+0x14], eax
	mov eax, [esi+0x200]
	mov [esp+0x10], eax
	mov eax, [ebp-0xb34]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x62
	mov dword [esp+0x4], _cstring_c_i_i_i_is
	mov dword [esp], 0x6
	call Com_DPrintf
	add esp, 0xb5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SendScoreboard_30:
	lea ebx, [eax+esi]
SendScoreboard_40:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_scoreboard_messa1
	mov dword [esp], 0xf
	call Com_PrintError
	lea edx, [ebp-0x590]
	mov [esp+0xc], edx
	lea eax, [ebp-0xb28]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_ss
	mov dword [esp], 0x6
	call Com_DPrintf
	jmp SendScoreboard_110
	nop


;G_setfog(char const*)
G_setfog:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x50
	mov ebx, [ebp+0x8]
	mov [esp+0x4], ebx
	mov dword [esp], 0x9
	call SV_SetConfigstring
	mov esi, level
	mov eax, 0x7f7fffff
	mov [esi+0x15c4], eax
	mov [esi+0x15c8], eax
	lea eax, [ebp-0x18]
	mov [esp+0x20], eax
	lea edx, [ebp-0x24]
	lea eax, [ebp-0x1c]
	mov [esp+0x1c], eax
	lea eax, [ebp-0x20]
	mov [esp+0x18], eax
	mov [esp+0x14], edx
	lea eax, [ebp-0x14]
	mov [esp+0x10], eax
	lea eax, [ebp-0x10]
	mov [esp+0xc], eax
	lea eax, [ebp-0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_f_f_f_f_f_f_i
	mov [esp], ebx
	call sscanf
	cmp eax, 0x7
	jz G_setfog_10
G_setfog_20:
	add esp, 0x50
	pop ebx
	pop esi
	pop ebp
	ret
G_setfog_10:
	movss xmm0, dword [ebp-0x14]
	ucomiss xmm0, [_float_1_00000000]
	jb G_setfog_20
	movss xmm1, dword [ebp-0xc]
	movss xmm0, dword [ebp-0x10]
	subss xmm0, xmm1
	addss xmm0, xmm1
	movss [esi+0x15c4], xmm0
	mulss xmm0, xmm0
	movss [esi+0x15c8], xmm0
	add esp, 0x50
	pop ebx
	pop esi
	pop ebp
	ret


;Initialized global or static variables of g_cmds_mp:
SECTION .data


;Initialized constant data of g_cmds_mp:
SECTION .rdata


;Zero initialized global or static variables of g_cmds_mp:
SECTION .bss
_ZZ10ConcatArgsiE4line: resb 0x400


;All cstrings:
SECTION .rdata
_cstring_null:		db 0
_cstring_sgame_dead:		db 15h,"%s(",14h,"GAME_DEAD",15h,")",0
_cstring_7:		db "^7",0
_cstring_sss_:		db "%s%s%s: ",0
_cstring_c_sccs:		db "%c ",22h,15h,"%s%c%c%s",22h,0
_cstring_8:		db "^8",0
_cstring_9:		db "^9",0
_cstring_s:		db 15h,"%s",0
_cstring_ssss_:		db "%s(",14h,"%s",15h,")%s%s: ",0
_cstring_sss_1:		db "%s[%s]%s: ",0
_cstring_game_spectator:		db 15h,"(",14h,"GAME_SPECTATOR",15h,")",0
_cstring_all:		db "all",0
_cstring_allammo:		db "allammo",0
_cstring_health:		db "health",0
_cstring_weapons:		db "weapons",0
_cstring_ammo:		db "ammo",0
_cstring_c_game_votecast:		db "%c ",22h,"GAME_VOTECAST",22h,0
_cstring_i:		db "%i",0
_cstring_c_game_novoteinp:		db "%c ",22h,"GAME_NOVOTEINPROGRESS",22h,0
_cstring_yes:		db "yes",0
_cstring_c_game_votealrea:		db "%c ",22h,"GAME_VOTEALREADYCAST",22h,0
_cstring_c_game_nospectat:		db "%c ",22h,"GAME_NOSPECTATORVOTE",22h,0
_cstring_no:		db "no",0
_cstring_say:		db "say",0
_cstring_say_team:		db "say_team",0
_cstring_score:		db "score",0
_cstring_mr:		db "mr",0
_cstring_give:		db "give",0
_cstring_take:		db "take",0
_cstring_god:		db "god",0
_cstring_game_godmode_on:		db "GAME_GODMODE_ON",0
_cstring_game_godmode_off:		db "GAME_GODMODE_OFF",0
_cstring_c_s:		db "%c ",22h,"%s",22h,0
_cstring_demigod:		db "demigod",0
_cstring_game_demi_godmod:		db "GAME_DEMI_GODMODE_ON",0
_cstring_game_demi_godmod1:		db "GAME_DEMI_GODMODE_OFF",0
_cstring_notarget:		db "notarget",0
_cstring_game_notargetoff:		db "GAME_NOTARGETOFF",0
_cstring_game_notargeton:		db "GAME_NOTARGETON",0
_cstring_noclip:		db "noclip",0
_cstring_game_noclipoff:		db "GAME_NOCLIPOFF",0
_cstring_game_noclipon:		db "GAME_NOCLIPON",0
_cstring_ufo:		db "ufo",0
_cstring_game_ufooff:		db "GAME_UFOOFF",0
_cstring_game_ufoon:		db "GAME_UFOON",0
_cstring_kill:		db "kill",0
_cstring_follownext:		db "follownext",0
_cstring_followprev:		db "followprev",0
_cstring_where:		db "where",0
_cstring_c_s1:		db "%c ",22h,15h,"%s",0ah,22h,0
_cstring_callvote:		db "callvote",0
_cstring_vote:		db "vote",0
_cstring_setviewpos:		db "setviewpos",0
_cstring_entitycount:		db "entitycount",0
_cstring_entity_count__i:		db "entity count = %i",0ah,0
_cstring_printentities:		db "printentities",0
_cstring_c_game_unknowncl:		db "%c ",22h,"GAME_UNKNOWNCLIENTCOMMAND",15h,"%s",22h,0
_cstring_c_game_invalidvo:		db "%c ",22h,"GAME_INVALIDVOTESTRING",22h,0
_cstring_c_game_votingnot:		db "%c ",22h,"GAME_VOTINGNOTENABLED",22h,0
_cstring_c_game_votealrea1:		db "%c ",22h,"GAME_VOTEALREADYINPROGRESS",22h,0
_cstring_c_game_maxvotesc:		db "%c ",22h,"GAME_MAXVOTESCALLED",22h,0
_cstring_c_game_votingnot1:		db "%c ",22h,"GAME_VOTINGNOTENOUGHPLAYERS",22h,0
_cstring_map_restart:		db "map_restart",0
_cstring_s1:		db "%s",0ah,0
_cstring_typemap:		db "typemap",0
_cstring_current_map_name:		db "Current map name",0
_cstring_mapname:		db "mapname",0
_cstring_c_game_typemap_n:		db "%c ",22h,"GAME_TYPEMAP_NOCHANGE",22h,0
_cstring_c_game_nospectat1:		db "%c ",22h,"GAME_NOSPECTATORCALLVOTE",22h,0
_cstring_c_game_invalidga:		db "%c ",22h,"GAME_INVALIDGAMETYPE",22h,0
_cstring_g_gametype:		db "g_gametype",0
_cstring_s_s_map_restart:		db "%s %s; map_restart",0
_cstring_game_vote_gamety:		db "GAME_VOTE_GAMETYPE",14h,"%s",0
_cstring_c_game_calledavo:		db "%c ",22h,"GAME_CALLEDAVOTE",15h,"%s",22h,0
_cstring_sv_serverid:		db "sv_serverId",0
_cstring_i_i:		db "%i %i",0
_cstring_fast_restart:		db "fast_restart",0
_cstring_game_vote_mapres:		db "GAME_VOTE_MAPRESTART",0
_cstring_map_rotate:		db "map_rotate",0
_cstring_map:		db "map",0
_cstring_kick:		db "kick",0
_cstring_clientkick:		db "clientkick",0
_cstring_tempbanuser:		db "tempBanUser",0
_cstring_tempbanclient:		db "tempBanClient",0
_cstring_c_game_votecomma:		db "%c ",22h,"GAME_VOTECOMMANDSARE",15h," map_restart, map_rotate, map <mapname>, g_gametype <typename>, typemap <typename> <mapname>, kick <player>, clientkick <clientnum>, tempBanUser <player>, tempBanClient <clientNum>",22h,0
_cstring_g_gametype_s_map:		db "g_gametype %s; map %s",0
_cstring_game_vote_gamety1:		db "GAME_VOTE_GAMETYPE",14h,"%s",15h," - ",14h,"GAME_VOTE_MAP",15h,"%s",0
_cstring_s2:		db "%s",0
_cstring_game_vote_nextma:		db "GAME_VOTE_NEXTMAP",0
_cstring_map_s:		db "map %s",0
_cstring_game_vote_maps:		db "GAME_VOTE_MAP",15h,"%s",0
_cstring_g_gametype_s_map1:		db "g_gametype %s; map_restart",0
_cstring_c_the_server_doe:		db "%c ",22h,15h,"the server doesn",27h,"t have that map",22h,0
_cstring_s_s:		db "%s %s",0
_cstring_c_game_clientnot:		db "%c ",22h,"GAME_CLIENTNOTONSERVER",22h,0
_cstring_0:		db "0",0
_cstring_s_d:		db "%s ",22h,"%d",22h,0
_cstring_game_vote_kickis:		db "GAME_VOTE_KICK",15h,"(%i)%s",0
_cstring__i_i_i_i_i_i_i:		db " %i %i %i %i %i %i %i",0
_cstring_scr_s_scorelimit:		db "scr_%s_scorelimit",0
_cstring_c_i_i_i_is:		db "%c %i %i %i %i%s",0
_cstring_scr_s_roundlimit:		db "scr_%s_roundlimit",0
_cstring_scoreboard_messa:		db "Scoreboard message too large > %i.  Message not sent.",0ah,0
_cstring_scoreboard_messa1:		db "Scoreboard message too large: %i",0ah,0
_cstring_ss:		db "%s",0ah,"%s",0ah,0
_cstring_c_game_usage_set:		db "%c ",22h,"GAME_USAGE",15h,": setviewpos x y z yaw",22h,0
_cstring_c_game_cheatsnot:		db "%c ",22h,"GAME_CHEATSNOTENABLED",22h,0
_cstring_cmd_followcycle_:		db 15h,"Cmd_FollowCycle_f: bad dir %i",0
_cstring_saysdss:		db "say;%s;%d;%s;%s",0ah,0
_cstring_sayteamsdss:		db "sayteam;%s;%d;%s;%s",0ah,0
_cstring_g_teamname_allie:		db "g_TeamName_Allies",0
_cstring_ss1:		db "%s%s",0ah,0
_cstring_g_teamname_axis:		db "g_TeamName_Axis",0
_cstring_c_game_mustbeali:		db "%c ",22h,"GAME_MUSTBEALIVECOMMAND",22h,0
_cstring_f_f_f_f_f_f_i:		db "%f %f %f %f %f %f %i",0



;All constant floats and doubles:
SECTION .rdata
_float_15_00000000:		dd 0x41700000	; 15
_float__40_00000000:		dd 0xc2200000	; -40
_float_10_00000000:		dd 0x41200000	; 10
_float_1_00000000:		dd 0x3f800000	; 1

