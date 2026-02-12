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
	v_lshlrev_b32_e32 v135, 3, v3
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
	v_add_u32_e32 v1, s36, v135
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
	v_or_b32_e32 v148, s19, v1
	.loc	1 356 30                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:356:30
	v_and_b32_e32 v137, 56, v2
	.loc	1 357 43                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:357:43
	v_or_b32_e32 v4, s27, v148
	.loc	1 358 28                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:358:28
	s_mul_i32 s3, s38, s26
	.loc	1 359 66                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:359:66
	s_add_i32 s12, 0, 0x207e0
	.loc	1 357 43                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:357:43
	v_or_b32_e32 v5, 32, v4
	.loc	1 358 69                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:358:69
	v_mul_lo_u32 v4, v4, s39
	.loc	1 358 45 is_stmt 0              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:358:45
	v_add_u32_e32 v7, s3, v137
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
	v_add_u32_e32 v132, v16, v3
	.loc	1 389 50                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:389:50
	v_add_u32_e32 v4, s3, v135
	.loc	1 390 80                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:390:80
	v_add_u32_e32 v17, 0xfffff800, v17
	v_lshlrev_b32_e32 v165, 2, v132
	.loc	1 387 42                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:387:42
	s_or_b32 s5, s4, s42
	.loc	1 390 80                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:390:80
	v_ashrrev_i32_e32 v17, 3, v17
	v_xor_b32_e32 v18, 0x1040, v15
	v_xor_b32_e32 v19, 0x1860, v15
	v_xor_b32_e32 v20, 0x2820, v15
	v_xor_b32_e32 v21, 0x3040, v15
	v_xor_b32_e32 v15, 0x3860, v15
	ds_bpermute_b32 v16, v165, v4
	.loc	1 389 33                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:389:33
	s_mul_i32 s5, s5, s34
	.loc	1 390 80                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:390:80
	v_sub_u32_e32 v18, v18, v5
	v_sub_u32_e32 v19, v19, v5
	v_sub_u32_e32 v20, v20, v5
	v_sub_u32_e32 v21, v21, v5
	v_sub_u32_e32 v5, v15, v5
	v_add_u32_e32 v134, v17, v3
	.loc	1 389 50                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:389:50
	v_add_u32_e32 v8, s5, v135
	.loc	1 390 80                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:390:80
	v_add_u32_e32 v5, 0xffffc800, v5
	v_lshlrev_b32_e32 v166, 2, v134
	v_ashrrev_i32_e32 v15, 3, v5
	v_lshrrev_b64 v[4:5], v132, exec
	ds_bpermute_b32 v8, v166, v8
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
	v_add_u32_e32 v136, v18, v3
	.loc	1 381 39                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:381:39
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_barrier
	.loc	1 389 50                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:389:50
	v_add_u32_e32 v9, s6, v135
	.loc	1 390 80                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:390:80
	buffer_load_dwordx4 v4, s[20:23], 0 offen lds
	v_lshrrev_b64 v[4:5], v134, exec
	v_lshlrev_b32_e32 v167, 2, v136
	v_lshlrev_b32_e32 v5, 1, v8
	ds_bpermute_b32 v8, v167, v9
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
	v_add_u32_e32 v138, v19, v3
	.loc	1 389 50                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:389:50
	v_add_u32_e32 v10, s7, v135
	.loc	1 390 80                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:390:80
	buffer_load_dwordx4 v4, s[20:23], 0 offen lds
	v_lshrrev_b64 v[4:5], v136, exec
	v_lshlrev_b32_e32 v168, 2, v138
	s_waitcnt lgkmcnt(0)
	v_lshlrev_b32_e32 v5, 1, v8
	ds_bpermute_b32 v8, v168, v10
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
	v_add_u32_e32 v11, s10, v135
	.loc	1 390 80                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:390:80
	buffer_load_dwordx4 v4, s[20:23], 0 offen lds
	v_lshrrev_b64 v[4:5], v138, exec
	s_waitcnt lgkmcnt(0)
	v_lshlrev_b32_e32 v5, 1, v8
	ds_bpermute_b32 v8, v165, v11
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
	v_add_u32_e32 v140, v20, v3
	.loc	1 389 50                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:389:50
	v_add_u32_e32 v12, s11, v135
	.loc	1 390 80                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:390:80
	s_add_i32 m0, s5, 0x137e0
	v_cndmask_b32_e64 v4, v16, v5, s[2:3]
	v_lshlrev_b32_e32 v169, 2, v140
	buffer_load_dwordx4 v4, s[20:23], 0 offen lds
	s_waitcnt lgkmcnt(0)
	v_lshlrev_b32_e32 v4, 1, v8
	ds_bpermute_b32 v8, v169, v12
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
	v_add_u32_e32 v142, v21, v3
	.loc	1 389 50                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:389:50
	v_add_u32_e32 v13, s13, v135
	.loc	1 390 80                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:390:80
	buffer_load_dwordx4 v4, s[20:23], 0 offen lds
	v_lshrrev_b64 v[4:5], v140, exec
	v_lshlrev_b32_e32 v170, 2, v142
	v_and_b32_e32 v4, 1, v4
	s_waitcnt lgkmcnt(0)
	v_lshlrev_b32_e32 v5, 1, v8
	ds_bpermute_b32 v8, v170, v13
	.loc	1 387 42                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:387:42
	s_or_b32 s15, s4, s48
	.loc	1 390 80                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:390:80
	v_cmp_eq_u32_e32 vcc, 1, v4
	.loc	1 389 33                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:389:33
	s_mul_i32 s15, s15, s34
	.loc	1 390 80                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:390:80
	s_add_i32 m0, s5, 0x157e0
	v_cndmask_b32_e32 v4, v16, v5, vcc
	v_add_u32_e32 v144, v15, v3
	.loc	1 389 50                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:389:50
	v_add_u32_e32 v14, s15, v135
	.loc	1 390 80                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:390:80
	buffer_load_dwordx4 v4, s[20:23], 0 offen lds
	v_lshrrev_b64 v[4:5], v142, exec
	v_lshlrev_b32_e32 v171, 2, v144
	v_and_b32_e32 v4, 1, v4
	ds_bpermute_b32 v3, v171, v14
	s_waitcnt lgkmcnt(1)
	v_lshlrev_b32_e32 v5, 1, v8
	v_cmp_eq_u32_e32 vcc, 1, v4
	s_add_i32 m0, s5, 0x167e0
	.loc	1 377 24                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:377:24
	v_mov_b32_e32 v7, 0
	.loc	1 390 80                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:390:80
	v_cndmask_b32_e32 v4, v16, v5, vcc
	buffer_load_dwordx4 v4, s[20:23], 0 offen lds
	v_lshrrev_b64 v[4:5], v144, exec
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
	v_or_b32_e32 v3, s4, v148
	.loc	1 397 37                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:397:37
	v_mul_lo_u32 v3, v3, s35
	.loc	1 398 81                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:398:81
	s_add_i32 s52, s52, 0x228c0
	s_and_b32 s9, s9, 0xffff
	s_mov_b32 s10, s22
	s_mov_b32 s11, s23
	v_add_lshl_u32 v3, v3, v137, 1
	s_mov_b32 m0, s52
	.loc	1 382 69                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:382:69
	v_and_b32_e32 v7, 15, v0
	.loc	1 398 81                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:398:81
	buffer_load_dwordx4 v3, s[8:11], 0 offen lds
	.loc	1 382 69                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:382:69
	v_lshlrev_b32_e32 v3, 10, v7
	v_lshl_or_b32 v3, s19, 14, v3
	v_and_b32_e32 v141, 48, v0
	v_lshrrev_b32_e32 v5, 5, v3
	v_add_u32_e32 v3, 0, v3
	v_add3_u32 v3, v3, v141, v5
	ds_read_b128 v[248:251], v3
	ds_read_b128 v[244:247], v3 offset:64
	ds_read_b128 v[240:243], v3 offset:128
	ds_read_b128 v[236:239], v3 offset:192
	ds_read_b128 v[232:235], v3 offset:256
	ds_read_b128 v[228:231], v3 offset:320
	ds_read_b128 v[224:227], v3 offset:384
	ds_read_b128 v[220:223], v3 offset:448
	ds_read_b128 v[216:219], v3 offset:512
	ds_read_b128 v[212:215], v3 offset:576
	ds_read_b128 v[208:211], v3 offset:640
	ds_read_b128 v[204:207], v3 offset:704
	ds_read_b128 v[200:203], v3 offset:768
	ds_read_b128 v[196:199], v3 offset:832
	ds_read_b128 v[192:195], v3 offset:896
	ds_read_b128 v[188:191], v3 offset:960
	.loc	1 383 65                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:383:65
	v_lshlrev_b32_e32 v3, 10, v0
	v_and_b32_e32 v162, 0xc00, v3
	v_lshlrev_b32_e32 v3, 5, v6
	s_lshl_b32 s2, s14, 3
	v_and_b32_e32 v3, 0x1180, v3
	s_and_b32 s2, s2, 0x200
	v_or_b32_e32 v3, s2, v3
	v_or3_b32 v3, v3, v141, v162
	v_lshrrev_b32_e32 v5, 5, v3
	v_and_b32_e32 v5, 0xe0, v5
	v_add3_u32 v3, s12, v3, v5
	ds_read_b128 v[184:187], v3
	ds_read_b128 v[180:183], v3 offset:64
	s_mov_b32 s49, 32
	.loc	1 352 70                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:352:70
	s_mov_b32 s39, 0
	.loc	1 390 80                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:390:80
	s_mov_b32 s30, s22
	s_mov_b32 s31, s23
	.loc	1 411 19                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:411:19
	s_cmp_gt_u32 s38, 2
	v_and_b32_e32 v0, 12, v0
	v_lshrrev_b32_e32 v149, 5, v162
	v_lshrrev_b32_e32 v133, 2, v141
	.loc	1 405 8                         ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:405:8
	s_waitcnt vmcnt(2)
	v_readfirstlane_b32 s50, v4
	.loc	1 411 19                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:411:19
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 490 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:490:38
	v_mul_u32_u24_e32 v3, 0x410, v7
	v_xor_b32_e32 v160, v3, v141
	.loc	1 511 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:511:38
	v_lshlrev_b32_e32 v3, 8, v0
	v_lshlrev_b32_e32 v4, 2, v0
	s_movk_i32 s3, 0x98
	s_movk_i32 s2, 0x80
	.loc	1 499 56                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:499:56
	v_or_b32_e32 v145, 16, v133
	.loc	1 511 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:511:38
	v_lshl_or_b32 v3, v141, 9, v3
	v_bitop3_b32 v4, v2, v4, s3 bitop3:0x6c
	.loc	1 499 56                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:499:56
	v_or_b32_e32 v143, 2, v133
	v_accvgpr_write_b32 a124, v145
	v_or_b32_e32 v145, 17, v133
	.loc	1 511 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:511:38
	v_bitop3_b32 v5, v3, s2, v4 bitop3:0x36
	s_movk_i32 s2, 0xa0
	.loc	1 490 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:490:38
	v_xor_b32_e32 v139, 64, v160
	v_xor_b32_e32 v173, 0x80, v160
	v_xor_b32_e32 v9, 0xc0, v160
	.loc	1 495 40                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:495:40
	v_lshlrev_b32_e32 v178, 5, v0
	.loc	1 499 56                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:499:56
	v_or_b32_e32 v156, 1, v133
	v_accvgpr_write_b32 a125, v143
	v_or_b32_e32 v147, 3, v133
	v_accvgpr_write_b32 a126, v145
	v_or_b32_e32 v158, 18, v133
	v_or_b32_e32 v159, 19, v133
	.loc	1 511 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:511:38
	v_or_b32_e32 v157, v3, v4
	v_bitop3_b32 v150, v3, 32, v4 bitop3:0x36
	v_bitop3_b32 v163, v3, s2, v4 bitop3:0x36
	s_load_dword s22, s[0:1], 0x38
	s_add_i32 s23, s38, -2
	s_cbranch_execz .LBB0_4
; %bb.2:
	.loc	1 0 38 is_stmt 0                ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:0:38
	v_mov_b32_e32 v252, v5
	v_mov_b32_e32 v5, 0
	v_mov_b32_e32 v143, v9
	v_accvgpr_write_b32 a136, v7
	v_mov_b32_e32 v4, v5
	v_mov_b32_e32 v7, v5
	v_mov_b32_e32 v6, v5
	v_mov_b32_e32 v9, v5
	v_mov_b32_e32 v8, v5
	v_mov_b32_e32 v11, v5
	v_mov_b32_e32 v10, v5
	v_mov_b32_e32 v13, v5
	v_mov_b32_e32 v12, v5
	v_mov_b32_e32 v15, v5
	v_mov_b32_e32 v14, v5
	v_mov_b32_e32 v17, v5
	v_mov_b32_e32 v16, v5
	v_mov_b32_e32 v19, v5
	v_mov_b32_e32 v18, v5
	v_mov_b32_e32 v21, v5
	v_mov_b32_e32 v20, v5
	v_mov_b32_e32 v23, v5
	v_mov_b32_e32 v22, v5
	v_mov_b32_e32 v25, v5
	v_mov_b32_e32 v24, v5
	v_mov_b32_e32 v27, v5
	v_mov_b32_e32 v26, v5
	v_mov_b32_e32 v29, v5
	v_mov_b32_e32 v28, v5
	v_mov_b32_e32 v31, v5
	v_mov_b32_e32 v30, v5
	v_mov_b32_e32 v33, v5
	v_mov_b32_e32 v32, v5
	v_mov_b32_e32 v35, v5
	v_mov_b32_e32 v34, v5
	v_mov_b32_e32 v37, v5
	v_mov_b32_e32 v36, v5
	v_mov_b32_e32 v39, v5
	v_mov_b32_e32 v38, v5
	v_mov_b32_e32 v41, v5
	v_mov_b32_e32 v40, v5
	v_mov_b32_e32 v43, v5
	v_mov_b32_e32 v42, v5
	v_mov_b32_e32 v45, v5
	v_mov_b32_e32 v44, v5
	v_mov_b32_e32 v47, v5
	v_mov_b32_e32 v46, v5
	v_mov_b32_e32 v49, v5
	v_mov_b32_e32 v48, v5
	v_mov_b32_e32 v51, v5
	v_mov_b32_e32 v50, v5
	v_mov_b32_e32 v53, v5
	v_mov_b32_e32 v52, v5
	v_mov_b32_e32 v55, v5
	v_mov_b32_e32 v54, v5
	v_mov_b32_e32 v57, v5
	v_mov_b32_e32 v56, v5
	v_mov_b32_e32 v59, v5
	v_mov_b32_e32 v58, v5
	v_mov_b32_e32 v61, v5
	v_mov_b32_e32 v60, v5
	v_mov_b32_e32 v63, v5
	v_mov_b32_e32 v62, v5
	v_mov_b32_e32 v65, v5
	v_mov_b32_e32 v64, v5
	v_mov_b32_e32 v67, v5
	v_mov_b32_e32 v66, v5
	v_mov_b32_e32 v69, v5
	v_mov_b32_e32 v68, v5
	v_mov_b32_e32 v71, v5
	v_mov_b32_e32 v70, v5
	v_mov_b32_e32 v73, v5
	v_mov_b32_e32 v72, v5
	v_mov_b32_e32 v75, v5
	v_mov_b32_e32 v74, v5
	v_mov_b32_e32 v77, v5
	v_mov_b32_e32 v76, v5
	v_mov_b32_e32 v79, v5
	v_mov_b32_e32 v78, v5
	v_mov_b32_e32 v81, v5
	v_mov_b32_e32 v80, v5
	v_mov_b32_e32 v83, v5
	v_mov_b32_e32 v82, v5
	v_mov_b32_e32 v85, v5
	v_mov_b32_e32 v84, v5
	v_mov_b32_e32 v87, v5
	v_mov_b32_e32 v86, v5
	v_mov_b32_e32 v89, v5
	v_mov_b32_e32 v88, v5
	v_mov_b32_e32 v91, v5
	v_mov_b32_e32 v90, v5
	v_mov_b32_e32 v93, v5
	v_mov_b32_e32 v92, v5
	v_mov_b32_e32 v95, v5
	v_mov_b32_e32 v94, v5
	v_mov_b32_e32 v97, v5
	v_mov_b32_e32 v96, v5
	v_mov_b32_e32 v99, v5
	v_mov_b32_e32 v98, v5
	v_mov_b32_e32 v101, v5
	v_mov_b32_e32 v100, v5
	v_mov_b32_e32 v103, v5
	v_mov_b32_e32 v102, v5
	v_mov_b32_e32 v105, v5
	v_mov_b32_e32 v104, v5
	v_mov_b32_e32 v107, v5
	v_mov_b32_e32 v106, v5
	v_mov_b32_e32 v109, v5
	v_mov_b32_e32 v108, v5
	v_mov_b32_e32 v111, v5
	v_mov_b32_e32 v110, v5
	v_mov_b32_e32 v113, v5
	v_mov_b32_e32 v112, v5
	v_mov_b32_e32 v115, v5
	v_mov_b32_e32 v114, v5
	v_mov_b32_e32 v117, v5
	v_mov_b32_e32 v116, v5
	v_mov_b32_e32 v119, v5
	v_mov_b32_e32 v118, v5
	v_mov_b32_e32 v121, v5
	v_mov_b32_e32 v120, v5
	v_mov_b32_e32 v123, v5
	v_mov_b32_e32 v122, v5
	v_mov_b32_e32 v127, v5
	v_mov_b32_e32 v126, v5
	v_mov_b32_e32 v129, v5
	v_mov_b32_e32 v128, v5
	v_mov_b32_e32 v131, v5
	v_mov_b32_e32 v130, v5
	v_mov_b32_e32 v125, v5
	v_mov_b32_e32 v124, v5
	v_mov_b32_e32 v161, 0
	v_mov_b32_e32 v172, 0xff800000
	v_mov_b32_e32 v145, v139
	s_branch .LBB0_7
.LBB0_3:
                                        ; implicit-def: $vgpr160
                                        ; implicit-def: $vgpr139
                                        ; implicit-def: $vgpr173
                                        ; implicit-def: $vgpr9
                                        ; implicit-def: $vgpr178
                                        ; implicit-def: $vgpr156
                                        ; implicit-def: $agpr125
                                        ; implicit-def: $vgpr147
                                        ; implicit-def: $agpr124
                                        ; implicit-def: $agpr126
                                        ; implicit-def: $vgpr158
                                        ; implicit-def: $vgpr159
                                        ; implicit-def: $vgpr157
                                        ; implicit-def: $vgpr150
                                        ; implicit-def: $vgpr5
                                        ; implicit-def: $vgpr163
	s_load_dword s22, s[0:1], 0x38
	s_add_i32 s23, s38, -2
