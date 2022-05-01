;Imports of r_sky:
	extern sunFlareArray
	extern cmd_args
	extern _Z10Com_PrintfiPKcz
	extern sv_cheats
	extern rgp
	extern _Z21Com_SaveDvarsToBufferPPKcjPcj
	extern _Z2vaPKcz
	extern _Z12FS_WriteFilePKcPKvi
	extern _Z23Material_RegisterHandlePKci
	extern cos
	extern floorf
	extern _Z12AngleVectorsPKfPfS1_S1_
	extern _Z19Dvar_RegisterStringPKcS0_tS0_
	extern _Z18Dvar_RegisterFloatPKcffftS0_
	extern _Z17Dvar_RegisterVec3PKcffffftS0_
	extern FS_ReadFile
	extern _Z23Com_LoadDvarsFromBufferPPKcjS0_S0_
	extern FS_FreeFile

;Exports of r_sky:
	global _Z10R_FlushSunv
	global _Z13R_Cmd_LoadSunv
	global _Z13R_Cmd_SaveSunv
	global _Z17R_SetSunFromDvarsP10sunflare_t
	global _Z18R_RegisterSunDvarsv
	global _Z21R_LoadSunThroughDvarsPKcP10sunflare_t
	global r_sun_fx_position
	global r_sunblind_fadein
	global r_sunblind_fadeout
	global r_sunblind_max_angle
	global r_sunblind_max_darken
	global r_sunblind_min_angle
	global r_sunflare_fadein
	global r_sunflare_fadeout
	global r_sunflare_max_alpha
	global r_sunflare_max_angle
	global r_sunflare_max_size
	global r_sunflare_min_angle
	global r_sunflare_min_size
	global r_sunflare_shader
	global r_sunglare_fadein
	global r_sunglare_fadeout
	global r_sunglare_max_angle
	global r_sunglare_max_lighten
	global r_sunglare_min_angle
	global r_sunsprite_shader
	global r_sunsprite_size
	global sunDvarNames


SECTION .text


;R_FlushSun()
_Z10R_FlushSunv:
	push ebp
	mov ebp, esp
	xor edx, edx
	mov eax, sunFlareArray
_Z10R_FlushSunv_10:
	mov dword [eax+0x4], 0x0
	mov dword [eax+0x8], 0x0
	mov dword [eax], 0x0
	mov dword [eax+0x24], 0x0
	mov dword [eax+0x14], 0x0
	mov dword [eax+0xc], 0x0
	mov dword [eax+0x10], 0x0
	add edx, 0x1
	add eax, 0x28
	cmp edx, 0x4
	jnz _Z10R_FlushSunv_10
	pop ebp
	ret
	nop


;R_Cmd_LoadSun()
_Z13R_Cmd_LoadSunv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov edx, cmd_args
	mov ecx, [edx]
	cmp dword [edx+ecx*4+0x44], 0x2
	jz _Z13R_Cmd_LoadSunv_10
	mov dword [esp+0x4], _cstring_usage_r_loadsun_
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
	leave
	ret
_Z13R_Cmd_LoadSunv_10:
	mov eax, sv_cheats
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z13R_Cmd_LoadSunv_20
	mov eax, rgp
	mov eax, [eax+0x20a0]
	test eax, eax
	jz _Z13R_Cmd_LoadSunv_30
	add eax, 0x17c
	mov [esp+0x4], eax
	mov eax, [edx+ecx*4+0x64]
	mov eax, [eax+0x4]
	mov [esp], eax
	call _Z21R_LoadSunThroughDvarsPKcP10sunflare_t
	leave
	ret
_Z13R_Cmd_LoadSunv_20:
	mov dword [esp+0x4], _cstring_you_must_have_ch
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
	leave
	ret
_Z13R_Cmd_LoadSunv_30:
	mov dword [esp+0x4], _cstring_you_cant_r_loads
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
	leave
	ret
	add [eax], al


