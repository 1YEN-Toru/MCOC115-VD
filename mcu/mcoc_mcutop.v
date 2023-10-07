module	`MCOC_TOP_NAME (
// Moscovium / Nihonium / Tennessine On Chip
input	sys_clock,
input	sys_reset,
input	sys_bootr,
input	sys_mdsim,
input	uart_rxd,
input	uar1_rxd,
input	uar1_cts,
input	intc_int0,
input	intc_int1,
inout	stws_scl,
inout	stws_sda,
inout	[15:0]	port_iop,
//inout	[15:0]	user_iop,
output	uart_txd,
output	uar1_txd,
output	uar1_rts,
output	tim0_pwma,
output	tim0_pwmb,
output	tim1_pwma,
output	tim1_pwmb,
output	tled_ledr_n,
output	tled_ledg_n,
output	tled_ledb_n,
output	tled_led1,
output	tled_led2);


`define		MCOC_VERS		16'h0204


//
//	Moscovium / Nihonium / Tennessine On Chip
//		(c) 2021,2023	1YEN Toru
//
//
//	2023/10/07	ver.2.04
//		replace: uart8n1 FIFO: FIFO macro -> fifo8s64
//
//	2023/09/30	ver.2.02
//		pin assign: tim162, stws, uart#1
//
//	2023/09/23	ver.2.00
//		General purpose top module edition
//
// ================================
//	2023/07/08	ver.1.48
//		TSOC117MN0408
//		TS-MN=Tennessine, minimum edition
//
//	2023/05/20	ver.1.46
//		NSOC113MD0816
//		NS-MD=Nihonium-SS, memory extended edition
//
//	2023/03/11	ver.1.44
//		NHOC113LB4408
//		NH-LB=Nihonium, long word bus edition
//
//	2023/02/11	ver.1.42
//		NHOC113FS0408
//		NH-FS=Nihonium, single precision fpu edition
//
//	2023/01/21	ver.1.40
//		MCOC115DA0408
//		DA=d/a converter edition
//
//	2022/10/22	ver.1.38
//		NSOC113VL0408
//		NS-VL=Nihonium-SS, interrupt vector and level edition
//
//	2022/10/08	ver.1.36
//		MCOC115RT0408
//		RT=real time clock edition
//
//	2022/09/03	ver.1.34
//		NHOC113DM0408
//		NH-DM=Nihonium, distance measuring edition
//
//	2022/08/06	ver.1.32
//		MCOC115US0816
//		US=unicode and s-jis conversion edition
//
//	2022/06/25	ver.1.30
//		MSOC115LS0808
//		MS-LS=Moscovium-SS, logiscope edition
//
//	2022/06/11	ver.1.28
//		MSOC115DC0416
//		MS-DC=Moscovium-SS, dual core cpu edition
//
//	2022/05/21	ver.1.26
//		NSOC113SD0408
//		NS-SD=Nihonium-SS, sdram edition
//
//	2022/04/09	ver.1.24
//		NHOC113SC0408
//		NH-SC=Nihonium, sdram and cache memory edition
//
//	2022/03/12	ver.1.22
//		MCOC115SC0408
//		SC=sdram and cache memory edition
//
//	2022/02/19	ver.1.20
//		MCOC115SD0408
//		SD=sdram edition
//
//	2022/01/29	ver.1.18
//		MCOC115AD0408
//		AD=a/d converter edition
//
//	2021/11/06	ver.1.16
//		MCOC115EX4808
//		EX=extended edition
//
//	2021/10/16	ver.1.14
//		MCOC115JP0408
//		JP=japanese font rom edition
//
//	2021/08/14	ver.1.12
//		MCOC115TW0408
//		TW=synchronous two wire serial edition
//
//	2021/07/31	ver.1.10
//		MCOC115DC0416
//		DC=dual core cpu edition
//
//	2021/06/12	ver.1.08
//		MCOC115FP0440
//		FP=half precision fpu edition
//
//	2021/05/29	ver.1.06
//		MCOC115LA0408
//		LA=logic analyzer edition
//
//	2021/05/22	ver.1.04
//		MCOC115CP0408
//		CP=multiply and divide co-processor edition
//
//	2021/05/01	ver.1.02
//		MCOC115IP0408
//		IP=interrupt and pwm output edition
//
//	2021/04/10	ver.1.00
//		MCOC115MN0408
//		MN=minimum edition
//


