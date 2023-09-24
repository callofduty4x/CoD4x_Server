;Imports of rb_uploadshaders:
	extern backEndData
	extern gfxDrawMethod
	extern _Z38Material_WouldTechniqueSetBeOverriddenPK20MaterialTechniqueSet
	extern gfxCmdBufContext
	extern r_rendererInUse
	extern _Z17R_SetVertexShaderP14GfxCmdBufStatePK20MaterialVertexShader
	extern _Z16R_SetPixelShaderP14GfxCmdBufStatePK19MaterialPixelShader
	extern rgp
	extern _Z12R_SetSampler16GfxCmdBufContextjhPK8GfxImage
	extern memset
	extern dx_ctx
	extern r_preloadShaders

;Exports of rb_uploadshaders:
	global mtlUploadGlob
	global _Z19RB_UploadShaderStepv
	global _Z22Material_UploadShadersP20MaterialTechniqueSet
	global _Z30Material_ClearShaderUploadListv


SECTION .text


;RB_UploadShaderStep()
_Z19RB_UploadShaderStepv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x10c
	mov eax, backEndData
	mov eax, [eax]
	mov eax, [eax+0x11e6c4]
	test eax, eax
	jz _Z19RB_UploadShaderStepv_10
	mov eax, gfxDrawMethod
	cmp dword [eax], 0x3
	jz _Z19RB_UploadShaderStepv_20
_Z19RB_UploadShaderStepv_10:
	mov edx, [mtlUploadGlob+0x1004]
	mov eax, [mtlUploadGlob+0x1008]
	cmp eax, edx
	jz _Z19RB_UploadShaderStepv_30
_Z19RB_UploadShaderStepv_60:
	mov eax, [mtlUploadGlob+0x1004]
	and eax, 0x3ff
	mov eax, [eax*4+mtlUploadGlob]
	mov [ebp-0xcc], eax
	mov edx, [mtlUploadGlob+0x1000]
	test edx, edx
	jnz _Z19RB_UploadShaderStepv_40
	cmp byte [eax+0x5], 0x0
	jz _Z19RB_UploadShaderStepv_50
_Z19RB_UploadShaderStepv_70:
	mov dword [ebp-0xc8], 0x0
_Z19RB_UploadShaderStepv_130:
	mov eax, [mtlUploadGlob+0x1004]
	add eax, 0x1
	mov [mtlUploadGlob+0x1004], eax
	mov edx, [mtlUploadGlob+0x1004]
	mov eax, [mtlUploadGlob+0x1008]
	cmp eax, edx
	jz _Z19RB_UploadShaderStepv_30
	mov ecx, [ebp-0xc8]
	test ecx, ecx
	jz _Z19RB_UploadShaderStepv_60
_Z19RB_UploadShaderStepv_30:
	add esp, 0x10c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19RB_UploadShaderStepv_50:
	mov [esp], eax
	call _Z38Material_WouldTechniqueSetBeOverriddenPK20MaterialTechniqueSet
	test al, al
	jnz _Z19RB_UploadShaderStepv_70
	mov edx, [ebp-0xcc]
	mov byte [edx+0x5], 0x1
_Z19RB_UploadShaderStepv_40:
	mov ecx, gfxCmdBufContext
	mov [ebp-0xe8], ecx
	jmp _Z19RB_UploadShaderStepv_80
_Z19RB_UploadShaderStepv_120:
	mov eax, [edx+0x10]
	movzx edx, word [eax+0xe]
	mov eax, r_rendererInUse
	mov eax, [eax]
	cmp edx, [eax+0xc]
	jz _Z19RB_UploadShaderStepv_90
	mov edx, [mtlUploadGlob+0x1000]
	mov [ebp-0xf0], edx
_Z19RB_UploadShaderStepv_110:
	mov dword [ebp-0xc8], 0x0
	mov eax, [ebp-0xf0]
_Z19RB_UploadShaderStepv_460:
	add eax, 0x1
	mov [mtlUploadGlob+0x1000], eax
	cmp eax, 0x1e
	jz _Z19RB_UploadShaderStepv_100
	mov ebx, [ebp-0xc8]
	test ebx, ebx
	jnz _Z19RB_UploadShaderStepv_30
