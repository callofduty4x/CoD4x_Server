;Imports of stringed_hooks:
	extern _Z19DB_FindXAssetHeader10XAssetTypePKc
	extern strdup
	extern _Z15SE_LoadLanguageh
	extern fs_ignoreLocalized
	extern _Z9Com_Error11errorParm_tPKcz
	extern _Z16Com_PrintWarningiPKcz
	extern _Z16Dvar_RegisterIntPKciiitS0_
	extern _Z17Dvar_RegisterBoolPKchtS0_
	extern _Z7SE_Initv
	extern _Z11SE_ShutDownv
	extern useFastFile
	extern _Z20SE_GetString_LoadObjPKc
	extern _Z20FS_LanguageHasAssetsi
	extern _Z11Dvar_SetIntPK6dvar_si
	extern _Z14Com_PrintErroriPKcz
	extern memset
	extern _Z10I_strncpyzPcPKci
	extern _Z10Com_PrintfiPKcz
	extern strcpy
	extern _Z2vaPKcz
	extern _Z9I_strncatPciPKc
	extern _Z9I_stricmpPKcS0_

;Exports of stringed_hooks:
	global g_languages
	global g_currentAsian
	global _ZZ21SE_GetString_FastFilePKcE1s_17
	global _ZZ21SE_GetString_FastFilePKcE1s_16
	global _ZZ21SE_GetString_FastFilePKcE1s_15
	global _ZZ21SE_GetString_FastFilePKcE1s_14
	global _ZZ21SE_GetString_FastFilePKcE1s_13
	global _ZZ21SE_GetString_FastFilePKcE1s_12
	global _ZZ21SE_GetString_FastFilePKcE1s_11
	global _ZZ21SE_GetString_FastFilePKcE1s_10
	global _ZZ21SE_GetString_FastFilePKcE1s_9
	global _ZZ21SE_GetString_FastFilePKcE1s_8
	global _ZZ21SE_GetString_FastFilePKcE1s_7
	global _ZZ21SE_GetString_FastFilePKcE1s_6
	global _ZZ21SE_GetString_FastFilePKcE1s_5
	global _ZZ21SE_GetString_FastFilePKcE1s_4
	global _ZZ21SE_GetString_FastFilePKcE1s_3
	global _ZZ21SE_GetString_FastFilePKcE1s_2
	global _ZZ21SE_GetString_FastFilePKcE1s_1
	global _ZZ21SE_GetString_FastFilePKcE1s_0
	global _ZZ21SE_GetString_FastFilePKcE1s
	global _ZZ21SE_GetString_FastFilePKcE9langIndex
	global _Z21SE_GetString_FastFilePKc
	global _Z31SEH_StringEd_SetLanguageStringsi
	global _ZZ23SEH_SafeTranslateStringPKcE13szErrorString
	global _ZZ23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_tE9szStrings
	global _ZZ23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_tE11iCurrString
	global _Z15SEH_PrintStrlenPKc
	global _Z16SEH_DecodeLetterjjPiS_
	global _Z16SEH_InitLanguagev
	global _Z17SEH_Init_StringEdv
	global _Z19SEH_GetLanguageNamei
	global _Z21SEH_Shutdown_StringEdv
	global _Z22SEH_GetCurrentLanguagev
	global _Z22SEH_ReadCharFromStringPPKcPi
	global _Z22SEH_StringEd_GetStringPKc
	global _Z22SEH_UpdateLanguageInfov
	global _Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t
	global _Z23SEH_SafeTranslateStringPKc
	global _Z27SEH_GetLanguageIndexForNamePKcPi
	global _Z27SEH_VerifyLanguageSelectioni
	global loc_warnings
	global loc_warningsAsErrors
	global loc_language
	global loc_forceEnglish
	global loc_translate


SECTION .text


;SE_GetString_FastFile(char const*)
_Z21SE_GetString_FastFilePKc:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov ebx, [ebp+0x8]
	cmp dword [_ZZ21SE_GetString_FastFilePKcE9langIndex], 0xffffffff
	jz _Z21SE_GetString_FastFilePKc_10
_Z21SE_GetString_FastFilePKc_90:
	mov edi, _cstring_key_
	mov ecx, 0x4
	cld
	mov esi, ebx
	repe cmpsb
	mov edx, 0x0
	jz _Z21SE_GetString_FastFilePKc_20
	movzx edx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub edx, ecx
_Z21SE_GetString_FastFilePKc_20:
	test edx, edx
	jnz _Z21SE_GetString_FastFilePKc_30
	lea eax, [ebx+0x4]
	mov [ebp-0x20], eax
	mov edi, _cstring_enter
	mov ecx, 0x6
	mov esi, eax
	repe cmpsb
	mov edx, 0x0
	jz _Z21SE_GetString_FastFilePKc_40
	movzx edx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub edx, ecx
_Z21SE_GetString_FastFilePKc_40:
	test edx, edx
	jnz _Z21SE_GetString_FastFilePKc_50
	mov eax, [_ZZ21SE_GetString_FastFilePKcE9langIndex]
	mov eax, [eax*4+_ZZ21SE_GetString_FastFilePKcE1s]
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z21SE_GetString_FastFilePKc_30:
	mov edi, _cstring_exe_
	mov ecx, 0x4
	cld
	mov esi, ebx
	repe cmpsb
	mov edx, 0x0
	jz _Z21SE_GetString_FastFilePKc_60
	movzx edx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub edx, ecx
_Z21SE_GetString_FastFilePKc_60:
	test edx, edx
	jz _Z21SE_GetString_FastFilePKc_70
_Z21SE_GetString_FastFilePKc_170:
	mov [esp+0x4], ebx
	mov dword [esp], 0x16
	call _Z19DB_FindXAssetHeader10XAssetTypePKc
	test eax, eax
	jz _Z21SE_GetString_FastFilePKc_80
	mov eax, [eax]
_Z21SE_GetString_FastFilePKc_80:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z21SE_GetString_FastFilePKc_10:
	mov eax, [loc_language]
	mov edx, [eax+0xc]
	xor eax, eax
	cmp edx, 0x4
	cmovl eax, edx
	mov [_ZZ21SE_GetString_FastFilePKcE9langIndex], eax
	jmp _Z21SE_GetString_FastFilePKc_90
_Z21SE_GetString_FastFilePKc_50:
	mov edi, _cstring_backspace
	mov ecx, 0xa
	cld
	mov esi, [ebp-0x20]
	repe cmpsb
	mov edx, 0x0
	jz _Z21SE_GetString_FastFilePKc_100
	movzx edx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub edx, ecx
_Z21SE_GetString_FastFilePKc_100:
	test edx, edx
	jnz _Z21SE_GetString_FastFilePKc_110
	mov eax, [_ZZ21SE_GetString_FastFilePKcE9langIndex]
	mov eax, [eax*4+_ZZ21SE_GetString_FastFilePKcE1s_0]
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z21SE_GetString_FastFilePKc_70:
	lea edi, [ebx+0x4]
	mov [ebp-0x1c], edi
	mov edi, _cstring_keywait
	mov ecx, 0x8
	mov esi, [ebp-0x1c]
	repe cmpsb
	mov edx, 0x0
	jz _Z21SE_GetString_FastFilePKc_120
	movzx edx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub edx, ecx
_Z21SE_GetString_FastFilePKc_120:
	test edx, edx
	jnz _Z21SE_GetString_FastFilePKc_130
	mov eax, [_ZZ21SE_GetString_FastFilePKcE9langIndex]
	mov eax, [eax*4+_ZZ21SE_GetString_FastFilePKcE1s_16]
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z21SE_GetString_FastFilePKc_110:
	mov edi, _cstring_alt
	mov ecx, 0x4
	cld
	mov esi, [ebp-0x20]
	repe cmpsb
	mov edx, 0x0
	jz _Z21SE_GetString_FastFilePKc_140
	movzx edx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub edx, ecx
_Z21SE_GetString_FastFilePKc_140:
	test edx, edx
	jnz _Z21SE_GetString_FastFilePKc_150
	mov eax, [_ZZ21SE_GetString_FastFilePKcE9langIndex]
	mov eax, [eax*4+_ZZ21SE_GetString_FastFilePKcE1s_1]
	jmp _Z21SE_GetString_FastFilePKc_80
_Z21SE_GetString_FastFilePKc_130:
	mov edi, _cstring_keychange
	mov ecx, 0xa
	cld
	mov esi, [ebp-0x1c]
	repe cmpsb
	mov edx, 0x0
	jz _Z21SE_GetString_FastFilePKc_160
	movzx edx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub edx, ecx
_Z21SE_GetString_FastFilePKc_160:
	test edx, edx
	jnz _Z21SE_GetString_FastFilePKc_170
	mov eax, [_ZZ21SE_GetString_FastFilePKcE9langIndex]
	mov eax, [eax*4+_ZZ21SE_GetString_FastFilePKcE1s_17]
	jmp _Z21SE_GetString_FastFilePKc_80