.LBB0_4:                                ; %.lr.ph
	v_mul_u32_u24_e32 v3, 0x410, v7
	.loc	1 411 19 is_stmt 1              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:411:19
	s_add_i32 s2, 0, 0x228c0
	v_xor_b32_e32 v160, v3, v141
	v_lshlrev_b32_e32 v3, 5, v0
	v_accvgpr_write_b32 a129, v3
	v_add3_u32 v3, s2, v162, v3
	v_add3_u32 v173, v3, v141, v149
	v_or_b32_e32 v145, 16, v133
	v_lshlrev_b32_e32 v3, 8, v0
	v_lshlrev_b32_e32 v0, 2, v0
	s_movk_i32 s2, 0x98
	v_xor_b32_e32 v5, 64, v160
	s_movk_i32 s3, 0x80
	v_xor_b32_e32 v4, 0x80, v160
	v_or_b32_e32 v143, 2, v133
	v_accvgpr_write_b32 a124, v145
	v_or_b32_e32 v145, 17, v133
	v_lshl_or_b32 v3, v141, 9, v3
	v_bitop3_b32 v0, v2, v0, s2 bitop3:0x6c
	s_movk_i32 s2, 0xa0
	v_mov_b32_e32 v124, 0
	v_accvgpr_write_b32 a127, v148
	v_accvgpr_write_b32 a136, v7
	v_xor_b32_e32 v157, 0xc0, v160
	v_accvgpr_write_b32 a128, v149
	v_or_b32_e32 v156, 1, v133
	v_accvgpr_write_b32 a125, v143
	v_mov_b32_e32 v143, v4
	v_or_b32_e32 v147, 3, v133
	v_accvgpr_write_b32 a126, v145
	v_mov_b32_e32 v145, v5
	v_or_b32_e32 v158, 18, v133
	v_or_b32_e32 v159, 19, v133
	v_or_b32_e32 v150, v3, v0
	v_bitop3_b32 v149, v3, 32, v0 bitop3:0x36
	v_bitop3_b32 v148, v3, s3, v0 bitop3:0x36
	v_bitop3_b32 v139, v3, s2, v0 bitop3:0x36
	v_add_u32_e32 v174, s19, v1
	v_mov_b32_e32 v161, 0
	v_mov_b32_e32 v0, 0xff800000
	v_mov_b32_e32 v175, s33
	v_bfrev_b32_e32 v176, 1
	s_mov_b32 s10, s30
	s_mov_b32 s11, s31
	v_mov_b32_e32 v177, 0xff800000
	s_mov_b32 s53, 0xc2fc0000
	v_mov_b32_e32 v178, 0x42800000
	v_not_b32_e32 v179, 63
	s_mov_b32 s54, s23
	v_mov_b32_e32 v125, v124
	v_mov_b32_e32 v130, v124
	v_mov_b32_e32 v131, v124
	v_mov_b32_e32 v128, v124
	v_mov_b32_e32 v129, v124
	v_mov_b32_e32 v126, v124
	v_mov_b32_e32 v127, v124
	v_mov_b32_e32 v122, v124
	v_mov_b32_e32 v123, v124
	v_mov_b32_e32 v120, v124
	v_mov_b32_e32 v121, v124
	v_mov_b32_e32 v118, v124
	v_mov_b32_e32 v119, v124
	v_mov_b32_e32 v116, v124
	v_mov_b32_e32 v117, v124
	v_mov_b32_e32 v114, v124
	v_mov_b32_e32 v115, v124
	v_mov_b32_e32 v112, v124
	v_mov_b32_e32 v113, v124
	v_mov_b32_e32 v110, v124
	v_mov_b32_e32 v111, v124
	v_mov_b32_e32 v108, v124
	v_mov_b32_e32 v109, v124
	v_mov_b32_e32 v106, v124
	v_mov_b32_e32 v107, v124
	v_mov_b32_e32 v104, v124
	v_mov_b32_e32 v105, v124
	v_mov_b32_e32 v102, v124
	v_mov_b32_e32 v103, v124
	v_mov_b32_e32 v100, v124
	v_mov_b32_e32 v101, v124
	v_mov_b32_e32 v98, v124
	v_mov_b32_e32 v99, v124
	v_mov_b32_e32 v96, v124
	v_mov_b32_e32 v97, v124
	v_mov_b32_e32 v94, v124
	v_mov_b32_e32 v95, v124
	v_mov_b32_e32 v92, v124
	v_mov_b32_e32 v93, v124
	v_mov_b32_e32 v90, v124
	v_mov_b32_e32 v91, v124
	v_mov_b32_e32 v88, v124
	v_mov_b32_e32 v89, v124
	v_mov_b32_e32 v86, v124
	v_mov_b32_e32 v87, v124
	v_mov_b32_e32 v84, v124
	v_mov_b32_e32 v85, v124
	v_mov_b32_e32 v82, v124
	v_mov_b32_e32 v83, v124
	v_mov_b32_e32 v80, v124
	v_mov_b32_e32 v81, v124
	v_mov_b32_e32 v78, v124
	v_mov_b32_e32 v79, v124
	v_mov_b32_e32 v76, v124
	v_mov_b32_e32 v77, v124
	v_mov_b32_e32 v74, v124
	v_mov_b32_e32 v75, v124
	v_mov_b32_e32 v72, v124
	v_mov_b32_e32 v73, v124
	v_mov_b32_e32 v70, v124
	v_mov_b32_e32 v71, v124
	v_mov_b32_e32 v68, v124
	v_mov_b32_e32 v69, v124
	v_mov_b32_e32 v66, v124
	v_mov_b32_e32 v67, v124
	v_mov_b32_e32 v64, v124
	v_mov_b32_e32 v65, v124
	v_mov_b32_e32 v62, v124
	v_mov_b32_e32 v63, v124
	v_mov_b32_e32 v60, v124
	v_mov_b32_e32 v61, v124
	v_mov_b32_e32 v58, v124
	v_mov_b32_e32 v59, v124
	v_mov_b32_e32 v56, v124
	v_mov_b32_e32 v57, v124
	v_mov_b32_e32 v54, v124
	v_mov_b32_e32 v55, v124
	v_mov_b32_e32 v52, v124
	v_mov_b32_e32 v53, v124
	v_mov_b32_e32 v50, v124
	v_mov_b32_e32 v51, v124
	v_mov_b32_e32 v48, v124
	v_mov_b32_e32 v49, v124
	v_mov_b32_e32 v46, v124
	v_mov_b32_e32 v47, v124
	v_mov_b32_e32 v44, v124
	v_mov_b32_e32 v45, v124
	v_mov_b32_e32 v42, v124
	v_mov_b32_e32 v43, v124
	v_mov_b32_e32 v40, v124
	v_mov_b32_e32 v41, v124
	v_mov_b32_e32 v38, v124
	v_mov_b32_e32 v39, v124
	v_mov_b32_e32 v36, v124
	v_mov_b32_e32 v37, v124
	v_mov_b32_e32 v34, v124
	v_mov_b32_e32 v35, v124
	v_mov_b32_e32 v32, v124
	v_mov_b32_e32 v33, v124
	v_mov_b32_e32 v30, v124
	v_mov_b32_e32 v31, v124
	v_mov_b32_e32 v28, v124
	v_mov_b32_e32 v29, v124
	v_mov_b32_e32 v26, v124
	v_mov_b32_e32 v27, v124
	v_mov_b32_e32 v24, v124
	v_mov_b32_e32 v25, v124
	v_mov_b32_e32 v22, v124
	v_mov_b32_e32 v23, v124
	v_mov_b32_e32 v20, v124
	v_mov_b32_e32 v21, v124
	v_mov_b32_e32 v18, v124
	v_mov_b32_e32 v19, v124
	v_mov_b32_e32 v16, v124
	v_mov_b32_e32 v17, v124
	v_mov_b32_e32 v14, v124
	v_mov_b32_e32 v15, v124
	v_mov_b32_e32 v12, v124
	v_mov_b32_e32 v13, v124
	v_mov_b32_e32 v10, v124
	v_mov_b32_e32 v11, v124
	v_mov_b32_e32 v8, v124
	v_mov_b32_e32 v9, v124
	v_mov_b32_e32 v6, v124
	v_mov_b32_e32 v7, v124
	v_mov_b32_e32 v4, v124
	v_mov_b32_e32 v5, v124
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 416 27                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:416:27
	s_add_i32 s13, s19, s49
	.loc	1 417 34                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:417:34
	s_lshl_b32 s7, s50, 6
	.loc	1 417 55 is_stmt 0              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:417:55
	s_and_b32 s17, s13, 35
	.loc	1 417 46                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:417:46
	s_or_b32 s17, s7, s17
	.loc	1 419 37 is_stmt 1              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:419:37
	s_mul_i32 s17, s17, s34
	.loc	1 419 54 is_stmt 0              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:419:54
	v_add_u32_e32 v1, s17, v135
	.loc	1 420 92 is_stmt 1              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:420:92
	ds_bpermute_b32 v1, v165, v1
	.loc	1 416 27                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:416:27
	s_add_i32 s14, s13, 4
	.loc	1 420 92                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:420:92
	v_cmp_lt_u32_e32 vcc, s13, v175
	s_mov_b32 s3, s39
	.loc	1 413 36                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:413:36
	s_xor_b32 s39, s39, 1
	.loc	1 417 55                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:417:55
	s_and_b32 s20, s14, 39
	.loc	1 420 92                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:420:92
	v_lshrrev_b64 v[2:3], v132, vcc
	.loc	1 417 46                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:417:46
	s_or_b32 s20, s7, s20
	.loc	1 420 68                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:420:68
	s_lshl_b32 s17, s39, 15
	.loc	1 420 92 is_stmt 0              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:420:92
	v_and_b32_e32 v2, 1, v2
	.loc	1 419 37 is_stmt 1              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:419:37
	s_mul_i32 s20, s20, s34
	.loc	1 420 92                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:420:92
	s_add_i32 s17, s51, s17
	v_cmp_eq_u32_e32 vcc, 1, v2
	s_waitcnt lgkmcnt(0)
	v_lshlrev_b32_e32 v1, 1, v1
	.loc	1 419 54                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:419:54
	v_add_u32_e32 v146, s20, v135
	.loc	1 420 92                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:420:92
	v_cndmask_b32_e32 v1, v176, v1, vcc
	s_mov_b32 m0, s17
	s_waitcnt lgkmcnt(0)
	s_barrier
	buffer_load_dwordx4 v1, s[28:31], 0 offen lds
	ds_bpermute_b32 v1, v166, v146
	.loc	1 416 27                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:416:27
	s_add_i32 s15, s13, 8
	.loc	1 420 92                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:420:92
	v_cmp_lt_u32_e32 vcc, s14, v175
	.loc	1 417 55                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:417:55
	s_and_b32 s21, s15, 43
	.loc	1 417 46 is_stmt 0              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:417:46
	s_or_b32 s21, s7, s21
	.loc	1 420 92 is_stmt 1              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:420:92
	v_lshrrev_b64 v[2:3], v134, vcc
	v_and_b32_e32 v2, 1, v2
	.loc	1 419 37                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:419:37
	s_mul_i32 s21, s21, s34
	.loc	1 420 92                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:420:92
	v_cmp_eq_u32_e32 vcc, 1, v2
	s_waitcnt lgkmcnt(0)
	v_lshlrev_b32_e32 v1, 1, v1
	.loc	1 419 54                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:419:54
	v_add_u32_e32 v152, s21, v135
	.loc	1 420 92                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:420:92
	s_add_i32 m0, s17, 0x1000
	v_cndmask_b32_e32 v1, v176, v1, vcc
	buffer_load_dwordx4 v1, s[28:31], 0 offen lds
	ds_bpermute_b32 v1, v167, v152
	.loc	1 416 27                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:416:27
	s_add_i32 s16, s13, 12
	.loc	1 420 92                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:420:92
	v_cmp_lt_u32_e32 vcc, s15, v175
	s_mov_b32 s2, s49
	.loc	1 417 55                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:417:55
	s_and_b32 s49, s16, 47
	.loc	1 420 92                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:420:92
	v_lshrrev_b64 v[2:3], v136, vcc
	.loc	1 417 46                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:417:46
	s_or_b32 s49, s7, s49
	.loc	1 420 92                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:420:92
	v_and_b32_e32 v2, 1, v2
	.loc	1 419 37                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:419:37
	s_mul_i32 s49, s49, s34
	.loc	1 420 92                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:420:92
	v_cmp_eq_u32_e32 vcc, 1, v2
	s_waitcnt lgkmcnt(0)
	v_lshlrev_b32_e32 v1, 1, v1
	.loc	1 419 54                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:419:54
	v_add_u32_e32 v153, s49, v135
	.loc	1 420 92                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:420:92
	s_add_i32 m0, s17, 0x2000
	v_cndmask_b32_e32 v1, v176, v1, vcc
	buffer_load_dwordx4 v1, s[28:31], 0 offen lds
	ds_bpermute_b32 v1, v168, v153
	.loc	1 416 27                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:416:27
	s_add_i32 s12, s13, 16
	.loc	1 420 92                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:420:92
	v_cmp_lt_u32_e32 vcc, s16, v175
	.loc	1 417 55                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:417:55
	s_and_b32 s50, s12, 51
	.loc	1 417 46 is_stmt 0              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:417:46
	s_or_b32 s50, s7, s50
	.loc	1 420 92 is_stmt 1              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:420:92
	v_lshrrev_b64 v[2:3], v138, vcc
	v_and_b32_e32 v2, 1, v2
	.loc	1 419 37                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:419:37
	s_mul_i32 s50, s50, s34
	.loc	1 420 92                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:420:92
	v_cmp_eq_u32_e32 vcc, 1, v2
	s_waitcnt lgkmcnt(0)
	v_lshlrev_b32_e32 v1, 1, v1
	.loc	1 419 54                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:419:54
	v_add_u32_e32 v154, s50, v135
	.loc	1 420 92                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:420:92
	s_add_i32 m0, s17, 0x3000
	v_cndmask_b32_e32 v1, v176, v1, vcc
	buffer_load_dwordx4 v1, s[28:31], 0 offen lds
	ds_bpermute_b32 v1, v165, v154
	.loc	1 416 27                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:416:27
	s_add_i32 s6, s13, 20
	.loc	1 420 92                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:420:92
	v_cmp_lt_u32_e32 vcc, s12, v175
	.loc	1 417 55                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:417:55
	s_and_b32 s55, s6, 55
	.loc	1 417 46 is_stmt 0              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:417:46
	s_or_b32 s55, s7, s55
	.loc	1 420 92 is_stmt 1              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:420:92
	v_lshrrev_b64 v[2:3], v132, vcc
	v_and_b32_e32 v2, 1, v2
	.loc	1 419 37                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:419:37
	s_mul_i32 s55, s55, s34
	.loc	1 420 92                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:420:92
	v_cmp_eq_u32_e32 vcc, 1, v2
	s_waitcnt lgkmcnt(0)
	v_lshlrev_b32_e32 v1, 1, v1
	.loc	1 419 54                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:419:54
	v_add_u32_e32 v155, s55, v135
	.loc	1 420 92                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:420:92
	s_add_i32 m0, s17, 0x4000
	v_cndmask_b32_e32 v1, v176, v1, vcc
	buffer_load_dwordx4 v1, s[28:31], 0 offen lds
	ds_bpermute_b32 v1, v169, v155
	.loc	1 416 27                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:416:27
	s_add_i32 s5, s13, 24
	.loc	1 420 92                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:420:92
	v_cmp_lt_u32_e32 vcc, s6, v175
	.loc	1 417 55                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:417:55
	s_and_b32 s56, s5, 59
	.loc	1 417 46 is_stmt 0              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:417:46
	s_or_b32 s56, s7, s56
	.loc	1 420 92 is_stmt 1              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:420:92
	v_lshrrev_b64 v[2:3], v140, vcc
	v_and_b32_e32 v2, 1, v2
	.loc	1 419 37                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:419:37
	s_mul_i32 s56, s56, s34
	.loc	1 420 92                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:420:92
	v_cmp_eq_u32_e32 vcc, 1, v2
	s_waitcnt lgkmcnt(0)
	v_lshlrev_b32_e32 v1, 1, v1
	.loc	1 419 54                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:419:54
	v_add_u32_e32 v172, s56, v135
	.loc	1 420 92                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:420:92
	s_add_i32 m0, s17, 0x5000
	v_cndmask_b32_e32 v1, v176, v1, vcc
	buffer_load_dwordx4 v1, s[28:31], 0 offen lds
	ds_bpermute_b32 v1, v170, v172
	.loc	1 417 34                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:417:34
	s_add_i32 s4, s13, 28
	.loc	1 420 92                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:420:92
	v_cmp_lt_u32_e32 vcc, s5, v175
	.loc	1 417 55                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:417:55
	s_and_b32 s57, s4, 63
	.loc	1 417 46 is_stmt 0              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:417:46
	s_or_b32 s57, s7, s57
	.loc	1 420 92 is_stmt 1              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:420:92
	v_lshrrev_b64 v[2:3], v142, vcc
	v_and_b32_e32 v2, 1, v2
	.loc	1 419 37                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:419:37
	s_mul_i32 s57, s57, s34
	.loc	1 420 92                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:420:92
	v_cmp_eq_u32_e32 vcc, 1, v2
	s_waitcnt lgkmcnt(0)
	v_lshlrev_b32_e32 v1, 1, v1
	.loc	1 419 54                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:419:54
	v_add_u32_e32 v252, s57, v135
	.loc	1 420 92                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:420:92
	s_add_i32 m0, s17, 0x6000
	v_cndmask_b32_e32 v1, v176, v1, vcc
	buffer_load_dwordx4 v1, s[28:31], 0 offen lds
	ds_bpermute_b32 v1, v171, v252
	v_cmp_lt_u32_e32 vcc, s4, v175
	s_add_i32 m0, s17, 0x7000
	.loc	1 428 69                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:428:69
	s_mul_i32 s4, s39, 0x1080
	.loc	1 420 92                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:420:92
	v_lshrrev_b64 v[2:3], v144, vcc
	v_and_b32_e32 v2, 1, v2
	v_cmp_eq_u32_e32 vcc, 1, v2
	s_waitcnt lgkmcnt(0)
	v_lshlrev_b32_e32 v1, 1, v1
	.loc	1 439 19                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:439:19
	s_add_i32 s49, s2, 32
	.loc	1 420 92                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:420:92
	v_cndmask_b32_e32 v1, v176, v1, vcc
	buffer_load_dwordx4 v1, s[28:31], 0 offen lds
	.loc	1 425 61                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:425:61
	v_add_u32_e32 v1, s2, v174
	.loc	1 425 49 is_stmt 0              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:425:49
	v_and_or_b32 v2, v1, 63, s7
	.loc	1 427 41 is_stmt 1              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:427:41
	v_mul_lo_u32 v2, v2, s35
	.loc	1 428 93                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:428:93
	s_add_i32 m0, s52, s4
	.loc	1 433 72                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:433:72
	s_lshl_b32 s4, s3, 15
	.loc	1 428 130                       ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:428:130
	v_cmp_gt_u32_e32 vcc, s33, v1
	.loc	1 428 93 is_stmt 0              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:428:93
	v_add_lshl_u32 v1, v2, v137, 1
	.loc	1 433 72 is_stmt 1              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:433:72
	s_add_i32 s55, s4, 0
	.loc	1 428 93                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:428:93
	v_cndmask_b32_e32 v1, v176, v1, vcc
	.loc	1 433 72                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:433:72
	s_add_i32 s55, s55, 0x107e0
	.loc	1 428 93                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:428:93
	buffer_load_dwordx4 v1, s[8:11], 0 offen lds
	.loc	1 433 82                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:433:82
	v_add_u32_e32 v1, s55, v160
	.loc	1 432 43                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:432:43
	s_waitcnt vmcnt(9) lgkmcnt(0)
	s_barrier
	.loc	1 433 82                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:433:82
	ds_read_b128 v[152:155], v1
	ds_read_b128 v[252:255], v1 offset:256
	ds_read_b128 a[4:7], v1 offset:512
	ds_read_b128 a[8:11], v1 offset:768
	ds_read_b128 a[12:15], v1 offset:16384
	ds_read_b128 a[16:19], v1 offset:16640
	ds_read_b128 a[20:23], v1 offset:16896
	ds_read_b128 a[24:27], v1 offset:17152
	.loc	1 435 61                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:435:61
	s_waitcnt lgkmcnt(7)
	v_mfma_f32_16x16x32_bf16 a[0:3], v[152:155], v[248:251], 0
	.loc	1 433 82                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:433:82
	v_add_u32_e32 v1, s55, v145
	ds_read_b128 a[28:31], v1
	ds_read_b128 a[32:35], v1 offset:256
	ds_read_b128 a[36:39], v1 offset:512
	ds_read_b128 a[40:43], v1 offset:768
	ds_read_b128 a[44:47], v1 offset:16384
	ds_read_b128 a[48:51], v1 offset:16640
	ds_read_b128 a[52:55], v1 offset:16896
	ds_read_b128 a[56:59], v1 offset:17152
	v_add_u32_e32 v1, s55, v143
	.loc	1 435 61                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:435:61
	s_waitcnt lgkmcnt(7)
	v_mfma_f32_16x16x32_bf16 a[0:3], a[28:31], v[244:247], a[0:3]
	.loc	1 433 82                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:433:82
	ds_read_b128 a[60:63], v1
	ds_read_b128 a[64:67], v1 offset:256
	ds_read_b128 a[68:71], v1 offset:512
	ds_read_b128 a[72:75], v1 offset:768
	ds_read_b128 a[76:79], v1 offset:16384
	ds_read_b128 a[80:83], v1 offset:16640
	ds_read_b128 a[84:87], v1 offset:16896
	ds_read_b128 a[88:91], v1 offset:17152
	v_add_u32_e32 v1, s55, v157
	ds_read_b128 a[92:95], v1
	ds_read_b128 a[96:99], v1 offset:256
	ds_read_b128 a[100:103], v1 offset:512
	ds_read_b128 a[104:107], v1 offset:768
	ds_read_b128 a[108:111], v1 offset:16384
	ds_read_b128 a[112:115], v1 offset:16640
	ds_read_b128 a[116:119], v1 offset:16896
	ds_read_b128 a[120:123], v1 offset:17152
	.loc	1 435 61                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:435:61
	s_waitcnt lgkmcnt(14)
	v_mfma_f32_16x16x32_bf16 a[0:3], a[60:63], v[240:243], a[0:3]
	.loc	1 436 74                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:436:74
	s_mulk_i32 s3, 0x1080
	.loc	1 436 84 is_stmt 0              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:436:84
	v_add_u32_e32 v1, s3, v173
	.loc	1 442 66 is_stmt 1              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:442:66
	s_lshr_b32 s3, s49, 4
	.loc	1 435 61                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:435:61
	s_waitcnt lgkmcnt(7)
	v_mfma_f32_16x16x32_bf16 a[0:3], a[92:95], v[236:239], a[0:3]
	.loc	1 442 66                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:442:66
	s_and_b32 s3, s3, 0xffffffc
	.loc	1 442 12 is_stmt 0              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:442:12
	v_mov_b32_e32 v172, s3
	global_load_dword v172, v172, s[36:37]
	.loc	1 435 61 is_stmt 1              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:435:61
	v_mfma_f32_16x16x32_bf16 a[0:3], v[252:255], v[232:235], a[0:3]
	.loc	1 411 19                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:411:19
	s_add_i32 s54, s54, -1
	s_cmp_lg_u32 s54, 0
	.loc	1 442 12                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:442:12
	s_waitcnt vmcnt(0)
	v_readfirstlane_b32 s50, v172
	.loc	1 435 61                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:435:61
	v_mfma_f32_16x16x32_bf16 a[0:3], a[32:35], v[228:231], a[0:3]
	v_add_u32_e32 v172, s2, v133
	v_add_u32_e32 v163, -16, v172
	v_add_u32_e32 v164, -15, v172
	v_mfma_f32_16x16x32_bf16 a[0:3], a[64:67], v[224:227], a[0:3]
	v_add_u32_e32 v151, -14, v172
	.loc	1 448 43                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:448:43
	v_cmp_gt_i32_e64 s[16:17], s33, v151
	v_cmp_gt_i32_e64 s[12:13], s33, v163
	.loc	1 435 61                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:435:61
	s_waitcnt lgkmcnt(6)
	v_mfma_f32_16x16x32_bf16 a[0:3], a[96:99], v[220:223], a[0:3]
	.loc	1 448 43                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:448:43
	v_cmp_gt_i32_e64 s[14:15], s33, v164
	.loc	1 435 61                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:435:61
	v_mfma_f32_16x16x32_bf16 a[0:3], a[4:7], v[216:219], a[0:3]
	v_mfma_f32_16x16x32_bf16 a[4:7], a[12:15], v[248:251], 0
	v_mfma_f32_16x16x32_bf16 a[4:7], a[44:47], v[244:247], a[4:7]
	v_mfma_f32_16x16x32_bf16 a[4:7], a[76:79], v[240:243], a[4:7]
	s_waitcnt lgkmcnt(3)
	v_mfma_f32_16x16x32_bf16 a[4:7], a[108:111], v[236:239], a[4:7]
	v_mfma_f32_16x16x32_bf16 a[4:7], a[16:19], v[232:235], a[4:7]
	v_mfma_f32_16x16x32_bf16 a[4:7], a[48:51], v[228:231], a[4:7]
	v_mfma_f32_16x16x32_bf16 a[4:7], a[80:83], v[224:227], a[4:7]
	v_mfma_f32_16x16x32_bf16 a[0:3], a[36:39], v[212:215], a[0:3]
	s_waitcnt lgkmcnt(2)
	v_mfma_f32_16x16x32_bf16 a[4:7], a[112:115], v[220:223], a[4:7]
	v_mfma_f32_16x16x32_bf16 a[0:3], a[68:71], v[208:211], a[0:3]
	v_mfma_f32_16x16x32_bf16 a[4:7], a[20:23], v[216:219], a[4:7]
	v_mfma_f32_16x16x32_bf16 a[0:3], a[100:103], v[204:207], a[0:3]
	v_mfma_f32_16x16x32_bf16 a[4:7], a[52:55], v[212:215], a[4:7]
	v_mfma_f32_16x16x32_bf16 a[0:3], a[8:11], v[200:203], a[0:3]
	.loc	1 436 84                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:436:84
	ds_read_b128 v[152:155], v1
	ds_read_b128 v[252:255], v1 offset:64
	ds_read_b128 a[8:11], v1 offset:512
	ds_read_b128 a[12:15], v1 offset:576
	.loc	1 435 61                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:435:61
	v_mfma_f32_16x16x32_bf16 a[4:7], a[84:87], v[208:211], a[4:7]
	v_mfma_f32_16x16x32_bf16 a[0:3], a[40:43], v[196:199], a[0:3]
	s_waitcnt lgkmcnt(5)
	v_mfma_f32_16x16x32_bf16 a[4:7], a[116:119], v[204:207], a[4:7]
	v_mfma_f32_16x16x32_bf16 a[0:3], a[72:75], v[192:195], a[0:3]
	v_mfma_f32_16x16x32_bf16 a[4:7], a[24:27], v[200:203], a[4:7]
	v_mfma_f32_16x16x32_bf16 a[0:3], a[104:107], v[188:191], a[0:3]
	v_mfma_f32_16x16x32_bf16 a[4:7], a[56:59], v[196:199], a[4:7]
	v_mfma_f32_16x16x32_bf16 a[4:7], a[88:91], v[192:195], a[4:7]
	.loc	1 437 58                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:437:58
	s_waitcnt lgkmcnt(3)
	v_mfma_f32_16x16x32_bf16 a[0:3], v[152:155], v[184:187], a[0:3]
	.loc	1 435 61                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:435:61
	v_mfma_f32_16x16x32_bf16 a[4:7], a[120:123], v[188:191], a[4:7]
	.loc	1 437 58                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:437:58
	s_waitcnt lgkmcnt(2)
	v_mfma_f32_16x16x32_bf16 a[0:3], v[252:255], v[180:183], a[0:3]
	v_subrev_u32_e32 v252, 32, v172
	v_subrev_u32_e32 v253, 31, v172
	v_subrev_u32_e32 v254, 30, v172
	v_subrev_u32_e32 v255, 29, v172
	.loc	1 448 43                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:448:43
	v_add_u32_e32 v172, -13, v172
	v_cmp_gt_i32_e64 s[20:21], s33, v172
	v_cmp_gt_i32_e32 vcc, s33, v252
	v_cmp_gt_i32_e64 s[2:3], s33, v253
	.loc	1 437 58                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:437:58
	v_accvgpr_read_b32 v1, a0
	v_accvgpr_read_b32 v2, a1
	v_accvgpr_read_b32 v3, a2
	v_accvgpr_read_b32 v146, a3
	s_waitcnt lgkmcnt(1)
	v_mfma_f32_16x16x32_bf16 a[0:3], a[8:11], v[184:187], a[4:7]
	.loc	1 445 14                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:445:14
	v_mul_f32_e32 v1, s22, v1
	v_mul_f32_e32 v2, s22, v2
	v_mul_f32_e32 v3, s22, v3
	.loc	1 437 58                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:437:58
	s_waitcnt lgkmcnt(0)
	v_mfma_f32_16x16x32_bf16 a[0:3], a[12:15], v[180:183], a[0:3]
	.loc	1 445 14                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:445:14
	v_mul_f32_e32 v146, s22, v146
	.loc	1 448 43                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:448:43
	v_cmp_gt_i32_e64 s[4:5], s33, v254
	v_cmp_gt_i32_e64 s[6:7], s33, v255
	.loc	1 448 61 is_stmt 0              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:448:61
	v_cndmask_b32_e32 v1, v177, v1, vcc
	v_cndmask_b32_e64 v2, v177, v2, s[2:3]
	v_cndmask_b32_e64 v3, v177, v3, s[4:5]
	v_cndmask_b32_e64 v151, v177, v146, s[6:7]
.Ltmp8:
	.loc	2 170 27 is_stmt 1              ; standard.py:170:27 @[ standard.py:191:40 @[ bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:449:40 ] ]
	v_max_f32_e32 v146, v1, v2
.Ltmp9:
	.loc	1 437 58                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:437:58
	v_accvgpr_read_b32 v154, a2
	v_accvgpr_read_b32 v155, a3
	v_accvgpr_read_b32 v152, a0
	v_accvgpr_read_b32 v153, a1
	.loc	1 445 14                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:445:14
	v_mul_f32_e32 v154, s22, v154
	v_mul_f32_e32 v155, s22, v155
	v_mul_f32_e32 v152, s22, v152
	v_mul_f32_e32 v153, s22, v153
	.loc	1 448 61                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:448:61
	v_cndmask_b32_e64 v154, v177, v154, s[16:17]
	v_cndmask_b32_e64 v155, v177, v155, s[20:21]
	v_cndmask_b32_e64 v152, v177, v152, s[12:13]
	v_cndmask_b32_e64 v153, v177, v153, s[14:15]
.Ltmp10:
	.loc	2 170 27                        ; standard.py:170:27 @[ standard.py:191:40 @[ bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:449:40 ] ]
	v_max_f32_e32 v164, v154, v155
	v_max_f32_e32 v163, v3, v151
	v_max3_f32 v164, v152, v153, v164
	v_max3_f32 v146, v146, v163, v164
.Ltmp11:
	.loc	2 191 40                        ; standard.py:191:40 @[ bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:449:40 ]
	v_mov_b32_e32 v163, v146
	s_nop 1
	v_permlane32_swap_b32_e32 v146, v163
.Ltmp12:
	.loc	2 170 27                        ; standard.py:170:27 @[ standard.py:191:40 @[ bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:449:40 ] ]
	v_max_f32_e32 v163, v163, v163
	v_max_f32_e32 v146, v146, v146
	v_max_f32_e32 v146, v146, v163
.Ltmp13:
	.loc	2 191 40                        ; standard.py:191:40 @[ bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:449:40 ]
	v_mov_b32_e32 v163, v146
	s_nop 1
	v_permlane16_swap_b32_e32 v146, v163
.Ltmp14:
	.loc	1 449 44                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:449:44
	v_max3_f32 v172, v146, v163, v0
	.loc	1 450 34                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:450:34
	v_sub_f32_e32 v0, v0, v172
	.loc	1 450 26 is_stmt 0              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:450:26
	v_mul_f32_e32 v0, 0x3fb8aa3b, v0
	v_cmp_gt_f32_e32 vcc, s53, v0
	.loc	1 451 24 is_stmt 1              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:451:24
	v_sub_f32_e32 v3, v3, v172
	v_sub_f32_e32 v151, v151, v172
	.loc	1 450 26                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:450:26
	v_cndmask_b32_e32 v146, 0, v178, vcc
	v_add_f32_e32 v0, v0, v146
	v_exp_f32_e32 v0, v0
	v_cndmask_b32_e32 v146, 0, v179, vcc
	.loc	1 451 24                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:451:24
	v_sub_f32_e32 v163, v152, v172
	v_sub_f32_e32 v153, v153, v172
	.loc	1 450 26                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:450:26
	v_ldexp_f32 v146, v0, v146
	.loc	1 451 24                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:451:24
	v_sub_f32_e32 v0, v1, v172
	.loc	1 451 19 is_stmt 0              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:451:19
	v_mul_f32_e32 v0, 0x3fb8aa3b, v0
	v_cmp_gt_f32_e32 vcc, s53, v0
	.loc	1 451 24                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:451:24
	v_sub_f32_e32 v1, v2, v172
	v_sub_f32_e32 v154, v154, v172
	.loc	1 451 19                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:451:19
	v_cndmask_b32_e32 v2, 0, v178, vcc
	v_add_f32_e32 v0, v0, v2
	v_exp_f32_e32 v0, v0
	v_cndmask_b32_e32 v2, 0, v179, vcc
	.loc	1 451 24                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:451:24
	v_sub_f32_e32 v155, v155, v172
	.loc	1 463 40 is_stmt 1              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:463:40
	v_pk_mul_f32 v[124:125], v[124:125], v[146:147] op_sel_hi:[1,0]
	.loc	1 451 19                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:451:19
	v_ldexp_f32 v2, v0, v2
	v_mul_f32_e32 v0, 0x3fb8aa3b, v1
	v_cmp_gt_f32_e32 vcc, s53, v0
	.loc	1 463 40                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:463:40
	v_pk_mul_f32 v[130:131], v[130:131], v[146:147] op_sel_hi:[1,0]
	v_accvgpr_write_b32 a2, v124
	.loc	1 451 19                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:451:19
	v_cndmask_b32_e32 v1, 0, v178, vcc
	v_add_f32_e32 v0, v0, v1
	v_exp_f32_e32 v0, v0
	v_cndmask_b32_e32 v1, 0, v179, vcc
	.loc	1 463 40                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:463:40
	v_accvgpr_write_b32 a0, v130
	v_accvgpr_write_b32 a1, v131
	.loc	1 451 19                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:451:19
	v_ldexp_f32 v252, v0, v1
	v_mul_f32_e32 v0, 0x3fb8aa3b, v3
	v_cmp_gt_f32_e32 vcc, s53, v0
	.loc	1 463 40                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:463:40
	v_accvgpr_write_b32 a3, v125
	v_pk_mul_f32 v[128:129], v[128:129], v[146:147] op_sel_hi:[1,0]
	.loc	1 451 19                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:451:19
	v_cndmask_b32_e32 v1, 0, v178, vcc
	v_add_f32_e32 v0, v0, v1
	v_exp_f32_e32 v0, v0
	v_cndmask_b32_e32 v1, 0, v179, vcc
	.loc	1 463 40                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:463:40
	v_pk_mul_f32 v[126:127], v[126:127], v[146:147] op_sel_hi:[1,0]
	v_pk_mul_f32 v[122:123], v[122:123], v[146:147] op_sel_hi:[1,0]
	.loc	1 451 19                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:451:19
	v_ldexp_f32 v254, v0, v1
	v_mul_f32_e32 v0, 0x3fb8aa3b, v151
	v_cmp_gt_f32_e32 vcc, s53, v0
	.loc	1 453 24                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:453:24
	v_mul_f32_e32 v151, v161, v146
	.loc	1 463 40                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:463:40
	v_pk_mul_f32 v[120:121], v[120:121], v[146:147] op_sel_hi:[1,0]
	.loc	1 451 19                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:451:19
	v_cndmask_b32_e32 v1, 0, v178, vcc
	v_add_f32_e32 v0, v0, v1
	v_exp_f32_e32 v0, v0
	v_cndmask_b32_e32 v1, 0, v179, vcc
	.loc	1 463 40                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:463:40
	v_pk_mul_f32 v[118:119], v[118:119], v[146:147] op_sel_hi:[1,0]
	v_pk_mul_f32 v[116:117], v[116:117], v[146:147] op_sel_hi:[1,0]
	.loc	1 451 19                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:451:19
	v_ldexp_f32 v152, v0, v1
	v_mul_f32_e32 v0, 0x3fb8aa3b, v163
	v_cmp_gt_f32_e32 vcc, s53, v0
	.loc	1 463 40                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:463:40
	v_pk_mul_f32 v[114:115], v[114:115], v[146:147] op_sel_hi:[1,0]
	v_pk_mul_f32 v[112:113], v[112:113], v[146:147] op_sel_hi:[1,0]
	.loc	1 451 19                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:451:19
	v_cndmask_b32_e32 v1, 0, v178, vcc
	v_add_f32_e32 v0, v0, v1
	v_exp_f32_e32 v0, v0
	v_cndmask_b32_e32 v1, 0, v179, vcc
	.loc	1 463 40                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:463:40
	v_pk_mul_f32 v[110:111], v[110:111], v[146:147] op_sel_hi:[1,0]
	v_pk_mul_f32 v[108:109], v[108:109], v[146:147] op_sel_hi:[1,0]
	.loc	1 451 19                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:451:19
	v_ldexp_f32 v3, v0, v1
	v_mul_f32_e32 v0, 0x3fb8aa3b, v153
	v_cmp_gt_f32_e32 vcc, s53, v0
	.loc	1 463 40                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:463:40
	v_pk_mul_f32 v[106:107], v[106:107], v[146:147] op_sel_hi:[1,0]
	v_pk_mul_f32 v[104:105], v[104:105], v[146:147] op_sel_hi:[1,0]
	.loc	1 451 19                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:451:19
	v_cndmask_b32_e32 v1, 0, v178, vcc
	v_add_f32_e32 v0, v0, v1
	v_exp_f32_e32 v0, v0
	v_cndmask_b32_e32 v1, 0, v179, vcc
	.loc	1 463 40                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:463:40
	v_pk_mul_f32 v[102:103], v[102:103], v[146:147] op_sel_hi:[1,0]
	v_pk_mul_f32 v[100:101], v[100:101], v[146:147] op_sel_hi:[1,0]
	.loc	1 451 19                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:451:19
	v_ldexp_f32 v253, v0, v1
	v_mul_f32_e32 v0, 0x3fb8aa3b, v154
	v_cmp_gt_f32_e32 vcc, s53, v0
	.loc	1 463 40                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:463:40
	v_pk_mul_f32 v[98:99], v[98:99], v[146:147] op_sel_hi:[1,0]
	v_pk_mul_f32 v[96:97], v[96:97], v[146:147] op_sel_hi:[1,0]
	.loc	1 451 19                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:451:19
	v_cndmask_b32_e32 v1, 0, v178, vcc
	v_add_f32_e32 v0, v0, v1
	v_exp_f32_e32 v0, v0
	v_cndmask_b32_e32 v1, 0, v179, vcc
	.loc	1 463 40                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:463:40
	v_pk_mul_f32 v[94:95], v[94:95], v[146:147] op_sel_hi:[1,0]
	v_pk_mul_f32 v[92:93], v[92:93], v[146:147] op_sel_hi:[1,0]
	.loc	1 451 19                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:451:19
	v_ldexp_f32 v255, v0, v1
	v_mul_f32_e32 v0, 0x3fb8aa3b, v155
	v_cmp_gt_f32_e32 vcc, s53, v0
	.loc	1 463 40                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:463:40
	v_pk_mul_f32 v[90:91], v[90:91], v[146:147] op_sel_hi:[1,0]
	v_pk_mul_f32 v[88:89], v[88:89], v[146:147] op_sel_hi:[1,0]
	.loc	1 451 19                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:451:19
	v_cndmask_b32_e32 v1, 0, v178, vcc
	v_add_f32_e32 v0, v0, v1
	v_exp_f32_e32 v0, v0
	v_cndmask_b32_e32 v1, 0, v179, vcc
	.loc	1 463 40                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:463:40
	v_pk_mul_f32 v[86:87], v[86:87], v[146:147] op_sel_hi:[1,0]
	v_pk_mul_f32 v[84:85], v[84:85], v[146:147] op_sel_hi:[1,0]
	.loc	1 451 19                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:451:19
	v_ldexp_f32 v153, v0, v1
