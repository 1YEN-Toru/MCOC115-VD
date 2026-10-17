// Samarium series assembler ver.1.06
	// ================================
	//	Samarium series boot loader
	//		(c) 2026	1YEN Toru
	//
	//
	//		2026/10/17	ver.1.02
	//			upd: change variables area: iramtop to ramtop
	//				because CPU can not access to I-RAM in poly-core boot mode
	//
	//		2026/04/29	ver.1.00
	//
	// ================================
	//	register mapping
	//		r0: general data
	//		r1: read / write pointer for line buffer
	//		r2: temporary data for xtoi subroutine
	//		r3: temporary data
	//		r6: write pointer for writable rom
	//		r7: general address pointer
	// ================================
	// version
	//	jmp		main
//	16'h0000:	mem[7:0]=8'h60;	// pushf main (0x006d)
//	16'h0001:	mem[7:0]=8'h80;
//	16'h0002:	mem[7:0]=8'hed;
//	16'h0003:	mem[7:0]=8'h35;	// jmp
	//	align	2
	//	datw	prog_vers
//	16'h0004:	mem[7:0]=8'h01;	// datw prog_vers (0x0102)
//	16'h0005:	mem[7:0]=8'h02;
	// ================================
	//	r0=xtoi (r1);
	//		r1: pointer to hexadecimal string
	//	disturbed: r1,r2
	//		r1: pointer to hexadecimal string
	//		r2: temporary data
	//	return: hexadecimal to integer
	//		r0: xtoi (r1)
	//		r1: pointer to the next character of hexadecimal string
	// ================================
	//xtoi: (0x0006)
	// initialize
	//	stw		0,r0
//	16'h0006:	mem[7:0]=8'h60;	// psei 0 // push 0
//	16'h0007:	mem[7:0]=8'h61;	// psei 1 // push r0 (0x5000)
//	16'h0008:	mem[7:0]=8'ha0;	// sldi 0x20
//	16'h0009:	mem[7:0]=8'h80;	// sldi 0x00
//	16'h000a:	mem[7:0]=8'h59;	// stw
	//	ldw		r1
//	16'h000b:	mem[7:0]=8'h61;	// psei 1 // push r1 (0x5002)
//	16'h000c:	mem[7:0]=8'ha0;	// sldi 0x20
//	16'h000d:	mem[7:0]=8'h82;	// sldi 0x02
//	16'h000e:	mem[7:0]=8'h39;	// ldw
	// loop
	//_xtoi_loop: (0x000f)
	// r1-'0'
	//	dupl
//	16'h000f:	mem[7:0]=8'h3c;	// dupl
	//	ldb
//	16'h0010:	mem[7:0]=8'h38;	// ldb
	//	sub		0a0
//	16'h0011:	mem[7:0]=8'h60;	// psei 0 // push 0a0
//	16'h0012:	mem[7:0]=8'hb0;	// sldi 0x30
//	16'h0013:	mem[7:0]=8'h44;	// sub
	// (r1<'0')?
	//	dupl
//	16'h0014:	mem[7:0]=8'h3c;	// dupl
	//	and		SGN_BIT
//	16'h0015:	mem[7:0]=8'h72;	// psei SGN_BIT // push SGN_BIT
//	16'h0016:	mem[7:0]=8'h40;	// and
	//	cjmp	_xtoi_break
//	16'h0017:	mem[7:0]=8'h60;	// pushf _xtoi_break (0x0067)
//	16'h0018:	mem[7:0]=8'h80;
//	16'h0019:	mem[7:0]=8'he7;
//	16'h001a:	mem[7:0]=8'h54;	// cjmp
	// (r1<='9')?
	//	dupl
//	16'h001b:	mem[7:0]=8'h3c;	// dupl
	//	sub		(0a9+1)-0a0
//	16'h001c:	mem[7:0]=8'h60;	// psei 0 // push (0a9+1)-0a0 (0x000a)
//	16'h001d:	mem[7:0]=8'h8a;	// sldi 0x0a
//	16'h001e:	mem[7:0]=8'h44;	// sub
	//	and		SGN_BIT
//	16'h001f:	mem[7:0]=8'h72;	// psei SGN_BIT // push SGN_BIT
//	16'h0020:	mem[7:0]=8'h40;	// and
	//	cjmp	_xtoi_next
//	16'h0021:	mem[7:0]=8'h60;	// pushf _xtoi_next (0x0055)
//	16'h0022:	mem[7:0]=8'h80;
//	16'h0023:	mem[7:0]=8'hd5;
//	16'h0024:	mem[7:0]=8'h54;	// cjmp
	// (r1<'A')?
	//	sub		0aA-0a0
//	16'h0025:	mem[7:0]=8'h60;	// psei 0 // push 0aA-0a0 (0x0011)
//	16'h0026:	mem[7:0]=8'h91;	// sldi 0x11
//	16'h0027:	mem[7:0]=8'h44;	// sub
	//	dupl
//	16'h0028:	mem[7:0]=8'h3c;	// dupl
	//	and		SGN_BIT
//	16'h0029:	mem[7:0]=8'h72;	// psei SGN_BIT // push SGN_BIT
//	16'h002a:	mem[7:0]=8'h40;	// and
	//	cjmp	_xtoi_break
//	16'h002b:	mem[7:0]=8'h60;	// pushf _xtoi_break (0x0067)
//	16'h002c:	mem[7:0]=8'h80;
//	16'h002d:	mem[7:0]=8'he7;
//	16'h002e:	mem[7:0]=8'h54;	// cjmp
	// (r1<='F')?
	//	dupl
//	16'h002f:	mem[7:0]=8'h3c;	// dupl
	//	add		0x0a
//	16'h0030:	mem[7:0]=8'h60;	// psei 0 // push 0x0a
//	16'h0031:	mem[7:0]=8'h8a;	// sldi 0x0a
//	16'h0032:	mem[7:0]=8'h43;	// add
	//	swap
//	16'h0033:	mem[7:0]=8'h5c;	// swap
	//	sub		(0aF+1)-0aA
//	16'h0034:	mem[7:0]=8'h60;	// psei 0 // push (0aF+1)-0aA (0x0006)
//	16'h0035:	mem[7:0]=8'h86;	// sldi 0x06
//	16'h0036:	mem[7:0]=8'h44;	// sub
	//	and		SGN_BIT
//	16'h0037:	mem[7:0]=8'h72;	// psei SGN_BIT // push SGN_BIT
//	16'h0038:	mem[7:0]=8'h40;	// and
	//	cjmp	_xtoi_next
