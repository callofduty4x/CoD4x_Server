;Imports of MacResources:
	extern CFBundleGetMainBundle
	extern CFBundleCopyLocalizedString
	extern CFStringGetPascalString
	extern CFRelease
	extern StringToNum
	extern CFStringCreateWithFormat

;Exports of MacResources:
	global _ZZN12MacResources16GetProductFamilyEvE7sResult
	global _ZZN12MacResources14GetProductNameEvE7sResult
	global _ZZN12MacResources19GetShortProductNameEvE7sResult
	global _ZZN12MacResources17GetDataFolderNameEvE7sResult
	global _ZZN12MacResources15GetLanguageCodeEvE7sResult
	global _ZZN12MacResources20GetNeedsNewerOSErrorEvE7sResult
	global _ZZN12MacResources19GetNoQuickTimeErrorEvE7sResult
	global _ZZN12MacResources25GetMissingDataFolderErrorEvE7sResult
	global _ZZN12MacResources18GetNeeds32BitErrorEvE7sResult
	global _ZZN12MacResources23GetCantRunFromDiscErrorEvE7sResult
	global _ZN12MacResources13GetGameStringEPK10__CFStringPh
	global _ZN12MacResources14GetProductNameEv
	global _ZN12MacResources15GetLanguageCodeEv
	global _ZN12MacResources16GetProductFamilyEv
	global _ZN12MacResources18GetNeeds32BitErrorEv
	global _ZN12MacResources19GetNoQuickTimeErrorEv
	global _ZN12MacResources20GetNeedsNewerOSErrorEv
	global _ZN12MacResources23GetCantRunFromDiscErrorEv
	global _ZN12MacResources25GetMissingDataFolderErrorEv


SECTION .text


;MacResources::GetGameString(__CFString const*, unsigned char*)
_ZN12MacResources13GetGameStringEPK10__CFStringPh:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0x8]
	call CFBundleGetMainBundle
	mov dword [esp+0xc], _cfstring_game
	mov [esp+0x8], ebx
	mov [esp+0x4], ebx
	mov [esp], eax
	call CFBundleCopyLocalizedString
	mov esi, eax
	test eax, eax
	jz _ZN12MacResources13GetGameStringEPK10__CFStringPh_10
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x100
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], esi
	call CFStringGetPascalString
	mov ebx, eax
	mov [esp], esi
	call CFRelease
	xor eax, eax
	test bl, bl
	setnz al
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_ZN12MacResources13GetGameStringEPK10__CFStringPh_10:
	xor eax, eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret


;MacResources::GetProductName()
_ZN12MacResources14GetProductNameEv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov edx, [_ZZN12MacResources14GetProductNameEvE7sResult]
	test edx, edx
	jz _ZN12MacResources14GetProductNameEv_10
	mov eax, [_ZZN12MacResources14GetProductNameEvE7sResult]
	leave
	ret
_ZN12MacResources14GetProductNameEv_10:
	call CFBundleGetMainBundle
	mov dword [esp+0xc], _cfstring_game
	mov dword [esp+0x8], _cfstring_productname
	mov dword [esp+0x4], _cfstring_productname
	mov [esp], eax
	call CFBundleCopyLocalizedString
	mov [_ZZN12MacResources14GetProductNameEvE7sResult], eax
	leave
	ret
	nop
	add [eax], al


;MacResources::GetLanguageCode()
_ZN12MacResources15GetLanguageCodeEv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x11c
	cmp dword [_ZZN12MacResources15GetLanguageCodeEvE7sResult], 0x7fff
	jz _ZN12MacResources15GetLanguageCodeEv_10
	mov eax, [_ZZN12MacResources15GetLanguageCodeEvE7sResult]
	add esp, 0x11c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN12MacResources15GetLanguageCodeEv_10:
	call CFBundleGetMainBundle
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], _cfstring_languagecode
	mov dword [esp+0x4], _cfstring_languagecode
	mov [esp], eax
	call CFBundleCopyLocalizedString
	mov esi, eax
	test eax, eax
	jz _ZN12MacResources15GetLanguageCodeEv_20
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x100
	lea edi, [ebp-0x118]
	mov [esp+0x4], edi
	mov [esp], eax
	call CFStringGetPascalString
	mov ebx, eax
	mov [esp], esi
	call CFRelease
	test bl, bl
	jz _ZN12MacResources15GetLanguageCodeEv_20
	mov dword [esp+0x4], _ZZN12MacResources15GetLanguageCodeEvE7sResult
	mov [esp], edi
	call StringToNum
	mov eax, [_ZZN12MacResources15GetLanguageCodeEvE7sResult]
	add esp, 0x11c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN12MacResources15GetLanguageCodeEv_20:
	mov dword [_ZZN12MacResources15GetLanguageCodeEvE7sResult], 0x0
	mov eax, [_ZZN12MacResources15GetLanguageCodeEvE7sResult]
	add esp, 0x11c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop
	add [eax], al


