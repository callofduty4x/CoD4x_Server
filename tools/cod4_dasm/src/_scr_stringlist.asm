;Imports of scr_stringlist:
	extern Sys_EnterCriticalSection
	extern MT_FreeIndex
	extern Sys_LeaveCriticalSection
	extern scrMemTreePub
	extern InterlockedCompareExchange
	extern InterlockedIncrement
	extern InterlockedDecrement
	extern tolower
	extern MT_AllocIndex
	extern memcpy
	extern Scr_DumpScriptThreads
	extern Scr_DumpScriptVariablesDefault
	extern Com_Error
	extern sprintf
	extern MT_Init

;Exports of scr_stringlist:
	global scrStringGlob
	global SL_FreeString
	global FindStringOfSize
	global SL_AddUser
	global SL_ConvertToLowercase
	global SL_GetStringOfSize
	global SL_GetString_
	global SL_TransferRefToUser
	global SL_Shutdown
	global SL_GetString
	global SL_FindString
	global Scr_SetString
	global SL_GetStringLen
	global Scr_AllocString
	global SL_AddRefToString
	global SL_ShutdownSystem
	global SL_TransferSystem
	global SL_ConvertToString
	global SL_GetStringForInt
	global SL_ConvertFromString
	global SL_GetStringForFloat
	global SL_RemoveRefToString
	global SL_GetLowercaseString
	global SL_GetStringForVector
	global SL_FindLowercaseString
	global SL_GetLowercaseString_
	global Scr_ShutdownGameStrings
	global SL_RemoveRefToStringOfSize
	global Scr_CreateCanonicalFilename
	global SL_Init


SECTION .text


;SL_FreeString(unsigned int, RefString*, unsigned int)
SL_FreeString:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov [ebp-0x20], eax
	mov [ebp-0x24], edx
	mov [ebp-0x28], ecx
	mov eax, edx
	add eax, 0x4
	cmp ecx, 0xff
	jbe SL_FreeString_10
	shr ecx, 0x2
	mov edx, 0x346e71a5
	mov eax, ecx
	mul edx
	shr edx, 0xc
	lea eax, [edx+edx*4]
	lea eax, [eax+eax*4]
	lea eax, [eax+eax*4]
	lea eax, [eax+eax*4]
	shl eax, 0x5
	sub eax, edx
	sub ecx, eax
	lea edi, [ecx+0x1]
SL_FreeString_90:
	lea esi, [edi*8]
	lea edx, [esi+scrStringGlob]
	mov [ebp-0x1c], edx
	mov dword [esp], 0x4
	call Sys_EnterCriticalSection
	mov eax, [ebp-0x24]
	cmp word [eax], 0x0
	jnz SL_FreeString_20
	mov eax, [ebp-0x28]
	add eax, 0x4
	mov [esp+0x4], eax
	mov eax, [ebp-0x20]
	mov [esp], eax
	call MT_FreeIndex
	movzx ebx, word [esi+scrStringGlob]
	lea edx, [ebx*8]
	mov [ebp-0x2c], edx
	mov ecx, edx
	add ecx, scrStringGlob
	mov edx, [ebp-0x20]
	mov eax, [ebp-0x1c]
	cmp edx, [eax+0x4]
	jz SL_FreeString_30
	mov eax, edx
	cmp edx, [ecx+0x4]
	jz SL_FreeString_40
	mov edx, eax
	jmp SL_FreeString_50
SL_FreeString_60:
	mov ebx, eax
	mov edx, [ebp-0x20]
SL_FreeString_50:
	movzx eax, word [ecx]
	lea ecx, [eax*8+scrStringGlob]
	cmp edx, [ecx+0x4]
	jnz SL_FreeString_60
	mov esi, ebx
	mov ebx, eax
SL_FreeString_120:
	mov edi, scrStringGlob
	mov eax, [esi*8+scrStringGlob]
	and eax, 0x30000
	movzx edx, word [ecx]
	or eax, edx
	mov [esi*8+scrStringGlob], eax
SL_FreeString_110:
	mov eax, [scrStringGlob]
	mov [ecx], eax
	mov dword [ecx+0x4], 0x0
	mov [edi+eax*8+0x4], ebx
	mov [scrStringGlob], ebx
SL_FreeString_20:
	mov dword [esp], 0x4
	call Sys_LeaveCriticalSection
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SL_FreeString_10:
	mov edx, [ebp-0x28]
	test edx, edx
	jz SL_FreeString_70
	mov ecx, eax
	xor ebx, ebx
	mov edx, [ebp-0x28]
	lea esi, [eax+edx]
SL_FreeString_80:
	mov eax, ebx
	shl eax, 0x5
	sub eax, ebx
	movsx edx, byte [ecx]
	lea ebx, [edx+eax]
	add ecx, 0x1
	cmp esi, ecx
	jnz SL_FreeString_80
	mov eax, 0x346e71a5
	mul ebx
	shr edx, 0xc
	lea eax, [edx+edx*4]
	lea eax, [eax+eax*4]
	lea eax, [eax+eax*4]
	lea eax, [eax+eax*4]
	shl eax, 0x5
	sub eax, edx
	mov edx, ebx
	sub edx, eax
	lea edi, [edx+0x1]
	jmp SL_FreeString_90
SL_FreeString_70:
	xor edx, edx
	lea edi, [edx+0x1]
	jmp SL_FreeString_90
SL_FreeString_30:
	cmp eax, ecx
	jz SL_FreeString_100
	mov edx, [ebp-0x2c]
	movzx eax, word [edx+scrStringGlob]
	or eax, 0x20000
	mov [esi+scrStringGlob], eax
	mov eax, [ecx+0x4]
	mov edx, [ebp-0x1c]
	mov [edx+0x4], eax
	mov [scrStringGlob+0x27104], edx
	mov edi, scrStringGlob
	jmp SL_FreeString_110
SL_FreeString_40:
	mov esi, edi
	jmp SL_FreeString_120
SL_FreeString_100:
	mov ebx, edi
	mov ecx, [ebp-0x1c]
	mov edi, scrStringGlob
	jmp SL_FreeString_110


