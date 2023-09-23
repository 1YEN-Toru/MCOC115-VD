// ================================
// Nihonium
//		all instructions self test
//		(c) 2022,2023	1YEN Toru
//
//
//		2023/07/08	ver.1.10
//			add: adcz, sbbz, cmbz
//
//		2023/05/20	ver.1.08
//			split files:
//				niho_self.asm : basic cpu self test
//				niho_self_b.asm : hfpu, sfpu, extended address test
//			add: mulsr, mulur, divsr, divur
//
//		2023/03/18	ver.1.06
//			add: jall, rtnl, pushcl, popcl
//
//		2023/02/11	ver.1.04
//			corresponding to sfpu instructions
//
//		2022/06/04	ver.1.02
//			add: brn, csft, csfti
//
//		2022/04/09	ver.1.00
//			corresponding to Nihonium (NH=1 mode)
//			for Nihonium ver.1.00 or higher
//
// ================================
asm		"mcoc_irom.mem"
incl	"mcoc115.incl"
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
// register check
// ================================
clsr	sreg_b_nh
ldc		sp,ramtop+0x0200
// bank 0 (nh=0)
ldcl	sr,sreg_bk_0
rept	8
ldwi	r$(repti),0x0$(repti)$(repti)$(repti)
endr
// bank 1 (nh=0)
ldcl	sr,sreg_bk_1
rept	8
ldwi	r$(repti),0x1$(repti)$(repti)$(repti)
endr
// bank 2 (nh=0)
ldcl	sr,sreg_bk_2
rept	8
ldwi	r$(repti),0x2$(repti)$(repti)$(repti)
endr
// bank 3 (nh=0)
ldcl	sr,sreg_bk_3
rept	8
ldwi	r$(repti),0x3$(repti)$(repti)$(repti)
endr
// bank 0 (nh=1)
sesr	sreg_b_nh
ldcl	sr,sreg_bk_0
pushl	r7
rept	7
ldli	r7,0x2$(repti)$(repti)$(repti)0$(repti)$(repti)$(repti)
cmp		r$(repti),r7
bne		reg_fail
endr
popl	r7
ldli	r0,0x27770777
cmp		r7,r0
bne		reg_fail
// bank 1 (nh=1)
sesr	sreg_b_nh
ldcl	sr,sreg_bk_1
pushl	r7
rept	7
ldli	r7,0x3$(repti)$(repti)$(repti)1$(repti)$(repti)$(repti)
cmp		r$(repti),r7
bne		reg_fail
endr
popl	r7
ldli	r0,0x37771777
cmp		r7,r0
bne		reg_fail
// bank 2,3 same as bank 0,1
ldcl	sr,sreg_bk_2
ldli	r0,0x26660666
cmp		r6,r0
bne		reg_fail
ldcl	sr,sreg_bk_3
ldli	r0,0x32221222
cmp		r2,r0
bne		reg_fail
// ================================
// 32 bit control register: sp, tr
sesr	sreg_b_nh
ldcl	sr,sreg_bk_0
ldli	r0,0xab12cd34
movtc	tr,r0
not		r0
movtc	sp,r0
movfc	r1,tr
movfc	r2,sp
cmp		r2,r0
bne		reg_fail
not		r0
cmp		r1,r0
bne		reg_fail
// nh=0
clsr	sreg_b_nh
movtc	tr,r0
sesr	sreg_b_nh
movfc	r3,tr
movfc	r4,sp
not		r0
cmp		r4,r0
bne		reg_fail
not		r0
exzrl	r0
cmp		r3,r0
bne		reg_fail

// ================================
sesr	sreg_b_nh
ldcl	sr,sreg_bk_0
bra		reg_pass

reg_fail:
jmpr7	tstfail

reg_pass:


// ================================
// opcode NO
// ================================
// nop
ldcl	sr,sreg_fg
nop										// **
movfc	r0,sr
andi	r0,sreg_fg
cmpi	r0,sreg_fg
bne		opc_no_fail
ldcl	sr,0
nop										// **
movfc	r0,sr
andi	r0,sreg_fg
cmpi	r0,0
bne		opc_no_fail
// ================================
// rtnw
ldbiu	r1,0
ldbiu	r2,0
ldwi	r4,ramtop+24
movtc	sp,r4
ldwi	r0,lab_rtnw_pass1
pushw	r0
rtnw									// **
ldbiu	r1,1
rtnw_pass1:
ldbiu	r2,1
cmpi	r1,0
bne		opc_no_fail
movfc	r3,sp
cmp		r3,r4
bne		opc_no_fail
cmpi	r2,1
bne		opc_no_fail
// ================================
// rti
ldc		sp,ramtop+6
ldc		iv,lab_rti_vect
// interrupt emulation
movfc	r1,iv
movfc	r0,pc
rti_mvpc:
addi	r0,lab_rti_retn-lab_rti_mvpc
pushw	r0
ldcl	sr,sreg_fg
pushcw	sr
jmp		r1
// return address
rti_retn:
movfc	r0,sr
andi	r0,sreg_fg
cmpi	r0,sreg_fg
beq		rti_pass
bra		opc_no_fail

rti_vect:
ldcl	sr,sreg_bk_3
rti										// **

rti_pass:
// ================================
// link
ldwi	r0,ramtop+0x2000
movtc	sp,r0
link	0x1234							// **
movfc	r1,sp
movfc	r4,tr
popl	r2
cmp		r2,r0
bne		opc_no_fail
cmp		r4,r0
bne		opc_no_fail
ldwi	r3,0x1234+4
sub		r0,r3
cmp		r1,r0
bne		opc_no_fail
// ================================
// unlk
ldc		sp,ramtop+0x320
ldwi	r1,ramtop+0x1abc
pushl	r1
unlk									// **
movfc	r2,sp
cmp		r2,r1
bne		opc_no_fail
// ================================
// brn
ldcl	sr,sreg_fg
brn										// **
movfc	r0,sr
andi	r0,sreg_fg
cmpi	r0,sreg_fg
bne		opc_no_fail
ldcl	sr,0
brn										// **
movfc	r0,sr
andi	r0,sreg_fg
cmpi	r0,0
bne		opc_no_fail
// ================================
// rtnl
ldbiu	r1,0
ldbiu	r2,0
ldwi	r4,ramtop+0x34
movtc	sp,r4
ldwi	r0,lab_rtnl_pass1
pushl	r0
rtnl									// **
ldbiu	r1,1
rtnl_pass1:
ldbiu	r2,1
cmpi	r1,0
bne		opc_no_fail
movfc	r3,sp
cmp		r3,r4
bne		opc_no_fail
cmpi	r2,1
bne		opc_no_fail

// ================================
bra		opc_no_pass

opc_no_fail:
jmpr7	tstfail

opc_no_pass:


// ================================
// opcode R
// ================================
// sbbz
ldbiu	r0,0x36
ldbiu	r1,0x5a
sesr	sreg_b_cf
sbbz	r0								// **
clsr	sreg_b_cf
sbbz	r1								// **
cmpi	r0,0x36-1
bne		opc_r_fail
cmpi	r1,0x5a
bne		opc_r_fail
// ================================
// cmbz
ldbiu	r2,0x01
ldbiu	r3,0xff
sesr	sreg_b_cf
cmbz	r2								// **
movfc	r4,sr
clsr	sreg_b_cf
cmbz	r3								// **
movfc	r5,sr
cmpi	r2,0x01
bne		opc_r_fail
cmpi	r3,0xff
bne		opc_r_fail
andi	r4,sreg_fg
cmpi	r4,sreg_zf
andi	r5,sreg_fg
cmpi	r5,sreg_nf
// ================================
// adcz
ldbiu	r4,0xec
ldbiu	r5,0x64
sesr	sreg_b_cf
adcz	r4								// **
clsr	sreg_b_cf
adcz	r5								// **
cmpi	r4,0xec+1
bne		opc_r_fail
cmpi	r5,0x64
bne		opc_r_fail
// ================================
// ldli
ldli	r0								// **
ldli_imm32:
datl	0x87654321
ldwi	r7,lab_ldli_imm32
ldl		r1,[r7]
cmp		r0,r1
bne		opc_r_fail
// ================================
// cendl
ldli	r3,0xf8e7d6c5
ldli	r4,0xc5d6e7f8
cendl	r3								// **
movfc	r5,sr
cmp		r3,r4
bne		opc_r_fail
andi	r5,sreg_fg
cmpi	r5,sreg_nf
bne		opc_r_fail
// ================================
// pushl
ldc		sp,ramtop+86
movfc	r1,sp
ldli	r2,0x6789abcd
pushl	r2								// **
movfc	r3,sp
popw	r4
popw	r5
lsfti	r4,16
or		r4,r5
subi	r1,4
cmp		r4,r2
bne		opc_r_fail
cmp		r3,r1
bne		opc_r_fail
// ================================
// popl
ldc		sp,ramtop+44
movfc	r2,sp
ldli	r3,0x6789abcd
mov		r4,r3
pushw	r4
lsfti	r4,-16
pushw	r4
popl	r5								// **
movfc	r6,sp
cmp		r5,r3
bne		opc_r_fail
cmp		r2,r6
bne		opc_r_fail
// ================================
// pushcl
ldwi	r3,ramtop+0x24
movtc	sp,r3
ldli	r4,0x02468ace
movtc	tr,r4
pushcl	tr								// **
movfc	r0,sp
subi	r3,4
cmp		r0,r3
bne		opc_r_fail
popl	r5
cmp		r5,r4
bne		opc_r_fail
// ================================
// popcl
ldwi	r4,ramtop+0x50
movtc	sp,r4
ldli	r5,0x13579abdf
pushl	r5
not		r5
movtc	tr,r5
popcl	tr								// **
movfc	r6,sp
cmp		r6,r4
bne		opc_r_fail
movfc	r7,tr
not		r5
cmp		r7,r5
bne		opc_r_fail
// ================================
// jall
ldbiu	r3,0
ldwi	r4,ramtop+0x18
movtc	sp,r4
ldwi	r7,lab_jall_addr1
jall	r7								// **
jall_addr2:
cmpi	r3,0
beq		opc_r_fail
movfc	r0,sp
addi	r4,4
cmp		r0,r4
beq		jall_pass4
bra		opc_r_fail

jall_addr1:
movfc	r0,sp
ldl		r1,[r0]
subi	r4,4
cmp		r0,r4
bne		opc_r_fail
ldwi	r3,lab_jall_addr2
cmp		r1,r3
bne		opc_r_fail
popl	r6
jmp		r6
jall_pass4:
// ================================
// exsgl
ldli	r4,0x8a7b6c5d
ldli	r5,0x00006c5d
exsgl	r4								// **
movfc	r6,sr
cmp		r4,r5
bne		opc_r_fail
andi	r6,sreg_fg
cmpi	r6,0
bne		opc_r_fail
ldli	r7,0xa1b2c3d4
ldli	r0,0xffffc3d4
exsgl	r7								// **
movfc	r1,sr
cmp		r7,r0
bne		opc_r_fail
andi	r1,sreg_fg
cmpi	r1,sreg_nf
bne		opc_r_fail
// ================================
// exzrl
ldli	r5,0xacbd1324
ldli	r6,0x00001324
exzrl	r5								// **
movfc	r7,sr
cmp		r5,r6
bne		opc_r_fail
andi	r7,sreg_fg
cmpi	r7,0
bne		opc_r_fail
// ================================
// neg
ldli	r5,0x456789ab
neg		r5								// **
movfc	r6,sr
ldli	r7,-0x456789ab
cmp		r5,r7
bne		opc_r_fail
andi	r6,sreg_fg
cmpi	r6,sreg_nf|sreg_cf
bne		opc_r_fail
ldli	r0,0x80000000
mov		r2,r0
neg		r0								// **
movfc	r1,sr
cmp		r0,r2
bne		opc_r_fail
andi	r1,sreg_fg
cmpi	r1,sreg_nf|sreg_cf|sreg_vf
bne		opc_r_fail
// ================================
// not
ldli	r6,0xf1e2d3c4
not		r6								// **
movfc	r7,sr
ldli	r0,~0xf1e2d3c4
cmp		r6,r0
bne		opc_r_fail
andi	r7,sreg_fg
cmpi	r7,0
bne		opc_r_fail
// ================================
// cendw
ldli	r7,0x01234567
ldli	r0,0x23016745
cendw	r7								// **
movfc	r1,sr
cmp		r7,r0
bne		opc_r_fail
andi	r1,sreg_fg
cmpi	r1,0
bne		opc_r_fail
// ================================
// exsgw
ldli	r0,0x13579bdf
ldli	r1,0xffffffdf
exsgw	r0								// **
movfc	r2,sr
cmp		r0,r1
bne		opc_r_fail
andi	r2,sreg_fg
cmpi	r2,sreg_nf
bne		opc_r_fail
// ================================
// pushw
ldwi	r1,ramtop+0x3c
movtc	sp,r1
ldli	r2,0xeca86420
pushw	r2								// **
movfc	r3,sp
subi	r1,2
cmp		r3,r1
bne		opc_r_fail
ldw		r4,[r1]
exzrl	r2
cmp		r4,r2
bne		opc_r_fail
// ================================
// popw
ldwi	r2,ramtop+0x30
movtc	sp,r2
ldli	r3,0x1e3c5a69
stl		[r2],r3
popw	r4								// **
movfc	r5,sp
lsfti	r3,-16
cmp		r4,r3
bne		opc_r_fail
addi	r2,2
cmp		r5,r2
bne		opc_r_fail
// ================================
// pushcw
ldwi	r3,ramtop+0x88
movtc	sp,r3
ldli	r4,0x13579bdf
movtc	tr,r4
pushcw	tr								// **
movfc	r0,sp
subi	r3,2
cmp		r0,r3
bne		opc_r_fail
popw	r5
exzrl	r4
cmp		r5,r4
bne		opc_r_fail
// ================================
// popcw
ldwi	r4,ramtop+0x4a
movtc	sp,r4
ldli	r5,0x90817263
pushl	r5
not		r5
movtc	tr,r5
popcw	tr								// **
movfc	r6,sp
subi	r4,2
cmp		r6,r4
bne		opc_r_fail
movfc	r7,tr
not		r5
lsfti	r5,-16
cmp		r7,r5
bne		opc_r_fail

