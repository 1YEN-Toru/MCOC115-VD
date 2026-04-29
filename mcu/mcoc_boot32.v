module	mcoc_boot32 (
// boot rom 32 bit
input	clk,
input	rst_n,
input	[2:0]	fcmd,
input	[15:0]	fadr,
output	reg		[31:0]	fdat);


wire	fcmdb=fcmd[2];
wire	fcmdl=fcmd[1];
wire	fcmdr=fcmd[0];
wire	[31:0]	rom_dat;


// boot rom: read latency 0
`ifdef		MCOC_CORE_SM
mcoc_boot_sm	matbt (
	.clk(clk),	// Input
	.rst_n(rst_n),	// Input
	.rl0(1'b1),	// Input
	.sel_n(1'b0),	// Input
	.cmdb(1'b0),	// Input
	.cmdl(1'b1),	// Input
	.adr(fadr[15:0]),	// Input
	.dat(rom_dat[31:0])	// Output
);
`elsif		MCOC_CORE_TS
mcoc_boot_ts		matbt (
	.adr(fadr[8:2]),	// Input
	.dat(rom_dat[31:0])	// Output
);
`else
mcoc_boot	matbt (
	.adr(fadr[7:2]),	// Input
	.dat(rom_dat[31:0])	// Output
);
`endif

// rom data, read latency 0
wire	[7:0]	rom_by=
		(fadr[1:0]==2'h0)? rom_dat[31:24]:
		(fadr[1:0]==2'h1)? rom_dat[23:16]:
		(fadr[1:0]==2'h2)? rom_dat[15:8]: rom_dat[7:0];
wire	[15:0]	rom_wd=(!fadr[1])? rom_dat[31:16]: rom_dat[15:0];
wire	[31:0]	rom_rl0=
		(fcmdl)? rom_dat[31:0]:
		(fcmdb)? { 16'h0,rom_by[7:0],rom_by[7:0] }:
			{ 16'h0,rom_wd[15:0] };

// rom data, read latency 1
always	@(posedge clk)
	begin
		if (!rst_n || !fcmdr)
			fdat[31:0]<=32'h0;
		else
			fdat[31:0]<=rom_rl0[31:0];
	end

endmodule
