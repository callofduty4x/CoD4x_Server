;Imports of cg_visionsets:
	extern cgArray
	extern Q_stricmp
	extern Com_sprintf
	extern Com_LoadRawTextFile
	extern Com_BeginParseSession
	extern Com_Parse
	extern Com_ParseOnLine
	extern sscanf
	extern Com_PrintWarning
	extern Com_SkipRestOfLine
	extern Com_EndParseSession
	extern Com_UnloadRawTextFile
	extern memcpy
	extern Q_strncpyz
	extern Com_PrintError
	extern sinf
	extern clientUIActives
	extern BG_GetViewmodelWeaponIndex
	extern BG_GetWeaponDef
	extern Cvar_RegisterFloat
	extern Cvar_RegisterBool
	extern CL_GetConfigString
	extern atoi

;Exports of cg_visionsets:
	global nightVisionPowerOnTime
	global nightVisionFadeInOutTime
	global nightVisionDisableEffects
	global visionDefFields
	global GetVisionSet
	global _ZZ16SetDefaultVisioniE19MYDEFAULTVISIONNAME
	global CG_VisionSetsUpdate
	global CG_VisionSetMyChanges
	global CG_VisionSetApplyToRefdef
	global CG_RegisterVisionSetsDvars
	global CG_LookingThroughNightVision
	global CG_VisionSetConfigString_Naked
	global CG_VisionSetConfigString_Night


SECTION .text


;GetVisionSet(int, char const*, visionSetVars_t*)
GetVisionSet:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xec
	mov [ebp-0xd0], edx
	mov [ebp-0xd4], ecx
	cmp byte [edx], 0x0
	jnz GetVisionSet_10
GetVisionSet_200:
	xor eax, eax
GetVisionSet_180:
	add esp, 0xec
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
GetVisionSet_10:
	xor esi, esi
	mov edi, cgArray
	lea ebx, [edi+0xfd3d8]
GetVisionSet_30:
	mov [esp+0x4], ebx
	mov eax, [ebp-0xd0]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jz GetVisionSet_20
	add esi, 0x1
	add ebx, 0x40
	cmp esi, 0x4
	jnz GetVisionSet_30
	mov dword [ebp-0xcc], 0x0
	mov eax, edi
GetVisionSet_50:
	cmp byte [eax+0xfd3d8], 0x0
	jz GetVisionSet_40
	add dword [ebp-0xcc], 0x1
	add eax, 0x40
	cmp dword [ebp-0xcc], 0x4
	jnz GetVisionSet_50
	mov dword [ebp-0xcc], 0x0
GetVisionSet_40:
	mov edx, [ebp-0xcc]
	lea eax, [edx+edx*4]
	shl eax, 0x4
	mov edx, cgArray
	lea eax, [eax+edx+0xfd298]
	mov [ebp-0xc4], eax
	mov eax, [ebp-0xd0]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_visionsvision
	mov dword [esp+0x4], 0x40
	lea edx, [ebp-0xb0]
	mov [esp], edx
	call Com_sprintf
	lea eax, [ebp-0xb0]
	mov [esp], eax
	call Com_LoadRawTextFile
	mov [ebp-0xbc], eax
	test eax, eax
	jz GetVisionSet_60
GetVisionSet_190:
	mov edx, [ebp-0xd0]
	mov [esp+0xc], edx
	mov dword [esp+0x8], _cstring_visionsvision
	mov dword [esp+0x4], 0x40
	lea eax, [ebp-0x70]
	mov [esp], eax
	call Com_sprintf
	mov edx, [ebp-0xbc]
	mov [ebp-0x20], edx
	mov dword [ebp-0xb0], 0x0
	mov dword [ebp-0xac], 0x0
	mov dword [ebp-0xa8], 0x0
	mov dword [ebp-0xa4], 0x0
	lea eax, [ebp-0x70]
	mov [esp], eax
	call Com_BeginParseSession
	lea edx, [ebp-0x20]
	mov [esp], edx
	call Com_Parse
	mov [ebp-0xc8], eax
	cmp byte [eax], 0x0
	jz GetVisionSet_70
GetVisionSet_140:
	xor edi, edi
	mov ebx, visionDefFields
	mov esi, visionDefFields
	jmp GetVisionSet_80
GetVisionSet_100:
	add edi, 0x1
	add esi, 0xc
	add ebx, 0xc
	cmp edi, 0x10
	jz GetVisionSet_90
GetVisionSet_80:
	cmp byte [edi+ebp-0xb0], 0x0
	jnz GetVisionSet_100
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov eax, [ebp-0xc8]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jnz GetVisionSet_100
	lea edx, [ebp-0x20]
	mov [esp], edx
	call Com_ParseOnLine
	mov ebx, eax
	mov eax, [ebp-0xc4]
	add eax, [esi+0x4]
	mov [ebp-0xc0], eax
	mov eax, [esi+0x8]
	test eax, eax
	jz GetVisionSet_110
	sub eax, 0x1
	jz GetVisionSet_120
	lea eax, [ebp-0x28]
	mov [esp+0x10], eax
	lea eax, [ebp-0x2c]
	mov [esp+0xc], eax
	lea edx, [ebp-0x30]
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_f_f_f
	mov [esp], ebx
	call sscanf
	cmp eax, 0x3
	jz GetVisionSet_130
GetVisionSet_160:
	lea eax, [ebp-0x70]
	mov [esp+0xc], eax
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_warning_malforme
	mov dword [esp], 0x10
	call Com_PrintWarning
GetVisionSet_150:
	lea edx, [ebp-0x20]
	mov [esp], edx
	call Com_SkipRestOfLine
	lea edx, [ebp-0x20]
	mov [esp], edx
	call Com_Parse
	mov [ebp-0xc8], eax
	cmp byte [eax], 0x0
	jnz GetVisionSet_140