// ================================
bra		opc_r_pass

opc_r_fail:
jmpr7	tstfail

opc_r_pass:


// ================================
// opcode RR
// ================================
// ldl
ldwi	r0,ramtop+0x0248
ldwi	r1,0xcdef
ldwi	r2,0x4567
stw		[r0],r1
addi	r0,2
stw		[r0],r2
subi	r0,2
ldl		r3,[r0]							// **
lsfti	r1,16
or		r1,r2
cmp		r3,r1
bne		opc_rr_fail
// ================================
// stl
ldwi	r1,ramtop+0x010e
ldli	r2,0xabcd0123
stl		[r1],r2							// **
ldw		r3,[r1]
addi	r1,2
ldw		r4,[r1]
lsfti	r3,16
or		r3,r4
cmp		r3,r2
bne		opc_rr_fail
// ================================
// ldlsp
ldc		sp,ramtop+0x0158
ldwi	r2,0xace0
ldwi	r3,0x3579
ldbiu	r4,0x46
stwsp	[r4],r2
addi	r4,2
stwsp	[r4],r3
subi	r4,2
ldlsp	r5,[r4]							// **
movfc	r6,tr
movfc	r7,sp
add		r7,r4
cmp		r6,r7
bne		opc_rr_fail
lsfti	r2,16
or		r2,r3
cmp		r5,r2
bne		opc_rr_fail
// ================================
// stlsp
ldc		sp,ramtop+0x0052
ldbiu	r3,0x22
ldli	r4,0x7654edcb
stlsp	[r3],r4							// **
movfc	r5,tr
movfc	r6,sp
add		r6,r3
cmp		r5,r6
bne		opc_rr_fail
ldwsp	r7,[r3]
addi	r3,2
ldwsp	r0,[r3]
lsfti	r7,16
or		r7,r0
cmp		r7,r4
bne		opc_rr_fail
// ================================
// or
ldli	r4,0x468ace02
ldli	r5,0x3579bdf1
or		r4,r5							// **
movfc	r6,sr
ldli	r7,0x468ace02|0x3579bdf1
cmp		r4,r7
bne		opc_rr_fail
andi	r6,sreg_fg
cmpi	r6,0
bne		opc_rr_fail
// ================================
// and
ldli	r5,0x87654321
ldli	r6,0xfedcba98
and		r5,r6							// **
movfc	r7,sr
ldli	r0,0x87654321&0xfedcba98
cmp		r5,r0
bne		opc_rr_fail
andi	r7,sreg_fg
cmpi	r7,sreg_nf
bne		opc_rr_fail
// ================================
// eor
ldli	r6,0x3579bdf1
ldli	r7,0x6420eca8
eor		r6,r7							// **
movfc	r0,sr
ldli	r1,0x3579bdf1^0x6420eca8
cmp		r6,r1
bne		opc_rr_fail
andi	r0,sreg_fg
cmpi	r0,0
bne		opc_rr_fail
// ================================
// mov
ldli	r7,0xa9b8c7d6
ldcl	sr,sreg_fg
mov		r0,r7							// **
movfc	r1,sr
cmp		r0,r7
bne		opc_rr_fail
andi	r1,sreg_fg
cmpi	r1,sreg_nf
bne		opc_rr_fail
// ================================
// movtc
ldwi	r0,ramtop+0x134
ldcl	sr,sreg_fg
movtc	sp,r0							// **
bmi		opc_rr_fail
bcs		opc_rr_fail
bvs		opc_rr_fail
beq		opc_rr_fail
ldwi	r1,0x8769
pushw	r1
subi	r0,2
ldw		r2,[r0]
cmp		r2,r1
bne		opc_rr_fail
// ================================
// movfc
ldcl	sr,sreg_fg
movfc	r1,pc							// **
movfc_pcnt:
bmi		opc_rr_fail
bcs		opc_rr_fail
bvs		opc_rr_fail
beq		opc_rr_fail
ldwi	r2,lab_movfc_pcnt
cmp		r1,r2
bne		opc_rr_fail
// ================================
// add
ldli	r7,0x9a8b7c6d
ldli	r0,0xf1e2d3c4
add		r7,r0							// **
movfc	r1,sr
ldli	r2,0x9a8b7c6d+0xf1e2d3c4
cmp		r7,r2
bne		opc_rr_fail
andi	r1,sreg_fg
cmpi	r1,sreg_nf|sreg_cf
bne		opc_rr_fail
// ================================
// adc
ldli	r0,0x1234aa55
ldli	r1,0x2468cc33
ldcl	sr,sreg_cf
adc		r0,r1							// **
movfc	r2,sr
ldli	r3,0x1234aa55+0x2468cc33+1
cmp		r0,r3
bne		opc_rr_fail
andi	r2,sreg_fg
cmpi	r2,0
bne		opc_rr_fail
// ================================
// sub
ldli	r1,0x8642eecc
ldli	r2,0x135755aa
sub		r1,r2							// **
movfc	r3,sr
ldli	r4,0x8642eecc-0x135755aa
cmp		r1,r4
bne		opc_rr_fail
andi	r3,sreg_fg
cmpi	r3,sreg_vf
bne		opc_rr_fail
// ================================
// sbb
ldli	r2,0xfdb97531
ldli	r3,0xbcdef012
ldcl	sr,sreg_cf
sbb		r2,r3							// **
movfc	r4,sr
ldli	r5,0xfdb97531-0xbcdef012-1
cmp		r2,r5
bne		opc_rr_fail
andi	r4,sreg_fg
cmpi	r4,0
bne		opc_rr_fail
// ================================
// cmp
ldli	r3,0x46807531
ldli	r4,0x46807531
cmp		r3,r4							// **
movfc	r5,sr
andi	r2,sreg_fg
cmpi	r2,sreg_zf
bne		opc_rr_fail
// ================================
// cmb
ldli	r4,0x8765ace1
ldli	r5,0x8765ace0
ldcl	sr,sreg_cf|sreg_zf
cmb		r4,r5							// **
movfc	r6,sr
andi	r6,sreg_fg
cmpi	r6,sreg_zf
bne		opc_rr_fail
// ================================
// ldb
ldwi	r5,0x786c
ldwi	r6,ramtop+0x208
stw		[r6],r5
ldb		r7,[r6]							// **
addi	r6,1
ldb		r0,[r6]							// **
lsfti	r7,8
or		r7,r0
cmp		r7,r5
bne		opc_rr_fail
// ================================
// stb
ldwi	r6,0xc35a
ldwi	r7,ramtop+0x11
mov		r0,r6
lsfti	r0,-8
stb		[r7],r6							// **
subi	r7,1
stb		[r7],r0							// **
ldw		r1,[r7]
cmp		r1,r6
bne		opc_rr_fail
// ================================
// ldw
ldw_imm:
ldli	r7,0x68ac
ldwi	r0,lab_ldw_imm+4
ldw		r1,[r0]							// **
cmp		r1,r7
bne		opc_rr_fail
// ================================
// stw
ldwi	r0,0xa9b8
ldwi	r1,ramtop+0x74
stw		[r1],r0							// **
ldw		r2,[r1]
cmp		r2,r0
bne		opc_rr_fail
// ================================
// lsft, left shift
ldli	r1,0x0123bcde
ldbiu	r2,18
lsft	r1,r2							// **
movfc	r3,sr
ldli	r2,0x0123bcde<<18
cmp		r1,r2
bne		opc_rr_fail
andi	r3,sreg_fg
cmpi	r3,sreg_nf|sreg_vf
bne		opc_rr_fail
// ================================
// lsft, right shift
ldli	r2,0x89ab5432
ldbiu	r3,-17
lsft	r2,r3							// **
movfc	r4,sr
ldli	r5,0x89ab>>1
cmp		r2,r5
bne		opc_rr_fail
andi	r4,sreg_fg
cmpi	r4,sreg_cf
bne		opc_rr_fail
// ================================
// asft, left shift
ldli	r3,0x1357afed
ldbiu	r4,24
asft	r3,r4							// **
movfc	r5,sr
ldli	r6,0x1357afed<<24
cmp		r3,r6
bne		opc_rr_fail
andi	r5,sreg_fg
cmpi	r5,sreg_nf|sreg_cf
bne		opc_rr_fail
// ================================
// asft, right shift
ldli	r4,0x8ace1234
ldwi	r5,-21
asft	r4,r5							// **
movfc	r6,sr
ldli	r7,0x8ace1234>>21
cmp		r4,r7
bne		opc_rr_fail
andi	r6,sreg_fg
cmpi	r6,sreg_nf
bne		opc_rr_fail
// ================================
// csft, left shift
ldli	r3,0xfedcba98
ldbiu	r4,18
sesr	sreg_b_cf
csft	r3,r4							// **
movfc	r5,sr
ldli	r6,0xea63fdb9
cmp		r3,r6
bne		opc_rr_fail
andi	r5,sreg_fg
cmpi	r5,sreg_nf
bne		opc_rr_fail
// ================================
// csft, right shift
ldli	r4,0x76543210
ldwi	r5,-12
clsr	sreg_b_cf
csft	r4,r5							// **
movfc	r6,sr
ldli	r7,0x42076543
cmp		r4,r7
bne		opc_rr_fail
andi	r6,sreg_fg
cmpi	r6,0
bne		opc_rr_fail
// ================================
// ldwsp
ldbiu	r5,0x1e
ldwi	r6,ramtop+0x128
movtc	sp,r6
ldwi	r7,0x7654
ldc		tr,0
add		r6,r5
stw		[r6],r7
ldwsp	r0,[r5]							// **
cmp		r0,r7
bne		opc_rr_fail
movfc	r1,tr
cmp		r1,r6
bne		opc_rr_fail
// ================================
// stwsp
ldbiu	r6,0x24
ldwi	r7,ramtop+0x202
movtc	sp,r7
ldwi	r0,0x659a
stwsp	[r6],r0							// **
add		r6,r7
ldw		r1,[r6]
cmp		r1,r0
bne		opc_rr_fail
movfc	r2,tr
cmp		r2,r6
bne		opc_rr_fail
// ================================
// mulu
ldwi	r7,0x0210
ldwi	r0,0x0357
ldli	r1,0x0210*0x0357
sesr	sreg_b_ml
mulu	r7,r0							// **
cmp		r7,r1
bne		opc_rr_fail
cmpi	r0,0
bne		opc_rr_fail
# 64 bit product test
ldwi	r2,0x7531
mulu	r1,r2							// **
cmpi	r2,0
bne		opc_rr_fail
// ================================
// muls
ldwi	r0,0x03af
neg		r0
ldwi	r1,0x02ca
mov		r3,r1
ldli	r2,-0x03af*0x02ca
clsr	sreg_b_ml
muls	r0,r1							// **
cmp		r0,r2
bne		opc_rr_fail
cmp		r1,r3
bne		opc_rr_fail
// ================================
// mulur
ldli	r2,0x0002_3456
ldli	r3,0x0003_4567
ldli	r4,0x0002_3456*0x0003_4567
mov		r5,r3
sesr	sreg_b_ml
mulur	r2,r3							// **
cmp		r2,r4
bne		opc_rr_fail
cmp		r3,r5
bne		opc_rr_fail
// ================================
// mulsr
ldli	r1,0x0001_3579
neg		r1
ldli	r2,0x0002_468a
ldli	r3,-0x0001_3579*0x0002_468a
clsr	sreg_b_ml
mulsr	r1,r2							// **
cmp		r1,r3
bne		opc_rr_fail
cmpi	r2,0
bne		opc_rr_fail
// ================================
// divu
ldli	r1,0x7ca86420
ldli	r2,0x00008765
ldli	r3,0x7ca86420/0x00008765
ldli	r4,0x7ca86420%0x00008765
sesr	sreg_b_dr
divu	r1,r2							// **
cmp		r1,r3
bne		opc_rr_fail
cmp		r2,r4
bne		opc_rr_fail
// ================================
// divs
ldli	r0,0x0bcd1234
neg		r0
ldli	r1,0x00000345
ldli	r2,(-0x0bcd1234)/0x00000345
ldli	r3,(-0x0bcd1234)%0x00000345
mov		r4,r1
clsr	sreg_b_dr
divs	r0,r1							// **
cmp		r0,r2
bne		opc_rr_fail
cmp		r1,r4
bne		opc_rr_fail
// ================================
// divur
ldli	r1,0x7531fdb9
ldli	r2,0x0000fedc
ldli	r3,0x7531fdb9/0x0000fedc
ldli	r4,0x7531fdb9%0x0000fedc
clsr	sreg_b_dr
divur	r1,r2							// **
cmp		r1,r3
bne		opc_rr_fail
cmp		r2,r4
bne		opc_rr_fail
// ================================
// divsr
ldli	r0,0x0abcdef0
neg		r0
ldli	r1,0x00013579
ldli	r2,(-0x0abcdef0)/0x00013579
mov		r3,r1
sesr	sreg_b_dr
divsr	r0,r1							// **
cmp		r0,r2
bne		opc_rr_fail
cmp		r1,r3
bne		opc_rr_fail

