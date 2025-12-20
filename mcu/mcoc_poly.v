module	polycorec (
// poly-core
input	clk,
input	rst_n,
input	frdy,
input	brdy,
input	irq,
input	[1:0]	cpuid,
input	[1:0]	irq_lev,
input	[5:0]	irq_vec,
input	[15:0]	fdatx,
input	[15:0]	fdat,
input	[15:0]	bdatrx,
input	[15:0]	bdatr,
output	[1:0]	fcmd,
output	[15:0]	fadr,
output	[3:0]	bcmd,
output	[15:0]	badrx,
output	[15:0]	badr,
output	[15:0]	bdatwx,
output	[15:0]	bdatw,
// poly-core I/F
input	bootmd,
input	btm_bcmdw_rom,
input	[15:0]	btm_badr,
input	[15:0]	btm_bdatw,
input	[6:0]	poly_pirq_half);


wire	[2:0]	pc0_bcmd;
wire	[2:0]	pc1_bcmd;
wire	[2:0]	pc2_bcmd;
wire	[2:0]	pc3_bcmd;
wire	[2:0]	pc4_bcmd;
wire	[2:0]	pc5_bcmd;
wire	[2:0]	pc6_bcmd;
wire	[15:0]	pc0_badr;
wire	[15:0]	pc1_badr;
wire	[15:0]	pc2_badr;
wire	[15:0]	pc3_badr;
wire	[15:0]	pc4_badr;
wire	[15:0]	pc5_badr;
wire	[15:0]	pc6_badr;
wire	[15:0]	pc0_badrx;
wire	[15:0]	pc1_badrx;
wire	[15:0]	pc2_badrx;
wire	[15:0]	pc3_badrx;
wire	[15:0]	pc4_badrx;
wire	[15:0]	pc5_badrx;
wire	[15:0]	pc6_badrx;
wire	[15:0]	pc0_bdatw;
wire	[15:0]	pc1_bdatw;
wire	[15:0]	pc2_bdatw;
wire	[15:0]	pc3_bdatw;
wire	[15:0]	pc4_bdatw;
wire	[15:0]	pc5_bdatw;
wire	[15:0]	pc6_bdatw;
wire	[15:0]	pc0_bdatr;
wire	[15:0]	pc1_bdatr;
wire	[15:0]	pc2_bdatr;
wire	[15:0]	pc3_bdatr;
wire	[15:0]	pc4_bdatr;
wire	[15:0]	pc5_bdatr;
wire	[15:0]	pc6_bdatr;

assign	bcmd[3]=1'b0;
assign	bdatwx[15:0]=16'h0;
assign	fadr[15:0]=16'h0;


// CPU IDs
wire	[3:0]	pc0_cpuid=((4'h0<<1) + { 2'h0,cpuid[1:0] }) | {4{ ~cpuid[1] }};
wire	[3:0]	pc1_cpuid=(4'h1<<1) + { 2'h0,cpuid[1:0] };
wire	[3:0]	pc2_cpuid=(4'h2<<1) + { 2'h0,cpuid[1:0] };
wire	[3:0]	pc3_cpuid=(4'h3<<1) + { 2'h0,cpuid[1:0] };
wire	[3:0]	pc4_cpuid=(4'h4<<1) + { 2'h0,cpuid[1:0] };
wire	[3:0]	pc5_cpuid=(4'h5<<1) + { 2'h0,cpuid[1:0] };
wire	[3:0]	pc6_cpuid=(4'h6<<1) + { 2'h0,cpuid[1:0] };

