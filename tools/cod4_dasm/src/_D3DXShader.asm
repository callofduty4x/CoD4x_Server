;Imports of D3DXShader:
	extern __cxa_atexit
	extern _Unwind_Resume
	extern _ZNSsC1EPKcRKSaIcE
	extern _ZNKSs4findEPKcmm
	extern _ZNSsD1Ev
	extern strstr
	extern _ZNSs12_S_constructIPKcEEPcT_S3_RKSaIcESt20forward_iterator_tag
	extern _ZNSs6appendERKSs
	extern _ZN10MacDisplay11GetCardTypeEv
	extern _ZNSs6assignERKSs
	extern _ZNSsC1ERKSs
	extern _ZNSs6appendEPKcm
	extern _Znwm
	extern _Znam
	extern memcpy
	extern _ZdlPv
	extern _ZNSt19basic_istringstreamIcSt11char_traitsIcESaIcEEC1ERKSsSt13_Ios_Openmode
	extern _ZNSsC1Ev
	extern _ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RSbIS4_S5_T1_ES4_
	extern _ZNSt6localeD1Ev
	extern _ZNSt8ios_baseD2Ev
	extern _ZNSs12_M_leak_hardEv
	extern _ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EPKS3_RKS6_
	extern _ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ES3_RKS6_
	extern _ZNSs9_M_mutateEmmm
	extern fopen
	extern fseek
	extern ftell
	extern rewind
	extern fread
	extern fclose
	extern strncmp
	extern _ZN9__gnu_cxx18__exchange_and_addEPVii
	extern _ZNSs4_Rep10_M_destroyERKSaIcE
	extern strcpy
	extern strtok
	extern _ZdaPv
	extern _ZSt17__throw_bad_allocv
	extern _ZSt20__throw_length_errorPKc
	extern __cxa_begin_catch
	extern __cxa_rethrow
	extern __cxa_end_catch
	extern _ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base
	extern _ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base
	extern _ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_
	extern _ZTI8IUnknown

;Exports of D3DXShader:
	global _GLOBAL__I_sPrograms
	global EndToken
	global D3DXCompileShader
	global _Z14OptimizeShaderRSsS_RKSsS1_i
	global _Z21D3DXCompileShaderInitv
	global _Z8TokenizeRSt6vectorISsSaISsEEPKc
	global _ZN11CD3DXBuffer13GetBufferSizeEv
	global _ZN11CD3DXBuffer14QueryInterfaceERK5_GUIDPPv
	global _ZN11CD3DXBuffer16GetBufferPointerEv
	global _ZN11CD3DXBuffer6AddRefEv
	global _ZN11CD3DXBuffer7ReleaseEv
	global _ZN11CD3DXBufferD0Ev
	global _ZN11CD3DXBufferD1Ev
	global _ZNSt6vectorISsSaISsEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPSsS1_EERKSs
	global _ZNSt6vectorISsSaISsEE5eraseEN9__gnu_cxx17__normal_iteratorIPSsS1_EES5_
	global _ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE11lower_boundERS1_
	global _ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE13insert_uniqueERKS4_
	global _ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE13insert_uniqueESt17_Rb_tree_iteratorIS4_ERKS4_
	global _ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE4findERS1_
	global _ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E
	global _ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE9_M_insertEPSt18_Rb_tree_node_baseSC_RKS4_
	global _ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_PKS3_
	global _ZTI11CD3DXBuffer
	global _ZTI11ID3DXBuffer
	global _ZTV11CD3DXBuffer
	global sPrograms


SECTION .text


;global constructors keyed to sPrograms
_GLOBAL__I_sPrograms:
	push ebp
	mov ebp, esp
	mov edx, 0xffff
	mov eax, 0x1
	pop ebp
	jmp _Z41__static_initialization_and_destruction_0ii


;__static_initialization_and_destruction_0(int, int)
_Z41__static_initialization_and_destruction_0ii:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	cmp edx, 0xffff
	jz _Z41__static_initialization_and_destruction_0ii_10
_Z41__static_initialization_and_destruction_0ii_20:
	leave
	ret
