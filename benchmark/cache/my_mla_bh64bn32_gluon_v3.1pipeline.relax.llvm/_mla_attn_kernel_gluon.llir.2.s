	.amdgcn_target "amdgcn-amd-amdhsa--gfx950"
	.amdhsa_code_object_version 5
	.text
	.globl	_mla_attn_kernel_gluon          ; -- Begin function _mla_attn_kernel_gluon
	.p2align	8
	.type	_mla_attn_kernel_gluon,@function
_mla_attn_kernel_gluon:                 ; @_mla_attn_kernel_gluon
.Lfunc_begin0:
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.8:
	.file	1 "/home/dewwang/FlashMLA/benchmark" "bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py"
	.loc	1 228 0 prologue_end            ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:228:0
	s_load_dwordx2 s[2:3], s[0:1], 0x0
	s_load_dwordx8 s[4:11], s[0:1], 0x8
	s_load_dwordx4 s[12:15], s[0:1], 0x28
	s_waitcnt lgkmcnt(0)
	s_branch .LBB0_0
	.loc	1 0 0 is_stmt 0                 ; :0:0
.Ltmp0:
	.p2align	8
; %bb.9:
.LBB0_0:
	s_mov_b32 s26, s17
	s_mov_b64 s[24:25], s[14:15]
.Ltmp1:
	.loc	1 553 32 is_stmt 1              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:553:32
	v_readfirstlane_b32 s14, v0
	.loc	1 258 44                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:258:44
	s_ashr_i32 s27, s17, 31
	s_mov_b64 s[20:21], s[2:3]
	.loc	1 560 30                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:560:30
	s_bfe_u32 s19, s14, 0x20006
	.loc	1 258 44                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:258:44
	s_lshl_b64 s[2:3], s[26:27], 2
	s_add_u32 s2, s12, s2
	s_load_dwordx4 s[36:39], s[0:1], 0x3c
	s_load_dwordx2 s[34:35], s[0:1], 0x4c
	s_load_dword s15, s[0:1], 0x54
	s_addc_u32 s3, s13, s3
	.loc	1 350 29                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:350:29
	s_lshl_b32 s27, s16, 6
	.loc	1 258 32                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:258:32
	s_load_dword s33, s[2:3], 0x0
	.loc	1 350 39                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:350:39
	s_or_b32 s3, s19, s27
	.loc	1 349 30                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:349:30
	v_and_b32_e32 v3, 63, v0
	.loc	1 350 39                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:350:39
	s_or_b32 s40, s3, 44
	.loc	1 349 30                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:349:30
	v_lshlrev_b32_e32 v139, 3, v3
	.loc	1 350 52                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:350:52
	s_or_b32 s42, s19, 4
	s_or_b32 s48, s19, 28
	.loc	1 351 30                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:351:30
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s36, s36, s26
	.loc	1 351 69 is_stmt 0              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:351:69
	s_mul_i32 s55, s40, s37
	.loc	1 352 70 is_stmt 1              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:352:70
	s_mul_i32 s40, s19, 0x420
	s_mov_b64 s[28:29], s[6:7]
	.loc	1 350 52                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:350:52
	s_or_b32 s43, s19, 8
	.loc	1 350 39 is_stmt 0              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:350:39
	s_or_b32 s6, s42, s27
	s_or_b32 s22, s48, s27
	s_or_b32 s23, s3, 32
	s_or_b32 s30, s3, 36
	s_or_b32 s31, s3, 40
	s_or_b32 s41, s3, 48
	s_or_b32 s49, s3, 52
	s_or_b32 s50, s3, 56
	s_or_b32 s51, s3, 60
	.loc	1 351 69 is_stmt 1              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:351:69
	s_mul_i32 s3, s3, s37
	.loc	1 351 49 is_stmt 0              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:351:49
	v_add_u32_e32 v1, s36, v139
	.loc	1 352 70 is_stmt 1              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:352:70
	s_add_i32 s52, s40, 0
	.loc	1 350 52                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:350:52
	s_or_b32 s44, s19, 12
	.loc	1 350 39 is_stmt 0              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:350:39
	s_or_b32 s7, s43, s27
	.loc	1 351 69 is_stmt 1              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:351:69
	s_mul_i32 s6, s6, s37
	s_mul_i32 s53, s22, s37
	s_mul_i32 s54, s23, s37
	.loc	1 352 70                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:352:70
	s_and_b32 s21, s21, 0xffff
	s_mov_b32 s23, 0x27000
	s_mov_b32 s22, 0x7ffffffe
	v_add_lshl_u32 v2, v1, s3, 1
	s_mov_b32 m0, s52
	.loc	1 350 52                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:350:52
	s_or_b32 s45, s19, 16
	.loc	1 350 39 is_stmt 0              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:350:39
	s_or_b32 s12, s44, s27
	.loc	1 351 69 is_stmt 1              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:351:69
	s_mul_i32 s7, s7, s37
	.loc	1 352 70                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:352:70
	buffer_load_dwordx4 v2, s[20:23], 0 offen lds
	s_add_i32 m0, s52, 0x1080
	v_add_lshl_u32 v2, v1, s6, 1
	.loc	1 350 52                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:350:52
	s_or_b32 s46, s19, 20
	.loc	1 350 39 is_stmt 0              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:350:39
	s_or_b32 s13, s45, s27
	.loc	1 351 69 is_stmt 1              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:351:69
	s_mul_i32 s12, s12, s37
	.loc	1 352 70                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:352:70
	buffer_load_dwordx4 v2, s[20:23], 0 offen lds
	s_add_i32 m0, s52, 0x2100
	v_add_lshl_u32 v2, v1, s7, 1
	.loc	1 350 52                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:350:52
	s_or_b32 s47, s19, 24
	.loc	1 350 39 is_stmt 0              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:350:39
	s_or_b32 s16, s46, s27
	.loc	1 351 69 is_stmt 1              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:351:69
	s_mul_i32 s13, s13, s37
	.loc	1 352 70                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:352:70
	buffer_load_dwordx4 v2, s[20:23], 0 offen lds
	s_add_i32 m0, s52, 0x3180
	v_add_lshl_u32 v2, v1, s12, 1
	.loc	1 350 39                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:350:39
	s_or_b32 s17, s47, s27
	.loc	1 351 69                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:351:69
	s_mul_i32 s16, s16, s37
	.loc	1 352 70                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:352:70
	buffer_load_dwordx4 v2, s[20:23], 0 offen lds
	s_add_i32 m0, s52, 0x4200
	v_add_lshl_u32 v2, v1, s13, 1
	.loc	1 351 69                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:351:69
	s_mul_i32 s17, s17, s37
	.loc	1 352 70                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:352:70
	buffer_load_dwordx4 v2, s[20:23], 0 offen lds
	s_add_i32 m0, s52, 0x5280
	v_add_lshl_u32 v2, v1, s16, 1
	buffer_load_dwordx4 v2, s[20:23], 0 offen lds
	s_add_i32 m0, s52, 0x6300
	v_add_lshl_u32 v2, v1, s17, 1
	buffer_load_dwordx4 v2, s[20:23], 0 offen lds
	s_add_i32 m0, s52, 0x7380
	v_add_lshl_u32 v2, v1, s53, 1
	.loc	1 351 69                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:351:69
	s_mul_i32 s30, s30, s37
	.loc	1 352 70                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:352:70
	buffer_load_dwordx4 v2, s[20:23], 0 offen lds
	s_add_i32 m0, s52, 0x8400
	v_add_lshl_u32 v2, v1, s54, 1
	.loc	1 351 69                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:351:69
	s_mul_i32 s31, s31, s37
	.loc	1 352 70                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:352:70
	buffer_load_dwordx4 v2, s[20:23], 0 offen lds
	s_add_i32 m0, s52, 0x9480
	v_add_lshl_u32 v2, v1, s30, 1
	buffer_load_dwordx4 v2, s[20:23], 0 offen lds
	s_add_i32 m0, s52, 0xa500
	v_add_lshl_u32 v2, v1, s31, 1
	.loc	1 351 69                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:351:69
	s_mul_i32 s56, s41, s37
	.loc	1 352 70                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:352:70
	buffer_load_dwordx4 v2, s[20:23], 0 offen lds
	s_add_i32 m0, s52, 0xb580
	v_add_lshl_u32 v2, v1, s55, 1
	.loc	1 351 69                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:351:69
	s_mul_i32 s49, s49, s37
	.loc	1 352 70                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:352:70
	buffer_load_dwordx4 v2, s[20:23], 0 offen lds
	s_add_i32 m0, s52, 0xc600
	v_add_lshl_u32 v2, v1, s56, 1
	.loc	1 351 69                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:351:69
	s_mul_i32 s50, s50, s37
	.loc	1 352 70                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:352:70
	buffer_load_dwordx4 v2, s[20:23], 0 offen lds
	s_add_i32 m0, s52, 0xd680
	v_add_lshl_u32 v2, v1, s49, 1
	.loc	1 351 69                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:351:69
	s_mul_i32 s51, s51, s37
	.loc	1 352 70                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:352:70
	buffer_load_dwordx4 v2, s[20:23], 0 offen lds
	s_add_i32 m0, s52, 0xe700
	v_add_lshl_u32 v2, v1, s50, 1
	buffer_load_dwordx4 v2, s[20:23], 0 offen lds
	s_add_i32 m0, s52, 0xf780
	v_add_lshl_u32 v1, v1, s51, 1
	buffer_load_dwordx4 v1, s[20:23], 0 offen lds
	.loc	1 357 56                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:357:56
	v_lshrrev_b32_e32 v1, 1, v0
	v_and_b32_e32 v1, 28, v1
	.loc	1 356 30                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:356:30
	v_lshlrev_b32_e32 v2, 3, v0
	.loc	1 357 56                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:357:56
	v_or_b32_e32 v152, s19, v1
	.loc	1 356 30                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:356:30
	v_and_b32_e32 v141, 56, v2
	.loc	1 357 43                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:357:43
	v_or_b32_e32 v4, s27, v152
	.loc	1 358 28                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:358:28
	s_mul_i32 s3, s38, s26
	.loc	1 359 66                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:359:66
	s_add_i32 s12, 0, 0x207e0
	.loc	1 357 43                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:357:43
	v_or_b32_e32 v5, 32, v4
	.loc	1 358 69                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:358:69
	v_mul_lo_u32 v4, v4, s39
	.loc	1 358 45 is_stmt 0              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:358:45
	v_add_u32_e32 v7, s3, v141
	.loc	1 359 66 is_stmt 1              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:359:66
	s_add_i32 s3, s12, s40
	.loc	1 358 69                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:358:69
	v_mul_lo_u32 v5, v5, s39
	.loc	1 359 66                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:359:66
	s_and_b32 s5, s5, 0xffff
	s_mov_b32 s6, s22
	s_mov_b32 s7, s23
	v_add_lshl_u32 v4, v7, v4, 1
	s_mov_b32 m0, s3
	.loc	1 349 30                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:349:30
	s_lshl_b32 s2, s19, 6
	.loc	1 359 66                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:359:66
	buffer_load_dwordx4 v4, s[4:7], 0 offen lds
	s_add_i32 m0, s3, 0x1080
	v_add_lshl_u32 v4, v7, v5, 1
.Ltmp2:
	.file	2 "/home/dewwang/triton/python/triton/language" "standard.py"
	.loc	2 43 17                         ; standard.py:43:17 @[ bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:371:37 ]
	s_add_i32 s3, s33, 31
.Ltmp3:
	.loc	1 359 66                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:359:66
	buffer_load_dwordx4 v4, s[4:7], 0 offen lds
.Ltmp4:
	.loc	2 43 30                         ; standard.py:43:30 @[ bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:371:37 ]
	s_ashr_i32 s4, s3, 31
	s_lshr_b32 s4, s4, 27
	s_add_i32 s3, s3, s4
.Ltmp5:
	.loc	1 377 50                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:377:50
	s_mul_i32 s4, s15, s26
	.loc	1 377 24 is_stmt 0              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:377:24
	s_ashr_i32 s5, s4, 31
	.loc	1 352 70 is_stmt 1              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:352:70
	s_lshl_b32 s41, s19, 10
.Ltmp6:
	.loc	2 43 30                         ; standard.py:43:30 @[ bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:371:37 ]
	s_ashr_i32 s38, s3, 5
.Ltmp7:
	.loc	1 377 24                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:377:24
	s_lshl_b64 s[4:5], s[4:5], 2
	s_add_u32 s36, s10, s4
	s_addc_u32 s37, s11, s5
	.loc	1 377 8 is_stmt 0               ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:377:8
	s_load_dword s3, s[36:37], 0x0
	.loc	1 390 80 is_stmt 1              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:390:80
	v_mov_b32_e32 v15, s19
	.loc	1 349 30                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:349:30
	v_or_b32_e32 v6, s2, v3
	.loc	1 390 80                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:390:80
	v_bitop3_b32 v15, s2, v15, v3 bitop3:0x36
	v_lshlrev_b32_e32 v5, 3, v6
	v_lshlrev_b32_e32 v15, 3, v15
	.loc	1 387 30                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:387:30
	s_waitcnt lgkmcnt(0)
	s_lshl_b32 s4, s3, 6
	.loc	1 390 80                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:390:80
	v_sub_u32_e32 v16, v15, v5
	.loc	1 387 42                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:387:42
	s_or_b32 s3, s4, s19
	.loc	1 390 80                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:390:80
	v_ashrrev_i32_e32 v16, 3, v16
	v_xor_b32_e32 v17, 0x820, v15
	.loc	1 389 33                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:389:33
	s_mul_i32 s3, s3, s34
	.loc	1 390 80                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:390:80
	v_sub_u32_e32 v17, v17, v5
	v_add_u32_e32 v136, v16, v3
	.loc	1 389 50                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:389:50
	v_add_u32_e32 v4, s3, v139
	.loc	1 390 80                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:390:80
	v_add_u32_e32 v17, 0xfffff800, v17
	v_lshlrev_b32_e32 v168, 2, v136
	.loc	1 387 42                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:387:42
	s_or_b32 s5, s4, s42
	.loc	1 390 80                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:390:80
	v_ashrrev_i32_e32 v17, 3, v17
	v_xor_b32_e32 v18, 0x1040, v15
	v_xor_b32_e32 v19, 0x1860, v15
	v_xor_b32_e32 v20, 0x2820, v15
	v_xor_b32_e32 v21, 0x3040, v15
	v_xor_b32_e32 v15, 0x3860, v15
	ds_bpermute_b32 v16, v168, v4
	.loc	1 389 33                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:389:33
	s_mul_i32 s5, s5, s34
	.loc	1 390 80                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:390:80
	v_sub_u32_e32 v18, v18, v5
	v_sub_u32_e32 v19, v19, v5
	v_sub_u32_e32 v20, v20, v5
	v_sub_u32_e32 v21, v21, v5
	v_sub_u32_e32 v5, v15, v5
	v_add_u32_e32 v138, v17, v3
	.loc	1 389 50                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:389:50
	v_add_u32_e32 v8, s5, v139
	.loc	1 390 80                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:390:80
	v_add_u32_e32 v5, 0xffffc800, v5
	v_lshlrev_b32_e32 v167, 2, v138
	v_ashrrev_i32_e32 v15, 3, v5
	v_lshrrev_b64 v[4:5], v136, exec
	ds_bpermute_b32 v8, v167, v8
	v_add_u32_e32 v18, 0xfffff000, v18
	s_add_i32 s5, s41, 0
	v_and_b32_e32 v4, 1, v4
	.loc	1 387 42                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:387:42
	s_or_b32 s6, s4, s43
	.loc	1 390 80                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:390:80
	v_ashrrev_i32_e32 v18, 3, v18
	s_and_b32 s29, s29, 0xffff
	s_add_i32 s51, s5, 0x107e0
	s_waitcnt lgkmcnt(1)
	v_lshlrev_b32_e32 v5, 1, v16
	v_bfrev_b32_e32 v16, 1
	v_cmp_eq_u32_e32 vcc, 1, v4
	.loc	1 389 33                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:389:33
	s_mul_i32 s6, s6, s34
	.loc	1 390 80                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:390:80
	s_mov_b32 s20, s28
	s_mov_b32 s21, s29
	v_cndmask_b32_e32 v4, v16, v5, vcc
	s_mov_b32 m0, s51
	v_add_u32_e32 v140, v18, v3
	.loc	1 381 39                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:381:39
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_barrier
	.loc	1 389 50                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:389:50
	v_add_u32_e32 v9, s6, v139
	.loc	1 390 80                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:390:80
	buffer_load_dwordx4 v4, s[20:23], 0 offen lds
	v_lshrrev_b64 v[4:5], v138, exec
	v_lshlrev_b32_e32 v169, 2, v140
	v_lshlrev_b32_e32 v5, 1, v8
	ds_bpermute_b32 v8, v169, v9
	v_add_u32_e32 v19, 0xffffe800, v19
	v_and_b32_e32 v4, 1, v4
	.loc	1 387 42                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:387:42
	s_or_b32 s7, s4, s44
	.loc	1 390 80                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:390:80
	v_ashrrev_i32_e32 v19, 3, v19
	v_cmp_eq_u32_e64 s[2:3], 1, v4
	.loc	1 389 33                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:389:33
	s_mul_i32 s7, s7, s34
	.loc	1 390 80                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:390:80
	s_add_i32 m0, s5, 0x117e0
	v_cndmask_b32_e64 v4, v16, v5, s[2:3]
	v_add_u32_e32 v142, v19, v3
	.loc	1 389 50                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:389:50
	v_add_u32_e32 v10, s7, v139
	.loc	1 390 80                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:390:80
	buffer_load_dwordx4 v4, s[20:23], 0 offen lds
	v_lshrrev_b64 v[4:5], v140, exec
	v_lshlrev_b32_e32 v172, 2, v142
	s_waitcnt lgkmcnt(0)
	v_lshlrev_b32_e32 v5, 1, v8
	ds_bpermute_b32 v8, v172, v10
	v_and_b32_e32 v4, 1, v4
	.loc	1 387 42                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:387:42
	s_or_b32 s10, s4, s45
	.loc	1 390 80                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:390:80
	v_cmp_eq_u32_e64 s[2:3], 1, v4
	.loc	1 389 33                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:389:33
	s_mul_i32 s10, s10, s34
	.loc	1 390 80                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:390:80
	s_add_i32 m0, s5, 0x127e0
	v_cndmask_b32_e64 v4, v16, v5, s[2:3]
	.loc	1 389 50                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:389:50
	v_add_u32_e32 v11, s10, v139
	.loc	1 390 80                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:390:80
	buffer_load_dwordx4 v4, s[20:23], 0 offen lds
	v_lshrrev_b64 v[4:5], v142, exec
	s_waitcnt lgkmcnt(0)
	v_lshlrev_b32_e32 v5, 1, v8
	ds_bpermute_b32 v8, v168, v11
	v_add_u32_e32 v20, 0xffffd800, v20
	.loc	1 387 42                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:387:42
	s_or_b32 s11, s4, s46
	.loc	1 390 80                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:390:80
	v_ashrrev_i32_e32 v20, 3, v20
	v_and_b32_e32 v4, 1, v4
	.loc	1 389 33                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:389:33
	s_mul_i32 s11, s11, s34
	.loc	1 390 80                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:390:80
	v_cmp_eq_u32_e64 s[2:3], 1, v4
	v_add_u32_e32 v144, v20, v3
	.loc	1 389 50                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:389:50
	v_add_u32_e32 v12, s11, v139
	.loc	1 390 80                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:390:80
	s_add_i32 m0, s5, 0x137e0
	v_cndmask_b32_e64 v4, v16, v5, s[2:3]
	v_lshlrev_b32_e32 v173, 2, v144
	buffer_load_dwordx4 v4, s[20:23], 0 offen lds
	s_waitcnt lgkmcnt(0)
	v_lshlrev_b32_e32 v4, 1, v8
	ds_bpermute_b32 v8, v173, v12
	v_add_u32_e32 v21, 0xffffd000, v21
	.loc	1 387 42                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:387:42
	s_or_b32 s13, s4, s47
	.loc	1 390 80                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:390:80
	v_ashrrev_i32_e32 v21, 3, v21
	.loc	1 389 33                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:389:33
	s_mul_i32 s13, s13, s34
	.loc	1 390 80                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:390:80
	s_add_i32 m0, s5, 0x147e0
	v_cndmask_b32_e32 v4, v16, v4, vcc
	v_add_u32_e32 v146, v21, v3
	.loc	1 389 50                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:389:50
	v_add_u32_e32 v13, s13, v139
	.loc	1 390 80                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:390:80
	buffer_load_dwordx4 v4, s[20:23], 0 offen lds
	v_lshrrev_b64 v[4:5], v144, exec
	v_lshlrev_b32_e32 v187, 2, v146
	v_and_b32_e32 v4, 1, v4
	s_waitcnt lgkmcnt(0)
	v_lshlrev_b32_e32 v5, 1, v8
	ds_bpermute_b32 v8, v187, v13
	.loc	1 387 42                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:387:42
	s_or_b32 s15, s4, s48
	.loc	1 390 80                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:390:80
	v_cmp_eq_u32_e32 vcc, 1, v4
	.loc	1 389 33                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:389:33
	s_mul_i32 s15, s15, s34
	.loc	1 390 80                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:390:80
	s_add_i32 m0, s5, 0x157e0
	v_cndmask_b32_e32 v4, v16, v5, vcc
	v_add_u32_e32 v148, v15, v3
	.loc	1 389 50                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:389:50
	v_add_u32_e32 v14, s15, v139
	.loc	1 390 80                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:390:80
	buffer_load_dwordx4 v4, s[20:23], 0 offen lds
	v_lshrrev_b64 v[4:5], v146, exec
	v_lshlrev_b32_e32 v174, 2, v148
	v_and_b32_e32 v4, 1, v4
	ds_bpermute_b32 v3, v174, v14
	s_waitcnt lgkmcnt(1)
	v_lshlrev_b32_e32 v5, 1, v8
	v_cmp_eq_u32_e32 vcc, 1, v4
	s_add_i32 m0, s5, 0x167e0
	.loc	1 377 24                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:377:24
	v_mov_b32_e32 v7, 0
	.loc	1 390 80                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:390:80
	v_cndmask_b32_e32 v4, v16, v5, vcc
	buffer_load_dwordx4 v4, s[20:23], 0 offen lds
	v_lshrrev_b64 v[4:5], v148, exec
	v_and_b32_e32 v4, 1, v4
	s_waitcnt lgkmcnt(0)
	v_lshlrev_b32_e32 v3, 1, v3
	v_cmp_eq_u32_e32 vcc, 1, v4
	s_add_i32 m0, s5, 0x177e0
	.loc	1 405 8                         ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:405:8
	global_load_dword v4, v7, s[36:37]
	.loc	1 390 80                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:390:80
	v_cndmask_b32_e32 v3, v16, v3, vcc
	buffer_load_dwordx4 v3, s[20:23], 0 offen lds
	.loc	1 395 45                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:395:45
	v_or_b32_e32 v3, s4, v152
	.loc	1 397 37                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:397:37
	v_mul_lo_u32 v3, v3, s35
	.loc	1 398 81                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:398:81
	s_add_i32 s52, s52, 0x228c0
	s_and_b32 s9, s9, 0xffff
	s_mov_b32 s10, s22
	s_mov_b32 s11, s23
	v_add_lshl_u32 v3, v3, v141, 1
	s_mov_b32 m0, s52
	.loc	1 382 69                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:382:69
	v_and_b32_e32 v7, 15, v0
	.loc	1 398 81                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:398:81
	buffer_load_dwordx4 v3, s[8:11], 0 offen lds
	.loc	1 382 69                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:382:69
	v_lshlrev_b32_e32 v3, 10, v7
	v_lshl_or_b32 v3, s19, 14, v3
	v_and_b32_e32 v165, 48, v0
	v_lshrrev_b32_e32 v5, 5, v3
	v_add_u32_e32 v3, 0, v3
	v_add3_u32 v3, v3, v165, v5
	ds_read_b128 a[0:3], v3
	ds_read_b128 v[252:255], v3 offset:64
	ds_read_b128 v[248:251], v3 offset:128
	ds_read_b128 v[244:247], v3 offset:192
	ds_read_b128 v[240:243], v3 offset:256
	ds_read_b128 v[236:239], v3 offset:320
	ds_read_b128 v[232:235], v3 offset:384
	ds_read_b128 v[228:231], v3 offset:448
	ds_read_b128 v[224:227], v3 offset:512
	ds_read_b128 v[220:223], v3 offset:576
	ds_read_b128 v[216:219], v3 offset:640
	ds_read_b128 v[212:215], v3 offset:704
	ds_read_b128 v[208:211], v3 offset:768
	ds_read_b128 v[204:207], v3 offset:832
	ds_read_b128 v[200:203], v3 offset:896
	ds_read_b128 v[192:195], v3 offset:960
	.loc	1 383 65                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:383:65
	v_lshlrev_b32_e32 v3, 10, v0
	v_and_b32_e32 v175, 0xc00, v3
	v_lshlrev_b32_e32 v3, 5, v6
	s_lshl_b32 s2, s14, 3
	v_and_b32_e32 v3, 0x1180, v3
	s_and_b32 s2, s2, 0x200
	v_or_b32_e32 v3, s2, v3
	v_or3_b32 v3, v3, v165, v175
	v_lshrrev_b32_e32 v5, 5, v3
	v_and_b32_e32 v5, 0xe0, v5
	v_add3_u32 v3, s12, v3, v5
	ds_read_b128 v[196:199], v3
	ds_read_b128 v[188:191], v3 offset:64
	s_mov_b32 s55, 32
	.loc	1 352 70                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:352:70
	s_mov_b32 s49, 0
	.loc	1 390 80                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:390:80
	s_mov_b32 s30, s22
	s_mov_b32 s31, s23
	.loc	1 411 19                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:411:19
	s_cmp_gt_u32 s38, 2
	v_and_b32_e32 v0, 12, v0
	v_lshrrev_b32_e32 v176, 5, v175
	v_lshrrev_b32_e32 v147, 2, v165
	.loc	1 405 8                         ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:405:8
	s_waitcnt vmcnt(2)
	v_readfirstlane_b32 s5, v4
	.loc	1 411 19                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:411:19
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 490 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:490:38
	v_mul_u32_u24_e32 v3, 0x410, v7
	v_xor_b32_e32 v163, v3, v165
	.loc	1 499 56                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:499:56
	v_or_b32_e32 v3, 1, v147
	v_accvgpr_write_b32 a94, v3
	v_or_b32_e32 v3, 2, v147
	v_accvgpr_write_b32 a95, v3
	v_or_b32_e32 v3, 3, v147
	v_accvgpr_write_b32 a96, v3
	v_or_b32_e32 v3, 16, v147
	v_accvgpr_write_b32 a92, v3
	v_or_b32_e32 v3, 17, v147
	v_accvgpr_write_b32 a97, v3
	v_or_b32_e32 v3, 18, v147
	v_accvgpr_write_b32 a98, v3
	v_or_b32_e32 v3, 19, v147
	v_accvgpr_write_b32 a99, v3
	.loc	1 511 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:511:38
	v_lshlrev_b32_e32 v3, 8, v0
	v_lshlrev_b32_e32 v4, 2, v0
	s_movk_i32 s3, 0x98
	s_movk_i32 s2, 0x80
	v_lshl_or_b32 v3, v165, 9, v3
	v_bitop3_b32 v4, v2, v4, s3 bitop3:0x6c
	v_bitop3_b32 v149, v3, s2, v4 bitop3:0x36
	s_movk_i32 s2, 0xa0
	.loc	1 490 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:490:38
	v_xor_b32_e32 v162, 64, v163
	v_xor_b32_e32 v137, 0x80, v163
	v_xor_b32_e32 v161, 0xc0, v163
	.loc	1 495 40                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:495:40
	v_lshlrev_b32_e32 v177, 5, v0
	.loc	1 511 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:511:38
	v_or_b32_e32 v154, v3, v4
	v_bitop3_b32 v155, v3, 32, v4 bitop3:0x36
	v_bitop3_b32 v160, v3, s2, v4 bitop3:0x36
	s_load_dword s39, s[0:1], 0x38
	s_add_i32 s50, s38, -2
	s_cbranch_execz .LBB0_4
