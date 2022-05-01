;Imports of snd_utils:

;Exports of snd_utils:
	global snd_eqTypeStrings
	global snd_roomStrings


SECTION .text


;Initialized global or static variables of snd_utils:
SECTION .data
snd_eqTypeStrings: dd _cstring_lowpass, _cstring_highpass, _cstring_lowshelf, _cstring_highshelf, _cstring_bell, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
snd_roomStrings: dd _cstring_generic, _cstring_paddedcell, _cstring_room, _cstring_bathroom, _cstring_livingroom, _cstring_stoneroom, _cstring_auditorium, _cstring_concerthall, _cstring_cave, _cstring_arena, _cstring_hangar, _cstring_carpetedhallway, _cstring_hallway, _cstring_stonecorridor, _cstring_alley, _cstring_forest, _cstring_city, _cstring_mountains, _cstring_quarry, _cstring_plain, _cstring_parkinglot, _cstring_sewerpipe, _cstring_underwater, _cstring_drugged, _cstring_dizzy, _cstring_psychotic, 0x0


;Initialized constant data of snd_utils:
SECTION .rdata


;Zero initialized global or static variables of snd_utils:
SECTION .bss


;All cstrings:
SECTION .rdata
_cstring_lowpass:		db "lowpass",0
_cstring_highpass:		db "highpass",0
_cstring_lowshelf:		db "lowshelf",0
_cstring_highshelf:		db "highshelf",0
_cstring_bell:		db "bell",0
_cstring_generic:		db "generic",0
_cstring_paddedcell:		db "paddedcell",0
_cstring_room:		db "room",0
_cstring_bathroom:		db "bathroom",0
_cstring_livingroom:		db "livingroom",0
_cstring_stoneroom:		db "stoneroom",0
_cstring_auditorium:		db "auditorium",0
_cstring_concerthall:		db "concerthall",0
_cstring_cave:		db "cave",0
_cstring_arena:		db "arena",0
_cstring_hangar:		db "hangar",0
_cstring_carpetedhallway:		db "carpetedhallway",0
_cstring_hallway:		db "hallway",0
_cstring_stonecorridor:		db "stonecorridor",0
_cstring_alley:		db "alley",0
_cstring_forest:		db "forest",0
_cstring_city:		db "city",0
_cstring_mountains:		db "mountains",0
_cstring_quarry:		db "quarry",0
_cstring_plain:		db "plain",0
_cstring_parkinglot:		db "parkinglot",0
_cstring_sewerpipe:		db "sewerpipe",0
_cstring_underwater:		db "underwater",0
_cstring_drugged:		db "drugged",0
_cstring_dizzy:		db "dizzy",0
_cstring_psychotic:		db "psychotic",0



;All constant floats and doubles:
SECTION .rdata

