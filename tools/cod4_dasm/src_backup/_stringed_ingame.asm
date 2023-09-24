;Imports of stringed_ingame:
	extern strncpy
	extern strchr
	extern _ZNSs9_M_mutateEmmm
	extern Z_FreeInternal
	extern _ZN9__gnu_cxx18__exchange_and_addEPVii
	extern _ZNSs4_Rep10_M_destroyERKSaIcE
	extern _Unwind_Resume
	extern _Z16SE_BuildFileListPKcRSs
	extern _ZNSsC1EPKcRKSaIcE
	extern Z_MallocInternal
	extern _Z15SE_LoadFileDataPKc
	extern _Z2vaPKcz
	extern _Z24SE_FreeFileDataAfterLoadPh
	extern _ZNSs6assignEPKcm
	extern _ZSt20__throw_out_of_rangePKc
	extern strcpy
	extern strrchr
	extern _Z8I_struprPc
	extern _ZNSs6assignERKSs
	extern _ZNSs12_M_leak_hardEv
	extern _ZNKSs4findEPKcmm
	extern _ZNSsC1ERKSs
	extern isspace
	extern strstr
	extern _Z10I_strnicmpPKcS0_i
	extern atoi
	extern memcpy
	extern _Z9I_stricmpPKcS0_
	extern _ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base
	extern _ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base
	extern _ZdlPv
	extern _Znwm
	extern _ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_
	extern __cxa_begin_catch
	extern __cxa_rethrow
	extern __cxa_end_catch

;Exports of stringed_ingame:
	global _ZZN16CStringEdPackage20Filename_WithoutPathEPKcE7sString
	global _ZZN16CStringEdPackage19Filename_WithoutExtEPKcE7sString
	global _ZZ15SE_GetFoundFileRSsE5sTemp
	global _Z15SE_GetFoundFileRSs
	global _ZZN16CStringEdPackage9ParseLineEPKchE5C.236
	global _Z11SE_ShutDownv
	global _Z15SE_LoadLanguageh
	global _Z20SE_GetString_LoadObjPKc
	global _Z7SE_Initv
	global _Z7SE_LoadPKch
	global _ZN16CStringEdPackage12InsideQuotesEPKc
	global _ZN16CStringEdPackage17SetupNewFileParseEPKc
	global _ZN16CStringEdPackage22ConvertCRLiterals_ReadESs
	global _ZN16CStringEdPackage5ClearEv
	global _ZN16CStringEdPackage8AddEntryEPKc
	global _ZN16CStringEdPackage8ReadLineERPKcPc
	global _ZN16CStringEdPackage9ParseLineEPKch
	global _ZN16CStringEdPackage9SetStringEPKcS1_i
	global _ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE11lower_boundERS1_
	global _ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE13insert_uniqueERKS2_
	global _ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE13insert_uniqueESt17_Rb_tree_iteratorIS2_ERKS2_
	global _ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE4findERS1_
	global _ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E
	global _ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE9_M_insertEPSt18_Rb_tree_node_baseSA_RKS2_
	global TheStringPackage


SECTION .text


;SE_GetFoundFile(std::string&)
_Z15SE_GetFoundFileRSs:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov eax, [ebx]
	cmp byte [eax], 0x0
	jnz _Z15SE_GetFoundFileRSs_10
	xor eax, eax
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z15SE_GetFoundFileRSs_10:
	mov dword [esp+0x8], 0x3f
	mov [esp+0x4], eax
	mov dword [esp], _ZZ15SE_GetFoundFileRSsE5sTemp
	call strncpy
	mov byte [_ZZ15SE_GetFoundFileRSsE5sTemp+0x3f], 0x0
	mov dword [esp+0x4], 0x3b
	mov dword [esp], _ZZ15SE_GetFoundFileRSsE5sTemp
	call strchr
	test eax, eax
	jz _Z15SE_GetFoundFileRSs_20
	mov byte [eax], 0x0
	sub eax, _ZZN16CStringEdPackage19Filename_WithoutExtEPKcE7sString+0x3f
	mov edx, [ebx]
	mov edx, [edx-0xc]
	cmp eax, edx
	cmovae eax, edx
	mov dword [esp+0xc], 0x0
_Z15SE_GetFoundFileRSs_30:
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call _ZNSs9_M_mutateEmmm
	mov eax, _ZZ15SE_GetFoundFileRSsE5sTemp
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z15SE_GetFoundFileRSs_20:
	mov dword [esp+0xc], 0x0
	mov eax, [ebx]
	mov eax, [eax-0xc]
	jmp _Z15SE_GetFoundFileRSs_30


;SE_ShutDown()
_Z11SE_ShutDownv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov eax, [TheStringPackage]
	test eax, eax
	jz _Z11SE_ShutDownv_10
	mov [esp], eax
	call _ZN16CStringEdPackage5ClearEv
	mov ebx, [TheStringPackage]
	test ebx, ebx
	jz _Z11SE_ShutDownv_20
	lea edx, [ebx+0x10]
	mov eax, [edx+0x8]
	mov [esp+0x4], eax
	mov [esp], edx
	call _ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E
	mov eax, [ebx+0xc]
	lea esi, [eax-0xc]
	mov edi, [0xd5cc01c]
	cmp esi, edi
	jnz _Z11SE_ShutDownv_30
_Z11SE_ShutDownv_60:
	mov eax, [ebx+0x8]
	lea esi, [eax-0xc]
	cmp edi, esi
	jnz _Z11SE_ShutDownv_40
_Z11SE_ShutDownv_80:
	mov eax, [ebx+0x4]
	lea esi, [eax-0xc]
	cmp edi, esi
	jnz _Z11SE_ShutDownv_50
_Z11SE_ShutDownv_70:
	mov [esp], ebx
	call Z_FreeInternal
_Z11SE_ShutDownv_20:
	mov dword [TheStringPackage], 0x0
_Z11SE_ShutDownv_10:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z11SE_ShutDownv_30:
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg _Z11SE_ShutDownv_60
	lea eax, [ebp-0x1b]
	mov [esp+0x4], eax
	mov [esp], esi
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp _Z11SE_ShutDownv_60
_Z11SE_ShutDownv_50:
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg _Z11SE_ShutDownv_70
	lea eax, [ebp-0x19]
	mov [esp+0x4], eax
	mov [esp], esi
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp _Z11SE_ShutDownv_70
_Z11SE_ShutDownv_40:
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg _Z11SE_ShutDownv_80
	lea eax, [ebp-0x1a]
	mov [esp+0x4], eax
	mov [esp], esi
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp _Z11SE_ShutDownv_80
	mov esi, eax
	mov eax, [ebx+0xc]
	lea edx, [eax-0xc]
	mov [ebp-0x2c], edx
	mov edi, [0xd5cc01c]
	cmp edx, edi
	jnz _Z11SE_ShutDownv_90
_Z11SE_ShutDownv_150:
	mov eax, [ebx+0x8]
	lea edx, [eax-0xc]
	mov [ebp-0x30], edx
	cmp edx, edi
	jnz _Z11SE_ShutDownv_100
_Z11SE_ShutDownv_120:
	mov eax, [ebx+0x4]
	lea ebx, [eax-0xc]
	cmp ebx, edi
	jnz _Z11SE_ShutDownv_110
_Z11SE_ShutDownv_130:
	mov [esp], esi
	call _Unwind_Resume
	mov esi, eax
_Z11SE_ShutDownv_140:
	mov edi, [0xd5cc01c]
	jmp _Z11SE_ShutDownv_120
_Z11SE_ShutDownv_110:
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg _Z11SE_ShutDownv_130
	lea eax, [ebp-0x19]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp _Z11SE_ShutDownv_130
_Z11SE_ShutDownv_100:
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg _Z11SE_ShutDownv_140
	lea eax, [ebp-0x1a]
	mov [esp+0x4], eax
	mov eax, [ebp-0x30]
	mov [esp], eax
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	mov edi, [0xd5cc01c]
	jmp _Z11SE_ShutDownv_120
	mov esi, eax
	mov edi, [0xd5cc01c]
	jmp _Z11SE_ShutDownv_150
_Z11SE_ShutDownv_90:
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg _Z11SE_ShutDownv_150
	lea eax, [ebp-0x1b]
	mov [esp+0x4], eax
	mov eax, [ebp-0x2c]
	mov [esp], eax
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp _Z11SE_ShutDownv_150
	mov esi, eax
	jmp _Z11SE_ShutDownv_130
	mov esi, eax
	mov edi, [0xd5cc01c]
	jmp _Z11SE_ShutDownv_120


;SE_LoadLanguage(unsigned char)
_Z15SE_LoadLanguageh:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	movzx ebx, byte [ebp+0x8]
	mov eax, [0xd5cc01c]
	mov [ebp-0x2c], eax
	add eax, 0xc
	mov [ebp-0x20], eax
	mov eax, [TheStringPackage]
	mov [esp], eax
	call _ZN16CStringEdPackage5ClearEv
	lea edi, [ebp-0x20]
	mov [esp+0x4], edi
	mov dword [esp], _cstring_localizedstrings
	call _Z16SE_BuildFileListPKcRSs
	xor esi, esi
	movzx ebx, bl
	jmp _Z15SE_LoadLanguageh_10
_Z15SE_LoadLanguageh_30:
	test esi, esi
	jnz _Z15SE_LoadLanguageh_20
	mov [esp+0x4], ebx
	mov [esp], eax
	call _Z7SE_LoadPKch
	mov esi, eax
_Z15SE_LoadLanguageh_10:
	mov [esp], edi
	call _Z15SE_GetFoundFileRSs
	test eax, eax
	jnz _Z15SE_LoadLanguageh_30
_Z15SE_LoadLanguageh_20:
	mov eax, [ebp-0x20]
	lea ebx, [eax-0xc]
	cmp [ebp-0x2c], ebx
	jnz _Z15SE_LoadLanguageh_40
_Z15SE_LoadLanguageh_50:
	mov eax, esi
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z15SE_LoadLanguageh_40:
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg _Z15SE_LoadLanguageh_50
	lea eax, [ebp-0x19]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp _Z15SE_LoadLanguageh_50
	mov ebx, eax
	mov eax, [ebp-0x20]
	lea esi, [eax-0xc]
	cmp [ebp-0x2c], esi
	jnz _Z15SE_LoadLanguageh_60
_Z15SE_LoadLanguageh_70:
	mov [esp], ebx
	call _Unwind_Resume
	mov ebx, eax
	jmp _Z15SE_LoadLanguageh_70
_Z15SE_LoadLanguageh_60:
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg _Z15SE_LoadLanguageh_70
	lea eax, [ebp-0x19]
	mov [esp+0x4], eax
	mov [esp], esi
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp _Z15SE_LoadLanguageh_70


;SE_GetString_LoadObj(char const*)
_Z20SE_GetString_LoadObjPKc:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x20
	lea eax, [ebp-0xa]
	mov [esp+0x8], eax
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	lea ebx, [ebp-0x10]
	mov [esp], ebx
	call _ZNSsC1EPKcRKSaIcE
	mov eax, [TheStringPackage]
	add eax, 0x10
	mov [esp+0x4], ebx
	mov [esp], eax
	call _ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE4findERS1_
	mov esi, eax
	mov eax, [ebp-0x10]
	lea ebx, [eax-0xc]
	cmp ebx, [0xd5cc01c]
	jnz _Z20SE_GetString_LoadObjPKc_10
_Z20SE_GetString_LoadObjPKc_30:
	mov eax, [TheStringPackage]
	add eax, 0x14
	cmp eax, esi
	jz _Z20SE_GetString_LoadObjPKc_20
	mov eax, [esi+0x14]
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
_Z20SE_GetString_LoadObjPKc_20:
	xor eax, eax
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
_Z20SE_GetString_LoadObjPKc_10:
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg _Z20SE_GetString_LoadObjPKc_30
	lea eax, [ebp-0x9]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp _Z20SE_GetString_LoadObjPKc_30
_Z20SE_GetString_LoadObjPKc_40:
	mov [esp], eax
	call _Unwind_Resume
	jmp _Z20SE_GetString_LoadObjPKc_40


;SE_Init()
_Z7SE_Initv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp], 0x28
	call Z_MallocInternal
	mov edx, [0xd5cc01c]
	add edx, 0xc
	mov [eax+0x4], edx
	mov [eax+0x8], edx
	mov [eax+0xc], edx
	lea edx, [eax+0x10]
	mov dword [edx+0x14], 0x0
	mov dword [edx+0x4], 0x0
	mov dword [edx+0x8], 0x0
	lea ecx, [eax+0x14]
	mov [edx+0xc], ecx
	mov [edx+0x10], ecx
	mov [TheStringPackage], eax
	mov [esp], eax
	call _ZN16CStringEdPackage5ClearEv
	leave
	ret