;R_Cmd_SaveSun()
_Z13R_Cmd_SaveSunv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x201c
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x2
	jz _Z13R_Cmd_SaveSunv_10
	mov dword [esp+0x4], _cstring_usage_r_savesun_
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
_Z13R_Cmd_SaveSunv_20:
	add esp, 0x201c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z13R_Cmd_SaveSunv_10:
	mov eax, [eax+edx*4+0x64]
	mov esi, [eax+0x4]
	mov dword [esp+0xc], 0x2000
	lea ebx, [ebp-0x2018]
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x15
	mov dword [esp], sunDvarNames
	call _Z21Com_SaveDvarsToBufferPPKcjPcj
	test eax, eax
	jz _Z13R_Cmd_SaveSunv_20
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, ebx
	repne scasb
	not ecx
	lea edi, [ecx-0x1]
	mov [esp+0x4], esi
	mov dword [esp], _cstring_sunssun
	call _Z2vaPKcz
	mov [esp+0x8], edi
	mov [esp+0x4], ebx
	mov [esp], eax
	call _Z12FS_WriteFilePKcPKvi
	add esp, 0x201c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;R_SetSunFromDvars(sunflare_t*)
_Z17R_SetSunFromDvarsP10sunflare_t:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x64
	mov ebx, [ebp+0x8]
	mov dword [esp+0x4], 0x6
	mov eax, [r_sunsprite_shader]
	mov eax, [eax+0xc]
	mov [esp], eax
	call _Z23Material_RegisterHandlePKci
	mov [ebx+0x4], eax
	mov eax, [r_sunsprite_size]
	mov eax, [eax+0xc]
	mov [ebx+0xc], eax
	mov dword [esp+0x4], 0x6
	mov eax, [r_sunflare_shader]
	mov eax, [eax+0xc]
	mov [esp], eax
	call _Z23Material_RegisterHandlePKci
	mov [ebx+0x8], eax
	mov eax, [r_sunflare_min_size]
	movss xmm0, dword [eax+0xc]
	mulss xmm0, [_float_0_50000000]
	movss [ebx+0x10], xmm0
	mov eax, [r_sunflare_min_angle]
	cvtss2sd xmm0, [eax+0xc]
	mulsd xmm0, [_double_0_01745329]
	movsd [esp], xmm0
	call cos
	fstp qword [ebp-0x10]
	cvtsd2ss xmm0, [ebp-0x10]
	movss [ebx+0x14], xmm0
	mov eax, [r_sunflare_max_size]
	movss xmm0, dword [eax+0xc]
	mulss xmm0, [_float_0_50000000]
	movss [ebx+0x18], xmm0
	mov eax, [r_sunflare_max_angle]
	cvtss2sd xmm0, [eax+0xc]
	mulsd xmm0, [_double_0_01745329]
	movsd [esp], xmm0
	call cos
	fstp qword [ebp-0x18]
	cvtsd2ss xmm0, [ebp-0x18]
	movss [ebx+0x1c], xmm0
	mov eax, [r_sunflare_max_alpha]
	mov eax, [eax+0xc]
	mov [ebx+0x20], eax
	mov eax, [r_sunflare_fadein]
	movss xmm0, dword [eax+0xc]
	mulss xmm0, [_float_1000_00000000]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x1c]
	cvttss2si eax, [ebp-0x1c]
	mov [ebx+0x24], eax
	mov eax, [r_sunflare_fadeout]
	movss xmm0, dword [eax+0xc]
	mulss xmm0, [_float_1000_00000000]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x20]
	cvttss2si eax, [ebp-0x20]
	mov [ebx+0x28], eax
	mov eax, [r_sunblind_min_angle]
	cvtss2sd xmm0, [eax+0xc]
	mulsd xmm0, [_double_0_01745329]
	movsd [esp], xmm0
	call cos
	fstp qword [ebp-0x28]
	cvtsd2ss xmm0, [ebp-0x28]
	movss [ebx+0x2c], xmm0
	mov eax, [r_sunblind_max_angle]
	cvtss2sd xmm0, [eax+0xc]
	mulsd xmm0, [_double_0_01745329]
	movsd [esp], xmm0
	call cos
	fstp qword [ebp-0x30]
	cvtsd2ss xmm0, [ebp-0x30]
	movss [ebx+0x30], xmm0
	mov eax, [r_sunblind_max_darken]
	mov eax, [eax+0xc]
	mov [ebx+0x34], eax
	mov eax, [r_sunblind_fadein]
	movss xmm0, dword [eax+0xc]
	mulss xmm0, [_float_1000_00000000]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x34]
	cvttss2si eax, [ebp-0x34]
	mov [ebx+0x38], eax
	mov eax, [r_sunblind_fadeout]
	movss xmm0, dword [eax+0xc]
	mulss xmm0, [_float_1000_00000000]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x38]
	cvttss2si eax, [ebp-0x38]
	mov [ebx+0x3c], eax
	mov eax, [r_sunglare_min_angle]
	cvtss2sd xmm0, [eax+0xc]
	mulsd xmm0, [_double_0_01745329]
	movsd [esp], xmm0
	call cos
	fstp qword [ebp-0x40]
	cvtsd2ss xmm0, [ebp-0x40]
	movss [ebx+0x40], xmm0
	mov eax, [r_sunglare_max_angle]
	cvtss2sd xmm0, [eax+0xc]
	mulsd xmm0, [_double_0_01745329]
	movsd [esp], xmm0
	call cos
	fstp qword [ebp-0x48]
	cvtsd2ss xmm0, [ebp-0x48]
	movss [ebx+0x44], xmm0
	mov eax, [r_sunglare_max_lighten]
	mov eax, [eax+0xc]
	mov [ebx+0x48], eax
	mov eax, [r_sunglare_fadein]
	movss xmm0, dword [eax+0xc]
	mulss xmm0, [_float_1000_00000000]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x4c]
	cvttss2si eax, [ebp-0x4c]
	mov [ebx+0x4c], eax
	movss xmm0, dword [_float_1000_00000000]
	mov eax, [r_sunglare_fadeout]
	mulss xmm0, [eax+0xc]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x50]
	cvttss2si eax, [ebp-0x50]
	mov [ebx+0x50], eax
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	lea eax, [ebx+0x54]
	mov [esp+0x4], eax
	mov eax, [r_sun_fx_position]
	add eax, 0xc
	mov [esp], eax
	call _Z12AngleVectorsPKfPfS1_S1_
	mov byte [ebx], 0x1
	add esp, 0x64
	pop ebx
	pop ebp
	ret