_Z41__static_initialization_and_destruction_0ii_10:
	sub eax, 0x1
	jnz _Z41__static_initialization_and_destruction_0ii_20
	mov dword [sPrograms+0x14], 0x0
	mov dword [sPrograms+0x4], 0x0
	mov dword [sPrograms+0x8], 0x0
	mov dword [sPrograms+0xc], sPrograms+0x4
	mov dword [sPrograms+0x10], sPrograms+0x4
	mov eax, [0xd5cc00c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov dword [esp], __tcf_0
	call __cxa_atexit
	leave
	ret


;__tcf_0
__tcf_0:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [sPrograms+0x8]
	mov [esp+0x4], eax
	mov dword [esp], sPrograms
	call _ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E
	leave
	ret
	mov [esp], eax
	call _Unwind_Resume


;D3DXCompileShader
D3DXCompileShader:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x7c
	mov eax, [ebp+0x24]
	mov dword [eax], 0x0
	mov eax, [ebp+0x28]
	mov dword [eax], 0x0
	mov eax, [ebp+0x2c]
	mov dword [eax], 0x0
	lea eax, [ebp-0x19]
	mov [esp+0x8], eax
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	lea edx, [ebp-0x24]
	mov [esp], edx
	call _ZNSsC1EPKcRKSaIcE
	mov dword [esp+0xc], 0xf
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _cstring_shadowmap_build
	lea eax, [ebp-0x24]
	mov [esp], eax
	call _ZNKSs4findEPKcmm
	mov [ebp-0x50], eax
	add eax, 0x1
	jz D3DXCompileShader_10
	lea edx, [ebp-0x24]
	mov [esp], edx
	call _ZNSsD1Ev
	xor eax, eax
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
D3DXCompileShader_10:
	lea edx, [ebp-0x24]
	mov [esp+0x4], edx
	mov dword [esp], sPrograms
	call _ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE4findERS1_
	mov edx, [0xd5cc01c]
	add edx, 0xc
	mov [ebp-0x4c], edx
	mov [ebp-0x28], edx
	cmp eax, sPrograms+0x4
	jz D3DXCompileShader_20
	mov [ebp-0x2c], edx
	mov ebx, [eax+0x14]
	mov edi, [EndToken]
	mov [esp+0x4], edi
	mov [esp], ebx
	call strstr
	mov [ebp-0x5c], eax
	cld
	xor edx, edx
	mov ecx, [ebp-0x50]
	mov eax, edx
	repne scasb
	not ecx
	mov edx, [ebp-0x5c]
	lea ecx, [ecx+edx-0x1]
	mov [esp+0xc], bl
	lea eax, [ebp-0x1a]
	mov [esp+0x8], eax
	mov [esp+0x4], ecx
	mov [esp], ebx
	call _ZNSs12_S_constructIPKcEEPcT_S3_RKSaIcESt20forward_iterator_tag
	mov [ebp-0x20], eax
	lea ebx, [ebp-0x20]
	mov [esp+0x4], ebx
	lea eax, [ebp-0x2c]
	mov [esp], eax
	call _ZNSs6appendERKSs
	mov [esp], ebx
	call _ZNSsD1Ev
	mov edx, [ebp-0x4c]
	mov [ebp-0x30], edx
	mov [ebp-0x38], edx
	call _ZN10MacDisplay11GetCardTypeEv
	mov [esp+0x10], eax
	lea eax, [ebp-0x2c]
	mov [esp+0xc], eax
	lea edx, [ebp-0x24]
	mov [esp+0x8], edx
	lea eax, [ebp-0x38]
	mov [esp+0x4], eax
	lea edx, [ebp-0x30]
	mov [esp], edx
	call _Z14OptimizeShaderRSsS_RKSsS1_i
	lea eax, [ebp-0x30]
	mov [esp+0x4], eax
	lea edx, [ebp-0x2c]
	mov [esp], edx
	call _ZNSs6assignERKSs
	lea eax, [ebp-0x24]
	mov [esp+0x4], eax
	lea esi, [ebp-0x34]
	mov [esp], esi
	call _ZNSsC1ERKSs
	mov dword [esp+0x8], 0x2
	mov dword [esp+0x4], _cstring_
	mov [esp], esi
	call _ZNSs6appendEPKcm
	mov [esp+0x4], esi
	lea ebx, [ebp-0x3c]
	mov [esp], ebx
	call _ZNSsC1ERKSs
	lea edx, [ebp-0x2c]
	mov [esp+0x4], edx
	mov [esp], ebx
	call _ZNSs6appendERKSs
	mov [esp+0x4], ebx
	lea eax, [ebp-0x28]
	mov [esp], eax
	call _ZNSs6assignERKSs
	mov [esp], ebx
	call _ZNSsD1Ev
	mov [esp], esi
	call _ZNSsD1Ev
	mov edi, [ebp-0x28]
	mov esi, [edi-0xc]
	add esi, 0x1
	mov dword [esp], 0x10
	call _Znwm
	mov ebx, eax
	mov dword [eax], _ZTV11CD3DXBuffer+0x8
	mov dword [eax+0x4], 0x0
	mov [eax+0x8], esi
	mov [esp], esi
	call _Znam
	mov [ebx+0xc], eax
	mov [esp+0x8], esi
	mov [esp+0x4], edi
	mov [esp], eax
	call memcpy
	add dword [ebx+0x4], 0x1
	mov edx, [ebp+0x24]
	mov [edx], ebx
	lea eax, [ebp-0x38]
	mov [esp], eax
	call _ZNSsD1Ev
	lea edx, [ebp-0x30]
	mov [esp], edx
	call _ZNSsD1Ev
	lea eax, [ebp-0x2c]
	mov [esp], eax
	call _ZNSsD1Ev
D3DXCompileShader_20:
	lea eax, [ebp-0x28]
	mov [esp], eax
	call _ZNSsD1Ev
	lea edx, [ebp-0x24]
	mov [esp], edx
	call _ZNSsD1Ev
	xor eax, eax
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	mov edi, eax
D3DXCompileShader_50:
	lea edx, [ebp-0x2c]
	mov [esp], edx
	call _ZNSsD1Ev
D3DXCompileShader_30:
	lea edx, [ebp-0x28]
	mov [esp], edx
	call _ZNSsD1Ev
D3DXCompileShader_40:
	lea eax, [ebp-0x24]
	mov [esp], eax
	call _ZNSsD1Ev
	mov [esp], edi
	call _Unwind_Resume
	mov edi, eax
	jmp D3DXCompileShader_30
	mov edi, eax
	jmp D3DXCompileShader_40
	mov [esp], eax
	call _Unwind_Resume
	mov edi, eax
	mov [esp], ebx
	call _ZNSsD1Ev
D3DXCompileShader_80:
	mov [esp], esi
	call _ZNSsD1Ev
D3DXCompileShader_60:
	lea eax, [ebp-0x38]
	mov [esp], eax
	call _ZNSsD1Ev
D3DXCompileShader_70:
	lea edx, [ebp-0x30]
	mov [esp], edx
	call _ZNSsD1Ev
	jmp D3DXCompileShader_50
	mov edi, eax
	mov [esp], ebx
	call _ZdlPv
	jmp D3DXCompileShader_60
	mov edi, eax
	jmp D3DXCompileShader_70
	mov edi, eax
	mov [esp], ebx
	call _ZNSsD1Ev
	jmp D3DXCompileShader_50
	mov edi, eax
	jmp D3DXCompileShader_60
	mov edi, eax
	mov [esp], esi
	call _ZNSsD1Ev
	jmp D3DXCompileShader_60
	mov edi, eax
	jmp D3DXCompileShader_80


;OptimizeShader(std::string&, std::string&, std::string const&, std::string const&, int)
_Z14OptimizeShaderRSsS_RKSsS1_i:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x17c
	mov dword [esp+0xc], 0x3
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _cstring_vs
	mov eax, [ebp+0x10]
	mov [esp], eax
	call _ZNKSs4findEPKcmm
	mov [ebp-0x158], eax
_Z14OptimizeShaderRSsS_RKSsS1_i_80:
	mov eax, [ebp+0x8]
	mov [ebp-0x154], eax
	mov dword [ebp-0x14c], 0x2
	mov dword [esp+0x8], 0x8
	mov edx, [ebp+0x14]
	mov [esp+0x4], edx
	lea eax, [ebp-0x140]
	mov [esp], eax
	call _ZNSt19basic_istringstreamIcSt11char_traitsIcESaIcEEC1ERKSsSt13_Ios_Openmode
	cmp dword [ebp+0x18], 0x2
	jz _Z14OptimizeShaderRSsS_RKSsS1_i_10
_Z14OptimizeShaderRSsS_RKSsS1_i_90:
	mov byte [ebp-0x14d], 0x1
_Z14OptimizeShaderRSsS_RKSsS1_i_100:
	lea eax, [ebp-0x70]
	mov [esp], eax
	call _ZNSsC1Ev
	lea edx, [ebp-0x74]
	mov [esp], edx
	call _ZNSsC1Ev
_Z14OptimizeShaderRSsS_RKSsS1_i_60:
	mov dword [esp+0x8], 0xa
	lea edx, [ebp-0x74]
	mov [esp+0x4], edx
	lea eax, [ebp-0x140]
	mov [esp], eax
	call _ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RSbIS4_S5_T1_ES4_
	mov edx, [eax]
	mov edx, [edx-0xc]
	test byte [eax+edx+0x14], 0x5
	jnz _Z14OptimizeShaderRSsS_RKSsS1_i_20
	mov edx, [ebp-0x70]
	mov [ebp-0x16c], edx
	mov eax, [edx-0xc]
	mov [ebp-0x164], eax
	mov [ebp-0x78], eax
	mov edx, [ebp-0x74]
	mov [ebp-0x168], edx
	mov ebx, [edx-0xc]
	mov [ebp-0x7c], ebx
	cmp ebx, eax
	jae _Z14OptimizeShaderRSsS_RKSsS1_i_30
	lea eax, [ebp-0x7c]
_Z14OptimizeShaderRSsS_RKSsS1_i_150:
	mov ecx, [eax]
	cld
	cmp ecx, ecx
	mov esi, [ebp-0x16c]
	mov edi, [ebp-0x168]
	repe cmpsb
	mov eax, 0x0
	jz _Z14OptimizeShaderRSsS_RKSsS1_i_40
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
_Z14OptimizeShaderRSsS_RKSsS1_i_40:
	test eax, eax
	jnz _Z14OptimizeShaderRSsS_RKSsS1_i_50
	cmp [ebp-0x164], ebx
	jnz _Z14OptimizeShaderRSsS_RKSsS1_i_50
_Z14OptimizeShaderRSsS_RKSsS1_i_140:
	lea edx, [ebp-0x74]
	mov [esp+0x4], edx
	lea eax, [ebp-0x70]
	mov [esp], eax
	call _ZNSs6assignERKSs
	jmp _Z14OptimizeShaderRSsS_RKSsS1_i_60
_Z14OptimizeShaderRSsS_RKSsS1_i_20:
	lea edx, [ebp-0x74]
	mov [esp], edx
	call _ZNSsD1Ev
	lea eax, [ebp-0x70]
	mov [esp], eax
	call _ZNSsD1Ev
	mov eax, [0xd5cc064]
	lea edx, [eax+0xc]
	mov [ebp-0x140], edx
	add eax, 0x20
	mov [ebp-0x110], eax
	mov eax, [0xd5cc05c]
	add eax, 0x8
	mov [ebp-0x138], eax
	lea eax, [ebp-0x114]
	mov [esp], eax
	call _ZNSsD1Ev
	mov eax, [0xd5cc068]
	add eax, 0x8
	mov [ebp-0x138], eax
	lea eax, [ebp-0x11c]
	mov [esp], eax
	call _ZNSt6localeD1Ev
	mov ecx, [0xd5cc060]
	mov eax, [ecx+0x4]
	mov [ebp-0x140], eax
	mov edx, [eax-0xc]
	mov eax, [ecx+0x8]
	mov [ebp+edx-0x140], eax
	mov dword [ebp-0x13c], 0x0
	mov eax, [0xd5cc06c]
	add eax, 0x8
	mov [ebp-0x110], eax
	lea edx, [ebp-0x110]
	mov [esp], edx
	call _ZNSt8ios_baseD2Ev
	sub dword [ebp-0x14c], 0x1
	jz _Z14OptimizeShaderRSsS_RKSsS1_i_70
	mov edx, [ebp+0xc]
	mov [ebp-0x154], edx
	cmp dword [ebp-0x14c], 0x2
	jz _Z14OptimizeShaderRSsS_RKSsS1_i_80
	mov dword [esp+0x8], 0x8
	mov edx, [ebp+0x14]
	mov [esp+0x4], edx
	lea eax, [ebp-0x140]
	mov [esp], eax
	call _ZNSt19basic_istringstreamIcSt11char_traitsIcESaIcEEC1ERKSsSt13_Ios_Openmode
	cmp dword [ebp+0x18], 0x2
	jnz _Z14OptimizeShaderRSsS_RKSsS1_i_90
_Z14OptimizeShaderRSsS_RKSsS1_i_10:
	mov dword [esp+0xc], 0x2
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _cstring_s0
	mov edx, [ebp+0x10]
	mov [esp], edx
	call _ZNKSs4findEPKcmm
	add eax, 0x1
	jnz _Z14OptimizeShaderRSsS_RKSsS1_i_90
	mov dword [esp+0xc], 0x2
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _cstring_s1
	mov eax, [ebp+0x10]
	mov [esp], eax
	call _ZNKSs4findEPKcmm
	add eax, 0x1
	jnz _Z14OptimizeShaderRSsS_RKSsS1_i_90
	mov dword [esp+0xc], 0x2
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _cstring_s2
	mov edx, [ebp+0x10]
	mov [esp], edx
	call _ZNKSs4findEPKcmm
	add eax, 0x1
	jnz _Z14OptimizeShaderRSsS_RKSsS1_i_90
	mov byte [ebp-0x14d], 0x0
	jmp _Z14OptimizeShaderRSsS_RKSsS1_i_100
_Z14OptimizeShaderRSsS_RKSsS1_i_50:
	mov dword [esp+0xc], 0x22
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _cstring_option_arb_preci
	lea eax, [ebp-0x74]
	mov [esp], eax
	call _ZNKSs4findEPKcmm
	add eax, 0x1
	jz _Z14OptimizeShaderRSsS_RKSsS1_i_110
	cmp byte [ebp-0x14d], 0x0
	jz _Z14OptimizeShaderRSsS_RKSsS1_i_110
	mov ebx, 0x1
	cmp dword [ebp-0x158], 0xffffffff
	jnz _Z14OptimizeShaderRSsS_RKSsS1_i_120
_Z14OptimizeShaderRSsS_RKSsS1_i_160:
	cmp dword [ebp+0x18], 0x2
	jz _Z14OptimizeShaderRSsS_RKSsS1_i_130
_Z14OptimizeShaderRSsS_RKSsS1_i_170:
	test bl, bl
	jnz _Z14OptimizeShaderRSsS_RKSsS1_i_140
	lea edx, [ebp-0x74]
	mov [esp+0x4], edx
	mov eax, [ebp-0x154]
	mov [esp], eax
	call _ZNSs6appendERKSs
	jmp _Z14OptimizeShaderRSsS_RKSsS1_i_140
_Z14OptimizeShaderRSsS_RKSsS1_i_30:
	lea eax, [ebp-0x78]
	jmp _Z14OptimizeShaderRSsS_RKSsS1_i_150
_Z14OptimizeShaderRSsS_RKSsS1_i_110:
	xor ebx, ebx
	cmp dword [ebp-0x158], 0xffffffff
	jz _Z14OptimizeShaderRSsS_RKSsS1_i_160
_Z14OptimizeShaderRSsS_RKSsS1_i_120:
	mov dword [esp+0xc], 0x4
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _cstring_lrp_
	lea edx, [ebp-0x74]
	mov [esp], edx
	call _ZNKSs4findEPKcmm
	add eax, 0x1
	jz _Z14OptimizeShaderRSsS_RKSsS1_i_170
	mov dword [ebp-0x88], 0x0
	mov dword [ebp-0x84], 0x0
	mov dword [ebp-0x80], 0x0
	mov eax, [ebp-0x74]
	mov [esp+0x4], eax
	lea eax, [ebp-0x88]
	mov [esp], eax
	call _Z8TokenizeRSt6vectorISsSaISsEEPKc
	lea eax, [ebp-0x64]
	mov [esp], eax
	call _ZNSsC1Ev
	mov edi, [ebp-0x88]
	mov ebx, edi
	lea edx, [edi+0x10]
	mov eax, [edi+0x10]
	mov ecx, [eax-0x4]
	test ecx, ecx
	js _Z14OptimizeShaderRSsS_RKSsS1_i_180
	mov [esp], edx
	call _ZNSs12_M_leak_hardEv
	mov edi, [ebp-0x88]
	mov eax, [ebx+0x10]
_Z14OptimizeShaderRSsS_RKSsS1_i_180:
	cmp byte [eax], 0x2d
	jnz _Z14OptimizeShaderRSsS_RKSsS1_i_190
	lea edx, [edi+0x10]
	mov eax, [edi+0x10]
	mov eax, [eax-0x4]
	test eax, eax
	js _Z14OptimizeShaderRSsS_RKSsS1_i_200
	mov [esp], edx
	call _ZNSs12_M_leak_hardEv
_Z14OptimizeShaderRSsS_RKSsS1_i_200:
	lea eax, [ebp-0x19]
	mov [esp+0x8], eax
	mov eax, [edi+0x10]
	add eax, 0x1
	mov [esp+0x4], eax
	lea ebx, [ebp-0x5c]
	mov [esp], ebx
	call _ZNSsC1EPKcRKSaIcE
	mov [esp+0x4], ebx
	lea edx, [ebp-0x64]
	mov [esp], edx
	call _ZNSs6assignERKSs
	mov [esp], ebx
	call _ZNSsD1Ev
_Z14OptimizeShaderRSsS_RKSsS1_i_230:
	mov eax, [ebp-0x88]
	lea ebx, [eax+0xc]
	add eax, 0x4
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_add_
	lea eax, [ebp-0x44]
	mov [esp], eax
	call _ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EPKS3_RKS6_
	sub esp, 0x4
	mov dword [esp+0x8], _cstring__
	lea eax, [ebp-0x44]
	mov [esp+0x4], eax
	lea edx, [ebp-0x48]
	mov [esp], edx
	call _ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_PKS3_
	sub esp, 0x4
	lea eax, [ebp-0x48]
	mov [esp+0x4], eax
	lea edi, [ebp-0x4c]
	mov [esp], edi
	call _ZNSsC1ERKSs
	mov [esp+0x4], ebx
	mov [esp], edi
	call _ZNSs6appendERKSs
	lea esi, [ebp-0x50]
	mov dword [esp+0x8], _cstring__
	mov [esp+0x4], edi
	mov [esp], esi
	call _ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_PKS3_
	sub esp, 0x4
	mov [esp+0x4], esi
	lea ebx, [ebp-0x54]
	mov [esp], ebx
	call _ZNSsC1ERKSs
	lea edx, [ebp-0x64]
	mov [esp+0x4], edx
	mov [esp], ebx
	call _ZNSs6appendERKSs
	mov dword [esp+0x8], _cstring_1
	mov [esp+0x4], ebx
	lea eax, [ebp-0x68]
	mov [esp], eax
	call _ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_PKS3_
	sub esp, 0x4
	mov [esp], ebx
	call _ZNSsD1Ev
	mov [esp], esi
	call _ZNSsD1Ev
	mov [esp], edi
	call _ZNSsD1Ev
	lea edx, [ebp-0x48]
	mov [esp], edx
	call _ZNSsD1Ev
	lea edx, [ebp-0x44]
	mov [esp], edx
	call _ZNSsD1Ev
	mov eax, [ebp-0x88]
	lea edx, [eax+0x10]
	mov [ebp-0x160], edx
	lea esi, [eax+0x8]
	lea ebx, [eax+0x4]
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_mad_
	lea eax, [ebp-0x28]
	mov [esp], eax
	call _ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EPKS3_RKS6_
	sub esp, 0x4
	mov dword [esp+0x8], _cstring__
	lea edx, [ebp-0x28]
	mov [esp+0x4], edx
	lea eax, [ebp-0x2c]
	mov [esp], eax
	call _ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_PKS3_
	sub esp, 0x4
	lea edx, [ebp-0x2c]
	mov [esp+0x4], edx
	lea eax, [ebp-0x30]
	mov [esp], eax
	call _ZNSsC1ERKSs
	mov [esp+0x4], ebx
	lea edx, [ebp-0x30]
	mov [esp], edx
	call _ZNSs6appendERKSs
	mov dword [esp+0x8], _cstring__
	lea eax, [ebp-0x30]
	mov [esp+0x4], eax
	lea edx, [ebp-0x34]
	mov [esp], edx
	call _ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_PKS3_
	sub esp, 0x4
	lea edx, [ebp-0x34]
	mov [esp+0x4], edx
	lea edi, [ebp-0x38]
	mov [esp], edi
	call _ZNSsC1ERKSs
	mov [esp+0x4], esi
	mov [esp], edi
	call _ZNSs6appendERKSs
	lea esi, [ebp-0x3c]
	mov dword [esp+0x8], _cstring__
	mov [esp+0x4], edi
	mov [esp], esi
	call _ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_PKS3_
	sub esp, 0x4
	mov [esp+0x4], esi
	lea ebx, [ebp-0x40]
	mov [esp], ebx
	call _ZNSsC1ERKSs
	mov eax, [ebp-0x160]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _ZNSs6appendERKSs
	mov dword [esp+0x8], _cstring_1
	mov [esp+0x4], ebx
	lea edx, [ebp-0x6c]
	mov [esp], edx
	call _ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_PKS3_
	sub esp, 0x4
	mov [esp], ebx
	call _ZNSsD1Ev
	mov [esp], esi
	call _ZNSsD1Ev
	mov [esp], edi
	call _ZNSsD1Ev
	lea eax, [ebp-0x34]
	mov [esp], eax
	call _ZNSsD1Ev
	lea eax, [ebp-0x30]
	mov [esp], eax
	call _ZNSsD1Ev
	lea eax, [ebp-0x2c]
	mov [esp], eax
	call _ZNSsD1Ev
	lea eax, [ebp-0x28]
	mov [esp], eax
	call _ZNSsD1Ev
	lea eax, [ebp-0x68]
	mov [esp+0x4], eax
	lea ebx, [ebp-0x24]
	mov [esp], ebx
	call _ZNSsC1ERKSs
	lea edx, [ebp-0x6c]
	mov [esp+0x4], edx
	mov [esp], ebx
	call _ZNSs6appendERKSs
	mov [esp+0x4], ebx
	lea eax, [ebp-0x74]
	mov [esp], eax
	call _ZNSs6appendERKSs
	mov [esp], ebx
	call _ZNSsD1Ev
	lea edx, [ebp-0x6c]
	mov [esp], edx
	call _ZNSsD1Ev
	lea eax, [ebp-0x68]
	mov [esp], eax
	call _ZNSsD1Ev
	lea edx, [ebp-0x64]
	mov [esp], edx
	call _ZNSsD1Ev
	mov ebx, [ebp-0x84]
	mov edi, [ebp-0x88]
	mov esi, edi
	cmp ebx, edi
	jz _Z14OptimizeShaderRSsS_RKSsS1_i_210
_Z14OptimizeShaderRSsS_RKSsS1_i_220:
	mov [esp], esi
	call _ZNSsD1Ev
	add esi, 0x4
	cmp ebx, esi
	jnz _Z14OptimizeShaderRSsS_RKSsS1_i_220
_Z14OptimizeShaderRSsS_RKSsS1_i_250:
	mov edi, [ebp-0x88]
_Z14OptimizeShaderRSsS_RKSsS1_i_210:
	test edi, edi
	jz _Z14OptimizeShaderRSsS_RKSsS1_i_140
	mov [esp], edi
	call _ZdlPv
	jmp _Z14OptimizeShaderRSsS_RKSsS1_i_140
_Z14OptimizeShaderRSsS_RKSsS1_i_190:
	lea eax, [edi+0x10]
	lea ebx, [ebp-0x58]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x2d
	mov [esp], ebx
	call _ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ES3_RKS6_
	sub esp, 0x4
	mov [esp+0x4], ebx
	lea edx, [ebp-0x64]
	mov [esp], edx
	call _ZNSs6assignERKSs
	mov [esp], ebx
	call _ZNSsD1Ev
	jmp _Z14OptimizeShaderRSsS_RKSsS1_i_230
_Z14OptimizeShaderRSsS_RKSsS1_i_130:
	mov dword [esp+0xc], 0x5
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _cstring__3d
	lea edx, [ebp-0x74]
	mov [esp], edx
	call _ZNKSs4findEPKcmm
	add eax, 0x1
	jz _Z14OptimizeShaderRSsS_RKSsS1_i_170
	mov dword [ebp-0x88], 0x0
	mov dword [ebp-0x84], 0x0
	mov dword [ebp-0x80], 0x0
	mov eax, [ebp-0x74]
	mov [esp+0x4], eax
	lea eax, [ebp-0x88]
	mov [esp], eax
	call _Z8TokenizeRSt6vectorISsSaISsEEPKc
	mov eax, [ebp-0x88]
	add eax, 0x4
	lea esi, [ebp-0x60]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_mov_
	mov [esp], esi
	call _ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EPKS3_RKS6_
	sub esp, 0x4
	lea ebx, [ebp-0x20]
	mov dword [esp+0x8], _cstring__0
	mov [esp+0x4], esi
	mov [esp], ebx
	call _ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_PKS3_
	sub esp, 0x4
	mov [esp+0x4], ebx
	mov eax, [ebp-0x154]
	mov [esp], eax
	call _ZNSs6appendERKSs
	mov [esp], ebx
	call _ZNSsD1Ev
	mov [esp], esi
	call _ZNSsD1Ev
	mov esi, [ebp-0x84]
	mov edi, [ebp-0x88]
	mov ebx, edi
	cmp esi, edi
	jz _Z14OptimizeShaderRSsS_RKSsS1_i_210
_Z14OptimizeShaderRSsS_RKSsS1_i_240:
	mov [esp], ebx
	call _ZNSsD1Ev
	add ebx, 0x4
	cmp esi, ebx
	jnz _Z14OptimizeShaderRSsS_RKSsS1_i_240
	jmp _Z14OptimizeShaderRSsS_RKSsS1_i_250
_Z14OptimizeShaderRSsS_RKSsS1_i_70:
	mov dword [esp+0xc], 0x0
	mov edx, [ebp+0xc]
	mov eax, [edx]
	mov eax, [eax-0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov [esp], edx
	call _ZNSs9_M_mutateEmmm
	lea esp, [ebp-0xc]
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	mov [ebp-0x15c], eax
_Z14OptimizeShaderRSsS_RKSsS1_i_260:
	mov eax, [0xd5cc064]
	lea edx, [eax+0xc]
	mov [ebp-0x140], edx
	add eax, 0x20
	mov [ebp-0x110], eax
	mov eax, [0xd5cc05c]
	add eax, 0x8
	mov [ebp-0x138], eax
	lea edx, [ebp-0x114]
	mov [esp], edx
	call _ZNSsD1Ev
_Z14OptimizeShaderRSsS_RKSsS1_i_280:
	mov eax, [0xd5cc068]
	add eax, 0x8
	mov [ebp-0x138], eax
	lea eax, [ebp-0x11c]
	mov [esp], eax
	call _ZNSt6localeD1Ev
	mov ecx, [0xd5cc060]
	mov eax, [ecx+0x4]
	mov [ebp-0x140], eax
	mov edx, [eax-0xc]
	mov eax, [ecx+0x8]
	mov [ebp+edx-0x140], eax
	mov dword [ebp-0x13c], 0x0
	mov eax, [0xd5cc06c]
	add eax, 0x8
	mov [ebp-0x110], eax
	lea edx, [ebp-0x110]
	mov [esp], edx
	call _ZNSt8ios_baseD2Ev
	mov eax, [ebp-0x15c]
	mov [esp], eax
	call _Unwind_Resume
	mov [ebp-0x15c], eax
_Z14OptimizeShaderRSsS_RKSsS1_i_270:
	lea edx, [ebp-0x70]
	mov [esp], edx
	call _ZNSsD1Ev
	jmp _Z14OptimizeShaderRSsS_RKSsS1_i_260
	mov [ebp-0x15c], eax
_Z14OptimizeShaderRSsS_RKSsS1_i_310:
	lea eax, [ebp-0x74]
	mov [esp], eax
	call _ZNSsD1Ev
	jmp _Z14OptimizeShaderRSsS_RKSsS1_i_270
	mov [ebp-0x15c], eax
	mov eax, [0xd5cc068]
	add eax, 0x8
	mov [ebp-0x138], eax
	lea edx, [ebp-0x11c]
	mov [esp], edx
	call _ZNSt6localeD1Ev
	mov ecx, [0xd5cc060]
	mov eax, [ecx+0x4]
	mov [ebp-0x140], eax
	mov edx, [eax-0xc]
	mov eax, [ecx+0x8]
	mov [ebp+edx-0x140], eax
	mov dword [ebp-0x13c], 0x0
	mov eax, [0xd5cc06c]
	add eax, 0x8
	mov [ebp-0x110], eax
	lea eax, [ebp-0x110]
	mov [esp], eax
	call _ZNSt8ios_baseD2Ev
	mov edx, [ebp-0x15c]
	mov [esp], edx
	call _Unwind_Resume
	mov [ebp-0x15c], eax
	jmp _Z14OptimizeShaderRSsS_RKSsS1_i_280
	mov [ebp-0x15c], eax
_Z14OptimizeShaderRSsS_RKSsS1_i_320:
	mov esi, [ebp-0x84]
	mov edi, [ebp-0x88]
	mov ebx, edi
	cmp esi, edi
	jz _Z14OptimizeShaderRSsS_RKSsS1_i_290
_Z14OptimizeShaderRSsS_RKSsS1_i_300:
	mov [esp], ebx
	call _ZNSsD1Ev
	add ebx, 0x4
	cmp esi, ebx
	jnz _Z14OptimizeShaderRSsS_RKSsS1_i_300
_Z14OptimizeShaderRSsS_RKSsS1_i_480:
	mov edi, [ebp-0x88]
_Z14OptimizeShaderRSsS_RKSsS1_i_290:
	test edi, edi
	jz _Z14OptimizeShaderRSsS_RKSsS1_i_310
	mov [esp], edi
	call _ZdlPv
	jmp _Z14OptimizeShaderRSsS_RKSsS1_i_310
	mov [ebp-0x15c], eax
_Z14OptimizeShaderRSsS_RKSsS1_i_330:
	lea eax, [ebp-0x64]
	mov [esp], eax
	call _ZNSsD1Ev
	jmp _Z14OptimizeShaderRSsS_RKSsS1_i_320
_Z14OptimizeShaderRSsS_RKSsS1_i_460:
	mov [ebp-0x15c], eax
	mov eax, [ebp-0x88]
	test eax, eax
	jz _Z14OptimizeShaderRSsS_RKSsS1_i_310
	mov [esp], eax
	call _ZdlPv
	jmp _Z14OptimizeShaderRSsS_RKSsS1_i_310
	mov [ebp-0x15c], eax
	mov [esp], ebx
	call _ZNSsD1Ev
	jmp _Z14OptimizeShaderRSsS_RKSsS1_i_330
	mov [ebp-0x15c], eax
_Z14OptimizeShaderRSsS_RKSsS1_i_340:
	lea eax, [ebp-0x44]
	mov [esp], eax
	call _ZNSsD1Ev
	jmp _Z14OptimizeShaderRSsS_RKSsS1_i_330
	mov [ebp-0x15c], eax
_Z14OptimizeShaderRSsS_RKSsS1_i_350:
	lea eax, [ebp-0x48]
	mov [esp], eax
	call _ZNSsD1Ev
	jmp _Z14OptimizeShaderRSsS_RKSsS1_i_340
	mov [ebp-0x15c], eax
	mov [esp], edi
	call _ZNSsD1Ev
	jmp _Z14OptimizeShaderRSsS_RKSsS1_i_350
	mov [ebp-0x15c], eax
_Z14OptimizeShaderRSsS_RKSsS1_i_360:
	mov [esp], edi
	call _ZNSsD1Ev
	jmp _Z14OptimizeShaderRSsS_RKSsS1_i_350
	mov [ebp-0x15c], eax
_Z14OptimizeShaderRSsS_RKSsS1_i_370:
	mov [esp], esi
	call _ZNSsD1Ev
	jmp _Z14OptimizeShaderRSsS_RKSsS1_i_360
	mov [ebp-0x15c], eax
	mov [esp], ebx
	call _ZNSsD1Ev
	jmp _Z14OptimizeShaderRSsS_RKSsS1_i_370
	mov [ebp-0x15c], eax
_Z14OptimizeShaderRSsS_RKSsS1_i_380:
	lea eax, [ebp-0x68]
	mov [esp], eax
	call _ZNSsD1Ev
	jmp _Z14OptimizeShaderRSsS_RKSsS1_i_330
	mov [ebp-0x15c], eax
_Z14OptimizeShaderRSsS_RKSsS1_i_390:
	lea edx, [ebp-0x28]
	mov [esp], edx
	call _ZNSsD1Ev
	jmp _Z14OptimizeShaderRSsS_RKSsS1_i_380
	mov [ebp-0x15c], eax
_Z14OptimizeShaderRSsS_RKSsS1_i_400:
	lea edx, [ebp-0x2c]
	mov [esp], edx
	call _ZNSsD1Ev
	jmp _Z14OptimizeShaderRSsS_RKSsS1_i_390
	mov [ebp-0x15c], eax
	lea eax, [ebp-0x30]
	mov [esp], eax
	call _ZNSsD1Ev
	jmp _Z14OptimizeShaderRSsS_RKSsS1_i_400
	mov [ebp-0x15c], eax
_Z14OptimizeShaderRSsS_RKSsS1_i_410:
	lea edx, [ebp-0x30]
	mov [esp], edx
	call _ZNSsD1Ev
	jmp _Z14OptimizeShaderRSsS_RKSsS1_i_400
	mov [ebp-0x15c], eax
_Z14OptimizeShaderRSsS_RKSsS1_i_420:
	lea edx, [ebp-0x34]
	mov [esp], edx
	call _ZNSsD1Ev
	jmp _Z14OptimizeShaderRSsS_RKSsS1_i_410
	mov [ebp-0x15c], eax
	mov [esp], edi
	call _ZNSsD1Ev
	jmp _Z14OptimizeShaderRSsS_RKSsS1_i_420
	mov [ebp-0x15c], eax
_Z14OptimizeShaderRSsS_RKSsS1_i_430:
	mov [esp], edi
	call _ZNSsD1Ev
	jmp _Z14OptimizeShaderRSsS_RKSsS1_i_420
	mov [ebp-0x15c], eax
_Z14OptimizeShaderRSsS_RKSsS1_i_440:
	mov [esp], esi
	call _ZNSsD1Ev
	jmp _Z14OptimizeShaderRSsS_RKSsS1_i_430
	mov [ebp-0x15c], eax
	mov [esp], ebx
	call _ZNSsD1Ev
	jmp _Z14OptimizeShaderRSsS_RKSsS1_i_440
	mov [ebp-0x15c], eax
_Z14OptimizeShaderRSsS_RKSsS1_i_450:
	lea edx, [ebp-0x6c]
	mov [esp], edx
	call _ZNSsD1Ev
	jmp _Z14OptimizeShaderRSsS_RKSsS1_i_380
	mov [ebp-0x15c], eax
	mov [esp], ebx
	call _ZNSsD1Ev
	jmp _Z14OptimizeShaderRSsS_RKSsS1_i_450
	jmp _Z14OptimizeShaderRSsS_RKSsS1_i_460
	mov [ebp-0x15c], eax
_Z14OptimizeShaderRSsS_RKSsS1_i_490:
	mov esi, [ebp-0x84]
	mov edi, [ebp-0x88]
	mov ebx, edi
	cmp esi, edi
	jz _Z14OptimizeShaderRSsS_RKSsS1_i_290
_Z14OptimizeShaderRSsS_RKSsS1_i_470:
	mov [esp], ebx
	call _ZNSsD1Ev
	add ebx, 0x4
	cmp esi, ebx
	jnz _Z14OptimizeShaderRSsS_RKSsS1_i_470
	jmp _Z14OptimizeShaderRSsS_RKSsS1_i_480
	mov [ebp-0x15c], eax
	mov [esp], ebx
	call _ZNSsD1Ev
_Z14OptimizeShaderRSsS_RKSsS1_i_500:
	mov [esp], esi
	call _ZNSsD1Ev
	jmp _Z14OptimizeShaderRSsS_RKSsS1_i_490
	mov [ebp-0x15c], eax
	jmp _Z14OptimizeShaderRSsS_RKSsS1_i_500
	jmp _Z14OptimizeShaderRSsS_RKSsS1_i_460
	nop


;D3DXCompileShaderInit()
_Z21D3DXCompileShaderInitv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1ac
	mov dword [ebp-0x3c], 0x0
	mov dword [ebp-0x38], 0x0
	mov dword [ebp-0x34], 0x0
	call _ZN10MacDisplay11GetCardTypeEv
	mov edx, _cstring_shadersshadersnv
	cmp eax, 0x2
	mov eax, _cstring_shadersshadersat
	cmovnz edx, eax
	mov [ebp-0x3c], edx
	call _ZN10MacDisplay11GetCardTypeEv
	mov edx, _cstring_shadersshadersnv1
	cmp eax, 0x2
	mov eax, _cstring_shadersshadersat1
	cmovnz edx, eax
	mov [ebp-0x38], edx
	mov edi, [ebp-0x3c]
	test edi, edi
	jz _Z21D3DXCompileShaderInitv_10
	lea eax, [ebp-0x3c]
	mov [ebp-0x170], eax
	mov edx, eax
_Z21D3DXCompileShaderInitv_170:
	mov dword [esp+0x4], _cstring_rb
	mov eax, [edx]
	mov [esp], eax
	call fopen
	mov [ebp-0x16c], eax
	mov dword [esp+0x8], 0x2
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call fseek
	mov ecx, [ebp-0x16c]
	mov [esp], ecx
	call ftell
	mov ebx, eax
	mov edi, [ebp-0x16c]
	mov [esp], edi
	call rewind
	mov [esp], ebx
	call _Znam
	mov esi, eax
	lea eax, [eax+ebx]
	mov [ebp-0x168], eax
	mov [esp+0xc], edi
	mov dword [esp+0x8], 0x1
	mov [esp+0x4], ebx
	mov [esp], esi
	call fread
	cmp esi, [ebp-0x168]
	jae _Z21D3DXCompileShaderInitv_20
	mov ebx, esi
	mov dword [ebp-0x164], 0x0
	mov esi, 0x1
_Z21D3DXCompileShaderInitv_160:
	movzx edx, byte [ebx]
	test dl, dl
	jz _Z21D3DXCompileShaderInitv_30
	cmp dl, 0xa
	jz _Z21D3DXCompileShaderInitv_30
	cmp dl, 0xd
	jz _Z21D3DXCompileShaderInitv_40
	mov eax, 0x1
_Z21D3DXCompileShaderInitv_190:
	cmp dl, 0x23
	jz _Z21D3DXCompileShaderInitv_50
	test al, al
	jnz _Z21D3DXCompileShaderInitv_60
_Z21D3DXCompileShaderInitv_50:
	mov ecx, esi
	test cl, cl
	jz _Z21D3DXCompileShaderInitv_70
	test al, al
	jz _Z21D3DXCompileShaderInitv_70
	lea ecx, [ebp-0x13c]
_Z21D3DXCompileShaderInitv_180:
	add ebx, 0x1
	test dl, dl
	jz _Z21D3DXCompileShaderInitv_80
_Z21D3DXCompileShaderInitv_100:
	cmp dl, 0xa
	jz _Z21D3DXCompileShaderInitv_80
	cmp dl, 0xd
	jz _Z21D3DXCompileShaderInitv_80
	cmp dl, 0x23
	jz _Z21D3DXCompileShaderInitv_90
	cmp dl, 0x20
	jz _Z21D3DXCompileShaderInitv_90
	mov [ecx], dl
	add ecx, 0x1
	movzx edx, byte [ebx]
	add ebx, 0x1
	test dl, dl
	jnz _Z21D3DXCompileShaderInitv_100
_Z21D3DXCompileShaderInitv_80:
	mov byte [ecx], 0x0
	movzx edx, byte [ebx]
_Z21D3DXCompileShaderInitv_70:
	test dl, dl
	jz _Z21D3DXCompileShaderInitv_110
_Z21D3DXCompileShaderInitv_130:
	cmp dl, 0xa
	jz _Z21D3DXCompileShaderInitv_120
	add ebx, 0x1
	movzx edx, byte [ebx]
	test dl, dl
	jnz _Z21D3DXCompileShaderInitv_130
_Z21D3DXCompileShaderInitv_110:
	cmp dl, 0xa
	jnz _Z21D3DXCompileShaderInitv_140
_Z21D3DXCompileShaderInitv_120:
	add ebx, 0x1
_Z21D3DXCompileShaderInitv_140:
	movzx eax, al
	test esi, eax
	jz _Z21D3DXCompileShaderInitv_150
	mov [ebp-0x164], ebx
	xor esi, esi
_Z21D3DXCompileShaderInitv_150:
	cmp [ebp-0x168], ebx
	ja _Z21D3DXCompileShaderInitv_160
_Z21D3DXCompileShaderInitv_20:
	mov ecx, [ebp-0x16c]
	mov [esp], ecx
	call fclose
	add dword [ebp-0x170], 0x4
	mov edi, [ebp-0x170]
	mov esi, [edi]
	test esi, esi
	jz _Z21D3DXCompileShaderInitv_10
	mov edx, edi
	jmp _Z21D3DXCompileShaderInitv_170
_Z21D3DXCompileShaderInitv_90:
	movzx edx, byte [ebx]
	jmp _Z21D3DXCompileShaderInitv_180
_Z21D3DXCompileShaderInitv_30:
	xor eax, eax
	jmp _Z21D3DXCompileShaderInitv_190
_Z21D3DXCompileShaderInitv_60:
	mov dword [esp+0x8], 0x3
	mov eax, [EndToken]
	mov [esp+0x4], eax
	mov [esp], ebx
	call strncmp
	test eax, eax
	jz _Z21D3DXCompileShaderInitv_200
_Z21D3DXCompileShaderInitv_280:
	movzx edx, byte [ebx]
	test dl, dl
	jz _Z21D3DXCompileShaderInitv_210
_Z21D3DXCompileShaderInitv_230:
	cmp dl, 0xa
	jz _Z21D3DXCompileShaderInitv_220
	add ebx, 0x1
	movzx edx, byte [ebx]
	test dl, dl
	jnz _Z21D3DXCompileShaderInitv_230
_Z21D3DXCompileShaderInitv_210:
	cmp dl, 0xa
	jnz _Z21D3DXCompileShaderInitv_150
_Z21D3DXCompileShaderInitv_220:
	add ebx, 0x1
	jmp _Z21D3DXCompileShaderInitv_150
_Z21D3DXCompileShaderInitv_40:
	xor eax, eax
	jmp _Z21D3DXCompileShaderInitv_50
_Z21D3DXCompileShaderInitv_200:
	lea eax, [ebp-0x19]
	mov [esp+0x8], eax
	lea eax, [ebp-0x13c]
	mov [esp+0x4], eax
	lea edi, [ebp-0x24]
	mov [esp], edi
	call _ZNSsC1EPKcRKSaIcE
	mov [esp+0x4], edi
	mov dword [esp], sPrograms
	call _ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE11lower_boundERS1_
	mov [ebp-0x160], eax
	cmp eax, sPrograms+0x4
	jz _Z21D3DXCompileShaderInitv_240
	mov [ebp-0x150], eax
	mov edx, eax
	add edx, 0x10
	mov ecx, [ebp-0x24]
	mov [ebp-0x154], ecx
	mov edi, [ecx-0xc]
	mov [ebp-0x15c], edi
	mov [ebp-0x28], edi
	mov eax, [eax+0x10]
	mov eax, [eax-0xc]
	mov [ebp-0x158], eax
	mov [ebp-0x20], eax
	cmp edi, eax
	jbe _Z21D3DXCompileShaderInitv_250
	lea eax, [ebp-0x20]
_Z21D3DXCompileShaderInitv_290:
	mov edx, [edx]
	mov ecx, [eax]
	cld
	cmp ecx, ecx
	mov esi, [ebp-0x154]
	mov edi, edx
	repe cmpsb
	mov eax, 0x0
	jz _Z21D3DXCompileShaderInitv_260
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
_Z21D3DXCompileShaderInitv_260:
	mov [ebp-0x17c], eax
	mov ecx, [ebp-0x158]
	sub [ebp-0x15c], ecx
	test eax, eax
	cmovz eax, [ebp-0x15c]
	test eax, eax
	js _Z21D3DXCompileShaderInitv_240
	mov edi, [0xd5cc01c]
	mov eax, [ebp-0x150]
_Z21D3DXCompileShaderInitv_310:
	mov edx, [ebp-0x164]
	mov [eax+0x14], edx
	mov eax, [ebp-0x24]
	lea esi, [eax-0xc]
	cmp esi, edi
	jnz _Z21D3DXCompileShaderInitv_270
_Z21D3DXCompileShaderInitv_320:
	mov esi, 0x1
	jmp _Z21D3DXCompileShaderInitv_280
_Z21D3DXCompileShaderInitv_250:
	lea eax, [ebp-0x28]
	jmp _Z21D3DXCompileShaderInitv_290
_Z21D3DXCompileShaderInitv_10:
	add esp, 0x1ac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z21D3DXCompileShaderInitv_240:
	lea edi, [ebp-0x24]
	mov [esp+0x4], edi
	lea esi, [ebp-0x30]
	mov [esp], esi
	call _ZNSsC1ERKSs
	mov dword [ebp-0x2c], 0x0
	mov [esp+0x8], esi
	mov eax, [ebp-0x160]
	mov [esp+0x4], eax
	mov dword [esp], sPrograms
	call _ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE13insert_uniqueESt17_Rb_tree_iteratorIS4_ERKS4_
	mov esi, eax
	mov eax, [ebp-0x30]
	lea edx, [eax-0xc]
	mov [ebp-0x14c], edx
	mov edi, [0xd5cc01c]
	cmp edx, edi
	jnz _Z21D3DXCompileShaderInitv_300
_Z21D3DXCompileShaderInitv_330:
	mov [ebp-0x150], esi
	mov eax, esi
	jmp _Z21D3DXCompileShaderInitv_310
_Z21D3DXCompileShaderInitv_270:
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg _Z21D3DXCompileShaderInitv_320
	lea eax, [ebp-0x1b]
	mov [esp+0x4], eax
	mov [esp], esi
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	mov esi, 0x1
	jmp _Z21D3DXCompileShaderInitv_280
_Z21D3DXCompileShaderInitv_300:
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg _Z21D3DXCompileShaderInitv_330
	lea eax, [ebp-0x1a]
	mov [esp+0x4], eax
	mov ecx, [ebp-0x14c]
	mov [esp], ecx
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp _Z21D3DXCompileShaderInitv_330
	mov ebx, eax
	mov eax, [ebp-0x30]
	lea esi, [eax-0xc]
	mov edi, [0xd5cc01c]
	cmp esi, edi
	jnz _Z21D3DXCompileShaderInitv_340
_Z21D3DXCompileShaderInitv_380:
	mov eax, [ebp-0x24]
	lea esi, [eax-0xc]
	cmp esi, edi
	jnz _Z21D3DXCompileShaderInitv_350
_Z21D3DXCompileShaderInitv_360:
	mov [esp], ebx
	call _Unwind_Resume
_Z21D3DXCompileShaderInitv_370:
	mov ebx, eax
	jmp _Z21D3DXCompileShaderInitv_360
	jmp _Z21D3DXCompileShaderInitv_370
_Z21D3DXCompileShaderInitv_390:
	mov ebx, eax
	mov edi, [0xd5cc01c]
	jmp _Z21D3DXCompileShaderInitv_380
	jmp _Z21D3DXCompileShaderInitv_390
_Z21D3DXCompileShaderInitv_350:
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg _Z21D3DXCompileShaderInitv_360
	lea eax, [ebp-0x1b]
	mov [esp+0x4], eax
	mov [esp], esi
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp _Z21D3DXCompileShaderInitv_360
_Z21D3DXCompileShaderInitv_340:
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg _Z21D3DXCompileShaderInitv_380
	lea eax, [ebp-0x1a]
	mov [esp+0x4], eax
	mov [esp], esi
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp _Z21D3DXCompileShaderInitv_380
	nop


;Tokenize(std::vector<std::string, std::allocator<std::string> >&, char const*)
_Z8TokenizeRSt6vectorISsSaISsEEPKc:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x13c
	mov esi, [ebp+0x8]
	mov eax, [_cstring__1]
	mov [ebp-0x24], eax
	mov eax, [esi+0x4]
	mov edx, [esi]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov [esp], esi
	call _ZNSt6vectorISsSaISsEE5eraseEN9__gnu_cxx17__normal_iteratorIPSsS1_EES5_
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	lea ebx, [ebp-0x12c]
	mov [esp], ebx
	call strcpy
	lea eax, [ebp-0x24]
	mov [esp+0x4], eax
	mov [esp], ebx
	call strtok
	mov edx, eax
	test eax, eax
	jz _Z8TokenizeRSt6vectorISsSaISsEEPKc_10
	lea eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	lea ebx, [ebp-0x20]
	mov [esp], ebx
	call _ZNSsC1EPKcRKSaIcE
	mov eax, [esi+0x4]
	cmp eax, [esi+0x8]
	jz _Z8TokenizeRSt6vectorISsSaISsEEPKc_20
	test eax, eax
	jz _Z8TokenizeRSt6vectorISsSaISsEEPKc_30
	mov [esp+0x4], ebx
	mov [esp], eax
	call _ZNSsC1ERKSs
	mov eax, [esi+0x4]
_Z8TokenizeRSt6vectorISsSaISsEEPKc_30:
	add eax, 0x4
	mov [esi+0x4], eax
_Z8TokenizeRSt6vectorISsSaISsEEPKc_90:
	mov ebx, [ebp-0x20]
	sub ebx, 0xc
	mov edi, [0xd5cc01c]
	cmp ebx, edi
	jz _Z8TokenizeRSt6vectorISsSaISsEEPKc_40
	jmp _Z8TokenizeRSt6vectorISsSaISsEEPKc_50
_Z8TokenizeRSt6vectorISsSaISsEEPKc_80:
	test eax, eax
	jz _Z8TokenizeRSt6vectorISsSaISsEEPKc_60
	mov [esp+0x4], ebx
	mov [esp], eax
	call _ZNSsC1ERKSs
	mov eax, [esi+0x4]
_Z8TokenizeRSt6vectorISsSaISsEEPKc_60:
	add eax, 0x4
	mov [esi+0x4], eax
	mov eax, [ebp-0x28]
	lea ebx, [eax-0xc]
	cmp edi, ebx
	jnz _Z8TokenizeRSt6vectorISsSaISsEEPKc_70
_Z8TokenizeRSt6vectorISsSaISsEEPKc_40:
	lea eax, [ebp-0x24]
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call strtok
	mov edx, eax
	test eax, eax
	jz _Z8TokenizeRSt6vectorISsSaISsEEPKc_10
	lea eax, [ebp-0x1b]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	lea ebx, [ebp-0x28]
	mov [esp], ebx
	call _ZNSsC1EPKcRKSaIcE
	mov eax, [esi+0x4]
	cmp eax, [esi+0x8]
	jnz _Z8TokenizeRSt6vectorISsSaISsEEPKc_80
	mov [esp+0x8], ebx
	mov [esp+0x4], eax
	mov [esp], esi
	call _ZNSt6vectorISsSaISsEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPSsS1_EERKSs
	mov eax, [ebp-0x28]
	lea ebx, [eax-0xc]
	cmp edi, ebx
	jz _Z8TokenizeRSt6vectorISsSaISsEEPKc_40
_Z8TokenizeRSt6vectorISsSaISsEEPKc_70:
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg _Z8TokenizeRSt6vectorISsSaISsEEPKc_40
	lea eax, [ebp-0x19]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp _Z8TokenizeRSt6vectorISsSaISsEEPKc_40
_Z8TokenizeRSt6vectorISsSaISsEEPKc_10:
	mov eax, [esi+0x4]
	sub eax, [esi]
	sar eax, 0x2
	add esp, 0x13c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z8TokenizeRSt6vectorISsSaISsEEPKc_20:
	mov [esp+0x8], ebx
	mov [esp+0x4], eax
	mov [esp], esi
	call _ZNSt6vectorISsSaISsEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPSsS1_EERKSs
	jmp _Z8TokenizeRSt6vectorISsSaISsEEPKc_90
_Z8TokenizeRSt6vectorISsSaISsEEPKc_50:
	lea eax, [ebx+0x8]
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg _Z8TokenizeRSt6vectorISsSaISsEEPKc_40
	lea eax, [ebp-0x1a]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp _Z8TokenizeRSt6vectorISsSaISsEEPKc_40
	mov ebx, eax
	mov eax, [ebp-0x20]
	lea esi, [eax-0xc]
	cmp esi, [0xd5cc01c]
	jnz _Z8TokenizeRSt6vectorISsSaISsEEPKc_100
_Z8TokenizeRSt6vectorISsSaISsEEPKc_110:
	mov [esp], ebx
	call _Unwind_Resume
_Z8TokenizeRSt6vectorISsSaISsEEPKc_120:
	mov ebx, eax
	jmp _Z8TokenizeRSt6vectorISsSaISsEEPKc_110
	mov ebx, eax
	mov eax, [ebp-0x28]
	lea esi, [eax-0xc]
	cmp edi, esi
	jz _Z8TokenizeRSt6vectorISsSaISsEEPKc_110
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg _Z8TokenizeRSt6vectorISsSaISsEEPKc_110
	lea eax, [ebp-0x19]
	mov [esp+0x4], eax
	mov [esp], esi
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp _Z8TokenizeRSt6vectorISsSaISsEEPKc_110
_Z8TokenizeRSt6vectorISsSaISsEEPKc_100:
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg _Z8TokenizeRSt6vectorISsSaISsEEPKc_110
	lea eax, [ebp-0x1a]
	mov [esp+0x4], eax
	mov [esp], esi
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp _Z8TokenizeRSt6vectorISsSaISsEEPKc_110
	jmp _Z8TokenizeRSt6vectorISsSaISsEEPKc_120
	jmp _Z8TokenizeRSt6vectorISsSaISsEEPKc_120
	jmp _Z8TokenizeRSt6vectorISsSaISsEEPKc_120
	jmp _Z8TokenizeRSt6vectorISsSaISsEEPKc_120
	nop


;CD3DXBuffer::GetBufferSize()
_ZN11CD3DXBuffer13GetBufferSizeEv:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax+0x8]
	pop ebp
	ret
	nop


;CD3DXBuffer::QueryInterface(_GUID const&, void**)
_ZN11CD3DXBuffer14QueryInterfaceERK5_GUIDPPv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov edx, [ebp+0x10]
	mov [edx], eax
	mov edx, [eax]
	mov [esp], eax
	call dword [edx+0x4]
	xor eax, eax
	leave
	ret


;CD3DXBuffer::GetBufferPointer()
_ZN11CD3DXBuffer16GetBufferPointerEv:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax+0xc]
	pop ebp
	ret
	nop


