
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
    fcmd1,
    fcmd2,
    fadr1,
    fadr2,
    badr,
    bdatw,
    frdy1,
    frdy2,
    fdat1,
    fdat2,
    bdatr,
    rom_dat1,
    rom_dat2,
    rom_we1,
    rom_adr1,
    rom_adr2,
    rom_datw);
//
//	32 bit instruction ROM wrapper
//		(c) 2022	1YEN Toru
//
//
//	2025/12/20	ver.1.12
//		corresponding to updated fetch bus I/F
//			fcmd[1]: fcmdl, long word fetch
//			fcmd[0]: fcmdr, read command
//			frdy: fetch bus ready
//
//	2024/03/16	ver.1.10
//		corresponding to AMP dual core cpu edition
//
//	2023/10/21	ver.1.08
//		corresponding to 32 bit RAM macro
//		keep fdat during memory bus access
//
//	2023/09/23	ver.1.06
//		change instruction fetch latency: 0 => 1
//
//	2023/03/11	ver.1.04
//		corresponding to 32 bit memory bus
//
//	2022/06/11	ver.1.02
//		corresponding to dual core cpu
//		module name changed: rom_wrap32d (dual core cpu edition)
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
  input [1:0]fcmd1;
  input [1:0]fcmd2;
  input [15:0]fadr1;
  input [15:0]fadr2;
  input [15:0]badr;
  input [31:0]bdatw;
  output frdy1;
  output frdy2;
  output [31:0]fdat1;
  output [31:0]fdat2;
  output [31:0]bdatr;
  input [31:0]rom_dat1;
  input [31:0]rom_dat2;
  output [3:0]rom_we1;
  output [15:0]rom_adr1;
  output [15:0]rom_adr2;
  output [31:0]rom_datw;

  wire \<const0> ;
  wire \<const1> ;
  wire [15:0]badr;
  wire badr1_b;
  wire bcmdl;
  wire bcmdl_b;
  wire bcmdr;
  wire bcmdw;
  wire bcs_rom_n;
  wire [31:0]bdatr;
  wire \bdatr[0]_INST_0_i_1_n_0 ;
  wire \bdatr[10]_INST_0_i_1_n_0 ;
  wire \bdatr[11]_INST_0_i_1_n_0 ;
  wire \bdatr[12]_INST_0_i_1_n_0 ;
  wire \bdatr[13]_INST_0_i_1_n_0 ;
  wire \bdatr[14]_INST_0_i_1_n_0 ;
  wire \bdatr[15]_INST_0_i_1_n_0 ;
  wire \bdatr[1]_INST_0_i_1_n_0 ;
  wire \bdatr[2]_INST_0_i_1_n_0 ;
  wire \bdatr[3]_INST_0_i_1_n_0 ;
  wire \bdatr[4]_INST_0_i_1_n_0 ;
  wire \bdatr[5]_INST_0_i_1_n_0 ;
  wire \bdatr[6]_INST_0_i_1_n_0 ;
  wire \bdatr[7]_INST_0_i_1_n_0 ;
  wire \bdatr[8]_INST_0_i_1_n_0 ;
  wire \bdatr[9]_INST_0_i_1_n_0 ;
  wire [31:0]bdatw;
  wire bmst;
  wire bootmd;
  wire brd16_out;
  wire brd1_b;
  wire brd1_b_i_1_n_0;
  wire brd2;
  wire brd2_b;
  wire brdy;
  wire clk;
  wire [15:0]fadr1;
  wire fadr11_b;
  wire fadr11_b_i_1_n_0;
  wire fadr12_b;
  wire fadr12_b_i_1_n_0;
  wire [15:0]fadr2;
  wire [1:0]fcmd1;
  wire [1:1]fcmd1_b;
  wire \fcmd1_b[1]_i_1_n_0 ;
  wire [1:0]fcmd2;
  wire [1:1]fcmd2_b;
  wire \fcmd2_b[1]_i_1_n_0 ;
  wire [31:0]fdat1;
  wire [31:0]fdat2;
  wire frdy1;
  wire frdy2;
  wire [15:0]rom_adr1;
  wire \rom_adr1[15]_INST_0_i_1_n_0 ;
  wire \rom_adr1[15]_INST_0_i_2_n_0 ;
  wire [15:0]rom_adr2;
  wire [31:0]rom_dat1;
  wire [31:0]rom_dat1_kp;
  wire rom_dat1_kp0;
  wire [31:0]rom_dat2;
  wire [31:0]rom_dat2_kp;
  wire rom_dat2_kp0;
  wire [31:0]rom_datw;
  wire [3:1]\^rom_we1 ;
  wire \rom_we1[2]_INST_0_i_1_n_0 ;
  wire rst_n;

  assign rom_we1[3] = \^rom_we1 [3];
  assign rom_we1[2] = \^rom_we1 [3];
  assign rom_we1[1] = \^rom_we1 [1];
  assign rom_we1[0] = \^rom_we1 [1];
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  FDRE badr1_b_reg
       (.C(clk),
        .CE(brdy),
        .D(badr[1]),
        .Q(badr1_b),
        .R(brd1_b_i_1_n_0));
  FDRE bcmdl_b_reg
       (.C(clk),
        .CE(brdy),
        .D(bcmdl),
        .Q(bcmdl_b),
        .R(brd1_b_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFAB00A800)) 
    \bdatr[0]_INST_0 
       (.I0(rom_dat1[0]),
        .I1(bcmdl_b),
        .I2(badr1_b),
        .I3(brd1_b),
        .I4(rom_dat1[16]),
        .I5(\bdatr[0]_INST_0_i_1_n_0 ),
        .O(bdatr[0]));
  LUT6 #(
    .INIT(64'h0A000A000A000C00)) 
    \bdatr[0]_INST_0_i_1 
       (.I0(rom_dat2[0]),
        .I1(rom_dat2[16]),
        .I2(brd1_b),
        .I3(brd2_b),
        .I4(badr1_b),
        .I5(bcmdl_b),
        .O(\bdatr[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAB00A800)) 
    \bdatr[10]_INST_0 
       (.I0(rom_dat1[10]),
        .I1(bcmdl_b),
        .I2(badr1_b),
        .I3(brd1_b),
        .I4(rom_dat1[26]),
        .I5(\bdatr[10]_INST_0_i_1_n_0 ),
        .O(bdatr[10]));
  LUT6 #(
    .INIT(64'h0A000A000A000C00)) 
    \bdatr[10]_INST_0_i_1 
       (.I0(rom_dat2[10]),
        .I1(rom_dat2[26]),
        .I2(brd1_b),
        .I3(brd2_b),
        .I4(badr1_b),
        .I5(bcmdl_b),
        .O(\bdatr[10]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAB00A800)) 
    \bdatr[11]_INST_0 
       (.I0(rom_dat1[11]),
        .I1(bcmdl_b),
        .I2(badr1_b),
        .I3(brd1_b),
        .I4(rom_dat1[27]),
        .I5(\bdatr[11]_INST_0_i_1_n_0 ),
        .O(bdatr[11]));
  LUT6 #(
    .INIT(64'h0A000A000A000C00)) 
    \bdatr[11]_INST_0_i_1 
       (.I0(rom_dat2[11]),
        .I1(rom_dat2[27]),
        .I2(brd1_b),
        .I3(brd2_b),
        .I4(badr1_b),
        .I5(bcmdl_b),
        .O(\bdatr[11]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAB00A800)) 
    \bdatr[12]_INST_0 
       (.I0(rom_dat1[12]),
        .I1(bcmdl_b),
        .I2(badr1_b),
        .I3(brd1_b),
        .I4(rom_dat1[28]),
        .I5(\bdatr[12]_INST_0_i_1_n_0 ),
        .O(bdatr[12]));
  LUT6 #(
    .INIT(64'h0A000A000A000C00)) 
    \bdatr[12]_INST_0_i_1 
       (.I0(rom_dat2[12]),
        .I1(rom_dat2[28]),
        .I2(brd1_b),
        .I3(brd2_b),
        .I4(badr1_b),
        .I5(bcmdl_b),
        .O(\bdatr[12]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAB00A800)) 
    \bdatr[13]_INST_0 
       (.I0(rom_dat1[13]),
        .I1(bcmdl_b),
        .I2(badr1_b),
        .I3(brd1_b),
        .I4(rom_dat1[29]),
        .I5(\bdatr[13]_INST_0_i_1_n_0 ),
        .O(bdatr[13]));
  LUT6 #(
    .INIT(64'h0A000A000A000C00)) 
    \bdatr[13]_INST_0_i_1 
       (.I0(rom_dat2[13]),
        .I1(rom_dat2[29]),
        .I2(brd1_b),
        .I3(brd2_b),
        .I4(badr1_b),
        .I5(bcmdl_b),
        .O(\bdatr[13]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAB00A800)) 
    \bdatr[14]_INST_0 
       (.I0(rom_dat1[14]),
        .I1(bcmdl_b),
        .I2(badr1_b),
        .I3(brd1_b),
        .I4(rom_dat1[30]),
        .I5(\bdatr[14]_INST_0_i_1_n_0 ),
        .O(bdatr[14]));
  LUT6 #(
    .INIT(64'h0A000A000A000C00)) 
    \bdatr[14]_INST_0_i_1 
       (.I0(rom_dat2[14]),
        .I1(rom_dat2[30]),
        .I2(brd1_b),
        .I3(brd2_b),
        .I4(badr1_b),
        .I5(bcmdl_b),
        .O(\bdatr[14]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAB00A800)) 
    \bdatr[15]_INST_0 
       (.I0(rom_dat1[15]),
        .I1(bcmdl_b),
        .I2(badr1_b),
        .I3(brd1_b),
        .I4(rom_dat1[31]),
        .I5(\bdatr[15]_INST_0_i_1_n_0 ),
        .O(bdatr[15]));
  LUT6 #(
    .INIT(64'h0A000A000A000C00)) 
    \bdatr[15]_INST_0_i_1 
       (.I0(rom_dat2[15]),
        .I1(rom_dat2[31]),
        .I2(brd1_b),
        .I3(brd2_b),
        .I4(badr1_b),
        .I5(bcmdl_b),
        .O(\bdatr[15]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hACA00000)) 
    \bdatr[16]_INST_0 
       (.I0(rom_dat1[16]),
        .I1(rom_dat2[16]),
        .I2(brd1_b),
        .I3(brd2_b),
        .I4(bcmdl_b),
        .O(bdatr[16]));
  LUT5 #(
    .INIT(32'hACA00000)) 
    \bdatr[17]_INST_0 
       (.I0(rom_dat1[17]),
        .I1(rom_dat2[17]),
        .I2(brd1_b),
        .I3(brd2_b),
        .I4(bcmdl_b),
        .O(bdatr[17]));
  LUT5 #(
    .INIT(32'hACA00000)) 
    \bdatr[18]_INST_0 
       (.I0(rom_dat1[18]),
        .I1(rom_dat2[18]),
        .I2(brd1_b),
        .I3(brd2_b),
        .I4(bcmdl_b),
        .O(bdatr[18]));
  LUT5 #(
    .INIT(32'hACA00000)) 
    \bdatr[19]_INST_0 
       (.I0(rom_dat1[19]),
        .I1(rom_dat2[19]),
        .I2(brd1_b),
        .I3(brd2_b),
        .I4(bcmdl_b),
        .O(bdatr[19]));
  LUT6 #(
    .INIT(64'hFFFFFFFFAB00A800)) 
    \bdatr[1]_INST_0 
       (.I0(rom_dat1[1]),
        .I1(bcmdl_b),
        .I2(badr1_b),
        .I3(brd1_b),
        .I4(rom_dat1[17]),
        .I5(\bdatr[1]_INST_0_i_1_n_0 ),
        .O(bdatr[1]));
  LUT6 #(
    .INIT(64'h0A000A000A000C00)) 
    \bdatr[1]_INST_0_i_1 
       (.I0(rom_dat2[1]),
        .I1(rom_dat2[17]),
        .I2(brd1_b),
        .I3(brd2_b),
        .I4(badr1_b),
        .I5(bcmdl_b),
        .O(\bdatr[1]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hACA00000)) 
    \bdatr[20]_INST_0 
       (.I0(rom_dat1[20]),
        .I1(rom_dat2[20]),
        .I2(brd1_b),
        .I3(brd2_b),
        .I4(bcmdl_b),
        .O(bdatr[20]));
  LUT5 #(
    .INIT(32'hACA00000)) 
    \bdatr[21]_INST_0 
       (.I0(rom_dat1[21]),
        .I1(rom_dat2[21]),
        .I2(brd1_b),
        .I3(brd2_b),
        .I4(bcmdl_b),
        .O(bdatr[21]));
  LUT5 #(
    .INIT(32'hACA00000)) 
    \bdatr[22]_INST_0 
       (.I0(rom_dat1[22]),
        .I1(rom_dat2[22]),
        .I2(brd1_b),
        .I3(brd2_b),
        .I4(bcmdl_b),
        .O(bdatr[22]));
  LUT5 #(
    .INIT(32'hACA00000)) 
    \bdatr[23]_INST_0 
       (.I0(rom_dat1[23]),
        .I1(rom_dat2[23]),
        .I2(brd1_b),
        .I3(brd2_b),
        .I4(bcmdl_b),
        .O(bdatr[23]));
  LUT5 #(
    .INIT(32'hACA00000)) 
    \bdatr[24]_INST_0 
       (.I0(rom_dat1[24]),
        .I1(rom_dat2[24]),
        .I2(brd1_b),
        .I3(brd2_b),
        .I4(bcmdl_b),
        .O(bdatr[24]));
  LUT5 #(
    .INIT(32'hACA00000)) 
    \bdatr[25]_INST_0 
       (.I0(rom_dat1[25]),
        .I1(rom_dat2[25]),
        .I2(brd1_b),
        .I3(brd2_b),
        .I4(bcmdl_b),
        .O(bdatr[25]));
  LUT5 #(
    .INIT(32'hACA00000)) 
    \bdatr[26]_INST_0 
       (.I0(rom_dat1[26]),
        .I1(rom_dat2[26]),
        .I2(brd1_b),
        .I3(brd2_b),
        .I4(bcmdl_b),
        .O(bdatr[26]));
  LUT5 #(
    .INIT(32'hACA00000)) 
    \bdatr[27]_INST_0 
       (.I0(rom_dat1[27]),
        .I1(rom_dat2[27]),
        .I2(brd1_b),
        .I3(brd2_b),
        .I4(bcmdl_b),
        .O(bdatr[27]));
  LUT5 #(
    .INIT(32'hACA00000)) 
    \bdatr[28]_INST_0 
       (.I0(rom_dat1[28]),
        .I1(rom_dat2[28]),
        .I2(brd1_b),
        .I3(brd2_b),
        .I4(bcmdl_b),
        .O(bdatr[28]));
  LUT5 #(
    .INIT(32'hACA00000)) 
    \bdatr[29]_INST_0 
       (.I0(rom_dat1[29]),
        .I1(rom_dat2[29]),
        .I2(brd1_b),
        .I3(brd2_b),
        .I4(bcmdl_b),
        .O(bdatr[29]));
  LUT6 #(
    .INIT(64'hFFFFFFFFAB00A800)) 
    \bdatr[2]_INST_0 
       (.I0(rom_dat1[2]),
        .I1(bcmdl_b),
        .I2(badr1_b),
        .I3(brd1_b),
        .I4(rom_dat1[18]),
        .I5(\bdatr[2]_INST_0_i_1_n_0 ),
        .O(bdatr[2]));
  LUT6 #(
    .INIT(64'h0A000A000A000C00)) 
    \bdatr[2]_INST_0_i_1 
       (.I0(rom_dat2[2]),
        .I1(rom_dat2[18]),
        .I2(brd1_b),
        .I3(brd2_b),
        .I4(badr1_b),
        .I5(bcmdl_b),
        .O(\bdatr[2]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hACA00000)) 
    \bdatr[30]_INST_0 
       (.I0(rom_dat1[30]),
        .I1(rom_dat2[30]),
        .I2(brd1_b),
        .I3(brd2_b),
        .I4(bcmdl_b),
        .O(bdatr[30]));
  LUT5 #(
    .INIT(32'hACA00000)) 
    \bdatr[31]_INST_0 
       (.I0(rom_dat1[31]),
        .I1(rom_dat2[31]),
        .I2(brd1_b),
        .I3(brd2_b),
        .I4(bcmdl_b),
        .O(bdatr[31]));
  LUT6 #(
    .INIT(64'hFFFFFFFFAB00A800)) 
    \bdatr[3]_INST_0 
       (.I0(rom_dat1[3]),
        .I1(bcmdl_b),
        .I2(badr1_b),
        .I3(brd1_b),
        .I4(rom_dat1[19]),
        .I5(\bdatr[3]_INST_0_i_1_n_0 ),
        .O(bdatr[3]));
  LUT6 #(
    .INIT(64'h0A000A000A000C00)) 
    \bdatr[3]_INST_0_i_1 
       (.I0(rom_dat2[3]),
        .I1(rom_dat2[19]),
        .I2(brd1_b),
        .I3(brd2_b),
        .I4(badr1_b),
        .I5(bcmdl_b),
        .O(\bdatr[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAB00A800)) 
    \bdatr[4]_INST_0 
       (.I0(rom_dat1[4]),
        .I1(bcmdl_b),
        .I2(badr1_b),
        .I3(brd1_b),
        .I4(rom_dat1[20]),
        .I5(\bdatr[4]_INST_0_i_1_n_0 ),
        .O(bdatr[4]));
  LUT6 #(
    .INIT(64'h0A000A000A000C00)) 
    \bdatr[4]_INST_0_i_1 
       (.I0(rom_dat2[4]),
        .I1(rom_dat2[20]),
        .I2(brd1_b),
        .I3(brd2_b),
        .I4(badr1_b),
        .I5(bcmdl_b),
        .O(\bdatr[4]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAB00A800)) 
    \bdatr[5]_INST_0 
       (.I0(rom_dat1[5]),
        .I1(bcmdl_b),
        .I2(badr1_b),
        .I3(brd1_b),
        .I4(rom_dat1[21]),
        .I5(\bdatr[5]_INST_0_i_1_n_0 ),
        .O(bdatr[5]));
  LUT6 #(
    .INIT(64'h0A000A000A000C00)) 
    \bdatr[5]_INST_0_i_1 
       (.I0(rom_dat2[5]),
        .I1(rom_dat2[21]),
        .I2(brd1_b),
        .I3(brd2_b),
        .I4(badr1_b),
        .I5(bcmdl_b),
        .O(\bdatr[5]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAB00A800)) 
    \bdatr[6]_INST_0 
       (.I0(rom_dat1[6]),
        .I1(bcmdl_b),
        .I2(badr1_b),
        .I3(brd1_b),
        .I4(rom_dat1[22]),
        .I5(\bdatr[6]_INST_0_i_1_n_0 ),
        .O(bdatr[6]));
  LUT6 #(
    .INIT(64'h0A000A000A000C00)) 
    \bdatr[6]_INST_0_i_1 
       (.I0(rom_dat2[6]),
        .I1(rom_dat2[22]),
        .I2(brd1_b),
        .I3(brd2_b),
        .I4(badr1_b),
        .I5(bcmdl_b),
        .O(\bdatr[6]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAB00A800)) 
    \bdatr[7]_INST_0 
       (.I0(rom_dat1[7]),
        .I1(bcmdl_b),
        .I2(badr1_b),
        .I3(brd1_b),
        .I4(rom_dat1[23]),
        .I5(\bdatr[7]_INST_0_i_1_n_0 ),
        .O(bdatr[7]));
  LUT6 #(
    .INIT(64'h0A000A000A000C00)) 
    \bdatr[7]_INST_0_i_1 
       (.I0(rom_dat2[7]),
        .I1(rom_dat2[23]),
        .I2(brd1_b),
        .I3(brd2_b),
        .I4(badr1_b),
        .I5(bcmdl_b),
        .O(\bdatr[7]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAB00A800)) 
    \bdatr[8]_INST_0 
       (.I0(rom_dat1[8]),
        .I1(bcmdl_b),
        .I2(badr1_b),
        .I3(brd1_b),
        .I4(rom_dat1[24]),
        .I5(\bdatr[8]_INST_0_i_1_n_0 ),
        .O(bdatr[8]));
  LUT6 #(
    .INIT(64'h0A000A000A000C00)) 
    \bdatr[8]_INST_0_i_1 
       (.I0(rom_dat2[8]),
        .I1(rom_dat2[24]),
        .I2(brd1_b),
        .I3(brd2_b),
        .I4(badr1_b),
        .I5(bcmdl_b),
        .O(\bdatr[8]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAB00A800)) 
    \bdatr[9]_INST_0 
       (.I0(rom_dat1[9]),
        .I1(bcmdl_b),
        .I2(badr1_b),
        .I3(brd1_b),
        .I4(rom_dat1[25]),
        .I5(\bdatr[9]_INST_0_i_1_n_0 ),
        .O(bdatr[9]));
  LUT6 #(
    .INIT(64'h0A000A000A000C00)) 
    \bdatr[9]_INST_0_i_1 
       (.I0(rom_dat2[9]),
        .I1(rom_dat2[25]),
        .I2(brd1_b),
        .I3(brd2_b),
        .I4(badr1_b),
        .I5(bcmdl_b),
        .O(\bdatr[9]_INST_0_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    brd1_b_i_1
       (.I0(rst_n),
        .O(brd1_b_i_1_n_0));
  LUT3 #(
    .INIT(8'h02)) 
    brd1_b_i_2
       (.I0(bcmdr),
        .I1(bcs_rom_n),
        .I2(bmst),
        .O(brd16_out));
  FDRE brd1_b_reg
       (.C(clk),
        .CE(brdy),
        .D(brd16_out),
        .Q(brd1_b),
        .R(brd1_b_i_1_n_0));
  LUT3 #(
    .INIT(8'h40)) 
    brd2_b_i_1
       (.I0(bcs_rom_n),
        .I1(bmst),
        .I2(bcmdr),
        .O(brd2));
  FDRE brd2_b_reg
       (.C(clk),
        .CE(brdy),
        .D(brd2),
        .Q(brd2_b),
        .R(brd1_b_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    fadr11_b_i_1
       (.I0(fadr1[1]),
        .I1(rst_n),
        .O(fadr11_b_i_1_n_0));
  FDRE fadr11_b_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(fadr11_b_i_1_n_0),
        .Q(fadr11_b),
        .R(\<const0> ));
  LUT2 #(
    .INIT(4'h8)) 
    fadr12_b_i_1
       (.I0(fadr2[1]),
        .I1(rst_n),
        .O(fadr12_b_i_1_n_0));
  FDRE fadr12_b_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(fadr12_b_i_1_n_0),
        .Q(fadr12_b),
        .R(\<const0> ));
  LUT6 #(
    .INIT(64'hABAAAAAAA8AAAAAA)) 
    \fcmd1_b[1]_i_1 
       (.I0(fcmd1[1]),
        .I1(bmst),
        .I2(bcs_rom_n),
        .I3(brdy),
        .I4(bcmdr),
        .I5(fcmd1_b),
        .O(\fcmd1_b[1]_i_1_n_0 ));
  FDRE \fcmd1_b_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\fcmd1_b[1]_i_1_n_0 ),
        .Q(fcmd1_b),
        .R(\<const0> ));
  LUT6 #(
    .INIT(64'hAAAAEAAAAAAA2AAA)) 
    \fcmd2_b[1]_i_1 
       (.I0(fcmd2[1]),
        .I1(bcmdr),
        .I2(bmst),
        .I3(brdy),
        .I4(bcs_rom_n),
        .I5(fcmd2_b),
        .O(\fcmd2_b[1]_i_1_n_0 ));
  FDRE \fcmd2_b_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\fcmd2_b[1]_i_1_n_0 ),
        .Q(fcmd2_b),
        .R(\<const0> ));
  LUT6 #(
    .INIT(64'hFFFFFE100000FE10)) 
    \fdat1[0]_INST_0 
       (.I0(fcmd1_b),
        .I1(fadr11_b),
        .I2(rom_dat1[16]),
        .I3(rom_dat1[0]),
        .I4(brd1_b),
        .I5(rom_dat1_kp[0]),
        .O(fdat1[0]));
  LUT6 #(
    .INIT(64'hFFFFFE100000FE10)) 
    \fdat1[10]_INST_0 
       (.I0(fcmd1_b),
        .I1(fadr11_b),
        .I2(rom_dat1[26]),
        .I3(rom_dat1[10]),
        .I4(brd1_b),
        .I5(rom_dat1_kp[10]),
        .O(fdat1[10]));
  LUT6 #(
    .INIT(64'hFFFFFE100000FE10)) 
    \fdat1[11]_INST_0 
       (.I0(fcmd1_b),
        .I1(fadr11_b),
        .I2(rom_dat1[27]),
        .I3(rom_dat1[11]),
        .I4(brd1_b),
        .I5(rom_dat1_kp[11]),
        .O(fdat1[11]));
  LUT6 #(
    .INIT(64'hFFFFFE100000FE10)) 
    \fdat1[12]_INST_0 
       (.I0(fcmd1_b),
        .I1(fadr11_b),
        .I2(rom_dat1[28]),
        .I3(rom_dat1[12]),
        .I4(brd1_b),
        .I5(rom_dat1_kp[12]),
        .O(fdat1[12]));
  LUT6 #(
    .INIT(64'hFFFFFE100000FE10)) 
    \fdat1[13]_INST_0 
       (.I0(fcmd1_b),
        .I1(fadr11_b),
        .I2(rom_dat1[29]),
        .I3(rom_dat1[13]),
        .I4(brd1_b),
        .I5(rom_dat1_kp[13]),
        .O(fdat1[13]));
  LUT6 #(
    .INIT(64'hFFFFFE100000FE10)) 
    \fdat1[14]_INST_0 
       (.I0(fcmd1_b),
        .I1(fadr11_b),
        .I2(rom_dat1[30]),
        .I3(rom_dat1[14]),
        .I4(brd1_b),
        .I5(rom_dat1_kp[14]),
        .O(fdat1[14]));
  LUT6 #(
    .INIT(64'hFFFFFE100000FE10)) 
    \fdat1[15]_INST_0 
       (.I0(fcmd1_b),
        .I1(fadr11_b),
        .I2(rom_dat1[31]),
        .I3(rom_dat1[15]),
        .I4(brd1_b),
        .I5(rom_dat1_kp[15]),
        .O(fdat1[15]));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \fdat1[16]_INST_0 
       (.I0(rom_dat1_kp[16]),
        .I1(rom_dat1[16]),
        .I2(fcmd1_b),
        .I3(brd1_b),
        .O(fdat1[16]));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \fdat1[17]_INST_0 
       (.I0(rom_dat1_kp[17]),
        .I1(rom_dat1[17]),
        .I2(fcmd1_b),
        .I3(brd1_b),
        .O(fdat1[17]));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \fdat1[18]_INST_0 
       (.I0(rom_dat1_kp[18]),
        .I1(rom_dat1[18]),
        .I2(fcmd1_b),
        .I3(brd1_b),
        .O(fdat1[18]));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \fdat1[19]_INST_0 
       (.I0(rom_dat1_kp[19]),
        .I1(rom_dat1[19]),
        .I2(fcmd1_b),
        .I3(brd1_b),
        .O(fdat1[19]));
  LUT6 #(
    .INIT(64'hFFFFFE100000FE10)) 
    \fdat1[1]_INST_0 
       (.I0(fcmd1_b),
        .I1(fadr11_b),
        .I2(rom_dat1[17]),
        .I3(rom_dat1[1]),
        .I4(brd1_b),
        .I5(rom_dat1_kp[1]),
        .O(fdat1[1]));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \fdat1[20]_INST_0 
       (.I0(rom_dat1_kp[20]),
        .I1(rom_dat1[20]),
        .I2(fcmd1_b),
        .I3(brd1_b),
        .O(fdat1[20]));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \fdat1[21]_INST_0 
       (.I0(rom_dat1_kp[21]),
        .I1(rom_dat1[21]),
        .I2(fcmd1_b),
        .I3(brd1_b),
        .O(fdat1[21]));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \fdat1[22]_INST_0 
       (.I0(rom_dat1_kp[22]),
        .I1(rom_dat1[22]),
        .I2(fcmd1_b),
        .I3(brd1_b),
        .O(fdat1[22]));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \fdat1[23]_INST_0 
       (.I0(rom_dat1_kp[23]),
        .I1(rom_dat1[23]),
        .I2(fcmd1_b),
        .I3(brd1_b),
        .O(fdat1[23]));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \fdat1[24]_INST_0 
       (.I0(rom_dat1_kp[24]),
        .I1(rom_dat1[24]),
        .I2(fcmd1_b),
        .I3(brd1_b),
        .O(fdat1[24]));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \fdat1[25]_INST_0 
       (.I0(rom_dat1_kp[25]),
        .I1(rom_dat1[25]),
        .I2(fcmd1_b),
        .I3(brd1_b),
        .O(fdat1[25]));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \fdat1[26]_INST_0 
       (.I0(rom_dat1_kp[26]),
        .I1(rom_dat1[26]),
        .I2(fcmd1_b),
        .I3(brd1_b),
        .O(fdat1[26]));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \fdat1[27]_INST_0 
       (.I0(rom_dat1_kp[27]),
        .I1(rom_dat1[27]),
        .I2(fcmd1_b),
        .I3(brd1_b),
        .O(fdat1[27]));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \fdat1[28]_INST_0 
       (.I0(rom_dat1_kp[28]),
        .I1(rom_dat1[28]),
        .I2(fcmd1_b),
        .I3(brd1_b),
        .O(fdat1[28]));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \fdat1[29]_INST_0 
       (.I0(rom_dat1_kp[29]),
        .I1(rom_dat1[29]),
        .I2(fcmd1_b),
        .I3(brd1_b),
        .O(fdat1[29]));
  LUT6 #(
    .INIT(64'hFFFFFE100000FE10)) 
    \fdat1[2]_INST_0 
       (.I0(fcmd1_b),
        .I1(fadr11_b),
        .I2(rom_dat1[18]),
        .I3(rom_dat1[2]),
        .I4(brd1_b),
        .I5(rom_dat1_kp[2]),
        .O(fdat1[2]));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \fdat1[30]_INST_0 
       (.I0(rom_dat1_kp[30]),
        .I1(rom_dat1[30]),
        .I2(fcmd1_b),
        .I3(brd1_b),
        .O(fdat1[30]));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \fdat1[31]_INST_0 
       (.I0(rom_dat1_kp[31]),
        .I1(rom_dat1[31]),
        .I2(fcmd1_b),
        .I3(brd1_b),
        .O(fdat1[31]));
  LUT6 #(
    .INIT(64'hFFFFFE100000FE10)) 
    \fdat1[3]_INST_0 
       (.I0(fcmd1_b),
        .I1(fadr11_b),
        .I2(rom_dat1[19]),
        .I3(rom_dat1[3]),
        .I4(brd1_b),
        .I5(rom_dat1_kp[3]),
        .O(fdat1[3]));
  LUT6 #(
    .INIT(64'hFFFFFE100000FE10)) 
    \fdat1[4]_INST_0 
       (.I0(fcmd1_b),
        .I1(fadr11_b),
        .I2(rom_dat1[20]),
        .I3(rom_dat1[4]),
        .I4(brd1_b),
        .I5(rom_dat1_kp[4]),
        .O(fdat1[4]));
  LUT6 #(
    .INIT(64'hFFFFFE100000FE10)) 
    \fdat1[5]_INST_0 
       (.I0(fcmd1_b),
        .I1(fadr11_b),
        .I2(rom_dat1[21]),
        .I3(rom_dat1[5]),
        .I4(brd1_b),
        .I5(rom_dat1_kp[5]),
        .O(fdat1[5]));
  LUT6 #(
    .INIT(64'hFFFFFE100000FE10)) 
    \fdat1[6]_INST_0 
       (.I0(fcmd1_b),
        .I1(fadr11_b),
        .I2(rom_dat1[22]),
        .I3(rom_dat1[6]),
        .I4(brd1_b),
        .I5(rom_dat1_kp[6]),
        .O(fdat1[6]));
  LUT6 #(
    .INIT(64'hFFFFFE100000FE10)) 
    \fdat1[7]_INST_0 
       (.I0(fcmd1_b),
        .I1(fadr11_b),
        .I2(rom_dat1[23]),
        .I3(rom_dat1[7]),
        .I4(brd1_b),
        .I5(rom_dat1_kp[7]),
        .O(fdat1[7]));
  LUT6 #(
    .INIT(64'hFFFFFE100000FE10)) 
    \fdat1[8]_INST_0 
       (.I0(fcmd1_b),
        .I1(fadr11_b),
        .I2(rom_dat1[24]),
        .I3(rom_dat1[8]),
        .I4(brd1_b),
        .I5(rom_dat1_kp[8]),
        .O(fdat1[8]));
  LUT6 #(
    .INIT(64'hFFFFFE100000FE10)) 
    \fdat1[9]_INST_0 
       (.I0(fcmd1_b),
        .I1(fadr11_b),
        .I2(rom_dat1[25]),
        .I3(rom_dat1[9]),
        .I4(brd1_b),
        .I5(rom_dat1_kp[9]),
        .O(fdat1[9]));
  LUT6 #(
    .INIT(64'hFFFFFE100000FE10)) 
    \fdat2[0]_INST_0 
       (.I0(fcmd2_b),
        .I1(fadr12_b),
        .I2(rom_dat2[16]),
        .I3(rom_dat2[0]),
        .I4(brd2_b),
        .I5(rom_dat2_kp[0]),
        .O(fdat2[0]));
  LUT6 #(
    .INIT(64'hFFFFFE100000FE10)) 
    \fdat2[10]_INST_0 
       (.I0(fcmd2_b),
        .I1(fadr12_b),
        .I2(rom_dat2[26]),
        .I3(rom_dat2[10]),
        .I4(brd2_b),
        .I5(rom_dat2_kp[10]),
        .O(fdat2[10]));
  LUT6 #(
    .INIT(64'hFFFFFE100000FE10)) 
    \fdat2[11]_INST_0 
       (.I0(fcmd2_b),
        .I1(fadr12_b),
        .I2(rom_dat2[27]),
        .I3(rom_dat2[11]),
        .I4(brd2_b),
        .I5(rom_dat2_kp[11]),
        .O(fdat2[11]));
  LUT6 #(
    .INIT(64'hFFFFFE100000FE10)) 
    \fdat2[12]_INST_0 
       (.I0(fcmd2_b),
        .I1(fadr12_b),
        .I2(rom_dat2[28]),
        .I3(rom_dat2[12]),
        .I4(brd2_b),
        .I5(rom_dat2_kp[12]),
        .O(fdat2[12]));
  LUT6 #(
    .INIT(64'hFFFFFE100000FE10)) 
    \fdat2[13]_INST_0 
       (.I0(fcmd2_b),
        .I1(fadr12_b),
        .I2(rom_dat2[29]),
        .I3(rom_dat2[13]),
        .I4(brd2_b),
        .I5(rom_dat2_kp[13]),
        .O(fdat2[13]));
  LUT6 #(
    .INIT(64'hFFFFFE100000FE10)) 
    \fdat2[14]_INST_0 
       (.I0(fcmd2_b),
        .I1(fadr12_b),
        .I2(rom_dat2[30]),
        .I3(rom_dat2[14]),
        .I4(brd2_b),
        .I5(rom_dat2_kp[14]),
        .O(fdat2[14]));
  LUT6 #(
    .INIT(64'hFFFFFE100000FE10)) 
    \fdat2[15]_INST_0 
       (.I0(fcmd2_b),
        .I1(fadr12_b),
        .I2(rom_dat2[31]),
        .I3(rom_dat2[15]),
        .I4(brd2_b),
        .I5(rom_dat2_kp[15]),
        .O(fdat2[15]));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \fdat2[16]_INST_0 
       (.I0(rom_dat2_kp[16]),
        .I1(rom_dat2[16]),
        .I2(fcmd2_b),
        .I3(brd2_b),
        .O(fdat2[16]));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \fdat2[17]_INST_0 
       (.I0(rom_dat2_kp[17]),
        .I1(rom_dat2[17]),
        .I2(fcmd2_b),
        .I3(brd2_b),
        .O(fdat2[17]));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \fdat2[18]_INST_0 
       (.I0(rom_dat2_kp[18]),
        .I1(rom_dat2[18]),
        .I2(fcmd2_b),
        .I3(brd2_b),
        .O(fdat2[18]));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \fdat2[19]_INST_0 
       (.I0(rom_dat2_kp[19]),
        .I1(rom_dat2[19]),
        .I2(fcmd2_b),
        .I3(brd2_b),
        .O(fdat2[19]));
  LUT6 #(
    .INIT(64'hFFFFFE100000FE10)) 
    \fdat2[1]_INST_0 
       (.I0(fcmd2_b),
        .I1(fadr12_b),
        .I2(rom_dat2[17]),
        .I3(rom_dat2[1]),
        .I4(brd2_b),
        .I5(rom_dat2_kp[1]),
        .O(fdat2[1]));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \fdat2[20]_INST_0 
       (.I0(rom_dat2_kp[20]),
        .I1(rom_dat2[20]),
        .I2(fcmd2_b),
        .I3(brd2_b),
        .O(fdat2[20]));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \fdat2[21]_INST_0 
       (.I0(rom_dat2_kp[21]),
        .I1(rom_dat2[21]),
        .I2(fcmd2_b),
        .I3(brd2_b),
        .O(fdat2[21]));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \fdat2[22]_INST_0 
       (.I0(rom_dat2_kp[22]),
        .I1(rom_dat2[22]),
        .I2(fcmd2_b),
        .I3(brd2_b),
        .O(fdat2[22]));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \fdat2[23]_INST_0 
       (.I0(rom_dat2_kp[23]),
        .I1(rom_dat2[23]),
        .I2(fcmd2_b),
        .I3(brd2_b),
        .O(fdat2[23]));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \fdat2[24]_INST_0 
       (.I0(rom_dat2_kp[24]),
        .I1(rom_dat2[24]),
        .I2(fcmd2_b),
        .I3(brd2_b),
        .O(fdat2[24]));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \fdat2[25]_INST_0 
       (.I0(rom_dat2_kp[25]),
        .I1(rom_dat2[25]),
        .I2(fcmd2_b),
        .I3(brd2_b),
        .O(fdat2[25]));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \fdat2[26]_INST_0 
       (.I0(rom_dat2_kp[26]),
        .I1(rom_dat2[26]),
        .I2(fcmd2_b),
        .I3(brd2_b),
        .O(fdat2[26]));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \fdat2[27]_INST_0 
       (.I0(rom_dat2_kp[27]),
        .I1(rom_dat2[27]),
        .I2(fcmd2_b),
        .I3(brd2_b),
        .O(fdat2[27]));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \fdat2[28]_INST_0 
       (.I0(rom_dat2_kp[28]),
        .I1(rom_dat2[28]),
        .I2(fcmd2_b),
        .I3(brd2_b),
        .O(fdat2[28]));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \fdat2[29]_INST_0 
       (.I0(rom_dat2_kp[29]),
        .I1(rom_dat2[29]),
        .I2(fcmd2_b),
        .I3(brd2_b),
        .O(fdat2[29]));
  LUT6 #(
    .INIT(64'hFFFFFE100000FE10)) 
    \fdat2[2]_INST_0 
       (.I0(fcmd2_b),
        .I1(fadr12_b),
        .I2(rom_dat2[18]),
        .I3(rom_dat2[2]),
        .I4(brd2_b),
        .I5(rom_dat2_kp[2]),
        .O(fdat2[2]));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \fdat2[30]_INST_0 
       (.I0(rom_dat2_kp[30]),
        .I1(rom_dat2[30]),
        .I2(fcmd2_b),
        .I3(brd2_b),
        .O(fdat2[30]));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \fdat2[31]_INST_0 
       (.I0(rom_dat2_kp[31]),
        .I1(rom_dat2[31]),
        .I2(fcmd2_b),
        .I3(brd2_b),
        .O(fdat2[31]));
  LUT6 #(
    .INIT(64'hFFFFFE100000FE10)) 
    \fdat2[3]_INST_0 
       (.I0(fcmd2_b),
        .I1(fadr12_b),
        .I2(rom_dat2[19]),
        .I3(rom_dat2[3]),
        .I4(brd2_b),
        .I5(rom_dat2_kp[3]),
        .O(fdat2[3]));
  LUT6 #(
    .INIT(64'hFFFFFE100000FE10)) 
    \fdat2[4]_INST_0 
       (.I0(fcmd2_b),
        .I1(fadr12_b),
        .I2(rom_dat2[20]),
        .I3(rom_dat2[4]),
        .I4(brd2_b),
        .I5(rom_dat2_kp[4]),
        .O(fdat2[4]));
  LUT6 #(
    .INIT(64'hFFFFFE100000FE10)) 
    \fdat2[5]_INST_0 
       (.I0(fcmd2_b),
        .I1(fadr12_b),
        .I2(rom_dat2[21]),
        .I3(rom_dat2[5]),
        .I4(brd2_b),
        .I5(rom_dat2_kp[5]),
        .O(fdat2[5]));
  LUT6 #(
    .INIT(64'hFFFFFE100000FE10)) 
    \fdat2[6]_INST_0 
       (.I0(fcmd2_b),
        .I1(fadr12_b),
        .I2(rom_dat2[22]),
        .I3(rom_dat2[6]),
        .I4(brd2_b),
        .I5(rom_dat2_kp[6]),
        .O(fdat2[6]));
  LUT6 #(
    .INIT(64'hFFFFFE100000FE10)) 
    \fdat2[7]_INST_0 
       (.I0(fcmd2_b),
        .I1(fadr12_b),
        .I2(rom_dat2[23]),
        .I3(rom_dat2[7]),
        .I4(brd2_b),
        .I5(rom_dat2_kp[7]),
        .O(fdat2[7]));
  LUT6 #(
    .INIT(64'hFFFFFE100000FE10)) 
    \fdat2[8]_INST_0 
       (.I0(fcmd2_b),
        .I1(fadr12_b),
        .I2(rom_dat2[24]),
        .I3(rom_dat2[8]),
        .I4(brd2_b),
        .I5(rom_dat2_kp[8]),
        .O(fdat2[8]));
  LUT6 #(
    .INIT(64'hFFFFFE100000FE10)) 
    \fdat2[9]_INST_0 
       (.I0(fcmd2_b),
        .I1(fadr12_b),
        .I2(rom_dat2[25]),
        .I3(rom_dat2[9]),
        .I4(brd2_b),
        .I5(rom_dat2_kp[9]),
        .O(fdat2[9]));
  LUT4 #(
    .INIT(16'hEFFF)) 
    frdy1_INST_0
       (.I0(bmst),
        .I1(bcs_rom_n),
        .I2(brdy),
        .I3(bcmdr),
        .O(frdy1));
  LUT4 #(
    .INIT(16'hFF7F)) 
    frdy2_INST_0
       (.I0(bcmdr),
        .I1(bmst),
        .I2(brdy),
        .I3(bcs_rom_n),
        .O(frdy2));
  LUT4 #(
    .INIT(16'hF888)) 
    \rom_adr1[0]_INST_0 
       (.I0(fadr1[0]),
        .I1(\rom_adr1[15]_INST_0_i_1_n_0 ),
        .I2(badr[0]),
        .I3(\rom_adr1[15]_INST_0_i_2_n_0 ),
        .O(rom_adr1[0]));
  LUT4 #(
    .INIT(16'hF888)) 
    \rom_adr1[10]_INST_0 
       (.I0(fadr1[10]),
        .I1(\rom_adr1[15]_INST_0_i_1_n_0 ),
        .I2(badr[10]),
        .I3(\rom_adr1[15]_INST_0_i_2_n_0 ),
        .O(rom_adr1[10]));
  LUT4 #(
    .INIT(16'hF888)) 
    \rom_adr1[11]_INST_0 
       (.I0(fadr1[11]),
        .I1(\rom_adr1[15]_INST_0_i_1_n_0 ),
        .I2(badr[11]),
        .I3(\rom_adr1[15]_INST_0_i_2_n_0 ),
        .O(rom_adr1[11]));
  LUT4 #(
    .INIT(16'hF888)) 
    \rom_adr1[12]_INST_0 
       (.I0(fadr1[12]),
        .I1(\rom_adr1[15]_INST_0_i_1_n_0 ),
        .I2(badr[12]),
        .I3(\rom_adr1[15]_INST_0_i_2_n_0 ),
        .O(rom_adr1[12]));
  LUT4 #(
    .INIT(16'hF888)) 
    \rom_adr1[13]_INST_0 
       (.I0(fadr1[13]),
        .I1(\rom_adr1[15]_INST_0_i_1_n_0 ),
        .I2(badr[13]),
        .I3(\rom_adr1[15]_INST_0_i_2_n_0 ),
        .O(rom_adr1[13]));
  LUT4 #(
    .INIT(16'hF888)) 
    \rom_adr1[14]_INST_0 
       (.I0(fadr1[14]),
        .I1(\rom_adr1[15]_INST_0_i_1_n_0 ),
        .I2(badr[14]),
        .I3(\rom_adr1[15]_INST_0_i_2_n_0 ),
        .O(rom_adr1[14]));
  LUT4 #(
    .INIT(16'hF888)) 
    \rom_adr1[15]_INST_0 
       (.I0(fadr1[15]),
        .I1(\rom_adr1[15]_INST_0_i_1_n_0 ),
        .I2(badr[15]),
        .I3(\rom_adr1[15]_INST_0_i_2_n_0 ),
        .O(rom_adr1[15]));
  LUT6 #(
    .INIT(64'hFFFFFF15FFFFFFFF)) 
    \rom_adr1[15]_INST_0_i_1 
       (.I0(bcmdr),
        .I1(bootmd),
        .I2(bcmdw),
        .I3(bmst),
        .I4(bcs_rom_n),
        .I5(brdy),
        .O(\rom_adr1[15]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000F800)) 
    \rom_adr1[15]_INST_0_i_2 
       (.I0(bootmd),
        .I1(bcmdw),
        .I2(bcmdr),
        .I3(brdy),
        .I4(bcs_rom_n),
        .I5(bmst),
        .O(\rom_adr1[15]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \rom_adr1[1]_INST_0 
       (.I0(fadr1[1]),
        .I1(\rom_adr1[15]_INST_0_i_1_n_0 ),
        .I2(badr[1]),
        .I3(\rom_adr1[15]_INST_0_i_2_n_0 ),
        .O(rom_adr1[1]));
  LUT4 #(
    .INIT(16'hF888)) 
    \rom_adr1[2]_INST_0 
       (.I0(fadr1[2]),
        .I1(\rom_adr1[15]_INST_0_i_1_n_0 ),
        .I2(badr[2]),
        .I3(\rom_adr1[15]_INST_0_i_2_n_0 ),
        .O(rom_adr1[2]));
  LUT4 #(
    .INIT(16'hF888)) 
    \rom_adr1[3]_INST_0 
       (.I0(fadr1[3]),
        .I1(\rom_adr1[15]_INST_0_i_1_n_0 ),
        .I2(badr[3]),
        .I3(\rom_adr1[15]_INST_0_i_2_n_0 ),
        .O(rom_adr1[3]));
  LUT4 #(
    .INIT(16'hF888)) 
    \rom_adr1[4]_INST_0 
       (.I0(fadr1[4]),
        .I1(\rom_adr1[15]_INST_0_i_1_n_0 ),
        .I2(badr[4]),
        .I3(\rom_adr1[15]_INST_0_i_2_n_0 ),
        .O(rom_adr1[4]));
  LUT4 #(
    .INIT(16'hF888)) 
    \rom_adr1[5]_INST_0 
       (.I0(fadr1[5]),
        .I1(\rom_adr1[15]_INST_0_i_1_n_0 ),
        .I2(badr[5]),
        .I3(\rom_adr1[15]_INST_0_i_2_n_0 ),
        .O(rom_adr1[5]));
  LUT4 #(
    .INIT(16'hF888)) 
    \rom_adr1[6]_INST_0 
       (.I0(fadr1[6]),
        .I1(\rom_adr1[15]_INST_0_i_1_n_0 ),
        .I2(badr[6]),
        .I3(\rom_adr1[15]_INST_0_i_2_n_0 ),
        .O(rom_adr1[6]));
  LUT4 #(
    .INIT(16'hF888)) 
    \rom_adr1[7]_INST_0 
       (.I0(fadr1[7]),
        .I1(\rom_adr1[15]_INST_0_i_1_n_0 ),
        .I2(badr[7]),
        .I3(\rom_adr1[15]_INST_0_i_2_n_0 ),
        .O(rom_adr1[7]));
  LUT4 #(
    .INIT(16'hF888)) 
    \rom_adr1[8]_INST_0 
       (.I0(fadr1[8]),
        .I1(\rom_adr1[15]_INST_0_i_1_n_0 ),
        .I2(badr[8]),
        .I3(\rom_adr1[15]_INST_0_i_2_n_0 ),
        .O(rom_adr1[8]));
  LUT4 #(
    .INIT(16'hF888)) 
    \rom_adr1[9]_INST_0 
       (.I0(fadr1[9]),
        .I1(\rom_adr1[15]_INST_0_i_1_n_0 ),
        .I2(badr[9]),
        .I3(\rom_adr1[15]_INST_0_i_2_n_0 ),
        .O(rom_adr1[9]));
  LUT6 #(
    .INIT(64'hAAAAEAAAAAAA2AAA)) 
    \rom_adr2[0]_INST_0 
       (.I0(fadr2[0]),
        .I1(bcmdr),
        .I2(bmst),
        .I3(brdy),
        .I4(bcs_rom_n),
        .I5(badr[0]),
        .O(rom_adr2[0]));
  LUT6 #(
    .INIT(64'hAAAAEAAAAAAA2AAA)) 
    \rom_adr2[10]_INST_0 
       (.I0(fadr2[10]),
        .I1(bcmdr),
        .I2(bmst),
        .I3(brdy),
        .I4(bcs_rom_n),
        .I5(badr[10]),
        .O(rom_adr2[10]));
  LUT6 #(
    .INIT(64'hAAAAEAAAAAAA2AAA)) 
    \rom_adr2[11]_INST_0 
       (.I0(fadr2[11]),
        .I1(bcmdr),
        .I2(bmst),
        .I3(brdy),
        .I4(bcs_rom_n),
        .I5(badr[11]),
        .O(rom_adr2[11]));
  LUT6 #(
    .INIT(64'hAAAAEAAAAAAA2AAA)) 
    \rom_adr2[12]_INST_0 
       (.I0(fadr2[12]),
        .I1(bcmdr),
        .I2(bmst),
        .I3(brdy),
        .I4(bcs_rom_n),
        .I5(badr[12]),
        .O(rom_adr2[12]));
  LUT6 #(
    .INIT(64'hAAAAEAAAAAAA2AAA)) 
    \rom_adr2[13]_INST_0 
       (.I0(fadr2[13]),
        .I1(bcmdr),
        .I2(bmst),
        .I3(brdy),
        .I4(bcs_rom_n),
        .I5(badr[13]),
        .O(rom_adr2[13]));
  LUT6 #(
    .INIT(64'hAAAAEAAAAAAA2AAA)) 
    \rom_adr2[14]_INST_0 
       (.I0(fadr2[14]),
        .I1(bcmdr),
        .I2(bmst),
        .I3(brdy),
        .I4(bcs_rom_n),
        .I5(badr[14]),
        .O(rom_adr2[14]));
  LUT6 #(
    .INIT(64'hAAAAEAAAAAAA2AAA)) 
    \rom_adr2[15]_INST_0 
       (.I0(fadr2[15]),
        .I1(bcmdr),
        .I2(bmst),
        .I3(brdy),
        .I4(bcs_rom_n),
        .I5(badr[15]),
        .O(rom_adr2[15]));
  LUT6 #(
    .INIT(64'hAAAAEAAAAAAA2AAA)) 
    \rom_adr2[1]_INST_0 
       (.I0(fadr2[1]),
        .I1(bcmdr),
        .I2(bmst),
        .I3(brdy),
        .I4(bcs_rom_n),
        .I5(badr[1]),
        .O(rom_adr2[1]));
  LUT6 #(
    .INIT(64'hAAAAEAAAAAAA2AAA)) 
    \rom_adr2[2]_INST_0 
       (.I0(fadr2[2]),
        .I1(bcmdr),
        .I2(bmst),
        .I3(brdy),
        .I4(bcs_rom_n),
        .I5(badr[2]),
        .O(rom_adr2[2]));
  LUT6 #(
    .INIT(64'hAAAAEAAAAAAA2AAA)) 
    \rom_adr2[3]_INST_0 
       (.I0(fadr2[3]),
        .I1(bcmdr),
        .I2(bmst),
        .I3(brdy),
        .I4(bcs_rom_n),
        .I5(badr[3]),
        .O(rom_adr2[3]));
  LUT6 #(
    .INIT(64'hAAAAEAAAAAAA2AAA)) 
    \rom_adr2[4]_INST_0 
       (.I0(fadr2[4]),
        .I1(bcmdr),
        .I2(bmst),
        .I3(brdy),
        .I4(bcs_rom_n),
        .I5(badr[4]),
        .O(rom_adr2[4]));
  LUT6 #(
    .INIT(64'hAAAAEAAAAAAA2AAA)) 
    \rom_adr2[5]_INST_0 
       (.I0(fadr2[5]),
        .I1(bcmdr),
        .I2(bmst),
        .I3(brdy),
        .I4(bcs_rom_n),
        .I5(badr[5]),
        .O(rom_adr2[5]));
  LUT6 #(
    .INIT(64'hAAAAEAAAAAAA2AAA)) 
    \rom_adr2[6]_INST_0 
       (.I0(fadr2[6]),
        .I1(bcmdr),
        .I2(bmst),
        .I3(brdy),
        .I4(bcs_rom_n),
        .I5(badr[6]),
        .O(rom_adr2[6]));
  LUT6 #(
    .INIT(64'hAAAAEAAAAAAA2AAA)) 
    \rom_adr2[7]_INST_0 
       (.I0(fadr2[7]),
        .I1(bcmdr),
        .I2(bmst),
        .I3(brdy),
        .I4(bcs_rom_n),
        .I5(badr[7]),
        .O(rom_adr2[7]));
  LUT6 #(
    .INIT(64'hAAAAEAAAAAAA2AAA)) 
    \rom_adr2[8]_INST_0 
       (.I0(fadr2[8]),
        .I1(bcmdr),
        .I2(bmst),
        .I3(brdy),
        .I4(bcs_rom_n),
        .I5(badr[8]),
        .O(rom_adr2[8]));
  LUT6 #(
    .INIT(64'hAAAAEAAAAAAA2AAA)) 
    \rom_adr2[9]_INST_0 
       (.I0(fadr2[9]),
        .I1(bcmdr),
        .I2(bmst),
        .I3(brdy),
        .I4(bcs_rom_n),
        .I5(badr[9]),
        .O(rom_adr2[9]));
  LUT5 #(
    .INIT(32'h00000008)) 
    \rom_dat1_kp[31]_i_1 
       (.I0(bcmdr),
        .I1(brdy),
        .I2(bcs_rom_n),
        .I3(bmst),
        .I4(brd1_b),
        .O(rom_dat1_kp0));
  FDRE \rom_dat1_kp_reg[0] 
       (.C(clk),
        .CE(rom_dat1_kp0),
        .D(rom_dat1[0]),
        .Q(rom_dat1_kp[0]),
        .R(brd1_b_i_1_n_0));
  FDRE \rom_dat1_kp_reg[10] 
       (.C(clk),
        .CE(rom_dat1_kp0),
        .D(rom_dat1[10]),
        .Q(rom_dat1_kp[10]),
        .R(brd1_b_i_1_n_0));
  FDRE \rom_dat1_kp_reg[11] 
       (.C(clk),
        .CE(rom_dat1_kp0),
        .D(rom_dat1[11]),
        .Q(rom_dat1_kp[11]),
        .R(brd1_b_i_1_n_0));
  FDRE \rom_dat1_kp_reg[12] 
       (.C(clk),
        .CE(rom_dat1_kp0),
        .D(rom_dat1[12]),
        .Q(rom_dat1_kp[12]),
        .R(brd1_b_i_1_n_0));
  FDRE \rom_dat1_kp_reg[13] 
       (.C(clk),
        .CE(rom_dat1_kp0),
        .D(rom_dat1[13]),
        .Q(rom_dat1_kp[13]),
        .R(brd1_b_i_1_n_0));
  FDRE \rom_dat1_kp_reg[14] 
       (.C(clk),
        .CE(rom_dat1_kp0),
        .D(rom_dat1[14]),
        .Q(rom_dat1_kp[14]),
        .R(brd1_b_i_1_n_0));
  FDRE \rom_dat1_kp_reg[15] 
       (.C(clk),
        .CE(rom_dat1_kp0),
        .D(rom_dat1[15]),
        .Q(rom_dat1_kp[15]),
        .R(brd1_b_i_1_n_0));
  FDRE \rom_dat1_kp_reg[16] 
       (.C(clk),
        .CE(rom_dat1_kp0),
        .D(rom_dat1[16]),
        .Q(rom_dat1_kp[16]),
        .R(brd1_b_i_1_n_0));
  FDRE \rom_dat1_kp_reg[17] 
       (.C(clk),
        .CE(rom_dat1_kp0),
        .D(rom_dat1[17]),
        .Q(rom_dat1_kp[17]),
        .R(brd1_b_i_1_n_0));
  FDRE \rom_dat1_kp_reg[18] 
       (.C(clk),
        .CE(rom_dat1_kp0),
        .D(rom_dat1[18]),
        .Q(rom_dat1_kp[18]),
        .R(brd1_b_i_1_n_0));
  FDRE \rom_dat1_kp_reg[19] 
       (.C(clk),
        .CE(rom_dat1_kp0),
        .D(rom_dat1[19]),
        .Q(rom_dat1_kp[19]),
        .R(brd1_b_i_1_n_0));
  FDRE \rom_dat1_kp_reg[1] 
       (.C(clk),
        .CE(rom_dat1_kp0),
        .D(rom_dat1[1]),
        .Q(rom_dat1_kp[1]),
        .R(brd1_b_i_1_n_0));
  FDRE \rom_dat1_kp_reg[20] 
       (.C(clk),
        .CE(rom_dat1_kp0),
        .D(rom_dat1[20]),
        .Q(rom_dat1_kp[20]),
        .R(brd1_b_i_1_n_0));
  FDRE \rom_dat1_kp_reg[21] 
       (.C(clk),
        .CE(rom_dat1_kp0),
        .D(rom_dat1[21]),
        .Q(rom_dat1_kp[21]),
        .R(brd1_b_i_1_n_0));
  FDRE \rom_dat1_kp_reg[22] 
       (.C(clk),
        .CE(rom_dat1_kp0),
        .D(rom_dat1[22]),
        .Q(rom_dat1_kp[22]),
        .R(brd1_b_i_1_n_0));
  FDRE \rom_dat1_kp_reg[23] 
       (.C(clk),
        .CE(rom_dat1_kp0),
        .D(rom_dat1[23]),
        .Q(rom_dat1_kp[23]),
        .R(brd1_b_i_1_n_0));
  FDRE \rom_dat1_kp_reg[24] 
       (.C(clk),
        .CE(rom_dat1_kp0),
        .D(rom_dat1[24]),
        .Q(rom_dat1_kp[24]),
        .R(brd1_b_i_1_n_0));
  FDRE \rom_dat1_kp_reg[25] 
       (.C(clk),
        .CE(rom_dat1_kp0),
        .D(rom_dat1[25]),
        .Q(rom_dat1_kp[25]),
        .R(brd1_b_i_1_n_0));
  FDRE \rom_dat1_kp_reg[26] 
       (.C(clk),
        .CE(rom_dat1_kp0),
        .D(rom_dat1[26]),
        .Q(rom_dat1_kp[26]),
        .R(brd1_b_i_1_n_0));
  FDRE \rom_dat1_kp_reg[27] 
       (.C(clk),
        .CE(rom_dat1_kp0),
        .D(rom_dat1[27]),
        .Q(rom_dat1_kp[27]),
        .R(brd1_b_i_1_n_0));
  FDRE \rom_dat1_kp_reg[28] 
       (.C(clk),
        .CE(rom_dat1_kp0),
        .D(rom_dat1[28]),
        .Q(rom_dat1_kp[28]),
        .R(brd1_b_i_1_n_0));
  FDRE \rom_dat1_kp_reg[29] 
       (.C(clk),
        .CE(rom_dat1_kp0),
        .D(rom_dat1[29]),
        .Q(rom_dat1_kp[29]),
        .R(brd1_b_i_1_n_0));
  FDRE \rom_dat1_kp_reg[2] 
       (.C(clk),
        .CE(rom_dat1_kp0),
        .D(rom_dat1[2]),
        .Q(rom_dat1_kp[2]),
        .R(brd1_b_i_1_n_0));
  FDRE \rom_dat1_kp_reg[30] 
       (.C(clk),
        .CE(rom_dat1_kp0),
        .D(rom_dat1[30]),
        .Q(rom_dat1_kp[30]),
        .R(brd1_b_i_1_n_0));
  FDRE \rom_dat1_kp_reg[31] 
       (.C(clk),
        .CE(rom_dat1_kp0),
        .D(rom_dat1[31]),
        .Q(rom_dat1_kp[31]),
        .R(brd1_b_i_1_n_0));
  FDRE \rom_dat1_kp_reg[3] 
       (.C(clk),
        .CE(rom_dat1_kp0),
        .D(rom_dat1[3]),
        .Q(rom_dat1_kp[3]),
        .R(brd1_b_i_1_n_0));
  FDRE \rom_dat1_kp_reg[4] 
       (.C(clk),
        .CE(rom_dat1_kp0),
        .D(rom_dat1[4]),
        .Q(rom_dat1_kp[4]),
        .R(brd1_b_i_1_n_0));
  FDRE \rom_dat1_kp_reg[5] 
       (.C(clk),
        .CE(rom_dat1_kp0),
        .D(rom_dat1[5]),
        .Q(rom_dat1_kp[5]),
        .R(brd1_b_i_1_n_0));
  FDRE \rom_dat1_kp_reg[6] 
       (.C(clk),
        .CE(rom_dat1_kp0),
        .D(rom_dat1[6]),
        .Q(rom_dat1_kp[6]),
        .R(brd1_b_i_1_n_0));
  FDRE \rom_dat1_kp_reg[7] 
       (.C(clk),
        .CE(rom_dat1_kp0),
        .D(rom_dat1[7]),
        .Q(rom_dat1_kp[7]),
        .R(brd1_b_i_1_n_0));
  FDRE \rom_dat1_kp_reg[8] 
       (.C(clk),
        .CE(rom_dat1_kp0),
        .D(rom_dat1[8]),
        .Q(rom_dat1_kp[8]),
        .R(brd1_b_i_1_n_0));
  FDRE \rom_dat1_kp_reg[9] 
       (.C(clk),
        .CE(rom_dat1_kp0),
        .D(rom_dat1[9]),
        .Q(rom_dat1_kp[9]),
        .R(brd1_b_i_1_n_0));
  LUT5 #(
    .INIT(32'h00004000)) 
    \rom_dat2_kp[31]_i_1 
       (.I0(bcs_rom_n),
        .I1(brdy),
        .I2(bmst),
        .I3(bcmdr),
        .I4(brd2_b),
        .O(rom_dat2_kp0));
  FDRE \rom_dat2_kp_reg[0] 
       (.C(clk),
        .CE(rom_dat2_kp0),
        .D(rom_dat2[0]),
        .Q(rom_dat2_kp[0]),
        .R(brd1_b_i_1_n_0));
  FDRE \rom_dat2_kp_reg[10] 
       (.C(clk),
        .CE(rom_dat2_kp0),
        .D(rom_dat2[10]),
        .Q(rom_dat2_kp[10]),
        .R(brd1_b_i_1_n_0));
  FDRE \rom_dat2_kp_reg[11] 
       (.C(clk),
        .CE(rom_dat2_kp0),
        .D(rom_dat2[11]),
        .Q(rom_dat2_kp[11]),
        .R(brd1_b_i_1_n_0));
  FDRE \rom_dat2_kp_reg[12] 
       (.C(clk),
        .CE(rom_dat2_kp0),
        .D(rom_dat2[12]),
        .Q(rom_dat2_kp[12]),
        .R(brd1_b_i_1_n_0));
  FDRE \rom_dat2_kp_reg[13] 
       (.C(clk),
        .CE(rom_dat2_kp0),
        .D(rom_dat2[13]),
        .Q(rom_dat2_kp[13]),
        .R(brd1_b_i_1_n_0));
  FDRE \rom_dat2_kp_reg[14] 
       (.C(clk),
        .CE(rom_dat2_kp0),
        .D(rom_dat2[14]),
        .Q(rom_dat2_kp[14]),
        .R(brd1_b_i_1_n_0));
  FDRE \rom_dat2_kp_reg[15] 
       (.C(clk),
        .CE(rom_dat2_kp0),
        .D(rom_dat2[15]),
        .Q(rom_dat2_kp[15]),
        .R(brd1_b_i_1_n_0));
  FDRE \rom_dat2_kp_reg[16] 
       (.C(clk),
        .CE(rom_dat2_kp0),
        .D(rom_dat2[16]),
        .Q(rom_dat2_kp[16]),
        .R(brd1_b_i_1_n_0));
  FDRE \rom_dat2_kp_reg[17] 
       (.C(clk),
        .CE(rom_dat2_kp0),
        .D(rom_dat2[17]),
        .Q(rom_dat2_kp[17]),
        .R(brd1_b_i_1_n_0));
  FDRE \rom_dat2_kp_reg[18] 
       (.C(clk),
        .CE(rom_dat2_kp0),
        .D(rom_dat2[18]),
        .Q(rom_dat2_kp[18]),
        .R(brd1_b_i_1_n_0));
  FDRE \rom_dat2_kp_reg[19] 
       (.C(clk),
        .CE(rom_dat2_kp0),
        .D(rom_dat2[19]),
        .Q(rom_dat2_kp[19]),
        .R(brd1_b_i_1_n_0));
  FDRE \rom_dat2_kp_reg[1] 
       (.C(clk),
        .CE(rom_dat2_kp0),
        .D(rom_dat2[1]),
        .Q(rom_dat2_kp[1]),
        .R(brd1_b_i_1_n_0));
  FDRE \rom_dat2_kp_reg[20] 
       (.C(clk),
        .CE(rom_dat2_kp0),
        .D(rom_dat2[20]),
        .Q(rom_dat2_kp[20]),
        .R(brd1_b_i_1_n_0));
  FDRE \rom_dat2_kp_reg[21] 
       (.C(clk),
        .CE(rom_dat2_kp0),
        .D(rom_dat2[21]),
        .Q(rom_dat2_kp[21]),
        .R(brd1_b_i_1_n_0));
  FDRE \rom_dat2_kp_reg[22] 
       (.C(clk),
        .CE(rom_dat2_kp0),
        .D(rom_dat2[22]),
        .Q(rom_dat2_kp[22]),
        .R(brd1_b_i_1_n_0));
  FDRE \rom_dat2_kp_reg[23] 
       (.C(clk),
        .CE(rom_dat2_kp0),
        .D(rom_dat2[23]),
        .Q(rom_dat2_kp[23]),
        .R(brd1_b_i_1_n_0));
  FDRE \rom_dat2_kp_reg[24] 
       (.C(clk),
        .CE(rom_dat2_kp0),
        .D(rom_dat2[24]),
        .Q(rom_dat2_kp[24]),
        .R(brd1_b_i_1_n_0));
  FDRE \rom_dat2_kp_reg[25] 
       (.C(clk),
        .CE(rom_dat2_kp0),
        .D(rom_dat2[25]),
        .Q(rom_dat2_kp[25]),
        .R(brd1_b_i_1_n_0));
  FDRE \rom_dat2_kp_reg[26] 
       (.C(clk),
        .CE(rom_dat2_kp0),
        .D(rom_dat2[26]),
        .Q(rom_dat2_kp[26]),
        .R(brd1_b_i_1_n_0));
  FDRE \rom_dat2_kp_reg[27] 
       (.C(clk),
        .CE(rom_dat2_kp0),
        .D(rom_dat2[27]),
        .Q(rom_dat2_kp[27]),
        .R(brd1_b_i_1_n_0));
  FDRE \rom_dat2_kp_reg[28] 
       (.C(clk),
        .CE(rom_dat2_kp0),
        .D(rom_dat2[28]),
        .Q(rom_dat2_kp[28]),
        .R(brd1_b_i_1_n_0));
  FDRE \rom_dat2_kp_reg[29] 
       (.C(clk),
        .CE(rom_dat2_kp0),
        .D(rom_dat2[29]),
        .Q(rom_dat2_kp[29]),
        .R(brd1_b_i_1_n_0));
  FDRE \rom_dat2_kp_reg[2] 
       (.C(clk),
        .CE(rom_dat2_kp0),
        .D(rom_dat2[2]),
        .Q(rom_dat2_kp[2]),
        .R(brd1_b_i_1_n_0));
  FDRE \rom_dat2_kp_reg[30] 
       (.C(clk),
        .CE(rom_dat2_kp0),
        .D(rom_dat2[30]),
        .Q(rom_dat2_kp[30]),
        .R(brd1_b_i_1_n_0));
  FDRE \rom_dat2_kp_reg[31] 
       (.C(clk),
        .CE(rom_dat2_kp0),
        .D(rom_dat2[31]),
        .Q(rom_dat2_kp[31]),
        .R(brd1_b_i_1_n_0));
  FDRE \rom_dat2_kp_reg[3] 
       (.C(clk),
        .CE(rom_dat2_kp0),
        .D(rom_dat2[3]),
        .Q(rom_dat2_kp[3]),
        .R(brd1_b_i_1_n_0));
  FDRE \rom_dat2_kp_reg[4] 
       (.C(clk),
        .CE(rom_dat2_kp0),
        .D(rom_dat2[4]),
        .Q(rom_dat2_kp[4]),
        .R(brd1_b_i_1_n_0));
  FDRE \rom_dat2_kp_reg[5] 
       (.C(clk),
        .CE(rom_dat2_kp0),
        .D(rom_dat2[5]),
        .Q(rom_dat2_kp[5]),
        .R(brd1_b_i_1_n_0));
  FDRE \rom_dat2_kp_reg[6] 
       (.C(clk),
        .CE(rom_dat2_kp0),
        .D(rom_dat2[6]),
        .Q(rom_dat2_kp[6]),
        .R(brd1_b_i_1_n_0));
  FDRE \rom_dat2_kp_reg[7] 
       (.C(clk),
        .CE(rom_dat2_kp0),
        .D(rom_dat2[7]),
        .Q(rom_dat2_kp[7]),
        .R(brd1_b_i_1_n_0));
  FDRE \rom_dat2_kp_reg[8] 
       (.C(clk),
        .CE(rom_dat2_kp0),
        .D(rom_dat2[8]),
        .Q(rom_dat2_kp[8]),
        .R(brd1_b_i_1_n_0));
  FDRE \rom_dat2_kp_reg[9] 
       (.C(clk),
        .CE(rom_dat2_kp0),
        .D(rom_dat2[9]),
        .Q(rom_dat2_kp[9]),
        .R(brd1_b_i_1_n_0));
  LUT6 #(
    .INIT(64'h0200000000000000)) 
    \rom_datw[0]_INST_0 
       (.I0(brdy),
        .I1(bcs_rom_n),
        .I2(bmst),
        .I3(bootmd),
        .I4(bcmdw),
        .I5(bdatw[0]),
        .O(rom_datw[0]));
  LUT6 #(
    .INIT(64'h0200000000000000)) 
    \rom_datw[10]_INST_0 
       (.I0(brdy),
        .I1(bcs_rom_n),
        .I2(bmst),
        .I3(bootmd),
        .I4(bcmdw),
        .I5(bdatw[10]),
        .O(rom_datw[10]));
  LUT6 #(
    .INIT(64'h0200000000000000)) 
    \rom_datw[11]_INST_0 
       (.I0(brdy),
        .I1(bcs_rom_n),
        .I2(bmst),
        .I3(bootmd),
        .I4(bcmdw),
        .I5(bdatw[11]),
        .O(rom_datw[11]));
  LUT6 #(
    .INIT(64'h0200000000000000)) 
    \rom_datw[12]_INST_0 
       (.I0(brdy),
        .I1(bcs_rom_n),
        .I2(bmst),
        .I3(bootmd),
        .I4(bcmdw),
        .I5(bdatw[12]),
        .O(rom_datw[12]));
  LUT6 #(
    .INIT(64'h0200000000000000)) 
    \rom_datw[13]_INST_0 
       (.I0(brdy),
        .I1(bcs_rom_n),
        .I2(bmst),
        .I3(bootmd),
        .I4(bcmdw),
        .I5(bdatw[13]),
        .O(rom_datw[13]));
  LUT6 #(
    .INIT(64'h0200000000000000)) 
    \rom_datw[14]_INST_0 
       (.I0(brdy),
        .I1(bcs_rom_n),
        .I2(bmst),
        .I3(bootmd),
        .I4(bcmdw),
        .I5(bdatw[14]),
        .O(rom_datw[14]));
  LUT6 #(
    .INIT(64'h0200000000000000)) 
    \rom_datw[15]_INST_0 
       (.I0(brdy),
        .I1(bcs_rom_n),
        .I2(bmst),
        .I3(bootmd),
        .I4(bcmdw),
        .I5(bdatw[15]),
        .O(rom_datw[15]));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \rom_datw[16]_INST_0 
       (.I0(bdatw[16]),
        .I1(bdatw[0]),
        .I2(\rom_we1[2]_INST_0_i_1_n_0 ),
        .I3(bcmdl),
        .O(rom_datw[16]));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \rom_datw[17]_INST_0 
       (.I0(bdatw[17]),
        .I1(bdatw[1]),
        .I2(\rom_we1[2]_INST_0_i_1_n_0 ),
        .I3(bcmdl),
        .O(rom_datw[17]));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \rom_datw[18]_INST_0 
       (.I0(bdatw[18]),
        .I1(bdatw[2]),
        .I2(\rom_we1[2]_INST_0_i_1_n_0 ),
        .I3(bcmdl),
        .O(rom_datw[18]));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \rom_datw[19]_INST_0 
       (.I0(bdatw[19]),
        .I1(bdatw[3]),
        .I2(\rom_we1[2]_INST_0_i_1_n_0 ),
        .I3(bcmdl),
        .O(rom_datw[19]));
  LUT6 #(
    .INIT(64'h0200000000000000)) 
    \rom_datw[1]_INST_0 
       (.I0(brdy),
        .I1(bcs_rom_n),
        .I2(bmst),
        .I3(bootmd),
        .I4(bcmdw),
        .I5(bdatw[1]),
        .O(rom_datw[1]));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \rom_datw[20]_INST_0 
       (.I0(bdatw[20]),
        .I1(bdatw[4]),
        .I2(\rom_we1[2]_INST_0_i_1_n_0 ),
        .I3(bcmdl),
        .O(rom_datw[20]));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \rom_datw[21]_INST_0 
       (.I0(bdatw[21]),
        .I1(bdatw[5]),
        .I2(\rom_we1[2]_INST_0_i_1_n_0 ),
        .I3(bcmdl),
        .O(rom_datw[21]));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \rom_datw[22]_INST_0 
       (.I0(bdatw[22]),
        .I1(bdatw[6]),
        .I2(\rom_we1[2]_INST_0_i_1_n_0 ),
        .I3(bcmdl),
        .O(rom_datw[22]));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \rom_datw[23]_INST_0 
       (.I0(bdatw[23]),
        .I1(bdatw[7]),
        .I2(\rom_we1[2]_INST_0_i_1_n_0 ),
        .I3(bcmdl),
        .O(rom_datw[23]));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \rom_datw[24]_INST_0 
       (.I0(bdatw[24]),
        .I1(bdatw[8]),
        .I2(\rom_we1[2]_INST_0_i_1_n_0 ),
        .I3(bcmdl),
        .O(rom_datw[24]));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \rom_datw[25]_INST_0 
       (.I0(bdatw[25]),
        .I1(bdatw[9]),
        .I2(\rom_we1[2]_INST_0_i_1_n_0 ),
        .I3(bcmdl),
        .O(rom_datw[25]));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \rom_datw[26]_INST_0 
       (.I0(bdatw[26]),
        .I1(bdatw[10]),
        .I2(\rom_we1[2]_INST_0_i_1_n_0 ),
        .I3(bcmdl),
        .O(rom_datw[26]));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \rom_datw[27]_INST_0 
       (.I0(bdatw[27]),
        .I1(bdatw[11]),
        .I2(\rom_we1[2]_INST_0_i_1_n_0 ),
        .I3(bcmdl),
        .O(rom_datw[27]));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \rom_datw[28]_INST_0 
       (.I0(bdatw[28]),
        .I1(bdatw[12]),
        .I2(\rom_we1[2]_INST_0_i_1_n_0 ),
        .I3(bcmdl),
        .O(rom_datw[28]));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \rom_datw[29]_INST_0 
       (.I0(bdatw[29]),
        .I1(bdatw[13]),
        .I2(\rom_we1[2]_INST_0_i_1_n_0 ),
        .I3(bcmdl),
        .O(rom_datw[29]));
  LUT6 #(
    .INIT(64'h0200000000000000)) 
    \rom_datw[2]_INST_0 
       (.I0(brdy),
        .I1(bcs_rom_n),
        .I2(bmst),
        .I3(bootmd),
        .I4(bcmdw),
        .I5(bdatw[2]),
        .O(rom_datw[2]));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \rom_datw[30]_INST_0 
       (.I0(bdatw[30]),
        .I1(bdatw[14]),
        .I2(\rom_we1[2]_INST_0_i_1_n_0 ),
        .I3(bcmdl),
        .O(rom_datw[30]));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \rom_datw[31]_INST_0 
       (.I0(bdatw[31]),
        .I1(bdatw[15]),
        .I2(\rom_we1[2]_INST_0_i_1_n_0 ),
        .I3(bcmdl),
        .O(rom_datw[31]));
  LUT6 #(
    .INIT(64'h0200000000000000)) 
    \rom_datw[3]_INST_0 
       (.I0(brdy),
        .I1(bcs_rom_n),
        .I2(bmst),
        .I3(bootmd),
        .I4(bcmdw),
        .I5(bdatw[3]),
        .O(rom_datw[3]));
  LUT6 #(
    .INIT(64'h0200000000000000)) 
    \rom_datw[4]_INST_0 
       (.I0(brdy),
        .I1(bcs_rom_n),
        .I2(bmst),
        .I3(bootmd),
        .I4(bcmdw),
        .I5(bdatw[4]),
        .O(rom_datw[4]));
  LUT6 #(
    .INIT(64'h0200000000000000)) 
    \rom_datw[5]_INST_0 
       (.I0(brdy),
        .I1(bcs_rom_n),
        .I2(bmst),
        .I3(bootmd),
        .I4(bcmdw),
        .I5(bdatw[5]),
        .O(rom_datw[5]));
  LUT6 #(
    .INIT(64'h0200000000000000)) 
    \rom_datw[6]_INST_0 
       (.I0(brdy),
        .I1(bcs_rom_n),
        .I2(bmst),
        .I3(bootmd),
        .I4(bcmdw),
        .I5(bdatw[6]),
        .O(rom_datw[6]));
  LUT6 #(
    .INIT(64'h0200000000000000)) 
    \rom_datw[7]_INST_0 
       (.I0(brdy),
        .I1(bcs_rom_n),
        .I2(bmst),
        .I3(bootmd),
        .I4(bcmdw),
        .I5(bdatw[7]),
        .O(rom_datw[7]));
  LUT6 #(
    .INIT(64'h0200000000000000)) 
    \rom_datw[8]_INST_0 
       (.I0(brdy),
        .I1(bcs_rom_n),
        .I2(bmst),
        .I3(bootmd),
        .I4(bcmdw),
        .I5(bdatw[8]),
        .O(rom_datw[8]));
  LUT6 #(
    .INIT(64'h0200000000000000)) 
    \rom_datw[9]_INST_0 
       (.I0(brdy),
        .I1(bcs_rom_n),
        .I2(bmst),
        .I3(bootmd),
        .I4(bcmdw),
        .I5(bdatw[9]),
        .O(rom_datw[9]));
  LUT3 #(
    .INIT(8'hE0)) 
    \rom_we1[0]_INST_0 
       (.I0(badr[1]),
        .I1(bcmdl),
        .I2(\rom_we1[2]_INST_0_i_1_n_0 ),
        .O(\^rom_we1 [1]));
  LUT3 #(
    .INIT(8'hD0)) 
    \rom_we1[2]_INST_0 
       (.I0(badr[1]),
        .I1(bcmdl),
        .I2(\rom_we1[2]_INST_0_i_1_n_0 ),
        .O(\^rom_we1 [3]));
  LUT5 #(
    .INIT(32'h00080000)) 
    \rom_we1[2]_INST_0_i_1 
       (.I0(bcmdw),
        .I1(bootmd),
        .I2(bmst),
        .I3(bcs_rom_n),
        .I4(brdy),
        .O(\rom_we1[2]_INST_0_i_1_n_0 ));
endmodule