;SE_Load(char const*, unsigned char)
_Z7SE_LoadPKch:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x403c
	movzx eax, byte [ebp+0xc]
	mov [ebp-0x4029], al
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z15SE_LoadFileDataPKc
	mov esi, eax
	test eax, eax
	jz _Z7SE_LoadPKch_10
	mov [ebp-0x1c], eax
	mov edx, [ebp+0x8]
	mov [esp+0x4], edx
	mov eax, [TheStringPackage]
	mov [esp], eax
	call _ZN16CStringEdPackage17SetupNewFileParseEPKc
	lea ebx, [ebp-0x401c]
	lea edi, [ebp-0x1c]
_Z7SE_LoadPKch_30:
	mov [esp+0x8], ebx
	mov [esp+0x4], edi
	mov eax, [TheStringPackage]
	mov [esp], eax
	call _ZN16CStringEdPackage8ReadLineERPKcPc
	test eax, eax
	jz _Z7SE_LoadPKch_20
	cmp byte [ebp-0x401c], 0x0
	jz _Z7SE_LoadPKch_30
	movzx eax, byte [ebp-0x4029]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov eax, [TheStringPackage]
	mov [esp], eax
	call _ZN16CStringEdPackage9ParseLineEPKch
	test eax, eax
	jz _Z7SE_LoadPKch_30
	mov edx, [ebp+0x8]
	mov [esp+0x8], edx
	mov [esp+0x4], eax
	mov dword [esp], _cstring_s_in_s
	call _Z2vaPKcz
	mov ebx, eax
	mov [esp], esi
	call _Z24SE_FreeFileDataAfterLoadPh
	test ebx, ebx
	jz _Z7SE_LoadPKch_40
_Z7SE_LoadPKch_50:
	mov eax, ebx
	add esp, 0x403c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z7SE_LoadPKch_20:
	xor ebx, ebx
	mov [esp], esi
	call _Z24SE_FreeFileDataAfterLoadPh
	test ebx, ebx
	jnz _Z7SE_LoadPKch_50
_Z7SE_LoadPKch_40:
	mov eax, [TheStringPackage]
	mov eax, [eax]
	test eax, eax
	jnz _Z7SE_LoadPKch_50
	mov dword [esp+0x4], _cstring_endmarker
	mov dword [esp], _cstring_truncated_file_f
	call _Z2vaPKcz
	mov ebx, eax
	mov eax, ebx
	add esp, 0x403c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z7SE_LoadPKch_10:
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_unable_to_load_s
	call _Z2vaPKcz
	mov ebx, eax
	mov eax, ebx
	add esp, 0x403c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;CStringEdPackage::InsideQuotes(char const*)
_ZN16CStringEdPackage12InsideQuotesEPKc:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov ebx, [ebp+0x10]
	mov eax, [0xd5cc01c]
	mov [ebp-0x2c], eax
	mov esi, eax
	add esi, 0xc
	mov edx, [ebp+0x8]
	mov [edx], esi
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _cstring_null
	mov [esp], edx
	call _ZNSs6assignEPKcm
_ZN16CStringEdPackage12InsideQuotesEPKc_30:
	movzx edx, byte [ebx]
	cmp dl, 0x20
	jz _ZN16CStringEdPackage12InsideQuotesEPKc_10
	cmp dl, 0x9
	jnz _ZN16CStringEdPackage12InsideQuotesEPKc_20
_ZN16CStringEdPackage12InsideQuotesEPKc_10:
	add ebx, 0x1
	jmp _ZN16CStringEdPackage12InsideQuotesEPKc_30
_ZN16CStringEdPackage12InsideQuotesEPKc_20:
	lea eax, [ebx+0x1]
	cmp dl, 0x22
	cmovz ebx, eax
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, ebx
	repne scasb
	not ecx
	sub ecx, 0x1
	mov [esp+0x8], ecx
	mov [esp+0x4], ebx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _ZNSs6assignEPKcm
	cmp byte [ebx], 0x0
	jnz _ZN16CStringEdPackage12InsideQuotesEPKc_40
_ZN16CStringEdPackage12InsideQuotesEPKc_80:
	mov eax, [ebp+0x8]
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret 0x4
_ZN16CStringEdPackage12InsideQuotesEPKc_70:
	cld
	mov ecx, edx
	mov edi, esi
	repne scasb
	not ecx
	lea edx, [ecx-0x2]
	mov eax, [esi-0xc]
	sub eax, edx
	cmp eax, 0x1
	jbe _ZN16CStringEdPackage12InsideQuotesEPKc_50
	mov eax, 0x1
_ZN16CStringEdPackage12InsideQuotesEPKc_50:
	cmp edx, [esi-0xc]
	ja _ZN16CStringEdPackage12InsideQuotesEPKc_60
	mov dword [esp+0xc], 0x0
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _ZNSs9_M_mutateEmmm
_ZN16CStringEdPackage12InsideQuotesEPKc_40:
	mov eax, [ebp+0x8]
	mov esi, [eax]
	mov edx, 0xffffffff
	xor eax, eax
	cld
	mov ecx, edx
	mov edi, esi
	repne scasb
	not ecx
	cmp byte [ecx+esi-0x2], 0x20
	jz _ZN16CStringEdPackage12InsideQuotesEPKc_70
	mov ecx, edx
	mov edi, esi
	repne scasb
	not ecx
	cmp byte [ecx+esi-0x2], 0x9
	jz _ZN16CStringEdPackage12InsideQuotesEPKc_70
	cld
	mov ecx, edx
	mov edi, esi
	repne scasb
	not ecx
	cmp byte [ecx+esi-0x2], 0x22
	jnz _ZN16CStringEdPackage12InsideQuotesEPKc_80
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, esi
	repne scasb
	not ecx
	sub ecx, 0x2
	mov edx, [esi-0xc]
	mov eax, edx
	sub eax, ecx
	mov ebx, 0x1
	cmp eax, 0x2
	cmovb ebx, eax
	cmp ecx, edx
	ja _ZN16CStringEdPackage12InsideQuotesEPKc_60
	mov dword [esp+0xc], 0x0
	mov [esp+0x8], ebx
	mov [esp+0x4], ecx
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _ZNSs9_M_mutateEmmm
	jmp _ZN16CStringEdPackage12InsideQuotesEPKc_80
_ZN16CStringEdPackage12InsideQuotesEPKc_60:
	mov dword [esp], _cstring_basic_stringeras
	call _ZSt20__throw_out_of_rangePKc
	mov ebx, eax
	mov edx, [ebp+0x8]
	mov eax, [edx]
	lea esi, [eax-0xc]
	cmp [ebp-0x2c], esi
	jnz _ZN16CStringEdPackage12InsideQuotesEPKc_90
_ZN16CStringEdPackage12InsideQuotesEPKc_100:
	mov [esp], ebx
	call _Unwind_Resume
_ZN16CStringEdPackage12InsideQuotesEPKc_90:
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg _ZN16CStringEdPackage12InsideQuotesEPKc_100
	lea eax, [ebp-0x19]
	mov [esp+0x4], eax
	mov [esp], esi
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp _ZN16CStringEdPackage12InsideQuotesEPKc_100
	mov ebx, eax
	jmp _ZN16CStringEdPackage12InsideQuotesEPKc_100
	nop


;CStringEdPackage::SetupNewFileParse(char const*)
_ZN16CStringEdPackage17SetupNewFileParseEPKc:
	push ebp
	mov ebp, esp
	push edi
	push ebx
	sub esp, 0x50
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov dword [esp], _ZZN16CStringEdPackage19Filename_WithoutExtEPKcE7sString
	call strcpy
	mov dword [esp+0x4], 0x2e
	mov dword [esp], _ZZN16CStringEdPackage19Filename_WithoutExtEPKcE7sString
	call strrchr
	mov edi, eax
	mov dword [esp+0x4], 0x5c
	mov dword [esp], _ZZN16CStringEdPackage19Filename_WithoutExtEPKcE7sString
	call strrchr
	mov ebx, eax
	mov dword [esp+0x4], 0x2f
	mov dword [esp], _ZZN16CStringEdPackage19Filename_WithoutExtEPKcE7sString
	call strrchr
	test edi, edi
	jz _ZN16CStringEdPackage17SetupNewFileParseEPKc_10
	test ebx, ebx
	jz _ZN16CStringEdPackage17SetupNewFileParseEPKc_20
	cmp edi, ebx
	ja _ZN16CStringEdPackage17SetupNewFileParseEPKc_20
_ZN16CStringEdPackage17SetupNewFileParseEPKc_10:
	movzx eax, byte [_ZZN16CStringEdPackage19Filename_WithoutExtEPKcE7sString]
	test al, al
	jz _ZN16CStringEdPackage17SetupNewFileParseEPKc_30
	mov edx, _ZZN16CStringEdPackage19Filename_WithoutExtEPKcE7sString
	mov ecx, _ZZN16CStringEdPackage19Filename_WithoutExtEPKcE7sString
	jmp _ZN16CStringEdPackage17SetupNewFileParseEPKc_40
_ZN16CStringEdPackage17SetupNewFileParseEPKc_70:
	cmp al, 0x5c
	jz _ZN16CStringEdPackage17SetupNewFileParseEPKc_50
	add edx, 0x1
	movzx eax, byte [edx]
	test al, al
	jz _ZN16CStringEdPackage17SetupNewFileParseEPKc_60
_ZN16CStringEdPackage17SetupNewFileParseEPKc_40:
	cmp al, 0x2f
	jnz _ZN16CStringEdPackage17SetupNewFileParseEPKc_70
_ZN16CStringEdPackage17SetupNewFileParseEPKc_50:
	lea ecx, [edx+0x1]
	mov edx, ecx
	movzx eax, byte [edx]
	test al, al
	jnz _ZN16CStringEdPackage17SetupNewFileParseEPKc_40
_ZN16CStringEdPackage17SetupNewFileParseEPKc_60:
	mov [esp+0x4], ecx
	mov dword [esp], _ZZN16CStringEdPackage20Filename_WithoutPathEPKcE7sString
	call strcpy
	mov dword [esp+0x4], _ZZN16CStringEdPackage20Filename_WithoutPathEPKcE7sString
	lea ebx, [ebp-0x48]
	mov [esp], ebx
	call strcpy
	mov [esp], ebx
	call _Z8I_struprPc
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, ebx
	repne scasb
	not ecx
	sub ecx, 0x1
	mov [esp+0x8], ecx
	mov [esp+0x4], ebx
	mov eax, [ebp+0x8]
	add eax, 0xc
	mov [esp], eax
	call _ZNSs6assignEPKcm
	add esp, 0x50
	pop ebx
	pop edi
	pop ebp
	ret
_ZN16CStringEdPackage17SetupNewFileParseEPKc_30:
	mov ecx, _ZZN16CStringEdPackage19Filename_WithoutExtEPKcE7sString
	jmp _ZN16CStringEdPackage17SetupNewFileParseEPKc_60
_ZN16CStringEdPackage17SetupNewFileParseEPKc_20:
	test eax, eax
	jz _ZN16CStringEdPackage17SetupNewFileParseEPKc_80
	cmp edi, eax
	jbe _ZN16CStringEdPackage17SetupNewFileParseEPKc_10
_ZN16CStringEdPackage17SetupNewFileParseEPKc_80:
	mov byte [edi], 0x0
	jmp _ZN16CStringEdPackage17SetupNewFileParseEPKc_10


;CStringEdPackage::ConvertCRLiterals_Read(std::string)
_ZN16CStringEdPackage22ConvertCRLiterals_ReadESs:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov esi, [ebp+0x8]
	mov edi, [0xd5cc01c]
	lea eax, [edi+0xc]
	mov [esi], eax
	mov eax, [ebp+0x10]
	mov [esp+0x4], eax
	mov [esp], esi
	call _ZNSs6assignERKSs
	jmp _ZN16CStringEdPackage22ConvertCRLiterals_ReadESs_10
_ZN16CStringEdPackage22ConvertCRLiterals_ReadESs_40:
	mov eax, [esi]
	mov edx, [eax-0x4]
	test edx, edx
	js _ZN16CStringEdPackage22ConvertCRLiterals_ReadESs_20
	mov [esp], esi
	call _ZNSs12_M_leak_hardEv
	mov eax, [esi]
