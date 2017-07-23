;Imports of surfaceflags:
	extern Q_stricmp

;Exports of surfaceflags:
	global Com_SurfaceTypeToName
	global Com_SurfaceTypeFromName
	global infoParms


SECTION .text


;Com_SurfaceTypeToName(int)
Com_SurfaceTypeToName:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	sub eax, 0x1
	cmp eax, 0x1b
	ja Com_SurfaceTypeToName_10
	lea eax, [eax+eax*4]
	mov eax, [eax*4+infoParms]
	pop ebp
	ret
Com_SurfaceTypeToName_10:
	mov eax, _cstring_default
	pop ebp
	ret


;Com_SurfaceTypeFromName(char const*)
Com_SurfaceTypeFromName:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0x8]
	mov dword [esp+0x4], _cstring_default
	mov [esp], edi
	call Q_stricmp
	test eax, eax
	jnz Com_SurfaceTypeFromName_10
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Com_SurfaceTypeFromName_10:
	xor esi, esi
	mov ebx, infoParms
	jmp Com_SurfaceTypeFromName_20
Com_SurfaceTypeFromName_40:
	add esi, 0x1
	add ebx, 0x14
	cmp esi, 0x1c
	jz Com_SurfaceTypeFromName_30
Com_SurfaceTypeFromName_20:
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov [esp], edi
	call Q_stricmp
	test eax, eax
	jnz Com_SurfaceTypeFromName_40
	lea eax, [esi+esi*4]
	mov eax, [eax*4+infoParms+0x8]
	and eax, 0x1f00000
	shr eax, 0x14
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Com_SurfaceTypeFromName_30:
	mov eax, 0xffffffff
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Initialized global or static variables of surfaceflags:
SECTION .data
infoParms: dd _cstring_bark, 0x0, 0x100000, 0x0, 0x0, _cstring_brick, 0x0, 0x200000, 0x0, 0x0, _cstring_carpet, 0x0, 0x300000, 0x0, 0x0, _cstring_cloth, 0x0, 0x400000, 0x0, 0x0, _cstring_concrete, 0x0, 0x500000, 0x0, 0x0, _cstring_dirt, 0x0, 0x600000, 0x0, 0x0, _cstring_flesh, 0x0, 0x700000, 0x0, 0x0, _cstring_foliage, 0x1, 0x800000, 0x2, 0x0, _cstring_glass, 0x1, 0x900000, 0x10, 0x0, _cstring_grass, 0x0, 0xa00000, 0x0, 0x0, _cstring_gravel, 0x0, 0xb00000, 0x0, 0x0, _cstring_ice, 0x0, 0xc00000, 0x0, 0x0, _cstring_metal, 0x0, 0xd00000, 0x0, 0x0, _cstring_mud, 0x0, 0xe00000, 0x0, 0x0, _cstring_paper, 0x0, 0xf00000, 0x0, 0x0, _cstring_plaster, 0x0, 0x1000000, 0x0, 0x0, _cstring_rock, 0x0, 0x1100000, 0x0, 0x0, _cstring_sand, 0x0, 0x1200000, 0x0, 0x0, _cstring_snow, 0x0, 0x1300000, 0x0, 0x0, _cstring_water, 0x1, 0x1400000, 0x20, 0x0, _cstring_wood, 0x0, 0x1500000, 0x0, 0x0, _cstring_asphalt, 0x0, 0x1600000, 0x0, 0x0, _cstring_ceramic, 0x0, 0x1700000, 0x0, 0x0, _cstring_plastic, 0x0, 0x1800000, 0x0, 0x0, _cstring_rubber, 0x0, 0x1900000, 0x0, 0x0, _cstring_cushion, 0x0, 0x1a00000, 0x0, 0x0, _cstring_fruit, 0x0, 0x1b00000, 0x0, 0x0, _cstring_paintedmetal, 0x0, 0x1c00000, 0x0, 0x0, _cstring_opaqueglass, 0x0, 0x900000, 0x0, 0x0, _cstring_clipmissile, 0x1, 0x0, 0x80, 0x0, _cstring_ai_nosight, 0x1, 0x0, 0x1000, 0x0, _cstring_clipshot, 0x1, 0x0, 0x2000, 0x0, _cstring_playerclip, 0x1, 0x0, 0x10000, 0x0, _cstring_monsterclip, 0x1, 0x0, 0x20000, 0x0, _cstring_vehicleclip, 0x1, 0x0, 0x200, 0x0, _cstring_itemclip, 0x1, 0x0, 0x400, 0x0, _cstring_nodrop, 0x1, 0x0, 0x80000000, 0x0, _cstring_nonsolid, 0x1, 0x4000, 0x0, 0x0, _cstring_detail, 0x0, 0x0, 0x8000000, 0x0, _cstring_structural, 0x0, 0x0, 0x10000000, 0x0, _cstring_portal, 0x1, 0x80000000, 0x0, 0x0, _cstring_canshootclip, 0x0, 0x0, 0x40, 0x0, _cstring_origin, 0x1, 0x0, 0x0, 0x4, _cstring_sky, 0x0, 0x4, 0x800, 0x0, _cstring_nocastshadow, 0x0, 0x40000, 0x0, 0x0, _cstring_physicsgeom, 0x0, 0x0, 0x0, 0x400, _cstring_lightportal, 0x0, 0x0, 0x0, 0x2000, _cstring_slick, 0x0, 0x2, 0x0, 0x0, _cstring_noimpact, 0x0, 0x10, 0x0, 0x0, _cstring_nomarks, 0x0, 0x20, 0x0, 0x0, _cstring_nopenetrate, 0x0, 0x100, 0x0, 0x0, _cstring_ladder, 0x0, 0x8, 0x0, 0x0, _cstring_nodamage, 0x0, 0x1, 0x0, 0x0, _cstring_mantleon, 0x0, 0x2000000, 0x1000000, 0x0, _cstring_mantleover, 0x0, 0x4000000, 0x1000000, 0x0, _cstring_nosteps, 0x0, 0x2000, 0x0, 0x0, _cstring_nodraw, 0x0, 0x80, 0x0, 0x0, _cstring_nolightmap, 0x0, 0x400, 0x0, 0x0, _cstring_nodlight, 0x0, 0x20000, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0


