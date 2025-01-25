`ifdef		MCOC_CORE_TS

(* use_dsp = "yes" *)
module	tennessinec (
// Tennessine
input	clk,
input	rst_n,
input	brdy,
input	irq,
input	[1:0]	cpuid,
input	[1:0]	irq_lev,
input	[5:0]	irq_vec,
input	[15:0]	fdatx,
input	[15:0]	fdat,
input	[15:0]	bdatrx,
input	[15:0]	bdatr,
output	[15:0]	fadr,
output	[3:0]	bcmd,
output	[15:0]	badrx,
output	[15:0]	badr,
output	[15:0]	bdatwx,
output	[15:0]	bdatw);


// compile option


assign	bcmd[3]=1'b0;
assign	badrx[15:0]=16'h0;
assign	bdatwx[15:0]=16'h0;


// signed multiply
wire	signed	[8:0]	tnsn_dsp_a;
wire	signed	[8:0]	tnsn_dsp_b;
wire	signed	[17:0]	tnsn_dsp_c=tnsn_dsp_a*tnsn_dsp_b;


tennessine	core (
	.clk(clk),	// Input
	.rst_n(rst_n),	// Input
	.brdy(brdy),	// Input
	.irq(irq),	// Input
	.cpuid(cpuid[1:0]),	// Input
	.irq_lev(irq_lev[1:0]),	// Input
	.irq_vec(irq_vec[5:0]),	// Input
	.fdat(fdat[15:0]),	// Input
	.bdatr(bdatr[15:0]),	// Input
	.fadr(fadr[15:0]),	// Output
	.bcmd(bcmd[2:0]),	// Output
	.badr(badr[15:0]),	// Output
	.bdatw(bdatw[15:0]),	// Output
	// DSP macro I/F
	.tnsn_dsp_c(tnsn_dsp_c[17:0]),	// Input
	.tnsn_dsp_a(tnsn_dsp_a[8:0]),	// Output
	.tnsn_dsp_b(tnsn_dsp_b[8:0])	// Output
);

endmodule

`elsif		MCOC_CORE_NH

module	nihoniumc (
// Nihonium + Co-processor
input	clk,
input	rst_n,
input	brdy,
input	irq,
input	[1:0]	cpuid,
input	[1:0]	irq_lev,
input	[5:0]	irq_vec,
input	[15:0]	fdatx,
input	[15:0]	fdat,
input	[15:0]	bdatrx,
input	[15:0]	bdatr,
output	[15:0]	fadr,
output	[3:0]	bcmd,
output	[15:0]	badrx,
output	[15:0]	badr,
output	[15:0]	bdatwx,
output	[15:0]	bdatw);


// compile option
//`define		MCOC_CORE_NHSS
//`define		MCVM_COPR_NOFPU


wire	[4:0]	ccmd;
wire	[31:0]	abus_o;
wire	[31:0]	bbus_o;
wire	[31:0]	cbus_i;


`ifdef		MCOC_CORE_NHSS

// signed multiply
wire	signed	[32:0]	niss_dsp_a0;
wire	signed	[32:0]	niss_dsp_a1;
wire	signed	[32:0]	niss_dsp_b0;
wire	signed	[32:0]	niss_dsp_b1;
wire	signed	[65:0]	niss_dsp_c0=niss_dsp_a0*niss_dsp_b0;
wire	signed	[65:0]	niss_dsp_c1=niss_dsp_a1*niss_dsp_b1;


nihoniumss	core (
	.clk(clk),	// Input
	.rst_n(rst_n),	// Input
	.brdy(brdy),	// Input
	.irq(irq),	// Input
	.cpuid(cpuid[1:0]),	// Input
	.irq_lev(irq_lev[1:0]),	// Input
	.irq_vec(irq_vec[5:0]),	// Input
	.fdat({ fdatx[15:0],fdat[15:0] }),	// Input
	.bdatr({ bdatrx[15:0],bdatr[15:0] }),	// Input
	.fadr(fadr[15:0]),	// Output
	.bcmd(bcmd[3:0]),	// Output
	.badr({ badrx[15:0],badr[15:0] }),	// Output
	.bdatw({ bdatwx[15:0],bdatw[15:0] }),	// Output
	// Co-processor I/F
	.crdy(crdy),	// Input
	.cbus_i(cbus_i[31:0]),	// Input
	.ccmd(ccmd[4:0]),	// Output
	.abus_o(abus_o[31:0]),	// Output
	.bbus_o(bbus_o[31:0]),	// Output
	// DSP macro I/F
	.niss_dsp_c0(niss_dsp_c0[65:0]),	// Input
	.niss_dsp_c1(niss_dsp_c1[65:0]),	// Input
	.niss_dsp_a0(niss_dsp_a0[32:0]),	// Output
	.niss_dsp_a1(niss_dsp_a1[32:0]),	// Output
	.niss_dsp_b0(niss_dsp_b0[32:0]),	// Output
	.niss_dsp_b1(niss_dsp_b1[32:0])	// Output
);

`else	//	MCOC_CORE_NHSS

// signed multiply
wire	signed	[32:0]	niho_dsp_a;
wire	signed	[32:0]	niho_dsp_b;
wire	signed	[65:0]	niho_dsp_c=niho_dsp_a*niho_dsp_b;


nihonium	core (
	.clk(clk),	// Input
	.rst_n(rst_n),	// Input
	.brdy(brdy),	// Input
	.irq(irq),	// Input
	.cpuid(cpuid[1:0]),	// Input
	.irq_lev(irq_lev[1:0]),	// Input
	.irq_vec(irq_vec[5:0]),	// Input
	.fdat(fdat[15:0]),	// Input
	.bdatr({ bdatrx[15:0],bdatr[15:0] }),	// Input
	.fadr(fadr[15:0]),	// Output
	.bcmd(bcmd[3:0]),	// Output
	.badr({ badrx[15:0],badr[15:0] }),	// Output
	.bdatw({ bdatwx[15:0],bdatw[15:0] }),	// Output
	// Co-processor I/F
	.crdy(crdy),	// Input
	.cbus_i(cbus_i[31:0]),	// Input
	.ccmd(ccmd[4:0]),	// Output
	.abus_o(abus_o[31:0]),	// Output
	.bbus_o(bbus_o[31:0]),	// Output
	// DSP macro I/F
	.niho_dsp_c(niho_dsp_c[65:0]),	// Input
	.niho_dsp_a(niho_dsp_a[32:0]),	// Output
	.niho_dsp_b(niho_dsp_b[32:0])	// Output
);

`endif	//	MCOC_CORE_NHSS


`ifdef		MCVM_COPR_NOFPU
wire	crdy_hfpu=1'b1;
wire	[15:0]	cbus_hfpu=16'h0;
`else	//	MCVM_COPR_NOFPU
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
`endif	//	MCVM_COPR_NOFPU

`ifdef		MCVM_COPR_NOFPUS
wire	crdy_sfpu=1'b1;
wire	[31:0]	cbus_sfpu=31'h0;
`else	//	MCVM_COPR_NOFPUS
wire	[31:0]	cbus_sfpu;
mcoc_sfpu	sfpu (
	.clk(clk),	// Input
	.rst_n(rst_n),	// Input
	.ccmd(ccmd[4:0]),	// Input
	.abus(abus_o[31:0]),	// Input
	.bbus(bbus_o[31:0]),	// Input
	.crdy(crdy_sfpu),	// Output
	.cbus(cbus_sfpu[31:0])	// Output
);
`endif	//	MCVM_COPR_NOFPUS


// bus output
assign	crdy=crdy_hfpu&crdy_sfpu;
assign	cbus_i[31:0]={ 16'h0,cbus_hfpu[15:0] } | cbus_sfpu[31:0];

endmodule

`else

module	moscoviumc (
// Moscovium + Co-processor
input	clk,
input	rst_n,
input	brdy,
input	irq,
input	[1:0]	cpuid,
input	[1:0]	irq_lev,
input	[5:0]	irq_vec,
input	[15:0]	fdatx,
input	[15:0]	fdat,
input	[15:0]	bdatrx,
input	[15:0]	bdatr,
output	[15:0]	fadr,
output	[3:0]	bcmd,
output	[15:0]	badrx,
output	[15:0]	badr,
output	[15:0]	bdatwx,
output	[15:0]	bdatw);


// compile option
//`define		MCOC_CORE_MCSS
//`define		MCVM_COPR_NOMUL
//`define		MCVM_COPR_NODIV
//`define		MCVM_COPR_NOFPU


wire	[4:0]	ccmd;
wire	[15:0]	abus_o;
wire	[15:0]	bbus_o;
wire	[15:0]	cbus_i;

assign	bcmd[3]=1'b0;
assign	bdatwx[15:0]=16'h0;


`ifdef		MCOC_CORE_MCSS

moscoviumss		core (
	.clk(clk),	// Input
	.rst_n(rst_n),	// Input
	.brdy(brdy),	// Input
	.irq(irq),	// Input
	.cpuid(cpuid[1:0]),	// Input
	.irq_lev(irq_lev[1:0]),	// Input
	.irq_vec(irq_vec[5:0]),	// Input
	.fdatx(fdatx[15:0]),	// Input
	.fdat(fdat[15:0]),	// Input
	.bdatr(bdatr[15:0]),	// Input
	.fadr(fadr[15:0]),	// Output
	.bcmd(bcmd[2:0]),	// Output
	.badrx(badrx[15:0]),	// Output
	.badr(badr[15:0]),	// Output
	.bdatw(bdatw[15:0]),	// Output
	// Co-processor I/F
	.crdy(crdy),	// Input
	.cbus_i(cbus_i[15:0]),	// Input
	.ccmd(ccmd[4:0]),	// Output
	.abus_o(abus_o[15:0]),	// Output
	.bbus_o(bbus_o[15:0])	// Output
);

`elsif		MCOC_CORE_MCBS

moscoviumbs		core (
	.clk(clk),	// Input
	.rst_n(rst_n),	// Input
	.brdy(brdy),	// Input
	.irq(irq),	// Input
	.cpuid(cpuid[1:0]),	// Input
	.irq_lev(irq_lev[1:0]),	// Input
	.irq_vec(irq_vec[5:0]),	// Input
	.fdat(fdat[15:0]),	// Input
	.bdatr(bdatr[15:0]),	// Input
	.fadr(fadr[15:0]),	// Output
	.bcmd(bcmd[2:0]),	// Output
	.badrx(badrx[15:0]),	// Output
	.badr(badr[15:0]),	// Output
	.bdatw(bdatw[15:0]),	// Output
	// Co-processor I/F
	.crdy(crdy),	// Input
	.cbus_i(cbus_i[15:0]),	// Input
	.ccmd(ccmd[4:0]),	// Output
	.abus_o(abus_o[15:0]),	// Output
	.bbus_o(bbus_o[15:0])	// Output
);

`else

moscovium	core (
	.clk(clk),	// Input
	.rst_n(rst_n),	// Input
	.brdy(brdy),	// Input
	.irq(irq),	// Input
	.cpuid(cpuid[1:0]),	// Input
	.irq_lev(irq_lev[1:0]),	// Input
	.irq_vec(irq_vec[5:0]),	// Input
	.fdat(fdat[15:0]),	// Input
	.bdatr(bdatr[15:0]),	// Input
	.fadr(fadr[15:0]),	// Output
	.bcmd(bcmd[2:0]),	// Output
	.badrx(badrx[15:0]),	// Output
	.badr(badr[15:0]),	// Output
	.bdatw(bdatw[15:0]),	// Output
	// Co-processor I/F
	.crdy(crdy),	// Input
	.cbus_i(cbus_i[15:0]),	// Input
	.ccmd(ccmd[4:0]),	// Output
	.abus_o(abus_o[15:0]),	// Output
	.bbus_o(bbus_o[15:0])	// Output
);

`endif