_Z19RB_UploadShaderStepv_80:
	mov edi, [mtlUploadGlob+0x1000]
	mov [ebp-0xf0], edi
	mov eax, [ebp-0xcc]
	mov eax, [eax+edi*4+0xc]
	mov [ebp-0xec], eax
	test eax, eax
	jz _Z19RB_UploadShaderStepv_110
	mov edx, eax
	movzx eax, word [eax+0x4]
	test ax, ax
	js _Z19RB_UploadShaderStepv_110
	or ax, 0x8000
	mov [edx+0x4], ax
	cmp word [edx+0x6], 0x0
	jnz _Z19RB_UploadShaderStepv_120
	mov eax, [mtlUploadGlob+0x1000]
	mov [ebp-0xf0], eax
	jmp _Z19RB_UploadShaderStepv_110
_Z19RB_UploadShaderStepv_100:
	mov dword [mtlUploadGlob+0x1000], 0x0
	jmp _Z19RB_UploadShaderStepv_130
_Z19RB_UploadShaderStepv_90:
	mov ecx, [mtlUploadGlob+0x1000]
	mov [ebp-0xf0], ecx
	mov edi, [ebp-0xec]
	mov edi, [edi]
	mov [ebp-0xc4], edi
	mov dword [ebp-0xd0], _cstring_lm_
	mov ebx, 0x3
	cld
	mov esi, edi
	mov edi, _cstring_lm_
	mov ecx, ebx
	repe cmpsb
	mov edx, 0x0
	jz _Z19RB_UploadShaderStepv_140
	movzx edx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub edx, ecx
_Z19RB_UploadShaderStepv_140:
	test edx, edx
	jnz _Z19RB_UploadShaderStepv_150
	mov dword [ebp-0xb4], 0x2
_Z19RB_UploadShaderStepv_280:
	mov edx, [ebp-0xec]
	cmp word [edx+0x6], 0x0
	jz _Z19RB_UploadShaderStepv_110
	mov dword [ebp-0xc0], 0x0
	mov dword [ebp-0xc8], 0x0
	mov ecx, gfxCmdBufContext
	mov ecx, [ecx+0x4]
	mov [ebp-0xe0], ecx
	add edx, 0x8
	mov [ebp-0xe4], edx
	mov edi, edx
_Z19RB_UploadShaderStepv_250:
	mov eax, [edi+0x4]
	mov [esp+0x4], eax
	mov eax, [ebp-0xe0]
	mov [esp], eax
	call _Z17R_SetVertexShaderP14GfxCmdBufStatePK20MaterialVertexShader
	mov eax, [edi+0x8]
	mov [esp+0x4], eax
	mov edx, [ebp-0xe0]
	mov [esp], edx
	call _Z16R_SetPixelShaderP14GfxCmdBufStatePK19MaterialPixelShader
	movzx edx, byte [edi+0xc]
	movzx eax, byte [edi+0xd]
	add edx, eax
	movzx eax, byte [edi+0xe]
	add edx, eax
	mov [ebp-0xbc], edx
	jz _Z19RB_UploadShaderStepv_160
	xor esi, esi
	jmp _Z19RB_UploadShaderStepv_170
_Z19RB_UploadShaderStepv_190:
	cmp ax, 0x4
	jz _Z19RB_UploadShaderStepv_180
_Z19RB_UploadShaderStepv_310:
	add esi, 0x1
	cmp [ebp-0xbc], esi
	jbe _Z19RB_UploadShaderStepv_160
_Z19RB_UploadShaderStepv_170:
	mov ecx, [ebp-0xe4]
	mov eax, [ecx+0x10]
	lea edx, [eax+esi*8]
	movzx eax, word [edx]
	cmp ax, 0x2
	jnz _Z19RB_UploadShaderStepv_190
	mov edi, rgp
	mov eax, [edi+0x200c]
	movzx ebx, word [edx+0x2]
	mov edi, [ebp-0xe8]
	mov edx, [edi]
	mov ecx, [edi+0x4]
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0xa
	mov [esp+0x8], ebx
	mov [esp], edx
	mov [esp+0x4], ecx
	call _Z12R_SetSampler16GfxCmdBufContextjhPK8GfxImage
	add esi, 0x1
	cmp [ebp-0xbc], esi
	ja _Z19RB_UploadShaderStepv_170
