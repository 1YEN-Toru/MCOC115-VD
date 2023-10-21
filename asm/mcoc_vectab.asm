// ================================
// MCOC115 Combinational Test
//		INTC: interrupt vector & level sample
//		(c) 2022	1YEN Toru
// ================================
asm		"mcoc_irom.mem"
incl	"mcoc115.incl"
# ================================


// ================================
// interrupt vector table
vectab:
bra		setup							// 00: (reserved)
datw	lab_tstfail						// 01: ICR1
datw	lab_tstfail						// 02: ICR2
datw	lab_extint0						// 03: EIR0
datw	lab_tstfail						// 04: EIR1
datw	lab_tstfail						// 05: SRAR
datw	lab_tstfail						// 06: STAR
datw	lab_tstfail						// 07: MRAR
datw	lab_tstfail						// 08: MTER
datw	lab_tstfail						// 09: (reserved)
datw	lab_tstfail						// 10: CMBR0
datw	lab_tstfail						// 11: CMAR0
datw	lab_tstfail						// 12: OVFR0
datw	lab_tstfail						// 13: (reserved)
datw	lab_tstfail						// 14: CMBR1
datw	lab_tstfail						// 15: CMAR1
datw	lab_tstfail						// 16: OVFR1
datw	lab_tstfail						// 17: (reserved)
datw	lab_tstfail						// 18: (reserved)
datw	lab_tstfail						// 19: (reserved)
datw	lab_tstfail						// 20: (reserved)
datw	lab_tstfail						// 21: (reserved)
datw	lab_tstfail						// 22: LOFR
datw	lab_tstfail						// 23: RTCR
datw	lab_tstfail						// 24: CENR
datw	lab_tstfail						// 25: SMUR1
datw	lab_tstfail						// 26: SMRR1
datw	lab_tstfail						// 27: FTAR1
datw	lab_tstfail						// 28: FRAR1
datw	lab_tstfail						// 29: SMUR2
datw	lab_tstfail						// 30: SMRR2
datw	lab_tstfail						// 31: FTAR2
datw	lab_tstfail						// 32: FRAR2


// ================================
// eir0 isr
extint0:
srbk	sreg_bk_1						// bank 1
// flag clear
ldwi	r7,intext
ldw		r0,[r7]
stw		[r7],r0
rti


// ================================
// setup
setup:
// set sp & iv
ldwi	r7,idrgramt
ldw		r7,[r7]
ldwi	r6,idrgrams
ldw		r6,[r6]
add		r7,r6
movtc	sp,r7
ldc		iv,lab_vectab|ivec_ve

// intctl, LEVE=1
ldwi	r7,intctl
ldbiu	r0,intc_leve
stw		[r7],r0

// intext, int0 negedge, enable, lev=2
ldwi	r7,intext
ldbiu	r0,intc_eit0_1|intc_eie0
stw		[r7],r0
ldwi	r7,intlev0
ldbiu	r0,intc_eil0_2
stw		[r7],r0

// interrupt enable
srie	sreg_ie_3


// ================================
// loop
loop:
// do something you want.
pause

// end of loop
bra		loop


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

