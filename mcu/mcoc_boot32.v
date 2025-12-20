module	mcoc_boot32 (
// boot rom 32 bit
input	clk,
input	rst_n,
input	[1:0]	fcmd,
input	[15:0]	fadr,
output	reg		[31:0]	fdat);


wire	[31:0]	rom_dat;


// boot rom: read latency 0
`ifdef		MCOC_CORE_TS
mcoc_boot_ts		matbt (
	.adr(fadr[8:2]),	// Input
	.dat(rom_dat[31:0])	// Output
);
`else	//	MCOC_CORE_TS
mcoc_boot	matbt (
	.adr(fadr[7:2]),	// Input
	.dat(rom_dat[31:0])	// Output
);
`endif	//	MCOC_CORE_TS

// rom data, read latency 1
wire	fcmdl=fcmd[1];
wire	fcmdr=fcmd[0];
always	@(posedge clk)
	begin
		if (!rst_n)
			fdat[31:0]<=32'h0;
		else
			fdat[31:0]<=
				(fcmdl)? rom_dat[31:0]:
				(!fadr[1])? { 16'h0,rom_dat[31:16] }: { 16'h0,rom_dat[15:0] };
	end

endmodule