_Z19RB_UploadShaderStepv_160:
	mov dword [esp+0x8], 0x90
	mov dword [esp+0x4], 0x0
	lea eax, [ebp-0xa8]
	mov [esp], eax
	call memset
	mov edx, gfxCmdBufContext
	mov ebx, [edx+0x4]
	add ebx, 0x90
	mov edi, [ebp-0xb4]
	test edi, edi
	jz _Z19RB_UploadShaderStepv_200
	mov ecx, [ebp-0xe4]
	mov eax, [ecx]
	mov edi, [ebp-0xb4]
	mov esi, [eax+edi*4+0x24]
	test esi, esi
	jz _Z19RB_UploadShaderStepv_210
	mov [ebx+0x8], edi
	test eax, eax
	jz _Z19RB_UploadShaderStepv_220
	mov ecx, [ebp-0xb4]
	mov esi, [eax+ecx*4+0x24]
_Z19RB_UploadShaderStepv_520:
	cmp esi, [ebx+0x24]
	jz _Z19RB_UploadShaderStepv_230
	mov eax, [ebx]
	mov edx, [eax]
	mov [esp+0x4], esi
	mov [esp], eax
	call dword [edx+0x15c]
	mov [ebx+0x24], esi
_Z19RB_UploadShaderStepv_230:
	mov edi, dx_ctx
	mov eax, [edi+0x8]
	mov edx, [eax]
	mov dword [esp+0x10], 0x30
	lea ecx, [ebp-0xa8]
	mov [esp+0xc], ecx
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x4
	mov [esp], eax
	call dword [edx+0x14c]
	mov eax, 0x1
_Z19RB_UploadShaderStepv_440:
	mov dword [ebx+0x8], 0x0
	add [ebp-0xc8], eax
	add dword [ebp-0xc0], 0x1
	add dword [ebp-0xe4], 0x14
	mov edi, [ebp-0xec]
	movzx eax, word [edi+0x6]
	cmp [ebp-0xc0], eax
	jae _Z19RB_UploadShaderStepv_240
	mov edi, [ebp-0xe4]
	jmp _Z19RB_UploadShaderStepv_250
_Z19RB_UploadShaderStepv_20:
	mov dword [mtlUploadGlob+0x1004], 0x0
	mov dword [mtlUploadGlob+0x1008], 0x0
	mov dword [mtlUploadGlob+0x1000], 0x0
	add esp, 0x10c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19RB_UploadShaderStepv_150:
	mov dword [ebp-0xd4], _cstring_lp_
	mov ebx, 0x3
	cld
	mov esi, [ebp-0xc4]
	mov edi, _cstring_lp_
	mov ecx, ebx
	repe cmpsb
	mov edx, 0x0
	jz _Z19RB_UploadShaderStepv_260
	movzx edx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub edx, ecx
_Z19RB_UploadShaderStepv_260:
	test edx, edx
	jnz _Z19RB_UploadShaderStepv_270
_Z19RB_UploadShaderStepv_570:
	mov eax, [ebp-0xf0]
	sub eax, 0xe
	cmp eax, 0x7
	sbb eax, eax
	and eax, 0xe
	add eax, 0x1
	mov [ebp-0xb4], eax
	jmp _Z19RB_UploadShaderStepv_280
_Z19RB_UploadShaderStepv_180:
	mov eax, [edx+0x4]
	cmp eax, 0x3
	jz _Z19RB_UploadShaderStepv_290
	cmp eax, 0x1a
	jz _Z19RB_UploadShaderStepv_300
	mov edi, rgp
	mov ebx, [edi+0x200c]
_Z19RB_UploadShaderStepv_450:
	movzx ecx, word [edx+0x2]
	mov edi, [ebp-0xe8]
	mov eax, [edi]
	mov edx, [edi+0x4]
	mov [esp+0x10], ebx
	mov dword [esp+0xc], 0xa
	mov [esp+0x8], ecx
	mov [esp], eax
	mov [esp+0x4], edx
	call _Z12R_SetSampler16GfxCmdBufContextjhPK8GfxImage
	jmp _Z19RB_UploadShaderStepv_310
_Z19RB_UploadShaderStepv_200:
	mov edi, [ebp-0xe4]
	mov eax, [edi]
	mov ecx, [eax+0x24]
	test ecx, ecx
	jz _Z19RB_UploadShaderStepv_320
	mov dword [ebx+0x8], 0x0
	test eax, eax
	jz _Z19RB_UploadShaderStepv_330
	mov esi, [eax+0x24]
_Z19RB_UploadShaderStepv_540:
	cmp esi, [ebx+0x24]
	jz _Z19RB_UploadShaderStepv_340
	mov eax, [ebx]
	mov edx, [eax]
	mov [esp+0x4], esi
	mov [esp], eax
	call dword [edx+0x15c]
	mov [ebx+0x24], esi
