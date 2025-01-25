// ================================
//	MxOC115 / NxOC113 / TSOC117 Combinational Test
//		cpu recognition (dual core cpu ready)
//		(c) 2023	1YEN Toru
// ================================
asm		"mcoc_irom.mem"
incl	"mcoc115.incl"
# ================================
# constants
#equ	stkbtm,iramtop					// stack pointer bottom address
equ		stkbtm,ramtop					// stack pointer bottom address
#equ	stkbtm,iomedat0					// stack pointer bottom address
equ		stksiz,4						// stack size
equ		wait_times,12					// wait times between each cpus
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
str_mb_core:
dats	"Moscovium-BS core\r\n\0"
str_ms_core:
dats	"Moscovium-SS core\r\n\0"
str_nh_core:
dats	"Nihonium core\r\n\0"
str_ns_core:
dats	"Nihonium-SS core\r\n\0"
str_ur_core:
dats	"Unrecognized core\r\n\0"

// string table
str_table:								// { ml,dr,sd,nh }
datw	lab_str_ts_core					// 0b0000, tennessine
datw	lab_str_ur_core					// 0b0001, unrecognized
datw	lab_str_ur_core					// 0b0010, unrecognized
datw	lab_str_ur_core					// 0b0011, unrecognized
datw	lab_str_mb_core					// 0b0100, moscovium-bs
datw	lab_str_ur_core					// 0b0101, unrecognized
datw	lab_str_ur_core					// 0b0110, unrecognized
datw	lab_str_ur_core					// 0b0111, unrecognized
datw	lab_str_ur_core					// 0b1000, unrecognized
datw	lab_str_ur_core					// 0b1001, unrecognized
datw	lab_str_ur_core					// 0b1010, unrecognized
datw	lab_str_ur_core					// 0b1011, unrecognized
datw	lab_str_mc_core					// 0b1100, moscovium
datw	lab_str_nh_core					// 0b1101, nihonium
datw	lab_str_ms_core					// 0b1110, moscovium-ss
datw	lab_str_ns_core					// 0b1111, nihonium-ss

skip_data_pool:


// ================================
// cpu recognition: result to r4(cpu id), r5(cpu type)
ldch	sr,(sreg_ml|sreg_dr|sreg_sd|sreg_nh)>>8
movfc	r4,sr
ldch	sr,0x00
cendw	r4
// cpu type
mov		r5,r4
andi	r5,(sreg_ml|sreg_dr|sreg_sd|sreg_nh)>>8
// cpu id
lsri	r4,sreg_b_id0-8
andi	r4,sreg_id_3>>sreg_b_id0
cmpi	r4,sreg_id_3>>sreg_b_id0
bne		pcnt+2
ldbiu	r4,sreg_id_1>>sreg_b_id0


// ================================
// set sp
ldbiu	r0,stksiz
mulu	r0,r4
addi	r0,stksiz
ldwi	r7,stkbtm
add		r7,r0
movtc	sp,r7


// ================================
// wait
ldbiu	r1,wait_times
// * cpu#
ldbiu	r0,sreg_id_2>>sreg_b_id0
sub		r0,r4
mulu	r1,r0
cmpi	r1,0
beq		wt_break
wt_loop:
rept	24-3
brn
endr
subi	r1,1
bne		wt_loop
wt_break:

// ================================
// print cpu#
ldwi	r1,lab_str_cpu_num
jalwr7	print
pushw	r1
mov		r1,r4
addi	r1,0a0
ldwi	r7,princhr
stw		[r7],r1
popw	r1
jalwr7	print

// get cpu type string
mov		r0,r5
ldwi	r1,lab_str_table
add		r1,r0
add		r1,r0
ldw		r1,[r1]

// check
ldwi	r0,lab_str_ur_core
cmp		r1,r0
beq		tstfail

// ================================
// print and finish
print_and_finish:
jalwr7	print
// cpu0 (single core cpu) or cpu1 (dual core main cpu)
cmpi	r4,sreg_id_2>>sreg_b_id0
blo		tstpass
// cpu2 (dual core sub cpu)
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

