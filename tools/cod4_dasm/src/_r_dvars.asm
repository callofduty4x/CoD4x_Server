;Imports of r_dvars:
	extern _Z18R_RegisterSunDvarsv
	extern _Z16Dvar_RegisterIntPKciiitS0_
	extern _Z17Dvar_RegisterBoolPKchtS0_
	extern _Z18Dvar_RegisterFloatPKcffftS0_
	extern _Z17Dvar_RegisterEnumPKcPS0_itS0_
	extern _Z18Dvar_RegisterColorPKcfffftS0_
	extern _Z17Dvar_RegisterVec3PKcffffftS0_
	extern _Z16Dvar_SetModifiedPK6dvar_s
	extern sv_cheats
	extern com_statmon
	extern _Z19Dvar_RegisterStringPKcS0_tS0_
	extern _Z15R_WarnInitDvarsv
	extern _Z30R_ReflectionProbeRegisterDvarsv
	extern _Z18Dvar_ClearModifiedPK6dvar_s

;Exports of r_dvars:
	global s_aspectRatioNames
	global s_rendererNames
	global r_forceLodNames
	global fbColorDebugNames
	global r_clearNames
	global s_aaAlphaNames
	global showPixelCostNames
	global normalMapNames
	global colorMapNames
	global gpuSyncNames
	global debugShaderNames
	global mipFilterNames
	global _Z15R_RegisterDvarsv
	global _Z19R_CheckDvarModifiedPK6dvar_s
	global r_fullscreen
	global r_pretess
	global sm_fastSunShadow
	global r_smc_enable
	global r_lightTweakAmbient
	global r_lightTweakAmbientColor
	global r_lightTweakDiffuseFraction
	global r_lightTweakSunColor
	global r_lightTweakSunDiffuseColor
	global r_lightTweakSunDirection
	global r_lightTweakSunLight
	global sm_enable
	global sm_sunSampleSizeNear
	global r_loadForRenderer
	global r_useLayeredMaterials
	global r_drawDecals
	global r_portalBevels
	global r_portalBevelsOnly
	global r_portalMinClipArea
	global r_portalMinRecurseDepth
	global r_portalWalkLimit
	global r_showPortals
	global r_singleCell
	global r_skipPvs
	global r_vc_makelog
	global r_zfar
	global sc_enable
	global sm_strictCull
	global r_lightMap
	global r_debugShader
	global r_fullbright
	global r_diffuseColorScale
	global r_specularColorScale
	global r_rendererInUse
	global sm_polygonOffsetBias
	global sm_polygonOffsetScale
	global developer
	global r_aaAlpha
	global r_aaSamples
	global r_altModelLightingUpdate
	global r_aspectRatio
	global r_blur
	global r_brightness
	global r_cacheModelLighting
	global r_cacheSModelLighting
	global r_clear
	global r_clearColor
	global r_clearColor2
	global r_colorMap
	global r_contrast
	global r_customMode
	global r_debugLineWidth
	global r_depthPrepass
	global r_desaturation
	global r_detail
	global r_displayRefresh
	global r_distortion
	global r_dlightLimit
	global r_dof_bias
	global r_dof_enable
	global r_dof_farBlur
	global r_dof_farEnd
	global r_dof_farStart
	global r_dof_nearBlur
	global r_dof_nearEnd
	global r_dof_nearStart
	global r_dof_tweak
	global r_dof_viewModelEnd
	global r_dof_viewModelStart
	global r_drawSun
	global r_drawWater
	global r_envMapExponent
	global r_envMapMaxIntensity
	global r_envMapMinIntensity
	global r_envMapOverride
	global r_envMapSpecular
	global r_envMapSunIntensity
	global r_fastSkin
	global r_filmTweakBrightness
	global r_filmTweakContrast
	global r_filmTweakDarkTint
	global r_filmTweakDesaturation
	global r_filmTweakEnable
	global r_filmTweakInvert
	global r_filmTweakLightTint
	global r_filmUseTweaks
	global r_floatz
	global r_fog
	global r_forceLod
	global r_gamma
	global r_glow
	global r_glowTweakBloomCutoff
	global r_glowTweakBloomDesaturation
	global r_glowTweakBloomIntensity
	global r_glowTweakEnable
	global r_glowTweakRadius
	global r_glowUseTweaks
	global r_glow_allowed
	global r_glow_allowed_script_forced
	global r_gpuSync
	global r_highLodDist
	global r_ignore
	global r_ignoreHwGamma
	global r_lockPvs
	global r_lodBiasRigid
	global r_lodBiasSkinned
	global r_lodScaleRigid
	global r_lodScaleSkinned
	global r_logFile
	global r_lowLodDist
	global r_lowestLodDist
	global r_mediumLodDist
	global r_mode
	global r_modelVertColor
	global r_monitor
	global r_multiGpu
	global r_norefresh
	global r_normal
	global r_normalMap
	global r_outdoor
	global r_outdoorAwayBias
	global r_outdoorDownBias
	global r_outdoorFeather
	global r_picmip
	global r_picmip_bump
	global r_picmip_manual
	global r_picmip_spec
	global r_picmip_water
	global r_polygonOffsetBias
	global r_polygonOffsetScale
	global r_preloadShaders
	global r_rendererPreference
	global r_resampleScene
	global r_scaleViewport
	global r_showFbColorDebug
	global r_showFloatZDebug
	global r_showLightGrid
	global r_showMissingLightGrid
	global r_showPixelCost
	global r_skinCache
	global r_specular
	global r_specularMap
	global r_spotLightBrightness
	global r_spotLightEndRadius
	global r_spotLightEntityShadows
	global r_spotLightFovInnerFraction
	global r_spotLightSModelShadows
	global r_spotLightShadows
	global r_spotLightStartRadius
	global r_sse_skinning
	global r_sun_from_dvars
	global r_texFilterAnisoMax
	global r_texFilterAnisoMin
	global r_texFilterDisable
	global r_texFilterMipBias
	global r_texFilterMipMode
	global r_vc_showlog
	global r_vsync
	global r_zFeather
	global r_znear
	global r_znear_depthhack
	global sc_blur
	global sc_count
	global sc_debugCasterCount
	global sc_debugReceiverCount
	global sc_fadeRange
	global sc_length
	global sc_offscreenCasterLodBias
	global sc_offscreenCasterLodScale
	global sc_shadowInRate
	global sc_shadowOutRate
	global sc_showDebug
	global sc_showOverlay
	global sc_wantCount
	global sc_wantCountMargin
	global sm_lightScore_eyeProjectDist
	global sm_lightScore_spotProjectFrac
	global sm_maxLights
	global sm_qualitySpotShadow
	global sm_spotEnable
	global sm_spotShadowFadeTime
	global sm_sunEnable
	global sm_sunShadowCenter
	global sm_sunShadowScale
	global vid_xpos
	global vid_ypos


SECTION .text


