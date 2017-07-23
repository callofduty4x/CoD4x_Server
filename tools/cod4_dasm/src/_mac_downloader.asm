;Imports of mac_downloader:
	extern objc_msgSend
	extern objc_exception_try_enter
	extern _setjmp
	extern objc_exception_extract
	extern objc_exception_match
	extern objc_exception_try_exit
	extern objc_exception_throw
	extern objc_msgSendSuper
	extern strncpy

;Exports of mac_downloader:
	global -[DownloadDelegate download:didFailWithError:]
	global -[DownloadDelegate downloadDidFinish:]
	global -[DownloadDelegate download:didCreateDestination:]
	global -[DownloadDelegate download:decideDestinationWithSuggestedFilename:]
	global -[DownloadDelegate download:shouldDecodeSourceDataOfMIMEType:]
	global -[DownloadDelegate download:didReceiveDataOfLength:]
	global -[DownloadDelegate download:didReceiveResponse:]
	global -[DownloadDelegate download:didReceiveAuthenticationChallenge:]
	global -[DownloadDelegate download:willSendRequest:redirectResponse:]
	global -[DownloadDelegate downloadDidBegin:]
	global -[DownloadDelegate dealloc]
	global -[DownloadDelegate progress:]
	global -[DownloadDelegate requestName:size:]
	global -[DownloadDelegate stop]
	global -[DownloadDelegate start:path:]
	global DeleteDLRequest
	global GetDLRequestName
	global GetDLRequestProgress
	global NewDLRequest
	global StartDLRequest
	global StopDLRequest


SECTION .text


;-[DownloadDelegate download:didFailWithError:]
-[DownloadDelegate download:didFailWithError:]:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov eax, [0xd5ce000]
	mov [esp+0x4], eax
	mov eax, [ebp+0x14]
	mov [esp], eax
	call objc_msgSend
	mov [ebx+0xc], eax
	test eax, eax
	jle -[DownloadDelegate download:didFailWithError:]_10
	neg eax
	mov [ebx+0xc], eax
	add esp, 0x14
	pop ebx
	pop ebp
	ret
-[DownloadDelegate download:didFailWithError:]_10:
	mov dword [ebx+0xc], 0xffffffff
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;-[DownloadDelegate downloadDidFinish:]
-[DownloadDelegate downloadDidFinish:]:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov dword [eax+0xc], 0x1
	pop ebp
	ret


;-[DownloadDelegate download:didCreateDestination:]
-[DownloadDelegate download:didCreateDestination:]:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x30
	mov esi, [ebp+0x8]
	mov eax, [esi+0x8]
	mov [esp+0x8], eax
	mov eax, [0xd5ce010]
	mov [esp+0x4], eax
	mov eax, [ebp+0x14]
	mov [esp], eax
	call objc_msgSend
	test eax, eax
	jz -[DownloadDelegate download:didCreateDestination:]_10
	mov eax, [0xd5ce00c]
	mov [esp+0x4], eax
	mov eax, [0xd5ce064]
	mov [esp], eax
	call objc_msgSend
	mov ebx, eax
	mov dword [esp+0x8], _cstring_aspyrbuilddepotc
	mov eax, [0xd5ce008]
	mov [esp+0x4], eax
	mov eax, [0xd5ce074]
	mov [esp], eax
	call objc_msgSend
	mov dword [esp+0x2c], 0x0
	mov dword [esp+0x28], 0x0
	mov dword [esp+0x24], 0x0
	mov dword [esp+0x20], 0x0
	mov dword [esp+0x1c], 0x0
	mov dword [esp+0x18], _cfstring_invalid_path
	mov dword [esp+0x14], 0xff
	mov [esp+0x10], eax
	mov [esp+0xc], esi
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov eax, [0xd5ce004]
	mov [esp+0x4], eax
	mov [esp], ebx
	call objc_msgSend
-[DownloadDelegate download:didCreateDestination:]_10:
	add esp, 0x30
	pop ebx
	pop esi
	pop ebp
	ret