;MacResources::GetProductFamily()
_ZN12MacResources16GetProductFamilyEv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [_ZZN12MacResources16GetProductFamilyEvE7sResult]
	test eax, eax
	jz _ZN12MacResources16GetProductFamilyEv_10
	mov eax, [_ZZN12MacResources16GetProductFamilyEvE7sResult]
	leave
	ret
_ZN12MacResources16GetProductFamilyEv_10:
	call CFBundleGetMainBundle
	mov dword [esp+0xc], _cfstring_game
	mov dword [esp+0x8], _cfstring_productfamily
	mov dword [esp+0x4], _cfstring_productfamily
	mov [esp], eax
	call CFBundleCopyLocalizedString
	mov [_ZZN12MacResources16GetProductFamilyEvE7sResult], eax
	leave
	ret


;MacResources::GetNeeds32BitError()
_ZN12MacResources18GetNeeds32BitErrorEv:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [_ZZN12MacResources18GetNeeds32BitErrorEvE7sResult]
	test eax, eax
	jz _ZN12MacResources18GetNeeds32BitErrorEv_10
_ZN12MacResources18GetNeeds32BitErrorEv_20:
	mov eax, [_ZZN12MacResources18GetNeeds32BitErrorEvE7sResult]
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_ZN12MacResources18GetNeeds32BitErrorEv_10:
	call CFBundleGetMainBundle
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], _cfstring_needs32bit
	mov dword [esp+0x4], _cfstring_needs32bit
	mov [esp], eax
	call CFBundleCopyLocalizedString
	mov ebx, eax
	test eax, eax
	jz _ZN12MacResources18GetNeeds32BitErrorEv_20
	mov eax, [_ZZN12MacResources14GetProductNameEvE7sResult]
	test eax, eax
	jz _ZN12MacResources18GetNeeds32BitErrorEv_30
	mov eax, [_ZZN12MacResources14GetProductNameEvE7sResult]
_ZN12MacResources18GetNeeds32BitErrorEv_40:
	mov [esp+0xc], eax
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x0
	mov dword [esp], 0x0
	call CFStringCreateWithFormat
	mov [_ZZN12MacResources18GetNeeds32BitErrorEvE7sResult], eax
	mov [esp], ebx
	call CFRelease
	mov eax, [_ZZN12MacResources18GetNeeds32BitErrorEvE7sResult]
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_ZN12MacResources18GetNeeds32BitErrorEv_30:
	call CFBundleGetMainBundle
	mov dword [esp+0xc], _cfstring_game
	mov dword [esp+0x8], _cfstring_productname
	mov dword [esp+0x4], _cfstring_productname
	mov [esp], eax
	call CFBundleCopyLocalizedString
	mov [_ZZN12MacResources14GetProductNameEvE7sResult], eax
	jmp _ZN12MacResources18GetNeeds32BitErrorEv_40


;MacResources::GetNoQuickTimeError()
_ZN12MacResources19GetNoQuickTimeErrorEv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov edx, [_ZZN12MacResources19GetNoQuickTimeErrorEvE7sResult]
	test edx, edx
	jz _ZN12MacResources19GetNoQuickTimeErrorEv_10
	mov eax, [_ZZN12MacResources19GetNoQuickTimeErrorEvE7sResult]
	leave
	ret
_ZN12MacResources19GetNoQuickTimeErrorEv_10:
	call CFBundleGetMainBundle
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], _cfstring_noquicktime
	mov dword [esp+0x4], _cfstring_noquicktime
	mov [esp], eax
	call CFBundleCopyLocalizedString
	mov [_ZZN12MacResources19GetNoQuickTimeErrorEvE7sResult], eax
	leave
	ret
	nop