; %bb.2:
	.loc	1 0 38 is_stmt 0                ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:0:38
	v_mov_b32_e32 v1, 0
	v_accvgpr_write_b32 a93, v7
	v_mov_b32_e32 v0, v1
	v_mov_b32_e32 v3, v1
	v_mov_b32_e32 v2, v1
	v_mov_b32_e32 v5, v1
	v_mov_b32_e32 v4, v1
	v_mov_b32_e32 v7, v1
	v_mov_b32_e32 v6, v1
	v_mov_b32_e32 v9, v1
	v_mov_b32_e32 v8, v1
	v_mov_b32_e32 v11, v1
	v_mov_b32_e32 v10, v1
	v_mov_b32_e32 v13, v1
	v_mov_b32_e32 v12, v1
	v_mov_b32_e32 v15, v1
	v_mov_b32_e32 v14, v1
	v_mov_b32_e32 v17, v1
	v_mov_b32_e32 v16, v1
	v_mov_b32_e32 v19, v1
	v_mov_b32_e32 v18, v1
	v_mov_b32_e32 v21, v1
	v_mov_b32_e32 v20, v1
	v_mov_b32_e32 v23, v1
	v_mov_b32_e32 v22, v1
	v_mov_b32_e32 v25, v1
	v_mov_b32_e32 v24, v1
	v_mov_b32_e32 v27, v1
	v_mov_b32_e32 v26, v1
	v_mov_b32_e32 v29, v1
	v_mov_b32_e32 v28, v1
	v_mov_b32_e32 v31, v1
	v_mov_b32_e32 v30, v1
	v_mov_b32_e32 v33, v1
	v_mov_b32_e32 v32, v1
	v_mov_b32_e32 v35, v1
	v_mov_b32_e32 v34, v1
	v_mov_b32_e32 v37, v1
	v_mov_b32_e32 v36, v1
	v_mov_b32_e32 v39, v1
	v_mov_b32_e32 v38, v1
	v_mov_b32_e32 v41, v1
	v_mov_b32_e32 v40, v1
	v_mov_b32_e32 v43, v1
	v_mov_b32_e32 v42, v1
	v_mov_b32_e32 v45, v1
	v_mov_b32_e32 v44, v1
	v_mov_b32_e32 v47, v1
	v_mov_b32_e32 v46, v1
	v_mov_b32_e32 v49, v1
	v_mov_b32_e32 v48, v1
	v_mov_b32_e32 v51, v1
	v_mov_b32_e32 v50, v1
	v_mov_b32_e32 v53, v1
	v_mov_b32_e32 v52, v1
	v_mov_b32_e32 v55, v1
	v_mov_b32_e32 v54, v1
	v_mov_b32_e32 v57, v1
	v_mov_b32_e32 v56, v1
	v_mov_b32_e32 v59, v1
	v_mov_b32_e32 v58, v1
	v_mov_b32_e32 v61, v1
	v_mov_b32_e32 v60, v1
	v_mov_b32_e32 v63, v1
	v_mov_b32_e32 v62, v1
	v_mov_b32_e32 v65, v1
	v_mov_b32_e32 v64, v1
	v_mov_b32_e32 v67, v1
	v_mov_b32_e32 v66, v1
	v_mov_b32_e32 v69, v1
	v_mov_b32_e32 v68, v1
	v_mov_b32_e32 v71, v1
	v_mov_b32_e32 v70, v1
	v_mov_b32_e32 v73, v1
	v_mov_b32_e32 v72, v1
	v_mov_b32_e32 v75, v1
	v_mov_b32_e32 v74, v1
	v_mov_b32_e32 v77, v1
	v_mov_b32_e32 v76, v1
	v_mov_b32_e32 v79, v1
	v_mov_b32_e32 v78, v1
	v_mov_b32_e32 v81, v1
	v_mov_b32_e32 v80, v1
	v_mov_b32_e32 v83, v1
	v_mov_b32_e32 v82, v1
	v_mov_b32_e32 v85, v1
	v_mov_b32_e32 v84, v1
	v_mov_b32_e32 v87, v1
	v_mov_b32_e32 v86, v1
	v_mov_b32_e32 v89, v1
	v_mov_b32_e32 v88, v1
	v_mov_b32_e32 v91, v1
	v_mov_b32_e32 v90, v1
	v_mov_b32_e32 v93, v1
	v_mov_b32_e32 v92, v1
	v_mov_b32_e32 v95, v1
	v_mov_b32_e32 v94, v1
	v_mov_b32_e32 v97, v1
	v_mov_b32_e32 v96, v1
	v_mov_b32_e32 v99, v1
	v_mov_b32_e32 v98, v1
	v_mov_b32_e32 v101, v1
	v_mov_b32_e32 v100, v1
	v_mov_b32_e32 v103, v1
	v_mov_b32_e32 v102, v1
	v_mov_b32_e32 v105, v1
	v_mov_b32_e32 v104, v1
	v_mov_b32_e32 v107, v1
	v_mov_b32_e32 v106, v1
	v_mov_b32_e32 v109, v1
	v_mov_b32_e32 v108, v1
	v_mov_b32_e32 v111, v1
	v_mov_b32_e32 v110, v1
	v_mov_b32_e32 v117, v1
	v_mov_b32_e32 v116, v1
	v_mov_b32_e32 v119, v1
	v_mov_b32_e32 v118, v1
	v_mov_b32_e32 v121, v1
	v_mov_b32_e32 v120, v1
	v_mov_b32_e32 v123, v1
	v_mov_b32_e32 v122, v1
	v_mov_b32_e32 v125, v1
	v_mov_b32_e32 v124, v1
	v_mov_b32_e32 v127, v1
	v_mov_b32_e32 v126, v1
	v_mov_b32_e32 v113, v1
	v_mov_b32_e32 v112, v1
	v_mov_b32_e32 v115, v1
	v_mov_b32_e32 v114, v1
	v_mov_b32_e32 v164, 0
	v_mov_b32_e32 v128, 0xff800000
	s_branch .LBB0_7
.LBB0_3:
                                        ; implicit-def: $vgpr163
                                        ; implicit-def: $vgpr162
                                        ; implicit-def: $vgpr137
                                        ; implicit-def: $vgpr161
                                        ; implicit-def: $vgpr177
                                        ; implicit-def: $agpr94
                                        ; implicit-def: $agpr95
                                        ; implicit-def: $agpr96
                                        ; implicit-def: $agpr92
                                        ; implicit-def: $agpr97
                                        ; implicit-def: $agpr98
                                        ; implicit-def: $agpr99
                                        ; implicit-def: $vgpr154
                                        ; implicit-def: $vgpr155
                                        ; implicit-def: $vgpr149
                                        ; implicit-def: $vgpr160
	s_load_dword s39, s[0:1], 0x38
	s_add_i32 s50, s38, -2
.LBB0_4:                                ; %.lr.ph
	v_mul_u32_u24_e32 v3, 0x410, v7
	.loc	1 411 19 is_stmt 1              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:411:19
	s_add_i32 s2, 0, 0x228c0
	v_xor_b32_e32 v163, v3, v165
	v_lshlrev_b32_e32 v3, 5, v0
	v_accvgpr_write_b32 a104, v3
	v_add3_u32 v3, s2, v175, v3
	v_accvgpr_write_b32 a102, v175
	v_add3_u32 v175, v3, v165, v176
	v_or_b32_e32 v3, 1, v147
	v_accvgpr_write_b32 a94, v3
	v_or_b32_e32 v3, 2, v147
	v_accvgpr_write_b32 a95, v3
	v_or_b32_e32 v3, 3, v147
	v_accvgpr_write_b32 a96, v3
	v_or_b32_e32 v3, 16, v147
	v_accvgpr_write_b32 a92, v3
	v_or_b32_e32 v3, 17, v147
	v_accvgpr_write_b32 a97, v3
	v_or_b32_e32 v3, 18, v147
	v_accvgpr_write_b32 a98, v3
	v_or_b32_e32 v3, 19, v147
	v_accvgpr_write_b32 a99, v3
	v_lshlrev_b32_e32 v3, 8, v0
	v_lshlrev_b32_e32 v0, 2, v0
	s_movk_i32 s2, 0x98
	s_movk_i32 s3, 0x80
	v_lshl_or_b32 v3, v165, 9, v3
	v_bitop3_b32 v0, v2, v0, s2 bitop3:0x6c
	s_movk_i32 s2, 0xa0
	v_mov_b32_e32 v114, 0
	v_accvgpr_write_b32 a100, v152
	v_accvgpr_write_b32 a93, v7
	v_xor_b32_e32 v162, 64, v163
	v_xor_b32_e32 v137, 0x80, v163
	v_xor_b32_e32 v161, 0xc0, v163
	v_accvgpr_write_b32 a103, v176
	v_accvgpr_write_b32 a101, v165
	v_or_b32_e32 v154, v3, v0
	v_bitop3_b32 v155, v3, 32, v0 bitop3:0x36
	v_bitop3_b32 v149, v3, s3, v0 bitop3:0x36
	v_bitop3_b32 v160, v3, s2, v0 bitop3:0x36
	v_add_u32_e32 v176, s19, v1
	v_mov_b32_e32 v164, 0
	v_mov_b32_e32 v182, 0xff800000
	v_mov_b32_e32 v177, s33
	v_bfrev_b32_e32 v178, 1
	s_mov_b32 s10, s30
	s_mov_b32 s11, s31
	v_mov_b32_e32 v179, 0xff800000
	s_mov_b32 s53, 0xc2fc0000
	v_mov_b32_e32 v180, 0x42800000
	v_not_b32_e32 v181, 63
	s_mov_b32 s54, s50
	v_mov_b32_e32 v115, v114
	v_mov_b32_e32 v112, v114
	v_mov_b32_e32 v113, v114
	v_mov_b32_e32 v126, v114
	v_mov_b32_e32 v127, v114
	v_mov_b32_e32 v124, v114
	v_mov_b32_e32 v125, v114
	v_mov_b32_e32 v122, v114
	v_mov_b32_e32 v123, v114
	v_mov_b32_e32 v120, v114
	v_mov_b32_e32 v121, v114
	v_mov_b32_e32 v118, v114
	v_mov_b32_e32 v119, v114
	v_mov_b32_e32 v116, v114
	v_mov_b32_e32 v117, v114
	v_mov_b32_e32 v110, v114
	v_mov_b32_e32 v111, v114
	v_mov_b32_e32 v108, v114
	v_mov_b32_e32 v109, v114
	v_mov_b32_e32 v106, v114
	v_mov_b32_e32 v107, v114
	v_mov_b32_e32 v104, v114
	v_mov_b32_e32 v105, v114
	v_mov_b32_e32 v102, v114
	v_mov_b32_e32 v103, v114
	v_mov_b32_e32 v100, v114
	v_mov_b32_e32 v101, v114
	v_mov_b32_e32 v98, v114
	v_mov_b32_e32 v99, v114
	v_mov_b32_e32 v96, v114
	v_mov_b32_e32 v97, v114
	v_mov_b32_e32 v94, v114
	v_mov_b32_e32 v95, v114
	v_mov_b32_e32 v92, v114
	v_mov_b32_e32 v93, v114
	v_mov_b32_e32 v90, v114
	v_mov_b32_e32 v91, v114
	v_mov_b32_e32 v88, v114
	v_mov_b32_e32 v89, v114
	v_mov_b32_e32 v86, v114
	v_mov_b32_e32 v87, v114
	v_mov_b32_e32 v84, v114
	v_mov_b32_e32 v85, v114
	v_mov_b32_e32 v82, v114
	v_mov_b32_e32 v83, v114
	v_mov_b32_e32 v80, v114
	v_mov_b32_e32 v81, v114
	v_mov_b32_e32 v78, v114
	v_mov_b32_e32 v79, v114
	v_mov_b32_e32 v76, v114
	v_mov_b32_e32 v77, v114
	v_mov_b32_e32 v74, v114
	v_mov_b32_e32 v75, v114
	v_mov_b32_e32 v72, v114
	v_mov_b32_e32 v73, v114
	v_mov_b32_e32 v70, v114
	v_mov_b32_e32 v71, v114
	v_mov_b32_e32 v68, v114
	v_mov_b32_e32 v69, v114
	v_mov_b32_e32 v66, v114
	v_mov_b32_e32 v67, v114
	v_mov_b32_e32 v64, v114
	v_mov_b32_e32 v65, v114
	v_mov_b32_e32 v62, v114
	v_mov_b32_e32 v63, v114
	v_mov_b32_e32 v60, v114
	v_mov_b32_e32 v61, v114
	v_mov_b32_e32 v58, v114
	v_mov_b32_e32 v59, v114
	v_mov_b32_e32 v56, v114
	v_mov_b32_e32 v57, v114
	v_mov_b32_e32 v54, v114
	v_mov_b32_e32 v55, v114
	v_mov_b32_e32 v52, v114
	v_mov_b32_e32 v53, v114
	v_mov_b32_e32 v50, v114
	v_mov_b32_e32 v51, v114
	v_mov_b32_e32 v48, v114
	v_mov_b32_e32 v49, v114
	v_mov_b32_e32 v46, v114
	v_mov_b32_e32 v47, v114
	v_mov_b32_e32 v44, v114
	v_mov_b32_e32 v45, v114
	v_mov_b32_e32 v42, v114
	v_mov_b32_e32 v43, v114
	v_mov_b32_e32 v40, v114
	v_mov_b32_e32 v41, v114
	v_mov_b32_e32 v38, v114
	v_mov_b32_e32 v39, v114
	v_mov_b32_e32 v36, v114
	v_mov_b32_e32 v37, v114
	v_mov_b32_e32 v34, v114
	v_mov_b32_e32 v35, v114
	v_mov_b32_e32 v32, v114
	v_mov_b32_e32 v33, v114
	v_mov_b32_e32 v30, v114
	v_mov_b32_e32 v31, v114
	v_mov_b32_e32 v28, v114
	v_mov_b32_e32 v29, v114
	v_mov_b32_e32 v26, v114
	v_mov_b32_e32 v27, v114
	v_mov_b32_e32 v24, v114
	v_mov_b32_e32 v25, v114
	v_mov_b32_e32 v22, v114
	v_mov_b32_e32 v23, v114
	v_mov_b32_e32 v20, v114
	v_mov_b32_e32 v21, v114
	v_mov_b32_e32 v18, v114
	v_mov_b32_e32 v19, v114
	v_mov_b32_e32 v16, v114
	v_mov_b32_e32 v17, v114
	v_mov_b32_e32 v14, v114
	v_mov_b32_e32 v15, v114
	v_mov_b32_e32 v12, v114
	v_mov_b32_e32 v13, v114
	v_mov_b32_e32 v10, v114
	v_mov_b32_e32 v11, v114
	v_mov_b32_e32 v8, v114
	v_mov_b32_e32 v9, v114
	v_mov_b32_e32 v6, v114
	v_mov_b32_e32 v7, v114
	v_mov_b32_e32 v4, v114
	v_mov_b32_e32 v5, v114
	v_mov_b32_e32 v2, v114
	v_mov_b32_e32 v3, v114
	v_mov_b32_e32 v0, v114
	v_mov_b32_e32 v1, v114
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 19 is_stmt 0                ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:0:19
	s_mov_b32 s20, s55
	s_mov_b32 s21, s49
	.loc	1 416 27 is_stmt 1              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:416:27
	s_add_i32 s2, s19, s55
	.loc	1 417 34                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:417:34
	s_lshl_b32 s23, s5, 6
	.loc	1 425 61                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:425:61
	v_add_u32_e32 v150, s20, v176
	.loc	1 433 72                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:433:72
	s_lshl_b32 s3, s21, 15
	.loc	1 416 27                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:416:27
	s_add_i32 s4, s2, 4
	s_add_i32 s5, s2, 8
	.loc	1 417 55                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:417:55
	s_and_b32 s13, s2, 35
	.loc	1 416 27                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:416:27
	s_add_i32 s6, s2, 12
	s_add_i32 s7, s2, 16
	s_add_i32 s12, s2, 20
	s_add_i32 s14, s2, 24
	.loc	1 417 34                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:417:34
	s_add_i32 s16, s2, 28
	.loc	1 420 92                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:420:92
	v_cmp_lt_u32_e32 vcc, s2, v177
	.loc	1 425 49                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:425:49
	v_and_or_b32 v130, v150, 63, s23
	.loc	1 433 72                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:433:72
	s_add_i32 s22, s3, 0
	.loc	1 417 55                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:417:55
	s_and_b32 s56, s4, 39
	.loc	1 417 46 is_stmt 0              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:417:46
	s_or_b32 s63, s23, s13
	.loc	1 420 92 is_stmt 1              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:420:92
	v_cmp_lt_u32_e64 s[2:3], s5, v177
	.loc	1 417 55                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:417:55
	s_and_b32 s57, s5, 43
	.loc	1 420 92                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:420:92
	v_lshrrev_b64 v[128:129], v136, vcc
	v_cmp_lt_u32_e32 vcc, s4, v177
	.loc	1 427 41                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:427:41
	v_mul_lo_u32 v151, v130, s35
	.loc	1 417 46                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:417:46
	s_or_b32 s56, s23, s56
	.loc	1 419 37                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:419:37
	s_mul_i32 s63, s63, s34
	.loc	1 420 92                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:420:92
	v_lshrrev_b64 v[130:131], v140, s[2:3]
	.loc	1 417 55                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:417:55
	s_and_b32 s58, s6, 47
	.loc	1 417 46 is_stmt 0              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:417:46
	s_or_b32 s57, s23, s57
	.loc	1 420 92 is_stmt 1              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:420:92
	v_and_b32_e32 v152, 1, v128
	v_lshrrev_b64 v[128:129], v138, vcc
	.loc	1 419 37                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:419:37
	s_mul_i32 s56, s56, s34
	.loc	1 419 54 is_stmt 0              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:419:54
	v_add_u32_e32 v131, s63, v139
	.loc	1 413 36 is_stmt 1              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:413:36
	s_xor_b32 s49, s49, 1
	.loc	1 417 55                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:417:55
	s_and_b32 s59, s7, 51
	s_and_b32 s60, s12, 55
	.loc	1 420 92                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:420:92
	v_cmp_lt_u32_e64 s[4:5], s6, v177
	v_cmp_lt_u32_e64 s[6:7], s7, v177
	v_cmp_lt_u32_e64 s[12:13], s12, v177
	.loc	1 417 46                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:417:46
	s_or_b32 s58, s23, s58
	.loc	1 428 93                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:428:93
	v_add_lshl_u32 v129, v151, v141, 1
	.loc	1 419 37                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:419:37
	s_mul_i32 s57, s57, s34
	.loc	1 419 54 is_stmt 0              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:419:54
	v_add_u32_e32 v151, s56, v139
	.loc	1 420 92 is_stmt 1              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:420:92
	ds_bpermute_b32 v131, v168, v131
	.loc	1 420 68 is_stmt 0              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:420:68
	s_lshl_b32 s15, s49, 15
	.loc	1 417 46 is_stmt 1              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:417:46
	s_or_b32 s59, s23, s59
	.loc	1 420 92                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:420:92
	v_lshrrev_b64 v[132:133], v142, s[4:5]
	v_lshrrev_b64 v[134:135], v136, s[6:7]
	v_lshrrev_b64 v[156:157], v144, s[12:13]
	.loc	1 419 37                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:419:37
	s_mul_i32 s58, s58, s34
	.loc	1 419 54 is_stmt 0              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:419:54
	v_add_u32_e32 v153, s57, v139
	.loc	1 420 92 is_stmt 1              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:420:92
	ds_bpermute_b32 v151, v167, v151
	.loc	1 417 55                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:417:55
	s_and_b32 s61, s14, 59
	.loc	1 420 92                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:420:92
	s_add_i32 s64, s51, s15
	v_cmp_lt_u32_e64 s[14:15], s14, v177
	.loc	1 417 46                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:417:46
	s_or_b32 s60, s23, s60
	.loc	1 419 37                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:419:37
	s_mul_i32 s59, s59, s34
	.loc	1 420 92                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:420:92
	v_and_b32_e32 v133, 1, v134
	v_and_b32_e32 v134, 1, v156
	.loc	1 419 54                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:419:54
	v_add_u32_e32 v156, s58, v139
	.loc	1 420 92                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:420:92
	ds_bpermute_b32 v153, v169, v153
	.loc	1 417 55                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:417:55
	s_and_b32 s62, s16, 63
	.loc	1 417 46 is_stmt 0              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:417:46
	s_or_b32 s61, s23, s61
	.loc	1 420 92 is_stmt 1              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:420:92
	v_lshrrev_b64 v[158:159], v146, s[14:15]
	.loc	1 419 37                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:419:37
	s_mul_i32 s60, s60, s34
	.loc	1 419 54 is_stmt 0              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:419:54
	v_add_u32_e32 v157, s59, v139
	.loc	1 420 92 is_stmt 1              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:420:92
	ds_bpermute_b32 v156, v172, v156
	.loc	1 417 46                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:417:46
	s_or_b32 s23, s23, s62
	.loc	1 428 130                       ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:428:130
	v_cmp_gt_u32_e32 vcc, s33, v150
	.loc	1 419 37                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:419:37
	s_mul_i32 s61, s61, s34
	.loc	1 420 92                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:420:92
	v_and_b32_e32 v135, 1, v158
	.loc	1 419 54                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:419:54
	v_add_u32_e32 v158, s60, v139
	.loc	1 420 92                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:420:92
	ds_bpermute_b32 v157, v168, v157
	.loc	1 419 37                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:419:37
	s_mul_i32 s23, s23, s34
	.loc	1 420 92                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:420:92
	v_and_b32_e32 v128, 1, v128
	.loc	1 428 93                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:428:93
	v_cndmask_b32_e32 v129, v178, v129, vcc
	.loc	1 419 54                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:419:54
	v_add_u32_e32 v159, s61, v139
	.loc	1 420 92                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:420:92
	ds_bpermute_b32 v158, v173, v158
	s_waitcnt lgkmcnt(0)
	v_lshlrev_b32_e32 v131, 1, v131
	v_cmp_eq_u32_e32 vcc, 1, v152
	v_and_b32_e32 v130, 1, v130
	.loc	1 419 54                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:419:54
	v_add_u32_e32 v166, s23, v139
	.loc	1 420 92                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:420:92
	ds_bpermute_b32 v159, v187, v159
	v_cndmask_b32_e32 v131, v178, v131, vcc
	v_lshlrev_b32_e32 v151, 1, v151
	v_cmp_eq_u32_e32 vcc, 1, v128
	s_mov_b32 m0, s64
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_and_b32_e32 v132, 1, v132
	ds_bpermute_b32 v166, v174, v166
	v_lshlrev_b32_e32 v128, 1, v153
	v_cmp_eq_u32_e64 s[2:3], 1, v130
	buffer_load_dwordx4 v131, s[28:31], 0 offen lds
	s_add_i32 m0, s64, 0x1000
	v_cndmask_b32_e32 v131, v178, v151, vcc
	v_lshlrev_b32_e32 v130, 1, v156
	v_cmp_eq_u32_e64 s[4:5], 1, v132
	v_cndmask_b32_e64 v128, v178, v128, s[2:3]
	buffer_load_dwordx4 v131, s[28:31], 0 offen lds
	s_add_i32 m0, s64, 0x2000
	v_cmp_lt_u32_e64 s[16:17], s16, v177
	v_lshlrev_b32_e32 v132, 1, v157
	v_cmp_eq_u32_e64 s[6:7], 1, v133
	v_cndmask_b32_e64 v130, v178, v130, s[4:5]
	buffer_load_dwordx4 v128, s[28:31], 0 offen lds
	s_add_i32 m0, s64, 0x3000
	v_lshrrev_b64 v[170:171], v148, s[16:17]
	v_lshlrev_b32_e32 v133, 1, v158
	v_cmp_eq_u32_e64 s[12:13], 1, v134
	v_cndmask_b32_e64 v132, v178, v132, s[6:7]
	buffer_load_dwordx4 v130, s[28:31], 0 offen lds
	s_add_i32 m0, s64, 0x4000
	v_and_b32_e32 v150, 1, v170
	v_lshlrev_b32_e32 v134, 1, v159
	v_cmp_eq_u32_e64 s[14:15], 1, v135
	v_cndmask_b32_e64 v133, v178, v133, s[12:13]
	buffer_load_dwordx4 v132, s[28:31], 0 offen lds
	s_add_i32 m0, s64, 0x5000
	s_waitcnt lgkmcnt(0)
	v_lshlrev_b32_e32 v135, 1, v166
	v_cmp_eq_u32_e64 s[16:17], 1, v150
	v_cndmask_b32_e64 v134, v178, v134, s[14:15]
	buffer_load_dwordx4 v133, s[28:31], 0 offen lds
	s_add_i32 m0, s64, 0x6000
	.loc	1 428 69                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:428:69
	s_mul_i32 s55, s49, 0x1080
	.loc	1 433 72                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:433:72
	s_add_i32 s22, s22, 0x107e0
	.loc	1 420 92                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:420:92
	v_cndmask_b32_e64 v135, v178, v135, s[16:17]
	buffer_load_dwordx4 v134, s[28:31], 0 offen lds
	s_add_i32 m0, s64, 0x7000
	.loc	1 433 82                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:433:82
	v_add_u32_e32 v186, s22, v163
	.loc	1 420 92                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:420:92
	buffer_load_dwordx4 v135, s[28:31], 0 offen lds
	.loc	1 428 93                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:428:93
	s_add_i32 m0, s52, s55
	.loc	1 433 82                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:433:82
	v_add_u32_e32 v185, s22, v162
	.loc	1 428 93                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:428:93
	buffer_load_dwordx4 v129, s[8:11], 0 offen lds
	.loc	1 432 43                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:432:43
	s_waitcnt vmcnt(9) lgkmcnt(0)
	s_barrier
	.loc	1 433 82                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:433:82
	ds_read_b128 v[128:131], v186
	ds_read_b128 a[32:35], v186 offset:256
	.loc	1 435 61                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:435:61
	s_waitcnt lgkmcnt(1)
	v_mfma_f32_16x16x32_bf16 v[128:131], v[128:131], a[0:3], 0
	.loc	1 433 82                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:433:82
	ds_read_b128 v[132:135], v186 offset:16384
	ds_read_b128 a[28:31], v186 offset:16640
	ds_read_b128 v[150:153], v185
	ds_read_b128 a[24:27], v185 offset:256
	v_add_u32_e32 v184, s22, v137
	.loc	1 435 61                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:435:61
	s_waitcnt lgkmcnt(3)
	v_mfma_f32_16x16x32_bf16 v[132:135], v[132:135], a[0:3], 0
	.loc	1 433 82                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:433:82
	v_add_u32_e32 v183, s22, v161
	.loc	1 439 19                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:439:19
	s_add_i32 s55, s20, 32
	.loc	1 442 66                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:442:66
	s_lshr_b32 s2, s55, 4
	.loc	1 435 61                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:435:61
	s_waitcnt lgkmcnt(1)
	v_mfma_f32_16x16x32_bf16 v[128:131], v[150:153], v[252:255], v[128:131]
	.loc	1 433 82                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:433:82
	ds_read_b128 v[150:153], v185 offset:16384
	ds_read_b128 a[20:23], v185 offset:16640
	.loc	1 442 66                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:442:66
	s_and_b32 s2, s2, 0xffffffc
	v_accvgpr_write_b32 a107, v172
	.loc	1 435 61                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:435:61
	s_waitcnt lgkmcnt(1)
	v_mfma_f32_16x16x32_bf16 v[132:135], v[150:153], v[252:255], v[132:135]
	.loc	1 433 82                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:433:82
	ds_read_b128 v[150:153], v184
	ds_read_b128 a[16:19], v184 offset:256
	v_accvgpr_write_b32 a108, v173
	v_accvgpr_write_b32 a109, v187
	.loc	1 435 61                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:435:61
	s_waitcnt lgkmcnt(1)
	v_mfma_f32_16x16x32_bf16 v[128:131], v[150:153], v[248:251], v[128:131]
	.loc	1 433 82                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:433:82
	ds_read_b128 v[150:153], v184 offset:16384
	ds_read_b128 a[12:15], v184 offset:16640
	.loc	1 436 74                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:436:74
	s_mulk_i32 s21, 0x1080
	v_accvgpr_write_b32 a105, v167
	.loc	1 435 61                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:435:61
	s_waitcnt lgkmcnt(1)
	v_mfma_f32_16x16x32_bf16 v[156:159], v[150:153], v[248:251], v[132:135]
	.loc	1 433 82                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:433:82
	s_nop 2
	ds_read_b128 v[132:135], v183
	ds_read_b128 a[8:11], v183 offset:256
	.loc	1 436 84                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:436:84
	v_add_u32_e32 v151, s21, v175
	.loc	1 433 82                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:433:82
	ds_read_b128 a[72:75], v183 offset:17152
	.loc	1 436 84                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:436:84
	ds_read_b128 a[76:79], v151
	ds_read_b128 a[80:83], v151 offset:64
	.loc	1 435 61                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:435:61
	s_waitcnt lgkmcnt(4)
	v_mfma_f32_16x16x32_bf16 v[132:135], v[132:135], v[244:247], v[128:131]
	.loc	1 433 82                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:433:82
	s_nop 2
	ds_read_b128 v[128:131], v183 offset:16384
	ds_read_b128 a[4:7], v183 offset:16640
	.loc	1 436 84                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:436:84
	ds_read_b128 a[84:87], v151 offset:512
	ds_read_b128 a[88:91], v151 offset:576
	v_add_u32_e32 v150, s20, v147
	.loc	1 435 61                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:435:61
	s_waitcnt lgkmcnt(3)
	v_mfma_f32_16x16x32_bf16 v[128:131], v[128:131], v[244:247], v[156:159]
	v_subrev_u32_e32 v152, 32, v150
	v_subrev_u32_e32 v153, 31, v150
	v_subrev_u32_e32 v166, 30, v150
	v_mfma_f32_16x16x32_bf16 v[132:135], a[32:35], v[240:243], v[132:135]
	v_subrev_u32_e32 v167, 29, v150
	v_accvgpr_write_b32 a106, v169
	v_add_u32_e32 v169, -16, v150
	v_mfma_f32_16x16x32_bf16 v[128:131], a[28:31], v[240:243], v[128:131]
	v_add_u32_e32 v143, -15, v150
	v_add_u32_e32 v145, -14, v150
	.loc	1 448 43                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:448:43
	v_add_u32_e32 v150, -13, v150
	.loc	1 435 61                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:435:61
	v_mfma_f32_16x16x32_bf16 v[132:135], a[24:27], v[236:239], v[132:135]
	.loc	1 448 43                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:448:43
	v_cmp_gt_i32_e64 s[4:5], s33, v167
	v_cmp_gt_i32_e64 s[14:15], s33, v145
	v_cmp_gt_i32_e64 s[16:17], s33, v150
	.loc	1 435 61                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:435:61
	v_mfma_f32_16x16x32_bf16 v[128:131], a[20:23], v[236:239], v[128:131]
	.loc	1 448 43                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:448:43
	v_cmp_gt_i32_e32 vcc, s33, v153
	v_cmp_gt_i32_e64 s[6:7], s33, v169
	v_cmp_gt_i32_e64 s[12:13], s33, v143
	.loc	1 435 61                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:435:61
	v_mfma_f32_16x16x32_bf16 v[156:159], a[16:19], v[232:235], v[132:135]
	.loc	1 448 43                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:448:43
	v_cmp_gt_i32_e64 s[20:21], s33, v152
	.loc	1 411 19                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:411:19
	s_add_i32 s54, s54, -1
	s_cmp_lg_u32 s54, 0
	.loc	1 442 12                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:442:12
	v_mov_b32_e32 v133, s2
	.loc	1 435 61                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:435:61
	v_mfma_f32_16x16x32_bf16 v[170:173], a[12:15], v[232:235], v[128:131]
	.loc	1 448 43                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:448:43
	v_cmp_gt_i32_e64 s[2:3], s33, v166
	.loc	1 459 82                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:459:82
	v_add_u32_e32 v134, s22, v154
	v_add_u32_e32 v132, s22, v155
	.loc	1 442 12                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:442:12
	global_load_dword v131, v133, s[36:37]
	.loc	1 435 61                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:435:61
	v_mfma_f32_16x16x32_bf16 v[156:159], a[8:11], v[228:231], v[156:159]
	.loc	1 433 82                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:433:82
	ds_read_b128 a[8:11], v186 offset:512
	ds_read_b128 a[12:15], v186 offset:768
	ds_read_b128 a[16:19], v186 offset:16896
	.loc	1 459 82                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:459:82
	v_add_u32_e32 v129, s22, v149
	v_add_u32_e32 v130, s22, v160
	.loc	1 435 61                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:435:61
	s_waitcnt lgkmcnt(5)
	v_mfma_f32_16x16x32_bf16 v[170:173], a[4:7], v[228:231], v[170:173]
	.loc	1 433 82                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:433:82
	ds_read_b128 a[24:27], v186 offset:17152
	ds_read_b128 a[4:7], v185 offset:512
	ds_read_b128 a[36:39], v185 offset:768
	.loc	1 459 82                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:459:82
	ds_read_b64_tr_b16 a[58:59], v134 offset:4160
	ds_read_b64_tr_b16 a[56:57], v134
	ds_read_b64_tr_b16 a[52:53], v134 offset:64
	.loc	1 435 61                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:435:61
	s_waitcnt lgkmcnt(8)
	v_mfma_f32_16x16x32_bf16 v[156:159], a[8:11], v[224:227], v[156:159]
	.loc	1 433 82                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:433:82
	ds_read_b128 a[8:11], v185 offset:16896
	ds_read_b128 a[40:43], v185 offset:17152
	ds_read_b128 a[20:23], v184 offset:512
	.loc	1 435 61                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:435:61
	s_waitcnt lgkmcnt(9)
	v_mfma_f32_16x16x32_bf16 v[170:173], a[16:19], v[224:227], v[170:173]
	.loc	1 433 82                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:433:82
	ds_read_b128 a[16:19], v184 offset:768
	ds_read_b128 a[28:31], v184 offset:16896
	ds_read_b128 a[44:47], v184 offset:17152
	.loc	1 435 61                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:435:61
	s_waitcnt lgkmcnt(10)
	v_mfma_f32_16x16x32_bf16 v[156:159], a[4:7], v[220:223], v[156:159]
	.loc	1 433 82                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:433:82
	ds_read_b128 v[184:187], v183 offset:512
	ds_read_b128 a[68:71], v183 offset:768
	ds_read_b128 a[4:7], v183 offset:16896
	.loc	1 435 61                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:435:61
	s_waitcnt lgkmcnt(8)
	v_mfma_f32_16x16x32_bf16 v[170:173], a[8:11], v[220:223], v[170:173]
	s_waitcnt lgkmcnt(6)
	v_mfma_f32_16x16x32_bf16 v[156:159], a[20:23], v[216:219], v[156:159]
	s_waitcnt lgkmcnt(4)
	v_mfma_f32_16x16x32_bf16 v[170:173], a[28:31], v[216:219], v[170:173]
	.loc	1 459 82                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:459:82
	ds_read_b64_tr_b16 a[34:35], v134 offset:4416
	ds_read_b64_tr_b16 a[30:31], v134 offset:4352
	ds_read_b64_tr_b16 a[54:55], v134 offset:4096
	ds_read_b64_tr_b16 a[32:33], v134 offset:256
	ds_read_b64_tr_b16 a[28:29], v134 offset:320
	ds_read_b64_tr_b16 a[22:23], v134 offset:4672
	.loc	1 435 61                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:435:61
	s_waitcnt lgkmcnt(8)
	v_mfma_f32_16x16x32_bf16 v[156:159], v[184:187], v[212:215], v[156:159]
	.loc	1 459 82                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:459:82
	ds_read_b64_tr_b16 v[184:185], v134 offset:832
	ds_read_b64_tr_b16 a[64:65], v132
	ds_read_b64_tr_b16 a[66:67], v132 offset:4160
	.loc	1 435 61                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:435:61
	s_waitcnt lgkmcnt(9)
	v_mfma_f32_16x16x32_bf16 v[170:173], a[4:7], v[212:215], v[170:173]
	v_mfma_f32_16x16x32_bf16 v[156:159], a[12:15], v[208:211], v[156:159]
	.loc	1 459 82                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:459:82
	ds_read_b64_tr_b16 a[6:7], v134 offset:4928
	ds_read_b64_tr_b16 v[186:187], v134 offset:4864
	ds_read_b64_tr_b16 a[14:15], v134 offset:4608
	ds_read_b64_tr_b16 a[20:21], v134 offset:512
	ds_read_b64_tr_b16 a[12:13], v134 offset:576
	ds_read_b64_tr_b16 a[4:5], v134 offset:768
	.loc	1 435 61                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:435:61
	v_mfma_f32_16x16x32_bf16 v[170:173], a[24:27], v[208:211], v[170:173]
	v_mfma_f32_16x16x32_bf16 v[156:159], a[36:39], v[204:207], v[156:159]
	v_mfma_f32_16x16x32_bf16 v[170:173], a[40:43], v[204:207], v[170:173]
	.loc	1 459 82                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:459:82
	ds_read_b64_tr_b16 a[50:51], v132 offset:4416
	ds_read_b64_tr_b16 a[42:43], v132 offset:4352
	ds_read_b64_tr_b16 a[62:63], v132 offset:4096
	ds_read_b64_tr_b16 a[60:61], v132 offset:64
	ds_read_b64_tr_b16 a[48:49], v132 offset:256
	ds_read_b64_tr_b16 a[40:41], v132 offset:320
	.loc	1 435 61                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:435:61
	v_mfma_f32_16x16x32_bf16 v[156:159], a[16:19], v[200:203], v[156:159]
	.loc	1 459 82                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:459:82
	ds_read_b64_tr_b16 a[26:27], v132 offset:4672
	ds_read_b64_tr_b16 a[24:25], v132 offset:512
	ds_read_b64_tr_b16 a[16:17], v132 offset:576
	ds_read_b64_tr_b16 a[10:11], v132 offset:4928
	ds_read_b64_tr_b16 v[134:135], v132 offset:4864
	ds_read_b64_tr_b16 a[18:19], v132 offset:4608
	.loc	1 435 61                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:435:61
	v_mfma_f32_16x16x32_bf16 v[170:173], a[44:47], v[200:203], v[170:173]
	v_mfma_f32_16x16x32_bf16 v[156:159], a[68:71], v[192:195], v[156:159]
	.loc	1 459 82                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:459:82
	ds_read_b64_tr_b16 a[68:69], v129 offset:64
	ds_read_b64_tr_b16 a[44:45], v129 offset:256
	ds_read_b64_tr_b16 a[36:37], v129 offset:320
	ds_read_b64_tr_b16 a[46:47], v129 offset:4416
	ds_read_b64_tr_b16 a[38:39], v129 offset:4352
	ds_read_b64_tr_b16 a[70:71], v129 offset:4096
	.loc	1 435 61                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:435:61
	v_mfma_f32_16x16x32_bf16 v[170:173], a[72:75], v[192:195], v[170:173]
	.loc	1 459 82                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:459:82
	ds_read_b64_tr_b16 a[8:9], v132 offset:768
	ds_read_b64_tr_b16 a[72:73], v129
	ds_read_b64_tr_b16 a[74:75], v129 offset:4160
	.loc	1 437 58                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:437:58
	v_mfma_f32_16x16x32_bf16 v[156:159], a[76:79], v[196:199], v[156:159]
	v_mfma_f32_16x16x32_bf16 v[170:173], a[84:87], v[196:199], v[170:173]
	v_mfma_f32_16x16x32_bf16 v[156:159], a[80:83], v[188:191], v[156:159]
	v_accvgpr_write_b32 a82, v160
	.loc	1 459 82                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:459:82
	ds_read_b64_tr_b16 a[78:79], v130 offset:4160
	ds_read_b64_tr_b16 a[76:77], v130
	ds_read_b64_tr_b16 a[80:81], v130 offset:64
	.loc	1 437 58                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:437:58
	v_mfma_f32_16x16x32_bf16 v[170:173], a[88:91], v[188:191], v[170:173]
	.loc	1 445 14                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:445:14
	s_nop 2
	v_mul_f32_e32 v128, s39, v156
	v_mul_f32_e32 v133, s39, v157
	v_mul_f32_e32 v156, s39, v159
	v_mul_f32_e32 v151, s39, v158
	.loc	1 448 61                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:448:61
	v_cndmask_b32_e64 v150, v179, v156, s[4:5]
	v_cndmask_b32_e64 v143, v179, v128, s[20:21]
	.loc	1 445 14                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:445:14
	v_mul_f32_e32 v157, s39, v170
	v_mul_f32_e32 v159, s39, v172
	v_mul_f32_e32 v170, s39, v173
	v_mul_f32_e32 v158, s39, v171
	.loc	1 448 61                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:448:61
	v_cndmask_b32_e64 v153, v179, v159, s[14:15]
	v_cndmask_b32_e64 v156, v179, v170, s[16:17]
	v_cndmask_b32_e32 v133, v179, v133, vcc
	v_cndmask_b32_e64 v145, v179, v151, s[2:3]
	v_cndmask_b32_e64 v151, v179, v157, s[6:7]
	v_cndmask_b32_e64 v152, v179, v158, s[12:13]