;Initialized constant data of surfaceflags:
SECTION .rdata


;Zero initialized global or static variables of surfaceflags:
SECTION .bss


;All cstrings:
SECTION .rdata
_cstring_default:		db "default",0
_cstring_bark:		db "bark",0
_cstring_brick:		db "brick",0
_cstring_carpet:		db "carpet",0
_cstring_cloth:		db "cloth",0
_cstring_concrete:		db "concrete",0
_cstring_dirt:		db "dirt",0
_cstring_flesh:		db "flesh",0
_cstring_foliage:		db "foliage",0
_cstring_glass:		db "glass",0
_cstring_grass:		db "grass",0
_cstring_gravel:		db "gravel",0
_cstring_ice:		db "ice",0
_cstring_metal:		db "metal",0
_cstring_mud:		db "mud",0
_cstring_paper:		db "paper",0
_cstring_plaster:		db "plaster",0
_cstring_rock:		db "rock",0
_cstring_sand:		db "sand",0
_cstring_snow:		db "snow",0
_cstring_water:		db "water",0
_cstring_wood:		db "wood",0
_cstring_asphalt:		db "asphalt",0
_cstring_ceramic:		db "ceramic",0
_cstring_plastic:		db "plastic",0
_cstring_rubber:		db "rubber",0
_cstring_cushion:		db "cushion",0
_cstring_fruit:		db "fruit",0
_cstring_paintedmetal:		db "paintedmetal",0
_cstring_opaqueglass:		db "opaqueglass",0
_cstring_clipmissile:		db "clipmissile",0
_cstring_ai_nosight:		db "ai_nosight",0
_cstring_clipshot:		db "clipshot",0
_cstring_playerclip:		db "playerclip",0
_cstring_monsterclip:		db "monsterclip",0
_cstring_vehicleclip:		db "vehicleclip",0
_cstring_itemclip:		db "itemclip",0
_cstring_nodrop:		db "nodrop",0
_cstring_nonsolid:		db "nonsolid",0
_cstring_detail:		db "detail",0
_cstring_structural:		db "structural",0
_cstring_portal:		db "portal",0
_cstring_canshootclip:		db "canshootclip",0
_cstring_origin:		db "origin",0
_cstring_sky:		db "sky",0
_cstring_nocastshadow:		db "nocastshadow",0
_cstring_physicsgeom:		db "physicsGeom",0
_cstring_lightportal:		db "lightPortal",0
_cstring_slick:		db "slick",0
_cstring_noimpact:		db "noimpact",0
_cstring_nomarks:		db "nomarks",0
_cstring_nopenetrate:		db "nopenetrate",0
_cstring_ladder:		db "ladder",0
_cstring_nodamage:		db "nodamage",0
_cstring_mantleon:		db "mantleOn",0
_cstring_mantleover:		db "mantleOver",0
_cstring_nosteps:		db "nosteps",0
_cstring_nodraw:		db "nodraw",0
_cstring_nolightmap:		db "nolightmap",0
_cstring_nodlight:		db "nodlight",0



;All constant floats and doubles:
SECTION .rdata