;MacResources::GetNeedsNewerOSError()
_ZN12MacResources20GetNeedsNewerOSErrorEv:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [_ZZN12MacResources20GetNeedsNewerOSErrorEvE7sResult]
	test eax, eax
	jz _ZN12MacResources20GetNeedsNewerOSErrorEv_10
_ZN12MacResources20GetNeedsNewerOSErrorEv_20:
	mov eax, [_ZZN12MacResources20GetNeedsNewerOSErrorEvE7sResult]
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_ZN12MacResources20GetNeedsNewerOSErrorEv_10:
	call CFBundleGetMainBundle
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], _cfstring_needsneweros
	mov dword [esp+0x4], _cfstring_needsneweros
	mov [esp], eax
	call CFBundleCopyLocalizedString
	mov ebx, eax
	test eax, eax
	jz _ZN12MacResources20GetNeedsNewerOSErrorEv_20
	mov eax, [_ZZN12MacResources14GetProductNameEvE7sResult]
	test eax, eax
	jz _ZN12MacResources20GetNeedsNewerOSErrorEv_30
	mov eax, [_ZZN12MacResources14GetProductNameEvE7sResult]
_ZN12MacResources20GetNeedsNewerOSErrorEv_40:
	mov [esp+0xc], eax
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x0
	mov dword [esp], 0x0
	call CFStringCreateWithFormat
	mov [_ZZN12MacResources20GetNeedsNewerOSErrorEvE7sResult], eax
	mov [esp], ebx
	call CFRelease
	mov eax, [_ZZN12MacResources20GetNeedsNewerOSErrorEvE7sResult]
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_ZN12MacResources20GetNeedsNewerOSErrorEv_30:
	call CFBundleGetMainBundle
	mov dword [esp+0xc], _cfstring_game
	mov dword [esp+0x8], _cfstring_productname
	mov dword [esp+0x4], _cfstring_productname
	mov [esp], eax
	call CFBundleCopyLocalizedString
	mov [_ZZN12MacResources14GetProductNameEvE7sResult], eax
	jmp _ZN12MacResources20GetNeedsNewerOSErrorEv_40


;MacResources::GetCantRunFromDiscError()
_ZN12MacResources23GetCantRunFromDiscErrorEv:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov edx, [_ZZN12MacResources23GetCantRunFromDiscErrorEvE7sResult]
	test edx, edx
	jz _ZN12MacResources23GetCantRunFromDiscErrorEv_10
_ZN12MacResources23GetCantRunFromDiscErrorEv_20:
	mov eax, [_ZZN12MacResources23GetCantRunFromDiscErrorEvE7sResult]
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_ZN12MacResources23GetCantRunFromDiscErrorEv_10:
	call CFBundleGetMainBundle
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], _cfstring_runfromdrive
	mov dword [esp+0x4], _cfstring_runfromdrive
	mov [esp], eax
	call CFBundleCopyLocalizedString
	mov ebx, eax
	test eax, eax
	jz _ZN12MacResources23GetCantRunFromDiscErrorEv_20
	mov eax, [_ZZN12MacResources14GetProductNameEvE7sResult]
	test eax, eax
	jz _ZN12MacResources23GetCantRunFromDiscErrorEv_30
	mov eax, [_ZZN12MacResources14GetProductNameEvE7sResult]
_ZN12MacResources23GetCantRunFromDiscErrorEv_40:
	mov [esp+0xc], eax
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x0
	mov dword [esp], 0x0
	call CFStringCreateWithFormat
	mov [_ZZN12MacResources23GetCantRunFromDiscErrorEvE7sResult], eax
	mov [esp], ebx
	call CFRelease
	mov eax, [_ZZN12MacResources23GetCantRunFromDiscErrorEvE7sResult]
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_ZN12MacResources23GetCantRunFromDiscErrorEv_30:
	call CFBundleGetMainBundle
	mov dword [esp+0xc], _cfstring_game
	mov dword [esp+0x8], _cfstring_productname
	mov dword [esp+0x4], _cfstring_productname
	mov [esp], eax
	call CFBundleCopyLocalizedString
	mov [_ZZN12MacResources14GetProductNameEvE7sResult], eax
	jmp _ZN12MacResources23GetCantRunFromDiscErrorEv_40
	nop
	add [eax], al