.Ltmp8:
	.loc	2 170 27                        ; standard.py:170:27 @[ standard.py:191:40 @[ bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:449:40 ] ]
	v_max_f32_e32 v158, v153, v156
	v_max_f32_e32 v128, v143, v133
	v_max_f32_e32 v157, v145, v150
	v_max3_f32 v158, v151, v152, v158
	v_max3_f32 v128, v128, v157, v158
.Ltmp9:
	.loc	2 191 40                        ; standard.py:191:40 @[ bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:449:40 ]
	v_mov_b32_e32 v157, v128
	s_nop 1
	v_permlane32_swap_b32_e32 v128, v157
.Ltmp10:
	.loc	2 170 27                        ; standard.py:170:27 @[ standard.py:191:40 @[ bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:449:40 ] ]
	v_max_f32_e32 v157, v157, v157
	v_max_f32_e32 v128, v128, v128
	v_max_f32_e32 v128, v128, v157
.Ltmp11:
	.loc	2 191 40                        ; standard.py:191:40 @[ bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:449:40 ]
	v_mov_b32_e32 v157, v128
	s_nop 1
	v_permlane16_swap_b32_e32 v128, v157
.Ltmp12:
	.loc	1 449 44                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:449:44
	v_max3_f32 v128, v128, v157, v182
	.loc	1 451 24                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:451:24
	v_sub_f32_e32 v133, v133, v128
	.loc	1 451 19 is_stmt 0              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:451:19
	v_mul_f32_e32 v133, 0x3fb8aa3b, v133
	.loc	1 451 24                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:451:24
	v_sub_f32_e32 v143, v143, v128
	v_sub_f32_e32 v145, v145, v128
	v_sub_f32_e32 v150, v150, v128
	v_sub_f32_e32 v151, v151, v128
	v_sub_f32_e32 v152, v152, v128
	v_sub_f32_e32 v153, v153, v128
	v_sub_f32_e32 v156, v156, v128
	.loc	1 451 19                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:451:19
	v_cmp_gt_f32_e64 s[4:5], s53, v133
	.loc	1 450 34 is_stmt 1              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:450:34
	v_sub_f32_e32 v157, v182, v128
	.loc	1 451 19                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:451:19
	v_mul_f32_e32 v143, 0x3fb8aa3b, v143
	v_mul_f32_e32 v145, 0x3fb8aa3b, v145
	v_mul_f32_e32 v150, 0x3fb8aa3b, v150
	v_mul_f32_e32 v151, 0x3fb8aa3b, v151
	v_mul_f32_e32 v152, 0x3fb8aa3b, v152
	v_mul_f32_e32 v153, 0x3fb8aa3b, v153
	v_mul_f32_e32 v156, 0x3fb8aa3b, v156
	v_cndmask_b32_e64 v166, 0, v180, s[4:5]
	.loc	1 450 26                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:450:26
	v_mul_f32_e32 v157, 0x3fb8aa3b, v157
	.loc	1 451 19                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:451:19
	v_cmp_gt_f32_e64 s[2:3], s53, v143
	v_cmp_gt_f32_e64 s[6:7], s53, v145
	v_cmp_gt_f32_e64 s[12:13], s53, v150
	v_cmp_gt_f32_e64 s[14:15], s53, v151
	v_cmp_gt_f32_e64 s[16:17], s53, v152
	v_cmp_gt_f32_e64 s[20:21], s53, v153
	v_cmp_gt_f32_e64 s[22:23], s53, v156
	v_add_f32_e32 v133, v133, v166
	.loc	1 450 26                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:450:26
	v_cmp_gt_f32_e32 vcc, s53, v157
	.loc	1 451 19                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:451:19
	v_cndmask_b32_e64 v159, 0, v180, s[2:3]
	v_cndmask_b32_e64 v167, 0, v180, s[6:7]
	v_cndmask_b32_e64 v169, 0, v180, s[12:13]
	v_cndmask_b32_e64 v170, 0, v180, s[14:15]
	v_cndmask_b32_e64 v171, 0, v180, s[16:17]
	v_cndmask_b32_e64 v172, 0, v180, s[20:21]
	v_cndmask_b32_e64 v173, 0, v180, s[22:23]
	v_exp_f32_e32 v133, v133
	.loc	1 450 26                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:450:26
	v_cndmask_b32_e32 v158, 0, v180, vcc
	.loc	1 451 19                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:451:19
	v_add_f32_e32 v143, v143, v159
	v_add_f32_e32 v145, v145, v167
	v_add_f32_e32 v150, v150, v169
	v_add_f32_e32 v151, v151, v170
	v_add_f32_e32 v152, v152, v171
	v_add_f32_e32 v153, v153, v172
	v_add_f32_e32 v156, v156, v173
	.loc	1 450 26                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:450:26
	v_add_f32_e32 v157, v157, v158
	.loc	1 451 19                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:451:19
	v_exp_f32_e32 v143, v143
	v_exp_f32_e32 v145, v145
	v_exp_f32_e32 v173, v150
	v_exp_f32_e32 v151, v151
	v_exp_f32_e32 v165, v152
	v_exp_f32_e32 v153, v153
	v_exp_f32_e32 v156, v156
	v_cndmask_b32_e64 v166, 0, v181, s[4:5]
	.loc	1 450 26                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:450:26
	v_exp_f32_e32 v157, v157
	.loc	1 451 19                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:451:19
	v_ldexp_f32 v166, v133, v166
	.loc	1 459 82                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:459:82
	ds_read_b64_tr_b16 v[132:133], v132 offset:832
	.loc	1 451 19                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:451:19
	v_cndmask_b32_e64 v159, 0, v181, s[2:3]
	v_cndmask_b32_e64 v167, 0, v181, s[6:7]
	v_cndmask_b32_e64 v169, 0, v181, s[12:13]
	v_cndmask_b32_e64 v182, 0, v181, s[14:15]
	v_cndmask_b32_e64 v171, 0, v181, s[16:17]
	v_cndmask_b32_e64 v183, 0, v181, s[20:21]
	v_cndmask_b32_e64 v160, 0, v181, s[22:23]
	.loc	1 450 26                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:450:26
	v_cndmask_b32_e32 v158, 0, v181, vcc
	.loc	1 451 19                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:451:19
	v_ldexp_f32 v172, v143, v159
	v_ldexp_f32 v150, v145, v167
	v_ldexp_f32 v152, v173, v169
	v_ldexp_f32 v173, v151, v182
	v_ldexp_f32 v167, v165, v171
	v_ldexp_f32 v151, v153, v183
	v_ldexp_f32 v153, v156, v160
	.loc	1 450 26                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:450:26
	v_ldexp_f32 v170, v157, v158
	.loc	1 456 17                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:456:17
	v_cvt_pk_bf16_f32 v156, v172, v166
	v_cvt_pk_bf16_f32 v157, v150, v152
	v_cvt_pk_bf16_f32 v158, v173, v167
	v_cvt_pk_bf16_f32 v159, v151, v153
	.loc	1 457 33                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:457:33
	s_nop 0
	v_permlane32_swap_b32_e32 v156, v158
	v_permlane32_swap_b32_e32 v157, v159
	.loc	1 463 40                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:463:40
	v_pk_mul_f32 v[114:115], v[114:115], v[170:171] op_sel_hi:[1,0]
	v_pk_mul_f32 v[112:113], v[112:113], v[170:171] op_sel_hi:[1,0]
	.loc	1 457 33                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:457:33
	v_permlane16_swap_b32_e32 v156, v158
	v_permlane16_swap_b32_e32 v157, v159
	.loc	1 463 40                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:463:40
	v_pk_mul_f32 v[126:127], v[126:127], v[170:171] op_sel_hi:[1,0]
	v_pk_mul_f32 v[124:125], v[124:125], v[170:171] op_sel_hi:[1,0]
	v_pk_mul_f32 v[122:123], v[122:123], v[170:171] op_sel_hi:[1,0]
	v_pk_mul_f32 v[120:121], v[120:121], v[170:171] op_sel_hi:[1,0]
	v_pk_mul_f32 v[118:119], v[118:119], v[170:171] op_sel_hi:[1,0]
	v_pk_mul_f32 v[116:117], v[116:117], v[170:171] op_sel_hi:[1,0]
	v_pk_mul_f32 v[94:95], v[94:95], v[170:171] op_sel_hi:[1,0]
	v_pk_mul_f32 v[92:93], v[92:93], v[170:171] op_sel_hi:[1,0]
	v_pk_mul_f32 v[90:91], v[90:91], v[170:171] op_sel_hi:[1,0]
	v_pk_mul_f32 v[88:89], v[88:89], v[170:171] op_sel_hi:[1,0]
	v_pk_mul_f32 v[86:87], v[86:87], v[170:171] op_sel_hi:[1,0]
	v_pk_mul_f32 v[84:85], v[84:85], v[170:171] op_sel_hi:[1,0]
	v_pk_mul_f32 v[82:83], v[82:83], v[170:171] op_sel_hi:[1,0]
	v_pk_mul_f32 v[80:81], v[80:81], v[170:171] op_sel_hi:[1,0]
	v_pk_mul_f32 v[78:79], v[78:79], v[170:171] op_sel_hi:[1,0]
	v_pk_mul_f32 v[76:77], v[76:77], v[170:171] op_sel_hi:[1,0]
	v_pk_mul_f32 v[70:71], v[70:71], v[170:171] op_sel_hi:[1,0]
	v_pk_mul_f32 v[68:69], v[68:69], v[170:171] op_sel_hi:[1,0]
	v_pk_mul_f32 v[62:63], v[62:63], v[170:171] op_sel_hi:[1,0]
	v_pk_mul_f32 v[60:61], v[60:61], v[170:171] op_sel_hi:[1,0]
	v_pk_mul_f32 v[58:59], v[58:59], v[170:171] op_sel_hi:[1,0]
	v_pk_mul_f32 v[56:57], v[56:57], v[170:171] op_sel_hi:[1,0]
	v_pk_mul_f32 v[50:51], v[50:51], v[170:171] op_sel_hi:[1,0]
	v_pk_mul_f32 v[48:49], v[48:49], v[170:171] op_sel_hi:[1,0]
	v_accvgpr_read_b32 v160, a82
	v_mfma_f32_16x16x32_bf16 v[112:115], a[56:59], v[156:159], v[112:115]
	.loc	1 459 82                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:459:82
	ds_read_b64_tr_b16 a[56:57], v130 offset:4416
	ds_read_b64_tr_b16 a[82:83], v130 offset:4096
	ds_read_b64_tr_b16 a[58:59], v129 offset:512
	.loc	1 463 40                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:463:40
	s_waitcnt lgkmcnt(14)
	v_mfma_f32_16x16x32_bf16 v[124:127], a[64:67], v[156:159], v[124:127]
	.loc	1 459 82                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:459:82
	ds_read_b64_tr_b16 a[64:65], v130 offset:4352
	.loc	1 463 40                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:463:40
	v_pk_mul_f32 v[18:19], v[18:19], v[170:171] op_sel_hi:[1,0]
	v_pk_mul_f32 v[16:17], v[16:17], v[170:171] op_sel_hi:[1,0]
	v_mfma_f32_16x16x32_bf16 v[120:123], a[52:55], v[156:159], v[120:123]
	.loc	1 459 82                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:459:82
	ds_read_b64_tr_b16 a[54:55], v130 offset:256
	.loc	1 442 12                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:442:12
	s_waitcnt vmcnt(0)
	v_readfirstlane_b32 s5, v131
	.loc	1 463 40                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:463:40
	v_pk_mul_f32 v[110:111], v[110:111], v[170:171] op_sel_hi:[1,0]
	v_mfma_f32_16x16x32_bf16 v[116:119], a[60:63], v[156:159], v[116:119]
	.loc	1 459 82                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:459:82
	ds_read_b64_tr_b16 a[62:63], v130 offset:320
	ds_read_b64_tr_b16 a[60:61], v129 offset:4672
	.loc	1 463 40                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:463:40
	v_pk_mul_f32 v[108:109], v[108:109], v[170:171] op_sel_hi:[1,0]
	v_mfma_f32_16x16x32_bf16 v[92:95], a[32:35], v[156:159], v[92:95]
	.loc	1 459 82                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:459:82
	ds_read_b64_tr_b16 a[32:33], v129 offset:576
	.loc	1 463 40                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:463:40
	v_pk_mul_f32 v[106:107], v[106:107], v[170:171] op_sel_hi:[1,0]
	v_pk_mul_f32 v[104:105], v[104:105], v[170:171] op_sel_hi:[1,0]
	v_mfma_f32_16x16x32_bf16 v[88:91], a[48:51], v[156:159], v[88:91]
	.loc	1 459 82                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:459:82
	ds_read_b64_tr_b16 a[48:49], v129 offset:4864
	.loc	1 463 40                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:463:40
	v_pk_mul_f32 v[102:103], v[102:103], v[170:171] op_sel_hi:[1,0]
	v_pk_mul_f32 v[100:101], v[100:101], v[170:171] op_sel_hi:[1,0]
	v_mfma_f32_16x16x32_bf16 v[84:87], a[28:31], v[156:159], v[84:87]
	.loc	1 459 82                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:459:82
	ds_read_b64_tr_b16 a[28:29], v129 offset:768
	ds_read_b64_tr_b16 a[30:31], v129 offset:4928
	ds_read_b64_tr_b16 a[34:35], v129 offset:4608
	.loc	1 463 40                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:463:40
	v_mfma_f32_16x16x32_bf16 v[80:83], a[40:43], v[156:159], v[80:83]
	.loc	1 459 82                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:459:82
	ds_read_b64_tr_b16 a[40:41], v130 offset:512
	ds_read_b64_tr_b16 a[42:43], v130 offset:4672
	.loc	1 463 40                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:463:40
	v_pk_mul_f32 v[98:99], v[98:99], v[170:171] op_sel_hi:[1,0]
	s_waitcnt lgkmcnt(14)
	v_mfma_f32_16x16x32_bf16 v[76:79], a[44:47], v[156:159], v[76:79]
	.loc	1 459 82                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:459:82
	ds_read_b64_tr_b16 a[46:47], v129 offset:832
	.loc	1 463 40                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:463:40
	v_pk_mul_f32 v[96:97], v[96:97], v[170:171] op_sel_hi:[1,0]
	v_pk_mul_f32 v[74:75], v[74:75], v[170:171] op_sel_hi:[1,0]
	v_mfma_f32_16x16x32_bf16 v[68:71], a[36:39], v[156:159], v[68:71]
	.loc	1 459 82                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:459:82
	ds_read_b64_tr_b16 a[36:37], v130 offset:576
	.loc	1 463 40                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:463:40
	v_pk_mul_f32 v[72:73], v[72:73], v[170:171] op_sel_hi:[1,0]
	v_pk_mul_f32 v[66:67], v[66:67], v[170:171] op_sel_hi:[1,0]
	v_mfma_f32_16x16x32_bf16 v[60:63], a[20:23], v[156:159], v[60:63]
	.loc	1 459 82                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:459:82
	ds_read_b64_tr_b16 a[20:21], v130 offset:4864
	ds_read_b64_tr_b16 a[38:39], v130 offset:4608
	ds_read_b64_tr_b16 a[22:23], v130 offset:768
	.loc	1 463 40                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:463:40
	v_mfma_f32_16x16x32_bf16 v[56:59], a[24:27], v[156:159], v[56:59]
	.loc	1 459 82                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:459:82
	ds_read_b64_tr_b16 a[24:25], v130 offset:4928
	.loc	1 463 40                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:463:40
	v_pk_mul_f32 v[64:65], v[64:65], v[170:171] op_sel_hi:[1,0]
	v_pk_mul_f32 v[54:55], v[54:55], v[170:171] op_sel_hi:[1,0]
	v_mfma_f32_16x16x32_bf16 v[48:51], a[16:19], v[156:159], v[48:51]
	.loc	1 459 82                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:459:82
	ds_read_b64_tr_b16 a[18:19], v130 offset:832
