;Imports of r_warn:
	extern _Z18Dvar_RegisterFloatPKcffftS0_
	extern rg
	extern vsnprintf
	extern _Z16Com_PrintWarningiPKcz
	extern _Z16Sys_Millisecondsv

;Exports of r_warn:
	global r_warningRepeatDelay
	global s_warnFormat
	global s_warnCount
	global _ZZ17R_UpdateFrameRatevE8previous
	global _ZZ17R_UpdateFrameRatevE10frameCount
	global _ZZ17R_UpdateFrameRatevE9frameRate
	global _Z15R_WarnInitDvarsv
	global _Z18R_WarnOncePerFrame14GfxWarningTypez


SECTION .text


;R_WarnInitDvars()
_Z15R_WarnInitDvarsv:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	mov dword [esp+0x14], _cstring_number_of_second
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x41f00000
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x40a00000
	mov dword [esp], _cstring_r_warningrepeatd
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [r_warningRepeatDelay], eax
	leave
	ret
	nop


;R_WarnOncePerFrame(GfxWarningType, ...)
_Z18R_WarnOncePerFrame14GfxWarningTypez:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x420
	mov esi, [ebp+0x8]
	mov ebx, rg
	mov edx, [ebx+0x15c]
	mov eax, [_ZZ17R_UpdateFrameRatevE10frameCount]
	cmp edx, eax
	jz _Z18R_WarnOncePerFrame14GfxWarningTypez_10
	test eax, eax
	jz _Z18R_WarnOncePerFrame14GfxWarningTypez_20
	add eax, 0x1
	cmp edx, eax
	jz _Z18R_WarnOncePerFrame14GfxWarningTypez_30
_Z18R_WarnOncePerFrame14GfxWarningTypez_70:
	mov dword [_ZZ17R_UpdateFrameRatevE9frameRate], 0x0
_Z18R_WarnOncePerFrame14GfxWarningTypez_50:
	mov eax, [ebx+0x15c]
	mov [_ZZ17R_UpdateFrameRatevE10frameCount], eax
	mov edx, eax
_Z18R_WarnOncePerFrame14GfxWarningTypez_10:
	movss xmm0, dword [_ZZ17R_UpdateFrameRatevE9frameRate]
	cmp [esi*4+s_warnCount], edx
	jae _Z18R_WarnOncePerFrame14GfxWarningTypez_40
	mov eax, [r_warningRepeatDelay]
	mulss xmm0, [eax+0xc]
	cvttss2si eax, xmm0
	lea eax, [edx+eax]
	mov [esi*4+s_warnCount], eax
	lea eax, [ebp+0xc]
	mov [ebp-0xc], eax
	mov [esp+0xc], eax
	mov eax, [esi*4+s_warnFormat]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x400
	lea ebx, [ebp-0x40c]
	mov [esp], ebx
	call vsnprintf
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_s
	mov dword [esp], 0x8
	call _Z16Com_PrintWarningiPKcz
_Z18R_WarnOncePerFrame14GfxWarningTypez_40:
	add esp, 0x420
	pop ebx
	pop esi
	pop ebp
	ret
_Z18R_WarnOncePerFrame14GfxWarningTypez_20:
	call _Z16Sys_Millisecondsv
	mov [_ZZ17R_UpdateFrameRatevE8previous], eax
	jmp _Z18R_WarnOncePerFrame14GfxWarningTypez_50
_Z18R_WarnOncePerFrame14GfxWarningTypez_30:
	call _Z16Sys_Millisecondsv
	mov edx, eax
	sub edx, [_ZZ17R_UpdateFrameRatevE8previous]
	mov [_ZZ17R_UpdateFrameRatevE8previous], eax
	cmp edx, 0x0
	jz _Z18R_WarnOncePerFrame14GfxWarningTypez_60
	jl _Z18R_WarnOncePerFrame14GfxWarningTypez_70
	cvtsi2ss xmm1, edx
