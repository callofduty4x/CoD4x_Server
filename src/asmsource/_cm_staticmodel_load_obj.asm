;Imports of cm_staticmodel_load_obj:
	extern Com_EntityString
	extern cm
	extern Com_Parse
	extern Q_strncpyz
	extern Q_stricmp
	extern CM_Hunk_Alloc
	extern CM_XModelPrecache
	extern AnglesToAxis
	extern MatrixTranspose
	extern XModelGetStaticBounds
	extern Com_IsLegacyXModelName
	extern strcpy
	extern sscanf
	extern atof
	extern Com_Error

;Exports of cm_staticmodel_load_obj:
	global CM_LoadStaticModels


SECTION .text


;CM_LoadStaticModels()
CM_LoadStaticModels:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x14c
	mov dword [esp], 0x0
	call Com_EntityString
	mov [ebp-0x1c], eax
	mov eax, cm
	mov dword [eax+0x10], 0x0
	mov dword [eax+0x14], 0x0
	mov dword [ebp-0x120], 0x0
	lea edi, [ebp-0x1c]
CM_LoadStaticModels_20:
	mov [esp], edi
	call Com_Parse
	mov ebx, [ebp-0x1c]
	test ebx, ebx
	jz CM_LoadStaticModels_10
	cmp byte [eax], 0x7b
	jnz CM_LoadStaticModels_10
	lea ebx, [ebp-0x118]
	lea esi, [ebp-0x98]
CM_LoadStaticModels_30:
	mov [esp], edi
	call Com_Parse
	mov ecx, [ebp-0x1c]
	test ecx, ecx
	jz CM_LoadStaticModels_20
	cmp byte [eax], 0x7d
	jz CM_LoadStaticModels_20
	mov dword [esp+0x8], 0x40
	mov [esp+0x4], eax
	mov [esp], ebx
	call Q_strncpyz
	mov [esp], edi
	call Com_Parse
	mov edx, [ebp-0x1c]
	test edx, edx
	jz CM_LoadStaticModels_20
	mov dword [esp+0x8], 0x40
	mov [esp+0x4], eax
	mov [esp], esi
	call Q_strncpyz
	mov dword [esp+0x4], _cstring_classname
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz CM_LoadStaticModels_30
	mov dword [esp+0x4], _cstring_misc_model
	mov [esp], esi
	call Q_stricmp
	test eax, eax
	jnz CM_LoadStaticModels_30
	add dword [ebp-0x120], 0x1
	jmp CM_LoadStaticModels_30
CM_LoadStaticModels_10:
	mov esi, [ebp-0x120]
	test esi, esi
	jnz CM_LoadStaticModels_40
CM_LoadStaticModels_50:
	add esp, 0x14c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CM_LoadStaticModels_40:
	mov dword [esp+0x8], 0x1b
	mov dword [esp+0x4], _cstring_cm_createstaticm
	mov edx, [ebp-0x120]
	lea eax, [edx+edx*4]
	shl eax, 0x4
	mov [esp], eax
	call CM_Hunk_Alloc
	mov ebx, cm
	mov [ebx+0x14], eax
	mov dword [esp], 0x0
	call Com_EntityString
	mov [ebp-0x1c], eax
	mov [ebp-0x134], ebx
CM_LoadStaticModels_100:
	mov [esp], edi
	call Com_Parse
	mov ebx, [ebp-0x1c]
	test ebx, ebx
	jz CM_LoadStaticModels_50
	cmp byte [eax], 0x7b
	jnz CM_LoadStaticModels_50
	mov byte [ebp-0xd8], 0x0
	xor eax, eax
	mov [ebp-0x20], eax
	mov [ebp-0x24], eax
	mov [ebp-0x28], eax
	mov [ebp-0x2c], eax
	mov [ebp-0x30], eax
	mov [ebp-0x34], eax
	movss xmm0, dword [_float_1_00000000]
	movss [ebp-0x124], xmm0
	xor esi, esi
CM_LoadStaticModels_80:
	mov [esp], edi
	call Com_Parse
	mov ecx, [ebp-0x1c]
	test ecx, ecx
	jz CM_LoadStaticModels_60
CM_LoadStaticModels_90:
	cmp byte [eax], 0x7d
	jz CM_LoadStaticModels_60
	mov dword [esp+0x8], 0x40
	mov [esp+0x4], eax
	lea eax, [ebp-0x118]
	mov [esp], eax
	call Q_strncpyz
	mov [esp], edi
	call Com_Parse
	mov edx, [ebp-0x1c]
	test edx, edx
	jz CM_LoadStaticModels_60
	mov dword [esp+0x8], 0x40
	mov [esp+0x4], eax
	lea edx, [ebp-0x98]
	mov [esp], edx
	call Q_strncpyz
	mov dword [esp+0x4], _cstring_classname
	lea eax, [ebp-0x118]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jnz CM_LoadStaticModels_70
	mov dword [esp+0x4], _cstring_misc_model
	lea edx, [ebp-0x98]
	mov [esp], edx
	call Q_stricmp
	test eax, eax
	jnz CM_LoadStaticModels_80
	mov esi, 0x1
	mov [esp], edi
	call Com_Parse
	mov ecx, [ebp-0x1c]
	test ecx, ecx
	jnz CM_LoadStaticModels_90
