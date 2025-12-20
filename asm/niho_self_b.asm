// ================================
//	Nihonium
//		all instructions self test B
//		(c) 2022,2023	1YEN Toru
//
//
//		version history: see niho_self.asm
//			split files:
//				niho_self.asm : basic cpu self test
//				niho_self_b.asm : hfpu, sfpu, extended address test
//
// ================================
asm		"mcoc_irom.mem"
incl	"mcoc115.incl"
equ		mcvm_has_sfpu,1					// 1 for `define MCVM_COPR_FPUS
equ		mcvm_has_hfpu,0					// 1 for `define MCVM_COPR_FPUH
equ		mcvm_has_xadr,0					// 1 for `define MCOC_SDRAM_8M
#equ		mcvm_has_xadr2,0x08_0000		// >0 for `define MCOC_ERAM
#equ		mcvm_has_xadr2,0x10_0000		// >0 for `define MCOC_SRAM_512K
equ		mcvm_has_xadr2,0				// 0 for not test
def		s,""							// simulation "" / fpga "#"
# ================================


// ================================
// Nihonium mode (NH=1)
// ================================
sesr	sreg_b_nh
movfc	r0,sr
lsfti	r0,-sreg_b_nh
andi	r0,sreg_nh>>sreg_b_nh
beq		reg_fail

// ================================
sesr	sreg_b_nh
ldcl	sr,sreg_bk_0
bra		reg_pass

reg_fail:
jmpr7	tstfail

reg_pass:


// ================================
// extended address
// ================================
// skip if mcvm_has_xadr==0
ldbiu	r0,mcvm_has_xadr
cmpi	r0,0
beq		xadr_skip
// initialize sdram controller
// wait for sdram controller ready
ldwi	r7,sdrcctl
ldw		r0,[r7]
andi	r0,sdrc_sdrm
beq		xadr_fail
$(s)// ********************************
$(s)// test mode enable
$(s)ldbih	r0,0x80
$(s)stw		[r7],r0
$(s)// ********************************
// polling SRDY flag
ldw		r0,[r7]
andi	r0,sdrc_srdy
beq		pcnt-6
// ================================
// stw -> ldbx
ldli	r4,0x00845678
mov		r5,r4
lsfti	r5,-16
movtc	tr,r5
ldwi	r6,0xb1e6
stw		[r4],r6							// **
exzrl	r4
ldbx	r7,[r4]							// **
addi	r4,1
ldbx	r0,[r4]							// **
lsfti	r7,8
or		r7,r0
cmp		r7,r6
bne		xadr_fail
// ================================
// stb -> ldwx
ldli	r5,0x00a87654
mov		r6,r5
lsfti	r6,-16
movtc	tr,r6
ldwi	r7,0xb1e6
mov		r0,r7
cendw	r0
stb		[r5],r0							// **
addi	r5,1
cendw	r0
stb		[r5],r0							// **
subi	r5,1
exzrl	r5
ldwx	r1,[r5]							// **
cmp		r1,r7
bne		xadr_fail
// ================================
// pushl -> ldl
ldli	r6,0x00b65432
movtc	sp,r6
ldli	r7,0x8a7b6c5d
pushl	r7								// **
subi	r6,4
ldl		r0,[r6]							// **
cmp		r0,r7
bne		xadr_fail
// ================================
// stl -> popl
ldli	r7,0x00ca9876
movtc	sp,r7
ldli	r0,0x0a1b2c3d
stl		[r7],r0							// **
popl	r1								// **
cmp		r1,r0
bne		xadr_fail
// ================================
// stlsp -> ldl
ldli	r0,0x00d87654
movtc	sp,r0
ldli	r1,0x00123456
ldli	r2,0x5e4d3c2b
stlsp	[r1],r2							// **
add		r0,r1
ldl		r3,[r0]							// **
cmp		r3,r2
bne		xadr_fail
movfc	r4,tr
cmp		r4,r0
bne		xadr_fail
// ================================
// stl -> ldlsp
ldli	r1,0x00965432
movtc	sp,r1
ldli	r2,0x001210fe
ldli	r3,0x91827364
add		r1,r2
stl		[r1],r3							// **
ldlsp	r4,[r2]							// **
cmp		r4,r3
bne		xadr_fail
movfc	r5,tr
cmp		r5,r1
bne		xadr_fail
// ================================
// 32 bit sp
//	works even if nh=0 mode.
//	but does not work sp relative (stwsp, etc.),
//	because alu works in 16 bit mode.
sesr	sreg_b_nh
ldli	r2,0x0085ab10
movtc	sp,r2
clsr	sreg_b_nh
pushw	r2								// **
sesr	sreg_b_nh
mov		r3,r2
subi	r3,2
ldw		r4,[r3]
exzrl	r2
cmp		r4,r2
bne		xadr_fail
movfc	r5,sp
cmp		r5,r3
bne		xadr_fail
// ================================
// link, extended address
ldli	r2,0x00f02468
movtc	sp,r2
link	0x8ace							// **
movfc	r3,sp
movfc	r4,tr
popl	r5
cmp		r5,r2
bne		xadr_fail
cmp		r4,r2
bne		xadr_fail
ldwi	r6,0x8ace+4
sub		r2,r6
cmp		r3,r2
bne		xadr_fail
// ================================
// unlk, extended address
ldli	r3,0x00eabcde
movtc	sp,r3
ldli	r4,0x00765432
pushl	r4
unlk									// **
movfc	r5,sp
cmp		r5,r4
bne		xadr_fail

