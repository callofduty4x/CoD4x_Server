;Imports of MacFolders:
	extern _ZN12MacResources13GetGameStringEPK10__CFStringPh
	extern PBGetCatInfoSync
	extern FSMakeFSSpec
	extern GetCurrentProcess
	extern GetProcessBundleLocation
	extern FSGetCatalogInfo
	extern memcpy
	extern FSpMakeFSRef
	extern FSRefMakePath
	extern FSPathMakeRef
	extern strcat
	extern _ZN8MacFiles9CleanPathEPch
	extern CFBundleGetMainBundle
	extern CFBundleCopyExecutableURL
	extern CFURLGetFSRef
	extern CFRelease
	extern FSFindFolder
	extern _ZN12MacResources14GetProductNameEv
	extern _ZN10MacStrings15GetHFSUniStr255EPK10__CFStringR12HFSUniStr255
	extern FSMakeFSRefUnicode
	extern FSCreateDirectoryUnicode

;Exports of MacFolders:
	global sDataFolderDirID
	global sExecutableDirID
	global sAppFolderDirID
	global sAppFolderVRefNum
	global sAppBundleRef
	global _ZN10MacFolders15GetDataFolderIDEv
	global _ZN10MacFolders17GetApplicationRefER5FSRef
	global _ZN10MacFolders17GetDataFolderPathEPci
	global _ZN10MacFolders20GetDataFolderItemRefEPKcR5FSRef
	global _ZN10MacFolders21GetApplicationVRefNumEv
	global _ZN10MacFolders21GetDataFolderItemPathEPKcPci
	global _ZN10MacFolders21GetExecutableFolderIDEv
	global _ZN10MacFolders23GetApplicationFolderRefER5FSRef
	global _ZN10MacFolders23GetSavedGamesFolderPathEPci
	global _ZN10MacFolders31GetApplicationSupportFolderPathEPci
	global _ZN10MacFolders35GetApplicationSupportFolderItemPathEPKcPci


SECTION .text


;MacFolders::GetDataFolderID()
_ZN10MacFolders15GetDataFolderIDEv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x27c
	mov eax, [sDataFolderDirID]
	test eax, eax
	jz _ZN10MacFolders15GetDataFolderIDEv_10
_ZN10MacFolders15GetDataFolderIDEv_60:
	mov eax, [sDataFolderDirID]
_ZN10MacFolders15GetDataFolderIDEv_90:
	add esp, 0x27c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN10MacFolders15GetDataFolderIDEv_10:
	lea edi, [ebp-0x262]
	mov [esp+0x4], edi
	mov dword [esp], _cfstring_datafoldername
	call _ZN12MacResources13GetGameStringEPK10__CFStringPh
	mov dword [ebp-0xc0], 0x0
	mov word [ebp-0xb6], 0xffff
	mov eax, [sAppFolderDirID]
	test eax, eax
	jz _ZN10MacFolders15GetDataFolderIDEv_20
_ZN10MacFolders15GetDataFolderIDEv_110:
	movzx eax, word [sAppFolderVRefNum]
	mov [ebp-0xbc], ax
	call _ZN10MacFolders21GetExecutableFolderIDEv
	mov [ebp-0xa2], eax
	lea eax, [ebp-0xd2]
	mov [esp], eax
	call PBGetCatInfoSync
	test ax, ax
	jnz _ZN10MacFolders15GetDataFolderIDEv_30
	mov ebx, [ebp-0x6e]
	mov esi, [sAppFolderDirID]
	test esi, esi
	jz _ZN10MacFolders15GetDataFolderIDEv_40
_ZN10MacFolders15GetDataFolderIDEv_100:
	lea eax, [ebp-0x66]
	mov [esp+0xc], eax
	mov [esp+0x8], edi
	mov [esp+0x4], ebx
	movsx eax, word [sAppFolderVRefNum]
	mov [esp], eax
	call FSMakeFSSpec
	test ax, ax
	jz _ZN10MacFolders15GetDataFolderIDEv_50
_ZN10MacFolders15GetDataFolderIDEv_30:
	mov ebx, [sDataFolderDirID]
	test ebx, ebx
	jnz _ZN10MacFolders15GetDataFolderIDEv_60
	mov ecx, [sAppFolderDirID]
	test ecx, ecx
	jz _ZN10MacFolders15GetDataFolderIDEv_70
