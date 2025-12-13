// ================================
//	Moscovium
//		all instructions self test
//		(c) 2021	1YEN Toru
//
//
//		2025/02/22	ver.1.30
//			corresponding to poly-core cpu edition
//
//		2025/01/25	ver.1.28
//			add: mcvm_blky_slim for Moscovium-BS core
//			upd: temporary data address; ramtop to [idrgramt]
//			add: user macro ldrto
//
//		2024/09/21	ver.1.26
//			upd: ramtop label to idrgramt
//
//		2024/08/31	ver.1.24
//			add: htrunc
//
//		2023/07/08	ver.1.22
//			add: adcz, sbbz, cmbz
//
//		2023/05/20	ver.1.20
//			add: divlqr, divlrr, mulsr, mulur, divsr, divur
//
//		2023/02/11	ver.1.18
//			add: hfpu precision check
//
//		2022/06/04	ver.1.16
//			add: brn, csft, csfti
//
//		2022/04/09	ver.1.14
//			corresponding to Nihonium (NH=0 mode)
//			for Nihonium ver.1.00 or higher
//
//		2022/02/19	ver.1.12
//			add: ldbx, stbx, ldwx, stwx
//			for Moscovium ver.1.10 or higher
//
//		2021/07/31	ver.1.10
//			for dual core cpu edition
//			set mcvm_dual_cpu=1 or 2
//			for Moscovium ver.1.08 or higher
//
//		2021/07/10	ver.1.08
//			hcmp: half compare
//			cmb: compare with borrow
//			jumping to tstfail optimized
//			for Moscovium ver.1.06 or higher
//
//		2021/06/12	ver.1.06
//			add: half precision fpu instructions
//			for Moscovium ver.1.04 or higher
//
//		2021/05/22	ver.1.04
//			add: multiply and divide instructions
//			for Moscovium ver.1.02 or higher
//
//		2021/05/01	ver.1.02
//			add: interrupt related instructions
//			for Moscovium ver.1.00 or later
//
//		2021/03/27	ver.1.00
//			for Moscovium ver.0.90 or later
//
// ================================
asm		"mcoc_irom.mem"
#asm		"asm_mcvm.v"
incl	"mcoc115.incl"
# ================================
# string macros
def		s,""							// simulation "" / fpga "#"
# constants
equ		mcvm_has_mulc,1					// 0 for `define MCVM_COPR_NOMUL
equ		mcvm_has_divc,1					// 0 for `define MCVM_COPR_NODIV
equ		mcvm_has_divl,0					// 0 for `define MCVM_COPR_NODIV or Nh
equ		mcvm_has_hfpu,0					// 0 for `define MCVM_COPR_NOFPU
equ		mcvm_has_xadr,0					// 1 for `define MCOC_SDRAM_8M
equ		mcvm_blky_slim,0				// 1 for `define MCOC_CORE_MCBS
equ		mcvm_dual_cpu,2					// cpu id (1~14) for check
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
ifexp	mcvm_blky_slim
elsi	#mcvm_blky_slim
// bank 3
ldcl	sr,sreg_bk_3
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
ldwi	r0,0x3333
mov		r1,r0
mov		r2,r1
mov		r3,r2
mov		r4,r3
mov		r5,r4
mov		r6,r5
mov		r7,r6
// bank 2
ldcl	sr,sreg_bk_2
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
ldwi	r0,0x2222
mov		r1,r0
mov		r2,r1
mov		r3,r2
mov		r4,r3
mov		r5,r4
mov		r6,r5
mov		r7,r6
endi	#mcvm_blky_slim
// bank 1
ldcl	sr,sreg_bk_1
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
ldwi	r0,0x1111
mov		r1,r0
mov		r2,r1
mov		r3,r2
mov		r4,r3
mov		r5,r4
mov		r6,r5
mov		r7,r6
// bank 0
ldcl	sr,sreg_bk_0
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
ldwi	r0,0xffff
mov		r1,r0
mov		r2,r1
mov		r3,r2
mov		r4,r3
mov		r5,r4
mov		r6,r5
mov		r7,r6
// bank
ifexp	mcvm_blky_slim
elsi	#mcvm_blky_slim
ldcl	sr,sreg_bk_3
ldwi	r0,0x3333
cmp		r7,r0
bne		reg_fail
ldcl	sr,sreg_bk_2
ldwi	r0,0x2222
cmp		r7,r0
bne		reg_fail
endi	#mcvm_blky_slim
ldcl	sr,sreg_bk_1
ldwi	r0,0x1111
cmp		r7,r0
bne		reg_fail
ldcl	sr,sreg_bk_0
ldwi	r0,0xffff
cmp		r7,r0
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

