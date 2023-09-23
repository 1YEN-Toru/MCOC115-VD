
(* STRUCTURAL_NETLIST = "yes" *)
module rom_wrap32d
   (clk,
    rst_n,
    bootmd,
    brdy,
    bcmdr,
    bcmdw,
    bcmdl,
    bmst,
    bcs_rom_n,
    fcmdl,
    badr,
    fadr1,
    fadr2,
    rom_we,
    bdatr,
    fdat1,
    fdat2,
    rom_dat1,
    rom_dat2,
    rom_adr1,
    rom_adr2);
//
//	32 bit instruction ROM wrapper
//		(c) 2022	1YEN Toru
//
//
//	2023/09/23	ver.1.06
//		change instruction fetch latency: 0 => 1
//
//	2023/03/11	ver.1.04
//		corresponding to 32 bit memory bus
//
//	2022/06/11	ver.1.02
//		corresponding to dual core cpu
//		module name changed: rom_wrap32d (dual core edition)
//
//	2022/05/21	ver.1.00
//		32 bit fetch bus for super-scalar edition cpu core
//
  input clk;
  input rst_n;
  input bootmd;
  input brdy;
  input bcmdr;
  input bcmdw;
  input bcmdl;
  input bmst;
  input bcs_rom_n;
  input fcmdl;
  input [15:0]badr;
  input [15:0]fadr1;
  input [15:0]fadr2;
  output rom_we;
  output [31:0]bdatr;
  output [31:0]fdat1;
  output [31:0]fdat2;
  input [31:0]rom_dat1;
  input [31:0]rom_dat2;
  output [15:0]rom_adr1;
  output [15:0]rom_adr2;

  wire \<const0> ;
  wire \<const1> ;
  wire [15:0]badr;
  wire badr_1b;
  wire badr_1b_i_1_n_0;
  wire bcmd_lb;
  wire bcmd_lb_i_1_n_0;
  wire bcmdl;
  wire bcmdr;
  wire bcmdw;
  wire bcs_rom_n;
  wire [31:0]bdatr;
  wire \bdatr[15]_INST_0_i_2_n_0 ;
  wire bmst;
  wire bootmd;
  wire brdy;
  wire clk;
  wire [15:0]fadr1;
  wire fadr1_1b;
  wire fadr1_1b_i_1_n_0;
  wire [15:0]fadr2;
  wire fadr2_1b;
  wire fadr2_1b_i_1_n_0;
  wire fcmdl;
  wire [31:0]fdat1;
  wire [31:0]fdat2;
  wire [31:16]rdat;
  wire [15:0]rom_adr1;
  wire rom_adr12;
  wire [15:0]rom_adr2;
  wire rom_adr22;
  wire [31:0]rom_dat1;
  wire [31:0]rom_dat2;
  wire rom_drv;
  wire rom_drv_i_1_n_0;
  wire rom_we;
  wire rst_n;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT4 #(
    .INIT(16'hE200)) 
    badr_1b_i_1
       (.I0(badr_1b),
        .I1(brdy),
        .I2(badr[1]),
        .I3(rst_n),
        .O(badr_1b_i_1_n_0));
  FDRE badr_1b_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(badr_1b_i_1_n_0),
        .Q(badr_1b),
        .R(\<const0> ));
  LUT4 #(
    .INIT(16'hE200)) 
    bcmd_lb_i_1
       (.I0(bcmd_lb),
        .I1(brdy),
        .I2(bcmdl),
        .I3(rst_n),
        .O(bcmd_lb_i_1_n_0));
  FDRE bcmd_lb_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(bcmd_lb_i_1_n_0),
        .Q(bcmd_lb),
        .R(\<const0> ));
  LUT6 #(
    .INIT(64'hA8A8A8080808A808)) 
    \bdatr[0]_INST_0 
       (.I0(rom_drv),
        .I1(rdat[16]),
        .I2(\bdatr[15]_INST_0_i_2_n_0 ),
        .I3(rom_dat1[0]),
        .I4(bmst),
        .I5(rom_dat2[0]),
        .O(bdatr[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bdatr[0]_INST_0_i_1 
       (.I0(rom_dat2[16]),
        .I1(bmst),
        .I2(rom_dat1[16]),
        .O(rdat[16]));
  LUT6 #(
    .INIT(64'hA8A8A8080808A808)) 
    \bdatr[10]_INST_0 
       (.I0(rom_drv),
        .I1(rdat[26]),
        .I2(\bdatr[15]_INST_0_i_2_n_0 ),
        .I3(rom_dat1[10]),
        .I4(bmst),
        .I5(rom_dat2[10]),
        .O(bdatr[10]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bdatr[10]_INST_0_i_1 
       (.I0(rom_dat2[26]),
        .I1(bmst),
        .I2(rom_dat1[26]),
        .O(rdat[26]));
  LUT6 #(
    .INIT(64'hA8A8A8080808A808)) 
    \bdatr[11]_INST_0 
       (.I0(rom_drv),
        .I1(rdat[27]),
        .I2(\bdatr[15]_INST_0_i_2_n_0 ),
        .I3(rom_dat1[11]),
        .I4(bmst),
        .I5(rom_dat2[11]),
        .O(bdatr[11]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bdatr[11]_INST_0_i_1 
       (.I0(rom_dat2[27]),
        .I1(bmst),
        .I2(rom_dat1[27]),
        .O(rdat[27]));
  LUT6 #(
    .INIT(64'hA8A8A8080808A808)) 
    \bdatr[12]_INST_0 
       (.I0(rom_drv),
        .I1(rdat[28]),
        .I2(\bdatr[15]_INST_0_i_2_n_0 ),
        .I3(rom_dat1[12]),
        .I4(bmst),
        .I5(rom_dat2[12]),
        .O(bdatr[12]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bdatr[12]_INST_0_i_1 
       (.I0(rom_dat2[28]),
        .I1(bmst),
        .I2(rom_dat1[28]),
        .O(rdat[28]));
  LUT6 #(
    .INIT(64'hA8A8A8080808A808)) 
    \bdatr[13]_INST_0 
       (.I0(rom_drv),
        .I1(rdat[29]),
        .I2(\bdatr[15]_INST_0_i_2_n_0 ),
        .I3(rom_dat1[13]),
        .I4(bmst),
        .I5(rom_dat2[13]),
        .O(bdatr[13]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bdatr[13]_INST_0_i_1 
       (.I0(rom_dat2[29]),
        .I1(bmst),
        .I2(rom_dat1[29]),
        .O(rdat[29]));
  LUT6 #(
    .INIT(64'hA8A8A8080808A808)) 
    \bdatr[14]_INST_0 
       (.I0(rom_drv),
        .I1(rdat[30]),
        .I2(\bdatr[15]_INST_0_i_2_n_0 ),
        .I3(rom_dat1[14]),
        .I4(bmst),
        .I5(rom_dat2[14]),
        .O(bdatr[14]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bdatr[14]_INST_0_i_1 
       (.I0(rom_dat2[30]),
        .I1(bmst),
        .I2(rom_dat1[30]),
        .O(rdat[30]));
  LUT6 #(
    .INIT(64'hA8A8A8080808A808)) 
    \bdatr[15]_INST_0 
       (.I0(rom_drv),
        .I1(rdat[31]),
        .I2(\bdatr[15]_INST_0_i_2_n_0 ),
        .I3(rom_dat1[15]),
        .I4(bmst),
        .I5(rom_dat2[15]),
        .O(bdatr[15]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bdatr[15]_INST_0_i_1 
       (.I0(rom_dat2[31]),
        .I1(bmst),
        .I2(rom_dat1[31]),
        .O(rdat[31]));
  LUT2 #(
    .INIT(4'hE)) 
    \bdatr[15]_INST_0_i_2 
       (.I0(badr_1b),
        .I1(bcmd_lb),
        .O(\bdatr[15]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h88800080)) 
    \bdatr[16]_INST_0 
       (.I0(bcmd_lb),
        .I1(rom_drv),
        .I2(rom_dat1[16]),
        .I3(bmst),
        .I4(rom_dat2[16]),
        .O(bdatr[16]));
  LUT5 #(
    .INIT(32'h88800080)) 
    \bdatr[17]_INST_0 
       (.I0(bcmd_lb),
        .I1(rom_drv),
        .I2(rom_dat1[17]),
        .I3(bmst),
        .I4(rom_dat2[17]),
        .O(bdatr[17]));
  LUT5 #(
    .INIT(32'h88800080)) 
    \bdatr[18]_INST_0 
       (.I0(bcmd_lb),
        .I1(rom_drv),
        .I2(rom_dat1[18]),
        .I3(bmst),
        .I4(rom_dat2[18]),
        .O(bdatr[18]));
  LUT5 #(
    .INIT(32'h88800080)) 
    \bdatr[19]_INST_0 
       (.I0(bcmd_lb),
        .I1(rom_drv),
        .I2(rom_dat1[19]),
        .I3(bmst),
        .I4(rom_dat2[19]),
        .O(bdatr[19]));
  LUT6 #(
    .INIT(64'hA8A8A8080808A808)) 
    \bdatr[1]_INST_0 
       (.I0(rom_drv),
        .I1(rdat[17]),
        .I2(\bdatr[15]_INST_0_i_2_n_0 ),
        .I3(rom_dat1[1]),
        .I4(bmst),
        .I5(rom_dat2[1]),
        .O(bdatr[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bdatr[1]_INST_0_i_1 
       (.I0(rom_dat2[17]),
        .I1(bmst),
        .I2(rom_dat1[17]),
        .O(rdat[17]));
  LUT5 #(
    .INIT(32'h88800080)) 
    \bdatr[20]_INST_0 
       (.I0(bcmd_lb),
        .I1(rom_drv),
        .I2(rom_dat1[20]),
        .I3(bmst),
        .I4(rom_dat2[20]),
        .O(bdatr[20]));
  LUT5 #(
    .INIT(32'h88800080)) 
    \bdatr[21]_INST_0 
       (.I0(bcmd_lb),
        .I1(rom_drv),
        .I2(rom_dat1[21]),
        .I3(bmst),
        .I4(rom_dat2[21]),
        .O(bdatr[21]));
  LUT5 #(
    .INIT(32'h88800080)) 
    \bdatr[22]_INST_0 
       (.I0(bcmd_lb),
        .I1(rom_drv),
        .I2(rom_dat1[22]),
        .I3(bmst),
        .I4(rom_dat2[22]),
        .O(bdatr[22]));
  LUT5 #(
    .INIT(32'h88800080)) 
    \bdatr[23]_INST_0 
       (.I0(bcmd_lb),
        .I1(rom_drv),
        .I2(rom_dat1[23]),
        .I3(bmst),
        .I4(rom_dat2[23]),
        .O(bdatr[23]));
  LUT5 #(
    .INIT(32'h88800080)) 
    \bdatr[24]_INST_0 
       (.I0(bcmd_lb),
        .I1(rom_drv),
        .I2(rom_dat1[24]),
        .I3(bmst),
        .I4(rom_dat2[24]),
        .O(bdatr[24]));
  LUT5 #(
    .INIT(32'h88800080)) 
    \bdatr[25]_INST_0 
       (.I0(bcmd_lb),
        .I1(rom_drv),
        .I2(rom_dat1[25]),
        .I3(bmst),
        .I4(rom_dat2[25]),
        .O(bdatr[25]));
  LUT5 #(
    .INIT(32'h88800080)) 
    \bdatr[26]_INST_0 
       (.I0(bcmd_lb),
        .I1(rom_drv),
        .I2(rom_dat1[26]),
        .I3(bmst),
        .I4(rom_dat2[26]),
        .O(bdatr[26]));
  LUT5 #(
    .INIT(32'h88800080)) 
    \bdatr[27]_INST_0 
       (.I0(bcmd_lb),
        .I1(rom_drv),
        .I2(rom_dat1[27]),
        .I3(bmst),
        .I4(rom_dat2[27]),
        .O(bdatr[27]));
  LUT5 #(
    .INIT(32'h88800080)) 
    \bdatr[28]_INST_0 
       (.I0(bcmd_lb),
        .I1(rom_drv),
        .I2(rom_dat1[28]),
        .I3(bmst),
        .I4(rom_dat2[28]),
        .O(bdatr[28]));
  LUT5 #(
    .INIT(32'h88800080)) 
    \bdatr[29]_INST_0 
       (.I0(bcmd_lb),
        .I1(rom_drv),
        .I2(rom_dat1[29]),
        .I3(bmst),
        .I4(rom_dat2[29]),
        .O(bdatr[29]));
  LUT6 #(
    .INIT(64'hA8A8A8080808A808)) 
    \bdatr[2]_INST_0 
       (.I0(rom_drv),
        .I1(rdat[18]),
        .I2(\bdatr[15]_INST_0_i_2_n_0 ),
        .I3(rom_dat1[2]),
        .I4(bmst),
        .I5(rom_dat2[2]),
        .O(bdatr[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bdatr[2]_INST_0_i_1 
       (.I0(rom_dat2[18]),
        .I1(bmst),
        .I2(rom_dat1[18]),
        .O(rdat[18]));
  LUT5 #(
    .INIT(32'h88800080)) 
    \bdatr[30]_INST_0 
       (.I0(bcmd_lb),
        .I1(rom_drv),
        .I2(rom_dat1[30]),
        .I3(bmst),
        .I4(rom_dat2[30]),
        .O(bdatr[30]));
  LUT5 #(
    .INIT(32'h88800080)) 
    \bdatr[31]_INST_0 
       (.I0(bcmd_lb),
        .I1(rom_drv),
        .I2(rom_dat1[31]),
        .I3(bmst),
        .I4(rom_dat2[31]),
        .O(bdatr[31]));
  LUT6 #(
    .INIT(64'hA8A8A8080808A808)) 
    \bdatr[3]_INST_0 
       (.I0(rom_drv),
        .I1(rdat[19]),
        .I2(\bdatr[15]_INST_0_i_2_n_0 ),
        .I3(rom_dat1[3]),
        .I4(bmst),
        .I5(rom_dat2[3]),
        .O(bdatr[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bdatr[3]_INST_0_i_1 
       (.I0(rom_dat2[19]),
        .I1(bmst),
        .I2(rom_dat1[19]),
        .O(rdat[19]));
  LUT6 #(
    .INIT(64'hA8A8A8080808A808)) 
    \bdatr[4]_INST_0 
       (.I0(rom_drv),
        .I1(rdat[20]),
        .I2(\bdatr[15]_INST_0_i_2_n_0 ),
        .I3(rom_dat1[4]),
        .I4(bmst),
        .I5(rom_dat2[4]),
        .O(bdatr[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bdatr[4]_INST_0_i_1 
       (.I0(rom_dat2[20]),
        .I1(bmst),
        .I2(rom_dat1[20]),
        .O(rdat[20]));
  LUT6 #(
    .INIT(64'hA8A8A8080808A808)) 
    \bdatr[5]_INST_0 
       (.I0(rom_drv),
        .I1(rdat[21]),
        .I2(\bdatr[15]_INST_0_i_2_n_0 ),
        .I3(rom_dat1[5]),
        .I4(bmst),
        .I5(rom_dat2[5]),
        .O(bdatr[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bdatr[5]_INST_0_i_1 
       (.I0(rom_dat2[21]),
        .I1(bmst),
        .I2(rom_dat1[21]),
        .O(rdat[21]));
  LUT6 #(
    .INIT(64'hA8A8A8080808A808)) 
    \bdatr[6]_INST_0 
       (.I0(rom_drv),
        .I1(rdat[22]),
        .I2(\bdatr[15]_INST_0_i_2_n_0 ),
        .I3(rom_dat1[6]),
        .I4(bmst),
        .I5(rom_dat2[6]),
        .O(bdatr[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bdatr[6]_INST_0_i_1 
       (.I0(rom_dat2[22]),
        .I1(bmst),
        .I2(rom_dat1[22]),
        .O(rdat[22]));
  LUT6 #(
    .INIT(64'hA8A8A8080808A808)) 
    \bdatr[7]_INST_0 
       (.I0(rom_drv),
        .I1(rdat[23]),
        .I2(\bdatr[15]_INST_0_i_2_n_0 ),
        .I3(rom_dat1[7]),
        .I4(bmst),
        .I5(rom_dat2[7]),
        .O(bdatr[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bdatr[7]_INST_0_i_1 
       (.I0(rom_dat2[23]),
        .I1(bmst),
        .I2(rom_dat1[23]),
        .O(rdat[23]));
  LUT6 #(
    .INIT(64'hA8A8A8080808A808)) 
    \bdatr[8]_INST_0 
       (.I0(rom_drv),
        .I1(rdat[24]),
        .I2(\bdatr[15]_INST_0_i_2_n_0 ),
        .I3(rom_dat1[8]),
        .I4(bmst),
        .I5(rom_dat2[8]),
        .O(bdatr[8]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bdatr[8]_INST_0_i_1 
       (.I0(rom_dat2[24]),
        .I1(bmst),
        .I2(rom_dat1[24]),
        .O(rdat[24]));
  LUT6 #(
    .INIT(64'hA8A8A8080808A808)) 
    \bdatr[9]_INST_0 
       (.I0(rom_drv),
        .I1(rdat[25]),
        .I2(\bdatr[15]_INST_0_i_2_n_0 ),
        .I3(rom_dat1[9]),
        .I4(bmst),
        .I5(rom_dat2[9]),
        .O(bdatr[9]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bdatr[9]_INST_0_i_1 
       (.I0(rom_dat2[25]),
        .I1(bmst),
        .I2(rom_dat1[25]),
        .O(rdat[25]));
  LUT2 #(
    .INIT(4'h8)) 
    fadr1_1b_i_1
       (.I0(fadr1[1]),
        .I1(rst_n),
        .O(fadr1_1b_i_1_n_0));
  FDRE fadr1_1b_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(fadr1_1b_i_1_n_0),
        .Q(fadr1_1b),
        .R(\<const0> ));
  LUT2 #(
    .INIT(4'h8)) 
    fadr2_1b_i_1
       (.I0(fadr2[1]),
        .I1(rst_n),
        .O(fadr2_1b_i_1_n_0));
  FDRE fadr2_1b_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(fadr2_1b_i_1_n_0),
        .Q(fadr2_1b),
        .R(\<const0> ));
  LUT4 #(
    .INIT(16'hABA8)) 
    \fdat1[0]_INST_0 
       (.I0(rom_dat1[0]),
        .I1(fadr1_1b),
        .I2(fcmdl),
        .I3(rom_dat1[16]),
        .O(fdat1[0]));
  LUT4 #(
    .INIT(16'hABA8)) 
    \fdat1[10]_INST_0 
       (.I0(rom_dat1[10]),
        .I1(fadr1_1b),
        .I2(fcmdl),
        .I3(rom_dat1[26]),
        .O(fdat1[10]));
  LUT4 #(
    .INIT(16'hABA8)) 
    \fdat1[11]_INST_0 
       (.I0(rom_dat1[11]),
        .I1(fadr1_1b),
        .I2(fcmdl),
        .I3(rom_dat1[27]),
        .O(fdat1[11]));
  LUT4 #(
    .INIT(16'hABA8)) 
    \fdat1[12]_INST_0 
       (.I0(rom_dat1[12]),
        .I1(fadr1_1b),
        .I2(fcmdl),
        .I3(rom_dat1[28]),
        .O(fdat1[12]));
  LUT4 #(
    .INIT(16'hABA8)) 
    \fdat1[13]_INST_0 
       (.I0(rom_dat1[13]),
        .I1(fadr1_1b),
        .I2(fcmdl),
        .I3(rom_dat1[29]),
        .O(fdat1[13]));
  LUT4 #(
    .INIT(16'hABA8)) 
    \fdat1[14]_INST_0 
       (.I0(rom_dat1[14]),
        .I1(fadr1_1b),
        .I2(fcmdl),
        .I3(rom_dat1[30]),
        .O(fdat1[14]));
  LUT4 #(
    .INIT(16'hABA8)) 
    \fdat1[15]_INST_0 
       (.I0(rom_dat1[15]),
        .I1(fadr1_1b),
        .I2(fcmdl),
        .I3(rom_dat1[31]),
        .O(fdat1[15]));
  LUT2 #(
    .INIT(4'h8)) 
    \fdat1[16]_INST_0 
       (.I0(fcmdl),
        .I1(rom_dat1[16]),
        .O(fdat1[16]));
  LUT2 #(
    .INIT(4'h8)) 
    \fdat1[17]_INST_0 
       (.I0(fcmdl),
        .I1(rom_dat1[17]),
        .O(fdat1[17]));
  LUT2 #(
    .INIT(4'h8)) 
    \fdat1[18]_INST_0 
       (.I0(fcmdl),
        .I1(rom_dat1[18]),
        .O(fdat1[18]));
  LUT2 #(
    .INIT(4'h8)) 
    \fdat1[19]_INST_0 
       (.I0(fcmdl),
        .I1(rom_dat1[19]),
        .O(fdat1[19]));
  LUT4 #(
    .INIT(16'hABA8)) 
    \fdat1[1]_INST_0 
       (.I0(rom_dat1[1]),
        .I1(fadr1_1b),
        .I2(fcmdl),
        .I3(rom_dat1[17]),
        .O(fdat1[1]));
  LUT2 #(
    .INIT(4'h8)) 
    \fdat1[20]_INST_0 
       (.I0(fcmdl),
        .I1(rom_dat1[20]),
        .O(fdat1[20]));
  LUT2 #(
    .INIT(4'h8)) 
    \fdat1[21]_INST_0 
       (.I0(fcmdl),
        .I1(rom_dat1[21]),
        .O(fdat1[21]));
  LUT2 #(
    .INIT(4'h8)) 
    \fdat1[22]_INST_0 
       (.I0(fcmdl),
        .I1(rom_dat1[22]),
        .O(fdat1[22]));
  LUT2 #(
    .INIT(4'h8)) 
    \fdat1[23]_INST_0 
       (.I0(fcmdl),
        .I1(rom_dat1[23]),
        .O(fdat1[23]));
  LUT2 #(
    .INIT(4'h8)) 
    \fdat1[24]_INST_0 
       (.I0(fcmdl),
        .I1(rom_dat1[24]),
        .O(fdat1[24]));
  LUT2 #(
    .INIT(4'h8)) 
    \fdat1[25]_INST_0 
       (.I0(fcmdl),
        .I1(rom_dat1[25]),
        .O(fdat1[25]));
  LUT2 #(
    .INIT(4'h8)) 
    \fdat1[26]_INST_0 
       (.I0(fcmdl),
        .I1(rom_dat1[26]),
        .O(fdat1[26]));
  LUT2 #(
    .INIT(4'h8)) 
    \fdat1[27]_INST_0 
       (.I0(fcmdl),
        .I1(rom_dat1[27]),
        .O(fdat1[27]));
  LUT2 #(
    .INIT(4'h8)) 
    \fdat1[28]_INST_0 
       (.I0(fcmdl),
        .I1(rom_dat1[28]),
        .O(fdat1[28]));
  LUT2 #(
    .INIT(4'h8)) 
    \fdat1[29]_INST_0 
       (.I0(fcmdl),
        .I1(rom_dat1[29]),
        .O(fdat1[29]));
  LUT4 #(
    .INIT(16'hABA8)) 
    \fdat1[2]_INST_0 
       (.I0(rom_dat1[2]),
        .I1(fadr1_1b),
        .I2(fcmdl),
        .I3(rom_dat1[18]),
        .O(fdat1[2]));
  LUT2 #(
    .INIT(4'h8)) 
    \fdat1[30]_INST_0 
       (.I0(fcmdl),
        .I1(rom_dat1[30]),
        .O(fdat1[30]));
  LUT2 #(
    .INIT(4'h8)) 
    \fdat1[31]_INST_0 
       (.I0(fcmdl),
        .I1(rom_dat1[31]),
        .O(fdat1[31]));
  LUT4 #(
    .INIT(16'hABA8)) 
    \fdat1[3]_INST_0 
       (.I0(rom_dat1[3]),
        .I1(fadr1_1b),
        .I2(fcmdl),
        .I3(rom_dat1[19]),
        .O(fdat1[3]));
  LUT4 #(
    .INIT(16'hABA8)) 
    \fdat1[4]_INST_0 
       (.I0(rom_dat1[4]),
        .I1(fadr1_1b),
        .I2(fcmdl),
        .I3(rom_dat1[20]),
        .O(fdat1[4]));
  LUT4 #(
    .INIT(16'hABA8)) 
    \fdat1[5]_INST_0 
       (.I0(rom_dat1[5]),
        .I1(fadr1_1b),
        .I2(fcmdl),
        .I3(rom_dat1[21]),
        .O(fdat1[5]));
  LUT4 #(
    .INIT(16'hABA8)) 
    \fdat1[6]_INST_0 
       (.I0(rom_dat1[6]),
        .I1(fadr1_1b),
        .I2(fcmdl),
        .I3(rom_dat1[22]),
        .O(fdat1[6]));
  LUT4 #(
    .INIT(16'hABA8)) 
    \fdat1[7]_INST_0 
       (.I0(rom_dat1[7]),
        .I1(fadr1_1b),
        .I2(fcmdl),
        .I3(rom_dat1[23]),
        .O(fdat1[7]));
  LUT4 #(
    .INIT(16'hABA8)) 
    \fdat1[8]_INST_0 
       (.I0(rom_dat1[8]),
        .I1(fadr1_1b),
        .I2(fcmdl),
        .I3(rom_dat1[24]),
        .O(fdat1[8]));
  LUT4 #(
    .INIT(16'hABA8)) 
    \fdat1[9]_INST_0 
       (.I0(rom_dat1[9]),
        .I1(fadr1_1b),
        .I2(fcmdl),
        .I3(rom_dat1[25]),
        .O(fdat1[9]));
  LUT4 #(
    .INIT(16'hABA8)) 
    \fdat2[0]_INST_0 
       (.I0(rom_dat2[0]),
        .I1(fadr2_1b),
        .I2(fcmdl),
        .I3(rom_dat2[16]),
        .O(fdat2[0]));
  LUT4 #(
    .INIT(16'hABA8)) 
    \fdat2[10]_INST_0 
       (.I0(rom_dat2[10]),
        .I1(fadr2_1b),
        .I2(fcmdl),
        .I3(rom_dat2[26]),
        .O(fdat2[10]));
  LUT4 #(
    .INIT(16'hABA8)) 
    \fdat2[11]_INST_0 
       (.I0(rom_dat2[11]),
        .I1(fadr2_1b),
        .I2(fcmdl),
        .I3(rom_dat2[27]),
        .O(fdat2[11]));
  LUT4 #(
    .INIT(16'hABA8)) 
    \fdat2[12]_INST_0 
       (.I0(rom_dat2[12]),
        .I1(fadr2_1b),
        .I2(fcmdl),
        .I3(rom_dat2[28]),
        .O(fdat2[12]));
  LUT4 #(
    .INIT(16'hABA8)) 
    \fdat2[13]_INST_0 
       (.I0(rom_dat2[13]),
        .I1(fadr2_1b),
        .I2(fcmdl),
        .I3(rom_dat2[29]),
        .O(fdat2[13]));
  LUT4 #(
    .INIT(16'hABA8)) 
    \fdat2[14]_INST_0 
       (.I0(rom_dat2[14]),
        .I1(fadr2_1b),
        .I2(fcmdl),
        .I3(rom_dat2[30]),
        .O(fdat2[14]));
  LUT4 #(
    .INIT(16'hABA8)) 
    \fdat2[15]_INST_0 
       (.I0(rom_dat2[15]),
        .I1(fadr2_1b),
        .I2(fcmdl),
        .I3(rom_dat2[31]),
        .O(fdat2[15]));
  LUT2 #(
    .INIT(4'h8)) 
    \fdat2[16]_INST_0 
       (.I0(fcmdl),
        .I1(rom_dat2[16]),
        .O(fdat2[16]));
  LUT2 #(
    .INIT(4'h8)) 
    \fdat2[17]_INST_0 
       (.I0(fcmdl),
        .I1(rom_dat2[17]),
        .O(fdat2[17]));
  LUT2 #(
    .INIT(4'h8)) 
    \fdat2[18]_INST_0 
       (.I0(fcmdl),
        .I1(rom_dat2[18]),
        .O(fdat2[18]));
  LUT2 #(
    .INIT(4'h8)) 
    \fdat2[19]_INST_0 
       (.I0(fcmdl),
        .I1(rom_dat2[19]),
        .O(fdat2[19]));
  LUT4 #(
    .INIT(16'hABA8)) 
    \fdat2[1]_INST_0 
       (.I0(rom_dat2[1]),
        .I1(fadr2_1b),
        .I2(fcmdl),
        .I3(rom_dat2[17]),
        .O(fdat2[1]));
  LUT2 #(
    .INIT(4'h8)) 
    \fdat2[20]_INST_0 
       (.I0(fcmdl),
        .I1(rom_dat2[20]),
        .O(fdat2[20]));
  LUT2 #(
    .INIT(4'h8)) 
    \fdat2[21]_INST_0 
       (.I0(fcmdl),
        .I1(rom_dat2[21]),
        .O(fdat2[21]));
  LUT2 #(
    .INIT(4'h8)) 
    \fdat2[22]_INST_0 
       (.I0(fcmdl),
        .I1(rom_dat2[22]),
        .O(fdat2[22]));
  LUT2 #(
    .INIT(4'h8)) 
    \fdat2[23]_INST_0 
       (.I0(fcmdl),
        .I1(rom_dat2[23]),
        .O(fdat2[23]));
  LUT2 #(
    .INIT(4'h8)) 
    \fdat2[24]_INST_0 
       (.I0(fcmdl),
        .I1(rom_dat2[24]),
        .O(fdat2[24]));
  LUT2 #(
    .INIT(4'h8)) 
    \fdat2[25]_INST_0 
       (.I0(fcmdl),
        .I1(rom_dat2[25]),
        .O(fdat2[25]));
  LUT2 #(
    .INIT(4'h8)) 
    \fdat2[26]_INST_0 
       (.I0(fcmdl),
        .I1(rom_dat2[26]),
        .O(fdat2[26]));
  LUT2 #(
    .INIT(4'h8)) 
    \fdat2[27]_INST_0 
       (.I0(fcmdl),
        .I1(rom_dat2[27]),
        .O(fdat2[27]));
  LUT2 #(
    .INIT(4'h8)) 
    \fdat2[28]_INST_0 
       (.I0(fcmdl),
        .I1(rom_dat2[28]),
        .O(fdat2[28]));
  LUT2 #(
    .INIT(4'h8)) 
    \fdat2[29]_INST_0 
       (.I0(fcmdl),
        .I1(rom_dat2[29]),
        .O(fdat2[29]));
  LUT4 #(
    .INIT(16'hABA8)) 
    \fdat2[2]_INST_0 
       (.I0(rom_dat2[2]),
        .I1(fadr2_1b),
        .I2(fcmdl),
        .I3(rom_dat2[18]),
        .O(fdat2[2]));
  LUT2 #(
    .INIT(4'h8)) 
    \fdat2[30]_INST_0 
       (.I0(fcmdl),
        .I1(rom_dat2[30]),
        .O(fdat2[30]));
  LUT2 #(
    .INIT(4'h8)) 
    \fdat2[31]_INST_0 
       (.I0(fcmdl),
        .I1(rom_dat2[31]),
        .O(fdat2[31]));
  LUT4 #(
    .INIT(16'hABA8)) 
    \fdat2[3]_INST_0 
       (.I0(rom_dat2[3]),
        .I1(fadr2_1b),
        .I2(fcmdl),
        .I3(rom_dat2[19]),
        .O(fdat2[3]));
  LUT4 #(
    .INIT(16'hABA8)) 
    \fdat2[4]_INST_0 
       (.I0(rom_dat2[4]),
        .I1(fadr2_1b),
        .I2(fcmdl),
        .I3(rom_dat2[20]),
        .O(fdat2[4]));
  LUT4 #(
    .INIT(16'hABA8)) 
    \fdat2[5]_INST_0 
       (.I0(rom_dat2[5]),
        .I1(fadr2_1b),
        .I2(fcmdl),
        .I3(rom_dat2[21]),
        .O(fdat2[5]));
  LUT4 #(
    .INIT(16'hABA8)) 
    \fdat2[6]_INST_0 
       (.I0(rom_dat2[6]),
        .I1(fadr2_1b),
        .I2(fcmdl),
        .I3(rom_dat2[22]),
        .O(fdat2[6]));
  LUT4 #(
    .INIT(16'hABA8)) 
    \fdat2[7]_INST_0 
       (.I0(rom_dat2[7]),
        .I1(fadr2_1b),
        .I2(fcmdl),
        .I3(rom_dat2[23]),
        .O(fdat2[7]));
  LUT4 #(
    .INIT(16'hABA8)) 
    \fdat2[8]_INST_0 
       (.I0(rom_dat2[8]),
        .I1(fadr2_1b),
        .I2(fcmdl),
        .I3(rom_dat2[24]),
        .O(fdat2[8]));
  LUT4 #(
    .INIT(16'hABA8)) 
    \fdat2[9]_INST_0 
       (.I0(rom_dat2[9]),
        .I1(fadr2_1b),
        .I2(fcmdl),
        .I3(rom_dat2[25]),
        .O(fdat2[9]));
  LUT4 #(
    .INIT(16'h88B8)) 
    \rom_adr1[0]_INST_0 
       (.I0(badr[0]),
        .I1(rom_adr12),
        .I2(fadr1[0]),
        .I3(fcmdl),
        .O(rom_adr1[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    \rom_adr1[10]_INST_0 
       (.I0(badr[10]),
        .I1(rom_adr12),
        .I2(fadr1[10]),
        .O(rom_adr1[10]));
  LUT3 #(
    .INIT(8'hB8)) 
    \rom_adr1[11]_INST_0 
       (.I0(badr[11]),
        .I1(rom_adr12),
        .I2(fadr1[11]),
        .O(rom_adr1[11]));
  LUT3 #(
    .INIT(8'hB8)) 
    \rom_adr1[12]_INST_0 
       (.I0(badr[12]),
        .I1(rom_adr12),
        .I2(fadr1[12]),
        .O(rom_adr1[12]));
  LUT3 #(
    .INIT(8'hB8)) 
    \rom_adr1[13]_INST_0 
       (.I0(badr[13]),
        .I1(rom_adr12),
        .I2(fadr1[13]),
        .O(rom_adr1[13]));
  LUT3 #(
    .INIT(8'hB8)) 
    \rom_adr1[14]_INST_0 
       (.I0(badr[14]),
        .I1(rom_adr12),
        .I2(fadr1[14]),
        .O(rom_adr1[14]));
  LUT3 #(
    .INIT(8'hB8)) 
    \rom_adr1[15]_INST_0 
       (.I0(badr[15]),
        .I1(rom_adr12),
        .I2(fadr1[15]),
        .O(rom_adr1[15]));
  LUT6 #(
    .INIT(64'h0300020002000200)) 
    \rom_adr1[15]_INST_0_i_1 
       (.I0(bcmdr),
        .I1(bcs_rom_n),
        .I2(bmst),
        .I3(brdy),
        .I4(bcmdw),
        .I5(bootmd),
        .O(rom_adr12));
  LUT4 #(
    .INIT(16'h88B8)) 
    \rom_adr1[1]_INST_0 
       (.I0(badr[1]),
        .I1(rom_adr12),
        .I2(fadr1[1]),
        .I3(fcmdl),
        .O(rom_adr1[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \rom_adr1[2]_INST_0 
       (.I0(badr[2]),
        .I1(rom_adr12),
        .I2(fadr1[2]),
        .O(rom_adr1[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \rom_adr1[3]_INST_0 
       (.I0(badr[3]),
        .I1(rom_adr12),
        .I2(fadr1[3]),
        .O(rom_adr1[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \rom_adr1[4]_INST_0 
       (.I0(badr[4]),
        .I1(rom_adr12),
        .I2(fadr1[4]),
        .O(rom_adr1[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    \rom_adr1[5]_INST_0 
       (.I0(badr[5]),
        .I1(rom_adr12),
        .I2(fadr1[5]),
        .O(rom_adr1[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    \rom_adr1[6]_INST_0 
       (.I0(badr[6]),
        .I1(rom_adr12),
        .I2(fadr1[6]),
        .O(rom_adr1[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    \rom_adr1[7]_INST_0 
       (.I0(badr[7]),
        .I1(rom_adr12),
        .I2(fadr1[7]),
        .O(rom_adr1[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    \rom_adr1[8]_INST_0 
       (.I0(badr[8]),
        .I1(rom_adr12),
        .I2(fadr1[8]),
        .O(rom_adr1[8]));
  LUT3 #(
    .INIT(8'hB8)) 
    \rom_adr1[9]_INST_0 
       (.I0(badr[9]),
        .I1(rom_adr12),
        .I2(fadr1[9]),
        .O(rom_adr1[9]));
  LUT4 #(
    .INIT(16'h88B8)) 
    \rom_adr2[0]_INST_0 
       (.I0(badr[0]),
        .I1(rom_adr22),
        .I2(fadr2[0]),
        .I3(fcmdl),
        .O(rom_adr2[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    \rom_adr2[10]_INST_0 
       (.I0(badr[10]),
        .I1(rom_adr22),
        .I2(fadr2[10]),
        .O(rom_adr2[10]));
  LUT3 #(
    .INIT(8'hB8)) 
    \rom_adr2[11]_INST_0 
       (.I0(badr[11]),
        .I1(rom_adr22),
        .I2(fadr2[11]),
        .O(rom_adr2[11]));
  LUT3 #(
    .INIT(8'hB8)) 
    \rom_adr2[12]_INST_0 
       (.I0(badr[12]),
        .I1(rom_adr22),
        .I2(fadr2[12]),
        .O(rom_adr2[12]));
  LUT3 #(
    .INIT(8'hB8)) 
    \rom_adr2[13]_INST_0 
       (.I0(badr[13]),
        .I1(rom_adr22),
        .I2(fadr2[13]),
        .O(rom_adr2[13]));
  LUT3 #(
    .INIT(8'hB8)) 
    \rom_adr2[14]_INST_0 
       (.I0(badr[14]),
        .I1(rom_adr22),
        .I2(fadr2[14]),
        .O(rom_adr2[14]));
  LUT3 #(
    .INIT(8'hB8)) 
    \rom_adr2[15]_INST_0 
       (.I0(badr[15]),
        .I1(rom_adr22),
        .I2(fadr2[15]),
        .O(rom_adr2[15]));
  LUT6 #(
    .INIT(64'h2300200020002000)) 
    \rom_adr2[15]_INST_0_i_1 
       (.I0(bcmdr),
        .I1(bcs_rom_n),
        .I2(bmst),
        .I3(brdy),
        .I4(bcmdw),
        .I5(bootmd),
        .O(rom_adr22));
  LUT4 #(
    .INIT(16'h88B8)) 
    \rom_adr2[1]_INST_0 
       (.I0(badr[1]),
        .I1(rom_adr22),
        .I2(fadr2[1]),
        .I3(fcmdl),
        .O(rom_adr2[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \rom_adr2[2]_INST_0 
       (.I0(badr[2]),
        .I1(rom_adr22),
        .I2(fadr2[2]),
        .O(rom_adr2[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \rom_adr2[3]_INST_0 
       (.I0(badr[3]),
        .I1(rom_adr22),
        .I2(fadr2[3]),
        .O(rom_adr2[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \rom_adr2[4]_INST_0 
       (.I0(badr[4]),
        .I1(rom_adr22),
        .I2(fadr2[4]),
        .O(rom_adr2[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    \rom_adr2[5]_INST_0 
       (.I0(badr[5]),
        .I1(rom_adr22),
        .I2(fadr2[5]),
        .O(rom_adr2[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    \rom_adr2[6]_INST_0 
       (.I0(badr[6]),
        .I1(rom_adr22),
        .I2(fadr2[6]),
        .O(rom_adr2[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    \rom_adr2[7]_INST_0 
       (.I0(badr[7]),
        .I1(rom_adr22),
        .I2(fadr2[7]),
        .O(rom_adr2[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    \rom_adr2[8]_INST_0 
       (.I0(badr[8]),
        .I1(rom_adr22),
        .I2(fadr2[8]),
        .O(rom_adr2[8]));
  LUT3 #(
    .INIT(8'hB8)) 
    \rom_adr2[9]_INST_0 
       (.I0(badr[9]),
        .I1(rom_adr22),
        .I2(fadr2[9]),
        .O(rom_adr2[9]));
  LUT5 #(
    .INIT(32'h22E20000)) 
    rom_drv_i_1
       (.I0(rom_drv),
        .I1(brdy),
        .I2(bcmdr),
        .I3(bcs_rom_n),
        .I4(rst_n),
        .O(rom_drv_i_1_n_0));
  FDRE rom_drv_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(rom_drv_i_1_n_0),
        .Q(rom_drv),
        .R(\<const0> ));
  LUT5 #(
    .INIT(32'h00000080)) 
    rom_we_INST_0
       (.I0(bootmd),
        .I1(bcmdw),
        .I2(brdy),
        .I3(bmst),
        .I4(bcs_rom_n),
        .O(rom_we));
endmodule