// ================================
bra		xadr_pass

xadr_fail:
jmpr7	tstfail

xadr_pass:
xadr_skip:


// ================================
// extended address (S-RAM area)
// ================================
// skip if mcvm_has_xadr2==0
ldli	r0,mcvm_has_xadr2
cmpi	r0,0
beq		xadr2_skip
// ================================
// stw -> ldbx
ldli	r4,mcvm_has_xadr2+0x0000_5678
mov		r5,r4
lsfti	r5,-16
movtc	tr,r5
ldwi	r6,0xb1e6
stw		[r4],r6							// **
exzrl	r4
ldbx	r7,[r4]							// **
addi	r4,1
ldbx	r0,[r4]							// **
lsfti	r7,8
or		r7,r0
cmp		r7,r6
bne		xadr2_fail
// ================================
// stb -> ldwx
ldli	r5,mcvm_has_xadr2+0x0004_7654
mov		r6,r5
lsfti	r6,-16
movtc	tr,r6
ldwi	r7,0xb1e6
mov		r0,r7
cendw	r0
stb		[r5],r0							// **
addi	r5,1
cendw	r0
stb		[r5],r0							// **
subi	r5,1
exzrl	r5
ldwx	r1,[r5]							// **
cmp		r1,r7
bne		xadr2_fail
// ================================
// pushl -> ldl
ldli	r6,mcvm_has_xadr2+0x0006_5432
movtc	sp,r6
ldli	r7,0x8a7b6c5d
pushl	r7								// **
subi	r6,4
ldl		r0,[r6]							// **
cmp		r0,r7
bne		xadr2_fail
// ================================
// stl -> popl
ldli	r7,mcvm_has_xadr2+0x0005_9874
movtc	sp,r7
ldli	r0,0x0a1b2c3d
stl		[r7],r0							// **
popl	r1								// **
cmp		r1,r0
bne		xadr2_fail
// ================================
// stlsp -> ldl
ldli	r0,mcvm_has_xadr2+0x0003_7654
movtc	sp,r0
ldli	r1,0x0002_3456
ldli	r2,0x5e4d_3c2b
stlsp	[r1],r2							// **
add		r0,r1
ldl		r3,[r0]							// **
cmp		r3,r2
bne		xadr2_fail
movfc	r4,tr
cmp		r4,r0
bne		xadr2_fail
// ================================
// stl -> ldlsp
ldli	r1,mcvm_has_xadr2+0x0001_5432
movtc	sp,r1
ldli	r2,0x0006_10fe
ldli	r3,0x9182_7364
add		r1,r2
stl		[r1],r3							// **
ldlsp	r4,[r2]							// **
cmp		r4,r3
bne		xadr2_fail
movfc	r5,tr
cmp		r5,r1
bne		xadr2_fail
// ================================
// 32 bit sp
//	works even if nh=0 mode.
//	but does not work sp relative (stwsp, etc.),
//	because alu works in 16 bit mode.
sesr	sreg_b_nh
ldli	r2,mcvm_has_xadr2+0x000_5ab10
movtc	sp,r2
clsr	sreg_b_nh
pushw	r2								// **
sesr	sreg_b_nh
mov		r3,r2
subi	r3,2
ldw		r4,[r3]
exzrl	r2
cmp		r4,r2
bne		xadr2_fail
movfc	r5,sp
cmp		r5,r3
bne		xadr2_fail
// ================================
// link, extended address
ldli	r2,mcvm_has_xadr2+0x0001_2468
movtc	sp,r2
link	0x8ace							// **
movfc	r3,sp
movfc	r4,tr
popl	r5
cmp		r5,r2
bne		xadr2_fail
cmp		r4,r2
bne		xadr2_fail
ldwi	r6,0x8ace+4
sub		r2,r6
cmp		r3,r2
bne		xadr2_fail
// ================================
// unlk, extended address
ldli	r3,mcvm_has_xadr2+0x0004_bcde
movtc	sp,r3
ldli	r4,0x0076_5432
pushl	r4
unlk									// **
movfc	r5,sp
cmp		r5,r4
bne		xadr2_fail