`ifdef		MCVM_COPR_NOMUL
wire	crdy_mulc=1'b1;
wire	[15:0]	cbus_mulc=16'h0;
`else	//	MCVM_COPR_NOMUL
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
`endif	//	MCVM_COPR_NOMUL

`ifdef		MCVM_COPR_NODIV
wire	crdy_divc=1'b1;
wire	[15:0]	cbus_divc=16'h0;
`else	//	MCVM_COPR_NODIV
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

`endif	//	MCVM_COPR_NODIV

`ifdef		MCVM_COPR_NOFPU
wire	crdy_hfpu=1'b1;
wire	[15:0]	cbus_hfpu=16'h0;
`else	//	MCVM_COPR_NOFPU
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
`endif	//	MCVM_COPR_NOFPU


// co-processor bus output
assign	crdy=crdy_mulc & crdy_divc & crdy_hfpu;
assign	cbus_i[15:0]=cbus_mulc[15:0] | cbus_divc[15:0] | cbus_hfpu[15:0];

endmodule

`endif	//	MCOC_CORE_NH


`ifdef		MCOC_DUAL_AMP_TS
(* use_dsp = "yes" *)
module	tennessinea (
// Tennessine for AMP dual core cpu
input	clk,
input	rst_n,
input	brdy,
input	irq,
input	[1:0]	cpuid,
input	[1:0]	irq_lev,
input	[5:0]	irq_vec,
input	[15:0]	fdatx,
input	[15:0]	fdat,
input	[15:0]	bdatrx,
input	[15:0]	bdatr,
output	[15:0]	fadr,
output	[3:0]	bcmd,
output	[15:0]	badrx,
output	[15:0]	badr,
output	[15:0]	bdatwx,
output	[15:0]	bdatw);


// compile option


assign	bcmd[3]=1'b0;
assign	badrx[15:0]=16'h0;
assign	bdatwx[15:0]=16'h0;


// signed multiply
wire	signed	[8:0]	tnsn_dsp_a;
wire	signed	[8:0]	tnsn_dsp_b;
wire	signed	[17:0]	tnsn_dsp_c=tnsn_dsp_a*tnsn_dsp_b;


tennessine	core (
	.clk(clk),	// Input
	.rst_n(rst_n),	// Input
	.brdy(brdy),	// Input
	.irq(irq),	// Input
	.cpuid(cpuid[1:0]),	// Input
	.irq_lev(irq_lev[1:0]),	// Input
	.irq_vec(irq_vec[5:0]),	// Input
	.fdat(fdat[15:0]),	// Input
	.bdatr(bdatr[15:0]),	// Input
	.fadr(fadr[15:0]),	// Output
	.bcmd(bcmd[2:0]),	// Output
	.badr(badr[15:0]),	// Output
	.bdatw(bdatw[15:0]),	// Output
	// DSP macro I/F
	.tnsn_dsp_c(tnsn_dsp_c[17:0]),	// Input
	.tnsn_dsp_a(tnsn_dsp_a[8:0]),	// Output
	.tnsn_dsp_b(tnsn_dsp_b[8:0])	// Output
);

endmodule
`endif	//	MCOC_DUAL_AMP_TS


`ifdef		MCOC_DUAL_AMP_MC
module	moscoviuma (
// Moscovium + MULC16 for AMP dual core cpu
input	clk,
input	rst_n,
input	brdy,
input	irq,
input	[1:0]	cpuid,
input	[1:0]	irq_lev,
input	[5:0]	irq_vec,
input	[15:0]	fdatx,
input	[15:0]	fdat,
input	[15:0]	bdatrx,
input	[15:0]	bdatr,
output	[15:0]	fadr,
output	[3:0]	bcmd,
output	[15:0]	badrx,
output	[15:0]	badr,
output	[15:0]	bdatwx,
output	[15:0]	bdatw);


// compile option


wire	[4:0]	ccmd;
wire	[15:0]	abus_o;
wire	[15:0]	bbus_o;
wire	[15:0]	cbus_i;

assign	bcmd[3]=1'b0;
assign	bdatwx[15:0]=16'h0;


moscovium	core (
	.clk(clk),	// Input
	.rst_n(rst_n),	// Input
	.brdy(brdy),	// Input
	.irq(irq),	// Input
	.cpuid(cpuid[1:0]),	// Input
	.irq_lev(irq_lev[1:0]),	// Input
	.irq_vec(irq_vec[5:0]),	// Input
	.fdat(fdat[15:0]),	// Input
	.bdatr(bdatr[15:0]),	// Input
	.fadr(fadr[15:0]),	// Output
	.bcmd(bcmd[2:0]),	// Output
	.badrx(badrx[15:0]),	// Output
	.badr(badr[15:0]),	// Output
	.bdatw(bdatw[15:0]),	// Output
	// Co-processor I/F
	.crdy(crdy),	// Input
	.cbus_i(cbus_i[15:0]),	// Input
	.ccmd(ccmd[4:0]),	// Output
	.abus_o(abus_o[15:0]),	// Output
	.bbus_o(bbus_o[15:0])	// Output
);


// signed multiply
wire	signed	[16:0]	mulc_dsp_a;
wire	signed	[16:0]	mulc_dsp_b;
wire	signed	[33:0]	mulc_dsp_c=mulc_dsp_a*mulc_dsp_b;


mulc16	mulc (
	.clk(clk),	// Input
	.rst_n(rst_n),	// Input
	.ccmd(ccmd[4:0]),	// Input
	.abus(abus_o[15:0]),	// Input
	.bbus(bbus_o[15:0]),	// Input
	.crdy(crdy),	// Output
	.cbus(cbus_i[15:0]),	// Output
	// DSP macro I/F
	.mulc_dsp_c(mulc_dsp_c[33:0]),	// Input
	.mulc_dsp_a(mulc_dsp_a[16:0]),	// Output
	.mulc_dsp_b(mulc_dsp_b[16:0])	// Output
);

endmodule
`endif	//	MCOC_DUAL_AMP_MC


`ifdef		MCVM_COPR_NOMUL
`else	//	MCVM_COPR_NOMUL
module	mcoc_mulc16 (
// Multiply Co-processor
input	clk,
input	rst_n,
input	[4:0]	ccmd,
input	[15:0]	abus,
input	[15:0]	bbus,
output	crdy,
output	[15:0]	cbus);


// signed multiply
wire	signed	[16:0]	mulc_dsp_a;
wire	signed	[16:0]	mulc_dsp_b;
wire	signed	[33:0]	mulc_dsp_c=mulc_dsp_a*mulc_dsp_b;


mulc16	mulc (
	.clk(clk),	// Input
	.rst_n(rst_n),	// Input
	.ccmd(ccmd[4:0]),	// Input
	.abus(abus[15:0]),	// Input
	.bbus(bbus[15:0]),	// Input
	.crdy(crdy),	// Output
	.cbus(cbus[15:0]),	// Output
	// DSP macro I/F
	.mulc_dsp_c(mulc_dsp_c[33:0]),	// Input
	.mulc_dsp_a(mulc_dsp_a[16:0]),	// Output
	.mulc_dsp_b(mulc_dsp_b[16:0])	// Output
);

endmodule
`endif	//	MCVM_COPR_NOMUL


`ifdef		MCVM_COPR_NOFPU
`else	//	MCVM_COPR_NOFPU
module	mcoc_hfpu (
// half precision FPU
input	clk,
input	rst_n,
input	[4:0]	ccmd,
input	[15:0]	abus,
input	[15:0]	bbus,
output	crdy,
output	[15:0]	cbus);


// unsigned multiply
wire	[10:0]	hfpu_dsp_a;
wire	[10:0]	hfpu_dsp_b;
wire	[21:0]	hfpu_dsp_c=hfpu_dsp_a[10:0]*hfpu_dsp_b[10:0];


halfpu	hfpu (
	.clk(clk),	// Input
	.rst_n(rst_n),	// Input
	.ccmd(ccmd[4:0]),	// Input
	.abus(abus[15:0]),	// Input
	.bbus(bbus[15:0]),	// Input
	.crdy(crdy),	// Output
	.cbus(cbus[15:0]),	// Output
	// DSP macro I/F
	.hfpu_dsp_c(hfpu_dsp_c[21:0]),	// Input
	.hfpu_dsp_a(hfpu_dsp_a[10:0]),	// Output
	.hfpu_dsp_b(hfpu_dsp_b[10:0])	// Output
);

endmodule
`endif	//	MCVM_COPR_NOFPU


`ifdef		MCVM_COPR_NOFPUS
`else	//	MCVM_COPR_NOFPUS
module	mcoc_sfpu (
// single precision FPU
input	clk,
input	rst_n,
input	[4:0]	ccmd,
input	[31:0]	abus,
input	[31:0]	bbus,
output	crdy,
output	[31:0]	cbus);


// unsigned multiply
wire	[23:0]	sfpu_dsp_a;
wire	[23:0]	sfpu_dsp_b;
wire	[47:0]	sfpu_dsp_c=sfpu_dsp_a[23:0]*sfpu_dsp_b[23:0];


sglfpu	sfpu (
	.clk(clk),	// Input
	.rst_n(rst_n),	// Input
	.ccmd(ccmd[4:0]),	// Input
	.abus(abus[31:0]),	// Input
	.bbus(bbus[31:0]),	// Input
	.crdy(crdy),	// Output
	.cbus(cbus[31:0]),	// Output
	// DSP macro I/F
	.sfpu_dsp_c(sfpu_dsp_c[47:0]),	// Input
	.sfpu_dsp_a(sfpu_dsp_a[23:0]),	// Output
	.sfpu_dsp_b(sfpu_dsp_b[23:0])	// Output
);

endmodule
`endif	//	MCVM_COPR_NOFPUS


module	mcoc_rom (
// mcoc115 rom 32 bit bus
input	clk,
input	rst_n,
input	bootmd,
input	fcmdl1,
input	fcmdl2,
input	brdy,
input	bcmdr,
input	bcmdw,
input	bcmdl,
input	bmst,
input	bcs_rom_n,
input	[15:0]	fadr1,
input	[15:0]	fadr2,
input	[15:0]	badr,
input	[31:0]	bdatw,
output	[31:0]	fdat1,
output	[31:0]	fdat2,
output	[31:0]	bdatr);


wire	[3:0]	rom_we1;
wire	[15:0]	rom_adr1;
wire	[15:0]	rom_adr2;
wire	[31:0]	rom_dat1;
wire	[31:0]	rom_dat2;
wire	[31:0]	rom_datw;
wire	[31:0]	fdat1_rom;
wire	[31:0]	fdat2_rom;


// rom wrapper
rom_wrap32d		romwp (
	.clk(clk),	// Input
	.rst_n(rst_n),	// Input
	.bootmd(bootmd),	// Input
	.fcmdl1(fcmdl1),	// Input
	.fcmdl2(fcmdl2),	// Input
	.brdy(brdy),	// Input
	.bcmdr(bcmdr),	// Input
	.bcmdw(bcmdw),	// Input
	.bcmdl(bcmdl),	// Input
	.bmst(bmst),	// Input
	.bcs_rom_n(bcs_rom_n),	// Input
	.fadr1(fadr1[15:0]),	// Input
	.fadr2(fadr2[15:0]),	// Input
	.badr(badr[15:0]),	// Input
	.bdatw(bdatw[31:0]),	// Input
	.fdat1(fdat1_rom[31:0]),	// Output
	.fdat2(fdat2_rom[31:0]),	// Output
	.bdatr(bdatr[31:0]),	// Output
	// ROM macro I/F
	.rom_dat1(rom_dat1[31:0]),	// Input
	.rom_dat2(rom_dat2[31:0]),	// Input
	.rom_we1(rom_we1[3:0]),	// Output
	.rom_adr1(rom_adr1[15:0]),	// Output
	.rom_adr2(rom_adr2[15:0]),	// Output
	.rom_datw(rom_datw[31:0])	// Output
);

// boot rom
wire	[31:0]	fdat_bt;
mcoc_boot32		rombt (
	.clk(clk),	// Input
	.rst_n(rst_n),	// Input
	.fcmdl(fcmdl1),	// Input
	.fadr(fadr1[15:0]),	// Input
	.fdat(fdat_bt[31:0])	// Output
);

// instruction rom
`ifdef		MCOC_ROM_48K
`define		MCOC_ROM_ABIT	14
`define		MCOC_ROM_SIZB	48*1024*8