_ZN10MacFolders15GetDataFolderIDEv_130:
	mov ebx, [sAppFolderDirID]
_ZN10MacFolders15GetDataFolderIDEv_140:
	test ebx, ebx
	jz _ZN10MacFolders15GetDataFolderIDEv_80
_ZN10MacFolders15GetDataFolderIDEv_120:
	lea eax, [ebp-0x66]
	mov [esp+0xc], eax
	mov [esp+0x8], edi
	mov [esp+0x4], ebx
	movsx eax, word [sAppFolderVRefNum]
	mov [esp], eax
	call FSMakeFSSpec
	test ax, ax
	jnz _ZN10MacFolders15GetDataFolderIDEv_60
	lea eax, [ebp-0x60]
	mov [ebp-0xc0], eax
	mov word [ebp-0xb6], 0x0
	movzx eax, word [ebp-0x66]
	mov [ebp-0xbc], ax
	mov eax, [ebp-0x64]
	mov [ebp-0xa2], eax
	lea eax, [ebp-0xd2]
	mov [esp], eax
	call PBGetCatInfoSync
	test ax, ax
	jnz _ZN10MacFolders15GetDataFolderIDEv_60
	test byte [ebp-0xb4], 0x10
	jz _ZN10MacFolders15GetDataFolderIDEv_60
	mov eax, [ebp-0xa2]
	mov [sDataFolderDirID], eax
	jmp _ZN10MacFolders15GetDataFolderIDEv_90
_ZN10MacFolders15GetDataFolderIDEv_50:
	lea eax, [ebp-0x60]
	mov [ebp-0xc0], eax
	mov word [ebp-0xb6], 0x0
	movzx eax, word [ebp-0x66]
	mov [ebp-0xbc], ax
	mov eax, [ebp-0x64]
	mov [ebp-0xa2], eax
	lea eax, [ebp-0xd2]
	mov [esp], eax
	call PBGetCatInfoSync
	test ax, ax
	jnz _ZN10MacFolders15GetDataFolderIDEv_30
	test byte [ebp-0xb4], 0x10
	jz _ZN10MacFolders15GetDataFolderIDEv_30
	mov eax, [ebp-0xa2]
	mov [sDataFolderDirID], eax
	jmp _ZN10MacFolders15GetDataFolderIDEv_30
_ZN10MacFolders15GetDataFolderIDEv_40:
	lea esi, [ebp-0x20]
	mov [esp], esi
	call GetCurrentProcess
	test ax, ax
	jnz _ZN10MacFolders15GetDataFolderIDEv_100
	mov dword [esp+0x4], sAppBundleRef
	mov [esp], esi
	call GetProcessBundleLocation
	test eax, eax
	jnz _ZN10MacFolders15GetDataFolderIDEv_100
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x0
	lea eax, [ebp-0x162]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0xc
	mov dword [esp], sAppBundleRef
	call FSGetCatalogInfo
	test ax, ax
	jnz _ZN10MacFolders15GetDataFolderIDEv_100
	movzx eax, word [ebp-0x160]
	mov [sAppFolderVRefNum], ax
	mov eax, [ebp-0x15e]
	mov [sAppFolderDirID], eax
	jmp _ZN10MacFolders15GetDataFolderIDEv_100
_ZN10MacFolders15GetDataFolderIDEv_20:
	lea ebx, [ebp-0x20]
	mov [esp], ebx
	call GetCurrentProcess
	test ax, ax
	jnz _ZN10MacFolders15GetDataFolderIDEv_110
	mov dword [esp+0x4], sAppBundleRef
	mov [esp], ebx
	call GetProcessBundleLocation
	test eax, eax
	jnz _ZN10MacFolders15GetDataFolderIDEv_110
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x0
	lea eax, [ebp-0x162]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0xc
	mov dword [esp], sAppBundleRef
	call FSGetCatalogInfo
	test ax, ax
	jnz _ZN10MacFolders15GetDataFolderIDEv_110
	movzx eax, word [ebp-0x160]
	mov [sAppFolderVRefNum], ax
	mov eax, [ebp-0x15e]
	mov [sAppFolderDirID], eax
	jmp _ZN10MacFolders15GetDataFolderIDEv_110