.Ltmp15:
	.loc	2 263 15                        ; standard.py:263:15 @[ standard.py:293:36 @[ bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:453:45 ] ]
	v_pk_add_f32 v[0:1], v[2:3], v[252:253]
	v_pk_add_f32 v[154:155], v[254:255], v[152:153]
.Ltmp16:
	.loc	1 463 40                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:463:40
	v_pk_mul_f32 v[82:83], v[82:83], v[146:147] op_sel_hi:[1,0]
.Ltmp17:
	.loc	2 263 15                        ; standard.py:263:15 @[ standard.py:293:36 @[ bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:453:45 ] ]
	v_pk_add_f32 v[0:1], v[0:1], v[154:155]
.Ltmp18:
	.loc	1 463 40                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:463:40
	v_pk_mul_f32 v[80:81], v[80:81], v[146:147] op_sel_hi:[1,0]
.Ltmp19:
	.loc	2 263 15                        ; standard.py:263:15 @[ standard.py:293:36 @[ bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:453:45 ] ]
	v_pk_add_f32 v[0:1], v[0:1], v[0:1] op_sel:[0,1] op_sel_hi:[1,0]
.Ltmp20:
	.loc	1 463 40                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:463:40
	v_pk_mul_f32 v[78:79], v[78:79], v[146:147] op_sel_hi:[1,0]
.Ltmp21:
	.loc	2 293 36                        ; standard.py:293:36 @[ bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:453:45 ]
	v_mov_b32_e32 v1, v0
	s_nop 1
	v_permlane32_swap_b32_e32 v0, v1
.Ltmp22:
	.loc	2 263 15                        ; standard.py:263:15 @[ standard.py:293:36 @[ bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:453:45 ] ]
	v_add_f32_e32 v0, v0, v1
.Ltmp23:
	.loc	2 293 36                        ; standard.py:293:36 @[ bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:453:45 ]
	v_mov_b32_e32 v1, v0
	s_nop 1
	v_permlane16_swap_b32_e32 v0, v1
.Ltmp24:
	.loc	2 263 15                        ; standard.py:263:15 @[ standard.py:293:36 @[ bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:453:45 ] ]
	v_add_f32_e32 v0, v0, v1
.Ltmp25:
	.loc	1 453 35                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:453:35
	v_add_f32_e32 v161, v0, v151
	.loc	1 456 17                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:456:17
	v_cvt_pk_bf16_f32 v0, v2, v252
	v_cvt_pk_bf16_f32 v1, v254, v152
	v_cvt_pk_bf16_f32 v2, v3, v253
	v_cvt_pk_bf16_f32 v3, v255, v153
	.loc	1 457 33                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:457:33
	s_nop 0
	v_permlane32_swap_b32_e32 v0, v2
	v_permlane32_swap_b32_e32 v1, v3
	s_nop 0
	v_permlane16_swap_b32_e32 v0, v2
	v_permlane16_swap_b32_e32 v1, v3
	.loc	1 459 82                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:459:82
	v_add_u32_e32 v151, s55, v150
	ds_read_b64_tr_b16 v[152:153], v151
	ds_read_b64_tr_b16 v[154:155], v151 offset:4160
	ds_read_b64_tr_b16 v[252:253], v151 offset:64
	ds_read_b64_tr_b16 v[254:255], v151 offset:4096
	ds_read_b64_tr_b16 a[4:5], v151 offset:256
	ds_read_b64_tr_b16 a[6:7], v151 offset:4416
	ds_read_b64_tr_b16 a[8:9], v151 offset:320
	ds_read_b64_tr_b16 a[10:11], v151 offset:4352
	ds_read_b64_tr_b16 a[12:13], v151 offset:512
	ds_read_b64_tr_b16 a[14:15], v151 offset:4672
	ds_read_b64_tr_b16 a[16:17], v151 offset:576
	ds_read_b64_tr_b16 a[18:19], v151 offset:4608
	ds_read_b64_tr_b16 a[20:21], v151 offset:768
	ds_read_b64_tr_b16 a[22:23], v151 offset:4928
	ds_read_b64_tr_b16 a[24:25], v151 offset:832
	ds_read_b64_tr_b16 a[26:27], v151 offset:4864
	.loc	1 463 40                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:463:40
	s_waitcnt lgkmcnt(14)
	v_mfma_f32_16x16x32_bf16 a[0:3], v[152:155], v[0:3], a[0:3]
	.loc	1 459 82                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:459:82
	v_add_u32_e32 v151, s55, v149
	ds_read_b64_tr_b16 a[28:29], v151
	ds_read_b64_tr_b16 a[30:31], v151 offset:4160
	ds_read_b64_tr_b16 a[32:33], v151 offset:64
	ds_read_b64_tr_b16 a[34:35], v151 offset:4096
	ds_read_b64_tr_b16 a[36:37], v151 offset:256
	ds_read_b64_tr_b16 a[38:39], v151 offset:4416
	ds_read_b64_tr_b16 a[40:41], v151 offset:320
	ds_read_b64_tr_b16 a[42:43], v151 offset:4352
	ds_read_b64_tr_b16 a[44:45], v151 offset:512
	ds_read_b64_tr_b16 a[46:47], v151 offset:4672
	ds_read_b64_tr_b16 a[48:49], v151 offset:576
	ds_read_b64_tr_b16 a[50:51], v151 offset:4608
	ds_read_b64_tr_b16 a[52:53], v151 offset:768
	ds_read_b64_tr_b16 a[54:55], v151 offset:4928
	ds_read_b64_tr_b16 a[56:57], v151 offset:832
	ds_read_b64_tr_b16 a[58:59], v151 offset:4864
	v_add_u32_e32 v151, s55, v148
	.loc	1 463 40                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:463:40
	v_accvgpr_read_b32 v124, a2
	v_accvgpr_read_b32 v125, a3
	v_accvgpr_read_b32 v130, a0
	v_accvgpr_read_b32 v131, a1
	v_accvgpr_write_b32 a0, v126
	v_accvgpr_write_b32 a1, v127
	v_accvgpr_write_b32 a2, v128
	v_accvgpr_write_b32 a3, v129
	.loc	1 459 82                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:459:82
	ds_read_b64_tr_b16 a[60:61], v151
	ds_read_b64_tr_b16 a[62:63], v151 offset:4160
	ds_read_b64_tr_b16 a[64:65], v151 offset:64
	ds_read_b64_tr_b16 a[66:67], v151 offset:4096
	ds_read_b64_tr_b16 a[68:69], v151 offset:256
	ds_read_b64_tr_b16 a[70:71], v151 offset:4416
	ds_read_b64_tr_b16 a[72:73], v151 offset:320
	ds_read_b64_tr_b16 a[74:75], v151 offset:4352
	ds_read_b64_tr_b16 a[76:77], v151 offset:512
	ds_read_b64_tr_b16 a[78:79], v151 offset:4672
	ds_read_b64_tr_b16 a[80:81], v151 offset:576
	ds_read_b64_tr_b16 a[82:83], v151 offset:4608
	ds_read_b64_tr_b16 a[84:85], v151 offset:768
	ds_read_b64_tr_b16 a[86:87], v151 offset:4928
	ds_read_b64_tr_b16 a[88:89], v151 offset:832
	ds_read_b64_tr_b16 a[90:91], v151 offset:4864
	.loc	1 463 40                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:463:40
	s_waitcnt lgkmcnt(14)
	v_mfma_f32_16x16x32_bf16 a[0:3], a[28:31], v[0:3], a[0:3]
	.loc	1 459 82                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:459:82
	v_add_u32_e32 v151, s55, v139
	ds_read_b64_tr_b16 a[92:93], v151
	ds_read_b64_tr_b16 a[94:95], v151 offset:4160
	ds_read_b64_tr_b16 a[96:97], v151 offset:64
	ds_read_b64_tr_b16 a[98:99], v151 offset:4096
	ds_read_b64_tr_b16 a[100:101], v151 offset:256
	ds_read_b64_tr_b16 a[102:103], v151 offset:4416
	ds_read_b64_tr_b16 a[104:105], v151 offset:320
	ds_read_b64_tr_b16 a[106:107], v151 offset:4352
	ds_read_b64_tr_b16 a[108:109], v151 offset:512
	ds_read_b64_tr_b16 a[110:111], v151 offset:4672
	ds_read_b64_tr_b16 a[112:113], v151 offset:576
	ds_read_b64_tr_b16 a[114:115], v151 offset:4608
	ds_read_b64_tr_b16 a[116:117], v151 offset:768
	ds_read_b64_tr_b16 a[118:119], v151 offset:4928
	ds_read_b64_tr_b16 a[120:121], v151 offset:832
	ds_read_b64_tr_b16 a[122:123], v151 offset:4864
	.loc	1 463 40                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:463:40
	v_pk_mul_f32 v[76:77], v[76:77], v[146:147] op_sel_hi:[1,0]
	v_accvgpr_read_b32 v128, a2
	v_accvgpr_read_b32 v129, a3
	v_accvgpr_read_b32 v126, a0
	v_accvgpr_read_b32 v127, a1
	v_accvgpr_write_b32 a0, v120
	v_accvgpr_write_b32 a1, v121
	v_accvgpr_write_b32 a2, v122
	v_accvgpr_write_b32 a3, v123
	v_pk_mul_f32 v[74:75], v[74:75], v[146:147] op_sel_hi:[1,0]
	v_pk_mul_f32 v[72:73], v[72:73], v[146:147] op_sel_hi:[1,0]
	v_mfma_f32_16x16x32_bf16 a[0:3], v[252:255], v[0:3], a[0:3]
	v_mul_f32_e64 v70, v70, v146
	v_mul_f32_e64 v71, v71, v146
	v_pk_mul_f32 v[68:69], v[68:69], v[146:147] op_sel_hi:[1,0]
	v_pk_mul_f32 v[66:67], v[66:67], v[146:147] op_sel_hi:[1,0]
	v_pk_mul_f32 v[64:65], v[64:65], v[146:147] op_sel_hi:[1,0]
	v_pk_mul_f32 v[62:63], v[62:63], v[146:147] op_sel_hi:[1,0]
	v_pk_mul_f32 v[60:61], v[60:61], v[146:147] op_sel_hi:[1,0]
	v_pk_mul_f32 v[58:59], v[58:59], v[146:147] op_sel_hi:[1,0]
	v_pk_mul_f32 v[56:57], v[56:57], v[146:147] op_sel_hi:[1,0]
	v_accvgpr_read_b32 v122, a2
	v_accvgpr_read_b32 v123, a3
	v_accvgpr_read_b32 v120, a0
	v_accvgpr_read_b32 v121, a1
	v_accvgpr_write_b32 a0, v116
	v_accvgpr_write_b32 a1, v117
	v_accvgpr_write_b32 a2, v118
	v_accvgpr_write_b32 a3, v119
	v_pk_mul_f32 v[54:55], v[54:55], v[146:147] op_sel_hi:[1,0]
	v_pk_mul_f32 v[52:53], v[52:53], v[146:147] op_sel_hi:[1,0]
	v_mfma_f32_16x16x32_bf16 a[0:3], a[32:35], v[0:3], a[0:3]
	v_mul_f32_e64 v50, v50, v146
	v_mul_f32_e64 v51, v51, v146
	v_pk_mul_f32 v[48:49], v[48:49], v[146:147] op_sel_hi:[1,0]
	v_pk_mul_f32 v[46:47], v[46:47], v[146:147] op_sel_hi:[1,0]
	v_pk_mul_f32 v[44:45], v[44:45], v[146:147] op_sel_hi:[1,0]
	v_pk_mul_f32 v[42:43], v[42:43], v[146:147] op_sel_hi:[1,0]
	v_pk_mul_f32 v[40:41], v[40:41], v[146:147] op_sel_hi:[1,0]
	v_pk_mul_f32 v[38:39], v[38:39], v[146:147] op_sel_hi:[1,0]
	v_pk_mul_f32 v[36:37], v[36:37], v[146:147] op_sel_hi:[1,0]
	v_accvgpr_read_b32 v118, a2
	v_accvgpr_read_b32 v119, a3
	v_accvgpr_read_b32 v116, a0
	v_accvgpr_read_b32 v117, a1
	v_accvgpr_write_b32 a0, v112
	v_accvgpr_write_b32 a1, v113
	v_accvgpr_write_b32 a2, v114
	v_accvgpr_write_b32 a3, v115
	v_pk_mul_f32 v[34:35], v[34:35], v[146:147] op_sel_hi:[1,0]
	v_pk_mul_f32 v[32:33], v[32:33], v[146:147] op_sel_hi:[1,0]
	v_mfma_f32_16x16x32_bf16 a[0:3], a[60:63], v[0:3], a[0:3]
	v_mul_f32_e64 v30, v30, v146
	v_mul_f32_e64 v31, v31, v146
	v_pk_mul_f32 v[28:29], v[28:29], v[146:147] op_sel_hi:[1,0]
	v_pk_mul_f32 v[26:27], v[26:27], v[146:147] op_sel_hi:[1,0]
	v_pk_mul_f32 v[24:25], v[24:25], v[146:147] op_sel_hi:[1,0]
	v_pk_mul_f32 v[22:23], v[22:23], v[146:147] op_sel_hi:[1,0]
	v_pk_mul_f32 v[20:21], v[20:21], v[146:147] op_sel_hi:[1,0]
	v_pk_mul_f32 v[18:19], v[18:19], v[146:147] op_sel_hi:[1,0]
	v_pk_mul_f32 v[16:17], v[16:17], v[146:147] op_sel_hi:[1,0]
	v_accvgpr_read_b32 v114, a2
	v_accvgpr_read_b32 v115, a3
	v_accvgpr_read_b32 v112, a0
	v_accvgpr_read_b32 v113, a1
	v_accvgpr_write_b32 a0, v108
	v_accvgpr_write_b32 a1, v109
	v_accvgpr_write_b32 a2, v110
	v_accvgpr_write_b32 a3, v111
	v_pk_mul_f32 v[14:15], v[14:15], v[146:147] op_sel_hi:[1,0]
	v_pk_mul_f32 v[12:13], v[12:13], v[146:147] op_sel_hi:[1,0]
	s_waitcnt lgkmcnt(14)
	v_mfma_f32_16x16x32_bf16 a[0:3], a[92:95], v[0:3], a[0:3]
	v_mul_f32_e64 v10, v10, v146
	v_mul_f32_e64 v11, v11, v146
	v_pk_mul_f32 v[8:9], v[8:9], v[146:147] op_sel_hi:[1,0]
	v_pk_mul_f32 v[6:7], v[6:7], v[146:147] op_sel_hi:[1,0]
	v_pk_mul_f32 v[4:5], v[4:5], v[146:147] op_sel_hi:[1,0]
	s_nop 2
	v_accvgpr_read_b32 v110, a2
	v_accvgpr_read_b32 v111, a3
	v_accvgpr_read_b32 v108, a0
	v_accvgpr_read_b32 v109, a1
	v_accvgpr_write_b32 a0, v104
	v_accvgpr_write_b32 a1, v105
	v_accvgpr_write_b32 a2, v106
	v_accvgpr_write_b32 a3, v107
	s_nop 1
	v_mfma_f32_16x16x32_bf16 a[0:3], a[64:67], v[0:3], a[0:3]
	s_nop 7
	v_accvgpr_read_b32 v106, a2
	v_accvgpr_read_b32 v107, a3
	v_accvgpr_read_b32 v104, a0
	v_accvgpr_read_b32 v105, a1
	v_accvgpr_write_b32 a0, v100
	v_accvgpr_write_b32 a1, v101
	v_accvgpr_write_b32 a2, v102
	v_accvgpr_write_b32 a3, v103
	s_waitcnt lgkmcnt(12)
	s_nop 0
	v_mfma_f32_16x16x32_bf16 a[0:3], a[96:99], v[0:3], a[0:3]
	s_nop 7
	v_accvgpr_read_b32 v102, a2
	v_accvgpr_read_b32 v103, a3
	v_accvgpr_read_b32 v100, a0
	v_accvgpr_read_b32 v101, a1
	v_accvgpr_write_b32 a0, v96
	v_accvgpr_write_b32 a1, v97
	v_accvgpr_write_b32 a2, v98
	v_accvgpr_write_b32 a3, v99
	s_nop 1
	v_mfma_f32_16x16x32_bf16 a[0:3], a[4:7], v[0:3], a[0:3]
	s_nop 7
	v_accvgpr_read_b32 v98, a2
	v_accvgpr_read_b32 v99, a3
	v_accvgpr_read_b32 v96, a0
	v_accvgpr_read_b32 v97, a1
	v_accvgpr_write_b32 a0, v92
	v_accvgpr_write_b32 a1, v93
	v_accvgpr_write_b32 a2, v94
	v_accvgpr_write_b32 a3, v95
	s_nop 1
	v_mfma_f32_16x16x32_bf16 a[0:3], a[36:39], v[0:3], a[0:3]
	s_nop 7
	v_accvgpr_read_b32 v94, a2
	v_accvgpr_read_b32 v95, a3
	v_accvgpr_read_b32 v92, a0
	v_accvgpr_read_b32 v93, a1
	v_accvgpr_write_b32 a0, v88
	v_accvgpr_write_b32 a1, v89
	v_accvgpr_write_b32 a2, v90
	v_accvgpr_write_b32 a3, v91
	s_nop 1
	v_mfma_f32_16x16x32_bf16 a[0:3], a[8:11], v[0:3], a[0:3]
	s_nop 7
	v_accvgpr_read_b32 v90, a2
	v_accvgpr_read_b32 v91, a3
	v_accvgpr_read_b32 v88, a0
	v_accvgpr_read_b32 v89, a1
	v_accvgpr_write_b32 a0, v84
	v_accvgpr_write_b32 a1, v85
	v_accvgpr_write_b32 a2, v86
	v_accvgpr_write_b32 a3, v87
	s_nop 1
	v_mfma_f32_16x16x32_bf16 a[0:3], a[40:43], v[0:3], a[0:3]
	s_nop 7
	v_accvgpr_read_b32 v86, a2
	v_accvgpr_read_b32 v87, a3
	v_accvgpr_read_b32 v84, a0
	v_accvgpr_read_b32 v85, a1
	v_accvgpr_write_b32 a0, v80
	v_accvgpr_write_b32 a1, v81
	v_accvgpr_write_b32 a2, v82
	v_accvgpr_write_b32 a3, v83
	s_nop 1
	v_mfma_f32_16x16x32_bf16 a[0:3], a[68:71], v[0:3], a[0:3]
	s_nop 7
	v_accvgpr_read_b32 v82, a2
	v_accvgpr_read_b32 v83, a3
	v_accvgpr_read_b32 v80, a0
	v_accvgpr_read_b32 v81, a1
	v_accvgpr_write_b32 a0, v76
	v_accvgpr_write_b32 a1, v77
	v_accvgpr_write_b32 a2, v78
	v_accvgpr_write_b32 a3, v79
	s_waitcnt lgkmcnt(10)
	s_nop 0
	v_mfma_f32_16x16x32_bf16 a[0:3], a[100:103], v[0:3], a[0:3]
	s_nop 7
	v_accvgpr_read_b32 v78, a2
	v_accvgpr_read_b32 v79, a3
	v_accvgpr_read_b32 v76, a0
	v_accvgpr_read_b32 v77, a1
	v_accvgpr_write_b32 a0, v72
	v_accvgpr_write_b32 a1, v73
	v_accvgpr_write_b32 a2, v74
	v_accvgpr_write_b32 a3, v75
	s_nop 1
	v_mfma_f32_16x16x32_bf16 a[0:3], a[72:75], v[0:3], a[0:3]
	s_nop 7
	v_accvgpr_read_b32 v74, a2
	v_accvgpr_read_b32 v75, a3
	v_accvgpr_read_b32 v72, a0
	v_accvgpr_read_b32 v73, a1
	v_accvgpr_write_b32 a0, v68
	v_accvgpr_write_b32 a1, v69
	v_accvgpr_write_b32 a2, v70
	v_accvgpr_write_b32 a3, v71
	s_waitcnt lgkmcnt(8)
	s_nop 0
	v_mfma_f32_16x16x32_bf16 a[0:3], a[104:107], v[0:3], a[0:3]
	s_nop 7
	v_accvgpr_read_b32 v70, a2
	v_accvgpr_read_b32 v71, a3
	v_accvgpr_read_b32 v68, a0
	v_accvgpr_read_b32 v69, a1
	v_accvgpr_write_b32 a0, v64
	v_accvgpr_write_b32 a1, v65
	v_accvgpr_write_b32 a2, v66
	v_accvgpr_write_b32 a3, v67
	s_nop 1
	v_mfma_f32_16x16x32_bf16 a[0:3], a[12:15], v[0:3], a[0:3]
	s_nop 7
	v_accvgpr_read_b32 v66, a2
	v_accvgpr_read_b32 v67, a3
	v_accvgpr_read_b32 v64, a0
	v_accvgpr_read_b32 v65, a1
	v_accvgpr_write_b32 a0, v60
	v_accvgpr_write_b32 a1, v61
	v_accvgpr_write_b32 a2, v62
	v_accvgpr_write_b32 a3, v63
	s_nop 1
	v_mfma_f32_16x16x32_bf16 a[0:3], a[44:47], v[0:3], a[0:3]
	s_nop 7
	v_accvgpr_read_b32 v62, a2
	v_accvgpr_read_b32 v63, a3
	v_accvgpr_read_b32 v60, a0
	v_accvgpr_read_b32 v61, a1
	v_accvgpr_write_b32 a0, v56
	v_accvgpr_write_b32 a1, v57
	v_accvgpr_write_b32 a2, v58
	v_accvgpr_write_b32 a3, v59
	s_nop 1
	v_mfma_f32_16x16x32_bf16 a[0:3], a[16:19], v[0:3], a[0:3]
	s_nop 7
	v_accvgpr_read_b32 v58, a2
	v_accvgpr_read_b32 v59, a3
	v_accvgpr_read_b32 v56, a0
	v_accvgpr_read_b32 v57, a1
	v_accvgpr_write_b32 a0, v52
	v_accvgpr_write_b32 a1, v53
	v_accvgpr_write_b32 a2, v54
	v_accvgpr_write_b32 a3, v55
	s_nop 1
	v_mfma_f32_16x16x32_bf16 a[0:3], a[48:51], v[0:3], a[0:3]
	s_nop 7
	v_accvgpr_read_b32 v54, a2
	v_accvgpr_read_b32 v55, a3
	v_accvgpr_read_b32 v52, a0
	v_accvgpr_read_b32 v53, a1
	v_accvgpr_write_b32 a0, v48
	v_accvgpr_write_b32 a1, v49
	v_accvgpr_write_b32 a2, v50
	v_accvgpr_write_b32 a3, v51
	s_nop 1
	v_mfma_f32_16x16x32_bf16 a[0:3], a[76:79], v[0:3], a[0:3]
	s_nop 7
	v_accvgpr_read_b32 v50, a2
	v_accvgpr_read_b32 v51, a3
	v_accvgpr_read_b32 v48, a0
	v_accvgpr_read_b32 v49, a1
	v_accvgpr_write_b32 a0, v44
	v_accvgpr_write_b32 a1, v45
	v_accvgpr_write_b32 a2, v46
	v_accvgpr_write_b32 a3, v47
	s_waitcnt lgkmcnt(6)
	s_nop 0
	v_mfma_f32_16x16x32_bf16 a[0:3], a[108:111], v[0:3], a[0:3]
	s_nop 7
	v_accvgpr_read_b32 v46, a2
	v_accvgpr_read_b32 v47, a3
	v_accvgpr_read_b32 v44, a0
	v_accvgpr_read_b32 v45, a1
	v_accvgpr_write_b32 a0, v40
	v_accvgpr_write_b32 a1, v41
	v_accvgpr_write_b32 a2, v42
	v_accvgpr_write_b32 a3, v43
	s_nop 1
	v_mfma_f32_16x16x32_bf16 a[0:3], a[80:83], v[0:3], a[0:3]
	s_nop 7
	v_accvgpr_read_b32 v42, a2
	v_accvgpr_read_b32 v43, a3
	v_accvgpr_read_b32 v40, a0
	v_accvgpr_read_b32 v41, a1
	v_accvgpr_write_b32 a0, v36
	v_accvgpr_write_b32 a1, v37
	v_accvgpr_write_b32 a2, v38
	v_accvgpr_write_b32 a3, v39
	s_waitcnt lgkmcnt(4)
	s_nop 0
	v_mfma_f32_16x16x32_bf16 a[0:3], a[112:115], v[0:3], a[0:3]
	s_nop 7
	v_accvgpr_read_b32 v38, a2
	v_accvgpr_read_b32 v39, a3
	v_accvgpr_read_b32 v36, a0
	v_accvgpr_read_b32 v37, a1
	v_accvgpr_write_b32 a0, v32
	v_accvgpr_write_b32 a1, v33
	v_accvgpr_write_b32 a2, v34
	v_accvgpr_write_b32 a3, v35
	s_nop 1
	v_mfma_f32_16x16x32_bf16 a[0:3], a[20:23], v[0:3], a[0:3]
	s_nop 7
	v_accvgpr_read_b32 v34, a2
	v_accvgpr_read_b32 v35, a3
	v_accvgpr_read_b32 v32, a0
	v_accvgpr_read_b32 v33, a1
	v_accvgpr_write_b32 a0, v28
	v_accvgpr_write_b32 a1, v29
	v_accvgpr_write_b32 a2, v30
	v_accvgpr_write_b32 a3, v31
	s_nop 1
	v_mfma_f32_16x16x32_bf16 a[0:3], a[52:55], v[0:3], a[0:3]
	s_nop 7
	v_accvgpr_read_b32 v30, a2
	v_accvgpr_read_b32 v31, a3
	v_accvgpr_read_b32 v28, a0
	v_accvgpr_read_b32 v29, a1
	v_accvgpr_write_b32 a0, v24
	v_accvgpr_write_b32 a1, v25
	v_accvgpr_write_b32 a2, v26
	v_accvgpr_write_b32 a3, v27
	s_nop 1
	v_mfma_f32_16x16x32_bf16 a[0:3], a[24:27], v[0:3], a[0:3]
	s_nop 7
	v_accvgpr_read_b32 v26, a2
	v_accvgpr_read_b32 v27, a3
	v_accvgpr_read_b32 v24, a0
	v_accvgpr_read_b32 v25, a1
	v_accvgpr_write_b32 a0, v20
	v_accvgpr_write_b32 a1, v21
	v_accvgpr_write_b32 a2, v22
	v_accvgpr_write_b32 a3, v23
	s_nop 1
	v_mfma_f32_16x16x32_bf16 a[0:3], a[56:59], v[0:3], a[0:3]
	s_nop 7
	v_accvgpr_read_b32 v22, a2
	v_accvgpr_read_b32 v23, a3
	v_accvgpr_read_b32 v20, a0
	v_accvgpr_read_b32 v21, a1
	v_accvgpr_write_b32 a0, v16
	v_accvgpr_write_b32 a1, v17
	v_accvgpr_write_b32 a2, v18
	v_accvgpr_write_b32 a3, v19
	s_nop 1
	v_mfma_f32_16x16x32_bf16 a[0:3], a[84:87], v[0:3], a[0:3]
	s_nop 7
	v_accvgpr_read_b32 v18, a2
	v_accvgpr_read_b32 v19, a3
	v_accvgpr_read_b32 v16, a0
	v_accvgpr_read_b32 v17, a1
	v_accvgpr_write_b32 a0, v12
	v_accvgpr_write_b32 a1, v13
	v_accvgpr_write_b32 a2, v14
	v_accvgpr_write_b32 a3, v15
	s_waitcnt lgkmcnt(2)
	s_nop 0
	v_mfma_f32_16x16x32_bf16 a[0:3], a[116:119], v[0:3], a[0:3]
	s_nop 7
	v_accvgpr_read_b32 v14, a2
	v_accvgpr_read_b32 v15, a3
	v_accvgpr_read_b32 v12, a0
	v_accvgpr_read_b32 v13, a1
	v_accvgpr_write_b32 a0, v8
	v_accvgpr_write_b32 a1, v9
	v_accvgpr_write_b32 a2, v10
	v_accvgpr_write_b32 a3, v11
	s_nop 1
	v_mfma_f32_16x16x32_bf16 a[0:3], a[88:91], v[0:3], a[0:3]
	s_nop 7
	v_accvgpr_read_b32 v10, a2
	v_accvgpr_read_b32 v11, a3
	v_accvgpr_read_b32 v8, a0
	v_accvgpr_read_b32 v9, a1
	v_accvgpr_write_b32 a0, v4
	v_accvgpr_write_b32 a1, v5
	v_accvgpr_write_b32 a2, v6
	v_accvgpr_write_b32 a3, v7
	s_waitcnt lgkmcnt(0)
	s_nop 0
	v_mfma_f32_16x16x32_bf16 a[0:3], a[120:123], v[0:3], a[0:3]
	v_mov_b32_e32 v0, v172
	s_nop 6
	v_accvgpr_read_b32 v6, a2
	v_accvgpr_read_b32 v7, a3
	v_accvgpr_read_b32 v4, a0
	v_accvgpr_read_b32 v5, a1
	.loc	1 411 19                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:411:19
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 19 is_stmt 0                ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:0:19
	v_mov_b32_e32 v173, v143
	v_mov_b32_e32 v143, v157
	v_mov_b32_e32 v157, v150
	v_mov_b32_e32 v150, v149
	v_mov_b32_e32 v252, v148
	v_mov_b32_e32 v163, v139
	v_accvgpr_read_b32 v148, a127
	v_accvgpr_read_b32 v149, a128
	v_accvgpr_read_b32 v178, a129