`elsif		MCOC_ROM_32K
`define		MCOC_ROM_ABIT	13
`define		MCOC_ROM_SIZB	32*1024*8

`elsif		MCOC_ROM_16K
`define		MCOC_ROM_ABIT	12
`define		MCOC_ROM_SIZB	16*1024*8

`elsif		MCOC_ROM_8K
`define		MCOC_ROM_ABIT	11
`define		MCOC_ROM_SIZB	8*1024*8

`else
`define		MCOC_ROM_ABIT	10
`define		MCOC_ROM_SIZB	4*1024*8

`endif

xpm_memory_tdpram	#(
	.ADDR_WIDTH_A(`MCOC_ROM_ABIT),		// DECIMAL
	.ADDR_WIDTH_B(`MCOC_ROM_ABIT),		// DECIMAL
	.AUTO_SLEEP_TIME(0),				// DECIMAL
	.BYTE_WRITE_WIDTH_A(8),				// DECIMAL
	.BYTE_WRITE_WIDTH_B(8),				// DECIMAL
	.CASCADE_HEIGHT(0),					// DECIMAL
	.CLOCKING_MODE("common_clock"),		// String
	.ECC_MODE("no_ecc"),				// String
	.MEMORY_INIT_FILE("mcoc_irom.mem"),		// String
	.MEMORY_INIT_PARAM("0"),			// String
	.MEMORY_OPTIMIZATION("true"),		// String
	.MEMORY_PRIMITIVE("auto"),			// String
	.MEMORY_SIZE(`MCOC_ROM_SIZB),		// DECIMAL
	.MESSAGE_CONTROL(0),				// DECIMAL
	.READ_DATA_WIDTH_A(32),				// DECIMAL
	.READ_DATA_WIDTH_B(32),				// DECIMAL
	.READ_LATENCY_A(1),					// DECIMAL
	.READ_LATENCY_B(1),					// DECIMAL
	.READ_RESET_VALUE_A("0"),			// String
	.READ_RESET_VALUE_B("0"),			// String
	.RST_MODE_A("SYNC"),				// String
	.RST_MODE_B("SYNC"),				// String
	.SIM_ASSERT_CHK(0),					// DECIMAL
	.USE_EMBEDDED_CONSTRAINT(0),		// DECIMAL
	.USE_MEM_INIT(1),					// DECIMAL
	.WAKEUP_TIME("disable_sleep"),		// String
	.WRITE_DATA_WIDTH_A(32),			// DECIMAL
	.WRITE_DATA_WIDTH_B(32),			// DECIMAL
	.WRITE_MODE_A("no_change"),			// String
	.WRITE_MODE_B("no_change")			// String
)	romhm (
	.dbiterra(dbiterra_open),
	.dbiterrb(dbiterrb_open),
	.douta(rom_dat1[31:0]),
	.doutb(rom_dat2[31:0]),
	.sbiterra(sbiterra_open),
	.sbiterrb(sbiterrb_open),
	.addra(rom_adr1[`MCOC_ROM_ABIT + 1:2]),
	.addrb(rom_adr2[`MCOC_ROM_ABIT + 1:2]),
	.clka(clk),
	.clkb(clk),
	.dina(rom_datw[31:0]),
	.dinb(32'h0),
	.ena(1'b1),
	.enb(1'b1),
	.injectdbiterra(1'b0),
	.injectdbiterrb(1'b0),
	.injectsbiterra(1'b0),
	.injectsbiterrb(1'b0),
	.regcea(1'b1),
	.regceb(1'b1),
	.rsta(1'b0),
	.rstb(1'b0),
	.sleep(1'b0),
	.wea(rom_we1[3:0]),
	.web(4'h0)
);

// bus output
assign	fdat1[31:0]=(bootmd)? fdat_bt[31:0]: fdat1_rom[31:0];
assign	fdat2[31:0]=(bootmd)? 32'h0001_0001: fdat2_rom[31:0];

endmodule


module	mcoc_iram (
// mcoc115 iram
input	clk,
input	rst_n,
input	fcmdl,
input	brdy,
input	bcmdr,
input	bcmdw,
input	bcmdb,
input	bcmdl,
input	bcs_iram_n,
input	[15:0]	fadr,
input	[15:0]	badr,
input	[31:0]	bdatw,
input	[31:0]	rom_fdat,
output	[31:0]	fdat,
output	[31:0]	bdatr);


`ifdef		MCOC_ROM_48K
wire	[15:0]	fadr_top=16'hc000;
`elsif		MCOC_ROM_32K
wire	[15:0]	fadr_top=16'h8000;
`else
wire	[15:0]	fadr_top=16'h4000;
`endif

wire	[3:0]	iram_we;
wire	[15:0]	iram_fadr;
wire	[15:0]	iram_badr;
wire	[31:0]	iram_fdat;
wire	[31:0]	iram_bdatr;
wire	[31:0]	iram_bdatw;


iram_wrap32		iramwp (
	.clk(clk),	// Input
	.rst_n(rst_n),	// Input
	.fcmdl(fcmdl),	// Input
	.brdy(brdy),	// Input
	.bcmdr(bcmdr),	// Input
	.bcmdw(bcmdw),	// Input
	.bcmdb(bcmdb),	// Input
	.bcmdl(bcmdl),	// Input
	.bcs_iram_n(bcs_iram_n),	// Input
	.fadr(fadr[15:0]),	// Input
	.fadr_top(fadr_top[15:0]),	// Input
	.badr(badr[15:0]),	// Input
	.bdatw(bdatw[31:0]),	// Input
	.rom_fdat(rom_fdat[31:0]),	// Input
	.fdat(fdat[31:0]),	// Output
	.bdatr(bdatr[31:0]),	// Output
	// RAM macro I/F
	.iram_fdat(iram_fdat[31:0]),	// Input
	.iram_bdatr(iram_bdatr[31:0]),	// Input
	.iram_we(iram_we[3:0]),	// Output
	.iram_fadr(iram_fadr[15:0]),	// Output
	.iram_badr(iram_badr[15:0]),	// Output
	.iram_bdatw(iram_bdatw[31:0])	// Output
);

// instruction ram
xpm_memory_tdpram	#(
	.ADDR_WIDTH_A(10),					// DECIMAL
	.ADDR_WIDTH_B(10),					// DECIMAL
	.AUTO_SLEEP_TIME(0),				// DECIMAL
	.BYTE_WRITE_WIDTH_A(8),				// DECIMAL
	.BYTE_WRITE_WIDTH_B(8),				// DECIMAL
	.CASCADE_HEIGHT(0),					// DECIMAL
	.CLOCKING_MODE("common_clock"),		// String
	.ECC_MODE("no_ecc"),				// String
	.MEMORY_INIT_FILE("none"),			// String
	.MEMORY_INIT_PARAM("0"),			// String
	.MEMORY_OPTIMIZATION("true"),		// String
	.MEMORY_PRIMITIVE("auto"),			// String
	.MEMORY_SIZE(4*1024*8),				// DECIMAL
	.MESSAGE_CONTROL(0),				// DECIMAL
	.READ_DATA_WIDTH_A(32),				// DECIMAL
	.READ_DATA_WIDTH_B(32),				// DECIMAL
	.READ_LATENCY_A(1),					// DECIMAL
	.READ_LATENCY_B(1),					// DECIMAL
	.READ_RESET_VALUE_A("0"),			// String
	.READ_RESET_VALUE_B("0"),			// String
	.RST_MODE_A("SYNC"),				// String
	.RST_MODE_B("SYNC"),				// String
	.SIM_ASSERT_CHK(0),					// DECIMAL
	.USE_EMBEDDED_CONSTRAINT(0),		// DECIMAL
	.USE_MEM_INIT(1),					// DECIMAL
	.WAKEUP_TIME("disable_sleep"),		// String
	.WRITE_DATA_WIDTH_A(32),			// DECIMAL
	.WRITE_DATA_WIDTH_B(32),			// DECIMAL
	.WRITE_MODE_A("read_first"),		// String
	.WRITE_MODE_B("read_first")			// String
)	iramhm (
	.dbiterra(dbiterra_open),
	.dbiterrb(dbiterrb_open),
	.douta(iram_fdat[31:0]),
	.doutb(iram_bdatr[31:0]),
	.sbiterra(sbiterra_open),
	.sbiterrb(sbiterrb_open),
	.addra(iram_fadr[11:2]),
	.addrb(iram_badr[11:2]),
	.clka(clk),
	.clkb(clk),
	.dina(32'h0),
	.dinb(iram_bdatw[31:0]),
	.ena(1'b1),
	.enb(!bcs_iram_n),
	.injectdbiterra(1'b0),
	.injectdbiterrb(1'b0),
	.injectsbiterra(1'b0),
	.injectsbiterrb(1'b0),
	.regcea(1'b1),
	.regceb(1'b1),
	.rsta(1'b0),
	.rstb(1'b0),
	.sleep(1'b0),
	.wea(4'h0),
	.web(iram_we[3:0])
);

endmodule


`ifdef		MCOC_RAM_LE1K
module	mcoc_ram_le1k (
// LUT RAM unit, <= 1K byte
input	clk,
input	rst_n,
input	brdy,
input	bcmdr,
input	bcmdw,
input	bcmdb,
input	bcmdl,
input	bcs_ram0_n,
input	[15:0]	badr,
input	[31:0]	bdatw,
output	[31:0]	bdatr);


//
// RAM unit (Less than or Equal to 1K byte)
//		(c) 2023	1YEN Toru
//
//
//	2023/10/21	ver.1.04
//		corresponding to 32 bit data bus
//		change module name: tsoc_ram_le1k -> mcoc_ram_le1k
//
//	2023/09/23	ver.1.02
//		Distributed RAM macro -> general RTL
//
//	2023/07/08	ver.1.00
//		access: byte / word
//


// bus
wire	[15:0]	badr_m=badr[15:0] & (`MCOC_RAM_LE1K - 1);

// ram mat
(* ram_style = "distributed" *)
reg		[31:0]	mem[0:`MCOC_RAM_LE1K/4 - 1];

// read control
wire	ram_rd=( !bcs_ram0_n && bcmdr );
reg		ram_drv;
reg		bcmdl_r;
reg		bcmdb_r;
reg		badr1_r;
reg		[31:0]	dat_r;
always	@(posedge clk)
	begin
		if (!rst_n)
			begin
				ram_drv<=1'b0;
				bcmdl_r<=1'b0;
				bcmdb_r<=1'b0;
				badr1_r<=1'b0;
				dat_r[31:0]<=32'h0;
			end
		else if (brdy)
			begin
				ram_drv<=ram_rd;
				if (ram_rd)
					begin
						bcmdl_r<=bcmdl;
						bcmdb_r<=bcmdb;
						badr1_r<=badr_m[1];
						dat_r[31:0]<=mem[badr_m[15:2]][31:0];
					end
			end
	end
assign	bdatr[31:0]=
		(ram_drv)? (
			(bcmdl_r)?
				dat_r[31:0]:
			(!badr1_r)?
				{ 16'h0,dat_r[31:16] }:
				{ 16'h0,dat_r[15:0] }
		): 32'h0;


// write control
wire	ram_wr=( !bcs_ram0_n && bcmdw );
always	@(posedge clk)
	begin
		// write data, each byte
		if (ram_wr && (bcmdl || (!bcmdb && !badr_m[1]) ||
				(bcmdb && badr_m[1:0]==2'h0)))
			mem[badr_m[15:2]][31:24]<=(bcmdl)? bdatw[31:24]: bdatw[15:8];
		if (ram_wr && (bcmdl || (!bcmdb && !badr_m[1]) ||
				(bcmdb && badr_m[1:0]==2'h1)))
			mem[badr_m[15:2]][23:16]<=(bcmdl)? bdatw[23:16]: bdatw[7:0];
		if (ram_wr && (bcmdl || (!bcmdb && badr_m[1]) ||
				(bcmdb && badr_m[1:0]==2'h2)))
			mem[badr_m[15:2]][15:8]<=bdatw[15:8];
		if (ram_wr && (bcmdl || (!bcmdb && badr_m[1]) ||
				(bcmdb && badr_m[1:0]==2'h3)))
			mem[badr_m[15:2]][7:0]<=bdatw[7:0];
	end

endmodule
`else	//	MCOC_RAM_LE1K
module	mcoc_ram (
// mcoc115 ram 32 bit bus
input	clk,
input	rst_n,
input	brdy,
input	bcmdr,
input	bcmdw,
input	bcmdb,
input	bcmdl,
input	bcs_ram0_n,
input	bcs_ram1_n,
input	bcs_ram2_n,
input	bcs_ram3_n,
input	bcs_ram4_n,
input	bcs_eram_n,
input	[23:0]	badr,
input	[31:0]	bdatw,
output	[31:0]	bdatr);


wire	[3:0]	ram_we;
wire	[31:0]	ram_datw;
wire	[31:0]	ram_datr0;
wire	[31:0]	ram_datr1;
wire	[31:0]	ram_datr2;
wire	[31:0]	ram_datr3;
wire	[31:0]	ram_datr4;


// E-RAM enable or not
`ifdef		MCOC_ERAM
wire	ram_eram_n=bcs_eram_n;
`else	//	MCOC_ERAM
wire	ram_eram_n=1'b1;
`endif	//	MCOC_ERAM

// Extended ROM option selected
`ifdef	MCOC_ROM_48K
wire	ram_ram0_n=bcs_ram4_n;
wire	ram_ram1_n=1'b1;
wire	ram_ram2_n=1'b1;
wire	ram_ram3_n=1'b1;
wire	ram_ram4_n=1'b1;
`elsif	MCOC_ROM_32K
wire	ram_ram0_n=bcs_ram2_n;
wire	ram_ram1_n=bcs_ram3_n;
wire	ram_ram2_n=bcs_ram4_n;
wire	ram_ram3_n=1'b1;
wire	ram_ram4_n=1'b1;
`else
wire	ram_ram0_n=bcs_ram0_n;
wire	ram_ram1_n=bcs_ram1_n;
wire	ram_ram2_n=bcs_ram2_n;
wire	ram_ram3_n=bcs_ram3_n;
wire	ram_ram4_n=bcs_ram4_n;
`endif

ram_wrap32	ramwp (
	.clk(clk),	// Input
	.rst_n(rst_n),	// Input
	.brdy(brdy),	// Input
	.bcmdr(bcmdr),	// Input
	.bcmdw(bcmdw),	// Input
	.bcmdb(bcmdb),	// Input
	.bcmdl(bcmdl),	// Input
	.bcs_ram0_n(ram_ram0_n),	// Input
	.bcs_ram1_n(ram_ram1_n),	// Input
	.bcs_ram2_n(ram_ram2_n),	// Input
	.bcs_ram3_n(ram_ram3_n),	// Input
	.bcs_ram4_n(ram_ram4_n),	// Input
	.bcs_eram_n(ram_eram_n),	// Input
	.badr(badr[1:0]),	// Input
	.bdatw(bdatw[31:0]),	// Input
	.bdatr(bdatr[31:0]),	// Output
	// RAM macro I/F
	.ram_datr0(ram_datr0[31:0]),	// Input
	.ram_datr1(ram_datr1[31:0]),	// Input
	.ram_datr2(ram_datr2[31:0]),	// Input
	.ram_datr3(ram_datr3[31:0]),	// Input
	.ram_datr4(ram_datr4[31:0]),	// Input
	.ram_ce(ram_ce),	// Output
	.ram_we(ram_we[3:0]),	// Output
	.ram_datw(ram_datw[31:0])	// Output
);


`ifdef		MCOC_RAM_4K
`define		MCOC_ERAM	4
`endif	//	MCOC_RAM_4K


`ifdef		MCOC_ERAM
`define		MCOC_ERAM_ABIT	$clog2 (`MCOC_ERAM*1024/4)

xpm_memory_spram	#(
	.ADDR_WIDTH_A(`MCOC_ERAM_ABIT),		// DECIMAL
	.AUTO_SLEEP_TIME(0),				// DECIMAL
	.BYTE_WRITE_WIDTH_A(8),				// DECIMAL
	.CASCADE_HEIGHT(0),					// DECIMAL
	.ECC_MODE("no_ecc"),				// String
	.MEMORY_INIT_FILE("none"),			// String
	.MEMORY_INIT_PARAM("0"),			// String
	.MEMORY_OPTIMIZATION("true"),		// String
	.MEMORY_PRIMITIVE("auto"),			// String
	.MEMORY_SIZE(`MCOC_ERAM*1024*8),	// DECIMAL
	.MESSAGE_CONTROL(0),				// DECIMAL
	.READ_DATA_WIDTH_A(32),				// DECIMAL
	.READ_LATENCY_A(1),					// DECIMAL
	.READ_RESET_VALUE_A("0"),			// String
	.RST_MODE_A("SYNC"),				// String
	.SIM_ASSERT_CHK(0),					// DECIMAL
	.USE_MEM_INIT(1),					// DECIMAL
	.WAKEUP_TIME("disable_sleep"),		// String
	.WRITE_DATA_WIDTH_A(32),			// DECIMAL
	.WRITE_MODE_A("no_change")			// String
)	ramhm (
	.dbiterra(dbiterra_open),
	.douta(ram_datr0[31:0]),
	.sbiterra(sbiterra_open),
	.addra(badr[`MCOC_ERAM_ABIT + 1:2]),
	.clka(clk),
	.dina(ram_datw[31:0]),
	.ena(ram_ce),
	.injectdbiterra(1'b0),
	.injectsbiterra(1'b0),
	.regcea(1'b1),
	.rsta(1'b0),
	.sleep(1'b0),
	.wea(ram_we[3:0])
);
assign	ram_datr1[31:0]=ram_datr0[31:0];
assign	ram_datr2[31:0]=ram_datr0[31:0];
assign	ram_datr3[31:0]=ram_datr0[31:0];
assign	ram_datr4[31:0]=ram_datr0[31:0];

`else	//	MCOC_ERAM

`ifdef		MCOC_RAM_40K
`define		MCOC_RAM_32K
`define		MCOC_RAM_24K
`define		MCOC_RAM_16K

xpm_memory_spram	#(
	.ADDR_WIDTH_A(11),					// DECIMAL
	.AUTO_SLEEP_TIME(0),				// DECIMAL
	.BYTE_WRITE_WIDTH_A(8),				// DECIMAL
	.CASCADE_HEIGHT(0),					// DECIMAL
	.ECC_MODE("no_ecc"),				// String
	.MEMORY_INIT_FILE("none"),			// String
	.MEMORY_INIT_PARAM("0"),			// String
	.MEMORY_OPTIMIZATION("true"),		// String
	.MEMORY_PRIMITIVE("auto"),			// String
	.MEMORY_SIZE(8*1024*8),				// DECIMAL
	.MESSAGE_CONTROL(0),				// DECIMAL
	.READ_DATA_WIDTH_A(32),				// DECIMAL
	.READ_LATENCY_A(1),					// DECIMAL
	.READ_RESET_VALUE_A("0"),			// String
	.RST_MODE_A("SYNC"),				// String
	.SIM_ASSERT_CHK(0),					// DECIMAL
	.USE_MEM_INIT(1),					// DECIMAL
	.WAKEUP_TIME("disable_sleep"),		// String
	.WRITE_DATA_WIDTH_A(32),			// DECIMAL
	.WRITE_MODE_A("no_change")			// String
)	ramhm4 (
	.dbiterra(dbiterra4_open),
	.douta(ram_datr4[31:0]),
	.sbiterra(sbiterra4_open),
	.addra(badr[12:2]),
	.clka(clk),
	.dina(ram_datw[31:0]),
	.ena(ram_ce && !ram_ram4_n),
	.injectdbiterra(1'b0),
	.injectsbiterra(1'b0),
	.regcea(1'b1),
	.rsta(1'b0),
	.sleep(1'b0),
	.wea(ram_we[3:0])
);
`else	//	MCOC_RAM_40K
assign	ram_datr4[31:0]=32'h0;
`endif	//	MCOC_RAM_40K

`ifdef		MCOC_RAM_32K
`define		MCOC_RAM_24K
`define		MCOC_RAM_16K

xpm_memory_spram	#(
	.ADDR_WIDTH_A(11),					// DECIMAL
	.AUTO_SLEEP_TIME(0),				// DECIMAL
	.BYTE_WRITE_WIDTH_A(8),				// DECIMAL
	.CASCADE_HEIGHT(0),					// DECIMAL
	.ECC_MODE("no_ecc"),				// String
	.MEMORY_INIT_FILE("none"),			// String
	.MEMORY_INIT_PARAM("0"),			// String
	.MEMORY_OPTIMIZATION("true"),		// String
	.MEMORY_PRIMITIVE("auto"),			// String
	.MEMORY_SIZE(8*1024*8),				// DECIMAL
	.MESSAGE_CONTROL(0),				// DECIMAL
	.READ_DATA_WIDTH_A(32),				// DECIMAL
	.READ_LATENCY_A(1),					// DECIMAL
	.READ_RESET_VALUE_A("0"),			// String
	.RST_MODE_A("SYNC"),				// String
	.SIM_ASSERT_CHK(0),					// DECIMAL
	.USE_MEM_INIT(1),					// DECIMAL
	.WAKEUP_TIME("disable_sleep"),		// String
	.WRITE_DATA_WIDTH_A(32),			// DECIMAL
	.WRITE_MODE_A("no_change")			// String
)	ramhm3 (
	.dbiterra(dbiterra3_open),
	.douta(ram_datr3[31:0]),
	.sbiterra(sbiterra3_open),
	.addra(badr[12:2]),
	.clka(clk),
	.dina(ram_datw[31:0]),
	.ena(ram_ce && !ram_ram3_n),
	.injectdbiterra(1'b0),
	.injectsbiterra(1'b0),
	.regcea(1'b1),
	.rsta(1'b0),
	.sleep(1'b0),
	.wea(ram_we[3:0])
);
`else	//	MCOC_RAM_32K
assign	ram_datr3[31:0]=32'h0;
`endif	//	MCOC_RAM_32K

`ifdef		MCOC_RAM_24K
`define		MCOC_RAM_16K

xpm_memory_spram	#(
	.ADDR_WIDTH_A(11),					// DECIMAL
	.AUTO_SLEEP_TIME(0),				// DECIMAL
	.BYTE_WRITE_WIDTH_A(8),				// DECIMAL
	.CASCADE_HEIGHT(0),					// DECIMAL
	.ECC_MODE("no_ecc"),				// String
	.MEMORY_INIT_FILE("none"),			// String
	.MEMORY_INIT_PARAM("0"),			// String
	.MEMORY_OPTIMIZATION("true"),		// String
	.MEMORY_PRIMITIVE("auto"),			// String
	.MEMORY_SIZE(8*1024*8),				// DECIMAL
	.MESSAGE_CONTROL(0),				// DECIMAL
	.READ_DATA_WIDTH_A(32),				// DECIMAL
	.READ_LATENCY_A(1),					// DECIMAL
	.READ_RESET_VALUE_A("0"),			// String
	.RST_MODE_A("SYNC"),				// String
	.SIM_ASSERT_CHK(0),					// DECIMAL
	.USE_MEM_INIT(1),					// DECIMAL
	.WAKEUP_TIME("disable_sleep"),		// String
	.WRITE_DATA_WIDTH_A(32),			// DECIMAL
	.WRITE_MODE_A("no_change")			// String
)	ramhm2 (
	.dbiterra(dbiterra2_open),
	.douta(ram_datr2[31:0]),
	.sbiterra(sbiterra2_open),
	.addra(badr[12:2]),
	.clka(clk),
	.dina(ram_datw[31:0]),
	.ena(ram_ce && !ram_ram2_n),
	.injectdbiterra(1'b0),
	.injectsbiterra(1'b0),
	.regcea(1'b1),
	.rsta(1'b0),
	.sleep(1'b0),
	.wea(ram_we[3:0])
);
`else	//	MCOC_RAM_24K
assign	ram_datr2[31:0]=32'h0;
`endif	//	MCOC_RAM_24K

`ifdef		MCOC_RAM_16K
xpm_memory_spram	#(
	.ADDR_WIDTH_A(11),					// DECIMAL
	.AUTO_SLEEP_TIME(0),				// DECIMAL
	.BYTE_WRITE_WIDTH_A(8),				// DECIMAL
	.CASCADE_HEIGHT(0),					// DECIMAL
	.ECC_MODE("no_ecc"),				// String
	.MEMORY_INIT_FILE("none"),			// String
	.MEMORY_INIT_PARAM("0"),			// String
	.MEMORY_OPTIMIZATION("true"),		// String
	.MEMORY_PRIMITIVE("auto"),			// String
	.MEMORY_SIZE(8*1024*8),				// DECIMAL
	.MESSAGE_CONTROL(0),				// DECIMAL
	.READ_DATA_WIDTH_A(32),				// DECIMAL
	.READ_LATENCY_A(1),					// DECIMAL
	.READ_RESET_VALUE_A("0"),			// String
	.RST_MODE_A("SYNC"),				// String
	.SIM_ASSERT_CHK(0),					// DECIMAL
	.USE_MEM_INIT(1),					// DECIMAL
	.WAKEUP_TIME("disable_sleep"),		// String
	.WRITE_DATA_WIDTH_A(32),			// DECIMAL
	.WRITE_MODE_A("no_change")			// String
)	ramhm1 (
	.dbiterra(dbiterra1_open),
	.douta(ram_datr1[31:0]),
	.sbiterra(sbiterra1_open),
	.addra(badr[12:2]),
	.clka(clk),
	.dina(ram_datw[31:0]),
	.ena(ram_ce && !ram_ram1_n),
	.injectdbiterra(1'b0),
	.injectsbiterra(1'b0),
	.regcea(1'b1),
	.rsta(1'b0),
	.sleep(1'b0),
	.wea(ram_we[3:0])
);
`else	//	MCOC_RAM_16K
assign	ram_datr1[31:0]=32'h0;
`endif	//	MCOC_RAM_16K

xpm_memory_spram	#(
	.ADDR_WIDTH_A(11),					// DECIMAL
	.AUTO_SLEEP_TIME(0),				// DECIMAL
	.BYTE_WRITE_WIDTH_A(8),				// DECIMAL
	.CASCADE_HEIGHT(0),					// DECIMAL
	.ECC_MODE("no_ecc"),				// String
	.MEMORY_INIT_FILE("none"),			// String
	.MEMORY_INIT_PARAM("0"),			// String
	.MEMORY_OPTIMIZATION("true"),		// String
	.MEMORY_PRIMITIVE("auto"),			// String
	.MEMORY_SIZE(8*1024*8),				// DECIMAL
	.MESSAGE_CONTROL(0),				// DECIMAL
	.READ_DATA_WIDTH_A(32),				// DECIMAL
	.READ_LATENCY_A(1),					// DECIMAL
	.READ_RESET_VALUE_A("0"),			// String
	.RST_MODE_A("SYNC"),				// String
	.SIM_ASSERT_CHK(0),					// DECIMAL
	.USE_MEM_INIT(1),					// DECIMAL
	.WAKEUP_TIME("disable_sleep"),		// String
	.WRITE_DATA_WIDTH_A(32),			// DECIMAL
	.WRITE_MODE_A("no_change")			// String
)	ramhm0 (
	.dbiterra(dbiterra0_open),
	.douta(ram_datr0[31:0]),
	.sbiterra(sbiterra0_open),
	.addra(badr[12:2]),
	.clka(clk),
	.dina(ram_datw[31:0]),
	.ena(ram_ce && !ram_ram0_n),
	.injectdbiterra(1'b0),
	.injectsbiterra(1'b0),
	.regcea(1'b1),
	.rsta(1'b0),
	.sleep(1'b0),
	.wea(ram_we[3:0])
);

`endif	//	MCOC_ERAM

endmodule
`endif	//	MCOC_RAM_LE1K


module	mcoc_adrdec (
// MCOC address decoder
input	bmst,
input	[4:0]	smph_ram1_n,
input	[4:0]	smph_ram2_n,
input	[23:0]	badr,
input	[23:0]	badr1,
input	[23:0]	badr2,
output	bcs_rom_n,
output	bcs_iram_n,
output	bcs_ram0_n,
output	bcs_ram1_n,
output	bcs_ram2_n,
output	bcs_ram3_n,
output	bcs_ram4_n,
output	bcs_iou_n,
output	bcs_eram_n,
output	bcs_sram_n,
output	bcs_sdram_n,
output	bcs_acc_2,
output	bcs_acc_l1,
output	bcs_acc_l2,
output	bcs_idrg_n,
output	bcs_sytm_n,
output	bcs_port_n,
output	bcs_uart_n,
output	bcs_tim0_n,
output	bcs_tim1_n,
output	bcs_intc_n,
output	bcs_loga_n,
output	bcs_smph_n,
output	bcs_icff_n,
output	bcs_stws_n,
output	bcs_fnjp_n,
output	bcs_uar1_n,
output	bcs_por1_n,
output	bcs_adcu_n,
output	bcs_sdrc_n,
output	bcs_unsj_n,
output	bcs_dist_n,
output	bcs_rtcu_n,
output	bcs_int2_n,
output	bcs_dacu_n,
output	bcs_iome_n,
output	bcs_tled_n,
output	bcs_adcx_n,
output	bcs_cm76_n,
output	bcs_stft_n);


//
//	MCOC address decoder
//		(c) 2023	1YEN Toru
//
//
//	2024/12/14	ver.1.12
//		add: bcs_stft_n; STFT61 unit, SPI-TFT controller
//
//	2024/09/21	ver.1.10
//		add: compile option MCOC_ROM_32K, MCOC_ROM_48K
//
//	2024/06/15	ver.1.08
//		add: bcs_cm76_n; CAM7670 unit, OV7670 camera I/F
//
//	2024/01/20	ver.1.06
//		add: bcs_adcx_n; ADCX122 unit, XADC on the Xilinx Artix-7 FPGA chip
//
//	2023/11/18	ver.1.04
//		add: bcs_eram_n; Extended RAM area for the Xilinx Artix-7 FPGA chip
//		add: bcs_sram_n; External SRAM area for the Cmod A7 FPGA board
//
//	2023/10/21	ver.1.02
//		change: I-RAM to 32 bit access area
//
//	2023/09/23	ver.1.00
//		separate bus state controller and address decoder.
//


// area
wire	bcs_extadr=(badr[23:16]!=8'h0);
`ifdef		MCOC_ROM_48K
assign	bcs_rom_n=(!bcs_extadr && badr[15:0]<16'hc000)? 1'b0: 1'b1;
assign	bcs_iram_n=(!bcs_extadr &&
			16'hc000<=badr[15:0] && badr[15:0]<16'hd000)? 1'b0: 1'b1;
wire	bcs_ram_n=(!bcs_extadr &&
			16'hd000<=badr[15:0] && badr[15:0]<16'hf000)? 1'b0: 1'b1;
`elsif		MCOC_ROM_32K
assign	bcs_rom_n=(!bcs_extadr && badr[15:0]<16'h8000)? 1'b0: 1'b1;
assign	bcs_iram_n=(!bcs_extadr &&
			16'h8000<=badr[15:0] && badr[15:0]<16'h9000)? 1'b0: 1'b1;
wire	bcs_ram_n=(!bcs_extadr &&
			16'h9000<=badr[15:0] && badr[15:0]<16'hf000)? 1'b0: 1'b1;
`else
assign	bcs_rom_n=(!bcs_extadr && badr[15:0]<16'h4000)? 1'b0: 1'b1;
assign	bcs_iram_n=(!bcs_extadr &&
			16'h4000<=badr[15:0] && badr[15:0]<16'h5000)? 1'b0: 1'b1;
wire	bcs_ram_n=(!bcs_extadr &&
			16'h5000<=badr[15:0] && badr[15:0]<16'hf000)? 1'b0: 1'b1;
`endif
assign	bcs_iou_n=(!bcs_extadr && 16'hf000<=badr[15:0])? 1'b0: 1'b1;
assign	bcs_eram_n=((badr[23:16] & 8'hf8)==8'h08)? 1'b0: 1'b1;
assign	bcs_sram_n=((badr[23:16] & 8'hf8)==8'h10)? 1'b0: 1'b1;
assign	bcs_sdram_n=(badr[23])? 1'b0: 1'b1;

// access
assign	bcs_acc_2=(!bcs_extadr && 16'hfff0<=badr[15:0])? 1'b1: 1'b0;
wire	bcs_acc_l1_16a=(badr1[23:0]<24'h00_f000)? 1'b1: 1'b0;
wire	bcs_acc_l2_16a=(badr2[23:0]<24'h00_f000)? 1'b1: 1'b0;
wire	bcs_acc_l1_24a=(
			(badr1[23:16] & 8'hf8)==8'h08 ||
			(badr1[23:16] & 8'hf8)==8'h10)? 1'b1: 1'b0;
wire	bcs_acc_l2_24a=(
			(badr2[23:16] & 8'hf8)==8'h08 ||
			(badr2[23:16] & 8'hf8)==8'h10)? 1'b1: 1'b0;
assign	bcs_acc_l1=bcs_acc_l1_16a | bcs_acc_l1_24a;
assign	bcs_acc_l2=bcs_acc_l2_16a | bcs_acc_l2_24a;

// ram, each mat
wire	bsm_ram0_n=bcs_ram_n | ((bmst==1'b0)? smph_ram1_n[0]: smph_ram2_n[0]);
wire	bsm_ram1_n=bcs_ram_n | ((bmst==1'b0)? smph_ram1_n[1]: smph_ram2_n[1]);
wire	bsm_ram2_n=bcs_ram_n | ((bmst==1'b0)? smph_ram1_n[2]: smph_ram2_n[2]);
wire	bsm_ram3_n=bcs_ram_n | ((bmst==1'b0)? smph_ram1_n[3]: smph_ram2_n[3]);
wire	bsm_ram4_n=bcs_ram_n | ((bmst==1'b0)? smph_ram1_n[4]: smph_ram2_n[4]);
assign	bcs_ram0_n=(!bsm_ram0_n &&
			(badr[15:12]==4'h5 || badr[15:12]==4'h6))? 1'b0: 1'b1;
assign	bcs_ram1_n=(!bsm_ram1_n &&
			(badr[15:12]==4'h7 || badr[15:12]==4'h8))? 1'b0: 1'b1;
assign	bcs_ram2_n=(!bsm_ram2_n &&
			(badr[15:12]==4'h9 || badr[15:12]==4'ha))? 1'b0: 1'b1;
assign	bcs_ram3_n=(!bsm_ram3_n &&
			(badr[15:12]==4'hb || badr[15:12]==4'hc))? 1'b0: 1'b1;
assign	bcs_ram4_n=(!bsm_ram4_n &&
			(badr[15:12]==4'hd || badr[15:12]==4'he))? 1'b0: 1'b1;

// i/o unit
assign	bcs_idrg_n=(!bcs_iou_n && badr[11:4]==8'h00)? 1'b0: 1'b1;
assign	bcs_sytm_n=(!bcs_iou_n && badr[11:4]==8'h01)? 1'b0: 1'b1;
assign	bcs_port_n=(!bcs_iou_n && badr[11:4]==8'h02)? 1'b0: 1'b1;
assign	bcs_uart_n=(!bcs_iou_n && badr[11:4]==8'h03)? 1'b0: 1'b1;
assign	bcs_tim0_n=(!bcs_iou_n && badr[11:4]==8'h04)? 1'b0: 1'b1;
assign	bcs_tim1_n=(!bcs_iou_n && badr[11:4]==8'h05)? 1'b0: 1'b1;
assign	bcs_intc_n=(!bcs_iou_n && badr[11:4]==8'h06)? 1'b0: 1'b1;
assign	bcs_loga_n=(!bcs_iou_n && badr[11:4]==8'h07)? 1'b0: 1'b1;
assign	bcs_smph_n=(!bcs_iou_n && badr[11:4]==8'h08)? 1'b0: 1'b1;
assign	bcs_icff_n=(!bcs_iou_n && badr[11:4]==8'h09)? 1'b0: 1'b1;
assign	bcs_stws_n=(!bcs_iou_n && badr[11:4]==8'h0a)? 1'b0: 1'b1;
assign	bcs_fnjp_n=(!bcs_iou_n && badr[11:4]==8'h0b)? 1'b0: 1'b1;
assign	bcs_uar1_n=(!bcs_iou_n && badr[11:4]==8'h0c)? 1'b0: 1'b1;
assign	bcs_por1_n=(!bcs_iou_n && badr[11:4]==8'h0d)? 1'b0: 1'b1;
assign	bcs_adcu_n=(!bcs_iou_n && badr[11:4]==8'h0e)? 1'b0: 1'b1;
assign	bcs_sdrc_n=(!bcs_iou_n && badr[11:4]==8'h0f)? 1'b0: 1'b1;
assign	bcs_unsj_n=(!bcs_iou_n && badr[11:4]==8'h10)? 1'b0: 1'b1;
assign	bcs_dist_n=(!bcs_iou_n && badr[11:4]==8'h11)? 1'b0: 1'b1;
assign	bcs_rtcu_n=(!bcs_iou_n && badr[11:4]==8'h12)? 1'b0: 1'b1;
assign	bcs_int2_n=(!bcs_iou_n && badr[11:4]==8'h13)? 1'b0: 1'b1;
assign	bcs_dacu_n=(!bcs_iou_n && badr[11:4]==8'h14)? 1'b0: 1'b1;
assign	bcs_iome_n=(!bcs_iou_n && badr[11:4]==8'h15)? 1'b0: 1'b1;
assign	bcs_tled_n=(!bcs_iou_n && badr[11:4]==8'h16)? 1'b0: 1'b1;
assign	bcs_adcx_n=(!bcs_iou_n && badr[11:4]==8'h17)? 1'b0: 1'b1;
assign	bcs_cm76_n=(!bcs_iou_n && badr[11:4]==8'h18)? 1'b0: 1'b1;
assign	bcs_stft_n=(!bcs_iou_n && badr[11:4]==8'h19)? 1'b0: 1'b1;


endmodule


module	mcoc_idrg (
// ID register
input	clk,
input	rst_n,
input	brdy,
input	bcmdr,
input	bcs_idrg_n,
input	[3:0]	badr,
output	[15:0]	bdatr);


//
//	ID register
//		(c) 2021	1YEN Toru
//
//
//	2021/08/14	ver.1.02
//		new register: idrgedit (edition code, ASCII 2 characters)
//
//	2021/03/20	ver.1.00
//


parameter	[15:0]	idcode=16'h0000;
parameter	[15:0]	versno=16'h0000;
parameter	[15:0]	fcpuhz=16'd0;
parameter	[15:0]	edcode=16'h0000;
parameter	[15:0]	romtop=16'h0;
parameter	[15:0]	romsiz=16'd0;
parameter	[15:0]	ramtop=16'h0;
parameter	[15:0]	ramsiz=16'd0;


// register read cycle
reg		rd_idcode;
reg		rd_versno;
reg		rd_fcpuhz;
reg		rd_edcode;
reg		rd_romtop;
reg		rd_romsiz;
reg		rd_ramtop;
reg		rd_ramsiz;
always	@(posedge clk)
	begin
		if (!rst_n)
			begin
				rd_idcode<=1'b0;
				rd_versno<=1'b0;
				rd_fcpuhz<=1'b0;
				rd_edcode<=1'b0;
				rd_romtop<=1'b0;
				rd_romsiz<=1'b0;
				rd_ramtop<=1'b0;
				rd_ramsiz<=1'b0;
			end
		else if (brdy)
			begin
				rd_idcode<=( bcmdr && !bcs_idrg_n && badr[3:0]==4'h0 );
				rd_versno<=( bcmdr && !bcs_idrg_n && badr[3:0]==4'h2 );
				rd_fcpuhz<=( bcmdr && !bcs_idrg_n && badr[3:0]==4'h4 );
				rd_edcode<=( bcmdr && !bcs_idrg_n && badr[3:0]==4'h6 );
				rd_romtop<=( bcmdr && !bcs_idrg_n && badr[3:0]==4'h8 );
				rd_romsiz<=( bcmdr && !bcs_idrg_n && badr[3:0]==4'ha );
				rd_ramtop<=( bcmdr && !bcs_idrg_n && badr[3:0]==4'hc );
				rd_ramsiz<=( bcmdr && !bcs_idrg_n && badr[3:0]==4'he );
			end
	end

// register read
assign	bdatr[15:0]=
		(rd_idcode)? idcode[15:0]:
		(rd_versno)? versno[15:0]:
		(rd_fcpuhz)? fcpuhz[15:0]:
		(rd_edcode)? edcode[15:0]:
		(rd_romtop)? romtop[15:0]:
		(rd_romsiz)? romsiz[15:0]:
		(rd_ramtop)? ramtop[15:0]:
		(rd_ramsiz)? ramsiz[15:0]: 16'h0000;

endmodule


module	mcoc_uart (
// mcoc115 uart
input	clk,
input	rst_n,
input	simumd,
input	uart_rxd,
input	uart_cts,
input	brdy,
input	bcs_uart_n,
input	bcmdr,
input	bcmdw,
input	[3:0]	badr,
input	[15:0]	bdatw,
output	uart_txd,
output	uart_rts,
output	[15:0]	bdatr);


wire	[7:0]	urxf_dati;
wire	[7:0]	urxf_dato;

uart8n1		uart (
	.clk(clk),	// Input
	.rst_n(rst_n),	// Input
	.simumd(simumd),	// Input
	.uart_rxd(uart_rxd),	// Input
	.uart_cts(uart_cts),	// Input
	.bcs_uart_n(bcs_uart_n),	// Input
	.brdy(brdy),	// Input
	.bcmdr(bcmdr),	// Input
	.bcmdw(bcmdw),	// Input
	.badr(badr[3:0]),	// Input
	.bdatw(bdatw[15:0]),	// Input
	.uart_txd(uart_txd),	// Output
	.uart_rts(uart_rts),	// Output
	.uart_brdr(uart_brdr_open),	// Output
	.bdatr(bdatr[15:0]),	// Output
	// FIFO macro I/F
	.urxf_empty(urxf_empty),	// Input
	.urxf_aempty(urxf_aempty),	// Input
	.urxf_full(urxf_full),	// Input
	.urxf_afull(urxf_afull),	// Input
	.urxf_dato(urxf_dato[7:0]),	// Input
	.urxf_read(urxf_read),	// Output
	.urxf_frst(urxf_frst),	// Output
	.urxf_write(urxf_write),	// Output
	.urxf_dati(urxf_dati[7:0])	// Output
);

`ifdef		MCOC_UART_FIFO_SIZE

xpm_fifo_sync	#(
	.DOUT_RESET_VALUE("0"),				// String
	.ECC_MODE("no_ecc"),				// String
	.FIFO_MEMORY_TYPE("auto"),			// String
	.FIFO_READ_LATENCY(1),				// DECIMAL
	.FIFO_WRITE_DEPTH(`MCOC_UART_FIFO_SIZE),	// DECIMAL
	.FULL_RESET_VALUE(0),				// DECIMAL
	.PROG_EMPTY_THRESH(`MCOC_UART_FIFO_SIZE/4),		// DECIMAL
	.PROG_FULL_THRESH(`MCOC_UART_FIFO_SIZE*3/4),	// DECIMAL
	.RD_DATA_COUNT_WIDTH(1),			// DECIMAL
	.READ_DATA_WIDTH(8),				// DECIMAL
	.READ_MODE("std"),					// String
	.SIM_ASSERT_CHK(0),					// DECIMAL
	.USE_ADV_FEATURES("0707"),			// String
	.WAKEUP_TIME(0),					// DECIMAL
	.WRITE_DATA_WIDTH(8),				// DECIMAL
	.WR_DATA_COUNT_WIDTH(1)				// DECIMAL
)	fifo (
	.almost_empty(almost_empty_open),
	.almost_full(almost_full_open),
	.data_valid(data_valid_open),
	.dbiterr(dbiterr_open),
	.dout(urxf_dato[7:0]),
	.empty(urxf_empty),
	.full(urxf_full),
	.overflow(overflow_open),
	.prog_empty(urxf_aempty),
	.prog_full(urxf_afull),
	.rd_data_count(rd_data_count_open),
	.rd_rst_busy(rd_rst_busy_open),
	.sbiterr(sbiterr_open),
	.underflow(underflow_open),
	.wr_ack(wr_ack_open),
	.wr_data_count(wr_data_count_open),
	.wr_rst_busy(wr_rst_busy_open),
	.din(urxf_dati[7:0]),
	.injectdbiterr(1'b0),
	.injectsbiterr(1'b0),
	.rd_en(urxf_read),
	.rst(urxf_frst),
	.sleep(1'b0),
	.wr_clk(clk),
	.wr_en(urxf_write)
);

`else	//	MCOC_UART_FIFO_SIZE

fifo8s64	fifo (
	.clk_wr(clk),	// Input
	.clk_rd(clk),	// Input
	.rst_wr_n(~urxf_frst),	// Input
	.wr_n(~urxf_write),	// Input
	.rd_n(~urxf_read),	// Input
	.dat_wr(urxf_dati[7:0]),	// Input
	.full_wr(urxf_full),	// Output
	.full_wr_adv(urxf_afull),	// Output
	.empty_rd(urxf_empty),	// Output
	.empty_rd_adv(urxf_aempty),	// Output
	.dat_rd(urxf_dato[7:0])	// Output
);

`endif	//	MCOC_UART_FIFO_SIZE

endmodule


`ifdef		MCOC_NO_LOGA
`else	//	MCOC_NO_LOGA
module	mcoc_loga (
// Logic analyzer unit top module
input	clk,
input	rst_n,
input	bcs_loga_n,
input	brdy,
input	bcmdr,
input	bcmdw,
input	[15:0]	badr,
input	[15:0]	bdatw,
input	[7:0]	loga_dch,
output	[15:0]	bdatr);


wire	[7:0]	ffdt_di;
wire	[7:0]	ffdt_do;
wire	[15:0]	fftk_di;
wire	[15:0]	fftk_do;


loga8ch		loga (
	.clk(clk),	// Input
	.rst_n(rst_n),	// Input
	.bcs_loga_n(bcs_loga_n),	// Input
	.brdy(brdy),	// Input
	.bcmdr(bcmdr),	// Input
	.bcmdw(bcmdw),	// Input
	.badr(badr[3:0]),	// Input
	.bdatw(bdatw[15:0]),	// Input
	.loga_dch(loga_dch[7:0]),	// Input
	.lctl_laer(lctl_laer),	// Output
	.bdatr(bdatr[15:0]),	// Output
	// FIFO macro I/F
	.ffdt_empty(ffdt_empty),	// Input
	.ffdt_full(ffdt_full),	// Input
	.fftk_empty(fftk_empty),	// Input
	.fftk_full(fftk_full),	// Input
	.ffdt_do(ffdt_do[7:0]),	// Input
	.fftk_do(fftk_do[15:0]),	// Input
	.ffdt_rst(ffdt_rst),	// Output
	.ffdt_re(ffdt_re),	// Output
	.ffdt_we(ffdt_we),	// Output
	.fftk_rst(fftk_rst),	// Output
	.fftk_re(fftk_re),	// Output
	.fftk_we(fftk_we),	// Output
	.ffdt_di(ffdt_di[7:0]),	// Output
	.fftk_di(fftk_di[15:0])	// Output
);

loga_fifo_tck	tfifo (
	.clk(clk),	// Input
	.di(fftk_di[15:0]),	// Input
	.re(fftk_re),	// Input
	.rst(fftk_rst),	// Input
	.we(fftk_we),	// Input
	.do(fftk_do[15:0]),	// Output
	.empty_flag(fftk_empty),	// Output
	.full_flag(fftk_full)	// Output
);

loga_fifo_dat	dfifo (
	.clk(clk),	// Input
	.di(ffdt_di[7:0]),	// Input
	.re(ffdt_re),	// Input
	.rst(ffdt_rst),	// Input
	.we(ffdt_we),	// Input
	.do(ffdt_do[7:0]),	// Output
	.empty_flag(ffdt_empty),	// Output
	.full_flag(ffdt_full)	// Output
);

endmodule
`endif	//	MCOC_NO_LOGA


`ifdef		MCOC_NO_ICFF
`else	//	MCOC_NO_ICFF
module	mcoc_icff (
// Inter CPU FIFO Unit
input	clk,
input	rst_n,
input	brdy,
input	bcmdr,
input	bcmdw,
input	bmst,
input	bcs_icff_n,
input	[3:0]	badr,
input	[15:0]	bdatw,
output	icff_frar1,
output	icff_ftar1,
output	icff_frar2,
output	icff_ftar2,
output	[15:0]	bdatr);


wire	[15:0]	icff_dato12;
wire	[15:0]	icff_dato21;
wire	[15:0]	icff_dati12;
wire	[15:0]	icff_dati21;


icff16		icff (
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
	.bdatr(bdatr[15:0]),	// Output
	// FIFO macro I/F
	.icff_full12(icff_full12),	// Input
	.icff_empt12(icff_empt12),	// Input
	.icff_full21(icff_full21),	// Input
	.icff_empt21(icff_empt21),	// Input
	.icff_dato12(icff_dato12[15:0]),	// Input
	.icff_dato21(icff_dato21[15:0]),	// Input
	.icff_rst12(icff_rst12),	// Output
	.icff_rst21(icff_rst21),	// Output
	.icff_we12(icff_we12),	// Output
	.icff_re12(icff_re12),	// Output
	.icff_we21(icff_we21),	// Output
	.icff_re21(icff_re21),	// Output
	.icff_dati12(icff_dati12[15:0]),	// Output
	.icff_dati21(icff_dati21[15:0])	// Output
);

fifo16s64	icff_fifo12 (
	.clk_wr(clk),	// Input
	.clk_rd(clk),	// Input
	.rst_wr_n(~icff_rst12),	// Input
	.wr_n(~icff_we12),	// Input
	.rd_n(~icff_re12),	// Input
	.dat_wr(icff_dati12[15:0]),	// Input
	.full_wr(icff_full12),	// Output
	.full_wr_adv(full_wr_adv12_open),	// Output
	.empty_rd(icff_empt12),	// Output
	.empty_rd_adv(empty_rd_adv12_open),	// Output
	.dat_rd(icff_dato12[15:0])	// Output
);

fifo16s64	icff_fifo21 (
	.clk_wr(clk),	// Input
	.clk_rd(clk),	// Input
	.rst_wr_n(~icff_rst21),	// Input
	.wr_n(~icff_we21),	// Input
	.rd_n(~icff_re21),	// Input
	.dat_wr(icff_dati21[15:0]),	// Input
	.full_wr(icff_full21),	// Output
	.full_wr_adv(full_wr_adv21_open),	// Output
	.empty_rd(icff_empt21),	// Output
	.empty_rd_adv(empty_rd_adv21_open),	// Output
	.dat_rd(icff_dato21[15:0])	// Output
);

endmodule
`endif	//	NO_ICFF


`ifdef		MCOC_NO_STWS
`else	//	MCOC_NO_STWS
module	mcoc_stwser (
// Synchronous Two Wire Serial Unit
input	clk,
input	rst_n,
input	brdy,
input	bcmdr,
input	bcmdw,
input	bcs_stws_n,
input	stws_scl_i,
input	stws_sda_i,
input	[3:0]	badr,
input	[15:0]	bdatw,
output	stws_scl_d,
output	stws_sda_d,
output	stws_mter,
output	stws_mrar,
output	stws_star,
output	stws_srar,
output	[15:0]	bdatr);


wire	[15:0]	bdatr_mst;
wire	[15:0]	bdatr_slv;
assign	bdatr[15:0]=bdatr_mst[15:0] | bdatr_slv[15:0];


// two wire serial bus line
assign	stws_scl_d=stwm_scl_o&stws_scl_o;
assign	stws_sda_d=stwm_sda_o&stws_sda_o;


stwmst	mst (
	.clk(clk),	// Input
	.rst_n(rst_n),	// Input
	.stws_scl_i(stws_scl_i),	// Input
	.stws_sda_i(stws_sda_i),	// Input
	.bcs_stws_n(bcs_stws_n),	// Input
	.brdy(brdy),	// Input
	.bcmdr(bcmdr),	// Input
	.bcmdw(bcmdw),	// Input
	.badr(badr[3:0]),	// Input
	.bdatw(bdatw[15:0]),	// Input
	.stwm_scl_o(stwm_scl_o),	// Output
	.stwm_sda_o(stwm_sda_o),	// Output
	.stws_mter(stws_mter),	// Output
	.stws_mrar(stws_mrar),	// Output
	.bdatr(bdatr_mst[15:0])	// Output
);

stwslv	slv (
	.clk(clk),	// Input
	.rst_n(rst_n),	// Input
	.stws_scl_i(stws_scl_i),	// Input
	.stws_sda_i(stws_sda_i),	// Input
	.bcs_stws_n(bcs_stws_n),	// Input
	.brdy(brdy),	// Input
	.bcmdr(bcmdr),	// Input
	.bcmdw(bcmdw),	// Input
	.badr(badr[3:0]),	// Input
	.bdatw(bdatw[15:0]),	// Input
	.stws_scl_o(stws_scl_o),	// Output
	.stws_sda_o(stws_sda_o),	// Output
	.stws_srar(stws_srar),	// Output
	.stws_star(stws_star),	// Output
	.bdatr(bdatr_slv[15:0])	// Output
);

endmodule
`endif	//	MCOC_NO_STWS


`ifdef		MCOC_NO_FNJP
`else	//	MCOC_NO_FNJP
module	mcoc_font (
// Japanese font ROM unit
input	clk,
input	rst_n,
input	brdy,
input	bcmdb,
input	bcmdw,
input	bcmdr,
input	bcs_fnjp_n,
input	[3:0]	badr,
input	[15:0]	bdatw,
output	[15:0]	bdatr);


// font ROM I/F
wire	[12:0]	fnjp_adr;
wire	[63:0]	fnjp_dat;


fontjp	fnjp (
	.clk(clk),	// Input
	.rst_n(rst_n),	// Input
	.brdy(brdy),	// Input
	.bcmdb(bcmdb),	// Input
	.bcmdw(bcmdw),	// Input
	.bcmdr(bcmdr),	// Input
	.bcs_fnjp_n(bcs_fnjp_n),	// Input
	.badr(badr[3:0]),	// Input
	.bdatw(bdatw[15:0]),	// Input
	.bdatr(bdatr[15:0]),	// Output
	// font ROM I/F
	.fnjp_dat(fnjp_dat[63:0]),	// Input
	.fnjp_adr(fnjp_adr[12:0])	// Output
);

xpm_memory_sprom	#(
	.ADDR_WIDTH_A(13),					// DECIMAL
	.AUTO_SLEEP_TIME(0),				// DECIMAL
	.CASCADE_HEIGHT(0),					// DECIMAL
	.ECC_MODE("no_ecc"),				// String
	.MEMORY_INIT_FILE("fontjp.mem"),	// String
	.MEMORY_INIT_PARAM("0"),			// String
	.MEMORY_OPTIMIZATION("false"),		// String
	.MEMORY_PRIMITIVE("auto"),			// String
	.MEMORY_SIZE(64*8192),				// DECIMAL
	.MESSAGE_CONTROL(0),				// DECIMAL
	.READ_DATA_WIDTH_A(64),				// DECIMAL
	.READ_LATENCY_A(1),					// DECIMAL
	.READ_RESET_VALUE_A("0"),			// String
	.RST_MODE_A("SYNC"),				// String
	.SIM_ASSERT_CHK(0),					// DECIMAL
	.USE_MEM_INIT(1),					// DECIMAL
	.WAKEUP_TIME("disable_sleep")		// String
)	fromhm (
	.dbiterra(dbiterra_open),
	.douta(fnjp_dat[63:0]),
	.sbiterra(sbiterra_open),
	.addra(fnjp_adr[12:0]),
	.clka(clk),
	.ena(1'b1),
	.injectdbiterra(1'b0),
	.injectsbiterra(1'b0),
	.regcea(1'b1),
	.rsta(~rst_n),
	.sleep(1'b0)
);

endmodule
`endif	//	MCOC_NO_FNJP


`ifdef		MCOC_NO_ADCX
`else	//	MCOC_NO_ADCX
module	mcoc_adcx (
// 12 bit A/D converter unit
input	clk,
input	rst_n,
input	brdy,
input	bcmdr,
input	bcmdw,
input	bcs_adcx_n,
input	[3:0]	badr,
input	[15:0]	bdatw,
output	[15:0]	bdatr,
// XADC I/F
input	adcx_vp,
input	adcx_vn,
input	adcx_ain0p,
input	adcx_ain0n,
input	adcx_ain1p,
input	adcx_ain1n);


wire	[4:0]	channel_out_open;
wire	[6:0]	adcx_drp_adr;
wire	[15:0]	adcx_drp_do;
wire	[15:0]	adcx_drp_di;


adcx122		adcx (
	.clk(clk),	// Input
	.rst_n(rst_n),	// Input
	.brdy(brdy),	// Input
	.bcmdr(bcmdr),	// Input
	.bcmdw(bcmdw),	// Input
	.bcs_adcx_n(bcs_adcx_n),	// Input
	.badr(badr[3:0]),	// Input
	.bdatw(bdatw[15:0]),	// Input
	.bdatr(bdatr[15:0]),	// Output
	// XADC I/F
	.adcx_busy(adcx_busy),	// Input
	.adcx_eoc(adcx_eoc),	// Input
	.adcx_eos(adcx_eos),	// Input
	// DRP I/F
	.adcx_drp_rdy(adcx_drp_rdy),	// Input
	.adcx_drp_do(adcx_drp_do[15:0]),	// Input
	.adcx_drp_den(adcx_drp_den),	// Output
	.adcx_drp_dwe(adcx_drp_dwe),	// Output
	.adcx_drp_adr(adcx_drp_adr[6:0]),	// Output
	.adcx_drp_di(adcx_drp_di[15:0])	// Output
);

adcx_afe	afex (
	.daddr_in(adcx_drp_adr[6:0]),	// Input
	.dclk_in(clk),	// Input
	.den_in(adcx_drp_den),	// Input
	.di_in(adcx_drp_di[15:0]),	// Input
	.dwe_in(adcx_drp_dwe),	// Input
	.reset_in(~rst_n),	// Input
	.vauxp4(adcx_ain0p),	// Input
	.vauxn4(adcx_ain0n),	// Input
	.vauxp12(adcx_ain1p),	// Input
	.vauxn12(adcx_ain1n),	// Input
	.busy_out(adcx_busy),	// Output
	.channel_out(channel_out_open[4:0]),	// Output
	.do_out(adcx_drp_do[15:0]),	// Output
	.drdy_out(adcx_drp_rdy),	// Output
	.eoc_out(adcx_eoc),	// Output
	.eos_out(adcx_eos),	// Output
	.alarm_out(alarm_out_open),	// Output
	.vp_in(adcx_vp),	// Input
	.vn_in(adcx_vn)	// Input
);

endmodule
`endif	//	MCOC_NO_ADCX


`ifdef		MCOC_NO_UNSJ
`else	//	MCOC_NO_UNSJ
module	mcoc_unsj (
// Code Conversion (unicode <-> S-JIS) unit
input	clk,
input	rst_n,
input	brdy,
input	bcmdw,
input	bcmdr,
input	bcs_unsj_n,
input	[3:0]	badr,
input	[15:0]	bdatw,
output	[15:0]	bdatr);


// LUT ROM I/F
wire	[10:0]	unsj_adr0;
wire	[10:0]	unsj_adr1;
wire	[95:0]	unsj_dat0;
wire	[95:0]	unsj_dat1;


unisji	unsj (
	.clk(clk),	// Input
	.rst_n(rst_n),	// Input
	.brdy(brdy),	// Input
	.bcmdw(bcmdw),	// Input
	.bcmdr(bcmdr),	// Input
	.bcs_unsj_n(bcs_unsj_n),	// Input
	.badr(badr[3:0]),	// Input
	.bdatw(bdatw[15:0]),	// Input
	.bdatr(bdatr[15:0]),	// Output
	// LUT ROM I/F
	.unsj_dat0(unsj_dat0[95:0]),	// Input
	.unsj_dat1(unsj_dat1[95:0]),	// Input
	.unsj_adr0(unsj_adr0[10:0]),	// Output
	.unsj_adr1(unsj_adr1[10:0])	// Output
);

xpm_memory_dprom	#(
	.ADDR_WIDTH_A(11),					// DECIMAL
	.ADDR_WIDTH_B(11),					// DECIMAL
	.AUTO_SLEEP_TIME(0),				// DECIMAL
	.CASCADE_HEIGHT(0),					// DECIMAL
	.CLOCKING_MODE("common_clock"),		// String
	.ECC_MODE("no_ecc"),				// String
	.MEMORY_INIT_FILE("unisji.mem"),	// String
	.MEMORY_INIT_PARAM("0"),			// String
	.MEMORY_OPTIMIZATION("false"),		// String
	.MEMORY_PRIMITIVE("auto"),			// String
	.MEMORY_SIZE(96*1344),				// DECIMAL
	.MESSAGE_CONTROL(0),				// DECIMAL
	.READ_DATA_WIDTH_A(96),				// DECIMAL
	.READ_DATA_WIDTH_B(96),				// DECIMAL
	.READ_LATENCY_A(1),					// DECIMAL
	.READ_LATENCY_B(1),					// DECIMAL
	.READ_RESET_VALUE_A("0"),			// String
	.READ_RESET_VALUE_B("0"),			// String
	.RST_MODE_A("SYNC"),				// String
	.RST_MODE_B("SYNC"),				// String
	.SIM_ASSERT_CHK(0),					// DECIMAL
	.USE_MEM_INIT(1),					// DECIMAL
	.WAKEUP_TIME("disable_sleep")		// String
)	cromhm (
	.dbiterra(dbiterra_open),
	.dbiterrb(dbiterrb_open),
	.douta(unsj_dat0[95:0]),
	.doutb(unsj_dat1[95:0]),
	.sbiterra(sbiterra_open),
	.sbiterrb(sbiterrb_open),
	.addra(unsj_adr0[10:0]),
	.addrb(unsj_adr1[10:0]),
	.clka(clk),
	.clkb(clk),
	.ena(1'b1),
	.enb(1'b1),
	.injectdbiterra(1'b0),
	.injectdbiterrb(1'b0),
	.injectsbiterra(1'b0),
	.injectsbiterrb(1'b0),
	.regcea(1'b1),
	.regceb(1'b1),
	.rsta(~rst_n),
	.rstb(~rst_n),
	.sleep(1'b0)
);

endmodule
`endif	//	MCOC_NO_UNSJ


`ifdef		MCOC_NO_RTC
`else	//	MCOC_NO_RTC
module	mcoc_rtc (
// Real Time Clock Unit
input	clk,
input	rst_n,
input	brdy,
input	bcmdw,
input	bcmdr,
input	bcs_rtcu_n,
input	rtc_clkin,
input	[3:0]	badr,
input	[15:0]	bdatw,
output	rtc_rtcr,
output	[15:0]	bdatr);


wire	[79:0]	rsys_reg;
wire	[79:0]	rsub_reg;


rtc400_sys		rsys (
	.clk(clk),	// Input
	.rst_n(rst_n),	// Input
	.brdy(brdy),	// Input
	.bcmdw(bcmdw),	// Input
	.bcmdr(bcmdr),	// Input
	.bcs_rtcu_n(bcs_rtcu_n),	// Input
	.rtc_clkin(rtc_clkin),	// Input
	.rsub_wrt_ack(rsub_wrt_ack),	// Input
	.badr(badr[3:0]),	// Input
	.bdatw(bdatw[15:0]),	// Input
	.rsub_reg(rsub_reg[79:0]),	// Input
	.clk32k(clk32k),	// Output
	.rtc_rtcr(rtc_rtcr),	// Output
	.rctl_wrt_req(rctl_wrt_req),	// Output
	.bdatr(bdatr[15:0]),	// Output
	.rsys_reg(rsys_reg[79:0])	// Output
);

rtc400_sub		rsub (
	.clk32k(clk32k),	// Input
	.rctl_wrt_req(rctl_wrt_req),	// Input
	.rsys_reg(rsys_reg[79:0]),	// Input
	.rsub_wrt_ack(rsub_wrt_ack),	// Output
	.rsub_reg(rsub_reg[79:0])	// Output
);

endmodule
`endif	//	MCOC_NO_RTC


`ifdef		MCOC_NO_CM76
`else	//	MCOC_NO_CM76
module	mcoc_cam76 (
// OV7670 camera unit top module
input	clk,
input	rst_n,
input	simumd,
input	brdy,
input	bcmdr,
input	bcmdw,
input	bcs_cm76_n,
input	[3:0]	badr,
input	[15:0]	bdatw,
output	[15:0]	bdatr,
input	cm76_pclk,
input	cm76_vsync,
input	cm76_href,
input	[3:0]	cm76_dat,
output	cm76_xclk);


wire	pclk=cm76_pclk;
wire	[7:0]	cm76_fdatr;
wire	[7:0]	cm76_fdatw;


cam7670		cm76 (
	.clk(clk),	// Input
	.rst_n(rst_n),	// Input
	.simumd(simumd),	// Input
	.brdy(brdy),	// Input
	.bcmdr(bcmdr),	// Input
	.bcmdw(bcmdw),	// Input
	.bcs_cm76_n(bcs_cm76_n),	// Input
	.badr(badr[3:0]),	// Input
	.bdatw(bdatw[15:0]),	// Input
	.bdatr(bdatr[15:0]),	// Output
	.cm76_pclk(pclk),	// Input
	.cm76_vsync(cm76_vsync),	// Input
	.cm76_href(cm76_href),	// Input
	.cm76_dat(cm76_dat[3:0]),	// Input
	.cm76_xclk(cm76_xclk),	// Output
	.cm76_fempt(cm76_fempt),	// Input
	.cm76_ffull(cm76_ffull),	// Input
	.cm76_frest_bsy(cm76_frest_bsy_rd | cm76_frest_bsy_wr),	// Input
	.cm76_fdatr(cm76_fdatr[7:0]),	// Input
	.cm76_frest(cm76_frest),	// Output
	.cm76_fread(cm76_fread),	// Output
	.cm76_fwrit(cm76_fwrit),	// Output
	.cm76_fdatw(cm76_fdatw[7:0])	// Output
);

`ifndef		MCOC_CM76_FIFO_SIZE
`define		MCOC_CM76_FIFO_SIZE		4096
`endif	//	MCOC_CM76_FIFO_SIZE
xpm_fifo_async	#(
	.CDC_SYNC_STAGES(2),				// DECIMAL
	.DOUT_RESET_VALUE("0"),				// String
	.ECC_MODE("no_ecc"),				// String
	.FIFO_MEMORY_TYPE("auto"),			// String
	.FIFO_READ_LATENCY(1),				// DECIMAL
	.FIFO_WRITE_DEPTH(`MCOC_CM76_FIFO_SIZE),		// DECIMAL
	.FULL_RESET_VALUE(0),				// DECIMAL
	.PROG_EMPTY_THRESH(`MCOC_CM76_FIFO_SIZE/4),		// DECIMAL
	.PROG_FULL_THRESH(`MCOC_CM76_FIFO_SIZE*3/4),	// DECIMAL
	.RD_DATA_COUNT_WIDTH(1),			// DECIMAL
	.READ_DATA_WIDTH(8),				// DECIMAL
	.READ_MODE("std"),					// String
	.RELATED_CLOCKS(0),					// DECIMAL
	.SIM_ASSERT_CHK(0),					// DECIMAL
	.USE_ADV_FEATURES("0707"),			// String
	.WAKEUP_TIME(0),					// DECIMAL
	.WRITE_DATA_WIDTH(8),				// DECIMAL
	.WR_DATA_COUNT_WIDTH(1)				// DECIMAL
)	fifo (
	.almost_empty(almost_empty_open),
	.almost_full(almost_full_open),
	.data_valid(data_valid_open),
	.dbiterr(dbiterr_open),
	.dout(cm76_fdatr[7:0]),
	.empty(cm76_fempt),
	.full(cm76_ffull),
	.overflow(overflow_open),
	.prog_empty(prog_empty_open),
	.prog_full(prog_full_open),
	.rd_data_count(rd_data_count_open),
	.rd_rst_busy(cm76_frest_bsy_rd),
	.sbiterr(sbiterr_open),
	.underflow(underflow_open),
	.wr_ack(wr_ack_open),
	.wr_data_count(wr_data_count_open),
	.wr_rst_busy(cm76_frest_bsy_wr),
	.din(cm76_fdatw[7:0]),
	.injectdbiterr(1'b0),
	.injectsbiterr(1'b0),
	.rd_clk(clk),
	.rd_en(cm76_fread),
	.rst(cm76_frest),
	.sleep(1'b0),
	.wr_clk(pclk),
	.wr_en(cm76_fwrit)
);

endmodule
`endif	//	MCOC_NO_CM76

