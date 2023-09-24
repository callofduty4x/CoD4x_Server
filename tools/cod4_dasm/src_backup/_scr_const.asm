;Imports of scr_const:
	extern _Z16GScr_AllocStringPKc

;Exports of scr_const:
	global _Z15GScr_LoadConstsv
	global scr_const


SECTION .text


;GScr_LoadConsts()
_Z15GScr_LoadConstsv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp], _cstring_null
	call _Z16GScr_AllocStringPKc
	mov [scr_const], ax
	mov dword [esp], _cstring_active
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x2], ax
	mov dword [esp], _cstring_j_spine4
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x4], ax
	mov dword [esp], _cstring_j_helmet
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x6], ax
	mov dword [esp], _cstring_j_head
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x8], ax
	mov dword [esp], _cstring_all
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0xa], ax
	mov dword [esp], _cstring_allies
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0xc], ax
	mov dword [esp], _cstring_axis
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0xe], ax
	mov dword [esp], _cstring_bad_path
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x10], ax
	mov dword [esp], _cstring_begin_firing
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x12], ax
	mov dword [esp], _cstring_cancel_location
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x14], ax
	mov dword [esp], _cstring_confirm_location
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x16], ax
	mov dword [esp], _cstring_crouch
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x18], ax
	mov dword [esp], _cstring_current
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x1a], ax
	mov dword [esp], _cstring_damage
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x1c], ax
	mov dword [esp], _cstring_dead
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x1e], ax
	mov dword [esp], _cstring_death
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x20], ax
	mov dword [esp], _cstring_detonate
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x22], ax
	mov dword [esp], _cstring_direct
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x24], ax
	mov dword [esp], _cstring_dlight
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x26], ax
	mov dword [esp], _cstring_done
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x28], ax
	mov dword [esp], _cstring_empty
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x2a], ax
	mov dword [esp], _cstring_end_firing
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x2c], ax
	mov dword [esp], _cstring_entity
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x2e], ax
	mov dword [esp], _cstring_explode
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x30], ax
	mov dword [esp], _cstring_failed
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x32], ax
	mov dword [esp], _cstring_fraction
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x36], ax
	mov dword [esp], _cstring_free
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x34], ax
	mov dword [esp], _cstring_goal
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x38], ax
	mov dword [esp], _cstring_goal_changed
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x3a], ax
	mov dword [esp], _cstring_goal_yaw
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x3c], ax
	mov dword [esp], _cstring_grenade
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x3e], ax
	mov dword [esp], _cstring_grenade_danger
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x40], ax
	mov dword [esp], _cstring_grenade_fire
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x42], ax
	mov dword [esp], _cstring_grenade_pullback
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x44], ax
	mov dword [esp], _cstring_info_notnull
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x46], ax
	mov dword [esp], _cstring_invisible
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x48], ax
	mov dword [esp], _cstring_key1
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x4a], ax
	mov dword [esp], _cstring_key2
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x4c], ax
	mov dword [esp], _cstring_killanimscript
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x4e], ax
	mov dword [esp], _cstring_left
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x50], ax
	mov dword [esp], _cstring_light
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x52], ax
	mov dword [esp], _cstring_movedone
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x54], ax
	mov dword [esp], _cstring_noclass
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x56], ax
	mov dword [esp], _cstring_none
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x58], ax
	mov dword [esp], _cstring_normal
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x5a], ax
	mov dword [esp], _cstring_player
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x5c], ax
	mov dword [esp], _cstring_position
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x5e], ax
	mov dword [esp], _cstring_projectile_impac
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x60], ax
	mov dword [esp], _cstring_prone
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x62], ax
	mov dword [esp], _cstring_right
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x64], ax
	mov dword [esp], _cstring_reload
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x66], ax
	mov dword [esp], _cstring_reload_start
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x68], ax
	mov dword [esp], _cstring_rocket
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x6a], ax
	mov dword [esp], _cstring_rotatedone
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x6c], ax
	mov dword [esp], _cstring_script_brushmode
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x6e], ax
	mov dword [esp], _cstring_script_model
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x70], ax
	mov dword [esp], _cstring_script_origin
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x72], ax
	mov dword [esp], _cstring_snd_enveffectspr
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x74], ax
	mov dword [esp], _cstring_snd_enveffectspr1
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x76], ax
	mov dword [esp], _cstring_snd_channelvolpr
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x78], ax
	mov dword [esp], _cstring_snd_channelvolpr1
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x7a], ax
	mov dword [esp], _cstring_snd_channelvolpr2
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x7c], ax
	mov dword [esp], _cstring_stand
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x7e], ax
	mov dword [esp], _cstring_suppression
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x80], ax
	mov dword [esp], _cstring_suppression_end
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x82], ax
	mov dword [esp], _cstring_surfacetype
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x84], ax
	mov dword [esp], _cstring_tag_aim
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x86], ax
	mov dword [esp], _cstring_tag_aim_animated
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x88], ax
	mov dword [esp], _cstring_tag_brass
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x8a], ax
	mov dword [esp], _cstring_tag_butt
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x8c], ax
	mov dword [esp], _cstring_tag_clip
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x8e], ax
	mov dword [esp], _cstring_tag_flash
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x90], ax
	mov dword [esp], _cstring_tag_flash_11
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x92], ax
	mov dword [esp], _cstring_tag_flash_2
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x94], ax
	mov dword [esp], _cstring_tag_flash_22
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x96], ax
	mov dword [esp], _cstring_tag_flash_3
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x98], ax
	mov dword [esp], _cstring_tag_fx
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x9a], ax
	mov dword [esp], _cstring_tag_inhand
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x9c], ax
	mov dword [esp], _cstring_tag_knife_attach
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x9e], ax
	mov dword [esp], _cstring_tag_knife_fx
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0xa0], ax
	mov dword [esp], _cstring_tag_laser
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0xa2], ax
	mov dword [esp], _cstring_tag_origin
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0xa4], ax
	mov dword [esp], _cstring_tag_weapon
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0xa6], ax
	mov dword [esp], _cstring_tag_player
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0xa8], ax
	mov dword [esp], _cstring_tag_camera
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0xaa], ax
	mov dword [esp], _cstring_tag_weapon_right
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0xac], ax
	mov dword [esp], _cstring_tag_gasmask
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0xae], ax
	mov dword [esp], _cstring_tag_gasmask2
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0xb0], ax
	mov dword [esp], _cstring_tag_sync
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0xb2], ax
	mov dword [esp], _cstring_target_script_tr
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0xb4], ax
	mov dword [esp], _cstring_tempentity
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0xb6], ax
	mov dword [esp], _cstring_top
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0xb8], ax
	mov dword [esp], _cstring_touch
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0xba], ax
	mov dword [esp], _cstring_trigger
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0xbc], ax
	mov dword [esp], _cstring_trigger_use
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0xbe], ax
	mov dword [esp], _cstring_trigger_use_touc
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0xc0], ax
	mov dword [esp], _cstring_trigger_damage
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0xc2], ax
	mov dword [esp], _cstring_trigger_lookat
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0xc4], ax
	mov dword [esp], _cstring_truck_cam
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0xc6], ax
	mov dword [esp], _cstring_weapon_change
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0xc8], ax
	mov dword [esp], _cstring_weapon_fired
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0xca], ax
	mov dword [esp], _cstring_worldspawn
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0xcc], ax
	mov dword [esp], _cstring_flashbang
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0xce], ax
	mov dword [esp], _cstring_flash
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0xd0], ax
	mov dword [esp], _cstring_smoke
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0xd2], ax
	mov dword [esp], _cstring_night_vision_on
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0xd4], ax
	mov dword [esp], _cstring_night_vision_off
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0xd6], ax
	mov dword [esp], _cstring_mod_unknown
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0xd8], ax
	mov dword [esp], _cstring_mod_pistol_bulle
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0xda], ax
	mov dword [esp], _cstring_mod_rifle_bullet
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0xdc], ax
	mov dword [esp], _cstring_mod_grenade
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0xde], ax
	mov dword [esp], _cstring_mod_grenade_spla
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0xe0], ax
	mov dword [esp], _cstring_mod_projectile
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0xe2], ax
	mov dword [esp], _cstring_mod_projectile_s
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0xe4], ax
	mov dword [esp], _cstring_mod_melee
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0xe6], ax
	mov dword [esp], _cstring_mod_head_shot
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0xe8], ax
	mov dword [esp], _cstring_mod_crush
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0xea], ax
	mov dword [esp], _cstring_mod_telefrag
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0xec], ax
	mov dword [esp], _cstring_mod_falling
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0xee], ax
	mov dword [esp], _cstring_mod_suicide
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0xf0], ax
	mov dword [esp], _cstring_mod_trigger_hurt
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0xf2], ax
	mov dword [esp], _cstring_mod_explosive
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0xf4], ax
	mov dword [esp], _cstring_mod_impact
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0xf6], ax
	mov dword [esp], _cstring_script_vehicle
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0xf8], ax
	mov dword [esp], _cstring_script_vehicle_c
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0xfa], ax
	mov dword [esp], _cstring_script_vehicle_c1
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0xfc], ax
	mov dword [esp], _cstring_script_vehicle_c2
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0xfe], ax
	mov dword [esp], _cstring_turret_fire
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x100], ax
	mov dword [esp], _cstring_turret_on_target
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x102], ax
	mov dword [esp], _cstring_turret_not_on_ta
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x104], ax
	mov dword [esp], _cstring_turret_on_vistar
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x106], ax
	mov dword [esp], _cstring_turret_no_vis
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x108], ax
	mov dword [esp], _cstring_turret_rotate_st
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x10a], ax
	mov dword [esp], _cstring_turret_deactivat
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x10c], ax
	mov dword [esp], _cstring_turretstatechang
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x10e], ax
	mov dword [esp], _cstring_turretownerchang
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x110], ax
	mov dword [esp], _cstring_reached_end_node
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x112], ax
	mov dword [esp], _cstring_reached_wait_nod
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x114], ax
	mov dword [esp], _cstring_reached_wait_spe
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x116], ax
	mov dword [esp], _cstring_near_goal
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x118], ax
	mov dword [esp], _cstring_veh_collision
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x11a], ax
	mov dword [esp], _cstring_veh_predictedcol
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x11c], ax
	mov dword [esp], _cstring_auto_change
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x11e], ax
	mov dword [esp], _cstring_back_low
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x120], ax
	mov dword [esp], _cstring_back_mid
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x122], ax
	mov dword [esp], _cstring_back_up
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x124], ax
	mov dword [esp], _cstring_begin
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x126], ax
	mov dword [esp], _cstring_call_vote
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x128], ax
	mov dword [esp], _cstring_freelook
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x12a], ax
	mov dword [esp], _cstring_head
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x12c], ax
	mov dword [esp], _cstring_intermission
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x12e], ax
	mov dword [esp], _cstring_j_head
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x130], ax
	mov dword [esp], _cstring_manual_change
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x132], ax
	mov dword [esp], _cstring_menuresponse
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x134], ax
	mov dword [esp], _cstring_neck
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x136], ax
	mov dword [esp], _cstring_pelvis
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x138], ax
	mov dword [esp], _cstring_pistol
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x13a], ax
	mov dword [esp], _cstring_plane_waypoint
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x13c], ax
	mov dword [esp], _cstring_playing
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x13e], ax
	mov dword [esp], _cstring_spectator
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x140], ax
	mov dword [esp], _cstring_vote
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x142], ax
	mov dword [esp], _cstring_sprint_begin
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x144], ax
	mov dword [esp], _cstring_sprint_end
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x146], ax
	mov dword [esp], _cstring_tag_driver
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x148], ax
	mov dword [esp], _cstring_tag_passenger
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x14a], ax
	mov dword [esp], _cstring_tag_gunner
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x14c], ax
	mov dword [esp], _cstring_tag_wheel_front_
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x14e], ax
	mov dword [esp], _cstring_tag_wheel_front_1
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x150], ax
	mov dword [esp], _cstring_tag_wheel_back_l
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x152], ax
	mov dword [esp], _cstring_tag_wheel_back_r
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x154], ax
	mov dword [esp], _cstring_tag_wheel_middle
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x156], ax
	mov dword [esp], _cstring_tag_wheel_middle1
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x158], ax
	mov dword [esp], _cstring_script_vehicle_c
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0xfa], ax
	mov dword [esp], _cstring_script_vehicle_c1
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0xfc], ax
	mov dword [esp], _cstring_script_vehicle_c2
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0xfe], ax
	mov dword [esp], _cstring_tag_detach
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x15a], ax
	mov dword [esp], _cstring_tag_popout
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x15c], ax
	mov dword [esp], _cstring_tag_body
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x15e], ax
	mov dword [esp], _cstring_tag_turret
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x160], ax
	mov dword [esp], _cstring_tag_turret_base
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x162], ax
	mov dword [esp], _cstring_tag_barrel
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x164], ax
	mov dword [esp], _cstring_tag_engine_left
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x166], ax
	mov dword [esp], _cstring_tag_engine_right
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x168], ax
	mov dword [esp], _cstring_front_left
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x16a], ax
	mov dword [esp], _cstring_front_right
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x16c], ax
	mov dword [esp], _cstring_back_left
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x16e], ax
	mov dword [esp], _cstring_back_right
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x170], ax
	mov dword [esp], _cstring_tag_gunner_pov
	call _Z16GScr_AllocStringPKc
	mov [scr_const+0x172], ax
	leave
	ret
	add [eax], al