.LBB0_7:                                ; %Flow644
	.loc	1 473 51 is_stmt 1              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:473:51
	s_ashr_i32 s5, s49, 31
	s_load_dwordx2 s[2:3], s[0:1], 0x58
	s_load_dword s4, s[0:1], 0x60
	.loc	1 472 23                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:472:23
	s_or_b32 s1, s49, s19
	.loc	1 481 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:481:57
	s_lshr_b32 s16, s5, 26
	.loc	1 473 51                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:473:51
	s_add_i32 s5, s1, s16
	s_andn2_b32 s5, s5, 63
	.loc	1 472 23                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:472:23
	s_or_b32 s6, s49, s42
	.loc	1 473 30                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:473:30
	s_lshl_b32 s15, s50, 6
	.loc	1 473 51 is_stmt 0              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:473:51
	s_sub_i32 s5, s1, s5
	s_add_i32 s17, s6, s16
	.loc	1 473 42                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:473:42
	s_add_i32 s5, s15, s5
	.loc	1 473 51                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:473:51
	s_andn2_b32 s17, s17, 63
	.loc	1 475 33 is_stmt 1              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:475:33
	s_mul_i32 s5, s5, s34
	.loc	1 472 23                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:472:23
	s_or_b32 s7, s49, s43
	.loc	1 473 51                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:473:51
	s_sub_i32 s17, s6, s17
	.loc	1 475 50                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:475:50
	v_add_u32_e32 v0, s5, v135
	.loc	1 473 51                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:473:51
	s_add_i32 s20, s7, s16
	.loc	1 473 42 is_stmt 0              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:473:42
	s_add_i32 s17, s15, s17
	.loc	1 476 88 is_stmt 1              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:476:88
	ds_bpermute_b32 v154, v165, v0
	.loc	1 473 51                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:473:51
	s_andn2_b32 s20, s20, 63
	.loc	1 475 33                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:475:33
	s_mul_i32 s17, s17, s34
	.loc	1 476 88                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:476:88
	v_mov_b32_e32 v155, s33
	.loc	1 470 32                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:470:32
	s_xor_b32 s0, s39, 1
	.loc	1 473 51                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:473:51
	s_sub_i32 s20, s7, s20
	.loc	1 475 50                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:475:50
	v_add_u32_e32 v2, s17, v135
	.loc	1 476 88                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:476:88
	v_cmp_lt_i32_e32 vcc, s1, v155
	.loc	1 473 42                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:473:42
	s_add_i32 s20, s15, s20
	.loc	1 476 64                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:476:64
	s_lshl_b32 s5, s0, 15
	s_add_i32 s17, 0, 0x107e0
	.loc	1 476 88 is_stmt 0              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:476:88
	v_lshrrev_b64 v[0:1], v132, vcc
	ds_bpermute_b32 v2, v166, v2
	.loc	1 475 33 is_stmt 1              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:475:33
	s_mul_i32 s20, s20, s34
	.loc	1 476 64                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:476:64
	s_add_i32 s5, s17, s5
	.loc	1 476 88 is_stmt 0              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:476:88
	v_and_b32_e32 v0, 1, v0
	.loc	1 475 50 is_stmt 1              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:475:50
	v_add_u32_e32 v3, s20, v135
	.loc	1 476 88                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:476:88
	s_add_i32 s20, s5, s41
	s_waitcnt lgkmcnt(0)
	v_lshlrev_b32_e32 v1, 1, v154
	v_bfrev_b32_e32 v154, 1
	v_cmp_eq_u32_e32 vcc, 1, v0
	.loc	1 472 23                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:472:23
	s_or_b32 s10, s49, s44
	.loc	1 476 88                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:476:88
	s_mov_b32 m0, s20
	v_cndmask_b32_e32 v0, v154, v1, vcc
	v_cmp_lt_i32_e32 vcc, s6, v155
	.loc	1 473 51                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:473:51
	s_add_i32 s21, s10, s16
	.loc	1 476 88                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:476:88
	s_waitcnt lgkmcnt(0)
	s_barrier
	buffer_load_dwordx4 v0, s[28:31], 0 offen lds
	v_lshrrev_b64 v[0:1], v134, vcc
	.loc	1 473 51                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:473:51
	s_andn2_b32 s21, s21, 63
	.loc	1 476 88                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:476:88
	v_lshlrev_b32_e32 v1, 1, v2
	ds_bpermute_b32 v2, v167, v3
	.loc	1 473 51                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:473:51
	s_sub_i32 s21, s10, s21
	.loc	1 476 88                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:476:88
	v_and_b32_e32 v0, 1, v0
	.loc	1 473 42                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:473:42
	s_add_i32 s21, s15, s21
	.loc	1 476 88                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:476:88
	v_cmp_eq_u32_e32 vcc, 1, v0
	.loc	1 472 23                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:472:23
	s_or_b32 s11, s49, s45
	.loc	1 475 33                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:475:33
	s_mul_i32 s21, s21, s34
	.loc	1 476 88                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:476:88
	s_add_i32 m0, s20, 0x1000
	v_cndmask_b32_e32 v0, v154, v1, vcc
	v_cmp_lt_i32_e32 vcc, s7, v155
	.loc	1 473 51                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:473:51
	s_add_i32 s36, s11, s16
	.loc	1 475 50                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:475:50
	v_add_u32_e32 v146, s21, v135
	.loc	1 476 88                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:476:88
	buffer_load_dwordx4 v0, s[28:31], 0 offen lds
	v_lshrrev_b64 v[0:1], v136, vcc
	.loc	1 473 51                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:473:51
	s_andn2_b32 s36, s36, 63
	.loc	1 476 88                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:476:88
	s_waitcnt lgkmcnt(0)
	v_lshlrev_b32_e32 v1, 1, v2
	ds_bpermute_b32 v2, v168, v146
	.loc	1 473 51                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:473:51
	s_sub_i32 s36, s11, s36
	.loc	1 476 88                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:476:88
	v_and_b32_e32 v0, 1, v0
	.loc	1 473 42                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:473:42
	s_add_i32 s36, s15, s36
	.loc	1 476 88                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:476:88
	v_cmp_eq_u32_e32 vcc, 1, v0
	.loc	1 472 23                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:472:23
	s_or_b32 s12, s49, s46
	.loc	1 475 33                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:475:33
	s_mul_i32 s36, s36, s34
	.loc	1 476 88                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:476:88
	s_add_i32 m0, s20, 0x2000
	v_cndmask_b32_e32 v0, v154, v1, vcc
	v_cmp_lt_i32_e32 vcc, s10, v155
	.loc	1 473 51                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:473:51
	s_add_i32 s37, s12, s16
	.loc	1 475 50                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:475:50
	v_add_u32_e32 v151, s36, v135
	.loc	1 476 88                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:476:88
	buffer_load_dwordx4 v0, s[28:31], 0 offen lds
	v_lshrrev_b64 v[0:1], v138, vcc
	.loc	1 473 51                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:473:51
	s_andn2_b32 s37, s37, 63
	.loc	1 476 88                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:476:88
	s_waitcnt lgkmcnt(0)
	v_lshlrev_b32_e32 v1, 1, v2
	ds_bpermute_b32 v2, v165, v151
	.loc	1 473 51                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:473:51
	s_sub_i32 s37, s12, s37
	.loc	1 476 88                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:476:88
	v_and_b32_e32 v0, 1, v0
	.loc	1 473 42                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:473:42
	s_add_i32 s37, s15, s37
	.loc	1 476 88                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:476:88
	v_cmp_eq_u32_e32 vcc, 1, v0
	.loc	1 472 23                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:472:23
	s_or_b32 s13, s49, s47
	.loc	1 475 33                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:475:33
	s_mul_i32 s37, s37, s34
	.loc	1 476 88                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:476:88
	s_add_i32 m0, s20, 0x3000
	v_cndmask_b32_e32 v0, v154, v1, vcc
	v_cmp_lt_i32_e32 vcc, s11, v155
	.loc	1 473 51                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:473:51
	s_add_i32 s42, s13, s16
	.loc	1 475 50                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:475:50
	v_add_u32_e32 v152, s37, v135
	.loc	1 476 88                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:476:88
	buffer_load_dwordx4 v0, s[28:31], 0 offen lds
	v_lshrrev_b64 v[0:1], v132, vcc
	.loc	1 473 51                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:473:51
	s_andn2_b32 s42, s42, 63
	.loc	1 476 88                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:476:88
	s_waitcnt lgkmcnt(0)
	v_lshlrev_b32_e32 v1, 1, v2
	ds_bpermute_b32 v2, v169, v152
	.loc	1 473 51                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:473:51
	s_sub_i32 s42, s13, s42
	.loc	1 476 88                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:476:88
	v_and_b32_e32 v0, 1, v0
	.loc	1 473 42                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:473:42
	s_add_i32 s42, s15, s42
	.loc	1 476 88                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:476:88
	v_cmp_eq_u32_e32 vcc, 1, v0
	.loc	1 472 23                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:472:23
	s_or_b32 s14, s49, s48
	.loc	1 475 33                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:475:33
	s_mul_i32 s42, s42, s34
	.loc	1 476 88                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:476:88
	s_add_i32 m0, s20, 0x4000
	v_cndmask_b32_e32 v0, v154, v1, vcc
	v_cmp_lt_i32_e32 vcc, s12, v155
	.loc	1 473 51                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:473:51
	s_add_i32 s43, s14, s16
	.loc	1 475 50                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:475:50
	v_add_u32_e32 v153, s42, v135
	.loc	1 476 88                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:476:88
	buffer_load_dwordx4 v0, s[28:31], 0 offen lds
	v_lshrrev_b64 v[0:1], v140, vcc
	.loc	1 473 51                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:473:51
	s_andn2_b32 s43, s43, 63
	.loc	1 476 88                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:476:88
	s_waitcnt lgkmcnt(0)
	v_lshlrev_b32_e32 v1, 1, v2
	ds_bpermute_b32 v2, v170, v153
	.loc	1 473 51                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:473:51
	s_sub_i32 s43, s14, s43
	.loc	1 476 88                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:476:88
	v_and_b32_e32 v0, 1, v0
	.loc	1 473 42                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:473:42
	s_add_i32 s43, s15, s43
	.loc	1 476 88                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:476:88
	v_cmp_eq_u32_e32 vcc, 1, v0
	.loc	1 475 33                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:475:33
	s_mul_i32 s43, s43, s34
	.loc	1 476 88                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:476:88
	s_add_i32 m0, s20, 0x5000
	v_cndmask_b32_e32 v0, v154, v1, vcc
	v_cmp_lt_i32_e32 vcc, s13, v155
	.loc	1 475 50                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:475:50
	v_add_u32_e32 v135, s43, v135
	.loc	1 476 88                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:476:88
	buffer_load_dwordx4 v0, s[28:31], 0 offen lds
	v_lshrrev_b64 v[0:1], v142, vcc
	v_and_b32_e32 v0, 1, v0
	s_waitcnt lgkmcnt(0)
	v_lshlrev_b32_e32 v1, 1, v2
	ds_bpermute_b32 v2, v171, v135
	v_cmp_eq_u32_e32 vcc, 1, v0
	s_add_i32 m0, s20, 0x6000
	.loc	1 484 65                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:484:65
	s_mulk_i32 s0, 0x1080
	.loc	1 476 88                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:476:88
	v_cndmask_b32_e32 v0, v154, v1, vcc
	v_cmp_lt_i32_e32 vcc, s14, v155
	buffer_load_dwordx4 v0, s[28:31], 0 offen lds
	s_add_i32 m0, s20, 0x7000
	v_lshrrev_b64 v[0:1], v144, vcc
	v_and_b32_e32 v0, 1, v0
	s_waitcnt lgkmcnt(0)
	v_lshlrev_b32_e32 v1, 1, v2
	v_cmp_eq_u32_e32 vcc, 1, v0
	.loc	1 484 65                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:484:65
	s_add_i32 s1, 0, 0x228c0
	s_add_i32 s6, s1, s0
	.loc	1 476 88                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:476:88
	v_cndmask_b32_e32 v0, v154, v1, vcc
	buffer_load_dwordx4 v0, s[28:31], 0 offen lds
	.loc	1 480 26                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:480:26
	v_or_b32_e32 v0, s49, v148
	.loc	1 481 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:481:57
	v_add_u32_e32 v1, s16, v0
	v_and_b32_e32 v1, 0x7fffffc0, v1
	v_sub_u32_e32 v1, v0, v1
	.loc	1 481 45 is_stmt 0              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:481:45
	v_add_u32_e32 v1, s15, v1
	.loc	1 483 37 is_stmt 1              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:483:37
	v_mul_lo_u32 v1, v1, s35
	.loc	1 484 89                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:484:89
	v_add_lshl_u32 v1, v1, v137, 1
	.loc	1 484 126 is_stmt 0             ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:484:126
	v_cmp_gt_i32_e32 vcc, s33, v0
	.loc	1 484 89                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:484:89
	s_add_i32 m0, s6, s40
	s_mov_b32 s10, s30
	v_cndmask_b32_e32 v0, v154, v1, vcc
	s_mov_b32 s11, s31
	.loc	1 490 24 is_stmt 1              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:490:24
	s_lshl_b32 s0, s39, 15
	.loc	1 484 89                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:484:89
	buffer_load_dwordx4 v0, s[8:11], 0 offen lds
	.loc	1 490 24                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:490:24
	s_add_i32 s8, s17, s0
	.loc	1 490 38 is_stmt 0              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:490:38
	v_add_u32_e32 v0, s8, v160
	.loc	1 489 39 is_stmt 1              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:489:39
	s_waitcnt vmcnt(10) lgkmcnt(0)
	s_barrier
	.loc	1 490 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:490:38
	s_waitcnt vmcnt(0)
	ds_read_b128 v[134:137], v0
	ds_read_b128 v[152:155], v0 offset:256
	v_add_u32_e32 v1, s8, v145
	.loc	1 492 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:492:57
	s_waitcnt lgkmcnt(1)
	v_mfma_f32_16x16x32_bf16 a[0:3], v[134:137], v[248:251], 0
	.loc	1 490 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:490:38
	ds_read_b128 v[134:137], v1
	ds_read_b128 v[164:167], v1 offset:256
	v_accvgpr_write_b32 a127, v145
	v_mov_b32_e32 v145, v173
	v_add_u32_e32 v2, s8, v145
	.loc	1 492 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:492:57
	s_waitcnt lgkmcnt(1)
	v_mfma_f32_16x16x32_bf16 a[0:3], v[134:137], v[244:247], a[0:3]
	.loc	1 490 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:490:38
	ds_read_b128 v[134:137], v2
	ds_read_b128 v[168:171], v2 offset:256
	v_add_u32_e32 v3, s8, v143
	.loc	1 495 26                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:495:26
	s_mul_i32 s0, s39, 0x1080
	.loc	1 492 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:492:57
	s_waitcnt lgkmcnt(1)
	v_mfma_f32_16x16x32_bf16 a[0:3], v[134:137], v[240:243], a[0:3]
	.loc	1 490 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:490:38
	ds_read_b128 v[134:137], v3
	ds_read_b128 v[174:177], v3 offset:256
	.loc	1 495 26                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:495:26
	s_add_i32 s1, s1, s0
	.loc	1 499 33                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:499:33
	s_lshl_b32 s0, s23, 5
	.loc	1 492 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:492:57
	s_waitcnt lgkmcnt(1)
	v_mfma_f32_16x16x32_bf16 a[0:3], v[134:137], v[236:239], a[0:3]
	v_accvgpr_read_b32 v148, a125
	.loc	1 500 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:500:57
	v_mov_b32_e32 v146, 0xff800000
	v_accvgpr_read_b32 v142, a124
	.loc	1 492 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:492:57
	v_mfma_f32_16x16x32_bf16 a[0:3], v[152:155], v[232:235], a[0:3]
	.loc	1 490 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:490:38
	ds_read_b128 v[134:137], v0 offset:512
	ds_read_b128 v[152:155], v0 offset:768
	.loc	1 499 43                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:499:43
	v_or_b32_e32 v144, s0, v158
	v_or_b32_e32 v151, s0, v159
	.loc	1 492 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:492:57
	v_mfma_f32_16x16x32_bf16 a[0:3], v[164:167], v[228:231], a[0:3]
	s_mov_b32 s7, 0xc2fc0000
	v_accvgpr_write_b32 a137, v252
	v_accvgpr_mov_b32 a135, a124
	v_mfma_f32_16x16x32_bf16 a[0:3], v[168:171], v[224:227], a[0:3]
	.loc	1 554 25                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:554:25
	s_mul_i32 s2, s2, s26
	.loc	1 560 30                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:560:30
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s26, 0x7ffffffe
	.loc	1 492 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:492:57
	s_waitcnt lgkmcnt(2)
	v_mfma_f32_16x16x32_bf16 a[0:3], v[174:177], v[220:223], a[0:3]
	s_waitcnt lgkmcnt(1)
	v_mfma_f32_16x16x32_bf16 a[0:3], v[134:137], v[216:219], a[0:3]
	.loc	1 490 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:490:38
	ds_read_b128 v[134:137], v1 offset:512
	ds_read_b128 v[164:167], v1 offset:768
	.loc	1 492 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:492:57
	s_waitcnt lgkmcnt(1)
	v_mfma_f32_16x16x32_bf16 a[0:3], v[134:137], v[212:215], a[0:3]
	.loc	1 490 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:490:38
	ds_read_b128 v[134:137], v2 offset:512
	ds_read_b128 v[168:171], v2 offset:768
	.loc	1 492 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:492:57
	s_waitcnt lgkmcnt(1)
	v_mfma_f32_16x16x32_bf16 a[0:3], v[134:137], v[208:211], a[0:3]
	.loc	1 490 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:490:38
	ds_read_b128 v[134:137], v3 offset:512
	ds_read_b128 v[174:177], v3 offset:768
	.loc	1 492 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:492:57
	s_waitcnt lgkmcnt(1)
	v_mfma_f32_16x16x32_bf16 a[0:3], v[134:137], v[204:207], a[0:3]
	v_mfma_f32_16x16x32_bf16 a[0:3], v[152:155], v[200:203], a[0:3]
	.loc	1 490 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:490:38
	ds_read_b128 v[134:137], v0 offset:16384
	ds_read_b128 v[152:155], v0 offset:16640
	.loc	1 492 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:492:57
	v_mfma_f32_16x16x32_bf16 a[0:3], v[164:167], v[196:199], a[0:3]
	s_waitcnt lgkmcnt(1)
	v_mfma_f32_16x16x32_bf16 a[4:7], v[134:137], v[248:251], 0
	.loc	1 490 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:490:38
	ds_read_b128 v[134:137], v1 offset:16384
	ds_read_b128 v[164:167], v1 offset:16640
	.loc	1 492 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:492:57
	v_mfma_f32_16x16x32_bf16 a[0:3], v[168:171], v[192:195], a[0:3]
	s_waitcnt lgkmcnt(1)
	v_mfma_f32_16x16x32_bf16 a[4:7], v[134:137], v[244:247], a[4:7]
	.loc	1 490 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:490:38
	ds_read_b128 v[134:137], v2 offset:16384
	ds_read_b128 v[168:171], v2 offset:16640
	.loc	1 492 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:492:57
	v_mfma_f32_16x16x32_bf16 a[0:3], v[174:177], v[188:191], a[0:3]
	s_waitcnt lgkmcnt(1)
	v_mfma_f32_16x16x32_bf16 a[4:7], v[134:137], v[240:243], a[4:7]
	.loc	1 490 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:490:38
	ds_read_b128 v[134:137], v3 offset:16384
	ds_read_b128 v[174:177], v3 offset:16640
	.loc	1 492 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:492:57
	s_waitcnt lgkmcnt(1)
	v_mfma_f32_16x16x32_bf16 a[4:7], v[134:137], v[236:239], a[4:7]
	v_mfma_f32_16x16x32_bf16 a[4:7], v[152:155], v[232:235], a[4:7]
	.loc	1 490 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:490:38
	ds_read_b128 v[134:137], v0 offset:16896
	ds_read_b128 v[152:155], v0 offset:17152
	.loc	1 495 40                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:495:40
	v_or3_b32 v0, v178, v141, v162
	.loc	1 492 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:492:57
	v_mfma_f32_16x16x32_bf16 a[4:7], v[164:167], v[228:231], a[4:7]
	v_mfma_f32_16x16x32_bf16 a[4:7], v[168:171], v[224:227], a[4:7]
	s_waitcnt lgkmcnt(2)
	v_mfma_f32_16x16x32_bf16 a[4:7], v[174:177], v[220:223], a[4:7]
	s_waitcnt lgkmcnt(1)
	v_mfma_f32_16x16x32_bf16 a[4:7], v[134:137], v[216:219], a[4:7]
	.loc	1 490 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:490:38
	ds_read_b128 v[134:137], v1 offset:16896
	ds_read_b128 v[164:167], v1 offset:17152
	.loc	1 495 40                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:495:40
	v_add_u32_e32 v1, v0, v149
	v_add_u32_e32 v0, s1, v1
	.loc	1 492 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:492:57
	s_waitcnt lgkmcnt(1)
	v_mfma_f32_16x16x32_bf16 a[4:7], v[134:137], v[212:215], a[4:7]
	.loc	1 490 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:490:38
	ds_read_b128 v[134:137], v2 offset:16896
	ds_read_b128 v[168:171], v2 offset:17152
	v_accvgpr_write_b32 a132, v1
	v_accvgpr_read_b32 v149, a126
	.loc	1 492 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:492:57
	s_waitcnt lgkmcnt(1)
	v_mfma_f32_16x16x32_bf16 a[4:7], v[134:137], v[208:211], a[4:7]
	.loc	1 490 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:490:38
	ds_read_b128 v[134:137], v3 offset:16896
	ds_read_b128 v[174:177], v3 offset:17152
	.loc	1 494 39                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:494:39
	s_waitcnt vmcnt(9) lgkmcnt(0)
	.loc	1 492 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:492:57
	v_mfma_f32_16x16x32_bf16 a[4:7], v[134:137], v[204:207], a[4:7]
	.loc	1 494 39                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:494:39
	s_barrier
	.loc	1 495 40                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:495:40
	ds_read_b128 v[134:137], v0
	ds_read_b128 v[138:141], v0 offset:64
	.loc	1 492 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:492:57
	v_mfma_f32_16x16x32_bf16 a[4:7], v[152:155], v[200:203], a[4:7]
	v_mfma_f32_16x16x32_bf16 a[4:7], v[164:167], v[196:199], a[4:7]
	.loc	1 496 54                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:496:54
	s_waitcnt lgkmcnt(1)
	v_mfma_f32_16x16x32_bf16 a[0:3], v[134:137], v[184:187], a[0:3]
	.loc	1 495 40                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:495:40
	ds_read_b128 v[134:137], v0 offset:512
	.loc	1 492 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:492:57
	v_mfma_f32_16x16x32_bf16 a[4:7], v[168:171], v[192:195], a[4:7]
	.loc	1 496 54                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:496:54
	s_waitcnt lgkmcnt(1)
	v_mfma_f32_16x16x32_bf16 a[0:3], v[138:141], v[180:183], a[0:3]
	.loc	1 495 40                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:495:40
	ds_read_b128 v[138:141], v0 offset:576
	.loc	1 492 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:492:57
	v_mfma_f32_16x16x32_bf16 a[4:7], v[174:177], v[188:191], a[4:7]
	.loc	1 496 54                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:496:54
	s_waitcnt lgkmcnt(1)
	v_mfma_f32_16x16x32_bf16 a[4:7], v[134:137], v[184:187], a[4:7]
	s_nop 3
	v_accvgpr_read_b32 v0, a0
	v_accvgpr_read_b32 v1, a1
	v_accvgpr_read_b32 v2, a2
	v_accvgpr_read_b32 v3, a3
	s_waitcnt lgkmcnt(0)
	v_mfma_f32_16x16x32_bf16 a[0:3], v[138:141], v[180:183], a[4:7]
	.loc	1 499 43                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:499:43
	v_or_b32_e32 v137, s0, v133
	.loc	1 497 10                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:497:10
	v_mul_f32_e32 v0, s22, v0
	.loc	1 499 43                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:499:43
	v_or_b32_e32 v138, s0, v156
	.loc	1 500 39                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:500:39
	v_cmp_gt_u32_e32 vcc, s33, v137
	.loc	1 497 10                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:497:10
	v_mul_f32_e32 v1, s22, v1
	.loc	1 499 43                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:499:43
	v_or_b32_e32 v139, s0, v148
	.loc	1 500 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:500:57
	v_cndmask_b32_e32 v0, v146, v0, vcc
	.loc	1 500 39 is_stmt 0              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:500:39
	v_cmp_gt_u32_e32 vcc, s33, v138
	.loc	1 497 10 is_stmt 1              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:497:10
	v_mul_f32_e32 v2, s22, v2
	.loc	1 499 43                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:499:43
	v_or_b32_e32 v140, s0, v147
	.loc	1 500 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:500:57
	v_cndmask_b32_e32 v1, v146, v1, vcc
	.loc	1 500 39 is_stmt 0              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:500:39
	v_cmp_gt_u32_e32 vcc, s33, v139
	.loc	1 496 54 is_stmt 1              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:496:54
	v_accvgpr_read_b32 v132, a0
	.loc	1 497 10                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:497:10
	v_mul_f32_e32 v3, s22, v3
	.loc	1 499 43                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:499:43
	v_or_b32_e32 v141, s0, v142
	.loc	1 500 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:500:57
	v_cndmask_b32_e32 v2, v146, v2, vcc
	.loc	1 500 39 is_stmt 0              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:500:39
	v_cmp_gt_u32_e32 vcc, s33, v140
	.loc	1 496 54 is_stmt 1              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:496:54
	v_accvgpr_read_b32 v134, a1
	.loc	1 497 10                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:497:10
	v_mul_f32_e32 v132, s22, v132
	.loc	1 499 43                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:499:43
	v_or_b32_e32 v142, s0, v149
	.loc	1 500 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:500:57
	v_cndmask_b32_e32 v3, v146, v3, vcc
	.loc	1 500 39 is_stmt 0              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:500:39
	v_cmp_gt_u32_e32 vcc, s33, v141
	.loc	1 496 54 is_stmt 1              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:496:54
	v_accvgpr_read_b32 v135, a2
	.loc	1 497 10                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:497:10
	v_mul_f32_e32 v134, s22, v134
	.loc	1 500 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:500:57
	v_cndmask_b32_e32 v137, v146, v132, vcc
	.loc	1 500 39 is_stmt 0              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:500:39
	v_cmp_gt_u32_e32 vcc, s33, v142
	.loc	1 496 54 is_stmt 1              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:496:54
	v_accvgpr_read_b32 v136, a3
	.loc	1 497 10                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:497:10
	v_mul_f32_e32 v135, s22, v135
	.loc	1 500 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:500:57
	v_cndmask_b32_e32 v134, v146, v134, vcc
	.loc	1 500 39 is_stmt 0              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:500:39
	v_cmp_gt_u32_e32 vcc, s33, v144
	.loc	1 497 10 is_stmt 1              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:497:10
	v_mul_f32_e32 v136, s22, v136
