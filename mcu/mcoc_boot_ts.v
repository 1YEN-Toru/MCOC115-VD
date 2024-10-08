// ================================
// Assemble list:
//
//	module	mcoc_boot_ts (
//	input	[7:0]	adr,
//	output	reg		[15:0]	dat);
//	always	@(adr[7:0])
//		case ({ adr[7:0],1'b0 })
//		// Moscovium series macro assembler ver.1.44
//		// ================================
//		// Moscovium series boot loader
//		//		(c) 2021	1YEN Toru
//		//
//		//
//		//		2023/11/18	ver.1.10
//		//			corresponding to small RAM edition
//		//			change: max_lbuf=20 <-- 254
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
//		// register mapping
//		//		r0: general data
//		//		r1: read / write pointer for line buffer
//		//		r2: temporary data for xtoi subroutine
//		//		r3: temporary data
//		//		r6: write pointer for writable rom
//		//		r7: general address pointer
//		//		sp: pointer to line buffer, stack pointer
//		// version
//		9'h000: dat[15:0]=16'h0801;	// bra    pcnt+2
//		9'h002: dat[15:0]=16'h0110;	// datw   0x0110    
//		// set sp to the bottom of ram area
//		9'h004: dat[15:0]=16'hc7f0;	// ldbih  r7,((idrgramt)>>8)&0xff
//		9'h006: dat[15:0]=16'hbf0c;	// ldbil  r7,(idrgramt)&0xff
//		9'h008: dat[15:0]=16'h7b87;	// ldw    r0,r7
//		9'h00a: dat[15:0]=16'hbf0e;	// ldbil  r7,idrgrams
//		9'h00c: dat[15:0]=16'h7bbf;	// ldw    r7,r7
//		// addw r0':r0,r7':r7
//		9'h00e: dat[15:0]=16'h7987;	// add    r0,r7
//		9'h010: dat[15:0]=16'h7fd0;	// cendw  r0
//		9'h012: dat[15:0]=16'h7fd7;	// cendw  r7
//		9'h014: dat[15:0]=16'h79c7;	// adc    r0,r7
//		9'h016: dat[15:0]=16'h7fd0;	// cendw  r0
//		9'h018: dat[15:0]=16'h7fd7;	// cendw  r7
//		// subwi r0':r0,max_lbuf
//		9'h01a: dat[15:0]=16'ha014;	// subi   r0,max_lbuf
//		9'h01c: dat[15:0]=16'h7fd0;	// cendw  r0
//		9'h01e: dat[15:0]=16'h7f00;	// sbbz   r0
//		9'h020: dat[15:0]=16'h7fd0;	// cendw  r0
//		9'h022: dat[15:0]=16'h7910;	// movtc  sp,r0
//		// uart setting: RXE, baud rate
//		9'h024: dat[15:0]=16'hc7f0;	// ldbih  r7,((uartbaud)>>8)&0xff
//		9'h026: dat[15:0]=16'hbf32;	// ldbil  r7,(uartbaud)&0xff
//		9'h028: dat[15:0]=16'hc009;	// ldbih  r0,((uart_baud)>>8)&0xff
//		9'h02a: dat[15:0]=16'hb8c3;	// ldbil  r0,(uart_baud)&0xff
//		9'h02c: dat[15:0]=16'h7bf8;	// stw    r7,r0
//		9'h02e: dat[15:0]=16'hbf30;	// ldbil  r7,uartctl
//		9'h030: dat[15:0]=16'hb002;	// ldbiu  r0,uart_rxe
//		9'h032: dat[15:0]=16'h7bf8;	// stw    r7,r0
//		// ================================
//		// rom data download
//		9'h034: dat[15:0]=16'hb600;	// ldbiu  r6,0
//			// loop:
//		// pilot led
//		// movw r3':r3,r6':r6
//		9'h036: dat[15:0]=16'h78de;	// mov    r3,r6
//		9'h038: dat[15:0]=16'h7fd3;	// cendw  r3
//		9'h03a: dat[15:0]=16'h7fd6;	// cendw  r6
//		9'h03c: dat[15:0]=16'h78de;	// mov    r3,r6
//		9'h03e: dat[15:0]=16'h7fd3;	// cendw  r3
//		9'h040: dat[15:0]=16'h7fd6;	// cendw  r6
//		// lsrwi r3':r3,1
//		9'h042: dat[15:0]=16'h7fd3;	// cendw  r3
//		9'h044: dat[15:0]=16'hdbff;	// lsfti  r3,-1
//		9'h046: dat[15:0]=16'h7fd3;	// cendw  r3
//		9'h048: dat[15:0]=16'hebff;	// csfti  r3,-1
//		9'h04a: dat[15:0]=16'h93fe;	// eori   r3,~led_builtin_b
//		9'h04c: dat[15:0]=16'h8b07;	// andi   r3,led_builtin
//		9'h04e: dat[15:0]=16'hc2f0;	// ldbih  r2,((porout)>>8)&0xff
//		9'h050: dat[15:0]=16'hba28;	// ldbil  r2,(porout)&0xff
//		9'h052: dat[15:0]=16'h7bd3;	// stw    r2,r3
//		9'h054: dat[15:0]=16'hba26;	// ldbil  r2,pordir
//		9'h056: dat[15:0]=16'h7b9a;	// ldw    r3,r2
//		9'h058: dat[15:0]=16'h8bf8;	// andi   r3,~led_builtin
//		9'h05a: dat[15:0]=16'h7bd3;	// stw    r2,r3
//		// ================================
//		// get line from uart
//		9'h05c: dat[15:0]=16'h794a;	// movfc  r1,sp
//		9'h05e: dat[15:0]=16'hc7f0;	// ldbih  r7,uartctl>>8
//			// gl_loop:
//		// check if BRDF=1
//		9'h060: dat[15:0]=16'hbf30;	// ldbil  r7,uartctl
//		9'h062: dat[15:0]=16'h7b87;	// ldw    r0,r7
//		9'h064: dat[15:0]=16'h7bf8;	// stw    r7,r0
//		9'h066: dat[15:0]=16'h8820;	// andi   r0,uart_brdf
//		9'h068: dat[15:0]=16'h183a;	// beq    gl_not_brdf
//		// detected
//		9'h06a: dat[15:0]=16'hbf3e;	// ldbil  r7,uartbres
//		9'h06c: dat[15:0]=16'h7b87;	// ldw    r0,r7
//		9'h06e: dat[15:0]=16'hbf32;	// ldbil  r7,uartbaud
//		9'h070: dat[15:0]=16'h7b9f;	// ldw    r3,r7
//		// margin
//		// movw r2':r2,r3':r3
//		9'h072: dat[15:0]=16'h78d3;	// mov    r2,r3
//		9'h074: dat[15:0]=16'h7fd2;	// cendw  r2
//		9'h076: dat[15:0]=16'h7fd3;	// cendw  r3
//		9'h078: dat[15:0]=16'h78d3;	// mov    r2,r3
//		9'h07a: dat[15:0]=16'h7fd2;	// cendw  r2
//		9'h07c: dat[15:0]=16'h7fd3;	// cendw  r3
//		// lsrwi r2':r2,6
//		9'h07e: dat[15:0]=16'h7fd2;	// cendw  r2
//		9'h080: dat[15:0]=16'hdaff;	// lsfti  r2,-1
//		9'h082: dat[15:0]=16'h7fd2;	// cendw  r2
//		9'h084: dat[15:0]=16'heaff;	// csfti  r2,-1
//		9'h086: dat[15:0]=16'h7fd2;	// cendw  r2
//		9'h088: dat[15:0]=16'hdaff;	// lsfti  r2,-1
//		9'h08a: dat[15:0]=16'h7fd2;	// cendw  r2
//		9'h08c: dat[15:0]=16'heaff;	// csfti  r2,-1
//		9'h08e: dat[15:0]=16'h7fd2;	// cendw  r2
//		9'h090: dat[15:0]=16'hdaff;	// lsfti  r2,-1
//		9'h092: dat[15:0]=16'h7fd2;	// cendw  r2
//		9'h094: dat[15:0]=16'heaff;	// csfti  r2,-1
//		9'h096: dat[15:0]=16'h7fd2;	// cendw  r2
//		9'h098: dat[15:0]=16'hdaff;	// lsfti  r2,-1
//		9'h09a: dat[15:0]=16'h7fd2;	// cendw  r2
//		9'h09c: dat[15:0]=16'heaff;	// csfti  r2,-1
//		9'h09e: dat[15:0]=16'h7fd2;	// cendw  r2
//		9'h0a0: dat[15:0]=16'hdaff;	// lsfti  r2,-1
//		9'h0a2: dat[15:0]=16'h7fd2;	// cendw  r2
//		9'h0a4: dat[15:0]=16'heaff;	// csfti  r2,-1
//		9'h0a6: dat[15:0]=16'h7fd2;	// cendw  r2
//		9'h0a8: dat[15:0]=16'hdaff;	// lsfti  r2,-1
//		9'h0aa: dat[15:0]=16'h7fd2;	// cendw  r2
//		9'h0ac: dat[15:0]=16'heaff;	// csfti  r2,-1
//		// r3=abs (r3 - r0)
//		// subw r3':r3,r0':r0
//		9'h0ae: dat[15:0]=16'h7a18;	// sub    r3,r0
//		9'h0b0: dat[15:0]=16'h7fd3;	// cendw  r3
//		9'h0b2: dat[15:0]=16'h7fd0;	// cendw  r0
//		9'h0b4: dat[15:0]=16'h7a58;	// sbb    r3,r0
//		9'h0b6: dat[15:0]=16'h7fd3;	// cendw  r3
//		9'h0b8: dat[15:0]=16'h7fd0;	// cendw  r0
//		9'h0ba: dat[15:0]=16'h3005;	// bpl    gl_plus
//		// negw r3':r3
//		9'h0bc: dat[15:0]=16'h7fc3;	// neg    r3
//		9'h0be: dat[15:0]=16'h7fd3;	// cendw  r3
//		9'h0c0: dat[15:0]=16'h7f73;	// adcz   r3
//		9'h0c2: dat[15:0]=16'h7fc3;	// neg    r3
//		9'h0c4: dat[15:0]=16'h7fd3;	// cendw  r3
//			// gl_plus:
//		// cmpw r3':r3,r2':r2
//		9'h0c6: dat[15:0]=16'h7a9a;	// cmp    r3,r2
//		9'h0c8: dat[15:0]=16'h7fd3;	// cendw  r3
//		9'h0ca: dat[15:0]=16'h7fd2;	// cendw  r2
//		9'h0cc: dat[15:0]=16'h7ada;	// cmb    r3,r2
//		9'h0ce: dat[15:0]=16'h7fd3;	// cendw  r3
//		9'h0d0: dat[15:0]=16'h7fd2;	// cendw  r2
//		9'h0d2: dat[15:0]=16'h2805;	// blo    gl_not_brdf
//		// update uartbaud
//		9'h0d4: dat[15:0]=16'h7bf8;	// stw    r7,r0
//		// pilot led (detect=red)
//		9'h0d6: dat[15:0]=16'hb3fd;	// ldbiu  r3,~led_builtin_r
//		9'h0d8: dat[15:0]=16'hc2f0;	// ldbih  r2,((porout)>>8)&0xff
//		9'h0da: dat[15:0]=16'hba28;	// ldbil  r2,(porout)&0xff
//		9'h0dc: dat[15:0]=16'h7bd3;	// stw    r2,r3
//			// gl_not_brdf:
//		// polling until RAVL=1
//		9'h0de: dat[15:0]=16'hbf30;	// ldbil  r7,uartctl
//		9'h0e0: dat[15:0]=16'h7b87;	// ldw    r0,r7
//		9'h0e2: dat[15:0]=16'h8880;	// andi   r0,uart_ravl
//		9'h0e4: dat[15:0]=16'h1fbd;	// beq    gl_loop
//		// get byte
//		9'h0e6: dat[15:0]=16'hbf36;	// ldbil  r7,uartrdat
//		9'h0e8: dat[15:0]=16'h7b87;	// ldw    r0,r7
//		9'h0ea: dat[15:0]=16'h7b48;	// stb    r1,r0
//		// addwi r1':r1,1
//		9'h0ec: dat[15:0]=16'h9901;	// addi   r1,1
//		9'h0ee: dat[15:0]=16'h7fd1;	// cendw  r1
//		9'h0f0: dat[15:0]=16'h7f71;	// adcz   r1
//		9'h0f2: dat[15:0]=16'h7fd1;	// cendw  r1
//		// LF code check
//		9'h0f4: dat[15:0]=16'ha80a;	// cmpi   r0,chr_lf
//		9'h0f6: dat[15:0]=16'h1811;	// beq    gl_got
//		// size check
//		9'h0f8: dat[15:0]=16'h7942;	// movfc  r0,sp
//		// addwi r0':r0,max_lbuf
//		9'h0fa: dat[15:0]=16'h9814;	// addi   r0,max_lbuf
//		9'h0fc: dat[15:0]=16'h7fd0;	// cendw  r0
//		9'h0fe: dat[15:0]=16'h7f70;	// adcz   r0
//		9'h100: dat[15:0]=16'h7fd0;	// cendw  r0
//		// cmpw r1':r1,r0':r0
//		9'h102: dat[15:0]=16'h7a88;	// cmp    r1,r0
//		9'h104: dat[15:0]=16'h7fd1;	// cendw  r1
//		9'h106: dat[15:0]=16'h7fd0;	// cendw  r0
//		9'h108: dat[15:0]=16'h7ac8;	// cmb    r1,r0
//		9'h10a: dat[15:0]=16'h7fd1;	// cendw  r1
//		9'h10c: dat[15:0]=16'h7fd0;	// cendw  r0
//		9'h10e: dat[15:0]=16'h2fa8;	// blo    gl_loop
//		// subwi r1':r1,1
//		9'h110: dat[15:0]=16'ha101;	// subi   r1,1
//		9'h112: dat[15:0]=16'h7fd1;	// cendw  r1
//		9'h114: dat[15:0]=16'h7f01;	// sbbz   r1
//		9'h116: dat[15:0]=16'h7fd1;	// cendw  r1
//		9'h118: dat[15:0]=16'h0fa3;	// bra    gl_loop
//		// got line
//			// gl_got:
//		// string terminate
//		9'h11a: dat[15:0]=16'hb000;	// ldbiu  r0,0
//		// subwi r1':r1,1
//		9'h11c: dat[15:0]=16'ha101;	// subi   r1,1
//		9'h11e: dat[15:0]=16'h7fd1;	// cendw  r1
//		9'h120: dat[15:0]=16'h7f01;	// sbbz   r1
//		9'h122: dat[15:0]=16'h7fd1;	// cendw  r1
//		9'h124: dat[15:0]=16'h7b48;	// stb    r1,r0
//		// ================================
//		// analyze line buffer
//		9'h126: dat[15:0]=16'h794a;	// movfc  r1,sp
//		9'h128: dat[15:0]=16'hc701;	// ldbih  r7,((lab_xtoi)>>8)&0xff
//		9'h12a: dat[15:0]=16'hbf8e;	// ldbil  r7,(lab_xtoi)&0xff
//			// loop2:
//		// skip space
//		9'h12c: dat[15:0]=16'h7b01;	// ldb    r0,r1
//		// addwi r1':r1,1
//		9'h12e: dat[15:0]=16'h9901;	// addi   r1,1
//		9'h130: dat[15:0]=16'h7fd1;	// cendw  r1
//		9'h132: dat[15:0]=16'h7f71;	// adcz   r1
//		9'h134: dat[15:0]=16'h7fd1;	// cendw  r1
//		9'h136: dat[15:0]=16'ha809;	// cmpi   r0,chr_tab
//		9'h138: dat[15:0]=16'h1ff9;	// beq    loop2
//		9'h13a: dat[15:0]=16'ha820;	// cmpi   r0,chr_spc
//		9'h13c: dat[15:0]=16'h1ff7;	// beq    loop2
//		9'h13e: dat[15:0]=16'ha800;	// cmpi   r0,0
//		9'h140: dat[15:0]=16'h1f7a;	// beq    loop
//		// ================================
//		// @<address>
//		9'h142: dat[15:0]=16'ha840;	// cmpi   r0,chr_atm
//		9'h144: dat[15:0]=16'h100c;	// bne    not_atm
//		// address
//		9'h146: dat[15:0]=16'h7f8f;	// jalw   r7
//		// set wptr(=r6)
//		// lslwi r0':r0,1
//		9'h148: dat[15:0]=16'hd801;	// lsfti  r0,1
//		9'h14a: dat[15:0]=16'h7fd0;	// cendw  r0
//		9'h14c: dat[15:0]=16'he801;	// csfti  r0,1
//		9'h14e: dat[15:0]=16'h7fd0;	// cendw  r0
//		// movw r6':r6,r0':r0
//		9'h150: dat[15:0]=16'h78f0;	// mov    r6,r0
//		9'h152: dat[15:0]=16'h7fd6;	// cendw  r6
//		9'h154: dat[15:0]=16'h7fd0;	// cendw  r0
//		9'h156: dat[15:0]=16'h78f0;	// mov    r6,r0
//		9'h158: dat[15:0]=16'h7fd6;	// cendw  r6
//		9'h15a: dat[15:0]=16'h7fd0;	// cendw  r0
//		9'h15c: dat[15:0]=16'h0fe7;	// bra    loop2
//			// not_atm:
//		// ================================
//		// <word_data>
//		// subwi r1':r1,1
//		9'h15e: dat[15:0]=16'ha101;	// subi   r1,1
//		9'h160: dat[15:0]=16'h7fd1;	// cendw  r1
//		9'h162: dat[15:0]=16'h7f01;	// sbbz   r1
//		9'h164: dat[15:0]=16'h7fd1;	// cendw  r1
//		// movw r3':r3,r1':r1
//		9'h166: dat[15:0]=16'h78d9;	// mov    r3,r1
//		9'h168: dat[15:0]=16'h7fd3;	// cendw  r3
//		9'h16a: dat[15:0]=16'h7fd1;	// cendw  r1
//		9'h16c: dat[15:0]=16'h78d9;	// mov    r3,r1
//		9'h16e: dat[15:0]=16'h7fd3;	// cendw  r3
//		9'h170: dat[15:0]=16'h7fd1;	// cendw  r1
//		9'h172: dat[15:0]=16'h7f8f;	// jalw   r7
//		// cmpw r1':r1,r3':r3
//		9'h174: dat[15:0]=16'h7a8b;	// cmp    r1,r3
//		9'h176: dat[15:0]=16'h7fd1;	// cendw  r1
//		9'h178: dat[15:0]=16'h7fd3;	// cendw  r3
//		9'h17a: dat[15:0]=16'h7acb;	// cmb    r1,r3
//		9'h17c: dat[15:0]=16'h7fd1;	// cendw  r1
//		9'h17e: dat[15:0]=16'h7fd3;	// cendw  r3
//		9'h180: dat[15:0]=16'h1f5a;	// beq    loop
//		// write data
//		9'h182: dat[15:0]=16'h7bf0;	// stw    r6,r0
//		// update wdat(=r6)
//		// addwi r6':r6,2
//		9'h184: dat[15:0]=16'h9e02;	// addi   r6,2
//		9'h186: dat[15:0]=16'h7fd6;	// cendw  r6
//		9'h188: dat[15:0]=16'h7f76;	// adcz   r6
//		9'h18a: dat[15:0]=16'h7fd6;	// cendw  r6
//		9'h18c: dat[15:0]=16'h0fcf;	// bra    loop2
//		// ================================
//		// hexadecimal to integer: r0=xtoi (r1) ; disturbed r1,r2
//		// ================================
//			// xtoi:
//		9'h18e: dat[15:0]=16'hb000;	// ldbiu  r0,0
//		// r2=[r1]-'0'
//		9'h190: dat[15:0]=16'h7b11;	// ldb    r2,r1
//		9'h192: dat[15:0]=16'ha230;	// subi   r2,0a0
//		9'h194: dat[15:0]=16'h2825;	// blo    x2i_finish
//		9'h196: dat[15:0]=16'haa0a;	// cmpi   r2,10
//		9'h198: dat[15:0]=16'h2808;	// blo    x2i_next
//		9'h19a: dat[15:0]=16'ha207;	// subi   r2,(0aa-0x20)-0a0-10
//		9'h19c: dat[15:0]=16'h2821;	// blo    x2i_finish
//		9'h19e: dat[15:0]=16'haa10;	// cmpi   r2,16
//		9'h1a0: dat[15:0]=16'h2804;	// blo    x2i_next
//		9'h1a2: dat[15:0]=16'ha220;	// subi   r2,0aa-(0aa-0x20)
//		9'h1a4: dat[15:0]=16'h281d;	// blo    x2i_finish
//		9'h1a6: dat[15:0]=16'haa10;	// cmpi   r2,16
//		9'h1a8: dat[15:0]=16'h201b;	// bhs    x2i_finish
//			// x2i_next:
//		// r0=16*r0+r2
//		// lslwi r0':r0,4
//		9'h1aa: dat[15:0]=16'hd801;	// lsfti  r0,1
//		9'h1ac: dat[15:0]=16'h7fd0;	// cendw  r0
//		9'h1ae: dat[15:0]=16'he801;	// csfti  r0,1
//		9'h1b0: dat[15:0]=16'h7fd0;	// cendw  r0
//		9'h1b2: dat[15:0]=16'hd801;	// lsfti  r0,1
//		9'h1b4: dat[15:0]=16'h7fd0;	// cendw  r0
//		9'h1b6: dat[15:0]=16'he801;	// csfti  r0,1
//		9'h1b8: dat[15:0]=16'h7fd0;	// cendw  r0
//		9'h1ba: dat[15:0]=16'hd801;	// lsfti  r0,1
//		9'h1bc: dat[15:0]=16'h7fd0;	// cendw  r0
//		9'h1be: dat[15:0]=16'he801;	// csfti  r0,1
//		9'h1c0: dat[15:0]=16'h7fd0;	// cendw  r0
//		9'h1c2: dat[15:0]=16'hd801;	// lsfti  r0,1
//		9'h1c4: dat[15:0]=16'h7fd0;	// cendw  r0
//		9'h1c6: dat[15:0]=16'he801;	// csfti  r0,1
//		9'h1c8: dat[15:0]=16'h7fd0;	// cendw  r0
//		// addw r0':r0,r2':r2
//		9'h1ca: dat[15:0]=16'h7982;	// add    r0,r2
//		9'h1cc: dat[15:0]=16'h7fd0;	// cendw  r0
//		9'h1ce: dat[15:0]=16'h7fd2;	// cendw  r2
//		9'h1d0: dat[15:0]=16'h79c2;	// adc    r0,r2
//		9'h1d2: dat[15:0]=16'h7fd0;	// cendw  r0
//		9'h1d4: dat[15:0]=16'h7fd2;	// cendw  r2
//		// end of loop
//		// addwi r1':r1,1
//		9'h1d6: dat[15:0]=16'h9901;	// addi   r1,1
//		9'h1d8: dat[15:0]=16'h7fd1;	// cendw  r1
//		9'h1da: dat[15:0]=16'h7f71;	// adcz   r1
//		9'h1dc: dat[15:0]=16'h7fd1;	// cendw  r1
//		9'h1de: dat[15:0]=16'h0fd8;	// bra    xtoi+2
//			// x2i_finish:
//		9'h1e0: dat[15:0]=16'h0002;	// rtnw  
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
//		//	0x0040	chr_atm
//		//	0x000d	chr_cr
//		//	0x000a	chr_lf
//		//	0x0020	chr_spc
//		//	0x0009	chr_tab
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
//		//	0xf000	idrgcode
//		//	0xf006	idrgedit
//		//	0xf004	idrgfcpu
//		//	0xf00e	idrgrams
//		//	0xf00c	idrgramt
//		//	0xf00a	idrgroms
//		//	0xf008	idrgromt
//		//	0xf002	idrgvers
//		//	0x0000	intc_cenl_0
//		//	0x1000	intc_cenl_1
//		//	0x2000	intc_cenl_2
//		//	0x3000	intc_cenl_3
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
//		//	0x0004	intc_icl2_0
//		//	0x0005	intc_icl2_1
//		//	0x0006	intc_icl2_2
//		//	0x0007	intc_icl2_3
//		//	0x0001	intc_icm1
//		//	0x0002	intc_icm2
//		//	0x0001	intc_icn1
//		//	0x0002	intc_icn2
//		//	0x0001	intc_icr1
//		//	0x0002	intc_icr2
//		//	0x0001	intc_icrq
//		//	0x0001	intc_leve
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
//		//	0x4000	intc_rtcl_1
//		//	0x8000	intc_rtcl_2
//		//	0xc000	intc_rtcl_3
//		//	0x0040	intc_rtcm
//		//	0x0017	intc_rtcn
//		//	0x0040	intc_rtcr
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
//		//	0x0001	ivec_ve
//		//	0x011a	lab_gl_got
//		//	0x0060	lab_gl_loop
//		//	0x00de	lab_gl_not_brdf
//		//	0x00c6	lab_gl_plus
//		//	0x0036	lab_loop
//		//	0x012c	lab_loop2
//		//	0x015e	lab_not_atm
//		//	0x01e0	lab_x2i_finish
//		//	0x01aa	lab_x2i_next
//		//	0x018e	lab_xtoi
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
//		//	0x0110	prog_vers
//		//	0x5000	ramtop
//		//	0x0080	rtc_eavl
//		//	0x0040	rtc_esel
//		//	0x0040	rtc_houe
//		//	0x0004	rtc_houf
//		//	0x0020	rtc_leap
//		//	0x0020	rtc_mine
//		//	0x0002	rtc_minf
//		//	0x0002	rtc_rtcw
//		//	0x0010	rtc_sece
//		//	0x0001	rtc_secf
//		//	0x0001	rtc_snap
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
//		//	0x2000	sreg_id_2
//		//	0x3000	sreg_id_3
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
//		//	target		"tennessine"
//		//	target_mc	"#"
//		//	target_nh	"#"
//		//	target_ts	""
//		//	target_mn	"#"
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
//		wire	[15:0]	romsiz=16'h01e2;	// 482 bytes
//	endmodule
// ================================
// Assemble data:
//
module	mcoc_boot_ts (
// Moscovium series macro assembler ver.1.44
input	[6:0]	adr,
output	reg		[31:0]	dat);
always	@(adr[6:0])
	case (adr[6:0])
	7'h00: dat[31:0]=32'h0801_0110;
	7'h01: dat[31:0]=32'hc7f0_bf0c;
	7'h02: dat[31:0]=32'h7b87_bf0e;
	7'h03: dat[31:0]=32'h7bbf_7987;
	7'h04: dat[31:0]=32'h7fd0_7fd7;
	7'h05: dat[31:0]=32'h79c7_7fd0;
	7'h06: dat[31:0]=32'h7fd7_a014;
	7'h07: dat[31:0]=32'h7fd0_7f00;
	7'h08: dat[31:0]=32'h7fd0_7910;
	7'h09: dat[31:0]=32'hc7f0_bf32;
	7'h0a: dat[31:0]=32'hc009_b8c3;
	7'h0b: dat[31:0]=32'h7bf8_bf30;
	7'h0c: dat[31:0]=32'hb002_7bf8;
	7'h0d: dat[31:0]=32'hb600_78de;
	7'h0e: dat[31:0]=32'h7fd3_7fd6;
	7'h0f: dat[31:0]=32'h78de_7fd3;
	7'h10: dat[31:0]=32'h7fd6_7fd3;
	7'h11: dat[31:0]=32'hdbff_7fd3;
	7'h12: dat[31:0]=32'hebff_93fe;
	7'h13: dat[31:0]=32'h8b07_c2f0;
	7'h14: dat[31:0]=32'hba28_7bd3;
	7'h15: dat[31:0]=32'hba26_7b9a;
	7'h16: dat[31:0]=32'h8bf8_7bd3;
	7'h17: dat[31:0]=32'h794a_c7f0;
	7'h18: dat[31:0]=32'hbf30_7b87;
	7'h19: dat[31:0]=32'h7bf8_8820;
	7'h1a: dat[31:0]=32'h183a_bf3e;
	7'h1b: dat[31:0]=32'h7b87_bf32;
	7'h1c: dat[31:0]=32'h7b9f_78d3;
	7'h1d: dat[31:0]=32'h7fd2_7fd3;
	7'h1e: dat[31:0]=32'h78d3_7fd2;
	7'h1f: dat[31:0]=32'h7fd3_7fd2;
	7'h20: dat[31:0]=32'hdaff_7fd2;
	7'h21: dat[31:0]=32'heaff_7fd2;
	7'h22: dat[31:0]=32'hdaff_7fd2;
	7'h23: dat[31:0]=32'heaff_7fd2;
	7'h24: dat[31:0]=32'hdaff_7fd2;
	7'h25: dat[31:0]=32'heaff_7fd2;
	7'h26: dat[31:0]=32'hdaff_7fd2;
	7'h27: dat[31:0]=32'heaff_7fd2;
	7'h28: dat[31:0]=32'hdaff_7fd2;
	7'h29: dat[31:0]=32'heaff_7fd2;
	7'h2a: dat[31:0]=32'hdaff_7fd2;
	7'h2b: dat[31:0]=32'heaff_7a18;
	7'h2c: dat[31:0]=32'h7fd3_7fd0;
	7'h2d: dat[31:0]=32'h7a58_7fd3;
	7'h2e: dat[31:0]=32'h7fd0_3005;
	7'h2f: dat[31:0]=32'h7fc3_7fd3;
	7'h30: dat[31:0]=32'h7f73_7fc3;
	7'h31: dat[31:0]=32'h7fd3_7a9a;
	7'h32: dat[31:0]=32'h7fd3_7fd2;
	7'h33: dat[31:0]=32'h7ada_7fd3;
	7'h34: dat[31:0]=32'h7fd2_2805;
	7'h35: dat[31:0]=32'h7bf8_b3fd;
	7'h36: dat[31:0]=32'hc2f0_ba28;
	7'h37: dat[31:0]=32'h7bd3_bf30;
	7'h38: dat[31:0]=32'h7b87_8880;
	7'h39: dat[31:0]=32'h1fbd_bf36;
	7'h3a: dat[31:0]=32'h7b87_7b48;
	7'h3b: dat[31:0]=32'h9901_7fd1;
	7'h3c: dat[31:0]=32'h7f71_7fd1;
	7'h3d: dat[31:0]=32'ha80a_1811;
	7'h3e: dat[31:0]=32'h7942_9814;
	7'h3f: dat[31:0]=32'h7fd0_7f70;
	7'h40: dat[31:0]=32'h7fd0_7a88;
	7'h41: dat[31:0]=32'h7fd1_7fd0;
	7'h42: dat[31:0]=32'h7ac8_7fd1;
	7'h43: dat[31:0]=32'h7fd0_2fa8;
	7'h44: dat[31:0]=32'ha101_7fd1;
	7'h45: dat[31:0]=32'h7f01_7fd1;
	7'h46: dat[31:0]=32'h0fa3_b000;
	7'h47: dat[31:0]=32'ha101_7fd1;
	7'h48: dat[31:0]=32'h7f01_7fd1;
	7'h49: dat[31:0]=32'h7b48_794a;
	7'h4a: dat[31:0]=32'hc701_bf8e;
	7'h4b: dat[31:0]=32'h7b01_9901;
	7'h4c: dat[31:0]=32'h7fd1_7f71;
	7'h4d: dat[31:0]=32'h7fd1_a809;
	7'h4e: dat[31:0]=32'h1ff9_a820;
	7'h4f: dat[31:0]=32'h1ff7_a800;
	7'h50: dat[31:0]=32'h1f7a_a840;
	7'h51: dat[31:0]=32'h100c_7f8f;
	7'h52: dat[31:0]=32'hd801_7fd0;
	7'h53: dat[31:0]=32'he801_7fd0;
	7'h54: dat[31:0]=32'h78f0_7fd6;
	7'h55: dat[31:0]=32'h7fd0_78f0;
	7'h56: dat[31:0]=32'h7fd6_7fd0;
	7'h57: dat[31:0]=32'h0fe7_a101;
	7'h58: dat[31:0]=32'h7fd1_7f01;
	7'h59: dat[31:0]=32'h7fd1_78d9;
	7'h5a: dat[31:0]=32'h7fd3_7fd1;
	7'h5b: dat[31:0]=32'h78d9_7fd3;
	7'h5c: dat[31:0]=32'h7fd1_7f8f;
	7'h5d: dat[31:0]=32'h7a8b_7fd1;
	7'h5e: dat[31:0]=32'h7fd3_7acb;
	7'h5f: dat[31:0]=32'h7fd1_7fd3;
	7'h60: dat[31:0]=32'h1f5a_7bf0;
	7'h61: dat[31:0]=32'h9e02_7fd6;
	7'h62: dat[31:0]=32'h7f76_7fd6;
	7'h63: dat[31:0]=32'h0fcf_b000;
	7'h64: dat[31:0]=32'h7b11_a230;
	7'h65: dat[31:0]=32'h2825_aa0a;
	7'h66: dat[31:0]=32'h2808_a207;
	7'h67: dat[31:0]=32'h2821_aa10;
	7'h68: dat[31:0]=32'h2804_a220;
	7'h69: dat[31:0]=32'h281d_aa10;
	7'h6a: dat[31:0]=32'h201b_d801;
	7'h6b: dat[31:0]=32'h7fd0_e801;
	7'h6c: dat[31:0]=32'h7fd0_d801;
	7'h6d: dat[31:0]=32'h7fd0_e801;
	7'h6e: dat[31:0]=32'h7fd0_d801;
	7'h6f: dat[31:0]=32'h7fd0_e801;
	7'h70: dat[31:0]=32'h7fd0_d801;
	7'h71: dat[31:0]=32'h7fd0_e801;
	7'h72: dat[31:0]=32'h7fd0_7982;
	7'h73: dat[31:0]=32'h7fd0_7fd2;
	7'h74: dat[31:0]=32'h79c2_7fd0;
	7'h75: dat[31:0]=32'h7fd2_9901;
	7'h76: dat[31:0]=32'h7fd1_7f71;
	7'h77: dat[31:0]=32'h7fd1_0fd8;
	7'h78: dat[31:0]=32'h0002_ffff;
	default: dat[31:0]=32'hffff_ffff;
	endcase
	wire	[15:0]	romsiz=16'd484;	// byte
endmodule
