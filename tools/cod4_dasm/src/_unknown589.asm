;Imports of unknown589:

;Exports of unknown589:
	global HIDReportErrorNum:F(0,1)
	global HIDReportError:F(0,1)
	global buf
	global NXArgc
	global NXArgv
	global __progname
	global _dist_code
	global _length_code
	global catch_exception_raise
	global catch_exception_raise_state
	global catch_exception_raise_state_identity
	global clock_alarm_reply
	global do_mach_notify_dead_name
	global do_mach_notify_no_senders
	global do_mach_notify_port_deleted
	global do_mach_notify_send_once
	global do_seqnos_mach_notify_dead_name
	global do_seqnos_mach_notify_no_senders
	global do_seqnos_mach_notify_port_deleted
	global do_seqnos_mach_notify_send_once
	global environ
	global inflate_mask
	global jpeg_natural_order
	global jpeg_std_message_table
	global receive_samples
	global z_errmsg


SECTION .text


;HIDReportErrorNum:F(0,1)
HIDReportErrorNum:F(0,1):
	push ebp
	mov ebp, esp
	pop ebp
	ret


;HIDReportError:F(0,1)
HIDReportError:F(0,1):
	push ebp
	mov ebp, esp
	pop ebp


;Initialized global or static variables of unknown589:
SECTION .data
NXArgc: dd 0x0, 0x0, 0x0, 0x0, 0x0
NXArgv: dd 0x0
__progname: dd 0x0
environ: dd 0x0
inflate_mask: dd 0x0, 0x1, 0x3, 0x7, 0xf, 0x1f, 0x3f, 0x7f, 0xff, 0x1ff, 0x3ff, 0x7ff, 0xfff, 0x1fff, 0x3fff, 0x7fff, 0xffff, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
z_errmsg: dd _cstring_need_dictionary, _cstring_stream_end, _cstring_null, _cstring_file_error, _cstring_stream_error, _cstring_data_error, _cstring_insufficient_mem, _cstring_buffer_error, _cstring_incompatible_ver, _cstring_null, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0


