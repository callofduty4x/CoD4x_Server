;Imports of r_material_override:
	extern strcmp
	extern _Z25Material_FindTechniqueSetPKc26MtlTechSetNotFoundBehavior
	extern strcpy
	extern memcpy
	extern _Z29Material_RegisterTechniqueSetPKc
	extern _Z9Com_Error11errorParm_tPKcz
	extern r_rendererInUse
	extern r_detail
	extern r_specular
	extern r_normal
	extern _ZN10MacDisplay17GetFBOSupportInfoERhS0_
	extern r_zFeather
	extern r_outdoor
	extern gfxMetrics
	extern r_envMapOverride
	extern rgp
	extern _Z18R_SyncRenderThreadv
	extern _Z28Material_ForEachTechniqueSetPFvP20MaterialTechniqueSetE
	extern strncpy

;Exports of r_material_override:
	global mtlOverrideGlob
	global s_materialFeatures
	global _Z26Material_RemapTechniqueSetP20MaterialTechniqueSet
	global _Z42Material_RegisterOverriddenTechniqueSets_rPcjPKcjj
	global _Z30Material_RemapTechniqueSetNamePKcPcjjPK16GfxMtlFeatureMapj
	global _Z30Material_OverrideTechniqueSetsv
	global _Z34Material_OriginalRemapTechniqueSetP20MaterialTechniqueSet
	global _Z35Material_DirtyTechniqueSetOverridesv
	global _Z38Material_WouldTechniqueSetBeOverriddenPK20MaterialTechniqueSet
	global _Z40Material_RegisterOverriddenTechniqueSetsPKc


SECTION .text


;Material_RemapTechniqueSet(MaterialTechniqueSet*)
_Z26Material_RemapTechniqueSetP20MaterialTechniqueSet:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x110
	mov ebx, [ebp+0x8]
	lea esi, [ebp-0x108]
	mov dword [esp+0x8], 0x14
	mov dword [esp+0x4], s_materialFeatures
	mov eax, [mtlOverrideGlob+0x8]
	mov [esp], eax
	mov ecx, [mtlOverrideGlob+0x4]
	mov edx, esi
	mov eax, [ebx]
	call _Z30Material_RemapTechniqueSetNamePKcPcjjPK16GfxMtlFeatureMapj
	mov [esp+0x4], esi
	mov eax, [ebx]
	mov [esp], eax
	call strcmp
	test eax, eax
	jnz _Z26Material_RemapTechniqueSetP20MaterialTechniqueSet_10
_Z26Material_RemapTechniqueSetP20MaterialTechniqueSet_20:
	mov [ebx+0x8], ebx
_Z26Material_RemapTechniqueSetP20MaterialTechniqueSet_30:
	add esp, 0x110
	pop ebx
	pop esi
	pop ebp
	ret
_Z26Material_RemapTechniqueSetP20MaterialTechniqueSet_10:
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call _Z25Material_FindTechniqueSetPKc26MtlTechSetNotFoundBehavior
	mov [ebx+0x8], eax
	test eax, eax
	jz _Z26Material_RemapTechniqueSetP20MaterialTechniqueSet_20
	cmp ebx, eax
	jz _Z26Material_RemapTechniqueSetP20MaterialTechniqueSet_30
	mov eax, 0x22
_Z26Material_RemapTechniqueSetP20MaterialTechniqueSet_40:
	sub eax, 0x1
	jnz _Z26Material_RemapTechniqueSetP20MaterialTechniqueSet_40
	add esp, 0x110
	pop ebx
	pop esi
	pop ebp
	ret
	add [eax], al


;Material_RegisterOverriddenTechniqueSets_r(char*, unsigned int, char const*, unsigned int, unsigned int)
_Z42Material_RegisterOverriddenTechniqueSets_rPcjPKcjj:
_Z42Material_RegisterOverriddenTechniqueSets_rPcjPKcjj_290:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x29c
	mov [ebp-0x278], edx
	mov [ebp-0x27c], ecx
	mov [esp+0x4], eax
	lea eax, [ebp-0x158]
	mov [esp], eax
	call strcpy
_Z42Material_RegisterOverriddenTechniqueSets_rPcjPKcjj_150:
	mov eax, [ebp-0x278]
	test eax, eax
	jz _Z42Material_RegisterOverriddenTechniqueSets_rPcjPKcjj_10
	mov edx, [ebp-0x27c]
	cmp byte [edx-0x1], 0x5f
	jz _Z42Material_RegisterOverriddenTechniqueSets_rPcjPKcjj_20
_Z42Material_RegisterOverriddenTechniqueSets_rPcjPKcjj_10:
	mov byte [ebp-0x25d], 0x0
_Z42Material_RegisterOverriddenTechniqueSets_rPcjPKcjj_310:
	mov edx, [ebp-0x27c]
	movzx eax, byte [edx]
	test al, al
	jnz _Z42Material_RegisterOverriddenTechniqueSets_rPcjPKcjj_30
	xor esi, esi
	lea ecx, [ebp-0x58]
_Z42Material_RegisterOverriddenTechniqueSets_rPcjPKcjj_230:
	mov byte [ecx], 0x0
	test esi, esi
	jz _Z42Material_RegisterOverriddenTechniqueSets_rPcjPKcjj_40
_Z42Material_RegisterOverriddenTechniqueSets_rPcjPKcjj_250:
	xor edi, edi
	mov ebx, s_materialFeatures
	jmp _Z42Material_RegisterOverriddenTechniqueSets_rPcjPKcjj_50
