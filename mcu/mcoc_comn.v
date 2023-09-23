`ifdef		MCOC_CORE_TS

module	tennessinec (
// Tennessine + Co-processor
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


wire	signed	[17:0]	tnsn_dsp_c;
wire	signed	[8:0]	tnsn_dsp_a;
wire	signed	[8:0]	tnsn_dsp_b;
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

// signed multiply
assign	tnsn_dsp_c[17:0]=tnsn_dsp_a*tnsn_dsp_b;

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

wire	signed	[65:0]	niss_dsp_c0;
wire	signed	[65:0]	niss_dsp_c1;
wire	signed	[32:0]	niss_dsp_a0;
wire	signed	[32:0]	niss_dsp_a1;
wire	signed	[32:0]	niss_dsp_b0;
wire	signed	[32:0]	niss_dsp_b1;
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

// signed multiply
assign	niss_dsp_c0[65:0]=niss_dsp_a0*niss_dsp_b0;
assign	niss_dsp_c1[65:0]=niss_dsp_a1*niss_dsp_b1;

`else	//	MCOC_CORE_NHSS

wire	signed	[65:0]	niho_dsp_c;
wire	signed	[32:0]	niho_dsp_a;
wire	signed	[32:0]	niho_dsp_b;
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

// signed multiply
assign	niho_dsp_c[65:0]=niho_dsp_a*niho_dsp_b;

`endif	//	MCOC_CORE_NHSS


`ifdef		MCVM_COPR_NOFPU
wire	crdy_hfpu=1'b1;
wire	[15:0]	cbus_hfpu=16'h0;
`else	//	MCVM_COPR_NOFPU
wire	[15:0]	cbus_hfpu;
mcoc_hfpu	hfpu (
	.clk(clk),	// Input
	.rst_n(rst_n),	// Input
	.crdy(crdy_hfpu),	// Output
	.ccmd(ccmd[4:0]),	// Input
	.abus(abus_o[15:0]),	// Input
	.bbus(bbus_o[15:0]),	// Input
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
	.crdy(crdy_sfpu),	// Output
	.ccmd(ccmd[4:0]),	// Input
	.abus(abus_o[31:0]),	// Input
	.bbus(bbus_o[31:0]),	// Input
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

`else	//	MCOC_CORE_MCSS

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

`endif	//	MCOC_CORE_MCSS

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
divc32	divc (
	.clk(clk),	// Input
	.rst_n(rst_n),	// Input
	.ccmd(ccmd[4:0]),	// Input
	.abus(abus_o[15:0]),	// Input
	.bbus(bbus_o[15:0]),	// Input
	.crdy(crdy_divc),	// Output
	.cbus(cbus_divc[15:0])	// Output
);
`endif	//	MCVM_COPR_NODIV

`ifdef		MCVM_COPR_NOFPU
wire	crdy_hfpu=1'b1;
wire	[15:0]	cbus_hfpu=16'h0;
`else	//	MCVM_COPR_NOFPU
wire	[15:0]	cbus_hfpu;
mcoc_hfpu	hfpu (
	.clk(clk),	// Input
	.rst_n(rst_n),	// Input
	.crdy(crdy_hfpu),	// Output
	.ccmd(ccmd[4:0]),	// Input
	.abus(abus_o[15:0]),	// Input
	.bbus(bbus_o[15:0]),	// Input
	.cbus(cbus_hfpu[15:0])	// Output
);

`endif	//	MCVM_COPR_NOFPU


// bus output
assign	crdy=crdy_mulc&crdy_divc&crdy_hfpu;
assign	cbus_i[15:0]=cbus_mulc[15:0] | cbus_divc[15:0] | cbus_hfpu[15:0];

endmodule

`endif	//	MCOC_CORE_NH


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


wire	signed	[33:0]	mulc_dsp_c;
wire	signed	[16:0]	mulc_dsp_a;
wire	signed	[16:0]	mulc_dsp_b;


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

// signed multiply
assign	mulc_dsp_c[33:0]=mulc_dsp_a*mulc_dsp_b;

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


wire	[10:0]	hfpu_dsp_a;
wire	[10:0]	hfpu_dsp_b;
wire	[21:0]	hfpu_dsp_c;


halfpu	hfpu (
	.clk(clk),	// Input
	.rst_n(rst_n),	// Input
	.crdy(crdy),	// Output
	.ccmd(ccmd[4:0]),	// Input
	.abus(abus[15:0]),	// Input
	.bbus(bbus[15:0]),	// Input
	.cbus(cbus[15:0]),	// Output
	// DSP macro I/F
	.hfpu_dsp_c(hfpu_dsp_c[21:0]),	// Input
	.hfpu_dsp_a(hfpu_dsp_a[10:0]),	// Output
	.hfpu_dsp_b(hfpu_dsp_b[10:0])	// Output
);

// unsigned multiply
assign	hfpu_dsp_c[21:0]=hfpu_dsp_a[10:0]*hfpu_dsp_b[10:0];

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


wire	[47:0]	sfpu_dsp_c;
wire	[23:0]	sfpu_dsp_a;
wire	[23:0]	sfpu_dsp_b;


sglfpu	sfpu (
	.clk(clk),	// Input
	.rst_n(rst_n),	// Input
	.crdy(crdy),	// Output
	.ccmd(ccmd[4:0]),	// Input
	.abus(abus[31:0]),	// Input
	.bbus(bbus[31:0]),	// Input
	.cbus(cbus[31:0]),	// Output
	// DSP macro I/F
	.sfpu_dsp_c(sfpu_dsp_c[47:0]),	// Input
	.sfpu_dsp_a(sfpu_dsp_a[23:0]),	// Output
	.sfpu_dsp_b(sfpu_dsp_b[23:0])	// Output
);

// unsigned multiply
assign	sfpu_dsp_c[47:0]=sfpu_dsp_a[23:0]*sfpu_dsp_b[23:0];