_Z21SE_GetString_FastFilePKc_150:
	mov edi, _cstring_ins
	mov ecx, 0x4
	cld
	mov esi, [ebp-0x20]
	repe cmpsb
	mov edx, 0x0
	jz _Z21SE_GetString_FastFilePKc_180
	movzx edx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub edx, ecx
_Z21SE_GetString_FastFilePKc_180:
	test edx, edx
	jnz _Z21SE_GetString_FastFilePKc_190
	mov eax, [_ZZ21SE_GetString_FastFilePKcE9langIndex]
	mov eax, [eax*4+_ZZ21SE_GetString_FastFilePKcE1s_2]
	jmp _Z21SE_GetString_FastFilePKc_80
_Z21SE_GetString_FastFilePKc_190:
	mov edi, _cstring_del
	mov ecx, 0x4
	cld
	mov esi, [ebp-0x20]
	repe cmpsb
	mov edx, 0x0
	jz _Z21SE_GetString_FastFilePKc_200
	movzx edx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub edx, ecx
_Z21SE_GetString_FastFilePKc_200:
	test edx, edx
	jnz _Z21SE_GetString_FastFilePKc_210
	mov eax, [_ZZ21SE_GetString_FastFilePKcE9langIndex]
	mov eax, [eax*4+_ZZ21SE_GetString_FastFilePKcE1s_3]
	jmp _Z21SE_GetString_FastFilePKc_80
_Z21SE_GetString_FastFilePKc_210:
	mov ecx, 0x4
	cld
	mov esi, [ebp-0x20]
	mov edi, _cstring_f13
	repe cmpsb
	mov eax, 0x0
	jz _Z21SE_GetString_FastFilePKc_220
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
_Z21SE_GetString_FastFilePKc_220:
	test eax, eax
	jnz _Z21SE_GetString_FastFilePKc_230
	mov eax, _cstring_f13
	jmp _Z21SE_GetString_FastFilePKc_80
_Z21SE_GetString_FastFilePKc_230:
	mov ecx, 0x4
	cld
	mov esi, [ebp-0x20]
	mov edi, _cstring_f14
	repe cmpsb
	mov eax, 0x0
	jz _Z21SE_GetString_FastFilePKc_240
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
_Z21SE_GetString_FastFilePKc_240:
	test eax, eax
	jnz _Z21SE_GetString_FastFilePKc_250
	mov eax, _cstring_f14
	jmp _Z21SE_GetString_FastFilePKc_80
_Z21SE_GetString_FastFilePKc_250:
	mov ecx, 0x4
	cld
	mov esi, [ebp-0x20]
	mov edi, _cstring_f15
	repe cmpsb
	mov eax, 0x0
	jz _Z21SE_GetString_FastFilePKc_260
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
_Z21SE_GetString_FastFilePKc_260:
	test eax, eax
	jnz _Z21SE_GetString_FastFilePKc_270
	mov eax, _cstring_f15
	jmp _Z21SE_GetString_FastFilePKc_80
_Z21SE_GetString_FastFilePKc_270:
	mov edi, _cstring_kp_home
	mov ecx, 0x8
	cld
	mov esi, [ebp-0x20]
	repe cmpsb
	mov edx, 0x0
	jz _Z21SE_GetString_FastFilePKc_280
	movzx edx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub edx, ecx
_Z21SE_GetString_FastFilePKc_280:
	test edx, edx
	jnz _Z21SE_GetString_FastFilePKc_290
	mov eax, [_ZZ21SE_GetString_FastFilePKcE9langIndex]
	mov eax, [eax*4+_ZZ21SE_GetString_FastFilePKcE1s_4]
	jmp _Z21SE_GetString_FastFilePKc_80
_Z21SE_GetString_FastFilePKc_290:
	mov edi, _cstring_kp_uparrow
	mov ecx, 0xb
	cld
	mov esi, [ebp-0x20]
	repe cmpsb
	mov edx, 0x0
	jz _Z21SE_GetString_FastFilePKc_300
	movzx edx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub edx, ecx
_Z21SE_GetString_FastFilePKc_300:
	test edx, edx
	jnz _Z21SE_GetString_FastFilePKc_310
	mov eax, [_ZZ21SE_GetString_FastFilePKcE9langIndex]
	mov eax, [eax*4+_ZZ21SE_GetString_FastFilePKcE1s_5]
	jmp _Z21SE_GetString_FastFilePKc_80
_Z21SE_GetString_FastFilePKc_310:
	mov edi, _cstring_kp_pgup
	mov ecx, 0x8
	cld
	mov esi, [ebp-0x20]
	repe cmpsb
	mov edx, 0x0
	jz _Z21SE_GetString_FastFilePKc_320
	movzx edx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub edx, ecx
_Z21SE_GetString_FastFilePKc_320:
	test edx, edx
	jnz _Z21SE_GetString_FastFilePKc_330
	mov eax, [_ZZ21SE_GetString_FastFilePKcE9langIndex]
	mov eax, [eax*4+_ZZ21SE_GetString_FastFilePKcE1s_6]
	jmp _Z21SE_GetString_FastFilePKc_80
_Z21SE_GetString_FastFilePKc_330:
	mov edi, _cstring_kp_leftarrow
	mov ecx, 0xd
	cld
	mov esi, [ebp-0x20]
	repe cmpsb
	mov edx, 0x0
	jz _Z21SE_GetString_FastFilePKc_340
	movzx edx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub edx, ecx
_Z21SE_GetString_FastFilePKc_340:
	test edx, edx
	jnz _Z21SE_GetString_FastFilePKc_350
	mov eax, [_ZZ21SE_GetString_FastFilePKcE9langIndex]
	mov eax, [eax*4+_ZZ21SE_GetString_FastFilePKcE1s_7]
	jmp _Z21SE_GetString_FastFilePKc_80
_Z21SE_GetString_FastFilePKc_350:
	mov edi, _cstring_kp_rightarrow
	mov ecx, 0xe
	cld
	mov esi, [ebp-0x20]
	repe cmpsb
	mov edx, 0x0
	jz _Z21SE_GetString_FastFilePKc_360
	movzx edx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub edx, ecx
_Z21SE_GetString_FastFilePKc_360:
	test edx, edx
	jnz _Z21SE_GetString_FastFilePKc_370
	mov eax, [_ZZ21SE_GetString_FastFilePKcE9langIndex]
	mov eax, [eax*4+_ZZ21SE_GetString_FastFilePKcE1s_8]
	jmp _Z21SE_GetString_FastFilePKc_80
_Z21SE_GetString_FastFilePKc_370:
	mov edi, _cstring_kp_end
	mov ecx, 0x7
	cld
	mov esi, [ebp-0x20]
	repe cmpsb
	mov edx, 0x0
	jz _Z21SE_GetString_FastFilePKc_380
	movzx edx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub edx, ecx
_Z21SE_GetString_FastFilePKc_380:
	test edx, edx
	jnz _Z21SE_GetString_FastFilePKc_390
	mov eax, [_ZZ21SE_GetString_FastFilePKcE9langIndex]
	mov eax, [eax*4+_ZZ21SE_GetString_FastFilePKcE1s_9]
	jmp _Z21SE_GetString_FastFilePKc_80
_Z21SE_GetString_FastFilePKc_390:
	mov edi, _cstring_kp_downarrow
	mov ecx, 0xd
	cld
	mov esi, [ebp-0x20]
	repe cmpsb
	mov edx, 0x0
	jz _Z21SE_GetString_FastFilePKc_400
	movzx edx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub edx, ecx
_Z21SE_GetString_FastFilePKc_400:
	test edx, edx
	jnz _Z21SE_GetString_FastFilePKc_410
	mov eax, [_ZZ21SE_GetString_FastFilePKcE9langIndex]
	mov eax, [eax*4+_ZZ21SE_GetString_FastFilePKcE1s_10]
	jmp _Z21SE_GetString_FastFilePKc_80
_Z21SE_GetString_FastFilePKc_410:
	mov edi, _cstring_kp_pgdn
	mov ecx, 0x8
	cld
	mov esi, [ebp-0x20]
	repe cmpsb
	mov edx, 0x0
	jz _Z21SE_GetString_FastFilePKc_420
	movzx edx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub edx, ecx
_Z21SE_GetString_FastFilePKc_420:
	test edx, edx
	jnz _Z21SE_GetString_FastFilePKc_430
	mov eax, [_ZZ21SE_GetString_FastFilePKcE9langIndex]
	mov eax, [eax*4+_ZZ21SE_GetString_FastFilePKcE1s_11]
	jmp _Z21SE_GetString_FastFilePKc_80
_Z21SE_GetString_FastFilePKc_430:
	mov edi, _cstring_kp_enter
	mov ecx, 0x9
	cld
	mov esi, [ebp-0x20]
	repe cmpsb
	mov edx, 0x0
	jz _Z21SE_GetString_FastFilePKc_440
	movzx edx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub edx, ecx