//	16'h0039:	mem[7:0]=8'h60;	// pushf _xtoi_next (0x0055)
//	16'h003a:	mem[7:0]=8'h80;
//	16'h003b:	mem[7:0]=8'hd5;
//	16'h003c:	mem[7:0]=8'h54;	// cjmp
	// (r1<'a')?
	//	sub		0aa-0aA+0x0a
//	16'h003d:	mem[7:0]=8'h60;	// psei 0 // push 0aa-0aA+0x0a (0x002a)
//	16'h003e:	mem[7:0]=8'haa;	// sldi 0x2a
//	16'h003f:	mem[7:0]=8'h44;	// sub
	//	dupl
//	16'h0040:	mem[7:0]=8'h3c;	// dupl
	//	and		SGN_BIT
//	16'h0041:	mem[7:0]=8'h72;	// psei SGN_BIT // push SGN_BIT
//	16'h0042:	mem[7:0]=8'h40;	// and
	//	cjmp	_xtoi_break
//	16'h0043:	mem[7:0]=8'h60;	// pushf _xtoi_break (0x0067)
//	16'h0044:	mem[7:0]=8'h80;
//	16'h0045:	mem[7:0]=8'he7;
//	16'h0046:	mem[7:0]=8'h54;	// cjmp
	// (r1<='f')?
	//	dupl
//	16'h0047:	mem[7:0]=8'h3c;	// dupl
	//	add		0x0a
//	16'h0048:	mem[7:0]=8'h60;	// psei 0 // push 0x0a
//	16'h0049:	mem[7:0]=8'h8a;	// sldi 0x0a
//	16'h004a:	mem[7:0]=8'h43;	// add
	//	swap
//	16'h004b:	mem[7:0]=8'h5c;	// swap
	//	sub		(0aF+1)-0aA
//	16'h004c:	mem[7:0]=8'h60;	// psei 0 // push (0aF+1)-0aA (0x0006)
//	16'h004d:	mem[7:0]=8'h86;	// sldi 0x06
//	16'h004e:	mem[7:0]=8'h44;	// sub
	//	and		SGN_BIT
//	16'h004f:	mem[7:0]=8'h72;	// psei SGN_BIT // push SGN_BIT
//	16'h0050:	mem[7:0]=8'h40;	// and
	//	njmp	_xtoi_break
//	16'h0051:	mem[7:0]=8'h60;	// pushf _xtoi_break (0x0067)
//	16'h0052:	mem[7:0]=8'h80;
//	16'h0053:	mem[7:0]=8'he7;
//	16'h0054:	mem[7:0]=8'h55;	// njmp
	//_xtoi_next: (0x0055)
	// hexadecimal digit
	// r0=16*r0+r2
	//	lsl		[r0]
//	16'h0055:	mem[7:0]=8'h61;	// psei 1 // ldw r0 (0x5000)
//	16'h0056:	mem[7:0]=8'ha0;	// sldi 0x20
//	16'h0057:	mem[7:0]=8'h80;	// sldi 0x00
//	16'h0058:	mem[7:0]=8'h39;	// ldw
//	16'h0059:	mem[7:0]=8'h22;	// lsl
	//	lsl
//	16'h005a:	mem[7:0]=8'h22;	// lsl
	//	lsl
//	16'h005b:	mem[7:0]=8'h22;	// lsl
	//	lsl
//	16'h005c:	mem[7:0]=8'h22;	// lsl
	//	add
//	16'h005d:	mem[7:0]=8'h43;	// add
	//	stw		r0
//	16'h005e:	mem[7:0]=8'h61;	// psei 1 // push r0 (0x5000)
//	16'h005f:	mem[7:0]=8'ha0;	// sldi 0x20
//	16'h0060:	mem[7:0]=8'h80;	// sldi 0x00
//	16'h0061:	mem[7:0]=8'h59;	// stw
	// end of loop
	//	add		1
//	16'h0062:	mem[7:0]=8'h61;	// psei 1 // push 1
//	16'h0063:	mem[7:0]=8'h43;	// add
	//	jmp		_xtoi_loop
//	16'h0064:	mem[7:0]=8'h60;	// psei 0 // push _xtoi_loop (0x000f)
//	16'h0065:	mem[7:0]=8'h8f;	// sldi 0x0f
//	16'h0066:	mem[7:0]=8'h35;	// jmp
	//_xtoi_break: (0x0067)
	// end of subroutine
	// discard r1
	//	pop
//	16'h0067:	mem[7:0]=8'h3d;	// pop
	// store r1
	//	stw		r1
//	16'h0068:	mem[7:0]=8'h61;	// psei 1 // push r1 (0x5002)
//	16'h0069:	mem[7:0]=8'ha0;	// sldi 0x20
//	16'h006a:	mem[7:0]=8'h82;	// sldi 0x02
//	16'h006b:	mem[7:0]=8'h59;	// stw
	//	#rtn
	//	jmp
//	16'h006c:	mem[7:0]=8'h35;	// jmp
	// ================================
	// main
	//main: (0x006d)
	// ================================
	// initialize
	// UART8N1 setting: RXE, baud rate
	//	stw		uart_baud,uartbaud
//	16'h006d:	mem[7:0]=8'h60;	// psei 0 // push uart_baud (0x09c3)
//	16'h006e:	mem[7:0]=8'h93;	// sldi 0x13
//	16'h006f:	mem[7:0]=8'hc3;	// sldi 0x43
//	16'h0070:	mem[7:0]=8'h63;	// psei 3 // push uartbaud (0xf032)
//	16'h0071:	mem[7:0]=8'he0;	// sldi 0x60
//	16'h0072:	mem[7:0]=8'hb2;	// sldi 0x32
//	16'h0073:	mem[7:0]=8'h59;	// stw
	//	stw		uart_rxe,uartctl
//	16'h0074:	mem[7:0]=8'h62;	// psei 2 // push uart_rxe (0x0002)
//	16'h0075:	mem[7:0]=8'h63;	// psei 3 // push uartctl (0xf030)
//	16'h0076:	mem[7:0]=8'he0;	// sldi 0x60
//	16'h0077:	mem[7:0]=8'hb0;	// sldi 0x30
//	16'h0078:	mem[7:0]=8'h59;	// stw
	// PORT8I8O setting: output led_builtin
	//	and		[pordir],~led_builtin