_ZN16CStringEdPackage22ConvertCRLiterals_ReadESs_20:
	mov byte [eax+ebx], 0xa
	lea ecx, [ebx+0x1]
	mov eax, [esi]
	mov edx, [eax-0xc]
	mov eax, edx
	sub eax, ecx
	mov ebx, 0x1
	cmp eax, 0x2
	cmovb ebx, eax
	cmp ecx, edx
	ja _ZN16CStringEdPackage22ConvertCRLiterals_ReadESs_30
	mov dword [esp+0xc], 0x0
	mov [esp+0x8], ebx
	mov [esp+0x4], ecx
	mov [esp], esi
	call _ZNSs9_M_mutateEmmm
_ZN16CStringEdPackage22ConvertCRLiterals_ReadESs_10:
	mov dword [esp+0xc], 0x2
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _cstring_n
	mov [esp], esi
	call _ZNKSs4findEPKcmm
	mov ebx, eax
	cmp eax, 0xffffffff
	jnz _ZN16CStringEdPackage22ConvertCRLiterals_ReadESs_40
	mov eax, esi
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret 0x4
_ZN16CStringEdPackage22ConvertCRLiterals_ReadESs_30:
	mov dword [esp], _cstring_basic_stringeras
	call _ZSt20__throw_out_of_rangePKc
	mov ebx, eax
	mov eax, [esi]
	lea esi, [eax-0xc]
	cmp edi, esi
	jnz _ZN16CStringEdPackage22ConvertCRLiterals_ReadESs_50
_ZN16CStringEdPackage22ConvertCRLiterals_ReadESs_60:
	mov [esp], ebx
	call _Unwind_Resume
_ZN16CStringEdPackage22ConvertCRLiterals_ReadESs_50:
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg _ZN16CStringEdPackage22ConvertCRLiterals_ReadESs_60
	lea eax, [ebp-0x19]
	mov [esp+0x4], eax
	mov [esp], esi
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp _ZN16CStringEdPackage22ConvertCRLiterals_ReadESs_60
	mov ebx, eax
	jmp _ZN16CStringEdPackage22ConvertCRLiterals_ReadESs_60


;CStringEdPackage::Clear()
_ZN16CStringEdPackage5ClearEv:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	lea ebx, [esi+0x10]
	mov eax, [ebx+0x8]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E
	lea eax, [esi+0x14]
	mov [ebx+0xc], eax
	mov dword [ebx+0x8], 0x0
	mov [ebx+0x10], eax
	mov dword [ebx+0x14], 0x0
	mov dword [esi], 0x0
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _cstring_null
	lea eax, [esi+0x4]
	mov [esp], eax
	call _ZNSs6assignEPKcm
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _cstring_null
	add esi, 0x8
	mov [esp], esi
	call _ZNSs6assignEPKcm
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop
	add [eax], al


;CStringEdPackage::AddEntry(char const*)
_ZN16CStringEdPackage8AddEntryEPKc:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x9c
	mov edx, [ebp+0x8]
	mov eax, [edx+0xc]
	mov ecx, [ebp+0xc]
	mov [esp+0x8], ecx
	mov [esp+0x4], eax
	mov dword [esp], _cstring_s_s
	call _Z2vaPKcz
	lea edx, [ebp-0x21]
	mov [esp+0x8], edx
	mov [esp+0x4], eax
	lea esi, [ebp-0x28]
	mov [esp], esi
	call _ZNSsC1EPKcRKSaIcE
	mov edi, [ebp+0x8]
	add edi, 0x10
	mov [ebp-0x60], edi
	mov [esp+0x4], esi
	mov [esp], edi
	call _ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE4findERS1_
	mov esi, eax
	mov eax, [ebp-0x28]
	lea ebx, [eax-0xc]
	mov edx, [0xd5cc01c]
	mov [ebp-0x5c], edx
	cmp ebx, edx
	jnz _ZN16CStringEdPackage8AddEntryEPKc_10
_ZN16CStringEdPackage8AddEntryEPKc_140:
	mov eax, [ebp+0x8]
	add eax, 0x14
	cmp esi, eax
	jnz _ZN16CStringEdPackage8AddEntryEPKc_20
	mov ecx, [ebp-0x5c]
	add ecx, 0xc
	mov [ebp-0x58], ecx
	mov [ebp-0x3c], ecx
	mov edi, [ebp+0x8]
	mov eax, [edi+0xc]
	mov edx, [ebp+0xc]
	mov [esp+0x8], edx
	mov [esp+0x4], eax
	mov dword [esp], _cstring_s_s
	call _Z2vaPKcz
	lea edx, [ebp-0x20]
	mov [esp+0x8], edx
	mov [esp+0x4], eax
	lea ecx, [ebp-0x2c]
	mov [esp], ecx
	call _ZNSsC1EPKcRKSaIcE
	lea edi, [ebp-0x2c]
	mov [esp+0x4], edi
	mov eax, [ebp-0x60]
	mov [esp], eax
	call _ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE11lower_boundERS1_
	mov [ebp-0x54], eax
	cmp esi, eax
	jz _ZN16CStringEdPackage8AddEntryEPKc_30
	mov [ebp-0x4c], eax
	mov edx, eax
	add edx, 0x10
	mov ecx, [ebp-0x2c]
	mov [ebp-0x64], ecx
	mov ebx, [ecx-0xc]
	mov [ebp-0x34], ebx
	mov eax, [eax+0x10]
	mov eax, [eax-0xc]
	mov [ebp-0x50], eax
	mov [ebp-0x30], eax
	cmp eax, ebx
	jae _ZN16CStringEdPackage8AddEntryEPKc_40
	lea eax, [ebp-0x30]
_ZN16CStringEdPackage8AddEntryEPKc_80:
	mov edx, [edx]
	mov ecx, [eax]
	cld
	cmp ecx, ecx
	mov esi, [ebp-0x64]
	mov edi, edx
	repe cmpsb
	mov eax, 0x0
	jz _ZN16CStringEdPackage8AddEntryEPKc_50
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
_ZN16CStringEdPackage8AddEntryEPKc_50:
	sub ebx, [ebp-0x50]
	test eax, eax
	cmovnz ebx, eax
	mov [ebp-0x6c], ebx
	test ebx, ebx
	js _ZN16CStringEdPackage8AddEntryEPKc_30
	mov edx, [ebp-0x4c]
_ZN16CStringEdPackage8AddEntryEPKc_120:
	add edx, 0x14
	lea eax, [ebp-0x3c]
	mov [esp+0x4], eax
	mov [esp], edx
	call _ZNSs6assignERKSs
	mov eax, [ebp-0x2c]
	lea ebx, [eax-0xc]
	cmp [ebp-0x5c], ebx
	jnz _ZN16CStringEdPackage8AddEntryEPKc_60
_ZN16CStringEdPackage8AddEntryEPKc_150:
	mov eax, [ebp-0x3c]
	lea ebx, [eax-0xc]
	cmp [ebp-0x5c], ebx
	jnz _ZN16CStringEdPackage8AddEntryEPKc_70
_ZN16CStringEdPackage8AddEntryEPKc_20:
	mov edx, [ebp+0x8]
	add edx, 0x4
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, [ebp+0xc]
	repne scasb
	not ecx
	sub ecx, 0x1
	mov [esp+0x8], ecx
	mov ecx, [ebp+0xc]
	mov [esp+0x4], ecx
	mov [esp], edx
	call _ZNSs6assignEPKcm
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN16CStringEdPackage8AddEntryEPKc_40:
	lea eax, [ebp-0x34]
	jmp _ZN16CStringEdPackage8AddEntryEPKc_80
_ZN16CStringEdPackage8AddEntryEPKc_30:
	mov ecx, [ebp-0x58]
	mov [ebp-0x38], ecx
	lea edi, [ebp-0x2c]
	mov [esp+0x4], edi
	lea ebx, [ebp-0x44]
	mov [esp], ebx
	call _ZNSsC1ERKSs
	lea eax, [ebp-0x38]
	mov [esp+0x4], eax
	lea eax, [ebp-0x40]
	mov [esp], eax
	call _ZNSsC1ERKSs
	mov [esp+0x8], ebx
	mov eax, [ebp-0x54]
	mov [esp+0x4], eax
	mov edx, [ebp-0x60]
	mov [esp], edx
	call _ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE13insert_uniqueESt17_Rb_tree_iteratorIS2_ERKS2_
	mov esi, eax
	mov eax, [ebp-0x40]
	lea ebx, [eax-0xc]
	cmp [ebp-0x5c], ebx
	jnz _ZN16CStringEdPackage8AddEntryEPKc_90
_ZN16CStringEdPackage8AddEntryEPKc_170:
	mov eax, [ebp-0x44]
	lea ebx, [eax-0xc]
	cmp [ebp-0x5c], ebx
	jnz _ZN16CStringEdPackage8AddEntryEPKc_100
_ZN16CStringEdPackage8AddEntryEPKc_160:
	mov eax, [ebp-0x38]
	lea ebx, [eax-0xc]
	cmp [ebp-0x5c], ebx
	jnz _ZN16CStringEdPackage8AddEntryEPKc_110
_ZN16CStringEdPackage8AddEntryEPKc_130:
	mov [ebp-0x4c], esi
	mov edx, esi
	jmp _ZN16CStringEdPackage8AddEntryEPKc_120
_ZN16CStringEdPackage8AddEntryEPKc_70:
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg _ZN16CStringEdPackage8AddEntryEPKc_20
	lea eax, [ebp-0x19]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp _ZN16CStringEdPackage8AddEntryEPKc_20
_ZN16CStringEdPackage8AddEntryEPKc_110:
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg _ZN16CStringEdPackage8AddEntryEPKc_130
	lea eax, [ebp-0x1b]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	mov [ebp-0x4c], esi
	mov edx, esi
	jmp _ZN16CStringEdPackage8AddEntryEPKc_120
_ZN16CStringEdPackage8AddEntryEPKc_10:
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg _ZN16CStringEdPackage8AddEntryEPKc_140
	lea eax, [ebp-0x1f]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp _ZN16CStringEdPackage8AddEntryEPKc_140
_ZN16CStringEdPackage8AddEntryEPKc_60:
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg _ZN16CStringEdPackage8AddEntryEPKc_150
	lea eax, [ebp-0x1a]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp _ZN16CStringEdPackage8AddEntryEPKc_150
_ZN16CStringEdPackage8AddEntryEPKc_100:
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg _ZN16CStringEdPackage8AddEntryEPKc_160
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp _ZN16CStringEdPackage8AddEntryEPKc_160
_ZN16CStringEdPackage8AddEntryEPKc_90:
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg _ZN16CStringEdPackage8AddEntryEPKc_170
	lea eax, [ebp-0x1d]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp _ZN16CStringEdPackage8AddEntryEPKc_170
_ZN16CStringEdPackage8AddEntryEPKc_310:
	mov ebx, eax
_ZN16CStringEdPackage8AddEntryEPKc_210:
	mov [esp], ebx
	call _Unwind_Resume
	mov ebx, eax
	mov eax, [ebp-0x44]
	lea esi, [eax-0xc]
	cmp [ebp-0x5c], esi
	jnz _ZN16CStringEdPackage8AddEntryEPKc_180
_ZN16CStringEdPackage8AddEntryEPKc_230:
	mov eax, [ebp-0x38]
	lea esi, [eax-0xc]
	cmp [ebp-0x5c], esi
	jnz _ZN16CStringEdPackage8AddEntryEPKc_190
_ZN16CStringEdPackage8AddEntryEPKc_260:
	mov eax, [ebp-0x2c]
	lea esi, [eax-0xc]
	cmp [ebp-0x5c], esi
	jnz _ZN16CStringEdPackage8AddEntryEPKc_200
_ZN16CStringEdPackage8AddEntryEPKc_220:
	mov eax, [ebp-0x3c]
	lea esi, [eax-0xc]
	cmp [ebp-0x5c], esi
	jz _ZN16CStringEdPackage8AddEntryEPKc_210
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg _ZN16CStringEdPackage8AddEntryEPKc_210
	lea eax, [ebp-0x19]
	mov [esp+0x4], eax
	mov [esp], esi
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp _ZN16CStringEdPackage8AddEntryEPKc_210
_ZN16CStringEdPackage8AddEntryEPKc_280:
	mov ebx, eax
	jmp _ZN16CStringEdPackage8AddEntryEPKc_220