;FindStringOfSize(char const*, unsigned int)
FindStringOfSize:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x7c
	mov [ebp-0x38], eax
	mov [ebp-0x3c], edx
	cmp edx, 0xff
	jbe FindStringOfSize_10
	mov ecx, edx
	shr ecx, 0x2
	mov edx, 0x346e71a5
	mov eax, ecx
	mul edx
	shr edx, 0xc
	lea eax, [edx+edx*4]
	lea eax, [eax+eax*4]
	lea eax, [eax+eax*4]
	lea eax, [eax+eax*4]
	shl eax, 0x5
	sub eax, edx
	sub ecx, eax
	add ecx, 0x1
	mov [ebp-0x2c], ecx
	mov ebx, ecx
FindStringOfSize_60:
	shl ebx, 0x3
	lea edx, [ebx+scrStringGlob]
	mov [ebp-0x34], edx
	mov dword [esp], 0x4
	call Sys_EnterCriticalSection
	mov ebx, [ebx+scrStringGlob]
	mov eax, ebx
	and eax, 0x30000
	cmp eax, 0x20000
	jz FindStringOfSize_20
FindStringOfSize_80:
	mov dword [esp], 0x4
	call Sys_LeaveCriticalSection
	mov dword [ebp-0x20], 0x0
FindStringOfSize_120:
	mov eax, [ebp-0x20]
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FindStringOfSize_10:
	mov ecx, [ebp-0x3c]
	test ecx, ecx
	jz FindStringOfSize_30
	mov ecx, [ebp-0x38]
	xor ebx, ebx
	mov edx, [ebp-0x3c]
	lea esi, [ecx+edx]
FindStringOfSize_40:
	mov eax, ebx
	shl eax, 0x5
	sub eax, ebx
	movsx edx, byte [ecx]
	lea ebx, [edx+eax]
	add ecx, 0x1
	cmp esi, ecx
	jnz FindStringOfSize_40
	mov eax, 0x346e71a5
	mul ebx
	shr edx, 0xc
	lea eax, [edx+edx*4]
	lea eax, [eax+eax*4]
	lea eax, [eax+eax*4]
	lea eax, [eax+eax*4]
	shl eax, 0x5
	sub eax, edx
	mov edx, ebx
	sub edx, eax
	jmp FindStringOfSize_50
FindStringOfSize_30:
	xor edx, edx
FindStringOfSize_50:
	add edx, 0x1
	mov [ebp-0x2c], edx
	mov ebx, edx
	jmp FindStringOfSize_60
FindStringOfSize_20:
	mov ecx, [ebp-0x34]
	mov ecx, [ecx+0x4]
	mov [ebp-0x20], ecx
	mov [ebp-0x44], ecx
	mov eax, scrMemTreePub
	mov eax, [eax]
	mov [ebp-0x1c], eax
	lea eax, [ecx+ecx*2]
	mov esi, [ebp-0x1c]
	lea eax, [esi+eax*4]
	movzx edx, byte [ebp-0x3c]
	mov [ebp-0x24], edx
	movzx ecx, byte [ebp-0x3c]
	cmp [eax+0x3], cl
	jz FindStringOfSize_70
FindStringOfSize_140:
	and ebx, 0xffff
	mov [ebp-0x28], ebx
	lea ebx, [ebx*8+scrStringGlob]
	cmp [ebp-0x34], ebx
	jz FindStringOfSize_80
	mov esi, [ebp-0x2c]
	mov [ebp-0x30], esi
	jmp FindStringOfSize_90
FindStringOfSize_100:
	movzx eax, word [ebx]
	lea ebx, [eax*8+scrStringGlob]
	cmp [ebp-0x34], ebx
	jz FindStringOfSize_80
	mov ecx, [ebp-0x28]
	mov [ebp-0x30], ecx
	mov [ebp-0x28], eax
FindStringOfSize_90:
	mov eax, [ebx+0x4]
	mov [ebp-0x40], eax
	lea eax, [eax+eax*2]
	mov ecx, [ebp-0x1c]
	lea edx, [ecx+eax*4]
	movzx eax, byte [edx+0x3]
	cmp [ebp-0x24], eax
	jnz FindStringOfSize_100
	add edx, 0x4
	cld
	mov esi, [ebp-0x3c]
	cmp esi, esi
	mov esi, edx
	mov edi, [ebp-0x38]
	mov ecx, [ebp-0x3c]
	repe cmpsb
	mov eax, 0x0
	jz FindStringOfSize_110
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
FindStringOfSize_110:
	test eax, eax
	jnz FindStringOfSize_100
	mov esi, [ebp-0x30]
	mov eax, [esi*8+scrStringGlob]
	and eax, 0x30000
	movzx edx, word [ebx]
	or eax, edx
	mov [esi*8+scrStringGlob], eax
	mov eax, [ebx]
	and eax, 0x30000
	mov ecx, [ebp-0x34]
	movzx edx, word [ecx]
	or eax, edx
	mov [ebx], eax
	mov eax, [ecx]
	and eax, 0x30000
	or eax, [ebp-0x28]
	mov [ecx], eax
	mov esi, [ebp-0x40]
	mov [ebp-0x20], esi
	mov eax, [ebp-0x44]
	mov [ebx+0x4], eax
	mov [ecx+0x4], esi
FindStringOfSize_150:
	mov dword [esp], 0x4
	call Sys_LeaveCriticalSection
	jmp FindStringOfSize_120
FindStringOfSize_70:
	add eax, 0x4
	cld
	mov esi, [ebp-0x3c]
	cmp esi, esi
	mov esi, eax
	mov edi, [ebp-0x38]
	mov ecx, [ebp-0x3c]
	repe cmpsb
	mov eax, 0x0
	jz FindStringOfSize_130
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
FindStringOfSize_130:
	test eax, eax
	jnz FindStringOfSize_140
	jmp FindStringOfSize_150
	nop


;SL_AddUser
SL_AddUser:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov eax, [ebp+0x8]
	mov ecx, [ebp+0xc]
	lea eax, [eax+eax*2]
	mov edx, scrMemTreePub
	mov edx, [edx]
	lea esi, [edx+eax*4]
	movzx eax, byte [esi+0x2]
	test eax, ecx
	jnz SL_AddUser_10
	mov edi, ecx
	shl edi, 0x10