//	16'h0079:	mem[7:0]=8'h63;	// psei 3 // ldw pordir (0xf026)
//	16'h007a:	mem[7:0]=8'he0;	// sldi 0x60
//	16'h007b:	mem[7:0]=8'ha6;	// sldi 0x26
//	16'h007c:	mem[7:0]=8'h39;	// ldw
//	16'h007d:	mem[7:0]=8'h63;	// pushf ~led_builtin (0xfff8)
//	16'h007e:	mem[7:0]=8'hff;
//	16'h007f:	mem[7:0]=8'hf8;
//	16'h0080:	mem[7:0]=8'h40;	// and
	//	stw		pordir
//	16'h0081:	mem[7:0]=8'h63;	// psei 3 // push pordir (0xf026)
//	16'h0082:	mem[7:0]=8'he0;	// sldi 0x60
//	16'h0083:	mem[7:0]=8'ha6;	// sldi 0x26
//	16'h0084:	mem[7:0]=8'h59;	// stw
	// ================================
	// rom data download
	//	stw		0,r6
//	16'h0085:	mem[7:0]=8'h60;	// psei 0 // push 0
//	16'h0086:	mem[7:0]=8'h61;	// psei 1 // push r6 (0x500c)
//	16'h0087:	mem[7:0]=8'ha0;	// sldi 0x20
//	16'h0088:	mem[7:0]=8'h8c;	// sldi 0x0c
//	16'h0089:	mem[7:0]=8'h59;	// stw
	// loop
	//loop: (0x008a)
	// pilot led
	//	lsr		[r6]
//	16'h008a:	mem[7:0]=8'h61;	// psei 1 // ldw r6 (0x500c)
//	16'h008b:	mem[7:0]=8'ha0;	// sldi 0x20
//	16'h008c:	mem[7:0]=8'h8c;	// sldi 0x0c
//	16'h008d:	mem[7:0]=8'h39;	// ldw
//	16'h008e:	mem[7:0]=8'h23;	// lsr
	//	eor		~led_builtin_b
//	16'h008f:	mem[7:0]=8'h63;	// pushf ~led_builtin_b (0xfffe)
//	16'h0090:	mem[7:0]=8'hff;
//	16'h0091:	mem[7:0]=8'hfe;
//	16'h0092:	mem[7:0]=8'h42;	// eor
	//	and		led_builtin
//	16'h0093:	mem[7:0]=8'h60;	// psei 0 // push led_builtin (0x0007)
//	16'h0094:	mem[7:0]=8'h87;	// sldi 0x07
//	16'h0095:	mem[7:0]=8'h40;	// and
	//	stw		porout
//	16'h0096:	mem[7:0]=8'h63;	// psei 3 // push porout (0xf028)
//	16'h0097:	mem[7:0]=8'he0;	// sldi 0x60
//	16'h0098:	mem[7:0]=8'ha8;	// sldi 0x28
//	16'h0099:	mem[7:0]=8'h59;	// stw
	// ================================
	// get line from uart
	//	stw		lbuf,r1
//	16'h009a:	mem[7:0]=8'h61;	// psei 1 // push lbuf (0x5010)
//	16'h009b:	mem[7:0]=8'ha0;	// sldi 0x20
//	16'h009c:	mem[7:0]=8'h90;	// sldi 0x10
//	16'h009d:	mem[7:0]=8'h61;	// psei 1 // push r1 (0x5002)
//	16'h009e:	mem[7:0]=8'ha0;	// sldi 0x20
//	16'h009f:	mem[7:0]=8'h82;	// sldi 0x02
//	16'h00a0:	mem[7:0]=8'h59;	// stw
	// get line loop
	//gl_loop: (0x00a1)
	// check if BRDF=1
	//	dupl	[uartctl]
//	16'h00a1:	mem[7:0]=8'h63;	// psei 3 // ldw uartctl (0xf030)
//	16'h00a2:	mem[7:0]=8'he0;	// sldi 0x60
//	16'h00a3:	mem[7:0]=8'hb0;	// sldi 0x30
//	16'h00a4:	mem[7:0]=8'h39;	// ldw
//	16'h00a5:	mem[7:0]=8'h3c;	// dupl
	//	stw		uartctl
//	16'h00a6:	mem[7:0]=8'h63;	// psei 3 // push uartctl (0xf030)
//	16'h00a7:	mem[7:0]=8'he0;	// sldi 0x60
//	16'h00a8:	mem[7:0]=8'hb0;	// sldi 0x30
//	16'h00a9:	mem[7:0]=8'h59;	// stw
	//	and		uart_brdf
//	16'h00aa:	mem[7:0]=8'h60;	// psei 0 // push uart_brdf (0x0020)
//	16'h00ab:	mem[7:0]=8'ha0;	// sldi 0x20
//	16'h00ac:	mem[7:0]=8'h40;	// and
	//	njmp	gl_not_brdf
//	16'h00ad:	mem[7:0]=8'h60;	// pushf gl_not_brdf (0x00f6)
//	16'h00ae:	mem[7:0]=8'h81;
//	16'h00af:	mem[7:0]=8'hf6;
//	16'h00b0:	mem[7:0]=8'h55;	// njmp
	// detected
	//	stw		[uartbres],r0
//	16'h00b1:	mem[7:0]=8'h63;	// psei 3 // ldw uartbres (0xf03e)
//	16'h00b2:	mem[7:0]=8'he0;	// sldi 0x60
//	16'h00b3:	mem[7:0]=8'hbe;	// sldi 0x3e
//	16'h00b4:	mem[7:0]=8'h39;	// ldw
//	16'h00b5:	mem[7:0]=8'h61;	// psei 1 // push r0 (0x5000)
//	16'h00b6:	mem[7:0]=8'ha0;	// sldi 0x20
//	16'h00b7:	mem[7:0]=8'h80;	// sldi 0x00
//	16'h00b8:	mem[7:0]=8'h59;	// stw
	//	dupl	[uartbaud]
//	16'h00b9:	mem[7:0]=8'h63;	// psei 3 // ldw uartbaud (0xf032)
//	16'h00ba:	mem[7:0]=8'he0;	// sldi 0x60
//	16'h00bb:	mem[7:0]=8'hb2;	// sldi 0x32
//	16'h00bc:	mem[7:0]=8'h39;	// ldw
//	16'h00bd:	mem[7:0]=8'h3c;	// dupl
	//	stw		r3
//	16'h00be:	mem[7:0]=8'h61;	// psei 1 // push r3 (0x5006)
//	16'h00bf:	mem[7:0]=8'ha0;	// sldi 0x20
//	16'h00c0:	mem[7:0]=8'h86;	// sldi 0x06
//	16'h00c1:	mem[7:0]=8'h59;	// stw
	// margin
	//	lsr