;CD3DXBuffer::AddRef()
_ZN11CD3DXBuffer6AddRefEv:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	mov eax, [edx+0x4]
	add eax, 0x1
	mov [edx+0x4], eax
	pop ebp
	ret
	nop


;CD3DXBuffer::Release()
_ZN11CD3DXBuffer7ReleaseEv:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov edx, [ebp+0x8]
	mov ebx, [edx+0x4]
	sub ebx, 0x1
	mov [edx+0x4], ebx
	test ebx, ebx
	jnz _ZN11CD3DXBuffer7ReleaseEv_10
	mov eax, [edx]
	mov [esp], edx
	call dword [eax+0x18]
_ZN11CD3DXBuffer7ReleaseEv_10:
	mov eax, ebx
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;CD3DXBuffer::~CD3DXBuffer()
_ZN11CD3DXBufferD0Ev:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov dword [ebx], _ZTV11CD3DXBuffer+0x8
	mov eax, [ebx+0xc]
	test eax, eax
	jz _ZN11CD3DXBufferD0Ev_10
	mov [esp], eax
	call _ZdaPv
_ZN11CD3DXBufferD0Ev_10:
	mov dword [ebx+0xc], 0x0
	mov [ebp+0x8], ebx
	add esp, 0x14
	pop ebx
	pop ebp
	jmp _ZdlPv
	nop