_Z19RB_UploadShaderStepv_340:
	mov edx, dx_ctx
	mov eax, [edx+0x8]
	mov edx, [eax]
	mov dword [esp+0x10], 0x30
	lea ecx, [ebp-0xa8]
	mov [esp+0xc], ecx
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x4
	mov [esp], eax
	call dword [edx+0x14c]
	mov dword [ebp-0xb8], 0x1
	mov edi, [ebp-0xe4]
	mov eax, [edi]
_Z19RB_UploadShaderStepv_470:
	mov edx, [eax+0x28]
	test edx, edx
	jz _Z19RB_UploadShaderStepv_350
	mov dword [ebx+0x8], 0x1
	test eax, eax
	jz _Z19RB_UploadShaderStepv_360
	mov esi, [eax+0x28]
_Z19RB_UploadShaderStepv_510:
	cmp esi, [ebx+0x24]
	jz _Z19RB_UploadShaderStepv_370
	mov eax, [ebx]
	mov edx, [eax]
	mov [esp+0x4], esi
	mov [esp], eax
	call dword [edx+0x15c]
	mov [ebx+0x24], esi
_Z19RB_UploadShaderStepv_370:
	mov edx, dx_ctx
	mov eax, [edx+0x8]
	mov edx, [eax]
	mov dword [esp+0x10], 0x30
	lea ecx, [ebp-0xa8]
	mov [esp+0xc], ecx
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x4
	mov [esp], eax
	call dword [edx+0x14c]
	mov edx, 0x1
	mov edi, [ebp-0xe4]
	mov eax, [edi]
_Z19RB_UploadShaderStepv_480:
	add edx, [ebp-0xb8]
	mov [ebp-0xb0], edx
	mov edi, [eax+0x2c]
	test edi, edi
	jz _Z19RB_UploadShaderStepv_380
	mov dword [ebx+0x8], 0x2
	test eax, eax
	jz _Z19RB_UploadShaderStepv_390
	mov esi, [eax+0x2c]
_Z19RB_UploadShaderStepv_550:
	cmp esi, [ebx+0x24]
	jz _Z19RB_UploadShaderStepv_400
	mov eax, [ebx]
	mov edx, [eax]
	mov [esp+0x4], esi
	mov [esp], eax
	call dword [edx+0x15c]
	mov [ebx+0x24], esi
_Z19RB_UploadShaderStepv_400:
	mov edx, dx_ctx
	mov eax, [edx+0x8]
	mov edx, [eax]
	mov dword [esp+0x10], 0x30
	lea ecx, [ebp-0xa8]
	mov [esp+0xc], ecx
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x4
	mov [esp], eax
	call dword [edx+0x14c]
	mov edx, 0x1
	mov edi, [ebp-0xe4]
	mov eax, [edi]
_Z19RB_UploadShaderStepv_500:
	add edx, [ebp-0xb0]
	mov [ebp-0xac], edx
	mov esi, [eax+0x60]
	test esi, esi
	jz _Z19RB_UploadShaderStepv_410
	mov dword [ebx+0x8], 0xf
	test eax, eax
	jz _Z19RB_UploadShaderStepv_420
	mov esi, [eax+0x60]
_Z19RB_UploadShaderStepv_530:
	cmp esi, [ebx+0x24]
	jz _Z19RB_UploadShaderStepv_430
	mov eax, [ebx]
	mov edx, [eax]
	mov [esp+0x4], esi
	mov [esp], eax
	call dword [edx+0x15c]
	mov [ebx+0x24], esi
_Z19RB_UploadShaderStepv_430:
	mov edx, dx_ctx
	mov eax, [edx+0x8]
	mov edx, [eax]
	mov dword [esp+0x10], 0x30
	lea ecx, [ebp-0xa8]
	mov [esp+0xc], ecx
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x4
	mov [esp], eax
	call dword [edx+0x14c]
	mov eax, 0x1
_Z19RB_UploadShaderStepv_490:
	add eax, [ebp-0xac]
	jmp _Z19RB_UploadShaderStepv_440
_Z19RB_UploadShaderStepv_290:
	mov eax, rgp
	mov ebx, [eax+0x2010]
	jmp _Z19RB_UploadShaderStepv_450