SL_AddUser_20:
	mov ebx, [esi]
	mov [esp+0x8], ebx
	mov eax, edi
	or eax, ebx
	mov [esp+0x4], eax
	mov [esp], esi
	call InterlockedCompareExchange
	cmp ebx, eax
	jnz SL_AddUser_20
	mov [esp], esi
	call InterlockedIncrement
SL_AddUser_10:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;SL_ConvertToLowercase
SL_ConvertToLowercase:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x202c
	mov edi, [ebp+0x8]
	lea eax, [edi+edi*2]
	shl eax, 0x2
	mov [ebp-0x2024], eax
	mov eax, scrMemTreePub
	mov edx, [ebp-0x2024]
	add edx, [eax]
	movzx eax, byte [edx+0x3]
	sub al, 0x1
	movzx eax, al
	cmp byte [edx+eax+0x4], 0x0
	jnz SL_ConvertToLowercase_10
SL_ConvertToLowercase_70:
	lea esi, [eax+0x1]
	cmp esi, 0x2000
	ja SL_ConvertToLowercase_20
	test edi, edi
	jnz SL_ConvertToLowercase_30
	mov dword [ebp-0x2020], 0x0
	test esi, esi
	jnz SL_ConvertToLowercase_40
SL_ConvertToLowercase_90:
	mov eax, [ebp+0x10]
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	lea eax, [ebp-0x2018]
	mov [esp], eax
	call SL_GetStringOfSize
	mov [ebp-0x201c], eax
	mov ebx, [ebp-0x2024]
	mov eax, scrMemTreePub
	add ebx, [eax]
	movzx eax, byte [ebx+0x3]
	sub al, 0x1
	movzx eax, al
	cmp byte [ebx+eax+0x4], 0x0
	jnz SL_ConvertToLowercase_50
SL_ConvertToLowercase_80:
	lea esi, [eax+0x1]
	mov [esp], ebx
	call InterlockedDecrement
	shl eax, 0x10
	test eax, eax
	jnz SL_ConvertToLowercase_60
	mov ecx, esi
	mov edx, ebx
	mov eax, edi
	call SL_FreeString
SL_ConvertToLowercase_60:
	mov edi, [ebp-0x201c]
SL_ConvertToLowercase_20:
	mov eax, edi
	add esp, 0x202c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SL_ConvertToLowercase_10:
	add eax, 0x100
	cmp byte [edx+eax+0x4], 0x0
	jz SL_ConvertToLowercase_70
	add eax, 0x100
	cmp byte [edx+eax+0x4], 0x0
	jnz SL_ConvertToLowercase_10
	jmp SL_ConvertToLowercase_70
SL_ConvertToLowercase_50:
	add eax, 0x100
	cmp byte [ebx+eax+0x4], 0x0
	jz SL_ConvertToLowercase_80
	add eax, 0x100
	cmp byte [ebx+eax+0x4], 0x0
	jnz SL_ConvertToLowercase_50
	jmp SL_ConvertToLowercase_80
SL_ConvertToLowercase_30:
	add edx, 0x4
	mov [ebp-0x2020], edx
	test esi, esi
	jz SL_ConvertToLowercase_90
SL_ConvertToLowercase_40:
	xor ebx, ebx
SL_ConvertToLowercase_100:
	mov edx, [ebp-0x2020]
	movsx eax, byte [edx+ebx]
	mov [esp], eax
	call tolower
	mov [ebx+ebp-0x2018], al
	add ebx, 0x1
	cmp esi, ebx
	ja SL_ConvertToLowercase_100
	jmp SL_ConvertToLowercase_90
	nop


;SL_GetStringOfSize
SL_GetStringOfSize:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x8c
	cmp dword [ebp+0x10], 0xff
	jbe SL_GetStringOfSize_10
	mov ecx, [ebp+0x10]
	shr ecx, 0x2
	mov edx, 0x346e71a5
	mov eax, ecx
	mul edx
	shr edx, 0xc
	lea eax, [edx+edx*4]
	lea eax, [eax+eax*4]
	lea eax, [eax+eax*4]
	lea eax, [eax+eax*4]
	shl eax, 0x5
	sub eax, edx
	sub ecx, eax
	add ecx, 0x1
	mov [ebp-0x34], ecx
	mov ebx, ecx
SL_GetStringOfSize_100:
	shl ebx, 0x3
	lea edx, [ebx+scrStringGlob]
	mov [ebp-0x3c], edx
	movzx ecx, byte [ebp+0x10]
	mov [ebp-0x30], ecx
	mov dword [esp], 0x4
	call Sys_EnterCriticalSection
	mov esi, [ebx+scrStringGlob]
	mov [ebp-0x40], esi
	mov eax, esi
	and eax, 0x30000
	cmp eax, 0x20000
	jz SL_GetStringOfSize_20
	test eax, eax
	jz SL_GetStringOfSize_30
	movzx esi, word [ebp-0x40]
	mov [ebp-0x38], esi
	mov ebx, esi
	jmp SL_GetStringOfSize_40
SL_GetStringOfSize_50:
	mov ebx, eax
SL_GetStringOfSize_40:
	movzx eax, word [ebx*8+scrStringGlob]
	cmp [ebp-0x34], eax
	jnz SL_GetStringOfSize_50
	mov esi, [scrStringGlob]
	test esi, esi
	jz SL_GetStringOfSize_60
SL_GetStringOfSize_230:
	mov eax, [ebp+0x14]
	mov [esp+0x4], eax
	mov eax, [ebp+0x10]
	add eax, 0x4
	mov [esp], eax
	call MT_AllocIndex
	movzx edi, ax
	lea ecx, [esi*8]
	movzx edx, word [ecx+scrStringGlob]
	mov [scrStringGlob], edx
	mov eax, scrStringGlob
	mov dword [eax+edx*8+0x4], 0x0
	mov eax, [ebx*8+scrStringGlob]
	and eax, 0x30000
	or esi, eax
	mov [ebx*8+scrStringGlob], esi
	or dword [ebp-0x38], 0x10000
	mov edx, [ebp-0x38]
	mov [ecx+scrStringGlob], edx
	mov esi, [ebp-0x3c]
	mov eax, [esi+0x4]
	mov [ecx+scrStringGlob+0x4], eax
	mov edx, esi
SL_GetStringOfSize_110:
	or dword [ebp-0x34], 0x20000
	mov eax, [ebp-0x34]
	mov [edx], eax