.Ltmp26:
	.loc	2 170 27                        ; standard.py:170:27 @[ standard.py:191:40 @[ bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:501:36 ] ]
	v_max_f32_e32 v132, v0, v1
.Ltmp27:
	.loc	1 500 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:500:57
	v_cndmask_b32_e32 v135, v146, v135, vcc
	.loc	1 500 39 is_stmt 0              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:500:39
	v_cmp_gt_u32_e32 vcc, s33, v151
.Ltmp28:
	.loc	2 170 27 is_stmt 1              ; standard.py:170:27 @[ standard.py:191:40 @[ bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:501:36 ] ]
	v_max_f32_e32 v138, v2, v3
.Ltmp29:
	.loc	1 502 22                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:502:22
	v_mov_b32_e32 v142, 0x42800000
	.loc	1 500 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:500:57
	v_cndmask_b32_e32 v136, v146, v136, vcc
.Ltmp30:
	.loc	2 170 27                        ; standard.py:170:27 @[ standard.py:191:40 @[ bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:501:36 ] ]
	v_max_f32_e32 v139, v135, v136
	v_max3_f32 v139, v137, v134, v139
	v_max3_f32 v132, v132, v138, v139
.Ltmp31:
	.loc	2 191 40                        ; standard.py:191:40 @[ bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:501:36 ]
	v_mov_b32_e32 v138, v132
	s_nop 1
	v_permlane32_swap_b32_e32 v132, v138
.Ltmp32:
	.loc	2 170 27                        ; standard.py:170:27 @[ standard.py:191:40 @[ bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:501:36 ] ]
	v_max_f32_e32 v138, v138, v138
	v_max_f32_e32 v132, v132, v132
	v_max_f32_e32 v132, v132, v138
.Ltmp33:
	.loc	2 191 40                        ; standard.py:191:40 @[ bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:501:36 ]
	v_mov_b32_e32 v138, v132
	s_nop 1
	v_permlane16_swap_b32_e32 v132, v138
.Ltmp34:
	.loc	1 501 40                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:501:40
	v_max3_f32 v162, v132, v138, v172
	.loc	1 502 30                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:502:30
	v_sub_f32_e32 v132, v172, v162
	.loc	1 502 22 is_stmt 0              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:502:22
	v_mul_f32_e32 v132, 0x3fb8aa3b, v132
	v_cmp_gt_f32_e32 vcc, s7, v132
	.loc	1 503 20 is_stmt 1              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:503:20
	v_sub_f32_e32 v0, v0, v162
	.loc	1 502 22                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:502:22
	v_not_b32_e32 v144, 63
	v_cndmask_b32_e32 v138, 0, v142, vcc
	.loc	1 503 20                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:503:20
	v_sub_f32_e32 v1, v1, v162
	.loc	1 503 15 is_stmt 0              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:503:15
	v_mul_f32_e32 v0, 0x3fb8aa3b, v0
	.loc	1 502 22 is_stmt 1              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:502:22
	v_add_f32_e32 v132, v132, v138
	v_cndmask_b32_e32 v138, 0, v144, vcc
	.loc	1 503 15                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:503:15
	v_cmp_gt_f32_e32 vcc, s7, v0
	v_mul_f32_e32 v1, 0x3fb8aa3b, v1
	.loc	1 503 20 is_stmt 0              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:503:20
	v_sub_f32_e32 v139, v134, v162
	.loc	1 503 15                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:503:15
	v_cndmask_b32_e32 v134, 0, v142, vcc
	v_cmp_gt_f32_e64 s[0:1], s7, v1
	v_add_f32_e32 v0, v0, v134
	v_exp_f32_e32 v0, v0
	v_cndmask_b32_e64 v134, 0, v142, s[0:1]
	v_add_f32_e32 v1, v1, v134
	v_exp_f32_e32 v1, v1
	v_cndmask_b32_e32 v134, 0, v144, vcc
	.loc	1 503 20                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:503:20
	v_sub_f32_e32 v2, v2, v162
	.loc	1 503 15                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:503:15
	v_ldexp_f32 v134, v0, v134
	v_cndmask_b32_e64 v0, 0, v144, s[0:1]
	.loc	1 503 20                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:503:20
	v_sub_f32_e32 v151, v136, v162
	.loc	1 503 15                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:503:15
	v_ldexp_f32 v136, v1, v0
	v_mul_f32_e32 v0, 0x3fb8aa3b, v2
	v_cmp_gt_f32_e32 vcc, s7, v0
	.loc	1 503 20                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:503:20
	v_sub_f32_e32 v3, v3, v162
	.loc	1 502 22 is_stmt 1              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:502:22
	v_exp_f32_e32 v132, v132
	.loc	1 503 15                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:503:15
	v_cndmask_b32_e32 v1, 0, v142, vcc
	v_add_f32_e32 v0, v0, v1
	v_mul_f32_e32 v1, 0x3fb8aa3b, v3
	v_cmp_gt_f32_e64 s[0:1], s7, v1
	v_exp_f32_e32 v0, v0
	.loc	1 502 22                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:502:22
	v_ldexp_f32 v132, v132, v138
	.loc	1 503 15                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:503:15
	v_cndmask_b32_e64 v2, 0, v142, s[0:1]
	v_add_f32_e32 v1, v1, v2
	v_exp_f32_e32 v1, v1
	v_cndmask_b32_e32 v2, 0, v144, vcc
	.loc	1 503 20 is_stmt 0              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:503:20
	v_sub_f32_e32 v137, v137, v162
	.loc	1 503 15                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:503:15
	v_ldexp_f32 v138, v0, v2
	v_cndmask_b32_e64 v0, 0, v144, s[0:1]
	v_ldexp_f32 v140, v1, v0
	v_mul_f32_e32 v0, 0x3fb8aa3b, v137
	v_cmp_gt_f32_e32 vcc, s7, v0
	.loc	1 503 20                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:503:20
	v_sub_f32_e32 v141, v135, v162
	.loc	1 515 36 is_stmt 1              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:515:36
	v_pk_mul_f32 v[124:125], v[124:125], v[132:133] op_sel_hi:[1,0]
	.loc	1 503 15                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:503:15
	v_cndmask_b32_e32 v1, 0, v142, vcc
	v_add_f32_e32 v0, v0, v1
	v_mul_f32_e32 v1, 0x3fb8aa3b, v139
	v_cmp_gt_f32_e64 s[0:1], s7, v1
	v_exp_f32_e32 v0, v0
	.loc	1 515 36                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:515:36
	v_accvgpr_write_b32 a2, v124
	.loc	1 503 15                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:503:15
	v_cndmask_b32_e64 v2, 0, v142, s[0:1]
	v_add_f32_e32 v1, v1, v2
	v_exp_f32_e32 v1, v1
	v_cndmask_b32_e32 v2, 0, v144, vcc
	v_ldexp_f32 v135, v0, v2
	v_cndmask_b32_e64 v0, 0, v144, s[0:1]
	v_ldexp_f32 v137, v1, v0
	v_mul_f32_e32 v0, 0x3fb8aa3b, v141
	v_cmp_gt_f32_e32 vcc, s7, v0
	.loc	1 515 36                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:515:36
	v_accvgpr_write_b32 a3, v125
	v_pk_mul_f32 v[124:125], v[128:129], v[132:133] op_sel_hi:[1,0]
	.loc	1 503 15                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:503:15
	v_cndmask_b32_e32 v1, 0, v142, vcc
	v_add_f32_e32 v0, v0, v1
	v_mul_f32_e32 v1, 0x3fb8aa3b, v151
	v_cmp_gt_f32_e64 s[0:1], s7, v1
	v_exp_f32_e32 v0, v0
	.loc	1 511 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:511:38
	v_add_u32_e32 v151, s8, v157
	.loc	1 503 15                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:503:15
	v_cndmask_b32_e64 v2, 0, v142, s[0:1]
	v_add_f32_e32 v1, v1, v2
	v_exp_f32_e32 v1, v1
	v_cndmask_b32_e32 v2, 0, v144, vcc
	v_ldexp_f32 v139, v0, v2
	v_cndmask_b32_e64 v0, 0, v144, s[0:1]
	v_ldexp_f32 v141, v1, v0
	.loc	1 508 13                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:508:13
	v_cvt_pk_bf16_f32 v0, v134, v136
	v_cvt_pk_bf16_f32 v1, v138, v140
	v_cvt_pk_bf16_f32 v2, v135, v137
	v_cvt_pk_bf16_f32 v3, v139, v141
	.loc	1 509 29                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:509:29
	s_nop 0
	v_permlane32_swap_b32_e32 v0, v2
	v_permlane32_swap_b32_e32 v1, v3
	.loc	1 511 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:511:38
	ds_read_b64_tr_b16 v[154:155], v151 offset:4160
	ds_read_b64_tr_b16 a[38:39], v151 offset:4416
	ds_read_b64_tr_b16 a[46:47], v151 offset:4352
	ds_read_b64_tr_b16 a[14:15], v151 offset:4096
	ds_read_b64_tr_b16 v[152:153], v151
	ds_read_b64_tr_b16 a[12:13], v151 offset:64
	ds_read_b64_tr_b16 a[36:37], v151 offset:256
	ds_read_b64_tr_b16 a[44:45], v151 offset:320
	ds_read_b64_tr_b16 a[66:67], v151 offset:4672
	ds_read_b64_tr_b16 a[98:99], v151 offset:4928
	ds_read_b64_tr_b16 v[174:175], v151 offset:4864
	ds_read_b64_tr_b16 a[74:75], v151 offset:4608
	ds_read_b64_tr_b16 a[64:65], v151 offset:512
	ds_read_b64_tr_b16 a[72:73], v151 offset:576
	ds_read_b64_tr_b16 a[96:97], v151 offset:768
	ds_read_b64_tr_b16 v[172:173], v151 offset:832
	v_add_u32_e32 v151, s8, v150
	.loc	1 515 36                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:515:36
	v_pk_mul_f32 v[126:127], v[126:127], v[132:133] op_sel_hi:[1,0]
	.loc	1 509 29                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:509:29
	v_permlane16_swap_b32_e32 v0, v2
	v_permlane16_swap_b32_e32 v1, v3
	.loc	1 511 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:511:38
	ds_read_b64_tr_b16 a[10:11], v151 offset:4160
	ds_read_b64_tr_b16 a[42:43], v151 offset:4416
	ds_read_b64_tr_b16 a[50:51], v151 offset:4352
	ds_read_b64_tr_b16 a[18:19], v151 offset:4096
	ds_read_b64_tr_b16 a[8:9], v151
	ds_read_b64_tr_b16 a[16:17], v151 offset:64
	ds_read_b64_tr_b16 a[40:41], v151 offset:256
	ds_read_b64_tr_b16 a[48:49], v151 offset:320
	ds_read_b64_tr_b16 a[106:107], v151 offset:4672
	ds_read_b64_tr_b16 a[102:103], v151 offset:4928
	ds_read_b64_tr_b16 v[178:179], v151 offset:4864
	ds_read_b64_tr_b16 a[78:79], v151 offset:4608
	ds_read_b64_tr_b16 a[104:105], v151 offset:512
	ds_read_b64_tr_b16 a[76:77], v151 offset:576
	ds_read_b64_tr_b16 a[100:101], v151 offset:768
	ds_read_b64_tr_b16 v[176:177], v151 offset:832
	.loc	1 515 36                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:515:36
	v_accvgpr_write_b32 a4, v126
	v_accvgpr_write_b32 a5, v127
	v_accvgpr_write_b32 a6, v124
	v_accvgpr_write_b32 a7, v125
	v_pk_mul_f32 v[122:123], v[122:123], v[132:133] op_sel_hi:[1,0]
	v_pk_mul_f32 v[120:121], v[120:121], v[132:133] op_sel_hi:[1,0]
	s_waitcnt lgkmcnt(11)
	v_mfma_f32_16x16x32_bf16 a[4:7], a[8:11], v[0:3], a[4:7]
	v_accvgpr_write_b32 a8, v120
	v_accvgpr_write_b32 a9, v121
	v_accvgpr_write_b32 a10, v122
	v_accvgpr_write_b32 a11, v123
	v_pk_mul_f32 v[118:119], v[118:119], v[132:133] op_sel_hi:[1,0]
	v_pk_mul_f32 v[116:117], v[116:117], v[132:133] op_sel_hi:[1,0]
	.loc	1 511 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:511:38
	v_add_u32_e32 v151, s8, v252
	.loc	1 515 36                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:515:36
	v_mfma_f32_16x16x32_bf16 a[8:11], a[12:15], v[0:3], a[8:11]
	v_accvgpr_write_b32 a12, v116
	v_accvgpr_write_b32 a13, v117
	v_accvgpr_write_b32 a14, v118
	v_accvgpr_write_b32 a15, v119
	v_pk_mul_f32 v[114:115], v[114:115], v[132:133] op_sel_hi:[1,0]
	v_pk_mul_f32 v[112:113], v[112:113], v[132:133] op_sel_hi:[1,0]
	.loc	1 511 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:511:38
	ds_read_b64_tr_b16 a[22:23], v151 offset:4160
	ds_read_b64_tr_b16 a[54:55], v151 offset:4416
	ds_read_b64_tr_b16 a[62:63], v151 offset:4352
	ds_read_b64_tr_b16 a[30:31], v151 offset:4096
	ds_read_b64_tr_b16 a[20:21], v151
	ds_read_b64_tr_b16 a[28:29], v151 offset:64
	ds_read_b64_tr_b16 a[52:53], v151 offset:256
	ds_read_b64_tr_b16 a[60:61], v151 offset:320
	ds_read_b64_tr_b16 a[82:83], v151 offset:4672
	ds_read_b64_tr_b16 v[254:255], v151 offset:4928
	ds_read_b64_tr_b16 v[170:171], v151 offset:4864
	ds_read_b64_tr_b16 a[90:91], v151 offset:4608
	ds_read_b64_tr_b16 a[80:81], v151 offset:512
	ds_read_b64_tr_b16 a[88:89], v151 offset:576
	ds_read_b64_tr_b16 v[252:253], v151 offset:768
	ds_read_b64_tr_b16 v[168:169], v151 offset:832
	v_add_u32_e32 v151, s8, v163
	.loc	1 515 36                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:515:36
	s_waitcnt lgkmcnt(14)
	v_mfma_f32_16x16x32_bf16 a[12:15], a[16:19], v[0:3], a[12:15]
	v_accvgpr_write_b32 a16, v112
	v_accvgpr_write_b32 a17, v113
	v_accvgpr_write_b32 a18, v114
	v_accvgpr_write_b32 a19, v115
	v_pk_mul_f32 v[110:111], v[110:111], v[132:133] op_sel_hi:[1,0]
	v_pk_mul_f32 v[108:109], v[108:109], v[132:133] op_sel_hi:[1,0]
	.loc	1 511 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:511:38
	ds_read_b64_tr_b16 a[26:27], v151 offset:4160
	ds_read_b64_tr_b16 a[58:59], v151 offset:4416
	ds_read_b64_tr_b16 a[70:71], v151 offset:4352
	ds_read_b64_tr_b16 a[34:35], v151 offset:4096
	ds_read_b64_tr_b16 a[24:25], v151
	ds_read_b64_tr_b16 a[32:33], v151 offset:64
	ds_read_b64_tr_b16 a[56:57], v151 offset:256
	ds_read_b64_tr_b16 a[68:69], v151 offset:320
	ds_read_b64_tr_b16 a[86:87], v151 offset:4672
	ds_read_b64_tr_b16 a[118:119], v151 offset:4928
	ds_read_b64_tr_b16 v[166:167], v151 offset:4864
	ds_read_b64_tr_b16 a[94:95], v151 offset:4608
	ds_read_b64_tr_b16 a[84:85], v151 offset:512
	ds_read_b64_tr_b16 a[92:93], v151 offset:576
	ds_read_b64_tr_b16 a[116:117], v151 offset:768
	ds_read_b64_tr_b16 v[164:165], v151 offset:832
	.loc	1 515 36                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:515:36
	s_waitcnt lgkmcnt(14)
	v_mfma_f32_16x16x32_bf16 a[16:19], a[20:23], v[0:3], a[16:19]
	v_accvgpr_write_b32 a20, v108
	v_accvgpr_write_b32 a21, v109
	v_accvgpr_write_b32 a22, v110
	v_accvgpr_write_b32 a23, v111
	v_pk_mul_f32 v[106:107], v[106:107], v[132:133] op_sel_hi:[1,0]
	v_pk_mul_f32 v[104:105], v[104:105], v[132:133] op_sel_hi:[1,0]
	s_waitcnt lgkmcnt(11)
	v_mfma_f32_16x16x32_bf16 a[20:23], a[24:27], v[0:3], a[20:23]
	v_accvgpr_write_b32 a24, v104
	v_accvgpr_write_b32 a25, v105
	v_accvgpr_write_b32 a26, v106
	v_accvgpr_write_b32 a27, v107
	v_pk_mul_f32 v[102:103], v[102:103], v[132:133] op_sel_hi:[1,0]
	v_pk_mul_f32 v[100:101], v[100:101], v[132:133] op_sel_hi:[1,0]
	v_mfma_f32_16x16x32_bf16 a[24:27], a[28:31], v[0:3], a[24:27]
	v_accvgpr_write_b32 a28, v100
	v_accvgpr_write_b32 a29, v101
	v_accvgpr_write_b32 a30, v102
	v_accvgpr_write_b32 a31, v103
	v_pk_mul_f32 v[98:99], v[98:99], v[132:133] op_sel_hi:[1,0]
	v_pk_mul_f32 v[96:97], v[96:97], v[132:133] op_sel_hi:[1,0]
	s_waitcnt lgkmcnt(10)
	v_mfma_f32_16x16x32_bf16 a[28:31], a[32:35], v[0:3], a[28:31]
	v_accvgpr_write_b32 a32, v96
	v_accvgpr_write_b32 a33, v97
	v_accvgpr_write_b32 a34, v98
	v_accvgpr_write_b32 a35, v99
	v_pk_mul_f32 v[94:95], v[94:95], v[132:133] op_sel_hi:[1,0]
	v_pk_mul_f32 v[92:93], v[92:93], v[132:133] op_sel_hi:[1,0]
	v_mfma_f32_16x16x32_bf16 a[32:35], a[36:39], v[0:3], a[32:35]
	v_accvgpr_write_b32 a36, v92
	v_accvgpr_write_b32 a37, v93
	v_accvgpr_write_b32 a38, v94
	v_accvgpr_write_b32 a39, v95
	v_pk_mul_f32 v[90:91], v[90:91], v[132:133] op_sel_hi:[1,0]
	v_pk_mul_f32 v[88:89], v[88:89], v[132:133] op_sel_hi:[1,0]
	v_mfma_f32_16x16x32_bf16 a[36:39], a[40:43], v[0:3], a[36:39]
	v_accvgpr_write_b32 a40, v88
	v_accvgpr_write_b32 a41, v89
	v_accvgpr_write_b32 a42, v90
	v_accvgpr_write_b32 a43, v91
	v_pk_mul_f32 v[86:87], v[86:87], v[132:133] op_sel_hi:[1,0]
	v_pk_mul_f32 v[84:85], v[84:85], v[132:133] op_sel_hi:[1,0]
	v_mfma_f32_16x16x32_bf16 a[40:43], a[44:47], v[0:3], a[40:43]
	v_accvgpr_write_b32 a44, v84
	v_accvgpr_write_b32 a45, v85
	v_accvgpr_write_b32 a46, v86
	v_accvgpr_write_b32 a47, v87
	v_pk_mul_f32 v[82:83], v[82:83], v[132:133] op_sel_hi:[1,0]
	v_pk_mul_f32 v[80:81], v[80:81], v[132:133] op_sel_hi:[1,0]
	v_mfma_f32_16x16x32_bf16 a[44:47], a[48:51], v[0:3], a[44:47]
	v_accvgpr_write_b32 a48, v80
	v_accvgpr_write_b32 a49, v81
	v_accvgpr_write_b32 a50, v82
	v_accvgpr_write_b32 a51, v83
	v_pk_mul_f32 v[78:79], v[78:79], v[132:133] op_sel_hi:[1,0]
	v_pk_mul_f32 v[76:77], v[76:77], v[132:133] op_sel_hi:[1,0]
	v_mfma_f32_16x16x32_bf16 a[48:51], a[52:55], v[0:3], a[48:51]
	v_accvgpr_write_b32 a52, v76
	v_accvgpr_write_b32 a53, v77
	v_accvgpr_write_b32 a54, v78
	v_accvgpr_write_b32 a55, v79
	v_pk_mul_f32 v[74:75], v[74:75], v[132:133] op_sel_hi:[1,0]
	v_pk_mul_f32 v[72:73], v[72:73], v[132:133] op_sel_hi:[1,0]
	s_waitcnt lgkmcnt(9)
	v_mfma_f32_16x16x32_bf16 a[52:55], a[56:59], v[0:3], a[52:55]
	v_accvgpr_write_b32 a56, v72
	v_accvgpr_write_b32 a57, v73
	v_accvgpr_write_b32 a58, v74
	v_accvgpr_write_b32 a59, v75
	v_pk_mul_f32 v[70:71], v[70:71], v[132:133] op_sel_hi:[1,0]
	v_pk_mul_f32 v[68:69], v[68:69], v[132:133] op_sel_hi:[1,0]
	v_mfma_f32_16x16x32_bf16 a[56:59], a[60:63], v[0:3], a[56:59]
	v_accvgpr_write_b32 a60, v68
	v_accvgpr_write_b32 a61, v69
	v_accvgpr_write_b32 a62, v70
	v_accvgpr_write_b32 a63, v71
	v_pk_mul_f32 v[66:67], v[66:67], v[132:133] op_sel_hi:[1,0]
	v_pk_mul_f32 v[64:65], v[64:65], v[132:133] op_sel_hi:[1,0]
	v_pk_mul_f32 v[14:15], v[14:15], v[132:133] op_sel_hi:[1,0]
	v_pk_mul_f32 v[12:13], v[12:13], v[132:133] op_sel_hi:[1,0]
	s_waitcnt lgkmcnt(8)
	v_mfma_f32_16x16x32_bf16 a[60:63], a[68:71], v[0:3], a[60:63]
	v_accvgpr_write_b32 a68, v64
	v_accvgpr_write_b32 a69, v65
	v_accvgpr_write_b32 a70, v66
	v_accvgpr_write_b32 a71, v67
	v_pk_mul_f32 v[62:63], v[62:63], v[132:133] op_sel_hi:[1,0]
	v_pk_mul_f32 v[60:61], v[60:61], v[132:133] op_sel_hi:[1,0]
	v_accvgpr_write_b32 a120, v12
	v_accvgpr_write_b32 a121, v13
	v_accvgpr_write_b32 a122, v14
	v_accvgpr_write_b32 a123, v15
	v_pk_mul_f32 v[8:9], v[8:9], v[132:133] op_sel_hi:[1,0]
	v_mfma_f32_16x16x32_bf16 a[64:67], a[64:67], v[0:3], a[68:71]
	v_mul_f32_e64 v58, v58, v132
	v_mul_f32_e64 v59, v59, v132
	v_pk_mul_f32 v[56:57], v[56:57], v[132:133] op_sel_hi:[1,0]
	v_pk_mul_f32 v[18:19], v[18:19], v[132:133] op_sel_hi:[1,0]
	v_accvgpr_write_b32 a68, v60
	v_accvgpr_write_b32 a69, v61
	v_accvgpr_write_b32 a70, v62
	v_accvgpr_write_b32 a71, v63
	v_pk_mul_f32 v[16:17], v[16:17], v[132:133] op_sel_hi:[1,0]
	s_waitcnt lgkmcnt(1)
	v_mfma_f32_16x16x32_bf16 a[116:119], a[116:119], v[0:3], a[120:123]
	v_mul_f32_e64 v10, v10, v132
	v_mul_f32_e64 v11, v11, v132
	v_pk_mul_f32 v[54:55], v[54:55], v[132:133] op_sel_hi:[1,0]
	v_pk_mul_f32 v[52:53], v[52:53], v[132:133] op_sel_hi:[1,0]
	v_accvgpr_write_b32 a120, v8
	.loc	1 523 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:523:38
	v_add_u32_e32 v8, s5, v160
	.loc	1 515 36                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:515:36
	v_mfma_f32_16x16x32_bf16 a[68:71], a[104:107], v[0:3], a[68:71]
	v_accvgpr_write_b32 a104, v56
	v_accvgpr_write_b32 a105, v57
	v_accvgpr_write_b32 a106, v58
	v_accvgpr_write_b32 a107, v59
	v_accvgpr_write_b32 a112, v16
	v_accvgpr_write_b32 a113, v17
	v_accvgpr_write_b32 a114, v18
	v_accvgpr_write_b32 a115, v19
	v_accvgpr_write_b32 a122, v10
	v_accvgpr_write_b32 a123, v11
	.loc	1 522 39                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:522:39
	s_waitcnt vmcnt(1) lgkmcnt(0)
	s_barrier
	.loc	1 523 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:523:38
	ds_read_b128 v[10:13], v8
	ds_read_b128 v[16:19], v8 offset:256
	.loc	1 515 36                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:515:36
	v_mfma_f32_16x16x32_bf16 a[72:75], a[72:75], v[0:3], a[104:107]
	v_mul_f32_e64 v50, v50, v132
	v_mul_f32_e64 v51, v51, v132
	v_pk_mul_f32 v[48:49], v[48:49], v[132:133] op_sel_hi:[1,0]
	v_pk_mul_f32 v[46:47], v[46:47], v[132:133] op_sel_hi:[1,0]
	v_accvgpr_write_b32 a104, v52
	v_accvgpr_write_b32 a105, v53
	v_accvgpr_write_b32 a106, v54
	v_accvgpr_write_b32 a107, v55
	v_pk_mul_f32 v[44:45], v[44:45], v[132:133] op_sel_hi:[1,0]
	v_accvgpr_write_b32 a121, v9
	v_mfma_f32_16x16x32_bf16 a[76:79], a[76:79], v[0:3], a[104:107]
	v_accvgpr_read_b32 v9, a127
	v_pk_mul_f32 v[42:43], v[42:43], v[132:133] op_sel_hi:[1,0]
	v_pk_mul_f32 v[40:41], v[40:41], v[132:133] op_sel_hi:[1,0]
	v_accvgpr_write_b32 a104, v48
	v_accvgpr_write_b32 a105, v49
	v_accvgpr_write_b32 a106, v50
	v_accvgpr_write_b32 a107, v51
	v_pk_mul_f32 v[22:23], v[22:23], v[132:133] op_sel_hi:[1,0]
	v_pk_mul_f32 v[20:21], v[20:21], v[132:133] op_sel_hi:[1,0]
	v_mfma_f32_16x16x32_bf16 a[80:83], a[80:83], v[0:3], a[104:107]
	.loc	1 523 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:523:38
	v_add_u32_e32 v9, s5, v9
	.loc	1 515 36                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:515:36
	v_pk_mul_f32 v[38:39], v[38:39], v[132:133] op_sel_hi:[1,0]
	v_pk_mul_f32 v[36:37], v[36:37], v[132:133] op_sel_hi:[1,0]
	v_accvgpr_write_b32 a104, v44
	v_accvgpr_write_b32 a105, v45
	v_accvgpr_write_b32 a106, v46
	v_accvgpr_write_b32 a107, v47
	v_accvgpr_write_b32 a108, v20
	v_accvgpr_write_b32 a109, v21
	v_mfma_f32_16x16x32_bf16 a[84:87], a[84:87], v[0:3], a[104:107]
	v_accvgpr_write_b32 a110, v22
	v_accvgpr_write_b32 a111, v23
	v_pk_mul_f32 v[34:35], v[34:35], v[132:133] op_sel_hi:[1,0]
	v_accvgpr_write_b32 a104, v40
	v_accvgpr_write_b32 a105, v41
	v_accvgpr_write_b32 a106, v42
	v_accvgpr_write_b32 a107, v43
	.loc	1 525 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:525:57
	s_waitcnt lgkmcnt(1)
	v_mfma_f32_16x16x32_bf16 a[124:127], v[10:13], v[248:251], 0
	.loc	1 523 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:523:38
	ds_read_b128 v[12:15], v9
	ds_read_b128 v[20:23], v9 offset:256
	.loc	1 515 36                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:515:36
	v_pk_mul_f32 v[32:33], v[32:33], v[132:133] op_sel_hi:[1,0]
	v_pk_mul_f32 v[30:31], v[30:31], v[132:133] op_sel_hi:[1,0]
	v_mfma_f32_16x16x32_bf16 a[88:91], a[88:91], v[0:3], a[104:107]
	v_mul_f32_e64 v28, v28, v132
	v_mul_f32_e64 v29, v29, v132
	v_pk_mul_f32 v[26:27], v[26:27], v[132:133] op_sel_hi:[1,0]
	v_pk_mul_f32 v[24:25], v[24:25], v[132:133] op_sel_hi:[1,0]
	v_accvgpr_write_b32 a104, v36
	v_accvgpr_write_b32 a105, v37
	v_accvgpr_write_b32 a106, v38
	v_accvgpr_write_b32 a107, v39
	.loc	1 523 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:523:38
	v_add_u32_e32 v10, s5, v145
	.loc	1 525 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:525:57
	s_waitcnt lgkmcnt(1)
	v_mfma_f32_16x16x32_bf16 a[124:127], v[12:15], v[244:247], a[124:127]
	.loc	1 523 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:523:38
	v_add_u32_e32 v14, s5, v143