;CD3DXBuffer::~CD3DXBuffer()
_ZN11CD3DXBufferD1Ev:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov dword [ebx], _ZTV11CD3DXBuffer+0x8
	mov eax, [ebx+0xc]
	test eax, eax
	jz _ZN11CD3DXBufferD1Ev_10
	mov [esp], eax
	call _ZdaPv
_ZN11CD3DXBufferD1Ev_10:
	mov dword [ebx+0xc], 0x0
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;std::vector<std::string, std::allocator<std::string> >::_M_insert_aux(__gnu_cxx::__normal_iterator<std::string*, std::vector<std::string, std::allocator<std::string> > >, std::string const&)
_ZNSt6vectorISsSaISsEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPSsS1_EERKSs:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov eax, [ebp+0xc]
	mov [ebp-0x3c], eax
	mov edx, [ebp+0x8]
	mov ebx, [edx+0x4]
	cmp ebx, [edx+0x8]
	jz _ZNSt6vectorISsSaISsEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPSsS1_EERKSs_10
	lea eax, [ebx-0x4]
	test ebx, ebx
	jz _ZNSt6vectorISsSaISsEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPSsS1_EERKSs_20
	mov [esp+0x4], eax
	mov [esp], ebx
	call _ZNSsC1ERKSs
	mov eax, [ebp+0x8]
	mov ebx, [eax+0x4]
	mov edx, eax