_Z42Material_RegisterOverriddenTechniqueSets_rPcjPKcjj_70:
	add edi, 0x10
	add ebx, 0x10
	cmp edi, 0x140
	jz _Z42Material_RegisterOverriddenTechniqueSets_rPcjPKcjj_60
_Z42Material_RegisterOverriddenTechniqueSets_rPcjPKcjj_50:
	lea edx, [edi+s_materialFeatures]
	mov [ebp-0x25c], edx
	mov eax, [ebx]
	mov [esp+0x4], eax
	lea eax, [ebp-0x58]
	mov [esp], eax
	call strcmp
	test eax, eax
	jnz _Z42Material_RegisterOverriddenTechniqueSets_rPcjPKcjj_70
	mov edi, [ebp-0x25c]
	test edi, edi
	jz _Z42Material_RegisterOverriddenTechniqueSets_rPcjPKcjj_60
	mov eax, [ebp-0x25c]
	mov edx, [eax+0x4]
	test [ebp+0x8], edx
	setnz byte [ebp-0x26d]
	mov eax, edx
	not eax
	and [ebp+0x8], eax
	mov eax, [ebp-0x25c]
	mov ebx, [eax+0x8]
	test ebx, ebx
	jz _Z42Material_RegisterOverriddenTechniqueSets_rPcjPKcjj_80
	movzx edx, byte [ebp-0x25d]
	mov [ebp-0x265], dl
	mov dword [ebp-0x274], 0x0
	jmp _Z42Material_RegisterOverriddenTechniqueSets_rPcjPKcjj_90
_Z42Material_RegisterOverriddenTechniqueSets_rPcjPKcjj_110:
	add dword [ebp-0x274], 0x1
	cmp dword [ebp-0x274], 0x14
	jz _Z42Material_RegisterOverriddenTechniqueSets_rPcjPKcjj_100
_Z42Material_RegisterOverriddenTechniqueSets_rPcjPKcjj_90:
	mov ebx, [ebp-0x274]
	shl ebx, 0x4
	lea esi, [ebx+s_materialFeatures]
	mov eax, [esi+0x4]
	mov edx, [ebp-0x25c]
	cmp eax, [edx+0x4]
	jnz _Z42Material_RegisterOverriddenTechniqueSets_rPcjPKcjj_110
	cmp byte [ebp-0x26d], 0x0
	jnz _Z42Material_RegisterOverriddenTechniqueSets_rPcjPKcjj_120
	and eax, [ebp+0xc]
	cmp [esi+0x8], eax
	jnz _Z42Material_RegisterOverriddenTechniqueSets_rPcjPKcjj_110
	mov esi, [esi]
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, esi
	repne scasb
	not ecx
	lea edi, [ecx-0x1]
	cmp byte [ebp-0x265], 0x0
	jnz _Z42Material_RegisterOverriddenTechniqueSets_rPcjPKcjj_130
	mov ebx, [ebp-0x278]
	lea eax, [ebx+edi]
	mov [ebp-0x278], eax
	cmp eax, 0x3f
	ja _Z42Material_RegisterOverriddenTechniqueSets_rPcjPKcjj_140
_Z42Material_RegisterOverriddenTechniqueSets_rPcjPKcjj_340:
	lea edx, [ebp-0x158]
	add edx, ebx
	lea eax, [edi+0x1]
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov [esp], edx
	call memcpy
	jmp _Z42Material_RegisterOverriddenTechniqueSets_rPcjPKcjj_150
_Z42Material_RegisterOverriddenTechniqueSets_rPcjPKcjj_80:
	cmp byte [ebp-0x26d], 0x0
	jnz _Z42Material_RegisterOverriddenTechniqueSets_rPcjPKcjj_160
_Z42Material_RegisterOverriddenTechniqueSets_rPcjPKcjj_330:
	test [ebp+0xc], edx
	jz _Z42Material_RegisterOverriddenTechniqueSets_rPcjPKcjj_150
_Z42Material_RegisterOverriddenTechniqueSets_rPcjPKcjj_60:
	cmp byte [ebp-0x25d], 0x0
	jnz _Z42Material_RegisterOverriddenTechniqueSets_rPcjPKcjj_170
	mov ebx, [ebp-0x278]
	lea eax, [ebx+esi]
	mov [ebp-0x278], eax
	cmp eax, 0x3f
	ja _Z42Material_RegisterOverriddenTechniqueSets_rPcjPKcjj_180
_Z42Material_RegisterOverriddenTechniqueSets_rPcjPKcjj_260:
	lea edx, [ebp-0x158]
	add edx, ebx
	lea eax, [esi+0x1]
	mov [esp+0x8], eax
	lea eax, [ebp-0x58]
	mov [esp+0x4], eax
	mov [esp], edx
	call memcpy
	jmp _Z42Material_RegisterOverriddenTechniqueSets_rPcjPKcjj_150
_Z42Material_RegisterOverriddenTechniqueSets_rPcjPKcjj_30:
	mov [ebp-0x58], al
	cmp al, 0x5f
	jz _Z42Material_RegisterOverriddenTechniqueSets_rPcjPKcjj_190
	xor esi, esi
_Z42Material_RegisterOverriddenTechniqueSets_rPcjPKcjj_220:
	add esi, 0x1
	add dword [ebp-0x27c], 0x1
	mov edx, [ebp-0x27c]
	movzx eax, byte [edx]
	test al, al
	jz _Z42Material_RegisterOverriddenTechniqueSets_rPcjPKcjj_200