;R_RegisterSunDvars()
_Z18R_RegisterSunDvarsv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov dword [esp+0xc], _cstring_name_for_static_
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _cstring_sun
	mov dword [esp], _cstring_r_sunsprite_shad
	call _Z19Dvar_RegisterStringPKcS0_tS0_
	mov [r_sunsprite_shader], eax
	mov dword [esp+0x14], _cstring_diameter_in_pixe
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x447a0000
	mov dword [esp+0x8], 0x3f800000
	mov dword [esp+0x4], 0x41800000
	mov dword [esp], _cstring_r_sunsprite_size
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [r_sunsprite_size], eax
	mov dword [esp+0xc], _cstring_name_for_flare_e
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _cstring_sun_flare
	mov dword [esp], _cstring_r_sunflare_shade
	call _Z19Dvar_RegisterStringPKcS0_tS0_
	mov [r_sunflare_shader], eax
	mov dword [esp+0x14], _cstring_smallest_size_of
	mov dword [esp+0x10], 0x0
	mov edi, 0x461c4000
	mov [esp+0xc], edi
	xor ebx, ebx
	mov [esp+0x8], ebx
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_r_sunflare_min_s
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [r_sunflare_min_size], eax
	mov dword [esp+0x14], _cstring_angle_from_sun_i
	mov dword [esp+0x10], 0x0
	mov esi, 0x42b40000
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x42340000
	mov dword [esp], _cstring_r_sunflare_min_a
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [r_sunflare_min_angle], eax
	mov dword [esp+0x14], _cstring_largest_size_of_
	mov dword [esp+0x10], 0x0
	mov [esp+0xc], edi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x451c4000
	mov dword [esp], _cstring_r_sunflare_max_s
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [r_sunflare_max_size], eax
	mov dword [esp+0x14], _cstring_angle_from_sun_i1
	mov dword [esp+0x10], 0x0
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x40000000
	mov dword [esp], _cstring_r_sunflare_max_a
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [r_sunflare_max_angle], eax
	mov dword [esp+0x14], _cstring_01_vertex_color_
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x3f800000
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x3f800000
	mov dword [esp], _cstring_r_sunflare_max_a1
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [r_sunflare_max_alpha], eax
	mov dword [esp+0x14], _cstring_time_in_seconds_
	mov dword [esp+0x10], 0x0
	mov edi, 0x42700000
	mov [esp+0xc], edi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x3f800000
	mov dword [esp], _cstring_r_sunflare_fadei
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [r_sunflare_fadein], eax
	mov dword [esp+0x14], _cstring_time_in_seconds_1
	mov dword [esp+0x10], 0x0
	mov [esp+0xc], edi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x3f800000
	mov dword [esp], _cstring_r_sunflare_fadeo
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [r_sunflare_fadeout], eax
	mov dword [esp+0x14], _cstring_angle_from_sun_i2
	mov dword [esp+0x10], 0x0
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x41f00000
	mov dword [esp], _cstring_r_sunblind_min_a
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [r_sunblind_min_angle], eax
	mov dword [esp+0x14], _cstring_angle_from_sun_i3
	mov dword [esp+0x10], 0x0
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x40a00000
	mov dword [esp], _cstring_r_sunblind_max_a
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [r_sunblind_max_angle], eax
	mov dword [esp+0x14], _cstring_01_fraction_for_
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x3f800000
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x3f400000
	mov dword [esp], _cstring_r_sunblind_max_d
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [r_sunblind_max_darken], eax
	mov dword [esp+0x14], _cstring_time_in_seconds_2
	mov dword [esp+0x10], 0x0
	mov [esp+0xc], edi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x3f000000
	mov dword [esp], _cstring_r_sunblind_fadei
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [r_sunblind_fadein], eax
	mov dword [esp+0x14], _cstring_time_in_seconds_3
	mov dword [esp+0x10], 0x0
	mov [esp+0xc], edi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x40400000
	mov dword [esp], _cstring_r_sunblind_fadeo
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [r_sunblind_fadeout], eax
	mov dword [esp+0x14], _cstring_angle_from_sun_i4
	mov dword [esp+0x10], 0x0
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x41f00000
	mov dword [esp], _cstring_r_sunglare_min_a
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [r_sunglare_min_angle], eax
	mov dword [esp+0x14], _cstring_angle_from_sun_i5
	mov dword [esp+0x10], 0x0
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x40a00000
	mov dword [esp], _cstring_r_sunglare_max_a
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [r_sunglare_max_angle], eax
	mov dword [esp+0x14], _cstring_01_fraction_for_1
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x3f800000
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x3f400000
	mov dword [esp], _cstring_r_sunglare_max_l
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [r_sunglare_max_lighten], eax
	mov dword [esp+0x14], _cstring_time_in_seconds_4
	mov dword [esp+0x10], 0x0
	mov [esp+0xc], edi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x3f000000
	mov dword [esp], _cstring_r_sunglare_fadei
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [r_sunglare_fadein], eax
	mov dword [esp+0x14], _cstring_time_in_seconds_5
	mov dword [esp+0x10], 0x0
	mov [esp+0xc], edi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x40400000
	mov dword [esp], _cstring_r_sunglare_fadeo
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [r_sunglare_fadeout], eax
	mov dword [esp+0x1c], _cstring_position_in_degr
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0x43b40000
	mov dword [esp+0x10], 0xc3b40000
	mov [esp+0xc], ebx
	mov [esp+0x8], ebx
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_r_sun_fx_positio
	call _Z17Dvar_RegisterVec3PKcffffftS0_
	mov [r_sun_fx_position], eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;R_LoadSunThroughDvars(char const*, sunflare_t*)