_ZNSt6vectorISsSaISsEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPSsS1_EERKSs_190:
	add ebx, 0x4
	mov [edx+0x4], ebx
	mov eax, [ebp+0x10]
	mov [esp+0x4], eax
	lea edx, [ebp-0x24]
	mov [esp], edx
	call _ZNSsC1ERKSs
	mov edx, [ebp+0x8]
	mov eax, [edx+0x4]
	lea esi, [eax-0x8]
	lea ebx, [eax-0x4]
	mov eax, esi
	sub eax, [ebp-0x3c]
	sar eax, 0x2
	mov [ebp-0x4c], eax
	test eax, eax
	jle _ZNSt6vectorISsSaISsEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPSsS1_EERKSs_30
	xor edi, edi
_ZNSt6vectorISsSaISsEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPSsS1_EERKSs_40:
	sub esi, 0x4
	sub ebx, 0x4
	mov [esp+0x4], esi
	mov [esp], ebx
	call _ZNSs6assignERKSs
	add edi, 0x1
	cmp [ebp-0x4c], edi
	jnz _ZNSt6vectorISsSaISsEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPSsS1_EERKSs_40
_ZNSt6vectorISsSaISsEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPSsS1_EERKSs_30:
	lea edx, [ebp-0x24]
	mov [esp+0x4], edx
	mov eax, [ebp+0xc]
	mov [esp], eax
	call _ZNSs6assignERKSs
	mov eax, [ebp-0x24]
	lea ebx, [eax-0xc]
	cmp ebx, [0xd5cc01c]
	jnz _ZNSt6vectorISsSaISsEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPSsS1_EERKSs_50
_ZNSt6vectorISsSaISsEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPSsS1_EERKSs_240:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZNSt6vectorISsSaISsEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPSsS1_EERKSs_10:
	mov eax, ebx
	sub eax, [edx]
	sar eax, 0x2
	cmp eax, 0x3fffffff
	jz _ZNSt6vectorISsSaISsEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPSsS1_EERKSs_60
	test eax, eax
	jnz _ZNSt6vectorISsSaISsEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPSsS1_EERKSs_70
	mov edx, 0x1
_ZNSt6vectorISsSaISsEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPSsS1_EERKSs_210:
	shl edx, 0x2
	mov [ebp-0x44], edx
	mov [esp], edx
	call _Znwm
	mov [ebp-0x48], eax
	mov [ebp-0x38], eax
	mov eax, [ebp+0x8]
	mov esi, [eax]
	mov edi, [ebp-0x48]
	cmp esi, [ebp+0xc]
	jz _ZNSt6vectorISsSaISsEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPSsS1_EERKSs_80
	mov ebx, edi
_ZNSt6vectorISsSaISsEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPSsS1_EERKSs_100:
	test ebx, ebx
	jz _ZNSt6vectorISsSaISsEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPSsS1_EERKSs_90
	mov [esp+0x4], esi
	mov [esp], ebx
	call _ZNSsC1ERKSs
_ZNSt6vectorISsSaISsEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPSsS1_EERKSs_90:
	add esi, 0x4
	lea edi, [ebx+0x4]
	mov ebx, edi
	cmp esi, [ebp+0xc]
	jnz _ZNSt6vectorISsSaISsEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPSsS1_EERKSs_100
_ZNSt6vectorISsSaISsEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPSsS1_EERKSs_80:
	mov [ebp-0x38], edi
	test edi, edi
	jz _ZNSt6vectorISsSaISsEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPSsS1_EERKSs_110
	mov edx, [ebp+0x10]
	mov [esp+0x4], edx
	mov [esp], edi
	call _ZNSsC1ERKSs
_ZNSt6vectorISsSaISsEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPSsS1_EERKSs_110:
	add edi, 0x4
	mov [ebp-0x38], edi
	mov edx, [ebp+0x8]
	mov ebx, [edx+0x4]
	mov esi, [ebp-0x3c]
	cmp esi, ebx
	jz _ZNSt6vectorISsSaISsEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPSsS1_EERKSs_120
_ZNSt6vectorISsSaISsEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPSsS1_EERKSs_140:
	test edi, edi
	jz _ZNSt6vectorISsSaISsEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPSsS1_EERKSs_130
	mov [esp+0x4], esi
	mov [esp], edi
	call _ZNSsC1ERKSs
_ZNSt6vectorISsSaISsEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPSsS1_EERKSs_130:
	add esi, 0x4
	add edi, 0x4
	cmp esi, ebx
	jnz _ZNSt6vectorISsSaISsEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPSsS1_EERKSs_140
	mov eax, [ebp+0x8]
	mov ebx, [eax+0x4]
	mov edx, eax
_ZNSt6vectorISsSaISsEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPSsS1_EERKSs_220:
	mov eax, [edx]
	mov esi, eax
	cmp eax, ebx
	jz _ZNSt6vectorISsSaISsEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPSsS1_EERKSs_150
	mov edx, [0xd5cc01c]
	mov [ebp-0x2c], edx
_ZNSt6vectorISsSaISsEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPSsS1_EERKSs_170:
	mov eax, [esi]
	lea edx, [eax-0xc]
	mov [ebp-0x40], edx
	cmp [ebp-0x2c], edx
	jnz _ZNSt6vectorISsSaISsEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPSsS1_EERKSs_160