CM_LoadStaticModels_60:
	test esi, esi
	jz CM_LoadStaticModels_100
	mov edx, [ebp-0x134]
	mov eax, [edx+0x10]
	lea esi, [eax+eax*4]
	shl esi, 0x4
	add esi, [edx+0x14]
	cmp byte [ebp-0xd8], 0x0
	jz CM_LoadStaticModels_110
CM_LoadStaticModels_200:
	movss xmm0, dword [ebp-0x124]
	ucomiss xmm0, [_float_0_00000000]
	jz CM_LoadStaticModels_120
CM_LoadStaticModels_180:
	lea ebx, [ebp-0xd8]
CM_LoadStaticModels_190:
	mov [esp], ebx
	call CM_XModelPrecache
	test eax, eax
	jz CM_LoadStaticModels_100
	mov [esi+0x4], eax
	lea edx, [esi+0x8]
	mov eax, [ebp-0x28]
	mov [esi+0x8], eax
	mov eax, [ebp-0x24]
	mov [edx+0x4], eax
	mov eax, [ebp-0x20]
	mov [edx+0x8], eax
	lea eax, [ebp-0x58]
	mov [esp+0x4], eax
	lea eax, [ebp-0x34]
	mov [esp], eax
	call AnglesToAxis
	lea ebx, [esi+0x14]
	mov [esp+0x4], ebx
	lea edx, [ebp-0x58]
	mov [esp], edx
	call MatrixTranspose
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, dword [ebp-0x124]
	movaps xmm1, xmm0
	mulss xmm1, [esi+0x14]
	movss [esi+0x14], xmm1
	movaps xmm1, xmm0
	mulss xmm1, [ebx+0x4]
	movss [ebx+0x4], xmm1
	movaps xmm1, xmm0
	mulss xmm1, [ebx+0x8]
	movss [ebx+0x8], xmm1
	lea eax, [esi+0x20]
	movaps xmm1, xmm0
	mulss xmm1, [esi+0x20]
	movss [esi+0x20], xmm1
	movaps xmm1, xmm0
	mulss xmm1, [eax+0x4]
	movss [eax+0x4], xmm1
	movaps xmm1, xmm0
	mulss xmm1, [eax+0x8]
	movss [eax+0x8], xmm1
	lea eax, [esi+0x2c]
	movaps xmm1, xmm0
	mulss xmm1, [esi+0x2c]
	movss [esi+0x2c], xmm1
	movaps xmm1, xmm0
	mulss xmm1, [eax+0x4]
	movss [eax+0x4], xmm1
	mulss xmm0, [eax+0x8]
	movss [eax+0x8], xmm0
	movss xmm0, dword [ebp-0x124]
	mulss xmm0, [ebp-0x58]
	movss [ebp-0x58], xmm0
	movss xmm0, dword [ebp-0x124]
	mulss xmm0, [ebp-0x54]
	movss [ebp-0x54], xmm0
	movss xmm0, dword [ebp-0x124]
	mulss xmm0, [ebp-0x50]
	movss [ebp-0x50], xmm0
	movss xmm0, dword [ebp-0x124]
	mulss xmm0, [ebp-0x4c]
	movss [ebp-0x4c], xmm0
	movss xmm0, dword [ebp-0x124]
	mulss xmm0, [ebp-0x48]
	movss [ebp-0x48], xmm0
	movss xmm0, dword [ebp-0x124]
	mulss xmm0, [ebp-0x44]
	movss [ebp-0x44], xmm0
	movss xmm0, dword [ebp-0x124]
	mulss xmm0, [ebp-0x40]
	movss [ebp-0x40], xmm0
	movss xmm0, dword [ebp-0x124]
	mulss xmm0, [ebp-0x3c]
	movss [ebp-0x3c], xmm0
	movss xmm0, dword [ebp-0x124]
	mulss xmm0, [ebp-0x38]
	movss [ebp-0x38], xmm0
	lea eax, [esi+0x44]
	mov [ebp-0x11c], eax
	lea ebx, [esi+0x38]
	mov [esp+0xc], eax
	mov [esp+0x8], ebx
	lea edx, [ebp-0x58]
	mov [esp+0x4], edx
	mov eax, [esi+0x4]
	mov [esp], eax
	call XModelGetStaticBounds
	test eax, eax
	jz CM_LoadStaticModels_130
	movss xmm0, dword [esi+0x38]
	addss xmm0, [ebp-0x28]
	movss [esi+0x38], xmm0
	movss xmm0, dword [ebx+0x4]
	addss xmm0, [ebp-0x24]
	movss [ebx+0x4], xmm0
	movss xmm0, dword [ebx+0x8]
	addss xmm0, [ebp-0x20]
	movss [ebx+0x8], xmm0
	movss xmm0, dword [esi+0x44]
	addss xmm0, [ebp-0x28]
	movss [esi+0x44], xmm0
	mov eax, [ebp-0x11c]
	movss xmm0, dword [eax+0x4]
	addss xmm0, [ebp-0x24]
	movss [eax+0x4], xmm0
	movss xmm0, dword [eax+0x8]
	addss xmm0, [ebp-0x20]
	movss [eax+0x8], xmm0