;Initialized global or static variables of scr_const:
SECTION .data


;Initialized constant data of scr_const:
SECTION .rdata


;Zero initialized global or static variables of scr_const:
SECTION .bss
scr_const: resb 0x184


;All cstrings:
SECTION .rdata
_cstring_null:		db 0
_cstring_active:		db "active",0
_cstring_j_spine4:		db "j_spine4",0
_cstring_j_helmet:		db "j_helmet",0
_cstring_j_head:		db "j_head",0
_cstring_all:		db "all",0
_cstring_allies:		db "allies",0
_cstring_axis:		db "axis",0
_cstring_bad_path:		db "bad_path",0
_cstring_begin_firing:		db "begin_firing",0
_cstring_cancel_location:		db "cancel_location",0
_cstring_confirm_location:		db "confirm_location",0
_cstring_crouch:		db "crouch",0
_cstring_current:		db "current",0
_cstring_damage:		db "damage",0
_cstring_dead:		db "dead",0
_cstring_death:		db "death",0
_cstring_detonate:		db "detonate",0
_cstring_direct:		db "direct",0
_cstring_dlight:		db "dlight",0
_cstring_done:		db "done",0
_cstring_empty:		db "empty",0
_cstring_end_firing:		db "end_firing",0
_cstring_entity:		db "entity",0
_cstring_explode:		db "explode",0
_cstring_failed:		db "failed",0
_cstring_fraction:		db "fraction",0
_cstring_free:		db "free",0
_cstring_goal:		db "goal",0
_cstring_goal_changed:		db "goal_changed",0
_cstring_goal_yaw:		db "goal_yaw",0
_cstring_grenade:		db "grenade",0
_cstring_grenade_danger:		db "grenade danger",0
_cstring_grenade_fire:		db "grenade_fire",0
_cstring_grenade_pullback:		db "grenade_pullback",0
_cstring_info_notnull:		db "info_notnull",0
_cstring_invisible:		db "invisible",0
_cstring_key1:		db "key1",0
_cstring_key2:		db "key2",0
_cstring_killanimscript:		db "killanimscript",0
_cstring_left:		db "left",0
_cstring_light:		db "light",0
_cstring_movedone:		db "movedone",0
_cstring_noclass:		db "noclass",0
_cstring_none:		db "none",0
_cstring_normal:		db "normal",0
_cstring_player:		db "player",0
_cstring_position:		db "position",0
_cstring_projectile_impac:		db "projectile_impact",0
_cstring_prone:		db "prone",0
_cstring_right:		db "right",0
_cstring_reload:		db "reload",0
_cstring_reload_start:		db "reload_start",0
_cstring_rocket:		db "rocket",0
_cstring_rotatedone:		db "rotatedone",0
_cstring_script_brushmode:		db "script_brushmodel",0
_cstring_script_model:		db "script_model",0
_cstring_script_origin:		db "script_origin",0
_cstring_snd_enveffectspr:		db "snd_enveffectsprio_level",0
_cstring_snd_enveffectspr1:		db "snd_enveffectsprio_shellshock",0
_cstring_snd_channelvolpr:		db "snd_channelvolprio_holdbreath",0
_cstring_snd_channelvolpr1:		db "snd_channelvolprio_pain",0
_cstring_snd_channelvolpr2:		db "snd_channelvolprio_shellshock",0
_cstring_stand:		db "stand",0
_cstring_suppression:		db "suppression",0
_cstring_suppression_end:		db "suppression_end",0
_cstring_surfacetype:		db "surfacetype",0
_cstring_tag_aim:		db "tag_aim",0
_cstring_tag_aim_animated:		db "tag_aim_animated",0
_cstring_tag_brass:		db "tag_brass",0
_cstring_tag_butt:		db "tag_butt",0
_cstring_tag_clip:		db "tag_clip",0
_cstring_tag_flash:		db "tag_flash",0
_cstring_tag_flash_11:		db "tag_flash_11",0
_cstring_tag_flash_2:		db "tag_flash_2",0
_cstring_tag_flash_22:		db "tag_flash_22",0
_cstring_tag_flash_3:		db "tag_flash_3",0
_cstring_tag_fx:		db "tag_fx",0
_cstring_tag_inhand:		db "tag_inhand",0
_cstring_tag_knife_attach:		db "tag_knife_attach",0
_cstring_tag_knife_fx:		db "tag_knife_fx",0
_cstring_tag_laser:		db "tag_laser",0
_cstring_tag_origin:		db "tag_origin",0
_cstring_tag_weapon:		db "tag_weapon",0
_cstring_tag_player:		db "tag_player",0
_cstring_tag_camera:		db "tag_camera",0
_cstring_tag_weapon_right:		db "tag_weapon_right",0
_cstring_tag_gasmask:		db "tag_gasmask",0
_cstring_tag_gasmask2:		db "tag_gasmask2",0
_cstring_tag_sync:		db "tag_sync",0
_cstring_target_script_tr:		db "target_script_trigger",0
_cstring_tempentity:		db "tempEntity",0
_cstring_top:		db "top",0
_cstring_touch:		db "touch",0
_cstring_trigger:		db "trigger",0
_cstring_trigger_use:		db "trigger_use",0
_cstring_trigger_use_touc:		db "trigger_use_touch",0
_cstring_trigger_damage:		db "trigger_damage",0
_cstring_trigger_lookat:		db "trigger_lookat",0
_cstring_truck_cam:		db "truck_cam",0
_cstring_weapon_change:		db "weapon_change",0
_cstring_weapon_fired:		db "weapon_fired",0
_cstring_worldspawn:		db "worldspawn",0
_cstring_flashbang:		db "flashbang",0
_cstring_flash:		db "flash",0
_cstring_smoke:		db "smoke",0
_cstring_night_vision_on:		db "night_vision_on",0
_cstring_night_vision_off:		db "night_vision_off",0
_cstring_mod_unknown:		db "MOD_UNKNOWN",0
_cstring_mod_pistol_bulle:		db "MOD_PISTOL_BULLET",0
_cstring_mod_rifle_bullet:		db "MOD_RIFLE_BULLET",0
_cstring_mod_grenade:		db "MOD_GRENADE",0
_cstring_mod_grenade_spla:		db "MOD_GRENADE_SPLASH",0
_cstring_mod_projectile:		db "MOD_PROJECTILE",0
_cstring_mod_projectile_s:		db "MOD_PROJECTILE_SPLASH",0
_cstring_mod_melee:		db "MOD_MELEE",0
_cstring_mod_head_shot:		db "MOD_HEAD_SHOT",0
_cstring_mod_crush:		db "MOD_CRUSH",0
_cstring_mod_telefrag:		db "MOD_TELEFRAG",0
_cstring_mod_falling:		db "MOD_FALLING",0
_cstring_mod_suicide:		db "MOD_SUICIDE",0
_cstring_mod_trigger_hurt:		db "MOD_TRIGGER_HURT",0
_cstring_mod_explosive:		db "MOD_EXPLOSIVE",0
_cstring_mod_impact:		db "MOD_IMPACT",0
_cstring_script_vehicle:		db "script_vehicle",0
_cstring_script_vehicle_c:		db "script_vehicle_collision",0
_cstring_script_vehicle_c1:		db "script_vehicle_collmap",0
_cstring_script_vehicle_c2:		db "script_vehicle_corpse",0
_cstring_turret_fire:		db "turret_fire",0
_cstring_turret_on_target:		db "turret_on_target",0
_cstring_turret_not_on_ta:		db "turret_not_on_target",0
_cstring_turret_on_vistar:		db "turret_on_vistarget",0
_cstring_turret_no_vis:		db "turret_no_vis",0
_cstring_turret_rotate_st:		db "turret_rotate_stopped",0
_cstring_turret_deactivat:		db "turret_deactivate",0
_cstring_turretstatechang:		db "turretstatechange",0
_cstring_turretownerchang:		db "turretownerchange",0
_cstring_reached_end_node:		db "reached_end_node",0
_cstring_reached_wait_nod:		db "reached_wait_node",0
_cstring_reached_wait_spe:		db "reached_wait_speed",0
_cstring_near_goal:		db "near_goal",0
_cstring_veh_collision:		db "veh_collision",0
_cstring_veh_predictedcol:		db "veh_predictedcollision",0
_cstring_auto_change:		db "auto_change",0
_cstring_back_low:		db "back_low",0
_cstring_back_mid:		db "back_mid",0
_cstring_back_up:		db "back_up",0
_cstring_begin:		db "begin",0
_cstring_call_vote:		db "call_vote",0
_cstring_freelook:		db "freelook",0
_cstring_head:		db "head",0
_cstring_intermission:		db "intermission",0
_cstring_manual_change:		db "manual_change",0
_cstring_menuresponse:		db "menuresponse",0
_cstring_neck:		db "neck",0
_cstring_pelvis:		db "pelvis",0
_cstring_pistol:		db "pistol",0
_cstring_plane_waypoint:		db "plane_waypoint",0
_cstring_playing:		db "playing",0
_cstring_spectator:		db "spectator",0
_cstring_vote:		db "vote",0
_cstring_sprint_begin:		db "sprint_begin",0
_cstring_sprint_end:		db "sprint_end",0
_cstring_tag_driver:		db "tag_driver",0
_cstring_tag_passenger:		db "tag_passenger",0
_cstring_tag_gunner:		db "tag_gunner",0
_cstring_tag_wheel_front_:		db "tag_wheel_front_left",0
_cstring_tag_wheel_front_1:		db "tag_wheel_front_right",0
_cstring_tag_wheel_back_l:		db "tag_wheel_back_left",0
_cstring_tag_wheel_back_r:		db "tag_wheel_back_right",0
_cstring_tag_wheel_middle:		db "tag_wheel_middle_left",0
_cstring_tag_wheel_middle1:		db "tag_wheel_middle_right",0
_cstring_tag_detach:		db "tag_detach",0
_cstring_tag_popout:		db "tag_popout",0
_cstring_tag_body:		db "tag_body",0
_cstring_tag_turret:		db "tag_turret",0
_cstring_tag_turret_base:		db "tag_turret_base",0
_cstring_tag_barrel:		db "tag_barrel",0
_cstring_tag_engine_left:		db "tag_engine_left",0
_cstring_tag_engine_right:		db "tag_engine_right",0
_cstring_front_left:		db "front_left",0
_cstring_front_right:		db "front_right",0
_cstring_back_left:		db "back_left",0
_cstring_back_right:		db "back_right",0
_cstring_tag_gunner_pov:		db "tag_gunner_pov",0



;All constant floats and doubles:
SECTION .rdata