// sr register, check cpu id to test
movfc	r0,sr
lsfti	r0,-sreg_b_id0
andi	r0,sreg_id_15>>sreg_b_id0
beq		reg_pass						// cpu0: single core, ok go
cmpi	r0,sreg_id_15>>sreg_b_id0
bne		pcnt+2							// cpu15 is cpu1 (main cpu)
ldbiu	r0,sreg_id_1>>sreg_b_id0
cmpi	r0,mcvm_dual_cpu
beq		reg_pass						// cpu for dut, ok go
ldbiu	r0,mcvm_dual_cpu
cmpi	r0,sreg_id_1>>sreg_b_id0
blo		reg_fail						// mcvm_dual_cpu must set 1~14
cmpi	r0,sreg_id_15>>sreg_b_id0
bhs		reg_fail						// mcvm_dual_cpu must set 1~14
// stop cpu not to test
pause
bra		pcnt-4

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
cmp		r3,r4
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

// ********************************
// skip if mcvm_has_divl==0
ldbiu	r0,mcvm_has_divl
cmpi	r0,0
beq		divl_skip

// ================================
// divlu, divlq
sesr	sreg_b_dr
ldwi	r0,0x7654
ldwi	r1,0x3210
ldwi	r2,0x000a
ldwi	r3,0xbcde
divlu									// **
ldwi	r4,(0x76543210/0x000abcde)>>16
ldwi	r5,(0x76543210/0x000abcde)&0xffff
ldwi	r6,(0x76543210%0x000abcde)>>16
ldwi	r7,(0x76543210%0x000abcde)&0xffff
divlq									// **
cmp		r0,r4
bne		opc_no_fail
cmp		r1,r5
bne		opc_no_fail
cmp		r2,r6
bne		opc_no_fail
cmp		r3,r7
bne		opc_no_fail
// ================================
// divls, divlq
sesr	sreg_b_dr
ldwi	r0,0xabcd
ldwi	r1,0xef01
ldwi	r2,0x0012
ldwi	r3,0x3456
divls									// **
ldwi	r4,(0xabcdef01/0x00123456)>>16
ldwi	r5,(0xabcdef01/0x00123456)&0xffff
ldwi	r6,(0xabcdef01%0x00123456)>>16
ldwi	r7,(0xabcdef01%0x00123456)&0xffff
divlq									// **
cmp		r0,r4
bne		opc_no_fail
cmp		r1,r5
bne		opc_no_fail
cmp		r2,r6
bne		opc_no_fail
cmp		r3,r7
bne		opc_no_fail
// ================================
// divlr
sesr	sreg_b_dr
ldwi	r0,0x0123
ldwi	r1,0x4567
ldwi	r2,0x89ab
ldwi	r3,0xcdef
mov		r4,r0
mov		r5,r1
mov		r6,r2
mov		r7,r3
divlr									// **
ldbiu	r0,0
mov		r1,r0
mov		r2,r0
mov		r3,r0
divlq
cmp		r0,r4
bne		opc_no_fail
cmp		r1,r5
bne		opc_no_fail
cmp		r2,r6
bne		opc_no_fail
cmp		r3,r7
bne		opc_no_fail
// ================================
// divlqr
sesr	sreg_b_dr
ldbiu	r0,0xe0
ldbiu	r1,0xe1
ldbiu	r2,0xe2
ldbiu	r3,0xe3
divlr
clsr	sreg_b_dr
ldbiu	r0,0x10
ldbiu	r1,0x11
ldbiu	r2,0x12
ldbiu	r3,0x13
divlqr									// **
cmpi	r0,0xe0
bne		opc_no_fail
cmpi	r1,0xe1
bne		opc_no_fail
cmpi	r2,0xe2
bne		opc_no_fail
cmpi	r3,0xe3
bne		opc_no_fail
// ================================
// divlrr
sesr	sreg_b_dr
ldbiu	r0,0xf0
ldbiu	r1,0xf1
ldbiu	r2,0xf2
ldbiu	r3,0xf3
divlr
clsr	sreg_b_dr
ldbiu	r0,0x00
ldbiu	r1,0x01
ldbiu	r2,0x02
ldbiu	r3,0x03
divlrr									// **
sesr	sreg_b_dr
divlq
cmpi	r0,0x00
bne		opc_no_fail
cmpi	r1,0x01
bne		opc_no_fail
cmpi	r2,0x02
bne		opc_no_fail
cmpi	r3,0x03
bne		opc_no_fail