//	16'h00c2:	mem[7:0]=8'h23;	// lsr
	//	lsr
//	16'h00c3:	mem[7:0]=8'h23;	// lsr
	//	lsr
//	16'h00c4:	mem[7:0]=8'h23;	// lsr
	//	lsr
//	16'h00c5:	mem[7:0]=8'h23;	// lsr
	//	lsr
//	16'h00c6:	mem[7:0]=8'h23;	// lsr
	//	lsr
//	16'h00c7:	mem[7:0]=8'h23;	// lsr
	//	stw		r2
//	16'h00c8:	mem[7:0]=8'h61;	// psei 1 // push r2 (0x5004)
//	16'h00c9:	mem[7:0]=8'ha0;	// sldi 0x20
//	16'h00ca:	mem[7:0]=8'h84;	// sldi 0x04
//	16'h00cb:	mem[7:0]=8'h59;	// stw
	// r3=abs (r3 - r0)
	//	sub		[r3],[r0]
//	16'h00cc:	mem[7:0]=8'h61;	// psei 1 // ldw r3 (0x5006)
//	16'h00cd:	mem[7:0]=8'ha0;	// sldi 0x20
//	16'h00ce:	mem[7:0]=8'h86;	// sldi 0x06
//	16'h00cf:	mem[7:0]=8'h39;	// ldw
//	16'h00d0:	mem[7:0]=8'h61;	// psei 1 // ldw r0 (0x5000)
//	16'h00d1:	mem[7:0]=8'ha0;	// sldi 0x20
//	16'h00d2:	mem[7:0]=8'h80;	// sldi 0x00
//	16'h00d3:	mem[7:0]=8'h39;	// ldw
//	16'h00d4:	mem[7:0]=8'h44;	// sub
	//	dupl
//	16'h00d5:	mem[7:0]=8'h3c;	// dupl
	//	and		SGN_BIT
//	16'h00d6:	mem[7:0]=8'h72;	// psei SGN_BIT // push SGN_BIT
//	16'h00d7:	mem[7:0]=8'h40;	// and
	//	njmp	gl_plus
//	16'h00d8:	mem[7:0]=8'h60;	// pushf gl_plus (0x00dd)
//	16'h00d9:	mem[7:0]=8'h81;
//	16'h00da:	mem[7:0]=8'hdd;
//	16'h00db:	mem[7:0]=8'h55;	// njmp
	//	neg
//	16'h00dc:	mem[7:0]=8'h25;	// neg
	//gl_plus: (0x00dd)
	// (r3<r2)?
	//	sub		[r2]
//	16'h00dd:	mem[7:0]=8'h61;	// psei 1 // ldw r2 (0x5004)
//	16'h00de:	mem[7:0]=8'ha0;	// sldi 0x20
//	16'h00df:	mem[7:0]=8'h84;	// sldi 0x04
//	16'h00e0:	mem[7:0]=8'h39;	// ldw
//	16'h00e1:	mem[7:0]=8'h44;	// sub
	//	and		SGN_BIT
//	16'h00e2:	mem[7:0]=8'h72;	// psei SGN_BIT // push SGN_BIT
//	16'h00e3:	mem[7:0]=8'h40;	// and
	//	cjmp	gl_not_brdf
//	16'h00e4:	mem[7:0]=8'h60;	// pushf gl_not_brdf (0x00f6)
//	16'h00e5:	mem[7:0]=8'h81;
//	16'h00e6:	mem[7:0]=8'hf6;
//	16'h00e7:	mem[7:0]=8'h54;	// cjmp
	// update uartbaud
	//	stw		[r0],uartbaud
//	16'h00e8:	mem[7:0]=8'h61;	// psei 1 // ldw r0 (0x5000)
//	16'h00e9:	mem[7:0]=8'ha0;	// sldi 0x20
//	16'h00ea:	mem[7:0]=8'h80;	// sldi 0x00
//	16'h00eb:	mem[7:0]=8'h39;	// ldw
//	16'h00ec:	mem[7:0]=8'h63;	// psei 3 // push uartbaud (0xf032)
//	16'h00ed:	mem[7:0]=8'he0;	// sldi 0x60
//	16'h00ee:	mem[7:0]=8'hb2;	// sldi 0x32
//	16'h00ef:	mem[7:0]=8'h59;	// stw
	// pilot led (detect=red)
	//	stw		(~led_builtin_r)&led_builtin,porout
//	16'h00f0:	mem[7:0]=8'h60;	// psei 0 // push (~led_builtin_r)&led_builtin (0x0005)
//	16'h00f1:	mem[7:0]=8'h85;	// sldi 0x05
//	16'h00f2:	mem[7:0]=8'h63;	// psei 3 // push porout (0xf028)
//	16'h00f3:	mem[7:0]=8'he0;	// sldi 0x60
//	16'h00f4:	mem[7:0]=8'ha8;	// sldi 0x28
//	16'h00f5:	mem[7:0]=8'h59;	// stw
	//gl_not_brdf: (0x00f6)
	// polling until RAVL=1
	//	and		[uartctl],uart_ravl
//	16'h00f6:	mem[7:0]=8'h63;	// psei 3 // ldw uartctl (0xf030)
//	16'h00f7:	mem[7:0]=8'he0;	// sldi 0x60
//	16'h00f8:	mem[7:0]=8'hb0;	// sldi 0x30
//	16'h00f9:	mem[7:0]=8'h39;	// ldw
//	16'h00fa:	mem[7:0]=8'h74;	// psei BYTE_SG // push uart_ravl (0x0080)
//	16'h00fb:	mem[7:0]=8'h40;	// and
	//	njmp	gl_loop
//	16'h00fc:	mem[7:0]=8'h61;	// psei 1 // push gl_loop (0x00a1)
//	16'h00fd:	mem[7:0]=8'ha1;	// sldi 0x21
//	16'h00fe:	mem[7:0]=8'h55;	// njmp
	// get byte
	//	dupl	[uartrdat]
//	16'h00ff:	mem[7:0]=8'h63;	// psei 3 // ldw uartrdat (0xf036)
//	16'h0100:	mem[7:0]=8'he0;	// sldi 0x60
//	16'h0101:	mem[7:0]=8'hb6;	// sldi 0x36
//	16'h0102:	mem[7:0]=8'h39;	// ldw
//	16'h0103:	mem[7:0]=8'h3c;	// dupl
	//	stw		r0