.Ltmp13:
	.loc	2 263 15                        ; standard.py:263:15 @[ standard.py:293:36 @[ bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:453:45 ] ]
	v_pk_add_f32 v[130:131], v[172:173], v[166:167]
.Ltmp14:
	.loc	1 463 40                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:463:40
	v_pk_mul_f32 v[52:53], v[52:53], v[170:171] op_sel_hi:[1,0]
	v_mfma_f32_16x16x32_bf16 v[16:19], v[132:135], v[156:159], v[16:19]
.Ltmp15:
	.loc	2 263 15                        ; standard.py:263:15 @[ standard.py:293:36 @[ bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:453:45 ] ]
	v_add_f32_e64 v132, v150, v152
	v_add_f32_e64 v133, v151, v153
.Ltmp16:
	.loc	1 463 40                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:463:40
	v_pk_mul_f32 v[46:47], v[46:47], v[170:171] op_sel_hi:[1,0]
.Ltmp17:
	.loc	2 263 15                        ; standard.py:263:15 @[ standard.py:293:36 @[ bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:453:45 ] ]
	v_pk_add_f32 v[130:131], v[130:131], v[132:133]
.Ltmp18:
	.loc	1 463 40                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:463:40
	v_pk_mul_f32 v[44:45], v[44:45], v[170:171] op_sel_hi:[1,0]
.Ltmp19:
	.loc	2 263 15                        ; standard.py:263:15 @[ standard.py:293:36 @[ bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:453:45 ] ]
	v_pk_add_f32 v[130:131], v[130:131], v[130:131] op_sel:[0,1] op_sel_hi:[1,0]
.Ltmp20:
	.loc	1 463 40                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:463:40
	v_pk_mul_f32 v[42:43], v[42:43], v[170:171] op_sel_hi:[1,0]
.Ltmp21:
	.loc	2 293 36                        ; standard.py:293:36 @[ bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:453:45 ]
	v_mov_b32_e32 v131, v130
	s_nop 1
	v_permlane32_swap_b32_e32 v130, v131
.Ltmp22:
	.loc	1 463 40                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:463:40
	v_pk_mul_f32 v[40:41], v[40:41], v[170:171] op_sel_hi:[1,0]
	v_pk_mul_f32 v[38:39], v[38:39], v[170:171] op_sel_hi:[1,0]
	v_pk_mul_f32 v[36:37], v[36:37], v[170:171] op_sel_hi:[1,0]
	v_pk_mul_f32 v[34:35], v[34:35], v[170:171] op_sel_hi:[1,0]
	v_pk_mul_f32 v[32:33], v[32:33], v[170:171] op_sel_hi:[1,0]
	v_pk_mul_f32 v[30:31], v[30:31], v[170:171] op_sel_hi:[1,0]
	v_pk_mul_f32 v[28:29], v[28:29], v[170:171] op_sel_hi:[1,0]
	v_pk_mul_f32 v[26:27], v[26:27], v[170:171] op_sel_hi:[1,0]
	v_pk_mul_f32 v[24:25], v[24:25], v[170:171] op_sel_hi:[1,0]
	v_pk_mul_f32 v[22:23], v[22:23], v[170:171] op_sel_hi:[1,0]
	v_pk_mul_f32 v[20:21], v[20:21], v[170:171] op_sel_hi:[1,0]
	v_pk_mul_f32 v[14:15], v[14:15], v[170:171] op_sel_hi:[1,0]
	v_pk_mul_f32 v[12:13], v[12:13], v[170:171] op_sel_hi:[1,0]
	v_pk_mul_f32 v[10:11], v[10:11], v[170:171] op_sel_hi:[1,0]
	v_pk_mul_f32 v[8:9], v[8:9], v[170:171] op_sel_hi:[1,0]
	v_pk_mul_f32 v[6:7], v[6:7], v[170:171] op_sel_hi:[1,0]
	v_pk_mul_f32 v[4:5], v[4:5], v[170:171] op_sel_hi:[1,0]
	v_pk_mul_f32 v[2:3], v[2:3], v[170:171] op_sel_hi:[1,0]
	v_pk_mul_f32 v[0:1], v[0:1], v[170:171] op_sel_hi:[1,0]
.Ltmp23:
	.loc	2 263 15                        ; standard.py:263:15 @[ standard.py:293:36 @[ bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:453:45 ] ]
	v_add_f32_e32 v130, v130, v131
.Ltmp24:
	.loc	1 463 40                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:463:40
	v_mfma_f32_16x16x32_bf16 v[108:111], a[72:75], v[156:159], v[108:111]
.Ltmp25:
	.loc	2 293 36                        ; standard.py:293:36 @[ bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:453:45 ]
	v_mov_b32_e32 v131, v130
	s_nop 1
	v_permlane16_swap_b32_e32 v130, v131
.Ltmp26:
	.loc	1 463 40                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:463:40
	v_mfma_f32_16x16x32_bf16 v[104:107], a[76:79], v[156:159], v[104:107]
	.loc	1 453 24                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:453:24
	v_mul_f32_e32 v129, v164, v170
.Ltmp27:
	.loc	2 263 15                        ; standard.py:263:15 @[ standard.py:293:36 @[ bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:453:45 ] ]
	v_add_f32_e32 v130, v130, v131
	v_accvgpr_read_b32 v169, a106
.Ltmp28:
	.loc	1 463 40                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:463:40
	v_mfma_f32_16x16x32_bf16 v[100:103], a[68:71], v[156:159], v[100:103]
	v_mov_b32_e32 v182, v128
	v_accvgpr_read_b32 v173, a108
	v_accvgpr_read_b32 v172, a107
	s_waitcnt lgkmcnt(14)
	v_mfma_f32_16x16x32_bf16 v[96:99], a[80:83], v[156:159], v[96:99]
	v_accvgpr_read_b32 v167, a105
	.loc	1 453 35                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:453:35
	v_add_f32_e32 v164, v130, v129
	.loc	1 463 40                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:463:40
	v_mfma_f32_16x16x32_bf16 v[72:75], a[54:57], v[156:159], v[72:75]
	v_mfma_f32_16x16x32_bf16 v[64:67], a[62:65], v[156:159], v[64:67]
	v_mfma_f32_16x16x32_bf16 v[52:55], a[12:15], v[156:159], v[52:55]
	v_mfma_f32_16x16x32_bf16 v[44:47], a[58:61], v[156:159], v[44:47]
	s_waitcnt lgkmcnt(7)
	v_mfma_f32_16x16x32_bf16 v[40:43], a[40:43], v[156:159], v[40:43]
	v_mfma_f32_16x16x32_bf16 v[36:39], a[32:35], v[156:159], v[36:39]
	s_waitcnt lgkmcnt(3)
	v_mfma_f32_16x16x32_bf16 v[32:35], a[36:39], v[156:159], v[32:35]
	v_mfma_f32_16x16x32_bf16 v[28:31], a[4:7], v[156:159], v[28:31]
	v_mfma_f32_16x16x32_bf16 v[24:27], a[8:11], v[156:159], v[24:27]
	v_mfma_f32_16x16x32_bf16 v[20:23], v[184:187], v[156:159], v[20:23]
	v_accvgpr_read_b32 v187, a109
	v_mfma_f32_16x16x32_bf16 v[12:15], a[28:31], v[156:159], v[12:15]
	s_waitcnt lgkmcnt(1)
	v_mfma_f32_16x16x32_bf16 v[8:11], a[22:25], v[156:159], v[8:11]
	v_mfma_f32_16x16x32_bf16 v[4:7], a[46:49], v[156:159], v[4:7]
	s_waitcnt lgkmcnt(0)
	v_mfma_f32_16x16x32_bf16 v[0:3], a[18:21], v[156:159], v[0:3]
	.loc	1 411 19                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:411:19
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 19 is_stmt 0                ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:0:19
	v_accvgpr_read_b32 v152, a100
	v_accvgpr_read_b32 v165, a101
	v_accvgpr_read_b32 v175, a102
	v_accvgpr_read_b32 v176, a103
	v_accvgpr_read_b32 v177, a104