;R_RegisterDvars()
_Z15R_RegisterDvarsv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	call _Z18R_RegisterSunDvarsv
	mov dword [esp+0x14], _cstring_used_for_debuggi
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x7fffffff
	mov dword [esp+0x8], 0x80000000
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_r_ignore
	call _Z16Dvar_RegisterIntPKciiitS0_
	mov [r_ignore], eax
	mov dword [esp+0x14], _cstring_game_window_hori
	mov dword [esp+0x10], 0x1
	mov dword [esp+0xc], 0x1000
	mov dword [esp+0x8], 0xfffff000
	mov dword [esp+0x4], 0x3
	mov dword [esp], _cstring_vid_xpos
	call _Z16Dvar_RegisterIntPKciiitS0_
	mov [vid_xpos], eax
	mov dword [esp+0x14], _cstring_game_window_vert
	mov dword [esp+0x10], 0x1
	mov dword [esp+0xc], 0x1000
	mov dword [esp+0x8], 0xfffff000
	mov dword [esp+0x4], 0x16
	mov dword [esp], _cstring_vid_ypos
	call _Z16Dvar_RegisterIntPKciiitS0_
	mov [vid_ypos], eax
	mov dword [esp+0xc], _cstring_display_game_ful
	mov dword [esp+0x8], 0x21
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_r_fullscreen
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [r_fullscreen], eax
	mov dword [esp+0x14], _cstring_gamma_value
	mov dword [esp+0x10], 0x1
	mov dword [esp+0xc], 0x40400000
	mov dword [esp+0x8], 0x3f000000
	mov dword [esp+0x4], 0x3f4ccccd
	mov dword [esp], _cstring_r_gamma
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [r_gamma], eax
	mov dword [esp+0xc], _cstring_ignore_hardware_
	mov dword [esp+0x8], 0x21
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_r_ignorehwgamma
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [r_ignoreHwGamma], eax
	mov dword [esp+0x14], _cstring_maximum_anisotro
	mov dword [esp+0x10], 0x1
	mov dword [esp+0xc], 0x10
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x10
	mov dword [esp], _cstring_r_texfilteraniso
	call _Z16Dvar_RegisterIntPKciiitS0_
	mov [r_texFilterAnisoMax], eax
	mov dword [esp+0xc], _cstring_disables_all_tex
	mov dword [esp+0x8], 0x80
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_r_texfilterdisab
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [r_texFilterDisable], eax
	mov dword [esp+0x14], _cstring_minimum_anisotro
	mov dword [esp+0x10], 0x1
	mov dword [esp+0xc], 0x10
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_r_texfilteraniso1
	call _Z16Dvar_RegisterIntPKciiitS0_
	mov [r_texFilterAnisoMin], eax
	mov dword [esp+0x10], _cstring_forces_all_mipma
	mov dword [esp+0xc], 0x1
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], mipFilterNames
	mov dword [esp], _cstring_r_texfiltermipmo
	call _Z17Dvar_RegisterEnumPKcPS0_itS0_
	mov [r_texFilterMipMode], eax
	mov dword [esp+0x14], _cstring_change_the_mipma
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x417fd70a
	mov dword [esp+0x8], 0xc1800000
	xor esi, esi
	mov [esp+0x4], esi
	mov dword [esp], _cstring_r_texfiltermipbi
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [r_texFilterMipBias], eax
	mov dword [esp+0xc], _cstring_toggles_renderin
	mov dword [esp+0x8], 0x80
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_r_fullbright
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [r_fullbright], eax
	mov dword [esp+0x10], _cstring_enable_shader_de
	mov dword [esp+0xc], 0x80
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], debugShaderNames
	mov dword [esp], _cstring_r_debugshader
	call _Z17Dvar_RegisterEnumPKcPS0_itS0_
	mov [r_debugShader], eax
	mov dword [esp+0x10], _cstring_gpu_synchronizat
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], gpuSyncNames
	mov dword [esp], _cstring_r_gpusync
	call _Z17Dvar_RegisterEnumPKcPS0_itS0_
	mov [r_gpuSync], eax
	mov dword [esp+0xc], _cstring_use_multiple_gpu
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_r_multigpu
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [r_multiGpu], eax
	mov dword [esp+0xc], _cstring_enable_cache_for
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_r_skincache
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [r_skinCache], eax
	mov dword [esp+0xc], _cstring_enable_fast_mode
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_r_fastskin
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [r_fastSkin], eax
	mov dword [esp+0xc], _cstring_enable_static_mo
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_r_smc_enable
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [r_smc_enable], eax
	mov dword [esp+0xc], _cstring_batch_surfaces_t
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_r_pretess
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [r_pretess], eax
	mov dword [esp+0x14], _cstring_scale_the_level_
	mov dword [esp+0x10], 0x1
	mov dword [esp+0xc], 0x40800000
	mov edi, 0x3f800000
	mov [esp+0x8], edi
	mov [esp+0x4], edi
	mov dword [esp], _cstring_r_lodscalerigid
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [r_lodScaleRigid], eax
	mov dword [esp+0x14], _cstring_bias_the_level_o
	mov dword [esp+0x10], 0x1
	mov [esp+0xc], esi
	mov ebx, 0xc47a0000
	mov [esp+0x8], ebx
	mov [esp+0x4], esi
	mov dword [esp], _cstring_r_lodbiasrigid
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [r_lodBiasRigid], eax
	mov dword [esp+0x14], _cstring_scale_the_level_1
	mov dword [esp+0x10], 0x1
	mov dword [esp+0xc], 0x40800000
	mov [esp+0x8], edi
	mov [esp+0x4], edi
	mov dword [esp], _cstring_r_lodscaleskinne
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [r_lodScaleSkinned], eax
	mov dword [esp+0x14], _cstring_bias_the_level_o1
	mov dword [esp+0x10], 0x1
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov [esp+0x4], esi
	mov dword [esp], _cstring_r_lodbiasskinned
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [r_lodBiasSkinned], eax
	mov dword [esp+0x14], _cstring_things_closer_th
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x461c4000
	mov ebx, 0x3a83126f
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x40800000
	mov dword [esp], _cstring_r_znear
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [r_znear], eax
	mov dword [esp+0x14], _cstring_viewmodel_near_c
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x41800000
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x3dcccccd
	mov dword [esp], _cstring_r_znear_depthhac
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [r_znear_depthhack], eax
	mov dword [esp+0x14], _cstring_change_the_dista
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x7f7fffff
	mov [esp+0x8], esi
	mov [esp+0x4], esi
	mov dword [esp], _cstring_r_zfar
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [r_zfar], eax
	mov dword [esp+0xc], _cstring_set_to_0_to_disa
	mov dword [esp+0x8], 0x80
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_r_fog
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [r_fog], eax
	mov dword [esp+0x14], _cstring_offset_scale_for
	mov dword [esp+0x10], 0x1
	mov [esp+0xc], esi
	mov dword [esp+0x8], 0xc0800000
	mov dword [esp+0x4], 0xbf800000
	mov dword [esp], _cstring_r_polygonoffsets
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [r_polygonOffsetScale], eax
	mov dword [esp+0x14], _cstring_offset_bias_for_
	mov dword [esp+0x10], 0x1
	mov [esp+0xc], esi
	mov dword [esp+0x8], 0xc1800000
	mov dword [esp+0x4], 0xbf800000
	mov dword [esp], _cstring_r_polygonoffsetb
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [r_polygonOffsetBias], eax
	mov dword [esp+0xc], _cstring_if_0_picmip_is_s
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_r_picmip_manual
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [r_picmip_manual], eax
	mov dword [esp+0x14], _cstring_picmip_level_of_
	mov dword [esp+0x10], 0x1
	mov dword [esp+0xc], 0x3
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_r_picmip
	call _Z16Dvar_RegisterIntPKciiitS0_
	mov [r_picmip], eax
	mov dword [esp+0x14], _cstring_picmip_level_of_1
	mov dword [esp+0x10], 0x1
	mov dword [esp+0xc], 0x3
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_r_picmip_bump
	call _Z16Dvar_RegisterIntPKciiitS0_
	mov [r_picmip_bump], eax
	mov dword [esp+0x14], _cstring_picmip_level_of_2
	mov dword [esp+0x10], 0x1
	mov dword [esp+0xc], 0x3
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_r_picmip_spec
	call _Z16Dvar_RegisterIntPKciiitS0_
	mov [r_picmip_spec], eax
	mov dword [esp+0x14], _cstring_picmip_level_of_3
	mov dword [esp+0x10], 0x21
	mov dword [esp+0xc], 0x1
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_r_picmip_water
	call _Z16Dvar_RegisterIntPKciiitS0_
	mov [r_picmip_water], eax
	mov dword [esp+0xc], _cstring_allows_shaders_t
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_r_detail
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [r_detail], eax
	mov dword [esp+0xc], _cstring_allows_shaders_t1
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_r_normal
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [r_normal], eax
	mov dword [esp+0xc], _cstring_allows_shaders_t2
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_r_specular
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [r_specular], eax
	mov dword [esp+0xc], _cstring_enables_environm
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_r_envmapspecular
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [r_envMapSpecular], eax
	mov dword [esp+0x10], _cstring_replace_all_ligh
	mov dword [esp+0xc], 0x80
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], colorMapNames
	mov dword [esp], _cstring_r_lightmap
	call _Z17Dvar_RegisterEnumPKcPS0_itS0_
	mov [r_lightMap], eax
	mov dword [esp+0x10], _cstring_replace_all_colo
	mov dword [esp+0xc], 0x80
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], colorMapNames
	mov dword [esp], _cstring_r_colormap
	call _Z17Dvar_RegisterEnumPKcPS0_itS0_
	mov [r_colorMap], eax
	mov dword [esp+0x10], _cstring_replace_all_norm
	mov dword [esp+0xc], 0x80
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], normalMapNames
	mov dword [esp], _cstring_r_normalmap
	call _Z17Dvar_RegisterEnumPKcPS0_itS0_
	mov [r_normalMap], eax
	mov dword [esp+0x10], _cstring_replace_all_spec
	mov dword [esp+0xc], 0x80
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], colorMapNames
	mov dword [esp], _cstring_r_specularmap
	call _Z17Dvar_RegisterEnumPKcPS0_itS0_
	mov [r_specularMap], eax
	mov dword [esp+0x14], _cstring_set_greater_than
	mov dword [esp+0x10], 0x1080
	mov ebx, 0x42c80000
	mov [esp+0xc], ebx
	mov [esp+0x8], esi
	mov [esp+0x4], edi
	mov dword [esp], _cstring_r_specularcolors
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [r_specularColorScale], eax
	mov dword [esp+0x14], _cstring_globally_scale_t
	mov dword [esp+0x10], 0x1080
	mov [esp+0xc], ebx
	mov [esp+0x8], esi
	mov [esp+0x4], edi
	mov dword [esp], _cstring_r_diffusecolorsc
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [r_diffuseColorScale], eax
	mov dword [esp+0xc], _cstring_set_to_true_to_u
	mov dword [esp+0x8], 0x20
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_r_uselayeredmate
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [r_useLayeredMaterials], eax
	mov dword [esp+0xc], _cstring_set_to_false_to_
	mov dword [esp+0x8], 0x20
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_r_loadforrendere
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [r_loadForRenderer], eax
	mov dword [esp+0xc], _cstring_upscale_the_fram
	mov dword [esp+0x8], 0x80
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_r_resamplescene
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [r_resampleScene], eax
	mov dword [esp+0x10], _cstring_shows_how_expens
	mov dword [esp+0xc], 0x80
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], showPixelCostNames
	mov dword [esp], _cstring_r_showpixelcost
	call _Z17Dvar_RegisterEnumPKcPS0_itS0_
	mov [r_showPixelCost], eax
	mov dword [esp+0x14], _cstring_width_of_server_
	mov dword [esp+0x10], 0x1
	mov dword [esp+0xc], 0x41800000
	mov [esp+0x8], esi
	mov [esp+0x4], edi
	mov dword [esp], _cstring_r_debuglinewidth
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [r_debugLineWidth], eax
	mov dword [esp+0x14], _cstring_enable_logging_o
	mov dword [esp+0x10], 0x20
	mov dword [esp+0xc], 0x2
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_r_vc_makelog
	call _Z16Dvar_RegisterIntPKciiitS0_
	mov [r_vc_makelog], eax
	mov dword [esp+0x14], _cstring_show_this_many_r
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x400
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_r_vc_showlog
	call _Z16Dvar_RegisterIntPKciiitS0_
	mov [r_vc_showlog], eax
	mov dword [esp+0xc], _cstring_show_light_grid_
	mov dword [esp+0x8], 0x80
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_r_showlightgrid
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [r_showLightGrid], eax
	mov dword [esp+0xc], _cstring_use_rainbow_colo
	mov dword [esp+0x8], 0x80
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_r_showmissinglig
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [r_showMissingLightGrid], eax
	mov dword [esp+0xc], _cstring_speed_up_static_
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_r_cachesmodellig
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [r_cacheSModelLighting], eax
	mov dword [esp+0xc], _cstring_speed_up_model_l
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_r_cachemodelligh
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [r_cacheModelLighting], eax
	mov dword [esp+0x14], _cstring_ambient_light_st
	mov dword [esp+0x10], 0x240
	mov dword [esp+0xc], 0x40800000
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x3dcccccd
	mov dword [esp], _cstring_r_lighttweakambi
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [r_lightTweakAmbient], eax
	mov dword [esp+0x14], _cstring_diffuse_light_fr
	mov dword [esp+0x10], 0x240
	mov [esp+0xc], edi
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x3f000000
	mov dword [esp], _cstring_r_lighttweakdiff
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [r_lightTweakDiffuseFraction], eax
	mov dword [esp+0x14], _cstring_sunlight_strengt
	mov dword [esp+0x10], 0x280
	mov dword [esp+0xc], 0x40800000
	mov [esp+0x8], esi
	mov [esp+0x4], edi
	mov dword [esp], _cstring_r_lighttweaksunl
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [r_lightTweakSunLight], eax
	mov dword [esp+0x18], _cstring_light_ambient_co
	mov dword [esp+0x14], 0x240
	mov [esp+0x10], edi
	mov [esp+0xc], esi
	mov [esp+0x8], esi
	mov [esp+0x4], edi
	mov dword [esp], _cstring_r_lighttweakambi1
	call _Z18Dvar_RegisterColorPKcfffftS0_
	mov [r_lightTweakAmbientColor], eax
	mov dword [esp+0x18], _cstring_sun_color
	mov dword [esp+0x14], 0x280
	mov [esp+0x10], edi
	mov [esp+0xc], esi
	mov [esp+0x8], edi
	mov [esp+0x4], esi
	mov dword [esp], _cstring_r_lighttweaksunc
	call _Z18Dvar_RegisterColorPKcfffftS0_
	mov [r_lightTweakSunColor], eax
	mov dword [esp+0x18], _cstring_sun_diffuse_colo
	mov dword [esp+0x14], 0x240
	mov [esp+0x10], edi
	mov [esp+0xc], edi
	mov [esp+0x8], esi
	mov [esp+0x4], esi
	mov dword [esp], _cstring_r_lighttweaksund
	call _Z18Dvar_RegisterColorPKcfffftS0_
	mov [r_lightTweakSunDiffuseColor], eax
	mov dword [esp+0x1c], _cstring_sun_direction_in
	mov dword [esp+0x18], 0x1280
	mov dword [esp+0x14], 0x43b40000
	mov dword [esp+0x10], 0xc3b40000
	mov [esp+0xc], esi
	mov [esp+0x8], esi
	mov [esp+0x4], esi
	mov dword [esp], _cstring_r_lighttweaksund1
	call _Z17Dvar_RegisterVec3PKcffffftS0_
	mov [r_lightTweakSunDirection], eax
	mov dword [esp+0xc], _cstring_min_reflection_i
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_r_envmapoverride
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [r_envMapOverride], eax
	mov dword [esp+0x14], _cstring_min_reflection_i
	mov dword [esp+0x10], 0x0
	mov ebx, 0x40000000
	mov [esp+0xc], ebx
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x3e4ccccd
	mov dword [esp], _cstring_r_envmapmininten
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [r_envMapMinIntensity], eax
	mov dword [esp+0x14], _cstring_max_reflection_i
	mov dword [esp+0x10], 0x0
	mov [esp+0xc], ebx
	mov dword [esp+0x8], 0x3c23d70a
	mov dword [esp+0x4], 0x3f000000
	mov dword [esp], _cstring_r_envmapmaxinten
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [r_envMapMaxIntensity], eax
	mov dword [esp+0x14], _cstring_reflection_expon
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x41a00000
	mov dword [esp+0x8], 0x3d4ccccd
	mov dword [esp+0x4], 0x40a00000
	mov dword [esp], _cstring_r_envmapexponent
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [r_envMapExponent], eax
	mov dword [esp+0x14], _cstring_max_sun_specular
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x40800000
	mov [esp+0x8], esi
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_r_envmapsuninten
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [r_envMapSunIntensity], eax
	mov dword [esp+0x14], _cstring_write_all_graphi
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x7fffffff
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_r_logfile
	call _Z16Dvar_RegisterIntPKciiitS0_
	mov [r_logFile], eax
	mov dword [esp+0xc], _cstring_skips_all_render
	mov dword [esp+0x8], 0x80
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_r_norefresh
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [r_norefresh], eax
	mov dword [esp+0x14], _cstring_scale_3d_viewpor
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], edi
	mov [esp+0x8], esi
	mov [esp+0x4], edi
	mov dword [esp], _cstring_r_scaleviewport
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [r_scaleViewport], eax
	mov dword [esp+0x10], _cstring_transparency_ant
	mov dword [esp+0xc], 0x1
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], s_aaAlphaNames
	mov dword [esp], _cstring_r_aaalpha
	call _Z17Dvar_RegisterEnumPKcPS0_itS0_
	mov [r_aaAlpha], eax
	mov dword [esp+0x14], _cstring_antialiasing_sam
	mov dword [esp+0x10], 0x21
	mov dword [esp+0xc], 0x10
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_r_aasamples
	call _Z16Dvar_RegisterIntPKciiitS0_
	mov [r_aaSamples], eax
	mov dword [esp+0xc], _cstring_enable_vsync_bef
	mov dword [esp+0x8], 0x21
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_r_vsync
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [r_vsync], eax
	mov dword [esp+0x10], _cstring_controls_how_the
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], r_clearNames
	mov dword [esp], _cstring_r_clear
	call _Z17Dvar_RegisterEnumPKcPS0_itS0_
	mov [r_clear], eax
	mov dword [esp+0x18], _cstring_color_to_clear_t
	mov dword [esp+0x14], 0x0
	mov [esp+0x10], esi
	mov [esp+0xc], esi
	mov [esp+0x8], esi
	mov [esp+0x4], esi
	mov dword [esp], _cstring_r_clearcolor
	call _Z18Dvar_RegisterColorPKcfffftS0_
	mov [r_clearColor], eax
	mov dword [esp+0x18], _cstring_color_to_clear_e
	mov dword [esp+0x14], 0x0
	mov [esp+0x10], esi
	mov [esp+0xc], esi
	mov [esp+0x8], esi
	mov [esp+0x4], esi
	mov dword [esp], _cstring_r_clearcolor2
	call _Z18Dvar_RegisterColorPKcfffftS0_
	mov [r_clearColor2], eax
	mov dword [esp+0xc], _cstring_enable_sun_effec
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_r_drawsun
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [r_drawSun], eax
	mov dword [esp+0xc], _cstring_enable_world_dec
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_r_drawdecals
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [r_drawDecals], eax
	mov dword [esp+0x14], _cstring_maximum_number_o
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x4
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x4
	mov dword [esp], _cstring_r_dlightlimit
	call _Z16Dvar_RegisterIntPKciiitS0_
	mov [r_dlightLimit], eax
	mov dword [esp+0x14], _cstring_relative_inner_f
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x3f7d70a4
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x3f333333
	mov dword [esp], _cstring_r_spotlightfovin
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [r_spotLightFovInnerFraction], eax
	mov dword [esp+0x14], _cstring_radius_of_the_ci
	mov dword [esp+0x10], 0x1080
	mov ebx, 0x44960000
	mov [esp+0xc], ebx
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x42100000
	mov dword [esp], _cstring_r_spotlightstart
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [r_spotLightStartRadius], eax
	mov dword [esp+0x14], _cstring_radius_of_the_ci1
	mov dword [esp+0x10], 0x1080
	mov [esp+0xc], ebx
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x43440000
	mov dword [esp], _cstring_r_spotlightendra
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [r_spotLightEndRadius], eax
	mov dword [esp+0xc], _cstring_enable_shadows_f
	mov dword [esp+0x8], 0x80
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_r_spotlightshado
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [r_spotLightShadows], eax
	mov dword [esp+0xc], _cstring_enable_static_mo1
	mov dword [esp+0x8], 0x80
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_r_spotlightsmode
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [r_spotLightSModelShadows], eax
	mov dword [esp+0xc], _cstring_enable_entity_sh
	mov dword [esp+0x8], 0x80
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_r_spotlightentit
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [r_spotLightEntityShadows], eax
	mov dword [esp+0x14], _cstring_brightness_scale
	mov dword [esp+0x10], 0x1080
	mov dword [esp+0xc], 0x41800000
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x41600000
	mov dword [esp], _cstring_r_spotlightbrigh
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [r_spotLightBrightness], eax
	mov dword [esp+0xc], _cstring_enable_water_ani
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_r_drawwater
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [r_drawWater], eax
	mov dword [esp+0xc], _cstring_lock_the_viewpoi
	mov dword [esp+0x8], 0x80
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_r_lockpvs
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [r_lockPvs], eax
	mov dword [esp+0xc], _cstring_skipt_the_determ
	mov dword [esp+0x8], 0x80
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_r_skippvs
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [r_skipPvs], eax
	mov dword [esp+0x14], _cstring_helps_cull_geome
	mov dword [esp+0x10], 0x1
	mov [esp+0xc], edi
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x3f333333
	mov dword [esp], _cstring_r_portalbevels
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [r_portalBevels], eax
	mov dword [esp+0xc], _cstring_use_screenspace_
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_r_portalbevelson
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [r_portalBevelsOnly], eax
	mov dword [esp+0xc], _cstring_only_draw_things
	mov dword [esp+0x8], 0x80
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_r_singlecell
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [r_singleCell], eax
	mov dword [esp+0x14], _cstring_stop_portal_recu
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x64
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_r_portalwalklimi
	call _Z16Dvar_RegisterIntPKciiitS0_
	mov [r_portalWalkLimit], eax
	mov dword [esp+0x14], _cstring_dont_clip_child_
	mov dword [esp+0x10], 0x0
	mov [esp+0xc], edi
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x3ca3d70a
	mov dword [esp], _cstring_r_portalminclipa
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [r_portalMinClipArea], eax
	mov dword [esp+0x14], _cstring_ignore_r_portalm
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x64
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x2
	mov dword [esp], _cstring_r_portalminrecur
	call _Z16Dvar_RegisterIntPKciiitS0_
	mov [r_portalMinRecurseDepth], eax
	mov dword [esp+0x14], _cstring_show_portals_for
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x3
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_r_showportals
	call _Z16Dvar_RegisterIntPKciiitS0_
	mov [r_showPortals], eax
	mov dword [esp+0x10], _cstring_show_front_buffe
	mov dword [esp+0xc], 0x80
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], fbColorDebugNames
	mov dword [esp], _cstring_r_showfbcolordeb
	call _Z17Dvar_RegisterEnumPKcPS0_itS0_
	mov [r_showFbColorDebug], eax
	mov dword [esp+0xc], _cstring_show_float_z_buf
	mov dword [esp+0x8], 0x80
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_r_showfloatzdebu
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [r_showFloatZDebug], eax
	mov dword [esp+0xc], _cstring_allocate_a_float
	mov dword [esp+0x8], 0x20
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_r_floatz
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [r_floatz], eax
	mov dword [esp+0xc], _cstring_enable_z_feather
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_r_zfeather
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [r_zFeather], eax
	mov dword [esp+0xc], _cstring_enable_depth_pre
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_r_depthprepass
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [r_depthPrepass], eax
	mov dword [esp+0x14], _cstring_distance_for_hig
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x7f7fffff
	mov dword [esp+0x8], 0xbf800000
	mov dword [esp+0x4], 0xbf800000
	mov dword [esp], _cstring_r_highloddist
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [r_highLodDist], eax
	mov dword [esp+0x14], _cstring_distance_for_med
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x7f7fffff
	mov dword [esp+0x8], 0xbf800000
	mov dword [esp+0x4], 0xbf800000
	mov dword [esp], _cstring_r_mediumloddist
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [r_mediumLodDist], eax
	mov dword [esp+0x14], _cstring_distance_for_low
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x7f7fffff
	mov dword [esp+0x8], 0xbf800000
	mov dword [esp+0x4], 0xbf800000
	mov dword [esp], _cstring_r_lowloddist
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [r_lowLodDist], eax
	mov dword [esp+0x14], _cstring_distance_for_low1
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x7f7fffff
	mov dword [esp+0x8], 0xbf800000
	mov dword [esp+0x4], 0xbf800000
	mov dword [esp], _cstring_r_lowestloddist
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [r_lowestLodDist], eax
	mov dword [esp+0x10], _cstring_force_all_level_
	mov dword [esp+0xc], 0x80
	mov dword [esp+0x8], 0x4
	mov dword [esp+0x4], r_forceLodNames
	mov dword [esp], _cstring_r_forcelod
	call _Z17Dvar_RegisterEnumPKcPS0_itS0_
	mov [r_forceLod], eax
	mov dword [esp+0xc], _cstring_set_to_0_to_repl
	mov dword [esp+0x8], 0xa0
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_r_modelvertcolor
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [r_modelVertColor], eax
	mov dword [esp+0xc], _cstring_enable_shadow_co
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_sc_enable
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [sc_enable], eax
	mov dword [esp+0x14], _cstring_enable_shadow_co1
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x4
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x2
	mov dword [esp], _cstring_sc_blur
	call _Z16Dvar_RegisterIntPKciiitS0_
	mov [sc_blur], eax
	mov dword [esp+0x14], _cstring_number_of_shadow
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x18
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x18
	mov dword [esp], _cstring_sc_count
	call _Z16Dvar_RegisterIntPKciiitS0_
	mov [sc_count], eax
	mov dword [esp+0x14], _cstring_show_debugging_i
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x18
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x18
	mov dword [esp], _cstring_sc_debugcasterco
	call _Z16Dvar_RegisterIntPKciiitS0_
	mov [sc_debugCasterCount], eax
	mov dword [esp+0x14], _cstring_show_debugging_i1
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x18
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x18
	mov dword [esp], _cstring_sc_debugreceiver
	call _Z16Dvar_RegisterIntPKciiitS0_
	mov [sc_debugReceiverCount], eax
	mov dword [esp+0xc], _cstring_show_shadow_over
	mov dword [esp+0x8], 0x80
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_sc_showoverlay
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [sc_showOverlay], eax
	mov dword [esp+0xc], _cstring_show_debug_infor
	mov dword [esp+0x8], 0x80
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_sc_showdebug
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [sc_showDebug], eax
	mov dword [esp+0x14], _cstring_number_of_desire
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x18
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0xc
	mov dword [esp], _cstring_sc_wantcount
	call _Z16Dvar_RegisterIntPKciiitS0_
	mov [sc_wantCount], eax
	mov dword [esp+0x14], _cstring_margin_of_error_
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x18
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_sc_wantcountmarg
	call _Z16Dvar_RegisterIntPKciiitS0_
	mov [sc_wantCountMargin], eax
	mov dword [esp+0x14], _cstring_shadow_cookie_fa
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], edi
	mov [esp+0x8], esi
	mov ebx, 0x3e800000
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_sc_faderange
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [sc_fadeRange], eax
	mov dword [esp+0x14], _cstring_rate_at_which_th
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x41a00000
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x40000000
	mov dword [esp], _cstring_sc_shadowinrate
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [sc_shadowInRate], eax
	mov dword [esp+0x14], _cstring_rate_at_which_th1
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x41a00000
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x40a00000
	mov dword [esp], _cstring_sc_shadowoutrate
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [sc_shadowOutRate], eax
	mov dword [esp+0x14], _cstring_shadow_cookie_le
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x44fa0000
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x43c80000
	mov dword [esp], _cstring_sc_length
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [sc_length], eax
	mov dword [esp+0x14], _cstring_shadow_cookie_of
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x7f7fffff
	mov dword [esp+0x8], 0xff7fffff
	mov [esp+0x4], esi
	mov dword [esp], _cstring_sc_offscreencast
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [sc_offscreenCasterLodBias], eax
	mov dword [esp+0x14], _cstring_shadow_cookie_of1
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x7f7fffff
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x41a00000
	mov dword [esp], _cstring_sc_offscreencast1
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [sc_offscreenCasterLodScale], eax
	mov dword [esp+0xc], _cstring_enable_shadow_ma
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_sm_enable
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [sm_enable], eax
	mov dword [esp+0xc], _cstring_enable_sun_shado
	mov dword [esp+0x8], 0x1080
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_sm_sunenable
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [sm_sunEnable], eax
	mov dword [esp+0xc], _cstring_enable_spot_shad
	mov dword [esp+0x8], 0x1080
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_sm_spotenable
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [sm_spotEnable], eax
	mov dword [esp+0x14], _cstring_limits_how_many_
	mov dword [esp+0x10], 0x1
	mov dword [esp+0xc], 0x4
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x4
	mov dword [esp], _cstring_sm_maxlights
	call _Z16Dvar_RegisterIntPKciiitS0_
	mov [sm_maxLights], eax
	mov dword [esp+0x14], _cstring_how_many_seconds
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x40a00000
	mov dword [esp+0x8], 0x3c23d70a
	mov [esp+0x4], edi
	mov dword [esp], _cstring_sm_spotshadowfad
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [sm_spotShadowFadeTime], eax
	mov dword [esp+0x14], _cstring_when_picking_sha
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x44800000
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x42800000
	mov dword [esp], _cstring_sm_lightscore_ey
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [sm_lightScore_eyeProjectDist], eax
	mov dword [esp+0x14], _cstring_when_picking_sha1
	mov dword [esp+0x10], 0x0
	mov [esp+0xc], edi
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x3e000000
	mov dword [esp], _cstring_sm_lightscore_sp
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [sm_lightScore_spotProjectFrac], eax
	mov dword [esp+0x14], _cstring_shadow_map_offse
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x41000000
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x40000000
	mov dword [esp], _cstring_sm_polygonoffset
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [sm_polygonOffsetScale], eax
	mov dword [esp+0x14], _cstring_shadow_map_offse1
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x42000000
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x3f000000
	mov dword [esp], _cstring_sm_polygonoffset1
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [sm_polygonOffsetBias], eax
	mov dword [esp+0x14], _cstring_shadow_sample_si
	mov dword [esp+0x10], 0x1080
	mov dword [esp+0xc], 0x42000000
	mov dword [esp+0x8], 0x3d800000
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_sm_sunsamplesize
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [sm_sunSampleSizeNear], eax
	mov dword [esp+0x1c], _cstring_sun_shadow_cente
	mov dword [esp+0x18], 0x1080
	mov dword [esp+0x14], 0x7f7fffff
	mov dword [esp+0x10], 0xff7fffff
	mov [esp+0xc], esi
	mov [esp+0x8], esi
	mov [esp+0x4], esi
	mov dword [esp], _cstring_sm_sunshadowcent
	call _Z17Dvar_RegisterVec3PKcffffftS0_
	mov [sm_sunShadowCenter], eax
	mov dword [esp+0x14], _cstring_sun_shadow_scale
	mov dword [esp+0x10], 0x1080
	mov [esp+0xc], edi
	mov [esp+0x8], ebx
	mov [esp+0x4], edi
	mov dword [esp], _cstring_sm_sunshadowscal
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [sm_sunShadowScale], eax
	mov dword [esp+0xc], _cstring_strict_shadow_ma
	mov dword [esp+0x8], 0x80
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_sm_strictcull
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [sm_strictCull], eax
	mov dword [esp+0xc], _cstring_fast_sun_shadow
	mov dword [esp+0x8], 0x80
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_sm_fastsunshadow
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [sm_fastSunShadow], eax
	mov dword [esp+0xc], _cstring_fast_spot_shadow
	mov dword [esp+0x8], 0x80
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_sm_qualityspotsh
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [sm_qualitySpotShadow], eax
	mov dword [esp+0x14], _cstring_dev_tweak_to_blu
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x42000000
	mov [esp+0x8], esi
	mov [esp+0x4], esi
	mov dword [esp], _cstring_r_blur
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [r_blur], eax
	mov dword [esp+0xc], _cstring_enable_distortio
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_r_distortion
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [r_distortion], eax
	mov dword [esp+0xc], _cstring_allow_glow
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_r_glow_allowed
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [r_glow_allowed], eax
	mov dword [esp+0xc], _cstring_force_allow_glow
	mov dword [esp+0x8], 0x1000
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_r_glow_allowed_s
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [r_glow_allowed_script_forced], eax
	mov dword [esp+0xc], _cstring_enable_glow
	mov dword [esp+0x8], 0x80
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_r_glow
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [r_glow], eax
	mov dword [esp+0xc], _cstring_overide_glow_wit
	mov dword [esp+0x8], 0x80
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_r_glowusetweaks
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [r_glowUseTweaks], eax
	mov dword [esp+0xc], _cstring_tweak_dev_var_en
	mov dword [esp+0x8], 0x80
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_r_glowtweakenabl
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [r_glowTweakEnable], eax
	mov dword [esp+0x14], _cstring_tweak_dev_var_gl
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x42000000
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x40a00000
	mov dword [esp], _cstring_r_glowtweakradiu
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [r_glowTweakRadius], eax
	mov dword [esp+0x14], _cstring_tweak_dev_var_gl1
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x41a00000
	mov [esp+0x8], esi
	mov [esp+0x4], edi
	mov dword [esp], _cstring_r_glowtweakbloom
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [r_glowTweakBloomIntensity], eax
	mov dword [esp+0x14], _cstring_tweak_dev_var_gl2
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], edi
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x3f000000
	mov dword [esp], _cstring_r_glowtweakbloom1
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [r_glowTweakBloomCutoff], eax
	mov dword [esp+0x14], _cstring_tweak_dev_var_gl3
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], edi
	mov [esp+0x8], esi
	mov [esp+0x4], esi
	mov dword [esp], _cstring_r_glowtweakbloom2
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [r_glowTweakBloomDesaturation], eax
	mov dword [esp+0xc], _cstring_overide_film_eff
	mov dword [esp+0x8], 0x80
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_r_filmusetweaks
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [r_filmUseTweaks], eax
	mov dword [esp+0xc], _cstring_tweak_dev_var_en1
	mov dword [esp+0x8], 0x1000
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_r_filmtweakenabl
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [r_filmTweakEnable], eax
	mov dword [esp+0x14], _cstring_tweak_dev_var_fi
	mov dword [esp+0x10], 0x1000
	mov dword [esp+0xc], 0x40800000
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x3fb33333
	mov dword [esp], _cstring_r_filmtweakcontr
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [r_filmTweakContrast], eax
	mov dword [esp+0x14], _cstring_contrast_adjustm
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x40800000
	mov [esp+0x8], esi
	mov [esp+0x4], edi
	mov dword [esp], _cstring_r_contrast
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [r_contrast], eax
	mov dword [esp+0x14], _cstring_brightness_adjus
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], edi
	mov dword [esp+0x8], 0xbf800000
	mov [esp+0x4], esi
	mov dword [esp], _cstring_r_brightness
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [r_brightness], eax
	mov dword [esp+0x14], _cstring_desaturation_adj
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x40800000
	mov [esp+0x8], esi
	mov [esp+0x4], edi
	mov dword [esp], _cstring_r_desaturation
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [r_desaturation], eax
	mov dword [esp+0x14], _cstring_tweak_dev_var_fi1
	mov dword [esp+0x10], 0x1000
	mov [esp+0xc], edi
	mov dword [esp+0x8], 0xbf800000
	mov [esp+0x4], esi
	mov dword [esp], _cstring_r_filmtweakbrigh
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [r_filmTweakBrightness], eax
	mov dword [esp+0x14], _cstring_tweak_dev_var_de
	mov dword [esp+0x10], 0x1000
	mov [esp+0xc], edi
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x3e4ccccd
	mov dword [esp], _cstring_r_filmtweakdesat
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [r_filmTweakDesaturation], eax
	mov dword [esp+0xc], _cstring_tweak_dev_var_en2
	mov dword [esp+0x8], 0x1000
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_r_filmtweakinver
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [r_filmTweakInvert], eax
	mov dword [esp+0x1c], _cstring_tweak_dev_var_fi2
	mov dword [esp+0x18], 0x1000
	mov dword [esp+0x14], 0x40000000
	mov [esp+0x10], esi
	mov [esp+0xc], edi
	mov ebx, 0x3f59999a
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x3f333333
	mov dword [esp], _cstring_r_filmtweakdarkt
	call _Z17Dvar_RegisterVec3PKcffffftS0_
	mov [r_filmTweakDarkTint], eax
	mov dword [esp+0x1c], _cstring_tweak_dev_var_fi3
	mov dword [esp+0x18], 0x1000
	mov dword [esp+0x14], 0x40000000
	mov [esp+0x10], esi
	mov [esp+0xc], ebx
	mov dword [esp+0x8], 0x3f866666
	mov dword [esp+0x4], 0x3f8ccccd
	mov dword [esp], _cstring_r_filmtweaklight
	call _Z17Dvar_RegisterVec3PKcffffftS0_
	mov [r_filmTweakLightTint], eax
	mov dword [esp+0xc], _cstring_enable_the_depth
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_r_dof_enable
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [r_dof_enable], eax
	mov dword [esp+0xc], _cstring_use_dvars_to_set
	mov dword [esp+0x8], 0x80
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_r_dof_tweak
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [r_dof_tweak], eax
	mov dword [esp+0x14], _cstring_sets_the_radius_
	mov dword [esp+0x10], 0x80
	mov edi, 0x41200000
	mov [esp+0xc], edi
	mov dword [esp+0x8], 0x40800000
	mov dword [esp+0x4], 0x40c00000
	mov dword [esp], _cstring_r_dof_nearblur
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [r_dof_nearBlur], eax
	mov dword [esp+0x14], _cstring_sets_the_radius_
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], edi
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x3fe66666
	mov dword [esp], _cstring_r_dof_farblur
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [r_dof_farBlur], eax
	mov dword [esp+0x14], _cstring_depth_of_field_v
	mov dword [esp+0x10], 0x80
	mov ebx, 0x43000000
	mov [esp+0xc], ebx
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x40000000
	mov dword [esp], _cstring_r_dof_viewmodels
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [r_dof_viewModelStart], eax
	mov dword [esp+0x14], _cstring_depth_of_field_v1
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], ebx
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x41000000
	mov dword [esp], _cstring_r_dof_viewmodele
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [r_dof_viewModelEnd], eax
	mov dword [esp+0x14], _cstring_depth_of_field_n
	mov dword [esp+0x10], 0x80
	mov ebx, 0x447a0000
	mov [esp+0xc], ebx
	mov [esp+0x8], esi
	mov [esp+0x4], edi
	mov dword [esp], _cstring_r_dof_nearstart
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [r_dof_nearStart], eax
	mov dword [esp+0x14], _cstring_depth_of_field_n1
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], ebx
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x42700000
	mov dword [esp], _cstring_r_dof_nearend
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [r_dof_nearEnd], eax
	mov dword [esp+0x14], _cstring_depth_of_field_f
	mov dword [esp+0x10], 0x80
	mov edi, 0x469c4000
	mov [esp+0xc], edi
	mov [esp+0x8], esi
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_r_dof_farstart
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [r_dof_farStart], eax
	mov dword [esp+0x14], _cstring_depth_of_field_f1
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], edi
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x45dac000
	mov dword [esp], _cstring_r_dof_farend
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [r_dof_farEnd], eax
	mov dword [esp+0x14], _cstring_depth_of_field_b
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x40400000
	mov dword [esp+0x8], 0x3dcccccd
	mov dword [esp+0x4], 0x3f000000
	mov dword [esp], _cstring_r_dof_bias
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [r_dof_bias], eax
	mov dword [esp+0xc], _cstring_prevents_snow_fr
	mov dword [esp+0x8], 0x1000
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_r_outdoor
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [r_outdoor], eax
	mov dword [esp+0x14], _cstring_affects_the_heig
	mov dword [esp+0x10], 0x1000
	mov ebx, 0x7f7fffff
	mov [esp+0xc], ebx
	mov dword [esp+0x8], 0xff7fffff
	mov dword [esp+0x4], 0x42000000
	mov dword [esp], _cstring_r_outdoorawaybia
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [r_outdoorAwayBias], eax
	mov dword [esp+0x14], _cstring_affects_the_heig
	mov dword [esp+0x10], 0x1000
	mov [esp+0xc], ebx
	mov dword [esp+0x8], 0xff7fffff
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_r_outdoordownbia
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [r_outdoorDownBias], eax
	mov dword [esp+0x14], _cstring_outdoor_zfeather
	mov dword [esp+0x10], 0x1000
	mov [esp+0xc], ebx
	mov dword [esp+0x8], 0xff7fffff
	mov dword [esp+0x4], 0x41000000
	mov dword [esp], _cstring_r_outdoorfeather
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [r_outdoorFeather], eax
	mov [esp], eax
	call _Z16Dvar_SetModifiedPK6dvar_s
	mov dword [esp+0xc], _cstring_set_sun_flare_va
	mov dword [esp+0x8], 0x80
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_r_sun_from_dvars
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [r_sun_from_dvars], eax
	mov dword [esp+0x14], _cstring_enable_developme
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x2
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_developer
	call _Z16Dvar_RegisterIntPKciiitS0_
	mov [developer], eax
	mov dword [esp+0xc], _cstring_allow_server_sid
	mov dword [esp+0x8], 0x48
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_sv_cheats
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov edx, sv_cheats
	mov [edx], eax
	mov dword [esp+0xc], _cstring_draw_stats_monit
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_com_statmon
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov edx, com_statmon
	mov [edx], eax
	mov dword [esp+0xc], _cstring_use_streaming_si
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_r_sse_skinning
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [r_sse_skinning], eax
	mov dword [esp+0x14], _cstring_index_of_the_mon
	mov dword [esp+0x10], 0x21
	mov dword [esp+0xc], 0x8
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_r_monitor
	call _Z16Dvar_RegisterIntPKciiitS0_
	mov [r_monitor], eax
	mov dword [esp+0x10], _cstring_preferred_render
	mov dword [esp+0xc], 0x21
	mov dword [esp+0x8], 0x2
	mov dword [esp+0x4], s_rendererNames
	mov dword [esp], _cstring_r_rendererprefer
	call _Z17Dvar_RegisterEnumPKcPS0_itS0_
	mov [r_rendererPreference], eax
	mov dword [esp+0x10], _cstring_the_renderer_cur
	mov dword [esp+0xc], 0x40
	mov dword [esp+0x8], 0x2
	mov dword [esp+0x4], s_rendererNames
	mov dword [esp], _cstring_r_rendererinuse
	call _Z17Dvar_RegisterEnumPKcPS0_itS0_
	mov [r_rendererInUse], eax
	mov dword [esp+0x10], _cstring_screen_aspect_ra
	mov dword [esp+0xc], 0x21
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], s_aspectRatioNames
	mov dword [esp], _cstring_r_aspectratio
	call _Z17Dvar_RegisterEnumPKcPS0_itS0_
	mov [r_aspectRatio], eax
	mov dword [esp+0xc], _cstring_special_resoluti
	mov dword [esp+0x8], 0x21
	mov dword [esp+0x4], _cstring_null
	mov dword [esp], _cstring_r_custommode
	call _Z19Dvar_RegisterStringPKcS0_tS0_
	mov [r_customMode], eax
	call _Z15R_WarnInitDvarsv
	mov dword [esp+0xc], _cstring_use_alternate_mo
	mov dword [esp+0x8], 0x21
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_r_altmodellighti
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [r_altModelLightingUpdate], eax
	mov dword [esp+0xc], _cstring_force_d3d_to_dra
	mov dword [esp+0x8], 0x21
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_r_preloadshaders
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [r_preloadShaders], eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z30R_ReflectionProbeRegisterDvarsv


