module	IS61WV5128BLL (
// IS61WV5128BLL behavior model
input	CEN,
input	OEN,
input	WEN,
input	[18:0]	AD,
inout	[7:0]	DQ);


//
//	IS61WV5128BLL (SRAM 512KB) behavior model
//		(c) 2023	1YEN Toru
//
//
//	2023/12/16	ver.1.00
//


// memory array
reg		[7:0]	mem[0:512*1024 - 1];

// write data
always	@(WEN or CEN or AD[18:0] or DQ[7:0])
	begin
		if (!CEN && !WEN)
			mem[AD[18:0]][7:0]<=DQ[7:0];
	end

// read data
assign	DQ[7:0]=(!CEN && !OEN && WEN)? mem[AD[18:0]][7:0]: 8'hz;


endmodule

