
(* STRUCTURAL_NETLIST = "yes" *)
module icff16
   (clk,
    rst_n,
    brdy,
    bcmdr,
    bcmdw,
    bmst,
    bcs_icff_n,
    badr,
    bdatw,
    icff_frar1,
    icff_ftar1,
    icff_frar2,
    icff_ftar2,
    bdatr,
    icff_full12,
    icff_empt12,
    icff_full21,
    icff_empt21,
    icff_dato12,
    icff_dato21,
    icff_rst12,
    icff_rst21,
    icff_we12,
    icff_re12,
    icff_we21,
    icff_re21,
    icff_dati12,
    icff_dati21);
//
// Intercommunication FIFO Unit
//		(c) 2021	1YEN Toru
//
//
//	2021/07/31	ver.1.00
//		16 bit fifo, dual core cpu edition
//
  input clk;
  input rst_n;
  input brdy;
  input bcmdr;
  input bcmdw;
  input bmst;
  input bcs_icff_n;
  input [3:0]badr;
  input [15:0]bdatw;
  output icff_frar1;
  output icff_ftar1;
  output icff_frar2;
  output icff_ftar2;
  output [15:0]bdatr;
  input icff_full12;
  input icff_empt12;
  input icff_full21;
  input icff_empt21;
  input [15:0]icff_dato12;
  input [15:0]icff_dato21;
  output icff_rst12;
  output icff_rst21;
  output icff_we12;
  output icff_re12;
  output icff_we21;
  output icff_re21;
  output [15:0]icff_dati12;
  output [15:0]icff_dati21;

  wire \<const1> ;
  wire [3:0]badr;
  wire bcmdr;
  wire bcmdw;
  wire bcs_icff_n;
  wire [15:0]bdatr;
  wire \bdatr[0]_INST_0_i_1_n_0 ;
  wire \bdatr[2]_INST_0_i_1_n_0 ;
  wire \bdatr[3]_INST_0_i_1_n_0 ;
  wire \bdatr[6]_INST_0_i_1_n_0 ;
  wire \bdatr[7]_INST_0_i_1_n_0 ;
  wire [15:0]bdatw;
  wire bmst;
  wire brdy;
  wire clk;
  wire [15:0]icff_dato12;
  wire [15:0]icff_dato21;
  wire icff_empt12;
  wire icff_empt21;
  wire icff_frae1;
  wire icff_frae2;
  wire icff_frar1;
  wire icff_frar2;
  wire icff_ftae1;
  wire icff_ftae2;
  wire icff_ftar1;
  wire icff_ftar2;
  wire icff_full12;
  wire icff_full21;
  wire icff_re12;
  wire icff_re21;
  wire icff_re211;
  wire icff_rst12;
  wire icff_rst21;
  wire icff_we12;
  wire icff_we12_INST_0_i_1_n_0;
  wire icff_we21;
  wire \icffctl2[0]_i_1_n_0 ;
  wire \icffctl2[0]_i_2_n_0 ;
  wire \icffctl2[2]_i_1_n_0 ;
  wire \icffctl2[3]_i_1_n_0 ;
  wire [3:0]p_1_in;
  wire p_7_in;
  wire rd_icffctl10;
  wire rd_icffctl11;
  wire rd_icffctl20;
  wire rst_n;
  wire [3:0]sel0;

  assign icff_dati12[15:0] = bdatw;
  assign icff_dati21[15:0] = bdatw;
  VCC VCC
       (.P(\<const1> ));
  LUT3 #(
    .INIT(8'hE2)) 
    \bdatr[0]_INST_0 
       (.I0(\bdatr[0]_INST_0_i_1_n_0 ),
        .I1(sel0[3]),
        .I2(icff_rst21),
        .O(bdatr[0]));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \bdatr[0]_INST_0_i_1 
       (.I0(icff_rst12),
        .I1(icff_dato12[0]),
        .I2(icff_dato21[0]),
        .I3(sel0[2]),
        .I4(sel0[0]),
        .I5(sel0[1]),
        .O(\bdatr[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000E0A0400)) 
    \bdatr[10]_INST_0 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(icff_dato12[10]),
        .I4(icff_dato21[10]),
        .I5(sel0[3]),
        .O(bdatr[10]));
  LUT6 #(
    .INIT(64'h000000000E0A0400)) 
    \bdatr[11]_INST_0 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(icff_dato12[11]),
        .I4(icff_dato21[11]),
        .I5(sel0[3]),
        .O(bdatr[11]));
  LUT6 #(
    .INIT(64'h000000000E0A0400)) 
    \bdatr[12]_INST_0 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(icff_dato12[12]),
        .I4(icff_dato21[12]),
        .I5(sel0[3]),
        .O(bdatr[12]));
  LUT6 #(
    .INIT(64'h000000000E0A0400)) 
    \bdatr[13]_INST_0 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(icff_dato12[13]),
        .I4(icff_dato21[13]),
        .I5(sel0[3]),
        .O(bdatr[13]));
  LUT6 #(
    .INIT(64'h000000000E0A0400)) 
    \bdatr[14]_INST_0 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(icff_dato12[14]),
        .I4(icff_dato21[14]),
        .I5(sel0[3]),
        .O(bdatr[14]));
  LUT6 #(
    .INIT(64'h000000000E0A0400)) 
    \bdatr[15]_INST_0 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(icff_dato12[15]),
        .I4(icff_dato21[15]),
        .I5(sel0[3]),
        .O(bdatr[15]));
  LUT6 #(
    .INIT(64'h000000000E0A0400)) 
    \bdatr[1]_INST_0 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(icff_dato12[1]),
        .I4(icff_dato21[1]),
        .I5(sel0[3]),
        .O(bdatr[1]));
  LUT3 #(
    .INIT(8'hE2)) 
    \bdatr[2]_INST_0 
       (.I0(\bdatr[2]_INST_0_i_1_n_0 ),
        .I1(sel0[3]),
        .I2(icff_ftae1),
        .O(bdatr[2]));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \bdatr[2]_INST_0_i_1 
       (.I0(icff_ftae2),
        .I1(icff_dato12[2]),
        .I2(icff_dato21[2]),
        .I3(sel0[2]),
        .I4(sel0[0]),
        .I5(sel0[1]),
        .O(\bdatr[2]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \bdatr[3]_INST_0 
       (.I0(\bdatr[3]_INST_0_i_1_n_0 ),
        .I1(sel0[3]),
        .I2(icff_frae1),
        .O(bdatr[3]));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \bdatr[3]_INST_0_i_1 
       (.I0(icff_frae2),
        .I1(icff_dato12[3]),
        .I2(icff_dato21[3]),
        .I3(sel0[2]),
        .I4(sel0[0]),
        .I5(sel0[1]),
        .O(\bdatr[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000E0A0400)) 
    \bdatr[4]_INST_0 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(icff_dato12[4]),
        .I4(icff_dato21[4]),
        .I5(sel0[3]),
        .O(bdatr[4]));
  LUT6 #(
    .INIT(64'h000000000E0A0400)) 
    \bdatr[5]_INST_0 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(icff_dato12[5]),
        .I4(icff_dato21[5]),
        .I5(sel0[3]),
        .O(bdatr[5]));
  LUT3 #(
    .INIT(8'h2E)) 
    \bdatr[6]_INST_0 
       (.I0(\bdatr[6]_INST_0_i_1_n_0 ),
        .I1(sel0[3]),
        .I2(icff_full12),
        .O(bdatr[6]));
  LUT6 #(
    .INIT(64'h55F055F055CC5500)) 
    \bdatr[6]_INST_0_i_1 
       (.I0(icff_full21),
        .I1(icff_dato12[6]),
        .I2(icff_dato21[6]),
        .I3(sel0[2]),
        .I4(sel0[0]),
        .I5(sel0[1]),
        .O(\bdatr[6]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h2E)) 
    \bdatr[7]_INST_0 
       (.I0(\bdatr[7]_INST_0_i_1_n_0 ),
        .I1(sel0[3]),
        .I2(icff_empt21),
        .O(bdatr[7]));
  LUT6 #(
    .INIT(64'h55F055F055CC5500)) 
    \bdatr[7]_INST_0_i_1 
       (.I0(icff_empt12),
        .I1(icff_dato12[7]),
        .I2(icff_dato21[7]),
        .I3(sel0[2]),
        .I4(sel0[0]),
        .I5(sel0[1]),
        .O(\bdatr[7]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000E0A0400)) 
    \bdatr[8]_INST_0 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(icff_dato12[8]),
        .I4(icff_dato21[8]),
        .I5(sel0[3]),
        .O(bdatr[8]));
  LUT6 #(
    .INIT(64'h000000000E0A0400)) 
    \bdatr[9]_INST_0 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(icff_dato12[9]),
        .I4(icff_dato21[9]),
        .I5(sel0[3]),
        .O(bdatr[9]));
  LUT2 #(
    .INIT(4'h2)) 
    icff_frar1_INST_0
       (.I0(icff_frae1),
        .I1(icff_empt21),
        .O(icff_frar1));
  LUT2 #(
    .INIT(4'h2)) 
    icff_frar2_INST_0
       (.I0(icff_frae2),
        .I1(icff_empt12),
        .O(icff_frar2));
  LUT2 #(
    .INIT(4'h2)) 
    icff_ftar1_INST_0
       (.I0(icff_ftae1),
        .I1(icff_full12),
        .O(icff_ftar1));
  LUT2 #(
    .INIT(4'h2)) 
    icff_ftar2_INST_0
       (.I0(icff_ftae2),
        .I1(icff_full21),
        .O(icff_ftar2));
  LUT6 #(
    .INIT(64'h0000400000000000)) 
    icff_re12_INST_0
       (.I0(bcs_icff_n),
        .I1(brdy),
        .I2(bcmdr),
        .I3(bmst),
        .I4(icff_empt12),
        .I5(icff_re211),
        .O(icff_re12));
  LUT4 #(
    .INIT(16'h1000)) 
    icff_re12_INST_0_i_1
       (.I0(badr[3]),
        .I1(badr[0]),
        .I2(badr[2]),
        .I3(badr[1]),
        .O(icff_re211));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    icff_re21_INST_0
       (.I0(icff_re211),
        .I1(bcmdr),
        .I2(brdy),
        .I3(bcs_icff_n),
        .I4(bmst),
        .I5(icff_empt21),
        .O(icff_re21));
  LUT6 #(
    .INIT(64'h0000000400000000)) 
    icff_we12_INST_0
       (.I0(badr[0]),
        .I1(badr[2]),
        .I2(badr[1]),
        .I3(badr[3]),
        .I4(icff_full12),
        .I5(icff_we12_INST_0_i_1_n_0),
        .O(icff_we12));
  LUT4 #(
    .INIT(16'h0008)) 
    icff_we12_INST_0_i_1
       (.I0(bcmdw),
        .I1(brdy),
        .I2(bcs_icff_n),
        .I3(bmst),
        .O(icff_we12_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000400000000)) 
    icff_we21_INST_0
       (.I0(badr[0]),
        .I1(badr[2]),
        .I2(badr[1]),
        .I3(badr[3]),
        .I4(icff_full21),
        .I5(p_7_in),
        .O(icff_we21));
  LUT4 #(
    .INIT(16'h0080)) 
    icff_we21_INST_0_i_1
       (.I0(bmst),
        .I1(bcmdw),
        .I2(brdy),
        .I3(bcs_icff_n),
        .O(p_7_in));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \icffctl1[0]_i_1 
       (.I0(bcmdw),
        .I1(brdy),
        .I2(bcs_icff_n),
        .I3(bmst),
        .I4(rd_icffctl11),
        .I5(bdatw[0]),
        .O(p_1_in[0]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \icffctl1[2]_i_1 
       (.I0(bdatw[2]),
        .I1(rd_icffctl11),
        .I2(icff_we12_INST_0_i_1_n_0),
        .I3(icff_ftae1),
        .O(p_1_in[2]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \icffctl1[3]_i_1 
       (.I0(bdatw[3]),
        .I1(rd_icffctl11),
        .I2(icff_we12_INST_0_i_1_n_0),
        .I3(icff_frae1),
        .O(p_1_in[3]));
  FDSE \icffctl1_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(p_1_in[0]),
        .Q(icff_rst21),
        .S(\icffctl2[0]_i_1_n_0 ));
  FDRE \icffctl1_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(p_1_in[2]),
        .Q(icff_ftae1),
        .R(\icffctl2[0]_i_1_n_0 ));
  FDRE \icffctl1_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(p_1_in[3]),
        .Q(icff_frae1),
        .R(\icffctl2[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \icffctl2[0]_i_1 
       (.I0(rst_n),
        .O(\icffctl2[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \icffctl2[0]_i_2 
       (.I0(bmst),
        .I1(bcmdw),
        .I2(brdy),
        .I3(bcs_icff_n),
        .I4(rd_icffctl11),
        .I5(bdatw[0]),
        .O(\icffctl2[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \icffctl2[0]_i_3 
       (.I0(badr[2]),
        .I1(badr[3]),
        .I2(badr[1]),
        .I3(badr[0]),
        .O(rd_icffctl11));
  LUT4 #(
    .INIT(16'hBF80)) 
    \icffctl2[2]_i_1 
       (.I0(bdatw[2]),
        .I1(rd_icffctl11),
        .I2(p_7_in),
        .I3(icff_ftae2),
        .O(\icffctl2[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \icffctl2[3]_i_1 
       (.I0(bdatw[3]),
        .I1(rd_icffctl11),
        .I2(p_7_in),
        .I3(icff_frae2),
        .O(\icffctl2[3]_i_1_n_0 ));
  FDSE \icffctl2_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\icffctl2[0]_i_2_n_0 ),
        .Q(icff_rst12),
        .S(\icffctl2[0]_i_1_n_0 ));
  FDRE \icffctl2_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\icffctl2[2]_i_1_n_0 ),
        .Q(icff_ftae2),
        .R(\icffctl2[0]_i_1_n_0 ));
  FDRE \icffctl2_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\icffctl2[3]_i_1_n_0 ),
        .Q(icff_frae2),
        .R(\icffctl2[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h1000)) 
    rd_icffctl1_i_1
       (.I0(bmst),
        .I1(bcs_icff_n),
        .I2(bcmdr),
        .I3(rd_icffctl11),
        .O(rd_icffctl10));
  FDRE rd_icffctl1_reg
       (.C(clk),
        .CE(brdy),
        .D(rd_icffctl10),
        .Q(sel0[3]),
        .R(\icffctl2[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    rd_icffctl2_i_1
       (.I0(rd_icffctl11),
        .I1(bcs_icff_n),
        .I2(bcmdr),
        .I3(bmst),
        .O(rd_icffctl20));
  FDRE rd_icffctl2_reg
       (.C(clk),
        .CE(brdy),
        .D(rd_icffctl20),
        .Q(sel0[2]),
        .R(\icffctl2[0]_i_1_n_0 ));
  FDRE rd_icffrecv1_reg
       (.C(clk),
        .CE(brdy),
        .D(icff_re21),
        .Q(sel0[1]),
        .R(\icffctl2[0]_i_1_n_0 ));
  FDRE rd_icffrecv2_reg
       (.C(clk),
        .CE(brdy),
        .D(icff_re12),
        .Q(sel0[0]),
        .R(\icffctl2[0]_i_1_n_0 ));
endmodule