;R_CheckDvarModified(dvar_s const*)
_Z19R_CheckDvarModifiedPK6dvar_s:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	cmp byte [eax+0xb], 0x0
	jnz _Z19R_CheckDvarModifiedPK6dvar_s_10
	xor eax, eax
	leave
	ret
_Z19R_CheckDvarModifiedPK6dvar_s_10:
	mov [esp], eax
	call _Z18Dvar_ClearModifiedPK6dvar_s
	mov eax, 0x1
	leave
	ret


;Initialized global or static variables of r_dvars:
SECTION .data
s_aspectRatioNames: dd _cstring_auto, _cstring_standard, _cstring_wide_1610, _cstring_wide_169, 0x0
s_rendererNames: dd _cstring_shader_model_20, _cstring_shader_model_30, _cstring_default, 0x0
r_forceLodNames: dd _cstring_high, _cstring_medium, _cstring_low, _cstring_lowest, _cstring_none, 0x0
fbColorDebugNames: dd _cstring_none1, _cstring_screen, _cstring_feedback, 0x0
r_clearNames: dd _cstring_never, _cstring_devonly_blink, _cstring_blink, _cstring_steady, _cstring_fog_color, 0x0
s_aaAlphaNames: dd _cstring_off, _cstring_dither_fast, _cstring_supersample_nice, 0x0
showPixelCostNames: dd _cstring_off, _cstring_timing, _cstring_use_depth, _cstring_ignore_depth, 0x0
normalMapNames: dd _cstring_flat, _cstring_unchanged, 0x0
colorMapNames: dd _cstring_black, _cstring_unchanged, _cstring_white, _cstring_gray, 0x0
gpuSyncNames: dd _cstring_off, _cstring_adaptive, _cstring_aggressive, 0x0
debugShaderNames: dd _cstring_none, _cstring_normal, _cstring_basistangent, _cstring_basisbinormal, _cstring_basisnormal, 0x0
mipFilterNames: dd _cstring_unchanged, _cstring_force_trilinear, _cstring_force_bilinear, _cstring_force_mipmaps_of, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0