endmodule
`endif	//	MCVM_COPR_NOFPUS


module	mcoc_rom32 (
// mcoc115 rom 32 bit bus
input	clk,
input	rst_n,
input	bootmd,
input	brdy,
input	bcmdr,
input	bcmdw,
input	bcmdl,
input	bmst,
input	bcs_rom_n,
input	fcmdl,
input	[15:0]	fadr1,
input	[15:0]	fadr2,
input	[15:0]	badr,
input	[15:0]	bdatw,
output	[31:0]	fdat1,
output	[31:0]	fdat2,
output	[31:0]	bdatr);


wire	[15:0]	rom_adr1;
wire	[15:0]	rom_adr2;
wire	[31:0]	rom_dat1;
wire	[31:0]	rom_dat2;
wire	[31:0]	fdat1_rom;
wire	[31:0]	fdat2_rom;


// rom wrapper
rom_wrap32d		romw (
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
	.badr(badr[15:0]),	// Input
	.fadr1(fadr1[15:0]),	// Input
	.fadr2(fadr2[15:0]),	// Input
	.rom_we(rom_we),	// Output
	.bdatr(bdatr[31:0]),	// Output
	.fdat1(fdat1_rom[31:0]),	// Output
	.fdat2(fdat2_rom[31:0]),	// Output
	// ROM macro I/F
	.rom_dat1(rom_dat1[31:0]),	// Input
	.rom_dat2(rom_dat2[31:0]),	// Input
	.rom_adr1(rom_adr1[15:0]),	// Output
	.rom_adr2(rom_adr2[15:0])	// Output
);

// boot rom
wire	[15:0]	romsiz_open;
wire	[31:0]	fdat_bt;
mcoc_boot32	rombt (
	.clk(clk),	// Input
	.rst_n(rst_n),	// Input
	.fcmdl(fcmdl),	// Input
	.adr(fadr1[8:1]),	// Input
	.dat(fdat_bt[31:0]),	// Output
	.romsiz(romsiz_open[15:0])	// Output
);

// instruction rom
`ifdef		MCOC_ROM_16K

`define		MCOC_ROM_ABIT	13
`define		MCOC_ROM_AONE	13'h1
`define		MCOC_ROM_SIZB	16*1024*8

`else	//	MCOC_ROM_16K

`ifdef		MCOC_ROM_8K

`define		MCOC_ROM_ABIT	12
`define		MCOC_ROM_AONE	12'h1
`define		MCOC_ROM_SIZB	8*1024*8

`else	//	MCOC_ROM_8K

`define		MCOC_ROM_ABIT	11
`define		MCOC_ROM_AONE	11'h1
`define		MCOC_ROM_SIZB	4*1024*8

`endif	//	MCOC_ROM_8K
`endif	//	MCOC_ROM_16K