// ================================
bra		xadr2_pass

xadr2_fail:
jmpr7	tstfail

xadr2_pass:
xadr2_skip:


// ================================
// hfpu
// ================================
// skip if mcvm_has_hfpu==0
ldbiu	r0,mcvm_has_hfpu
cmpi	r0,0
beq		hfpu_skip
// ================================
// half precision
hldi	r0,3.1415926535
ldwi	r1,0x4248
cmp		r0,r1
bne		hfpu_fail
// ================================
// hadd
hldi	r0,102.188
hldi	r1,57760
hadd	r0,r1							// **
hldi	r7,57760+102.188
cmp		r0,r7
bne		hfpu_fail
ldwi	r2,half_inf_n
ldwi	r3,half_max
hadd	r2,r3							// **
ldwi	r7,half_inf_n
cmp		r2,r7
bne		hfpu_fail
// ================================
// hsub
hldi	r4,12.3
hldi	r5,34.5
hsub	r4,r5							// **
hldi	r7,12.3-34.5
addi	r7,1							// adjust operation error
cmp		r4,r7
bne		hfpu_fail
ldwi	r6,half_inf_n
ldwi	r7,half_inf_n
hsub	r6,r7							// **
ldwi	r0,half_nan
cmp		r6,r0
bne		hfpu_fail
// ================================
// hmul
hldi	r1,-3.14
hldi	r2,2.5
hmul	r1,r2							// **
hldi	r3,-3.14*2.5
subi	r3,1							// adjust operation error
cmp		r1,r3
bne		hfpu_fail
hldi	r3,-2.34
hldi	r4,0
hmul	r3,r4							// **
ldwi	r5,half_zer_n
cmp		r3,r5
bne		hfpu_fail
// ================================
// hdiv
hldi	r5,10
hldi	r6,3
hdiv	r5,r6							// **
hldi	r7,10/3
cmp		r5,r7
bne		hfpu_fail
hldi	r1,-5.67
ldwi	r0,half_zer_n
hdiv	r1,r0							// **
ldwi	r2,half_inf
cmp		r1,r2
bne		hfpu_fail
// ================================
// hneg
hldi	r2,1234
hneg	r3,r2							// **
hldi	r4,-1234
cmp		r3,r4
bne		hfpu_fail
ldwi	r4,half_nan
hneg	r5,r4							// **
ldwi	r6,half_nan
cmp		r5,r6
bne		hfpu_fail
// ================================
// hhalf
ldwi	r7,1234
hhalf	r6,r7							// **
hldi	r0,1234
cmp		r6,r0
bne		hfpu_fail
ldwi	r1,0xffff
hhalf	r3,r1							// **
ldwi	r4,half_max
cmp		r3,r4
bne		hfpu_fail
// ================================
// huint
hldi	r5,123
huint	r7,r5							// **
ldwi	r0,123
cmp		r7,r0
bne		hfpu_fail
hldi	r2,-4560
huint	r4,r2							// **
ldwi	r3,4560
cmp		r3,r4
bne		hfpu_fail
// ================================
// hfrac
hldi	r6,0.0123
hfrac	r0,r6							// **
ldwi	r7,806							// 806=0.0123*65536
cmp		r0,r7
bne		hfpu_fail
hldi	r0,-10/3
hfrac	r1,r0							// **
ldwi	r2,0x5500						// 0x5500=((10/3)%1)*65536
cmp		r1,r2
bne		hfpu_fail
// ================================
// hmvsg
hldi	r2,65.4
hldi	r3,11.1
hmvsg	r2,r3							// **
hldi	r4,65.4
cmp		r2,r4
bne		hfpu_fail
hldi	r5,-76.5
hldi	r6,22.2
hmvsg	r5,r6							// **
hldi	r7,76.5
cmp		r5,r7
bne		hfpu_fail
// ================================
// hsat
hldi	r0,12345
hsat	r1,r0							// **
hldi	r2,12345
cmp		r1,r2
bne		hfpu_fail
ldwi	r3,half_inf_n
hsat	r4,r3							// **
ldwi	r5,half_max_n
cmp		r4,r5
bne		hfpu_fail
ldwi	r6,half_zer_n
hsat	r7,r6							// **
ldwi	r0,half_zer
cmp		r7,r0
bne		hfpu_fail
// ================================
// hcmp
hldi	r0,0.45
hldi	r1,1.23
mov		r4,r0
mov		r5,r1
hcmp	r0,r1							// **
movfc	r2,sr
andi	r2,sreg_fg
cmpi	r2,sreg_nf
bne		hfpu_fail
cmp		r0,r4
bne		hfpu_fail
cmp		r1,r5
bne		hfpu_fail
ldwi	r0,half_nan
hcmp	r0,r0							// **
movfc	r2,sr
andi	r2,sreg_fg
cmpi	r2,sreg_nf|sreg_cf|sreg_vf
ldwi	r0,half_inf
ldwi	r1,half_mpi
hcmp	r1,r0							// **
movfc	r2,sr
andi	r2,sreg_fg
cmpi	r2,sreg_nf
ldwi	r0,half_zer_n
ldwi	r1,half_zer_n
hcmp	r0,r1							// **
movfc	r2,sr
andi	r2,sreg_fg
cmpi	r2,sreg_cf|sreg_zf
bne		hfpu_fail