;Initialized constant data of r_dvars:
SECTION .rdata


;Zero initialized global or static variables of r_dvars:
SECTION .bss
r_fullscreen: resb 0x4
r_pretess: resb 0x4
sm_fastSunShadow: resb 0x4
r_smc_enable: resb 0x4
r_lightTweakAmbient: resb 0x4
r_lightTweakAmbientColor: resb 0x4
r_lightTweakDiffuseFraction: resb 0x4
r_lightTweakSunColor: resb 0x4
r_lightTweakSunDiffuseColor: resb 0x4
r_lightTweakSunDirection: resb 0x4
r_lightTweakSunLight: resb 0x4
sm_enable: resb 0x4
sm_sunSampleSizeNear: resb 0x4
r_loadForRenderer: resb 0x4
r_useLayeredMaterials: resb 0x4
r_drawDecals: resb 0x4
r_portalBevels: resb 0x4
r_portalBevelsOnly: resb 0x4
r_portalMinClipArea: resb 0x4
r_portalMinRecurseDepth: resb 0x4
r_portalWalkLimit: resb 0x4
r_showPortals: resb 0x4
r_singleCell: resb 0x4
r_skipPvs: resb 0x4
r_vc_makelog: resb 0x4
r_zfar: resb 0x4
sc_enable: resb 0x4
sm_strictCull: resb 0x4
r_lightMap: resb 0x4
r_debugShader: resb 0x4
r_fullbright: resb 0x4
r_diffuseColorScale: resb 0x4
r_specularColorScale: resb 0x4
r_rendererInUse: resb 0x4
sm_polygonOffsetBias: resb 0x4
sm_polygonOffsetScale: resb 0x4
developer: resb 0x4
r_aaAlpha: resb 0x4
r_aaSamples: resb 0x4
r_altModelLightingUpdate: resb 0x4
r_aspectRatio: resb 0x4
r_blur: resb 0x4
r_brightness: resb 0x4
r_cacheModelLighting: resb 0x4
r_cacheSModelLighting: resb 0x4
r_clear: resb 0x4
r_clearColor: resb 0x4
r_clearColor2: resb 0x4
r_colorMap: resb 0x4
r_contrast: resb 0x4
r_customMode: resb 0x4
r_debugLineWidth: resb 0x4
r_depthPrepass: resb 0x4
r_desaturation: resb 0x4
r_detail: resb 0x4
r_displayRefresh: resb 0x4
r_distortion: resb 0x4
r_dlightLimit: resb 0x4
r_dof_bias: resb 0x4
r_dof_enable: resb 0x4
r_dof_farBlur: resb 0x4
r_dof_farEnd: resb 0x4
r_dof_farStart: resb 0x4
r_dof_nearBlur: resb 0x4
r_dof_nearEnd: resb 0x4
r_dof_nearStart: resb 0x4
r_dof_tweak: resb 0x4
r_dof_viewModelEnd: resb 0x4
r_dof_viewModelStart: resb 0x4
r_drawSun: resb 0x4
r_drawWater: resb 0x4
r_envMapExponent: resb 0x4
r_envMapMaxIntensity: resb 0x4
r_envMapMinIntensity: resb 0x4
r_envMapOverride: resb 0x4
r_envMapSpecular: resb 0x4
r_envMapSunIntensity: resb 0x4
r_fastSkin: resb 0x4
r_filmTweakBrightness: resb 0x4
r_filmTweakContrast: resb 0x4
r_filmTweakDarkTint: resb 0x4
r_filmTweakDesaturation: resb 0x4
r_filmTweakEnable: resb 0x4
r_filmTweakInvert: resb 0x4
r_filmTweakLightTint: resb 0x4
r_filmUseTweaks: resb 0x4
r_floatz: resb 0x4
r_fog: resb 0x4
r_forceLod: resb 0x4
r_gamma: resb 0x4
r_glow: resb 0x4
r_glowTweakBloomCutoff: resb 0x4
r_glowTweakBloomDesaturation: resb 0x4
r_glowTweakBloomIntensity: resb 0x4
r_glowTweakEnable: resb 0x4
r_glowTweakRadius: resb 0x4
r_glowUseTweaks: resb 0x4
r_glow_allowed: resb 0x4
r_glow_allowed_script_forced: resb 0x4
r_gpuSync: resb 0xc
r_highLodDist: resb 0x4
r_ignore: resb 0x14
r_ignoreHwGamma: resb 0x4
r_lockPvs: resb 0x4
r_lodBiasRigid: resb 0x4
r_lodBiasSkinned: resb 0x4
r_lodScaleRigid: resb 0x4
r_lodScaleSkinned: resb 0x4
r_logFile: resb 0x4
r_lowLodDist: resb 0x4
r_lowestLodDist: resb 0x4
r_mediumLodDist: resb 0x4
r_mode: resb 0x4
r_modelVertColor: resb 0x4
r_monitor: resb 0x4
r_multiGpu: resb 0x4
r_norefresh: resb 0x4
r_normal: resb 0x4
r_normalMap: resb 0x4
r_outdoor: resb 0x4
r_outdoorAwayBias: resb 0x4
r_outdoorDownBias: resb 0x4
r_outdoorFeather: resb 0x4
r_picmip: resb 0x4
r_picmip_bump: resb 0x4
r_picmip_manual: resb 0x4
r_picmip_spec: resb 0x4
r_picmip_water: resb 0x4
r_polygonOffsetBias: resb 0x4
r_polygonOffsetScale: resb 0x4
r_preloadShaders: resb 0x4
r_rendererPreference: resb 0x4
r_resampleScene: resb 0x4
r_scaleViewport: resb 0x4
r_showFbColorDebug: resb 0x4
r_showFloatZDebug: resb 0x4
r_showLightGrid: resb 0x4
r_showMissingLightGrid: resb 0x4
r_showPixelCost: resb 0x4
r_skinCache: resb 0x4
r_specular: resb 0x4
r_specularMap: resb 0x4
r_spotLightBrightness: resb 0x4
r_spotLightEndRadius: resb 0x4
r_spotLightEntityShadows: resb 0x4
r_spotLightFovInnerFraction: resb 0x4
r_spotLightSModelShadows: resb 0x4
r_spotLightShadows: resb 0x4
r_spotLightStartRadius: resb 0x4
r_sse_skinning: resb 0x4
r_sun_from_dvars: resb 0x4
r_texFilterAnisoMax: resb 0x4
r_texFilterAnisoMin: resb 0x4
r_texFilterDisable: resb 0x4
r_texFilterMipBias: resb 0x4
r_texFilterMipMode: resb 0x4
r_vc_showlog: resb 0x4
r_vsync: resb 0x4
r_zFeather: resb 0x4
r_znear: resb 0x4
r_znear_depthhack: resb 0x4
sc_blur: resb 0x4
sc_count: resb 0x4
sc_debugCasterCount: resb 0x4
sc_debugReceiverCount: resb 0x4
sc_fadeRange: resb 0x4
sc_length: resb 0x4
sc_offscreenCasterLodBias: resb 0x4
sc_offscreenCasterLodScale: resb 0x4
sc_shadowInRate: resb 0x4
sc_shadowOutRate: resb 0x4
sc_showDebug: resb 0x4
sc_showOverlay: resb 0x4
sc_wantCount: resb 0x4
sc_wantCountMargin: resb 0x4
sm_lightScore_eyeProjectDist: resb 0x4
sm_lightScore_spotProjectFrac: resb 0x4
sm_maxLights: resb 0x4
sm_qualitySpotShadow: resb 0x4
sm_spotEnable: resb 0x4
sm_spotShadowFadeTime: resb 0x4
sm_sunEnable: resb 0x4
sm_sunShadowCenter: resb 0x4
sm_sunShadowScale: resb 0x4
vid_xpos: resb 0x4
vid_ypos: resb 0x4