_ZN16CStringEdPackage8AddEntryEPKc_250:
	mov ebx, eax
	jmp _ZN16CStringEdPackage8AddEntryEPKc_230
	mov ebx, eax
	mov eax, [ebp-0x40]
	lea esi, [eax-0xc]
	cmp [ebp-0x5c], esi
	jnz _ZN16CStringEdPackage8AddEntryEPKc_240
_ZN16CStringEdPackage8AddEntryEPKc_290:
	mov eax, [ebp-0x44]
	lea esi, [eax-0xc]
	cmp [ebp-0x5c], esi
	jz _ZN16CStringEdPackage8AddEntryEPKc_230
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
_ZN16CStringEdPackage8AddEntryEPKc_270:
	test eax, eax
	jg _ZN16CStringEdPackage8AddEntryEPKc_230
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov [esp], esi
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp _ZN16CStringEdPackage8AddEntryEPKc_230
	mov ebx, eax
	mov eax, [ebp-0x44]
	lea esi, [eax-0xc]
	cmp [ebp-0x5c], esi
	jz _ZN16CStringEdPackage8AddEntryEPKc_230
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg _ZN16CStringEdPackage8AddEntryEPKc_230
	lea eax, [ebp-0x1e]
	mov [esp+0x4], eax
	mov [esp], esi
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp _ZN16CStringEdPackage8AddEntryEPKc_230
	jmp _ZN16CStringEdPackage8AddEntryEPKc_250
	mov [esp], eax
	call _Unwind_Resume
_ZN16CStringEdPackage8AddEntryEPKc_200:
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg _ZN16CStringEdPackage8AddEntryEPKc_220
	lea eax, [ebp-0x1a]
	mov [esp+0x4], eax
	mov [esp], esi
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp _ZN16CStringEdPackage8AddEntryEPKc_220
_ZN16CStringEdPackage8AddEntryEPKc_190:
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg _ZN16CStringEdPackage8AddEntryEPKc_260
	lea eax, [ebp-0x1b]
	mov [esp+0x4], eax
	mov [esp], esi
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp _ZN16CStringEdPackage8AddEntryEPKc_260
_ZN16CStringEdPackage8AddEntryEPKc_180:
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	jmp _ZN16CStringEdPackage8AddEntryEPKc_270
	jmp _ZN16CStringEdPackage8AddEntryEPKc_280
_ZN16CStringEdPackage8AddEntryEPKc_300:
	mov ebx, eax
	jmp _ZN16CStringEdPackage8AddEntryEPKc_260
	jmp _ZN16CStringEdPackage8AddEntryEPKc_250
_ZN16CStringEdPackage8AddEntryEPKc_240:
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg _ZN16CStringEdPackage8AddEntryEPKc_290
	lea eax, [ebp-0x1d]
	mov [esp+0x4], eax
	mov [esp], esi
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp _ZN16CStringEdPackage8AddEntryEPKc_290
	jmp _ZN16CStringEdPackage8AddEntryEPKc_250
	mov ebx, eax
	mov eax, [ebp-0x44]
	lea esi, [eax-0xc]
	cmp [ebp-0x5c], esi
	jz _ZN16CStringEdPackage8AddEntryEPKc_230
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	jmp _ZN16CStringEdPackage8AddEntryEPKc_270
	jmp _ZN16CStringEdPackage8AddEntryEPKc_300
	jmp _ZN16CStringEdPackage8AddEntryEPKc_310
	jmp _ZN16CStringEdPackage8AddEntryEPKc_250
	nop


;CStringEdPackage::ReadLine(char const*&, char*)
_ZN16CStringEdPackage8ReadLineERPKcPc:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov esi, [ebp+0x10]
	mov eax, [ebp+0xc]
	mov edi, [eax]
	cmp byte [edi], 0x0
	jnz _ZN16CStringEdPackage8ReadLineERPKcPc_10
	xor eax, eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN16CStringEdPackage8ReadLineERPKcPc_10:
	mov dword [esp+0x4], 0xa
	mov [esp], edi
	call strchr
	test eax, eax
	jz _ZN16CStringEdPackage8ReadLineERPKcPc_20
	mov ebx, eax
	sub ebx, edi
	mov [esp+0x8], ebx
	mov [esp+0x4], edi
	mov [esp], esi
	call strncpy
	mov byte [esi+ebx], 0x0
	mov edi, [ebp+0xc]
	add ebx, [edi]
	mov [edi], ebx
	movzx eax, byte [ebx]
	test al, al
	jnz _ZN16CStringEdPackage8ReadLineERPKcPc_30
_ZN16CStringEdPackage8ReadLineERPKcPc_50:
	cmp byte [esi], 0x0
	jnz _ZN16CStringEdPackage8ReadLineERPKcPc_40
_ZN16CStringEdPackage8ReadLineERPKcPc_80:
	mov eax, 0x1
_ZN16CStringEdPackage8ReadLineERPKcPc_140:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN16CStringEdPackage8ReadLineERPKcPc_30:
	movsx eax, al
	mov [esp+0x4], eax
	mov dword [esp], _cstring_
	call strchr
	test eax, eax
	jz _ZN16CStringEdPackage8ReadLineERPKcPc_50
	add ebx, 0x1
	mov eax, [ebp+0xc]
	mov [eax], ebx
	movzx eax, byte [ebx]
	test al, al
	jnz _ZN16CStringEdPackage8ReadLineERPKcPc_30
	jmp _ZN16CStringEdPackage8ReadLineERPKcPc_50
_ZN16CStringEdPackage8ReadLineERPKcPc_40:
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, esi
	repne scasb
	not ecx
	mov eax, ecx
	sub eax, 0x2
	js _ZN16CStringEdPackage8ReadLineERPKcPc_60
	lea ebx, [esi+eax]
	xor edi, edi
	sub ecx, 0x1
	mov [ebp-0x1c], ecx
_ZN16CStringEdPackage8ReadLineERPKcPc_70:
	movsx eax, byte [ebx]
	mov [esp], eax
	call isspace
	test eax, eax
	jz _ZN16CStringEdPackage8ReadLineERPKcPc_60
	mov byte [ebx], 0x0
	add edi, 0x1
	sub ebx, 0x1
	cmp edi, [ebp-0x1c]
	jnz _ZN16CStringEdPackage8ReadLineERPKcPc_70
_ZN16CStringEdPackage8ReadLineERPKcPc_60:
	xor ebx, ebx
_ZN16CStringEdPackage8ReadLineERPKcPc_120:
	mov dword [esp+0x4], _cstring_1
	mov [esp], esi
	call strstr
	mov edi, eax
	test eax, eax
	jz _ZN16CStringEdPackage8ReadLineERPKcPc_80
	mov ecx, eax
	sub ecx, esi
	test ecx, ecx
	jle _ZN16CStringEdPackage8ReadLineERPKcPc_90
	xor edx, edx
_ZN16CStringEdPackage8ReadLineERPKcPc_100:
	lea eax, [ebx+0x1]
	cmp byte [edx+esi], 0x22
	cmovz ebx, eax
	add edx, 0x1
	cmp edx, ecx
	jnz _ZN16CStringEdPackage8ReadLineERPKcPc_100
_ZN16CStringEdPackage8ReadLineERPKcPc_90:
	test bl, 0x1
	jz _ZN16CStringEdPackage8ReadLineERPKcPc_110
	lea esi, [edi+0x1]
	jmp _ZN16CStringEdPackage8ReadLineERPKcPc_120
_ZN16CStringEdPackage8ReadLineERPKcPc_110:
	mov byte [edi], 0x0
	cmp byte [esi], 0x0
	jz _ZN16CStringEdPackage8ReadLineERPKcPc_80
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, esi
	repne scasb
	not ecx
	mov eax, ecx
	sub eax, 0x2
	js _ZN16CStringEdPackage8ReadLineERPKcPc_80
	lea ebx, [eax+esi]
	xor esi, esi
	lea edi, [ecx-0x1]
_ZN16CStringEdPackage8ReadLineERPKcPc_130:
	movsx eax, byte [ebx]
	mov [esp], eax
	call isspace
	test eax, eax
	jz _ZN16CStringEdPackage8ReadLineERPKcPc_80
	mov byte [ebx], 0x0
	add esi, 0x1
	sub ebx, 0x1
	cmp edi, esi
	jnz _ZN16CStringEdPackage8ReadLineERPKcPc_130
	mov eax, 0x1
	jmp _ZN16CStringEdPackage8ReadLineERPKcPc_140
_ZN16CStringEdPackage8ReadLineERPKcPc_20:
	mov [esp+0x4], edi
	mov [esp], esi
	call strcpy
	mov edi, [ebp+0xc]
	mov ebx, [edi]
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, ebx
	repne scasb
	not ecx
	lea ecx, [ecx+ebx-0x1]
	mov eax, [ebp+0xc]
	mov [eax], ecx
	jmp _ZN16CStringEdPackage8ReadLineERPKcPc_50


;CStringEdPackage::ParseLine(char const*, unsigned char)
_ZN16CStringEdPackage9ParseLineEPKch:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x44c
	mov ebx, [ebp+0xc]
	movzx esi, byte [ebp+0x10]
	test ebx, ebx
	jz _ZN16CStringEdPackage9ParseLineEPKch_10
	mov dword [esp+0x8], 0x7
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_version
	call _Z10I_strnicmpPKcS0_i
	test eax, eax
	jz _ZN16CStringEdPackage9ParseLineEPKch_20
	mov dword [esp+0x8], 0x6
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_config
	call _Z10I_strnicmpPKcS0_i
	test eax, eax
	jnz _ZN16CStringEdPackage9ParseLineEPKch_30
	lea edx, [ebx+0x6]
_ZN16CStringEdPackage9ParseLineEPKch_50:
	movzx eax, byte [edx]
	cmp al, 0x9
	jz _ZN16CStringEdPackage9ParseLineEPKch_40
	cmp al, 0x20
	jnz _ZN16CStringEdPackage9ParseLineEPKch_10
_ZN16CStringEdPackage9ParseLineEPKch_40:
	add edx, 0x1
	jmp _ZN16CStringEdPackage9ParseLineEPKch_50
_ZN16CStringEdPackage9ParseLineEPKch_180:
	mov dword [esp+0x8], 0x5
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_flags
	call _Z10I_strnicmpPKcS0_i
	test eax, eax
	jz _ZN16CStringEdPackage9ParseLineEPKch_60
	mov dword [esp+0x8], 0x9
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_reference
	call _Z10I_strnicmpPKcS0_i
	test eax, eax
	jnz _ZN16CStringEdPackage9ParseLineEPKch_70
	lea edx, [ebx+0x9]
_ZN16CStringEdPackage9ParseLineEPKch_210:
	movzx eax, byte [edx]
	cmp al, 0x9
	jz _ZN16CStringEdPackage9ParseLineEPKch_80
	cmp al, 0x20
	jz _ZN16CStringEdPackage9ParseLineEPKch_80
	lea eax, [ebp-0x24]
	mov [esp+0x8], edx
	mov edx, [ebp+0x8]
	mov [esp+0x4], edx
	mov [esp], eax
	call _ZN16CStringEdPackage12InsideQuotesEPKc
	sub esp, 0x4
	mov eax, [ebp-0x24]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _ZN16CStringEdPackage8AddEntryEPKc
	mov ebx, [ebp-0x24]
	sub ebx, 0xc
	cmp ebx, [0xd5cc01c]
	jz _ZN16CStringEdPackage9ParseLineEPKch_10
	lea eax, [ebx+0x8]
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg _ZN16CStringEdPackage9ParseLineEPKch_10
	lea eax, [ebp-0x1b]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _ZNSs4_Rep10_M_destroyERKSaIcE
_ZN16CStringEdPackage9ParseLineEPKch_10:
	xor ebx, ebx
_ZN16CStringEdPackage9ParseLineEPKch_130:
	mov eax, ebx
	lea esp, [ebp-0xc]
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN16CStringEdPackage9ParseLineEPKch_20:
	lea edx, [ebx+0x7]
_ZN16CStringEdPackage9ParseLineEPKch_110:
	movzx eax, byte [edx]
	cmp al, 0x9
	jz _ZN16CStringEdPackage9ParseLineEPKch_90
	cmp al, 0x20
	jnz _ZN16CStringEdPackage9ParseLineEPKch_100
_ZN16CStringEdPackage9ParseLineEPKch_90:
	add edx, 0x1
	jmp _ZN16CStringEdPackage9ParseLineEPKch_110
