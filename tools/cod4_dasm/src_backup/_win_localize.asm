;Imports of win_localize:
	extern _Z21Com_BeginParseSessionPKc
	extern _Z9Com_ParsePPKc
	extern strcmp
	extern _Z19Com_EndParseSessionv
	extern _Z2vaPKcz
	extern FS_FileOpenReadText
	extern FS_FileGetFileSize
	extern FS_FileRead
	extern FS_FileClose
	extern _Z27SEH_GetLanguageIndexForNamePKcPi

;Exports of win_localize:
	global localization
	global language_buffer
	global _Z15Win_GetLanguagev
	global _Z15Win_LocalizeRefPKc
	global _Z20Win_InitLocalizationv
	global _Z24Win_ShutdownLocalizationv


SECTION .text


;Win_GetLanguage()
_Z15Win_GetLanguagev:
	push ebp
	mov ebp, esp
	mov eax, [localization]
	pop ebp
	ret


;Win_LocalizeRef(char const*)
_Z15Win_LocalizeRefPKc:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov dword [esp], _cstring_localization
	call _Z21Com_BeginParseSessionPKc
	mov eax, [localization+0x4]
	mov [ebp-0x1c], eax
	lea edi, [ebp-0x1c]
_Z15Win_LocalizeRefPKc_20:
	mov [esp], edi
	call _Z9Com_ParsePPKc
	cmp byte [eax], 0x0
	jz _Z15Win_LocalizeRefPKc_10
	mov edx, [ebp+0x8]
	mov [esp+0x4], edx
	mov [esp], eax
	call strcmp
	mov esi, eax
	mov [esp], edi
	call _Z9Com_ParsePPKc
	mov ebx, eax
	cmp byte [eax], 0x0
	jz _Z15Win_LocalizeRefPKc_10
	test esi, esi
	jnz _Z15Win_LocalizeRefPKc_20
	call _Z19Com_EndParseSessionv
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_s
	call _Z2vaPKcz
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z15Win_LocalizeRefPKc_10:
	call _Z19Com_EndParseSessionv
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_s
	call _Z2vaPKcz
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	add [eax], al


;Win_InitLocalization()
_Z20Win_InitLocalizationv:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x20
	mov dword [localization], 0x0
	mov dword [localization+0x4], 0x0
	mov dword [esp], _cstring_localizationtxt
	call FS_FileOpenReadText
	mov ebx, eax
	test eax, eax
	jz _Z20Win_InitLocalizationv_10
	mov [esp], eax
	call FS_FileGetFileSize
	mov dword [localization], language_buffer
	mov [esp+0x8], ebx
	mov [esp+0x4], eax
	mov dword [esp], language_buffer
	call FS_FileRead
	mov esi, eax
	mov [esp], ebx
	call FS_FileClose
	test esi, esi
	jz _Z20Win_InitLocalizationv_20
	mov eax, [localization]
	mov byte [eax+esi], 0x0
	mov dword [ebp-0xc], 0x0
	movzx edx, byte [eax]
	test dl, dl
	jz _Z20Win_InitLocalizationv_30
	cmp dl, 0xa
	jz _Z20Win_InitLocalizationv_40
	cmp dl, 0xd
	jz _Z20Win_InitLocalizationv_40
	lea ecx, [eax+0x1]
_Z20Win_InitLocalizationv_50:
	mov eax, ecx
	movzx edx, byte [ecx]
	test dl, dl
	jz _Z20Win_InitLocalizationv_30
	cmp dl, 0xa
	jz _Z20Win_InitLocalizationv_40
	add ecx, 0x1
	cmp dl, 0xd
	jnz _Z20Win_InitLocalizationv_50
_Z20Win_InitLocalizationv_40:
	mov byte [eax], 0x0
	add eax, 0x1
	mov [localization+0x4], eax
	lea eax, [ebp-0xc]
	mov [esp+0x4], eax
	mov eax, [localization]
	mov [esp], eax
	call _Z27SEH_GetLanguageIndexForNamePKcPi
_Z20Win_InitLocalizationv_30:
	mov eax, [ebp-0xc]
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
_Z20Win_InitLocalizationv_20:
	mov dword [localization], 0x0
_Z20Win_InitLocalizationv_10:
	xor eax, eax
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret


;Win_ShutdownLocalization()
_Z24Win_ShutdownLocalizationv:
	push ebp
	mov ebp, esp
	mov dword [localization], 0x0
	mov dword [localization+0x4], 0x0
	pop ebp
	ret
	nop


;Initialized global or static variables of win_localize:
SECTION .data


;Initialized constant data of win_localize:
SECTION .rdata


;Zero initialized global or static variables of win_localize:
SECTION .bss
localization: resb 0x20
language_buffer: resb 0x1060


;All cstrings:
SECTION .rdata
_cstring_localization:		db "localization",0
_cstring_s:		db "%s",0
_cstring_localizationtxt:		db "localization.txt",0



;All constant floats and doubles:
SECTION .rdata