.LBB0_7:                                ; %Flow644
	.loc	1 473 30 is_stmt 1              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:473:30
	s_lshl_b32 s15, s5, 6
	.loc	1 473 51 is_stmt 0              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:473:51
	s_ashr_i32 s5, s55, 31
	s_load_dwordx2 s[2:3], s[0:1], 0x58
	s_load_dword s4, s[0:1], 0x60
	.loc	1 472 23 is_stmt 1              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:472:23
	s_or_b32 s1, s55, s19
	.loc	1 481 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:481:57
	s_lshr_b32 s16, s5, 26
	.loc	1 473 51                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:473:51
	s_add_i32 s5, s1, s16
	s_andn2_b32 s5, s5, 63
	s_sub_i32 s5, s1, s5
	.loc	1 472 23                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:472:23
	s_or_b32 s6, s55, s42
	.loc	1 473 42                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:473:42
	s_add_i32 s5, s15, s5
	.loc	1 473 51 is_stmt 0              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:473:51
	s_add_i32 s17, s6, s16
	.loc	1 475 33 is_stmt 1              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:475:33
	s_mul_i32 s5, s5, s34
	.loc	1 472 23                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:472:23
	s_or_b32 s7, s55, s43
	.loc	1 473 51                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:473:51
	s_andn2_b32 s17, s17, 63
	.loc	1 475 50                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:475:50
	v_add_u32_e32 v129, s5, v139
	.loc	1 473 51                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:473:51
	s_sub_i32 s17, s6, s17
	s_add_i32 s20, s7, s16
	.loc	1 476 88                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:476:88
	ds_bpermute_b32 v129, v168, v129
	.loc	1 473 51                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:473:51
	s_andn2_b32 s20, s20, 63
	.loc	1 473 42 is_stmt 0              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:473:42
	s_add_i32 s17, s15, s17
	.loc	1 476 88 is_stmt 1              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:476:88
	v_mov_b32_e32 v150, s33
	.loc	1 470 32                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:470:32
	s_xor_b32 s0, s49, 1
	.loc	1 473 51                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:473:51
	s_sub_i32 s20, s7, s20
	.loc	1 475 33                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:475:33
	s_mul_i32 s17, s17, s34
	.loc	1 476 88                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:476:88
	v_cmp_lt_i32_e32 vcc, s1, v150
	.loc	1 473 42                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:473:42
	s_add_i32 s20, s15, s20
	.loc	1 475 50                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:475:50
	v_add_u32_e32 v132, s17, v139
	.loc	1 476 64                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:476:64
	s_lshl_b32 s5, s0, 15
	s_add_i32 s17, 0, 0x107e0
	.loc	1 476 88 is_stmt 0              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:476:88
	v_lshrrev_b64 v[130:131], v136, vcc
	.loc	1 475 33 is_stmt 1              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:475:33
	s_mul_i32 s20, s20, s34
	.loc	1 476 64                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:476:64
	s_add_i32 s5, s17, s5
	.loc	1 476 88 is_stmt 0              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:476:88
	v_and_b32_e32 v130, 1, v130
	.loc	1 475 50 is_stmt 1              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:475:50
	v_add_u32_e32 v133, s20, v139
	.loc	1 476 88                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:476:88
	s_add_i32 s20, s5, s41
	s_waitcnt lgkmcnt(0)
	v_lshlrev_b32_e32 v129, 1, v129
	v_bfrev_b32_e32 v151, 1
	v_cmp_eq_u32_e32 vcc, 1, v130
	s_mov_b32 m0, s20
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e32 v129, v151, v129, vcc
	s_barrier
	buffer_load_dwordx4 v129, s[28:31], 0 offen lds
	ds_bpermute_b32 v129, v167, v132
	v_cmp_lt_i32_e32 vcc, s6, v150
	s_add_i32 m0, s20, 0x1000
	.loc	1 472 23                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:472:23
	s_or_b32 s10, s55, s44
	.loc	1 476 88                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:476:88
	v_lshrrev_b64 v[130:131], v138, vcc
	v_and_b32_e32 v130, 1, v130
	s_waitcnt lgkmcnt(0)
	v_lshlrev_b32_e32 v129, 1, v129
	v_cmp_eq_u32_e32 vcc, 1, v130
	.loc	1 473 51                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:473:51
	s_add_i32 s21, s10, s16
	s_andn2_b32 s21, s21, 63
	.loc	1 476 88                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:476:88
	v_cndmask_b32_e32 v129, v151, v129, vcc
	buffer_load_dwordx4 v129, s[28:31], 0 offen lds
	ds_bpermute_b32 v129, v169, v133
	v_cmp_lt_i32_e32 vcc, s7, v150
	.loc	1 473 51                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:473:51
	s_sub_i32 s21, s10, s21
	.loc	1 473 42 is_stmt 0              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:473:42
	s_add_i32 s21, s15, s21
	.loc	1 476 88 is_stmt 1              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:476:88
	v_lshrrev_b64 v[130:131], v140, vcc
	v_and_b32_e32 v130, 1, v130
	.loc	1 475 33                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:475:33
	s_mul_i32 s21, s21, s34
	.loc	1 476 88                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:476:88
	s_waitcnt lgkmcnt(0)
	v_lshlrev_b32_e32 v129, 1, v129
	v_cmp_eq_u32_e32 vcc, 1, v130
	.loc	1 475 50                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:475:50
	v_add_u32_e32 v134, s21, v139
	.loc	1 476 88                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:476:88
	s_add_i32 m0, s20, 0x2000
	v_cndmask_b32_e32 v129, v151, v129, vcc
	.loc	1 472 23                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:472:23
	s_or_b32 s11, s55, s45
	.loc	1 476 88                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:476:88
	buffer_load_dwordx4 v129, s[28:31], 0 offen lds
	ds_bpermute_b32 v129, v172, v134
	.loc	1 473 51                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:473:51
	s_add_i32 s22, s11, s16
	s_andn2_b32 s22, s22, 63
	.loc	1 476 88                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:476:88
	v_cmp_lt_i32_e32 vcc, s10, v150
	.loc	1 473 51                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:473:51
	s_sub_i32 s22, s11, s22
	.loc	1 473 42 is_stmt 0              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:473:42
	s_add_i32 s22, s15, s22
	.loc	1 476 88 is_stmt 1              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:476:88
	v_lshrrev_b64 v[130:131], v142, vcc
	v_and_b32_e32 v130, 1, v130
	.loc	1 475 33                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:475:33
	s_mul_i32 s22, s22, s34
	.loc	1 476 88                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:476:88
	s_waitcnt lgkmcnt(0)
	v_lshlrev_b32_e32 v129, 1, v129
	v_cmp_eq_u32_e32 vcc, 1, v130
	.loc	1 475 50                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:475:50
	v_add_u32_e32 v135, s22, v139
	.loc	1 476 88                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:476:88
	s_add_i32 m0, s20, 0x3000
	v_cndmask_b32_e32 v129, v151, v129, vcc
	.loc	1 472 23                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:472:23
	s_or_b32 s12, s55, s46
	.loc	1 476 88                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:476:88
	buffer_load_dwordx4 v129, s[28:31], 0 offen lds
	ds_bpermute_b32 v129, v168, v135
	.loc	1 473 51                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:473:51
	s_add_i32 s23, s12, s16
	s_andn2_b32 s23, s23, 63
	.loc	1 476 88                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:476:88
	v_cmp_lt_i32_e32 vcc, s11, v150
	.loc	1 473 51                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:473:51
	s_sub_i32 s23, s12, s23
	.loc	1 473 42 is_stmt 0              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:473:42
	s_add_i32 s23, s15, s23
	.loc	1 476 88 is_stmt 1              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:476:88
	v_lshrrev_b64 v[130:131], v136, vcc
	v_and_b32_e32 v130, 1, v130
	.loc	1 475 33                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:475:33
	s_mul_i32 s23, s23, s34
	.loc	1 476 88                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:476:88
	s_waitcnt lgkmcnt(0)
	v_lshlrev_b32_e32 v129, 1, v129
	v_cmp_eq_u32_e32 vcc, 1, v130
	.loc	1 475 50                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:475:50
	v_add_u32_e32 v143, s23, v139
	.loc	1 476 88                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:476:88
	s_add_i32 m0, s20, 0x4000
	v_cndmask_b32_e32 v129, v151, v129, vcc
	.loc	1 472 23                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:472:23
	s_or_b32 s13, s55, s47
	.loc	1 476 88                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:476:88
	buffer_load_dwordx4 v129, s[28:31], 0 offen lds
	ds_bpermute_b32 v129, v173, v143
	.loc	1 473 51                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:473:51
	s_add_i32 s36, s13, s16
	s_andn2_b32 s36, s36, 63
	.loc	1 476 88                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:476:88
	v_cmp_lt_i32_e32 vcc, s12, v150
	.loc	1 473 51                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:473:51
	s_sub_i32 s36, s13, s36
	.loc	1 473 42 is_stmt 0              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:473:42
	s_add_i32 s36, s15, s36
	.loc	1 476 88 is_stmt 1              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:476:88
	v_lshrrev_b64 v[130:131], v144, vcc
	v_and_b32_e32 v130, 1, v130
	.loc	1 475 33                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:475:33
	s_mul_i32 s36, s36, s34
	.loc	1 476 88                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:476:88
	s_waitcnt lgkmcnt(0)
	v_lshlrev_b32_e32 v129, 1, v129
	v_cmp_eq_u32_e32 vcc, 1, v130
	.loc	1 475 50                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:475:50
	v_add_u32_e32 v145, s36, v139
	.loc	1 476 88                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:476:88
	s_add_i32 m0, s20, 0x5000
	v_cndmask_b32_e32 v129, v151, v129, vcc
	.loc	1 472 23                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:472:23
	s_or_b32 s14, s55, s48
	.loc	1 476 88                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:476:88
	buffer_load_dwordx4 v129, s[28:31], 0 offen lds
	ds_bpermute_b32 v129, v187, v145
	.loc	1 473 51                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:473:51
	s_add_i32 s37, s14, s16
	s_andn2_b32 s37, s37, 63
	.loc	1 476 88                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:476:88
	v_cmp_lt_i32_e32 vcc, s13, v150
	.loc	1 473 51                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:473:51
	s_sub_i32 s37, s14, s37
	.loc	1 473 42 is_stmt 0              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:473:42
	s_add_i32 s37, s15, s37
	.loc	1 476 88 is_stmt 1              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:476:88
	v_lshrrev_b64 v[130:131], v146, vcc
	v_and_b32_e32 v130, 1, v130
	.loc	1 475 33                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:475:33
	s_mul_i32 s37, s37, s34
	.loc	1 476 88                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:476:88
	s_waitcnt lgkmcnt(0)
	v_lshlrev_b32_e32 v129, 1, v129
	v_cmp_eq_u32_e32 vcc, 1, v130
	.loc	1 475 50                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:475:50
	v_add_u32_e32 v139, s37, v139
	.loc	1 476 88                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:476:88
	s_add_i32 m0, s20, 0x6000
	v_cndmask_b32_e32 v129, v151, v129, vcc
	buffer_load_dwordx4 v129, s[28:31], 0 offen lds
	ds_bpermute_b32 v129, v174, v139
	v_cmp_lt_i32_e32 vcc, s14, v150
	s_add_i32 m0, s20, 0x7000
	.loc	1 484 65                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:484:65
	s_mulk_i32 s0, 0x1080
	.loc	1 476 88                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:476:88
	v_lshrrev_b64 v[130:131], v148, vcc
	v_and_b32_e32 v130, 1, v130
	s_waitcnt lgkmcnt(0)
	v_lshlrev_b32_e32 v129, 1, v129
	v_cmp_eq_u32_e32 vcc, 1, v130
	.loc	1 484 65                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:484:65
	s_add_i32 s1, 0, 0x228c0
	s_add_i32 s6, s1, s0
	.loc	1 476 88                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:476:88
	v_cndmask_b32_e32 v129, v151, v129, vcc
	buffer_load_dwordx4 v129, s[28:31], 0 offen lds
	.loc	1 480 26                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:480:26
	v_or_b32_e32 v129, s55, v152
	.loc	1 481 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:481:57
	v_add_u32_e32 v130, s16, v129
	v_and_b32_e32 v130, 0x7fffffc0, v130
	v_sub_u32_e32 v130, v129, v130
	.loc	1 481 45 is_stmt 0              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:481:45
	v_add_u32_e32 v130, s15, v130
	.loc	1 483 37 is_stmt 1              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:483:37
	v_mul_lo_u32 v130, v130, s35
	.loc	1 484 89                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:484:89
	v_add_lshl_u32 v130, v130, v141, 1
	.loc	1 484 126 is_stmt 0             ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:484:126
	v_cmp_gt_i32_e32 vcc, s33, v129
	.loc	1 484 89                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:484:89
	s_add_i32 m0, s6, s40
	s_mov_b32 s10, s30
	v_cndmask_b32_e32 v129, v151, v130, vcc
	s_mov_b32 s11, s31
	.loc	1 490 24 is_stmt 1              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:490:24
	s_lshl_b32 s0, s49, 15
	.loc	1 484 89                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:484:89
	buffer_load_dwordx4 v129, s[8:11], 0 offen lds
	.loc	1 490 24                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:490:24
	s_add_i32 s8, s17, s0
	.loc	1 490 38 is_stmt 0              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:490:38
	v_add_u32_e32 v129, s8, v163
	.loc	1 489 39 is_stmt 1              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:489:39
	s_waitcnt vmcnt(10) lgkmcnt(0)
	s_barrier
	.loc	1 490 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:490:38
	s_waitcnt vmcnt(0)
	ds_read_b128 v[130:133], v129
	ds_read_b128 v[138:141], v129 offset:256
	v_add_u32_e32 v134, s8, v162
	.loc	1 492 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:492:57
	s_waitcnt lgkmcnt(1)
	v_mfma_f32_16x16x32_bf16 v[130:133], v[130:133], a[0:3], 0
	.loc	1 490 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:490:38
	ds_read_b128 v[142:145], v134
	ds_read_b128 v[150:153], v134 offset:256
	v_add_u32_e32 v135, s8, v137
	v_add_u32_e32 v136, s8, v161
	.loc	1 492 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:492:57
	s_waitcnt lgkmcnt(1)
	v_mfma_f32_16x16x32_bf16 v[130:133], v[142:145], v[252:255], v[130:133]
	.loc	1 490 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:490:38
	ds_read_b128 v[142:145], v135
	ds_read_b128 v[156:159], v135 offset:256
	.loc	1 495 26                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:495:26
	s_mul_i32 s0, s49, 0x1080
	s_add_i32 s1, s1, s0
	.loc	1 492 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:492:57
	s_waitcnt lgkmcnt(1)
	v_mfma_f32_16x16x32_bf16 v[130:133], v[142:145], v[248:251], v[130:133]
	.loc	1 490 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:490:38
	ds_read_b128 v[142:145], v136
	ds_read_b128 v[166:169], v136 offset:256
	.loc	1 499 33                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:499:33
	s_lshl_b32 s0, s50, 5
	v_accvgpr_read_b32 v146, a99
	.loc	1 492 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:492:57
	s_waitcnt lgkmcnt(1)
	v_mfma_f32_16x16x32_bf16 v[130:133], v[142:145], v[244:247], v[130:133]
	s_mov_b32 s7, 0xc2fc0000
	.loc	1 502 22                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:502:22
	v_not_b32_e32 v148, 63
	.loc	1 554 25                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:554:25
	s_mul_i32 s2, s2, s26
	.loc	1 492 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:492:57
	v_mfma_f32_16x16x32_bf16 v[130:133], v[138:141], v[240:243], v[130:133]
	.loc	1 490 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:490:38
	ds_read_b128 v[138:141], v129 offset:512
	ds_read_b128 v[142:145], v129 offset:768
	.loc	1 560 30                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:560:30
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s26, 0x7ffffffe
	.loc	1 492 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:492:57
	v_mfma_f32_16x16x32_bf16 v[130:133], v[150:153], v[236:239], v[130:133]
	v_mfma_f32_16x16x32_bf16 v[130:133], v[156:159], v[232:235], v[130:133]
	s_waitcnt lgkmcnt(2)
	v_mfma_f32_16x16x32_bf16 v[130:133], v[166:169], v[228:231], v[130:133]
	s_waitcnt lgkmcnt(1)
	v_mfma_f32_16x16x32_bf16 v[130:133], v[138:141], v[224:227], v[130:133]
	.loc	1 490 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:490:38
	ds_read_b128 v[138:141], v134 offset:512
	ds_read_b128 v[150:153], v134 offset:768
	.loc	1 492 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:492:57
	s_waitcnt lgkmcnt(1)
	v_mfma_f32_16x16x32_bf16 v[130:133], v[138:141], v[220:223], v[130:133]
	.loc	1 490 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:490:38
	ds_read_b128 v[138:141], v135 offset:512
	ds_read_b128 v[156:159], v135 offset:768
	.loc	1 492 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:492:57
	s_waitcnt lgkmcnt(1)
	v_mfma_f32_16x16x32_bf16 v[130:133], v[138:141], v[216:219], v[130:133]
	.loc	1 490 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:490:38
	ds_read_b128 v[138:141], v136 offset:512
	ds_read_b128 v[166:169], v136 offset:768
	.loc	1 492 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:492:57
	s_waitcnt lgkmcnt(1)
	v_mfma_f32_16x16x32_bf16 v[130:133], v[138:141], v[212:215], v[130:133]
	v_mfma_f32_16x16x32_bf16 v[130:133], v[142:145], v[208:211], v[130:133]
	.loc	1 490 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:490:38
	ds_read_b128 v[138:141], v129 offset:16384
	ds_read_b128 v[142:145], v129 offset:16640
	.loc	1 492 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:492:57
	v_mfma_f32_16x16x32_bf16 v[130:133], v[150:153], v[204:207], v[130:133]
	v_mfma_f32_16x16x32_bf16 v[130:133], v[156:159], v[200:203], v[130:133]
	.loc	1 490 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:490:38
	ds_read_b128 v[150:153], v134 offset:16384
	ds_read_b128 v[156:159], v134 offset:16640
	.loc	1 492 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:492:57
	s_waitcnt lgkmcnt(3)
	v_mfma_f32_16x16x32_bf16 v[138:141], v[138:141], a[0:3], 0
	v_mfma_f32_16x16x32_bf16 v[130:133], v[166:169], v[192:195], v[130:133]
	s_waitcnt lgkmcnt(1)
	v_mfma_f32_16x16x32_bf16 v[138:141], v[150:153], v[252:255], v[138:141]
	.loc	1 490 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:490:38
	ds_read_b128 v[150:153], v135 offset:16384
	ds_read_b128 v[166:169], v135 offset:16640
	.loc	1 492 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:492:57
	s_waitcnt lgkmcnt(1)
	v_mfma_f32_16x16x32_bf16 v[138:141], v[150:153], v[248:251], v[138:141]
	.loc	1 490 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:490:38
	ds_read_b128 v[150:153], v136 offset:16384
	ds_read_b128 v[170:173], v136 offset:16640
	.loc	1 492 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:492:57
	s_waitcnt lgkmcnt(1)
	v_mfma_f32_16x16x32_bf16 v[138:141], v[150:153], v[244:247], v[138:141]
	v_mfma_f32_16x16x32_bf16 v[138:141], v[142:145], v[240:243], v[138:141]
	.loc	1 490 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:490:38
	ds_read_b128 v[142:145], v129 offset:16896
	ds_read_b128 v[150:153], v129 offset:17152
	.loc	1 495 40                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:495:40
	v_or3_b32 v129, v177, v165, v175
	.loc	1 500 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:500:57
	v_mov_b32_e32 v165, 0xff800000
	.loc	1 492 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:492:57
	v_mfma_f32_16x16x32_bf16 v[138:141], v[156:159], v[236:239], v[138:141]
	v_mfma_f32_16x16x32_bf16 v[138:141], v[166:169], v[232:235], v[138:141]
	s_waitcnt lgkmcnt(2)
	v_mfma_f32_16x16x32_bf16 v[138:141], v[170:173], v[228:231], v[138:141]
	s_waitcnt lgkmcnt(1)
	v_mfma_f32_16x16x32_bf16 v[138:141], v[142:145], v[224:227], v[138:141]
	.loc	1 490 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:490:38
	ds_read_b128 v[142:145], v134 offset:16896
	ds_read_b128 v[156:159], v134 offset:17152
	.loc	1 495 40                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:495:40
	v_add_u32_e32 v134, v129, v176
	v_add_u32_e32 v129, s1, v134
	.loc	1 492 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:492:57
	s_waitcnt lgkmcnt(1)
	v_mfma_f32_16x16x32_bf16 v[138:141], v[142:145], v[220:223], v[138:141]
	.loc	1 490 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:490:38
	ds_read_b128 v[142:145], v135 offset:16896
	ds_read_b128 v[166:169], v135 offset:17152
	v_accvgpr_write_b32 a27, v134
	.loc	1 492 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:492:57
	s_waitcnt lgkmcnt(1)
	v_mfma_f32_16x16x32_bf16 v[138:141], v[142:145], v[216:219], v[138:141]
	.loc	1 490 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:490:38
	ds_read_b128 v[142:145], v136 offset:16896
	ds_read_b128 v[170:173], v136 offset:17152
	.loc	1 494 39                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:494:39
	s_waitcnt vmcnt(9) lgkmcnt(0)
	.loc	1 492 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:492:57
	v_mfma_f32_16x16x32_bf16 v[138:141], v[142:145], v[212:215], v[138:141]
	.loc	1 494 39                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:494:39
	s_barrier
	.loc	1 495 40                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:495:40
	ds_read_b128 v[142:145], v129
	.loc	1 492 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:492:57
	v_mfma_f32_16x16x32_bf16 v[138:141], v[150:153], v[208:211], v[138:141]
	.loc	1 495 40                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:495:40
	ds_read_b128 v[150:153], v129 offset:64
	.loc	1 492 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:492:57
	v_mfma_f32_16x16x32_bf16 v[138:141], v[156:159], v[204:207], v[138:141]
	.loc	1 496 54                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:496:54
	s_waitcnt lgkmcnt(1)
	v_mfma_f32_16x16x32_bf16 v[130:133], v[142:145], v[196:199], v[130:133]
	.loc	1 495 40                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:495:40
	ds_read_b128 v[142:145], v129 offset:512
	.loc	1 492 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:492:57
	v_mfma_f32_16x16x32_bf16 v[138:141], v[166:169], v[200:203], v[138:141]
	v_accvgpr_read_b32 v166, a94
	.loc	1 511 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:511:38
	v_add_u32_e32 v168, s8, v160
	v_add_u32_e32 v169, s8, v149
	.loc	1 496 54                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:496:54
	s_waitcnt lgkmcnt(1)
	v_mfma_f32_16x16x32_bf16 v[130:133], v[150:153], v[188:191], v[130:133]
	.loc	1 495 40                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:495:40
	ds_read_b128 v[150:153], v129 offset:576
	.loc	1 511 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:511:38
	ds_read_b64_tr_b16 a[12:13], v169 offset:4160
	ds_read_b64_tr_b16 v[174:175], v169 offset:4352
	ds_read_b64_tr_b16 a[16:17], v169 offset:4096
	ds_read_b64_tr_b16 a[20:21], v169 offset:4416
	.loc	1 492 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:492:57
	v_mfma_f32_16x16x32_bf16 v[138:141], v[170:173], v[192:195], v[138:141]
	.loc	1 511 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:511:38
	v_add_u32_e32 v171, s8, v154
	v_add_u32_e32 v170, s8, v155
	.loc	1 497 10                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:497:10
	v_mul_f32_e32 v129, s39, v130
	.loc	1 496 54                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:496:54
	s_waitcnt lgkmcnt(5)
	v_mfma_f32_16x16x32_bf16 v[138:141], v[142:145], v[196:199], v[138:141]
	.loc	1 497 10                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:497:10
	v_mul_f32_e32 v130, s39, v131
	v_mul_f32_e32 v131, s39, v132
	v_mul_f32_e32 v132, s39, v133
	.loc	1 496 54                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:496:54
	s_waitcnt lgkmcnt(4)
	v_mfma_f32_16x16x32_bf16 v[138:141], v[150:153], v[188:191], v[138:141]
	v_accvgpr_read_b32 v142, a96
	v_accvgpr_read_b32 v143, a92
	v_accvgpr_read_b32 v144, a97
	v_accvgpr_read_b32 v145, a98
	.loc	1 511 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:511:38
	ds_read_b64_tr_b16 v[180:181], v170 offset:4160
	ds_read_b64_tr_b16 v[184:185], v170 offset:4352
	ds_read_b64_tr_b16 a[6:7], v170 offset:4096
	ds_read_b64_tr_b16 v[178:179], v170
	ds_read_b64_tr_b16 a[4:5], v170 offset:64
	ds_read_b64_tr_b16 a[8:9], v170 offset:256
	ds_read_b64_tr_b16 v[182:183], v170 offset:320
	.loc	1 497 10                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:497:10
	v_mul_f32_e32 v133, s39, v138
	.loc	1 499 43                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:499:43
	v_or_b32_e32 v138, s0, v147
	.loc	1 497 10                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:497:10
	v_mul_f32_e32 v134, s39, v139
	v_mul_f32_e32 v136, s39, v141
	.loc	1 499 43                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:499:43
	v_or_b32_e32 v139, s0, v166
	v_accvgpr_read_b32 v141, a95
	.loc	1 500 39                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:500:39
	v_cmp_gt_u32_e32 vcc, s33, v138
	.loc	1 497 10                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:497:10
	v_mul_f32_e32 v135, s39, v140
	.loc	1 499 43                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:499:43
	v_or_b32_e32 v140, s0, v141
	.loc	1 500 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:500:57
	v_cndmask_b32_e32 v129, v165, v129, vcc
	.loc	1 500 39 is_stmt 0              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:500:39
	v_cmp_gt_u32_e32 vcc, s33, v139
	.loc	1 499 43 is_stmt 1              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:499:43
	v_or_b32_e32 v141, s0, v142
	v_or_b32_e32 v142, s0, v143
	.loc	1 500 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:500:57
	v_cndmask_b32_e32 v130, v165, v130, vcc
	.loc	1 500 39 is_stmt 0              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:500:39
	v_cmp_gt_u32_e32 vcc, s33, v140
	.loc	1 499 43 is_stmt 1              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:499:43
	v_or_b32_e32 v143, s0, v144
	v_or_b32_e32 v144, s0, v145
	.loc	1 500 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:500:57
	v_cndmask_b32_e32 v131, v165, v131, vcc
	.loc	1 500 39 is_stmt 0              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:500:39
	v_cmp_gt_u32_e32 vcc, s33, v141
	.loc	1 499 43 is_stmt 1              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:499:43
	v_or_b32_e32 v145, s0, v146
	.loc	1 502 22                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:502:22
	v_mov_b32_e32 v146, 0x42800000
	.loc	1 500 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:500:57
	v_cndmask_b32_e32 v132, v165, v132, vcc
	.loc	1 500 39 is_stmt 0              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:500:39
	v_cmp_gt_u32_e32 vcc, s33, v142
.Ltmp29:
	.loc	2 170 27 is_stmt 1              ; standard.py:170:27 @[ standard.py:191:40 @[ bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:501:36 ] ]
	v_max_f32_e32 v139, v131, v132
.Ltmp30:
	.loc	1 511 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:511:38
	ds_read_b64_tr_b16 a[10:11], v169
	ds_read_b64_tr_b16 a[14:15], v169 offset:64
	ds_read_b64_tr_b16 a[18:19], v169 offset:256
	ds_read_b64_tr_b16 v[172:173], v169 offset:320
	.loc	1 500 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:500:57
	v_cndmask_b32_e32 v133, v165, v133, vcc
	.loc	1 500 39 is_stmt 0              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:500:39
	v_cmp_gt_u32_e32 vcc, s33, v143
	.loc	1 500 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:500:57
	s_nop 1
	v_cndmask_b32_e32 v134, v165, v134, vcc
	.loc	1 500 39                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:500:39
	v_cmp_gt_u32_e32 vcc, s33, v144
	.loc	1 500 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:500:57
	s_nop 1
	v_cndmask_b32_e32 v135, v165, v135, vcc
	.loc	1 500 39                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:500:39
	v_cmp_gt_u32_e32 vcc, s33, v145
	.loc	1 500 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:500:57
	s_nop 1
	v_cndmask_b32_e32 v138, v165, v136, vcc
.Ltmp31:
	.loc	2 170 27 is_stmt 1              ; standard.py:170:27 @[ standard.py:191:40 @[ bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:501:36 ] ]
	v_max_f32_e32 v140, v135, v138
	v_max_f32_e32 v136, v129, v130
	v_max3_f32 v140, v133, v134, v140
	v_max3_f32 v136, v136, v139, v140
.Ltmp32:
	.loc	2 191 40                        ; standard.py:191:40 @[ bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:501:36 ]
	v_mov_b32_e32 v139, v136
	s_nop 1
	v_permlane32_swap_b32_e32 v136, v139
.Ltmp33:
	.loc	2 170 27                        ; standard.py:170:27 @[ standard.py:191:40 @[ bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:501:36 ] ]
	v_max_f32_e32 v139, v139, v139
	v_max_f32_e32 v136, v136, v136
	v_max_f32_e32 v136, v136, v139
.Ltmp34:
	.loc	2 191 40                        ; standard.py:191:40 @[ bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:501:36 ]
	v_mov_b32_e32 v139, v136
	s_nop 1
	v_permlane16_swap_b32_e32 v136, v139
