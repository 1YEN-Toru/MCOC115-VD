
(* STRUCTURAL_NETLIST = "yes" *)
module ram_wrap32
   (clk,
    rst_n,
    brdy,
    bcs_ram_n,
    bcs_ram0_n,
    bcs_ram1_n,
    bcs_ram2_n,
    bcs_ram3_n,
    bcs_ram4_n,
    bcmd,
    badr,
    bdatw,
    bdatr,
    ram_dou0,
    ram_dou1,
    ram_dou2,
    ram_dou3,
    ram_dou4,
    ram_ce0,
    ram_ce1,
    ram_ce2,
    ram_ce3,
    ram_ce4,
    ram_we,
    ram_din);
//
//	Moscovium RAM wrapper
//		(c) 2021	1YEN Toru
//
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
  input bcs_ram_n;
  input bcs_ram0_n;
  input bcs_ram1_n;
  input bcs_ram2_n;
  input bcs_ram3_n;
  input bcs_ram4_n;
  input [3:0]bcmd;
  input [15:0]badr;
  input [31:0]bdatw;
  output [31:0]bdatr;
  input [31:0]ram_dou0;
  input [31:0]ram_dou1;
  input [31:0]ram_dou2;
  input [31:0]ram_dou3;
  input [31:0]ram_dou4;
  output ram_ce0;
  output ram_ce1;
  output ram_ce2;
  output ram_ce3;
  output ram_ce4;
  output [3:0]ram_we;
  output [31:0]ram_din;

  wire \<const0> ;
  wire \<const1> ;
  wire [15:0]badr;
  wire badr_1b;
  wire badr_1b_i_1_n_0;
  wire [3:0]bcmd;
  wire bcmd_3b;
  wire bcmd_3b_i_1_n_0;
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
  wire \bdatr[0]_INST_0_i_4_n_0 ;
  wire \bdatr[10]_INST_0_i_1_n_0 ;
  wire \bdatr[10]_INST_0_i_2_n_0 ;
  wire \bdatr[10]_INST_0_i_3_n_0 ;
  wire \bdatr[10]_INST_0_i_4_n_0 ;
  wire \bdatr[11]_INST_0_i_1_n_0 ;
  wire \bdatr[11]_INST_0_i_2_n_0 ;
  wire \bdatr[11]_INST_0_i_3_n_0 ;
  wire \bdatr[11]_INST_0_i_4_n_0 ;
  wire \bdatr[12]_INST_0_i_1_n_0 ;
  wire \bdatr[12]_INST_0_i_2_n_0 ;
  wire \bdatr[12]_INST_0_i_3_n_0 ;
  wire \bdatr[12]_INST_0_i_4_n_0 ;
  wire \bdatr[13]_INST_0_i_1_n_0 ;
  wire \bdatr[13]_INST_0_i_2_n_0 ;
  wire \bdatr[13]_INST_0_i_3_n_0 ;
  wire \bdatr[13]_INST_0_i_4_n_0 ;
  wire \bdatr[14]_INST_0_i_1_n_0 ;
  wire \bdatr[14]_INST_0_i_2_n_0 ;
  wire \bdatr[14]_INST_0_i_3_n_0 ;
  wire \bdatr[14]_INST_0_i_4_n_0 ;
  wire \bdatr[15]_INST_0_i_1_n_0 ;
  wire \bdatr[15]_INST_0_i_2_n_0 ;
  wire \bdatr[15]_INST_0_i_3_n_0 ;
  wire \bdatr[15]_INST_0_i_4_n_0 ;
  wire \bdatr[15]_INST_0_i_5_n_0 ;
  wire \bdatr[15]_INST_0_i_6_n_0 ;
  wire \bdatr[15]_INST_0_i_7_n_0 ;
  wire \bdatr[15]_INST_0_i_8_n_0 ;
  wire \bdatr[16]_INST_0_i_1_n_0 ;
  wire \bdatr[17]_INST_0_i_1_n_0 ;
  wire \bdatr[18]_INST_0_i_1_n_0 ;
  wire \bdatr[19]_INST_0_i_1_n_0 ;
  wire \bdatr[1]_INST_0_i_1_n_0 ;
  wire \bdatr[1]_INST_0_i_2_n_0 ;
  wire \bdatr[1]_INST_0_i_3_n_0 ;
  wire \bdatr[1]_INST_0_i_4_n_0 ;
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
  wire \bdatr[2]_INST_0_i_4_n_0 ;
  wire \bdatr[30]_INST_0_i_1_n_0 ;
  wire \bdatr[31]_INST_0_i_1_n_0 ;
  wire \bdatr[31]_INST_0_i_2_n_0 ;
  wire \bdatr[31]_INST_0_i_3_n_0 ;
  wire \bdatr[31]_INST_0_i_4_n_0 ;
  wire \bdatr[31]_INST_0_i_5_n_0 ;
  wire \bdatr[3]_INST_0_i_1_n_0 ;
  wire \bdatr[3]_INST_0_i_2_n_0 ;
  wire \bdatr[3]_INST_0_i_3_n_0 ;
  wire \bdatr[3]_INST_0_i_4_n_0 ;
  wire \bdatr[4]_INST_0_i_1_n_0 ;
  wire \bdatr[4]_INST_0_i_2_n_0 ;
  wire \bdatr[4]_INST_0_i_3_n_0 ;
  wire \bdatr[4]_INST_0_i_4_n_0 ;
  wire \bdatr[5]_INST_0_i_1_n_0 ;
  wire \bdatr[5]_INST_0_i_2_n_0 ;
  wire \bdatr[5]_INST_0_i_3_n_0 ;
  wire \bdatr[5]_INST_0_i_4_n_0 ;
  wire \bdatr[6]_INST_0_i_1_n_0 ;
  wire \bdatr[6]_INST_0_i_2_n_0 ;
  wire \bdatr[6]_INST_0_i_3_n_0 ;
  wire \bdatr[6]_INST_0_i_4_n_0 ;
  wire \bdatr[7]_INST_0_i_1_n_0 ;
  wire \bdatr[7]_INST_0_i_2_n_0 ;
  wire \bdatr[7]_INST_0_i_3_n_0 ;
  wire \bdatr[7]_INST_0_i_4_n_0 ;
  wire \bdatr[8]_INST_0_i_1_n_0 ;
  wire \bdatr[8]_INST_0_i_2_n_0 ;
  wire \bdatr[8]_INST_0_i_3_n_0 ;
  wire \bdatr[8]_INST_0_i_4_n_0 ;
  wire \bdatr[9]_INST_0_i_1_n_0 ;
  wire \bdatr[9]_INST_0_i_2_n_0 ;
  wire \bdatr[9]_INST_0_i_3_n_0 ;
  wire \bdatr[9]_INST_0_i_4_n_0 ;
  wire [31:0]bdatw;
  wire brdy;
  wire clk;
  wire oea00;
  wire oea10;
  wire oea20;
  wire oea30;
  wire oea4;
  wire oea40;
  wire p_0_in;
  wire ram_ce0;
  wire ram_ce1;
  wire ram_ce2;
  wire ram_ce3;
  wire ram_ce4;
  wire [31:0]ram_din;
  wire [31:0]ram_dou0;
  wire [31:0]ram_dou1;
  wire [31:0]ram_dou2;
  wire [31:0]ram_dou3;
  wire [31:0]ram_dou4;
  wire [3:0]ram_we;
  wire ram_we2;
  wire rst_n;
  wire [3:0]sel0;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT2 #(
    .INIT(4'h8)) 
    badr_1b_i_1
       (.I0(badr[1]),
        .I1(rst_n),
        .O(badr_1b_i_1_n_0));
  FDRE badr_1b_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(badr_1b_i_1_n_0),
        .Q(badr_1b),
        .R(\<const0> ));
  LUT2 #(
    .INIT(4'h8)) 
    bcmd_3b_i_1
       (.I0(bcmd[3]),
        .I1(rst_n),
        .O(bcmd_3b_i_1_n_0));
  FDRE bcmd_3b_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(bcmd_3b_i_1_n_0),
        .Q(bcmd_3b),
        .R(\<const0> ));
  LUT6 #(
    .INIT(64'hFFFFAAAEAAAEAAAE)) 
    \bdatr[0]_INST_0 
       (.I0(\bdatr[0]_INST_0_i_1_n_0 ),
        .I1(\bdatr[0]_INST_0_i_2_n_0 ),
        .I2(sel0[3]),
        .I3(sel0[2]),
        .I4(\bdatr[15]_INST_0_i_3_n_0 ),
        .I5(ram_dou1[16]),
        .O(bdatr[0]));
  LUT6 #(
    .INIT(64'hF0AAF000CC00CC00)) 
    \bdatr[0]_INST_0_i_1 
       (.I0(ram_dou1[0]),
        .I1(ram_dou0[16]),
        .I2(ram_dou0[0]),
        .I3(sel0[3]),
        .I4(sel0[2]),
        .I5(\bdatr[15]_INST_0_i_4_n_0 ),
        .O(\bdatr[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \bdatr[0]_INST_0_i_2 
       (.I0(ram_dou4[0]),
        .I1(\bdatr[15]_INST_0_i_5_n_0 ),
        .I2(ram_dou4[16]),
        .I3(\bdatr[15]_INST_0_i_6_n_0 ),
        .I4(\bdatr[0]_INST_0_i_3_n_0 ),
        .I5(\bdatr[0]_INST_0_i_4_n_0 ),
        .O(\bdatr[0]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0A000A000A000C00)) 
    \bdatr[0]_INST_0_i_3 
       (.I0(ram_dou3[0]),
        .I1(ram_dou3[16]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(bcmd_3b),
        .I5(badr_1b),
        .O(\bdatr[0]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0A0C0)) 
    \bdatr[0]_INST_0_i_4 
       (.I0(ram_dou2[0]),
        .I1(ram_dou2[16]),
        .I2(sel0[1]),
        .I3(bcmd_3b),
        .I4(badr_1b),
        .O(\bdatr[0]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAAAEAAAEAAAE)) 
    \bdatr[10]_INST_0 
       (.I0(\bdatr[10]_INST_0_i_1_n_0 ),
        .I1(\bdatr[10]_INST_0_i_2_n_0 ),
        .I2(sel0[3]),
        .I3(sel0[2]),
        .I4(\bdatr[15]_INST_0_i_3_n_0 ),
        .I5(ram_dou1[26]),
        .O(bdatr[10]));
  LUT6 #(
    .INIT(64'hF0AAF000CC00CC00)) 
    \bdatr[10]_INST_0_i_1 
       (.I0(ram_dou1[10]),
        .I1(ram_dou0[26]),
        .I2(ram_dou0[10]),
        .I3(sel0[3]),
        .I4(sel0[2]),
        .I5(\bdatr[15]_INST_0_i_4_n_0 ),
        .O(\bdatr[10]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \bdatr[10]_INST_0_i_2 
       (.I0(ram_dou4[10]),
        .I1(\bdatr[15]_INST_0_i_5_n_0 ),
        .I2(ram_dou4[26]),
        .I3(\bdatr[15]_INST_0_i_6_n_0 ),
        .I4(\bdatr[10]_INST_0_i_3_n_0 ),
        .I5(\bdatr[10]_INST_0_i_4_n_0 ),
        .O(\bdatr[10]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0A000A000A000C00)) 
    \bdatr[10]_INST_0_i_3 
       (.I0(ram_dou3[10]),
        .I1(ram_dou3[26]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(bcmd_3b),
        .I5(badr_1b),
        .O(\bdatr[10]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0A0C0)) 
    \bdatr[10]_INST_0_i_4 
       (.I0(ram_dou2[10]),
        .I1(ram_dou2[26]),
        .I2(sel0[1]),
        .I3(bcmd_3b),
        .I4(badr_1b),
        .O(\bdatr[10]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAAAEAAAEAAAE)) 
    \bdatr[11]_INST_0 
       (.I0(\bdatr[11]_INST_0_i_1_n_0 ),
        .I1(\bdatr[11]_INST_0_i_2_n_0 ),
        .I2(sel0[3]),
        .I3(sel0[2]),
        .I4(\bdatr[15]_INST_0_i_3_n_0 ),
        .I5(ram_dou1[27]),
        .O(bdatr[11]));
  LUT6 #(
    .INIT(64'hF0AAF000CC00CC00)) 
    \bdatr[11]_INST_0_i_1 
       (.I0(ram_dou1[11]),
        .I1(ram_dou0[27]),
        .I2(ram_dou0[11]),
        .I3(sel0[3]),
        .I4(sel0[2]),
        .I5(\bdatr[15]_INST_0_i_4_n_0 ),
        .O(\bdatr[11]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \bdatr[11]_INST_0_i_2 
       (.I0(ram_dou4[11]),
        .I1(\bdatr[15]_INST_0_i_5_n_0 ),
        .I2(ram_dou4[27]),
        .I3(\bdatr[15]_INST_0_i_6_n_0 ),
        .I4(\bdatr[11]_INST_0_i_3_n_0 ),
        .I5(\bdatr[11]_INST_0_i_4_n_0 ),
        .O(\bdatr[11]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0A000A000A000C00)) 
    \bdatr[11]_INST_0_i_3 
       (.I0(ram_dou3[11]),
        .I1(ram_dou3[27]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(bcmd_3b),
        .I5(badr_1b),
        .O(\bdatr[11]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0A0C0)) 
    \bdatr[11]_INST_0_i_4 
       (.I0(ram_dou2[11]),
        .I1(ram_dou2[27]),
        .I2(sel0[1]),
        .I3(bcmd_3b),
        .I4(badr_1b),
        .O(\bdatr[11]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAAAEAAAEAAAE)) 
    \bdatr[12]_INST_0 
       (.I0(\bdatr[12]_INST_0_i_1_n_0 ),
        .I1(\bdatr[12]_INST_0_i_2_n_0 ),
        .I2(sel0[3]),
        .I3(sel0[2]),
        .I4(\bdatr[15]_INST_0_i_3_n_0 ),
        .I5(ram_dou1[28]),
        .O(bdatr[12]));
  LUT6 #(
    .INIT(64'hF0AAF000CC00CC00)) 
    \bdatr[12]_INST_0_i_1 
       (.I0(ram_dou1[12]),
        .I1(ram_dou0[28]),
        .I2(ram_dou0[12]),
        .I3(sel0[3]),
        .I4(sel0[2]),
        .I5(\bdatr[15]_INST_0_i_4_n_0 ),
        .O(\bdatr[12]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \bdatr[12]_INST_0_i_2 
       (.I0(ram_dou4[12]),
        .I1(\bdatr[15]_INST_0_i_5_n_0 ),
        .I2(ram_dou4[28]),
        .I3(\bdatr[15]_INST_0_i_6_n_0 ),
        .I4(\bdatr[12]_INST_0_i_3_n_0 ),
        .I5(\bdatr[12]_INST_0_i_4_n_0 ),
        .O(\bdatr[12]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0A000A000A000C00)) 
    \bdatr[12]_INST_0_i_3 
       (.I0(ram_dou3[12]),
        .I1(ram_dou3[28]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(bcmd_3b),
        .I5(badr_1b),
        .O(\bdatr[12]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0A0C0)) 
    \bdatr[12]_INST_0_i_4 
       (.I0(ram_dou2[12]),
        .I1(ram_dou2[28]),
        .I2(sel0[1]),
        .I3(bcmd_3b),
        .I4(badr_1b),
        .O(\bdatr[12]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAAAEAAAEAAAE)) 
    \bdatr[13]_INST_0 
       (.I0(\bdatr[13]_INST_0_i_1_n_0 ),
        .I1(\bdatr[13]_INST_0_i_2_n_0 ),
        .I2(sel0[3]),
        .I3(sel0[2]),
        .I4(\bdatr[15]_INST_0_i_3_n_0 ),
        .I5(ram_dou1[29]),
        .O(bdatr[13]));
  LUT6 #(
    .INIT(64'hF0AAF000CC00CC00)) 
    \bdatr[13]_INST_0_i_1 
       (.I0(ram_dou1[13]),
        .I1(ram_dou0[29]),
        .I2(ram_dou0[13]),
        .I3(sel0[3]),
        .I4(sel0[2]),
        .I5(\bdatr[15]_INST_0_i_4_n_0 ),
        .O(\bdatr[13]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \bdatr[13]_INST_0_i_2 
       (.I0(ram_dou4[13]),
        .I1(\bdatr[15]_INST_0_i_5_n_0 ),
        .I2(ram_dou4[29]),
        .I3(\bdatr[15]_INST_0_i_6_n_0 ),
        .I4(\bdatr[13]_INST_0_i_3_n_0 ),
        .I5(\bdatr[13]_INST_0_i_4_n_0 ),
        .O(\bdatr[13]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0A000A000A000C00)) 
    \bdatr[13]_INST_0_i_3 
       (.I0(ram_dou3[13]),
        .I1(ram_dou3[29]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(bcmd_3b),
        .I5(badr_1b),
        .O(\bdatr[13]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0A0C0)) 
    \bdatr[13]_INST_0_i_4 
       (.I0(ram_dou2[13]),
        .I1(ram_dou2[29]),
        .I2(sel0[1]),
        .I3(bcmd_3b),
        .I4(badr_1b),
        .O(\bdatr[13]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAAAEAAAEAAAE)) 
    \bdatr[14]_INST_0 
       (.I0(\bdatr[14]_INST_0_i_1_n_0 ),
        .I1(\bdatr[14]_INST_0_i_2_n_0 ),
        .I2(sel0[3]),
        .I3(sel0[2]),
        .I4(\bdatr[15]_INST_0_i_3_n_0 ),
        .I5(ram_dou1[30]),
        .O(bdatr[14]));
  LUT6 #(
    .INIT(64'hF0AAF000CC00CC00)) 
    \bdatr[14]_INST_0_i_1 
       (.I0(ram_dou1[14]),
        .I1(ram_dou0[30]),
        .I2(ram_dou0[14]),
        .I3(sel0[3]),
        .I4(sel0[2]),
        .I5(\bdatr[15]_INST_0_i_4_n_0 ),
        .O(\bdatr[14]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \bdatr[14]_INST_0_i_2 
       (.I0(ram_dou4[14]),
        .I1(\bdatr[15]_INST_0_i_5_n_0 ),
        .I2(ram_dou4[30]),
        .I3(\bdatr[15]_INST_0_i_6_n_0 ),
        .I4(\bdatr[14]_INST_0_i_3_n_0 ),
        .I5(\bdatr[14]_INST_0_i_4_n_0 ),
        .O(\bdatr[14]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0A000A000A000C00)) 
    \bdatr[14]_INST_0_i_3 
       (.I0(ram_dou3[14]),
        .I1(ram_dou3[30]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(bcmd_3b),
        .I5(badr_1b),
        .O(\bdatr[14]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0A0C0)) 
    \bdatr[14]_INST_0_i_4 
       (.I0(ram_dou2[14]),
        .I1(ram_dou2[30]),
        .I2(sel0[1]),
        .I3(bcmd_3b),
        .I4(badr_1b),
        .O(\bdatr[14]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAAAEAAAEAAAE)) 
    \bdatr[15]_INST_0 
       (.I0(\bdatr[15]_INST_0_i_1_n_0 ),
        .I1(\bdatr[15]_INST_0_i_2_n_0 ),
        .I2(sel0[3]),
        .I3(sel0[2]),
        .I4(\bdatr[15]_INST_0_i_3_n_0 ),
        .I5(ram_dou1[31]),
        .O(bdatr[15]));
  LUT6 #(
    .INIT(64'hF0AAF000CC00CC00)) 
    \bdatr[15]_INST_0_i_1 
       (.I0(ram_dou1[15]),
        .I1(ram_dou0[31]),
        .I2(ram_dou0[15]),
        .I3(sel0[3]),
        .I4(sel0[2]),
        .I5(\bdatr[15]_INST_0_i_4_n_0 ),
        .O(\bdatr[15]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \bdatr[15]_INST_0_i_2 
       (.I0(ram_dou4[15]),
        .I1(\bdatr[15]_INST_0_i_5_n_0 ),
        .I2(ram_dou4[31]),
        .I3(\bdatr[15]_INST_0_i_6_n_0 ),
        .I4(\bdatr[15]_INST_0_i_7_n_0 ),
        .I5(\bdatr[15]_INST_0_i_8_n_0 ),
        .O(\bdatr[15]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \bdatr[15]_INST_0_i_3 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(bcmd_3b),
        .I3(badr_1b),
        .O(\bdatr[15]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \bdatr[15]_INST_0_i_4 
       (.I0(badr_1b),
        .I1(bcmd_3b),
        .O(\bdatr[15]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h02020200)) 
    \bdatr[15]_INST_0_i_5 
       (.I0(oea4),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(bcmd_3b),
        .I4(badr_1b),
        .O(\bdatr[15]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00000002)) 
    \bdatr[15]_INST_0_i_6 
       (.I0(oea4),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(bcmd_3b),
        .I4(badr_1b),
        .O(\bdatr[15]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0A000A000A000C00)) 
    \bdatr[15]_INST_0_i_7 
       (.I0(ram_dou3[15]),
        .I1(ram_dou3[31]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(bcmd_3b),
        .I5(badr_1b),
        .O(\bdatr[15]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0A0C0)) 
    \bdatr[15]_INST_0_i_8 
       (.I0(ram_dou2[15]),
        .I1(ram_dou2[31]),
        .I2(sel0[1]),
        .I3(bcmd_3b),
        .I4(badr_1b),
        .O(\bdatr[15]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8F8F8FFF0F0F0)) 
    \bdatr[16]_INST_0 
       (.I0(sel0[3]),
        .I1(bcmd_3b),
        .I2(\bdatr[16]_INST_0_i_1_n_0 ),
        .I3(\bdatr[31]_INST_0_i_2_n_0 ),
        .I4(ram_dou2[16]),
        .I5(ram_dou0[16]),
        .O(bdatr[16]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatr[16]_INST_0_i_1 
       (.I0(\bdatr[31]_INST_0_i_3_n_0 ),
        .I1(ram_dou4[16]),
        .I2(\bdatr[31]_INST_0_i_4_n_0 ),
        .I3(ram_dou3[16]),
        .I4(ram_dou1[16]),
        .I5(\bdatr[31]_INST_0_i_5_n_0 ),
        .O(\bdatr[16]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8F8F8FFF0F0F0)) 
    \bdatr[17]_INST_0 
       (.I0(sel0[3]),
        .I1(bcmd_3b),
        .I2(\bdatr[17]_INST_0_i_1_n_0 ),
        .I3(\bdatr[31]_INST_0_i_2_n_0 ),
        .I4(ram_dou2[17]),
        .I5(ram_dou0[17]),
        .O(bdatr[17]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatr[17]_INST_0_i_1 
       (.I0(\bdatr[31]_INST_0_i_3_n_0 ),
        .I1(ram_dou4[17]),
        .I2(\bdatr[31]_INST_0_i_4_n_0 ),
        .I3(ram_dou3[17]),
        .I4(ram_dou1[17]),
        .I5(\bdatr[31]_INST_0_i_5_n_0 ),
        .O(\bdatr[17]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8F8F8FFF0F0F0)) 
    \bdatr[18]_INST_0 
       (.I0(sel0[3]),
        .I1(bcmd_3b),
        .I2(\bdatr[18]_INST_0_i_1_n_0 ),
        .I3(\bdatr[31]_INST_0_i_2_n_0 ),
        .I4(ram_dou2[18]),
        .I5(ram_dou0[18]),
        .O(bdatr[18]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatr[18]_INST_0_i_1 
       (.I0(\bdatr[31]_INST_0_i_3_n_0 ),
        .I1(ram_dou4[18]),
        .I2(\bdatr[31]_INST_0_i_4_n_0 ),
        .I3(ram_dou3[18]),
        .I4(ram_dou1[18]),
        .I5(\bdatr[31]_INST_0_i_5_n_0 ),
        .O(\bdatr[18]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8F8F8FFF0F0F0)) 
    \bdatr[19]_INST_0 
       (.I0(sel0[3]),
        .I1(bcmd_3b),
        .I2(\bdatr[19]_INST_0_i_1_n_0 ),
        .I3(\bdatr[31]_INST_0_i_2_n_0 ),
        .I4(ram_dou2[19]),
        .I5(ram_dou0[19]),
        .O(bdatr[19]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatr[19]_INST_0_i_1 
       (.I0(\bdatr[31]_INST_0_i_3_n_0 ),
        .I1(ram_dou4[19]),
        .I2(\bdatr[31]_INST_0_i_4_n_0 ),
        .I3(ram_dou3[19]),
        .I4(ram_dou1[19]),
        .I5(\bdatr[31]_INST_0_i_5_n_0 ),
        .O(\bdatr[19]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAAAEAAAEAAAE)) 
    \bdatr[1]_INST_0 
       (.I0(\bdatr[1]_INST_0_i_1_n_0 ),
        .I1(\bdatr[1]_INST_0_i_2_n_0 ),
        .I2(sel0[3]),
        .I3(sel0[2]),
        .I4(\bdatr[15]_INST_0_i_3_n_0 ),
        .I5(ram_dou1[17]),
        .O(bdatr[1]));
  LUT6 #(
    .INIT(64'hF0AAF000CC00CC00)) 
    \bdatr[1]_INST_0_i_1 
       (.I0(ram_dou1[1]),
        .I1(ram_dou0[17]),
        .I2(ram_dou0[1]),
        .I3(sel0[3]),
        .I4(sel0[2]),
        .I5(\bdatr[15]_INST_0_i_4_n_0 ),
        .O(\bdatr[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \bdatr[1]_INST_0_i_2 
       (.I0(ram_dou4[1]),
        .I1(\bdatr[15]_INST_0_i_5_n_0 ),
        .I2(ram_dou4[17]),
        .I3(\bdatr[15]_INST_0_i_6_n_0 ),
        .I4(\bdatr[1]_INST_0_i_3_n_0 ),
        .I5(\bdatr[1]_INST_0_i_4_n_0 ),
        .O(\bdatr[1]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0A000A000A000C00)) 
    \bdatr[1]_INST_0_i_3 
       (.I0(ram_dou3[1]),
        .I1(ram_dou3[17]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(bcmd_3b),
        .I5(badr_1b),
        .O(\bdatr[1]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0A0C0)) 
    \bdatr[1]_INST_0_i_4 
       (.I0(ram_dou2[1]),
        .I1(ram_dou2[17]),
        .I2(sel0[1]),
        .I3(bcmd_3b),
        .I4(badr_1b),
        .O(\bdatr[1]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8F8F8FFF0F0F0)) 
    \bdatr[20]_INST_0 
       (.I0(sel0[3]),
        .I1(bcmd_3b),
        .I2(\bdatr[20]_INST_0_i_1_n_0 ),
        .I3(\bdatr[31]_INST_0_i_2_n_0 ),
        .I4(ram_dou2[20]),
        .I5(ram_dou0[20]),
        .O(bdatr[20]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatr[20]_INST_0_i_1 
       (.I0(\bdatr[31]_INST_0_i_3_n_0 ),
        .I1(ram_dou4[20]),
        .I2(\bdatr[31]_INST_0_i_4_n_0 ),
        .I3(ram_dou3[20]),
        .I4(ram_dou1[20]),
        .I5(\bdatr[31]_INST_0_i_5_n_0 ),
        .O(\bdatr[20]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8F8F8FFF0F0F0)) 
    \bdatr[21]_INST_0 
       (.I0(sel0[3]),
        .I1(bcmd_3b),
        .I2(\bdatr[21]_INST_0_i_1_n_0 ),
        .I3(\bdatr[31]_INST_0_i_2_n_0 ),
        .I4(ram_dou2[21]),
        .I5(ram_dou0[21]),
        .O(bdatr[21]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatr[21]_INST_0_i_1 
       (.I0(\bdatr[31]_INST_0_i_3_n_0 ),
        .I1(ram_dou4[21]),
        .I2(\bdatr[31]_INST_0_i_4_n_0 ),
        .I3(ram_dou3[21]),
        .I4(ram_dou1[21]),
        .I5(\bdatr[31]_INST_0_i_5_n_0 ),
        .O(\bdatr[21]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8F8F8FFF0F0F0)) 
    \bdatr[22]_INST_0 
       (.I0(sel0[3]),
        .I1(bcmd_3b),
        .I2(\bdatr[22]_INST_0_i_1_n_0 ),
        .I3(\bdatr[31]_INST_0_i_2_n_0 ),
        .I4(ram_dou2[22]),
        .I5(ram_dou0[22]),
        .O(bdatr[22]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatr[22]_INST_0_i_1 
       (.I0(\bdatr[31]_INST_0_i_3_n_0 ),
        .I1(ram_dou4[22]),
        .I2(\bdatr[31]_INST_0_i_4_n_0 ),
        .I3(ram_dou3[22]),
        .I4(ram_dou1[22]),
        .I5(\bdatr[31]_INST_0_i_5_n_0 ),
        .O(\bdatr[22]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8F8F8FFF0F0F0)) 
    \bdatr[23]_INST_0 
       (.I0(sel0[3]),
        .I1(bcmd_3b),
        .I2(\bdatr[23]_INST_0_i_1_n_0 ),
        .I3(\bdatr[31]_INST_0_i_2_n_0 ),
        .I4(ram_dou2[23]),
        .I5(ram_dou0[23]),
        .O(bdatr[23]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatr[23]_INST_0_i_1 
       (.I0(\bdatr[31]_INST_0_i_3_n_0 ),
        .I1(ram_dou4[23]),
        .I2(\bdatr[31]_INST_0_i_4_n_0 ),
        .I3(ram_dou3[23]),
        .I4(ram_dou1[23]),
        .I5(\bdatr[31]_INST_0_i_5_n_0 ),
        .O(\bdatr[23]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8F8F8FFF0F0F0)) 
    \bdatr[24]_INST_0 
       (.I0(sel0[3]),
        .I1(bcmd_3b),
        .I2(\bdatr[24]_INST_0_i_1_n_0 ),
        .I3(\bdatr[31]_INST_0_i_2_n_0 ),
        .I4(ram_dou2[24]),
        .I5(ram_dou0[24]),
        .O(bdatr[24]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatr[24]_INST_0_i_1 
       (.I0(\bdatr[31]_INST_0_i_3_n_0 ),
        .I1(ram_dou4[24]),
        .I2(\bdatr[31]_INST_0_i_4_n_0 ),
        .I3(ram_dou3[24]),
        .I4(ram_dou1[24]),
        .I5(\bdatr[31]_INST_0_i_5_n_0 ),
        .O(\bdatr[24]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8F8F8FFF0F0F0)) 
    \bdatr[25]_INST_0 
       (.I0(sel0[3]),
        .I1(bcmd_3b),
        .I2(\bdatr[25]_INST_0_i_1_n_0 ),
        .I3(\bdatr[31]_INST_0_i_2_n_0 ),
        .I4(ram_dou2[25]),
        .I5(ram_dou0[25]),
        .O(bdatr[25]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatr[25]_INST_0_i_1 
       (.I0(\bdatr[31]_INST_0_i_3_n_0 ),
        .I1(ram_dou4[25]),
        .I2(\bdatr[31]_INST_0_i_4_n_0 ),
        .I3(ram_dou3[25]),
        .I4(ram_dou1[25]),
        .I5(\bdatr[31]_INST_0_i_5_n_0 ),
        .O(\bdatr[25]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8F8F8FFF0F0F0)) 
    \bdatr[26]_INST_0 
       (.I0(sel0[3]),
        .I1(bcmd_3b),
        .I2(\bdatr[26]_INST_0_i_1_n_0 ),
        .I3(\bdatr[31]_INST_0_i_2_n_0 ),
        .I4(ram_dou2[26]),
        .I5(ram_dou0[26]),
        .O(bdatr[26]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatr[26]_INST_0_i_1 
       (.I0(\bdatr[31]_INST_0_i_3_n_0 ),
        .I1(ram_dou4[26]),
        .I2(\bdatr[31]_INST_0_i_4_n_0 ),
        .I3(ram_dou3[26]),
        .I4(ram_dou1[26]),
        .I5(\bdatr[31]_INST_0_i_5_n_0 ),
        .O(\bdatr[26]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8F8F8FFF0F0F0)) 
    \bdatr[27]_INST_0 
       (.I0(sel0[3]),
        .I1(bcmd_3b),
        .I2(\bdatr[27]_INST_0_i_1_n_0 ),
        .I3(\bdatr[31]_INST_0_i_2_n_0 ),
        .I4(ram_dou2[27]),
        .I5(ram_dou0[27]),
        .O(bdatr[27]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatr[27]_INST_0_i_1 
       (.I0(\bdatr[31]_INST_0_i_3_n_0 ),
        .I1(ram_dou4[27]),
        .I2(\bdatr[31]_INST_0_i_4_n_0 ),
        .I3(ram_dou3[27]),
        .I4(ram_dou1[27]),
        .I5(\bdatr[31]_INST_0_i_5_n_0 ),
        .O(\bdatr[27]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8F8F8FFF0F0F0)) 
    \bdatr[28]_INST_0 
       (.I0(sel0[3]),
        .I1(bcmd_3b),
        .I2(\bdatr[28]_INST_0_i_1_n_0 ),
        .I3(\bdatr[31]_INST_0_i_2_n_0 ),
        .I4(ram_dou2[28]),
        .I5(ram_dou0[28]),
        .O(bdatr[28]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatr[28]_INST_0_i_1 
       (.I0(\bdatr[31]_INST_0_i_3_n_0 ),
        .I1(ram_dou4[28]),
        .I2(\bdatr[31]_INST_0_i_4_n_0 ),
        .I3(ram_dou3[28]),
        .I4(ram_dou1[28]),
        .I5(\bdatr[31]_INST_0_i_5_n_0 ),
        .O(\bdatr[28]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8F8F8FFF0F0F0)) 
    \bdatr[29]_INST_0 
       (.I0(sel0[3]),
        .I1(bcmd_3b),
        .I2(\bdatr[29]_INST_0_i_1_n_0 ),
        .I3(\bdatr[31]_INST_0_i_2_n_0 ),
        .I4(ram_dou2[29]),
        .I5(ram_dou0[29]),
        .O(bdatr[29]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatr[29]_INST_0_i_1 
       (.I0(\bdatr[31]_INST_0_i_3_n_0 ),
        .I1(ram_dou4[29]),
        .I2(\bdatr[31]_INST_0_i_4_n_0 ),
        .I3(ram_dou3[29]),
        .I4(ram_dou1[29]),
        .I5(\bdatr[31]_INST_0_i_5_n_0 ),
        .O(\bdatr[29]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAAAEAAAEAAAE)) 
    \bdatr[2]_INST_0 
       (.I0(\bdatr[2]_INST_0_i_1_n_0 ),
        .I1(\bdatr[2]_INST_0_i_2_n_0 ),
        .I2(sel0[3]),
        .I3(sel0[2]),
        .I4(\bdatr[15]_INST_0_i_3_n_0 ),
        .I5(ram_dou1[18]),
        .O(bdatr[2]));
  LUT6 #(
    .INIT(64'hF0AAF000CC00CC00)) 
    \bdatr[2]_INST_0_i_1 
       (.I0(ram_dou1[2]),
        .I1(ram_dou0[18]),
        .I2(ram_dou0[2]),
        .I3(sel0[3]),
        .I4(sel0[2]),
        .I5(\bdatr[15]_INST_0_i_4_n_0 ),
        .O(\bdatr[2]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \bdatr[2]_INST_0_i_2 
       (.I0(ram_dou4[2]),
        .I1(\bdatr[15]_INST_0_i_5_n_0 ),
        .I2(ram_dou4[18]),
        .I3(\bdatr[15]_INST_0_i_6_n_0 ),
        .I4(\bdatr[2]_INST_0_i_3_n_0 ),
        .I5(\bdatr[2]_INST_0_i_4_n_0 ),
        .O(\bdatr[2]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0A000A000A000C00)) 
    \bdatr[2]_INST_0_i_3 
       (.I0(ram_dou3[2]),
        .I1(ram_dou3[18]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(bcmd_3b),
        .I5(badr_1b),
        .O(\bdatr[2]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0A0C0)) 
    \bdatr[2]_INST_0_i_4 
       (.I0(ram_dou2[2]),
        .I1(ram_dou2[18]),
        .I2(sel0[1]),
        .I3(bcmd_3b),
        .I4(badr_1b),
        .O(\bdatr[2]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8F8F8FFF0F0F0)) 
    \bdatr[30]_INST_0 
       (.I0(sel0[3]),
        .I1(bcmd_3b),
        .I2(\bdatr[30]_INST_0_i_1_n_0 ),
        .I3(\bdatr[31]_INST_0_i_2_n_0 ),
        .I4(ram_dou2[30]),
        .I5(ram_dou0[30]),
        .O(bdatr[30]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatr[30]_INST_0_i_1 
       (.I0(\bdatr[31]_INST_0_i_3_n_0 ),
        .I1(ram_dou4[30]),
        .I2(\bdatr[31]_INST_0_i_4_n_0 ),
        .I3(ram_dou3[30]),
        .I4(ram_dou1[30]),
        .I5(\bdatr[31]_INST_0_i_5_n_0 ),
        .O(\bdatr[30]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8F8F8FFF0F0F0)) 
    \bdatr[31]_INST_0 
       (.I0(sel0[3]),
        .I1(bcmd_3b),
        .I2(\bdatr[31]_INST_0_i_1_n_0 ),
        .I3(\bdatr[31]_INST_0_i_2_n_0 ),
        .I4(ram_dou2[31]),
        .I5(ram_dou0[31]),
        .O(bdatr[31]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatr[31]_INST_0_i_1 
       (.I0(\bdatr[31]_INST_0_i_3_n_0 ),
        .I1(ram_dou4[31]),
        .I2(\bdatr[31]_INST_0_i_4_n_0 ),
        .I3(ram_dou3[31]),
        .I4(ram_dou1[31]),
        .I5(\bdatr[31]_INST_0_i_5_n_0 ),
        .O(\bdatr[31]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h1000)) 
    \bdatr[31]_INST_0_i_2 
       (.I0(sel0[2]),
        .I1(sel0[3]),
        .I2(bcmd_3b),
        .I3(sel0[1]),
        .O(\bdatr[31]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \bdatr[31]_INST_0_i_3 
       (.I0(oea4),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(sel0[2]),
        .I4(sel0[3]),
        .I5(bcmd_3b),
        .O(\bdatr[31]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \bdatr[31]_INST_0_i_4 
       (.I0(sel0[2]),
        .I1(sel0[3]),
        .I2(bcmd_3b),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .O(\bdatr[31]_INST_0_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \bdatr[31]_INST_0_i_5 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(bcmd_3b),
        .O(\bdatr[31]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAAAEAAAEAAAE)) 
    \bdatr[3]_INST_0 
       (.I0(\bdatr[3]_INST_0_i_1_n_0 ),
        .I1(\bdatr[3]_INST_0_i_2_n_0 ),
        .I2(sel0[3]),
        .I3(sel0[2]),
        .I4(\bdatr[15]_INST_0_i_3_n_0 ),
        .I5(ram_dou1[19]),
        .O(bdatr[3]));
  LUT6 #(
    .INIT(64'hF0AAF000CC00CC00)) 
    \bdatr[3]_INST_0_i_1 
       (.I0(ram_dou1[3]),
        .I1(ram_dou0[19]),
        .I2(ram_dou0[3]),
        .I3(sel0[3]),
        .I4(sel0[2]),
        .I5(\bdatr[15]_INST_0_i_4_n_0 ),
        .O(\bdatr[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \bdatr[3]_INST_0_i_2 
       (.I0(ram_dou4[3]),
        .I1(\bdatr[15]_INST_0_i_5_n_0 ),
        .I2(ram_dou4[19]),
        .I3(\bdatr[15]_INST_0_i_6_n_0 ),
        .I4(\bdatr[3]_INST_0_i_3_n_0 ),
        .I5(\bdatr[3]_INST_0_i_4_n_0 ),
        .O(\bdatr[3]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0A000A000A000C00)) 
    \bdatr[3]_INST_0_i_3 
       (.I0(ram_dou3[3]),
        .I1(ram_dou3[19]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(bcmd_3b),
        .I5(badr_1b),
        .O(\bdatr[3]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0A0C0)) 
    \bdatr[3]_INST_0_i_4 
       (.I0(ram_dou2[3]),
        .I1(ram_dou2[19]),
        .I2(sel0[1]),
        .I3(bcmd_3b),
        .I4(badr_1b),
        .O(\bdatr[3]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAAAEAAAEAAAE)) 
    \bdatr[4]_INST_0 
       (.I0(\bdatr[4]_INST_0_i_1_n_0 ),
        .I1(\bdatr[4]_INST_0_i_2_n_0 ),
        .I2(sel0[3]),
        .I3(sel0[2]),
        .I4(\bdatr[15]_INST_0_i_3_n_0 ),
        .I5(ram_dou1[20]),
        .O(bdatr[4]));
  LUT6 #(
    .INIT(64'hF0AAF000CC00CC00)) 
    \bdatr[4]_INST_0_i_1 
       (.I0(ram_dou1[4]),
        .I1(ram_dou0[20]),
        .I2(ram_dou0[4]),
        .I3(sel0[3]),
        .I4(sel0[2]),
        .I5(\bdatr[15]_INST_0_i_4_n_0 ),
        .O(\bdatr[4]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \bdatr[4]_INST_0_i_2 
       (.I0(ram_dou4[4]),
        .I1(\bdatr[15]_INST_0_i_5_n_0 ),
        .I2(ram_dou4[20]),
        .I3(\bdatr[15]_INST_0_i_6_n_0 ),
        .I4(\bdatr[4]_INST_0_i_3_n_0 ),
        .I5(\bdatr[4]_INST_0_i_4_n_0 ),
        .O(\bdatr[4]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0A000A000A000C00)) 
    \bdatr[4]_INST_0_i_3 
       (.I0(ram_dou3[4]),
        .I1(ram_dou3[20]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(bcmd_3b),
        .I5(badr_1b),
        .O(\bdatr[4]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0A0C0)) 
    \bdatr[4]_INST_0_i_4 
       (.I0(ram_dou2[4]),
        .I1(ram_dou2[20]),
        .I2(sel0[1]),
        .I3(bcmd_3b),
        .I4(badr_1b),
        .O(\bdatr[4]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAAAEAAAEAAAE)) 
    \bdatr[5]_INST_0 
       (.I0(\bdatr[5]_INST_0_i_1_n_0 ),
        .I1(\bdatr[5]_INST_0_i_2_n_0 ),
        .I2(sel0[3]),
        .I3(sel0[2]),
        .I4(\bdatr[15]_INST_0_i_3_n_0 ),
        .I5(ram_dou1[21]),
        .O(bdatr[5]));
  LUT6 #(
    .INIT(64'hF0AAF000CC00CC00)) 
    \bdatr[5]_INST_0_i_1 
       (.I0(ram_dou1[5]),
        .I1(ram_dou0[21]),
        .I2(ram_dou0[5]),
        .I3(sel0[3]),
        .I4(sel0[2]),
        .I5(\bdatr[15]_INST_0_i_4_n_0 ),
        .O(\bdatr[5]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \bdatr[5]_INST_0_i_2 
       (.I0(ram_dou4[5]),
        .I1(\bdatr[15]_INST_0_i_5_n_0 ),
        .I2(ram_dou4[21]),
        .I3(\bdatr[15]_INST_0_i_6_n_0 ),
        .I4(\bdatr[5]_INST_0_i_3_n_0 ),
        .I5(\bdatr[5]_INST_0_i_4_n_0 ),
        .O(\bdatr[5]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0A000A000A000C00)) 
    \bdatr[5]_INST_0_i_3 
       (.I0(ram_dou3[5]),
        .I1(ram_dou3[21]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(bcmd_3b),
        .I5(badr_1b),
        .O(\bdatr[5]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0A0C0)) 
    \bdatr[5]_INST_0_i_4 
       (.I0(ram_dou2[5]),
        .I1(ram_dou2[21]),
        .I2(sel0[1]),
        .I3(bcmd_3b),
        .I4(badr_1b),
        .O(\bdatr[5]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAAAEAAAEAAAE)) 
    \bdatr[6]_INST_0 
       (.I0(\bdatr[6]_INST_0_i_1_n_0 ),
        .I1(\bdatr[6]_INST_0_i_2_n_0 ),
        .I2(sel0[3]),
        .I3(sel0[2]),
        .I4(\bdatr[15]_INST_0_i_3_n_0 ),
        .I5(ram_dou1[22]),
        .O(bdatr[6]));
  LUT6 #(
    .INIT(64'hF0AAF000CC00CC00)) 
    \bdatr[6]_INST_0_i_1 
       (.I0(ram_dou1[6]),
        .I1(ram_dou0[22]),
        .I2(ram_dou0[6]),
        .I3(sel0[3]),
        .I4(sel0[2]),
        .I5(\bdatr[15]_INST_0_i_4_n_0 ),
        .O(\bdatr[6]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \bdatr[6]_INST_0_i_2 
       (.I0(ram_dou4[6]),
        .I1(\bdatr[15]_INST_0_i_5_n_0 ),
        .I2(ram_dou4[22]),
        .I3(\bdatr[15]_INST_0_i_6_n_0 ),
        .I4(\bdatr[6]_INST_0_i_3_n_0 ),
        .I5(\bdatr[6]_INST_0_i_4_n_0 ),
        .O(\bdatr[6]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0A000A000A000C00)) 
    \bdatr[6]_INST_0_i_3 
       (.I0(ram_dou3[6]),
        .I1(ram_dou3[22]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(bcmd_3b),
        .I5(badr_1b),
        .O(\bdatr[6]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0A0C0)) 
    \bdatr[6]_INST_0_i_4 
       (.I0(ram_dou2[6]),
        .I1(ram_dou2[22]),
        .I2(sel0[1]),
        .I3(bcmd_3b),
        .I4(badr_1b),
        .O(\bdatr[6]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAAAEAAAEAAAE)) 
    \bdatr[7]_INST_0 
       (.I0(\bdatr[7]_INST_0_i_1_n_0 ),
        .I1(\bdatr[7]_INST_0_i_2_n_0 ),
        .I2(sel0[3]),
        .I3(sel0[2]),
        .I4(\bdatr[15]_INST_0_i_3_n_0 ),
        .I5(ram_dou1[23]),
        .O(bdatr[7]));
  LUT6 #(
    .INIT(64'hF0AAF000CC00CC00)) 
    \bdatr[7]_INST_0_i_1 
       (.I0(ram_dou1[7]),
        .I1(ram_dou0[23]),
        .I2(ram_dou0[7]),
        .I3(sel0[3]),
        .I4(sel0[2]),
        .I5(\bdatr[15]_INST_0_i_4_n_0 ),
        .O(\bdatr[7]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \bdatr[7]_INST_0_i_2 
       (.I0(ram_dou4[7]),
        .I1(\bdatr[15]_INST_0_i_5_n_0 ),
        .I2(ram_dou4[23]),
        .I3(\bdatr[15]_INST_0_i_6_n_0 ),
        .I4(\bdatr[7]_INST_0_i_3_n_0 ),
        .I5(\bdatr[7]_INST_0_i_4_n_0 ),
        .O(\bdatr[7]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0A000A000A000C00)) 
    \bdatr[7]_INST_0_i_3 
       (.I0(ram_dou3[7]),
        .I1(ram_dou3[23]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(bcmd_3b),
        .I5(badr_1b),
        .O(\bdatr[7]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0A0C0)) 
    \bdatr[7]_INST_0_i_4 
       (.I0(ram_dou2[7]),
        .I1(ram_dou2[23]),
        .I2(sel0[1]),
        .I3(bcmd_3b),
        .I4(badr_1b),
        .O(\bdatr[7]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAAAEAAAEAAAE)) 
    \bdatr[8]_INST_0 
       (.I0(\bdatr[8]_INST_0_i_1_n_0 ),
        .I1(\bdatr[8]_INST_0_i_2_n_0 ),
        .I2(sel0[3]),
        .I3(sel0[2]),
        .I4(\bdatr[15]_INST_0_i_3_n_0 ),
        .I5(ram_dou1[24]),
        .O(bdatr[8]));
  LUT6 #(
    .INIT(64'hF0AAF000CC00CC00)) 
    \bdatr[8]_INST_0_i_1 
       (.I0(ram_dou1[8]),
        .I1(ram_dou0[24]),
        .I2(ram_dou0[8]),
        .I3(sel0[3]),
        .I4(sel0[2]),
        .I5(\bdatr[15]_INST_0_i_4_n_0 ),
        .O(\bdatr[8]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \bdatr[8]_INST_0_i_2 
       (.I0(ram_dou4[8]),
        .I1(\bdatr[15]_INST_0_i_5_n_0 ),
        .I2(ram_dou4[24]),
        .I3(\bdatr[15]_INST_0_i_6_n_0 ),
        .I4(\bdatr[8]_INST_0_i_3_n_0 ),
        .I5(\bdatr[8]_INST_0_i_4_n_0 ),
        .O(\bdatr[8]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0A000A000A000C00)) 
    \bdatr[8]_INST_0_i_3 
       (.I0(ram_dou3[8]),
        .I1(ram_dou3[24]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(bcmd_3b),
        .I5(badr_1b),
        .O(\bdatr[8]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0A0C0)) 
    \bdatr[8]_INST_0_i_4 
       (.I0(ram_dou2[8]),
        .I1(ram_dou2[24]),
        .I2(sel0[1]),
        .I3(bcmd_3b),
        .I4(badr_1b),
        .O(\bdatr[8]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAAAEAAAEAAAE)) 
    \bdatr[9]_INST_0 
       (.I0(\bdatr[9]_INST_0_i_1_n_0 ),
        .I1(\bdatr[9]_INST_0_i_2_n_0 ),
        .I2(sel0[3]),
        .I3(sel0[2]),
        .I4(\bdatr[15]_INST_0_i_3_n_0 ),
        .I5(ram_dou1[25]),
        .O(bdatr[9]));
  LUT6 #(
    .INIT(64'hF0AAF000CC00CC00)) 
    \bdatr[9]_INST_0_i_1 
       (.I0(ram_dou1[9]),
        .I1(ram_dou0[25]),
        .I2(ram_dou0[9]),
        .I3(sel0[3]),
        .I4(sel0[2]),
        .I5(\bdatr[15]_INST_0_i_4_n_0 ),
        .O(\bdatr[9]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \bdatr[9]_INST_0_i_2 
       (.I0(ram_dou4[9]),
        .I1(\bdatr[15]_INST_0_i_5_n_0 ),
        .I2(ram_dou4[25]),
        .I3(\bdatr[15]_INST_0_i_6_n_0 ),
        .I4(\bdatr[9]_INST_0_i_3_n_0 ),
        .I5(\bdatr[9]_INST_0_i_4_n_0 ),
        .O(\bdatr[9]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0A000A000A000C00)) 
    \bdatr[9]_INST_0_i_3 
       (.I0(ram_dou3[9]),
        .I1(ram_dou3[25]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(bcmd_3b),
        .I5(badr_1b),
        .O(\bdatr[9]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0A0C0)) 
    \bdatr[9]_INST_0_i_4 
       (.I0(ram_dou2[9]),
        .I1(ram_dou2[25]),
        .I2(sel0[1]),
        .I3(bcmd_3b),
        .I4(badr_1b),
        .O(\bdatr[9]_INST_0_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h10)) 
    oea0_i_1
       (.I0(bcs_ram0_n),
        .I1(bcs_ram_n),
        .I2(bcmd[0]),
        .O(oea00));
  FDRE oea0_reg
       (.C(clk),
        .CE(brdy),
        .D(oea00),
        .Q(sel0[3]),
        .R(p_0_in));
  LUT3 #(
    .INIT(8'h10)) 
    oea1_i_1
       (.I0(bcs_ram1_n),
        .I1(bcs_ram_n),
        .I2(bcmd[0]),
        .O(oea10));
  FDRE oea1_reg
       (.C(clk),
        .CE(brdy),
        .D(oea10),
        .Q(sel0[2]),
        .R(p_0_in));
  LUT3 #(
    .INIT(8'h10)) 
    oea2_i_1
       (.I0(bcs_ram2_n),
        .I1(bcs_ram_n),
        .I2(bcmd[0]),
        .O(oea20));
  FDRE oea2_reg
       (.C(clk),
        .CE(brdy),
        .D(oea20),
        .Q(sel0[1]),
        .R(p_0_in));
  LUT3 #(
    .INIT(8'h10)) 
    oea3_i_1
       (.I0(bcs_ram3_n),
        .I1(bcs_ram_n),
        .I2(bcmd[0]),
        .O(oea30));
  FDRE oea3_reg
       (.C(clk),
        .CE(brdy),
        .D(oea30),
        .Q(sel0[0]),
        .R(p_0_in));
  LUT1 #(
    .INIT(2'h1)) 
    oea4_i_1
       (.I0(rst_n),
        .O(p_0_in));
  LUT3 #(
    .INIT(8'h10)) 
    oea4_i_2
       (.I0(bcs_ram4_n),
        .I1(bcs_ram_n),
        .I2(bcmd[0]),
        .O(oea40));
  FDRE oea4_reg
       (.C(clk),
        .CE(brdy),
        .D(oea40),
        .Q(oea4),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'h000000E0)) 
    ram_ce0_INST_0
       (.I0(bcmd[1]),
        .I1(bcmd[0]),
        .I2(brdy),
        .I3(bcs_ram_n),
        .I4(bcs_ram0_n),
        .O(ram_ce0));
  LUT5 #(
    .INIT(32'h000000E0)) 
    ram_ce1_INST_0
       (.I0(bcmd[1]),
        .I1(bcmd[0]),
        .I2(brdy),
        .I3(bcs_ram_n),
        .I4(bcs_ram1_n),
        .O(ram_ce1));
  LUT5 #(
    .INIT(32'h000000E0)) 
    ram_ce2_INST_0
       (.I0(bcmd[1]),
        .I1(bcmd[0]),
        .I2(brdy),
        .I3(bcs_ram_n),
        .I4(bcs_ram2_n),
        .O(ram_ce2));
  LUT5 #(
    .INIT(32'h000000E0)) 
    ram_ce3_INST_0
       (.I0(bcmd[1]),
        .I1(bcmd[0]),
        .I2(brdy),
        .I3(bcs_ram_n),
        .I4(bcs_ram3_n),
        .O(ram_ce3));
  LUT5 #(
    .INIT(32'h000000E0)) 
    ram_ce4_INST_0
       (.I0(bcmd[1]),
        .I1(bcmd[0]),
        .I2(brdy),
        .I3(bcs_ram_n),
        .I4(bcs_ram4_n),
        .O(ram_ce4));
  LUT3 #(
    .INIT(8'hE0)) 
    \ram_din[0]_INST_0 
       (.I0(bcmd[3]),
        .I1(badr[1]),
        .I2(bdatw[0]),
        .O(ram_din[0]));
  LUT3 #(
    .INIT(8'hE0)) 
    \ram_din[10]_INST_0 
       (.I0(bcmd[3]),
        .I1(badr[1]),
        .I2(bdatw[10]),
        .O(ram_din[10]));
  LUT3 #(
    .INIT(8'hE0)) 
    \ram_din[11]_INST_0 
       (.I0(bcmd[3]),
        .I1(badr[1]),
        .I2(bdatw[11]),
        .O(ram_din[11]));
  LUT3 #(
    .INIT(8'hE0)) 
    \ram_din[12]_INST_0 
       (.I0(bcmd[3]),
        .I1(badr[1]),
        .I2(bdatw[12]),
        .O(ram_din[12]));
  LUT3 #(
    .INIT(8'hE0)) 
    \ram_din[13]_INST_0 
       (.I0(bcmd[3]),
        .I1(badr[1]),
        .I2(bdatw[13]),
        .O(ram_din[13]));
  LUT3 #(
    .INIT(8'hE0)) 
    \ram_din[14]_INST_0 
       (.I0(bcmd[3]),
        .I1(badr[1]),
        .I2(bdatw[14]),
        .O(ram_din[14]));
  LUT3 #(
    .INIT(8'hE0)) 
    \ram_din[15]_INST_0 
       (.I0(bcmd[3]),
        .I1(badr[1]),
        .I2(bdatw[15]),
        .O(ram_din[15]));
  LUT4 #(
    .INIT(16'h88B8)) 
    \ram_din[16]_INST_0 
       (.I0(bdatw[16]),
        .I1(bcmd[3]),
        .I2(bdatw[0]),
        .I3(badr[1]),
        .O(ram_din[16]));
  LUT4 #(
    .INIT(16'h88B8)) 
    \ram_din[17]_INST_0 
       (.I0(bdatw[17]),
        .I1(bcmd[3]),
        .I2(bdatw[1]),
        .I3(badr[1]),
        .O(ram_din[17]));
  LUT4 #(
    .INIT(16'h88B8)) 
    \ram_din[18]_INST_0 
       (.I0(bdatw[18]),
        .I1(bcmd[3]),
        .I2(bdatw[2]),
        .I3(badr[1]),
        .O(ram_din[18]));
  LUT4 #(
    .INIT(16'h88B8)) 
    \ram_din[19]_INST_0 
       (.I0(bdatw[19]),
        .I1(bcmd[3]),
        .I2(bdatw[3]),
        .I3(badr[1]),
        .O(ram_din[19]));
  LUT3 #(
    .INIT(8'hE0)) 
    \ram_din[1]_INST_0 
       (.I0(bcmd[3]),
        .I1(badr[1]),
        .I2(bdatw[1]),
        .O(ram_din[1]));
  LUT4 #(
    .INIT(16'h88B8)) 
    \ram_din[20]_INST_0 
       (.I0(bdatw[20]),
        .I1(bcmd[3]),
        .I2(bdatw[4]),
        .I3(badr[1]),
        .O(ram_din[20]));
  LUT4 #(
    .INIT(16'h88B8)) 
    \ram_din[21]_INST_0 
       (.I0(bdatw[21]),
        .I1(bcmd[3]),
        .I2(bdatw[5]),
        .I3(badr[1]),
        .O(ram_din[21]));
  LUT4 #(
    .INIT(16'h88B8)) 
    \ram_din[22]_INST_0 
       (.I0(bdatw[22]),
        .I1(bcmd[3]),
        .I2(bdatw[6]),
        .I3(badr[1]),
        .O(ram_din[22]));
  LUT4 #(
    .INIT(16'h88B8)) 
    \ram_din[23]_INST_0 
       (.I0(bdatw[23]),
        .I1(bcmd[3]),
        .I2(bdatw[7]),
        .I3(badr[1]),
        .O(ram_din[23]));
  LUT4 #(
    .INIT(16'h88B8)) 
    \ram_din[24]_INST_0 
       (.I0(bdatw[24]),
        .I1(bcmd[3]),
        .I2(bdatw[8]),
        .I3(badr[1]),
        .O(ram_din[24]));
  LUT4 #(
    .INIT(16'h88B8)) 
    \ram_din[25]_INST_0 
       (.I0(bdatw[25]),
        .I1(bcmd[3]),
        .I2(bdatw[9]),
        .I3(badr[1]),
        .O(ram_din[25]));
  LUT4 #(
    .INIT(16'h88B8)) 
    \ram_din[26]_INST_0 
       (.I0(bdatw[26]),
        .I1(bcmd[3]),
        .I2(bdatw[10]),
        .I3(badr[1]),
        .O(ram_din[26]));
  LUT4 #(
    .INIT(16'h88B8)) 
    \ram_din[27]_INST_0 
       (.I0(bdatw[27]),
        .I1(bcmd[3]),
        .I2(bdatw[11]),
        .I3(badr[1]),
        .O(ram_din[27]));
  LUT4 #(
    .INIT(16'h88B8)) 
    \ram_din[28]_INST_0 
       (.I0(bdatw[28]),
        .I1(bcmd[3]),
        .I2(bdatw[12]),
        .I3(badr[1]),
        .O(ram_din[28]));
  LUT4 #(
    .INIT(16'h88B8)) 
    \ram_din[29]_INST_0 
       (.I0(bdatw[29]),
        .I1(bcmd[3]),
        .I2(bdatw[13]),
        .I3(badr[1]),
        .O(ram_din[29]));
  LUT3 #(
    .INIT(8'hE0)) 
    \ram_din[2]_INST_0 
       (.I0(bcmd[3]),
        .I1(badr[1]),
        .I2(bdatw[2]),
        .O(ram_din[2]));
  LUT4 #(
    .INIT(16'h88B8)) 
    \ram_din[30]_INST_0 
       (.I0(bdatw[30]),
        .I1(bcmd[3]),
        .I2(bdatw[14]),
        .I3(badr[1]),
        .O(ram_din[30]));
  LUT4 #(
    .INIT(16'h88B8)) 
    \ram_din[31]_INST_0 
       (.I0(bdatw[31]),
        .I1(bcmd[3]),
        .I2(bdatw[15]),
        .I3(badr[1]),
        .O(ram_din[31]));
  LUT3 #(
    .INIT(8'hE0)) 
    \ram_din[3]_INST_0 
       (.I0(bcmd[3]),
        .I1(badr[1]),
        .I2(bdatw[3]),
        .O(ram_din[3]));
  LUT3 #(
    .INIT(8'hE0)) 
    \ram_din[4]_INST_0 
       (.I0(bcmd[3]),
        .I1(badr[1]),
        .I2(bdatw[4]),
        .O(ram_din[4]));
  LUT3 #(
    .INIT(8'hE0)) 
    \ram_din[5]_INST_0 
       (.I0(bcmd[3]),
        .I1(badr[1]),
        .I2(bdatw[5]),
        .O(ram_din[5]));
  LUT3 #(
    .INIT(8'hE0)) 
    \ram_din[6]_INST_0 
       (.I0(bcmd[3]),
        .I1(badr[1]),
        .I2(bdatw[6]),
        .O(ram_din[6]));
  LUT3 #(
    .INIT(8'hE0)) 
    \ram_din[7]_INST_0 
       (.I0(bcmd[3]),
        .I1(badr[1]),
        .I2(bdatw[7]),
        .O(ram_din[7]));
  LUT3 #(
    .INIT(8'hE0)) 
    \ram_din[8]_INST_0 
       (.I0(bcmd[3]),
        .I1(badr[1]),
        .I2(bdatw[8]),
        .O(ram_din[8]));
  LUT3 #(
    .INIT(8'hE0)) 
    \ram_din[9]_INST_0 
       (.I0(bcmd[3]),
        .I1(badr[1]),
        .I2(bdatw[9]),
        .O(ram_din[9]));
  LUT5 #(
    .INIT(32'hAAAAA020)) 
    \ram_we[0]_INST_0 
       (.I0(ram_we2),
        .I1(bcmd[2]),
        .I2(badr[1]),
        .I3(badr[0]),
        .I4(bcmd[3]),
        .O(ram_we[0]));
  LUT5 #(
    .INIT(32'hAAAA20A0)) 
    \ram_we[1]_INST_0 
       (.I0(ram_we2),
        .I1(bcmd[2]),
        .I2(badr[1]),
        .I3(badr[0]),
        .I4(bcmd[3]),
        .O(ram_we[1]));
  LUT5 #(
    .INIT(32'h88AA888A)) 
    \ram_we[2]_INST_0 
       (.I0(ram_we2),
        .I1(bcmd[3]),
        .I2(bcmd[2]),
        .I3(badr[1]),
        .I4(badr[0]),
        .O(ram_we[2]));
  LUT5 #(
    .INIT(32'h888A88AA)) 
    \ram_we[3]_INST_0 
       (.I0(ram_we2),
        .I1(bcmd[3]),
        .I2(bcmd[2]),
        .I3(badr[1]),
        .I4(badr[0]),
        .O(ram_we[3]));
  LUT3 #(
    .INIT(8'h40)) 
    \ram_we[3]_INST_0_i_1 
       (.I0(bcs_ram_n),
        .I1(brdy),
        .I2(bcmd[1]),
        .O(ram_we2));
endmodule