_Z21R_LoadSunThroughDvarsPKcP10sunflare_t:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_sunssun
	call _Z2vaPKcz
	mov ebx, eax
	lea eax, [ebp-0xc]
	mov [esp+0x4], eax
	mov [esp], ebx
	call FS_ReadFile
	test eax, eax
	js _Z21R_LoadSunThroughDvarsPKcP10sunflare_t_10
	mov [esp+0xc], ebx
	mov eax, [ebp-0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x15
	mov dword [esp], sunDvarNames
	call _Z23Com_LoadDvarsFromBufferPPKcjS0_S0_
	test eax, eax
	jnz _Z21R_LoadSunThroughDvarsPKcP10sunflare_t_20
_Z21R_LoadSunThroughDvarsPKcP10sunflare_t_30:
	mov eax, [ebp-0xc]
	mov [esp], eax
	call FS_FreeFile
	add esp, 0x24
	pop ebx
	pop ebp
	ret
_Z21R_LoadSunThroughDvarsPKcP10sunflare_t_20:
	mov eax, [ebp+0xc]
	mov [esp], eax
	call _Z17R_SetSunFromDvarsP10sunflare_t
	jmp _Z21R_LoadSunThroughDvarsPKcP10sunflare_t_30
_Z21R_LoadSunThroughDvarsPKcP10sunflare_t_10:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_warning_couldnt_
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
	add esp, 0x24
	pop ebx
	pop ebp
	ret


;Initialized global or static variables of r_sky:
SECTION .data
sunDvarNames: dd _cstring_r_sunsprite_shad, _cstring_r_sunsprite_size, _cstring_r_sunflare_shade, _cstring_r_sunflare_min_s, _cstring_r_sunflare_min_a, _cstring_r_sunflare_max_s, _cstring_r_sunflare_max_a, _cstring_r_sunflare_max_a1, _cstring_r_sunflare_fadei, _cstring_r_sunflare_fadeo, _cstring_r_sunblind_min_a, _cstring_r_sunblind_max_a, _cstring_r_sunblind_max_d, _cstring_r_sunblind_fadei, _cstring_r_sunblind_fadeo, _cstring_r_sunglare_min_a, _cstring_r_sunglare_max_a, _cstring_r_sunglare_max_l, _cstring_r_sunglare_fadei, _cstring_r_sunglare_fadeo, _cstring_r_sun_fx_positio, 0x0, 0x0, 0x0


;Initialized constant data of r_sky:
SECTION .rdata


;Zero initialized global or static variables of r_sky:
SECTION .bss
r_sun_fx_position: resb 0x4
r_sunblind_fadein: resb 0x4
r_sunblind_fadeout: resb 0x4
r_sunblind_max_angle: resb 0x4
r_sunblind_max_darken: resb 0x4
r_sunblind_min_angle: resb 0x4
r_sunflare_fadein: resb 0x4
r_sunflare_fadeout: resb 0x4
r_sunflare_max_alpha: resb 0x4
r_sunflare_max_angle: resb 0x4
r_sunflare_max_size: resb 0x4
r_sunflare_min_angle: resb 0x4
r_sunflare_min_size: resb 0x4
r_sunflare_shader: resb 0x4
r_sunglare_fadein: resb 0x4
r_sunglare_fadeout: resb 0x4
r_sunglare_max_angle: resb 0x4
r_sunglare_max_lighten: resb 0x4
r_sunglare_min_angle: resb 0x4
r_sunsprite_shader: resb 0x2c
r_sunsprite_size: resb 0x4


;All cstrings:
SECTION .rdata
_cstring_usage_r_loadsun_:		db "USAGE: r_loadsun <sunname>",0ah,"  sunname must not have an extension",0ah,0
_cstring_you_must_have_ch:		db "You must have cheats enabled to use r_loadsun",0ah,0
_cstring_you_cant_r_loads:		db "You can",27h,"t r_loadsun while a map isn",27h,"t loaded",0ah,0
_cstring_usage_r_savesun_:		db "USAGE: r_savesun <sunname>",0ah,"  sunname must not have an extension",0ah,0
_cstring_sunssun:		db "sun/%s.sun",0
_cstring_name_for_static_:		db "name for static sprite; can be any material",0
_cstring_sun:		db "sun",0
_cstring_r_sunsprite_shad:		db "r_sunsprite_shader",0
_cstring_diameter_in_pixe:		db "diameter in pixels at 640x480 and 80 fov",0
_cstring_r_sunsprite_size:		db "r_sunsprite_size",0
_cstring_name_for_flare_e:		db "name for flare effect; can be any material",0
_cstring_sun_flare:		db "sun_flare",0
_cstring_r_sunflare_shade:		db "r_sunflare_shader",0
_cstring_smallest_size_of:		db "smallest size of flare effect in pixels at 640x480",0
_cstring_r_sunflare_min_s:		db "r_sunflare_min_size",0
_cstring_angle_from_sun_i:		db "angle from sun in degrees outside which effect is 0",0
_cstring_r_sunflare_min_a:		db "r_sunflare_min_angle",0
_cstring_largest_size_of_:		db "largest size of flare effect in pixels at 640x480",0
_cstring_r_sunflare_max_s:		db "r_sunflare_max_size",0
_cstring_angle_from_sun_i1:		db "angle from sun in degrees inside which effect is max",0
_cstring_r_sunflare_max_a:		db "r_sunflare_max_angle",0
_cstring_01_vertex_color_:		db "0-1 vertex color and alpha of sun at max effect",0
_cstring_r_sunflare_max_a1:		db "r_sunflare_max_alpha",0
_cstring_time_in_seconds_:		db "time in seconds to fade alpha from 0% to 100%",0
_cstring_r_sunflare_fadei:		db "r_sunflare_fadein",0
_cstring_time_in_seconds_1:		db "time in seconds to fade alpha from 100% to 0%",0
_cstring_r_sunflare_fadeo:		db "r_sunflare_fadeout",0
_cstring_angle_from_sun_i2:		db "angle from sun in degrees outside which blinding is 0",0
_cstring_r_sunblind_min_a:		db "r_sunblind_min_angle",0
_cstring_angle_from_sun_i3:		db "angle from sun in degrees inside which blinding is max",0
_cstring_r_sunblind_max_a:		db "r_sunblind_max_angle",0
_cstring_01_fraction_for_:		db "0-1 fraction for how black the world is at max blind",0
_cstring_r_sunblind_max_d:		db "r_sunblind_max_darken",0
_cstring_time_in_seconds_2:		db "time in seconds to fade blind from 0% to 100%",0
_cstring_r_sunblind_fadei:		db "r_sunblind_fadein",0
_cstring_time_in_seconds_3:		db "time in seconds to fade blind from 100% to 0%",0
_cstring_r_sunblind_fadeo:		db "r_sunblind_fadeout",0
_cstring_angle_from_sun_i4:		db "angle from sun in degrees inside which glare is maximum",0
_cstring_r_sunglare_min_a:		db "r_sunglare_min_angle",0
_cstring_angle_from_sun_i5:		db "angle from sun in degrees inside which glare is minimum",0
_cstring_r_sunglare_max_a:		db "r_sunglare_max_angle",0
_cstring_01_fraction_for_1:		db "0-1 fraction for how white the world is at max glare",0
_cstring_r_sunglare_max_l:		db "r_sunglare_max_lighten",0
_cstring_time_in_seconds_4:		db "time in seconds to fade glare from 0% to 100%",0
_cstring_r_sunglare_fadei:		db "r_sunglare_fadein",0
_cstring_time_in_seconds_5:		db "time in seconds to fade glare from 100% to 0%",0
_cstring_r_sunglare_fadeo:		db "r_sunglare_fadeout",0
_cstring_position_in_degr:		db "Position in degrees of the sun effect",0
_cstring_r_sun_fx_positio:		db "r_sun_fx_position",0
_cstring_warning_couldnt_:		db "WARNING: couldn",27h,"t load sun file ",27h,"%s",27h,0ah,0



;All constant floats and doubles:
SECTION .rdata
_float_0_50000000:		dd 0x3f000000	; 0.5
_double_0_01745329:		dq 0x3f91df46a2529d39	; 0.0174533
_float_1000_00000000:		dd 0x447a0000	; 1000

