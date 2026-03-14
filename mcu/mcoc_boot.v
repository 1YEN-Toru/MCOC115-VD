// ================================
// Assemble list:
//
//	module	mcoc_boot (
//	input	[6:0]	adr,
//	output	reg		[15:0]	dat);
//	always	@(adr[6:0])
//		case ({ adr[6:0],1'b0 })
//		// Moscovium series macro assembler ver.1.58
//		// ================================
//		//	Moscovium series boot loader
//		//		(c) 2021	1YEN Toru
//		//
//		//
//		//		2026/03/14	ver.1.12
//		//			corresponding to case sensitive
//		//
//		//		2023/11/18	ver.1.10
//		//			corresponding to small RAM edition
//		//			upd: max_lbuf=20 <-- 254
//		//
//		//		2023/09/23	ver.1.08
//		//			corresponding to Tennessine core
//		//			use: def target,"tennessine"
//		//
//		//		2023/07/08	ver.1.06
//		//			lsfti -> lsli / lsri
//		//
//		//		2021/11/06	ver.1.04
//		//			corresponding to baud rate detection
//		//
//		//		2021/08/14	ver.1.02
//		//			corresponding to bi-directional port
//		//
//		//		2021/06/12	ver.1.00
//		//
//		// ================================
//		//	register mapping
//		//		r0: general data
//		//		r1: read / write pointer for line buffer
//		//		r2: temporary data for xtoi subroutine
//		//		r3: temporary data
//		//		r6: write pointer for writable rom
//		//		r7: general address pointer
//		//		sp: pointer to line buffer, stack pointer
//		// ================================
//		// version
//		8'h00: dat[15:0]=16'h0801;	// bra    pcnt+2
//		8'h02: dat[15:0]=16'h0112;	// datw   0x0112    
//		// set sp to the bottom of ram area
//		8'h04: dat[15:0]=16'hc7f0;	// ldbih  r7,((idrgramt)>>8)&0xff
//		8'h06: dat[15:0]=16'hbf0c;	// ldbil  r7,(idrgramt)&0xff
//		8'h08: dat[15:0]=16'h7b87;	// ldw    r0,r7
//		8'h0a: dat[15:0]=16'hbf0e;	// ldbil  r7,idrgrams
//		8'h0c: dat[15:0]=16'h7bbf;	// ldw    r7,r7
//		8'h0e: dat[15:0]=16'h7987;	// add    r0,r7
//		8'h10: dat[15:0]=16'ha014;	// subi   r0,max_lbuf
//		8'h12: dat[15:0]=16'h7910;	// movtc  sp,r0
//		// UART8N1 setting: RXE, baud rate
//		8'h14: dat[15:0]=16'hc7f0;	// ldbih  r7,((uartbaud)>>8)&0xff
//		8'h16: dat[15:0]=16'hbf32;	// ldbil  r7,(uartbaud)&0xff
//		8'h18: dat[15:0]=16'hc009;	// ldbih  r0,((uart_baud)>>8)&0xff
//		8'h1a: dat[15:0]=16'hb8c3;	// ldbil  r0,(uart_baud)&0xff
//		8'h1c: dat[15:0]=16'h7bf8;	// stw    r7,r0
//		8'h1e: dat[15:0]=16'hbf30;	// ldbil  r7,uartctl
//		8'h20: dat[15:0]=16'hb002;	// ldbiu  r0,uart_rxe
//		8'h22: dat[15:0]=16'h7bf8;	// stw    r7,r0
//		// ================================
//		// rom data download
//		8'h24: dat[15:0]=16'hb600;	// ldbiu  r6,0
//		// loop
//			// loop:
//		// pilot led
//		8'h26: dat[15:0]=16'h78de;	// mov    r3,r6
//		8'h28: dat[15:0]=16'hdbff;	// lsfti  r3,-(1)
//		8'h2a: dat[15:0]=16'h93fe;	// eori   r3,~led_builtin_b
//		8'h2c: dat[15:0]=16'h8b07;	// andi   r3,led_builtin
//		8'h2e: dat[15:0]=16'hc2f0;	// ldbih  r2,((porout)>>8)&0xff
//		8'h30: dat[15:0]=16'hba28;	// ldbil  r2,(porout)&0xff
//		8'h32: dat[15:0]=16'h7bd3;	// stw    r2,r3
//		8'h34: dat[15:0]=16'hba26;	// ldbil  r2,pordir
//		8'h36: dat[15:0]=16'h7b9a;	// ldw    r3,r2
//		8'h38: dat[15:0]=16'h8bf8;	// andi   r3,~led_builtin
//		8'h3a: dat[15:0]=16'h7bd3;	// stw    r2,r3
//		// ================================
//		// get line from uart
//		8'h3c: dat[15:0]=16'h794a;	// movfc  r1,sp
//		8'h3e: dat[15:0]=16'hc7f0;	// ldbih  r7,uartctl>>8
//		// get line loop
//			// gl_loop:
//		// check if BRDF=1
//		8'h40: dat[15:0]=16'hbf30;	// ldbil  r7,uartctl
//		8'h42: dat[15:0]=16'h7b87;	// ldw    r0,r7
//		8'h44: dat[15:0]=16'h7bf8;	// stw    r7,r0
//		8'h46: dat[15:0]=16'h8820;	// andi   r0,uart_brdf
//		8'h48: dat[15:0]=16'h1810;	// beq    gl_not_brdf
//		// detected
//		8'h4a: dat[15:0]=16'hbf3e;	// ldbil  r7,uartbres
//		8'h4c: dat[15:0]=16'h7b87;	// ldw    r0,r7
//		8'h4e: dat[15:0]=16'hbf32;	// ldbil  r7,uartbaud
//		8'h50: dat[15:0]=16'h7b9f;	// ldw    r3,r7
//		// margin
//		8'h52: dat[15:0]=16'h78d3;	// mov    r2,r3
//		8'h54: dat[15:0]=16'hdafa;	// lsfti  r2,-(6)
//		// r3=abs (r3 - r0)
//		8'h56: dat[15:0]=16'h7a18;	// sub    r3,r0
//		8'h58: dat[15:0]=16'h3001;	// bpl    gl_plus
//		8'h5a: dat[15:0]=16'h7fc3;	// neg    r3
//			// gl_plus:
//		8'h5c: dat[15:0]=16'h7a9a;	// cmp    r3,r2
//		8'h5e: dat[15:0]=16'h2805;	// blo    gl_not_brdf
//		// update uartbaud
//		8'h60: dat[15:0]=16'h7bf8;	// stw    r7,r0
//		// pilot led (detect=red)
//		8'h62: dat[15:0]=16'hb3fd;	// ldbiu  r3,~led_builtin_r
//		8'h64: dat[15:0]=16'hc2f0;	// ldbih  r2,((porout)>>8)&0xff
//		8'h66: dat[15:0]=16'hba28;	// ldbil  r2,(porout)&0xff
//		8'h68: dat[15:0]=16'h7bd3;	// stw    r2,r3
//			// gl_not_brdf:
//		// polling until RAVL=1
//		8'h6a: dat[15:0]=16'hbf30;	// ldbil  r7,uartctl
//		8'h6c: dat[15:0]=16'h7b87;	// ldw    r0,r7
//		8'h6e: dat[15:0]=16'h8880;	// andi   r0,uart_ravl
//		8'h70: dat[15:0]=16'h1fe7;	// beq    gl_loop
//		// get byte
//		8'h72: dat[15:0]=16'hbf36;	// ldbil  r7,uartrdat
//		8'h74: dat[15:0]=16'h7b87;	// ldw    r0,r7
//		8'h76: dat[15:0]=16'h7b48;	// stb    r1,r0
//		8'h78: dat[15:0]=16'h9901;	// addi   r1,1
//		// LF code check
//		8'h7a: dat[15:0]=16'ha80a;	// cmpi   r0,asc_lf
//		8'h7c: dat[15:0]=16'h1806;	// beq    gl_break
//		// size check
//		8'h7e: dat[15:0]=16'h7942;	// movfc  r0,sp
//		8'h80: dat[15:0]=16'h9814;	// addi   r0,max_lbuf
//		8'h82: dat[15:0]=16'h7a88;	// cmp    r1,r0
//		8'h84: dat[15:0]=16'h2fdd;	// blo    gl_loop
//		// end of loop
//		8'h86: dat[15:0]=16'ha101;	// subi   r1,1
//		8'h88: dat[15:0]=16'h0fdb;	// bra    gl_loop
//		// got line
//			// gl_break:
//		// string terminate
//		8'h8a: dat[15:0]=16'hb000;	// ldbiu  r0,0
//		8'h8c: dat[15:0]=16'ha101;	// subi   r1,1
//		8'h8e: dat[15:0]=16'h7b48;	// stb    r1,r0
//		// ================================
//		// analyze line buffer
//		8'h90: dat[15:0]=16'h794a;	// movfc  r1,sp
//		8'h92: dat[15:0]=16'hc700;	// ldbih  r7,((lab_xtoi)>>8)&0xff
//		8'h94: dat[15:0]=16'hbfc2;	// ldbil  r7,(lab_xtoi)&0xff
//		// skip space
//			// skp_spc:
//		8'h96: dat[15:0]=16'h7b01;	// ldb    r0,r1
//		8'h98: dat[15:0]=16'h9901;	// addi   r1,1
//		8'h9a: dat[15:0]=16'ha809;	// cmpi   r0,asc_tab
//		8'h9c: dat[15:0]=16'h1ffc;	// beq    skp_spc
//		8'h9e: dat[15:0]=16'ha820;	// cmpi   r0,asc_spc
//		8'ha0: dat[15:0]=16'h1ffa;	// beq    skp_spc
//		8'ha2: dat[15:0]=16'ha800;	// cmpi   r0,0
//		8'ha4: dat[15:0]=16'h1fc0;	// beq    loop
//		// ================================
//		// @<address>
//		8'ha6: dat[15:0]=16'ha840;	// cmpi   r0,asc_atm
//		8'ha8: dat[15:0]=16'h1004;	// bne    not_atm
//		// address
//		8'haa: dat[15:0]=16'h7f8f;	// jalw   r7
//		// set wptr(=r6)
//		8'hac: dat[15:0]=16'hd801;	// lsfti  r0,(1)
//		8'hae: dat[15:0]=16'h78f0;	// mov    r6,r0
//		8'hb0: dat[15:0]=16'h0ff2;	// bra    skp_spc
//			// not_atm:
//		// ================================
//		// <word_data>
//		8'hb2: dat[15:0]=16'ha101;	// subi   r1,1
//		8'hb4: dat[15:0]=16'h78d9;	// mov    r3,r1
//		8'hb6: dat[15:0]=16'h7f8f;	// jalw   r7
//		8'hb8: dat[15:0]=16'h7a8b;	// cmp    r1,r3
//		8'hba: dat[15:0]=16'h1fb5;	// beq    loop
//		// write data
//		8'hbc: dat[15:0]=16'h7bf0;	// stw    r6,r0
//		// update wdat(=r6)
//		8'hbe: dat[15:0]=16'h9e02;	// addi   r6,2
//		8'hc0: dat[15:0]=16'h0fea;	// bra    skp_spc
//		// ================================
//		//	r0=xtoi (r1);
//		//		r1: pointer to hexadecimal string
//		//	disturbed: r1,r2
//		//		r1: pointer to hexadecimal string
//		//		r2: temporary data
//		//	return: hexadecimal to integer
//		//		r0: xtoi (r1)
//		//		r1: pointer to the next character of hexadecimal string
//		// ================================
//			// xtoi:
//		// initialize
//		8'hc2: dat[15:0]=16'hb000;	// ldbiu  r0,0
//		// loop
//			// _xtoi_loop:
//		// r2=[r1]-'0'
//		8'hc4: dat[15:0]=16'h7b11;	// ldb    r2,r1
//		8'hc6: dat[15:0]=16'ha230;	// subi   r2,0a0
//		8'hc8: dat[15:0]=16'h2810;	// blo    _xtoi_break
//		8'hca: dat[15:0]=16'haa0a;	// cmpi   r2,(0a9+1)-0a0
//		8'hcc: dat[15:0]=16'h280a;	// blo    _xtoi_next
//		8'hce: dat[15:0]=16'ha211;	// subi   r2,0aA-0a0
//		8'hd0: dat[15:0]=16'h280c;	// blo    _xtoi_break
//		8'hd2: dat[15:0]=16'h9a0a;	// addi   r2,0x0a
//		8'hd4: dat[15:0]=16'haa10;	// cmpi   r2,0x0a+(0aF+1)-0aA
//		8'hd6: dat[15:0]=16'h2805;	// blo    _xtoi_next
//		8'hd8: dat[15:0]=16'ha22a;	// subi   r2,0x0a+0aa-0aA
//		8'hda: dat[15:0]=16'h2807;	// blo    _xtoi_break
//		8'hdc: dat[15:0]=16'h9a0a;	// addi   r2,0x0a
//		8'hde: dat[15:0]=16'haa10;	// cmpi   r2,0x0a+(0af+1)-0aa
//		8'he0: dat[15:0]=16'h2004;	// bhs    _xtoi_break
//			// _xtoi_next:
//		// hexadecimal digit
//		// r0=16*r0+r2
//		8'he2: dat[15:0]=16'hd804;	// lsfti  r0,(4)
//		8'he4: dat[15:0]=16'h7982;	// add    r0,r2
//		// end of loop
//		8'he6: dat[15:0]=16'h9901;	// addi   r1,1
//		8'he8: dat[15:0]=16'h0fed;	// bra    _xtoi_loop
//			// _xtoi_break:
//		// end of subroutine
//		8'hea: dat[15:0]=16'h0002;	// rtnw  
//		// ================================
//		// label lists
//		//	0x0040	adc_adce
//		//	0x0080	adc_ardy
//		//	0x0010	adc_cenb
//		//	0x0001	adc_cene_0
//		//	0x0002	adc_cene_1
//		//	0x0004	adc_cene_2
//		//	0x0008	adc_cene_3
//		//	0x000f	adc_cene_a
//		//	0x0010	adc_cenf_0
//		//	0x0020	adc_cenf_1
//		//	0x0040	adc_cenf_2
//		//	0x0080	adc_cenf_3
//		//	0x00f0	adc_cenf_a
//		//	0x0001	adc_csel_0
//		//	0x0002	adc_csel_1
//		//	0x0004	adc_csel_2
//		//	0x0008	adc_csel_3
//		//	0x000f	adc_csel_a
//		//	0xf0e0	adcctl
//		//	0xf0e8	adcdat0
//		//	0xf0ea	adcdat1
//		//	0xf0ec	adcdat2
//		//	0xf0ee	adcdat3
//		//	0xf0e2	adcint
//		//	0xf0e4	adcperi
//		//	0x0001	adcx_bsy
//		//	0x0014	adcx_drp_ain0
//		//	0x001c	adcx_drp_ain1
//		//	0x0040	adcx_drp_cfg0
//		//	0x0100	adcx_drp_cfg0_acq
//		//	0x0000	adcx_drp_cfg0_avg_0
//		//	0x1000	adcx_drp_cfg0_avg_1
//		//	0x2000	adcx_drp_cfg0_avg_2
//		//	0x3000	adcx_drp_cfg0_avg_3
//		//	0x0400	adcx_drp_cfg0_bu
//		//	0x0200	adcx_drp_cfg0_ec
//		//	0x0041	adcx_drp_cfg1
//		//	0x2000	adcx_drp_cfg1_seq_cont
//		//	0xf000	adcx_drp_cfg1_seq_mask
//		//	0x3000	adcx_drp_cfg1_seq_sglc
//		//	0x1000	adcx_drp_cfg1_seq_sglp
//		//	0x4000	adcx_drp_cfg1_seq_smul
//		//	0x0042	adcx_drp_cfg2
//		//	0x003f	adcx_drp_flag
//		//	0x0048	adcx_drp_seq0_csel
//		//	0x0010	adcx_drp_seq1_ain0
//		//	0x1000	adcx_drp_seq1_ain1
//		//	0x0049	adcx_drp_seq1_csel
//		//	0x004a	adcx_drp_seq2_cave
//		//	0x004b	adcx_drp_seq3_cave
//		//	0x004c	adcx_drp_seq4_amod
//		//	0x004d	adcx_drp_seq5_amod
//		//	0x004e	adcx_drp_seq6_stim
//		//	0x004f	adcx_drp_seq7_stim
//		//	0x001c	adcx_drp_vaux12
//		//	0x0014	adcx_drp_vaux4
//		//	0x0008	adcx_drpe
//		//	0x0020	adcx_eocf
//		//	0x0040	adcx_eosf
//		//	0x0080	adcx_xbsy
//		//	0xf178	adcxadrr
//		//	0xf17c	adcxadrw
//		//	0xf174	adcxain0
//		//	0xf176	adcxain1
//		//	0xf170	adcxctl
//		//	0xf17a	adcxdatr
//		//	0xf17e	adcxdatw
//		//	0x0026	asc_amp
//		//	0x002a	asc_ast
//		//	0x0040	asc_atm
//		//	0x0060	asc_bqt
//		//	0x0028	asc_bri
//		//	0x0029	asc_bro
//		//	0x0008	asc_bs
//		//	0x0020	asc_c2s
//		//	0x007b	asc_cbi
//		//	0x007d	asc_cbo
//		//	0x005e	asc_cir
//		//	0x003a	asc_cln
//		//	0x002c	asc_cma
//		//	0x000d	asc_cr
//		//	0x007f	asc_del
//		//	0x0024	asc_dol
//		//	0x002e	asc_dot
//		//	0x0022	asc_dqt
//		//	0x003d	asc_eq
//		//	0x0021	asc_exc
//		//	0x003e	asc_gt
//		//	0x000a	asc_lf
//		//	0x003c	asc_lt
//		//	0x002d	asc_mns
//		//	0x0000	asc_nil
//		//	0x0023	asc_num
//		//	0x0025	asc_per
//		//	0x002b	asc_pls
//		//	0x003f	asc_que
//		//	0x003b	asc_sem
//		//	0x002f	asc_sla
//		//	0x0020	asc_spc
//		//	0x005b	asc_sqi
//		//	0x005d	asc_sqo
//		//	0x0027	asc_sqt
//		//	0x0009	asc_tab
//		//	0x007e	asc_tld
//		//	0x005f	asc_und
//		//	0x007c	asc_vrt
//		//	0x005c	asc_yen
//		//	0x2580	baud
//		//	0xf0f8	cachcnth
//		//	0xf0fa	cachcntl
//		//	0xf0f2	cachctl
//		//	0xf0fc	cachhith
//		//	0xf0fe	cachhitl
//		//	0xf0f6	cachlfu
//		//	0xf0f4	cachtag
//		//	0x0001	cchc_cche
//		//	0x8000	cchc_cclr
//		//	0x8000	cchc_vclr
//		//	0x0003	cm76_b10
//		//	0x0002	cm76_cenb
//		//	0x0040	cm76_fabl
//		//	0x0080	cm76_fful
//		//	0x0020	cm76_frbs
//		//	0x000c	cm76_g10
//		//	0x0040	cm76_hsyn
//		//	0x0010	cm76_pckv
//		//	0x0030	cm76_r10
//		//	0x0080	cm76_vsyn
//		//	0x0001	cm76_xcke
//		//	0xf180	cm76ctl
//		//	0xf182	cm76pix
//		//	0x0040	dac_bitw_10b
//		//	0x0050	dac_bitw_11b
//		//	0x0060	dac_bitw_12b
//		//	0x0000	dac_bitw_6b
//		//	0x0010	dac_bitw_7b
//		//	0x0020	dac_bitw_8b
//		//	0x0030	dac_bitw_9b
//		//	0x0070	dac_bitw_a
//		//	0x0004	dac_bitw_s
//		//	0x000f	dac_clks_a
//		//	0x0080	dac_dace
//		//	0xf140	dacctl0
//		//	0xf148	dacctl1
//		//	0xf142	dacdat0
//		//	0xf14a	dacdat1
//		//	0x0001	dist_bsy
//		//	0x0080	dist_dist
//		//	0x0002	dist_err
//		//	0xf118	distcnth
//		//	0xf11a	distcntl
//		//	0xf110	distctl
//		//	0xf114	distecho
//		//	0xf112	disttrig
//		//	0x00080000	eramtop
//		//	0x016e3600	fcpu
//		//	0x0008	fnjp_flp_h
//		//	0x0004	fnjp_flp_v
//		//	0x0010	fnjp_inv
//		//	0x0020	fnjp_ktc
//		//	0x0000	fnjp_rot_0
//		//	0x0001	fnjp_rot_1
//		//	0x0002	fnjp_rot_2
//		//	0x0003	fnjp_rot_3
//		//	0x0080	fnjp_sjs1
//		//	0x0040	fnjp_sjs2
//		//	0xf0b2	fnjpcod
//		//	0xf0b0	fnjpctl
//		//	0xf0b8	fnjpdata
//		//	0xf0ba	fnjpdatb
//		//	0xf0bc	fnjpdatc
//		//	0xf0be	fnjpdatd
//		//	0xf0b4	fnjpdbl
//		//	0x7c00	half_inf
//		//	0xfc00	half_inf_n
//		//	0x7bff	half_max
//		//	0xfbff	half_max_n
//		//	0x0400	half_min
//		//	0x8400	half_min_n
//		//	0x4248	half_mpi
//		//	0xfe00	half_nan
//		//	0x0000	half_zer
//		//	0x8000	half_zer_n
//		//	0x0008	icff_frae
//		//	0x0080	icff_fraf
//		//	0x0001	icff_frst
//		//	0x0004	icff_ftae
//		//	0x0040	icff_ftaf
//		//	0xf090	icffctl
//		//	0xf096	icffrecv
//		//	0xf094	icffsend
//		//	0x000f	idrg_rame
//		//	0xfff0	idrg_romt
//		//	0xf000	idrgcode
//		//	0xf006	idrgedit
//		//	0xf004	idrgfcpu
//		//	0xf00e	idrgrams
//		//	0xf00c	idrgramt
//		//	0xf00a	idrgroms
//		//	0xf008	idrgromt
//		//	0xf002	idrgvers
//		//	0x0000	intc_cenl_0
//		//	0x4000	intc_cenl_1
//		//	0x8000	intc_cenl_2
//		//	0xc000	intc_cenl_3
//		//	0x0080	intc_cenm
//		//	0x0018	intc_cenn
//		//	0x0080	intc_cenr
//		//	0x0000	intc_cmal0_0
//		//	0x0010	intc_cmal0_1
//		//	0x0020	intc_cmal0_2
//		//	0x0030	intc_cmal0_3
//		//	0x0000	intc_cmal1_0
//		//	0x1000	intc_cmal1_1
//		//	0x2000	intc_cmal1_2
//		//	0x3000	intc_cmal1_3
//		//	0x0400	intc_cmam0
//		//	0x4000	intc_cmam1
//		//	0x000b	intc_cman0
//		//	0x000f	intc_cman1
//		//	0x0400	intc_cmar0
//		//	0x4000	intc_cmar1
//		//	0x0000	intc_cmbl0_0
//		//	0x0004	intc_cmbl0_1
//		//	0x0008	intc_cmbl0_2
//		//	0x000c	intc_cmbl0_3
//		//	0x0000	intc_cmbl1_0
//		//	0x0400	intc_cmbl1_1
//		//	0x0800	intc_cmbl1_2
//		//	0x0c00	intc_cmbl1_3
//		//	0x0200	intc_cmbm0
//		//	0x2000	intc_cmbm1
//		//	0x000a	intc_cmbn0
//		//	0x000e	intc_cmbn1
//		//	0x0200	intc_cmbr0
//		//	0x2000	intc_cmbr1
//		//	0x0010	intc_eie0
//		//	0x0020	intc_eie1
//		//	0x0040	intc_eif0
//		//	0x0080	intc_eif1
//		//	0x0000	intc_eil0_0
//		//	0x0010	intc_eil0_1
//		//	0x0020	intc_eil0_2
//		//	0x0030	intc_eil0_3
//		//	0x0000	intc_eil1_0
//		//	0x0040	intc_eil1_1
//		//	0x0080	intc_eil1_2
//		//	0x00c0	intc_eil1_3
//		//	0x0004	intc_eim0
//		//	0x0008	intc_eim1
//		//	0x0003	intc_ein0
//		//	0x0004	intc_ein1
//		//	0x0004	intc_eir0
//		//	0x0008	intc_eir1
//		//	0x0000	intc_eit0_0
//		//	0x0001	intc_eit0_1
//		//	0x0002	intc_eit0_2
//		//	0x0003	intc_eit0_3
//		//	0x0000	intc_eit1_0
//		//	0x0004	intc_eit1_1
//		//	0x0008	intc_eit1_2
//		//	0x000c	intc_eit1_3
//		//	0x0000	intc_fral1_0
//		//	0x0040	intc_fral1_1
//		//	0x0080	intc_fral1_2
//		//	0x00c0	intc_fral1_3
//		//	0x0000	intc_fral2_0
//		//	0x4000	intc_fral2_1
//		//	0x8000	intc_fral2_2
//		//	0xc000	intc_fral2_3
//		//	0x0800	intc_fram1
//		//	0x8000	intc_fram2
//		//	0x001c	intc_fran1
//		//	0x0020	intc_fran2
//		//	0x0800	intc_frar1
//		//	0x8000	intc_frar2
//		//	0x0000	intc_ftal1_0
//		//	0x0010	intc_ftal1_1
//		//	0x0020	intc_ftal1_2
//		//	0x0030	intc_ftal1_3
//		//	0x0000	intc_ftal2_0
//		//	0x1000	intc_ftal2_1
//		//	0x2000	intc_ftal2_2
//		//	0x3000	intc_ftal2_3
//		//	0x0400	intc_ftam1
//		//	0x4000	intc_ftam2
//		//	0x001b	intc_ftan1
//		//	0x001f	intc_ftan2
//		//	0x0400	intc_ftar1
//		//	0x4000	intc_ftar2
//		//	0x0008	intc_ice
//		//	0x0080	intc_icf
//		//	0x0000	intc_icl1_0
//		//	0x0001	intc_icl1_1
//		//	0x0002	intc_icl1_2
//		//	0x0003	intc_icl1_3
//		//	0x0000	intc_icl2_0
//		//	0x0004	intc_icl2_1
//		//	0x0008	intc_icl2_2
//		//	0x000c	intc_icl2_3
//		//	0x0001	intc_icm1
//		//	0x0002	intc_icm2
//		//	0x0001	intc_icn1
//		//	0x0002	intc_icn2
//		//	0x0001	intc_icr1
//		//	0x0002	intc_icr2
//		//	0x0001	intc_icrq
//		//	0x0001	intc_leve
//		//	0x0000	intc_lofl_0
//		//	0x0400	intc_lofl_1
//		//	0x0800	intc_lofl_2
//		//	0x0c00	intc_lofl_3
//		//	0x0020	intc_lofm
//		//	0x0016	intc_lofn
//		//	0x0020	intc_lofr
//		//	0x0000	intc_mral_0
//		//	0x1000	intc_mral_1
//		//	0x2000	intc_mral_2
//		//	0x3000	intc_mral_3
//		//	0x0040	intc_mram
//		//	0x0007	intc_mran
//		//	0x0040	intc_mrar
//		//	0x0001	intc_msk_1
//		//	0x0002	intc_msk_2
//		//	0x0f00	intc_mskh_1
//		//	0xf000	intc_mskh_2
//		//	0x0000	intc_mtel_0
//		//	0x4000	intc_mtel_1
//		//	0x8000	intc_mtel_2
//		//	0xc000	intc_mtel_3
//		//	0x0080	intc_mtem
//		//	0x0008	intc_mten
//		//	0x0080	intc_mter
//		//	0x0000	intc_ovfl0_0
//		//	0x0040	intc_ovfl0_1
//		//	0x0080	intc_ovfl0_2
//		//	0x00c0	intc_ovfl0_3
//		//	0x0000	intc_ovfl1_0
//		//	0x4000	intc_ovfl1_1
//		//	0x8000	intc_ovfl1_2
//		//	0xc000	intc_ovfl1_3
//		//	0x0800	intc_ovfm0
//		//	0x8000	intc_ovfm1
//		//	0x000c	intc_ovfn0
//		//	0x0010	intc_ovfn1
//		//	0x0800	intc_ovfr0
//		//	0x8000	intc_ovfr1
//		//	0x0000	intc_rtcl_0
//		//	0x1000	intc_rtcl_1
//		//	0x2000	intc_rtcl_2
//		//	0x3000	intc_rtcl_3
//		//	0x0040	intc_rtcm
//		//	0x0017	intc_rtcn
//		//	0x0040	intc_rtcr
//		//	0x0000	intc_sgel_0
//		//	0x0100	intc_sgel_1
//		//	0x0200	intc_sgel_2
//		//	0x0300	intc_sgel_3
//		//	0x0010	intc_sgem
//		//	0x0015	intc_sgen
//		//	0x0010	intc_sger
//		//	0x0000	intc_smrl1_0
//		//	0x0004	intc_smrl1_1
//		//	0x0008	intc_smrl1_2
//		//	0x000c	intc_smrl1_3
//		//	0x0000	intc_smrl2_0
//		//	0x0400	intc_smrl2_1
//		//	0x0800	intc_smrl2_2
//		//	0x0c00	intc_smrl2_3
//		//	0x0200	intc_smrm1
//		//	0x2000	intc_smrm2
//		//	0x001a	intc_smrn1
//		//	0x001e	intc_smrn2
//		//	0x0200	intc_smrr1
//		//	0x2000	intc_smrr2
//		//	0x0000	intc_smul1_0
//		//	0x0001	intc_smul1_1
//		//	0x0002	intc_smul1_2
//		//	0x0003	intc_smul1_3
//		//	0x0000	intc_smul2_0
//		//	0x0100	intc_smul2_1
//		//	0x0200	intc_smul2_2
//		//	0x0300	intc_smul2_3
//		//	0x0100	intc_smum1
//		//	0x1000	intc_smum2
//		//	0x0019	intc_smun1
//		//	0x001d	intc_smun2
//		//	0x0100	intc_smur1
//		//	0x1000	intc_smur2
//		//	0x0000	intc_sral_0
//		//	0x0100	intc_sral_1
//		//	0x0200	intc_sral_2
//		//	0x0300	intc_sral_3
//		//	0x0010	intc_sram
//		//	0x0005	intc_sran
//		//	0x0010	intc_srar
//		//	0x0000	intc_stal_0
//		//	0x0400	intc_stal_1
//		//	0x0800	intc_stal_2
//		//	0x0c00	intc_stal_3
//		//	0x0020	intc_stam
//		//	0x0006	intc_stan
//		//	0x0020	intc_star
//		//	0xf064	intcpu
//		//	0xf066	intctl
//		//	0xf062	intext
//		//	0xf06a	intfct
//		//	0xf068	intfcth
//		//	0xf13e	intlev0
//		//	0xf13c	intlev1
//		//	0xf13a	intlev2
//		//	0xf138	intlev3
//		//	0xf06e	intmsk
//		//	0xf06c	intmskh
//		//	0xf060	intnum
//		//	0xf060	intofs
//		//	0xf160	iome_botm
//		//	0xf150	iomedat0
//		//	0xf152	iomedat1
//		//	0xf154	iomedat2
//		//	0xf156	iomedat3
//		//	0xf158	iomedat4
//		//	0xf15a	iomedat5
//		//	0xf15c	iomedat6
//		//	0xf15e	iomedat7
//		//	0x4000	iramtop
//		//	0x8000	iramtop_rom32k
//		//	0xc000	iramtop_rom48k
//		//	0x0001	ivec_ve
//		//	0x00ea	lab__xtoi_break
//		//	0x00c4	lab__xtoi_loop
//		//	0x00e2	lab__xtoi_next
//		//	0x008a	lab_gl_break
//		//	0x0040	lab_gl_loop
//		//	0x006a	lab_gl_not_brdf
//		//	0x005c	lab_gl_plus
//		//	0x0026	lab_loop
//		//	0x00b2	lab_not_atm
//		//	0x0096	lab_skp_spc
//		//	0x00c2	lab_xtoi
//		//	0x0007	led_builtin
//		//	0x0001	led_builtin_b
//		//	0x0004	led_builtin_g
//		//	0x0002	led_builtin_r
//		//	0x0002	loga_abt
//		//	0x0020	loga_davl
//		//	0x0004	loga_frst
//		//	0x0080	loga_laef
//		//	0x0001	loga_sta
//		//	0x0010	loga_tavl
//		//	0xf07c	logacdat
//		//	0xf072	logacmsk
//		//	0xf07a	logactck
//		//	0xf070	logactl
//		//	0xf078	logamaxc
//		//	0xf076	logatcnd
//		//	0xf074	logatmsk
//		//	0x0014	max_lbuf
//		//	0x00e0	poly_cmd_clr
//		//	0x0010	poly_cmd_set
//		//	0x0001	poly_cpu_1
//		//	0x000a	poly_cpu_10
//		//	0x000b	poly_cpu_11
//		//	0x000c	poly_cpu_12
//		//	0x000d	poly_cpu_13
//		//	0x000e	poly_cpu_14
//		//	0x0002	poly_cpu_2
//		//	0x0003	poly_cpu_3
//		//	0x0004	poly_cpu_4
//		//	0x0005	poly_cpu_5
//		//	0x0006	poly_cpu_6
//		//	0x0007	poly_cpu_7
//		//	0x0008	poly_cpu_8
//		//	0x0009	poly_cpu_9
//		//	0x000f	poly_ncpu
//		//	0x0020	poly_pcie
//		//	0x0010	poly_psie
//		//	0x0080	poly_serr
//		//	0xf1a0	polyctl
//		//	0xf1a6	polyintm
//		//	0xf1a4	polyintr
//		//	0xf1a8	polysmph0
//		//	0xf1aa	polysmph1
//		//	0xf1ac	polysmph2
//		//	0xf1ae	polysmph3
//		//	0xf02c	porclr
//		//	0xf0dc	porclr1
//		//	0xf026	pordir
//		//	0xf0d6	pordir1
//		//	0xf020	porin
//		//	0xf0d0	porin1
//		//	0xf022	porind
//		//	0xf0d2	porind1
//		//	0xf02e	porode
//		//	0xf0de	porode1
//		//	0xf028	porout
//		//	0xf0d8	porout1
//		//	0xf024	porsel
//		//	0xf02a	porset
//		//	0xf0da	porset1
//		//	0x0001	port_0
//		//	0x0002	port_1
//		//	0x0004	port_10
//		//	0x0008	port_11
//		//	0x0010	port_12
//		//	0x0020	port_13
//		//	0x0040	port_14
//		//	0x0080	port_15
//		//	0x0004	port_2
//		//	0x0008	port_3
//		//	0x0010	port_4
//		//	0x0020	port_5
//		//	0x0040	port_6
//		//	0x0080	port_7
//		//	0x0001	port_8
//		//	0x0002	port_9
//		//	0xff00	prin_chr_m
//		//	0x0002	prin_dec
//		//	0x0000	prin_flt_0
//		//	0x0004	prin_flt_1
//		//	0x0008	prin_flt_2
//		//	0x000c	prin_flt_3
//		//	0x0001	prin_nld
//		//	0xfff2	princhr
//		//	0xfff0	princtl
//		//	0xfffc	prindcl
//		//	0xfff4	prindec
//		//	0xfff8	prinflt
//		//	0xfff6	prinhex
//		//	0xfff8	prinhlf
//		//	0xfffc	prinhxl
//		//	0x0112	prog_vers
//		//	0x5000	ramtop
//		//	0x9000	ramtop_rom32k
//		//	0xd000	ramtop_rom48k
//		//	0x003f	rtc_day_a
//		//	0x0080	rtc_eavl
//		//	0x0040	rtc_esel
//		//	0x0040	rtc_houe
//		//	0x0004	rtc_houf
//		//	0x3f00	rtc_hour_a
//		//	0x0008	rtc_hour_s
//		//	0x0020	rtc_leap
//		//	0x0020	rtc_mine
//		//	0x0002	rtc_minf
//		//	0x007f	rtc_minute_a
//		//	0x1f00	rtc_month_a
//		//	0x0008	rtc_month_s
//		//	0x00ff	rtc_psc_a
//		//	0x00fa	rtc_psc_max
//		//	0x0002	rtc_rtcw
//		//	0x7f00	rtc_sec_a
//		//	0x0008	rtc_sec_s
//		//	0x0010	rtc_sece
//		//	0x0001	rtc_secf
//		//	0x0001	rtc_snap
//		//	0x0000	rtc_week_0
//		//	0x0001	rtc_week_1
//		//	0x0002	rtc_week_2
//		//	0x0003	rtc_week_3
//		//	0x0004	rtc_week_4
//		//	0x0005	rtc_week_5
//		//	0x0006	rtc_week_6
//		//	0x0007	rtc_week_a
//		//	0x03ff	rtc_year_a
//		//	0xf120	rtcctl
//		//	0xf128	rtchrmi
//		//	0xf122	rtcintc
//		//	0xf126	rtcmody
//		//	0xf12a	rtcscps
//		//	0xf12c	rtcweek
//		//	0xf124	rtcyear
//		//	0x0080	sdrc_sdrm
//		//	0x0040	sdrc_srdy
//		//	0xf0f0	sdrcctl
//		//	0x1000	simc_int0_0
//		//	0x1100	simc_int0_1
//		//	0x2000	simc_int1_0
//		//	0x2200	simc_int1_1
//		//	0x00ff	simc_intw_ff
//		//	0x0001	simc_noto
//		//	0x0002	simc_rtck
//		//	0x0004	simc_tsim
//		//	0xf00a	simctrl
//		//	0xfff5	simfail
//		//	0xf028	simfnsh
//		//	0xf000	simintr
//		//	0xb333	simneut
//		//	0x8006	simpass
//		//	0xf002	simpord
//		//	0xf004	simpori
//		//	0xf006	simusrd
//		//	0xf008	simusri
//		//	0x0000	smph_sem0_0
//		//	0x0040	smph_sem0_1
//		//	0x0080	smph_sem0_2
//		//	0x00c0	smph_sem0_3
//		//	0x0000	smph_sem1_0
//		//	0x0010	smph_sem1_1
//		//	0x0020	smph_sem1_2
//		//	0x0030	smph_sem1_3
//		//	0x0000	smph_sem2_0
//		//	0x0004	smph_sem2_1
//		//	0x0008	smph_sem2_2
//		//	0x000c	smph_sem2_3
//		//	0x0000	smph_sem3_0
//		//	0x0001	smph_sem3_1
//		//	0x0002	smph_sem3_2
//		//	0x0003	smph_sem3_3
//		//	0x0008	smph_smre
//		//	0x0080	smph_smrf
//		//	0x0004	smph_smue
//		//	0x0040	smph_smuf
//		//	0xf080	smphctl
//		//	0xf084	smphrama
//		//	0xf086	smphramb
//		//	0xf088	smphusra
//		//	0xf08a	smphusrb
//		//	0xf08c	smphusrc
//		//	0x0002	sndg_busy
//		//	0x0001	sndg_enbl
//		//	0x0010	sndg_femp
//		//	0x0020	sndg_fful
//		//	0x0080	sndg_frst
//		//	0x007f	sndg_leng_1
//		//	0x0000	sndg_leng_128
//		//	0x0007	sndg_leng_16
//		//	0x003f	sndg_leng_2
//		//	0x0003	sndg_leng_32
//		//	0x001f	sndg_leng_4
//		//	0x0001	sndg_leng_64
//		//	0x000f	sndg_leng_8
//		//	0x007f	sndg_leng_a
//		//	0xf000	sndg_mscl_a
//		//	0x9000	sndg_mscl_ab
//		//	0xa000	sndg_mscl_an
//		//	0xb000	sndg_mscl_as
//		//	0xb000	sndg_mscl_bb
//		//	0xc000	sndg_mscl_bn
//		//	0x1000	sndg_mscl_cn
//		//	0x2000	sndg_mscl_cs
//		//	0x2000	sndg_mscl_db
//		//	0x3000	sndg_mscl_dn
//		//	0x4000	sndg_mscl_ds
//		//	0x4000	sndg_mscl_eb
//		//	0x5000	sndg_mscl_en
//		//	0x6000	sndg_mscl_fn
//		//	0x7000	sndg_mscl_fs
//		//	0x7000	sndg_mscl_gb
//		//	0x8000	sndg_mscl_gn
//		//	0x9000	sndg_mscl_gs
//		//	0xf000	sndg_mscl_r
//		//	0x000c	sndg_mscl_s
//		//	0x0080	sndg_nocl
//		//	0x0000	sndg_octv_0
//		//	0x0100	sndg_octv_1
//		//	0x0200	sndg_octv_2
//		//	0x0300	sndg_octv_3
//		//	0x0400	sndg_octv_4
//		//	0x0500	sndg_octv_5
//		//	0x0600	sndg_octv_6
//		//	0x0700	sndg_octv_7
//		//	0x0800	sndg_octv_8
//		//	0x0f00	sndg_octv_a
//		//	0x0008	sndg_octv_s
//		//	0x0004	sndg_sgee
//		//	0x0008	sndg_sgef
//		//	0xf1c0	sndgctl0
//		//	0xf1c8	sndgctl1
//		//	0xf1c6	sndgfifo0
//		//	0xf1ce	sndgfifo1
//		//	0xf1c4	sndgt1280
//		//	0xf1cc	sndgt1281
//		//	0x7f800000	sngl_inf
//		//	0xff800000	sngl_inf_n
//		//	0x7f7fffff	sngl_max
//		//	0xff7fffff	sngl_max_n
//		//	0x00800000	sngl_min
//		//	0x80800000	sngl_min_n
//		//	0x40490fdb	sngl_mpi
//		//	0xffc00000	sngl_nan
//		//	0x0000	sngl_zer
//		//	0x80000000	sngl_zer_n
//		//	0x00080000	sramsiz
//		//	0x00100000	sramtop
//		//	0x0000	sreg_b_b0
//		//	0x0001	sreg_b_b1
//		//	0x0000	sreg_b_bk0
//		//	0x0001	sreg_b_bk1
//		//	0x0006	sreg_b_cf
//		//	0x000a	sreg_b_dr
//		//	0x000c	sreg_b_id0
//		//	0x000d	sreg_b_id1
//		//	0x000e	sreg_b_id2
//		//	0x000f	sreg_b_id3
//		//	0x0003	sreg_b_ie
//		//	0x0002	sreg_b_ie0
//		//	0x0003	sreg_b_ie1
//		//	0x000b	sreg_b_ml
//		//	0x0007	sreg_b_nf
//		//	0x0008	sreg_b_nh
//		//	0x0009	sreg_b_sd
//		//	0x0005	sreg_b_vf
//		//	0x0004	sreg_b_zf
//		//	0x0000	sreg_bk_0
//		//	0x0001	sreg_bk_1
//		//	0x0002	sreg_bk_2
//		//	0x0003	sreg_bk_3
//		//	0x0040	sreg_cf
//		//	0x0400	sreg_dr
//		//	0x00f0	sreg_fg
//		//	0x0000	sreg_id_0
//		//	0x1000	sreg_id_1
//		//	0xa000	sreg_id_10
//		//	0xb000	sreg_id_11
//		//	0xc000	sreg_id_12
//		//	0xd000	sreg_id_13
//		//	0xe000	sreg_id_14
//		//	0xf000	sreg_id_15
//		//	0x2000	sreg_id_2
//		//	0x3000	sreg_id_3
//		//	0x4000	sreg_id_4
//		//	0x5000	sreg_id_5
//		//	0x6000	sreg_id_6
//		//	0x7000	sreg_id_7
//		//	0x8000	sreg_id_8
//		//	0x9000	sreg_id_9
//		//	0x0008	sreg_ie
//		//	0x0000	sreg_ie_0
//		//	0x0004	sreg_ie_1
//		//	0x0008	sreg_ie_2
//		//	0x000c	sreg_ie_3
//		//	0x0800	sreg_ml
//		//	0x0080	sreg_nf
//		//	0x0100	sreg_nh
//		//	0x0200	sreg_sd
//		//	0x0020	sreg_vf
//		//	0x0010	sreg_zf
//		//	0x0040	stft_pinv
//		//	0x0001	stft_port_0
//		//	0x0002	stft_port_1
//		//	0x0004	stft_port_2
//		//	0x0008	stft_port_3
//		//	0x0010	stft_port_4
//		//	0x0020	stft_port_5
//		//	0x003f	stft_port_a
//		//	0x0080	stft_pwme
//		//	0xf190	stftctl
//		//	0xf196	stftduty
//		//	0xf194	stftpclr
//		//	0xf192	stftpind
//		//	0xf194	stftpins
//		//	0xf192	stftpset
//		//	0xf0a6	stwmbaud
//		//	0xf0a0	stwmctl
//		//	0xf0a2	stwmdatr
//		//	0xf0a2	stwmdats
//		//	0xf0a4	stwmreqr
//		//	0x0001	stws_adrr
//		//	0x0000	stws_adrw
//		//	0x0080	stws_berr
//		//	0x0008	stws_mack
//		//	0x0001	stws_mrae
//		//	0x0010	stws_mraf
//		//	0x8000	stws_mrst
//		//	0x0100	stws_msta
//		//	0x0020	stws_mtaf
//		//	0x0004	stws_mtee
//		//	0x0040	stws_mtef
//		//	0x0002	stws_nack
//		//	0x0001	stws_recv
//		//	0x0008	stws_sack
//		//	0x0200	stws_sadr
//		//	0x0001	stws_srae
//		//	0x0010	stws_sraf
//		//	0x8000	stws_srst
//		//	0x0400	stws_ssta
//		//	0x0100	stws_sstp
//		//	0x0002	stws_stae
//		//	0x0020	stws_staf
//		//	0x0004	stws_stpr
//		//	0xf0ac	stwsadr
//		//	0xf0a8	stwsctl
//		//	0xf0aa	stwsdatr
//		//	0xf0aa	stwsdats
//		//	0xf0ae	stwsmsk
//		//	0x0040	sytm_mcoe
//		//	0x0020	sytm_mloe
//		//	0x0001	sytm_rst
//		//	0x8000	sytm_simu
//		//	0x0080	sytm_tcoe
//		//	0xf010	sytmctl
//		//	0xf018	sytmmcrh
//		//	0xf01a	sytmmcrl
//		//	0xf01c	sytmmilh
//		//	0xf01e	sytmmill
//		//	0xf014	sytmtckh
//		//	0xf016	sytmtckl
//		//	0xf04a	timcma0
//		//	0xf05a	timcma1
//		//	0xf04c	timcmb0
//		//	0xf05c	timcmb1
//		//	0xf046	timcnt0
//		//	0xf056	timcnt1
//		//	0xf040	timctl0
//		//	0xf050	timctl1
//		//	0xf042	timflg0
//		//	0xf052	timflg1
//		//	0xf048	timprd0
//		//	0xf058	timprd1
//		//	0xf044	timpsc0
//		//	0xf054	timpsc1
//		//	0x0004	timr_cmae
//		//	0x0040	timr_cmaf
//		//	0x0002	timr_cmbe
//		//	0x0020	timr_cmbf
//		//	0x0001	timr_cnte
//		//	0x0000	timr_ocma_0
//		//	0x0040	timr_ocma_1
//		//	0x0080	timr_ocma_2
//		//	0x00c0	timr_ocma_3
//		//	0x0000	timr_ocmb_0
//		//	0x0010	timr_ocmb_1
//		//	0x0020	timr_ocmb_2
//		//	0x0030	timr_ocmb_3
//		//	0x0008	timr_ovfe
//		//	0x0080	timr_ovff
//		//	0x0010	tled_led1
//		//	0x0020	tled_led2
//		//	0x0001	tled_ledb
//		//	0x0004	tled_ledg
//		//	0x0002	tled_ledr
//		//	0x0010	tled_lofe
//		//	0x0001	tled_loff
//		//	0x0008	tled_rgbe
//		//	0xf160	tledctl
//		//	0xf16c	tleddty1
//		//	0xf16e	tleddty2
//		//	0xf16a	tleddtyb
//		//	0xf168	tleddtyg
//		//	0xf166	tleddtyr
//		//	0xf162	tledintc
//		//	0xf164	tledpsc
//		//	0xf1b8	trng0cnth
//		//	0xf1ba	trng0cntl
//		//	0xf1bc	trng1cnth
//		//	0xf1be	trng1cntl
//		//	0xf1b0	trngrandh
//		//	0xf1b2	trngrandl
//		//	0xf1b4	trngtlcgh
//		//	0xf1b6	trngtlcgl
//		//	0x09c3	uart_baud
//		//	0x0020	uart_brdf
//		//	0x0002	uart_ctse
//		//	0x0008	uart_ctsp
//		//	0x0080	uart_ctss
//		//	0x0008	uart_frst
//		//	0x0080	uart_ravl
//		//	0x0040	uart_rful
//		//	0x0001	uart_rtse
//		//	0x0004	uart_rtsp
//		//	0x0040	uart_rtss
//		//	0x0002	uart_rxe
//		//	0x0010	uart_tful
//		//	0x0001	uart_txe
//		//	0xf032	uartbaud
//		//	0xf0c2	uartbaud1
//		//	0xf03e	uartbres
//		//	0xf0ce	uartbres1
//		//	0xf030	uartctl
//		//	0xf0c0	uartctl1
//		//	0xf0c8	uartflow1
//		//	0xf036	uartrdat
//		//	0xf0c6	uartrdat1
//		//	0xf034	uarttdat
//		//	0xf0c4	uarttdat1
//		//	0x0001	unsj_bsy
//		//	0x0002	unsj_sjis
//		//	0x0080	unsj_unsj
//		//	0xf100	unsjctl
//		//	0xf106	unsjkutn
//		//	0xf104	unsjsjis
//		//	0xf102	unsjunic
//		// string macro lists
//		//	target		"moscovium"
//		//	target_mc	""
//		//	target_nh	"#"
//		//	target_ts	"#"
//		//	target_mn	""
//		//	p	""
//		//	d	""
//		// user macro lists
//		//	movw	rd rs
//		//	andw	rd rs
//		//	orw		rd rs
//		//	eorw	rd rs
//		//	addw	rd rs
//		//	subw	rd rs
//		//	cmpw	rd rs
//		//	negw	rn
//		//	notw	rn
//		//	addwi	rd imm
//		//	subwi	rd imm
//		//	cmpwi	rd imm
//		//	andwi	rd imm
//		//	lslwi	rd imm
//		//	lsrwi	rd imm
//		//	aslwi	rd imm
//		//	asrwi	rd imm
//		//	cslwi	rd imm
//		//	csrwi	rd imm
//		//	muluw	rd rs
//		//	mulsw	rd rs
//		// ================================
//		default: dat[15:0]=16'hffff;
//		endcase
//		wire	[15:0]	romsiz=16'h00ec;	// 236 bytes
//	endmodule
// ================================
// Assemble data:
//
module	mcoc_boot (
// Moscovium series macro assembler ver.1.58
input	[5:0]	adr,
output	reg		[31:0]	dat);
always	@(adr[5:0])
	case (adr[5:0])
	6'h00: dat[31:0]=32'h0801_0112;
	6'h01: dat[31:0]=32'hc7f0_bf0c;
	6'h02: dat[31:0]=32'h7b87_bf0e;
	6'h03: dat[31:0]=32'h7bbf_7987;
	6'h04: dat[31:0]=32'ha014_7910;
	6'h05: dat[31:0]=32'hc7f0_bf32;
	6'h06: dat[31:0]=32'hc009_b8c3;
	6'h07: dat[31:0]=32'h7bf8_bf30;
	6'h08: dat[31:0]=32'hb002_7bf8;
	6'h09: dat[31:0]=32'hb600_78de;
	6'h0a: dat[31:0]=32'hdbff_93fe;
	6'h0b: dat[31:0]=32'h8b07_c2f0;
	6'h0c: dat[31:0]=32'hba28_7bd3;
	6'h0d: dat[31:0]=32'hba26_7b9a;
	6'h0e: dat[31:0]=32'h8bf8_7bd3;
	6'h0f: dat[31:0]=32'h794a_c7f0;
	6'h10: dat[31:0]=32'hbf30_7b87;
	6'h11: dat[31:0]=32'h7bf8_8820;
	6'h12: dat[31:0]=32'h1810_bf3e;
	6'h13: dat[31:0]=32'h7b87_bf32;
	6'h14: dat[31:0]=32'h7b9f_78d3;
	6'h15: dat[31:0]=32'hdafa_7a18;
	6'h16: dat[31:0]=32'h3001_7fc3;
	6'h17: dat[31:0]=32'h7a9a_2805;
	6'h18: dat[31:0]=32'h7bf8_b3fd;
	6'h19: dat[31:0]=32'hc2f0_ba28;
	6'h1a: dat[31:0]=32'h7bd3_bf30;
	6'h1b: dat[31:0]=32'h7b87_8880;
	6'h1c: dat[31:0]=32'h1fe7_bf36;
	6'h1d: dat[31:0]=32'h7b87_7b48;
	6'h1e: dat[31:0]=32'h9901_a80a;
	6'h1f: dat[31:0]=32'h1806_7942;
	6'h20: dat[31:0]=32'h9814_7a88;
	6'h21: dat[31:0]=32'h2fdd_a101;
	6'h22: dat[31:0]=32'h0fdb_b000;
	6'h23: dat[31:0]=32'ha101_7b48;
	6'h24: dat[31:0]=32'h794a_c700;
	6'h25: dat[31:0]=32'hbfc2_7b01;
	6'h26: dat[31:0]=32'h9901_a809;
	6'h27: dat[31:0]=32'h1ffc_a820;
	6'h28: dat[31:0]=32'h1ffa_a800;
	6'h29: dat[31:0]=32'h1fc0_a840;
	6'h2a: dat[31:0]=32'h1004_7f8f;
	6'h2b: dat[31:0]=32'hd801_78f0;
	6'h2c: dat[31:0]=32'h0ff2_a101;
	6'h2d: dat[31:0]=32'h78d9_7f8f;
	6'h2e: dat[31:0]=32'h7a8b_1fb5;
	6'h2f: dat[31:0]=32'h7bf0_9e02;
	6'h30: dat[31:0]=32'h0fea_b000;
	6'h31: dat[31:0]=32'h7b11_a230;
	6'h32: dat[31:0]=32'h2810_aa0a;
	6'h33: dat[31:0]=32'h280a_a211;
	6'h34: dat[31:0]=32'h280c_9a0a;
	6'h35: dat[31:0]=32'haa10_2805;
	6'h36: dat[31:0]=32'ha22a_2807;
	6'h37: dat[31:0]=32'h9a0a_aa10;
	6'h38: dat[31:0]=32'h2004_d804;
	6'h39: dat[31:0]=32'h7982_9901;
	6'h3a: dat[31:0]=32'h0fed_0002;
	default: dat[31:0]=32'hffff_ffff;
	endcase
	wire	[15:0]	romsiz=16'd236;	// byte
endmodule