// poly-core options
`ifdef		MCOC_POLY_14
wire	[2:0]	max_punit=3'd7;
`elsif		MCOC_POLY_12
wire	[2:0]	max_punit=3'd6;
assign	pc6_bcmd[2:0]=3'h0;
assign	pc6_badr[15:0]=16'h0;
assign	pc6_badrx[15:0]=16'h0;
assign	pc6_bdatw[15:0]=16'h0;
`elsif		MCOC_POLY_10
wire	[2:0]	max_punit=3'd5;
assign	pc6_bcmd[2:0]=3'h0;
assign	pc6_badr[15:0]=16'h0;
assign	pc6_badrx[15:0]=16'h0;
assign	pc6_bdatw[15:0]=16'h0;
assign	pc5_bcmd[2:0]=3'h0;
assign	pc5_badr[15:0]=16'h0;
assign	pc5_badrx[15:0]=16'h0;
assign	pc5_bdatw[15:0]=16'h0;
`elsif		MCOC_POLY_8
wire	[2:0]	max_punit=3'd4;
assign	pc6_bcmd[2:0]=3'h0;
assign	pc6_badr[15:0]=16'h0;
assign	pc6_badrx[15:0]=16'h0;
assign	pc6_bdatw[15:0]=16'h0;
assign	pc5_bcmd[2:0]=3'h0;
assign	pc5_badr[15:0]=16'h0;
assign	pc5_badrx[15:0]=16'h0;
assign	pc5_bdatw[15:0]=16'h0;
assign	pc4_bcmd[2:0]=3'h0;
assign	pc4_badr[15:0]=16'h0;
assign	pc4_badrx[15:0]=16'h0;
assign	pc4_bdatw[15:0]=16'h0;
`elsif		MCOC_POLY_6
wire	[2:0]	max_punit=3'd3;
assign	pc6_bcmd[2:0]=3'h0;
assign	pc6_badr[15:0]=16'h0;
assign	pc6_badrx[15:0]=16'h0;
assign	pc6_bdatw[15:0]=16'h0;
assign	pc5_bcmd[2:0]=3'h0;
assign	pc5_badr[15:0]=16'h0;
assign	pc5_badrx[15:0]=16'h0;
assign	pc5_bdatw[15:0]=16'h0;
assign	pc4_bcmd[2:0]=3'h0;
assign	pc4_badr[15:0]=16'h0;
assign	pc4_badrx[15:0]=16'h0;
assign	pc4_bdatw[15:0]=16'h0;
assign	pc3_bcmd[2:0]=3'h0;
assign	pc3_badr[15:0]=16'h0;
assign	pc3_badrx[15:0]=16'h0;
assign	pc3_bdatw[15:0]=16'h0;
`else
wire	[2:0]	max_punit=3'd2;
assign	pc6_bcmd[2:0]=3'h0;
assign	pc6_badr[15:0]=16'h0;
assign	pc6_badrx[15:0]=16'h0;
assign	pc6_bdatw[15:0]=16'h0;
assign	pc5_bcmd[2:0]=3'h0;
assign	pc5_badr[15:0]=16'h0;
assign	pc5_badrx[15:0]=16'h0;
assign	pc5_bdatw[15:0]=16'h0;
assign	pc4_bcmd[2:0]=3'h0;
assign	pc4_badr[15:0]=16'h0;
assign	pc4_badrx[15:0]=16'h0;
assign	pc4_bdatw[15:0]=16'h0;
assign	pc3_bcmd[2:0]=3'h0;
assign	pc3_badr[15:0]=16'h0;
assign	pc3_badrx[15:0]=16'h0;
assign	pc3_bdatw[15:0]=16'h0;
assign	pc2_bcmd[2:0]=3'h0;
assign	pc2_badr[15:0]=16'h0;
assign	pc2_badrx[15:0]=16'h0;
assign	pc2_bdatw[15:0]=16'h0;
`endif

// interrupts
wire	pc0_irq=irq;
wire	pc1_irq=poly_pirq_half[1];
wire	pc2_irq=poly_pirq_half[2];
wire	pc3_irq=poly_pirq_half[3];
wire	pc4_irq=poly_pirq_half[4];
wire	pc5_irq=poly_pirq_half[5];
wire	pc6_irq=poly_pirq_half[6];

// poly-cores
mcoc_punit		punit0 (
	.clk(clk),	// Input
	.rst_n(rst_n),	// Input
	.brdy(pc0_brdy),	// Input
	.irq(pc0_irq),	// Input
	.cpuid(pc0_cpuid[3:0]),	// Input
	.irq_lev(irq_lev[1:0]),	// Input
	.irq_vec(irq_vec[5:0]),	// Input
	.bdatr(pc0_bdatr[15:0]),	// Input
	.bcmd(pc0_bcmd[2:0]),	// Output
	.badrx(pc0_badrx[15:0]),	// Output
	.badr(pc0_badr[15:0]),	// Output
	.bdatw(pc0_bdatw[15:0]),	// Output
	// poly-core I/F
	.bootmd(bootmd),	// Input
	.btm_bcmdw_rom(btm_bcmdw_rom),	// Input
	.btm_badr(btm_badr[15:0]),	// Input
	.btm_bdatw(btm_bdatw[15:0])	// Input
);

mcoc_punit		punit1 (
	.clk(clk),	// Input
	.rst_n(rst_n),	// Input
	.brdy(pc1_brdy),	// Input
	.irq(pc1_irq),	// Input
	.cpuid(pc1_cpuid[3:0]),	// Input
	.irq_lev(2'h0),	// Input
	.irq_vec(6'h0),	// Input
	.bdatr(pc1_bdatr[15:0]),	// Input
	.bcmd(pc1_bcmd[2:0]),	// Output
	.badrx(pc1_badrx[15:0]),	// Output
	.badr(pc1_badr[15:0]),	// Output
	.bdatw(pc1_bdatw[15:0]),	// Output
	// poly-core I/F
	.bootmd(bootmd),	// Input
	.btm_bcmdw_rom(btm_bcmdw_rom),	// Input
	.btm_badr(btm_badr[15:0]),	// Input
	.btm_bdatw(btm_bdatw[15:0])	// Input
);

`ifdef		MCOC_POLY_6
mcoc_punit		punit2 (
	.clk(clk),	// Input
	.rst_n(rst_n),	// Input
	.brdy(pc2_brdy),	// Input
	.irq(pc2_irq),	// Input
	.cpuid(pc2_cpuid[3:0]),	// Input
	.irq_lev(2'h0),	// Input
	.irq_vec(6'h0),	// Input
	.bdatr(pc2_bdatr[15:0]),	// Input
	.bcmd(pc2_bcmd[2:0]),	// Output
	.badrx(pc2_badrx[15:0]),	// Output
	.badr(pc2_badr[15:0]),	// Output
	.bdatw(pc2_bdatw[15:0]),	// Output
	// poly-core I/F
	.bootmd(bootmd),	// Input
	.btm_bcmdw_rom(btm_bcmdw_rom),	// Input
	.btm_badr(btm_badr[15:0]),	// Input
	.btm_bdatw(btm_bdatw[15:0])	// Input
);

`ifdef		MCOC_POLY_8
mcoc_punit		punit3 (
	.clk(clk),	// Input
	.rst_n(rst_n),	// Input
	.brdy(pc3_brdy),	// Input
	.irq(pc3_irq),	// Input
	.cpuid(pc3_cpuid[3:0]),	// Input
	.irq_lev(2'h0),	// Input
	.irq_vec(6'h0),	// Input
	.bdatr(pc3_bdatr[15:0]),	// Input
	.bcmd(pc3_bcmd[2:0]),	// Output
	.badrx(pc3_badrx[15:0]),	// Output
	.badr(pc3_badr[15:0]),	// Output
	.bdatw(pc3_bdatw[15:0]),	// Output
	// poly-core I/F
	.bootmd(bootmd),	// Input
	.btm_bcmdw_rom(btm_bcmdw_rom),	// Input
	.btm_badr(btm_badr[15:0]),	// Input
	.btm_bdatw(btm_bdatw[15:0])	// Input
);

`ifdef		MCOC_POLY_10
mcoc_punit		punit4 (
	.clk(clk),	// Input
	.rst_n(rst_n),	// Input
	.brdy(pc4_brdy),	// Input
	.irq(pc4_irq),	// Input
	.cpuid(pc4_cpuid[3:0]),	// Input
	.irq_lev(2'h0),	// Input
	.irq_vec(6'h0),	// Input
	.bdatr(pc4_bdatr[15:0]),	// Input
	.bcmd(pc4_bcmd[2:0]),	// Output
	.badrx(pc4_badrx[15:0]),	// Output
	.badr(pc4_badr[15:0]),	// Output
	.bdatw(pc4_bdatw[15:0]),	// Output
	// poly-core I/F
	.bootmd(bootmd),	// Input
	.btm_bcmdw_rom(btm_bcmdw_rom),	// Input
	.btm_badr(btm_badr[15:0]),	// Input
	.btm_bdatw(btm_bdatw[15:0])	// Input
);

`ifdef		MCOC_POLY_12
mcoc_punit		punit5 (
	.clk(clk),	// Input
	.rst_n(rst_n),	// Input
	.brdy(pc5_brdy),	// Input
	.irq(pc5_irq),	// Input
	.cpuid(pc5_cpuid[3:0]),	// Input
	.irq_lev(2'h0),	// Input
	.irq_vec(6'h0),	// Input
	.bdatr(pc5_bdatr[15:0]),	// Input
	.bcmd(pc5_bcmd[2:0]),	// Output
	.badrx(pc5_badrx[15:0]),	// Output
	.badr(pc5_badr[15:0]),	// Output
	.bdatw(pc5_bdatw[15:0]),	// Output
	// poly-core I/F
	.bootmd(bootmd),	// Input
	.btm_bcmdw_rom(btm_bcmdw_rom),	// Input
	.btm_badr(btm_badr[15:0]),	// Input
	.btm_bdatw(btm_bdatw[15:0])	// Input
);

`ifdef		MCOC_POLY_14
mcoc_punit		punit6 (
	.clk(clk),	// Input
	.rst_n(rst_n),	// Input
	.brdy(pc6_brdy),	// Input
	.irq(pc6_irq),	// Input
	.cpuid(pc6_cpuid[3:0]),	// Input
	.irq_lev(2'h0),	// Input
	.irq_vec(6'h0),	// Input
	.bdatr(pc6_bdatr[15:0]),	// Input
	.bcmd(pc6_bcmd[2:0]),	// Output
	.badrx(pc6_badrx[15:0]),	// Output
	.badr(pc6_badr[15:0]),	// Output
	.bdatw(pc6_bdatw[15:0]),	// Output
	// poly-core I/F
	.bootmd(bootmd),	// Input
	.btm_bcmdw_rom(btm_bcmdw_rom),	// Input
	.btm_badr(btm_badr[15:0]),	// Input
	.btm_bdatw(btm_bdatw[15:0])	// Input
);
`endif	//	MCOC_POLY_14
`endif	//	MCOC_POLY_12
`endif	//	MCOC_POLY_10
`endif	//	MCOC_POLY_8
`endif	//	MCOC_POLY_6

// memory bys arbiter
busa716		busa (
	.clk(clk),	// Input
	.rst_n(rst_n),	// Input
	.max_punit(max_punit[2:0]),	// Input
	// memory bus
	.brdy(brdy),	// Input
	.bdatr(bdatr[15:0]),	// Input
	.bcmd(bcmd[2:0]),	// Output
	.badr(badr[15:0]),	// Output
	.badrx(badrx[15:0]),	// Output
	.bdatw(bdatw[15:0]),	// Output
	// punit0
	.pc0_bcmd(pc0_bcmd[2:0]),	// Input
	.pc0_badr(pc0_badr[15:0]),	// Input
	.pc0_badrx(pc0_badrx[15:0]),	// Input
	.pc0_bdatw(pc0_bdatw[15:0]),	// Input
	.pc0_brdy(pc0_brdy),	// Output
	.pc0_bdatr(pc0_bdatr[15:0]),	// Output
	// punit1
	.pc1_bcmd(pc1_bcmd[2:0]),	// Input
	.pc1_badr(pc1_badr[15:0]),	// Input
	.pc1_badrx(pc1_badrx[15:0]),	// Input
	.pc1_bdatw(pc1_bdatw[15:0]),	// Input
	.pc1_brdy(pc1_brdy),	// Output
	.pc1_bdatr(pc1_bdatr[15:0]),	// Output
	// punit2
	.pc2_bcmd(pc2_bcmd[2:0]),	// Input
	.pc2_badr(pc2_badr[15:0]),	// Input
	.pc2_badrx(pc2_badrx[15:0]),	// Input
	.pc2_bdatw(pc2_bdatw[15:0]),	// Input
	.pc2_brdy(pc2_brdy),	// Output
	.pc2_bdatr(pc2_bdatr[15:0]),	// Output
	// punit3
	.pc3_bcmd(pc3_bcmd[2:0]),	// Input
	.pc3_badr(pc3_badr[15:0]),	// Input
	.pc3_badrx(pc3_badrx[15:0]),	// Input
	.pc3_bdatw(pc3_bdatw[15:0]),	// Input
	.pc3_brdy(pc3_brdy),	// Output
	.pc3_bdatr(pc3_bdatr[15:0]),	// Output
	// punit4
	.pc4_bcmd(pc4_bcmd[2:0]),	// Input
	.pc4_badr(pc4_badr[15:0]),	// Input
	.pc4_badrx(pc4_badrx[15:0]),	// Input
	.pc4_bdatw(pc4_bdatw[15:0]),	// Input
	.pc4_brdy(pc4_brdy),	// Output
	.pc4_bdatr(pc4_bdatr[15:0]),	// Output
	// punit5
	.pc5_bcmd(pc5_bcmd[2:0]),	// Input
	.pc5_badr(pc5_badr[15:0]),	// Input
	.pc5_badrx(pc5_badrx[15:0]),	// Input
	.pc5_bdatw(pc5_bdatw[15:0]),	// Input
	.pc5_brdy(pc5_brdy),	// Output
	.pc5_bdatr(pc5_bdatr[15:0]),	// Output
	// punit6
	.pc6_bcmd(pc6_bcmd[2:0]),	// Input
	.pc6_badr(pc6_badr[15:0]),	// Input
	.pc6_badrx(pc6_badrx[15:0]),	// Input
	.pc6_bdatw(pc6_bdatw[15:0]),	// Input
	.pc6_brdy(pc6_brdy),	// Output
	.pc6_bdatr(pc6_bdatr[15:0])	// Output
);

endmodule


module	mcoc_punit (
// poly-core CPU unit
input	clk,
input	rst_n,
input	brdy,
input	irq,
input	[3:0]	cpuid,
input	[1:0]	irq_lev,
input	[5:0]	irq_vec,
input	[15:0]	bdatr,
output	[2:0]	bcmd,
output	[15:0]	badrx,
output	[15:0]	badr,
output	[15:0]	bdatw,
// poly-core I/F
input	bootmd,
input	btm_bcmdw_rom,
input	[15:0]	btm_badr,
input	[15:0]	btm_bdatw);


wire	[4:0]	ccmd;
wire	[15:0]	abus_o;
wire	[15:0]	bbus_o;
wire	[15:0]	cbus_i;
wire	[15:0]	rom_fdat;
wire	[31:0]	rom_fdat1;
wire	[31:0]	rom_fdat2;
wire	[1:0]	cpu_fcmd;
wire	[15:0]	cpu_fadr;
wire	[31:0]	cpu_fdat;
wire	[2:0]	cpu_bcmd;
wire	[15:0]	cpu_badr;
wire	[15:0]	cpu_badrx;
wire	[15:0]	cpu_bdatw;
wire	[15:0]	cpu_bdatr;
wire	[2:0]	tcm_bcmd;
wire	[15:0]	tcm_badr;
wire	[15:0]	tcm_bdatw;
wire	[15:0]	tcm_bdatr;
wire	[31:0]	bdatr_rom;
wire	[31:0]	bdatr_iram;

wire	tcm_bcmdr=tcm_bcmd[0];
wire	tcm_bcmdw=tcm_bcmd[1];
wire	tcm_bcmdb=tcm_bcmd[2];
wire	tcm_bcmdl=1'b0;


`ifdef		MCOC_CORE_MCBS

assign	cpu_fcmd[1:0]=2'b01;


moscoviumbs		core (
	.clk(clk),	// Input
	.rst_n(rst_n),	// Input
	.brdy(cpu_brdy),	// Input
	.irq(irq),	// Input
	.cpuid(cpuid[3:0]),	// Input
	.irq_lev(irq_lev[1:0]),	// Input
	.irq_vec(irq_vec[5:0]),	// Input
	.fdat(cpu_fdat[15:0]),	// Input
	.bdatr(cpu_bdatr[15:0]),	// Input
	.fadr(cpu_fadr[15:0]),	// Output
	.bcmd(cpu_bcmd[2:0]),	// Output
	.badrx(cpu_badrx[15:0]),	// Output
	.badr(cpu_badr[15:0]),	// Output
	.bdatw(cpu_bdatw[15:0]),	// Output
	// Co-processor I/F
	.crdy(crdy),	// Input
	.cbus_i(cbus_i[15:0]),	// Input
	.ccmd(ccmd[4:0]),	// Output
	.abus_o(abus_o[15:0]),	// Output
	.bbus_o(bbus_o[15:0])	// Output
);

`else	// MCOC_CORE_MCBS
assign	cpu_badrx[15:0]=16'h0;


// signed multiply
wire	signed	[8:0]	tnsn_dsp_a;
wire	signed	[8:0]	tnsn_dsp_b;
//(* use_dsp="yes" *)	// if you want use dsp macros
wire	signed	[17:0]	tnsn_dsp_c=tnsn_dsp_a*tnsn_dsp_b;


assign	cpu_fcmd[1:0]=2'b01;


tennessine	core (
	.clk(clk),	// Input
	.rst_n(rst_n),	// Input
	.brdy(cpu_brdy),	// Input
	.irq(irq),	// Input
	.cpuid(cpuid[3:0]),	// Input
	.irq_lev(irq_lev[1:0]),	// Input
	.irq_vec(irq_vec[5:0]),	// Input
	.fdat(cpu_fdat[15:0]),	// Input
	.bdatr(cpu_bdatr[15:0]),	// Input
	.fadr(cpu_fadr[15:0]),	// Output
	.bcmd(cpu_bcmd[2:0]),	// Output
	.badr(cpu_badr[15:0]),	// Output
	.bdatw(cpu_bdatw[15:0]),	// Output
	// DSP macro I/F
	.tnsn_dsp_c(tnsn_dsp_c[17:0]),	// Input
	.tnsn_dsp_a(tnsn_dsp_a[8:0]),	// Output
	.tnsn_dsp_b(tnsn_dsp_b[8:0])	// Output
);

`endif	// MCOC_CORE_MCBS

`ifdef		MCVM_COPR_MUL
wire	[15:0]	cbus_mulc;
mcoc_mulc16		mulc (
	.clk(clk),	// Input
	.rst_n(rst_n),	// Input
	.ccmd(ccmd[4:0]),	// Input
	.abus(abus_o[15:0]),	// Input
	.bbus(bbus_o[15:0]),	// Input
	.crdy(crdy_mulc),	// Output
	.cbus(cbus_mulc[15:0])	// Output
);
`else	//	MCVM_COPR_MUL
wire	crdy_mulc=1'b1;
wire	[15:0]	cbus_mulc=16'h0;
`endif	//	MCVM_COPR_MUL

`ifdef		MCVM_COPR_DIV
wire	[15:0]	cbus_divc;

`ifdef		MCOC_CORE_MCBS
divc16	divc (
	.clk(clk),	// Input
	.rst_n(rst_n),	// Input
	.ccmd(ccmd[4:0]),	// Input
	.abus(abus_o[15:0]),	// Input
	.bbus(bbus_o[15:0]),	// Input
	.crdy(crdy_divc),	// Output
	.cbus(cbus_divc[15:0])	// Output
);
`else	//	MCOC_CORE_MCBS
divc32	divc (
	.clk(clk),	// Input
	.rst_n(rst_n),	// Input
	.ccmd(ccmd[4:0]),	// Input
	.abus(abus_o[15:0]),	// Input
	.bbus(bbus_o[15:0]),	// Input
	.crdy(crdy_divc),	// Output
	.cbus(cbus_divc[15:0])	// Output
);
`endif	//	MCOC_CORE_MCBS

`else	//	MCVM_COPR_DIV
wire	crdy_divc=1'b1;
wire	[15:0]	cbus_divc=16'h0;
`endif	//	MCVM_COPR_DIV

`ifdef		MCVM_COPR_FPUH
wire	[15:0]	cbus_hfpu;
mcoc_hfpu	hfpu (
	.clk(clk),	// Input
	.rst_n(rst_n),	// Input
	.ccmd(ccmd[4:0]),	// Input
	.abus(abus_o[15:0]),	// Input
	.bbus(bbus_o[15:0]),	// Input
	.crdy(crdy_hfpu),	// Output
	.cbus(cbus_hfpu[15:0])	// Output
);
`else	//	MCVM_COPR_FPUH
wire	crdy_hfpu=1'b1;
wire	[15:0]	cbus_hfpu=16'h0;
`endif	//	MCVM_COPR_FPUH

// co-processor bus output
assign	crdy=crdy_mulc & crdy_divc & crdy_hfpu;
assign	cbus_i[15:0]=cbus_mulc[15:0] | cbus_divc[15:0] | cbus_hfpu[15:0];


// Tightly coupled memory
mcoc_rom	rom (
	.clk(clk),	// Input
	.rst_n(rst_n),	// Input
	.bootmd(bootmd),	// Input
	.brdy(tcm_brdy),	// Input
	.bcmdr(tcm_bcmdr),	// Input
	.bcmdw(tcm_bcmdw),	// Input
	.bcmdl(tcm_bcmdl),	// Input
	.bmst(1'b0),	// Input
	.bcs_rom_n(tcm_rom_n),	// Input
	.fcmd1(cpu_fcmd[1:0]),	// Input
	.fcmd2(cpu_fcmd[1:0]),	// Input
	.fadr1({16{ (cpuid[3:0]==4'd15) }} & cpu_fadr[15:0]),	// Input
	.fadr2({16{ (cpuid[3:0]!=4'd15) }} & cpu_fadr[15:0]),	// Input
	.badr(tcm_badr[15:0]),	// Input
	.bdatw({ 16'h0,tcm_bdatw[15:0] }),	// Input
	.frdy1(frdy1),	// Output
	.frdy2(frdy2),	// Output
	.fdat1(rom_fdat1[31:0]),	// Output
	.fdat2(rom_fdat2[31:0]),	// Output
	.bdatr(bdatr_rom[31:0])	// Output
);
//	.bmst((cpuid[3:0]==4'd15)? 1'b1: 1'b0),	// Input	// is this correct?
assign	rom_fdat[15:0]=(cpuid[3:0]==4'd15)? rom_fdat1[15:0]: rom_fdat2[15:0];

mcoc_iram	iram (
	.clk(clk),	// Input
	.rst_n(rst_n),	// Input
	.fcmdl(1'b0),	// Input
	.brdy(tcm_brdy),	// Input
	.bcmdr(tcm_bcmdr),	// Input
	.bcmdw(tcm_bcmdw),	// Input
	.bcmdb(tcm_bcmdb),	// Input
	.bcmdl(1'b0),	// Input
	.bcs_iram_n(tcm_iram_n),	// Input
	.fadr(cpu_fadr[15:0]),	// Input
	.badr(tcm_badr[15:0]),	// Input
	.bdatw({ 16'h0,cpu_bdatw[15:0] }),	// Input
	.rom_fdat({ 16'h0,rom_fdat[15:0] }),	// Input
	.fdat(cpu_fdat[31:0]),	// Output
	.bdatr(bdatr_iram[31:0])	// Output
);

// TCM bus output
assign	tcm_bdatr[15:0]=bdatr_rom[15:0] | bdatr_iram[15:0];

// Tightly coupled memory controller
tcmc16	tcmc (
	.clk(clk),	// Input
	.rst_n(rst_n),	// Input
	.brdy(brdy),	// Input
	.bdatr(bdatr[15:0]),	// Input
	.cpu_bcmd(cpu_bcmd[2:0]),	// Input
	.cpu_badr(cpu_badr[15:0]),	// Input
	.cpu_badrx(cpu_badrx[15:0]),	// Input
	.cpu_bdatw(cpu_bdatw[15:0]),	// Input
	.tcm_bdatr(tcm_bdatr[15:0]),	// Input
	.cpu_brdy(cpu_brdy),	// Output
	.tcm_brdy(tcm_brdy),	// Output
	.tcm_iram_n(tcm_iram_n),	// Output
	.tcm_rom_n(tcm_rom_n),	// Output
	.bcmd(bcmd[2:0]),	// Output
	.badr(badr[15:0]),	// Output
	.badrx(badrx[15:0]),	// Output
	.bdatw(bdatw[15:0]),	// Output
	.cpu_bdatr(cpu_bdatr[15:0]),	// Output
	.tcm_bcmd(tcm_bcmd[2:0]),	// Output
	.tcm_badr(tcm_badr[15:0]),	// Output
	.tcm_bdatw(tcm_bdatw[15:0]),	// Output
	// poly-core I/F
	.bootmd(bootmd),	// Input
	.btm_bcmdw_rom(btm_bcmdw_rom),	// Input
	.btm_badr(btm_badr[15:0]),	// Input
	.btm_bdatw(btm_bdatw[15:0])	// Input
);

endmodule