_Z18R_WarnOncePerFrame14GfxWarningTypez_80:
	movss xmm0, dword [_float_1000_00000000]
	divss xmm0, xmm1
	movss [_ZZ17R_UpdateFrameRatevE9frameRate], xmm0
	mov ebx, rg
	jmp _Z18R_WarnOncePerFrame14GfxWarningTypez_50
_Z18R_WarnOncePerFrame14GfxWarningTypez_60:
	movss xmm1, dword [_float_1_00000000]
	jmp _Z18R_WarnOncePerFrame14GfxWarningTypez_80
	add [eax], al


;Initialized global or static variables of r_warn:
SECTION .data
s_warnFormat: dd _cstring_entity_buffer_ex, _cstring_too_many_existin, _cstring_too_many_existin1, _cstring_model_light_cach, _cstring_too_many_scene_e, _cstring_temp_skin_buf_si, _cstring_r_max_skinned_ca, _cstring_max_scene_surfs_, _cstring_portal_plane_buf, _cstring_gfx_particle_clo, _cstring_max_added_dlight, _cstring_too_many_visible, _cstring_max_drawsurfs327, _cstring_gfx_code_mesh_li, _cstring_gfx_mark_mesh_li, _cstring_max_scene_drawsu, _cstring_max_fx_drawsurfs, _cstring_non_effect_mater, _cstring_non_impact_mark_, _cstring_prim_draw_surf_b, _cstring_command_buffer_o, _cstring_missing_decl_s_t, _cstring_max_dyn_ent_refs, _cstring_max_scene_dobj_r, _cstring_max_scene_model_, _cstring_max_scene_brush_, _cstring_gfx_code_mesh_in, _cstring_gfx_code_mesh_ve, _cstring_gfx_code_mesh_ar, _cstring_gfx_mark_mesh_in, _cstring_gfx_mark_mesh_ve, _cstring_out_of_debug_mem, _cstring_fx_spot_light_li, _cstring_fx_elem_limit204, _cstring_unknown_static_m, _cstring_unknown_xmodel_s, _cstring_dynamic_index_bu, _cstring_too_many_light_g, _cstring_fogable_material, _cstring_fogable_material1


;Initialized constant data of r_warn:
SECTION .rdata


;Zero initialized global or static variables of r_warn:
SECTION .bss
r_warningRepeatDelay: resb 0x20
s_warnCount: resb 0xa0
_ZZ17R_UpdateFrameRatevE8previous: resb 0x4
_ZZ17R_UpdateFrameRatevE10frameCount: resb 0x4
_ZZ17R_UpdateFrameRatevE9frameRate: resb 0x38