;Initialized constant data of unknown589:
SECTION .rdata
_dist_code: dd 0x3020100, 0x5050404, 0x6060606, 0x7070707, 0x8080808, 0x8080808, 0x9090909, 0x9090909, 0xa0a0a0a, 0xa0a0a0a, 0xa0a0a0a, 0xa0a0a0a, 0xb0b0b0b, 0xb0b0b0b, 0xb0b0b0b, 0xb0b0b0b, 0xc0c0c0c, 0xc0c0c0c, 0xc0c0c0c, 0xc0c0c0c, 0xc0c0c0c, 0xc0c0c0c, 0xc0c0c0c, 0xc0c0c0c, 0xd0d0d0d, 0xd0d0d0d, 0xd0d0d0d, 0xd0d0d0d, 0xd0d0d0d, 0xd0d0d0d, 0xd0d0d0d, 0xd0d0d0d, 0xe0e0e0e, 0xe0e0e0e, 0xe0e0e0e, 0xe0e0e0e, 0xe0e0e0e, 0xe0e0e0e, 0xe0e0e0e, 0xe0e0e0e, 0xe0e0e0e, 0xe0e0e0e, 0xe0e0e0e, 0xe0e0e0e, 0xe0e0e0e, 0xe0e0e0e, 0xe0e0e0e, 0xe0e0e0e, 0xf0f0f0f, 0xf0f0f0f, 0xf0f0f0f, 0xf0f0f0f, 0xf0f0f0f, 0xf0f0f0f, 0xf0f0f0f, 0xf0f0f0f, 0xf0f0f0f, 0xf0f0f0f, 0xf0f0f0f, 0xf0f0f0f, 0xf0f0f0f, 0xf0f0f0f, 0xf0f0f0f, 0xf0f0f0f, 0x11100000, 0x13131212, 0x14141414, 0x15151515, 0x16161616, 0x16161616, 0x17171717, 0x17171717, 0x18181818, 0x18181818, 0x18181818, 0x18181818, 0x19191919, 0x19191919, 0x19191919, 0x19191919, 0x1a1a1a1a, 0x1a1a1a1a, 0x1a1a1a1a, 0x1a1a1a1a, 0x1a1a1a1a, 0x1a1a1a1a, 0x1a1a1a1a, 0x1a1a1a1a, 0x1b1b1b1b, 0x1b1b1b1b, 0x1b1b1b1b, 0x1b1b1b1b, 0x1b1b1b1b, 0x1b1b1b1b, 0x1b1b1b1b, 0x1b1b1b1b, 0x1c1c1c1c, 0x1c1c1c1c, 0x1c1c1c1c, 0x1c1c1c1c, 0x1c1c1c1c, 0x1c1c1c1c, 0x1c1c1c1c, 0x1c1c1c1c, 0x1c1c1c1c, 0x1c1c1c1c, 0x1c1c1c1c, 0x1c1c1c1c, 0x1c1c1c1c, 0x1c1c1c1c, 0x1c1c1c1c, 0x1c1c1c1c, 0x1d1d1d1d, 0x1d1d1d1d, 0x1d1d1d1d, 0x1d1d1d1d, 0x1d1d1d1d, 0x1d1d1d1d, 0x1d1d1d1d, 0x1d1d1d1d, 0x1d1d1d1d, 0x1d1d1d1d, 0x1d1d1d1d, 0x1d1d1d1d, 0x1d1d1d1d, 0x1d1d1d1d, 0x1d1d1d1d, 0x1d1d1d1d
_length_code: dd 0x3020100, 0x7060504, 0x9090808, 0xb0b0a0a, 0xc0c0c0c, 0xd0d0d0d, 0xe0e0e0e, 0xf0f0f0f, 0x10101010, 0x10101010, 0x11111111, 0x11111111, 0x12121212, 0x12121212, 0x13131313, 0x13131313, 0x14141414, 0x14141414, 0x14141414, 0x14141414, 0x15151515, 0x15151515, 0x15151515, 0x15151515, 0x16161616, 0x16161616, 0x16161616, 0x16161616, 0x17171717, 0x17171717, 0x17171717, 0x17171717, 0x18181818, 0x18181818, 0x18181818, 0x18181818, 0x18181818, 0x18181818, 0x18181818, 0x18181818, 0x19191919, 0x19191919, 0x19191919, 0x19191919, 0x19191919, 0x19191919, 0x19191919, 0x19191919, 0x1a1a1a1a, 0x1a1a1a1a, 0x1a1a1a1a, 0x1a1a1a1a, 0x1a1a1a1a, 0x1a1a1a1a, 0x1a1a1a1a, 0x1a1a1a1a, 0x1b1b1b1b, 0x1b1b1b1b, 0x1b1b1b1b, 0x1b1b1b1b, 0x1b1b1b1b, 0x1b1b1b1b, 0x1b1b1b1b, 0x1c1b1b1b
jpeg_natural_order: dd 0x0, 0x1, 0x8, 0x10, 0x9, 0x2, 0x3, 0xa, 0x11, 0x18, 0x20, 0x19, 0x12, 0xb, 0x4, 0x5, 0xc, 0x13, 0x1a, 0x21, 0x28, 0x30, 0x29, 0x22, 0x1b, 0x14, 0xd, 0x6, 0x7, 0xe, 0x15, 0x1c, 0x23, 0x2a, 0x31, 0x38, 0x39, 0x32, 0x2b, 0x24, 0x1d, 0x16, 0xf, 0x17, 0x1e, 0x25, 0x2c, 0x33, 0x3a, 0x3b, 0x34, 0x2d, 0x26, 0x1f, 0x27, 0x2e, 0x35, 0x3c, 0x3d, 0x36, 0x2f, 0x37, 0x3e, 0x3f, 0x3f, 0x3f, 0x3f, 0x3f, 0x3f, 0x3f, 0x3f, 0x3f, 0x3f, 0x3f, 0x3f, 0x3f, 0x3f, 0x3f, 0x3f, 0x3f
jpeg_std_message_table: dd _cstring_bogus_message_co, _cstring_sorry_there_are_, _cstring_align_type_is_wr, _cstring_max_alloc_chunk_, _cstring_bogus_buffer_con, _cstring_invalid_componen, _cstring_dct_coefficient_, _cstring_idct_output_bloc, _cstring_bogus_huffman_ta, _cstring_bogus_input_colo, _cstring_bogus_jpeg_color, _cstring_bogus_marker_len, _cstring_wrong_jpeg_libra, _cstring_sampling_factors, _cstring_invalid_memory_p, _cstring_unsupported_jpeg, _cstring_invalid_progress, _cstring_invalid_progress1, _cstring_bogus_sampling_f, _cstring_invalid_scan_scr, _cstring_improper_call_to, _cstring_jpeg_parameter_s, _cstring_bogus_virtual_ar, _cstring_buffer_passed_to, _cstring_suspension_not_a, _cstring_ccir601_sampling, _cstring_too_many_color_c, _cstring_unsupported_colo, _cstring_bogus_dac_index_, _cstring_bogus_dac_value_, _cstring_bogus_dht_index_, _cstring_bogus_dqt_index_, _cstring_empty_jpeg_image, _cstring_read_from_ems_fa, _cstring_write_to_ems_fai, _cstring_didnt_expect_mor, _cstring_input_file_read_, _cstring_output_file_writ, _cstring_fractional_sampl, _cstring_huffman_code_siz, _cstring_missing_huffman_, _cstring_maximum_supporte, _cstring_empty_input_file, _cstring_premature_end_of, _cstring_cannot_transcode, _cstring_scan_script_does, _cstring_invalid_color_qu, _cstring_not_implemented_, _cstring_requested_featur, _cstring_backing_store_no, _cstring_huffman_table_0x, _cstring_jpeg_datastream_, _cstring_quantization_tab, _cstring_not_a_jpeg_file_, _cstring_insufficient_mem1, _cstring_cannot_quantize_, _cstring_cannot_quantize_1, _cstring_cannot_quantize_2, _cstring_invalid_jpeg_fil, _cstring_invalid_jpeg_fil1, _cstring_unsupported_jpeg1, _cstring_invalid_jpeg_fil2, _cstring_invalid_jpeg_fil3, _cstring_failed_to_create, _cstring_read_failed_on_t, _cstring_seek_failed_on_t, _cstring_write_failed_on_, _cstring_application_tran, _cstring_unsupported_mark, _cstring_virtual_array_co, _cstring_image_too_wide_f, _cstring_read_from_xms_fa, _cstring_write_to_xms_fai, _cstring_copyright_c_1998, _cstring_6b__27mar1998, _cstring_caution_quantiza, _cstring_adobe_app14_mark, _cstring_unknown_app0_mar, _cstring_unknown_app14_ma, _cstring_define_arithmeti, _cstring_define_huffman_t, _cstring_define_quantizat, _cstring_define_restart_i, _cstring_freed_ems_handle, _cstring_obtained_ems_han, _cstring_end_of_image, _cstring_________3d_3d_3d, _cstring_jfif_app0_marker, _cstring_warning_thumbnai, _cstring_jfif_extension_m, _cstring_____with_d_x_d_t, _cstring_miscellaneous_ma, _cstring_unexpected_marke, _cstring_________4u_4u_4u, _cstring_quantizing_to_d_, _cstring_quantizing_to_d_1, _cstring_selected_d_color, _cstring_at_marker_0x02x_, _cstring_rstd, _cstring_smoothing_not_su, _cstring_start_of_frame_0, _cstring_____component_d_, _cstring_start_of_image, _cstring_start_of_scan_d_, _cstring_____component_d_1, _cstring___ssd_sed_ahd_al, _cstring_closed_temporary, _cstring_opened_temporary, _cstring_jfif_extension_m1, _cstring_jfif_extension_m2, _cstring_jfif_extension_m3, _cstring_unrecognized_com, _cstring_freed_xms_handle, _cstring_obtained_xms_han, _cstring_unknown_adobe_co, _cstring_inconsistent_pro, _cstring_corrupt_jpeg_dat, _cstring_corrupt_jpeg_dat1, _cstring_corrupt_jpeg_dat2, _cstring_warning_unknown_, _cstring_premature_end_of1, _cstring_corrupt_jpeg_dat3, _cstring_invalid_sos_para, _cstring_application_tran1
		db 0x0, 0x0, 0x0