//	16'h0104:	mem[7:0]=8'h61;	// psei 1 // push r0 (0x5000)
//	16'h0105:	mem[7:0]=8'ha0;	// sldi 0x20
//	16'h0106:	mem[7:0]=8'h80;	// sldi 0x00
//	16'h0107:	mem[7:0]=8'h59;	// stw
	//	dupl	[r1]
//	16'h0108:	mem[7:0]=8'h61;	// psei 1 // ldw r1 (0x5002)
//	16'h0109:	mem[7:0]=8'ha0;	// sldi 0x20
//	16'h010a:	mem[7:0]=8'h82;	// sldi 0x02
//	16'h010b:	mem[7:0]=8'h39;	// ldw
//	16'h010c:	mem[7:0]=8'h3c;	// dupl
	//	add		1
//	16'h010d:	mem[7:0]=8'h61;	// psei 1 // push 1
//	16'h010e:	mem[7:0]=8'h43;	// add
	//	stw		r1
//	16'h010f:	mem[7:0]=8'h61;	// psei 1 // push r1 (0x5002)
//	16'h0110:	mem[7:0]=8'ha0;	// sldi 0x20
//	16'h0111:	mem[7:0]=8'h82;	// sldi 0x02
//	16'h0112:	mem[7:0]=8'h59;	// stw
	//	stb
//	16'h0113:	mem[7:0]=8'h58;	// stb
	// LF code check
	//	sub		[r0],asc_lf
//	16'h0114:	mem[7:0]=8'h61;	// psei 1 // ldw r0 (0x5000)
//	16'h0115:	mem[7:0]=8'ha0;	// sldi 0x20
//	16'h0116:	mem[7:0]=8'h80;	// sldi 0x00
//	16'h0117:	mem[7:0]=8'h39;	// ldw
//	16'h0118:	mem[7:0]=8'h60;	// psei 0 // push asc_lf (0x000a)
//	16'h0119:	mem[7:0]=8'h8a;	// sldi 0x0a
//	16'h011a:	mem[7:0]=8'h44;	// sub
	//	njmp	gl_break
//	16'h011b:	mem[7:0]=8'h60;	// pushf gl_break (0x0139)
//	16'h011c:	mem[7:0]=8'h82;
//	16'h011d:	mem[7:0]=8'hb9;
//	16'h011e:	mem[7:0]=8'h55;	// njmp
	// size check
	//	sub		[r1],lbuf+max_lbuf
//	16'h011f:	mem[7:0]=8'h61;	// psei 1 // ldw r1 (0x5002)
//	16'h0120:	mem[7:0]=8'ha0;	// sldi 0x20
//	16'h0121:	mem[7:0]=8'h82;	// sldi 0x02
//	16'h0122:	mem[7:0]=8'h39;	// ldw
//	16'h0123:	mem[7:0]=8'h61;	// psei 1 // push lbuf+max_lbuf (0x5024)
//	16'h0124:	mem[7:0]=8'ha0;	// sldi 0x20
//	16'h0125:	mem[7:0]=8'ha4;	// sldi 0x24
//	16'h0126:	mem[7:0]=8'h44;	// sub
	//	and		SGN_BIT
//	16'h0127:	mem[7:0]=8'h72;	// psei SGN_BIT // push SGN_BIT
//	16'h0128:	mem[7:0]=8'h40;	// and
	//	cjmp	gl_loop
//	16'h0129:	mem[7:0]=8'h61;	// psei 1 // push gl_loop (0x00a1)
//	16'h012a:	mem[7:0]=8'ha1;	// sldi 0x21
//	16'h012b:	mem[7:0]=8'h54;	// cjmp
	// end of loop
	//	sub		[r1],1
//	16'h012c:	mem[7:0]=8'h61;	// psei 1 // ldw r1 (0x5002)
//	16'h012d:	mem[7:0]=8'ha0;	// sldi 0x20
//	16'h012e:	mem[7:0]=8'h82;	// sldi 0x02
//	16'h012f:	mem[7:0]=8'h39;	// ldw
//	16'h0130:	mem[7:0]=8'h61;	// psei 1 // push 1
//	16'h0131:	mem[7:0]=8'h44;	// sub
	//	stw		r1
//	16'h0132:	mem[7:0]=8'h61;	// psei 1 // push r1 (0x5002)
//	16'h0133:	mem[7:0]=8'ha0;	// sldi 0x20
//	16'h0134:	mem[7:0]=8'h82;	// sldi 0x02
//	16'h0135:	mem[7:0]=8'h59;	// stw
	//	jmp		gl_loop
//	16'h0136:	mem[7:0]=8'h61;	// psei 1 // push gl_loop (0x00a1)
//	16'h0137:	mem[7:0]=8'ha1;	// sldi 0x21
//	16'h0138:	mem[7:0]=8'h35;	// jmp
	// got line
	//gl_break: (0x0139)
	// string terminate
	//	sub		[r1],1
//	16'h0139:	mem[7:0]=8'h61;	// psei 1 // ldw r1 (0x5002)
//	16'h013a:	mem[7:0]=8'ha0;	// sldi 0x20
//	16'h013b:	mem[7:0]=8'h82;	// sldi 0x02
//	16'h013c:	mem[7:0]=8'h39;	// ldw
//	16'h013d:	mem[7:0]=8'h61;	// psei 1 // push 1
//	16'h013e:	mem[7:0]=8'h44;	// sub
	//	dupl
//	16'h013f:	mem[7:0]=8'h3c;	// dupl
	//	stw		r1
//	16'h0140:	mem[7:0]=8'h61;	// psei 1 // push r1 (0x5002)
//	16'h0141:	mem[7:0]=8'ha0;	// sldi 0x20
//	16'h0142:	mem[7:0]=8'h82;	// sldi 0x02
//	16'h0143:	mem[7:0]=8'h59;	// stw
	//	swap	0
//	16'h0144:	mem[7:0]=8'h60;	// psei 0 // push 0
//	16'h0145:	mem[7:0]=8'h5c;	// swap
	//	stb
//	16'h0146:	mem[7:0]=8'h58;	// stb
	// ================================
	// analyze line buffer
	//	stw		lbuf,r1
//	16'h0147:	mem[7:0]=8'h61;	// psei 1 // push lbuf (0x5010)
//	16'h0148:	mem[7:0]=8'ha0;	// sldi 0x20
//	16'h0149:	mem[7:0]=8'h90;	// sldi 0x10
//	16'h014a:	mem[7:0]=8'h61;	// psei 1 // push r1 (0x5002)
//	16'h014b:	mem[7:0]=8'ha0;	// sldi 0x20
//	16'h014c:	mem[7:0]=8'h82;	// sldi 0x02
//	16'h014d:	mem[7:0]=8'h59;	// stw
	// skip space
	//skp_spc: (0x014e)
	//	dupl	[r1]
