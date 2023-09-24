;Imports of bg_perks_mp:
	extern _Z18Dvar_RegisterFloatPKcffftS0_
	extern _Z19Dvar_RegisterStringPKcS0_tS0_
	extern _Z9I_stricmpPKcS0_

;Exports of bg_perks_mp:
	global bg_perkNames
	global _Z19Perks_RegisterDvarsv
	global _Z22BG_GetPerkIndexForNamePKc
	global perk_sprintMultiplier
	global perk_extraBreath
	global perk_weapRateMultiplier
	global perk_weapReloadMultiplier
	global perk_weapSpreadMultiplier
	global perk_bulletPenetrationMultiplier
	global perk_grenadeDeath
	global perk_parabolicAngle
	global perk_parabolicIcon
	global perk_parabolicRadius


SECTION .text


;Perks_RegisterDvars()
_Z19Perks_RegisterDvarsv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov dword [esp+0x14], _cstring_percentage_of_we
	mov dword [esp+0x10], 0x80
	mov ebx, 0x3f800000
	mov [esp+0xc], ebx
	xor esi, esi
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x3f266666
	mov dword [esp], _cstring_perk_weapspreadm
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [perk_weapSpreadMultiplier], eax
	mov dword [esp+0x14], _cstring_percentage_of_we1
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], ebx
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x3f000000
	mov dword [esp], _cstring_perk_weapreloadm
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [perk_weapReloadMultiplier], eax
	mov dword [esp+0x14], _cstring_percentage_of_we2
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], ebx
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x3f400000
	mov dword [esp], _cstring_perk_weapratemul
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [perk_weapRateMultiplier], eax
	mov dword [esp+0x14], _cstring_number_of_extra_
	mov dword [esp+0x10], 0x80
	mov ebx, 0x7f7fffff
	mov [esp+0xc], ebx
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x40a00000
	mov dword [esp], _cstring_perk_extrabreath
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [perk_extraBreath], eax
	mov dword [esp+0x14], _cstring_multiplier_for_e
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x41f00000
	mov [esp+0x8], esi
	mov edi, 0x40000000
	mov [esp+0x4], edi
	mov dword [esp], _cstring_perk_bulletpenet
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [perk_bulletPenetrationMultiplier], eax
	mov dword [esp+0xc], _cstring_name_of_the_gren
	mov dword [esp+0x8], 0x80
	mov dword [esp+0x4], _cstring_frag_grenade_sho
	mov dword [esp], _cstring_perk_grenadedeat
	call _Z19Dvar_RegisterStringPKcS0_tS0_
	mov [perk_grenadeDeath], eax
	mov dword [esp+0x14], _cstring_eavesdrop_perks_
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], ebx
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x43c80000
	mov dword [esp], _cstring_perk_parabolicra
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [perk_parabolicRadius], eax
	mov dword [esp+0x14], _cstring_eavesdrop_perks_1
	mov dword [esp+0x10], 0x80
	mov eax, 0x43340000
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	mov [esp+0x4], eax
	mov dword [esp], _cstring_perk_parabolican
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [perk_parabolicAngle], eax
	mov dword [esp+0xc], _cstring_eavesdrop_icon_t
	mov dword [esp+0x8], 0x80
	mov dword [esp+0x4], _cstring_specialty_parabo
	mov dword [esp], _cstring_perk_parabolicic
	call _Z19Dvar_RegisterStringPKcS0_tS0_
	mov [perk_parabolicIcon], eax
	mov dword [esp+0x14], _cstring_multiplier_for_p
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], ebx
	mov [esp+0x8], esi
	mov [esp+0x4], edi
	mov dword [esp], _cstring_perk_sprintmulti
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [perk_sprintMultiplier], eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	add [eax], al


;BG_GetPerkIndexForName(char const*)
_Z22BG_GetPerkIndexForNamePKc:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0x8]
	test edi, edi
	jz _Z22BG_GetPerkIndexForNamePKc_10
	xor esi, esi
	mov ebx, bg_perkNames
	jmp _Z22BG_GetPerkIndexForNamePKc_20
_Z22BG_GetPerkIndexForNamePKc_30:
	add esi, 0x1
	add ebx, 0x4
	cmp esi, 0x14
	jz _Z22BG_GetPerkIndexForNamePKc_10