_Z42Material_RegisterOverriddenTechniqueSets_rPcjPKcjj_240:
	lea edx, [ebp-0x58]
	lea ecx, [esi+edx]
	mov [ecx], al
	cmp al, 0x5f
	jz _Z42Material_RegisterOverriddenTechniqueSets_rPcjPKcjj_210
	test esi, esi
	jz _Z42Material_RegisterOverriddenTechniqueSets_rPcjPKcjj_220
	movsx edx, byte [ecx-0x1]
	cmp edx, 0xff
	ja _Z42Material_RegisterOverriddenTechniqueSets_rPcjPKcjj_220
	mov ebx, [0xd5cc084]
	test byte [ebx+edx*4+0x35], 0x4
	jz _Z42Material_RegisterOverriddenTechniqueSets_rPcjPKcjj_220
	movsx eax, al
	cmp eax, 0xff
	ja _Z42Material_RegisterOverriddenTechniqueSets_rPcjPKcjj_230
	test byte [ebx+eax*4+0x35], 0x4
	jz _Z42Material_RegisterOverriddenTechniqueSets_rPcjPKcjj_230
	add esi, 0x1
	add dword [ebp-0x27c], 0x1
	mov edx, [ebp-0x27c]
	movzx eax, byte [edx]
	test al, al
	jnz _Z42Material_RegisterOverriddenTechniqueSets_rPcjPKcjj_240
_Z42Material_RegisterOverriddenTechniqueSets_rPcjPKcjj_200:
	lea ecx, [ebp-0x58]
	add ecx, esi
	mov byte [ecx], 0x0
	test esi, esi
	jnz _Z42Material_RegisterOverriddenTechniqueSets_rPcjPKcjj_250
_Z42Material_RegisterOverriddenTechniqueSets_rPcjPKcjj_40:
	lea eax, [ebp-0x158]
	mov [esp], eax
	call _Z29Material_RegisterTechniqueSetPKc
_Z42Material_RegisterOverriddenTechniqueSets_rPcjPKcjj_300:
	add esp, 0x29c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z42Material_RegisterOverriddenTechniqueSets_rPcjPKcjj_170:
	mov edx, [ebp-0x278]
	mov byte [ebp+edx-0x158], 0x5f
	mov ebx, edx
	add ebx, 0x1
	lea eax, [ebx+esi]
	mov [ebp-0x278], eax
	cmp eax, 0x3f
	jbe _Z42Material_RegisterOverriddenTechniqueSets_rPcjPKcjj_260
_Z42Material_RegisterOverriddenTechniqueSets_rPcjPKcjj_180:
	mov dword [esp+0x10], 0x3f
	lea edx, [ebp-0x58]
	mov [esp+0xc], edx
	lea eax, [ebp-0x158]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_cant_extend_tech
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z42Material_RegisterOverriddenTechniqueSets_rPcjPKcjj_260
_Z42Material_RegisterOverriddenTechniqueSets_rPcjPKcjj_190:
	xor esi, esi
_Z42Material_RegisterOverriddenTechniqueSets_rPcjPKcjj_210:
	add dword [ebp-0x27c], 0x1
	lea ecx, [ebp-0x58]
	add ecx, esi
	jmp _Z42Material_RegisterOverriddenTechniqueSets_rPcjPKcjj_230
_Z42Material_RegisterOverriddenTechniqueSets_rPcjPKcjj_120:
	lea eax, [ebp-0x158]
	mov [esp+0x4], eax
	lea edx, [ebp-0x258]
	mov [esp], edx
	call strcpy
	mov ebx, [ebx+s_materialFeatures]
	mov [ebp-0x26c], ebx
	cld
	mov ecx, 0xffffffff
	mov edi, ebx
	xor eax, eax
	repne scasb
	not ecx
	lea edi, [ecx-0x1]
	cmp byte [ebp-0x265], 0x0
	jnz _Z42Material_RegisterOverriddenTechniqueSets_rPcjPKcjj_270
	mov ebx, [ebp-0x278]
	lea eax, [ebx+edi]
	mov [ebp-0x264], eax
	cmp eax, 0x3f
	ja _Z42Material_RegisterOverriddenTechniqueSets_rPcjPKcjj_280
_Z42Material_RegisterOverriddenTechniqueSets_rPcjPKcjj_320:
	lea eax, [ebp-0x258]
	add eax, ebx
	lea edx, [edi+0x1]
	mov [esp+0x8], edx
	mov edx, [ebp-0x26c]
	mov [esp+0x4], edx
	mov [esp], eax
	call memcpy
	mov eax, [ebp+0xc]
	or eax, [esi+0x8]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	mov ecx, [ebp-0x27c]
	mov edx, [ebp-0x264]
	lea eax, [ebp-0x258]
	call _Z42Material_RegisterOverriddenTechniqueSets_rPcjPKcjj_290
	add dword [ebp-0x274], 0x1
	cmp dword [ebp-0x274], 0x14
	jnz _Z42Material_RegisterOverriddenTechniqueSets_rPcjPKcjj_90
_Z42Material_RegisterOverriddenTechniqueSets_rPcjPKcjj_100:
	cmp byte [ebp-0x26d], 0x0
	jz _Z42Material_RegisterOverriddenTechniqueSets_rPcjPKcjj_150
	mov eax, [ebp-0x25c]
	cmp byte [eax+0xc], 0x0
	jz _Z42Material_RegisterOverriddenTechniqueSets_rPcjPKcjj_150
	jmp _Z42Material_RegisterOverriddenTechniqueSets_rPcjPKcjj_300
_Z42Material_RegisterOverriddenTechniqueSets_rPcjPKcjj_20:
	mov byte [ebp-0x25d], 0x1
	jmp _Z42Material_RegisterOverriddenTechniqueSets_rPcjPKcjj_310