.Ltmp35:
	.loc	1 501 40                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:501:40
	v_max3_f32 v167, v136, v139, v128
	.loc	1 502 30                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:502:30
	v_sub_f32_e32 v128, v128, v167
	.loc	1 502 22 is_stmt 0              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:502:22
	v_mul_f32_e32 v128, 0x3fb8aa3b, v128
	v_cmp_gt_f32_e32 vcc, s7, v128
	s_nop 1
	v_cndmask_b32_e32 v136, 0, v146, vcc
	v_add_f32_e32 v128, v128, v136
	v_exp_f32_e32 v128, v128
	v_cndmask_b32_e32 v136, 0, v148, vcc
	v_ldexp_f32 v136, v128, v136
	.loc	1 503 20 is_stmt 1              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:503:20
	v_sub_f32_e32 v128, v129, v167
	v_sub_f32_e32 v129, v130, v167
	.loc	1 503 15 is_stmt 0              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:503:15
	v_mul_f32_e32 v128, 0x3fb8aa3b, v128
	v_cmp_gt_f32_e32 vcc, s7, v128
	v_mul_f32_e32 v129, 0x3fb8aa3b, v129
	.loc	1 503 20                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:503:20
	v_sub_f32_e32 v130, v131, v167
	v_sub_f32_e32 v131, v132, v167
	v_sub_f32_e32 v132, v133, v167
	v_sub_f32_e32 v133, v134, v167
	v_sub_f32_e32 v134, v135, v167
	v_sub_f32_e32 v135, v138, v167
	.loc	1 503 15                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:503:15
	v_cndmask_b32_e32 v138, 0, v146, vcc
	v_cmp_gt_f32_e64 s[0:1], s7, v129
	v_add_f32_e32 v128, v128, v138
	v_exp_f32_e32 v128, v128
	v_cndmask_b32_e64 v138, 0, v146, s[0:1]
	v_add_f32_e32 v129, v129, v138
	v_exp_f32_e32 v129, v129
	v_cndmask_b32_e32 v138, 0, v148, vcc
	v_ldexp_f32 v138, v128, v138
	v_cndmask_b32_e64 v128, 0, v148, s[0:1]
	v_ldexp_f32 v140, v129, v128
	v_mul_f32_e32 v128, 0x3fb8aa3b, v130
	v_cmp_gt_f32_e32 vcc, s7, v128
	.loc	1 515 36 is_stmt 1              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:515:36
	v_pk_mul_f32 v[114:115], v[114:115], v[136:137] op_sel_hi:[1,0]
	v_pk_mul_f32 v[112:113], v[112:113], v[136:137] op_sel_hi:[1,0]
	.loc	1 503 15                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:503:15
	v_cndmask_b32_e32 v129, 0, v146, vcc
	v_add_f32_e32 v128, v128, v129
	v_mul_f32_e32 v129, 0x3fb8aa3b, v131
	v_cmp_gt_f32_e64 s[0:1], s7, v129
	v_exp_f32_e32 v128, v128
	.loc	1 515 36                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:515:36
	v_pk_mul_f32 v[110:111], v[110:111], v[136:137] op_sel_hi:[1,0]
	.loc	1 503 15                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:503:15
	v_cndmask_b32_e64 v130, 0, v146, s[0:1]
	v_add_f32_e32 v129, v129, v130
	v_exp_f32_e32 v129, v129
	v_cndmask_b32_e32 v130, 0, v148, vcc
	v_ldexp_f32 v142, v128, v130
	v_cndmask_b32_e64 v128, 0, v148, s[0:1]
	v_ldexp_f32 v144, v129, v128
	v_mul_f32_e32 v128, 0x3fb8aa3b, v132
	v_cmp_gt_f32_e32 vcc, s7, v128
	.loc	1 508 13                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:508:13
	v_cvt_pk_bf16_f32 v132, v138, v140
	.loc	1 515 36                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:515:36
	v_pk_mul_f32 v[108:109], v[108:109], v[136:137] op_sel_hi:[1,0]
	.loc	1 503 15                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:503:15
	v_cndmask_b32_e32 v129, 0, v146, vcc
	v_add_f32_e32 v128, v128, v129
	v_mul_f32_e32 v129, 0x3fb8aa3b, v133
	v_cmp_gt_f32_e64 s[0:1], s7, v129
	v_exp_f32_e32 v128, v128
	.loc	1 508 13                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:508:13
	v_cvt_pk_bf16_f32 v133, v142, v144
	.loc	1 503 15                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:503:15
	v_cndmask_b32_e64 v130, 0, v146, s[0:1]
	v_add_f32_e32 v129, v129, v130
	v_exp_f32_e32 v129, v129
	v_cndmask_b32_e32 v130, 0, v148, vcc
	v_ldexp_f32 v139, v128, v130
	v_cndmask_b32_e64 v128, 0, v148, s[0:1]
	v_ldexp_f32 v141, v129, v128
	v_mul_f32_e32 v128, 0x3fb8aa3b, v134
	v_cmp_gt_f32_e32 vcc, s7, v128
	.loc	1 508 13                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:508:13
	v_cvt_pk_bf16_f32 v134, v139, v141
	.loc	1 509 29                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:509:29
	s_nop 1
	v_permlane32_swap_b32_e32 v132, v134
	.loc	1 503 15                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:503:15
	v_cndmask_b32_e32 v129, 0, v146, vcc
	v_add_f32_e32 v128, v128, v129
	v_mul_f32_e32 v129, 0x3fb8aa3b, v135
	v_cmp_gt_f32_e64 s[0:1], s7, v129
	v_exp_f32_e32 v128, v128
	.loc	1 509 29                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:509:29
	v_permlane16_swap_b32_e32 v132, v134
	.loc	1 503 15                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:503:15
	v_cndmask_b32_e64 v130, 0, v146, s[0:1]
	v_add_f32_e32 v129, v129, v130
	v_exp_f32_e32 v129, v129
	v_cndmask_b32_e32 v130, 0, v148, vcc
	v_ldexp_f32 v143, v128, v130
	v_cndmask_b32_e64 v128, 0, v148, s[0:1]
	v_ldexp_f32 v145, v129, v128
	.loc	1 508 13                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:508:13
	v_cvt_pk_bf16_f32 v135, v143, v145
	.loc	1 509 29                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:509:29
	s_nop 1
	v_permlane32_swap_b32_e32 v133, v135
	.loc	1 511 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:511:38
	ds_read_b64_tr_b16 v[130:131], v171 offset:4160
	ds_read_b64_tr_b16 v[152:153], v171 offset:4352
	ds_read_b64_tr_b16 v[158:159], v171 offset:4096
	ds_read_b64_tr_b16 v[128:129], v171
	ds_read_b64_tr_b16 v[156:157], v171 offset:64
	ds_read_b64_tr_b16 v[176:177], v171 offset:256
	ds_read_b64_tr_b16 v[150:151], v171 offset:320
	.loc	1 509 29                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:509:29
	v_permlane16_swap_b32_e32 v133, v135
	.loc	1 515 36                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:515:36
	v_pk_mul_f32 v[98:99], v[98:99], v[136:137] op_sel_hi:[1,0]
	s_waitcnt lgkmcnt(3)
	v_mfma_f32_16x16x32_bf16 v[128:131], v[128:131], v[132:135], v[112:115]
	v_mul_f32_e64 v96, v96, v136
	v_mul_f32_e64 v97, v97, v136
	v_pk_mul_f32 v[74:75], v[74:75], v[136:137] op_sel_hi:[1,0]
	v_pk_mul_f32 v[72:73], v[72:73], v[136:137] op_sel_hi:[1,0]
	v_pk_mul_f32 v[114:115], v[126:127], v[136:137] op_sel_hi:[1,0]
	v_pk_mul_f32 v[112:113], v[124:125], v[136:137] op_sel_hi:[1,0]
	v_mfma_f32_16x16x32_bf16 v[108:111], a[10:13], v[132:135], v[108:111]
	.loc	1 511 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:511:38
	ds_read_b64_tr_b16 a[10:11], v170 offset:4416
	.loc	1 515 36                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:515:36
	v_pk_mul_f32 v[70:71], v[70:71], v[136:137] op_sel_hi:[1,0]
	v_pk_mul_f32 v[68:69], v[68:69], v[136:137] op_sel_hi:[1,0]
	v_mfma_f32_16x16x32_bf16 v[124:127], v[178:181], v[132:135], v[112:115]
	v_mul_f32_e64 v90, v90, v136
	v_mul_f32_e64 v91, v91, v136
	v_pk_mul_f32 v[88:89], v[88:89], v[136:137] op_sel_hi:[1,0]
	v_pk_mul_f32 v[82:83], v[82:83], v[136:137] op_sel_hi:[1,0]
	v_pk_mul_f32 v[114:115], v[122:123], v[136:137] op_sel_hi:[1,0]
	v_pk_mul_f32 v[112:113], v[120:121], v[136:137] op_sel_hi:[1,0]
	v_pk_mul_f32 v[80:81], v[80:81], v[136:137] op_sel_hi:[1,0]
	v_mfma_f32_16x16x32_bf16 v[68:71], v[172:175], v[132:135], v[68:71]
	v_mul_f32_e64 v58, v58, v136
	v_mul_f32_e64 v59, v59, v136
	v_pk_mul_f32 v[56:57], v[56:57], v[136:137] op_sel_hi:[1,0]
	v_pk_mul_f32 v[106:107], v[106:107], v[136:137] op_sel_hi:[1,0]
	s_waitcnt lgkmcnt(3)
	v_mfma_f32_16x16x32_bf16 v[120:123], v[156:159], v[132:135], v[112:115]
	.loc	1 511 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:511:38
	ds_read_b64_tr_b16 v[156:157], v168
	.loc	1 515 36                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:515:36
	v_pk_mul_f32 v[104:105], v[104:105], v[136:137] op_sel_hi:[1,0]
	v_pk_mul_f32 v[94:95], v[94:95], v[136:137] op_sel_hi:[1,0]
	v_pk_mul_f32 v[114:115], v[118:119], v[136:137] op_sel_hi:[1,0]
	.loc	1 511 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:511:38
	ds_read_b64_tr_b16 v[158:159], v168 offset:4160
	ds_read_b64_tr_b16 v[118:119], v168 offset:4352
	ds_read_b64_tr_b16 v[180:181], v168 offset:4096
	.loc	1 515 36                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:515:36
	v_pk_mul_f32 v[112:113], v[116:117], v[136:137] op_sel_hi:[1,0]
	v_mfma_f32_16x16x32_bf16 v[80:83], v[182:185], v[132:135], v[80:83]
	v_mul_f32_e64 v92, v92, v136
	v_mul_f32_e64 v93, v93, v136
	v_pk_mul_f32 v[86:87], v[86:87], v[136:137] op_sel_hi:[1,0]
	v_pk_mul_f32 v[84:85], v[84:85], v[136:137] op_sel_hi:[1,0]
	v_mfma_f32_16x16x32_bf16 v[112:115], a[4:7], v[132:135], v[112:115]
	.loc	1 511 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:511:38
	ds_read_b64_tr_b16 v[178:179], v168 offset:64
	ds_read_b64_tr_b16 a[4:5], v168 offset:256
	ds_read_b64_tr_b16 v[116:117], v168 offset:320
	ds_read_b64_tr_b16 a[6:7], v168 offset:4416
	.loc	1 515 36                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:515:36
	v_pk_mul_f32 v[102:103], v[102:103], v[136:137] op_sel_hi:[1,0]
	s_waitcnt lgkmcnt(3)
	v_mfma_f32_16x16x32_bf16 v[96:99], v[178:181], v[132:135], v[96:99]
	.loc	1 511 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:511:38
	ds_read_b64_tr_b16 v[178:179], v171 offset:4416
	.loc	1 515 36                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:515:36
	v_pk_mul_f32 v[100:101], v[100:101], v[136:137] op_sel_hi:[1,0]
	v_pk_mul_f32 v[78:79], v[78:79], v[136:137] op_sel_hi:[1,0]
	s_waitcnt lgkmcnt(1)
	v_mfma_f32_16x16x32_bf16 v[72:75], a[4:7], v[132:135], v[72:75]
	.loc	1 511 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:511:38
	ds_read_b64_tr_b16 v[174:175], v170 offset:4672
	ds_read_b64_tr_b16 v[186:187], v170 offset:4864
	ds_read_b64_tr_b16 a[6:7], v170 offset:4608
	.loc	1 515 36                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:515:36
	v_pk_mul_f32 v[76:77], v[76:77], v[136:137] op_sel_hi:[1,0]
	v_pk_mul_f32 v[66:67], v[66:67], v[136:137] op_sel_hi:[1,0]
	v_mfma_f32_16x16x32_bf16 v[88:91], a[8:11], v[132:135], v[88:91]
	.loc	1 511 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:511:38
	ds_read_b64_tr_b16 v[172:173], v170 offset:512
	ds_read_b64_tr_b16 a[4:5], v170 offset:576
	ds_read_b64_tr_b16 a[8:9], v170 offset:768
	ds_read_b64_tr_b16 v[184:185], v170 offset:832
	ds_read_b64_tr_b16 a[10:11], v170 offset:4928
	.loc	1 515 36                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:515:36
	v_pk_mul_f32 v[64:65], v[64:65], v[136:137] op_sel_hi:[1,0]
	s_waitcnt lgkmcnt(4)
	v_mfma_f32_16x16x32_bf16 v[56:59], v[172:175], v[132:135], v[56:59]
	.loc	1 511 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:511:38
	ds_read_b64_tr_b16 v[174:175], v168 offset:512
	.loc	1 515 36                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:515:36
	v_pk_mul_f32 v[62:63], v[62:63], v[136:137] op_sel_hi:[1,0]
	v_pk_mul_f32 v[60:61], v[60:61], v[136:137] op_sel_hi:[1,0]
	v_mfma_f32_16x16x32_bf16 v[104:107], v[156:159], v[132:135], v[104:107]
	v_mul_f32_e64 v54, v54, v136
	v_mul_f32_e64 v55, v55, v136
	v_pk_mul_f32 v[52:53], v[52:53], v[136:137] op_sel_hi:[1,0]
	v_pk_mul_f32 v[50:51], v[50:51], v[136:137] op_sel_hi:[1,0]
	v_mfma_f32_16x16x32_bf16 v[92:95], v[176:179], v[132:135], v[92:95]
	v_mul_f32_e64 v48, v48, v136
	v_mul_f32_e64 v49, v49, v136
	v_pk_mul_f32 v[46:47], v[46:47], v[136:137] op_sel_hi:[1,0]
	v_pk_mul_f32 v[44:45], v[44:45], v[136:137] op_sel_hi:[1,0]
	v_mfma_f32_16x16x32_bf16 v[84:87], v[150:153], v[132:135], v[84:87]
	.loc	1 511 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:511:38
	ds_read_b64_tr_b16 v[152:153], v171 offset:4672
	ds_read_b64_tr_b16 v[158:159], v171 offset:4864
	ds_read_b64_tr_b16 v[178:179], v171 offset:4608
	ds_read_b64_tr_b16 v[150:151], v171 offset:512
	ds_read_b64_tr_b16 v[176:177], v171 offset:576
	ds_read_b64_tr_b16 v[180:181], v171 offset:768
	ds_read_b64_tr_b16 v[156:157], v171 offset:832
	.loc	1 515 36                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:515:36
	v_pk_mul_f32 v[42:43], v[42:43], v[136:137] op_sel_hi:[1,0]
	v_mfma_f32_16x16x32_bf16 v[100:103], a[14:17], v[132:135], v[100:103]
	v_mul_f32_e64 v40, v40, v136
	v_mul_f32_e64 v41, v41, v136
	.loc	1 511 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:511:38
	ds_read_b64_tr_b16 v[182:183], v171 offset:4928
	.loc	1 515 36                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:515:36
	v_pk_mul_f32 v[10:11], v[10:11], v[136:137] op_sel_hi:[1,0]
	v_mfma_f32_16x16x32_bf16 v[76:79], a[18:21], v[132:135], v[76:79]
	v_mul_f32_e64 v8, v8, v136
	v_mul_f32_e64 v9, v9, v136
	v_pk_mul_f32 v[22:23], v[22:23], v[136:137] op_sel_hi:[1,0]
	v_pk_mul_f32 v[20:21], v[20:21], v[136:137] op_sel_hi:[1,0]
	v_mfma_f32_16x16x32_bf16 v[64:67], v[116:119], v[132:135], v[64:67]
	v_mul_f32_e64 v14, v14, v136
	v_mul_f32_e64 v15, v15, v136
	v_pk_mul_f32 v[12:13], v[12:13], v[136:137] op_sel_hi:[1,0]
	v_pk_mul_f32 v[6:7], v[6:7], v[136:137] op_sel_hi:[1,0]
	s_waitcnt lgkmcnt(4)
	v_mfma_f32_16x16x32_bf16 v[60:63], v[150:153], v[132:135], v[60:63]
	.loc	1 511 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:511:38
	ds_read_b64_tr_b16 v[152:153], v169 offset:4672
	ds_read_b64_tr_b16 a[14:15], v169 offset:4864
	ds_read_b64_tr_b16 a[18:19], v169 offset:4608
	ds_read_b64_tr_b16 v[150:151], v169 offset:512
	ds_read_b64_tr_b16 a[16:17], v169 offset:576
	ds_read_b64_tr_b16 v[172:173], v169 offset:768
	ds_read_b64_tr_b16 a[12:13], v169 offset:832
	.loc	1 515 36                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:515:36
	v_pk_mul_f32 v[4:5], v[4:5], v[136:137] op_sel_hi:[1,0]
	s_waitcnt lgkmcnt(10)
	v_mfma_f32_16x16x32_bf16 v[52:55], v[176:179], v[132:135], v[52:55]
	v_mul_f32_e64 v38, v38, v136
	v_mul_f32_e64 v39, v39, v136
	v_pk_mul_f32 v[36:37], v[36:37], v[136:137] op_sel_hi:[1,0]
	v_pk_mul_f32 v[34:35], v[34:35], v[136:137] op_sel_hi:[1,0]
	v_mfma_f32_16x16x32_bf16 v[48:51], a[4:7], v[132:135], v[48:51]
	.loc	1 511 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:511:38
	ds_read_b64_tr_b16 v[176:177], v168 offset:4672
	ds_read_b64_tr_b16 v[118:119], v168 offset:4864
	ds_read_b64_tr_b16 a[6:7], v168 offset:4608
	.loc	1 515 36                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:515:36
	v_pk_mul_f32 v[32:33], v[32:33], v[136:137] op_sel_hi:[1,0]
	v_pk_mul_f32 v[30:31], v[30:31], v[136:137] op_sel_hi:[1,0]
	s_waitcnt lgkmcnt(6)
	v_mfma_f32_16x16x32_bf16 v[44:47], v[150:153], v[132:135], v[44:47]
	.loc	1 511 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:511:38
	ds_read_b64_tr_b16 v[152:153], v168 offset:4928
	ds_read_b64_tr_b16 a[4:5], v168 offset:576
	ds_read_b64_tr_b16 v[150:151], v168 offset:768
	ds_read_b64_tr_b16 v[116:117], v168 offset:832
	.loc	1 515 36                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:515:36
	v_pk_mul_f32 v[28:29], v[28:29], v[136:137] op_sel_hi:[1,0]
	s_waitcnt lgkmcnt(6)
	v_mfma_f32_16x16x32_bf16 v[40:43], v[174:177], v[132:135], v[40:43]
	.loc	1 511 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:511:38
	ds_read_b64_tr_b16 v[174:175], v169 offset:4928
	.loc	1 522 39                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:522:39
	s_waitcnt vmcnt(1) lgkmcnt(0)
	.loc	1 515 36                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:515:36
	v_mfma_f32_16x16x32_bf16 v[8:11], v[150:153], v[132:135], v[8:11]
	.loc	1 523 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:523:38
	v_add_u32_e32 v150, s5, v163
	.loc	1 522 39                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:522:39
	s_barrier
	.loc	1 523 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:523:38
	v_add_u32_e32 v151, s5, v162
	.loc	1 515 36                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:515:36
	v_mfma_f32_16x16x32_bf16 v[20:23], v[156:159], v[132:135], v[20:23]
	.loc	1 523 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:523:38
	ds_read_b128 v[156:159], v150
	ds_read_b128 v[168:171], v150 offset:256
	.loc	1 515 36                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:515:36
	v_pk_mul_f32 v[26:27], v[26:27], v[136:137] op_sel_hi:[1,0]
	v_pk_mul_f32 v[24:25], v[24:25], v[136:137] op_sel_hi:[1,0]
	v_mfma_f32_16x16x32_bf16 v[12:15], v[172:175], v[132:135], v[12:15]
	.loc	1 523 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:523:38
	ds_read_b128 v[172:175], v151
	ds_read_b128 v[176:179], v151 offset:256
	.loc	1 515 36                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:515:36
	v_pk_mul_f32 v[18:19], v[18:19], v[136:137] op_sel_hi:[1,0]
	v_pk_mul_f32 v[16:17], v[16:17], v[136:137] op_sel_hi:[1,0]
	.loc	1 525 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:525:57
	s_waitcnt lgkmcnt(3)
	v_mfma_f32_16x16x32_bf16 v[156:159], v[156:159], a[0:3], 0
	.loc	1 523 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:523:38
	v_add_u32_e32 v137, s5, v137
	v_add_u32_e32 v152, s5, v161
.Ltmp36:
	.loc	2 263 15                        ; standard.py:263:15 @[ standard.py:293:36 @[ bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:505:41 ] ]
	v_pk_add_f32 v[138:139], v[138:139], v[140:141]
.Ltmp37:
	.loc	1 515 36                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:515:36
	v_mfma_f32_16x16x32_bf16 v[4:7], a[12:15], v[132:135], v[4:7]
.Ltmp38:
	.loc	2 263 15                        ; standard.py:263:15 @[ standard.py:293:36 @[ bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:505:41 ] ]
	v_add_f32_e64 v140, v142, v144
	v_add_f32_e64 v141, v143, v145
.Ltmp39:
	.loc	1 532 33                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:532:33
	s_lshl_b32 s0, s38, 5
.Ltmp40:
	.loc	2 263 15                        ; standard.py:263:15 @[ standard.py:293:36 @[ bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:505:41 ] ]
	v_pk_add_f32 v[138:139], v[138:139], v[140:141]
.Ltmp41:
	.loc	1 515 36                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:515:36
	v_mfma_f32_16x16x32_bf16 v[28:31], v[180:183], v[132:135], v[28:31]
	.loc	1 532 33                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:532:33
	s_sub_i32 s0, s0, 32
.Ltmp42:
	.loc	2 263 15                        ; standard.py:263:15 @[ standard.py:293:36 @[ bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:505:41 ] ]
	v_pk_add_f32 v[138:139], v[138:139], v[138:139] op_sel:[0,1] op_sel_hi:[1,0]
.Ltmp43:
	.loc	1 525 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:525:57
	s_waitcnt lgkmcnt(1)
	v_mfma_f32_16x16x32_bf16 v[156:159], v[172:175], v[252:255], v[156:159]
	.loc	1 523 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:523:38
	ds_read_b128 v[172:175], v137
	ds_read_b128 v[180:183], v137 offset:256
.Ltmp44:
	.loc	2 293 36                        ; standard.py:293:36 @[ bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:505:41 ]
	v_mov_b32_e32 v139, v138
	s_nop 1
	v_permlane32_swap_b32_e32 v138, v139
.Ltmp45:
	.loc	1 515 36                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:515:36
	v_mfma_f32_16x16x32_bf16 v[32:35], a[4:7], v[132:135], v[32:35]
	v_accvgpr_write_b32 a4, v4
	v_accvgpr_write_b32 a5, v5
	v_accvgpr_write_b32 a6, v6
	v_accvgpr_write_b32 a7, v7
	.loc	1 525 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:525:57
	s_waitcnt lgkmcnt(1)
	v_mfma_f32_16x16x32_bf16 v[156:159], v[172:175], v[248:251], v[156:159]
	v_mov_b32_e32 v4, v160
	.loc	1 523 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:523:38
	ds_read_b128 v[160:163], v152
	ds_read_b128 v[172:175], v152 offset:256
	v_accvgpr_read_b32 v5, a27
	.loc	1 525 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:525:57
	s_waitcnt lgkmcnt(1)
	v_mfma_f32_16x16x32_bf16 v[156:159], v[160:163], v[244:247], v[156:159]
.Ltmp46:
	.loc	2 263 15                        ; standard.py:263:15 @[ standard.py:293:36 @[ bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:505:41 ] ]
	v_add_f32_e32 v138, v138, v139
.Ltmp47:
	.loc	2 293 36                        ; standard.py:293:36 @[ bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:505:41 ]
	v_mov_b32_e32 v139, v138
	s_nop 1
	v_permlane16_swap_b32_e32 v138, v139
.Ltmp48:
	.loc	1 525 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:525:57
	v_mfma_f32_16x16x32_bf16 v[156:159], v[168:171], v[240:243], v[156:159]
	.loc	1 523 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:523:38
	ds_read_b128 v[160:163], v150 offset:512
	ds_read_b128 v[168:171], v150 offset:768
.Ltmp49:
	.loc	2 263 15                        ; standard.py:263:15 @[ standard.py:293:36 @[ bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:505:41 ] ]
	v_add_f32_e32 v139, v138, v139
.Ltmp50:
	.loc	1 525 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:525:57
	v_mfma_f32_16x16x32_bf16 v[156:159], v[176:179], v[236:239], v[156:159]
	v_mfma_f32_16x16x32_bf16 v[156:159], v[180:183], v[232:235], v[156:159]
	s_waitcnt lgkmcnt(2)
	v_mfma_f32_16x16x32_bf16 v[156:159], v[172:175], v[228:231], v[156:159]
	s_waitcnt lgkmcnt(1)
	v_mfma_f32_16x16x32_bf16 v[156:159], v[160:163], v[224:227], v[156:159]
	.loc	1 523 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:523:38
	ds_read_b128 v[160:163], v151 offset:512
	ds_read_b128 v[172:175], v151 offset:768
	.loc	1 525 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:525:57
	s_waitcnt lgkmcnt(1)
	v_mfma_f32_16x16x32_bf16 v[156:159], v[160:163], v[220:223], v[156:159]
	.loc	1 523 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:523:38
	ds_read_b128 v[160:163], v137 offset:512
	ds_read_b128 v[176:179], v137 offset:768
	.loc	1 525 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:525:57
	s_waitcnt lgkmcnt(1)
	v_mfma_f32_16x16x32_bf16 v[156:159], v[160:163], v[216:219], v[156:159]
	.loc	1 523 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:523:38
	ds_read_b128 v[160:163], v152 offset:512
	ds_read_b128 v[180:183], v152 offset:768
	.loc	1 525 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:525:57
	s_waitcnt lgkmcnt(1)
	v_mfma_f32_16x16x32_bf16 v[156:159], v[160:163], v[212:215], v[156:159]
	v_mfma_f32_16x16x32_bf16 v[156:159], v[168:171], v[208:211], v[156:159]
	.loc	1 523 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:523:38
	ds_read_b128 v[160:163], v150 offset:16384
	ds_read_b128 v[168:171], v150 offset:16640
	.loc	1 525 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:525:57
	v_mfma_f32_16x16x32_bf16 v[156:159], v[172:175], v[204:207], v[156:159]
	v_mfma_f32_16x16x32_bf16 v[156:159], v[176:179], v[200:203], v[156:159]
	.loc	1 523 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:523:38
	ds_read_b128 v[172:175], v151 offset:16384
	ds_read_b128 v[176:179], v151 offset:16640
	.loc	1 525 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:525:57
	s_waitcnt lgkmcnt(3)
	v_mfma_f32_16x16x32_bf16 v[160:163], v[160:163], a[0:3], 0
	v_mfma_f32_16x16x32_bf16 v[156:159], v[180:183], v[192:195], v[156:159]
	s_waitcnt lgkmcnt(1)
	v_mfma_f32_16x16x32_bf16 v[160:163], v[172:175], v[252:255], v[160:163]
	.loc	1 523 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:523:38
	ds_read_b128 v[172:175], v137 offset:16384
	ds_read_b128 v[180:183], v137 offset:16640
	.loc	1 515 36                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:515:36
	v_mfma_f32_16x16x32_bf16 v[16:19], v[184:187], v[132:135], v[16:19]
	.loc	1 525 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:525:57
	s_waitcnt lgkmcnt(1)
	v_mfma_f32_16x16x32_bf16 v[160:163], v[172:175], v[248:251], v[160:163]
	.loc	1 523 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:523:38
	ds_read_b128 v[172:175], v152 offset:16384
	ds_read_b128 v[184:187], v152 offset:16640
	.loc	1 525 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:525:57
	s_waitcnt lgkmcnt(1)
	v_mfma_f32_16x16x32_bf16 v[160:163], v[172:175], v[244:247], v[160:163]
	v_mfma_f32_16x16x32_bf16 v[160:163], v[168:171], v[240:243], v[160:163]
	.loc	1 523 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:523:38
	ds_read_b128 v[168:171], v150 offset:16896
	ds_read_b128 v[172:175], v150 offset:17152
	.loc	1 528 40                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:528:40
	v_add_u32_e32 v150, s6, v5
	v_accvgpr_read_b32 v5, a95
	.loc	1 525 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:525:57
	v_mfma_f32_16x16x32_bf16 v[160:163], v[176:179], v[236:239], v[160:163]
	v_mfma_f32_16x16x32_bf16 v[160:163], v[180:183], v[232:235], v[160:163]
	s_waitcnt lgkmcnt(2)
	v_mfma_f32_16x16x32_bf16 v[160:163], v[184:187], v[228:231], v[160:163]
	s_waitcnt lgkmcnt(1)
	v_mfma_f32_16x16x32_bf16 v[160:163], v[168:171], v[224:227], v[160:163]
	.loc	1 523 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:523:38
	ds_read_b128 v[168:171], v151 offset:16896
	ds_read_b128 v[176:179], v151 offset:17152
	.loc	1 525 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:525:57
	s_waitcnt lgkmcnt(1)
	v_mfma_f32_16x16x32_bf16 v[160:163], v[168:171], v[220:223], v[160:163]
	.loc	1 523 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:523:38
	ds_read_b128 v[168:171], v137 offset:16896
	ds_read_b128 v[180:183], v137 offset:17152
	.loc	1 505 20                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:505:20
	v_mul_f32_e32 v137, v164, v136
	.loc	1 515 36                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:515:36
	v_pk_mul_f32 v[2:3], v[2:3], v[136:137] op_sel_hi:[1,0]
	.loc	1 525 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:525:57
	s_waitcnt lgkmcnt(1)
	v_mfma_f32_16x16x32_bf16 v[160:163], v[168:171], v[216:219], v[160:163]
	.loc	1 523 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:523:38
	ds_read_b128 v[168:171], v152 offset:16896
	ds_read_b128 v[184:187], v152 offset:17152
	.loc	1 527 39                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:527:39
	s_waitcnt vmcnt(0) lgkmcnt(0)
	.loc	1 525 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:525:57
	v_mfma_f32_16x16x32_bf16 v[160:163], v[168:171], v[212:215], v[160:163]
	.loc	1 527 39                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:527:39
	s_barrier
	.loc	1 528 40                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:528:40
	ds_read_b128 v[168:171], v150
	.loc	1 515 36                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:515:36
	v_pk_mul_f32 v[0:1], v[0:1], v[136:137] op_sel_hi:[1,0]
	.loc	1 525 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:525:57
	v_mfma_f32_16x16x32_bf16 v[160:163], v[172:175], v[208:211], v[160:163]
	.loc	1 528 40                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:528:40
	ds_read_b128 v[172:175], v150 offset:64
	.loc	1 525 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:525:57
	v_mfma_f32_16x16x32_bf16 v[160:163], v[176:179], v[204:207], v[160:163]
	.loc	1 529 54                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:529:54
	s_waitcnt lgkmcnt(1)
	v_mfma_f32_16x16x32_bf16 v[156:159], v[168:171], v[196:199], v[156:159]
	.loc	1 528 40                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:528:40
	ds_read_b128 v[168:171], v150 offset:512
	ds_read_b128 v[150:153], v150 offset:576
	.loc	1 525 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:525:57
	v_mfma_f32_16x16x32_bf16 v[160:163], v[180:183], v[200:203], v[160:163]
	v_accvgpr_read_b32 v200, a92
	v_mfma_f32_16x16x32_bf16 v[160:163], v[184:187], v[192:195], v[160:163]
	.loc	1 529 54                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:529:54
	s_waitcnt lgkmcnt(1)
	v_mfma_f32_16x16x32_bf16 v[140:143], v[168:171], v[196:199], v[160:163]
	v_mfma_f32_16x16x32_bf16 v[156:159], v[172:175], v[188:191], v[156:159]
	s_waitcnt lgkmcnt(0)
	v_mfma_f32_16x16x32_bf16 v[140:143], v[150:153], v[188:191], v[140:143]
	.loc	1 532 43                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:532:43
	v_or_b32_e32 v152, s0, v147
	v_or_b32_e32 v153, s0, v166
	.loc	1 533 39                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:533:39
	v_cmp_gt_i32_e32 vcc, s33, v152
	.loc	1 515 36                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:515:36
	v_mfma_f32_16x16x32_bf16 v[0:3], v[116:119], v[132:135], v[0:3]
	.loc	1 530 10                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:530:10
	s_nop 1
	v_mul_f32_e32 v144, s39, v156
	v_mul_f32_e32 v145, s39, v157
	.loc	1 532 43                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:532:43
	v_or_b32_e32 v156, s0, v5
	v_accvgpr_read_b32 v5, a96
	.loc	1 533 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:533:57
	v_cndmask_b32_e32 v144, v165, v144, vcc
	.loc	1 533 39 is_stmt 0              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:533:39
	v_cmp_gt_i32_e32 vcc, s33, v153
	.loc	1 530 10 is_stmt 1              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:530:10
	v_mul_f32_e32 v150, s39, v158
	.loc	1 532 43                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:532:43
	v_or_b32_e32 v157, s0, v5
	.loc	1 533 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:533:57
	v_cndmask_b32_e32 v145, v165, v145, vcc
	.loc	1 533 39 is_stmt 0              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:533:39
	v_cmp_gt_i32_e32 vcc, s33, v156
	.loc	1 530 10 is_stmt 1              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:530:10
	v_mul_f32_e32 v151, s39, v159
	.loc	1 532 43                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:532:43
	v_or_b32_e32 v158, s0, v200
	v_accvgpr_read_b32 v5, a97
	.loc	1 533 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:533:57
	v_cndmask_b32_e32 v150, v165, v150, vcc
	.loc	1 533 39 is_stmt 0              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:533:39
	v_cmp_gt_i32_e32 vcc, s33, v157
	.loc	1 530 10 is_stmt 1              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:530:10
	v_mul_f32_e32 v140, s39, v140
	.loc	1 532 43                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:532:43
	v_or_b32_e32 v159, s0, v5
	v_accvgpr_read_b32 v5, a98
	.loc	1 533 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:533:57
	v_cndmask_b32_e32 v151, v165, v151, vcc
	.loc	1 533 39 is_stmt 0              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:533:39
	v_cmp_gt_i32_e32 vcc, s33, v158
	.loc	1 530 10 is_stmt 1              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:530:10
	v_mul_f32_e32 v141, s39, v141
	.loc	1 532 43                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:532:43
	v_or_b32_e32 v160, s0, v5
	v_accvgpr_read_b32 v5, a99
	.loc	1 533 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:533:57
	v_cndmask_b32_e32 v140, v165, v140, vcc
	.loc	1 533 39 is_stmt 0              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:533:39
	v_cmp_gt_i32_e32 vcc, s33, v159
	.loc	1 530 10 is_stmt 1              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:530:10
	v_mul_f32_e32 v142, s39, v142
	.loc	1 532 43                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:532:43
	v_or_b32_e32 v161, s0, v5
	.loc	1 533 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:533:57
	v_cndmask_b32_e32 v141, v165, v141, vcc
	.loc	1 533 39 is_stmt 0              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:533:39
	v_cmp_gt_i32_e32 vcc, s33, v160
	.loc	1 530 10 is_stmt 1              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:530:10
	v_mul_f32_e32 v143, s39, v143