_ZNSt6vectorISsSaISsEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPSsS1_EERKSs_230:
	add esi, 0x4
	cmp esi, ebx
	jnz _ZNSt6vectorISsSaISsEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPSsS1_EERKSs_170
	mov edx, [ebp+0x8]
	mov eax, [edx]
_ZNSt6vectorISsSaISsEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPSsS1_EERKSs_150:
	test eax, eax
	jz _ZNSt6vectorISsSaISsEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPSsS1_EERKSs_180
	mov [esp], eax
	call _ZdlPv
_ZNSt6vectorISsSaISsEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPSsS1_EERKSs_180:
	mov edx, [ebp-0x48]
	mov eax, [ebp+0x8]
	mov [eax], edx
	mov [eax+0x4], edi
	mov eax, edx
	add eax, [ebp-0x44]
	mov edx, [ebp+0x8]
	mov [edx+0x8], eax
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZNSt6vectorISsSaISsEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPSsS1_EERKSs_20:
	mov edx, [ebp+0x8]
	jmp _ZNSt6vectorISsSaISsEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPSsS1_EERKSs_190
_ZNSt6vectorISsSaISsEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPSsS1_EERKSs_70:
	lea edx, [eax+eax]
	cmp edx, eax
	jb _ZNSt6vectorISsSaISsEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPSsS1_EERKSs_200
	cmp edx, 0x3fffffff
	jbe _ZNSt6vectorISsSaISsEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPSsS1_EERKSs_210
	call _ZSt17__throw_bad_allocv
_ZNSt6vectorISsSaISsEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPSsS1_EERKSs_200:
	mov edx, 0x3fffffff
	jmp _ZNSt6vectorISsSaISsEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPSsS1_EERKSs_210
_ZNSt6vectorISsSaISsEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPSsS1_EERKSs_120:
	mov edx, [ebp+0x8]
	jmp _ZNSt6vectorISsSaISsEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPSsS1_EERKSs_220
_ZNSt6vectorISsSaISsEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPSsS1_EERKSs_160:
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg _ZNSt6vectorISsSaISsEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPSsS1_EERKSs_230
	lea eax, [ebp-0x19]
	mov [esp+0x4], eax
	mov edx, [ebp-0x40]
	mov [esp], edx
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp _ZNSt6vectorISsSaISsEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPSsS1_EERKSs_230
_ZNSt6vectorISsSaISsEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPSsS1_EERKSs_50:
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg _ZNSt6vectorISsSaISsEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPSsS1_EERKSs_240
	lea eax, [ebp-0x1d]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp _ZNSt6vectorISsSaISsEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPSsS1_EERKSs_240
_ZNSt6vectorISsSaISsEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPSsS1_EERKSs_60:
	mov dword [esp], _cstring_vector_m_insert_
	call _ZSt20__throw_length_errorPKc
	mov [esp], eax
	call __cxa_begin_catch
	mov ebx, [ebp-0x38]
	cmp ebx, edi
	jz _ZNSt6vectorISsSaISsEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPSsS1_EERKSs_250
	mov eax, [0xd5cc01c]
	mov [ebp-0x30], eax
_ZNSt6vectorISsSaISsEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPSsS1_EERKSs_270:
	mov eax, [ebx]
	lea esi, [eax-0xc]
	cmp [ebp-0x30], esi
	jnz _ZNSt6vectorISsSaISsEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPSsS1_EERKSs_260
_ZNSt6vectorISsSaISsEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPSsS1_EERKSs_390:
	add ebx, 0x4
	cmp ebx, edi
	jnz _ZNSt6vectorISsSaISsEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPSsS1_EERKSs_270
_ZNSt6vectorISsSaISsEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPSsS1_EERKSs_250:
	call __cxa_rethrow
	mov ebx, eax
_ZNSt6vectorISsSaISsEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPSsS1_EERKSs_400:
	mov [esp], ebx
	call __cxa_begin_catch
	mov ebx, [ebp-0x48]
	mov eax, [ebp-0x38]
	cmp ebx, eax
	jz _ZNSt6vectorISsSaISsEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPSsS1_EERKSs_280
	mov edi, [0xd5cc01c]
_ZNSt6vectorISsSaISsEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPSsS1_EERKSs_300:
	mov eax, [ebx]
	lea esi, [eax-0xc]
	cmp esi, edi
	jnz _ZNSt6vectorISsSaISsEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPSsS1_EERKSs_290
_ZNSt6vectorISsSaISsEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPSsS1_EERKSs_350:
	add ebx, 0x4
	cmp ebx, [ebp-0x38]
	jnz _ZNSt6vectorISsSaISsEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPSsS1_EERKSs_300
_ZNSt6vectorISsSaISsEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPSsS1_EERKSs_280:
	mov eax, [ebp-0x48]
	test eax, eax
	jz _ZNSt6vectorISsSaISsEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPSsS1_EERKSs_310
	mov eax, [ebp-0x48]
	mov [esp], eax
	call _ZdlPv
_ZNSt6vectorISsSaISsEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPSsS1_EERKSs_310:
	call __cxa_rethrow
	mov [esp], eax
	call __cxa_begin_catch
	mov ebx, [ebp-0x48]
	cmp ebx, edi
	jz _ZNSt6vectorISsSaISsEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPSsS1_EERKSs_320
	mov edx, [0xd5cc01c]
	mov [ebp-0x34], edx
_ZNSt6vectorISsSaISsEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPSsS1_EERKSs_340:
	mov eax, [ebx]
	lea esi, [eax-0xc]
	cmp [ebp-0x34], esi
	jnz _ZNSt6vectorISsSaISsEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPSsS1_EERKSs_330
_ZNSt6vectorISsSaISsEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPSsS1_EERKSs_410:
	add ebx, 0x4
	cmp ebx, edi
	jnz _ZNSt6vectorISsSaISsEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPSsS1_EERKSs_340
_ZNSt6vectorISsSaISsEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPSsS1_EERKSs_320:
	call __cxa_rethrow
_ZNSt6vectorISsSaISsEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPSsS1_EERKSs_290:
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg _ZNSt6vectorISsSaISsEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPSsS1_EERKSs_350
	lea edx, [ebp-0x1a]
	mov [esp+0x4], edx
	mov [esp], esi
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp _ZNSt6vectorISsSaISsEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPSsS1_EERKSs_350
	mov ebx, eax
	call __cxa_end_catch
	mov [esp], ebx
	call _Unwind_Resume
	mov ebx, eax
	mov eax, [ebp-0x24]
	lea esi, [eax-0xc]
	cmp esi, [0xd5cc01c]
	jnz _ZNSt6vectorISsSaISsEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPSsS1_EERKSs_360
_ZNSt6vectorISsSaISsEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPSsS1_EERKSs_370:
	mov [esp], ebx
	call _Unwind_Resume
	mov ebx, eax
	jmp _ZNSt6vectorISsSaISsEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPSsS1_EERKSs_370
_ZNSt6vectorISsSaISsEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPSsS1_EERKSs_360:
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg _ZNSt6vectorISsSaISsEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPSsS1_EERKSs_370
	lea eax, [ebp-0x1d]
	mov [esp+0x4], eax
	mov [esp], esi
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp _ZNSt6vectorISsSaISsEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPSsS1_EERKSs_370
_ZNSt6vectorISsSaISsEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPSsS1_EERKSs_380:
	mov [esp], eax
	call _Unwind_Resume
	jmp _ZNSt6vectorISsSaISsEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPSsS1_EERKSs_380
_ZNSt6vectorISsSaISsEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPSsS1_EERKSs_260:
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg _ZNSt6vectorISsSaISsEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPSsS1_EERKSs_390
	lea edx, [ebp-0x1b]
	mov [esp+0x4], edx
	mov [esp], esi
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp _ZNSt6vectorISsSaISsEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPSsS1_EERKSs_390
_ZNSt6vectorISsSaISsEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPSsS1_EERKSs_420:
	mov ebx, eax
	call __cxa_end_catch
	jmp _ZNSt6vectorISsSaISsEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPSsS1_EERKSs_400
_ZNSt6vectorISsSaISsEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPSsS1_EERKSs_330:
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg _ZNSt6vectorISsSaISsEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPSsS1_EERKSs_410
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov [esp], esi
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp _ZNSt6vectorISsSaISsEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPSsS1_EERKSs_410
	jmp _ZNSt6vectorISsSaISsEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPSsS1_EERKSs_420
	jmp _ZNSt6vectorISsSaISsEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPSsS1_EERKSs_420
	nop


;std::vector<std::string, std::allocator<std::string> >::erase(__gnu_cxx::__normal_iterator<std::string*, std::vector<std::string, std::allocator<std::string> > >, __gnu_cxx::__normal_iterator<std::string*, std::vector<std::string, std::allocator<std::string> > >)
_ZNSt6vectorISsSaISsEE5eraseEN9__gnu_cxx17__normal_iteratorIPSsS1_EES5_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov eax, [ebp+0x8]
	mov edi, [eax+0x4]
	mov ebx, [ebp+0x10]
	mov esi, [ebp+0xc]
	mov eax, edi
	sub eax, ebx
	sar eax, 0x2
	mov [ebp-0x30], eax
	test eax, eax
	jle _ZNSt6vectorISsSaISsEE5eraseEN9__gnu_cxx17__normal_iteratorIPSsS1_EES5__10
	xor edi, edi
_ZNSt6vectorISsSaISsEE5eraseEN9__gnu_cxx17__normal_iteratorIPSsS1_EES5__20:
	mov [esp+0x4], ebx
	mov [esp], esi
	call _ZNSs6assignERKSs
	add ebx, 0x4
	add esi, 0x4
	add edi, 0x1
	cmp [ebp-0x30], edi
	jnz _ZNSt6vectorISsSaISsEE5eraseEN9__gnu_cxx17__normal_iteratorIPSsS1_EES5__20
	mov eax, [ebp+0x8]
	mov edi, [eax+0x4]
_ZNSt6vectorISsSaISsEE5eraseEN9__gnu_cxx17__normal_iteratorIPSsS1_EES5__10:
	mov ebx, esi
	cmp edi, esi
	jz _ZNSt6vectorISsSaISsEE5eraseEN9__gnu_cxx17__normal_iteratorIPSsS1_EES5__30
	mov eax, [0xd5cc01c]
	mov [ebp-0x2c], eax
_ZNSt6vectorISsSaISsEE5eraseEN9__gnu_cxx17__normal_iteratorIPSsS1_EES5__50:
	mov eax, [ebx]
	lea esi, [eax-0xc]
	cmp [ebp-0x2c], esi
	jnz _ZNSt6vectorISsSaISsEE5eraseEN9__gnu_cxx17__normal_iteratorIPSsS1_EES5__40
_ZNSt6vectorISsSaISsEE5eraseEN9__gnu_cxx17__normal_iteratorIPSsS1_EES5__60:
	add ebx, 0x4
	cmp edi, ebx
	jnz _ZNSt6vectorISsSaISsEE5eraseEN9__gnu_cxx17__normal_iteratorIPSsS1_EES5__50
	mov eax, [ebp+0x8]
	mov edi, [eax+0x4]
_ZNSt6vectorISsSaISsEE5eraseEN9__gnu_cxx17__normal_iteratorIPSsS1_EES5__30:
	mov eax, [ebp+0xc]
	sub [ebp+0x10], eax
	and dword [ebp+0x10], 0xfffffffc
	sub edi, [ebp+0x10]
	mov eax, [ebp+0x8]
	mov [eax+0x4], edi
	mov eax, [ebp+0xc]
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZNSt6vectorISsSaISsEE5eraseEN9__gnu_cxx17__normal_iteratorIPSsS1_EES5__40:
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg _ZNSt6vectorISsSaISsEE5eraseEN9__gnu_cxx17__normal_iteratorIPSsS1_EES5__60
	lea eax, [ebp-0x19]
	mov [esp+0x4], eax
	mov [esp], esi
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp _ZNSt6vectorISsSaISsEE5eraseEN9__gnu_cxx17__normal_iteratorIPSsS1_EES5__60
	mov [esp], eax
	call _Unwind_Resume


;std::_Rb_tree<std::string, std::pair<std::string const, char const*>, std::_Select1st<std::pair<std::string const, char const*> >, std::less<std::string>, std::allocator<std::pair<std::string const, char const*> > >::lower_bound(std::string const&)
_ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE11lower_boundERS1_:
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
	jz _ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE11lower_boundERS1__10
	mov ecx, [ebp+0xc]
	mov ecx, [ecx]
	mov [ebp-0x30], ecx
	cld
	mov edx, [ebp-0x2c]
	mov esi, [ebp-0x2c]
	jmp _ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE11lower_boundERS1__20
_ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE11lower_boundERS1__60:
	lea eax, [ebp-0x18]
	mov edx, [edx]
	mov ecx, [eax]
	cmp ecx, ecx
	mov esi, edx
	mov edi, [ebp-0x30]
	repe cmpsb
	mov eax, 0x0
	jz _ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE11lower_boundERS1__30
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
_ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE11lower_boundERS1__30:
	sub ebx, [ebp-0x24]
	test eax, eax
	cmovnz ebx, eax
	mov [ebp-0x34], ebx
	test ebx, ebx
	js _ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE11lower_boundERS1__40
_ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE11lower_boundERS1__80:
	mov ecx, [ebp-0x2c]
	mov eax, [ecx+0x8]
	mov [ebp-0x28], ecx
	test eax, eax
	jz _ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE11lower_boundERS1__50
_ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE11lower_boundERS1__90:
	mov [ebp-0x2c], eax
	mov edx, eax
	mov esi, eax
_ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE11lower_boundERS1__20:
	add edx, 0x10
	mov eax, [esi+0x10]
	mov ebx, [eax-0xc]
	mov [ebp-0x14], ebx
	mov eax, [ebp-0x30]
	mov eax, [eax-0xc]
	mov [ebp-0x24], eax
	mov [ebp-0x18], eax
	cmp ebx, eax
	ja _ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE11lower_boundERS1__60
	lea eax, [ebp-0x14]
	mov edx, [edx]
	mov ecx, [eax]
	cmp ecx, ecx
	mov esi, edx
	mov edi, [ebp-0x30]
	repe cmpsb
	mov eax, 0x0
	jz _ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE11lower_boundERS1__70
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
_ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE11lower_boundERS1__70:
	sub ebx, [ebp-0x24]
	test eax, eax
	cmovnz ebx, eax
	mov [ebp-0x34], ebx
	test ebx, ebx
	jns _ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE11lower_boundERS1__80
_ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE11lower_boundERS1__40:
	mov esi, [ebp-0x2c]
	mov eax, [esi+0xc]
	test eax, eax
	jnz _ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE11lower_boundERS1__90
_ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE11lower_boundERS1__50:
	mov eax, [ebp-0x28]
_ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE11lower_boundERS1__10:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;std::_Rb_tree<std::string, std::pair<std::string const, char const*>, std::_Select1st<std::pair<std::string const, char const*> >, std::less<std::string>, std::allocator<std::pair<std::string const, char const*> > >::insert_unique(std::pair<std::string const, char const*> const&)
_ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE13insert_uniqueERKS4_:
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
	jz _ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE13insert_uniqueERKS4__10
	mov ecx, [ebp+0xc]
	mov ecx, [ecx]
	mov [ebp-0x4c], ecx
	mov edx, [ebp-0x3c]
	mov esi, ecx
	mov edi, [ebp-0x3c]
	jmp _ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE13insert_uniqueERKS4__20
_ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE13insert_uniqueERKS4__60:
	lea eax, [ebp-0x1c]
	mov edx, [edx]
	mov ecx, [eax]
	cld
	cmp ecx, ecx
	mov esi, [ebp-0x4c]
	mov edi, edx
	repe cmpsb
	mov eax, 0x0
	jz _ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE13insert_uniqueERKS4__30
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
_ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE13insert_uniqueERKS4__30:
	sub ebx, [ebp-0x34]
	test eax, eax
	cmovnz ebx, eax
	mov [ebp-0x60], ebx
	mov edx, ebx
	shr edx, 0x1f
	test dl, dl
	jz _ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE13insert_uniqueERKS4__40
_ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE13insert_uniqueERKS4__80:
	mov ecx, [ebp-0x3c]
	mov eax, [ecx+0x8]
	test eax, eax
	jz _ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE13insert_uniqueERKS4__50
_ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE13insert_uniqueERKS4__90:
	mov [ebp-0x3c], eax
	mov edx, eax
	mov esi, [ebp-0x4c]
	mov edi, eax
_ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE13insert_uniqueERKS4__20:
	add edx, 0x10
	mov ebx, [esi-0xc]
	mov [ebp-0x20], ebx
	mov eax, [edi+0x10]
	mov eax, [eax-0xc]
	mov [ebp-0x34], eax
	mov [ebp-0x1c], eax
	cmp ebx, eax
	ja _ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE13insert_uniqueERKS4__60
	lea eax, [ebp-0x20]
	mov edx, [edx]
	mov ecx, [eax]
	cld
	cmp ecx, ecx
	mov esi, [ebp-0x4c]
	mov edi, edx
	repe cmpsb
	mov eax, 0x0
	jz _ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE13insert_uniqueERKS4__70
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
_ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE13insert_uniqueERKS4__70:
	sub ebx, [ebp-0x34]
	test eax, eax
	cmovnz ebx, eax
	mov [ebp-0x60], ebx
	mov edx, ebx
	shr edx, 0x1f
	test dl, dl
	jnz _ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE13insert_uniqueERKS4__80
_ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE13insert_uniqueERKS4__40:
	mov esi, [ebp-0x3c]
	mov eax, [esi+0xc]
	test eax, eax
	jnz _ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE13insert_uniqueERKS4__90
_ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE13insert_uniqueERKS4__50:
	mov edi, [ebp-0x3c]
	mov [ebp-0x38], edi
	test dl, dl
	jz _ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE13insert_uniqueERKS4__100
	mov edx, edi
_ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE13insert_uniqueERKS4__10:
	mov eax, [ebp+0x8]
	cmp edx, [eax+0xc]
	jz _ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE13insert_uniqueERKS4__110
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
	jbe _ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE13insert_uniqueERKS4__120
_ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE13insert_uniqueERKS4__150:
	lea eax, [ebp-0x20]
_ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE13insert_uniqueERKS4__160:
	mov edx, [edx]
	mov ecx, [eax]
	cld
	cmp ecx, ecx
	mov esi, edx
	mov edi, [ebp-0x4c]
	repe cmpsb
	mov eax, 0x0
	jz _ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE13insert_uniqueERKS4__130
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
_ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE13insert_uniqueERKS4__130:
	sub ebx, [ebp-0x30]
	test eax, eax
	cmovnz ebx, eax
	mov [ebp-0x5c], ebx
	test ebx, ebx
	js _ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE13insert_uniqueERKS4__140
	mov eax, [ebp-0x2c]
	xor edx, edx
_ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE13insert_uniqueERKS4__170:
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
_ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE13insert_uniqueERKS4__100:
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
	ja _ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE13insert_uniqueERKS4__150
_ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE13insert_uniqueERKS4__120:
	lea eax, [ebp-0x1c]
	jmp _ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE13insert_uniqueERKS4__160
_ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE13insert_uniqueERKS4__110:
	mov ecx, [ebp+0xc]
	mov [esp+0xc], ecx
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call _ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE9_M_insertEPSt18_Rb_tree_node_baseSC_RKS4_
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
_ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE13insert_uniqueERKS4__140:
	mov ecx, [ebp+0xc]
	mov [esp+0xc], ecx
	mov esi, [ebp-0x38]
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x0
	mov edi, [ebp+0x8]
	mov [esp], edi
	call _ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE9_M_insertEPSt18_Rb_tree_node_baseSC_RKS4_
	mov edx, 0x1
	jmp _ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE13insert_uniqueERKS4__170


;std::_Rb_tree<std::string, std::pair<std::string const, char const*>, std::_Select1st<std::pair<std::string const, char const*> >, std::less<std::string>, std::allocator<std::pair<std::string const, char const*> > >::insert_unique(std::_Rb_tree_iterator<std::pair<std::string const, char const*> >, std::pair<std::string const, char const*> const&)
_ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE13insert_uniqueESt17_Rb_tree_iteratorIS4_ERKS4_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x7c
	mov eax, [ebp+0x8]
	add eax, 0x4
	cmp eax, [ebp+0xc]
	jz _ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE13insert_uniqueESt17_Rb_tree_iteratorIS4_ERKS4__10
	mov edx, [ebp+0xc]
	mov eax, [ebp+0x8]
	cmp edx, [eax+0x10]
	jz _ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE13insert_uniqueESt17_Rb_tree_iteratorIS4_ERKS4__20
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
	ja _ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE13insert_uniqueESt17_Rb_tree_iteratorIS4_ERKS4__30
	lea eax, [ebp-0x20]
	mov edx, [edx]
	mov ecx, [eax]
	cld
	cmp ecx, ecx
	mov esi, edx
	mov edi, [ebp-0x40]
	repe cmpsb
	mov eax, 0x0
	jz _ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE13insert_uniqueESt17_Rb_tree_iteratorIS4_ERKS4__40
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
_ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE13insert_uniqueESt17_Rb_tree_iteratorIS4_ERKS4__40:
	sub ebx, [ebp-0x34]
	test eax, eax
	cmovnz ebx, eax
	mov [ebp-0x50], ebx
	test ebx, ebx
	js _ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE13insert_uniqueESt17_Rb_tree_iteratorIS4_ERKS4__50
_ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE13insert_uniqueESt17_Rb_tree_iteratorIS4_ERKS4__70:
	mov ecx, [ebp+0x10]
	mov [esp+0x4], ecx
	mov esi, [ebp+0x8]
	mov [esp], esi
	call _ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE13insert_uniqueERKS4_
_ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE13insert_uniqueESt17_Rb_tree_iteratorIS4_ERKS4__110:
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE13insert_uniqueESt17_Rb_tree_iteratorIS4_ERKS4__30:
	lea eax, [ebp-0x1c]
	mov edx, [edx]
	mov ecx, [eax]
	cld
	cmp ecx, ecx
	mov esi, edx
	mov edi, [ebp-0x40]
	repe cmpsb
	mov eax, 0x0
	jz _ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE13insert_uniqueESt17_Rb_tree_iteratorIS4_ERKS4__60
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
_ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE13insert_uniqueESt17_Rb_tree_iteratorIS4_ERKS4__60:
	sub ebx, [ebp-0x34]
	test eax, eax
	cmovnz ebx, eax
	mov [ebp-0x50], ebx
	test ebx, ebx
	jns _ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE13insert_uniqueESt17_Rb_tree_iteratorIS4_ERKS4__70
_ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE13insert_uniqueESt17_Rb_tree_iteratorIS4_ERKS4__50:
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
	jbe _ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE13insert_uniqueESt17_Rb_tree_iteratorIS4_ERKS4__80
	lea eax, [ebp-0x20]
_ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE13insert_uniqueESt17_Rb_tree_iteratorIS4_ERKS4__170:
	mov edx, [edx]
	mov ecx, [eax]
	cld
	cmp ecx, ecx
	mov esi, [ebp-0x40]
	mov edi, edx
	repe cmpsb
	mov eax, 0x0
	jz _ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE13insert_uniqueESt17_Rb_tree_iteratorIS4_ERKS4__90
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
_ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE13insert_uniqueESt17_Rb_tree_iteratorIS4_ERKS4__90:
	sub ebx, [ebp-0x30]
	test eax, eax
	cmovnz ebx, eax
	mov [ebp-0x4c], ebx
	test ebx, ebx
	jns _ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE13insert_uniqueESt17_Rb_tree_iteratorIS4_ERKS4__70
	mov edi, [ebp+0xc]
	mov edx, [edi+0xc]
	test edx, edx
	jz _ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE13insert_uniqueESt17_Rb_tree_iteratorIS4_ERKS4__100
	mov ecx, [ebp+0x10]
	mov [esp+0xc], ecx
	mov esi, [ebp-0x2c]
	mov [esp+0x8], esi
	mov [esp+0x4], esi
	mov edi, [ebp+0x8]
	mov [esp], edi
	call _ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE9_M_insertEPSt18_Rb_tree_node_baseSC_RKS4_
	jmp _ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE13insert_uniqueESt17_Rb_tree_iteratorIS4_ERKS4__110
_ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE13insert_uniqueESt17_Rb_tree_iteratorIS4_ERKS4__20:
	mov ecx, eax
	mov ebx, [ecx+0x14]
	test ebx, ebx
	jz _ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE13insert_uniqueESt17_Rb_tree_iteratorIS4_ERKS4__120
_ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE13insert_uniqueESt17_Rb_tree_iteratorIS4_ERKS4__180:
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
	jbe _ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE13insert_uniqueESt17_Rb_tree_iteratorIS4_ERKS4__130
	lea eax, [ebp-0x20]
_ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE13insert_uniqueESt17_Rb_tree_iteratorIS4_ERKS4__160:
	mov edx, [edx]
	mov ecx, [eax]
	cld
	cmp ecx, ecx
	mov esi, edx
	mov edi, [ebp-0x40]
	repe cmpsb
	mov eax, 0x0
	jz _ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE13insert_uniqueESt17_Rb_tree_iteratorIS4_ERKS4__140
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
_ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE13insert_uniqueESt17_Rb_tree_iteratorIS4_ERKS4__140:
	sub ebx, [ebp-0x38]
	test eax, eax
	cmovnz ebx, eax
	mov [ebp-0x50], ebx
	test ebx, ebx
	js _ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE13insert_uniqueESt17_Rb_tree_iteratorIS4_ERKS4__150
	mov esi, [ebp+0x8]
_ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE13insert_uniqueESt17_Rb_tree_iteratorIS4_ERKS4__190:
	mov ecx, [ebp+0x10]
	mov [esp+0x4], ecx
	mov [esp], esi
	call _ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE13insert_uniqueERKS4_
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE13insert_uniqueESt17_Rb_tree_iteratorIS4_ERKS4__130:
	lea eax, [ebp-0x1c]
	jmp _ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE13insert_uniqueESt17_Rb_tree_iteratorIS4_ERKS4__160
_ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE13insert_uniqueESt17_Rb_tree_iteratorIS4_ERKS4__80:
	lea eax, [ebp-0x1c]
	jmp _ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE13insert_uniqueESt17_Rb_tree_iteratorIS4_ERKS4__170
_ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE13insert_uniqueESt17_Rb_tree_iteratorIS4_ERKS4__10:
	mov ecx, [ebp+0x8]
	mov ebx, [ecx+0x14]
	test ebx, ebx
	jnz _ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE13insert_uniqueESt17_Rb_tree_iteratorIS4_ERKS4__180
_ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE13insert_uniqueESt17_Rb_tree_iteratorIS4_ERKS4__120:
	mov esi, ecx
	jmp _ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE13insert_uniqueESt17_Rb_tree_iteratorIS4_ERKS4__190
_ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE13insert_uniqueESt17_Rb_tree_iteratorIS4_ERKS4__150:
	mov edi, [ebp+0x10]
	mov [esp+0xc], edi
	mov edx, [ebp-0x3c]
	mov eax, [edx]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE9_M_insertEPSt18_Rb_tree_node_baseSC_RKS4_
	jmp _ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE13insert_uniqueESt17_Rb_tree_iteratorIS4_ERKS4__110
_ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE13insert_uniqueESt17_Rb_tree_iteratorIS4_ERKS4__100:
	mov eax, [ebp+0x10]
	mov [esp+0xc], eax
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x0
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE9_M_insertEPSt18_Rb_tree_node_baseSC_RKS4_
	jmp _ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE13insert_uniqueESt17_Rb_tree_iteratorIS4_ERKS4__110


;std::_Rb_tree<std::string, std::pair<std::string const, char const*>, std::_Select1st<std::pair<std::string const, char const*> >, std::less<std::string>, std::allocator<std::pair<std::string const, char const*> > >::find(std::string const&)
_ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE4findERS1_:
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
	jz _ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE4findERS1__10
	mov [ebp-0x24], eax
	mov ecx, [ebp+0xc]
	mov ecx, [ecx]
	mov [ebp-0x3c], ecx
	mov edx, [ebp-0x38]
	mov esi, [ebp-0x38]
	mov edi, ecx
	jmp _ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE4findERS1__20
_ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE4findERS1__60:
	lea eax, [ebp-0x14]
	mov edx, [edx]
	mov ecx, [eax]
	cld
	cmp ecx, ecx
	mov esi, edx
	mov edi, [ebp-0x3c]
	repe cmpsb
	mov eax, 0x0
	jz _ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE4findERS1__30
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
_ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE4findERS1__30:
	sub ebx, [ebp-0x30]
	test eax, eax
	cmovnz ebx, eax
	mov [ebp-0x48], ebx
	test ebx, ebx
	js _ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE4findERS1__40
_ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE4findERS1__80:
	mov ecx, [ebp-0x38]
	mov eax, [ecx+0x8]
	mov [ebp-0x24], ecx
	test eax, eax
	jz _ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE4findERS1__50
_ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE4findERS1__90:
	mov [ebp-0x38], eax
	mov edx, eax
	mov esi, eax
	mov edi, [ebp-0x3c]
_ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE4findERS1__20:
	add edx, 0x10
	mov eax, [esi+0x10]
	mov ebx, [eax-0xc]
	mov [ebp-0x18], ebx
	mov edi, [edi-0xc]
	mov [ebp-0x30], edi
	mov [ebp-0x14], edi
	cmp ebx, edi
	ja _ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE4findERS1__60
	lea eax, [ebp-0x18]
	mov edx, [edx]
	mov ecx, [eax]
	cld
	cmp ecx, ecx
	mov esi, edx
	mov edi, [ebp-0x3c]
	repe cmpsb
	mov eax, 0x0
	jz _ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE4findERS1__70
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
_ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE4findERS1__70:
	sub ebx, [ebp-0x30]
	test eax, eax
	cmovnz ebx, eax
	mov [ebp-0x48], ebx
	test ebx, ebx
	jns _ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE4findERS1__80
_ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE4findERS1__40:
	mov esi, [ebp-0x38]
	mov eax, [esi+0xc]
	test eax, eax
	jnz _ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE4findERS1__90
_ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE4findERS1__50:
	mov eax, [ebp-0x24]
	mov edx, [ebp-0x34]
_ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE4findERS1__170:
	mov [ebp-0x28], eax
	cmp eax, edx
	jz _ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE4findERS1__100
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
	jbe _ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE4findERS1__110
	lea eax, [ebp-0x18]
	mov edx, [edx]
	mov ecx, [eax]
	cld
	cmp ecx, ecx
	mov esi, [ebp-0x3c]
	mov edi, edx
	repe cmpsb
	mov eax, 0x0
	jz _ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE4findERS1__120
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
_ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE4findERS1__120:
	sub ebx, [ebp-0x2c]
	test eax, eax
	cmovnz ebx, eax
	mov [ebp-0x44], ebx
	test ebx, ebx
	js _ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE4findERS1__130
_ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE4findERS1__150:
	mov eax, [ebp-0x28]
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE4findERS1__110:
	lea eax, [ebp-0x14]
	mov edx, [edx]
	mov ecx, [eax]
	cld
	cmp ecx, ecx
	mov esi, [ebp-0x3c]
	mov edi, edx
	repe cmpsb
	mov eax, 0x0
	jz _ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE4findERS1__140
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
_ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE4findERS1__140:
	sub ebx, [ebp-0x2c]
	test eax, eax
	cmovnz ebx, eax
	mov [ebp-0x44], ebx
	test ebx, ebx
	jns _ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE4findERS1__150
_ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE4findERS1__130:
	mov ecx, [ebp-0x34]
	mov [ebp-0x28], ecx
	mov eax, ecx
_ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE4findERS1__160:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE4findERS1__100:
	mov ecx, edx
	mov [ebp-0x28], ecx
	mov eax, ecx
	jmp _ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE4findERS1__160
_ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE4findERS1__10:
	mov edi, eax
	mov [ebp-0x24], eax
	mov edx, edi
	jmp _ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE4findERS1__170
	nop


;std::_Rb_tree<std::string, std::pair<std::string const, char const*>, std::_Select1st<std::pair<std::string const, char const*> >, std::less<std::string>, std::allocator<std::pair<std::string const, char const*> > >::_M_erase(std::_Rb_tree_node<std::pair<std::string const, char const*> >*)
_ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E:
_ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E_30:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov ebx, [ebp+0xc]
	test ebx, ebx
	jz _ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E_10
	mov eax, [0xd5cc01c]
	mov [ebp-0x2c], eax
	jmp _ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E_20
_ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E_50:
	mov ebx, edi
_ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E_20:
	mov eax, [ebx+0xc]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E_30
	mov edi, [ebx+0x8]
	mov eax, [ebx+0x10]
	lea esi, [eax-0xc]
	cmp esi, [ebp-0x2c]
	jnz _ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E_40
_ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E_60:
	mov [esp], ebx
	call _ZdlPv
	test edi, edi
	jnz _ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E_50
_ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E_10:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E_40:
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg _ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E_60
	lea eax, [ebp-0x19]
	mov [esp+0x4], eax
	mov [esp], esi
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp _ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E_60
	mov [esp], eax
	call _Unwind_Resume


;std::_Rb_tree<std::string, std::pair<std::string const, char const*>, std::_Select1st<std::pair<std::string const, char const*> >, std::less<std::string>, std::allocator<std::pair<std::string const, char const*> > >::_M_insert(std::_Rb_tree_node_base*, std::_Rb_tree_node_base*, std::pair<std::string const, char const*> const&)
_ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE9_M_insertEPSt18_Rb_tree_node_baseSC_RKS4_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov edi, [ebp+0x14]
	mov dword [esp], 0x18
	call _Znwm
	mov ebx, eax
	mov esi, eax
	add esi, 0x10
	jz _ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE9_M_insertEPSt18_Rb_tree_node_baseSC_RKS4__10
	mov [esp+0x4], edi
	mov [esp], esi
	call _ZNSsC1ERKSs
	mov eax, [edi+0x4]
	mov [esi+0x4], eax
_ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE9_M_insertEPSt18_Rb_tree_node_baseSC_RKS4__10:
	mov eax, [ebp+0xc]
	test eax, eax
	jz _ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE9_M_insertEPSt18_Rb_tree_node_baseSC_RKS4__20
	mov edi, [ebp+0x8]
	add edi, 0x4
	mov [ebp-0x34], edi
_ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE9_M_insertEPSt18_Rb_tree_node_baseSC_RKS4__30:
	mov eax, 0x1
_ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE9_M_insertEPSt18_Rb_tree_node_baseSC_RKS4__60:
	mov edx, [ebp-0x34]
	mov [esp+0xc], edx
	mov ecx, [ebp+0x10]
	mov [esp+0x8], ecx
	mov [esp+0x4], ebx
	mov [esp], eax
	call _ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_
	mov edi, [ebp+0x8]
	add dword [edi+0x14], 0x1
	mov eax, ebx
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE9_M_insertEPSt18_Rb_tree_node_baseSC_RKS4__20:
	mov eax, [ebp+0x8]
	add eax, 0x4
	mov [ebp-0x34], eax
	cmp [ebp+0x10], eax
	jz _ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE9_M_insertEPSt18_Rb_tree_node_baseSC_RKS4__30
	mov edx, [ebp+0x10]
	add edx, 0x10
	mov edi, [edi]
	mov [ebp-0x38], edi
	mov ecx, [edi-0xc]
	mov [ebp-0x30], ecx
	mov [ebp-0x1c], ecx
	mov edi, [ebp+0x10]
	mov eax, [edi+0x10]
	mov eax, [eax-0xc]
	mov [ebp-0x2c], eax
	mov [ebp-0x20], eax
	cmp ecx, eax
	jbe _ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE9_M_insertEPSt18_Rb_tree_node_baseSC_RKS4__40
	lea eax, [ebp-0x20]
_ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE9_M_insertEPSt18_Rb_tree_node_baseSC_RKS4__70:
	mov edx, [edx]
	mov ecx, [eax]
	cld
	cmp ecx, ecx
	mov esi, [ebp-0x38]
	mov edi, edx
	repe cmpsb
	mov eax, 0x0
	jz _ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE9_M_insertEPSt18_Rb_tree_node_baseSC_RKS4__50
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
_ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE9_M_insertEPSt18_Rb_tree_node_baseSC_RKS4__50:
	mov [ebp-0x3c], eax
	mov ecx, [ebp-0x2c]
	sub [ebp-0x30], ecx
	test eax, eax
	cmovz eax, [ebp-0x30]
	test eax, eax
	js _ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE9_M_insertEPSt18_Rb_tree_node_baseSC_RKS4__30
	xor eax, eax
	jmp _ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE9_M_insertEPSt18_Rb_tree_node_baseSC_RKS4__60
_ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE9_M_insertEPSt18_Rb_tree_node_baseSC_RKS4__40:
	lea eax, [ebp-0x1c]
	jmp _ZNSt8_Rb_treeISsSt4pairIKSsPKcESt10_Select1stIS4_ESt4lessISsESaIS4_EE9_M_insertEPSt18_Rb_tree_node_baseSC_RKS4__70
	mov [esp], eax
	call __cxa_begin_catch
	mov [esp], ebx
	call _ZdlPv
	call __cxa_rethrow
	mov esi, eax
	call __cxa_end_catch
	mov [esp], esi
	call _Unwind_Resume
	nop


;std::basic_string<char, std::char_traits<char>, std::allocator<char> > std::operator+<char, std::char_traits<char>, std::allocator<char> >(std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, char const*)
_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_PKS3_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0x10]
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _ZNSsC1ERKSs
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, esi
	repne scasb
	not ecx
	sub ecx, 0x1
	mov [esp+0x8], ecx
	mov [esp+0x4], esi
	mov [esp], ebx
	call _ZNSs6appendEPKcm
	mov eax, ebx
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret 0x4
	mov edi, eax
	mov eax, [ebx]
	lea ebx, [eax-0xc]
	cmp ebx, [0xd5cc01c]
	jnz _ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_PKS3__10
_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_PKS3__20:
	mov [esp], edi
	call _Unwind_Resume
_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_PKS3__10:
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg _ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_PKS3__20
	lea eax, [ebp-0x19]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp _ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_PKS3__20
	mov edi, eax
	jmp _ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_PKS3__20


;Initialized global or static variables of D3DXShader:
SECTION .data
EndToken: dd _cstring_end, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0


;Initialized constant data of D3DXShader:
SECTION .rdata
;VTypeInfoTable for CD3DXBuffer:
_ZTI11CD3DXBuffer: dd 0x8, _cstring_11cd3dxbuffer, _ZTI11ID3DXBuffer, 0x0, 0x0, 0x0, 0x0, 0x0
;VTypeInfoTable for ID3DXBuffer:
_ZTI11ID3DXBuffer: dd 0x8, _cstring_11id3dxbuffer, _ZTI8IUnknown, 0x0, 0x0, 0x0, 0x0, 0x0
;VTable for CD3DXBuffer:
_ZTV11CD3DXBuffer: dd 0x0, _ZTI11CD3DXBuffer, _ZN11CD3DXBuffer14QueryInterfaceERK5_GUIDPPv, _ZN11CD3DXBuffer6AddRefEv, _ZN11CD3DXBuffer7ReleaseEv, _ZN11CD3DXBuffer16GetBufferPointerEv, _ZN11CD3DXBuffer13GetBufferSizeEv, _ZN11CD3DXBufferD1Ev, _ZN11CD3DXBufferD0Ev, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0


;Zero initialized global or static variables of D3DXShader:
SECTION .bss
sPrograms: resb 0x80


;All cstrings:
SECTION .rdata
_cstring_shadowmap_build:		db "shadowmap_build",0
_cstring_:		db "::",0
_cstring_vs:		db ".vs",0
_cstring_s0:		db "s0",0
_cstring_s1:		db "s1",0
_cstring_s2:		db "s2",0
_cstring_option_arb_preci:		db "OPTION ARB_precision_hint_fastest;",0
_cstring_lrp_:		db "LRP ",0
_cstring_add_:		db "ADD ",0
_cstring__:		db ", ",0
_cstring_1:		db ";",0ah,0
_cstring_mad_:		db "MAD ",0
_cstring__3d:		db ", 3D;",0
_cstring_mov_:		db "MOV ",0
_cstring__0:		db ", 0;",0ah,0
_cstring_shadersshadersnv:		db "Shaders/ShadersNVidia.ps",0
_cstring_shadersshadersat:		db "Shaders/ShadersATI.ps",0
_cstring_shadersshadersnv1:		db "Shaders/ShadersNVidia.vs",0
_cstring_shadersshadersat1:		db "Shaders/ShadersATI.vs",0
_cstring_rb:		db "rb",0
_cstring__1:		db " ,",09h,0
_cstring_vector_m_insert_:		db "vector::_M_insert_aux",0
_cstring_end:		db "END",0
_cstring_11cd3dxbuffer:		db "11CD3DXBuffer",0
_cstring_11id3dxbuffer:		db "11ID3DXBuffer",0



;All constant floats and doubles:
SECTION .rdata