divl_skip:
// ********************************

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
addi	r4,2
cmp		r0,r4
beq		jalw_pass4
bra		opc_r_fail

jalw_addr1:
movfc	r0,sp
ldw		r1,[r0]
subi	r4,2
cmp		r0,r4
bne		opc_r_fail
ldwi	r3,lab_jalw_addr2
cmp		r1,r3
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
// sesrh
ldch	sr,0x00
sesrh	sreg_b_dr						// **
movfc	r0,sr
lsfti	r0,-8
andi	r0,(~sreg_id_15)>>8
cmpi	r0,sreg_dr>>8
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
// clsrh
ldch	sr,sreg_dr>>8
movfc	r0,sr
lsfti	r0,-8
andi	r0,sreg_dr>>8
beq		opc_r_fail
clsrh	sreg_b_dr						// **
movfc	r0,sr
lsfti	r0,-8
andi	r0,sreg_dr>>8
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
ldwi	r0,0x8000
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
ldbiu	r0,0xca
exsgw	r0
not		r0								// **
movfc	r1,sr
cmpi	r0,0x35
bne		opc_r_fail
andi	r1,sreg_fg
cmpi	r1,0x00
bne		opc_r_fail
// ================================
// cendw
ldwi	r0,0x5678
cendw	r0								// **
movfc	r1,sr
ldwi	r2,0x7856
cmp		r0,r2
bne		opc_r_fail
andi	r1,sreg_fg
cmpi	r1,0x00
bne		opc_r_fail
// ================================
// exsgw
ldwi	r0,0x89ab
exsgw	r0								// **
movfc	r1,sr
ldwi	r2,0xffab
cmp		r0,r2
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
subi	r4,2
movfc	r1,sp
cmp		r1,r4
bne		opc_r_fail
ldw		r2,[r4]
cmp		r2,r0
bne		opc_r_fail
// ================================
// popw
ldrto	r4,0x30
ldwi	r0,0x2468
stw		[r4],r0
movtc	sp,r4
popw	r1								// **
movfc	r2,sp
cmp		r1,r0
bne		opc_r_fail
addi	r4,2
cmp		r2,r4
bne		opc_r_fail
// ================================
// pushcw
ldrto	r4,0x18
movtc	sp,r4
ldcl	sr,sreg_fg
pushcw	sr								// **
movfc	r0,sr
subi	r4,2
movfc	r1,sp
cmp		r1,r4
bne		opc_r_fail
popw	r2
cmp		r2,r0
bne		opc_r_fail
// ================================
// popcw
ldrto	r4,0x28
ldwi	r0,0x1248
stw		[r4],r0
movtc	sp,r4
popcw	tr								// **
movfc	r1,sp
movfc	r2,tr
addi	r4,2
cmp		r1,r4
bne		opc_r_fail
cmp		r2,r0
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
ldwi	r3,0xbebd
cmp		r0,r3
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
ldwi	r3,0x0a0c
cmp		r0,r3
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
ldwi	r3,0x24fd
cmp		r0,r3
bne		opc_rr_fail
andi	r2,sreg_fg
cmpi	r2,0x00
// ================================
// mov
ldwi	r0,0x8769
ldcl	sr,sreg_fg
mov		r1,r0							// **
movfc	r2,sr
cmp		r0,r1
bne		opc_rr_fail
andi	r2,sreg_fg
cmpi	r2,sreg_nf
bne		opc_rr_fail
// ================================
// movtc
ldrto	r7,0x24
movtc	sp,r7							// **
ldwi	r0,0x00
subi	r7,2
stw		[r7],r0
pushw	r7
ldw		r1,[r7]
cmp		r1,r7
bne		opc_rr_fail
ldwi	r0,0x8000
ldcl	sr,sreg_cf|sreg_vf|sreg_zf
movtc	sp,r0							// **
bpl		opc_rr_fail
bcs		opc_rr_fail
bvs		opc_rr_fail
beq		opc_rr_fail
// ================================
// movfc
ldcl	sr,sreg_fg
movfc	r1,sr							// **
andi	r1,sreg_fg
cmpi	r1,sreg_fg
bne		opc_rr_fail
ldc		sp,0
ldcl	sr,sreg_nf|sreg_cf|sreg_vf
movfc	r1,sp							// **
bmi		opc_rr_fail
bcs		opc_rr_fail
bvs		opc_rr_fail
bne		opc_rr_fail
bne		opc_rr_fail
// ================================
// add
ldwi	r0,0xf50a
ldwi	r1,0x2468
add		r0,r1							// **
movfc	r2,sr
ldwi	r3,0x1972
cmp		r0,r3
bne		opc_rr_fail
andi	r2,sreg_fg
cmpi	r2,sreg_cf
bne		opc_rr_fail
// ================================
// adc
ldwi	r0,0x2468
ldwi	r1,0x53ca
ldcl	sr,sreg_cf
adc		r0,r1							// **
movfc	r2,sr
ldwi	r3,0x7833
cmp		r0,r3
bne		opc_rr_fail
andi	r2,sreg_fg
cmpi	r2,0x00
bne		opc_rr_fail
// ================================
// sub
ldwi	r0,0x83c7
ldwi	r1,0x1765
sub		r0,r1							// **
movfc	r2,sr
ldwi	r3,0x6c62
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
ldwi	r3,0x4443
cmp		r0,r3
bne		opc_rr_fail
andi	r2,sreg_fg
cmpi	r2,0x00
bne		opc_rr_fail
// ================================
// cmp
ldwi	r0,0x3210
ldwi	r1,0x3210
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
mov		r2,r0
mov		r3,r1
cmp		r0,r1
cmb		r0,r1							// **
movfc	r4,sr
andi	r4,sreg_fg
cmpi	r4,sreg_nf|sreg_cf
bne		opc_rr_fail
cmp		r0,r2
bne		opc_rr_fail
cmp		r1,r3
bne		opc_rr_fail
ldwi	r0,0x7654
ldwi	r1,0x3210
mov		r2,r0
mov		r3,r1
cmp		r1,r3
cmb		r0,r2							// **
movfc	r4,sr
andi	r4,sreg_fg
cmpi	r4,sreg_zf
bne		opc_rr_fail
ldwi	r0,0xdb97
ldwi	r1,0x531f
ldwi	r2,0x7531
ldwi	r3,0x6420
cmp		r1,r3
cmb		r0,r2							// **
movfc	r4,sr
andi	r4,sreg_fg
cmpi	r4,sreg_vf
bne		opc_rr_fail
// ================================
// ldb
ldwi	r0,0x3a5c
ldrto	r1,0
stw		[r1],r0
ldb		r2,[r1]							// **
addi	r1,1
ldb		r3,[r1]							// **
cmpi	r2,0x3a
bne		opc_rr_fail
cmpi	r3,0x5c
bne		opc_rr_fail
// ================================
// stb
ldwi	r0,0x9653
ldrto	r1,1
mov		r2,r0
lsfti	r2,-8
stb		[r1],r0							// **
subi	r1,1
stb		[r1],r2							// **
ldw		r3,[r1]
cmp		r0,r3
bne		opc_rr_fail
// ================================
// ldw
ldwi	r0,0x7531
ldrto	r1,10
stw		[r1],r0
ldw		r2,[r1]							// **
cmp		r2,r0
bne		opc_rr_fail
// ================================
// stw
ldwi	r0,0xfedc
ldrto	r1,6
stw		[r1],r0							// **
ldw		r3,[r1]
cmp		r0,r3
bne		opc_rr_fail
// ================================
// lsft, left shift
ldwi	r0,0xf1e0
ldwi	r1,3
lsft	r0,r1							// **
movfc	r3,sr
ldwi	r2,0x8f00
cmp		r0,r2
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
ldwi	r2,0x0455
cmp		r0,r2
bne		opc_rr_fail
andi	r3,sreg_fg
cmpi	r3,sreg_cf
bne		opc_rr_fail
// ================================
// asft, left shift
ldwi	r0,0x36a5
ldwi	r1,4
asft	r0,r1							// **
movfc	r3,sr
ldwi	r2,0x6a50
cmp		r0,r2
bne		opc_rr_fail
andi	r3,sreg_fg
cmpi	r3,sreg_cf|sreg_vf
bne		opc_rr_fail
// ================================
// asft, right shift
ldwi	r0,0xc961
ldwi	r1,-7
asft	r0,r1							// **
movfc	r3,sr
ldwi	r2,0xff92
cmp		r0,r2
bne		opc_rr_fail
andi	r3,sreg_fg
cmpi	r3,sreg_nf|sreg_cf
bne		opc_rr_fail
// ================================
// csft, left shift
ldwi	r0,0x1e78
ldwi	r1,9
clsr	sreg_b_cf
csft	r0,r1							// **
movfc	r3,sr
ldwi	r2,0xf01e
cmp		r0,r2
bne		opc_rr_fail
andi	r3,sreg_fg
cmpi	r3,sreg_nf
bne		opc_rr_fail
// ================================
// csft, right shift
ldwi	r0,0x5ac6
ldwi	r1,-7
sesr	sreg_b_cf
csft	r0,r1							// **
movfc	r3,sr
ldwi	r2,0x1ab5
cmp		r0,r2
bne		opc_rr_fail
andi	r3,sreg_fg
cmpi	r3,sreg_cf
bne		opc_rr_fail
// ================================
// ldwsp
ldbiu	r3,8							// offset
ldrto	r4,14
ldwi	r6,0x9753						// read data
movtc	tr,r6							// set dummy
stw		[r4],r6							// write data
mov		r5,r4
sub		r5,r3
movtc	sp,r5							// sp=r4-r3
ldcl	sr,sreg_fg
ldwsp	r0,[sp+r3]						// **
movfc	r2,sr
cmp		r0,r6							// check read data
bne		opc_rr_fail
andi	r2,sreg_fg
cmpi	r2,sreg_fg						// check sr not change
bne		opc_rr_fail
movfc	r0,sp							// check sp not change
cmp		r0,r5
bne		opc_rr_fail
movfc	r0,tr							// check tr
cmp		r0,r4
bne		opc_rr_fail
// ================================
// stwsp
ldbiu	r3,8							// offset
ldrto	r4,14
ldwi	r6,0xabcd						// write data
movtc	tr,r6							// set dummy
mov		r0,r6
not		r0
stw		[r4],r0							// write dummy data
mov		r5,r4
sub		r5,r3
movtc	sp,r5							// sp=r4-r3
ldcl	sr,sreg_fg
stwsp	[sp+r3],r6						// **
movfc	r2,sr
ldw		r0,[r4]
cmp		r0,r6							// check write data
bne		opc_rr_fail
andi	r2,sreg_fg
cmpi	r2,sreg_fg						// check sr not change
bne		opc_rr_fail
movfc	r0,sp							// check sp not change
cmp		r0,r5
bne		opc_rr_fail
movfc	r0,tr							// check tr
cmp		r0,r4
bne		opc_rr_fail