// ================================
bra		opc_rr_pass

opc_rr_fail:
jmpr7	tstfail

opc_rr_pass:


// ================================
// opcode RI
// ================================
// ori
ldli	r1,0x9876abcd
ori		r1,0x5c							// **
movfc	r2,sr
ldli	r3,0x9876abcd|0x5c
cmp		r1,r3
bne		opc_ri_fail
andi	r2,sreg_fg
cmpi	r2,sreg_nf
bne		opc_ri_fail
// ================================
// andi
ldli	r2,0x7612bc96
andi	r2,0x69							// **
movfc	r3,sr
cmpi	r2,0
bne		opc_ri_fail
andi	r3,sreg_fg
cmpi	r3,sreg_zf
bne		opc_ri_fail
// ================================
// eori
ldli	r3,0x45ab34ed
eori	r3,0xa5							// **
movfc	r4,sr
ldli	r5,0x45ab34ed^0xa5
cmp		r3,r5
bne		opc_ri_fail
andi	r4,sreg_fg
cmpi	r4,0
bne		opc_ri_fail
// ================================
// addi
ldli	r4,0x02468ace
addi	r4,0xff							// **
movfc	r5,sr
ldli	r6,0x02468ace+0xff
cmp		r4,r6
bne		opc_ri_fail
andi	r5,sreg_fg
cmpi	r5,0
bne		opc_ri_fail
// ================================
// subi
ldli	r5,0x80000076
subi	r5,0xfe							// **
movfc	r6,sr
ldli	r7,0x80000076-0xfe
cmp		r5,r7
bne		opc_ri_fail
andi	r6,sreg_fg
cmpi	r6,sreg_vf
bne		opc_ri_fail
// ================================
// cmpi
ldli	r6,0x9753bcde
mov		r0,r6
cmpi	r6,0xec							// **
movfc	r7,sr
cmp		r6,r0
bne		opc_ri_fail
andi	r7,sreg_fg
cmpi	r7,sreg_nf
bne		opc_ri_fail
// ================================
// ldbiu
ldbiu	r7,0
not		r7
ldcl	sr,sreg_fg
ldbiu	r7,0xeb							// **
movfc	r0,sr
cmpi	r7,0xeb
bne		opc_ri_fail
andi	r0,sreg_fg
cmpi	r0,sreg_fg
bne		opc_ri_fail
// ================================
// ldbil
ldli	r0,0x13245768
ldcl	sr,sreg_fg
ldbil	r0,0x93							// **
movfc	r1,sr
ldli	r2,0x00005793
cmp		r0,r2
bne		opc_ri_fail
andi	r1,sreg_fg
cmpi	r1,sreg_fg
bne		opc_ri_fail
// ================================
// ldbih
ldli	r1,0xabcd8934
ldcl	sr,sreg_fg
ldbih	r1,0xe1							// **
movfc	r2,sr
ldwi	r3,0x0000e134
cmp		r1,r3
bne		opc_ri_fail
andi	r2,sreg_fg
cmpi	r2,sreg_fg
bne		opc_ri_fail
// ================================
// ldcl
ldli	r2,0xf2e3d4c5
movtc	tr,r2
ldcl	tr,0xd2							// **
movfc	r3,tr
ldli	r4,0x0000d4d2
cmp		r3,r4
bne		opc_ri_fail
// ================================
// ldch
ldli	r3,0xe8d7c6b5
movtc	sp,r3
ldch	sp,0x91							// **
movfc	r4,sp
ldli	r5,0x000091b5
cmp		r4,r5
bne		opc_ri_fail
// ================================
// lsfti, left shift
ldli	r4,0x2a3b4c5d
lsfti	r4,22							// **
movfc	r5,sr
ldli	r6,0x2a3b4c5d<<22
cmp		r4,r6
bne		opc_ri_fail
andi	r5,sreg_fg
cmpi	r5,sreg_cf|sreg_vf
bne		opc_ri_fail
// lsfti, right shift
ldli	r5,0x09b8c7d6
lsfti	r5,-29							// **
movfc	r6,sr
ldli	r7,0x09b8c7d6>>29
cmp		r5,r7
bne		opc_ri_fail
andi	r6,sreg_fg
cmpi	r6,sreg_zf
bne		opc_ri_fail
// ================================
// asfti, left shift
ldli	r6,0x2b3c4d5e
asfti	r6,19							// **
movfc	r7,sr
ldli	r0,0x2b3c4d5e<<19
cmp		r6,r0
bne		opc_ri_fail
andi	r7,sreg_fg
cmpi	r7,0
bne		opc_ri_fail
// asfti, right shift
ldli	r7,0xa0b9c8d7
asfti	r7,-18							// **
movfc	r0,sr
ldli	r1,0xa0b9c8d7>>18
cmp		r7,r1
bne		opc_ri_fail
andi	r0,sreg_fg
cmpi	r0,sreg_nf
bne		opc_ri_fail
// ================================
// csfti, left shift
ldli	r6,0x1f2e3d4c
clsr	sreg_b_cf
csfti	r6,10							// **
movfc	r7,sr
ldli	r0,0xb8f5303e
cmp		r6,r0
bne		opc_ri_fail
andi	r7,sreg_fg
cmpi	r7,sreg_nf
bne		opc_ri_fail
// csfti, right shift
ldli	r7,0xa9b8c7d6
sesr	sreg_b_cf
csfti	r7,-6							// **
movfc	r0,sr
ldli	r1,0xb6a6e31f
cmp		r7,r1
bne		opc_ri_fail
andi	r0,sreg_fg
cmpi	r0,sreg_nf
bne		opc_ri_fail

// ================================
bra		opc_ri_pass

opc_ri_fail:
jmpr7	tstfail

opc_ri_pass:


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