SL_GetStringOfSize_210:
	mov ecx, [ebp-0x3c]
	mov [ecx+0x4], edi
	lea ebx, [edi+edi*2]
	mov eax, scrMemTreePub
	mov eax, [eax]
	lea ebx, [eax+ebx*4]
	lea eax, [ebx+0x4]
	mov esi, [ebp+0x10]
	mov [esp+0x8], esi
	mov edx, [ebp+0x8]
	mov [esp+0x4], edx
	mov [esp], eax
	call memcpy
	movzx ecx, byte [ebp+0xc]
	mov [ebx+0x2], cl
	mov word [ebx], 0x1
	movzx eax, byte [ebp-0x30]
	mov [ebx+0x3], al
SL_GetStringOfSize_170:
	mov dword [esp], 0x4
	call Sys_LeaveCriticalSection
	mov eax, edi
	add esp, 0x8c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SL_GetStringOfSize_10:
	mov ebx, [ebp+0x10]
	test ebx, ebx
	jz SL_GetStringOfSize_70
	mov ecx, [ebp+0x8]
	xor ebx, ebx
	mov edx, [ebp+0x10]
	lea esi, [ecx+edx]
SL_GetStringOfSize_80:
	mov eax, ebx
	shl eax, 0x5
	sub eax, ebx
	movsx edx, byte [ecx]
	lea ebx, [edx+eax]
	add ecx, 0x1
	cmp esi, ecx
	jnz SL_GetStringOfSize_80
	mov eax, 0x346e71a5
	mul ebx
	shr edx, 0xc
	lea eax, [edx+edx*4]
	lea eax, [eax+eax*4]
	lea eax, [eax+eax*4]
	lea eax, [eax+eax*4]
	shl eax, 0x5
	sub eax, edx
	mov edx, ebx
	sub edx, eax
	jmp SL_GetStringOfSize_90
SL_GetStringOfSize_70:
	xor edx, edx
SL_GetStringOfSize_90:
	add edx, 0x1
	mov [ebp-0x34], edx
	mov ebx, edx
	jmp SL_GetStringOfSize_100
SL_GetStringOfSize_30:
	mov eax, [ebp+0x14]
	mov [esp+0x4], eax
	mov eax, [ebp+0x10]
	add eax, 0x4
	mov [esp], eax
	call MT_AllocIndex
	movzx edi, ax
	mov ecx, [ebp-0x3c]
	mov edx, [ecx+0x4]
	movzx ecx, word [ebx+scrStringGlob]
	mov eax, [edx*8+scrStringGlob]
	and eax, 0x30000
	or eax, ecx
	mov [edx*8+scrStringGlob], eax
	mov [ecx*8+scrStringGlob+0x4], edx
	mov edx, [ebp-0x3c]
	jmp SL_GetStringOfSize_110
SL_GetStringOfSize_20:
	mov eax, scrMemTreePub
	mov eax, [eax]
	mov [ebp-0x2c], eax
	mov ecx, [ebp-0x3c]
	mov ecx, [ecx+0x4]
	mov [ebp-0x48], ecx
	lea eax, [ecx+ecx*2]
	mov esi, [ebp-0x2c]
	lea eax, [esi+eax*4]
	mov [ebp-0x24], eax
	mov edx, eax
	movzx eax, byte [eax+0x3]
	cmp [ebp-0x30], eax
	jz SL_GetStringOfSize_120
SL_GetStringOfSize_250:
	movzx eax, word [ebp-0x40]
	mov [ebp-0x1c], eax
	lea ebx, [eax*8+scrStringGlob]
	cmp [ebp-0x3c], ebx
	jz SL_GetStringOfSize_130
	mov edx, [ebp-0x34]
	mov [ebp-0x28], edx
	mov ecx, [ebp+0xc]
	shl ecx, 0x10
	mov [ebp-0x4c], ecx
	jmp SL_GetStringOfSize_140
SL_GetStringOfSize_150:
	movzx eax, word [ebx]
	lea ebx, [eax*8+scrStringGlob]
	cmp [ebp-0x3c], ebx
	jz SL_GetStringOfSize_130
	mov edx, [ebp-0x1c]
	mov [ebp-0x28], edx
	mov [ebp-0x1c], eax
SL_GetStringOfSize_140:
	mov esi, [ebx+0x4]
	mov [ebp-0x44], esi
	lea eax, [esi+esi*2]
	mov edx, [ebp-0x2c]
	lea eax, [edx+eax*4]
	mov [ebp-0x20], eax
	mov ecx, eax
	movzx eax, byte [eax+0x3]
	cmp [ebp-0x30], eax
	jnz SL_GetStringOfSize_150
	add ecx, 0x4
	mov [ebp-0x5c], ecx
	cld
	mov esi, [ebp+0x10]
	cmp esi, esi
	mov esi, ecx
	mov edi, [ebp+0x8]
	mov ecx, [ebp+0x10]
	repe cmpsb
	mov eax, 0x0
	jz SL_GetStringOfSize_160
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
SL_GetStringOfSize_160:
	test eax, eax
	jnz SL_GetStringOfSize_150
	mov ecx, [ebp-0x28]
	mov eax, [ecx*8+scrStringGlob]
	and eax, 0x30000
	movzx edx, word [ebx]
	or eax, edx
	mov [ecx*8+scrStringGlob], eax
	mov eax, [ebx]
	and eax, 0x30000
	mov esi, [ebp-0x3c]
	movzx edx, word [esi]
	or eax, edx
	mov [ebx], eax
	mov eax, [esi]
	and eax, 0x30000
	or eax, [ebp-0x1c]
	mov [esi], eax
	mov edi, [ebp-0x44]
	mov eax, [ebp-0x48]
	mov [ebx+0x4], eax
	mov [esi+0x4], edi
	mov edx, [ebp-0x20]
	movzx eax, byte [edx+0x2]
	test [ebp+0xc], eax
	jnz SL_GetStringOfSize_170
	mov ecx, edx
	jmp SL_GetStringOfSize_180
SL_GetStringOfSize_190:
	mov ecx, [ebp-0x20]
SL_GetStringOfSize_180:
	mov ebx, [ecx]
	mov [esp+0x8], ebx
	mov eax, [ebp-0x4c]
	or eax, ebx
	mov [esp+0x4], eax
	mov [esp], ecx
	call InterlockedCompareExchange
	cmp ebx, eax
	jnz SL_GetStringOfSize_190
	mov esi, [ebp-0x20]
	mov [esp], esi
	call InterlockedIncrement
	jmp SL_GetStringOfSize_170