//	16'h014e:	mem[7:0]=8'h61;	// psei 1 // ldw r1 (0x5002)
//	16'h014f:	mem[7:0]=8'ha0;	// sldi 0x20
//	16'h0150:	mem[7:0]=8'h82;	// sldi 0x02
//	16'h0151:	mem[7:0]=8'h39;	// ldw
//	16'h0152:	mem[7:0]=8'h3c;	// dupl
	//	ldb
//	16'h0153:	mem[7:0]=8'h38;	// ldb
	//	stw		r0
//	16'h0154:	mem[7:0]=8'h61;	// psei 1 // push r0 (0x5000)
//	16'h0155:	mem[7:0]=8'ha0;	// sldi 0x20
//	16'h0156:	mem[7:0]=8'h80;	// sldi 0x00
//	16'h0157:	mem[7:0]=8'h59;	// stw
	//	add		1
//	16'h0158:	mem[7:0]=8'h61;	// psei 1 // push 1
//	16'h0159:	mem[7:0]=8'h43;	// add
	//	stw		r1
//	16'h015a:	mem[7:0]=8'h61;	// psei 1 // push r1 (0x5002)
//	16'h015b:	mem[7:0]=8'ha0;	// sldi 0x20
//	16'h015c:	mem[7:0]=8'h82;	// sldi 0x02
//	16'h015d:	mem[7:0]=8'h59;	// stw
	// (r0='\t')?
	//	sub		[r0],asc_tab
//	16'h015e:	mem[7:0]=8'h61;	// psei 1 // ldw r0 (0x5000)
//	16'h015f:	mem[7:0]=8'ha0;	// sldi 0x20
//	16'h0160:	mem[7:0]=8'h80;	// sldi 0x00
//	16'h0161:	mem[7:0]=8'h39;	// ldw
//	16'h0162:	mem[7:0]=8'h60;	// psei 0 // push asc_tab (0x0009)
//	16'h0163:	mem[7:0]=8'h89;	// sldi 0x09
//	16'h0164:	mem[7:0]=8'h44;	// sub
	//	njmp	skp_spc
//	16'h0165:	mem[7:0]=8'h62;	// psei 2 // push skp_spc (0x014e)
//	16'h0166:	mem[7:0]=8'hce;	// sldi 0x4e
//	16'h0167:	mem[7:0]=8'h55;	// njmp
	// (r0=' ')?
	//	sub		[r0],asc_spc
//	16'h0168:	mem[7:0]=8'h61;	// psei 1 // ldw r0 (0x5000)
//	16'h0169:	mem[7:0]=8'ha0;	// sldi 0x20
//	16'h016a:	mem[7:0]=8'h80;	// sldi 0x00
//	16'h016b:	mem[7:0]=8'h39;	// ldw
//	16'h016c:	mem[7:0]=8'h60;	// psei 0 // push asc_spc (0x0020)
//	16'h016d:	mem[7:0]=8'ha0;	// sldi 0x20
//	16'h016e:	mem[7:0]=8'h44;	// sub
	//	njmp	skp_spc
//	16'h016f:	mem[7:0]=8'h62;	// psei 2 // push skp_spc (0x014e)
//	16'h0170:	mem[7:0]=8'hce;	// sldi 0x4e
//	16'h0171:	mem[7:0]=8'h55;	// njmp
	// (r0='\0')?
	//	njmp	[r0],loop
//	16'h0172:	mem[7:0]=8'h61;	// psei 1 // ldw r0 (0x5000)
//	16'h0173:	mem[7:0]=8'ha0;	// sldi 0x20
//	16'h0174:	mem[7:0]=8'h80;	// sldi 0x00
//	16'h0175:	mem[7:0]=8'h39;	// ldw
//	16'h0176:	mem[7:0]=8'h61;	// psei 1 // push loop (0x008a)
//	16'h0177:	mem[7:0]=8'h8a;	// sldi 0x0a
//	16'h0178:	mem[7:0]=8'h55;	// njmp
	// ================================
	// @<address>
	//	sub		[r0],asc_atm
//	16'h0179:	mem[7:0]=8'h61;	// psei 1 // ldw r0 (0x5000)
//	16'h017a:	mem[7:0]=8'ha0;	// sldi 0x20
//	16'h017b:	mem[7:0]=8'h80;	// sldi 0x00
//	16'h017c:	mem[7:0]=8'h39;	// ldw
//	16'h017d:	mem[7:0]=8'h60;	// psei 0 // push asc_atm (0x0040)
//	16'h017e:	mem[7:0]=8'hc0;	// sldi 0x40
//	16'h017f:	mem[7:0]=8'h44;	// sub
	//	cjmp	not_atm
//	16'h0180:	mem[7:0]=8'h60;	// pushf not_atm (0x0193)
//	16'h0181:	mem[7:0]=8'h83;
//	16'h0182:	mem[7:0]=8'h93;
//	16'h0183:	mem[7:0]=8'h54;	// cjmp
	// address
	//	#xtoi*
	//	jal	xtoi
//	16'h0184:	mem[7:0]=8'h60;	// psei 0 // push xtoi (0x0006)
//	16'h0185:	mem[7:0]=8'h86;	// sldi 0x06
//	16'h0186:	mem[7:0]=8'h34;	// jal
	// set wptr(=r6)
	//	lsl		[r0]
//	16'h0187:	mem[7:0]=8'h61;	// psei 1 // ldw r0 (0x5000)
//	16'h0188:	mem[7:0]=8'ha0;	// sldi 0x20
//	16'h0189:	mem[7:0]=8'h80;	// sldi 0x00
//	16'h018a:	mem[7:0]=8'h39;	// ldw
//	16'h018b:	mem[7:0]=8'h22;	// lsl
	//	stw		r6
//	16'h018c:	mem[7:0]=8'h61;	// psei 1 // push r6 (0x500c)
//	16'h018d:	mem[7:0]=8'ha0;	// sldi 0x20
//	16'h018e:	mem[7:0]=8'h8c;	// sldi 0x0c
//	16'h018f:	mem[7:0]=8'h59;	// stw
	//	jmp		skp_spc
//	16'h0190:	mem[7:0]=8'h62;	// psei 2 // push skp_spc (0x014e)
//	16'h0191:	mem[7:0]=8'hce;	// sldi 0x4e
//	16'h0192:	mem[7:0]=8'h35;	// jmp
	//not_atm: (0x0193)
	// ================================
	// <word_data>
	//	sub		[r1],1