_Z21SE_GetString_FastFilePKc_440:
	test edx, edx
	jnz _Z21SE_GetString_FastFilePKc_450
	cmp dword [_ZZ21SE_GetString_FastFilePKcE9langIndex], 0x1
	jz _Z21SE_GetString_FastFilePKc_460
_Z21SE_GetString_FastFilePKc_490:
	mov eax, [_ZZ21SE_GetString_FastFilePKcE9langIndex]
	mov eax, [eax*4+_ZZ21SE_GetString_FastFilePKcE1s_12]
	jmp _Z21SE_GetString_FastFilePKc_80
_Z21SE_GetString_FastFilePKc_450:
	mov edi, _cstring_kp_ins
	mov ecx, 0x7
	cld
	mov esi, [ebp-0x20]
	repe cmpsb
	mov edx, 0x0
	jz _Z21SE_GetString_FastFilePKc_470
	movzx edx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub edx, ecx
_Z21SE_GetString_FastFilePKc_470:
	test edx, edx
	jnz _Z21SE_GetString_FastFilePKc_480
	mov eax, [_ZZ21SE_GetString_FastFilePKcE9langIndex]
	mov eax, [eax*4+_ZZ21SE_GetString_FastFilePKcE1s_13]
	jmp _Z21SE_GetString_FastFilePKc_80
_Z21SE_GetString_FastFilePKc_460:
	mov ecx, [_ZZ21SE_GetString_FastFilePKcE1s_12+0x4]
	test ecx, ecx
	jnz _Z21SE_GetString_FastFilePKc_490
	mov dword [esp], _cstring_entree_pn
	call strdup
	mov [_ZZ21SE_GetString_FastFilePKcE1s_12+0x4], eax
	mov eax, [_ZZ21SE_GetString_FastFilePKcE9langIndex]
	mov eax, [eax*4+_ZZ21SE_GetString_FastFilePKcE1s_12]
	mov byte [eax+0x4], 0xe9
	jmp _Z21SE_GetString_FastFilePKc_490
_Z21SE_GetString_FastFilePKc_480:
	mov edi, _cstring_kp_del
	mov ecx, 0x7
	cld
	mov esi, [ebp-0x20]
	repe cmpsb
	mov edx, 0x0
	jz _Z21SE_GetString_FastFilePKc_500
	movzx edx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub edx, ecx
_Z21SE_GetString_FastFilePKc_500:
	test edx, edx
	jnz _Z21SE_GetString_FastFilePKc_510
	mov eax, [_ZZ21SE_GetString_FastFilePKcE9langIndex]
	mov eax, [eax*4+_ZZ21SE_GetString_FastFilePKcE1s_14]
	jmp _Z21SE_GetString_FastFilePKc_80
_Z21SE_GetString_FastFilePKc_510:
	mov edi, _cstring_kp_numlock
	mov ecx, 0xb
	cld
	mov esi, [ebp-0x20]
	repe cmpsb
	mov edx, 0x0
	jz _Z21SE_GetString_FastFilePKc_520
	movzx edx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub edx, ecx
_Z21SE_GetString_FastFilePKc_520:
	test edx, edx
	jnz _Z21SE_GetString_FastFilePKc_170
	mov eax, [_ZZ21SE_GetString_FastFilePKcE9langIndex]
	mov eax, [eax*4+_ZZ21SE_GetString_FastFilePKcE1s_15]
	jmp _Z21SE_GetString_FastFilePKc_80


;SEH_StringEd_SetLanguageStrings(int)
_Z31SEH_StringEd_SetLanguageStringsi:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, eax
	mov eax, [eax*8+g_languages+0x4]
	test eax, eax
	jnz _Z31SEH_StringEd_SetLanguageStringsi_10
	xor eax, eax
_Z31SEH_StringEd_SetLanguageStringsi_50:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z31SEH_StringEd_SetLanguageStringsi_10:
	mov eax, [loc_forceEnglish]
	movzx eax, byte [eax+0xc]
	mov [esp], eax
	call _Z15SE_LoadLanguageh
	mov edx, eax
	test eax, eax
	jz _Z31SEH_StringEd_SetLanguageStringsi_20
	mov eax, fs_ignoreLocalized
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z31SEH_StringEd_SetLanguageStringsi_20
	mov eax, [loc_warnings]
	cmp byte [eax+0xc], 0x0
	jz _Z31SEH_StringEd_SetLanguageStringsi_20
	mov eax, [loc_warningsAsErrors]
	cmp byte [eax+0xc], 0x0
	jz _Z31SEH_StringEd_SetLanguageStringsi_30
	cmp ebx, 0xe
	jbe _Z31SEH_StringEd_SetLanguageStringsi_40
	mov eax, [g_languages]
_Z31SEH_StringEd_SetLanguageStringsi_80:
	mov [esp+0xc], edx
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_could_not_load_l
	mov dword [esp], 0x7
	call _Z9Com_Error11errorParm_tPKcz
	mov eax, 0x1
	jmp _Z31SEH_StringEd_SetLanguageStringsi_50
_Z31SEH_StringEd_SetLanguageStringsi_20:
	mov eax, 0x1
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z31SEH_StringEd_SetLanguageStringsi_30:
	cmp ebx, 0xe
	jbe _Z31SEH_StringEd_SetLanguageStringsi_60
	mov eax, [g_languages]
_Z31SEH_StringEd_SetLanguageStringsi_70:
	mov [esp+0xc], edx
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_warning_could_no
	mov dword [esp], 0x10
	call _Z16Com_PrintWarningiPKcz
	mov eax, 0x1
	jmp _Z31SEH_StringEd_SetLanguageStringsi_50
_Z31SEH_StringEd_SetLanguageStringsi_60:
	mov eax, [ebx*8+g_languages]
	jmp _Z31SEH_StringEd_SetLanguageStringsi_70
_Z31SEH_StringEd_SetLanguageStringsi_40:
	mov eax, [ebx*8+g_languages]
	jmp _Z31SEH_StringEd_SetLanguageStringsi_80


;SEH_PrintStrlen(char const*)
_Z15SEH_PrintStrlenPKc:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x20
	mov eax, [ebp+0x8]
	test eax, eax
	jz _Z15SEH_PrintStrlenPKc_10
	mov ebx, eax
	xor esi, esi
	movzx edx, byte [eax]
_Z15SEH_PrintStrlenPKc_60:
	test dl, dl
	jz _Z15SEH_PrintStrlenPKc_20
_Z15SEH_PrintStrlenPKc_50:
	mov dword [esp+0xc], 0x0
	lea eax, [ebp-0xc]
	mov [esp+0x8], eax
	movzx eax, byte [ebx+0x1]
	mov [esp+0x4], eax
	movzx eax, dl
	mov [esp], eax
	call _Z16SEH_DecodeLetterjjPiS_
	add ebx, [ebp-0xc]
	cmp eax, 0x5e
	jz _Z15SEH_PrintStrlenPKc_30
	cmp eax, 0xa
	jz _Z15SEH_PrintStrlenPKc_40
	cmp eax, 0xd
	jz _Z15SEH_PrintStrlenPKc_40
	movzx edx, byte [ebx]
_Z15SEH_PrintStrlenPKc_80:
	add esi, 0x1
_Z15SEH_PrintStrlenPKc_90:
	test dl, dl
	jnz _Z15SEH_PrintStrlenPKc_50
_Z15SEH_PrintStrlenPKc_20:
	mov eax, esi
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
_Z15SEH_PrintStrlenPKc_40:
	movzx edx, byte [ebx]
	jmp _Z15SEH_PrintStrlenPKc_60
_Z15SEH_PrintStrlenPKc_30:
	test ebx, ebx
	jz _Z15SEH_PrintStrlenPKc_70
	movzx edx, byte [ebx]
	cmp dl, 0x5e
	jz _Z15SEH_PrintStrlenPKc_80
	cmp dl, 0x2f
	jle _Z15SEH_PrintStrlenPKc_80
	cmp dl, 0x39
	jg _Z15SEH_PrintStrlenPKc_80
	add ebx, 0x1
	movzx edx, byte [ebx]
	jmp _Z15SEH_PrintStrlenPKc_60
_Z15SEH_PrintStrlenPKc_70:
	movzx edx, byte [0x0]
	add esi, 0x1
	jmp _Z15SEH_PrintStrlenPKc_90