_ZN16CStringEdPackage9ParseLineEPKch_100:
	lea eax, [ebp-0x24]
	mov [esp+0x8], edx
	mov edx, [ebp+0x8]
	mov [esp+0x4], edx
	mov [esp], eax
	call _ZN16CStringEdPackage12InsideQuotesEPKc
	sub esp, 0x4
	mov eax, [ebp-0x24]
	mov [esp], eax
	call atoi
	cmp eax, 0x1
	jz _ZN16CStringEdPackage9ParseLineEPKch_120
	mov dword [esp+0x8], 0x1
	mov [esp+0x4], eax
	mov dword [esp], _cstring_unexpected_versi
	call _Z2vaPKcz
	mov ebx, eax
_ZN16CStringEdPackage9ParseLineEPKch_170:
	mov eax, [ebp-0x24]
	lea edi, [eax-0xc]
	cmp edi, [0xd5cc01c]
	jz _ZN16CStringEdPackage9ParseLineEPKch_130
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg _ZN16CStringEdPackage9ParseLineEPKch_130
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov [esp], edi
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp _ZN16CStringEdPackage9ParseLineEPKch_130
_ZN16CStringEdPackage9ParseLineEPKch_30:
	mov dword [esp+0x8], 0x9
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_filenotes
	call _Z10I_strnicmpPKcS0_i
	test eax, eax
	jnz _ZN16CStringEdPackage9ParseLineEPKch_140
	lea edx, [ebx+0x9]
_ZN16CStringEdPackage9ParseLineEPKch_160:
	movzx eax, byte [edx]
	cmp al, 0x9
	jz _ZN16CStringEdPackage9ParseLineEPKch_150
	cmp al, 0x20
	jnz _ZN16CStringEdPackage9ParseLineEPKch_10
_ZN16CStringEdPackage9ParseLineEPKch_150:
	add edx, 0x1
	jmp _ZN16CStringEdPackage9ParseLineEPKch_160
_ZN16CStringEdPackage9ParseLineEPKch_120:
	xor ebx, ebx
	jmp _ZN16CStringEdPackage9ParseLineEPKch_170
_ZN16CStringEdPackage9ParseLineEPKch_140:
	mov dword [esp+0x8], 0x5
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_notes
	call _Z10I_strnicmpPKcS0_i
	test eax, eax
	jnz _ZN16CStringEdPackage9ParseLineEPKch_180
	lea edx, [ebx+0x5]
_ZN16CStringEdPackage9ParseLineEPKch_200:
	movzx eax, byte [edx]
	cmp al, 0x9
	jz _ZN16CStringEdPackage9ParseLineEPKch_190
	cmp al, 0x20
	jnz _ZN16CStringEdPackage9ParseLineEPKch_10
_ZN16CStringEdPackage9ParseLineEPKch_190:
	add edx, 0x1
	jmp _ZN16CStringEdPackage9ParseLineEPKch_200
_ZN16CStringEdPackage9ParseLineEPKch_80:
	add edx, 0x1
	jmp _ZN16CStringEdPackage9ParseLineEPKch_210
_ZN16CStringEdPackage9ParseLineEPKch_60:
	lea edx, [ebx+0x5]
_ZN16CStringEdPackage9ParseLineEPKch_230:
	movzx eax, byte [edx]
	cmp al, 0x9
	jz _ZN16CStringEdPackage9ParseLineEPKch_220
	cmp al, 0x20
	jnz _ZN16CStringEdPackage9ParseLineEPKch_10
_ZN16CStringEdPackage9ParseLineEPKch_220:
	add edx, 0x1
	jmp _ZN16CStringEdPackage9ParseLineEPKch_230
_ZN16CStringEdPackage9ParseLineEPKch_70:
	mov dword [esp+0x8], 0x9
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_endmarker
	call _Z10I_strnicmpPKcS0_i
	test eax, eax
	jz _ZN16CStringEdPackage9ParseLineEPKch_240
	mov dword [esp+0x8], 0x5
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_lang_
	call _Z10I_strnicmpPKcS0_i
	test eax, eax
	jnz _ZN16CStringEdPackage9ParseLineEPKch_250
	mov eax, [ebp+0x8]
	mov eax, [eax+0x4]
	mov [ebp-0x440], eax
	cmp byte [eax], 0x0
	jz _ZN16CStringEdPackage9ParseLineEPKch_260
	lea edx, [ebx+0x5]
	mov [ebp-0x43c], edx
	movzx eax, byte [ebx+0x5]
	test al, al
	jz _ZN16CStringEdPackage9ParseLineEPKch_270
	cmp al, 0x20
	jz _ZN16CStringEdPackage9ParseLineEPKch_270
	cmp al, 0x9
	jz _ZN16CStringEdPackage9ParseLineEPKch_270
	mov edx, [ebp-0x43c]
	jmp _ZN16CStringEdPackage9ParseLineEPKch_280
_ZN16CStringEdPackage9ParseLineEPKch_300:
	cmp al, 0x20
	jz _ZN16CStringEdPackage9ParseLineEPKch_290
	cmp al, 0x9
	jz _ZN16CStringEdPackage9ParseLineEPKch_290
_ZN16CStringEdPackage9ParseLineEPKch_280:
	add edx, 0x1
	movzx eax, byte [edx]
	test al, al
	jnz _ZN16CStringEdPackage9ParseLineEPKch_300
_ZN16CStringEdPackage9ParseLineEPKch_290:
	mov ebx, edx
	sub ebx, [ebp-0x43c]
	jmp _ZN16CStringEdPackage9ParseLineEPKch_310
_ZN16CStringEdPackage9ParseLineEPKch_240:
	lea eax, [ebx+0x9]
_ZN16CStringEdPackage9ParseLineEPKch_340:
	movzx edx, byte [eax]
	cmp dl, 0x9
	jz _ZN16CStringEdPackage9ParseLineEPKch_320
	cmp dl, 0x20
	jnz _ZN16CStringEdPackage9ParseLineEPKch_330
_ZN16CStringEdPackage9ParseLineEPKch_320:
	add eax, 0x1
	jmp _ZN16CStringEdPackage9ParseLineEPKch_340
_ZN16CStringEdPackage9ParseLineEPKch_330:
	mov edx, [ebp+0x8]
	mov dword [edx], 0x1
	jmp _ZN16CStringEdPackage9ParseLineEPKch_10
_ZN16CStringEdPackage9ParseLineEPKch_270:
	xor ebx, ebx
_ZN16CStringEdPackage9ParseLineEPKch_310:
	mov dword [esp+0x8], 0x400
	mov dword [esp+0x4], _ZZN16CStringEdPackage9ParseLineEPKchE5C.236
	lea eax, [ebp-0x42d]
	mov [esp], eax
	call memcpy
	mov eax, 0x3ff
	cmp ebx, 0x400
	cmovb eax, ebx
	mov [esp+0x8], eax
	mov edx, [ebp-0x43c]
	mov [esp+0x4], edx
	lea eax, [ebp-0x42d]
	mov [esp], eax
	call strncpy
	lea ebx, [ebp-0x20]
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	lea edi, [ebp-0x42d]
	repne scasb
	not ecx
	mov edx, [ebp-0x43c]
	lea ecx, [ecx+edx-0x1]
	mov [esp+0x8], ecx
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _ZN16CStringEdPackage12InsideQuotesEPKc
	sub esp, 0x4
	lea eax, [ebp-0x24]
	mov [esp+0x8], ebx
	mov edx, [ebp+0x8]
	mov [esp+0x4], edx
	mov [esp], eax
	call _ZN16CStringEdPackage22ConvertCRLiterals_ReadESs
	sub esp, 0x4
	mov ebx, [ebp-0x20]
	sub ebx, 0xc
	mov edi, [0xd5cc01c]
	cmp ebx, edi
	jnz _ZN16CStringEdPackage9ParseLineEPKch_350
_ZN16CStringEdPackage9ParseLineEPKch_420:
	mov ebx, [ebp-0x24]
	mov dword [ebp-0x2d], 0x0
	mov dword [ebp-0x29], 0x0
	mov byte [ebp-0x25], 0x0
	mov dword [esp+0x4], _cstring_2
	mov [esp], ebx
	call strstr
	mov ecx, eax
	test eax, eax
	jz _ZN16CStringEdPackage9ParseLineEPKch_360
	movsx edx, byte [eax+0x2]
	lea eax, [edx-0x30]
	cmp eax, 0x9
	jbe _ZN16CStringEdPackage9ParseLineEPKch_370
_ZN16CStringEdPackage9ParseLineEPKch_390:
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_illegal_string_f
	call _Z2vaPKcz
	mov ebx, eax
_ZN16CStringEdPackage9ParseLineEPKch_410:
	mov dword [esp+0x4], _cstring_english
	lea eax, [ebp-0x42d]
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	setz al
	movzx edx, al
	test ebx, ebx
	jz _ZN16CStringEdPackage9ParseLineEPKch_380
_ZN16CStringEdPackage9ParseLineEPKch_480:
	mov esi, [ebp-0x24]
	sub esi, 0xc
	cmp edi, esi
	jz _ZN16CStringEdPackage9ParseLineEPKch_130
	lea eax, [esi+0x8]
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg _ZN16CStringEdPackage9ParseLineEPKch_130
	lea eax, [ebp-0x1a]
	mov [esp+0x4], eax
	mov [esp], esi
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp _ZN16CStringEdPackage9ParseLineEPKch_130
_ZN16CStringEdPackage9ParseLineEPKch_400:
	movsx edx, byte [ecx+0x2]
	lea eax, [edx-0x30]
	cmp eax, 0x9
	ja _ZN16CStringEdPackage9ParseLineEPKch_390
_ZN16CStringEdPackage9ParseLineEPKch_370:
	lea eax, [edx-0x31]
	cmp byte [ebp+eax-0x2d], 0x0
	jnz _ZN16CStringEdPackage9ParseLineEPKch_390
	mov byte [ebp+eax-0x2d], 0x1
	lea eax, [ecx+0x3]
	mov dword [esp+0x4], _cstring_2
	mov [esp], eax
	call strstr
	mov ecx, eax
	test eax, eax
	jnz _ZN16CStringEdPackage9ParseLineEPKch_400
_ZN16CStringEdPackage9ParseLineEPKch_360:
	xor ebx, ebx
	jmp _ZN16CStringEdPackage9ParseLineEPKch_410
_ZN16CStringEdPackage9ParseLineEPKch_260:
	mov ebx, _cstring_error_parsing_fi
	jmp _ZN16CStringEdPackage9ParseLineEPKch_130
_ZN16CStringEdPackage9ParseLineEPKch_250:
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_unknown_keyword_
	call _Z2vaPKcz
	mov ebx, eax
	jmp _ZN16CStringEdPackage9ParseLineEPKch_130
_ZN16CStringEdPackage9ParseLineEPKch_350:
	lea eax, [ebx+0x8]
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg _ZN16CStringEdPackage9ParseLineEPKch_420
	lea eax, [ebp-0x19]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp _ZN16CStringEdPackage9ParseLineEPKch_420
	mov ebx, eax
	mov eax, [ebp-0x20]
	lea esi, [eax-0xc]
	cmp esi, [0xd5cc01c]
	jnz _ZN16CStringEdPackage9ParseLineEPKch_430
_ZN16CStringEdPackage9ParseLineEPKch_440:
	mov [esp], ebx
	call _Unwind_Resume
_ZN16CStringEdPackage9ParseLineEPKch_450:
	mov [esp], eax
	call _Unwind_Resume
_ZN16CStringEdPackage9ParseLineEPKch_430:
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg _ZN16CStringEdPackage9ParseLineEPKch_440
	lea eax, [ebp-0x19]
	mov [esp+0x4], eax
	mov [esp], esi
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp _ZN16CStringEdPackage9ParseLineEPKch_440
	mov ebx, eax
	mov eax, [ebp-0x24]
	lea esi, [eax-0xc]
	cmp esi, [0xd5cc01c]
	jz _ZN16CStringEdPackage9ParseLineEPKch_440
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg _ZN16CStringEdPackage9ParseLineEPKch_440
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov [esp], esi
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp _ZN16CStringEdPackage9ParseLineEPKch_440
	jmp _ZN16CStringEdPackage9ParseLineEPKch_450
	mov ebx, eax
	mov eax, [ebp-0x24]
	lea esi, [eax-0xc]
	cmp esi, [0xd5cc01c]
	jz _ZN16CStringEdPackage9ParseLineEPKch_440
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg _ZN16CStringEdPackage9ParseLineEPKch_440
	lea eax, [ebp-0x1b]
	mov [esp+0x4], eax
	mov [esp], esi
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp _ZN16CStringEdPackage9ParseLineEPKch_440
_ZN16CStringEdPackage9ParseLineEPKch_460:
	mov ebx, eax
	jmp _ZN16CStringEdPackage9ParseLineEPKch_440
	jmp _ZN16CStringEdPackage9ParseLineEPKch_460