SL_GetStringOfSize_130:
	mov ebx, [scrStringGlob]
	test ebx, ebx
	jz SL_GetStringOfSize_200
SL_GetStringOfSize_220:
	mov ecx, [ebp+0x14]
	mov [esp+0x4], ecx
	mov eax, [ebp+0x10]
	add eax, 0x4
	mov [esp], eax
	call MT_AllocIndex
	movzx edi, ax
	lea ecx, [ebx*8]
	movzx edx, word [ecx+scrStringGlob]
	mov [scrStringGlob], edx
	mov eax, scrStringGlob
	mov dword [eax+edx*8+0x4], 0x0
	mov esi, [ebp-0x3c]
	movzx eax, word [esi]
	or eax, 0x10000
	mov [ecx+scrStringGlob], eax
	mov eax, [esi]
	and eax, 0x30000
	movzx edx, bx
	or eax, edx
	mov [esi], eax
	mov eax, [esi+0x4]
	mov [ecx+scrStringGlob+0x4], eax
	jmp SL_GetStringOfSize_210
SL_GetStringOfSize_200:
	call Scr_DumpScriptThreads
	call Scr_DumpScriptVariablesDefault
	mov dword [esp+0x4], _cstring_exceeded_maximum
	mov dword [esp], 0x2
	call Com_Error
	jmp SL_GetStringOfSize_220
SL_GetStringOfSize_60:
	call Scr_DumpScriptThreads
	call Scr_DumpScriptVariablesDefault
	mov dword [esp+0x4], _cstring_exceeded_maximum1
	mov dword [esp], 0x2
	call Com_Error
	jmp SL_GetStringOfSize_230
SL_GetStringOfSize_120:
	mov ebx, edx
	add ebx, 0x4
	cld
	mov ecx, [ebp+0x10]
	cmp ecx, ecx
	mov esi, ebx
	mov edi, [ebp+0x8]
	repe cmpsb
	mov ebx, 0x0
	jz SL_GetStringOfSize_240
	movzx ebx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub ebx, ecx
SL_GetStringOfSize_240:
	test ebx, ebx
	jnz SL_GetStringOfSize_250
	movzx eax, byte [edx+0x2]
	test [ebp+0xc], eax
	jnz SL_GetStringOfSize_260
	mov esi, [ebp+0xc]
	shl esi, 0x10
SL_GetStringOfSize_270:
	mov eax, [ebp-0x24]
	mov ebx, [eax]
	mov [esp+0x8], ebx
	mov eax, esi
	or eax, ebx
	mov [esp+0x4], eax
	mov edx, [ebp-0x24]
	mov [esp], edx
	call InterlockedCompareExchange
	cmp ebx, eax
	jnz SL_GetStringOfSize_270
	mov ecx, [ebp-0x24]
	mov [esp], ecx
	call InterlockedIncrement
	mov esi, [ebp-0x3c]
	mov esi, [esi+0x4]
	mov [ebp-0x48], esi
	mov edi, esi
	jmp SL_GetStringOfSize_170
SL_GetStringOfSize_260:
	mov edi, [ebp-0x48]
	jmp SL_GetStringOfSize_170


;SL_GetString_
SL_GetString_:
	push ebp
	mov ebp, esp
	push edi
	sub esp, 0x14
	mov edx, [ebp+0x8]
	mov eax, [ebp+0x10]
	mov [esp+0xc], eax
	mov edi, edx
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	repne scasb
	not ecx
	mov [esp+0x8], ecx
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], edx
	call SL_GetStringOfSize
	add esp, 0x14
	pop edi
	pop ebp
	ret


;SL_TransferRefToUser
SL_TransferRefToUser:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov eax, [ebp+0x8]
	mov ecx, [ebp+0xc]
	lea eax, [eax+eax*2]
	mov edx, scrMemTreePub
	mov edx, [edx]
	lea esi, [edx+eax*4]
	movzx eax, byte [esi+0x2]
	test ecx, eax
	jnz SL_TransferRefToUser_10
	mov edi, ecx
	shl edi, 0x10
SL_TransferRefToUser_20:
	mov ebx, [esi]
	mov [esp+0x8], ebx
	mov eax, edi
	or eax, ebx
	mov [esp+0x4], eax
	mov [esp], esi
	call InterlockedCompareExchange
	cmp ebx, eax
	jnz SL_TransferRefToUser_20
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SL_TransferRefToUser_10:
	mov [esp], esi
	call InterlockedDecrement
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;SL_Shutdown()
SL_Shutdown:
	push ebp
	mov ebp, esp
	mov byte [scrStringGlob+0x27100], 0x0
	pop ebp
	ret


;SL_GetString(char const*, unsigned int)
SL_GetString:
	push ebp
	mov ebp, esp
	push edi
	sub esp, 0x14
	mov edx, [ebp+0x8]
	mov dword [esp+0xc], 0x6
	mov edi, edx
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	repne scasb
	not ecx
	mov [esp+0x8], ecx
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], edx
	call SL_GetStringOfSize
	add esp, 0x14
	pop edi
	pop ebp
	ret
	nop


;SL_FindString(char const*)
SL_FindString:
	push ebp
	mov ebp, esp
	push edi
	push ebx
	mov ebx, [ebp+0x8]
	mov edi, ebx
	cld
	mov ecx, 0xffffffff
	xor edx, edx
	mov eax, edx
	repne scasb
	not ecx
	mov edx, ecx
	mov eax, ebx
	pop ebx
	pop edi
	pop ebp
	jmp FindStringOfSize


;Scr_SetString(unsigned short*, unsigned int)
Scr_SetString:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov esi, [ebp+0xc]
	test esi, esi
	jnz Scr_SetString_10
Scr_SetString_60:
	mov edx, [ebp+0x8]
	movzx eax, word [edx]
	test ax, ax
	jz Scr_SetString_20
	movzx esi, ax
	lea edx, [esi+esi*2]
	mov eax, scrMemTreePub
	mov eax, [eax]
	lea ebx, [eax+edx*4]
	movzx eax, byte [ebx+0x3]
	sub al, 0x1
	movzx eax, al
	cmp byte [ebx+eax+0x4], 0x0
	jz Scr_SetString_30
