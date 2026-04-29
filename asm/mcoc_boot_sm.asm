// ================================
//	Samarium series boot loader
//		(c) 2026	1YEN Toru
//
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
asm		"mcoc_boot_sm.v"
incl	"mcoc115.incl"
# ================================
# constants
equ		prog_vers,0x0100				// program version (bcd)
equ		baud,9600						// baud rate
equ		uart_baud,fcpu/baud-1			// uartbaud setting
equ		max_lbuf,20						// size of lbuf (<256 & even)
# variables
equ		va,iramtop
equ		r0,va
equ		va,va+2
equ		r1,va
equ		va,va+2
equ		r2,va
equ		va,va+2
equ		r3,va
equ		va,va+2
equ		r4,va
equ		va,va+2
equ		r5,va
equ		va,va+2
equ		r6,va
equ		va,va+2
equ		r7,va
equ		va,va+2
# arrays
#@equ		va,ramtop
equ		lbuf,va
equ		va,va+max_lbuf
# ================================


// version
jmp		main
align	2
datw	prog_vers


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
xtoi:
// initialize
stw		0,r0
ldw		r1
// loop
_xtoi_loop:
// r1-'0'
dupl
ldb
sub		0a0
// (r1<'0')?
dupl
and		SGN_BIT
cjmp	_xtoi_break						// r1<'0'
// (r1<='9')?
dupl
sub		(0a9+1)-0a0
and		SGN_BIT
cjmp	_xtoi_next						// r1<='9'
// (r1<'A')?
sub		0aA-0a0
dupl
and		SGN_BIT
cjmp	_xtoi_break						// r1<'A'
// (r1<='F')?
dupl
add		0x0a
swap
sub		(0aF+1)-0aA
and		SGN_BIT
cjmp	_xtoi_next						// r1<='F'
// (r1<'a')?
sub		0aa-0aA+0x0a
dupl
and		SGN_BIT
cjmp	_xtoi_break						// r1<'a'
// (r1<='f')?
dupl
add		0x0a
swap
sub		(0aF+1)-0aA
and		SGN_BIT
njmp	_xtoi_break						// r1>'f'
_xtoi_next:
// hexadecimal digit
// r0=16*r0+r2
lsl		[r0]
lsl
lsl
lsl
add
stw		r0
// end of loop
add		1
jmp		_xtoi_loop
_xtoi_break:
// end of subroutine
// discard r1
pop
// store r1
stw		r1
rtn


// ================================
// main
main:
// ================================
// initialize
// UART8N1 setting: RXE, baud rate
stw		uart_baud,uartbaud
stw		uart_rxe,uartctl
// PORT8I8O setting: output led_builtin
and		[pordir],~led_builtin
stw		pordir


// ================================
// rom data download
stw		0,r6							// reset wptr(=r6)
// loop
loop:
// pilot led
lsr		[r6]
eor		~led_builtin_b					// blue LED for wptr(=r6)=0x???0
and		led_builtin
stw		porout

// ================================
// get line from uart
stw		lbuf,r1							// r1=lbuf
// get line loop
gl_loop:
// check if BRDF=1
dupl	[uartctl]
stw		uartctl							// clear brdf
and		uart_brdf
njmp	gl_not_brdf
// detected
stw		[uartbres],r0					// r0=[uartbres]
dupl	[uartbaud]						// [uartbaud],[uartbaud]
stw		r3								// [uartbaud]; r3=[uartbaud]
// margin
lsr
lsr
lsr
lsr
lsr
lsr										// [uartbaud]>>6
stw		r2								// r2=[uartbaud]>>6
// r3=abs (r3 - r0)
sub		[r3],[r0]						// [r3]-[r0]
dupl									// [r3]-[r0],[r3]-[r0]
and		SGN_BIT							// [r3]-[r0],([r3]-[r0])&SGN_BIT
njmp	gl_plus							// [r3]-[r0]
neg										// abs([r3]-[r0])
gl_plus:
// (r3<r2)?
sub		[r2]							// abs([r3]-[r0])-[r2]
and		SGN_BIT							// (abs([r3]-[r0])-[r2])&SGN_BIT
cjmp	gl_not_brdf
// update uartbaud
stw		[r0],uartbaud
// pilot led (detect=red)
stw		(~led_builtin_r)&led_builtin,porout
gl_not_brdf:
// polling until RAVL=1
and		[uartctl],uart_ravl
njmp	gl_loop
// get byte
dupl	[uartrdat]						// [uartdat],[uartdat]
stw		r0								// [uartdat]; r0=[uartdat]
dupl	[r1]							// [uartdat],[r1],[r1]
add		1								// [uartdat],[r1],[r1]+1
stw		r1								// [uartdat],[r1]; r1=[r1]+1
stb
// LF code check
sub		[r0],asc_lf
njmp	gl_break
// size check
sub		[r1],lbuf+max_lbuf
and		SGN_BIT
cjmp	gl_loop
// end of loop
sub		[r1],1
stw		r1
jmp		gl_loop
// got line
gl_break:
// string terminate
sub		[r1],1							// [r1]-1
dupl									// [r1]-1,[r1]-1
stw		r1								// [r1]-1; r1=[r1]-1
swap	0								// 0,[r1]-1
stb

// ================================
// analyze line buffer
stw		lbuf,r1							// r1=lbuf
// skip space
skp_spc:
dupl	[r1]							// [r1],[r1]
ldb										// [r1],[[r1]]
stw		r0								// [r1]: r0=[[r1]]
add		1								// [r1]+1
stw		r1								// r1=[r1]+1
// (r0='\t')?
sub		[r0],asc_tab
njmp	skp_spc
// (r0=' ')?
sub		[r0],asc_spc
njmp	skp_spc
// (r0='\0')?
njmp	[r0],loop

// ================================
// @<address>
sub		[r0],asc_atm
cjmp	not_atm

// address
xtoi*									// r0=xtoi (r1)
// set wptr(=r6)
lsl		[r0]							// word address -> byte address
stw		r6
jmp		skp_spc

not_atm:
// ================================
// <word_data>
sub		[r1],1							// [r1]-1
dupl									// [r1]-1,[r1]-1
stw		r1								// [r1]-1; r1=[r1]-1
xtoi*									// r0=xtoi (r1)
sub		[r1]							// ([r1]-1)-[r1']
njmp	loop							// unrecognized characters

// write data
dupl	[r6]							// [r6],[r6]
swap	[r0]							// [r6],[r0],[r6]
stw										// [r6]
// update wdat(=r6)
add		2								// [r6]+2
stw		r6								// r6=[r6]+2
jmp		skp_spc

// ================================
nop
// ================================