;All cstrings:
SECTION .rdata
_cstring_used_for_debuggi:		db "used for debugging anything",0
_cstring_r_ignore:		db "r_ignore",0
_cstring_game_window_hori:		db "Game window horizontal position",0
_cstring_vid_xpos:		db "vid_xpos",0
_cstring_game_window_vert:		db "game window vertical position",0
_cstring_vid_ypos:		db "vid_ypos",0
_cstring_display_game_ful:		db "Display game full screen",0
_cstring_r_fullscreen:		db "r_fullscreen",0
_cstring_gamma_value:		db "Gamma value",0
_cstring_r_gamma:		db "r_gamma",0
_cstring_ignore_hardware_:		db "Ignore hardware gamma",0
_cstring_r_ignorehwgamma:		db "r_ignorehwgamma",0
_cstring_maximum_anisotro:		db "Maximum anisotropy to use for texture filtering",0
_cstring_r_texfilteraniso:		db "r_texFilterAnisoMax",0
_cstring_disables_all_tex:		db "Disables all texture filtering (uses nearest only.)",0
_cstring_r_texfilterdisab:		db "r_texFilterDisable",0
_cstring_minimum_anisotro:		db "Minimum anisotropy to use for texture filtering (overridden by max)",0
_cstring_r_texfilteraniso1:		db "r_texFilterAnisoMin",0
_cstring_forces_all_mipma:		db "Forces all mipmaps to use a particular blend between levels (or disables mipping.)",0
_cstring_r_texfiltermipmo:		db "r_texFilterMipMode",0
_cstring_change_the_mipma:		db "Change the mipmap bias",0
_cstring_r_texfiltermipbi:		db "r_texFilterMipBias",0
_cstring_toggles_renderin:		db "Toggles rendering without lighting",0
_cstring_r_fullbright:		db "r_fullbright",0
_cstring_enable_shader_de:		db "Enable shader debugging information",0
_cstring_r_debugshader:		db "r_debugShader",0
_cstring_gpu_synchronizat:		db "GPU synchronization type (used to improve mouse responsiveness)",0
_cstring_r_gpusync:		db "r_gpuSync",0
_cstring_use_multiple_gpu:		db "Use multiple GPUs",0
_cstring_r_multigpu:		db "r_multiGpu",0
_cstring_enable_cache_for:		db "Enable cache for vertices of animated models",0
_cstring_r_skincache:		db "r_skinCache",0
_cstring_enable_fast_mode:		db "Enable fast model skinning",0
_cstring_r_fastskin:		db "r_fastSkin",0
_cstring_enable_static_mo:		db "Enable static model cache",0
_cstring_r_smc_enable:		db "r_smc_enable",0
_cstring_batch_surfaces_t:		db "Batch surfaces to reduce primitive count",0
_cstring_r_pretess:		db "r_pretess",0
_cstring_scale_the_level_:		db "Scale the level of detail distance for rigid models (larger reduces detail)",0
_cstring_r_lodscalerigid:		db "r_lodScaleRigid",0
_cstring_bias_the_level_o:		db "Bias the level of detail distance for rigid models (negative increases detail)",0
_cstring_r_lodbiasrigid:		db "r_lodBiasRigid",0
_cstring_scale_the_level_1:		db "Scale the level of detail distance for skinned models (larger reduces detail)",0
_cstring_r_lodscaleskinne:		db "r_lodScaleSkinned",0
_cstring_bias_the_level_o1:		db "Bias the level of detail distance for skinned models (negative increases detail)",0
_cstring_r_lodbiasskinned:		db "r_lodBiasSkinned",0
_cstring_things_closer_th:		db "Things closer than this aren",27h,"t drawn.  Reducing this increases z-fighting in the distance.",0
_cstring_r_znear:		db "r_znear",0
_cstring_viewmodel_near_c:		db "Viewmodel near clip plane",0
_cstring_r_znear_depthhac:		db "r_znear_depthhack",0
_cstring_change_the_dista:		db "Change the distance at which culling fog reaches 100% opacity; 0 is off",0
_cstring_r_zfar:		db "r_zfar",0
_cstring_set_to_0_to_disa:		db "Set to 0 to disable fog",0
_cstring_r_fog:		db "r_fog",0
_cstring_offset_scale_for:		db "Offset scale for decal polygons; bigger values z-fight less but poke through walls more",0
_cstring_r_polygonoffsets:		db "r_polygonOffsetScale",0
_cstring_offset_bias_for_:		db "Offset bias for decal polygons; bigger values z-fight less but poke through walls more",0
_cstring_r_polygonoffsetb:		db "r_polygonOffsetBias",0
_cstring_if_0_picmip_is_s:		db "If 0, picmip is set automatically.  If 1, picmip is set based on the other r_picmip dvars.",0
_cstring_r_picmip_manual:		db "r_picmip_manual",0
_cstring_picmip_level_of_:		db "Picmip level of color maps.  If r_picmip_manual is 0, this is read-only.",0
_cstring_r_picmip:		db "r_picmip",0
_cstring_picmip_level_of_1:		db "Picmip level of normal maps.  If r_picmip_manual is 0, this is read-only.",0
_cstring_r_picmip_bump:		db "r_picmip_bump",0
_cstring_picmip_level_of_2:		db "Picmip level of specular maps.  If r_picmip_manual is 0, this is read-only.",0
_cstring_r_picmip_spec:		db "r_picmip_spec",0
_cstring_picmip_level_of_3:		db "Picmip level of water maps.",0
_cstring_r_picmip_water:		db "r_picmip_water",0
_cstring_allows_shaders_t:		db "Allows shaders to use detail textures",0
_cstring_r_detail:		db "r_detail",0
_cstring_allows_shaders_t1:		db "Allows shaders to use normal maps",0
_cstring_r_normal:		db "r_normal",0
_cstring_allows_shaders_t2:		db "Allows shaders to use phong specular lighting",0
_cstring_r_specular:		db "r_specular",0
_cstring_enables_environm:		db "Enables environment map specular lighting",0
_cstring_r_envmapspecular:		db "r_envMapSpecular",0
_cstring_replace_all_ligh:		db "Replace all lightmaps with pure black or pure white",0
_cstring_r_lightmap:		db "r_lightMap",0
_cstring_replace_all_colo:		db "Replace all color maps with pure black or pure white",0
_cstring_r_colormap:		db "r_colorMap",0
_cstring_replace_all_norm:		db "Replace all normal maps with a flat normal map",0
_cstring_r_normalmap:		db "r_normalMap",0
_cstring_replace_all_spec:		db "Replace all specular maps with pure black (off) or pure white (super shiny)",0
_cstring_r_specularmap:		db "r_specularMap",0
_cstring_set_greater_than:		db "Set greater than 1 to brighten specular highlights",0
_cstring_r_specularcolors:		db "r_specularColorScale",0
_cstring_globally_scale_t:		db "Globally scale the diffuse color of all point lights",0
_cstring_r_diffusecolorsc:		db "r_diffuseColorScale",0
_cstring_set_to_true_to_u:		db "Set to true to use layered materials on shader model 3 hardware",0
_cstring_r_uselayeredmate:		db "r_useLayeredMaterials",0
_cstring_set_to_false_to_:		db "Set to false to disable dx allocations (for dedicated server mode)",0
_cstring_r_loadforrendere:		db "r_loadForRenderer",0
_cstring_upscale_the_fram:		db "Upscale the frame buffer with sharpen filter and color correction.",0
_cstring_r_resamplescene:		db "r_resampleScene",0
_cstring_shows_how_expens:		db "Shows how expensive it is to draw every pixel on the screen",0
_cstring_r_showpixelcost:		db "r_showPixelCost",0
_cstring_width_of_server_:		db "Width of server side debug lines",0
_cstring_r_debuglinewidth:		db "r_debugLineWidth",0
_cstring_enable_logging_o:		db "Enable logging of light grid points for the vis cache.  1 starts from scratch, 2 appends.",0
_cstring_r_vc_makelog:		db "r_vc_makelog",0
_cstring_show_this_many_r:		db "Show this many rows of light grid points for the vis cache",0
_cstring_r_vc_showlog:		db "r_vc_showlog",0
_cstring_show_light_grid_:		db "Show light grid debugging information",0
_cstring_r_showlightgrid:		db "r_showLightGrid",0
_cstring_use_rainbow_colo:		db "Use rainbow colors for entities that are outside the light grid",0
_cstring_r_showmissinglig:		db "r_showMissingLightGrid",0
_cstring_speed_up_static_:		db "Speed up static model lighting by caching previous results",0
_cstring_r_cachesmodellig:		db "r_cacheSModelLighting",0
_cstring_speed_up_model_l:		db "Speed up model lighting by caching previous results",0
_cstring_r_cachemodelligh:		db "r_cacheModelLighting",0
_cstring_ambient_light_st:		db "Ambient light strength",0
_cstring_r_lighttweakambi:		db "r_lightTweakAmbient",0
_cstring_diffuse_light_fr:		db "diffuse light fraction",0
_cstring_r_lighttweakdiff:		db "r_lightTweakDiffuseFraction",0
_cstring_sunlight_strengt:		db "Sunlight strength",0
_cstring_r_lighttweaksunl:		db "r_lightTweakSunLight",0
_cstring_light_ambient_co:		db "Light ambient color",0
_cstring_r_lighttweakambi1:		db "r_lightTweakAmbientColor",0
_cstring_sun_color:		db "Sun color",0
_cstring_r_lighttweaksunc:		db "r_lightTweakSunColor",0
_cstring_sun_diffuse_colo:		db "Sun diffuse color",0
_cstring_r_lighttweaksund:		db "r_lightTweakSunDiffuseColor",0
_cstring_sun_direction_in:		db "Sun direction in degrees",0
_cstring_r_lighttweaksund1:		db "r_lightTweakSunDirection",0
_cstring_min_reflection_i:		db "Min reflection intensity based on glancing angle.",0
_cstring_r_envmapoverride:		db "r_envMapOverride",0
_cstring_r_envmapmininten:		db "r_envMapMinIntensity",0
_cstring_max_reflection_i:		db "Max reflection intensity based on glancing angle.",0
_cstring_r_envmapmaxinten:		db "r_envMapMaxIntensity",0
_cstring_reflection_expon:		db "Reflection exponent.",0
_cstring_r_envmapexponent:		db "r_envMapExponent",0
_cstring_max_sun_specular:		db "Max sun specular intensity intensity with env map materials.",0
_cstring_r_envmapsuninten:		db "r_envMapSunIntensity",0
_cstring_write_all_graphi:		db "Write all graphics hardware calls for this many frames to a logfile",0
_cstring_r_logfile:		db "r_logFile",0
_cstring_skips_all_render:		db "Skips all rendering.  Useful for benchmarking.",0
_cstring_r_norefresh:		db "r_norefresh",0
_cstring_scale_3d_viewpor:		db "Scale 3D viewports by this fraction.  Use this to see if framerate is pixel shader bound.",0
_cstring_r_scaleviewport:		db "r_scaleViewport",0
_cstring_transparency_ant:		db "Transparency anti-aliasing method",0
_cstring_r_aaalpha:		db "r_aaAlpha",0
_cstring_antialiasing_sam:		db "Anti-aliasing sample count; 1 disables anti-aliasing",0
_cstring_r_aasamples:		db "r_aaSamples",0
_cstring_enable_vsync_bef:		db "Enable v-sync before drawing the next frame to avoid ",27h,"tearing",27h," artifacts.",0
_cstring_r_vsync:		db "r_vsync",0
_cstring_controls_how_the:		db "Controls how the color buffer is cleared",0
_cstring_r_clear:		db "r_clear",0
_cstring_color_to_clear_t:		db "Color to clear the screen to when clearing the frame buffer",0
_cstring_r_clearcolor:		db "r_clearColor",0
_cstring_color_to_clear_e:		db "Color to clear every second frame to (for use during development)",0
_cstring_r_clearcolor2:		db "r_clearColor2",0
_cstring_enable_sun_effec:		db "Enable sun effects",0
_cstring_r_drawsun:		db "r_drawSun",0
_cstring_enable_world_dec:		db "Enable world decal rendering",0
_cstring_r_drawdecals:		db "r_drawDecals",0
_cstring_maximum_number_o:		db "Maximum number of dynamic lights drawn simultaneously",0
_cstring_r_dlightlimit:		db "r_dlightLimit",0
_cstring_relative_inner_f:		db "Relative Inner FOV angle for the dynamic spot light. 0 is full fade 0.99 is almost no fade.",0
_cstring_r_spotlightfovin:		db "r_spotLightFovInnerFraction",0
_cstring_radius_of_the_ci:		db "Radius of the circle at the start of the spot light in inches.",0
_cstring_r_spotlightstart:		db "r_spotLightStartRadius",0
_cstring_radius_of_the_ci1:		db "Radius of the circle at the end of the spot light in inches.",0
_cstring_r_spotlightendra:		db "r_spotLightEndRadius",0
_cstring_enable_shadows_f:		db "Enable shadows for spot lights.",0
_cstring_r_spotlightshado:		db "r_spotLightShadows",0
_cstring_enable_static_mo1:		db "Enable static model shadows for spot lights.",0
_cstring_r_spotlightsmode:		db "r_spotLightSModelShadows",0
_cstring_enable_entity_sh:		db "Enable entity shadows for spot lights.",0
_cstring_r_spotlightentit:		db "r_spotLightEntityShadows",0
_cstring_brightness_scale:		db "Brightness scale for spot light to get overbrightness from the 0-1 particle color range.",0
_cstring_r_spotlightbrigh:		db "r_spotLightBrightness",0
_cstring_enable_water_ani:		db "Enable water animation",0
_cstring_r_drawwater:		db "r_drawWater",0
_cstring_lock_the_viewpoi:		db "Lock the viewpoint used for determining what is visible to the current position and direction",0
_cstring_r_lockpvs:		db "r_lockPvs",0
_cstring_skipt_the_determ:		db "Skipt the determination of what is in the potentially visible set (disables most drawing)",0
_cstring_r_skippvs:		db "r_skipPvs",0
_cstring_helps_cull_geome:		db "Helps cull geometry by angles of portals that are acute when projected onto the screen, value is the cosine of the angle",0
_cstring_r_portalbevels:		db "r_portalBevels",0
_cstring_use_screenspace_:		db "Use screen-space bounding box of portals rather than the actual shape of the portal projected onto the screen",0
_cstring_r_portalbevelson:		db "r_portalBevelsOnly",0
_cstring_only_draw_things:		db "Only draw things in the same cell as the camera.  Most useful for seeing how big the current cell is.",0
_cstring_r_singlecell:		db "r_singleCell",0
_cstring_stop_portal_recu:		db "Stop portal recursion after this many iterations.  Useful for debugging portal errors.",0
_cstring_r_portalwalklimi:		db "r_portalWalkLimit",0
_cstring_dont_clip_child_:		db "Don",27h,"t clip child portals by a parent portal smaller than this fraction of the screen area.",0
_cstring_r_portalminclipa:		db "r_portalMinClipArea",0
_cstring_ignore_r_portalm:		db "Ignore r_portalMinClipArea for portals with fewer than this many parent portals.",0
_cstring_r_portalminrecur:		db "r_portalMinRecurseDepth",0
_cstring_show_portals_for:		db "Show portals for debugging",0
_cstring_r_showportals:		db "r_showPortals",0
_cstring_show_front_buffe:		db "Show front buffer color debugging information",0
_cstring_r_showfbcolordeb:		db "r_showFbColorDebug",0
_cstring_show_float_z_buf:		db "Show float z buffer used to eliminate hard edges on particles near geometry",0
_cstring_r_showfloatzdebu:		db "r_showFloatZDebug",0
_cstring_allocate_a_float:		db "Allocate a float z buffer (required for effects such as floatz, dof, and laser light)",0
_cstring_r_floatz:		db "r_floatz",0
_cstring_enable_z_feather:		db "Enable z feathering (fixes particles clipping into geometry)",0
_cstring_r_zfeather:		db "r_zFeather",0
_cstring_enable_depth_pre:		db "Enable depth prepass (usually improves performance)",0
_cstring_r_depthprepass:		db "r_depthPrepass",0
_cstring_distance_for_hig:		db "Distance for high level of detail",0
_cstring_r_highloddist:		db "r_highLodDist",0
_cstring_distance_for_med:		db "Distance for medium level of detail",0
_cstring_r_mediumloddist:		db "r_mediumLodDist",0
_cstring_distance_for_low:		db "Distance for low level of detail",0
_cstring_r_lowloddist:		db "r_lowLodDist",0
_cstring_distance_for_low1:		db "Distance for lowest level of detail",0
_cstring_r_lowestloddist:		db "r_lowestLodDist",0
_cstring_force_all_level_:		db "Force all level of detail to this level",0
_cstring_r_forcelod:		db "r_forceLod",0
_cstring_set_to_0_to_repl:		db "Set to 0 to replace all model vertex colors with white when loaded",0
_cstring_r_modelvertcolor:		db "r_modelVertColor",0
_cstring_enable_shadow_co:		db "Enable shadow cookies",0
_cstring_sc_enable:		db "sc_enable",0
_cstring_enable_shadow_co1:		db "Enable shadow cookie blur",0
_cstring_sc_blur:		db "sc_blur",0
_cstring_number_of_shadow:		db "Number of shadow cookies",0
_cstring_sc_count:		db "sc_count",0
_cstring_show_debugging_i:		db "Show debugging information for the shadow cookie caster count",0
_cstring_sc_debugcasterco:		db "sc_debugCasterCount",0
_cstring_show_debugging_i1:		db "Show debugging information for the shadow cookie receiver count",0
_cstring_sc_debugreceiver:		db "sc_debugReceiverCount",0
_cstring_show_shadow_over:		db "Show shadow overlay for shadow cookies",0
_cstring_sc_showoverlay:		db "sc_showOverlay",0
_cstring_show_debug_infor:		db "Show debug information for shadow cookies",0
_cstring_sc_showdebug:		db "sc_showDebug",0
_cstring_number_of_desire:		db "Number of desired shadows",0
_cstring_sc_wantcount:		db "sc_wantCount",0
_cstring_margin_of_error_:		db "Margin of error on number of desired shadows",0
_cstring_sc_wantcountmarg:		db "sc_wantCountMargin",0
_cstring_shadow_cookie_fa:		db "Shadow cookie fade range",0
_cstring_sc_faderange:		db "sc_fadeRange",0
_cstring_rate_at_which_th:		db "Rate at which the shadow cookie horizon moves inwards",0
_cstring_sc_shadowinrate:		db "sc_shadowInRate",0
_cstring_rate_at_which_th1:		db "Rate at which the shadow cookie horizon moves outwards",0
_cstring_sc_shadowoutrate:		db "sc_shadowOutRate",0
_cstring_shadow_cookie_le:		db "Shadow cookie length",0
_cstring_sc_length:		db "sc_length",0
_cstring_shadow_cookie_of:		db "Shadow cookie off-screen caster level of detail bias",0
_cstring_sc_offscreencast:		db "sc_offscreenCasterLodBias",0
_cstring_shadow_cookie_of1:		db "Shadow cookie off-screen caster level of detail scale",0
_cstring_sc_offscreencast1:		db "sc_offscreenCasterLodScale",0
_cstring_enable_shadow_ma:		db "Enable shadow mapping",0
_cstring_sm_enable:		db "sm_enable",0
_cstring_enable_sun_shado:		db "Enable sun shadow mapping from script",0
_cstring_sm_sunenable:		db "sm_sunEnable",0
_cstring_enable_spot_shad:		db "Enable spot shadow mapping from script",0
_cstring_sm_spotenable:		db "sm_spotEnable",0
_cstring_limits_how_many_:		db "Limits how many primary lights can have shadow maps",0
_cstring_sm_maxlights:		db "sm_maxLights",0
_cstring_how_many_seconds:		db "How many seconds it takes for a primary light shadow map to fade in or out",0
_cstring_sm_spotshadowfad:		db "sm_spotShadowFadeTime",0
_cstring_when_picking_sha:		db "When picking shadows for primary lights, measure distance from a point this far in front of the camera.",0
_cstring_sm_lightscore_ey:		db "sm_lightScore_eyeProjectDist",0
_cstring_when_picking_sha1:		db "When picking shadows for primary lights, measure distance to a point this fraction of the light",27h,"s radius along it",27h,"s shadow direction.",0
_cstring_sm_lightscore_sp:		db "sm_lightScore_spotProjectFrac",0
_cstring_shadow_map_offse:		db "Shadow map offset scale",0
_cstring_sm_polygonoffset:		db "sm_polygonOffsetScale",0
_cstring_shadow_map_offse1:		db "Shadow map offset bias",0
_cstring_sm_polygonoffset1:		db "sm_polygonOffsetBias",0
_cstring_shadow_sample_si:		db "Shadow sample size",0
_cstring_sm_sunsamplesize:		db "sm_sunSampleSizeNear",0
_cstring_sun_shadow_cente:		db "Sun shadow center, 0 0 0 means don",27h,"t override",0
_cstring_sm_sunshadowcent:		db "sm_sunShadowCenter",0
_cstring_sun_shadow_scale:		db "Sun shadow scale optimization",0
_cstring_sm_sunshadowscal:		db "sm_sunShadowScale",0
_cstring_strict_shadow_ma:		db "Strict shadow map cull",0
_cstring_sm_strictcull:		db "sm_strictCull",0
_cstring_fast_sun_shadow:		db "Fast sun shadow",0
_cstring_sm_fastsunshadow:		db "sm_fastSunShadow",0
_cstring_fast_spot_shadow:		db "Fast spot shadow",0
_cstring_sm_qualityspotsh:		db "sm_qualitySpotShadow",0
_cstring_dev_tweak_to_blu:		db "Dev tweak to blur the screen",0
_cstring_r_blur:		db "r_blur",0
_cstring_enable_distortio:		db "Enable distortion",0
_cstring_r_distortion:		db "r_distortion",0
_cstring_allow_glow:		db "Allow glow.",0
_cstring_r_glow_allowed:		db "r_glow_allowed",0
_cstring_force_allow_glow:		db "Force ",27h,"allow glow",27h," to be treated as true, by script.",0
_cstring_r_glow_allowed_s:		db "r_glow_allowed_script_forced",0
_cstring_enable_glow:		db "Enable glow.",0
_cstring_r_glow:		db "r_glow",0
_cstring_overide_glow_wit:		db "Overide glow with tweak dvar values.",0
_cstring_r_glowusetweaks:		db "r_glowUseTweaks",0
_cstring_tweak_dev_var_en:		db "Tweak dev var; Enable glow",0
_cstring_r_glowtweakenabl:		db "r_glowTweakEnable",0
_cstring_tweak_dev_var_gl:		db "Tweak dev var; Glow radius in pixels at 640x480",0
_cstring_r_glowtweakradiu:		db "r_glowTweakRadius0",0
_cstring_tweak_dev_var_gl1:		db "Tweak dev var; Glow bloom intensity",0
_cstring_r_glowtweakbloom:		db "r_glowTweakBloomIntensity0",0
_cstring_tweak_dev_var_gl2:		db "Tweak dev var; Glow bloom cut off fraction",0
_cstring_r_glowtweakbloom1:		db "r_glowTweakBloomCutoff",0
_cstring_tweak_dev_var_gl3:		db "Tweak dev var; Glow bloom desaturation",0
_cstring_r_glowtweakbloom2:		db "r_glowTweakBloomDesaturation",0
_cstring_overide_film_eff:		db "Overide film effects with tweak dvar values.",0
_cstring_r_filmusetweaks:		db "r_filmUseTweaks",0
_cstring_tweak_dev_var_en1:		db "Tweak dev var; enable film color effects",0
_cstring_r_filmtweakenabl:		db "r_filmTweakEnable",0
_cstring_tweak_dev_var_fi:		db "Tweak dev var; film color contrast",0
_cstring_r_filmtweakcontr:		db "r_filmTweakContrast",0
_cstring_contrast_adjustm:		db "Contrast adjustment",0
_cstring_r_contrast:		db "r_contrast",0
_cstring_brightness_adjus:		db "Brightness adjustment",0
_cstring_r_brightness:		db "r_brightness",0
_cstring_desaturation_adj:		db "Desaturation adjustment",0
_cstring_r_desaturation:		db "r_desaturation",0
_cstring_tweak_dev_var_fi1:		db "Tweak dev var; film color brightness",0
_cstring_r_filmtweakbrigh:		db "r_filmTweakBrightness",0
_cstring_tweak_dev_var_de:		db "Tweak dev var; Desaturation applied after all 3D drawing",0
_cstring_r_filmtweakdesat:		db "r_filmTweakDesaturation",0
_cstring_tweak_dev_var_en2:		db "Tweak dev var; enable inverted video",0
_cstring_r_filmtweakinver:		db "r_filmTweakInvert",0
_cstring_tweak_dev_var_fi2:		db "Tweak dev var; film color dark tint color",0
_cstring_r_filmtweakdarkt:		db "r_filmTweakDarkTint",0
_cstring_tweak_dev_var_fi3:		db "Tweak dev var; film color light tint color",0
_cstring_r_filmtweaklight:		db "r_filmTweakLightTint",0
_cstring_enable_the_depth:		db "Enable the depth of field effect",0
_cstring_r_dof_enable:		db "r_dof_enable",0
_cstring_use_dvars_to_set:		db "Use dvars to set the depth of field effect; overrides r_dof_enable",0
_cstring_r_dof_tweak:		db "r_dof_tweak",0
_cstring_sets_the_radius_:		db "Sets the radius of the gaussian blur used by depth of field, in pixels at 640x480",0
_cstring_r_dof_nearblur:		db "r_dof_nearBlur",0
_cstring_r_dof_farblur:		db "r_dof_farBlur",0
_cstring_depth_of_field_v:		db "Depth of field viewmodel start distance, in inches",0
_cstring_r_dof_viewmodels:		db "r_dof_viewModelStart",0
_cstring_depth_of_field_v1:		db "Depth of field viewmodel end distance, in inches",0
_cstring_r_dof_viewmodele:		db "r_dof_viewModelEnd",0
_cstring_depth_of_field_n:		db "Depth of field near start distance, in inches",0
_cstring_r_dof_nearstart:		db "r_dof_nearStart",0
_cstring_depth_of_field_n1:		db "Depth of field near end distance, in inches",0
_cstring_r_dof_nearend:		db "r_dof_nearEnd",0
_cstring_depth_of_field_f:		db "Depth of field far start distance, in inches",0
_cstring_r_dof_farstart:		db "r_dof_farStart",0
_cstring_depth_of_field_f1:		db "Depth of field far end distance, in inches",0
_cstring_r_dof_farend:		db "r_dof_farEnd",0
_cstring_depth_of_field_b:		db "Depth of field bias as a power function (like gamma); less than 1 is sharper",0
_cstring_r_dof_bias:		db "r_dof_bias",0
_cstring_prevents_snow_fr:		db "Prevents snow from going indoors",0
_cstring_r_outdoor:		db "r_outdoor",0
_cstring_affects_the_heig:		db "Affects the height map lookup for making sure snow doesn",27h,"t go indoors",0
_cstring_r_outdoorawaybia:		db "r_outdoorAwayBias",0
_cstring_r_outdoordownbia:		db "r_outdoorDownBias",0
_cstring_outdoor_zfeather:		db "Outdoor z-feathering value",0
_cstring_r_outdoorfeather:		db "r_outdoorFeather",0
_cstring_set_sun_flare_va:		db "Set sun flare values from dvars rather than the level",0
_cstring_r_sun_from_dvars:		db "r_sun_from_dvars",0
_cstring_enable_developme:		db "Enable development options",0
_cstring_developer:		db "developer",0
_cstring_allow_server_sid:		db "Allow server side cheats",0
_cstring_sv_cheats:		db "sv_cheats",0
_cstring_draw_stats_monit:		db "Draw stats monitor",0
_cstring_com_statmon:		db "com_statmon",0
_cstring_use_streaming_si:		db "Use Streaming SIMD Extensions for skinning",0
_cstring_r_sse_skinning:		db "r_sse_skinning",0
_cstring_index_of_the_mon:		db "Index of the monitor to use in a multi monitor system; 0 picks automatically.",0
_cstring_r_monitor:		db "r_monitor",0
_cstring_preferred_render:		db "Preferred renderer; unsupported renderers will never be used.",0
_cstring_r_rendererprefer:		db "r_rendererPreference",0
_cstring_the_renderer_cur:		db "The renderer currently used",0
_cstring_r_rendererinuse:		db "r_rendererInUse",0
_cstring_screen_aspect_ra:		db "Screen aspect ratio.  Most widescreen monitors are 16:10 instead of 16:9.",0
_cstring_r_aspectratio:		db "r_aspectRatio",0
_cstring_special_resoluti:		db "Special resolution mode for the remote debugger",0
_cstring_null:		db 0
_cstring_r_custommode:		db "r_customMode",0
_cstring_use_alternate_mo:		db "Use alternate model lighting update technique",0
_cstring_r_altmodellighti:		db "r_altModelLightingUpdate",0
_cstring_force_d3d_to_dra:		db "Force D3D to draw dummy geometry with all shaders during level load; may fix long pauses at level start.",0
_cstring_r_preloadshaders:		db "r_preloadShaders",0
_cstring_auto:		db "auto",0
_cstring_standard:		db "standard",0
_cstring_wide_1610:		db "wide 16:10",0
_cstring_wide_169:		db "wide 16:9",0
_cstring_shader_model_20:		db "Shader model 2.0",0
_cstring_shader_model_30:		db "Shader model 3.0",0
_cstring_default:		db "Default",0
_cstring_high:		db "high",0
_cstring_medium:		db "medium",0
_cstring_low:		db "low",0
_cstring_lowest:		db "lowest",0
_cstring_none:		db "none",0
_cstring_none1:		db "None",0
_cstring_screen:		db "Screen",0
_cstring_feedback:		db "Feedback",0
_cstring_never:		db "never",0
_cstring_devonly_blink:		db "dev-only blink",0
_cstring_blink:		db "blink",0
_cstring_steady:		db "steady",0
_cstring_fog_color:		db "fog color",0
_cstring_off:		db "off",0
_cstring_dither_fast:		db "dither (fast)",0
_cstring_supersample_nice:		db "supersample (nice)",0
_cstring_timing:		db "timing",0
_cstring_use_depth:		db "use depth",0
_cstring_ignore_depth:		db "ignore depth",0
_cstring_flat:		db "Flat",0
_cstring_unchanged:		db "Unchanged",0
_cstring_black:		db "Black",0
_cstring_white:		db "White",0
_cstring_gray:		db "Gray",0
_cstring_adaptive:		db "adaptive",0
_cstring_aggressive:		db "aggressive",0
_cstring_normal:		db "normal",0
_cstring_basistangent:		db "basisTangent",0
_cstring_basisbinormal:		db "basisBinormal",0
_cstring_basisnormal:		db "basisNormal",0
_cstring_force_trilinear:		db "Force Trilinear",0
_cstring_force_bilinear:		db "Force Bilinear",0
_cstring_force_mipmaps_of:		db "Force Mipmaps Off",0



;All constant floats and doubles:
SECTION .rdata

