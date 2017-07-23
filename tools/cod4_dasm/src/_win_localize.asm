;Imports of win_localize:
	extern Com_BeginParseSession
	extern Com_Parse
	extern strcmp
	extern Com_EndParseSession
	extern va
	extern FS_FileOpenReadText
	extern FS_FileGetFileSize
	extern FS_FileRead
	extern FS_FileClose
	extern SEH_GetLanguageIndexForName

;Exports of win_localize:
	global localization
	global language_buffer
	global Win_GetLanguage
	global Win_LocalizeRef
	global Win_InitLocalization
	global Win_ShutdownLocalization


SECTION .text


;Win_GetLanguage()
Win_GetLanguage:
	push ebp
	mov ebp, esp
	mov eax, [localization]
	pop ebp
	ret


;Win_LocalizeRef(char const*)
Win_LocalizeRef:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov dword [esp], _cstring_localization
	call Com_BeginParseSession
	mov eax, [localization+0x4]
	mov [ebp-0x1c], eax
	lea edi, [ebp-0x1c]
Win_LocalizeRef_20:
	mov [esp], edi
	call Com_Parse
	cmp byte [eax], 0x0
	jz Win_LocalizeRef_10
	mov edx, [ebp+0x8]
	mov [esp+0x4], edx
	mov [esp], eax
	call strcmp
	mov esi, eax
	mov [esp], edi
	call Com_Parse
	mov ebx, eax
	cmp byte [eax], 0x0
	jz Win_LocalizeRef_10
	test esi, esi
	jnz Win_LocalizeRef_20
	call Com_EndParseSession
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_s
	call va
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Win_LocalizeRef_10:
	call Com_EndParseSession
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_s
	call va
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	add [eax], al


;Win_InitLocalization()
Win_InitLocalization:
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
	jz Win_InitLocalization_10
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
	jz Win_InitLocalization_20
	mov eax, [localization]
	mov byte [eax+esi], 0x0
	mov dword [ebp-0xc], 0x0
	movzx edx, byte [eax]
	test dl, dl
	jz Win_InitLocalization_30
	cmp dl, 0xa
	jz Win_InitLocalization_40
	cmp dl, 0xd
	jz Win_InitLocalization_40
	lea ecx, [eax+0x1]
Win_InitLocalization_50:
	mov eax, ecx
	movzx edx, byte [ecx]
	test dl, dl
	jz Win_InitLocalization_30
	cmp dl, 0xa
	jz Win_InitLocalization_40
	add ecx, 0x1
	cmp dl, 0xd
	jnz Win_InitLocalization_50
Win_InitLocalization_40:
	mov byte [eax], 0x0
	add eax, 0x1
	mov [localization+0x4], eax
	lea eax, [ebp-0xc]
	mov [esp+0x4], eax
	mov eax, [localization]
	mov [esp], eax
	call SEH_GetLanguageIndexForName
Win_InitLocalization_30:
	mov eax, [ebp-0xc]
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
Win_InitLocalization_20:
	mov dword [localization], 0x0
Win_InitLocalization_10:
	xor eax, eax
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret


;Win_ShutdownLocalization()
Win_ShutdownLocalization:
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

