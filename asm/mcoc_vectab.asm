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
bra		setup							// (reserved)
datw	lab_tstfail						// ICR1
datw	lab_tstfail						// ICR2
datw	lab_extint0						// EIR0
datw	lab_tstfail						// EIR1
datw	lab_tstfail						// SRAR
datw	lab_tstfail						// STAR
datw	lab_tstfail						// MRAR
datw	lab_tstfail						// MTER
datw	lab_tstfail						// (reserved)
datw	lab_tstfail						// CMBR0
datw	lab_tstfail						// CMAR0
datw	lab_tstfail						// OVFR0
datw	lab_tstfail						// (reserved)
datw	lab_tstfail						// CMBR1
datw	lab_tstfail						// CMAR1
datw	lab_tstfail						// OVFR1
datw	lab_tstfail						// (reserved)
datw	lab_tstfail						// (reserved)
datw	lab_tstfail						// (reserved)
datw	lab_tstfail						// (reserved)
datw	lab_tstfail						// (reserved)
datw	lab_tstfail						// LOFR
datw	lab_tstfail						// RTCR
datw	lab_tstfail						// CENR
datw	lab_tstfail						// SMUR1
datw	lab_tstfail						// SMRR1
datw	lab_tstfail						// FTAR1
datw	lab_tstfail						// FRAR1
datw	lab_tstfail						// SMUR2
datw	lab_tstfail						// SMRR2
datw	lab_tstfail						// FTAR2
datw	lab_tstfail						// FRAR2


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