;-[DownloadDelegate download:decideDestinationWithSuggestedFilename:]
-[DownloadDelegate download:decideDestinationWithSuggestedFilename:]:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x84
	mov dword [ebp-0x70], 0x0
	lea ebx, [ebp-0x60]
	mov [esp], ebx
	call objc_exception_try_enter
	mov [esp], ebx
	call _setjmp
	test eax, eax
	jz -[DownloadDelegate download:decideDestinationWithSuggestedFilename:]_10
	lea ebx, [ebp-0x60]
	mov [esp], ebx
	call objc_exception_extract
	mov [ebp-0x6c], eax
	mov [esp], ebx
	call objc_exception_try_enter
	mov [esp], ebx
	call _setjmp
	test eax, eax
	jnz -[DownloadDelegate download:decideDestinationWithSuggestedFilename:]_20
	mov eax, [ebp-0x6c]
	mov [esp+0x4], eax
	mov eax, [0xd5ce068]
	mov [esp], eax
	call objc_exception_match
	test eax, eax
	jnz -[DownloadDelegate download:decideDestinationWithSuggestedFilename:]_30
	mov eax, [ebp-0x6c]
	mov [ebp-0x70], eax
	lea eax, [ebp-0x60]
	mov [esp], eax
	call objc_exception_try_exit
	jmp -[DownloadDelegate download:decideDestinationWithSuggestedFilename:]_40
-[DownloadDelegate download:decideDestinationWithSuggestedFilename:]_10:
	mov edx, [ebp+0x10]
	mov eax, [ebp+0x8]
	mov dword [esp+0xc], 0x1
	mov eax, [eax+0x8]
	mov [esp+0x8], eax
	mov eax, [0xd5ce014]
	mov [esp+0x4], eax
	mov [esp], edx
	call objc_msgSend
-[DownloadDelegate download:decideDestinationWithSuggestedFilename:]_40:
	mov eax, [ebp-0x70]
	test eax, eax
	jz -[DownloadDelegate download:decideDestinationWithSuggestedFilename:]_50
	mov eax, [ebp-0x70]
	mov [esp], eax
	call objc_exception_throw
-[DownloadDelegate download:decideDestinationWithSuggestedFilename:]_20:
	lea eax, [ebp-0x60]
	mov [esp], eax
	call objc_exception_extract
	mov [ebp-0x70], eax
	jmp -[DownloadDelegate download:decideDestinationWithSuggestedFilename:]_40
-[DownloadDelegate download:decideDestinationWithSuggestedFilename:]_30:
	mov eax, [ebp+0x10]
	mov edx, [0xd5ce030]
	mov [esp+0x4], edx
	mov [esp], eax
	call objc_msgSend
	mov eax, [ebp+0x8]
	mov dword [eax+0xc], 0xffffffff
	jmp -[DownloadDelegate download:decideDestinationWithSuggestedFilename:]_40
-[DownloadDelegate download:decideDestinationWithSuggestedFilename:]_50:
	lea eax, [ebp-0x60]
	mov [esp], eax
	call objc_exception_try_exit
	add esp, 0x84
	pop ebx
	pop ebp
	ret


;-[DownloadDelegate download:shouldDecodeSourceDataOfMIMEType:]
-[DownloadDelegate download:shouldDecodeSourceDataOfMIMEType:]:
	push ebp
	mov ebp, esp
	xor eax, eax
	pop ebp
	ret


;-[DownloadDelegate download:didReceiveDataOfLength:]
-[DownloadDelegate download:didReceiveDataOfLength:]:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	mov eax, [ebp+0x14]
	add [edx+0x10], eax
	pop ebp
	ret


;-[DownloadDelegate download:didReceiveResponse:]
-[DownloadDelegate download:didReceiveResponse:]:
	push ebp
	mov ebp, esp
	pop ebp
	ret


