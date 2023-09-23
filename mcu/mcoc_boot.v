module	mcoc_boot (adr,dat,romsiz);
input	[6:0]	adr;
output	[15:0]	dat;
output	[15:0]	romsiz;
reg		[15:0]	dat;
always	@(adr[6:0])
	case ({ adr[6:0],1'b0 })
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
	8'h00: dat[15:0]=16'h0801;	// bra    pcnt+2
	8'h02: dat[15:0]=16'h0108;	// datw   0x0108    
	// set sp to the bottom of ram area
	8'h04: dat[15:0]=16'hc7f0;	// ldbih  r7,((idrgramt)>>8)&0xff
	8'h06: dat[15:0]=16'hbf0c;	// ldbil  r7,(idrgramt)&0xff
	8'h08: dat[15:0]=16'h7b87;	// ldw    r0,r7
	8'h0a: dat[15:0]=16'hbf0e;	// ldbil  r7,idrgrams
	8'h0c: dat[15:0]=16'h7bbf;	// ldw    r7,r7
	8'h0e: dat[15:0]=16'h7987;	// add    r0,r7
	8'h10: dat[15:0]=16'ha0fe;	// subi   r0,max_lbuf
	8'h12: dat[15:0]=16'h7910;	// movtc  sp,r0
	// uart setting: RXE, baud rate
	8'h14: dat[15:0]=16'hc7f0;	// ldbih  r7,((uartbaud)>>8)&0xff
	8'h16: dat[15:0]=16'hbf32;	// ldbil  r7,(uartbaud)&0xff
	8'h18: dat[15:0]=16'hc009;	// ldbih  r0,((uart_baud)>>8)&0xff
	8'h1a: dat[15:0]=16'hb8c3;	// ldbil  r0,(uart_baud)&0xff
	8'h1c: dat[15:0]=16'h7bf8;	// stw    r7,r0
	8'h1e: dat[15:0]=16'hbf30;	// ldbil  r7,uartctl
	8'h20: dat[15:0]=16'hb002;	// ldbiu  r0,uart_rxe
	8'h22: dat[15:0]=16'h7bf8;	// stw    r7,r0
	// ================================
	// rom data download
	8'h24: dat[15:0]=16'hb600;	// ldbiu  r6,0
		// loop:
	// pilot led
	8'h26: dat[15:0]=16'h78de;	// mov    r3,r6
	8'h28: dat[15:0]=16'hdbff;	// lsfti  r3,-(1)
	8'h2a: dat[15:0]=16'h93fe;	// eori   r3,~led_builtin_b
	8'h2c: dat[15:0]=16'h8b07;	// andi   r3,led_builtin
	8'h2e: dat[15:0]=16'hc2f0;	// ldbih  r2,((porout)>>8)&0xff
	8'h30: dat[15:0]=16'hba28;	// ldbil  r2,(porout)&0xff
	8'h32: dat[15:0]=16'h7bd3;	// stw    r2,r3
	8'h34: dat[15:0]=16'hba26;	// ldbil  r2,pordir
	8'h36: dat[15:0]=16'h7b9a;	// ldw    r3,r2
	8'h38: dat[15:0]=16'h8bf8;	// andi   r3,~led_builtin
	8'h3a: dat[15:0]=16'h7bd3;	// stw    r2,r3
	// ================================
	// get line from uart
	8'h3c: dat[15:0]=16'h794a;	// movfc  r1,sp
	8'h3e: dat[15:0]=16'hc7f0;	// ldbih  r7,uartctl>>8
		// gl_loop:
	// check if BRDF=1
	8'h40: dat[15:0]=16'hbf30;	// ldbil  r7,uartctl
	8'h42: dat[15:0]=16'h7b87;	// ldw    r0,r7
	8'h44: dat[15:0]=16'h7bf8;	// stw    r7,r0
	8'h46: dat[15:0]=16'h8820;	// andi   r0,uart_brdf
	8'h48: dat[15:0]=16'h1810;	// beq    gl_not_brdf
	// detected
	8'h4a: dat[15:0]=16'hbf3e;	// ldbil  r7,uartbres
	8'h4c: dat[15:0]=16'h7b87;	// ldw    r0,r7
	8'h4e: dat[15:0]=16'hbf32;	// ldbil  r7,uartbaud
	8'h50: dat[15:0]=16'h7b9f;	// ldw    r3,r7
	// margin
	8'h52: dat[15:0]=16'h78d3;	// mov    r2,r3
	8'h54: dat[15:0]=16'hdafa;	// lsfti  r2,-(6)
	// r3=abs (r3 - r0)
	8'h56: dat[15:0]=16'h7a18;	// sub    r3,r0
	8'h58: dat[15:0]=16'h3001;	// bpl    gl_plus
	8'h5a: dat[15:0]=16'h7fc3;	// neg    r3
		// gl_plus:
	8'h5c: dat[15:0]=16'h7a9a;	// cmp    r3,r2
	8'h5e: dat[15:0]=16'h2805;	// blo    gl_not_brdf
	// update uartbaud
	8'h60: dat[15:0]=16'h7bf8;	// stw    r7,r0
	// pilot led (detect=red)
	8'h62: dat[15:0]=16'hb3fd;	// ldbiu  r3,~led_builtin_r
	8'h64: dat[15:0]=16'hc2f0;	// ldbih  r2,((porout)>>8)&0xff
	8'h66: dat[15:0]=16'hba28;	// ldbil  r2,(porout)&0xff
	8'h68: dat[15:0]=16'h7bd3;	// stw    r2,r3
		// gl_not_brdf:
	// polling until RAVL=1
	8'h6a: dat[15:0]=16'hbf30;	// ldbil  r7,uartctl
	8'h6c: dat[15:0]=16'h7b87;	// ldw    r0,r7
	8'h6e: dat[15:0]=16'h8880;	// andi   r0,uart_ravl
	8'h70: dat[15:0]=16'h1fe7;	// beq    gl_loop
	// get byte
	8'h72: dat[15:0]=16'hbf36;	// ldbil  r7,uartrdat
	8'h74: dat[15:0]=16'h7b87;	// ldw    r0,r7
	8'h76: dat[15:0]=16'h7b48;	// stb    r1,r0
	8'h78: dat[15:0]=16'h9901;	// addi   r1,1
	// LF code check
	8'h7a: dat[15:0]=16'ha80a;	// cmpi   r0,chr_lf
	8'h7c: dat[15:0]=16'h1806;	// beq    gl_got
	// size check
	8'h7e: dat[15:0]=16'h7942;	// movfc  r0,sp
	8'h80: dat[15:0]=16'h98fe;	// addi   r0,max_lbuf
	8'h82: dat[15:0]=16'h7a88;	// cmp    r1,r0
	8'h84: dat[15:0]=16'h2fdd;	// blo    gl_loop
	8'h86: dat[15:0]=16'ha101;	// subi   r1,1
	8'h88: dat[15:0]=16'h0fdb;	// bra    gl_loop
	// got line
		// gl_got:
	// string terminate
	8'h8a: dat[15:0]=16'hb000;	// ldbiu  r0,0
	8'h8c: dat[15:0]=16'ha101;	// subi   r1,1
	8'h8e: dat[15:0]=16'h7b48;	// stb    r1,r0
	// ================================
	// analyze line buffer
	8'h90: dat[15:0]=16'h794a;	// movfc  r1,sp
	8'h92: dat[15:0]=16'hc700;	// ldbih  r7,((lab_xtoi)>>8)&0xff
	8'h94: dat[15:0]=16'hbfc2;	// ldbil  r7,(lab_xtoi)&0xff
		// loop2:
	// skip space
	8'h96: dat[15:0]=16'h7b01;	// ldb    r0,r1
	8'h98: dat[15:0]=16'h9901;	// addi   r1,1
	8'h9a: dat[15:0]=16'ha809;	// cmpi   r0,chr_tab
	8'h9c: dat[15:0]=16'h1ffc;	// beq    loop2
	8'h9e: dat[15:0]=16'ha820;	// cmpi   r0,chr_spc
	8'ha0: dat[15:0]=16'h1ffa;	// beq    loop2
	8'ha2: dat[15:0]=16'h78c0;	// mov    r0,r0
	8'ha4: dat[15:0]=16'h1fc0;	// beq    loop
	// ================================
	// @<address>
	8'ha6: dat[15:0]=16'ha840;	// cmpi   r0,chr_atm
	8'ha8: dat[15:0]=16'h1004;	// bne    not_atm
	// address
	8'haa: dat[15:0]=16'h7f8f;	// jalw   r7
	// set wptr(=r6)
	8'hac: dat[15:0]=16'hd801;	// lsfti  r0,(1)
	8'hae: dat[15:0]=16'h78f0;	// mov    r6,r0
	8'hb0: dat[15:0]=16'h0ff2;	// bra    loop2
		// not_atm:
	// ================================
	// <word_data>
	8'hb2: dat[15:0]=16'ha101;	// subi   r1,1
	8'hb4: dat[15:0]=16'h78d9;	// mov    r3,r1
	8'hb6: dat[15:0]=16'h7f8f;	// jalw   r7
	8'hb8: dat[15:0]=16'h7a8b;	// cmp    r1,r3
	8'hba: dat[15:0]=16'h1fb5;	// beq    loop
	// write data
	8'hbc: dat[15:0]=16'h7bf0;	// stw    r6,r0
	// update wdat(=r6)
	8'hbe: dat[15:0]=16'h9e02;	// addi   r6,2
	8'hc0: dat[15:0]=16'h0fea;	// bra    loop2
	// ================================
	// hexadecimal to integer: r0=xtoi (r1) ; disturbed r1,r2
	// ================================
		// xtoi:
	8'hc2: dat[15:0]=16'hb000;	// ldbiu  r0,0
	// r2=[r1]-'0'
	8'hc4: dat[15:0]=16'h7b11;	// ldb    r2,r1
	8'hc6: dat[15:0]=16'ha230;	// subi   r2,0a0
	8'hc8: dat[15:0]=16'h280e;	// blo    x2i_finish
	8'hca: dat[15:0]=16'haa0a;	// cmpi   r2,10
	8'hcc: dat[15:0]=16'h2808;	// blo    x2i_next
	8'hce: dat[15:0]=16'ha207;	// subi   r2,(0aa-0x20)-0a0-10
	8'hd0: dat[15:0]=16'h280a;	// blo    x2i_finish
	8'hd2: dat[15:0]=16'haa10;	// cmpi   r2,16
	8'hd4: dat[15:0]=16'h2804;	// blo    x2i_next
	8'hd6: dat[15:0]=16'ha220;	// subi   r2,0aa-(0aa-0x20)
	8'hd8: dat[15:0]=16'h2806;	// blo    x2i_finish
	8'hda: dat[15:0]=16'haa10;	// cmpi   r2,16
	8'hdc: dat[15:0]=16'h2004;	// bhs    x2i_finish
		// x2i_next:
	// r0=16*r0+r2
	8'hde: dat[15:0]=16'hd804;	// lsfti  r0,(4)
	8'he0: dat[15:0]=16'h7982;	// add    r0,r2
	// end of loop
	8'he2: dat[15:0]=16'h9901;	// addi   r1,1
	8'he4: dat[15:0]=16'h0fef;	// bra    xtoi+2
		// x2i_finish:
	8'he6: dat[15:0]=16'h0002;	// rtnw  
	default: dat[15:0]=16'hffff;
	endcase
	assign	romsiz[15:0]=16'h00e8;	// 232 bytes
endmodule