_Z15SEH_PrintStrlenPKc_10:
	xor esi, esi
	mov eax, esi
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;SEH_DecodeLetter(unsigned int, unsigned int, int*, int*)
_Z16SEH_DecodeLetterjjPiS_:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov esi, [ebp+0x14]
	movzx edx, byte [ebp+0x8]
	movzx ecx, byte [ebp+0xc]
	mov eax, [g_currentAsian]
	test eax, eax
	jz _Z16SEH_DecodeLetterjjPiS__10
	mov eax, [loc_language]
	mov eax, [eax+0xc]
	cmp eax, 0x9
	jz _Z16SEH_DecodeLetterjjPiS__20
	jle _Z16SEH_DecodeLetterjjPiS__30
	cmp eax, 0xa
	jz _Z16SEH_DecodeLetterjjPiS__40
	cmp eax, 0xb
	jz _Z16SEH_DecodeLetterjjPiS__50
_Z16SEH_DecodeLetterjjPiS__10:
	mov eax, [ebp+0x10]
	mov dword [eax], 0x1
	test esi, esi
	jz _Z16SEH_DecodeLetterjjPiS__60
	cmp edx, 0x21
	jz _Z16SEH_DecodeLetterjjPiS__70
	cmp edx, 0x3f
	jz _Z16SEH_DecodeLetterjjPiS__70
	cmp edx, 0x2c
	jz _Z16SEH_DecodeLetterjjPiS__70
	cmp edx, 0x2e
	jz _Z16SEH_DecodeLetterjjPiS__70
	cmp edx, 0x3b
	jz _Z16SEH_DecodeLetterjjPiS__70
	cmp edx, 0x3a
	jz _Z16SEH_DecodeLetterjjPiS__70
	xor eax, eax
	mov [esi], eax
_Z16SEH_DecodeLetterjjPiS__60:
	mov ecx, edx
_Z16SEH_DecodeLetterjjPiS__90:
	mov eax, ecx
	pop ebx
	pop esi
	pop ebp
	ret
_Z16SEH_DecodeLetterjjPiS__70:
	mov eax, 0x1
	mov [esi], eax
	jmp _Z16SEH_DecodeLetterjjPiS__60
_Z16SEH_DecodeLetterjjPiS__30:
	cmp eax, 0x8
	jnz _Z16SEH_DecodeLetterjjPiS__10
	lea eax, [edx-0xb0]
	cmp eax, 0x18
	jbe _Z16SEH_DecodeLetterjjPiS__80
_Z16SEH_DecodeLetterjjPiS__160:
	xor eax, eax
_Z16SEH_DecodeLetterjjPiS__170:
	test eax, eax
	jz _Z16SEH_DecodeLetterjjPiS__10
	shl edx, 0x8
	add ecx, edx
	mov eax, [ebp+0x10]
	mov dword [eax], 0x2
	test esi, esi
	jz _Z16SEH_DecodeLetterjjPiS__90
	mov dword [esi], 0x0
	jmp _Z16SEH_DecodeLetterjjPiS__90
_Z16SEH_DecodeLetterjjPiS__20:
	mov eax, edx
	shl eax, 0x8
	add ecx, eax
	mov ebx, ecx
	shr ebx, 0x8
	lea eax, [ebx+0x5f]
	cmp al, 0x25
	jbe _Z16SEH_DecodeLetterjjPiS__100
	lea eax, [ebx+0x37]
	cmp al, 0x30
	ja _Z16SEH_DecodeLetterjjPiS__10
_Z16SEH_DecodeLetterjjPiS__100:
	mov ebx, ecx
	lea eax, [ebx-0x40]
	cmp al, 0x3e
	jbe _Z16SEH_DecodeLetterjjPiS__110
	lea eax, [ebx+0x5f]
	cmp al, 0x5d
	ja _Z16SEH_DecodeLetterjjPiS__10
_Z16SEH_DecodeLetterjjPiS__110:
	mov eax, [ebp+0x10]
	mov dword [eax], 0x2
	test esi, esi
	jz _Z16SEH_DecodeLetterjjPiS__90
	lea eax, [ecx-0xa140]
	cmp eax, 0x13
	setbe al
	and eax, 0x1
	mov [esi], eax
	jmp _Z16SEH_DecodeLetterjjPiS__90
_Z16SEH_DecodeLetterjjPiS__40:
	lea eax, [edx-0x81]
	cmp eax, 0x1e
	ja _Z16SEH_DecodeLetterjjPiS__120
_Z16SEH_DecodeLetterjjPiS__150:
	lea eax, [ecx-0x40]
	cmp eax, 0x3e
	jbe _Z16SEH_DecodeLetterjjPiS__130
	lea eax, [ecx-0x80]
	cmp eax, 0x7c
	ja _Z16SEH_DecodeLetterjjPiS__10
_Z16SEH_DecodeLetterjjPiS__130:
	shl edx, 0x8
	add ecx, edx
	mov eax, [ebp+0x10]
	mov dword [eax], 0x2
	test esi, esi
	jz _Z16SEH_DecodeLetterjjPiS__90
	lea eax, [ecx-0x8140]
	cmp eax, 0x11
	setbe al
	and eax, 0x1
	mov [esi], eax
	jmp _Z16SEH_DecodeLetterjjPiS__90
_Z16SEH_DecodeLetterjjPiS__50:
	mov eax, edx
	shl eax, 0x8
	add ecx, eax
	mov ebx, ecx
	movzx eax, ch
	add al, 0x7f
	cmp al, 0x7d
	ja _Z16SEH_DecodeLetterjjPiS__140
	cmp cl, 0x40
	jbe _Z16SEH_DecodeLetterjjPiS__140
	add bl, 0x1
	jz _Z16SEH_DecodeLetterjjPiS__140
	mov eax, 0x1
_Z16SEH_DecodeLetterjjPiS__180:
	test eax, eax
	jz _Z16SEH_DecodeLetterjjPiS__10
	mov eax, [ebp+0x10]
	mov dword [eax], 0x2
	test esi, esi
	jz _Z16SEH_DecodeLetterjjPiS__90
	lea eax, [ecx-0x8141]
	cmp eax, 0xc
	setbe al
	movzx eax, al
	mov [esi], eax
	jmp _Z16SEH_DecodeLetterjjPiS__90
_Z16SEH_DecodeLetterjjPiS__120:
	lea eax, [edx-0xe0]
	cmp eax, 0xf
	ja _Z16SEH_DecodeLetterjjPiS__10
	jmp _Z16SEH_DecodeLetterjjPiS__150
_Z16SEH_DecodeLetterjjPiS__80:
	cmp ecx, 0xa0
	jbe _Z16SEH_DecodeLetterjjPiS__160
	cmp ecx, 0xfe
	ja _Z16SEH_DecodeLetterjjPiS__160
	mov eax, 0x1
	jmp _Z16SEH_DecodeLetterjjPiS__170
_Z16SEH_DecodeLetterjjPiS__140:
	xor eax, eax
	jmp _Z16SEH_DecodeLetterjjPiS__180


;SEH_InitLanguage()
_Z16SEH_InitLanguagev:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	mov dword [esp+0x14], _cstring_language
	mov dword [esp+0x10], 0x21
	mov dword [esp+0xc], 0xe
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_loc_language
	call _Z16Dvar_RegisterIntPKciiitS0_
	mov [loc_language], eax
	mov dword [esp+0xc], _cstring_force_english_lo
	mov dword [esp+0x8], 0x21
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_loc_forceenglish
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [loc_forceEnglish], eax
	mov dword [esp+0xc], _cstring_enable_translati
	mov dword [esp+0x8], 0x20
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_loc_translate
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [loc_translate], eax
	mov dword [esp+0xc], _cstring_enable_localizat
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_loc_warnings
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [loc_warnings], eax
	mov dword [esp+0xc], _cstring_throw_an_error_f
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_loc_warningsaser
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [loc_warningsAsErrors], eax
	mov eax, [loc_language]
	mov eax, [eax+0xc]
	sub eax, 0x8
	cmp eax, 0x4
	setbe al
	movzx eax, al
	mov [g_currentAsian], eax
	leave
	ret
	add [eax], al


;SEH_Init_StringEd()
_Z17SEH_Init_StringEdv:
	push ebp
	mov ebp, esp
	pop ebp
	jmp _Z7SE_Initv
	nop


;SEH_GetLanguageName(int)
_Z19SEH_GetLanguageNamei:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	cmp eax, 0xe
	jbe _Z19SEH_GetLanguageNamei_10
	mov eax, [g_languages]
	pop ebp
	ret
_Z19SEH_GetLanguageNamei_10:
	mov eax, [eax*8+g_languages]
	pop ebp
	ret
	nop


;SEH_Shutdown_StringEd()
_Z21SEH_Shutdown_StringEdv:
	push ebp
	mov ebp, esp
	pop ebp
	jmp _Z11SE_ShutDownv
	nop


;SEH_GetCurrentLanguage()
_Z22SEH_GetCurrentLanguagev:
	push ebp
	mov ebp, esp
	mov eax, [loc_language]
	mov eax, [eax+0xc]
	pop ebp
	ret
	nop