_Z42Material_RegisterOverriddenTechniqueSets_rPcjPKcjj_270:
	mov edx, [ebp-0x278]
	mov byte [ebp+edx-0x258], 0x5f
	mov ebx, edx
	add ebx, 0x1
	lea eax, [ebx+edi]
	mov [ebp-0x264], eax
	cmp eax, 0x3f
	jbe _Z42Material_RegisterOverriddenTechniqueSets_rPcjPKcjj_320
_Z42Material_RegisterOverriddenTechniqueSets_rPcjPKcjj_280:
	mov dword [esp+0x10], 0x3f
	mov edx, [ebp-0x26c]
	mov [esp+0xc], edx
	lea eax, [ebp-0x258]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_cant_extend_tech
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z42Material_RegisterOverriddenTechniqueSets_rPcjPKcjj_320
_Z42Material_RegisterOverriddenTechniqueSets_rPcjPKcjj_160:
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	mov eax, [ebp+0x8]
	mov [esp], eax
	mov ecx, [ebp-0x27c]
	mov edx, [ebp-0x278]
	lea eax, [ebp-0x158]
	call _Z42Material_RegisterOverriddenTechniqueSets_rPcjPKcjj_290
	mov eax, [ebp-0x25c]
	mov edx, [eax+0x4]
	or [ebp+0xc], edx
	jmp _Z42Material_RegisterOverriddenTechniqueSets_rPcjPKcjj_330
_Z42Material_RegisterOverriddenTechniqueSets_rPcjPKcjj_130:
	mov edx, [ebp-0x278]
	mov byte [ebp+edx-0x158], 0x5f
	mov ebx, edx
	add ebx, 0x1
	lea eax, [ebx+edi]
	mov [ebp-0x278], eax
	cmp eax, 0x3f
	jbe _Z42Material_RegisterOverriddenTechniqueSets_rPcjPKcjj_340
_Z42Material_RegisterOverriddenTechniqueSets_rPcjPKcjj_140:
	mov dword [esp+0x10], 0x3f
	mov [esp+0xc], esi
	lea edx, [ebp-0x158]
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_cant_extend_tech
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z42Material_RegisterOverriddenTechniqueSets_rPcjPKcjj_340
	nop


;Material_RemapTechniqueSetName(char const*, char*, unsigned int, unsigned int, GfxMtlFeatureMap const*, unsigned int)
_Z30Material_RemapTechniqueSetNamePKcPcjjPK16GfxMtlFeatureMapj:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x8c
	mov ebx, eax
	mov [ebp-0x6c], edx
	mov [ebp-0x70], ecx
	mov byte [edx], 0x0
	mov eax, r_rendererInUse
	mov eax, [eax]
	mov esi, [eax+0xc]
	test esi, esi
	jz _Z30Material_RemapTechniqueSetNamePKcPcjjPK16GfxMtlFeatureMapj_10
	mov dword [ebp-0x60], 0x0
_Z30Material_RemapTechniqueSetNamePKcPcjjPK16GfxMtlFeatureMapj_280:
	mov edi, _cstring_sm2
	mov ecx, 0x4
	cld
	mov esi, ebx
	repe cmpsb
	mov edx, 0x0
	jz _Z30Material_RemapTechniqueSetNamePKcPcjjPK16GfxMtlFeatureMapj_20
	movzx edx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub edx, ecx
_Z30Material_RemapTechniqueSetNamePKcPcjjPK16GfxMtlFeatureMapj_20:
	test edx, edx
	jnz _Z30Material_RemapTechniqueSetNamePKcPcjjPK16GfxMtlFeatureMapj_30
	add ebx, 0x4
_Z30Material_RemapTechniqueSetNamePKcPcjjPK16GfxMtlFeatureMapj_30:
	mov ecx, [ebp-0x60]
	test ecx, ecx
	jz _Z30Material_RemapTechniqueSetNamePKcPcjjPK16GfxMtlFeatureMapj_40
	cmp byte [ebx-0x1], 0x5f
	jz _Z30Material_RemapTechniqueSetNamePKcPcjjPK16GfxMtlFeatureMapj_50
_Z30Material_RemapTechniqueSetNamePKcPcjjPK16GfxMtlFeatureMapj_40:
	mov byte [ebp-0x59], 0x0
	movzx eax, byte [ebx]
	test al, al
	jnz _Z30Material_RemapTechniqueSetNamePKcPcjjPK16GfxMtlFeatureMapj_60
_Z30Material_RemapTechniqueSetNamePKcPcjjPK16GfxMtlFeatureMapj_110:
	mov dword [ebp-0x64], 0x0
	lea ecx, [ebp-0x58]
_Z30Material_RemapTechniqueSetNamePKcPcjjPK16GfxMtlFeatureMapj_160:
	mov byte [ecx], 0x0
	mov eax, [ebp-0x64]
	test eax, eax
	jz _Z30Material_RemapTechniqueSetNamePKcPcjjPK16GfxMtlFeatureMapj_70
_Z30Material_RemapTechniqueSetNamePKcPcjjPK16GfxMtlFeatureMapj_180:
	mov eax, [ebp+0x10]
	test eax, eax
	jnz _Z30Material_RemapTechniqueSetNamePKcPcjjPK16GfxMtlFeatureMapj_80
_Z30Material_RemapTechniqueSetNamePKcPcjjPK16GfxMtlFeatureMapj_220:
	cmp byte [ebp-0x59], 0x0
	jnz _Z30Material_RemapTechniqueSetNamePKcPcjjPK16GfxMtlFeatureMapj_90
	mov esi, [ebp-0x60]
	mov eax, [ebp-0x64]
	add eax, esi
	mov [ebp-0x60], eax
	cmp eax, 0x3f
	ja _Z30Material_RemapTechniqueSetNamePKcPcjjPK16GfxMtlFeatureMapj_100
