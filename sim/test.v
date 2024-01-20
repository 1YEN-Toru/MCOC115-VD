`timescale	1ns / 1ns


// simulation options
//`define		SIM_BOOTMD
//`define		SIM_UART
//`define		SIM_UART2
//`define		SIM_SMBUS
//`define		SIM_LOGA
//`define		SIM_DAC		top.dac0
//`define		SIM_UNSJ


//// include the VH file of the type name to be simulated,
////	when post-synthesis or post-implementation simulation.
//`include	"mcoc115ca0408.vh"


module	test;


`ifdef		SIM_SMBUS
parameter	tscl=1000;					// 1/fscl[ns]
parameter	tscll=500;
parameter	tsclh=tscl - tscll;
parameter	thd_sta=600;
parameter	tsu_sta=600;
parameter	thd_dat=0;
parameter	tsu_dat=100;
parameter	tsu_sto=600;
parameter	tbuf=1300;
`endif	//	SIM_SMBUS

reg		sys_clock;
reg		sys_reset;
reg		sys_bootr;
reg		sys_mdsim;
reg		uart_rxd;
reg		uar1_rxd;
reg		uar1_cts;
reg		intc_int0;
reg		intc_int1;
reg		[15:0]	port_iop_d;
reg		[15:0]	user_iop_d;
wire	[7:0]	badr8h=top.badr[23:16];
wire	[15:0]	badr16=top.badr[15:0];
wire	[15:0]	bdatr16=top.bdatr[15:0];
wire	[15:0]	bdatw16=top.bdatw[15:0];
wire	[15:0]	bdatr16h=top.bdatr[31:16];
wire	[15:0]	bdatw16h=top.bdatw[31:16];
wire	[15:0]	port_iop=port_iop_d[15:0];
wire	[7:0]	port_iop8h=port_iop[15:8];
wire	[7:0]	port_iop8l=port_iop[7:0];
wire	[15:0]	user_iop=user_iop_d[15:0];
wire	[7:0]	sram_dq;
wire	[18:0]	sram_adr;
tri1	stws_scl;
tri1	stws_sda;

// count instructions
integer		cnt_clck;
integer		cnt_inst;
integer		cnt_isu1;

// toggle sys_clock every 40ns (12.5MHz)
always
	begin
		sys_clock=1'b1;
		#40;
		sys_clock=1'b0;
		#40;
	end
wire	clk=top.clkg.clk_out;

