
(* STRUCTURAL_NETLIST = "yes" *)
module semph5r12u
   (clk,
    rst_n,
    brdy,
    bcmdr,
    bcmdw,
    bmst,
    bcs_smph_n,
    badr,
    bdatw,
    smph_smrr1,
    smph_smur1,
    smph_smrr2,
    smph_smur2,
    smph_ram1_n,
    smph_ram2_n,
    smph_usr1_n,
    smph_usr2_n,
    bdatr);
//
// Semaphore Unit
//		(c) 2021	1YEN Toru
//
//
//	2021/07/31	ver.1.00
//		5 ram area semaphores
//		12 user defined semaphores
//		dual core edition
//
  input clk;
  input rst_n;
  input brdy;
  input bcmdr;
  input bcmdw;
  input bmst;
  input bcs_smph_n;
  input [3:0]badr;
  input [15:0]bdatw;
  output smph_smrr1;
  output smph_smur1;
  output smph_smrr2;
  output smph_smur2;
  output [4:0]smph_ram1_n;
  output [4:0]smph_ram2_n;
  output [11:0]smph_usr1_n;
  output [11:0]smph_usr2_n;
  output [15:0]bdatr;

  wire \<const0> ;
  wire [3:0]badr;
  wire bcmdr;
  wire bcmdw;
  wire bcs_smph_n;
  wire [7:0]\^bdatr ;
  wire [15:0]bdatw;
  wire bmst;
  wire brdy;
  wire clk;
  wire p_23_in;
  wire rst_n;
  wire semx03;
  wire semx13;
  wire semx23;
  wire semx33;
  wire [4:0]smph_ram1_n;
  wire [4:0]smph_ram1_nf;
  wire [4:0]smph_ram2_n;
  wire [4:0]smph_ram2_nf;
  wire smph_smrf11__8;
  wire smph_smrf21__8;
  wire smph_smrr1;
  wire smph_smrr2;
  wire smph_smur1;
  wire smph_smur2;
  wire [11:0]smph_usr1_n;
  wire [11:0]smph_usr1_nf;
  wire [11:0]smph_usr2_n;
  wire [11:0]smph_usr2_nf;
  wire sramb_n_0;
  wire sramb_n_1;
  wire sramb_n_2;
  wire sramb_n_3;
  wire sramb_n_4;
  wire sramb_n_5;
  wire susra_n_8;
  wire susra_n_9;
  wire susrc_n_13;
  wire susrc_n_14;

  assign bdatr[15] = \<const0> ;
  assign bdatr[14] = \<const0> ;
  assign bdatr[13] = \<const0> ;
  assign bdatr[12] = \<const0> ;
  assign bdatr[11] = \<const0> ;
  assign bdatr[10] = \<const0> ;
  assign bdatr[9] = \<const0> ;
  assign bdatr[8] = \<const0> ;
  assign bdatr[7:0] = \^bdatr [7:0];
  GND GND
       (.G(\<const0> ));
  smph_sctl sctl
       (.Q({smph_usr1_nf[11:9],smph_usr1_nf[2:0]}),
        .S({susrc_n_13,susra_n_8}),
        .badr(badr),
        .bcmdr(bcmdr),
        .bcs_smph_n(bcs_smph_n),
        .bdatr(\^bdatr ),
        .bdatr_0_sp_1(sramb_n_0),
        .bdatr_1_sp_1(sramb_n_1),
        .bdatr_2_sp_1(sramb_n_2),
        .bdatr_3_sp_1(sramb_n_3),
        .bdatr_4_sp_1(sramb_n_4),
        .bdatr_5_sp_1(sramb_n_5),
        .bdatw({bdatw[7:6],bdatw[3:2]}),
        .bmst(bmst),
        .brdy(brdy),
        .clk(clk),
        .p_23_in(p_23_in),
        .rst_n(rst_n),
        .\smph_ram1_nf_reg[0]_0 (smph_ram1_n[0]),
        .\smph_ram1_nf_reg[1]_0 (smph_ram1_n[1]),
        .\smph_ram1_nf_reg[2]_0 (smph_ram1_n[2]),
        .\smph_ram1_nf_reg[3]_0 (smph_ram1_n[3]),
        .\smph_ram1_nf_reg[4]_0 (smph_ram1_nf),
        .\smph_ram1_nf_reg[4]_1 (smph_ram1_n[4]),
        .\smph_ram2_nf_reg[0]_0 (smph_ram2_n[0]),
        .\smph_ram2_nf_reg[1]_0 (smph_ram2_n[1]),
        .\smph_ram2_nf_reg[2]_0 (smph_ram2_n[2]),
        .\smph_ram2_nf_reg[3]_0 (smph_ram2_n[3]),
        .\smph_ram2_nf_reg[4]_0 (smph_ram2_nf),
        .\smph_ram2_nf_reg[4]_1 (smph_ram2_n[4]),
        .smph_smrf11__8(smph_smrf11__8),
        .smph_smrf21__8(smph_smrf21__8),
        .smph_smrr1(smph_smrr1),
        .smph_smrr2(smph_smrr2),
        .smph_smuf2_reg_0({susrc_n_14,susra_n_9}),
        .smph_smur1(smph_smur1),
        .smph_smur2(smph_smur2),
        .\smph_usr1_nf_reg[0]_0 (smph_usr1_n[0]),
        .\smph_usr1_nf_reg[10]_0 (smph_usr1_n[10]),
        .\smph_usr1_nf_reg[11]_0 (smph_usr1_n[11]),
        .\smph_usr1_nf_reg[1]_0 (smph_usr1_n[1]),
        .\smph_usr1_nf_reg[2]_0 (smph_usr1_n[2]),
        .\smph_usr1_nf_reg[3]_0 (smph_usr1_n[3]),
        .\smph_usr1_nf_reg[4]_0 (smph_usr1_n[4]),
        .\smph_usr1_nf_reg[5]_0 (smph_usr1_n[5]),
        .\smph_usr1_nf_reg[6]_0 (smph_usr1_n[6]),
        .\smph_usr1_nf_reg[7]_0 (smph_usr1_n[7]),
        .\smph_usr1_nf_reg[8]_0 (smph_usr1_n[8]),
        .\smph_usr1_nf_reg[9]_0 (smph_usr1_n[9]),
        .\smph_usr2_nf_reg[0]_0 (smph_usr2_n[0]),
        .\smph_usr2_nf_reg[10]_0 (smph_usr2_n[10]),
        .\smph_usr2_nf_reg[11]_0 ({smph_usr2_nf[11:9],smph_usr2_nf[2:0]}),
        .\smph_usr2_nf_reg[11]_1 (smph_usr2_n[11]),
        .\smph_usr2_nf_reg[1]_0 (smph_usr2_n[1]),
        .\smph_usr2_nf_reg[2]_0 (smph_usr2_n[2]),
        .\smph_usr2_nf_reg[3]_0 (smph_usr2_n[3]),
        .\smph_usr2_nf_reg[4]_0 (smph_usr2_n[4]),
        .\smph_usr2_nf_reg[5]_0 (smph_usr2_n[5]),
        .\smph_usr2_nf_reg[6]_0 (smph_usr2_n[6]),
        .\smph_usr2_nf_reg[7]_0 (smph_usr2_n[7]),
        .\smph_usr2_nf_reg[8]_0 (smph_usr2_n[8]),
        .\smph_usr2_nf_reg[9]_0 (smph_usr2_n[9]));
  smph_ioreg srama
       (.badr(badr),
        .bdatw(bdatw[7:0]),
        .bmst(bmst),
        .clk(clk),
        .p_23_in(p_23_in),
        .rst_n(rst_n),
        .semx03(semx03),
        .\semx0_reg[0]_0 (smph_ram2_n[0]),
        .\semx0_reg[1]_0 (smph_ram1_n[0]),
        .semx13(semx13),
        .\semx1_reg[0]_0 (smph_ram2_n[1]),
        .\semx1_reg[1]_0 (smph_ram1_n[1]),
        .semx23(semx23),
        .\semx2_reg[0]_0 (smph_ram2_n[2]),
        .\semx2_reg[1]_0 (smph_ram1_n[2]),
        .semx33(semx33),
        .\semx3_reg[0]_0 (smph_ram2_n[3]),
        .\semx3_reg[1]_0 (smph_ram1_n[3]),
        .smph_smrf11__8(smph_smrf11__8),
        .smph_smrf1_reg(smph_ram1_nf),
        .smph_smrf1_reg_0(smph_ram1_n[4]),
        .smph_smrf21__8(smph_smrf21__8),
        .smph_smrf2_reg(smph_ram2_nf),
        .smph_smrf2_reg_0(smph_ram2_n[4]));
  smph_ioreg_0 sramb
       (.badr(badr),
        .bdatw(bdatw[7:0]),
        .bmst(bmst),
        .clk(clk),
        .p_23_in(p_23_in),
        .rst_n(rst_n),
        .semx03(semx03),
        .\semx0_reg[0]_0 (smph_ram2_n[4]),
        .\semx0_reg[1]_0 (smph_ram1_n[4]),
        .semx13(semx13),
        .\semx1_reg[0]_0 (sramb_n_4),
        .\semx1_reg[1]_0 (sramb_n_5),
        .semx23(semx23),
        .\semx2_reg[0]_0 (sramb_n_2),
        .\semx2_reg[1]_0 (sramb_n_3),
        .semx33(semx33),
        .\semx3_reg[0]_0 (sramb_n_0),
        .\semx3_reg[1]_0 (sramb_n_1));
  smph_ioreg_1 susra
       (.Q(smph_usr1_nf[2:0]),
        .S(susra_n_8),
        .badr(badr),
        .bdatw(bdatw[7:0]),
        .bmst(bmst),
        .clk(clk),
        .p_23_in(p_23_in),
        .rst_n(rst_n),
        .semx03(semx03),
        .\semx0_reg[0]_0 (smph_usr2_n[0]),
        .\semx0_reg[0]_1 (susra_n_9),
        .\semx0_reg[1]_0 (smph_usr1_n[0]),
        .semx13(semx13),
        .\semx1_reg[0]_0 (smph_usr2_n[1]),
        .\semx1_reg[1]_0 (smph_usr1_n[1]),
        .semx23(semx23),
        .\semx2_reg[0]_0 (smph_usr2_n[2]),
        .\semx2_reg[1]_0 (smph_usr1_n[2]),
        .semx33(semx33),
        .\semx3_reg[0]_0 (smph_usr2_n[3]),
        .\semx3_reg[1]_0 (smph_usr1_n[3]),
        .smph_smuf21_carry(smph_usr2_nf[2:0]));
  smph_ioreg_2 susrb
       (.badr(badr),
        .bdatw(bdatw[7:0]),
        .bmst(bmst),
        .clk(clk),
        .p_23_in(p_23_in),
        .rst_n(rst_n),
        .semx03(semx03),
        .\semx0_reg[0]_0 (smph_usr2_n[4]),
        .\semx0_reg[1]_0 (smph_usr1_n[4]),
        .semx13(semx13),
        .\semx1_reg[0]_0 (smph_usr2_n[5]),
        .\semx1_reg[1]_0 (smph_usr1_n[5]),
        .semx23(semx23),
        .\semx2_reg[0]_0 (smph_usr2_n[6]),
        .\semx2_reg[1]_0 (smph_usr1_n[6]),
        .semx33(semx33),
        .\semx3_reg[0]_0 (smph_usr2_n[7]),
        .\semx3_reg[1]_0 (smph_usr1_n[7]));
  smph_ioreg_3 susrc
       (.Q(smph_usr1_nf[11:9]),
        .S(susrc_n_13),
        .badr(badr),
        .bcmdw(bcmdw),
        .bcs_smph_n(bcs_smph_n),
        .bdatw(bdatw[7:0]),
        .bmst(bmst),
        .brdy(brdy),
        .clk(clk),
        .p_23_in(p_23_in),
        .rst_n(rst_n),
        .semx03(semx03),
        .\semx0_reg[0]_0 (smph_usr2_n[8]),
        .\semx0_reg[1]_0 (smph_usr1_n[8]),
        .semx13(semx13),
        .\semx1_reg[0]_0 (smph_usr2_n[9]),
        .\semx1_reg[0]_1 (susrc_n_14),
        .\semx1_reg[1]_0 (smph_usr1_n[9]),
        .semx23(semx23),
        .\semx2_reg[0]_0 (smph_usr2_n[10]),
        .\semx2_reg[1]_0 (smph_usr1_n[10]),
        .semx33(semx33),
        .\semx3_reg[0]_0 (smph_usr2_n[11]),
        .\semx3_reg[1]_0 (smph_usr1_n[11]),
        .smph_smuf21_carry(smph_usr2_nf[11:9]));
endmodule

