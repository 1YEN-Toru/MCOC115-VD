// ================================
//	Tennessine
//		all instructions self test
//		(c) 2023	1YEN Toru
//
//
//		2025/02/22	ver.1.04
//			corresponding to poly-core cpu edition
//			upd: temporary data address; ramtop to [idrgramt]
//			add: user macro ldrto
//
//		2024/03/16	ver.1.02
//			corresponding to amp dual core cpu edition
//
//		2023/07/08	ver.1.00
//
// ================================
asm		"mcoc_irom.mem"
#asm		"asm_mcvm.v"
incl	"mcoc115.incl"
incl	"tnsn_mcr_word.incl"
# ================================
# string macros
def		s,""							// simulation "" / fpga "#"
# constants
equ		tnsn_dual_cpu,2					// cpu id (1~14) for check
# ================================
# user macros
macro	ldrto	rd,ofst
# load $(rd),ramtop+$(ofst)
ldwi	$(rd),idrgramt
ldw		$(rd),[$(rd)]
addi	$(rd),$(ofst)
endm
# ================================


// ================================
// register check
// ================================
// initial value
// front (lower)
cmpi	r0,0
bne		reg_fail
cmpi	r1,0
bne		reg_fail
cmpi	r2,0
bne		reg_fail
cmpi	r3,0
bne		reg_fail
cmpi	r4,0
bne		reg_fail
cmpi	r5,0
bne		reg_fail
cmpi	r6,0
bne		reg_fail
cmpi	r7,0
bne		reg_fail
// back (higher)
cendw	r0
cendw	r1
cendw	r2
cendw	r3
cendw	r4
cendw	r5
cendw	r6
cendw	r7
cmpi	r0,0
bne		reg_fail
cmpi	r1,0
bne		reg_fail
cmpi	r2,0
bne		reg_fail
cmpi	r3,0
bne		reg_fail
cmpi	r4,0
bne		reg_fail
cmpi	r5,0
bne		reg_fail
cmpi	r6,0
bne		reg_fail
cmpi	r7,0
bne		reg_fail

// sr register, check cpu id to test
movfc	r0,sr
cendw	r0
lsri	r0,sreg_b_id0-8
andi	r0,sreg_id_15>>sreg_b_id0
beq		reg_next
cmpi	r0,sreg_id_15>>sreg_b_id0
bne		pcnt+2							// cpu15 is cpu1 (main cpu)
ldbiu	r0,sreg_id_1>>sreg_b_id0
cmpi	r0,tnsn_dual_cpu
beq		reg_next						// cpu for dut, ok go
ldbiu	r0,tnsn_dual_cpu
cmpi	r0,sreg_id_1>>sreg_b_id0
blo		reg_fail						// tnsn_dual_cpu must set 1~14
cmpi	r0,sreg_id_15>>sreg_b_id0
bhs		reg_fail						// tnsn_dual_cpu must set 1~14
// stop cpu not to test
pause
bra		pcnt-4

reg_next:

// set data
rept	8
// r$(repti)
ldwi	r$(repti),0x1234
cmpi	r$(repti),0x34
bne		reg_fail
cendw	r$(repti)
cmpi	r$(repti),0x12
bne		reg_fail
endr
// ts core check; can not write sr[bkn]
ldcl	sr,sreg_bk_3
movfc	r0,sr
andi	r0,sreg_bk_3
cmpi	r0,sreg_bk_0
bne		reg_fail
// control register
movfc	r0,sp
cmpi	r0,0
bne		reg_fail
movfc	r0,iv
cmpi	r0,0
bne		reg_fail
movfc	r0,tr
cmpi	r0,0
bne		reg_fail

// ================================
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
ldrto	r4,24
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
cmpw	r3,r4
bne		opc_no_fail
cmpi	r2,1
bne		opc_no_fail
// ================================
// rti
ldrto	r0,6
movtc	sp,r0
ldc		iv,lab_rti_vect
// interrupt emulation
movfc	r1,iv
movfc	r0,pc
rti_mvpc:
addwi	r0,lab_rti_retn-lab_rti_mvpc
pushw	r0
ldcl	sr,sreg_fg
pushcw	sr
jmp		r1
// return address
rti_retn:
movfc	r0,sr
cmpi	r0,sreg_fg
beq		rti_pass
bra		opc_no_fail