// ********************************
// skip if mcvm_has_mulc==0
ldbiu	r0,mcvm_has_mulc
cmpi	r0,0
beq		mulc_skip

// ================================
// mulu
ldwi	r0,0x0123
ldwi	r1,0x0987
ldwi	r2,(0x0123*0x0987)&0xffff
ldwi	r3,(0x0123*0x0987)>>16
ifexp	mcvm_blky_slim
mov		r3,r1
endi	#mcvm_blky_slim
sesr	sreg_b_ml
mulu	r0,r1							// **
cmp		r0,r2
bne		opc_rr_fail
cmp		r1,r3
bne		opc_rr_fail
// ================================
// muls
ldwi	r0,0xffed
ldwi	r1,0x0034
ldwi	r2,(0xffffffed*0x0034)&0xffff
ldwi	r3,(0xffffffed*0x0034)>>16
ifexp	mcvm_blky_slim
mov		r3,r1
endi	#mcvm_blky_slim
sesr	sreg_b_ml
muls	r0,r1							// **
cmp		r0,r2
bne		opc_rr_fail
cmp		r1,r3
bne		opc_rr_fail
// ================================
// mulur
ldwi	r2,0x0246
ldwi	r3,0x0357
ldwi	r4,(0x0246*0x0357)&0xffff
ldwi	r5,(0x0246*0x0357)>>16
mov		r6,r2
mov		r7,r3
mov		r1,r7
ifexp	mcvm_blky_slim
mov		r1,r5
endi	#mcvm_blky_slim
clsr	sreg_b_ml
mulur	r2,r3							// **
sesr	sreg_b_ml
mulur	r6,r7							// **
cmp		r4,r2
bne		opc_rr_fail
cmp		r5,r3
bne		opc_rr_fail
cmp		r4,r6
bne		opc_rr_fail
cmp		r1,r7
bne		opc_rr_fail
// ================================
// mulsr
ldwi	r1,0xffec
ldwi	r2,0x0045
ldwi	r3,(0xffffffec*0x0045)&0xffff
ldwi	r4,(0xffffffec*0x0045)>>16
mov		r5,r1
mov		r6,r2
mov		r0,r6
ifexp	mcvm_blky_slim
mov		r0,r4
endi	#mcvm_blky_slim
clsr	sreg_b_ml
mulsr	r1,r2							// **
sesr	sreg_b_ml
mulsr	r5,r6							// **
cmp		r3,r1
bne		opc_rr_fail
cmp		r4,r2
bne		opc_rr_fail
cmp		r3,r5
bne		opc_rr_fail
cmp		r0,r6
bne		opc_rr_fail

