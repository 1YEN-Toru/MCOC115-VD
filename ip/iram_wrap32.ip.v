
(* STRUCTURAL_NETLIST = "yes" *)
module iram_wrap32
   (clk,
    rst_n,
    fcmdl,
    brdy,
    bcmdr,
    bcmdw,
    bcmdb,
    bcmdl,
    bcs_iram_n,
    fadr,
    fadr_top,
    badr,
    bdatw,
    rom_fdat,
    fdat,
    bdatr,
    iram_fdat,
    iram_bdatr,
    iram_we,
    iram_fadr,
    iram_badr,
    iram_bdatw);
//
//	32 bit instruction RAM wrapper
//		(c) 2021,2023	1YEN Toru
//
//
//	2024/09/21	ver.1.04
//		corresponding to variable fadr_top[15:0]
//
//	2023/10/21	ver.1.02
//		corresponding to 32 bit data bus
//		module name changed: iram_wrap32
//
//	2021/11/06	ver.1.00
//
  input clk;
  input rst_n;
  input fcmdl;
  input brdy;
  input bcmdr;
  input bcmdw;
  input bcmdb;
  input bcmdl;
  input bcs_iram_n;
  input [15:0]fadr;
  input [15:0]fadr_top;
  input [15:0]badr;
  input [31:0]bdatw;
  input [31:0]rom_fdat;
  output [31:0]fdat;
  output [31:0]bdatr;
  input [31:0]iram_fdat;
  input [31:0]iram_bdatr;
  output [3:0]iram_we;
  output [15:0]iram_fadr;
  output [15:0]iram_badr;
  output [31:0]iram_bdatw;

  wire \<const0> ;
  wire \<const1> ;
  wire [15:0]badr;
  wire badr1_b;
  wire badr1_b_i_1_n_0;
  wire bcmdb;
  wire bcmdl;
  wire bcmdl_b;
  wire bcmdl_b_i_1_n_0;
  wire bcmdr;
  wire bcmdw;
  wire bcs_iram_n;
  wire [31:0]bdatr;
  wire [31:0]bdatw;
  wire brd_b;
  wire brd_b_i_1_n_0;
  wire brdy;
  wire bwr;
  wire clk;
  wire [15:0]fadr;
  wire fadr1_b;
  wire fadr1_b_i_1_n_0;
  wire [15:0]fadr_top;
  wire fcmdl;
  wire [31:0]fdat;
  wire frd;
  wire frd_b;
  wire frd_b_i_10_n_0;
  wire frd_b_i_11_n_0;
  wire frd_b_i_12_n_0;
  wire frd_b_i_13_n_0;
  wire frd_b_i_14_n_0;
  wire frd_b_i_15_n_0;
  wire frd_b_i_16_n_0;
  wire frd_b_i_17_n_0;
  wire frd_b_i_18_n_0;
  wire frd_b_i_19_n_0;
  wire frd_b_i_1_n_0;
  wire frd_b_i_4_n_0;
  wire frd_b_i_5_n_0;
  wire frd_b_i_6_n_0;
  wire frd_b_i_7_n_0;
  wire frd_b_i_8_n_0;
  wire frd_b_i_9_n_0;
  wire frd_b_reg_i_2_n_1;
  wire frd_b_reg_i_2_n_2;
  wire frd_b_reg_i_2_n_3;
  wire frd_b_reg_i_3_n_0;
  wire frd_b_reg_i_3_n_1;
  wire frd_b_reg_i_3_n_2;
  wire frd_b_reg_i_3_n_3;
  wire [31:0]iram_bdatr;
  wire [31:16]\^iram_bdatw ;
  wire [31:0]iram_fdat;
  wire [3:0]iram_we;
  wire [31:0]rom_fdat;
  wire rst_n;

  assign iram_badr[15:0] = badr;
  assign iram_bdatw[31:16] = \^iram_bdatw [31:16];
  assign iram_bdatw[15:0] = bdatw[15:0];
  assign iram_fadr[15:0] = fadr;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT4 #(
    .INIT(16'hE200)) 
    badr1_b_i_1
       (.I0(badr1_b),
        .I1(brdy),
        .I2(badr[1]),
        .I3(rst_n),
        .O(badr1_b_i_1_n_0));
  FDRE badr1_b_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(badr1_b_i_1_n_0),
        .Q(badr1_b),
        .R(\<const0> ));
  LUT4 #(
    .INIT(16'hE200)) 
    bcmdl_b_i_1
       (.I0(bcmdl_b),
        .I1(brdy),
        .I2(bcmdl),
        .I3(rst_n),
        .O(bcmdl_b_i_1_n_0));
  FDRE bcmdl_b_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(bcmdl_b_i_1_n_0),
        .Q(bcmdl_b),
        .R(\<const0> ));
  LUT5 #(
    .INIT(32'hCD00C800)) 
    \bdatr[0]_INST_0 
       (.I0(bcmdl_b),
        .I1(iram_bdatr[0]),
        .I2(badr1_b),
        .I3(brd_b),
        .I4(iram_bdatr[16]),
        .O(bdatr[0]));
  LUT5 #(
    .INIT(32'hCD00C800)) 
    \bdatr[10]_INST_0 
       (.I0(bcmdl_b),
        .I1(iram_bdatr[10]),
        .I2(badr1_b),
        .I3(brd_b),
        .I4(iram_bdatr[26]),
        .O(bdatr[10]));
  LUT5 #(
    .INIT(32'hCD00C800)) 
    \bdatr[11]_INST_0 
       (.I0(bcmdl_b),
        .I1(iram_bdatr[11]),
        .I2(badr1_b),
        .I3(brd_b),
        .I4(iram_bdatr[27]),
        .O(bdatr[11]));
  LUT5 #(
    .INIT(32'hCD00C800)) 
    \bdatr[12]_INST_0 
       (.I0(bcmdl_b),
        .I1(iram_bdatr[12]),
        .I2(badr1_b),
        .I3(brd_b),
        .I4(iram_bdatr[28]),
        .O(bdatr[12]));
  LUT5 #(
    .INIT(32'hCD00C800)) 
    \bdatr[13]_INST_0 
       (.I0(bcmdl_b),
        .I1(iram_bdatr[13]),
        .I2(badr1_b),
        .I3(brd_b),
        .I4(iram_bdatr[29]),
        .O(bdatr[13]));
  LUT5 #(
    .INIT(32'hCD00C800)) 
    \bdatr[14]_INST_0 
       (.I0(bcmdl_b),
        .I1(iram_bdatr[14]),
        .I2(badr1_b),
        .I3(brd_b),
        .I4(iram_bdatr[30]),
        .O(bdatr[14]));
  LUT5 #(
    .INIT(32'hCD00C800)) 
    \bdatr[15]_INST_0 
       (.I0(bcmdl_b),
        .I1(iram_bdatr[15]),
        .I2(badr1_b),
        .I3(brd_b),
        .I4(iram_bdatr[31]),
        .O(bdatr[15]));
  LUT3 #(
    .INIT(8'h80)) 
    \bdatr[16]_INST_0 
       (.I0(bcmdl_b),
        .I1(iram_bdatr[16]),
        .I2(brd_b),
        .O(bdatr[16]));
  LUT3 #(
    .INIT(8'h80)) 
    \bdatr[17]_INST_0 
       (.I0(bcmdl_b),
        .I1(iram_bdatr[17]),
        .I2(brd_b),
        .O(bdatr[17]));
  LUT3 #(
    .INIT(8'h80)) 
    \bdatr[18]_INST_0 
       (.I0(bcmdl_b),
        .I1(iram_bdatr[18]),
        .I2(brd_b),
        .O(bdatr[18]));
  LUT3 #(
    .INIT(8'h80)) 
    \bdatr[19]_INST_0 
       (.I0(bcmdl_b),
        .I1(iram_bdatr[19]),
        .I2(brd_b),
        .O(bdatr[19]));
  LUT5 #(
    .INIT(32'hCD00C800)) 
    \bdatr[1]_INST_0 
       (.I0(bcmdl_b),
        .I1(iram_bdatr[1]),
        .I2(badr1_b),
        .I3(brd_b),
        .I4(iram_bdatr[17]),
        .O(bdatr[1]));
  LUT3 #(
    .INIT(8'h80)) 
    \bdatr[20]_INST_0 
       (.I0(bcmdl_b),
        .I1(iram_bdatr[20]),
        .I2(brd_b),
        .O(bdatr[20]));
  LUT3 #(
    .INIT(8'h80)) 
    \bdatr[21]_INST_0 
       (.I0(bcmdl_b),
        .I1(iram_bdatr[21]),
        .I2(brd_b),
        .O(bdatr[21]));
  LUT3 #(
    .INIT(8'h80)) 
    \bdatr[22]_INST_0 
       (.I0(bcmdl_b),
        .I1(iram_bdatr[22]),
        .I2(brd_b),
        .O(bdatr[22]));
  LUT3 #(
    .INIT(8'h80)) 
    \bdatr[23]_INST_0 
       (.I0(bcmdl_b),
        .I1(iram_bdatr[23]),
        .I2(brd_b),
        .O(bdatr[23]));
  LUT3 #(
    .INIT(8'h80)) 
    \bdatr[24]_INST_0 
       (.I0(bcmdl_b),
        .I1(iram_bdatr[24]),
        .I2(brd_b),
        .O(bdatr[24]));
  LUT3 #(
    .INIT(8'h80)) 
    \bdatr[25]_INST_0 
       (.I0(bcmdl_b),
        .I1(iram_bdatr[25]),
        .I2(brd_b),
        .O(bdatr[25]));
  LUT3 #(
    .INIT(8'h80)) 
    \bdatr[26]_INST_0 
       (.I0(bcmdl_b),
        .I1(iram_bdatr[26]),
        .I2(brd_b),
        .O(bdatr[26]));
  LUT3 #(
    .INIT(8'h80)) 
    \bdatr[27]_INST_0 
       (.I0(bcmdl_b),
        .I1(iram_bdatr[27]),
        .I2(brd_b),
        .O(bdatr[27]));
  LUT3 #(
    .INIT(8'h80)) 
    \bdatr[28]_INST_0 
       (.I0(bcmdl_b),
        .I1(iram_bdatr[28]),
        .I2(brd_b),
        .O(bdatr[28]));
  LUT3 #(
    .INIT(8'h80)) 
    \bdatr[29]_INST_0 
       (.I0(bcmdl_b),
        .I1(iram_bdatr[29]),
        .I2(brd_b),
        .O(bdatr[29]));
  LUT5 #(
    .INIT(32'hCD00C800)) 
    \bdatr[2]_INST_0 
       (.I0(bcmdl_b),
        .I1(iram_bdatr[2]),
        .I2(badr1_b),
        .I3(brd_b),
        .I4(iram_bdatr[18]),
        .O(bdatr[2]));
  LUT3 #(
    .INIT(8'h80)) 
    \bdatr[30]_INST_0 
       (.I0(bcmdl_b),
        .I1(iram_bdatr[30]),
        .I2(brd_b),
        .O(bdatr[30]));
  LUT3 #(
    .INIT(8'h80)) 
    \bdatr[31]_INST_0 
       (.I0(bcmdl_b),
        .I1(iram_bdatr[31]),
        .I2(brd_b),
        .O(bdatr[31]));
  LUT5 #(
    .INIT(32'hCD00C800)) 
    \bdatr[3]_INST_0 
       (.I0(bcmdl_b),
        .I1(iram_bdatr[3]),
        .I2(badr1_b),
        .I3(brd_b),
        .I4(iram_bdatr[19]),
        .O(bdatr[3]));
  LUT5 #(
    .INIT(32'hCD00C800)) 
    \bdatr[4]_INST_0 
       (.I0(bcmdl_b),
        .I1(iram_bdatr[4]),
        .I2(badr1_b),
        .I3(brd_b),
        .I4(iram_bdatr[20]),
        .O(bdatr[4]));
  LUT5 #(
    .INIT(32'hCD00C800)) 
    \bdatr[5]_INST_0 
       (.I0(bcmdl_b),
        .I1(iram_bdatr[5]),
        .I2(badr1_b),
        .I3(brd_b),
        .I4(iram_bdatr[21]),
        .O(bdatr[5]));
  LUT5 #(
    .INIT(32'hCD00C800)) 
    \bdatr[6]_INST_0 
       (.I0(bcmdl_b),
        .I1(iram_bdatr[6]),
        .I2(badr1_b),
        .I3(brd_b),
        .I4(iram_bdatr[22]),
        .O(bdatr[6]));
  LUT5 #(
    .INIT(32'hCD00C800)) 
    \bdatr[7]_INST_0 
       (.I0(bcmdl_b),
        .I1(iram_bdatr[7]),
        .I2(badr1_b),
        .I3(brd_b),
        .I4(iram_bdatr[23]),
        .O(bdatr[7]));
  LUT5 #(
    .INIT(32'hCD00C800)) 
    \bdatr[8]_INST_0 
       (.I0(bcmdl_b),
        .I1(iram_bdatr[8]),
        .I2(badr1_b),
        .I3(brd_b),
        .I4(iram_bdatr[24]),
        .O(bdatr[8]));
  LUT5 #(
    .INIT(32'hCD00C800)) 
    \bdatr[9]_INST_0 
       (.I0(bcmdl_b),
        .I1(iram_bdatr[9]),
        .I2(badr1_b),
        .I3(brd_b),
        .I4(iram_bdatr[25]),
        .O(bdatr[9]));
  LUT5 #(
    .INIT(32'h22E20000)) 
    brd_b_i_1
       (.I0(brd_b),
        .I1(brdy),
        .I2(bcmdr),
        .I3(bcs_iram_n),
        .I4(rst_n),
        .O(brd_b_i_1_n_0));
  FDRE brd_b_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(brd_b_i_1_n_0),
        .Q(brd_b),
        .R(\<const0> ));
  LUT2 #(
    .INIT(4'h8)) 
    fadr1_b_i_1
       (.I0(fadr[1]),
        .I1(rst_n),
        .O(fadr1_b_i_1_n_0));
  FDRE fadr1_b_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(fadr1_b_i_1_n_0),
        .Q(fadr1_b),
        .R(\<const0> ));
  LUT6 #(
    .INIT(64'hCDC8FFFFCDC80000)) 
    \fdat[0]_INST_0 
       (.I0(fcmdl),
        .I1(iram_fdat[0]),
        .I2(fadr1_b),
        .I3(iram_fdat[16]),
        .I4(frd_b),
        .I5(rom_fdat[0]),
        .O(fdat[0]));
  LUT6 #(
    .INIT(64'hCDC8FFFFCDC80000)) 
    \fdat[10]_INST_0 
       (.I0(fcmdl),
        .I1(iram_fdat[10]),
        .I2(fadr1_b),
        .I3(iram_fdat[26]),
        .I4(frd_b),
        .I5(rom_fdat[10]),
        .O(fdat[10]));
  LUT6 #(
    .INIT(64'hCDC8FFFFCDC80000)) 
    \fdat[11]_INST_0 
       (.I0(fcmdl),
        .I1(iram_fdat[11]),
        .I2(fadr1_b),
        .I3(iram_fdat[27]),
        .I4(frd_b),
        .I5(rom_fdat[11]),
        .O(fdat[11]));
  LUT6 #(
    .INIT(64'hCDC8FFFFCDC80000)) 
    \fdat[12]_INST_0 
       (.I0(fcmdl),
        .I1(iram_fdat[12]),
        .I2(fadr1_b),
        .I3(iram_fdat[28]),
        .I4(frd_b),
        .I5(rom_fdat[12]),
        .O(fdat[12]));
  LUT6 #(
    .INIT(64'hCDC8FFFFCDC80000)) 
    \fdat[13]_INST_0 
       (.I0(fcmdl),
        .I1(iram_fdat[13]),
        .I2(fadr1_b),
        .I3(iram_fdat[29]),
        .I4(frd_b),
        .I5(rom_fdat[13]),
        .O(fdat[13]));
  LUT6 #(
    .INIT(64'hCDC8FFFFCDC80000)) 
    \fdat[14]_INST_0 
       (.I0(fcmdl),
        .I1(iram_fdat[14]),
        .I2(fadr1_b),
        .I3(iram_fdat[30]),
        .I4(frd_b),
        .I5(rom_fdat[14]),
        .O(fdat[14]));
  LUT6 #(
    .INIT(64'hCDC8FFFFCDC80000)) 
    \fdat[15]_INST_0 
       (.I0(fcmdl),
        .I1(iram_fdat[15]),
        .I2(fadr1_b),
        .I3(iram_fdat[31]),
        .I4(frd_b),
        .I5(rom_fdat[15]),
        .O(fdat[15]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \fdat[16]_INST_0 
       (.I0(fcmdl),
        .I1(iram_fdat[16]),
        .I2(frd_b),
        .I3(rom_fdat[16]),
        .O(fdat[16]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \fdat[17]_INST_0 
       (.I0(fcmdl),
        .I1(iram_fdat[17]),
        .I2(frd_b),
        .I3(rom_fdat[17]),
        .O(fdat[17]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \fdat[18]_INST_0 
       (.I0(fcmdl),
        .I1(iram_fdat[18]),
        .I2(frd_b),
        .I3(rom_fdat[18]),
        .O(fdat[18]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \fdat[19]_INST_0 
       (.I0(fcmdl),
        .I1(iram_fdat[19]),
        .I2(frd_b),
        .I3(rom_fdat[19]),
        .O(fdat[19]));
  LUT6 #(
    .INIT(64'hCDC8FFFFCDC80000)) 
    \fdat[1]_INST_0 
       (.I0(fcmdl),
        .I1(iram_fdat[1]),
        .I2(fadr1_b),
        .I3(iram_fdat[17]),
        .I4(frd_b),
        .I5(rom_fdat[1]),
        .O(fdat[1]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \fdat[20]_INST_0 
       (.I0(fcmdl),
        .I1(iram_fdat[20]),
        .I2(frd_b),
        .I3(rom_fdat[20]),
        .O(fdat[20]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \fdat[21]_INST_0 
       (.I0(fcmdl),
        .I1(iram_fdat[21]),
        .I2(frd_b),
        .I3(rom_fdat[21]),
        .O(fdat[21]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \fdat[22]_INST_0 
       (.I0(fcmdl),
        .I1(iram_fdat[22]),
        .I2(frd_b),
        .I3(rom_fdat[22]),
        .O(fdat[22]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \fdat[23]_INST_0 
       (.I0(fcmdl),
        .I1(iram_fdat[23]),
        .I2(frd_b),
        .I3(rom_fdat[23]),
        .O(fdat[23]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \fdat[24]_INST_0 
       (.I0(fcmdl),
        .I1(iram_fdat[24]),
        .I2(frd_b),
        .I3(rom_fdat[24]),
        .O(fdat[24]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \fdat[25]_INST_0 
       (.I0(fcmdl),
        .I1(iram_fdat[25]),
        .I2(frd_b),
        .I3(rom_fdat[25]),
        .O(fdat[25]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \fdat[26]_INST_0 
       (.I0(fcmdl),
        .I1(iram_fdat[26]),
        .I2(frd_b),
        .I3(rom_fdat[26]),
        .O(fdat[26]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \fdat[27]_INST_0 
       (.I0(fcmdl),
        .I1(iram_fdat[27]),
        .I2(frd_b),
        .I3(rom_fdat[27]),
        .O(fdat[27]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \fdat[28]_INST_0 
       (.I0(fcmdl),
        .I1(iram_fdat[28]),
        .I2(frd_b),
        .I3(rom_fdat[28]),
        .O(fdat[28]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \fdat[29]_INST_0 
       (.I0(fcmdl),
        .I1(iram_fdat[29]),
        .I2(frd_b),
        .I3(rom_fdat[29]),
        .O(fdat[29]));
  LUT6 #(
    .INIT(64'hCDC8FFFFCDC80000)) 
    \fdat[2]_INST_0 
       (.I0(fcmdl),
        .I1(iram_fdat[2]),
        .I2(fadr1_b),
        .I3(iram_fdat[18]),
        .I4(frd_b),
        .I5(rom_fdat[2]),
        .O(fdat[2]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \fdat[30]_INST_0 
       (.I0(fcmdl),
        .I1(iram_fdat[30]),
        .I2(frd_b),
        .I3(rom_fdat[30]),
        .O(fdat[30]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \fdat[31]_INST_0 
       (.I0(fcmdl),
        .I1(iram_fdat[31]),
        .I2(frd_b),
        .I3(rom_fdat[31]),
        .O(fdat[31]));
  LUT6 #(
    .INIT(64'hCDC8FFFFCDC80000)) 
    \fdat[3]_INST_0 
       (.I0(fcmdl),
        .I1(iram_fdat[3]),
        .I2(fadr1_b),
        .I3(iram_fdat[19]),
        .I4(frd_b),
        .I5(rom_fdat[3]),
        .O(fdat[3]));
  LUT6 #(
    .INIT(64'hCDC8FFFFCDC80000)) 
    \fdat[4]_INST_0 
       (.I0(fcmdl),
        .I1(iram_fdat[4]),
        .I2(fadr1_b),
        .I3(iram_fdat[20]),
        .I4(frd_b),
        .I5(rom_fdat[4]),
        .O(fdat[4]));
  LUT6 #(
    .INIT(64'hCDC8FFFFCDC80000)) 
    \fdat[5]_INST_0 
       (.I0(fcmdl),
        .I1(iram_fdat[5]),
        .I2(fadr1_b),
        .I3(iram_fdat[21]),
        .I4(frd_b),
        .I5(rom_fdat[5]),
        .O(fdat[5]));
  LUT6 #(
    .INIT(64'hCDC8FFFFCDC80000)) 
    \fdat[6]_INST_0 
       (.I0(fcmdl),
        .I1(iram_fdat[6]),
        .I2(fadr1_b),
        .I3(iram_fdat[22]),
        .I4(frd_b),
        .I5(rom_fdat[6]),
        .O(fdat[6]));
  LUT6 #(
    .INIT(64'hCDC8FFFFCDC80000)) 
    \fdat[7]_INST_0 
       (.I0(fcmdl),
        .I1(iram_fdat[7]),
        .I2(fadr1_b),
        .I3(iram_fdat[23]),
        .I4(frd_b),
        .I5(rom_fdat[7]),
        .O(fdat[7]));
  LUT6 #(
    .INIT(64'hCDC8FFFFCDC80000)) 
    \fdat[8]_INST_0 
       (.I0(fcmdl),
        .I1(iram_fdat[8]),
        .I2(fadr1_b),
        .I3(iram_fdat[24]),
        .I4(frd_b),
        .I5(rom_fdat[8]),
        .O(fdat[8]));
  LUT6 #(
    .INIT(64'hCDC8FFFFCDC80000)) 
    \fdat[9]_INST_0 
       (.I0(fcmdl),
        .I1(iram_fdat[9]),
        .I2(fadr1_b),
        .I3(iram_fdat[25]),
        .I4(frd_b),
        .I5(rom_fdat[9]),
        .O(fdat[9]));
  LUT2 #(
    .INIT(4'h8)) 
    frd_b_i_1
       (.I0(frd),
        .I1(rst_n),
        .O(frd_b_i_1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    frd_b_i_10
       (.I0(fadr[10]),
        .I1(fadr_top[10]),
        .I2(fadr[11]),
        .I3(fadr_top[11]),
        .O(frd_b_i_10_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    frd_b_i_11
       (.I0(fadr[8]),
        .I1(fadr_top[8]),
        .I2(fadr[9]),
        .I3(fadr_top[9]),
        .O(frd_b_i_11_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    frd_b_i_12
       (.I0(fadr[6]),
        .I1(fadr_top[6]),
        .I2(fadr_top[7]),
        .I3(fadr[7]),
        .O(frd_b_i_12_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    frd_b_i_13
       (.I0(fadr[4]),
        .I1(fadr_top[4]),
        .I2(fadr_top[5]),
        .I3(fadr[5]),
        .O(frd_b_i_13_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    frd_b_i_14
       (.I0(fadr[2]),
        .I1(fadr_top[2]),
        .I2(fadr_top[3]),
        .I3(fadr[3]),
        .O(frd_b_i_14_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    frd_b_i_15
       (.I0(fadr[0]),
        .I1(fadr_top[0]),
        .I2(fadr_top[1]),
        .I3(fadr[1]),
        .O(frd_b_i_15_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    frd_b_i_16
       (.I0(fadr[6]),
        .I1(fadr_top[6]),
        .I2(fadr[7]),
        .I3(fadr_top[7]),
        .O(frd_b_i_16_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    frd_b_i_17
       (.I0(fadr[4]),
        .I1(fadr_top[4]),
        .I2(fadr[5]),
        .I3(fadr_top[5]),
        .O(frd_b_i_17_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    frd_b_i_18
       (.I0(fadr[2]),
        .I1(fadr_top[2]),
        .I2(fadr[3]),
        .I3(fadr_top[3]),
        .O(frd_b_i_18_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    frd_b_i_19
       (.I0(fadr[0]),
        .I1(fadr_top[0]),
        .I2(fadr[1]),
        .I3(fadr_top[1]),
        .O(frd_b_i_19_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    frd_b_i_4
       (.I0(fadr[14]),
        .I1(fadr_top[14]),
        .I2(fadr_top[15]),
        .I3(fadr[15]),
        .O(frd_b_i_4_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    frd_b_i_5
       (.I0(fadr[12]),
        .I1(fadr_top[12]),
        .I2(fadr_top[13]),
        .I3(fadr[13]),
        .O(frd_b_i_5_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    frd_b_i_6
       (.I0(fadr[10]),
        .I1(fadr_top[10]),
        .I2(fadr_top[11]),
        .I3(fadr[11]),
        .O(frd_b_i_6_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    frd_b_i_7
       (.I0(fadr[8]),
        .I1(fadr_top[8]),
        .I2(fadr_top[9]),
        .I3(fadr[9]),
        .O(frd_b_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    frd_b_i_8
       (.I0(fadr[14]),
        .I1(fadr_top[14]),
        .I2(fadr[15]),
        .I3(fadr_top[15]),
        .O(frd_b_i_8_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    frd_b_i_9
       (.I0(fadr[12]),
        .I1(fadr_top[12]),
        .I2(fadr[13]),
        .I3(fadr_top[13]),
        .O(frd_b_i_9_n_0));
  FDRE frd_b_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(frd_b_i_1_n_0),
        .Q(frd_b),
        .R(\<const0> ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 frd_b_reg_i_2
       (.CI(frd_b_reg_i_3_n_0),
        .CO({frd,frd_b_reg_i_2_n_1,frd_b_reg_i_2_n_2,frd_b_reg_i_2_n_3}),
        .CYINIT(\<const0> ),
        .DI({frd_b_i_4_n_0,frd_b_i_5_n_0,frd_b_i_6_n_0,frd_b_i_7_n_0}),
        .S({frd_b_i_8_n_0,frd_b_i_9_n_0,frd_b_i_10_n_0,frd_b_i_11_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 frd_b_reg_i_3
       (.CI(\<const0> ),
        .CO({frd_b_reg_i_3_n_0,frd_b_reg_i_3_n_1,frd_b_reg_i_3_n_2,frd_b_reg_i_3_n_3}),
        .CYINIT(\<const1> ),
        .DI({frd_b_i_12_n_0,frd_b_i_13_n_0,frd_b_i_14_n_0,frd_b_i_15_n_0}),
        .S({frd_b_i_16_n_0,frd_b_i_17_n_0,frd_b_i_18_n_0,frd_b_i_19_n_0}));
  LUT3 #(
    .INIT(8'hB8)) 
    \iram_bdatw[16]_INST_0 
       (.I0(bdatw[16]),
        .I1(bcmdl),
        .I2(bdatw[0]),
        .O(\^iram_bdatw [16]));
  LUT3 #(
    .INIT(8'hB8)) 
    \iram_bdatw[17]_INST_0 
       (.I0(bdatw[17]),
        .I1(bcmdl),
        .I2(bdatw[1]),
        .O(\^iram_bdatw [17]));
  LUT3 #(
    .INIT(8'hB8)) 
    \iram_bdatw[18]_INST_0 
       (.I0(bdatw[18]),
        .I1(bcmdl),
        .I2(bdatw[2]),
        .O(\^iram_bdatw [18]));
  LUT3 #(
    .INIT(8'hB8)) 
    \iram_bdatw[19]_INST_0 
       (.I0(bdatw[19]),
        .I1(bcmdl),
        .I2(bdatw[3]),
        .O(\^iram_bdatw [19]));
  LUT3 #(
    .INIT(8'hB8)) 
    \iram_bdatw[20]_INST_0 
       (.I0(bdatw[20]),
        .I1(bcmdl),
        .I2(bdatw[4]),
        .O(\^iram_bdatw [20]));
  LUT3 #(
    .INIT(8'hB8)) 
    \iram_bdatw[21]_INST_0 
       (.I0(bdatw[21]),
        .I1(bcmdl),
        .I2(bdatw[5]),
        .O(\^iram_bdatw [21]));
  LUT3 #(
    .INIT(8'hB8)) 
    \iram_bdatw[22]_INST_0 
       (.I0(bdatw[22]),
        .I1(bcmdl),
        .I2(bdatw[6]),
        .O(\^iram_bdatw [22]));
  LUT3 #(
    .INIT(8'hB8)) 
    \iram_bdatw[23]_INST_0 
       (.I0(bdatw[23]),
        .I1(bcmdl),
        .I2(bdatw[7]),
        .O(\^iram_bdatw [23]));
  LUT3 #(
    .INIT(8'hB8)) 
    \iram_bdatw[24]_INST_0 
       (.I0(bdatw[24]),
        .I1(bcmdl),
        .I2(bdatw[8]),
        .O(\^iram_bdatw [24]));
  LUT3 #(
    .INIT(8'hB8)) 
    \iram_bdatw[25]_INST_0 
       (.I0(bdatw[25]),
        .I1(bcmdl),
        .I2(bdatw[9]),
        .O(\^iram_bdatw [25]));
  LUT3 #(
    .INIT(8'hB8)) 
    \iram_bdatw[26]_INST_0 
       (.I0(bdatw[26]),
        .I1(bcmdl),
        .I2(bdatw[10]),
        .O(\^iram_bdatw [26]));
  LUT3 #(
    .INIT(8'hB8)) 
    \iram_bdatw[27]_INST_0 
       (.I0(bdatw[27]),
        .I1(bcmdl),
        .I2(bdatw[11]),
        .O(\^iram_bdatw [27]));
  LUT3 #(
    .INIT(8'hB8)) 
    \iram_bdatw[28]_INST_0 
       (.I0(bdatw[28]),
        .I1(bcmdl),
        .I2(bdatw[12]),
        .O(\^iram_bdatw [28]));
  LUT3 #(
    .INIT(8'hB8)) 
    \iram_bdatw[29]_INST_0 
       (.I0(bdatw[29]),
        .I1(bcmdl),
        .I2(bdatw[13]),
        .O(\^iram_bdatw [29]));
  LUT3 #(
    .INIT(8'hB8)) 
    \iram_bdatw[30]_INST_0 
       (.I0(bdatw[30]),
        .I1(bcmdl),
        .I2(bdatw[14]),
        .O(\^iram_bdatw [30]));
  LUT3 #(
    .INIT(8'hB8)) 
    \iram_bdatw[31]_INST_0 
       (.I0(bdatw[31]),
        .I1(bcmdl),
        .I2(bdatw[15]),
        .O(\^iram_bdatw [31]));
  LUT5 #(
    .INIT(32'hA8A888A8)) 
    \iram_we[0]_INST_0 
       (.I0(bwr),
        .I1(bcmdl),
        .I2(badr[1]),
        .I3(bcmdb),
        .I4(badr[0]),
        .O(iram_we[0]));
  LUT5 #(
    .INIT(32'h88A8A8A8)) 
    \iram_we[1]_INST_0 
       (.I0(bwr),
        .I1(bcmdl),
        .I2(badr[1]),
        .I3(bcmdb),
        .I4(badr[0]),
        .O(iram_we[1]));
  LUT5 #(
    .INIT(32'hAAAA2202)) 
    \iram_we[2]_INST_0 
       (.I0(bwr),
        .I1(badr[1]),
        .I2(bcmdb),
        .I3(badr[0]),
        .I4(bcmdl),
        .O(iram_we[2]));
  LUT5 #(
    .INIT(32'hAAAA0222)) 
    \iram_we[3]_INST_0 
       (.I0(bwr),
        .I1(badr[1]),
        .I2(bcmdb),
        .I3(badr[0]),
        .I4(bcmdl),
        .O(iram_we[3]));
  LUT3 #(
    .INIT(8'h40)) 
    \iram_we[3]_INST_0_i_1 
       (.I0(bcs_iram_n),
        .I1(brdy),
        .I2(bcmdw),
        .O(bwr));
endmodule