;All cstrings:
SECTION .rdata
_cstring_number_of_second:		db "Number of seconds after displaying a ",22h,"per-frame",22h," warning before it will display again",0
_cstring_r_warningrepeatd:		db "r_warningRepeatDelay",0
_cstring_s:		db "%s",0
_cstring_entity_buffer_ex:		db "entity buffer exceeded - not drawing model",0ah,0
_cstring_too_many_existin:		db "too many existing models (more than %i)",0ah,0
_cstring_too_many_existin1:		db "too many existing special models (more than %i)",0ah,0
_cstring_model_light_cach:		db "model light cache alloc failed - not drawing model",0ah,0
_cstring_too_many_scene_e:		db "too many scene entities (more than %i)",0ah,0
_cstring_temp_skin_buf_si:		db "TEMP_SKIN_BUF_SIZE exceeded - not skinning surface",0ah,0
_cstring_r_max_skinned_ca:		db "R_MAX_SKINNED_CACHE_VERTICES((1024 * 144)) exceeded - not drawing surface",0ah,0
_cstring_max_scene_surfs_:		db "MAX_SCENE_SURFS_SIZE(131072) exceeded - not drawing surface",0ah,0
_cstring_portal_plane_buf:		db "Portal plane buffer full - flushing",0ah,0
_cstring_gfx_particle_clo:		db "GFX_PARTICLE_CLOUD_LIMIT(256) exceeded - not drawing particle cloud",0ah,0
_cstring_max_added_dlight:		db "MAX_ADDED_DLIGHTS(32) exceeded.",0ah,0
_cstring_too_many_visible:		db "Too many visible static models - not drawing static model",0ah,0
_cstring_max_drawsurfs327:		db "MAX_DRAWSURFS(32768) exceeded - not drawing geometry",0ah,0
_cstring_gfx_code_mesh_li:		db "GFX_CODE_MESH_LIMIT(2048) exceeded - not drawing code mesh",0ah,0
_cstring_gfx_mark_mesh_li:		db "GFX_MARK_MESH_LIMIT(1536) exceeded - not drawing mark mesh",0ah,0
_cstring_max_scene_drawsu:		db "Max scene drawsurfs exceed from %s - not drawing surface",0ah,0
_cstring_max_fx_drawsurfs:		db "Max fx drawsurfs %i exceed for region %i - not drawing surface",0ah,0
_cstring_non_effect_mater:		db "non effect material ",27h,"%s",27h," used for effect (or code geom) ",27h,"%s",27h,0ah,0
_cstring_non_impact_mark_:		db "non impact mark material ",27h,"%s",27h," used for impact mark",0ah,0
_cstring_prim_draw_surf_b:		db "PRIM_DRAW_SURF_BUFFER_SIZE((128 * 512)) exceeded - not drawing surface",0ah,0
_cstring_command_buffer_o:		db "command buffer overflow - not drawing surface",0ah,0
_cstring_missing_decl_s_t:		db "Missing decl ",27h,"%s",27h," techset ",27h,"%s",27h," tech ",27h,"%s",27h," shader ",27h,"%s",27h," (ignore for debug settings).",0ah,0
_cstring_max_dyn_ent_refs:		db "Max dyn ent refs exceeded",0ah,0
_cstring_max_scene_dobj_r:		db "Max scene dobj refs (%i) exceeded",0ah,0
_cstring_max_scene_model_:		db "Max scene model refs (%i) exceeded",0ah,0
_cstring_max_scene_brush_:		db "Max scene brush refs (%i) exceeded",0ah,0
_cstring_gfx_code_mesh_in:		db "GFX_CODE_MESH_INDEX_LIMIT((2048 * 6 * 2)) exceeded",0ah,0
_cstring_gfx_code_mesh_ve:		db "GFX_CODE_MESH_VERT_LIMIT((2048 * 4 * 2)) exceeded",0ah,0
_cstring_gfx_code_mesh_ar:		db "GFX_CODE_MESH_ARGS_LIMIT(256) exceeded",0ah,0
_cstring_gfx_mark_mesh_in:		db "GFX_MARK_MESH_INDEX_LIMIT((1536 * 6)) exceeded",0ah,0
_cstring_gfx_mark_mesh_ve:		db "GFX_MARK_MESH_VERT_LIMIT((1536 * 4)) exceeded",0ah,0
_cstring_out_of_debug_mem:		db "Out of debug memory for (%s)",0ah,0
_cstring_fx_spot_light_li:		db "FX_SPOT_LIGHT_LIMIT(1) exceeded - not spawning spot light effect",0ah,0
_cstring_fx_elem_limit204:		db "FX_ELEM_LIMIT(2048) exceeded - not spawning fx elem",0ah,0
_cstring_unknown_static_m:		db "Unknown static model shader",0ah,0
_cstring_unknown_xmodel_s:		db "Unknown xmodel shader",0ah,0
_cstring_dynamic_index_bu:		db "DYNAMIC_INDEX_BUFFER_SIZE exceeded - speed warning",0ah,0
_cstring_too_many_light_g:		db "Too many light grid points",0ah,0
_cstring_fogable_material:		db "Fogable material ",27h,"%s",27h," used for 2D text ",27h,"%s",27h,0ah,0
_cstring_fogable_material1:		db "Fogable material ",27h,"%s",27h," used for 2D glyph",0ah,0



;All constant floats and doubles:
SECTION .rdata
_float_1000_00000000:		dd 0x447a0000	; 1000
_float_1_00000000:		dd 0x3f800000	; 1