_ZN10MacFolders15GetDataFolderIDEv_80:
	lea esi, [ebp-0x20]
	mov [esp], esi
	call GetCurrentProcess
	test ax, ax
	jnz _ZN10MacFolders15GetDataFolderIDEv_120
	mov dword [esp+0x4], sAppBundleRef
	mov [esp], esi
	call GetProcessBundleLocation
	test eax, eax
	jnz _ZN10MacFolders15GetDataFolderIDEv_120
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x0
	lea eax, [ebp-0x162]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0xc
	mov dword [esp], sAppBundleRef
	call FSGetCatalogInfo
	test ax, ax
	jnz _ZN10MacFolders15GetDataFolderIDEv_120
	movzx eax, word [ebp-0x160]
	mov [sAppFolderVRefNum], ax
	mov eax, [ebp-0x15e]
	mov [sAppFolderDirID], eax
	jmp _ZN10MacFolders15GetDataFolderIDEv_120
_ZN10MacFolders15GetDataFolderIDEv_70:
	lea ebx, [ebp-0x20]
	mov [esp], ebx
	call GetCurrentProcess
	test ax, ax
	jnz _ZN10MacFolders15GetDataFolderIDEv_130
	mov dword [esp+0x4], sAppBundleRef
	mov [esp], ebx
	call GetProcessBundleLocation
	test eax, eax
	jnz _ZN10MacFolders15GetDataFolderIDEv_130
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x0
	lea eax, [ebp-0x162]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0xc
	mov dword [esp], sAppBundleRef
	call FSGetCatalogInfo
	test ax, ax
	jnz _ZN10MacFolders15GetDataFolderIDEv_130
	movzx eax, word [ebp-0x160]
	mov [sAppFolderVRefNum], ax
	mov eax, [ebp-0x15e]
	mov [sAppFolderDirID], eax
	mov ebx, eax
	jmp _ZN10MacFolders15GetDataFolderIDEv_140
	add [eax], al


;MacFolders::GetApplicationRef(FSRef&)
_ZN10MacFolders17GetApplicationRefER5FSRef:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0xc4
	mov ecx, [sAppFolderDirID]
	test ecx, ecx
	jz _ZN10MacFolders17GetApplicationRefER5FSRef_10
_ZN10MacFolders17GetApplicationRefER5FSRef_20:
	mov dword [esp+0x8], 0x50
	mov dword [esp+0x4], sAppBundleRef
	mov eax, [ebp+0x8]
	mov [esp], eax
	call memcpy
	add esp, 0xc4
	pop ebx
	pop ebp
	ret
_ZN10MacFolders17GetApplicationRefER5FSRef_10:
	lea ebx, [ebp-0x10]
	mov [esp], ebx
	call GetCurrentProcess
	test ax, ax
	jnz _ZN10MacFolders17GetApplicationRefER5FSRef_20
	mov dword [esp+0x4], sAppBundleRef
	mov [esp], ebx
	call GetProcessBundleLocation
	test eax, eax
	jnz _ZN10MacFolders17GetApplicationRefER5FSRef_20
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x0
	lea eax, [ebp-0xa0]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0xc
	mov dword [esp], sAppBundleRef
	call FSGetCatalogInfo
	test ax, ax
	jnz _ZN10MacFolders17GetApplicationRefER5FSRef_20
	movzx eax, word [ebp-0x9e]
	mov [sAppFolderVRefNum], ax
	mov eax, [ebp-0x9c]
	mov [sAppFolderDirID], eax
	jmp _ZN10MacFolders17GetApplicationRefER5FSRef_20
	add [eax], al


;MacFolders::GetDataFolderPath(char*, int)
_ZN10MacFolders17GetDataFolderPathEPci:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x154
	mov eax, [sAppFolderDirID]
	test eax, eax
	jz _ZN10MacFolders17GetDataFolderPathEPci_10
_ZN10MacFolders17GetDataFolderPathEPci_30:
	movzx eax, word [sAppFolderVRefNum]
	mov [ebp-0x56], ax
	call _ZN10MacFolders15GetDataFolderIDEv
	mov [ebp-0x54], eax
	mov byte [ebp-0x50], 0x0
	lea ebx, [ebp-0xa6]
	mov [esp+0x4], ebx
	lea eax, [ebp-0x56]
	mov [esp], eax
	call FSpMakeFSRef
	movsx edx, ax
	test ax, ax
	jnz _ZN10MacFolders17GetDataFolderPathEPci_20
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov [esp], ebx
	call FSRefMakePath
	mov edx, eax