// definitions for ID register unit
`ifdef		MCOC_CORE_TS
defparam	idrg.idcode=16'h1170;
`elsif		MCOC_CORE_NHSS
defparam	idrg.idcode=16'h113a;
`elsif		MCOC_CORE_NH
defparam	idrg.idcode=16'h1130;
`elsif		MCOC_CORE_MCSS
defparam	idrg.idcode=16'h115a;
`else
defparam	idrg.idcode=16'h1150;
`endif
defparam	idrg.versno=`MCOC_VERS;
defparam	idrg.fcpuhz=
				((`MCOC_FCPU_MHZ>>4)*10 + (`MCOC_FCPU_MHZ & 8'h0f))*1000;
defparam	idrg.edcode=`MCOC_CODE_ED;
defparam	idrg.romtop=16'h0000;
`ifdef		MCOC_ROM_16K
defparam	idrg.romsiz=16'd16*16'd1024;
`elsif		MCOC_ROM_8K
defparam	idrg.romsiz=16'd8*16'd1024;
`else
defparam	idrg.romsiz=16'd4*16'd1024;
`endif
defparam	idrg.ramtop=16'h5000;
`ifdef		MCOC_RAM_LE1K
defparam	idrg.ramsiz=`MCOC_RAM_LE1K;
`elsif		MCOC_RAM_40K
defparam	idrg.ramsiz=16'd40*16'd1024;
`elsif		MCOC_RAM_32K
defparam	idrg.ramsiz=16'd32*16'd1024;
`elsif		MCOC_RAM_24K
defparam	idrg.ramsiz=16'd24*16'd1024;
`elsif		MCOC_RAM_16K
defparam	idrg.ramsiz=16'd16*16'd1024;
`else
defparam	idrg.ramsiz=16'd8*16'd1024;
`endif

// memory bus
(* dont_touch = "yes" *)wire	brdy;
(* dont_touch = "yes" *)wire	bmst;
(* dont_touch = "yes" *)wire	[23:0]	badr;
(* dont_touch = "yes" *)wire	[3:0]	bcmd;
(* dont_touch = "yes" *)wire	[31:0]	bdatw;
(* dont_touch = "yes" *)wire	[31:0]	bdatr;
wire	[15:0]	bdatr_intc;
wire	[15:0]	bdatr_idrg;
wire	[31:0]	bdatr_rom;
wire	[31:0]	bdatr_ram;
wire	[15:0]	bdatr_iram;
wire	[15:0]	bdatr_sytm;
wire	[15:0]	bdatr_uart;
wire	[15:0]	bdatr_port;
wire	[15:0]	bdatr_tim0;
wire	[15:0]	bdatr_tim1;
wire	[15:0]	bdatr_loga;
wire	[15:0]	bdatr_smph;
wire	[15:0]	bdatr_icff;
wire	[15:0]	bdatr_stws;
wire	[15:0]	bdatr_fnjp;
wire	[15:0]	bdatr_uar1;
wire	[15:0]	bdatr_por1;
wire	[15:0]	bdatr_adcu;
wire	[15:0]	bdatr_sdrm;
wire	[15:0]	bdatr_cach;
wire	[15:0]	bdatr_unsj;
wire	[15:0]	bdatr_dist;
wire	[15:0]	bdatr_rtcu;
wire	[15:0]	bdatr_dac0;
wire	[15:0]	bdatr_dac1;
wire	[15:0]	bdatr_iome;
wire	[15:0]	bdatr_tled;

// memory bus command alias
wire	bcmdr=bcmd[0];
wire	bcmdw=bcmd[1];
wire	bcmdb=bcmd[2];
wire	bcmdl=bcmd[3];

// dual core cpu bus
wire	[3:0]	bcmd1;
wire	[15:0]	badrx1;
wire	[15:0]	badr1;
wire	[31:0]	bdatw1;
wire	[31:0]	bdatr1;
wire	[15:0]	fadr1;
wire	[15:0]	fdatx1;
wire	[15:0]	fdat1;
wire	[3:0]	bcmd2;
wire	[15:0]	badrx2;
wire	[15:0]	badr2;
wire	[31:0]	bdatw2;
wire	[31:0]	bdatr2;
wire	[15:0]	fadr2;
wire	[15:0]	fdatx2;
wire	[15:0]	fdat2;

// interrupt controller
wire	[1:0]	intc_lev;
wire	[1:0]	intc_lev2;
wire	[5:0]	intc_vec;
wire	[5:0]	intc_vec2;

// user i/o port
wire	[15:0]	user_iop;
wire	[15:0]	user_iop_out=16'h0;
wire	[15:0]	user_iop_enb=16'h0;
wire	[15:0]	user_iop_inp=user_iop[15:0];
assign	user_iop[0]=(!user_iop_enb[0])? 1'bz: user_iop_out[0];
assign	user_iop[1]=(!user_iop_enb[1])? 1'bz: user_iop_out[1];
assign	user_iop[2]=(!user_iop_enb[2])? 1'bz: user_iop_out[2];
assign	user_iop[3]=(!user_iop_enb[3])? 1'bz: user_iop_out[3];
assign	user_iop[4]=(!user_iop_enb[4])? 1'bz: user_iop_out[4];
assign	user_iop[5]=(!user_iop_enb[5])? 1'bz: user_iop_out[5];
assign	user_iop[6]=(!user_iop_enb[6])? 1'bz: user_iop_out[6];
assign	user_iop[7]=(!user_iop_enb[7])? 1'bz: user_iop_out[7];
assign	user_iop[8]=(!user_iop_enb[8])? 1'bz: user_iop_out[8];
assign	user_iop[9]=(!user_iop_enb[9])? 1'bz: user_iop_out[9];
assign	user_iop[10]=(!user_iop_enb[10])? 1'bz: user_iop_out[10];
assign	user_iop[11]=(!user_iop_enb[11])? 1'bz: user_iop_out[11];
assign	user_iop[12]=(!user_iop_enb[12])? 1'bz: user_iop_out[12];
assign	user_iop[13]=(!user_iop_enb[13])? 1'bz: user_iop_out[13];
assign	user_iop[14]=(!user_iop_enb[14])? 1'bz: user_iop_out[14];
assign	user_iop[15]=(!user_iop_enb[15])? 1'bz: user_iop_out[15];


`ifdef		MCOC_MCVM_DUAL
`CPU_CORE	cpu2 (
	.clk(clk),	// Input
	.rst_n(rst_n),	// Input
	.brdy(brdy2),	// Input
	.irq(irq2&(~bootmd)),	// Input
	.cpuid(2'h2),	// Input
	.irq_lev(intc_lev2[1:0]),	// Input
	.irq_vec(intc_vec2[5:0]),	// Input
	.fdatx(fdatx2[15:0]),	// Input
	.fdat(fdat2[15:0]),	// Input
	.bdatrx(bdatr2[31:16]),	// Input
	.bdatr(bdatr2[15:0]),	// Input
	.fadr(fadr2[15:0]),	// Output
	.bcmd(bcmd2[3:0]),	// Output
	.badrx(badrx2[15:0]),	// Output
	.badr(badr2[15:0]),	// Output
	.bdatwx(bdatw2[31:16]),	// Output
	.bdatw(bdatw2[15:0])	// Output
);

wire	[1:0]	cpuid1=2'h1;
`else	//	MCOC_MCVM_DUAL
wire	[1:0]	cpuid1=2'h0;
assign	fadr2[15:0]=16'h0;
assign	badrx2[15:0]=16'h0;
assign	badr2[15:0]=16'h0;
assign	bcmd2[3:0]=3'h0;
assign	bdatw2[31:0]=32'h0;
`endif	//	MCOC_MCVM_DUAL

`CPU_CORE	cpu (
	.clk(clk),	// Input
	.rst_n(rst_n),	// Input
	.brdy(brdy1),	// Input
	.irq(irq),	// Input
	.cpuid(cpuid1[1:0]),	// Input
	.irq_lev(intc_lev[1:0]),	// Input
	.irq_vec(intc_vec[5:0]),	// Input
	.fdatx(fdatx1[15:0]),	// Input
	.fdat(fdat1[15:0]),	// Input
	.bdatrx(bdatr1[31:16]),	// Input
	.bdatr(bdatr1[15:0]),	// Input
	.fadr(fadr1[15:0]),	// Output
	.bcmd(bcmd1[3:0]),	// Output
	.badrx(badrx1[15:0]),	// Output
	.badr(badr1[15:0]),	// Output
	.bdatwx(bdatw1[31:16]),	// Output
	.bdatw(bdatw1[15:0])	// Output
);

`ifdef		MCOC_MCVM_DUAL
wire	[5:0]	smph_ram1_n;
wire	[5:0]	smph_ram2_n;
wire	[11:0]	smph_usr1_n;
wire	[11:0]	smph_usr2_n;

semph5r12u	smph (
	.clk(clk),	// Input
	.rst_n(rst_n),	// Input
	.brdy(brdy),	// Input
	.bcmdr(bcmdr),	// Input
	.bcmdw(bcmdw),	// Input
	.bmst(bmst),	// Input
	.bcs_smph_n(bcs_smph_n),	// Input
	.badr(badr[3:0]),	// Input
	.bdatw(bdatw[15:0]),	// Input
	.smph_smrr1(smph_smrr1),	// Output
	.smph_smur1(smph_smur1),	// Output
	.smph_smrr2(smph_smrr2),	// Output
	.smph_smur2(smph_smur2),	// Output
	.smph_ram1_n(smph_ram1_n[5:0]),	// Output
	.smph_ram2_n(smph_ram2_n[5:0]),	// Output
	.smph_usr1_n(smph_usr1_n[11:0]),	// Output
	.smph_usr2_n(smph_usr2_n[11:0]),	// Output
	.bdatr(bdatr_smph[15:0])	// Output
);

mcoc_icff	icff (
	.clk(clk),	// Input
	.rst_n(rst_n),	// Input
	.brdy(brdy),	// Input
	.bcmdr(bcmdr),	// Input
	.bcmdw(bcmdw),	// Input
	.bmst(bmst),	// Input
	.bcs_icff_n(bcs_icff_n),	// Input
	.badr(badr[3:0]),	// Input
	.bdatw(bdatw[15:0]),	// Input
	.icff_frar1(icff_frar1),	// Output
	.icff_ftar1(icff_ftar1),	// Output
	.icff_frar2(icff_frar2),	// Output
	.icff_ftar2(icff_ftar2),	// Output
	.bdatr(bdatr_icff[15:0])	// Output
);
`else	//	MCOC_MCVM_DUAL
wire	smph_smrr2=1'b0;
wire	smph_smur2=1'b0;
wire	smph_smrr1=1'b0;
wire	smph_smur1=1'b0;
wire	[5:0]	smph_ram1_n=6'h0;
wire	[5:0]	smph_ram2_n=6'h0;
wire	[8:0]	smph_usr1_n=9'h0;
wire	[8:0]	smph_usr2_n=9'h0;
assign	bdatr_smph[15:0]=16'h0;

wire	icff_frar1=1'b0;
wire	icff_ftar1=1'b0;
wire	icff_frar2=1'b0;
wire	icff_ftar2=1'b0;
assign	bdatr_icff[15:0]=16'h0;
`endif	//	MCOC_MCVM_DUAL

busc2040dl	busc (
	.clk(clk),	// Input
	.rst_n(rst_n),	// Input
	.sdc_brdy(sdc_brdy),	// Input
	.cch_hit(cch_hit),	// Input
	.bcs_acc_2(bcs_acc_2),	// Input
	.bcs_acc_l1(bcs_acc_l1),	// Input
	.bcs_acc_l2(bcs_acc_l2),	// Input
	.bcs_sdram_n(bcs_sdram_n),	// Input
	.bdatr(bdatr[31:0]),	// Input
	.bcmd1(bcmd1[3:0]),	// Input
	.badr1({ badrx1[7:0],badr1[15:0] }),	// Input
	.bdatw1(bdatw1[31:0]),	// Input
	.bcmd2(bcmd2[3:0]),	// Input
	.badr2({ badrx2[7:0],badr2[15:0] }),	// Input
	.bdatw2(bdatw2[31:0]),	// Input
	.bmst(bmst),	// Output
	.brdy(brdy),	// Output
	.brdy1(brdy1),	// Output
	.brdy2(brdy2),	// Output
	.bcmd(bcmd[3:0]),	// Output
	.badr(badr[23:0]),	// Output
	.bdatw(bdatw[31:0]),	// Output
	.bdatr1(bdatr1[31:0]),	// Output
	.bdatr2(bdatr2[31:0])	// Output
);

mcoc_adrdec		adec (
	.bmst(bmst),	// Input
	.smph_ram1_n(smph_ram1_n[4:0]),	// Input
	.smph_ram2_n(smph_ram2_n[4:0]),	// Input
	.badr(badr[23:0]),	// Input
	.badr1({ badrx1[7:0],badr1[15:0] }),	// Input
	.badr2({ badrx2[7:0],badr2[15:0] }),	// Input
	.bcs_rom_n(bcs_rom_n),	// Output
	.bcs_iram_n(bcs_iram_n),	// Output
	.bcs_ram_n(bcs_ram_n),	// Output
	.bcs_ram0_n(bcs_ram0_n),	// Output
	.bcs_ram1_n(bcs_ram1_n),	// Output
	.bcs_ram2_n(bcs_ram2_n),	// Output
	.bcs_ram3_n(bcs_ram3_n),	// Output
	.bcs_ram4_n(bcs_ram4_n),	// Output
	.bcs_iou_n(bcs_iou_n),	// Output
	.bcs_acc_2(bcs_acc_2),	// Output
	.bcs_acc_l1(bcs_acc_l1),	// Output
	.bcs_acc_l2(bcs_acc_l2),	// Output
	.bcs_sdram_n(bcs_sdram_n),	// Output
	.bcs_idrg_n(bcs_idrg_n),	// Output
	.bcs_sytm_n(bcs_sytm_n),	// Output
	.bcs_port_n(bcs_port_n),	// Output
	.bcs_uart_n(bcs_uart_n),	// Output
	.bcs_tim0_n(bcs_tim0_n),	// Output
	.bcs_tim1_n(bcs_tim1_n),	// Output
	.bcs_intc_n(bcs_intc_n),	// Output
	.bcs_loga_n(bcs_loga_n),	// Output
	.bcs_smph_n(bcs_smph_n),	// Output
	.bcs_icff_n(bcs_icff_n),	// Output
	.bcs_stws_n(bcs_stws_n),	// Output
	.bcs_fnjp_n(bcs_fnjp_n),	// Output
	.bcs_uar1_n(bcs_uar1_n),	// Output
	.bcs_por1_n(bcs_por1_n),	// Output
	.bcs_adcu_n(bcs_adcu_n),	// Output
	.bcs_sdrc_n(bcs_sdrc_n),	// Output
	.bcs_unsj_n(bcs_unsj_n),	// Output
	.bcs_dist_n(bcs_dist_n),	// Output
	.bcs_rtcu_n(bcs_rtcu_n),	// Output
	.bcs_int2_n(bcs_int2_n),	// Output
	.bcs_dacu_n(bcs_dacu_n),	// Output
	.bcs_iome_n(bcs_iome_n),	// Output
	.bcs_tled_n(bcs_tled_n)	// Output
);

`ifdef		MCOC_FCPU_32M
mcoc_clkgen_32	clkg (
`else
mcoc_clkgen		clkg (
`endif
	.clk_in(sys_clock),	// Input
	.clk_out(clk),	// Output
	.locked_clk(locked_clk)	// Output
);

sysca7	sysc (
	.clk(clk),	// Input
	.locked_clk(locked_clk),	// Input
	.sys_reset(sys_reset),	// Input
	.sys_bootr(sys_bootr),	// Input
	.sys_mdsim(sys_mdsim),	// Input
	.rst_n(rst_n),	// Output
	.bootmd(bootmd),	// Output
	.simumd(simumd)	// Output
);

// interrupt request
wire	intc_eir1;
wire	intc_eir0;
wire	intc_icr2;
wire	intc_icr1;
wire	[31:0]	intc_fct=
		{
			icff_frar2, icff_ftar2, smph_smrr2, smph_smur2,
			icff_frar1, icff_ftar1, smph_smrr1, smph_smur1,
			adc_cenr, rtc_rtcr, tled_lofr, 1'b0,
			4'h0,
			tim1_ovfr, tim1_cmar, tim1_cmbr, 1'b0,
			tim0_ovfr, tim0_cmar, tim0_cmbr, 1'b0,
			stws_mter, stws_mrar, stws_star, stws_srar,
			intc_eir1, intc_eir0, intc_icr2, intc_icr1
		};

`ifdef		MCOC_NO_INTC
reg		irq_f;
always	@(posedge clk)
	begin
		if (!rst_n)
			irq_f<=1'b0;
		else
			irq_f<=( |intc_fct[31:0] );
	end
assign	irq=irq_f;
assign	irq2=irq_f;
assign	bdatr_intc[15:0]=16'h0;
assign	intc_lev[1:0]=2'h0;
assign	intc_lev2[1:0]=2'h0;
assign	intc_vec[5:0]=6'h0;
assign	intc_vec2[5:0]=6'h0;
assign	intc_eir1=1'b0;
assign	intc_eir0=1'b0;
assign	intc_icr2=1'b0;
assign	intc_icr1=1'b0;
`else	//	MCOC_NO_INTC
intc322dvl	intc (
	.clk(clk),	// Input
	.rst_n(rst_n),	// Input
	.intc_int0(intc_int0),	// Input
	.intc_int1(intc_int1),	// Input
	.brdy(brdy),	// Input
	.bcmdr(bcmdr),	// Input
	.bcmdw(bcmdw),	// Input
	.bmst(bmst),	// Input
	.bcs_intc_n(bcs_intc_n),	// Input
	.bcs_int2_n(bcs_int2_n),	// Input
	.badr(badr[3:0]),	// Input
	.bdatw(bdatw[15:0]),	// Input
	.intc_fct(intc_fct[31:0]),	// Input
	.intc_irq(irq),	// Output
	.intc_irq2(irq2),	// Output
	.intc_eir0(intc_eir0),	// Output
	.intc_eir1(intc_eir1),	// Output
	.intc_icr1(intc_icr1),	// Output
	.intc_icr2(intc_icr2),	// Output
	.bdatr(bdatr_intc[15:0]),	// Output
	.intc_lev(intc_lev[1:0]),	// Output
	.intc_lev2(intc_lev2[1:0]),	// Output
	.intc_vec(intc_vec[5:0]),	// Output
	.intc_vec2(intc_vec2[5:0])	// Output
);
`endif	//	MCOC_NO_INTC

`ifdef		MCOC_ROM_SS
wire	fcmdl=1'b1;
`else	//	MCOC_ROM_SS
wire	fcmdl=1'b0;
`endif	//	MCOC_ROM_SS
wire	[15:0]	rom_fdat1;
wire	[15:0]	rom_fdat2;

mcoc_rom32	rom (
	.clk(clk),	// Input
	.rst_n(rst_n),	// Input
	.bootmd(bootmd),	// Input
	.brdy(brdy),	// Input
	.bcmdr(bcmdr),	// Input
	.bcmdw(bcmdw),	// Input
	.bcmdl(bcmdl),	// Input
	.bmst(bmst),	// Input
	.bcs_rom_n(bcs_rom_n),	// Input
	.fcmdl(fcmdl),	// Input
	.fadr1(fadr1[15:0]),	// Input
	.fadr2(fadr2[15:0]),	// Input
	.badr(badr[15:0]),	// Input
	.bdatw(bdatw[15:0]),	// Input
	.fdat1({ fdatx1[15:0],rom_fdat1[15:0] }),	// Output
	.fdat2({ fdatx2[15:0],rom_fdat2[15:0] }),	// Output
	.bdatr(bdatr_rom[31:0])	// Output
);

`ifdef		MCOC_RAM_LE1K
assign	bdatr_ram[31:16]=16'h0;
tsoc_ram_le1k	ram (
    .clk(clk),  // Input
    .rst_n(rst_n),  // Input
    .brdy(brdy),    // Input
    .bcs_ram_n(bcs_ram0_n),  // Input
    .bcmd(bcmd[2:0]),    // Input
    .badr(badr[15:0]),    // Input
    .bdatw(bdatw[15:0]),  // Input
    .bdatr(bdatr_ram[15:0])   // Output
);
`else	//	MCOC_RAM_LE1K
mcoc_ram32	ram (
	.clk(clk),	// Input
	.rst_n(rst_n),	// Input
	.brdy(brdy),	// Input
	.bcs_ram_n(bcs_ram_n),	// Input
	.bcs_ram0_n(bcs_ram0_n),	// Input
	.bcs_ram1_n(bcs_ram1_n),	// Input
	.bcs_ram2_n(bcs_ram2_n),	// Input
	.bcs_ram3_n(bcs_ram3_n),	// Input
	.bcs_ram4_n(bcs_ram4_n),	// Input
	.bcmd(bcmd[3:0]),	// Input
	.badr(badr[15:0]),	// Input
	.bdatw(bdatw[31:0]),	// Input
	.bdatr(bdatr_ram[31:0])	// Output
);
`endif	//	MCOC_RAM_LE1K

`ifdef		MCOC_IRAM_4K
mcoc_iram	iram (
	.clk(clk),	// Input
	.rst_n(rst_n),	// Input
	.brdy(brdy),	// Input
	.bmst(bmst),	// Input
	.bcs_iram_n(bcs_iram_n),	// Input
	.bcmd(bcmd[2:0]),	// Input
	.fadr1(fadr1[15:0]),	// Input
	.fadr2(fadr2[15:0]),	// Input
	.badr(badr[15:0]),	// Input
	.bdatw(bdatw[15:0]),	// Input
	.rom_fdat1(rom_fdat1[15:0]),	// Input
	.rom_fdat2(rom_fdat2[15:0]),	// Input
	.fdat1(fdat1[15:0]),	// Output
	.fdat2(fdat2[15:0]),	// Output
	.bdatr(bdatr_iram[15:0])	// Output
);
`else	//	MCOC_IRAM_4K
assign	bdatr_iram[15:0]=16'h0;
assign	fdat1[15:0]=rom_fdat1[15:0];
assign	fdat2[15:0]=rom_fdat2[15:0];
`endif	//	MCOC_IRAM_4K

mcoc_idrg	idrg (
	.clk(clk),	// Input
	.rst_n(rst_n),	// Input
	.brdy(brdy),	// Input
	.bcmdr(bcmdr),	// Input
	.bcs_idrg_n(bcs_idrg_n),	// Input
	.badr(badr[3:0]),	// Input
	.bdatr(bdatr_idrg[15:0])	// Output
);

systim	sytm (
	.clk(clk),	// Input
	.rst_n(rst_n),	// Input
	.brdy(brdy),	// Input
	.simumd(simumd),	// Input
	.bcmdr(bcmdr),	// Input
	.bcmdw(bcmdw),	// Input
	.bcs_sytm_n(bcs_sytm_n),	// Input
	.badr(badr[3:0]),	// Input
	.clk_mhz(`MCOC_FCPU_MHZ),	// Input
	.bdatw(bdatw[15:0]),	// Input
	.bdatr(bdatr_sytm[15:0])	// Output
);

iomem16		iome (
	.clk(clk),	// Input
	.rst_n(rst_n),	// Input
	.bcmdr(bcmdr),	// Input
	.bcmdw(bcmdw),	// Input
	.bcmdb(bcmdb),	// Input
	.brdy(brdy),	// Input
	.bcs_iome_n(bcs_iome_n),	// Input
	.badr(badr[3:0]),	// Input
	.bdatw(bdatw[15:0]),	// Input
	.bdatr(bdatr_iome[15:0])	// Output
);

// i/o buffer
wire	[7:0]	port_enb;
wire	[7:0]	port_sel;
wire	[7:0]	port_inp_i;
wire	[7:0]	port_out_o;
wire	[7:0]	por1_enb;
wire	[7:0]	por1_out_o;
assign	port_inp_i[7]=(port_sel[7])? port_iop[7]: port_iop[15];
assign	port_inp_i[6]=(port_sel[6])? port_iop[6]: port_iop[14];
assign	port_inp_i[5]=(port_sel[5])? port_iop[5]: port_iop[13];
assign	port_inp_i[4]=(port_sel[4])? port_iop[4]: port_iop[12];
assign	port_inp_i[3]=(port_sel[3])? port_iop[3]: port_iop[11];
assign	port_inp_i[2]=(port_sel[2])? port_iop[2]: port_iop[10];
assign	port_inp_i[1]=(port_sel[1])? port_iop[1]: port_iop[9];
assign	port_inp_i[0]=(port_sel[0])? port_iop[0]: port_iop[8];
assign	port_iop[15]=(por1_enb[7])? por1_out_o[7]: 1'bz;
assign	port_iop[14]=(por1_enb[6])? por1_out_o[6]: 1'bz;
assign	port_iop[13]=(por1_enb[5])? por1_out_o[5]: 1'bz;
assign	port_iop[12]=(por1_enb[4])? por1_out_o[4]: 1'bz;
assign	port_iop[11]=(por1_enb[3])? por1_out_o[3]: 1'bz;
assign	port_iop[10]=(por1_enb[2])? por1_out_o[2]: 1'bz;
assign	port_iop[9]=(por1_enb[1])? por1_out_o[1]: 1'bz;
assign	port_iop[8]=(por1_enb[0])? por1_out_o[0]: 1'bz;
assign	port_iop[7]=(port_enb[7])? port_out_o[7]: 1'bz;
assign	port_iop[6]=(port_enb[6])? port_out_o[6]: 1'bz;
assign	port_iop[5]=
		(dac1_pdmo_enb)? dac1_pdmo:
		(port_enb[5])? port_out_o[5]:
		1'bz;
assign	port_iop[4]=
		(dac0_pdmo_enb)? dac0_pdmo:
		(port_enb[4])? port_out_o[4]:
		1'bz;
assign	port_iop[3]=(port_enb[3])? port_out_o[3]: 1'bz;
assign	port_iop[2]=(port_enb[2])? port_out_o[2]: 1'bz;
assign	port_iop[1]=(port_enb[1])? port_out_o[1]: 1'bz;
assign	port_iop[0]=(port_enb[0])? port_out_o[0]: 1'bz;

`ifdef		MCOC_PORT_HIZO
wire	port_init_hizo=1'b1;
`else	//	MCOC_PORT_HIZO
wire	port_init_hizo=1'b0;
`endif	//	MCOC_PORT_HIZO
port8i8o	port (
	.clk(clk),	// Input
	.rst_n(rst_n),	// Input
	.port_init_hizo(port_init_hizo),	// Input
	.brdy(brdy),	// Input
	.bcmdr(bcmdr),	// Input
	.bcmdw(bcmdw),	// Input
	.bcs_port_n(bcs_port_n),	// Input
	.badr(badr[3:0]),	// Input
	.bdatw(bdatw[7:0]),	// Input
	.port_inp(port_inp_i[7:0]),	// Input
	.bdatr(bdatr_port[15:0]),	// Output
	.port_enb(port_enb[7:0]),	// Output
	.port_sel(port_sel[7:0]),	// Output
	.port_out(port_out_o[7:0])	// Output
);

`ifdef		MCOC_NO_POR1
assign	bdatr_por1[15:0]=16'h0;
assign	por1_enb[7:0]=8'h0;
assign	por1_out_o[7:0]=8'h0;
`else	//	MCOC_NO_POR1
wire	[7:0]	por1_sel_open;

port8i8o	por1 (
	.clk(clk),	// Input
	.rst_n(rst_n),	// Input
	.port_init_hizo(1'b1),	// Input
	.brdy(brdy),	// Input
	.bcmdr(bcmdr),	// Input
	.bcmdw(bcmdw),	// Input
	.bcs_port_n(bcs_por1_n),	// Input
	.badr(badr[3:0]),	// Input
	.bdatw(bdatw[7:0]),	// Input
	.port_inp(port_iop[15:8]),	// Input
	.bdatr(bdatr_por1[15:0]),	// Output
	.port_enb(por1_enb[7:0]),	// Output
	.port_sel(por1_sel_open[7:0]),	// Output
	.port_out(por1_out_o[7:0])	// Output
);
`endif	//	MCOC_NO_POR1

mcoc_uart	uart (
	.clk(clk),	// Input
	.rst_n(rst_n),	// Input
	.simumd(simumd),	// Input
	.uart_rxd(uart_rxd),	// Input
	.uart_cts(1'b0),	// Input
	.brdy(brdy),	// Input
	.bcs_uart_n(bcs_uart_n),	// Input
	.bcmdr(bcmdr),	// Input
	.bcmdw(bcmdw),	// Input
	.badr(badr[3:0]),	// Input
	.bdatw(bdatw[15:0]),	// Input
	.uart_txd(uart_txd),	// Output
	.uart_rts(uart_rts_open),	// Output
	.bdatr(bdatr_uart[15:0])	// Output
);

`ifdef		MCOC_NO_UAR1
assign	uar1_txd=1'b1;
assign	uar1_rts=1'b1;
assign	bdatr_uar1[15:0]=16'h0;
`else	//	MCOC_NO_UAR1
mcoc_uart	uar1 (
	.clk(clk),	// Input
	.rst_n(rst_n),	// Input
	.simumd(simumd),	// Input
	.uart_rxd(uar1_rxd),	// Input
	.uart_cts(uar1_cts),	// Input
	.brdy(brdy),	// Input
	.bcs_uart_n(bcs_uar1_n),	// Input
	.bcmdr(bcmdr),	// Input
	.bcmdw(bcmdw),	// Input
	.badr(badr[3:0]),	// Input
	.bdatw(bdatw[15:0]),	// Input
	.uart_txd(uar1_txd),	// Output
	.uart_rts(uar1_rts),	// Output
	.bdatr(bdatr_uar1[15:0])	// Output
);
`endif	//	MCOC_NO_UAR1

`ifdef		MCOC_NO_TIM0
assign	tim0_pwma=1'b0;
assign	tim0_pwmb=1'b0;
assign	tim0_ovfr=1'b0;
assign	tim0_cmar=1'b0;
assign	tim0_cmbr=1'b0;
assign	bdatr_tim0[15:0]=16'h0;
`else	//	MCOC_NO_TIM0
tim162	tim0 (
	.clk(clk),	// Input
	.rst_n(rst_n),	// Input
	.brdy(brdy),	// Input
	.bcmdr(bcmdr),	// Input
	.bcmdw(bcmdw),	// Input
	.bcs_timr_n(bcs_tim0_n),	// Input
	.badr(badr[3:0]),	// Input
	.bdatw(bdatw[15:0]),	// Input
	.timr_pwma(tim0_pwma),	// Output
	.timr_pwmb(tim0_pwmb),	// Output
	.timr_ovfr(tim0_ovfr),	// Output
	.timr_cmar(tim0_cmar),	// Output
	.timr_cmbr(tim0_cmbr),	// Output
	.bdatr(bdatr_tim0[15:0])	// Output
);
`endif	//	MCOC_NO_TIM0

`ifdef		MCOC_NO_TIM1
assign	tim1_pwma=1'b0;
assign	tim1_pwmb=1'b0;
assign	tim1_ovfr=1'b0;
assign	tim1_cmar=1'b0;
assign	tim1_cmbr=1'b0;
assign	bdatr_tim1[15:0]=16'h0;
`else	//	MCOC_NO_TIM1
tim162	tim1 (
	.clk(clk),	// Input
	.rst_n(rst_n),	// Input
	.brdy(brdy),	// Input
	.bcmdr(bcmdr),	// Input
	.bcmdw(bcmdw),	// Input
	.bcs_timr_n(bcs_tim1_n),	// Input
	.badr(badr[3:0]),	// Input
	.bdatw(bdatw[15:0]),	// Input
	.timr_pwma(tim1_pwma),	// Output
	.timr_pwmb(tim1_pwmb),	// Output
	.timr_ovfr(tim1_ovfr),	// Output
	.timr_cmar(tim1_cmar),	// Output
	.timr_cmbr(tim1_cmbr),	// Output
	.bdatr(bdatr_tim1[15:0])	// Output
);
`endif	//	MCOC_NO_TIM1

`ifdef		MCOC_NO_LOGA
assign	bdatr_loga[15:0]=16'h0;
`else	//	MCOC_NO_LOGA
mcoc_loga	loga (
	.clk(clk),	// Input
	.rst_n(rst_n),	// Input
	.bcs_loga_n(bcs_loga_n),	// Input
	.brdy(brdy),	// Input
	.bcmdr(bcmdr),	// Input
	.bcmdw(bcmdw),	// Input
	.badr(badr[15:0]),	// Input
	.bdatw(bdatw[15:0]),	// Input
	.loga_dch(port_iop[15:8]),	// Input
	.bdatr(bdatr_loga[15:0])	// Output
);
`endif	//	MCOC_NO_LOGA

`ifdef		MCOC_NO_STWS
wire	stws_scl_d=1'b1;
wire	stws_sda_d=1'b1;
assign	stws_mter=1'b0;
assign	stws_mrar=1'b0;
assign	stws_star=1'b0;
assign	stws_srar=1'b0;
assign	bdatr_stws[15:0]=16'h0;
`else	//	MCOC_NO_STWS
mcoc_stwser		stws (
	.clk(clk),	// Input
	.rst_n(rst_n),	// Input
	.brdy(brdy),	// Input
	.bcmdr(bcmdr),	// Input
	.bcmdw(bcmdw),	// Input
	.bcs_stws_n(bcs_stws_n),	// Input
	.stws_scl_i(stws_scl),	// Input
	.stws_sda_i(stws_sda),	// Input
	.badr(badr[3:0]),	// Input
	.bdatw(bdatw[15:0]),	// Input
	.stws_scl_d(stws_scl_d),	// Output
	.stws_sda_d(stws_sda_d),	// Output
	.stws_mter(stws_mter),	// Output
	.stws_mrar(stws_mrar),	// Output
	.stws_star(stws_star),	// Output
	.stws_srar(stws_srar),	// Output
	.bdatr(bdatr_stws[15:0])	// Output
);
`endif	//	MCOC_NO_STWS

// i/o buffer
assign	stws_scl=(stws_scl_d)? 1'bz: stws_scl_d;
assign	stws_sda=(stws_sda_d)? 1'bz: stws_sda_d;

`ifdef		MCOC_NO_FNJP
assign	bdatr_fnjp[15:0]=16'h0;
`else	//	MCOC_NO_FNJP
mcoc_font	fnjp (
	.clk(clk),	// Input
	.rst_n(rst_n),	// Input
	.brdy(brdy),	// Input
	.bcmdb(bcmdb),	// Input
	.bcmdw(bcmdw),	// Input
	.bcmdr(bcmdr),	// Input
	.bcs_fnjp_n(bcs_fnjp_n),	// Input
	.badr(badr[3:0]),	// Input
	.bdatw(bdatw[15:0]),	// Input
	.bdatr(bdatr_fnjp[15:0])	// Output
);
`endif	//	MCOC_NO_FNJP

`ifdef		MCOC_NO_ADC
assign	adc_cenr=1'b0;
assign	bdatr_adcu[15:0]=16'h0;
`else	//	MCOC_NO_ADC
mcoc_adc	adc (
	.clk(clk),	// Input
	.rst_n(rst_n),	// Input
	.brdy(brdy),	// Input
	.bcmdw(bcmdw),	// Input
	.bcmdr(bcmdr),	// Input
	.bcs_adcu_n(bcs_adcu_n),	// Input
	.badr(badr[3:0]),	// Input
	.bdatw(bdatw[15:0]),	// Input
	.adc_cenr(adc_cenr),	// Output
	.bdatr(bdatr_adcu[15:0])	// Output
);
`endif	//	MCOC_NO_ADC

`ifdef		MCOC_SDRAM_8M
wire	[2:0]	cch_bcmd;
wire	[1:0]	sdc_bst_adr;
wire	[31:0]	sdc_bst_dat;

mcoc_sdram	sdram (
	.clk(clk),	// Input
	.rst_n(rst_n),	// Input
	.brdy(brdy),	// Input
	.bcs_sdram_n(cch_sdram_n),	// Input
	.bcs_sdrc_n(bcs_sdrc_n),	// Input
	.bcmd(cch_bcmd[2:0]),	// Input
	.badr({ badrx[6:0],badr[15:0] }),	// Input
	.bdatw(bdatw[15:0]),	// Input
	.sdc_brdy(sdc_brdy_o),	// Output
	.bdatr(bdatr_sdrm[15:0]),	// Output
	// cache I/F
	.clksdc(clksdc),	// Output
	.sdc_bst_enb(sdc_bst_enb),	// Output
	.sdc_bst_adr(sdc_bst_adr[1:0]),	// Output
	.sdc_bst_dat(sdc_bst_dat[31:0])	// Output
);

`ifdef		MCOC_CACHE_4K
assign	sdc_brdy=sdc_brdy_o;
`else	//	MCOC_CACHE_4K
// This is a description to keep the net name clksdc.
reg		rst_n_clk;
always	@(posedge clk)
	rst_n_clk<=rst_n;
reg		rst_n_sdc;
always	@(posedge clksdc)
	rst_n_sdc<=rst_n_clk;
assign	sdc_brdy=sdc_brdy_o | (~rst_n_sdc);
`endif	//	MCOC_CACHE_4K

`else	//	MCOC_SDRAM_8M
`undef		MCOC_CACHE_4K
wire	[2:0]	cch_bcmd;
assign	sdc_brdy=1'b1;
assign	bdatr_sdrm[15:0]=16'h0;
`endif	//	MCOC_SDRAM_8M

`ifdef		MCOC_CACHE_4K
mcoc_cache	cache (
	.clk(clk),	// Input
	.rst_n(rst_n),	// Input
	.brdy(brdy),	// Input
	.bcs_sdram_n(bcs_sdram_n),	// Input
	.bcs_sdrc_n(bcs_sdrc_n),	// Input
	.bcmd(bcmd[2:0]),	// Input
	.badr({ badrx[7:0],badr[15:0] }),	// Input
	.bdatw(bdatw[15:0]),	// Input
	.cch_hit(cch_hit),	// Output
	.cch_sdram_n(cch_sdram_n),	// Output
	.cch_bcmd(cch_bcmd[2:0]),	// Output
	.bdatr(bdatr_cach[15:0]),	// Output
	// cache I/F
	.clksdc(clksdc),	// Input
	.sdc_bst_enb(sdc_bst_enb),	// Input
	.sdc_bst_adr(sdc_bst_adr[1:0]),	// Input
	.sdc_bst_dat(sdc_bst_dat[31:0])	// Input
);
`else	//	MCOC_CACHE_4K
assign	cch_hit=1'b0;
assign	cch_sdram_n=bcs_sdram_n;
assign	cch_bcmd[2:0]=bcmd[2:0];
assign	bdatr_cach[15:0]=16'h0;
`endif	//	MCOC_CACHE_4K

`ifdef		MCOC_NO_UNSJ
assign	bdatr_unsj[15:0]=16'h0;
`else	//	MCOC_NO_UNSJ
mcoc_unsj	unsj (
	.clk(clk),	// Input
	.rst_n(rst_n),	// Input
	.brdy(brdy),	// Input
	.bcmdw(bcmdw),	// Input
	.bcmdr(bcmdr),	// Input
	.bcs_unsj_n(bcs_unsj_n),	// Input
	.badr(badr[3:0]),	// Input
	.bdatw(bdatw[15:0]),	// Input
	.bdatr(bdatr_unsj[15:0])	// Output
);
`endif	//	MCOC_NO_UNSJ

`ifdef		MCOC_NO_DIST
assign	bdatr_dist[15:0]=16'h0;
`else	//	MCOC_NO_DIST
distus	dist (
	.clk(clk),	// Input
	.rst_n(rst_n),	// Input
	.brdy(brdy),	// Input
	.bcmdw(bcmdw),	// Input
	.bcmdr(bcmdr),	// Input
	.bcs_dist_n(bcs_dist_n),	// Input
	.badr(badr[3:0]),	// Input
	.bdatw(bdatw[15:0]),	// Input
	.port_inp(port_iop[15:0]),	// Input
	.bdatr(bdatr_dist[15:0])	// Output
);
`endif	//	MCOC_NO_DIST

`ifdef		MCOC_NO_RTC
assign	rtc_rtcr=1'b0;
assign	bdatr_rtcu[15:0]=16'h0;
`else	//	MCOC_NO_RTC
mcoc_rtc		rtc (
	.clk(clk),	// Input
	.rst_n(rst_n),	// Input
	.brdy(brdy),	// Input
	.bcmdw(bcmdw),	// Input
	.bcmdr(bcmdr),	// Input
	.bcs_rtcu_n(bcs_rtcu_n),	// Input
	.rtc_clkin(port_iop[3]),	// Input
	.badr(badr[3:0]),	// Input
	.bdatw(bdatw[15:0]),	// Input
	.rtc_rtcr(rtc_rtcr),	// Output
	.bdatr(bdatr_rtcu[15:0])	// Output
);
`endif	//	MCOC_NO_RTC

`ifdef		MCOC_NO_DAC0
assign	dac0_pdmo=1'b0;
assign	dac0_pdmo_enb=1'b0;
assign	bdatr_dac0[15:0]=16'h0;
`else	//	MCOC_NO_DAC0
dac121		dac0 (
	.clk(clk),	// Input
	.rst_n(rst_n),	// Input
	.brdy(brdy),	// Input
	.bcmdw(bcmdw),	// Input
	.bcmdr(bcmdr),	// Input
	.bcs_dacu_n(bcs_dacu_n),	// Input
	.badr(badr[3:0]),	// Input
	.bdatw(bdatw[15:0]),	// Input
	.dac_pdmo(dac0_pdmo),	// Output
	.dac_pdmo_enb(dac0_pdmo_enb),	// Output
	.bdatr(bdatr_dac0[15:0])	// Output
);
`endif	//	MCOC_NO_DAC0

`ifdef		MCOC_NO_DAC1
assign	dac1_pdmo=1'b0;
assign	dac1_pdmo_enb=1'b0;
assign	bdatr_dac1[15:0]=16'h0;
`else	//	MCOC_NO_DAC1
dac121		dac1 (
	.clk(clk),	// Input
	.rst_n(rst_n),	// Input
	.brdy(brdy),	// Input
	.bcmdw(bcmdw),	// Input
	.bcmdr(bcmdr),	// Input
	.bcs_dacu_n(bcs_dacu_n),	// Input
	.badr(badr[3:0] ^ 4'h8),	// Input
	.bdatw(bdatw[15:0]),	// Input
	.dac_pdmo(dac1_pdmo),	// Output
	.dac_pdmo_enb(dac1_pdmo_enb),	// Output
	.bdatr(bdatr_dac1[15:0])	// Output
);
`endif	//	MCOC_NO_DAC1

`ifdef		MCOC_NO_TIML
assign	tled_ledr_n=~(port_enb[1] & (~port_out_o[1]));
assign	tled_ledg_n=~(port_enb[2] & (~port_out_o[2]));
assign	tled_ledb_n=~(port_enb[0] & (~port_out_o[0]));
assign	tled_led1=1'b0;
assign	tled_led2=1'b0;
assign	tled_lofr=1'b0;
assign	bdatr_tled[15:0]=16'h0;
`else	//	MCOC_NO_TIML
timled5		timl (
	.clk(clk),	// Input
	.rst_n(rst_n),	// Input
	.brdy(brdy),	// Input
	.bcmdr(bcmdr),	// Input
	.bcmdw(bcmdw),	// Input
	.bcs_tled_n(bcs_tled_n),	// Input
	.simumd(simumd),	// Input
	.gpio_port(port_out_o[2:0]),	// Input
	.gpio_port_oe(port_enb[2:0]),	// Input
	.badr(badr[3:0]),	// Input
	.bdatw(bdatw[15:0]),	// Input
	.tled_ledr(tled_ledr),	// Output
	.tled_ledg(tled_ledg),	// Output
	.tled_ledb(tled_ledb),	// Output
	.tled_led1(tled_led1),	// Output
	.tled_led2(tled_led2),	// Output
	.tled_lofr(tled_lofr),	// Output
	.bdatr(bdatr_tled[15:0])	// Output
);
assign	tled_ledr_n=~tled_ledr;
assign	tled_ledg_n=~tled_ledg;
assign	tled_ledb_n=~tled_ledb;
`endif	//	MCOC_NO_TIML


// bus output
assign	bdatr[15:0]=
	bdatr_intc[15:0] |
	bdatr_idrg[15:0] |
	bdatr_rom[15:0] |
	bdatr_ram[15:0] |
	bdatr_iram[15:0] |
	bdatr_sytm[15:0] |
	bdatr_uart[15:0] |
	bdatr_port[15:0] |
	bdatr_tim0[15:0] |
	bdatr_tim1[15:0] |
	bdatr_loga[15:0] |
	bdatr_smph[15:0] |
	bdatr_icff[15:0] |
	bdatr_stws[15:0] |
	bdatr_fnjp[15:0] |
	bdatr_uar1[15:0] |
	bdatr_por1[15:0] |
	bdatr_adcu[15:0] |
	bdatr_sdrm[15:0] |
	bdatr_cach[15:0] |
	bdatr_unsj[15:0] |
	bdatr_dist[15:0] |
	bdatr_rtcu[15:0] |
	bdatr_dac0[15:0] |
	bdatr_dac1[15:0] |
	bdatr_iome[15:0] |
	bdatr_tled[15:0];

assign	bdatr[31:16]=
	bdatr_rom[31:16] |
	bdatr_ram[31:16];

endmodule