_Z22BG_GetPerkIndexForNamePKc_20:
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z22BG_GetPerkIndexForNamePKc_30
	mov eax, esi
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z22BG_GetPerkIndexForNamePKc_10:
	mov esi, 0x14
	mov eax, esi
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Initialized global or static variables of bg_perks_mp:
SECTION .data
bg_perkNames: dd _cstring_specialty_gpsjam, _cstring_specialty_bullet, _cstring_specialty_fastre, _cstring_specialty_rof, _cstring_specialty_holdbr, _cstring_specialty_bullet1, _cstring_specialty_grenad, _cstring_specialty_pistol, _cstring_specialty_quiete, _cstring_specialty_parabo, _cstring_specialty_longer, _cstring_specialty_detect, _cstring_specialty_explos, _cstring_specialty_expose, _cstring_specialty_bullet2, _cstring_specialty_extraa, _cstring_specialty_twopri, _cstring_specialty_armorv, _cstring_specialty_fraggr, _cstring_specialty_specia, 0x0, 0x0, 0x0, 0x0


;Initialized constant data of bg_perks_mp:
SECTION .rdata


;Zero initialized global or static variables of bg_perks_mp:
SECTION .bss
perk_sprintMultiplier: resb 0x4
perk_extraBreath: resb 0x4
perk_weapRateMultiplier: resb 0x4
perk_weapReloadMultiplier: resb 0x4
perk_weapSpreadMultiplier: resb 0x7c
perk_bulletPenetrationMultiplier: resb 0x4
perk_grenadeDeath: resb 0x4
perk_parabolicAngle: resb 0x4
perk_parabolicIcon: resb 0x4
perk_parabolicRadius: resb 0x4


;All cstrings:
SECTION .rdata
_cstring_percentage_of_we:		db "Percentage of weapon spread to use",0
_cstring_perk_weapspreadm:		db "perk_weapSpreadMultiplier",0
_cstring_percentage_of_we1:		db "Percentage of weapon reload time to use",0
_cstring_perk_weapreloadm:		db "perk_weapReloadMultiplier",0
_cstring_percentage_of_we2:		db "Percentage of weapon firing rate to use",0
_cstring_perk_weapratemul:		db "perk_weapRateMultiplier",0
_cstring_number_of_extra_:		db "Number of extra seconds a player can hold his breath",0
_cstring_perk_extrabreath:		db "perk_extraBreath",0
_cstring_multiplier_for_e:		db "Multiplier for extra bullet penetration",0
_cstring_perk_bulletpenet:		db "perk_bulletPenetrationMultiplier",0
_cstring_name_of_the_gren:		db "Name of the grenade weapon to drop",0
_cstring_frag_grenade_sho:		db "frag_grenade_short_mp",0
_cstring_perk_grenadedeat:		db "perk_grenadeDeath",0
_cstring_eavesdrop_perks_:		db "Eavesdrop perk",27h,"s effective radius",0
_cstring_perk_parabolicra:		db "perk_parabolicRadius",0
_cstring_eavesdrop_perks_1:		db "Eavesdrop perk",27h,"s effective FOV angle",0
_cstring_perk_parabolican:		db "perk_parabolicAngle",0
_cstring_eavesdrop_icon_t:		db "Eavesdrop icon to use when displaying eavesdropped voice chats",0
_cstring_specialty_parabo:		db "specialty_parabolic",0
_cstring_perk_parabolicic:		db "perk_parabolicIcon",0
_cstring_multiplier_for_p:		db "Multiplier for player_sprinttime",0
_cstring_perk_sprintmulti:		db "perk_sprintMultiplier",0
_cstring_specialty_gpsjam:		db "specialty_gpsjammer",0
_cstring_specialty_bullet:		db "specialty_bulletaccuracy",0
_cstring_specialty_fastre:		db "specialty_fastreload",0
_cstring_specialty_rof:		db "specialty_rof",0
_cstring_specialty_holdbr:		db "specialty_holdbreath",0
_cstring_specialty_bullet1:		db "specialty_bulletpenetration",0
_cstring_specialty_grenad:		db "specialty_grenadepulldeath",0
_cstring_specialty_pistol:		db "specialty_pistoldeath",0
_cstring_specialty_quiete:		db "specialty_quieter",0
_cstring_specialty_longer:		db "specialty_longersprint",0
_cstring_specialty_detect:		db "specialty_detectexplosive",0
_cstring_specialty_explos:		db "specialty_explosivedamage",0
_cstring_specialty_expose:		db "specialty_exposeenemy",0
_cstring_specialty_bullet2:		db "specialty_bulletdamage",0
_cstring_specialty_extraa:		db "specialty_extraammo",0
_cstring_specialty_twopri:		db "specialty_twoprimaries",0
_cstring_specialty_armorv:		db "specialty_armorvest",0
_cstring_specialty_fraggr:		db "specialty_fraggrenade",0
_cstring_specialty_specia:		db "specialty_specialgrenade",0



;All constant floats and doubles:
SECTION .rdata