;SEH_ReadCharFromString(char const**, int*)
_Z22SEH_ReadCharFromStringPPKcPi:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov ebx, [ebp+0x8]
	mov edx, [ebx]
	mov eax, [ebp+0xc]
	mov [esp+0xc], eax
	lea eax, [ebp-0xc]
	mov [esp+0x8], eax
	movzx eax, byte [edx+0x1]
	mov [esp+0x4], eax
	movzx eax, byte [edx]
	mov [esp], eax
	call _Z16SEH_DecodeLetterjjPiS_
	mov edx, [ebx]
	add edx, [ebp-0xc]
	mov [ebx], edx
	add esp, 0x24
	pop ebx
	pop ebp
	ret


;SEH_StringEd_GetString(char const*)
_Z22SEH_StringEd_GetStringPKc:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	mov eax, [loc_translate]
	test eax, eax
	jz _Z22SEH_StringEd_GetStringPKc_10
	cmp byte [eax+0xc], 0x0
	jz _Z22SEH_StringEd_GetStringPKc_10
	cmp byte [edx], 0x0
	jz _Z22SEH_StringEd_GetStringPKc_10
	cmp byte [edx+0x1], 0x0
	jz _Z22SEH_StringEd_GetStringPKc_10
	mov eax, useFastFile
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z22SEH_StringEd_GetStringPKc_20
	mov ecx, _Z21SE_GetString_FastFilePKc
	mov [ebp+0x8], edx
	pop ebp
	jmp ecx
_Z22SEH_StringEd_GetStringPKc_10:
	mov eax, edx
	pop ebp
	ret
_Z22SEH_StringEd_GetStringPKc_20:
	mov ecx, _Z20SE_GetString_LoadObjPKc
	mov [ebp+0x8], edx
	pop ebp
	jmp ecx


;SEH_UpdateLanguageInfo()
_Z22SEH_UpdateLanguageInfov:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov dword [esp+0x14], _cstring_language
	mov dword [esp+0x10], 0x21
	mov dword [esp+0xc], 0xe
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov eax, [loc_language]
	mov eax, [eax]
	mov [esp], eax
	call _Z16Dvar_RegisterIntPKciiitS0_
	mov dword [esp+0xc], _cstring_force_english_la
	mov dword [esp+0x8], 0x21
	mov dword [esp+0x4], 0x0
	mov eax, [loc_forceEnglish]
	mov eax, [eax]
	mov [esp], eax
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov eax, [loc_language]
	mov eax, [eax+0xc]
	sub eax, 0x8
	cmp eax, 0x4
	setbe al
	movzx eax, al
	mov [g_currentAsian], eax
	xor edi, edi
	xor ebx, ebx
	mov esi, g_languages
	jmp _Z22SEH_UpdateLanguageInfov_10
_Z22SEH_UpdateLanguageInfov_30:
	mov dword [esi+0x4], 0x1
	add edi, 0x1
	add ebx, 0x1
	add esi, 0x8
	cmp ebx, 0xf
	jz _Z22SEH_UpdateLanguageInfov_20
_Z22SEH_UpdateLanguageInfov_10:
	mov [esp], ebx
	call _Z20FS_LanguageHasAssetsi
	test eax, eax
	jnz _Z22SEH_UpdateLanguageInfov_30
	mov dword [esi+0x4], 0x0
	add ebx, 0x1
	add esi, 0x8
	cmp ebx, 0xf
	jnz _Z22SEH_UpdateLanguageInfov_10
_Z22SEH_UpdateLanguageInfov_20:
	test edi, edi
	jle _Z22SEH_UpdateLanguageInfov_40
_Z22SEH_UpdateLanguageInfov_80:
	mov eax, [loc_language]
	mov eax, [eax+0xc]
	call _Z31SEH_StringEd_SetLanguageStringsi
	test eax, eax
	jz _Z22SEH_UpdateLanguageInfov_50
_Z22SEH_UpdateLanguageInfov_60:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z22SEH_UpdateLanguageInfov_50:
	xor ebx, ebx
_Z22SEH_UpdateLanguageInfov_70:
	mov [esp+0x4], ebx
	mov eax, [loc_language]
	mov [esp], eax
	call _Z11Dvar_SetIntPK6dvar_si
	mov eax, [loc_language]
	mov eax, [eax+0xc]
	sub eax, 0x8
	cmp eax, 0x4
	setbe al
	movzx eax, al
	mov [g_currentAsian], eax
	mov eax, ebx
	call _Z31SEH_StringEd_SetLanguageStringsi
	test eax, eax
	jnz _Z22SEH_UpdateLanguageInfov_60
	add ebx, 0x1
	cmp ebx, 0xf
	jnz _Z22SEH_UpdateLanguageInfov_70
	mov dword [esp+0x4], 0x0
	mov eax, [loc_language]
	mov [esp], eax
	call _Z11Dvar_SetIntPK6dvar_si
	mov eax, [loc_language]
	mov eax, [eax+0xc]
	sub eax, 0x8
	cmp eax, 0x4
	setbe al
	movzx eax, al
	mov [g_currentAsian], eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z22SEH_UpdateLanguageInfov_40:
	mov dword [esp+0x4], _cstring_error_no_languag
	mov dword [esp], 0x10
	call _Z14Com_PrintErroriPKcz
	jmp _Z22SEH_UpdateLanguageInfov_80
	nop
	add [eax], al


;SEH_LocalizeTextMessage(char const*, char const*, msgLocErrType_t)
_Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x86c
	mov ebx, [_ZZ23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_tE11iCurrString]
	add ebx, 0x1
	mov edx, 0x66666667
	mov eax, ebx
	imul edx
	sar edx, 0x2
	mov ecx, ebx
	sar ecx, 0x1f
	sub edx, ecx
	lea edx, [edx+edx*4]
	add edx, edx
	mov eax, ebx
	sub eax, edx
	mov [_ZZ23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_tE11iCurrString], eax
	shl eax, 0xa
	add eax, _ZZ23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_tE9szStrings
	mov dword [esp+0x8], 0x400
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call memset
	mov eax, [_ZZ23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_tE11iCurrString]
	shl eax, 0xa
	add eax, _ZZ23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_tE9szStrings
	mov [ebp-0x844], eax
	mov edx, [ebp+0x8]
	mov [ebp-0x840], edx
	mov dword [ebp-0x820], 0x0
	mov dword [ebp-0x83c], 0x1
	mov ebx, 0x1
	mov dword [ebp-0x838], 0x0
	mov dword [ebp-0x830], 0x1
	mov dword [ebp-0x834], 0x0
_Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_110:
	cmp byte [edx], 0x0
	jz _Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_10
_Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_30:
	mov ecx, [ebp-0x840]
	movzx eax, byte [ecx]
	test al, al
	jz _Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_20
	cmp al, 0x14
	jz _Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_20
	cmp al, 0x15
	jz _Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_20
	cmp al, 0x16
	jz _Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_20
	add dword [ebp-0x840], 0x1
	cmp byte [edx], 0x0
	jnz _Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_30
_Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_10:
	mov eax, [ebp-0x834]
	test eax, eax
	jz _Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_40
	mov eax, [ebp-0x820]
	test eax, eax
	jle _Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_40
	xor edx, edx
	jmp _Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_50
_Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_60:
	add edx, 0x1
	cmp edx, [ebp-0x820]
	jz _Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_40
_Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_50:
	mov eax, [ebp-0x844]
	add eax, edx
	cmp byte [eax], 0x16
	jnz _Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_60
	mov byte [eax], 0x25
	add edx, 0x1
	cmp edx, [ebp-0x820]
	jnz _Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_50
_Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_40:
	mov eax, [ebp-0x844]
_Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_430:
	add esp, 0x86c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_20:
	cmp edx, [ebp-0x840]
	jb _Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_70
_Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_270:
	cmp al, 0x14
	jz _Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_80
_Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_190:
	cmp al, 0x15
	jz _Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_90
_Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_210:
	mov eax, [ebp-0x840]
	cmp byte [eax], 0x16
	jz _Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_100
_Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_200:
	mov edx, eax
	mov ebx, 0x1
	jmp _Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_110
_Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_70:
	mov eax, [ebp-0x840]
	sub eax, edx
	mov [ebp-0x848], eax
	add eax, 0x1
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	lea edx, [ebp-0x418]
	mov [esp], edx
	call _Z10I_strncpyzPcPKci
	mov edx, [ebp-0x83c]
	test edx, edx
	jnz _Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_120
	mov edx, [ebp-0x848]
_Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_360:
	add edx, [ebp-0x820]
	mov [ebp-0x84c], edx
	cmp edx, 0x3ff
	jle _Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_130
	mov eax, [loc_warnings]
	test eax, eax
	jz _Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_140
	cmp byte [eax+0xc], 0x0
	jz _Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_140
	mov eax, [loc_warningsAsErrors]
	test eax, eax
	jz _Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_140
	cmp byte [eax+0xc], 0x0
	jnz _Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_150
_Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_140:
	mov edx, [ebp+0x8]
	mov [esp+0xc], edx
	mov ecx, [ebp+0xc]
	mov [esp+0x8], ecx
	mov dword [esp+0x4], _cstring_s_too_long_when_
	mov dword [esp], 0x10
	call _Z10Com_PrintfiPKcz
_Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_130:
	mov eax, [ebp-0x848]
	sub eax, 0x2
	mov [ebp-0x854], eax
	test eax, eax
	jg _Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_160
_Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_240:
	mov eax, [ebp-0x838]
	test eax, eax
	jle _Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_170
	mov eax, [ebp-0x820]
	test eax, eax
	jle _Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_170
	mov edx, [ebp-0x820]
	sub edx, 0x2
	mov [ebp-0x82c], edx
	test edx, edx
	jg _Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_180
	mov edx, [ebp-0x844]
	mov [ebp-0x81c], edx
	mov dword [ebp-0x82c], 0x0
	lea edi, [ebp-0x818]
	mov ecx, edx
_Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_330:
	lea edx, [ebp-0x418]
	mov [esp+0x4], edx
	mov [esp], ecx
	call strcpy
	mov [esp+0x4], edi
	mov eax, [ebp-0x848]
	add eax, [ebp-0x82c]
	add eax, [ebp-0x844]
	mov [esp], eax
	call strcpy
	sub dword [ebp-0x838], 0x1
	mov eax, [ebp-0x820]
	mov edx, [ebp-0x848]
	lea eax, [eax+edx-0x3]
	mov [ebp-0x820], eax
	mov ecx, [ebp-0x840]
	movzx eax, byte [ecx]
	cmp al, 0x14
	jnz _Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_190
_Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_80:
	add dword [ebp-0x840], 0x1
	mov dword [ebp-0x83c], 0x1
	mov eax, [ebp-0x840]
	cmp byte [eax], 0x16
	jnz _Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_200
_Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_100:
	add dword [ebp-0x840], 0x1
	mov edx, [ebp-0x840]
	xor ebx, ebx
	jmp _Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_110
_Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_90:
	add dword [ebp-0x840], 0x1
	mov dword [ebp-0x83c], 0x0
	jmp _Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_210
_Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_160:
	test ebx, ebx
	jz _Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_220
	mov dword [ebp-0x824], 0x0
	cld
	lea ebx, [ebp-0x418]
	jmp _Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_230
_Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_260:
	add dword [ebp-0x824], 0x1
	add ebx, 0x1
	mov ecx, [ebp-0x824]
	cmp [ebp-0x854], ecx
	jz _Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_240
_Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_230:
	mov ecx, 0x2
	mov esi, ebx
	mov edi, _cstring_
	repe cmpsb
	mov eax, 0x0
	jz _Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_250
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
_Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_250:
	test eax, eax
	jnz _Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_260
	movsx eax, byte [ebx+0x2]
	cmp eax, 0xff
	ja _Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_260
	mov edx, [0xd5cc084]
	test byte [edx+eax*4+0x35], 0x4
	jz _Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_260
	add dword [ebp-0x838], 0x1
	jmp _Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_260
_Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_170:
	lea eax, [ebp-0x418]
	mov [esp+0x4], eax
	mov eax, [ebp-0x844]
	add eax, [ebp-0x820]
	mov [esp], eax
	call strcpy
	mov edx, [ebp-0x84c]
	mov [ebp-0x820], edx
	mov ecx, [ebp-0x840]
	movzx eax, byte [ecx]
	jmp _Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_270
_Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_180:
	mov ebx, [ebp-0x844]
	mov dword [ebp-0x828], 0x0
_Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_320:
	mov [ebp-0x81c], ebx
	mov ecx, 0x2
	cld
	mov esi, ebx
	mov edi, _cstring_
	repe cmpsb
	mov eax, 0x0
	jz _Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_280
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
_Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_280:
	test eax, eax
	jnz _Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_290
	movsx esi, byte [ebx+0x2]
	cmp esi, 0xff
	ja _Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_290
	mov eax, [0xd5cc084]
	test byte [eax+esi*4+0x35], 0x4
	jz _Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_290
	mov edi, esi
	sub edi, 0x30
	jz _Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_300
_Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_370:
	cmp [ebp-0x830], edi
	jz _Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_310
_Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_290:
	add dword [ebp-0x828], 0x1
	add ebx, 0x1
	mov ecx, [ebp-0x828]
	cmp [ebp-0x82c], ecx
	jnz _Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_320
	mov eax, [ebp-0x844]
	add eax, ecx
	mov [ebp-0x81c], eax
	lea edi, [ebp-0x818]
	mov ecx, eax
	jmp _Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_330
_Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_150:
	cmp dword [ebp+0x10], 0x1
	jz _Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_140
	mov ecx, [ebp+0x8]
	mov [esp+0xc], ecx
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_s_too_long_when_1
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_140
_Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_120:
	mov eax, [loc_translate]
	test eax, eax
	jz _Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_340
	cmp byte [eax+0xc], 0x0
	jz _Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_340
	cmp byte [ebp-0x418], 0x0
	jnz _Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_350
_Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_340:
	lea eax, [ebp-0x418]
_Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_390:
	mov [esp+0x4], eax
	lea eax, [ebp-0x418]
	mov [esp], eax
	call strcpy
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	lea edi, [ebp-0x418]
	repne scasb
	not ecx
	sub ecx, 0x1
	mov [ebp-0x848], ecx
	mov edx, ecx
	jmp _Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_360
_Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_300:
	mov eax, [ebp+0x8]
	mov [esp+0xc], eax
	mov edx, [ebp+0xc]
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_s_cannot_have_0_
	mov dword [esp], 0x10
	call _Z10Com_PrintfiPKcz
	jmp _Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_370
_Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_350:
	cmp byte [ebp-0x417], 0x0
	jz _Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_340
	mov eax, useFastFile
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_380
	mov eax, _Z21SE_GetString_FastFilePKc
_Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_440:
	lea ecx, [ebp-0x418]
	mov [esp], ecx
	call eax
	test eax, eax
	jnz _Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_390
	mov eax, [loc_warnings]
	test eax, eax
	jz _Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_400
	cmp byte [eax+0xc], 0x0
	jz _Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_400
	mov eax, [loc_warningsAsErrors]
	test eax, eax
	jz _Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_410
	cmp byte [eax+0xc], 0x0
	jz _Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_410
	cmp dword [ebp+0x10], 0x1
	jnz _Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_420
_Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_410:
	lea ecx, [ebp-0x418]
	mov [esp+0xc], ecx
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_warning_could_no1
	mov dword [esp], 0x10
	call _Z16Com_PrintWarningiPKcz
_Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_460:
	lea edx, [ebp-0x418]
	mov [esp+0x4], edx
	mov dword [esp], _cstring_1unlocalized7s17
	call _Z2vaPKcz
_Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_450:
	cmp dword [ebp+0x10], 0x1
	jnz _Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_390
	xor eax, eax
	jmp _Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_430
_Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_310:
	lea eax, [ebx+0x3]
	mov [esp+0x4], eax
	lea edi, [ebp-0x818]
	mov [esp], edi
	call strcpy
	mov byte [ebx], 0x0
	sub esi, 0x2f
	mov [ebp-0x830], esi
	mov ecx, [ebp-0x828]
	mov [ebp-0x82c], ecx
	mov ecx, [ebp-0x81c]
	jmp _Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_330
_Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_380:
	mov eax, _Z20SE_GetString_LoadObjPKc
	jmp _Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_440
_Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_400:
	lea ecx, [ebp-0x418]
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_s
	call _Z2vaPKcz
	jmp _Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_450
_Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_420:
	lea eax, [ebp-0x418]
	mov [esp+0xc], eax
	mov edx, [ebp+0xc]
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_could_not_transl
	mov dword [esp], 0x7
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_460
_Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_220:
	mov dword [ebp-0x850], 0x0
	cld
	lea edx, [ebp-0x418]
	mov [ebp-0x85c], edx
_Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_490:
	mov ebx, 0x2
	mov esi, [ebp-0x85c]
	mov edi, _cstring_
	mov ecx, ebx
	repe cmpsb
	mov eax, 0x0
	jz _Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_470
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
_Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_470:
	test eax, eax
	jnz _Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_480
	mov edx, [ebp-0x85c]
	movsx eax, byte [edx+0x2]
	cmp eax, 0xff
	ja _Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_480
	mov ecx, [0xd5cc084]
	test byte [ecx+eax*4+0x35], 0x4
	jz _Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_480
	mov byte [edx], 0x16
	mov dword [ebp-0x834], 0x1
_Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_480:
	add dword [ebp-0x850], 0x1
	add dword [ebp-0x85c], 0x1
	mov eax, [ebp-0x854]
	cmp [ebp-0x850], eax
	jnz _Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_490
	jmp _Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t_240


;SEH_SafeTranslateString(char const*)
_Z23SEH_SafeTranslateStringPKc:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov eax, [loc_translate]
	test eax, eax
	jz _Z23SEH_SafeTranslateStringPKc_10
	cmp byte [eax+0xc], 0x0
	jnz _Z23SEH_SafeTranslateStringPKc_20