;Zero initialized global or static variables of unknown589:
SECTION .bss
buf: resb 0x7f
catch_exception_raise: resb 0x4
catch_exception_raise_state: resb 0x4
catch_exception_raise_state_identity: resb 0x4
clock_alarm_reply: resb 0x4
do_mach_notify_dead_name: resb 0x4
do_mach_notify_no_senders: resb 0x4
do_mach_notify_port_deleted: resb 0x4
do_mach_notify_send_once: resb 0x4
do_seqnos_mach_notify_dead_name: resb 0x4
do_seqnos_mach_notify_no_senders: resb 0x4
do_seqnos_mach_notify_port_deleted: resb 0x4
do_seqnos_mach_notify_send_once: resb 0x4
receive_samples: resb 0x50


;All cstrings:
SECTION .rdata
_cstring_need_dictionary:		db "need dictionary",0
_cstring_stream_end:		db "stream end",0
_cstring_null:		db 0
_cstring_file_error:		db "file error",0
_cstring_stream_error:		db "stream error",0
_cstring_data_error:		db "data error",0
_cstring_insufficient_mem:		db "insufficient memory",0
_cstring_buffer_error:		db "buffer error",0
_cstring_incompatible_ver:		db "incompatible version",0
_cstring_bogus_message_co:		db "Bogus message code %d",0
_cstring_sorry_there_are_:		db "Sorry, there are legal restrictions on arithmetic coding",0
_cstring_align_type_is_wr:		db "ALIGN_TYPE is wrong, please fix",0
_cstring_max_alloc_chunk_:		db "MAX_ALLOC_CHUNK is wrong, please fix",0
_cstring_bogus_buffer_con:		db "Bogus buffer control mode",0
_cstring_invalid_componen:		db "Invalid component ID %d in SOS",0
_cstring_dct_coefficient_:		db "DCT coefficient out of range",0
_cstring_idct_output_bloc:		db "IDCT output block size %d not supported",0
_cstring_bogus_huffman_ta:		db "Bogus Huffman table definition",0
_cstring_bogus_input_colo:		db "Bogus input colorspace",0
_cstring_bogus_jpeg_color:		db "Bogus JPEG colorspace",0
_cstring_bogus_marker_len:		db "Bogus marker length",0
_cstring_wrong_jpeg_libra:		db "Wrong JPEG library version: library is %d, caller expects %d",0
_cstring_sampling_factors:		db "Sampling factors too large for interleaved scan",0
_cstring_invalid_memory_p:		db "Invalid memory pool code %d",0
_cstring_unsupported_jpeg:		db "Unsupported JPEG data precision %d",0
_cstring_invalid_progress:		db "Invalid progressive parameters Ss=%d Se=%d Ah=%d Al=%d",0
_cstring_invalid_progress1:		db "Invalid progressive parameters at scan script entry %d",0
_cstring_bogus_sampling_f:		db "Bogus sampling factors",0
_cstring_invalid_scan_scr:		db "Invalid scan script at entry %d",0
_cstring_improper_call_to:		db "Improper call to JPEG library in state %d",0
_cstring_jpeg_parameter_s:		db "JPEG parameter struct mismatch: library thinks size is %u, caller expects %u",0
_cstring_bogus_virtual_ar:		db "Bogus virtual array access",0
_cstring_buffer_passed_to:		db "Buffer passed to JPEG library is too small",0
_cstring_suspension_not_a:		db "Suspension not allowed here",0
_cstring_ccir601_sampling:		db "CCIR601 sampling not implemented yet",0
_cstring_too_many_color_c:		db "Too many color components: %d, max %d",0
_cstring_unsupported_colo:		db "Unsupported color conversion request",0
_cstring_bogus_dac_index_:		db "Bogus DAC index %d",0
_cstring_bogus_dac_value_:		db "Bogus DAC value 0x%x",0
_cstring_bogus_dht_index_:		db "Bogus DHT index %d",0
_cstring_bogus_dqt_index_:		db "Bogus DQT index %d",0
_cstring_empty_jpeg_image:		db "Empty JPEG image (DNL not supported)",0
_cstring_read_from_ems_fa:		db "Read from EMS failed",0
_cstring_write_to_ems_fai:		db "Write to EMS failed",0
_cstring_didnt_expect_mor:		db "Didn",27h,"t expect more than one scan",0
_cstring_input_file_read_:		db "Input file read error",0
_cstring_output_file_writ:		db "Output file write error --- out of disk space",3fh,0
_cstring_fractional_sampl:		db "Fractional sampling not implemented yet",0
_cstring_huffman_code_siz:		db "Huffman code size table overflow",0
_cstring_missing_huffman_:		db "Missing Huffman code table entry",0
_cstring_maximum_supporte:		db "Maximum supported image dimension is %u pixels",0
_cstring_empty_input_file:		db "Empty input file",0
_cstring_premature_end_of:		db "Premature end of input file",0
_cstring_cannot_transcode:		db "Cannot transcode due to multiple use of quantization table %d",0
_cstring_scan_script_does:		db "Scan script does not transmit all data",0
_cstring_invalid_color_qu:		db "Invalid color quantization mode change",0
_cstring_not_implemented_:		db "Not implemented yet",0
_cstring_requested_featur:		db "Requested feature was omitted at compile time",0
_cstring_backing_store_no:		db "Backing store not supported",0
_cstring_huffman_table_0x:		db "Huffman table 0x%02x was not defined",0
_cstring_jpeg_datastream_:		db "JPEG datastream contains no image",0
_cstring_quantization_tab:		db "Quantization table 0x%02x was not defined",0
_cstring_not_a_jpeg_file_:		db "Not a JPEG file: starts with 0x%02x 0x%02x",0
_cstring_insufficient_mem1:		db "Insufficient memory (case %d)",0
_cstring_cannot_quantize_:		db "Cannot quantize more than %d color components",0
_cstring_cannot_quantize_1:		db "Cannot quantize to fewer than %d colors",0
_cstring_cannot_quantize_2:		db "Cannot quantize to more than %d colors",0
_cstring_invalid_jpeg_fil:		db "Invalid JPEG file structure: two SOF markers",0
_cstring_invalid_jpeg_fil1:		db "Invalid JPEG file structure: missing SOS marker",0
_cstring_unsupported_jpeg1:		db "Unsupported JPEG process: SOF type 0x%02x",0
_cstring_invalid_jpeg_fil2:		db "Invalid JPEG file structure: two SOI markers",0
_cstring_invalid_jpeg_fil3:		db "Invalid JPEG file structure: SOS before SOF",0
_cstring_failed_to_create:		db "Failed to create temporary file %s",0
_cstring_read_failed_on_t:		db "Read failed on temporary file",0
_cstring_seek_failed_on_t:		db "Seek failed on temporary file",0
_cstring_write_failed_on_:		db "Write failed on temporary file --- out of disk space",3fh,0
_cstring_application_tran:		db "Application transferred too few scanlines",0
_cstring_unsupported_mark:		db "Unsupported marker type 0x%02x",0
_cstring_virtual_array_co:		db "Virtual array controller messed up",0
_cstring_image_too_wide_f:		db "Image too wide for this implementation",0
_cstring_read_from_xms_fa:		db "Read from XMS failed",0
_cstring_write_to_xms_fai:		db "Write to XMS failed",0
_cstring_copyright_c_1998:		db "Copyright (C) 1998, Thomas G. Lane",0
_cstring_6b__27mar1998:		db "6b  27-Mar-1998",0
_cstring_caution_quantiza:		db "Caution: quantization tables are too coarse for baseline JPEG",0
_cstring_adobe_app14_mark:		db "Adobe APP14 marker: version %d, flags 0x%04x 0x%04x, transform %d",0
_cstring_unknown_app0_mar:		db "Unknown APP0 marker (not JFIF), length %u",0
_cstring_unknown_app14_ma:		db "Unknown APP14 marker (not Adobe), length %u",0
_cstring_define_arithmeti:		db "Define Arithmetic Table 0x%02x: 0x%02x",0
_cstring_define_huffman_t:		db "Define Huffman Table 0x%02x",0
_cstring_define_quantizat:		db "Define Quantization Table %d  precision %d",0
_cstring_define_restart_i:		db "Define Restart Interval %u",0
_cstring_freed_ems_handle:		db "Freed EMS handle %u",0
_cstring_obtained_ems_han:		db "Obtained EMS handle %u",0
_cstring_end_of_image:		db "End Of Image",0
_cstring_________3d_3d_3d:		db "        %3d %3d %3d %3d %3d %3d %3d %3d",0
_cstring_jfif_app0_marker:		db "JFIF APP0 marker: version %d.%02d, density %dx%d  %d",0
_cstring_warning_thumbnai:		db "Warning: thumbnail image size does not match data length %u",0
_cstring_jfif_extension_m:		db "JFIF extension marker: type 0x%02x, length %u",0
_cstring_____with_d_x_d_t:		db "    with %d x %d thumbnail image",0
_cstring_miscellaneous_ma:		db "Miscellaneous marker 0x%02x, length %u",0
_cstring_unexpected_marke:		db "Unexpected marker 0x%02x",0
_cstring_________4u_4u_4u:		db "        %4u %4u %4u %4u %4u %4u %4u %4u",0
_cstring_quantizing_to_d_:		db "Quantizing to %d = %d*%d*%d colors",0
_cstring_quantizing_to_d_1:		db "Quantizing to %d colors",0
_cstring_selected_d_color:		db "Selected %d colors for quantization",0
_cstring_at_marker_0x02x_:		db "At marker 0x%02x, recovery action %d",0
_cstring_rstd:		db "RST%d",0
_cstring_smoothing_not_su:		db "Smoothing not supported with nonstandard sampling ratios",0
_cstring_start_of_frame_0:		db "Start Of Frame 0x%02x: width=%u, height=%u, components=%d",0
_cstring_____component_d_:		db "    Component %d: %dhx%dv q=%d",0
_cstring_start_of_image:		db "Start of Image",0
_cstring_start_of_scan_d_:		db "Start Of Scan: %d components",0
_cstring_____component_d_1:		db "    Component %d: dc=%d ac=%d",0
_cstring___ssd_sed_ahd_al:		db "  Ss=%d, Se=%d, Ah=%d, Al=%d",0
_cstring_closed_temporary:		db "Closed temporary file %s",0
_cstring_opened_temporary:		db "Opened temporary file %s",0
_cstring_jfif_extension_m1:		db "JFIF extension marker: JPEG-compressed thumbnail image, length %u",0
_cstring_jfif_extension_m2:		db "JFIF extension marker: palette thumbnail image, length %u",0
_cstring_jfif_extension_m3:		db "JFIF extension marker: RGB thumbnail image, length %u",0
_cstring_unrecognized_com:		db "Unrecognized component IDs %d %d %d, assuming YCbCr",0
_cstring_freed_xms_handle:		db "Freed XMS handle %u",0
_cstring_obtained_xms_han:		db "Obtained XMS handle %u",0
_cstring_unknown_adobe_co:		db "Unknown Adobe color transform code %d",0
_cstring_inconsistent_pro:		db "Inconsistent progression sequence for component %d coefficient %d",0
_cstring_corrupt_jpeg_dat:		db "Corrupt JPEG data: %u extraneous bytes before marker 0x%02x",0
_cstring_corrupt_jpeg_dat1:		db "Corrupt JPEG data: premature end of data segment",0
_cstring_corrupt_jpeg_dat2:		db "Corrupt JPEG data: bad Huffman code",0
_cstring_warning_unknown_:		db "Warning: unknown JFIF revision number %d.%02d",0
_cstring_premature_end_of1:		db "Premature end of JPEG file",0
_cstring_corrupt_jpeg_dat3:		db "Corrupt JPEG data: found marker 0x%02x instead of RST%d",0
_cstring_invalid_sos_para:		db "Invalid SOS parameters for sequential JPEG",0
_cstring_application_tran1:		db "Application transferred too many scanlines",0



;All constant floats and doubles:
SECTION .rdata