//	16'h0193:	mem[7:0]=8'h61;	// psei 1 // ldw r1 (0x5002)
//	16'h0194:	mem[7:0]=8'ha0;	// sldi 0x20
//	16'h0195:	mem[7:0]=8'h82;	// sldi 0x02
//	16'h0196:	mem[7:0]=8'h39;	// ldw
//	16'h0197:	mem[7:0]=8'h61;	// psei 1 // push 1
//	16'h0198:	mem[7:0]=8'h44;	// sub
	//	dupl
//	16'h0199:	mem[7:0]=8'h3c;	// dupl
	//	stw		r1
//	16'h019a:	mem[7:0]=8'h61;	// psei 1 // push r1 (0x5002)
//	16'h019b:	mem[7:0]=8'ha0;	// sldi 0x20
//	16'h019c:	mem[7:0]=8'h82;	// sldi 0x02
//	16'h019d:	mem[7:0]=8'h59;	// stw
	//	#xtoi*
	//	jal	xtoi
//	16'h019e:	mem[7:0]=8'h60;	// psei 0 // push xtoi (0x0006)
//	16'h019f:	mem[7:0]=8'h86;	// sldi 0x06
//	16'h01a0:	mem[7:0]=8'h34;	// jal
	//	sub		[r1]
//	16'h01a1:	mem[7:0]=8'h61;	// psei 1 // ldw r1 (0x5002)
//	16'h01a2:	mem[7:0]=8'ha0;	// sldi 0x20
//	16'h01a3:	mem[7:0]=8'h82;	// sldi 0x02
//	16'h01a4:	mem[7:0]=8'h39;	// ldw
//	16'h01a5:	mem[7:0]=8'h44;	// sub
	//	njmp	loop
//	16'h01a6:	mem[7:0]=8'h61;	// psei 1 // push loop (0x008a)
//	16'h01a7:	mem[7:0]=8'h8a;	// sldi 0x0a
//	16'h01a8:	mem[7:0]=8'h55;	// njmp
	// write data
	//	dupl	[r6]
//	16'h01a9:	mem[7:0]=8'h61;	// psei 1 // ldw r6 (0x500c)
//	16'h01aa:	mem[7:0]=8'ha0;	// sldi 0x20
//	16'h01ab:	mem[7:0]=8'h8c;	// sldi 0x0c
//	16'h01ac:	mem[7:0]=8'h39;	// ldw
//	16'h01ad:	mem[7:0]=8'h3c;	// dupl
	//	swap	[r0]
//	16'h01ae:	mem[7:0]=8'h61;	// psei 1 // ldw r0 (0x5000)
//	16'h01af:	mem[7:0]=8'ha0;	// sldi 0x20
//	16'h01b0:	mem[7:0]=8'h80;	// sldi 0x00
//	16'h01b1:	mem[7:0]=8'h39;	// ldw
//	16'h01b2:	mem[7:0]=8'h5c;	// swap
	//	stw
//	16'h01b3:	mem[7:0]=8'h59;	// stw
	// update wdat(=r6)
	//	add		2
//	16'h01b4:	mem[7:0]=8'h62;	// psei 2 // push 2
//	16'h01b5:	mem[7:0]=8'h43;	// add
	//	stw		r6
//	16'h01b6:	mem[7:0]=8'h61;	// psei 1 // push r6 (0x500c)
//	16'h01b7:	mem[7:0]=8'ha0;	// sldi 0x20
//	16'h01b8:	mem[7:0]=8'h8c;	// sldi 0x0c
//	16'h01b9:	mem[7:0]=8'h59;	// stw
	//	jmp		skp_spc
//	16'h01ba:	mem[7:0]=8'h62;	// psei 2 // push skp_spc (0x014e)
//	16'h01bb:	mem[7:0]=8'hce;	// sldi 0x4e
//	16'h01bc:	mem[7:0]=8'h35;	// jmp
	// ================================
	//	nop
//	16'h01bd:	mem[7:0]=8'h00;	// nop
	// ================================

module	mcoc_boot_sm (
// Samarium series assembler ver.1.06
input	clk,
input	rst_n,
input	rl0,
input	sel_n,
input	cmdb,
input	cmdl,
input	[15:0]	adr,
output	[31:0]	dat);

