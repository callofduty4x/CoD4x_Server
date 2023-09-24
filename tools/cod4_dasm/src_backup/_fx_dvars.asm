;Imports of fx_dvars:
	extern _Z17Dvar_RegisterBoolPKchtS0_
	extern _Z18Dvar_RegisterFloatPKcffftS0_
	extern _Z16Dvar_RegisterIntPKciiitS0_

;Exports of fx_dvars:
	global _Z16FX_RegisterDvarsv
	global fx_cull_elem_draw
	global fx_draw
	global fx_drawClouds
	global fx_enable
	global fx_count
	global fx_cull_effect_spawn
	global fx_cull_elem_spawn
	global fx_debugBolt
	global fx_freeze
	global fx_mark_profile
	global fx_marks
	global fx_marks_ents
	global fx_marks_smodels
	global fx_profile
	global fx_visMinTraceDist


SECTION .text


;FX_RegisterDvars()
_Z16FX_RegisterDvarsv:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov dword [esp+0xc], _cstring_toggles_all_effe
	mov dword [esp+0x8], 0x80
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_fx_enable
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [fx_enable], eax
	mov dword [esp+0xc], _cstring_toggles_drawing_
	mov dword [esp+0x8], 0x80
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_fx_draw
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [fx_draw], eax
	mov dword [esp+0xc], _cstring_culls_effect_ele
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_fx_cull_elem_spa
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [fx_cull_elem_spawn], eax
	mov dword [esp+0xc], _cstring_culls_effect_ele1
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_fx_cull_elem_dra
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [fx_cull_elem_draw], eax
	mov dword [esp+0xc], _cstring_culls_entire_eff
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_fx_cull_effect_s
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [fx_cull_effect_spawn], eax
	mov dword [esp+0xc], _cstring_toggles_whether_
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_fx_marks
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [fx_marks], eax
	mov dword [esp+0xc], _cstring_toggles_whether_1
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_fx_marks_smodels
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [fx_marks_smodels], eax
	mov dword [esp+0xc], _cstring_toggles_whether_2
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_fx_marks_ents
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [fx_marks_ents], eax
	mov dword [esp+0xc], _cstring_freeze_effects
	mov dword [esp+0x8], 0x80
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_fx_freeze
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [fx_freeze], eax
	mov dword [esp+0x14], _cstring_debug_effects_bo
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x42c80000
	xor ebx, ebx
	mov [esp+0x8], ebx
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_fx_debugbolt
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [fx_debugBolt], eax
	mov dword [esp+0xc], _cstring_debug_effects_co
	mov dword [esp+0x8], 0x80
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_fx_count
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [fx_count], eax
	mov dword [esp+0x14], _cstring_minimum_visibili
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x447a0000
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x42a00000
	mov dword [esp], _cstring_fx_vismintracedi
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [fx_visMinTraceDist], eax
	mov dword [esp+0x14], _cstring_turn_on_fx_profi
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x1
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_fx_profile
	call _Z16Dvar_RegisterIntPKciiitS0_
	mov [fx_profile], eax
	mov dword [esp+0x14], _cstring_turn_on_fx_profi1
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x1
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_fx_mark_profile
	call _Z16Dvar_RegisterIntPKciiitS0_
	mov [fx_mark_profile], eax
	mov dword [esp+0xc], _cstring_toggles_the_draw
	mov dword [esp+0x8], 0x80
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_fx_drawclouds
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [fx_drawClouds], eax
	add esp, 0x24
	pop ebx
	pop ebp
	ret
	add [eax], al


;Initialized global or static variables of fx_dvars:
SECTION .data


;Initialized constant data of fx_dvars:
SECTION .rdata


;Zero initialized global or static variables of fx_dvars:
SECTION .bss
fx_cull_elem_draw: resb 0x4
fx_draw: resb 0x4
fx_drawClouds: resb 0x4
fx_enable: resb 0x48
fx_count: resb 0x4
fx_cull_effect_spawn: resb 0x4
fx_cull_elem_spawn: resb 0x4
fx_debugBolt: resb 0x4
fx_freeze: resb 0x4
fx_mark_profile: resb 0x4
fx_marks: resb 0x4
fx_marks_ents: resb 0x4
fx_marks_smodels: resb 0x4
fx_profile: resb 0x4
fx_visMinTraceDist: resb 0x4


;All cstrings:
SECTION .rdata
_cstring_toggles_all_effe:		db "Toggles all effects processing",0
_cstring_fx_enable:		db "fx_enable",0
_cstring_toggles_drawing_:		db "Toggles drawing of effects after processing",0
_cstring_fx_draw:		db "fx_draw",0
_cstring_culls_effect_ele:		db "Culls effect elems for spawning",0
_cstring_fx_cull_elem_spa:		db "fx_cull_elem_spawn",0
_cstring_culls_effect_ele1:		db "Culls effect elems for drawing",0
_cstring_fx_cull_elem_dra:		db "fx_cull_elem_draw",0
_cstring_culls_entire_eff:		db "Culls entire effects for spawning",0
_cstring_fx_cull_effect_s:		db "fx_cull_effect_spawn",0
_cstring_toggles_whether_:		db "Toggles whether bullet hits leave marks",0
_cstring_fx_marks:		db "fx_marks",0
_cstring_toggles_whether_1:		db "Toggles whether bullet hits leave marks on static models",0
_cstring_fx_marks_smodels:		db "fx_marks_smodels",0
_cstring_toggles_whether_2:		db "Toggles whether bullet hits leave marks on entities",0
_cstring_fx_marks_ents:		db "fx_marks_ents",0
_cstring_freeze_effects:		db "Freeze effects",0
_cstring_fx_freeze:		db "fx_freeze",0
_cstring_debug_effects_bo:		db "Debug effects bolt",0
_cstring_fx_debugbolt:		db "fx_debugBolt",0
_cstring_debug_effects_co:		db "Debug effects count",0
_cstring_fx_count:		db "fx_count",0
_cstring_minimum_visibili:		db "Minimum visibility trace size",0
_cstring_fx_vismintracedi:		db "fx_visMinTraceDist",0
_cstring_turn_on_fx_profi:		db "Turn on FX profiling (specify which local client, with ",27h,"1",27h," being the first.)",0
_cstring_fx_profile:		db "fx_profile",0
_cstring_turn_on_fx_profi1:		db "Turn on FX profiling for marks (specify which local client, with ",27h,"1",27h," being the first.)",0
_cstring_fx_mark_profile:		db "fx_mark_profile",0
_cstring_toggles_the_draw:		db "Toggles the drawing of particle clouds",0
_cstring_fx_drawclouds:		db "fx_drawClouds",0



;All constant floats and doubles:
SECTION .rdata