module smph_ioreg
   (\semx3_reg[0]_0 ,
    \semx3_reg[1]_0 ,
    \semx2_reg[0]_0 ,
    \semx2_reg[1]_0 ,
    \semx1_reg[0]_0 ,
    \semx1_reg[1]_0 ,
    \semx0_reg[0]_0 ,
    \semx0_reg[1]_0 ,
    smph_smrf11__8,
    smph_smrf21__8,
    p_23_in,
    semx33,
    semx23,
    semx13,
    semx03,
    badr,
    bmst,
    bdatw,
    smph_smrf1_reg,
    smph_smrf1_reg_0,
    smph_smrf2_reg,
    smph_smrf2_reg_0,
    rst_n,
    clk);
  output \semx3_reg[0]_0 ;
  output \semx3_reg[1]_0 ;
  output \semx2_reg[0]_0 ;
  output \semx2_reg[1]_0 ;
  output \semx1_reg[0]_0 ;
  output \semx1_reg[1]_0 ;
  output \semx0_reg[0]_0 ;
  output \semx0_reg[1]_0 ;
  output smph_smrf11__8;
  output smph_smrf21__8;
  input p_23_in;
  input semx33;
  input semx23;
  input semx13;
  input semx03;
  input [3:0]badr;
  input bmst;
  input [7:0]bdatw;
  input [4:0]smph_smrf1_reg;
  input smph_smrf1_reg_0;
  input [4:0]smph_smrf2_reg;
  input smph_smrf2_reg_0;
  input rst_n;
  input clk;

  wire \<const0> ;
  wire \<const1> ;
  wire [3:0]badr;
  wire [7:0]bdatw;
  wire bmst;
  wire clk;
  wire p_23_in;
  wire rst_n;
  wire \sctl/rd_semrama1__2 ;
  wire semx017_out;
  wire semx03;
  wire \semx0[0]_i_1_n_0 ;
  wire \semx0[1]_i_1_n_0 ;
  wire \semx0[1]_i_2__1_n_0 ;
  wire \semx0_reg[0]_0 ;
  wire \semx0_reg[1]_0 ;
  wire semx115_out;
  wire semx13;
  wire \semx1[0]_i_1_n_0 ;
  wire \semx1[1]_i_1_n_0 ;
  wire \semx1[1]_i_2__3_n_0 ;
  wire \semx1_reg[0]_0 ;
  wire \semx1_reg[1]_0 ;
  wire semx213_out;
  wire semx23;
  wire \semx2[0]_i_1_n_0 ;
  wire \semx2[1]_i_1_n_0 ;
  wire \semx2[1]_i_2__3_n_0 ;
  wire \semx2_reg[0]_0 ;
  wire \semx2_reg[1]_0 ;
  wire semx311_out;
  wire semx33;
  wire \semx3[0]_i_1_n_0 ;
  wire \semx3[1]_i_1_n_0 ;
  wire \semx3[1]_i_3__3_n_0 ;
  wire \semx3_reg[0]_0 ;
  wire \semx3_reg[1]_0 ;
  wire smph_smrf11__8;
  wire smph_smrf1_i_3_n_0;
  wire [4:0]smph_smrf1_reg;
  wire smph_smrf1_reg_0;
  wire smph_smrf21__8;
  wire smph_smrf2_i_4_n_0;
  wire [4:0]smph_smrf2_reg;
  wire smph_smrf2_reg_0;
  wire wr_semrama;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT6 #(
    .INIT(64'h553F000055000000)) 
    \semx0[0]_i_1 
       (.I0(bmst),
        .I1(wr_semrama),
        .I2(\semx0[1]_i_2__1_n_0 ),
        .I3(semx017_out),
        .I4(rst_n),
        .I5(\semx0_reg[0]_0 ),
        .O(\semx0[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAA3F0000AA000000)) 
    \semx0[1]_i_1 
       (.I0(bmst),
        .I1(wr_semrama),
        .I2(\semx0[1]_i_2__1_n_0 ),
        .I3(semx017_out),
        .I4(rst_n),
        .I5(\semx0_reg[1]_0 ),
        .O(\semx0[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h18000000)) 
    \semx0[1]_i_2__1 
       (.I0(bmst),
        .I1(\semx0_reg[1]_0 ),
        .I2(\semx0_reg[0]_0 ),
        .I3(bdatw[7]),
        .I4(bdatw[6]),
        .O(\semx0[1]_i_2__1_n_0 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \semx0[1]_i_3 
       (.I0(\sctl/rd_semrama1__2 ),
        .I1(p_23_in),
        .I2(semx03),
        .I3(\semx0_reg[0]_0 ),
        .I4(\semx0_reg[1]_0 ),
        .O(semx017_out));
  FDRE \semx0_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\semx0[0]_i_1_n_0 ),
        .Q(\semx0_reg[0]_0 ),
        .R(\<const0> ));
  FDRE \semx0_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\semx0[1]_i_1_n_0 ),
        .Q(\semx0_reg[1]_0 ),
        .R(\<const0> ));
  LUT6 #(
    .INIT(64'h553F000055000000)) 
    \semx1[0]_i_1 
       (.I0(bmst),
        .I1(wr_semrama),
        .I2(\semx1[1]_i_2__3_n_0 ),
        .I3(semx115_out),
        .I4(rst_n),
        .I5(\semx1_reg[0]_0 ),
        .O(\semx1[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAA3F0000AA000000)) 
    \semx1[1]_i_1 
       (.I0(bmst),
        .I1(wr_semrama),
        .I2(\semx1[1]_i_2__3_n_0 ),
        .I3(semx115_out),
        .I4(rst_n),
        .I5(\semx1_reg[1]_0 ),
        .O(\semx1[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h18000000)) 
    \semx1[1]_i_2__3 
       (.I0(bmst),
        .I1(\semx1_reg[1]_0 ),
        .I2(\semx1_reg[0]_0 ),
        .I3(bdatw[5]),
        .I4(bdatw[4]),
        .O(\semx1[1]_i_2__3_n_0 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \semx1[1]_i_3 
       (.I0(\sctl/rd_semrama1__2 ),
        .I1(p_23_in),
        .I2(semx13),
        .I3(\semx1_reg[0]_0 ),
        .I4(\semx1_reg[1]_0 ),
        .O(semx115_out));
  FDRE \semx1_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\semx1[0]_i_1_n_0 ),
        .Q(\semx1_reg[0]_0 ),
        .R(\<const0> ));
  FDRE \semx1_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\semx1[1]_i_1_n_0 ),
        .Q(\semx1_reg[1]_0 ),
        .R(\<const0> ));
  LUT6 #(
    .INIT(64'h553F000055000000)) 
    \semx2[0]_i_1 
       (.I0(bmst),
        .I1(wr_semrama),
        .I2(\semx2[1]_i_2__3_n_0 ),
        .I3(semx213_out),
        .I4(rst_n),
        .I5(\semx2_reg[0]_0 ),
        .O(\semx2[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAA3F0000AA000000)) 
    \semx2[1]_i_1 
       (.I0(bmst),
        .I1(wr_semrama),
        .I2(\semx2[1]_i_2__3_n_0 ),
        .I3(semx213_out),
        .I4(rst_n),
        .I5(\semx2_reg[1]_0 ),
        .O(\semx2[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h18000000)) 
    \semx2[1]_i_2__3 
       (.I0(bmst),
        .I1(\semx2_reg[1]_0 ),
        .I2(\semx2_reg[0]_0 ),
        .I3(bdatw[3]),
        .I4(bdatw[2]),
        .O(\semx2[1]_i_2__3_n_0 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \semx2[1]_i_3 
       (.I0(\sctl/rd_semrama1__2 ),
        .I1(p_23_in),
        .I2(semx23),
        .I3(\semx2_reg[0]_0 ),
        .I4(\semx2_reg[1]_0 ),
        .O(semx213_out));
  FDRE \semx2_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\semx2[0]_i_1_n_0 ),
        .Q(\semx2_reg[0]_0 ),
        .R(\<const0> ));
  FDRE \semx2_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\semx2[1]_i_1_n_0 ),
        .Q(\semx2_reg[1]_0 ),
        .R(\<const0> ));
  LUT6 #(
    .INIT(64'h553F000055000000)) 
    \semx3[0]_i_1 
       (.I0(bmst),
        .I1(wr_semrama),
        .I2(\semx3[1]_i_3__3_n_0 ),
        .I3(semx311_out),
        .I4(rst_n),
        .I5(\semx3_reg[0]_0 ),
        .O(\semx3[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAA3F0000AA000000)) 
    \semx3[1]_i_1 
       (.I0(bmst),
        .I1(wr_semrama),
        .I2(\semx3[1]_i_3__3_n_0 ),
        .I3(semx311_out),
        .I4(rst_n),
        .I5(\semx3_reg[1]_0 ),
        .O(\semx3[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000020)) 
    \semx3[1]_i_2 
       (.I0(p_23_in),
        .I1(badr[0]),
        .I2(badr[2]),
        .I3(badr[1]),
        .I4(badr[3]),
        .O(wr_semrama));
  LUT5 #(
    .INIT(32'h18000000)) 
    \semx3[1]_i_3__3 
       (.I0(bmst),
        .I1(\semx3_reg[1]_0 ),
        .I2(\semx3_reg[0]_0 ),
        .I3(bdatw[1]),
        .I4(bdatw[0]),
        .O(\semx3[1]_i_3__3_n_0 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \semx3[1]_i_4 
       (.I0(\sctl/rd_semrama1__2 ),
        .I1(p_23_in),
        .I2(semx33),
        .I3(\semx3_reg[0]_0 ),
        .I4(\semx3_reg[1]_0 ),
        .O(semx311_out));
  LUT4 #(
    .INIT(16'h0010)) 
    \semx3[1]_i_5 
       (.I0(badr[3]),
        .I1(badr[1]),
        .I2(badr[2]),
        .I3(badr[0]),
        .O(\sctl/rd_semrama1__2 ));
  FDRE \semx3_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\semx3[0]_i_1_n_0 ),
        .Q(\semx3_reg[0]_0 ),
        .R(\<const0> ));
  FDRE \semx3_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\semx3[1]_i_1_n_0 ),
        .Q(\semx3_reg[1]_0 ),
        .R(\<const0> ));
  LUT5 #(
    .INIT(32'hF6FFFFF6)) 
    smph_smrf1_i_2
       (.I0(\semx3_reg[1]_0 ),
        .I1(smph_smrf1_reg[3]),
        .I2(smph_smrf1_i_3_n_0),
        .I3(smph_smrf1_reg[4]),
        .I4(smph_smrf1_reg_0),
        .O(smph_smrf11__8));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    smph_smrf1_i_3
       (.I0(\semx0_reg[1]_0 ),
        .I1(smph_smrf1_reg[0]),
        .I2(smph_smrf1_reg[2]),
        .I3(\semx2_reg[1]_0 ),
        .I4(smph_smrf1_reg[1]),
        .I5(\semx1_reg[1]_0 ),
        .O(smph_smrf1_i_3_n_0));
  LUT5 #(
    .INIT(32'hF6FFFFF6)) 
    smph_smrf2_i_2
       (.I0(\semx3_reg[0]_0 ),
        .I1(smph_smrf2_reg[3]),
        .I2(smph_smrf2_i_4_n_0),
        .I3(smph_smrf2_reg[4]),
        .I4(smph_smrf2_reg_0),
        .O(smph_smrf21__8));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    smph_smrf2_i_4
       (.I0(\semx0_reg[0]_0 ),
        .I1(smph_smrf2_reg[0]),
        .I2(smph_smrf2_reg[2]),
        .I3(\semx2_reg[0]_0 ),
        .I4(smph_smrf2_reg[1]),
        .I5(\semx1_reg[0]_0 ),
        .O(smph_smrf2_i_4_n_0));
endmodule

(* ORIG_REF_NAME = "smph_ioreg" *) 
module smph_ioreg_0
   (\semx3_reg[0]_0 ,
    \semx3_reg[1]_0 ,
    \semx2_reg[0]_0 ,
    \semx2_reg[1]_0 ,
    \semx1_reg[0]_0 ,
    \semx1_reg[1]_0 ,
    \semx0_reg[0]_0 ,
    \semx0_reg[1]_0 ,
    p_23_in,
    semx33,
    semx23,
    semx13,
    semx03,
    badr,
    bmst,
    bdatw,
    rst_n,
    clk);
  output \semx3_reg[0]_0 ;
  output \semx3_reg[1]_0 ;
  output \semx2_reg[0]_0 ;
  output \semx2_reg[1]_0 ;
  output \semx1_reg[0]_0 ;
  output \semx1_reg[1]_0 ;
  output \semx0_reg[0]_0 ;
  output \semx0_reg[1]_0 ;
  input p_23_in;
  input semx33;
  input semx23;
  input semx13;
  input semx03;
  input [3:0]badr;
  input bmst;
  input [7:0]bdatw;
  input rst_n;
  input clk;

  wire \<const0> ;
  wire \<const1> ;
  wire [3:0]badr;
  wire [7:0]bdatw;
  wire bmst;
  wire clk;
  wire p_23_in;
  wire rst_n;
  wire \sctl/rd_semramb1__2 ;
  wire semx017_out;
  wire semx03;
  wire \semx0[0]_i_1_n_0 ;
  wire \semx0[1]_i_1_n_0 ;
  wire \semx0[1]_i_3__3_n_0 ;
  wire \semx0_reg[0]_0 ;
  wire \semx0_reg[1]_0 ;
  wire semx115_out;
  wire semx13;
  wire \semx1[0]_i_1_n_0 ;
  wire \semx1[1]_i_1_n_0 ;
  wire \semx1[1]_i_2__0_n_0 ;
  wire \semx1_reg[0]_0 ;
  wire \semx1_reg[1]_0 ;
  wire semx213_out;
  wire semx23;
  wire \semx2[0]_i_1_n_0 ;
  wire \semx2[1]_i_1_n_0 ;
  wire \semx2[1]_i_2__0_n_0 ;
  wire \semx2_reg[0]_0 ;
  wire \semx2_reg[1]_0 ;
  wire semx311_out;
  wire semx33;
  wire \semx3[0]_i_1_n_0 ;
  wire \semx3[1]_i_1_n_0 ;
  wire \semx3[1]_i_2__3_n_0 ;
  wire \semx3_reg[0]_0 ;
  wire \semx3_reg[1]_0 ;
  wire wr_semramb;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT6 #(
    .INIT(64'h553F000055000000)) 
    \semx0[0]_i_1 
       (.I0(bmst),
        .I1(wr_semramb),
        .I2(\semx0[1]_i_3__3_n_0 ),
        .I3(semx017_out),
        .I4(rst_n),
        .I5(\semx0_reg[0]_0 ),
        .O(\semx0[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAA3F0000AA000000)) 
    \semx0[1]_i_1 
       (.I0(bmst),
        .I1(wr_semramb),
        .I2(\semx0[1]_i_3__3_n_0 ),
        .I3(semx017_out),
        .I4(rst_n),
        .I5(\semx0_reg[1]_0 ),
        .O(\semx0[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \semx0[1]_i_2 
       (.I0(p_23_in),
        .I1(badr[1]),
        .I2(badr[2]),
        .I3(badr[0]),
        .I4(badr[3]),
        .O(wr_semramb));
  LUT5 #(
    .INIT(32'h18000000)) 
    \semx0[1]_i_3__3 
       (.I0(bmst),
        .I1(\semx0_reg[1]_0 ),
        .I2(\semx0_reg[0]_0 ),
        .I3(bdatw[7]),
        .I4(bdatw[6]),
        .O(\semx0[1]_i_3__3_n_0 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \semx0[1]_i_4 
       (.I0(\sctl/rd_semramb1__2 ),
        .I1(p_23_in),
        .I2(semx03),
        .I3(\semx0_reg[0]_0 ),
        .I4(\semx0_reg[1]_0 ),
        .O(semx017_out));
  LUT4 #(
    .INIT(16'h1000)) 
    \semx0[1]_i_6 
       (.I0(badr[3]),
        .I1(badr[0]),
        .I2(badr[2]),
        .I3(badr[1]),
        .O(\sctl/rd_semramb1__2 ));
  FDRE \semx0_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\semx0[0]_i_1_n_0 ),
        .Q(\semx0_reg[0]_0 ),
        .R(\<const0> ));
  FDRE \semx0_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\semx0[1]_i_1_n_0 ),
        .Q(\semx0_reg[1]_0 ),
        .R(\<const0> ));
  LUT6 #(
    .INIT(64'h553F000055000000)) 
    \semx1[0]_i_1 
       (.I0(bmst),
        .I1(wr_semramb),
        .I2(\semx1[1]_i_2__0_n_0 ),
        .I3(semx115_out),
        .I4(rst_n),
        .I5(\semx1_reg[0]_0 ),
        .O(\semx1[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAA3F0000AA000000)) 
    \semx1[1]_i_1 
       (.I0(bmst),
        .I1(wr_semramb),
        .I2(\semx1[1]_i_2__0_n_0 ),
        .I3(semx115_out),
        .I4(rst_n),
        .I5(\semx1_reg[1]_0 ),
        .O(\semx1[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h18000000)) 
    \semx1[1]_i_2__0 
       (.I0(bmst),
        .I1(\semx1_reg[1]_0 ),
        .I2(\semx1_reg[0]_0 ),
        .I3(bdatw[5]),
        .I4(bdatw[4]),
        .O(\semx1[1]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \semx1[1]_i_3__0 
       (.I0(\sctl/rd_semramb1__2 ),
        .I1(p_23_in),
        .I2(semx13),
        .I3(\semx1_reg[0]_0 ),
        .I4(\semx1_reg[1]_0 ),
        .O(semx115_out));
  FDRE \semx1_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\semx1[0]_i_1_n_0 ),
        .Q(\semx1_reg[0]_0 ),
        .R(\<const0> ));
  FDRE \semx1_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\semx1[1]_i_1_n_0 ),
        .Q(\semx1_reg[1]_0 ),
        .R(\<const0> ));
  LUT6 #(
    .INIT(64'h553F000055000000)) 
    \semx2[0]_i_1 
       (.I0(bmst),
        .I1(wr_semramb),
        .I2(\semx2[1]_i_2__0_n_0 ),
        .I3(semx213_out),
        .I4(rst_n),
        .I5(\semx2_reg[0]_0 ),
        .O(\semx2[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAA3F0000AA000000)) 
    \semx2[1]_i_1 
       (.I0(bmst),
        .I1(wr_semramb),
        .I2(\semx2[1]_i_2__0_n_0 ),
        .I3(semx213_out),
        .I4(rst_n),
        .I5(\semx2_reg[1]_0 ),
        .O(\semx2[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h18000000)) 
    \semx2[1]_i_2__0 
       (.I0(bmst),
        .I1(\semx2_reg[1]_0 ),
        .I2(\semx2_reg[0]_0 ),
        .I3(bdatw[3]),
        .I4(bdatw[2]),
        .O(\semx2[1]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \semx2[1]_i_3__0 
       (.I0(\sctl/rd_semramb1__2 ),
        .I1(p_23_in),
        .I2(semx23),
        .I3(\semx2_reg[0]_0 ),
        .I4(\semx2_reg[1]_0 ),
        .O(semx213_out));
  FDRE \semx2_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\semx2[0]_i_1_n_0 ),
        .Q(\semx2_reg[0]_0 ),
        .R(\<const0> ));
  FDRE \semx2_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\semx2[1]_i_1_n_0 ),
        .Q(\semx2_reg[1]_0 ),
        .R(\<const0> ));
  LUT6 #(
    .INIT(64'h553F000055000000)) 
    \semx3[0]_i_1 
       (.I0(bmst),
        .I1(wr_semramb),
        .I2(\semx3[1]_i_2__3_n_0 ),
        .I3(semx311_out),
        .I4(rst_n),
        .I5(\semx3_reg[0]_0 ),
        .O(\semx3[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAA3F0000AA000000)) 
    \semx3[1]_i_1 
       (.I0(bmst),
        .I1(wr_semramb),
        .I2(\semx3[1]_i_2__3_n_0 ),
        .I3(semx311_out),
        .I4(rst_n),
        .I5(\semx3_reg[1]_0 ),
        .O(\semx3[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h18000000)) 
    \semx3[1]_i_2__3 
       (.I0(bmst),
        .I1(\semx3_reg[1]_0 ),
        .I2(\semx3_reg[0]_0 ),
        .I3(bdatw[1]),
        .I4(bdatw[0]),
        .O(\semx3[1]_i_2__3_n_0 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \semx3[1]_i_3 
       (.I0(\sctl/rd_semramb1__2 ),
        .I1(p_23_in),
        .I2(semx33),
        .I3(\semx3_reg[0]_0 ),
        .I4(\semx3_reg[1]_0 ),
        .O(semx311_out));
  FDRE \semx3_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\semx3[0]_i_1_n_0 ),
        .Q(\semx3_reg[0]_0 ),
        .R(\<const0> ));
  FDRE \semx3_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\semx3[1]_i_1_n_0 ),
        .Q(\semx3_reg[1]_0 ),
        .R(\<const0> ));
endmodule

(* ORIG_REF_NAME = "smph_ioreg" *) 
module smph_ioreg_1
   (\semx3_reg[0]_0 ,
    \semx3_reg[1]_0 ,
    \semx2_reg[0]_0 ,
    \semx2_reg[1]_0 ,
    \semx1_reg[0]_0 ,
    \semx1_reg[1]_0 ,
    \semx0_reg[0]_0 ,
    \semx0_reg[1]_0 ,
    S,
    \semx0_reg[0]_1 ,
    p_23_in,
    semx33,
    semx23,
    semx13,
    semx03,
    badr,
    Q,
    smph_smuf21_carry,
    bmst,
    bdatw,
    rst_n,
    clk);
  output \semx3_reg[0]_0 ;
  output \semx3_reg[1]_0 ;
  output \semx2_reg[0]_0 ;
  output \semx2_reg[1]_0 ;
  output \semx1_reg[0]_0 ;
  output \semx1_reg[1]_0 ;
  output \semx0_reg[0]_0 ;
  output \semx0_reg[1]_0 ;
  output [0:0]S;
  output [0:0]\semx0_reg[0]_1 ;
  input p_23_in;
  input semx33;
  input semx23;
  input semx13;
  input semx03;
  input [3:0]badr;
  input [2:0]Q;
  input [2:0]smph_smuf21_carry;
  input bmst;
  input [7:0]bdatw;
  input rst_n;
  input clk;

  wire \<const0> ;
  wire \<const1> ;
  wire [2:0]Q;
  wire [0:0]S;
  wire [3:0]badr;
  wire [7:0]bdatw;
  wire bmst;
  wire clk;
  wire p_23_in;
  wire rst_n;
  wire \sctl/rd_semusra1__2 ;
  wire semx017_out;
  wire semx03;
  wire \semx0[0]_i_1_n_0 ;
  wire \semx0[1]_i_1_n_0 ;
  wire \semx0[1]_i_2__2_n_0 ;
  wire \semx0_reg[0]_0 ;
  wire [0:0]\semx0_reg[0]_1 ;
  wire \semx0_reg[1]_0 ;
  wire semx115_out;
  wire semx13;
  wire \semx1[0]_i_1_n_0 ;
  wire \semx1[1]_i_1_n_0 ;
  wire \semx1[1]_i_2__1_n_0 ;
  wire \semx1_reg[0]_0 ;
  wire \semx1_reg[1]_0 ;
  wire semx213_out;
  wire semx23;
  wire \semx2[0]_i_1_n_0 ;
  wire \semx2[1]_i_1_n_0 ;
  wire \semx2[1]_i_2__1_n_0 ;
  wire \semx2_reg[0]_0 ;
  wire \semx2_reg[1]_0 ;
  wire semx311_out;
  wire semx33;
  wire \semx3[0]_i_1_n_0 ;
  wire \semx3[1]_i_1_n_0 ;
  wire \semx3[1]_i_3__1_n_0 ;
  wire \semx3_reg[0]_0 ;
  wire \semx3_reg[1]_0 ;
  wire [2:0]smph_smuf21_carry;
  wire wr_semusra;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT6 #(
    .INIT(64'h553F000055000000)) 
    \semx0[0]_i_1 
       (.I0(bmst),
        .I1(wr_semusra),
        .I2(\semx0[1]_i_2__2_n_0 ),
        .I3(semx017_out),
        .I4(rst_n),
        .I5(\semx0_reg[0]_0 ),
        .O(\semx0[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAA3F0000AA000000)) 
    \semx0[1]_i_1 
       (.I0(bmst),
        .I1(wr_semusra),
        .I2(\semx0[1]_i_2__2_n_0 ),
        .I3(semx017_out),
        .I4(rst_n),
        .I5(\semx0_reg[1]_0 ),
        .O(\semx0[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h18000000)) 
    \semx0[1]_i_2__2 
       (.I0(bmst),
        .I1(\semx0_reg[1]_0 ),
        .I2(\semx0_reg[0]_0 ),
        .I3(bdatw[7]),
        .I4(bdatw[6]),
        .O(\semx0[1]_i_2__2_n_0 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \semx0[1]_i_3__0 
       (.I0(\sctl/rd_semusra1__2 ),
        .I1(p_23_in),
        .I2(semx03),
        .I3(\semx0_reg[0]_0 ),
        .I4(\semx0_reg[1]_0 ),
        .O(semx017_out));
  FDRE \semx0_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\semx0[0]_i_1_n_0 ),
        .Q(\semx0_reg[0]_0 ),
        .R(\<const0> ));
  FDRE \semx0_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\semx0[1]_i_1_n_0 ),
        .Q(\semx0_reg[1]_0 ),
        .R(\<const0> ));
  LUT6 #(
    .INIT(64'h553F000055000000)) 
    \semx1[0]_i_1 
       (.I0(bmst),
        .I1(wr_semusra),
        .I2(\semx1[1]_i_2__1_n_0 ),
        .I3(semx115_out),
        .I4(rst_n),
        .I5(\semx1_reg[0]_0 ),
        .O(\semx1[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAA3F0000AA000000)) 
    \semx1[1]_i_1 
       (.I0(bmst),
        .I1(wr_semusra),
        .I2(\semx1[1]_i_2__1_n_0 ),
        .I3(semx115_out),
        .I4(rst_n),
        .I5(\semx1_reg[1]_0 ),
        .O(\semx1[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h18000000)) 
    \semx1[1]_i_2__1 
       (.I0(bmst),
        .I1(\semx1_reg[1]_0 ),
        .I2(\semx1_reg[0]_0 ),
        .I3(bdatw[5]),
        .I4(bdatw[4]),
        .O(\semx1[1]_i_2__1_n_0 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \semx1[1]_i_3__1 
       (.I0(\sctl/rd_semusra1__2 ),
        .I1(p_23_in),
        .I2(semx13),
        .I3(\semx1_reg[0]_0 ),
        .I4(\semx1_reg[1]_0 ),
        .O(semx115_out));
  FDRE \semx1_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\semx1[0]_i_1_n_0 ),
        .Q(\semx1_reg[0]_0 ),
        .R(\<const0> ));
  FDRE \semx1_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\semx1[1]_i_1_n_0 ),
        .Q(\semx1_reg[1]_0 ),
        .R(\<const0> ));
  LUT6 #(
    .INIT(64'h553F000055000000)) 
    \semx2[0]_i_1 
       (.I0(bmst),
        .I1(wr_semusra),
        .I2(\semx2[1]_i_2__1_n_0 ),
        .I3(semx213_out),
        .I4(rst_n),
        .I5(\semx2_reg[0]_0 ),
        .O(\semx2[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAA3F0000AA000000)) 
    \semx2[1]_i_1 
       (.I0(bmst),
        .I1(wr_semusra),
        .I2(\semx2[1]_i_2__1_n_0 ),
        .I3(semx213_out),
        .I4(rst_n),
        .I5(\semx2_reg[1]_0 ),
        .O(\semx2[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h18000000)) 
    \semx2[1]_i_2__1 
       (.I0(bmst),
        .I1(\semx2_reg[1]_0 ),
        .I2(\semx2_reg[0]_0 ),
        .I3(bdatw[3]),
        .I4(bdatw[2]),
        .O(\semx2[1]_i_2__1_n_0 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \semx2[1]_i_3__1 
       (.I0(\sctl/rd_semusra1__2 ),
        .I1(p_23_in),
        .I2(semx23),
        .I3(\semx2_reg[0]_0 ),
        .I4(\semx2_reg[1]_0 ),
        .O(semx213_out));
  FDRE \semx2_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\semx2[0]_i_1_n_0 ),
        .Q(\semx2_reg[0]_0 ),
        .R(\<const0> ));
  FDRE \semx2_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\semx2[1]_i_1_n_0 ),
        .Q(\semx2_reg[1]_0 ),
        .R(\<const0> ));
  LUT6 #(
    .INIT(64'h553F000055000000)) 
    \semx3[0]_i_1 
       (.I0(bmst),
        .I1(wr_semusra),
        .I2(\semx3[1]_i_3__1_n_0 ),
        .I3(semx311_out),
        .I4(rst_n),
        .I5(\semx3_reg[0]_0 ),
        .O(\semx3[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAA3F0000AA000000)) 
    \semx3[1]_i_1 
       (.I0(bmst),
        .I1(wr_semusra),
        .I2(\semx3[1]_i_3__1_n_0 ),
        .I3(semx311_out),
        .I4(rst_n),
        .I5(\semx3_reg[1]_0 ),
        .O(\semx3[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000020)) 
    \semx3[1]_i_2__0 
       (.I0(p_23_in),
        .I1(badr[0]),
        .I2(badr[3]),
        .I3(badr[1]),
        .I4(badr[2]),
        .O(wr_semusra));
  LUT5 #(
    .INIT(32'h18000000)) 
    \semx3[1]_i_3__1 
       (.I0(bmst),
        .I1(\semx3_reg[1]_0 ),
        .I2(\semx3_reg[0]_0 ),
        .I3(bdatw[1]),
        .I4(bdatw[0]),
        .O(\semx3[1]_i_3__1_n_0 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \semx3[1]_i_4__0 
       (.I0(\sctl/rd_semusra1__2 ),
        .I1(p_23_in),
        .I2(semx33),
        .I3(\semx3_reg[0]_0 ),
        .I4(\semx3_reg[1]_0 ),
        .O(semx311_out));
  LUT4 #(
    .INIT(16'h0010)) 
    \semx3[1]_i_5__0 
       (.I0(badr[2]),
        .I1(badr[1]),
        .I2(badr[3]),
        .I3(badr[0]),
        .O(\sctl/rd_semusra1__2 ));
  FDRE \semx3_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\semx3[0]_i_1_n_0 ),
        .Q(\semx3_reg[0]_0 ),
        .R(\<const0> ));
  FDRE \semx3_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\semx3[1]_i_1_n_0 ),
        .Q(\semx3_reg[1]_0 ),
        .R(\<const0> ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    smph_smuf11_carry_i_4
       (.I0(\semx0_reg[1]_0 ),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(\semx2_reg[1]_0 ),
        .I4(Q[1]),
        .I5(\semx1_reg[1]_0 ),
        .O(S));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    smph_smuf21_carry_i_4
       (.I0(\semx0_reg[0]_0 ),
        .I1(smph_smuf21_carry[0]),
        .I2(smph_smuf21_carry[2]),
        .I3(\semx2_reg[0]_0 ),
        .I4(smph_smuf21_carry[1]),
        .I5(\semx1_reg[0]_0 ),
        .O(\semx0_reg[0]_1 ));
endmodule

(* ORIG_REF_NAME = "smph_ioreg" *) 
module smph_ioreg_2
   (\semx3_reg[0]_0 ,
    \semx3_reg[1]_0 ,
    \semx2_reg[0]_0 ,
    \semx2_reg[1]_0 ,
    \semx1_reg[0]_0 ,
    \semx1_reg[1]_0 ,
    \semx0_reg[0]_0 ,
    \semx0_reg[1]_0 ,
    p_23_in,
    semx33,
    semx23,
    semx13,
    semx03,
    badr,
    bmst,
    bdatw,
    rst_n,
    clk);
  output \semx3_reg[0]_0 ;
  output \semx3_reg[1]_0 ;
  output \semx2_reg[0]_0 ;
  output \semx2_reg[1]_0 ;
  output \semx1_reg[0]_0 ;
  output \semx1_reg[1]_0 ;
  output \semx0_reg[0]_0 ;
  output \semx0_reg[1]_0 ;
  input p_23_in;
  input semx33;
  input semx23;
  input semx13;
  input semx03;
  input [3:0]badr;
  input bmst;
  input [7:0]bdatw;
  input rst_n;
  input clk;

  wire \<const0> ;
  wire \<const1> ;
  wire [3:0]badr;
  wire [7:0]bdatw;
  wire bmst;
  wire clk;
  wire p_23_in;
  wire rst_n;
  wire \sctl/rd_semusrb1__2 ;
  wire semx017_out;
  wire semx03;
  wire \semx0[0]_i_1_n_0 ;
  wire \semx0[1]_i_1_n_0 ;
  wire \semx0[1]_i_2__0_n_0 ;
  wire \semx0_reg[0]_0 ;
  wire \semx0_reg[1]_0 ;
  wire semx115_out;
  wire semx13;
  wire \semx1[0]_i_1_n_0 ;
  wire \semx1[1]_i_1_n_0 ;
  wire \semx1[1]_i_2_n_0 ;
  wire \semx1_reg[0]_0 ;
  wire \semx1_reg[1]_0 ;
  wire semx213_out;
  wire semx23;
  wire \semx2[0]_i_1_n_0 ;
  wire \semx2[1]_i_1_n_0 ;
  wire \semx2[1]_i_2_n_0 ;
  wire \semx2_reg[0]_0 ;
  wire \semx2_reg[1]_0 ;
  wire semx311_out;
  wire semx33;
  wire \semx3[0]_i_1_n_0 ;
  wire \semx3[1]_i_1_n_0 ;
  wire \semx3[1]_i_3__0_n_0 ;
  wire \semx3_reg[0]_0 ;
  wire \semx3_reg[1]_0 ;
  wire wr_semusrb;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT6 #(
    .INIT(64'h553F000055000000)) 
    \semx0[0]_i_1 
       (.I0(bmst),
        .I1(wr_semusrb),
        .I2(\semx0[1]_i_2__0_n_0 ),
        .I3(semx017_out),
        .I4(rst_n),
        .I5(\semx0_reg[0]_0 ),
        .O(\semx0[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAA3F0000AA000000)) 
    \semx0[1]_i_1 
       (.I0(bmst),
        .I1(wr_semusrb),
        .I2(\semx0[1]_i_2__0_n_0 ),
        .I3(semx017_out),
        .I4(rst_n),
        .I5(\semx0_reg[1]_0 ),
        .O(\semx0[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h18000000)) 
    \semx0[1]_i_2__0 
       (.I0(bmst),
        .I1(\semx0_reg[1]_0 ),
        .I2(\semx0_reg[0]_0 ),
        .I3(bdatw[7]),
        .I4(bdatw[6]),
        .O(\semx0[1]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \semx0[1]_i_3__1 
       (.I0(\sctl/rd_semusrb1__2 ),
        .I1(p_23_in),
        .I2(semx03),
        .I3(\semx0_reg[0]_0 ),
        .I4(\semx0_reg[1]_0 ),
        .O(semx017_out));
  FDRE \semx0_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\semx0[0]_i_1_n_0 ),
        .Q(\semx0_reg[0]_0 ),
        .R(\<const0> ));
  FDRE \semx0_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\semx0[1]_i_1_n_0 ),
        .Q(\semx0_reg[1]_0 ),
        .R(\<const0> ));
  LUT6 #(
    .INIT(64'h553F000055000000)) 
    \semx1[0]_i_1 
       (.I0(bmst),
        .I1(wr_semusrb),
        .I2(\semx1[1]_i_2_n_0 ),
        .I3(semx115_out),
        .I4(rst_n),
        .I5(\semx1_reg[0]_0 ),
        .O(\semx1[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAA3F0000AA000000)) 
    \semx1[1]_i_1 
       (.I0(bmst),
        .I1(wr_semusrb),
        .I2(\semx1[1]_i_2_n_0 ),
        .I3(semx115_out),
        .I4(rst_n),
        .I5(\semx1_reg[1]_0 ),
        .O(\semx1[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h18000000)) 
    \semx1[1]_i_2 
       (.I0(bmst),
        .I1(\semx1_reg[1]_0 ),
        .I2(\semx1_reg[0]_0 ),
        .I3(bdatw[5]),
        .I4(bdatw[4]),
        .O(\semx1[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \semx1[1]_i_3__2 
       (.I0(\sctl/rd_semusrb1__2 ),
        .I1(p_23_in),
        .I2(semx13),
        .I3(\semx1_reg[0]_0 ),
        .I4(\semx1_reg[1]_0 ),
        .O(semx115_out));
  FDRE \semx1_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\semx1[0]_i_1_n_0 ),
        .Q(\semx1_reg[0]_0 ),
        .R(\<const0> ));
  FDRE \semx1_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\semx1[1]_i_1_n_0 ),
        .Q(\semx1_reg[1]_0 ),
        .R(\<const0> ));
  LUT6 #(
    .INIT(64'h553F000055000000)) 
    \semx2[0]_i_1 
       (.I0(bmst),
        .I1(wr_semusrb),
        .I2(\semx2[1]_i_2_n_0 ),
        .I3(semx213_out),
        .I4(rst_n),
        .I5(\semx2_reg[0]_0 ),
        .O(\semx2[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAA3F0000AA000000)) 
    \semx2[1]_i_1 
       (.I0(bmst),
        .I1(wr_semusrb),
        .I2(\semx2[1]_i_2_n_0 ),
        .I3(semx213_out),
        .I4(rst_n),
        .I5(\semx2_reg[1]_0 ),
        .O(\semx2[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h18000000)) 
    \semx2[1]_i_2 
       (.I0(bmst),
        .I1(\semx2_reg[1]_0 ),
        .I2(\semx2_reg[0]_0 ),
        .I3(bdatw[3]),
        .I4(bdatw[2]),
        .O(\semx2[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \semx2[1]_i_3__2 
       (.I0(\sctl/rd_semusrb1__2 ),
        .I1(p_23_in),
        .I2(semx23),
        .I3(\semx2_reg[0]_0 ),
        .I4(\semx2_reg[1]_0 ),
        .O(semx213_out));
  FDRE \semx2_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\semx2[0]_i_1_n_0 ),
        .Q(\semx2_reg[0]_0 ),
        .R(\<const0> ));
  FDRE \semx2_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\semx2[1]_i_1_n_0 ),
        .Q(\semx2_reg[1]_0 ),
        .R(\<const0> ));
  LUT6 #(
    .INIT(64'h553F000055000000)) 
    \semx3[0]_i_1 
       (.I0(bmst),
        .I1(wr_semusrb),
        .I2(\semx3[1]_i_3__0_n_0 ),
        .I3(semx311_out),
        .I4(rst_n),
        .I5(\semx3_reg[0]_0 ),
        .O(\semx3[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAA3F0000AA000000)) 
    \semx3[1]_i_1 
       (.I0(bmst),
        .I1(wr_semusrb),
        .I2(\semx3[1]_i_3__0_n_0 ),
        .I3(semx311_out),
        .I4(rst_n),
        .I5(\semx3_reg[1]_0 ),
        .O(\semx3[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \semx3[1]_i_2__1 
       (.I0(p_23_in),
        .I1(badr[1]),
        .I2(badr[3]),
        .I3(badr[0]),
        .I4(badr[2]),
        .O(wr_semusrb));
  LUT5 #(
    .INIT(32'h18000000)) 
    \semx3[1]_i_3__0 
       (.I0(bmst),
        .I1(\semx3_reg[1]_0 ),
        .I2(\semx3_reg[0]_0 ),
        .I3(bdatw[1]),
        .I4(bdatw[0]),
        .O(\semx3[1]_i_3__0_n_0 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \semx3[1]_i_4__1 
       (.I0(\sctl/rd_semusrb1__2 ),
        .I1(p_23_in),
        .I2(semx33),
        .I3(\semx3_reg[0]_0 ),
        .I4(\semx3_reg[1]_0 ),
        .O(semx311_out));
  LUT4 #(
    .INIT(16'h1000)) 
    \semx3[1]_i_5__1 
       (.I0(badr[2]),
        .I1(badr[0]),
        .I2(badr[3]),
        .I3(badr[1]),
        .O(\sctl/rd_semusrb1__2 ));
  FDRE \semx3_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\semx3[0]_i_1_n_0 ),
        .Q(\semx3_reg[0]_0 ),
        .R(\<const0> ));
  FDRE \semx3_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\semx3[1]_i_1_n_0 ),
        .Q(\semx3_reg[1]_0 ),
        .R(\<const0> ));
endmodule

(* ORIG_REF_NAME = "smph_ioreg" *) 
module smph_ioreg_3
   (p_23_in,
    semx33,
    \semx3_reg[0]_0 ,
    \semx3_reg[1]_0 ,
    semx23,
    \semx2_reg[0]_0 ,
    \semx2_reg[1]_0 ,
    semx13,
    \semx1_reg[0]_0 ,
    \semx1_reg[1]_0 ,
    semx03,
    \semx0_reg[0]_0 ,
    \semx0_reg[1]_0 ,
    S,
    \semx1_reg[0]_1 ,
    badr,
    Q,
    smph_smuf21_carry,
    bmst,
    bdatw,
    brdy,
    bcs_smph_n,
    bcmdw,
    rst_n,
    clk);
  output p_23_in;
  output semx33;
  output \semx3_reg[0]_0 ;
  output \semx3_reg[1]_0 ;
  output semx23;
  output \semx2_reg[0]_0 ;
  output \semx2_reg[1]_0 ;
  output semx13;
  output \semx1_reg[0]_0 ;
  output \semx1_reg[1]_0 ;
  output semx03;
  output \semx0_reg[0]_0 ;
  output \semx0_reg[1]_0 ;
  output [0:0]S;
  output [0:0]\semx1_reg[0]_1 ;
  input [3:0]badr;
  input [2:0]Q;
  input [2:0]smph_smuf21_carry;
  input bmst;
  input [7:0]bdatw;
  input brdy;
  input bcs_smph_n;
  input bcmdw;
  input rst_n;
  input clk;

  wire \<const0> ;
  wire \<const1> ;
  wire [2:0]Q;
  wire [0:0]S;
  wire [3:0]badr;
  wire bcmdw;
  wire bcs_smph_n;
  wire [7:0]bdatw;
  wire bmst;
  wire brdy;
  wire clk;
  wire p_23_in;
  wire rst_n;
  wire semx017_out;
  wire semx03;
  wire \semx0[0]_i_1_n_0 ;
  wire \semx0[1]_i_1_n_0 ;
  wire \semx0[1]_i_2__3_n_0 ;
  wire \semx0_reg[0]_0 ;
  wire \semx0_reg[1]_0 ;
  wire semx115_out;
  wire semx13;
  wire \semx1[0]_i_1_n_0 ;
  wire \semx1[1]_i_1_n_0 ;
  wire \semx1[1]_i_2__2_n_0 ;
  wire \semx1_reg[0]_0 ;
  wire [0:0]\semx1_reg[0]_1 ;
  wire \semx1_reg[1]_0 ;
  wire semx213_out;
  wire semx23;
  wire \semx2[0]_i_1_n_0 ;
  wire \semx2[1]_i_1_n_0 ;
  wire \semx2[1]_i_2__2_n_0 ;
  wire \semx2_reg[0]_0 ;
  wire \semx2_reg[1]_0 ;
  wire semx311_out;
  wire semx33;
  wire \semx3[0]_i_1_n_0 ;
  wire \semx3[1]_i_1_n_0 ;
  wire \semx3[1]_i_3__2_n_0 ;
  wire \semx3[1]_i_5__2_n_0 ;
  wire \semx3_reg[0]_0 ;
  wire \semx3_reg[1]_0 ;
  wire [2:0]smph_smuf21_carry;
  wire wr_semusrc;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT6 #(
    .INIT(64'h553F000055000000)) 
    \semx0[0]_i_1 
       (.I0(bmst),
        .I1(wr_semusrc),
        .I2(\semx0[1]_i_2__3_n_0 ),
        .I3(semx017_out),
        .I4(rst_n),
        .I5(\semx0_reg[0]_0 ),
        .O(\semx0[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAA3F0000AA000000)) 
    \semx0[1]_i_1 
       (.I0(bmst),
        .I1(wr_semusrc),
        .I2(\semx0[1]_i_2__3_n_0 ),
        .I3(semx017_out),
        .I4(rst_n),
        .I5(\semx0_reg[1]_0 ),
        .O(\semx0[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h18000000)) 
    \semx0[1]_i_2__3 
       (.I0(bmst),
        .I1(\semx0_reg[1]_0 ),
        .I2(\semx0_reg[0]_0 ),
        .I3(bdatw[7]),
        .I4(bdatw[6]),
        .O(\semx0[1]_i_2__3_n_0 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \semx0[1]_i_3__2 
       (.I0(\semx3[1]_i_5__2_n_0 ),
        .I1(p_23_in),
        .I2(semx03),
        .I3(\semx0_reg[0]_0 ),
        .I4(\semx0_reg[1]_0 ),
        .O(semx017_out));
  LUT3 #(
    .INIT(8'h20)) 
    \semx0[1]_i_5 
       (.I0(brdy),
        .I1(bcs_smph_n),
        .I2(bcmdw),
        .O(p_23_in));
  LUT3 #(
    .INIT(8'h42)) 
    \semx0[1]_i_7 
       (.I0(bdatw[6]),
        .I1(bdatw[7]),
        .I2(bmst),
        .O(semx03));
  FDRE \semx0_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\semx0[0]_i_1_n_0 ),
        .Q(\semx0_reg[0]_0 ),
        .R(\<const0> ));
  FDRE \semx0_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\semx0[1]_i_1_n_0 ),
        .Q(\semx0_reg[1]_0 ),
        .R(\<const0> ));
  LUT6 #(
    .INIT(64'h553F000055000000)) 
    \semx1[0]_i_1 
       (.I0(bmst),
        .I1(wr_semusrc),
        .I2(\semx1[1]_i_2__2_n_0 ),
        .I3(semx115_out),
        .I4(rst_n),
        .I5(\semx1_reg[0]_0 ),
        .O(\semx1[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAA3F0000AA000000)) 
    \semx1[1]_i_1 
       (.I0(bmst),
        .I1(wr_semusrc),
        .I2(\semx1[1]_i_2__2_n_0 ),
        .I3(semx115_out),
        .I4(rst_n),
        .I5(\semx1_reg[1]_0 ),
        .O(\semx1[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h18000000)) 
    \semx1[1]_i_2__2 
       (.I0(bmst),
        .I1(\semx1_reg[1]_0 ),
        .I2(\semx1_reg[0]_0 ),
        .I3(bdatw[5]),
        .I4(bdatw[4]),
        .O(\semx1[1]_i_2__2_n_0 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \semx1[1]_i_3__3 
       (.I0(\semx3[1]_i_5__2_n_0 ),
        .I1(p_23_in),
        .I2(semx13),
        .I3(\semx1_reg[0]_0 ),
        .I4(\semx1_reg[1]_0 ),
        .O(semx115_out));
  LUT3 #(
    .INIT(8'h42)) 
    \semx1[1]_i_4 
       (.I0(bdatw[4]),
        .I1(bdatw[5]),
        .I2(bmst),
        .O(semx13));
  FDRE \semx1_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\semx1[0]_i_1_n_0 ),
        .Q(\semx1_reg[0]_0 ),
        .R(\<const0> ));
  FDRE \semx1_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\semx1[1]_i_1_n_0 ),
        .Q(\semx1_reg[1]_0 ),
        .R(\<const0> ));
  LUT6 #(
    .INIT(64'h553F000055000000)) 
    \semx2[0]_i_1 
       (.I0(bmst),
        .I1(wr_semusrc),
        .I2(\semx2[1]_i_2__2_n_0 ),
        .I3(semx213_out),
        .I4(rst_n),
        .I5(\semx2_reg[0]_0 ),
        .O(\semx2[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAA3F0000AA000000)) 
    \semx2[1]_i_1 
       (.I0(bmst),
        .I1(wr_semusrc),
        .I2(\semx2[1]_i_2__2_n_0 ),
        .I3(semx213_out),
        .I4(rst_n),
        .I5(\semx2_reg[1]_0 ),
        .O(\semx2[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h18000000)) 
    \semx2[1]_i_2__2 
       (.I0(bmst),
        .I1(\semx2_reg[1]_0 ),
        .I2(\semx2_reg[0]_0 ),
        .I3(bdatw[3]),
        .I4(bdatw[2]),
        .O(\semx2[1]_i_2__2_n_0 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \semx2[1]_i_3__3 
       (.I0(\semx3[1]_i_5__2_n_0 ),
        .I1(p_23_in),
        .I2(semx23),
        .I3(\semx2_reg[0]_0 ),
        .I4(\semx2_reg[1]_0 ),
        .O(semx213_out));
  LUT3 #(
    .INIT(8'h42)) 
    \semx2[1]_i_4 
       (.I0(bdatw[2]),
        .I1(bdatw[3]),
        .I2(bmst),
        .O(semx23));
  FDRE \semx2_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\semx2[0]_i_1_n_0 ),
        .Q(\semx2_reg[0]_0 ),
        .R(\<const0> ));
  FDRE \semx2_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\semx2[1]_i_1_n_0 ),
        .Q(\semx2_reg[1]_0 ),
        .R(\<const0> ));
  LUT6 #(
    .INIT(64'h553F000055000000)) 
    \semx3[0]_i_1 
       (.I0(bmst),
        .I1(wr_semusrc),
        .I2(\semx3[1]_i_3__2_n_0 ),
        .I3(semx311_out),
        .I4(rst_n),
        .I5(\semx3_reg[0]_0 ),
        .O(\semx3[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAA3F0000AA000000)) 
    \semx3[1]_i_1 
       (.I0(bmst),
        .I1(wr_semusrc),
        .I2(\semx3[1]_i_3__2_n_0 ),
        .I3(semx311_out),
        .I4(rst_n),
        .I5(\semx3_reg[1]_0 ),
        .O(\semx3[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \semx3[1]_i_2__2 
       (.I0(p_23_in),
        .I1(badr[3]),
        .I2(badr[2]),
        .I3(badr[0]),
        .I4(badr[1]),
        .O(wr_semusrc));
  LUT5 #(
    .INIT(32'h18000000)) 
    \semx3[1]_i_3__2 
       (.I0(bmst),
        .I1(\semx3_reg[1]_0 ),
        .I2(\semx3_reg[0]_0 ),
        .I3(bdatw[1]),
        .I4(bdatw[0]),
        .O(\semx3[1]_i_3__2_n_0 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \semx3[1]_i_4__2 
       (.I0(\semx3[1]_i_5__2_n_0 ),
        .I1(p_23_in),
        .I2(semx33),
        .I3(\semx3_reg[0]_0 ),
        .I4(\semx3_reg[1]_0 ),
        .O(semx311_out));
  LUT4 #(
    .INIT(16'h1000)) 
    \semx3[1]_i_5__2 
       (.I0(badr[1]),
        .I1(badr[0]),
        .I2(badr[2]),
        .I3(badr[3]),
        .O(\semx3[1]_i_5__2_n_0 ));
  LUT3 #(
    .INIT(8'h42)) 
    \semx3[1]_i_6 
       (.I0(bdatw[0]),
        .I1(bdatw[1]),
        .I2(bmst),
        .O(semx33));
  FDRE \semx3_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\semx3[0]_i_1_n_0 ),
        .Q(\semx3_reg[0]_0 ),
        .R(\<const0> ));
  FDRE \semx3_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\semx3[1]_i_1_n_0 ),
        .Q(\semx3_reg[1]_0 ),
        .R(\<const0> ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    smph_smuf11_carry_i_1
       (.I0(\semx1_reg[1]_0 ),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(\semx3_reg[1]_0 ),
        .I4(Q[1]),
        .I5(\semx2_reg[1]_0 ),
        .O(S));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    smph_smuf21_carry_i_1
       (.I0(\semx1_reg[0]_0 ),
        .I1(smph_smuf21_carry[0]),
        .I2(smph_smuf21_carry[2]),
        .I3(\semx3_reg[0]_0 ),
        .I4(smph_smuf21_carry[1]),
        .I5(\semx2_reg[0]_0 ),
        .O(\semx1_reg[0]_1 ));
endmodule

module smph_sctl
   (bdatr,
    smph_smrr1,
    smph_smur1,
    smph_smrr2,
    smph_smur2,
    Q,
    \smph_usr2_nf_reg[11]_0 ,
    \smph_ram1_nf_reg[4]_0 ,
    \smph_ram2_nf_reg[4]_0 ,
    brdy,
    clk,
    S,
    smph_smuf2_reg_0,
    rst_n,
    smph_smrf11__8,
    bdatw,
    smph_smrf21__8,
    bmst,
    p_23_in,
    badr,
    \smph_usr1_nf_reg[8]_0 ,
    \smph_usr2_nf_reg[8]_0 ,
    bcs_smph_n,
    bcmdr,
    \smph_usr1_nf_reg[3]_0 ,
    \smph_usr1_nf_reg[5]_0 ,
    \smph_usr1_nf_reg[4]_0 ,
    \smph_usr1_nf_reg[6]_0 ,
    \smph_usr1_nf_reg[7]_0 ,
    \smph_usr2_nf_reg[3]_0 ,
    \smph_usr2_nf_reg[5]_0 ,
    \smph_usr2_nf_reg[4]_0 ,
    \smph_usr2_nf_reg[6]_0 ,
    \smph_usr2_nf_reg[7]_0 ,
    \smph_usr2_nf_reg[11]_1 ,
    .bdatr_0_sp_1(bdatr_0_sn_1),
    \smph_ram2_nf_reg[3]_0 ,
    \smph_usr1_nf_reg[11]_0 ,
    .bdatr_1_sp_1(bdatr_1_sn_1),
    \smph_ram1_nf_reg[3]_0 ,
    \smph_usr2_nf_reg[2]_0 ,
    .bdatr_2_sp_1(bdatr_2_sn_1),
    \smph_ram2_nf_reg[2]_0 ,
    \smph_usr2_nf_reg[10]_0 ,
    \smph_usr1_nf_reg[2]_0 ,
    .bdatr_3_sp_1(bdatr_3_sn_1),
    \smph_ram1_nf_reg[2]_0 ,
    \smph_usr1_nf_reg[10]_0 ,
    \smph_usr2_nf_reg[9]_0 ,
    .bdatr_4_sp_1(bdatr_4_sn_1),
    \smph_ram2_nf_reg[1]_0 ,
    \smph_usr2_nf_reg[1]_0 ,
    \smph_usr1_nf_reg[9]_0 ,
    .bdatr_5_sp_1(bdatr_5_sn_1),
    \smph_ram1_nf_reg[1]_0 ,
    \smph_usr1_nf_reg[1]_0 ,
    \smph_ram2_nf_reg[4]_1 ,
    \smph_ram2_nf_reg[0]_0 ,
    \smph_usr2_nf_reg[0]_0 ,
    \smph_ram1_nf_reg[4]_1 ,
    \smph_ram1_nf_reg[0]_0 ,
    \smph_usr1_nf_reg[0]_0 );
  output [7:0]bdatr;
  output smph_smrr1;
  output smph_smur1;
  output smph_smrr2;
  output smph_smur2;
  output [5:0]Q;
  output [5:0]\smph_usr2_nf_reg[11]_0 ;
  output [4:0]\smph_ram1_nf_reg[4]_0 ;
  output [4:0]\smph_ram2_nf_reg[4]_0 ;
  input brdy;
  input clk;
  input [1:0]S;
  input [1:0]smph_smuf2_reg_0;
  input rst_n;
  input smph_smrf11__8;
  input [3:0]bdatw;
  input smph_smrf21__8;
  input bmst;
  input p_23_in;
  input [3:0]badr;
  input \smph_usr1_nf_reg[8]_0 ;
  input \smph_usr2_nf_reg[8]_0 ;
  input bcs_smph_n;
  input bcmdr;
  input \smph_usr1_nf_reg[3]_0 ;
  input \smph_usr1_nf_reg[5]_0 ;
  input \smph_usr1_nf_reg[4]_0 ;
  input \smph_usr1_nf_reg[6]_0 ;
  input \smph_usr1_nf_reg[7]_0 ;
  input \smph_usr2_nf_reg[3]_0 ;
  input \smph_usr2_nf_reg[5]_0 ;
  input \smph_usr2_nf_reg[4]_0 ;
  input \smph_usr2_nf_reg[6]_0 ;
  input \smph_usr2_nf_reg[7]_0 ;
  input \smph_usr2_nf_reg[11]_1 ;
  input \smph_ram2_nf_reg[3]_0 ;
  input \smph_usr1_nf_reg[11]_0 ;
  input \smph_ram1_nf_reg[3]_0 ;
  input \smph_usr2_nf_reg[2]_0 ;
  input \smph_ram2_nf_reg[2]_0 ;
  input \smph_usr2_nf_reg[10]_0 ;
  input \smph_usr1_nf_reg[2]_0 ;
  input \smph_ram1_nf_reg[2]_0 ;
  input \smph_usr1_nf_reg[10]_0 ;
  input \smph_usr2_nf_reg[9]_0 ;
  input \smph_ram2_nf_reg[1]_0 ;
  input \smph_usr2_nf_reg[1]_0 ;
  input \smph_usr1_nf_reg[9]_0 ;
  input \smph_ram1_nf_reg[1]_0 ;
  input \smph_usr1_nf_reg[1]_0 ;
  input \smph_ram2_nf_reg[4]_1 ;
  input \smph_ram2_nf_reg[0]_0 ;
  input \smph_usr2_nf_reg[0]_0 ;
  input \smph_ram1_nf_reg[4]_1 ;
  input \smph_ram1_nf_reg[0]_0 ;
  input \smph_usr1_nf_reg[0]_0 ;
  input bdatr_0_sn_1;
  input bdatr_1_sn_1;
  input bdatr_2_sn_1;
  input bdatr_3_sn_1;
  input bdatr_4_sn_1;
  input bdatr_5_sn_1;

  wire \<const0> ;
  wire \<const1> ;
  wire [5:0]Q;
  wire [1:0]S;
  wire [3:0]badr;
  wire bcmdr;
  wire bcs_smph_n;
  wire [7:0]bdatr;
  wire \bdatr[0]_INST_0_i_1_n_0 ;
  wire \bdatr[0]_INST_0_i_2_n_0 ;
  wire \bdatr[1]_INST_0_i_1_n_0 ;
  wire \bdatr[1]_INST_0_i_2_n_0 ;
  wire \bdatr[2]_INST_0_i_1_n_0 ;
  wire \bdatr[2]_INST_0_i_2_n_0 ;
  wire \bdatr[3]_INST_0_i_1_n_0 ;
  wire \bdatr[3]_INST_0_i_2_n_0 ;
  wire \bdatr[4]_INST_0_i_1_n_0 ;
  wire \bdatr[4]_INST_0_i_2_n_0 ;
  wire \bdatr[5]_INST_0_i_1_n_0 ;
  wire \bdatr[5]_INST_0_i_2_n_0 ;
  wire \bdatr[6]_INST_0_i_2_n_0 ;
  wire \bdatr[6]_INST_0_i_3_n_0 ;
  wire \bdatr[7]_INST_0_i_2_n_0 ;
  wire \bdatr[7]_INST_0_i_3_n_0 ;
  wire bdatr_0_sn_1;
  wire bdatr_1_sn_1;
  wire bdatr_2_sn_1;
  wire bdatr_3_sn_1;
  wire bdatr_4_sn_1;
  wire bdatr_5_sn_1;
  wire [7:6]bdatr_sctl;
  wire [3:0]bdatw;
  wire bmst;
  wire brdy;
  wire clk;
  wire p_23_in;
  wire rd_semctl1;
  wire rd_semctl1_i_1_n_0;
  wire rd_semctl2;
  wire rd_semctl20;
  wire rd_semctl2_i_2_n_0;
  wire rd_semrama;
  wire rd_semrama0;
  wire rd_semramb;
  wire rd_semramb0;
  wire rd_semusra;
  wire rd_semusra0;
  wire rd_semusrb;
  wire rd_semusrb0;
  wire rd_semusrc;
  wire rd_semusrc0;
  wire rst_n;
  wire \semctl1[2]_i_1_n_0 ;
  wire \semctl1[3]_i_1_n_0 ;
  wire \semctl1[3]_i_2_n_0 ;
  wire semctl2;
  wire \semctl2[2]_i_1_n_0 ;
  wire \semctl2[3]_i_1_n_0 ;
  wire \smph_ram1_nf[4]_i_1_n_0 ;
  wire \smph_ram1_nf_reg[0]_0 ;
  wire \smph_ram1_nf_reg[1]_0 ;
  wire \smph_ram1_nf_reg[2]_0 ;
  wire \smph_ram1_nf_reg[3]_0 ;
  wire [4:0]\smph_ram1_nf_reg[4]_0 ;
  wire \smph_ram1_nf_reg[4]_1 ;
  wire \smph_ram2_nf_reg[0]_0 ;
  wire \smph_ram2_nf_reg[1]_0 ;
  wire \smph_ram2_nf_reg[2]_0 ;
  wire \smph_ram2_nf_reg[3]_0 ;
  wire [4:0]\smph_ram2_nf_reg[4]_0 ;
  wire \smph_ram2_nf_reg[4]_1 ;
  wire smph_smre1;
  wire smph_smre2;
  wire smph_smrf1;
  wire smph_smrf11__8;
  wire smph_smrf1_i_1_n_0;
  wire smph_smrf2;
  wire smph_smrf21__8;
  wire smph_smrf2_i_1_n_0;
  wire smph_smrr1;
  wire smph_smrr2;
  wire smph_smue1;
  wire smph_smue2;
  wire smph_smuf1;
  wire smph_smuf11;
  wire smph_smuf11_carry_i_2_n_0;
  wire smph_smuf11_carry_i_3_n_0;
  wire smph_smuf11_carry_n_1;
  wire smph_smuf11_carry_n_2;
  wire smph_smuf11_carry_n_3;
  wire smph_smuf1_i_1_n_0;
  wire smph_smuf2;
  wire smph_smuf21;
  wire smph_smuf21_carry_i_2_n_0;
  wire smph_smuf21_carry_i_3_n_0;
  wire smph_smuf21_carry_n_1;
  wire smph_smuf21_carry_n_2;
  wire smph_smuf21_carry_n_3;
  wire smph_smuf2_i_1_n_0;
  wire [1:0]smph_smuf2_reg_0;
  wire smph_smur1;
  wire smph_smur2;
  wire [8:3]smph_usr1_nf;
  wire \smph_usr1_nf_reg[0]_0 ;
  wire \smph_usr1_nf_reg[10]_0 ;
  wire \smph_usr1_nf_reg[11]_0 ;
  wire \smph_usr1_nf_reg[1]_0 ;
  wire \smph_usr1_nf_reg[2]_0 ;
  wire \smph_usr1_nf_reg[3]_0 ;
  wire \smph_usr1_nf_reg[4]_0 ;
  wire \smph_usr1_nf_reg[5]_0 ;
  wire \smph_usr1_nf_reg[6]_0 ;
  wire \smph_usr1_nf_reg[7]_0 ;
  wire \smph_usr1_nf_reg[8]_0 ;
  wire \smph_usr1_nf_reg[9]_0 ;
  wire [8:3]smph_usr2_nf;
  wire \smph_usr2_nf_reg[0]_0 ;
  wire \smph_usr2_nf_reg[10]_0 ;
  wire [5:0]\smph_usr2_nf_reg[11]_0 ;
  wire \smph_usr2_nf_reg[11]_1 ;
  wire \smph_usr2_nf_reg[1]_0 ;
  wire \smph_usr2_nf_reg[2]_0 ;
  wire \smph_usr2_nf_reg[3]_0 ;
  wire \smph_usr2_nf_reg[4]_0 ;
  wire \smph_usr2_nf_reg[5]_0 ;
  wire \smph_usr2_nf_reg[6]_0 ;
  wire \smph_usr2_nf_reg[7]_0 ;
  wire \smph_usr2_nf_reg[8]_0 ;
  wire \smph_usr2_nf_reg[9]_0 ;
  wire wr_semctl2__0;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT4 #(
    .INIT(16'hFFF8)) 
    \bdatr[0]_INST_0 
       (.I0(\smph_usr2_nf_reg[11]_1 ),
        .I1(rd_semusrc),
        .I2(\bdatr[0]_INST_0_i_1_n_0 ),
        .I3(\bdatr[0]_INST_0_i_2_n_0 ),
        .O(bdatr[0]));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatr[0]_INST_0_i_1 
       (.I0(bdatr_0_sn_1),
        .I1(rd_semramb),
        .I2(\smph_ram2_nf_reg[3]_0 ),
        .I3(rd_semrama),
        .O(\bdatr[0]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatr[0]_INST_0_i_2 
       (.I0(\smph_usr2_nf_reg[7]_0 ),
        .I1(rd_semusrb),
        .I2(\smph_usr2_nf_reg[3]_0 ),
        .I3(rd_semusra),
        .O(\bdatr[0]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFF8)) 
    \bdatr[1]_INST_0 
       (.I0(\smph_usr1_nf_reg[11]_0 ),
        .I1(rd_semusrc),
        .I2(\bdatr[1]_INST_0_i_1_n_0 ),
        .I3(\bdatr[1]_INST_0_i_2_n_0 ),
        .O(bdatr[1]));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatr[1]_INST_0_i_1 
       (.I0(bdatr_1_sn_1),
        .I1(rd_semramb),
        .I2(\smph_ram1_nf_reg[3]_0 ),
        .I3(rd_semrama),
        .O(\bdatr[1]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatr[1]_INST_0_i_2 
       (.I0(\smph_usr1_nf_reg[7]_0 ),
        .I1(rd_semusrb),
        .I2(\smph_usr1_nf_reg[3]_0 ),
        .I3(rd_semusra),
        .O(\bdatr[1]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \bdatr[2]_INST_0 
       (.I0(\bdatr[2]_INST_0_i_1_n_0 ),
        .I1(\bdatr[2]_INST_0_i_2_n_0 ),
        .I2(\smph_usr2_nf_reg[6]_0 ),
        .I3(rd_semusrb),
        .I4(\smph_usr2_nf_reg[2]_0 ),
        .I5(rd_semusra),
        .O(bdatr[2]));
  LUT6 #(
    .INIT(64'hFFFFF808F808F808)) 
    \bdatr[2]_INST_0_i_1 
       (.I0(smph_smue2),
        .I1(rd_semctl2),
        .I2(rd_semctl1),
        .I3(smph_smue1),
        .I4(\smph_usr2_nf_reg[10]_0 ),
        .I5(rd_semusrc),
        .O(\bdatr[2]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatr[2]_INST_0_i_2 
       (.I0(bdatr_2_sn_1),
        .I1(rd_semramb),
        .I2(\smph_ram2_nf_reg[2]_0 ),
        .I3(rd_semrama),
        .O(\bdatr[2]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \bdatr[3]_INST_0 
       (.I0(\bdatr[3]_INST_0_i_1_n_0 ),
        .I1(\bdatr[3]_INST_0_i_2_n_0 ),
        .I2(\smph_usr1_nf_reg[6]_0 ),
        .I3(rd_semusrb),
        .I4(\smph_usr1_nf_reg[2]_0 ),
        .I5(rd_semusra),
        .O(bdatr[3]));
  LUT6 #(
    .INIT(64'hFFFFF808F808F808)) 
    \bdatr[3]_INST_0_i_1 
       (.I0(smph_smre2),
        .I1(rd_semctl2),
        .I2(rd_semctl1),
        .I3(smph_smre1),
        .I4(\smph_usr1_nf_reg[10]_0 ),
        .I5(rd_semusrc),
        .O(\bdatr[3]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatr[3]_INST_0_i_2 
       (.I0(bdatr_3_sn_1),
        .I1(rd_semramb),
        .I2(\smph_ram1_nf_reg[2]_0 ),
        .I3(rd_semrama),
        .O(\bdatr[3]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFF8)) 
    \bdatr[4]_INST_0 
       (.I0(\smph_usr2_nf_reg[9]_0 ),
        .I1(rd_semusrc),
        .I2(\bdatr[4]_INST_0_i_1_n_0 ),
        .I3(\bdatr[4]_INST_0_i_2_n_0 ),
        .O(bdatr[4]));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatr[4]_INST_0_i_1 
       (.I0(bdatr_4_sn_1),
        .I1(rd_semramb),
        .I2(\smph_ram2_nf_reg[1]_0 ),
        .I3(rd_semrama),
        .O(\bdatr[4]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatr[4]_INST_0_i_2 
       (.I0(\smph_usr2_nf_reg[5]_0 ),
        .I1(rd_semusrb),
        .I2(\smph_usr2_nf_reg[1]_0 ),
        .I3(rd_semusra),
        .O(\bdatr[4]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFF8)) 
    \bdatr[5]_INST_0 
       (.I0(\smph_usr1_nf_reg[9]_0 ),
        .I1(rd_semusrc),
        .I2(\bdatr[5]_INST_0_i_1_n_0 ),
        .I3(\bdatr[5]_INST_0_i_2_n_0 ),
        .O(bdatr[5]));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatr[5]_INST_0_i_1 
       (.I0(bdatr_5_sn_1),
        .I1(rd_semramb),
        .I2(\smph_ram1_nf_reg[1]_0 ),
        .I3(rd_semrama),
        .O(\bdatr[5]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatr[5]_INST_0_i_2 
       (.I0(\smph_usr1_nf_reg[5]_0 ),
        .I1(rd_semusrb),
        .I2(\smph_usr1_nf_reg[1]_0 ),
        .I3(rd_semusra),
        .O(\bdatr[5]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFF8)) 
    \bdatr[6]_INST_0 
       (.I0(rd_semusrc),
        .I1(\smph_usr2_nf_reg[8]_0 ),
        .I2(bdatr_sctl[6]),
        .I3(\bdatr[6]_INST_0_i_2_n_0 ),
        .I4(\bdatr[6]_INST_0_i_3_n_0 ),
        .O(bdatr[6]));
  LUT6 #(
    .INIT(64'h8F80808080808080)) 
    \bdatr[6]_INST_0_i_1 
       (.I0(smph_smue1),
        .I1(smph_smuf1),
        .I2(rd_semctl1),
        .I3(rd_semctl2),
        .I4(smph_smuf2),
        .I5(smph_smue2),
        .O(bdatr_sctl[6]));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatr[6]_INST_0_i_2 
       (.I0(\smph_ram2_nf_reg[4]_1 ),
        .I1(rd_semramb),
        .I2(\smph_ram2_nf_reg[0]_0 ),
        .I3(rd_semrama),
        .O(\bdatr[6]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatr[6]_INST_0_i_3 
       (.I0(\smph_usr2_nf_reg[4]_0 ),
        .I1(rd_semusrb),
        .I2(\smph_usr2_nf_reg[0]_0 ),
        .I3(rd_semusra),
        .O(\bdatr[6]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFF8)) 
    \bdatr[7]_INST_0 
       (.I0(rd_semusrc),
        .I1(\smph_usr1_nf_reg[8]_0 ),
        .I2(bdatr_sctl[7]),
        .I3(\bdatr[7]_INST_0_i_2_n_0 ),
        .I4(\bdatr[7]_INST_0_i_3_n_0 ),
        .O(bdatr[7]));
  LUT6 #(
    .INIT(64'h8F80808080808080)) 
    \bdatr[7]_INST_0_i_1 
       (.I0(smph_smre1),
        .I1(smph_smrf1),
        .I2(rd_semctl1),
        .I3(rd_semctl2),
        .I4(smph_smrf2),
        .I5(smph_smre2),
        .O(bdatr_sctl[7]));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatr[7]_INST_0_i_2 
       (.I0(\smph_ram1_nf_reg[4]_1 ),
        .I1(rd_semramb),
        .I2(\smph_ram1_nf_reg[0]_0 ),
        .I3(rd_semrama),
        .O(\bdatr[7]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatr[7]_INST_0_i_3 
       (.I0(\smph_usr1_nf_reg[4]_0 ),
        .I1(rd_semusrb),
        .I2(\smph_usr1_nf_reg[0]_0 ),
        .I3(rd_semusra),
        .O(\bdatr[7]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    rd_semctl1_i_1
       (.I0(badr[2]),
        .I1(badr[3]),
        .I2(badr[1]),
        .I3(badr[0]),
        .I4(rd_semctl2_i_2_n_0),
        .I5(bmst),
        .O(rd_semctl1_i_1_n_0));
  FDRE rd_semctl1_reg
       (.C(clk),
        .CE(brdy),
        .D(rd_semctl1_i_1_n_0),
        .Q(rd_semctl1),
        .R(\smph_ram1_nf[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    rd_semctl2_i_1
       (.I0(badr[2]),
        .I1(badr[3]),
        .I2(badr[1]),
        .I3(badr[0]),
        .I4(rd_semctl2_i_2_n_0),
        .I5(bmst),
        .O(rd_semctl20));
  LUT2 #(
    .INIT(4'h2)) 
    rd_semctl2_i_2
       (.I0(bcmdr),
        .I1(bcs_smph_n),
        .O(rd_semctl2_i_2_n_0));
  FDRE rd_semctl2_reg
       (.C(clk),
        .CE(brdy),
        .D(rd_semctl20),
        .Q(rd_semctl2),
        .R(\smph_ram1_nf[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000400)) 
    rd_semrama_i_1
       (.I0(bcs_smph_n),
        .I1(bcmdr),
        .I2(badr[0]),
        .I3(badr[2]),
        .I4(badr[1]),
        .I5(badr[3]),
        .O(rd_semrama0));
  FDRE rd_semrama_reg
       (.C(clk),
        .CE(brdy),
        .D(rd_semrama0),
        .Q(rd_semrama),
        .R(\smph_ram1_nf[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    rd_semramb_i_1
       (.I0(bcs_smph_n),
        .I1(bcmdr),
        .I2(badr[1]),
        .I3(badr[2]),
        .I4(badr[0]),
        .I5(badr[3]),
        .O(rd_semramb0));
  FDRE rd_semramb_reg
       (.C(clk),
        .CE(brdy),
        .D(rd_semramb0),
        .Q(rd_semramb),
        .R(\smph_ram1_nf[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000400)) 
    rd_semusra_i_1
       (.I0(bcs_smph_n),
        .I1(bcmdr),
        .I2(badr[0]),
        .I3(badr[3]),
        .I4(badr[1]),
        .I5(badr[2]),
        .O(rd_semusra0));
  FDRE rd_semusra_reg
       (.C(clk),
        .CE(brdy),
        .D(rd_semusra0),
        .Q(rd_semusra),
        .R(\smph_ram1_nf[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    rd_semusrb_i_1
       (.I0(bcs_smph_n),
        .I1(bcmdr),
        .I2(badr[1]),
        .I3(badr[3]),
        .I4(badr[0]),
        .I5(badr[2]),
        .O(rd_semusrb0));
  FDRE rd_semusrb_reg
       (.C(clk),
        .CE(brdy),
        .D(rd_semusrb0),
        .Q(rd_semusrb),
        .R(\smph_ram1_nf[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    rd_semusrc_i_1
       (.I0(bcs_smph_n),
        .I1(bcmdr),
        .I2(badr[3]),
        .I3(badr[2]),
        .I4(badr[0]),
        .I5(badr[1]),
        .O(rd_semusrc0));
  FDRE rd_semusrc_reg
       (.C(clk),
        .CE(brdy),
        .D(rd_semusrc0),
        .Q(rd_semusrc),
        .R(\smph_ram1_nf[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \semctl1[2]_i_1 
       (.I0(bdatw[0]),
        .I1(\semctl1[3]_i_2_n_0 ),
        .I2(smph_smue1),
        .O(\semctl1[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \semctl1[3]_i_1 
       (.I0(bdatw[1]),
        .I1(\semctl1[3]_i_2_n_0 ),
        .I2(smph_smre1),
        .O(\semctl1[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \semctl1[3]_i_2 
       (.I0(badr[2]),
        .I1(badr[3]),
        .I2(badr[1]),
        .I3(badr[0]),
        .I4(p_23_in),
        .I5(bmst),
        .O(\semctl1[3]_i_2_n_0 ));
  FDRE \semctl1_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\semctl1[2]_i_1_n_0 ),
        .Q(smph_smue1),
        .R(\smph_ram1_nf[4]_i_1_n_0 ));
  FDRE \semctl1_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\semctl1[3]_i_1_n_0 ),
        .Q(smph_smre1),
        .R(\smph_ram1_nf[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \semctl2[2]_i_1 
       (.I0(bdatw[0]),
        .I1(semctl2),
        .I2(smph_smue2),
        .O(\semctl2[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \semctl2[3]_i_1 
       (.I0(bdatw[1]),
        .I1(semctl2),
        .I2(smph_smre2),
        .O(\semctl2[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \semctl2[3]_i_2 
       (.I0(bmst),
        .I1(p_23_in),
        .I2(badr[0]),
        .I3(badr[1]),
        .I4(badr[3]),
        .I5(badr[2]),
        .O(semctl2));
  FDRE \semctl2_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\semctl2[2]_i_1_n_0 ),
        .Q(smph_smue2),
        .R(\smph_ram1_nf[4]_i_1_n_0 ));
  FDRE \semctl2_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\semctl2[3]_i_1_n_0 ),
        .Q(smph_smre2),
        .R(\smph_ram1_nf[4]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \smph_ram1_nf[4]_i_1 
       (.I0(rst_n),
        .O(\smph_ram1_nf[4]_i_1_n_0 ));
  FDRE \smph_ram1_nf_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\smph_ram1_nf_reg[0]_0 ),
        .Q(\smph_ram1_nf_reg[4]_0 [0]),
        .R(\smph_ram1_nf[4]_i_1_n_0 ));
  FDRE \smph_ram1_nf_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\smph_ram1_nf_reg[1]_0 ),
        .Q(\smph_ram1_nf_reg[4]_0 [1]),
        .R(\smph_ram1_nf[4]_i_1_n_0 ));
  FDRE \smph_ram1_nf_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\smph_ram1_nf_reg[2]_0 ),
        .Q(\smph_ram1_nf_reg[4]_0 [2]),
        .R(\smph_ram1_nf[4]_i_1_n_0 ));
  FDRE \smph_ram1_nf_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\smph_ram1_nf_reg[3]_0 ),
        .Q(\smph_ram1_nf_reg[4]_0 [3]),
        .R(\smph_ram1_nf[4]_i_1_n_0 ));
  FDRE \smph_ram1_nf_reg[4] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\smph_ram1_nf_reg[4]_1 ),
        .Q(\smph_ram1_nf_reg[4]_0 [4]),
        .R(\smph_ram1_nf[4]_i_1_n_0 ));
  FDRE \smph_ram2_nf_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\smph_ram2_nf_reg[0]_0 ),
        .Q(\smph_ram2_nf_reg[4]_0 [0]),
        .R(\smph_ram1_nf[4]_i_1_n_0 ));
  FDRE \smph_ram2_nf_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\smph_ram2_nf_reg[1]_0 ),
        .Q(\smph_ram2_nf_reg[4]_0 [1]),
        .R(\smph_ram1_nf[4]_i_1_n_0 ));
  FDRE \smph_ram2_nf_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\smph_ram2_nf_reg[2]_0 ),
        .Q(\smph_ram2_nf_reg[4]_0 [2]),
        .R(\smph_ram1_nf[4]_i_1_n_0 ));
  FDRE \smph_ram2_nf_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\smph_ram2_nf_reg[3]_0 ),
        .Q(\smph_ram2_nf_reg[4]_0 [3]),
        .R(\smph_ram1_nf[4]_i_1_n_0 ));
  FDRE \smph_ram2_nf_reg[4] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\smph_ram2_nf_reg[4]_1 ),
        .Q(\smph_ram2_nf_reg[4]_0 [4]),
        .R(\smph_ram1_nf[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00F8F8F8)) 
    smph_smrf1_i_1
       (.I0(smph_smrf1),
        .I1(rst_n),
        .I2(smph_smrf11__8),
        .I3(bdatw[3]),
        .I4(\semctl1[3]_i_2_n_0 ),
        .O(smph_smrf1_i_1_n_0));
  FDRE smph_smrf1_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(smph_smrf1_i_1_n_0),
        .Q(smph_smrf1),
        .R(\<const0> ));
  LUT5 #(
    .INIT(32'h00F8F8F8)) 
    smph_smrf2_i_1
       (.I0(smph_smrf2),
        .I1(rst_n),
        .I2(smph_smrf21__8),
        .I3(bdatw[3]),
        .I4(wr_semctl2__0),
        .O(smph_smrf2_i_1_n_0));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    smph_smrf2_i_3
       (.I0(badr[2]),
        .I1(badr[3]),
        .I2(badr[1]),
        .I3(badr[0]),
        .I4(p_23_in),
        .I5(bmst),
        .O(wr_semctl2__0));
  FDRE smph_smrf2_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(smph_smrf2_i_1_n_0),
        .Q(smph_smrf2),
        .R(\<const0> ));
  LUT2 #(
    .INIT(4'h8)) 
    smph_smrr1_INST_0
       (.I0(smph_smre1),
        .I1(smph_smrf1),
        .O(smph_smrr1));
  LUT2 #(
    .INIT(4'h8)) 
    smph_smrr2_INST_0
       (.I0(smph_smre2),
        .I1(smph_smrf2),
        .O(smph_smrr2));
  CARRY4 smph_smuf11_carry
       (.CI(\<const0> ),
        .CO({smph_smuf11,smph_smuf11_carry_n_1,smph_smuf11_carry_n_2,smph_smuf11_carry_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .S({S[1],smph_smuf11_carry_i_2_n_0,smph_smuf11_carry_i_3_n_0,S[0]}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    smph_smuf11_carry_i_2
       (.I0(\smph_usr1_nf_reg[6]_0 ),
        .I1(smph_usr1_nf[6]),
        .I2(smph_usr1_nf[8]),
        .I3(\smph_usr1_nf_reg[8]_0 ),
        .I4(smph_usr1_nf[7]),
        .I5(\smph_usr1_nf_reg[7]_0 ),
        .O(smph_smuf11_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    smph_smuf11_carry_i_3
       (.I0(\smph_usr1_nf_reg[3]_0 ),
        .I1(smph_usr1_nf[3]),
        .I2(smph_usr1_nf[5]),
        .I3(\smph_usr1_nf_reg[5]_0 ),
        .I4(smph_usr1_nf[4]),
        .I5(\smph_usr1_nf_reg[4]_0 ),
        .O(smph_smuf11_carry_i_3_n_0));
  LUT5 #(
    .INIT(32'h00F8F8F8)) 
    smph_smuf1_i_1
       (.I0(smph_smuf1),
        .I1(rst_n),
        .I2(smph_smuf11),
        .I3(bdatw[2]),
        .I4(\semctl1[3]_i_2_n_0 ),
        .O(smph_smuf1_i_1_n_0));
  FDRE smph_smuf1_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(smph_smuf1_i_1_n_0),
        .Q(smph_smuf1),
        .R(\<const0> ));
  CARRY4 smph_smuf21_carry
       (.CI(\<const0> ),
        .CO({smph_smuf21,smph_smuf21_carry_n_1,smph_smuf21_carry_n_2,smph_smuf21_carry_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .S({smph_smuf2_reg_0[1],smph_smuf21_carry_i_2_n_0,smph_smuf21_carry_i_3_n_0,smph_smuf2_reg_0[0]}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    smph_smuf21_carry_i_2
       (.I0(\smph_usr2_nf_reg[6]_0 ),
        .I1(smph_usr2_nf[6]),
        .I2(smph_usr2_nf[8]),
        .I3(\smph_usr2_nf_reg[8]_0 ),
        .I4(smph_usr2_nf[7]),
        .I5(\smph_usr2_nf_reg[7]_0 ),
        .O(smph_smuf21_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    smph_smuf21_carry_i_3
       (.I0(\smph_usr2_nf_reg[3]_0 ),
        .I1(smph_usr2_nf[3]),
        .I2(smph_usr2_nf[5]),
        .I3(\smph_usr2_nf_reg[5]_0 ),
        .I4(smph_usr2_nf[4]),
        .I5(\smph_usr2_nf_reg[4]_0 ),
        .O(smph_smuf21_carry_i_3_n_0));
  LUT5 #(
    .INIT(32'h00F8F8F8)) 
    smph_smuf2_i_1
       (.I0(smph_smuf2),
        .I1(rst_n),
        .I2(smph_smuf21),
        .I3(bdatw[2]),
        .I4(wr_semctl2__0),
        .O(smph_smuf2_i_1_n_0));
  FDRE smph_smuf2_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(smph_smuf2_i_1_n_0),
        .Q(smph_smuf2),
        .R(\<const0> ));
  LUT2 #(
    .INIT(4'h8)) 
    smph_smur1_INST_0
       (.I0(smph_smue1),
        .I1(smph_smuf1),
        .O(smph_smur1));
  LUT2 #(
    .INIT(4'h8)) 
    smph_smur2_INST_0
       (.I0(smph_smue2),
        .I1(smph_smuf2),
        .O(smph_smur2));
  FDRE \smph_usr1_nf_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\smph_usr1_nf_reg[0]_0 ),
        .Q(Q[0]),
        .R(\smph_ram1_nf[4]_i_1_n_0 ));
  FDRE \smph_usr1_nf_reg[10] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\smph_usr1_nf_reg[10]_0 ),
        .Q(Q[4]),
        .R(\smph_ram1_nf[4]_i_1_n_0 ));
  FDRE \smph_usr1_nf_reg[11] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\smph_usr1_nf_reg[11]_0 ),
        .Q(Q[5]),
        .R(\smph_ram1_nf[4]_i_1_n_0 ));
  FDRE \smph_usr1_nf_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\smph_usr1_nf_reg[1]_0 ),
        .Q(Q[1]),
        .R(\smph_ram1_nf[4]_i_1_n_0 ));
  FDRE \smph_usr1_nf_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\smph_usr1_nf_reg[2]_0 ),
        .Q(Q[2]),
        .R(\smph_ram1_nf[4]_i_1_n_0 ));
  FDRE \smph_usr1_nf_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\smph_usr1_nf_reg[3]_0 ),
        .Q(smph_usr1_nf[3]),
        .R(\smph_ram1_nf[4]_i_1_n_0 ));
  FDRE \smph_usr1_nf_reg[4] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\smph_usr1_nf_reg[4]_0 ),
        .Q(smph_usr1_nf[4]),
        .R(\smph_ram1_nf[4]_i_1_n_0 ));
  FDRE \smph_usr1_nf_reg[5] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\smph_usr1_nf_reg[5]_0 ),
        .Q(smph_usr1_nf[5]),
        .R(\smph_ram1_nf[4]_i_1_n_0 ));
  FDRE \smph_usr1_nf_reg[6] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\smph_usr1_nf_reg[6]_0 ),
        .Q(smph_usr1_nf[6]),
        .R(\smph_ram1_nf[4]_i_1_n_0 ));
  FDRE \smph_usr1_nf_reg[7] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\smph_usr1_nf_reg[7]_0 ),
        .Q(smph_usr1_nf[7]),
        .R(\smph_ram1_nf[4]_i_1_n_0 ));
  FDRE \smph_usr1_nf_reg[8] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\smph_usr1_nf_reg[8]_0 ),
        .Q(smph_usr1_nf[8]),
        .R(\smph_ram1_nf[4]_i_1_n_0 ));
  FDRE \smph_usr1_nf_reg[9] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\smph_usr1_nf_reg[9]_0 ),
        .Q(Q[3]),
        .R(\smph_ram1_nf[4]_i_1_n_0 ));
  FDRE \smph_usr2_nf_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\smph_usr2_nf_reg[0]_0 ),
        .Q(\smph_usr2_nf_reg[11]_0 [0]),
        .R(\smph_ram1_nf[4]_i_1_n_0 ));
  FDRE \smph_usr2_nf_reg[10] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\smph_usr2_nf_reg[10]_0 ),
        .Q(\smph_usr2_nf_reg[11]_0 [4]),
        .R(\smph_ram1_nf[4]_i_1_n_0 ));
  FDRE \smph_usr2_nf_reg[11] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\smph_usr2_nf_reg[11]_1 ),
        .Q(\smph_usr2_nf_reg[11]_0 [5]),
        .R(\smph_ram1_nf[4]_i_1_n_0 ));
  FDRE \smph_usr2_nf_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\smph_usr2_nf_reg[1]_0 ),
        .Q(\smph_usr2_nf_reg[11]_0 [1]),
        .R(\smph_ram1_nf[4]_i_1_n_0 ));
  FDRE \smph_usr2_nf_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\smph_usr2_nf_reg[2]_0 ),
        .Q(\smph_usr2_nf_reg[11]_0 [2]),
        .R(\smph_ram1_nf[4]_i_1_n_0 ));
  FDRE \smph_usr2_nf_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\smph_usr2_nf_reg[3]_0 ),
        .Q(smph_usr2_nf[3]),
        .R(\smph_ram1_nf[4]_i_1_n_0 ));
  FDRE \smph_usr2_nf_reg[4] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\smph_usr2_nf_reg[4]_0 ),
        .Q(smph_usr2_nf[4]),
        .R(\smph_ram1_nf[4]_i_1_n_0 ));
  FDRE \smph_usr2_nf_reg[5] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\smph_usr2_nf_reg[5]_0 ),
        .Q(smph_usr2_nf[5]),
        .R(\smph_ram1_nf[4]_i_1_n_0 ));
  FDRE \smph_usr2_nf_reg[6] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\smph_usr2_nf_reg[6]_0 ),
        .Q(smph_usr2_nf[6]),
        .R(\smph_ram1_nf[4]_i_1_n_0 ));
  FDRE \smph_usr2_nf_reg[7] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\smph_usr2_nf_reg[7]_0 ),
        .Q(smph_usr2_nf[7]),
        .R(\smph_ram1_nf[4]_i_1_n_0 ));
  FDRE \smph_usr2_nf_reg[8] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\smph_usr2_nf_reg[8]_0 ),
        .Q(smph_usr2_nf[8]),
        .R(\smph_ram1_nf[4]_i_1_n_0 ));
  FDRE \smph_usr2_nf_reg[9] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\smph_usr2_nf_reg[9]_0 ),
        .Q(\smph_usr2_nf_reg[11]_0 [3]),
        .R(\smph_ram1_nf[4]_i_1_n_0 ));
endmodule