// reference clock, MCOC_FCPU_MHZ and duty 50%
parameter	fclk_mhz=((`MCOC_FCPU_MHZ)>>4)*10 + (`MCOC_FCPU_MHZ & 8'h0f);
reg		fclk_ref;
always
	begin
		fclk_ref=1'b1;
		#(1000/fclk_mhz/2*2);
		fclk_ref=1'b0;
		#(1000/fclk_mhz/2*2);
	end

// stimulus
initial
	begin
`ifdef		SIM_BOOTMD
		$dumpfile ("test_ct_boot.vcd");
		$dumpvars (4, test);
		$dumpvars (0, test.top.cpu);
		$dumpvars (0, test.top.uart);
`else	//	SIM_BOOTMD
		$dumpfile ("test.vcd");
		$dumpvars (0, test);
`endif	//	SIM_BOOTMD
		$timeformat (-9,0,"",8);
//// not required: Vivado ROM macro behavior is automatically $readmem() at #0.
//		$readmemh ("mcoc_irom.mem", top.rom.romwr.xpm_memory_base_inst.mem);

		// initialize
		sys_reset=1'b0;
		sys_bootr=1'b0;
		sys_mdsim=1'b1;
		intc_int0=1'b1;
		intc_int1=1'b1;
		uart_rxd=1'b1;
		uar1_rxd=1'b1;
		uar1_cts=1'b1;
		port_iop_d[15:0]=16'hz;
		user_iop_d[15:0]=16'hz;

		// simulation continues until writing bdatw[15]=1 to badr=16'hf028
		repeat (8)
			@(posedge clk);
		while (top.badr[15:0]!=16'hf028 || top.bdatw[15]!=1'b1)
			@(posedge clk);
		// confirm pass code
		if (top.bdatw[7:0]==8'h06)
			$display ("Test Pass");
		else if (top.bdatw[7:0]==8'h33)
			$display ("Test Finish, you need verify waveform.");
		else
			$display ("Test Fail");

		// count instructions
		$display ("CPI: %d/%d(%d)=%d/1000",
			cnt_clck,cnt_inst,cnt_isu1,1000*cnt_clck/cnt_inst);

		// finish simulation
		repeat (8)
			@(posedge clk);
		$display ("finish: %t ns",$stime);
		$finish;
	end

// simulation control register
parameter	simctrl_TSIM=2;
parameter	simctrl_RTCK=1;
parameter	simctrl_NOTO=0;
reg		[15:0]	simctrl;
always	@(posedge clk)
	begin
		if (!top.rst_n)
			simctrl[15:0]<=16'h0;
		else if (top.brdy && top.bcmd[1] && top.badr[15:0]==16'hf00a)
			simctrl[15:0]<=top.bdatw[15:0];
	end

// toggle sys_mdsim, and assert sys_reset command
always	@(posedge clk)
	begin
		if (simctrl[simctrl_TSIM]===1'b1)
			begin
				sys_mdsim=~sys_mdsim;
				sys_reset=1'b1;
				repeat (8)
					@(posedge clk);
				sys_reset=1'b0;
				repeat (4)
					@(posedge clk);
			end
		end

// force simulation stop by time out
always
	begin
		repeat (10_000)
			@(posedge clk);
		if (!simctrl[simctrl_NOTO])
			begin
				$display ("Simulation stop due to time out");
				$finish;
			end
	end

// rtc external clock input
parameter	rtc_clk_half=40*80/2;
always
	begin
		if (simctrl[simctrl_RTCK]===1'b1)
			begin
				port_iop_d[3]<=1'b1;
				#(rtc_clk_half);
				port_iop_d[3]<=1'b0;
				#(rtc_clk_half);
			end
		else
			begin
				@(posedge clk);
				port_iop_d[3]<=1'bz;
			end
	end

`ifdef		SIM_BOOTMD
`else	//	SIM_BOOTMD
// uart local loop back
always	@uart_txd
	uart_rxd<=uart_txd;
`ifdef		SIM_UART2
always	@uar1_txd
	uar1_rxd<=uar1_txd;
always	@port_iop[7]
	uar1_cts<=port_iop[7];
`endif	//	SIM_UART2
`endif	//	SIM_BOOTMD

// interrupt request
reg		[3:0]	irq_pin;
reg		[7:0]	irq_wait;
always	@(posedge clk)
	begin
		irq_pin[3:0]<={ top.bdatw[13:12],top.bdatw[9:8] };
		irq_wait[7:0]<=top.bdatw[7:0];
		if (top.brdy && top.bcmd[1] && top.badr[15:0]==16'hf000)
			begin
				@(posedge clk);
				repeat (irq_wait[7:0])
					@(posedge clk);
				if (irq_pin[3])
					intc_int1<=irq_pin[1];
				if (irq_pin[2])
					intc_int0<=irq_pin[0];
			end
	end

// i/o port driver
reg		port_chg;
reg		user_chg;
reg		[15:0]	port_dir;
reg		[15:0]	port_ind;
reg		[15:0]	user_dir;
reg		[15:0]	user_ind;
initial
	begin
		port_dir[15:0]=16'h0;
		port_ind[15:0]=16'h0;
		user_dir[15:0]=16'h0;
		user_ind[15:0]=16'h0;
	end
always	@(posedge clk)
	begin
		port_chg=1'b0;
		user_chg=1'b0;
		// port direction
		if (top.brdy && top.bcmd[1] && top.badr[15:0]==16'hf002)
			begin
				port_chg=1'b1;
				port_dir[15:0]<=top.bdatw[15:0];
			end
		// port input
		if (top.brdy && top.bcmd[1] && top.badr[15:0]==16'hf004)
			begin
				port_chg=1'b1;
				port_ind[15:0]<=top.bdatw[15:0];
			end
		// user direction
		if (top.brdy && top.bcmd[1] && top.badr[15:0]==16'hf006)
			begin
				user_chg=1'b1;
				user_dir[15:0]<=top.bdatw[15:0];
			end
		// user input
		if (top.brdy && top.bcmd[1] && top.badr[15:0]==16'hf008)
			begin
				user_chg=1'b1;
				user_ind[15:0]<=top.bdatw[15:0];
			end

		// driver
		if (port_chg)
			begin
				#1;
				port_iop_d[15]<=(port_dir[15])? port_ind[15]: 1'bz;
				port_iop_d[14]<=(port_dir[14])? port_ind[14]: 1'bz;
				port_iop_d[13]<=(port_dir[13])? port_ind[13]: 1'bz;
				port_iop_d[12]<=(port_dir[12])? port_ind[12]: 1'bz;
				port_iop_d[11]<=(port_dir[11])? port_ind[11]: 1'bz;
				port_iop_d[10]<=(port_dir[10])? port_ind[10]: 1'bz;
				port_iop_d[9]<=(port_dir[9])? port_ind[9]: 1'bz;
				port_iop_d[8]<=(port_dir[8])? port_ind[8]: 1'bz;
				port_iop_d[7]<=(port_dir[7])? port_ind[7]: 1'bz;
				port_iop_d[6]<=(port_dir[6])? port_ind[6]: 1'bz;
				port_iop_d[5]<=(port_dir[5])? port_ind[5]: 1'bz;
				port_iop_d[4]<=(port_dir[4])? port_ind[4]: 1'bz;
				port_iop_d[3]<=(port_dir[3])? port_ind[3]: 1'bz;
				port_iop_d[2]<=(port_dir[2])? port_ind[2]: 1'bz;
				port_iop_d[1]<=(port_dir[1])? port_ind[1]: 1'bz;
				port_iop_d[0]<=(port_dir[0])? port_ind[0]: 1'bz;
			end
		if (user_chg)
			begin
				#1;
				user_iop_d[15]<=(user_dir[15])? user_ind[15]: 1'bz;
				user_iop_d[14]<=(user_dir[14])? user_ind[14]: 1'bz;
				user_iop_d[13]<=(user_dir[13])? user_ind[13]: 1'bz;
				user_iop_d[12]<=(user_dir[12])? user_ind[12]: 1'bz;
				user_iop_d[11]<=(user_dir[11])? user_ind[11]: 1'bz;
				user_iop_d[10]<=(user_dir[10])? user_ind[10]: 1'bz;
				user_iop_d[9]<=(user_dir[9])? user_ind[9]: 1'bz;
				user_iop_d[8]<=(user_dir[8])? user_ind[8]: 1'bz;
				user_iop_d[7]<=(user_dir[7])? user_ind[7]: 1'bz;
				user_iop_d[6]<=(user_dir[6])? user_ind[6]: 1'bz;
				user_iop_d[5]<=(user_dir[5])? user_ind[5]: 1'bz;
				user_iop_d[4]<=(user_dir[4])? user_ind[4]: 1'bz;
				user_iop_d[3]<=(user_dir[3])? user_ind[3]: 1'bz;
				user_iop_d[2]<=(user_dir[2])? user_ind[2]: 1'bz;
				user_iop_d[1]<=(user_dir[1])? user_ind[1]: 1'bz;
				user_iop_d[0]<=(user_dir[0])? user_ind[0]: 1'bz;
			end
	end

// half handling
real	rx;
task	fpu_half2real;
input	[15:0]	hx;
reg		sx;
reg		signed	[4:0]	ex;
reg		[10:0]	fx;
real	rinf;
real	rnan;
	begin
		// half hx[15:0] to real rx conversion
		rinf=1.0/0.0;
		rnan=0.0/0.0;

		// conversion
		if (hx[14:10]==5'h0)
			begin
				// zero
				rx=0.0;
			end
		else if (hx[14:10]==5'h1f)
			begin
				// inf or nan
				if (hx[9:0]==10'h0)
					rx=rinf;
				else
					rx=rnan;
			end
		else
			begin
				// not zero
				sx=hx[15];
				ex[4:0]=hx[14:10] - 5'd15;
				fx[10:0]={ 1'b1,hx[9:0] };
				rx=fx[10:0];
				if (ex<5'sd0)
					rx=rx/32'h400/(32'h1<<(-ex));
				else
					rx=rx/32'h400*(32'h1<<ex);
			end
		if (hx[15])
			rx=-rx;
	end
endtask

// float handling
task	fpu_sngl2real;
input	[31:0]	hx;
reg		sx;
reg		signed	[7:0]	ex;
reg		[23:0]	fx;
real	rinf;
real	rnan;
	begin
		// float hx[31:0] to real rx conversion
		rinf=1.0/0.0;
		rnan=0.0/0.0;

		// conversion
		if (hx[30:23]==8'h0)
			begin
				// zero
				rx=0.0;
			end
		else if (hx[30:23]==8'hff)
			begin
				// inf or nan
				if (hx[22:0]==23'h0)
					rx=rinf;
				else
					rx=rnan;
			end
		else
			begin
				// not zero
				sx=hx[31];
				ex[7:0]=hx[30:23] - 8'd127;
				fx[23:0]={ 1'b1,hx[22:0] };
				rx=fx[23:0];
				rx=rx/32'h0080_0000*(2.0**ex);
			end
		if (hx[31])
			rx=-rx;
	end
endtask

// print unit
reg		[15:0]	prin_ctl;				// [term chr], -,-,-,-, -,FLT,DEC,NLD
reg		[15:0]	prin_hxlh;
always	@(posedge clk)
	begin
		if (!top.rst_n)
			begin
				prin_ctl[15:0]=16'h0;
				prin_hxlh=16'h0;
			end
		else if (top.brdy && top.bcmd[1])
			begin
				if (top.badr[15:0]==16'hfff0)
					begin
						// print control
						if (top.bcmd[2])
							begin
								prin_ctl[15:8]=top.bdatw[15:8];
								if (prin_ctl[15:8]!=8'h0)
									prin_ctl[0]=1'b1;
							end
						else
							prin_ctl[15:0]=top.bdatw[15:0];
					end
				else if (top.badr[15:0]==16'hfff2)
					begin
						// print character
						if (top.bdatw[7:0]==8'h0f)
							$display ("");
						else if (top.bdatw[7:0]!=8'h0 && top.bdatw[7:0]!=8'h0d)
							$write ("%s",top.bdatw[7:0]);
					end
				else if (top.badr[15:0]==16'hfff4)
					begin
						// print decimal
						if (top.bcmd[2])
							$write ("%d",top.bdatw[7:0]);
						else
							$write ("%d",top.bdatw[15:0]);
						if (prin_ctl[15:8]!=8'h0)
							$write ("%s",prin_ctl[15:8]);
						if (!prin_ctl[0])
							$display ("");
					end
				else if (top.badr[15:0]==16'hfff6)
					begin
						// print hexadecimal
						if (top.bcmd[2])
							$write ("%h",top.bdatw[7:0]);
						else
							$write ("%h",top.bdatw[15:0]);
						if (prin_ctl[15:8]!=8'h0)
							$write ("%s",prin_ctl[15:8]);
						if (!prin_ctl[0])
							$display ("");
					end
				else if (top.badr[15:0]==16'hfff8)
					begin
						if (prin_ctl[3:2])
							begin
								// print float high
								prin_hxlh[15:0]=top.bdatw[15:0];
							end
						else
							begin
								// print half floating point
								fpu_half2real (top.bdatw[15:0]);
								if (top.bdatw[15:0]==16'h8000)
									$write ("-0.000000");
								else
									$write ("%f",rx);
								if (prin_ctl[15:8]!=8'h0)
									$write ("%s",prin_ctl[15:8]);
								if (!prin_ctl[0])
									$display ("");
							end
					end
				else if (top.badr[15:0]==16'hfffa)
					begin
						// print float
						fpu_sngl2real ({ prin_hxlh[15:0],top.bdatw[15:0] });
						if (prin_hxlh[15:0]==16'h8000)
							$write ("-0.000000");
						else if (prin_ctl[3:2]==2'b01)
							$write ("%f",rx);
						else if (prin_ctl[3:2]==2'b10)
							$write ("%e",rx);
						else if (prin_ctl[3:2]==2'b11)
							$write ("%g",rx);
						else	// never occure
							$write ("%h",{ prin_hxlh[15:0],top.bdatw[15:0] });
						if (prin_ctl[15:8]!=8'h0)
							$write ("%s",prin_ctl[15:8]);
						if (!prin_ctl[0])
							$display ("");
					end
				else if (top.badr[15:0]==16'hfffc)
					begin
						// print hexadecimal long high
						prin_hxlh[15:0]=top.bdatw[15:0];
					end
				else if (top.badr[15:0]==16'hfffe)
					begin
						// print hexadecimal long
						if (prin_ctl[1])
							$write ("%d",{ prin_hxlh[15:0],top.bdatw[15:0] });
						else
							$write ("%h",{ prin_hxlh[15:0],top.bdatw[15:0] });
						if (prin_ctl[15:8]!=8'h0)
							$write ("%s",prin_ctl[15:8]);
						if (!prin_ctl[0])
							$display ("");
					end
			end
	end


`ifdef		SIM_BOOTMD
`include	"test_ct_boot.vh"
`endif	//	SIM_BOOTMD


`ifdef		SIM_UART
`include	"test_ct_uart.vh"
`endif	//	SIM_UART


`ifdef		SIM_SMBUS
`include	"test_ct_smbus.vh"
`endif	//	SIM_SMBUS


`ifdef		SIM_LOGA
`include	"test_ct_loga.vh"
`endif	//	SIM_LOGA


`ifdef		SIM_DAC
`include	"test_ct_dac.vh"
`endif	//	SIM_DAC


`ifdef		SIM_UNSJ
`include	"test_ct_unsj.vh"
`endif	//	SIM_UNSJ


// on board SRAM behavior
`ifdef		MCOC_SRAM_512K
IS61WV5128BLL	sram (
	.CEN(sram_cen),	// Input
	.OEN(sram_oen),	// Input
	.WEN(sram_wen),	// Input
	.AD(sram_adr[18:0]),	// Input
	.DQ(sram_dq[7:0])	// InOut
);
`endif	//	MCOC_SRAM_512K


// DUT
`MCOC_TOP_NAME	top (
	.sys_clock(sys_clock),	// Input
	.sys_reset(sys_reset),	// Input
	.sys_bootr(sys_bootr),	// Input
	.sys_mdsim(sys_mdsim),	// Input
	.uart_rxd(uart_rxd),	// Input
	.uar1_rxd(uar1_rxd),	// Input
	.uar1_cts(uar1_cts),	// Input
	.intc_int0(intc_int0),	// Input
	.intc_int1(intc_int1),	// Input
	.stws_scl(stws_scl),	// Inout
	.stws_sda(stws_sda),	// Inout
	.port_iop(port_iop[15:0]),	// Inout
//	.user_iop(user_iop[15:0]),	// Inout
	.uart_txd(uart_txd),	// Output
	.uar1_txd(uar1_txd),	// Output
	.uar1_rts(uar1_rts),	// Output
	.tim0_pwma(tim0_pwma),	// Output
	.tim0_pwmb(tim0_pwmb),	// Output
	.tim1_pwma(tim1_pwma),	// Output
	.tim1_pwmb(tim1_pwmb),	// Output
	// SRAM I/F
	.sram_dq(sram_dq[7:0]),	// Inout
	.sram_cen(sram_cen),	// Output
	.sram_oen(sram_oen),	// Output
	.sram_wen(sram_wen),	// Output
	.sram_adr(sram_adr[18:0]),	// Output
	// XADC I/F
	.adcx_vp(adcx_vp),	// Input
	.adcx_vn(adcx_vn),	// Input
	.adcx_ain0p(adcx_ain0p),	// Input
	.adcx_ain0n(adcx_ain0n),	// Input
	.adcx_ain1p(adcx_ain1p),	// Input
	.adcx_ain1n(adcx_ain1n)	// Input
);


// count instructions
initial
	begin
		cnt_clck=0;
		cnt_inst=0;
		cnt_isu1=0;
	end
always	@(posedge clk)
	begin
		if (top.rst_n)
			cnt_clck=cnt_clck + 1;
`ifdef		MCOC_CORE_NHSS
		if (top.rst_n && top.cpu.core.fch_term)
			begin
				cnt_inst=cnt_inst + 1;
				if (top.cpu.core.fch.fch_issu1)
					begin
						cnt_inst=cnt_inst + 1;
						cnt_isu1=cnt_isu1 + 2;
					end
			end
`elsif		MCOC_CORE_MCSS
		if (top.rst_n && top.cpu.core.fch_term)
			begin
				cnt_inst=cnt_inst + 1;
				if (top.cpu.core.fch.fch_issu1)
					begin
						cnt_inst=cnt_inst + 1;
						cnt_isu1=cnt_isu1 + 2;
					end
			end
`else
		if (top.rst_n && top.cpu.core.ctl_fetch)
			cnt_inst=cnt_inst + 1;
`endif
	end

// count instruction cycles
reg		[4:0]	inst_cnt;
reg		[4:0]	inst_min;
reg		[4:0]	inst_max;
reg		[15:0]	inst_cur;
reg		[15:0]	inst_msk;
reg		[15:0]	inst_cod;
`ifdef		MCOC_CORE_NHSS
wire	[15:0]	inst_ir=top.cpu.core.fch.ir0[15:0];
`elsif		MCOC_CORE_MCSS
wire	[15:0]	inst_ir=top.cpu.core.fch.ir0[15:0];
`else
wire	[15:0]	inst_ir=top.cpu.core.fch.ir[15:0];
`endif
initial
	begin
		inst_msk=16'hffff;
		inst_cod=16'h0444&inst_msk[15:0];
		inst_cnt=5'h0;
		inst_min=5'h1f;
		inst_max=5'h0;
		inst_cur=16'h0;
	end
always	@(posedge clk)
	begin
		if ((inst_ir[15:0]&inst_msk[15:0])===inst_cod[15:0])
			begin
				inst_cur[15:0]=inst_ir[15:0];
				inst_cnt=0;
				while ((inst_ir[15:0]&inst_msk[15:0])===inst_cod[15:0])
					begin
						@(posedge clk);
						inst_cnt=inst_cnt + 1;
					end
				if (inst_cnt<inst_min)
					inst_min=inst_cnt;
				if (inst_max<inst_cnt)
					inst_max=inst_cnt;
				$display ("inst(%h) = %d (%d~%d)",
					inst_cur[15:0],inst_cnt,inst_min,inst_max);
			end
	end


// simulation convenience
`ifdef		MCOC_CORE_TS
// Tennessine general register value
wire	[15:0]	r0=top.cpu.core.rgf.bank.gr00[15:0];
wire	[15:0]	r1=top.cpu.core.rgf.bank.gr01[15:0];
wire	[15:0]	r2=top.cpu.core.rgf.bank.gr02[15:0];
wire	[15:0]	r3=top.cpu.core.rgf.bank.gr03[15:0];
wire	[15:0]	r4=top.cpu.core.rgf.bank.gr04[15:0];
wire	[15:0]	r5=top.cpu.core.rgf.bank.gr05[15:0];
wire	[15:0]	r6=top.cpu.core.rgf.bank.gr06[15:0];
wire	[15:0]	r7=top.cpu.core.rgf.bank.gr07[15:0];
`elsif		MCOC_CORE_NH
// Nihonium general register value with bank selection
wire	[1:0]	bank=top.cpu.core.rgf.sreg.sr[1:0];
wire	[31:0]	r0=
		(bank[0]===1'b0)? {
			top.cpu.core.rgf.bank02.gr20[15:0],
			top.cpu.core.rgf.bank02.gr00[15:0] }:
		(bank[0]===1'b1)? {
			top.cpu.core.rgf.bank13.gr20[15:0],
			top.cpu.core.rgf.bank13.gr00[15:0] }:
		32'hx;
wire	[31:0]	r1=
		(bank[0]===1'b0)? {
			top.cpu.core.rgf.bank02.gr21[15:0],
			top.cpu.core.rgf.bank02.gr01[15:0] }:
		(bank[0]===1'b1)? {
			top.cpu.core.rgf.bank13.gr21[15:0],
			top.cpu.core.rgf.bank13.gr01[15:0] }:
		32'hx;
wire	[31:0]	r2=
		(bank[0]===1'b0)? {
			top.cpu.core.rgf.bank02.gr22[15:0],
			top.cpu.core.rgf.bank02.gr02[15:0] }:
		(bank[0]===1'b1)? {
			top.cpu.core.rgf.bank13.gr22[15:0],
			top.cpu.core.rgf.bank13.gr02[15:0] }:
		32'hx;
wire	[31:0]	r3=
		(bank[0]===1'b0)? {
			top.cpu.core.rgf.bank02.gr23[15:0],
			top.cpu.core.rgf.bank02.gr03[15:0] }:
		(bank[0]===1'b1)? {
			top.cpu.core.rgf.bank13.gr23[15:0],
			top.cpu.core.rgf.bank13.gr03[15:0] }:
		32'hx;
wire	[31:0]	r4=
		(bank[0]===1'b0)? {
			top.cpu.core.rgf.bank02.gr24[15:0],
			top.cpu.core.rgf.bank02.gr04[15:0] }:
		(bank[0]===1'b1)? {
			top.cpu.core.rgf.bank13.gr24[15:0],
			top.cpu.core.rgf.bank13.gr04[15:0] }:
		32'hx;
wire	[31:0]	r5=
		(bank[0]===1'b0)? {
			top.cpu.core.rgf.bank02.gr25[15:0],
			top.cpu.core.rgf.bank02.gr05[15:0] }:
		(bank[0]===1'b1)? {
			top.cpu.core.rgf.bank13.gr25[15:0],
			top.cpu.core.rgf.bank13.gr05[15:0] }:
		32'hx;
wire	[31:0]	r6=
		(bank[0]===1'b0)? {
			top.cpu.core.rgf.bank02.gr26[15:0],
			top.cpu.core.rgf.bank02.gr06[15:0] }:
		(bank[0]===1'b1)? {
			top.cpu.core.rgf.bank13.gr26[15:0],
			top.cpu.core.rgf.bank13.gr06[15:0] }:
		32'hx;
wire	[31:0]	r7=
		(bank[0]===1'b0)? {
			top.cpu.core.rgf.bank02.gr27[15:0],
			top.cpu.core.rgf.bank02.gr07[15:0] }:
		(bank[0]===1'b1)? {
			top.cpu.core.rgf.bank13.gr27[15:0],
			top.cpu.core.rgf.bank13.gr07[15:0] }:
		32'hx;
`else
// Moscovium general register value with bank selection
wire	[1:0]	bank=top.cpu.core.rgf.sreg.sr[1:0];
wire	[15:0]	r0=
		(bank[1:0]===2'h0)? top.cpu.core.rgf.bank02.gr00[15:0]:
		(bank[1:0]===2'h1)? top.cpu.core.rgf.bank13.gr00[15:0]:
		(bank[1:0]===2'h2)? top.cpu.core.rgf.bank02.gr20[15:0]:
		(bank[1:0]===2'h3)? top.cpu.core.rgf.bank13.gr20[15:0]:
		16'hx;
wire	[15:0]	r1=
		(bank[1:0]===2'h0)? top.cpu.core.rgf.bank02.gr01[15:0]:
		(bank[1:0]===2'h1)? top.cpu.core.rgf.bank13.gr01[15:0]:
		(bank[1:0]===2'h2)? top.cpu.core.rgf.bank02.gr21[15:0]:
		(bank[1:0]===2'h3)? top.cpu.core.rgf.bank13.gr21[15:0]:
		16'hx;
wire	[15:0]	r2=
		(bank[1:0]===2'h0)? top.cpu.core.rgf.bank02.gr02[15:0]:
		(bank[1:0]===2'h1)? top.cpu.core.rgf.bank13.gr02[15:0]:
		(bank[1:0]===2'h2)? top.cpu.core.rgf.bank02.gr22[15:0]:
		(bank[1:0]===2'h3)? top.cpu.core.rgf.bank13.gr22[15:0]:
		16'hx;
wire	[15:0]	r3=
		(bank[1:0]===2'h0)? top.cpu.core.rgf.bank02.gr03[15:0]:
		(bank[1:0]===2'h1)? top.cpu.core.rgf.bank13.gr03[15:0]:
		(bank[1:0]===2'h2)? top.cpu.core.rgf.bank02.gr23[15:0]:
		(bank[1:0]===2'h3)? top.cpu.core.rgf.bank13.gr23[15:0]:
		16'hx;
wire	[15:0]	r4=
		(bank[1:0]===2'h0)? top.cpu.core.rgf.bank02.gr04[15:0]:
		(bank[1:0]===2'h1)? top.cpu.core.rgf.bank13.gr04[15:0]:
		(bank[1:0]===2'h2)? top.cpu.core.rgf.bank02.gr24[15:0]:
		(bank[1:0]===2'h3)? top.cpu.core.rgf.bank13.gr24[15:0]:
		16'hx;
wire	[15:0]	r5=
		(bank[1:0]===2'h0)? top.cpu.core.rgf.bank02.gr05[15:0]:
		(bank[1:0]===2'h1)? top.cpu.core.rgf.bank13.gr05[15:0]:
		(bank[1:0]===2'h2)? top.cpu.core.rgf.bank02.gr25[15:0]:
		(bank[1:0]===2'h3)? top.cpu.core.rgf.bank13.gr25[15:0]:
		16'hx;
wire	[15:0]	r6=
		(bank[1:0]===2'h0)? top.cpu.core.rgf.bank02.gr06[15:0]:
		(bank[1:0]===2'h1)? top.cpu.core.rgf.bank13.gr06[15:0]:
		(bank[1:0]===2'h2)? top.cpu.core.rgf.bank02.gr26[15:0]:
		(bank[1:0]===2'h3)? top.cpu.core.rgf.bank13.gr26[15:0]:
		16'hx;
wire	[15:0]	r7=
		(bank[1:0]===2'h0)? top.cpu.core.rgf.bank02.gr07[15:0]:
		(bank[1:0]===2'h1)? top.cpu.core.rgf.bank13.gr07[15:0]:
		(bank[1:0]===2'h2)? top.cpu.core.rgf.bank02.gr27[15:0]:
		(bank[1:0]===2'h3)? top.cpu.core.rgf.bank13.gr27[15:0]:
		16'hx;
`endif

// bus master (cpu id)
wire	[31:0]		cpuid=
		(top.brdy && top.bcmd[1:0]!=2'b00)?
			((top.bmst)?
				32'h43505532:
`ifdef		MCOC_DUAL
				32'h43505531):
`else	//	MCOC_DUAL
				32'h43505530):
`endif	//	MCOC_DUAL
			32'h0;

// ROM select, except address 0x0000
wire	bcs_rom_not0_n=( top.bcs_rom_n || !(|top.badr[15:0]) );

endmodule