mulc_skip:
// ********************************

// ********************************
// skip if mcvm_has_divc==0
ldbiu	r0,mcvm_has_divc
cmpi	r0,0
beq		divc_skip

// ================================
// divu
ldwi	r0,0x8765
ldwi	r1,0x0123
ldwi	r2,0x8765/0x0123
ldwi	r3,0x8765%0x0123
ifexp	mcvm_blky_slim
mov		r3,r1
endi	#mcvm_blky_slim
sesr	sreg_b_dr
divu	r0,r1							// **
cmp		r0,r2
bne		opc_rr_fail
cmp		r1,r3
bne		opc_rr_fail
// ================================
// divs
sesr	sreg_b_dr
ldwi	r0,0xabcd
ldwi	r1,0x0345
ldwi	r2,0xffffabcd/0x0345
ldwi	r3,0xffffabcd%0x0345
ifexp	mcvm_blky_slim
mov		r3,r1
endi	#mcvm_blky_slim
sesr	sreg_b_dr
divs	r0,r1							// **
cmp		r0,r2
bne		opc_rr_fail
cmp		r1,r3
bne		opc_rr_fail
// ================================
// divur
ldwi	r0,0x8ace
ldwi	r1,0x0135
ldwi	r2,0x8ace/0x0135
ldwi	r3,0x8ace%0x0135
mov		r4,r0
mov		r5,r1
mov		r7,r5
ifexp	mcvm_blky_slim
mov		r7,r3
endi	#mcvm_blky_slim
clsr	sreg_b_dr
divur	r0,r1							// **
sesr	sreg_b_dr
divur	r4,r5							// **
cmp		r2,r0
bne		opc_rr_fail
cmp		r3,r1
bne		opc_rr_fail
cmp		r2,r4
bne		opc_rr_fail
cmp		r7,r5
bne		opc_rr_fail
// ================================
// divsr
sesr	sreg_b_dr
ldwi	r0,0xace0
ldwi	r1,0x0357
ldwi	r2,0xfffface0/0x0357
ldwi	r3,0xfffface0%0x0357
mov		r4,r0
mov		r5,r1
mov		r7,r5
ifexp	mcvm_blky_slim
mov		r7,r3
endi	#mcvm_blky_slim
clsr	sreg_b_dr
divsr	r0,r1							// **
sesr	sreg_b_dr
divsr	r4,r5							// **
cmp		r2,r0
bne		opc_rr_fail
cmp		r3,r1
bne		opc_rr_fail
cmp		r2,r4
bne		opc_rr_fail
cmp		r7,r5
bne		opc_rr_fail