.Ltmp35:
	.loc	2 263 15                        ; standard.py:263:15 @[ standard.py:293:36 @[ bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:505:41 ] ]
	v_pk_add_f32 v[12:13], v[138:139], v[140:141]
.Ltmp36:
	.loc	1 532 33                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:532:33
	s_lshl_b32 s0, s38, 5
	.loc	1 515 36                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:515:36
	v_mfma_f32_16x16x32_bf16 a[92:95], a[92:95], v[0:3], a[104:107]
	v_mul_f32_e64 v6, v6, v132
	v_mul_f32_e64 v7, v7, v132
	v_pk_mul_f32 v[4:5], v[4:5], v[132:133] op_sel_hi:[1,0]
	.loc	1 532 33                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:532:33
	s_sub_i32 s0, s0, 32
	.loc	1 515 36                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:515:36
	v_accvgpr_write_b32 a104, v32
	v_accvgpr_write_b32 a105, v33
	v_accvgpr_write_b32 a106, v34
	v_accvgpr_write_b32 a107, v35
	v_accvgpr_write_b32 a133, v5
	v_accvgpr_write_b32 a134, v6
	v_mfma_f32_16x16x32_bf16 a[96:99], a[96:99], v[0:3], a[104:107]
	v_mul_f32_e64 v130, v130, v132
	v_mul_f32_e64 v131, v131, v132
	v_accvgpr_write_b32 a1, v131
	v_accvgpr_write_b32 a104, v28
	v_accvgpr_write_b32 a105, v29
	v_accvgpr_write_b32 a106, v30
	v_accvgpr_write_b32 a107, v31
	v_accvgpr_read_b32 v131, a135
	v_accvgpr_write_b32 a0, v130
	v_mfma_f32_16x16x32_bf16 a[100:103], a[100:103], v[0:3], a[104:107]
	v_accvgpr_write_b32 a135, v7
	s_nop 1
	v_accvgpr_write_b32 a104, v24
	v_accvgpr_write_b32 a105, v25
	v_accvgpr_write_b32 a106, v26
	v_accvgpr_write_b32 a107, v27
	.loc	1 523 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:523:38
	ds_read_b128 v[24:27], v10
	ds_read_b128 v[28:31], v10 offset:256
	.loc	1 525 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:525:57
	s_waitcnt lgkmcnt(1)
	v_mfma_f32_16x16x32_bf16 a[124:127], v[24:27], v[240:243], a[124:127]
	.loc	1 523 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:523:38
	ds_read_b128 v[24:27], v14
	ds_read_b128 v[32:35], v14 offset:256
	.loc	1 525 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:525:57
	s_waitcnt lgkmcnt(1)
	v_mfma_f32_16x16x32_bf16 a[124:127], v[24:27], v[236:239], a[124:127]
	v_mfma_f32_16x16x32_bf16 a[124:127], v[16:19], v[232:235], a[124:127]
	v_mfma_f32_16x16x32_bf16 a[124:127], v[20:23], v[228:231], a[124:127]
	.loc	1 523 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:523:38
	ds_read_b128 v[16:19], v8 offset:512
	ds_read_b128 v[20:23], v8 offset:768
	.loc	1 525 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:525:57
	v_mfma_f32_16x16x32_bf16 a[124:127], v[28:31], v[224:227], a[124:127]
	s_waitcnt lgkmcnt(2)
	v_mfma_f32_16x16x32_bf16 a[124:127], v[32:35], v[220:223], a[124:127]
	s_waitcnt lgkmcnt(1)
	v_mfma_f32_16x16x32_bf16 a[124:127], v[16:19], v[216:219], a[124:127]
	.loc	1 523 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:523:38
	ds_read_b128 v[16:19], v9 offset:512
	ds_read_b128 v[24:27], v9 offset:768
	.loc	1 525 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:525:57
	s_waitcnt lgkmcnt(1)
	v_mfma_f32_16x16x32_bf16 a[124:127], v[16:19], v[212:215], a[124:127]
	.loc	1 523 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:523:38
	ds_read_b128 v[16:19], v10 offset:512
	ds_read_b128 v[28:31], v10 offset:768
	.loc	1 525 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:525:57
	s_waitcnt lgkmcnt(1)
	v_mfma_f32_16x16x32_bf16 a[124:127], v[16:19], v[208:211], a[124:127]
	.loc	1 523 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:523:38
	ds_read_b128 v[16:19], v14 offset:512
	ds_read_b128 v[32:35], v14 offset:768
	.loc	1 525 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:525:57
	s_waitcnt lgkmcnt(1)
	v_mfma_f32_16x16x32_bf16 a[124:127], v[16:19], v[204:207], a[124:127]
	v_mfma_f32_16x16x32_bf16 a[124:127], v[20:23], v[200:203], a[124:127]
	.loc	1 523 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:523:38
	ds_read_b128 v[16:19], v8 offset:16384
	ds_read_b128 v[20:23], v8 offset:16640
	.loc	1 525 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:525:57
	v_mfma_f32_16x16x32_bf16 a[124:127], v[24:27], v[196:199], a[124:127]
	s_waitcnt lgkmcnt(1)
	v_mfma_f32_16x16x32_bf16 a[128:131], v[16:19], v[248:251], 0
	.loc	1 523 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:523:38
	ds_read_b128 v[16:19], v9 offset:16384
	ds_read_b128 v[24:27], v9 offset:16640
	.loc	1 525 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:525:57
	v_mfma_f32_16x16x32_bf16 a[124:127], v[28:31], v[192:195], a[124:127]
	s_waitcnt lgkmcnt(1)
	v_mfma_f32_16x16x32_bf16 a[128:131], v[16:19], v[244:247], a[128:131]
	.loc	1 523 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:523:38
	ds_read_b128 v[16:19], v10 offset:16384
	ds_read_b128 v[28:31], v10 offset:16640
	.loc	1 525 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:525:57
	v_mfma_f32_16x16x32_bf16 a[124:127], v[32:35], v[188:191], a[124:127]
	s_waitcnt lgkmcnt(1)
	v_mfma_f32_16x16x32_bf16 a[128:131], v[16:19], v[240:243], a[128:131]
	.loc	1 523 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:523:38
	ds_read_b128 v[16:19], v14 offset:16384
	ds_read_b128 v[32:35], v14 offset:16640
	.loc	1 525 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:525:57
	s_waitcnt lgkmcnt(1)
	v_mfma_f32_16x16x32_bf16 a[128:131], v[16:19], v[236:239], a[128:131]
	.loc	1 523 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:523:38
	ds_read_b128 v[16:19], v8 offset:16896
	.loc	1 525 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:525:57
	v_mfma_f32_16x16x32_bf16 a[128:131], v[20:23], v[232:235], a[128:131]
	v_mfma_f32_16x16x32_bf16 a[128:131], v[24:27], v[228:231], a[128:131]
	.loc	1 523 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:523:38
	ds_read_b128 v[20:23], v9 offset:16896
	ds_read_b128 v[24:27], v8 offset:17152
	.loc	1 525 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:525:57
	v_mfma_f32_16x16x32_bf16 a[128:131], v[28:31], v[224:227], a[128:131]
	s_waitcnt lgkmcnt(3)
	v_mfma_f32_16x16x32_bf16 a[128:131], v[32:35], v[220:223], a[128:131]
	.loc	1 523 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:523:38
	ds_read_b128 v[32:35], v10 offset:17152
	.loc	1 525 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:525:57
	s_waitcnt lgkmcnt(3)
	v_mfma_f32_16x16x32_bf16 a[128:131], v[16:19], v[216:219], a[128:131]
	.loc	1 523 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:523:38
	ds_read_b128 v[16:19], v10 offset:16896
	ds_read_b128 v[28:31], v9 offset:17152
.Ltmp37:
	.loc	2 263 15                        ; standard.py:263:15 @[ standard.py:293:36 @[ bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:505:41 ] ]
	v_pk_add_f32 v[10:11], v[134:135], v[136:137]
.Ltmp38:
	.loc	1 505 20                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:505:20
	v_mul_f32_e32 v9, v161, v132
	.loc	1 525 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:525:57
	s_waitcnt lgkmcnt(4)
	v_mfma_f32_16x16x32_bf16 a[128:131], v[20:23], v[212:215], a[128:131]
	.loc	1 523 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:523:38
	ds_read_b128 v[20:23], v14 offset:16896
.Ltmp39:
	.loc	2 263 15                        ; standard.py:263:15 @[ standard.py:293:36 @[ bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:505:41 ] ]
	v_pk_add_f32 v[10:11], v[10:11], v[12:13]
.Ltmp40:
	.loc	1 525 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:525:57
	s_waitcnt lgkmcnt(2)
	v_mfma_f32_16x16x32_bf16 a[128:131], v[16:19], v[208:211], a[128:131]
	.loc	1 523 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:523:38
	ds_read_b128 v[14:17], v14 offset:17152
.Ltmp41:
	.loc	2 263 15                        ; standard.py:263:15 @[ standard.py:293:36 @[ bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:505:41 ] ]
	v_pk_add_f32 v[10:11], v[10:11], v[10:11] op_sel:[0,1] op_sel_hi:[1,0]
.Ltmp42:
	.loc	1 527 39                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:527:39
	s_waitcnt vmcnt(0) lgkmcnt(1)
	.loc	1 525 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:525:57
	v_mfma_f32_16x16x32_bf16 a[128:131], v[20:23], v[204:207], a[128:131]
	v_accvgpr_read_b32 v11, a132
	.loc	1 528 40                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:528:40
	v_add_u32_e32 v12, s6, v11
	.loc	1 527 39                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:527:39
	s_waitcnt lgkmcnt(0)
	.loc	1 525 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:525:57
	v_mfma_f32_16x16x32_bf16 a[128:131], v[24:27], v[200:203], a[128:131]
	.loc	1 527 39                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:527:39
	s_barrier
	.loc	1 528 40                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:528:40
	ds_read_b128 v[18:21], v12
	ds_read_b128 v[22:25], v12 offset:64
	.loc	1 525 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:525:57
	v_mfma_f32_16x16x32_bf16 a[128:131], v[28:31], v[196:199], a[128:131]
.Ltmp43:
	.loc	2 293 36                        ; standard.py:293:36 @[ bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:505:41 ]
	v_mov_b32_e32 v8, v10
	s_nop 1
	v_permlane32_swap_b32_e32 v10, v8
.Ltmp44:
	.loc	1 525 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:525:57
	v_mfma_f32_16x16x32_bf16 a[128:131], v[32:35], v[192:195], a[128:131]
.Ltmp45:
	.loc	2 263 15                        ; standard.py:263:15 @[ standard.py:293:36 @[ bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:505:41 ] ]
	v_add_f32_e32 v8, v10, v8
.Ltmp46:
	.loc	2 293 36                        ; standard.py:293:36 @[ bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:505:41 ]
	v_mov_b32_e32 v10, v8
	s_nop 1
	v_permlane16_swap_b32_e32 v8, v10
.Ltmp47:
	.loc	1 525 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:525:57
	v_mfma_f32_16x16x32_bf16 a[128:131], v[14:17], v[188:191], a[128:131]
	.loc	1 528 40                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:528:40
	ds_read_b128 v[14:17], v12 offset:512
.Ltmp48:
	.loc	2 263 15                        ; standard.py:263:15 @[ standard.py:293:36 @[ bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:505:41 ] ]
	v_add_f32_e32 v11, v8, v10
.Ltmp49:
	.loc	1 515 36                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:515:36
	v_accvgpr_write_b32 a132, v4
	.loc	1 529 54                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:529:54
	s_waitcnt lgkmcnt(2)
	v_mfma_f32_16x16x32_bf16 a[124:127], v[18:21], v[184:187], a[124:127]
	.loc	1 528 40                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:528:40
	ds_read_b128 v[18:21], v12 offset:576
	.loc	1 529 54                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:529:54
	s_waitcnt lgkmcnt(2)
	v_mfma_f32_16x16x32_bf16 a[124:127], v[22:25], v[180:183], a[124:127]
	.loc	1 532 43                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:532:43
	v_or_b32_e32 v22, s0, v159
	.loc	1 529 54                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:529:54
	s_waitcnt lgkmcnt(1)
	v_mfma_f32_16x16x32_bf16 a[128:131], v[14:17], v[184:187], a[128:131]
	.loc	1 532 43                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:532:43
	v_or_b32_e32 v15, s0, v133
	v_or_b32_e32 v16, s0, v156
	.loc	1 533 39                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:533:39
	v_cmp_gt_i32_e32 vcc, s33, v15
	.loc	1 532 43                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:532:43
	v_or_b32_e32 v17, s0, v148
	.loc	1 529 54                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:529:54
	s_nop 0
	v_accvgpr_read_b32 v4, a124
	v_accvgpr_read_b32 v5, a125
	v_accvgpr_read_b32 v6, a126
	v_accvgpr_read_b32 v8, a127
	s_waitcnt lgkmcnt(0)
	v_mfma_f32_16x16x32_bf16 a[124:127], v[18:21], v[180:183], a[128:131]
	.loc	1 530 10                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:530:10
	v_mul_f32_e32 v4, s22, v4
	v_mul_f32_e32 v5, s22, v5
	.loc	1 533 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:533:57
	v_cndmask_b32_e32 v15, v146, v4, vcc
	.loc	1 533 39 is_stmt 0              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:533:39
	v_cmp_gt_i32_e32 vcc, s33, v16
	.loc	1 530 10 is_stmt 1              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:530:10
	v_mul_f32_e32 v6, s22, v6
	.loc	1 532 43                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:532:43
	v_or_b32_e32 v18, s0, v147
	.loc	1 533 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:533:57
	v_cndmask_b32_e32 v5, v146, v5, vcc
	.loc	1 533 39 is_stmt 0              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:533:39
	v_cmp_gt_i32_e32 vcc, s33, v17
	.loc	1 529 54 is_stmt 1              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:529:54
	v_accvgpr_read_b32 v10, a124
	.loc	1 530 10                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:530:10
	v_mul_f32_e32 v8, s22, v8
	.loc	1 532 43                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:532:43
	v_or_b32_e32 v19, s0, v131
	.loc	1 533 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:533:57
	v_cndmask_b32_e32 v6, v146, v6, vcc
	.loc	1 533 39 is_stmt 0              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:533:39
	v_cmp_gt_i32_e32 vcc, s33, v18
	.loc	1 529 54 is_stmt 1              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:529:54
	v_accvgpr_read_b32 v12, a125
	.loc	1 530 10                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:530:10
	v_mul_f32_e32 v10, s22, v10
	.loc	1 532 43                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:532:43
	v_or_b32_e32 v20, s0, v149
	.loc	1 533 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:533:57
	v_cndmask_b32_e32 v8, v146, v8, vcc
	.loc	1 533 39 is_stmt 0              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:533:39
	v_cmp_gt_i32_e32 vcc, s33, v19
	.loc	1 529 54 is_stmt 1              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:529:54
	v_accvgpr_read_b32 v13, a126
	.loc	1 530 10                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:530:10
	v_mul_f32_e32 v12, s22, v12
	.loc	1 532 43                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:532:43
	v_or_b32_e32 v21, s0, v158
	.loc	1 533 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:533:57
	v_cndmask_b32_e32 v10, v146, v10, vcc
	.loc	1 533 39 is_stmt 0              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:533:39
	v_cmp_gt_i32_e32 vcc, s33, v20
	.loc	1 529 54 is_stmt 1              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:529:54
	v_accvgpr_read_b32 v14, a127
	.loc	1 530 10                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:530:10
	v_mul_f32_e32 v13, s22, v13
	.loc	1 533 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:533:57
	v_cndmask_b32_e32 v12, v146, v12, vcc
	.loc	1 533 39 is_stmt 0              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:533:39
	v_cmp_gt_i32_e32 vcc, s33, v21
	.loc	1 530 10 is_stmt 1              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:530:10
	v_mul_f32_e32 v14, s22, v14
.Ltmp50:
	.loc	2 170 27                        ; standard.py:170:27 @[ standard.py:191:40 @[ bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:534:36 ] ]
	v_max_f32_e32 v4, v15, v5
.Ltmp51:
	.loc	1 533 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:533:57
	v_cndmask_b32_e32 v13, v146, v13, vcc
	.loc	1 533 39 is_stmt 0              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:533:39
	v_cmp_gt_i32_e32 vcc, s33, v22
.Ltmp52:
	.loc	2 170 27 is_stmt 1              ; standard.py:170:27 @[ standard.py:191:40 @[ bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:534:36 ] ]
	v_max_f32_e32 v16, v6, v8
.Ltmp53:
	.loc	1 515 36                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:515:36
	v_mfma_f32_16x16x32_bf16 a[0:3], v[152:155], v[0:3], a[0:3]
	.loc	1 533 57                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:533:57
	v_cndmask_b32_e32 v14, v146, v14, vcc
.Ltmp54:
	.loc	2 170 27                        ; standard.py:170:27 @[ standard.py:191:40 @[ bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:534:36 ] ]
	v_max_f32_e32 v17, v13, v14
	v_max3_f32 v17, v10, v12, v17
	v_max3_f32 v4, v4, v16, v17
.Ltmp55:
	.loc	2 191 40                        ; standard.py:191:40 @[ bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:534:36 ]
	v_mov_b32_e32 v16, v4
	s_nop 1
	v_permlane32_swap_b32_e32 v4, v16
.Ltmp56:
	.loc	2 170 27                        ; standard.py:170:27 @[ standard.py:191:40 @[ bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:534:36 ] ]
	v_max_f32_e32 v16, v16, v16
	v_max_f32_e32 v4, v4, v4
	v_max_f32_e32 v4, v4, v16
.Ltmp57:
	.loc	2 191 40                        ; standard.py:191:40 @[ bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:534:36 ]
	v_mov_b32_e32 v16, v4
	s_nop 1
	v_permlane16_swap_b32_e32 v4, v16
.Ltmp58:
	.loc	1 534 40                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:534:40
	v_max3_f32 v16, v4, v16, v162
	.loc	1 535 30                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:535:30
	v_sub_f32_e32 v4, v162, v16
	.loc	1 535 22 is_stmt 0              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:535:22
	v_mul_f32_e32 v4, 0x3fb8aa3b, v4
	v_cmp_gt_f32_e32 vcc, s7, v4
	.loc	1 515 36 is_stmt 1              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:515:36
	v_mfma_f32_16x16x32_bf16 a[104:107], v[172:175], v[0:3], a[104:107]
	.loc	1 536 20                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:536:20
	v_sub_f32_e32 v7, v10, v16
	.loc	1 535 22                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:535:22
	v_cndmask_b32_e32 v17, 0, v142, vcc
	v_add_f32_e32 v4, v4, v17
	v_exp_f32_e32 v4, v4
	.loc	1 515 36                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:515:36
	v_mfma_f32_16x16x32_bf16 a[108:111], v[176:179], v[0:3], a[108:111]
	.loc	1 536 20                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:536:20
	v_sub_f32_e32 v10, v13, v16
	v_sub_f32_e32 v13, v14, v16
	.loc	1 548 36                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:548:36
	v_accvgpr_read_b32 v57, a1
	.loc	1 515 36                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:515:36
	v_mfma_f32_16x16x32_bf16 a[112:115], v[252:255], v[0:3], a[112:115]
	.loc	1 548 36                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:548:36
	v_accvgpr_read_b32 v56, a0
	v_accvgpr_read_b32 v54, a2
	v_accvgpr_read_b32 v55, a3
	.loc	1 515 36                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:515:36
	v_mfma_f32_16x16x32_bf16 a[120:123], v[168:171], v[0:3], a[120:123]
	v_mfma_f32_16x16x32_bf16 a[124:127], v[164:167], v[0:3], a[132:135]
	.loc	1 535 22                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:535:22
	v_cndmask_b32_e32 v0, 0, v144, vcc
	v_ldexp_f32 v4, v4, v0
	.loc	1 536 20                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:536:20
	v_sub_f32_e32 v0, v15, v16
	v_sub_f32_e32 v1, v5, v16
	.loc	1 536 15 is_stmt 0              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:536:15
	v_mul_f32_e32 v0, 0x3fb8aa3b, v0
	v_cmp_gt_f32_e32 vcc, s7, v0
	v_mul_f32_e32 v1, 0x3fb8aa3b, v1
	v_cmp_gt_f32_e64 s[0:1], s7, v1
	v_cndmask_b32_e32 v2, 0, v142, vcc
	v_add_f32_e32 v0, v0, v2
	v_cndmask_b32_e64 v2, 0, v142, s[0:1]
	v_exp_f32_e32 v0, v0
	v_add_f32_e32 v1, v1, v2
	v_exp_f32_e32 v1, v1
	v_cndmask_b32_e32 v2, 0, v144, vcc
	.loc	1 536 20                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:536:20
	v_sub_f32_e32 v3, v6, v16
	.loc	1 536 15                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:536:15
	v_ldexp_f32 v2, v0, v2
	v_cndmask_b32_e64 v0, 0, v144, s[0:1]
	v_ldexp_f32 v6, v1, v0
	v_mul_f32_e32 v0, 0x3fb8aa3b, v3
	v_cmp_gt_f32_e32 vcc, s7, v0
	.loc	1 536 20                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:536:20
	v_sub_f32_e32 v5, v8, v16
	v_sub_f32_e32 v8, v12, v16
	.loc	1 536 15                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:536:15
	v_cndmask_b32_e32 v1, 0, v142, vcc
	v_add_f32_e32 v0, v0, v1
	v_mul_f32_e32 v1, 0x3fb8aa3b, v5
	v_cmp_gt_f32_e64 s[0:1], s7, v1
	v_exp_f32_e32 v0, v0
	s_nop 0
	v_cndmask_b32_e64 v3, 0, v142, s[0:1]
	v_add_f32_e32 v1, v1, v3
	v_exp_f32_e32 v1, v1
	v_cndmask_b32_e32 v3, 0, v144, vcc
	v_ldexp_f32 v12, v0, v3
	v_cndmask_b32_e64 v0, 0, v144, s[0:1]
	v_ldexp_f32 v14, v1, v0
	v_mul_f32_e32 v0, 0x3fb8aa3b, v7
	v_cmp_gt_f32_e32 vcc, s7, v0
	s_nop 1
	v_cndmask_b32_e32 v1, 0, v142, vcc
	v_add_f32_e32 v0, v0, v1
	v_mul_f32_e32 v1, 0x3fb8aa3b, v8
	v_cmp_gt_f32_e64 s[0:1], s7, v1
	v_exp_f32_e32 v0, v0
	s_nop 0
	v_cndmask_b32_e64 v3, 0, v142, s[0:1]
	v_add_f32_e32 v1, v1, v3
	v_exp_f32_e32 v1, v1
	v_cndmask_b32_e32 v3, 0, v144, vcc
	v_ldexp_f32 v3, v0, v3
	v_cndmask_b32_e64 v0, 0, v144, s[0:1]
	v_ldexp_f32 v7, v1, v0
	v_mul_f32_e32 v0, 0x3fb8aa3b, v10
	v_cmp_gt_f32_e32 vcc, s7, v0
	s_nop 1
	v_cndmask_b32_e32 v1, 0, v142, vcc
	v_add_f32_e32 v0, v0, v1
	v_mul_f32_e32 v1, 0x3fb8aa3b, v13
	v_cmp_gt_f32_e64 s[0:1], s7, v1
	v_exp_f32_e32 v0, v0
	s_nop 0
	v_cndmask_b32_e64 v5, 0, v142, s[0:1]
	v_add_f32_e32 v1, v1, v5
	v_exp_f32_e32 v1, v1
	v_cndmask_b32_e32 v5, 0, v144, vcc
	v_ldexp_f32 v13, v0, v5
	v_cndmask_b32_e64 v0, 0, v144, s[0:1]
	v_ldexp_f32 v15, v1, v0
.Ltmp59:
	.loc	2 263 15 is_stmt 1              ; standard.py:263:15 @[ standard.py:293:36 @[ bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:538:41 ] ]
	v_pk_add_f32 v[0:1], v[2:3], v[6:7]
	v_pk_add_f32 v[16:17], v[12:13], v[14:15]
	s_nop 0
	v_pk_add_f32 v[0:1], v[0:1], v[16:17]
	s_nop 0
	v_pk_add_f32 v[0:1], v[0:1], v[0:1] op_sel:[0,1] op_sel_hi:[1,0]
