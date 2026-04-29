// ================================
//	Samarium
//		all instructions self test
//		(c) 2026	1YEN Toru
//
//
//		2026/04/29	ver.1.00
//
// ================================
asm		"mcoc_irom.mem"
#asm		"asm_sama.v"
incl	"mcoc115.incl"
# ================================
# constants
equ		poly_cpu_id,2					// CPU# to be tested
equ		stx_ram_adr,iomedat0			// stw/stb test needs RAM (0=not test)
# ================================


// ================================
// initial check
// ================================
// check CPU#
and		CPU_STS,sama_sts_id_15
dupl
njmp	self_do_test
sub		poly_cpu_id
dupl
njmp	self_do_test
// not a target CPU#, halt
pop
pause
halt
self_do_test:
pop

// check STK_PTR
psei	STK_PTR
cjmp	tstfail

#%// to check for saturation decrease of Sp
#%stw	simc_smsn,simctrl				// ignore stack under / over run
#%pop
#%pop
#%pop
#%pop
#%psei	STK_PTR
#%cjmp	tstfail

// ================================
// check STK_SIZ
cmp		STK_SIZ,8
and		sama_cmp_cf
cjmp	tstfail

// ================================
// set guard data
push	0x3210


// ================================
// IM (immediate) type instructions
// ================================
// sldi
psei	0								// push 0x3210
sldi	0x64							// **
sldi	0x10							// **
dupl
njmp	tstfail
sub		[sldi_dat]
cjmp	tstfail

// data pool
jmp		sldi_pool
align	2
sldi_dat:
datw	0x3210
sldi_pool:


// ================================
// P0 (0 pop) type instructions
// ================================
// psei
psei	0								// **
psei	3								// **
njmp	tstfail
cjmp	tstfail
psei	CORE_ID							// **
sub		0x0620
cjmp	tstfail

// ================================
// nop
nop										// **

##// ================================
##// pause
##// need IRQ control to verify pause instruction
##pause									// **

##// ================================
##// copr
##// need coprocessor to verify copr instruction
##copr	10,3,mulu						// **


// ================================
// P1 (1 pop) type instructions
// ================================
// not
not		0x0000							// **
sub		0xffff
cjmp	tstfail
not		0xaaaa							// **
sub		0x5555
cjmp	tstfail

// ================================
// cend
cend	0xabcd							// **
sub		0xcdab
cjmp	tstfail

// ================================
// lsl
lsl		0x1357							// **
sub		0x26ae
cjmp	tstfail

// ================================
// lsr
lsr		0x8765							// **
sub		0x43b2
cjmp	tstfail

// ================================
// asr
asr		0xfedc							// **
sub		0xff6e
cjmp	tstfail

// ================================
// neg
neg		0x8000							// **
sub		0x8000
cjmp	tstfail
neg		123								// **
sub		-123
cjmp	tstfail
neg		-987							// **
sub		987
cjmp	tstfail

// ================================
// ldw
ldw		ldw_dat							// **
sub		0xaa55
cjmp	tstfail

// data pool
jmp		ldw_pool
align	2
ldw_dat:
datw	0xaa55
ldw_pool:

// ================================
// ldb
ldb		ldb_dat							// **
add		ldb_dat,1
ldb										// **
sub		0x99
cjmp	tstfail
sub		0x66
cjmp	tstfail

// data pool
jmp		ldb_pool
align	2
ldb_dat:
datw	0x6699
ldb_pool:

// ================================
// jal
jal		0xbbbb,PRG_CNT,jal_adr_1		// **
jmp		tstfail
jal_adr_1:
sub		4
sub
cjmp	tstfail
sub		0xbbbb
cjmp	tstfail

// ================================
// jmp
jmp		0x1111,jmp_adr_1				// **
jmp_adr_2:
jmp		0x3333,jmp_adr_3				// **
jmp_adr_1:
jmp		0x2222,jmp_adr_2				// **
jmp_adr_3:
sub		0x3333
cjmp	tstfail
sub		0x2222
cjmp	tstfail
sub		0x1111
cjmp	tstfail

// ================================
// ijal
cjmp	INT_VEC,tstfail
ijal	tstfail							// **
njmp	INT_VEC,ijal_skip				// SAMA_IRQ_ENB is not enabled, skip
sub		INT_VEC,tstfail
cjmp	tstfail
ijal	0								// **
cjmp	INT_VEC,tstfail
ijal_skip:

// ================================
// ijmp
ijmp	0xabcd,ijmp_rtn_addr			// **
jmp		tstfail
ijmp_rtn_addr:
sub		0xabcd
cjmp	tstfail

// ================================
// dupl
dupl	0x2468,0xace0					// **
sub		0xace0
cjmp	tstfail
sub		0xace0
cjmp	tstfail
sub		0x2468
cjmp	tstfail

// ================================
// pop
pop		0x1357,0x9bdf					// **
sub		0x1357
cjmp	tstfail


// ================================
// P2 (2 pop) type instructions
// ================================
// and
and		0xfff0,0x0a5c					// **
sub		0x0a50
cjmp	tstfail

// ================================
// or
or		0xc396,0xf00f					// **
sub		0xf39f
cjmp	tstfail

// ================================
// eor
eor		0x5a39,0xa36f					// **
sub		0xf956
cjmp	tstfail

// ================================
// add
add		0x4567,0x0123					// **
sub		0x468a
cjmp	tstfail

// ================================
// sub
sub		0xeca8,0x7531					// **
cmp		0x7777
and		sama_cmp_zf
njmp	tstfail

// ================================
// cmp
cmp		0x0246,0x3579					// **
and		sama_cmp_nf
njmp	tstfail
cmp		0x0000,0x0987					// **
and		sama_cmp_cf
njmp	tstfail
cmp		0x8000,0x0001					// **
and		sama_cmp_vf
njmp	tstfail
cmp		0xaaaa,0xaaaa					// **
and		sama_cmp_zf
njmp	tstfail
cmp		0x8765,0x1234					// **
and		sama_cmp_sf
njmp	tstfail

// ================================
// stw
push	stx_ram_adr
njmp	stw_skip
stw		0x33cc,stx_ram_adr				// **
sub		[stx_ram_adr],0x33cc
cjmp	tstfail
stw		0xaa55,stx_ram_adr				// **
sub		[stx_ram_adr],0xaa55
cjmp	tstfail
stw_skip:

// ================================
// stb
push	stx_ram_adr
njmp	stb_skip
stb		0xaa,stx_ram_adr				// **
stb		0x55,stx_ram_adr+1				// **
sub		[stx_ram_adr],0xaa55
cjmp	tstfail
stb_skip:

// ================================
// cjmp
cjmp	0,tstfail						// **
cjmp	1,cjmp_pass						// **
jmp		tstfail
cjmp_pass:

// ================================
// njmp
njmp	1,tstfail						// **
njmp	0,njmp_pass						// **
jmp		tstfail
njmp_pass:

// ================================
// swap
swap	0xabcd,0x1234					// **
sub		0xabcd
cjmp	tstfail
sub		0x1234
cjmp	tstfail


// ================================
// end of test
// ================================
// check guard data
sub		0x3210
cjmp	tstfail

// ================================
// check STK_PTR
psei	STK_PTR
cjmp	tstfail
jmp		tstpass


// ================================
tstneut:
push	simneut							// neutral: LED=green
jmp		tstfnsh
tstpass:
push	simpass							// pass: LED=blue
jmp		tstfnsh
tstfail:
push	simfail							// fail: LED=red
tstfnsh:
stw		simfnsh
pause
halt
nop
// ================================