// ================================
bra		hfpu_pass

hfpu_fail:
jmpr7	tstfail

hfpu_pass:
hfpu_skip:


// ================================
// sfpu
// ================================
// skip if mcvm_has_sfpu==0
ldbiu	r0,mcvm_has_sfpu
cmpi	r0,0
beq		sfpu_skip
// ================================
// single precision
fldi	r0,3.1415926535
ldli	r1,0x40490fda
cmp		r0,r1
bne		sfpu_fail
// ================================
// fadd
fldi	r0,102.188
fldi	r1,57760
fadd	r0,r1							// **
fldi	r7,57760+102.188
cmp		r0,r7
bne		sfpu_fail
ldli	r2,sngl_max
ldli	r3,sngl_inf_n
fadd	r2,r3							// **
ldli	r7,sngl_inf_n
cmp		r2,r7
bne		sfpu_fail
// ================================
// fsub
fldi	r4,12.3456
fldi	r5,34.1875
fsub	r4,r5							// **
fldi	r7,12.3456-34.1875
cmp		r4,r7
bne		sfpu_fail
ldli	r6,sngl_inf_n
ldli	r7,sngl_inf_n
fsub	r6,r7							// **
ldli	r0,sngl_nan
cmp		r6,r0
bne		sfpu_fail
// ================================
// fmul
fldi	r1,-3.125
fldi	r2,2.5
fmul	r1,r2							// **
fldi	r3,-3.125*2.5
cmp		r1,r3
bne		sfpu_fail
fldi	r3,-2.34
fldi	r4,0
fmul	r3,r4							// **
ldli	r5,sngl_zer_n
cmp		r3,r5
bne		sfpu_fail
// ================================
// fdiv
fldi	r5,10
fldi	r6,3
fdiv	r5,r6							// **
fldi	r7,10/3
#subi	r7,1							// adjust operation error
cmp		r5,r7
bne		sfpu_fail
fldi	r1,-5.67
ldli	r0,sngl_zer_n
fdiv	r1,r0							// **
ldli	r2,sngl_inf
cmp		r1,r2
bne		sfpu_fail
// ================================
// fneg
fldi	r2,123.4
fneg	r3,r2							// **
fldi	r4,-123.4
cmp		r3,r4
bne		sfpu_fail
ldli	r4,sngl_nan
fneg	r5,r4							// **
ldli	r6,sngl_nan
cmp		r5,r6
bne		sfpu_fail
// ================================
// fsngl
ldli	r7,12345678
fsngl	r6,r7							// **
fldi	r0,12345678
cmp		r6,r0
bne		sfpu_fail
ldli	r1,0x0
fsngl	r3,r1							// **
ldwi	r4,sngl_zer
cmp		r3,r4
bne		sfpu_fail
ldli	r1,0x00ffffff
fsngl	r3,r1							// **
fldi	r4,0x00ffffff
cmp		r3,r4
bne		sfpu_fail
// ================================
// fuint
fldi	r5,12345.67
fuint	r7,r5							// **
ldli	r0,12345
cmp		r7,r0
bne		sfpu_fail
fldi	r2,-87654.32
fuint	r4,r2							// **
ldli	r3,87654
cmp		r3,r4
bne		sfpu_fail
ldli	r2,sngl_max
fuint	r4,r2							// **
ldli	r3,0x00000000
cmp		r3,r4
bne		sfpu_fail
// ================================
// ffrac
fldi	r6,0.0123456
ffrac	r0,r6							// **
ldli	r7,0x032914CC					// 0.0123456*(2^32)
cmp		r0,r7
bne		sfpu_fail
fldi	r0,-1/3
ffrac	r1,r0							// **
ldli	r2,0x55555500					// ((1/3)%1)*(2^32), 24 bits
cmp		r1,r2
bne		sfpu_fail
ldli	r4,sngl_min_n
ffrac	r2,r4							// **
ldli	r3,0x00000000
cmp		r3,r2
bne		sfpu_fail
// ================================
// fmvsg
fldi	r2,65.432
fldi	r3,11.111
fmvsg	r2,r3							// **
fldi	r4,65.432
cmp		r2,r4
bne		sfpu_fail
fldi	r5,-76.543
fldi	r6,22.222
fmvsg	r5,r6							// **
fldi	r7,76.543
cmp		r5,r7
bne		sfpu_fail
// ================================
// fsat
fldi	r0,12345.6
fsat	r1,r0							// **
fldi	r2,12345.6
cmp		r1,r2
bne		sfpu_fail
ldli	r3,sngl_inf_n
fsat	r4,r3							// **
ldli	r5,sngl_max_n
cmp		r4,r5
bne		sfpu_fail
ldli	r6,sngl_zer_n
fsat	r7,r6							// **
ldli	r0,sngl_zer
cmp		r7,r0
bne		sfpu_fail
// ================================
// fcmp
fldi	r0,0.45
fldi	r1,1.23
mov		r4,r0
mov		r5,r1
fcmp	r0,r1							// **
movfc	r2,sr
andi	r2,sreg_fg
cmpi	r2,sreg_nf
bne		sfpu_fail
cmp		r0,r4
bne		sfpu_fail
cmp		r1,r5
bne		sfpu_fail
ldli	r0,sngl_nan
fcmp	r0,r0							// **
movfc	r2,sr
andi	r2,sreg_fg
cmpi	r2,sreg_nf|sreg_cf|sreg_vf
ldli	r0,sngl_inf
ldli	r1,sngl_mpi
fcmp	r1,r0							// **
movfc	r2,sr
andi	r2,sreg_fg
cmpi	r2,sreg_nf
ldli	r0,sngl_zer_n
ldli	r1,sngl_zer_n
fcmp	r0,r1							// **
movfc	r2,sr
andi	r2,sreg_fg
cmpi	r2,sreg_cf|sreg_zf
bne		sfpu_fail
// ================================
// ftrunc
fldi	r0,123.4567
ftrunc	r1,r0							// **
fldi	r2,123
cmp		r1,r2
bne		sfpu_fail
fldi	r0,-0.98765
ftrunc	r1,r0							// **
ldli	r2,sngl_zer_n
cmp		r1,r2
bne		sfpu_fail
fldi	r3,3.21^64
ftrunc	r4,r3							// **
cmp		r3,r4
bne		sfpu_fail

// ================================
bra		sfpu_pass

sfpu_fail:
jmpr7	tstfail

sfpu_pass:
sfpu_skip:


// ================================
tstpass:
ldwi	r0,simpass						// pass: LED=blue
bra		tstfnsh
tstfail:
ldwi	r0,simfail						// fail: LED=red
tstfnsh:
ldwi	r7,simfnsh
stw		[r7],r0
bra		pcnt-2
nop
// ================================