;MacResources::GetMissingDataFolderError()
_ZN12MacResources25GetMissingDataFolderErrorEv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov eax, [_ZZN12MacResources25GetMissingDataFolderErrorEvE7sResult]
	test eax, eax
	jz _ZN12MacResources25GetMissingDataFolderErrorEv_10
_ZN12MacResources25GetMissingDataFolderErrorEv_20:
	mov eax, [_ZZN12MacResources25GetMissingDataFolderErrorEvE7sResult]
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN12MacResources25GetMissingDataFolderErrorEv_10:
	call CFBundleGetMainBundle
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], _cfstring_nodatafolder
	mov dword [esp+0x4], _cfstring_nodatafolder
	mov [esp], eax
	call CFBundleCopyLocalizedString
	mov ebx, eax
	test eax, eax
	jz _ZN12MacResources25GetMissingDataFolderErrorEv_20
	mov edi, [_ZZN12MacResources19GetShortProductNameEvE7sResult]
	test edi, edi
	jz _ZN12MacResources25GetMissingDataFolderErrorEv_30
	mov edi, [_ZZN12MacResources19GetShortProductNameEvE7sResult]
_ZN12MacResources25GetMissingDataFolderErrorEv_60:
	mov esi, [_ZZN12MacResources17GetDataFolderNameEvE7sResult]
	test esi, esi
	jz _ZN12MacResources25GetMissingDataFolderErrorEv_40
	mov esi, [_ZZN12MacResources17GetDataFolderNameEvE7sResult]
_ZN12MacResources25GetMissingDataFolderErrorEv_80:
	mov ecx, [_ZZN12MacResources14GetProductNameEvE7sResult]
	test ecx, ecx
	jz _ZN12MacResources25GetMissingDataFolderErrorEv_50
	mov eax, [_ZZN12MacResources14GetProductNameEvE7sResult]
_ZN12MacResources25GetMissingDataFolderErrorEv_70:
	mov [esp+0x14], edi
	mov [esp+0x10], esi
	mov [esp+0xc], eax
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x0
	mov dword [esp], 0x0
	call CFStringCreateWithFormat
	mov [_ZZN12MacResources25GetMissingDataFolderErrorEvE7sResult], eax
	mov [esp], ebx
	call CFRelease
	mov eax, [_ZZN12MacResources25GetMissingDataFolderErrorEvE7sResult]
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN12MacResources25GetMissingDataFolderErrorEv_30:
	call CFBundleGetMainBundle
	mov dword [esp+0xc], _cfstring_game
	mov dword [esp+0x8], _cfstring_shortname
	mov dword [esp+0x4], _cfstring_shortname
	mov [esp], eax
	call CFBundleCopyLocalizedString
	mov [_ZZN12MacResources19GetShortProductNameEvE7sResult], eax
	mov edi, eax
	jmp _ZN12MacResources25GetMissingDataFolderErrorEv_60
_ZN12MacResources25GetMissingDataFolderErrorEv_50:
	call CFBundleGetMainBundle
	mov dword [esp+0xc], _cfstring_game
	mov dword [esp+0x8], _cfstring_productname
	mov dword [esp+0x4], _cfstring_productname
	mov [esp], eax
	call CFBundleCopyLocalizedString
	mov [_ZZN12MacResources14GetProductNameEvE7sResult], eax
	jmp _ZN12MacResources25GetMissingDataFolderErrorEv_70
_ZN12MacResources25GetMissingDataFolderErrorEv_40:
	call CFBundleGetMainBundle
	mov dword [esp+0xc], _cfstring_game
	mov dword [esp+0x8], _cfstring_datafoldername
	mov dword [esp+0x4], _cfstring_datafoldername
	mov [esp], eax
	call CFBundleCopyLocalizedString
	mov [_ZZN12MacResources17GetDataFolderNameEvE7sResult], eax
	mov esi, eax
	jmp _ZN12MacResources25GetMissingDataFolderErrorEv_80


;Initialized global or static variables of MacResources:
SECTION .data
_ZZN12MacResources15GetLanguageCodeEvE7sResult: dd 0x7fff, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0


;Initialized constant data of MacResources:
SECTION .rdata