Scr_SetString_40:
	add eax, 0x100
	cmp byte [ebx+eax+0x4], 0x0
	jnz Scr_SetString_40
Scr_SetString_30:
	lea edi, [eax+0x1]
	mov [esp], ebx
	call InterlockedDecrement
	shl eax, 0x10
	test eax, eax
	jz Scr_SetString_50
	mov eax, [ebp+0x8]
	movzx edx, word [ebp+0xc]
	mov [eax], dx
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Scr_SetString_50:
	mov ecx, edi
	mov edx, ebx
	mov eax, esi
	call SL_FreeString
	mov eax, [ebp+0x8]
	movzx edx, word [ebp+0xc]
	mov [eax], dx
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Scr_SetString_20:
	mov eax, edx
	movzx edx, word [ebp+0xc]
	mov [eax], dx
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Scr_SetString_10:
	mov edx, [ebp+0xc]
	lea eax, [edx+edx*2]
	mov edx, scrMemTreePub
	mov edx, [edx]
	lea eax, [edx+eax*4]
	mov [esp], eax
	call InterlockedIncrement
	jmp Scr_SetString_60
	nop


;SL_GetStringLen(unsigned int)
SL_GetStringLen:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	lea eax, [eax+eax*2]
	mov edx, scrMemTreePub
	mov edx, [edx]
	lea edx, [edx+eax*4]
	movzx eax, byte [edx+0x3]
	sub al, 0x1
	movzx ecx, al
	cmp byte [edx+ecx+0x4], 0x0
	jz SL_GetStringLen_10
	lea edx, [edx+ecx+0x4]
SL_GetStringLen_20:
	add ecx, 0x100
	movzx eax, byte [edx+0x100]
	add edx, 0x100
	test al, al
	jnz SL_GetStringLen_20
SL_GetStringLen_10:
	mov eax, ecx
	pop ebp
	ret
	nop


;Scr_AllocString(char const*, int)
Scr_AllocString:
	push ebp
	mov ebp, esp
	push edi
	sub esp, 0x14
	mov edx, [ebp+0x8]
	mov dword [esp+0xc], 0x6
	mov edi, edx
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	repne scasb
	not ecx
	mov [esp+0x8], ecx
	mov dword [esp+0x4], 0x1
	mov [esp], edx
	call SL_GetStringOfSize
	add esp, 0x14
	pop edi
	pop ebp
	ret


;SL_AddRefToString(unsigned int)
SL_AddRefToString:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	lea eax, [eax+eax*2]
	mov edx, scrMemTreePub
	mov edx, [edx]
	lea eax, [edx+eax*4]
	mov [esp], eax
	call InterlockedIncrement
	leave
	ret
	nop


;SL_ShutdownSystem(unsigned int)
SL_ShutdownSystem:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov eax, [ebp+0x8]
	mov [ebp-0x20], eax
	mov dword [esp], 0x4
	call Sys_EnterCriticalSection
	mov dword [ebp-0x1c], 0x1
	jmp SL_ShutdownSystem_10
SL_ShutdownSystem_40:
	lea edi, [eax+0x1]
	mov [esp], ebx
	call InterlockedDecrement
	shl eax, 0x10
	test eax, eax
	jz SL_ShutdownSystem_20
	mov edi, [scrStringGlob+0x27104]
	test edi, edi
	jz SL_ShutdownSystem_30
SL_ShutdownSystem_10:
	mov eax, [ebp-0x1c]
	shl eax, 0x3
	lea ebx, [eax+scrStringGlob]
	test dword [eax+scrStringGlob], 0x30000
	jz SL_ShutdownSystem_30
	mov eax, [ebx+0x4]
	lea eax, [eax+eax*2]
	mov ecx, scrMemTreePub
	mov edx, [ecx]
	lea ecx, [edx+eax*4]
	movzx edx, byte [ecx+0x2]
	movzx eax, dl
	test [ebp-0x20], eax
	jz SL_ShutdownSystem_30
	movzx eax, byte [ebp-0x20]
	not al
	and dl, al
	mov [ecx+0x2], dl
	mov dword [scrStringGlob+0x27104], 0x0
	mov esi, [ebx+0x4]
	lea edx, [esi+esi*2]
	mov ecx, scrMemTreePub
	mov eax, [ecx]
	lea ebx, [eax+edx*4]
	movzx eax, byte [ebx+0x3]
	sub al, 0x1
	movzx eax, al
	cmp byte [ebx+eax+0x4], 0x0
	jz SL_ShutdownSystem_40
SL_ShutdownSystem_50:
	add eax, 0x100
	cmp byte [ebx+eax+0x4], 0x0
	jz SL_ShutdownSystem_40
	add eax, 0x100
	cmp byte [ebx+eax+0x4], 0x0
	jnz SL_ShutdownSystem_50
	jmp SL_ShutdownSystem_40
SL_ShutdownSystem_20:
	mov ecx, edi
	mov edx, ebx
	mov eax, esi
	call SL_FreeString
	mov edi, [scrStringGlob+0x27104]
	test edi, edi
	jnz SL_ShutdownSystem_10
SL_ShutdownSystem_30:
	add dword [ebp-0x1c], 0x1
	cmp dword [ebp-0x1c], 0x4e20
	jnz SL_ShutdownSystem_10
	mov dword [ebp+0x8], 0x4
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp Sys_LeaveCriticalSection
	nop


;SL_TransferSystem(unsigned int, unsigned int)
SL_TransferSystem:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edi, [ebp+0x8]
	mov eax, [ebp+0xc]
	mov [ebp-0x1c], eax
	mov dword [esp], 0x4
	call Sys_EnterCriticalSection
	mov esi, 0x1
	mov ebx, edi
	not bl
	mov [ebp-0x1d], bl
	mov ecx, 0x8
SL_TransferSystem_20:
	test dword [ecx+scrStringGlob], 0x30000
	jz SL_TransferSystem_10
	mov eax, [ecx+scrStringGlob+0x4]
	lea eax, [eax+eax*2]
	mov ebx, scrMemTreePub
	mov edx, [ebx]
	lea ebx, [edx+eax*4]
	movzx edx, byte [ebx+0x2]
	movzx eax, dl
	test edi, eax
	jz SL_TransferSystem_10
	and dl, [ebp-0x1d]
	or dl, [ebp-0x1c]
	mov [ebx+0x2], dl