divc_skip:
// ********************************

// ================================
// ldbx
ldc		tr,0
ldwi	r0,0xb1e6
ldrto	r1,0
stwx	[r1],r0
ldbx	r2,[r1]							// **
addi	r1,1
ldbx	r3,[r1]							// **
mov		r4,r0
lsfti	r0,-8
cmp		r2,r0
bne		opc_rr_fail
andi	r4,0xff
cmp		r3,r4
bne		opc_rr_fail
// ================================
// stbx
ldc		tr,0
ldwi	r0,0xe941
ldrto	r1,1
mov		r2,r0
lsfti	r2,-8
stbx	[r1],r0							// **
subi	r1,1
stbx	[r1],r2							// **
ldwx	r3,[r1]
cmp		r0,r3
bne		opc_rr_fail
// ================================
// ldwx
ldc		tr,0
ldwi	r0,0xf92b
ldrto	r1,10
stwx	[r1],r0
ldwx	r2,[r1]							// **
cmp		r2,r0
bne		opc_rr_fail
// ================================
// stwx
ldc		tr,0
ldwi	r0,0x018d
ldrto	r1,6
stwx	[r1],r0							// **
ldwx	r3,[r1]
cmp		r0,r3
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
ldwi	r0,0xc0
ori		r0,0x3a							// **
movfc	r1,sr
cmpi	r0,0xfa
bne		opc_ri_fail
andi	r1,sreg_fg
cmpi	r1,0x00
bne		opc_ri_fail
// ================================
// andi
ldbiu	r0,0xa6
exsgw	r0
andi	r0,0x59							// **
movfc	r1,sr
cmpi	r0,0x00
bne		opc_ri_fail
andi	r1,sreg_fg
cmpi	r1,sreg_zf
bne		opc_ri_fail
// ================================
// eori
ldbiu	r0,0x30
eori	r0,0x6c							// **
movfc	r1,sr
cmpi	r0,0x5c
bne		opc_ri_fail
andi	r1,sreg_fg
cmpi	r1,0x00
bne		opc_ri_fail
// ================================
// addi
ldwi	r0,0x9a
addi	r0,0x16							// **
movfc	r1,sr
cmpi	r0,0x9a+0x16
bne		opc_ri_fail
andi	r1,sreg_fg
cmpi	r1,0x00
bne		opc_ri_fail
// ================================
// subi
ldwi	r0,0x39
subi	r0,0xa5							// **
movfc	r1,sr
ldbiu	r2,0x94
exsgw	r2
cmp		r0,r2
bne		opc_ri_fail
andi	r1,sreg_fg
cmpi	r1,sreg_nf|sreg_cf
bne		opc_ri_fail
// ================================
// cmpi
ldwi	r0,0x91
cmpi	r0,0x36							// **
movfc	r1,sr
cmpi	r0,0x91
bne		opc_ri_fail
andi	r1,sreg_fg
cmpi	r1,0x00
bne		opc_ri_fail
// ================================
// ldbiu
ldcl	sr,sreg_fg
ldbih	r0,0xff
ldbiu	r0,0xae							// **
movfc	r1,sr
ldwi	r2,0x00ae
cmp		r0,r2
bne		opc_ri_fail
andi	r1,sreg_fg
cmpi	r1,sreg_fg
bne		opc_ri_fail
// ================================
// ldbil
ldcl	sr,sreg_fg
ldwi	r0,0x3456
ldbil	r0,0xc5							// **
movfc	r1,sr
ldwi	r2,0x34c5
cmp		r0,r2
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
ldwi	r2,0x5a
lsfti	r2,8
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
cmp		r1,r2
bne		opc_ri_fail
// ================================
// lsfti, left shift
ldwi	r0,0xc369
lsfti	r0,0xe2							// **
movfc	r1,sr
ldwi	r2,0x0da4
cmp		r0,r2
bne		opc_ri_fail
andi	r1,sreg_fg
cmpi	r1,sreg_cf|sreg_vf
bne		opc_ri_fail
// lsfti, right shift
ldwi	r0,0xa581
lsfti	r0,-5							// **
movfc	r1,sr
ldwi	r2,0x052c
cmp		r0,r2
bne		opc_ri_fail
andi	r1,sreg_fg
cmpi	r1,0x00
bne		opc_ri_fail
// ================================
// asfti, left shift
ldwi	r0,0x3569
asfti	r0,0x06							// **
movfc	r1,sr
ldwi	r2,0x5a40
cmp		r0,r2
bne		opc_ri_fail
andi	r1,sreg_fg
cmpi	r1,sreg_cf|sreg_vf
bne		opc_ri_fail
// asfti, right shift
ldwi	r0,0xca69
asfti	r0,-8							// **
movfc	r1,sr
ldwi	r2,0xffca
cmp		r0,r2
bne		opc_ri_fail
andi	r1,sreg_fg
cmpi	r1,sreg_nf
bne		opc_ri_fail
// ================================
// csfti, left shift
ldwi	r0,0x579b
sesr	sreg_b_cf
csfti	r0,0x09							// **
movfc	r1,sr
ldwi	r2,0x3757
cmp		r0,r2
bne		opc_ri_fail
andi	r1,sreg_fg
cmpi	r1,sreg_cf
bne		opc_ri_fail
// csfti, right shift
ldwi	r0,0x5a3c
clsr	sreg_b_cf
csfti	r0,-5							// **
movfc	r1,sr
ldwi	r2,0xc2d1
cmp		r0,r2
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
// ldbx
ldcl	tr,0x80
ldwi	r1,idrgfcpu
ldwi	r0,0x77ab
stwx	[r1],r0
ldbx	r2,[r1]							// **
addi	r1,1
ldbx	r3,[r1]							// **
mov		r4,r0
lsfti	r0,-8
cmp		r2,r0
bne		xadr_fail
andi	r4,0xff
cmp		r3,r4
bne		xadr_fail
// ================================
// stbx
ldcl	tr,0xa3
ldwi	r1,idrgromt+1
ldwi	r0,0x91df
mov		r2,r0
lsfti	r2,-8
stbx	[r1],r0							// **
subi	r1,1
stbx	[r1],r2							// **
ldwx	r3,[r1]
cmp		r0,r3
bne		xadr_fail
// ================================
// ldwx
ldcl	tr,0xc6
ldwi	r1,idrgrams
ldwi	r0,0x5901
stwx	[r1],r0
ldwx	r2,[r1]							// **
cmp		r2,r0
bne		xadr_fail
// ================================
// stwx
ldcl	tr,0xe9
ldwi	r1,idrgvers
ldwi	r0,0xc6a1
stwx	[r1],r0							// **
ldwx	r3,[r1]
cmp		r0,r3
bne		xadr_fail

// ================================
bra		xadr_pass

xadr_fail:
jmpr7	tstfail

xadr_pass:
xadr_skip:


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
// htrunc
hldi	r0,12.34
htrunc	r1,r0							// **
hldi	r2,12
cmp		r1,r2
bne		hfpu_fail
hldi	r0,-0.9876
htrunc	r1,r0							// **
ldwi	r2,half_zer_n
cmp		r1,r2
bne		hfpu_fail
ldwi	r3,half_inf_n
htrunc	r4,r3							// **
cmp		r3,r4
bne		hfpu_fail

// ================================
bra		hfpu_pass

hfpu_fail:
jmpr7	tstfail

hfpu_pass:
hfpu_skip:


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