.Ltmp51:
	.loc	2 170 27                        ; standard.py:170:27 @[ standard.py:191:40 @[ bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:534:36 ] ]
	v_max_f32_e32 v152, v144, v145
.Ltmp52:
	.loc	1 533 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:533:57
	v_cndmask_b32_e32 v142, v165, v142, vcc
	.loc	1 533 39 is_stmt 0              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:533:39
	v_cmp_gt_i32_e32 vcc, s33, v161
.Ltmp53:
	.loc	2 170 27 is_stmt 1              ; standard.py:170:27 @[ standard.py:191:40 @[ bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:534:36 ] ]
	v_max_f32_e32 v153, v150, v151
.Ltmp54:
	.loc	1 515 36                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:515:36
	v_mfma_f32_16x16x32_bf16 v[36:39], a[16:19], v[132:135], v[36:39]
	.loc	1 533 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:533:57
	v_cndmask_b32_e32 v143, v165, v143, vcc
.Ltmp55:
	.loc	2 170 27                        ; standard.py:170:27 @[ standard.py:191:40 @[ bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:534:36 ] ]
	v_max_f32_e32 v156, v142, v143
	v_max3_f32 v156, v140, v141, v156
	v_max3_f32 v152, v152, v153, v156
.Ltmp56:
	.loc	2 191 40                        ; standard.py:191:40 @[ bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:534:36 ]
	v_mov_b32_e32 v153, v152
	s_nop 1
	v_permlane32_swap_b32_e32 v152, v153
.Ltmp57:
	.loc	2 170 27                        ; standard.py:170:27 @[ standard.py:191:40 @[ bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:534:36 ] ]
	v_max_f32_e32 v153, v153, v153
	v_max_f32_e32 v152, v152, v152
	v_max_f32_e32 v152, v152, v153
.Ltmp58:
	.loc	2 191 40                        ; standard.py:191:40 @[ bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:534:36 ]
	v_mov_b32_e32 v153, v152
	s_nop 1
	v_permlane16_swap_b32_e32 v152, v153
.Ltmp59:
	.loc	1 534 40                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:534:40
	v_max3_f32 v152, v152, v153, v167
	.loc	1 535 30                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:535:30
	v_sub_f32_e32 v153, v167, v152
	.loc	1 535 22 is_stmt 0              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:535:22
	v_mul_f32_e32 v153, 0x3fb8aa3b, v153
	v_cmp_gt_f32_e32 vcc, s7, v153
	.loc	1 515 36 is_stmt 1              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:515:36
	v_mfma_f32_16x16x32_bf16 v[24:27], a[8:11], v[132:135], v[24:27]
	.loc	1 536 20                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:536:20
	v_sub_f32_e32 v117, v145, v152
	.loc	1 535 22                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:535:22
	v_cndmask_b32_e32 v156, 0, v146, vcc
	v_add_f32_e32 v153, v153, v156
	v_exp_f32_e32 v153, v153
	v_cndmask_b32_e32 v116, 0, v148, vcc
	.loc	1 536 15                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:536:15
	v_mul_f32_e32 v117, 0x3fb8aa3b, v117
	v_cmp_gt_f32_e64 s[0:1], s7, v117
	.loc	1 535 22                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:535:22
	v_ldexp_f32 v132, v153, v116
	.loc	1 536 20                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:536:20
	v_sub_f32_e32 v116, v144, v152
	.loc	1 536 15 is_stmt 0              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:536:15
	v_mul_f32_e32 v116, 0x3fb8aa3b, v116
	v_cmp_gt_f32_e32 vcc, s7, v116
	.loc	1 536 20                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:536:20
	v_sub_f32_e32 v118, v150, v152
	v_sub_f32_e32 v133, v140, v152
	.loc	1 536 15                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:536:15
	v_cndmask_b32_e32 v134, 0, v146, vcc
	v_add_f32_e32 v116, v116, v134
	v_cndmask_b32_e64 v134, 0, v146, s[0:1]
	v_exp_f32_e32 v116, v116
	v_add_f32_e32 v117, v117, v134
	v_exp_f32_e32 v117, v117
	v_cndmask_b32_e32 v134, 0, v148, vcc
	v_ldexp_f32 v134, v116, v134
	v_cndmask_b32_e64 v116, 0, v148, s[0:1]
	v_ldexp_f32 v140, v117, v116
	v_mul_f32_e32 v116, 0x3fb8aa3b, v118
	v_cmp_gt_f32_e32 vcc, s7, v116
	.loc	1 536 20                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:536:20
	v_sub_f32_e32 v119, v151, v152
	v_sub_f32_e32 v136, v142, v152
	.loc	1 536 15                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:536:15
	v_cndmask_b32_e32 v117, 0, v146, vcc
	v_add_f32_e32 v116, v116, v117
	v_mul_f32_e32 v117, 0x3fb8aa3b, v119
	v_cmp_gt_f32_e64 s[0:1], s7, v117
	v_exp_f32_e32 v116, v116
	.loc	1 536 20                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:536:20
	v_sub_f32_e32 v135, v141, v152
	.loc	1 536 15                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:536:15
	v_cndmask_b32_e64 v118, 0, v146, s[0:1]
	v_add_f32_e32 v117, v117, v118
	v_exp_f32_e32 v117, v117
	v_cndmask_b32_e32 v118, 0, v148, vcc
	v_ldexp_f32 v142, v116, v118
	v_cndmask_b32_e64 v116, 0, v148, s[0:1]
	v_ldexp_f32 v144, v117, v116
	v_mul_f32_e32 v116, 0x3fb8aa3b, v133
	v_cmp_gt_f32_e32 vcc, s7, v116
	.loc	1 536 20                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:536:20
	v_sub_f32_e32 v143, v143, v152
	.loc	1 544 38 is_stmt 1              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:544:38
	v_add_u32_e32 v133, s5, v154
	.loc	1 536 15                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:536:15
	v_cndmask_b32_e32 v117, 0, v146, vcc
	v_add_f32_e32 v116, v116, v117
	v_mul_f32_e32 v117, 0x3fb8aa3b, v135
	v_cmp_gt_f32_e64 s[0:1], s7, v117
	v_exp_f32_e32 v116, v116
	.loc	1 544 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:544:38
	ds_read_b64_tr_b16 v[152:153], v133 offset:4160
	ds_read_b64_tr_b16 v[158:159], v133 offset:4416
	ds_read_b64_tr_b16 v[162:163], v133 offset:4352
	ds_read_b64_tr_b16 v[166:167], v133 offset:4096
	ds_read_b64_tr_b16 v[150:151], v133
	ds_read_b64_tr_b16 v[164:165], v133 offset:64
	ds_read_b64_tr_b16 v[156:157], v133 offset:256
	ds_read_b64_tr_b16 v[160:161], v133 offset:320
	.loc	1 536 15                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:536:15
	v_cndmask_b32_e64 v118, 0, v146, s[0:1]
	v_add_f32_e32 v117, v117, v118
	v_exp_f32_e32 v117, v117
	v_cndmask_b32_e32 v118, 0, v148, vcc
	v_ldexp_f32 v135, v116, v118
	v_cndmask_b32_e64 v116, 0, v148, s[0:1]
	v_ldexp_f32 v141, v117, v116
	v_mul_f32_e32 v116, 0x3fb8aa3b, v136
	v_cmp_gt_f32_e32 vcc, s7, v116
	.loc	1 548 36                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:548:36
	v_pk_mul_f32 v[122:123], v[122:123], v[132:133] op_sel_hi:[1,0]
	v_pk_mul_f32 v[120:121], v[120:121], v[132:133] op_sel_hi:[1,0]
	.loc	1 536 15                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:536:15
	v_cndmask_b32_e32 v117, 0, v146, vcc
	v_add_f32_e32 v116, v116, v117
	v_mul_f32_e32 v117, 0x3fb8aa3b, v143
	v_cmp_gt_f32_e64 s[0:1], s7, v117
	v_exp_f32_e32 v116, v116
	.loc	1 544 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:544:38
	v_add_u32_e32 v136, s5, v155
	.loc	1 536 15                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:536:15
	v_cndmask_b32_e64 v118, 0, v146, s[0:1]
	v_add_f32_e32 v117, v117, v118
	v_exp_f32_e32 v117, v117
	v_cndmask_b32_e32 v118, 0, v148, vcc
	v_ldexp_f32 v143, v116, v118
	v_cndmask_b32_e64 v116, 0, v148, s[0:1]
	v_ldexp_f32 v145, v117, v116
	.loc	1 541 13                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:541:13
	v_cvt_pk_bf16_f32 v116, v134, v140
	v_cvt_pk_bf16_f32 v117, v142, v144
	v_cvt_pk_bf16_f32 v118, v135, v141
	v_cvt_pk_bf16_f32 v119, v143, v145
	.loc	1 542 29                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:542:29
	s_nop 0
	v_permlane32_swap_b32_e32 v116, v118
	v_permlane32_swap_b32_e32 v117, v119
	s_nop 0
	v_permlane16_swap_b32_e32 v116, v118
	v_permlane16_swap_b32_e32 v117, v119
	.loc	1 544 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:544:38
	v_add_u32_e32 v148, s5, v4
	.loc	1 548 36                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:548:36
	s_waitcnt lgkmcnt(2)
	v_mfma_f32_16x16x32_bf16 v[120:123], v[164:167], v[116:119], v[120:123]
	.loc	1 544 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:544:38
	ds_read_b64_tr_b16 v[164:165], v148
	v_add_u32_e32 v146, s5, v149
	.loc	1 548 36                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:548:36
	v_pk_mul_f32 v[130:131], v[130:131], v[132:133] op_sel_hi:[1,0]
	v_pk_mul_f32 v[128:129], v[128:129], v[132:133] op_sel_hi:[1,0]
	.loc	1 544 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:544:38
	ds_read_b64_tr_b16 v[170:171], v136 offset:4160
	ds_read_b64_tr_b16 v[174:175], v136 offset:4416
	ds_read_b64_tr_b16 v[178:179], v136 offset:4352
	ds_read_b64_tr_b16 v[182:183], v136 offset:4096
	ds_read_b64_tr_b16 v[168:169], v136
	ds_read_b64_tr_b16 v[180:181], v136 offset:64
	ds_read_b64_tr_b16 v[172:173], v136 offset:256
	ds_read_b64_tr_b16 v[176:177], v136 offset:320
	ds_read_b64_tr_b16 v[154:155], v146 offset:4160
	ds_read_b64_tr_b16 v[186:187], v146 offset:4416
	ds_read_b64_tr_b16 v[190:191], v146 offset:4352
	ds_read_b64_tr_b16 v[194:195], v146 offset:4096
	.loc	1 548 36                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:548:36
	v_mfma_f32_16x16x32_bf16 v[128:131], v[150:153], v[116:119], v[128:131]
	.loc	1 544 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:544:38
	ds_read_b64_tr_b16 v[152:153], v146
	ds_read_b64_tr_b16 v[192:193], v146 offset:64
	ds_read_b64_tr_b16 v[184:185], v146 offset:256
	ds_read_b64_tr_b16 v[188:189], v146 offset:320
	.loc	1 548 36                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:548:36
	v_pk_mul_f32 v[110:111], v[110:111], v[132:133] op_sel_hi:[1,0]
	v_pk_mul_f32 v[108:109], v[108:109], v[132:133] op_sel_hi:[1,0]
	v_pk_mul_f32 v[94:95], v[94:95], v[132:133] op_sel_hi:[1,0]
	v_pk_mul_f32 v[92:93], v[92:93], v[132:133] op_sel_hi:[1,0]
	v_pk_mul_f32 v[86:87], v[86:87], v[132:133] op_sel_hi:[1,0]
	v_pk_mul_f32 v[84:85], v[84:85], v[132:133] op_sel_hi:[1,0]
	v_pk_mul_f32 v[126:127], v[126:127], v[132:133] op_sel_hi:[1,0]
	v_pk_mul_f32 v[124:125], v[124:125], v[132:133] op_sel_hi:[1,0]
	v_pk_mul_f32 v[114:115], v[114:115], v[132:133] op_sel_hi:[1,0]
	v_pk_mul_f32 v[112:113], v[112:113], v[132:133] op_sel_hi:[1,0]
	s_waitcnt lgkmcnt(3)
	v_mfma_f32_16x16x32_bf16 v[108:111], v[152:155], v[116:119], v[108:111]
.Ltmp60:
	.loc	2 263 15                        ; standard.py:263:15 @[ standard.py:293:36 @[ bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:538:41 ] ]
	v_add_f32_e64 v134, v134, v140
	v_add_f32_e64 v135, v135, v141
	v_pk_add_f32 v[140:141], v[142:143], v[144:145]
.Ltmp61:
	.loc	1 548 36                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:548:36
	v_pk_mul_f32 v[106:107], v[106:107], v[132:133] op_sel_hi:[1,0]
	v_mfma_f32_16x16x32_bf16 v[92:95], v[156:159], v[116:119], v[92:95]
	.loc	1 544 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:544:38
	ds_read_b64_tr_b16 v[142:143], v133 offset:512
	ds_read_b64_tr_b16 v[158:159], v133 offset:576
	ds_read_b64_tr_b16 v[150:151], v133 offset:768
	ds_read_b64_tr_b16 v[154:155], v133 offset:832
	.loc	1 548 36                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:548:36
	v_pk_mul_f32 v[104:105], v[104:105], v[132:133] op_sel_hi:[1,0]
	v_pk_mul_f32 v[90:91], v[90:91], v[132:133] op_sel_hi:[1,0]
	v_mfma_f32_16x16x32_bf16 v[84:87], v[160:163], v[116:119], v[84:87]
	.loc	1 544 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:544:38
	ds_read_b64_tr_b16 v[144:145], v133 offset:4672
	ds_read_b64_tr_b16 v[152:153], v133 offset:4928
	ds_read_b64_tr_b16 v[156:157], v133 offset:4864
	ds_read_b64_tr_b16 v[160:161], v133 offset:4608
	.loc	1 548 36                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:548:36
	v_pk_mul_f32 v[88:89], v[88:89], v[132:133] op_sel_hi:[1,0]
	v_pk_mul_f32 v[82:83], v[82:83], v[132:133] op_sel_hi:[1,0]
	v_mfma_f32_16x16x32_bf16 v[124:127], v[168:171], v[116:119], v[124:127]
	v_mul_f32_e64 v80, v80, v132
	v_mul_f32_e64 v81, v81, v132
	v_pk_mul_f32 v[74:75], v[74:75], v[132:133] op_sel_hi:[1,0]
	v_pk_mul_f32 v[72:73], v[72:73], v[132:133] op_sel_hi:[1,0]
	v_mfma_f32_16x16x32_bf16 v[112:115], v[180:183], v[116:119], v[112:115]
	.loc	1 544 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:544:38
	ds_read_b64_tr_b16 v[196:197], v148 offset:64
	ds_read_b64_tr_b16 v[168:169], v148 offset:256
	ds_read_b64_tr_b16 v[180:181], v148 offset:320
	ds_read_b64_tr_b16 v[166:167], v148 offset:4160
	ds_read_b64_tr_b16 v[170:171], v148 offset:4416
	ds_read_b64_tr_b16 v[182:183], v148 offset:4352
	ds_read_b64_tr_b16 v[198:199], v148 offset:4096
	.loc	1 548 36                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:548:36
	v_pk_mul_f32 v[54:55], v[54:55], v[132:133] op_sel_hi:[1,0]
	v_pk_mul_f32 v[52:53], v[52:53], v[132:133] op_sel_hi:[1,0]
.Ltmp62:
	.loc	2 263 15                        ; standard.py:263:15 @[ standard.py:293:36 @[ bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:538:41 ] ]
	v_pk_add_f32 v[134:135], v[134:135], v[140:141]
.Ltmp63:
	.loc	1 548 36                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:548:36
	v_mfma_f32_16x16x32_bf16 v[88:91], v[172:175], v[116:119], v[88:91]
.Ltmp64:
	.loc	2 263 15                        ; standard.py:263:15 @[ standard.py:293:36 @[ bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:538:41 ] ]
	v_pk_add_f32 v[134:135], v[134:135], v[134:135] op_sel:[0,1] op_sel_hi:[1,0]
.Ltmp65:
	.loc	1 548 36                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:548:36
	v_pk_mul_f32 v[102:103], v[102:103], v[132:133] op_sel_hi:[1,0]
	v_pk_mul_f32 v[100:101], v[100:101], v[132:133] op_sel_hi:[1,0]
	v_mfma_f32_16x16x32_bf16 v[80:83], v[176:179], v[116:119], v[80:83]
	v_mul_f32_e64 v98, v98, v132
	v_mul_f32_e64 v99, v99, v132
	v_pk_mul_f32 v[96:97], v[96:97], v[132:133] op_sel_hi:[1,0]
	v_pk_mul_f32 v[78:79], v[78:79], v[132:133] op_sel_hi:[1,0]
	s_waitcnt lgkmcnt(2)
	v_mfma_f32_16x16x32_bf16 v[72:75], v[168:171], v[116:119], v[72:75]
	v_mul_f32_e64 v76, v76, v132
	v_mul_f32_e64 v77, v77, v132
	v_pk_mul_f32 v[70:71], v[70:71], v[132:133] op_sel_hi:[1,0]
	v_pk_mul_f32 v[68:69], v[68:69], v[132:133] op_sel_hi:[1,0]
	v_mfma_f32_16x16x32_bf16 v[52:55], v[158:161], v[116:119], v[52:55]
	.loc	1 544 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:544:38
	ds_read_b64_tr_b16 v[158:159], v148 offset:512
	.loc	1 548 36                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:548:36
	v_pk_mul_f32 v[66:67], v[66:67], v[132:133] op_sel_hi:[1,0]
	v_pk_mul_f32 v[64:65], v[64:65], v[132:133] op_sel_hi:[1,0]
	v_mfma_f32_16x16x32_bf16 v[104:107], v[164:167], v[116:119], v[104:107]
	.loc	1 544 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:544:38
	ds_read_b64_tr_b16 v[164:165], v136 offset:4672
	ds_read_b64_tr_b16 v[168:169], v136 offset:4928
	ds_read_b64_tr_b16 v[172:173], v136 offset:4864
	ds_read_b64_tr_b16 v[176:177], v136 offset:4608
	.loc	1 548 36                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:548:36
	v_pk_mul_f32 v[62:63], v[62:63], v[132:133] op_sel_hi:[1,0]
	v_pk_mul_f32 v[60:61], v[60:61], v[132:133] op_sel_hi:[1,0]
	v_pk_mul_f32 v[58:59], v[58:59], v[132:133] op_sel_hi:[1,0]
	v_pk_mul_f32 v[56:57], v[56:57], v[132:133] op_sel_hi:[1,0]
	v_pk_mul_f32 v[50:51], v[50:51], v[132:133] op_sel_hi:[1,0]
	v_pk_mul_f32 v[48:49], v[48:49], v[132:133] op_sel_hi:[1,0]
	v_pk_mul_f32 v[46:47], v[46:47], v[132:133] op_sel_hi:[1,0]
	v_pk_mul_f32 v[44:45], v[44:45], v[132:133] op_sel_hi:[1,0]
	v_pk_mul_f32 v[42:43], v[42:43], v[132:133] op_sel_hi:[1,0]
	v_pk_mul_f32 v[40:41], v[40:41], v[132:133] op_sel_hi:[1,0]
	v_pk_mul_f32 v[38:39], v[38:39], v[132:133] op_sel_hi:[1,0]
	v_pk_mul_f32 v[36:37], v[36:37], v[132:133] op_sel_hi:[1,0]
	v_pk_mul_f32 v[34:35], v[34:35], v[132:133] op_sel_hi:[1,0]
	v_pk_mul_f32 v[32:33], v[32:33], v[132:133] op_sel_hi:[1,0]
.Ltmp66:
	.loc	2 293 36                        ; standard.py:293:36 @[ bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:538:41 ]
	v_mov_b32_e32 v133, v134
.Ltmp67:
	.loc	1 544 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:544:38
	ds_read_b64_tr_b16 v[162:163], v136 offset:512
	ds_read_b64_tr_b16 v[174:175], v136 offset:576
	ds_read_b64_tr_b16 v[166:167], v136 offset:768
	ds_read_b64_tr_b16 v[170:171], v136 offset:832
	.loc	1 548 36                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:548:36
	v_pk_mul_f32 v[30:31], v[30:31], v[132:133] op_sel_hi:[1,0]
	v_pk_mul_f32 v[28:29], v[28:29], v[132:133] op_sel_hi:[1,0]
.Ltmp68:
	.loc	2 293 36                        ; standard.py:293:36 @[ bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:538:41 ]
	v_permlane32_swap_b32_e32 v134, v133
.Ltmp69:
	.loc	2 263 15                        ; standard.py:263:15 @[ standard.py:293:36 @[ bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:538:41 ] ]
	v_add_f32_e32 v138, v134, v133
.Ltmp70:
	.loc	2 293 36                        ; standard.py:293:36 @[ bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:538:41 ]
	v_mov_b32_e32 v136, v138
.Ltmp71:
	.loc	1 548 36                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:548:36
	v_mfma_f32_16x16x32_bf16 v[100:103], v[192:195], v[116:119], v[100:103]
.Ltmp72:
	.loc	2 293 36                        ; standard.py:293:36 @[ bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:538:41 ]
	s_nop 0
	v_permlane16_swap_b32_e32 v138, v136
.Ltmp73:
	.loc	2 263 15                        ; standard.py:263:15 @[ standard.py:293:36 @[ bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:538:41 ] ]
	v_pk_add_f32 v[134:135], v[138:139], v[136:137]