GetVisionSet_70:
	call Com_EndParseSession
	mov eax, [ebp-0xbc]
	mov [esp], eax
	call Com_UnloadRawTextFile
	mov dword [esp+0x8], 0x50
	mov edx, [ebp-0xc4]
	mov [esp+0x4], edx
	mov eax, [ebp-0xd4]
	mov [esp], eax
	call memcpy
	mov dword [esp+0x8], 0x40
	mov edx, [ebp-0xd0]
	mov [esp+0x4], edx
	shl dword [ebp-0xcc], 0x6
	mov eax, cgArray
	mov edx, [ebp-0xcc]
	lea eax, [edx+eax+0xfd3d8]
	mov [esp], eax
	call Q_strncpyz
	mov eax, 0x1
	add esp, 0xec
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
GetVisionSet_90:
	lea edx, [ebp-0x70]
	mov [esp+0xc], edx
	mov eax, [ebp-0xc8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_warning_unknown_
	mov dword [esp], 0x10
	call Com_PrintWarning
	jmp GetVisionSet_150
GetVisionSet_110:
	lea eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_i
	mov [esp], ebx
	call sscanf
	sub eax, 0x1
	jnz GetVisionSet_160
	mov eax, [ebp-0x1c]
	test eax, eax
	mov eax, [ebp-0xc0]
	setnz byte [eax]
GetVisionSet_170:
	mov byte [ebp+edi-0xb0], 0x1
	jmp GetVisionSet_150
GetVisionSet_130:
	mov eax, [ebp-0x30]
	mov edx, [ebp-0xc0]
	mov [edx], eax
	mov eax, [ebp-0x2c]
	mov [edx+0x4], eax
	mov eax, [ebp-0x28]
	mov [edx+0x8], eax
	jmp GetVisionSet_170
GetVisionSet_120:
	lea eax, [ebp-0x24]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_f
	mov [esp], ebx
	call sscanf
	sub eax, 0x1
	jnz GetVisionSet_160
	mov eax, [ebp-0x24]
	mov edx, [ebp-0xc0]
	mov [edx], eax
	jmp GetVisionSet_170
GetVisionSet_20:
	lea eax, [esi+esi*4]
	shl eax, 0x4
	lea eax, [eax+edi+0xfd298]
	mov dword [esp+0x8], 0x50
	mov [esp+0x4], eax
	mov edx, [ebp-0xd4]
	mov [esp], edx
	call memcpy
	mov eax, 0x1
	jmp GetVisionSet_180
GetVisionSet_60:
	lea edx, [ebp-0xb0]
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_couldnt_open_s
	mov dword [esp], 0x11
	call Com_PrintError
	mov dword [esp+0xc], _cstring_default
	mov dword [esp+0x8], _cstring_visionsvision
	mov dword [esp+0x4], 0x40
	lea eax, [ebp-0xb0]
	mov [esp], eax
	call Com_sprintf
	lea edx, [ebp-0xb0]
	mov [esp], edx
	call Com_LoadRawTextFile
	mov [ebp-0xbc], eax
	test eax, eax
	jnz GetVisionSet_190
	lea eax, [ebp-0xb0]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_couldnt_open_s_t
	mov dword [esp], 0x11
	call Com_PrintError
	jmp GetVisionSet_200


;CG_VisionSetsUpdate(int)
CG_VisionSetsUpdate:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x7c
	mov esi, cgArray
	cmp byte [esi+0xfd6d0], 0x0
	jz CG_VisionSetsUpdate_10
CG_VisionSetsUpdate_350:
	mov dword [ebp-0x5c], 0x0
CG_VisionSetsUpdate_220:
	mov eax, [ebp-0x5c]
	lea edx, [eax+eax*4]
	shl edx, 0x4
	lea ecx, [edx+esi+0xfd618]
	mov [ebp-0x58], ecx
	lea eax, [eax+eax*2]
	lea eax, [esi+eax*4+0xfd6b0]
	lea ecx, [eax+0x8]
	mov [ebp-0x54], ecx
	lea ecx, [edx+esi+0xfd578]
	mov [ebp-0x64], ecx
	lea edx, [edx+esi+0xfd4d8]
	mov [ebp-0x60], edx
	mov edx, [esi+0x46128]
	mov ecx, [ebp-0x54]
	mov ebx, [ecx+0x8]
	test ebx, ebx
	jz CG_VisionSetsUpdate_20
	cmp ebx, 0x1
	jz CG_VisionSetsUpdate_20
	mov ecx, [eax+0x8]
	mov eax, [ebp-0x54]
	mov esi, [eax+0x4]
	lea eax, [ecx+esi]
	cmp edx, eax
	jg CG_VisionSetsUpdate_30
	sub edx, ecx
	cvtsi2ss xmm2, edx
	cvtsi2ss xmm0, esi
	divss xmm2, xmm0
	movss xmm4, dword [_float_1_00000000]
	movaps xmm0, xmm2
	subss xmm0, xmm4
	pxor xmm1, xmm1
	movaps xmm3, xmm1
	cmpss xmm3, xmm0, 0x6
	movaps xmm0, xmm3
	movaps xmm3, xmm2
	andps xmm3, xmm0
	andnps xmm0, xmm4
	orps xmm0, xmm3
	movss [ebp-0x28], xmm0
	movaps xmm0, xmm1
	subss xmm0, xmm2
	movaps xmm2, xmm1
	cmpss xmm2, xmm0, 0x6
	movss xmm3, dword [ebp-0x28]
	andps xmm3, xmm2
	orps xmm3, xmm1
	movss [ebp-0x28], xmm3
	cvtss2sd xmm0, xmm3
	mulsd xmm0, [_double_3_14159265]
	mulsd xmm0, [_double_0_50000000]
	cvtsd2ss xmm0, xmm0
	movss [ebp-0x1c], xmm0
	mov dword [ebp-0x50], 0x0
	jmp CG_VisionSetsUpdate_40
CG_VisionSetsUpdate_60:
	movzx ecx, byte [edi]
	movzx edx, byte [esi]
	lea eax, [ebx-0x4]
	cmp eax, 0x1
	ja CG_VisionSetsUpdate_50
	movss xmm3, dword [ebp-0x28]
	ucomiss xmm3, [_float_0_50000000]
	jb CG_VisionSetsUpdate_50
	movzx eax, cl
	mov edx, [ebp-0x4c]
	mov [edx], al
CG_VisionSetsUpdate_240:
	add dword [ebp-0x50], 0x1
	cmp dword [ebp-0x50], 0x10
	jz CG_VisionSetsUpdate_20
CG_VisionSetsUpdate_200:
	mov eax, [ebp-0x54]
	mov ebx, [eax+0x8]
CG_VisionSetsUpdate_40:
	mov ecx, [ebp-0x50]
	lea edx, [ecx+ecx*2]
	lea edx, [edx*4+visionDefFields]
	mov eax, [edx+0x4]
	mov ecx, [ebp-0x60]
	lea edi, [eax+ecx]
	mov ecx, [ebp-0x64]
	lea esi, [eax+ecx]
	add eax, [ebp-0x58]
	mov [ebp-0x4c], eax
	mov eax, [edx+0x8]
	test eax, eax
	jz CG_VisionSetsUpdate_60
	sub eax, 0x1
	jz CG_VisionSetsUpdate_70
	movss xmm0, dword [esi]
	movss [ebp-0x38], xmm0
	movss xmm2, dword [edi]
	movss [ebp-0x34], xmm2
	cmp ebx, 0x3
	jz CG_VisionSetsUpdate_80
	cmp ebx, 0x5
	jz CG_VisionSetsUpdate_90
	cmp ebx, 0x2
	jz CG_VisionSetsUpdate_100
	movss xmm1, dword [ebp-0x28]
CG_VisionSetsUpdate_330:
	ucomiss xmm1, [_float_0_50000000]
	jae CG_VisionSetsUpdate_110
	jp CG_VisionSetsUpdate_110
	movss xmm0, dword [ebp-0x38]
	subss xmm0, [ebp-0x34]
	mulss xmm0, xmm1
	addss xmm0, xmm0
	addss xmm0, [ebp-0x34]
CG_VisionSetsUpdate_290:
	mov eax, [ebp-0x4c]
	movss [eax], xmm0
	add eax, 0x4
	mov [ebp-0x40], eax
	movss xmm0, dword [esi+0x4]
	movss [ebp-0x30], xmm0
	movss xmm2, dword [edi+0x4]
	movss [ebp-0x2c], xmm2
	cmp ebx, 0x3
	jz CG_VisionSetsUpdate_120
	cmp ebx, 0x5
	jz CG_VisionSetsUpdate_130
	cmp ebx, 0x2
	jz CG_VisionSetsUpdate_140
	movss xmm1, dword [ebp-0x28]
CG_VisionSetsUpdate_320:
	ucomiss xmm1, [_float_0_50000000]
	jae CG_VisionSetsUpdate_150
	jp CG_VisionSetsUpdate_150
	movss xmm0, dword [ebp-0x30]
	subss xmm0, [ebp-0x2c]
	mulss xmm0, xmm1
	addss xmm0, xmm0
	addss xmm0, [ebp-0x2c]
CG_VisionSetsUpdate_310:
	mov eax, [ebp-0x40]
	movss [eax], xmm0
	mov edx, [ebp-0x4c]
	add edx, 0x8
	mov [ebp-0x3c], edx
	movss xmm0, dword [esi+0x8]
	movss [ebp-0x24], xmm0
	movss xmm2, dword [edi+0x8]
	movss [ebp-0x20], xmm2
	cmp ebx, 0x3
	jz CG_VisionSetsUpdate_160
	cmp ebx, 0x5
	jz CG_VisionSetsUpdate_170
	cmp ebx, 0x2
	jz CG_VisionSetsUpdate_180
	movss xmm1, dword [ebp-0x28]
CG_VisionSetsUpdate_340:
	ucomiss xmm1, [_float_0_50000000]
	jae CG_VisionSetsUpdate_190
	jp CG_VisionSetsUpdate_190
	movss xmm0, dword [ebp-0x24]
	subss xmm0, [ebp-0x20]
	mulss xmm0, xmm1
	addss xmm0, xmm0
	addss xmm0, [ebp-0x20]
CG_VisionSetsUpdate_300:
	mov eax, [ebp-0x3c]
	movss [eax], xmm0
	add dword [ebp-0x50], 0x1
	cmp dword [ebp-0x50], 0x10
	jnz CG_VisionSetsUpdate_200
CG_VisionSetsUpdate_20:
	add dword [ebp-0x5c], 0x1
	cmp dword [ebp-0x5c], 0x2
	jnz CG_VisionSetsUpdate_210
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_VisionSetsUpdate_210:
	mov esi, cgArray
	jmp CG_VisionSetsUpdate_220
CG_VisionSetsUpdate_30:
	lea eax, [ebx-0x2]
	cmp eax, 0x1
	ja CG_VisionSetsUpdate_230
	mov dword [esp+0x8], 0x50
	mov edx, [ebp-0x64]
	mov [esp+0x4], edx
	mov ecx, [ebp-0x58]
	mov [esp], ecx
	call memcpy
CG_VisionSetsUpdate_400:
	mov ecx, [ebp-0x54]
	mov dword [ecx+0x8], 0x1
	jmp CG_VisionSetsUpdate_20
CG_VisionSetsUpdate_50:
	movzx eax, dl
	mov edx, [ebp-0x4c]
	mov [edx], al
	jmp CG_VisionSetsUpdate_240
CG_VisionSetsUpdate_70:
	movss xmm0, dword [esi]
	movss [ebp-0x48], xmm0
	movss xmm2, dword [edi]
	movss [ebp-0x44], xmm2
	cmp ebx, 0x3
	jz CG_VisionSetsUpdate_250
	cmp ebx, 0x5
	jz CG_VisionSetsUpdate_260
	cmp ebx, 0x2
	jz CG_VisionSetsUpdate_270
	movss xmm1, dword [ebp-0x28]
CG_VisionSetsUpdate_410:
	ucomiss xmm1, [_float_0_50000000]
	jae CG_VisionSetsUpdate_280
	jp CG_VisionSetsUpdate_280
	movss xmm0, dword [ebp-0x48]
	subss xmm0, [ebp-0x44]
	mulss xmm0, xmm1
	addss xmm0, xmm0
	addss xmm0, [ebp-0x44]
CG_VisionSetsUpdate_390:
	mov eax, [ebp-0x4c]
	movss [eax], xmm0
	jmp CG_VisionSetsUpdate_240
CG_VisionSetsUpdate_80:
	movss xmm0, dword [ebp-0x1c]
	movss [esp], xmm0
	call sinf
	fstp dword [ebp-0x6c]
	movss xmm1, dword [ebp-0x6c]
CG_VisionSetsUpdate_370:
	movss xmm0, dword [ebp-0x38]
	subss xmm0, [ebp-0x34]
	mulss xmm0, xmm1
	addss xmm0, [ebp-0x34]
	jmp CG_VisionSetsUpdate_290
CG_VisionSetsUpdate_160:
	movss xmm3, dword [ebp-0x1c]
	movss [esp], xmm3
	call sinf
	fstp dword [ebp-0x6c]
	movss xmm1, dword [ebp-0x6c]
CG_VisionSetsUpdate_380:
	movss xmm0, dword [ebp-0x24]
	subss xmm0, [ebp-0x20]
	mulss xmm0, xmm1
	addss xmm0, [ebp-0x20]
	jmp CG_VisionSetsUpdate_300
CG_VisionSetsUpdate_120:
	movss xmm3, dword [ebp-0x1c]
	movss [esp], xmm3
	call sinf
	fstp dword [ebp-0x6c]
	movss xmm1, dword [ebp-0x6c]
CG_VisionSetsUpdate_360:
	movss xmm0, dword [ebp-0x30]
	subss xmm0, [ebp-0x2c]
	mulss xmm0, xmm1
	addss xmm0, [ebp-0x2c]
	jmp CG_VisionSetsUpdate_310
CG_VisionSetsUpdate_150:
	movss xmm0, dword [ebp-0x2c]
	subss xmm0, [ebp-0x30]
	subss xmm1, [_float_0_50000000]
	mulss xmm0, xmm1
	addss xmm0, xmm0
	addss xmm0, [ebp-0x30]
	jmp CG_VisionSetsUpdate_310
CG_VisionSetsUpdate_110:
	movss xmm0, dword [ebp-0x34]
	subss xmm0, [ebp-0x38]
	subss xmm1, [_float_0_50000000]
	mulss xmm0, xmm1
	addss xmm0, xmm0
	addss xmm0, [ebp-0x38]
	jmp CG_VisionSetsUpdate_290
CG_VisionSetsUpdate_190:
	movss xmm0, dword [ebp-0x20]
	subss xmm0, [ebp-0x24]
	subss xmm1, [_float_0_50000000]
	mulss xmm0, xmm1
	addss xmm0, xmm0
	addss xmm0, [ebp-0x24]
	jmp CG_VisionSetsUpdate_300
CG_VisionSetsUpdate_130:
	movss xmm0, dword [ebp-0x1c]
	movss [esp], xmm0
	call sinf
	fstp dword [ebp-0x6c]
	movss xmm1, dword [ebp-0x6c]
	jmp CG_VisionSetsUpdate_320
CG_VisionSetsUpdate_90:
	movss xmm2, dword [ebp-0x1c]
	movss [esp], xmm2
	call sinf
	fstp dword [ebp-0x6c]
	movss xmm1, dword [ebp-0x6c]
	jmp CG_VisionSetsUpdate_330
CG_VisionSetsUpdate_170:
	movss xmm0, dword [ebp-0x1c]
	movss [esp], xmm0
	call sinf
	fstp dword [ebp-0x6c]
	movss xmm1, dword [ebp-0x6c]
	jmp CG_VisionSetsUpdate_340
CG_VisionSetsUpdate_10:
	mov dword [esp+0x8], 0x40
	mov eax, [_ZZ16SetDefaultVisioniE19MYDEFAULTVISIONNAME]
	mov [esp+0x4], eax
	lea ebx, [esi+0xfd6d0]
	mov [esp], ebx
	call Q_strncpyz
	lea ecx, [esi+0xfd618]
	mov edx, ebx
	mov eax, [ebp+0x8]
	call GetVisionSet
	test al, al
	jz CG_VisionSetsUpdate_350
	mov dword [esi+0xfd6c0], 0x1
	jmp CG_VisionSetsUpdate_350
CG_VisionSetsUpdate_140:
	movss xmm1, dword [ebp-0x28]
	jmp CG_VisionSetsUpdate_360
CG_VisionSetsUpdate_100:
	movss xmm1, dword [ebp-0x28]
	jmp CG_VisionSetsUpdate_370
CG_VisionSetsUpdate_180:
	movss xmm1, dword [ebp-0x28]
	jmp CG_VisionSetsUpdate_380
CG_VisionSetsUpdate_250:
	movss xmm3, dword [ebp-0x1c]
	movss [esp], xmm3
	call sinf
	fstp dword [ebp-0x6c]
	movss xmm1, dword [ebp-0x6c]
CG_VisionSetsUpdate_420:
	movss xmm0, dword [ebp-0x48]
	subss xmm0, [ebp-0x44]
	mulss xmm0, xmm1
	addss xmm0, [ebp-0x44]
	jmp CG_VisionSetsUpdate_390
CG_VisionSetsUpdate_280:
	movss xmm0, dword [ebp-0x44]
	subss xmm0, [ebp-0x48]
	subss xmm1, [_float_0_50000000]
	mulss xmm0, xmm1
	addss xmm0, xmm0
	addss xmm0, [ebp-0x48]
	jmp CG_VisionSetsUpdate_390
CG_VisionSetsUpdate_230:
	mov dword [esp+0x8], 0x50
	mov eax, [ebp-0x60]
	mov [esp+0x4], eax
	mov edx, [ebp-0x58]
	mov [esp], edx
	call memcpy
	jmp CG_VisionSetsUpdate_400
CG_VisionSetsUpdate_260:
	movss xmm0, dword [ebp-0x1c]
	movss [esp], xmm0
	call sinf
	fstp dword [ebp-0x6c]
	movss xmm1, dword [ebp-0x6c]
	jmp CG_VisionSetsUpdate_410
CG_VisionSetsUpdate_270:
	movss xmm1, dword [ebp-0x28]
	jmp CG_VisionSetsUpdate_420
	nop
	add [eax], al


;CG_VisionSetMyChanges()
CG_VisionSetMyChanges:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x4
	mov eax, clientUIActives
	cmp byte [eax+0x2], 0x0
	jz CG_VisionSetMyChanges_10
	mov ebx, cgArray
	mov eax, ebx
	lea edx, [ebx+0x100]
CG_VisionSetMyChanges_20:
	mov byte [eax+0xfd3d8], 0x0
	add eax, 0x40
	cmp edx, eax
	jnz CG_VisionSetMyChanges_20
	cmp byte [ebx+0xfd6d0], 0x0
	jnz CG_VisionSetMyChanges_30
CG_VisionSetMyChanges_60:
	cmp byte [ebx+0xfd710], 0x0
	jnz CG_VisionSetMyChanges_40
CG_VisionSetMyChanges_10:
	add esp, 0x4
	pop ebx
	pop ebp
	ret
CG_VisionSetMyChanges_40:
	lea ecx, [ebx+0xfd668]
	lea edx, [ebx+0xfd710]
	xor eax, eax
	call GetVisionSet
	test al, al
	jz CG_VisionSetMyChanges_10
	mov dword [ebx+0xfd6cc], 0x1
	jmp CG_VisionSetMyChanges_10
CG_VisionSetMyChanges_30:
	lea ecx, [ebx+0xfd618]
	lea edx, [ebx+0xfd6d0]
	xor eax, eax
	call GetVisionSet
	test al, al
	jz CG_VisionSetMyChanges_50
	mov dword [ebx+0xfd6c0], 0x1
	jmp CG_VisionSetMyChanges_60
CG_VisionSetMyChanges_50:
	mov ebx, cgArray
	jmp CG_VisionSetMyChanges_60


;CG_VisionSetApplyToRefdef(int)
CG_VisionSetApplyToRefdef:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov eax, clientUIActives
	cmp dword [eax+0xc], 0x8
	jle CG_VisionSetApplyToRefdef_10
	mov eax, [nightVisionDisableEffects]
	cmp byte [eax+0xc], 0x0
	jz CG_VisionSetApplyToRefdef_20
CG_VisionSetApplyToRefdef_10:
	xor eax, eax
CG_VisionSetApplyToRefdef_100:
	mov ecx, eax
	and ecx, 0x1
	mov esi, cgArray
	lea eax, [ecx+ecx]
	add eax, ecx
	mov ebx, [esi+eax*4+0xfd6c0]
	test ebx, ebx
	jnz CG_VisionSetApplyToRefdef_30
	mov byte [esi+0x49348], 0x0
	mov byte [esi+0x49374], 0x0
CG_VisionSetApplyToRefdef_40:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
CG_VisionSetApplyToRefdef_30:
	lea edx, [ecx*4]
	add edx, ecx
	shl edx, 0x4
	lea edx, [edx+esi+0xfd610]
	lea ecx, [edx+0x8]
	movzx eax, byte [ecx+0x24]
	mov [esi+0x49348], al
	mov eax, [ecx+0x28]
	mov [esi+0x4934c], eax
	mov eax, [ecx+0x2c]
	mov [esi+0x49350], eax
	mov eax, [ecx+0x30]
	mov [esi+0x49354], eax
	movzx eax, byte [ecx+0x34]
	mov [esi+0x49358], al
	lea ebx, [edx+0x4c]
	mov eax, [edx+0x4c]
	mov [esi+0x4935c], eax
	mov eax, [ebx+0x4]
	mov [esi+0x49360], eax
	mov eax, [ebx+0x8]
	mov [esi+0x49364], eax
	lea ebx, [edx+0x40]
	mov eax, [edx+0x40]
	mov [esi+0x49368], eax
	mov eax, [ebx+0x4]
	mov [esi+0x4936c], eax
	mov eax, [ebx+0x8]
	mov [esi+0x49370], eax
	movzx eax, byte [edx+0x8]
	mov [esi+0x49374], al
	mov eax, [ecx+0x4]
	mov [esi+0x49378], eax
	mov eax, [ecx+0x8]
	mov [esi+0x4937c], eax
	mov eax, [ecx+0xc]
	mov [esi+0x49380], eax
	mov eax, [ecx+0x14]
	mov [esi+0x49384], eax
	lea eax, [esi+0x4613c]
	mov [esp], eax
	call BG_GetViewmodelWeaponIndex
	mov ebx, eax
	mov [esp], eax
	call BG_GetWeaponDef
	test ebx, ebx
	jz CG_VisionSetApplyToRefdef_40
	mov edx, [esi+0x46228]
	cmp edx, 0x19
	jz CG_VisionSetApplyToRefdef_50
	cmp edx, 0x1a
	jnz CG_VisionSetApplyToRefdef_40
	mov edx, [eax+0x3e0]
	sub edx, [esi+0x46178]
	cmp edx, [eax+0x3e4]
	jl CG_VisionSetApplyToRefdef_40
	mov eax, [eax+0x3e8]
	cmp edx, eax
	jl CG_VisionSetApplyToRefdef_60
	sub edx, eax
	cvtsi2ss xmm1, edx
CG_VisionSetApplyToRefdef_130:
	movss xmm0, dword [_float_1000_00000000]
	mov eax, [nightVisionFadeInOutTime]
CG_VisionSetApplyToRefdef_120:
	mulss xmm0, [eax+0xc]
	divss xmm1, xmm0
	movss xmm4, dword [_float_1_00000000]
	movaps xmm0, xmm1
	subss xmm0, xmm4
	pxor xmm5, xmm5
	movaps xmm2, xmm5
	cmpss xmm2, xmm0, 0x6
	movaps xmm0, xmm2
	movaps xmm2, xmm1
	andps xmm2, xmm0
	movaps xmm3, xmm0
	andnps xmm3, xmm4
	orps xmm3, xmm2
	movaps xmm0, xmm5
	subss xmm0, xmm1
	ucomiss xmm0, xmm5
	jb CG_VisionSetApplyToRefdef_70
	movaps xmm3, xmm5
	movaps xmm2, xmm4
CG_VisionSetApplyToRefdef_140:
	mov eax, cgArray
	movaps xmm0, xmm3
	mulss xmm0, [eax+0x49378]
	addss xmm0, xmm2
	movss [eax+0x49378], xmm0
	movaps xmm1, xmm2
	mulss xmm1, xmm5
	movaps xmm0, xmm3
	mulss xmm0, [eax+0x4937c]
	addss xmm0, xmm1
	movss [eax+0x4937c], xmm0
	movaps xmm0, xmm3
	mulss xmm0, [eax+0x4934c]
	subss xmm0, xmm2
	movss [eax+0x4934c], xmm0
	movaps xmm0, xmm3
	mulss xmm0, [eax+0x49350]
	addss xmm0, xmm1
	movss [eax+0x49350], xmm0
	movaps xmm0, xmm3
	mulss xmm0, [eax+0x49354]
	addss xmm0, xmm1
	movss [eax+0x49354], xmm0
	movaps xmm0, xmm3
	mulss xmm0, [eax+0x4935c]
	addss xmm0, xmm1
	movss [eax+0x4935c], xmm0
	movaps xmm0, xmm3
	mulss xmm0, [eax+0x49360]
	addss xmm0, xmm1
	movss [eax+0x49360], xmm0
	movaps xmm0, xmm3
	mulss xmm0, [eax+0x49364]
	addss xmm0, xmm1
	movss [eax+0x49364], xmm0
	movaps xmm0, xmm3
	mulss xmm0, [eax+0x49368]
	addss xmm0, xmm1
	movss [eax+0x49368], xmm0
	movaps xmm0, xmm3
	mulss xmm0, [eax+0x4936c]
	addss xmm0, xmm1
	movss [eax+0x4936c], xmm0
	mulss xmm3, [eax+0x49370]
	addss xmm3, xmm1
	movss [eax+0x49370], xmm3
	jmp CG_VisionSetApplyToRefdef_40
CG_VisionSetApplyToRefdef_20:
	mov ebx, cgArray
	lea eax, [ebx+0x4613c]
	mov [esp], eax
	call BG_GetViewmodelWeaponIndex
	mov [esp], eax
	call BG_GetWeaponDef
	mov edx, eax
	mov eax, [ebx+0x46228]
	cmp eax, 0x19
	jz CG_VisionSetApplyToRefdef_80
	cmp eax, 0x1a
	jz CG_VisionSetApplyToRefdef_90
	test byte [ebx+0x4614c], 0x40
	jz CG_VisionSetApplyToRefdef_10
	mov eax, 0x1
	jmp CG_VisionSetApplyToRefdef_100
CG_VisionSetApplyToRefdef_50:
	mov edx, [eax+0x3d4]
	sub edx, [esi+0x46178]
	mov ecx, [eax+0x3d8]
	cmp edx, ecx
	jle CG_VisionSetApplyToRefdef_110
	mov eax, [eax+0x3dc]
	cmp edx, eax
	jl CG_VisionSetApplyToRefdef_60
	sub edx, eax
	cvtsi2ss xmm1, edx
	movss xmm0, dword [_float_1000_00000000]
	mov eax, [nightVisionPowerOnTime]
	jmp CG_VisionSetApplyToRefdef_120
CG_VisionSetApplyToRefdef_110:
	sub ecx, edx
	cvtsi2ss xmm1, ecx
	jmp CG_VisionSetApplyToRefdef_130
CG_VisionSetApplyToRefdef_80:
	mov eax, [edx+0x3d4]
	sub eax, [ebx+0x46178]
	cmp eax, [edx+0x3dc]
	jl CG_VisionSetApplyToRefdef_10
	mov eax, 0x1
	jmp CG_VisionSetApplyToRefdef_100
CG_VisionSetApplyToRefdef_60:
	pxor xmm3, xmm3
	movaps xmm5, xmm3
	movss xmm2, dword [_float_1_00000000]
	jmp CG_VisionSetApplyToRefdef_140
CG_VisionSetApplyToRefdef_90:
	mov eax, [edx+0x3e0]
	sub eax, [ebx+0x46178]
	cmp eax, [edx+0x3e4]
	jg CG_VisionSetApplyToRefdef_10
	mov eax, 0x1
	jmp CG_VisionSetApplyToRefdef_100
CG_VisionSetApplyToRefdef_70:
	ucomiss xmm3, xmm4
	jp CG_VisionSetApplyToRefdef_150
	jz CG_VisionSetApplyToRefdef_40
CG_VisionSetApplyToRefdef_150:
	movaps xmm2, xmm4
	subss xmm2, xmm3
	jmp CG_VisionSetApplyToRefdef_140


;CG_RegisterVisionSetsDvars()
CG_RegisterVisionSetsDvars:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x20
	mov dword [esp+0x14], _cstring_how_long_the_fad
	mov dword [esp+0x10], 0x1000
	mov esi, 0x461c4000
	mov [esp+0xc], esi
	xor ebx, ebx
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x3dcccccd
	mov dword [esp], _cstring_nightvisionfadei
	call Cvar_RegisterFloat
	mov [nightVisionFadeInOutTime], eax
	mov dword [esp+0x14], _cstring_how_long_the_bla
	mov dword [esp+0x10], 0x1000
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x3e99999a
	mov dword [esp], _cstring_nightvisionpower
	call Cvar_RegisterFloat
	mov [nightVisionPowerOnTime], eax
	mov dword [esp+0xc], _cstring_null
	mov dword [esp+0x8], 0x1000
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_nightvisiondisab
	call Cvar_RegisterBool
	mov [nightVisionDisableEffects], eax
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;CG_LookingThroughNightVision(int)
CG_LookingThroughNightVision:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, clientUIActives
	cmp dword [eax+0xc], 0x8
	jle CG_LookingThroughNightVision_10
	mov eax, [nightVisionDisableEffects]
	cmp byte [eax+0xc], 0x0
	jz CG_LookingThroughNightVision_20
CG_LookingThroughNightVision_10:
	xor eax, eax
	add esp, 0x14
	pop ebx
	pop ebp
	ret
CG_LookingThroughNightVision_20:
	mov ebx, cgArray
	lea eax, [ebx+0x4613c]
	mov [esp], eax
	call BG_GetViewmodelWeaponIndex
	mov [esp], eax
	call BG_GetWeaponDef
	mov edx, eax
	mov eax, [ebx+0x46228]
	cmp eax, 0x19
	jz CG_LookingThroughNightVision_30
	cmp eax, 0x1a
	jz CG_LookingThroughNightVision_40
	test byte [ebx+0x4614c], 0x40
	jz CG_LookingThroughNightVision_10
	mov eax, 0x1
CG_LookingThroughNightVision_50:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
CG_LookingThroughNightVision_40:
	mov eax, [edx+0x3e0]
	sub eax, [ebx+0x46178]
	cmp eax, [edx+0x3e4]
	jg CG_LookingThroughNightVision_10
	mov eax, 0x1
	jmp CG_LookingThroughNightVision_50
CG_LookingThroughNightVision_30:
	mov eax, [edx+0x3d4]
	sub eax, [ebx+0x46178]
	cmp eax, [edx+0x3dc]
	jl CG_LookingThroughNightVision_10
	mov eax, 0x1
	jmp CG_LookingThroughNightVision_50
	nop
	add [eax], al


;CG_VisionSetConfigString_Naked(int)
CG_VisionSetConfigString_Naked:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov dword [esp+0x4], 0x338
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CL_GetConfigString
	mov [ebp-0x1c], eax
	lea ebx, [ebp-0x1c]
	mov [esp], ebx
	call Com_Parse
	mov dword [esp+0x8], 0x40
	mov [esp+0x4], eax
	mov edi, cgArray
	lea esi, [edi+0xfd6d0]
	mov [esp], esi
	call Q_strncpyz
	mov [esp], ebx
	call Com_Parse
	mov [esp], eax
	call atoi
	mov ebx, eax
	test eax, eax
	jle CG_VisionSetConfigString_Naked_10
	mov eax, [edi+0xfd6c0]
	test eax, eax
	jnz CG_VisionSetConfigString_Naked_20
CG_VisionSetConfigString_Naked_10:
	lea ecx, [edi+0xfd618]
	mov edx, esi
	mov eax, [ebp+0x8]
	call GetVisionSet
	test al, al
	jz CG_VisionSetConfigString_Naked_30
	mov dword [edi+0xfd6c0], 0x1
CG_VisionSetConfigString_Naked_30:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_VisionSetConfigString_Naked_20:
	lea ecx, [edi+0xfd578]
	mov edx, esi
	mov eax, [ebp+0x8]
	call GetVisionSet
	test al, al
	jz CG_VisionSetConfigString_Naked_30
	lea edx, [edi+0xfd4d8]
	lea eax, [edi+0xfd618]
	mov dword [esp+0x8], 0x50
	mov [esp+0x4], eax
	mov [esp], edx
	call memcpy
	mov dword [edi+0xfd6c0], 0x3
	mov [edi+0xfd6bc], ebx
	mov eax, [edi+0x46128]
	mov [edi+0xfd6b8], eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;CG_VisionSetConfigString_Night(int)
CG_VisionSetConfigString_Night:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov dword [esp+0x4], 0x339
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CL_GetConfigString
	mov [ebp-0x1c], eax
	lea ebx, [ebp-0x1c]
	mov [esp], ebx
	call Com_Parse
	mov dword [esp+0x8], 0x40
	mov [esp+0x4], eax
	mov edi, cgArray
	lea esi, [edi+0xfd710]
	mov [esp], esi
	call Q_strncpyz
	mov [esp], ebx
	call Com_Parse
	mov [esp], eax
	call atoi
	mov ebx, eax
	test eax, eax
	jle CG_VisionSetConfigString_Night_10
	mov eax, [edi+0xfd6cc]
	test eax, eax
	jnz CG_VisionSetConfigString_Night_20
CG_VisionSetConfigString_Night_10:
	lea ecx, [edi+0xfd668]
	mov edx, esi
	mov eax, [ebp+0x8]
	call GetVisionSet
	test al, al
	jz CG_VisionSetConfigString_Night_30
	mov dword [edi+0xfd6cc], 0x1
CG_VisionSetConfigString_Night_30:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_VisionSetConfigString_Night_20:
	lea ecx, [edi+0xfd5c8]
	mov edx, esi
	mov eax, [ebp+0x8]
	call GetVisionSet
	test al, al
	jz CG_VisionSetConfigString_Night_30
	lea edx, [edi+0xfd528]
	lea eax, [edi+0xfd668]
	mov dword [esp+0x8], 0x50
	mov [esp+0x4], eax
	mov [esp], edx
	call memcpy
	mov dword [edi+0xfd6cc], 0x3
	mov [edi+0xfd6c8], ebx
	mov eax, [edi+0x46128]
	mov [edi+0xfd6c4], eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Initialized global or static variables of cg_visionsets:
SECTION .data
visionDefFields: dd _cstring_r_glow, 0x0, 0x0, _cstring_r_glowbloomcutof, 0x4, 0x1, _cstring_r_glowbloomdesat, 0x8, 0x1, _cstring_r_glowbloominten, 0xc, 0x1, _cstring_r_glowbloominten1, 0x10, 0x1, _cstring_r_glowradius0, 0x14, 0x1, _cstring_r_glowradius1, 0x18, 0x1, _cstring_r_glowskybleedin, 0x1c, 0x1, _cstring_r_glowskybleedin1, 0x20, 0x1, _cstring_r_filmenable, 0x24, 0x0, _cstring_r_filmbrightness, 0x28, 0x1, _cstring_r_filmcontrast, 0x2c, 0x1, _cstring_r_filmdesaturati, 0x30, 0x1, _cstring_r_filminvert, 0x34, 0x0, _cstring_r_filmlighttint, 0x38, 0x2, _cstring_r_filmdarktint, 0x44, 0x2
_ZZ16SetDefaultVisioniE19MYDEFAULTVISIONNAME: dd _cstring_default, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0


;Initialized constant data of cg_visionsets:
SECTION .rdata


;Zero initialized global or static variables of cg_visionsets:
SECTION .bss
nightVisionPowerOnTime: resb 0x4
nightVisionFadeInOutTime: resb 0x4
nightVisionDisableEffects: resb 0x78


;All cstrings:
SECTION .rdata
_cstring_visionsvision:		db "vision/%s.vision",0
_cstring_f_f_f:		db "%f %f %f",0
_cstring_warning_malforme:		db "WARNING: malformed dvar ",27h,"%s",27h," in file ",27h,"%s",27h,0ah,0
_cstring_warning_unknown_:		db "WARNING: unknown dvar ",27h,"%s",27h," in file ",27h,"%s",27h,0ah,0
_cstring_i:		db "%i",0
_cstring_f:		db "%f",0
_cstring_couldnt_open_s:		db "couldn",27h,"t open ",27h,"%s",27h,".",0ah,0
_cstring_default:		db "default",0
_cstring_couldnt_open_s_t:		db "couldn",27h,"t open ",27h,"%s",27h,". This is a default file that you should have.",0ah,0
_cstring_how_long_the_fad:		db "How long the fade to/from black lasts when putting on or removing night vision goggles.",0
_cstring_nightvisionfadei:		db "nightVisionFadeInOutTime",0
_cstring_how_long_the_bla:		db "How long the black-to-nightvision fade lasts when turning on the goggles.",0
_cstring_nightvisionpower:		db "nightVisionPowerOnTime",0
_cstring_null:		db 0
_cstring_nightvisiondisab:		db "nightVisionDisableEffects",0
_cstring_r_glow:		db "r_glow",0
_cstring_r_glowbloomcutof:		db "r_glowBloomCutoff",0
_cstring_r_glowbloomdesat:		db "r_glowBloomDesaturation",0
_cstring_r_glowbloominten:		db "r_glowBloomIntensity0",0
_cstring_r_glowbloominten1:		db "r_glowBloomIntensity1",0
_cstring_r_glowradius0:		db "r_glowRadius0",0
_cstring_r_glowradius1:		db "r_glowRadius1",0
_cstring_r_glowskybleedin:		db "r_glowSkyBleedIntensity0",0
_cstring_r_glowskybleedin1:		db "r_glowSkyBleedIntensity1",0
_cstring_r_filmenable:		db "r_filmEnable",0
_cstring_r_filmbrightness:		db "r_filmBrightness",0
_cstring_r_filmcontrast:		db "r_filmContrast",0
_cstring_r_filmdesaturati:		db "r_filmDesaturation",0
_cstring_r_filminvert:		db "r_filmInvert",0
_cstring_r_filmlighttint:		db "r_filmLightTint",0
_cstring_r_filmdarktint:		db "r_filmDarkTint",0



;All constant floats and doubles:
SECTION .rdata
_float_1_00000000:		dd 0x3f800000	; 1
_double_3_14159265:		dq 0x400921fb54442d18	; 3.14159
_double_0_50000000:		dq 0x3fe0000000000000	; 0.5
_float_0_50000000:		dd 0x3f000000	; 0.5
_float_1000_00000000:		dd 0x447a0000	; 1000