rti_vect:
ldcl	sr,sreg_bk_3
rti										// **

rti_pass:
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
bra		opc_no_pass

opc_no_fail:
jmpr7	tstfail

opc_no_pass:


// ================================
// opcode BR
// ================================
// bra
bra		bra_pass						// **
bra		opc_br_fail
bra_pass:
// ================================
// bne
ldcl	sr,(~sreg_zf)
bne		bne_pass						// **
bne_fail:
bra		opc_br_fail
bne_pass:
ldcl	sr,(sreg_zf)
bne		bne_fail						// **
// ================================
// beq
ldcl	sr,(sreg_zf)
beq		beq_pass						// **
beq_fail:
bra		opc_br_fail
beq_pass:
ldcl	sr,(~sreg_zf)
beq		beq_fail						// **
// ================================
// bcc
ldcl	sr,(~sreg_cf)
bcc		bcc_pass						// **
bcc_fail:
bra		opc_br_fail
bcc_pass:
ldcl	sr,(sreg_cf)
bcc		bcc_fail						// **
// ================================
// bcs
ldcl	sr,(sreg_cf)
bcs		bcs_pass						// **
bcs_fail:
bra		opc_br_fail
bcs_pass:
ldcl	sr,(~sreg_cf)
bcs		bcs_fail						// **
// ================================
// bpl
ldcl	sr,(~sreg_nf)
bpl		bpl_pass						// **
bpl_fail:
bra		opc_br_fail
bpl_pass:
ldcl	sr,(sreg_nf)
bpl		bpl_fail						// **
// ================================
// bmi
ldcl	sr,(sreg_nf)
bmi		bmi_pass						// **
bmi_fail:
bra		opc_br_fail
bmi_pass:
ldcl	sr,(~sreg_nf)
bmi		bmi_fail						// **
// ================================
// bvc
ldcl	sr,(~sreg_vf)
bvc		bvc_pass						// **
bvc_fail:
bra		opc_br_fail
bvc_pass:
ldcl	sr,(sreg_vf)
bvc		bvc_fail						// **
// ================================
// bvs
ldcl	sr,(sreg_vf)
bvs		bvs_pass						// **
bvs_fail:
bra		opc_br_fail
bvs_pass:
ldcl	sr,(~sreg_vf)
bvs		bvs_fail						// **
// ================================
// bge
ldcl	sr,sreg_nf|sreg_vf
bge		bge_pass						// **
bge_fail:
bra		opc_br_fail
bge_pass:
ldcl	sr,sreg_nf
bge		bge_fail						// **
// ================================
// blt
ldcl	sr,sreg_vf
blt		blt_pass						// **
blt_fail:
bra		opc_br_fail
blt_pass:
ldcl	sr,0x00
blt		blt_fail						// **

// ================================
bra		opc_br_pass

opc_br_fail:
jmpr7	tstfail

opc_br_pass:


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
// jmp
ldwi	r0,0
ldwi	r5,lab_jmp_addr1
jmp		r5								// **
jmp_addr2:
eori	r0,0xaa
ldwi	r1,lab_jmp_addr3
jmp		r1								// **
jmp_addr4:
ori		r0,0x80
ldwi	r2,lab_jmp_addr5
jmp		r2								// **
jmp_addr1:
addi	r0,0x3c
ldwi	r6,lab_jmp_addr2
jmp		r6								// **
jmp_addr3:
subi	r0,0x69
ldwi	r4,lab_jmp_addr4
jmp		r4								// **
jmp_addr5:
cmpi	r0,0xad
bne		opc_r_fail
// ================================
// jalw
ldbiu	r3,0
ldrto	r4,16
movtc	sp,r4
ldwi	r7,lab_jalw_addr1
jalw	r7								// **
jalw_addr2:
cmpi	r3,0
beq		opc_r_fail
movfc	r0,sp
addwi	r4,2
cmpw	r0,r4
beq		jalw_pass4
bra		opc_r_fail