;-[DownloadDelegate download:didReceiveAuthenticationChallenge:]
-[DownloadDelegate download:didReceiveAuthenticationChallenge:]:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [0xd5ce030]
	mov [esp+0x4], eax
	mov eax, [ebp+0x10]
	mov [esp], eax
	call objc_msgSend
	mov eax, [ebp+0x8]
	mov dword [eax+0xc], 0xffffffff
	leave
	ret


;-[DownloadDelegate download:willSendRequest:redirectResponse:]
-[DownloadDelegate download:willSendRequest:redirectResponse:]:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x14]
	pop ebp
	ret


;-[DownloadDelegate downloadDidBegin:]
-[DownloadDelegate downloadDidBegin:]:
	push ebp
	mov ebp, esp
	pop ebp
	ret


;-[DownloadDelegate dealloc]
-[DownloadDelegate dealloc]:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov ebx, [ebp+0x8]
	mov edx, [ebx+0x4]
	mov eax, [0xd5ce058]
	mov [esp+0x4], eax
	mov [esp], edx
	call objc_msgSend
	mov edx, [ebx+0x8]
	mov eax, [0xd5ce058]
	mov [esp+0x4], eax
	mov [esp], edx
	call objc_msgSend
	mov edx, [ebx+0x14]
	mov eax, [0xd5ce058]
	mov [esp+0x4], eax
	mov [esp], edx
	call objc_msgSend
	mov [ebp-0x10], ebx
	mov eax, [0xd5ce0a4]
	mov [ebp-0xc], eax
	lea edx, [ebp-0x10]
	mov eax, [0xd5ce018]
	mov [esp+0x4], eax
	mov [esp], edx
	call objc_msgSendSuper
	add esp, 0x24
	pop ebx
	pop ebp
	ret


;-[DownloadDelegate progress:]
-[DownloadDelegate progress:]:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	mov edx, [ecx+0x10]
	mov eax, [ebp+0x10]
	mov [eax], edx
	mov eax, [ecx+0xc]
	pop ebp
	ret


;-[DownloadDelegate requestName:size:]
-[DownloadDelegate requestName:size:]:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov ebx, [ebp+0x8]
	mov eax, [0xd5ce074]
	mov [ebp-0x1c], eax
	mov edx, [ebx+0x4]
	mov eax, [0xd5ce024]
	mov [esp+0x4], eax
	mov [esp], edx
	call objc_msgSend
	mov edi, eax
	mov edx, [ebx+0x4]
	mov eax, [0xd5ce028]
	mov [esp+0x4], eax
	mov [esp], edx
	call objc_msgSend
	mov esi, eax
	mov edx, [ebx+0x4]
	mov eax, [0xd5ce02c]
	mov [esp+0x4], eax
	mov [esp], edx
	call objc_msgSend
	mov [esp+0x14], edi
	mov [esp+0x10], esi
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cfstring_
	mov eax, [0xd5ce020]
	mov [esp+0x4], eax
	mov edx, [ebp-0x1c]
	mov [esp], edx
	call objc_msgSend
	mov edx, [0xd5ce01c]
	mov [esp+0x4], edx
	mov [esp], eax
	call objc_msgSend
	mov edx, [ebp+0x14]
	sub edx, 0x1
	mov [esp+0x8], edx
	mov [esp+0x4], eax
	mov eax, [ebp+0x10]
	mov [esp], eax
	call strncpy
	mov edx, [ebp+0x10]
	mov eax, [ebp+0x14]
	mov byte [edx+eax-0x1], 0x0
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;-[DownloadDelegate stop]
-[DownloadDelegate stop]:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov edx, [ebx+0x14]
	mov eax, [0xd5ce030]
	mov [esp+0x4], eax
	mov [esp], edx
	call objc_msgSend
	mov dword [ebx+0xc], 0x0
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;-[DownloadDelegate start:path:]
-[DownloadDelegate start:path:]:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov eax, [0xd5ce060]
	mov [esp+0x4], eax
	mov eax, [0xd5ce078]
	mov [esp], eax
	call objc_msgSend
	mov ebx, eax
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov eax, [0xd5ce044]
	mov [esp+0x4], eax
	mov eax, [0xd5ce074]
	mov [esp], eax
	call objc_msgSend
	mov [esp+0x8], eax
	mov eax, [0xd5ce040]
	mov [esp+0x4], eax
	mov [esp], ebx
	call objc_msgSend
	mov [esi+0x4], eax
	test eax, eax
	jz -[DownloadDelegate start:path:]_10
	mov eax, [0xd5ce060]
	mov [esp+0x4], eax
	mov eax, [0xd5ce074]
	mov [esp], eax
	call objc_msgSend
	mov edx, [ebp+0x14]
	mov [esp+0x8], edx
	mov edx, [0xd5ce03c]
	mov [esp+0x4], edx
	mov [esp], eax
	call objc_msgSend
	mov [esi+0x8], eax
	mov dword [esi+0xc], 0x0
	mov dword [esi+0x10], 0x0
	mov eax, [0xd5ce060]
	mov [esp+0x4], eax
	mov eax, [0xd5ce070]
	mov [esp], eax
	call objc_msgSend
	mov ebx, eax
	mov eax, [esi+0x4]
	mov [esp+0x8], eax
	mov eax, [0xd5ce038]
	mov [esp+0x4], eax
	mov eax, [0xd5ce06c]
	mov [esp], eax
	call objc_msgSend
	mov [esp+0xc], esi
	mov [esp+0x8], eax
	mov eax, [0xd5ce034]
	mov [esp+0x4], eax
	mov [esp], ebx
	call objc_msgSend
	mov [esi+0x14], eax
	test eax, eax
	jz -[DownloadDelegate start:path:]_10
	mov eax, 0x1
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
-[DownloadDelegate start:path:]_10:
	xor eax, eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret


;DeleteDLRequest
DeleteDLRequest:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov eax, [0xd5ce060]
	mov [esp+0x4], eax
	mov eax, [0xd5ce080]
	mov [esp], eax
	call objc_msgSend
	mov edx, [0xd5ce05c]
	mov [esp+0x4], edx
	mov [esp], eax
	call objc_msgSend
	mov ebx, eax
	test esi, esi
	jz DeleteDLRequest_10
	mov eax, [0xd5ce058]
	mov [esp+0x4], eax
	mov [esp], esi
	call objc_msgSend
DeleteDLRequest_10:
	mov eax, [0xd5ce058]
	mov [esp+0x4], eax
	mov [esp], ebx
	call objc_msgSend
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret


;GetDLRequestName
GetDLRequestName:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov esi, [ebp+0x8]
	mov eax, [ebp+0xc]
	mov [ebp-0x1c], eax
	mov edi, [ebp+0x10]
	mov eax, [0xd5ce060]
	mov [esp+0x4], eax
	mov eax, [0xd5ce080]
	mov [esp], eax
	call objc_msgSend
	mov edx, [0xd5ce05c]
	mov [esp+0x4], edx
	mov [esp], eax
	call objc_msgSend
	mov ebx, eax
	test esi, esi
	jz GetDLRequestName_10
	mov [esp+0xc], edi
	mov eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov eax, [0xd5ce04c]
	mov [esp+0x4], eax
	mov [esp], esi
	call objc_msgSend
GetDLRequestName_10:
	mov eax, [0xd5ce058]
	mov [ebp+0xc], eax
	mov [ebp+0x8], ebx
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp objc_msgSend


;GetDLRequestProgress
GetDLRequestProgress:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov eax, [0xd5ce060]
	mov [esp+0x4], eax
	mov eax, [0xd5ce080]
	mov [esp], eax
	call objc_msgSend
	mov edx, [0xd5ce05c]
	mov [esp+0x4], edx
	mov [esp], eax
	call objc_msgSend
	mov ebx, eax
	test esi, esi
	jz GetDLRequestProgress_10
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov eax, [0xd5ce048]
	mov [esp+0x4], eax
	mov [esp], esi
	call objc_msgSend
	mov esi, eax
	mov eax, [0xd5ce058]
	mov [esp+0x4], eax
	mov [esp], ebx
	call objc_msgSend
	mov eax, esi
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
GetDLRequestProgress_10:
	mov esi, 0xffffffff
	mov eax, [0xd5ce058]
	mov [esp+0x4], eax
	mov [esp], ebx
	call objc_msgSend
	mov eax, esi
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret


;NewDLRequest
NewDLRequest:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov eax, [0xd5ce060]
	mov [esp+0x4], eax
	mov eax, [0xd5ce080]
	mov [esp], eax
	call objc_msgSend
	mov edx, [0xd5ce05c]
	mov [esp+0x4], edx
	mov [esp], eax
	call objc_msgSend
	mov esi, eax
	mov eax, [0xd5ce060]
	mov [esp+0x4], eax
	mov eax, [0xd5ce07c]
	mov [esp], eax
	call objc_msgSend
	mov edx, [0xd5ce05c]
	mov [esp+0x4], edx
	mov [esp], eax
	call objc_msgSend
	mov ebx, eax
	mov eax, [0xd5ce058]
	mov [esp+0x4], eax
	mov [esp], esi
	call objc_msgSend
	mov eax, ebx
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret


;StartDLRequest
StartDLRequest:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov eax, [0xd5ce060]
	mov [esp+0x4], eax
	mov eax, [0xd5ce080]
	mov [esp], eax
	call objc_msgSend
	mov edx, [0xd5ce05c]
	mov [esp+0x4], edx
	mov [esp], eax
	call objc_msgSend
	mov ebx, eax
	test esi, esi
	jz StartDLRequest_10
	mov eax, [ebp+0x10]
	mov [esp+0xc], eax
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov eax, [0xd5ce054]
	mov [esp+0x4], eax
	mov [esp], esi
	call objc_msgSend
	movzx esi, al
StartDLRequest_10:
	mov eax, [0xd5ce058]
	mov [esp+0x4], eax
	mov [esp], ebx
	call objc_msgSend
	mov eax, esi
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret


;StopDLRequest
StopDLRequest:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov eax, [0xd5ce060]
	mov [esp+0x4], eax
	mov eax, [0xd5ce080]
	mov [esp], eax
	call objc_msgSend
	mov edx, [0xd5ce05c]
	mov [esp+0x4], edx
	mov [esp], eax
	call objc_msgSend
	mov ebx, eax
	test esi, esi
	jz StopDLRequest_10
	mov eax, [0xd5ce050]
	mov [esp+0x4], eax
	mov [esp], esi
	call objc_msgSend
StopDLRequest_10:
	mov eax, [0xd5ce058]
	mov [esp+0x4], eax
	mov [esp], ebx
	call objc_msgSend
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret


;Initialized global or static variables of mac_downloader:
SECTION .data


;Initialized constant data of mac_downloader:
SECTION .rdata


;Zero initialized global or static variables of mac_downloader:
SECTION .bss


;All CFStrings:

STRUC CFString
.isa: RESD 1
.flags: RESD 1
.str: RESD 1
.length: RESD 1
ENDSTRUC

SECTION .rdata
_cfstring_invalid_path:		ISTRUCT CFString
AT CFString.isa, dd 0
AT CFString.flags, dd 0x7c8
AT CFString.str dd _cstring_invalid_path
AT CFString.length dd 12
IEND

_cfstring_:		ISTRUCT CFString
AT CFString.isa, dd 0
AT CFString.flags, dd 0x7c8
AT CFString.str dd _cstring_
AT CFString.length dd 9
IEND




;All cstrings:
SECTION .rdata
_cstring_aspyrbuilddepotc:		db "/AspyrBuild/depot/CoD4/Mac/Main/mac_downloader.m",0
_cstring_invalid_path:		db "Invalid path",0
_cstring_:		db "%@://%@%@",0



;All constant floats and doubles:
SECTION .rdata