_ZN16CStringEdPackage9ParseLineEPKch_380:
	test al, al
	jnz _ZN16CStringEdPackage9ParseLineEPKch_470
	mov eax, esi
	test al, al
	jnz _ZN16CStringEdPackage9ParseLineEPKch_480
_ZN16CStringEdPackage9ParseLineEPKch_470:
	mov [esp+0xc], edx
	mov eax, [ebp-0x24]
	mov [esp+0x8], eax
	mov edx, [ebp-0x440]
	mov [esp+0x4], edx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _ZN16CStringEdPackage9SetStringEPKcS1_i
	jmp _ZN16CStringEdPackage9ParseLineEPKch_480
	mov ebx, eax
	mov eax, [ebp-0x24]
	lea esi, [eax-0xc]
	cmp edi, esi
	jz _ZN16CStringEdPackage9ParseLineEPKch_440
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg _ZN16CStringEdPackage9ParseLineEPKch_440
	lea eax, [ebp-0x1a]
	mov [esp+0x4], eax
	mov [esp], esi
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp _ZN16CStringEdPackage9ParseLineEPKch_440
	jmp _ZN16CStringEdPackage9ParseLineEPKch_450
	jmp _ZN16CStringEdPackage9ParseLineEPKch_460
	nop


;CStringEdPackage::SetString(char const*, char const*, int)
_ZN16CStringEdPackage9SetStringEPKcS1_i:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov esi, [ebp+0x10]
	mov eax, [ebp+0x8]
	mov edx, [eax+0xc]
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], _cstring_s_s
	call _Z2vaPKcz
	lea edx, [ebp-0x1a]
	mov [esp+0x8], edx
	mov [esp+0x4], eax
	lea ebx, [ebp-0x20]
	mov [esp], ebx
	call _ZNSsC1EPKcRKSaIcE
	mov eax, [ebp+0x8]
	add eax, 0x10
	mov [esp+0x4], ebx
	mov [esp], eax
	call _ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE4findERS1_
	mov edi, eax
	mov eax, [ebp-0x20]
	lea ebx, [eax-0xc]
	cmp ebx, [0xd5cc01c]
	jnz _ZN16CStringEdPackage9SetStringEPKcS1_i_10
_ZN16CStringEdPackage9SetStringEPKcS1_i_40:
	add edi, 0x14
	mov [ebp-0x2c], edi
	mov edi, [ebp+0x14]
	test edi, edi
	jnz _ZN16CStringEdPackage9SetStringEPKcS1_i_20
	mov dword [esp+0x4], _cstring_same
	mov [esp], esi
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _ZN16CStringEdPackage9SetStringEPKcS1_i_30
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, esi
	repne scasb
	not ecx
	sub ecx, 0x1
	mov [esp+0x8], ecx
	mov [esp+0x4], esi
	mov eax, [ebp-0x2c]
	mov [esp], eax
	call _ZNSs6assignEPKcm
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN16CStringEdPackage9SetStringEPKcS1_i_20:
	xor ebx, ebx
	cld
	mov ecx, 0xffffffff
	mov edi, esi
	mov eax, ebx
	repne scasb
	not ecx
	sub ecx, 0x1
	mov [esp+0x8], ecx
	mov [esp+0x4], esi
	mov eax, [ebp-0x2c]
	mov [esp], eax
	call _ZNSs6assignEPKcm
	mov edx, [ebp+0x8]
	add edx, 0x8
	cld
	mov ecx, 0xffffffff
	mov edi, esi
	mov eax, ebx
	repne scasb
	not ecx
	sub ecx, 0x1
	mov [esp+0x8], ecx
	mov [esp+0x4], esi
	mov [esp], edx
	call _ZNSs6assignEPKcm
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN16CStringEdPackage9SetStringEPKcS1_i_30:
	mov eax, [ebp+0x8]
	add eax, 0x8
	mov [esp+0x4], eax
	mov eax, [ebp-0x2c]
	mov [esp], eax
	call _ZNSs6assignERKSs
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN16CStringEdPackage9SetStringEPKcS1_i_10:
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg _ZN16CStringEdPackage9SetStringEPKcS1_i_40
	lea eax, [ebp-0x19]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp _ZN16CStringEdPackage9SetStringEPKcS1_i_40
_ZN16CStringEdPackage9SetStringEPKcS1_i_50:
	mov [esp], eax
	call _Unwind_Resume
	jmp _ZN16CStringEdPackage9SetStringEPKcS1_i_50
	nop


;std::_Rb_tree<std::string, std::pair<std::string const, std::string>, std::_Select1st<std::pair<std::string const, std::string> >, std::less<std::string>, std::allocator<std::pair<std::string const, std::string> > >::lower_bound(std::string const&)
_ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE11lower_boundERS1_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov eax, [ebp+0x8]
	mov edx, [eax+0x8]
	mov [ebp-0x2c], edx
	add eax, 0x4
	mov [ebp-0x28], eax
	test edx, edx
	jz _ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE11lower_boundERS1__10
	mov ecx, [ebp+0xc]
	mov ecx, [ecx]
	mov [ebp-0x30], ecx
	cld
	mov edx, [ebp-0x2c]
	mov esi, [ebp-0x2c]
	jmp _ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE11lower_boundERS1__20
_ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE11lower_boundERS1__60:
	lea eax, [ebp-0x18]
	mov edx, [edx]
	mov ecx, [eax]
	cmp ecx, ecx
	mov esi, edx
	mov edi, [ebp-0x30]
	repe cmpsb
	mov eax, 0x0
	jz _ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE11lower_boundERS1__30
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
_ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE11lower_boundERS1__30:
	sub ebx, [ebp-0x24]
	test eax, eax
	cmovnz ebx, eax
	mov [ebp-0x34], ebx
	test ebx, ebx
	js _ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE11lower_boundERS1__40
_ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE11lower_boundERS1__80:
	mov ecx, [ebp-0x2c]
	mov eax, [ecx+0x8]
	mov [ebp-0x28], ecx
	test eax, eax
	jz _ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE11lower_boundERS1__50
_ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE11lower_boundERS1__90:
	mov [ebp-0x2c], eax
	mov edx, eax
	mov esi, eax
_ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE11lower_boundERS1__20:
	add edx, 0x10
	mov eax, [esi+0x10]
	mov ebx, [eax-0xc]
	mov [ebp-0x14], ebx
	mov eax, [ebp-0x30]
	mov eax, [eax-0xc]
	mov [ebp-0x24], eax
	mov [ebp-0x18], eax
	cmp ebx, eax
	ja _ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE11lower_boundERS1__60
	lea eax, [ebp-0x14]
	mov edx, [edx]
	mov ecx, [eax]
	cmp ecx, ecx
	mov esi, edx
	mov edi, [ebp-0x30]
	repe cmpsb
	mov eax, 0x0
	jz _ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE11lower_boundERS1__70
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
_ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE11lower_boundERS1__70:
	sub ebx, [ebp-0x24]
	test eax, eax
	cmovnz ebx, eax
	mov [ebp-0x34], ebx
	test ebx, ebx
	jns _ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE11lower_boundERS1__80
_ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE11lower_boundERS1__40:
	mov esi, [ebp-0x2c]
	mov eax, [esi+0xc]
	test eax, eax
	jnz _ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE11lower_boundERS1__90
_ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE11lower_boundERS1__50:
	mov eax, [ebp-0x28]
_ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE11lower_boundERS1__10:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;std::_Rb_tree<std::string, std::pair<std::string const, std::string>, std::_Select1st<std::pair<std::string const, std::string> >, std::less<std::string>, std::allocator<std::pair<std::string const, std::string> > >::insert_unique(std::pair<std::string const, std::string> const&)
_ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE13insert_uniqueERKS2_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x8c
	mov dword [ebp-0x48], 0x0
	mov dword [ebp-0x44], 0x0
	mov eax, [ebp+0x8]
	mov eax, [eax+0x8]
	mov [ebp-0x3c], eax
	mov edx, [ebp+0x8]
	add edx, 0x4
	mov [ebp-0x38], edx
	test eax, eax
	jz _ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE13insert_uniqueERKS2__10
	mov ecx, [ebp+0xc]
	mov ecx, [ecx]
	mov [ebp-0x4c], ecx
	mov edx, [ebp-0x3c]
	mov esi, ecx
	mov edi, [ebp-0x3c]
	jmp _ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE13insert_uniqueERKS2__20
_ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE13insert_uniqueERKS2__60:
	lea eax, [ebp-0x1c]
	mov edx, [edx]
	mov ecx, [eax]
	cld
	cmp ecx, ecx
	mov esi, [ebp-0x4c]
	mov edi, edx
	repe cmpsb
	mov eax, 0x0
	jz _ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE13insert_uniqueERKS2__30
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
_ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE13insert_uniqueERKS2__30:
	sub ebx, [ebp-0x34]
	test eax, eax
	cmovnz ebx, eax
	mov [ebp-0x60], ebx
	mov edx, ebx
	shr edx, 0x1f
	test dl, dl
	jz _ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE13insert_uniqueERKS2__40
_ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE13insert_uniqueERKS2__80:
	mov ecx, [ebp-0x3c]
	mov eax, [ecx+0x8]
	test eax, eax
	jz _ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE13insert_uniqueERKS2__50
_ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE13insert_uniqueERKS2__90:
	mov [ebp-0x3c], eax
	mov edx, eax
	mov esi, [ebp-0x4c]
	mov edi, eax
_ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE13insert_uniqueERKS2__20:
	add edx, 0x10
	mov ebx, [esi-0xc]
	mov [ebp-0x20], ebx
	mov eax, [edi+0x10]
	mov eax, [eax-0xc]
	mov [ebp-0x34], eax
	mov [ebp-0x1c], eax
	cmp ebx, eax
	ja _ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE13insert_uniqueERKS2__60
	lea eax, [ebp-0x20]
	mov edx, [edx]
	mov ecx, [eax]
	cld
	cmp ecx, ecx
	mov esi, [ebp-0x4c]
	mov edi, edx
	repe cmpsb
	mov eax, 0x0
	jz _ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE13insert_uniqueERKS2__70
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
_ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE13insert_uniqueERKS2__70:
	sub ebx, [ebp-0x34]
	test eax, eax
	cmovnz ebx, eax
	mov [ebp-0x60], ebx
	mov edx, ebx
	shr edx, 0x1f
	test dl, dl
	jnz _ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE13insert_uniqueERKS2__80
_ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE13insert_uniqueERKS2__40:
	mov esi, [ebp-0x3c]
	mov eax, [esi+0xc]
	test eax, eax
	jnz _ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE13insert_uniqueERKS2__90
_ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE13insert_uniqueERKS2__50:
	mov edi, [ebp-0x3c]
	mov [ebp-0x38], edi
	test dl, dl
	jz _ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE13insert_uniqueERKS2__100
	mov edx, edi
_ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE13insert_uniqueERKS2__10:
	mov eax, [ebp+0x8]
	cmp edx, [eax+0xc]
	jz _ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE13insert_uniqueERKS2__110
	mov [esp], edx
	call _ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base
	mov [ebp-0x2c], eax
	mov edx, eax
	mov edi, eax
	add edx, 0x10
	mov eax, [edi+0x10]
	mov ebx, [eax-0xc]
	mov [ebp-0x1c], ebx
	mov eax, [ebp+0xc]
	mov eax, [eax]
	mov [ebp-0x4c], eax
	mov ecx, [eax-0xc]
	mov [ebp-0x30], ecx
	mov [ebp-0x20], ecx
	cmp ebx, ecx
	jbe _ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE13insert_uniqueERKS2__120
_ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE13insert_uniqueERKS2__150:
	lea eax, [ebp-0x20]
_ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE13insert_uniqueERKS2__160:
	mov edx, [edx]
	mov ecx, [eax]
	cld
	cmp ecx, ecx
	mov esi, edx
	mov edi, [ebp-0x4c]
	repe cmpsb
	mov eax, 0x0
	jz _ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE13insert_uniqueERKS2__130
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
_ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE13insert_uniqueERKS2__130:
	sub ebx, [ebp-0x30]
	test eax, eax
	cmovnz ebx, eax
	mov [ebp-0x5c], ebx
	test ebx, ebx
	js _ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE13insert_uniqueERKS2__140
	mov eax, [ebp-0x2c]
	xor edx, edx
_ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE13insert_uniqueERKS2__170:
	mov [ebp-0x44], dl
	mov [ebp-0x48], eax
	mov eax, [ebp-0x48]
	mov edx, [ebp-0x44]
	add esp, 0x8c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE13insert_uniqueERKS2__100:
	mov [ebp-0x2c], edi
	mov edx, edi
	mov edi, [ebp-0x2c]
	add edx, 0x10
	mov eax, [edi+0x10]
	mov ebx, [eax-0xc]
	mov [ebp-0x1c], ebx
	mov eax, [ebp+0xc]
	mov eax, [eax]
	mov [ebp-0x4c], eax
	mov ecx, [eax-0xc]
	mov [ebp-0x30], ecx
	mov [ebp-0x20], ecx
	cmp ebx, ecx
	ja _ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE13insert_uniqueERKS2__150
_ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE13insert_uniqueERKS2__120:
	lea eax, [ebp-0x1c]
	jmp _ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE13insert_uniqueERKS2__160
_ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE13insert_uniqueERKS2__110:
	mov ecx, [ebp+0xc]
	mov [esp+0xc], ecx
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call _ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE9_M_insertEPSt18_Rb_tree_node_baseSA_RKS2_
	mov edx, 0x1
	mov [ebp-0x44], dl
	mov [ebp-0x48], eax
	mov eax, [ebp-0x48]
	mov edx, [ebp-0x44]
	add esp, 0x8c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE13insert_uniqueERKS2__140:
	mov ecx, [ebp+0xc]
	mov [esp+0xc], ecx
	mov esi, [ebp-0x38]
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x0
	mov edi, [ebp+0x8]
	mov [esp], edi
	call _ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE9_M_insertEPSt18_Rb_tree_node_baseSA_RKS2_
	mov edx, 0x1
	jmp _ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE13insert_uniqueERKS2__170


;std::_Rb_tree<std::string, std::pair<std::string const, std::string>, std::_Select1st<std::pair<std::string const, std::string> >, std::less<std::string>, std::allocator<std::pair<std::string const, std::string> > >::insert_unique(std::_Rb_tree_iterator<std::pair<std::string const, std::string> >, std::pair<std::string const, std::string> const&)
_ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE13insert_uniqueESt17_Rb_tree_iteratorIS2_ERKS2_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x7c
	mov eax, [ebp+0x8]
	add eax, 0x4
	cmp eax, [ebp+0xc]
	jz _ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE13insert_uniqueESt17_Rb_tree_iteratorIS2_ERKS2__10
	mov edx, [ebp+0xc]
	mov eax, [ebp+0x8]
	cmp edx, [eax+0x10]
	jz _ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE13insert_uniqueESt17_Rb_tree_iteratorIS2_ERKS2__20
	mov [esp], edx
	call _ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base
	mov [ebp-0x2c], eax
	mov edx, [ebp+0xc]
	add edx, 0x10
	mov ecx, [ebp+0xc]
	mov eax, [ecx+0x10]
	mov ebx, [eax-0xc]
	mov [ebp-0x20], ebx
	mov esi, [ebp+0x10]
	mov esi, [esi]
	mov [ebp-0x40], esi
	mov edi, [esi-0xc]
	mov [ebp-0x34], edi
	mov [ebp-0x1c], edi
	cmp ebx, edi
	ja _ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE13insert_uniqueESt17_Rb_tree_iteratorIS2_ERKS2__30
	lea eax, [ebp-0x20]
	mov edx, [edx]
	mov ecx, [eax]
	cld
	cmp ecx, ecx
	mov esi, edx
	mov edi, [ebp-0x40]
	repe cmpsb
	mov eax, 0x0
	jz _ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE13insert_uniqueESt17_Rb_tree_iteratorIS2_ERKS2__40
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
_ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE13insert_uniqueESt17_Rb_tree_iteratorIS2_ERKS2__40:
	sub ebx, [ebp-0x34]
	test eax, eax
	cmovnz ebx, eax
	mov [ebp-0x50], ebx
	test ebx, ebx
	js _ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE13insert_uniqueESt17_Rb_tree_iteratorIS2_ERKS2__50
_ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE13insert_uniqueESt17_Rb_tree_iteratorIS2_ERKS2__70:
	mov ecx, [ebp+0x10]
	mov [esp+0x4], ecx
	mov esi, [ebp+0x8]
	mov [esp], esi
	call _ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE13insert_uniqueERKS2_
_ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE13insert_uniqueESt17_Rb_tree_iteratorIS2_ERKS2__110:
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE13insert_uniqueESt17_Rb_tree_iteratorIS2_ERKS2__30:
	lea eax, [ebp-0x1c]
	mov edx, [edx]
	mov ecx, [eax]
	cld
	cmp ecx, ecx
	mov esi, edx
	mov edi, [ebp-0x40]
	repe cmpsb
	mov eax, 0x0
	jz _ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE13insert_uniqueESt17_Rb_tree_iteratorIS2_ERKS2__60
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
_ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE13insert_uniqueESt17_Rb_tree_iteratorIS2_ERKS2__60:
	sub ebx, [ebp-0x34]
	test eax, eax
	cmovnz ebx, eax
	mov [ebp-0x50], ebx
	test ebx, ebx
	jns _ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE13insert_uniqueESt17_Rb_tree_iteratorIS2_ERKS2__70
_ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE13insert_uniqueESt17_Rb_tree_iteratorIS2_ERKS2__50:
	mov edx, [ebp-0x2c]
	add edx, 0x10
	mov ecx, [ebp-0x40]
	mov ebx, [ecx-0xc]
	mov [ebp-0x1c], ebx
	mov esi, [ebp-0x2c]
	mov eax, [esi+0x10]
	mov eax, [eax-0xc]
	mov [ebp-0x30], eax
	mov [ebp-0x20], eax
	cmp ebx, eax
	jbe _ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE13insert_uniqueESt17_Rb_tree_iteratorIS2_ERKS2__80
	lea eax, [ebp-0x20]
_ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE13insert_uniqueESt17_Rb_tree_iteratorIS2_ERKS2__170:
	mov edx, [edx]
	mov ecx, [eax]
	cld
	cmp ecx, ecx
	mov esi, [ebp-0x40]
	mov edi, edx
	repe cmpsb
	mov eax, 0x0
	jz _ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE13insert_uniqueESt17_Rb_tree_iteratorIS2_ERKS2__90
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
_ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE13insert_uniqueESt17_Rb_tree_iteratorIS2_ERKS2__90:
	sub ebx, [ebp-0x30]
	test eax, eax
	cmovnz ebx, eax
	mov [ebp-0x4c], ebx
	test ebx, ebx
	jns _ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE13insert_uniqueESt17_Rb_tree_iteratorIS2_ERKS2__70
	mov edi, [ebp+0xc]
	mov ebx, [edi+0xc]
	test ebx, ebx
	jz _ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE13insert_uniqueESt17_Rb_tree_iteratorIS2_ERKS2__100
	mov ecx, [ebp+0x10]
	mov [esp+0xc], ecx
	mov esi, [ebp-0x2c]
	mov [esp+0x8], esi
	mov [esp+0x4], esi
	mov edi, [ebp+0x8]
	mov [esp], edi
	call _ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE9_M_insertEPSt18_Rb_tree_node_baseSA_RKS2_
	jmp _ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE13insert_uniqueESt17_Rb_tree_iteratorIS2_ERKS2__110
_ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE13insert_uniqueESt17_Rb_tree_iteratorIS2_ERKS2__20:
	mov ecx, eax
	mov esi, [ecx+0x14]
	test esi, esi
	jz _ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE13insert_uniqueESt17_Rb_tree_iteratorIS2_ERKS2__120
_ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE13insert_uniqueESt17_Rb_tree_iteratorIS2_ERKS2__180:
	mov esi, ecx
	add ecx, 0x10
	mov [ebp-0x3c], ecx
	mov eax, [esi+0x10]
	lea edx, [eax+0x10]
	mov eax, [eax+0x10]
	mov ebx, [eax-0xc]
	mov [ebp-0x1c], ebx
	mov edi, [ebp+0x10]
	mov edi, [edi]
	mov [ebp-0x40], edi
	mov eax, [edi-0xc]
	mov [ebp-0x38], eax
	mov [ebp-0x20], eax
	cmp ebx, eax
	jbe _ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE13insert_uniqueESt17_Rb_tree_iteratorIS2_ERKS2__130
	lea eax, [ebp-0x20]
_ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE13insert_uniqueESt17_Rb_tree_iteratorIS2_ERKS2__160:
	mov edx, [edx]
	mov ecx, [eax]
	cld
	cmp ecx, ecx
	mov esi, edx
	mov edi, [ebp-0x40]
	repe cmpsb
	mov eax, 0x0
	jz _ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE13insert_uniqueESt17_Rb_tree_iteratorIS2_ERKS2__140
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
_ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE13insert_uniqueESt17_Rb_tree_iteratorIS2_ERKS2__140:
	sub ebx, [ebp-0x38]
	test eax, eax
	cmovnz ebx, eax
	mov [ebp-0x50], ebx
	test ebx, ebx
	js _ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE13insert_uniqueESt17_Rb_tree_iteratorIS2_ERKS2__150
	mov esi, [ebp+0x8]
_ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE13insert_uniqueESt17_Rb_tree_iteratorIS2_ERKS2__190:
	mov ecx, [ebp+0x10]
	mov [esp+0x4], ecx
	mov [esp], esi
	call _ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE13insert_uniqueERKS2_
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE13insert_uniqueESt17_Rb_tree_iteratorIS2_ERKS2__130:
	lea eax, [ebp-0x1c]
	jmp _ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE13insert_uniqueESt17_Rb_tree_iteratorIS2_ERKS2__160
_ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE13insert_uniqueESt17_Rb_tree_iteratorIS2_ERKS2__80:
	lea eax, [ebp-0x1c]
	jmp _ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE13insert_uniqueESt17_Rb_tree_iteratorIS2_ERKS2__170
_ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE13insert_uniqueESt17_Rb_tree_iteratorIS2_ERKS2__10:
	mov ecx, [ebp+0x8]
	mov esi, [ecx+0x14]
	test esi, esi
	jnz _ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE13insert_uniqueESt17_Rb_tree_iteratorIS2_ERKS2__180
_ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE13insert_uniqueESt17_Rb_tree_iteratorIS2_ERKS2__120:
	mov esi, ecx
	jmp _ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE13insert_uniqueESt17_Rb_tree_iteratorIS2_ERKS2__190
_ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE13insert_uniqueESt17_Rb_tree_iteratorIS2_ERKS2__150:
	mov edi, [ebp+0x10]
	mov [esp+0xc], edi
	mov edx, [ebp-0x3c]
	mov eax, [edx]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE9_M_insertEPSt18_Rb_tree_node_baseSA_RKS2_
	jmp _ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE13insert_uniqueESt17_Rb_tree_iteratorIS2_ERKS2__110
_ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE13insert_uniqueESt17_Rb_tree_iteratorIS2_ERKS2__100:
	mov eax, [ebp+0x10]
	mov [esp+0xc], eax
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x0
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE9_M_insertEPSt18_Rb_tree_node_baseSA_RKS2_
	jmp _ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE13insert_uniqueESt17_Rb_tree_iteratorIS2_ERKS2__110


;std::_Rb_tree<std::string, std::pair<std::string const, std::string>, std::_Select1st<std::pair<std::string const, std::string> >, std::less<std::string>, std::allocator<std::pair<std::string const, std::string> > >::find(std::string const&)
_ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE4findERS1_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov eax, [ebp+0x8]
	mov edx, [eax+0x8]
	mov [ebp-0x38], edx
	add eax, 0x4
	mov [ebp-0x34], eax
	test edx, edx
	jz _ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE4findERS1__10
	mov [ebp-0x24], eax
	mov ecx, [ebp+0xc]
	mov ecx, [ecx]
	mov [ebp-0x3c], ecx
	mov edx, [ebp-0x38]
	mov esi, [ebp-0x38]
	mov edi, ecx
	jmp _ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE4findERS1__20
_ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE4findERS1__60:
	lea eax, [ebp-0x14]
	mov edx, [edx]
	mov ecx, [eax]
	cld
	cmp ecx, ecx
	mov esi, edx
	mov edi, [ebp-0x3c]
	repe cmpsb
	mov eax, 0x0
	jz _ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE4findERS1__30
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
_ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE4findERS1__30:
	sub ebx, [ebp-0x30]
	test eax, eax
	cmovnz ebx, eax
	mov [ebp-0x48], ebx
	test ebx, ebx
	js _ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE4findERS1__40
_ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE4findERS1__80:
	mov ecx, [ebp-0x38]
	mov eax, [ecx+0x8]
	mov [ebp-0x24], ecx
	test eax, eax
	jz _ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE4findERS1__50
_ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE4findERS1__90:
	mov [ebp-0x38], eax
	mov edx, eax
	mov esi, eax
	mov edi, [ebp-0x3c]
_ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE4findERS1__20:
	add edx, 0x10
	mov eax, [esi+0x10]
	mov ebx, [eax-0xc]
	mov [ebp-0x18], ebx
	mov edi, [edi-0xc]
	mov [ebp-0x30], edi
	mov [ebp-0x14], edi
	cmp ebx, edi
	ja _ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE4findERS1__60
	lea eax, [ebp-0x18]
	mov edx, [edx]
	mov ecx, [eax]
	cld
	cmp ecx, ecx
	mov esi, edx
	mov edi, [ebp-0x3c]
	repe cmpsb
	mov eax, 0x0
	jz _ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE4findERS1__70
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
_ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE4findERS1__70:
	sub ebx, [ebp-0x30]
	test eax, eax
	cmovnz ebx, eax
	mov [ebp-0x48], ebx
	test ebx, ebx
	jns _ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE4findERS1__80
_ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE4findERS1__40:
	mov esi, [ebp-0x38]
	mov eax, [esi+0xc]
	test eax, eax
	jnz _ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE4findERS1__90
_ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE4findERS1__50:
	mov eax, [ebp-0x24]
	mov edx, [ebp-0x34]
_ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE4findERS1__170:
	mov [ebp-0x28], eax
	cmp eax, edx
	jz _ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE4findERS1__100
	mov edx, eax
	add edx, 0x10
	mov ecx, [ebp+0xc]
	mov ecx, [ecx]
	mov [ebp-0x3c], ecx
	mov ebx, [ecx-0xc]
	mov [ebp-0x14], ebx
	mov eax, [eax+0x10]
	mov eax, [eax-0xc]
	mov [ebp-0x2c], eax
	mov [ebp-0x18], eax
	cmp ebx, eax
	jbe _ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE4findERS1__110
	lea eax, [ebp-0x18]
	mov edx, [edx]
	mov ecx, [eax]
	cld
	cmp ecx, ecx
	mov esi, [ebp-0x3c]
	mov edi, edx
	repe cmpsb
	mov eax, 0x0
	jz _ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE4findERS1__120
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
_ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE4findERS1__120:
	sub ebx, [ebp-0x2c]
	test eax, eax
	cmovnz ebx, eax
	mov [ebp-0x44], ebx
	test ebx, ebx
	js _ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE4findERS1__130
_ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE4findERS1__150:
	mov eax, [ebp-0x28]
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE4findERS1__110:
	lea eax, [ebp-0x14]
	mov edx, [edx]
	mov ecx, [eax]
	cld
	cmp ecx, ecx
	mov esi, [ebp-0x3c]
	mov edi, edx
	repe cmpsb
	mov eax, 0x0
	jz _ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE4findERS1__140
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
_ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE4findERS1__140:
	sub ebx, [ebp-0x2c]
	test eax, eax
	cmovnz ebx, eax
	mov [ebp-0x44], ebx
	test ebx, ebx
	jns _ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE4findERS1__150
_ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE4findERS1__130:
	mov ecx, [ebp-0x34]
	mov [ebp-0x28], ecx
	mov eax, ecx
_ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE4findERS1__160:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE4findERS1__100:
	mov ecx, edx
	mov [ebp-0x28], ecx
	mov eax, ecx
	jmp _ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE4findERS1__160
_ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE4findERS1__10:
	mov edi, eax
	mov [ebp-0x24], eax
	mov edx, edi
	jmp _ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE4findERS1__170
	nop


;std::_Rb_tree<std::string, std::pair<std::string const, std::string>, std::_Select1st<std::pair<std::string const, std::string> >, std::less<std::string>, std::allocator<std::pair<std::string const, std::string> > >::_M_erase(std::_Rb_tree_node<std::pair<std::string const, std::string> >*)
_ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E:
_ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E_30:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov ebx, [ebp+0xc]
	test ebx, ebx
	jnz _ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E_10
	jmp _ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E_20
_ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E_60:
	mov ebx, [ebp-0x30]
_ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E_10:
	mov eax, [ebx+0xc]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E_30
	mov edx, [ebx+0x8]
	mov [ebp-0x30], edx
	lea eax, [ebx+0x10]
	mov [ebp-0x2c], eax
	mov eax, [ebx+0x14]
	lea esi, [eax-0xc]
	mov edi, [0xd5cc01c]
	cmp esi, edi
	jnz _ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E_40
_ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E_70:
	mov edx, [ebp-0x2c]
	mov eax, [edx]
	lea esi, [eax-0xc]
	cmp esi, edi
	jnz _ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E_50
_ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E_80:
	mov [esp], ebx
	call _ZdlPv
	mov eax, [ebp-0x30]
	test eax, eax
	jnz _ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E_60
_ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E_20:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E_40:
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg _ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E_70
	lea eax, [ebp-0x1a]
	mov [esp+0x4], eax
	mov [esp], esi
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp _ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E_70
_ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E_50:
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg _ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E_80
	lea eax, [ebp-0x19]
	mov [esp+0x4], eax
	mov [esp], esi
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp _ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E_80
	mov ebx, eax
_ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E_90:
	mov [esp], ebx
	call _Unwind_Resume
	mov ebx, eax
	mov edx, [ebp-0x2c]
	mov eax, [edx]
	lea esi, [eax-0xc]
	cmp esi, edi
	jz _ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E_90
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg _ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E_90
	lea eax, [ebp-0x19]
	mov [esp+0x4], eax
	mov [esp], esi
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp _ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E_90


;std::_Rb_tree<std::string, std::pair<std::string const, std::string>, std::_Select1st<std::pair<std::string const, std::string> >, std::less<std::string>, std::allocator<std::pair<std::string const, std::string> > >::_M_insert(std::_Rb_tree_node_base*, std::_Rb_tree_node_base*, std::pair<std::string const, std::string> const&)
_ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE9_M_insertEPSt18_Rb_tree_node_baseSA_RKS2_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov esi, [ebp+0x14]
	mov dword [esp], 0x18
	call _Znwm
	mov [ebp-0x30], eax
	mov ebx, eax
	add ebx, 0x10
	jz _ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE9_M_insertEPSt18_Rb_tree_node_baseSA_RKS2__10
	mov [esp+0x4], esi
	mov [esp], ebx
	call _ZNSsC1ERKSs
	lea eax, [esi+0x4]
	mov edx, [ebp-0x30]
	add edx, 0x14
	mov [esp+0x4], eax
	mov [esp], edx
	call _ZNSsC1ERKSs
_ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE9_M_insertEPSt18_Rb_tree_node_baseSA_RKS2__10:
	mov ecx, [ebp+0xc]
	test ecx, ecx
	jz _ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE9_M_insertEPSt18_Rb_tree_node_baseSA_RKS2__20
	mov ecx, [ebp+0x8]
	add ecx, 0x4
	mov [ebp-0x38], ecx
_ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE9_M_insertEPSt18_Rb_tree_node_baseSA_RKS2__30:
	mov eax, 0x1
_ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE9_M_insertEPSt18_Rb_tree_node_baseSA_RKS2__60:
	mov edi, [ebp-0x38]
	mov [esp+0xc], edi
	mov edx, [ebp+0x10]
	mov [esp+0x8], edx
	mov ecx, [ebp-0x30]
	mov [esp+0x4], ecx
	mov [esp], eax
	call _ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_
	mov edi, [ebp+0x8]
	add dword [edi+0x14], 0x1
	mov eax, [ebp-0x30]
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE9_M_insertEPSt18_Rb_tree_node_baseSA_RKS2__20:
	mov edx, [ebp+0x8]
	add edx, 0x4
	mov [ebp-0x38], edx
	cmp [ebp+0x10], edx
	jz _ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE9_M_insertEPSt18_Rb_tree_node_baseSA_RKS2__30
	mov edx, [ebp+0x10]
	add edx, 0x10
	mov esi, [esi]
	mov [ebp-0x34], esi
	mov ebx, [esi-0xc]
	mov [ebp-0x20], ebx
	mov edi, [ebp+0x10]
	mov eax, [edi+0x10]
	mov eax, [eax-0xc]
	mov [ebp-0x2c], eax
	mov [ebp-0x24], eax
	cmp ebx, eax
	jbe _ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE9_M_insertEPSt18_Rb_tree_node_baseSA_RKS2__40
	lea eax, [ebp-0x24]
_ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE9_M_insertEPSt18_Rb_tree_node_baseSA_RKS2__70:
	mov edx, [edx]
	mov ecx, [eax]
	cld
	cmp ecx, ecx
	mov esi, [ebp-0x34]
	mov edi, edx
	repe cmpsb
	mov eax, 0x0
	jz _ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE9_M_insertEPSt18_Rb_tree_node_baseSA_RKS2__50
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
_ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE9_M_insertEPSt18_Rb_tree_node_baseSA_RKS2__50:
	sub ebx, [ebp-0x2c]
	test eax, eax
	cmovnz ebx, eax
	mov [ebp-0x3c], ebx
	test ebx, ebx
	js _ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE9_M_insertEPSt18_Rb_tree_node_baseSA_RKS2__30
	xor eax, eax
	jmp _ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE9_M_insertEPSt18_Rb_tree_node_baseSA_RKS2__60
_ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE9_M_insertEPSt18_Rb_tree_node_baseSA_RKS2__40:
	lea eax, [ebp-0x20]
	jmp _ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE9_M_insertEPSt18_Rb_tree_node_baseSA_RKS2__70
	mov esi, eax
_ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE9_M_insertEPSt18_Rb_tree_node_baseSA_RKS2__80:
	mov [esp], esi
	call __cxa_begin_catch
	mov eax, [ebp-0x30]
	mov [esp], eax
	call _ZdlPv
	call __cxa_rethrow
	mov esi, eax
	mov eax, [ebx]
	lea ebx, [eax-0xc]
	cmp ebx, [0xd5cc01c]
	jz _ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE9_M_insertEPSt18_Rb_tree_node_baseSA_RKS2__80
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg _ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE9_M_insertEPSt18_Rb_tree_node_baseSA_RKS2__80
	lea eax, [ebp-0x19]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp _ZNSt8_Rb_treeISsSt4pairIKSsSsESt10_Select1stIS2_ESt4lessISsESaIS2_EE9_M_insertEPSt18_Rb_tree_node_baseSA_RKS2__80
	mov esi, eax
	call __cxa_end_catch
	mov [esp], esi
	call _Unwind_Resume


;Initialized global or static variables of stringed_ingame:
SECTION .data
TheStringPackage: dd 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0


;Initialized constant data of stringed_ingame:
SECTION .rdata
_ZZN16CStringEdPackage9ParseLineEPKchE5C.236: dd 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0


;Zero initialized global or static variables of stringed_ingame:
SECTION .bss
_ZZN16CStringEdPackage20Filename_WithoutPathEPKcE7sString: resb 0x80
_ZZN16CStringEdPackage19Filename_WithoutExtEPKcE7sString: resb 0x40
_ZZ15SE_GetFoundFileRSsE5sTemp: resb 0x40


;All cstrings:
SECTION .rdata
_cstring_localizedstrings:		db "localizedstrings",0
_cstring_s_in_s:		db "%s in %s",0
_cstring_endmarker:		db "ENDMARKER",0
_cstring_truncated_file_f:		db "Truncated file, failed to find ",22h,"%s",22h," at file end!",0
_cstring_unable_to_load_s:		db "Unable to load ",22h,"%s",22h,"!",0
_cstring_null:		db 0
_cstring_basic_stringeras:		db "basic_string::erase",0
_cstring_n:		db 5ch,"n",0
_cstring_s_s:		db "%s_%s",0
_cstring_:		db 0dh,0ah,0
_cstring_1:		db "//",0
_cstring_version:		db "VERSION",0
_cstring_config:		db "CONFIG",0
_cstring_flags:		db "FLAGS",0
_cstring_reference:		db "REFERENCE",0
_cstring_unexpected_versi:		db "Unexpected version number %d, expecting %d!",0
_cstring_filenotes:		db "FILENOTES",0
_cstring_notes:		db "NOTES",0
_cstring_lang_:		db "LANG_",0
_cstring_2:		db "&&",0
_cstring_illegal_string_f:		db "Illegal string format ",22h,"%s",22h,0
_cstring_english:		db "english",0
_cstring_error_parsing_fi:		db "Error parsing file: Unexpected ",22h,"LANG_",22h,0
_cstring_unknown_keyword_:		db "Unknown keyword at linestart: ",22h,"%s",22h,0
_cstring_same:		db "#same",0



;All constant floats and doubles:
SECTION .rdata