_Z23SEH_SafeTranslateStringPKc_10:
	mov eax, ebx
	test eax, eax
	jz _Z23SEH_SafeTranslateStringPKc_30
_Z23SEH_SafeTranslateStringPKc_60:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z23SEH_SafeTranslateStringPKc_20:
	cmp byte [ebx], 0x0
	jz _Z23SEH_SafeTranslateStringPKc_40
	cmp byte [ebx+0x1], 0x0
	jz _Z23SEH_SafeTranslateStringPKc_40
	mov eax, useFastFile
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z23SEH_SafeTranslateStringPKc_50
	mov eax, _Z21SE_GetString_FastFilePKc
	mov [esp], ebx
	call eax
_Z23SEH_SafeTranslateStringPKc_90:
	test eax, eax
	jnz _Z23SEH_SafeTranslateStringPKc_60
_Z23SEH_SafeTranslateStringPKc_30:
	mov eax, [loc_warnings]
	cmp byte [eax+0xc], 0x0
	jz _Z23SEH_SafeTranslateStringPKc_70
	mov eax, [loc_warningsAsErrors]
	cmp byte [eax+0xc], 0x0
	jz _Z23SEH_SafeTranslateStringPKc_80
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_could_not_transl1
	mov dword [esp], 0x7
	call _Z9Com_Error11errorParm_tPKcz
_Z23SEH_SafeTranslateStringPKc_100:
	mov dword [_ZZ23SEH_SafeTranslateStringPKcE13szErrorString], 0x4e55315e
	mov dword [_ZZ23SEH_SafeTranslateStringPKcE13szErrorString+0x4], 0x41434f4c
	mov dword [_ZZ23SEH_SafeTranslateStringPKcE13szErrorString+0x8], 0x455a494c
	mov dword [_ZZ23SEH_SafeTranslateStringPKcE13szErrorString+0xc], 0x375e2844
	mov byte [_ZZ23SEH_SafeTranslateStringPKcE13szErrorString+0x10], 0x0
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x400
	mov dword [esp], _ZZ23SEH_SafeTranslateStringPKcE13szErrorString
	call _Z9I_strncatPciPKc
	mov dword [esp+0x8], _cstring_17
	mov dword [esp+0x4], 0x400
	mov dword [esp], _ZZ23SEH_SafeTranslateStringPKcE13szErrorString
	call _Z9I_strncatPciPKc
	mov eax, _ZZ23SEH_SafeTranslateStringPKcE13szErrorString
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z23SEH_SafeTranslateStringPKc_40:
	mov eax, ebx
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z23SEH_SafeTranslateStringPKc_70:
	mov dword [esp+0x8], 0x400
	mov [esp+0x4], ebx
	mov dword [esp], _ZZ23SEH_SafeTranslateStringPKcE13szErrorString
	call _Z10I_strncpyzPcPKci
	mov eax, _ZZ23SEH_SafeTranslateStringPKcE13szErrorString
	jmp _Z23SEH_SafeTranslateStringPKc_60
_Z23SEH_SafeTranslateStringPKc_50:
	mov eax, _Z20SE_GetString_LoadObjPKc
	mov [esp], ebx
	call eax
	jmp _Z23SEH_SafeTranslateStringPKc_90
_Z23SEH_SafeTranslateStringPKc_80:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_warning_could_no2
	mov dword [esp], 0x10
	call _Z16Com_PrintWarningiPKcz
	jmp _Z23SEH_SafeTranslateStringPKc_100
	nop


;SEH_GetLanguageIndexForName(char const*, int*)
_Z27SEH_GetLanguageIndexForNamePKcPi:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0x8]
	xor esi, esi
	mov ebx, g_languages
_Z27SEH_GetLanguageIndexForNamePKcPi_20:
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z27SEH_GetLanguageIndexForNamePKcPi_10
	add esi, 0x1
	add ebx, 0x8
	cmp esi, 0xf
	jnz _Z27SEH_GetLanguageIndexForNamePKcPi_20
	mov eax, [ebp+0xc]
	mov dword [eax], 0x0
	xor eax, eax
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z27SEH_GetLanguageIndexForNamePKcPi_10:
	mov eax, [ebp+0xc]
	mov [eax], esi
	mov eax, 0x1
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;SEH_VerifyLanguageSelection(int)
_Z27SEH_VerifyLanguageSelectioni:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	mov esi, [ebp+0x8]
	mov edx, [esi*8+g_languages+0x4]
	test edx, edx
	jnz _Z27SEH_VerifyLanguageSelectioni_10
	xor ebx, ebx
	mov edi, 0x88888889
_Z27SEH_VerifyLanguageSelectioni_30:
	lea ecx, [ebx+esi]
	mov eax, ecx
	imul edi
	add edx, ecx
	sar edx, 0x3
	mov eax, ecx
	sar eax, 0x1f
	sub edx, eax
	mov eax, edx
	shl eax, 0x4
	sub eax, edx
	mov edx, ecx
	sub edx, eax
	mov eax, [edx*8+g_languages+0x4]
	test eax, eax
	jnz _Z27SEH_VerifyLanguageSelectioni_20
	add ebx, 0x1
	cmp ebx, 0xf
	jnz _Z27SEH_VerifyLanguageSelectioni_30
	xor esi, esi
_Z27SEH_VerifyLanguageSelectioni_10:
	mov eax, esi
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z27SEH_VerifyLanguageSelectioni_20:
	mov esi, edx
	mov eax, esi
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Initialized global or static variables of stringed_hooks:
SECTION .data
g_languages: dd _cstring_english, 0x0, _cstring_french, 0x0, _cstring_german, 0x0, _cstring_italian, 0x0, _cstring_spanish, 0x0, _cstring_british, 0x0, _cstring_russian, 0x0, _cstring_polish, 0x0, _cstring_korean, 0x0, _cstring_taiwanese, 0x0, _cstring_japanese, 0x0, _cstring_chinese, 0x0, _cstring_thai, 0x0, _cstring_leet, 0x0, _cstring_czech, 0x0
_ZZ21SE_GetString_FastFilePKcE1s_17: dd _cstring_press_return_or_, _cstring_appuyez_sur_reto, _cstring_zum_ndern_der_an, _cstring_premi_invio_o__f
_ZZ21SE_GetString_FastFilePKcE1s_16: dd _cstring_waiting_for_new_, _cstring_attente_nouvelle, _cstring_neuer_key_erford, _cstring_in_attesa_di_nuo
_ZZ21SE_GetString_FastFilePKcE1s_15: dd _cstring_clear, _cstring_verr_num, _cstring_lschen, _cstring_elimina
_ZZ21SE_GetString_FastFilePKcE1s_14: dd _cstring_kp_, _cstring_pn_, _cstring_zb_, _cstring_tn_
_ZZ21SE_GetString_FastFilePKcE1s_13: dd _cstring_kp_0, _cstring_pn_0, _cstring_kp_0, _cstring_tn_0
_ZZ21SE_GetString_FastFilePKcE1s_12: dd _cstring_enter1, 0x0, _cstring_zb_enter, _cstring_tn_invio
_ZZ21SE_GetString_FastFilePKcE1s_11: dd _cstring_kp_3, _cstring_pn_3, _cstring_kp_3, _cstring_tn_3
_ZZ21SE_GetString_FastFilePKcE1s_10: dd _cstring_kp_2, _cstring_pn_2, _cstring_kp_2, _cstring_tn_2
_ZZ21SE_GetString_FastFilePKcE1s_9: dd _cstring_kp_1, _cstring_pn_1, _cstring_kp_1, _cstring_tn_1
_ZZ21SE_GetString_FastFilePKcE1s_8: dd _cstring_kp_6, _cstring_pn_6, _cstring_kp_6, _cstring_tn_6
_ZZ21SE_GetString_FastFilePKcE1s_7: dd _cstring_kp_4, _cstring_pn_4, _cstring_kp_4, _cstring_tn_4
_ZZ21SE_GetString_FastFilePKcE1s_6: dd _cstring_kp_9, _cstring_pn_9, _cstring_kp_9, _cstring_tn_9
_ZZ21SE_GetString_FastFilePKcE1s_5: dd _cstring_kp_8, _cstring_pn_8, _cstring_kp_8, _cstring_tn_8
_ZZ21SE_GetString_FastFilePKcE1s_4: dd _cstring_kp_7, _cstring_pn_7, _cstring_kp_7, _cstring_tn_7
_ZZ21SE_GetString_FastFilePKcE1s_3: dd _cstring_fwd_del, _cstring_suppr, _cstring_entf, _cstring_canc
_ZZ21SE_GetString_FastFilePKcE1s_2: dd _cstring_help, _cstring_aide, _cstring_hilfe, _cstring_aiuto
_ZZ21SE_GetString_FastFilePKcE1s_1: dd _cstring_option, _cstring_alt1, _cstring_alt1, _cstring_opzione
_ZZ21SE_GetString_FastFilePKcE1s_0: dd _cstring_delete, _cstring_effacement, _cstring_rckschritt, _cstring_cancella
_ZZ21SE_GetString_FastFilePKcE1s: dd _cstring_return, _cstring_retour, _cstring_eingabe, _cstring_invio
_ZZ21SE_GetString_FastFilePKcE9langIndex: dd 0xffffffff, 0x0, 0x0, 0x0, 0x0, 0x0