_Z19RB_UploadShaderStepv_300:
	mov ecx, rgp
	mov ebx, [ecx+0x2014]
	jmp _Z19RB_UploadShaderStepv_450
_Z19RB_UploadShaderStepv_240:
	mov ecx, [mtlUploadGlob+0x1000]
	mov [ebp-0xf0], ecx
	mov eax, ecx
	jmp _Z19RB_UploadShaderStepv_460
_Z19RB_UploadShaderStepv_210:
	xor eax, eax
	jmp _Z19RB_UploadShaderStepv_440
_Z19RB_UploadShaderStepv_320:
	mov dword [ebp-0xb8], 0x0
	jmp _Z19RB_UploadShaderStepv_470
_Z19RB_UploadShaderStepv_350:
	xor edx, edx
	jmp _Z19RB_UploadShaderStepv_480
_Z19RB_UploadShaderStepv_410:
	xor eax, eax
	jmp _Z19RB_UploadShaderStepv_490
_Z19RB_UploadShaderStepv_380:
	xor edx, edx
	jmp _Z19RB_UploadShaderStepv_500
_Z19RB_UploadShaderStepv_360:
	xor esi, esi
	jmp _Z19RB_UploadShaderStepv_510
_Z19RB_UploadShaderStepv_220:
	xor esi, esi
	jmp _Z19RB_UploadShaderStepv_520
_Z19RB_UploadShaderStepv_420:
	xor esi, esi
	jmp _Z19RB_UploadShaderStepv_530
_Z19RB_UploadShaderStepv_330:
	xor esi, esi
	jmp _Z19RB_UploadShaderStepv_540
_Z19RB_UploadShaderStepv_390:
	xor esi, esi
	jmp _Z19RB_UploadShaderStepv_550
_Z19RB_UploadShaderStepv_270:
	mov dword [ebp-0xd8], _cstring_lprobe_
	mov bl, 0x7
	mov esi, [ebp-0xc4]
	mov edi, _cstring_lprobe_
	mov ecx, ebx
	repe cmpsb
	mov edx, 0x0
	jz _Z19RB_UploadShaderStepv_560
	movzx edx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub edx, ecx
_Z19RB_UploadShaderStepv_560:
	test edx, edx
	jz _Z19RB_UploadShaderStepv_570
	mov ebx, _cstring_effect_
	mov dword [ebp-0xdc], 0x7
	mov esi, [ebp-0xc4]
	mov edi, ebx
	mov ecx, 0x7
	repe cmpsb
	mov edx, 0x0
	jz _Z19RB_UploadShaderStepv_580
	movzx edx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub edx, ecx
_Z19RB_UploadShaderStepv_580:
	test edx, edx
	jz _Z19RB_UploadShaderStepv_570
	mov dword [ebp-0xb4], 0x0
	jmp _Z19RB_UploadShaderStepv_280
	add [eax], al


;Material_UploadShaders(MaterialTechniqueSet*)
_Z22Material_UploadShadersP20MaterialTechniqueSet:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	mov eax, r_preloadShaders
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z22Material_UploadShadersP20MaterialTechniqueSet_10
	mov byte [edx+0x5], 0x0
	mov eax, [mtlUploadGlob+0x1008]
	and eax, 0x3ff
	mov [eax*4+mtlUploadGlob], edx
	mov eax, [mtlUploadGlob+0x1008]
	add eax, 0x1
	mov [mtlUploadGlob+0x1008], eax
_Z22Material_UploadShadersP20MaterialTechniqueSet_10:
	pop ebp
	ret
	nop


;Material_ClearShaderUploadList()
_Z30Material_ClearShaderUploadListv:
	push ebp
	mov ebp, esp
	mov dword [mtlUploadGlob+0x1004], 0x0
	mov dword [mtlUploadGlob+0x1008], 0x0
	mov dword [mtlUploadGlob+0x1000], 0x0
	pop ebp
	ret
	nop


;Initialized global or static variables of rb_uploadshaders:
SECTION .data


;Initialized constant data of rb_uploadshaders:
SECTION .rdata


;Zero initialized global or static variables of rb_uploadshaders:
SECTION .bss
mtlUploadGlob: resb 0x1080


;All cstrings:
SECTION .rdata
_cstring_lm_:		db "lm_",0
_cstring_lp_:		db "lp_",0
_cstring_lprobe_:		db "lprobe_",0
_cstring_effect_:		db "effect_",0



;All constant floats and doubles:
SECTION .rdata