SL_TransferSystem_10:
	add esi, 0x1
	add ecx, 0x8
	cmp esi, 0x4e20
	jnz SL_TransferSystem_20
	mov dword [ebp+0x8], 0x4
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp Sys_LeaveCriticalSection


;SL_ConvertToString(unsigned int)
SL_ConvertToString:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	test eax, eax
	jz SL_ConvertToString_10
	lea eax, [eax+eax*2]
	mov edx, scrMemTreePub
	mov edx, [edx]
	lea eax, [edx+eax*4+0x4]
SL_ConvertToString_10:
	pop ebp
	ret
	nop
	add [eax], al


;SL_GetStringForInt(int)
SL_GetStringForInt:
	push ebp
	mov ebp, esp
	push edi
	push ebx
	sub esp, 0x90
	mov eax, [ebp+0x8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_i
	lea ebx, [ebp-0x88]
	mov [esp], ebx
	call sprintf
	mov dword [esp+0xc], 0xf
	mov edi, ebx
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	repne scasb
	not ecx
	mov [esp+0x8], ecx
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call SL_GetStringOfSize
	add esp, 0x90
	pop ebx
	pop edi
	pop ebp
	ret


;SL_ConvertFromString(char const*)
SL_ConvertFromString:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	sub ecx, 0x4
	mov edx, scrMemTreePub
	sub ecx, [edx]
	mov edx, 0x2aaaaaab
	mov eax, ecx
	imul edx
	sar edx, 1
	mov eax, ecx
	sar eax, 0x1f
	sub edx, eax
	mov eax, edx
	pop ebp
	ret
	nop


;SL_GetStringForFloat(float)
SL_GetStringForFloat:
	push ebp
	mov ebp, esp
	push edi
	push ebx
	sub esp, 0x90
	cvtss2sd xmm0, [ebp+0x8]
	movsd [esp+0x8], xmm0
	mov dword [esp+0x4], _cstring_g
	lea ebx, [ebp-0x88]
	mov [esp], ebx
	call sprintf
	mov dword [esp+0xc], 0xf
	mov edi, ebx
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	repne scasb
	not ecx
	mov [esp+0x8], ecx
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call SL_GetStringOfSize
	add esp, 0x90
	pop ebx
	pop edi
	pop ebp
	ret


;SL_RemoveRefToString(unsigned int)
SL_RemoveRefToString:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov esi, [ebp+0x8]
	lea edx, [esi+esi*2]
	mov eax, scrMemTreePub
	mov eax, [eax]
	lea ebx, [eax+edx*4]
	movzx eax, byte [ebx+0x3]
	sub al, 0x1
	movzx eax, al
	cmp byte [ebx+eax+0x4], 0x0
	jnz SL_RemoveRefToString_10
SL_RemoveRefToString_30:
	lea edi, [eax+0x1]
	mov [esp], ebx
	call InterlockedDecrement
	shl eax, 0x10
	test eax, eax
	jz SL_RemoveRefToString_20
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SL_RemoveRefToString_10:
	add eax, 0x100
	cmp byte [ebx+eax+0x4], 0x0
	jz SL_RemoveRefToString_30
	add eax, 0x100
	cmp byte [ebx+eax+0x4], 0x0
	jnz SL_RemoveRefToString_10
	jmp SL_RemoveRefToString_30
SL_RemoveRefToString_20:
	mov ecx, edi
	mov edx, ebx
	mov eax, esi
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp SL_FreeString
	nop


;SL_GetLowercaseString(char const*, unsigned int)
SL_GetLowercaseString:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x201c
	mov esi, [ebp+0x8]
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, esi
	repne scasb
	mov ebx, ecx
	not ebx
	cmp ebx, 0x2000
	ja SL_GetLowercaseString_10
	test ebx, ebx
	jnz SL_GetLowercaseString_20
SL_GetLowercaseString_40:
	mov dword [esp+0xc], 0x6
	mov [esp+0x8], ebx
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	lea eax, [ebp-0x2018]
	mov [esp], eax
	call SL_GetStringOfSize
	add esp, 0x201c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SL_GetLowercaseString_20:
	xor edi, edi
SL_GetLowercaseString_30:
	movsx eax, byte [esi+edi]
	mov [esp], eax
	call tolower
	mov [edi+ebp-0x2018], al
	add edi, 0x1
	cmp ebx, edi
	jnz SL_GetLowercaseString_30
	jmp SL_GetLowercaseString_40
SL_GetLowercaseString_10:
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_max_string_lengt
	mov dword [esp], 0x2
	call Com_Error
	xor eax, eax
	add esp, 0x201c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;SL_GetStringForVector(float const*)
SL_GetStringForVector:
	push ebp
	mov ebp, esp
	push edi
	push ebx
	sub esp, 0xa0
	mov eax, [ebp+0x8]
	cvtss2sd xmm0, [eax+0x8]
	movsd [esp+0x18], xmm0
	cvtss2sd xmm0, [eax+0x4]
	movsd [esp+0x10], xmm0
	cvtss2sd xmm0, [eax]
	movsd [esp+0x8], xmm0
	mov dword [esp+0x4], _cstring_g_g_g
	lea ebx, [ebp-0x88]
	mov [esp], ebx
	call sprintf
	mov dword [esp+0xc], 0xf
	mov edi, ebx
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	repne scasb
	not ecx
	mov [esp+0x8], ecx
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call SL_GetStringOfSize
	add esp, 0xa0
	pop ebx
	pop edi
	pop ebp
	ret


;SL_FindLowercaseString(char const*)
SL_FindLowercaseString:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x201c
	mov esi, [ebp+0x8]
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, esi
	repne scasb
	mov ebx, ecx
	not ebx
	cmp ebx, 0x2000
	jg SL_FindLowercaseString_10
	test ebx, ebx
	jg SL_FindLowercaseString_20
SL_FindLowercaseString_40:
	mov edx, ebx
	lea eax, [ebp-0x2018]
	call FindStringOfSize
	add esp, 0x201c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SL_FindLowercaseString_20:
	xor edi, edi
SL_FindLowercaseString_30:
	movsx eax, byte [esi+edi]
	mov [esp], eax
	call tolower
	mov [edi+ebp-0x2018], al
	add edi, 0x1
	cmp ebx, edi
	jnz SL_FindLowercaseString_30
	jmp SL_FindLowercaseString_40
SL_FindLowercaseString_10:
	xor eax, eax
	add esp, 0x201c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;SL_GetLowercaseString_(char const*, unsigned int, int)
SL_GetLowercaseString_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x201c
	mov esi, [ebp+0x8]
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, esi
	repne scasb
	mov ebx, ecx
	not ebx
	cmp ebx, 0x2000
	ja SL_GetLowercaseString__10
	test ebx, ebx
	jnz SL_GetLowercaseString__20
SL_GetLowercaseString__40:
	mov eax, [ebp+0x10]
	mov [esp+0xc], eax
	mov [esp+0x8], ebx
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	lea eax, [ebp-0x2018]
	mov [esp], eax
	call SL_GetStringOfSize
	add esp, 0x201c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SL_GetLowercaseString__20:
	xor edi, edi
SL_GetLowercaseString__30:
	movsx eax, byte [esi+edi]
	mov [esp], eax
	call tolower
	mov [edi+ebp-0x2018], al
	add edi, 0x1
	cmp ebx, edi
	jnz SL_GetLowercaseString__30
	jmp SL_GetLowercaseString__40
SL_GetLowercaseString__10:
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_max_string_lengt
	mov dword [esp], 0x2
	call Com_Error
	xor eax, eax
	add esp, 0x201c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Scr_ShutdownGameStrings()
Scr_ShutdownGameStrings:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp], 0x1
	call SL_ShutdownSystem
	leave
	ret