_ZN10MacFolders17GetDataFolderPathEPci_20:
	mov eax, edx
	add esp, 0x154
	pop ebx
	pop ebp
	ret
_ZN10MacFolders17GetDataFolderPathEPci_10:
	lea ebx, [ebp-0x10]
	mov [esp], ebx
	call GetCurrentProcess
	test ax, ax
	jnz _ZN10MacFolders17GetDataFolderPathEPci_30
	mov dword [esp+0x4], sAppBundleRef
	mov [esp], ebx
	call GetProcessBundleLocation
	test eax, eax
	jnz _ZN10MacFolders17GetDataFolderPathEPci_30
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x0
	lea eax, [ebp-0x136]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0xc
	mov dword [esp], sAppBundleRef
	call FSGetCatalogInfo
	test ax, ax
	jnz _ZN10MacFolders17GetDataFolderPathEPci_30
	movzx eax, word [ebp-0x134]
	mov [sAppFolderVRefNum], ax
	mov eax, [ebp-0x132]
	mov [sAppFolderDirID], eax
	jmp _ZN10MacFolders17GetDataFolderPathEPci_30


;MacFolders::GetDataFolderItemRef(char const*, FSRef&)
_ZN10MacFolders20GetDataFolderItemRefEPKcR5FSRef:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x414
	mov dword [esp+0x8], 0x400
	lea ebx, [ebp-0x408]
	mov [esp+0x4], ebx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _ZN10MacFolders21GetDataFolderItemPathEPKcPci
	test eax, eax
	jnz _ZN10MacFolders20GetDataFolderItemRefEPKcR5FSRef_10
	mov dword [esp+0x8], 0x0
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], ebx
	call FSPathMakeRef
_ZN10MacFolders20GetDataFolderItemRefEPKcR5FSRef_10:
	add esp, 0x414
	pop ebx
	pop ebp
	ret
	nop


;MacFolders::GetApplicationVRefNum()
_ZN10MacFolders21GetApplicationVRefNumEv:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0xc4
	mov edx, [sAppFolderDirID]
	test edx, edx
	jz _ZN10MacFolders21GetApplicationVRefNumEv_10
_ZN10MacFolders21GetApplicationVRefNumEv_20:
	movsx eax, word [sAppFolderVRefNum]
	add esp, 0xc4
	pop ebx
	pop ebp
	ret
_ZN10MacFolders21GetApplicationVRefNumEv_10:
	lea ebx, [ebp-0x10]
	mov [esp], ebx
	call GetCurrentProcess
	test ax, ax
	jnz _ZN10MacFolders21GetApplicationVRefNumEv_20
	mov dword [esp+0x4], sAppBundleRef
	mov [esp], ebx
	call GetProcessBundleLocation
	test eax, eax
	jnz _ZN10MacFolders21GetApplicationVRefNumEv_20
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x0
	lea eax, [ebp-0xa0]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0xc
	mov dword [esp], sAppBundleRef
	call FSGetCatalogInfo
	test ax, ax
	jnz _ZN10MacFolders21GetApplicationVRefNumEv_20
	movzx eax, word [ebp-0x9e]
	mov [sAppFolderVRefNum], ax
	mov eax, [ebp-0x9c]
	mov [sAppFolderDirID], eax
	jmp _ZN10MacFolders21GetApplicationVRefNumEv_20


;MacFolders::GetDataFolderItemPath(char const*, char*, int)
_ZN10MacFolders21GetDataFolderItemPathEPKcPci:
	push ebp
	mov ebp, esp
	push edi
	push ebx
	sub esp, 0x150
	mov ebx, [ebp+0xc]
	mov eax, [sAppFolderDirID]
	test eax, eax
	jz _ZN10MacFolders21GetDataFolderItemPathEPKcPci_10
_ZN10MacFolders21GetDataFolderItemPathEPKcPci_30:
	movzx eax, word [sAppFolderVRefNum]
	mov [ebp-0x56], ax
	call _ZN10MacFolders15GetDataFolderIDEv
	mov [ebp-0x54], eax
	mov byte [ebp-0x50], 0x0
	lea edi, [ebp-0xa6]
	mov [esp+0x4], edi
	lea eax, [ebp-0x56]
	mov [esp], eax
	call FSpMakeFSRef
	movsx edx, ax
	test ax, ax
	jz _ZN10MacFolders21GetDataFolderItemPathEPKcPci_20