xpm_memory_tdpram	#(
	.ADDR_WIDTH_A(`MCOC_ROM_ABIT),		// DECIMAL
	.ADDR_WIDTH_B(`MCOC_ROM_ABIT),		// DECIMAL
	.AUTO_SLEEP_TIME(0),				// DECIMAL
	.BYTE_WRITE_WIDTH_A(16),			// DECIMAL
	.BYTE_WRITE_WIDTH_B(16),			// DECIMAL
	.CASCADE_HEIGHT(0),					// DECIMAL
	.CLOCKING_MODE("common_clock"),		// String
	.ECC_MODE("no_ecc"),				// String
	.MEMORY_INIT_FILE("mcoc_irom.mem"),		// String
	.MEMORY_INIT_PARAM("0"),			// String
	.MEMORY_OPTIMIZATION("true"),		// String
	.MEMORY_PRIMITIVE("auto"),			// String
	.MEMORY_SIZE(`MCOC_ROM_SIZB),		// DECIMAL
	.MESSAGE_CONTROL(0),				// DECIMAL
	.READ_DATA_WIDTH_A(16),				// DECIMAL
	.READ_DATA_WIDTH_B(16),				// DECIMAL
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
	.WRITE_DATA_WIDTH_A(16),			// DECIMAL
	.WRITE_DATA_WIDTH_B(16),			// DECIMAL
	.WRITE_MODE_A("no_change"),			// String
	.WRITE_MODE_B("no_change")			// String
)
romwr (
	.dbiterra(dbiterra_open),
	.dbiterrb(dbiterrb_open),
	.douta(rom_dat1[31:16]),
	.doutb(rom_dat1[15:0]),
	.sbiterra(sbiterra_open),
	.sbiterrb(sbiterrb_open),
	.addra(rom_adr1[`MCOC_ROM_ABIT:1]),
	.addrb(rom_adr1[`MCOC_ROM_ABIT:1] | `MCOC_ROM_AONE),
	.clka(clk),
	.clkb(clk),
	.dina(bdatw[15:0]),
	.dinb(16'h0),
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
	.wea(rom_we),
	.web(1'b0)
);

`ifdef		MCOC_MCVM_DUAL
xpm_memory_tdpram	#(
	.ADDR_WIDTH_A(`MCOC_ROM_ABIT),		// DECIMAL
	.ADDR_WIDTH_B(`MCOC_ROM_ABIT),		// DECIMAL
	.AUTO_SLEEP_TIME(0),				// DECIMAL
	.BYTE_WRITE_WIDTH_A(16),			// DECIMAL
	.BYTE_WRITE_WIDTH_B(16),			// DECIMAL
	.CASCADE_HEIGHT(0),					// DECIMAL
	.CLOCKING_MODE("common_clock"),		// String
	.ECC_MODE("no_ecc"),				// String
	.MEMORY_INIT_FILE("mcoc_irom.mem"),		// String
	.MEMORY_INIT_PARAM("0"),			// String
	.MEMORY_OPTIMIZATION("true"),		// String
	.MEMORY_PRIMITIVE("auto"),			// String
	.MEMORY_SIZE(`MCOC_ROM_SIZB),		// DECIMAL
	.MESSAGE_CONTROL(0),				// DECIMAL
	.READ_DATA_WIDTH_A(16),				// DECIMAL
	.READ_DATA_WIDTH_B(16),				// DECIMAL
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
	.WRITE_DATA_WIDTH_A(16),			// DECIMAL
	.WRITE_DATA_WIDTH_B(16),			// DECIMAL
	.WRITE_MODE_A("no_change"),			// String
	.WRITE_MODE_B("no_change")			// String
)
romwr2 (
	.dbiterra(dbiterra),
	.dbiterrb(dbiterrb),
	.douta(rom_dat2[31:16]),
	.doutb(rom_dat2[15:0]),
	.sbiterra(sbiterra),
	.sbiterrb(sbiterrb),
	.addra(rom_adr2[`MCOC_ROM_ABIT:1]),
	.addrb(rom_adr2[`MCOC_ROM_ABIT:1] | 'MCOC_ROM_AONE),
	.clka(clk),
	.clkb(clk),
	.dina(bdatw[15:0]),
	.dinb(16'h0),
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
	.wea(rom_we),
	.web(1'b0)
);
`else	//	MCOC_MCVM_DUAL
assign	rom_dat2[31:0]=32'h0;
`endif	//	MCOC_MCVM_DUAL


// data select
assign	fdat1[31:0]=(bootmd)? fdat_bt[31:0]: fdat1_rom[31:0];
assign	fdat2[31:0]=(bootmd)? 32'h0001_0000: fdat2_rom[31:0];

endmodule


`ifdef		MCOC_IRAM_4K
module	mcoc_iram (
// mcoc115 iram
input	clk,
input	rst_n,
input	brdy,
input	bmst,
input	bcs_iram_n,
input	[2:0]	bcmd,
input	[15:0]	fadr1,
input	[15:0]	fadr2,
input	[15:0]	badr,
input	[15:0]	bdatw,
input	[15:0]	rom_fdat1,
input	[15:0]	rom_fdat2,
output	[15:0]	fdat1,
output	[15:0]	fdat2,
output	[15:0]	bdatr);


wire	[1:0]	iram_bwe1;
wire	[1:0]	iram_bwe2;
wire	[15:0]	iram_fdat1;
wire	[15:0]	iram_fdat2;
wire	[15:0]	iram_bdatr1;
wire	[15:0]	iram_bdatr2;


iram_wrapd	iramw (
	.clk(clk),	// Input
	.rst_n(rst_n),	// Input
	.brdy(brdy),	// Input
	.bmst(bmst),	// Input
	.bcs_iram_n(bcs_iram_n),	// Input
	.badr0(badr[0]),	// Input
	.bcmd(bcmd[2:0]),	// Input
	.fadr1(fadr1[15:0]),	// Input
	.fadr2(fadr2[15:0]),	// Input
	.rom_fdat1(rom_fdat1[15:0]),	// Input
	.rom_fdat2(rom_fdat2[15:0]),	// Input
	.iram_fadr_top(16'h4000),	// Input
	.fdat1(fdat1[15:0]),	// Output
	.fdat2(fdat2[15:0]),	// Output
	.bdatr(bdatr[15:0]),	// Output
	// RAM macro I/F
	.iram_fdat1(iram_fdat1[15:0]),	// Input
	.iram_fdat2(iram_fdat2[15:0]),	// Input
	.iram_bdatr1(iram_bdatr1[15:0]),	// Input
	.iram_bdatr2(iram_bdatr2[15:0]),	// Input
	.iram_bce1(iram_bce1),	// Output
	.iram_bce2(iram_bce2),	// Output
	.iram_fce1(iram_fce1),	// Output
	.iram_fce2(iram_fce2),	// Output
	.iram_bwe1(iram_bwe1[1:0]),	// Output
	.iram_bwe2(iram_bwe2[1:0])	// Output
);

// instruction ram
xpm_memory_tdpram	#(
	.ADDR_WIDTH_A(11),					// DECIMAL
	.ADDR_WIDTH_B(11),					// DECIMAL
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
	.READ_DATA_WIDTH_A(16),				// DECIMAL
	.READ_DATA_WIDTH_B(16),				// DECIMAL
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
	.WRITE_DATA_WIDTH_A(16),			// DECIMAL
	.WRITE_DATA_WIDTH_B(16),			// DECIMAL
	.WRITE_MODE_A("no_change"),			// String
	.WRITE_MODE_B("no_change")			// String
)
iram1 (
	.dbiterra(dbiterra),
	.dbiterrb(dbiterrb),
	.douta(iram_bdatr1[15:0]),
	.doutb(iram_fdat1[15:0]),
	.sbiterra(sbiterra),
	.sbiterrb(sbiterrb),
	.addra(badr[11:1]),
	.addrb(fadr1[11:1]),
	.clka(clk),
	.clkb(~clk),
	.dina(bdatw[15:0]),
	.dinb(16'h0),
	.ena(iram_bce1),
	.enb(iram_fce1),
	.injectdbiterra(1'b0),
	.injectdbiterrb(1'b0),
	.injectsbiterra(1'b0),
	.injectsbiterrb(1'b0),
	.regcea(1'b1),
	.regceb(1'b1),
	.rsta(1'b0),
	.rstb(1'b0),
	.sleep(1'b0),
	.wea(iram_bwe1[1:0]),
	.web(2'h0)
);

`ifdef		MCOC_MCVM_DUAL

xpm_memory_tdpram	#(
	.ADDR_WIDTH_A(11),					// DECIMAL
	.ADDR_WIDTH_B(11),					// DECIMAL
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
	.READ_DATA_WIDTH_A(16),				// DECIMAL
	.READ_DATA_WIDTH_B(16),				// DECIMAL
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
	.WRITE_DATA_WIDTH_A(16),			// DECIMAL
	.WRITE_DATA_WIDTH_B(16),			// DECIMAL
	.WRITE_MODE_A("no_change"),			// String
	.WRITE_MODE_B("no_change")			// String
)
iram2 (
	.dbiterra(dbiterra),
	.dbiterrb(dbiterrb),
	.douta(iram_bdatr2[15:0]),
	.doutb(iram_fdat2[15:0]),
	.sbiterra(sbiterra),
	.sbiterrb(sbiterrb),
	.addra(badr[11:1]),
	.addrb(fadr2[11:1]),
	.clka(clk),
	.clkb(~clk),
	.dina(bdatw[15:0]),
	.dinb(16'h0),
	.ena(iram_bce2),
	.enb(iram_fce2),
	.injectdbiterra(1'b0),
	.injectdbiterrb(1'b0),
	.injectsbiterra(1'b0),
	.injectsbiterrb(1'b0),
	.regcea(1'b1),
	.regceb(1'b1),
	.rsta(1'b0),
	.rstb(1'b0),
	.sleep(1'b0),
	.wea(iram_bwe2[1:0]),
	.web(2'h0)
);

`else	//	MCOC_MCVM_DUAL
assign	iram_bdatr2[15:0]=16'h0;
assign	iram_fdat2[15:0]=16'h0;
`endif	//	MCOC_MCVM_DUAL

endmodule
`endif	//	MCOC_IRAM_4K


`ifdef		MCOC_RAM_LE1K
module	tsoc_ram_le1k (
// tsoc117 ram, 16 bit bus, <= 1K byte
input	clk,
input	rst_n,
input	brdy,
input	bcs_ram_n,
input	[2:0]	bcmd,
input	[15:0]	badr,
input	[15:0]	bdatw,
output	[15:0]	bdatr);


//
// RAM unit (Less than or Equal to 1K byte)
//		(c) 2023	1YEN Toru
//
//
//	2023/07/13	ver.1.01b2
//		Distributed RAM macro -> general RTL
//
//	2023/07/08	ver.1.00
//		access: byte / word
//


// bus
wire	bcmdr=bcmd[0];
wire	bcmdw=bcmd[1];
wire	bcmdb=bcmd[2];
wire	bcmdl=bcmd[3];
wire	[15:0]	badr_msk=badr[15:0]&(`MCOC_RAM_LE1K - 1);

// read control
reg		re;
reg		[9:0]	adr_r_f;
always	@(posedge clk)
	begin
		if (!rst_n)
			begin
				re<=1'b0;
				adr_r_f[9:0]<=10'h0;
			end
		else if (brdy)
			begin
				re<=( !bcs_ram_n && bcmdr );
				adr_r_f[9:0]<=badr_msk[9:0];
			end
	end
wire	[9:0]	adr_r=adr_r_f[9:0];
wire	[7:0]	dat_rh;
wire	[7:0]	dat_rl;
assign	bdatr[15:0]=
		(re)? { dat_rh[7:0],dat_rl[7:0] }:
		16'h0;

// write control
wire	we_h=( !bcs_ram_n && bcmdw && (!bcmdb || !badr[0]) );
wire	we_l=( !bcs_ram_n && bcmdw && (!bcmdb || badr[0]) );
wire	[9:0]	adr_w=badr_msk[9:0];
wire	[7:0]	dat_wh=bdatw[15:8];
wire	[7:0]	dat_wl=bdatw[7:0];


// ram mat
(* ram_style = "distributed" *)
reg		[7:0]	memh[0:`MCOC_RAM_LE1K/2 - 1];
(* ram_style = "distributed" *)
reg		[7:0]	meml[0:`MCOC_RAM_LE1K/2 - 1];
always	@(posedge clk)
	begin
		// write data
		if (we_h)
			memh[adr_w[9:1]][7:0]<=dat_wh[7:0];
		if (we_l)
			meml[adr_w[9:1]][7:0]<=dat_wl[7:0];
	end
// read data
assign	dat_rh[7:0]=memh[adr_r[9:1]][7:0];
assign	dat_rl[7:0]=meml[adr_r[9:1]][7:0];

endmodule
`else	//	MCOC_RAM_LE1K
module	mcoc_ram32 (
// mcoc115 ram 32 bit bus
input	clk,
input	rst_n,
input	brdy,
input	bcs_ram_n,
input	bcs_ram0_n,
input	bcs_ram1_n,
input	bcs_ram2_n,
input	bcs_ram3_n,
input	bcs_ram4_n,
input	[3:0]	bcmd,
input	[15:0]	badr,
input	[31:0]	bdatw,
output	[31:0]	bdatr);


wire	[3:0]	ram_we;
wire	[31:0]	ram_din;
wire	[31:0]	ram_dou0;
wire	[31:0]	ram_dou1;
wire	[31:0]	ram_dou2;
wire	[31:0]	ram_dou3;
wire	[31:0]	ram_dou4;

ram_wrap32	ramw (
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
	.bdatr(bdatr[31:0]),	// Output
	// RAM macro I/F
	.ram_dou0(ram_dou0[31:0]),	// Input
	.ram_dou1(ram_dou1[31:0]),	// Input
	.ram_dou2(ram_dou2[31:0]),	// Input
	.ram_dou3(ram_dou3[31:0]),	// Input
	.ram_dou4(ram_dou4[31:0]),	// Input
	.ram_ce0(ram_ce0),	// Output
	.ram_ce1(ram_ce1),	// Output
	.ram_ce2(ram_ce2),	// Output
	.ram_ce3(ram_ce3),	// Output
	.ram_ce4(ram_ce4),	// Output
	.ram_we(ram_we[3:0]),	// Output
	.ram_din(ram_din[31:0])	// Output
);


`ifdef		MCOC_RAM_40K
`define		MCOC_RAM_32K
`define		MCOC_RAM_24K
`define		MCOC_RAM_16K

xpm_memory_tdpram	#(
	.ADDR_WIDTH_A(12),					// DECIMAL
	.ADDR_WIDTH_B(12),					// DECIMAL
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
	.MEMORY_SIZE(8*1024*8),				// DECIMAL
	.MESSAGE_CONTROL(0),				// DECIMAL
	.READ_DATA_WIDTH_A(16),				// DECIMAL
	.READ_DATA_WIDTH_B(16),				// DECIMAL
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
	.WRITE_DATA_WIDTH_A(16),			// DECIMAL
	.WRITE_DATA_WIDTH_B(16),			// DECIMAL
	.WRITE_MODE_A("no_change"),			// String
	.WRITE_MODE_B("no_change")			// String
)
ram8k4 (
	.dbiterra(dbiterra4_open),
	.dbiterrb(dbiterrb4_open),
	.douta(ram_dou4[31:16]),
	.doutb(ram_dou4[15:0]),
	.sbiterra(sbiterra4_open),
	.sbiterrb(sbiterrb4_open),
	.addra(badr[12:1] & (~12'h1)),
	.addrb(badr[12:1] | 12'h1),
	.clka(clk),
	.clkb(clk),
	.dina(ram_din[31:16]),
	.dinb(ram_din[15:0]),
	.ena(ram_ce4),
	.enb(ram_ce4),
	.injectdbiterra(1'b0),
	.injectdbiterrb(1'b0),
	.injectsbiterra(1'b0),
	.injectsbiterrb(1'b0),
	.regcea(1'b1),
	.regceb(1'b1),
	.rsta(1'b0),
	.rstb(1'b0),
	.sleep(1'b0),
	.wea(ram_we[3:2]),
	.web(ram_we[1:0])
);
`else	//	MCOC_RAM_40K
assign	ram_dou4[31:0]=32'h0;
`endif	//	MCOC_RAM_40K

`ifdef		MCOC_RAM_32K
`define		MCOC_RAM_24K
`define		MCOC_RAM_16K

xpm_memory_tdpram	#(
	.ADDR_WIDTH_A(12),					// DECIMAL
	.ADDR_WIDTH_B(12),					// DECIMAL
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
	.MEMORY_SIZE(8*1024*8),				// DECIMAL
	.MESSAGE_CONTROL(0),				// DECIMAL
	.READ_DATA_WIDTH_A(16),				// DECIMAL
	.READ_DATA_WIDTH_B(16),				// DECIMAL
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
	.WRITE_DATA_WIDTH_A(16),			// DECIMAL
	.WRITE_DATA_WIDTH_B(16),			// DECIMAL
	.WRITE_MODE_A("no_change"),			// String
	.WRITE_MODE_B("no_change")			// String
)
ram8k3 (
	.dbiterra(dbiterra3_open),
	.dbiterrb(dbiterrb3_open),
	.douta(ram_dou3[31:16]),
	.doutb(ram_dou3[15:0]),
	.sbiterra(sbiterra3_open),
	.sbiterrb(sbiterrb3_open),
	.addra(badr[12:1] & (~12'h1)),
	.addrb(badr[12:1] | 12'h1),
	.clka(clk),
	.clkb(clk),
	.dina(ram_din[31:16]),
	.dinb(ram_din[15:0]),
	.ena(ram_ce3),
	.enb(ram_ce3),
	.injectdbiterra(1'b0),
	.injectdbiterrb(1'b0),
	.injectsbiterra(1'b0),
	.injectsbiterrb(1'b0),
	.regcea(1'b1),
	.regceb(1'b1),
	.rsta(1'b0),
	.rstb(1'b0),
	.sleep(1'b0),
	.wea(ram_we[3:2]),
	.web(ram_we[1:0])
);
`else	//	MCOC_RAM_32K
assign	ram_dou3[31:0]=32'h0;
`endif	//	MCOC_RAM_32K

`ifdef		MCOC_RAM_24K
`define		MCOC_RAM_16K

xpm_memory_tdpram	#(
	.ADDR_WIDTH_A(12),					// DECIMAL
	.ADDR_WIDTH_B(12),					// DECIMAL
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
	.MEMORY_SIZE(8*1024*8),				// DECIMAL
	.MESSAGE_CONTROL(0),				// DECIMAL
	.READ_DATA_WIDTH_A(16),				// DECIMAL
	.READ_DATA_WIDTH_B(16),				// DECIMAL
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
	.WRITE_DATA_WIDTH_A(16),			// DECIMAL
	.WRITE_DATA_WIDTH_B(16),			// DECIMAL
	.WRITE_MODE_A("no_change"),			// String
	.WRITE_MODE_B("no_change")			// String
)
ram8k2 (
	.dbiterra(dbiterra2_open),
	.dbiterrb(dbiterrb2_open),
	.douta(ram_dou2[31:16]),
	.doutb(ram_dou2[15:0]),
	.sbiterra(sbiterra2_open),
	.sbiterrb(sbiterrb2_open),
	.addra(badr[12:1] & (~12'h1)),
	.addrb(badr[12:1] | 12'h1),
	.clka(clk),
	.clkb(clk),
	.dina(ram_din[31:16]),
	.dinb(ram_din[15:0]),
	.ena(ram_ce2),
	.enb(ram_ce2),
	.injectdbiterra(1'b0),
	.injectdbiterrb(1'b0),
	.injectsbiterra(1'b0),
	.injectsbiterrb(1'b0),
	.regcea(1'b1),
	.regceb(1'b1),
	.rsta(1'b0),
	.rstb(1'b0),
	.sleep(1'b0),
	.wea(ram_we[3:2]),
	.web(ram_we[1:0])
);
`else	//	MCOC_RAM_24K
assign	ram_dou2[31:0]=32'h0;
`endif	//	MCOC_RAM_24K

`ifdef		MCOC_RAM_16K
xpm_memory_tdpram	#(
	.ADDR_WIDTH_A(12),					// DECIMAL
	.ADDR_WIDTH_B(12),					// DECIMAL
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
	.MEMORY_SIZE(8*1024*8),				// DECIMAL
	.MESSAGE_CONTROL(0),				// DECIMAL
	.READ_DATA_WIDTH_A(16),				// DECIMAL
	.READ_DATA_WIDTH_B(16),				// DECIMAL
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
	.WRITE_DATA_WIDTH_A(16),			// DECIMAL
	.WRITE_DATA_WIDTH_B(16),			// DECIMAL
	.WRITE_MODE_A("no_change"),			// String
	.WRITE_MODE_B("no_change")			// String
)
ram8k1 (
	.dbiterra(dbiterra1_open),
	.dbiterrb(dbiterrb1_open),
	.douta(ram_dou1[31:16]),
	.doutb(ram_dou1[15:0]),
	.sbiterra(sbiterra1_open),
	.sbiterrb(sbiterrb1_open),
	.addra(badr[12:1] & (~12'h1)),
	.addrb(badr[12:1] | 12'h1),
	.clka(clk),
	.clkb(clk),
	.dina(ram_din[31:16]),
	.dinb(ram_din[15:0]),
	.ena(ram_ce1),
	.enb(ram_ce1),
	.injectdbiterra(1'b0),
	.injectdbiterrb(1'b0),
	.injectsbiterra(1'b0),
	.injectsbiterrb(1'b0),
	.regcea(1'b1),
	.regceb(1'b1),
	.rsta(1'b0),
	.rstb(1'b0),
	.sleep(1'b0),
	.wea(ram_we[3:2]),
	.web(ram_we[1:0])
);
`else	//	MCOC_RAM_16K
assign	ram_dou1[31:0]=32'h0;
`endif	//	MCOC_RAM_16K

xpm_memory_tdpram	#(
	.ADDR_WIDTH_A(12),					// DECIMAL
	.ADDR_WIDTH_B(12),					// DECIMAL
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
	.MEMORY_SIZE(8*1024*8),				// DECIMAL
	.MESSAGE_CONTROL(0),				// DECIMAL
	.READ_DATA_WIDTH_A(16),				// DECIMAL
	.READ_DATA_WIDTH_B(16),				// DECIMAL
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
	.WRITE_DATA_WIDTH_A(16),			// DECIMAL
	.WRITE_DATA_WIDTH_B(16),			// DECIMAL
	.WRITE_MODE_A("no_change"),			// String
	.WRITE_MODE_B("no_change")			// String
)
ram8k0 (
	.dbiterra(dbiterra0_open),
	.dbiterrb(dbiterrb0_open),
	.douta(ram_dou0[31:16]),
	.doutb(ram_dou0[15:0]),
	.sbiterra(sbiterra0_open),
	.sbiterrb(sbiterrb0_open),
	.addra(badr[12:1] & (~12'h1)),
	.addrb(badr[12:1] | 12'h1),
	.clka(clk),
	.clkb(clk),
	.dina(ram_din[31:16]),
	.dinb(ram_din[15:0]),
	.ena(ram_ce0),
	.enb(ram_ce0),
	.injectdbiterra(1'b0),
	.injectdbiterrb(1'b0),
	.injectsbiterra(1'b0),
	.injectsbiterrb(1'b0),
	.regcea(1'b1),
	.regceb(1'b1),
	.rsta(1'b0),
	.rstb(1'b0),
	.sleep(1'b0),
	.wea(ram_we[3:2]),
	.web(ram_we[1:0])
);

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
output	bcs_ram_n,
output	bcs_ram0_n,
output	bcs_ram1_n,
output	bcs_ram2_n,
output	bcs_ram3_n,
output	bcs_ram4_n,
output	bcs_iou_n,
output	bcs_acc_2,
output	bcs_acc_l1,
output	bcs_acc_l2,
output	bcs_sdram_n,
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
output	bcs_tled_n);


//
//	MCOC address decoder
//		(c) 2023	1YEN Toru
//
//
//	2023/07/16	ver.0.01b
//		separate bus state controller and address decoder.
//


// area
wire	bcs_extadr=(badr[23:16]!=8'h0);
assign	bcs_rom_n=(!bcs_extadr && badr[15:0]<16'h4000)? 1'b0: 1'b1;
assign	bcs_iram_n=(!bcs_extadr &&
			16'h4000<=badr[15:0] && badr[15:0]<16'h5000)? 1'b0: 1'b1;
assign	bcs_ram_n=(!bcs_extadr &&
			16'h5000<=badr[15:0] && badr[15:0]<16'hf000)? 1'b0: 1'b1;
assign	bcs_iou_n=(!bcs_extadr && 16'hf000<=badr[15:0])? 1'b0: 1'b1;
assign	bcs_acc_2=(!bcs_extadr && 16'hfff0<=badr[15:0])? 1'b1: 1'b0;
assign	bcs_acc_l1=(badr1[23:16]==8'h0 && (badr1[15:0]<16'h4000 ||
			16'h5000<=badr1[15:0] && badr1[15:0]<16'hf000))? 1'b1: 1'b0;
assign	bcs_acc_l2=(badr2[23:16]==8'h0 && (badr2[15:0]<16'h4000 ||
			16'h5000<=badr2[15:0] && badr2[15:0]<16'hf000))? 1'b1: 1'b0;
assign	bcs_sdram_n=(badr[23])? 1'b0: 1'b1;

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

`ifndef		MCOC_UART_FIFO_SIZE
`define		MCOC_UART_FIFO_SIZE		1024
`endif	//	MCOC_UART_FIFO_SIZE
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
)
fifo (
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


`ifdef		MCOC_MCVM_DUAL
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

icff_fifo	icff_fifo12 (
	.rst(icff_rst12),	// Input
	.di(icff_dati12[15:0]),	// Input
	.clk(clk),	// Input
	.we(icff_we12),	// Input
	.do(icff_dato12[15:0]),	// Output
	.re(icff_re12),	// Input
	.empty_flag(icff_empt12),	// Output
	.full_flag(icff_full12)	// Output
);

icff_fifo	icff_fifo21 (
	.rst(icff_rst21),	// Input
	.di(icff_dati21[15:0]),	// Input
	.clk(clk),	// Input
	.we(icff_we21),	// Input
	.do(icff_dato21[15:0]),	// Output
	.re(icff_re21),	// Input
	.empty_flag(icff_empt21),	// Output
	.full_flag(icff_full21)	// Output
);

endmodule
`endif	//	MCOC_MCVM_DUAL


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

fnjp_rom	from (
	.doa(fnjp_dat[63:0]),	// Output
	.addra(fnjp_adr[12:0]),	// Input
	.clka(clk),	// Input
	.rsta(~rst_n)	// Input
);

endmodule
`endif	//	MCOC_NO_FNJP


`ifdef		MCOC_NO_ADC
`else	//	MCOC_NO_ADC
module	mcoc_adc (
// 12 bit A/D converter
input	clk,
input	rst_n,
input	brdy,
input	bcmdw,
input	bcmdr,
input	bcs_adcu_n,
input	[3:0]	badr,
input	[15:0]	bdatw,
output	adc_cenr,
output	[15:0]	bdatr);


wire	[1:0]	adc_chnl;
wire	[11:0]	afe_dout;


adc124	adc (
	.clk(clk),	// Input
	.clk16m(clk16m),	// Input
	.rst_n(rst_n),	// Input
	.brdy(brdy),	// Input
	.bcmdw(bcmdw),	// Input
	.bcmdr(bcmdr),	// Input
	.bcs_adcu_n(bcs_adcu_n),	// Input
	.pll_extlock(pll_extlock),	// Input
	.badr(badr[3:0]),	// Input
	.bdatw(bdatw[15:0]),	// Input
	.adc_cenr(adc_cenr),	// Output
	.bdatr(bdatr[15:0]),	// Output
	// afe I/F
	.afe_eoc(afe_eoc),	// Input
	.afe_dout(afe_dout[11:0]),	// Input
	.adc_adce(adc_adce),	// Output
	.adc_soc(adc_soc),	// Output
	.adc_chnl(adc_chnl[1:0])	// Output
);

adc_afe		afe (
	.eoc(afe_eoc),	// Output
	.dout(afe_dout[11:0]),	// Output
	.clk(clk16m),	// Input
	.pd(~adc_adce),	// Input
	.s({1'b0,adc_chnl[1:0]}),	// Input
	.soc(adc_soc)	// Input
);

adc_pll16m	pll (
	.refclk(clk),	// Input
	.reset(~rst_n),	// Input
	.stdby(~adc_adce),	// Input
	.extlock(pll_extlock),	// Output
	.clk0_out(clk16m)	// Output
);

endmodule
`endif	//	MCOC_NO_ADC


`ifdef		MCOC_SDRAM_8M
module	mcoc_sdram (
// SDRAM unit
input	clk,
input	rst_n,
input	brdy,
input	bcs_sdram_n,
input	bcs_sdrc_n,
input	[2:0]	bcmd,
input	[22:0]	badr,
input	[15:0]	bdatw,
output	sdc_brdy,
output	[15:0]	bdatr,
// cache I/F
output	clksdc,
output	sdc_bst_enb,
output	[1:0]	sdc_bst_adr,
output	[31:0]	sdc_bst_dat);


wire	[1:0]	sdc_ba;
wire	[3:0]	sdc_dqm;
wire	[10:0]	sdc_addr;
wire	[31:0]	sdc_dqi;
wire	[31:0]	sdc_dqo;
wire	[31:0]	sdc_dq;


// SDRAM controller
sdramc8m	sdrc (
	.clk(clk),	// Input
	.clksdc(clksdc),	// Input
	.rst_n(rst_n),	// Input
	.pll_extlock(pll_extlock),	// Input
	.brdy(brdy),	// Input
	.bcs_sdram_n(bcs_sdram_n),	// Input
	.bcs_sdrc_n(bcs_sdrc_n),	// Input
	.bcmd(bcmd[2:0]),	// Input
	.bdatw(bdatw[15:0]),	// Input
	.badr(badr[22:0]),	// Input
	.sdc_brdy(sdc_brdy),	// Output
	.bdatr(bdatr[15:0]),	// Output
	// cache I/F
	.sdc_bst_enb(sdc_bst_enb),	// Output
	.sdc_bst_adr(sdc_bst_adr[1:0]),	// Output
	.sdc_bst_dat(sdc_bst_dat[31:0]),	// Output
	// sdram I/F
	.sdc_dqi(sdc_dqi[31:0]),	// Input
    .sdc_dqie(sdc_dqie),	// Output
    .sdc_dqoe(sdc_dqoe),	// Output
    .sdc_cs_n(sdc_cs_n),	// Output
    .sdc_ras_n(sdc_ras_n),	// Output
    .sdc_cas_n(sdc_cas_n),	// Output
    .sdc_we_n(sdc_we_n),	// Output
    .sdc_ba(sdc_ba[1:0]),	// Output
    .sdc_dqm(sdc_dqm[3:0]),	// Output
    .sdc_addr(sdc_addr[10:0]),	// Output
    .sdc_dqo(sdc_dqo[31:0])	// Output
);

// DQ
assign	sdc_dqi[31:0]=(sdc_dqie)? sdc_dq[31:0]: 32'h0;
assign	sdc_dq[31:0]=(sdc_dqoe)? sdc_dqo[31:0]: 32'hz;

// phase shift prescaler (clksdc_r_X: phase delay X degrees from clk)
reg		[2:0]	lat_clk_s;
reg		clksdc_r_45;
reg		clksdc_r_90;
reg		clksdc_r_135;
reg		clksdc_r_180;
reg		clksdc_r_225;
reg		clksdc_r_270;
reg		clksdc_r_315;
reg		clksdc_r_360;
reg		[1:0]	ps_cnt;
reg		[3:0]	ph_cnt;
always	@(negedge clkmul4)
	begin
		// base clock latch
		lat_clk_s[2:0]<={ lat_clk_s[1:0],clk };

		// clk:clkmul4 phase counter
		if (!lat_clk_s[2] && lat_clk_s[1])
			ph_cnt[3:0]<=4'h2;
		else
			ph_cnt[3:0]<=ph_cnt[3:0] + 4'h1;

		// sdram clock prescaler
		if (ph_cnt[3:0]==4'hf)
			ps_cnt[1:0]<=2'h0;
		else
			ps_cnt[1:0]<=ps_cnt[1:0] + 2'h1;

		// root clock for clksdc
		if (ps_cnt[1:0]==2'h3)
			clksdc_r_45<=1'b1;
		else if (ps_cnt[1:0]==2'h1)
			clksdc_r_45<=1'b0;
	end
// fine phase shift
always	@(posedge clkmul4)
	begin
		clksdc_r_90<=clksdc_r_45;		// ATTN! 1/2 phase transfer
		clksdc_r_180<=clksdc_r_90;
		clksdc_r_270<=clksdc_r_180;
		clksdc_r_360<=clksdc_r_270;
	end
always	@(negedge clkmul4)
	begin
		clksdc_r_135<=clksdc_r_45;
//		clksdc_r_135<=clksdc_r_90;		// ATTN! 1/2 phase transfer
		clksdc_r_225<=clksdc_r_135;
		clksdc_r_315<=clksdc_r_225;
	end

// clock buffer
EG_LOGIC_BUFG	sdcroot (
	.i(clksdc_r_180),	// Input
	.o(clksdc)	// Output
);

EG_LOGIC_BUFG	sdrroot (
	.i(clksdc_r_90),	// Input
	.o(clksdr)	// Output
);

// PLL
sdc_pll		sdpll (
	.refclk(clk),	// Input
	.reset(~rst_n),	// Input
	.extlock(pll_extlock),	// Output
	.clk0_out(clkmul4)	// Output
);

// SDRAM
sdc_sdram	sdrm (
	.clk(clksdr),	// Input
	.ras_n(sdc_ras_n),	// Input
	.cas_n(sdc_cas_n),	// Input
	.we_n(sdc_we_n),	// Input
	.addr(sdc_addr[10:0]),	// Input
	.ba(sdc_ba[1:0]),	// Input
	.dq(sdc_dq[31:0]),	// InOut
	.cs_n(sdc_cs_n),	// Input
	.dm0(sdc_dqm[0]),	// Input
	.dm1(sdc_dqm[1]),	// Input
	.dm2(sdc_dqm[2]),	// Input
	.dm3(sdc_dqm[3]),	// Input
	.cke(1'b1)	// Input
);

endmodule
`endif	//	MCOC_SDRAM_8M


`ifdef		MCOC_CACHE_4K
module	mcoc_cache (
// Cache memory unit
input	clk,
input	rst_n,
input	brdy,
input	bcs_sdram_n,
input	bcs_sdrc_n,
input	[2:0]	bcmd,
input	[23:0]	badr,
input	[15:0]	bdatw,
output	cch_hit,
output	cch_sdram_n,
output	[2:0]	cch_bcmd,
output	[15:0]	bdatr,
// cache I/F
input	clksdc,
input	sdc_bst_enb,
input	[1:0]	sdc_bst_adr,
input	[31:0]	sdc_bst_dat);


wire	[2:0]	cch_bcmd;
wire	[7:0]	cch_bst_adr;
wire	[15:0]	cch_da_datr;
wire	[1:0]	cch_da_we;
wire	[10:0]	cch_da_adr;
wire	[15:0]	cch_da_datw;
wire	[31:0]	dob_open;


// cache controller
cache2w4k	cchc (
	.clk(clk),	// Input
	.rst_n(rst_n),	// Input
	.brdy(brdy),	// Input
	.bcs_sdram_n(bcs_sdram_n),	// Input
	.bcs_sdrc_n(bcs_sdrc_n),	// Input
	.bcmd(bcmd[2:0]),	// Input
	.bdatw(bdatw[15:0]),	// Input
	.badr(badr[23:0]),	// Input
	.cch_hit(cch_hit),	// Output
	.cch_sdram_n(cch_sdram_n),	// Output
	.cch_bcmd(cch_bcmd[2:0]),	// Output
	.bdatr(bdatr[15:0]),	// Output
	// data array I/F
	.cch_da_datr(cch_da_datr[15:0]),	// Input
	.cch_da_ce(cch_da_ce),	// Output
	.cch_da_we(cch_da_we[1:0]),	// Output
	.cch_bst_adr(cch_bst_adr[7:0]),	// Output
	.cch_da_adr(cch_da_adr[10:0]),	// Output
	.cch_da_datw(cch_da_datw[15:0])	// Output
);

// data array RAM
cch_datary	cdaram (
	.doa(cch_da_datr[15:0]),	// Output
	.dia(cch_da_datw[15:0]),	// Input
	.addra(cch_da_adr[10:0]),	// Input
	.cea(cch_da_ce),	// Input
	.clka(clk),	// Input
	.wea(cch_da_we[1:0]),	// Input
	.dob(dob_open[31:0]),	// Output
	.dib({ sdc_bst_dat[15:0],sdc_bst_dat[31:16] }),	// Input
	.addrb({ cch_bst_adr[7:0],sdc_bst_adr[1:0] }),	// Input
	.ceb(sdc_bst_enb),	// Input
	.clkb(clksdc),	// Input
	.web({4{ sdc_bst_enb }})	// Input
);

endmodule
`endif	//	MCOC_CACHE_4K


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
wire	[10:0]	ulut_adr0;
wire	[10:0]	ulut_adr1;
wire	[95:0]	ulut_dat0;
wire	[95:0]	ulut_dat1;


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
	.ulut_dat0(ulut_dat0[95:0]),	// Input
	.ulut_dat1(ulut_dat1[95:0]),	// Input
	.ulut_adr0(ulut_adr0[10:0]),	// Output
	.ulut_adr1(ulut_adr1[10:0])	// Output
);

unsj_rom	ulut (
	.doa(ulut_dat0[95:0]),	// Output
	.addra(ulut_adr0[10:0]),	// Input
	.clka(clk),	// Input
	.rsta(~rst_n),	// Input
	.dob(ulut_dat1[95:0]),	// Output
	.addrb(ulut_adr1[10:0]),	// Input
	.clkb(clk),	// Input
	.rstb(~rst_n)	// Input
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