_Z30Material_RemapTechniqueSetNamePKcPcjjPK16GfxMtlFeatureMapj_190:
	mov edx, [ebp-0x6c]
	add edx, esi
	mov eax, [ebp-0x64]
	add eax, 0x1
	mov [esp+0x8], eax
	lea esi, [ebp-0x58]
	mov [esp+0x4], esi
	mov [esp], edx
	call memcpy
	jmp _Z30Material_RemapTechniqueSetNamePKcPcjjPK16GfxMtlFeatureMapj_30
_Z30Material_RemapTechniqueSetNamePKcPcjjPK16GfxMtlFeatureMapj_50:
	mov byte [ebp-0x59], 0x1
	movzx eax, byte [ebx]
	test al, al
	jz _Z30Material_RemapTechniqueSetNamePKcPcjjPK16GfxMtlFeatureMapj_110
_Z30Material_RemapTechniqueSetNamePKcPcjjPK16GfxMtlFeatureMapj_60:
	mov [ebp-0x58], al
	cmp al, 0x5f
	jz _Z30Material_RemapTechniqueSetNamePKcPcjjPK16GfxMtlFeatureMapj_120
	mov dword [ebp-0x64], 0x0
_Z30Material_RemapTechniqueSetNamePKcPcjjPK16GfxMtlFeatureMapj_150:
	add dword [ebp-0x64], 0x1
	add ebx, 0x1
	movzx eax, byte [ebx]
	test al, al
	jz _Z30Material_RemapTechniqueSetNamePKcPcjjPK16GfxMtlFeatureMapj_130
_Z30Material_RemapTechniqueSetNamePKcPcjjPK16GfxMtlFeatureMapj_170:
	lea ecx, [ebp-0x58]
	add ecx, [ebp-0x64]
	mov [ecx], al
	cmp al, 0x5f
	jz _Z30Material_RemapTechniqueSetNamePKcPcjjPK16GfxMtlFeatureMapj_140
	mov edx, [ebp-0x64]
	test edx, edx
	jz _Z30Material_RemapTechniqueSetNamePKcPcjjPK16GfxMtlFeatureMapj_150
	movsx edx, byte [ecx-0x1]
	cmp edx, 0xff
	ja _Z30Material_RemapTechniqueSetNamePKcPcjjPK16GfxMtlFeatureMapj_150
	mov esi, [0xd5cc084]
	test byte [esi+edx*4+0x35], 0x4
	jz _Z30Material_RemapTechniqueSetNamePKcPcjjPK16GfxMtlFeatureMapj_150
	movsx eax, al
	cmp eax, 0xff
	ja _Z30Material_RemapTechniqueSetNamePKcPcjjPK16GfxMtlFeatureMapj_160
	test byte [esi+eax*4+0x35], 0x4
	jz _Z30Material_RemapTechniqueSetNamePKcPcjjPK16GfxMtlFeatureMapj_160
	add dword [ebp-0x64], 0x1
	add ebx, 0x1
	movzx eax, byte [ebx]
	test al, al
	jnz _Z30Material_RemapTechniqueSetNamePKcPcjjPK16GfxMtlFeatureMapj_170
_Z30Material_RemapTechniqueSetNamePKcPcjjPK16GfxMtlFeatureMapj_130:
	lea ecx, [ebp-0x58]
	add ecx, [ebp-0x64]
_Z30Material_RemapTechniqueSetNamePKcPcjjPK16GfxMtlFeatureMapj_200:
	mov byte [ecx], 0x0
	mov eax, [ebp-0x64]
	test eax, eax
	jnz _Z30Material_RemapTechniqueSetNamePKcPcjjPK16GfxMtlFeatureMapj_180
_Z30Material_RemapTechniqueSetNamePKcPcjjPK16GfxMtlFeatureMapj_70:
	add esp, 0x8c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z30Material_RemapTechniqueSetNamePKcPcjjPK16GfxMtlFeatureMapj_90:
	mov edx, [ebp-0x6c]
	mov esi, [ebp-0x60]
	mov byte [edx+esi], 0x5f
	mov esi, [ebp-0x60]
	add esi, 0x1
	mov eax, [ebp-0x64]
	add eax, esi
	mov [ebp-0x60], eax
	cmp eax, 0x3f
	jbe _Z30Material_RemapTechniqueSetNamePKcPcjjPK16GfxMtlFeatureMapj_190