;SL_RemoveRefToStringOfSize(unsigned int, unsigned int)
SL_RemoveRefToStringOfSize:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov ebx, [ebp+0x8]
	mov edi, [ebp+0xc]
	lea edx, [ebx+ebx*2]
	mov eax, scrMemTreePub
	mov eax, [eax]
	lea esi, [eax+edx*4]
	mov [esp], esi
	call InterlockedDecrement
	shl eax, 0x10
	test eax, eax
	jz SL_RemoveRefToStringOfSize_10
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SL_RemoveRefToStringOfSize_10:
	mov ecx, edi
	mov edx, esi
	mov eax, ebx
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp SL_FreeString
	nop


;Scr_CreateCanonicalFilename(char const*)
Scr_CreateCanonicalFilename:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x42c
	mov ebx, [ebp+0x8]
	lea eax, [ebp-0x418]
	mov [ebp-0x41c], eax
	mov esi, 0x400
Scr_CreateCanonicalFilename_10:
	movzx eax, byte [ebx]
	movsx edi, al
	add ebx, 0x1
	cmp al, 0x5c
	jz Scr_CreateCanonicalFilename_10
	cmp al, 0x2f
	jz Scr_CreateCanonicalFilename_10
Scr_CreateCanonicalFilename_40:
	cmp edi, 0x1f
	ja Scr_CreateCanonicalFilename_20
	test edi, edi
	jnz Scr_CreateCanonicalFilename_10
	mov eax, [ebp-0x41c]
	mov byte [eax], 0x0
	mov dword [esp+0xc], 0x7
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	lea edi, [ebp-0x418]
	repne scasb
	not ecx
	mov [esp+0x8], ecx
	mov dword [esp+0x4], 0x0
	lea edx, [ebp-0x418]
	mov [esp], edx
	call SL_GetStringOfSize
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Scr_CreateCanonicalFilename_50:
	mov edi, 0x2f
Scr_CreateCanonicalFilename_20:
	mov [esp], edi
	call tolower
	mov edx, [ebp-0x41c]
	mov [edx], al
	add edx, 0x1
	mov [ebp-0x41c], edx
	sub esi, 0x1
	jz Scr_CreateCanonicalFilename_30
Scr_CreateCanonicalFilename_60:
	cmp edi, 0x2f
	jz Scr_CreateCanonicalFilename_10
	movzx eax, byte [ebx]
	movsx edi, al
	add ebx, 0x1
	cmp al, 0x5c
	jnz Scr_CreateCanonicalFilename_40
	jmp Scr_CreateCanonicalFilename_50
Scr_CreateCanonicalFilename_30:
	mov dword [esp+0xc], 0x0
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_filename_s_excee
	mov dword [esp], 0x2
	call Com_Error
	jmp Scr_CreateCanonicalFilename_60


;SL_Init()
SL_Init:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	call MT_Init
	mov dword [esp], 0x4
	call Sys_EnterCriticalSection
	mov dword [scrStringGlob], 0x0
	xor ecx, ecx
	mov edx, 0x1
	jmp SL_Init_10
SL_Init_20:
	mov edx, eax
SL_Init_10:
	lea eax, [edx*8]
	mov dword [eax+scrStringGlob], 0x0
	or [ecx*8+scrStringGlob], edx
	mov [eax+scrStringGlob+0x4], ecx
	lea eax, [edx+0x1]
	mov ecx, edx
	cmp eax, 0x4e20
	jnz SL_Init_20
	mov [scrStringGlob+0x4], edx
	mov byte [scrStringGlob+0x27100], 0x1
	mov dword [esp], 0x4
	call Sys_LeaveCriticalSection
	leave
	ret
	nop


;Initialized global or static variables of scr_stringlist:
SECTION .data


;Initialized constant data of scr_stringlist:
SECTION .rdata


;Zero initialized global or static variables of scr_stringlist:
SECTION .bss
scrStringGlob: resb 0x27180


;All cstrings:
SECTION .rdata
_cstring_exceeded_maximum:		db 015h,"exceeded maximum number of script strings (increase STRINGLIST_SIZE)",0ah,0
_cstring_exceeded_maximum1:		db 015h,"exceeded maximum number of script strings",0ah,0
_cstring_i:		db "%i",0
_cstring_g:		db "%g",0
_cstring_max_string_lengt:		db "max string length exceeded: ",22h,"%s",22h,0
_cstring_g_g_g:		db "(%g, %g, %g)",0
_cstring_filename_s_excee:		db 015h,"Filename ",27h,"%s",27h," exceeds maximum length of %d",0



;All constant floats and doubles:
SECTION .rdata

