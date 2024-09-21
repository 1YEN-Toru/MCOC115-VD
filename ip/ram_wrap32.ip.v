
(* STRUCTURAL_NETLIST = "yes" *)
module ram_wrap32
   (clk,
    rst_n,
    brdy,
    bcmdr,
    bcmdw,
    bcmdb,
    bcmdl,
    bcs_ram0_n,
    bcs_ram1_n,
    bcs_ram2_n,
    bcs_ram3_n,
    bcs_ram4_n,
    bcs_eram_n,
    badr,
    bdatw,
    bdatr,
    ram_datr0,
    ram_datr1,
    ram_datr2,
    ram_datr3,
    ram_datr4,
    ram_ce,
    ram_we,
    ram_datw);
//
//	32 bit RAM wrapper
//		(c) 2021	1YEN Toru
//
//
//	2023/11/18	ver.1.08
//		corresponding to E-RAM(Extended RAM) area
//
//	2023/10/21	ver.1.06
//		brushed up
//
//	2023/03/11	ver.1.04
//		corresponding to long word bus
//		module name changed: ram_wrap32 (long word bus edition)
//
//	2021/06/12	ver.1.02
//		corresponding to 40KB RAM (8KB * 5 mat)
//
//	2021/03/20	ver.1.00
//
  input clk;
  input rst_n;
  input brdy;
  input bcmdr;
  input bcmdw;
  input bcmdb;
  input bcmdl;
  input bcs_ram0_n;
  input bcs_ram1_n;
  input bcs_ram2_n;
  input bcs_ram3_n;
  input bcs_ram4_n;
  input bcs_eram_n;
  input [1:0]badr;
  input [31:0]bdatw;
  output [31:0]bdatr;
  input [31:0]ram_datr0;
  input [31:0]ram_datr1;
  input [31:0]ram_datr2;
  input [31:0]ram_datr3;
  input [31:0]ram_datr4;
  output ram_ce;
  output [3:0]ram_we;
  output [31:0]ram_datw;

  wire [1:0]badr;
  wire badr1_b;
  wire bcmdb;
  wire bcmdl;
  wire bcmdl_b;
  wire bcmdr;
  wire bcmdw;
  wire bcs_eram_n;
  wire bcs_ram0_n;
  wire bcs_ram1_n;
  wire bcs_ram2_n;
  wire bcs_ram3_n;
  wire bcs_ram4_n;
  wire bcs_ram_n;
  wire [31:0]bdatr;
  wire \bdatr[0]_INST_0_i_1_n_0 ;
  wire \bdatr[0]_INST_0_i_2_n_0 ;
  wire \bdatr[0]_INST_0_i_3_n_0 ;
  wire \bdatr[10]_INST_0_i_1_n_0 ;
  wire \bdatr[10]_INST_0_i_2_n_0 ;
  wire \bdatr[10]_INST_0_i_3_n_0 ;
  wire \bdatr[11]_INST_0_i_1_n_0 ;
  wire \bdatr[11]_INST_0_i_2_n_0 ;
  wire \bdatr[11]_INST_0_i_3_n_0 ;
  wire \bdatr[12]_INST_0_i_1_n_0 ;
  wire \bdatr[12]_INST_0_i_2_n_0 ;
  wire \bdatr[12]_INST_0_i_3_n_0 ;
  wire \bdatr[13]_INST_0_i_1_n_0 ;
  wire \bdatr[13]_INST_0_i_2_n_0 ;
  wire \bdatr[13]_INST_0_i_3_n_0 ;
  wire \bdatr[14]_INST_0_i_1_n_0 ;
  wire \bdatr[14]_INST_0_i_2_n_0 ;
  wire \bdatr[14]_INST_0_i_3_n_0 ;
  wire \bdatr[15]_INST_0_i_1_n_0 ;
  wire \bdatr[15]_INST_0_i_2_n_0 ;
  wire \bdatr[15]_INST_0_i_3_n_0 ;
  wire \bdatr[15]_INST_0_i_4_n_0 ;
  wire \bdatr[15]_INST_0_i_5_n_0 ;
  wire \bdatr[16]_INST_0_i_1_n_0 ;
  wire \bdatr[17]_INST_0_i_1_n_0 ;
  wire \bdatr[18]_INST_0_i_1_n_0 ;
  wire \bdatr[19]_INST_0_i_1_n_0 ;
  wire \bdatr[1]_INST_0_i_1_n_0 ;
  wire \bdatr[1]_INST_0_i_2_n_0 ;
  wire \bdatr[1]_INST_0_i_3_n_0 ;
  wire \bdatr[20]_INST_0_i_1_n_0 ;
  wire \bdatr[21]_INST_0_i_1_n_0 ;
  wire \bdatr[22]_INST_0_i_1_n_0 ;
  wire \bdatr[23]_INST_0_i_1_n_0 ;
  wire \bdatr[24]_INST_0_i_1_n_0 ;
  wire \bdatr[25]_INST_0_i_1_n_0 ;
  wire \bdatr[26]_INST_0_i_1_n_0 ;
  wire \bdatr[27]_INST_0_i_1_n_0 ;
  wire \bdatr[28]_INST_0_i_1_n_0 ;
  wire \bdatr[29]_INST_0_i_1_n_0 ;
  wire \bdatr[2]_INST_0_i_1_n_0 ;
  wire \bdatr[2]_INST_0_i_2_n_0 ;
  wire \bdatr[2]_INST_0_i_3_n_0 ;
  wire \bdatr[30]_INST_0_i_1_n_0 ;
  wire \bdatr[31]_INST_0_i_1_n_0 ;
  wire \bdatr[3]_INST_0_i_1_n_0 ;
  wire \bdatr[3]_INST_0_i_2_n_0 ;
  wire \bdatr[3]_INST_0_i_3_n_0 ;
  wire \bdatr[4]_INST_0_i_1_n_0 ;
  wire \bdatr[4]_INST_0_i_2_n_0 ;
  wire \bdatr[4]_INST_0_i_3_n_0 ;
  wire \bdatr[5]_INST_0_i_1_n_0 ;
  wire \bdatr[5]_INST_0_i_2_n_0 ;
  wire \bdatr[5]_INST_0_i_3_n_0 ;
  wire \bdatr[6]_INST_0_i_1_n_0 ;
  wire \bdatr[6]_INST_0_i_2_n_0 ;
  wire \bdatr[6]_INST_0_i_3_n_0 ;
  wire \bdatr[7]_INST_0_i_1_n_0 ;
  wire \bdatr[7]_INST_0_i_2_n_0 ;
  wire \bdatr[7]_INST_0_i_3_n_0 ;
  wire \bdatr[8]_INST_0_i_1_n_0 ;
  wire \bdatr[8]_INST_0_i_2_n_0 ;
  wire \bdatr[8]_INST_0_i_3_n_0 ;
  wire \bdatr[9]_INST_0_i_1_n_0 ;
  wire \bdatr[9]_INST_0_i_2_n_0 ;
  wire \bdatr[9]_INST_0_i_3_n_0 ;
  wire [31:0]bdatw;
  wire brd0_b0;
  wire brd1_b0;
  wire brd2_b0;
  wire brd3_b0;
  wire brd4_b0;
  wire brdy;
  wire clk;
  wire p_0_in;
  wire ram_ce;
  wire [31:0]ram_datr0;
  wire [31:0]ram_datr1;
  wire [31:0]ram_datr2;
  wire [31:0]ram_datr3;
  wire [31:0]ram_datr4;
  wire [31:0]ram_datw;
  wire [3:0]ram_we;
  wire \ram_we[3]_INST_0_i_1_n_0 ;
  wire rst_n;
  wire [4:0]sel0;

  FDRE badr1_b_reg
       (.C(clk),
        .CE(brdy),
        .D(badr[1]),
        .Q(badr1_b),
        .R(p_0_in));
  FDRE bcmdl_b_reg
       (.C(clk),
        .CE(brdy),
        .D(bcmdl),
        .Q(bcmdl_b),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'hDF00DFDFDD00DD00)) 
    \bdatr[0]_INST_0 
       (.I0(\bdatr[15]_INST_0_i_1_n_0 ),
        .I1(\bdatr[0]_INST_0_i_1_n_0 ),
        .I2(\bdatr[16]_INST_0_i_1_n_0 ),
        .I3(\bdatr[0]_INST_0_i_2_n_0 ),
        .I4(\bdatr[0]_INST_0_i_3_n_0 ),
        .I5(\bdatr[15]_INST_0_i_5_n_0 ),
        .O(bdatr[0]));
  LUT4 #(
    .INIT(16'hB888)) 
    \bdatr[0]_INST_0_i_1 
       (.I0(ram_datr0[16]),
        .I1(sel0[4]),
        .I2(sel0[3]),
        .I3(ram_datr1[16]),
        .O(\bdatr[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF808F808F808FFFF)) 
    \bdatr[0]_INST_0_i_2 
       (.I0(sel0[3]),
        .I1(ram_datr1[0]),
        .I2(sel0[4]),
        .I3(ram_datr0[0]),
        .I4(badr1_b),
        .I5(bcmdl_b),
        .O(\bdatr[0]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h10131313DCDFDFDF)) 
    \bdatr[0]_INST_0_i_3 
       (.I0(ram_datr3[0]),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(ram_datr4[0]),
        .I4(sel0[0]),
        .I5(ram_datr2[0]),
        .O(\bdatr[0]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hDF00DFDFDD00DD00)) 
    \bdatr[10]_INST_0 
       (.I0(\bdatr[15]_INST_0_i_1_n_0 ),
        .I1(\bdatr[10]_INST_0_i_1_n_0 ),
        .I2(\bdatr[26]_INST_0_i_1_n_0 ),
        .I3(\bdatr[10]_INST_0_i_2_n_0 ),
        .I4(\bdatr[10]_INST_0_i_3_n_0 ),
        .I5(\bdatr[15]_INST_0_i_5_n_0 ),
        .O(bdatr[10]));
  LUT4 #(
    .INIT(16'hB888)) 
    \bdatr[10]_INST_0_i_1 
       (.I0(ram_datr0[26]),
        .I1(sel0[4]),
        .I2(sel0[3]),
        .I3(ram_datr1[26]),
        .O(\bdatr[10]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF808F808F808FFFF)) 
    \bdatr[10]_INST_0_i_2 
       (.I0(sel0[3]),
        .I1(ram_datr1[10]),
        .I2(sel0[4]),
        .I3(ram_datr0[10]),
        .I4(badr1_b),
        .I5(bcmdl_b),
        .O(\bdatr[10]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h10131313DCDFDFDF)) 
    \bdatr[10]_INST_0_i_3 
       (.I0(ram_datr3[10]),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(ram_datr4[10]),
        .I4(sel0[0]),
        .I5(ram_datr2[10]),
        .O(\bdatr[10]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hDF00DFDFDD00DD00)) 
    \bdatr[11]_INST_0 
       (.I0(\bdatr[15]_INST_0_i_1_n_0 ),
        .I1(\bdatr[11]_INST_0_i_1_n_0 ),
        .I2(\bdatr[27]_INST_0_i_1_n_0 ),
        .I3(\bdatr[11]_INST_0_i_2_n_0 ),
        .I4(\bdatr[11]_INST_0_i_3_n_0 ),
        .I5(\bdatr[15]_INST_0_i_5_n_0 ),
        .O(bdatr[11]));
  LUT4 #(
    .INIT(16'hB888)) 
    \bdatr[11]_INST_0_i_1 
       (.I0(ram_datr0[27]),
        .I1(sel0[4]),
        .I2(sel0[3]),
        .I3(ram_datr1[27]),
        .O(\bdatr[11]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF808F808F808FFFF)) 
    \bdatr[11]_INST_0_i_2 
       (.I0(sel0[3]),
        .I1(ram_datr1[11]),
        .I2(sel0[4]),
        .I3(ram_datr0[11]),
        .I4(badr1_b),
        .I5(bcmdl_b),
        .O(\bdatr[11]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000F77FFFF0F77)) 
    \bdatr[11]_INST_0_i_3 
       (.I0(sel0[0]),
        .I1(ram_datr4[11]),
        .I2(ram_datr3[11]),
        .I3(sel0[1]),
        .I4(sel0[2]),
        .I5(ram_datr2[11]),
        .O(\bdatr[11]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hDF00DFDFDD00DD00)) 
    \bdatr[12]_INST_0 
       (.I0(\bdatr[15]_INST_0_i_1_n_0 ),
        .I1(\bdatr[12]_INST_0_i_1_n_0 ),
        .I2(\bdatr[28]_INST_0_i_1_n_0 ),
        .I3(\bdatr[12]_INST_0_i_2_n_0 ),
        .I4(\bdatr[12]_INST_0_i_3_n_0 ),
        .I5(\bdatr[15]_INST_0_i_5_n_0 ),
        .O(bdatr[12]));
  LUT4 #(
    .INIT(16'hB888)) 
    \bdatr[12]_INST_0_i_1 
       (.I0(ram_datr0[28]),
        .I1(sel0[4]),
        .I2(sel0[3]),
        .I3(ram_datr1[28]),
        .O(\bdatr[12]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF808F808F808FFFF)) 
    \bdatr[12]_INST_0_i_2 
       (.I0(sel0[3]),
        .I1(ram_datr1[12]),
        .I2(sel0[4]),
        .I3(ram_datr0[12]),
        .I4(badr1_b),
        .I5(bcmdl_b),
        .O(\bdatr[12]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h10131313DCDFDFDF)) 
    \bdatr[12]_INST_0_i_3 
       (.I0(ram_datr3[12]),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(ram_datr4[12]),
        .I4(sel0[0]),
        .I5(ram_datr2[12]),
        .O(\bdatr[12]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hDF00DFDFDD00DD00)) 
    \bdatr[13]_INST_0 
       (.I0(\bdatr[15]_INST_0_i_1_n_0 ),
        .I1(\bdatr[13]_INST_0_i_1_n_0 ),
        .I2(\bdatr[29]_INST_0_i_1_n_0 ),
        .I3(\bdatr[13]_INST_0_i_2_n_0 ),
        .I4(\bdatr[13]_INST_0_i_3_n_0 ),
        .I5(\bdatr[15]_INST_0_i_5_n_0 ),
        .O(bdatr[13]));
  LUT4 #(
    .INIT(16'hB888)) 
    \bdatr[13]_INST_0_i_1 
       (.I0(ram_datr0[29]),
        .I1(sel0[4]),
        .I2(sel0[3]),
        .I3(ram_datr1[29]),
        .O(\bdatr[13]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF808F808F808FFFF)) 
    \bdatr[13]_INST_0_i_2 
       (.I0(sel0[3]),
        .I1(ram_datr1[13]),
        .I2(sel0[4]),
        .I3(ram_datr0[13]),
        .I4(badr1_b),
        .I5(bcmdl_b),
        .O(\bdatr[13]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h10131313DCDFDFDF)) 
    \bdatr[13]_INST_0_i_3 
       (.I0(ram_datr3[13]),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(ram_datr4[13]),
        .I4(sel0[0]),
        .I5(ram_datr2[13]),
        .O(\bdatr[13]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hDF00DFDFDD00DD00)) 
    \bdatr[14]_INST_0 
       (.I0(\bdatr[15]_INST_0_i_1_n_0 ),
        .I1(\bdatr[14]_INST_0_i_1_n_0 ),
        .I2(\bdatr[30]_INST_0_i_1_n_0 ),
        .I3(\bdatr[14]_INST_0_i_2_n_0 ),
        .I4(\bdatr[14]_INST_0_i_3_n_0 ),
        .I5(\bdatr[15]_INST_0_i_5_n_0 ),
        .O(bdatr[14]));
  LUT4 #(
    .INIT(16'hB888)) 
    \bdatr[14]_INST_0_i_1 
       (.I0(ram_datr0[30]),
        .I1(sel0[4]),
        .I2(sel0[3]),
        .I3(ram_datr1[30]),
        .O(\bdatr[14]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF808F808F808FFFF)) 
    \bdatr[14]_INST_0_i_2 
       (.I0(sel0[3]),
        .I1(ram_datr1[14]),
        .I2(sel0[4]),
        .I3(ram_datr0[14]),
        .I4(badr1_b),
        .I5(bcmdl_b),
        .O(\bdatr[14]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h10131313DCDFDFDF)) 
    \bdatr[14]_INST_0_i_3 
       (.I0(ram_datr3[14]),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(ram_datr4[14]),
        .I4(sel0[0]),
        .I5(ram_datr2[14]),
        .O(\bdatr[14]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFD00FDFDDD00DD00)) 
    \bdatr[15]_INST_0 
       (.I0(\bdatr[15]_INST_0_i_1_n_0 ),
        .I1(\bdatr[15]_INST_0_i_2_n_0 ),
        .I2(\bdatr[31]_INST_0_i_1_n_0 ),
        .I3(\bdatr[15]_INST_0_i_3_n_0 ),
        .I4(\bdatr[15]_INST_0_i_4_n_0 ),
        .I5(\bdatr[15]_INST_0_i_5_n_0 ),
        .O(bdatr[15]));
  LUT2 #(
    .INIT(4'h1)) 
    \bdatr[15]_INST_0_i_1 
       (.I0(badr1_b),
        .I1(bcmdl_b),
        .O(\bdatr[15]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \bdatr[15]_INST_0_i_2 
       (.I0(ram_datr0[31]),
        .I1(sel0[4]),
        .I2(sel0[3]),
        .I3(ram_datr1[31]),
        .O(\bdatr[15]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF808F808F808FFFF)) 
    \bdatr[15]_INST_0_i_3 
       (.I0(sel0[3]),
        .I1(ram_datr1[15]),
        .I2(sel0[4]),
        .I3(ram_datr0[15]),
        .I4(badr1_b),
        .I5(bcmdl_b),
        .O(\bdatr[15]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h10131313DCDFDFDF)) 
    \bdatr[15]_INST_0_i_4 
       (.I0(ram_datr3[15]),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(ram_datr4[15]),
        .I4(sel0[0]),
        .I5(ram_datr2[15]),
        .O(\bdatr[15]_INST_0_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \bdatr[15]_INST_0_i_5 
       (.I0(sel0[3]),
        .I1(sel0[4]),
        .O(\bdatr[15]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAA20A02A0A20002)) 
    \bdatr[16]_INST_0 
       (.I0(bcmdl_b),
        .I1(\bdatr[16]_INST_0_i_1_n_0 ),
        .I2(sel0[4]),
        .I3(sel0[3]),
        .I4(ram_datr0[16]),
        .I5(ram_datr1[16]),
        .O(bdatr[16]));
  LUT6 #(
    .INIT(64'h4744477747774777)) 
    \bdatr[16]_INST_0_i_1 
       (.I0(ram_datr2[16]),
        .I1(sel0[2]),
        .I2(ram_datr3[16]),
        .I3(sel0[1]),
        .I4(ram_datr4[16]),
        .I5(sel0[0]),
        .O(\bdatr[16]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAA20A02A0A20002)) 
    \bdatr[17]_INST_0 
       (.I0(bcmdl_b),
        .I1(\bdatr[17]_INST_0_i_1_n_0 ),
        .I2(sel0[4]),
        .I3(sel0[3]),
        .I4(ram_datr0[17]),
        .I5(ram_datr1[17]),
        .O(bdatr[17]));
  LUT6 #(
    .INIT(64'h4744477747774777)) 
    \bdatr[17]_INST_0_i_1 
       (.I0(ram_datr2[17]),
        .I1(sel0[2]),
        .I2(ram_datr3[17]),
        .I3(sel0[1]),
        .I4(ram_datr4[17]),
        .I5(sel0[0]),
        .O(\bdatr[17]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAA20A02A0A20002)) 
    \bdatr[18]_INST_0 
       (.I0(bcmdl_b),
        .I1(\bdatr[18]_INST_0_i_1_n_0 ),
        .I2(sel0[4]),
        .I3(sel0[3]),
        .I4(ram_datr0[18]),
        .I5(ram_datr1[18]),
        .O(bdatr[18]));
  LUT6 #(
    .INIT(64'h4744477747774777)) 
    \bdatr[18]_INST_0_i_1 
       (.I0(ram_datr2[18]),
        .I1(sel0[2]),
        .I2(ram_datr3[18]),
        .I3(sel0[1]),
        .I4(ram_datr4[18]),
        .I5(sel0[0]),
        .O(\bdatr[18]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAA20A02A0A20002)) 
    \bdatr[19]_INST_0 
       (.I0(bcmdl_b),
        .I1(\bdatr[19]_INST_0_i_1_n_0 ),
        .I2(sel0[4]),
        .I3(sel0[3]),
        .I4(ram_datr0[19]),
        .I5(ram_datr1[19]),
        .O(bdatr[19]));
  LUT6 #(
    .INIT(64'h4744477747774777)) 
    \bdatr[19]_INST_0_i_1 
       (.I0(ram_datr2[19]),
        .I1(sel0[2]),
        .I2(ram_datr3[19]),
        .I3(sel0[1]),
        .I4(ram_datr4[19]),
        .I5(sel0[0]),
        .O(\bdatr[19]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hDF00DFDFDD00DD00)) 
    \bdatr[1]_INST_0 
       (.I0(\bdatr[15]_INST_0_i_1_n_0 ),
        .I1(\bdatr[1]_INST_0_i_1_n_0 ),
        .I2(\bdatr[17]_INST_0_i_1_n_0 ),
        .I3(\bdatr[1]_INST_0_i_2_n_0 ),
        .I4(\bdatr[1]_INST_0_i_3_n_0 ),
        .I5(\bdatr[15]_INST_0_i_5_n_0 ),
        .O(bdatr[1]));
  LUT4 #(
    .INIT(16'hB888)) 
    \bdatr[1]_INST_0_i_1 
       (.I0(ram_datr0[17]),
        .I1(sel0[4]),
        .I2(sel0[3]),
        .I3(ram_datr1[17]),
        .O(\bdatr[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF808F808F808FFFF)) 
    \bdatr[1]_INST_0_i_2 
       (.I0(sel0[3]),
        .I1(ram_datr1[1]),
        .I2(sel0[4]),
        .I3(ram_datr0[1]),
        .I4(badr1_b),
        .I5(bcmdl_b),
        .O(\bdatr[1]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h10131313DCDFDFDF)) 
    \bdatr[1]_INST_0_i_3 
       (.I0(ram_datr3[1]),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(ram_datr4[1]),
        .I4(sel0[0]),
        .I5(ram_datr2[1]),
        .O(\bdatr[1]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAA20A02A0A20002)) 
    \bdatr[20]_INST_0 
       (.I0(bcmdl_b),
        .I1(\bdatr[20]_INST_0_i_1_n_0 ),
        .I2(sel0[4]),
        .I3(sel0[3]),
        .I4(ram_datr0[20]),
        .I5(ram_datr1[20]),
        .O(bdatr[20]));
  LUT6 #(
    .INIT(64'h4744477747774777)) 
    \bdatr[20]_INST_0_i_1 
       (.I0(ram_datr2[20]),
        .I1(sel0[2]),
        .I2(ram_datr3[20]),
        .I3(sel0[1]),
        .I4(ram_datr4[20]),
        .I5(sel0[0]),
        .O(\bdatr[20]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAA20A02A0A20002)) 
    \bdatr[21]_INST_0 
       (.I0(bcmdl_b),
        .I1(\bdatr[21]_INST_0_i_1_n_0 ),
        .I2(sel0[4]),
        .I3(sel0[3]),
        .I4(ram_datr0[21]),
        .I5(ram_datr1[21]),
        .O(bdatr[21]));
  LUT6 #(
    .INIT(64'h4744477747774777)) 
    \bdatr[21]_INST_0_i_1 
       (.I0(ram_datr2[21]),
        .I1(sel0[2]),
        .I2(ram_datr3[21]),
        .I3(sel0[1]),
        .I4(ram_datr4[21]),
        .I5(sel0[0]),
        .O(\bdatr[21]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAA20A02A0A20002)) 
    \bdatr[22]_INST_0 
       (.I0(bcmdl_b),
        .I1(\bdatr[22]_INST_0_i_1_n_0 ),
        .I2(sel0[4]),
        .I3(sel0[3]),
        .I4(ram_datr0[22]),
        .I5(ram_datr1[22]),
        .O(bdatr[22]));
  LUT6 #(
    .INIT(64'h4744477747774777)) 
    \bdatr[22]_INST_0_i_1 
       (.I0(ram_datr2[22]),
        .I1(sel0[2]),
        .I2(ram_datr3[22]),
        .I3(sel0[1]),
        .I4(ram_datr4[22]),
        .I5(sel0[0]),
        .O(\bdatr[22]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAA20A02A0A20002)) 
    \bdatr[23]_INST_0 
       (.I0(bcmdl_b),
        .I1(\bdatr[23]_INST_0_i_1_n_0 ),
        .I2(sel0[4]),
        .I3(sel0[3]),
        .I4(ram_datr0[23]),
        .I5(ram_datr1[23]),
        .O(bdatr[23]));
  LUT6 #(
    .INIT(64'h4744477747774777)) 
    \bdatr[23]_INST_0_i_1 
       (.I0(ram_datr2[23]),
        .I1(sel0[2]),
        .I2(ram_datr3[23]),
        .I3(sel0[1]),
        .I4(ram_datr4[23]),
        .I5(sel0[0]),
        .O(\bdatr[23]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAA20A02A0A20002)) 
    \bdatr[24]_INST_0 
       (.I0(bcmdl_b),
        .I1(\bdatr[24]_INST_0_i_1_n_0 ),
        .I2(sel0[4]),
        .I3(sel0[3]),
        .I4(ram_datr0[24]),
        .I5(ram_datr1[24]),
        .O(bdatr[24]));
  LUT6 #(
    .INIT(64'h4744477747774777)) 
    \bdatr[24]_INST_0_i_1 
       (.I0(ram_datr2[24]),
        .I1(sel0[2]),
        .I2(ram_datr3[24]),
        .I3(sel0[1]),
        .I4(ram_datr4[24]),
        .I5(sel0[0]),
        .O(\bdatr[24]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAA20A02A0A20002)) 
    \bdatr[25]_INST_0 
       (.I0(bcmdl_b),
        .I1(\bdatr[25]_INST_0_i_1_n_0 ),
        .I2(sel0[4]),
        .I3(sel0[3]),
        .I4(ram_datr0[25]),
        .I5(ram_datr1[25]),
        .O(bdatr[25]));
  LUT6 #(
    .INIT(64'h4744477747774777)) 
    \bdatr[25]_INST_0_i_1 
       (.I0(ram_datr2[25]),
        .I1(sel0[2]),
        .I2(ram_datr3[25]),
        .I3(sel0[1]),
        .I4(ram_datr4[25]),
        .I5(sel0[0]),
        .O(\bdatr[25]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAA20A02A0A20002)) 
    \bdatr[26]_INST_0 
       (.I0(bcmdl_b),
        .I1(\bdatr[26]_INST_0_i_1_n_0 ),
        .I2(sel0[4]),
        .I3(sel0[3]),
        .I4(ram_datr0[26]),
        .I5(ram_datr1[26]),
        .O(bdatr[26]));
  LUT6 #(
    .INIT(64'h4744477747774777)) 
    \bdatr[26]_INST_0_i_1 
       (.I0(ram_datr2[26]),
        .I1(sel0[2]),
        .I2(ram_datr3[26]),
        .I3(sel0[1]),
        .I4(ram_datr4[26]),
        .I5(sel0[0]),
        .O(\bdatr[26]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAA20A02A0A20002)) 
    \bdatr[27]_INST_0 
       (.I0(bcmdl_b),
        .I1(\bdatr[27]_INST_0_i_1_n_0 ),
        .I2(sel0[4]),
        .I3(sel0[3]),
        .I4(ram_datr0[27]),
        .I5(ram_datr1[27]),
        .O(bdatr[27]));
  LUT6 #(
    .INIT(64'h4744477747774777)) 
    \bdatr[27]_INST_0_i_1 
       (.I0(ram_datr2[27]),
        .I1(sel0[2]),
        .I2(ram_datr3[27]),
        .I3(sel0[1]),
        .I4(ram_datr4[27]),
        .I5(sel0[0]),
        .O(\bdatr[27]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAA20A02A0A20002)) 
    \bdatr[28]_INST_0 
       (.I0(bcmdl_b),
        .I1(\bdatr[28]_INST_0_i_1_n_0 ),
        .I2(sel0[4]),
        .I3(sel0[3]),
        .I4(ram_datr0[28]),
        .I5(ram_datr1[28]),
        .O(bdatr[28]));
  LUT6 #(
    .INIT(64'h4744477747774777)) 
    \bdatr[28]_INST_0_i_1 
       (.I0(ram_datr2[28]),
        .I1(sel0[2]),
        .I2(ram_datr3[28]),
        .I3(sel0[1]),
        .I4(ram_datr4[28]),
        .I5(sel0[0]),
        .O(\bdatr[28]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAA20A02A0A20002)) 
    \bdatr[29]_INST_0 
       (.I0(bcmdl_b),
        .I1(\bdatr[29]_INST_0_i_1_n_0 ),
        .I2(sel0[4]),
        .I3(sel0[3]),
        .I4(ram_datr0[29]),
        .I5(ram_datr1[29]),
        .O(bdatr[29]));
  LUT6 #(
    .INIT(64'h4744477747774777)) 
    \bdatr[29]_INST_0_i_1 
       (.I0(ram_datr2[29]),
        .I1(sel0[2]),
        .I2(ram_datr3[29]),
        .I3(sel0[1]),
        .I4(ram_datr4[29]),
        .I5(sel0[0]),
        .O(\bdatr[29]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hDF00DFDFDD00DD00)) 
    \bdatr[2]_INST_0 
       (.I0(\bdatr[15]_INST_0_i_1_n_0 ),
        .I1(\bdatr[2]_INST_0_i_1_n_0 ),
        .I2(\bdatr[18]_INST_0_i_1_n_0 ),
        .I3(\bdatr[2]_INST_0_i_2_n_0 ),
        .I4(\bdatr[2]_INST_0_i_3_n_0 ),
        .I5(\bdatr[15]_INST_0_i_5_n_0 ),
        .O(bdatr[2]));
  LUT4 #(
    .INIT(16'hB888)) 
    \bdatr[2]_INST_0_i_1 
       (.I0(ram_datr0[18]),
        .I1(sel0[4]),
        .I2(sel0[3]),
        .I3(ram_datr1[18]),
        .O(\bdatr[2]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF808F808F808FFFF)) 
    \bdatr[2]_INST_0_i_2 
       (.I0(sel0[3]),
        .I1(ram_datr1[2]),
        .I2(sel0[4]),
        .I3(ram_datr0[2]),
        .I4(badr1_b),
        .I5(bcmdl_b),
        .O(\bdatr[2]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h10131313DCDFDFDF)) 
    \bdatr[2]_INST_0_i_3 
       (.I0(ram_datr3[2]),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(ram_datr4[2]),
        .I4(sel0[0]),
        .I5(ram_datr2[2]),
        .O(\bdatr[2]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAA20A02A0A20002)) 
    \bdatr[30]_INST_0 
       (.I0(bcmdl_b),
        .I1(\bdatr[30]_INST_0_i_1_n_0 ),
        .I2(sel0[4]),
        .I3(sel0[3]),
        .I4(ram_datr0[30]),
        .I5(ram_datr1[30]),
        .O(bdatr[30]));
  LUT6 #(
    .INIT(64'h4744477747774777)) 
    \bdatr[30]_INST_0_i_1 
       (.I0(ram_datr2[30]),
        .I1(sel0[2]),
        .I2(ram_datr3[30]),
        .I3(sel0[1]),
        .I4(ram_datr4[30]),
        .I5(sel0[0]),
        .O(\bdatr[30]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAA80A08A0A80008)) 
    \bdatr[31]_INST_0 
       (.I0(bcmdl_b),
        .I1(\bdatr[31]_INST_0_i_1_n_0 ),
        .I2(sel0[4]),
        .I3(sel0[3]),
        .I4(ram_datr0[31]),
        .I5(ram_datr1[31]),
        .O(bdatr[31]));
  LUT6 #(
    .INIT(64'hFFFF0000B888B888)) 
    \bdatr[31]_INST_0_i_1 
       (.I0(ram_datr3[31]),
        .I1(sel0[1]),
        .I2(ram_datr4[31]),
        .I3(sel0[0]),
        .I4(ram_datr2[31]),
        .I5(sel0[2]),
        .O(\bdatr[31]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hDF00DFDFDD00DD00)) 
    \bdatr[3]_INST_0 
       (.I0(\bdatr[15]_INST_0_i_1_n_0 ),
        .I1(\bdatr[3]_INST_0_i_1_n_0 ),
        .I2(\bdatr[19]_INST_0_i_1_n_0 ),
        .I3(\bdatr[3]_INST_0_i_2_n_0 ),
        .I4(\bdatr[3]_INST_0_i_3_n_0 ),
        .I5(\bdatr[15]_INST_0_i_5_n_0 ),
        .O(bdatr[3]));
  LUT4 #(
    .INIT(16'hB888)) 
    \bdatr[3]_INST_0_i_1 
       (.I0(ram_datr0[19]),
        .I1(sel0[4]),
        .I2(sel0[3]),
        .I3(ram_datr1[19]),
        .O(\bdatr[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF808F808F808FFFF)) 
    \bdatr[3]_INST_0_i_2 
       (.I0(sel0[3]),
        .I1(ram_datr1[3]),
        .I2(sel0[4]),
        .I3(ram_datr0[3]),
        .I4(badr1_b),
        .I5(bcmdl_b),
        .O(\bdatr[3]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h10131313DCDFDFDF)) 
    \bdatr[3]_INST_0_i_3 
       (.I0(ram_datr3[3]),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(ram_datr4[3]),
        .I4(sel0[0]),
        .I5(ram_datr2[3]),
        .O(\bdatr[3]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hDF00DFDFDD00DD00)) 
    \bdatr[4]_INST_0 
       (.I0(\bdatr[15]_INST_0_i_1_n_0 ),
        .I1(\bdatr[4]_INST_0_i_1_n_0 ),
        .I2(\bdatr[20]_INST_0_i_1_n_0 ),
        .I3(\bdatr[4]_INST_0_i_2_n_0 ),
        .I4(\bdatr[4]_INST_0_i_3_n_0 ),
        .I5(\bdatr[15]_INST_0_i_5_n_0 ),
        .O(bdatr[4]));
  LUT4 #(
    .INIT(16'hB888)) 
    \bdatr[4]_INST_0_i_1 
       (.I0(ram_datr0[20]),
        .I1(sel0[4]),
        .I2(sel0[3]),
        .I3(ram_datr1[20]),
        .O(\bdatr[4]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF808F808F808FFFF)) 
    \bdatr[4]_INST_0_i_2 
       (.I0(sel0[3]),
        .I1(ram_datr1[4]),
        .I2(sel0[4]),
        .I3(ram_datr0[4]),
        .I4(badr1_b),
        .I5(bcmdl_b),
        .O(\bdatr[4]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h10131313DCDFDFDF)) 
    \bdatr[4]_INST_0_i_3 
       (.I0(ram_datr3[4]),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(ram_datr4[4]),
        .I4(sel0[0]),
        .I5(ram_datr2[4]),
        .O(\bdatr[4]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hDF00DFDFDD00DD00)) 
    \bdatr[5]_INST_0 
       (.I0(\bdatr[15]_INST_0_i_1_n_0 ),
        .I1(\bdatr[5]_INST_0_i_1_n_0 ),
        .I2(\bdatr[21]_INST_0_i_1_n_0 ),
        .I3(\bdatr[5]_INST_0_i_2_n_0 ),
        .I4(\bdatr[5]_INST_0_i_3_n_0 ),
        .I5(\bdatr[15]_INST_0_i_5_n_0 ),
        .O(bdatr[5]));
  LUT4 #(
    .INIT(16'hB888)) 
    \bdatr[5]_INST_0_i_1 
       (.I0(ram_datr0[21]),
        .I1(sel0[4]),
        .I2(sel0[3]),
        .I3(ram_datr1[21]),
        .O(\bdatr[5]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF808F808F808FFFF)) 
    \bdatr[5]_INST_0_i_2 
       (.I0(sel0[3]),
        .I1(ram_datr1[5]),
        .I2(sel0[4]),
        .I3(ram_datr0[5]),
        .I4(badr1_b),
        .I5(bcmdl_b),
        .O(\bdatr[5]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h10131313DCDFDFDF)) 
    \bdatr[5]_INST_0_i_3 
       (.I0(ram_datr3[5]),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(ram_datr4[5]),
        .I4(sel0[0]),
        .I5(ram_datr2[5]),
        .O(\bdatr[5]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hDF00DFDFDD00DD00)) 
    \bdatr[6]_INST_0 
       (.I0(\bdatr[15]_INST_0_i_1_n_0 ),
        .I1(\bdatr[6]_INST_0_i_1_n_0 ),
        .I2(\bdatr[22]_INST_0_i_1_n_0 ),
        .I3(\bdatr[6]_INST_0_i_2_n_0 ),
        .I4(\bdatr[6]_INST_0_i_3_n_0 ),
        .I5(\bdatr[15]_INST_0_i_5_n_0 ),
        .O(bdatr[6]));
  LUT4 #(
    .INIT(16'hB888)) 
    \bdatr[6]_INST_0_i_1 
       (.I0(ram_datr0[22]),
        .I1(sel0[4]),
        .I2(sel0[3]),
        .I3(ram_datr1[22]),
        .O(\bdatr[6]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF808F808F808FFFF)) 
    \bdatr[6]_INST_0_i_2 
       (.I0(sel0[3]),
        .I1(ram_datr1[6]),
        .I2(sel0[4]),
        .I3(ram_datr0[6]),
        .I4(badr1_b),
        .I5(bcmdl_b),
        .O(\bdatr[6]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h10131313DCDFDFDF)) 
    \bdatr[6]_INST_0_i_3 
       (.I0(ram_datr3[6]),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(ram_datr4[6]),
        .I4(sel0[0]),
        .I5(ram_datr2[6]),
        .O(\bdatr[6]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hDF00DFDFDD00DD00)) 
    \bdatr[7]_INST_0 
       (.I0(\bdatr[15]_INST_0_i_1_n_0 ),
        .I1(\bdatr[7]_INST_0_i_1_n_0 ),
        .I2(\bdatr[23]_INST_0_i_1_n_0 ),
        .I3(\bdatr[7]_INST_0_i_2_n_0 ),
        .I4(\bdatr[7]_INST_0_i_3_n_0 ),
        .I5(\bdatr[15]_INST_0_i_5_n_0 ),
        .O(bdatr[7]));
  LUT4 #(
    .INIT(16'hB888)) 
    \bdatr[7]_INST_0_i_1 
       (.I0(ram_datr0[23]),
        .I1(sel0[4]),
        .I2(sel0[3]),
        .I3(ram_datr1[23]),
        .O(\bdatr[7]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF808F808F808FFFF)) 
    \bdatr[7]_INST_0_i_2 
       (.I0(sel0[3]),
        .I1(ram_datr1[7]),
        .I2(sel0[4]),
        .I3(ram_datr0[7]),
        .I4(badr1_b),
        .I5(bcmdl_b),
        .O(\bdatr[7]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h10131313DCDFDFDF)) 
    \bdatr[7]_INST_0_i_3 
       (.I0(ram_datr3[7]),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(ram_datr4[7]),
        .I4(sel0[0]),
        .I5(ram_datr2[7]),
        .O(\bdatr[7]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hDF00DFDFDD00DD00)) 
    \bdatr[8]_INST_0 
       (.I0(\bdatr[15]_INST_0_i_1_n_0 ),
        .I1(\bdatr[8]_INST_0_i_1_n_0 ),
        .I2(\bdatr[24]_INST_0_i_1_n_0 ),
        .I3(\bdatr[8]_INST_0_i_2_n_0 ),
        .I4(\bdatr[8]_INST_0_i_3_n_0 ),
        .I5(\bdatr[15]_INST_0_i_5_n_0 ),
        .O(bdatr[8]));
  LUT4 #(
    .INIT(16'hB888)) 
    \bdatr[8]_INST_0_i_1 
       (.I0(ram_datr0[24]),
        .I1(sel0[4]),
        .I2(sel0[3]),
        .I3(ram_datr1[24]),
        .O(\bdatr[8]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF808F808F808FFFF)) 
    \bdatr[8]_INST_0_i_2 
       (.I0(sel0[3]),
        .I1(ram_datr1[8]),
        .I2(sel0[4]),
        .I3(ram_datr0[8]),
        .I4(badr1_b),
        .I5(bcmdl_b),
        .O(\bdatr[8]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h10131313DCDFDFDF)) 
    \bdatr[8]_INST_0_i_3 
       (.I0(ram_datr3[8]),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(ram_datr4[8]),
        .I4(sel0[0]),
        .I5(ram_datr2[8]),
        .O(\bdatr[8]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hDF00DFDFDD00DD00)) 
    \bdatr[9]_INST_0 
       (.I0(\bdatr[15]_INST_0_i_1_n_0 ),
        .I1(\bdatr[9]_INST_0_i_1_n_0 ),
        .I2(\bdatr[25]_INST_0_i_1_n_0 ),
        .I3(\bdatr[9]_INST_0_i_2_n_0 ),
        .I4(\bdatr[9]_INST_0_i_3_n_0 ),
        .I5(\bdatr[15]_INST_0_i_5_n_0 ),
        .O(bdatr[9]));
  LUT4 #(
    .INIT(16'hB888)) 
    \bdatr[9]_INST_0_i_1 
       (.I0(ram_datr0[25]),
        .I1(sel0[4]),
        .I2(sel0[3]),
        .I3(ram_datr1[25]),
        .O(\bdatr[9]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF808F808F808FFFF)) 
    \bdatr[9]_INST_0_i_2 
       (.I0(sel0[3]),
        .I1(ram_datr1[9]),
        .I2(sel0[4]),
        .I3(ram_datr0[9]),
        .I4(badr1_b),
        .I5(bcmdl_b),
        .O(\bdatr[9]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000F77FFFF0F77)) 
    \bdatr[9]_INST_0_i_3 
       (.I0(sel0[0]),
        .I1(ram_datr4[9]),
        .I2(ram_datr3[9]),
        .I3(sel0[1]),
        .I4(sel0[2]),
        .I5(ram_datr2[9]),
        .O(\bdatr[9]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0700)) 
    brd0_b_i_1
       (.I0(bcs_eram_n),
        .I1(bcs_ram0_n),
        .I2(bcs_ram_n),
        .I3(bcmdr),
        .O(brd0_b0));
  FDRE brd0_b_reg
       (.C(clk),
        .CE(brdy),
        .D(brd0_b0),
        .Q(sel0[4]),
        .R(p_0_in));
  LUT3 #(
    .INIT(8'h04)) 
    brd1_b_i_1
       (.I0(bcs_ram_n),
        .I1(bcmdr),
        .I2(bcs_ram1_n),
        .O(brd1_b0));
  FDRE brd1_b_reg
       (.C(clk),
        .CE(brdy),
        .D(brd1_b0),
        .Q(sel0[3]),
        .R(p_0_in));
  LUT3 #(
    .INIT(8'h04)) 
    brd2_b_i_1
       (.I0(bcs_ram_n),
        .I1(bcmdr),
        .I2(bcs_ram2_n),
        .O(brd2_b0));
  FDRE brd2_b_reg
       (.C(clk),
        .CE(brdy),
        .D(brd2_b0),
        .Q(sel0[2]),
        .R(p_0_in));
  LUT3 #(
    .INIT(8'h04)) 
    brd3_b_i_1
       (.I0(bcs_ram_n),
        .I1(bcmdr),
        .I2(bcs_ram3_n),
        .O(brd3_b0));
  FDRE brd3_b_reg
       (.C(clk),
        .CE(brdy),
        .D(brd3_b0),
        .Q(sel0[1]),
        .R(p_0_in));
  LUT1 #(
    .INIT(2'h1)) 
    brd4_b_i_1
       (.I0(rst_n),
        .O(p_0_in));
  LUT3 #(
    .INIT(8'h04)) 
    brd4_b_i_2
       (.I0(bcs_ram_n),
        .I1(bcmdr),
        .I2(bcs_ram4_n),
        .O(brd4_b0));
  FDRE brd4_b_reg
       (.C(clk),
        .CE(brdy),
        .D(brd4_b0),
        .Q(sel0[0]),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'h3020)) 
    ram_ce_INST_0
       (.I0(bcmdr),
        .I1(bcs_ram_n),
        .I2(brdy),
        .I3(bcmdw),
        .O(ram_ce));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    ram_ce_INST_0_i_1
       (.I0(bcs_ram3_n),
        .I1(bcs_ram4_n),
        .I2(bcs_ram1_n),
        .I3(bcs_ram2_n),
        .I4(bcs_eram_n),
        .I5(bcs_ram0_n),
        .O(bcs_ram_n));
  LUT4 #(
    .INIT(16'h4000)) 
    \ram_datw[0]_INST_0 
       (.I0(bcs_ram_n),
        .I1(brdy),
        .I2(bcmdw),
        .I3(bdatw[0]),
        .O(ram_datw[0]));
  LUT4 #(
    .INIT(16'h4000)) 
    \ram_datw[10]_INST_0 
       (.I0(bcs_ram_n),
        .I1(brdy),
        .I2(bcmdw),
        .I3(bdatw[10]),
        .O(ram_datw[10]));
  LUT4 #(
    .INIT(16'h4000)) 
    \ram_datw[11]_INST_0 
       (.I0(bcs_ram_n),
        .I1(brdy),
        .I2(bcmdw),
        .I3(bdatw[11]),
        .O(ram_datw[11]));
  LUT4 #(
    .INIT(16'h4000)) 
    \ram_datw[12]_INST_0 
       (.I0(bcs_ram_n),
        .I1(brdy),
        .I2(bcmdw),
        .I3(bdatw[12]),
        .O(ram_datw[12]));
  LUT4 #(
    .INIT(16'h4000)) 
    \ram_datw[13]_INST_0 
       (.I0(bcs_ram_n),
        .I1(brdy),
        .I2(bcmdw),
        .I3(bdatw[13]),
        .O(ram_datw[13]));
  LUT4 #(
    .INIT(16'h4000)) 
    \ram_datw[14]_INST_0 
       (.I0(bcs_ram_n),
        .I1(brdy),
        .I2(bcmdw),
        .I3(bdatw[14]),
        .O(ram_datw[14]));
  LUT4 #(
    .INIT(16'h4000)) 
    \ram_datw[15]_INST_0 
       (.I0(bcs_ram_n),
        .I1(brdy),
        .I2(bcmdw),
        .I3(bdatw[15]),
        .O(ram_datw[15]));
  LUT6 #(
    .INIT(64'h0A0000000C000000)) 
    \ram_datw[16]_INST_0 
       (.I0(bdatw[16]),
        .I1(bdatw[0]),
        .I2(bcs_ram_n),
        .I3(brdy),
        .I4(bcmdw),
        .I5(bcmdl),
        .O(ram_datw[16]));
  LUT6 #(
    .INIT(64'h0A0000000C000000)) 
    \ram_datw[17]_INST_0 
       (.I0(bdatw[17]),
        .I1(bdatw[1]),
        .I2(bcs_ram_n),
        .I3(brdy),
        .I4(bcmdw),
        .I5(bcmdl),
        .O(ram_datw[17]));
  LUT6 #(
    .INIT(64'h0A0000000C000000)) 
    \ram_datw[18]_INST_0 
       (.I0(bdatw[18]),
        .I1(bdatw[2]),
        .I2(bcs_ram_n),
        .I3(brdy),
        .I4(bcmdw),
        .I5(bcmdl),
        .O(ram_datw[18]));
  LUT6 #(
    .INIT(64'h0A0000000C000000)) 
    \ram_datw[19]_INST_0 
       (.I0(bdatw[19]),
        .I1(bdatw[3]),
        .I2(bcs_ram_n),
        .I3(brdy),
        .I4(bcmdw),
        .I5(bcmdl),
        .O(ram_datw[19]));
  LUT4 #(
    .INIT(16'h4000)) 
    \ram_datw[1]_INST_0 
       (.I0(bcs_ram_n),
        .I1(brdy),
        .I2(bcmdw),
        .I3(bdatw[1]),
        .O(ram_datw[1]));
  LUT6 #(
    .INIT(64'h0A0000000C000000)) 
    \ram_datw[20]_INST_0 
       (.I0(bdatw[20]),
        .I1(bdatw[4]),
        .I2(bcs_ram_n),
        .I3(brdy),
        .I4(bcmdw),
        .I5(bcmdl),
        .O(ram_datw[20]));
  LUT6 #(
    .INIT(64'h0A0000000C000000)) 
    \ram_datw[21]_INST_0 
       (.I0(bdatw[21]),
        .I1(bdatw[5]),
        .I2(bcs_ram_n),
        .I3(brdy),
        .I4(bcmdw),
        .I5(bcmdl),
        .O(ram_datw[21]));
  LUT6 #(
    .INIT(64'h0A0000000C000000)) 
    \ram_datw[22]_INST_0 
       (.I0(bdatw[22]),
        .I1(bdatw[6]),
        .I2(bcs_ram_n),
        .I3(brdy),
        .I4(bcmdw),
        .I5(bcmdl),
        .O(ram_datw[22]));
  LUT6 #(
    .INIT(64'h0A0000000C000000)) 
    \ram_datw[23]_INST_0 
       (.I0(bdatw[23]),
        .I1(bdatw[7]),
        .I2(bcs_ram_n),
        .I3(brdy),
        .I4(bcmdw),
        .I5(bcmdl),
        .O(ram_datw[23]));
  LUT6 #(
    .INIT(64'h0A0000000C000000)) 
    \ram_datw[24]_INST_0 
       (.I0(bdatw[24]),
        .I1(bdatw[8]),
        .I2(bcs_ram_n),
        .I3(brdy),
        .I4(bcmdw),
        .I5(bcmdl),
        .O(ram_datw[24]));
  LUT6 #(
    .INIT(64'h0A0000000C000000)) 
    \ram_datw[25]_INST_0 
       (.I0(bdatw[25]),
        .I1(bdatw[9]),
        .I2(bcs_ram_n),
        .I3(brdy),
        .I4(bcmdw),
        .I5(bcmdl),
        .O(ram_datw[25]));
  LUT6 #(
    .INIT(64'h0A0000000C000000)) 
    \ram_datw[26]_INST_0 
       (.I0(bdatw[26]),
        .I1(bdatw[10]),
        .I2(bcs_ram_n),
        .I3(brdy),
        .I4(bcmdw),
        .I5(bcmdl),
        .O(ram_datw[26]));
  LUT6 #(
    .INIT(64'h0A0000000C000000)) 
    \ram_datw[27]_INST_0 
       (.I0(bdatw[27]),
        .I1(bdatw[11]),
        .I2(bcs_ram_n),
        .I3(brdy),
        .I4(bcmdw),
        .I5(bcmdl),
        .O(ram_datw[27]));
  LUT6 #(
    .INIT(64'h0A0000000C000000)) 
    \ram_datw[28]_INST_0 
       (.I0(bdatw[28]),
        .I1(bdatw[12]),
        .I2(bcs_ram_n),
        .I3(brdy),
        .I4(bcmdw),
        .I5(bcmdl),
        .O(ram_datw[28]));
  LUT6 #(
    .INIT(64'h0A0000000C000000)) 
    \ram_datw[29]_INST_0 
       (.I0(bdatw[29]),
        .I1(bdatw[13]),
        .I2(bcs_ram_n),
        .I3(brdy),
        .I4(bcmdw),
        .I5(bcmdl),
        .O(ram_datw[29]));
  LUT4 #(
    .INIT(16'h4000)) 
    \ram_datw[2]_INST_0 
       (.I0(bcs_ram_n),
        .I1(brdy),
        .I2(bcmdw),
        .I3(bdatw[2]),
        .O(ram_datw[2]));
  LUT6 #(
    .INIT(64'h0A0000000C000000)) 
    \ram_datw[30]_INST_0 
       (.I0(bdatw[30]),
        .I1(bdatw[14]),
        .I2(bcs_ram_n),
        .I3(brdy),
        .I4(bcmdw),
        .I5(bcmdl),
        .O(ram_datw[30]));
  LUT6 #(
    .INIT(64'h0A0000000C000000)) 
    \ram_datw[31]_INST_0 
       (.I0(bdatw[31]),
        .I1(bdatw[15]),
        .I2(bcs_ram_n),
        .I3(brdy),
        .I4(bcmdw),
        .I5(bcmdl),
        .O(ram_datw[31]));
  LUT4 #(
    .INIT(16'h4000)) 
    \ram_datw[3]_INST_0 
       (.I0(bcs_ram_n),
        .I1(brdy),
        .I2(bcmdw),
        .I3(bdatw[3]),
        .O(ram_datw[3]));
  LUT4 #(
    .INIT(16'h4000)) 
    \ram_datw[4]_INST_0 
       (.I0(bcs_ram_n),
        .I1(brdy),
        .I2(bcmdw),
        .I3(bdatw[4]),
        .O(ram_datw[4]));
  LUT4 #(
    .INIT(16'h4000)) 
    \ram_datw[5]_INST_0 
       (.I0(bcs_ram_n),
        .I1(brdy),
        .I2(bcmdw),
        .I3(bdatw[5]),
        .O(ram_datw[5]));
  LUT4 #(
    .INIT(16'h4000)) 
    \ram_datw[6]_INST_0 
       (.I0(bcs_ram_n),
        .I1(brdy),
        .I2(bcmdw),
        .I3(bdatw[6]),
        .O(ram_datw[6]));
  LUT4 #(
    .INIT(16'h4000)) 
    \ram_datw[7]_INST_0 
       (.I0(bcs_ram_n),
        .I1(brdy),
        .I2(bcmdw),
        .I3(bdatw[7]),
        .O(ram_datw[7]));
  LUT4 #(
    .INIT(16'h4000)) 
    \ram_datw[8]_INST_0 
       (.I0(bcs_ram_n),
        .I1(brdy),
        .I2(bcmdw),
        .I3(bdatw[8]),
        .O(ram_datw[8]));
  LUT4 #(
    .INIT(16'h4000)) 
    \ram_datw[9]_INST_0 
       (.I0(bcs_ram_n),
        .I1(brdy),
        .I2(bcmdw),
        .I3(bdatw[9]),
        .O(ram_datw[9]));
  LUT6 #(
    .INIT(64'h00000000EFCC0000)) 
    \ram_we[0]_INST_0 
       (.I0(badr[0]),
        .I1(bcmdl),
        .I2(bcmdb),
        .I3(badr[1]),
        .I4(\ram_we[3]_INST_0_i_1_n_0 ),
        .I5(bcs_ram_n),
        .O(ram_we[0]));
  LUT6 #(
    .INIT(64'h00000000DFCC0000)) 
    \ram_we[1]_INST_0 
       (.I0(badr[0]),
        .I1(bcmdl),
        .I2(bcmdb),
        .I3(badr[1]),
        .I4(\ram_we[3]_INST_0_i_1_n_0 ),
        .I5(bcs_ram_n),
        .O(ram_we[1]));
  LUT6 #(
    .INIT(64'h0C000C000E000F00)) 
    \ram_we[2]_INST_0 
       (.I0(badr[0]),
        .I1(bcmdl),
        .I2(bcs_ram_n),
        .I3(\ram_we[3]_INST_0_i_1_n_0 ),
        .I4(bcmdb),
        .I5(badr[1]),
        .O(ram_we[2]));
  LUT6 #(
    .INIT(64'h0C000C000D000F00)) 
    \ram_we[3]_INST_0 
       (.I0(badr[0]),
        .I1(bcmdl),
        .I2(bcs_ram_n),
        .I3(\ram_we[3]_INST_0_i_1_n_0 ),
        .I4(bcmdb),
        .I5(badr[1]),
        .O(ram_we[3]));
  LUT2 #(
    .INIT(4'h8)) 
    \ram_we[3]_INST_0_i_1 
       (.I0(brdy),
        .I1(bcmdw),
        .O(\ram_we[3]_INST_0_i_1_n_0 ));
endmodule