.Ltmp74:
	.loc	1 548 36                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:548:36
	v_mfma_f32_16x16x32_bf16 v[76:79], v[184:187], v[116:119], v[76:79]
	v_accvgpr_read_b32 v4, a4
	v_pk_mul_f32 v[26:27], v[26:27], v[132:133] op_sel_hi:[1,0]
	v_pk_mul_f32 v[24:25], v[24:25], v[132:133] op_sel_hi:[1,0]
	v_mfma_f32_16x16x32_bf16 v[68:71], v[188:191], v[116:119], v[68:71]
	v_mul_f32_e64 v22, v22, v132
	v_mul_f32_e64 v23, v23, v132
	v_pk_mul_f32 v[20:21], v[20:21], v[132:133] op_sel_hi:[1,0]
	v_pk_mul_f32 v[18:19], v[18:19], v[132:133] op_sel_hi:[1,0]
	s_waitcnt lgkmcnt(10)
	v_mfma_f32_16x16x32_bf16 v[64:67], v[180:183], v[116:119], v[64:67]
	v_mul_f32_e64 v16, v16, v132
	v_mul_f32_e64 v17, v17, v132
	v_pk_mul_f32 v[14:15], v[14:15], v[132:133] op_sel_hi:[1,0]
	v_pk_mul_f32 v[12:13], v[12:13], v[132:133] op_sel_hi:[1,0]
	v_mfma_f32_16x16x32_bf16 v[60:63], v[142:145], v[116:119], v[60:63]
	.loc	1 544 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:544:38
	ds_read_b64_tr_b16 v[144:145], v146 offset:4672
	ds_read_b64_tr_b16 v[180:181], v146 offset:4928
	ds_read_b64_tr_b16 v[184:185], v146 offset:4864
	ds_read_b64_tr_b16 v[188:189], v146 offset:4608
	ds_read_b64_tr_b16 v[142:143], v146 offset:512
	ds_read_b64_tr_b16 v[186:187], v146 offset:576
	ds_read_b64_tr_b16 v[178:179], v146 offset:768
	ds_read_b64_tr_b16 v[182:183], v146 offset:832
	.loc	1 548 36                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:548:36
	v_pk_mul_f32 v[10:11], v[10:11], v[132:133] op_sel_hi:[1,0]
	s_waitcnt lgkmcnt(11)
	v_mfma_f32_16x16x32_bf16 v[56:59], v[162:165], v[116:119], v[56:59]
	v_mul_f32_e64 v8, v8, v132
	v_mul_f32_e64 v9, v9, v132
	.loc	1 538 20                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:538:20
	v_mul_f32_e32 v133, v135, v132
	v_accvgpr_read_b32 v5, a5
	.loc	1 548 36                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:548:36
	s_waitcnt lgkmcnt(10)
	v_mfma_f32_16x16x32_bf16 v[48:51], v[174:177], v[116:119], v[48:51]
	.loc	1 544 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:544:38
	ds_read_b64_tr_b16 v[160:161], v148 offset:4672
	ds_read_b64_tr_b16 v[164:165], v148 offset:4928
	ds_read_b64_tr_b16 v[176:177], v148 offset:4864
	ds_read_b64_tr_b16 v[192:193], v148 offset:4608
	ds_read_b64_tr_b16 v[190:191], v148 offset:576
	ds_read_b64_tr_b16 v[162:163], v148 offset:768
	ds_read_b64_tr_b16 v[174:175], v148 offset:832
	v_accvgpr_read_b32 v6, a6
	v_accvgpr_read_b32 v7, a7
	.loc	1 548 36                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:548:36
	v_pk_mul_f32 v[6:7], v[6:7], v[132:133] op_sel_hi:[1,0]
	v_pk_mul_f32 v[4:5], v[4:5], v[132:133] op_sel_hi:[1,0]
	.loc	1 538 31                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:538:31
	v_add_f32_e32 v133, v134, v133
	.loc	1 548 36                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:548:36
	v_pk_mul_f32 v[2:3], v[2:3], v[132:133] op_sel_hi:[1,0]
	v_pk_mul_f32 v[0:1], v[0:1], v[132:133] op_sel_hi:[1,0]
	v_mfma_f32_16x16x32_bf16 v[96:99], v[196:199], v[116:119], v[96:99]
	s_waitcnt lgkmcnt(10)
	v_mfma_f32_16x16x32_bf16 v[44:47], v[142:145], v[116:119], v[44:47]
	s_waitcnt lgkmcnt(6)
	v_mfma_f32_16x16x32_bf16 v[40:43], v[158:161], v[116:119], v[40:43]
	v_mfma_f32_16x16x32_bf16 v[36:39], v[186:189], v[116:119], v[36:39]
	s_waitcnt lgkmcnt(2)
	v_mfma_f32_16x16x32_bf16 v[32:35], v[190:193], v[116:119], v[32:35]
	v_mfma_f32_16x16x32_bf16 v[28:31], v[150:153], v[116:119], v[28:31]
	v_mfma_f32_16x16x32_bf16 v[24:27], v[166:169], v[116:119], v[24:27]
	v_mfma_f32_16x16x32_bf16 v[20:23], v[154:157], v[116:119], v[20:23]
	v_mfma_f32_16x16x32_bf16 v[16:19], v[170:173], v[116:119], v[16:19]
	v_mfma_f32_16x16x32_bf16 v[12:15], v[178:181], v[116:119], v[12:15]
	s_waitcnt lgkmcnt(1)
	v_mfma_f32_16x16x32_bf16 v[8:11], v[162:165], v[116:119], v[8:11]
	v_mfma_f32_16x16x32_bf16 v[4:7], v[182:185], v[116:119], v[4:7]
	s_waitcnt lgkmcnt(0)
	v_mfma_f32_16x16x32_bf16 v[0:3], v[174:177], v[116:119], v[0:3]
	.loc	1 557 16                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:557:16
	v_div_scale_f32 v117, s[0:1], v133, v133, 1.0
	v_accvgpr_read_b32 v116, a93
	v_rcp_f32_e32 v118, v117
	.loc	1 552 54                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:552:54
	v_lshl_or_b32 v116, s19, 4, v116
	.loc	1 552 41 is_stmt 0              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:552:41
	v_or_b32_e32 v116, s27, v116
	.loc	1 554 87 is_stmt 1              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:554:87
	s_mul_i32 s0, s4, s18
	.loc	1 554 60 is_stmt 0              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:554:60
	v_mul_lo_u32 v116, v116, s3
	.loc	1 554 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:554:38
	s_add_i32 s0, s0, s2
	.loc	1 554 73                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:554:73
	v_add_u32_e32 v132, s0, v116
	.loc	1 557 16 is_stmt 1              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:557:16
	v_fma_f32 v116, -v117, v118, 1.0
	v_fmac_f32_e32 v118, v116, v118
	v_div_scale_f32 v116, vcc, 1.0, v133, 1.0
	v_mul_f32_e32 v119, v116, v118
	v_fma_f32 v134, -v117, v119, v116
	v_fmac_f32_e32 v119, v134, v118
	v_fma_f32 v116, -v117, v119, v116
	v_div_fmas_f32 v116, v116, v118, v119
	v_div_fixup_f32 v116, v116, v133, 1.0
	.loc	1 558 26                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:558:26
	v_pk_mul_f32 v[118:119], v[116:117], v[128:129] op_sel_hi:[0,1]
	v_pk_mul_f32 v[128:129], v[116:117], v[130:131] op_sel_hi:[0,1]
	v_pk_mul_f32 v[124:125], v[116:117], v[124:125] op_sel_hi:[0,1]
	v_pk_mul_f32 v[126:127], v[116:117], v[126:127] op_sel_hi:[0,1]
	v_pk_mul_f32 v[0:1], v[116:117], v[0:1] op_sel_hi:[0,1]
	v_pk_mul_f32 v[2:3], v[116:117], v[2:3] op_sel_hi:[0,1]
	v_pk_mul_f32 v[120:121], v[116:117], v[120:121] op_sel_hi:[0,1]
	v_pk_mul_f32 v[122:123], v[116:117], v[122:123] op_sel_hi:[0,1]
	v_pk_mul_f32 v[112:113], v[116:117], v[112:113] op_sel_hi:[0,1]
	v_pk_mul_f32 v[114:115], v[116:117], v[114:115] op_sel_hi:[0,1]
	v_pk_mul_f32 v[108:109], v[116:117], v[108:109] op_sel_hi:[0,1]
	v_pk_mul_f32 v[110:111], v[116:117], v[110:111] op_sel_hi:[0,1]
	v_pk_mul_f32 v[104:105], v[116:117], v[104:105] op_sel_hi:[0,1]
	v_pk_mul_f32 v[106:107], v[116:117], v[106:107] op_sel_hi:[0,1]
	v_pk_mul_f32 v[100:101], v[116:117], v[100:101] op_sel_hi:[0,1]
	v_pk_mul_f32 v[102:103], v[116:117], v[102:103] op_sel_hi:[0,1]
	v_pk_mul_f32 v[96:97], v[116:117], v[96:97] op_sel_hi:[0,1]
	v_pk_mul_f32 v[98:99], v[116:117], v[98:99] op_sel_hi:[0,1]
	v_pk_mul_f32 v[92:93], v[116:117], v[92:93] op_sel_hi:[0,1]
	v_pk_mul_f32 v[94:95], v[116:117], v[94:95] op_sel_hi:[0,1]
	v_pk_mul_f32 v[88:89], v[116:117], v[88:89] op_sel_hi:[0,1]
	v_pk_mul_f32 v[90:91], v[116:117], v[90:91] op_sel_hi:[0,1]
	v_pk_mul_f32 v[84:85], v[116:117], v[84:85] op_sel_hi:[0,1]
	v_pk_mul_f32 v[86:87], v[116:117], v[86:87] op_sel_hi:[0,1]
	v_pk_mul_f32 v[80:81], v[116:117], v[80:81] op_sel_hi:[0,1]
	v_pk_mul_f32 v[82:83], v[116:117], v[82:83] op_sel_hi:[0,1]
	v_pk_mul_f32 v[76:77], v[116:117], v[76:77] op_sel_hi:[0,1]
	v_pk_mul_f32 v[78:79], v[116:117], v[78:79] op_sel_hi:[0,1]
	v_pk_mul_f32 v[72:73], v[116:117], v[72:73] op_sel_hi:[0,1]
	v_pk_mul_f32 v[74:75], v[116:117], v[74:75] op_sel_hi:[0,1]
	v_pk_mul_f32 v[68:69], v[116:117], v[68:69] op_sel_hi:[0,1]
	v_pk_mul_f32 v[70:71], v[116:117], v[70:71] op_sel_hi:[0,1]
	v_pk_mul_f32 v[64:65], v[116:117], v[64:65] op_sel_hi:[0,1]
	v_pk_mul_f32 v[66:67], v[116:117], v[66:67] op_sel_hi:[0,1]
	v_pk_mul_f32 v[60:61], v[116:117], v[60:61] op_sel_hi:[0,1]
	v_pk_mul_f32 v[62:63], v[116:117], v[62:63] op_sel_hi:[0,1]
	v_pk_mul_f32 v[56:57], v[116:117], v[56:57] op_sel_hi:[0,1]
	v_pk_mul_f32 v[58:59], v[116:117], v[58:59] op_sel_hi:[0,1]
	v_pk_mul_f32 v[52:53], v[116:117], v[52:53] op_sel_hi:[0,1]
	v_pk_mul_f32 v[54:55], v[116:117], v[54:55] op_sel_hi:[0,1]
	v_pk_mul_f32 v[48:49], v[116:117], v[48:49] op_sel_hi:[0,1]
	v_pk_mul_f32 v[50:51], v[116:117], v[50:51] op_sel_hi:[0,1]
	v_pk_mul_f32 v[44:45], v[116:117], v[44:45] op_sel_hi:[0,1]
	v_pk_mul_f32 v[46:47], v[116:117], v[46:47] op_sel_hi:[0,1]
	v_pk_mul_f32 v[40:41], v[116:117], v[40:41] op_sel_hi:[0,1]
	v_pk_mul_f32 v[42:43], v[116:117], v[42:43] op_sel_hi:[0,1]
	v_pk_mul_f32 v[36:37], v[116:117], v[36:37] op_sel_hi:[0,1]
	v_pk_mul_f32 v[38:39], v[116:117], v[38:39] op_sel_hi:[0,1]
	v_pk_mul_f32 v[32:33], v[116:117], v[32:33] op_sel_hi:[0,1]
	v_pk_mul_f32 v[34:35], v[116:117], v[34:35] op_sel_hi:[0,1]
	v_pk_mul_f32 v[28:29], v[116:117], v[28:29] op_sel_hi:[0,1]
	v_pk_mul_f32 v[30:31], v[116:117], v[30:31] op_sel_hi:[0,1]
	v_pk_mul_f32 v[24:25], v[116:117], v[24:25] op_sel_hi:[0,1]
	v_pk_mul_f32 v[26:27], v[116:117], v[26:27] op_sel_hi:[0,1]
	v_pk_mul_f32 v[20:21], v[116:117], v[20:21] op_sel_hi:[0,1]
	v_pk_mul_f32 v[22:23], v[116:117], v[22:23] op_sel_hi:[0,1]
	v_pk_mul_f32 v[16:17], v[116:117], v[16:17] op_sel_hi:[0,1]
	v_pk_mul_f32 v[18:19], v[116:117], v[18:19] op_sel_hi:[0,1]
	v_pk_mul_f32 v[12:13], v[116:117], v[12:13] op_sel_hi:[0,1]
	v_pk_mul_f32 v[14:15], v[116:117], v[14:15] op_sel_hi:[0,1]
	v_pk_mul_f32 v[8:9], v[116:117], v[8:9] op_sel_hi:[0,1]
	v_pk_mul_f32 v[10:11], v[116:117], v[10:11] op_sel_hi:[0,1]
	v_pk_mul_f32 v[4:5], v[116:117], v[4:5] op_sel_hi:[0,1]
	v_pk_mul_f32 v[6:7], v[116:117], v[6:7] op_sel_hi:[0,1]
	.loc	1 558 43 is_stmt 0              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:558:43
	v_cvt_pk_bf16_f32 v116, v118, v119
	v_cvt_pk_bf16_f32 v117, v128, v129
	v_cvt_pk_bf16_f32 v118, v124, v125
	v_cvt_pk_bf16_f32 v119, v126, v127
	v_cvt_pk_bf16_f32 v0, v0, v1
	v_cvt_pk_bf16_f32 v1, v2, v3
	s_mov_b32 s27, 0x27000
	.loc	1 554 100 is_stmt 1             ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:554:100
	v_add_lshl_u32 v2, v132, v147, 1
	.loc	1 560 30                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:560:30
	v_add_lshl_u32 v3, v132, v200, 1
	.loc	1 558 43                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:558:43
	v_cvt_pk_bf16_f32 v120, v120, v121
	v_cvt_pk_bf16_f32 v121, v122, v123
	v_cvt_pk_bf16_f32 v112, v112, v113
	v_cvt_pk_bf16_f32 v113, v114, v115
	v_cvt_pk_bf16_f32 v108, v108, v109
	v_cvt_pk_bf16_f32 v109, v110, v111
	v_cvt_pk_bf16_f32 v104, v104, v105
	v_cvt_pk_bf16_f32 v105, v106, v107
	v_cvt_pk_bf16_f32 v100, v100, v101
	v_cvt_pk_bf16_f32 v101, v102, v103
	v_cvt_pk_bf16_f32 v96, v96, v97
	v_cvt_pk_bf16_f32 v97, v98, v99
	v_cvt_pk_bf16_f32 v92, v92, v93
	v_cvt_pk_bf16_f32 v93, v94, v95
	v_cvt_pk_bf16_f32 v88, v88, v89
	v_cvt_pk_bf16_f32 v89, v90, v91
	v_cvt_pk_bf16_f32 v84, v84, v85
	v_cvt_pk_bf16_f32 v85, v86, v87
	v_cvt_pk_bf16_f32 v80, v80, v81
	v_cvt_pk_bf16_f32 v81, v82, v83
	v_cvt_pk_bf16_f32 v76, v76, v77
	v_cvt_pk_bf16_f32 v77, v78, v79
	v_cvt_pk_bf16_f32 v72, v72, v73
	v_cvt_pk_bf16_f32 v73, v74, v75
	v_cvt_pk_bf16_f32 v68, v68, v69
	v_cvt_pk_bf16_f32 v69, v70, v71
	v_cvt_pk_bf16_f32 v64, v64, v65
	v_cvt_pk_bf16_f32 v65, v66, v67
	v_cvt_pk_bf16_f32 v60, v60, v61
	v_cvt_pk_bf16_f32 v61, v62, v63
	v_cvt_pk_bf16_f32 v56, v56, v57
	v_cvt_pk_bf16_f32 v57, v58, v59
	v_cvt_pk_bf16_f32 v52, v52, v53
	v_cvt_pk_bf16_f32 v53, v54, v55
	v_cvt_pk_bf16_f32 v48, v48, v49
	v_cvt_pk_bf16_f32 v49, v50, v51
	v_cvt_pk_bf16_f32 v44, v44, v45
	v_cvt_pk_bf16_f32 v45, v46, v47
	v_cvt_pk_bf16_f32 v40, v40, v41
	v_cvt_pk_bf16_f32 v41, v42, v43
	v_cvt_pk_bf16_f32 v36, v36, v37
	v_cvt_pk_bf16_f32 v37, v38, v39
	v_cvt_pk_bf16_f32 v32, v32, v33
	v_cvt_pk_bf16_f32 v33, v34, v35
	v_cvt_pk_bf16_f32 v28, v28, v29
	v_cvt_pk_bf16_f32 v29, v30, v31
	v_cvt_pk_bf16_f32 v24, v24, v25
	v_cvt_pk_bf16_f32 v25, v26, v27
	v_cvt_pk_bf16_f32 v20, v20, v21
	v_cvt_pk_bf16_f32 v21, v22, v23
	v_cvt_pk_bf16_f32 v16, v16, v17
	v_cvt_pk_bf16_f32 v17, v18, v19
	v_cvt_pk_bf16_f32 v12, v12, v13
	v_cvt_pk_bf16_f32 v13, v14, v15
	v_cvt_pk_bf16_f32 v8, v8, v9
	v_cvt_pk_bf16_f32 v9, v10, v11
	v_cvt_pk_bf16_f32 v4, v4, v5
	v_cvt_pk_bf16_f32 v5, v6, v7
	.loc	1 560 30                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:560:30
	buffer_store_dwordx2 v[116:117], v2, s[24:27], 0 offen
	buffer_store_dwordx2 v[118:119], v3, s[24:27], 0 offen
	buffer_store_dwordx2 v[120:121], v2, s[24:27], 0 offen offset:64
	buffer_store_dwordx2 v[112:113], v2, s[24:27], 0 offen offset:96
	buffer_store_dwordx2 v[108:109], v2, s[24:27], 0 offen offset:128
	buffer_store_dwordx2 v[104:105], v2, s[24:27], 0 offen offset:160
	buffer_store_dwordx2 v[100:101], v2, s[24:27], 0 offen offset:192
	buffer_store_dwordx2 v[96:97], v2, s[24:27], 0 offen offset:224
	buffer_store_dwordx2 v[92:93], v2, s[24:27], 0 offen offset:256
	buffer_store_dwordx2 v[88:89], v2, s[24:27], 0 offen offset:288
	buffer_store_dwordx2 v[84:85], v2, s[24:27], 0 offen offset:320
	buffer_store_dwordx2 v[80:81], v2, s[24:27], 0 offen offset:352
	buffer_store_dwordx2 v[76:77], v2, s[24:27], 0 offen offset:384
	buffer_store_dwordx2 v[72:73], v2, s[24:27], 0 offen offset:416
	buffer_store_dwordx2 v[68:69], v2, s[24:27], 0 offen offset:448
	buffer_store_dwordx2 v[64:65], v2, s[24:27], 0 offen offset:480
	buffer_store_dwordx2 v[60:61], v2, s[24:27], 0 offen offset:512
	buffer_store_dwordx2 v[56:57], v2, s[24:27], 0 offen offset:544
	buffer_store_dwordx2 v[52:53], v2, s[24:27], 0 offen offset:576
	buffer_store_dwordx2 v[48:49], v2, s[24:27], 0 offen offset:608
	buffer_store_dwordx2 v[44:45], v2, s[24:27], 0 offen offset:640
	buffer_store_dwordx2 v[40:41], v2, s[24:27], 0 offen offset:672
	buffer_store_dwordx2 v[36:37], v2, s[24:27], 0 offen offset:704
	buffer_store_dwordx2 v[32:33], v2, s[24:27], 0 offen offset:736
	buffer_store_dwordx2 v[28:29], v2, s[24:27], 0 offen offset:768
	buffer_store_dwordx2 v[24:25], v2, s[24:27], 0 offen offset:800
	buffer_store_dwordx2 v[20:21], v2, s[24:27], 0 offen offset:832
	buffer_store_dwordx2 v[16:17], v2, s[24:27], 0 offen offset:864
	buffer_store_dwordx2 v[12:13], v2, s[24:27], 0 offen offset:896
	buffer_store_dwordx2 v[8:9], v2, s[24:27], 0 offen offset:928
	buffer_store_dwordx2 v[4:5], v2, s[24:27], 0 offen offset:960
	buffer_store_dwordx2 v[0:1], v2, s[24:27], 0 offen offset:992
	.loc	1 560 4 is_stmt 0               ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:560:4
	s_endpgm
.Ltmp75:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel _mla_attn_kernel_gluon
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 120
		.amdhsa_user_sgpr_count 16
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_kernarg_preload_length 14
		.amdhsa_user_sgpr_kernarg_preload_offset 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_enable_private_segment 0
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 1
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 366
		.amdhsa_next_free_sgpr 65
		.amdhsa_accum_offset 256
		.amdhsa_reserve_vcc 1
		.amdhsa_reserve_xnack_mask 1
		.amdhsa_float_round_mode_32 0
		.amdhsa_float_round_mode_16_64 0
		.amdhsa_float_denorm_mode_32 3
		.amdhsa_float_denorm_mode_16_64 3
		.amdhsa_dx10_clamp 1
		.amdhsa_ieee_mode 1
		.amdhsa_fp16_overflow 0
		.amdhsa_tg_split 0
		.amdhsa_exception_fp_ieee_invalid_op 0
		.amdhsa_exception_fp_denorm_src 0
		.amdhsa_exception_fp_ieee_div_zero 0
		.amdhsa_exception_fp_ieee_overflow 0
		.amdhsa_exception_fp_ieee_underflow 0
		.amdhsa_exception_fp_ieee_inexact 0
		.amdhsa_exception_int_div_zero 0
	.end_amdhsa_kernel
	.text
.Lfunc_end0:
	.size	_mla_attn_kernel_gluon, .Lfunc_end0-_mla_attn_kernel_gluon
	.cfi_endproc
                                        ; -- End function
	.set _mla_attn_kernel_gluon.num_vgpr, 256
	.set _mla_attn_kernel_gluon.num_agpr, 110
	.set _mla_attn_kernel_gluon.numbered_sgpr, 65
	.set _mla_attn_kernel_gluon.num_named_barrier, 0
	.set _mla_attn_kernel_gluon.private_seg_size, 0
	.set _mla_attn_kernel_gluon.uses_vcc, 1
	.set _mla_attn_kernel_gluon.uses_flat_scratch, 0
	.set _mla_attn_kernel_gluon.has_dyn_sized_stack, 0
	.set _mla_attn_kernel_gluon.has_recursion, 0
	.set _mla_attn_kernel_gluon.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 15860
; TotalNumSgprs: 71
; NumVgprs: 256
; NumAgprs: 110
; TotalNumVgprs: 366
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 8
; VGPRBlocks: 45
; NumSGPRsForWavesPerEU: 71
; NumVGPRsForWavesPerEU: 366
; AccumOffset: 256
; Occupancy: 1
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
; COMPUTE_PGM_RSRC2:USER_SGPR: 16
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 1
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 0
; COMPUTE_PGM_RSRC3_GFX90A:ACCUM_OFFSET: 63
; COMPUTE_PGM_RSRC3_GFX90A:TG_SPLIT: 0
	.text
	.p2alignl 6, 3212836864
	.fill 256, 4, 3212836864
	.section	.AMDGPU.gpr_maximums,"",@progbits
	.set amdgpu.max_num_vgpr, 0
	.set amdgpu.max_num_agpr, 0
	.set amdgpu.max_num_sgpr, 0
	.set amdgpu.max_num_named_barrier, 0
	.text
	.section	.debug_abbrev,"",@progbits
	.byte	1                               ; Abbreviation Code
	.byte	17                              ; DW_TAG_compile_unit
	.byte	1                               ; DW_CHILDREN_yes
	.byte	37                              ; DW_AT_producer
	.byte	14                              ; DW_FORM_strp
	.byte	19                              ; DW_AT_language
	.byte	5                               ; DW_FORM_data2
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	16                              ; DW_AT_stmt_list
	.byte	23                              ; DW_FORM_sec_offset
	.byte	27                              ; DW_AT_comp_dir
	.byte	14                              ; DW_FORM_strp
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	2                               ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	0                               ; DW_CHILDREN_no
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	32                              ; DW_AT_inline
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	3                               ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	1                               ; DW_CHILDREN_yes
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	4                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	0                               ; DW_CHILDREN_no
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	5                               ; DW_FORM_data2
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	5                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	1                               ; DW_CHILDREN_yes
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	5                               ; DW_FORM_data2
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	6                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	0                               ; DW_CHILDREN_no
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	11                              ; DW_FORM_data1
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	7                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	1                               ; DW_CHILDREN_yes
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	5                               ; DW_FORM_data2
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	0                               ; EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 ; Length of Unit
.Ldebug_info_start0:
	.short	4                               ; DWARF version number
	.long	.debug_abbrev                   ; Offset Into Abbrev. Section
	.byte	8                               ; Address Size (in bytes)
	.byte	1                               ; Abbrev [1] 0xb:0xec DW_TAG_compile_unit
	.long	.Linfo_string0                  ; DW_AT_producer
	.short	2                               ; DW_AT_language
	.long	.Linfo_string1                  ; DW_AT_name
	.long	.Lline_table_start0             ; DW_AT_stmt_list
	.long	.Linfo_string2                  ; DW_AT_comp_dir
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.byte	2                               ; Abbrev [2] 0x2a:0x6 DW_TAG_subprogram
	.long	.Linfo_string3                  ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	3                               ; Abbrev [3] 0x30:0xc6 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	371                             ; DW_AT_call_line
	.byte	37                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x4e:0x22 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp8                          ; DW_AT_low_pc
	.long	.Ltmp12-.Ltmp8                  ; DW_AT_high_pc
	.byte	1                               ; DW_AT_call_file
	.short	449                             ; DW_AT_call_line
	.byte	40                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x63:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	40                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	7                               ; Abbrev [7] 0x70:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	453                             ; DW_AT_call_line
	.byte	45                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x7d:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	36                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	7                               ; Abbrev [7] 0x8b:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	501                             ; DW_AT_call_line
	.byte	36                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x98:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges5                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	40                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	7                               ; Abbrev [7] 0xa5:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges6                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	505                             ; DW_AT_call_line
	.byte	41                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0xb2:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges7                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	36                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	7                               ; Abbrev [7] 0xc0:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges8                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	534                             ; DW_AT_call_line
	.byte	36                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0xcd:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges9                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	40                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	7                               ; Abbrev [7] 0xda:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges10                ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	538                             ; DW_AT_call_line
	.byte	41                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0xe7:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges11                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	36                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges9:
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges10:
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges11:
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0
.Linfo_string1:
	.asciz	"bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py" ; string offset=7
.Linfo_string2:
	.asciz	"/home/dewwang/FlashMLA/benchmark" ; string offset=54
.Linfo_string3:
	.asciz	"_mla_attn_kernel_gluon"        ; string offset=87
	.section	".note.GNU-stack","",@progbits
	.amdgpu_metadata
---
amdhsa.kernels:
  - .agpr_count:     110
    .args:
      - .address_space:  global
        .offset:         0
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         8
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         16
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         24
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         32
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         40
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         48
        .size:           8
        .value_kind:     global_buffer
      - .offset:         56
        .size:           4
        .value_kind:     by_value
      - .offset:         60
        .size:           4
        .value_kind:     by_value
      - .offset:         64
        .size:           4
        .value_kind:     by_value
      - .offset:         68
        .size:           4
        .value_kind:     by_value
      - .offset:         72
        .size:           4
        .value_kind:     by_value
      - .offset:         76
        .size:           4
        .value_kind:     by_value
      - .offset:         80
        .size:           4
        .value_kind:     by_value
      - .offset:         84
        .size:           4
        .value_kind:     by_value
      - .offset:         88
        .size:           4
        .value_kind:     by_value
      - .offset:         92
        .size:           4
        .value_kind:     by_value
      - .offset:         96
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         104
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         112
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 120
    .max_flat_workgroup_size: 256
    .name:           _mla_attn_kernel_gluon
    .private_segment_fixed_size: 0
    .sgpr_count:     71
    .sgpr_spill_count: 0
    .symbol:         _mla_attn_kernel_gluon.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     366
    .vgpr_spill_count: 0
    .wavefront_size: 64
amdhsa.target:   amdgcn-amd-amdhsa--gfx950
amdhsa.version:
  - 1
  - 2
...

	.end_amdgpu_metadata
	.section	.debug_line,"",@progbits
.Lline_table_start0:
