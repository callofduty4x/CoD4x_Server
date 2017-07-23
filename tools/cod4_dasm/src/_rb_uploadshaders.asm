;Imports of rb_uploadshaders:
	extern backEndData
	extern gfxDrawMethod
	extern Material_WouldTechniqueSetBeOverridden
	extern gfxCmdBufContext
	extern r_rendererInUse
	extern R_SetVertexShader
	extern R_SetPixelShader
	extern rgp
	extern R_SetSampler
	extern memset
	extern dx_ctx
	extern r_preloadShaders

;Exports of rb_uploadshaders:
	global mtlUploadGlob
	global RB_UploadShaderStep
	global Material_UploadShaders
	global Material_ClearShaderUploadList


SECTION .text


;RB_UploadShaderStep()
RB_UploadShaderStep:
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
	jz RB_UploadShaderStep_10
	mov eax, gfxDrawMethod
	cmp dword [eax], 0x3
	jz RB_UploadShaderStep_20
RB_UploadShaderStep_10:
	mov edx, [mtlUploadGlob+0x1004]
	mov eax, [mtlUploadGlob+0x1008]
	cmp eax, edx
	jz RB_UploadShaderStep_30
RB_UploadShaderStep_60:
	mov eax, [mtlUploadGlob+0x1004]
	and eax, 0x3ff
	mov eax, [eax*4+mtlUploadGlob]
	mov [ebp-0xcc], eax
	mov edx, [mtlUploadGlob+0x1000]
	test edx, edx
	jnz RB_UploadShaderStep_40
	cmp byte [eax+0x5], 0x0
	jz RB_UploadShaderStep_50
RB_UploadShaderStep_70:
	mov dword [ebp-0xc8], 0x0
RB_UploadShaderStep_130:
	mov eax, [mtlUploadGlob+0x1004]
	add eax, 0x1
	mov [mtlUploadGlob+0x1004], eax
	mov edx, [mtlUploadGlob+0x1004]
	mov eax, [mtlUploadGlob+0x1008]
	cmp eax, edx
	jz RB_UploadShaderStep_30
	mov ecx, [ebp-0xc8]
	test ecx, ecx
	jz RB_UploadShaderStep_60
RB_UploadShaderStep_30:
	add esp, 0x10c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
RB_UploadShaderStep_50:
	mov [esp], eax
	call Material_WouldTechniqueSetBeOverridden
	test al, al
	jnz RB_UploadShaderStep_70
	mov edx, [ebp-0xcc]
	mov byte [edx+0x5], 0x1
RB_UploadShaderStep_40:
	mov ecx, gfxCmdBufContext
	mov [ebp-0xe8], ecx
	jmp RB_UploadShaderStep_80
RB_UploadShaderStep_120:
	mov eax, [edx+0x10]
	movzx edx, word [eax+0xe]
	mov eax, r_rendererInUse
	mov eax, [eax]
	cmp edx, [eax+0xc]
	jz RB_UploadShaderStep_90
	mov edx, [mtlUploadGlob+0x1000]
	mov [ebp-0xf0], edx
RB_UploadShaderStep_110:
	mov dword [ebp-0xc8], 0x0
	mov eax, [ebp-0xf0]
RB_UploadShaderStep_460:
	add eax, 0x1
	mov [mtlUploadGlob+0x1000], eax
	cmp eax, 0x1e
	jz RB_UploadShaderStep_100
	mov ebx, [ebp-0xc8]
	test ebx, ebx
	jnz RB_UploadShaderStep_30
RB_UploadShaderStep_80:
	mov edi, [mtlUploadGlob+0x1000]
	mov [ebp-0xf0], edi
	mov eax, [ebp-0xcc]
	mov eax, [eax+edi*4+0xc]
	mov [ebp-0xec], eax
	test eax, eax
	jz RB_UploadShaderStep_110
	mov edx, eax
	movzx eax, word [eax+0x4]
	test ax, ax
	js RB_UploadShaderStep_110
	or ax, 0x8000
	mov [edx+0x4], ax
	cmp word [edx+0x6], 0x0
	jnz RB_UploadShaderStep_120
	mov eax, [mtlUploadGlob+0x1000]
	mov [ebp-0xf0], eax
	jmp RB_UploadShaderStep_110
RB_UploadShaderStep_100:
	mov dword [mtlUploadGlob+0x1000], 0x0
	jmp RB_UploadShaderStep_130
RB_UploadShaderStep_90:
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
	jz RB_UploadShaderStep_140
	movzx edx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub edx, ecx
RB_UploadShaderStep_140:
	test edx, edx
	jnz RB_UploadShaderStep_150
	mov dword [ebp-0xb4], 0x2
RB_UploadShaderStep_280:
	mov edx, [ebp-0xec]
	cmp word [edx+0x6], 0x0
	jz RB_UploadShaderStep_110
	mov dword [ebp-0xc0], 0x0
	mov dword [ebp-0xc8], 0x0
	mov ecx, gfxCmdBufContext
	mov ecx, [ecx+0x4]
	mov [ebp-0xe0], ecx
	add edx, 0x8
	mov [ebp-0xe4], edx
	mov edi, edx
RB_UploadShaderStep_250:
	mov eax, [edi+0x4]
	mov [esp+0x4], eax
	mov eax, [ebp-0xe0]
	mov [esp], eax
	call R_SetVertexShader
	mov eax, [edi+0x8]
	mov [esp+0x4], eax
	mov edx, [ebp-0xe0]
	mov [esp], edx
	call R_SetPixelShader
	movzx edx, byte [edi+0xc]
	movzx eax, byte [edi+0xd]
	add edx, eax
	movzx eax, byte [edi+0xe]
	add edx, eax
	mov [ebp-0xbc], edx
	jz RB_UploadShaderStep_160
	xor esi, esi
	jmp RB_UploadShaderStep_170
RB_UploadShaderStep_190:
	cmp ax, 0x4
	jz RB_UploadShaderStep_180
RB_UploadShaderStep_310:
	add esi, 0x1
	cmp [ebp-0xbc], esi
	jbe RB_UploadShaderStep_160
RB_UploadShaderStep_170:
	mov ecx, [ebp-0xe4]
	mov eax, [ecx+0x10]
	lea edx, [eax+esi*8]
	movzx eax, word [edx]
	cmp ax, 0x2
	jnz RB_UploadShaderStep_190
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
	call R_SetSampler
	add esi, 0x1
	cmp [ebp-0xbc], esi
	ja RB_UploadShaderStep_170
RB_UploadShaderStep_160:
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
	jz RB_UploadShaderStep_200
	mov ecx, [ebp-0xe4]
	mov eax, [ecx]
	mov edi, [ebp-0xb4]
	mov esi, [eax+edi*4+0x24]
	test esi, esi
	jz RB_UploadShaderStep_210
	mov [ebx+0x8], edi
	test eax, eax
	jz RB_UploadShaderStep_220
	mov ecx, [ebp-0xb4]
	mov esi, [eax+ecx*4+0x24]
RB_UploadShaderStep_520:
	cmp esi, [ebx+0x24]
	jz RB_UploadShaderStep_230
	mov eax, [ebx]
	mov edx, [eax]
	mov [esp+0x4], esi
	mov [esp], eax
	call dword [edx+0x15c]
	mov [ebx+0x24], esi
RB_UploadShaderStep_230:
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
RB_UploadShaderStep_440:
	mov dword [ebx+0x8], 0x0
	add [ebp-0xc8], eax
	add dword [ebp-0xc0], 0x1
	add dword [ebp-0xe4], 0x14
	mov edi, [ebp-0xec]
	movzx eax, word [edi+0x6]
	cmp [ebp-0xc0], eax
	jae RB_UploadShaderStep_240
	mov edi, [ebp-0xe4]
	jmp RB_UploadShaderStep_250
RB_UploadShaderStep_20:
	mov dword [mtlUploadGlob+0x1004], 0x0
	mov dword [mtlUploadGlob+0x1008], 0x0
	mov dword [mtlUploadGlob+0x1000], 0x0
	add esp, 0x10c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
RB_UploadShaderStep_150:
	mov dword [ebp-0xd4], _cstring_lp_
	mov ebx, 0x3
	cld
	mov esi, [ebp-0xc4]
	mov edi, _cstring_lp_
	mov ecx, ebx
	repe cmpsb
	mov edx, 0x0
	jz RB_UploadShaderStep_260
	movzx edx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub edx, ecx
RB_UploadShaderStep_260:
	test edx, edx
	jnz RB_UploadShaderStep_270
RB_UploadShaderStep_570:
	mov eax, [ebp-0xf0]
	sub eax, 0xe
	cmp eax, 0x7
	sbb eax, eax
	and eax, 0xe
	add eax, 0x1
	mov [ebp-0xb4], eax
	jmp RB_UploadShaderStep_280
RB_UploadShaderStep_180:
	mov eax, [edx+0x4]
	cmp eax, 0x3
	jz RB_UploadShaderStep_290
	cmp eax, 0x1a
	jz RB_UploadShaderStep_300
	mov edi, rgp
	mov ebx, [edi+0x200c]
RB_UploadShaderStep_450:
	movzx ecx, word [edx+0x2]
	mov edi, [ebp-0xe8]
	mov eax, [edi]
	mov edx, [edi+0x4]
	mov [esp+0x10], ebx
	mov dword [esp+0xc], 0xa
	mov [esp+0x8], ecx
	mov [esp], eax
	mov [esp+0x4], edx
	call R_SetSampler
	jmp RB_UploadShaderStep_310
RB_UploadShaderStep_200:
	mov edi, [ebp-0xe4]
	mov eax, [edi]
	mov ecx, [eax+0x24]
	test ecx, ecx
	jz RB_UploadShaderStep_320
	mov dword [ebx+0x8], 0x0
	test eax, eax
	jz RB_UploadShaderStep_330
	mov esi, [eax+0x24]
RB_UploadShaderStep_540:
	cmp esi, [ebx+0x24]
	jz RB_UploadShaderStep_340
	mov eax, [ebx]
	mov edx, [eax]
	mov [esp+0x4], esi
	mov [esp], eax
	call dword [edx+0x15c]
	mov [ebx+0x24], esi
RB_UploadShaderStep_340:
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
RB_UploadShaderStep_470:
	mov edx, [eax+0x28]
	test edx, edx
	jz RB_UploadShaderStep_350
	mov dword [ebx+0x8], 0x1
	test eax, eax
	jz RB_UploadShaderStep_360
	mov esi, [eax+0x28]
RB_UploadShaderStep_510:
	cmp esi, [ebx+0x24]
	jz RB_UploadShaderStep_370
	mov eax, [ebx]
	mov edx, [eax]
	mov [esp+0x4], esi
	mov [esp], eax
	call dword [edx+0x15c]
	mov [ebx+0x24], esi
RB_UploadShaderStep_370:
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
RB_UploadShaderStep_480:
	add edx, [ebp-0xb8]
	mov [ebp-0xb0], edx
	mov edi, [eax+0x2c]
	test edi, edi
	jz RB_UploadShaderStep_380
	mov dword [ebx+0x8], 0x2
	test eax, eax
	jz RB_UploadShaderStep_390
	mov esi, [eax+0x2c]
RB_UploadShaderStep_550:
	cmp esi, [ebx+0x24]
	jz RB_UploadShaderStep_400
	mov eax, [ebx]
	mov edx, [eax]
	mov [esp+0x4], esi
	mov [esp], eax
	call dword [edx+0x15c]
	mov [ebx+0x24], esi
RB_UploadShaderStep_400:
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
RB_UploadShaderStep_500:
	add edx, [ebp-0xb0]
	mov [ebp-0xac], edx
	mov esi, [eax+0x60]
	test esi, esi
	jz RB_UploadShaderStep_410
	mov dword [ebx+0x8], 0xf
	test eax, eax
	jz RB_UploadShaderStep_420
	mov esi, [eax+0x60]
RB_UploadShaderStep_530:
	cmp esi, [ebx+0x24]
	jz RB_UploadShaderStep_430
	mov eax, [ebx]
	mov edx, [eax]
	mov [esp+0x4], esi
	mov [esp], eax
	call dword [edx+0x15c]
	mov [ebx+0x24], esi
RB_UploadShaderStep_430:
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
RB_UploadShaderStep_490:
	add eax, [ebp-0xac]
	jmp RB_UploadShaderStep_440
RB_UploadShaderStep_290:
	mov eax, rgp
	mov ebx, [eax+0x2010]
	jmp RB_UploadShaderStep_450
RB_UploadShaderStep_300:
	mov ecx, rgp
	mov ebx, [ecx+0x2014]
	jmp RB_UploadShaderStep_450
RB_UploadShaderStep_240:
	mov ecx, [mtlUploadGlob+0x1000]
	mov [ebp-0xf0], ecx
	mov eax, ecx
	jmp RB_UploadShaderStep_460
RB_UploadShaderStep_210:
	xor eax, eax
	jmp RB_UploadShaderStep_440
RB_UploadShaderStep_320:
	mov dword [ebp-0xb8], 0x0
	jmp RB_UploadShaderStep_470
RB_UploadShaderStep_350:
	xor edx, edx
	jmp RB_UploadShaderStep_480
RB_UploadShaderStep_410:
	xor eax, eax
	jmp RB_UploadShaderStep_490
RB_UploadShaderStep_380:
	xor edx, edx
	jmp RB_UploadShaderStep_500
RB_UploadShaderStep_360:
	xor esi, esi
	jmp RB_UploadShaderStep_510
RB_UploadShaderStep_220:
	xor esi, esi
	jmp RB_UploadShaderStep_520
RB_UploadShaderStep_420:
	xor esi, esi
	jmp RB_UploadShaderStep_530
RB_UploadShaderStep_330:
	xor esi, esi
	jmp RB_UploadShaderStep_540
RB_UploadShaderStep_390:
	xor esi, esi
	jmp RB_UploadShaderStep_550
RB_UploadShaderStep_270:
	mov dword [ebp-0xd8], _cstring_lprobe_
	mov bl, 0x7
	mov esi, [ebp-0xc4]
	mov edi, _cstring_lprobe_
	mov ecx, ebx
	repe cmpsb
	mov edx, 0x0
	jz RB_UploadShaderStep_560
	movzx edx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub edx, ecx
RB_UploadShaderStep_560:
	test edx, edx
	jz RB_UploadShaderStep_570
	mov ebx, _cstring_effect_
	mov dword [ebp-0xdc], 0x7
	mov esi, [ebp-0xc4]
	mov edi, ebx
	mov ecx, 0x7
	repe cmpsb
	mov edx, 0x0
	jz RB_UploadShaderStep_580
	movzx edx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub edx, ecx
RB_UploadShaderStep_580:
	test edx, edx
	jz RB_UploadShaderStep_570
	mov dword [ebp-0xb4], 0x0
	jmp RB_UploadShaderStep_280
	add [eax], al


;Material_UploadShaders(MaterialTechniqueSet*)
Material_UploadShaders:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	mov eax, r_preloadShaders
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz Material_UploadShaders_10
	mov byte [edx+0x5], 0x0
	mov eax, [mtlUploadGlob+0x1008]
	and eax, 0x3ff
	mov [eax*4+mtlUploadGlob], edx
	mov eax, [mtlUploadGlob+0x1008]
	add eax, 0x1
	mov [mtlUploadGlob+0x1008], eax
Material_UploadShaders_10:
	pop ebp
	ret
	nop


;Material_ClearShaderUploadList()
Material_ClearShaderUploadList:
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