.Ltmp60:
	.loc	2 293 36                        ; standard.py:293:36 @[ bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:538:41 ]
	s_nop 0
	v_mov_b32_e32 v1, v0
	s_nop 1
	v_permlane32_swap_b32_e32 v0, v1
.Ltmp61:
	.loc	2 263 15                        ; standard.py:263:15 @[ standard.py:293:36 @[ bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:538:41 ] ]
	v_add_f32_e32 v10, v0, v1
.Ltmp62:
	.loc	2 293 36                        ; standard.py:293:36 @[ bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:538:41 ]
	v_mov_b32_e32 v8, v10
	s_nop 1
	v_permlane16_swap_b32_e32 v10, v8
.Ltmp63:
	.loc	2 263 15                        ; standard.py:263:15 @[ standard.py:293:36 @[ bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:538:41 ] ]
	v_pk_add_f32 v[0:1], v[10:11], v[8:9]
.Ltmp64:
	.loc	1 538 20                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:538:20
	s_nop 0
	v_mul_f32_e32 v1, v1, v4
	.loc	1 538 31 is_stmt 0              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:538:31
	v_add_f32_e32 v5, v0, v1
	.loc	1 548 36 is_stmt 1              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:548:36
	v_pk_mul_f32 v[56:57], v[56:57], v[4:5] op_sel_hi:[1,0]
	v_pk_mul_f32 v[54:55], v[54:55], v[4:5] op_sel_hi:[1,0]
	v_accvgpr_write_b32 a0, v56
	v_accvgpr_write_b32 a1, v57
	v_accvgpr_read_b32 v57, a5
	v_accvgpr_read_b32 v56, a4
	v_pk_mul_f32 v[56:57], v[56:57], v[4:5] op_sel_hi:[1,0]
	v_accvgpr_write_b32 a2, v54
	v_accvgpr_write_b32 a4, v56
	v_accvgpr_write_b32 a5, v57
	v_accvgpr_read_b32 v57, a9
	v_accvgpr_read_b32 v56, a8
	v_pk_mul_f32 v[56:57], v[56:57], v[4:5] op_sel_hi:[1,0]
	v_accvgpr_write_b32 a3, v55
	v_accvgpr_write_b32 a8, v56
	v_accvgpr_write_b32 a9, v57
	v_accvgpr_read_b32 v57, a13
	v_accvgpr_read_b32 v56, a12
	v_pk_mul_f32 v[56:57], v[56:57], v[4:5] op_sel_hi:[1,0]
	v_accvgpr_read_b32 v54, a6
	v_accvgpr_write_b32 a12, v56
	v_accvgpr_write_b32 a13, v57
	v_accvgpr_read_b32 v57, a17
	v_accvgpr_read_b32 v56, a16
	v_pk_mul_f32 v[56:57], v[56:57], v[4:5] op_sel_hi:[1,0]
	v_accvgpr_read_b32 v55, a7
	v_accvgpr_write_b32 a16, v56
	v_accvgpr_write_b32 a17, v57
	v_accvgpr_read_b32 v57, a21
	v_accvgpr_read_b32 v56, a20
	v_pk_mul_f32 v[56:57], v[56:57], v[4:5] op_sel_hi:[1,0]
	v_pk_mul_f32 v[54:55], v[54:55], v[4:5] op_sel_hi:[1,0]
	v_accvgpr_write_b32 a20, v56
	v_accvgpr_write_b32 a21, v57
	v_accvgpr_read_b32 v57, a25
	v_accvgpr_read_b32 v56, a24
	v_pk_mul_f32 v[56:57], v[56:57], v[4:5] op_sel_hi:[1,0]
	v_accvgpr_write_b32 a6, v54
	v_accvgpr_write_b32 a24, v56
	v_accvgpr_write_b32 a25, v57
	v_accvgpr_read_b32 v57, a29
	v_accvgpr_read_b32 v56, a28
	v_accvgpr_write_b32 a7, v55
	v_accvgpr_read_b32 v54, a10
	v_accvgpr_read_b32 v55, a11
	v_pk_mul_f32 v[56:57], v[56:57], v[4:5] op_sel_hi:[1,0]
	v_pk_mul_f32 v[54:55], v[54:55], v[4:5] op_sel_hi:[1,0]
	v_accvgpr_write_b32 a28, v56
	v_accvgpr_write_b32 a29, v57
	v_accvgpr_read_b32 v57, a33
	v_accvgpr_write_b32 a10, v54
	v_accvgpr_write_b32 a11, v55
	v_accvgpr_read_b32 v54, a14
	v_accvgpr_read_b32 v55, a15
	v_accvgpr_read_b32 v56, a32
	v_pk_mul_f32 v[54:55], v[54:55], v[4:5] op_sel_hi:[1,0]
	v_pk_mul_f32 v[56:57], v[56:57], v[4:5] op_sel_hi:[1,0]
	v_accvgpr_write_b32 a14, v54
	v_accvgpr_write_b32 a15, v55
	v_accvgpr_read_b32 v54, a18
	v_accvgpr_read_b32 v55, a19
	v_accvgpr_write_b32 a32, v56
	v_accvgpr_write_b32 a33, v57
	v_accvgpr_read_b32 v57, a37
	v_pk_mul_f32 v[54:55], v[54:55], v[4:5] op_sel_hi:[1,0]
	v_accvgpr_read_b32 v56, a36
	v_accvgpr_write_b32 a18, v54
	v_accvgpr_write_b32 a19, v55
	v_accvgpr_read_b32 v54, a22
	v_accvgpr_read_b32 v55, a23
	v_pk_mul_f32 v[56:57], v[56:57], v[4:5] op_sel_hi:[1,0]
	v_pk_mul_f32 v[54:55], v[54:55], v[4:5] op_sel_hi:[1,0]
	v_accvgpr_write_b32 a36, v56
	v_accvgpr_write_b32 a37, v57
	v_accvgpr_read_b32 v57, a41
	v_accvgpr_write_b32 a22, v54
	v_accvgpr_write_b32 a23, v55
	v_accvgpr_read_b32 v54, a26
	v_accvgpr_read_b32 v55, a27
	v_accvgpr_read_b32 v56, a40
	v_pk_mul_f32 v[54:55], v[54:55], v[4:5] op_sel_hi:[1,0]
	v_pk_mul_f32 v[56:57], v[56:57], v[4:5] op_sel_hi:[1,0]
	v_accvgpr_write_b32 a26, v54
	v_accvgpr_write_b32 a27, v55
	v_accvgpr_read_b32 v54, a30
	v_accvgpr_read_b32 v55, a31
	v_accvgpr_write_b32 a40, v56
	v_accvgpr_write_b32 a41, v57
	v_accvgpr_read_b32 v57, a45
	v_pk_mul_f32 v[54:55], v[54:55], v[4:5] op_sel_hi:[1,0]
	v_accvgpr_read_b32 v56, a44
	v_accvgpr_write_b32 a30, v54
	v_accvgpr_write_b32 a31, v55
	v_accvgpr_read_b32 v54, a34
	v_accvgpr_read_b32 v55, a35
	v_pk_mul_f32 v[56:57], v[56:57], v[4:5] op_sel_hi:[1,0]
	v_pk_mul_f32 v[54:55], v[54:55], v[4:5] op_sel_hi:[1,0]
	v_accvgpr_write_b32 a44, v56
	v_accvgpr_write_b32 a45, v57
	v_accvgpr_read_b32 v57, a49
	v_accvgpr_write_b32 a34, v54
	v_accvgpr_write_b32 a35, v55
	v_accvgpr_read_b32 v54, a38
	v_accvgpr_read_b32 v55, a39
	v_accvgpr_read_b32 v56, a48
	v_pk_mul_f32 v[54:55], v[54:55], v[4:5] op_sel_hi:[1,0]
	v_pk_mul_f32 v[56:57], v[56:57], v[4:5] op_sel_hi:[1,0]
	v_accvgpr_write_b32 a38, v54
	v_accvgpr_write_b32 a39, v55
	v_accvgpr_read_b32 v54, a42
	v_accvgpr_read_b32 v55, a43
	v_accvgpr_write_b32 a48, v56
	v_accvgpr_write_b32 a49, v57
	v_accvgpr_read_b32 v57, a53
	v_pk_mul_f32 v[54:55], v[54:55], v[4:5] op_sel_hi:[1,0]
	v_accvgpr_read_b32 v56, a52
	v_accvgpr_write_b32 a42, v54
	v_accvgpr_write_b32 a43, v55
	v_accvgpr_read_b32 v54, a46
	v_accvgpr_read_b32 v55, a47
	v_pk_mul_f32 v[56:57], v[56:57], v[4:5] op_sel_hi:[1,0]
	v_pk_mul_f32 v[54:55], v[54:55], v[4:5] op_sel_hi:[1,0]
	v_accvgpr_write_b32 a52, v56
	v_accvgpr_write_b32 a53, v57
	v_accvgpr_read_b32 v56, a56
	v_accvgpr_write_b32 a46, v54
	v_accvgpr_write_b32 a47, v55
	v_accvgpr_read_b32 v54, a50
	v_accvgpr_read_b32 v55, a51
	v_accvgpr_read_b32 v57, a57
	v_pk_mul_f32 v[54:55], v[54:55], v[4:5] op_sel_hi:[1,0]
	v_pk_mul_f32 v[56:57], v[56:57], v[4:5] op_sel_hi:[1,0]
	v_accvgpr_write_b32 a50, v54
	v_accvgpr_write_b32 a51, v55
	v_accvgpr_read_b32 v54, a54
	v_accvgpr_read_b32 v55, a55
	v_accvgpr_write_b32 a56, v56
	v_accvgpr_write_b32 a57, v57
	v_accvgpr_read_b32 v56, a60
	v_pk_mul_f32 v[54:55], v[54:55], v[4:5] op_sel_hi:[1,0]
	v_accvgpr_read_b32 v57, a61
	v_accvgpr_write_b32 a54, v54
	v_accvgpr_write_b32 a55, v55
	v_accvgpr_read_b32 v54, a58
	v_accvgpr_read_b32 v55, a59
	v_pk_mul_f32 v[56:57], v[56:57], v[4:5] op_sel_hi:[1,0]
	v_pk_mul_f32 v[54:55], v[54:55], v[4:5] op_sel_hi:[1,0]
	v_accvgpr_write_b32 a60, v56
	v_accvgpr_write_b32 a61, v57
	v_accvgpr_read_b32 v56, a64
	v_accvgpr_write_b32 a58, v54
	v_accvgpr_write_b32 a59, v55
	v_accvgpr_read_b32 v54, a62
	v_accvgpr_read_b32 v55, a63
	v_accvgpr_read_b32 v57, a65
	v_pk_mul_f32 v[54:55], v[54:55], v[4:5] op_sel_hi:[1,0]
	v_pk_mul_f32 v[56:57], v[56:57], v[4:5] op_sel_hi:[1,0]
	v_accvgpr_write_b32 a62, v54
	v_accvgpr_write_b32 a63, v55
	v_accvgpr_read_b32 v54, a66
	v_accvgpr_read_b32 v55, a67
	v_accvgpr_write_b32 a64, v56
	v_accvgpr_write_b32 a65, v57
	v_accvgpr_read_b32 v56, a68
	v_pk_mul_f32 v[54:55], v[54:55], v[4:5] op_sel_hi:[1,0]
	v_accvgpr_read_b32 v57, a69
	v_accvgpr_write_b32 a66, v54
	v_accvgpr_write_b32 a67, v55
	v_accvgpr_read_b32 v54, a70
	v_accvgpr_read_b32 v55, a71
	v_pk_mul_f32 v[56:57], v[56:57], v[4:5] op_sel_hi:[1,0]
	.loc	1 541 13                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:541:13
	v_cvt_pk_bf16_f32 v0, v2, v6
	.loc	1 544 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:544:38
	v_add_u32_e32 v6, s5, v157
	.loc	1 548 36                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:548:36
	v_pk_mul_f32 v[54:55], v[54:55], v[4:5] op_sel_hi:[1,0]
	v_accvgpr_write_b32 a68, v56
	v_accvgpr_write_b32 a69, v57
	v_accvgpr_read_b32 v56, a72
	.loc	1 541 13                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:541:13
	v_cvt_pk_bf16_f32 v1, v12, v14
	v_cvt_pk_bf16_f32 v2, v3, v7
	v_cvt_pk_bf16_f32 v3, v13, v15
	.loc	1 544 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:544:38
	ds_read_b64_tr_b16 v[60:61], v6 offset:4160
	ds_read_b64_tr_b16 v[64:65], v6 offset:4416
	ds_read_b64_tr_b16 v[68:69], v6 offset:4352
	ds_read_b64_tr_b16 v[72:73], v6 offset:4096
	ds_read_b64_tr_b16 v[58:59], v6
	ds_read_b64_tr_b16 v[70:71], v6 offset:64
	ds_read_b64_tr_b16 v[62:63], v6 offset:256
	ds_read_b64_tr_b16 v[66:67], v6 offset:320
	ds_read_b64_tr_b16 v[76:77], v6 offset:4672
	ds_read_b64_tr_b16 v[28:29], v6 offset:4928
	ds_read_b64_tr_b16 v[12:13], v6 offset:4864
	ds_read_b64_tr_b16 v[44:45], v6 offset:4608
	ds_read_b64_tr_b16 v[74:75], v6 offset:512
	ds_read_b64_tr_b16 v[42:43], v6 offset:576
	ds_read_b64_tr_b16 v[26:27], v6 offset:768
	ds_read_b64_tr_b16 v[10:11], v6 offset:832
	.loc	1 548 36                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:548:36
	v_accvgpr_write_b32 a70, v54
	v_accvgpr_write_b32 a71, v55
	v_accvgpr_read_b32 v54, a74
	v_accvgpr_read_b32 v55, a75
	v_accvgpr_read_b32 v57, a73
	.loc	1 542 29                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:542:29
	v_permlane32_swap_b32_e32 v0, v2
	v_permlane32_swap_b32_e32 v1, v3
	.loc	1 548 36                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:548:36
	v_pk_mul_f32 v[54:55], v[54:55], v[4:5] op_sel_hi:[1,0]
	v_pk_mul_f32 v[56:57], v[56:57], v[4:5] op_sel_hi:[1,0]
	.loc	1 542 29                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:542:29
	v_permlane16_swap_b32_e32 v0, v2
	v_permlane16_swap_b32_e32 v1, v3
	.loc	1 548 36                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:548:36
	v_accvgpr_write_b32 a72, v56
	v_accvgpr_write_b32 a73, v57
	v_accvgpr_write_b32 a74, v54
	v_accvgpr_write_b32 a75, v55
	.loc	1 544 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:544:38
	v_add_u32_e32 v6, s5, v150
	ds_read_b64_tr_b16 v[80:81], v6 offset:4160
	ds_read_b64_tr_b16 v[84:85], v6 offset:4416
	ds_read_b64_tr_b16 v[88:89], v6 offset:4352
	ds_read_b64_tr_b16 v[92:93], v6 offset:4096
	ds_read_b64_tr_b16 v[78:79], v6
	ds_read_b64_tr_b16 v[90:91], v6 offset:64
	ds_read_b64_tr_b16 v[82:83], v6 offset:256
	ds_read_b64_tr_b16 v[86:87], v6 offset:320
	ds_read_b64_tr_b16 v[96:97], v6 offset:4672
	ds_read_b64_tr_b16 v[36:37], v6 offset:4928
	ds_read_b64_tr_b16 v[20:21], v6 offset:4864
	ds_read_b64_tr_b16 v[52:53], v6 offset:4608
	ds_read_b64_tr_b16 v[94:95], v6 offset:512
	ds_read_b64_tr_b16 v[50:51], v6 offset:576
	ds_read_b64_tr_b16 v[34:35], v6 offset:768
	ds_read_b64_tr_b16 v[18:19], v6 offset:832
	.loc	1 548 36                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:548:36
	s_waitcnt lgkmcnt(14)
	v_mfma_f32_16x16x32_bf16 a[72:75], v[42:45], v[0:3], a[72:75]
	v_accvgpr_read_b32 v44, a76
	v_accvgpr_read_b32 v45, a77
	v_pk_mul_f32 v[44:45], v[44:45], v[4:5] op_sel_hi:[1,0]
	v_accvgpr_read_b32 v42, a78
	v_accvgpr_write_b32 a76, v44
	v_accvgpr_write_b32 a77, v45
	v_accvgpr_read_b32 v44, a80
	v_accvgpr_read_b32 v43, a79
	v_accvgpr_read_b32 v45, a81
	v_pk_mul_f32 v[42:43], v[42:43], v[4:5] op_sel_hi:[1,0]
	v_pk_mul_f32 v[44:45], v[44:45], v[4:5] op_sel_hi:[1,0]
	v_accvgpr_write_b32 a78, v42
	v_accvgpr_write_b32 a79, v43
	v_accvgpr_read_b32 v42, a82
	v_accvgpr_read_b32 v43, a83
	v_accvgpr_write_b32 a80, v44
	v_accvgpr_write_b32 a81, v45
	v_accvgpr_read_b32 v44, a84
	v_pk_mul_f32 v[42:43], v[42:43], v[4:5] op_sel_hi:[1,0]
	v_accvgpr_read_b32 v45, a85
	v_accvgpr_read_b32 v6, a137
	v_accvgpr_write_b32 a82, v42
	v_accvgpr_write_b32 a83, v43
	v_accvgpr_read_b32 v42, a86
	v_accvgpr_read_b32 v43, a87
	v_pk_mul_f32 v[44:45], v[44:45], v[4:5] op_sel_hi:[1,0]
	.loc	1 544 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:544:38
	v_add_u32_e32 v6, s5, v6
	.loc	1 548 36                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:548:36
	v_pk_mul_f32 v[42:43], v[42:43], v[4:5] op_sel_hi:[1,0]
	v_accvgpr_write_b32 a84, v44
	v_accvgpr_write_b32 a85, v45
	v_accvgpr_read_b32 v44, a88
	.loc	1 544 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:544:38
	ds_read_b64_tr_b16 v[100:101], v6 offset:4160
	ds_read_b64_tr_b16 v[104:105], v6 offset:4416
	ds_read_b64_tr_b16 v[108:109], v6 offset:4352
	ds_read_b64_tr_b16 v[112:113], v6 offset:4096
	ds_read_b64_tr_b16 v[98:99], v6
	ds_read_b64_tr_b16 v[110:111], v6 offset:64
	ds_read_b64_tr_b16 v[102:103], v6 offset:256
	ds_read_b64_tr_b16 v[106:107], v6 offset:320
	ds_read_b64_tr_b16 v[116:117], v6 offset:4672
	ds_read_b64_tr_b16 v[24:25], v6 offset:4928
	ds_read_b64_tr_b16 v[8:9], v6 offset:4864
	ds_read_b64_tr_b16 v[40:41], v6 offset:4608
	ds_read_b64_tr_b16 v[114:115], v6 offset:512
	ds_read_b64_tr_b16 v[38:39], v6 offset:576
	ds_read_b64_tr_b16 v[22:23], v6 offset:768
	ds_read_b64_tr_b16 v[6:7], v6 offset:832
	.loc	1 548 36                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:548:36
	v_accvgpr_write_b32 a86, v42
	v_accvgpr_write_b32 a87, v43
	v_accvgpr_read_b32 v42, a90
	v_accvgpr_read_b32 v43, a91
	v_accvgpr_read_b32 v45, a89
	v_pk_mul_f32 v[42:43], v[42:43], v[4:5] op_sel_hi:[1,0]
	v_pk_mul_f32 v[44:45], v[44:45], v[4:5] op_sel_hi:[1,0]
	v_accvgpr_write_b32 a90, v42
	v_accvgpr_write_b32 a88, v44
	v_accvgpr_write_b32 a89, v45
	v_accvgpr_write_b32 a91, v43
	.loc	1 544 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:544:38
	v_add_u32_e32 v14, s5, v163
	ds_read_b64_tr_b16 v[120:121], v14 offset:4160
	ds_read_b64_tr_b16 v[124:125], v14 offset:4416
	ds_read_b64_tr_b16 v[128:129], v14 offset:4352
	ds_read_b64_tr_b16 v[136:137], v14 offset:4096
	ds_read_b64_tr_b16 v[118:119], v14
	ds_read_b64_tr_b16 v[134:135], v14 offset:64
	ds_read_b64_tr_b16 v[122:123], v14 offset:256
	ds_read_b64_tr_b16 v[126:127], v14 offset:320
	ds_read_b64_tr_b16 v[140:141], v14 offset:4672
	ds_read_b64_tr_b16 v[32:33], v14 offset:4928
	ds_read_b64_tr_b16 v[16:17], v14 offset:4864
	ds_read_b64_tr_b16 v[48:49], v14 offset:4608
	ds_read_b64_tr_b16 v[138:139], v14 offset:512
	ds_read_b64_tr_b16 v[46:47], v14 offset:576
	ds_read_b64_tr_b16 v[30:31], v14 offset:768
	ds_read_b64_tr_b16 v[14:15], v14 offset:832
	.loc	1 548 36                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:548:36
	s_waitcnt lgkmcnt(14)
	v_mfma_f32_16x16x32_bf16 a[88:91], v[38:41], v[0:3], a[88:91]
	v_accvgpr_read_b32 v40, a92
	v_accvgpr_read_b32 v41, a93
	v_accvgpr_read_b32 v38, a94
	v_accvgpr_read_b32 v39, a95
	v_pk_mul_f32 v[40:41], v[40:41], v[4:5] op_sel_hi:[1,0]
	v_pk_mul_f32 v[38:39], v[38:39], v[4:5] op_sel_hi:[1,0]
	v_accvgpr_write_b32 a92, v40
	v_accvgpr_write_b32 a93, v41
	v_accvgpr_read_b32 v40, a96
	v_accvgpr_write_b32 a94, v38
	v_accvgpr_write_b32 a95, v39
	v_accvgpr_read_b32 v38, a98
	v_accvgpr_read_b32 v39, a99
	v_accvgpr_read_b32 v41, a97
	v_pk_mul_f32 v[38:39], v[38:39], v[4:5] op_sel_hi:[1,0]
	v_pk_mul_f32 v[40:41], v[40:41], v[4:5] op_sel_hi:[1,0]
	v_accvgpr_write_b32 a98, v38
	v_accvgpr_write_b32 a96, v40
	v_accvgpr_write_b32 a97, v41
	v_accvgpr_write_b32 a99, v39
	v_mfma_f32_16x16x32_bf16 a[0:3], v[58:61], v[0:3], a[0:3]
	s_nop 0
	v_mfma_f32_16x16x32_bf16 a[96:99], v[26:29], v[0:3], a[96:99]
	v_accvgpr_read_b32 v28, a100
	v_accvgpr_read_b32 v29, a101
	v_accvgpr_read_b32 v26, a102
	v_accvgpr_read_b32 v27, a103
	v_pk_mul_f32 v[28:29], v[28:29], v[4:5] op_sel_hi:[1,0]
	v_pk_mul_f32 v[26:27], v[26:27], v[4:5] op_sel_hi:[1,0]
	v_accvgpr_write_b32 a100, v28
	v_accvgpr_write_b32 a101, v29
	v_accvgpr_read_b32 v28, a104
	v_accvgpr_write_b32 a102, v26
	v_accvgpr_write_b32 a103, v27
	v_accvgpr_read_b32 v26, a106
	v_accvgpr_read_b32 v27, a107
	v_accvgpr_read_b32 v29, a105
	v_pk_mul_f32 v[26:27], v[26:27], v[4:5] op_sel_hi:[1,0]
	v_pk_mul_f32 v[28:29], v[28:29], v[4:5] op_sel_hi:[1,0]
	v_accvgpr_write_b32 a106, v26
	v_accvgpr_write_b32 a104, v28
	v_accvgpr_write_b32 a105, v29
	v_accvgpr_write_b32 a107, v27
	v_mfma_f32_16x16x32_bf16 a[4:7], v[78:81], v[0:3], a[4:7]
	s_nop 0
	v_mfma_f32_16x16x32_bf16 a[104:107], v[10:13], v[0:3], a[104:107]
	v_accvgpr_read_b32 v12, a108
	v_accvgpr_read_b32 v13, a109
	v_pk_mul_f32 v[12:13], v[12:13], v[4:5] op_sel_hi:[1,0]
	v_accvgpr_read_b32 v10, a110
	v_accvgpr_write_b32 a108, v12
	v_accvgpr_write_b32 a109, v13
	v_accvgpr_read_b32 v12, a112
	v_accvgpr_read_b32 v11, a111
	v_accvgpr_read_b32 v13, a113
	v_pk_mul_f32 v[10:11], v[10:11], v[4:5] op_sel_hi:[1,0]
	v_pk_mul_f32 v[12:13], v[12:13], v[4:5] op_sel_hi:[1,0]
	v_accvgpr_write_b32 a110, v10
	v_accvgpr_write_b32 a111, v11
	v_accvgpr_read_b32 v10, a114
	v_accvgpr_read_b32 v11, a115
	v_accvgpr_write_b32 a112, v12
	v_accvgpr_write_b32 a113, v13
	v_accvgpr_read_b32 v12, a116
	v_pk_mul_f32 v[10:11], v[10:11], v[4:5] op_sel_hi:[1,0]
	v_accvgpr_read_b32 v13, a117
	v_accvgpr_write_b32 a114, v10
	v_accvgpr_write_b32 a115, v11
	v_accvgpr_read_b32 v10, a118
	v_accvgpr_read_b32 v11, a119
	v_pk_mul_f32 v[12:13], v[12:13], v[4:5] op_sel_hi:[1,0]
	v_pk_mul_f32 v[10:11], v[10:11], v[4:5] op_sel_hi:[1,0]
	v_accvgpr_write_b32 a116, v12
	v_accvgpr_write_b32 a117, v13
	v_accvgpr_read_b32 v12, a120
	v_accvgpr_write_b32 a118, v10
	v_accvgpr_write_b32 a119, v11
	v_accvgpr_read_b32 v10, a122
	v_accvgpr_read_b32 v11, a123
	v_accvgpr_read_b32 v13, a121
	v_pk_mul_f32 v[10:11], v[10:11], v[4:5] op_sel_hi:[1,0]
	v_pk_mul_f32 v[12:13], v[12:13], v[4:5] op_sel_hi:[1,0]
	v_accvgpr_write_b32 a122, v10
	v_accvgpr_write_b32 a120, v12
	v_accvgpr_write_b32 a121, v13
	v_accvgpr_write_b32 a123, v11
	v_mfma_f32_16x16x32_bf16 a[8:11], v[70:73], v[0:3], a[8:11]
	s_nop 0
	v_mfma_f32_16x16x32_bf16 a[120:123], v[6:9], v[0:3], a[120:123]
	v_accvgpr_read_b32 v8, a124
	v_accvgpr_read_b32 v6, a126
	v_accvgpr_read_b32 v7, a127
	v_accvgpr_read_b32 v9, a125
	v_pk_mul_f32 v[6:7], v[6:7], v[4:5] op_sel_hi:[1,0]
	v_pk_mul_f32 v[8:9], v[8:9], v[4:5] op_sel_hi:[1,0]
	v_accvgpr_write_b32 a126, v6
	v_accvgpr_write_b32 a124, v8
	v_accvgpr_write_b32 a125, v9
	v_accvgpr_write_b32 a127, v7
	v_mfma_f32_16x16x32_bf16 a[12:15], v[90:93], v[0:3], a[12:15]
	.loc	1 558 26                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:558:26
	v_accvgpr_read_b32 v7, a5
	v_accvgpr_read_b32 v11, a9
	v_accvgpr_read_b32 v91, a89
	.loc	1 548 36                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:548:36
	v_mfma_f32_16x16x32_bf16 a[16:19], v[98:101], v[0:3], a[16:19]
	.loc	1 558 26                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:558:26
	v_accvgpr_read_b32 v99, a97
	v_accvgpr_read_b32 v6, a4
	v_accvgpr_read_b32 v8, a6
	.loc	1 548 36                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:548:36
	s_waitcnt lgkmcnt(11)
	v_mfma_f32_16x16x32_bf16 a[20:23], v[118:121], v[0:3], a[20:23]
	.loc	1 558 26                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:558:26
	v_accvgpr_read_b32 v9, a7
	v_accvgpr_read_b32 v10, a8
	v_accvgpr_read_b32 v12, a10
	.loc	1 548 36                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:548:36
	v_mfma_f32_16x16x32_bf16 a[24:27], v[110:113], v[0:3], a[24:27]
	.loc	1 558 26                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:558:26
	v_accvgpr_read_b32 v13, a11
	v_accvgpr_read_b32 v90, a88
	v_accvgpr_read_b32 v92, a90
	.loc	1 548 36                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:548:36
	s_waitcnt lgkmcnt(10)
	v_mfma_f32_16x16x32_bf16 a[28:31], v[134:137], v[0:3], a[28:31]
	.loc	1 558 26                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:558:26
	v_accvgpr_read_b32 v93, a91
	v_accvgpr_read_b32 v98, a96
	v_accvgpr_read_b32 v100, a98
	.loc	1 548 36                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:548:36
	v_mfma_f32_16x16x32_bf16 a[32:35], v[62:65], v[0:3], a[32:35]
	.loc	1 558 26                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:558:26
	v_accvgpr_read_b32 v27, a25
	v_accvgpr_read_b32 v26, a24
	v_accvgpr_read_b32 v28, a26
	.loc	1 548 36                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:548:36
	v_mfma_f32_16x16x32_bf16 a[36:39], v[82:85], v[0:3], a[36:39]
	.loc	1 558 26                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:558:26
	v_accvgpr_read_b32 v29, a27
	v_accvgpr_read_b32 v101, a99
	.loc	1 548 36                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:548:36
	v_mfma_f32_16x16x32_bf16 a[40:43], v[66:69], v[0:3], a[40:43]
	v_mfma_f32_16x16x32_bf16 a[44:47], v[86:89], v[0:3], a[44:47]
	.loc	1 558 26                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:558:26
	s_nop 3
	v_accvgpr_read_b32 v39, a37
	v_accvgpr_read_b32 v38, a36
	v_accvgpr_read_b32 v40, a38
	.loc	1 548 36                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:548:36
	v_mfma_f32_16x16x32_bf16 a[48:51], v[102:105], v[0:3], a[48:51]
	.loc	1 558 26                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:558:26
	v_accvgpr_read_b32 v43, a41
	v_accvgpr_read_b32 v41, a39
	v_accvgpr_read_b32 v42, a40
	.loc	1 548 36                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:548:36
	s_waitcnt lgkmcnt(9)
	v_mfma_f32_16x16x32_bf16 a[52:55], v[122:125], v[0:3], a[52:55]
	.loc	1 558 26                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:558:26
	v_accvgpr_read_b32 v123, a121
	v_accvgpr_read_b32 v44, a42
	v_accvgpr_read_b32 v45, a43
	.loc	1 548 36                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:548:36
	v_mfma_f32_16x16x32_bf16 a[56:59], v[106:109], v[0:3], a[56:59]
	.loc	1 558 26                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:558:26
	v_accvgpr_read_b32 v107, a105
	v_accvgpr_read_b32 v106, a104
	v_accvgpr_read_b32 v108, a106
	.loc	1 548 36                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:548:36
	s_waitcnt lgkmcnt(8)
	v_mfma_f32_16x16x32_bf16 a[60:63], v[126:129], v[0:3], a[60:63]
	.loc	1 558 26                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:558:26
	v_accvgpr_read_b32 v55, a53
	v_accvgpr_read_b32 v54, a52
	v_accvgpr_read_b32 v56, a54
	.loc	1 548 36                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:548:36
	v_mfma_f32_16x16x32_bf16 a[64:67], v[74:77], v[0:3], a[64:67]
	.loc	1 558 26                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:558:26
	v_accvgpr_read_b32 v59, a57
	v_accvgpr_read_b32 v75, a73
	v_accvgpr_read_b32 v57, a55
	.loc	1 548 36                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:548:36
	v_mfma_f32_16x16x32_bf16 a[68:71], v[94:97], v[0:3], a[68:71]
	.loc	1 558 26                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:558:26
	v_accvgpr_read_b32 v63, a61
	v_accvgpr_read_b32 v58, a56
	v_accvgpr_read_b32 v60, a58
	.loc	1 548 36                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:548:36
	v_mfma_f32_16x16x32_bf16 a[76:79], v[50:53], v[0:3], a[76:79]
	.loc	1 558 26                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:558:26
	v_accvgpr_read_b32 v51, a49
	v_accvgpr_read_b32 v67, a65
	v_accvgpr_read_b32 v50, a48
	.loc	1 548 36                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:548:36
	v_mfma_f32_16x16x32_bf16 a[80:83], v[114:117], v[0:3], a[80:83]
	.loc	1 558 26                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:558:26
	v_accvgpr_read_b32 v71, a69
	v_accvgpr_read_b32 v52, a50
	v_accvgpr_read_b32 v53, a51
	.loc	1 548 36                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:548:36
	s_waitcnt lgkmcnt(3)
	v_mfma_f32_16x16x32_bf16 a[84:87], v[138:141], v[0:3], a[84:87]
	.loc	1 558 26                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:558:26
	v_accvgpr_read_b32 v79, a77
	v_accvgpr_read_b32 v61, a59
	v_accvgpr_read_b32 v62, a60
	.loc	1 548 36                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:548:36
	s_waitcnt lgkmcnt(2)
	v_mfma_f32_16x16x32_bf16 a[92:95], v[46:49], v[0:3], a[92:95]
	.loc	1 558 26                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:558:26
	v_accvgpr_read_b32 v47, a45
	v_accvgpr_read_b32 v83, a81
	v_accvgpr_read_b32 v46, a44
	.loc	1 548 36                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:548:36
	v_mfma_f32_16x16x32_bf16 a[100:103], v[34:37], v[0:3], a[100:103]
	.loc	1 558 26                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:558:26
	v_accvgpr_read_b32 v35, a33
	v_accvgpr_read_b32 v87, a85
	v_accvgpr_read_b32 v34, a32
	.loc	1 548 36                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:548:36
	v_mfma_f32_16x16x32_bf16 a[108:111], v[18:21], v[0:3], a[108:111]
	.loc	1 558 26                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:558:26
	v_accvgpr_read_b32 v19, a17
	v_accvgpr_read_b32 v95, a93
	v_accvgpr_read_b32 v18, a16
	.loc	1 548 36                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:548:36
	v_mfma_f32_16x16x32_bf16 a[112:115], v[22:25], v[0:3], a[112:115]
	.loc	1 558 26                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:558:26
	v_accvgpr_read_b32 v23, a21
	v_accvgpr_read_b32 v103, a101
	v_accvgpr_read_b32 v20, a18
	.loc	1 548 36                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:548:36
	s_waitcnt lgkmcnt(1)
	v_mfma_f32_16x16x32_bf16 a[116:119], v[30:33], v[0:3], a[116:119]
	.loc	1 558 26                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:558:26
	v_accvgpr_read_b32 v31, a29
	v_accvgpr_read_b32 v111, a109
	v_accvgpr_read_b32 v21, a19
	.loc	1 548 36                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:548:36
	s_waitcnt lgkmcnt(0)
	v_mfma_f32_16x16x32_bf16 a[124:127], v[14:17], v[0:3], a[124:127]
	.loc	1 557 16                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:557:16
	v_div_scale_f32 v1, s[0:1], v5, v5, 1.0
	v_accvgpr_read_b32 v0, a136
	v_rcp_f32_e32 v2, v1
	.loc	1 552 54                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:552:54
	v_lshl_or_b32 v0, s19, 4, v0
	.loc	1 552 41 is_stmt 0              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:552:41
	v_or_b32_e32 v0, s27, v0
	.loc	1 554 87 is_stmt 1              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:554:87
	s_mul_i32 s0, s4, s18
	.loc	1 554 60 is_stmt 0              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:554:60
	v_mul_lo_u32 v0, v0, s3
	.loc	1 554 38                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:554:38
	s_add_i32 s0, s0, s2
	.loc	1 554 73                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:554:73
	v_add_u32_e32 v130, s0, v0
	.loc	1 557 16 is_stmt 1              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:557:16
	v_fma_f32 v0, -v1, v2, 1.0
	v_fmac_f32_e32 v2, v0, v2
	v_div_scale_f32 v0, vcc, 1.0, v5, 1.0
	v_mul_f32_e32 v3, v0, v2
	v_fma_f32 v4, -v1, v3, v0
	v_fmac_f32_e32 v3, v4, v2
	v_fma_f32 v0, -v1, v3, v0
	v_div_fmas_f32 v0, v0, v2, v3
	.loc	1 558 26                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:558:26
	v_accvgpr_read_b32 v3, a1
	v_accvgpr_read_b32 v15, a13
	v_accvgpr_read_b32 v115, a113
	v_accvgpr_read_b32 v119, a117
	v_accvgpr_read_b32 v127, a125
	.loc	1 557 16                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:557:16
	v_div_fixup_f32 v0, v0, v5, 1.0
	.loc	1 558 26                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:558:26
	v_accvgpr_read_b32 v2, a0
	v_accvgpr_read_b32 v4, a2
	v_accvgpr_read_b32 v5, a3
	v_accvgpr_read_b32 v14, a12
	v_accvgpr_read_b32 v16, a14
	v_accvgpr_read_b32 v17, a15
	v_accvgpr_read_b32 v22, a20
	v_accvgpr_read_b32 v24, a22
	v_accvgpr_read_b32 v25, a23
	v_accvgpr_read_b32 v30, a28
	v_accvgpr_read_b32 v32, a30
	v_accvgpr_read_b32 v33, a31
	v_accvgpr_read_b32 v36, a34
	v_accvgpr_read_b32 v37, a35
	v_accvgpr_read_b32 v48, a46
	v_accvgpr_read_b32 v49, a47
	v_accvgpr_read_b32 v64, a62
	v_accvgpr_read_b32 v65, a63
	v_accvgpr_read_b32 v66, a64
	v_accvgpr_read_b32 v68, a66
	v_accvgpr_read_b32 v69, a67
	v_accvgpr_read_b32 v70, a68
	v_accvgpr_read_b32 v72, a70
	v_accvgpr_read_b32 v73, a71
	v_accvgpr_read_b32 v74, a72
	v_accvgpr_read_b32 v76, a74
	v_accvgpr_read_b32 v77, a75
	v_accvgpr_read_b32 v78, a76
	v_accvgpr_read_b32 v80, a78
	v_accvgpr_read_b32 v81, a79
	v_accvgpr_read_b32 v82, a80
	v_accvgpr_read_b32 v84, a82
	v_accvgpr_read_b32 v85, a83
	v_accvgpr_read_b32 v86, a84
	v_accvgpr_read_b32 v88, a86
	v_accvgpr_read_b32 v89, a87
	v_accvgpr_read_b32 v94, a92
	v_accvgpr_read_b32 v96, a94
	v_accvgpr_read_b32 v97, a95
	v_accvgpr_read_b32 v102, a100
	v_accvgpr_read_b32 v104, a102
	v_accvgpr_read_b32 v105, a103
	v_accvgpr_read_b32 v109, a107
	v_accvgpr_read_b32 v110, a108
	v_accvgpr_read_b32 v112, a110
	v_accvgpr_read_b32 v113, a111
	v_accvgpr_read_b32 v114, a112
	v_accvgpr_read_b32 v116, a114
	v_accvgpr_read_b32 v117, a115
	v_accvgpr_read_b32 v118, a116
	v_accvgpr_read_b32 v120, a118
	v_accvgpr_read_b32 v121, a119
	v_accvgpr_read_b32 v122, a120
	v_accvgpr_read_b32 v124, a122
	v_accvgpr_read_b32 v125, a123
	v_accvgpr_read_b32 v126, a124
	v_accvgpr_read_b32 v128, a126
	v_accvgpr_read_b32 v129, a127
	v_pk_mul_f32 v[2:3], v[0:1], v[2:3] op_sel_hi:[0,1]
	v_pk_mul_f32 v[4:5], v[0:1], v[4:5] op_sel_hi:[0,1]
	v_pk_mul_f32 v[6:7], v[0:1], v[6:7] op_sel_hi:[0,1]
	v_pk_mul_f32 v[8:9], v[0:1], v[8:9] op_sel_hi:[0,1]
	v_pk_mul_f32 v[10:11], v[0:1], v[10:11] op_sel_hi:[0,1]
	v_pk_mul_f32 v[12:13], v[0:1], v[12:13] op_sel_hi:[0,1]
	v_pk_mul_f32 v[14:15], v[0:1], v[14:15] op_sel_hi:[0,1]
	v_pk_mul_f32 v[16:17], v[0:1], v[16:17] op_sel_hi:[0,1]
	v_pk_mul_f32 v[18:19], v[0:1], v[18:19] op_sel_hi:[0,1]
	v_pk_mul_f32 v[20:21], v[0:1], v[20:21] op_sel_hi:[0,1]
	v_pk_mul_f32 v[22:23], v[0:1], v[22:23] op_sel_hi:[0,1]
	v_pk_mul_f32 v[24:25], v[0:1], v[24:25] op_sel_hi:[0,1]
	v_pk_mul_f32 v[26:27], v[0:1], v[26:27] op_sel_hi:[0,1]
	v_pk_mul_f32 v[28:29], v[0:1], v[28:29] op_sel_hi:[0,1]
	v_pk_mul_f32 v[30:31], v[0:1], v[30:31] op_sel_hi:[0,1]
	v_pk_mul_f32 v[32:33], v[0:1], v[32:33] op_sel_hi:[0,1]
	v_pk_mul_f32 v[34:35], v[0:1], v[34:35] op_sel_hi:[0,1]
	v_pk_mul_f32 v[36:37], v[0:1], v[36:37] op_sel_hi:[0,1]
	v_pk_mul_f32 v[38:39], v[0:1], v[38:39] op_sel_hi:[0,1]
	v_pk_mul_f32 v[40:41], v[0:1], v[40:41] op_sel_hi:[0,1]
	v_pk_mul_f32 v[42:43], v[0:1], v[42:43] op_sel_hi:[0,1]
	v_pk_mul_f32 v[44:45], v[0:1], v[44:45] op_sel_hi:[0,1]
	v_pk_mul_f32 v[46:47], v[0:1], v[46:47] op_sel_hi:[0,1]
	v_pk_mul_f32 v[48:49], v[0:1], v[48:49] op_sel_hi:[0,1]
	v_pk_mul_f32 v[50:51], v[0:1], v[50:51] op_sel_hi:[0,1]
	v_pk_mul_f32 v[52:53], v[0:1], v[52:53] op_sel_hi:[0,1]
	v_pk_mul_f32 v[54:55], v[0:1], v[54:55] op_sel_hi:[0,1]
	v_pk_mul_f32 v[56:57], v[0:1], v[56:57] op_sel_hi:[0,1]
	v_pk_mul_f32 v[58:59], v[0:1], v[58:59] op_sel_hi:[0,1]
	v_pk_mul_f32 v[60:61], v[0:1], v[60:61] op_sel_hi:[0,1]
	v_pk_mul_f32 v[62:63], v[0:1], v[62:63] op_sel_hi:[0,1]
	v_pk_mul_f32 v[64:65], v[0:1], v[64:65] op_sel_hi:[0,1]
	v_pk_mul_f32 v[66:67], v[0:1], v[66:67] op_sel_hi:[0,1]
	v_pk_mul_f32 v[68:69], v[0:1], v[68:69] op_sel_hi:[0,1]
	v_pk_mul_f32 v[70:71], v[0:1], v[70:71] op_sel_hi:[0,1]
	v_pk_mul_f32 v[72:73], v[0:1], v[72:73] op_sel_hi:[0,1]
	v_pk_mul_f32 v[74:75], v[0:1], v[74:75] op_sel_hi:[0,1]
	v_pk_mul_f32 v[76:77], v[0:1], v[76:77] op_sel_hi:[0,1]
	v_pk_mul_f32 v[78:79], v[0:1], v[78:79] op_sel_hi:[0,1]
	v_pk_mul_f32 v[80:81], v[0:1], v[80:81] op_sel_hi:[0,1]
	v_pk_mul_f32 v[82:83], v[0:1], v[82:83] op_sel_hi:[0,1]
	v_pk_mul_f32 v[84:85], v[0:1], v[84:85] op_sel_hi:[0,1]
	v_pk_mul_f32 v[86:87], v[0:1], v[86:87] op_sel_hi:[0,1]
	v_pk_mul_f32 v[88:89], v[0:1], v[88:89] op_sel_hi:[0,1]
	v_pk_mul_f32 v[90:91], v[0:1], v[90:91] op_sel_hi:[0,1]
	v_pk_mul_f32 v[92:93], v[0:1], v[92:93] op_sel_hi:[0,1]
	v_pk_mul_f32 v[94:95], v[0:1], v[94:95] op_sel_hi:[0,1]
	v_pk_mul_f32 v[96:97], v[0:1], v[96:97] op_sel_hi:[0,1]
	v_pk_mul_f32 v[98:99], v[0:1], v[98:99] op_sel_hi:[0,1]
	v_pk_mul_f32 v[100:101], v[0:1], v[100:101] op_sel_hi:[0,1]
	v_pk_mul_f32 v[102:103], v[0:1], v[102:103] op_sel_hi:[0,1]
	v_pk_mul_f32 v[104:105], v[0:1], v[104:105] op_sel_hi:[0,1]
	v_pk_mul_f32 v[106:107], v[0:1], v[106:107] op_sel_hi:[0,1]
	v_pk_mul_f32 v[108:109], v[0:1], v[108:109] op_sel_hi:[0,1]
	v_pk_mul_f32 v[110:111], v[0:1], v[110:111] op_sel_hi:[0,1]
	v_pk_mul_f32 v[112:113], v[0:1], v[112:113] op_sel_hi:[0,1]
	v_pk_mul_f32 v[114:115], v[0:1], v[114:115] op_sel_hi:[0,1]
	v_pk_mul_f32 v[116:117], v[0:1], v[116:117] op_sel_hi:[0,1]
	v_pk_mul_f32 v[118:119], v[0:1], v[118:119] op_sel_hi:[0,1]
	v_pk_mul_f32 v[120:121], v[0:1], v[120:121] op_sel_hi:[0,1]
	v_pk_mul_f32 v[122:123], v[0:1], v[122:123] op_sel_hi:[0,1]
	v_pk_mul_f32 v[124:125], v[0:1], v[124:125] op_sel_hi:[0,1]
	v_pk_mul_f32 v[126:127], v[0:1], v[126:127] op_sel_hi:[0,1]
	v_pk_mul_f32 v[0:1], v[0:1], v[128:129] op_sel_hi:[0,1]
	.loc	1 558 43 is_stmt 0              ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:558:43
	v_cvt_pk_bf16_f32 v2, v2, v3
	v_cvt_pk_bf16_f32 v3, v4, v5
	v_cvt_pk_bf16_f32 v4, v6, v7
	v_cvt_pk_bf16_f32 v5, v8, v9
	v_cvt_pk_bf16_f32 v9, v16, v17
	v_cvt_pk_bf16_f32 v17, v32, v33
	v_cvt_pk_bf16_f32 v33, v64, v65
	v_cvt_pk_bf16_f32 v65, v0, v1
	s_mov_b32 s27, 0x27000
	.loc	1 554 100 is_stmt 1             ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:554:100
	v_add_lshl_u32 v0, v130, v133, 1
	.loc	1 560 30                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:560:30
	v_add_lshl_u32 v1, v130, v131, 1
	.loc	1 558 43                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:558:43
	v_cvt_pk_bf16_f32 v6, v10, v11
	v_cvt_pk_bf16_f32 v7, v12, v13
	v_cvt_pk_bf16_f32 v8, v14, v15
	v_cvt_pk_bf16_f32 v10, v18, v19
	v_cvt_pk_bf16_f32 v11, v20, v21
	v_cvt_pk_bf16_f32 v12, v22, v23
	v_cvt_pk_bf16_f32 v13, v24, v25
	v_cvt_pk_bf16_f32 v14, v26, v27
	v_cvt_pk_bf16_f32 v15, v28, v29
	v_cvt_pk_bf16_f32 v16, v30, v31
	v_cvt_pk_bf16_f32 v18, v34, v35
	v_cvt_pk_bf16_f32 v19, v36, v37
	v_cvt_pk_bf16_f32 v20, v38, v39
	v_cvt_pk_bf16_f32 v21, v40, v41
	v_cvt_pk_bf16_f32 v22, v42, v43
	v_cvt_pk_bf16_f32 v23, v44, v45
	v_cvt_pk_bf16_f32 v24, v46, v47
	v_cvt_pk_bf16_f32 v25, v48, v49
	v_cvt_pk_bf16_f32 v26, v50, v51
	v_cvt_pk_bf16_f32 v27, v52, v53
	v_cvt_pk_bf16_f32 v28, v54, v55
	v_cvt_pk_bf16_f32 v29, v56, v57
	v_cvt_pk_bf16_f32 v30, v58, v59
	v_cvt_pk_bf16_f32 v31, v60, v61
	v_cvt_pk_bf16_f32 v32, v62, v63
	v_cvt_pk_bf16_f32 v34, v66, v67
	v_cvt_pk_bf16_f32 v35, v68, v69
	v_cvt_pk_bf16_f32 v36, v70, v71
	v_cvt_pk_bf16_f32 v37, v72, v73
	v_cvt_pk_bf16_f32 v38, v74, v75
	v_cvt_pk_bf16_f32 v39, v76, v77
	v_cvt_pk_bf16_f32 v40, v78, v79
	v_cvt_pk_bf16_f32 v41, v80, v81
	v_cvt_pk_bf16_f32 v42, v82, v83
	v_cvt_pk_bf16_f32 v43, v84, v85
	v_cvt_pk_bf16_f32 v44, v86, v87
	v_cvt_pk_bf16_f32 v45, v88, v89
	v_cvt_pk_bf16_f32 v46, v90, v91
	v_cvt_pk_bf16_f32 v47, v92, v93
	v_cvt_pk_bf16_f32 v48, v94, v95
	v_cvt_pk_bf16_f32 v49, v96, v97
	v_cvt_pk_bf16_f32 v50, v98, v99
	v_cvt_pk_bf16_f32 v51, v100, v101
	v_cvt_pk_bf16_f32 v52, v102, v103
	v_cvt_pk_bf16_f32 v53, v104, v105
	v_cvt_pk_bf16_f32 v54, v106, v107
	v_cvt_pk_bf16_f32 v55, v108, v109
	v_cvt_pk_bf16_f32 v56, v110, v111
	v_cvt_pk_bf16_f32 v57, v112, v113
	v_cvt_pk_bf16_f32 v58, v114, v115
	v_cvt_pk_bf16_f32 v59, v116, v117
	v_cvt_pk_bf16_f32 v60, v118, v119
	v_cvt_pk_bf16_f32 v61, v120, v121
	v_cvt_pk_bf16_f32 v62, v122, v123
	v_cvt_pk_bf16_f32 v63, v124, v125
	v_cvt_pk_bf16_f32 v64, v126, v127
	.loc	1 560 30                        ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:560:30
	buffer_store_dwordx2 v[2:3], v0, s[24:27], 0 offen
	buffer_store_dwordx2 v[4:5], v1, s[24:27], 0 offen
	buffer_store_dwordx2 v[6:7], v0, s[24:27], 0 offen offset:64
	buffer_store_dwordx2 v[8:9], v0, s[24:27], 0 offen offset:96
	buffer_store_dwordx2 v[10:11], v0, s[24:27], 0 offen offset:128
	buffer_store_dwordx2 v[12:13], v0, s[24:27], 0 offen offset:160
	buffer_store_dwordx2 v[14:15], v0, s[24:27], 0 offen offset:192
	buffer_store_dwordx2 v[16:17], v0, s[24:27], 0 offen offset:224
	buffer_store_dwordx2 v[18:19], v0, s[24:27], 0 offen offset:256
	buffer_store_dwordx2 v[20:21], v0, s[24:27], 0 offen offset:288
	buffer_store_dwordx2 v[22:23], v0, s[24:27], 0 offen offset:320
	buffer_store_dwordx2 v[24:25], v0, s[24:27], 0 offen offset:352
	buffer_store_dwordx2 v[26:27], v0, s[24:27], 0 offen offset:384
	buffer_store_dwordx2 v[28:29], v0, s[24:27], 0 offen offset:416
	buffer_store_dwordx2 v[30:31], v0, s[24:27], 0 offen offset:448
	buffer_store_dwordx2 v[32:33], v0, s[24:27], 0 offen offset:480
	buffer_store_dwordx2 v[34:35], v0, s[24:27], 0 offen offset:512
	buffer_store_dwordx2 v[36:37], v0, s[24:27], 0 offen offset:544
	buffer_store_dwordx2 v[38:39], v0, s[24:27], 0 offen offset:576
	buffer_store_dwordx2 v[40:41], v0, s[24:27], 0 offen offset:608
	buffer_store_dwordx2 v[42:43], v0, s[24:27], 0 offen offset:640
	buffer_store_dwordx2 v[44:45], v0, s[24:27], 0 offen offset:672
	buffer_store_dwordx2 v[46:47], v0, s[24:27], 0 offen offset:704
	buffer_store_dwordx2 v[48:49], v0, s[24:27], 0 offen offset:736
	buffer_store_dwordx2 v[50:51], v0, s[24:27], 0 offen offset:768
	buffer_store_dwordx2 v[52:53], v0, s[24:27], 0 offen offset:800
	buffer_store_dwordx2 v[54:55], v0, s[24:27], 0 offen offset:832
	buffer_store_dwordx2 v[56:57], v0, s[24:27], 0 offen offset:864
	buffer_store_dwordx2 v[58:59], v0, s[24:27], 0 offen offset:896
	buffer_store_dwordx2 v[60:61], v0, s[24:27], 0 offen offset:928
	buffer_store_dwordx2 v[62:63], v0, s[24:27], 0 offen offset:960
	buffer_store_dwordx2 v[64:65], v0, s[24:27], 0 offen offset:992
	.loc	1 560 4 is_stmt 0               ; bench_flash_mla.v3.pipeline.mfma16.bh64bn32.py:560:4
	s_endpgm