CM_LoadStaticModels_130:
	mov edx, [ebp-0x134]
	add dword [edx+0x10], 0x1
	jmp CM_LoadStaticModels_100
CM_LoadStaticModels_70:
	mov dword [esp+0x4], _cstring_model
	lea eax, [ebp-0x118]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jnz CM_LoadStaticModels_140
	lea edx, [ebp-0x98]
	mov [esp], edx
	call Com_IsLegacyXModelName
	test eax, eax
	jz CM_LoadStaticModels_150
	lea eax, [ebp-0x91]
	mov [esp+0x4], eax
	lea ebx, [ebp-0xd8]
	mov [esp], ebx
	call strcpy
	jmp CM_LoadStaticModels_80
CM_LoadStaticModels_140:
	mov dword [esp+0x4], _cstring_origin
	lea edx, [ebp-0x118]
	mov [esp], edx
	call Q_stricmp
	test eax, eax
	jnz CM_LoadStaticModels_160
	lea eax, [ebp-0x20]
	mov [esp+0x10], eax
	lea eax, [ebp-0x24]
	mov [esp+0xc], eax
	lea eax, [ebp-0x28]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_f_f_f
	lea edx, [ebp-0x98]
	mov [esp], edx
	call sscanf
	jmp CM_LoadStaticModels_80
CM_LoadStaticModels_150:
	lea eax, [ebp-0x98]
	mov [esp+0x4], eax
	lea ebx, [ebp-0xd8]
	mov [esp], ebx
	call strcpy
	jmp CM_LoadStaticModels_80
CM_LoadStaticModels_160:
	mov dword [esp+0x4], _cstring_angles
	lea eax, [ebp-0x118]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jnz CM_LoadStaticModels_170
	lea eax, [ebp-0x2c]
	mov [esp+0x10], eax
	lea eax, [ebp-0x30]
	mov [esp+0xc], eax
	lea edx, [ebp-0x34]
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_f_f_f
	lea eax, [ebp-0x98]
	mov [esp], eax
	call sscanf
	jmp CM_LoadStaticModels_80
CM_LoadStaticModels_170:
	mov dword [esp+0x4], _cstring_modelscale
	lea edx, [ebp-0x118]
	mov [esp], edx
	call Q_stricmp
	test eax, eax
	jnz CM_LoadStaticModels_80
	lea eax, [ebp-0x98]
	mov [esp], eax
	call atof
	fstp qword [ebp-0x130]
	cvtsd2ss xmm0, [ebp-0x130]
	movss [ebp-0x124], xmm0
	jmp CM_LoadStaticModels_80
CM_LoadStaticModels_120:
	jp CM_LoadStaticModels_180
	lea ebx, [ebp-0xd8]
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_static_model_s_h
	mov dword [esp], 0x2
	call Com_Error
	jmp CM_LoadStaticModels_190
CM_LoadStaticModels_110:
	cvtss2sd xmm0, [ebp-0x20]
	movsd [esp+0x18], xmm0
	cvtss2sd xmm0, [ebp-0x24]
	movsd [esp+0x10], xmm0
	cvtss2sd xmm0, [ebp-0x28]
	movsd [esp+0x8], xmm0
	mov dword [esp+0x4], _cstring_missing_model_na
	mov dword [esp], 0x2
	call Com_Error
	jmp CM_LoadStaticModels_200


;Zero initialized global or static variables of cm_staticmodel_load_obj:
SECTION .bss


;Initialized global or static variables of cm_staticmodel_load_obj:
SECTION .data


;Initialized constant data of cm_staticmodel_load_obj:
SECTION .rdata


;All cstrings:
SECTION .rdata
_cstring_classname:		db "classname",0
_cstring_misc_model:		db "misc_model",0
_cstring_cm_createstaticm:		db "CM_CreateStaticModel",0
_cstring_model:		db "model",0
_cstring_origin:		db "origin",0
_cstring_f_f_f:		db "%f %f %f",0
_cstring_angles:		db "angles",0
_cstring_modelscale:		db "modelscale",0
_cstring_static_model_s_h:		db 15h,"Static model [%s] has scale of 0.0",0
_cstring_missing_model_na:		db 15h,"Missing model name at %.0f %.0f %.0f",0



;All constant floats and doubles:
SECTION .rdata
_float_1_00000000:		dd 0x3f800000	; 1
_float_0_00000000:		dd 0x0	; 0

