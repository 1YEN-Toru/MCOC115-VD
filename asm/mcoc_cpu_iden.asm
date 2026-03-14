// ================================
//	MxOC115 / NxOC113 / TSOC117 Combinational Test
//		cpu recognition (dual / poly core cpu ready)
//		(c) 2023,2026	1YEN Toru
// ================================
asm		"mcoc_irom.mem"
incl	"mcoc115.incl"
# ================================
# constants
#equ	stkbtm,iramtop+0x0100			// stack pointer bottom address
#equ	stkbtm,ramtop+0x0100			// stack pointer bottom address
equ		stkbtm,iome_botm				// stack pointer bottom address
# ================================
equ		core_ts,0x1170
equ		core_mc,0x1150
equ		core_mcss,0x115a
equ		core_mcbs,0x115b
equ		core_nh,0x1130
equ		core_nhss,0x113a
equ		core_nhpi,0x113b
# ================================


// ================================
// data pool
bra		skip_data_pool

str_cpu_num:
dats	"CPU#\0: "
str_ts_core:
dats	"Tennessine core\r\n\0"
		// this address must be lower than 0x0100
		// for Tennessine's print subroutine: (addi)
str_mc_core:
dats	"Moscovium core\r\n\0"
str_ms_core:
dats	"Moscovium-SS core\r\n\0"
str_mb_core:
dats	"Moscovium-BS core\r\n\0"
str_nh_core:
dats	"Nihonium core\r\n\0"
str_ns_core:
dats	"Nihonium-SS core\r\n\0"
str_np_core:
dats	"Nihonium-PI core\r\n\0"
str_ur_core:
dats	"Unrecognized core\r\n\0"

skip_data_pool:


// ================================
// cpu recognition: result to r4(cpu id), r5(cpu type)
// cpu type
ldwi	r0,core_ts
iden									// iden is same as nop for Ts
mov		r5,r0
// cpu id
movfc	r4,sr
cendw	r4
lsri	r4,sreg_b_id0-8
andi	r4,sreg_id_15>>sreg_b_id0
// dual core or poly core
mov		r0,r5
andi	r0,0xff
cmpi	r0,core_mcbs&0xff
beq		mcbs_or_ts
cmpi	r0,core_ts&0xff
beq		mcbs_or_ts

// dual core ready: except Mc-BS nor Ts
cmpi	r4,sreg_id_3>>sreg_b_id0		// amp dual core main cpu
bne		pcnt+2
ldbiu	r4,sreg_id_1>>sreg_b_id0
bra		fin_cpu_recg

mcbs_or_ts:
// poly core ready: Mc-BS or Ts
cmpi	r4,sreg_id_15>>sreg_b_id0		// poly core main cpu
bne		pcnt+2
ldbiu	r4,sreg_id_1>>sreg_b_id0

// finish cpu recognition
//	r4(cpu id):
//		0 (single core)
//		1~2 (dualcore)
//		1~14 (poly core)
//	r5(cpu type):
//		Ts=		0x1170
//		Mc=		0x1150
//		Mc-SS=	0x115a
//		Mc-BS=	0x115b
//		Nh=		0x1130
//		Nh-SS=	0x113a
//		Nh-PI=	0x113b
fin_cpu_recg:


// ================================
// set sp (ATTN! all cpus shared same stack area)
ldc		sp,stkbtm

// ================================
// wait to shift the timing for each cpus
equ		wait_times,16					// wait times between each cpus (<18)
ldbiu	r1,wait_times
// * cpu#
ldbiu	r0,sreg_id_14>>sreg_b_id0
sub		r0,r4
mulu	r1,r0							// must be r1(=r1*r0)<256 for Ts
cmpi	r1,0
beq		wt_break
wt_loop:
// sub loop
ldbiu	r2,4
brn
subi	r2,1
bne		pcnt-6
// end of loop
subi	r1,1
bne		wt_loop
wt_break:

// ================================
// print cpu#
ldwi	r1,lab_str_cpu_num
jalwr7	print
ldwi	r7,princhr
mov		r2,r4
cmpi	r4,10
blo		under_10
// r4(cpu id)>10
ldbiu	r0,0a1
stw		[r7],r0
subi	r2,10
under_10:
addi	r2,0a0
stw		[r7],r2
jalwr7	print

// ================================
// get cpu type string
ldwi	r7,lab_print_and_finish
mov		r0,r5
andi	r0,0xff
// Ts?
cmpi	r0,core_ts&0xff
bne		pcnt+6
ldwi	r1,lab_str_ts_core
jmp		r7
// Mc?
cmpi	r0,core_mc&0xff
bne		pcnt+6
ldwi	r1,lab_str_mc_core
jmp		r7
// Mc-SS?
cmpi	r0,core_mcss&0xff
bne		pcnt+6
ldwi	r1,lab_str_ms_core
jmp		r7
// Mc-BS?
cmpi	r0,core_mcbs&0xff
bne		pcnt+6
ldwi	r1,lab_str_mb_core
jmp		r7
// Nh?
cmpi	r0,core_nh&0xff
bne		pcnt+6
ldwi	r1,lab_str_nh_core
jmp		r7
// Nh-SS?
cmpi	r0,core_nhss&0xff
bne		pcnt+6
ldwi	r1,lab_str_ns_core
jmp		r7
// Nh-PI?
cmpi	r0,core_nhpi&0xff
bne		pcnt+6
ldwi	r1,lab_str_np_core
jmp		r7
// unrecognized
ldwi	r1,lab_str_ur_core
jalwr7	print
bra		tstfail

// ================================
// print and finish
print_and_finish:
jalwr7	print
// cpu0 (single core cpu) or cpu1 (dual / poly core main cpu)
cmpi	r4,sreg_id_2>>sreg_b_id0
blo		tstpass
// cpu2~14 (dual / poly core sub cpu)
// halt
pause
bra		pcnt-4


// ================================
// print r1; disturbed r0,r1,r7
print:
ldwi	r7,princhr
prn_loop:
ldb		r0,[r1]
addi	r1,1							// ATTN! 8 bit addi for Tennessine
cmpi	r0,asc_nil
beq		prn_break
stw		[r7],r0
// end of loop
bra		prn_loop

prn_break:
rtnw


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