;Zero initialized global or static variables of MacResources:
SECTION .bss
_ZZN12MacResources16GetProductFamilyEvE7sResult: resb 0x4
_ZZN12MacResources14GetProductNameEvE7sResult: resb 0x4
_ZZN12MacResources19GetShortProductNameEvE7sResult: resb 0x4
_ZZN12MacResources17GetDataFolderNameEvE7sResult: resb 0x10
_ZZN12MacResources20GetNeedsNewerOSErrorEvE7sResult: resb 0x4
_ZZN12MacResources19GetNoQuickTimeErrorEvE7sResult: resb 0x4
_ZZN12MacResources25GetMissingDataFolderErrorEvE7sResult: resb 0x8
_ZZN12MacResources18GetNeeds32BitErrorEvE7sResult: resb 0x4
_ZZN12MacResources23GetCantRunFromDiscErrorEvE7sResult: resb 0x50


;All CFStrings:

STRUC CFString
.isa: RESD 1
.flags: RESD 1
.str: RESD 1
.length: RESD 1
ENDSTRUC

SECTION .rdata
_cfstring_game:		ISTRUCT CFString
AT CFString.isa, dd 0
AT CFString.flags, dd 0x7c8
AT CFString.str dd _cstring_game
AT CFString.length dd 4
IEND

_cfstring_productname:		ISTRUCT CFString
AT CFString.isa, dd 0
AT CFString.flags, dd 0x7c8
AT CFString.str dd _cstring_productname
AT CFString.length dd 12
IEND

_cfstring_languagecode:		ISTRUCT CFString
AT CFString.isa, dd 0
AT CFString.flags, dd 0x7c8
AT CFString.str dd _cstring_languagecode
AT CFString.length dd 13
IEND

_cfstring_productfamily:		ISTRUCT CFString
AT CFString.isa, dd 0
AT CFString.flags, dd 0x7c8
AT CFString.str dd _cstring_productfamily
AT CFString.length dd 14
IEND

_cfstring_needs32bit:		ISTRUCT CFString
AT CFString.isa, dd 0
AT CFString.flags, dd 0x7c8
AT CFString.str dd _cstring_needs32bit
AT CFString.length dd 11
IEND

_cfstring_noquicktime:		ISTRUCT CFString
AT CFString.isa, dd 0
AT CFString.flags, dd 0x7c8
AT CFString.str dd _cstring_noquicktime
AT CFString.length dd 12
IEND

_cfstring_needsneweros:		ISTRUCT CFString
AT CFString.isa, dd 0
AT CFString.flags, dd 0x7c8
AT CFString.str dd _cstring_needsneweros
AT CFString.length dd 14
IEND

_cfstring_runfromdrive:		ISTRUCT CFString
AT CFString.isa, dd 0
AT CFString.flags, dd 0x7c8
AT CFString.str dd _cstring_runfromdrive
AT CFString.length dd 14
IEND

_cfstring_nodatafolder:		ISTRUCT CFString
AT CFString.isa, dd 0
AT CFString.flags, dd 0x7c8
AT CFString.str dd _cstring_nodatafolder
AT CFString.length dd 14
IEND

_cfstring_shortname:		ISTRUCT CFString
AT CFString.isa, dd 0
AT CFString.flags, dd 0x7c8
AT CFString.str dd _cstring_shortname
AT CFString.length dd 10
IEND

_cfstring_datafoldername:		ISTRUCT CFString
AT CFString.isa, dd 0
AT CFString.flags, dd 0x7c8
AT CFString.str dd _cstring_datafoldername
AT CFString.length dd 16
IEND




;All cstrings:
SECTION .rdata
_cstring_game:		db "Game",0
_cstring_productname:		db "product-name",0
_cstring_languagecode:		db "language-code",0
_cstring_productfamily:		db "product-family",0
_cstring_needs32bit:		db "needs-32bit",0
_cstring_noquicktime:		db "no-quicktime",0
_cstring_needsneweros:		db "needs-newer-os",0
_cstring_runfromdrive:		db "run-from-drive",0
_cstring_nodatafolder:		db "no-data-folder",0
_cstring_shortname:		db "short-name",0
_cstring_datafoldername:		db "data-folder-name",0



;All constant floats and doubles:
SECTION .rdata