_ZN10MacFolders21GetDataFolderItemPathEPKcPci_40:
	mov eax, edx
	add esp, 0x150
	pop ebx
	pop edi
	pop ebp
	ret
_ZN10MacFolders21GetDataFolderItemPathEPKcPci_10:
	lea edi, [ebp-0x10]
	mov [esp], edi
	call GetCurrentProcess
	test ax, ax
	jnz _ZN10MacFolders21GetDataFolderItemPathEPKcPci_30
	mov dword [esp+0x4], sAppBundleRef
	mov [esp], edi
	call GetProcessBundleLocation
	test eax, eax
	jnz _ZN10MacFolders21GetDataFolderItemPathEPKcPci_30
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x0
	lea eax, [ebp-0x136]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0xc
	mov dword [esp], sAppBundleRef
	call FSGetCatalogInfo
	test ax, ax
	jnz _ZN10MacFolders21GetDataFolderItemPathEPKcPci_30
	movzx eax, word [ebp-0x134]
	mov [sAppFolderVRefNum], ax
	mov eax, [ebp-0x132]
	mov [sAppFolderDirID], eax
	jmp _ZN10MacFolders21GetDataFolderItemPathEPKcPci_30
_ZN10MacFolders21GetDataFolderItemPathEPKcPci_20:
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov [esp], edi
	call FSRefMakePath
	mov edx, eax
	test eax, eax
	jnz _ZN10MacFolders21GetDataFolderItemPathEPKcPci_40
	mov edx, [ebp+0x8]
	movzx eax, byte [edx]
	cmp al, 0x2f
	jz _ZN10MacFolders21GetDataFolderItemPathEPKcPci_50
	cmp al, 0x5c
	jz _ZN10MacFolders21GetDataFolderItemPathEPKcPci_60
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, ebx
	repne scasb
	not ecx
	mov word [ecx+ebx-0x1], 0x2f
	mov eax, [ebp+0x8]
_ZN10MacFolders21GetDataFolderItemPathEPKcPci_70:
	mov [esp+0x4], eax
	mov [esp], ebx
	call strcat
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call _ZN8MacFiles9CleanPathEPch
	xor edx, edx
	mov eax, edx
	add esp, 0x150
	pop ebx
	pop edi
	pop ebp
	ret
_ZN10MacFolders21GetDataFolderItemPathEPKcPci_60:
	mov eax, [ebp+0x8]
	jmp _ZN10MacFolders21GetDataFolderItemPathEPKcPci_70
_ZN10MacFolders21GetDataFolderItemPathEPKcPci_50:
	mov eax, edx
	jmp _ZN10MacFolders21GetDataFolderItemPathEPKcPci_70
	nop


;MacFolders::GetExecutableFolderID()
_ZN10MacFolders21GetExecutableFolderIDEv:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x100
	mov edx, [sExecutableDirID]
	test edx, edx
	jz _ZN10MacFolders21GetExecutableFolderIDEv_10
_ZN10MacFolders21GetExecutableFolderIDEv_20:
	mov eax, [sExecutableDirID]
	add esp, 0x100
	pop ebx
	pop esi
	pop ebp
	ret
_ZN10MacFolders21GetExecutableFolderIDEv_10:
	call CFBundleGetMainBundle
	mov [esp], eax
	call CFBundleCopyExecutableURL
	mov ebx, eax
	test eax, eax
	jz _ZN10MacFolders21GetExecutableFolderIDEv_20
	lea esi, [ebp-0x58]
	mov [esp+0x4], esi
	mov [esp], eax
	call CFURLGetFSRef
	test al, al
	jnz _ZN10MacFolders21GetExecutableFolderIDEv_30
_ZN10MacFolders21GetExecutableFolderIDEv_40:
	mov [esp], ebx
	call CFRelease
	mov eax, [sExecutableDirID]
	add esp, 0x100
	pop ebx
	pop esi
	pop ebp
	ret