jalw_addr1:
movfc	r0,sp
ldw		r1,[r0]
subwi	r4,2
cmpw	r0,r4
bne		opc_r_fail
ldwi	r3,lab_jalw_addr2
cmpw	r1,r3
bne		opc_r_fail
popw	r6
jmp		r6
jalw_pass4:
// ================================
// sesrl
ldcl	sr,0x00
sesrl	sreg_b_zf						// **
movfc	r0,sr
andi	r0,0xff
cmpi	r0,sreg_zf
bne		opc_r_fail
// ================================
// sesrh; ts does not have writable bit in sr[15:8]
ldch	sr,0x00
sesrh	sreg_b_dr						// **
movfc	r0,sr
cendw	r0
andi	r0,~(sreg_id_15>>8)
bne		opc_r_fail
// ================================
// clsrl
ldcl	sr,sreg_fg
clsrl	sreg_b_nf						// **
movfc	r0,sr
andi	r0,0xff
cmpi	r0,sreg_fg&(~sreg_nf)
bne		opc_r_fail
// ================================
// clsrh; ts does not have writable bit in sr[15:8]
ldch	sr,(sreg_ml|sreg_dr)>>8
clsrh	sreg_b_ml						// **
movfc	r0,sr
cendw	r0
andi	r0,~(sreg_id_15>>8)
bne		opc_r_fail
// ================================
// neg
ldwi	r0,0x3a
neg		r0								// **
movfc	r1,sr
ldwi	r2,0xffc6
cmp		r0,r2
bne		opc_r_fail
andi	r1,sreg_fg
cmpi	r1,sreg_nf|sreg_cf
bne		opc_r_fail
ldwi	r0,0x0080
mov		r2,r0
neg		r0								// **
movfc	r1,sr
cmp		r0,r2
bne		opc_r_fail
andi	r1,sreg_fg
cmpi	r1,sreg_nf|sreg_cf|sreg_vf
bne		opc_r_fail
cendw	r0
cmpi	r0,0x00
bne		opc_r_fail
// ================================
// not
ldbiu	r0,0xca
exsgw	r0
not		r0								// **
movfc	r1,sr
cmpi	r0,0x35
bne		opc_r_fail
cendw	r0
cmpi	r0,0xff
bne		opc_r_fail
andi	r1,sreg_fg
cmpi	r1,0x00
bne		opc_r_fail
// ================================
// cendw
ldcl	sr,sreg_fg
ldwi	r0,0x5678
cendw	r0								// **
movfc	r1,sr
ldwi	r2,0x7856
cmpw	r0,r2
bne		opc_r_fail
andi	r1,sreg_fg
cmpi	r1,sreg_fg
bne		opc_r_fail
// ================================
// exsgw
ldwi	r0,0x89ab
exsgw	r0								// **
movfc	r1,sr
ldwi	r2,0xffab
cmpw	r0,r2
bne		opc_r_fail
andi	r1,sreg_fg
cmpi	r1,sreg_nf
bne		opc_r_fail
// ================================
// pushw
ldrto	r4,0x20
movtc	sp,r4
ldwi	r0,0x9abc
pushw	r0								// **
subwi	r4,2
movfc	r1,sp
cmpw	r1,r4
bne		opc_r_fail
ldw		r2,[r4]
cmpw	r2,r0
bne		opc_r_fail
// ================================
// popw
ldrto	r4,0x30
ldwi	r0,0x2468
stw		[r4],r0
movtc	sp,r4
popw	r1								// **
movfc	r2,sp
cmpw	r1,r0
bne		opc_r_fail
addwi	r4,2
cmpw	r2,r4
bne		opc_r_fail
// ================================
// pushcw
ldrto	r4,0x18
movtc	sp,r4
ldcl	sr,sreg_fg
pushcw	sr								// **
movfc	r0,sr
subwi	r4,2
movfc	r1,sp
cmpw	r1,r4
bne		opc_r_fail
popw	r2
cmpw	r2,r0
bne		opc_r_fail
// ================================
// popcw
ldrto	r4,0x28
ldwi	r0,0x1248
stw		[r4],r0
movtc	sp,r4
popcw	iv								// **
movfc	r1,sp
movfc	r2,iv
addwi	r4,2
cmpw	r1,r4
bne		opc_r_fail
cmpw	r2,r0
bne		opc_r_fail

