// ================================
// MxOC115 / NxOC113 / TSOC117 Combinational Test
//		CPU recognition (dual core cpu ready)
//		(c) 2023	1YEN Toru
// ================================
asm		"mcoc_irom.mem"
incl	"mcoc115.incl"
# ================================
equ		stkptr1,iome_botm				// stack pointer for cpu#0 or #1
equ		stkptr2,iome_botm-8				// stack pointer for cpu#2
equ		chr_nil,0x00					// nil code
equ		wait_times,96					// wait times between cpu#1 and #2
# ================================


// ================================
// initialize
ldc		sp,stkptr1

// ================================
// strings
bra		skip_str_data

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
str_nh_core:
dats	"Nihonium core\r\n\0"
str_ns_core:
dats	"Nihonium-SS core\r\n\0"
str_ur_core:
dats	"Unrecognized core\r\n\0"

skip_str_data:


// ================================
// dual core cpu?
movfc	r0,sr
cendw	r0
lsri	r0,sreg_b_id0-8
andi	r0,sreg_id_3>>sreg_b_id0
cmpi	r0,sreg_id_2>>sreg_b_id0
bne		cpu_0_or_1
// cpu#2
ldc		sp,stkptr2
// wait until cpu#1 finished
ldbiu	r1,wait_times
subi	r1,1
bne		pcnt-4

cpu_0_or_1:
mov		r6,r0							// r6 keeps cpu#
ldwi	r1,lab_str_cpu_num
jalwr7	print
pushw	r1
mov		r1,r6
addi	r1,0a0
stb		[r7],r1
popw	r1
jalwr7	print

// ================================
// cpu recognition
// set sr
ldch	sr,(sreg_dr|sreg_sd|sreg_nh)>>8
movfc	r0,sr
cendw	r0
andi	r0,(sreg_dr|sreg_sd|sreg_nh)>>8
lsli	r0,1
ldwi	r7,lab_jmp_table
add		r7,r0
ldw		r7,[r7]
// clear sr, jump
ldch	sr,0x00
jmp		r7
// jump table
jmp_table:								// { dr,sd,nh }
datw	lab_ts_core						// 0b000, tennessine
datw	lab_ur_core						// 0b001, unrecognized
datw	lab_ur_core						// 0b010, unrecognized
datw	lab_ur_core						// 0b011, unrecognized
datw	lab_mc_core						// 0b100, moscovium
datw	lab_nh_core						// 0b101, nihonium
datw	lab_ms_core						// 0b110, moscovium-ss
datw	lab_ns_core						// 0b111, nihonium-ss


// ================================
// branch for each core
ts_core:
ldwi	r1,lab_str_ts_core
bra		print_and_finish

mc_core:
ldwi	r1,lab_str_mc_core
bra		print_and_finish

ms_core:
ldwi	r1,lab_str_ms_core
bra		print_and_finish

nh_core:
ldwi	r1,lab_str_nh_core
bra		print_and_finish

ns_core:
ldwi	r1,lab_str_ns_core
bra		print_and_finish

ur_core:
ldwi	r1,lab_str_ur_core
bra		print_and_finish

// ================================
// print and finish
print_and_finish:
jalwr7	print
// cpu#0
cmpi	r6,sreg_id_0>>sreg_b_id0
beq		tstpass
// cpu#2
cmpi	r6,sreg_id_2>>sreg_b_id0
beq		tstpass
// cpu#3: illegal
cmpi	r6,sreg_id_3>>sreg_b_id0
beq		tstfail
// cpu#1: halt, wait cpu#2 to finish processing
pause


// ================================
// print r1; disturbed r0, r1, r7
print:
ldwi	r7,princhr
prn_loop:
ldb		r0,[r1]
addi	r1,1							// ATTN! 8 bit addi for Tennessine
cmpi	r0,chr_nil
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