;Initialized constant data of stringed_hooks:
SECTION .rdata


;Zero initialized global or static variables of stringed_hooks:
SECTION .bss
g_currentAsian: resb 0x20
_ZZ23SEH_SafeTranslateStringPKcE13szErrorString: resb 0x400
_ZZ23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_tE9szStrings: resb 0x2800
_ZZ23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_tE11iCurrString: resb 0x60
loc_warnings: resb 0x4
loc_warningsAsErrors: resb 0x4
loc_language: resb 0x70
loc_forceEnglish: resb 0x4
loc_translate: resb 0x4


;All cstrings:
SECTION .rdata
_cstring_key_:		db "KEY_",0
_cstring_enter:		db "ENTER",0
_cstring_exe_:		db "EXE_",0
_cstring_backspace:		db "BACKSPACE",0
_cstring_keywait:		db "KEYWAIT",0
_cstring_alt:		db "ALT",0
_cstring_keychange:		db "KEYCHANGE",0
_cstring_ins:		db "INS",0
_cstring_del:		db "DEL",0
_cstring_f13:		db "F13",0
_cstring_f14:		db "F14",0
_cstring_f15:		db "F15",0
_cstring_kp_home:		db "KP_HOME",0
_cstring_kp_uparrow:		db "KP_UPARROW",0
_cstring_kp_pgup:		db "KP_PGUP",0
_cstring_kp_leftarrow:		db "KP_LEFTARROW",0
_cstring_kp_rightarrow:		db "KP_RIGHTARROW",0
_cstring_kp_end:		db "KP_END",0
_cstring_kp_downarrow:		db "KP_DOWNARROW",0
_cstring_kp_pgdn:		db "KP_PGDN",0
_cstring_kp_enter:		db "KP_ENTER",0
_cstring_kp_ins:		db "KP_INS",0
_cstring_entree_pn:		db "Entree PN",0
_cstring_kp_del:		db "KP_DEL",0
_cstring_kp_numlock:		db "KP_NUMLOCK",0
_cstring_could_not_load_l:		db "Could not load localization strings for %s: %s",0
_cstring_warning_could_no:		db "WARNING: Could not load localization strings for %s: %s",0ah,0
_cstring_language:		db "Language",0
_cstring_loc_language:		db "loc_language",0
_cstring_force_english_lo:		db "Force english localized strings",0
_cstring_loc_forceenglish:		db "loc_forceEnglish",0
_cstring_enable_translati:		db "Enable translations",0
_cstring_loc_translate:		db "loc_translate",0
_cstring_enable_localizat:		db "Enable localization warnings",0
_cstring_loc_warnings:		db "loc_warnings",0
_cstring_throw_an_error_f:		db "Throw an error for any unlocalized string",0
_cstring_loc_warningsaser:		db "loc_warningsAsErrors",0
_cstring_force_english_la:		db "Force english language",0
_cstring_error_no_languag:		db "ERROR: No languages available because no localized assets were found",0ah,0
_cstring_s_too_long_when_:		db "%s too long when translated: ",22h,"%s",22h,0ah,0
_cstring_:		db "&&",0
_cstring_s_too_long_when_1:		db "%s too long when translated: ",22h,"%s",22h,0
_cstring_s_cannot_have_0_:		db "%s cannot have &&0 as conversion format: ",22h,"%s",22h,0ah,0
_cstring_warning_could_no1:		db "WARNING: Could not translate part of %s: ",22h,"%s",22h,0ah,0
_cstring_1unlocalized7s17:		db "^1UNLOCALIZED(^7%s^1)^7",0
_cstring_s:		db "%s",0
_cstring_could_not_transl:		db "Could not translate part of %s: ",22h,"%s",22h,0
_cstring_could_not_transl1:		db "Could not translate exe string ",22h,"%s",22h,0
_cstring_17:		db "^1)^7",0
_cstring_warning_could_no2:		db "WARNING: Could not translate exe string ",22h,"%s",22h,0ah,0
_cstring_english:		db "english",0
_cstring_french:		db "french",0
_cstring_german:		db "german",0
_cstring_italian:		db "italian",0
_cstring_spanish:		db "spanish",0
_cstring_british:		db "british",0
_cstring_russian:		db "russian",0
_cstring_polish:		db "polish",0
_cstring_korean:		db "korean",0
_cstring_taiwanese:		db "taiwanese",0
_cstring_japanese:		db "japanese",0
_cstring_chinese:		db "chinese",0
_cstring_thai:		db "thai",0
_cstring_leet:		db "leet",0
_cstring_czech:		db "czech",0
_cstring_press_return_or_:		db "Press RETURN or CLICK to change",0
_cstring_appuyez_sur_reto:		db "Appuyez sur RETOUR ARRI",0c8h,"RE ou CLIQUEZ pour modifier la Config. de l",27h,"affichage.",0
_cstring_zum_ndern_der_an:		db "Zum ",0c4h,"ndern der Anzeigekonfiguration ENTER dr",0fch,"cken oder KLICKEN.",0
_cstring_premi_invio_o__f:		db "Premi INVIO o  FAI CLIC per modificare la configurazione dello schermo",0
_cstring_waiting_for_new_:		db "Waiting for new key. Press ESCAPE to cancel or DELETE to clear.",0
_cstring_attente_nouvelle:		db "Attente nouvelle touche. ESC pr annuler, DELETE pr effacer.",0
_cstring_neuer_key_erford:		db "Neuer Key erforderlich. Abbruch mit ESCAPE, Neustart mit L",0d6h,"SCHEN.",0
_cstring_in_attesa_di_nuo:		db "In attesa di nuovo codice. Premi ESC per annullare o CANC per cancellare.",0
_cstring_clear:		db "Clear",0
_cstring_verr_num:		db "Verr. num.",0
_cstring_lschen:		db "L",0f6h,"schen",0
_cstring_elimina:		db "Elimina",0
_cstring_kp_:		db "KP .",0
_cstring_pn_:		db "PN .",0
_cstring_zb_:		db "ZB .",0
_cstring_tn_:		db "TN .",0
_cstring_kp_0:		db "KP 0",0
_cstring_pn_0:		db "PN 0",0
_cstring_tn_0:		db "TN 0",0
_cstring_enter1:		db "Enter",0
_cstring_zb_enter:		db "ZB Enter",0
_cstring_tn_invio:		db "TN Invio",0
_cstring_kp_3:		db "KP 3",0
_cstring_pn_3:		db "PN 3",0
_cstring_tn_3:		db "TN 3",0
_cstring_kp_2:		db "KP 2",0
_cstring_pn_2:		db "PN 2",0
_cstring_tn_2:		db "TN 2",0
_cstring_kp_1:		db "KP 1",0
_cstring_pn_1:		db "PN 1",0
_cstring_tn_1:		db "TN 1",0
_cstring_kp_6:		db "KP 6",0
_cstring_pn_6:		db "PN 6",0
_cstring_tn_6:		db "TN 6",0
_cstring_kp_4:		db "KP 4",0
_cstring_pn_4:		db "PN 4",0
_cstring_tn_4:		db "TN 4",0
_cstring_kp_9:		db "KP 9",0
_cstring_pn_9:		db "PN 9",0
_cstring_tn_9:		db "TN 9",0
_cstring_kp_8:		db "KP 8",0
_cstring_pn_8:		db "PN 8",0
_cstring_tn_8:		db "TN 8",0
_cstring_kp_7:		db "KP 7",0
_cstring_pn_7:		db "PN 7",0
_cstring_tn_7:		db "TN 7",0
_cstring_fwd_del:		db "Fwd Del",0
_cstring_suppr:		db "Suppr.",0
_cstring_entf:		db "Entf.",0
_cstring_canc:		db "Canc",0
_cstring_help:		db "Help",0
_cstring_aide:		db "Aide",0
_cstring_hilfe:		db "Hilfe",0
_cstring_aiuto:		db "Aiuto",0
_cstring_option:		db "Option",0
_cstring_alt1:		db "Alt",0
_cstring_opzione:		db "Opzione",0
_cstring_delete:		db "Delete",0
_cstring_effacement:		db "Effacement",0
_cstring_rckschritt:		db "R",0fch,"ckschritt",0
_cstring_cancella:		db "Cancella",0
_cstring_return:		db "Return",0
_cstring_retour:		db "Retour",0
_cstring_eingabe:		db "Eingabe",0
_cstring_invio:		db "Invio",0



;All constant floats and doubles:
SECTION .rdata