// ================================
bra		opc_r_pass

opc_r_fail:
jmpr7	tstfail

opc_r_pass:


// ================================
// opcode RR
// ================================
// or
ldwi	r0,0x3ca5
ldwi	r1,0x9618
or		r0,r1							// **
movfc	r2,sr
ldwi	r3,0x3cbd
cmpw	r0,r3
bne		opc_rr_fail
andi	r2,sreg_fg
cmpi	r2,sreg_nf
bne		opc_rr_fail
// ================================
// and
ldwi	r0,0x8ace
ldwi	r1,0x5a3c
and		r0,r1							// **
movfc	r2,sr
ldwi	r3,0x8a0c
cmpw	r0,r3
bne		opc_rr_fail
andi	r2,sreg_fg
cmpi	r2,0x00
bne		opc_rr_fail
// ================================
// eor
ldwi	r0,0x36c9
ldwi	r1,0x1234
eor		r0,r1							// **
movfc	r2,sr
ldwi	r3,0x36fd
cmpw	r0,r3
bne		opc_rr_fail
andi	r2,sreg_fg
cmpi	r2,0x00
// ================================
// mov
ldwi	r0,0x8769
ldbih	r1,0x12
ldcl	sr,sreg_fg
mov		r1,r0							// **
movfc	r2,sr
cmp		r0,r1
bne		opc_rr_fail
cendw	r1
cmpi	r1,0x12
bne		opc_rr_fail
andi	r2,sreg_fg
cmpi	r2,0x00
bne		opc_rr_fail
// ================================
// movtc
ldrto	r7,0x24
movtc	sp,r7							// **
ldwi	r0,0x00
subwi	r7,2
stw		[r7],r0
pushw	r7
ldw		r1,[r7]
cmpw	r1,r7
bne		opc_rr_fail
ldwi	r0,0x8000
ldcl	sr,sreg_cf|sreg_vf|sreg_zf
movtc	sp,r0							// **
bmi		opc_rr_fail
bcs		opc_rr_fail
bvs		opc_rr_fail
bne		opc_rr_fail
// ================================
// movfc
ldcl	sr,sreg_fg
movfc	r1,sr							// **
andi	r1,sreg_fg
cmpi	r1,sreg_fg
bne		opc_rr_fail
ldc		sp,0x1200
ldcl	sr,sreg_nf|sreg_cf|sreg_vf
movfc	r1,sp							// **
bmi		opc_rr_fail
bcs		opc_rr_fail
bvs		opc_rr_fail
bne		opc_rr_fail
// ================================
// add
ldwi	r0,0xf50a
ldwi	r1,0x2468
add		r0,r1							// **
movfc	r2,sr
ldwi	r3,0xf572
cmpw	r0,r3
bne		opc_rr_fail
andi	r2,sreg_fg
cmpi	r2,0x00
bne		opc_rr_fail
// ================================
// adc
ldwi	r0,0x2468
ldwi	r1,0x53ca
ldcl	sr,sreg_cf
adc		r0,r1							// **
movfc	r2,sr
ldwi	r3,0x2433
cmpw	r0,r3
bne		opc_rr_fail
andi	r2,sreg_fg
cmpi	r2,sreg_cf
bne		opc_rr_fail
// ================================
// sub
ldwi	r0,0x83c7
ldwi	r1,0x1765
sub		r0,r1							// **
movfc	r2,sr
ldwi	r3,0x8362
cmp		r0,r3
bne		opc_rr_fail
andi	r2,sreg_fg
cmpi	r2,sreg_vf
bne		opc_rr_fail
// ================================
// sbb
ldwi	r0,0xfedc
ldwi	r1,0xba98
ldcl	sr,sreg_cf
sbb		r0,r1							// **
movfc	r2,sr
ldwi	r3,0xfe43
cmp		r0,r3
bne		opc_rr_fail
andi	r2,sreg_fg
cmpi	r2,0x00
bne		opc_rr_fail
// ================================
// cmp
ldwi	r0,0x3210
ldwi	r1,0x5410
cmp		r0,r1							// **
movfc	r2,sr
cmp		r0,r1
bne		opc_rr_fail
andi	r2,sreg_fg
cmpi	r2,sreg_zf
bne		opc_rr_fail
// ================================
// cmb
ldwi	r0,0x1234
ldwi	r1,0x5678
movw	r2,r0
movw	r3,r1
ldcl	sr,sreg_cf
cmb		r0,r1							// **
movfc	r4,sr
andi	r4,sreg_fg
cmpi	r4,sreg_nf|sreg_cf
bne		opc_rr_fail
cmpw	r0,r2
bne		opc_rr_fail
cmpw	r1,r3
bne		opc_rr_fail
ldwi	r0,0x7654
ldwi	r1,0x3254
ldcl	sr,sreg_zf
cmb		r0,r1							// **
movfc	r4,sr
andi	r4,sreg_fg
cmpi	r4,sreg_zf
bne		opc_rr_fail
ldwi	r0,0x3254
ldwi	r1,0x7654
ldcl	sr,sreg_cf|sreg_zf
cmb		r0,r1							// **
movfc	r4,sr
andi	r4,sreg_fg
cmpi	r4,sreg_nf|sreg_cf
bne		opc_rr_fail
// ================================
// ldb
ldwi	r0,0x3a5c
ldrto	r1,0
ldbih	r2,0x7e
ldbih	r3,0x90
stw		[r1],r0
ldb		r2,[r1]							// **
addwi	r1,1
ldb		r3,[r1]							// **
cmpwi	r2,0x3a
bne		opc_rr_fail
cmpwi	r3,0x5c
bne		opc_rr_fail
// ================================
// stb
ldwi	r0,0x9653
ldrto	r1,1
stb		[r1],r0							// **
subwi	r1,1
cendw	r0
stb		[r1],r0							// **
cendw	r0
ldw		r3,[r1]
cmpw	r0,r3
bne		opc_rr_fail
// ================================
// ldw
ldwi	r0,0x7531
ldrto	r1,10
stw		[r1],r0
ldw		r2,[r1]							// **
cmpw	r2,r0
bne		opc_rr_fail
// ================================
// stw
ldwi	r0,0xfedc
ldrto	r1,6
stw		[r1],r0							// **
ldw		r3,[r1]
cmpw	r0,r3
bne		opc_rr_fail
// ================================
// lsft, left shift
ldwi	r0,0xe0f1
ldwi	r1,3
lsft	r0,r1							// **
movfc	r3,sr
ldwi	r2,0xe088
cmpw	r0,r2
bne		opc_rr_fail
andi	r3,sreg_fg
cmpi	r3,sreg_nf|sreg_cf
bne		opc_rr_fail
// ================================
// lsft, right shift
ldwi	r0,0x8abc
ldwi	r1,-5
lsft	r0,r1							// **
movfc	r3,sr
ldwi	r2,0x8a05
cmpw	r0,r2
bne		opc_rr_fail
andi	r3,sreg_fg
cmpi	r3,sreg_cf
bne		opc_rr_fail
// ================================
// asft, left shift
ldwi	r0,0xa536
ldwi	r1,4
asft	r0,r1							// **
movfc	r3,sr
ldwi	r2,0xa560
cmp		r0,r2
bne		opc_rr_fail
andi	r3,sreg_fg
cmpi	r3,sreg_cf|sreg_vf
bne		opc_rr_fail
// ================================
// asft, right shift
ldwi	r0,0x61c9
ldwi	r1,-7
asft	r0,r1							// **
movfc	r3,sr
ldwi	r2,0x61ff
cmp		r0,r2
bne		opc_rr_fail
andi	r3,sreg_fg
cmpi	r3,sreg_nf|sreg_cf
bne		opc_rr_fail
// ================================
// csft, left shift
ldwi	r0,0x1e78
ldwi	r1,3
clsr	sreg_b_cf
# 0 0111 1000 <3< 0 0111 1000 001
csft	r0,r1							// **
movfc	r3,sr
ldwi	r2,0x1ec1
cmp		r0,r2
bne		opc_rr_fail
andi	r3,sreg_fg
cmpi	r3,sreg_nf|sreg_cf
bne		opc_rr_fail
// ================================
// csft, right shift
ldwi	r0,0x5ac6
ldwi	r1,-5
sesr	sreg_b_cf
# 1 1100 0110 >5> 0 0110 1 110
csft	r0,r1							// **
movfc	r3,sr
ldwi	r2,0x5a6e
cmp		r0,r2
bne		opc_rr_fail
andi	r3,sreg_fg
cmpi	r3,0x00
bne		opc_rr_fail
// ================================
// mulu
ldwi	r0,0x0123
ldwi	r1,0x0987
ldwi	r2,0x0100+((0x23*0x87)&0xff)
movw	r3,r1
mulu	r0,r1							// **
cmpw	r0,r2
bne		opc_rr_fail
cmpw	r1,r3
bne		opc_rr_fail
// ================================
// muls
ldwi	r0,0xffed
ldwi	r1,0x0003
ldwi	r2,0xff00+((0xed-0x100)*0x03)&0xff
movw	r3,r1
muls	r0,r1							// **
cmpw	r0,r2
bne		opc_rr_fail
cmpw	r1,r3
bne		opc_rr_fail
// ================================
// mulur
ldwi	r2,0x0246
ldwi	r3,0x0357
ldwi	r4,0x46*0x57
movw	r5,r3
mulur	r2,r3							// **
cmpw	r4,r2
bne		opc_rr_fail
cmpw	r5,r3
bne		opc_rr_fail
// ================================
// mulsr
ldwi	r1,0x00ec
ldwi	r2,0xff45
ldwi	r3,(0xec-0x100)*0x45
movw	r4,r2
mulsr	r1,r2							// **
cmpw	r3,r1
bne		opc_rr_fail
cmpw	r4,r2
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
ldwi	r0,0x32c0
ori		r0,0x3a							// **
movfc	r1,sr
ldwi	r2,0x32fa
cmpw	r0,r2
bne		opc_ri_fail
andi	r1,sreg_fg
cmpi	r1,sreg_nf
bne		opc_ri_fail
// ================================
// andi
ldwi	r0,0xfea6
andi	r0,0x59							// **
movfc	r1,sr
ldwi	r2,0xfe00
cmpw	r0,r2
bne		opc_ri_fail
andi	r1,sreg_fg
cmpi	r1,sreg_zf
bne		opc_ri_fail
// ================================
// eori
ldwi	r0,0x7630
eori	r0,0x6c							// **
movfc	r1,sr
ldwi	r2,0x765c
cmpw	r0,r2
bne		opc_ri_fail
andi	r1,sreg_fg
cmpi	r1,0x00
bne		opc_ri_fail
// ================================
// addi
ldwi	r0,0x349a
addi	r0,0x16							// **
movfc	r1,sr
ldwi	r2,0x3400+(0x9a+0x16)&0xff
cmpw	r0,r2
bne		opc_ri_fail
andi	r1,sreg_fg
cmpi	r1,sreg_nf
bne		opc_ri_fail
// ================================
// subi
ldwi	r0,0x8739
subi	r0,0xa5							// **
movfc	r1,sr
ldwi	r2,0x8700+(0x39-0xa5)&0xff
cmpw	r0,r2
bne		opc_ri_fail
andi	r1,sreg_fg
cmpi	r1,sreg_nf|sreg_cf|sreg_vf
bne		opc_ri_fail
// ================================
// cmpi
ldwi	r0,0x5591
movw	r2,r0
cmpi	r0,0x91							// **
movfc	r1,sr
cmpw	r0,r2
bne		opc_ri_fail
andi	r1,sreg_fg
cmpi	r1,sreg_zf
bne		opc_ri_fail
// ================================
// ldbiu
ldcl	sr,sreg_fg
ldbih	r0,0xff
ldbiu	r0,0xae							// **
movfc	r1,sr
ldwi	r2,0x00ae
cmpw	r0,r2
bne		opc_ri_fail
andi	r1,sreg_fg
cmpi	r1,sreg_fg
bne		opc_ri_fail
// ================================
// ldbil
ldcl	sr,sreg_fg
ldbiu	r0,0x34
cendw	r0
ldbil	r0,0xc5							// **
movfc	r1,sr
ldbiu	r2,0x34
cendw	r2
ori		r2,0xc5
cmpw	r0,r2
bne		opc_ri_fail
andi	r1,sreg_fg
cmpi	r1,sreg_fg
bne		opc_ri_fail
// ================================
// ldbih
ldcl	sr,sreg_fg
ldbiu	r0,0x80
ldbih	r0,0x5a							// **
movfc	r1,sr
ldbiu	r2,0x5a
cendw	r2
ori		r2,0x80
cmp		r0,r2
bne		opc_ri_fail
andi	r1,sreg_fg
cmpi	r1,sreg_fg
bne		opc_ri_fail
// ================================
// ldcl, ldch
ldcl	sr,sreg_fg						// **
movfc	r0,sr
ldbiu	r4,0x5a
movtc	sp,r4
ldch	sp,0xc3							// **
movfc	r1,sp
andi	r0,sreg_fg
cmpi	r0,sreg_fg
bne		opc_ri_fail
ldwi	r2,0xc35a
cmpw	r1,r2
bne		opc_ri_fail
// ================================
// lsfti, left shift
ldwi	r0,0xc369
lsfti	r0,0x04							// **
movfc	r1,sr
ldwi	r2,0xc390
cmpw	r0,r2
bne		opc_ri_fail
andi	r1,sreg_fg
cmpi	r1,sreg_nf|sreg_vf
bne		opc_ri_fail
// lsfti, right shift
ldwi	r0,0xa581
lsfti	r0,-5							// **
movfc	r1,sr
ldwi	r2,0xa504
cmpw	r0,r2
bne		opc_ri_fail
andi	r1,sreg_fg
cmpi	r1,0x00
bne		opc_ri_fail
// ================================
// asfti, left shift
ldwi	r0,0x3569
asfti	r0,0x06							// **
movfc	r1,sr
ldwi	r2,0x3540
cmpw	r0,r2
bne		opc_ri_fail
andi	r1,sreg_fg
cmpi	r1,0x00
bne		opc_ri_fail
// asfti, right shift
ldwi	r0,0xca96
asfti	r0,-2							// **
movfc	r1,sr
ldwi	r2,0xcae5
cmpw	r0,r2
bne		opc_ri_fail
andi	r1,sreg_fg
cmpi	r1,sreg_nf|sreg_cf
bne		opc_ri_fail
// ================================
// csfti, left shift
ldwi	r0,0x579b
sesr	sreg_b_cf
# 1 1001 1011 <5< 1 1001 1011 1 1001
csfti	r0,0x05							// **
movfc	r1,sr
ldwi	r2,0x5779
cmpw	r0,r2
bne		opc_ri_fail
andi	r1,sreg_fg
cmpi	r1,sreg_cf
bne		opc_ri_fail
// csfti, right shift
ldwi	r0,0x5a3c
clsr	sreg_b_cf
# 0 0011 1100 >5> 1 1100 0 001
csfti	r0,-5							// **
movfc	r1,sr
ldwi	r2,0x5ac1
cmpw	r0,r2
bne		opc_ri_fail
andi	r1,sreg_fg
cmpi	r1,sreg_nf|sreg_cf
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