.Ltmp65:
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
		.amdhsa_next_free_vgpr 394
		.amdhsa_next_free_sgpr 58
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
	.set _mla_attn_kernel_gluon.num_agpr, 138
	.set _mla_attn_kernel_gluon.numbered_sgpr, 58
	.set _mla_attn_kernel_gluon.num_named_barrier, 0
	.set _mla_attn_kernel_gluon.private_seg_size, 0
	.set _mla_attn_kernel_gluon.uses_vcc, 1
	.set _mla_attn_kernel_gluon.uses_flat_scratch, 0
	.set _mla_attn_kernel_gluon.has_dyn_sized_stack, 0
	.set _mla_attn_kernel_gluon.has_recursion, 0
	.set _mla_attn_kernel_gluon.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 21960
; TotalNumSgprs: 64
; NumVgprs: 256
; NumAgprs: 138
; TotalNumVgprs: 394
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 7
; VGPRBlocks: 49
; NumSGPRsForWavesPerEU: 64
; NumVGPRsForWavesPerEU: 394
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
	.byte	5                               ; Abbrev [5] 0x4e:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	449                             ; DW_AT_call_line
	.byte	40                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x5b:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	40                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	5                               ; Abbrev [5] 0x68:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	453                             ; DW_AT_call_line
	.byte	45                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x75:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	36                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	5                               ; Abbrev [5] 0x83:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges5                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	501                             ; DW_AT_call_line
	.byte	36                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x90:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges6                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	40                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	5                               ; Abbrev [5] 0x9d:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges7                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	505                             ; DW_AT_call_line
	.byte	41                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0xaa:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges8                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	36                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	5                               ; Abbrev [5] 0xb8:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges9                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	534                             ; DW_AT_call_line
	.byte	36                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0xc5:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges10                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	40                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	7                               ; Abbrev [7] 0xd2:0x23 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp59                         ; DW_AT_low_pc
	.long	.Ltmp64-.Ltmp59                 ; DW_AT_high_pc
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
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp35-.Lfunc_begin0
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
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges9:
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges10:
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges11:
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
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
  - .agpr_count:     138
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
    .sgpr_count:     64
    .sgpr_spill_count: 0
    .symbol:         _mla_attn_kernel_gluon.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     394
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
