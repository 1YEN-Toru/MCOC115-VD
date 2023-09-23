module	mcoc_boot_ts (adr,dat,romsiz);
input	[7:0]	adr;
output	[15:0]	dat;
output	[15:0]	romsiz;
reg		[15:0]	dat;
always	@(adr[7:0])
	case ({ adr[7:0],1'b0 })
	// Moscovium series macro assembler ver.1.34
	// ================================
	// Moscovium series boot loader
	//		(c) 2021	1YEN Toru
	//
	//
	//		2023/09/23	ver.1.08
	//			corresponding to Tennessine core
	//			use: def target,"tennessine"
	//
	//		2023/07/08	ver.1.06
	//			lsfti -> lsli / lsri
	//
	//		2021/11/06	ver.1.04
	//			corresponding to baud rate detection
	//
	//		2021/08/14	ver.1.02
	//			corresponding to bi-directional port
	//
	//		2021/06/12	ver.1.00
	//
	// ================================
	// register mapping
	//		r0: general data
	//		r1: read / write pointer for line buffer
	//		r2: temporary data for xtoi subroutine
	//		r3: temporary data
	//		r6: write pointer for writable rom
	//		r7: general address pointer
	//		sp: pointer to line buffer, stack pointer
	// version
	9'h000: dat[15:0]=16'h0801;	// bra    pcnt+2
	9'h002: dat[15:0]=16'h0108;	// datw   0x0108    
	// set sp to the bottom of ram area
	9'h004: dat[15:0]=16'hc7f0;	// ldbih  r7,((idrgramt)>>8)&0xff
	9'h006: dat[15:0]=16'hbf0c;	// ldbil  r7,(idrgramt)&0xff
	9'h008: dat[15:0]=16'h7b87;	// ldw    r0,r7
	9'h00a: dat[15:0]=16'hbf0e;	// ldbil  r7,idrgrams
	9'h00c: dat[15:0]=16'h7bbf;	// ldw    r7,r7
	// addw r0':r0,r7':r7
	9'h00e: dat[15:0]=16'h7987;	// add    r0,r7
	9'h010: dat[15:0]=16'h7fd0;	// cendw  r0
	9'h012: dat[15:0]=16'h7fd7;	// cendw  r7
	9'h014: dat[15:0]=16'h79c7;	// adc    r0,r7
	9'h016: dat[15:0]=16'h7fd0;	// cendw  r0
	9'h018: dat[15:0]=16'h7fd7;	// cendw  r7
	// subwi r0':r0,max_lbuf
	9'h01a: dat[15:0]=16'ha0fe;	// subi   r0,max_lbuf
	9'h01c: dat[15:0]=16'h7fd0;	// cendw  r0
	9'h01e: dat[15:0]=16'h7f00;	// sbbz   r0
	9'h020: dat[15:0]=16'h7fd0;	// cendw  r0
	9'h022: dat[15:0]=16'h7910;	// movtc  sp,r0
	// uart setting: RXE, baud rate
	9'h024: dat[15:0]=16'hc7f0;	// ldbih  r7,((uartbaud)>>8)&0xff
	9'h026: dat[15:0]=16'hbf32;	// ldbil  r7,(uartbaud)&0xff
	9'h028: dat[15:0]=16'hc009;	// ldbih  r0,((uart_baud)>>8)&0xff
	9'h02a: dat[15:0]=16'hb8c3;	// ldbil  r0,(uart_baud)&0xff
	9'h02c: dat[15:0]=16'h7bf8;	// stw    r7,r0
	9'h02e: dat[15:0]=16'hbf30;	// ldbil  r7,uartctl
	9'h030: dat[15:0]=16'hb002;	// ldbiu  r0,uart_rxe
	9'h032: dat[15:0]=16'h7bf8;	// stw    r7,r0
	// ================================
	// rom data download
	9'h034: dat[15:0]=16'hb600;	// ldbiu  r6,0
		// loop:
	// pilot led
	// movw r3':r3,r6':r6
	9'h036: dat[15:0]=16'h78de;	// mov    r3,r6
	9'h038: dat[15:0]=16'h7fd3;	// cendw  r3
	9'h03a: dat[15:0]=16'h7fd6;	// cendw  r6
	9'h03c: dat[15:0]=16'h78de;	// mov    r3,r6
	9'h03e: dat[15:0]=16'h7fd3;	// cendw  r3
	9'h040: dat[15:0]=16'h7fd6;	// cendw  r6
	// lsrwi r3':r3,1
	9'h042: dat[15:0]=16'h7fd3;	// cendw  r3
	9'h044: dat[15:0]=16'hdbff;	// lsfti  r3,-1
	9'h046: dat[15:0]=16'h7fd3;	// cendw  r3
	9'h048: dat[15:0]=16'hebff;	// csfti  r3,-1
	9'h04a: dat[15:0]=16'h93fe;	// eori   r3,~led_builtin_b
	9'h04c: dat[15:0]=16'h8b07;	// andi   r3,led_builtin
	9'h04e: dat[15:0]=16'hc2f0;	// ldbih  r2,((porout)>>8)&0xff
	9'h050: dat[15:0]=16'hba28;	// ldbil  r2,(porout)&0xff
	9'h052: dat[15:0]=16'h7bd3;	// stw    r2,r3
	9'h054: dat[15:0]=16'hba26;	// ldbil  r2,pordir
	9'h056: dat[15:0]=16'h7b9a;	// ldw    r3,r2
	9'h058: dat[15:0]=16'h8bf8;	// andi   r3,~led_builtin
	9'h05a: dat[15:0]=16'h7bd3;	// stw    r2,r3
	// ================================
	// get line from uart
	9'h05c: dat[15:0]=16'h794a;	// movfc  r1,sp
	9'h05e: dat[15:0]=16'hc7f0;	// ldbih  r7,uartctl>>8
		// gl_loop:
	// check if BRDF=1
	9'h060: dat[15:0]=16'hbf30;	// ldbil  r7,uartctl
	9'h062: dat[15:0]=16'h7b87;	// ldw    r0,r7
	9'h064: dat[15:0]=16'h7bf8;	// stw    r7,r0
	9'h066: dat[15:0]=16'h8820;	// andi   r0,uart_brdf
	9'h068: dat[15:0]=16'h183a;	// beq    gl_not_brdf
	// detected
	9'h06a: dat[15:0]=16'hbf3e;	// ldbil  r7,uartbres
	9'h06c: dat[15:0]=16'h7b87;	// ldw    r0,r7
	9'h06e: dat[15:0]=16'hbf32;	// ldbil  r7,uartbaud
	9'h070: dat[15:0]=16'h7b9f;	// ldw    r3,r7
	// margin
	// movw r2':r2,r3':r3
	9'h072: dat[15:0]=16'h78d3;	// mov    r2,r3
	9'h074: dat[15:0]=16'h7fd2;	// cendw  r2
	9'h076: dat[15:0]=16'h7fd3;	// cendw  r3
	9'h078: dat[15:0]=16'h78d3;	// mov    r2,r3
	9'h07a: dat[15:0]=16'h7fd2;	// cendw  r2
	9'h07c: dat[15:0]=16'h7fd3;	// cendw  r3
	// lsrwi r2':r2,6
	9'h07e: dat[15:0]=16'h7fd2;	// cendw  r2
	9'h080: dat[15:0]=16'hdaff;	// lsfti  r2,-1
	9'h082: dat[15:0]=16'h7fd2;	// cendw  r2
	9'h084: dat[15:0]=16'heaff;	// csfti  r2,-1
	9'h086: dat[15:0]=16'h7fd2;	// cendw  r2
	9'h088: dat[15:0]=16'hdaff;	// lsfti  r2,-1
	9'h08a: dat[15:0]=16'h7fd2;	// cendw  r2
	9'h08c: dat[15:0]=16'heaff;	// csfti  r2,-1
	9'h08e: dat[15:0]=16'h7fd2;	// cendw  r2
	9'h090: dat[15:0]=16'hdaff;	// lsfti  r2,-1
	9'h092: dat[15:0]=16'h7fd2;	// cendw  r2
	9'h094: dat[15:0]=16'heaff;	// csfti  r2,-1
	9'h096: dat[15:0]=16'h7fd2;	// cendw  r2
	9'h098: dat[15:0]=16'hdaff;	// lsfti  r2,-1
	9'h09a: dat[15:0]=16'h7fd2;	// cendw  r2
	9'h09c: dat[15:0]=16'heaff;	// csfti  r2,-1
	9'h09e: dat[15:0]=16'h7fd2;	// cendw  r2
	9'h0a0: dat[15:0]=16'hdaff;	// lsfti  r2,-1
	9'h0a2: dat[15:0]=16'h7fd2;	// cendw  r2
	9'h0a4: dat[15:0]=16'heaff;	// csfti  r2,-1
	9'h0a6: dat[15:0]=16'h7fd2;	// cendw  r2
	9'h0a8: dat[15:0]=16'hdaff;	// lsfti  r2,-1
	9'h0aa: dat[15:0]=16'h7fd2;	// cendw  r2
	9'h0ac: dat[15:0]=16'heaff;	// csfti  r2,-1
	// r3=abs (r3 - r0)
	// subw r3':r3,r0':r0
	9'h0ae: dat[15:0]=16'h7a18;	// sub    r3,r0
	9'h0b0: dat[15:0]=16'h7fd3;	// cendw  r3
	9'h0b2: dat[15:0]=16'h7fd0;	// cendw  r0
	9'h0b4: dat[15:0]=16'h7a58;	// sbb    r3,r0
	9'h0b6: dat[15:0]=16'h7fd3;	// cendw  r3
	9'h0b8: dat[15:0]=16'h7fd0;	// cendw  r0
	9'h0ba: dat[15:0]=16'h3005;	// bpl    gl_plus
	// negw r3':r3
	9'h0bc: dat[15:0]=16'h7fc3;	// neg    r3
	9'h0be: dat[15:0]=16'h7fd3;	// cendw  r3
	9'h0c0: dat[15:0]=16'h7f73;	// adcz   r3
	9'h0c2: dat[15:0]=16'h7fc3;	// neg    r3
	9'h0c4: dat[15:0]=16'h7fd3;	// cendw  r3
		// gl_plus:
	// cmpw r3':r3,r2':r2
	9'h0c6: dat[15:0]=16'h7a9a;	// cmp    r3,r2
	9'h0c8: dat[15:0]=16'h7fd3;	// cendw  r3
	9'h0ca: dat[15:0]=16'h7fd2;	// cendw  r2
	9'h0cc: dat[15:0]=16'h7ada;	// cmb    r3,r2
	9'h0ce: dat[15:0]=16'h7fd3;	// cendw  r3
	9'h0d0: dat[15:0]=16'h7fd2;	// cendw  r2
	9'h0d2: dat[15:0]=16'h2805;	// blo    gl_not_brdf
	// update uartbaud
	9'h0d4: dat[15:0]=16'h7bf8;	// stw    r7,r0
	// pilot led (detect=red)
	9'h0d6: dat[15:0]=16'hb3fd;	// ldbiu  r3,~led_builtin_r
	9'h0d8: dat[15:0]=16'hc2f0;	// ldbih  r2,((porout)>>8)&0xff
	9'h0da: dat[15:0]=16'hba28;	// ldbil  r2,(porout)&0xff
	9'h0dc: dat[15:0]=16'h7bd3;	// stw    r2,r3
		// gl_not_brdf:
	// polling until RAVL=1
	9'h0de: dat[15:0]=16'hbf30;	// ldbil  r7,uartctl
	9'h0e0: dat[15:0]=16'h7b87;	// ldw    r0,r7
	9'h0e2: dat[15:0]=16'h8880;	// andi   r0,uart_ravl
	9'h0e4: dat[15:0]=16'h1fbd;	// beq    gl_loop
	// get byte
	9'h0e6: dat[15:0]=16'hbf36;	// ldbil  r7,uartrdat
	9'h0e8: dat[15:0]=16'h7b87;	// ldw    r0,r7
	9'h0ea: dat[15:0]=16'h7b48;	// stb    r1,r0
	// addwi r1':r1,1
	9'h0ec: dat[15:0]=16'h9901;	// addi   r1,1
	9'h0ee: dat[15:0]=16'h7fd1;	// cendw  r1
	9'h0f0: dat[15:0]=16'h7f71;	// adcz   r1
	9'h0f2: dat[15:0]=16'h7fd1;	// cendw  r1
	// LF code check
	9'h0f4: dat[15:0]=16'ha80a;	// cmpi   r0,chr_lf
	9'h0f6: dat[15:0]=16'h1811;	// beq    gl_got
	// size check
	9'h0f8: dat[15:0]=16'h7942;	// movfc  r0,sp
	// addwi r0':r0,max_lbuf
	9'h0fa: dat[15:0]=16'h98fe;	// addi   r0,max_lbuf
	9'h0fc: dat[15:0]=16'h7fd0;	// cendw  r0
	9'h0fe: dat[15:0]=16'h7f70;	// adcz   r0
	9'h100: dat[15:0]=16'h7fd0;	// cendw  r0
	// cmpw r1':r1,r0':r0
	9'h102: dat[15:0]=16'h7a88;	// cmp    r1,r0
	9'h104: dat[15:0]=16'h7fd1;	// cendw  r1
	9'h106: dat[15:0]=16'h7fd0;	// cendw  r0
	9'h108: dat[15:0]=16'h7ac8;	// cmb    r1,r0
	9'h10a: dat[15:0]=16'h7fd1;	// cendw  r1
	9'h10c: dat[15:0]=16'h7fd0;	// cendw  r0
	9'h10e: dat[15:0]=16'h2fa8;	// blo    gl_loop
	// subwi r1':r1,1
	9'h110: dat[15:0]=16'ha101;	// subi   r1,1
	9'h112: dat[15:0]=16'h7fd1;	// cendw  r1
	9'h114: dat[15:0]=16'h7f01;	// sbbz   r1
	9'h116: dat[15:0]=16'h7fd1;	// cendw  r1
	9'h118: dat[15:0]=16'h0fa3;	// bra    gl_loop
	// got line
		// gl_got:
	// string terminate
	9'h11a: dat[15:0]=16'hb000;	// ldbiu  r0,0
	// subwi r1':r1,1
	9'h11c: dat[15:0]=16'ha101;	// subi   r1,1
	9'h11e: dat[15:0]=16'h7fd1;	// cendw  r1
	9'h120: dat[15:0]=16'h7f01;	// sbbz   r1
	9'h122: dat[15:0]=16'h7fd1;	// cendw  r1
	9'h124: dat[15:0]=16'h7b48;	// stb    r1,r0
	// ================================
	// analyze line buffer
	9'h126: dat[15:0]=16'h794a;	// movfc  r1,sp
	9'h128: dat[15:0]=16'hc701;	// ldbih  r7,((lab_xtoi)>>8)&0xff
	9'h12a: dat[15:0]=16'hbf8e;	// ldbil  r7,(lab_xtoi)&0xff
		// loop2:
	// skip space
	9'h12c: dat[15:0]=16'h7b01;	// ldb    r0,r1
	// addwi r1':r1,1
	9'h12e: dat[15:0]=16'h9901;	// addi   r1,1
	9'h130: dat[15:0]=16'h7fd1;	// cendw  r1
	9'h132: dat[15:0]=16'h7f71;	// adcz   r1
	9'h134: dat[15:0]=16'h7fd1;	// cendw  r1
	9'h136: dat[15:0]=16'ha809;	// cmpi   r0,chr_tab
	9'h138: dat[15:0]=16'h1ff9;	// beq    loop2
	9'h13a: dat[15:0]=16'ha820;	// cmpi   r0,chr_spc
	9'h13c: dat[15:0]=16'h1ff7;	// beq    loop2
	9'h13e: dat[15:0]=16'h78c0;	// mov    r0,r0
	9'h140: dat[15:0]=16'h1f7a;	// beq    loop
	// ================================
	// @<address>
	9'h142: dat[15:0]=16'ha840;	// cmpi   r0,chr_atm
	9'h144: dat[15:0]=16'h100c;	// bne    not_atm
	// address
	9'h146: dat[15:0]=16'h7f8f;	// jalw   r7
	// set wptr(=r6)
	// lslwi r0':r0,1
	9'h148: dat[15:0]=16'hd801;	// lsfti  r0,1
	9'h14a: dat[15:0]=16'h7fd0;	// cendw  r0
	9'h14c: dat[15:0]=16'he801;	// csfti  r0,1
	9'h14e: dat[15:0]=16'h7fd0;	// cendw  r0
	// movw r6':r6,r0':r0
	9'h150: dat[15:0]=16'h78f0;	// mov    r6,r0
	9'h152: dat[15:0]=16'h7fd6;	// cendw  r6
	9'h154: dat[15:0]=16'h7fd0;	// cendw  r0
	9'h156: dat[15:0]=16'h78f0;	// mov    r6,r0
	9'h158: dat[15:0]=16'h7fd6;	// cendw  r6
	9'h15a: dat[15:0]=16'h7fd0;	// cendw  r0
	9'h15c: dat[15:0]=16'h0fe7;	// bra    loop2
		// not_atm:
	// ================================
	// <word_data>
	// subwi r1':r1,1
	9'h15e: dat[15:0]=16'ha101;	// subi   r1,1
	9'h160: dat[15:0]=16'h7fd1;	// cendw  r1
	9'h162: dat[15:0]=16'h7f01;	// sbbz   r1
	9'h164: dat[15:0]=16'h7fd1;	// cendw  r1
	// movw r3':r3,r1':r1
	9'h166: dat[15:0]=16'h78d9;	// mov    r3,r1
	9'h168: dat[15:0]=16'h7fd3;	// cendw  r3
	9'h16a: dat[15:0]=16'h7fd1;	// cendw  r1
	9'h16c: dat[15:0]=16'h78d9;	// mov    r3,r1
	9'h16e: dat[15:0]=16'h7fd3;	// cendw  r3
	9'h170: dat[15:0]=16'h7fd1;	// cendw  r1
	9'h172: dat[15:0]=16'h7f8f;	// jalw   r7
	// cmpw r1':r1,r3':r3
	9'h174: dat[15:0]=16'h7a8b;	// cmp    r1,r3
	9'h176: dat[15:0]=16'h7fd1;	// cendw  r1
	9'h178: dat[15:0]=16'h7fd3;	// cendw  r3
	9'h17a: dat[15:0]=16'h7acb;	// cmb    r1,r3
	9'h17c: dat[15:0]=16'h7fd1;	// cendw  r1
	9'h17e: dat[15:0]=16'h7fd3;	// cendw  r3
	9'h180: dat[15:0]=16'h1f5a;	// beq    loop
	// write data
	9'h182: dat[15:0]=16'h7bf0;	// stw    r6,r0
	// update wdat(=r6)
	// addwi r6':r6,2
	9'h184: dat[15:0]=16'h9e02;	// addi   r6,2
	9'h186: dat[15:0]=16'h7fd6;	// cendw  r6
	9'h188: dat[15:0]=16'h7f76;	// adcz   r6
	9'h18a: dat[15:0]=16'h7fd6;	// cendw  r6
	9'h18c: dat[15:0]=16'h0fcf;	// bra    loop2
	// ================================
	// hexadecimal to integer: r0=xtoi (r1) ; disturbed r1,r2
	// ================================
		// xtoi:
	9'h18e: dat[15:0]=16'hb000;	// ldbiu  r0,0
	// r2=[r1]-'0'
	9'h190: dat[15:0]=16'h7b11;	// ldb    r2,r1
	9'h192: dat[15:0]=16'ha230;	// subi   r2,0a0
	9'h194: dat[15:0]=16'h2825;	// blo    x2i_finish
	9'h196: dat[15:0]=16'haa0a;	// cmpi   r2,10
	9'h198: dat[15:0]=16'h2808;	// blo    x2i_next
	9'h19a: dat[15:0]=16'ha207;	// subi   r2,(0aa-0x20)-0a0-10
	9'h19c: dat[15:0]=16'h2821;	// blo    x2i_finish
	9'h19e: dat[15:0]=16'haa10;	// cmpi   r2,16
	9'h1a0: dat[15:0]=16'h2804;	// blo    x2i_next
	9'h1a2: dat[15:0]=16'ha220;	// subi   r2,0aa-(0aa-0x20)
	9'h1a4: dat[15:0]=16'h281d;	// blo    x2i_finish
	9'h1a6: dat[15:0]=16'haa10;	// cmpi   r2,16
	9'h1a8: dat[15:0]=16'h201b;	// bhs    x2i_finish
		// x2i_next:
	// r0=16*r0+r2
	// lslwi r0':r0,4
	9'h1aa: dat[15:0]=16'hd801;	// lsfti  r0,1
	9'h1ac: dat[15:0]=16'h7fd0;	// cendw  r0
	9'h1ae: dat[15:0]=16'he801;	// csfti  r0,1
	9'h1b0: dat[15:0]=16'h7fd0;	// cendw  r0
	9'h1b2: dat[15:0]=16'hd801;	// lsfti  r0,1
	9'h1b4: dat[15:0]=16'h7fd0;	// cendw  r0
	9'h1b6: dat[15:0]=16'he801;	// csfti  r0,1
	9'h1b8: dat[15:0]=16'h7fd0;	// cendw  r0
	9'h1ba: dat[15:0]=16'hd801;	// lsfti  r0,1
	9'h1bc: dat[15:0]=16'h7fd0;	// cendw  r0
	9'h1be: dat[15:0]=16'he801;	// csfti  r0,1
	9'h1c0: dat[15:0]=16'h7fd0;	// cendw  r0
	9'h1c2: dat[15:0]=16'hd801;	// lsfti  r0,1
	9'h1c4: dat[15:0]=16'h7fd0;	// cendw  r0
	9'h1c6: dat[15:0]=16'he801;	// csfti  r0,1
	9'h1c8: dat[15:0]=16'h7fd0;	// cendw  r0
	// addw r0':r0,r2':r2
	9'h1ca: dat[15:0]=16'h7982;	// add    r0,r2
	9'h1cc: dat[15:0]=16'h7fd0;	// cendw  r0
	9'h1ce: dat[15:0]=16'h7fd2;	// cendw  r2
	9'h1d0: dat[15:0]=16'h79c2;	// adc    r0,r2
	9'h1d2: dat[15:0]=16'h7fd0;	// cendw  r0
	9'h1d4: dat[15:0]=16'h7fd2;	// cendw  r2
	// end of loop
	// addwi r1':r1,1
	9'h1d6: dat[15:0]=16'h9901;	// addi   r1,1
	9'h1d8: dat[15:0]=16'h7fd1;	// cendw  r1
	9'h1da: dat[15:0]=16'h7f71;	// adcz   r1
	9'h1dc: dat[15:0]=16'h7fd1;	// cendw  r1
	9'h1de: dat[15:0]=16'h0fd8;	// bra    xtoi+2
		// x2i_finish:
	9'h1e0: dat[15:0]=16'h0002;	// rtnw  
	default: dat[15:0]=16'hffff;
	endcase
	assign	romsiz[15:0]=16'h01e2;	// 482 bytes
endmodule