// memory read
reg		[31:0]	mem;
always	@(adr[15:0])
	case (adr[15:0]&(~16'h3))
	16'h0000:	mem[31:0]=32'h6080_ed35;
	16'h0004:	mem[31:0]=32'h0102_6061;
	16'h0008:	mem[31:0]=32'ha080_5961;
	16'h000c:	mem[31:0]=32'ha082_393c;
	16'h0010:	mem[31:0]=32'h3860_b044;
	16'h0014:	mem[31:0]=32'h3c72_4060;
	16'h0018:	mem[31:0]=32'h80e7_543c;
	16'h001c:	mem[31:0]=32'h608a_4472;
	16'h0020:	mem[31:0]=32'h4060_80d5;
	16'h0024:	mem[31:0]=32'h5460_9144;
	16'h0028:	mem[31:0]=32'h3c72_4060;
	16'h002c:	mem[31:0]=32'h80e7_543c;
	16'h0030:	mem[31:0]=32'h608a_435c;
	16'h0034:	mem[31:0]=32'h6086_4472;
	16'h0038:	mem[31:0]=32'h4060_80d5;
	16'h003c:	mem[31:0]=32'h5460_aa44;
	16'h0040:	mem[31:0]=32'h3c72_4060;
	16'h0044:	mem[31:0]=32'h80e7_543c;
	16'h0048:	mem[31:0]=32'h608a_435c;
	16'h004c:	mem[31:0]=32'h6086_4472;
	16'h0050:	mem[31:0]=32'h4060_80e7;
	16'h0054:	mem[31:0]=32'h5561_a080;
	16'h0058:	mem[31:0]=32'h3922_2222;
	16'h005c:	mem[31:0]=32'h2243_61a0;
	16'h0060:	mem[31:0]=32'h8059_6143;
	16'h0064:	mem[31:0]=32'h608f_353d;
	16'h0068:	mem[31:0]=32'h61a0_8259;
	16'h006c:	mem[31:0]=32'h3560_93c3;
	16'h0070:	mem[31:0]=32'h63e0_b259;
	16'h0074:	mem[31:0]=32'h6263_e0b0;
	16'h0078:	mem[31:0]=32'h5963_e0a6;
	16'h007c:	mem[31:0]=32'h3963_fff8;
	16'h0080:	mem[31:0]=32'h4063_e0a6;
	16'h0084:	mem[31:0]=32'h5960_61a0;
	16'h0088:	mem[31:0]=32'h8c59_61a0;
	16'h008c:	mem[31:0]=32'h8c39_2363;
	16'h0090:	mem[31:0]=32'hfffe_4260;
	16'h0094:	mem[31:0]=32'h8740_63e0;
	16'h0098:	mem[31:0]=32'ha859_61a0;
	16'h009c:	mem[31:0]=32'h9061_a082;
	16'h00a0:	mem[31:0]=32'h5963_e0b0;
	16'h00a4:	mem[31:0]=32'h393c_63e0;
	16'h00a8:	mem[31:0]=32'hb059_60a0;
	16'h00ac:	mem[31:0]=32'h4060_81f6;
	16'h00b0:	mem[31:0]=32'h5563_e0be;
	16'h00b4:	mem[31:0]=32'h3961_a080;
	16'h00b8:	mem[31:0]=32'h5963_e0b2;
	16'h00bc:	mem[31:0]=32'h393c_61a0;
	16'h00c0:	mem[31:0]=32'h8659_2323;
	16'h00c4:	mem[31:0]=32'h2323_2323;
	16'h00c8:	mem[31:0]=32'h61a0_8459;
	16'h00cc:	mem[31:0]=32'h61a0_8639;
	16'h00d0:	mem[31:0]=32'h61a0_8039;
	16'h00d4:	mem[31:0]=32'h443c_7240;
	16'h00d8:	mem[31:0]=32'h6081_dd55;
	16'h00dc:	mem[31:0]=32'h2561_a084;
	16'h00e0:	mem[31:0]=32'h3944_7240;
	16'h00e4:	mem[31:0]=32'h6081_f654;
	16'h00e8:	mem[31:0]=32'h61a0_8039;
	16'h00ec:	mem[31:0]=32'h63e0_b259;
	16'h00f0:	mem[31:0]=32'h6085_63e0;
	16'h00f4:	mem[31:0]=32'ha859_63e0;
	16'h00f8:	mem[31:0]=32'hb039_7440;
	16'h00fc:	mem[31:0]=32'h61a1_5563;
	16'h0100:	mem[31:0]=32'he0b6_393c;
	16'h0104:	mem[31:0]=32'h61a0_8059;
	16'h0108:	mem[31:0]=32'h61a0_8239;
	16'h010c:	mem[31:0]=32'h3c61_4361;
	16'h0110:	mem[31:0]=32'ha082_5958;
	16'h0114:	mem[31:0]=32'h61a0_8039;
	16'h0118:	mem[31:0]=32'h608a_4460;
	16'h011c:	mem[31:0]=32'h82b9_5561;
	16'h0120:	mem[31:0]=32'ha082_3961;
	16'h0124:	mem[31:0]=32'ha0a4_4472;
	16'h0128:	mem[31:0]=32'h4061_a154;
	16'h012c:	mem[31:0]=32'h61a0_8239;
	16'h0130:	mem[31:0]=32'h6144_61a0;
	16'h0134:	mem[31:0]=32'h8259_61a1;
	16'h0138:	mem[31:0]=32'h3561_a082;
	16'h013c:	mem[31:0]=32'h3961_443c;
	16'h0140:	mem[31:0]=32'h61a0_8259;
	16'h0144:	mem[31:0]=32'h605c_5861;
	16'h0148:	mem[31:0]=32'ha090_61a0;
	16'h014c:	mem[31:0]=32'h8259_61a0;
	16'h0150:	mem[31:0]=32'h8239_3c38;
	16'h0154:	mem[31:0]=32'h61a0_8059;
	16'h0158:	mem[31:0]=32'h6143_61a0;
	16'h015c:	mem[31:0]=32'h8259_61a0;
	16'h0160:	mem[31:0]=32'h8039_6089;
	16'h0164:	mem[31:0]=32'h4462_ce55;
	16'h0168:	mem[31:0]=32'h61a0_8039;
	16'h016c:	mem[31:0]=32'h60a0_4462;
	16'h0170:	mem[31:0]=32'hce55_61a0;
	16'h0174:	mem[31:0]=32'h8039_618a;
	16'h0178:	mem[31:0]=32'h5561_a080;
	16'h017c:	mem[31:0]=32'h3960_c044;
	16'h0180:	mem[31:0]=32'h6083_9354;
	16'h0184:	mem[31:0]=32'h6086_3461;
	16'h0188:	mem[31:0]=32'ha080_3922;
	16'h018c:	mem[31:0]=32'h61a0_8c59;
	16'h0190:	mem[31:0]=32'h62ce_3561;
	16'h0194:	mem[31:0]=32'ha082_3961;
	16'h0198:	mem[31:0]=32'h443c_61a0;
	16'h019c:	mem[31:0]=32'h8259_6086;
	16'h01a0:	mem[31:0]=32'h3461_a082;
	16'h01a4:	mem[31:0]=32'h3944_618a;
	16'h01a8:	mem[31:0]=32'h5561_a08c;
	16'h01ac:	mem[31:0]=32'h393c_61a0;
	16'h01b0:	mem[31:0]=32'h8039_5c59;
	16'h01b4:	mem[31:0]=32'h6243_61a0;
	16'h01b8:	mem[31:0]=32'h8c59_62ce;
	16'h01bc:	mem[31:0]=32'h3500_0000;
	default:	mem[31:0]=32'hx;
	endcase
wire	[15:0]	romsiz=16'd446;	// byte

// read latency 0
wire	[7:0]	mem_by=
			(adr[1:0]==2'h0)? mem[31:24]:
			(adr[1:0]==2'h1)? mem[23:16]:
			(adr[1:0]==2'h2)? mem[15:8]: mem[7:0];
wire	[15:0]	mem_wd=
			(!adr[1])? mem[31:16]: mem[15:0];
wire	[31:0]	dat_rl0=
		(cmdl)? mem[31:0]:
		(cmdb)? { 16'h0,mem_by[7:0],mem_by[7:0] }:
			{ 16'h0,mem_wd[15:0] };

// read latency 1
reg		[31:0]	dat_rg;
always	@(posedge clk)
	begin
		if (!rst_n || sel_n)
			dat_rg[31:0]<=32'h0;
		else
			dat_rg[31:0]<=dat_rl0[31:0];
	end
assign	dat[31:0]=(rl0)? dat_rl0[31:0]: dat_rg[31:0];

endmodule