_Z30Material_RemapTechniqueSetNamePKcPcjjPK16GfxMtlFeatureMapj_100:
	mov dword [esp+0x10], 0x3f
	lea edx, [ebp-0x58]
	mov [esp+0xc], edx
	mov eax, [ebp-0x6c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_cant_extend_tech
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z30Material_RemapTechniqueSetNamePKcPcjjPK16GfxMtlFeatureMapj_190
_Z30Material_RemapTechniqueSetNamePKcPcjjPK16GfxMtlFeatureMapj_120:
	mov dword [ebp-0x64], 0x0
_Z30Material_RemapTechniqueSetNamePKcPcjjPK16GfxMtlFeatureMapj_140:
	add ebx, 0x1
	lea ecx, [ebp-0x58]
	add ecx, [ebp-0x64]
	jmp _Z30Material_RemapTechniqueSetNamePKcPcjjPK16GfxMtlFeatureMapj_200
_Z30Material_RemapTechniqueSetNamePKcPcjjPK16GfxMtlFeatureMapj_80:
	mov esi, [ebp+0xc]
	xor edi, edi
	jmp _Z30Material_RemapTechniqueSetNamePKcPcjjPK16GfxMtlFeatureMapj_210
_Z30Material_RemapTechniqueSetNamePKcPcjjPK16GfxMtlFeatureMapj_230:
	add edi, 0x1
	add esi, 0x10
	cmp [ebp+0x10], edi
	jz _Z30Material_RemapTechniqueSetNamePKcPcjjPK16GfxMtlFeatureMapj_220
_Z30Material_RemapTechniqueSetNamePKcPcjjPK16GfxMtlFeatureMapj_210:
	mov eax, [esi]
	mov [esp+0x4], eax
	lea eax, [ebp-0x58]
	mov [esp], eax
	call strcmp
	test eax, eax
	jnz _Z30Material_RemapTechniqueSetNamePKcPcjjPK16GfxMtlFeatureMapj_230
	test esi, esi
	jz _Z30Material_RemapTechniqueSetNamePKcPcjjPK16GfxMtlFeatureMapj_220
	mov edx, [esi+0x4]
	test [ebp-0x70], edx
	jz _Z30Material_RemapTechniqueSetNamePKcPcjjPK16GfxMtlFeatureMapj_220
	mov eax, [esi+0x8]
	test eax, eax
	jz _Z30Material_RemapTechniqueSetNamePKcPcjjPK16GfxMtlFeatureMapj_30
	mov ecx, [ebp+0x8]
	and ecx, edx
	jz _Z30Material_RemapTechniqueSetNamePKcPcjjPK16GfxMtlFeatureMapj_30
	mov eax, [ebp+0xc]
	cmp edx, [eax+0x4]
	jz _Z30Material_RemapTechniqueSetNamePKcPcjjPK16GfxMtlFeatureMapj_240
_Z30Material_RemapTechniqueSetNamePKcPcjjPK16GfxMtlFeatureMapj_250:
	add eax, 0x10
	cmp edx, [eax+0x4]
	jnz _Z30Material_RemapTechniqueSetNamePKcPcjjPK16GfxMtlFeatureMapj_250
_Z30Material_RemapTechniqueSetNamePKcPcjjPK16GfxMtlFeatureMapj_240:
	cmp ecx, [eax+0x8]
	jnz _Z30Material_RemapTechniqueSetNamePKcPcjjPK16GfxMtlFeatureMapj_250
	mov eax, [eax]
	mov [ebp-0x68], eax
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, [ebp-0x68]
	repne scasb
	not ecx
	lea edi, [ecx-0x1]
	cmp byte [ebp-0x59], 0x0
	jnz _Z30Material_RemapTechniqueSetNamePKcPcjjPK16GfxMtlFeatureMapj_260
	mov esi, [ebp-0x60]
_Z30Material_RemapTechniqueSetNamePKcPcjjPK16GfxMtlFeatureMapj_290:
	lea eax, [esi+edi]
	mov [ebp-0x60], eax
	cmp eax, 0x3f
	ja _Z30Material_RemapTechniqueSetNamePKcPcjjPK16GfxMtlFeatureMapj_270
_Z30Material_RemapTechniqueSetNamePKcPcjjPK16GfxMtlFeatureMapj_300:
	mov edx, [ebp-0x6c]
	add edx, esi
	lea eax, [edi+0x1]
	mov [esp+0x8], eax
	mov esi, [ebp-0x68]
	mov [esp+0x4], esi
	mov [esp], edx
	call memcpy
	jmp _Z30Material_RemapTechniqueSetNamePKcPcjjPK16GfxMtlFeatureMapj_30
_Z30Material_RemapTechniqueSetNamePKcPcjjPK16GfxMtlFeatureMapj_10:
	mov eax, [ebp-0x6c]
	mov dword [eax], 0x2f326d73
	mov dword [ebp-0x60], 0x4
	jmp _Z30Material_RemapTechniqueSetNamePKcPcjjPK16GfxMtlFeatureMapj_280
_Z30Material_RemapTechniqueSetNamePKcPcjjPK16GfxMtlFeatureMapj_260:
	mov eax, [ebp-0x6c]
	mov edx, [ebp-0x60]
	mov byte [eax+edx], 0x5f
	mov esi, edx
	add esi, 0x1
	jmp _Z30Material_RemapTechniqueSetNamePKcPcjjPK16GfxMtlFeatureMapj_290
_Z30Material_RemapTechniqueSetNamePKcPcjjPK16GfxMtlFeatureMapj_270:
	mov dword [esp+0x10], 0x3f
	mov edx, [ebp-0x68]
	mov [esp+0xc], edx
	mov eax, [ebp-0x6c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_cant_extend_tech
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z30Material_RemapTechniqueSetNamePKcPcjjPK16GfxMtlFeatureMapj_300


;Material_OverrideTechniqueSets()
_Z30Material_OverrideTechniqueSetsv:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov eax, r_detail
	mov eax, [eax]
	cmp byte [eax+0xc], 0x1
	sbb ebx, ebx
	and ebx, 0x8
	mov eax, r_specular
	mov eax, [eax]
	mov edx, ebx
	or edx, 0x4
	cmp byte [eax+0xc], 0x0
	cmovz ebx, edx
	mov eax, r_normal
	mov eax, [eax]
	mov edx, ebx
	or edx, 0x10
	mov ecx, [eax+0xc]
	test ecx, ecx
	cmovz ebx, edx
	lea eax, [ebp-0xa]
	mov [esp+0x4], eax
	lea eax, [ebp-0x9]
	mov [esp], eax
	call _ZN10MacDisplay17GetFBOSupportInfoERhS0_
	cmp byte [ebp-0xa], 0x0
	jz _Z30Material_OverrideTechniqueSetsv_10
	mov eax, r_zFeather
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z30Material_OverrideTechniqueSetsv_10
_Z30Material_OverrideTechniqueSetsv_40:
	mov eax, r_outdoor
	mov eax, [eax]
	mov edx, ebx
	or edx, 0x2
	cmp byte [eax+0xc], 0x0
	cmovz ebx, edx
	mov ecx, ebx
	or ecx, 0x180
	mov eax, gfxMetrics
	cmp byte [eax+0x14], 0x1
	sbb edx, edx
	and edx, 0xffffff80
	add edx, 0x100
	mov eax, r_envMapOverride
	mov eax, [eax]
	or ebx, 0x1a0
	cmp byte [eax+0xc], 0x0
	cmovnz ecx, ebx
	cmp byte [mtlOverrideGlob+0x1], 0x0
	jnz _Z30Material_OverrideTechniqueSetsv_20
	cmp [mtlOverrideGlob+0x4], ecx
	jz _Z30Material_OverrideTechniqueSetsv_30
_Z30Material_OverrideTechniqueSetsv_20:
	mov byte [mtlOverrideGlob+0x1], 0x0
	mov [mtlOverrideGlob+0x4], ecx
	mov [mtlOverrideGlob+0x8], edx
	mov eax, rgp
	mov dword [eax+0x2000], 0x1
	call _Z18R_SyncRenderThreadv
	mov dword [esp], _Z26Material_RemapTechniqueSetP20MaterialTechniqueSet
	call _Z28Material_ForEachTechniqueSetPFvP20MaterialTechniqueSetE
_Z30Material_OverrideTechniqueSetsv_50:
	add esp, 0x24
	pop ebx
	pop ebp
	ret
_Z30Material_OverrideTechniqueSetsv_10:
	or ebx, 0x1
	jmp _Z30Material_OverrideTechniqueSetsv_40
_Z30Material_OverrideTechniqueSetsv_30:
	cmp edx, [mtlOverrideGlob+0x8]
	jnz _Z30Material_OverrideTechniqueSetsv_20
	jmp _Z30Material_OverrideTechniqueSetsv_50


;Material_OriginalRemapTechniqueSet(MaterialTechniqueSet*)
_Z34Material_OriginalRemapTechniqueSetP20MaterialTechniqueSet:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov eax, r_rendererInUse
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	jz _Z34Material_OriginalRemapTechniqueSetP20MaterialTechniqueSet_10
_Z34Material_OriginalRemapTechniqueSetP20MaterialTechniqueSet_30:
	mov edi, [ebp+0x8]
	mov [edi+0x8], edi
_Z34Material_OriginalRemapTechniqueSetP20MaterialTechniqueSet_40:
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z34Material_OriginalRemapTechniqueSetP20MaterialTechniqueSet_10:
	mov eax, [ebp+0x8]
	mov eax, [eax]
	mov [ebp-0x5c], eax
	mov ebx, _cstring_sm2
	mov ecx, 0x4
	cld
	mov esi, eax
	mov edi, ebx
	repe cmpsb
	mov edx, 0x0
	jz _Z34Material_OriginalRemapTechniqueSetP20MaterialTechniqueSet_20
	movzx edx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub edx, ecx
_Z34Material_OriginalRemapTechniqueSetP20MaterialTechniqueSet_20:
	test edx, edx
	jz _Z34Material_OriginalRemapTechniqueSetP20MaterialTechniqueSet_30
	lea ebx, [ebp-0x58]
	mov dword [ebp-0x58], 0x2f326d73
	mov dword [esp+0x8], 0x3c
	mov eax, [ebp-0x5c]
	mov [esp+0x4], eax
	lea eax, [ebp-0x54]
	mov [esp], eax
	call strncpy
	mov byte [ebp-0x19], 0x0
	mov dword [esp+0x4], 0x1
	mov [esp], ebx
	call _Z25Material_FindTechniqueSetPKc26MtlTechSetNotFoundBehavior
	mov edx, [ebp+0x8]
	mov [edx+0x8], eax
	cmp edx, eax
	jz _Z34Material_OriginalRemapTechniqueSetP20MaterialTechniqueSet_40
	mov eax, 0x22
_Z34Material_OriginalRemapTechniqueSetP20MaterialTechniqueSet_50:
	sub eax, 0x1
	jnz _Z34Material_OriginalRemapTechniqueSetP20MaterialTechniqueSet_50
	jmp _Z34Material_OriginalRemapTechniqueSetP20MaterialTechniqueSet_40


;Material_DirtyTechniqueSetOverrides()
_Z35Material_DirtyTechniqueSetOverridesv:
	push ebp
	mov ebp, esp
	mov byte [mtlOverrideGlob+0x1], 0x1
	pop ebp
	ret


;Material_WouldTechniqueSetBeOverridden(MaterialTechniqueSet const*)
_Z38Material_WouldTechniqueSetBeOverriddenPK20MaterialTechniqueSet:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x120
	mov esi, [ebp+0x8]
	mov eax, r_detail
	mov eax, [eax]
	cmp byte [eax+0xc], 0x1
	sbb ebx, ebx
	and ebx, 0x8
	mov eax, r_specular
	mov eax, [eax]
	mov edx, ebx
	or edx, 0x4
	cmp byte [eax+0xc], 0x0
	cmovz ebx, edx
	mov eax, r_normal
	mov eax, [eax]
	mov edx, ebx
	or edx, 0x10
	mov eax, [eax+0xc]
	test eax, eax
	cmovz ebx, edx
	lea eax, [ebp-0xa]
	mov [esp+0x4], eax
	lea eax, [ebp-0x9]
	mov [esp], eax
	call _ZN10MacDisplay17GetFBOSupportInfoERhS0_
	cmp byte [ebp-0xa], 0x0
	jz _Z38Material_WouldTechniqueSetBeOverriddenPK20MaterialTechniqueSet_10
	mov eax, r_zFeather
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z38Material_WouldTechniqueSetBeOverriddenPK20MaterialTechniqueSet_10
_Z38Material_WouldTechniqueSetBeOverriddenPK20MaterialTechniqueSet_20:
	mov eax, r_outdoor
	mov eax, [eax]
	mov edx, ebx
	or edx, 0x2
	cmp byte [eax+0xc], 0x0
	cmovz ebx, edx
	mov ecx, ebx
	or ecx, 0x180
	mov eax, gfxMetrics
	cmp byte [eax+0x14], 0x1
	sbb edx, edx
	and edx, 0xffffff80
	add edx, 0x100
	mov eax, r_envMapOverride
	mov eax, [eax]
	or ebx, 0x1a0
	cmp byte [eax+0xc], 0x0
	cmovnz ecx, ebx
	lea ebx, [ebp-0x10a]
	mov dword [esp+0x8], 0x14
	mov dword [esp+0x4], s_materialFeatures
	mov [esp], edx
	mov edx, ebx
	mov eax, [esi]
	call _Z30Material_RemapTechniqueSetNamePKcPcjjPK16GfxMtlFeatureMapj
	mov [esp+0x4], ebx
	mov eax, [esi]
	mov [esp], eax
	call strcmp
	test eax, eax
	setnz al
	movzx eax, al
	add esp, 0x120
	pop ebx
	pop esi
	pop ebp
	ret
_Z38Material_WouldTechniqueSetBeOverriddenPK20MaterialTechniqueSet_10:
	or ebx, 0x1
	jmp _Z38Material_WouldTechniqueSetBeOverriddenPK20MaterialTechniqueSet_20
	nop


;Material_RegisterOverriddenTechniqueSets(char const*)
_Z40Material_RegisterOverriddenTechniqueSetsPKc:
	push ebp
	mov ebp, esp
	sub esp, 0x118
	cmp byte [mtlOverrideGlob], 0x0
	jz _Z40Material_RegisterOverriddenTechniqueSetsPKc_10
	leave
	ret
_Z40Material_RegisterOverriddenTechniqueSetsPKc_10:
	mov byte [mtlOverrideGlob], 0x1
	mov byte [ebp-0x108], 0x0
	lea eax, [ebp-0x108]
	mov dword [esp+0x4], 0x0
	mov dword [esp], 0xffffffff
	mov ecx, [ebp+0x8]
	xor edx, edx
	call _Z42Material_RegisterOverriddenTechniqueSets_rPcjPKcjj
	mov byte [mtlOverrideGlob], 0x0
	leave
	ret


;Initialized global or static variables of r_material_override:
SECTION .data


;Initialized constant data of r_material_override:
SECTION .rdata
s_materialFeatures: dd _cstring_s0, 0x4, 0x0, 0x0, _cstring_s1, 0x4, 0x0, 0x0, _cstring_s2, 0x4, 0x0, 0x0, _cstring_s3, 0x4, 0x0, 0x0, _cstring_s4, 0x4, 0x0, 0x0, _cstring_d0, 0x8, 0x0, 0x0, _cstring_d1, 0x8, 0x0, 0x0, _cstring_d2, 0x8, 0x0, 0x0, _cstring_d3, 0x8, 0x0, 0x0, _cstring_d4, 0x8, 0x0, 0x0, _cstring_n0, 0x10, 0x0, 0x0, _cstring_n1, 0x10, 0x0, 0x0, _cstring_n2, 0x10, 0x0, 0x0, _cstring_n3, 0x10, 0x0, 0x0, _cstring_n4, 0x10, 0x0, 0x0, _cstring_zfeather, 0x1, 0x0, 0x0, _cstring_outdoor, 0x2, 0x0, 0x0, _cstring_sm, 0x180, 0x80, 0x1, _cstring_hsm, 0x180, 0x100, 0x1, _cstring_twk, 0x20, 0x0, 0x0


;Zero initialized global or static variables of r_material_override:
SECTION .bss
mtlOverrideGlob: resb 0x80


;All cstrings:
SECTION .rdata
_cstring_cant_extend_tech:		db "Can",27h,"t extend techset name ",27h,"%s",27h," with ",27h,"%s",27h,"; would exceed %i chars",0
_cstring_sm2:		db "sm2/",0
_cstring_s0:		db "s0",0
_cstring_s1:		db "s1",0
_cstring_s2:		db "s2",0
_cstring_s3:		db "s3",0
_cstring_s4:		db "s4",0
_cstring_d0:		db "d0",0
_cstring_d1:		db "d1",0
_cstring_d2:		db "d2",0
_cstring_d3:		db "d3",0
_cstring_d4:		db "d4",0
_cstring_n0:		db "n0",0
_cstring_n1:		db "n1",0
_cstring_n2:		db "n2",0
_cstring_n3:		db "n3",0
_cstring_n4:		db "n4",0
_cstring_zfeather:		db "zfeather",0
_cstring_outdoor:		db "outdoor",0
_cstring_sm:		db "sm",0
_cstring_hsm:		db "hsm",0
_cstring_twk:		db "twk",0



;All constant floats and doubles:
SECTION .rdata