_ZN10MacFolders21GetExecutableFolderIDEv_30:
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x0
	lea eax, [ebp-0xe8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x8
	mov [esp], esi
	call FSGetCatalogInfo
	test ax, ax
	jnz _ZN10MacFolders21GetExecutableFolderIDEv_40
	mov eax, [ebp-0xe4]
	mov [sExecutableDirID], eax
	jmp _ZN10MacFolders21GetExecutableFolderIDEv_40
	nop
	add [eax], al


;MacFolders::GetApplicationFolderRef(FSRef&)
_ZN10MacFolders23GetApplicationFolderRefER5FSRef:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	add esp, 0xffffff80
	lea ebx, [ebp-0x10]
	mov [esp], ebx
	call GetCurrentProcess
	movsx edx, ax
	test ax, ax
	jz _ZN10MacFolders23GetApplicationFolderRefER5FSRef_10
_ZN10MacFolders23GetApplicationFolderRefER5FSRef_20:
	mov eax, edx
	sub esp, 0xffffff80
	pop ebx
	pop esi
	pop ebp
	ret
_ZN10MacFolders23GetApplicationFolderRefER5FSRef_10:
	lea esi, [ebp-0x60]
	mov [esp+0x4], esi
	mov [esp], ebx
	call GetProcessBundleLocation
	mov edx, eax
	test eax, eax
	jnz _ZN10MacFolders23GetApplicationFolderRefER5FSRef_20
	mov eax, [ebp+0x8]
	mov [esp+0x14], eax
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call FSGetCatalogInfo
	movsx edx, ax
	mov eax, edx
	sub esp, 0xffffff80
	pop ebx
	pop esi
	pop ebp
	ret


;MacFolders::GetSavedGamesFolderPath(char*, int)
_ZN10MacFolders23GetSavedGamesFolderPathEPci:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2cc
	lea ebx, [ebp-0x68]
	mov [esp+0xc], ebx
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x646f6373
	mov dword [esp], 0xffff8005
	call FSFindFolder
	movsx edx, ax
	test ax, ax
	jz _ZN10MacFolders23GetSavedGamesFolderPathEPci_10
_ZN10MacFolders23GetSavedGamesFolderPathEPci_30:
	mov eax, edx
	add esp, 0x2cc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN10MacFolders23GetSavedGamesFolderPathEPci_10:
	call _ZN12MacResources14GetProductNameEv
	lea edx, [ebp-0x2b8]
	mov [esp+0x4], edx
	mov [esp], eax
	call _ZN10MacStrings15GetHFSUniStr255EPK10__CFStringR12HFSUniStr255
	lea esi, [ebp-0xb8]
	mov [esp+0x10], esi
	mov dword [esp+0xc], 0x0
	lea edi, [ebp-0x2b6]
	mov [esp+0x8], edi
	movzx eax, word [ebp-0x2b8]
	mov [esp+0x4], eax
	mov [esp], ebx
	call FSMakeFSRefUnicode
	test ax, ax
	jz _ZN10MacFolders23GetSavedGamesFolderPathEPci_20
	mov dword [esp+0x1c], 0x0
	mov dword [esp+0x18], 0x0
	mov [esp+0x14], esi
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x0
	mov [esp+0x8], edi
	movzx eax, word [ebp-0x2b8]
	mov [esp+0x4], eax
	mov [esp], ebx
	call FSCreateDirectoryUnicode
	movsx edx, ax
	test ax, ax
	jnz _ZN10MacFolders23GetSavedGamesFolderPathEPci_30
_ZN10MacFolders23GetSavedGamesFolderPathEPci_20:
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov [esp], esi
	call FSRefMakePath
	mov edx, eax
	mov eax, edx
	add esp, 0x2cc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop
	add [eax], al


;MacFolders::GetApplicationSupportFolderPath(char*, int)
_ZN10MacFolders31GetApplicationSupportFolderPathEPci:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2cc
	lea ebx, [ebp-0x68]
	mov [esp+0xc], ebx
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x61737570
	mov dword [esp], 0xffff8005
	call FSFindFolder
	test ax, ax
	jnz _ZN10MacFolders31GetApplicationSupportFolderPathEPci_10
	call _ZN12MacResources14GetProductNameEv
	lea edx, [ebp-0x2b8]
	mov [esp+0x4], edx
	mov [esp], eax
	call _ZN10MacStrings15GetHFSUniStr255EPK10__CFStringR12HFSUniStr255
	lea esi, [ebp-0xb8]
	mov [esp+0x10], esi
	mov dword [esp+0xc], 0x0
	lea edi, [ebp-0x2b6]
	mov [esp+0x8], edi
	movzx eax, word [ebp-0x2b8]
	mov [esp+0x4], eax
	mov [esp], ebx
	call FSMakeFSRefUnicode
	test ax, ax
	jnz _ZN10MacFolders31GetApplicationSupportFolderPathEPci_20
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov [esp], esi
	call FSRefMakePath
	test eax, eax
	jz _ZN10MacFolders31GetApplicationSupportFolderPathEPci_30
_ZN10MacFolders31GetApplicationSupportFolderPathEPci_10:
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _ZN10MacFolders23GetSavedGamesFolderPathEPci
_ZN10MacFolders31GetApplicationSupportFolderPathEPci_30:
	add esp, 0x2cc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN10MacFolders31GetApplicationSupportFolderPathEPci_20:
	mov dword [esp+0x1c], 0x0
	mov dword [esp+0x18], 0x0
	mov [esp+0x14], esi
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x0
	mov [esp+0x8], edi
	movzx eax, word [ebp-0x2b8]
	mov [esp+0x4], eax
	mov [esp], ebx
	call FSCreateDirectoryUnicode
	test ax, ax
	jnz _ZN10MacFolders31GetApplicationSupportFolderPathEPci_10
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov [esp], esi
	call FSRefMakePath
	test eax, eax
	jnz _ZN10MacFolders31GetApplicationSupportFolderPathEPci_10
	jmp _ZN10MacFolders31GetApplicationSupportFolderPathEPci_30


;MacFolders::GetApplicationSupportFolderItemPath(char const*, char*, int)
_ZN10MacFolders35GetApplicationSupportFolderItemPathEPKcPci:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov ebx, [ebp+0xc]
	mov eax, [ebp+0x10]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _ZN10MacFolders31GetApplicationSupportFolderPathEPci
	mov esi, eax
	test eax, eax
	jnz _ZN10MacFolders35GetApplicationSupportFolderItemPathEPKcPci_10
	mov edx, [ebp+0x8]
	movzx eax, byte [edx]
	cmp al, 0x2f
	jz _ZN10MacFolders35GetApplicationSupportFolderItemPathEPKcPci_20
	cmp al, 0x5c
	jz _ZN10MacFolders35GetApplicationSupportFolderItemPathEPKcPci_30
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, ebx
	repne scasb
	not ecx
	mov word [ecx+ebx-0x1], 0x2f
	mov eax, [ebp+0x8]
_ZN10MacFolders35GetApplicationSupportFolderItemPathEPKcPci_40:
	mov [esp+0x4], eax
	mov [esp], ebx
	call strcat
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call _ZN8MacFiles9CleanPathEPch
_ZN10MacFolders35GetApplicationSupportFolderItemPathEPKcPci_10:
	mov eax, esi
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN10MacFolders35GetApplicationSupportFolderItemPathEPKcPci_30:
	mov eax, [ebp+0x8]
	jmp _ZN10MacFolders35GetApplicationSupportFolderItemPathEPKcPci_40
_ZN10MacFolders35GetApplicationSupportFolderItemPathEPKcPci_20:
	mov eax, edx
	jmp _ZN10MacFolders35GetApplicationSupportFolderItemPathEPKcPci_40
	add [eax], al


;Initialized global or static variables of MacFolders:
SECTION .data


;Initialized constant data of MacFolders:
SECTION .rdata


;Zero initialized global or static variables of MacFolders:
SECTION .bss
sDataFolderDirID: resb 0x4
sExecutableDirID: resb 0x4
sAppFolderDirID: resb 0x4
sAppFolderVRefNum: resb 0x14
sAppBundleRef: resb 0x60


;All CFStrings:

STRUC CFString
.isa: RESD 1
.flags: RESD 1
.str: RESD 1
.length: RESD 1
ENDSTRUC

SECTION .rdata
_cfstring_datafoldername:		ISTRUCT CFString
AT CFString.isa, dd 0
AT CFString.flags, dd 0x7c8
AT CFString.str dd _cstring_datafoldername
AT CFString.length dd 16
IEND




;All cstrings:
SECTION .rdata
_cstring_datafoldername:		db "data-folder-name",0



;All constant floats and doubles:
SECTION .rdata

